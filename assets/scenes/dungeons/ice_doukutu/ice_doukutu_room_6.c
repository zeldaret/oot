#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ice_doukutu_room_6.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ice_doukutu_scene.h"
#include "ice_doukutu_room_0.h"
#include "ice_doukutu_room_1.h"
#include "ice_doukutu_room_2.h"
#include "ice_doukutu_room_3.h"
#include "ice_doukutu_room_4.h"
#include "ice_doukutu_room_5.h"
#include "ice_doukutu_room_7.h"
#include "ice_doukutu_room_8.h"
#include "ice_doukutu_room_9.h"
#include "ice_doukutu_room_10.h"
#include "ice_doukutu_room_11.h"

SceneCmd ice_doukutu_room_6Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(ice_doukutu_room_6AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ice_doukutu_room_6PolygonType0_0000F0),
    SCENE_CMD_OBJECT_LIST(13, ice_doukutu_room_6ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(24, ice_doukutu_room_6ActorList_000074),
    SCENE_CMD_END(),
};

SceneCmd* ice_doukutu_room_6AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    ice_doukutu_room_6Set_000110,
};

s16 ice_doukutu_room_6ObjectList_000058[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_TITE,
    OBJECT_GOROIWA,
    OBJECT_FZ,
    OBJECT_DEMO_KEKKAI,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_WF,
    OBJECT_BOX,
    OBJECT_KA,
    OBJECT_FIREFLY,
};

ActorEntry ice_doukutu_room_6ActorList_000074[] = {
    { ACTOR_BG_ICE_TURARA, {  -1487,    354,    569 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_ICE_TURARA, {  -1583,    403,    609 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_ICE_TURARA, {  -1524,    443,    326 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_FIREFLY,    {  -1573,    373,    506 }, {      0, 0XA222,      0 }, 0x0004 },
    { ACTOR_EN_FIREFLY,    {  -1330,    348,    159 }, {      0, 0X3333,      0 }, 0x0004 },
    { ACTOR_OBJ_TSUBO,     {  -1352,    273,    639 }, {      0,      0,      0 }, 0x5412 },
    { ACTOR_OBJ_TSUBO,     {  -1396,    267,    596 }, {      0,      0,      0 }, 0x560E },
    { ACTOR_BG_ICE_TURARA, {  -1624,    227,    431 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA, {  -1595,    248,    600 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA, {  -1587,    240,    497 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA, {  -1514,    203,    307 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA, {  -1507,    226,    443 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA, {  -1367,    177,    206 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA, {  -1349,    188,    270 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA, {  -1288,    172,    184 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA, {  -1571,    473,    422 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_ICE_TURARA, {  -1412,    398,    246 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_BG_ICE_TURARA, {  -1328,    385,    215 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_BG_ICE_TURARA, {  -1231,    350,    170 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_BG_ICE_SHELTER, {  -1459,    267,    625 }, {      0,      0,      0 }, 0x0111 },
    { ACTOR_BG_ICE_SHELTER, {  -1488,    271,    676 }, {      0,      0,      0 }, 0x0011 },
    { ACTOR_BG_ICE_SHELTER, {  -1422,    265,    586 }, {      0,      0,      0 }, 0x0011 },
    { ACTOR_EN_FZ,         {  -1513,    246,    560 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_EN_FZ,         {  -1508,    209,    358 }, {      0, 0X6444,      0 }, 0x0000 },
};

u8 ice_doukutu_room_6_possiblePadding_0000E4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 ice_doukutu_room_6PolygonType0_0000F0 = { 
    0, 1,
    ice_doukutu_room_6PolygonDlist_0000FC,
    ice_doukutu_room_6PolygonDlist_0000FC + ARRAY_COUNTU(ice_doukutu_room_6PolygonDlist_0000FC)
};

PolygonDlist ice_doukutu_room_6PolygonDlist_0000FC[1] = {
    { ice_doukutu_room_6DL_002980, NULL },
};

s32 ice_doukutu_room_6_terminatorMaybe_000104 = { 0x01000000 };

u8 ice_doukutu_room_6_possiblePadding_000108[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd ice_doukutu_room_6Set_000110[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&ice_doukutu_room_6PolygonType0_0000F0),
    SCENE_CMD_OBJECT_LIST(3, ice_doukutu_room_6ObjectList_000148),
    SCENE_CMD_END(),
};

s16 ice_doukutu_room_6ObjectList_000148[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_XC,
    OBJECT_GI_MELODY,
};

Vtx ice_doukutu_room_6Vtx_000150[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_6Vtx_000150.vtx.inc"
};

Gfx ice_doukutu_room_6DL_0004A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_6Vtx_000150[45], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010AC0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPLoadMultiBlock(ice_doukutu_sceneTex_00FCC0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_6Vtx_000150, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 3, 6, 7, 0),
    gsSP2Triangles(3, 8, 6, 0, 4, 0, 3, 0),
    gsSP2Triangles(4, 3, 7, 0, 9, 4, 7, 0),
    gsSP2Triangles(9, 7, 10, 0, 11, 9, 12, 0),
    gsSP2Triangles(9, 10, 12, 0, 13, 12, 10, 0),
    gsSP2Triangles(13, 11, 12, 0, 13, 10, 14, 0),
    gsSP2Triangles(15, 13, 14, 0, 16, 17, 18, 0),
    gsSP2Triangles(17, 15, 18, 0, 15, 19, 18, 0),
    gsSP2Triangles(20, 19, 21, 0, 20, 22, 19, 0),
    gsSP2Triangles(22, 18, 19, 0, 22, 16, 18, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 26, 24, 0),
    gsSP2Triangles(23, 27, 26, 0, 26, 28, 24, 0),
    gsSP2Triangles(27, 20, 26, 0, 20, 29, 26, 0),
    gsSP2Triangles(20, 21, 29, 0, 29, 28, 26, 0),
    gsSP2Triangles(30, 23, 31, 0, 23, 25, 31, 0),
    gsSPVertex(&ice_doukutu_room_6Vtx_000150[32], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 11, 9, 12, 0),
    gsSP1Triangle(11, 7, 9, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_6Vtx_000630[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_6Vtx_000630.vtx.inc"
};

Gfx ice_doukutu_room_6DL_000B60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_6Vtx_000630[75], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_0100C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(ice_doukutu_sceneTex_00FCC0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_6Vtx_000630, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(3, 5, 4, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 9, 7, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 10, 12, 0, 14, 13, 12, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(16, 19, 17, 0, 19, 20, 17, 0),
    gsSP2Triangles(19, 21, 22, 0, 19, 22, 20, 0),
    gsSP2Triangles(21, 23, 22, 0, 19, 24, 21, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 23, 21, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 29, 28, 0),
    gsSP2Triangles(13, 30, 10, 0, 30, 31, 10, 0),
    gsSPVertex(&ice_doukutu_room_6Vtx_000630[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 4, 5, 3, 0),
    gsSP2Triangles(5, 6, 3, 0, 6, 7, 3, 0),
    gsSP2Triangles(7, 8, 3, 0, 8, 9, 3, 0),
    gsSP2Triangles(9, 2, 3, 0, 5, 10, 6, 0),
    gsSP2Triangles(10, 11, 6, 0, 12, 13, 7, 0),
    gsSP2Triangles(12, 7, 6, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 19, 22, 23, 0),
    gsSP2Triangles(19, 23, 20, 0, 22, 24, 23, 0),
    gsSP2Triangles(22, 25, 24, 0, 26, 27, 28, 0),
    gsSP1Triangle(27, 29, 28, 0),
    gsSPVertex(&ice_doukutu_room_6Vtx_000630[62], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 3, 5, 6, 0),
    gsSP2Triangles(5, 7, 6, 0, 8, 3, 9, 0),
    gsSP2Triangles(8, 5, 3, 0, 3, 1, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 9, 11, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_6Vtx_000D38[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_6Vtx_000D38.vtx.inc"
};

Gfx ice_doukutu_room_6DL_001098[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_6Vtx_000D38[46], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_6Tex_0039B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(ice_doukutu_sceneTex_00FCC0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_6Vtx_000D38, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 3, 0, 10, 7, 3, 0),
    gsSP2Triangles(11, 10, 3, 0, 2, 11, 3, 0),
    gsSP2Triangles(12, 11, 2, 0, 12, 2, 5, 0),
    gsSP2Triangles(12, 5, 6, 0, 13, 12, 6, 0),
    gsSP2Triangles(13, 6, 14, 0, 15, 13, 14, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0),
    gsSP2Triangles(18, 22, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 26, 24, 0, 27, 28, 8, 0),
    gsSP1Triangle(27, 8, 29, 0),
    gsSPVertex(&ice_doukutu_room_6Vtx_000D38[30], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 3, 9, 6, 0),
    gsSP2Triangles(9, 8, 6, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 13, 11, 0, 10, 14, 13, 0),
    gsSP1Triangle(10, 15, 14, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_6Vtx_001220[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_6Vtx_001220.vtx.inc"
};

Gfx ice_doukutu_room_6DL_0013B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_6Vtx_001220[17], 8, 0),
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
    gsSPVertex(ice_doukutu_room_6Vtx_001220, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010EC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_6Vtx_001220[4], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 1, 0, 0),
    gsSP2Triangles(3, 6, 4, 0, 0, 2, 7, 0),
    gsSP2Triangles(8, 0, 7, 0, 0, 8, 9, 0),
    gsSP2Triangles(10, 0, 9, 0, 10, 11, 0, 0),
    gsSP1Triangle(10, 12, 11, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_6Vtx_0014B8[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_6Vtx_0014B8.vtx.inc"
};

Gfx ice_doukutu_room_6DL_002618[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_6Vtx_0014B8[270], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_6Tex_0029B0, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_6Vtx_0014B8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 0, 9, 10, 0),
    gsSP2Triangles(3, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(13, 22, 23, 0, 16, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_6Vtx_0014B8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(9, 18, 19, 0, 12, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0),
    gsSP1Triangle(29, 30, 27, 0),
    gsSPVertex(&ice_doukutu_room_6Vtx_0014B8[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 11, 0, 14, 11, 10, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(15, 20, 21, 0, 15, 21, 11, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 3, 5, 0),
    gsSP1Triangle(30, 26, 28, 0),
    gsSPVertex(&ice_doukutu_room_6Vtx_0014B8[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 12, 0, 13, 8, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(9, 8, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(7, 6, 26, 0, 8, 13, 27, 0),
    gsSP2Triangles(28, 8, 27, 0, 29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_6Vtx_0014B8[126], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetPrimColor(0, 0, 0, 0, 0, 255),
    gsSPVertex(&ice_doukutu_room_6Vtx_0014B8[140], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 3, 5, 4, 0),
    gsSP2Triangles(3, 6, 5, 0, 6, 7, 5, 0),
    gsSP1Triangle(7, 8, 5, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_6Tex_0029B0, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&ice_doukutu_room_6Vtx_0014B8[149], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 0, 9, 10, 0),
    gsSP2Triangles(3, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(13, 22, 23, 0, 16, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_6Vtx_0014B8[181], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(9, 18, 19, 0, 12, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&ice_doukutu_room_6Vtx_0014B8[212], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 6, 15, 16, 0),
    gsSP2Triangles(9, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(19, 28, 29, 0, 22, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_6Vtx_0014B8[244], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 0, 9, 10, 0),
    gsSP2Triangles(3, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(13, 22, 23, 0, 16, 24, 25, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_6DL_002980[] = {
    gsSPDisplayList(ice_doukutu_room_6DL_0004A0),
    gsSPDisplayList(ice_doukutu_room_6DL_000B60),
    gsSPDisplayList(ice_doukutu_room_6DL_001098),
    gsSPDisplayList(ice_doukutu_room_6DL_0013B0),
    gsSPDisplayList(ice_doukutu_room_6DL_002618),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_6Tex_0029B0[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_6Tex_0029B0.i8.inc.c"
};

u64 ice_doukutu_room_6Tex_0039B0[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_6Tex_0039B0.rgba16.inc.c"
};

