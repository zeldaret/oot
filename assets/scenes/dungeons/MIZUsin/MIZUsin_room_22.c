#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "MIZUsin_room_22.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "MIZUsin_scene.h"
#include "MIZUsin_room_0.h"
#include "MIZUsin_room_1.h"
#include "MIZUsin_room_2.h"
#include "MIZUsin_room_3.h"
#include "MIZUsin_room_4.h"
#include "MIZUsin_room_5.h"
#include "MIZUsin_room_6.h"
#include "MIZUsin_room_7.h"
#include "MIZUsin_room_8.h"
#include "MIZUsin_room_9.h"
#include "MIZUsin_room_10.h"
#include "MIZUsin_room_11.h"
#include "MIZUsin_room_12.h"
#include "MIZUsin_room_13.h"
#include "MIZUsin_room_14.h"
#include "MIZUsin_room_15.h"
#include "MIZUsin_room_16.h"
#include "MIZUsin_room_17.h"
#include "MIZUsin_room_18.h"
#include "MIZUsin_room_19.h"
#include "MIZUsin_room_20.h"
#include "MIZUsin_room_21.h"

SceneCmd MIZUsin_room_22Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&MIZUsin_room_22PolygonType2_000050),
    SCENE_CMD_OBJECT_LIST(10, MIZUsin_room_22ObjectList_000038),
    SCENE_CMD_END(),
};

s16 MIZUsin_room_22ObjectList_000038[] = {
    OBJECT_MIZU_OBJECTS,
    OBJECT_STREAM,
    OBJECT_SIOFUKI,
    OBJECT_D_HSBLOCK,
    OBJECT_SB,
    OBJECT_NY,
    OBJECT_TITE,
    OBJECT_BUBBLE,
    OBJECT_EI,
    OBJECT_BDOOR,
};

u8 MIZUsin_room_22_possiblePadding_00004C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 MIZUsin_room_22PolygonType2_000050 = { 
    2, 10,
    MIZUsin_room_22PolygonDlist2_00005C,
    MIZUsin_room_22PolygonDlist2_00005C + ARRAY_COUNTU(MIZUsin_room_22PolygonDlist2_00005C)
};

PolygonDlist2 MIZUsin_room_22PolygonDlist2_00005C[10] = {
    { {   -180,   1390,  -2760 },    961, MIZUsin_room_22DL_002E40, NULL },
    { {   -180,   1000,  -2760 },    651, MIZUsin_room_22DL_003E08, NULL },
    { {   -180,   1350,  -2760 },    962, MIZUsin_room_22DL_0040C8, NULL },
    { {   -180,   1170,  -3050 },    796, MIZUsin_room_22DL_004370, NULL },
    { {   -180,    970,  -2640 },    772, MIZUsin_room_22DL_0033A0, NULL },
    { {   -180,   1170,  -2760 },    971, MIZUsin_room_22DL_002B18, NULL },
    { {   -180,    890,  -2728 },    336, MIZUsin_room_22DL_000380, NULL },
    { {   -180,   1030,  -2760 },    961, MIZUsin_room_22DL_003778, NULL },
    { {   -180,   1170,  -3006 },    806, MIZUsin_room_22DL_0006D0, NULL },
    { {   -180,   1050,  -2828 },    918, MIZUsin_room_22DL_0020C0, NULL },
};

s32 MIZUsin_room_22_terminatorMaybe_0000FC = { 0x01000000 };

Vtx MIZUsin_room_22Vtx_000100[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Vtx_000100.vtx.inc"
};

Gfx MIZUsin_room_22DL_000380[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_22Vtx_000100[32], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_room_22Tex_0044E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_22Vtx_000100, 32, 0),
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

Vtx MIZUsin_room_22Vtx_000470[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Vtx_000470.vtx.inc"
};

Gfx MIZUsin_room_22DL_0006D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_22Vtx_000470[30], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_room_22Tex_0088E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_22Vtx_000470, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(8, 9, 7, 0, 9, 5, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(13, 14, 11, 0, 14, 12, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 18, 16, 0),
    gsSP2Triangles(18, 19, 16, 0, 19, 17, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 23, 24, 0, 21, 20, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP2Triangles(25, 28, 29, 0, 26, 25, 29, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_22Vtx_0007E0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Vtx_0007E0.vtx.inc"
};

Gfx MIZUsin_room_22DL_0020C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_22Vtx_0007E0[390], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_22Tex_0070E8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_22Vtx_0007E0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 6, 7, 9, 0),
    gsSP2Triangles(8, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(13, 18, 14, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 18, 19, 21, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(26, 31, 27, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_0007E0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 8, 13, 9, 0),
    gsSP2Triangles(14, 7, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 14, 15, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 21, 26, 22, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_0007E0[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(7, 12, 8, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 12, 13, 15, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(20, 6, 21, 0, 25, 19, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 25, 26, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_0007E0[93], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 2, 0, 7, 0, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 7, 8, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(13, 19, 14, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 20, 22, 19, 0),
    gsSP2Triangles(26, 27, 21, 0, 28, 29, 30, 0),
    gsSP1Triangle(26, 31, 27, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_0007E0[125], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 2, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 13, 8, 0),
    gsSP2Triangles(14, 9, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(14, 15, 1, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 19, 25, 20, 0),
    gsSP2Triangles(26, 21, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(26, 27, 13, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_0007E0[156], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 1, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 9, 6, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(13, 19, 14, 0, 20, 2, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 20, 21, 19, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(25, 15, 26, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_0007E0[187], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 2, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 6, 8, 0),
    gsSP2Triangles(13, 9, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(13, 14, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 20, 25, 21, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSP1Triangle(25, 26, 28, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_0007E0[219], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 6, 7, 9, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(14, 19, 15, 0, 20, 13, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 8, 20, 21, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(26, 31, 27, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_0007E0[251], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 8, 13, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(13, 14, 16, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 21, 26, 22, 0),
    gsSP2Triangles(27, 7, 28, 0, 29, 30, 31, 0),
    gsSP1Triangle(26, 27, 28, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_0007E0[283], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 2, 0, 7, 0, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 7, 8, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(14, 12, 15, 0, 19, 13, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 19, 20, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(26, 31, 27, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_0007E0[315], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 8, 13, 9, 0),
    gsSP2Triangles(14, 7, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 14, 15, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 21, 26, 22, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_0007E0[345], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(7, 12, 8, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 12, 13, 15, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(20, 25, 21, 0, 26, 19, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 26, 27, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_0007E0[377], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 2, 0, 7, 0, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 7, 8, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_22Vtx_002508[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Vtx_002508.vtx.inc"
};

Gfx MIZUsin_room_22DL_002B18[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_22Vtx_002508[89], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_22Tex_0048E8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_22Vtx_002508, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 3, 2, 4, 0),
    gsSP2Triangles(4, 2, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(1, 0, 9, 0, 1, 9, 7, 0),
    gsSP2Triangles(10, 4, 6, 0, 10, 11, 4, 0),
    gsSP2Triangles(11, 12, 4, 0, 12, 3, 4, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 14, 0),
    gsSP2Triangles(13, 16, 14, 0, 18, 19, 16, 0),
    gsSP2Triangles(18, 16, 13, 0, 18, 20, 19, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 21, 0),
    gsSP2Triangles(23, 17, 21, 0, 23, 21, 22, 0),
    gsSP2Triangles(14, 17, 23, 0, 14, 23, 24, 0),
    gsSP2Triangles(14, 24, 25, 0, 14, 25, 15, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0),
    gsSP2Triangles(26, 30, 29, 0, 26, 31, 30, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_002508[32], 32, 0),
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
    gsSPVertex(&MIZUsin_room_22Vtx_002508[64], 25, 0),
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
    gsSP1Triangle(13, 24, 14, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_22Vtx_002D70[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Vtx_002D70.vtx.inc"
};

Gfx MIZUsin_room_22DL_002E40[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_22Vtx_002D70[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_22Tex_0068E8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_22Vtx_002D70, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 2, 3, 0, 4, 0, 2, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_22Vtx_002F40[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Vtx_002F40.vtx.inc"
};

Gfx MIZUsin_room_22DL_0033A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_22Vtx_002F40[62], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_22Tex_0080E8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_22Vtx_002F40, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(6, 5, 12, 0, 5, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_002F40[30], 32, 0),
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

Vtx MIZUsin_room_22Vtx_003518[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Vtx_003518.vtx.inc"
};

Gfx MIZUsin_room_22DL_003778[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_22Vtx_003518[30], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_22Tex_0078E8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_22Vtx_003518, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 7, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 11, 10, 12, 0),
    gsSP2Triangles(13, 11, 12, 0, 13, 9, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 14, 16, 0),
    gsSP2Triangles(18, 15, 14, 0, 17, 18, 14, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 20, 19, 0),
    gsSP2Triangles(23, 22, 19, 0, 23, 19, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 24, 26, 0),
    gsSP2Triangles(28, 25, 24, 0, 27, 28, 24, 0),
    gsSP2Triangles(8, 7, 1, 0, 8, 1, 29, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_22Vtx_0038C8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Vtx_0038C8.vtx.inc"
};

Gfx MIZUsin_room_22DL_003E08[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_22Vtx_0038C8[76], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_22Tex_0060E8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_22Vtx_0038C8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_0038C8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_22Vtx_0038C8[64], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(3, 2, 10, 0, 3, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_22Vtx_003FA8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Vtx_003FA8.vtx.inc"
};

Gfx MIZUsin_room_22DL_0040C8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_22Vtx_003FA8[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_22Tex_0058E8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_22Vtx_003FA8, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_22Vtx_0041D0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Vtx_0041D0.vtx.inc"
};

Gfx MIZUsin_room_22DL_004370[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_22Vtx_0041D0[18], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_22Tex_0050E8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_22Vtx_0041D0, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(3, 12, 13, 0, 3, 13, 0, 0),
    gsSP2Triangles(7, 14, 15, 0, 7, 15, 4, 0),
    gsSP2Triangles(11, 16, 17, 0, 11, 17, 8, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_22_unaccounted_004490[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xD0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x20, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2B, 0x18, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2E, 0x40, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x33, 0xA0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x37, 0x78, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3E, 0x08, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x40, 0xC8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x43, 0x70, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_22Tex_0044E8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Tex_0044E8.rgba16.inc.c"
};

u64 MIZUsin_room_22Tex_0048E8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Tex_0048E8.rgba16.inc.c"
};

u64 MIZUsin_room_22Tex_0050E8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Tex_0050E8.rgba16.inc.c"
};

u64 MIZUsin_room_22Tex_0058E8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Tex_0058E8.rgba16.inc.c"
};

u64 MIZUsin_room_22Tex_0060E8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Tex_0060E8.rgba16.inc.c"
};

u64 MIZUsin_room_22Tex_0068E8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Tex_0068E8.rgba16.inc.c"
};

u64 MIZUsin_room_22Tex_0070E8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Tex_0070E8.rgba16.inc.c"
};

u64 MIZUsin_room_22Tex_0078E8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Tex_0078E8.rgba16.inc.c"
};

u64 MIZUsin_room_22Tex_0080E8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Tex_0080E8.rgba16.inc.c"
};

u64 MIZUsin_room_22Tex_0088E8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_22Tex_0088E8.rgba16.inc.c"
};

