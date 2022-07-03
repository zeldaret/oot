#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "men_room_6.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "men_scene.h"
#include "men_room_0.h"
#include "men_room_1.h"
#include "men_room_2.h"
#include "men_room_3.h"
#include "men_room_4.h"
#include "men_room_5.h"
#include "men_room_7.h"
#include "men_room_8.h"
#include "men_room_9.h"
#include "men_room_10.h"

SceneCmd men_room_6Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&men_room_6PolygonType2_0001E0),
    SCENE_CMD_OBJECT_LIST(9, men_room_6ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(24, men_room_6ActorList_000054),
    SCENE_CMD_END(),
};

s16 men_room_6ObjectList_000040[] = {
    OBJECT_MENKURI_OBJECTS,
    OBJECT_DDAN_OBJECTS,
    OBJECT_BB,
    OBJECT_D_HSBLOCK,
    OBJECT_SYOKUDAI,
    OBJECT_BOX,
    OBJECT_DEMO_KEKKAI,
    OBJECT_KIBAKO2,
    OBJECT_WALLMASTER,
};

ActorEntry men_room_6ActorList_000054[] = {
    { ACTOR_OBJ_SYOKUDAI,     {   1429,   -239,  -1065 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_EN_BB,            {   1355,   -291,  -1913 }, {      0,      0,      0 }, 0xFFFE },
    { ACTOR_EN_BB,            {   1656,   -291,  -1586 }, {      0,      0,      0 }, 0xFFFE },
    { ACTOR_EN_BB,            {   1401,   -308,  -1385 }, {      0,      0,      0 }, 0xFFFE },
    { ACTOR_OBJ_SWITCH,       {   1507,    -81,  -2175 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_OBJ_HSBLOCK,      {   1050,    -79,  -1520 }, {      0,      0,      0 }, 0x00C1 },
    { ACTOR_EN_G_SWITCH,      {   1492,   -214,  -1558 }, {      0,      0,      0 }, 0x018C },
    { ACTOR_EN_G_SWITCH,      {   1560,   -239,  -1861 }, {      0,      0,      0 }, 0x1FCC },
    { ACTOR_EN_G_SWITCH,      {   1134,   -239,  -1841 }, {      0,      0,      0 }, 0x1FCC },
    { ACTOR_EN_G_SWITCH,      {   1404,   -239,  -1653 }, {      0,      0,      0 }, 0x1FCC },
    { ACTOR_EN_G_SWITCH,      {   1560,   -239,  -1380 }, {      0,      0,      0 }, 0x1FCC },
    { ACTOR_EN_G_SWITCH,      {   1083,   -239,  -1374 }, {      0,      0,      0 }, 0x1FCC },
    { ACTOR_EN_G_SWITCH,      {   1317,   -239,  -1243 }, {      0,      0,      0 }, 0x1FCC },
    { ACTOR_OBJ_HSBLOCK,      {   1334,   -389,  -1864 }, {      0,      0,      0 }, 0x0CC1 },
    { ACTOR_OBJ_HSBLOCK,      {   1233,   -389,  -1653 }, {      0,      0,      0 }, 0x0CC1 },
    { ACTOR_OBJ_HSBLOCK,      {   1601,   -390,  -1636 }, {      0,      0,      0 }, 0x0CC1 },
    { ACTOR_EN_WONDER_TALK2,  {   1483,   -214,   -784 }, {      0,      0,    0XB }, 0x4D16 },
    { ACTOR_OBJ_SYOKUDAI,     {   1821,   -240,  -1511 }, {      0,      0,      0 }, 0x107F },
    { ACTOR_BG_HIDAN_CURTAIN, {   1561,   -239,  -1858 }, {      0,      0,      0 }, 0x207F },
    { ACTOR_BG_HIDAN_CURTAIN, {   1135,   -239,  -1842 }, {      0,      0,      0 }, 0x207F },
    { ACTOR_BG_HIDAN_CURTAIN, {   1406,   -239,  -1654 }, {      0,      0,      0 }, 0x207F },
    { ACTOR_BG_HIDAN_CURTAIN, {   1561,   -239,  -1380 }, {      0,      0,      0 }, 0x207F },
    { ACTOR_BG_HIDAN_CURTAIN, {   1085,   -239,  -1370 }, {      0,      0,      0 }, 0x207F },
    { ACTOR_BG_HIDAN_CURTAIN, {   1315,   -239,  -1245 }, {      0,      0,      0 }, 0x207F },
};

u8 men_room_6_possiblePadding_0001D4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 men_room_6PolygonType2_0001E0 = { 
    2, 10,
    men_room_6PolygonDlist2_0001EC,
    men_room_6PolygonDlist2_0001EC + ARRAY_COUNTU(men_room_6PolygonDlist2_0001EC)
};

PolygonDlist2 men_room_6PolygonDlist2_0001EC[10] = {
    { {   1441,    -94,  -2168 },    425, men_room_6DL_0003D0, NULL },
    { {    910,     20,  -1520 },    168, men_room_6DL_001068, NULL },
    { {   1471,    -45,  -1611 },    768, men_room_6DL_000C68, NULL },
    { {    990,   -235,  -1520 },    257, men_room_6DL_0013D0, NULL },
    { {   1912,   -160,  -1464 },    100, men_room_6DL_0017B8, NULL },
    { {   1441,   -390,  -1612 },    673, men_room_6DL_003B90, NULL },
    { {   1441,   -236,  -1612 },    633, men_room_6DL_002530, NULL },
    { {   1480,    -49,   -806 },    293, men_room_6DL_002DE8, NULL },
    { {   1442,     34,  -2311 },    193, men_room_6DL_0034F0, NULL },
    { {   1050,    -80,  -1520 },     35, men_room_6DL_003E60, NULL },
};

s32 men_room_6_terminatorMaybe_00028C = { 0x01000000 };

Vtx men_room_6Vtx_000290[] = {
#include "assets/scenes/dungeons/men/men_room_6Vtx_000290.vtx.inc"
};

Gfx men_room_6DL_0003D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_6Vtx_000290[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_6Tex_006378, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_6Vtx_000290, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 7, 0, 6, 4, 3, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 10, 11, 0),
    gsSP2Triangles(2, 1, 5, 0, 1, 3, 5, 0),
    gsSP2Triangles(10, 8, 11, 0, 8, 7, 11, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_6Vtx_0004D8[] = {
#include "assets/scenes/dungeons/men/men_room_6Vtx_0004D8.vtx.inc"
};

Gfx men_room_6DL_000C68[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_6Vtx_0004D8[113], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_6Tex_006378, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_6Vtx_0004D8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 4, 0, 9, 5, 4, 0),
    gsSP2Triangles(0, 10, 3, 0, 10, 11, 3, 0),
    gsSP2Triangles(11, 4, 3, 0, 11, 8, 4, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(12, 18, 13, 0, 18, 19, 13, 0),
    gsSP2Triangles(20, 21, 15, 0, 21, 16, 15, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 29, 28, 0),
    gsSP2Triangles(30, 31, 26, 0, 31, 27, 26, 0),
    gsSPVertex(&men_room_6Vtx_0004D8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 6, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 12, 0, 11, 14, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 17, 0),
    gsSP2Triangles(16, 19, 17, 0, 20, 21, 17, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 25, 24, 0),
    gsSP2Triangles(23, 26, 25, 0, 26, 27, 25, 0),
    gsSP2Triangles(25, 21, 24, 0, 27, 28, 25, 0),
    gsSP2Triangles(29, 30, 25, 0, 28, 29, 25, 0),
    gsSP2Triangles(30, 21, 25, 0, 29, 31, 30, 0),
    gsSPVertex(&men_room_6Vtx_0004D8[64], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 8, 9, 6, 0),
    gsSP2Triangles(8, 10, 9, 0, 10, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 7, 12, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_6Tex_004F78, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_0004D8[79], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(1, 4, 5, 0, 2, 1, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_6Tex_006378, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_0004D8[85], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 4, 7, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 6, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 18, 0, 17, 20, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 25, 0, 24, 26, 25, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_6Vtx_000F28[] = {
#include "assets/scenes/dungeons/men/men_room_6Vtx_000F28.vtx.inc"
};

Gfx men_room_6DL_001068[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_6Vtx_000F28[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_6Vtx_000F28, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_0108C0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_000F28[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_000F28[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_6Vtx_0011F0[] = {
#include "assets/scenes/dungeons/men/men_room_6Vtx_0011F0.vtx.inc"
};

Gfx men_room_6DL_0013D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_6Vtx_0011F0[22], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_6Tex_007378, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_6Vtx_0011F0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(3, 4, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_6Tex_007378, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&men_room_6Vtx_0011F0[5], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(1, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_0011F0[10], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_6Vtx_0015D8[] = {
#include "assets/scenes/dungeons/men/men_room_6Vtx_0015D8.vtx.inc"
};

Gfx men_room_6DL_0017B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_6Vtx_0015D8[22], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_6Vtx_0015D8, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 3, 5, 4, 0),
    gsSP2Triangles(0, 6, 1, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 9, 3, 0, 9, 5, 3, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 14, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 18, 20, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_6Vtx_0018D0[] = {
#include "assets/scenes/dungeons/men/men_room_6Vtx_0018D0.vtx.inc"
};

Gfx men_room_6DL_002530[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_6Vtx_0018D0[190], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_6Tex_004F78, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_6Vtx_0018D0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 2, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_6Tex_005B78, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_0018D0[6], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 1, 0, 13, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_6Tex_004F78, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_0018D0[20], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0),
    gsSP2Triangles(5, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 11, 13, 15, 0),
    gsSP2Triangles(11, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 18, 21, 20, 0),
    gsSP2Triangles(18, 22, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 23, 26, 27, 0),
    gsSP2Triangles(28, 23, 27, 0, 29, 30, 31, 0),
    gsSPVertex(&men_room_6Vtx_0018D0[52], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP1Triangle(1, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_6Tex_005B78, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_0018D0[58], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&men_room_6Vtx_0018D0[90], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&men_room_6Vtx_0018D0[120], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 1, 0, 13, 1, 0, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 14, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&men_room_6Vtx_0018D0[150], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsSP2Triangles(3, 2, 13, 0, 3, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 19, 0, 22, 19, 18, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 23, 22, 0),
    gsSP2Triangles(26, 27, 25, 0, 26, 25, 24, 0),
    gsSP2Triangles(17, 16, 27, 0, 17, 27, 26, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_6Tex_004F78, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_0018D0[178], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(6, 10, 9, 0, 6, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_6Vtx_002948[] = {
#include "assets/scenes/dungeons/men/men_room_6Vtx_002948.vtx.inc"
};

Gfx men_room_6DL_002DE8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_6Vtx_002948[66], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_6Tex_007778, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_6Vtx_002948, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_6Tex_006B78, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_002948[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_002948[8], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 0, 0),
    gsSP2Triangles(6, 7, 2, 0, 6, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_6Tex_006378, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_002948[16], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_002948[22], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_6Tex_006378, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_002948[42], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_002948[46], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_6Tex_006378, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_002948[62], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_6Vtx_003150[] = {
#include "assets/scenes/dungeons/men/men_room_6Vtx_003150.vtx.inc"
};

Gfx men_room_6DL_0034F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_6Vtx_003150[50], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_6Tex_004F78, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_6Vtx_003150, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 0, 5, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_6Tex_004778, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_003150[6], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_6Vtx_003150[18], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 17, 16, 0, 24, 16, 25, 0),
    gsSP2Triangles(18, 19, 26, 0, 27, 18, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_6Vtx_0036D0[] = {
#include "assets/scenes/dungeons/men/men_room_6Vtx_0036D0.vtx.inc"
};

Gfx men_room_6DL_003B90[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_6Vtx_0036D0[68], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_6Tex_003F78, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(men_room_6Vtx_0036D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(6, 10, 7, 0, 11, 12, 10, 0),
    gsSP2Triangles(11, 10, 6, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 16, 17, 15, 0),
    gsSP2Triangles(18, 10, 17, 0, 10, 15, 17, 0),
    gsSP2Triangles(19, 20, 18, 0, 20, 10, 18, 0),
    gsSP2Triangles(20, 7, 10, 0, 21, 15, 12, 0),
    gsSP2Triangles(15, 10, 12, 0, 21, 22, 15, 0),
    gsSP2Triangles(22, 13, 15, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&men_room_6Vtx_0036D0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 1, 0, 0),
    gsSP2Triangles(6, 4, 1, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 7, 0, 11, 8, 7, 0),
    gsSP2Triangles(12, 13, 10, 0, 13, 11, 10, 0),
    gsSP2Triangles(13, 14, 11, 0, 13, 15, 14, 0),
    gsSP2Triangles(15, 16, 14, 0, 15, 0, 16, 0),
    gsSP2Triangles(0, 17, 16, 0, 2, 3, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 18, 21, 0),
    gsSP2Triangles(1, 5, 22, 0, 3, 23, 18, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 21, 25, 0),
    gsSP2Triangles(25, 23, 26, 0, 21, 18, 25, 0),
    gsSP2Triangles(18, 23, 25, 0, 6, 1, 27, 0),
    gsSP2Triangles(1, 28, 27, 0, 1, 29, 28, 0),
    gsSP2Triangles(1, 22, 29, 0, 15, 13, 30, 0),
    gsSP1Triangle(13, 31, 30, 0),
    gsSPVertex(&men_room_6Vtx_0036D0[64], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_6Vtx_003D50[] = {
#include "assets/scenes/dungeons/men/men_room_6Vtx_003D50.vtx.inc"
};

Gfx men_room_6DL_003E60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_6Vtx_003D50[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_6Tex_005378, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_DECAL2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_6Vtx_003D50, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 1, 0, 7, 8, 1, 0),
    gsSPEndDisplayList(),
};

u8 men_room_6_unaccounted_003F20[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0x68, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0x68, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0xD0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0xB8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x25, 0x30, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2D, 0xE8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x34, 0xF0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3B, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3E, 0x60, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 men_room_6Tex_003F78[] = {
#include "assets/scenes/dungeons/men/men_room_6Tex_003F78.rgba16.inc.c"
};

u64 men_room_6Tex_004778[] = {
#include "assets/scenes/dungeons/men/men_room_6Tex_004778.ci8.inc.c"
};

u64 men_room_6Tex_004F78[] = {
#include "assets/scenes/dungeons/men/men_room_6Tex_004F78.ci8.inc.c"
};

u64 men_room_6Tex_005378[] = {
#include "assets/scenes/dungeons/men/men_room_6Tex_005378.rgba16.inc.c"
};

u64 men_room_6Tex_005B78[] = {
#include "assets/scenes/dungeons/men/men_room_6Tex_005B78.ci8.inc.c"
};

u64 men_room_6Tex_006378[] = {
#include "assets/scenes/dungeons/men/men_room_6Tex_006378.ci8.inc.c"
};

u64 men_room_6Tex_006B78[] = {
#include "assets/scenes/dungeons/men/men_room_6Tex_006B78.ci8.inc.c"
};

u64 men_room_6Tex_007378[] = {
#include "assets/scenes/dungeons/men/men_room_6Tex_007378.ci8.inc.c"
};

u64 men_room_6Tex_007778[] = {
#include "assets/scenes/dungeons/men/men_room_6Tex_007778.ci8.inc.c"
};

