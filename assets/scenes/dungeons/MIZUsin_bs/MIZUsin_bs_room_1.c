#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "MIZUsin_bs_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "MIZUsin_bs_scene.h"
#include "MIZUsin_bs_room_0.h"

SceneCmd MIZUsin_bs_room_1Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x05, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&MIZUsin_bs_room_1PolygonType0_000060),
    SCENE_CMD_OBJECT_LIST(8, MIZUsin_bs_room_1ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(1, MIZUsin_bs_room_1ActorList_000050),
    SCENE_CMD_END(),
};

s16 MIZUsin_bs_room_1ObjectList_000040[] = {
    OBJECT_MIZU_OBJECTS,
    OBJECT_WARP1,
    OBJECT_WARP2,
    OBJECT_GI_HEARTS,
    OBJECT_BUBBLE,
    OBJECT_BL,
    OBJECT_MO,
    OBJECT_BDOOR,
};

ActorEntry MIZUsin_bs_room_1ActorList_000050[] = {
    { ACTOR_BOSS_MO, {     20,   -280,     14 }, {      0,      0,      0 }, 0xFFFF },
};

PolygonType0 MIZUsin_bs_room_1PolygonType0_000060 = { 
    0, 1,
    MIZUsin_bs_room_1PolygonDlist_00006C,
    MIZUsin_bs_room_1PolygonDlist_00006C + ARRAY_COUNTU(MIZUsin_bs_room_1PolygonDlist_00006C)
};

PolygonDlist MIZUsin_bs_room_1PolygonDlist_00006C[1] = {
    { MIZUsin_bs_room_1DL_005688, NULL },
};

s32 MIZUsin_bs_room_1_terminatorMaybe_000074 = { 0x01000000 };

u8 MIZUsin_bs_room_1_possiblePadding_000078[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx MIZUsin_bs_room_1Vtx_000080[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Vtx_000080.vtx.inc"
};

Gfx MIZUsin_bs_room_1DL_000890[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_000080[121], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_bs_room_1Tex_0056E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_bs_room_1Tex_005EE8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_bs_room_1Vtx_000080, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(0, 4, 1, 0, 2, 1, 5, 0),
    gsSP2Triangles(2, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 5, 0),
    gsSP2Triangles(10, 0, 2, 0, 10, 11, 0, 0),
    gsSP2Triangles(11, 12, 0, 0, 12, 3, 0, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 14, 0),
    gsSP2Triangles(13, 16, 14, 0, 18, 19, 16, 0),
    gsSP2Triangles(18, 16, 13, 0, 18, 20, 19, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 21, 0),
    gsSP2Triangles(23, 17, 21, 0, 23, 21, 22, 0),
    gsSP2Triangles(14, 17, 23, 0, 14, 23, 24, 0),
    gsSP2Triangles(14, 24, 25, 0, 14, 25, 15, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0),
    gsSP2Triangles(26, 30, 29, 0, 26, 31, 30, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_000080[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(7, 1, 9, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(12, 15, 13, 0, 15, 16, 13, 0),
    gsSP2Triangles(16, 17, 13, 0, 13, 18, 14, 0),
    gsSP2Triangles(13, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 19, 17, 0, 22, 17, 16, 0),
    gsSP2Triangles(19, 22, 20, 0, 21, 20, 23, 0),
    gsSP2Triangles(14, 18, 21, 0, 14, 21, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(26, 28, 27, 0, 29, 30, 28, 0),
    gsSP1Triangle(30, 29, 31, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_000080[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 7, 0, 6, 7, 8, 0),
    gsSP2Triangles(2, 1, 6, 0, 9, 2, 6, 0),
    gsSP2Triangles(10, 9, 6, 0, 11, 6, 8, 0),
    gsSP2Triangles(11, 10, 6, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 13, 0, 12, 15, 13, 0),
    gsSP2Triangles(17, 18, 15, 0, 17, 15, 12, 0),
    gsSP2Triangles(17, 19, 18, 0, 18, 19, 20, 0),
    gsSP2Triangles(19, 21, 20, 0, 22, 16, 20, 0),
    gsSP2Triangles(22, 20, 21, 0, 13, 16, 22, 0),
    gsSP2Triangles(13, 22, 23, 0, 13, 23, 24, 0),
    gsSP2Triangles(13, 24, 14, 0, 25, 10, 11, 0),
    gsSP2Triangles(25, 9, 10, 0, 25, 26, 9, 0),
    gsSP2Triangles(25, 27, 26, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 28, 29, 0, 30, 29, 28, 0),
    gsSP1Triangle(31, 30, 28, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_000080[96], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 4, 3, 5, 0),
    gsSP2Triangles(3, 6, 5, 0, 4, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 11, 10, 0, 12, 10, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(16, 15, 18, 0, 13, 19, 16, 0),
    gsSP2Triangles(13, 16, 18, 0, 10, 20, 19, 0),
    gsSP2Triangles(9, 20, 10, 0, 10, 19, 13, 0),
    gsSP2Triangles(17, 14, 20, 0, 17, 20, 9, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_bs_room_1Vtx_000B60[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Vtx_000B60.vtx.inc"
};

Gfx MIZUsin_bs_room_1DL_000C30[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_000B60[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_bs_room_1Tex_0056E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 4),
    gsDPLoadMultiBlock(MIZUsin_bs_room_1Tex_007EE8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_bs_room_1Vtx_000B60, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 0, 2, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_bs_room_1Vtx_000D30[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Vtx_000D30.vtx.inc"
};

Gfx MIZUsin_bs_room_1DL_0013F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_000D30[100], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_bs_room_1Tex_0056E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_bs_room_1Tex_00A2E8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_bs_room_1Vtx_000D30, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_000D30[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_000D30[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(18, 20, 21, 0, 18, 17, 20, 0),
    gsSP2Triangles(22, 23, 12, 0, 22, 12, 15, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_000D30[96], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_bs_room_1Vtx_0015C8[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Vtx_0015C8.vtx.inc"
};

Gfx MIZUsin_bs_room_1DL_001878[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_0015C8[35], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_bs_room_1Tex_0056E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_bs_room_1Tex_0086E8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_bs_room_1Vtx_0015C8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 2, 4, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(8, 9, 6, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(10, 12, 14, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 20, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_0015C8[31], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_bs_room_1Vtx_0019D0[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Vtx_0019D0.vtx.inc"
};

Gfx MIZUsin_bs_room_1DL_001F30[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_0019D0[78], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_bs_room_1Tex_0056E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_bs_room_1Tex_0076E8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_bs_room_1Vtx_0019D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_0019D0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_0019D0[64], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_bs_room_1Vtx_0020D0[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Vtx_0020D0.vtx.inc"
};

Gfx MIZUsin_bs_room_1DL_002210[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_0020D0[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_bs_room_1Tex_0056E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 5, 5),
    gsDPLoadMultiBlock(MIZUsin_bs_room_1Tex_006EE8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_bs_room_1Vtx_0020D0, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(3, 2, 8, 0, 3, 8, 9, 0),
    gsSP2Triangles(7, 6, 10, 0, 7, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_bs_room_1Vtx_002320[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Vtx_002320.vtx.inc"
};

Gfx MIZUsin_bs_room_1DL_0024C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002320[18], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_bs_room_1Tex_0056E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_bs_room_1Tex_0066E8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_bs_room_1Vtx_002320, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(3, 12, 13, 0, 3, 13, 0, 0),
    gsSP2Triangles(7, 14, 15, 0, 7, 15, 4, 0),
    gsSP2Triangles(11, 16, 17, 0, 11, 17, 8, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_bs_room_1Vtx_0025E0[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Vtx_0025E0.vtx.inc"
};

Gfx MIZUsin_bs_room_1DL_002720[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_0025E0[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_bs_room_1Tex_0056E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 5, 5),
    gsDPLoadMultiBlock(MIZUsin_bs_room_1Tex_0092E8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_bs_room_1Vtx_0025E0, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_bs_room_1Vtx_002828[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Vtx_002828.vtx.inc"
};

Gfx MIZUsin_bs_room_1DL_004778[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[493], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_bs_room_1Tex_0056E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_bs_room_1Tex_009AE8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_bs_room_1Vtx_002828, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(4, 6, 8, 0, 7, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 12, 17, 13, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(17, 18, 20, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 25, 30, 26, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 8, 13, 9, 0),
    gsSP2Triangles(14, 7, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 14, 15, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 21, 26, 22, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[61], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(7, 12, 8, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 12, 13, 15, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(20, 6, 21, 0, 25, 19, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 25, 26, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[92], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 2, 0, 7, 0, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 7, 8, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(13, 19, 14, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 20, 22, 19, 0),
    gsSP2Triangles(26, 27, 21, 0, 28, 29, 30, 0),
    gsSP1Triangle(26, 31, 27, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[124], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 2, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 13, 8, 0),
    gsSP2Triangles(14, 9, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(14, 15, 1, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 19, 25, 20, 0),
    gsSP2Triangles(26, 21, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(26, 27, 13, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[155], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 1, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 9, 6, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(13, 19, 14, 0, 20, 2, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 20, 21, 19, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(25, 15, 26, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[186], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 2, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 6, 8, 0),
    gsSP2Triangles(13, 9, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(13, 14, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 19, 25, 20, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSP1Triangle(26, 28, 25, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[218], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 1, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 9, 6, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(13, 19, 14, 0, 20, 15, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 20, 21, 8, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(25, 31, 26, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[250], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 2, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 13, 8, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(14, 16, 13, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 20, 26, 21, 0),
    gsSP2Triangles(27, 9, 28, 0, 29, 30, 31, 0),
    gsSP1Triangle(27, 28, 26, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[282], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 1, 0, 7, 2, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 7, 8, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(13, 12, 14, 0, 19, 15, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 19, 20, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(26, 31, 27, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[314], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 2, 0, 1, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 7, 12, 8, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(12, 13, 15, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 20, 25, 21, 0),
    gsSP2Triangles(26, 19, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(14, 26, 27, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[345], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 2, 0, 7, 0, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 7, 8, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(14, 19, 15, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 19, 20, 22, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[377], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 1, 3, 5, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(10, 15, 11, 0, 16, 9, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 16, 17, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(23, 21, 24, 0, 28, 22, 29, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[407], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(7, 12, 8, 0, 13, 6, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 13, 14, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(20, 25, 21, 0, 26, 19, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 12, 26, 27, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[438], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 6, 7, 9, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(14, 19, 15, 0, 20, 0, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 19, 20, 21, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(26, 31, 27, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_002828[470], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 8, 13, 9, 0),
    gsSP2Triangles(14, 7, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 14, 15, 0, 20, 21, 22, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_bs_room_1Vtx_004C98[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Vtx_004C98.vtx.inc"
};

Gfx MIZUsin_bs_room_1DL_004F98[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_004C98[40], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(MIZUsin_bs_room_1Tex_00AAE8, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_bs_room_1Vtx_004C98, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(8, 9, 7, 0, 9, 5, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(13, 14, 11, 0, 14, 12, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 18, 16, 0),
    gsSP2Triangles(18, 19, 16, 0, 19, 17, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(21, 24, 23, 0, 21, 20, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 26, 28, 27, 0),
    gsSP2Triangles(26, 29, 28, 0, 26, 25, 29, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_004C98[30], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 1, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 9, 0, 6, 5, 9, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_bs_room_1Vtx_0050D0[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Vtx_0050D0.vtx.inc"
};

Gfx MIZUsin_bs_room_1DL_005550[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_0050D0[64], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_bs_room_1Tex_008EE8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_bs_room_1Vtx_0050D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_bs_room_1Vtx_0050D0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

Gfx MIZUsin_bs_room_1DL_005688[] = {
    gsSPDisplayList(MIZUsin_bs_room_1DL_000890),
    gsSPDisplayList(MIZUsin_bs_room_1DL_000C30),
    gsSPDisplayList(MIZUsin_bs_room_1DL_0013F0),
    gsSPDisplayList(MIZUsin_bs_room_1DL_001878),
    gsSPDisplayList(MIZUsin_bs_room_1DL_001F30),
    gsSPDisplayList(MIZUsin_bs_room_1DL_002210),
    gsSPDisplayList(MIZUsin_bs_room_1DL_0024C0),
    gsSPDisplayList(MIZUsin_bs_room_1DL_002720),
    gsSPDisplayList(MIZUsin_bs_room_1DL_004778),
    gsSPDisplayList(MIZUsin_bs_room_1DL_004F98),
    gsSPDisplayList(MIZUsin_bs_room_1DL_005550),
    gsSPEndDisplayList(),
};

u64 MIZUsin_bs_room_1Tex_0056E8[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Tex_0056E8.rgba16.inc.c"
};

u64 MIZUsin_bs_room_1Tex_005EE8[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Tex_005EE8.rgba16.inc.c"
};

u64 MIZUsin_bs_room_1Tex_0066E8[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Tex_0066E8.rgba16.inc.c"
};

u64 MIZUsin_bs_room_1Tex_006EE8[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Tex_006EE8.rgba16.inc.c"
};

u64 MIZUsin_bs_room_1Tex_0076E8[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Tex_0076E8.rgba16.inc.c"
};

u64 MIZUsin_bs_room_1Tex_007EE8[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Tex_007EE8.rgba16.inc.c"
};

u64 MIZUsin_bs_room_1Tex_0086E8[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Tex_0086E8.rgba16.inc.c"
};

u64 MIZUsin_bs_room_1Tex_008EE8[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Tex_008EE8.rgba16.inc.c"
};

u64 MIZUsin_bs_room_1Tex_0092E8[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Tex_0092E8.rgba16.inc.c"
};

u64 MIZUsin_bs_room_1Tex_009AE8[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Tex_009AE8.rgba16.inc.c"
};

u64 MIZUsin_bs_room_1Tex_00A2E8[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Tex_00A2E8.rgba16.inc.c"
};

u64 MIZUsin_bs_room_1Tex_00AAE8[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_1Tex_00AAE8.i4.inc.c"
};

