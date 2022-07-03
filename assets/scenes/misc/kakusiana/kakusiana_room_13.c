#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "kakusiana_room_13.h"
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
#include "kakusiana_room_7.h"
#include "kakusiana_room_8.h"
#include "kakusiana_room_9.h"
#include "kakusiana_room_10.h"
#include "kakusiana_room_11.h"
#include "kakusiana_room_12.h"

SceneCmd kakusiana_room_13Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&kakusiana_room_13PolygonType2_000070),
    SCENE_CMD_OBJECT_LIST(1, kakusiana_room_13ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(2, kakusiana_room_13ActorList_000044),
    SCENE_CMD_END(),
};

s16 kakusiana_room_13ObjectList_000040[] = {
    OBJECT_ST,
};

ActorEntry kakusiana_room_13ActorList_000044[] = {
    { ACTOR_EN_ST, {    624,    343,   -372 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_SW, {    746,    140,   -492 }, { 0X4000, 0XD555,      0 }, 0x8B02 },
};

u8 kakusiana_room_13_possiblePadding_000064[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 kakusiana_room_13PolygonType2_000070 = { 
    2, 8,
    kakusiana_room_13PolygonDlist2_00007C,
    kakusiana_room_13PolygonDlist2_00007C + ARRAY_COUNTU(kakusiana_room_13PolygonDlist2_00007C)
};

PolygonDlist2 kakusiana_room_13PolygonDlist2_00007C[8] = {
    { {    623,    245,    149 },    238, NULL, kakusiana_room_13DL_004350 },
    { {    629,    -26,   -134 },    435, kakusiana_room_13DL_000FF8, NULL },
    { {    624,    139,   -373 },    273, NULL, kakusiana_room_13DL_004C50 },
    { {    623,     10,    149 },     40, kakusiana_room_13DL_001208, NULL },
    { {    623,    490,    149 },     41, kakusiana_room_13DL_0013D0, kakusiana_room_13DL_004518 },
    { {    620,    311,   -142 },    504, kakusiana_room_13DL_000C08, NULL },
    { {    620,    214,   -142 },    544, kakusiana_room_13DL_0006F0, NULL },
    { {    625,    208,   -362 },    299, kakusiana_room_13DL_0017B8, NULL },
};

s32 kakusiana_room_13_terminatorMaybe_0000FC = { 0x01000000 };

Vtx kakusiana_room_13Vtx_000100[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_13Vtx_000100.vtx.inc"
};

Gfx kakusiana_room_13DL_0006F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_13Vtx_000100[87], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_13Tex_001950, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_13Vtx_000100, 32, 0),
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
    gsSP2Triangles(27, 24, 30, 0, 27, 25, 24, 0),
    gsSPVertex(&kakusiana_room_13Vtx_000100[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 12, 0),
    gsSP2Triangles(9, 13, 11, 0, 13, 14, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 7, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 21, 0),
    gsSP2Triangles(23, 24, 21, 0, 24, 9, 21, 0),
    gsSP2Triangles(9, 8, 21, 0, 25, 26, 27, 0),
    gsSP2Triangles(26, 28, 27, 0, 26, 29, 28, 0),
    gsSP1Triangle(29, 30, 28, 0),
    gsSPVertex(&kakusiana_room_13Vtx_000100[62], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 8, 0, 12, 13, 14, 0),
    gsSP2Triangles(3, 15, 6, 0, 15, 16, 6, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 20, 18, 0),
    gsSP2Triangles(20, 21, 18, 0, 21, 22, 18, 0),
    gsSP2Triangles(21, 23, 22, 0, 23, 24, 22, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_13Vtx_000898[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_13Vtx_000898.vtx.inc"
};

Gfx kakusiana_room_13DL_000C08[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_13Vtx_000898[47], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_13Tex_001950, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_13Vtx_000898, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(1, 8, 3, 0, 9, 5, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 18, 0, 24, 19, 18, 0),
    gsSP2Triangles(24, 21, 19, 0, 24, 25, 21, 0),
    gsSP2Triangles(26, 27, 6, 0, 26, 6, 7, 0),
    gsSP2Triangles(28, 0, 2, 0, 28, 29, 0, 0),
    gsSP2Triangles(26, 10, 13, 0, 26, 13, 27, 0),
    gsSP2Triangles(16, 17, 28, 0, 17, 29, 28, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_sceneTex_00D020, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_13Vtx_000898[30], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 8, 0, 0),
    gsSP2Triangles(7, 0, 3, 0, 7, 9, 8, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 12, 0, 12, 11, 13, 0),
    gsSP2Triangles(12, 13, 14, 0, 4, 15, 6, 0),
    gsSP2Triangles(14, 13, 16, 0, 14, 16, 4, 0),
    gsSP1Triangle(16, 15, 4, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_13Vtx_000DA8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_13Vtx_000DA8.vtx.inc"
};

Gfx kakusiana_room_13DL_000FF8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_13Vtx_000DA8[29], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_13Tex_003950, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_13Vtx_000DA8, 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(1, 6, 7, 0, 1, 8, 6, 0),
    gsSP2Triangles(7, 9, 4, 0, 10, 11, 12, 0),
    gsSP2Triangles(11, 13, 12, 0, 11, 5, 13, 0),
    gsSP2Triangles(10, 14, 11, 0, 14, 15, 11, 0),
    gsSP2Triangles(15, 16, 11, 0, 16, 17, 11, 0),
    gsSP2Triangles(17, 18, 11, 0, 18, 19, 11, 0),
    gsSP2Triangles(19, 0, 11, 0, 0, 3, 11, 0),
    gsSP2Triangles(3, 5, 11, 0, 7, 4, 2, 0),
    gsSP2Triangles(7, 2, 1, 0, 20, 6, 8, 0),
    gsSP2Triangles(20, 21, 9, 0, 20, 8, 21, 0),
    gsSP2Triangles(8, 22, 21, 0, 21, 23, 9, 0),
    gsSP2Triangles(22, 24, 21, 0, 24, 25, 21, 0),
    gsSP2Triangles(25, 26, 21, 0, 26, 27, 21, 0),
    gsSP2Triangles(27, 28, 21, 0, 28, 23, 21, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_13Vtx_001128[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_13Vtx_001128.vtx.inc"
};

Gfx kakusiana_room_13DL_001208[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_13Vtx_001128[6], 8, 0),
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
    gsSPVertex(kakusiana_room_13Vtx_001128, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_13Vtx_001290[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_13Vtx_001290.vtx.inc"
};

Gfx kakusiana_room_13DL_0013D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_13Vtx_001290[12], 8, 0),
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
    gsSPVertex(kakusiana_room_13Vtx_001290, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(3, 2, 11, 0, 3, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_13Vtx_001478[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_13Vtx_001478.vtx.inc"
};

Gfx kakusiana_room_13DL_0017B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_13Vtx_001478[44], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_13Tex_002950, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_13Vtx_001478, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 1, 5, 8, 0),
    gsSP2Triangles(3, 9, 10, 0, 3, 10, 0, 0),
    gsSP2Triangles(5, 11, 12, 0, 5, 12, 6, 0),
    gsSP2Triangles(1, 13, 11, 0, 1, 11, 5, 0),
    gsSP2Triangles(0, 10, 13, 0, 0, 13, 1, 0),
    gsSP2Triangles(9, 14, 15, 0, 9, 15, 10, 0),
    gsSP2Triangles(11, 16, 17, 0, 11, 17, 12, 0),
    gsSP2Triangles(13, 18, 16, 0, 13, 16, 11, 0),
    gsSP2Triangles(10, 15, 18, 0, 10, 18, 13, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(22, 21, 23, 0, 22, 23, 24, 0),
    gsSP2Triangles(24, 23, 25, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 20, 0, 27, 20, 19, 0),
    gsSP2Triangles(29, 19, 22, 0, 29, 22, 30, 0),
    gsSP2Triangles(30, 22, 24, 0, 30, 24, 31, 0),
    gsSP1Triangle(31, 24, 26, 0),
    gsSPVertex(&kakusiana_room_13Vtx_001478[32], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 0, 8, 0),
    gsSP2Triangles(0, 2, 9, 0, 3, 6, 10, 0),
    gsSP1Triangle(6, 7, 11, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_13_unaccounted_001918[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0x08, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0F, 0xF8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0x08, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0xB8, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_13Tex_001950[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_13Tex_001950.rgba16.inc.c"
};

u64 kakusiana_room_13Tex_002950[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_13Tex_002950.rgba16.inc.c"
};

u64 kakusiana_room_13Tex_003950[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_13Tex_003950.rgba16.inc.c"
};

Vtx kakusiana_room_13Vtx_004150[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_13Vtx_004150.vtx.inc"
};

Gfx kakusiana_room_13DL_004350[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_13Vtx_004150[24], 8, 0),
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
    gsSPVertex(kakusiana_room_13Vtx_004150, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_13Vtx_004438[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_13Vtx_004438.vtx.inc"
};

Gfx kakusiana_room_13DL_004518[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_13Vtx_004438[6], 8, 0),
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
    gsSPVertex(kakusiana_room_13Vtx_004438, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_13Vtx_0045A0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_13Vtx_0045A0.vtx.inc"
};

Gfx kakusiana_room_13DL_004C50[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_13Vtx_0045A0[99], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_13Tex_005EC8, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_13Vtx_0045A0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 19, 21, 0, 25, 27, 29, 0),
    gsSP2Triangles(30, 22, 24, 0, 16, 18, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_13Tex_004EC8, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_13Vtx_0045A0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 17, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 21, 23, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&kakusiana_room_13Vtx_0045A0[64], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_13Tex_005EC8, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_13Vtx_0045A0[67], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_13Tex_004EC8, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_13Vtx_0045A0[83], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 1, 15, 2, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_13_unaccounted_004EA8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x43, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x45, 0x18, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4C, 0x50, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_13Tex_004EC8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_13Tex_004EC8.i8.inc.c"
};

u64 kakusiana_room_13Tex_005EC8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_13Tex_005EC8.i8.inc.c"
};

