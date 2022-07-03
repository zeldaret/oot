#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ddan_room_16.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ddan_scene.h"
#include "ddan_room_0.h"
#include "ddan_room_1.h"
#include "ddan_room_2.h"
#include "ddan_room_3.h"
#include "ddan_room_4.h"
#include "ddan_room_5.h"
#include "ddan_room_6.h"
#include "ddan_room_7.h"
#include "ddan_room_8.h"
#include "ddan_room_9.h"
#include "ddan_room_10.h"
#include "ddan_room_11.h"
#include "ddan_room_12.h"
#include "ddan_room_13.h"
#include "ddan_room_14.h"
#include "ddan_room_15.h"

SceneCmd ddan_room_16Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ddan_room_16PolygonType2_000050),
    SCENE_CMD_OBJECT_LIST(9, ddan_room_16ObjectList_000038),
    SCENE_CMD_END(),
};

s16 ddan_room_16ObjectList_000038[] = {
    OBJECT_DDAN_OBJECTS,
    OBJECT_DODOJR,
    OBJECT_ZF,
    OBJECT_MIZU_OBJECTS,
    OBJECT_AM,
    OBJECT_DEMO_KEKKAI,
    OBJECT_SYOKUDAI,
    OBJECT_GI_SUTARU,
    OBJECT_ST,
};

u8 ddan_room_16_possiblePadding_00004C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 ddan_room_16PolygonType2_000050 = { 
    2, 2,
    ddan_room_16PolygonDlist2_00005C,
    ddan_room_16PolygonDlist2_00005C + ARRAY_COUNTU(ddan_room_16PolygonDlist2_00005C)
};

PolygonDlist2 ddan_room_16PolygonDlist2_00005C[2] = {
    { {   -775,    196,  -2784 },    503, ddan_room_16DL_0009D0, NULL },
    { {   -890,   -394,  -3304 },    867, ddan_room_16DL_0019B8, NULL },
};

s32 ddan_room_16_terminatorMaybe_00007C = { 0x01000000 };

Vtx ddan_room_16Vtx_000080[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_16Vtx_000080.vtx.inc"
};

Gfx ddan_room_16DL_0009D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ddan_room_16Vtx_000080[141], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ddan_room_16Tex_005158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ddan_sceneTLUT_011D70),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ddan_room_16Vtx_000080, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&ddan_room_16Vtx_000080[30], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(7, 8, 5, 0, 7, 9, 8, 0),
    gsSP2Triangles(7, 10, 9, 0, 7, 0, 11, 0),
    gsSP2Triangles(7, 11, 10, 0, 0, 12, 11, 0),
    gsSP2Triangles(0, 3, 13, 0, 0, 13, 12, 0),
    gsSP2Triangles(3, 14, 13, 0, 3, 4, 15, 0),
    gsSP2Triangles(3, 15, 14, 0, 4, 16, 15, 0),
    gsSP1Triangle(4, 6, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_004158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000080[47], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_005158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000080[52], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_004158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000080[56], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_004958, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000080[68], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 2, 1, 5, 0),
    gsSP2Triangles(1, 6, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 5, 0, 3, 2, 5, 0),
    gsSP2Triangles(3, 5, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(14, 17, 10, 0, 14, 10, 9, 0),
    gsSP2Triangles(15, 14, 9, 0, 15, 9, 13, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(20, 22, 21, 0, 23, 22, 20, 0),
    gsSP2Triangles(23, 24, 22, 0, 23, 25, 26, 0),
    gsSP2Triangles(23, 26, 24, 0, 25, 23, 20, 0),
    gsSP2Triangles(25, 20, 19, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 29, 30, 0, 28, 31, 29, 0),
    gsSPVertex(&ddan_room_16Vtx_000080[100], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 0, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_004158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000080[109], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 8, 5, 0, 4, 2, 8, 0),
    gsSP2Triangles(2, 1, 8, 0, 9, 8, 1, 0),
    gsSP2Triangles(9, 10, 8, 0, 10, 5, 8, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0),
    gsSP2Triangles(14, 15, 12, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 19, 17, 0, 19, 20, 17, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 24, 22, 0),
    gsSP2Triangles(24, 25, 22, 0, 26, 12, 27, 0),
    gsSP2Triangles(26, 13, 12, 0, 12, 15, 27, 0),
    gsSP2Triangles(28, 22, 25, 0, 28, 29, 22, 0),
    gsSP2Triangles(29, 23, 22, 0, 30, 17, 20, 0),
    gsSP2Triangles(30, 31, 17, 0, 31, 18, 17, 0),
    gsSPEndDisplayList(),
};

Vtx ddan_room_16Vtx_000DD8[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_16Vtx_000DD8.vtx.inc"
};

Gfx ddan_room_16DL_0019B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ddan_room_16Vtx_000DD8[182], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ddan_room_16Tex_004158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ddan_sceneTLUT_011D70),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ddan_room_16Vtx_000DD8, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 1, 5, 6, 0),
    gsSP2Triangles(1, 7, 5, 0, 7, 8, 5, 0),
    gsSP2Triangles(1, 4, 7, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 11, 9, 0, 11, 12, 9, 0),
    gsSP2Triangles(7, 4, 11, 0, 8, 7, 10, 0),
    gsSP2Triangles(3, 1, 6, 0, 13, 0, 14, 0),
    gsSP1Triangle(15, 12, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_003158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000DD8[16], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(7, 12, 8, 0, 13, 14, 15, 0),
    gsSP2Triangles(5, 4, 16, 0, 17, 5, 16, 0),
    gsSP2Triangles(17, 16, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 13, 15, 0, 22, 15, 23, 0),
    gsSP2Triangles(19, 17, 18, 0, 19, 18, 20, 0),
    gsSP2Triangles(24, 10, 11, 0, 24, 11, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_005158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000DD8[42], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 6, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(6, 5, 10, 0, 6, 10, 8, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 12, 0),
    gsSP2Triangles(12, 11, 13, 0, 12, 13, 14, 0),
    gsSP2Triangles(14, 13, 15, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(16, 15, 20, 0, 16, 20, 18, 0),
    gsSP2Triangles(18, 20, 21, 0, 18, 21, 1, 0),
    gsSP2Triangles(2, 1, 21, 0, 2, 21, 4, 0),
    gsSP2Triangles(22, 11, 10, 0, 22, 10, 23, 0),
    gsSP2Triangles(24, 13, 11, 0, 24, 11, 22, 0),
    gsSP2Triangles(25, 15, 13, 0, 25, 13, 24, 0),
    gsSP2Triangles(26, 20, 15, 0, 26, 15, 25, 0),
    gsSP2Triangles(27, 21, 20, 0, 27, 20, 26, 0),
    gsSP2Triangles(28, 4, 21, 0, 28, 21, 27, 0),
    gsSP2Triangles(29, 5, 4, 0, 29, 4, 28, 0),
    gsSP2Triangles(23, 10, 5, 0, 23, 5, 29, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ddan_room_16Tex_002158, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000DD8[72], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(9, 0, 3, 0, 9, 3, 10, 0),
    gsSP2Triangles(16, 6, 8, 0, 16, 8, 11, 0),
    gsSP2Triangles(14, 5, 4, 0, 14, 4, 17, 0),
    gsSP2Triangles(2, 1, 13, 0, 2, 13, 12, 0),
    gsSP2Triangles(2, 12, 18, 0, 19, 16, 11, 0),
    gsSP2Triangles(10, 3, 18, 0, 19, 17, 4, 0),
    gsSP2Triangles(3, 2, 18, 0, 19, 4, 7, 0),
    gsSP2Triangles(11, 10, 18, 0, 19, 12, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ddan_room_16Tex_005158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ddan_sceneTLUT_011D70),
    gsSPVertex(&ddan_room_16Vtx_000DD8[92], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 3, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 10, 8, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 16, 0),
    gsSP2Triangles(13, 16, 14, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 22, 0),
    gsSP2Triangles(19, 22, 20, 0, 21, 23, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_003158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000DD8[116], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 2, 4, 0, 0, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_005158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000DD8[122], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 3, 5, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_004158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000DD8[128], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(10, 12, 11, 0, 12, 4, 11, 0),
    gsSP2Triangles(12, 5, 4, 0, 5, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_003158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000DD8[143], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 0, 6, 0, 5, 6, 3, 0),
    gsSP1Triangle(1, 6, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_003958, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000DD8[150], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 11, 0, 10, 12, 7, 0),
    gsSP1Triangle(7, 9, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_004158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000DD8[163], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_003958, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000DD8[166], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_004158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000DD8[170], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_003958, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000DD8[174], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(0, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_16Tex_004158, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_16Vtx_000DD8[179], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 ddan_room_16_unaccounted_002140[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x09, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x19, 0xB8, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ddan_room_16Tex_002158[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_16Tex_002158.rgba16.inc.c"
};

u64 ddan_room_16Tex_003158[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_16Tex_003158.ci8.inc.c"
};

u64 ddan_room_16Tex_003958[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_16Tex_003958.ci8.inc.c"
};

u64 ddan_room_16Tex_004158[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_16Tex_004158.ci8.inc.c"
};

u64 ddan_room_16Tex_004958[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_16Tex_004958.ci8.inc.c"
};

u64 ddan_room_16Tex_005158[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_16Tex_005158.ci8.inc.c"
};

