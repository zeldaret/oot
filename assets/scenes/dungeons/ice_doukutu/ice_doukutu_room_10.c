#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ice_doukutu_room_10.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ice_doukutu_scene.h"
#include "ice_doukutu_room_0.h"
#include "ice_doukutu_room_1.h"
#include "ice_doukutu_room_2.h"
#include "ice_doukutu_room_3.h"
#include "ice_doukutu_room_4.h"
#include "ice_doukutu_room_5.h"
#include "ice_doukutu_room_6.h"
#include "ice_doukutu_room_7.h"
#include "ice_doukutu_room_8.h"
#include "ice_doukutu_room_9.h"
#include "ice_doukutu_room_11.h"

SceneCmd ice_doukutu_room_10Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(ice_doukutu_room_10AlternateHeaders0x000040),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ice_doukutu_room_10PolygonType0_000070),
    SCENE_CMD_OBJECT_LIST(13, ice_doukutu_room_10ObjectList_000050),
    SCENE_CMD_END(),
};

SceneCmd* ice_doukutu_room_10AlternateHeaders0x000040[] = {
    NULL,
    NULL,
    NULL,
    ice_doukutu_room_10Set_000090,
};

s16 ice_doukutu_room_10ObjectList_000050[] = {
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

u8 ice_doukutu_room_10_possiblePadding_00006C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 ice_doukutu_room_10PolygonType0_000070 = { 
    0, 1,
    ice_doukutu_room_10PolygonDlist_00007C,
    ice_doukutu_room_10PolygonDlist_00007C + ARRAY_COUNTU(ice_doukutu_room_10PolygonDlist_00007C)
};

PolygonDlist ice_doukutu_room_10PolygonDlist_00007C[1] = {
    { ice_doukutu_room_10DL_0019F8, ice_doukutu_room_10DL_003BC8 },
};

s32 ice_doukutu_room_10_terminatorMaybe_000084 = { 0x01000000 };

u8 ice_doukutu_room_10_possiblePadding_000088[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd ice_doukutu_room_10Set_000090[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&ice_doukutu_room_10PolygonType0_000070),
    SCENE_CMD_OBJECT_LIST(3, ice_doukutu_room_10ObjectList_0000C8),
    SCENE_CMD_END(),
};

s16 ice_doukutu_room_10ObjectList_0000C8[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_XC,
    OBJECT_GI_MELODY,
};

Vtx ice_doukutu_room_10Vtx_0000D0[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_10Vtx_0000D0.vtx.inc"
};

Gfx ice_doukutu_room_10DL_000390[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_10Vtx_0000D0[36], 8, 0),
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
    gsSPVertex(ice_doukutu_room_10Vtx_0000D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 6, 0),
    gsSP2Triangles(10, 6, 11, 0, 10, 4, 6, 0),
    gsSP2Triangles(6, 9, 12, 0, 6, 12, 11, 0),
    gsSP2Triangles(13, 10, 14, 0, 10, 11, 14, 0),
    gsSP2Triangles(11, 12, 15, 0, 11, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 13, 17, 0),
    gsSP2Triangles(17, 15, 19, 0, 17, 19, 18, 0),
    gsSP2Triangles(15, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 21, 24, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&ice_doukutu_room_10Vtx_0000D0[30], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_10Vtx_0004E8[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_10Vtx_0004E8.vtx.inc"
};

Gfx ice_doukutu_room_10DL_0006F8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_10Vtx_0004E8[25], 8, 0),
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
    gsSPVertex(ice_doukutu_room_10Vtx_0004E8, 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 5, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(11, 14, 13, 0, 11, 15, 14, 0),
    gsSP2Triangles(16, 4, 2, 0, 17, 16, 2, 0),
    gsSP2Triangles(1, 17, 2, 0, 18, 6, 5, 0),
    gsSP2Triangles(19, 18, 5, 0, 9, 19, 5, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP1Triangle(20, 23, 24, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_10Vtx_000830[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_10Vtx_000830.vtx.inc"
};

Gfx ice_doukutu_room_10DL_000C10[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_10Vtx_000830[54], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_10Tex_001A28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_10Vtx_000830, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 6, 7, 2, 0),
    gsSP2Triangles(7, 0, 2, 0, 8, 6, 9, 0),
    gsSP2Triangles(6, 10, 11, 0, 0, 12, 13, 0),
    gsSP2Triangles(0, 13, 1, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 17, 18, 0, 17, 16, 19, 0),
    gsSP2Triangles(16, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 3, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 27, 26, 28, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 25, 24, 0),
    gsSPVertex(&ice_doukutu_room_10Vtx_000830[31], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 0, 6, 7, 0),
    gsSP2Triangles(8, 5, 9, 0, 8, 10, 5, 0),
    gsSP2Triangles(8, 11, 10, 0, 11, 12, 10, 0),
    gsSP2Triangles(12, 13, 10, 0, 12, 14, 13, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 0, 19, 0, 21, 19, 22, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_10Vtx_000D50[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_10Vtx_000D50.vtx.inc"
};

Gfx ice_doukutu_room_10DL_000E10[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_10Vtx_000D50[4], 8, 0),
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
    gsSPVertex(ice_doukutu_room_10Vtx_000D50, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_10Vtx_000E90[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_10Vtx_000E90.vtx.inc"
};

Gfx ice_doukutu_room_10DL_001800[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_10Vtx_000E90[143], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_10Tex_002A28, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_10Vtx_000E90, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 6, 1, 0, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
    gsSP2Triangles(15, 16, 11, 0, 15, 11, 13, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 16, 0),
    gsSP2Triangles(18, 20, 21, 0, 18, 21, 19, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 22, 25, 0, 26, 25, 21, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&ice_doukutu_room_10Vtx_000E90[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 16, 13, 0, 16, 10, 13, 0),
    gsSP2Triangles(16, 11, 10, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 20, 18, 0, 18, 21, 19, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 25, 24, 0),
    gsSP2Triangles(22, 26, 23, 0, 21, 27, 19, 0),
    gsSP2Triangles(21, 28, 27, 0, 28, 26, 27, 0),
    gsSP2Triangles(26, 22, 27, 0, 29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_10Vtx_000E90[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 0, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 11, 20, 21, 0),
    gsSP2Triangles(14, 22, 23, 0, 24, 25, 26, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&ice_doukutu_room_10Vtx_000E90[93], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(9, 18, 19, 0, 12, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&ice_doukutu_room_10Vtx_000E90[124], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 6, 15, 16, 0),
    gsSP1Triangle(9, 17, 18, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_10DL_0019F8[] = {
    gsSPDisplayList(ice_doukutu_room_10DL_000390),
    gsSPDisplayList(ice_doukutu_room_10DL_0006F8),
    gsSPDisplayList(ice_doukutu_room_10DL_000C10),
    gsSPDisplayList(ice_doukutu_room_10DL_000E10),
    gsSPDisplayList(ice_doukutu_room_10DL_001800),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_10Tex_001A28[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_10Tex_001A28.rgba16.inc.c"
};

u64 ice_doukutu_room_10Tex_002A28[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_10Tex_002A28.i8.inc.c"
};

u8 ice_doukutu_room_10_possiblePadding_003A28[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ice_doukutu_room_10Vtx_003A30[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_10Vtx_003A30.vtx.inc"
};

Gfx ice_doukutu_room_10DL_003AF0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_10Vtx_003A30[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_10Tex_003BD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(ice_doukutu_room_10Vtx_003A30, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_10DL_003BC8[] = {
    gsSPDisplayList(ice_doukutu_room_10DL_003AF0),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_10Tex_003BD8[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_10Tex_003BD8.rgba16.inc.c"
};

