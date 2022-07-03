#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_room_12.h"
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
#include "HAKAdan_room_13.h"
#include "HAKAdan_room_14.h"
#include "HAKAdan_room_15.h"
#include "HAKAdan_room_16.h"
#include "HAKAdan_room_17.h"
#include "HAKAdan_room_18.h"
#include "HAKAdan_room_19.h"
#include "HAKAdan_room_20.h"
#include "HAKAdan_room_21.h"
#include "HAKAdan_room_22.h"

SceneCmd HAKAdan_room_12Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_room_12PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(12, HAKAdan_room_12ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(12, HAKAdan_room_12ActorList_000058),
    SCENE_CMD_END(),
};

s16 HAKAdan_room_12ObjectList_000040[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_BB,
    OBJECT_RR,
    OBJECT_GI_KEY,
    OBJECT_GI_MAGICPOT,
    OBJECT_FIREFLY,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
    OBJECT_BOMBF,
};

ActorEntry HAKAdan_room_12ActorList_000058[] = {
    { ACTOR_EN_ITEM00,        {  -5858,  -1363,  -1605 }, {      0,      0,      0 }, 0x0611 },
    { ACTOR_EN_WONDER_ITEM,   {  -5061,  -1050,  -1587 }, {      0, 0XC000,    0X1 }, 0x19F8 },
    { ACTOR_EN_LIGHT,         {  -6019,   -935,  -1254 }, {      0,      0,      0 }, 0x03F7 },
    { ACTOR_EN_LIGHT,         {  -6018,   -938,  -1917 }, {      0,      0,      0 }, 0x03F7 },
    { ACTOR_EN_LIGHT,         {  -5186,  -1071,  -1923 }, {      0,      0,      0 }, 0x03F7 },
    { ACTOR_EN_LIGHT,         {  -5181,  -1071,  -1258 }, {      0,      0,      0 }, 0x03F7 },
    { ACTOR_EN_BOMBF,         {  -6120,  -1103,  -1763 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,         {  -6120,  -1103,  -1398 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_BG_HAKA_TUBO,     {  -5632,  -1343,  -1713 }, {      0, 0XD555,      0 }, 0x00FF },
    { ACTOR_BG_HAKA_TUBO,     {  -5632,  -1343,  -1462 }, {      0, 0X2AAB,      0 }, 0x00FF },
    { ACTOR_BG_HAKA_TUBO,     {  -5414,  -1343,  -1587 }, {      0, 0X8000,      0 }, 0x00FF },
    { ACTOR_BG_HAKA_MEGANEBG, {  -5559,  -1363,  -1587 }, {      0, 0X8000,      0 }, 0x0002 },
};

u8 HAKAdan_room_12_possiblePadding_000118[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 HAKAdan_room_12PolygonType2_000120 = { 
    2, 4,
    HAKAdan_room_12PolygonDlist2_00012C,
    HAKAdan_room_12PolygonDlist2_00012C + ARRAY_COUNTU(HAKAdan_room_12PolygonDlist2_00012C)
};

PolygonDlist2 HAKAdan_room_12PolygonDlist2_00012C[4] = {
    { {  -5611,  -1073,  -1586 },    661, HAKAdan_room_12DL_002A88, NULL },
    { {  -5611,  -1233,  -1586 },    608, HAKAdan_room_12DL_0014F0, NULL },
    { {  -5601,  -1073,  -1586 },    670, HAKAdan_room_12DL_001C60, NULL },
    { {  -5604,  -1151,  -1586 },    587, HAKAdan_room_12DL_000CF0, NULL },
};

s32 HAKAdan_room_12_terminatorMaybe_00016C = { 0x01000000 };

Vtx HAKAdan_room_12Vtx_000170[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_12Vtx_000170.vtx.inc"
};

Gfx HAKAdan_room_12DL_000CF0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_12Vtx_000170[176], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HAKAdan_room_12Tex_005548, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_12Vtx_000170, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 15, 16, 0, 17, 12, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&HAKAdan_room_12Vtx_000170[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(7, 6, 8, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_12Vtx_000170[62], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_12Tex_003348, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_000170[66], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP1Triangle(8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_12Tex_003548, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_000170[77], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 3, 4, 0, 2, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_12Tex_003348, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_000170[83], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_12Tex_003548, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_000170[101], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_12Tex_003348, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_000170[107], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 8, 0),
    gsSP2Triangles(11, 8, 7, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_12Tex_003548, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_000170[131], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_12Tex_003348, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_000170[137], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_12Tex_003548, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_000170[159], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_12Tex_003348, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_000170[165], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(7, 9, 10, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_12Vtx_0011B0[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_12Vtx_0011B0.vtx.inc"
};

Gfx HAKAdan_room_12DL_0014F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_12Vtx_0011B0[44], 8, 0),
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
    gsSPVertex(HAKAdan_room_12Vtx_0011B0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 1, 0, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 4, 8, 0, 10, 8, 9, 0),
    gsSP2Triangles(10, 11, 4, 0, 11, 12, 4, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_12Vtx_0011B0[32], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 9, 0, 10, 11, 7, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_12Vtx_001660[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_12Vtx_001660.vtx.inc"
};

Gfx HAKAdan_room_12DL_001C60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_12Vtx_001660[88], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_room_12Tex_004D48, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 5, 5),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_12Vtx_001660, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(21, 20, 24, 0, 21, 24, 25, 0),
    gsSP2Triangles(25, 24, 26, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 25, 0),
    gsSP2Triangles(29, 25, 28, 0, 29, 31, 22, 0),
    gsSP2Triangles(31, 23, 22, 0, 29, 22, 30, 0),
    gsSPVertex(&HAKAdan_room_12Vtx_001660[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(6, 5, 12, 0, 6, 12, 8, 0),
    gsSP2Triangles(10, 13, 7, 0, 10, 7, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(19, 21, 23, 0, 19, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(26, 25, 29, 0, 27, 24, 28, 0),
    gsSPVertex(&HAKAdan_room_12Vtx_001660[62], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 3, 1, 0, 4, 2, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 15, 0),
    gsSP2Triangles(7, 6, 9, 0, 8, 7, 10, 0),
    gsSP2Triangles(12, 15, 13, 0, 14, 12, 11, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 24, 25, 0, 22, 25, 23, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_12Vtx_001E48[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_12Vtx_001E48.vtx.inc"
};

Gfx HAKAdan_room_12DL_002A88[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[188], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003B48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_12Vtx_001E48, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 2, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003748, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[6], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(10, 8, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003B48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[17], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003748, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[23], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003B48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[31], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003748, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[37], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP1Triangle(8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003B48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[48], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 2, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003748, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[54], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003B48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[58], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003748, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[64], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP1Triangle(8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003B48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[75], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 5, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(10, 6, 9, 0, 10, 11, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003748, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[87], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(9, 8, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003B48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[98], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003748, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[104], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003B48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[108], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 31, 29, 0),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[140], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[144], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003B48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[147], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[151], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003B48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[154], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[158], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003B48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[162], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003D48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[170], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 0, 2, 0, 4, 2, 3, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 7, 0),
    gsSP2Triangles(7, 6, 9, 0, 8, 7, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_12Tex_003B48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_12Vtx_001E48[180], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_12_unaccounted_003320[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0xF0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1C, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2A, 0x88, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_12Tex_003348[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_12Tex_003348.i4.inc.c"
};

u64 HAKAdan_room_12Tex_003548[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_12Tex_003548.i4.inc.c"
};

u64 HAKAdan_room_12Tex_003748[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_12Tex_003748.rgba16.inc.c"
};

u64 HAKAdan_room_12Tex_003B48[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_12Tex_003B48.rgba16.inc.c"
};

u64 HAKAdan_room_12Tex_003D48[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_12Tex_003D48.rgba16.inc.c"
};

u64 HAKAdan_room_12Tex_004D48[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_12Tex_004D48.rgba16.inc.c"
};

u64 HAKAdan_room_12Tex_005548[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_12Tex_005548.i4.inc.c"
};

