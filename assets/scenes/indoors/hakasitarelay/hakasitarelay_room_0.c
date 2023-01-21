#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "hakasitarelay_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "hakasitarelay_scene.h"
#include "hakasitarelay_room_1.h"
#include "hakasitarelay_room_2.h"
#include "hakasitarelay_room_3.h"
#include "hakasitarelay_room_4.h"
#include "hakasitarelay_room_5.h"
#include "hakasitarelay_room_6.h"

SceneCmd hakasitarelay_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hakasitarelay_room_0PolygonType0_0000F0),
    SCENE_CMD_OBJECT_LIST(8, hakasitarelay_room_0ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(11, hakasitarelay_room_0ActorList_000050),
    SCENE_CMD_END(),
};

s16 hakasitarelay_room_0ObjectList_000040[] = {
    OBJECT_RELAY_OBJECTS,
    OBJECT_POH,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_TK,
    OBJECT_FU,
    OBJECT_KANBAN,
    OBJECT_RD,
};

ActorEntry hakasitarelay_room_0ActorList_000050[] = {
    { ACTOR_OBJ_TSUBO,        {    198,   -530,  -1608 }, {      0,      0,      0 }, 0x4403 },
    { ACTOR_OBJ_TSUBO,        {    239,   -530,  -1577 }, {      0,      0,      0 }, 0x460C },
    { ACTOR_OBJ_TSUBO,        {   -319,   -530,  -1600 }, {      0,      0,      0 }, 0x4804 },
    { ACTOR_OBJ_TSUBO,        {   -319,   -530,  -1542 }, {      0,      0,      0 }, 0x4A08 },
    { ACTOR_OBJ_TSUBO,        {    198,   -530,  -1540 }, {      0,      0,      0 }, 0x4C0F },
    { ACTOR_OBJ_TSUBO,        {   -364,   -530,  -1571 }, {      0,      0,      0 }, 0x4E02 },
    { ACTOR_BG_RELAY_OBJECTS, {    210,   -570,  -5199 }, {      0,      0,      0 }, 0x0135 },
    { ACTOR_BG_RELAY_OBJECTS, {   2010,   -730,  -4211 }, {      0, 0X8000,      0 }, 0x0136 },
    { ACTOR_BG_RELAY_OBJECTS, {   2894,   -410,  -1893 }, {      0, 0X8000,      0 }, 0x0137 },
    { ACTOR_EN_PO_RELAY,      {    -63,   -530,  -2177 }, {      0,      0,      0 }, 0x0007 },
    { ACTOR_EN_KANBAN,        {     20,   -470,  -1835 }, {      0,      0,      0 }, 0x0328 },
};

PolygonType0 hakasitarelay_room_0PolygonType0_0000F0 = { 
    0, 1,
    hakasitarelay_room_0PolygonDlist_0000FC,
    hakasitarelay_room_0PolygonDlist_0000FC + ARRAY_COUNTU(hakasitarelay_room_0PolygonDlist_0000FC)
};

PolygonDlist hakasitarelay_room_0PolygonDlist_0000FC[1] = {
    { hakasitarelay_room_0DL_003218, hakasitarelay_room_0DL_0062A8 },
};

s32 hakasitarelay_room_0_terminatorMaybe_000104 = { 0x01000000 };

u8 hakasitarelay_room_0_possiblePadding_000108[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx hakasitarelay_room_0Vtx_000110[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_0Vtx_000110.vtx.inc"
};

Gfx hakasitarelay_room_0DL_0001E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakasitarelay_room_0Vtx_000110[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakasitarelay_room_0Vtx_000110, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 1, 0),
    gsSPEndDisplayList(),
};

Vtx hakasitarelay_room_0Vtx_000268[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_0Vtx_000268.vtx.inc"
};

Gfx hakasitarelay_room_0DL_001098[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakasitarelay_room_0Vtx_000268[219], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_0Tex_003248, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakasitarelay_room_0Vtx_000268, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(11, 20, 21, 0, 11, 21, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_0Tex_004448, G_IM_FMT_I, 128, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_0Vtx_000268[23], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_0Tex_005448, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_0Vtx_000268[27], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_0Tex_005848, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_0Vtx_000268[35], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_0Tex_005448, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_0Vtx_000268[59], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 1, 0, 7, 1, 0, 0),
    gsSP2Triangles(3, 2, 5, 0, 3, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(10, 9, 14, 0, 10, 14, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_0Tex_005848, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_0Vtx_000268[75], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_0Tex_004C48, G_IM_FMT_I, 32, 128, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                            | G_TX_WRAP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_0Vtx_000268[91], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&hakasitarelay_room_0Vtx_000268[123], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&hakasitarelay_room_0Vtx_000268[155], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&hakasitarelay_room_0Vtx_000268[187], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

Vtx hakasitarelay_room_0Vtx_0014E0[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_0Vtx_0014E0.vtx.inc"
};

Gfx hakasitarelay_room_0DL_0025C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakasitarelay_room_0Vtx_0014E0[262], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(hakasitarelay_room_0Tex_003448, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakasitarelay_room_0Vtx_0014E0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 8, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 15, 5, 0, 14, 5, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 14, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 12, 13, 0, 28, 13, 29, 0),
    gsSPVertex(&hakasitarelay_room_0Vtx_0014E0[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 9, 0),
    gsSP2Triangles(5, 15, 16, 0, 5, 16, 17, 0),
    gsSP2Triangles(2, 18, 16, 0, 2, 16, 3, 0),
    gsSP2Triangles(19, 8, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 24, 26, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 22, 24, 0),
    gsSP2Triangles(28, 24, 29, 0, 20, 25, 27, 0),
    gsSP2Triangles(20, 27, 21, 0, 10, 28, 29, 0),
    gsSP1Triangle(10, 29, 11, 0),
    gsSPVertex(&hakasitarelay_room_0Vtx_0014E0[60], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 7, 8, 0),
    gsSP2Triangles(7, 9, 10, 0, 7, 10, 8, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 11, 14, 0, 15, 14, 16, 0),
    gsSP2Triangles(17, 18, 12, 0, 17, 12, 19, 0),
    gsSP2Triangles(20, 17, 19, 0, 20, 19, 15, 0),
    gsSP2Triangles(21, 13, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 21, 23, 0, 24, 23, 25, 0),
    gsSP2Triangles(26, 0, 27, 0, 0, 28, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 27, 0),
    gsSPVertex(&hakasitarelay_room_0Vtx_0014E0[91], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(5, 8, 11, 0, 5, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 15, 1, 0, 17, 1, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 21, 0),
    gsSP2Triangles(20, 23, 24, 0, 20, 24, 22, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP2Triangles(26, 29, 30, 0, 26, 30, 27, 0),
    gsSP1Triangle(31, 25, 28, 0),
    gsSPVertex(&hakasitarelay_room_0Vtx_0014E0[123], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 7, 11, 8, 0),
    gsSP2Triangles(11, 12, 8, 0, 12, 13, 8, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(14, 18, 15, 0, 14, 19, 20, 0),
    gsSP2Triangles(19, 21, 20, 0, 22, 23, 24, 0),
    gsSP2Triangles(23, 17, 24, 0, 17, 15, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 29, 28, 0),
    gsSP1Triangle(27, 30, 29, 0),
    gsSPVertex(&hakasitarelay_room_0Vtx_0014E0[154], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(18, 20, 21, 0, 18, 21, 19, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(23, 26, 27, 0, 23, 27, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 0, 2, 0),
    gsSPVertex(&hakasitarelay_room_0Vtx_0014E0[186], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 16, 17, 0, 13, 17, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 19, 0, 22, 19, 18, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&hakasitarelay_room_0Vtx_0014E0[216], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 16, 0),
    gsSP2Triangles(17, 16, 15, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 29, 28, 0),
    gsSP2Triangles(30, 29, 27, 0, 30, 27, 31, 0),
    gsSPVertex(&hakasitarelay_room_0Vtx_0014E0[248], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSPEndDisplayList(),
};

Vtx hakasitarelay_room_0Vtx_002970[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_0Vtx_002970.vtx.inc"
};

Gfx hakasitarelay_room_0DL_002EA0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakasitarelay_room_0Vtx_002970[75], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakasitarelay_sceneTex_00D880, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakasitarelay_room_0Vtx_002970, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 6, 5, 1, 0),
    gsSP2Triangles(6, 1, 0, 0, 0, 2, 7, 0),
    gsSP2Triangles(2, 8, 7, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 7, 0),
    gsSP2Triangles(11, 7, 10, 0, 12, 13, 0, 0),
    gsSP2Triangles(12, 0, 7, 0, 13, 14, 6, 0),
    gsSP2Triangles(13, 6, 0, 0, 14, 15, 6, 0),
    gsSP2Triangles(15, 3, 6, 0, 15, 16, 3, 0),
    gsSP2Triangles(17, 18, 19, 0, 18, 20, 19, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(18, 25, 20, 0, 25, 26, 20, 0),
    gsSP2Triangles(25, 27, 26, 0, 27, 21, 26, 0),
    gsSP2Triangles(27, 22, 21, 0, 25, 28, 29, 0),
    gsSP2Triangles(25, 18, 28, 0, 28, 30, 29, 0),
    gsSPVertex(&hakasitarelay_room_0Vtx_002970[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(7, 12, 8, 0, 12, 13, 8, 0),
    gsSP2Triangles(13, 10, 8, 0, 14, 1, 0, 0),
    gsSP2Triangles(15, 7, 6, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 16, 19, 0),
    gsSP2Triangles(20, 19, 21, 0, 19, 22, 23, 0),
    gsSP2Triangles(19, 23, 21, 0, 18, 24, 22, 0),
    gsSP2Triangles(18, 22, 19, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 22, 0, 22, 26, 23, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 26, 0),
    gsSP2Triangles(26, 29, 23, 0, 25, 30, 27, 0),
    gsSP1Triangle(25, 27, 26, 0),
    gsSPVertex(&hakasitarelay_room_0Vtx_002970[62], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 2, 0, 5, 2, 1, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP1Triangle(12, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx hakasitarelay_room_0Vtx_003078[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_0Vtx_003078.vtx.inc"
};

Gfx hakasitarelay_room_0DL_003178[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakasitarelay_room_0Vtx_003078[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakasitarelay_room_0Vtx_003078, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 1, 0, 7, 1, 0, 0),
    gsSP2Triangles(1, 6, 4, 0, 1, 4, 2, 0),
    gsSPEndDisplayList(),
};

Gfx hakasitarelay_room_0DL_003218[] = {
    gsSPDisplayList(hakasitarelay_room_0DL_0001E0),
    gsSPDisplayList(hakasitarelay_room_0DL_001098),
    gsSPDisplayList(hakasitarelay_room_0DL_0025C0),
    gsSPDisplayList(hakasitarelay_room_0DL_002EA0),
    gsSPDisplayList(hakasitarelay_room_0DL_003178),
    gsSPEndDisplayList(),
};

u64 hakasitarelay_room_0Tex_003248[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_0Tex_003248.i4.inc.c"
};

u64 hakasitarelay_room_0Tex_003448[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_0Tex_003448.rgba16.inc.c"
};

u64 hakasitarelay_room_0Tex_004448[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_0Tex_004448.i4.inc.c"
};

u64 hakasitarelay_room_0Tex_004C48[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_0Tex_004C48.i4.inc.c"
};

u64 hakasitarelay_room_0Tex_005448[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_0Tex_005448.i8.inc.c"
};

u64 hakasitarelay_room_0Tex_005848[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_0Tex_005848.i8.inc.c"
};

u8 hakasitarelay_room_0_possiblePadding_006048[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx hakasitarelay_room_0Vtx_006050[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_0Vtx_006050.vtx.inc"
};

Gfx hakasitarelay_room_0DL_0061D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakasitarelay_room_0Vtx_006050[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(hakasitarelay_room_0Tex_0062B8, G_IM_FMT_IA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 153),
    gsSPDisplayList(0x08000000),
    gsSPVertex(hakasitarelay_room_0Vtx_006050, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx hakasitarelay_room_0DL_0062A8[] = {
    gsSPDisplayList(hakasitarelay_room_0DL_0061D0),
    gsSPEndDisplayList(),
};

u64 hakasitarelay_room_0Tex_0062B8[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_0Tex_0062B8.ia16.inc.c"
};

