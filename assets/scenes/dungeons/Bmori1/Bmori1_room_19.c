#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "Bmori1_room_19.h"
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
#include "Bmori1_room_20.h"
#include "Bmori1_room_21.h"
#include "Bmori1_room_22.h"

SceneCmd Bmori1_room_19Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&Bmori1_room_19PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(10, Bmori1_room_19ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(6, Bmori1_room_19ActorList_000054),
    SCENE_CMD_END(),
};

s16 Bmori1_room_19ObjectList_000040[] = {
    OBJECT_MORI_TEX,
    OBJECT_MORI_OBJECTS,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_BB,
    OBJECT_ST,
    OBJECT_DEMO_KEKKAI,
    OBJECT_MORI_HINERI1,
    OBJECT_MORI_HINERI1A,
    OBJECT_WALLMASTER,
};

ActorEntry Bmori1_room_19ActorList_000054[] = {
    { ACTOR_EN_WALLMAS,     {  -1763,   1467,  -3318 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_ELF_MSG2,       {  -1552,   1429,  -3468 }, {      0,   0X14,      0 }, 0x3F92 },
    { ACTOR_BG_MORI_HINERI, {  -1761,   1278,  -3015 }, {      0,      0,      0 }, 0x3F13 },
    { ACTOR_ELF_MSG,        {  -1773,   1206,  -3127 }, {      0,      0,      0 }, 0x1691 },
    { ACTOR_EN_BB,          {  -1759,   1276,  -2255 }, {      0,      0,      0 }, 0x01FC },
    { ACTOR_ELF_MSG,        {  -1747,   1228,  -2077 }, {   0X1E,   0X57,   0X14 }, 0x1F90 },
};

u8 Bmori1_room_19_possiblePadding_000094[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 Bmori1_room_19PolygonType0_0000A0 = { 
    0, 1,
    Bmori1_room_19PolygonDlist_0000AC,
    Bmori1_room_19PolygonDlist_0000AC + ARRAY_COUNTU(Bmori1_room_19PolygonDlist_0000AC)
};

PolygonDlist Bmori1_room_19PolygonDlist_0000AC[1] = {
    { Bmori1_room_19DL_0004F0, NULL },
};

s32 Bmori1_room_19_terminatorMaybe_0000B4 = { 0x01000000 };

u8 Bmori1_room_19_possiblePadding_0000B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx Bmori1_room_19Vtx_0000C0[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_19Vtx_0000C0.vtx.inc"
};

Gfx Bmori1_room_19DL_0003B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&Bmori1_room_19Vtx_0000C0[39], 8, 0),
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
    gsSPVertex(Bmori1_room_19Vtx_0000C0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(19, 18, 20, 0, 18, 17, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&Bmori1_room_19Vtx_0000C0[32], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 5, 6, 0),
    gsSPEndDisplayList(),
};

Gfx Bmori1_room_19DL_0004F0[] = {
    gsSPDisplayList(Bmori1_room_19DL_0003B0),
    gsSPEndDisplayList(),
};

