#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ice_doukutu_room_2.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ice_doukutu_scene.h"
#include "ice_doukutu_room_0.h"
#include "ice_doukutu_room_1.h"
#include "ice_doukutu_room_3.h"
#include "ice_doukutu_room_4.h"
#include "ice_doukutu_room_5.h"
#include "ice_doukutu_room_6.h"
#include "ice_doukutu_room_7.h"
#include "ice_doukutu_room_8.h"
#include "ice_doukutu_room_9.h"
#include "ice_doukutu_room_10.h"
#include "ice_doukutu_room_11.h"

SceneCmd ice_doukutu_room_2Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(ice_doukutu_room_2AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ice_doukutu_room_2PolygonType0_0000E0),
    SCENE_CMD_OBJECT_LIST(13, ice_doukutu_room_2ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(6, ice_doukutu_room_2ActorList_000074),
    SCENE_CMD_END(),
};

SceneCmd* ice_doukutu_room_2AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    ice_doukutu_room_2Set_000100,
};

s16 ice_doukutu_room_2ObjectList_000058[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_TITE,
    OBJECT_GOROIWA,
    OBJECT_FZ,
    OBJECT_DEMO_KEKKAI,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_WF,
    OBJECT_BOX,
    OBJECT_KA,
    OBJECT_FIREFLY,
};

ActorEntry ice_doukutu_room_2ActorList_000074[] = {
    { ACTOR_BG_ICE_TURARA, {   -288,     12,    402 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA, {   -212,     13,    398 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA, {   -351,     11,    423 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA, {   -258,     11,    461 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_GOROIWA,    {    298,    451,     64 }, {      0,      0,    0X1 }, 0x0D01 },
    { ACTOR_BG_ICE_TURARA, {    -19,     13,    193 }, {      0,      0,      0 }, 0x0000 },
};

u8 ice_doukutu_room_2_possiblePadding_0000D4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 ice_doukutu_room_2PolygonType0_0000E0 = { 
    0, 1,
    ice_doukutu_room_2PolygonDlist_0000EC,
    ice_doukutu_room_2PolygonDlist_0000EC + ARRAY_COUNTU(ice_doukutu_room_2PolygonDlist_0000EC)
};

PolygonDlist ice_doukutu_room_2PolygonDlist_0000EC[1] = {
    { ice_doukutu_room_2DL_001700, ice_doukutu_room_2DL_003AD8 },
};

s32 ice_doukutu_room_2_terminatorMaybe_0000F4 = { 0x01000000 };

u8 ice_doukutu_room_2_possiblePadding_0000F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd ice_doukutu_room_2Set_000100[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&ice_doukutu_room_2PolygonType0_0000E0),
    SCENE_CMD_OBJECT_LIST(3, ice_doukutu_room_2ObjectList_000138),
    SCENE_CMD_END(),
};

s16 ice_doukutu_room_2ObjectList_000138[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_XC,
    OBJECT_GI_MELODY,
};

Vtx ice_doukutu_room_2Vtx_000140[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_2Vtx_000140.vtx.inc"
};

Gfx ice_doukutu_room_2DL_000430[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_2Vtx_000140[39], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010AC0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPLoadMultiBlock(ice_doukutu_sceneTex_00FCC0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_2Vtx_000140, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 2, 4, 0, 2, 3, 5, 0),
    gsSP2Triangles(2, 5, 4, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(0, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(11, 5, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 7, 0, 15, 17, 16, 0),
    gsSP2Triangles(15, 18, 17, 0, 17, 19, 16, 0),
    gsSP2Triangles(10, 20, 9, 0, 20, 21, 9, 0),
    gsSP2Triangles(21, 6, 9, 0, 7, 16, 8, 0),
    gsSP2Triangles(16, 22, 8, 0, 22, 10, 8, 0),
    gsSP2Triangles(16, 19, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 24, 27, 25, 0),
    gsSP1Triangle(28, 25, 29, 0),
    gsSPVertex(&ice_doukutu_room_2Vtx_000140[30], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 8, 0),
    gsSP1Triangle(4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_2Vtx_0005A8[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_2Vtx_0005A8.vtx.inc"
};

Gfx ice_doukutu_room_2DL_000E48[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_2Vtx_0005A8[130], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_0100C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(ice_doukutu_sceneTex_00FCC0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_2Vtx_0005A8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 7, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 11, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 18, 0),
    gsSP2Triangles(18, 17, 19, 0, 21, 22, 15, 0),
    gsSP2Triangles(23, 11, 13, 0, 21, 15, 11, 0),
    gsSP2Triangles(23, 24, 11, 0, 24, 21, 11, 0),
    gsSP2Triangles(25, 26, 27, 0, 26, 28, 27, 0),
    gsSP1Triangle(28, 29, 27, 0),
    gsSPVertex(&ice_doukutu_room_2Vtx_0005A8[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(2, 1, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 8, 9, 6, 0),
    gsSP2Triangles(6, 10, 7, 0, 9, 11, 6, 0),
    gsSP2Triangles(11, 12, 6, 0, 12, 10, 6, 0),
    gsSP2Triangles(13, 10, 14, 0, 13, 7, 10, 0),
    gsSP2Triangles(13, 15, 7, 0, 15, 5, 7, 0),
    gsSP2Triangles(16, 14, 17, 0, 16, 13, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 31, 29, 0),
    gsSP1Triangle(28, 23, 31, 0),
    gsSPVertex(&ice_doukutu_room_2Vtx_0005A8[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 0, 7, 1, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 7, 0, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(12, 16, 13, 0, 12, 17, 16, 0),
    gsSP2Triangles(18, 15, 19, 0, 18, 14, 15, 0),
    gsSP2Triangles(18, 12, 14, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 29, 27, 0, 30, 26, 28, 0),
    gsSP1Triangle(30, 31, 26, 0),
    gsSPVertex(&ice_doukutu_room_2Vtx_0005A8[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 3, 5, 0),
    gsSP2Triangles(7, 8, 3, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 11, 19, 0, 15, 20, 16, 0),
    gsSP2Triangles(18, 9, 11, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 24, 23, 0, 2, 25, 26, 0),
    gsSP2Triangles(25, 27, 26, 0, 11, 10, 14, 0),
    gsSP2Triangles(10, 12, 14, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_2Vtx_0005A8[126], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_2Vtx_0010B0[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_2Vtx_0010B0.vtx.inc"
};

Gfx ice_doukutu_room_2DL_0011E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_2Vtx_0010B0[11], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010EC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_2Vtx_0010B0, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 4, 0, 0, 4, 5, 0, 0),
    gsSP2Triangles(4, 6, 5, 0, 4, 7, 8, 0),
    gsSP2Triangles(4, 8, 6, 0, 8, 9, 6, 0),
    gsSP1Triangle(8, 10, 9, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_2Vtx_0012B8[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_2Vtx_0012B8.vtx.inc"
};

Gfx ice_doukutu_room_2DL_0013A8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_2Vtx_0012B8[7], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_2Tex_001730, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_2Vtx_0012B8, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 1, 6, 3, 0),
    gsSP1Triangle(1, 4, 6, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_2Vtx_001470[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_2Vtx_001470.vtx.inc"
};

Gfx ice_doukutu_room_2DL_0015D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_2Vtx_001470[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(ice_doukutu_room_2Tex_002730, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, ice_doukutu_sceneTLUT_00F8A0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_2Vtx_001470, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 0, 5, 6, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_2Vtx_001470[7], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_2Vtx_001470[11], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_2DL_001700[] = {
    gsSPDisplayList(ice_doukutu_room_2DL_000430),
    gsSPDisplayList(ice_doukutu_room_2DL_000E48),
    gsSPDisplayList(ice_doukutu_room_2DL_0011E0),
    gsSPDisplayList(ice_doukutu_room_2DL_0013A8),
    gsSPDisplayList(ice_doukutu_room_2DL_0015D0),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_2Tex_001730[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_2Tex_001730.rgba16.inc.c"
};

u64 ice_doukutu_room_2Tex_002730[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_2Tex_002730.ci4.inc.c"
};

Vtx ice_doukutu_room_2Vtx_002F30[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_2Vtx_002F30.vtx.inc"
};

Gfx ice_doukutu_room_2DL_0035C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_2Vtx_002F30[97], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_2Tex_003AF8, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_2Vtx_002F30, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 9, 10, 0),
    gsSP2Triangles(6, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 13, 16, 0, 17, 14, 16, 0),
    gsSP2Triangles(18, 14, 17, 0, 15, 14, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(19, 25, 26, 0, 22, 27, 28, 0),
    gsSP1Triangle(22, 28, 29, 0),
    gsSPVertex(&ice_doukutu_room_2Vtx_002F30[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 3, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(16, 22, 23, 0, 19, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_2Vtx_002F30[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 8, 14, 15, 0),
    gsSP2Triangles(11, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 24, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_2Vtx_002F30[94], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_2Vtx_003730[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_2Vtx_003730.vtx.inc"
};

Gfx ice_doukutu_room_2DL_0037F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_2Vtx_003730[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_2Tex_004AF8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 153),
    gsSPVertex(ice_doukutu_room_2Vtx_003730, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_2Vtx_0038A8[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_2Vtx_0038A8.vtx.inc"
};

Gfx ice_doukutu_room_2DL_003A08[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_2Vtx_0038A8[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_2Tex_003AF8, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_2Vtx_0038A8, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 0, 2, 0),
    gsSP2Triangles(5, 2, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_2DL_003AD8[] = {
    gsSPDisplayList(ice_doukutu_room_2DL_0035C0),
    gsSPDisplayList(ice_doukutu_room_2DL_0037F0),
    gsSPDisplayList(ice_doukutu_room_2DL_003A08),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_2Tex_003AF8[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_2Tex_003AF8.i8.inc.c"
};

u64 ice_doukutu_room_2Tex_004AF8[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_2Tex_004AF8.rgba16.inc.c"
};

