#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "men_room_5.h"
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
#include "men_room_6.h"
#include "men_room_7.h"
#include "men_room_8.h"
#include "men_room_9.h"
#include "men_room_10.h"

SceneCmd men_room_5Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&men_room_5PolygonType2_0000F0),
    SCENE_CMD_OBJECT_LIST(6, men_room_5ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(10, men_room_5ActorList_00004C),
    SCENE_CMD_END(),
};

s16 men_room_5ObjectList_000040[] = {
    OBJECT_MENKURI_OBJECTS,
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
    OBJECT_GI_HEART,
    OBJECT_IK,
    OBJECT_BW,
};

ActorEntry men_room_5ActorList_00004C[] = {
    { ACTOR_EN_IK,            {   1378,    -65,  -2758 }, {      0, 0XC000,      0 }, 0xFF02 },
    { ACTOR_EN_BW,            {   1510,    -81,  -2937 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_BW,            {   1330,    -81,  -2574 }, {      0, 0X705B,      0 }, 0xFFFF },
    { ACTOR_EN_BOX,           {   1446,    100,  -2748 }, {      0, 0XC000,   0X38 }, 0x884E },
    { ACTOR_OBJ_SWITCH,       {   1737,   -100,  -2867 }, {      0,      0,      0 }, 0x1000 },
    { ACTOR_BG_HIDAN_CURTAIN, {   1446,    -65,  -2746 }, {      0,      0,      0 }, 0x2FD0 },
    { ACTOR_EN_BOX,           {   1441,    -81,  -3033 }, {      0, 0X8000,      0 }, 0x7952 },
    { ACTOR_OBJ_ROOMTIMER,    {   1448,    -65,  -2750 }, {      0,      0,      0 }, 0x643C },
    { ACTOR_EN_WONDER_TALK2,  {   1447,    -65,  -2744 }, {      0,      0,   0X45 }, 0x4C99 },
    { ACTOR_OBJ_SWITCH,       {   1443,    110,  -2380 }, { 0XC000,      0,      0 }, 0x3803 },
};

u8 men_room_5_possiblePadding_0000EC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 men_room_5PolygonType2_0000F0 = { 
    2, 2,
    men_room_5PolygonDlist2_0000FC,
    men_room_5PolygonDlist2_0000FC + ARRAY_COUNTU(men_room_5PolygonDlist2_0000FC)
};

PolygonDlist2 men_room_5PolygonDlist2_0000FC[2] = {
    { {   1293,    179,  -2738 },    630, men_room_5DL_001230, NULL },
    { {   1293,    -83,  -2738 },    574, men_room_5DL_002128, NULL },
};

s32 men_room_5_terminatorMaybe_00011C = { 0x01000000 };

Vtx men_room_5Vtx_000120[] = {
#include "assets/scenes/dungeons/men/men_room_5Vtx_000120.vtx.inc"
};

Gfx men_room_5DL_001230[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_5Vtx_000120[265], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_5Tex_003818, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_5Vtx_000120, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 7, 0),
    gsSP2Triangles(6, 9, 7, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 13, 0, 12, 14, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 18, 0, 17, 20, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 22, 24, 0),
    gsSP2Triangles(23, 26, 24, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&men_room_5Vtx_000120[31], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 6, 0),
    gsSP2Triangles(5, 7, 6, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 10, 13, 14, 0),
    gsSP2Triangles(10, 14, 11, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 16, 0, 20, 21, 16, 0),
    gsSP1Triangle(1, 22, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[54], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 20, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 24, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 28, 30, 0),
    gsSPVertex(&men_room_5Vtx_000120[86], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 7, 6, 0, 8, 6, 9, 0),
    gsSP2Triangles(10, 8, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 15, 14, 0, 16, 14, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_003018, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[103], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[115], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 3, 0, 0),
    gsSP2Triangles(5, 0, 2, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 6, 8, 12, 0),
    gsSP2Triangles(9, 13, 10, 0, 13, 14, 10, 0),
    gsSP2Triangles(15, 7, 6, 0, 16, 17, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 20, 21, 18, 0),
    gsSP2Triangles(22, 20, 18, 0, 23, 18, 21, 0),
    gsSP2Triangles(23, 16, 18, 0, 22, 24, 20, 0),
    gsSP2Triangles(22, 25, 24, 0, 25, 16, 23, 0),
    gsSP2Triangles(25, 23, 24, 0, 22, 26, 25, 0),
    gsSP2Triangles(22, 27, 26, 0, 28, 29, 30, 0),
    gsSP1Triangle(31, 28, 30, 0),
    gsSPVertex(&men_room_5Vtx_000120[147], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 5, 8, 0),
    gsSP2Triangles(5, 6, 8, 0, 7, 3, 5, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 10, 0),
    gsSP2Triangles(9, 13, 12, 0, 9, 14, 13, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 16, 15, 0),
    gsSP2Triangles(14, 17, 16, 0, 14, 18, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP1Triangle(20, 23, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004018, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[171], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004818, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[175], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004018, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[179], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004818, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[183], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004018, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[187], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004818, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[191], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(3, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004018, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[196], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004818, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[200], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004018, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[204], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004818, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[208], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(3, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004018, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[213], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004818, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[221], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004018, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[225], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004818, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[229], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_002C18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[233], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[237], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_003018, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[245], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_004818, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_000120[261], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_5Vtx_001B98[] = {
#include "assets/scenes/dungeons/men/men_room_5Vtx_001B98.vtx.inc"
};

Gfx men_room_5DL_002128[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_5Vtx_001B98[81], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_5Tex_002418, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_5Vtx_001B98, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 2, 4, 0),
    gsSP2Triangles(5, 7, 2, 0, 5, 8, 7, 0),
    gsSP2Triangles(5, 9, 8, 0, 10, 11, 12, 0),
    gsSP2Triangles(11, 13, 12, 0, 13, 14, 12, 0),
    gsSP2Triangles(14, 15, 12, 0, 16, 17, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_0108C0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_001B98[18], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 0, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 7, 0, 0),
    gsSP2Triangles(7, 8, 0, 0, 8, 9, 0, 0),
    gsSP2Triangles(9, 1, 0, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 13, 0),
    gsSP2Triangles(14, 13, 12, 0, 16, 17, 15, 0),
    gsSP2Triangles(16, 15, 14, 0, 11, 10, 17, 0),
    gsSP1Triangle(11, 17, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_002418, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_001B98[36], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 7, 0, 6, 12, 11, 0),
    gsSP1Triangle(13, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_0108C0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_001B98[52], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(3, 0, 4, 0, 4, 0, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_5Tex_002418, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_5Vtx_001B98[77], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

u8 men_room_5_unaccounted_002400[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0x30, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x21, 0x28, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 men_room_5Tex_002418[] = {
#include "assets/scenes/dungeons/men/men_room_5Tex_002418.ci8.inc.c"
};

u64 men_room_5Tex_002C18[] = {
#include "assets/scenes/dungeons/men/men_room_5Tex_002C18.ci8.inc.c"
};

u64 men_room_5Tex_003018[] = {
#include "assets/scenes/dungeons/men/men_room_5Tex_003018.ci8.inc.c"
};

u64 men_room_5Tex_003818[] = {
#include "assets/scenes/dungeons/men/men_room_5Tex_003818.ci8.inc.c"
};

u64 men_room_5Tex_004018[] = {
#include "assets/scenes/dungeons/men/men_room_5Tex_004018.ci8.inc.c"
};

u64 men_room_5Tex_004818[] = {
#include "assets/scenes/dungeons/men/men_room_5Tex_004818.ci8.inc.c"
};

