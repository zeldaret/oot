#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "takaraya_room_4.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "takaraya_scene.h"
#include "takaraya_room_0.h"
#include "takaraya_room_1.h"
#include "takaraya_room_2.h"
#include "takaraya_room_3.h"
#include "takaraya_room_5.h"
#include "takaraya_room_6.h"

SceneCmd takaraya_room_4Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x02, 0x00, true, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&takaraya_room_4PolygonType0_000080),
    SCENE_CMD_OBJECT_LIST(6, takaraya_room_4ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(3, takaraya_room_4ActorList_00004C),
    SCENE_CMD_END(),
};

s16 takaraya_room_4ObjectList_000040[] = {
    OBJECT_BOX,
    OBJECT_TS,
    OBJECT_GI_HEARTS,
    OBJECT_GI_KEY,
    OBJECT_GI_RUPY,
    OBJECT_DOG,
};

ActorEntry takaraya_room_4ActorList_00004C[] = {
    { ACTOR_EN_LIGHT,   {     88,     74,  -1729 }, {      0,      0,      0 }, 0x03F5 },
    { ACTOR_EN_LIGHT,   {    -67,     74,  -1729 }, {      0,      0,      0 }, 0x03F5 },
    { ACTOR_EN_CHANGER, {     13,     20,  -1552 }, {      0,      0,      0 }, 0x0000 },
};

u8 takaraya_room_4_possiblePadding_00007C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 takaraya_room_4PolygonType0_000080 = { 
    0, 1,
    takaraya_room_4PolygonDlist_00008C,
    takaraya_room_4PolygonDlist_00008C + ARRAY_COUNTU(takaraya_room_4PolygonDlist_00008C)
};

PolygonDlist takaraya_room_4PolygonDlist_00008C[1] = {
    { takaraya_room_4DL_0017F8, NULL },
};

s32 takaraya_room_4_terminatorMaybe_000094 = { 0x01000000 };

u8 takaraya_room_4_possiblePadding_000098[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx takaraya_room_4Vtx_0000A0[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_4Vtx_0000A0.vtx.inc"
};

Gfx takaraya_room_4DL_000220[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_4Vtx_0000A0[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(takaraya_room_4Tex_002020, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(takaraya_room_4Vtx_0000A0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 9, 8, 0, 13, 8, 14, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 15, 0),
    gsSPEndDisplayList(),
};

Vtx takaraya_room_4Vtx_000300[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_4Vtx_000300.vtx.inc"
};

Gfx takaraya_room_4DL_000BC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_4Vtx_000300[132], 8, 0),
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
    gsSPVertex(takaraya_room_4Vtx_000300, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 27, 26, 0, 28, 26, 29, 0),
    gsSP2Triangles(29, 30, 31, 0, 29, 31, 28, 0),
    gsSPVertex(&takaraya_room_4Vtx_000300[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 7, 6, 0, 8, 6, 9, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&takaraya_room_4Vtx_000300[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 8, 0),
    gsSP2Triangles(4, 8, 5, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 11, 10, 0),
    gsSP2Triangles(14, 13, 10, 0, 14, 10, 15, 0),
    gsSP2Triangles(15, 10, 12, 0, 16, 17, 15, 0),
    gsSP2Triangles(16, 15, 12, 0, 18, 19, 16, 0),
    gsSP2Triangles(16, 19, 17, 0, 19, 20, 17, 0),
    gsSP2Triangles(21, 20, 22, 0, 18, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&takaraya_room_4Vtx_000300[95], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(1, 12, 13, 0, 1, 13, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(takaraya_room_4Tex_002820, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&takaraya_room_4Vtx_000300[109], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 18, 21, 0, 20, 21, 22, 0),
    gsSPEndDisplayList(),
};

Vtx takaraya_room_4Vtx_000E08[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_4Vtx_000E08.vtx.inc"
};

Gfx takaraya_room_4DL_001008[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_4Vtx_000E08[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(takaraya_room_4Tex_001820, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(takaraya_room_4Vtx_000E08, 24, 0),
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

Vtx takaraya_room_4Vtx_0010F8[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_4Vtx_0010F8.vtx.inc"
};

Gfx takaraya_room_4DL_001658[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&takaraya_room_4Vtx_0010F8[78], 8, 0),
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
    gsDPSetPrimColor(0, 0, 132, 187, 224, 255),
    gsSPVertex(takaraya_room_4Vtx_0010F8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 16, 17, 0, 12, 17, 13, 0),
    gsSP2Triangles(16, 18, 19, 0, 16, 19, 17, 0),
    gsSP2Triangles(18, 15, 14, 0, 18, 14, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(21, 24, 25, 0, 21, 25, 22, 0),
    gsSP2Triangles(26, 27, 25, 0, 26, 25, 24, 0),
    gsSP2Triangles(26, 20, 23, 0, 26, 23, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&takaraya_room_4Vtx_0010F8[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 13, 14, 0),
    gsSP2Triangles(7, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 19, 0, 22, 23, 19, 0),
    gsSP2Triangles(24, 25, 19, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&takaraya_room_4Vtx_0010F8[63], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&takaraya_room_4Vtx_0010F8[68], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 7, 6, 0),
    gsSPEndDisplayList(),
};

Gfx takaraya_room_4DL_0017F8[] = {
    gsSPDisplayList(takaraya_room_4DL_000220),
    gsSPDisplayList(takaraya_room_4DL_000BC0),
    gsSPDisplayList(takaraya_room_4DL_001008),
    gsSPDisplayList(takaraya_room_4DL_001658),
    gsSPEndDisplayList(),
};

u64 takaraya_room_4Tex_001820[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_4Tex_001820.rgba16.inc.c"
};

u64 takaraya_room_4Tex_002020[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_4Tex_002020.rgba16.inc.c"
};

u64 takaraya_room_4Tex_002820[] = {
#include "assets/scenes/indoors/takaraya/takaraya_room_4Tex_002820.rgba16.inc.c"
};

