#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinzou_room_14.h"
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

SceneCmd jyasinzou_room_14Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinzou_room_14PolygonType2_0000A0),
    SCENE_CMD_OBJECT_LIST(6, jyasinzou_room_14ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(5, jyasinzou_room_14ActorList_00004C),
    SCENE_CMD_END(),
};

s16 jyasinzou_room_14ObjectList_000040[] = {
    OBJECT_JYA_OBJ,
    OBJECT_JYA_DOOR,
    OBJECT_REEBA,
    OBJECT_BOX,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
};

ActorEntry jyasinzou_room_14ActorList_00004C[] = {
    { ACTOR_EN_ENCOUNT1,     {    612,   -159,  -1096 }, {      0,      0,      0 }, 0x0041 },
    { ACTOR_EN_OKARINA_TAG,  {    373,     30,   -872 }, {      0,      0,      0 }, 0x1CB1 },
    { ACTOR_EN_SW,           {    517,    270,  -1003 }, { 0X8000,      0,      0 }, 0x8702 },
    { ACTOR_EN_WONDER_TALK2, {    373,     30,   -872 }, {      0,   0XB6,    0XB }, 0x8AF1 },
    { ACTOR_EN_BOX,          {    358,     30,  -1392 }, {      0, 0X8000,      0 }, 0x7AA4 },
};

u8 jyasinzou_room_14_possiblePadding_00009C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 jyasinzou_room_14PolygonType2_0000A0 = { 
    2, 6,
    jyasinzou_room_14PolygonDlist2_0000AC,
    jyasinzou_room_14PolygonDlist2_0000AC + ARRAY_COUNTU(jyasinzou_room_14PolygonDlist2_0000AC)
};

PolygonDlist2 jyasinzou_room_14PolygonDlist2_0000AC[6] = {
    { {    551,     70,   -949 },    576, jyasinzou_room_14DL_000350, NULL },
    { {    551,     70,   -949 },    576, jyasinzou_room_14DL_000AF8, NULL },
    { {    671,     70,  -1313 },    262, jyasinzou_room_14DL_001088, NULL },
    { {    371,    -50,  -1373 },    116, jyasinzou_room_14DL_001340, NULL },
    { {    551,   -145,  -1123 },    392, jyasinzou_room_14DL_0017D8, NULL },
    { {    551,     30,   -699 },    335, jyasinzou_room_14DL_001AE0, NULL },
};

s32 jyasinzou_room_14_terminatorMaybe_00010C = { 0x01000000 };

u8 jyasinzou_room_14_unaccounted_000110[] = {
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xA0, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xA0, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_14Vtx_000170[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_14Vtx_000170.vtx.inc"
};

Gfx jyasinzou_room_14DL_000350[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_14Vtx_000170[22], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_14Vtx_000170, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_14Tex_0044A0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_14Vtx_000170[4], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_14Vtx_000170[10], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_14Tex_0044A0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_14Vtx_000170[14], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 6, 7, 1, 0),
    gsSP1Triangle(7, 2, 1, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_14Vtx_000548[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_14Vtx_000548.vtx.inc"
};

Gfx jyasinzou_room_14DL_000AF8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_14Vtx_000548[83], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(jyasinzou_room_14Tex_0044A0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_14Vtx_000548, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 11, 15, 16, 0),
    gsSP1Triangle(11, 16, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_14Vtx_000548[17], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_14Tex_0044A0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_14Vtx_000548[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_14Vtx_000548[25], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 8, 9, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_14Tex_0044A0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_14Vtx_000548[35], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 2, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(12, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_14Tex_001CA0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_14Vtx_000548[48], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_14Tex_0028A0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_14Vtx_000548[52], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_14Tex_001CA0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_14Vtx_000548[60], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_14Tex_0044A0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_14Vtx_000548[64], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_14Vtx_000548[72], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(2, 5, 4, 0, 2, 1, 5, 0),
    gsSP2Triangles(6, 7, 0, 0, 8, 9, 3, 0),
    gsSP2Triangles(8, 10, 9, 0, 10, 6, 9, 0),
    gsSP2Triangles(6, 0, 9, 0, 0, 2, 9, 0),
    gsSP1Triangle(2, 3, 9, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_14Vtx_000F98[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_14Vtx_000F98.vtx.inc"
};

Gfx jyasinzou_room_14DL_001088[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_14Vtx_000F98[7], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_14Vtx_000F98, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 1, 4, 0, 1, 5, 4, 0),
    gsSP2Triangles(1, 6, 5, 0, 1, 0, 6, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_14Vtx_001180[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_14Vtx_001180.vtx.inc"
};

Gfx jyasinzou_room_14DL_001340[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_14Vtx_001180[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_14Tex_0024A0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_14Vtx_001180, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_14Tex_0028A0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_14Vtx_001180[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_14Tex_0044A0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_14Vtx_001180[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_14Tex_0028A0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_14Vtx_001180[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_14Tex_0044A0, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_14Vtx_001180[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_14Vtx_0015F8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_14Vtx_0015F8.vtx.inc"
};

Gfx jyasinzou_room_14DL_0017D8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_14Vtx_0015F8[22], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_14Tex_0030A0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_14Vtx_0015F8, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 1, 5, 2, 0),
    gsSP2Triangles(1, 4, 5, 0, 4, 6, 5, 0),
    gsSP2Triangles(4, 7, 6, 0, 7, 8, 6, 0),
    gsSP2Triangles(8, 9, 6, 0, 8, 10, 9, 0),
    gsSP2Triangles(9, 5, 6, 0, 7, 11, 8, 0),
    gsSP2Triangles(11, 12, 8, 0, 12, 10, 8, 0),
    gsSP2Triangles(12, 13, 10, 0, 13, 14, 10, 0),
    gsSP2Triangles(14, 15, 10, 0, 14, 16, 15, 0),
    gsSP2Triangles(15, 5, 9, 0, 9, 10, 15, 0),
    gsSP2Triangles(5, 15, 2, 0, 15, 16, 2, 0),
    gsSP2Triangles(16, 17, 0, 0, 16, 0, 2, 0),
    gsSP2Triangles(16, 14, 18, 0, 14, 19, 18, 0),
    gsSP2Triangles(20, 17, 16, 0, 20, 16, 18, 0),
    gsSP2Triangles(21, 20, 18, 0, 21, 18, 19, 0),
    gsSP2Triangles(13, 21, 19, 0, 13, 12, 21, 0),
    gsSP1Triangle(19, 14, 13, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_14Vtx_001940[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_14Vtx_001940.vtx.inc"
};

Gfx jyasinzou_room_14DL_001AE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_14Vtx_001940[18], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_14Tex_0024A0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_14Vtx_001940, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 2, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 5, 0),
    gsSP2Triangles(2, 8, 5, 0, 2, 6, 8, 0),
    gsSP2Triangles(2, 10, 6, 0, 2, 11, 10, 0),
    gsSP2Triangles(12, 11, 2, 0, 2, 1, 12, 0),
    gsSP1Triangle(1, 13, 12, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(jyasinzou_room_14Tex_0034A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2),
    gsSPVertex(&jyasinzou_room_14Vtx_001940[14], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_14_unaccounted_001C68[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0xF8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0x88, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0x40, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0xD8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0xE0, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_14Tex_001CA0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_14Tex_001CA0.ci8.inc.c"
};

u64 jyasinzou_room_14Tex_0024A0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_14Tex_0024A0.ci8.inc.c"
};

u64 jyasinzou_room_14Tex_0028A0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_14Tex_0028A0.ci8.inc.c"
};

u64 jyasinzou_room_14Tex_0030A0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_14Tex_0030A0.ci8.inc.c"
};

u64 jyasinzou_room_14Tex_0034A0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_14Tex_0034A0.rgba16.inc.c"
};

u64 jyasinzou_room_14Tex_0044A0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_14Tex_0044A0.ci4.inc.c"
};

