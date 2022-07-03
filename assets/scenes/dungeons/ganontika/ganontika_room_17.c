#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ganontika_room_17.h"
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
#include "ganontika_room_16.h"
#include "ganontika_room_18.h"
#include "ganontika_room_19.h"

SceneCmd ganontika_room_17Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(6),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ganontika_room_17PolygonType2_000190),
    SCENE_CMD_OBJECT_LIST(5, ganontika_room_17ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(20, ganontika_room_17ActorList_00004C),
    SCENE_CMD_END(),
};

s16 ganontika_room_17ObjectList_000040[] = {
    OBJECT_DEMO_KEKKAI,
    OBJECT_JYA_IRON,
    OBJECT_IK,
    OBJECT_BW,
    OBJECT_FIREFLY,
};

ActorEntry ganontika_room_17ActorList_00004C[] = {
    { ACTOR_EN_LIGHT,         {   -676,    256,    922 }, {   0XB6, 0XAAAB,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT,         {   -665,    255,    902 }, {      0, 0XAB61,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT,         {   -680,    255,    906 }, { 0XFF4A, 0XAAAB,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT,         {   -476,    256,    575 }, { 0XFF4A, 0XAAAB,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT,         {   -465,    255,    556 }, {   0XB6, 0XAAAB,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT,         {   -480,    255,    560 }, {      0, 0XAB61,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT,         {   -987,    255,    280 }, {      0, 0X2B61,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT,         {   -976,    255,    260 }, {   0XB6, 0X2AAB,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT,         {   -972,    255,    276 }, {      0, 0X2B61,      0 }, 0x83F0 },
    { ACTOR_EN_BW,            {   -920,    150,    447 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_FIREFLY,       {   -637,    292,    532 }, {      0, 0XCCCD,      0 }, 0x0000 },
    { ACTOR_EN_FIREFLY,       {   -991,    271,    712 }, {      0, 0X9A50,      0 }, 0x0000 },
    { ACTOR_EN_IK,            {   -945,    411,    822 }, {      0, 0X6AAB,      0 }, 0xFF03 },
    { ACTOR_BG_JYA_IRONOBJ,   {   -789,    150,    580 }, {      0,  0XAAB,      0 }, 0x0001 },
    { ACTOR_BG_JYA_IRONOBJ,   {   -839,    150,    551 }, {      0, 0X4E39,      0 }, 0x0001 },
    { ACTOR_BG_JYA_IRONOBJ,   {   -819,    150,    628 }, {      0, 0XCAAB,      0 }, 0x0001 },
    { ACTOR_BG_JYA_IRONOBJ,   {   -867,    150,    600 }, {      0, 0X8AAB,      0 }, 0x0001 },
    { ACTOR_OBJ_SWITCH,       {   -830,    150,    588 }, {      0, 0X1555,      0 }, 0x0F01 },
    { ACTOR_BG_GND_DARKMEIRO, {   -944,    410,    823 }, {      0,      0,      0 }, 0x3701 },
    { ACTOR_OBJ_SWITCH,       {   -626,    321,    244 }, {      0, 0XEAAB,      0 }, 0x3712 },
};

u8 ganontika_room_17_possiblePadding_00018C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 ganontika_room_17PolygonType2_000190 = { 
    2, 7,
    ganontika_room_17PolygonDlist2_00019C,
    ganontika_room_17PolygonDlist2_00019C + ARRAY_COUNTU(ganontika_room_17PolygonDlist2_00019C)
};

PolygonDlist2 ganontika_room_17PolygonDlist2_00019C[7] = {
    { {   -830,    250,    582 },    526, ganontika_room_17DL_000B30, NULL },
    { {   -726,    235,    591 },    426, ganontika_room_17DL_0023B8, NULL },
    { {   -651,    150,    288 },    106, ganontika_room_17DL_001448, NULL },
    { {   -666,    250,    914 },    223, ganontika_room_17DL_001720, NULL },
    { {   -986,    250,    268 },    223, ganontika_room_17DL_001AB8, NULL },
    { {  -1186,    250,    614 },    223, ganontika_room_17DL_001DE0, NULL },
    { {   -827,    150,    591 },     80, ganontika_room_17DL_002908, NULL },
};

s32 ganontika_room_17_terminatorMaybe_00020C = { 0x01000000 };

Vtx ganontika_room_17Vtx_000210[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Vtx_000210.vtx.inc"
};

Gfx ganontika_room_17DL_000B30[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_17Vtx_000210[138], 8, 0),
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
    gsSPVertex(ganontika_room_17Vtx_000210, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_17Vtx_000210[6], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F580, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_000210[10], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 4, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_17Vtx_000210[17], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F580, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_000210[21], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_005618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_000210[24], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_17Vtx_000210[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 4, 5, 3, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 6, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_room_17Tex_005618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_000210[62], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 3, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 9, 8, 0, 12, 9, 13, 0),
    gsSP2Triangles(7, 14, 3, 0, 14, 4, 3, 0),
    gsSP2Triangles(9, 15, 10, 0, 9, 12, 15, 0),
    gsSP2Triangles(15, 4, 14, 0, 15, 12, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_007618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_000210[78], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
    gsSP2Triangles(6, 5, 0, 0, 2, 6, 0, 0),
    gsSP2Triangles(6, 2, 7, 0, 8, 5, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 8, 7, 9, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP1Triangle(8, 11, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_17Vtx_000210[90], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_002A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_000210[96], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(1, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_000210[101], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(0, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_002A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_000210[106], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(1, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_000210[111], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 0, 0, 5, 1, 0, 0),
    gsSP2Triangles(6, 1, 5, 0, 6, 7, 1, 0),
    gsSP2Triangles(1, 7, 8, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 10, 8, 0, 1, 8, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_room_17Tex_005618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_000210[122], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_17Vtx_000210[126], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 3, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 6, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_002A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_000210[133], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(3, 4, 2, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_17Vtx_001318[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Vtx_001318.vtx.inc"
};

Gfx ganontika_room_17DL_001448[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_17Vtx_001318[11], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_17Tex_006E18, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_17Vtx_001318, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP1Triangle(0, 10, 1, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_17Vtx_001540[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Vtx_001540.vtx.inc"
};

Gfx ganontika_room_17DL_001720[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_17Vtx_001540[22], 8, 0),
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
    gsSPVertex(ganontika_room_17Vtx_001540, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_002A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_001540[6], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(0, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_001540[11], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 1, 6, 0, 1, 7, 6, 0),
    gsSP2Triangles(8, 7, 1, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 7, 0, 0, 8, 1, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_17Vtx_0018D8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Vtx_0018D8.vtx.inc"
};

Gfx ganontika_room_17DL_001AB8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_17Vtx_0018D8[22], 8, 0),
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
    gsSPVertex(ganontika_room_17Vtx_0018D8, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_002A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_0018D8[6], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(1, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_0018D8[11], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 0, 0, 5, 1, 0, 0),
    gsSP2Triangles(6, 1, 5, 0, 6, 7, 1, 0),
    gsSP2Triangles(1, 7, 8, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 10, 8, 0, 1, 8, 2, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_17Vtx_001C70[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Vtx_001C70.vtx.inc"
};

Gfx ganontika_room_17DL_001DE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_17Vtx_001C70[15], 8, 0),
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
    gsSPVertex(ganontika_room_17Vtx_001C70, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_002A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_001C70[4], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(1, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_001C70[9], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 5, 4, 2, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_17Vtx_001F78[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Vtx_001F78.vtx.inc"
};

Gfx ganontika_room_17DL_0023B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_17Vtx_001F78[60], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_17Tex_004E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_17Vtx_001F78, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(2, 4, 0, 0, 4, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_003E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&ganontika_room_17Vtx_001F78[5], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 3, 0),
    gsSP1Triangle(7, 3, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_002E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_001F78[14], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_004E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&ganontika_room_17Vtx_001F78[20], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(2, 4, 0, 0, 3, 0, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_003E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&ganontika_room_17Vtx_001F78[25], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0),
    gsSP1Triangle(3, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_002E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_001F78[34], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_004E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&ganontika_room_17Vtx_001F78[40], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(2, 4, 0, 0, 4, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_003E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&ganontika_room_17Vtx_001F78[45], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 3, 0),
    gsSP1Triangle(7, 3, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_17Tex_002E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_17Vtx_001F78[54], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_17Vtx_002778[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Vtx_002778.vtx.inc"
};

Gfx ganontika_room_17DL_002908[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_17Vtx_002778[17], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_17Tex_006618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_DECAL2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_17Vtx_002778, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 1, 6, 0, 7, 1, 8, 0),
    gsSP2Triangles(9, 1, 10, 0, 11, 1, 12, 0),
    gsSP2Triangles(13, 1, 14, 0, 15, 1, 16, 0),
    gsSPEndDisplayList(),
};

u8 ganontika_room_17_unaccounted_0029D8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0x30, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0x48, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0xB8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x23, 0xB8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x29, 0x08, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ganontika_room_17Tex_002A18[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Tex_002A18.ci8.inc.c"
};

u64 ganontika_room_17Tex_002E18[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Tex_002E18.rgba16.inc.c"
};

u64 ganontika_room_17Tex_003E18[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Tex_003E18.rgba16.inc.c"
};

u64 ganontika_room_17Tex_004E18[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Tex_004E18.rgba16.inc.c"
};

u64 ganontika_room_17Tex_005618[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Tex_005618.rgba16.inc.c"
};

u64 ganontika_room_17Tex_006618[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Tex_006618.rgba16.inc.c"
};

u64 ganontika_room_17Tex_006E18[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Tex_006E18.ci8.inc.c"
};

u64 ganontika_room_17Tex_007618[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_17Tex_007618.rgba16.inc.c"
};

