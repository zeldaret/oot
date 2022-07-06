#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "testroom_room_3.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "testroom_scene.h"
#include "testroom_room_0.h"
#include "testroom_room_1.h"
#include "testroom_room_2.h"
#include "testroom_room_4.h"

SceneCmd testroom_room_3Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(0, 0, 255),
    SCENE_CMD_MESH(&testroom_room_3PolygonType0_000050),
    SCENE_CMD_OBJECT_LIST(5, testroom_room_3ObjectList_000038),
    SCENE_CMD_END(),
};

s16 testroom_room_3ObjectList_000038[] = {
    OBJECT_BOX,
    OBJECT_YUKABYUN,
    OBJECT_LIGHTBOX,
    OBJECT_TRAP,
    OBJECT_VM,
};

u8 testroom_room_3_possiblePadding_000044[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 testroom_room_3PolygonType0_000050 = { 
    0, 1,
    testroom_room_3PolygonDlist_00005C,
    testroom_room_3PolygonDlist_00005C + ARRAY_COUNTU(testroom_room_3PolygonDlist_00005C)
};

PolygonDlist testroom_room_3PolygonDlist_00005C[1] = {
    { testroom_room_3DL_000730, NULL },
};

s32 testroom_room_3_terminatorMaybe_000064 = { 0x01000000 };

u8 testroom_room_3_possiblePadding_000068[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx testroom_room_3Vtx_000070[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_3Vtx_000070.vtx.inc"
};

Gfx testroom_room_3DL_000730[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(testroom_room_3Tex_000A18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(testroom_room_3Vtx_000070, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_room_3Tex_001218, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_3Vtx_000070[12], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 5, 4, 0, 17, 7, 6, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_room_3Tex_002218, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_3Vtx_000070[34], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_room_3Tex_003218, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_3Vtx_000070[46], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_sceneTex_002A00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_3Vtx_000070[50], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 5, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 23, 22, 0),
    gsSP2Triangles(24, 22, 25, 0, 25, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&testroom_room_3Vtx_000070[82], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 1, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(testroom_sceneTex_003A00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&testroom_room_3Vtx_000070[104], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 testroom_room_3Tex_000A18[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_3Tex_000A18.rgba16.inc.c"
};

u64 testroom_room_3Tex_001218[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_3Tex_001218.rgba16.inc.c"
};

u64 testroom_room_3Tex_002218[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_3Tex_002218.rgba16.inc.c"
};

u64 testroom_room_3Tex_003218[] = {
#include "assets/scenes/test_levels/testroom/testroom_room_3Tex_003218.rgba16.inc.c"
};

