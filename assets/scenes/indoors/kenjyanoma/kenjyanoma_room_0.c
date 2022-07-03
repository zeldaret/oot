#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "kenjyanoma_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "kenjyanoma_scene.h"

SceneCmd kenjyanoma_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(kenjyanoma_room_0AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&kenjyanoma_room_0PolygonType0_0000F0),
    SCENE_CMD_OBJECT_LIST(8, kenjyanoma_room_0ObjectList_000060),
    SCENE_CMD_ACTOR_LIST(8, kenjyanoma_room_0ActorList_000070),
    SCENE_CMD_END(),
};

SceneCmd* kenjyanoma_room_0AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    kenjyanoma_room_0Set_000110,
    kenjyanoma_room_0Set_000180,
    kenjyanoma_room_0Set_000230,
};

s16 kenjyanoma_room_0ObjectList_000060[] = {
    OBJECT_SA,
    OBJECT_IM,
    OBJECT_DU,
    OBJECT_RU2,
    OBJECT_NB,
    OBJECT_GI_MEDAL,
    OBJECT_WARP1,
    OBJECT_EFC_FLASH,
};

ActorEntry kenjyanoma_room_0ActorList_000070[] = {
    { ACTOR_EN_RU2,         {    192,      6,      1 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_DOOR_WARP1,     {      0,      6,      2 }, {      0,      0,      0 }, 0xFFFE },
    { ACTOR_DEMO_IM,        {    -95,      6,    170 }, {      0, 0X6AAB,      0 }, 0x0000 },
    { ACTOR_DEMO_DU,        {     93,      6,   -161 }, {      0, 0XEAAB,      0 }, 0x0000 },
    { ACTOR_DEMO_EFFECT,    {     32,      2,     11 }, {      0,      0,      0 }, 0x0012 },
    { ACTOR_EN_NB,          {     94,      6,    165 }, {      0, 0X9555,      0 }, 0x0000 },
    { ACTOR_DEMO_SA,        {    -97,      6,   -168 }, {      0, 0X1555,      0 }, 0x0000 },
    { ACTOR_EN_RIVER_SOUND, {     10,      6,     -6 }, {      0,      0,      0 }, 0x0010 },
};

PolygonType0 kenjyanoma_room_0PolygonType0_0000F0 = { 
    0, 1,
    kenjyanoma_room_0PolygonDlist_0000FC,
    kenjyanoma_room_0PolygonDlist_0000FC + ARRAY_COUNTU(kenjyanoma_room_0PolygonDlist_0000FC)
};

PolygonDlist kenjyanoma_room_0PolygonDlist_0000FC[1] = {
    { kenjyanoma_room_0DL_001608, kenjyanoma_room_0DL_010CD8 },
};

s32 kenjyanoma_room_0_terminatorMaybe_000104 = { 0x01000000 };

u8 kenjyanoma_room_0_possiblePadding_000108[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd kenjyanoma_room_0Set_000110[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&kenjyanoma_room_0PolygonType0_0000F0),
    SCENE_CMD_OBJECT_LIST(7, kenjyanoma_room_0ObjectList_000150),
    SCENE_CMD_ACTOR_LIST(2, kenjyanoma_room_0ActorList_000160),
    SCENE_CMD_END(),
};

s16 kenjyanoma_room_0ObjectList_000150[] = {
    OBJECT_OE3,
    OBJECT_DU,
    OBJECT_RL,
    OBJECT_GI_MEDAL,
    OBJECT_OA2,
    OBJECT_O_ANIME,
    OBJECT_OE_ANIME,
};

ActorEntry kenjyanoma_room_0ActorList_000160[] = {
    { ACTOR_EN_RL,          {   -191,      6,      2 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_EN_RIVER_SOUND, {     18,      6,     -8 }, {      0,      0,      0 }, 0x0010 },
};

SceneCmd kenjyanoma_room_0Set_000180[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&kenjyanoma_room_0PolygonType0_0000F0),
    SCENE_CMD_OBJECT_LIST(7, kenjyanoma_room_0ObjectList_0001C0),
    SCENE_CMD_ACTOR_LIST(6, kenjyanoma_room_0ActorList_0001D0),
    SCENE_CMD_END(),
};

s16 kenjyanoma_room_0ObjectList_0001C0[] = {
    OBJECT_TRIFORCE_SPOT,
    OBJECT_SA,
    OBJECT_IM,
    OBJECT_DU,
    OBJECT_RL,
    OBJECT_NB,
    OBJECT_EFC_FLASH,
};

ActorEntry kenjyanoma_room_0ActorList_0001D0[] = {
    { ACTOR_DEMO_SA,        {    -97,      6,   -168 }, {      0, 0X1555,      0 }, 0x0000 },
    { ACTOR_DEMO_DU,        {     93,      6,   -161 }, {      0, 0XEAAB,      0 }, 0x0000 },
    { ACTOR_EN_RL,          {   -195,      6,      1 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_EN_RU2,         {    192,      6,      1 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_DEMO_EFFECT,    {     32,      2,     11 }, {      0,      0,      0 }, 0x0012 },
    { ACTOR_EN_RIVER_SOUND, {     19,      6,     -4 }, {      0,      0,      0 }, 0x0010 },
};

SceneCmd kenjyanoma_room_0Set_000230[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&kenjyanoma_room_0PolygonType0_0000F0),
    SCENE_CMD_OBJECT_LIST(9, kenjyanoma_room_0ObjectList_000270),
    SCENE_CMD_ACTOR_LIST(8, kenjyanoma_room_0ActorList_000284),
    SCENE_CMD_END(),
};

s16 kenjyanoma_room_0ObjectList_000270[] = {
    OBJECT_SA,
    OBJECT_RU2,
    OBJECT_IM,
    OBJECT_DU,
    OBJECT_RL,
    OBJECT_NB,
    OBJECT_WARP1,
    OBJECT_EFC_FLASH,
    OBJECT_DEMO_6K,
};

ActorEntry kenjyanoma_room_0ActorList_000284[] = {
    { ACTOR_DEMO_IM,        {    -95,      6,    170 }, {      0, 0X6AAB,      0 }, 0x0002 },
    { ACTOR_DEMO_SA,        {    -98,      6,   -168 }, {      0, 0X1555,      0 }, 0x0002 },
    { ACTOR_DEMO_DU,        {     93,      6,   -161 }, {      0, 0XEAAB,      0 }, 0x0002 },
    { ACTOR_EN_NB,          {     94,      6,    165 }, {      0, 0X9555,      0 }, 0x0002 },
    { ACTOR_EN_RL,          {   -195,      6,      1 }, {      0, 0X4000,      0 }, 0x0002 },
    { ACTOR_EN_RU2,         {    192,      6,      1 }, {      0, 0XC000,      0 }, 0x0002 },
    { ACTOR_DEMO_6K,        {     -4,      6,      2 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_RIVER_SOUND, {     18,      6,     -6 }, {      0,      0,      0 }, 0x0011 },
};

u8 kenjyanoma_room_0_possiblePadding_000304[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx kenjyanoma_room_0Vtx_000310[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Vtx_000310.vtx.inc"
};

Gfx kenjyanoma_room_0DL_001020[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[201], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_00D618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(kenjyanoma_room_0Vtx_000310, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[60], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[90], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[120], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[126], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_00C618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[143], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_00B618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[148], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_00A618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[153], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_009618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[157], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_008618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[161], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_007618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[166], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_006618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[171], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_005618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[176], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_004618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[181], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_003618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[186], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_002618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[191], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_001618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kenjyanoma_room_0Vtx_000310[196], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsSPEndDisplayList(),
};

Gfx kenjyanoma_room_0DL_001608[] = {
    gsSPDisplayList(kenjyanoma_room_0DL_001020),
    gsSPEndDisplayList(),
};

u64 kenjyanoma_room_0Tex_001618[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_001618.rgba16.inc.c"
};

u64 kenjyanoma_room_0Tex_002618[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_002618.rgba16.inc.c"
};

u64 kenjyanoma_room_0Tex_003618[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_003618.rgba16.inc.c"
};

u64 kenjyanoma_room_0Tex_004618[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_004618.rgba16.inc.c"
};

u64 kenjyanoma_room_0Tex_005618[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_005618.rgba16.inc.c"
};

u64 kenjyanoma_room_0Tex_006618[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_006618.rgba16.inc.c"
};

u64 kenjyanoma_room_0Tex_007618[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_007618.rgba16.inc.c"
};

u64 kenjyanoma_room_0Tex_008618[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_008618.rgba16.inc.c"
};

u64 kenjyanoma_room_0Tex_009618[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_009618.rgba16.inc.c"
};

u64 kenjyanoma_room_0Tex_00A618[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_00A618.rgba16.inc.c"
};

u64 kenjyanoma_room_0Tex_00B618[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_00B618.rgba16.inc.c"
};

u64 kenjyanoma_room_0Tex_00C618[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_00C618.rgba16.inc.c"
};

u64 kenjyanoma_room_0Tex_00D618[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_00D618.rgba16.inc.c"
};

u8 kenjyanoma_room_0_possiblePadding_00DE18[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx kenjyanoma_room_0Vtx_00DE20[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Vtx_00DE20.vtx.inc"
};

Gfx kenjyanoma_room_0DL_0103E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[596], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_010CE8, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 153),
    gsSPVertex(kenjyanoma_room_0Vtx_00DE20, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[160], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_012D08, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[168], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[200], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[232], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[264], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[296], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[328], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_012508, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, 14, 15),
    gsDPLoadMultiBlock(kenjyanoma_room_0Tex_0114E8, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 6, 14, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       COMBINED, 0, PRIMITIVE, 0),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[360], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[392], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsSPTexture(0x1770, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_011CE8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 2, 2, 1, 1),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 215, 172, 0, 204),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[408], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[412], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[430], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 15, 63, 254, 204),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[442], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_011D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetPrimColor(0, 0, 254, 15, 15, 204),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[466], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[470], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_011CE8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 2, 2, 1, 1),
    gsDPSetPrimColor(0, 0, 15, 254, 15, 204),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[490], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[494], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 215, 215, 0, 204),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[514], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 107, 0, 134, 204),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[538], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 188, 113, 0, 204),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[562], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 178),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[586], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(2, 5, 6, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kenjyanoma_room_0Tex_011D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPVertex(&kenjyanoma_room_0Vtx_00DE20[593], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx kenjyanoma_room_0DL_010CD8[] = {
    gsSPDisplayList(kenjyanoma_room_0DL_0103E0),
    gsSPEndDisplayList(),
};

u64 kenjyanoma_room_0Tex_010CE8[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_010CE8.ia16.inc.c"
};

u64 kenjyanoma_room_0Tex_0114E8[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_0114E8.i8.inc.c"
};

u64 kenjyanoma_room_0Tex_011CE8[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_011CE8.rgba16.inc.c"
};

u64 kenjyanoma_room_0Tex_011D08[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_011D08.rgba16.inc.c"
};

u64 kenjyanoma_room_0Tex_012508[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_012508.i8.inc.c"
};

u64 kenjyanoma_room_0Tex_012D08[] = {
#include "assets/scenes/indoors/kenjyanoma/kenjyanoma_room_0Tex_012D08.i8.inc.c"
};

