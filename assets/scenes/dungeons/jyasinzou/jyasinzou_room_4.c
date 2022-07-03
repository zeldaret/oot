#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinzou_room_4.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "jyasinzou_scene.h"
#include "jyasinzou_room_0.h"
#include "jyasinzou_room_1.h"
#include "jyasinzou_room_2.h"
#include "jyasinzou_room_3.h"
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
#include "jyasinzou_room_28.h"

SceneCmd jyasinzou_room_4Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinzou_room_4PolygonType2_000150),
    SCENE_CMD_OBJECT_LIST(13, jyasinzou_room_4ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(15, jyasinzou_room_4ActorList_00005C),
    SCENE_CMD_END(),
};

s16 jyasinzou_room_4ObjectList_000040[] = {
    OBJECT_JYA_OBJ,
    OBJECT_JYA_DOOR,
    OBJECT_MIR_RAY,
    OBJECT_LIGHTSWITCH,
    OBJECT_BOX,
    OBJECT_DODOJR,
    OBJECT_MIZU_OBJECTS,
    OBJECT_VM,
    OBJECT_FIREFLY,
    OBJECT_RR,
    OBJECT_GI_SHIELD_1,
    OBJECT_GI_SHIELD_2,
    OBJECT_GI_CLOTHES,
};

ActorEntry jyasinzou_room_4ActorList_00005C[] = {
    { ACTOR_EN_DODOJR,         {  -1069,    491,   -797 }, {      0, 0X5555,      0 }, 0xFFFF },
    { ACTOR_EN_DODOJR,         {  -1046,    499,   -725 }, {      0, 0X6444,      0 }, 0xFFFF },
    { ACTOR_EN_DODOJR,         {   -739,    480,  -1022 }, {      0, 0XE38E,      0 }, 0xFFFF },
    { ACTOR_EN_DODOJR,         {   -816,    480,  -1105 }, {      0, 0XECCD,      0 }, 0xFFFF },
    { ACTOR_EN_RR,             {  -1058,    256,  -1261 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_LIGHTSWITCH,   {   -921,    480,   -889 }, { 0XC000, 0XC000,      0 }, 0x0F00 },
    { ACTOR_BG_JYA_BOMBCHUIWA, {  -1160,    686,   -880 }, {      0,      0,      0 }, 0x000F },
    { ACTOR_OBJ_SWITCH,        {  -1058,     40,  -1266 }, {      0,      0,      0 }, 0x3E43 },
    { ACTOR_OBJ_SWITCH,        {  -1062,    483,  -1162 }, {      0,      0,      0 }, 0x3E43 },
    { ACTOR_BG_MIZU_SHUTTER,   {  -1000,    236,  -1270 }, { 0X4000, 0XC000,      0 }, 0x0FFE },
    { ACTOR_EN_BOX,            {   -751,    480,  -1095 }, {      0, 0X5C72,      0 }, 0x7066 },
    { ACTOR_EN_VM,             {   -815,    480,   -776 }, {      0, 0X8000,      0 }, 0x0A00 },
    { ACTOR_OBJ_TSUBO,         {  -1035,     40,  -1240 }, {      0,      0,      0 }, 0x460E },
    { ACTOR_EN_WONDER_TALK2,   {   -920,    480,   -884 }, {      0,      0,    0XB }, 0x04BF },
    { ACTOR_EN_BOX,            {   -982,    703,   -643 }, {      0, 0X4000,    0XF }, 0x884C },
};

u8 jyasinzou_room_4_possiblePadding_00014C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 jyasinzou_room_4PolygonType2_000150 = { 
    2, 9,
    jyasinzou_room_4PolygonDlist2_00015C,
    jyasinzou_room_4PolygonDlist2_00015C + ARRAY_COUNTU(jyasinzou_room_4PolygonDlist2_00015C)
};

PolygonDlist2 jyasinzou_room_4PolygonDlist2_00015C[9] = {
    { {   -930,    640,  -1000 },    443, jyasinzou_room_4DL_000A80, NULL },
    { {   -940,    480,   -925 },    364, jyasinzou_room_4DL_001240, NULL },
    { {  -1060,    260,  -1220 },    253, jyasinzou_room_4DL_001858, NULL },
    { {  -1020,    495,   -905 },    345, jyasinzou_room_4DL_001D50, NULL },
    { {  -1216,    695,   -887 },     69, jyasinzou_room_4DL_002648, NULL },
    { {   -850,    669,   -640 },    255, jyasinzou_room_4DL_002090, NULL },
    { {   -835,    480,   -895 },    204, jyasinzou_room_4DL_002338, NULL },
    { {  -1216,    696,   -887 },     68, jyasinzou_room_4DL_002880, jyasinzou_room_4DL_007170 },
    { {  -1074,    669,   -895 },    375, jyasinzou_room_4DL_0032A0, NULL },
};

s32 jyasinzou_room_4_terminatorMaybe_0001EC = { 0x01000000 };

u8 jyasinzou_room_4_unaccounted_0001F0[] = {
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x50, 0x01, 0x03, 0x00, 0x00, 0x03, 0x00, 0x02, 0x28, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF9, 0xFB, 0xDA, 0x07, 0x15, 0xFB, 0x46, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF9, 0xFC, 0xCF, 0x08, 0xCD, 0xFD, 0x3A, 
    0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x59, 0xFB, 0x78, 0x02, 0xAE, 0xFC, 0x90, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x50, 0x01, 0x03, 0x00, 0x00, 0x03, 0x00, 0x02, 0x98, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF9, 0xFB, 0xDA, 0x07, 0x15, 0xFB, 0x46, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF9, 0xFC, 0xCF, 0x08, 0xCD, 0xFD, 0x3A, 
    0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x59, 0xFB, 0x78, 0x02, 0xAE, 0xFC, 0x90, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_4Vtx_0002D0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Vtx_0002D0.vtx.inc"
};

Gfx jyasinzou_room_4DL_000A80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_4Vtx_0002D0[115], 8, 0),
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
    gsSPVertex(jyasinzou_room_4Vtx_0002D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 11, 9, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 16, 17, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 20, 21, 22, 0),
    gsSP2Triangles(21, 23, 22, 0, 24, 25, 22, 0),
    gsSP2Triangles(25, 20, 22, 0, 26, 27, 28, 0),
    gsSP1Triangle(26, 28, 29, 0),
    gsSPVertex(&jyasinzou_room_4Vtx_0002D0[30], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_4Tex_004698, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_4Vtx_0002D0[34], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_4Tex_005B98, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_4Vtx_0002D0[38], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_4Tex_004698, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_4Vtx_0002D0[42], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_4Tex_003E98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_4Vtx_0002D0[54], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 8, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 12, 13, 0, 14, 13, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_4Tex_006798, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_4Vtx_0002D0[70], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP1Triangle(0, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_4Vtx_0002D0[77], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_4Tex_006798, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_4Vtx_0002D0[85], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_4Vtx_0002D0[93], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 0, 2, 0, 4, 5, 0, 0),
    gsSP2Triangles(5, 6, 0, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 7, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 20, 18, 0),
    gsSP2Triangles(20, 21, 18, 0, 21, 19, 18, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_4Vtx_000F30[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Vtx_000F30.vtx.inc"
};

Gfx jyasinzou_room_4DL_001240[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_4Vtx_000F30[41], 8, 0),
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
    gsSPVertex(jyasinzou_room_4Vtx_000F30, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 5, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 7, 0, 9, 4, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(13, 9, 12, 0, 9, 8, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_4Tex_005698, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_4Vtx_000F30[14], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_4Vtx_000F30[22], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_4Tex_005698, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_4Vtx_000F30[31], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 2, 0),
    gsSP2Triangles(0, 6, 7, 0, 0, 7, 1, 0),
    gsSP2Triangles(8, 5, 4, 0, 8, 4, 9, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_4Vtx_0014F8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Vtx_0014F8.vtx.inc"
};

Gfx jyasinzou_room_4DL_001858[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_4Vtx_0014F8[46], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_4Tex_005798, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_4Vtx_0014F8, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 5, 4, 0, 0),
    gsSP1Triangle(2, 5, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_4Vtx_0014F8[6], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 10, 0),
    gsSP2Triangles(13, 10, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 18, 19, 0, 15, 17, 19, 0),
    gsSP2Triangles(20, 18, 17, 0, 17, 16, 21, 0),
    gsSP2Triangles(20, 17, 21, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 18, 20, 0, 20, 22, 24, 0),
    gsSP1Triangle(23, 20, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_4Tex_004E98, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_4Vtx_0014F8[31], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 3, 2, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 3, 5, 7, 0),
    gsSP1Triangle(6, 3, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_4Vtx_0014F8[39], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 1, 0, 0),
    gsSP2Triangles(0, 4, 6, 0, 5, 0, 6, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_4Vtx_001B40[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Vtx_001B40.vtx.inc"
};

Gfx jyasinzou_room_4DL_001D50[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_4Vtx_001B40[25], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_4Tex_006398, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_4Vtx_001B40, 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 0, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 6, 7, 1, 0),
    gsSP2Triangles(7, 8, 1, 0, 8, 9, 1, 0),
    gsSP2Triangles(9, 10, 1, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 3, 1, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(13, 17, 15, 0, 18, 16, 15, 0),
    gsSP2Triangles(15, 19, 18, 0, 15, 20, 19, 0),
    gsSP2Triangles(15, 21, 20, 0, 15, 17, 21, 0),
    gsSP2Triangles(17, 22, 21, 0, 8, 23, 9, 0),
    gsSP2Triangles(23, 24, 9, 0, 24, 11, 9, 0),
    gsSP2Triangles(24, 22, 11, 0, 23, 21, 24, 0),
    gsSP2Triangles(23, 20, 21, 0, 21, 22, 24, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_4Vtx_001EA0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Vtx_001EA0.vtx.inc"
};

Gfx jyasinzou_room_4DL_002090[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_4Vtx_001EA0[23], 8, 0),
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
    gsSPVertex(jyasinzou_room_4Vtx_001EA0, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 4, 5, 6, 0),
    gsSP2Triangles(0, 4, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 10, 0),
    gsSP2Triangles(13, 10, 9, 0, 15, 16, 14, 0),
    gsSP2Triangles(15, 14, 17, 0, 18, 19, 16, 0),
    gsSP2Triangles(18, 16, 15, 0, 20, 21, 19, 0),
    gsSP1Triangle(20, 19, 22, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_4Vtx_0021B8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Vtx_0021B8.vtx.inc"
};

Gfx jyasinzou_room_4DL_002338[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_4Vtx_0021B8[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_4Tex_005798, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_4Vtx_0021B8, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 3, 2, 0),
    gsSP2Triangles(1, 6, 5, 0, 1, 7, 6, 0),
    gsSP2Triangles(2, 1, 5, 0, 4, 5, 8, 0),
    gsSP2Triangles(4, 8, 9, 0, 4, 9, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 10, 12, 0, 14, 13, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 7, 13, 15, 0),
    gsSP2Triangles(7, 15, 6, 0, 14, 12, 11, 0),
    gsSP2Triangles(14, 11, 9, 0, 14, 9, 8, 0),
    gsSP2Triangles(14, 8, 5, 0, 14, 5, 6, 0),
    gsSP1Triangle(14, 6, 15, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_4Vtx_002478[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Vtx_002478.vtx.inc"
};

Gfx jyasinzou_room_4DL_002648[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_4Vtx_002478[21], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_4Tex_003698, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_4Vtx_002478, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 9, 1, 0, 0),
    gsSP2Triangles(9, 0, 10, 0, 5, 6, 11, 0),
    gsSP2Triangles(5, 11, 12, 0, 11, 13, 14, 0),
    gsSP2Triangles(11, 14, 12, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 17, 15, 0, 14, 13, 17, 0),
    gsSP2Triangles(17, 18, 15, 0, 19, 20, 15, 0),
    gsSP2Triangles(20, 7, 16, 0, 20, 16, 15, 0),
    gsSP1Triangle(20, 8, 7, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_4Vtx_002780[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Vtx_002780.vtx.inc"
};

Gfx jyasinzou_room_4DL_002880[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_4Vtx_002780[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, SHADE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_4Vtx_002780, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
    gsSP2Triangles(0, 6, 5, 0, 0, 7, 6, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_4Vtx_002910[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Vtx_002910.vtx.inc"
};

Gfx jyasinzou_room_4DL_0032A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_4Vtx_002910[145], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_4Tex_003698, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_4Vtx_002910, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 8, 0, 9, 10, 8, 0),
    gsSP2Triangles(9, 8, 11, 0, 12, 9, 11, 0),
    gsSP2Triangles(13, 14, 12, 0, 13, 12, 11, 0),
    gsSP2Triangles(6, 15, 16, 0, 6, 16, 7, 0),
    gsSP2Triangles(17, 18, 19, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 25, 27, 0, 29, 28, 27, 0),
    gsSP1Triangle(30, 27, 31, 0),
    gsSPVertex(&jyasinzou_room_4Vtx_002910[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 9, 7, 0, 7, 10, 8, 0),
    gsSP2Triangles(10, 11, 8, 0, 10, 12, 11, 0),
    gsSP2Triangles(12, 3, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 16, 17, 14, 0),
    gsSP2Triangles(17, 18, 15, 0, 17, 15, 14, 0),
    gsSP2Triangles(13, 19, 16, 0, 9, 20, 7, 0),
    gsSP2Triangles(20, 21, 7, 0, 21, 17, 7, 0),
    gsSP2Triangles(17, 16, 7, 0, 22, 23, 24, 0),
    gsSP2Triangles(23, 25, 24, 0, 23, 26, 25, 0),
    gsSP2Triangles(1, 24, 4, 0, 27, 28, 22, 0),
    gsSP2Triangles(28, 29, 22, 0, 28, 30, 29, 0),
    gsSP1Triangle(30, 31, 29, 0),
    gsSPVertex(&jyasinzou_room_4Vtx_002910[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 1, 6, 0),
    gsSP2Triangles(7, 3, 6, 0, 8, 6, 1, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 7, 6, 0),
    gsSP2Triangles(10, 8, 1, 0, 0, 11, 1, 0),
    gsSP2Triangles(11, 10, 1, 0, 8, 12, 9, 0),
    gsSP2Triangles(12, 13, 9, 0, 13, 7, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 18, 0),
    gsSP2Triangles(14, 16, 19, 0, 15, 20, 16, 0),
    gsSP2Triangles(18, 17, 21, 0, 17, 22, 21, 0),
    gsSP2Triangles(22, 23, 21, 0, 17, 24, 22, 0),
    gsSP2Triangles(24, 23, 22, 0, 14, 25, 26, 0),
    gsSP2Triangles(14, 26, 27, 0, 26, 28, 29, 0),
    gsSP2Triangles(26, 29, 27, 0, 28, 30, 29, 0),
    gsSP1Triangle(28, 31, 30, 0),
    gsSPVertex(&jyasinzou_room_4Vtx_002910[96], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 6, 7, 1, 0),
    gsSP2Triangles(7, 8, 1, 0, 8, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_4Vtx_002910[105], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 14, 13, 15, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 0, 22, 0),
    gsSP2Triangles(21, 23, 0, 0, 0, 2, 22, 0),
    gsSP2Triangles(2, 24, 25, 0, 2, 25, 22, 0),
    gsSP2Triangles(26, 27, 4, 0, 26, 4, 3, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&jyasinzou_room_4Vtx_002910[137], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_4Tex_003698, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_4Vtx_002910[141], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_4_unaccounted_003648[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0x40, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x18, 0x58, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0x50, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x20, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x23, 0x38, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x26, 0x48, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x28, 0x80, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x32, 0xA0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_4Tex_003698[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Tex_003698.ci8.inc.c"
};

u64 jyasinzou_room_4Tex_003E98[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Tex_003E98.ci8.inc.c"
};

u64 jyasinzou_room_4Tex_004698[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Tex_004698.ci8.inc.c"
};

u64 jyasinzou_room_4Tex_004E98[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Tex_004E98.ci8.inc.c"
};

u64 jyasinzou_room_4Tex_005698[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Tex_005698.ci8.inc.c"
};

u64 jyasinzou_room_4Tex_005798[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Tex_005798.ci8.inc.c"
};

u64 jyasinzou_room_4Tex_005B98[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Tex_005B98.ci8.inc.c"
};

u64 jyasinzou_room_4Tex_006398[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Tex_006398.ci8.inc.c"
};

u64 jyasinzou_room_4Tex_006798[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Tex_006798.ci4.inc.c"
};

u8 jyasinzou_room_4_possiblePadding_006F98[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_4Vtx_006FA0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_4Vtx_006FA0.vtx.inc"
};

Gfx jyasinzou_room_4DL_007170[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_4Vtx_006FA0[21], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gSpiritTempleDayEntranceTex, G_IM_FMT_IA, G_IM_SIZ_16b, 8, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 252),
    gsSPVertex(jyasinzou_room_4Vtx_006FA0, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(5, 8, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 11, 1, 0, 0),
    gsSP2Triangles(11, 0, 12, 0, 7, 8, 13, 0),
    gsSP2Triangles(7, 13, 14, 0, 13, 15, 16, 0),
    gsSP2Triangles(13, 16, 14, 0, 16, 17, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 16, 15, 17, 0),
    gsSP2Triangles(19, 20, 18, 0, 20, 9, 18, 0),
    gsSP1Triangle(20, 10, 9, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_4_unaccounted_007270[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x71, 0x70, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

