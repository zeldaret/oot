#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinzou_room_12.h"
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

SceneCmd jyasinzou_room_12Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinzou_room_12PolygonType2_000100),
    SCENE_CMD_OBJECT_LIST(6, jyasinzou_room_12ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(11, jyasinzou_room_12ActorList_00004C),
    SCENE_CMD_END(),
};

s16 jyasinzou_room_12ObjectList_000040[] = {
    OBJECT_JYA_OBJ,
    OBJECT_JYA_DOOR,
    OBJECT_BOX,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
    OBJECT_WOOD02,
};

ActorEntry jyasinzou_room_12ActorList_00004C[] = {
    { ACTOR_EN_ST,  {   1509,     70,  -1851 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_ST,  {   1699,     70,  -1906 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_ST,  {   1466,     70,  -1971 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_ST,  {   1721,     70,  -1781 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_ST,  {   1580,     70,  -2014 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_EN_ST,  {   1623,     70,  -1819 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_ST,  {   1569,     70,  -1927 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_ST,  {   1575,     70,  -1748 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_ST,  {   1444,     70,  -1765 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_SW,  {   1735,      0,  -1690 }, { 0X4000, 0XA000,      0 }, 0x8708 },
    { ACTOR_EN_BOX, {   1573,   -130,  -2008 }, {      0, 0X8000,      0 }, 0x5AA7 },
};

u8 jyasinzou_room_12_possiblePadding_0000FC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 jyasinzou_room_12PolygonType2_000100 = { 
    2, 3,
    jyasinzou_room_12PolygonDlist2_00010C,
    jyasinzou_room_12PolygonDlist2_00010C + ARRAY_COUNTU(jyasinzou_room_12PolygonDlist2_00010C)
};

PolygonDlist2 jyasinzou_room_12PolygonDlist2_00010C[3] = {
    { {   1569,    -10,  -1852 },    292, jyasinzou_room_12DL_0006B0, NULL },
    { {   1569,    -50,  -1613 },    100, jyasinzou_room_12DL_000B38, NULL },
    { {   1569,    -10,  -1623 },    155, jyasinzou_room_12DL_000F08, NULL },
};

s32 jyasinzou_room_12_terminatorMaybe_00013C = { 0x01000000 };

u8 jyasinzou_room_12_unaccounted_000140[] = {
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_12Vtx_0001A0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_12Vtx_0001A0.vtx.inc"
};

Gfx jyasinzou_room_12DL_0006B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_12Vtx_0001A0[73], 8, 0),
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
    gsSPVertex(jyasinzou_room_12Vtx_0001A0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(6, 9, 7, 0, 6, 10, 9, 0),
    gsSP2Triangles(6, 11, 10, 0, 6, 12, 11, 0),
    gsSP2Triangles(6, 13, 12, 0, 6, 8, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(14, 18, 15, 0, 18, 17, 15, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 22, 20, 0),
    gsSP2Triangles(22, 23, 20, 0, 23, 21, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(24, 28, 29, 0, 28, 27, 29, 0),
    gsSPVertex(&jyasinzou_room_12Vtx_0001A0[30], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(5, 9, 6, 0, 9, 8, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(10, 14, 11, 0, 14, 13, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_12Tex_0018D8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_12Vtx_0001A0[45], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 2, 7, 0, 4, 8, 9, 0),
    gsSP2Triangles(4, 9, 1, 0, 8, 10, 9, 0),
    gsSP2Triangles(11, 5, 7, 0, 10, 11, 7, 0),
    gsSP1Triangle(10, 7, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_12Tex_0010D8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_12Vtx_0001A0[57], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_12Tex_0018D8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_12Vtx_0001A0[69], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_12Vtx_0009D8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_12Vtx_0009D8.vtx.inc"
};

Gfx jyasinzou_room_12DL_000B38[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_12Vtx_0009D8[14], 8, 0),
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
    gsSPVertex(jyasinzou_room_12Vtx_0009D8, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(12, 3, 2, 0, 12, 2, 13, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_12Vtx_000C48[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_12Vtx_000C48.vtx.inc"
};

Gfx jyasinzou_room_12DL_000F08[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_12Vtx_000C48[36], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_sceneTex_018820, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_12Vtx_000C48, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 17, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_12Vtx_000C48[24], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 10, 6, 0),
    gsSP1Triangle(9, 11, 10, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_12_unaccounted_0010B8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xB0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0x38, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0F, 0x08, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_12Tex_0010D8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_12Tex_0010D8.ci8.inc.c"
};

u64 jyasinzou_room_12Tex_0018D8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_12Tex_0018D8.ci8.inc.c"
};

