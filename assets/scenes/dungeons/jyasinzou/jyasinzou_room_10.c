#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinzou_room_10.h"
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
#include "jyasinzou_room_11.h"
#include "jyasinzou_room_12.h"
#include "jyasinzou_room_13.h"
#include "jyasinzou_room_14.h"
#include "jyasinzou_room_15.h"
#include "jyasinzou_room_16.h"
#include "jyasinzou_room_17.h"
#include "jyasinzou_room_18.h"
#include "jyasinzou_room_19.h"
#include "jyasinzou_room_20.h"
#include "jyasinzou_room_21.h"
#include "jyasinzou_room_22.h"
#include "jyasinzou_room_23.h"
#include "jyasinzou_room_24.h"
#include "jyasinzou_room_25.h"
#include "jyasinzou_room_26.h"
#include "jyasinzou_room_27.h"
#include "jyasinzou_room_28.h"

SceneCmd jyasinzou_room_10Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinzou_room_10PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(4, jyasinzou_room_10ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(13, jyasinzou_room_10ActorList_000048),
    SCENE_CMD_END(),
};

s16 jyasinzou_room_10ObjectList_000040[] = {
    OBJECT_JYA_OBJ,
    OBJECT_JYA_DOOR,
    OBJECT_JYA_IRON,
    OBJECT_IK,
};

ActorEntry jyasinzou_room_10ActorList_000048[] = {
    { ACTOR_EN_LIGHT,       {  -1906,   1047,   1335 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_LIGHT,       {  -1906,   1047,   1615 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_LIGHT,       {  -1710,   1042,   1742 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_LIGHT,       {  -1290,   1041,   1742 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_LIGHT,       {  -1280,   1041,   1210 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_IK,          {  -1250,   1003,   1476 }, {      0, 0XC000,      0 }, 0x1901 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1215,   1003,   1474 }, {      0, 0X8000,      0 }, 0x0001 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1820,   1003,   1354 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1820,   1003,   1594 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1580,   1003,   1354 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1580,   1003,   1594 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1340,   1003,   1354 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1340,   1003,   1594 }, {      0, 0X4000,      0 }, 0x0000 },
};

u8 jyasinzou_room_10_possiblePadding_000118[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 jyasinzou_room_10PolygonType2_000120 = { 
    2, 9,
    jyasinzou_room_10PolygonDlist2_00012C,
    jyasinzou_room_10PolygonDlist2_00012C + ARRAY_COUNTU(jyasinzou_room_10PolygonDlist2_00012C)
};

PolygonDlist2 jyasinzou_room_10PolygonDlist2_00012C[9] = {
    { {  -1700,   1083,   1184 },    100, jyasinzou_room_10DL_000460, NULL },
    { {  -1490,   1003,   1464 },    518, jyasinzou_room_10DL_0008F8, NULL },
    { {  -1500,   1237,   1474 },    556, jyasinzou_room_10DL_002DE0, NULL },
    { {  -1086,   1120,   1299 },     84, jyasinzou_room_10DL_000CC0, NULL },
    { {  -1085,   1118,   1404 },    118, jyasinzou_room_10DL_001270, NULL },
    { {  -1078,   1184,   1474 },     60, jyasinzou_room_10DL_001AA0, NULL },
    { {  -1086,   1120,   1649 },     84, jyasinzou_room_10DL_000E80, NULL },
    { {  -1085,   1118,   1544 },    118, jyasinzou_room_10DL_001720, NULL },
    { {  -1593,   1047,   1474 },    428, jyasinzou_room_10DL_0020C8, NULL },
};

s32 jyasinzou_room_10_terminatorMaybe_0001BC = { 0x01000000 };

u8 jyasinzou_room_10_unaccounted_0001C0[] = {
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x20, 0x01, 0x07, 0x00, 0x00, 0x03, 0x00, 0x01, 0xF8, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0xF8, 0xE4, 0x03, 0xEB, 0x06, 0x3A, 
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0xF8, 0xE4, 0x03, 0xEB, 0x05, 0x4A, 
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0xF9, 0xD4, 0x03, 0xEB, 0x06, 0x3A, 
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0xF9, 0xD4, 0x03, 0xEB, 0x05, 0x4A, 
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0xFA, 0xC4, 0x03, 0xEB, 0x06, 0x3A, 
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0xFA, 0xC4, 0x03, 0xEB, 0x05, 0x4A, 
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0xFB, 0x41, 0x03, 0xEB, 0x05, 0xC2, 
    0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x20, 0x01, 0x07, 0x00, 0x00, 0x03, 0x00, 0x02, 0xA8, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0xF8, 0xE4, 0x03, 0xEB, 0x06, 0x3A, 
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0xF8, 0xE4, 0x03, 0xEB, 0x05, 0x4A, 
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0xF9, 0xD4, 0x03, 0xEB, 0x06, 0x3A, 
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0xF9, 0xD4, 0x03, 0xEB, 0x05, 0x4A, 
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0xFA, 0xC4, 0x03, 0xEB, 0x06, 0x3A, 
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0xFA, 0xC4, 0x03, 0xEB, 0x05, 0x4A, 
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0xFB, 0x41, 0x03, 0xEB, 0x05, 0xC2, 
    0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_10Vtx_000320[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Vtx_000320.vtx.inc"
};

Gfx jyasinzou_room_10DL_000460[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_10Vtx_000320[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0051A0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_10Vtx_000320, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_10Vtx_000558[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Vtx_000558.vtx.inc"
};

Gfx jyasinzou_room_10DL_0008F8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_10Vtx_000558[50], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_007DA0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_10Vtx_000558, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0041A0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_10Vtx_000558[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_007DA0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_10Vtx_000558[8], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP1Triangle(5, 8, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0041A0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_10Vtx_000558[17], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0049A0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_10Vtx_000558[25], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 5, 7, 8, 0),
    gsSP1Triangle(5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_007DA0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_10Vtx_000558[34], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 3, 0),
    gsSP2Triangles(9, 10, 3, 0, 9, 2, 10, 0),
    gsSP2Triangles(2, 1, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 14, 15, 12, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_10Vtx_000BC0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Vtx_000BC0.vtx.inc"
};

Gfx jyasinzou_room_10DL_000CC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_10Vtx_000BC0[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0069A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_10Vtx_000BC0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_10Vtx_000D80[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Vtx_000D80.vtx.inc"
};

Gfx jyasinzou_room_10DL_000E80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_10Vtx_000D80[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0069A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_10Vtx_000D80, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_10Vtx_000F40[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Vtx_000F40.vtx.inc"
};

Gfx jyasinzou_room_10DL_001270[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_10Vtx_000F40[43], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0065A0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_10Vtx_000F40, 32, 0),
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
    gsSPVertex(&jyasinzou_room_10Vtx_000F40[32], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 3, 0, 0, 8, 9, 0),
    gsSP1Triangle(0, 9, 10, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_10Vtx_001400[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Vtx_001400.vtx.inc"
};

Gfx jyasinzou_room_10DL_001720[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_10Vtx_001400[42], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0065A0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_10Vtx_001400, 32, 0),
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
    gsSPVertex(&jyasinzou_room_10Vtx_001400[32], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 3, 0, 1, 9, 7, 0),
    gsSP1Triangle(1, 7, 2, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_10Vtx_0018B0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Vtx_0018B0.vtx.inc"
};

Gfx jyasinzou_room_10DL_001AA0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_10Vtx_0018B0[23], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_005DA0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_10Vtx_0018B0, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 0, 6, 0),
    gsSP2Triangles(5, 1, 0, 0, 4, 7, 8, 0),
    gsSP2Triangles(4, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 13, 12, 14, 0),
    gsSP2Triangles(13, 14, 15, 0, 15, 14, 16, 0),
    gsSP2Triangles(15, 16, 17, 0, 17, 16, 2, 0),
    gsSP2Triangles(17, 2, 1, 0, 10, 13, 15, 0),
    gsSP2Triangles(10, 15, 17, 0, 10, 17, 1, 0),
    gsSP2Triangles(10, 1, 5, 0, 9, 8, 18, 0),
    gsSP2Triangles(9, 18, 19, 0, 20, 10, 5, 0),
    gsSP2Triangles(21, 20, 5, 0, 21, 5, 19, 0),
    gsSP2Triangles(22, 11, 10, 0, 22, 10, 20, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_10Vtx_001BE8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Vtx_001BE8.vtx.inc"
};

Gfx jyasinzou_room_10DL_0020C8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_10Vtx_001BE8[70], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0031A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_10Vtx_001BE8, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP1Triangle(2, 1, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0059A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinzou_room_10Vtx_001BE8[6], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0031A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&jyasinzou_room_10Vtx_001BE8[14], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP1Triangle(2, 1, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0059A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinzou_room_10Vtx_001BE8[20], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0031A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&jyasinzou_room_10Vtx_001BE8[28], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP1Triangle(2, 1, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0059A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinzou_room_10Vtx_001BE8[34], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0031A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&jyasinzou_room_10Vtx_001BE8[42], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP1Triangle(2, 1, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0059A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinzou_room_10Vtx_001BE8[48], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0031A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&jyasinzou_room_10Vtx_001BE8[56], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0059A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinzou_room_10Vtx_001BE8[62], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_10Vtx_0024F0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Vtx_0024F0.vtx.inc"
};

Gfx jyasinzou_room_10DL_002DE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_10Vtx_0024F0[135], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0051A0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_10Vtx_0024F0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 6, 0),
    gsSP2Triangles(7, 5, 6, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 11, 9, 0, 8, 12, 11, 0),
    gsSP2Triangles(12, 13, 11, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(23, 25, 24, 0, 23, 26, 25, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&jyasinzou_room_10Vtx_0024F0[30], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 0, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(6, 5, 2, 0, 7, 6, 8, 0),
    gsSP2Triangles(6, 2, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0079A0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_10Vtx_0024F0[46], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(24, 26, 27, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSP2Triangles(30, 23, 22, 0, 30, 22, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0051A0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_10Vtx_0024F0[78], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0079A0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_10Vtx_0024F0[96], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_10Tex_0051A0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_10Vtx_0024F0[104], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 2, 5, 0, 2, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(7, 10, 9, 0, 7, 11, 10, 0),
    gsSP2Triangles(8, 12, 6, 0, 8, 13, 12, 0),
    gsSP2Triangles(13, 14, 12, 0, 14, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(19, 20, 18, 0, 16, 21, 17, 0),
    gsSP2Triangles(21, 22, 17, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(25, 28, 27, 0, 28, 29, 27, 0),
    gsSP1Triangle(29, 30, 27, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_10_unaccounted_003150[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x08, 0xF8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0x80, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x20, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0xA0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x20, 0xC8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2D, 0xE0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_10Tex_0031A0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Tex_0031A0.rgba16.inc.c"
};

u64 jyasinzou_room_10Tex_0041A0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Tex_0041A0.ci8.inc.c"
};

u64 jyasinzou_room_10Tex_0049A0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Tex_0049A0.ci8.inc.c"
};

u64 jyasinzou_room_10Tex_0051A0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Tex_0051A0.ci8.inc.c"
};

u64 jyasinzou_room_10Tex_0059A0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Tex_0059A0.rgba16.inc.c"
};

u64 jyasinzou_room_10Tex_005DA0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Tex_005DA0.ci8.inc.c"
};

u64 jyasinzou_room_10Tex_0065A0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Tex_0065A0.ci8.inc.c"
};

u64 jyasinzou_room_10Tex_0069A0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Tex_0069A0.rgba16.inc.c"
};

u64 jyasinzou_room_10Tex_0079A0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Tex_0079A0.ci8.inc.c"
};

u64 jyasinzou_room_10Tex_007DA0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_10Tex_007DA0.ci8.inc.c"
};

