#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinzou_room_2.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "jyasinzou_scene.h"
#include "jyasinzou_room_0.h"
#include "jyasinzou_room_1.h"
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
#include "jyasinzou_room_20.h"
#include "jyasinzou_room_21.h"
#include "jyasinzou_room_22.h"
#include "jyasinzou_room_23.h"
#include "jyasinzou_room_24.h"
#include "jyasinzou_room_25.h"
#include "jyasinzou_room_26.h"
#include "jyasinzou_room_27.h"
#include "jyasinzou_room_28.h"

SceneCmd jyasinzou_room_2Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinzou_room_2PolygonType2_000130),
    SCENE_CMD_OBJECT_LIST(6, jyasinzou_room_2ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(14, jyasinzou_room_2ActorList_00004C),
    SCENE_CMD_END(),
};

s16 jyasinzou_room_2ObjectList_000040[] = {
    OBJECT_JYA_OBJ,
    OBJECT_JYA_DOOR,
    OBJECT_BOMBIWA,
    OBJECT_RD,
    OBJECT_HAKA,
    OBJECT_DEMO_KEKKAI,
};

ActorEntry jyasinzou_room_2ActorList_00004C[] = {
    { ACTOR_EN_RD,            {   -502,     30,   -734 }, {      0,      0,      0 }, 0x7FFE },
    { ACTOR_EN_RD,            {   -420,     30,  -1333 }, {      0, 0XC000,      0 }, 0x7FFE },
    { ACTOR_EN_RD,            {   -417,     30,  -1141 }, {      0, 0XC000,      0 }, 0x7FFE },
    { ACTOR_BG_HAKA,          {   -586,     30,   -665 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,          {   -411,     30,   -665 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_JYA_KANAAMI,   {   -591,     32,  -1053 }, {      0, 0X8000,      0 }, 0x0021 },
    { ACTOR_OBJ_SWITCH,       {   -412,     30,   -666 }, {      0,      0,      0 }, 0x2100 },
    { ACTOR_OBJ_BOMBIWA,      {   -593,     30,  -1340 }, {      0,      0,      0 }, 0x0028 },
    { ACTOR_BG_GND_DARKMEIRO, {   -587,     80,   -944 }, {      0,      0,      0 }, 0x3601 },
    { ACTOR_OBJ_SWITCH,       {   -594,     70,  -1389 }, {      0, 0X2000,      0 }, 0x3602 },
    { ACTOR_OBJ_BOMBIWA,      {   -786,    119,   -930 }, {      0,      0,      0 }, 0x003C },
    { ACTOR_OBJ_BOMBIWA,      {   -421,    -86,  -1036 }, {      0,      0,      0 }, 0x003D },
    { ACTOR_OBJ_TSUBO,        {   -382,     30,  -1256 }, {      0,      0,      0 }, 0x6803 },
    { ACTOR_OBJ_TSUBO,        {   -381,     30,  -1207 }, {      0,      0,      0 }, 0x660E },
};

u8 jyasinzou_room_2_possiblePadding_00012C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 jyasinzou_room_2PolygonType2_000130 = { 
    2, 5,
    jyasinzou_room_2PolygonDlist2_00013C,
    jyasinzou_room_2PolygonDlist2_00013C + ARRAY_COUNTU(jyasinzou_room_2PolygonDlist2_00013C)
};

PolygonDlist2 jyasinzou_room_2PolygonDlist2_00013C[5] = {
    { {   -551,    150,  -1243 },    328, jyasinzou_room_2DL_0006F0, NULL },
    { {   -551,     30,   -639 },    296, jyasinzou_room_2DL_000C58, NULL },
    { {   -551,    -30,   -759 },    483, jyasinzou_room_2DL_001398, NULL },
    { {   -551,    150,  -1053 },    286, jyasinzou_room_2DL_001D88, NULL },
    { {   -745,    110,  -1388 },    145, jyasinzou_room_2DL_002170, NULL },
};

s32 jyasinzou_room_2_terminatorMaybe_00018C = { 0x01000000 };

u8 jyasinzou_room_2_unaccounted_000190[] = {
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x30, 0x01, 0x03, 0x00, 0x00, 0x03, 0x00, 0x01, 0xC8, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x2D, 0xFD, 0x33, 0x08, 0x78, 0xFA, 0xF6, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xC2, 0x00, 0x08, 0xFD, 0x5C, 0x03, 0x69, 0xFD, 0x9E, 
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x03, 0xF0, 0x00, 0xFD, 0xFD, 0xB1, 0x00, 0x1E, 0xFB, 0xE3, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x30, 0x01, 0x03, 0x00, 0x00, 0x03, 0x00, 0x02, 0x38, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x2D, 0xFD, 0x33, 0x08, 0x78, 0xFA, 0xF6, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xC2, 0x00, 0x08, 0xFD, 0x5C, 0x03, 0x69, 0xFD, 0x9E, 
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x03, 0xF0, 0x00, 0xFD, 0xFD, 0xB1, 0x00, 0x1E, 0xFB, 0xE3, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_2Vtx_000270[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_2Vtx_000270.vtx.inc"
};

Gfx jyasinzou_room_2DL_0006F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_2Vtx_000270[64], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_2Tex_0047B0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_2Vtx_000270, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(3, 7, 8, 0, 9, 3, 8, 0),
    gsSP2Triangles(9, 10, 3, 0, 10, 11, 3, 0),
    gsSP2Triangles(10, 12, 11, 0, 12, 13, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_2Tex_0053B0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_2Vtx_000270[14], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_000270[18], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_2Tex_0053B0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_000270[22], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(4, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_000270[27], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_2Tex_0053B0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_000270[33], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 6, 0, 0),
    gsSP2Triangles(6, 1, 0, 0, 3, 5, 0, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 7, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_2Tex_0033B0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_2Vtx_000270[52], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 7, 0, 4, 3, 7, 0),
    gsSP1Triangle(8, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_2Tex_0047B0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_2Vtx_000270[61], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_2Vtx_000B08[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_2Vtx_000B08.vtx.inc"
};

Gfx jyasinzou_room_2DL_000C58[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_2Vtx_000B08[13], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_2Tex_0047B0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_2Vtx_000B08, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 0, 4, 0),
    gsSP2Triangles(5, 6, 0, 0, 7, 8, 9, 0),
    gsSP2Triangles(6, 10, 7, 0, 6, 7, 0, 0),
    gsSP2Triangles(7, 9, 0, 0, 9, 11, 0, 0),
    gsSP2Triangles(11, 12, 0, 0, 0, 12, 1, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_2Vtx_000D68[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_2Vtx_000D68.vtx.inc"
};

Gfx jyasinzou_room_2DL_001398[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_2Vtx_000D68[91], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(jyasinzou_room_2Tex_0053B0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_2Vtx_000D68, 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 16, 0),
    gsSP2Triangles(12, 16, 13, 0, 17, 18, 12, 0),
    gsSP2Triangles(17, 12, 14, 0, 18, 15, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_000D68[19], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_2Tex_0053B0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_000D68[24], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_2Tex_004BB0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_2Vtx_000D68[36], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_2Tex_0053B0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_2Vtx_000D68[40], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_000D68[52], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_2Tex_0053B0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_000D68[56], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_000D68[60], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(4, 8, 7, 0, 4, 9, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_2Tex_0053B0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_000D68[70], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP1Triangle(3, 0, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_000D68[75], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_2Tex_0053B0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_000D68[79], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_2Tex_004BB0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_2Vtx_000D68[83], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_2Tex_0053B0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_2Vtx_000D68[87], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_2Vtx_001968[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_2Vtx_001968.vtx.inc"
};

Gfx jyasinzou_room_2DL_001D88[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_2Vtx_001968[58], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_2Tex_003BB0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_2Vtx_001968, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_2Tex_0023B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_001968[16], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 17, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_2Tex_003FB0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_001968[36], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 0, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(5, 9, 6, 0, 9, 8, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_2Tex_0023B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_2Vtx_001968[46], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_2Vtx_001F90[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_2Vtx_001F90.vtx.inc"
};

Gfx jyasinzou_room_2DL_002170[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_2Vtx_001F90[22], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(jyasinzou_room_2Tex_0053B0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_2Vtx_001F90, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(1, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_2Tex_0047B0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_2Vtx_001F90[5], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(4, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_2Vtx_001F90[10], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_2_unaccounted_002380[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0x58, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0x98, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0x88, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x21, 0x70, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_2Tex_0023B0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_2Tex_0023B0.rgba16.inc.c"
};

u64 jyasinzou_room_2Tex_0033B0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_2Tex_0033B0.ci8.inc.c"
};

u64 jyasinzou_room_2Tex_003BB0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_2Tex_003BB0.rgba16.inc.c"
};

u64 jyasinzou_room_2Tex_003FB0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_2Tex_003FB0.rgba16.inc.c"
};

u64 jyasinzou_room_2Tex_0047B0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_2Tex_0047B0.ci8.inc.c"
};

u64 jyasinzou_room_2Tex_004BB0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_2Tex_004BB0.ci8.inc.c"
};

u64 jyasinzou_room_2Tex_0053B0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_2Tex_0053B0.ci4.inc.c"
};

