#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinzou_room_18.h"
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

SceneCmd jyasinzou_room_18Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinzou_room_18PolygonType2_000110),
    SCENE_CMD_OBJECT_LIST(9, jyasinzou_room_18ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(11, jyasinzou_room_18ActorList_000054),
    SCENE_CMD_END(),
};

s16 jyasinzou_room_18ObjectList_000040[] = {
    OBJECT_JYA_OBJ,
    OBJECT_JYA_DOOR,
    OBJECT_MIR_RAY,
    OBJECT_LIGHTSWITCH,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_ZF,
    OBJECT_BOX,
    OBJECT_FZ,
};

ActorEntry jyasinzou_room_18ActorList_000054[] = {
    { ACTOR_EN_ZF,           {   1922,   1163,    -74 }, {      0, 0XE9F5,      0 }, 0xFFFE },
    { ACTOR_EN_ZF,           {   2043,   1163,    243 }, {      0, 0XA71C,      0 }, 0xFFFE },
    { ACTOR_SHOT_SUN,        {   2040,    843,   -220 }, {      0,      0,      0 }, 0xFF40 },
    { ACTOR_OBJ_LIGHTSWITCH, {   2195,    992,   -218 }, {      0, 0XC000,      0 }, 0x1600 },
    { ACTOR_MIR_RAY,         {   2040,    843,   -220 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_ELF_MSG2,        {   2081,    864,     91 }, {      0,   0X30,    0X1 }, 0x3F00 },
    { ACTOR_OBJ_WARP2BLOCK,  {   1890,    843,   -340 }, {      0,      0,      0 }, 0x1838 },
    { ACTOR_OBJ_WARP2BLOCK,  {   2040,    843,   -220 }, {      0,      0,      0 }, 0x9838 },
    { ACTOR_EN_WONDER_ITEM,  {   2080,    843,     91 }, {      0,      0,    0X2 }, 0x192F },
    { ACTOR_EN_WONDER_ITEM,  {   2080,    843,     91 }, {      0,      0,      0 }, 0x192F },
    { ACTOR_EN_BOX,          {   2080,    843,     91 }, {      0, 0X4000,      0 }, 0x5F98 },
};

u8 jyasinzou_room_18_possiblePadding_000104[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 jyasinzou_room_18PolygonType2_000110 = { 
    2, 10,
    jyasinzou_room_18PolygonDlist2_00011C,
    jyasinzou_room_18PolygonDlist2_00011C + ARRAY_COUNTU(jyasinzou_room_18PolygonDlist2_00011C)
};

PolygonDlist2 jyasinzou_room_18PolygonDlist2_00011C[10] = {
    { {   1950,    843,     20 },    497, jyasinzou_room_18DL_000620, NULL },
    { {   1950,   1023,     30 },    520, jyasinzou_room_18DL_000D78, NULL },
    { {   1960,   1203,     30 },    483, jyasinzou_room_18DL_001038, NULL },
    { {   2220,   1103,   -220 },     42, jyasinzou_room_18DL_001418, NULL },
    { {   1960,    843,    400 },    114, jyasinzou_room_18DL_001690, NULL },
    { {   2107,    988,   -220 },    192, NULL, jyasinzou_room_18DL_005170 },
    { {   2200,   1023,     30 },    456, jyasinzou_room_18DL_001900, NULL },
    { {   2220,   1103,   -220 },     42, NULL, jyasinzou_room_18DL_005408 },
    { {   1960,   1023,     30 },    494, jyasinzou_room_18DL_001D20, NULL },
    { {   1960,    843,    -60 },    241, jyasinzou_room_18DL_001FA8, NULL },
};

s32 jyasinzou_room_18_terminatorMaybe_0001BC = { 0x01000000 };

u8 jyasinzou_room_18_unaccounted_0001C0[] = {
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x10, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x10, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_18Vtx_000220[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Vtx_000220.vtx.inc"
};

Gfx jyasinzou_room_18DL_000620[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_18Vtx_000220[56], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_18Tex_0044F0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_18Vtx_000220, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 4, 7, 6, 0),
    gsSP2Triangles(3, 8, 4, 0, 9, 10, 8, 0),
    gsSP2Triangles(9, 11, 10, 0, 11, 12, 10, 0),
    gsSP2Triangles(13, 14, 5, 0, 5, 14, 3, 0),
    gsSP2Triangles(14, 8, 3, 0, 14, 9, 8, 0),
    gsSP2Triangles(14, 11, 9, 0, 11, 14, 13, 0),
    gsSP2Triangles(7, 4, 15, 0, 4, 8, 15, 0),
    gsSP2Triangles(7, 16, 17, 0, 7, 15, 16, 0),
    gsSP2Triangles(15, 8, 16, 0, 17, 16, 18, 0),
    gsSP2Triangles(18, 16, 19, 0, 16, 8, 19, 0),
    gsSP2Triangles(18, 19, 12, 0, 12, 19, 10, 0),
    gsSP2Triangles(19, 8, 10, 0, 12, 11, 20, 0),
    gsSP2Triangles(11, 21, 20, 0, 18, 12, 22, 0),
    gsSP2Triangles(18, 22, 23, 0, 6, 7, 24, 0),
    gsSP2Triangles(17, 23, 25, 0, 17, 18, 23, 0),
    gsSP2Triangles(6, 24, 26, 0, 6, 26, 5, 0),
    gsSP2Triangles(13, 5, 26, 0, 11, 13, 21, 0),
    gsSP1Triangle(13, 26, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_18Tex_0048F0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_18Vtx_000220[27], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 6, 7, 1, 0),
    gsSP1Triangle(7, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_18Tex_0044F0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_18Vtx_000220[35], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(5, 8, 7, 0, 9, 3, 1, 0),
    gsSP2Triangles(9, 10, 3, 0, 10, 11, 3, 0),
    gsSP2Triangles(11, 12, 3, 0, 12, 2, 3, 0),
    gsSP2Triangles(12, 13, 2, 0, 13, 14, 2, 0),
    gsSP2Triangles(13, 15, 14, 0, 15, 13, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 18, 20, 19, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_18Vtx_0008E8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Vtx_0008E8.vtx.inc"
};

Gfx jyasinzou_room_18DL_000D78[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_18Vtx_0008E8[65], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_18Tex_0028F0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_18Vtx_0008E8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(12, 14, 16, 0, 15, 18, 16, 0),
    gsSP2Triangles(18, 12, 16, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&jyasinzou_room_18Vtx_0008E8[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 3, 0, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 6, 5, 0),
    gsSP2Triangles(7, 5, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(26, 28, 27, 0, 26, 15, 29, 0),
    gsSP2Triangles(26, 29, 28, 0, 15, 16, 29, 0),
    gsSPVertex(&jyasinzou_room_18Vtx_0008E8[61], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_18Vtx_000F08[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Vtx_000F08.vtx.inc"
};

Gfx jyasinzou_room_18DL_001038[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_18Vtx_000F08[11], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_18Tex_0048F0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_18Vtx_000F08, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 2, 5, 0),
    gsSP2Triangles(4, 6, 2, 0, 6, 7, 2, 0),
    gsSP2Triangles(7, 8, 3, 0, 7, 3, 2, 0),
    gsSP2Triangles(0, 9, 10, 0, 0, 10, 1, 0),
    gsSP2Triangles(10, 4, 1, 0, 9, 8, 7, 0),
    gsSP2Triangles(9, 7, 10, 0, 7, 4, 10, 0),
    gsSP1Triangle(7, 6, 4, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_18Vtx_001158[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Vtx_001158.vtx.inc"
};

Gfx jyasinzou_room_18DL_001418[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_18Vtx_001158[36], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_18Tex_0034F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_18Vtx_001158, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 1, 0, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(jyasinzou_room_18Tex_0028F0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&jyasinzou_room_18Vtx_001158[5], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 2, 5, 6, 0),
    gsSP2Triangles(2, 6, 7, 0, 4, 2, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 12, 0, 8, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(14, 17, 18, 0, 14, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 23, 24, 0, 20, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(26, 29, 30, 0, 26, 30, 21, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_18Vtx_0015C0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Vtx_0015C0.vtx.inc"
};

Gfx jyasinzou_room_18DL_001690[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_18Vtx_0015C0[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_18Tex_0020F0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_18Vtx_0015C0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP1Triangle(2, 1, 4, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_18Vtx_001780[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Vtx_001780.vtx.inc"
};

Gfx jyasinzou_room_18DL_001900[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_18Vtx_001780[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_18Tex_0028F0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_18Vtx_001780, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 8, 6, 0),
    gsSP2Triangles(7, 6, 4, 0, 9, 10, 8, 0),
    gsSP2Triangles(7, 11, 8, 0, 11, 9, 8, 0),
    gsSP2Triangles(9, 12, 13, 0, 9, 13, 10, 0),
    gsSP2Triangles(14, 1, 15, 0, 14, 15, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 14, 2, 1, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_18Vtx_001A20[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Vtx_001A20.vtx.inc"
};

Gfx jyasinzou_room_18DL_001D20[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_18Vtx_001A20[40], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_18Tex_003CF0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_18Vtx_001A20, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 5, 0, 0, 3, 5, 0),
    gsSP2Triangles(5, 6, 4, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(10, 13, 14, 0, 15, 10, 14, 0),
    gsSP2Triangles(14, 16, 15, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 16, 0, 14, 17, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 24, 0),
    gsSP2Triangles(20, 24, 21, 0, 25, 20, 22, 0),
    gsSP2Triangles(22, 26, 25, 0, 22, 27, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 26, 0),
    gsSPVertex(&jyasinzou_room_18Vtx_001A20[30], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 0, 4, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_18Vtx_001E88[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Vtx_001E88.vtx.inc"
};

Gfx jyasinzou_room_18DL_001FA8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_18Vtx_001E88[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_18Tex_0030F0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_18Vtx_001E88, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(0, 6, 7, 0, 0, 7, 1, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_18_unaccounted_0020A8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0x78, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0x38, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0x18, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x16, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x19, 0x00, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1F, 0xA8, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_18Tex_0020F0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Tex_0020F0.ci8.inc.c"
};

u64 jyasinzou_room_18Tex_0028F0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Tex_0028F0.ci8.inc.c"
};

u64 jyasinzou_room_18Tex_0030F0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Tex_0030F0.ci8.inc.c"
};

u64 jyasinzou_room_18Tex_0034F0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Tex_0034F0.rgba16.inc.c"
};

u64 jyasinzou_room_18Tex_003CF0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Tex_003CF0.ci8.inc.c"
};

u64 jyasinzou_room_18Tex_0044F0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Tex_0044F0.ci8.inc.c"
};

u64 jyasinzou_room_18Tex_0048F0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Tex_0048F0.ci8.inc.c"
};

Vtx jyasinzou_room_18Vtx_004CF0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Vtx_004CF0.vtx.inc"
};

Gfx jyasinzou_room_18DL_005170[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_18Vtx_004CF0[64], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gSpiritTempleDayEntranceTex, G_IM_FMT_IA, G_IM_SIZ_16b, 8, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 102),
    gsSPVertex(jyasinzou_room_18Vtx_004CF0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 24, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 28, 30, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 254),
    gsSPVertex(&jyasinzou_room_18Vtx_004CF0[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 2, 1, 5, 0),
    gsSP2Triangles(2, 5, 6, 0, 2, 6, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gSpiritTempleDayEntranceTex, G_IM_FMT_IA, G_IM_SIZ_16b, 8, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA_PRIM2),
    gsSPVertex(&jyasinzou_room_18Vtx_004CF0[40], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 8, 9, 0, 4, 9, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 11, 0, 10, 14, 11, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 20, 21, 0, 16, 21, 17, 0),
    gsSP2Triangles(3, 22, 23, 0, 0, 3, 23, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_18Vtx_005338[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Vtx_005338.vtx.inc"
};

Gfx jyasinzou_room_18DL_005408[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_18Vtx_005338[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_18Tex_0054E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(jyasinzou_room_18Vtx_005338, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 0, 4, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_18_unaccounted_0054C8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x51, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x54, 0x08, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_18Tex_0054E0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_18Tex_0054E0.rgba16.inc.c"
};

