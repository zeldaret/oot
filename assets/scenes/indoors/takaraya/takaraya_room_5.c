#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "takaraya_room_5.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "takaraya_scene.h"
#include "takaraya_room_0.h"
#include "takaraya_room_1.h"
#include "takaraya_room_2.h"
#include "takaraya_room_3.h"
#include "takaraya_room_4.h"
#include "takaraya_room_6.h"

SceneCmd takaraya_room_5Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x02, 0x00, true, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&takaraya_room_5PolygonType0_000080),
    SCENE_CMD_OBJECT_LIST(6, takaraya_room_5ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(3, takaraya_room_5ActorList_00004C),
    SCENE_CMD_END(),
};

s16 takaraya_room_5ObjectList_000040[] = {
    OBJECT_BOX,
    OBJECT_TS,
    OBJECT_GI_HEARTS,
    OBJECT_GI_KEY,
    OBJECT_GI_RUPY,
    OBJECT_DOG,
};

ActorEntry takaraya_room_5ActorList_00004C[] = {
    { ACTOR_EN_CHANGER, {     18,     20,  -2000 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_LIGHT,   {    -67,     75,  -2168 }, {      0,      0,      0 }, 0x03F5 },
    { ACTOR_EN_LIGHT,   {     87,     75,  -2168 }, {      0,      0,      0 }, 0x03F5 },
};

u8 takaraya_room_5_possiblePadding_00007C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 takaraya_room_5PolygonType0_000080 = { 
    0, 1,
    takaraya_room_5PolygonDlist_00008C,
    takaraya_room_5PolygonDlist_00008C + ARRAY_COUNTU(takaraya_room_5PolygonDlist_00008C)
};

PolygonDlist takaraya_room_5PolygonDlist_00008C[1] = {
    { takaraya_room_5DL_0017D0, NULL },
};

s32 takaraya_room_5_terminatorMaybe_000094 = { 0x01000000 };

u8 takaraya_room_5_possiblePadding_000098[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx takaraya_room_5Vtx_0000A0[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_5Vtx_0000A0.vtx.inc"
};

Gfx takaraya_room_5DL_000220[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_5Vtx_0000A0[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(takaraya_room_5Tex_001FF8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(takaraya_room_5Vtx_0000A0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 9, 8, 0, 13, 8, 14, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 15, 0),
    gsSPEndDisplayList(),
};

Vtx takaraya_room_5Vtx_000300[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_5Vtx_000300.vtx.inc"
};

Gfx takaraya_room_5DL_000BD0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_5Vtx_000300[133], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(takaraya_room_5Tex_0017F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(takaraya_room_5Vtx_000300, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 27, 26, 0, 28, 26, 29, 0),
    gsSP2Triangles(29, 30, 31, 0, 29, 31, 28, 0),
    gsSPVertex(&takaraya_room_5Vtx_000300[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 7, 6, 0, 8, 6, 9, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&takaraya_room_5Vtx_000300[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 20, 0),
    gsSP2Triangles(16, 20, 17, 0, 19, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&takaraya_room_5Vtx_000300[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 4, 7, 0, 20, 7, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 25, 24, 0),
    gsSP2Triangles(28, 27, 24, 0, 28, 24, 29, 0),
    gsSP2Triangles(29, 24, 26, 0, 30, 31, 29, 0),
    gsSP1Triangle(30, 29, 26, 0),
    gsSPVertex(&takaraya_room_5Vtx_000300[126], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(1, 4, 3, 0, 0, 5, 6, 0),
    gsSP1Triangle(5, 4, 6, 0),
    gsSPEndDisplayList(),
};

Vtx takaraya_room_5Vtx_000DE0[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_5Vtx_000DE0.vtx.inc"
};

Gfx takaraya_room_5DL_000FE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_5Vtx_000DE0[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(takaraya_room_5Tex_0027F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(takaraya_room_5Vtx_000DE0, 24, 0),
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

Vtx takaraya_room_5Vtx_0010D0[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_5Vtx_0010D0.vtx.inc"
};

Gfx takaraya_room_5DL_001630[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_5Vtx_0010D0[78], 8, 0),
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
    gsDPSetPrimColor(0, 0, 216, 140, 140, 255),
    gsSPVertex(takaraya_room_5Vtx_0010D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(1, 7, 6, 0, 1, 6, 2, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 20, 23, 0, 24, 23, 25, 0),
    gsSP2Triangles(21, 26, 27, 0, 21, 27, 22, 0),
    gsSP2Triangles(24, 25, 27, 0, 24, 27, 26, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&takaraya_room_5Vtx_0010D0[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 13, 14, 0),
    gsSP2Triangles(7, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 19, 0, 22, 23, 19, 0),
    gsSP2Triangles(24, 25, 19, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&takaraya_room_5Vtx_0010D0[63], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&takaraya_room_5Vtx_0010D0[68], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 7, 6, 0),
    gsSPEndDisplayList(),
};

Gfx takaraya_room_5DL_0017D0[] = {
    gsSPDisplayList(takaraya_room_5DL_000220),
    gsSPDisplayList(takaraya_room_5DL_000BD0),
    gsSPDisplayList(takaraya_room_5DL_000FE0),
    gsSPDisplayList(takaraya_room_5DL_001630),
    gsSPEndDisplayList(),
};

u64 takaraya_room_5Tex_0017F8[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_5Tex_0017F8.rgba16.inc.c"
};

u64 takaraya_room_5Tex_001FF8[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_5Tex_001FF8.rgba16.inc.c"
};

u64 takaraya_room_5Tex_0027F8[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_5Tex_0027F8.rgba16.inc.c"
};

