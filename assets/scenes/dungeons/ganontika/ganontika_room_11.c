#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ganontika_room_11.h"
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
#include "ganontika_room_12.h"
#include "ganontika_room_13.h"
#include "ganontika_room_14.h"
#include "ganontika_room_15.h"
#include "ganontika_room_16.h"
#include "ganontika_room_17.h"
#include "ganontika_room_18.h"
#include "ganontika_room_19.h"

SceneCmd ganontika_room_11Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(6),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, true, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ganontika_room_11PolygonType2_0000B0),
    SCENE_CMD_OBJECT_LIST(7, ganontika_room_11ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(6, ganontika_room_11ActorList_000050),
    SCENE_CMD_END(),
};

s16 ganontika_room_11ObjectList_000040[] = {
    OBJECT_DEMO_KEKKAI,
    OBJECT_ZF,
    OBJECT_DEMO_6K,
    OBJECT_GI_MEDAL,
    OBJECT_RL,
    OBJECT_WARP2,
    OBJECT_ST,
};

ActorEntry ganontika_room_11ActorList_000050[] = {
    { ACTOR_DEMO_KEKKAI, {  -4149,   -180,   -840 }, {      0, 0X4000,      0 }, 0x0002 },
    { ACTOR_EN_RL,       {  -4148,    -60,   -839 }, { 0X2000, 0X4000,      0 }, 0x0002 },
    { ACTOR_EN_LIGHT,    {  -4034,   -170,   -948 }, {      0,      0,      0 }, 0x03FA },
    { ACTOR_EN_LIGHT,    {  -4037,   -170,   -727 }, {      0,      0,      0 }, 0x03FA },
    { ACTOR_OBJ_TSUBO,   {  -3842,   -210,   -759 }, {      0,      0,      0 }, 0x760E },
    { ACTOR_OBJ_TSUBO,   {  -3845,   -210,   -933 }, {      0,      0,      0 }, 0x7803 },
};

PolygonType2 ganontika_room_11PolygonType2_0000B0 = { 
    2, 10,
    ganontika_room_11PolygonDlist2_0000BC,
    ganontika_room_11PolygonDlist2_0000BC + ARRAY_COUNTU(ganontika_room_11PolygonDlist2_0000BC)
};

PolygonDlist2 ganontika_room_11PolygonDlist2_0000BC[10] = {
    { {  -3719,   -100,   -840 },    181, ganontika_room_11DL_000390, NULL },
    { {  -3799,     20,   -840 },    120, ganontika_room_11DL_000580, NULL },
    { {  -4127,   -195,   -840 },    176, ganontika_room_11DL_000878, NULL },
    { {  -4149,     85,   -820 },    150, ganontika_room_11DL_000E60, NULL },
    { {  -3955,     75,   -852 },    182, ganontika_room_11DL_0015B8, NULL },
    { {  -4037,   -180,   -728 },     39, ganontika_room_11DL_001D20, NULL },
    { {  -4037,   -180,   -953 },     39, ganontika_room_11DL_002530, NULL },
    { {  -3939,   -210,   -840 },    384, ganontika_room_11DL_0029D0, NULL },
    { {  -4019,    -30,   -840 },    372, ganontika_room_11DL_0034D8, NULL },
    { {  -4127,   -195,   -840 },    176, ganontika_room_11DL_003F60, NULL },
};

s32 ganontika_room_11_terminatorMaybe_00015C = { 0x01000000 };

Vtx ganontika_room_11Vtx_000160[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Vtx_000160.vtx.inc"
};

Gfx ganontika_room_11DL_000390[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_11Vtx_000160[27], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_11Tex_004950, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_11Vtx_000160, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 11, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 21, 20, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 25, 24, 0, 24, 16, 26, 0),
    gsSP2Triangles(16, 18, 26, 0, 20, 19, 17, 0),
    gsSP1Triangle(19, 18, 17, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_11Vtx_0004C0[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Vtx_0004C0.vtx.inc"
};

Gfx ganontika_room_11DL_000580[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_11Vtx_0004C0[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F580, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_11Vtx_0004C0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_11Vtx_000638[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Vtx_000638.vtx.inc"
};

Gfx ganontika_room_11DL_000878[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_11Vtx_000638[28], 8, 0),
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
    gsSPVertex(ganontika_room_11Vtx_000638, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 5, 8, 0, 5, 9, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 11, 10, 0, 14, 15, 11, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_11Tex_006150, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_000638[24], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_11Vtx_0009B0[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Vtx_0009B0.vtx.inc"
};

Gfx ganontika_room_11DL_000E60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_11Vtx_0009B0[67], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_11Tex_005150, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_11Vtx_0009B0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 9, 6, 0),
    gsSP2Triangles(7, 6, 10, 0, 6, 11, 10, 0),
    gsSP2Triangles(6, 12, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 13, 17, 14, 0),
    gsSP2Triangles(16, 14, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 18, 21, 20, 0),
    gsSP2Triangles(18, 22, 21, 0, 21, 23, 24, 0),
    gsSP2Triangles(23, 25, 24, 0, 21, 22, 23, 0),
    gsSP2Triangles(25, 23, 26, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 26, 5, 0, 27, 5, 28, 0),
    gsSP2Triangles(26, 9, 5, 0, 3, 29, 30, 0),
    gsSP2Triangles(3, 30, 31, 0, 29, 0, 30, 0),
    gsSPVertex(&ganontika_room_11Vtx_0009B0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 16, 1, 0, 17, 1, 0, 0),
    gsSP2Triangles(18, 2, 1, 0, 19, 4, 2, 0),
    gsSP2Triangles(20, 8, 7, 0, 21, 10, 8, 0),
    gsSP2Triangles(22, 12, 10, 0, 19, 14, 12, 0),
    gsSP2Triangles(23, 16, 14, 0, 24, 1, 16, 0),
    gsSP2Triangles(25, 26, 27, 0, 26, 25, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&ganontika_room_11Vtx_0009B0[64], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_11Vtx_001038[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Vtx_001038.vtx.inc"
};

Gfx ganontika_room_11DL_0015B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_11Vtx_001038[80], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_11Tex_005150, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_11Vtx_001038, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 6, 0, 9, 6, 5, 0),
    gsSP2Triangles(11, 12, 10, 0, 11, 10, 9, 0),
    gsSP2Triangles(13, 14, 12, 0, 13, 12, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 16, 0, 23, 16, 15, 0),
    gsSP2Triangles(25, 26, 20, 0, 25, 20, 19, 0),
    gsSP2Triangles(27, 28, 24, 0, 27, 24, 23, 0),
    gsSP2Triangles(29, 30, 26, 0, 29, 26, 25, 0),
    gsSPVertex(&ganontika_room_11Vtx_001038[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(16, 17, 15, 0, 16, 15, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0),
    gsSP2Triangles(18, 22, 21, 0, 18, 23, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 20, 25, 0),
    gsSP2Triangles(24, 27, 23, 0, 24, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&ganontika_room_11Vtx_001038[62], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 1, 7, 3, 0),
    gsSP2Triangles(1, 3, 2, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 11, 9, 0, 11, 12, 9, 0),
    gsSP2Triangles(12, 13, 9, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 16, 17, 15, 0),
    gsSP1Triangle(17, 10, 15, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_11Vtx_001790[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Vtx_001790.vtx.inc"
};

Gfx ganontika_room_11DL_001D20[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_11Vtx_001790[81], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_sceneTex_01FF80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_11Vtx_001790, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 22, 20, 0),
    gsSP2Triangles(22, 23, 20, 0, 22, 24, 23, 0),
    gsSP2Triangles(24, 25, 23, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 29, 27, 0, 26, 30, 29, 0),
    gsSP1Triangle(30, 31, 29, 0),
    gsSPVertex(&ganontika_room_11Vtx_001790[32], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 1, 0, 0),
    gsSP2Triangles(9, 10, 1, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP1Triangle(19, 21, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&ganontika_room_11Vtx_001790[55], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_sceneTex_01FF80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ganontika_room_11Vtx_001790[63], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 16, 1, 0, 17, 1, 0, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_11Vtx_001FA0[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Vtx_001FA0.vtx.inc"
};

Gfx ganontika_room_11DL_002530[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_11Vtx_001FA0[81], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_sceneTex_01FF80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_11Vtx_001FA0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 22, 20, 0),
    gsSP2Triangles(22, 23, 20, 0, 22, 24, 23, 0),
    gsSP2Triangles(24, 25, 23, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 29, 27, 0, 26, 30, 29, 0),
    gsSP1Triangle(30, 31, 29, 0),
    gsSPVertex(&ganontika_room_11Vtx_001FA0[32], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 1, 0, 0),
    gsSP2Triangles(9, 10, 1, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP1Triangle(19, 21, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&ganontika_room_11Vtx_001FA0[55], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_sceneTex_01FF80, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ganontika_room_11Vtx_001FA0[63], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 16, 1, 0, 17, 1, 0, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_11Vtx_0027B0[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Vtx_0027B0.vtx.inc"
};

Gfx ganontika_room_11DL_0029D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_11Vtx_0027B0[26], 8, 0),
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
    gsSPVertex(ganontika_room_11Vtx_0027B0, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 11, 12, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 16, 14, 0),
    gsSP2Triangles(12, 17, 16, 0, 16, 4, 14, 0),
    gsSP2Triangles(12, 15, 13, 0, 15, 14, 18, 0),
    gsSP2Triangles(14, 19, 18, 0, 19, 20, 18, 0),
    gsSP2Triangles(14, 4, 19, 0, 21, 15, 18, 0),
    gsSP2Triangles(21, 18, 22, 0, 18, 23, 22, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_11Vtx_002AD8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Vtx_002AD8.vtx.inc"
};

Gfx ganontika_room_11DL_0034D8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[152], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_11Tex_004950, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_11Vtx_002AD8, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F580, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[6], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 10, 0),
    gsSP2Triangles(11, 12, 3, 0, 11, 3, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_11Tex_005950, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[20], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 10, 0),
    gsSP2Triangles(4, 7, 13, 0, 1, 0, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 18, 16, 0),
    gsSP2Triangles(18, 19, 16, 0, 20, 21, 22, 0),
    gsSP2Triangles(21, 15, 22, 0, 20, 18, 21, 0),
    gsSP1Triangle(18, 15, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F580, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[43], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[75], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[79], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_11Tex_004950, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[83], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[87], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_11Tex_004950, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[91], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[95], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_11Tex_004950, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[99], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[103], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_11Tex_004950, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[107], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[111], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_11Tex_004950, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[115], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[119], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_11Tex_004950, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[123], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[127], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_11Tex_004950, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[131], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[139], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_room_11Tex_004150, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[143], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_11Tex_005950, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_002AD8[148], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_11Vtx_003CF0[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Vtx_003CF0.vtx.inc"
};

Gfx ganontika_room_11DL_003F60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_11Vtx_003CF0[31], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_11Tex_006150, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_11Vtx_003CF0, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 2, 0, 7, 6, 2, 0),
    gsSP2Triangles(8, 9, 5, 0, 4, 8, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 10, 12, 0, 17, 16, 12, 0),
    gsSP2Triangles(18, 19, 15, 0, 14, 18, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020B80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_003CF0[20], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP1Triangle(1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_11Tex_006150, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_11Vtx_003CF0[25], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(1, 4, 3, 0, 4, 1, 5, 0),
    gsSP1Triangle(1, 0, 5, 0),
    gsSPEndDisplayList(),
};

u8 ganontika_room_11_unaccounted_0040F8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x05, 0x80, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x08, 0x78, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0x60, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x15, 0xB8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0x20, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x25, 0x30, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x29, 0xD0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x34, 0xD8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3F, 0x60, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ganontika_room_11Tex_004150[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Tex_004150.rgba16.inc.c"
};

u64 ganontika_room_11Tex_004950[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Tex_004950.ci8.inc.c"
};

u64 ganontika_room_11Tex_005150[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Tex_005150.ci8.inc.c"
};

u64 ganontika_room_11Tex_005950[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Tex_005950.rgba16.inc.c"
};

u64 ganontika_room_11Tex_006150[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_11Tex_006150.rgba16.inc.c"
};

