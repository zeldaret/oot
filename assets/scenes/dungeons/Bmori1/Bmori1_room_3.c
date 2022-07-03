#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "Bmori1_room_3.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "Bmori1_scene.h"
#include "Bmori1_room_0.h"
#include "Bmori1_room_1.h"
#include "Bmori1_room_2.h"
#include "Bmori1_room_4.h"
#include "Bmori1_room_5.h"
#include "Bmori1_room_6.h"
#include "Bmori1_room_7.h"
#include "Bmori1_room_8.h"
#include "Bmori1_room_9.h"
#include "Bmori1_room_10.h"
#include "Bmori1_room_11.h"
#include "Bmori1_room_12.h"
#include "Bmori1_room_13.h"
#include "Bmori1_room_14.h"
#include "Bmori1_room_15.h"
#include "Bmori1_room_16.h"
#include "Bmori1_room_17.h"
#include "Bmori1_room_18.h"
#include "Bmori1_room_19.h"
#include "Bmori1_room_20.h"
#include "Bmori1_room_21.h"
#include "Bmori1_room_22.h"

SceneCmd Bmori1_room_3Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&Bmori1_room_3PolygonType0_000090),
    SCENE_CMD_OBJECT_LIST(6, Bmori1_room_3ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(4, Bmori1_room_3ActorList_00004C),
    SCENE_CMD_END(),
};

s16 Bmori1_room_3ObjectList_000040[] = {
    OBJECT_MORI_TEX,
    OBJECT_MORI_OBJECTS,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_BB,
    OBJECT_ST,
};

ActorEntry Bmori1_room_3ActorList_00004C[] = {
    { ACTOR_EN_LIGHT, {   1583,    518,  -1497 }, {      0, 0XC000,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT, {   1583,    518,  -1489 }, {      0, 0XC000,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT, {   1583,    518,  -1391 }, {      0, 0XC000,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT, {   1583,    518,  -1383 }, {      0, 0XC000,      0 }, 0x83F0 },
};

u8 Bmori1_room_3_possiblePadding_00008C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 Bmori1_room_3PolygonType0_000090 = { 
    0, 1,
    Bmori1_room_3PolygonDlist_00009C,
    Bmori1_room_3PolygonDlist_00009C + ARRAY_COUNTU(Bmori1_room_3PolygonDlist_00009C)
};

PolygonDlist Bmori1_room_3PolygonDlist_00009C[1] = {
    { Bmori1_room_3DL_0023B8, NULL },
};

s32 Bmori1_room_3_terminatorMaybe_0000A4 = { 0x01000000 };

u8 Bmori1_room_3_possiblePadding_0000A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx Bmori1_room_3Vtx_0000B0[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_3Vtx_0000B0.vtx.inc"
};

Gfx Bmori1_room_3DL_0008F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&Bmori1_room_3Vtx_0000B0[124], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015690, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014080),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(Bmori1_room_3Vtx_0000B0, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 2, 3, 0, 2, 5, 3, 0),
    gsSP2Triangles(3, 6, 4, 0, 3, 7, 6, 0),
    gsSP2Triangles(3, 5, 7, 0, 1, 0, 8, 0),
    gsSP2Triangles(1, 8, 9, 0, 0, 4, 10, 0),
    gsSP1Triangle(0, 10, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_3Tex_0033D8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_3Vtx_0000B0[11], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 2, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014288),
    gsSPVertex(&Bmori1_room_3Vtx_0000B0[17], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_3Tex_0033D8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014080),
    gsSPVertex(&Bmori1_room_3Vtx_0000B0[33], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0),
    gsSP1Triangle(1, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014288),
    gsSPVertex(&Bmori1_room_3Vtx_0000B0[39], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(5, 9, 8, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 6, 11, 0, 10, 7, 6, 0),
    gsSP2Triangles(13, 12, 11, 0, 14, 15, 16, 0),
    gsSP2Triangles(13, 11, 16, 0, 11, 14, 16, 0),
    gsSP2Triangles(16, 15, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 24, 0),
    gsSP1Triangle(22, 24, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_3Tex_0033D8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014080),
    gsSPVertex(&Bmori1_room_3Vtx_0000B0[65], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015690, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_3Vtx_0000B0[69], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 5, 0, 2, 0),
    gsSP2Triangles(5, 6, 0, 0, 6, 4, 0, 0),
    gsSP1Triangle(5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_3Tex_0033D8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_3Vtx_0000B0[77], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(6, 9, 7, 0, 6, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014288),
    gsSPVertex(&Bmori1_room_3Vtx_0000B0[87], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 0, 2, 0),
    gsSP2Triangles(3, 6, 4, 0, 6, 3, 7, 0),
    gsSP1Triangle(3, 8, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_3Tex_0033D8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014080),
    gsSPVertex(&Bmori1_room_3Vtx_0000B0[96], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 7, 0),
    gsSP2Triangles(9, 8, 7, 0, 9, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014288),
    gsSPVertex(&Bmori1_room_3Vtx_0000B0[106], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 3, 5, 0, 1, 0, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_3Tex_0033D8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014080),
    gsSPVertex(&Bmori1_room_3Vtx_0000B0[112], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 0, 2, 0, 2, 3, 5, 0),
    gsSP1Triangle(4, 2, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(Bmori1_room_3Tex_0023D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_3Vtx_0000B0[118], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
    gsSPEndDisplayList(),
};

Vtx Bmori1_room_3Vtx_001040[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_3Vtx_001040.vtx.inc"
};

Gfx Bmori1_room_3DL_001B80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&Bmori1_room_3Vtx_001040[172], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(Bmori1_room_3Tex_002BD8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014288),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(Bmori1_room_3Vtx_001040, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&Bmori1_room_3Vtx_001040[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&Bmori1_room_3Vtx_001040[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(27, 28, 25, 0, 28, 29, 25, 0),
    gsSPVertex(&Bmori1_room_3Vtx_001040[92], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&Bmori1_room_3Vtx_001040[124], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&Bmori1_room_3Vtx_001040[156], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx Bmori1_room_3Vtx_001DE8[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_3Vtx_001DE8.vtx.inc"
};

Gfx Bmori1_room_3DL_002128[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&Bmori1_room_3Vtx_001DE8[44], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(Bmori1_room_3Tex_0037D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(Bmori1_room_3Vtx_001DE8, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 1, 0, 7, 1, 0, 0),
    gsSP2Triangles(0, 3, 5, 0, 0, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 8, 0),
    gsSP2Triangles(8, 13, 14, 0, 8, 14, 9, 0),
    gsSP2Triangles(9, 14, 15, 0, 9, 15, 10, 0),
    gsSP2Triangles(10, 15, 12, 0, 10, 12, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_3Tex_0038D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&Bmori1_room_3Vtx_001DE8[16], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP1Triangle(0, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_3Tex_0037D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&Bmori1_room_3Vtx_001DE8[22], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 1, 0, 7, 1, 0, 0),
    gsSP2Triangles(0, 3, 5, 0, 0, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 8, 0),
    gsSP2Triangles(8, 13, 14, 0, 8, 14, 9, 0),
    gsSP2Triangles(9, 14, 15, 0, 9, 15, 10, 0),
    gsSP2Triangles(10, 15, 12, 0, 10, 12, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_3Tex_0038D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&Bmori1_room_3Vtx_001DE8[38], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP1Triangle(0, 3, 5, 0),
    gsSPEndDisplayList(),
};

Gfx Bmori1_room_3DL_0023B8[] = {
    gsSPDisplayList(Bmori1_room_3DL_0008F0),
    gsSPDisplayList(Bmori1_room_3DL_001B80),
    gsSPDisplayList(Bmori1_room_3DL_002128),
    gsSPEndDisplayList(),
};

u64 Bmori1_room_3Tex_0023D8[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_3Tex_0023D8.rgba16.inc.c"
};

u64 Bmori1_room_3Tex_002BD8[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_3Tex_002BD8.ci8.inc.c"
};

u64 Bmori1_room_3Tex_0033D8[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_3Tex_0033D8.ci8.inc.c"
};

u64 Bmori1_room_3Tex_0037D8[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_3Tex_0037D8.rgba16.inc.c"
};

u64 Bmori1_room_3Tex_0038D8[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_3Tex_0038D8.rgba16.inc.c"
};

