#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "Bmori1_room_20.h"
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
#include "Bmori1_room_15.h"
#include "Bmori1_room_16.h"
#include "Bmori1_room_17.h"
#include "Bmori1_room_18.h"
#include "Bmori1_room_19.h"
#include "Bmori1_room_21.h"
#include "Bmori1_room_22.h"

SceneCmd Bmori1_room_20Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&Bmori1_room_20PolygonType0_0000B0),
    SCENE_CMD_OBJECT_LIST(9, Bmori1_room_20ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(5, Bmori1_room_20ActorList_000054),
    SCENE_CMD_END(),
};

s16 Bmori1_room_20ObjectList_000040[] = {
    OBJECT_MORI_TEX,
    OBJECT_MORI_OBJECTS,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_BB,
    OBJECT_ST,
    OBJECT_MORI_HINERI2,
    OBJECT_MORI_HINERI2A,
    OBJECT_WALLMASTER,
};

ActorEntry Bmori1_room_20ActorList_000054[] = {
    { ACTOR_EN_BB,          {   1998,   1276,  -2503 }, {      0, 0X8000,      0 }, 0x01FC },
    { ACTOR_EN_BB,          {   2001,   1269,  -2165 }, {      0, 0X8000,      0 }, 0x01FC },
    { ACTOR_EN_WALLMAS,     {   1998,   1472,  -3326 }, {      0, 0XC0B6,      0 }, 0x0001 },
    { ACTOR_ELF_MSG,        {   1818,   1228,  -3319 }, {      0,      0,      0 }, 0x1791 },
    { ACTOR_BG_MORI_HINERI, {   1999,   1278,  -3015 }, {      0,      0,      0 }, 0xBF18 },
};

u8 Bmori1_room_20_possiblePadding_0000A4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 Bmori1_room_20PolygonType0_0000B0 = { 
    0, 1,
    Bmori1_room_20PolygonDlist_0000BC,
    Bmori1_room_20PolygonDlist_0000BC + ARRAY_COUNTU(Bmori1_room_20PolygonDlist_0000BC)
};

PolygonDlist Bmori1_room_20PolygonDlist_0000BC[1] = {
    { Bmori1_room_20DL_0006E8, NULL },
};

s32 Bmori1_room_20_terminatorMaybe_0000C4 = { 0x01000000 };

u8 Bmori1_room_20_possiblePadding_0000C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx Bmori1_room_20Vtx_0000D0[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_20Vtx_0000D0.vtx.inc"
};

Gfx Bmori1_room_20DL_000450[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&Bmori1_room_20Vtx_0000D0[48], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014288),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(Bmori1_room_20Vtx_0000D0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_20Tex_0006F8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_20Vtx_0000D0[16], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 3, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 3, 6, 0),
    gsSP2Triangles(8, 7, 6, 0, 9, 3, 7, 0),
    gsSP1Triangle(9, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_20Tex_000EF8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014080),
    gsSPVertex(&Bmori1_room_20Vtx_0000D0[26], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 4, 0, 0),
    gsSP1Triangle(5, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014288),
    gsSPVertex(&Bmori1_room_20Vtx_0000D0[32], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx Bmori1_room_20DL_0006E8[] = {
    gsSPDisplayList(Bmori1_room_20DL_000450),
    gsSPEndDisplayList(),
};

u64 Bmori1_room_20Tex_0006F8[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_20Tex_0006F8.ci8.inc.c"
};

u64 Bmori1_room_20Tex_000EF8[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_20Tex_000EF8.ci8.inc.c"
};

