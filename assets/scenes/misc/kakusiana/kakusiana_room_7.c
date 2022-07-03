#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "kakusiana_room_7.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "kakusiana_scene.h"
#include "kakusiana_room_0.h"
#include "kakusiana_room_1.h"
#include "kakusiana_room_2.h"
#include "kakusiana_room_3.h"
#include "kakusiana_room_4.h"
#include "kakusiana_room_5.h"
#include "kakusiana_room_6.h"
#include "kakusiana_room_8.h"
#include "kakusiana_room_9.h"
#include "kakusiana_room_10.h"
#include "kakusiana_room_11.h"
#include "kakusiana_room_12.h"
#include "kakusiana_room_13.h"

SceneCmd kakusiana_room_7Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&kakusiana_room_7PolygonType2_000080),
    SCENE_CMD_OBJECT_LIST(3, kakusiana_room_7ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(3, kakusiana_room_7ActorList_000048),
    SCENE_CMD_END(),
};

s16 kakusiana_room_7ObjectList_000040[] = {
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
    OBJECT_WF,
};

ActorEntry kakusiana_room_7ActorList_000048[] = {
    { ACTOR_EN_WF,  {   1324,   -118,    813 }, {      0, 0XD49F,      0 }, 0xFF00 },
    { ACTOR_EN_WF,  {   1063,   -118,    733 }, {      0, 0X1D28,      0 }, 0xFF00 },
    { ACTOR_EN_BOX, {   1188,   -118,    807 }, {      0, 0X8000,      0 }, 0x7AB1 },
};

u8 kakusiana_room_7_possiblePadding_000078[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 kakusiana_room_7PolygonType2_000080 = { 
    2, 7,
    kakusiana_room_7PolygonDlist2_00008C,
    kakusiana_room_7PolygonDlist2_00008C + ARRAY_COUNTU(kakusiana_room_7PolygonDlist2_00008C)
};

PolygonDlist2 kakusiana_room_7PolygonDlist2_00008C[7] = {
    { {   1223,    210,   1349 },    272, NULL, kakusiana_room_7DL_003D60 },
    { {   1204,    -94,   1008 },    495, kakusiana_room_7DL_0006C8, NULL },
    { {   1223,    -59,   1349 },     40, kakusiana_room_7DL_000960, NULL },
    { {   1223,    490,   1349 },     41, kakusiana_room_7DL_000B28, kakusiana_room_7DL_003F28 },
    { {   1220,    480,   1339 },    229, kakusiana_room_7DL_000290, NULL },
    { {   1187,    181,   1007 },    605, kakusiana_room_7DL_0015C0, NULL },
    { {   1195,    301,    818 },    443, kakusiana_room_7DL_001B88, NULL },
};

s32 kakusiana_room_7_terminatorMaybe_0000FC = { 0x01000000 };

Vtx kakusiana_room_7Vtx_000100[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_7Vtx_000100.vtx.inc"
};

Gfx kakusiana_room_7DL_000290[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_7Vtx_000100[17], 8, 0),
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
    gsSPVertex(kakusiana_room_7Vtx_000100, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 2, 1, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 6, 4, 3, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(8, 10, 9, 0, 11, 10, 8, 0),
    gsSP2Triangles(11, 8, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(5, 14, 2, 0, 15, 16, 2, 0),
    gsSP2Triangles(15, 2, 14, 0, 12, 16, 15, 0),
    gsSP1Triangle(12, 15, 13, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_7Vtx_000388[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_7Vtx_000388.vtx.inc"
};

Gfx kakusiana_room_7DL_0006C8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_7Vtx_000388[44], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_7Tex_002B60, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_7Vtx_000388, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(6, 5, 2, 0, 7, 6, 2, 0),
    gsSP2Triangles(8, 7, 2, 0, 9, 8, 2, 0),
    gsSP2Triangles(10, 9, 2, 0, 2, 1, 11, 0),
    gsSP2Triangles(2, 11, 12, 0, 10, 2, 12, 0),
    gsSP2Triangles(3, 13, 0, 0, 0, 14, 15, 0),
    gsSP2Triangles(0, 15, 1, 0, 0, 16, 14, 0),
    gsSP2Triangles(0, 13, 16, 0, 13, 17, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_7Tex_002160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&kakusiana_room_7Vtx_000388[18], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 4, 5, 6, 0),
    gsSP2Triangles(5, 7, 3, 0, 5, 3, 6, 0),
    gsSP2Triangles(0, 8, 1, 0, 8, 9, 1, 0),
    gsSP2Triangles(8, 10, 9, 0, 9, 4, 1, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 4, 13, 0, 11, 14, 15, 0),
    gsSP2Triangles(11, 15, 16, 0, 15, 4, 16, 0),
    gsSP2Triangles(14, 17, 18, 0, 14, 18, 15, 0),
    gsSP2Triangles(18, 4, 15, 0, 17, 19, 20, 0),
    gsSP2Triangles(17, 20, 21, 0, 20, 4, 21, 0),
    gsSP2Triangles(19, 22, 23, 0, 19, 23, 24, 0),
    gsSP2Triangles(23, 4, 24, 0, 22, 7, 5, 0),
    gsSP2Triangles(22, 5, 25, 0, 5, 4, 25, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_7Vtx_000880[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_7Vtx_000880.vtx.inc"
};

Gfx kakusiana_room_7DL_000960[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_7Vtx_000880[6], 8, 0),
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
    gsSPVertex(kakusiana_room_7Vtx_000880, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_7Vtx_0009E8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_7Vtx_0009E8.vtx.inc"
};

Gfx kakusiana_room_7DL_000B28[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_7Vtx_0009E8[12], 8, 0),
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
    gsSPVertex(kakusiana_room_7Vtx_0009E8, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(3, 2, 11, 0, 3, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_7Vtx_000BD0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_7Vtx_000BD0.vtx.inc"
};

Gfx kakusiana_room_7DL_0015C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_7Vtx_000BD0[151], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x36B0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_7Tex_002960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_7Vtx_000BD0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&kakusiana_room_7Vtx_000BD0[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 3, 1, 0),
    gsSP2Triangles(5, 1, 0, 0, 6, 5, 0, 0),
    gsSP2Triangles(5, 7, 3, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 8, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 14, 13, 0),
    gsSP2Triangles(18, 19, 17, 0, 20, 21, 18, 0),
    gsSP2Triangles(22, 21, 20, 0, 23, 24, 22, 0),
    gsSP2Triangles(25, 24, 23, 0, 26, 27, 25, 0),
    gsSP2Triangles(28, 29, 26, 0, 10, 9, 30, 0),
    gsSPVertex(&kakusiana_room_7Vtx_000BD0[34], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 8, 7, 0, 9, 11, 12, 0),
    gsSP2Triangles(12, 11, 4, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 17, 18, 16, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 18, 0),
    gsSP2Triangles(22, 23, 20, 0, 24, 25, 23, 0),
    gsSP2Triangles(24, 26, 25, 0, 3, 1, 26, 0),
    gsSP2Triangles(0, 27, 1, 0, 0, 28, 27, 0),
    gsSP2Triangles(29, 30, 28, 0, 29, 5, 30, 0),
    gsSP2Triangles(4, 31, 5, 0, 11, 31, 4, 0),
    gsSPVertex(&kakusiana_room_7Vtx_000BD0[66], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 3, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 10, 6, 8, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
    gsSP2Triangles(15, 11, 13, 0, 16, 8, 7, 0),
    gsSP2Triangles(17, 16, 7, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 18, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 23, 25, 0),
    gsSP2Triangles(27, 28, 14, 0, 28, 26, 14, 0),
    gsSP1Triangle(29, 27, 30, 0),
    gsSPVertex(&kakusiana_room_7Vtx_000BD0[97], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 4, 5, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 7, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 11, 14, 0, 10, 16, 17, 0),
    gsSP2Triangles(10, 17, 18, 0, 10, 18, 19, 0),
    gsSP2Triangles(7, 10, 19, 0, 13, 12, 20, 0),
    gsSP2Triangles(13, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 22, 24, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 28, 29, 0, 24, 23, 26, 0),
    gsSP2Triangles(24, 26, 29, 0, 28, 27, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&kakusiana_room_7Vtx_000BD0[129], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(0, 6, 7, 0, 1, 0, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(21, 20, 9, 0, 21, 9, 8, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_7Vtx_001838[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_7Vtx_001838.vtx.inc"
};

Gfx kakusiana_room_7DL_001B88[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_7Vtx_001838[45], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_7Tex_002160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_7Vtx_001838, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_7Tex_001D60, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_7Vtx_001838[21], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_7Tex_002160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_7Vtx_001838[41], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_7_unaccounted_001D28[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xC8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x09, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0x28, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x15, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1B, 0x88, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_7Tex_001D60[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_7Tex_001D60.rgba16.inc.c"
};

u64 kakusiana_room_7Tex_002160[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_7Tex_002160.rgba16.inc.c"
};

u64 kakusiana_room_7Tex_002960[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_7Tex_002960.rgba16.inc.c"
};

u64 kakusiana_room_7Tex_002B60[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_7Tex_002B60.i8.inc.c"
};

Vtx kakusiana_room_7Vtx_003B60[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_7Vtx_003B60.vtx.inc"
};

Gfx kakusiana_room_7DL_003D60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_7Vtx_003B60[24], 8, 0),
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
    gsSPVertex(kakusiana_room_7Vtx_003B60, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_7Vtx_003E48[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_7Vtx_003E48.vtx.inc"
};

Gfx kakusiana_room_7DL_003F28[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_7Vtx_003E48[6], 8, 0),
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
    gsSPVertex(kakusiana_room_7Vtx_003E48, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_7_unaccounted_003FB0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3D, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3F, 0x28, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

