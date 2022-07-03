#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdanCH_room_5.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HAKAdanCH_scene.h"
#include "HAKAdanCH_room_0.h"
#include "HAKAdanCH_room_1.h"
#include "HAKAdanCH_room_2.h"
#include "HAKAdanCH_room_3.h"
#include "HAKAdanCH_room_4.h"
#include "HAKAdanCH_room_6.h"

SceneCmd HAKAdanCH_room_5Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdanCH_room_5PolygonType2_0000F0),
    SCENE_CMD_OBJECT_LIST(14, HAKAdanCH_room_5ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(9, HAKAdanCH_room_5ActorList_00005C),
    SCENE_CMD_END(),
};

s16 HAKAdanCH_room_5ObjectList_000040[] = {
    OBJECT_HAKACH_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_RD,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
    OBJECT_MIZU_OBJECTS,
    OBJECT_BOMBIWA,
    OBJECT_WALLMASTER,
    OBJECT_GI_KEY,
    OBJECT_GOROIWA,
    OBJECT_EFC_FLASH,
    OBJECT_GI_HEART,
};

ActorEntry HAKAdanCH_room_5ActorList_00005C[] = {
    { ACTOR_EN_WONDER_ITEM, {    160,     97,  -1275 }, {      0,      0,    0X4 }, 0x18BF },
    { ACTOR_EN_WONDER_ITEM, {    160,     97,  -1275 }, {      0,      0,    0X4 }, 0x18BF },
    { ACTOR_EN_WONDER_ITEM, {    160,     97,  -1275 }, {      0,      0,    0X4 }, 0x19FF },
    { ACTOR_EN_WONDER_ITEM, {    160,     97,  -1275 }, {      0,      0,    0X4 }, 0x1AFF },
    { ACTOR_BG_HAKA_MEGANE, {    380,      0,  -1230 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_EN_ITEM00,      {    140,      0,  -1218 }, {      0,      0,      0 }, 0x0111 },
    { ACTOR_OBJ_TSUBO,      {    288,      0,  -1240 }, {      0,      0,      0 }, 0x4803 },
    { ACTOR_OBJ_TSUBO,      {    438,      0,  -1234 }, {      0,      0,      0 }, 0x4A03 },
    { ACTOR_OBJ_TSUBO,      {    444,      0,  -1114 }, {      0,      0,      0 }, 0x4C03 },
};

u8 HAKAdanCH_room_5_possiblePadding_0000EC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 HAKAdanCH_room_5PolygonType2_0000F0 = { 
    2, 5,
    HAKAdanCH_room_5PolygonDlist2_0000FC,
    HAKAdanCH_room_5PolygonDlist2_0000FC + ARRAY_COUNTU(HAKAdanCH_room_5PolygonDlist2_0000FC)
};

PolygonDlist2 HAKAdanCH_room_5PolygonDlist2_0000FC[5] = {
    { {    160,    100,  -1280 },     56, HAKAdanCH_room_5DL_0010A0, NULL },
    { {    310,      0,  -1100 },    276, HAKAdanCH_room_5DL_000F10, NULL },
    { {    310,   -150,  -1090 },    434, HAKAdanCH_room_5DL_000C18, NULL },
    { {    372,   -720,  -1160 },    357, HAKAdanCH_room_5DL_000420, NULL },
    { {    372,   -600,  -1160 },    376, HAKAdanCH_room_5DL_000270, NULL },
};

s32 HAKAdanCH_room_5_terminatorMaybe_00014C = { 0x01000000 };

Vtx HAKAdanCH_room_5Vtx_000150[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_5Vtx_000150.vtx.inc"
};

Gfx HAKAdanCH_room_5DL_000270[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdanCH_room_5Vtx_000150[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdanCH_sceneTex_00A590, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdanCH_room_5Vtx_000150, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdanCH_room_5Vtx_000350[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_5Vtx_000350.vtx.inc"
};

Gfx HAKAdanCH_room_5DL_000420[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdanCH_room_5Vtx_000350[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdanCH_sceneTex_00A590, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdanCH_sceneTex_00AD90, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdanCH_room_5Vtx_000350, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(1, 4, 3, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdanCH_room_5Vtx_000518[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_5Vtx_000518.vtx.inc"
};

Gfx HAKAdanCH_room_5DL_000C18[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdanCH_room_5Vtx_000518[104], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdanCH_room_5Tex_002190, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdanCH_sceneTex_00BD90, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdanCH_room_5Vtx_000518, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&HAKAdanCH_room_5Vtx_000518[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 0, 5, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSPVertex(&HAKAdanCH_room_5Vtx_000518[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 8, 0, 12, 8, 11, 0),
    gsSP2Triangles(5, 14, 13, 0, 5, 13, 12, 0),
    gsSP2Triangles(9, 14, 5, 0, 9, 5, 10, 0),
    gsSP2Triangles(15, 0, 2, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 17, 20, 21, 0),
    gsSP2Triangles(17, 21, 18, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 23, 26, 27, 0),
    gsSP2Triangles(23, 27, 24, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&HAKAdanCH_room_5Vtx_000518[94], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdanCH_room_5Vtx_000E10[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_5Vtx_000E10.vtx.inc"
};

Gfx HAKAdanCH_room_5DL_000F10[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdanCH_room_5Vtx_000E10[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdanCH_sceneTex_00B590, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdanCH_room_5Vtx_000E10, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdanCH_room_5Vtx_000FD0[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_5Vtx_000FD0.vtx.inc"
};

Gfx HAKAdanCH_room_5DL_0010A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdanCH_room_5Vtx_000FD0[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdanCH_room_5Tex_001190, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdanCH_room_5Vtx_000FD0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 2, 4, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdanCH_room_5_unaccounted_001160[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x20, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0x18, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0F, 0x10, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0xA0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdanCH_room_5Tex_001190[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_5Tex_001190.rgba16.inc.c"
};

u64 HAKAdanCH_room_5Tex_002190[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_5Tex_002190.rgba16.inc.c"
};

