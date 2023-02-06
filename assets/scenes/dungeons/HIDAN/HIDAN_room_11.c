#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HIDAN_room_11.h"
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

SceneCmd HIDAN_room_11Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x02, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HIDAN_room_11PolygonType2_000100),
    SCENE_CMD_OBJECT_LIST(10, HIDAN_room_11ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(16, HIDAN_room_11ActorList_000050),
    SCENE_CMD_END(),
};

s16 HIDAN_room_11ObjectList_000040[] = {
    OBJECT_HIDAN_OBJECTS,
    OBJECT_SYOKUDAI,
    OBJECT_BOX,
    OBJECT_D_HSBLOCK,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
    OBJECT_KA,
    OBJECT_OF1D_MAP,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
};

ActorEntry HIDAN_room_11ActorList_000050[] = {
    { ACTOR_OBJ_HSBLOCK,           {  -2002,   2921,     98 }, {      0, 0X4000,      0 }, 0xFFC0 },
    { ACTOR_OBJ_HSBLOCK,           {  -1562,   2920,    102 }, {      0, 0XC000,      0 }, 0xFFC0 },
    { ACTOR_BG_HIDAN_FIREWALL,     {  -1674,   2980,      0 }, {      0, 0XC000,      0 }, 0x00FF },
    { ACTOR_BG_HIDAN_FIREWALL,     {  -1674,   2980,   -140 }, {      0, 0XC000,      0 }, 0x00FF },
    { ACTOR_BG_HIDAN_FIREWALL,     {  -1674,   2980,   -280 }, {      0, 0XC000,      0 }, 0x00FF },
    { ACTOR_BG_HIDAN_FIREWALL,     {  -1674,   2980,    140 }, {      0, 0XC000,      0 }, 0x00FF },
    { ACTOR_BG_HIDAN_FIREWALL,     {  -1674,   2980,    280 }, {      0, 0XC000,      0 }, 0x00FF },
    { ACTOR_BG_HIDAN_KOUSI,        {  -1675,   2800,     -3 }, {      0, 0XC000,      0 }, 0x0B02 },
    { ACTOR_EN_SW,                 {  -1483,   2844,     -2 }, { 0XC000, 0X4000,      0 }, 0x8508 },
    { ACTOR_EN_BOX,                {  -1545,   2800,    -41 }, {      0, 0X8000,      0 }, 0x5849 },
    { ACTOR_OBJ_SWITCH,            {  -2030,   2980,     -1 }, {      0, 0X4000,      0 }, 0x0B01 },
    { ACTOR_EN_GO2,                {  -1630,   2800,    -20 }, {      0, 0XC000,      0 }, 0x2E43 },
    { ACTOR_ELF_MSG,               {  -2031,   2980,     -2 }, {      0,      0,      0 }, 0x13A9 },
    { ACTOR_OBJ_WARP2BLOCK,        {  -2030,   2940,     -2 }, {      0,      0,      0 }, 0xB021 },
    { ACTOR_OBJ_WARP2BLOCK,        {  -1730,   2800,    188 }, {      0,      0,      0 }, 0x3021 },
    { ACTOR_ELF_MSG2,              {  -1980,   2988,     -1 }, {      0,   0X22,    0X1 }, 0x3F05 },
};

PolygonType2 HIDAN_room_11PolygonType2_000100 = { 
    2, 3,
    HIDAN_room_11PolygonDlist2_00010C,
    HIDAN_room_11PolygonDlist2_00010C + ARRAY_COUNTU(HIDAN_room_11PolygonDlist2_00010C)
};

PolygonDlist2 HIDAN_room_11PolygonDlist2_00010C[3] = {
    { {  -1765,   2950,      0 },    365, HIDAN_room_11DL_0009E0, NULL },
    { {  -1780,   4700,      0 },    953, HIDAN_room_11DL_001908, NULL },
    { {  -1780,   3500,      0 },    768, HIDAN_room_11DL_002628, NULL },
};

s32 HIDAN_room_11_terminatorMaybe_00013C = { 0x01000000 };

Vtx HIDAN_room_11Vtx_000140[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_11Vtx_000140.vtx.inc"
};

Gfx HIDAN_room_11DL_0009E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_11Vtx_000140[130], 8, 0),
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
    gsSPVertex(HIDAN_room_11Vtx_000140, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(5, 9, 6, 0, 9, 8, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
    gsSP2Triangles(25, 26, 23, 0, 26, 24, 23, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSP2Triangles(27, 31, 28, 0, 31, 27, 30, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_room_11Tex_0033D8, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000140[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 5, 0, 0),
    gsSP2Triangles(1, 6, 2, 0, 1, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_018BD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000140[40], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HIDAN_room_11Vtx_000140[72], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_019DD0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000140[88], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 5, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 9, 8, 0, 12, 8, 13, 0),
    gsSP2Triangles(14, 15, 12, 0, 14, 12, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 19, 18, 0, 20, 18, 21, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_room_11Tex_0027D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000140[112], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 0, 2, 0),
    gsSP2Triangles(6, 4, 7, 0, 4, 5, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_11Tex_0033D8, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_0189B0),
    gsSPVertex(&HIDAN_room_11Vtx_000140[120], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(0, 3, 1, 0, 0, 2, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000140[125], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSPEndDisplayList(),
};

Vtx HIDAN_room_11Vtx_000E08[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_11Vtx_000E08.vtx.inc"
};

Gfx HIDAN_room_11DL_001908[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[168], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HIDAN_room_11Tex_002FD8, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_0189B0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HIDAN_room_11Vtx_000E08, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_018DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[12], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_11Tex_002FD8, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_0189B0),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[24], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(3, 27, 28, 0, 3, 28, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[53], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_018DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[61], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_11Tex_002FD8, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_0189B0),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[67], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(3, 11, 12, 0, 3, 12, 4, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[84], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_room_11Tex_002FD8, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[88], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 0, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[98], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_018DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[102], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(HIDAN_room_11Tex_002FD8, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, HIDAN_sceneTLUT_0189B0),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[107], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(6, 11, 12, 0, 6, 12, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[120], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_room_11Tex_002FD8, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[124], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_sceneTex_0189D0, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[128], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HIDAN_room_11Tex_002FD8, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[132], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(HIDAN_sceneTex_018DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HIDAN_room_11Vtx_000E08[136], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

Vtx HIDAN_room_11Vtx_002088[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_11Vtx_002088.vtx.inc"
};

Gfx HIDAN_room_11DL_002628[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HIDAN_room_11Vtx_002088[82], 8, 0),
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
    gsSPVertex(HIDAN_room_11Vtx_002088, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 16, 19, 0, 20, 19, 21, 0),
    gsSP2Triangles(22, 12, 15, 0, 22, 15, 23, 0),
    gsSP2Triangles(24, 0, 3, 0, 24, 3, 25, 0),
    gsSP2Triangles(10, 26, 11, 0, 10, 27, 26, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&HIDAN_room_11Vtx_002088[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 0, 5, 6, 0),
    gsSP2Triangles(0, 6, 1, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 7, 10, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(17, 18, 15, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 19, 22, 0, 23, 22, 19, 0),
    gsSP2Triangles(23, 19, 24, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 23, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 29, 30, 0, 29, 28, 31, 0),
    gsSPVertex(&HIDAN_room_11Vtx_002088[63], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 13, 16, 17, 0),
    gsSP1Triangle(13, 17, 18, 0),
    gsSPEndDisplayList(),
};

u8 HIDAN_room_11_unaccounted_0027B8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x09, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x19, 0x08, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x26, 0x28, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HIDAN_room_11Tex_0027D8[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_11Tex_0027D8.rgba16.inc.c"
};

u64 HIDAN_room_11Tex_002FD8[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_11Tex_002FD8.ci4.inc.c"
};

u64 HIDAN_room_11Tex_0033D8[] = {
#include "assets/scenes/dungeons/HIDAN/HIDAN_room_11Tex_0033D8.ci4.inc.c"
};

