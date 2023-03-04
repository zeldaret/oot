#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "MIZUsin_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "MIZUsin_scene.h"
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
#include "MIZUsin_room_22.h"

SceneCmd MIZUsin_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&MIZUsin_room_0PolygonType2_0001D0),
    SCENE_CMD_OBJECT_LIST(8, MIZUsin_room_0ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(28, MIZUsin_room_0ActorList_00004C),
    SCENE_CMD_END(),
};

s16 MIZUsin_room_0ObjectList_000040[] = {
    OBJECT_MIZU_OBJECTS,
    OBJECT_SYOKUDAI,
    OBJECT_BOX,
    OBJECT_D_HSBLOCK,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_NY,
    OBJECT_TITE,
};

ActorEntry MIZUsin_room_0ActorList_00004C[] = {
    { ACTOR_OBJ_HSBLOCK,     {   -179,    135,  -1094 }, {      0, 0X8000,      0 }, 0xFFC2 },
    { ACTOR_OBJ_HSBLOCK,     {   -606,    934,    357 }, {      0, 0X8000,      0 }, 0xFFC2 },
    { ACTOR_OBJ_HSBLOCK,     {   -513,    439,   -183 }, {      0, 0XC000,      0 }, 0xFFC2 },
    { ACTOR_OBJ_HSBLOCK,     {    153,    759,   -186 }, {      0, 0X4000,      0 }, 0xFFC2 },
    { ACTOR_OBJ_HSBLOCK,     {    387,    759,   -179 }, {      0, 0XC000,      0 }, 0xFFC2 },
    { ACTOR_OBJ_HSBLOCK,     {  -1054,    187,   -220 }, { 0X4000,      0,      0 }, 0xFFC2 },
    { ACTOR_BG_MIZU_MOVEBG,  {   -780,    780,   -180 }, {      0,      0,      0 }, 0x1FFF },
    { ACTOR_BG_MIZU_MOVEBG,  {   -176,    820,  -1052 }, {      0,      0,      0 }, 0x3FFF },
    { ACTOR_BG_MIZU_WATER,   {   -180,    765,   -180 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_EN_WONDER_TALK2, {   -690,    928,    342 }, {      0, 0X8000,      0 }, 0x857F },
    { ACTOR_OBJ_HSBLOCK,     {   -100,      0,    461 }, {      0,      0,      0 }, 0x0EC1 },
    { ACTOR_OBJ_HSBLOCK,     {   -261,      0,   -920 }, {      0,      0,      0 }, 0x0EC1 },
    { ACTOR_BG_MIZU_SHUTTER, {   -179,      0,    516 }, {      0, 0X8000,      0 }, 0x0FCE },
    { ACTOR_BG_MIZU_SHUTTER, {   -179,   -180,  -1084 }, {      0,      0,      0 }, 0x0FCE },
    { ACTOR_BG_MIZU_SHUTTER, {   -862,     60,   -183 }, {      0, 0X4000,      0 }, 0x0FCE },
    { ACTOR_OBJ_SWITCH,      {   -923,     60,   -180 }, {      0,      0,      0 }, 0x0E00 },
    { ACTOR_BG_MIZU_MOVEBG,  {   -180,    780,    100 }, {      0,      0,      0 }, 0x0FD9 },
    { ACTOR_EN_OKARINA_TAG,  {   -690,    860,    342 }, {      0, 0X8000,      0 }, 0x1C9E },
    { ACTOR_OBJ_HSBLOCK,     {     60,      0,   -182 }, {      0,      0,      0 }, 0x1FC1 },
    { ACTOR_BG_MIZU_SHUTTER, {   -179,    460,    481 }, {      0, 0X8000,      0 }, 0x00F9 },
    { ACTOR_OBJ_SWITCH,      {   -217,    460,    415 }, {      0,      0,      0 }, 0x3900 },
    { ACTOR_BG_MIZU_SHUTTER, {    483,    780,   -179 }, {      0, 0XC000,      0 }, 0x00FA },
    { ACTOR_OBJ_SWITCH,      {    518,    780,   -143 }, {      0,      0,      0 }, 0x3A00 },
    { ACTOR_OBJ_SWITCH,      {   -468,    460,   -183 }, {      0,      0,      0 }, 0x3B20 },
    { ACTOR_EN_NY,           {   -144,    -98,   -656 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_NY,           {   -143,   -103,   -589 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_TITE,         {   -455,    780,     78 }, {      0,      0,      0 }, 0xFFFE },
    { ACTOR_EN_TITE,         {     78,    780,    -86 }, {      0,      0,      0 }, 0xFFFE },
};

u8 MIZUsin_room_0_possiblePadding_0001CC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 MIZUsin_room_0PolygonType2_0001D0 = { 
    2, 45,
    MIZUsin_room_0PolygonDlist2_0001DC,
    MIZUsin_room_0PolygonDlist2_0001DC + ARRAY_COUNTU(MIZUsin_room_0PolygonDlist2_0001DC)
};

PolygonDlist2 MIZUsin_room_0PolygonDlist2_0001DC[45] = {
    { {    600,     60,      0 },    344, MIZUsin_room_0DL_0051B8, NULL },
    { {    900,    610,   -330 },    723, MIZUsin_room_0DL_003880, NULL },
    { {   -660,     90,   -590 },    721, MIZUsin_room_0DL_003320, NULL },
    { {   -180,   -100,  -1195 },    301, MIZUsin_room_0DL_002F60, NULL },
    { {   -360,     60,    700 },    331, MIZUsin_room_0DL_0014A0, NULL },
    { {    180,    520,    605 },    451, MIZUsin_room_0DL_0010A8, NULL },
    { {  -1140,   -170,   -430 },    379, MIZUsin_room_0DL_004778, NULL },
    { {   -180,    688,   1326 },    140, NULL, MIZUsin_room_0DL_015330 },
    { {    600,    830,      0 },    277, MIZUsin_room_0DL_003E38, NULL },
    { {   -180,     70,  -1445 },    383, MIZUsin_room_0DL_0027C8, NULL },
    { {   -180,    -15,  -1335 },    181, NULL, MIZUsin_room_0DL_015078 },
    { {   -180,    765,    882 },    146, NULL, MIZUsin_room_0DL_014EC0 },
    { {    280,    620,   -284 },    924, MIZUsin_room_0DL_007AC0, NULL },
    { {   -170,    620,   -770 },    802, MIZUsin_room_0DL_007620, NULL },
    { {   -350,   1130,   -280 },    795, MIZUsin_room_0DL_007D78, NULL },
    { {   -630,    620,   -295 },    914, MIZUsin_room_0DL_007370, NULL },
    { {   -180,    820,    905 },    570, MIZUsin_room_0DL_006C60, NULL },
    { {   -255,    550,    225 },    828, MIZUsin_room_0DL_007050, NULL },
    { {   -230,    -45,   -230 },    753, MIZUsin_room_0DL_0062E0, NULL },
    { {   -180,     40,   -180 },    313, MIZUsin_room_0DL_0067C8, NULL },
    { {   -180,    620,   1095 },    344, MIZUsin_room_0DL_006508, NULL },
    { {   -311,    492,   -465 },   1395, MIZUsin_room_0DL_0008F0, NULL },
    { {    600,      0,      0 },    339, MIZUsin_room_0DL_005428, NULL },
    { {    860,    460,   -510 },    544, MIZUsin_room_0DL_000B98, NULL },
    { {   -620,   -280,   -785 },    888, MIZUsin_room_0DL_001A10, NULL },
    { {   -600,     30,    280 },    708, MIZUsin_room_0DL_0041C0, NULL },
    { {    180,    460,    605 },    447, MIZUsin_room_0DL_001750, NULL },
    { {   -180,    510,   -120 },    622, MIZUsin_room_0DL_008B98, NULL },
    { {    390,    595,   -195 },    230, MIZUsin_room_0DL_005B48, NULL },
    { {   -180,    620,  -1040 },    695, MIZUsin_room_0DL_005870, NULL },
    { {   -180,    585,    570 },    290, MIZUsin_room_0DL_005F78, NULL },
    { {   -700,    500,     40 },    617, MIZUsin_room_0DL_009560, NULL },
    { {   -180,    620,   -180 },    506, MIZUsin_room_0DL_00CB60, NULL },
    { {   -180,    615,   -390 },    678, MIZUsin_room_0DL_00C180, NULL },
    { {   -180,    740,   -180 },    361, MIZUsin_room_0DL_00B018, NULL },
    { {   -180,    590,  -1080 },    494, MIZUsin_room_0DL_00B328, NULL },
    { {   -820,    600,   -180 },    424, MIZUsin_room_0DL_00B730, NULL },
    { {   -180,    750,   -590 },    827, MIZUsin_room_0DL_00ABB8, NULL },
    { {   -330,    740,   -530 },    945, MIZUsin_room_0DL_00BCC8, NULL },
    { {   -180,    570,   -590 },    827, MIZUsin_room_0DL_00A550, NULL },
    { {  -1140,    -90,   -430 },    315, MIZUsin_room_0DL_001D70, NULL },
    { {   -645,     20,   -435 },    835, MIZUsin_room_0DL_004D90, NULL },
    { {   -180,    655,   -388 },   1049, MIZUsin_room_0DL_00C5D8, NULL },
    { {   -180,    597,    234 },    465, MIZUsin_room_0DL_00C840, NULL },
    { {   -180,    522,   -388 },    971, MIZUsin_room_0DL_009D60, NULL },
};

s32 MIZUsin_room_0_terminatorMaybe_0004AC = { 0x01000000 };

Vtx MIZUsin_room_0Vtx_0004B0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_0004B0.vtx.inc"
};

Gfx MIZUsin_room_0DL_0008F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_0004B0[60], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(MIZUsin_room_0Tex_00CDF8, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_0Vtx_0004B0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_0004B0[32], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(MIZUsin_room_0Tex_00D5F8, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_0Vtx_0004B0[56], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_000A68[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_000A68.vtx.inc"
};

Gfx MIZUsin_room_0DL_000B98[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_000A68[11], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_0125F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(MIZUsin_room_0Vtx_000A68, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 0, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP1Triangle(0, 3, 5, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_000CA8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_000CA8.vtx.inc"
};

Gfx MIZUsin_room_0DL_0010A8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_000CA8[56], 8, 0),
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
    gsSPVertex(MIZUsin_room_0Vtx_000CA8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 10, 0, 18, 10, 20, 0),
    gsSP2Triangles(21, 11, 13, 0, 22, 21, 13, 0),
    gsSP2Triangles(22, 23, 21, 0, 24, 2, 1, 0),
    gsSP2Triangles(24, 25, 2, 0, 26, 27, 28, 0),
    gsSP2Triangles(29, 19, 30, 0, 31, 29, 30, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_000CA8[32], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 1, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 9, 12, 0, 12, 14, 13, 0),
    gsSP2Triangles(14, 12, 11, 0, 14, 11, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_001220[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_001220.vtx.inc"
};

Gfx MIZUsin_room_0DL_0014A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_001220[32], 8, 0),
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
    gsSPVertex(MIZUsin_room_0Vtx_001220, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(4, 8, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 12, 11, 13, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 18, 16, 0, 15, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 10, 0, 24, 10, 9, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(30, 26, 29, 0, 30, 29, 31, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_0015E0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_0015E0.vtx.inc"
};

Gfx MIZUsin_room_0DL_001750[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_0015E0[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_0125F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(MIZUsin_room_0Vtx_0015E0, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 2, 4, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 7, 0),
    gsSP2Triangles(9, 6, 5, 0, 8, 9, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(14, 11, 10, 0, 13, 14, 10, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_001870[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_001870.vtx.inc"
};

Gfx MIZUsin_room_0DL_001A10[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_001870[18], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_0125F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_0Vtx_001870, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 5, 0),
    gsSP2Triangles(4, 7, 5, 0, 8, 6, 5, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 10, 0),
    gsSP2Triangles(13, 9, 11, 0, 13, 12, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_001B30[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_001B30.vtx.inc"
};

Gfx MIZUsin_room_0DL_001D70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_001B30[28], 8, 0),
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
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_0Vtx_001B30, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 5, 27, 6, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_001E98[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_001E98.vtx.inc"
};

Gfx MIZUsin_room_0DL_0027C8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_001E98[139], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_0Vtx_001E98, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(1, 0, 12, 0, 1, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_0Tex_0125F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_0Vtx_001E98[22], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_0Vtx_001E98[26], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(6, 7, 12, 0, 13, 10, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_0Vtx_001E98[44], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_0Vtx_001E98[64], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_0Vtx_001E98[72], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_0Tex_00F5F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_0Vtx_001E98[76], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 3, 8, 6, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(9, 14, 15, 0, 12, 7, 6, 0),
    gsSP2Triangles(16, 13, 11, 0, 17, 18, 19, 0),
    gsSP2Triangles(16, 20, 21, 0, 17, 22, 20, 0),
    gsSP2Triangles(23, 24, 2, 0, 25, 2, 1, 0),
    gsSP2Triangles(23, 26, 27, 0, 25, 28, 29, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_001E98[106], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 3, 8, 6, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(9, 15, 16, 0, 12, 17, 15, 0),
    gsSP2Triangles(18, 19, 11, 0, 20, 11, 10, 0),
    gsSP2Triangles(18, 21, 22, 0, 20, 23, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_0Vtx_001E98[131], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_0Tex_0125F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_0Vtx_001E98[135], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_002BE0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_002BE0.vtx.inc"
};

Gfx MIZUsin_room_0DL_002F60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_002BE0[48], 8, 0),
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
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_0Vtx_002BE0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_002BE0[32], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(9, 12, 13, 0, 9, 13, 10, 0),
    gsSP2Triangles(14, 15, 8, 0, 14, 8, 11, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_0030C0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_0030C0.vtx.inc"
};

Gfx MIZUsin_room_0DL_003320[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_0030C0[30], 8, 0),
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
    gsSPVertex(MIZUsin_room_0Vtx_0030C0, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_003450[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_003450.vtx.inc"
};

Gfx MIZUsin_room_0DL_003880[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_003450[59], 8, 0),
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
    gsSPVertex(MIZUsin_room_0Vtx_003450, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(2, 8, 3, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 13, 0),
    gsSP2Triangles(13, 16, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 17, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_003450[32], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 17, 0, 13, 17, 14, 0),
    gsSP2Triangles(18, 16, 13, 0, 19, 20, 11, 0),
    gsSP2Triangles(21, 7, 9, 0, 11, 20, 12, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 11, 10, 0, 26, 19, 11, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_0039F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_0039F8.vtx.inc"
};

Gfx MIZUsin_room_0DL_003E38[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_0039F8[60], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_0Vtx_0039F8, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 12, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 21, 26, 27, 0),
    gsSP2Triangles(28, 0, 29, 0, 28, 3, 0, 0),
    gsSP1Triangle(26, 21, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_0Tex_0125F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_0Vtx_0039F8[30], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_0Vtx_0039F8[38], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_0Vtx_0039F8[50], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 7, 9, 0, 7, 6, 9, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_004050[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_004050.vtx.inc"
};

Gfx MIZUsin_room_0DL_0041C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_004050[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_0125F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_004050, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(3, 0, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(0, 2, 8, 0, 0, 8, 6, 0),
    gsSP2Triangles(6, 9, 7, 0, 6, 10, 9, 0),
    gsSP2Triangles(6, 8, 10, 0, 11, 12, 13, 0),
    gsSP1Triangle(11, 13, 14, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_0042E8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_0042E8.vtx.inc"
};

Gfx MIZUsin_room_0DL_004778[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_0042E8[65], 8, 0),
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
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_0Vtx_0042E8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_0042E8[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 2, 1, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(7, 12, 2, 0, 5, 13, 6, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(17, 16, 22, 0, 17, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 21, 0, 28, 21, 20, 0),
    gsSP2Triangles(25, 30, 28, 0, 25, 28, 20, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_0042E8[61], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_004910[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_004910.vtx.inc"
};

Gfx MIZUsin_room_0DL_004D90[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_004910[64], 8, 0),
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
    gsSPVertex(MIZUsin_room_0Vtx_004910, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_004910[32], 32, 0),
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

Vtx MIZUsin_room_0Vtx_004F08[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_004F08.vtx.inc"
};

Gfx MIZUsin_room_0DL_0051B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_004F08[35], 8, 0),
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
    gsSPVertex(MIZUsin_room_0Vtx_004F08, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 1, 8, 0),
    gsSP2Triangles(7, 2, 1, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 13, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(18, 22, 19, 0, 11, 12, 23, 0),
    gsSP2Triangles(11, 23, 24, 0, 24, 23, 25, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 30, 28, 0, 27, 31, 30, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_004F08[32], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_005308[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_005308.vtx.inc"
};

Gfx MIZUsin_room_0DL_005428[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_005308[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_0125F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_005308, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 0, 0),
    gsSP2Triangles(5, 0, 4, 0, 6, 7, 1, 0),
    gsSP2Triangles(6, 1, 0, 0, 8, 7, 6, 0),
    gsSP2Triangles(9, 6, 5, 0, 9, 8, 6, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_005540[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_005540.vtx.inc"
};

Gfx MIZUsin_room_0DL_005870[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_005540[43], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_00F5F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_005540, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 17, 19, 0),
    gsSP2Triangles(17, 20, 19, 0, 20, 17, 16, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 25, 27, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_005540[32], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(7, 9, 10, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_0059C8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_0059C8.vtx.inc"
};

Gfx MIZUsin_room_0DL_005B48[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_0059C8[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_00F5F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_0059C8, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_005C58[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_005C58.vtx.inc"
};

Gfx MIZUsin_room_0DL_005F78[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_005C58[42], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_00F5F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_005C58, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_005C58[30], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 11, 4, 0, 10, 4, 7, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_0060D0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_0060D0.vtx.inc"
};

Gfx MIZUsin_room_0DL_0062E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_0060D0[25], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_012DF8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_0060D0, 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 0, 0),
    gsSP2Triangles(7, 9, 10, 0, 7, 10, 8, 0),
    gsSP2Triangles(9, 7, 11, 0, 2, 12, 6, 0),
    gsSP2Triangles(0, 2, 6, 0, 5, 13, 14, 0),
    gsSP2Triangles(13, 15, 16, 0, 13, 16, 14, 0),
    gsSP2Triangles(13, 17, 15, 0, 5, 4, 13, 0),
    gsSP2Triangles(5, 14, 18, 0, 14, 16, 18, 0),
    gsSP2Triangles(16, 19, 18, 0, 16, 20, 19, 0),
    gsSP2Triangles(19, 21, 18, 0, 19, 22, 21, 0),
    gsSP2Triangles(21, 23, 9, 0, 21, 9, 18, 0),
    gsSP2Triangles(24, 10, 23, 0, 10, 9, 23, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_006438[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_006438.vtx.inc"
};

Gfx MIZUsin_room_0DL_006508[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_006438[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_00E5F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_006438, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 3, 0, 2, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_006608[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_006608.vtx.inc"
};

Gfx MIZUsin_room_0DL_0067C8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_006608[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_00E5F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_006608, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_0068E0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_0068E0.vtx.inc"
};

Gfx MIZUsin_room_0DL_006C60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_0068E0[48], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_00DDF8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_0068E0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(0, 2, 12, 0, 0, 12, 13, 0),
    gsSP2Triangles(14, 1, 0, 0, 3, 15, 2, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(24, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_0068E0[32], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(4, 8, 5, 0, 3, 9, 10, 0),
    gsSP2Triangles(5, 11, 12, 0, 13, 14, 10, 0),
    gsSP2Triangles(14, 3, 10, 0, 5, 8, 11, 0),
    gsSP1Triangle(8, 15, 11, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_006DD0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_006DD0.vtx.inc"
};

Gfx MIZUsin_room_0DL_007050[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_006DD0[32], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_00DDF8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_006DD0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 6, 4, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 9, 13, 12, 0),
    gsSP2Triangles(9, 12, 14, 0, 9, 15, 13, 0),
    gsSP2Triangles(9, 8, 15, 0, 16, 9, 14, 0),
    gsSP2Triangles(17, 18, 19, 0, 5, 20, 3, 0),
    gsSP2Triangles(21, 16, 14, 0, 0, 22, 6, 0),
    gsSP2Triangles(2, 22, 0, 0, 23, 2, 10, 0),
    gsSP2Triangles(23, 10, 24, 0, 12, 24, 10, 0),
    gsSP2Triangles(13, 24, 12, 0, 25, 26, 27, 0),
    gsSP2Triangles(21, 27, 26, 0, 25, 27, 28, 0),
    gsSP2Triangles(29, 30, 27, 0, 29, 14, 30, 0),
    gsSP2Triangles(4, 6, 31, 0, 4, 31, 7, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_0071B0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_0071B0.vtx.inc"
};

Gfx MIZUsin_room_0DL_007370[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_0071B0[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_room_0Tex_00DDF8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_0071B0, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 1, 0, 5, 0),
    gsSP2Triangles(1, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(11, 12, 10, 0, 3, 4, 13, 0),
    gsSP2Triangles(3, 13, 14, 0, 3, 14, 15, 0),
    gsSP2Triangles(12, 16, 10, 0, 16, 12, 17, 0),
    gsSP2Triangles(12, 18, 17, 0, 18, 19, 17, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_007480[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_007480.vtx.inc"
};

Gfx MIZUsin_room_0DL_007620[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_007480[18], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_room_0Tex_00DDF8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_007480, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 4, 3, 0, 0, 3, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 6, 0, 10, 6, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 14, 16, 17, 0),
    gsSP1Triangle(14, 17, 15, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_007720[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_007720.vtx.inc"
};

Gfx MIZUsin_room_0DL_007AC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_007720[50], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_00DDF8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_007720, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 0, 7, 8, 0),
    gsSP2Triangles(7, 9, 10, 0, 7, 10, 8, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 12, 0),
    gsSP2Triangles(13, 14, 12, 0, 13, 12, 11, 0),
    gsSP2Triangles(15, 13, 11, 0, 13, 16, 14, 0),
    gsSP2Triangles(16, 13, 5, 0, 16, 5, 4, 0),
    gsSP2Triangles(17, 1, 0, 0, 0, 18, 17, 0),
    gsSP2Triangles(0, 8, 18, 0, 19, 6, 3, 0),
    gsSP2Triangles(20, 19, 3, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 22, 21, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_007720[32], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 5, 4, 8, 0),
    gsSP2Triangles(5, 8, 7, 0, 9, 11, 6, 0),
    gsSP2Triangles(9, 6, 10, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 15, 16, 12, 0),
    gsSP2Triangles(16, 17, 12, 0, 17, 14, 13, 0),
    gsSP1Triangle(17, 13, 12, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_007C58[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_007C58.vtx.inc"
};

Gfx MIZUsin_room_0DL_007D78[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_007C58[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_00DDF8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_007C58, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 1, 0, 0, 8, 9, 5, 0),
    gsSP2Triangles(8, 5, 1, 0, 9, 6, 5, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_007E88[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_007E88.vtx.inc"
};

Gfx MIZUsin_room_0DL_008B98[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_007E88[201], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_00F5F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_007E88, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_007E88[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_007E88[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_007E88[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_007E88[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 10, 29, 0, 28, 29, 30, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_007E88[159], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 18, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 19, 0),
    gsSP2Triangles(25, 26, 27, 0, 26, 28, 27, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_007E88[191], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0),
    gsSP1Triangle(7, 9, 1, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_008E50[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_008E50.vtx.inc"
};

Gfx MIZUsin_room_0DL_009560[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_008E50[105], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_00F5F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_008E50, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 5, 0, 16, 5, 4, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 25, 24, 0),
    gsSP2Triangles(23, 26, 25, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_008E50[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 23, 22, 0, 25, 24, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_008E50[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 6, 5, 0),
    gsSP2Triangles(0, 2, 7, 0, 5, 0, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 20, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_008E50[93], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(4, 10, 11, 0, 4, 11, 5, 0),
    gsSP2Triangles(10, 9, 8, 0, 10, 8, 11, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_009760[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_009760.vtx.inc"
};

Gfx MIZUsin_room_0DL_009D60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_009760[88], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 4),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_0145F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_009760, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 0, 2, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_009760[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_009760[64], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 2, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_009F10[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_009F10.vtx.inc"
};

Gfx MIZUsin_room_0DL_00A550[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_009F10[92], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_0105F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_009F10, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_009F10[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 28, 30, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_009F10[64], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_00A708[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_00A708.vtx.inc"
};

Gfx MIZUsin_room_0DL_00ABB8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_00A708[67], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_00FDF8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_00A708, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 1, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_00A708[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_00A708[63], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_00AD48[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_00AD48.vtx.inc"
};

Gfx MIZUsin_room_0DL_00B018[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_00AD48[37], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_010DF8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_00AD48, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 4, 6, 2, 0),
    gsSP2Triangles(4, 2, 1, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 9, 0, 10, 11, 6, 0),
    gsSP2Triangles(10, 6, 4, 0, 10, 12, 0, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(10, 0, 3, 0, 10, 3, 11, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(22, 17, 20, 0, 22, 20, 23, 0),
    gsSP2Triangles(21, 24, 19, 0, 21, 19, 18, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP2Triangles(25, 28, 29, 0, 25, 29, 30, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_00AD48[31], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_00B188[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_00B188.vtx.inc"
};

Gfx MIZUsin_room_0DL_00B328[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_00B188[18], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_010DF8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_00B188, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 1, 0, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_00B440[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_00B440.vtx.inc"
};

Gfx MIZUsin_room_0DL_00B730[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_00B440[39], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_010DF8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_00B440, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 6, 4, 0),
    gsSP2Triangles(7, 5, 4, 0, 3, 2, 8, 0),
    gsSP2Triangles(3, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 14, 16, 0, 18, 19, 9, 0),
    gsSP2Triangles(8, 20, 18, 0, 8, 18, 9, 0),
    gsSP2Triangles(20, 1, 0, 0, 20, 0, 18, 0),
    gsSP2Triangles(21, 22, 13, 0, 12, 23, 21, 0),
    gsSP2Triangles(12, 21, 13, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 21, 0, 25, 24, 11, 0),
    gsSP2Triangles(25, 11, 10, 0, 26, 25, 10, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 26, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_00B440[30], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 4, 7, 0),
    gsSP2Triangles(6, 8, 4, 0, 4, 8, 7, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_00B8A8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_00B8A8.vtx.inc"
};

Gfx MIZUsin_room_0DL_00BCC8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_00B8A8[58], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_0115F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_00B8A8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 14, 0, 13, 16, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 18, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 29, 24, 0, 26, 28, 24, 0),
    gsSP2Triangles(8, 7, 30, 0, 8, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_00B8A8[32], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 9, 8, 0, 14, 8, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 10, 12, 0, 20, 12, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_00BE50[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_00BE50.vtx.inc"
};

Gfx MIZUsin_room_0DL_00C180[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_00BE50[43], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_011DF8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_00BE50, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 8, 9, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 3, 15, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 18, 20, 19, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(25, 11, 10, 0, 26, 25, 10, 0),
    gsSP2Triangles(27, 28, 29, 0, 28, 30, 29, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_00BE50[31], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_00C2D8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_00C2D8.vtx.inc"
};

Gfx MIZUsin_room_0DL_00C5D8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_00C2D8[40], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 4),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_013DF8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_00C2D8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_0Vtx_00C2D8[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_00C720[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_00C720.vtx.inc"
};

Gfx MIZUsin_room_0DL_00C840[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_00C720[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 4),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_0135F8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_00C720, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 4, 0, 0, 5, 4, 3, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&MIZUsin_room_0Vtx_00C720[6], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_00C960[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_00C960.vtx.inc"
};

Gfx MIZUsin_room_0DL_00CB60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_00C960[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_00EDF8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_0Vtx_00C960, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(5, 4, 14, 0, 5, 14, 15, 0),
    gsSP2Triangles(16, 7, 6, 0, 16, 6, 17, 0),
    gsSP2Triangles(18, 1, 0, 0, 18, 0, 19, 0),
    gsSP2Triangles(15, 14, 20, 0, 15, 20, 21, 0),
    gsSP2Triangles(13, 12, 22, 0, 13, 22, 23, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_0_unaccounted_00CCA0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x08, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0x98, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0xA8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0xA0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0x10, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x27, 0xC8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2F, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x33, 0x20, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x38, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3E, 0x38, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x41, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x47, 0x78, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4D, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x51, 0xB8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x54, 0x28, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x58, 0x70, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5B, 0x48, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5F, 0x78, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x62, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x65, 0x08, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x67, 0xC8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x6C, 0x60, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x70, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x73, 0x70, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x76, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x7A, 0xC0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x7D, 0x78, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x8B, 0x98, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x95, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x9D, 0x60, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA5, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xAB, 0xB8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xB0, 0x18, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xB3, 0x28, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xB7, 0x30, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xBC, 0xC8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xC1, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xC5, 0xD8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xC8, 0x40, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xCB, 0x60, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_0Tex_00CDF8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_00CDF8.i4.inc.c"
};

u64 MIZUsin_room_0Tex_00D5F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_00D5F8.i4.inc.c"
};

u64 MIZUsin_room_0Tex_00DDF8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_00DDF8.rgba16.inc.c"
};

u64 MIZUsin_room_0Tex_00E5F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_00E5F8.rgba16.inc.c"
};

u64 MIZUsin_room_0Tex_00EDF8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_00EDF8.rgba16.inc.c"
};

u64 MIZUsin_room_0Tex_00F5F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_00F5F8.rgba16.inc.c"
};

u64 MIZUsin_room_0Tex_00FDF8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_00FDF8.rgba16.inc.c"
};

u64 MIZUsin_room_0Tex_0105F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_0105F8.rgba16.inc.c"
};

u64 MIZUsin_room_0Tex_010DF8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_010DF8.rgba16.inc.c"
};

u64 MIZUsin_room_0Tex_0115F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_0115F8.rgba16.inc.c"
};

u64 MIZUsin_room_0Tex_011DF8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_011DF8.rgba16.inc.c"
};

u64 MIZUsin_room_0Tex_0125F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_0125F8.rgba16.inc.c"
};

u64 MIZUsin_room_0Tex_012DF8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_012DF8.rgba16.inc.c"
};

u64 MIZUsin_room_0Tex_0135F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_0135F8.rgba16.inc.c"
};

u64 MIZUsin_room_0Tex_013DF8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_013DF8.rgba16.inc.c"
};

u64 MIZUsin_room_0Tex_0145F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_0145F8.rgba16.inc.c"
};

u8 MIZUsin_room_0_possiblePadding_014DF8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx MIZUsin_room_0Vtx_014E00[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_014E00.vtx.inc"
};

Gfx MIZUsin_room_0DL_014EC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_014E00[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 13, 14),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_015428, 0x0100, 1, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 13),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 102),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(MIZUsin_room_0Vtx_014E00, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_014FB8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_014FB8.vtx.inc"
};

Gfx MIZUsin_room_0DL_015078[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_014FB8[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 13, 14),
    gsDPLoadMultiBlock(MIZUsin_room_0Tex_015428, 0x0100, 1, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 13),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 102),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(MIZUsin_room_0Vtx_014FB8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_0Vtx_015170[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Vtx_015170.vtx.inc"
};

Gfx MIZUsin_room_0DL_015330[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_0Vtx_015170[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x06000000, G_IM_FMT_IA, G_IM_SIZ_16b, 8, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_0Vtx_015170, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_0_unaccounted_015408[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x4E, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x50, 0x78, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x53, 0x30, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_0Tex_015428[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_0Tex_015428.ia16.inc.c"
};

