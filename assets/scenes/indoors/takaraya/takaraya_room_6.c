#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "takaraya_room_6.h"
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
#include "takaraya_room_5.h"

SceneCmd takaraya_room_6Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x02, 0x00, true, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&takaraya_room_6PolygonType0_000080),
    SCENE_CMD_OBJECT_LIST(6, takaraya_room_6ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(3, takaraya_room_6ActorList_00004C),
    SCENE_CMD_END(),
};

s16 takaraya_room_6ObjectList_000040[] = {
    OBJECT_BOX,
    OBJECT_TS,
    OBJECT_GI_HEARTS,
    OBJECT_GI_KEY,
    OBJECT_GI_RUPY,
    OBJECT_DOG,
};

ActorEntry takaraya_room_6ActorList_00004C[] = {
    { ACTOR_EN_CHANGER, {     18,     20,  -2492 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_LIGHT,   {     95,     98,  -2557 }, {      0,      0,      0 }, 0x03F5 },
    { ACTOR_EN_LIGHT,   {    -60,     98,  -2556 }, {      0,      0,      0 }, 0x03F5 },
};

u8 takaraya_room_6_possiblePadding_00007C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 takaraya_room_6PolygonType0_000080 = { 
    0, 1,
    takaraya_room_6PolygonDlist_00008C,
    takaraya_room_6PolygonDlist_00008C + ARRAY_COUNTU(takaraya_room_6PolygonDlist_00008C)
};

PolygonDlist takaraya_room_6PolygonDlist_00008C[1] = {
    { takaraya_room_6DL_0012D0, NULL },
};

s32 takaraya_room_6_terminatorMaybe_000094 = { 0x01000000 };

u8 takaraya_room_6_possiblePadding_000098[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx takaraya_room_6Vtx_0000A0[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_6Vtx_0000A0.vtx.inc"
};

Gfx takaraya_room_6DL_0001E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_6Vtx_0000A0[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(takaraya_room_6Tex_0022F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(takaraya_room_6Vtx_0000A0, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(9, 5, 4, 0, 9, 4, 10, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 11, 0),
    gsSPEndDisplayList(),
};

Vtx takaraya_room_6Vtx_0002B8[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_6Vtx_0002B8.vtx.inc"
};

Gfx takaraya_room_6DL_000718[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_6Vtx_0002B8[62], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(takaraya_room_6Tex_0012F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(takaraya_room_6Vtx_0002B8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 0, 3, 0, 16, 3, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 18, 0),
    gsSP2Triangles(21, 23, 22, 0, 23, 24, 22, 0),
    gsSP2Triangles(17, 25, 26, 0, 17, 26, 16, 0),
    gsSP2Triangles(27, 28, 29, 0, 28, 30, 29, 0),
    gsSP1Triangle(30, 31, 29, 0),
    gsSPVertex(&takaraya_room_6Vtx_0002B8[32], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 3, 0, 6, 4, 3, 0),
    gsSP2Triangles(0, 2, 7, 0, 2, 8, 7, 0),
    gsSP2Triangles(0, 3, 1, 0, 3, 5, 1, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 13, 0),
    gsSP2Triangles(9, 13, 10, 0, 12, 14, 13, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 22, 0),
    gsSP2Triangles(25, 22, 24, 0, 27, 28, 25, 0),
    gsSP2Triangles(27, 24, 23, 0, 24, 27, 25, 0),
    gsSP2Triangles(27, 29, 28, 0, 27, 23, 29, 0),
    gsSPEndDisplayList(),
};

Vtx takaraya_room_6Vtx_000880[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_6Vtx_000880.vtx.inc"
};

Gfx takaraya_room_6DL_000CA0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_6Vtx_000880[58], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(takaraya_room_6Tex_001AF8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(takaraya_room_6Vtx_000880, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 6, 0),
    gsSP2Triangles(6, 8, 11, 0, 9, 6, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(takaraya_room_6Tex_0012F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&takaraya_room_6Vtx_000880[12], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&takaraya_room_6Vtx_000880[44], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 10, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(12, 13, 8, 0, 12, 8, 7, 0),
    gsSPEndDisplayList(),
};

Vtx takaraya_room_6Vtx_000E20[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_6Vtx_000E20.vtx.inc"
};

Gfx takaraya_room_6DL_0011B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_6Vtx_000E20[49], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(takaraya_room_6Tex_0012F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(takaraya_room_6Vtx_000E20, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 2, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(9, 15, 16, 0, 9, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 21, 0),
    gsSP2Triangles(19, 23, 20, 0, 23, 22, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 26, 0),
    gsSP1Triangle(29, 30, 26, 0),
    gsSPVertex(&takaraya_room_6Vtx_000E20[31], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 9, 10, 0),
    gsSP2Triangles(3, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 13, 17, 14, 0),
    gsSP1Triangle(17, 16, 14, 0),
    gsSPEndDisplayList(),
};

Gfx takaraya_room_6DL_0012D0[] = {
    gsSPDisplayList(takaraya_room_6DL_0001E0),
    gsSPDisplayList(takaraya_room_6DL_000718),
    gsSPDisplayList(takaraya_room_6DL_000CA0),
    gsSPDisplayList(takaraya_room_6DL_0011B0),
    gsSPEndDisplayList(),
};

u64 takaraya_room_6Tex_0012F8[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_6Tex_0012F8.rgba16.inc.c"
};

u64 takaraya_room_6Tex_001AF8[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_6Tex_001AF8.rgba16.inc.c"
};

u64 takaraya_room_6Tex_0022F8[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_6Tex_0022F8.rgba16.inc.c"
};

