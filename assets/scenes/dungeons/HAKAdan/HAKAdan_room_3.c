#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_room_3.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HAKAdan_scene.h"
#include "HAKAdan_room_0.h"
#include "HAKAdan_room_1.h"
#include "HAKAdan_room_2.h"
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
#include "HAKAdan_room_19.h"
#include "HAKAdan_room_20.h"
#include "HAKAdan_room_21.h"
#include "HAKAdan_room_22.h"

SceneCmd HAKAdan_room_3Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_room_3PolygonType2_000070),
    SCENE_CMD_OBJECT_LIST(8, HAKAdan_room_3ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(2, HAKAdan_room_3ActorList_000050),
    SCENE_CMD_END(),
};

s16 HAKAdan_room_3ObjectList_000040[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_BDOOR,
    OBJECT_BB,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
};

ActorEntry HAKAdan_room_3ActorList_000050[] = {
    { ACTOR_EN_SW,          {  -3095,  -1401,    527 }, { 0X4000,      0,      0 }, 0x8804 },
    { ACTOR_BG_HAKA_MEGANE, {  -2742,  -1363,    309 }, {      0,      0,      0 }, 0x0005 },
};

PolygonType2 HAKAdan_room_3PolygonType2_000070 = { 
    2, 4,
    HAKAdan_room_3PolygonDlist2_00007C,
    HAKAdan_room_3PolygonDlist2_00007C + ARRAY_COUNTU(HAKAdan_room_3PolygonDlist2_00007C)
};

PolygonDlist2 HAKAdan_room_3PolygonDlist2_00007C[4] = {
    { {  -2742,  -1148,    789 },     63, HAKAdan_room_3DL_000CB0, NULL },
    { {  -2742,  -1363,    304 },    526, HAKAdan_room_3DL_001420, NULL },
    { {  -2742,  -1663,    304 },   1132, HAKAdan_room_3DL_000750, NULL },
    { {  -2742,  -1963,    304 },    797, HAKAdan_room_3DL_0011B0, NULL },
};

s32 HAKAdan_room_3_terminatorMaybe_0000BC = { 0x01000000 };

Vtx HAKAdan_room_3Vtx_0000C0[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_3Vtx_0000C0.vtx.inc"
};

Gfx HAKAdan_room_3DL_000750[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_3Vtx_0000C0[97], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_3Tex_001D78, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_room_3Tex_001578, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(HAKAdan_room_3Vtx_0000C0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(21, 24, 22, 0, 22, 24, 25, 0),
    gsSP2Triangles(22, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 29, 30, 0, 30, 29, 31, 0),
    gsSP1Triangle(8, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_3Vtx_0000C0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 21, 0),
    gsSP2Triangles(20, 23, 21, 0, 22, 21, 25, 0),
    gsSP2Triangles(22, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(25, 28, 29, 0, 25, 29, 27, 0),
    gsSPVertex(&HAKAdan_room_3Vtx_0000C0[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(8, 18, 9, 0, 11, 19, 20, 0),
    gsSP2Triangles(11, 20, 13, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_3Vtx_0000C0[94], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_3Vtx_000950[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_3Vtx_000950.vtx.inc"
};

Gfx HAKAdan_room_3DL_000CB0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_3Vtx_000950[46], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HAKAdan_room_3Tex_002578, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_3Vtx_000950, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 5, 7, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_3Vtx_000950[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_3Tex_002778, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_3Vtx_000950[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_3Tex_002578, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_3Vtx_000950[16], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_3Tex_002778, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_3Vtx_000950[19], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_3Tex_002578, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_3Vtx_000950[23], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_3Vtx_000950[27], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 7, 0, 8, 9, 10, 0),
    gsSP1Triangle(11, 4, 12, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_3Vtx_000950[40], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_3Vtx_000F30[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_3Vtx_000F30.vtx.inc"
};

Gfx HAKAdan_room_3DL_0011B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_3Vtx_000F30[32], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HAKAdan_room_3Tex_002578, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_3Vtx_000F30, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 0, 2, 5, 0),
    gsSP2Triangles(6, 7, 3, 0, 6, 3, 8, 0),
    gsSP2Triangles(6, 8, 0, 0, 9, 6, 0, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 10, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 18, 17, 0, 16, 19, 20, 0),
    gsSP2Triangles(16, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 24, 22, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 22, 0, 27, 28, 21, 0),
    gsSP2Triangles(28, 29, 25, 0, 28, 25, 30, 0),
    gsSP2Triangles(28, 30, 21, 0, 14, 13, 31, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_3Vtx_0012C0[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_3Vtx_0012C0.vtx.inc"
};

Gfx HAKAdan_room_3DL_001420[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_3Vtx_0012C0[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_0173C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_016BC0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 64),
    gsSPVertex(HAKAdan_room_3Vtx_0012C0, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 2, 5, 3, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 4, 5, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 10, 8, 0),
    gsSP2Triangles(10, 7, 11, 0, 10, 12, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_3_unaccounted_001550[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x07, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0xB0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x11, 0xB0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0x20, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_3Tex_001578[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_3Tex_001578.rgba16.inc.c"
};

u64 HAKAdan_room_3Tex_001D78[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_3Tex_001D78.rgba16.inc.c"
};

u64 HAKAdan_room_3Tex_002578[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_3Tex_002578.i4.inc.c"
};

u64 HAKAdan_room_3Tex_002778[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_3Tex_002778.i4.inc.c"
};

