#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ddan_room_14.h"
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
#include "ddan_room_11.h"
#include "ddan_room_12.h"
#include "ddan_room_13.h"
#include "ddan_room_15.h"
#include "ddan_room_16.h"

SceneCmd ddan_room_14Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ddan_room_14PolygonType2_0000B0),
    SCENE_CMD_OBJECT_LIST(5, ddan_room_14ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(6, ddan_room_14ActorList_00004C),
    SCENE_CMD_END(),
};

s16 ddan_room_14ObjectList_000040[] = {
    OBJECT_DDAN_OBJECTS,
    OBJECT_KUSA,
    OBJECT_HAKA,
    OBJECT_BOX,
    OBJECT_POH,
};

ActorEntry ddan_room_14ActorList_00004C[] = {
    { ACTOR_EN_KUSA,   {   1285,     76,  -4693 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_POH,    {   1472,     76,  -4467 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_TSUBO, {   1663,     76,  -4311 }, {      0,      0,      0 }, 0x7004 },
    { ACTOR_OBJ_TSUBO, {   1648,     76,  -4694 }, {      0,      0,      0 }, 0x7E04 },
    { ACTOR_BG_HAKA,   {   1474,     76,  -4558 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_BOX,    {   1473,     76,  -4575 }, {      0, 0X8000,      0 }, 0x5541 },
};

u8 ddan_room_14_possiblePadding_0000AC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 ddan_room_14PolygonType2_0000B0 = { 
    2, 1,
    ddan_room_14PolygonDlist2_0000BC,
    ddan_room_14PolygonDlist2_0000BC + ARRAY_COUNTU(ddan_room_14PolygonDlist2_0000BC)
};

PolygonDlist2 ddan_room_14PolygonDlist2_0000BC[1] = {
    { {   1473,    276,  -4489 },    406, ddan_room_14DL_0006A0, NULL },
};

s32 ddan_room_14_terminatorMaybe_0000CC = { 0x01000000 };

Vtx ddan_room_14Vtx_0000D0[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_14Vtx_0000D0.vtx.inc"
};

Gfx ddan_room_14DL_0006A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ddan_room_14Vtx_0000D0[85], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ddan_room_14Tex_000CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ddan_sceneTLUT_011D70),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ddan_room_14Vtx_0000D0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_14Tex_0020C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_14Vtx_0000D0[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_14Tex_000CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_14Vtx_0000D0[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_14Tex_0020C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_14Vtx_0000D0[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_14Tex_0014C8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_14Vtx_0000D0[16], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_14Tex_000CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_14Vtx_0000D0[24], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_14Tex_0014C8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_14Vtx_0000D0[30], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_14Tex_000CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_14Vtx_0000D0[40], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 5, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_14Tex_0020C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_14Vtx_0000D0[50], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 1, 6, 7, 0),
    gsSP2Triangles(0, 6, 1, 0, 0, 8, 6, 0),
    gsSP2Triangles(3, 5, 9, 0, 3, 2, 5, 0),
    gsSP2Triangles(3, 8, 0, 0, 3, 9, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_14Tex_0014C8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_14Vtx_0000D0[60], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(4, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_14Tex_000CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_14Vtx_0000D0[65], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_14Tex_001CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_14Vtx_0000D0[70], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 2, 4, 0, 2, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_14Tex_0014C8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_14Vtx_0000D0[75], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_14Tex_000CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTextureBlock(ddan_room_14Tex_0014C8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_14Vtx_0000D0[79], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_14Tex_000CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTextureBlock(ddan_room_14Tex_0014C8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_14Vtx_0000D0[82], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 ddan_room_14_unaccounted_000CB8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xA0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ddan_room_14Tex_000CC8[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_14Tex_000CC8.ci8.inc.c"
};

u64 ddan_room_14Tex_0014C8[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_14Tex_0014C8.ci8.inc.c"
};

u64 ddan_room_14Tex_001CC8[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_14Tex_001CC8.ci8.inc.c"
};

u64 ddan_room_14Tex_0020C8[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_14Tex_0020C8.ci8.inc.c"
};

