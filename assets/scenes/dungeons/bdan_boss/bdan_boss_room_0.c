#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "bdan_boss_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "bdan_boss_scene.h"
#include "bdan_boss_room_1.h"

SceneCmd bdan_boss_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(15),
    SCENE_CMD_ROOM_BEHAVIOR(0x05, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&bdan_boss_room_0PolygonType0_000050),
    SCENE_CMD_OBJECT_LIST(7, bdan_boss_room_0ObjectList_000038),
    SCENE_CMD_END(),
};

s16 bdan_boss_room_0ObjectList_000038[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_RU1,
    OBJECT_BV,
    OBJECT_BL,
    OBJECT_BUBBLE,
    OBJECT_WARP1,
    OBJECT_GI_HEARTS,
};

u8 bdan_boss_room_0_possiblePadding_000048[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 bdan_boss_room_0PolygonType0_000050 = { 
    0, 1,
    bdan_boss_room_0PolygonDlist_00005C,
    bdan_boss_room_0PolygonDlist_00005C + ARRAY_COUNTU(bdan_boss_room_0PolygonDlist_00005C)
};

PolygonDlist bdan_boss_room_0PolygonDlist_00005C[1] = {
    { bdan_boss_room_0DL_001E28, bdan_boss_room_0DL_002A00 },
};

s32 bdan_boss_room_0_terminatorMaybe_000064 = { 0x01000000 };

u8 bdan_boss_room_0_possiblePadding_000068[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx bdan_boss_room_0Vtx_000070[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_0Vtx_000070.vtx.inc"
};

Gfx bdan_boss_room_0DL_001830[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_boss_room_0Vtx_000070[372], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_boss_room_0Tex_002040, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_boss_room_0TLUT_001E38),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_boss_room_0Vtx_000070, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 5, 4, 0, 5, 6, 4, 0),
    gsSP2Triangles(5, 7, 6, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 9, 0, 11, 9, 8, 0),
    gsSP2Triangles(13, 12, 11, 0, 3, 0, 2, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 14, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 18, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(26, 28, 27, 0, 16, 29, 17, 0),
    gsSPVertex(&bdan_boss_room_0Vtx_000070[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 4, 6, 0, 8, 9, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 10, 12, 0, 14, 15, 10, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(5, 16, 18, 0, 5, 7, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(11, 20, 22, 0, 11, 13, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(19, 24, 26, 0, 19, 17, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 31, 29, 0),
    gsSP2Triangles(21, 28, 30, 0, 21, 23, 28, 0),
    gsSPVertex(&bdan_boss_room_0Vtx_000070[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 10, 13, 0, 12, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 14, 16, 0),
    gsSP2Triangles(15, 12, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(2, 15, 17, 0, 2, 3, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0),
    gsSP2Triangles(22, 20, 23, 0, 22, 18, 20, 0),
    gsSP2Triangles(24, 23, 25, 0, 24, 22, 23, 0),
    gsSP2Triangles(9, 11, 26, 0, 11, 27, 26, 0),
    gsSP2Triangles(19, 28, 29, 0, 19, 21, 28, 0),
    gsSPVertex(&bdan_boss_room_0Vtx_000070[92], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 14, 17, 0, 16, 12, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0),
    gsSP2Triangles(1, 18, 20, 0, 1, 3, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
    gsSP2Triangles(9, 22, 24, 0, 9, 11, 22, 0),
    gsSP2Triangles(20, 26, 27, 0, 20, 19, 26, 0),
    gsSP2Triangles(28, 20, 27, 0, 28, 1, 20, 0),
    gsSP2Triangles(2, 1, 28, 0, 2, 29, 30, 0),
    gsSPVertex(&bdan_boss_room_0Vtx_000070[123], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 8, 9, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(10, 12, 14, 0, 15, 13, 10, 0),
    gsSP2Triangles(15, 16, 13, 0, 17, 15, 18, 0),
    gsSP2Triangles(17, 16, 15, 0, 19, 17, 18, 0),
    gsSP2Triangles(19, 20, 17, 0, 21, 19, 22, 0),
    gsSP2Triangles(21, 20, 19, 0, 23, 21, 22, 0),
    gsSP2Triangles(23, 24, 21, 0, 25, 23, 26, 0),
    gsSP2Triangles(25, 24, 23, 0, 27, 25, 26, 0),
    gsSP2Triangles(27, 28, 25, 0, 26, 23, 29, 0),
    gsSP2Triangles(29, 23, 22, 0, 22, 19, 30, 0),
    gsSP2Triangles(29, 22, 30, 0, 18, 15, 31, 0),
    gsSP2Triangles(30, 19, 18, 0, 30, 18, 31, 0),
    gsSPVertex(&bdan_boss_room_0Vtx_000070[155], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 2, 1, 7, 0),
    gsSP2Triangles(8, 4, 6, 0, 2, 7, 8, 0),
    gsSP2Triangles(2, 8, 6, 0, 6, 9, 10, 0),
    gsSP2Triangles(6, 5, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(15, 16, 14, 0, 16, 17, 14, 0),
    gsSP2Triangles(15, 18, 16, 0, 13, 19, 15, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 20, 22, 0, 24, 25, 20, 0),
    gsSP2Triangles(22, 21, 15, 0, 19, 24, 22, 0),
    gsSP2Triangles(19, 22, 15, 0, 26, 27, 28, 0),
    gsSP2Triangles(27, 29, 28, 0, 21, 26, 28, 0),
    gsSP2Triangles(21, 23, 26, 0, 28, 29, 18, 0),
    gsSP2Triangles(15, 21, 28, 0, 15, 28, 18, 0),
    gsSPVertex(&bdan_boss_room_0Vtx_000070[185], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 0, 2, 0, 4, 5, 0, 0),
    gsSP2Triangles(2, 1, 6, 0, 7, 4, 2, 0),
    gsSP2Triangles(7, 2, 6, 0, 1, 3, 8, 0),
    gsSP2Triangles(3, 9, 8, 0, 8, 10, 11, 0),
    gsSP2Triangles(6, 1, 8, 0, 6, 8, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 11, 12, 0),
    gsSP2Triangles(14, 13, 12, 0, 10, 15, 16, 0),
    gsSP2Triangles(12, 10, 16, 0, 12, 16, 17, 0),
    gsSP2Triangles(12, 17, 18, 0, 14, 12, 18, 0),
    gsSP2Triangles(19, 14, 18, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 23, 21, 0, 24, 20, 22, 0),
    gsSP2Triangles(24, 25, 20, 0, 26, 27, 28, 0),
    gsSP2Triangles(21, 26, 28, 0, 22, 21, 28, 0),
    gsSP2Triangles(29, 24, 22, 0, 29, 22, 28, 0),
    gsSP2Triangles(30, 29, 28, 0, 31, 30, 28, 0),
    gsSP1Triangle(31, 28, 27, 0),
    gsSPVertex(&bdan_boss_room_0Vtx_000070[217], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 5, 3, 0, 6, 2, 4, 0),
    gsSP2Triangles(6, 0, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 13, 15, 0, 13, 17, 14, 0),
    gsSP2Triangles(13, 18, 17, 0, 19, 8, 7, 0),
    gsSP2Triangles(18, 20, 17, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 21, 23, 0, 15, 21, 24, 0),
    gsSP2Triangles(16, 15, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 25, 27, 0, 29, 30, 31, 0),
    gsSPVertex(&bdan_boss_room_0Vtx_000070[249], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 5, 4, 0, 6, 5, 3, 0),
    gsSP2Triangles(7, 6, 3, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 9, 8, 0),
    gsSP2Triangles(12, 13, 9, 0, 7, 11, 10, 0),
    gsSP2Triangles(6, 7, 10, 0, 2, 1, 14, 0),
    gsSP2Triangles(2, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 22, 24, 25, 0),
    gsSP2Triangles(22, 25, 23, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 28, 29, 0, 28, 30, 31, 0),
    gsSP1Triangle(28, 31, 29, 0),
    gsSPVertex(&bdan_boss_room_0Vtx_000070[281], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(16, 18, 14, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 22, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 21, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 25, 0, 28, 25, 27, 0),
    gsSP2Triangles(27, 26, 30, 0, 27, 30, 31, 0),
    gsSPVertex(&bdan_boss_room_0Vtx_000070[313], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 0, 2, 6, 0),
    gsSP2Triangles(6, 8, 7, 0, 2, 9, 6, 0),
    gsSP2Triangles(9, 10, 6, 0, 10, 3, 6, 0),
    gsSP2Triangles(8, 6, 5, 0, 6, 3, 5, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 14, 18, 0, 14, 16, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(20, 23, 24, 0, 20, 24, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 21, 0),
    gsSP2Triangles(26, 27, 22, 0, 26, 22, 21, 0),
    gsSP2Triangles(25, 28, 29, 0, 25, 29, 26, 0),
    gsSP2Triangles(29, 30, 27, 0, 29, 27, 26, 0),
    gsSP1Triangle(30, 29, 31, 0),
    gsSPVertex(&bdan_boss_room_0Vtx_000070[345], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 1, 0, 6, 7, 1, 0),
    gsSP2Triangles(6, 1, 5, 0, 7, 8, 2, 0),
    gsSP2Triangles(7, 2, 1, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 13, 16, 0),
    gsSP2Triangles(17, 16, 18, 0, 14, 19, 20, 0),
    gsSP2Triangles(14, 20, 15, 0, 19, 21, 22, 0),
    gsSP2Triangles(19, 22, 20, 0, 23, 9, 12, 0),
    gsSP2Triangles(23, 12, 24, 0, 10, 25, 26, 0),
    gsSP2Triangles(10, 26, 11, 0, 25, 17, 18, 0),
    gsSP1Triangle(25, 18, 26, 0),
    gsSPEndDisplayList(),
};

Gfx bdan_boss_room_0DL_001E28[] = {
    gsSPDisplayList(bdan_boss_room_0DL_001830),
    gsSPEndDisplayList(),
};

u64 bdan_boss_room_0TLUT_001E38[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_0TLUT_001E38.rgba16.inc.c"
};

u8 bdan_boss_room_0_unaccounted_002038[] = {
    0x00, 0x00, 0x00, 0xB8, 0x00, 0x00, 0x00, 0x00, 
};

u64 bdan_boss_room_0Tex_002040[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_0Tex_002040.ci8.inc.c"
};

Vtx bdan_boss_room_0Vtx_002840[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_0Vtx_002840.vtx.inc"
};

Gfx bdan_boss_room_0DL_002910[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_boss_room_0Vtx_002840[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_boss_room_0Tex_002C18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_boss_room_0TLUT_002A10),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(bdan_boss_room_0Vtx_002840, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSPEndDisplayList(),
};

Gfx bdan_boss_room_0DL_002A00[] = {
    gsSPDisplayList(bdan_boss_room_0DL_002910),
    gsSPEndDisplayList(),
};

u64 bdan_boss_room_0TLUT_002A10[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_0TLUT_002A10.rgba16.inc.c"
};

u8 bdan_boss_room_0_unaccounted_002C10[] = {
    0x00, 0x00, 0x00, 0xB8, 0x00, 0x00, 0x00, 0x00, 
};

u64 bdan_boss_room_0Tex_002C18[] = {
#include "assets/scenes/dungeons/bdan_boss/bdan_boss_room_0Tex_002C18.ci8.inc.c"
};

