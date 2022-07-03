#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "men_room_9.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "men_scene.h"
#include "men_room_0.h"
#include "men_room_1.h"
#include "men_room_2.h"
#include "men_room_3.h"
#include "men_room_4.h"
#include "men_room_5.h"
#include "men_room_6.h"
#include "men_room_7.h"
#include "men_room_8.h"
#include "men_room_10.h"

SceneCmd men_room_9Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&men_room_9PolygonType2_000160),
    SCENE_CMD_OBJECT_LIST(12, men_room_9ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(16, men_room_9ActorList_000058),
    SCENE_CMD_END(),
};

s16 men_room_9ObjectList_000040[] = {
    OBJECT_MENKURI_OBJECTS,
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
    OBJECT_SB,
    OBJECT_BL,
    OBJECT_MIZU_OBJECTS,
    OBJECT_STREAM,
    OBJECT_D_HSBLOCK,
    OBJECT_EI,
    OBJECT_YDAN_OBJECTS,
    OBJECT_VALI,
    OBJECT_WALLMASTER,
};

ActorEntry men_room_9ActorList_000058[] = {
    { ACTOR_EN_WEIYER,       {   2277,   -441,  -1412 }, {      0, 0X2CCD,      0 }, 0x0000 },
    { ACTOR_EN_WEIYER,       {   2330,   -344,  -1486 }, {      0, 0XEFA5,      0 }, 0x0000 },
    { ACTOR_BG_MIZU_UZU,     {   2305,   -555,  -1459 }, {      0,      0,      0 }, 0x00FF },
    { ACTOR_EN_VALI,         {   2304,    -39,  -1465 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_SB,           {   2256,   -960,  -1508 }, {      0, 0X20B6,      0 }, 0xFFFF },
    { ACTOR_OBJ_HSBLOCK,     {   2307,   -668,  -1702 }, {      0,      0,      0 }, 0xFFC2 },
    { ACTOR_OBJ_HSBLOCK,     {   2543,   -671,  -1466 }, {      0, 0XC000,      0 }, 0xFFC2 },
    { ACTOR_OBJ_HSBLOCK,     {   2065,   -671,  -1464 }, {      0, 0X4000,      0 }, 0xFFC2 },
    { ACTOR_OBJ_HSBLOCK,     {   2307,   -671,  -1224 }, {      0, 0X8000,      0 }, 0xFFC2 },
    { ACTOR_EN_BOX,          {   2183,   -108,  -1584 }, {      0, 0XC000,   0X1B }, 0x884D },
    { ACTOR_EN_WONDER_TALK2, {   2196,   -179,  -1466 }, {      0,      0,   0X45 }, 0x4CDB },
    { ACTOR_EN_G_SWITCH,     {   2109,   -154,  -1560 }, {      0,      0,      0 }, 0x00DB },
    { ACTOR_EN_G_SWITCH,     {   2453,   -890,  -1612 }, {      0,      0,      0 }, 0x1FDB },
    { ACTOR_EN_G_SWITCH,     {   2302,   -797,  -1464 }, {      0,      0,      0 }, 0x1FDB },
    { ACTOR_EN_G_SWITCH,     {   2160,   -900,  -1315 }, {      0,      0,      0 }, 0x1FDB },
    { ACTOR_BG_YDAN_SP,      {   2300,   -245,  -1465 }, {      0,      0,      0 }, 0x0FF9 },
};

u8 men_room_9_possiblePadding_000158[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 men_room_9PolygonType2_000160 = { 
    2, 6,
    men_room_9PolygonDlist2_00016C,
    men_room_9PolygonDlist2_00016C + ARRAY_COUNTU(men_room_9PolygonDlist2_00016C)
};

PolygonDlist2 men_room_9PolygonDlist2_00016C[6] = {
    { {   2232,   -120,  -1464 },    410, men_room_9DL_000700, NULL },
    { {   2302,   -240,  -1464 },    339, men_room_9DL_000B30, NULL },
    { {   1942,   -160,  -1464 },    100, men_room_9DL_000D68, NULL },
    { {   2302,   -255,  -1464 },    113, NULL, men_room_9DL_002F80 },
    { {   2302,   -601,  -1464 },    494, men_room_9DL_0014E8, NULL },
    { {   2182,   -240,  -1584 },     35, men_room_9DL_0019C0, NULL },
};

s32 men_room_9_terminatorMaybe_0001CC = { 0x01000000 };

Vtx men_room_9Vtx_0001D0[] = {
#include "assets/scenes/dungeons/men/men_room_9Vtx_0001D0.vtx.inc"
};

Gfx men_room_9DL_000700[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_9Vtx_0001D0[75], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_9Vtx_0001D0, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 0, 5, 1, 0),
    gsSP2Triangles(5, 4, 1, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 23, 22, 24, 0),
    gsSP1Triangle(19, 25, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_0108C0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_9Vtx_0001D0[26], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 7, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_9Vtx_0001D0[34], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 3, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_9Tex_0022B0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_9Vtx_0001D0[54], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 1, 4, 0, 1, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_9Vtx_0001D0[60], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(4, 8, 5, 0, 8, 9, 5, 0),
    gsSP2Triangles(9, 7, 5, 0, 10, 11, 12, 0),
    gsSP2Triangles(11, 13, 12, 0, 10, 14, 11, 0),
    gsSP1Triangle(14, 13, 11, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_9Vtx_0009C0[] = {
#include "assets/scenes/dungeons/men/men_room_9Vtx_0009C0.vtx.inc"
};

Gfx men_room_9DL_000B30[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_9Vtx_0009C0[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_9Tex_0022B0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_9Vtx_0009C0, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 3, 0, 0),
    gsSP2Triangles(4, 6, 5, 0, 4, 7, 6, 0),
    gsSP2Triangles(8, 7, 4, 0, 9, 10, 8, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 9, 12, 0),
    gsSP2Triangles(11, 10, 9, 0, 2, 13, 14, 0),
    gsSP2Triangles(9, 8, 4, 0, 2, 14, 0, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_9Vtx_000C48[] = {
#include "assets/scenes/dungeons/men/men_room_9Vtx_000C48.vtx.inc"
};

Gfx men_room_9DL_000D68[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_9Vtx_000C48[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_9Vtx_000C48, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 3, 5, 4, 0),
    gsSP2Triangles(1, 6, 2, 0, 1, 7, 6, 0),
    gsSP2Triangles(4, 8, 9, 0, 4, 5, 8, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_9Vtx_000E68[] = {
#include "assets/scenes/dungeons/men/men_room_9Vtx_000E68.vtx.inc"
};

Gfx men_room_9DL_0014E8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_9Vtx_000E68[96], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_9Vtx_000E68, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 0, 7, 1, 0),
    gsSP2Triangles(8, 9, 4, 0, 9, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_0108C0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_9Vtx_000E68[10], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 1, 0, 0, 6, 0, 7, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_9Vtx_000E68[18], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 6, 5, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 0, 2, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 10, 12, 17, 0),
    gsSP2Triangles(12, 18, 17, 0, 15, 16, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_0108C0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_9Vtx_000E68[38], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_9Vtx_000E68[42], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 0, 2, 7, 0),
    gsSP2Triangles(2, 8, 7, 0, 5, 6, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_0108C0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_9Vtx_000E68[52], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_9Vtx_000E68[56], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_9Tex_0026B0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_9Vtx_000E68[72], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 0, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(6, 10, 7, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(17, 20, 19, 0, 21, 9, 7, 0),
    gsSP2Triangles(22, 11, 13, 0, 13, 14, 23, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_9Vtx_0018B0[] = {
#include "assets/scenes/dungeons/men/men_room_9Vtx_0018B0.vtx.inc"
};

Gfx men_room_9DL_0019C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_9Vtx_0018B0[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_9Tex_001AB0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_DECAL2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_9Vtx_0018B0, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 1, 0, 7, 8, 1, 0),
    gsSPEndDisplayList(),
};

u8 men_room_9_unaccounted_001A80[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x07, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0x30, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0x68, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0xE8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x19, 0xC0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 men_room_9Tex_001AB0[] = {
#include "assets/scenes/dungeons/men/men_room_9Tex_001AB0.rgba16.inc.c"
};

u64 men_room_9Tex_0022B0[] = {
#include "assets/scenes/dungeons/men/men_room_9Tex_0022B0.ci8.inc.c"
};

u64 men_room_9Tex_0026B0[] = {
#include "assets/scenes/dungeons/men/men_room_9Tex_0026B0.ci8.inc.c"
};

Vtx men_room_9Vtx_002EB0[] = {
#include "assets/scenes/dungeons/men/men_room_9Vtx_002EB0.vtx.inc"
};

Gfx men_room_9DL_002F80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_9Vtx_002EB0[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_9Tex_003070, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 153),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(men_room_9Vtx_002EB0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSPEndDisplayList(),
};

u8 men_room_9_unaccounted_003060[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2F, 0x80, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 men_room_9Tex_003070[] = {
#include "assets/scenes/dungeons/men/men_room_9Tex_003070.rgba16.inc.c"
};

