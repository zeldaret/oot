#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "testroom_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "testroom_scene.h"
#include "testroom_room_1.h"
#include "testroom_room_2.h"
#include "testroom_room_3.h"
#include "testroom_room_4.h"

SceneCmd testroom_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&testroom_room_0PolygonType0_0001E0),
    SCENE_CMD_OBJECT_LIST(13, testroom_room_0ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(24, testroom_room_0ActorList_00005C),
    SCENE_CMD_END(),
};

s16 testroom_room_0ObjectList_000040[] = {
    OBJECT_BOX,
    OBJECT_YUKABYUN,
    OBJECT_KUSA,
    OBJECT_TRAP,
    OBJECT_VM,
    OBJECT_GI_KEY,
    OBJECT_GI_ARROWCASE,
    OBJECT_GI_BOTTLE,
    OBJECT_GI_SCALE,
    OBJECT_GI_SHIELD_2,
    OBJECT_GI_OCARINA,
    OBJECT_GI_BOTTLE_LETTER,
    OBJECT_GI_OCARINA_0,
};

ActorEntry testroom_room_0ActorList_00005C[] = {
    { ACTOR_EN_ITEM00,     {    249,      0,   -639 }, {      0,      0,      0 }, 0x0806 },
    { ACTOR_ITEM_ETCETERA, {     64,      0,   -816 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_ITEM_ETCETERA, {    245,      0,   -812 }, {      0,      0,      0 }, 0x0005 },
    { ACTOR_ITEM_ETCETERA, {    249,      0,   -993 }, {      0,      0,      0 }, 0x0004 },
    { ACTOR_ITEM_ETCETERA, {   -150,      0,   -820 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_ITEM_OCARINA,  {   -154,      0,   -985 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_ITEM_SHIELD,   {     60,      0,   -985 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_ITEM_ETCETERA, {   -146,      0,   -627 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_ITEM_ETCETERA, {     68,      0,   -635 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_BOX,        {    -36,      0,   -550 }, {      0, 0X4000,      0 }, 0x008D },
    { ACTOR_EN_BOX,        {    -47,      0,  -1071 }, {      0, 0X4000,      0 }, 0x00A2 },
    { ACTOR_EN_BOX,        {    -37,      0,   -727 }, {      0, 0X4000,      0 }, 0x00C6 },
    { ACTOR_EN_BOX,        {    158,      0,  -1073 }, {      0, 0X4000,      0 }, 0x0103 },
    { ACTOR_EN_BOX,        {    167,      0,   -556 }, {      0, 0X4000,      0 }, 0x014C },
    { ACTOR_EN_BOX,        {    161,      0,   -908 }, {      0, 0X4000,      0 }, 0x01A5 },
    { ACTOR_EN_BOX,        {    332,      0,  -1073 }, {      0, 0X4000,      0 }, 0x0568 },
    { ACTOR_EN_BOX,        {    164,      0,   -730 }, {      0, 0X4000,      0 }, 0x05C7 },
    { ACTOR_EN_BOX,        {    354,      0,   -558 }, {      0, 0X4000,      0 }, 0x05EB },
    { ACTOR_EN_BOX,        {    -41,      0,   -902 }, {      0, 0X4000,      0 }, 0x0644 },
    { ACTOR_EN_BOX,        {    338,      0,   -909 }, {      0, 0X4000,      0 }, 0x06A9 },
    { ACTOR_EN_BOX,        {    343,      0,   -734 }, {      0, 0X4000,      0 }, 0x06CA },
    { ACTOR_EN_BOX,        {   -251,      0,  -1070 }, {      0, 0X4000,      0 }, 0x07C0 },
    { ACTOR_EN_BOX,        {   -251,      0,   -724 }, {      0, 0X4000,      0 }, 0x0801 },
    { ACTOR_EN_BOX,        {   -251,      0,   -550 }, {      0, 0X4000,      0 }, 0x082E },
};

u8 testroom_room_0_possiblePadding_0001DC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 testroom_room_0PolygonType0_0001E0 = { 
    0, 1,
    testroom_room_0PolygonDlist_0001EC,
    testroom_room_0PolygonDlist_0001EC + ARRAY_COUNTU(testroom_room_0PolygonDlist_0001EC)
};

PolygonDlist testroom_room_0PolygonDlist_0001EC[1] = {
    { testroom_room_0DL_000A50, NULL },
};

s32 testroom_room_0_terminatorMaybe_0001F4 = { 0x01000000 };

u8 testroom_room_0_possiblePadding_0001F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx testroom_room_0Vtx_000200[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_0Vtx_000200.vtx.inc"
};

Gfx testroom_room_0DL_000A50[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(testroom_room_0Tex_000E00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(testroom_room_0Vtx_000200, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_sceneTex_002200, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_0Vtx_000200[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_sceneTex_002A00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_0Vtx_000200[12], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_room_0Tex_001600, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_0Vtx_000200[24], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 5, 0, 4, 2, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_room_0Tex_002600, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_0Vtx_000200[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(15, 28, 29, 0, 15, 29, 30, 0),
    gsSPVertex(&testroom_room_0Vtx_000200[61], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_room_0Tex_002E00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_0Vtx_000200[69], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 9, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_room_0Tex_003E00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_0Vtx_000200[84], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 3, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 11, 16, 0, 17, 16, 18, 0),
    gsSP2Triangles(12, 11, 17, 0, 18, 16, 15, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&testroom_room_0Vtx_000200[115], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 4, 0, 8, 4, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_sceneTex_003A00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_0Vtx_000200[129], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 testroom_room_0Tex_000E00[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_0Tex_000E00.rgba16.inc.c"
};

u64 testroom_room_0Tex_001600[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_0Tex_001600.rgba16.inc.c"
};

u64 testroom_room_0Tex_002600[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_0Tex_002600.rgba16.inc.c"
};

u64 testroom_room_0Tex_002E00[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_0Tex_002E00.rgba16.inc.c"
};

u64 testroom_room_0Tex_003E00[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_0Tex_003E00.rgba16.inc.c"
};

