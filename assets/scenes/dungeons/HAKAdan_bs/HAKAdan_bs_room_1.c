#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_bs_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HAKAdan_bs_scene.h"
#include "HAKAdan_bs_room_0.h"

SceneCmd HAKAdan_bs_room_1Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x05, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_bs_room_1PolygonType0_000060),
    SCENE_CMD_OBJECT_LIST(6, HAKAdan_bs_room_1ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(1, HAKAdan_bs_room_1ActorList_00004C),
    SCENE_CMD_END(),
};

s16 HAKAdan_bs_room_1ObjectList_000040[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_WARP1,
    OBJECT_WARP2,
    OBJECT_BDOOR,
    OBJECT_SST,
    OBJECT_GI_HEARTS,
};

ActorEntry HAKAdan_bs_room_1ActorList_00004C[] = {
    { ACTOR_BOSS_SST, {    -50,   1358,      7 }, {      0,      0,      0 }, 0xFFFF },
};

u8 HAKAdan_bs_room_1_possiblePadding_00005C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 HAKAdan_bs_room_1PolygonType0_000060 = { 
    0, 1,
    HAKAdan_bs_room_1PolygonDlist_00006C,
    HAKAdan_bs_room_1PolygonDlist_00006C + ARRAY_COUNTU(HAKAdan_bs_room_1PolygonDlist_00006C)
};

PolygonDlist HAKAdan_bs_room_1PolygonDlist_00006C[1] = {
    { HAKAdan_bs_room_1DL_002D20, NULL },
};

s32 HAKAdan_bs_room_1_terminatorMaybe_000074 = { 0x01000000 };

u8 HAKAdan_bs_room_1_possiblePadding_000078[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx HAKAdan_bs_room_1Vtx_000080[] = {
#include "assets/scenes/dungeons/HAKAdan_bs/HAKAdan_bs_room_1Vtx_000080.vtx.inc"
};

Gfx HAKAdan_bs_room_1DL_000C00[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_000080[176], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_bs_room_1Tex_004F50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_bs_room_1Vtx_000080, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(0, 3, 1, 0, 2, 1, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 6, 0),
    gsSP2Triangles(9, 7, 6, 0, 8, 6, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 14, 0),
    gsSP2Triangles(11, 14, 12, 0, 13, 11, 10, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 15, 18, 0, 17, 16, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_bs_sceneTex_001F80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_000080[20], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_bs_sceneTex_001780, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_000080[36], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 0, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(8, 5, 4, 0, 9, 8, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(12, 7, 6, 0, 13, 12, 6, 0),
    gsSP2Triangles(2, 1, 14, 0, 15, 2, 14, 0),
    gsSP2Triangles(14, 11, 10, 0, 15, 14, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_bs_sceneTex_001580, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_000080[52], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_bs_room_1Tex_003750, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_000080[84], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 1, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 6, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(12, 14, 17, 0, 12, 17, 13, 0),
    gsSP2Triangles(16, 15, 11, 0, 16, 11, 10, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0),
    gsSP2Triangles(18, 22, 21, 0, 18, 23, 22, 0),
    gsSP2Triangles(18, 24, 23, 0, 18, 25, 24, 0),
    gsSP2Triangles(13, 26, 27, 0, 10, 13, 27, 0),
    gsSP2Triangles(27, 26, 28, 0, 10, 27, 28, 0),
    gsSP2Triangles(9, 5, 8, 0, 29, 30, 31, 0),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_000080[116], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 12, 6, 5, 0),
    gsSP2Triangles(12, 5, 13, 0, 11, 14, 9, 0),
    gsSP2Triangles(11, 9, 8, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 20, 19, 0),
    gsSP2Triangles(24, 23, 19, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 26, 0),
    gsSP1Triangle(29, 26, 25, 0),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_000080[147], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(6, 10, 13, 0, 6, 13, 7, 0),
    gsSP2Triangles(9, 8, 12, 0, 9, 12, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(19, 15, 14, 0, 19, 14, 20, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP1Triangle(26, 27, 28, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_bs_room_1Vtx_000FE0[] = {
#include "assets/scenes/dungeons/HAKAdan_bs/HAKAdan_bs_room_1Vtx_000FE0.vtx.inc"
};

Gfx HAKAdan_bs_room_1DL_0013C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_000FE0[54], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_bs_room_1Tex_003750, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_bs_room_1Vtx_000FE0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(29, 28, 30, 0, 29, 30, 31, 0),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_000FE0[32], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 13, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 10, 0, 18, 10, 20, 0),
    gsSP2Triangles(21, 18, 20, 0, 16, 17, 21, 0),
    gsSP2Triangles(16, 21, 20, 0, 19, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_bs_room_1Vtx_001508[] = {
#include "assets/scenes/dungeons/HAKAdan_bs/HAKAdan_bs_room_1Vtx_001508.vtx.inc"
};

Gfx HAKAdan_bs_room_1DL_001848[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_001508[44], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_bs_room_1Tex_002F50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(HAKAdan_bs_room_1Vtx_001508, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 18, 0),
    gsSP2Triangles(19, 18, 17, 0, 20, 9, 8, 0),
    gsSP2Triangles(20, 8, 18, 0, 20, 19, 21, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 21, 19, 0),
    gsSP2Triangles(23, 13, 12, 0, 23, 12, 21, 0),
    gsSP2Triangles(23, 22, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(26, 25, 24, 0, 26, 24, 22, 0),
    gsSP2Triangles(25, 6, 5, 0, 25, 5, 24, 0),
    gsSP2Triangles(17, 16, 27, 0, 17, 27, 26, 0),
    gsSP2Triangles(16, 0, 3, 0, 16, 3, 27, 0),
    gsSP2Triangles(7, 6, 28, 0, 28, 3, 2, 0),
    gsSP2Triangles(28, 6, 25, 0, 3, 28, 27, 0),
    gsSP2Triangles(29, 12, 15, 0, 9, 29, 10, 0),
    gsSP2Triangles(12, 30, 21, 0, 30, 9, 20, 0),
    gsSP2Triangles(29, 15, 10, 0, 21, 30, 20, 0),
    gsSP2Triangles(7, 28, 2, 0, 28, 25, 27, 0),
    gsSP2Triangles(31, 13, 23, 0, 5, 31, 24, 0),
    gsSP2Triangles(14, 13, 31, 0, 31, 5, 4, 0),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_001508[32], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 0, 5, 0, 3, 1, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 8, 10, 11, 0),
    gsSP2Triangles(6, 1, 5, 0, 1, 4, 2, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_bs_room_1Vtx_0019F0[] = {
#include "assets/scenes/dungeons/HAKAdan_bs/HAKAdan_bs_room_1Vtx_0019F0.vtx.inc"
};

Gfx HAKAdan_bs_room_1DL_002540[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_0019F0[173], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HAKAdan_bs_sceneTex_001380, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_bs_room_1Vtx_0019F0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 8, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 12, 0, 16, 12, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(18, 21, 22, 0, 23, 18, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(25, 28, 29, 0, 25, 29, 27, 0),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_0019F0[30], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 2, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 6, 0, 10, 6, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 15, 16, 0, 17, 12, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_bs_room_1Tex_002D50, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_0019F0[48], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 3, 0),
    gsSP2Triangles(1, 7, 2, 0, 7, 8, 2, 0),
    gsSP2Triangles(6, 9, 1, 0, 9, 7, 1, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 15, 11, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 16, 19, 0),
    gsSP2Triangles(20, 19, 21, 0, 18, 17, 22, 0),
    gsSP2Triangles(18, 22, 23, 0, 20, 24, 25, 0),
    gsSP2Triangles(20, 25, 16, 0, 16, 26, 17, 0),
    gsSP2Triangles(16, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 30, 28, 0),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_0019F0[79], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(5, 8, 9, 0, 6, 5, 9, 0),
    gsSP2Triangles(10, 11, 7, 0, 10, 7, 12, 0),
    gsSP2Triangles(13, 12, 6, 0, 13, 6, 9, 0),
    gsSP2Triangles(14, 13, 9, 0, 12, 7, 6, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(19, 17, 20, 0, 19, 15, 17, 0),
    gsSP2Triangles(21, 22, 16, 0, 21, 16, 15, 0),
    gsSP2Triangles(17, 23, 20, 0, 23, 24, 20, 0),
    gsSP2Triangles(16, 25, 17, 0, 25, 23, 17, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 29, 28, 0),
    gsSP1Triangle(30, 31, 27, 0),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_0019F0[111], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 4, 3, 0),
    gsSP2Triangles(7, 8, 4, 0, 9, 6, 10, 0),
    gsSP2Triangles(9, 10, 11, 0, 7, 12, 13, 0),
    gsSP2Triangles(7, 3, 12, 0, 3, 9, 12, 0),
    gsSP2Triangles(3, 6, 9, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 18, 17, 0, 21, 22, 18, 0),
    gsSP2Triangles(23, 20, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(21, 26, 27, 0, 21, 17, 26, 0),
    gsSP2Triangles(17, 23, 26, 0, 17, 20, 23, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_0019F0[142], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 3, 6, 0),
    gsSP2Triangles(7, 6, 8, 0, 5, 4, 9, 0),
    gsSP2Triangles(5, 9, 10, 0, 7, 11, 12, 0),
    gsSP2Triangles(7, 12, 3, 0, 3, 13, 4, 0),
    gsSP2Triangles(3, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 17, 15, 0, 15, 18, 19, 0),
    gsSP2Triangles(20, 15, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 21, 23, 0, 22, 25, 26, 0),
    gsSP2Triangles(23, 22, 26, 0, 10, 27, 24, 0),
    gsSP2Triangles(10, 24, 28, 0, 29, 28, 23, 0),
    gsSP2Triangles(29, 23, 26, 0, 30, 29, 26, 0),
    gsSP1Triangle(28, 24, 23, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_bs_room_1Vtx_002868[] = {
#include "assets/scenes/dungeons/HAKAdan_bs/HAKAdan_bs_room_1Vtx_002868.vtx.inc"
};

Gfx HAKAdan_bs_room_1DL_002BE8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_002868[48], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_bs_room_1Tex_003F50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_bs_room_1Vtx_002868, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 6, 0, 10, 6, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 12, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 18, 0, 22, 18, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(26, 28, 29, 0, 26, 29, 27, 0),
    gsSPVertex(&HAKAdan_bs_room_1Vtx_002868[30], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 6, 0, 10, 6, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 12, 0, 16, 12, 15, 0),
    gsSPEndDisplayList(),
};

Gfx HAKAdan_bs_room_1DL_002D20[] = {
    gsSPDisplayList(HAKAdan_bs_room_1DL_000C00),
    gsSPDisplayList(HAKAdan_bs_room_1DL_0013C0),
    gsSPDisplayList(HAKAdan_bs_room_1DL_001848),
    gsSPDisplayList(HAKAdan_bs_room_1DL_002540),
    gsSPDisplayList(HAKAdan_bs_room_1DL_002BE8),
    gsSPEndDisplayList(),
};

u64 HAKAdan_bs_room_1Tex_002D50[] = {
#include "assets/scenes/dungeons/HAKAdan_bs/HAKAdan_bs_room_1Tex_002D50.i4.inc.c"
};

u64 HAKAdan_bs_room_1Tex_002F50[] = {
#include "assets/scenes/dungeons/HAKAdan_bs/HAKAdan_bs_room_1Tex_002F50.rgba16.inc.c"
};

u64 HAKAdan_bs_room_1Tex_003750[] = {
#include "assets/scenes/dungeons/HAKAdan_bs/HAKAdan_bs_room_1Tex_003750.rgba16.inc.c"
};

u64 HAKAdan_bs_room_1Tex_003F50[] = {
#include "assets/scenes/dungeons/HAKAdan_bs/HAKAdan_bs_room_1Tex_003F50.rgba16.inc.c"
};

u64 HAKAdan_bs_room_1Tex_004F50[] = {
#include "assets/scenes/dungeons/HAKAdan_bs/HAKAdan_bs_room_1Tex_004F50.rgba16.inc.c"
};

