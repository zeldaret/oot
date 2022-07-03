#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_room_14.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HAKAdan_scene.h"
#include "HAKAdan_room_0.h"
#include "HAKAdan_room_1.h"
#include "HAKAdan_room_2.h"
#include "HAKAdan_room_3.h"
#include "HAKAdan_room_4.h"
#include "HAKAdan_room_5.h"
#include "HAKAdan_room_6.h"
#include "HAKAdan_room_7.h"
#include "HAKAdan_room_8.h"
#include "HAKAdan_room_9.h"
#include "HAKAdan_room_10.h"
#include "HAKAdan_room_11.h"
#include "HAKAdan_room_12.h"
#include "HAKAdan_room_13.h"
#include "HAKAdan_room_15.h"
#include "HAKAdan_room_16.h"
#include "HAKAdan_room_17.h"
#include "HAKAdan_room_18.h"
#include "HAKAdan_room_19.h"
#include "HAKAdan_room_20.h"
#include "HAKAdan_room_21.h"
#include "HAKAdan_room_22.h"

SceneCmd HAKAdan_room_14Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_room_14PolygonType2_0000C0),
    SCENE_CMD_OBJECT_LIST(5, HAKAdan_room_14ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(7, HAKAdan_room_14ActorList_00004C),
    SCENE_CMD_END(),
};

s16 HAKAdan_room_14ObjectList_000040[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_SK2,
};

ActorEntry HAKAdan_room_14ActorList_00004C[] = {
    { ACTOR_EN_LIGHT, {   1186,   -922,   1325 }, {      0,      0,      0 }, 0x03F7 },
    { ACTOR_EN_LIGHT, {   1187,   -922,    842 }, {      0,      0,      0 }, 0x03F7 },
    { ACTOR_EN_LIGHT, {   1890,  -1034,    846 }, {      0,      0,      0 }, 0x03F7 },
    { ACTOR_EN_LIGHT, {   1890,  -1034,   1322 }, {      0,      0,      0 }, 0x03F7 },
    { ACTOR_EN_TEST,  {   1114,  -1083,   1081 }, {      0, 0X4000,      0 }, 0x0003 },
    { ACTOR_EN_TEST,  {   1489,  -1323,   1083 }, {      0, 0X4000,      0 }, 0x0003 },
    { ACTOR_EN_BOX,   {   1252,  -1083,   1083 }, {      0, 0X4000,      0 }, 0x79D0 },
};

u8 HAKAdan_room_14_possiblePadding_0000BC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 HAKAdan_room_14PolygonType2_0000C0 = { 
    2, 4,
    HAKAdan_room_14PolygonDlist2_0000CC,
    HAKAdan_room_14PolygonDlist2_0000CC + ARRAY_COUNTU(HAKAdan_room_14PolygonDlist2_0000CC)
};

PolygonDlist2 HAKAdan_room_14PolygonDlist2_0000CC[4] = {
    { {   1509,  -1053,   1084 },    560, HAKAdan_room_14DL_002D08, NULL },
    { {   1509,  -1213,   1084 },    497, HAKAdan_room_14DL_000470, NULL },
    { {   1537,  -1132,   1084 },    491, HAKAdan_room_14DL_001AE8, NULL },
    { {   1519,  -1053,   1084 },    568, HAKAdan_room_14DL_000DC0, NULL },
};

s32 HAKAdan_room_14_terminatorMaybe_00010C = { 0x01000000 };

Vtx HAKAdan_room_14Vtx_000110[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_14Vtx_000110.vtx.inc"
};

Gfx HAKAdan_room_14DL_000470[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_14Vtx_000110[46], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_0173C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_0163C0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(HAKAdan_room_14Vtx_000110, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(1, 4, 3, 0, 4, 1, 0, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(4, 17, 18, 0, 4, 18, 19, 0),
    gsSP2Triangles(20, 21, 4, 0, 20, 4, 19, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_14Vtx_000110[32], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 10, 0),
    gsSP1Triangle(11, 13, 12, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_14Vtx_0005E0[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_14Vtx_0005E0.vtx.inc"
};

Gfx HAKAdan_room_14DL_000DC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_14Vtx_0005E0[118], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_room_14Tex_004F00, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 5, 5),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_14Vtx_0005E0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 0, 5, 6, 0),
    gsSP2Triangles(0, 6, 1, 0, 6, 7, 1, 0),
    gsSP2Triangles(7, 4, 1, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 0, 10, 0, 2, 8, 10, 0),
    gsSP2Triangles(0, 2, 10, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(31, 28, 30, 0),
    gsSPVertex(&HAKAdan_room_14Vtx_0005E0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(0, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 6, 7, 0, 1, 6, 2, 0),
    gsSP2Triangles(2, 8, 9, 0, 2, 9, 4, 0),
    gsSP2Triangles(2, 7, 8, 0, 7, 10, 8, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 14, 16, 0, 18, 19, 16, 0),
    gsSP2Triangles(15, 18, 16, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 24, 25, 20, 0),
    gsSP2Triangles(24, 20, 23, 0, 26, 21, 27, 0),
    gsSP2Triangles(28, 26, 27, 0, 29, 28, 27, 0),
    gsSP2Triangles(25, 29, 27, 0, 30, 17, 31, 0),
    gsSPVertex(&HAKAdan_room_14Vtx_0005E0[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 7, 0, 10, 12, 13, 0),
    gsSP2Triangles(10, 13, 11, 0, 13, 12, 5, 0),
    gsSP2Triangles(13, 5, 8, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 18, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(21, 22, 20, 0, 14, 23, 24, 0),
    gsSP2Triangles(14, 24, 15, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&HAKAdan_room_14Vtx_0005E0[95], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 8, 0, 5, 1, 6, 0),
    gsSP2Triangles(3, 9, 1, 0, 9, 6, 1, 0),
    gsSP2Triangles(0, 8, 10, 0, 8, 7, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 13, 20, 21, 0),
    gsSP2Triangles(12, 11, 22, 0, 18, 15, 14, 0),
    gsSP2Triangles(17, 19, 16, 0, 21, 20, 22, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_14Vtx_001018[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_14Vtx_001018.vtx.inc"
};

Gfx HAKAdan_room_14DL_001AE8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_14Vtx_001018[165], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HAKAdan_room_14Tex_003500, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_14Vtx_001018, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_14Tex_003700, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001018[16], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 3, 4, 0, 2, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_14Tex_003500, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001018[22], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 8, 0),
    gsSP2Triangles(11, 8, 7, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_14Tex_003700, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001018[42], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_14Tex_003500, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001018[48], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_14Tex_003700, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001018[56], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_14Tex_003500, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001018[62], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 8, 0),
    gsSP2Triangles(11, 8, 7, 0, 13, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_14Tex_005700, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001018[78], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_14Vtx_001018[110], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 21, 20, 0),
    gsSP2Triangles(21, 24, 22, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 24, 0, 28, 25, 24, 0),
    gsSP2Triangles(21, 23, 28, 0, 21, 28, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_14Tex_003500, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001018[139], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 4, 0),
    gsSP2Triangles(7, 4, 3, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_14Tex_003700, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001018[155], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_14Tex_003500, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001018[161], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_14Vtx_001FD8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_14Vtx_001FD8.vtx.inc"
};

Gfx HAKAdan_room_14DL_002D08[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[203], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003D00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_14Vtx_001FD8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003900, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[8], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003D00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[11], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003900, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[19], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 5, 4, 0),
    gsSP2Triangles(8, 2, 1, 0, 8, 1, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003D00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[29], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 20, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 28, 30, 0),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[61], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003900, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[65], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003D00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[68], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003900, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[92], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 2, 0),
    gsSP1Triangle(9, 10, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003D00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[103], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003900, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[111], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 5, 4, 0, 11, 2, 1, 0),
    gsSP1Triangle(11, 1, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003D00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[124], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003F00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[140], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003D00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[145], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003900, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[149], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003D00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[152], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003900, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[162], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 5, 4, 0),
    gsSP2Triangles(7, 4, 8, 0, 9, 1, 0, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 15, 14, 0),
    gsSP2Triangles(17, 14, 18, 0, 19, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003D00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[182], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003900, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[192], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003D00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[195], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_14Tex_003F00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_14Vtx_001FD8[199], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_14_unaccounted_0034D8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0xC0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0xE8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2D, 0x08, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_14Tex_003500[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_14Tex_003500.i4.inc.c"
};

u64 HAKAdan_room_14Tex_003700[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_14Tex_003700.i4.inc.c"
};

u64 HAKAdan_room_14Tex_003900[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_14Tex_003900.rgba16.inc.c"
};

u64 HAKAdan_room_14Tex_003D00[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_14Tex_003D00.rgba16.inc.c"
};

u64 HAKAdan_room_14Tex_003F00[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_14Tex_003F00.rgba16.inc.c"
};

u64 HAKAdan_room_14Tex_004F00[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_14Tex_004F00.rgba16.inc.c"
};

u64 HAKAdan_room_14Tex_005700[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_14Tex_005700.i4.inc.c"
};

