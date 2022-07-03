#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "kinsuta_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "kinsuta_scene.h"

SceneCmd kinsuta_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&kinsuta_room_0PolygonType2_000110),
    SCENE_CMD_OBJECT_LIST(7, kinsuta_room_0ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(12, kinsuta_room_0ActorList_000050),
    SCENE_CMD_END(),
};

s16 kinsuta_room_0ObjectList_000040[] = {
    OBJECT_SSH,
    OBJECT_BOJ,
    OBJECT_AHG,
    OBJECT_ST,
    OBJECT_O_ANIME,
    OBJECT_OE_ANIME,
    OBJECT_OS_ANIME,
};

ActorEntry kinsuta_room_0ActorList_000050[] = {
    { ACTOR_EN_SSH, {      0,    280,     20 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_STH, {      0,      0,     20 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_SSH, {    240,    280,    140 }, {      0, 0XAAAB,      0 }, 0x0001 },
    { ACTOR_EN_STH, {    240,      0,    140 }, {      0, 0XAAAB,      0 }, 0x0001 },
    { ACTOR_EN_SSH, {   -240,    280,    140 }, {      0, 0X5555,      0 }, 0x0002 },
    { ACTOR_EN_STH, {   -240,      0,    140 }, {      0, 0X5555,      0 }, 0x0002 },
    { ACTOR_EN_SSH, {      0,    280,   -270 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_STH, {      0,      0,   -270 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_SSH, {   -240,    280,   -140 }, {      0, 0X2AAB,      0 }, 0x0004 },
    { ACTOR_EN_STH, {   -240,      0,   -140 }, {      0, 0X2AAB,      0 }, 0x0004 },
    { ACTOR_EN_SSH, {    240,    280,   -140 }, {      0, 0XEAAB,      0 }, 0x0005 },
    { ACTOR_EN_STH, {    240,      0,   -140 }, {      0, 0XEAAB,      0 }, 0x0005 },
};

PolygonType2 kinsuta_room_0PolygonType2_000110 = { 
    2, 8,
    kinsuta_room_0PolygonDlist2_00011C,
    kinsuta_room_0PolygonDlist2_00011C + ARRAY_COUNTU(kinsuta_room_0PolygonDlist2_00011C)
};

PolygonDlist2 kinsuta_room_0PolygonDlist2_00011C[8] = {
    { {      0,     40,     78 },    370, kinsuta_room_0DL_002BC8, NULL },
    { {      0,    141,    106 },    465, kinsuta_room_0DL_000CF0, NULL },
    { {      0,    307,     96 },    478, kinsuta_room_0DL_0013E8, NULL },
    { {      0,     50,    578 },     76, kinsuta_room_0DL_0002E0, NULL },
    { {      0,    131,    100 },    436, NULL, kinsuta_room_0DL_00ACE0 },
    { {      0,    121,    100 },    461, kinsuta_room_0DL_001B38, NULL },
    { {    -14,      7,    125 },    286, kinsuta_room_0DL_002FD8, NULL },
    { {      0,      0,     96 },    448, kinsuta_room_0DL_001F78, NULL },
};

s32 kinsuta_room_0_terminatorMaybe_00019C = { 0x01000000 };

Vtx kinsuta_room_0Vtx_0001A0[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Vtx_0001A0.vtx.inc"
};

Gfx kinsuta_room_0DL_0002E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kinsuta_room_0Vtx_0001A0[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kinsuta_room_0Vtx_0001A0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 1, 0, 5, 0),
    gsSP2Triangles(6, 2, 1, 0, 6, 1, 4, 0),
    gsSP2Triangles(7, 2, 6, 0, 7, 3, 2, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kinsuta_room_0Tex_008910, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&kinsuta_room_0Vtx_0001A0[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx kinsuta_room_0Vtx_0003E0[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Vtx_0003E0.vtx.inc"
};

Gfx kinsuta_room_0DL_000CF0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kinsuta_room_0Vtx_0003E0[137], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kinsuta_room_0Tex_008D10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kinsuta_room_0Vtx_0003E0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kinsuta_room_0Vtx_0003E0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kinsuta_room_0Vtx_0003E0[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 0, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 15, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&kinsuta_room_0Vtx_0003E0[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&kinsuta_room_0Vtx_0003E0[125], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx kinsuta_room_0Vtx_000ED8[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Vtx_000ED8.vtx.inc"
};

Gfx kinsuta_room_0DL_0013E8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kinsuta_room_0Vtx_000ED8[73], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kinsuta_room_0Tex_009D10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kinsuta_room_0Vtx_000ED8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kinsuta_room_0Tex_008D10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kinsuta_room_0Vtx_000ED8[8], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(kinsuta_room_0Tex_003110, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, kinsuta_room_0TLUT_0030F0),
    gsSPVertex(&kinsuta_room_0Vtx_000ED8[24], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(5, 8, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(6, 7, 10, 0, 5, 11, 8, 0),
    gsSP2Triangles(7, 12, 13, 0, 7, 13, 10, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(0, 16, 17, 0, 0, 17, 1, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 1, 0),
    gsSP2Triangles(16, 20, 17, 0, 16, 21, 22, 0),
    gsSP2Triangles(16, 22, 20, 0, 16, 23, 21, 0),
    gsSP2Triangles(16, 10, 23, 0, 23, 24, 21, 0),
    gsSP2Triangles(24, 25, 21, 0, 10, 26, 23, 0),
    gsSP2Triangles(10, 27, 26, 0, 10, 28, 27, 0),
    gsSP2Triangles(10, 29, 28, 0, 10, 13, 29, 0),
    gsSP2Triangles(28, 30, 31, 0, 28, 31, 27, 0),
    gsSPVertex(&kinsuta_room_0Vtx_000ED8[56], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(4, 8, 9, 0, 4, 9, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&kinsuta_room_0Vtx_000ED8[66], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(1, 5, 2, 0, 5, 6, 2, 0),
    gsSP2Triangles(6, 3, 2, 0, 0, 2, 4, 0),
    gsSPEndDisplayList(),
};

Vtx kinsuta_room_0Vtx_001668[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Vtx_001668.vtx.inc"
};

Gfx kinsuta_room_0DL_001B38[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kinsuta_room_0Vtx_001668[69], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(kinsuta_room_0Tex_005910, G_IM_FMT_I, 64, 128, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 175, 150, 120, 255),
    gsSPVertex(kinsuta_room_0Vtx_001668, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 2, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 20, 18, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 24, 22, 0),
    gsSP2Triangles(25, 26, 27, 0, 26, 28, 27, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&kinsuta_room_0Vtx_001668[32], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(kinsuta_room_0Tex_004910, G_IM_FMT_I, 64, 128, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kinsuta_room_0Vtx_001668[35], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(11, 12, 10, 0, 12, 13, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(kinsuta_room_0Tex_003910, G_IM_FMT_I, 64, 128, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kinsuta_room_0Vtx_001668[53], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 0, 2, 0),
    gsSP2Triangles(4, 14, 5, 0, 11, 15, 12, 0),
    gsSPEndDisplayList(),
};

Vtx kinsuta_room_0Vtx_001D18[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Vtx_001D18.vtx.inc"
};

Gfx kinsuta_room_0DL_001F78[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kinsuta_room_0Vtx_001D18[30], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(kinsuta_room_0Tex_003110, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, kinsuta_room_0TLUT_0030F0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kinsuta_room_0Vtx_001D18, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(5, 6, 3, 0, 5, 3, 2, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 11, 7, 0),
    gsSP2Triangles(10, 7, 9, 0, 12, 10, 9, 0),
    gsSP2Triangles(9, 8, 13, 0, 14, 12, 9, 0),
    gsSP2Triangles(14, 9, 13, 0, 15, 14, 13, 0),
    gsSP2Triangles(13, 8, 16, 0, 17, 15, 13, 0),
    gsSP2Triangles(17, 13, 16, 0, 18, 17, 16, 0),
    gsSP2Triangles(16, 19, 20, 0, 21, 18, 16, 0),
    gsSP2Triangles(21, 16, 20, 0, 22, 21, 20, 0),
    gsSP2Triangles(23, 11, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(19, 23, 25, 0, 20, 19, 26, 0),
    gsSP2Triangles(27, 22, 20, 0, 27, 20, 26, 0),
    gsSP2Triangles(28, 19, 25, 0, 27, 28, 29, 0),
    gsSP2Triangles(28, 25, 29, 0, 25, 24, 29, 0),
    gsSPEndDisplayList(),
};

Vtx kinsuta_room_0Vtx_0020D8[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Vtx_0020D8.vtx.inc"
};

Gfx kinsuta_room_0DL_002BC8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kinsuta_room_0Vtx_0020D8[167], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kinsuta_room_0Tex_009D10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kinsuta_room_0Vtx_0020D8, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 15, 0, 18, 15, 14, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(27, 26, 28, 0, 27, 28, 29, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kinsuta_room_0Tex_008D10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kinsuta_room_0Vtx_0020D8[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(13, 16, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 17, 21, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&kinsuta_room_0Vtx_0020D8[60], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(25, 28, 26, 0, 29, 30, 31, 0),
    gsSPVertex(&kinsuta_room_0Vtx_0020D8[92], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&kinsuta_room_0Vtx_0020D8[123], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kinsuta_room_0Tex_006910, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kinsuta_room_0Vtx_0020D8[131], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&kinsuta_room_0Vtx_0020D8[163], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx kinsuta_room_0Vtx_002E88[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Vtx_002E88.vtx.inc"
};

Gfx kinsuta_room_0DL_002FD8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kinsuta_room_0Vtx_002E88[13], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kinsuta_room_0Tex_007910, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kinsuta_room_0Vtx_002E88, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 5, 9, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 11, 12, 8, 0),
    gsSP1Triangle(11, 8, 10, 0),
    gsSPEndDisplayList(),
};

Gfx gKinsutaDL_0030B0[] = {
    gsSPDisplayList(kinsuta_room_0DL_0002E0),
    gsSPDisplayList(kinsuta_room_0DL_000CF0),
    gsSPDisplayList(kinsuta_room_0DL_0013E8),
    gsSPDisplayList(kinsuta_room_0DL_001B38),
    gsSPDisplayList(kinsuta_room_0DL_001F78),
    gsSPDisplayList(kinsuta_room_0DL_002BC8),
    gsSPDisplayList(kinsuta_room_0DL_002FD8),
    gsSPEndDisplayList(),
};

u64 kinsuta_room_0TLUT_0030F0[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0TLUT_0030F0.rgba16.inc.c"
};

u64 kinsuta_room_0Tex_003110[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Tex_003110.ci4.inc.c"
};

u64 kinsuta_room_0Tex_003910[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Tex_003910.i4.inc.c"
};

u64 kinsuta_room_0Tex_004910[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Tex_004910.i4.inc.c"
};

u64 kinsuta_room_0Tex_005910[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Tex_005910.i4.inc.c"
};

u64 kinsuta_room_0Tex_006910[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Tex_006910.rgba16.inc.c"
};

u64 kinsuta_room_0Tex_007910[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Tex_007910.rgba16.inc.c"
};

u64 kinsuta_room_0Tex_008910[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Tex_008910.i8.inc.c"
};

u64 kinsuta_room_0Tex_008D10[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Tex_008D10.rgba16.inc.c"
};

u64 kinsuta_room_0Tex_009D10[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Tex_009D10.rgba16.inc.c"
};

Vtx kinsuta_room_0Vtx_00A110[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Vtx_00A110.vtx.inc"
};

Gfx kinsuta_room_0DL_00ACE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kinsuta_room_0Vtx_00A110[181], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kinsuta_room_0Tex_00D098, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kinsuta_room_0Vtx_00A110, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 3, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(9, 11, 12, 0, 9, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 14, 0, 18, 14, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 24, 0, 25, 27, 26, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kinsuta_room_0Tex_00C098, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kinsuta_room_0Vtx_00A110[28], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 1, 6, 0),
    gsSP2Triangles(5, 6, 7, 0, 4, 5, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kinsuta_room_0Tex_00D098, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&kinsuta_room_0Vtx_00A110[36], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 7, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0),
    gsSP2Triangles(15, 16, 13, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(22, 18, 23, 0, 24, 22, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP2Triangles(29, 30, 25, 0, 29, 25, 31, 0),
    gsSPVertex(&kinsuta_room_0Vtx_00A110[68], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 3, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(16, 18, 19, 0, 16, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 26, 28, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kinsuta_room_0Tex_00C098, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kinsuta_room_0Vtx_00A110[97], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 6, 0, 8, 10, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
    gsSP2Triangles(11, 15, 16, 0, 15, 14, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 20, 18, 0),
    gsSP2Triangles(21, 22, 19, 0, 21, 23, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 28, 30, 29, 0),
    gsSPVertex(&kinsuta_room_0Vtx_00A110[128], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(11, 12, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP1Triangle(22, 28, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kinsuta_room_0Tex_00B098, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kinsuta_room_0Vtx_00A110[157], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(2, 5, 4, 0, 6, 7, 8, 0),
    gsSP2Triangles(7, 9, 8, 0, 6, 10, 7, 0),
    gsSP2Triangles(10, 11, 7, 0, 11, 12, 7, 0),
    gsSP2Triangles(12, 9, 7, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 14, 17, 15, 0),
    gsSP2Triangles(14, 18, 17, 0, 16, 19, 14, 0),
    gsSP2Triangles(19, 20, 14, 0, 20, 21, 14, 0),
    gsSP2Triangles(21, 18, 14, 0, 2, 22, 5, 0),
    gsSP2Triangles(1, 22, 2, 0, 3, 23, 2, 0),
    gsSP1Triangle(23, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gKinsutaDL_00B088[] = {
    gsSPDisplayList(kinsuta_room_0DL_00ACE0),
    gsSPEndDisplayList(),
};

u64 kinsuta_room_0Tex_00B098[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Tex_00B098.ia16.inc.c"
};

u64 kinsuta_room_0Tex_00C098[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Tex_00C098.i8.inc.c"
};

u64 kinsuta_room_0Tex_00D098[] = {
#include "assets/scenes/misc/kinsuta/kinsuta_room_0Tex_00D098.i8.inc.c"
};

