#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ganontika_room_2.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ganontika_scene.h"
#include "ganontika_room_0.h"
#include "ganontika_room_1.h"
#include "ganontika_room_3.h"
#include "ganontika_room_4.h"
#include "ganontika_room_5.h"
#include "ganontika_room_6.h"
#include "ganontika_room_7.h"
#include "ganontika_room_8.h"
#include "ganontika_room_9.h"
#include "ganontika_room_10.h"
#include "ganontika_room_11.h"
#include "ganontika_room_12.h"
#include "ganontika_room_13.h"
#include "ganontika_room_14.h"
#include "ganontika_room_15.h"
#include "ganontika_room_16.h"
#include "ganontika_room_17.h"
#include "ganontika_room_18.h"
#include "ganontika_room_19.h"

SceneCmd ganontika_room_2Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(6),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ganontika_room_2PolygonType2_000240),
    SCENE_CMD_OBJECT_LIST(9, ganontika_room_2ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(30, ganontika_room_2ActorList_000054),
    SCENE_CMD_END(),
};

s16 ganontika_room_2ObjectList_000040[] = {
    OBJECT_DEMO_KEKKAI,
    OBJECT_ICE_OBJECTS,
    OBJECT_BOX,
    OBJECT_TRAP,
    OBJECT_NY,
    OBJECT_SIOFUKI,
    OBJECT_DH,
    OBJECT_FZ,
    OBJECT_GI_HEART,
};

ActorEntry ganontika_room_2ActorList_000054[] = {
    { ACTOR_EN_DHA,         {   1959,   -250,   -545 }, {      0, 0X982E,      0 }, 0xFFFF },
    { ACTOR_EN_FZ,          {   1812,   -250,   -663 }, {      0, 0X8666,      0 }, 0xFFFF },
    { ACTOR_EN_FZ,          {   1894,   -250,   -838 }, {      0, 0XDA50,      0 }, 0xFFFF },
    { ACTOR_EN_FZ,          {   1932,   -250,  -1106 }, {      0, 0XF8E4,      0 }, 0xFFFF },
    { ACTOR_BG_ICE_TURARA,  {   1984,   -250,   -567 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   1936,   -250,   -551 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   1916,   -250,   -511 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   2044,   -250,   -591 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   1960,   -250,  -1123 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   2008,   -250,  -1115 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   1868,   -250,  -1175 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   1908,   -250,  -1151 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   2054,     60,   -667 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_BG_ICE_TURARA,  {   1937,     60,   -658 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_BG_ICE_TURARA,  {   1864,     60,   -568 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_BG_ICE_TURARA,  {   2002,     60,  -1068 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_BG_ICE_TURARA,  {   1890,     60,  -1068 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_BG_ICE_TURARA,  {   1791,     60,  -1141 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_EN_ICE_HONO,    {   1732,   -220,   -840 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_BG_ICE_SHELTER, {   1754,   -250,  -1152 }, {      0,      0,      0 }, 0x00FF },
    { ACTOR_BG_ICE_SHELTER, {   1743,   -250,   -529 }, {      0,      0,      0 }, 0x00FF },
    { ACTOR_BG_ICE_SHELTER, {   2096,   -250,  -1011 }, {      0,      0,      0 }, 0x00FF },
    { ACTOR_EN_BOX,         {   1753,   -250,  -1151 }, {      0, 0X8E39,      0 }, 0x59C1 },
    { ACTOR_BG_ICE_SHELTER, {   2209,   -237,   -889 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_BG_ICE_SHELTER, {   2198,   -242,   -845 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_BG_ICE_SHELTER, {   2194,   -238,   -797 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_BG_ICE_SHELTER, {   2200,   -235,   -755 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_OBJ_SWITCH,     {   1973,   -250,   -519 }, {      0,      0,      0 }, 0x3C03 },
    { ACTOR_EN_SIOFUKI,     {   1734,   -250,   -841 }, {    0X4,    0X6,    0X5 }, 0x1F0B },
    { ACTOR_EN_ITEM00,      {   1743,   -250,   -528 }, {      0,      0,      0 }, 0x3F03 },
};

u8 ganontika_room_2_possiblePadding_000234[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 ganontika_room_2PolygonType2_000240 = { 
    2, 9,
    ganontika_room_2PolygonDlist2_00024C,
    ganontika_room_2PolygonDlist2_00024C + ARRAY_COUNTU(ganontika_room_2PolygonDlist2_00024C)
};

PolygonDlist2 ganontika_room_2PolygonDlist2_00024C[9] = {
    { {   1732,   -235,   -840 },     33, ganontika_room_2DL_0006D0, NULL },
    { {   1732,   -237,   -840 },     30, ganontika_room_2DL_000D10, NULL },
    { {   2342,   -169,   -840 },    122, ganontika_room_2DL_002E70, NULL },
    { {   1922,    -75,   -840 },    479, ganontika_room_2DL_0014A8, NULL },
    { {   1733,    -75,   -840 },    459, ganontika_room_2DL_001B68, NULL },
    { {   1852,   -250,   -840 },    379, ganontika_room_2DL_001F20, NULL },
    { {   1362,   -120,   -840 },    213, ganontika_room_2DL_002498, NULL },
    { {   1882,   -233,   -846 },    483, ganontika_room_2DL_002AE0, NULL },
    { {   1852,    100,   -840 },    379, ganontika_room_2DL_000F00, NULL },
};

s32 ganontika_room_2_terminatorMaybe_0002DC = { 0x01000000 };

Vtx ganontika_room_2Vtx_0002E0[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Vtx_0002E0.vtx.inc"
};

Gfx ganontika_room_2DL_0006D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_2Vtx_0002E0[55], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_2Vtx_0002E0, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 6, 2, 1, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_2Tex_004FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ganontika_room_2Vtx_0002E0[7], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_2Tex_0047D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_2Vtx_0002E0[11], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_2Tex_004FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_2Vtx_0002E0[15], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_2Tex_0047D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_2Vtx_0002E0[19], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_2Tex_004FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_2Vtx_0002E0[23], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_2Tex_0047D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_2Vtx_0002E0[27], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_2Tex_004FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_2Vtx_0002E0[31], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_2Tex_0047D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_2Vtx_0002E0[35], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_2Tex_004FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_2Vtx_0002E0[39], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_2Tex_0047D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_2Vtx_0002E0[43], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_2Tex_004FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_2Vtx_0002E0[47], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_2Tex_0047D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_2Vtx_0002E0[51], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_2Vtx_000B30[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Vtx_000B30.vtx.inc"
};

Gfx ganontika_room_2DL_000D10[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_2Vtx_000B30[22], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_2Tex_0047D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_2Vtx_000B30, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(3, 2, 20, 0, 3, 20, 21, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_2Vtx_000DF0[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Vtx_000DF0.vtx.inc"
};

Gfx ganontika_room_2DL_000F00[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_2Vtx_000DF0[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_2Tex_002FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPLoadMultiBlock(ganontika_room_2Tex_003FD8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_2Vtx_000DF0, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 5, 4, 0),
    gsSP2Triangles(1, 6, 5, 0, 1, 7, 8, 0),
    gsSP2Triangles(1, 0, 7, 0, 1, 8, 6, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_2Vtx_001008[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Vtx_001008.vtx.inc"
};

Gfx ganontika_room_2DL_0014A8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_2Vtx_001008[66], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_2Tex_0057D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, 1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_2Vtx_001008, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(6, 14, 15, 0, 6, 15, 1, 0),
    gsSP2Triangles(15, 16, 1, 0, 6, 17, 14, 0),
    gsSP2Triangles(3, 2, 18, 0, 3, 18, 19, 0),
    gsSP2Triangles(20, 21, 4, 0, 20, 4, 8, 0),
    gsSP2Triangles(21, 22, 5, 0, 21, 5, 4, 0),
    gsSP2Triangles(13, 12, 23, 0, 13, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP2Triangles(28, 27, 29, 0, 28, 29, 30, 0),
    gsSPVertex(&ganontika_room_2Vtx_001008[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 7, 6, 0, 10, 6, 11, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 15, 0, 18, 15, 14, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(23, 21, 24, 0, 25, 26, 24, 0),
    gsSP2Triangles(26, 27, 24, 0, 25, 28, 29, 0),
    gsSP2Triangles(25, 24, 28, 0, 30, 29, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&ganontika_room_2Vtx_001008[63], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_2Vtx_001648[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Vtx_001648.vtx.inc"
};

Gfx ganontika_room_2DL_001B68[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_2Vtx_001648[74], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_2Tex_002FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPLoadMultiBlock(ganontika_room_2Tex_0057D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_2Vtx_001648, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 8, 0, 4, 8, 9, 0),
    gsSP2Triangles(10, 11, 1, 0, 10, 1, 0, 0),
    gsSP2Triangles(4, 9, 10, 0, 4, 10, 0, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 13, 0, 16, 13, 12, 0),
    gsSP2Triangles(18, 19, 17, 0, 18, 17, 16, 0),
    gsSP2Triangles(13, 20, 21, 0, 13, 21, 15, 0),
    gsSP2Triangles(17, 22, 20, 0, 17, 20, 13, 0),
    gsSP2Triangles(19, 23, 22, 0, 19, 22, 17, 0),
    gsSP2Triangles(20, 24, 25, 0, 20, 25, 21, 0),
    gsSP2Triangles(22, 26, 24, 0, 22, 24, 20, 0),
    gsSP2Triangles(23, 27, 22, 0, 23, 28, 27, 0),
    gsSP2Triangles(28, 29, 27, 0, 29, 30, 27, 0),
    gsSP2Triangles(30, 26, 27, 0, 26, 22, 27, 0),
    gsSP1Triangle(30, 31, 26, 0),
    gsSPVertex(&ganontika_room_2Vtx_001648[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 3, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(10, 9, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(11, 16, 17, 0, 11, 17, 9, 0),
    gsSP2Triangles(9, 17, 18, 0, 9, 18, 12, 0),
    gsSP2Triangles(12, 18, 19, 0, 12, 19, 14, 0),
    gsSP2Triangles(16, 20, 21, 0, 16, 21, 17, 0),
    gsSP2Triangles(17, 21, 22, 0, 17, 22, 18, 0),
    gsSP2Triangles(18, 23, 19, 0, 23, 24, 19, 0),
    gsSP2Triangles(23, 25, 24, 0, 23, 26, 25, 0),
    gsSP2Triangles(18, 22, 23, 0, 22, 26, 23, 0),
    gsSP2Triangles(22, 0, 26, 0, 22, 1, 0, 0),
    gsSP2Triangles(22, 27, 1, 0, 21, 28, 27, 0),
    gsSP2Triangles(21, 27, 22, 0, 20, 29, 28, 0),
    gsSP1Triangle(20, 28, 21, 0),
    gsSPVertex(&ganontika_room_2Vtx_001648[62], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 7, 0, 10, 7, 6, 0),
    gsSP2Triangles(6, 9, 0, 0, 6, 0, 3, 0),
    gsSP2Triangles(5, 10, 6, 0, 5, 6, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_2Vtx_001DB0[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Vtx_001DB0.vtx.inc"
};

Gfx ganontika_room_2DL_001F20[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_2Vtx_001DB0[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_2Tex_002FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPLoadMultiBlock(ganontika_room_2Tex_003FD8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_2Vtx_001DB0, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 2, 1, 0, 5, 4, 1, 0),
    gsSP2Triangles(6, 5, 1, 0, 6, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 6, 9, 7, 0),
    gsSP2Triangles(3, 6, 1, 0, 3, 8, 10, 0),
    gsSP2Triangles(3, 11, 8, 0, 3, 12, 11, 0),
    gsSP2Triangles(3, 13, 12, 0, 14, 13, 3, 0),
    gsSP1Triangle(0, 14, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_2Vtx_002048[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Vtx_002048.vtx.inc"
};

Gfx ganontika_room_2DL_002498[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_2Vtx_002048[61], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_2Tex_0067D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_2Vtx_002048, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 0, 0, 5, 4, 7, 0),
    gsSP2Triangles(0, 5, 7, 0, 6, 0, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_room_2Tex_005FD8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_2Vtx_002048[8], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(10, 7, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_2Vtx_002048[19], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_room_2Tex_0067D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_2Vtx_002048[39], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_2Vtx_002048[43], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 11, 0, 11, 10, 14, 0),
    gsSP2Triangles(12, 11, 14, 0, 15, 9, 8, 0),
    gsSP2Triangles(16, 15, 8, 0, 16, 8, 17, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_2Vtx_002770[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Vtx_002770.vtx.inc"
};

Gfx ganontika_room_2DL_002AE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_2Vtx_002770[47], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_2Tex_003FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPLoadMultiBlock(ganontika_room_2Tex_0037D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_2Vtx_002770, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 6, 7, 4, 0),
    gsSP2Triangles(7, 8, 2, 0, 7, 2, 4, 0),
    gsSP2Triangles(3, 9, 10, 0, 3, 10, 1, 0),
    gsSP2Triangles(10, 11, 1, 0, 11, 5, 1, 0),
    gsSP2Triangles(10, 12, 11, 0, 9, 13, 14, 0),
    gsSP2Triangles(9, 14, 10, 0, 14, 15, 12, 0),
    gsSP2Triangles(14, 12, 10, 0, 13, 16, 17, 0),
    gsSP2Triangles(13, 17, 14, 0, 17, 18, 15, 0),
    gsSP2Triangles(17, 15, 14, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 22, 20, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 21, 0, 23, 26, 24, 0),
    gsSP2Triangles(26, 27, 24, 0, 27, 25, 24, 0),
    gsSP2Triangles(26, 28, 27, 0, 28, 29, 27, 0),
    gsSP2Triangles(29, 30, 27, 0, 30, 25, 27, 0),
    gsSP1Triangle(28, 31, 29, 0),
    gsSPVertex(&ganontika_room_2Vtx_002770[32], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 5, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 1, 11, 12, 0),
    gsSP2Triangles(1, 12, 2, 0, 12, 3, 2, 0),
    gsSP2Triangles(11, 13, 12, 0, 13, 14, 12, 0),
    gsSP1Triangle(14, 3, 12, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_2Vtx_002C90[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Vtx_002C90.vtx.inc"
};

Gfx ganontika_room_2DL_002E70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_2Vtx_002C90[22], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_2Vtx_002C90, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(13, 16, 15, 0, 17, 16, 13, 0),
    gsSP2Triangles(17, 18, 16, 0, 19, 18, 17, 0),
    gsSP2Triangles(19, 17, 20, 0, 17, 21, 20, 0),
    gsSPEndDisplayList(),
};

u8 ganontika_room_2_unaccounted_002F88[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0x10, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0F, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0xA8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1B, 0x68, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1F, 0x20, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x24, 0x98, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2A, 0xE0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2E, 0x70, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ganontika_room_2Tex_002FD8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Tex_002FD8.rgba16.inc.c"
};

u64 ganontika_room_2Tex_0037D8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Tex_0037D8.rgba16.inc.c"
};

u64 ganontika_room_2Tex_003FD8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Tex_003FD8.rgba16.inc.c"
};

u64 ganontika_room_2Tex_0047D8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Tex_0047D8.rgba16.inc.c"
};

u64 ganontika_room_2Tex_004FD8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Tex_004FD8.rgba16.inc.c"
};

u64 ganontika_room_2Tex_0057D8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Tex_0057D8.rgba16.inc.c"
};

u64 ganontika_room_2Tex_005FD8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Tex_005FD8.ci8.inc.c"
};

u64 ganontika_room_2Tex_0067D8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_2Tex_0067D8.rgba16.inc.c"
};

