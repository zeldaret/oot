#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "kakusiana_room_4.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "kakusiana_scene.h"
#include "kakusiana_room_0.h"
#include "kakusiana_room_1.h"
#include "kakusiana_room_2.h"
#include "kakusiana_room_3.h"
#include "kakusiana_room_5.h"
#include "kakusiana_room_6.h"
#include "kakusiana_room_7.h"
#include "kakusiana_room_8.h"
#include "kakusiana_room_9.h"
#include "kakusiana_room_10.h"
#include "kakusiana_room_11.h"
#include "kakusiana_room_12.h"
#include "kakusiana_room_13.h"

SceneCmd kakusiana_room_4Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&kakusiana_room_4PolygonType2_000100),
    SCENE_CMD_OBJECT_LIST(5, kakusiana_room_4ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(11, kakusiana_room_4ActorList_00004C),
    SCENE_CMD_END(),
};

s16 kakusiana_room_4ObjectList_000040[] = {
    OBJECT_YDAN_OBJECTS,
    OBJECT_GS,
    OBJECT_ST,
    OBJECT_TSUBO,
    OBJECT_COW,
};

ActorEntry kakusiana_room_4ActorList_00004C[] = {
    { ACTOR_EN_ST,      {   3073,    190,    280 }, {      0, 0X8000,      0 }, 0x0001 },
    { ACTOR_EN_COW,     {   3485,     -4,   -291 }, {      0, 0XD777,      0 }, 0x0000 },
    { ACTOR_EN_KUSA,    {   3518,     -5,   -240 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_EN_KUSA,    {   3419,     -4,   -255 }, {      0,      0,      0 }, 0x0210 },
    { ACTOR_EN_SW,      {   3709,    160,   -298 }, { 0X4000, 0XCCCD,      0 }, 0x8B01 },
    { ACTOR_OBJ_TSUBO,  {   3390,     -2,   -258 }, {      0,      0,      0 }, 0x410C },
    { ACTOR_BG_YDAN_SP, {   2930,      0,   -278 }, {      0, 0X2000,      0 }, 0x1FE0 },
    { ACTOR_OBJ_TSUBO,  {   3410,     -3,   -223 }, {      0,      0,      0 }, 0x430F },
    { ACTOR_BG_YDAN_SP, {   3301,      0,   -224 }, {      0, 0XDDDE,      0 }, 0x1FE1 },
    { ACTOR_BG_YDAN_SP, {   3073,     -1,    139 }, {      0, 0X8000,      0 }, 0x1FE2 },
    { ACTOR_EN_GS,      {   2860,      6,   -357 }, {      0, 0X2222,      0 }, 0x381B },
};

u8 kakusiana_room_4_possiblePadding_0000FC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 kakusiana_room_4PolygonType2_000100 = { 
    2, 8,
    kakusiana_room_4PolygonDlist2_00010C,
    kakusiana_room_4PolygonDlist2_00010C + ARRAY_COUNTU(kakusiana_room_4PolygonDlist2_00010C)
};

PolygonDlist2 kakusiana_room_4PolygonDlist2_00010C[8] = {
    { {   3103,    245,   -112 },    238, NULL, kakusiana_room_4DL_004B40 },
    { {   3240,      1,    -59 },    601, kakusiana_room_4DL_001420, NULL },
    { {   3240,    285,    -47 },    616, NULL, kakusiana_room_4DL_005690 },
    { {   3103,     10,   -112 },     40, kakusiana_room_4DL_001660, NULL },
    { {   3103,    490,   -112 },     41, kakusiana_room_4DL_001828, kakusiana_room_4DL_004D08 },
    { {   3103,    480,   -111 },    266, kakusiana_room_4DL_000FF8, NULL },
    { {   3240,    235,    -56 },    643, kakusiana_room_4DL_000BB0, NULL },
    { {   3295,    310,   -147 },    464, kakusiana_room_4DL_001F10, NULL },
};

s32 kakusiana_room_4_terminatorMaybe_00018C = { 0x01000000 };

Vtx kakusiana_room_4Vtx_000190[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_4Vtx_000190.vtx.inc"
};

Gfx kakusiana_room_4DL_000BB0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_4Vtx_000190[154], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_4Tex_002138, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_4Vtx_000190, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(9, 7, 10, 0, 7, 5, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 13, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(19, 22, 20, 0, 23, 17, 13, 0),
    gsSP2Triangles(24, 19, 18, 0, 24, 25, 19, 0),
    gsSP2Triangles(25, 26, 19, 0, 26, 22, 19, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&kakusiana_room_4Vtx_000190[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(7, 3, 8, 0, 7, 4, 3, 0),
    gsSP2Triangles(10, 11, 7, 0, 10, 7, 6, 0),
    gsSP2Triangles(11, 5, 7, 0, 5, 4, 7, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 0, 14, 0, 13, 1, 0, 0),
    gsSP2Triangles(16, 17, 13, 0, 16, 13, 12, 0),
    gsSP2Triangles(17, 2, 13, 0, 2, 1, 13, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(19, 22, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 24, 27, 28, 0),
    gsSP2Triangles(24, 28, 25, 0, 27, 29, 28, 0),
    gsSP2Triangles(27, 30, 29, 0, 30, 31, 29, 0),
    gsSPVertex(&kakusiana_room_4Vtx_000190[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 4, 7, 8, 0),
    gsSP2Triangles(4, 8, 5, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 9, 0, 10, 0),
    gsSP2Triangles(9, 11, 0, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 13, 16, 17, 0),
    gsSP2Triangles(13, 17, 14, 0, 16, 18, 17, 0),
    gsSP2Triangles(18, 19, 17, 0, 18, 20, 19, 0),
    gsSP2Triangles(18, 21, 20, 0, 22, 23, 13, 0),
    gsSP2Triangles(22, 13, 12, 0, 23, 24, 16, 0),
    gsSP2Triangles(23, 16, 13, 0, 24, 18, 16, 0),
    gsSP2Triangles(24, 25, 18, 0, 25, 26, 18, 0),
    gsSP2Triangles(26, 21, 18, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 29, 30, 0, 27, 30, 31, 0),
    gsSPVertex(&kakusiana_room_4Vtx_000190[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 2, 3, 6, 0),
    gsSP2Triangles(2, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 13, 9, 0),
    gsSP2Triangles(12, 9, 8, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 15, 0),
    gsSP2Triangles(18, 15, 14, 0, 20, 21, 19, 0),
    gsSP2Triangles(20, 19, 18, 0, 11, 10, 21, 0),
    gsSP2Triangles(11, 21, 20, 0, 22, 23, 24, 0),
    gsSP2Triangles(23, 0, 24, 0, 25, 23, 26, 0),
    gsSP2Triangles(23, 22, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 30, 28, 0),
    gsSPVertex(&kakusiana_room_4Vtx_000190[125], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(11, 6, 13, 0, 11, 9, 6, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 18, 0),
    gsSP2Triangles(14, 18, 15, 0, 19, 3, 20, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 7, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 28, 0),
    gsSP1Triangle(25, 28, 26, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_4Vtx_000E68[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_4Vtx_000E68.vtx.inc"
};

Gfx kakusiana_room_4DL_000FF8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_4Vtx_000E68[17], 8, 0),
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
    gsSPVertex(kakusiana_room_4Vtx_000E68, 17, 0),
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

Vtx kakusiana_room_4Vtx_0010F0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_4Vtx_0010F0.vtx.inc"
};

Gfx kakusiana_room_4DL_001420[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_4Vtx_0010F0[43], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_4Tex_004138, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_4Vtx_0010F0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 5, 3, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 3, 0),
    gsSP2Triangles(7, 8, 0, 0, 7, 0, 3, 0),
    gsSP2Triangles(9, 8, 7, 0, 9, 10, 8, 0),
    gsSP2Triangles(11, 12, 10, 0, 11, 10, 9, 0),
    gsSP2Triangles(6, 13, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(13, 11, 9, 0, 14, 15, 16, 0),
    gsSP2Triangles(15, 17, 16, 0, 17, 18, 16, 0),
    gsSP2Triangles(15, 19, 20, 0, 15, 20, 17, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(24, 25, 23, 0, 22, 26, 24, 0),
    gsSP2Triangles(26, 27, 24, 0, 22, 28, 26, 0),
    gsSP2Triangles(25, 29, 23, 0, 29, 21, 23, 0),
    gsSP2Triangles(29, 30, 21, 0, 29, 1, 30, 0),
    gsSP1Triangle(25, 31, 29, 0),
    gsSPVertex(&kakusiana_room_4Vtx_0010F0[32], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 6, 7, 2, 0),
    gsSP2Triangles(7, 8, 2, 0, 8, 9, 2, 0),
    gsSP1Triangle(9, 10, 2, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_4Vtx_001580[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_4Vtx_001580.vtx.inc"
};

Gfx kakusiana_room_4DL_001660[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_4Vtx_001580[6], 8, 0),
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
    gsSPVertex(kakusiana_room_4Vtx_001580, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_4Vtx_0016E8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_4Vtx_0016E8.vtx.inc"
};

Gfx kakusiana_room_4DL_001828[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_4Vtx_0016E8[12], 8, 0),
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
    gsSPVertex(kakusiana_room_4Vtx_0016E8, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(3, 2, 11, 0, 3, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_4Vtx_0018D0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_4Vtx_0018D0.vtx.inc"
};

Gfx kakusiana_room_4DL_001F10[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_4Vtx_0018D0[92], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_4Tex_003138, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_4Vtx_0018D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 1, 0, 0),
    gsSP2Triangles(3, 5, 10, 0, 5, 7, 11, 0),
    gsSP2Triangles(8, 0, 12, 0, 0, 3, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 19, 0, 22, 19, 18, 0),
    gsSP2Triangles(17, 16, 23, 0, 17, 23, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(27, 26, 28, 0, 27, 28, 29, 0),
    gsSP2Triangles(29, 28, 30, 0, 29, 30, 31, 0),
    gsSPVertex(&kakusiana_room_4Vtx_0018D0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(0, 3, 9, 0, 3, 4, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(14, 13, 15, 0, 14, 15, 16, 0),
    gsSP2Triangles(16, 15, 17, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 12, 0, 19, 12, 11, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP2Triangles(29, 30, 26, 0, 29, 26, 25, 0),
    gsSP2Triangles(24, 23, 30, 0, 24, 30, 29, 0),
    gsSPVertex(&kakusiana_room_4Vtx_0018D0[63], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 1, 0, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 11, 0, 18, 11, 10, 0),
    gsSP2Triangles(13, 15, 20, 0, 15, 17, 21, 0),
    gsSP2Triangles(18, 10, 22, 0, 10, 13, 23, 0),
    gsSP2Triangles(11, 24, 25, 0, 11, 25, 12, 0),
    gsSP2Triangles(12, 25, 26, 0, 12, 26, 14, 0),
    gsSP2Triangles(14, 26, 27, 0, 14, 27, 16, 0),
    gsSP2Triangles(19, 28, 24, 0, 19, 24, 11, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_4_unaccounted_002100[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0xB0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0F, 0xF8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x16, 0x60, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x18, 0x28, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1F, 0x10, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_4Tex_002138[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_4Tex_002138.rgba16.inc.c"
};

u64 kakusiana_room_4Tex_003138[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_4Tex_003138.rgba16.inc.c"
};

u64 kakusiana_room_4Tex_004138[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_4Tex_004138.rgba16.inc.c"
};

u8 kakusiana_room_4_possiblePadding_004938[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx kakusiana_room_4Vtx_004940[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_4Vtx_004940.vtx.inc"
};

Gfx kakusiana_room_4DL_004B40[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_4Vtx_004940[24], 8, 0),
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
    gsSPVertex(kakusiana_room_4Vtx_004940, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_4Vtx_004C28[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_4Vtx_004C28.vtx.inc"
};

Gfx kakusiana_room_4DL_004D08[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_4Vtx_004C28[6], 8, 0),
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
    gsSPVertex(kakusiana_room_4Vtx_004C28, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_4Vtx_004D90[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_4Vtx_004D90.vtx.inc"
};

Gfx kakusiana_room_4DL_005690[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_4Vtx_004D90[136], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_4Tex_006958, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_4Vtx_004D90, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_4Tex_005958, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_4Vtx_004D90[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 15, 0, 2, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 19, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 23, 25, 0, 27, 28, 29, 0),
    gsSP2Triangles(16, 18, 30, 0, 27, 29, 31, 0),
    gsSPVertex(&kakusiana_room_4Vtx_004D90[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 19, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 30, 28, 0, 17, 31, 18, 0),
    gsSPVertex(&kakusiana_room_4Vtx_004D90[96], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_4Tex_006958, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_4Vtx_004D90[112], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_4Tex_005958, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_4Vtx_004D90[128], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 1, 7, 2, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_4_unaccounted_005938[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4B, 0x40, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4D, 0x08, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x56, 0x90, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_4Tex_005958[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_4Tex_005958.i8.inc.c"
};

u64 kakusiana_room_4Tex_006958[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_4Tex_006958.i8.inc.c"
};

