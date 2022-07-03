#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_room_22.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HAKAdan_scene.h"
#include "HAKAdan_room_0.h"
#include "HAKAdan_room_1.h"
#include "HAKAdan_room_2.h"
#include "HAKAdan_room_3.h"
#include "HAKAdan_room_4.h"
#include "HAKAdan_room_5.h"
#include "HAKAdan_room_6.h"
#include "HAKAdan_room_7.h"
#include "HAKAdan_room_8.h"
#include "HAKAdan_room_9.h"
#include "HAKAdan_room_10.h"
#include "HAKAdan_room_11.h"
#include "HAKAdan_room_12.h"
#include "HAKAdan_room_13.h"
#include "HAKAdan_room_14.h"
#include "HAKAdan_room_15.h"
#include "HAKAdan_room_16.h"
#include "HAKAdan_room_17.h"
#include "HAKAdan_room_18.h"
#include "HAKAdan_room_19.h"
#include "HAKAdan_room_20.h"
#include "HAKAdan_room_21.h"

SceneCmd HAKAdan_room_22Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_room_22PolygonType2_000050),
    SCENE_CMD_OBJECT_LIST(5, HAKAdan_room_22ObjectList_000038),
    SCENE_CMD_END(),
};

s16 HAKAdan_room_22ObjectList_000038[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_BDOOR,
};

u8 HAKAdan_room_22_possiblePadding_000044[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 HAKAdan_room_22PolygonType2_000050 = { 
    2, 1,
    HAKAdan_room_22PolygonDlist2_00005C,
    HAKAdan_room_22PolygonDlist2_00005C + ARRAY_COUNTU(HAKAdan_room_22PolygonDlist2_00005C)
};

PolygonDlist2 HAKAdan_room_22PolygonDlist2_00005C[1] = {
    { {  -2742,  -1483,   1131 },    622, HAKAdan_room_22DL_000B00, NULL },
};

s32 HAKAdan_room_22_terminatorMaybe_00006C = { 0x01000000 };

Vtx HAKAdan_room_22Vtx_000070[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_22Vtx_000070.vtx.inc"
};

Gfx HAKAdan_room_22DL_000B00[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_22Vtx_000070[161], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_016BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_22Vtx_000070, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 1, 0, 22, 1, 0, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 1, 0),
    gsSP2Triangles(18, 26, 27, 0, 18, 27, 20, 0),
    gsSP2Triangles(28, 26, 18, 0, 17, 28, 18, 0),
    gsSP2Triangles(12, 29, 30, 0, 12, 30, 14, 0),
    gsSP2Triangles(11, 31, 29, 0, 11, 29, 12, 0),
    gsSPVertex(&HAKAdan_room_22Vtx_000070[32], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(10, 14, 11, 0, 14, 13, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_22Tex_0011A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_22Vtx_000070[47], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(4, 2, 1, 0, 3, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_016BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_22Vtx_000070[52], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(0, 4, 7, 0, 0, 7, 1, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 9, 8, 0, 13, 8, 14, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_22Tex_0011A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_22Vtx_000070[68], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 5, 8, 0, 7, 6, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_016BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_22Vtx_000070[78], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(2, 4, 7, 0, 2, 7, 3, 0),
    gsSP2Triangles(6, 5, 1, 0, 6, 1, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(8, 12, 11, 0, 8, 13, 12, 0),
    gsSP2Triangles(8, 14, 13, 0, 8, 15, 14, 0),
    gsSP2Triangles(3, 16, 17, 0, 0, 3, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 0, 17, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_0173C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_22Vtx_000070[97], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 4, 5, 0, 3, 2, 5, 0),
    gsSP2Triangles(6, 1, 0, 0, 6, 0, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(12, 9, 8, 0, 13, 12, 8, 0),
    gsSP2Triangles(5, 4, 14, 0, 15, 5, 14, 0),
    gsSP2Triangles(14, 11, 10, 0, 15, 14, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_22Tex_000FA8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_22Vtx_000070[113], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_22Tex_0021A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_22Vtx_000070[145], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_22_unaccounted_000F98[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0x00, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_22Tex_000FA8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_22Tex_000FA8.rgba16.inc.c"
};

u64 HAKAdan_room_22Tex_0011A8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_22Tex_0011A8.rgba16.inc.c"
};

u64 HAKAdan_room_22Tex_0021A8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_22Tex_0021A8.rgba16.inc.c"
};

