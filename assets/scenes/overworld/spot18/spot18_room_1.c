#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "spot18_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "spot18_scene.h"
#include "spot18_room_0.h"
#include "spot18_room_2.h"
#include "spot18_room_3.h"

SceneCmd spot18_room_1Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(spot18_room_1AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot18_room_1PolygonType2_0000F0),
    SCENE_CMD_OBJECT_LIST(12, spot18_room_1ObjectList_00005C),
    SCENE_CMD_ACTOR_LIST(8, spot18_room_1ActorList_000070),
    SCENE_CMD_END(),
};

SceneCmd* spot18_room_1AlternateHeaders0x000048[] = {
    NULL,
    spot18_room_1Set_000170,
    NULL,
    spot18_room_1Set_000230,
    spot18_room_1Set_000300,
};

s16 spot18_room_1ObjectList_00005C[] = {
    OBJECT_SPOT18_OBJ,
    OBJECT_BOMBF,
    OBJECT_BOMBIWA,
    OBJECT_OF1D_MAP,
    OBJECT_TSUBO,
    OBJECT_BWALL,
    OBJECT_DU,
    OBJECT_KANBAN,
    OBJECT_SYOKUDAI,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_D_HSBLOCK,
};

ActorEntry spot18_room_1ActorList_000070[] = {
    { ACTOR_BG_SPOT18_OBJ, {     92,     40,  -1540 }, {      0, 0XFF4A,      0 }, 0xFF00 },
    { ACTOR_BG_SPOT18_OBJ, {     92,     40,  -1540 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_DU,         {     91,     41,  -1462 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_SYOKUDAI,  {    -52,     40,  -1473 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,  {    222,     40,  -1473 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_OBJ_TSUBO,     {    262,     70,  -1210 }, {      0,      0,      0 }, 0x710D },
    { ACTOR_OBJ_TSUBO,     {    261,     70,  -1254 }, {      0,      0,      0 }, 0x7300 },
    { ACTOR_OBJ_TSUBO,     {    262,     70,  -1386 }, {      0,      0,      0 }, 0x750D },
};

PolygonType2 spot18_room_1PolygonType2_0000F0 = { 
    2, 7,
    spot18_room_1PolygonDlist2_0000FC,
    spot18_room_1PolygonDlist2_0000FC + ARRAY_COUNTU(spot18_room_1PolygonDlist2_0000FC)
};

PolygonDlist2 spot18_room_1PolygonDlist2_0000FC[7] = {
    { {     92,    180,  -1298 },    318, spot18_room_1DL_001A38, NULL },
    { {     80,     40,  -1350 },    185, NULL, spot18_room_1DL_0059F0 },
    { {     80,     40,  -1350 },    184, spot18_room_1DL_001770, NULL },
    { {     90,    170,  -1298 },    310, spot18_room_1DL_001E60, spot18_room_1DL_005CC0 },
    { {    -69,    112,   -800 },    256, spot18_room_1DL_0007D0, NULL },
    { {     69,    354,  -1384 },    536, spot18_room_1DL_001398, NULL },
    { {    264,     55,  -1303 },    110, spot18_room_1DL_002660, NULL },
};

s32 spot18_room_1_terminatorMaybe_00016C = { 0x01000000 };

SceneCmd spot18_room_1Set_000170[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot18_room_1PolygonType2_0000F0),
    SCENE_CMD_OBJECT_LIST(9, spot18_room_1ObjectList_0001B0),
    SCENE_CMD_ACTOR_LIST(6, spot18_room_1ActorList_0001C4),
    SCENE_CMD_END(),
};

s16 spot18_room_1ObjectList_0001B0[] = {
    OBJECT_SPOT18_OBJ,
    OBJECT_BOMBF,
    OBJECT_BOMBIWA,
    OBJECT_OF1D_MAP,
    OBJECT_TSUBO,
    OBJECT_BWALL,
    OBJECT_ST,
    OBJECT_KANBAN,
    OBJECT_SYOKUDAI,
};

ActorEntry spot18_room_1ActorList_0001C4[] = {
    { ACTOR_BG_SPOT18_OBJ, {     92,     40,  -1540 }, {      0,      0,      0 }, 0x1100 },
    { ACTOR_OBJ_TSUBO,     {    262,     70,  -1210 }, {      0,      0,      0 }, 0x7108 },
    { ACTOR_OBJ_TSUBO,     {    261,     70,  -1254 }, {      0,      0,      0 }, 0x7303 },
    { ACTOR_OBJ_TSUBO,     {    262,     70,  -1386 }, {      0,      0,      0 }, 0x7502 },
    { ACTOR_OBJ_SYOKUDAI,  {    -52,     40,  -1473 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,  {    222,     40,  -1473 }, {      0,      0,      0 }, 0x2400 },
};

u8 spot18_room_1_possiblePadding_000224[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot18_room_1Set_000230[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot18_room_1PolygonType2_0000F0),
    SCENE_CMD_OBJECT_LIST(9, spot18_room_1ObjectList_000270),
    SCENE_CMD_ACTOR_LIST(8, spot18_room_1ActorList_000280),
    SCENE_CMD_END(),
};

s16 spot18_room_1ObjectList_000270[] = {
    OBJECT_SPOT18_OBJ,
    OBJECT_DU,
    OBJECT_BOMBIWA,
    OBJECT_OF1D_MAP,
    OBJECT_MAMENOKI,
    OBJECT_TSUBO,
    OBJECT_BOX,
    OBJECT_BWALL,
    OBJECT_SYOKUDAI,
};

ActorEntry spot18_room_1ActorList_000280[] = {
    { ACTOR_BG_SPOT18_OBJ, {     92,     40,  -1532 }, {      0, 0XFF4A,      0 }, 0xFF00 },
    { ACTOR_BG_SPOT18_OBJ, {     92,     40,  -1532 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_DU,         {     91,     41,  -1462 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_TSUBO,     {    262,     70,  -1210 }, {      0,      0,      0 }, 0x7F3F },
    { ACTOR_OBJ_TSUBO,     {    261,     70,  -1254 }, {      0,      0,      0 }, 0x7F3F },
    { ACTOR_OBJ_TSUBO,     {    262,     70,  -1386 }, {      0,      0,      0 }, 0x7F3F },
    { ACTOR_OBJ_SYOKUDAI,  {    222,     40,  -1473 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,  {    -52,     40,  -1473 }, {      0,      0,      0 }, 0x2400 },
};

SceneCmd spot18_room_1Set_000300[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot18_room_1PolygonType2_0000F0),
    SCENE_CMD_OBJECT_LIST(4, spot18_room_1ObjectList_000340),
    SCENE_CMD_ACTOR_LIST(11, spot18_room_1ActorList_000348),
    SCENE_CMD_END(),
};

s16 spot18_room_1ObjectList_000340[] = {
    OBJECT_SPOT18_OBJ,
    OBJECT_TSUBO,
    OBJECT_DDAN_OBJECTS,
    OBJECT_SYOKUDAI,
};

ActorEntry spot18_room_1ActorList_000348[] = {
    { ACTOR_BG_SPOT18_OBJ, {     92,     40,  -1532 }, {      0, 0XFF4A,      0 }, 0xFF00 },
    { ACTOR_BG_SPOT18_OBJ, {     92,     40,  -1532 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_OBJ_TSUBO,     {    -10,     40,  -1511 }, {      0,      0,      0 }, 0x7F3F },
    { ACTOR_OBJ_TSUBO,     {     26,     40,  -1517 }, {      0,      0,      0 }, 0x7F3F },
    { ACTOR_OBJ_TSUBO,     {     10,     40,  -1497 }, {      0,      0,      0 }, 0x7F3F },
    { ACTOR_OBJ_TSUBO,     {    155,     40,  -1503 }, {      0,      0,      0 }, 0x7F3F },
    { ACTOR_OBJ_TSUBO,     {    213,     40,  -1335 }, {      0,      0,      0 }, 0x7F3F },
    { ACTOR_OBJ_TSUBO,     {    165,     40,  -1424 }, {      0,      0,      0 }, 0x7F3F },
    { ACTOR_OBJ_TSUBO,     {     20,     40,  -1295 }, {      0,      0,      0 }, 0x7F3F },
    { ACTOR_OBJ_SYOKUDAI,  {    -52,     40,  -1473 }, {      0,      0,      0 }, 0x2000 },
    { ACTOR_OBJ_SYOKUDAI,  {    222,     40,  -1474 }, {      0,      0,      0 }, 0x2000 },
};

u8 spot18_room_1_possiblePadding_0003F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot18_room_1Vtx_000400[] = {
#include "assets/scenes/overworld/spot18/spot18_room_1Vtx_000400.vtx.inc"
};

Gfx spot18_room_1DL_0007D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot18_room_1Vtx_000400[53], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot18_sceneTex_009C48, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(spot18_sceneTLUT_0085C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot18_room_1Vtx_000400, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 2, 0, 8, 2, 1, 0),
    gsSP2Triangles(8, 1, 10, 0, 11, 0, 12, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(9, 15, 16, 0, 9, 16, 2, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(21, 24, 25, 0, 21, 25, 26, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot18_sceneTex_009008, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot18_room_1Vtx_000400[27], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot18_room_1Tex_004068, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot18_room_1Vtx_000400[33], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot18_sceneTex_009C48, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot18_room_1Vtx_000400[37], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot18_sceneTex_009008, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot18_room_1Vtx_000400[45], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot18_sceneTex_009C48, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot18_room_1Vtx_000400[49], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot18_room_1Vtx_000A98[] = {
#include "assets/scenes/overworld/spot18/spot18_room_1Vtx_000A98.vtx.inc"
};

Gfx spot18_room_1DL_001398[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot18_room_1Vtx_000A98[136], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot18_sceneTex_009C48, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(spot18_sceneTLUT_0085C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot18_room_1Vtx_000A98, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 4, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 8, 0),
    gsSP2Triangles(2, 14, 15, 0, 2, 15, 11, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 16, 21, 0, 3, 11, 8, 0),
    gsSP2Triangles(3, 8, 7, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(26, 28, 29, 0),
    gsSPVertex(&spot18_room_1Vtx_000A98[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(8, 11, 15, 0, 8, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 18, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 23, 21, 0, 14, 24, 25, 0),
    gsSP2Triangles(14, 25, 8, 0, 24, 26, 27, 0),
    gsSP2Triangles(24, 27, 25, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&spot18_room_1Vtx_000A98[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(19, 22, 23, 0, 19, 23, 21, 0),
    gsSP2Triangles(21, 24, 25, 0, 21, 25, 20, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(0, 30, 31, 0, 0, 31, 1, 0),
    gsSPVertex(&spot18_room_1Vtx_000A98[94], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(4, 7, 16, 0, 4, 16, 17, 0),
    gsSP2Triangles(7, 9, 18, 0, 7, 18, 16, 0),
    gsSP2Triangles(19, 13, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot18_sceneTex_009008, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot18_room_1Vtx_000A98[118], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 5, 0, 4, 6, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 7, 12, 5, 0),
    gsSP2Triangles(12, 13, 5, 0, 1, 14, 2, 0),
    gsSP2Triangles(1, 13, 14, 0, 15, 16, 14, 0),
    gsSP1Triangle(15, 14, 17, 0),
    gsSPEndDisplayList(),
};

Vtx spot18_room_1Vtx_001650[] = {
#include "assets/scenes/overworld/spot18/spot18_room_1Vtx_001650.vtx.inc"
};

Gfx spot18_room_1DL_001770[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot18_room_1Vtx_001650[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot18_room_1Tex_003068, G_IM_FMT_I, 128, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_OVL_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot18_room_1Vtx_001650, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSPEndDisplayList(),
};

Vtx spot18_room_1Vtx_001838[] = {
#include "assets/scenes/overworld/spot18/spot18_room_1Vtx_001838.vtx.inc"
};

Gfx spot18_room_1DL_001A38[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot18_room_1Vtx_001838[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot18_sceneTex_009C48, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(spot18_sceneTLUT_0085C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot18_room_1Vtx_001838, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 17, 0, 20, 17, 16, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 21, 20, 0),
    gsSPEndDisplayList(),
};

Vtx spot18_room_1Vtx_001B60[] = {
#include "assets/scenes/overworld/spot18/spot18_room_1Vtx_001B60.vtx.inc"
};

Gfx spot18_room_1DL_001E60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot18_room_1Vtx_001B60[40], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot18_room_1Tex_004868, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot18_room_1Vtx_001B60, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 0, 3, 0, 8, 3, 9, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(16, 10, 13, 0, 16, 13, 17, 0),
    gsSP2Triangles(14, 18, 19, 0, 14, 19, 15, 0),
    gsSP2Triangles(20, 16, 17, 0, 20, 17, 21, 0),
    gsSP2Triangles(22, 4, 7, 0, 22, 7, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot18_sceneTex_009848, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot18_room_1Vtx_001B60[24], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 8, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 12, 13, 0, 14, 13, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot18_room_1Vtx_001FE0[] = {
#include "assets/scenes/overworld/spot18/spot18_room_1Vtx_001FE0.vtx.inc"
};

Gfx spot18_room_1DL_002660[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot18_room_1Vtx_001FE0[96], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot18_room_1Tex_002868, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot18_room_1Vtx_001FE0, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot18_room_1Vtx_001FE0[12], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&spot18_room_1Vtx_001FE0[44], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot18_room_1Vtx_001FE0[48], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot18_room_1Vtx_001FE0[60], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&spot18_room_1Vtx_001FE0[92], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 spot18_room_1_unaccounted_002830[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x07, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0x98, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0x38, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1E, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x26, 0x60, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 spot18_room_1Tex_002868[] = {
#include "assets/scenes/overworld/spot18/spot18_room_1Tex_002868.rgba16.inc.c"
};

u64 spot18_room_1Tex_003068[] = {
#include "assets/scenes/overworld/spot18/spot18_room_1Tex_003068.i4.inc.c"
};

u64 spot18_room_1Tex_004068[] = {
#include "assets/scenes/overworld/spot18/spot18_room_1Tex_004068.ci8.inc.c"
};

u64 spot18_room_1Tex_004868[] = {
#include "assets/scenes/overworld/spot18/spot18_room_1Tex_004868.rgba16.inc.c"
};

u8 spot18_room_1_possiblePadding_005868[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot18_room_1Vtx_005870[] = {
#include "assets/scenes/overworld/spot18/spot18_room_1Vtx_005870.vtx.inc"
};

Gfx spot18_room_1DL_0059F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot18_room_1Vtx_005870[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGoronCityNightEntranceTex, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_OVL_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot18_room_1Vtx_005870, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot18_room_1Vtx_005AC0[] = {
#include "assets/scenes/overworld/spot18/spot18_room_1Vtx_005AC0.vtx.inc"
};

Gfx spot18_room_1DL_005CC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot18_room_1Vtx_005AC0[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot18_sceneTex_009848, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(spot18_room_1Vtx_005AC0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot18_room_1Tex_005E00, G_IM_FMT_IA, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot18_room_1Vtx_005AC0[8], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

u8 spot18_room_1_unaccounted_005DE8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x59, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5C, 0xC0, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 spot18_room_1Tex_005E00[] = {
#include "assets/scenes/overworld/spot18/spot18_room_1Tex_005E00.ia4.inc.c"
};

