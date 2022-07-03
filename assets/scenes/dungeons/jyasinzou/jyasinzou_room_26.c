#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinzou_room_26.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "jyasinzou_scene.h"
#include "jyasinzou_room_0.h"
#include "jyasinzou_room_1.h"
#include "jyasinzou_room_2.h"
#include "jyasinzou_room_3.h"
#include "jyasinzou_room_4.h"
#include "jyasinzou_room_5.h"
#include "jyasinzou_room_6.h"
#include "jyasinzou_room_7.h"
#include "jyasinzou_room_8.h"
#include "jyasinzou_room_9.h"
#include "jyasinzou_room_10.h"
#include "jyasinzou_room_11.h"
#include "jyasinzou_room_12.h"
#include "jyasinzou_room_13.h"
#include "jyasinzou_room_14.h"
#include "jyasinzou_room_15.h"
#include "jyasinzou_room_16.h"
#include "jyasinzou_room_17.h"
#include "jyasinzou_room_18.h"
#include "jyasinzou_room_19.h"
#include "jyasinzou_room_20.h"
#include "jyasinzou_room_21.h"
#include "jyasinzou_room_22.h"
#include "jyasinzou_room_23.h"
#include "jyasinzou_room_24.h"
#include "jyasinzou_room_25.h"
#include "jyasinzou_room_27.h"
#include "jyasinzou_room_28.h"

SceneCmd jyasinzou_room_26Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinzou_room_26PolygonType2_0000E0),
    SCENE_CMD_OBJECT_LIST(8, jyasinzou_room_26ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(9, jyasinzou_room_26ActorList_000050),
    SCENE_CMD_END(),
};

s16 jyasinzou_room_26ObjectList_000040[] = {
    OBJECT_JYA_OBJ,
    OBJECT_JYA_DOOR,
    OBJECT_MIR_RAY,
    OBJECT_ZF,
    OBJECT_BB,
    OBJECT_BOX,
    OBJECT_LIGHTSWITCH,
    OBJECT_BW,
};

ActorEntry jyasinzou_room_26ActorList_000050[] = {
    { ACTOR_EN_BW,            {   -545,   1743,   -830 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_EN_ZF,            {    -24,   1943,   -304 }, {      0, 0XC000,      0 }, 0xFFFE },
    { ACTOR_BG_JYA_BIGMIRROR, {     60,   1802,  -1102 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_MIR_RAY,          {   -558,   1743,   -306 }, {      0,      0,      0 }, 0x0004 },
    { ACTOR_BG_HIDAN_CURTAIN, {     60,   1743,   -309 }, {      0,      0,      0 }, 0x2FED },
    { ACTOR_OBJ_LIGHTSWITCH,  {   -559,   1893,   -652 }, {      0, 0X8000,      0 }, 0x2D00 },
    { ACTOR_EN_BB,            {   -555,   1776,   -675 }, {      0,      0,      0 }, 0x30FB },
    { ACTOR_EN_BB,            {    565,   1827,   -498 }, {      0,      0,      0 }, 0x40FB },
    { ACTOR_EN_BOX,           {     48,   1743,   -559 }, {      0, 0X4000,      0 }, 0x6852 },
};

PolygonType2 jyasinzou_room_26PolygonType2_0000E0 = { 
    2, 18,
    jyasinzou_room_26PolygonDlist2_0000EC,
    jyasinzou_room_26PolygonDlist2_0000EC + ARRAY_COUNTU(jyasinzou_room_26PolygonDlist2_0000EC)
};

PolygonDlist2 jyasinzou_room_26PolygonDlist2_0000EC[18] = {
    { {     50,   1863,   -378 },    308, jyasinzou_room_26DL_005468, NULL },
    { {   -560,   1868,   -310 },    296, jyasinzou_room_26DL_001AD0, NULL },
    { {   -560,   1868,   -310 },    292, jyasinzou_room_26DL_002290, NULL },
    { {   -560,   2005,   -310 },    268, jyasinzou_room_26DL_0028C0, NULL },
    { {   -560,   2102,   -310 },    281, jyasinzou_room_26DL_002E18, NULL },
    { {     60,   1993,   -310 },    216, jyasinzou_room_26DL_005800, NULL },
    { {   -560,   1983,   -830 },    216, jyasinzou_room_26DL_000420, NULL },
    { {   -550,   1863,   -780 },    294, jyasinzou_room_26DL_000E50, NULL },
    { {   -280,   1813,   -830 },    128, jyasinzou_room_26DL_0016D8, NULL },
    { {   -310,   1868,   -310 },    173, jyasinzou_room_26DL_003168, NULL },
    { {   -550,   1743,   -320 },    281, jyasinzou_room_26DL_0035B0, NULL },
    { {     60,   1783,   -960 },    386, jyasinzou_room_26DL_0046A8, jyasinzou_room_26DL_00C200 },
    { {     60,   1809,  -1090 },    173, jyasinzou_room_26DL_005A80, NULL },
    { {   -130,   1868,   -310 },    173, jyasinzou_room_26DL_005D20, NULL },
    { {     60,   1868,   -500 },    173, jyasinzou_room_26DL_005FF0, NULL },
    { {     60,   1808,   -610 },    138, jyasinzou_room_26DL_006560, NULL },
    { {   -220,   1813,   -310 },    122, jyasinzou_room_26DL_006A98, NULL },
    { {   -561,   1999,   -310 },    216, jyasinzou_room_26DL_003880, jyasinzou_room_26DL_00BF50 },
};

s32 jyasinzou_room_26_terminatorMaybe_00020C = { 0x01000000 };

u8 jyasinzou_room_26_unaccounted_000210[] = {
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xE0, 0x01, 0x04, 0x00, 0x00, 0x03, 0x00, 0x02, 0x48, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF9, 0xFD, 0x97, 0x08, 0xCD, 0xFD, 0x3A, 
    0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFC, 0x00, 0x3C, 0x06, 0xCF, 0xFE, 0xCA, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFC, 0xFD, 0xD0, 0x06, 0xCF, 0xFE, 0xCA, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x5B, 0xFE, 0xD4, 0x06, 0xCF, 0xFE, 0xCA, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xE0, 0x01, 0x04, 0x00, 0x00, 0x03, 0x00, 0x02, 0xC8, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF9, 0xFD, 0x97, 0x08, 0xCD, 0xFD, 0x3A, 
    0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFC, 0x00, 0x3C, 0x06, 0xCF, 0xFE, 0xCA, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFC, 0xFD, 0xD0, 0x06, 0xCF, 0xFE, 0xCA, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x5B, 0xFE, 0xD4, 0x06, 0xCF, 0xFE, 0xCA, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_26Vtx_000310[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_000310.vtx.inc"
};

Gfx jyasinzou_room_26DL_000420[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_000310[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_000310, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(1, 5, 2, 0, 5, 3, 2, 0),
    gsSP2Triangles(6, 0, 2, 0, 7, 6, 2, 0),
    gsSP2Triangles(2, 4, 8, 0, 7, 2, 8, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_000520[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_000520.vtx.inc"
};

Gfx jyasinzou_room_26DL_000E50[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_000520[139], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_000520, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 2, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_00A8C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_26Vtx_000520[16], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 2, 0),
    gsSP2Triangles(6, 2, 7, 0, 6, 4, 2, 0),
    gsSP2Triangles(6, 8, 4, 0, 6, 9, 8, 0),
    gsSP1Triangle(6, 10, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_26Vtx_000520[27], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_00A8C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_26Vtx_000520[30], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_26Vtx_000520[33], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 1, 4, 0, 1, 5, 4, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_00A8C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_26Vtx_000520[40], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_26Vtx_000520[43], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 21, 0),
    gsSP2Triangles(22, 20, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(20, 19, 26, 0, 20, 26, 24, 0),
    gsSP2Triangles(26, 4, 2, 0, 26, 2, 24, 0),
    gsSP2Triangles(2, 1, 25, 0, 2, 25, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_00A8C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_26Vtx_000520[70], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 3, 5, 0),
    gsSP2Triangles(1, 7, 2, 0, 1, 8, 9, 0),
    gsSP2Triangles(1, 9, 7, 0, 1, 10, 11, 0),
    gsSP2Triangles(1, 11, 8, 0, 1, 3, 10, 0),
    gsSP2Triangles(10, 4, 12, 0, 10, 3, 4, 0),
    gsSP2Triangles(4, 13, 12, 0, 13, 14, 12, 0),
    gsSP1Triangle(4, 6, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_26Vtx_000520[85], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 0, 4, 0, 3, 11, 4, 0),
    gsSP2Triangles(12, 11, 3, 0, 12, 3, 13, 0),
    gsSP2Triangles(7, 12, 13, 0, 9, 7, 13, 0),
    gsSP2Triangles(2, 9, 13, 0, 2, 13, 3, 0),
    gsSP2Triangles(7, 14, 12, 0, 6, 14, 7, 0),
    gsSP2Triangles(15, 6, 5, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 17, 0, 21, 20, 19, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 25, 24, 0),
    gsSP2Triangles(23, 19, 25, 0, 23, 21, 19, 0),
    gsSP2Triangles(23, 22, 21, 0, 22, 26, 21, 0),
    gsSP2Triangles(27, 26, 22, 0, 27, 28, 29, 0),
    gsSP2Triangles(25, 19, 16, 0, 25, 16, 30, 0),
    gsSP2Triangles(19, 17, 16, 0, 22, 28, 27, 0),
    gsSPVertex(&jyasinzou_room_26Vtx_000520[116], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 7, 9, 0, 5, 7, 8, 0),
    gsSP2Triangles(10, 5, 11, 0, 5, 8, 12, 0),
    gsSP2Triangles(5, 12, 11, 0, 13, 5, 10, 0),
    gsSP2Triangles(13, 10, 14, 0, 15, 6, 5, 0),
    gsSP2Triangles(13, 15, 5, 0, 16, 17, 15, 0),
    gsSP2Triangles(16, 13, 14, 0, 13, 16, 15, 0),
    gsSP2Triangles(18, 17, 16, 0, 18, 19, 20, 0),
    gsSP2Triangles(16, 19, 18, 0, 16, 21, 19, 0),
    gsSP2Triangles(16, 14, 21, 0, 21, 22, 19, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_0014F8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_0014F8.vtx.inc"
};

Gfx jyasinzou_room_26DL_0016D8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_0014F8[22], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_0014F8, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_26Vtx_0014F8[6], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 6, 4, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 11, 10, 0, 12, 10, 13, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_001870[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_001870.vtx.inc"
};

Gfx jyasinzou_room_26DL_001AD0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_001870[30], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_001870, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 2, 0, 4, 3, 5, 0),
    gsSP2Triangles(0, 6, 3, 0, 6, 7, 3, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 0, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 10, 15, 0),
    gsSP2Triangles(15, 16, 13, 0, 16, 17, 13, 0),
    gsSP2Triangles(18, 19, 17, 0, 18, 15, 19, 0),
    gsSP2Triangles(19, 20, 17, 0, 20, 21, 17, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 19, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(28, 29, 27, 0, 28, 24, 29, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_001C10[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_001C10.vtx.inc"
};

Gfx jyasinzou_room_26DL_002290[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_001C10[96], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008AC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_001C10, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&jyasinzou_room_26Vtx_001C10[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&jyasinzou_room_26Vtx_001C10[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_002440[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_002440.vtx.inc"
};

Gfx jyasinzou_room_26DL_0028C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_002440[64], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008AC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_002440, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 20, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 24, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 28, 30, 0),
    gsSPVertex(&jyasinzou_room_26Vtx_002440[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(0, 2, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(7, 9, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(11, 13, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(15, 17, 22, 0, 21, 23, 19, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 24, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 28, 30, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_002A28[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_002A28.vtx.inc"
};

Gfx jyasinzou_room_26DL_002E18[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_002A28[55], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_002A28, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 2, 6, 0),
    gsSP2Triangles(2, 8, 6, 0, 2, 5, 9, 0),
    gsSP2Triangles(2, 9, 8, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 14, 15, 0),
    gsSP2Triangles(10, 15, 11, 0, 11, 16, 17, 0),
    gsSP2Triangles(11, 17, 12, 0, 11, 15, 18, 0),
    gsSP2Triangles(11, 18, 16, 0, 16, 19, 20, 0),
    gsSP2Triangles(16, 20, 17, 0, 16, 18, 21, 0),
    gsSP2Triangles(16, 21, 19, 0, 19, 22, 23, 0),
    gsSP2Triangles(19, 23, 20, 0, 19, 21, 24, 0),
    gsSP2Triangles(19, 24, 22, 0, 22, 8, 9, 0),
    gsSP2Triangles(22, 9, 23, 0, 22, 6, 8, 0),
    gsSP2Triangles(22, 24, 6, 0, 24, 25, 6, 0),
    gsSP2Triangles(26, 14, 10, 0, 26, 10, 1, 0),
    gsSP2Triangles(26, 1, 0, 0, 10, 13, 4, 0),
    gsSP2Triangles(10, 4, 1, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&jyasinzou_room_26Vtx_002A28[31], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(21, 20, 2, 0, 21, 2, 1, 0),
    gsSP2Triangles(22, 23, 19, 0, 22, 19, 18, 0),
    gsSP2Triangles(22, 17, 16, 0, 22, 16, 23, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_002FE8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_002FE8.vtx.inc"
};

Gfx jyasinzou_room_26DL_003168[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_002FE8[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_002FE8, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 9, 7, 0, 9, 4, 7, 0),
    gsSP2Triangles(4, 5, 7, 0, 5, 8, 7, 0),
    gsSP2Triangles(5, 10, 8, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 11, 0, 14, 2, 4, 0),
    gsSP2Triangles(14, 4, 9, 0, 2, 1, 4, 0),
    gsSP2Triangles(11, 13, 8, 0, 13, 15, 6, 0),
    gsSP1Triangle(13, 6, 8, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_003290[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_003290.vtx.inc"
};

Gfx jyasinzou_room_26DL_0035B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_003290[42], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_00A8C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_003290, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 3, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 9, 0),
    gsSP2Triangles(12, 2, 13, 0, 14, 15, 8, 0),
    gsSP2Triangles(14, 8, 11, 0, 15, 16, 12, 0),
    gsSP2Triangles(15, 12, 8, 0, 16, 2, 12, 0),
    gsSP2Triangles(7, 3, 17, 0, 3, 15, 17, 0),
    gsSP2Triangles(15, 14, 17, 0, 3, 0, 16, 0),
    gsSP2Triangles(3, 16, 15, 0, 0, 2, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0),
    gsSP2Triangles(21, 22, 19, 0, 18, 23, 24, 0),
    gsSP2Triangles(18, 24, 21, 0, 23, 2, 24, 0),
    gsSP2Triangles(21, 4, 6, 0, 21, 6, 22, 0),
    gsSP2Triangles(21, 24, 1, 0, 21, 1, 4, 0),
    gsSP2Triangles(24, 2, 1, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 18, 26, 0, 18, 20, 26, 0),
    gsSP2Triangles(25, 28, 23, 0, 25, 23, 18, 0),
    gsSP2Triangles(28, 2, 23, 0, 29, 25, 27, 0),
    gsSP2Triangles(29, 27, 30, 0, 29, 31, 28, 0),
    gsSP2Triangles(29, 28, 25, 0, 31, 2, 28, 0),
    gsSPVertex(&jyasinzou_room_26Vtx_003290[32], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 0, 3, 0),
    gsSP2Triangles(7, 3, 8, 0, 7, 9, 4, 0),
    gsSP2Triangles(7, 4, 0, 0, 9, 6, 4, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_003770[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_003770.vtx.inc"
};

Gfx jyasinzou_room_26DL_003880[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_003770[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, SHADE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_003770, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP1Triangle(0, 7, 8, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_003918[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_003918.vtx.inc"
};

Gfx jyasinzou_room_26DL_0046A8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[209], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_00A0C8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_003918, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(9, 12, 13, 0, 9, 13, 10, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_0080C8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[16], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[48], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[64], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[69], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 4, 6, 0),
    gsSP2Triangles(7, 8, 5, 0, 7, 5, 6, 0),
    gsSP1Triangle(4, 3, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_26Tex_00ACC8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_017FE0),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[78], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 2, 0, 3, 5, 7, 0),
    gsSP2Triangles(8, 6, 2, 0, 3, 7, 9, 0),
    gsSP2Triangles(10, 8, 2, 0, 3, 9, 10, 0),
    gsSP2Triangles(3, 10, 2, 0, 4, 1, 11, 0),
    gsSP2Triangles(12, 4, 11, 0, 13, 1, 0, 0),
    gsSP2Triangles(1, 13, 14, 0, 1, 14, 11, 0),
    gsSP2Triangles(15, 5, 4, 0, 12, 15, 4, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 16, 19, 0, 21, 20, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_0082C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[100], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 5, 2, 4, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_26Tex_00ACC8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_017FE0),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[108], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_0082C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[115], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[118], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_26Tex_00B4C8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[126], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_0082C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[134], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_26Tex_00ACC8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_017FE0),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[140], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_0082C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[143], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_26Tex_00ACC8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_017FE0),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[146], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 6, 5, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_0094C8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[156], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_26Tex_00B4C8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[161], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[169], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_009CC8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&jyasinzou_room_26Vtx_003918[177], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_0050B8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_0050B8.vtx.inc"
};

Gfx jyasinzou_room_26DL_005468[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_0050B8[51], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_00A8C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_0050B8, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(9, 10, 7, 0, 10, 11, 7, 0),
    gsSP2Triangles(11, 12, 7, 0, 12, 13, 7, 0),
    gsSP2Triangles(13, 14, 7, 0, 7, 15, 8, 0),
    gsSP2Triangles(7, 16, 15, 0, 7, 17, 16, 0),
    gsSP2Triangles(7, 18, 17, 0, 7, 19, 18, 0),
    gsSP2Triangles(7, 20, 19, 0, 7, 14, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_26Vtx_0050B8[21], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 10, 11, 0, 6, 11, 7, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 16, 17, 0, 12, 17, 13, 0),
    gsSP2Triangles(13, 18, 19, 0, 13, 19, 14, 0),
    gsSP2Triangles(13, 17, 20, 0, 13, 20, 18, 0),
    gsSP2Triangles(21, 22, 18, 0, 21, 18, 20, 0),
    gsSP2Triangles(22, 23, 19, 0, 22, 19, 18, 0),
    gsSP2Triangles(22, 1, 5, 0, 22, 5, 23, 0),
    gsSP2Triangles(22, 21, 2, 0, 22, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_00A8C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_26Vtx_0050B8[45], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_0056F0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_0056F0.vtx.inc"
};

Gfx jyasinzou_room_26DL_005800[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_0056F0[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_0056F0, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(0, 5, 1, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 2, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(8, 3, 0, 0, 8, 0, 7, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_005900[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_005900.vtx.inc"
};

Gfx jyasinzou_room_26DL_005A80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_005900[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_006CC8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA_PRIM, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_005900, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_005B50[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_005B50.vtx.inc"
};

Gfx jyasinzou_room_26DL_005D20[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_005B50[21], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_005B50, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 4, 3, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 3, 10, 0),
    gsSP2Triangles(9, 5, 3, 0, 7, 6, 12, 0),
    gsSP2Triangles(6, 13, 12, 0, 14, 13, 6, 0),
    gsSP2Triangles(14, 15, 16, 0, 10, 3, 17, 0),
    gsSP2Triangles(3, 0, 17, 0, 0, 18, 17, 0),
    gsSP2Triangles(3, 1, 0, 0, 6, 15, 14, 0),
    gsSP2Triangles(6, 19, 20, 0, 6, 20, 15, 0),
    gsSP1Triangle(6, 8, 19, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_005E50[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_005E50.vtx.inc"
};

Gfx jyasinzou_room_26DL_005FF0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_005E50[18], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_005E50, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 4, 3, 0, 6, 7, 8, 0),
    gsSP2Triangles(7, 9, 8, 0, 7, 3, 9, 0),
    gsSP2Triangles(7, 5, 3, 0, 7, 6, 5, 0),
    gsSP2Triangles(6, 10, 5, 0, 11, 10, 6, 0),
    gsSP2Triangles(11, 12, 13, 0, 9, 3, 14, 0),
    gsSP2Triangles(3, 0, 14, 0, 0, 15, 14, 0),
    gsSP2Triangles(3, 1, 0, 0, 6, 12, 11, 0),
    gsSP2Triangles(6, 16, 12, 0, 16, 17, 12, 0),
    gsSP1Triangle(6, 8, 16, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_006120[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_006120.vtx.inc"
};

Gfx jyasinzou_room_26DL_006560[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_006120[60], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_006120, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 3, 0, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 6, 0),
    gsSP2Triangles(7, 6, 5, 0, 8, 7, 9, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 10, 0),
    gsSP2Triangles(11, 10, 9, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 11, 13, 0, 11, 15, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_00A8C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_26Vtx_006120[16], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_0070C8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&jyasinzou_room_26Vtx_006120[22], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 2, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_0094C8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&jyasinzou_room_26Vtx_006120[27], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_00A8C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_26Vtx_006120[51], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 6, 3, 0),
    gsSP2Triangles(5, 3, 7, 0, 6, 5, 8, 0),
    gsSP1Triangle(6, 8, 0, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_0068D8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_0068D8.vtx.inc"
};

Gfx jyasinzou_room_26DL_006A98[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_0068D8[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_008CC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_26Vtx_0068D8, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_00A8C8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_26Vtx_0068D8[14], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_26_unaccounted_006C30[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0x50, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x16, 0xD8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0xD0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x22, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x28, 0xC0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2E, 0x18, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x31, 0x68, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x35, 0xB0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x38, 0x80, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x46, 0xA8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x54, 0x68, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x58, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5A, 0x80, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5D, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5F, 0xF0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x65, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x6A, 0x98, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_26Tex_006CC8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Tex_006CC8.rgba16.inc.c"
};

u64 jyasinzou_room_26Tex_0070C8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Tex_0070C8.rgba16.inc.c"
};

u64 jyasinzou_room_26Tex_0080C8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Tex_0080C8.rgba16.inc.c"
};

u64 jyasinzou_room_26Tex_0082C8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Tex_0082C8.ci8.inc.c"
};

u64 jyasinzou_room_26Tex_008AC8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Tex_008AC8.ci8.inc.c"
};

u64 jyasinzou_room_26Tex_008CC8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Tex_008CC8.ci8.inc.c"
};

u64 jyasinzou_room_26Tex_0094C8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Tex_0094C8.ci8.inc.c"
};

u64 jyasinzou_room_26Tex_009CC8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Tex_009CC8.rgba16.inc.c"
};

u64 jyasinzou_room_26Tex_00A0C8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Tex_00A0C8.ci8.inc.c"
};

u64 jyasinzou_room_26Tex_00A8C8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Tex_00A8C8.ci8.inc.c"
};

u64 jyasinzou_room_26Tex_00ACC8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Tex_00ACC8.ci4.inc.c"
};

u64 jyasinzou_room_26Tex_00B4C8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Tex_00B4C8.ci4.inc.c"
};

u8 jyasinzou_room_26_possiblePadding_00BCC8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_26Vtx_00BCD0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_00BCD0.vtx.inc"
};

Gfx jyasinzou_room_26DL_00BF50[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_00BCD0[32], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gSpiritTempleDayEntranceTex, G_IM_FMT_IA, G_IM_SIZ_16b, 8, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 178),
    gsSPVertex(jyasinzou_room_26Vtx_00BCD0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 28, 30, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_26Vtx_00C040[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Vtx_00C040.vtx.inc"
};

Gfx jyasinzou_room_26DL_00C200[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_26Vtx_00C040[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_26Tex_00C2F8, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(jyasinzou_room_26Vtx_00C040, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 3, 0, 7, 0),
    gsSP2Triangles(5, 0, 8, 0, 0, 9, 8, 0),
    gsSP2Triangles(0, 10, 11, 0, 12, 0, 13, 0),
    gsSP2Triangles(0, 14, 15, 0, 0, 16, 17, 0),
    gsSP2Triangles(18, 0, 19, 0, 0, 2, 19, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_26_unaccounted_00C2E0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xBF, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xC2, 0x00, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_26Tex_00C2F8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_26Tex_00C2F8.ia16.inc.c"
};

