#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "hakasitarelay_room_5.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "hakasitarelay_scene.h"
#include "hakasitarelay_room_0.h"
#include "hakasitarelay_room_1.h"
#include "hakasitarelay_room_2.h"
#include "hakasitarelay_room_3.h"
#include "hakasitarelay_room_4.h"
#include "hakasitarelay_room_6.h"

SceneCmd hakasitarelay_room_5Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hakasitarelay_room_5PolygonType0_000090),
    SCENE_CMD_OBJECT_LIST(10, hakasitarelay_room_5ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(3, hakasitarelay_room_5ActorList_000054),
    SCENE_CMD_END(),
};

s16 hakasitarelay_room_5ObjectList_000040[] = {
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

ActorEntry hakasitarelay_room_5ActorList_000054[] = {
    { ACTOR_OBJ_TIMEBLOCK, {   2892,   -409,  -1074 }, {      0,      0,    0X5 }, 0xB805 },
    { ACTOR_OBJ_TIMEBLOCK, {   2892,   -306,  -1074 }, {      0,      0,    0X5 }, 0xB806 },
    { ACTOR_ELF_MSG2,      {   2892,   -360,  -1149 }, {    0X3,    0X6,    0X1 }, 0x0705 },
};

u8 hakasitarelay_room_5_possiblePadding_000084[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 hakasitarelay_room_5PolygonType0_000090 = { 
    0, 1,
    hakasitarelay_room_5PolygonDlist_00009C,
    hakasitarelay_room_5PolygonDlist_00009C + ARRAY_COUNTU(hakasitarelay_room_5PolygonDlist_00009C)
};

PolygonDlist hakasitarelay_room_5PolygonDlist_00009C[1] = {
    { hakasitarelay_room_5DL_001C08, NULL },
};

s32 hakasitarelay_room_5_terminatorMaybe_0000A4 = { 0x01000000 };

u8 hakasitarelay_room_5_possiblePadding_0000A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx hakasitarelay_room_5Vtx_0000B0[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_5Vtx_0000B0.vtx.inc"
};

Gfx hakasitarelay_room_5DL_000330[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakasitarelay_room_5Vtx_0000B0[32], 8, 0),
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
    gsSPVertex(hakasitarelay_room_5Vtx_0000B0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_sceneTex_00D880, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&hakasitarelay_room_5Vtx_0000B0[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_sceneTex_00D080, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&hakasitarelay_room_5Vtx_0000B0[12], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_5Tex_003C48, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&hakasitarelay_room_5Vtx_0000B0[28], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx hakasitarelay_room_5Vtx_000510[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_5Vtx_000510.vtx.inc"
};

Gfx hakasitarelay_room_5DL_000F60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakasitarelay_room_5Vtx_000510[157], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_5Tex_002448, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, hakasitarelay_room_5TLUT_001C28),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakasitarelay_room_5Vtx_000510, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 18, 21, 22, 0),
    gsSP2Triangles(18, 22, 19, 0, 23, 24, 25, 0),
    gsSP2Triangles(24, 26, 25, 0, 23, 27, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&hakasitarelay_room_5Vtx_000510[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(13, 14, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 24, 27, 28, 0),
    gsSP2Triangles(24, 28, 25, 0, 29, 30, 31, 0),
    gsSPVertex(&hakasitarelay_room_5Vtx_000510[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(10, 13, 14, 0, 10, 14, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 16, 0, 19, 16, 15, 0),
    gsSP2Triangles(21, 22, 20, 0, 21, 20, 19, 0),
    gsSP2Triangles(23, 24, 22, 0, 23, 22, 21, 0),
    gsSP2Triangles(25, 26, 24, 0, 25, 24, 23, 0),
    gsSP2Triangles(27, 28, 26, 0, 27, 26, 25, 0),
    gsSP2Triangles(29, 30, 28, 0, 29, 28, 27, 0),
    gsSPVertex(&hakasitarelay_room_5Vtx_000510[95], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(hakasitarelay_sceneTex_00C080, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_5Vtx_000510[99], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_5Tex_003C48, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&hakasitarelay_room_5Vtx_000510[103], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_5Tex_001C48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&hakasitarelay_room_5Vtx_000510[107], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 20, 0),
    gsSP2Triangles(23, 20, 22, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 25, 0, 28, 25, 27, 0),
    gsSPVertex(&hakasitarelay_room_5Vtx_000510[137], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_sceneTex_00C080, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_5Vtx_000510[147], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 0, 3, 0, 5, 3, 6, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0),
    gsSPEndDisplayList(),
};

Vtx hakasitarelay_room_5Vtx_001318[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_5Vtx_001318.vtx.inc"
};

Gfx hakasitarelay_room_5DL_001828[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakasitarelay_room_5Vtx_001318[73], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_5Tex_003C48, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakasitarelay_room_5Vtx_001318, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_sceneTex_00D880, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_5Vtx_001318[8], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_5Tex_003C48, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_5Vtx_001318[13], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_5Tex_003448, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_5Vtx_001318[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_5Tex_002C48, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_5Vtx_001318[25], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_sceneTex_00D880, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_5Vtx_001318[29], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_5Tex_003C48, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_5Vtx_001318[33], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 6, 0),
    gsSP2Triangles(5, 7, 3, 0, 7, 0, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 8, 13, 0, 12, 13, 14, 0),
    gsSP2Triangles(8, 15, 13, 0, 8, 10, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakasitarelay_room_5Tex_002C48, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_5Vtx_001318[53], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_5Tex_003C48, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_5Vtx_001318[57], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakasitarelay_room_5Tex_003448, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakasitarelay_room_5Vtx_001318[61], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx hakasitarelay_room_5DL_001C08[] = {
    gsSPDisplayList(hakasitarelay_room_5DL_000330),
    gsSPDisplayList(hakasitarelay_room_5DL_000F60),
    gsSPDisplayList(hakasitarelay_room_5DL_001828),
    gsSPEndDisplayList(),
};

u64 hakasitarelay_room_5TLUT_001C28[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_5TLUT_001C28.rgba16.inc.c"
};

u64 hakasitarelay_room_5Tex_001C48[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_5Tex_001C48.rgba16.inc.c"
};

u64 hakasitarelay_room_5Tex_002448[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_5Tex_002448.ci4.inc.c"
};

u64 hakasitarelay_room_5Tex_002C48[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_5Tex_002C48.i8.inc.c"
};

u64 hakasitarelay_room_5Tex_003448[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_5Tex_003448.i4.inc.c"
};

u64 hakasitarelay_room_5Tex_003C48[] = {
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_room_5Tex_003C48.i4.inc.c"
};

