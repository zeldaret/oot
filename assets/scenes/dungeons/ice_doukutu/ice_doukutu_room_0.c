#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ice_doukutu_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ice_doukutu_scene.h"
#include "ice_doukutu_room_1.h"
#include "ice_doukutu_room_2.h"
#include "ice_doukutu_room_3.h"
#include "ice_doukutu_room_4.h"
#include "ice_doukutu_room_5.h"
#include "ice_doukutu_room_6.h"
#include "ice_doukutu_room_7.h"
#include "ice_doukutu_room_8.h"
#include "ice_doukutu_room_9.h"
#include "ice_doukutu_room_10.h"
#include "ice_doukutu_room_11.h"

SceneCmd ice_doukutu_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(ice_doukutu_room_0AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ice_doukutu_room_0PolygonType0_0000E0),
    SCENE_CMD_OBJECT_LIST(15, ice_doukutu_room_0ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(7, ice_doukutu_room_0ActorList_000074),
    SCENE_CMD_END(),
};

SceneCmd* ice_doukutu_room_0AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    ice_doukutu_room_0Set_000100,
};

s16 ice_doukutu_room_0ObjectList_000058[] = {
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
    OBJECT_VALI,
    OBJECT_BL,
};

ActorEntry ice_doukutu_room_0ActorList_000074[] = {
    { ACTOR_BG_ICE_TURARA,  {    324,      3,   2280 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {    287,      3,   2346 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_GOROIWA,     {    600,      4,   1829 }, {      0,      0,    0X1 }, 0x0D00 },
    { ACTOR_OBJ_TSUBO,      {    248,     10,   2287 }, {      0,      0,      0 }, 0x4003 },
    { ACTOR_EN_WONDER_ITEM, {    195,      2,   2605 }, {      0,      0,      0 }, 0x3FE8 },
    { ACTOR_EN_WONDER_ITEM, {    168,      2,   2533 }, {      0,      0,      0 }, 0x3FE8 },
    { ACTOR_EN_VALI,        {    317,    120,   2442 }, {      0,      0,      0 }, 0xFFFF },
};

u8 ice_doukutu_room_0_possiblePadding_0000D4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 ice_doukutu_room_0PolygonType0_0000E0 = { 
    0, 1,
    ice_doukutu_room_0PolygonDlist_0000EC,
    ice_doukutu_room_0PolygonDlist_0000EC + ARRAY_COUNTU(ice_doukutu_room_0PolygonDlist_0000EC)
};

PolygonDlist ice_doukutu_room_0PolygonDlist_0000EC[1] = {
    { ice_doukutu_room_0DL_002F20, ice_doukutu_room_0DL_007660 },
};

s32 ice_doukutu_room_0_terminatorMaybe_0000F4 = { 0x01000000 };

u8 ice_doukutu_room_0_possiblePadding_0000F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd ice_doukutu_room_0Set_000100[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&ice_doukutu_room_0PolygonType0_0000E0),
    SCENE_CMD_OBJECT_LIST(3, ice_doukutu_room_0ObjectList_000138),
    SCENE_CMD_END(),
};

s16 ice_doukutu_room_0ObjectList_000138[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_XC,
    OBJECT_GI_MELODY,
};

Vtx ice_doukutu_room_0Vtx_000140[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_0Vtx_000140.vtx.inc"
};

Gfx ice_doukutu_room_0DL_000350[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_0Vtx_000140[25], 8, 0),
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
    gsSPVertex(ice_doukutu_room_0Vtx_000140, 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 4, 8, 0),
    gsSP2Triangles(5, 8, 6, 0, 4, 9, 8, 0),
    gsSP2Triangles(7, 6, 10, 0, 6, 11, 10, 0),
    gsSP2Triangles(6, 8, 12, 0, 6, 12, 11, 0),
    gsSP2Triangles(8, 9, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(17, 18, 15, 0, 16, 15, 19, 0),
    gsSP2Triangles(16, 19, 20, 0, 15, 18, 19, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_0Vtx_000498[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_0Vtx_000498.vtx.inc"
};

Gfx ice_doukutu_room_0DL_001038[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_0Vtx_000498[178], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_0Tex_005750, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_0Vtx_000498, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 21, 0),
    gsSP2Triangles(21, 25, 26, 0, 21, 24, 25, 0),
    gsSP2Triangles(22, 26, 27, 0, 22, 21, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 31, 29, 0),
    gsSPVertex(&ice_doukutu_room_0Vtx_000498[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 2, 5, 0, 2, 3, 6, 0),
    gsSP2Triangles(2, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 12, 15, 14, 0),
    gsSP2Triangles(16, 17, 7, 0, 7, 17, 8, 0),
    gsSP2Triangles(16, 18, 17, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 22, 21, 0, 20, 23, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 22, 0),
    gsSP2Triangles(26, 11, 27, 0, 26, 28, 12, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_0Vtx_000498[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 18, 17, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 29, 30, 0, 9, 13, 31, 0),
    gsSPVertex(&ice_doukutu_room_0Vtx_000498[96], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_0Tex_004750, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_0Vtx_000498[99], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_0Tex_003F50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_0Vtx_000498[115], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_0Vtx_000498[119], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_0Tex_005750, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_0Vtx_000498[125], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_0Tex_004750, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_0Vtx_000498[129], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_0Tex_003F50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_0Vtx_000498[149], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_0Tex_004750, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_0Vtx_000498[153], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_0Tex_003F50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_0Vtx_000498[165], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_0Tex_004750, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_0Vtx_000498[169], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0),
    gsSP1Triangle(5, 7, 8, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_0Vtx_001510[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_0Vtx_001510.vtx.inc"
};

Gfx ice_doukutu_room_0DL_001BA0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_0Vtx_001510[97], 8, 0),
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
    gsSPVertex(ice_doukutu_room_0Vtx_001510, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 8, 10, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(17, 20, 21, 0, 17, 21, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(23, 26, 27, 0, 23, 27, 24, 0),
    gsSP2Triangles(19, 18, 28, 0, 19, 28, 29, 0),
    gsSP2Triangles(18, 21, 30, 0, 18, 30, 28, 0),
    gsSPVertex(&ice_doukutu_room_0Vtx_001510[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(7, 10, 9, 0, 7, 11, 10, 0),
    gsSP2Triangles(12, 13, 1, 0, 12, 1, 0, 0),
    gsSP2Triangles(13, 14, 4, 0, 13, 4, 1, 0),
    gsSP2Triangles(8, 9, 15, 0, 8, 15, 16, 0),
    gsSP2Triangles(9, 10, 17, 0, 9, 17, 15, 0),
    gsSP2Triangles(18, 19, 13, 0, 18, 13, 12, 0),
    gsSP2Triangles(19, 14, 13, 0, 19, 20, 14, 0),
    gsSP2Triangles(16, 15, 21, 0, 16, 21, 22, 0),
    gsSP2Triangles(15, 17, 23, 0, 15, 23, 21, 0),
    gsSP2Triangles(24, 25, 19, 0, 24, 19, 18, 0),
    gsSP2Triangles(25, 26, 20, 0, 25, 20, 19, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&ice_doukutu_room_0Vtx_001510[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(16, 17, 5, 0, 16, 5, 4, 0),
    gsSP2Triangles(17, 18, 8, 0, 17, 8, 5, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(19, 22, 23, 0, 24, 19, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 25, 27, 0),
    gsSP1Triangle(28, 27, 29, 0),
    gsSPVertex(&ice_doukutu_room_0Vtx_001510[92], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(3, 2, 4, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_0Vtx_001DE8[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_0Vtx_001DE8.vtx.inc"
};

Gfx ice_doukutu_room_0DL_001ED8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_0Vtx_001DE8[7], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_0Tex_002F50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_0Vtx_001DE8, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 5, 6, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_0Vtx_001F98[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_0Vtx_001F98.vtx.inc"
};

Gfx ice_doukutu_room_0DL_002C98[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_0Vtx_001F98[200], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_0Tex_005F50, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_0Vtx_001F98, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(3, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 12, 18, 19, 0),
    gsSP2Triangles(12, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 30, 28, 0),
    gsSPVertex(&ice_doukutu_room_0Vtx_001F98[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 9, 10, 0, 6, 10, 11, 0),
    gsSP2Triangles(6, 11, 7, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 16, 19, 13, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_0Vtx_001F98[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 9, 10, 0),
    gsSP2Triangles(3, 11, 9, 0, 3, 5, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 30, 28, 0, 27, 31, 30, 0),
    gsSPVertex(&ice_doukutu_room_0Vtx_001F98[95], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 6, 0),
    gsSP2Triangles(5, 11, 6, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 13, 19, 20, 0),
    gsSP2Triangles(13, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP1Triangle(25, 28, 29, 0),
    gsSPVertex(&ice_doukutu_room_0Vtx_001F98[125], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 15, 0, 16, 18, 17, 0),
    gsSP2Triangles(12, 14, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 23, 21, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 25, 0),
    gsSP2Triangles(28, 25, 24, 0, 30, 31, 29, 0),
    gsSP1Triangle(30, 29, 28, 0),
    gsSPVertex(&ice_doukutu_room_0Vtx_001F98[157], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 11, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
    gsSP2Triangles(26, 27, 28, 0, 22, 29, 30, 0),
    gsSPVertex(&ice_doukutu_room_0Vtx_001F98[188], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP1Triangle(3, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_0DL_002F20[] = {
    gsSPDisplayList(ice_doukutu_room_0DL_000350),
    gsSPDisplayList(ice_doukutu_room_0DL_001038),
    gsSPDisplayList(ice_doukutu_room_0DL_001BA0),
    gsSPDisplayList(ice_doukutu_room_0DL_001ED8),
    gsSPDisplayList(ice_doukutu_room_0DL_002C98),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_0Tex_002F50[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_0Tex_002F50.rgba16.inc.c"
};

u64 ice_doukutu_room_0Tex_003F50[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_0Tex_003F50.rgba16.inc.c"
};

u64 ice_doukutu_room_0Tex_004750[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_0Tex_004750.rgba16.inc.c"
};

u64 ice_doukutu_room_0Tex_005750[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_0Tex_005750.rgba16.inc.c"
};

u64 ice_doukutu_room_0Tex_005F50[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_0Tex_005F50.i8.inc.c"
};

Vtx ice_doukutu_room_0Vtx_006F50[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_0Vtx_006F50.vtx.inc"
};

Gfx ice_doukutu_room_0DL_0071E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_0Vtx_006F50[33], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_0Tex_007678, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_0Vtx_006F50, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(0, 2, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 13, 16, 0),
    gsSP2Triangles(18, 17, 19, 0, 20, 16, 19, 0),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA_PRIM, G_CC_PASS2),
    gsSPVertex(&ice_doukutu_room_0Vtx_006F50[21], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_0Vtx_006F50[24], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 0, 5, 3, 0),
    gsSP2Triangles(0, 6, 5, 0, 0, 7, 6, 0),
    gsSP1Triangle(0, 8, 7, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_0Vtx_007310[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_0Vtx_007310.vtx.inc"
};

Gfx ice_doukutu_room_0DL_007570[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_0Vtx_007310[30], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_16b, 64, 4, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 6, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_0Vtx_007310, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 24, 27, 0, 28, 27, 29, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_0DL_007660[] = {
    gsSPDisplayList(ice_doukutu_room_0DL_0071E0),
    gsSPDisplayList(ice_doukutu_room_0DL_007570),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_0Tex_007678[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_0Tex_007678.i8.inc.c"
};

