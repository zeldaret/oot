#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "MIZUsin_room_4.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "MIZUsin_scene.h"
#include "MIZUsin_room_0.h"
#include "MIZUsin_room_1.h"
#include "MIZUsin_room_2.h"
#include "MIZUsin_room_3.h"
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
#include "MIZUsin_room_22.h"

SceneCmd MIZUsin_room_4Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&MIZUsin_room_4PolygonType2_000150),
    SCENE_CMD_OBJECT_LIST(6, MIZUsin_room_4ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(20, MIZUsin_room_4ActorList_00004C),
    SCENE_CMD_END(),
};

s16 MIZUsin_room_4ObjectList_000040[] = {
    OBJECT_MIZU_OBJECTS,
    OBJECT_SYOKUDAI,
    OBJECT_BOX,
    OBJECT_D_HSBLOCK,
    OBJECT_KIBAKO2,
    OBJECT_EI,
};

ActorEntry MIZUsin_room_4ActorList_00004C[] = {
    { ACTOR_OBJ_SYOKUDAI,  {   1155,    800,   -825 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_BG_MIZU_WATER, {   1300,    765,   -180 }, {      0, 0X4000,      0 }, 0xFF00 },
    { ACTOR_OBJ_KIBAKO2,   {   1205,    800,  -1036 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,   {   1265,    800,  -1036 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,   {   1374,    800,  -1036 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,   {   1536,    800,   -922 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,   {   1536,    800,   -821 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,   {   1536,    800,   -712 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,   {   1434,    800,  -1036 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO,    {   1284,    800,   -621 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO,    {   1393,    800,   -621 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO,    {   1341,    800,   -621 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO,    {   1470,    800,   -622 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_TSUBO,     {   1222,    800,   -617 }, {      0,      0,      0 }, 0x4003 },
    { ACTOR_OBJ_TSUBO,     {   1122,    800,   -617 }, {      0,      0,      0 }, 0x4E03 },
    { ACTOR_OBJ_TSUBO,     {   1172,    800,   -617 }, {      0,      0,      0 }, 0x5003 },
    { ACTOR_EN_WEIYER,     {   1199,    460,   -772 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_EN_WEIYER,     {   1202,    460,   -865 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_EN_WEIYER,     {   1350,    620,   -867 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_EN_WEIYER,     {   1353,    620,   -776 }, {      0, 0XC000,      0 }, 0x0000 },
};

u8 MIZUsin_room_4_possiblePadding_00014C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 MIZUsin_room_4PolygonType2_000150 = { 
    2, 5,
    MIZUsin_room_4PolygonDlist2_00015C,
    MIZUsin_room_4PolygonDlist2_00015C + ARRAY_COUNTU(MIZUsin_room_4PolygonDlist2_00015C)
};

PolygonDlist2 MIZUsin_room_4PolygonDlist2_00015C[5] = {
    { {    940,    620,   -510 },    623, MIZUsin_room_4DL_000780, NULL },
    { {   1320,    870,   -820 },    351, MIZUsin_room_4DL_0023A0, NULL },
    { {   1290,    825,   -820 },    175, MIZUsin_room_4DL_0016C0, NULL },
    { {    940,    540,   -510 },    608, MIZUsin_room_4DL_000AD8, NULL },
    { {   1140,    580,   -820 },    230, MIZUsin_room_4DL_001370, NULL },
};

s32 MIZUsin_room_4_terminatorMaybe_0001AC = { 0x01000000 };

Vtx MIZUsin_room_4Vtx_0001B0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_4Vtx_0001B0.vtx.inc"
};

Gfx MIZUsin_room_4DL_000780[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_4Vtx_0001B0[85], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_sceneTex_013C30, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(MIZUsin_room_4Vtx_0001B0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 0, 0),
    gsSP2Triangles(15, 0, 2, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 22, 21, 0),
    gsSP2Triangles(27, 21, 28, 0, 26, 25, 8, 0),
    gsSP2Triangles(21, 29, 28, 0, 30, 26, 8, 0),
    gsSP1Triangle(29, 21, 23, 0),
    gsSPVertex(&MIZUsin_room_4Vtx_0001B0[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 8, 0),
    gsSP2Triangles(12, 14, 13, 0, 12, 15, 14, 0),
    gsSP2Triangles(10, 9, 14, 0, 10, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 20, 0, 23, 28, 29, 0),
    gsSP2Triangles(27, 21, 20, 0, 25, 28, 23, 0),
    gsSPVertex(&MIZUsin_room_4Vtx_0001B0[61], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 7, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 7, 6, 0),
    gsSP2Triangles(10, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 9, 7, 14, 0),
    gsSP2Triangles(10, 13, 15, 0, 21, 10, 16, 0),
    gsSP2Triangles(21, 16, 22, 0, 21, 11, 10, 0),
    gsSP2Triangles(7, 23, 5, 0, 7, 8, 23, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_4Vtx_000968[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_4Vtx_000968.vtx.inc"
};

Gfx MIZUsin_room_4DL_000AD8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_4Vtx_000968[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_4Tex_004020, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(MIZUsin_room_4Vtx_000968, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 4, 6, 0),
    gsSP2Triangles(11, 6, 12, 0, 5, 4, 13, 0),
    gsSP1Triangle(4, 14, 13, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_4Vtx_000BF0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_4Vtx_000BF0.vtx.inc"
};

Gfx MIZUsin_room_4DL_001370[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_4Vtx_000BF0[112], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_4Tex_003820, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(MIZUsin_room_4Vtx_000BF0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 3, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(9, 15, 16, 0, 12, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 20, 22, 0),
    gsSP2Triangles(18, 23, 24, 0, 21, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 29, 31, 0),
    gsSPVertex(&MIZUsin_room_4Vtx_000BF0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 8, 0, 13, 14, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 15, 19, 0),
    gsSP2Triangles(20, 21, 17, 0, 22, 23, 19, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(30, 31, 26, 0),
    gsSPVertex(&MIZUsin_room_4Vtx_000BF0[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 7, 0, 8, 9, 5, 0),
    gsSP2Triangles(10, 11, 7, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 14, 0),
    gsSP2Triangles(19, 20, 17, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 21, 25, 0, 26, 27, 23, 0),
    gsSP2Triangles(28, 29, 25, 0, 0, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_4Vtx_000BF0[96], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 11, 0, 12, 13, 9, 0),
    gsSP1Triangle(14, 15, 11, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_4Vtx_001540[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_4Vtx_001540.vtx.inc"
};

Gfx MIZUsin_room_4DL_0016C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_4Vtx_001540[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(MIZUsin_room_4Tex_002820, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_4Vtx_001540, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_4Vtx_001790[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_4Vtx_001790.vtx.inc"
};

Gfx MIZUsin_room_4DL_0023A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_4Vtx_001790[185], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_room_4Tex_004820, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_4Vtx_001790, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 3, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 10, 6, 0, 8, 7, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 12, 17, 13, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(18, 22, 19, 0, 21, 20, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_4Tex_005820, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_4Vtx_001790[24], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 9, 25, 0, 9, 26, 25, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 30, 28, 0),
    gsSPVertex(&MIZUsin_room_4Vtx_001790[55], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 10, 8, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 11, 13, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 15, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 19, 21, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 17, 27, 29, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_4Tex_005020, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_4Vtx_001790[85], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 20, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_4Tex_004020, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_4Vtx_001790[117], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(7, 6, 3, 0, 7, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_4Tex_003020, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_4Vtx_001790[125], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(11, 12, 9, 0, 9, 12, 13, 0),
    gsSP2Triangles(13, 6, 9, 0, 5, 14, 9, 0),
    gsSP2Triangles(5, 9, 6, 0, 9, 15, 7, 0),
    gsSP2Triangles(14, 15, 9, 0, 16, 1, 0, 0),
    gsSP2Triangles(0, 17, 16, 0, 18, 0, 3, 0),
    gsSP2Triangles(19, 18, 11, 0, 19, 11, 10, 0),
    gsSP2Triangles(0, 18, 19, 0, 0, 19, 17, 0),
    gsSP2Triangles(2, 1, 15, 0, 2, 15, 14, 0),
    gsSP2Triangles(16, 17, 8, 0, 16, 8, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_4Vtx_001790[145], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_4Vtx_001790[161], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(3, 1, 4, 0, 4, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 7, 6, 0),
    gsSP2Triangles(9, 6, 10, 0, 10, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(14, 18, 19, 0, 14, 19, 12, 0),
    gsSP2Triangles(19, 18, 20, 0, 21, 16, 15, 0),
    gsSP2Triangles(21, 15, 22, 0, 22, 23, 21, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_4_unaccounted_0027F0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x07, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0xD8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x16, 0xC0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x23, 0xA0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_4Tex_002820[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_4Tex_002820.i4.inc.c"
};

u64 MIZUsin_room_4Tex_003020[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_4Tex_003020.rgba16.inc.c"
};

u64 MIZUsin_room_4Tex_003820[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_4Tex_003820.rgba16.inc.c"
};

u64 MIZUsin_room_4Tex_004020[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_4Tex_004020.rgba16.inc.c"
};

u64 MIZUsin_room_4Tex_004820[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_4Tex_004820.rgba16.inc.c"
};

u64 MIZUsin_room_4Tex_005020[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_4Tex_005020.rgba16.inc.c"
};

u64 MIZUsin_room_4Tex_005820[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_4Tex_005820.rgba16.inc.c"
};

