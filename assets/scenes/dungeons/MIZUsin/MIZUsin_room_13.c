#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "MIZUsin_room_13.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "MIZUsin_scene.h"
#include "MIZUsin_room_0.h"
#include "MIZUsin_room_1.h"
#include "MIZUsin_room_2.h"
#include "MIZUsin_room_3.h"
#include "MIZUsin_room_4.h"
#include "MIZUsin_room_5.h"
#include "MIZUsin_room_6.h"
#include "MIZUsin_room_7.h"
#include "MIZUsin_room_8.h"
#include "MIZUsin_room_9.h"
#include "MIZUsin_room_10.h"
#include "MIZUsin_room_11.h"
#include "MIZUsin_room_12.h"
#include "MIZUsin_room_14.h"
#include "MIZUsin_room_15.h"
#include "MIZUsin_room_16.h"
#include "MIZUsin_room_17.h"
#include "MIZUsin_room_18.h"
#include "MIZUsin_room_19.h"
#include "MIZUsin_room_20.h"
#include "MIZUsin_room_21.h"
#include "MIZUsin_room_22.h"

SceneCmd MIZUsin_room_13Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&MIZUsin_room_13PolygonType2_000060),
    SCENE_CMD_OBJECT_LIST(5, MIZUsin_room_13ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(1, MIZUsin_room_13ActorList_00004C),
    SCENE_CMD_END(),
};

s16 MIZUsin_room_13ObjectList_000040[] = {
    OBJECT_MIZU_OBJECTS,
    OBJECT_BLKOBJ,
    OBJECT_STREAM,
    OBJECT_SIOFUKI,
    OBJECT_TORCH2,
};

ActorEntry MIZUsin_room_13ActorList_00004C[] = {
    { ACTOR_EN_BLKOBJ, {  -3120,   1040,  -2680 }, {      0, 0X4000,      0 }, 0xFFFF },
};

u8 MIZUsin_room_13_possiblePadding_00005C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 MIZUsin_room_13PolygonType2_000060 = { 
    2, 1,
    MIZUsin_room_13PolygonDlist2_00006C,
    MIZUsin_room_13PolygonDlist2_00006C + ARRAY_COUNTU(MIZUsin_room_13PolygonDlist2_00006C)
};

PolygonDlist2 MIZUsin_room_13PolygonDlist2_00006C[1] = {
    { {  -3075,   1060,  -1770 },    100, NULL, MIZUsin_room_13DL_000130 },
};

s32 MIZUsin_room_13_terminatorMaybe_00007C = { 0x01000000 };

Vtx MIZUsin_room_13Vtx_000080[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_13Vtx_000080.vtx.inc"
};

Gfx MIZUsin_room_13DL_000130[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_13Vtx_000080[3], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_room_13Tex_0001F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 0),
    gsSPVertex(MIZUsin_room_13Vtx_000080, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_13_unaccounted_0001E8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x30, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_13Tex_0001F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_13Tex_0001F8.rgba16.inc.c"
};

