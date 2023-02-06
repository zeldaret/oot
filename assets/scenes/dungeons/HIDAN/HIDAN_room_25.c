#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HIDAN_room_25.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HIDAN_scene.h"
#include "HIDAN_room_0.h"
#include "HIDAN_room_1.h"
#include "HIDAN_room_2.h"
#include "HIDAN_room_3.h"
#include "HIDAN_room_4.h"
#include "HIDAN_room_5.h"
#include "HIDAN_room_6.h"
#include "HIDAN_room_7.h"
#include "HIDAN_room_8.h"
#include "HIDAN_room_9.h"
#include "HIDAN_room_10.h"
#include "HIDAN_room_11.h"
#include "HIDAN_room_12.h"
#include "HIDAN_room_13.h"
#include "HIDAN_room_14.h"
#include "HIDAN_room_15.h"
#include "HIDAN_room_16.h"
#include "HIDAN_room_17.h"
#include "HIDAN_room_18.h"
#include "HIDAN_room_19.h"
#include "HIDAN_room_20.h"
#include "HIDAN_room_21.h"
#include "HIDAN_room_22.h"
#include "HIDAN_room_23.h"
#include "HIDAN_room_24.h"
#include "HIDAN_room_26.h"

SceneCmd HIDAN_room_25Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x02, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HIDAN_room_25PolygonType2_000090),
    SCENE_CMD_OBJECT_LIST(5, HIDAN_room_25ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(5, HIDAN_room_25ActorList_000048),
    SCENE_CMD_END(),
};

s16 HIDAN_room_25ObjectList_000040[] = {
    OBJECT_HIDAN_OBJECTS,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
    OBJECT_ZF,
    OBJECT_BOX,
};

ActorEntry HIDAN_room_25ActorList_000048[] = {
    { ACTOR_EN_ZF,    {   -824,   2800,  -1142 }, {      0, 0XE000,      0 }, 0xFFFF },
    { ACTOR_EN_SW,    {   -626,   2870,  -1338 }, {      0, 0XE000,      0 }, 0x8510 },
    { ACTOR_EN_LIGHT, {   -882,   2851,  -1183 }, {      0, 0X2000,      0 }, 0x03F5 },
    { ACTOR_EN_LIGHT, {   -781,   2855,  -1080 }, {      0, 0XA000,      0 }, 0x03F5 },
    { ACTOR_EN_BOX,   {   -668,   2800,  -1300 }, {      0, 0X6000,      0 }, 0x0807 },
};

u8 HIDAN_room_25_possiblePadding_000088[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 HIDAN_room_25PolygonType2_000090 = { 
    2, 1,
    HIDAN_room_25PolygonDlist2_00009C,
    HIDAN_room_25PolygonDlist2_00009C + ARRAY_COUNTU(HIDAN_room_25PolygonDlist2_00009C)
};

PolygonDlist2 HIDAN_room_25PolygonDlist2_00009C[1] = {
    { {   -832,   2860,  -1133 },    327, HIDAN_room_25DL_001A90, NULL },
};

s32 HIDAN_room_25_terminatorMaybe_0000AC = { 0x01000000 };

Vtx HIDAN_room_25Vtx_0000B0[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_25Vtx_0000B0.vtx.inc"
};

Gfx HIDAN_room_25DL_001A90[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[406], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HIDAN_sceneTex_0195D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HIDAN_room_25Vtx_0000B0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0052D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_sceneTex_0195D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0052D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_sceneTex_0195D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0052D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[20], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 4, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 9, 0),
    gsSP2Triangles(21, 22, 14, 0, 21, 14, 13, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 24, 28, 0, 27, 28, 29, 0),
    gsSP1Triangle(30, 25, 31, 0),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[52], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 6, 0),
    gsSP2Triangles(7, 6, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 10, 15, 0),
    gsSP1Triangle(14, 15, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0062D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[69], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_sceneTex_019FD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[75], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_018BD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_0189B0),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[80], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_005AD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[95], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_sceneTex_019FD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[103], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 1, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(6, 9, 8, 0, 6, 5, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(14, 13, 12, 0, 14, 12, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 15, 17, 0),
    gsSP2Triangles(17, 16, 19, 0, 18, 17, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(20, 24, 21, 0, 24, 23, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0062D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[128], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_005AD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[133], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 1, 0, 0),
    gsSP2Triangles(7, 6, 10, 0, 7, 10, 11, 0),
    gsSP2Triangles(12, 13, 4, 0, 12, 14, 13, 0),
    gsSP2Triangles(13, 5, 4, 0, 13, 14, 5, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(18, 17, 23, 0, 18, 23, 24, 0),
    gsSP2Triangles(25, 26, 20, 0, 25, 20, 19, 0),
    gsSP2Triangles(22, 27, 28, 0, 27, 29, 28, 0),
    gsSP2Triangles(22, 21, 27, 0, 21, 29, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_004AD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[163], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0042D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[171], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0052D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[187], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(13, 18, 17, 0, 13, 17, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_005AD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[207], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 1, 0, 0),
    gsSP2Triangles(7, 6, 10, 0, 7, 10, 11, 0),
    gsSP2Triangles(3, 12, 13, 0, 12, 14, 13, 0),
    gsSP2Triangles(12, 2, 14, 0, 12, 3, 2, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(18, 17, 23, 0, 18, 23, 24, 0),
    gsSP2Triangles(25, 26, 20, 0, 25, 20, 19, 0),
    gsSP2Triangles(27, 28, 15, 0, 27, 29, 28, 0),
    gsSP2Triangles(29, 16, 28, 0, 16, 15, 28, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_sceneTex_019FD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[237], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0062D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[242], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_004AD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[247], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0042D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[255], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_sceneTex_019FD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[271], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 0, 5, 6, 0),
    gsSP2Triangles(0, 6, 1, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 6, 0, 7, 9, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_002AD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[281], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0032D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[285], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_002AD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[289], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0032D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[293], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_sceneTex_019FD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[297], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 1, 0, 2, 5, 6, 0),
    gsSP2Triangles(2, 6, 3, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 6, 0, 7, 9, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_003AD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[307], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 0, 2, 5, 0),
    gsSP2Triangles(5, 2, 4, 0, 5, 4, 6, 0),
    gsSP2Triangles(0, 5, 7, 0, 7, 5, 6, 0),
    gsSP1Triangle(7, 6, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0032D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[316], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(4, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_003AD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[321], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(3, 1, 0, 0, 5, 0, 2, 0),
    gsSP2Triangles(6, 3, 0, 0, 6, 0, 5, 0),
    gsSP2Triangles(7, 5, 2, 0, 8, 6, 5, 0),
    gsSP1Triangle(8, 5, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0032D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[330], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_sceneTex_019FD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[335], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 4, 0),
    gsSP2Triangles(5, 4, 0, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 5, 9, 0, 8, 6, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0042D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[345], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_004AD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[353], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_005AD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[357], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0052D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[369], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_sceneTex_019FD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[381], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_005AD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[386], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_0052D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[394], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_25Tex_005AD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_25Vtx_0000B0[398], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSPEndDisplayList(),
};

u8 HIDAN_room_25_unaccounted_002AC8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0x90, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HIDAN_room_25Tex_002AD8[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_25Tex_002AD8.rgba16.inc.c"
};

u64 HIDAN_room_25Tex_0032D8[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_25Tex_0032D8.rgba16.inc.c"
};

u64 HIDAN_room_25Tex_003AD8[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_25Tex_003AD8.rgba16.inc.c"
};

u64 HIDAN_room_25Tex_0042D8[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_25Tex_0042D8.rgba16.inc.c"
};

u64 HIDAN_room_25Tex_004AD8[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_25Tex_004AD8.rgba16.inc.c"
};

u64 HIDAN_room_25Tex_0052D8[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_25Tex_0052D8.rgba16.inc.c"
};

u64 HIDAN_room_25Tex_005AD8[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_25Tex_005AD8.rgba16.inc.c"
};

u64 HIDAN_room_25Tex_0062D8[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_25Tex_0062D8.rgba16.inc.c"
};

