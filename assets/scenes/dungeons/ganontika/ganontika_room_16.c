#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ganontika_room_16.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ganontika_scene.h"
#include "ganontika_room_0.h"
#include "ganontika_room_1.h"
#include "ganontika_room_2.h"
#include "ganontika_room_3.h"
#include "ganontika_room_4.h"
#include "ganontika_room_5.h"
#include "ganontika_room_6.h"
#include "ganontika_room_7.h"
#include "ganontika_room_8.h"
#include "ganontika_room_9.h"
#include "ganontika_room_10.h"
#include "ganontika_room_11.h"
#include "ganontika_room_12.h"
#include "ganontika_room_13.h"
#include "ganontika_room_14.h"
#include "ganontika_room_15.h"
#include "ganontika_room_17.h"
#include "ganontika_room_18.h"
#include "ganontika_room_19.h"

SceneCmd ganontika_room_16Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(6),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, true, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ganontika_room_16PolygonType2_0000B0),
    SCENE_CMD_OBJECT_LIST(5, ganontika_room_16ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(6, ganontika_room_16ActorList_00004C),
    SCENE_CMD_END(),
};

s16 ganontika_room_16ObjectList_000040[] = {
    OBJECT_DEMO_KEKKAI,
    OBJECT_BOX,
    OBJECT_HEAVY_OBJECT,
    OBJECT_SHOPNUTS,
    OBJECT_DEKUNUTS,
};

ActorEntry ganontika_room_16ActorList_00004C[] = {
    { ACTOR_EN_SHOPNUTS, {   -193,   -240,    694 }, {      0, 0X349F,      0 }, 0x0000 },
    { ACTOR_EN_SHOPNUTS, {     92,   -240,    969 }, {      0, 0X9555,      0 }, 0x0005 },
    { ACTOR_EN_SHOPNUTS, {   -189,   -240,    865 }, {      0, 0X5555,      0 }, 0x0007 },
    { ACTOR_EN_SHOPNUTS, {    -84,   -240,    970 }, {      0, 0X6AAB,      0 }, 0x0006 },
    { ACTOR_EN_SHOPNUTS, {    210,   -240,    870 }, {      0, 0XAAAB,      0 }, 0x0008 },
    { ACTOR_EN_ELF,      {     -1,   -142,    761 }, {      0,      0,      0 }, 0x0004 },
};

u8 ganontika_room_16_possiblePadding_0000AC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 ganontika_room_16PolygonType2_0000B0 = { 
    2, 3,
    ganontika_room_16PolygonDlist2_0000BC,
    ganontika_room_16PolygonDlist2_0000BC + ARRAY_COUNTU(ganontika_room_16PolygonDlist2_0000BC)
};

PolygonDlist2 ganontika_room_16PolygonDlist2_0000BC[3] = {
    { {      0,   -123,    775 },    322, ganontika_room_16DL_0006F0, NULL },
    { {      0,   -240,    775 },    299, ganontika_room_16DL_000E80, NULL },
    { {      0,   -123,    398 },    192, ganontika_room_16DL_001288, NULL },
};

s32 ganontika_room_16_terminatorMaybe_0000EC = { 0x01000000 };

Vtx ganontika_room_16Vtx_0000F0[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_16Vtx_0000F0.vtx.inc"
};

Gfx ganontika_room_16DL_0006F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[88], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_16Vtx_0000F0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F580, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[8], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP1Triangle(11, 13, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[23], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[27], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[31], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[35], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[39], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[43], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[47], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[51], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[55], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[59], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[63], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[67], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_room_16Tex_001630, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[71], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 5, 4, 0, 0),
    gsSP2Triangles(6, 5, 0, 0, 7, 6, 0, 0),
    gsSP2Triangles(7, 0, 8, 0, 0, 9, 8, 0),
    gsSP1Triangle(0, 2, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F580, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_0000F0[81], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 5, 4, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_16Vtx_000D60[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_16Vtx_000D60.vtx.inc"
};

Gfx ganontika_room_16DL_000E80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_16Vtx_000D60[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_sceneTex_020B80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_16Vtx_000D60, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 0, 0, 6, 4, 0, 0),
    gsSP2Triangles(6, 0, 7, 0, 7, 0, 8, 0),
    gsSP2Triangles(8, 0, 9, 0, 9, 0, 2, 0),
    gsSP1Triangle(3, 0, 5, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_16Vtx_000F58[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_16Vtx_000F58.vtx.inc"
};

Gfx ganontika_room_16DL_001288[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_16Vtx_000F58[43], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_16Tex_002630, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_16Vtx_000F58, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_sceneTex_020B80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_000F58[4], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(3, 4, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_room_16Tex_002630, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_16Vtx_000F58[9], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 6, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_000F58[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_000F58[25], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_000F58[29], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(3, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_000F58[34], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_16Vtx_000F58[38], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(3, 4, 1, 0),
    gsSPEndDisplayList(),
};

u8 ganontika_room_16_unaccounted_001610[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0x80, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0x88, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ganontika_room_16Tex_001630[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_16Tex_001630.rgba16.inc.c"
};

u64 ganontika_room_16Tex_002630[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_16Tex_002630.ci8.inc.c"
};

