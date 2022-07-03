#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ydan_boss_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ydan_boss_scene.h"
#include "ydan_boss_room_1.h"

SceneCmd ydan_boss_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x05, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ydan_boss_room_0PolygonType0_000050),
    SCENE_CMD_OBJECT_LIST(6, ydan_boss_room_0ObjectList_000038),
    SCENE_CMD_END(),
};

s16 ydan_boss_room_0ObjectList_000038[] = {
    OBJECT_YDAN_OBJECTS,
    OBJECT_GOMA,
    OBJECT_GOL,
    OBJECT_WARP1,
    OBJECT_GI_HEARTS,
    OBJECT_KUSA,
};

u8 ydan_boss_room_0_possiblePadding_000044[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 ydan_boss_room_0PolygonType0_000050 = { 
    0, 1,
    ydan_boss_room_0PolygonDlist_00005C,
    ydan_boss_room_0PolygonDlist_00005C + ARRAY_COUNTU(ydan_boss_room_0PolygonDlist_00005C)
};

PolygonDlist ydan_boss_room_0PolygonDlist_00005C[1] = {
    { ydan_boss_room_0DL_001780, ydan_boss_room_0DL_004BE0 },
};

s32 ydan_boss_room_0_terminatorMaybe_000064 = { 0x01000000 };

u8 ydan_boss_room_0_possiblePadding_000068[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ydan_boss_room_0Vtx_000070[] = {
#include "assets/scenes/dungeons/ydan_boss/ydan_boss_room_0Vtx_000070.vtx.inc"
};

Gfx ydan_boss_room_0DL_001150[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ydan_boss_room_0Vtx_000070[262], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ydan_boss_room_0Tex_002790, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ydan_boss_sceneTLUT_000D30),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 170, 170, 170, 255),
    gsSPVertex(ydan_boss_room_0Vtx_000070, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_boss_room_0Tex_003790, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 119, 119, 119, 255),
    gsSPVertex(&ydan_boss_room_0Vtx_000070[16], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 4, 0),
    gsSP2Triangles(5, 10, 11, 0, 5, 11, 6, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 16, 19, 0, 20, 19, 21, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 20, 0),
    gsSP2Triangles(3, 12, 15, 0, 3, 15, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_boss_room_0Tex_003F90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&ydan_boss_room_0Vtx_000070[40], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 12, 9, 0, 8, 13, 12, 0),
    gsSP2Triangles(10, 14, 11, 0, 14, 15, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_boss_room_0Tex_002F90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_boss_room_0Vtx_000070[56], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 2, 0),
    gsSP2Triangles(6, 7, 2, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 11, 15, 0),
    gsSP2Triangles(10, 15, 11, 0, 2, 4, 5, 0),
    gsSP2Triangles(8, 11, 16, 0, 8, 16, 17, 0),
    gsSP2Triangles(11, 12, 18, 0, 11, 18, 16, 0),
    gsSP2Triangles(18, 0, 7, 0, 18, 7, 16, 0),
    gsSP2Triangles(7, 6, 17, 0, 7, 17, 16, 0),
    gsSP1Triangle(0, 2, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_boss_room_0Tex_002790, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_boss_room_0Vtx_000070[75], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 5, 0, 11, 5, 4, 0),
    gsSP2Triangles(3, 2, 12, 0, 3, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_boss_sceneTex_000F38, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_boss_room_0Vtx_000070[91], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_boss_room_0Tex_001F90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_boss_room_0Vtx_000070[95], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 6, 9, 10, 0),
    gsSP2Triangles(6, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 18, 17, 0, 19, 13, 20, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 17, 0),
    gsSP2Triangles(22, 17, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 28, 29, 30, 0),
    gsSP2Triangles(28, 30, 25, 0, 13, 19, 11, 0),
    gsSP1Triangle(4, 3, 31, 0),
    gsSPVertex(&ydan_boss_room_0Vtx_000070[127], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 3, 20, 0),
    gsSP2Triangles(3, 21, 20, 0, 22, 23, 24, 0),
    gsSP1Triangle(23, 25, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_boss_room_0Tex_001790, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_boss_room_0Vtx_000070[153], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 11, 7, 0, 10, 7, 6, 0),
    gsSP2Triangles(12, 10, 6, 0, 12, 6, 9, 0),
    gsSP2Triangles(13, 14, 15, 0, 14, 16, 15, 0),
    gsSP2Triangles(16, 17, 15, 0, 17, 18, 15, 0),
    gsSP2Triangles(17, 19, 18, 0, 19, 20, 18, 0),
    gsSP2Triangles(20, 21, 18, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSPVertex(&ydan_boss_room_0Vtx_000070[184], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 4, 9, 10, 0),
    gsSP2Triangles(4, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 12, 15, 0),
    gsSP2Triangles(16, 15, 17, 0, 9, 4, 1, 0),
    gsSP2Triangles(9, 1, 18, 0, 18, 1, 0, 0),
    gsSP2Triangles(18, 0, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(21, 23, 22, 0, 24, 25, 26, 0),
    gsSP2Triangles(25, 27, 26, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&ydan_boss_room_0Vtx_000070[216], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 3, 0, 8, 3, 2, 0),
    gsSP2Triangles(11, 4, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(14, 18, 17, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 22, 20, 0, 19, 23, 22, 0),
    gsSP2Triangles(24, 25, 20, 0, 24, 20, 22, 0),
    gsSP2Triangles(15, 17, 26, 0, 15, 26, 27, 0),
    gsSP2Triangles(28, 29, 5, 0, 28, 5, 4, 0),
    gsSPVertex(&ydan_boss_room_0Vtx_000070[246], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 4, 5, 3, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 3, 0),
    gsSP2Triangles(6, 8, 7, 0, 6, 9, 8, 0),
    gsSP2Triangles(4, 10, 11, 0, 4, 11, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 119, 119, 119, 255),
    gsSPVertex(&ydan_boss_room_0Vtx_000070[258], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx ydan_boss_room_0DL_001780[] = {
    gsSPDisplayList(ydan_boss_room_0DL_001150),
    gsSPEndDisplayList(),
};

u64 ydan_boss_room_0Tex_001790[] = {
#include "assets/scenes/dungeons/ydan_boss/ydan_boss_room_0Tex_001790.ci8.inc.c"
};

u64 ydan_boss_room_0Tex_001F90[] = {
#include "assets/scenes/dungeons/ydan_boss/ydan_boss_room_0Tex_001F90.ci8.inc.c"
};

u64 ydan_boss_room_0Tex_002790[] = {
#include "assets/scenes/dungeons/ydan_boss/ydan_boss_room_0Tex_002790.ci8.inc.c"
};

u64 ydan_boss_room_0Tex_002F90[] = {
#include "assets/scenes/dungeons/ydan_boss/ydan_boss_room_0Tex_002F90.ci8.inc.c"
};

u64 ydan_boss_room_0Tex_003790[] = {
#include "assets/scenes/dungeons/ydan_boss/ydan_boss_room_0Tex_003790.ci8.inc.c"
};

u64 ydan_boss_room_0Tex_003F90[] = {
#include "assets/scenes/dungeons/ydan_boss/ydan_boss_room_0Tex_003F90.ci8.inc.c"
};

Vtx ydan_boss_room_0Vtx_004790[] = {
#include "assets/scenes/dungeons/ydan_boss/ydan_boss_room_0Vtx_004790.vtx.inc"
};

Gfx ydan_boss_room_0DL_0049E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ydan_boss_room_0Vtx_004790[29], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ydan_boss_room_0Tex_005FF0, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPVertex(ydan_boss_room_0Vtx_004790, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(7, 10, 9, 0, 11, 10, 7, 0),
    gsSP2Triangles(6, 11, 7, 0, 1, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_boss_room_0Tex_004BF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(&ydan_boss_room_0Vtx_004790[12], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 1, 0, 5, 2, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 10, 0),
    gsSP2Triangles(6, 8, 5, 0, 8, 2, 5, 0),
    gsSP2Triangles(10, 0, 2, 0, 10, 9, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ydan_boss_room_0Tex_005BF0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ydan_boss_sceneTLUT_000D30),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&ydan_boss_room_0Vtx_004790[23], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 2, 1, 0),
    gsSP1Triangle(4, 5, 1, 0),
    gsSPEndDisplayList(),
};

Gfx ydan_boss_room_0DL_004BE0[] = {
    gsSPDisplayList(ydan_boss_room_0DL_0049E0),
    gsSPEndDisplayList(),
};

u64 ydan_boss_room_0Tex_004BF0[] = {
#include "assets/scenes/dungeons/ydan_boss/ydan_boss_room_0Tex_004BF0.rgba16.inc.c"
};

u64 ydan_boss_room_0Tex_005BF0[] = {
#include "assets/scenes/dungeons/ydan_boss/ydan_boss_room_0Tex_005BF0.ci8.inc.c"
};

u64 ydan_boss_room_0Tex_005FF0[] = {
#include "assets/scenes/dungeons/ydan_boss/ydan_boss_room_0Tex_005FF0.ia16.inc.c"
};

