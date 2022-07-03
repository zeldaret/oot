#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "Bmori1_room_15.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "Bmori1_scene.h"
#include "Bmori1_room_0.h"
#include "Bmori1_room_1.h"
#include "Bmori1_room_2.h"
#include "Bmori1_room_3.h"
#include "Bmori1_room_4.h"
#include "Bmori1_room_5.h"
#include "Bmori1_room_6.h"
#include "Bmori1_room_7.h"
#include "Bmori1_room_8.h"
#include "Bmori1_room_9.h"
#include "Bmori1_room_10.h"
#include "Bmori1_room_11.h"
#include "Bmori1_room_12.h"
#include "Bmori1_room_13.h"
#include "Bmori1_room_14.h"
#include "Bmori1_room_16.h"
#include "Bmori1_room_17.h"
#include "Bmori1_room_18.h"
#include "Bmori1_room_19.h"
#include "Bmori1_room_20.h"
#include "Bmori1_room_21.h"
#include "Bmori1_room_22.h"

SceneCmd Bmori1_room_15Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&Bmori1_room_15PolygonType0_000110),
    SCENE_CMD_OBJECT_LIST(6, Bmori1_room_15ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(12, Bmori1_room_15ActorList_00004C),
    SCENE_CMD_END(),
};

s16 Bmori1_room_15ObjectList_000040[] = {
    OBJECT_MORI_TEX,
    OBJECT_MORI_OBJECTS,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_BB,
    OBJECT_ST,
};

ActorEntry Bmori1_room_15ActorList_00004C[] = {
    { ACTOR_EN_ST,              {   1832,    710,  -3002 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_EN_ST,              {   2070,    707,  -2998 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_EN_ST,              {   2069,    710,  -2761 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_EN_ST,              {   1829,    710,  -2677 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_EN_ST,              {   2150,    707,  -2595 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_EN_ST,              {   1914,    710,  -2365 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_EN_ST,              {   1994,    712,  -2200 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_BG_MORI_RAKKATENJO, {   1991,    683,  -2520 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_EN_BOX,             {   2151,    754,  -2520 }, {      0,      0,    0XE }, 0x8926 },
    { ACTOR_ELF_MSG,            {   1984,    403,  -3067 }, {   0X32,   0X2C,   0X14 }, 0x4998 },
    { ACTOR_OBJ_SWITCH,         {   1832,    403,  -2120 }, {      0,      0,      0 }, 0x0E00 },
    { ACTOR_OBJ_SWITCH,         {   2071,    403,  -2199 }, {      0,      0,      0 }, 0x1900 },
};

u8 Bmori1_room_15_possiblePadding_00010C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 Bmori1_room_15PolygonType0_000110 = { 
    0, 1,
    Bmori1_room_15PolygonDlist_00011C,
    Bmori1_room_15PolygonDlist_00011C + ARRAY_COUNTU(Bmori1_room_15PolygonDlist_00011C)
};

PolygonDlist Bmori1_room_15PolygonDlist_00011C[1] = {
    { Bmori1_room_15DL_0012D0, NULL },
};

s32 Bmori1_room_15_terminatorMaybe_000124 = { 0x01000000 };

u8 Bmori1_room_15_possiblePadding_000128[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx Bmori1_room_15Vtx_000130[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_15Vtx_000130.vtx.inc"
};

Gfx Bmori1_room_15DL_000C90[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&Bmori1_room_15Vtx_000130[174], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(Bmori1_room_15Tex_0012E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014288),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(Bmori1_room_15Vtx_000130, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(1, 0, 4, 0, 5, 2, 1, 0),
    gsSP2Triangles(5, 1, 6, 0, 6, 1, 7, 0),
    gsSP2Triangles(8, 6, 7, 0, 1, 4, 9, 0),
    gsSP2Triangles(9, 10, 7, 0, 1, 9, 7, 0),
    gsSP2Triangles(11, 12, 9, 0, 11, 9, 13, 0),
    gsSP2Triangles(14, 15, 11, 0, 14, 11, 13, 0),
    gsSP2Triangles(16, 12, 11, 0, 17, 16, 11, 0),
    gsSP2Triangles(15, 17, 11, 0, 10, 18, 19, 0),
    gsSP2Triangles(10, 19, 7, 0, 8, 7, 19, 0),
    gsSP2Triangles(20, 8, 19, 0, 21, 20, 19, 0),
    gsSP2Triangles(22, 19, 18, 0, 22, 23, 19, 0),
    gsSP1Triangle(23, 21, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_15Tex_001AE0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014080),
    gsSPVertex(&Bmori1_room_15Vtx_000130[24], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 1, 5, 0, 4, 5, 6, 0),
    gsSP1Triangle(3, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014288),
    gsSPVertex(&Bmori1_room_15Vtx_000130[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 16, 19, 0, 20, 19, 21, 0),
    gsSP2Triangles(22, 20, 21, 0, 22, 21, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&Bmori1_room_15Vtx_000130[63], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 8, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_15Tex_001EE0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_15Vtx_000130[79], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_15Vtx_000130[83], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(6, 5, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_15Tex_001AE0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014080),
    gsSPVertex(&Bmori1_room_15Vtx_000130[103], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 7, 6, 9, 0),
    gsSP2Triangles(8, 7, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 14, 0),
    gsSP2Triangles(15, 10, 14, 0, 15, 14, 16, 0),
    gsSP1Triangle(15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014288),
    gsSPVertex(&Bmori1_room_15Vtx_000130[121], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(6, 5, 2, 0, 7, 6, 2, 0),
    gsSP2Triangles(8, 7, 2, 0, 8, 2, 1, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 9, 12, 0, 13, 12, 14, 0),
    gsSP2Triangles(15, 13, 14, 0, 15, 14, 16, 0),
    gsSP2Triangles(16, 11, 10, 0, 15, 16, 10, 0),
    gsSP2Triangles(17, 15, 10, 0, 17, 10, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_15Tex_001AE0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014080),
    gsSPVertex(&Bmori1_room_15Vtx_000130[140], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsSP1Triangle(3, 2, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014288),
    gsSPVertex(&Bmori1_room_15Vtx_000130[146], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 24, 26, 0),
    gsSPEndDisplayList(),
};

Gfx Bmori1_room_15DL_0012D0[] = {
    gsSPDisplayList(Bmori1_room_15DL_000C90),
    gsSPEndDisplayList(),
};

u64 Bmori1_room_15Tex_0012E0[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_15Tex_0012E0.ci8.inc.c"
};

u64 Bmori1_room_15Tex_001AE0[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_15Tex_001AE0.ci8.inc.c"
};

u64 Bmori1_room_15Tex_001EE0[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_15Tex_001EE0.ci8.inc.c"
};

