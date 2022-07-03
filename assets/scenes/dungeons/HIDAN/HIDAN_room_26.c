#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HIDAN_room_26.h"
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
#include "HIDAN_room_7.h"
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

SceneCmd HIDAN_room_26Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x02, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HIDAN_room_26PolygonType2_000050),
    SCENE_CMD_OBJECT_LIST(11, HIDAN_room_26ObjectList_000038),
    SCENE_CMD_END(),
};

s16 HIDAN_room_26ObjectList_000038[] = {
    OBJECT_HIDAN_OBJECTS,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_KIBAKO2,
    OBJECT_DU,
    OBJECT_BDOOR,
    OBJECT_D_HSBLOCK,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
};

PolygonType2 HIDAN_room_26PolygonType2_000050 = { 
    2, 10,
    HIDAN_room_26PolygonDlist2_00005C,
    HIDAN_room_26PolygonDlist2_00005C + ARRAY_COUNTU(HIDAN_room_26PolygonDlist2_00005C)
};

PolygonDlist2 HIDAN_room_26PolygonDlist2_00005C[10] = {
    { {  -2687,    -90,      0 },   1099, HIDAN_room_26DL_003590, NULL },
    { {  -2660,     90,      0 },    475, HIDAN_room_26DL_0037A0, NULL },
    { {  -2660,     95,      0 },    379, HIDAN_room_26DL_000A80, NULL },
    { {  -2420,      0,      0 },    545, HIDAN_room_26DL_000EF0, NULL },
    { {  -2660,    950,      0 },    540, HIDAN_room_26DL_0010C0, NULL },
    { {  -2644,    425,    731 },    942, HIDAN_room_26DL_001D40, NULL },
    { {  -3391,    425,     16 },    942, HIDAN_room_26DL_0015B8, NULL },
    { {  -2677,    425,   -731 },    941, HIDAN_room_26DL_0024F8, NULL },
    { {  -1919,    425,      0 },    927, HIDAN_room_26DL_002F68, NULL },
    { {  -2660,    100,      0 },    480, HIDAN_room_26DL_0046B8, NULL },
};

s32 HIDAN_room_26_terminatorMaybe_0000FC = { 0x01000000 };

Vtx HIDAN_room_26Vtx_000100[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Vtx_000100.vtx.inc"
};

Gfx HIDAN_room_26DL_000A80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_26Vtx_000100[144], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HIDAN_sceneTex_018DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HIDAN_room_26Vtx_000100, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(3, 2, 15, 0, 3, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 20, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(25, 24, 26, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 26, 28, 0, 27, 28, 29, 0),
    gsSP2Triangles(29, 28, 30, 0, 29, 30, 31, 0),
    gsSP2Triangles(31, 30, 17, 0, 31, 17, 16, 0),
    gsSPVertex(&HIDAN_room_26Vtx_000100[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(3, 2, 15, 0, 3, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 20, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(25, 24, 26, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 26, 28, 0, 27, 28, 29, 0),
    gsSP2Triangles(29, 28, 30, 0, 29, 30, 31, 0),
    gsSP2Triangles(31, 30, 17, 0, 31, 17, 16, 0),
    gsSPVertex(&HIDAN_room_26Vtx_000100[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(3, 2, 15, 0, 3, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 20, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(25, 24, 26, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 26, 28, 0, 27, 28, 29, 0),
    gsSP2Triangles(29, 28, 30, 0, 29, 30, 31, 0),
    gsSP2Triangles(31, 30, 17, 0, 31, 17, 16, 0),
    gsSPVertex(&HIDAN_room_26Vtx_000100[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 1, 0, 15, 1, 0, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 17, 0, 20, 17, 16, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 21, 20, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 23, 22, 0),
    gsSP2Triangles(26, 27, 25, 0, 26, 25, 24, 0),
    gsSP2Triangles(28, 29, 27, 0, 28, 27, 26, 0),
    gsSP2Triangles(30, 31, 29, 0, 30, 29, 28, 0),
    gsSP2Triangles(19, 18, 31, 0, 19, 31, 30, 0),
    gsSPVertex(&HIDAN_room_26Vtx_000100[128], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 1, 0, 15, 1, 0, 0),
    gsSPEndDisplayList(),
};

Vtx HIDAN_room_26Vtx_000D90[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Vtx_000D90.vtx.inc"
};

Gfx HIDAN_room_26DL_000EF0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_26Vtx_000D90[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HIDAN_sceneTex_018DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HIDAN_room_26Vtx_000D90, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 3, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSPEndDisplayList(),
};

Vtx HIDAN_room_26Vtx_000FC0[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Vtx_000FC0.vtx.inc"
};

Gfx HIDAN_room_26DL_0010C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_26Vtx_000FC0[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HIDAN_sceneTex_018DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HIDAN_room_26Vtx_000FC0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx HIDAN_room_26Vtx_001188[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Vtx_001188.vtx.inc"
};

Gfx HIDAN_room_26DL_0015B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_26Vtx_001188[59], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HIDAN_sceneTex_018DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HIDAN_room_26Vtx_001188, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(2, 5, 8, 0, 2, 8, 6, 0),
    gsSP2Triangles(5, 9, 10, 0, 5, 10, 8, 0),
    gsSP2Triangles(4, 11, 9, 0, 4, 9, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005698, G_IM_FMT_CI, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_018990),
    gsSPVertex(&HIDAN_room_26Vtx_001188[12], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_0195D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_001188[18], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005298, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_018990),
    gsSPVertex(&HIDAN_room_26Vtx_001188[22], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_0195D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_001188[28], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005698, G_IM_FMT_CI, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_018990),
    gsSPVertex(&HIDAN_room_26Vtx_001188[32], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005298, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_001188[38], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_0195D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_001188[42], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 1, 5, 0, 1, 6, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005298, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_018990),
    gsSPVertex(&HIDAN_room_26Vtx_001188[49], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005698, G_IM_FMT_CI, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_001188[53], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx HIDAN_room_26Vtx_001A70[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Vtx_001A70.vtx.inc"
};

Gfx HIDAN_room_26DL_001D40[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_26Vtx_001A70[37], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HIDAN_sceneTex_018DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HIDAN_room_26Vtx_001A70, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 4, 0, 0, 6, 0, 7, 0),
    gsSP2Triangles(8, 6, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(7, 3, 10, 0, 7, 0, 3, 0),
    gsSP2Triangles(9, 7, 10, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005698, G_IM_FMT_CI, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_018990),
    gsSPVertex(&HIDAN_room_26Vtx_001A70[12], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_0195D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_001A70[15], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005298, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_018990),
    gsSPVertex(&HIDAN_room_26Vtx_001A70[19], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005698, G_IM_FMT_CI, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_001A70[23], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005298, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_001A70[26], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_0195D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_001A70[30], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005698, G_IM_FMT_CI, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_018990),
    gsSPVertex(&HIDAN_room_26Vtx_001A70[34], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx HIDAN_room_26Vtx_002108[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Vtx_002108.vtx.inc"
};

Gfx HIDAN_room_26DL_0024F8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_26Vtx_002108[55], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005698, G_IM_FMT_CI, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_018990),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HIDAN_room_26Vtx_002108, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 2, 0, 5, 7, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_0195D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_002108[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005298, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_018990),
    gsSPVertex(&HIDAN_room_26Vtx_002108[12], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_0195D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_002108[18], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005298, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_018990),
    gsSPVertex(&HIDAN_room_26Vtx_002108[22], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_0195D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_002108[26], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 1, 5, 0, 1, 6, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005298, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_018990),
    gsSPVertex(&HIDAN_room_26Vtx_002108[33], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005698, G_IM_FMT_CI, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_002108[37], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_018DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_002108[43], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(3, 2, 6, 0, 2, 7, 6, 0),
    gsSP2Triangles(2, 5, 8, 0, 2, 8, 7, 0),
    gsSP2Triangles(5, 9, 10, 0, 5, 10, 8, 0),
    gsSP2Triangles(4, 11, 9, 0, 4, 9, 5, 0),
    gsSPEndDisplayList(),
};

Vtx HIDAN_room_26Vtx_002968[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Vtx_002968.vtx.inc"
};

Gfx HIDAN_room_26DL_002F68[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_26Vtx_002968[88], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HIDAN_sceneTex_018DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HIDAN_room_26Vtx_002968, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(4, 8, 9, 0, 4, 9, 5, 0),
    gsSP2Triangles(1, 9, 10, 0, 1, 10, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_0189B0),
    gsSPVertex(&HIDAN_room_26Vtx_002968[11], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(0, 2, 4, 0, 3, 0, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_019DD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_002968[16], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 0, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_0195D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_002968[43], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005298, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_018990),
    gsSPVertex(&HIDAN_room_26Vtx_002968[47], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005698, G_IM_FMT_CI, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_002968[51], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(0, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_room_26Tex_005298, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_002968[56], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_0195D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_002968[60], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HIDAN_sceneTex_018DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_002968[64], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_0189B0),
    gsSPVertex(&HIDAN_room_26Vtx_002968[67], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(7, 8, 5, 0, 8, 6, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_018DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_26Vtx_002968[76], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 2, 6, 0),
    gsSP2Triangles(2, 3, 5, 0, 8, 9, 10, 0),
    gsSP1Triangle(9, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx HIDAN_room_26Vtx_003480[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Vtx_003480.vtx.inc"
};

Gfx HIDAN_room_26DL_003590[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_26Vtx_003480[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HIDAN_room_26Tex_006098, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPLoadMultiBlock(HIDAN_sceneTex_019FD0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(HIDAN_room_26Vtx_003480, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 0, 0),
    gsSP1Triangle(6, 0, 5, 0),
    gsSPEndDisplayList(),
};

Vtx HIDAN_room_26Vtx_0036A0[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Vtx_0036A0.vtx.inc"
};

Gfx HIDAN_room_26DL_0037A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_26Vtx_0036A0[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HIDAN_room_26Tex_005898, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, G_TX_NOLOD),
    gsDPLoadMultiBlock(HIDAN_sceneTex_018DD0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(HIDAN_room_26Vtx_0036A0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 1, 5, 6, 0),
    gsSP2Triangles(1, 6, 7, 0, 1, 7, 2, 0),
    gsSPEndDisplayList(),
};

Vtx HIDAN_room_26Vtx_0038A8[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Vtx_0038A8.vtx.inc"
};

Gfx HIDAN_room_26DL_0046B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_26Vtx_0038A8[217], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HIDAN_room_26Tex_004A98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HIDAN_room_26Vtx_0038A8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 3, 0),
    gsSP2Triangles(5, 7, 6, 0, 6, 8, 3, 0),
    gsSP2Triangles(9, 10, 5, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 12, 5, 0, 13, 14, 9, 0),
    gsSP2Triangles(2, 15, 13, 0, 2, 13, 9, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(17, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(18, 24, 21, 0, 18, 21, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 23, 28, 25, 0),
    gsSP2Triangles(23, 25, 27, 0, 27, 29, 16, 0),
    gsSP2Triangles(27, 30, 29, 0, 29, 31, 16, 0),
    gsSPVertex(&HIDAN_room_26Vtx_0038A8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 3, 0),
    gsSP2Triangles(5, 7, 6, 0, 6, 8, 3, 0),
    gsSP2Triangles(9, 10, 5, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 12, 5, 0, 13, 14, 9, 0),
    gsSP2Triangles(2, 15, 13, 0, 2, 13, 9, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(17, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(18, 24, 21, 0, 18, 21, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 23, 28, 25, 0),
    gsSP2Triangles(23, 25, 27, 0, 27, 29, 16, 0),
    gsSP2Triangles(27, 30, 29, 0, 29, 31, 16, 0),
    gsSPVertex(&HIDAN_room_26Vtx_0038A8[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 3, 0),
    gsSP2Triangles(5, 7, 6, 0, 6, 8, 3, 0),
    gsSP2Triangles(9, 10, 5, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 12, 5, 0, 13, 14, 9, 0),
    gsSP2Triangles(2, 15, 13, 0, 2, 13, 9, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(17, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(18, 24, 21, 0, 18, 21, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 23, 28, 25, 0),
    gsSP2Triangles(23, 25, 27, 0, 27, 29, 16, 0),
    gsSP2Triangles(27, 30, 29, 0, 29, 31, 16, 0),
    gsSPVertex(&HIDAN_room_26Vtx_0038A8[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 3, 0),
    gsSP2Triangles(5, 7, 6, 0, 6, 8, 3, 0),
    gsSP2Triangles(9, 10, 5, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 12, 5, 0, 13, 14, 9, 0),
    gsSP2Triangles(2, 15, 13, 0, 2, 13, 9, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 16, 0),
    gsSP2Triangles(19, 16, 18, 0, 21, 22, 19, 0),
    gsSP2Triangles(21, 23, 22, 0, 22, 24, 19, 0),
    gsSP2Triangles(25, 26, 21, 0, 25, 27, 26, 0),
    gsSP2Triangles(26, 28, 21, 0, 29, 30, 25, 0),
    gsSP2Triangles(18, 31, 29, 0, 18, 29, 25, 0),
    gsSPVertex(&HIDAN_room_26Vtx_0038A8[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(2, 8, 5, 0, 2, 5, 7, 0),
    gsSP2Triangles(9, 10, 11, 0, 7, 12, 9, 0),
    gsSP2Triangles(7, 9, 11, 0, 11, 13, 0, 0),
    gsSP2Triangles(11, 14, 13, 0, 13, 15, 0, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 11, 21, 0, 21, 11, 0, 0),
    gsSP2Triangles(22, 0, 2, 0, 22, 2, 23, 0),
    gsSP2Triangles(11, 20, 24, 0, 11, 24, 7, 0),
    gsSP2Triangles(7, 25, 26, 0, 7, 26, 2, 0),
    gsSP2Triangles(26, 27, 23, 0, 26, 23, 2, 0),
    gsSP2Triangles(7, 24, 25, 0, 24, 28, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 25, 0),
    gsSPVertex(&HIDAN_room_26Vtx_0038A8[159], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 2, 0),
    gsSP2Triangles(4, 8, 9, 0, 4, 9, 5, 0),
    gsSP2Triangles(10, 3, 11, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 10, 0, 13, 10, 15, 0),
    gsSP2Triangles(14, 0, 10, 0, 0, 3, 10, 0),
    gsSP2Triangles(16, 17, 0, 0, 16, 0, 14, 0),
    gsSP2Triangles(18, 19, 16, 0, 18, 16, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 24, 22, 0),
    gsSP2Triangles(21, 25, 24, 0, 26, 27, 28, 0),
    gsSP2Triangles(27, 29, 28, 0, 27, 26, 30, 0),
    gsSP1Triangle(11, 7, 31, 0),
    gsSPVertex(&HIDAN_room_26Vtx_0038A8[191], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 1, 0),
    gsSP2Triangles(5, 1, 7, 0, 7, 1, 8, 0),
    gsSP2Triangles(4, 0, 9, 0, 0, 10, 9, 0),
    gsSP2Triangles(8, 11, 7, 0, 11, 12, 7, 0),
    gsSP2Triangles(13, 14, 11, 0, 12, 11, 14, 0),
    gsSP2Triangles(15, 13, 11, 0, 15, 11, 16, 0),
    gsSP2Triangles(11, 17, 16, 0, 18, 19, 20, 0),
    gsSP2Triangles(19, 21, 20, 0, 22, 23, 24, 0),
    gsSP1Triangle(22, 24, 25, 0),
    gsSPEndDisplayList(),
};

u8 HIDAN_room_26_unaccounted_004A40[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0xF0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x15, 0xB8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0x40, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x24, 0xF8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2F, 0x68, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x35, 0x90, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x37, 0xA0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x46, 0xB8, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HIDAN_room_26Tex_004A98[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Tex_004A98.rgba16.inc.c"
};

u64 HIDAN_room_26Tex_005298[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Tex_005298.ci4.inc.c"
};

u64 HIDAN_room_26Tex_005698[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Tex_005698.ci4.inc.c"
};

u64 HIDAN_room_26Tex_005898[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Tex_005898.rgba16.inc.c"
};

u64 HIDAN_room_26Tex_006098[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_26Tex_006098.rgba16.inc.c"
};

