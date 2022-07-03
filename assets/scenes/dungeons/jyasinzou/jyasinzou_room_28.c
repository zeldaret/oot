#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinzou_room_28.h"
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
#include "jyasinzou_room_11.h"
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

SceneCmd jyasinzou_room_28Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinzou_room_28PolygonType2_000060),
    SCENE_CMD_OBJECT_LIST(13, jyasinzou_room_28ObjectList_000038),
    SCENE_CMD_END(),
};

s16 jyasinzou_room_28ObjectList_000038[] = {
    OBJECT_JYA_OBJ,
    OBJECT_JYA_DOOR,
    OBJECT_MIR_RAY,
    OBJECT_BDOOR,
    OBJECT_SYOKUDAI,
    OBJECT_LIGHTSWITCH,
    OBJECT_BOX,
    OBJECT_KA,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_JYA_IRON,
    OBJECT_WALLMASTER,
    OBJECT_KIBAKO2,
};

u8 jyasinzou_room_28_possiblePadding_000054[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 jyasinzou_room_28PolygonType2_000060 = { 
    2, 6,
    jyasinzou_room_28PolygonDlist2_00006C,
    jyasinzou_room_28PolygonDlist2_00006C + ARRAY_COUNTU(jyasinzou_room_28PolygonDlist2_00006C)
};

PolygonDlist2 jyasinzou_room_28PolygonDlist2_00006C[6] = {
    { {     60,   1241,  -2234 },    586, jyasinzou_room_28DL_000D00, NULL },
    { {     60,   1007,  -2234 },    538, jyasinzou_room_28DL_001708, NULL },
    { {     60,   1087,  -2253 },    380, jyasinzou_room_28DL_0028A0, NULL },
    { {     60,   1047,  -2499 },     47, jyasinzou_room_28DL_0032F8, NULL },
    { {     60,   1123,  -2628 },    244, jyasinzou_room_28DL_0035D8, NULL },
    { {     60,   1122,  -2620 },    146, jyasinzou_room_28DL_003E18, NULL },
};

s32 jyasinzou_room_28_terminatorMaybe_0000CC = { 0x01000000 };

u8 jyasinzou_room_28_unaccounted_0000D0[] = {
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x60, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x60, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_28Vtx_000130[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Vtx_000130.vtx.inc"
};

Gfx jyasinzou_room_28DL_000D00[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[181], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007530, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_28Vtx_000130, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[10], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP1Triangle(17, 19, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_28Tex_007E30, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_017FE0),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[31], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[43], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 4, 6, 0),
    gsSP2Triangles(5, 6, 7, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007530, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[51], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[61], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 6, 7, 0),
    gsSP1Triangle(5, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007530, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[70], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[74], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[106], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(9, 12, 11, 0, 13, 14, 15, 0),
    gsSP1Triangle(13, 15, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007530, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[123], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[129], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 3, 4, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 6, 7, 4, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007530, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[139], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[146], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007530, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[150], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(4, 6, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[157], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007530, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[167], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_000130[171], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 7, 0, 0, 2, 7, 0),
    gsSP2Triangles(8, 9, 4, 0, 9, 5, 4, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_28Vtx_001428[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Vtx_001428.vtx.inc"
};

Gfx jyasinzou_room_28DL_001708[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_28Vtx_001428[38], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_008630, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_28Vtx_001428, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_004130, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001428[6], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_004930, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001428[12], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 3, 0),
    gsSP1Triangle(8, 6, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_008630, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001428[21], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 7, 0, 3, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 14, 12, 0),
    gsSP2Triangles(12, 15, 13, 0, 16, 3, 1, 0),
    gsSP2Triangles(3, 6, 1, 0, 6, 2, 1, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_28Vtx_001920[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Vtx_001920.vtx.inc"
};

Gfx jyasinzou_room_28DL_0028A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[240], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007A30, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_28Vtx_001920, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007930, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[24], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007A30, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[30], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007930, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[54], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007A30, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[60], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007930, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[84], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007A30, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[90], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007930, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[114], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007A30, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[120], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007930, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[144], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007A30, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[150], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007930, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[174], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007A30, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[180], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007930, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[204], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007A30, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[210], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_007930, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_001920[234], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_28Vtx_002FB8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Vtx_002FB8.vtx.inc"
};

Gfx jyasinzou_room_28DL_0032F8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_28Vtx_002FB8[44], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_28Vtx_002FB8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 16, 0),
    gsSP2Triangles(13, 12, 15, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 18, 21, 20, 0),
    gsSP2Triangles(18, 22, 21, 0, 18, 17, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 28, 29, 26, 0),
    gsSP1Triangle(28, 25, 30, 0),
    gsSPVertex(&jyasinzou_room_28Vtx_002FB8[31], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 1, 5, 2, 0),
    gsSP2Triangles(1, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 7, 11, 12, 0),
    gsSP1Triangle(7, 12, 8, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_28Vtx_003458[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Vtx_003458.vtx.inc"
};

Gfx jyasinzou_room_28DL_0035D8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_28Vtx_003458[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_006530, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_28Vtx_003458, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_28Vtx_0036A8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Vtx_0036A8.vtx.inc"
};

Gfx jyasinzou_room_28DL_003E18[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_28Vtx_0036A8[111], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_006130, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_28Vtx_0036A8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 8, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 9, 13, 12, 0),
    gsSP2Triangles(9, 8, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 15, 18, 10, 0),
    gsSP2Triangles(15, 10, 16, 0, 15, 6, 18, 0),
    gsSP2Triangles(15, 14, 6, 0, 6, 5, 9, 0),
    gsSP2Triangles(6, 9, 11, 0, 5, 8, 9, 0),
    gsSP2Triangles(19, 1, 0, 0, 19, 20, 1, 0),
    gsSP2Triangles(19, 21, 20, 0, 22, 23, 24, 0),
    gsSP2Triangles(23, 25, 24, 0, 22, 21, 23, 0),
    gsSP2Triangles(25, 7, 6, 0, 25, 6, 24, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 24, 29, 0),
    gsSP2Triangles(27, 29, 28, 0, 29, 30, 28, 0),
    gsSP2Triangles(27, 31, 24, 0, 27, 26, 31, 0),
    gsSPVertex(&jyasinzou_room_28Vtx_0036A8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 4, 0),
    gsSP2Triangles(2, 10, 8, 0, 2, 8, 3, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 20, 21, 22, 0),
    gsSP2Triangles(21, 23, 22, 0, 23, 24, 22, 0),
    gsSP2Triangles(24, 19, 22, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 26, 21, 29, 0),
    gsSP2Triangles(26, 29, 27, 0, 29, 16, 27, 0),
    gsSP2Triangles(16, 28, 27, 0, 20, 22, 17, 0),
    gsSP2Triangles(20, 17, 16, 0, 22, 19, 17, 0),
    gsSP2Triangles(14, 13, 30, 0, 13, 31, 30, 0),
    gsSPVertex(&jyasinzou_room_28Vtx_0036A8[64], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 4, 1, 5, 0),
    gsSP2Triangles(3, 7, 8, 0, 3, 8, 6, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 3, 0),
    gsSP2Triangles(9, 3, 10, 0, 9, 13, 12, 0),
    gsSP2Triangles(3, 14, 10, 0, 14, 11, 10, 0),
    gsSP2Triangles(15, 16, 7, 0, 15, 7, 17, 0),
    gsSP2Triangles(18, 11, 19, 0, 11, 20, 19, 0),
    gsSP2Triangles(19, 21, 22, 0, 19, 22, 18, 0),
    gsSP2Triangles(15, 22, 23, 0, 15, 23, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_28Tex_005930, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_28Vtx_0036A8[88], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 3, 5, 0),
    gsSP2Triangles(3, 2, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 6, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 11, 0),
    gsSP2Triangles(14, 11, 10, 0, 16, 17, 15, 0),
    gsSP2Triangles(16, 15, 14, 0, 2, 1, 17, 0),
    gsSP2Triangles(2, 17, 16, 0, 5, 2, 16, 0),
    gsSP2Triangles(5, 16, 14, 0, 5, 14, 10, 0),
    gsSP2Triangles(5, 10, 13, 0, 18, 19, 8, 0),
    gsSP2Triangles(18, 8, 7, 0, 5, 13, 20, 0),
    gsSP2Triangles(5, 20, 21, 0, 18, 5, 21, 0),
    gsSP2Triangles(20, 13, 12, 0, 20, 12, 22, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_28_unaccounted_0040F8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x08, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x28, 0xA0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x32, 0xF8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x35, 0xD8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3E, 0x18, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_28Tex_004130[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Tex_004130.ci8.inc.c"
};

u64 jyasinzou_room_28Tex_004930[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Tex_004930.ci8.inc.c"
};

u64 jyasinzou_room_28Tex_005130[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Tex_005130.ci8.inc.c"
};

u64 jyasinzou_room_28Tex_005930[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Tex_005930.ci8.inc.c"
};

u64 jyasinzou_room_28Tex_006130[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Tex_006130.ci8.inc.c"
};

u64 jyasinzou_room_28Tex_006530[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Tex_006530.rgba16.inc.c"
};

u64 jyasinzou_room_28Tex_007530[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Tex_007530.ci8.inc.c"
};

u64 jyasinzou_room_28Tex_007930[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Tex_007930.ci8.inc.c"
};

u64 jyasinzou_room_28Tex_007A30[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Tex_007A30.ci8.inc.c"
};

u64 jyasinzou_room_28Tex_007E30[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Tex_007E30.ci4.inc.c"
};

u64 jyasinzou_room_28Tex_008630[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_28Tex_008630.ci8.inc.c"
};

