#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HIDAN_room_7.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HIDAN_scene.h"
#include "HIDAN_room_0.h"
#include "HIDAN_room_1.h"
#include "HIDAN_room_2.h"
#include "HIDAN_room_3.h"
#include "HIDAN_room_4.h"
#include "HIDAN_room_5.h"
#include "HIDAN_room_6.h"
#include "HIDAN_room_8.h"
#include "HIDAN_room_9.h"
#include "HIDAN_room_10.h"
#include "HIDAN_room_11.h"
#include "HIDAN_room_12.h"
#include "HIDAN_room_13.h"
#include "HIDAN_room_14.h"
#include "HIDAN_room_15.h"
#include "HIDAN_room_16.h"
#include "HIDAN_room_17.h"
#include "HIDAN_room_18.h"
#include "HIDAN_room_19.h"
#include "HIDAN_room_20.h"
#include "HIDAN_room_21.h"
#include "HIDAN_room_22.h"
#include "HIDAN_room_23.h"
#include "HIDAN_room_24.h"
#include "HIDAN_room_25.h"
#include "HIDAN_room_26.h"

SceneCmd HIDAN_room_7Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x02, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HIDAN_room_7PolygonType2_0000E0),
    SCENE_CMD_OBJECT_LIST(3, HIDAN_room_7ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(9, HIDAN_room_7ActorList_000048),
    SCENE_CMD_END(),
};

s16 HIDAN_room_7ObjectList_000040[] = {
    OBJECT_HIDAN_OBJECTS,
    OBJECT_BW,
    OBJECT_D_HSBLOCK,
};

ActorEntry HIDAN_room_7ActorList_000048[] = {
    { ACTOR_OBJ_HSBLOCK,    {   1460,   4248,   -857 }, {      0,      0,      0 }, 0xFFC2 },
    { ACTOR_OBJ_HSBLOCK,    {   1578,   4546,   -710 }, { 0X4000,      0,      0 }, 0xFFC2 },
    { ACTOR_EN_BW,          {   1342,   4000,   -675 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_BW,          {   1470,   4180,   -664 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_EN_WONDER_ITEM, {   1428,   4072,   -711 }, {      0,      0,    0X6 }, 0x18BF },
    { ACTOR_EN_WONDER_ITEM, {   1428,   4072,   -711 }, {      0,      0,    0X6 }, 0x1AFF },
    { ACTOR_EN_WONDER_ITEM, {   1458,   4152,   -374 }, {      0,      0,    0X6 }, 0x18B5 },
    { ACTOR_EN_WONDER_ITEM, {   1458,   4152,   -374 }, {      0,      0,    0X6 }, 0x1AF5 },
    { ACTOR_ELF_MSG2,       {   1457,   4157,   -373 }, {      0,   0X36,    0X1 }, 0x3F00 },
};

u8 HIDAN_room_7_possiblePadding_0000D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 HIDAN_room_7PolygonType2_0000E0 = { 
    2, 2,
    HIDAN_room_7PolygonDlist2_0000EC,
    HIDAN_room_7PolygonDlist2_0000EC + ARRAY_COUNTU(HIDAN_room_7PolygonDlist2_0000EC)
};

PolygonDlist2 HIDAN_room_7PolygonDlist2_0000EC[2] = {
    { {   1460,   4270,   -610 },    422, HIDAN_room_7DL_000C80, NULL },
    { {   1555,   4270,   -730 },    317, HIDAN_room_7DL_001948, NULL },
};

s32 HIDAN_room_7_terminatorMaybe_00010C = { 0x01000000 };

Vtx HIDAN_room_7Vtx_000110[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_7Vtx_000110.vtx.inc"
};

Gfx HIDAN_room_7DL_000C80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_7Vtx_000110[175], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_0189B0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HIDAN_room_7Vtx_000110, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_018BD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[4], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[16], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(4, 8, 5, 0, 8, 7, 5, 0),
    gsSP2Triangles(2, 1, 9, 0, 1, 10, 9, 0),
    gsSP2Triangles(10, 11, 9, 0, 11, 12, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_018BD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[29], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_019DD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[33], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[37], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 4, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_018BD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[45], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[61], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_018BD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[65], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[69], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 10, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 16, 14, 0),
    gsSP2Triangles(17, 18, 15, 0, 17, 15, 14, 0),
    gsSP2Triangles(13, 19, 20, 0, 13, 20, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_018BD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[90], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[94], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_019DD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[112], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[117], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 8, 0, 12, 8, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_018BD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[131], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[135], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_019DD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[139], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_room_7Tex_002648, G_IM_FMT_CI, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[142], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_019DD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[147], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 2, 6, 0),
    gsSP2Triangles(7, 5, 6, 0, 7, 6, 4, 0),
    gsSP1Triangle(3, 7, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_018BD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[155], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 1, 6, 0),
    gsSP2Triangles(1, 0, 6, 0, 5, 4, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_room_7Tex_002A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_7Vtx_000110[162], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_0189B0),
    gsSPVertex(&HIDAN_room_7Vtx_000110[167], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(2, 1, 5, 0, 2, 5, 4, 0),
    gsSP2Triangles(6, 0, 3, 0, 6, 3, 7, 0),
    gsSPEndDisplayList(),
};

Vtx HIDAN_room_7Vtx_001548[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_7Vtx_001548.vtx.inc"
};

Gfx HIDAN_room_7DL_001948[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_7Vtx_001548[56], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HIDAN_room_7Tex_001E48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HIDAN_room_7Vtx_001548, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 2, 4, 0, 2, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_7Tex_001C48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&HIDAN_room_7Vtx_001548[5], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_7Tex_001E48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&HIDAN_room_7Vtx_001548[9], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 5, 0, 4, 2, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_7Tex_001C48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&HIDAN_room_7Vtx_001548[15], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_7Tex_001E48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&HIDAN_room_7Vtx_001548[43], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 1, 0, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_room_7Tex_001C48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&HIDAN_room_7Vtx_001548[48], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 HIDAN_room_7_unaccounted_001C30[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x19, 0x48, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HIDAN_room_7Tex_001C48[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_7Tex_001C48.rgba16.inc.c"
};

u64 HIDAN_room_7Tex_001E48[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_7Tex_001E48.rgba16.inc.c"
};

u64 HIDAN_room_7Tex_002648[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_7Tex_002648.ci4.inc.c"
};

u64 HIDAN_room_7Tex_002A48[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_7Tex_002A48.rgba16.inc.c"
};

