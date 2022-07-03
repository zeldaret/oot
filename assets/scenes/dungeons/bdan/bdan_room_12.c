#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "bdan_room_12.h"
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
#include "bdan_room_10.h"
#include "bdan_room_11.h"
#include "bdan_room_13.h"
#include "bdan_room_14.h"
#include "bdan_room_15.h"

SceneCmd bdan_room_12Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(bdan_room_12AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&bdan_room_12PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(11, bdan_room_12ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(12, bdan_room_12ActorList_000070),
    SCENE_CMD_END(),
};

SceneCmd* bdan_room_12AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    bdan_room_12Set_000150,
};

s16 bdan_room_12ObjectList_000058[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_RU1,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_SIOFUKI,
    OBJECT_KUSA,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
    OBJECT_BOMBIWA,
    OBJECT_TP,
    OBJECT_BUBBLE,
};

ActorEntry bdan_room_12ActorList_000070[] = {
    { ACTOR_EN_SW,          {   -887,   -309,  -5912 }, {      0, 0X2000,      0 }, 0x0000 },
    { ACTOR_EN_TP,          {   -551,   -340,  -5752 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_TP,          {   -766,   -340,  -5754 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_TP,          {   -662,   -340,  -5555 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_BG_BDAN_SWITCH, {   -655,   -341,  -5684 }, {      0,  0X38E,      0 }, 0x3D02 },
    { ACTOR_OBJ_TIMEBLOCK,  {   -492,   -216,  -5680 }, {      0,      0,      0 }, 0x38FF },
    { ACTOR_EN_SIOFUKI,     {   -655,   -549,  -5683 }, {      0,      0,    0X3 }, 0x0F7F },
    { ACTOR_OBJ_BOMBIWA,    {   -411,   -106,  -5682 }, {      0,      0,      0 }, 0x000E },
    { ACTOR_OBJ_BOMBIWA,    {   -885,   -340,  -5907 }, {      0,      0,      0 }, 0x0010 },
    { ACTOR_EN_BUBBLE,      {   -530,    -55,  -5841 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_BUBBLE,      {   -826,   -168,  -5577 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_SW,          {   -399,    -59,  -5690 }, { 0X9E94, 0X4EEF,      0 }, 0x8304 },
};

PolygonType0 bdan_room_12PolygonType0_000130 = { 
    0, 1,
    bdan_room_12PolygonDlist_00013C,
    bdan_room_12PolygonDlist_00013C + ARRAY_COUNTU(bdan_room_12PolygonDlist_00013C)
};

PolygonDlist bdan_room_12PolygonDlist_00013C[1] = {
    { bdan_room_12DL_003848, NULL },
};

s32 bdan_room_12_terminatorMaybe_000144 = { 0x01000000 };

u8 bdan_room_12_possiblePadding_000148[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd bdan_room_12Set_000150[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&bdan_room_12PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(4, bdan_room_12ObjectList_000190),
    SCENE_CMD_ACTOR_LIST(5, bdan_room_12ActorList_000198),
    SCENE_CMD_END(),
};

s16 bdan_room_12ObjectList_000190[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_RU1,
    OBJECT_OKUTA,
    OBJECT_BOX,
};

ActorEntry bdan_room_12ActorList_000198[] = {
    { ACTOR_EN_OKUTA, {   -832,   -340,  -5861 }, {      0, 0X20B6,      0 }, 0x0000 },
    { ACTOR_EN_OKUTA, {   -839,   -340,  -5503 }, {      0, 0X5F4A,      0 }, 0x0000 },
    { ACTOR_EN_OKUTA, {   -476,   -340,  -5499 }, {      0, 0XA000,      0 }, 0x0000 },
    { ACTOR_EN_OKUTA, {   -481,   -340,  -5860 }, {      0, 0XDD28,      0 }, 0x0000 },
    { ACTOR_EN_BOX,   {   -659,   -340,  -5681 }, {      0, 0X8000,      0 }, 0x0043 },
};

u8 bdan_room_12_possiblePadding_0001E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx bdan_room_12Vtx_0001F0[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_0001F0.vtx.inc"
};

Gfx bdan_room_12DL_000750[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_0001F0[78], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_12Vtx_0001F0, 32, 0),
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
    gsSPVertex(&bdan_room_12Vtx_0001F0[32], 32, 0),
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
    gsSPVertex(&bdan_room_12Vtx_0001F0[64], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 9, 0),
    gsSP2Triangles(2, 4, 0, 0, 7, 6, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_room_12Vtx_000950[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_000950.vtx.inc"
};

Mtx bdan_room_12DL_000D20Mtx_000000 = { 
    65536      , 0          , 1          , 0          , 
    0          , 65536      , -35258708  , -371392511 , 
    0          , 0          , 0          , 0          , 
    0          , 0          , 1073741824 , 1073741824 , 
};

Gfx bdan_room_12DL_000D20[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_000950[49], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_000D20Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_000950, 32, 0),
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
    gsSPVertex(&bdan_room_12Vtx_000950[31], 18, 0),
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

Vtx bdan_room_12Vtx_000F18[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_000F18.vtx.inc"
};

Mtx bdan_room_12DL_001098Mtx_000000 = { 
    -65536     , 0          , -65536     , -65536     , 
    65535      , 0          , -27459804  , -356712447 , 
    1258029056 , -1258029056, 1258029056 , 1258029056 , 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_room_12DL_001098[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_000F18[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_001098Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_000F18, 12, 0),
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

Vtx bdan_room_12Vtx_0011D8[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_0011D8.vtx.inc"
};

Mtx bdan_room_12DL_001398Mtx_000000 = { 
    0          , 65536      , -65536     , 0          , 
    65535      , 0          , -23527644  , -372441087 , 
    0          , 0          , 0          , 0          , 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_room_12DL_001398[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_0011D8[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_001398Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_0011D8, 16, 0),
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

Vtx bdan_room_12Vtx_0014F0[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_0014F0.vtx.inc"
};

Mtx bdan_room_12DL_001670Mtx_000000 = { 
    0          , 0          , -65536     , 0          , 
    65535      , 0          , -27459804  , -388169727 , 
    -1258029056, -1258029056, 1258029056 , -1258029056, 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_room_12DL_001670[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_0014F0[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_001670Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_0014F0, 12, 0),
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

Vtx bdan_room_12Vtx_0017B0[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_0017B0.vtx.inc"
};

Mtx bdan_room_12DL_001970Mtx_000000 = { 
    65536      , 0          , 0          , 65536      , 
    65535      , 0          , -43188444  , -392101887 , 
    0          , 0          , 0          , 0          , 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_room_12DL_001970[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_0017B0[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_001970Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_0017B0, 16, 0),
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

Vtx bdan_room_12Vtx_001AC8[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_001AC8.vtx.inc"
};

Mtx bdan_room_12DL_001C48Mtx_000000 = { 
    0          , -65536     , 0          , 0          , 
    65535      , 0          , -58917084  , -388169727 , 
    -1258029056, 1258029056 , -1258029056, -1258029056, 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_room_12DL_001C48[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_001AC8[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_001C48Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_001AC8, 12, 0),
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

Vtx bdan_room_12Vtx_001D88[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_001D88.vtx.inc"
};

Mtx bdan_room_12DL_001FB8Mtx_000000 = { 
    0          , -65536     , 65536      , 0          , 
    65535      , 0          , -62849244  , -372441087 , 
    0          , 0          , 0          , 0          , 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_room_12DL_001FB8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_001D88[23], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_001FB8Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_001D88, 23, 0),
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

Vtx bdan_room_12Vtx_002110[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_002110.vtx.inc"
};

Mtx bdan_room_12DL_002290Mtx_000000 = { 
    -65536     , -65536     , 0          , -65536     , 
    65535      , 0          , -58917084  , -356712447 , 
    1258029056 , 1258029056 , -1258029056, 1258029056 , 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_room_12DL_002290[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_002110[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_002290Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_002110, 12, 0),
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

Vtx bdan_room_12Vtx_0023D0[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_0023D0.vtx.inc"
};

Mtx bdan_room_12DL_0024E0Mtx_000000 = { 
    0          , 0          , -1         , 0          , 
    65535      , -65536     , -31064084  , -383909887 , 
    -1258029056, -1258029056, -2083306052, 2083323904 , 
    -2085203869, 2085224448 , 0          , 0          , 
};

Gfx bdan_room_12DL_0024E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_0023D0[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_0024E0Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_0023D0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(3, 0, 2, 0, 0, 4, 1, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_12Vtx_0025E8[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_0025E8.vtx.inc"
};

Mtx bdan_room_12DL_002728Mtx_000000 = { 
    65536      , 0          , 65535      , 0          , 
    65535      , -65536     , -42205204  , -387186687 , 
    0          , 0          , 20714      , -1161691136, 
    17726      , 1357512704 , 0          , 0          , 
};

Gfx bdan_room_12DL_002728[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_0025E8[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_002728Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_0025E8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 1, 3, 0, 5, 3, 0, 0),
    gsSP2Triangles(3, 6, 4, 0, 4, 7, 1, 0),
    gsSP2Triangles(1, 7, 2, 0, 6, 3, 5, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_12Vtx_002840[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_002840.vtx.inc"
};

Mtx bdan_room_12DL_002950Mtx_000000 = { 
    0          , -65536     , 65535      , 0          , 
    -1         , -65536     , -54657044  , -384565247 , 
    -1258029056, 1258029056 , 2083341756 , 2083323904 , 
    2085245027 , 2085224448 , 0          , 0          , 
};

Gfx bdan_room_12DL_002950[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_002840[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_002950Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_002840, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 1, 0, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_12Vtx_002A58[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_002A58.vtx.inc"
};

Mtx bdan_room_12DL_002B98Mtx_000000 = { 
    0          , -65536     , 65535      , 0          , 
    -1         , 0          , -57933844  , -373424127 , 
    0          , 0          , -1161670422, 0          , 
    1357530430 , 0          , 0          , 0          , 
};

Gfx bdan_room_12DL_002B98[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_002A58[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_002B98Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_002A58, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(1, 5, 6, 0, 1, 6, 2, 0),
    gsSP2Triangles(7, 5, 4, 0, 7, 4, 3, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_12Vtx_002CB0[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_002CB0.vtx.inc"
};

Mtx bdan_room_12DL_002DC0Mtx_000000 = { 
    -65536     , -65536     , 65535      , -65536     , 
    -1         , 0          , -55312404  , -360972287 , 
    1258029056 , 1258029056 , 2083341756 , -2083323904, 
    2085245027 , -2085224448, 0          , 0          , 
};

Gfx bdan_room_12DL_002DC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_002CB0[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_002DC0Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_002CB0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(1, 3, 2, 0, 4, 1, 0, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_12Vtx_002EC8[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_002EC8.vtx.inc"
};

Mtx bdan_room_12DL_003008Mtx_000000 = { 
    -65536     , 0          , 65535      , -65536     , 
    65535      , 0          , -44171284  , -357695487 , 
    0          , 0          , 20714      , 1161691136 , 
    17726      , -1357512704, 0          , 0          , 
};

Gfx bdan_room_12DL_003008[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_002EC8[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_003008Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_002EC8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 2, 3, 0, 3, 1, 5, 0),
    gsSP2Triangles(2, 6, 0, 0, 1, 0, 7, 0),
    gsSP2Triangles(1, 7, 5, 0, 6, 2, 4, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_12Vtx_003120[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_003120.vtx.inc"
};

Mtx bdan_room_12DL_003230Mtx_000000 = { 
    -65536     , 0          , -1         , -65536     , 
    65535      , 0          , -31064084  , -360972287 , 
    1258029056 , -1258029056, -2083306052, -2083323904, 
    -2085203869, -2085224448, 0          , 0          , 
};

Gfx bdan_room_12DL_003230[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_003120[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_003230Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_003120, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 3, 2, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_12Vtx_003338[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_003338.vtx.inc"
};

Mtx bdan_room_12DL_003478Mtx_000000 = { 
    0          , 65536      , -1         , 0          , 
    65535      , 0          , -28442644  , -371458047 , 
    0          , 0          , 1161711850 , 0          , 
    -1357494978, 0          , 0          , 0          , 
};

Gfx bdan_room_12DL_003478[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_003338[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_003478Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_003338, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 1, 0, 0, 0, 2, 5, 0),
    gsSP2Triangles(6, 2, 3, 0, 5, 2, 6, 0),
    gsSP2Triangles(3, 1, 7, 0, 7, 1, 4, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_room_12Vtx_003590[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Vtx_003590.vtx.inc"
};

Mtx bdan_room_12DL_003720Mtx_000000 = { 
    65536      , 0          , 65535      , 0          , 
    0          , -65536     , -40239044  , -369885183 , 
    0          , 0          , 0          , 0          , 
    0          , 0          , 1073741824 , 1610612736 , 
};

Gfx bdan_room_12DL_003720[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_12Vtx_003590[13], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_12Tex_0038E0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_room_12DL_003720Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_room_12Vtx_003590, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 2, 0),
    gsSP2Triangles(8, 9, 2, 0, 9, 10, 2, 0),
    gsSP2Triangles(6, 11, 2, 0, 11, 12, 2, 0),
    gsSP2Triangles(12, 7, 2, 0, 0, 2, 10, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Gfx bdan_room_12DL_003848[] = {
    gsSPDisplayList(bdan_room_12DL_000750),
    gsSPDisplayList(bdan_room_12DL_000D20),
    gsSPDisplayList(bdan_room_12DL_001098),
    gsSPDisplayList(bdan_room_12DL_001398),
    gsSPDisplayList(bdan_room_12DL_001670),
    gsSPDisplayList(bdan_room_12DL_001970),
    gsSPDisplayList(bdan_room_12DL_001C48),
    gsSPDisplayList(bdan_room_12DL_001FB8),
    gsSPDisplayList(bdan_room_12DL_002290),
    gsSPDisplayList(bdan_room_12DL_0024E0),
    gsSPDisplayList(bdan_room_12DL_002728),
    gsSPDisplayList(bdan_room_12DL_002950),
    gsSPDisplayList(bdan_room_12DL_002B98),
    gsSPDisplayList(bdan_room_12DL_002DC0),
    gsSPDisplayList(bdan_room_12DL_003008),
    gsSPDisplayList(bdan_room_12DL_003230),
    gsSPDisplayList(bdan_room_12DL_003478),
    gsSPDisplayList(bdan_room_12DL_003720),
    gsSPEndDisplayList(),
};

u64 bdan_room_12Tex_0038E0[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_12Tex_0038E0.ci8.inc.c"
};

