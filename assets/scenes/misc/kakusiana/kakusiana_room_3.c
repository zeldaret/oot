#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "kakusiana_room_3.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "kakusiana_scene.h"
#include "kakusiana_room_0.h"
#include "kakusiana_room_1.h"
#include "kakusiana_room_2.h"
#include "kakusiana_room_4.h"
#include "kakusiana_room_5.h"
#include "kakusiana_room_6.h"
#include "kakusiana_room_7.h"
#include "kakusiana_room_8.h"
#include "kakusiana_room_9.h"
#include "kakusiana_room_10.h"
#include "kakusiana_room_11.h"
#include "kakusiana_room_12.h"
#include "kakusiana_room_13.h"

SceneCmd kakusiana_room_3Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&kakusiana_room_3PolygonType2_0000F0),
    SCENE_CMD_OBJECT_LIST(3, kakusiana_room_3ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(10, kakusiana_room_3ActorList_000048),
    SCENE_CMD_END(),
};

s16 kakusiana_room_3ObjectList_000040[] = {
    OBJECT_COW,
    OBJECT_GI_HEART,
    OBJECT_GI_RUPY,
};

ActorEntry kakusiana_room_3ActorList_000048[] = {
    { ACTOR_EN_COW,    {   2444,      9,   -471 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_KUSA,   {   2443,     -1,   -396 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_EN_KUSA,   {   2494,      8,   -439 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_OBJ_COMB,  {   2617,    190,   -457 }, { 0X2000, 0X58E4,      0 }, 0xFF02 },
    { ACTOR_SHOT_SUN,  {   2498,    -11,   -311 }, {      0,      0,      0 }, 0xFF41 },
    { ACTOR_OBJ_MURE3, {   2425,    -20,   -120 }, {      0,      0,      0 }, 0x4005 },
    { ACTOR_EN_ITEM00, {   2287,     -8,   -412 }, {      0,      0,      0 }, 0x2803 },
    { ACTOR_EN_ITEM00, {   2371,     -1,   -532 }, {      0,      0,      0 }, 0x2903 },
    { ACTOR_EN_ITEM00, {   2449,     -5,   -534 }, {      0,      0,      0 }, 0x2A03 },
    { ACTOR_EN_ITEM00, {   2569,     -1,   -432 }, {      0,      0,      0 }, 0x2B03 },
};

u8 kakusiana_room_3_possiblePadding_0000E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 kakusiana_room_3PolygonType2_0000F0 = { 
    2, 7,
    kakusiana_room_3PolygonDlist2_0000FC,
    kakusiana_room_3PolygonDlist2_0000FC + ARRAY_COUNTU(kakusiana_room_3PolygonDlist2_0000FC)
};

PolygonDlist2 kakusiana_room_3PolygonDlist2_0000FC[7] = {
    { {   2423,    245,    149 },    238, NULL, kakusiana_room_3DL_003A20 },
    { {   2432,    -12,   -134 },    435, kakusiana_room_3DL_0012A0, NULL },
    { {   2442,    172,   -332 },    233, NULL, kakusiana_room_3DL_004008 },
    { {   2421,    -11,   -290 },    304, NULL, kakusiana_room_3DL_003BC8 },
    { {   2423,     10,    149 },     40, kakusiana_room_3DL_001580, NULL },
    { {   2423,    490,    149 },     41, kakusiana_room_3DL_001748, kakusiana_room_3DL_003D80 },
    { {   2420,    234,   -142 },    535, kakusiana_room_3DL_000AF0, NULL },
};

s32 kakusiana_room_3_terminatorMaybe_00016C = { 0x01000000 };

Vtx kakusiana_room_3Vtx_000170[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_3Vtx_000170.vtx.inc"
};

Gfx kakusiana_room_3DL_000AF0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_3Vtx_000170[144], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_3Tex_001818, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_3Vtx_000170, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 20, 0, 26, 21, 20, 0),
    gsSP2Triangles(26, 23, 21, 0, 26, 27, 23, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kakusiana_room_3Vtx_000170[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 1, 0, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 11, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 15, 14, 0, 17, 18, 10, 0),
    gsSP2Triangles(17, 10, 13, 0, 17, 19, 18, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(18, 21, 22, 0, 22, 21, 23, 0),
    gsSP2Triangles(22, 23, 24, 0, 14, 25, 16, 0),
    gsSP2Triangles(24, 23, 26, 0, 24, 26, 14, 0),
    gsSP2Triangles(26, 25, 14, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&kakusiana_room_3Vtx_000170[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(21, 15, 20, 0, 15, 14, 20, 0),
    gsSP2Triangles(22, 19, 18, 0, 22, 23, 19, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(25, 22, 26, 0, 25, 23, 22, 0),
    gsSP2Triangles(28, 29, 24, 0, 29, 27, 24, 0),
    gsSPVertex(&kakusiana_room_3Vtx_000170[93], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 9, 7, 0, 9, 10, 7, 0),
    gsSP2Triangles(11, 0, 12, 0, 11, 3, 0, 0),
    gsSP2Triangles(13, 14, 15, 0, 14, 16, 15, 0),
    gsSP2Triangles(17, 18, 19, 0, 18, 5, 19, 0),
    gsSP2Triangles(5, 4, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 24, 23, 0, 22, 25, 24, 0),
    gsSP2Triangles(25, 26, 24, 0, 26, 27, 28, 0),
    gsSP2Triangles(27, 29, 24, 0, 27, 30, 29, 0),
    gsSP1Triangle(31, 22, 21, 0),
    gsSPVertex(&kakusiana_room_3Vtx_000170[125], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 9, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_3Vtx_000D50[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_3Vtx_000D50.vtx.inc"
};

Gfx kakusiana_room_3DL_0012A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_3Vtx_000D50[77], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_3Tex_002818, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_3Vtx_000D50, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 6, 5, 1, 0),
    gsSP2Triangles(1, 0, 6, 0, 7, 6, 0, 0),
    gsSP2Triangles(8, 3, 9, 0, 8, 7, 0, 0),
    gsSP2Triangles(8, 0, 3, 0, 9, 3, 10, 0),
    gsSP2Triangles(3, 2, 10, 0, 2, 11, 10, 0),
    gsSP2Triangles(4, 11, 2, 0, 2, 1, 4, 0),
    gsSP2Triangles(11, 4, 12, 0, 13, 10, 11, 0),
    gsSP2Triangles(13, 11, 12, 0, 14, 10, 13, 0),
    gsSP2Triangles(15, 9, 10, 0, 16, 6, 17, 0),
    gsSP2Triangles(6, 7, 17, 0, 18, 15, 19, 0),
    gsSP2Triangles(15, 20, 19, 0, 18, 21, 15, 0),
    gsSP2Triangles(21, 9, 15, 0, 8, 18, 22, 0),
    gsSP2Triangles(8, 21, 18, 0, 8, 9, 21, 0),
    gsSP2Triangles(23, 16, 24, 0, 16, 17, 24, 0),
    gsSP2Triangles(17, 7, 24, 0, 25, 26, 22, 0),
    gsSP2Triangles(25, 27, 26, 0, 27, 28, 26, 0),
    gsSP2Triangles(28, 22, 26, 0, 27, 29, 28, 0),
    gsSP2Triangles(29, 30, 28, 0, 30, 24, 28, 0),
    gsSP2Triangles(27, 31, 29, 0, 31, 30, 29, 0),
    gsSPVertex(&kakusiana_room_3Vtx_000D50[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 11, 9, 0, 12, 8, 10, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 10, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 18, 21, 0),
    gsSP2Triangles(20, 22, 18, 0, 20, 23, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 24, 18, 25, 0),
    gsSP2Triangles(19, 26, 20, 0, 26, 27, 20, 0),
    gsSP2Triangles(27, 23, 20, 0, 19, 0, 26, 0),
    gsSP2Triangles(19, 3, 0, 0, 26, 12, 28, 0),
    gsSP2Triangles(12, 23, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&kakusiana_room_3Vtx_000D50[64], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 6, 0, 0),
    gsSP2Triangles(6, 7, 0, 0, 7, 8, 0, 0),
    gsSP2Triangles(8, 9, 0, 0, 9, 10, 0, 0),
    gsSP2Triangles(10, 11, 0, 0, 11, 12, 0, 0),
    gsSP1Triangle(12, 3, 0, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_3Vtx_0014A0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_3Vtx_0014A0.vtx.inc"
};

Gfx kakusiana_room_3DL_001580[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_3Vtx_0014A0[6], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_3Vtx_0014A0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_3Vtx_001608[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_3Vtx_001608.vtx.inc"
};

Gfx kakusiana_room_3DL_001748[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_3Vtx_001608[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_3Vtx_001608, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(3, 2, 11, 0, 3, 11, 10, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_3_unaccounted_0017F0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0xA0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x15, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x48, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_3Tex_001818[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_3Tex_001818.i8.inc.c"
};

u64 kakusiana_room_3Tex_002818[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_3Tex_002818.i8.inc.c"
};

u8 kakusiana_room_3_possiblePadding_003818[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx kakusiana_room_3Vtx_003820[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_3Vtx_003820.vtx.inc"
};

Gfx kakusiana_room_3DL_003A20[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_3Vtx_003820[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_sceneTex_00C020, G_IM_FMT_IA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPDisplayList(0x08000000),
    gsSPVertex(kakusiana_room_3Vtx_003820, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_3Vtx_003B08[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_3Vtx_003B08.vtx.inc"
};

Gfx kakusiana_room_3DL_003BC8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_3Vtx_003B08[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_3Tex_004930, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 76),
    gsSPDisplayList(0x09000000),
    gsSPVertex(kakusiana_room_3Vtx_003B08, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_3Vtx_003CA0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_3Vtx_003CA0.vtx.inc"
};

Gfx kakusiana_room_3DL_003D80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_3Vtx_003CA0[6], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPVertex(kakusiana_room_3Vtx_003CA0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_3Vtx_003E08[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_3Vtx_003E08.vtx.inc"
};

Gfx kakusiana_room_3DL_004008[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_3Vtx_003E08[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_3Tex_004130, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 256, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 8, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 1, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 8, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_CLAMP, 3, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x001C, 0x03FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       TEXEL1, 0, PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(kakusiana_room_3Vtx_003E08, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_3_unaccounted_004108[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3A, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3B, 0xC8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3D, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x40, 0x08, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_3Tex_004130[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_3Tex_004130.ia8.inc.c"
};

u64 kakusiana_room_3Tex_004930[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_3Tex_004930.rgba16.inc.c"
};

