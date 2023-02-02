#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ydan_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ydan_scene.h"
#include "ydan_room_0.h"
#include "ydan_room_2.h"
#include "ydan_room_3.h"
#include "ydan_room_4.h"
#include "ydan_room_5.h"
#include "ydan_room_6.h"
#include "ydan_room_7.h"
#include "ydan_room_8.h"
#include "ydan_room_9.h"
#include "ydan_room_10.h"
#include "ydan_room_11.h"

SceneCmd ydan_room_1Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ydan_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(11, ydan_room_1ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(13, ydan_room_1ActorList_000054),
    SCENE_CMD_END(),
};

s16 ydan_room_1ObjectList_000040[] = {
    OBJECT_YDAN_OBJECTS,
    OBJECT_GOL,
    OBJECT_ST,
    OBJECT_DEKUBABA,
    OBJECT_DEKUNUTS,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_KUSA,
    OBJECT_GI_HEART,
    OBJECT_GI_SUTARU,
    OBJECT_HINTNUTS,
};

ActorEntry ydan_room_1ActorList_000054[] = {
    { ACTOR_EN_KUSA,     {   -643,    400,    798 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_KUSA,     {   -654,    400,    582 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_KUSA,     {   -788,    400,    702 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_DEKUBABA, {   -676,    400,    689 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_ITEM00,   {   -594,    400,    840 }, {      0,      0,      0 }, 0x2303 },
    { ACTOR_EN_KUSA,     {   -572,    400,    727 }, {      0,      0,      0 }, 0xFF02 },
    { ACTOR_EN_KUSA,     {   -575,    400,    627 }, {      0,      0,      0 }, 0xFF02 },
    { ACTOR_EN_KUSA,     {   -736,    400,    795 }, {      0,      0,      0 }, 0xFF02 },
    { ACTOR_EN_KUSA,     {   -753,    400,    614 }, {      0,      0,      0 }, 0xFF02 },
    { ACTOR_EN_GOMA,     {   -724,    400,    916 }, {      0,      0,      0 }, 0x0006 },
    { ACTOR_EN_GOMA,     {   -887,    400,    731 }, {      0,      0,      0 }, 0x0006 },
    { ACTOR_OBJ_SWITCH,  {   -920,    542,    918 }, {      0, 0X6000,      0 }, 0x0C02 },
    { ACTOR_EN_HINTNUTS, {   -816,    400,    605 }, {      0,      0,      0 }, 0x1A00 },
};

u8 ydan_room_1_possiblePadding_000114[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 ydan_room_1PolygonType2_000120 = { 
    2, 1,
    ydan_room_1PolygonDlist2_00012C,
    ydan_room_1PolygonDlist2_00012C + ARRAY_COUNTU(ydan_room_1PolygonDlist2_00012C)
};

PolygonDlist2 ydan_room_1PolygonDlist2_00012C[1] = {
    { {   -696,    550,    695 },    375, ydan_room_1DL_000A40, ydan_room_1DL_003110 },
};

s32 ydan_room_1_terminatorMaybe_00013C = { 0x01000000 };

Vtx ydan_room_1Vtx_000140[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_1Vtx_000140.vtx.inc"
};

Gfx ydan_room_1DL_000A40[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ydan_room_1Vtx_000140[136], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ydan_room_1Tex_001798, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ydan_sceneTLUT_00B810),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ydan_room_1Vtx_000140, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_1Tex_001F98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_1Vtx_000140[3], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_1Tex_000F98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_1Vtx_000140[7], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 3, 9, 0, 8, 0, 3, 0),
    gsSP2Triangles(3, 10, 9, 0, 3, 5, 11, 0),
    gsSP2Triangles(3, 11, 10, 0, 5, 12, 11, 0),
    gsSP2Triangles(5, 13, 12, 0, 5, 7, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_1Tex_001798, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_1Vtx_000140[21], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(3, 10, 11, 0, 3, 12, 10, 0),
    gsSP2Triangles(12, 5, 13, 0, 12, 13, 10, 0),
    gsSP2Triangles(5, 7, 14, 0, 5, 14, 13, 0),
    gsSP2Triangles(7, 9, 14, 0, 11, 15, 16, 0),
    gsSP2Triangles(11, 16, 17, 0, 15, 13, 18, 0),
    gsSP2Triangles(15, 18, 16, 0, 13, 14, 19, 0),
    gsSP2Triangles(13, 19, 18, 0, 14, 20, 21, 0),
    gsSP2Triangles(14, 21, 19, 0, 17, 16, 22, 0),
    gsSP2Triangles(16, 23, 22, 0, 16, 18, 24, 0),
    gsSP2Triangles(16, 24, 23, 0, 18, 19, 25, 0),
    gsSP2Triangles(18, 25, 24, 0, 19, 26, 25, 0),
    gsSP2Triangles(22, 27, 28, 0, 22, 28, 29, 0),
    gsSP2Triangles(27, 24, 30, 0, 27, 30, 28, 0),
    gsSP2Triangles(24, 25, 31, 0, 24, 31, 30, 0),
    gsSPVertex(&ydan_room_1Vtx_000140[53], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_1Tex_000F98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_1Vtx_000140[63], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 5, 12, 0),
    gsSP2Triangles(5, 7, 12, 0, 10, 13, 8, 0),
    gsSP2Triangles(10, 14, 13, 0, 10, 5, 11, 0),
    gsSP2Triangles(10, 11, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 18, 17, 0, 15, 19, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_1Tex_002798, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_1Vtx_000140[83], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0),
    gsSP2Triangles(9, 8, 12, 0, 9, 12, 13, 0),
    gsSP2Triangles(8, 11, 14, 0, 8, 14, 12, 0),
    gsSP2Triangles(11, 15, 14, 0, 16, 17, 1, 0),
    gsSP2Triangles(16, 1, 0, 0, 17, 18, 4, 0),
    gsSP2Triangles(17, 4, 1, 0, 18, 19, 4, 0),
    gsSP2Triangles(13, 12, 20, 0, 13, 20, 21, 0),
    gsSP2Triangles(12, 14, 22, 0, 12, 22, 20, 0),
    gsSP2Triangles(23, 24, 17, 0, 23, 17, 16, 0),
    gsSP2Triangles(24, 25, 18, 0, 24, 18, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_1Tex_001798, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_1Vtx_000140[109], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_1Tex_000F98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_1Vtx_000140[112], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_1Tex_001F98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_1Vtx_000140[120], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_1Tex_001798, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_1Vtx_000140[124], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 0, 0, 3, 0, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 8, 0, 9, 8, 7, 0),
    gsSPEndDisplayList(),
};

u8 ydan_room_1_unaccounted_000F88[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0x40, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ydan_room_1Tex_000F98[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_1Tex_000F98.ci8.inc.c"
};

u64 ydan_room_1Tex_001798[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_1Tex_001798.ci8.inc.c"
};

u64 ydan_room_1Tex_001F98[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_1Tex_001F98.ci8.inc.c"
};

u64 ydan_room_1Tex_002798[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_1Tex_002798.ci8.inc.c"
};

u8 ydan_room_1_possiblePadding_002F98[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ydan_room_1Vtx_002FA0[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_1Vtx_002FA0.vtx.inc"
};

Gfx ydan_room_1DL_003110[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ydan_room_1Vtx_002FA0[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ydan_room_1Tex_003200, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPVertex(ydan_room_1Vtx_002FA0, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(5, 9, 6, 0, 9, 8, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(10, 14, 11, 0, 14, 13, 11, 0),
    gsSPEndDisplayList(),
};

u8 ydan_room_1_unaccounted_0031F0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x31, 0x10, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ydan_room_1Tex_003200[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_1Tex_003200.ia16.inc.c"
};

