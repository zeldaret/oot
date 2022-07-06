#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "testroom_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "testroom_scene.h"
#include "testroom_room_0.h"
#include "testroom_room_2.h"
#include "testroom_room_3.h"
#include "testroom_room_4.h"

SceneCmd testroom_room_1Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(0, 0, 255),
    SCENE_CMD_MESH(&testroom_room_1PolygonType0_0001A0),
    SCENE_CMD_OBJECT_LIST(11, testroom_room_1ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(20, testroom_room_1ActorList_000058),
    SCENE_CMD_END(),
};

s16 testroom_room_1ObjectList_000040[] = {
    OBJECT_BOX,
    OBJECT_YUKABYUN,
    OBJECT_LIGHTBOX,
    OBJECT_TRAP,
    OBJECT_VM,
    OBJECT_BW,
    OBJECT_BB,
    OBJECT_VALI,
    OBJECT_BL,
    OBJECT_EI,
    OBJECT_GI_KEY,
};

ActorEntry testroom_room_1ActorList_000058[] = {
    { ACTOR_EN_BOX,    {   1058,      0,   -811 }, {      0, 0X4000,      0 }, 0x0031 },
    { ACTOR_EN_BOX,    {    834,      0,   -808 }, {      0, 0X4000,      0 }, 0x0050 },
    { ACTOR_EN_BOX,    {   1491,      0,   -894 }, {      0, 0X4000,      0 }, 0x0073 },
    { ACTOR_EN_BOX,    {    598,      0,   -808 }, {      0, 0X4000,      0 }, 0x00EF },
    { ACTOR_EN_BOX,    {   1885,      0,   -885 }, {      0, 0X4000,      0 }, 0x017A },
    { ACTOR_EN_BOX,    {   1489,      0,  -1074 }, {      0, 0X4000,      0 }, 0x0192 },
    { ACTOR_EN_BOX,    {   1482,      0,   -517 }, {      0, 0X4000,      0 }, 0x01D4 },
    { ACTOR_EN_BOX,    {   1684,      0,   -684 }, {      0, 0X4000,      0 }, 0x02D7 },
    { ACTOR_EN_BOX,    {   1894,      0,   -719 }, {      0, 0X4000,      0 }, 0x04FB },
    { ACTOR_EN_BOX,    {   1894,      0,   -500 }, {      0, 0X4000,      0 }, 0x051C },
    { ACTOR_EN_BOX,    {   1675,      0,  -1069 }, {      0, 0X4000,      0 }, 0x0555 },
    { ACTOR_EN_BOX,    {   1684,      0,   -885 }, {      0, 0X4000,      0 }, 0x0596 },
    { ACTOR_EN_BOX,    {   1692,      0,   -535 }, {      0, 0X4000,      0 }, 0x05B8 },
    { ACTOR_EN_BOX,    {   1885,      0,  -1078 }, {      0, 0X4000,      0 }, 0x0739 },
    { ACTOR_EN_ITEM00, {    712,      0,   -803 }, {      0,      0,      0 }, 0x0911 },
    { ACTOR_EN_ITEM00, {    953,      0,   -808 }, {      0,      0,      0 }, 0x0A00 },
    { ACTOR_EN_ITEM00, {   1390,      0,   -990 }, {      0,      0,      0 }, 0x0B01 },
    { ACTOR_EN_ITEM00, {   1387,      0,   -610 }, {      0,      0,      0 }, 0x0C02 },
    { ACTOR_EN_ITEM00, {   1577,      0,   -979 }, {      0,      0,      0 }, 0x0D07 },
    { ACTOR_EN_KUSA,   {   1580,      0,   -608 }, {      0,      0,      0 }, 0xFF01 },
};

u8 testroom_room_1_possiblePadding_000198[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 testroom_room_1PolygonType0_0001A0 = { 
    0, 1,
    testroom_room_1PolygonDlist_0001AC,
    testroom_room_1PolygonDlist_0001AC + ARRAY_COUNTU(testroom_room_1PolygonDlist_0001AC)
};

PolygonDlist testroom_room_1PolygonDlist_0001AC[1] = {
    { testroom_room_1DL_000970, NULL },
};

s32 testroom_room_1_terminatorMaybe_0001B4 = { 0x01000000 };

u8 testroom_room_1_possiblePadding_0001B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx testroom_room_1Vtx_0001C0[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_1Vtx_0001C0.vtx.inc"
};

Gfx testroom_room_1DL_000970[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(testroom_sceneTex_002200, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(testroom_room_1Vtx_0001C0, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_room_1Tex_000BE8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_1Vtx_0001C0[12], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&testroom_room_1Vtx_0001C0[44], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(7, 12, 13, 0, 7, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 14, 0),
    gsSP2Triangles(18, 19, 8, 0, 18, 8, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_room_1Tex_0013E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_1Vtx_0001C0[68], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_room_1Tex_001BE8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_1Vtx_0001C0[73], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&testroom_room_1Vtx_0001C0[104], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 7, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSPEndDisplayList(),
};

u64 testroom_room_1Tex_000BE8[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_1Tex_000BE8.rgba16.inc.c"
};

u64 testroom_room_1Tex_0013E8[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_1Tex_0013E8.rgba16.inc.c"
};

u64 testroom_room_1Tex_001BE8[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_1Tex_001BE8.rgba16.inc.c"
};

