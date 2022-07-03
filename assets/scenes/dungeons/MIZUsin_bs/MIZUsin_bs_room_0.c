#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "MIZUsin_bs_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "MIZUsin_bs_scene.h"
#include "MIZUsin_bs_room_1.h"

SceneCmd MIZUsin_bs_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x05, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&MIZUsin_bs_room_0PolygonType0_000050),
    SCENE_CMD_OBJECT_LIST(8, MIZUsin_bs_room_0ObjectList_000038),
    SCENE_CMD_END(),
};

s16 MIZUsin_bs_room_0ObjectList_000038[] = {
    OBJECT_MIZU_OBJECTS,
    OBJECT_WARP1,
    OBJECT_WARP2,
    OBJECT_GI_HEARTS,
    OBJECT_BUBBLE,
    OBJECT_BL,
    OBJECT_MO,
    OBJECT_BDOOR,
};

u8 MIZUsin_bs_room_0_possiblePadding_000048[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 MIZUsin_bs_room_0PolygonType0_000050 = { 
    0, 1,
    MIZUsin_bs_room_0PolygonDlist_00005C,
    MIZUsin_bs_room_0PolygonDlist_00005C + ARRAY_COUNTU(MIZUsin_bs_room_0PolygonDlist_00005C)
};

PolygonDlist MIZUsin_bs_room_0PolygonDlist_00005C[1] = {
    { MIZUsin_bs_room_0DL_001460, NULL },
};

s32 MIZUsin_bs_room_0_terminatorMaybe_000064 = { 0x01000000 };

u8 MIZUsin_bs_room_0_possiblePadding_000068[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx MIZUsin_bs_room_0Vtx_000070[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_0Vtx_000070.vtx.inc"
};

Gfx MIZUsin_bs_room_0DL_000FD0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_bs_room_0Vtx_000070[238], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_bs_room_0Tex_003C70, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_bs_room_0Vtx_000070, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_bs_room_0Vtx_000070[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_bs_room_0Tex_003470, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_bs_room_0Vtx_000070[40], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&MIZUsin_bs_room_0Vtx_000070[71], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP1Triangle(19, 21, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_bs_room_0Tex_002C70, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_bs_room_0Vtx_000070[94], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 0, 5, 0, 0, 2, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 12, 14, 0, 16, 17, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_bs_room_0Tex_002470, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_bs_room_0Vtx_000070[112], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_bs_room_0Tex_001C70, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_bs_room_0Vtx_000070[117], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_bs_room_0Tex_001470, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_bs_room_0Vtx_000070[125], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 15, 16, 0, 12, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 25, 24, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 29, 28, 0),
    gsSP1Triangle(30, 13, 31, 0),
    gsSPVertex(&MIZUsin_bs_room_0Vtx_000070[157], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 1, 5, 6, 0),
    gsSP2Triangles(1, 6, 7, 0, 0, 8, 9, 0),
    gsSP2Triangles(0, 10, 8, 0, 8, 4, 3, 0),
    gsSP2Triangles(8, 10, 4, 0, 9, 11, 12, 0),
    gsSP2Triangles(9, 12, 13, 0, 14, 15, 12, 0),
    gsSP2Triangles(14, 12, 11, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 17, 20, 0, 21, 5, 1, 0),
    gsSP2Triangles(21, 1, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 26, 29, 0, 26, 25, 29, 0),
    gsSP2Triangles(27, 26, 28, 0, 18, 17, 19, 0),
    gsSP1Triangle(20, 17, 16, 0),
    gsSPVertex(&MIZUsin_bs_room_0Vtx_000070[187], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 10, 0),
    gsSP2Triangles(9, 5, 7, 0, 10, 12, 13, 0),
    gsSP2Triangles(0, 2, 3, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 18, 15, 0, 15, 19, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 21, 20, 0),
    gsSP2Triangles(21, 24, 22, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 28, 25, 0, 25, 29, 26, 0),
    gsSPVertex(&MIZUsin_bs_room_0Vtx_000070[217], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 5, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(0, 4, 1, 0, 3, 0, 2, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 12, 11, 0),
    gsSP2Triangles(11, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 19, 20, 0, 11, 10, 14, 0),
    gsSP2Triangles(13, 11, 15, 0, 19, 16, 18, 0),
    gsSP1Triangle(16, 20, 17, 0),
    gsSPEndDisplayList(),
};

Gfx MIZUsin_bs_room_0DL_001460[] = {
    gsSPDisplayList(MIZUsin_bs_room_0DL_000FD0),
    gsSPEndDisplayList(),
};

u64 MIZUsin_bs_room_0Tex_001470[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_0Tex_001470.rgba16.inc.c"
};

u64 MIZUsin_bs_room_0Tex_001C70[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_0Tex_001C70.rgba16.inc.c"
};

u64 MIZUsin_bs_room_0Tex_002470[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_0Tex_002470.rgba16.inc.c"
};

u64 MIZUsin_bs_room_0Tex_002C70[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_0Tex_002C70.rgba16.inc.c"
};

u64 MIZUsin_bs_room_0Tex_003470[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_0Tex_003470.rgba16.inc.c"
};

u64 MIZUsin_bs_room_0Tex_003C70[] = {
#include "assets/scenes/dungeons/MIZUsin_bs/MIZUsin_bs_room_0Tex_003C70.rgba16.inc.c"
};

