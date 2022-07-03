#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "kakusiana_room_11.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "kakusiana_scene.h"
#include "kakusiana_room_0.h"
#include "kakusiana_room_1.h"
#include "kakusiana_room_2.h"
#include "kakusiana_room_3.h"
#include "kakusiana_room_4.h"
#include "kakusiana_room_5.h"
#include "kakusiana_room_6.h"
#include "kakusiana_room_7.h"
#include "kakusiana_room_8.h"
#include "kakusiana_room_9.h"
#include "kakusiana_room_10.h"
#include "kakusiana_room_12.h"
#include "kakusiana_room_13.h"

SceneCmd kakusiana_room_11Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&kakusiana_room_11PolygonType2_000070),
    SCENE_CMD_OBJECT_LIST(5, kakusiana_room_11ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(2, kakusiana_room_11ActorList_00004C),
    SCENE_CMD_END(),
};

s16 kakusiana_room_11ObjectList_000040[] = {
    OBJECT_DNS,
    OBJECT_KANBAN,
    OBJECT_DNK,
    OBJECT_GI_STICK,
    OBJECT_GI_NUTS,
};

ActorEntry kakusiana_room_11ActorList_00004C[] = {
    { ACTOR_EN_DNT_DEMO, {   3800,      0,   1140 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_KANBAN,   {   3898,      0,   1228 }, {      0, 0XE2D8,      0 }, 0x0344 },
};

u8 kakusiana_room_11_possiblePadding_00006C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 kakusiana_room_11PolygonType2_000070 = { 
    2, 9,
    kakusiana_room_11PolygonDlist2_00007C,
    kakusiana_room_11PolygonDlist2_00007C + ARRAY_COUNTU(kakusiana_room_11PolygonDlist2_00007C)
};

PolygonDlist2 kakusiana_room_11PolygonDlist2_00007C[9] = {
    { {   3799,    286,   1342 },    198, NULL, kakusiana_room_11DL_008250 },
    { {   3789,      0,   1288 },    209, kakusiana_room_11DL_0006D0, NULL },
    { {   3801,      3,    800 },    426, kakusiana_room_11DL_000340, NULL },
    { {   3795,     26,    943 },    547, kakusiana_room_11DL_0023E8, NULL },
    { {   3799,      2,   1343 },    202, NULL, kakusiana_room_11DL_0085C0 },
    { {   3799,     10,   1342 },     40, kakusiana_room_11DL_001430, NULL },
    { {   3799,    477,   1342 },     40, NULL, kakusiana_room_11DL_008418 },
    { {   3801,    350,    944 },    571, kakusiana_room_11DL_001728, NULL },
    { {   3801,    230,    944 },    602, kakusiana_room_11DL_001068, NULL },
};

s32 kakusiana_room_11_terminatorMaybe_00010C = { 0x01000000 };

Vtx kakusiana_room_11Vtx_000110[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Vtx_000110.vtx.inc"
};

Gfx kakusiana_room_11DL_000340[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_11Vtx_000110[27], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_11Tex_005048, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 14),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_11Vtx_000110, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 6, 0, 0),
    gsSP2Triangles(5, 0, 2, 0, 5, 2, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 2, 9, 7, 0),
    gsSP2Triangles(4, 10, 11, 0, 4, 11, 12, 0),
    gsSP2Triangles(4, 12, 13, 0, 4, 13, 3, 0),
    gsSP2Triangles(13, 14, 3, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 1, 0, 0, 16, 17, 1, 0),
    gsSP2Triangles(17, 4, 1, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 18, 24, 19, 0),
    gsSP2Triangles(23, 17, 16, 0, 23, 16, 25, 0),
    gsSP2Triangles(26, 21, 23, 0, 19, 26, 23, 0),
    gsSP1Triangle(19, 23, 20, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_11Vtx_000470[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Vtx_000470.vtx.inc"
};

Gfx kakusiana_room_11DL_0006D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_11Vtx_000470[30], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_11Tex_005048, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(kakusiana_room_11Tex_002848, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 14),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_11Vtx_000470, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 1, 5, 6, 0),
    gsSP2Triangles(1, 6, 2, 0, 6, 4, 2, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 6, 0),
    gsSP2Triangles(8, 4, 6, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 10, 8, 0, 10, 11, 8, 0),
    gsSP2Triangles(9, 12, 13, 0, 9, 13, 10, 0),
    gsSP2Triangles(13, 11, 10, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 15, 13, 0, 15, 11, 13, 0),
    gsSP2Triangles(16, 17, 14, 0, 17, 18, 14, 0),
    gsSP2Triangles(16, 19, 17, 0, 17, 0, 18, 0),
    gsSP2Triangles(17, 20, 0, 0, 17, 21, 20, 0),
    gsSP2Triangles(19, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(24, 25, 23, 0, 25, 26, 23, 0),
    gsSP2Triangles(26, 21, 23, 0, 0, 3, 27, 0),
    gsSP2Triangles(0, 27, 18, 0, 3, 4, 27, 0),
    gsSP2Triangles(28, 29, 14, 0, 28, 14, 18, 0),
    gsSP1Triangle(28, 11, 29, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_11Vtx_000848[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Vtx_000848.vtx.inc"
};

Gfx kakusiana_room_11DL_001068[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_11Vtx_000848[122], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_11Tex_004048, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_11Vtx_000848, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(13, 12, 1, 0, 13, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_11Tex_003048, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_11Vtx_000848[14], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(30, 31, 27, 0, 30, 27, 26, 0),
    gsSPVertex(&kakusiana_room_11Vtx_000848[46], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 1, 0, 0, 8, 0, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_11Tex_004048, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_11Vtx_000848[60], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 0, 0, 15, 1, 0, 0),
    gsSP2Triangles(15, 16, 1, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(19, 16, 15, 0, 19, 15, 21, 0),
    gsSP2Triangles(13, 17, 22, 0, 13, 12, 17, 0),
    gsSP1Triangle(12, 18, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_11Tex_003048, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_11Vtx_000848[83], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(19, 21, 22, 0, 19, 22, 20, 0),
    gsSP2Triangles(21, 23, 24, 0, 21, 24, 22, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&kakusiana_room_11Vtx_000848[115], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 5, 6, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_11Vtx_001350[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Vtx_001350.vtx.inc"
};

Gfx kakusiana_room_11DL_001430[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_11Vtx_001350[6], 8, 0),
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
    gsSPVertex(kakusiana_room_11Vtx_001350, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_11Vtx_0014B8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Vtx_0014B8.vtx.inc"
};

Gfx kakusiana_room_11DL_001728[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_11Vtx_0014B8[31], 8, 0),
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
    gsSPVertex(kakusiana_room_11Vtx_0014B8, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP1Triangle(0, 7, 8, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_sceneTex_00D020, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&kakusiana_room_11Vtx_0014B8[9], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 5, 0),
    gsSP2Triangles(6, 4, 5, 0, 7, 6, 5, 0),
    gsSP2Triangles(8, 1, 9, 0, 8, 9, 10, 0),
    gsSP2Triangles(10, 11, 12, 0, 8, 10, 12, 0),
    gsSP2Triangles(13, 8, 12, 0, 13, 12, 14, 0),
    gsSP2Triangles(7, 13, 14, 0, 15, 7, 14, 0),
    gsSP2Triangles(16, 11, 17, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 16, 18, 0, 19, 18, 20, 0),
    gsSP2Triangles(19, 20, 21, 0, 15, 19, 21, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_11Vtx_001868[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Vtx_001868.vtx.inc"
};

Gfx kakusiana_room_11DL_0023E8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_11Vtx_001868[176], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_11Tex_006848, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_11Vtx_001868, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_11Tex_005848, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_11Vtx_001868[4], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_11Tex_006848, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_11Vtx_001868[20], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_11Tex_005848, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_11Vtx_001868[36], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_11Tex_007848, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_11Vtx_001868[56], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0),
    gsSPVertex(&kakusiana_room_11Vtx_001868[86], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 89, 165, 104, 255),
    gsSPVertex(&kakusiana_room_11Vtx_001868[100], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_11Tex_005848, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&kakusiana_room_11Vtx_001868[122], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_11Tex_007848, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_11Vtx_001868[134], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_11Tex_005848, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_11Vtx_001868[156], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_11_unaccounted_002810[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x40, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xD0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0x68, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0x30, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x28, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x23, 0xE8, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_11Tex_002848[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Tex_002848.rgba16.inc.c"
};

u64 kakusiana_room_11Tex_003048[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Tex_003048.rgba16.inc.c"
};

u64 kakusiana_room_11Tex_004048[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Tex_004048.rgba16.inc.c"
};

u64 kakusiana_room_11Tex_005048[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Tex_005048.rgba16.inc.c"
};

u64 kakusiana_room_11Tex_005848[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Tex_005848.rgba16.inc.c"
};

u64 kakusiana_room_11Tex_006848[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Tex_006848.rgba16.inc.c"
};

u64 kakusiana_room_11Tex_007848[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Tex_007848.rgba16.inc.c"
};

u8 kakusiana_room_11_possiblePadding_008048[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx kakusiana_room_11Vtx_008050[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Vtx_008050.vtx.inc"
};

Gfx kakusiana_room_11DL_008250[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_11Vtx_008050[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_sceneTex_00C020, G_IM_FMT_IA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPDisplayList(0x08000000),
    gsSPVertex(kakusiana_room_11Vtx_008050, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_11Vtx_008338[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Vtx_008338.vtx.inc"
};

Gfx kakusiana_room_11DL_008418[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_11Vtx_008338[6], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPVertex(kakusiana_room_11Vtx_008338, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_11Vtx_0084A0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_11Vtx_0084A0.vtx.inc"
};

Gfx kakusiana_room_11DL_0085C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_11Vtx_0084A0[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(kakusiana_sceneTex_00B820, G_IM_FMT_IA, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                            | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_11Vtx_0084A0, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 4, 5, 0),
    gsSP2Triangles(5, 7, 6, 0, 5, 8, 7, 0),
    gsSP2Triangles(0, 9, 8, 0, 2, 9, 0, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_11_unaccounted_008690[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x82, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x84, 0x18, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x85, 0xC0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

