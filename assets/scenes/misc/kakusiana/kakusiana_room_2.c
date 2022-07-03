#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "kakusiana_room_2.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "kakusiana_scene.h"
#include "kakusiana_room_0.h"
#include "kakusiana_room_1.h"
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

SceneCmd kakusiana_room_2Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&kakusiana_room_2PolygonType2_000080),
    SCENE_CMD_OBJECT_LIST(3, kakusiana_room_2ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(3, kakusiana_room_2ActorList_000048),
    SCENE_CMD_END(),
};

s16 kakusiana_room_2ObjectList_000040[] = {
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
    OBJECT_RD,
};

ActorEntry kakusiana_room_2ActorList_000048[] = {
    { ACTOR_EN_RD,  {   1693,      1,   -437 }, {      0,  0XFA5,      0 }, 0x7F02 },
    { ACTOR_EN_RD,  {   1930,      1,   -445 }, {      0, 0XE222,      0 }, 0x7F01 },
    { ACTOR_EN_BOX, {   1807,      1,   -343 }, {      0, 0X8000,      0 }, 0x7ACA },
};

u8 kakusiana_room_2_possiblePadding_000078[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 kakusiana_room_2PolygonType2_000080 = { 
    2, 5,
    kakusiana_room_2PolygonDlist2_00008C,
    kakusiana_room_2PolygonDlist2_00008C + ARRAY_COUNTU(kakusiana_room_2PolygonDlist2_00008C)
};

PolygonDlist2 kakusiana_room_2PolygonDlist2_00008C[5] = {
    { {   1823,    245,    149 },    238, NULL, kakusiana_room_2DL_002650 },
    { {   1820,      0,   -134 },    434, kakusiana_room_2DL_000F70, NULL },
    { {   1823,     10,    149 },     40, kakusiana_room_2DL_0011B0, NULL },
    { {   1823,    490,    149 },     41, kakusiana_room_2DL_001378, kakusiana_room_2DL_002818 },
    { {   1820,    240,   -142 },    532, kakusiana_room_2DL_000A20, NULL },
};

s32 kakusiana_room_2_terminatorMaybe_0000DC = { 0x01000000 };

Vtx kakusiana_room_2Vtx_0000E0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_2Vtx_0000E0.vtx.inc"
};

Gfx kakusiana_room_2DL_000A20[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_2Vtx_0000E0[140], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_2Tex_001448, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0B000000),
    gsSPVertex(kakusiana_room_2Vtx_0000E0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 4, 5, 3, 0),
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
    gsSPVertex(&kakusiana_room_2Vtx_0000E0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 1, 0, 1, 4, 5, 0),
    gsSP2Triangles(1, 5, 6, 0, 1, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 9, 8, 13, 0),
    gsSP2Triangles(9, 13, 10, 0, 13, 11, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 15, 0, 18, 15, 14, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 21, 0, 24, 21, 20, 0),
    gsSP2Triangles(26, 27, 25, 0, 26, 25, 24, 0),
    gsSP2Triangles(17, 16, 27, 0, 17, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&kakusiana_room_2Vtx_0000E0[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 0, 5, 0),
    gsSP2Triangles(0, 7, 5, 0, 8, 4, 3, 0),
    gsSP2Triangles(8, 9, 4, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 13, 11, 0, 11, 8, 12, 0),
    gsSP2Triangles(11, 9, 8, 0, 14, 15, 10, 0),
    gsSP2Triangles(15, 13, 10, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 19, 17, 0, 20, 21, 22, 0),
    gsSP2Triangles(21, 23, 24, 0, 21, 25, 23, 0),
    gsSP2Triangles(25, 26, 23, 0, 27, 16, 28, 0),
    gsSP2Triangles(27, 19, 16, 0, 29, 30, 31, 0),
    gsSPVertex(&kakusiana_room_2Vtx_0000E0[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 13, 0, 12, 14, 11, 0),
    gsSP2Triangles(12, 15, 14, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 19, 17, 0, 16, 20, 19, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 28, 26, 0),
    gsSP2Triangles(29, 30, 31, 0, 29, 31, 26, 0),
    gsSPVertex(&kakusiana_room_2Vtx_0000E0[128], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_2Vtx_000C90[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_2Vtx_000C90.vtx.inc"
};

Gfx kakusiana_room_2DL_000F70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_2Vtx_000C90[38], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_2Tex_001C48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
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
    gsSPVertex(kakusiana_room_2Vtx_000C90, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(1, 6, 7, 0, 1, 7, 8, 0),
    gsSP2Triangles(7, 9, 4, 0, 7, 4, 8, 0),
    gsSP2Triangles(6, 10, 11, 0, 6, 11, 12, 0),
    gsSP2Triangles(11, 13, 9, 0, 11, 9, 12, 0),
    gsSP2Triangles(10, 14, 15, 0, 10, 15, 16, 0),
    gsSP2Triangles(15, 17, 13, 0, 15, 13, 16, 0),
    gsSP2Triangles(18, 3, 19, 0, 3, 20, 19, 0),
    gsSP2Triangles(3, 21, 20, 0, 18, 22, 3, 0),
    gsSP2Triangles(22, 0, 3, 0, 3, 5, 21, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 26, 24, 0),
    gsSP2Triangles(24, 27, 25, 0, 26, 28, 24, 0),
    gsSP2Triangles(28, 29, 24, 0, 14, 30, 31, 0),
    gsSP1Triangle(30, 17, 31, 0),
    gsSPVertex(&kakusiana_room_2Vtx_000C90[32], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP1Triangle(0, 5, 1, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_2Vtx_0010D0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_2Vtx_0010D0.vtx.inc"
};

Gfx kakusiana_room_2DL_0011B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_2Vtx_0010D0[6], 8, 0),
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
    gsSPVertex(kakusiana_room_2Vtx_0010D0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_2Vtx_001238[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_2Vtx_001238.vtx.inc"
};

Gfx kakusiana_room_2DL_001378[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_2Vtx_001238[12], 8, 0),
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
    gsSPVertex(kakusiana_room_2Vtx_001238, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(3, 2, 11, 0, 3, 11, 10, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_2_unaccounted_001420[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0F, 0x70, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x11, 0xB0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0x78, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_2Tex_001448[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_2Tex_001448.rgba16.inc.c"
};

u64 kakusiana_room_2Tex_001C48[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_2Tex_001C48.rgba16.inc.c"
};

u8 kakusiana_room_2_possiblePadding_002448[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx kakusiana_room_2Vtx_002450[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_2Vtx_002450.vtx.inc"
};

Gfx kakusiana_room_2DL_002650[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_2Vtx_002450[24], 8, 0),
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
    gsSPVertex(kakusiana_room_2Vtx_002450, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_2Vtx_002738[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_2Vtx_002738.vtx.inc"
};

Gfx kakusiana_room_2DL_002818[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_2Vtx_002738[6], 8, 0),
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
    gsSPVertex(kakusiana_room_2Vtx_002738, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_2_unaccounted_0028A0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x26, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x28, 0x18, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

