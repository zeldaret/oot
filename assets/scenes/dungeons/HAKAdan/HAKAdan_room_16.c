#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_room_16.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HAKAdan_scene.h"
#include "HAKAdan_room_0.h"
#include "HAKAdan_room_1.h"
#include "HAKAdan_room_2.h"
#include "HAKAdan_room_3.h"
#include "HAKAdan_room_4.h"
#include "HAKAdan_room_5.h"
#include "HAKAdan_room_6.h"
#include "HAKAdan_room_7.h"
#include "HAKAdan_room_8.h"
#include "HAKAdan_room_9.h"
#include "HAKAdan_room_10.h"
#include "HAKAdan_room_11.h"
#include "HAKAdan_room_12.h"
#include "HAKAdan_room_13.h"
#include "HAKAdan_room_14.h"
#include "HAKAdan_room_15.h"
#include "HAKAdan_room_17.h"
#include "HAKAdan_room_18.h"
#include "HAKAdan_room_19.h"
#include "HAKAdan_room_20.h"
#include "HAKAdan_room_21.h"
#include "HAKAdan_room_22.h"

SceneCmd HAKAdan_room_16Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_room_16PolygonType2_0001D0),
    SCENE_CMD_OBJECT_LIST(12, HAKAdan_room_16ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(23, HAKAdan_room_16ActorList_000058),
    SCENE_CMD_END(),
};

s16 HAKAdan_room_16ObjectList_000040[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_FIREFLY,
    OBJECT_RR,
    OBJECT_GI_SHIELD_2,
    OBJECT_GI_CLOTHES,
    OBJECT_GI_SHIELD_1,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_GI_HEART,
};

ActorEntry HAKAdan_room_16ActorList_000058[] = {
    { ACTOR_EN_FIREFLY,       {   4983,   -968,   2714 }, {      0, 0X8000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,       {   5089,   -975,   1553 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,       {   5694,   -934,   2520 }, {      0, 0X9555,      0 }, 0x0003 },
    { ACTOR_EN_RR,            {   5637,  -1143,   2134 }, {      0, 0XC000,      0 }, 0xFFFF },
    { ACTOR_EN_ITEM00,        {   5676,  -1028,   1565 }, {      0,      0,      0 }, 0x2003 },
    { ACTOR_EN_ITEM00,        {   5695,  -1028,   1589 }, {      0,      0,      0 }, 0x2103 },
    { ACTOR_OBJ_TIMEBLOCK,    {   5669,  -1143,   1585 }, {      0,      0,    0X2 }, 0x380A },
    { ACTOR_OBJ_TIMEBLOCK,    {   5668,  -1143,   2685 }, {      0,      0,      0 }, 0x3812 },
    { ACTOR_EN_G_SWITCH,      {   5089,  -1143,   2049 }, {      0,      0,      0 }, 0x1FC3 },
    { ACTOR_EN_G_SWITCH,      {   5158,  -1143,   2315 }, {      0,      0,      0 }, 0x1FC3 },
    { ACTOR_EN_G_SWITCH,      {   5217,  -1143,   1852 }, {      0,      0,      0 }, 0x1FC3 },
    { ACTOR_EN_G_SWITCH,      {   5270,  -1143,   2453 }, {      0,      0,      0 }, 0x1FC3 },
    { ACTOR_EN_G_SWITCH,      {   5404,  -1143,   1977 }, {      0,      0,      0 }, 0x1FC3 },
    { ACTOR_EN_G_SWITCH,      {   5466,  -1143,   2243 }, {      0,      0,      0 }, 0x1FC3 },
    { ACTOR_EN_G_SWITCH,      {   5489,  -1143,   2476 }, {      0,      0,      0 }, 0x1FC3 },
    { ACTOR_EN_G_SWITCH,      {   5601,  -1143,   1898 }, {      0,      0,      0 }, 0x1FC3 },
    { ACTOR_EN_G_SWITCH,      {   5637,  -1143,   2134 }, {      0,      0,      0 }, 0x1FC3 },
    { ACTOR_EN_G_SWITCH,      {   5667,  -1043,   2686 }, {      0,      0,      0 }, 0x1FC3 },
    { ACTOR_EN_G_SWITCH,      {   4982,  -1143,   2138 }, {      0,      0,      0 }, 0x0283 },
    { ACTOR_BG_HAKA_MEGANEBG, {   5732,  -1143,   2134 }, {      0, 0X4000,      0 }, 0x0303 },
    { ACTOR_BG_HAKA_SGAMI,    {   5318,  -1143,   2135 }, {      0, 0XC000,      0 }, 0x0001 },
    { ACTOR_EN_BOX,           {   5942,  -1143,   2188 }, {      0, 0X4000,      0 }, 0x6856 },
    { ACTOR_EN_BOX,           {   5941,  -1143,   2079 }, {      0, 0X4000,      0 }, 0x588C },
};

u8 HAKAdan_room_16_possiblePadding_0001C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 HAKAdan_room_16PolygonType2_0001D0 = { 
    2, 2,
    HAKAdan_room_16PolygonDlist2_0001DC,
    HAKAdan_room_16PolygonDlist2_0001DC + ARRAY_COUNTU(HAKAdan_room_16PolygonDlist2_0001DC)
};

PolygonDlist2 HAKAdan_room_16PolygonDlist2_0001DC[2] = {
    { {   5718,   -978,   2135 },     42, HAKAdan_room_16DL_001858, NULL },
    { {   5298,   -943,   2135 },    830, HAKAdan_room_16DL_001400, NULL },
};

s32 HAKAdan_room_16_terminatorMaybe_0001FC = { 0x01000000 };

Vtx HAKAdan_room_16Vtx_000200[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_16Vtx_000200.vtx.inc"
};

Gfx HAKAdan_room_16DL_001400[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_16Vtx_000200[280], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_0173C0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_16Vtx_000200, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(6, 8, 11, 0, 6, 11, 7, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_16Vtx_000200[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_16Vtx_000200[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(3, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 1, 11, 0),
    gsSP2Triangles(11, 1, 0, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 13, 16, 14, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(22, 16, 23, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_16Vtx_000200[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(17, 7, 18, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 21, 7, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(25, 7, 26, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_16Vtx_000200[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 15, 16, 0, 13, 17, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(19, 22, 20, 0, 22, 21, 20, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&HAKAdan_room_16Vtx_000200[159], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 12, 0, 18, 19, 15, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_16Vtx_000200[191], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 7, 6, 0, 9, 8, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 18, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(22, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&HAKAdan_room_16Vtx_000200[222], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 12, 0, 8, 12, 13, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_16Vtx_000200[254], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_16Vtx_001788[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_16Vtx_001788.vtx.inc"
};

Gfx HAKAdan_room_16DL_001858[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_16Vtx_001788[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_16Tex_001930, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_16Vtx_001788, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 0, 4, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_16_unaccounted_001918[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x18, 0x58, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_16Tex_001930[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_16Tex_001930.rgba16.inc.c"
};

