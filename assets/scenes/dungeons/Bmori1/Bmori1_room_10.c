#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "Bmori1_room_10.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "Bmori1_scene.h"
#include "Bmori1_room_0.h"
#include "Bmori1_room_1.h"
#include "Bmori1_room_2.h"
#include "Bmori1_room_3.h"
#include "Bmori1_room_4.h"
#include "Bmori1_room_5.h"
#include "Bmori1_room_6.h"
#include "Bmori1_room_7.h"
#include "Bmori1_room_8.h"
#include "Bmori1_room_9.h"
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

SceneCmd Bmori1_room_10Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&Bmori1_room_10PolygonType0_000090),
    SCENE_CMD_OBJECT_LIST(9, Bmori1_room_10ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(4, Bmori1_room_10ActorList_000054),
    SCENE_CMD_END(),
};

s16 Bmori1_room_10ObjectList_000040[] = {
    OBJECT_MORI_TEX,
    OBJECT_MORI_OBJECTS,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_BB,
    OBJECT_ST,
    OBJECT_DEMO_KEKKAI,
    OBJECT_YDAN_OBJECTS,
    OBJECT_DEKUBABA,
};

ActorEntry Bmori1_room_10ActorList_000054[] = {
    { ACTOR_EN_ST,        {     48,    909,  -2815 }, {      0, 0X293F,      0 }, 0x0001 },
    { ACTOR_OBJ_SYOKUDAI, {    120,    800,  -2691 }, {      0, 0X8000,      0 }, 0x2400 },
    { ACTOR_BG_YDAN_SP,   {    -76,    800,  -2811 }, {      0, 0X3555,      0 }, 0x1FE1 },
    { ACTOR_EN_BB,        {    112,    800,  -2848 }, {      0, 0XC000,      0 }, 0xFFFF },
};

u8 Bmori1_room_10_possiblePadding_000084[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 Bmori1_room_10PolygonType0_000090 = { 
    0, 1,
    Bmori1_room_10PolygonDlist_00009C,
    Bmori1_room_10PolygonDlist_00009C + ARRAY_COUNTU(Bmori1_room_10PolygonDlist_00009C)
};

PolygonDlist Bmori1_room_10PolygonDlist_00009C[1] = {
    { Bmori1_room_10DL_001248, Bmori1_room_10DL_004BC8 },
};

s32 Bmori1_room_10_terminatorMaybe_0000A4 = { 0x01000000 };

u8 Bmori1_room_10_possiblePadding_0000A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx Bmori1_room_10Vtx_0000B0[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_10Vtx_0000B0.vtx.inc"
};

Gfx Bmori1_room_10DL_0008D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&Bmori1_room_10Vtx_0000B0[122], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014288),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(Bmori1_room_10Vtx_0000B0, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 6, 3, 1, 0),
    gsSP2Triangles(7, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(7, 11, 8, 0, 11, 12, 8, 0),
    gsSP2Triangles(12, 13, 8, 0, 13, 10, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_10Tex_002260, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_10Vtx_0000B0[14], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_10Vtx_0000B0[17], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_10Tex_002260, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_10Vtx_0000B0[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_10Vtx_0000B0[24], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(7, 8, 5, 0, 8, 6, 5, 0),
    gsSP2Triangles(9, 10, 11, 0, 10, 12, 11, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 14, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_10Tex_001A60, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_10Vtx_0000B0[39], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_10Vtx_0000B0[45], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_10Tex_001A60, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_10Vtx_0000B0[48], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(3, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_10Vtx_0000B0[53], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 5, 9, 6, 0),
    gsSP2Triangles(5, 10, 9, 0, 9, 11, 12, 0),
    gsSP1Triangle(9, 12, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(Bmori1_room_10Tex_001260, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_10Vtx_0000B0[66], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014288),
    gsSPVertex(&Bmori1_room_10Vtx_0000B0[69], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(4, 6, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(Bmori1_room_10Tex_001260, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_10Vtx_0000B0[76], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(Bmori1_sceneTex_015B90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(Bmori1_sceneTLUT_014288),
    gsSPVertex(&Bmori1_room_10Vtx_0000B0[79], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 0, 6, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_10Tex_001A60, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_10Vtx_0000B0[111], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 10, 6, 0),
    gsSP1Triangle(5, 9, 10, 0),
    gsSPEndDisplayList(),
};

Vtx Bmori1_room_10Vtx_000F20[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_10Vtx_000F20.vtx.inc"
};

Gfx Bmori1_room_10DL_0010E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&Bmori1_room_10Vtx_000F20[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(Bmori1_room_10Tex_002A60, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(Bmori1_room_10Vtx_000F20, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_10Tex_003A60, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_10Vtx_000F20[9], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(Bmori1_room_10Tex_002A60, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&Bmori1_room_10Vtx_000F20[13], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsSPEndDisplayList(),
};

Gfx Bmori1_room_10DL_001248[] = {
    gsSPDisplayList(Bmori1_room_10DL_0008D0),
    gsSPDisplayList(Bmori1_room_10DL_0010E0),
    gsSPEndDisplayList(),
};

u64 Bmori1_room_10Tex_001260[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_10Tex_001260.rgba16.inc.c"
};

u64 Bmori1_room_10Tex_001A60[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_10Tex_001A60.ci8.inc.c"
};

u64 Bmori1_room_10Tex_002260[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_10Tex_002260.ci8.inc.c"
};

u64 Bmori1_room_10Tex_002A60[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_10Tex_002A60.rgba16.inc.c"
};

u64 Bmori1_room_10Tex_003A60[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_10Tex_003A60.rgba16.inc.c"
};

Vtx Bmori1_room_10Vtx_004A60[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_10Vtx_004A60.vtx.inc"
};

Gfx Bmori1_room_10DL_004B10[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&Bmori1_room_10Vtx_004A60[3], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(Bmori1_room_10Tex_004BD8, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(Bmori1_room_10Vtx_004A60, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx Bmori1_room_10DL_004BC8[] = {
    gsSPDisplayList(Bmori1_room_10DL_004B10),
    gsSPEndDisplayList(),
};

u64 Bmori1_room_10Tex_004BD8[] = {
#include "assets/scenes/dungeons/Bmori1/Bmori1_room_10Tex_004BD8.ia16.inc.c"
};

