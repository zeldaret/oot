#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "sutaru_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "sutaru_scene.h"

SceneCmd sutaru_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(15),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&sutaru_room_0PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(8, sutaru_room_0ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(5, sutaru_room_0ActorList_000050),
    SCENE_CMD_END(),
};

s16 sutaru_room_0ObjectList_000040[] = {
    OBJECT_WF,
    OBJECT_TORCH2,
    OBJECT_DH,
    OBJECT_SK2,
    OBJECT_BB,
    OBJECT_WARP1,
    OBJECT_GI_HEART,
    OBJECT_GI_CLOTHES,
};

ActorEntry sutaru_room_0ActorList_000050[] = {
    { ACTOR_EN_TORCH2,  {    119,    827,  -3240 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_BB,      {    -23,    827,  -3381 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_TEST,    {    -23,    827,  -3391 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_TEST,    {    -89,    827,  -3109 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DOOR_WARP1, {    119,    827,  -3240 }, {      0,      0,      0 }, 0x0001 },
};

PolygonType0 sutaru_room_0PolygonType0_0000A0 = { 
    0, 1,
    sutaru_room_0PolygonDlist_0000AC,
    sutaru_room_0PolygonDlist_0000AC + ARRAY_COUNTU(sutaru_room_0PolygonDlist_0000AC)
};

PolygonDlist sutaru_room_0PolygonDlist_0000AC[1] = {
    { sutaru_room_0DL_001B00, NULL },
};

s32 sutaru_room_0_terminatorMaybe_0000B4 = { 0x01000000 };

u8 sutaru_room_0_possiblePadding_0000B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx sutaru_room_0Vtx_0000C0[] = {
#include "assets/scenes/test_levels/sutaru/sutaru_room_0Vtx_0000C0.vtx.inc"
};

Gfx sutaru_room_0DL_001B00[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(sutaru_room_0Tex_0020F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(sutaru_room_0Vtx_0000C0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 7, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(10, 14, 11, 0, 14, 13, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 18, 16, 0),
    gsSP2Triangles(18, 19, 16, 0, 19, 17, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(20, 24, 21, 0, 24, 23, 21, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 28, 26, 0),
    gsSP2Triangles(28, 29, 26, 0, 29, 27, 26, 0),
    gsSPVertex(&sutaru_room_0Vtx_0000C0[30], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 2, 4, 3, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 7, 0),
    gsSP2Triangles(8, 7, 9, 0, 7, 6, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(sutaru_room_0Tex_0028F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&sutaru_room_0Vtx_0000C0[40], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&sutaru_room_0Vtx_0000C0[72], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&sutaru_room_0Vtx_0000C0[104], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&sutaru_room_0Vtx_0000C0[136], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&sutaru_room_0Vtx_0000C0[168], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&sutaru_room_0Vtx_0000C0[200], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(sutaru_room_0Tex_002AF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&sutaru_room_0Vtx_0000C0[232], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(sutaru_room_0Tex_003AF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&sutaru_room_0Vtx_0000C0[264], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(0, 10, 11, 0, 10, 12, 3, 0),
    gsSP2Triangles(10, 3, 11, 0, 0, 13, 14, 0),
    gsSP2Triangles(13, 15, 12, 0, 13, 12, 14, 0),
    gsSP2Triangles(0, 16, 17, 0, 16, 18, 15, 0),
    gsSP2Triangles(16, 15, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 6, 0, 19, 0, 20, 0),
    gsSP2Triangles(0, 21, 22, 0, 21, 23, 5, 0),
    gsSP2Triangles(21, 5, 22, 0, 0, 24, 25, 0),
    gsSP2Triangles(24, 4, 23, 0, 24, 23, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(sutaru_room_0Tex_0042F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&sutaru_room_0Vtx_0000C0[290], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(sutaru_room_0Tex_0052F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&sutaru_room_0Vtx_0000C0[322], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(sutaru_room_0Tex_0062F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&sutaru_room_0Vtx_0000C0[354], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&sutaru_room_0Vtx_0000C0[384], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 14, 0, 20, 21, 17, 0),
    gsSP2Triangles(22, 23, 17, 0, 24, 25, 14, 0),
    gsSP2Triangles(26, 27, 14, 0, 28, 29, 17, 0),
    gsSPVertex(&sutaru_room_0Vtx_0000C0[414], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

u64 sutaru_room_0Tex_0020F0[] = {
#include "assets/scenes/test_levels/sutaru/sutaru_room_0Tex_0020F0.rgba16.inc.c"
};

u64 sutaru_room_0Tex_0028F0[] = {
#include "assets/scenes/test_levels/sutaru/sutaru_room_0Tex_0028F0.rgba16.inc.c"
};

u64 sutaru_room_0Tex_002AF0[] = {
#include "assets/scenes/test_levels/sutaru/sutaru_room_0Tex_002AF0.rgba16.inc.c"
};

u64 sutaru_room_0Tex_003AF0[] = {
#include "assets/scenes/test_levels/sutaru/sutaru_room_0Tex_003AF0.rgba16.inc.c"
};

u64 sutaru_room_0Tex_0042F0[] = {
#include "assets/scenes/test_levels/sutaru/sutaru_room_0Tex_0042F0.rgba16.inc.c"
};

u64 sutaru_room_0Tex_0052F0[] = {
#include "assets/scenes/test_levels/sutaru/sutaru_room_0Tex_0052F0.rgba16.inc.c"
};

u64 sutaru_room_0Tex_0062F0[] = {
#include "assets/scenes/test_levels/sutaru/sutaru_room_0Tex_0062F0.rgba16.inc.c"
};

