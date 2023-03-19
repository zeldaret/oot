#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "MIZUsin_room_18.h"
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
#include "MIZUsin_room_19.h"
#include "MIZUsin_room_20.h"
#include "MIZUsin_room_21.h"
#include "MIZUsin_room_22.h"

SceneCmd MIZUsin_room_18Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&MIZUsin_room_18PolygonType2_0000F0),
    SCENE_CMD_OBJECT_LIST(6, MIZUsin_room_18ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(13, MIZUsin_room_18ActorList_00004C),
    SCENE_CMD_END(),
};

s16 MIZUsin_room_18ObjectList_000040[] = {
    OBJECT_MIZU_OBJECTS,
    OBJECT_BOX,
    OBJECT_D_HSBLOCK,
    OBJECT_NY,
    OBJECT_ZF,
    OBJECT_SB,
};

ActorEntry MIZUsin_room_18ActorList_00004C[] = {
    { ACTOR_EN_NY,          {   1584,      0,    178 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_ZF,          {   1720,    335,    283 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_ZF,          {   1717,    335,     84 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_WONDER_ITEM, {   1822,     75,    182 }, {      0,      0,    0X6 }, 0x1ABF },
    { ACTOR_BG_MIZU_WATER,  {   1350,    765,    180 }, {      0, 0XC000,      0 }, 0xFF00 },
    { ACTOR_ELF_MSG2,       {   1823,     87,    179 }, {      0,      0,    0X1 }, 0x3F00 },
    { ACTOR_EN_BOX,         {   1646,      0,    172 }, {      0, 0X4000,      0 }, 0x1801 },
    { ACTOR_OBJ_HSBLOCK,    {   1210,    -60,    260 }, {      0,      0,      0 }, 0x1FC1 },
    { ACTOR_OBJ_HSBLOCK,    {   1210,    -60,    100 }, {      0,      0,      0 }, 0x1FC1 },
    { ACTOR_OBJ_ROOMTIMER,  {   1492,      0,    248 }, {      0,      0,      0 }, 0x7FFF },
    { ACTOR_EN_SB,          {   1509,      0,    111 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_SB,          {   1444,      0,    216 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_EN_SB,          {   1536,      0,    245 }, {      0, 0X8000,      0 }, 0xFFFF },
};

u8 MIZUsin_room_18_possiblePadding_0000EC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 MIZUsin_room_18PolygonType2_0000F0 = { 
    2, 7,
    MIZUsin_room_18PolygonDlist2_0000FC,
    MIZUsin_room_18PolygonDlist2_0000FC + ARRAY_COUNTU(MIZUsin_room_18PolygonDlist2_0000FC)
};

PolygonDlist2 MIZUsin_room_18PolygonDlist2_0000FC[7] = {
    { {   1500,    160,    180 },    486, MIZUsin_room_18DL_0006B0, NULL },
    { {   1830,    110,    180 },     81, MIZUsin_room_18DL_000240, NULL },
    { {   1510,      0,    180 },    452, MIZUsin_room_18DL_0008F8, NULL },
    { {   1190,     60,    180 },     78, MIZUsin_room_18DL_000B38, NULL },
    { {   1510,    160,    180 },    443, MIZUsin_room_18DL_0011A0, NULL },
    { {   1510,    280,    180 },    433, MIZUsin_room_18DL_000E00, NULL },
    { {   1510,    160,    180 },    460, MIZUsin_room_18DL_001740, NULL },
};

s32 MIZUsin_room_18_terminatorMaybe_00016C = { 0x01000000 };

Vtx MIZUsin_room_18Vtx_000170[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_18Vtx_000170.vtx.inc"
};

Gfx MIZUsin_room_18DL_000240[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_18Vtx_000170[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_18Tex_0018F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_18Vtx_000170, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(1, 4, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_18Vtx_000340[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_18Vtx_000340.vtx.inc"
};

Gfx MIZUsin_room_18DL_0006B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_18Vtx_000340[47], 8, 0),
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
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_18Vtx_000340, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(1, 0, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 7, 9, 0, 7, 8, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 17, 13, 15, 0),
    gsSP2Triangles(17, 15, 10, 0, 17, 10, 12, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 24, 23, 19, 0),
    gsSP2Triangles(24, 19, 18, 0, 22, 25, 23, 0),
    gsSP2Triangles(21, 25, 22, 0, 21, 22, 20, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&MIZUsin_room_18Vtx_000340[30], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(13, 16, 15, 0, 13, 12, 16, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_18Vtx_000828[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_18Vtx_000828.vtx.inc"
};

Gfx MIZUsin_room_18DL_0008F8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_18Vtx_000828[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_18Tex_0020F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_18Vtx_000828, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(1, 0, 3, 0, 0, 2, 4, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_18Vtx_0009F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_18Vtx_0009F8.vtx.inc"
};

Gfx MIZUsin_room_18DL_000B38[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_18Vtx_0009F8[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_sceneTex_015030, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_18Vtx_0009F8, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_18Vtx_000C40[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_18Vtx_000C40.vtx.inc"
};

Gfx MIZUsin_room_18DL_000E00[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_18Vtx_000C40[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 5),
    gsDPLoadMultiBlock(MIZUsin_room_18Tex_0028F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_18Vtx_000C40, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(2, 3, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 7, 9, 0, 7, 8, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 10, 0),
    gsSP2Triangles(11, 10, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 18, 15, 0, 16, 15, 19, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_18Vtx_000F20[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_18Vtx_000F20.vtx.inc"
};

Gfx MIZUsin_room_18DL_0011A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_18Vtx_000F20[32], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 5),
    gsDPLoadMultiBlock(MIZUsin_room_18Tex_0030F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_18Vtx_000F20, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 0, 2, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 9, 15, 10, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 28, 30, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_18Vtx_0012D0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_18Vtx_0012D0.vtx.inc"
};

Gfx MIZUsin_room_18DL_001740[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_18Vtx_0012D0[63], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 5),
    gsDPLoadMultiBlock(MIZUsin_room_18Tex_0038F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_18Vtx_0012D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&MIZUsin_room_18Vtx_0012D0[32], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 17, 21, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 26, 24, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 27, 29, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_18_unaccounted_0018B8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x40, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xB0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x08, 0xF8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0x38, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x11, 0xA0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x40, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_18Tex_0018F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_18Tex_0018F8.rgba16.inc.c"
};

u64 MIZUsin_room_18Tex_0020F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_18Tex_0020F8.rgba16.inc.c"
};

u64 MIZUsin_room_18Tex_0028F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_18Tex_0028F8.rgba16.inc.c"
};

u64 MIZUsin_room_18Tex_0030F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_18Tex_0030F8.rgba16.inc.c"
};

u64 MIZUsin_room_18Tex_0038F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_18Tex_0038F8.rgba16.inc.c"
};

