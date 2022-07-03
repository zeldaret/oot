#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "FIRE_bs_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "FIRE_bs_scene.h"
#include "FIRE_bs_room_0.h"

SceneCmd FIRE_bs_room_1Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x05, 0x03, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&FIRE_bs_room_1PolygonType0_000070),
    SCENE_CMD_OBJECT_LIST(7, FIRE_bs_room_1ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(2, FIRE_bs_room_1ActorList_000050),
    SCENE_CMD_END(),
};

s16 FIRE_bs_room_1ObjectList_000040[] = {
    OBJECT_HIDAN_OBJECTS,
    OBJECT_BDOOR,
    OBJECT_FD,
    OBJECT_FD2,
    OBJECT_WARP2,
    OBJECT_GI_HEARTS,
    OBJECT_WARP1,
};

ActorEntry FIRE_bs_room_1ActorList_000050[] = {
    { ACTOR_EN_RIVER_SOUND, {     -4,   -100,      5 }, {      0,      0,      0 }, 0x0007 },
    { ACTOR_BOSS_FD,        {     -2,     90,     11 }, {      0,      0,      0 }, 0xFFFF },
};

PolygonType0 FIRE_bs_room_1PolygonType0_000070 = { 
    0, 1,
    FIRE_bs_room_1PolygonDlist_00007C,
    FIRE_bs_room_1PolygonDlist_00007C + ARRAY_COUNTU(FIRE_bs_room_1PolygonDlist_00007C)
};

PolygonDlist FIRE_bs_room_1PolygonDlist_00007C[1] = {
    { FIRE_bs_room_1DL_004940, NULL },
};

s32 FIRE_bs_room_1_terminatorMaybe_000084 = { 0x01000000 };

u8 FIRE_bs_room_1_possiblePadding_000088[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx FIRE_bs_room_1Vtx_000090[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Vtx_000090.vtx.inc"
};

Gfx FIRE_bs_room_1DL_000BE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&FIRE_bs_room_1Vtx_000090[173], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_003400, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(FIRE_bs_room_1Vtx_000090, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 10, 8, 0),
    gsSP2Triangles(11, 8, 12, 0, 8, 13, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_002C00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_1Vtx_000090[14], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 3, 0, 1, 3, 5, 0),
    gsSP2Triangles(4, 3, 7, 0, 4, 7, 8, 0),
    gsSP2Triangles(9, 4, 8, 0, 9, 8, 10, 0),
    gsSP2Triangles(9, 11, 12, 0, 9, 12, 4, 0),
    gsSP2Triangles(13, 14, 2, 0, 13, 2, 5, 0),
    gsSP2Triangles(12, 13, 5, 0, 12, 5, 4, 0),
    gsSP2Triangles(1, 5, 2, 0, 2, 15, 16, 0),
    gsSP2Triangles(2, 16, 0, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 20, 21, 0, 17, 0, 20, 0),
    gsSP2Triangles(0, 17, 19, 0, 9, 10, 22, 0),
    gsSP1Triangle(10, 23, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(FIRE_bs_room_1Tex_004BD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_1Vtx_000090[38], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 16, 0),
    gsSP2Triangles(19, 16, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 7, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_1Tex_006DD8, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, FIRE_bs_room_1TLUT_0049B8),
    gsSPVertex(&FIRE_bs_room_1Vtx_000090[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 1, 11, 2, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 0, 2, 0),
    gsSP2Triangles(21, 2, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&FIRE_bs_room_1Vtx_000090[95], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 0, 0, 14, 15, 16, 0),
    gsSP1Triangle(14, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_1Tex_0061D8, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_1Vtx_000090[113], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_1Tex_005FD8, G_IM_FMT_CI, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, FIRE_bs_room_1TLUT_004998),
    gsSPVertex(&FIRE_bs_room_1Vtx_000090[137], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 0, 0, 5, 8, 3, 0),
    gsSP2Triangles(6, 0, 2, 0, 8, 9, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_1Tex_005BD8, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_1Vtx_000090[147], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 5, 4, 0),
    gsSP2Triangles(7, 4, 8, 0, 9, 0, 10, 0),
    gsSP2Triangles(9, 11, 0, 0, 10, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_1Tex_0049D8, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, FIRE_bs_room_1TLUT_0049B8),
    gsSPVertex(&FIRE_bs_room_1Vtx_000090[159], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 7, 6, 8, 0),
    gsSP2Triangles(7, 8, 9, 0, 5, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSPEndDisplayList(),
};

Vtx FIRE_bs_room_1Vtx_0010E0[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Vtx_0010E0.vtx.inc"
};

Gfx FIRE_bs_room_1DL_001460[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&FIRE_bs_room_1Vtx_0010E0[48], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_003400, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(FIRE_bs_room_1Vtx_0010E0, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 10, 8, 0),
    gsSP2Triangles(11, 8, 12, 0, 8, 13, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_002C00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_1Vtx_0010E0[14], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(3, 2, 6, 0, 2, 7, 6, 0),
    gsSP2Triangles(2, 5, 8, 0, 2, 8, 7, 0),
    gsSP2Triangles(5, 9, 10, 0, 5, 10, 8, 0),
    gsSP2Triangles(4, 11, 9, 0, 4, 9, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_1Tex_005FD8, G_IM_FMT_CI, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, FIRE_bs_room_1TLUT_004998),
    gsSPVertex(&FIRE_bs_room_1Vtx_0010E0[26], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 6, 0, 0, 7, 8, 3, 0),
    gsSP2Triangles(0, 9, 1, 0, 7, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_1Tex_005BD8, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_1Vtx_0010E0[36], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(2, 5, 4, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 8, 7, 0),
    gsSP2Triangles(10, 7, 11, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx FIRE_bs_room_1Vtx_0016A8[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Vtx_0016A8.vtx.inc"
};

Gfx FIRE_bs_room_1DL_001A28[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&FIRE_bs_room_1Vtx_0016A8[48], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_003400, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(FIRE_bs_room_1Vtx_0016A8, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 10, 8, 0),
    gsSP2Triangles(11, 8, 12, 0, 8, 13, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_002C00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_1Vtx_0016A8[14], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 0, 3, 0, 5, 3, 6, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(6, 3, 10, 0, 6, 10, 8, 0),
    gsSP2Triangles(3, 2, 11, 0, 3, 11, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_1Tex_005FD8, G_IM_FMT_CI, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, FIRE_bs_room_1TLUT_004998),
    gsSPVertex(&FIRE_bs_room_1Vtx_0016A8[26], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 6, 0, 0, 3, 7, 4, 0),
    gsSP2Triangles(1, 8, 2, 0, 4, 9, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_1Tex_005BD8, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_1Vtx_0016A8[36], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 1, 4, 0, 1, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 8, 7, 0, 10, 7, 11, 0),
    gsSPEndDisplayList(),
};

Vtx FIRE_bs_room_1Vtx_001C70[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Vtx_001C70.vtx.inc"
};

Gfx FIRE_bs_room_1DL_001FF0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&FIRE_bs_room_1Vtx_001C70[48], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_003400, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(FIRE_bs_room_1Vtx_001C70, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(11, 8, 12, 0, 11, 13, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_002C00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_1Vtx_001C70[14], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(10, 8, 4, 0, 10, 4, 1, 0),
    gsSP2Triangles(11, 10, 1, 0, 11, 1, 0, 0),
    gsSP2Triangles(1, 7, 2, 0, 1, 4, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_1Tex_005FD8, G_IM_FMT_CI, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, FIRE_bs_room_1TLUT_004998),
    gsSPVertex(&FIRE_bs_room_1Vtx_001C70[26], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 6, 0, 0, 4, 7, 5, 0),
    gsSP2Triangles(0, 8, 1, 0, 3, 9, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(FIRE_bs_room_1Tex_005BD8, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&FIRE_bs_room_1Vtx_001C70[36], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 8, 7, 0, 10, 7, 11, 0),
    gsSPEndDisplayList(),
};

Vtx FIRE_bs_room_1Vtx_002238[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Vtx_002238.vtx.inc"
};

Gfx FIRE_bs_room_1DL_002338[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&FIRE_bs_room_1Vtx_002238[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_002C00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(FIRE_bs_room_1Vtx_002238, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx FIRE_bs_room_1Vtx_002400[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Vtx_002400.vtx.inc"
};

Gfx FIRE_bs_room_1DL_002600[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&FIRE_bs_room_1Vtx_002400[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_002C00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(FIRE_bs_room_1Vtx_002400, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 3, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 9, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 15, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 21, 22, 0),
    gsSPEndDisplayList(),
};

Vtx FIRE_bs_room_1Vtx_0026F0[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Vtx_0026F0.vtx.inc"
};

Gfx FIRE_bs_room_1DL_003070[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&FIRE_bs_room_1Vtx_0026F0[144], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_002C00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(FIRE_bs_room_1Vtx_0026F0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(3, 2, 15, 0, 3, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 20, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(25, 24, 26, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 26, 28, 0, 27, 28, 29, 0),
    gsSP2Triangles(29, 28, 30, 0, 29, 30, 31, 0),
    gsSP2Triangles(31, 30, 17, 0, 31, 17, 16, 0),
    gsSPVertex(&FIRE_bs_room_1Vtx_0026F0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(3, 2, 15, 0, 3, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 20, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(25, 24, 26, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 26, 28, 0, 27, 28, 29, 0),
    gsSP2Triangles(29, 28, 30, 0, 29, 30, 31, 0),
    gsSP2Triangles(31, 30, 17, 0, 31, 17, 16, 0),
    gsSPVertex(&FIRE_bs_room_1Vtx_0026F0[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(3, 2, 15, 0, 3, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 20, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(25, 24, 26, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 26, 28, 0, 27, 28, 29, 0),
    gsSP2Triangles(29, 28, 30, 0, 29, 30, 31, 0),
    gsSP2Triangles(31, 30, 17, 0, 31, 17, 16, 0),
    gsSPVertex(&FIRE_bs_room_1Vtx_0026F0[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 1, 0, 15, 1, 0, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 17, 0, 20, 17, 16, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 21, 20, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 23, 22, 0),
    gsSP2Triangles(26, 27, 25, 0, 26, 25, 24, 0),
    gsSP2Triangles(28, 29, 27, 0, 28, 27, 26, 0),
    gsSP2Triangles(30, 31, 29, 0, 30, 29, 28, 0),
    gsSP2Triangles(19, 18, 31, 0, 19, 31, 30, 0),
    gsSPVertex(&FIRE_bs_room_1Vtx_0026F0[128], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 1, 0, 15, 1, 0, 0),
    gsSPEndDisplayList(),
};

Vtx FIRE_bs_room_1Vtx_003380[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Vtx_003380.vtx.inc"
};

Gfx FIRE_bs_room_1DL_003480[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&FIRE_bs_room_1Vtx_003380[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(FIRE_bs_room_1Tex_0065D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, G_TX_NOLOD),
    gsDPLoadMultiBlock(FIRE_bs_sceneTex_002C00, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(FIRE_bs_room_1Vtx_003380, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 1, 5, 6, 0),
    gsSP2Triangles(1, 6, 7, 0, 1, 7, 2, 0),
    gsSPEndDisplayList(),
};

Vtx FIRE_bs_room_1Vtx_003588[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Vtx_003588.vtx.inc"
};

Gfx FIRE_bs_room_1DL_003698[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&FIRE_bs_room_1Vtx_003588[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(FIRE_bs_sceneTex_003C00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPLoadMultiBlock(FIRE_bs_sceneTex_004400, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(FIRE_bs_room_1Vtx_003588, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 3, 5, 6, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 7, 8, 0),
    gsSP1Triangle(3, 8, 4, 0),
    gsSPEndDisplayList(),
};

Vtx FIRE_bs_room_1Vtx_0037A8[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Vtx_0037A8.vtx.inc"
};

Gfx FIRE_bs_room_1DL_0045B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&FIRE_bs_room_1Vtx_0037A8[217], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(FIRE_bs_room_1Tex_0053D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(FIRE_bs_room_1Vtx_0037A8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 3, 0),
    gsSP2Triangles(5, 7, 6, 0, 6, 8, 3, 0),
    gsSP2Triangles(9, 10, 5, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 12, 5, 0, 13, 14, 9, 0),
    gsSP2Triangles(2, 15, 13, 0, 2, 13, 9, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(17, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(18, 24, 21, 0, 18, 21, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 23, 28, 25, 0),
    gsSP2Triangles(23, 25, 27, 0, 27, 29, 16, 0),
    gsSP2Triangles(27, 30, 29, 0, 29, 31, 16, 0),
    gsSPVertex(&FIRE_bs_room_1Vtx_0037A8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 3, 0),
    gsSP2Triangles(5, 7, 6, 0, 6, 8, 3, 0),
    gsSP2Triangles(9, 10, 5, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 12, 5, 0, 13, 14, 9, 0),
    gsSP2Triangles(2, 15, 13, 0, 2, 13, 9, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(17, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(18, 24, 21, 0, 18, 21, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 23, 28, 25, 0),
    gsSP2Triangles(23, 25, 27, 0, 27, 29, 16, 0),
    gsSP2Triangles(27, 30, 29, 0, 29, 31, 16, 0),
    gsSPVertex(&FIRE_bs_room_1Vtx_0037A8[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 3, 0),
    gsSP2Triangles(5, 7, 6, 0, 6, 8, 3, 0),
    gsSP2Triangles(9, 10, 5, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 12, 5, 0, 13, 14, 9, 0),
    gsSP2Triangles(2, 15, 13, 0, 2, 13, 9, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(17, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(18, 24, 21, 0, 18, 21, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 23, 28, 25, 0),
    gsSP2Triangles(23, 25, 27, 0, 27, 29, 16, 0),
    gsSP2Triangles(27, 30, 29, 0, 29, 31, 16, 0),
    gsSPVertex(&FIRE_bs_room_1Vtx_0037A8[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 3, 0),
    gsSP2Triangles(5, 7, 6, 0, 6, 8, 3, 0),
    gsSP2Triangles(9, 10, 5, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 12, 5, 0, 13, 14, 9, 0),
    gsSP2Triangles(2, 15, 13, 0, 2, 13, 9, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 16, 0),
    gsSP2Triangles(19, 16, 18, 0, 21, 22, 19, 0),
    gsSP2Triangles(21, 23, 22, 0, 22, 24, 19, 0),
    gsSP2Triangles(25, 26, 21, 0, 25, 27, 26, 0),
    gsSP2Triangles(26, 28, 21, 0, 29, 30, 25, 0),
    gsSP2Triangles(18, 31, 29, 0, 18, 29, 25, 0),
    gsSPVertex(&FIRE_bs_room_1Vtx_0037A8[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(2, 8, 5, 0, 2, 5, 7, 0),
    gsSP2Triangles(9, 10, 11, 0, 7, 12, 9, 0),
    gsSP2Triangles(7, 9, 11, 0, 11, 13, 0, 0),
    gsSP2Triangles(11, 14, 13, 0, 13, 15, 0, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 11, 21, 0, 21, 11, 0, 0),
    gsSP2Triangles(22, 0, 2, 0, 22, 2, 23, 0),
    gsSP2Triangles(11, 20, 24, 0, 11, 24, 7, 0),
    gsSP2Triangles(7, 25, 26, 0, 7, 26, 2, 0),
    gsSP2Triangles(26, 27, 23, 0, 26, 23, 2, 0),
    gsSP2Triangles(7, 24, 25, 0, 24, 28, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 25, 0),
    gsSPVertex(&FIRE_bs_room_1Vtx_0037A8[159], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 2, 0),
    gsSP2Triangles(4, 8, 9, 0, 4, 9, 5, 0),
    gsSP2Triangles(10, 3, 11, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 10, 0, 13, 10, 15, 0),
    gsSP2Triangles(14, 0, 10, 0, 0, 3, 10, 0),
    gsSP2Triangles(16, 17, 0, 0, 16, 0, 14, 0),
    gsSP2Triangles(18, 19, 16, 0, 18, 16, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 24, 22, 0),
    gsSP2Triangles(21, 25, 24, 0, 26, 27, 28, 0),
    gsSP2Triangles(27, 29, 28, 0, 27, 26, 30, 0),
    gsSP1Triangle(11, 7, 31, 0),
    gsSPVertex(&FIRE_bs_room_1Vtx_0037A8[191], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 1, 0),
    gsSP2Triangles(5, 1, 7, 0, 7, 1, 8, 0),
    gsSP2Triangles(4, 0, 9, 0, 0, 10, 9, 0),
    gsSP2Triangles(8, 11, 7, 0, 11, 12, 7, 0),
    gsSP2Triangles(13, 14, 11, 0, 12, 11, 14, 0),
    gsSP2Triangles(15, 13, 11, 0, 15, 11, 16, 0),
    gsSP2Triangles(11, 17, 16, 0, 18, 19, 20, 0),
    gsSP2Triangles(19, 21, 20, 0, 22, 23, 24, 0),
    gsSP1Triangle(22, 24, 25, 0),
    gsSPEndDisplayList(),
};

Gfx FIRE_bs_room_1DL_004940[] = {
    gsSPDisplayList(FIRE_bs_room_1DL_000BE0),
    gsSPDisplayList(FIRE_bs_room_1DL_001460),
    gsSPDisplayList(FIRE_bs_room_1DL_001A28),
    gsSPDisplayList(FIRE_bs_room_1DL_001FF0),
    gsSPDisplayList(FIRE_bs_room_1DL_002338),
    gsSPDisplayList(FIRE_bs_room_1DL_002600),
    gsSPDisplayList(FIRE_bs_room_1DL_003070),
    gsSPDisplayList(FIRE_bs_room_1DL_003480),
    gsSPDisplayList(FIRE_bs_room_1DL_003698),
    gsSPDisplayList(FIRE_bs_room_1DL_0045B8),
    gsSPEndDisplayList(),
};

u64 FIRE_bs_room_1TLUT_004998[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1TLUT_004998.rgba16.inc.c"
};

u64 FIRE_bs_room_1TLUT_0049B8[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1TLUT_0049B8.rgba16.inc.c"
};

u64 FIRE_bs_room_1Tex_0049D8[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Tex_0049D8.ci4.inc.c"
};

u64 FIRE_bs_room_1Tex_004BD8[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Tex_004BD8.rgba16.inc.c"
};

u64 FIRE_bs_room_1Tex_0053D8[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Tex_0053D8.rgba16.inc.c"
};

u64 FIRE_bs_room_1Tex_005BD8[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Tex_005BD8.ci4.inc.c"
};

u64 FIRE_bs_room_1Tex_005FD8[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Tex_005FD8.ci4.inc.c"
};

u64 FIRE_bs_room_1Tex_0061D8[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Tex_0061D8.ci4.inc.c"
};

u64 FIRE_bs_room_1Tex_0065D8[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Tex_0065D8.rgba16.inc.c"
};

u64 FIRE_bs_room_1Tex_006DD8[] = {
#include "assets/scenes/dungeons/FIRE_bs/FIRE_bs_room_1Tex_006DD8.ci4.inc.c"
};

