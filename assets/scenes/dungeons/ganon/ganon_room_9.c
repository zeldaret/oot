#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ganon_room_9.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ganon_scene.h"
#include "ganon_room_0.h"
#include "ganon_room_1.h"
#include "ganon_room_2.h"
#include "ganon_room_3.h"
#include "ganon_room_4.h"
#include "ganon_room_5.h"
#include "ganon_room_6.h"
#include "ganon_room_7.h"
#include "ganon_room_8.h"

SceneCmd ganon_room_9Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ganon_room_9PolygonType0_000040),
    SCENE_CMD_OBJECT_LIST(2, ganon_room_9ObjectList_000038),
    SCENE_CMD_END(),
};

s16 ganon_room_9ObjectList_000038[] = {
    OBJECT_GANON_OBJECTS,
    OBJECT_BDOOR,
};

u8 ganon_room_9_possiblePadding_00003C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 ganon_room_9PolygonType0_000040 = { 
    0, 1,
    ganon_room_9PolygonDlist_00004C,
    ganon_room_9PolygonDlist_00004C + ARRAY_COUNTU(ganon_room_9PolygonDlist_00004C)
};

PolygonDlist ganon_room_9PolygonDlist_00004C[1] = {
    { ganon_room_9DL_001F08, NULL },
};

s32 ganon_room_9_terminatorMaybe_000054 = { 0x01000000 };

u8 ganon_room_9_possiblePadding_000058[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ganon_room_9Vtx_000060[] = {
#include "assets/scenes/dungeons/ganon/ganon_room_9Vtx_000060.vtx.inc"
};

Gfx ganon_room_9DL_001040[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_room_9Vtx_000060[246], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_room_9Tex_004D20, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00EBE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganon_room_9Vtx_000060, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_003D20, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00E9D8),
    gsSPVertex(&ganon_room_9Vtx_000060[8], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_002120, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_room_9Vtx_000060[24], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_003D20, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_room_9Vtx_000060[27], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_002120, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_room_9Vtx_000060[47], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_003D20, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_room_9Vtx_000060[50], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_002120, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_room_9Vtx_000060[58], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_003D20, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_room_9Vtx_000060[64], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_005120, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00EDA0),
    gsSPVertex(&ganon_room_9Vtx_000060[68], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_002920, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_room_9TLUT_001F18),
    gsSPVertex(&ganon_room_9Vtx_000060[76], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_002120, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00E9D8),
    gsSPVertex(&ganon_room_9Vtx_000060[92], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_004520, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_room_9TLUT_001F18),
    gsSPVertex(&ganon_room_9Vtx_000060[104], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(1, 12, 2, 0, 12, 13, 2, 0),
    gsSP2Triangles(14, 5, 15, 0, 14, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_002D20, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00EBE0),
    gsSPVertex(&ganon_room_9Vtx_000060[120], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_004520, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_room_9TLUT_001F18),
    gsSPVertex(&ganon_room_9Vtx_000060[124], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_002D20, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00EBE0),
    gsSPVertex(&ganon_room_9Vtx_000060[128], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_003120, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_room_9Vtx_000060[132], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_004520, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_room_9TLUT_001F18),
    gsSPVertex(&ganon_room_9Vtx_000060[136], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 5, 9, 0, 5, 4, 9, 0),
    gsSP2Triangles(10, 11, 0, 0, 11, 3, 0, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_002D20, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00EBE0),
    gsSPVertex(&ganon_room_9Vtx_000060[152], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_004520, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_room_9TLUT_001F18),
    gsSPVertex(&ganon_room_9Vtx_000060[160], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_003120, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00EBE0),
    gsSPVertex(&ganon_room_9Vtx_000060[164], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_004520, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_room_9TLUT_001F18),
    gsSPVertex(&ganon_room_9Vtx_000060[168], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_003120, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00EBE0),
    gsSPVertex(&ganon_room_9Vtx_000060[172], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 2, 0),
    gsSP2Triangles(6, 7, 2, 0, 6, 8, 7, 0),
    gsSP2Triangles(8, 3, 7, 0, 3, 2, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_002120, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00E9D8),
    gsSPVertex(&ganon_room_9Vtx_000060[181], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 14, 13, 0, 17, 19, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_004520, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_room_9TLUT_001F18),
    gsSPVertex(&ganon_room_9Vtx_000060[201], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 2, 5, 0, 2, 6, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_004D20, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00EBE0),
    gsSPVertex(&ganon_room_9Vtx_000060[208], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_002120, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00E9D8),
    gsSPVertex(&ganon_room_9Vtx_000060[216], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_005120, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00EDA0),
    gsSPVertex(&ganon_room_9Vtx_000060[222], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_003520, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00EBE0),
    gsSPVertex(&ganon_room_9Vtx_000060[226], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_room_9Tex_003920, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganon_sceneTLUT_00EDA0),
    gsSPVertex(&ganon_room_9Vtx_000060[230], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 8, 0, 12, 8, 1, 0),
    gsSP2Triangles(8, 7, 2, 0, 8, 2, 1, 0),
    gsSP2Triangles(14, 15, 0, 0, 14, 0, 9, 0),
    gsSP2Triangles(0, 3, 6, 0, 0, 6, 9, 0),
    gsSPEndDisplayList(),
};

Gfx ganon_room_9DL_001F08[] = {
    gsSPDisplayList(ganon_room_9DL_001040),
    gsSPEndDisplayList(),
};

u64 ganon_room_9TLUT_001F18[] = {
#include "assets/scenes/dungeons/ganon/ganon_room_9TLUT_001F18.rgba16.inc.c"
};

u8 ganon_room_9_unaccounted_002118[] = {
    0x00, 0x00, 0x02, 0x01, 0x48, 0x6A, 0x00, 0x00, 
};

u64 ganon_room_9Tex_002120[] = {
#include "assets/scenes/dungeons/ganon/ganon_room_9Tex_002120.ci8.inc.c"
};

u64 ganon_room_9Tex_002920[] = {
#include "assets/scenes/dungeons/ganon/ganon_room_9Tex_002920.ci8.inc.c"
};

u64 ganon_room_9Tex_002D20[] = {
#include "assets/scenes/dungeons/ganon/ganon_room_9Tex_002D20.ci8.inc.c"
};

u64 ganon_room_9Tex_003120[] = {
#include "assets/scenes/dungeons/ganon/ganon_room_9Tex_003120.ci8.inc.c"
};

u64 ganon_room_9Tex_003520[] = {
#include "assets/scenes/dungeons/ganon/ganon_room_9Tex_003520.ci8.inc.c"
};

u64 ganon_room_9Tex_003920[] = {
#include "assets/scenes/dungeons/ganon/ganon_room_9Tex_003920.ci8.inc.c"
};

u64 ganon_room_9Tex_003D20[] = {
#include "assets/scenes/dungeons/ganon/ganon_room_9Tex_003D20.ci8.inc.c"
};

u64 ganon_room_9Tex_004520[] = {
#include "assets/scenes/dungeons/ganon/ganon_room_9Tex_004520.ci8.inc.c"
};

u64 ganon_room_9Tex_004D20[] = {
#include "assets/scenes/dungeons/ganon/ganon_room_9Tex_004D20.ci8.inc.c"
};

u64 ganon_room_9Tex_005120[] = {
#include "assets/scenes/dungeons/ganon/ganon_room_9Tex_005120.ci8.inc.c"
};

