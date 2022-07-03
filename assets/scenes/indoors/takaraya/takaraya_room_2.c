#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "takaraya_room_2.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "takaraya_scene.h"
#include "takaraya_room_0.h"
#include "takaraya_room_1.h"
#include "takaraya_room_3.h"
#include "takaraya_room_4.h"
#include "takaraya_room_5.h"
#include "takaraya_room_6.h"

SceneCmd takaraya_room_2Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x02, 0x00, true, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&takaraya_room_2PolygonType0_000090),
    SCENE_CMD_OBJECT_LIST(6, takaraya_room_2ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(4, takaraya_room_2ActorList_00004C),
    SCENE_CMD_END(),
};

s16 takaraya_room_2ObjectList_000040[] = {
    OBJECT_BOX,
    OBJECT_TS,
    OBJECT_GI_HEARTS,
    OBJECT_GI_KEY,
    OBJECT_GI_RUPY,
    OBJECT_DOG,
};

ActorEntry takaraya_room_2ActorList_00004C[] = {
    { ACTOR_EN_LIGHT,   {     88,     78,   -849 }, {      0,      0,      0 }, 0x03F5 },
    { ACTOR_EN_LIGHT,   {     88,     78,   -849 }, {      0,      0,      0 }, 0x03F5 },
    { ACTOR_EN_LIGHT,   {    -67,     78,   -849 }, {      0,      0,      0 }, 0x03F5 },
    { ACTOR_EN_CHANGER, {     17,     20,   -679 }, {      0,      0,      0 }, 0x0000 },
};

u8 takaraya_room_2_possiblePadding_00008C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 takaraya_room_2PolygonType0_000090 = { 
    0, 1,
    takaraya_room_2PolygonDlist_00009C,
    takaraya_room_2PolygonDlist_00009C + ARRAY_COUNTU(takaraya_room_2PolygonDlist_00009C)
};

PolygonDlist takaraya_room_2PolygonDlist_00009C[1] = {
    { takaraya_room_2DL_001800, NULL },
};

s32 takaraya_room_2_terminatorMaybe_0000A4 = { 0x01000000 };

u8 takaraya_room_2_possiblePadding_0000A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx takaraya_room_2Vtx_0000B0[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_2Vtx_0000B0.vtx.inc"
};

Gfx takaraya_room_2DL_000230[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_2Vtx_0000B0[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(takaraya_sceneTex_0059B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(takaraya_room_2Vtx_0000B0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 9, 8, 0, 13, 8, 14, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 15, 0),
    gsSPEndDisplayList(),
};

Vtx takaraya_room_2Vtx_000310[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_2Vtx_000310.vtx.inc"
};

Gfx takaraya_room_2DL_000BF0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_2Vtx_000310[134], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(takaraya_sceneTex_0061B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(takaraya_room_2Vtx_000310, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 6, 13, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(takaraya_sceneTex_0051B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&takaraya_room_2Vtx_000310[23], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 11, 10, 0, 12, 10, 13, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 23, 22, 0, 24, 22, 25, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&takaraya_room_2Vtx_000310[55], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&takaraya_room_2Vtx_000310[86], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 5, 21, 22, 0),
    gsSP2Triangles(21, 8, 23, 0, 9, 11, 24, 0),
    gsSP2Triangles(22, 21, 23, 0, 11, 12, 25, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(24, 11, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 28, 29, 0, 26, 29, 30, 0),
    gsSP1Triangle(26, 30, 31, 0),
    gsSPVertex(&takaraya_room_2Vtx_000310[118], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx takaraya_room_2Vtx_000E40[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_2Vtx_000E40.vtx.inc"
};

Gfx takaraya_room_2DL_001040[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_2Vtx_000E40[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(takaraya_room_2Tex_001828, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(takaraya_room_2Vtx_000E40, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 1, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 15, 14, 0, 17, 16, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 18, 0),
    gsSP2Triangles(18, 20, 23, 0, 21, 18, 23, 0),
    gsSPEndDisplayList(),
};

Vtx takaraya_room_2Vtx_001130[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_2Vtx_001130.vtx.inc"
};

Gfx takaraya_room_2DL_001680[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_2Vtx_001130[77], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(takaraya_sceneTex_0069B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 132, 224, 169, 255),
    gsSPVertex(takaraya_room_2Vtx_001130, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(6, 7, 2, 0, 6, 2, 1, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(8, 24, 25, 0, 8, 25, 9, 0),
    gsSP2Triangles(24, 26, 27, 0, 24, 27, 25, 0),
    gsSP2Triangles(26, 11, 10, 0, 26, 10, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&takaraya_room_2Vtx_001130[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 13, 14, 0),
    gsSP2Triangles(7, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 17, 21, 18, 0),
    gsSP2Triangles(21, 20, 18, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 24, 0, 27, 28, 24, 0),
    gsSP1Triangle(29, 30, 24, 0),
    gsSPVertex(&takaraya_room_2Vtx_001130[62], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 0, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(10, 14, 11, 0, 14, 13, 11, 0),
    gsSPEndDisplayList(),
};

Gfx takaraya_room_2DL_001800[] = {
    gsSPDisplayList(takaraya_room_2DL_000230),
    gsSPDisplayList(takaraya_room_2DL_000BF0),
    gsSPDisplayList(takaraya_room_2DL_001040),
    gsSPDisplayList(takaraya_room_2DL_001680),
    gsSPEndDisplayList(),
};

u64 takaraya_room_2Tex_001828[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_2Tex_001828.rgba16.inc.c"
};

