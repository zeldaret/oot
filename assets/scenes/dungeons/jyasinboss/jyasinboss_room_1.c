#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinboss_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "jyasinboss_scene.h"
#include "jyasinboss_room_0.h"
#include "jyasinboss_room_2.h"
#include "jyasinboss_room_3.h"

SceneCmd jyasinboss_room_1Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(jyasinboss_room_1AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_1PolygonType0_000190),
    SCENE_CMD_OBJECT_LIST(7, jyasinboss_room_1ObjectList_000060),
    SCENE_CMD_ACTOR_LIST(18, jyasinboss_room_1ActorList_000070),
    SCENE_CMD_END(),
};

SceneCmd* jyasinboss_room_1AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    jyasinboss_room_1Set_0001B0,
    jyasinboss_room_1Set_000320,
    jyasinboss_room_1Set_000490,
};

s16 jyasinboss_room_1ObjectList_000060[] = {
    OBJECT_JYA_DOOR,
    OBJECT_BDOOR,
    OBJECT_TR,
    OBJECT_EFC_FLASH,
    OBJECT_IK,
    OBJECT_NB,
    OBJECT_JYA_IRON,
};

ActorEntry jyasinboss_room_1ActorList_000070[] = {
    { ACTOR_EN_IK,          {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0500 },
    { ACTOR_DEMO_IK,        {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0004 },
    { ACTOR_DEMO_IK,        {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_DEMO_IK,        {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0006 },
    { ACTOR_DEMO_IK,        {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0005 },
    { ACTOR_DEMO_IK,        {  -1240,      0,   1248 }, {      0, 0XE000,      0 }, 0x0001 },
    { ACTOR_DEMO_IK,        {  -1213,      0,   1267 }, {      0, 0XE000,      0 }, 0x0002 },
    { ACTOR_EN_NB,          {  -1212,     16,   1210 }, {      0, 0XE000,      0 }, 0x0004 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1206,     -5,   1206 }, {      0, 0XA000,      0 }, 0x0001 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1482,      0,   1652 }, {      0, 0XDF4A,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1652,      0,   1482 }, {      0, 0XE0B6,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1340,      0,   1510 }, {      0, 0XE0B6,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1510,      0,   1340 }, {      0, 0XDF4A,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1370,      0,   1031 }, {      0, 0XE0B6,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1031,      0,   1370 }, {      0, 0XDF4A,      0 }, 0x0000 },
    { ACTOR_DEMO_IK,        {  -1256,      0,   1210 }, {      0, 0XE000,      0 }, 0x0000 },
    { ACTOR_EN_TR,          {  -1303,      0,   1136 }, {      0, 0XE000,      0 }, 0x0000 },
    { ACTOR_EN_TR,          {  -1125,      0,   1301 }, {      0, 0XE000,      0 }, 0x0001 },
};

PolygonType0 jyasinboss_room_1PolygonType0_000190 = { 
    0, 1,
    jyasinboss_room_1PolygonDlist_00019C,
    jyasinboss_room_1PolygonDlist_00019C + ARRAY_COUNTU(jyasinboss_room_1PolygonDlist_00019C)
};

PolygonDlist jyasinboss_room_1PolygonDlist_00019C[1] = {
    { jyasinboss_room_1DL_002DD0, NULL },
};

s32 jyasinboss_room_1_terminatorMaybe_0001A4 = { 0x01000000 };

u8 jyasinboss_room_1_possiblePadding_0001A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd jyasinboss_room_1Set_0001B0[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_1PolygonType0_000190),
    SCENE_CMD_OBJECT_LIST(6, jyasinboss_room_1ObjectList_0001F0),
    SCENE_CMD_ACTOR_LIST(18, jyasinboss_room_1ActorList_0001FC),
    SCENE_CMD_END(),
};

s16 jyasinboss_room_1ObjectList_0001F0[] = {
    OBJECT_JYA_DOOR,
    OBJECT_TR,
    OBJECT_EFC_FLASH,
    OBJECT_IK,
    OBJECT_NB,
    OBJECT_JYA_IRON,
};

ActorEntry jyasinboss_room_1ActorList_0001FC[] = {
    { ACTOR_BG_JYA_IRONOBJ, {  -1482,      0,   1652 }, {      0, 0XDF4A,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1652,      0,   1482 }, {      0, 0XE0B6,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1340,      0,   1510 }, {      0, 0XE0B6,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1510,      0,   1340 }, {      0, 0XDF4A,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1370,      0,   1031 }, {      0, 0XE0B6,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1031,      0,   1370 }, {      0, 0XDF4A,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1206,     -5,   1206 }, {      0, 0XA000,      0 }, 0x0001 },
    { ACTOR_EN_IK,          {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_IK,        {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0004 },
    { ACTOR_DEMO_IK,        {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_DEMO_IK,        {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0006 },
    { ACTOR_DEMO_IK,        {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0005 },
    { ACTOR_DEMO_IK,        {  -1240,      0,   1248 }, {      0, 0XE000,      0 }, 0x0001 },
    { ACTOR_DEMO_IK,        {  -1213,      0,   1267 }, {      0, 0XE000,      0 }, 0x0002 },
    { ACTOR_EN_NB,          {  -1212,     16,   1210 }, {      0, 0XE000,      0 }, 0x0004 },
    { ACTOR_DEMO_IK,        {  -1256,      0,   1210 }, {      0, 0XE000,      0 }, 0x0000 },
    { ACTOR_EN_TR,          {  -1303,      0,   1136 }, {      0, 0XE000,      0 }, 0x0000 },
    { ACTOR_EN_TR,          {  -1125,      0,   1301 }, {      0, 0XE000,      0 }, 0x0001 },
};

u8 jyasinboss_room_1_possiblePadding_00031C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd jyasinboss_room_1Set_000320[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_1PolygonType0_000190),
    SCENE_CMD_OBJECT_LIST(6, jyasinboss_room_1ObjectList_000360),
    SCENE_CMD_ACTOR_LIST(18, jyasinboss_room_1ActorList_00036C),
    SCENE_CMD_END(),
};

s16 jyasinboss_room_1ObjectList_000360[] = {
    OBJECT_JYA_DOOR,
    OBJECT_TR,
    OBJECT_EFC_FLASH,
    OBJECT_IK,
    OBJECT_NB,
    OBJECT_JYA_IRON,
};

ActorEntry jyasinboss_room_1ActorList_00036C[] = {
    { ACTOR_BG_JYA_IRONOBJ, {  -1482,      0,   1652 }, {      0, 0XDF4A,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1652,      0,   1482 }, {      0, 0XE0B6,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1340,      0,   1510 }, {      0, 0XE0B6,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1510,      0,   1340 }, {      0, 0XDF4A,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1370,      0,   1031 }, {      0, 0XE0B6,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1031,      0,   1370 }, {      0, 0XDF4A,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1206,     -5,   1206 }, {      0, 0XA000,      0 }, 0x0001 },
    { ACTOR_EN_IK,          {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_IK,        {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0004 },
    { ACTOR_DEMO_IK,        {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_DEMO_IK,        {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0006 },
    { ACTOR_DEMO_IK,        {  -1235,      0,   1268 }, {      0,      0,      0 }, 0x0005 },
    { ACTOR_DEMO_IK,        {  -1240,      0,   1248 }, {      0, 0XE000,      0 }, 0x0001 },
    { ACTOR_DEMO_IK,        {  -1213,      0,   1267 }, {      0, 0XE000,      0 }, 0x0002 },
    { ACTOR_EN_NB,          {  -1212,     16,   1210 }, {      0, 0XE000,      0 }, 0x0004 },
    { ACTOR_DEMO_IK,        {  -1256,      0,   1210 }, {      0, 0XE000,      0 }, 0x0000 },
    { ACTOR_EN_TR,          {  -1303,      0,   1136 }, {      0, 0XE000,      0 }, 0x0000 },
    { ACTOR_EN_TR,          {  -1125,      0,   1301 }, {      0, 0XE000,      0 }, 0x0001 },
};

u8 jyasinboss_room_1_possiblePadding_00048C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd jyasinboss_room_1Set_000490[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_1PolygonType0_000190),
    SCENE_CMD_OBJECT_LIST(6, jyasinboss_room_1ObjectList_0004D0),
    SCENE_CMD_ACTOR_LIST(10, jyasinboss_room_1ActorList_0004DC),
    SCENE_CMD_END(),
};

s16 jyasinboss_room_1ObjectList_0004D0[] = {
    OBJECT_JYA_DOOR,
    OBJECT_BDOOR,
    OBJECT_TR,
    OBJECT_EFC_FLASH,
    OBJECT_NB,
    OBJECT_JYA_IRON,
};

ActorEntry jyasinboss_room_1ActorList_0004DC[] = {
    { ACTOR_EN_NB,          {  -1212,     16,   1210 }, {      0, 0XE000,      0 }, 0x0004 },
    { ACTOR_EN_TR,          {  -1303,      0,   1136 }, {      0, 0XE000,      0 }, 0x0000 },
    { ACTOR_EN_TR,          {  -1125,      0,   1301 }, {      0, 0XE000,      0 }, 0x0001 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1482,      0,   1652 }, {      0, 0XDF4A,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1652,      0,   1482 }, {      0, 0XE0B6,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1340,      0,   1510 }, {      0, 0XE0B6,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1510,      0,   1340 }, {      0, 0XDF4A,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1370,      0,   1031 }, {      0, 0XE0B6,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1031,      0,   1370 }, {      0, 0XDF4A,      0 }, 0x0000 },
    { ACTOR_BG_JYA_IRONOBJ, {  -1210,      0,   1210 }, {      0, 0X2000,      0 }, 0x0001 },
};

Vtx jyasinboss_room_1Vtx_000580[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Vtx_000580.vtx.inc"
};

Gfx jyasinboss_room_1DL_0007F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_1Vtx_000580[31], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_1Tex_006638, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_1Vtx_000580, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_sceneTex_007CF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_000580[10], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP1Triangle(17, 19, 20, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_1Vtx_000930[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Vtx_000930.vtx.inc"
};

Gfx jyasinboss_room_1DL_000C00[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_1Vtx_000930[37], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_1Tex_007638, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_1Vtx_000930, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_sceneTex_006CF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_000930[6], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_1Tex_002E38, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_000930[12], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 3, 0),
    gsSP1Triangle(8, 6, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_1Tex_007638, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_000930[21], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 7, 0, 3, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 12, 8, 0, 10, 13, 12, 0),
    gsSP2Triangles(12, 14, 8, 0, 15, 3, 1, 0),
    gsSP2Triangles(3, 6, 1, 0, 6, 2, 1, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_1Vtx_000DE8[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Vtx_000DE8.vtx.inc"
};

Gfx jyasinboss_room_1DL_0014B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_1Vtx_000DE8[101], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(jyasinboss_room_1Tex_006E38, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinboss_room_1TLUT_002E18),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_1Vtx_000DE8, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(jyasinboss_sceneTex_007CF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_000DE8[12], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 4, 6, 0),
    gsSP2Triangles(5, 6, 7, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_1Tex_006638, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_000DE8[20], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_sceneTex_007CF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_000DE8[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&jyasinboss_room_1Vtx_000DE8[60], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(21, 24, 23, 0, 25, 26, 27, 0),
    gsSP1Triangle(25, 27, 28, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_1Tex_006638, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_000DE8[89], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_1Vtx_0017B0[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Vtx_0017B0.vtx.inc"
};

Gfx jyasinboss_room_1DL_0018B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_1Vtx_0017B0[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_1Tex_005638, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_1Vtx_0017B0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_1Vtx_001970[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Vtx_001970.vtx.inc"
};

Gfx jyasinboss_room_1DL_001A70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_1Vtx_001970[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_1Tex_005638, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_1Vtx_001970, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_1Vtx_001B30[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Vtx_001B30.vtx.inc"
};

Gfx jyasinboss_room_1DL_002320[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_1Vtx_001B30[119], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_1Tex_004E38, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_1Vtx_001B30, 32, 0),
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
    gsSPVertex(&jyasinboss_room_1Vtx_001B30[32], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 4, 0),
    gsSP2Triangles(2, 10, 8, 0, 2, 8, 3, 0),
    gsSPVertex(&jyasinboss_room_1Vtx_001B30[43], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 11, 0, 12, 13, 11, 0),
    gsSP2Triangles(13, 8, 11, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 15, 10, 18, 0),
    gsSP2Triangles(15, 18, 16, 0, 18, 5, 16, 0),
    gsSP2Triangles(5, 17, 16, 0, 9, 11, 6, 0),
    gsSP2Triangles(9, 6, 5, 0, 11, 8, 6, 0),
    gsSP2Triangles(3, 2, 19, 0, 2, 20, 19, 0),
    gsSP2Triangles(20, 21, 19, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 25, 23, 0, 23, 21, 24, 0),
    gsSP2Triangles(22, 5, 4, 0, 22, 4, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 29, 22, 0),
    gsSP2Triangles(26, 22, 27, 0, 26, 30, 29, 0),
    gsSP2Triangles(22, 31, 27, 0, 31, 28, 27, 0),
    gsSPVertex(&jyasinboss_room_1Vtx_001B30[75], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 4, 0),
    gsSP2Triangles(0, 9, 10, 0, 0, 10, 1, 0),
    gsSPVertex(&jyasinboss_room_1Vtx_001B30[86], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_1Tex_003E38, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_001B30[96], 23, 0),
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

Vtx jyasinboss_room_1Vtx_002600[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Vtx_002600.vtx.inc"
};

Gfx jyasinboss_room_1DL_002800[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_1Vtx_002600[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_sceneTex_007CF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_1Vtx_002600, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 3, 4, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 6, 7, 4, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_1Tex_006638, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_002600[10], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_sceneTex_007CF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_002600[17], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_1Tex_006638, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_002600[21], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_1Vtx_0029C8[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Vtx_0029C8.vtx.inc"
};

Gfx jyasinboss_room_1DL_002C08[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_1Vtx_0029C8[28], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_1Tex_006638, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_1Vtx_0029C8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_sceneTex_007CF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_0029C8[4], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_1Tex_006638, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_0029C8[14], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_sceneTex_007CF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_1Vtx_0029C8[18], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 7, 0, 0, 2, 7, 0),
    gsSP2Triangles(8, 9, 4, 0, 9, 5, 4, 0),
    gsSPEndDisplayList(),
};

Gfx jyasinboss_room_1DL_002DD0[] = {
    gsSPDisplayList(jyasinboss_room_1DL_0007F0),
    gsSPDisplayList(jyasinboss_room_1DL_000C00),
    gsSPDisplayList(jyasinboss_room_1DL_0014B8),
    gsSPDisplayList(jyasinboss_room_1DL_0018B0),
    gsSPDisplayList(jyasinboss_room_1DL_001A70),
    gsSPDisplayList(jyasinboss_room_1DL_002320),
    gsSPDisplayList(jyasinboss_room_1DL_002800),
    gsSPDisplayList(jyasinboss_room_1DL_002C08),
    gsSPEndDisplayList(),
};

u64 jyasinboss_room_1TLUT_002E18[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1TLUT_002E18.rgba16.inc.c"
};

u64 jyasinboss_room_1Tex_002E38[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Tex_002E38.rgba16.inc.c"
};

u64 jyasinboss_room_1Tex_003E38[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Tex_003E38.rgba16.inc.c"
};

u64 jyasinboss_room_1Tex_004E38[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Tex_004E38.rgba16.inc.c"
};

u64 jyasinboss_room_1Tex_005638[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Tex_005638.rgba16.inc.c"
};

u64 jyasinboss_room_1Tex_006638[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Tex_006638.rgba16.inc.c"
};

u64 jyasinboss_room_1Tex_006E38[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Tex_006E38.ci4.inc.c"
};

u64 jyasinboss_room_1Tex_007638[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_1Tex_007638.rgba16.inc.c"
};

