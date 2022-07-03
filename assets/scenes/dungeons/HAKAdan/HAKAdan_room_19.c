#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_room_19.h"
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
#include "HAKAdan_room_14.h"
#include "HAKAdan_room_15.h"
#include "HAKAdan_room_16.h"
#include "HAKAdan_room_17.h"
#include "HAKAdan_room_18.h"
#include "HAKAdan_room_20.h"
#include "HAKAdan_room_21.h"
#include "HAKAdan_room_22.h"

SceneCmd HAKAdan_room_19Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_room_19PolygonType2_0000D0),
    SCENE_CMD_OBJECT_LIST(7, HAKAdan_room_19ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(8, HAKAdan_room_19ActorList_000050),
    SCENE_CMD_END(),
};

s16 HAKAdan_room_19ObjectList_000040[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_RD,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
};

ActorEntry HAKAdan_room_19ActorList_000050[] = {
    { ACTOR_EN_RD,    {   4982,  -1363,    -98 }, {      0, 0X44FA,      0 }, 0x7F01 },
    { ACTOR_EN_RD,    {   5004,  -1363,   -213 }, {      0, 0X1A50,      0 }, 0x7F01 },
    { ACTOR_EN_RD,    {   5026,  -1363,    -53 }, {      0, 0X5B06,      0 }, 0x7F01 },
    { ACTOR_EN_RD,    {   5061,  -1363,   -164 }, {      0, 0X305B,      0 }, 0x7F01 },
    { ACTOR_EN_SW,    {   5108,  -1187,   -126 }, { 0X4000, 0XC000,      0 }, 0x8801 },
    { ACTOR_SHOT_SUN, {   4931,  -1363,   -127 }, {      0,      0,      0 }, 0xFF40 },
    { ACTOR_ELF_MSG2, {   5101,  -1225,   -126 }, {      0, 0XFFA6,      0 }, 0x2228 },
    { ACTOR_EN_BOX,   {   5072,  -1363,    -19 }, {      0, 0X4000,      0 }, 0x6855 },
};

PolygonType2 HAKAdan_room_19PolygonType2_0000D0 = { 
    2, 4,
    HAKAdan_room_19PolygonDlist2_0000DC,
    HAKAdan_room_19PolygonDlist2_0000DC + ARRAY_COUNTU(HAKAdan_room_19PolygonDlist2_0000DC)
};

PolygonDlist2 HAKAdan_room_19PolygonDlist2_0000DC[4] = {
    { {   4928,  -1213,   -126 },    278, HAKAdan_room_19DL_0011E0, NULL },
    { {   5108,  -1224,   -126 },     84, HAKAdan_room_19DL_001490, NULL },
    { {   4928,  -1363,   -126 },    234, HAKAdan_room_19DL_000290, NULL },
    { {   4918,  -1213,   -126 },    284, HAKAdan_room_19DL_000938, NULL },
};

s32 HAKAdan_room_19_terminatorMaybe_00011C = { 0x01000000 };

Vtx HAKAdan_room_19Vtx_000120[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_19Vtx_000120.vtx.inc"
};

Gfx HAKAdan_room_19DL_000290[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_19Vtx_000120[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_0173C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_016BC0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(HAKAdan_room_19Vtx_000120, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 5, 6, 0),
    gsSP2Triangles(0, 6, 7, 0, 0, 7, 1, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 1, 0),
    gsSP2Triangles(8, 1, 7, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 1, 0, 12, 13, 1, 0),
    gsSP2Triangles(13, 14, 2, 0, 13, 2, 1, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_19Vtx_0003C8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_19Vtx_0003C8.vtx.inc"
};

Gfx HAKAdan_room_19DL_000938[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_19Vtx_0003C8[79], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_016BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_0163C0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_19Vtx_0003C8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(1, 14, 15, 0, 1, 15, 2, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(17, 20, 18, 0, 20, 21, 18, 0),
    gsSP2Triangles(17, 22, 20, 0, 22, 21, 20, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_19Vtx_0003C8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 11, 19, 12, 0),
    gsSP2Triangles(12, 20, 13, 0, 12, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 26, 0),
    gsSP2Triangles(28, 26, 25, 0, 30, 31, 28, 0),
    gsSP1Triangle(30, 28, 25, 0),
    gsSPVertex(&HAKAdan_room_19Vtx_0003C8[64], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 7, 9, 0),
    gsSP2Triangles(12, 9, 10, 0, 6, 12, 11, 0),
    gsSP2Triangles(6, 11, 4, 0, 13, 14, 6, 0),
    gsSP2Triangles(13, 6, 5, 0, 8, 7, 14, 0),
    gsSP1Triangle(8, 14, 13, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_19Vtx_000B00[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_19Vtx_000B00.vtx.inc"
};

Gfx HAKAdan_room_19DL_0011E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_19Vtx_000B00[102], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_19Tex_002578, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_0173C0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_19Vtx_000B00, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 6, 0, 24, 6, 26, 0),
    gsSP2Triangles(27, 1, 28, 0, 27, 28, 29, 0),
    gsSPVertex(&HAKAdan_room_19Vtx_000B00[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_19Vtx_000B00[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_19Vtx_000B00[94], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsSP2Triangles(6, 5, 4, 0, 6, 4, 7, 0),
    gsSP2Triangles(2, 1, 6, 0, 2, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_19Vtx_0013C0[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_19Vtx_0013C0.vtx.inc"
};

Gfx HAKAdan_room_19DL_001490[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_19Vtx_0013C0[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_19Tex_001578, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_19Vtx_0013C0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 2, 3, 0, 4, 0, 2, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_19_unaccounted_001550[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x09, 0x38, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x11, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0x90, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_19Tex_001578[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_19Tex_001578.rgba16.inc.c"
};

u64 HAKAdan_room_19Tex_002578[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_19Tex_002578.rgba16.inc.c"
};

