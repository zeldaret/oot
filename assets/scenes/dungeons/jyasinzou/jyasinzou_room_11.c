#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinzou_room_11.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "jyasinzou_scene.h"
#include "jyasinzou_room_0.h"
#include "jyasinzou_room_1.h"
#include "jyasinzou_room_2.h"
#include "jyasinzou_room_3.h"
#include "jyasinzou_room_4.h"
#include "jyasinzou_room_5.h"
#include "jyasinzou_room_6.h"
#include "jyasinzou_room_7.h"
#include "jyasinzou_room_8.h"
#include "jyasinzou_room_9.h"
#include "jyasinzou_room_10.h"
#include "jyasinzou_room_12.h"
#include "jyasinzou_room_13.h"
#include "jyasinzou_room_14.h"
#include "jyasinzou_room_15.h"
#include "jyasinzou_room_16.h"
#include "jyasinzou_room_17.h"
#include "jyasinzou_room_18.h"
#include "jyasinzou_room_19.h"
#include "jyasinzou_room_20.h"
#include "jyasinzou_room_21.h"
#include "jyasinzou_room_22.h"
#include "jyasinzou_room_23.h"
#include "jyasinzou_room_24.h"
#include "jyasinzou_room_25.h"
#include "jyasinzou_room_26.h"
#include "jyasinzou_room_27.h"
#include "jyasinzou_room_28.h"

SceneCmd jyasinzou_room_11Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinzou_room_11PolygonType2_000040),
    SCENE_CMD_OBJECT_LIST(4, jyasinzou_room_11ObjectList_000038),
    SCENE_CMD_END(),
};

s16 jyasinzou_room_11ObjectList_000038[] = {
    OBJECT_JYA_OBJ,
    OBJECT_JYA_DOOR,
    OBJECT_JYA_IRON,
    OBJECT_IK,
};

PolygonType2 jyasinzou_room_11PolygonType2_000040 = { 
    2, 2,
    jyasinzou_room_11PolygonDlist2_00004C,
    jyasinzou_room_11PolygonDlist2_00004C + ARRAY_COUNTU(jyasinzou_room_11PolygonDlist2_00004C)
};

PolygonDlist2 jyasinzou_room_11PolygonDlist2_00004C[2] = {
    { {    130,   1143,   1474 },    923, NULL, jyasinzou_room_11DL_000E40 },
    { {    130,   1113,   1474 },   1196, jyasinzou_room_11DL_000530, NULL },
};

s32 jyasinzou_room_11_terminatorMaybe_00006C = { 0x01000000 };

u8 jyasinzou_room_11_unaccounted_000070[] = {
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x40, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x40, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_11Vtx_0000D0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_11Vtx_0000D0.vtx.inc"
};

Gfx jyasinzou_room_11DL_000530[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_11Vtx_0000D0[62], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_11Tex_000780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_11Vtx_0000D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(1, 6, 7, 0, 1, 7, 2, 0),
    gsSP2Triangles(7, 8, 4, 0, 7, 4, 2, 0),
    gsSP2Triangles(6, 9, 10, 0, 6, 10, 7, 0),
    gsSP2Triangles(10, 11, 8, 0, 10, 8, 7, 0),
    gsSP2Triangles(9, 6, 12, 0, 9, 12, 13, 0),
    gsSP2Triangles(6, 1, 14, 0, 6, 14, 12, 0),
    gsSP2Triangles(1, 0, 15, 0, 1, 15, 14, 0),
    gsSP2Triangles(5, 4, 16, 0, 5, 16, 17, 0),
    gsSP2Triangles(4, 8, 18, 0, 4, 18, 16, 0),
    gsSP2Triangles(8, 11, 19, 0, 8, 19, 18, 0),
    gsSP2Triangles(20, 21, 19, 0, 21, 18, 19, 0),
    gsSP2Triangles(21, 22, 18, 0, 23, 24, 22, 0),
    gsSP2Triangles(17, 16, 24, 0, 16, 22, 24, 0),
    gsSP2Triangles(16, 18, 22, 0, 25, 26, 27, 0),
    gsSP2Triangles(23, 22, 28, 0, 22, 21, 28, 0),
    gsSP2Triangles(29, 13, 30, 0, 13, 12, 30, 0),
    gsSP2Triangles(12, 26, 30, 0, 27, 14, 15, 0),
    gsSP2Triangles(27, 26, 14, 0, 26, 12, 14, 0),
    gsSPVertex(&jyasinzou_room_11Vtx_0000D0[31], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 0, 0, 3, 4, 0, 0),
    gsSP2Triangles(6, 7, 1, 0, 0, 6, 1, 0),
    gsSP2Triangles(5, 8, 6, 0, 0, 5, 6, 0),
    gsSP2Triangles(9, 1, 7, 0, 10, 9, 7, 0),
    gsSP2Triangles(11, 2, 1, 0, 9, 11, 1, 0),
    gsSP2Triangles(12, 5, 4, 0, 13, 12, 4, 0),
    gsSP2Triangles(14, 8, 5, 0, 12, 14, 5, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 18, 0),
    gsSP2Triangles(17, 12, 13, 0, 17, 15, 12, 0),
    gsSP2Triangles(15, 14, 12, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 15, 18, 0, 22, 16, 15, 0),
    gsSP2Triangles(23, 20, 10, 0, 11, 9, 19, 0),
    gsSP2Triangles(9, 20, 19, 0, 9, 10, 20, 0),
    gsSP2Triangles(24, 25, 7, 0, 6, 24, 7, 0),
    gsSP2Triangles(8, 26, 24, 0, 6, 8, 24, 0),
    gsSP2Triangles(10, 7, 25, 0, 27, 10, 25, 0),
    gsSP2Triangles(28, 26, 8, 0, 14, 28, 8, 0),
    gsSP2Triangles(28, 16, 29, 0, 28, 14, 16, 0),
    gsSP2Triangles(23, 27, 30, 0, 23, 10, 27, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_11_unaccounted_000770[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x05, 0x30, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_11Tex_000780[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_11Tex_000780.ci8.inc.c"
};

Vtx jyasinzou_room_11Vtx_000B80[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_11Vtx_000B80.vtx.inc"
};

Gfx jyasinzou_room_11DL_000E40[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_11Vtx_000B80[36], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_16b, 8, 128, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_CLAMP, 3, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0, PRIM_LOD_FRAC,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_11Vtx_000B80, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA_PRIM2),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 252),
    gsSPVertex(&jyasinzou_room_11Vtx_000B80[4], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 10, 6, 0),
    gsSP2Triangles(7, 6, 10, 0, 11, 5, 12, 0),
    gsSP2Triangles(11, 13, 5, 0, 12, 5, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 10, 6, 0),
    gsSP2Triangles(7, 6, 10, 0, 11, 5, 12, 0),
    gsSP2Triangles(11, 13, 5, 0, 12, 5, 4, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 18, 0),
    gsSP2Triangles(16, 15, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 19, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(21, 20, 24, 0, 20, 25, 24, 0),
    gsSP2Triangles(15, 14, 26, 0, 14, 27, 26, 0),
    gsSP2Triangles(24, 25, 27, 0, 25, 26, 27, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 18, 0),
    gsSP2Triangles(16, 15, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 19, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(21, 20, 24, 0, 20, 25, 24, 0),
    gsSP2Triangles(15, 14, 26, 0, 14, 27, 26, 0),
    gsSP2Triangles(24, 25, 27, 0, 25, 26, 27, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0, PRIM_LOD_FRAC,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&jyasinzou_room_11Vtx_000B80[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_11_unaccounted_001000[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0x40, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

