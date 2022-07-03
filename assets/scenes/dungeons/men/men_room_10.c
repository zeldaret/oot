#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "men_room_10.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "men_scene.h"
#include "men_room_0.h"
#include "men_room_1.h"
#include "men_room_2.h"
#include "men_room_3.h"
#include "men_room_4.h"
#include "men_room_5.h"
#include "men_room_6.h"
#include "men_room_7.h"
#include "men_room_8.h"
#include "men_room_9.h"

SceneCmd men_room_10Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&men_room_10PolygonType2_0000B0),
    SCENE_CMD_OBJECT_LIST(5, men_room_10ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(6, men_room_10ActorList_00004C),
    SCENE_CMD_END(),
};

s16 men_room_10ObjectList_000040[] = {
    OBJECT_MENKURI_OBJECTS,
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
    OBJECT_NY,
    OBJECT_FZ,
};

ActorEntry men_room_10ActorList_00004C[] = {
    { ACTOR_EN_FZ,  {  -1597,    159,  -4001 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_FZ,  {  -1672,    210,  -4026 }, {      0,  0XC17,      0 }, 0x0000 },
    { ACTOR_EN_NY,  {  -1475,    139,  -3943 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_NY,  {  -1670,    139,  -3833 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_NY,  {  -1495,    139,  -3695 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_BOX, {  -1671,    210,  -4029 }, {      0, 0X93E9,      0 }, 0x7AA2 },
};

u8 men_room_10_possiblePadding_0000AC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 men_room_10PolygonType2_0000B0 = { 
    2, 8,
    men_room_10PolygonDlist2_0000BC,
    men_room_10PolygonDlist2_0000BC + ARRAY_COUNTU(men_room_10PolygonDlist2_0000BC)
};

PolygonDlist2 men_room_10PolygonDlist2_0000BC[8] = {
    { {  -1577,    209,  -3507 },     59, men_room_10DL_000280, NULL },
    { {  -1571,    284,  -3795 },    320, men_room_10DL_000928, NULL },
    { {  -1567,    149,  -3822 },    220, men_room_10DL_001398, NULL },
    { {  -1577,    284,  -3562 },    162, men_room_10DL_000C78, NULL },
    { {  -1580,    184,  -3785 },    307, men_room_10DL_001AA8, NULL },
    { {  -1567,    139,  -3822 },    220, men_room_10DL_001EE8, NULL },
    { {  -1577,    221,  -3517 },     82, men_room_10DL_002138, NULL },
    { {  -1672,    209,  -4026 },     35, men_room_10DL_002340, NULL },
};

s32 men_room_10_terminatorMaybe_00013C = { 0x01000000 };

Vtx men_room_10Vtx_000140[] = {
#include "assets/scenes/dungeons/men/men_room_10Vtx_000140.vtx.inc"
};

Gfx men_room_10DL_000280[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_10Vtx_000140[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_10Vtx_000140, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_10Vtx_000378[] = {
#include "assets/scenes/dungeons/men/men_room_10Vtx_000378.vtx.inc"
};

Gfx men_room_10DL_000928[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_10Vtx_000378[83], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_10Tex_004C48, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_10Vtx_000378, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 6, 7, 1, 0),
    gsSP2Triangles(7, 8, 1, 0, 8, 9, 1, 0),
    gsSP2Triangles(9, 10, 1, 0, 10, 11, 1, 0),
    gsSP2Triangles(11, 2, 1, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 17, 0, 15, 17, 20, 0),
    gsSP2Triangles(17, 19, 21, 0, 17, 21, 20, 0),
    gsSP2Triangles(22, 23, 12, 0, 24, 22, 25, 0),
    gsSP2Triangles(24, 26, 22, 0, 22, 12, 25, 0),
    gsSP2Triangles(25, 12, 14, 0, 27, 28, 29, 0),
    gsSP2Triangles(28, 30, 31, 0, 28, 31, 29, 0),
    gsSPVertex(&men_room_10Vtx_000378[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 8, 0),
    gsSP2Triangles(6, 8, 12, 0, 8, 11, 13, 0),
    gsSP2Triangles(8, 13, 12, 0, 14, 6, 12, 0),
    gsSP2Triangles(14, 15, 6, 0, 16, 14, 12, 0),
    gsSP2Triangles(16, 12, 13, 0, 9, 17, 18, 0),
    gsSP2Triangles(9, 7, 17, 0, 19, 10, 9, 0),
    gsSP2Triangles(19, 9, 18, 0, 18, 17, 20, 0),
    gsSP2Triangles(17, 21, 20, 0, 22, 19, 18, 0),
    gsSP2Triangles(22, 18, 20, 0, 21, 23, 20, 0),
    gsSP2Triangles(23, 24, 22, 0, 23, 22, 20, 0),
    gsSP2Triangles(25, 26, 27, 0, 26, 28, 29, 0),
    gsSP2Triangles(26, 29, 27, 0, 25, 27, 30, 0),
    gsSP2Triangles(27, 29, 31, 0, 27, 31, 30, 0),
    gsSPVertex(&men_room_10Vtx_000378[64], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 2, 0),
    gsSP2Triangles(6, 2, 7, 0, 6, 0, 2, 0),
    gsSP2Triangles(2, 5, 8, 0, 2, 8, 7, 0),
    gsSP2Triangles(9, 6, 10, 0, 6, 7, 10, 0),
    gsSP2Triangles(7, 8, 11, 0, 7, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 12, 0),
    gsSP2Triangles(15, 12, 14, 0, 14, 9, 17, 0),
    gsSP2Triangles(14, 13, 9, 0, 18, 15, 14, 0),
    gsSP2Triangles(18, 14, 17, 0, 17, 9, 10, 0),
    gsSP2Triangles(11, 18, 17, 0, 11, 17, 10, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_10Vtx_000B58[] = {
#include "assets/scenes/dungeons/men/men_room_10Vtx_000B58.vtx.inc"
};

Gfx men_room_10DL_000C78[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_10Vtx_000B58[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_10Tex_004C48, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_10Vtx_000B58, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 1, 0, 7, 4, 3, 0),
    gsSP2Triangles(3, 1, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(7, 6, 9, 0, 7, 1, 6, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_10Vtx_000D78[] = {
#include "assets/scenes/dungeons/men/men_room_10Vtx_000D78.vtx.inc"
};

Gfx men_room_10DL_001398[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_10Vtx_000D78[90], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_10Tex_005448, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_10Vtx_000D78, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_10Tex_004C48, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_10Vtx_000D78[12], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_10Tex_005448, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_10Vtx_000D78[26], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_10Tex_004C48, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_10Vtx_000D78[34], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_10Tex_005448, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_10Vtx_000D78[40], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_10Tex_004C48, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_10Vtx_000D78[72], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_10Tex_005448, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_10Vtx_000D78[78], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_10Vtx_0016E8[] = {
#include "assets/scenes/dungeons/men/men_room_10Vtx_0016E8.vtx.inc"
};

Gfx men_room_10DL_001AA8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_10Vtx_0016E8[52], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_10Tex_002448, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_10Vtx_0016E8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 1, 9, 2, 0),
    gsSP2Triangles(2, 10, 11, 0, 2, 12, 10, 0),
    gsSP2Triangles(2, 9, 12, 0, 9, 13, 12, 0),
    gsSP2Triangles(13, 14, 12, 0, 13, 15, 14, 0),
    gsSP2Triangles(15, 16, 14, 0, 16, 17, 14, 0),
    gsSP2Triangles(15, 18, 16, 0, 18, 19, 16, 0),
    gsSP2Triangles(15, 20, 18, 0, 14, 17, 21, 0),
    gsSP2Triangles(14, 21, 22, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 21, 25, 0, 22, 25, 23, 0),
    gsSP2Triangles(26, 27, 28, 0, 21, 29, 30, 0),
    gsSP2Triangles(21, 30, 25, 0, 31, 27, 26, 0),
    gsSPVertex(&men_room_10Vtx_0016E8[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_10Tex_003C48, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_10Vtx_0016E8[36], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_10Tex_002448, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_10Vtx_0016E8[48], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_10Vtx_001CB8[] = {
#include "assets/scenes/dungeons/men/men_room_10Vtx_001CB8.vtx.inc"
};

Gfx men_room_10DL_001EE8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_10Vtx_001CB8[27], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_10Tex_002C48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_10Vtx_001CB8, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 6, 7, 1, 0),
    gsSP2Triangles(7, 8, 1, 0, 8, 2, 1, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 10, 0),
    gsSP2Triangles(12, 13, 10, 0, 13, 14, 10, 0),
    gsSP2Triangles(14, 15, 10, 0, 15, 16, 10, 0),
    gsSP2Triangles(16, 17, 10, 0, 17, 11, 10, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(18, 22, 19, 0, 22, 23, 19, 0),
    gsSP2Triangles(23, 24, 19, 0, 24, 25, 19, 0),
    gsSP2Triangles(25, 26, 19, 0, 26, 21, 19, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_10Vtx_001FF8[] = {
#include "assets/scenes/dungeons/men/men_room_10Vtx_001FF8.vtx.inc"
};

Gfx men_room_10DL_002138[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_10Vtx_001FF8[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_10Tex_003448, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_10Vtx_001FF8, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 2, 0, 7, 3, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_10Vtx_002230[] = {
#include "assets/scenes/dungeons/men/men_room_10Vtx_002230.vtx.inc"
};

Gfx men_room_10DL_002340[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_10Vtx_002230[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_10Tex_004448, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_DECAL2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_10Vtx_002230, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 1, 0, 7, 8, 1, 0),
    gsSPEndDisplayList(),
};

u8 men_room_10_unaccounted_002400[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x09, 0x28, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0x78, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0x98, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0xA8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1E, 0xE8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x21, 0x38, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x23, 0x40, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 men_room_10Tex_002448[] = {
#include "assets/scenes/dungeons/men/men_room_10Tex_002448.ci8.inc.c"
};

u64 men_room_10Tex_002C48[] = {
#include "assets/scenes/dungeons/men/men_room_10Tex_002C48.rgba16.inc.c"
};

u64 men_room_10Tex_003448[] = {
#include "assets/scenes/dungeons/men/men_room_10Tex_003448.ci8.inc.c"
};

u64 men_room_10Tex_003C48[] = {
#include "assets/scenes/dungeons/men/men_room_10Tex_003C48.ci8.inc.c"
};

u64 men_room_10Tex_004448[] = {
#include "assets/scenes/dungeons/men/men_room_10Tex_004448.rgba16.inc.c"
};

u64 men_room_10Tex_004C48[] = {
#include "assets/scenes/dungeons/men/men_room_10Tex_004C48.ci8.inc.c"
};

u64 men_room_10Tex_005448[] = {
#include "assets/scenes/dungeons/men/men_room_10Tex_005448.ci8.inc.c"
};

