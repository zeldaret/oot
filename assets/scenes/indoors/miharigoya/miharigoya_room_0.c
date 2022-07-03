#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "miharigoya_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "miharigoya_scene.h"

SceneCmd miharigoya_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(miharigoya_room_0AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&miharigoya_room_0PolygonType2_0003A0),
    SCENE_CMD_OBJECT_LIST(5, miharigoya_room_0ObjectList_000054),
    SCENE_CMD_ACTOR_LIST(52, miharigoya_room_0ActorList_000060),
    SCENE_CMD_END(),
};

SceneCmd* miharigoya_room_0AlternateHeaders0x000048[] = {
    NULL,
    miharigoya_room_0Set_000470,
    NULL,
};

s16 miharigoya_room_0ObjectList_000054[] = {
    OBJECT_SD,
    OBJECT_TSUBO,
    OBJECT_KIBAKO2,
    OBJECT_DOG,
    OBJECT_ST,
};

ActorEntry miharigoya_room_0ActorList_000060[] = {
    { ACTOR_EN_HEISHI4,  {    -59,      0,   -175 }, {      0, 0X1111,      0 }, 0xFF08 },
    { ACTOR_EN_LIGHT,    {   -108,     94,    160 }, {      0, 0X4000,      0 }, 0x03F5 },
    { ACTOR_EN_LIGHT,    {   -108,     94,   -160 }, {      0, 0X4000,      0 }, 0x03F5 },
    { ACTOR_OBJ_KIBAKO2, {    -90,      0,    216 }, { 0XFFFF,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2, {    -90,      0,    168 }, { 0XFFFF,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2, {    -90,      0,    120 }, {      0,      0,   0X3C }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2, {     28,      0,   -210 }, { 0XFFFF, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2, {     76,      0,   -210 }, { 0XFFFF, 0X4000,      0 }, 0x6F08 },
    { ACTOR_OBJ_TSUBO,   {    -60,      0,     27 }, {      0,      0,      0 }, 0x4100 },
    { ACTOR_OBJ_TSUBO,   {     70,      0,    -80 }, {      0,      0,      0 }, 0x4100 },
    { ACTOR_OBJ_TSUBO,   {     68,      0,     81 }, {      0,      0,      0 }, 0x4300 },
    { ACTOR_OBJ_TSUBO,   {   -107,      0,    -45 }, {      0,      0,      0 }, 0x4300 },
    { ACTOR_OBJ_TSUBO,   {    -88,      0,    -84 }, {      0,      0,      0 }, 0x4500 },
    { ACTOR_OBJ_TSUBO,   {    170,     30,    120 }, {      0,      0,      0 }, 0x4500 },
    { ACTOR_OBJ_TSUBO,   {    169,     30,    216 }, {      0,      0,      0 }, 0x4700 },
    { ACTOR_OBJ_TSUBO,   {   -110,      0,      6 }, {      0,      0,      0 }, 0x4700 },
    { ACTOR_OBJ_TSUBO,   {    156,     30,    -45 }, {      0,      0,      0 }, 0x4900 },
    { ACTOR_OBJ_TSUBO,   {    155,     30,     39 }, {      0,      0,      0 }, 0x4B00 },
    { ACTOR_OBJ_TSUBO,   {    -58,      0,     -7 }, {      0,      0,      0 }, 0x4B00 },
    { ACTOR_OBJ_TSUBO,   {    170,     30,   -216 }, {      0,      0,      0 }, 0x4901 },
    { ACTOR_OBJ_TSUBO,   {    170,     30,   -120 }, {      0,      0,      0 }, 0x4F00 },
    { ACTOR_OBJ_TSUBO,   {     42,      0,     -5 }, {      0,      0,      0 }, 0x4F00 },
    { ACTOR_OBJ_TSUBO,   {     20,      0,     34 }, {      0,      0,      0 }, 0x5100 },
    { ACTOR_OBJ_TSUBO,   {     37,      0,    -40 }, {      0,      0,      0 }, 0x5101 },
    { ACTOR_OBJ_TSUBO,   {     28,      0,    -79 }, {      0,      0,      0 }, 0x5300 },
    { ACTOR_OBJ_TSUBO,   {     39,      0,   -111 }, {      0,      0,      0 }, 0x5300 },
    { ACTOR_OBJ_TSUBO,   {    -89,      0,     28 }, {      0,      0,      0 }, 0x5700 },
    { ACTOR_OBJ_TSUBO,   {    170,     30,   -166 }, {      0,      0,      0 }, 0x5900 },
    { ACTOR_OBJ_TSUBO,   {     50,      0,    -74 }, {      0,      0,      0 }, 0x5900 },
    { ACTOR_OBJ_TSUBO,   {    -66,      0,    -79 }, {      0,      0,      0 }, 0x5B00 },
    { ACTOR_OBJ_TSUBO,   {    156,     30,     -1 }, {      0,      0,      0 }, 0x5B01 },
    { ACTOR_OBJ_TSUBO,   {    -85,      0,    -41 }, {      0,      0,      0 }, 0x5D00 },
    { ACTOR_OBJ_TSUBO,   {    168,     30,    166 }, {      0,      0,      0 }, 0x5D03 },
    { ACTOR_OBJ_TSUBO,   {     70,      0,    215 }, {      0,      0,      0 }, 0x5701 },
    { ACTOR_OBJ_TSUBO,   {     40,      0,    123 }, {      0,      0,      0 }, 0x6100 },
    { ACTOR_OBJ_TSUBO,   {     68,      0,    -44 }, {      0,      0,      0 }, 0x6300 },
    { ACTOR_OBJ_TSUBO,   {     68,      0,    148 }, {      0,      0,      0 }, 0x6303 },
    { ACTOR_OBJ_TSUBO,   {     21,      0,     73 }, {      0,      0,      0 }, 0x6500 },
    { ACTOR_OBJ_TSUBO,   {     64,      0,     45 }, {      0,      0,      0 }, 0x6500 },
    { ACTOR_OBJ_TSUBO,   {     43,      0,     89 }, {      0,      0,      0 }, 0x6700 },
    { ACTOR_OBJ_TSUBO,   {     70,      0,    -12 }, {      0,      0,      0 }, 0x6701 },
    { ACTOR_OBJ_TSUBO,   {    177,    120,     85 }, {      0,      0,      0 }, 0x6900 },
    { ACTOR_OBJ_TSUBO,   {     73,      0,    117 }, {      0,      0,      0 }, 0x6900 },
    { ACTOR_OBJ_TSUBO,   {    172,    120,    -82 }, {      0,      0,      0 }, 0x6B00 },
    { ACTOR_OBJ_TSUBO,   {     89,      0,     -2 }, {      0,      0,      0 }, 0x6B00 },
    { ACTOR_OBJ_TSUBO,   {     42,      0,     26 }, {      0,      0,      0 }, 0x6D00 },
    { ACTOR_OBJ_TSUBO,   {    181,     30,    -33 }, {      0,      0,      0 }, 0x6D00 },
    { ACTOR_OBJ_TSUBO,   {     84,      0,     31 }, {      0,      0,      0 }, 0x6F00 },
    { ACTOR_OBJ_TSUBO,   {    184,     30,     13 }, {      0,      0,      0 }, 0x6F00 },
    { ACTOR_OBJ_TSUBO,   {     16,      0,     -6 }, {      0,      0,      0 }, 0x6100 },
    { ACTOR_OBJ_TSUBO,   {    -65,      0,    -45 }, {      0,      0,      0 }, 0x7700 },
    { ACTOR_OBJ_TSUBO,   {    -80,      0,     -7 }, {      0,      0,      0 }, 0x7700 },
};

PolygonType2 miharigoya_room_0PolygonType2_0003A0 = { 
    2, 12,
    miharigoya_room_0PolygonDlist2_0003AC,
    miharigoya_room_0PolygonDlist2_0003AC + ARRAY_COUNTU(miharigoya_room_0PolygonDlist2_0003AC)
};

PolygonDlist2 miharigoya_room_0PolygonDlist2_0003AC[12] = {
    { {    399,    101,   -140 },    170, miharigoya_room_0DL_003820, NULL },
    { {    399,    101,    140 },    170, miharigoya_room_0DL_0036A8, NULL },
    { {    150,     15,      0 },    245, miharigoya_room_0DL_002F30, NULL },
    { {    -10,      0,     26 },    287, miharigoya_room_0DL_002A10, NULL },
    { {     51,    240,      0 },    249, miharigoya_room_0DL_003490, NULL },
    { {    -10,      0,    317 },     86, miharigoya_room_0DL_000FE0, NULL },
    { {     70,    190,     26 },    351, miharigoya_room_0DL_001F48, NULL },
    { {     70,     30,     26 },    328, miharigoya_room_0DL_002778, NULL },
    { {   -113,    115,     14 },    103, miharigoya_room_0DL_000A68, miharigoya_room_0DL_003C40 },
    { {   -103,    102,      0 },    183, miharigoya_room_0DL_000E60, NULL },
    { {    -10,     80,    342 },    115, miharigoya_room_0DL_000660, NULL },
    { {     40,    260,      0 },    294, miharigoya_room_0DL_002C60, NULL },
};

s32 miharigoya_room_0_terminatorMaybe_00046C = { 0x01000000 };

SceneCmd miharigoya_room_0Set_000470[] = {
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&miharigoya_room_0PolygonType2_0003A0),
    SCENE_CMD_OBJECT_LIST(2, miharigoya_room_0ObjectList_0004B0),
    SCENE_CMD_ACTOR_LIST(14, miharigoya_room_0ActorList_0004B4),
    SCENE_CMD_END(),
};

s16 miharigoya_room_0ObjectList_0004B0[] = {
    OBJECT_TSUBO,
    OBJECT_PS,
};

ActorEntry miharigoya_room_0ActorList_0004B4[] = {
    { ACTOR_EN_GB,     {    -50,      0,   -200 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_TSUBO, {     79,      0,   -182 }, {      0,      0,      0 }, 0x4100 },
    { ACTOR_OBJ_TSUBO, {     71,      0,    132 }, {      0,      0,      0 }, 0x433F },
    { ACTOR_OBJ_TSUBO, {     61,      0,    204 }, {      0,      0,      0 }, 0x4500 },
    { ACTOR_OBJ_TSUBO, {    167,     30,   -210 }, {      0,      0,      0 }, 0x4703 },
    { ACTOR_OBJ_TSUBO, {    167,     30,   -122 }, {      0,      0,      0 }, 0x493F },
    { ACTOR_OBJ_TSUBO, {    168,     30,    210 }, {      0,      0,      0 }, 0x4B02 },
    { ACTOR_OBJ_TSUBO, {     74,      0,     23 }, {      0,      0,      0 }, 0x4D00 },
    { ACTOR_OBJ_TSUBO, {     44,      0,   -198 }, {      0,      0,      0 }, 0x4F3F },
    { ACTOR_OBJ_TSUBO, {     44,      0,   -151 }, {      0,      0,      0 }, 0x5103 },
    { ACTOR_OBJ_TSUBO, {     40,      0,      4 }, {      0,      0,      0 }, 0x533F },
    { ACTOR_OBJ_TSUBO, {     71,      0,    -22 }, {      0,      0,      0 }, 0x5500 },
    { ACTOR_EN_LIGHT,  {   -108,     94,    160 }, {      0, 0X4000,      0 }, 0x03F5 },
    { ACTOR_EN_LIGHT,  {   -108,     94,   -160 }, {      0, 0X4000,      0 }, 0x03F5 },
};

u8 miharigoya_room_0_possiblePadding_000594[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx miharigoya_room_0Vtx_0005A0[] = {
#include "assets/scenes/indoors/miharigoya/miharigoya_room_0Vtx_0005A0.vtx.inc"
};

Gfx miharigoya_room_0DL_000660[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&miharigoya_room_0Vtx_0005A0[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(miharigoya_sceneTex_004550, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(miharigoya_room_0Vtx_0005A0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx miharigoya_room_0Vtx_000718[] = {
#include "assets/scenes/indoors/miharigoya/miharigoya_room_0Vtx_000718.vtx.inc"
};

Gfx miharigoya_room_0DL_000A68[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&miharigoya_room_0Vtx_000718[45], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(miharigoya_sceneTex_003350, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(miharigoya_room_0Vtx_000718, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(miharigoya_sceneTex_001050, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&miharigoya_room_0Vtx_000718[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&miharigoya_room_0Vtx_000718[8], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(miharigoya_sceneTex_009D50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&miharigoya_room_0Vtx_000718[16], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 0, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(miharigoya_sceneTex_005D50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&miharigoya_room_0Vtx_000718[21], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(miharigoya_sceneTex_001050, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&miharigoya_room_0Vtx_000718[29], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(miharigoya_sceneTex_009D50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&miharigoya_room_0Vtx_000718[41], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx miharigoya_room_0Vtx_000D40[] = {
#include "assets/scenes/indoors/miharigoya/miharigoya_room_0Vtx_000D40.vtx.inc"
};

Gfx miharigoya_room_0DL_000E60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&miharigoya_room_0Vtx_000D40[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(miharigoya_sceneTex_00BD50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(miharigoya_room_0Vtx_000D40, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 9, 0),
    gsSPEndDisplayList(),
};

Vtx miharigoya_room_0Vtx_000F20[] = {
#include "assets/scenes/indoors/miharigoya/miharigoya_room_0Vtx_000F20.vtx.inc"
};

Gfx miharigoya_room_0DL_000FE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&miharigoya_room_0Vtx_000F20[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(miharigoya_sceneTex_004550, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(miharigoya_room_0Vtx_000F20, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx miharigoya_room_0Vtx_001098[] = {
#include "assets/scenes/indoors/miharigoya/miharigoya_room_0Vtx_001098.vtx.inc"
};

Gfx miharigoya_room_0DL_001F48[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&miharigoya_room_0Vtx_001098[227], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(miharigoya_sceneTex_004950, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(miharigoya_room_0Vtx_001098, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(miharigoya_sceneTex_008D50, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&miharigoya_room_0Vtx_001098[16], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(23, 24, 21, 0, 24, 25, 26, 0),
    gsSP2Triangles(25, 27, 26, 0, 27, 28, 26, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&miharigoya_room_0Vtx_001098[48], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 26, 24, 0, 23, 27, 26, 0),
    gsSP2Triangles(27, 28, 26, 0, 28, 29, 26, 0),
    gsSP1Triangle(28, 30, 29, 0),
    gsSPVertex(&miharigoya_room_0Vtx_001098[79], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 13, 0, 16, 13, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(15, 23, 24, 0, 15, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&miharigoya_room_0Vtx_001098[109], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 7, 9, 0),
    gsSP2Triangles(8, 5, 7, 0, 8, 11, 5, 0),
    gsSP2Triangles(11, 12, 5, 0, 12, 13, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(miharigoya_sceneTex_007550, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&miharigoya_room_0Vtx_001098[123], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(miharigoya_sceneTex_005950, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&miharigoya_room_0Vtx_001098[155], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&miharigoya_room_0Vtx_001098[187], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&miharigoya_room_0Vtx_001098[219], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx miharigoya_room_0Vtx_0022F8[] = {
#include "assets/scenes/indoors/miharigoya/miharigoya_room_0Vtx_0022F8.vtx.inc"
};

Gfx miharigoya_room_0DL_002778[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&miharigoya_room_0Vtx_0022F8[64], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(miharigoya_sceneTex_00AD50, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(miharigoya_room_0Vtx_0022F8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&miharigoya_room_0Vtx_0022F8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

Vtx miharigoya_room_0Vtx_0028B0[] = {
#include "assets/scenes/indoors/miharigoya/miharigoya_room_0Vtx_0028B0.vtx.inc"
};

Gfx miharigoya_room_0DL_002A10[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&miharigoya_room_0Vtx_0028B0[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(miharigoya_sceneTex_004550, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock_4b(miharigoya_sceneTex_008550, 0x0100, 1, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(miharigoya_room_0Vtx_0028B0, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 6, 9, 7, 0),
    gsSP2Triangles(8, 10, 11, 0, 10, 12, 11, 0),
    gsSP2Triangles(12, 13, 11, 0, 13, 9, 11, 0),
    gsSPEndDisplayList(),
};

Vtx miharigoya_room_0Vtx_002B20[] = {
#include "assets/scenes/indoors/miharigoya/miharigoya_room_0Vtx_002B20.vtx.inc"
};

Gfx miharigoya_room_0DL_002C60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&miharigoya_room_0Vtx_002B20[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(miharigoya_sceneTex_004950, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(miharigoya_room_0Vtx_002B20, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 10, 11, 8, 0),
    gsSPEndDisplayList(),
};

Vtx miharigoya_room_0Vtx_002D30[] = {
#include "assets/scenes/indoors/miharigoya/miharigoya_room_0Vtx_002D30.vtx.inc"
};

Gfx miharigoya_room_0DL_002F30[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&miharigoya_room_0Vtx_002D30[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(miharigoya_sceneTex_004950, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(miharigoya_room_0Vtx_002D30, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx miharigoya_room_0Vtx_003010[] = {
#include "assets/scenes/indoors/miharigoya/miharigoya_room_0Vtx_003010.vtx.inc"
};

Gfx miharigoya_room_0DL_003490[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&miharigoya_room_0Vtx_003010[64], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(miharigoya_sceneTex_004950, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(miharigoya_room_0Vtx_003010, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 11, 0, 14, 11, 10, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 21, 0, 24, 21, 20, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(30, 31, 27, 0, 30, 27, 26, 0),
    gsSPVertex(&miharigoya_room_0Vtx_003010[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 21, 0, 24, 21, 20, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(30, 31, 27, 0, 30, 27, 26, 0),
    gsSPEndDisplayList(),
};

Vtx miharigoya_room_0Vtx_0035E8[] = {
#include "assets/scenes/indoors/miharigoya/miharigoya_room_0Vtx_0035E8.vtx.inc"
};

Gfx miharigoya_room_0DL_0036A8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&miharigoya_room_0Vtx_0035E8[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(miharigoya_room_0Vtx_0035E8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx miharigoya_room_0Vtx_003760[] = {
#include "assets/scenes/indoors/miharigoya/miharigoya_room_0Vtx_003760.vtx.inc"
};

Gfx miharigoya_room_0DL_003820[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&miharigoya_room_0Vtx_003760[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x09000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(miharigoya_room_0Vtx_003760, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 gMiharigoyaBlob_0038D8[] = {
#include "assets/scenes/indoors/miharigoya/gMiharigoyaBlob_0038D8.bin.inc.c"
};

Vtx miharigoya_room_0Vtx_003940[] = {
#include "assets/scenes/indoors/miharigoya/miharigoya_room_0Vtx_003940.vtx.inc"
};

Gfx miharigoya_room_0DL_003C40[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&miharigoya_room_0Vtx_003940[40], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(miharigoya_sceneTex_001150, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(miharigoya_room_0Vtx_003940, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(miharigoya_sceneTex_000C50, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&miharigoya_room_0Vtx_003940[24], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPVertex(&miharigoya_room_0Vtx_003940[36], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gMiharigoyaDL_003DA0[] = {
    gsSPDisplayList(miharigoya_room_0DL_003C40),
    gsSPEndDisplayList(),
};

