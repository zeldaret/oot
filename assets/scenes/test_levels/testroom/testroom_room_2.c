#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "testroom_room_2.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "testroom_scene.h"
#include "testroom_room_0.h"
#include "testroom_room_1.h"
#include "testroom_room_3.h"
#include "testroom_room_4.h"

SceneCmd testroom_room_2Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&testroom_room_2PolygonType0_000110),
    SCENE_CMD_OBJECT_LIST(4, testroom_room_2ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(12, testroom_room_2ActorList_000048),
    SCENE_CMD_END(),
};

s16 testroom_room_2ObjectList_000040[] = {
    OBJECT_BOX,
    OBJECT_YUKABYUN,
    OBJECT_KUSA,
    OBJECT_VM,
};

ActorEntry testroom_room_2ActorList_000048[] = {
    { ACTOR_EN_YUKABYUN, {   2580,     -8,    160 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_EN_YUKABYUN, {   2980,     -8,    160 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_EN_YUKABYUN, {   2580,     -8,    360 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_EN_YUKABYUN, {   2980,     -8,    360 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_EN_YUKABYUN, {   2780,     -8,    360 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_EN_YUKABYUN, {   2780,     -8,    560 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_EN_YUKABYUN, {   2980,     -8,    560 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_EN_YUKABYUN, {   2580,     -8,    560 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_EN_BOX,      {   2279,      0,   -794 }, {      0, 0X4000,      0 }, 0x07BD },
    { ACTOR_EN_BOX,      {   2488,      0,   -811 }, {      0, 0X4000,      0 }, 0x08BE },
    { ACTOR_EN_BOX,      {   2726,      0,   -799 }, {      0, 0X4000,      0 }, 0x08DF },
    { ACTOR_EN_BOX,      {   2802,      0,   -486 }, {      0,      0,      0 }, 0x08E0 },
};

u8 testroom_room_2_possiblePadding_000108[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 testroom_room_2PolygonType0_000110 = { 
    0, 1,
    testroom_room_2PolygonDlist_00011C,
    testroom_room_2PolygonDlist_00011C + ARRAY_COUNTU(testroom_room_2PolygonDlist_00011C)
};

PolygonDlist testroom_room_2PolygonDlist_00011C[1] = {
    { testroom_room_2DL_001590, NULL },
};

s32 testroom_room_2_terminatorMaybe_000124 = { 0x01000000 };

u8 testroom_room_2_possiblePadding_000128[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx testroom_room_2Vtx_000130[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_2Vtx_000130.vtx.inc"
};

Gfx testroom_room_2DL_001590[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(testroom_room_2Tex_001A78, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, testroom_room_2TLUT_001A58),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(testroom_room_2Vtx_000130, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
    gsSP2Triangles(11, 15, 12, 0, 15, 14, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(16, 20, 17, 0, 20, 19, 17, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 24, 22, 0),
    gsSP2Triangles(24, 25, 22, 0, 25, 23, 22, 0),
    gsSP2Triangles(26, 27, 7, 0, 26, 7, 8, 0),
    gsSP2Triangles(26, 8, 10, 0, 7, 27, 5, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&testroom_room_2Vtx_000130[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 16, 0, 20, 16, 19, 0),
    gsSP2Triangles(18, 17, 22, 0, 18, 22, 23, 0),
    gsSP2Triangles(23, 22, 21, 0, 23, 21, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(testroom_sceneTex_002200, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_2Vtx_000130[64], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_room_2Tex_002278, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_2Vtx_000130[80], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 3, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 5, 0, 26, 5, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&testroom_room_2Vtx_000130[112], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&testroom_room_2Vtx_000130[143], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_room_2Tex_002A78, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_2Vtx_000130[151], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(19, 20, 16, 0, 20, 17, 16, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 21, 23, 0),
    gsSP2Triangles(24, 23, 25, 0, 23, 22, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&testroom_room_2Vtx_000130[181], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 28, 30, 0),
    gsSPVertex(&testroom_room_2Vtx_000130[213], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(7, 6, 8, 0, 6, 5, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&testroom_room_2Vtx_000130[245], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 13, 0, 14, 15, 11, 0),
    gsSP2Triangles(15, 12, 11, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 16, 18, 0, 19, 18, 20, 0),
    gsSP2Triangles(18, 17, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&testroom_room_2Vtx_000130[277], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 23, 25, 0, 26, 27, 23, 0),
    gsSP2Triangles(27, 24, 23, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&testroom_room_2Vtx_000130[309], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(15, 16, 12, 0, 16, 13, 12, 0),
    gsSPEndDisplayList(),
};

u64 testroom_room_2TLUT_001A58[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_2TLUT_001A58.rgba16.inc.c"
};

u64 testroom_room_2Tex_001A78[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_2Tex_001A78.ci4.inc.c"
};

u64 testroom_room_2Tex_002278[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_2Tex_002278.rgba16.inc.c"
};

u64 testroom_room_2Tex_002A78[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_2Tex_002A78.rgba16.inc.c"
};

