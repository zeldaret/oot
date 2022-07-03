#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "hakasitarelay_room_4.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "hakasitarelay_scene.h"
#include "hakasitarelay_room_0.h"
#include "hakasitarelay_room_1.h"
#include "hakasitarelay_room_2.h"
#include "hakasitarelay_room_3.h"
#include "hakasitarelay_room_5.h"
#include "hakasitarelay_room_6.h"

SceneCmd hakasitarelay_room_4Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hakasitarelay_room_4PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(10, hakasitarelay_room_4ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(4, hakasitarelay_room_4ActorList_000054),
    SCENE_CMD_END(),
};

s16 hakasitarelay_room_4ObjectList_000040[] = {
    OBJECT_RELAY_OBJECTS,
    OBJECT_POH,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_TK,
    OBJECT_FU,
    OBJECT_KANBAN,
    OBJECT_RD,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
};

ActorEntry hakasitarelay_room_4ActorList_000054[] = {
    { ACTOR_OBJ_SYOKUDAI,     {   2788,   -354,  -1592 }, {      0, 0X8000,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,     {   2988,   -354,  -1592 }, {      0, 0X8000,      0 }, 0x2400 },
    { ACTOR_BG_RELAY_OBJECTS, {   2892,   -410,  -1273 }, {      0, 0X8000,      0 }, 0x0134 },
    { ACTOR_EN_BOX,           {   2883,   -360,  -1479 }, {      0,      0,      0 }, 0x1100 },
};

u8 hakasitarelay_room_4_possiblePadding_000094[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 hakasitarelay_room_4PolygonType0_0000A0 = { 
    0, 1,
    hakasitarelay_room_4PolygonDlist_0000AC,
    hakasitarelay_room_4PolygonDlist_0000AC + ARRAY_COUNTU(hakasitarelay_room_4PolygonDlist_0000AC)
};

PolygonDlist hakasitarelay_room_4PolygonDlist_0000AC[1] = {
    { hakasitarelay_room_4DL_001E60, NULL },
};

s32 hakasitarelay_room_4_terminatorMaybe_0000B4 = { 0x01000000 };

u8 hakasitarelay_room_4_possiblePadding_0000B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx hakasitarelay_room_4Vtx_0000C0[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_4Vtx_0000C0.vtx.inc"
};

Gfx hakasitarelay_room_4DL_0005B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakasitarelay_room_4Vtx_0000C0[71], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(hakasitarelay_sceneTex_00D080, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakasitarelay_room_4Vtx_0000C0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&hakasitarelay_room_4Vtx_0000C0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 20, 18, 21, 0),
    gsSP2Triangles(18, 17, 22, 0, 18, 22, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 21, 0),
    gsSP2Triangles(24, 20, 21, 0, 20, 24, 19, 0),
    gsSP2Triangles(24, 23, 16, 0, 24, 16, 19, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP2Triangles(29, 25, 28, 0, 25, 29, 30, 0),
    gsSP2Triangles(31, 26, 25, 0, 31, 25, 30, 0),
    gsSPVertex(&hakasitarelay_room_4Vtx_0000C0[64], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 1, 0, 0, 6, 0, 5, 0),
    gsSPEndDisplayList(),
};

Vtx hakasitarelay_room_4Vtx_000730[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_4Vtx_000730.vtx.inc"
};

Gfx hakasitarelay_room_4DL_001040[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakasitarelay_room_4Vtx_000730[137], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(hakasitarelay_room_4Tex_003480, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakasitarelay_room_4Vtx_000730, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_4Tex_003080, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_4Vtx_000730[32], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(2, 1, 6, 0, 7, 5, 2, 0),
    gsSP2Triangles(8, 7, 2, 0, 8, 2, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_4Tex_003C80, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_4Vtx_000730[41], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 4, 9, 5, 0),
    gsSP2Triangles(9, 8, 5, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 13, 11, 0, 13, 14, 11, 0),
    gsSP1Triangle(14, 12, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_4Tex_003480, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_4Vtx_000730[56], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_4Tex_003080, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_4Vtx_000730[64], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 8, 9, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_4Tex_003480, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_4Vtx_000730[74], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 3, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_4Tex_003C80, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_4Vtx_000730[95], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_4Tex_003480, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_4Vtx_000730[103], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_4Tex_003080, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_4Vtx_000730[111], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(3, 4, 5, 0, 0, 2, 4, 0),
    gsSP2Triangles(6, 7, 3, 0, 6, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_4Tex_002080, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_4Vtx_000730[119], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_4Tex_003C80, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_4Vtx_000730[125], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 2, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_4Tex_003480, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_4Vtx_000730[133], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx hakasitarelay_room_4Vtx_001550[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_4Vtx_001550.vtx.inc"
};

Gfx hakasitarelay_room_4DL_001C30[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakasitarelay_room_4Vtx_001550[102], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_4Tex_001E80, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakasitarelay_room_4Vtx_001550, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_4Tex_002880, G_IM_FMT_I, 32, 128, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                            | G_TX_WRAP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_4Vtx_001550[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&hakasitarelay_room_4Vtx_001550[64], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_sceneTex_00D880, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_4Vtx_001550[80], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 10, 13, 14, 0),
    gsSP2Triangles(10, 14, 11, 0, 13, 15, 16, 0),
    gsSP2Triangles(13, 16, 14, 0, 15, 17, 16, 0),
    gsSP2Triangles(6, 16, 17, 0, 6, 17, 8, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSPEndDisplayList(),
};

Gfx hakasitarelay_room_4DL_001E60[] = {
    gsSPDisplayList(hakasitarelay_room_4DL_0005B0),
    gsSPDisplayList(hakasitarelay_room_4DL_001040),
    gsSPDisplayList(hakasitarelay_room_4DL_001C30),
    gsSPEndDisplayList(),
};

u64 hakasitarelay_room_4Tex_001E80[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_4Tex_001E80.i4.inc.c"
};

u64 hakasitarelay_room_4Tex_002080[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_4Tex_002080.i8.inc.c"
};

u64 hakasitarelay_room_4Tex_002880[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_4Tex_002880.i4.inc.c"
};

u64 hakasitarelay_room_4Tex_003080[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_4Tex_003080.i8.inc.c"
};

u64 hakasitarelay_room_4Tex_003480[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_4Tex_003480.i8.inc.c"
};

u64 hakasitarelay_room_4Tex_003C80[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_4Tex_003C80.i4.inc.c"
};

