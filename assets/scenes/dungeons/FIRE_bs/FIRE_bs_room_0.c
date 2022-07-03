#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "FIRE_bs_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "FIRE_bs_scene.h"
#include "FIRE_bs_room_1.h"

SceneCmd FIRE_bs_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x05, 0x03, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&FIRE_bs_room_0PolygonType0_000050),
    SCENE_CMD_OBJECT_LIST(7, FIRE_bs_room_0ObjectList_000038),
    SCENE_CMD_END(),
};

s16 FIRE_bs_room_0ObjectList_000038[] = {
    OBJECT_HIDAN_OBJECTS,
    OBJECT_BDOOR,
    OBJECT_FD,
    OBJECT_FD2,
    OBJECT_WARP2,
    OBJECT_GI_HEARTS,
    OBJECT_WARP1,
};

u8 FIRE_bs_room_0_possiblePadding_000048[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 FIRE_bs_room_0PolygonType0_000050 = { 
    0, 1,
    FIRE_bs_room_0PolygonDlist_00005C,
    FIRE_bs_room_0PolygonDlist_00005C + ARRAY_COUNTU(FIRE_bs_room_0PolygonDlist_00005C)
};

PolygonDlist FIRE_bs_room_0PolygonDlist_00005C[1] = {
    { FIRE_bs_room_0DL_002E08, NULL },
};

s32 FIRE_bs_room_0_terminatorMaybe_000064 = { 0x01000000 };

u8 FIRE_bs_room_0_possiblePadding_000068[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx FIRE_bs_room_0Vtx_000070[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_0Vtx_000070.vtx.inc"
};

Gfx FIRE_bs_room_0DL_001F20[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[483], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_003400, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(FIRE_bs_room_0Vtx_000070, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_002C00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[8], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 2, 4, 0, 2, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(10, 11, 7, 0, 10, 7, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 7, 11, 0),
    gsSP2Triangles(9, 15, 6, 0, 14, 16, 17, 0),
    gsSP2Triangles(7, 14, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 18, 0),
    gsSP2Triangles(22, 18, 21, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[39], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 9, 8, 7, 0),
    gsSP2Triangles(12, 13, 0, 0, 12, 0, 3, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 17, 20, 21, 0),
    gsSP2Triangles(17, 21, 22, 0, 14, 23, 15, 0),
    gsSP2Triangles(15, 12, 16, 0, 24, 25, 12, 0),
    gsSP2Triangles(3, 16, 12, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[71], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_0Tex_004068, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, FIRE_bs_room_0TLUT_002E48),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[79], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 12, 15, 0),
    gsSP2Triangles(22, 21, 15, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 29, 30, 0, 16, 31, 14, 0),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[111], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[143], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[175], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[207], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_0Tex_003C68, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[215], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[247], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_0Tex_003A68, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, FIRE_bs_room_0TLUT_002E28),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[267], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(9, 8, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 17, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[299], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP1Triangle(30, 27, 26, 0),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[330], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 30, 28, 0, 21, 31, 22, 0),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[362], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 20, 0),
    gsSP2Triangles(16, 18, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[394], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_0Tex_003868, G_IM_FMT_CI, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[397], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 0, 0),
    gsSP1Triangle(5, 0, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_0Tex_003468, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[405], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(7, 9, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(30, 27, 29, 0),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[436], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP1Triangle(11, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_0Tex_002E68, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, FIRE_bs_room_0TLUT_002E48),
    gsSPVertex(&FIRE_bs_room_0Vtx_000070[451], 32, 0),
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

Vtx FIRE_bs_room_0Vtx_0026C8[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_0Vtx_0026C8.vtx.inc"
};

Gfx FIRE_bs_room_0DL_002848[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&FIRE_bs_room_0Vtx_0026C8[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_003C00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPLoadMultiBlock(FIRE_bs_sceneTex_004400, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(FIRE_bs_room_0Vtx_0026C8, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 9, 10, 0),
    gsSP2Triangles(3, 10, 8, 0, 3, 5, 11, 0),
    gsSP2Triangles(3, 11, 9, 0, 11, 1, 9, 0),
    gsSP2Triangles(4, 7, 6, 0, 4, 6, 5, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 13, 2, 0),
    gsSP2Triangles(14, 2, 1, 0, 15, 10, 14, 0),
    gsSP2Triangles(15, 6, 8, 0, 15, 8, 10, 0),
    gsSPEndDisplayList(),
};

Vtx FIRE_bs_room_0Vtx_002978[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_0Vtx_002978.vtx.inc"
};

Gfx FIRE_bs_room_0DL_002C78[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&FIRE_bs_room_0Vtx_002978[40], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_0Tex_003C68, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, FIRE_bs_room_0TLUT_002E48),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(FIRE_bs_room_0Vtx_002978, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 9, 4, 0),
    gsSP2Triangles(4, 10, 5, 0, 11, 7, 6, 0),
    gsSP2Triangles(8, 12, 6, 0, 13, 1, 0, 0),
    gsSP2Triangles(2, 14, 0, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 17, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 22, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 25, 0, 22, 24, 20, 0),
    gsSP2Triangles(28, 25, 27, 0, 17, 19, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_0Tex_003068, G_IM_FMT_CI, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_0Vtx_002978[30], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(0, 3, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 5, 7, 9, 0),
    gsSP2Triangles(7, 8, 9, 0, 1, 4, 2, 0),
    gsSPEndDisplayList(),
};

Gfx FIRE_bs_room_0DL_002E08[] = {
    gsSPDisplayList(FIRE_bs_room_0DL_001F20),
    gsSPDisplayList(FIRE_bs_room_0DL_002848),
    gsSPDisplayList(FIRE_bs_room_0DL_002C78),
    gsSPEndDisplayList(),
};

u64 FIRE_bs_room_0TLUT_002E28[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_0TLUT_002E28.rgba16.inc.c"
};

u64 FIRE_bs_room_0TLUT_002E48[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_0TLUT_002E48.rgba16.inc.c"
};

u64 FIRE_bs_room_0Tex_002E68[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_0Tex_002E68.ci4.inc.c"
};

u64 FIRE_bs_room_0Tex_003068[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_0Tex_003068.ci4.inc.c"
};

u64 FIRE_bs_room_0Tex_003468[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_0Tex_003468.ci4.inc.c"
};

u64 FIRE_bs_room_0Tex_003868[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_0Tex_003868.ci4.inc.c"
};

u64 FIRE_bs_room_0Tex_003A68[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_0Tex_003A68.ci4.inc.c"
};

u64 FIRE_bs_room_0Tex_003C68[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_0Tex_003C68.ci4.inc.c"
};

u64 FIRE_bs_room_0Tex_004068[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_0Tex_004068.ci4.inc.c"
};

