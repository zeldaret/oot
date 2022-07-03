#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinzou_room_20.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "jyasinzou_scene.h"
#include "jyasinzou_room_0.h"
#include "jyasinzou_room_1.h"
#include "jyasinzou_room_2.h"
#include "jyasinzou_room_3.h"
#include "jyasinzou_room_4.h"
#include "jyasinzou_room_5.h"
#include "jyasinzou_room_6.h"
#include "jyasinzou_room_7.h"
#include "jyasinzou_room_8.h"
#include "jyasinzou_room_9.h"
#include "jyasinzou_room_10.h"
#include "jyasinzou_room_11.h"
#include "jyasinzou_room_12.h"
#include "jyasinzou_room_13.h"
#include "jyasinzou_room_14.h"
#include "jyasinzou_room_15.h"
#include "jyasinzou_room_16.h"
#include "jyasinzou_room_17.h"
#include "jyasinzou_room_18.h"
#include "jyasinzou_room_19.h"
#include "jyasinzou_room_21.h"
#include "jyasinzou_room_22.h"
#include "jyasinzou_room_23.h"
#include "jyasinzou_room_24.h"
#include "jyasinzou_room_25.h"
#include "jyasinzou_room_26.h"
#include "jyasinzou_room_27.h"
#include "jyasinzou_room_28.h"

SceneCmd jyasinzou_room_20Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinzou_room_20PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(4, jyasinzou_room_20ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(13, jyasinzou_room_20ActorList_000048),
    SCENE_CMD_END(),
};

s16 jyasinzou_room_20ObjectList_000040[] = {
    OBJECT_JYA_OBJ,
    OBJECT_JYA_DOOR,
    OBJECT_JYA_IRON,
    OBJECT_IK,
};

ActorEntry jyasinzou_room_20ActorList_000048[] = {
    { ACTOR_EN_LIGHT,       {   1541,   1046,   1211 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_LIGHT,       {   1551,   1046,   1740 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_LIGHT,       {   1971,   1046,   1741 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_LIGHT,       {   2167,   1047,   1614 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_LIGHT,       {   2168,   1046,   1335 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_IK,          {   1515,   1003,   1473 }, {      0, 0X4000,      0 }, 0x1A01 },
    { ACTOR_BG_JYA_IRONOBJ, {   1475,   1003,   1474 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_JYA_IRONOBJ, {   1600,   1003,   1354 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {   1600,   1003,   1594 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {   1840,   1003,   1354 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {   1840,   1003,   1594 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {   2080,   1003,   1354 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {   2080,   1003,   1594 }, {      0, 0XC000,      0 }, 0x0000 },
};

u8 jyasinzou_room_20_possiblePadding_000118[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 jyasinzou_room_20PolygonType2_000120 = { 
    2, 9,
    jyasinzou_room_20PolygonDlist2_00012C,
    jyasinzou_room_20PolygonDlist2_00012C + ARRAY_COUNTU(jyasinzou_room_20PolygonDlist2_00012C)
};

PolygonDlist2 jyasinzou_room_20PolygonDlist2_00012C[9] = {
    { {   1960,   1083,   1184 },    100, jyasinzou_room_20DL_000460, NULL },
    { {   1750,   1003,   1464 },    518, jyasinzou_room_20DL_000908, NULL },
    { {   1346,   1120,   1299 },     84, jyasinzou_room_20DL_000CD8, NULL },
    { {   1346,   1120,   1649 },     84, jyasinzou_room_20DL_000E98, NULL },
    { {   1344,   1118,   1404 },    117, jyasinzou_room_20DL_001278, NULL },
    { {   1344,   1118,   1544 },    117, jyasinzou_room_20DL_001738, NULL },
    { {   1337,   1184,   1474 },     60, jyasinzou_room_20DL_001AB8, NULL },
    { {   1853,   1047,   1474 },    428, jyasinzou_room_20DL_0020E0, NULL },
    { {   1760,   1237,   1474 },    556, jyasinzou_room_20DL_002DF8, NULL },
};

s32 jyasinzou_room_20_terminatorMaybe_0001BC = { 0x01000000 };

u8 jyasinzou_room_20_unaccounted_0001C0[] = {
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x20, 0x01, 0x07, 0x00, 0x00, 0x03, 0x00, 0x01, 0xF8, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x07, 0x1C, 0x03, 0xEB, 0x06, 0x3A, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x07, 0x1C, 0x03, 0xEB, 0x05, 0x4A, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x06, 0x2C, 0x03, 0xEB, 0x06, 0x3A, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x06, 0x2C, 0x03, 0xEB, 0x05, 0x4A, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x05, 0x3C, 0x03, 0xEB, 0x06, 0x3A, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x05, 0x3C, 0x03, 0xEB, 0x05, 0x4A, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x04, 0xBF, 0x03, 0xEB, 0x05, 0xC2, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x20, 0x01, 0x07, 0x00, 0x00, 0x03, 0x00, 0x02, 0xA8, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x07, 0x1C, 0x03, 0xEB, 0x06, 0x3A, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x07, 0x1C, 0x03, 0xEB, 0x05, 0x4A, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x06, 0x2C, 0x03, 0xEB, 0x06, 0x3A, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x06, 0x2C, 0x03, 0xEB, 0x05, 0x4A, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x05, 0x3C, 0x03, 0xEB, 0x06, 0x3A, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x05, 0x3C, 0x03, 0xEB, 0x05, 0x4A, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x04, 0xBF, 0x03, 0xEB, 0x05, 0xC2, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_20Vtx_000320[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Vtx_000320.vtx.inc"
};

Gfx jyasinzou_room_20DL_000460[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_20Vtx_000320[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0051B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_20Vtx_000320, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_20Vtx_000558[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Vtx_000558.vtx.inc"
};

Gfx jyasinzou_room_20DL_000908[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_20Vtx_000558[51], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_007DB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_20Vtx_000558, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0041B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_20Vtx_000558[4], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(1, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_007DB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_20Vtx_000558[9], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP1Triangle(7, 8, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0041B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_20Vtx_000558[18], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 7, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0049B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_20Vtx_000558[26], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 3, 0),
    gsSP1Triangle(8, 6, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_007DB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_20Vtx_000558[35], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 3, 7, 6, 0),
    gsSP2Triangles(5, 8, 3, 0, 8, 9, 3, 0),
    gsSP2Triangles(5, 10, 8, 0, 10, 0, 8, 0),
    gsSP2Triangles(10, 1, 0, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 12, 15, 14, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_20Vtx_000BD8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Vtx_000BD8.vtx.inc"
};

Gfx jyasinzou_room_20DL_000CD8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_20Vtx_000BD8[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0069B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_20Vtx_000BD8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_20Vtx_000D98[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Vtx_000D98.vtx.inc"
};

Gfx jyasinzou_room_20DL_000E98[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_20Vtx_000D98[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0069B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_20Vtx_000D98, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_20Vtx_000F58[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Vtx_000F58.vtx.inc"
};

Gfx jyasinzou_room_20DL_001278[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_20Vtx_000F58[42], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0065B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_20Vtx_000F58, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 8, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 9, 13, 12, 0),
    gsSP2Triangles(9, 8, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 15, 18, 10, 0),
    gsSP2Triangles(15, 10, 16, 0, 15, 6, 18, 0),
    gsSP2Triangles(15, 14, 6, 0, 6, 5, 9, 0),
    gsSP2Triangles(6, 9, 11, 0, 5, 8, 9, 0),
    gsSP2Triangles(19, 1, 0, 0, 19, 20, 1, 0),
    gsSP2Triangles(19, 21, 20, 0, 22, 23, 24, 0),
    gsSP2Triangles(23, 25, 24, 0, 22, 21, 23, 0),
    gsSP2Triangles(25, 7, 6, 0, 25, 6, 24, 0),
    gsSP2Triangles(1, 26, 27, 0, 26, 24, 28, 0),
    gsSP2Triangles(26, 28, 27, 0, 28, 29, 27, 0),
    gsSP2Triangles(26, 30, 24, 0, 26, 1, 30, 0),
    gsSP1Triangle(31, 6, 14, 0),
    gsSPVertex(&jyasinzou_room_20Vtx_000F58[32], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 3, 0, 1, 9, 7, 0),
    gsSP1Triangle(1, 7, 2, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_20Vtx_001408[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Vtx_001408.vtx.inc"
};

Gfx jyasinzou_room_20DL_001738[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_20Vtx_001408[43], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0065B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_20Vtx_001408, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 11, 0, 12, 13, 11, 0),
    gsSP2Triangles(13, 8, 11, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 15, 10, 18, 0),
    gsSP2Triangles(15, 18, 16, 0, 18, 5, 16, 0),
    gsSP2Triangles(5, 17, 16, 0, 9, 11, 6, 0),
    gsSP2Triangles(9, 6, 5, 0, 11, 8, 6, 0),
    gsSP2Triangles(3, 2, 19, 0, 2, 20, 19, 0),
    gsSP2Triangles(20, 21, 19, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 25, 23, 0, 23, 21, 24, 0),
    gsSP2Triangles(22, 5, 4, 0, 22, 4, 25, 0),
    gsSP2Triangles(26, 27, 2, 0, 26, 28, 22, 0),
    gsSP2Triangles(26, 22, 27, 0, 26, 29, 28, 0),
    gsSP2Triangles(22, 30, 27, 0, 30, 2, 27, 0),
    gsSP1Triangle(31, 17, 5, 0),
    gsSPVertex(&jyasinzou_room_20Vtx_001408[32], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 3, 0, 0, 8, 9, 0),
    gsSP1Triangle(0, 9, 10, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_20Vtx_0018C8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Vtx_0018C8.vtx.inc"
};

Gfx jyasinzou_room_20DL_001AB8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_20Vtx_0018C8[23], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_005DB8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_20Vtx_0018C8, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 3, 5, 0),
    gsSP2Triangles(3, 2, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 6, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 11, 0),
    gsSP2Triangles(14, 11, 10, 0, 16, 17, 15, 0),
    gsSP2Triangles(16, 15, 14, 0, 2, 1, 17, 0),
    gsSP2Triangles(2, 17, 16, 0, 5, 2, 16, 0),
    gsSP2Triangles(5, 16, 14, 0, 5, 14, 10, 0),
    gsSP2Triangles(5, 10, 13, 0, 18, 19, 8, 0),
    gsSP2Triangles(18, 8, 7, 0, 5, 13, 20, 0),
    gsSP2Triangles(5, 20, 21, 0, 18, 5, 21, 0),
    gsSP2Triangles(20, 13, 12, 0, 20, 12, 22, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_20Vtx_001C00[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Vtx_001C00.vtx.inc"
};

Gfx jyasinzou_room_20DL_0020E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_20Vtx_001C00[70], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0031B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_20Vtx_001C00, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0059B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinzou_room_20Vtx_001C00[6], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0031B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&jyasinzou_room_20Vtx_001C00[14], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0059B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinzou_room_20Vtx_001C00[20], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0031B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&jyasinzou_room_20Vtx_001C00[28], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0059B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinzou_room_20Vtx_001C00[34], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0031B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&jyasinzou_room_20Vtx_001C00[42], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0059B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinzou_room_20Vtx_001C00[48], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0031B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&jyasinzou_room_20Vtx_001C00[56], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP1Triangle(2, 1, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0059B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinzou_room_20Vtx_001C00[62], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_20Vtx_002508[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Vtx_002508.vtx.inc"
};

Gfx jyasinzou_room_20DL_002DF8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_20Vtx_002508[135], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0051B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_20Vtx_002508, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 4, 6, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 11, 12, 10, 0),
    gsSP2Triangles(11, 13, 12, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 25, 23, 0, 25, 26, 23, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&jyasinzou_room_20Vtx_002508[30], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 2, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(7, 0, 6, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0079B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_20Vtx_002508[46], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 9, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(22, 26, 27, 0, 22, 27, 23, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSP2Triangles(28, 25, 24, 0, 28, 24, 29, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0051B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_20Vtx_002508[78], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0079B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_20Vtx_002508[96], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_20Tex_0051B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_20Vtx_002508[104], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 0, 5, 0, 4, 3, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(9, 10, 7, 0, 10, 11, 7, 0),
    gsSP2Triangles(8, 12, 6, 0, 12, 13, 6, 0),
    gsSP2Triangles(12, 14, 13, 0, 12, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(16, 20, 19, 0, 17, 21, 18, 0),
    gsSP2Triangles(17, 22, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 23, 27, 24, 0),
    gsSP2Triangles(27, 28, 24, 0, 27, 29, 28, 0),
    gsSP1Triangle(27, 30, 29, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_20_unaccounted_003168[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x09, 0x08, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0xD8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0x98, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0x78, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x38, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0xB8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x20, 0xE0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2D, 0xF8, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_20Tex_0031B8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Tex_0031B8.rgba16.inc.c"
};

u64 jyasinzou_room_20Tex_0041B8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Tex_0041B8.ci8.inc.c"
};

u64 jyasinzou_room_20Tex_0049B8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Tex_0049B8.ci8.inc.c"
};

u64 jyasinzou_room_20Tex_0051B8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Tex_0051B8.ci8.inc.c"
};

u64 jyasinzou_room_20Tex_0059B8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Tex_0059B8.rgba16.inc.c"
};

u64 jyasinzou_room_20Tex_005DB8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Tex_005DB8.ci8.inc.c"
};

u64 jyasinzou_room_20Tex_0065B8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Tex_0065B8.ci8.inc.c"
};

u64 jyasinzou_room_20Tex_0069B8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Tex_0069B8.rgba16.inc.c"
};

u64 jyasinzou_room_20Tex_0079B8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Tex_0079B8.ci8.inc.c"
};

u64 jyasinzou_room_20Tex_007DB8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_20Tex_007DB8.ci8.inc.c"
};

