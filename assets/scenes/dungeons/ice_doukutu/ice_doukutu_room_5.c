#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ice_doukutu_room_5.h"
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
#include "ice_doukutu_room_6.h"
#include "ice_doukutu_room_7.h"
#include "ice_doukutu_room_8.h"
#include "ice_doukutu_room_9.h"
#include "ice_doukutu_room_10.h"
#include "ice_doukutu_room_11.h"

SceneCmd ice_doukutu_room_5Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(ice_doukutu_room_5AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ice_doukutu_room_5PolygonType0_0001A0),
    SCENE_CMD_OBJECT_LIST(13, ice_doukutu_room_5ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(18, ice_doukutu_room_5ActorList_000074),
    SCENE_CMD_END(),
};

SceneCmd* ice_doukutu_room_5AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    ice_doukutu_room_5Set_0001C0,
};

s16 ice_doukutu_room_5ObjectList_000058[] = {
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

ActorEntry ice_doukutu_room_5ActorList_000074[] = {
    { ACTOR_EN_ICE_HONO,      {  -1942,    150,   -690 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_TIMEBLOCK,    {  -1810,      0,   -695 }, {      0,      0,      0 }, 0x11FF },
    { ACTOR_EN_KAKASI2,       {  -1170,    119,  -1374 }, {      0,      0,    0X9 }, 0x18FF },
    { ACTOR_EN_WF,            {  -1564,     41,   -957 }, {      0, 0X4000,      0 }, 0xFF01 },
    { ACTOR_EN_WF,            {  -1156,     61,   -683 }, {      0, 0X40B6,      0 }, 0xFF01 },
    { ACTOR_EN_FIREFLY,       {  -1727,    341,   -748 }, {      0, 0X4000,      0 }, 0x0004 },
    { ACTOR_EN_FIREFLY,       {  -1721,    341,   -641 }, {      0, 0X4000,      0 }, 0x0004 },
    { ACTOR_EN_SW,            {  -1152,    185,  -1657 }, {      0, 0X2889,      0 }, 0x8A01 },
    { ACTOR_EN_SW,            {  -1394,      0,   -233 }, {      0, 0X8000,      0 }, 0x8A04 },
    { ACTOR_OBJ_SWITCH,       {   -722,    219,   -845 }, { 0X8000,      0,      0 }, 0x2613 },
    { ACTOR_BG_GND_DARKMEIRO, {  -1465,     50,   -250 }, {      0,      0, 0X4000 }, 0x2601 },
    { ACTOR_BG_GND_DARKMEIRO, {  -1364,     50,   -250 }, {      0,      0, 0X4000 }, 0x2601 },
    { ACTOR_BG_GND_DARKMEIRO, {  -1394,    100,   -250 }, {      0,      0,      0 }, 0x2601 },
    { ACTOR_BG_GND_DARKMEIRO, {  -1394,     50,   -260 }, { 0X4000,      0,      0 }, 0x2601 },
    { ACTOR_BG_ICE_SHELTER,   {  -1438,    120,   -155 }, {      0,      0,      0 }, 0x002D },
    { ACTOR_BG_ICE_SHELTER,   {  -1386,    120,   -159 }, {      0,      0,      0 }, 0x002E },
    { ACTOR_BG_ICE_SHELTER,   {  -1335,    120,   -159 }, {      0,      0,      0 }, 0x002F },
    { ACTOR_BG_ICE_TURARA,    {   -763,    174,   -896 }, {      0,      0,      0 }, 0x0002 },
};

u8 ice_doukutu_room_5_possiblePadding_000194[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 ice_doukutu_room_5PolygonType0_0001A0 = { 
    0, 1,
    ice_doukutu_room_5PolygonDlist_0001AC,
    ice_doukutu_room_5PolygonDlist_0001AC + ARRAY_COUNTU(ice_doukutu_room_5PolygonDlist_0001AC)
};

PolygonDlist ice_doukutu_room_5PolygonDlist_0001AC[1] = {
    { ice_doukutu_room_5DL_004618, ice_doukutu_room_5DL_007460 },
};

s32 ice_doukutu_room_5_terminatorMaybe_0001B4 = { 0x01000000 };

u8 ice_doukutu_room_5_possiblePadding_0001B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd ice_doukutu_room_5Set_0001C0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&ice_doukutu_room_5PolygonType0_0001A0),
    SCENE_CMD_OBJECT_LIST(3, ice_doukutu_room_5ObjectList_000200),
    SCENE_CMD_ACTOR_LIST(3, ice_doukutu_room_5ActorList_000208),
    SCENE_CMD_END(),
};

s16 ice_doukutu_room_5ObjectList_000200[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_XC,
    OBJECT_GI_MELODY,
};

ActorEntry ice_doukutu_room_5ActorList_000208[] = {
    { ACTOR_BG_ICE_OBJECTS, {  -1060,      0,   -900 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_SHELTER, {  -1120,    119,  -1577 }, {      0, 0XF555,      0 }, 0x00FF },
    { ACTOR_BG_ICE_SHELTER, {  -1948,    121,   -684 }, {      0, 0X4000,      0 }, 0x01FF },
};

u8 ice_doukutu_room_5_possiblePadding_000238[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ice_doukutu_room_5Vtx_000240[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_5Vtx_000240.vtx.inc"
};

Gfx ice_doukutu_room_5DL_000E50[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[185], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010EC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_5Vtx_000240, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 5, 4, 2, 0),
    gsSP2Triangles(6, 5, 2, 0, 6, 7, 5, 0),
    gsSP2Triangles(4, 8, 3, 0, 9, 3, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(10, 12, 16, 0, 17, 18, 19, 0),
    gsSP1Triangle(17, 19, 20, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010EC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[25], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[33], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010EC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[37], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[45], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010EC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[49], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[57], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010EC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[61], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 15, 0),
    gsSP2Triangles(19, 20, 21, 0, 15, 22, 16, 0),
    gsSP2Triangles(23, 24, 25, 0, 24, 17, 25, 0),
    gsSP1Triangle(17, 26, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_5Tex_004648, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[88], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010EC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[92], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_5Tex_004648, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[96], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010EC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[104], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 1, 0, 6, 0, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 7, 0, 0),
    gsSP2Triangles(9, 0, 3, 0, 10, 9, 3, 0),
    gsSP1Triangle(2, 11, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_5Tex_006648, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[116], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_5Tex_005648, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[148], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(5, 3, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(7, 6, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(8, 7, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(10, 9, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 10, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(13, 12, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(14, 13, 17, 0, 14, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 19, 22, 0, 23, 22, 24, 0),
    gsSP2Triangles(22, 21, 25, 0, 22, 25, 26, 0),
    gsSP2Triangles(24, 22, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(26, 25, 1, 0, 26, 1, 0, 0),
    gsSP2Triangles(27, 26, 0, 0, 27, 0, 4, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_5Vtx_000240[176], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(2, 1, 6, 0, 2, 6, 7, 0),
    gsSP2Triangles(2, 7, 8, 0, 5, 2, 8, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_5Vtx_001498[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_5Vtx_001498.vtx.inc"
};

Gfx ice_doukutu_room_5DL_001FB8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_5Vtx_001498[170], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_5Tex_005E48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(ice_doukutu_sceneTex_00FCC0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_5Vtx_001498, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 6, 9, 8, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 0, 0, 10, 1, 0, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 14, 17, 16, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 18, 21, 20, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(25, 24, 30, 0, 25, 30, 31, 0),
    gsSP2Triangles(31, 30, 26, 0, 30, 27, 26, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_001498[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 2, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 1, 0, 9, 1, 0, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(11, 14, 12, 0, 11, 15, 14, 0),
    gsSP2Triangles(15, 16, 14, 0, 15, 17, 16, 0),
    gsSP2Triangles(15, 18, 17, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 22, 20, 0, 19, 23, 22, 0),
    gsSP2Triangles(23, 24, 22, 0, 23, 25, 24, 0),
    gsSP2Triangles(25, 26, 24, 0, 25, 27, 26, 0),
    gsSP2Triangles(25, 28, 27, 0, 27, 28, 29, 0),
    gsSP2Triangles(28, 30, 29, 0, 30, 31, 29, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_001498[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(9, 12, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 11, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(17, 20, 19, 0, 17, 21, 20, 0),
    gsSP2Triangles(21, 22, 20, 0, 21, 23, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(25, 28, 27, 0, 28, 29, 27, 0),
    gsSP1Triangle(28, 30, 29, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_001498[95], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(4, 6, 5, 0, 4, 7, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 6, 0),
    gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 10, 0),
    gsSP2Triangles(13, 14, 10, 0, 13, 15, 14, 0),
    gsSP2Triangles(15, 16, 14, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(19, 22, 23, 0, 19, 23, 20, 0),
    gsSP2Triangles(22, 24, 23, 0, 22, 25, 24, 0),
    gsSP2Triangles(25, 26, 24, 0, 25, 27, 26, 0),
    gsSP2Triangles(27, 0, 26, 0, 27, 1, 0, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_001498[127], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 3, 5, 6, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(13, 22, 23, 0, 13, 11, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(25, 28, 26, 0, 29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_001498[159], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 5, 9, 8, 0),
    gsSP1Triangle(5, 10, 9, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_5Vtx_0022D0[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_5Vtx_0022D0.vtx.inc"
};

Gfx ice_doukutu_room_5DL_003740[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_5Vtx_0022D0[319], 8, 0),
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
    gsSPVertex(ice_doukutu_room_5Vtx_0022D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 3, 5, 6, 0),
    gsSP2Triangles(5, 7, 6, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 8, 3, 12, 0),
    gsSP2Triangles(8, 5, 3, 0, 3, 1, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 12, 14, 0),
    gsSP2Triangles(9, 8, 13, 0, 8, 12, 13, 0),
    gsSP2Triangles(10, 16, 7, 0, 10, 11, 16, 0),
    gsSP2Triangles(15, 14, 17, 0, 14, 0, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(19, 22, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 23, 27, 0, 26, 28, 23, 0),
    gsSP2Triangles(18, 29, 28, 0, 18, 28, 26, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_0022D0[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 6, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 8, 9, 7, 0),
    gsSP2Triangles(9, 10, 7, 0, 10, 5, 7, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 21, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 24, 23, 0),
    gsSP2Triangles(24, 25, 23, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 28, 29, 0, 26, 29, 30, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_0022D0[61], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 1, 0, 9, 1, 0, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(10, 14, 13, 0, 10, 15, 16, 0),
    gsSP2Triangles(10, 12, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 21, 22, 0, 18, 23, 24, 0),
    gsSP2Triangles(18, 24, 25, 0, 18, 25, 19, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP1Triangle(30, 28, 31, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_0022D0[93], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 5, 3, 6, 0),
    gsSP2Triangles(5, 6, 7, 0, 7, 6, 8, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 11, 0),
    gsSP2Triangles(14, 11, 10, 0, 16, 17, 15, 0),
    gsSP2Triangles(16, 15, 18, 0, 19, 20, 17, 0),
    gsSP2Triangles(19, 17, 16, 0, 21, 22, 20, 0),
    gsSP2Triangles(21, 20, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_0022D0[125], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(6, 5, 7, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 10, 0, 13, 10, 9, 0),
    gsSP2Triangles(15, 16, 14, 0, 15, 14, 17, 0),
    gsSP2Triangles(18, 19, 16, 0, 18, 16, 15, 0),
    gsSP2Triangles(20, 21, 19, 0, 20, 19, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 24, 0, 27, 24, 23, 0),
    gsSP2Triangles(29, 30, 28, 0, 29, 28, 31, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_0022D0[157], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 9, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 14, 17, 0, 16, 17, 18, 0),
    gsSP2Triangles(18, 17, 19, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 22, 0, 25, 22, 21, 0),
    gsSP2Triangles(27, 28, 26, 0, 27, 26, 29, 0),
    gsSP2Triangles(30, 31, 28, 0, 30, 28, 27, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_0022D0[189], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(13, 12, 16, 0, 13, 16, 17, 0),
    gsSP2Triangles(16, 18, 17, 0, 12, 15, 19, 0),
    gsSP2Triangles(12, 19, 16, 0, 19, 20, 18, 0),
    gsSP2Triangles(19, 18, 16, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 22, 0),
    gsSP2Triangles(25, 22, 21, 0, 25, 26, 22, 0),
    gsSP2Triangles(25, 22, 21, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 27, 28, 23, 0),
    gsSP2Triangles(29, 27, 23, 0, 22, 29, 23, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_0022D0[219], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 8, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 14, 17, 0, 18, 17, 19, 0),
    gsSP2Triangles(20, 4, 7, 0, 20, 7, 21, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 20, 22, 0),
    gsSP2Triangles(24, 23, 22, 0, 24, 22, 25, 0),
    gsSP2Triangles(26, 24, 27, 0, 24, 25, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_0022D0[251], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(2, 12, 8, 0, 2, 8, 11, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 13, 16, 0, 17, 16, 18, 0),
    gsSP2Triangles(19, 10, 17, 0, 19, 17, 18, 0),
    gsSP2Triangles(3, 2, 19, 0, 3, 19, 18, 0),
    gsSP2Triangles(20, 3, 18, 0, 20, 18, 16, 0),
    gsSP2Triangles(7, 20, 16, 0, 7, 16, 15, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 24, 22, 0),
    gsSP2Triangles(25, 21, 23, 0, 25, 23, 26, 0),
    gsSP2Triangles(27, 25, 26, 0, 27, 26, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_0022D0[283], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 5, 0),
    gsSP2Triangles(8, 3, 5, 0, 9, 10, 5, 0),
    gsSP2Triangles(10, 7, 5, 0, 11, 5, 6, 0),
    gsSP2Triangles(11, 9, 5, 0, 12, 11, 6, 0),
    gsSP2Triangles(6, 4, 13, 0, 12, 6, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(14, 17, 18, 0, 14, 18, 19, 0),
    gsSP2Triangles(20, 14, 19, 0, 21, 20, 19, 0),
    gsSP2Triangles(21, 19, 22, 0, 23, 12, 24, 0),
    gsSP2Triangles(12, 13, 24, 0, 13, 25, 24, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(10, 30, 7, 0, 30, 31, 7, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_0022D0[315], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_5Vtx_003C48[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_5Vtx_003C48.vtx.inc"
};

Gfx ice_doukutu_room_5DL_004018[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_5Vtx_003C48[53], 8, 0),
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
    gsSPVertex(ice_doukutu_room_5Vtx_003C48, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 3, 5, 6, 0),
    gsSP2Triangles(5, 7, 6, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 8, 10, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 13, 16, 17, 0),
    gsSP2Triangles(13, 17, 14, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 17, 0, 20, 21, 19, 0),
    gsSP2Triangles(20, 19, 18, 0, 20, 18, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 26, 24, 0),
    gsSP2Triangles(18, 27, 22, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_003C48[32], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 3, 5, 2, 0),
    gsSP2Triangles(2, 5, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(7, 2, 6, 0, 7, 0, 2, 0),
    gsSP2Triangles(9, 7, 10, 0, 7, 8, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(19, 17, 20, 0, 19, 15, 17, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_5Vtx_0041A0[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_5Vtx_0041A0.vtx.inc"
};

Gfx ice_doukutu_room_5DL_004500[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_5Vtx_0041A0[46], 8, 0),
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
    gsSPVertex(ice_doukutu_room_5Vtx_0041A0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 2, 1, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 9, 7, 0, 9, 10, 7, 0),
    gsSP2Triangles(10, 11, 7, 0, 11, 8, 7, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(12, 16, 13, 0, 16, 17, 13, 0),
    gsSP2Triangles(17, 15, 13, 0, 18, 19, 20, 0),
    gsSP2Triangles(19, 21, 20, 0, 18, 22, 19, 0),
    gsSP2Triangles(22, 23, 19, 0, 23, 21, 19, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(24, 28, 25, 0, 28, 29, 25, 0),
    gsSP1Triangle(29, 27, 25, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_0041A0[30], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 2, 1, 0, 6, 7, 8, 0),
    gsSP2Triangles(7, 9, 8, 0, 7, 10, 9, 0),
    gsSP2Triangles(6, 11, 7, 0, 11, 10, 7, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_5DL_004618[] = {
    gsSPDisplayList(ice_doukutu_room_5DL_000E50),
    gsSPDisplayList(ice_doukutu_room_5DL_001FB8),
    gsSPDisplayList(ice_doukutu_room_5DL_003740),
    gsSPDisplayList(ice_doukutu_room_5DL_004018),
    gsSPDisplayList(ice_doukutu_room_5DL_004500),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_5Tex_004648[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_5Tex_004648.rgba16.inc.c"
};

u64 ice_doukutu_room_5Tex_005648[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_5Tex_005648.rgba16.inc.c"
};

u64 ice_doukutu_room_5Tex_005E48[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_5Tex_005E48.rgba16.inc.c"
};

u64 ice_doukutu_room_5Tex_006648[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_5Tex_006648.rgba16.inc.c"
};

u8 ice_doukutu_room_5_possiblePadding_006E48[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ice_doukutu_room_5Vtx_006E50[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_5Vtx_006E50.vtx.inc"
};

Gfx ice_doukutu_room_5DL_006F10[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_5Vtx_006E50[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_5Tex_007478, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR | G_TX_WRAP,
                5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       TEXEL1, 0, PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(ice_doukutu_room_5Vtx_006E50, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_5Vtx_006FE8[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_5Vtx_006FE8.vtx.inc"
};

Gfx ice_doukutu_room_5DL_007358[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_5Vtx_006FE8[47], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_5Tex_007878, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_5Vtx_006FE8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 0, 9, 10, 0),
    gsSP2Triangles(3, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 13, 19, 20, 0),
    gsSP2Triangles(16, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_5Vtx_006FE8[32], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 9, 12, 0),
    gsSP1Triangle(14, 13, 12, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_5DL_007460[] = {
    gsSPDisplayList(ice_doukutu_room_5DL_006F10),
    gsSPDisplayList(ice_doukutu_room_5DL_007358),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_5Tex_007478[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_5Tex_007478.i8.inc.c"
};

u64 ice_doukutu_room_5Tex_007878[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_5Tex_007878.i8.inc.c"
};

