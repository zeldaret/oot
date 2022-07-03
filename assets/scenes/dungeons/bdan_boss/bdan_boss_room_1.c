#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "bdan_boss_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "bdan_boss_scene.h"
#include "bdan_boss_room_0.h"

SceneCmd bdan_boss_room_1Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(6),
    SCENE_CMD_ROOM_BEHAVIOR(0x05, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&bdan_boss_room_1PolygonType0_0000C0),
    SCENE_CMD_OBJECT_LIST(7, bdan_boss_room_1ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(7, bdan_boss_room_1ActorList_000050),
    SCENE_CMD_END(),
};

s16 bdan_boss_room_1ObjectList_000040[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_RU1,
    OBJECT_BV,
    OBJECT_BL,
    OBJECT_BUBBLE,
    OBJECT_WARP1,
    OBJECT_GI_HEARTS,
};

ActorEntry bdan_boss_room_1ActorList_000050[] = {
    { ACTOR_BOSS_VA,   {     10,      0,   -220 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_TSUBO, {    279,     10,   -761 }, {      0,      0,      0 }, 0x4003 },
    { ACTOR_OBJ_TSUBO, {   -268,     10,   -786 }, {      0,      0,      0 }, 0x4203 },
    { ACTOR_OBJ_TSUBO, {   -543,     10,   -496 }, {      0,      0,      0 }, 0x4403 },
    { ACTOR_OBJ_TSUBO, {    554,     10,   -493 }, {      0,      0,      0 }, 0x4603 },
    { ACTOR_OBJ_TSUBO, {    551,     10,     36 }, {      0,      0,      0 }, 0x4803 },
    { ACTOR_OBJ_TSUBO, {   -551,     10,     33 }, {      0,      0,      0 }, 0x4A03 },
};

PolygonType0 bdan_boss_room_1PolygonType0_0000C0 = { 
    0, 1,
    bdan_boss_room_1PolygonDlist_0000CC,
    bdan_boss_room_1PolygonDlist_0000CC + ARRAY_COUNTU(bdan_boss_room_1PolygonDlist_0000CC)
};

PolygonDlist bdan_boss_room_1PolygonDlist_0000CC[1] = {
    { bdan_boss_room_1DL_003A58, NULL },
};

s32 bdan_boss_room_1_terminatorMaybe_0000D4 = { 0x01000000 };

u8 bdan_boss_room_1_possiblePadding_0000D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx bdan_boss_room_1Vtx_0000E0[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_1Vtx_0000E0.vtx.inc"
};

Gfx bdan_boss_room_1DL_0006D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_boss_room_1Vtx_0000E0[87], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0048B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_boss_room_1TLUT_003AB0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_boss_room_1Vtx_0000E0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(6, 5, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 8, 6, 9, 0),
    gsSP2Triangles(10, 8, 9, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 7, 0, 12, 1, 0, 0),
    gsSP2Triangles(12, 13, 1, 0, 1, 13, 14, 0),
    gsSP2Triangles(13, 15, 14, 0, 13, 16, 15, 0),
    gsSP2Triangles(16, 13, 12, 0, 17, 16, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(18, 11, 19, 0, 11, 10, 19, 0),
    gsSP2Triangles(19, 10, 20, 0, 10, 9, 20, 0),
    gsSP2Triangles(14, 2, 1, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 22, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(29, 30, 26, 0, 28, 27, 24, 0),
    gsSP1Triangle(28, 24, 31, 0),
    gsSPVertex(&bdan_boss_room_1Vtx_0000E0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 8, 11, 0, 7, 6, 12, 0),
    gsSP2Triangles(13, 5, 4, 0, 2, 13, 3, 0),
    gsSP2Triangles(14, 1, 0, 0, 15, 16, 14, 0),
    gsSP2Triangles(2, 17, 5, 0, 9, 17, 18, 0),
    gsSP2Triangles(18, 19, 9, 0, 1, 14, 16, 0),
    gsSP2Triangles(12, 6, 8, 0, 13, 2, 5, 0),
    gsSP2Triangles(17, 9, 8, 0, 5, 17, 6, 0),
    gsSP2Triangles(1, 17, 2, 0, 18, 17, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(22, 24, 25, 0, 22, 25, 23, 0),
    gsSP2Triangles(21, 26, 27, 0, 21, 27, 22, 0),
    gsSP2Triangles(27, 28, 24, 0, 27, 24, 22, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&bdan_boss_room_1Vtx_0000E0[64], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 10, 8, 0, 6, 11, 12, 0),
    gsSP2Triangles(6, 12, 7, 0, 12, 13, 9, 0),
    gsSP2Triangles(12, 9, 7, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 17, 0, 11, 14, 17, 0),
    gsSP2Triangles(11, 17, 12, 0, 17, 19, 13, 0),
    gsSP2Triangles(17, 13, 12, 0, 20, 0, 2, 0),
    gsSP2Triangles(20, 2, 21, 0, 2, 4, 22, 0),
    gsSP1Triangle(2, 22, 21, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_boss_room_1Vtx_000920[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_1Vtx_000920.vtx.inc"
};

Gfx bdan_boss_room_1DL_0018C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[242], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0048B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_boss_room_1TLUT_003AB0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_boss_room_1Vtx_000920, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 3, 4, 0),
    gsSP2Triangles(6, 2, 7, 0, 7, 2, 8, 0),
    gsSP2Triangles(2, 5, 8, 0, 3, 9, 4, 0),
    gsSP2Triangles(9, 10, 4, 0, 1, 9, 3, 0),
    gsSP2Triangles(1, 11, 9, 0, 12, 8, 13, 0),
    gsSP2Triangles(12, 7, 8, 0, 14, 6, 12, 0),
    gsSP2Triangles(6, 7, 12, 0, 13, 8, 15, 0),
    gsSP2Triangles(8, 16, 15, 0, 8, 17, 16, 0),
    gsSP2Triangles(8, 5, 17, 0, 5, 4, 17, 0),
    gsSP2Triangles(4, 18, 17, 0, 4, 19, 18, 0),
    gsSP2Triangles(4, 10, 19, 0, 20, 6, 21, 0),
    gsSP2Triangles(6, 14, 21, 0, 22, 6, 20, 0),
    gsSP2Triangles(22, 0, 6, 0, 23, 1, 22, 0),
    gsSP2Triangles(1, 0, 22, 0, 11, 1, 24, 0),
    gsSP2Triangles(1, 23, 24, 0, 25, 21, 26, 0),
    gsSP2Triangles(25, 20, 21, 0, 27, 25, 26, 0),
    gsSP2Triangles(28, 22, 25, 0, 22, 20, 25, 0),
    gsSP2Triangles(29, 28, 25, 0, 30, 22, 28, 0),
    gsSP2Triangles(30, 23, 22, 0, 29, 30, 28, 0),
    gsSP2Triangles(23, 30, 24, 0, 30, 31, 24, 0),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 7, 0, 6, 3, 5, 0),
    gsSP2Triangles(5, 8, 9, 0, 7, 5, 10, 0),
    gsSP2Triangles(5, 9, 10, 0, 9, 8, 11, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 9, 11, 0),
    gsSP2Triangles(11, 13, 14, 0, 12, 11, 15, 0),
    gsSP2Triangles(11, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 19, 20, 18, 0),
    gsSP2Triangles(21, 18, 22, 0, 18, 23, 22, 0),
    gsSP2Triangles(18, 20, 23, 0, 21, 22, 24, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 25, 24, 0),
    gsSP2Triangles(24, 26, 27, 0, 24, 15, 26, 0),
    gsSP2Triangles(24, 25, 15, 0, 28, 29, 6, 0),
    gsSP2Triangles(29, 30, 6, 0, 31, 29, 28, 0),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 1, 0, 0),
    gsSP2Triangles(5, 3, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 16, 18, 0),
    gsSP2Triangles(7, 6, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(8, 7, 19, 0, 8, 19, 13, 0),
    gsSP2Triangles(10, 28, 27, 0, 10, 27, 18, 0),
    gsSP2Triangles(15, 25, 24, 0, 15, 24, 29, 0),
    gsSP2Triangles(30, 20, 22, 0, 30, 22, 31, 0),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[96], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 4, 3, 0, 2, 6, 0, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 11, 8, 0, 12, 13, 11, 0),
    gsSP2Triangles(14, 13, 12, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0044B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[114], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_003CB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[118], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0044B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[142], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_003CB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[146], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0044B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[154], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_003CB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[158], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0044B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[162], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_003CB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[166], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0044B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[194], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_003CB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[198], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0044B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[206], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_003CB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[210], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0044B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[222], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_003CB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[226], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0044B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[230], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_003CB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_boss_room_1Vtx_000920[234], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_boss_room_1Vtx_0020D8[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_1Vtx_0020D8.vtx.inc"
};

Mtx bdan_boss_room_1DL_002278Mtx_000000 = { 
    -65536     , 0          , 0          , -65536     , 
    65535      , 0          , 300        , 23592961   , 
    0          , 0          , 0          , 0          , 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_boss_room_1DL_002278[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_boss_room_1Vtx_0020D8[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0048B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_boss_room_1TLUT_003AB0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_boss_room_1DL_002278Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_boss_room_1Vtx_0020D8, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 7, 0, 4, 3, 0, 0),
    gsSP2Triangles(1, 0, 6, 0, 1, 7, 8, 0),
    gsSP2Triangles(5, 4, 9, 0, 2, 1, 8, 0),
    gsSP2Triangles(9, 4, 2, 0, 9, 2, 8, 0),
    gsSP2Triangles(0, 2, 4, 0, 10, 7, 6, 0),
    gsSP2Triangles(10, 6, 11, 0, 6, 3, 12, 0),
    gsSP2Triangles(6, 12, 11, 0, 3, 5, 13, 0),
    gsSP1Triangle(3, 13, 12, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_boss_room_1Vtx_0023B8[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_1Vtx_0023B8.vtx.inc"
};

Mtx bdan_boss_room_1DL_002548Mtx_000000 = { 
    -65536     , -65536     , 0          , -65536     , 
    65535      , 0          , -29228856  , 13828097   , 
    1258029056 , 1258029056 , -1258029056, 1258029056 , 
    0          , 0          , -2147483648, -2147483648, 
};

Gfx bdan_boss_room_1DL_002548[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_boss_room_1Vtx_0023B8[13], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0048B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_boss_room_1TLUT_003AB0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_boss_room_1DL_002548Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_boss_room_1Vtx_0023B8, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 3, 1, 0, 4, 5, 3, 0),
    gsSP2Triangles(2, 3, 6, 0, 2, 7, 0, 0),
    gsSP2Triangles(8, 4, 0, 0, 5, 4, 8, 0),
    gsSP2Triangles(7, 2, 6, 0, 0, 4, 1, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 10, 0),
    gsSP2Triangles(11, 7, 6, 0, 11, 6, 12, 0),
    gsSP2Triangles(8, 0, 9, 0, 0, 7, 11, 0),
    gsSP2Triangles(3, 5, 10, 0, 12, 6, 3, 0),
    gsSP2Triangles(0, 11, 9, 0, 12, 3, 10, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_boss_room_1Vtx_002690[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_1Vtx_002690.vtx.inc"
};

Mtx bdan_boss_room_1DL_0028A0Mtx_000000 = { 
    0          , -65536     , 65536      , 0          , 
    65535      , 0          , -38928184  , -15335423  , 
    0          , 0          , 0          , 0          , 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_boss_room_1DL_0028A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_boss_room_1Vtx_002690[21], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0048B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_boss_room_1TLUT_003AB0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_boss_room_1DL_0028A0Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_boss_room_1Vtx_002690, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 0, 4, 0),
    gsSP2Triangles(6, 4, 3, 0, 6, 3, 2, 0),
    gsSP2Triangles(7, 6, 2, 0, 8, 6, 7, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 10, 6, 0),
    gsSP2Triangles(10, 11, 6, 0, 11, 12, 4, 0),
    gsSP2Triangles(6, 11, 4, 0, 12, 5, 4, 0),
    gsSP2Triangles(10, 12, 11, 0, 13, 12, 10, 0),
    gsSP2Triangles(1, 14, 2, 0, 7, 2, 14, 0),
    gsSP2Triangles(8, 7, 14, 0, 14, 15, 8, 0),
    gsSP2Triangles(16, 8, 15, 0, 16, 9, 8, 0),
    gsSP2Triangles(16, 10, 9, 0, 13, 10, 16, 0),
    gsSP2Triangles(1, 5, 17, 0, 1, 17, 18, 0),
    gsSP2Triangles(19, 13, 15, 0, 19, 15, 20, 0),
    gsSP2Triangles(5, 12, 17, 0, 12, 13, 19, 0),
    gsSP2Triangles(14, 1, 18, 0, 20, 15, 14, 0),
    gsSP2Triangles(12, 19, 17, 0, 20, 14, 18, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_boss_room_1Vtx_002A20[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_1Vtx_002A20.vtx.inc"
};

Mtx bdan_boss_room_1DL_002BB0Mtx_000000 = { 
    0          , -65536     , 0          , 0          , 
    65535      , 0          , -29228856  , -44564479  , 
    -1258029056, 1258029056 , -1258029056, -1258029056, 
    0          , 0          , -2147483648, -2147483648, 
};

Gfx bdan_boss_room_1DL_002BB0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_boss_room_1Vtx_002A20[13], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0048B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_boss_room_1TLUT_003AB0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_boss_room_1DL_002BB0Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_boss_room_1Vtx_002A20, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 3, 1, 0, 0, 2, 5, 0),
    gsSP2Triangles(2, 3, 6, 0, 3, 4, 7, 0),
    gsSP2Triangles(4, 0, 8, 0, 5, 2, 6, 0),
    gsSP2Triangles(4, 8, 7, 0, 0, 4, 1, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 5, 6, 0, 11, 6, 12, 0),
    gsSP2Triangles(8, 0, 9, 0, 0, 5, 11, 0),
    gsSP2Triangles(3, 7, 10, 0, 12, 6, 3, 0),
    gsSP2Triangles(0, 11, 9, 0, 12, 3, 10, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_boss_room_1Vtx_002CF8[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_1Vtx_002CF8.vtx.inc"
};

Mtx bdan_boss_room_1DL_002F08Mtx_000000 = { 
    65536      , 0          , 0          , 65536      , 
    65535      , 0          , 200        , -54263807  , 
    0          , 0          , 0          , 0          , 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_boss_room_1DL_002F08[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_boss_room_1Vtx_002CF8[21], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0048B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_boss_room_1TLUT_003AB0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_boss_room_1DL_002F08Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_boss_room_1Vtx_002CF8, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 0, 5, 0),
    gsSP2Triangles(6, 1, 0, 0, 6, 7, 1, 0),
    gsSP2Triangles(7, 8, 1, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 3, 11, 4, 0),
    gsSP2Triangles(11, 6, 4, 0, 11, 10, 6, 0),
    gsSP2Triangles(10, 12, 6, 0, 12, 7, 6, 0),
    gsSP2Triangles(12, 8, 7, 0, 13, 5, 2, 0),
    gsSP2Triangles(2, 1, 14, 0, 11, 15, 9, 0),
    gsSP2Triangles(12, 9, 16, 0, 5, 13, 3, 0),
    gsSP2Triangles(11, 3, 15, 0, 12, 16, 8, 0),
    gsSP2Triangles(1, 8, 14, 0, 5, 0, 2, 0),
    gsSP2Triangles(16, 15, 17, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 13, 14, 0, 19, 14, 20, 0),
    gsSP2Triangles(15, 3, 17, 0, 3, 13, 19, 0),
    gsSP2Triangles(8, 16, 18, 0, 20, 14, 8, 0),
    gsSP2Triangles(3, 19, 17, 0, 20, 8, 18, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_boss_room_1Vtx_003088[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_1Vtx_003088.vtx.inc"
};

Mtx bdan_boss_room_1DL_003218Mtx_000000 = { 
    0          , 0          , -65536     , 0          , 
    65535      , 0          , 29163720   , -44564479  , 
    -1258029056, -1258029056, 1258029056 , -1258029056, 
    0          , 0          , -2147483648, -2147483648, 
};

Gfx bdan_boss_room_1DL_003218[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_boss_room_1Vtx_003088[13], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0048B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_boss_room_1TLUT_003AB0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_boss_room_1DL_003218Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_boss_room_1Vtx_003088, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 2, 6, 0),
    gsSP2Triangles(4, 7, 8, 0, 2, 5, 3, 0),
    gsSP2Triangles(4, 3, 7, 0, 4, 8, 1, 0),
    gsSP2Triangles(2, 1, 6, 0, 3, 0, 2, 0),
    gsSP2Triangles(8, 7, 9, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 5, 6, 0, 11, 6, 12, 0),
    gsSP2Triangles(7, 3, 9, 0, 3, 5, 11, 0),
    gsSP2Triangles(1, 8, 10, 0, 12, 6, 1, 0),
    gsSP2Triangles(3, 11, 9, 0, 12, 1, 10, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_boss_room_1Vtx_003360[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_1Vtx_003360.vtx.inc"
};

Mtx bdan_boss_room_1DL_003600Mtx_000000 = { 
    0          , 65536      , -65536     , 0          , 
    65535      , 0          , 38928584   , -15335423  , 
    0          , 0          , 0          , 0          , 
    0          , 0          , 0          , 0          , 
};

Gfx bdan_boss_room_1DL_003600[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_boss_room_1Vtx_003360[30], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0048B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_boss_room_1TLUT_003AB0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_boss_room_1DL_003600Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_boss_room_1Vtx_003360, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(8, 1, 0, 0, 8, 9, 1, 0),
    gsSP2Triangles(9, 10, 1, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 3, 13, 4, 0),
    gsSP2Triangles(13, 6, 4, 0, 13, 12, 6, 0),
    gsSP2Triangles(16, 15, 8, 0, 15, 9, 8, 0),
    gsSP2Triangles(15, 10, 9, 0, 17, 5, 18, 0),
    gsSP2Triangles(2, 1, 19, 0, 5, 17, 3, 0),
    gsSP2Triangles(13, 3, 20, 0, 15, 21, 10, 0),
    gsSP2Triangles(1, 10, 19, 0, 13, 20, 11, 0),
    gsSP2Triangles(15, 14, 21, 0, 5, 7, 18, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 19, 0, 25, 19, 27, 0),
    gsSP2Triangles(20, 3, 28, 0, 3, 17, 29, 0),
    gsSP2Triangles(10, 21, 24, 0, 27, 19, 10, 0),
    gsSP2Triangles(3, 29, 28, 0, 27, 10, 24, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Vtx bdan_boss_room_1Vtx_003780[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_1Vtx_003780.vtx.inc"
};

Mtx bdan_boss_room_1DL_003910Mtx_000000 = { 
    -65536     , 0          , -65536     , -65536     , 
    65535      , 0          , 29163720   , 13828097   , 
    1258029056 , -1258029056, 1258029056 , 1258029056 , 
    0          , 0          , -2147483648, -2147483648, 
};

Gfx bdan_boss_room_1DL_003910[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_boss_room_1Vtx_003780[13], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_boss_room_1Tex_0048B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_boss_room_1TLUT_003AB0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPMatrix(&bdan_boss_room_1DL_003910Mtx_000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(bdan_boss_room_1Vtx_003780, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 2, 1, 0, 4, 3, 7, 0),
    gsSP2Triangles(1, 4, 8, 0, 5, 2, 6, 0),
    gsSP2Triangles(4, 7, 8, 0, 3, 0, 2, 0),
    gsSP2Triangles(8, 7, 9, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 5, 6, 0, 11, 6, 12, 0),
    gsSP2Triangles(7, 3, 9, 0, 3, 5, 11, 0),
    gsSP2Triangles(1, 8, 10, 0, 12, 6, 1, 0),
    gsSP2Triangles(3, 11, 9, 0, 12, 1, 10, 0),
    gsSPMatrix(&gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPEndDisplayList(),
};

Gfx bdan_boss_room_1DL_003A58[] = {
    gsSPDisplayList(bdan_boss_room_1DL_0006D0),
    gsSPDisplayList(bdan_boss_room_1DL_0018C0),
    gsSPDisplayList(bdan_boss_room_1DL_002278),
    gsSPDisplayList(bdan_boss_room_1DL_002548),
    gsSPDisplayList(bdan_boss_room_1DL_0028A0),
    gsSPDisplayList(bdan_boss_room_1DL_002BB0),
    gsSPDisplayList(bdan_boss_room_1DL_002F08),
    gsSPDisplayList(bdan_boss_room_1DL_003218),
    gsSPDisplayList(bdan_boss_room_1DL_003600),
    gsSPDisplayList(bdan_boss_room_1DL_003910),
    gsSPEndDisplayList(),
};

u64 bdan_boss_room_1TLUT_003AB0[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_1TLUT_003AB0.rgba16.inc.c"
};

u8 bdan_boss_room_1_unaccounted_003CB0[] = {
    0x00, 0x00, 0x08, 0x01, 0x00, 0x48, 0x00, 0x00, 
};

u64 bdan_boss_room_1Tex_003CB8[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_1Tex_003CB8.ci8.inc.c"
};

u64 bdan_boss_room_1Tex_0044B8[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_1Tex_0044B8.ci8.inc.c"
};

u64 bdan_boss_room_1Tex_0048B8[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_1Tex_0048B8.ci8.inc.c"
};

