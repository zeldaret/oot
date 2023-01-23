#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ydan_room_9.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ydan_scene.h"
#include "ydan_room_0.h"
#include "ydan_room_1.h"
#include "ydan_room_2.h"
#include "ydan_room_3.h"
#include "ydan_room_4.h"
#include "ydan_room_5.h"
#include "ydan_room_6.h"
#include "ydan_room_7.h"
#include "ydan_room_8.h"
#include "ydan_room_10.h"
#include "ydan_room_11.h"

SceneCmd ydan_room_9Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ydan_room_9PolygonType2_0000F0),
    SCENE_CMD_OBJECT_LIST(14, ydan_room_9ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(10, ydan_room_9ActorList_00005C),
    SCENE_CMD_END(),
};

s16 ydan_room_9ObjectList_000040[] = {
    OBJECT_YDAN_OBJECTS,
    OBJECT_GOL,
    OBJECT_ST,
    OBJECT_DEKUBABA,
    OBJECT_HINTNUTS,
    OBJECT_BOX,
    OBJECT_KUSA,
    OBJECT_GI_HEART,
    OBJECT_GI_SUTARU,
    OBJECT_KANBAN,
    OBJECT_SHOPNUTS,
    OBJECT_SYOKUDAI,
    OBJECT_KIBAKO2,
    OBJECT_FIREFLY,
};

ActorEntry ydan_room_9ActorList_00005C[] = {
    { ACTOR_EN_KUSA,     {   -268,  -1880,   -645 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_KUSA,     {   -272,  -1880,   -579 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_KUSA,     {   -272,  -1880,   -517 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_HINTNUTS, {   -369,  -1880,   -904 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_HINTNUTS, {   -947,  -1880,   -757 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_EN_HINTNUTS, {   -660,  -1880,   -951 }, {      0,      0,      0 }, 0x9C03 },
    { ACTOR_EN_ITEM00,   {   -885,  -1950,   -185 }, {      0,      0,      0 }, 0x2E03 },
    { ACTOR_EN_ITEM00,   {   -820,  -1960,    -76 }, {      0,      0,      0 }, 0x3003 },
    { ACTOR_EN_ITEM00,   {   -354,  -1943,   -206 }, {      0,      0,      0 }, 0x3103 },
    { ACTOR_EN_KANBAN,   {   -954,  -1880,   -840 }, {      0,  0xFA5,      0 }, 0x034A },
};

u8 ydan_room_9_possiblePadding_0000EC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 ydan_room_9PolygonType2_0000F0 = { 
    2, 5,
    ydan_room_9PolygonDlist2_0000FC,
    ydan_room_9PolygonDlist2_0000FC + ARRAY_COUNTU(ydan_room_9PolygonDlist2_0000FC)
};

PolygonDlist2 ydan_room_9PolygonDlist2_0000FC[5] = {
    { {   -621,   -574,     48 },    411, ydan_room_9DL_002290, NULL },
    { {   -621,   -573,    120 },    282, NULL, ydan_room_9DL_007368 },
    { {   -656,  -1390,   -480 },    824, NULL, ydan_room_9DL_006EA0 },
    { {   -635,  -1390,   -478 },    836, ydan_room_9DL_0013E0, NULL },
    { {   -635,  -1890,   -115 },    488, NULL, ydan_room_9DL_0070E0 },
};

s32 ydan_room_9_terminatorMaybe_00014C = { 0x01000000 };

Vtx ydan_room_9Vtx_000150[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Vtx_000150.vtx.inc"
};

Gfx ydan_room_9DL_0013E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ydan_room_9Vtx_000150[289], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ydan_room_9Tex_002480, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ydan_sceneTLUT_00B810),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ydan_room_9Vtx_000150, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_004C80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[6], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_002480, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[10], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_003C80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[14], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(3, 2, 14, 0, 3, 14, 15, 0),
    gsSP2Triangles(16, 5, 4, 0, 16, 4, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_003480, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(24, 26, 19, 0, 24, 19, 18, 0),
    gsSP2Triangles(27, 20, 15, 0, 27, 15, 14, 0),
    gsSP2Triangles(28, 4, 29, 0, 28, 5, 4, 0),
    gsSP1Triangle(28, 30, 5, 0),
    gsSPVertex(&ydan_room_9Vtx_000150[63], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(0, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_005C80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[68], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 2, 0),
    gsSP2Triangles(7, 8, 3, 0, 7, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_003C80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[77], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_005C80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[80], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 7, 1, 0, 7, 2, 1, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 11, 13, 0, 12, 13, 14, 0),
    gsSP2Triangles(13, 11, 15, 0, 10, 15, 11, 0),
    gsSP1Triangle(1, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_003C80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[96], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_003480, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[102], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsSP2Triangles(14, 12, 8, 0, 14, 8, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 12, 0),
    gsSP2Triangles(18, 15, 12, 0, 18, 12, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_003C80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[121], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_006480, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 119, 119, 119, 255),
    gsSPVertex(&ydan_room_9Vtx_000150[124], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&ydan_room_9Vtx_000150[136], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ydan_room_9Tex_006480, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ydan_sceneTLUT_00B810),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ydan_room_9Vtx_000150[140], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 6, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_005480, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&ydan_room_9Vtx_000150[158], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 1, 0, 7, 1, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 9, 0, 14, 9, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_003C80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[174], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_003480, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[186], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(7, 8, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 18, 19, 0, 16, 19, 17, 0),
    gsSP2Triangles(18, 20, 19, 0, 13, 21, 15, 0),
    gsSP2Triangles(13, 15, 14, 0, 20, 22, 9, 0),
    gsSP1Triangle(20, 9, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_003C80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[209], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_003480, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[217], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_005480, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 170, 170, 170, 255),
    gsSPVertex(&ydan_room_9Vtx_000150[225], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_002480, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&ydan_room_9Vtx_000150[241], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 5, 4, 0),
    gsSP2Triangles(2, 6, 3, 0, 6, 7, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_003C80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[249], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_003480, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[257], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 4, 5, 3, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 3, 0),
    gsSP2Triangles(6, 8, 7, 0, 6, 9, 8, 0),
    gsSP2Triangles(4, 10, 11, 0, 4, 11, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_004480, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_000150[269], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 10, 0),
    gsSP2Triangles(13, 15, 16, 0, 13, 16, 14, 0),
    gsSP2Triangles(15, 17, 18, 0, 15, 18, 16, 0),
    gsSP2Triangles(17, 19, 3, 0, 17, 3, 18, 0),
    gsSPEndDisplayList(),
};

Vtx ydan_room_9Vtx_001EC0[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Vtx_001EC0.vtx.inc"
};

Gfx ydan_room_9DL_002290[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ydan_room_9Vtx_001EC0[53], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ydan_room_9Tex_002C80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ydan_sceneTLUT_00B810),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ydan_room_9Vtx_001EC0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 2, 5, 0, 0),
    gsSP2Triangles(6, 1, 4, 0, 7, 6, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(8, 12, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 13, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(21, 22, 20, 0, 22, 23, 20, 0),
    gsSP2Triangles(15, 24, 13, 0, 24, 25, 13, 0),
    gsSP2Triangles(10, 26, 8, 0, 10, 25, 26, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&ydan_room_9Vtx_001EC0[30], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 0, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_003480, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_9Vtx_001EC0[36], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 4, 15, 8, 0),
    gsSP2Triangles(4, 8, 7, 0, 11, 1, 0, 0),
    gsSP2Triangles(12, 11, 0, 0, 4, 7, 10, 0),
    gsSP2Triangles(4, 10, 5, 0, 14, 16, 1, 0),
    gsSP1Triangle(11, 14, 1, 0),
    gsSPEndDisplayList(),
};

u8 ydan_room_9_unaccounted_002468[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x22, 0x90, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ydan_room_9Tex_002480[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Tex_002480.ci8.inc.c"
};

u64 ydan_room_9Tex_002C80[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Tex_002C80.ci8.inc.c"
};

u64 ydan_room_9Tex_003480[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Tex_003480.ci8.inc.c"
};

u64 ydan_room_9Tex_003C80[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Tex_003C80.ci8.inc.c"
};

u64 ydan_room_9Tex_004480[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Tex_004480.ci8.inc.c"
};

u64 ydan_room_9Tex_004C80[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Tex_004C80.ci8.inc.c"
};

u64 ydan_room_9Tex_005480[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Tex_005480.ci8.inc.c"
};

u64 ydan_room_9Tex_005C80[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Tex_005C80.ci8.inc.c"
};

u64 ydan_room_9Tex_006480[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Tex_006480.ci8.inc.c"
};

Vtx ydan_room_9Vtx_006C80[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Vtx_006C80.vtx.inc"
};

Gfx ydan_room_9DL_006EA0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ydan_room_9Vtx_006C80[26], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ydan_room_9Tex_008898, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPVertex(ydan_room_9Vtx_006C80, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(7, 10, 9, 0, 11, 10, 7, 0),
    gsSP2Triangles(6, 11, 7, 0, 1, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_9Tex_007498, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(&ydan_room_9Vtx_006C80[12], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 0, 5, 0, 0, 2, 5, 0),
    gsSP2Triangles(6, 0, 7, 0, 6, 3, 0, 0),
    gsSP2Triangles(4, 8, 0, 0, 8, 7, 0, 0),
    gsSP2Triangles(9, 10, 11, 0, 10, 12, 13, 0),
    gsSP2Triangles(9, 11, 8, 0, 11, 7, 8, 0),
    gsSP2Triangles(13, 6, 7, 0, 13, 12, 6, 0),
    gsSPEndDisplayList(),
};

Vtx ydan_room_9Vtx_007000[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Vtx_007000.vtx.inc"
};

Gfx ydan_room_9DL_0070E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ydan_room_9Vtx_007000[6], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ydan_room_9Tex_008498, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR | G_TX_WRAP,
                5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPLoadTLUT_pal256(ydan_sceneTLUT_00B810),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x09000000),
    gsSPVertex(ydan_room_9Vtx_007000, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 2, 1, 0),
    gsSP1Triangle(4, 5, 1, 0),
    gsSPEndDisplayList(),
};

Vtx ydan_room_9Vtx_0071F8[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Vtx_0071F8.vtx.inc"
};

Gfx ydan_room_9DL_007368[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ydan_room_9Vtx_0071F8[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ydan_room_9Tex_008898, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPVertex(ydan_room_9Vtx_0071F8, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 242),
    gsSPVertex(&ydan_room_9Vtx_0071F8[5], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 229),
    gsSPVertex(&ydan_room_9Vtx_0071F8[8], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 1, 3, 0, 5, 4, 3, 0),
    gsSP1Triangle(1, 6, 2, 0),
    gsSPEndDisplayList(),
};

u8 ydan_room_9_unaccounted_007478[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x6E, 0xA0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x70, 0xE0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x73, 0x68, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ydan_room_9Tex_007498[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Tex_007498.rgba16.inc.c"
};

u64 ydan_room_9Tex_008498[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Tex_008498.ci8.inc.c"
};

u64 ydan_room_9Tex_008898[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_9Tex_008898.ia16.inc.c"
};

