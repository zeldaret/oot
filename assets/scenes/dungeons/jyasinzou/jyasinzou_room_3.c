#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinzou_room_3.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "jyasinzou_scene.h"
#include "jyasinzou_room_0.h"
#include "jyasinzou_room_1.h"
#include "jyasinzou_room_2.h"
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

SceneCmd jyasinzou_room_3Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinzou_room_3PolygonType2_000140),
    SCENE_CMD_OBJECT_LIST(8, jyasinzou_room_3ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(15, jyasinzou_room_3ActorList_000050),
    SCENE_CMD_END(),
};

s16 jyasinzou_room_3ObjectList_000040[] = {
    OBJECT_JYA_OBJ,
    OBJECT_JYA_DOOR,
    OBJECT_BOX,
    OBJECT_ANUBICE,
    OBJECT_FIREFLY,
    OBJECT_SYOKUDAI,
    OBJECT_FZ,
    OBJECT_HAKA,
};

ActorEntry jyasinzou_room_3ActorList_000050[] = {
    { ACTOR_EN_FIREFLY,     {  -1806,    188,   -925 }, {      0, 0X4000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,     {  -1328,      0,   -902 }, {      0, 0XC000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,     {  -1479,     81,  -1138 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,     {  -1742,    122,   -555 }, {      0, 0X560B,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,     {  -1571,    -86,  -1054 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_OBJ_SYOKUDAI,   {  -1664,     30,  -1157 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,   {  -1479,     30,  -1157 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,   {  -1664,     30,   -712 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,   {  -1479,     30,   -712 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_BG_HAKA,        {  -1626,     30,  -1338 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_BG_JYA_KANAAMI, {  -1569,     30,  -1053 }, {      0,      0,      0 }, 0x002A },
    { ACTOR_OBJ_SWITCH,     {  -1628,     30,  -1336 }, {      0,      0,      0 }, 0x2A00 },
    { ACTOR_EN_ANUBICE_TAG, {  -1565,     30,   -740 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_EN_BOX,         {  -1565,     30,   -741 }, {      0, 0X8000,      0 }, 0x0820 },
    { ACTOR_EN_BOX,         {  -1573,     30,  -1126 }, {      0,      0,      0 }, 0x7848 },
};

PolygonType2 jyasinzou_room_3PolygonType2_000140 = { 
    2, 4,
    jyasinzou_room_3PolygonDlist2_00014C,
    jyasinzou_room_3PolygonDlist2_00014C + ARRAY_COUNTU(jyasinzou_room_3PolygonDlist2_00014C)
};

PolygonDlist2 jyasinzou_room_3PolygonDlist2_00014C[4] = {
    { {  -1569,    150,  -1313 },    293, jyasinzou_room_3DL_001588, NULL },
    { {  -1569,   -150,  -1243 },    355, jyasinzou_room_3DL_001B98, NULL },
    { {  -1569,    -30,   -829 },    529, jyasinzou_room_3DL_000A70, NULL },
    { {  -1569,     30,   -639 },    242, jyasinzou_room_3DL_001150, NULL },
};

s32 jyasinzou_room_3_terminatorMaybe_00018C = { 0x01000000 };

u8 jyasinzou_room_3_unaccounted_000190[] = {
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x40, 0x01, 0x02, 0x00, 0x00, 0x03, 0x00, 0x01, 0xC8, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x2A, 0xFA, 0xA7, 0x00, 0x1E, 0xFB, 0xE8, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x03, 0x00, 0xFD, 0xF9, 0xDF, 0x00, 0x1E, 0xFB, 0xE3, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x40, 0x01, 0x02, 0x00, 0x00, 0x03, 0x00, 0x02, 0x28, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x2A, 0xFA, 0xA7, 0x00, 0x1E, 0xFB, 0xE8, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x03, 0x00, 0xFD, 0xF9, 0xDF, 0x00, 0x1E, 0xFB, 0xE3, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_3Vtx_000250[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_3Vtx_000250.vtx.inc"
};

Gfx jyasinzou_room_3DL_000A70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_3Vtx_000250[122], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(jyasinzou_room_3Tex_0033C8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_3Vtx_000250, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP1Triangle(9, 10, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_3Vtx_000250[11], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 8, 9, 6, 0),
    gsSP2Triangles(9, 7, 6, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 13, 11, 0, 13, 14, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(16, 19, 18, 0, 4, 2, 20, 0),
    gsSP2Triangles(4, 20, 21, 0, 2, 3, 22, 0),
    gsSP2Triangles(2, 22, 20, 0, 15, 23, 16, 0),
    gsSP2Triangles(24, 19, 16, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 28, 29, 26, 0),
    gsSP2Triangles(28, 30, 29, 0, 30, 31, 29, 0),
    gsSPVertex(&jyasinzou_room_3Vtx_000250[43], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_3Tex_0033C8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_3Vtx_000250[47], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_3Vtx_000250[51], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 8, 9, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_3Tex_0033C8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_3Vtx_000250[61], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 1, 3, 0, 5, 2, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 8, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(17, 20, 21, 0, 17, 21, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_3Tex_0023C8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_3Vtx_000250[83], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0),
    gsSP2Triangles(12, 9, 5, 0, 12, 5, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_3Tex_0033C8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_3Vtx_000250[97], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_3Vtx_000250[101], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 2, 1, 0, 6, 7, 8, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 11, 12, 0),
    gsSP2Triangles(9, 12, 11, 0, 9, 11, 8, 0),
    gsSP1Triangle(6, 8, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_3Tex_002BC8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_017FE0),
    gsSPVertex(&jyasinzou_room_3Vtx_000250[115], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_3Vtx_000250[119], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_3Vtx_000FF0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_3Vtx_000FF0.vtx.inc"
};

Gfx jyasinzou_room_3DL_001150[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_3Vtx_000FF0[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_3Tex_001FC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_3Vtx_000FF0, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(2, 5, 3, 0, 5, 6, 3, 0),
    gsSP2Triangles(7, 8, 9, 0, 9, 10, 5, 0),
    gsSP2Triangles(2, 9, 5, 0, 2, 7, 9, 0),
    gsSP2Triangles(2, 11, 7, 0, 2, 12, 11, 0),
    gsSP2Triangles(13, 12, 1, 0, 12, 2, 1, 0),
    gsSP1Triangle(0, 2, 4, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_3Vtx_001268[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_3Vtx_001268.vtx.inc"
};

Gfx jyasinzou_room_3DL_001588[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_3Vtx_001268[42], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_3Vtx_001268, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_3Tex_0033C8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_3Vtx_001268[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_3Vtx_001268[8], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 1, 4, 5, 0),
    gsSP2Triangles(6, 1, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 14, 0),
    gsSP1Triangle(11, 14, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_3Tex_0033C8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_3Vtx_001268[23], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 2, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 6, 9, 10, 0),
    gsSP1Triangle(6, 10, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_3Vtx_001268[34], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_3Vtx_0017F8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_3Vtx_0017F8.vtx.inc"
};

Gfx jyasinzou_room_3DL_001B98[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_3Vtx_0017F8[50], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_3Tex_0023C8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_3Vtx_0017F8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_3Tex_001FC8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_3Vtx_0017F8[4], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 2, 0),
    gsSP2Triangles(6, 7, 4, 0, 6, 4, 2, 0),
    gsSP2Triangles(8, 9, 6, 0, 8, 6, 2, 0),
    gsSP2Triangles(2, 10, 8, 0, 10, 2, 11, 0),
    gsSP2Triangles(2, 12, 11, 0, 12, 2, 1, 0),
    gsSP1Triangle(12, 1, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_3Tex_0033C8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_3Vtx_0017F8[18], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_3Tex_0023C8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_3Vtx_0017F8[22], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 5, 0, 4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_3Tex_0033C8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_3Vtx_0017F8[29], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_3Tex_0023C8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_3Vtx_0017F8[36], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_3Tex_0033C8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_3Vtx_0017F8[43], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 5, 0, 4, 5, 6, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_3_unaccounted_001FA0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x11, 0x50, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x15, 0x88, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1B, 0x98, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_3Tex_001FC8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_3Tex_001FC8.ci8.inc.c"
};

u64 jyasinzou_room_3Tex_0023C8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_3Tex_0023C8.ci8.inc.c"
};

u64 jyasinzou_room_3Tex_002BC8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_3Tex_002BC8.ci4.inc.c"
};

u64 jyasinzou_room_3Tex_0033C8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_3Tex_0033C8.ci4.inc.c"
};

