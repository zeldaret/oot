#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "kakusiana_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "kakusiana_scene.h"
#include "kakusiana_room_0.h"
#include "kakusiana_room_2.h"
#include "kakusiana_room_3.h"
#include "kakusiana_room_4.h"
#include "kakusiana_room_5.h"
#include "kakusiana_room_6.h"
#include "kakusiana_room_7.h"
#include "kakusiana_room_8.h"
#include "kakusiana_room_9.h"
#include "kakusiana_room_10.h"
#include "kakusiana_room_11.h"
#include "kakusiana_room_12.h"
#include "kakusiana_room_13.h"

SceneCmd kakusiana_room_1Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&kakusiana_room_1PolygonType2_000080),
    SCENE_CMD_OBJECT_LIST(1, kakusiana_room_1ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(3, kakusiana_room_1ActorList_000044),
    SCENE_CMD_END(),
};

s16 kakusiana_room_1ObjectList_000040[] = {
    OBJECT_SHOPNUTS,
};

ActorEntry kakusiana_room_1ActorList_000044[] = {
    { ACTOR_EN_SHOPNUTS, {   1222,      9,   -489 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_OBJ_COMB,    {   1410,    156,   -451 }, { 0XE000, 0XE000,      0 }, 0xFF02 },
    { ACTOR_SHOT_SUN,    {   1297,    -11,   -308 }, {      0,      0,      0 }, 0xFF41 },
};

u8 kakusiana_room_1_possiblePadding_000074[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 kakusiana_room_1PolygonType2_000080 = { 
    2, 8,
    kakusiana_room_1PolygonDlist2_00008C,
    kakusiana_room_1PolygonDlist2_00008C + ARRAY_COUNTU(kakusiana_room_1PolygonDlist2_00008C)
};

PolygonDlist2 kakusiana_room_1PolygonDlist2_00008C[8] = {
    { {   1223,    245,    149 },    238, NULL, kakusiana_room_1DL_004420 },
    { {   1232,    -12,   -134 },    435, kakusiana_room_1DL_001280, NULL },
    { {   1275,    141,   -319 },    233, NULL, kakusiana_room_1DL_004870 },
    { {   1220,    234,   -142 },    535, kakusiana_room_1DL_0006E0, NULL },
    { {   1221,    -11,   -290 },    304, kakusiana_room_1DL_0016F8, NULL },
    { {   1223,     10,    149 },     40, kakusiana_room_1DL_001560, NULL },
    { {   1223,    490,    149 },     41, kakusiana_room_1DL_001938, kakusiana_room_1DL_0045E8 },
    { {   1220,    295,   -142 },    510, kakusiana_room_1DL_000BE8, NULL },
};

s32 kakusiana_room_1_terminatorMaybe_00010C = { 0x01000000 };

Vtx kakusiana_room_1Vtx_000110[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_1Vtx_000110.vtx.inc"
};

Gfx kakusiana_room_1DL_0006E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_1Vtx_000110[85], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_1Tex_001A18, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_1Vtx_000110, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 7, 0, 10, 7, 6, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(3, 2, 13, 0, 3, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(21, 15, 22, 0, 15, 23, 22, 0),
    gsSP2Triangles(24, 19, 18, 0, 24, 25, 19, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0),
    gsSP2Triangles(27, 24, 28, 0, 27, 25, 24, 0),
    gsSP2Triangles(30, 31, 26, 0, 31, 29, 26, 0),
    gsSPVertex(&kakusiana_room_1Vtx_000110[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 9, 7, 0, 9, 10, 7, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 3, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 5, 21, 0),
    gsSP2Triangles(5, 4, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(24, 26, 25, 0, 24, 27, 26, 0),
    gsSP2Triangles(27, 28, 26, 0, 28, 29, 30, 0),
    gsSP1Triangle(29, 31, 26, 0),
    gsSPVertex(&kakusiana_room_1Vtx_000110[64], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 6, 8, 7, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(10, 13, 14, 0, 10, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 13, 0),
    gsSP2Triangles(17, 19, 18, 0, 19, 20, 18, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_1Vtx_000888[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_1Vtx_000888.vtx.inc"
};

Gfx kakusiana_room_1DL_000BE8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_1Vtx_000888[46], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_sceneTex_00D020, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_1Vtx_000888, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(1, 6, 2, 0, 6, 4, 2, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(9, 11, 12, 0, 9, 12, 10, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(14, 17, 18, 0, 14, 18, 15, 0),
    gsSP2Triangles(19, 20, 13, 0, 20, 14, 13, 0),
    gsSP2Triangles(20, 17, 14, 0, 20, 21, 17, 0),
    gsSP2Triangles(22, 23, 3, 0, 22, 3, 5, 0),
    gsSP2Triangles(23, 24, 0, 0, 23, 0, 3, 0),
    gsSP2Triangles(22, 7, 10, 0, 22, 10, 23, 0),
    gsSP2Triangles(10, 12, 24, 0, 10, 24, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP2Triangles(27, 26, 29, 0, 27, 29, 30, 0),
    gsSP1Triangle(31, 30, 29, 0),
    gsSPVertex(&kakusiana_room_1Vtx_000888[32], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 1, 0, 1, 4, 5, 0),
    gsSP2Triangles(1, 5, 6, 0, 1, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 9, 8, 13, 0),
    gsSP2Triangles(9, 13, 10, 0, 13, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_1Vtx_000D50[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_1Vtx_000D50.vtx.inc"
};

Gfx kakusiana_room_1DL_001280[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_1Vtx_000D50[75], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_1Tex_003218, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_1Vtx_000D50, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 6, 5, 1, 0),
    gsSP2Triangles(1, 0, 6, 0, 7, 6, 0, 0),
    gsSP2Triangles(8, 3, 9, 0, 8, 7, 0, 0),
    gsSP2Triangles(8, 0, 3, 0, 9, 3, 10, 0),
    gsSP2Triangles(3, 2, 10, 0, 2, 11, 10, 0),
    gsSP2Triangles(4, 11, 2, 0, 2, 1, 4, 0),
    gsSP2Triangles(11, 4, 12, 0, 13, 10, 11, 0),
    gsSP2Triangles(13, 11, 12, 0, 14, 10, 13, 0),
    gsSP2Triangles(15, 9, 10, 0, 16, 6, 17, 0),
    gsSP2Triangles(6, 7, 17, 0, 18, 15, 19, 0),
    gsSP2Triangles(15, 20, 19, 0, 18, 21, 15, 0),
    gsSP2Triangles(21, 9, 15, 0, 8, 18, 22, 0),
    gsSP2Triangles(8, 21, 18, 0, 8, 9, 21, 0),
    gsSP2Triangles(23, 16, 24, 0, 16, 17, 24, 0),
    gsSP2Triangles(17, 7, 24, 0, 25, 26, 22, 0),
    gsSP2Triangles(25, 27, 26, 0, 27, 28, 26, 0),
    gsSP2Triangles(28, 22, 26, 0, 27, 29, 28, 0),
    gsSP2Triangles(29, 30, 28, 0, 30, 24, 28, 0),
    gsSP2Triangles(27, 31, 29, 0, 31, 30, 29, 0),
    gsSPVertex(&kakusiana_room_1Vtx_000D50[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 11, 9, 0, 12, 8, 10, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 10, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 18, 21, 0),
    gsSP2Triangles(20, 22, 18, 0, 20, 23, 22, 0),
    gsSP2Triangles(23, 24, 22, 0, 24, 18, 22, 0),
    gsSP2Triangles(19, 25, 20, 0, 25, 26, 20, 0),
    gsSP2Triangles(26, 23, 20, 0, 19, 0, 25, 0),
    gsSP2Triangles(19, 3, 0, 0, 25, 12, 27, 0),
    gsSP2Triangles(12, 23, 27, 0, 28, 29, 30, 0),
    gsSP2Triangles(29, 31, 30, 0, 29, 24, 31, 0),
    gsSPVertex(&kakusiana_room_1Vtx_000D50[64], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 6, 7, 2, 0),
    gsSP2Triangles(7, 8, 2, 0, 8, 9, 2, 0),
    gsSP1Triangle(9, 10, 2, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_1Vtx_001480[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_1Vtx_001480.vtx.inc"
};

Gfx kakusiana_room_1DL_001560[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_1Vtx_001480[6], 8, 0),
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
    gsSPVertex(kakusiana_room_1Vtx_001480, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_1Vtx_0015E8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_1Vtx_0015E8.vtx.inc"
};

Gfx kakusiana_room_1DL_0016F8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_1Vtx_0015E8[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_1Tex_002A18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 15, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(kakusiana_room_1Vtx_0015E8, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(4, 5, 2, 0, 5, 6, 2, 0),
    gsSP2Triangles(0, 7, 3, 0, 0, 8, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 5, 4, 0),
    gsSP2Triangles(4, 3, 7, 0, 8, 6, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_1Vtx_0017F8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_1Vtx_0017F8.vtx.inc"
};

Gfx kakusiana_room_1DL_001938[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_1Vtx_0017F8[12], 8, 0),
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
    gsSPVertex(kakusiana_room_1Vtx_0017F8, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(3, 2, 11, 0, 3, 11, 10, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_1_unaccounted_0019E0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0xE8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x15, 0x60, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x16, 0xF8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x19, 0x38, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_1Tex_001A18[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_1Tex_001A18.i8.inc.c"
};

u64 kakusiana_room_1Tex_002A18[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_1Tex_002A18.rgba16.inc.c"
};

u64 kakusiana_room_1Tex_003218[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_1Tex_003218.i8.inc.c"
};

u8 kakusiana_room_1_possiblePadding_004218[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx kakusiana_room_1Vtx_004220[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_1Vtx_004220.vtx.inc"
};

Gfx kakusiana_room_1DL_004420[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_1Vtx_004220[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_sceneTex_00C020, G_IM_FMT_IA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPDisplayList(0x08000000),
    gsSPVertex(kakusiana_room_1Vtx_004220, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_1Vtx_004508[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_1Vtx_004508.vtx.inc"
};

Gfx kakusiana_room_1DL_0045E8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_1Vtx_004508[6], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPVertex(kakusiana_room_1Vtx_004508, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_1Vtx_004670[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_1Vtx_004670.vtx.inc"
};

Gfx kakusiana_room_1DL_004870[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_1Vtx_004670[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_1Tex_004990, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 256, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 8, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 1, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 8, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_CLAMP, 3, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x001C, 0x03FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       TEXEL1, 0, PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(kakusiana_room_1Vtx_004670, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_1_unaccounted_004970[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x44, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x45, 0xE8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x48, 0x70, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_1Tex_004990[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_1Tex_004990.ia8.inc.c"
};

