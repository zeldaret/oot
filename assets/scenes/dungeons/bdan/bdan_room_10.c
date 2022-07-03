#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "bdan_room_10.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "bdan_scene.h"
#include "bdan_room_0.h"
#include "bdan_room_1.h"
#include "bdan_room_2.h"
#include "bdan_room_3.h"
#include "bdan_room_4.h"
#include "bdan_room_5.h"
#include "bdan_room_6.h"
#include "bdan_room_7.h"
#include "bdan_room_8.h"
#include "bdan_room_9.h"
#include "bdan_room_11.h"
#include "bdan_room_12.h"
#include "bdan_room_13.h"
#include "bdan_room_14.h"
#include "bdan_room_15.h"

SceneCmd bdan_room_10Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(bdan_room_10AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&bdan_room_10PolygonType0_000080),
    SCENE_CMD_OBJECT_LIST(3, bdan_room_10ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(2, bdan_room_10ActorList_000060),
    SCENE_CMD_END(),
};

SceneCmd* bdan_room_10AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    bdan_room_10Set_0000A0,
};

s16 bdan_room_10ObjectList_000058[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_RU1,
    OBJECT_BXA,
};

ActorEntry bdan_room_10ActorList_000060[] = {
    { ACTOR_OBJ_ROOMTIMER, {  -1558,     33,  -4664 }, {      0,      0,      0 }, 0x33FF },
    { ACTOR_EN_BA,         {  -1562,     20,  -4683 }, {      0, 0X4000,      0 }, 0x0C01 },
};

PolygonType0 bdan_room_10PolygonType0_000080 = { 
    0, 1,
    bdan_room_10PolygonDlist_00008C,
    bdan_room_10PolygonDlist_00008C + ARRAY_COUNTU(bdan_room_10PolygonDlist_00008C)
};

PolygonDlist bdan_room_10PolygonDlist_00008C[1] = {
    { bdan_room_10DL_003780, NULL },
};

s32 bdan_room_10_terminatorMaybe_000094 = { 0x01000000 };

u8 bdan_room_10_possiblePadding_000098[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd bdan_room_10Set_0000A0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&bdan_room_10PolygonType0_000080),
    SCENE_CMD_OBJECT_LIST(5, bdan_room_10ObjectList_0000E0),
    SCENE_CMD_ACTOR_LIST(2, bdan_room_10ActorList_0000EC),
    SCENE_CMD_END(),
};

s16 bdan_room_10ObjectList_0000E0[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_RU1,
    OBJECT_BXA,
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
};

ActorEntry bdan_room_10ActorList_0000EC[] = {
    { ACTOR_EN_BA,  {  -1561,     20,  -4681 }, {      0, 0X4000,      0 }, 0x3FFF },
    { ACTOR_EN_BOX, {  -1762,   -340,  -4680 }, {      0, 0X4000,      0 }, 0x1802 },
};

Vtx bdan_room_10Vtx_000110[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_000110.vtx.inc"
};

Gfx bdan_room_10DL_000670[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_000110[78], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_10Vtx_000110, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 1, 4, 0, 1, 5, 4, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 6, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 8, 11, 10, 0),
    gsSP2Triangles(12, 3, 0, 0, 10, 11, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 14, 11, 8, 0),
    gsSP2Triangles(8, 6, 16, 0, 17, 18, 5, 0),
    gsSP2Triangles(5, 1, 17, 0, 3, 19, 1, 0),
    gsSP2Triangles(3, 20, 19, 0, 6, 18, 16, 0),
    gsSP2Triangles(6, 5, 18, 0, 8, 16, 14, 0),
    gsSP2Triangles(1, 19, 17, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 21, 24, 0),
    gsSP2Triangles(25, 24, 26, 0, 24, 23, 27, 0),
    gsSP2Triangles(24, 27, 28, 0, 26, 24, 28, 0),
    gsSP2Triangles(26, 28, 29, 0, 30, 31, 22, 0),
    gsSP1Triangle(30, 22, 21, 0),
    gsSPVertex(&bdan_room_10Vtx_000110[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 0, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 9, 12, 0, 13, 12, 14, 0),
    gsSP2Triangles(15, 16, 5, 0, 15, 5, 17, 0),
    gsSP2Triangles(18, 15, 17, 0, 18, 17, 8, 0),
    gsSP2Triangles(12, 11, 16, 0, 12, 16, 15, 0),
    gsSP2Triangles(14, 12, 15, 0, 14, 15, 18, 0),
    gsSP2Triangles(19, 20, 10, 0, 19, 10, 9, 0),
    gsSP2Triangles(21, 19, 9, 0, 21, 9, 13, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&bdan_room_10Vtx_000110[64], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 9, 0),
    gsSP2Triangles(4, 0, 2, 0, 7, 6, 9, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&bdan_room_10Vtx_000110[74], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_000888[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_000888.vtx.inc"
};

Mtx bdan_room_10DL_000C58Mtx_000000 = { 
    65536      , 0          , 1          , 0          , 
    0          , 65536      , -102433108 , -312082431 , 
    0          , 0          , 0          , 0          , 
    0          , 0          , 1073741824 , -1073741824, 
};

Gfx bdan_room_10DL_000C58[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_000888[49], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_000C58Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_000888, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 6, 4, 0),
    gsSP2Triangles(7, 8, 1, 0, 8, 9, 1, 0),
    gsSP2Triangles(1, 10, 2, 0, 1, 9, 10, 0),
    gsSP2Triangles(2, 10, 4, 0, 10, 11, 4, 0),
    gsSP2Triangles(12, 4, 11, 0, 12, 5, 4, 0),
    gsSP2Triangles(13, 5, 12, 0, 8, 14, 9, 0),
    gsSP2Triangles(9, 14, 10, 0, 14, 15, 10, 0),
    gsSP2Triangles(10, 16, 11, 0, 10, 15, 16, 0),
    gsSP2Triangles(17, 12, 16, 0, 12, 11, 16, 0),
    gsSP2Triangles(18, 12, 17, 0, 19, 20, 14, 0),
    gsSP2Triangles(14, 21, 15, 0, 14, 20, 21, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 24, 22, 0),
    gsSP2Triangles(15, 21, 16, 0, 21, 23, 16, 0),
    gsSP2Triangles(25, 16, 23, 0, 25, 17, 16, 0),
    gsSP2Triangles(26, 18, 25, 0, 18, 17, 25, 0),
    gsSP2Triangles(25, 23, 27, 0, 23, 22, 27, 0),
    gsSP2Triangles(28, 21, 20, 0, 28, 24, 21, 0),
    gsSP2Triangles(29, 28, 20, 0, 27, 30, 25, 0),
    gsSP2Triangles(6, 5, 13, 0, 12, 18, 13, 0),
    gsSP2Triangles(26, 25, 30, 0, 1, 3, 7, 0),
    gsSP2Triangles(29, 20, 19, 0, 4, 6, 0, 0),
    gsSP1Triangle(14, 8, 19, 0),
    gsSPVertex(&bdan_room_10Vtx_000888[31], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 3, 0, 10, 3, 2, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(8, 16, 9, 0, 17, 15, 14, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_000E50[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_000E50.vtx.inc"
};

Mtx bdan_room_10DL_000FD0Mtx_000000 = { 
    0          , 0          , -65536     , 0          , 
    65535      , 0          , -86442204  , -322764799 , 
    -1258029056, -1258029056, 1258029056 , -1258029056, 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_room_10DL_000FD0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_000E50[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_000FD0Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_000E50, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 3, 4, 0, 5, 0, 2, 0),
    gsSP2Triangles(5, 2, 4, 0, 1, 6, 7, 0),
    gsSP2Triangles(6, 1, 0, 0, 3, 1, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 5, 4, 0, 10, 4, 11, 0),
    gsSP2Triangles(6, 0, 8, 0, 0, 5, 10, 0),
    gsSP2Triangles(3, 7, 9, 0, 11, 4, 3, 0),
    gsSP2Triangles(8, 0, 10, 0, 3, 9, 11, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_001110[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_001110.vtx.inc"
};

Mtx bdan_room_10DL_0012D0Mtx_000000 = { 
    65536      , 0          , 0          , 65536      , 
    65535      , 0          , -102170844 , -326696959 , 
    0          , 0          , 0          , 0          , 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_room_10DL_0012D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_001110[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_0012D0Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_001110, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 6, 4, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 3, 0),
    gsSP2Triangles(6, 8, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(5, 9, 8, 0, 3, 7, 2, 0),
    gsSP2Triangles(2, 7, 10, 0, 5, 4, 11, 0),
    gsSP2Triangles(11, 4, 1, 0, 7, 8, 10, 0),
    gsSP2Triangles(9, 11, 12, 0, 9, 12, 13, 0),
    gsSP2Triangles(14, 0, 10, 0, 14, 10, 15, 0),
    gsSP2Triangles(11, 1, 12, 0, 1, 0, 14, 0),
    gsSP2Triangles(8, 9, 13, 0, 15, 10, 8, 0),
    gsSP2Triangles(12, 1, 14, 0, 15, 8, 13, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_001428[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_001428.vtx.inc"
};

Mtx bdan_room_10DL_0015A8Mtx_000000 = { 
    0          , -65536     , 0          , 0          , 
    65535      , 0          , -117899484 , -322764799 , 
    -1258029056, 1258029056 , -1258029056, -1258029056, 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_room_10DL_0015A8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_001428[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_0015A8Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_001428, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 2, 5, 0, 1, 0, 6, 0),
    gsSP2Triangles(0, 3, 7, 0, 0, 7, 6, 0),
    gsSP2Triangles(3, 2, 4, 0, 2, 1, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 4, 5, 0, 10, 5, 11, 0),
    gsSP2Triangles(7, 3, 8, 0, 3, 4, 10, 0),
    gsSP2Triangles(1, 6, 9, 0, 11, 5, 1, 0),
    gsSP2Triangles(8, 3, 10, 0, 11, 1, 9, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_0016E8[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_0016E8.vtx.inc"
};

Mtx bdan_room_10DL_0018A8Mtx_000000 = { 
    0          , -65536     , 65536      , 0          , 
    65535      , 0          , -121831644 , -307036159 , 
    0          , 0          , 0          , 0          , 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_room_10DL_0018A8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_0016E8[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_0018A8Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_0016E8, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 3, 5, 1, 0),
    gsSP2Triangles(1, 5, 2, 0, 5, 6, 2, 0),
    gsSP2Triangles(2, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(6, 8, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(10, 2, 7, 0, 11, 5, 3, 0),
    gsSP2Triangles(0, 2, 10, 0, 8, 5, 11, 0),
    gsSP2Triangles(11, 4, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 10, 9, 0, 14, 9, 15, 0),
    gsSP2Triangles(4, 0, 12, 0, 0, 10, 14, 0),
    gsSP2Triangles(8, 11, 13, 0, 15, 9, 8, 0),
    gsSP2Triangles(12, 0, 14, 0, 8, 13, 15, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_001A00[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_001A00.vtx.inc"
};

Mtx bdan_room_10DL_001B80Mtx_000000 = { 
    -65536     , -65536     , 0          , -65536     , 
    65535      , 0          , -117899484 , -291307519 , 
    1258029056 , 1258029056 , -1258029056, 1258029056 , 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_room_10DL_001B80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_001A00[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_001B80Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_001A00, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 0, 2, 0),
    gsSP2Triangles(5, 2, 4, 0, 1, 6, 7, 0),
    gsSP2Triangles(6, 1, 0, 0, 1, 7, 3, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 5, 4, 0, 10, 4, 11, 0),
    gsSP2Triangles(6, 0, 8, 0, 0, 5, 10, 0),
    gsSP2Triangles(3, 7, 9, 0, 11, 4, 3, 0),
    gsSP2Triangles(8, 0, 10, 0, 11, 3, 9, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_001CC0[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_001CC0.vtx.inc"
};

Mtx bdan_room_10DL_001EF0Mtx_000000 = { 
    -65536     , 0          , 0          , -65536     , 
    65535      , 0          , -102170844 , -287375359 , 
    0          , 0          , 0          , 0          , 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_room_10DL_001EF0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_001CC0[23], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_001EF0Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_001CC0, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 3, 5, 2, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 6, 5, 0),
    gsSP2Triangles(7, 6, 4, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 11, 9, 0, 10, 9, 12, 0),
    gsSP2Triangles(5, 13, 2, 0, 7, 4, 14, 0),
    gsSP2Triangles(14, 4, 1, 0, 12, 9, 15, 0),
    gsSP2Triangles(16, 14, 17, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 0, 13, 0, 19, 13, 20, 0),
    gsSP2Triangles(14, 1, 17, 0, 1, 0, 19, 0),
    gsSP2Triangles(9, 11, 21, 0, 22, 15, 9, 0),
    gsSP2Triangles(17, 1, 19, 0, 22, 9, 21, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_002048[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_002048.vtx.inc"
};

Mtx bdan_room_10DL_0021C8Mtx_000000 = { 
    -65536     , 0          , -65536     , -65536     , 
    65535      , 0          , -86442204  , -291307519 , 
    1258029056 , -1258029056, 1258029056 , 1258029056 , 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_room_10DL_0021C8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_002048[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_0021C8Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_002048, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 0, 2, 0, 4, 3, 6, 0),
    gsSP2Triangles(4, 6, 7, 0, 3, 0, 5, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 7, 0),
    gsSP2Triangles(8, 7, 6, 0, 8, 6, 9, 0),
    gsSP2Triangles(5, 2, 10, 0, 5, 10, 11, 0),
    gsSP2Triangles(6, 3, 9, 0, 3, 5, 11, 0),
    gsSP2Triangles(1, 7, 8, 0, 10, 2, 1, 0),
    gsSP2Triangles(9, 3, 11, 0, 1, 8, 10, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_002308[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_002308.vtx.inc"
};

Mtx bdan_room_10DL_002418Mtx_000000 = { 
    0          , -65536     , 65535      , 0          , 
    -1         , -65536     , -113639444 , -319160319 , 
    -1258029056, 1258029056 , 2083341756 , 2083323904 , 
    2085245027 , 2085224448 , 0          , 0          , 
};

Gfx bdan_room_10DL_002418[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_002308[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_002418Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_002308, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(3, 0, 2, 0, 0, 4, 1, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_002520[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_002520.vtx.inc"
};

Mtx bdan_room_10DL_002660Mtx_000000 = { 
    0          , -65536     , 65535      , 0          , 
    -1         , 0          , -116916244 , -308019199 , 
    0          , 0          , -1161670422, 0          , 
    1357530430 , 0          , 0          , 0          , 
};

Gfx bdan_room_10DL_002660[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_002520[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_002660Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_002520, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 1, 3, 0, 5, 3, 0, 0),
    gsSP2Triangles(3, 6, 4, 0, 4, 7, 1, 0),
    gsSP2Triangles(1, 7, 2, 0, 6, 3, 5, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_002778[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_002778.vtx.inc"
};

Mtx bdan_room_10DL_002888Mtx_000000 = { 
    -65536     , -65536     , 65535      , -65536     , 
    -1         , 0          , -114294804 , -295567359 , 
    1258029056 , 1258029056 , 2083341756 , -2083323904, 
    2085245027 , -2085224448, 0          , 0          , 
};

Gfx bdan_room_10DL_002888[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_002778[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_002888Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_002778, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 1, 0, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_002990[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_002990.vtx.inc"
};

Mtx bdan_room_10DL_002AD0Mtx_000000 = { 
    -65536     , 0          , 65535      , -65536     , 
    65535      , 0          , -103153684 , -292290559 , 
    0          , 0          , 20714      , 1161691136 , 
    17726      , -1357512704, 0          , 0          , 
};

Gfx bdan_room_10DL_002AD0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_002990[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_002AD0Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_002990, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(1, 5, 6, 0, 1, 6, 2, 0),
    gsSP2Triangles(7, 5, 4, 0, 7, 4, 3, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_002BE8[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_002BE8.vtx.inc"
};

Mtx bdan_room_10DL_002CF8Mtx_000000 = { 
    -65536     , 0          , -1         , -65536     , 
    65535      , 0          , -90701844  , -294911999 , 
    1258029056 , -1258029056, -2083306052, -2083323904, 
    -2085203869, -2085224448, 0          , 0          , 
};

Gfx bdan_room_10DL_002CF8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_002BE8[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_002CF8Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_002BE8, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(1, 3, 2, 0, 4, 1, 0, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_002E00[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_002E00.vtx.inc"
};

Mtx bdan_room_10DL_002F40Mtx_000000 = { 
    0          , 65536      , -1         , 0          , 
    65535      , 0          , -87425044  , -306053119 , 
    0          , 0          , 1161711850 , 0          , 
    -1357494978, 0          , 0          , 0          , 
};

Gfx bdan_room_10DL_002F40[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_002E00[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_002F40Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_002E00, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 2, 3, 0, 3, 1, 5, 0),
    gsSP2Triangles(2, 6, 0, 0, 1, 0, 7, 0),
    gsSP2Triangles(1, 7, 5, 0, 6, 2, 4, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_003058[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_003058.vtx.inc"
};

Mtx bdan_room_10DL_003168Mtx_000000 = { 
    0          , 0          , -1         , 0          , 
    65535      , -65536     , -90046484  , -318504959 , 
    -1258029056, -1258029056, -2083306052, 2083323904 , 
    -2085203869, 2085224448 , 0          , 0          , 
};

Gfx bdan_room_10DL_003168[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_003058[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_003168Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_003058, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 3, 2, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_003270[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_003270.vtx.inc"
};

Mtx bdan_room_10DL_0033B0Mtx_000000 = { 
    65536      , 0          , 65535      , 0          , 
    65535      , -65536     , -101187604 , -321781759 , 
    0          , 0          , 20714      , -1161691136, 
    17726      , 1357512704 , 0          , 0          , 
};

Gfx bdan_room_10DL_0033B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_003270[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_0033B0Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_003270, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 1, 0, 0, 0, 2, 5, 0),
    gsSP2Triangles(6, 2, 3, 0, 5, 2, 6, 0),
    gsSP2Triangles(3, 1, 7, 0, 7, 1, 4, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_10Vtx_0034C8[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_10Vtx_0034C8.vtx.inc"
};

Mtx bdan_room_10DL_003658Mtx_000000 = { 
    65536      , 0          , 65535      , 0          , 
    0          , -65536     , -104792004 , -310575103 , 
    0          , 0          , 0          , 0          , 
    0          , 0          , -536870912 , 1073741824 , 
};

Gfx bdan_room_10DL_003658[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_10Vtx_0034C8[13], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_10DL_003658Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_10Vtx_0034C8, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 2, 0),
    gsSP2Triangles(8, 9, 2, 0, 9, 10, 2, 0),
    gsSP2Triangles(6, 11, 2, 0, 11, 12, 2, 0),
    gsSP2Triangles(12, 7, 2, 0, 0, 2, 10, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Gfx bdan_room_10DL_003780[] = {
    gsSPDisplayList(bdan_room_10DL_000670),
    gsSPDisplayList(bdan_room_10DL_000C58),
    gsSPDisplayList(bdan_room_10DL_000FD0),
    gsSPDisplayList(bdan_room_10DL_0012D0),
    gsSPDisplayList(bdan_room_10DL_0015A8),
    gsSPDisplayList(bdan_room_10DL_0018A8),
    gsSPDisplayList(bdan_room_10DL_001B80),
    gsSPDisplayList(bdan_room_10DL_001EF0),
    gsSPDisplayList(bdan_room_10DL_0021C8),
    gsSPDisplayList(bdan_room_10DL_002418),
    gsSPDisplayList(bdan_room_10DL_002660),
    gsSPDisplayList(bdan_room_10DL_002888),
    gsSPDisplayList(bdan_room_10DL_002AD0),
    gsSPDisplayList(bdan_room_10DL_002CF8),
    gsSPDisplayList(bdan_room_10DL_002F40),
    gsSPDisplayList(bdan_room_10DL_003168),
    gsSPDisplayList(bdan_room_10DL_0033B0),
    gsSPDisplayList(bdan_room_10DL_003658),
    gsSPEndDisplayList(),
};

