#include <ultra64.h>
#include <z64.h>
#include "spot07_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "spot07_scene.h"



SCmdAltHeaders _spot07_room_0_set0000_cmd00 = { 0x18, 0, (u32)&_spot07_room_0_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _spot07_room_0_set0000_cmd01 = { 0x16, 0, { 0 }, 0x0A }; // 0x0008
SCmdRoomBehavior _spot07_room_0_set0000_cmd02 = { 0x08, 0x00, 0x00000004 }; // 0x0010
SCmdSkyboxDisables _spot07_room_0_set0000_cmd03 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0018
SCmdTimeSettings _spot07_room_0_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0020
SCmdMesh _spot07_room_0_set0000_cmd05 = { 0x0A, 0, (u32)&_spot07_room_0_meshHeader_00000150 }; // 0x0028
SCmdObjectList _spot07_room_0_set0000_cmd06 = { 0x0B, 0x08, (u32)_spot07_room_0_objectList_00000058 }; // 0x0030
SCmdActorList _spot07_room_0_set0000_cmd07 = { 0x01, 0x0E, (u32)_spot07_room_0_actorList_00000068 }; // 0x0038
SCmdEndMarker _spot07_room_0_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _spot07_room_0_alternateHeaders_00000048[] = 
{
	0,
	(u32)&_spot07_room_0_set0220_cmd00,
	0,
	(u32)&_spot07_room_0_set0300_cmd00,
};

s16 _spot07_room_0_objectList_00000058[] = 
{
	OBJECT_SPOT07_OBJECT,
	OBJECT_SYOKUDAI,
	OBJECT_KANBAN,
	OBJECT_TSUBO,
	OBJECT_ZO,
	OBJECT_KZ,
	OBJECT_RU1,
	OBJECT_GS,
};

ActorEntry _spot07_room_0_actorList_00000068[14] = 
{
	{ ACTOR_EN_RIVER_SOUND, 642, 857, -1691, 0, 0, 0, 0x0000 }, //0x00000068 
	{ ACTOR_EN_KZ, 628, 996, -1780, 0, 0, 0, 0x0100 }, //0x00000078 
	{ ACTOR_EN_RU1, 603, 996, -1806, 0, 3459, 0, 0x0005 }, //0x00000088 
	{ ACTOR_BG_SPOT07_TAKI, 445, 1008, -1742, 0, 0, 0, 0x0001 }, //0x00000098 
	{ ACTOR_EN_A_OBJ, 345, 857, -1572, 0, -32768, 0, 0x2B0A }, //0x000000A8 
	{ ACTOR_OBJ_SYOKUDAI, 462, 887, -1275, 0, 0, 0, 0x2400 }, //0x000000B8 
	{ ACTOR_OBJ_SYOKUDAI, 778, 887, -1275, 0, 0, 0, 0x2400 }, //0x000000C8 
	{ ACTOR_EN_KANBAN, 720, 890, -1345, 0, 0, 0, 0x0324 }, //0x000000D8 
	{ ACTOR_EN_DIVING_GAME, -149, 857, -1020, 0, -23848, 0, 0xFFFF }, //0x000000E8 
	{ ACTOR_OBJ_COMB, 382, 1173, -1337, 0, 0, 0, 0xFF02 }, //0x000000F8 
	{ ACTOR_OBJ_COMB, 948, 1217, -1500, 0, 0, 0, 0xFF02 }, //0x00000108 
	{ ACTOR_OBJ_COMB, 701, 1250, -2056, 0, -8374, 0, 0xFF02 }, //0x00000118 
	{ ACTOR_OBJ_SYOKUDAI, 644, 402, -157, 0, -22756, 0, 0x2000 }, //0x00000128 
	{ ACTOR_EN_GS, 620, 857, -1600, 0, 0, 0, 0x3809 }, //0x00000138 
};

static u32 pad148 = 0;
static u32 pad14C = 0;

MeshHeader2 _spot07_room_0_meshHeader_00000150 = { { 2 }, 0x0C, (u32)&_spot07_room_0_meshDListEntry_0000015C, (u32)&(_spot07_room_0_meshDListEntry_0000015C) + sizeof(_spot07_room_0_meshDListEntry_0000015C) };

MeshEntry2 _spot07_room_0_meshDListEntry_0000015C[12] = 
{
	{ 356, 1067, -2019, 970, (u32)_spot07_room_0_dlist_000034B0, 0 },
	{ 696, 916, -1419, 354, (u32)_spot07_room_0_dlist_00002A28, 0 },
	{ 430, 1061, -2019, 1040, (u32)_spot07_room_0_dlist_00002100, 0 },
	{ -30, 979, -1505, 265, (u32)_spot07_room_0_dlist_000004D0, 0 },
	{ 467, 1207, -2002, 1021, (u32)_spot07_room_0_dlist_000026F0, 0 },
	{ 666, 1057, -1605, 487, (u32)_spot07_room_0_dlist_00002E48, 0 },
	{ 670, 949, -1263, 751, (u32)_spot07_room_0_dlist_00001260, 0 },
	{ 703, 956, -1532, 515, (u32)_spot07_room_0_dlist_00001870, 0 },
	{ 59, 1128, -2652, 303, 0, (u32)_spot07_room_0_dlist_000061E8 },
	{ 625, 1128, -1863, 224, (u32)_spot07_room_0_dlist_00000BA8, (u32)_spot07_room_0_dlist_00006010 },
	{ 625, 952, -1786, 155, (u32)_spot07_room_0_dlist_00000838, 0 },
	{ -67, 654, -480, 1125, (u32)_spot07_room_0_dlist_00003EA8, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

SCmdEchoSettings _spot07_room_0_set0220_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0220
SCmdRoomBehavior _spot07_room_0_set0220_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x0228
SCmdSkyboxDisables _spot07_room_0_set0220_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0230
SCmdTimeSettings _spot07_room_0_set0220_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0238
SCmdMesh _spot07_room_0_set0220_cmd04 = { 0x0A, 0, (u32)&_spot07_room_0_meshHeader_00000150 }; // 0x0240
SCmdObjectList _spot07_room_0_set0220_cmd05 = { 0x0B, 0x07, (u32)_spot07_room_0_objectList_00000260 }; // 0x0248
SCmdActorList _spot07_room_0_set0220_cmd06 = { 0x01, 0x09, (u32)_spot07_room_0_actorList_00000270 }; // 0x0250
SCmdEndMarker _spot07_room_0_set0220_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0258
s16 _spot07_room_0_objectList_00000260[] = 
{
	OBJECT_SPOT07_OBJECT,
	OBJECT_ICE_OBJECTS,
	OBJECT_SYOKUDAI,
	OBJECT_KANBAN,
	OBJECT_TSUBO,
	OBJECT_GS,
	OBJECT_KZ,
};

ActorEntry _spot07_room_0_actorList_00000270[9] = 
{
	{ ACTOR_EN_KZ, 628, 996, -1780, 0, 0, 0, 0x0000 }, //0x00000270 
	{ ACTOR_EN_GS, 620, 857, -1600, 0, 0, 0, 0x3809 }, //0x00000280 
	{ ACTOR_BG_SPOT07_TAKI, 445, 1008, -1742, 0, 0, 0, 0x0001 }, //0x00000290 
	{ ACTOR_EN_A_OBJ, 345, 857, -1572, 0, -32768, 0, 0x2B0A }, //0x000002A0 
	{ ACTOR_OBJ_SYOKUDAI, 462, 887, -1275, 0, 0, 0, 0x2000 }, //0x000002B0 
	{ ACTOR_OBJ_SYOKUDAI, 778, 887, -1275, 0, 0, 0, 0x2000 }, //0x000002C0 
	{ ACTOR_EN_WEATHER_TAG, -177, 0, -1061, 0, 0, 0, 0x1402 }, //0x000002D0 
	{ ACTOR_EN_KANBAN, 720, 890, -1345, 0, 0, 0, 0x0324 }, //0x000002E0 
	{ ACTOR_OBJECT_KANKYO, 624, 857, -1555, 0, 0, 0, 0x0003 }, //0x000002F0 
};


SCmdEchoSettings _spot07_room_0_set0300_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0300
SCmdRoomBehavior _spot07_room_0_set0300_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x0308
SCmdSkyboxDisables _spot07_room_0_set0300_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0310
SCmdTimeSettings _spot07_room_0_set0300_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0318
SCmdMesh _spot07_room_0_set0300_cmd04 = { 0x0A, 0, (u32)&_spot07_room_0_meshHeader_00000150 }; // 0x0320
SCmdObjectList _spot07_room_0_set0300_cmd05 = { 0x0B, 0x03, (u32)_spot07_room_0_objectList_00000340 }; // 0x0328
SCmdActorList _spot07_room_0_set0300_cmd06 = { 0x01, 0x05, (u32)_spot07_room_0_actorList_00000348 }; // 0x0330
SCmdEndMarker _spot07_room_0_set0300_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0338
s16 _spot07_room_0_objectList_00000340[] = 
{
	OBJECT_SPOT07_OBJECT,
	OBJECT_SYOKUDAI,
	OBJECT_KANBAN,
};

ActorEntry _spot07_room_0_actorList_00000348[5] = 
{
	{ ACTOR_OBJ_SYOKUDAI, 809, 857, -1560, 0, 0, 0, 0x2400 }, //0x00000348 
	{ ACTOR_OBJ_SYOKUDAI, 428, 857, -1560, 0, 0, 0, 0x2400 }, //0x00000358 
	{ ACTOR_EN_KANBAN, 720, 890, -1345, 0, 0, 0, 0x0324 }, //0x00000368 
	{ ACTOR_EN_KANBAN, 230, 857, -1440, 0, 16384, 0, 0x032B }, //0x00000378 
	{ ACTOR_BG_SPOT07_TAKI, 445, 1008, -1742, 0, 0, 0, 0x0001 }, //0x00000388 
};

static u32 pad398 = 0;
static u32 pad39C = 0;

Vtx_t _spot07_room_0_vertices_000003A0[11] = 
{
	 { -42, 957, -1485, 0, 3500, 0, 60, 73, 69, 255 }, // 0x000003A0
	 { -134, 957, -1392, 0, 2401, 0, 18, 22, 21, 255 }, // 0x000003B0
	 { -175, 977, -1446, 0, 2660, 516, 18, 22, 21, 255 }, // 0x000003C0
	 { -95, 977, -1526, 0, 3491, 342, 60, 73, 69, 255 }, // 0x000003D0
	 { -222, 957, -1498, 0, 2785, 1024, 18, 22, 21, 255 }, // 0x000003E0
	 { -195, 977, -1386, 0, 2202, 511, 18, 22, 21, 255 }, // 0x000003F0
	 { -264, 957, -1384, 0, 2147, 1024, 18, 22, 21, 255 }, // 0x00000400
	 { -155, 957, -1586, 0, 3361, 1024, 60, 73, 69, 255 }, // 0x00000410
	 { -35, 957, -1626, 0, 4008, 1024, 80, 98, 92, 255 }, // 0x00000420
	 { 205, 1001, -1626, 0, 5241, 1024, 157, 175, 169, 255 }, // 0x00000430
	 { 205, 1001, -1466, 0, 5241, 0, 191, 202, 198, 255 }, // 0x00000440
};

Vtx_t _spot07_room_0_vertices_00000450[8] = 
{
	 { 198, 957, -1667, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000450
	 { 235, 957, -1457, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000460
	 { 198, 1001, -1667, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000470
	 { 235, 1001, -1457, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000480
	 { -299, 957, -1579, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000490
	 { -262, 957, -1369, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004A0
	 { -299, 1001, -1579, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004B0
	 { -262, 1001, -1369, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004C0
};

Gfx _spot07_room_0_dlist_000004D0[] =
{
	gsDPPipeSync(), // 0x000004D0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000004D8
	gsSPVertex(_spot07_room_0_vertices_00000450, 8, 0), // 0x000004E0
	gsSPCullDisplayList(0, 7), // 0x000004E8
	gsDPPipeSync(), // 0x000004F0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000004F8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000500
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000508
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005398), // 0x00000510
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00000518
	gsDPLoadSync(), // 0x00000520
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000528
	gsDPPipeSync(), // 0x00000530
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00000538
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000540
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009018), // 0x00000548
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 128, 7, 0, 0, 5, 15, 0, 6, 15), // 0x00000550
	gsDPLoadSync(), // 0x00000558
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000560
	gsDPPipeSync(), // 0x00000568
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 128, 1, 0, 0, 5, 15, 0, 6, 15), // 0x00000570
	gsDPSetTileSize(1, 0, 0, 252, 124), // 0x00000578
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00003F70), // 0x00000580
	gsDPTileSync(), // 0x00000588
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000590
	gsDPLoadSync(), // 0x00000598
	gsDPLoadTLUTCmd(7, 15), // 0x000005A0
	gsDPPipeSync(), // 0x000005A8
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000005B0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000005B8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000005C0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000005C8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000005D0
	gsDPSetEnvColor(0, 0, 0, 100), // 0x000005D8
	gsSPDisplayList(0x0C000000), // 0x000005E0
	gsSPVertex(_spot07_room_0_vertices_000003A0, 11, 0), // 0x000005E8
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x000005F0
	gsSP2Triangles(4, 3, 2, 0, 2, 1, 5, 0), // 0x000005F8
	gsSP2Triangles(4, 2, 5, 0, 6, 4, 5, 0), // 0x00000600
	gsSP2Triangles(4, 7, 3, 0, 7, 8, 3, 0), // 0x00000608
	gsSP2Triangles(9, 3, 8, 0, 3, 9, 10, 0), // 0x00000610
	gsSP1Triangle(0, 3, 10, 0), // 0x00000618
	gsDPPipeSync(), // 0x00000620
	gsDPSetEnvColor(0, 0, 0, 128), // 0x00000628
	gsSPEndDisplayList(), // 0x00000630
};

Vtx_t _spot07_room_0_vertices_00000638[8] = 
{
	 { 709, 936, -1746, 0, 0, 1536, 233, 237, 236, 255 }, // 0x00000638
	 { 769, 936, -1746, 0, 2048, 1536, 208, 217, 214, 255 }, // 0x00000648
	 { 769, 996, -1746, 0, 2048, 0, 233, 237, 236, 255 }, // 0x00000658
	 { 709, 996, -1746, 0, 0, 0, 233, 237, 236, 255 }, // 0x00000668
	 { 709, 996, -1806, 0, 0, -1024, 233, 237, 236, 255 }, // 0x00000678
	 { 709, 996, -1746, 0, 0, 512, 233, 237, 236, 255 }, // 0x00000688
	 { 769, 996, -1746, 0, 2048, 512, 233, 237, 236, 255 }, // 0x00000698
	 { 769, 996, -1806, 0, 2048, -1024, 208, 217, 214, 255 }, // 0x000006A8
};

Vtx_t _spot07_room_0_vertices_000006B8[8] = 
{
	 { 569, 908, -1746, 0, 0, 1597, 208, 217, 214, 255 }, // 0x000006B8
	 { 681, 908, -1746, 0, 2048, 1596, 208, 217, 214, 255 }, // 0x000006C8
	 { 681, 996, -1746, 0, 2048, 0, 233, 237, 236, 255 }, // 0x000006D8
	 { 569, 996, -1746, 0, 0, 2, 233, 237, 236, 255 }, // 0x000006E8
	 { 569, 996, -1826, 0, 0, -1044, 233, 237, 236, 255 }, // 0x000006F8
	 { 569, 996, -1746, 0, 0, 512, 233, 237, 236, 255 }, // 0x00000708
	 { 681, 996, -1746, 0, 2048, 512, 233, 237, 236, 255 }, // 0x00000718
	 { 681, 996, -1826, 0, 2048, -1044, 233, 237, 236, 255 }, // 0x00000728
};

Vtx_t _spot07_room_0_vertices_00000738[8] = 
{
	 { 481, 996, -1806, 0, 0, -1536, 208, 217, 214, 255 }, // 0x00000738
	 { 481, 996, -1746, 0, 0, 512, 233, 237, 236, 255 }, // 0x00000748
	 { 541, 996, -1746, 0, 2048, 512, 233, 237, 236, 255 }, // 0x00000758
	 { 541, 996, -1806, 0, 2048, -1536, 233, 237, 236, 255 }, // 0x00000768
	 { 541, 996, -1746, 0, 2048, 0, 233, 237, 236, 255 }, // 0x00000778
	 { 481, 996, -1746, 0, 0, 0, 233, 237, 236, 255 }, // 0x00000788
	 { 481, 936, -1746, 0, 0, 1536, 208, 217, 214, 255 }, // 0x00000798
	 { 541, 936, -1746, 0, 2048, 1536, 233, 237, 236, 255 }, // 0x000007A8
};

Vtx_t _spot07_room_0_vertices_000007B8[8] = 
{
	 { 481, 908, -1826, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007B8
	 { 769, 908, -1826, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007C8
	 { 481, 996, -1826, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007D8
	 { 769, 996, -1826, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007E8
	 { 481, 908, -1746, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007F8
	 { 769, 908, -1746, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000808
	 { 481, 996, -1746, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000818
	 { 769, 996, -1746, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000828
};

Gfx _spot07_room_0_dlist_00000838[] =
{
	gsDPPipeSync(), // 0x00000838
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000840
	gsSPVertex(_spot07_room_0_vertices_000007B8, 8, 0), // 0x00000848
	gsSPCullDisplayList(0, 7), // 0x00000850
	gsDPPipeSync(), // 0x00000858
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000860
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000868
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000870
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_room_0_tex_00004F48), // 0x00000878
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 6, 0), // 0x00000880
	gsDPLoadSync(), // 0x00000888
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00000890
	gsDPPipeSync(), // 0x00000898
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 4, 0, 0, 6, 0), // 0x000008A0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x000008A8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000008B0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000008B8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000008C0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000008C8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000008D0
	gsSPVertex(_spot07_room_0_vertices_00000638, 8, 0), // 0x000008D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000008E0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000008E8
	gsDPPipeSync(), // 0x000008F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_room_0_tex_00004748), // 0x000008F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 6, 0), // 0x00000900
	gsDPLoadSync(), // 0x00000908
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00000910
	gsDPPipeSync(), // 0x00000918
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 4, 0, 0, 6, 0), // 0x00000920
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00000928
	gsSPVertex(_spot07_room_0_vertices_000006B8, 8, 0), // 0x00000930
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000938
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000940
	gsDPPipeSync(), // 0x00000948
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_room_0_tex_00004F48), // 0x00000950
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 6, 0), // 0x00000958
	gsDPLoadSync(), // 0x00000960
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00000968
	gsDPPipeSync(), // 0x00000970
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 4, 0, 0, 6, 0), // 0x00000978
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00000980
	gsSPVertex(_spot07_room_0_vertices_00000738, 8, 0), // 0x00000988
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000990
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000998
	gsSPEndDisplayList(), // 0x000009A0
};

Vtx_t _spot07_room_0_vertices_000009A8[4] = 
{
	 { 667, 1156, -1836, 0, 0, 0, 87, 107, 101, 255 }, // 0x000009A8
	 { 667, 996, -1836, 0, 0, 2048, 191, 202, 198, 255 }, // 0x000009B8
	 { 805, 996, -1836, 0, 2048, 2048, 191, 202, 198, 255 }, // 0x000009C8
	 { 805, 1156, -1836, 0, 2048, 0, 87, 107, 101, 255 }, // 0x000009D8
};

Vtx_t _spot07_room_0_vertices_000009E8[8] = 
{
	 { 661, 1216, -1905, 0, -3483, 1024, 183, 196, 191, 255 }, // 0x000009E8
	 { 785, 1251, -1905, 0, 11890, 1024, 80, 98, 92, 255 }, // 0x000009F8
	 { 785, 1260, -1905, 0, 12096, -38, 25, 31, 29, 255 }, // 0x00000A08
	 { 657, 1224, -1905, 0, -3679, -21, 108, 132, 124, 255 }, // 0x00000A18
	 { 593, 1224, -1905, 0, -3679, -21, 108, 132, 124, 255 }, // 0x00000A28
	 { 465, 1260, -1905, 0, 12096, -38, 25, 31, 29, 255 }, // 0x00000A38
	 { 465, 1251, -1905, 0, 11890, 1024, 80, 98, 92, 255 }, // 0x00000A48
	 { 589, 1216, -1905, 0, -3483, 1024, 183, 196, 191, 255 }, // 0x00000A58
};

Vtx_t _spot07_room_0_vertices_00000A68[8] = 
{
	 { 685, 1156, -1852, 0, 512, 0, 87, 107, 101, 255 }, // 0x00000A68
	 { 685, 996, -1852, 0, 512, 2048, 191, 202, 198, 255 }, // 0x00000A78
	 { 685, 996, -1820, 0, 0, 2048, 191, 202, 198, 255 }, // 0x00000A88
	 { 685, 1156, -1820, 0, 0, 0, 87, 107, 101, 255 }, // 0x00000A98
	 { 569, 1156, -1820, 0, 0, 0, 87, 107, 101, 255 }, // 0x00000AA8
	 { 569, 996, -1820, 0, 0, 2048, 191, 202, 198, 255 }, // 0x00000AB8
	 { 569, 996, -1852, 0, 512, 2048, 191, 202, 198, 255 }, // 0x00000AC8
	 { 569, 1156, -1852, 0, 512, 0, 87, 107, 101, 255 }, // 0x00000AD8
};

Vtx_t _spot07_room_0_vertices_00000AE8[4] = 
{
	 { 445, 1156, -1836, 0, 2048, 0, 87, 107, 101, 255 }, // 0x00000AE8
	 { 445, 996, -1836, 0, 2048, 2048, 191, 202, 198, 255 }, // 0x00000AF8
	 { 587, 996, -1836, 0, 0, 2048, 191, 202, 198, 255 }, // 0x00000B08
	 { 587, 1156, -1836, 0, 0, 0, 87, 107, 101, 255 }, // 0x00000B18
};

Vtx_t _spot07_room_0_vertices_00000B28[8] = 
{
	 { 445, 988, -1865, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B28
	 { 805, 988, -1865, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B38
	 { 445, 1259, -1913, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B48
	 { 805, 1259, -1913, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B58
	 { 445, 1001, -1793, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B68
	 { 805, 1001, -1793, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B78
	 { 445, 1272, -1840, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B88
	 { 805, 1272, -1840, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B98
};

Gfx _spot07_room_0_dlist_00000BA8[] =
{
	gsDPPipeSync(), // 0x00000BA8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000BB0
	gsSPVertex(_spot07_room_0_vertices_00000B28, 8, 0), // 0x00000BB8
	gsSPCullDisplayList(0, 7), // 0x00000BC0
	gsDPPipeSync(), // 0x00000BC8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000BD0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000BD8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000BE0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00003F98), // 0x00000BE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00000BF0
	gsDPLoadSync(), // 0x00000BF8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00000C00
	gsDPPipeSync(), // 0x00000C08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00000C10
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000C18
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000C20
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00000C28
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00000C30
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x00000C38
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000C40
	gsSPVertex(_spot07_room_0_vertices_000009A8, 4, 0), // 0x00000C48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000C50
	gsDPPipeSync(), // 0x00000C58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00007F98), // 0x00000C60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x00000C68
	gsDPLoadSync(), // 0x00000C70
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000C78
	gsDPPipeSync(), // 0x00000C80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x00000C88
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000C90
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00000C98
	gsSPVertex(_spot07_room_0_vertices_000009E8, 8, 0), // 0x00000CA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000CA8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000CB0
	gsDPPipeSync(), // 0x00000CB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_room_0_tex_00005748), // 0x00000CC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 4, 0), // 0x00000CC8
	gsDPLoadSync(), // 0x00000CD0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000CD8
	gsDPPipeSync(), // 0x00000CE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 6, 0, 2, 4, 0), // 0x00000CE8
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x00000CF0
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00000CF8
	gsSPVertex(_spot07_room_0_vertices_00000A68, 8, 0), // 0x00000D00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000D08
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000D10
	gsDPPipeSync(), // 0x00000D18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00003F98), // 0x00000D20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00000D28
	gsDPLoadSync(), // 0x00000D30
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00000D38
	gsDPPipeSync(), // 0x00000D40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00000D48
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000D50
	gsSPVertex(_spot07_room_0_vertices_00000AE8, 4, 0), // 0x00000D58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000D60
	gsSPEndDisplayList(), // 0x00000D68
};

Vtx_t _spot07_room_0_vertices_00000D70[4] = 
{
	 { 730, 631, -689, 0, 1943, 955, 18, 22, 21, 255 }, // 0x00000D70
	 { 730, 887, -1226, 0, 1943, -12288, 60, 73, 69, 255 }, // 0x00000D80
	 { 520, 887, -1226, 0, 106, -12288, 60, 73, 69, 255 }, // 0x00000D90
	 { 520, 631, -689, 0, 106, 955, 18, 22, 21, 255 }, // 0x00000DA0
};

Vtx_t _spot07_room_0_vertices_00000DB0[4] = 
{
	 { 520, 791, -689, 0, -1134, 0, 18, 22, 21, 255 }, // 0x00000DB0
	 { 520, 1047, -1226, 0, -5463, 0, 157, 175, 169, 255 }, // 0x00000DC0
	 { 730, 1047, -1226, 0, -5463, 1024, 74, 91, 85, 255 }, // 0x00000DD0
	 { 730, 791, -689, 0, -1134, 1024, 18, 22, 21, 255 }, // 0x00000DE0
};

Vtx_t _spot07_room_0_vertices_00000DF0[8] = 
{
	 { 520, 631, -689, 0, 3158, 1024, 18, 22, 21, 255 }, // 0x00000DF0
	 { 520, 887, -1226, 0, 7485, 1024, 60, 73, 69, 255 }, // 0x00000E00
	 { 520, 1047, -1226, 0, 7485, 0, 157, 175, 169, 255 }, // 0x00000E10
	 { 520, 791, -689, 0, 3158, 0, 18, 22, 21, 255 }, // 0x00000E20
	 { 730, 791, -689, 0, -1134, 0, 18, 22, 21, 255 }, // 0x00000E30
	 { 730, 1047, -1226, 0, -5463, 0, 74, 91, 85, 255 }, // 0x00000E40
	 { 730, 887, -1226, 0, -5463, 1024, 60, 73, 69, 255 }, // 0x00000E50
	 { 730, 631, -689, 0, -1110, 1024, 18, 22, 21, 255 }, // 0x00000E60
};

Vtx_t _spot07_room_0_vertices_00000E70[20] = 
{
	 { 569, 908, -1746, 0, 1581, 957, 208, 217, 214, 255 }, // 0x00000E70
	 { 445, 857, -1746, 0, 3306, 1594, 74, 91, 85, 255 }, // 0x00000E80
	 { 805, 857, -1746, 0, -1703, 1594, 74, 91, 85, 255 }, // 0x00000E90
	 { 681, 908, -1746, 0, 22, 957, 208, 217, 214, 255 }, // 0x00000EA0
	 { 541, 936, -1746, 0, 1970, 605, 233, 237, 236, 255 }, // 0x00000EB0
	 { 569, 996, -1746, 0, 1581, -149, 233, 237, 236, 255 }, // 0x00000EC0
	 { 541, 996, -1746, 0, 1970, -149, 233, 237, 236, 255 }, // 0x00000ED0
	 { 481, 936, -1746, 0, 2805, 605, 208, 217, 214, 255 }, // 0x00000EE0
	 { 481, 996, -1746, 0, 2805, -149, 233, 237, 236, 255 }, // 0x00000EF0
	 { 445, 996, -1746, 0, 3306, -149, 191, 202, 198, 255 }, // 0x00000F00
	 { 709, 936, -1746, 0, -367, 605, 233, 237, 236, 255 }, // 0x00000F10
	 { 769, 936, -1746, 0, -1202, 605, 208, 217, 214, 255 }, // 0x00000F20
	 { 709, 996, -1746, 0, -367, -149, 233, 237, 236, 255 }, // 0x00000F30
	 { 681, 996, -1746, 0, 22, -149, 233, 237, 236, 255 }, // 0x00000F40
	 { 805, 996, -1746, 0, -1703, -149, 191, 202, 198, 255 }, // 0x00000F50
	 { 769, 996, -1746, 0, -1202, -149, 233, 237, 236, 255 }, // 0x00000F60
	 { 685, 947, -1449, 0, 2048, 1024, 157, 175, 169, 255 }, // 0x00000F70
	 { 565, 947, -1544, 0, 0, 0, 200, 210, 206, 255 }, // 0x00000F80
	 { 565, 947, -1449, 0, 0, 1024, 157, 175, 169, 255 }, // 0x00000F90
	 { 685, 947, -1544, 0, 2048, 0, 200, 210, 206, 255 }, // 0x00000FA0
};

Vtx_t _spot07_room_0_vertices_00000FB0[4] = 
{
	 { 565, 892, -1373, 0, 0, 1024, 208, 217, 214, 255 }, // 0x00000FB0
	 { 685, 892, -1373, 0, 2048, 1024, 208, 217, 214, 255 }, // 0x00000FC0
	 { 685, 947, -1449, 0, 2048, -2031, 157, 175, 169, 255 }, // 0x00000FD0
	 { 565, 947, -1449, 0, 0, -2031, 157, 175, 169, 255 }, // 0x00000FE0
};

Vtx_t _spot07_room_0_vertices_00000FF0[7] = 
{
	 { 1047, 1253, -1837, 0, -4378, 1024, 25, 31, 29, 255 }, // 0x00000FF0
	 { 935, 1265, -1723, 0, -4538, 0, 25, 31, 29, 255 }, // 0x00001000
	 { 877, 1265, -1725, 0, -5237, 0, 25, 31, 29, 255 }, // 0x00001010
	 { 785, 1257, -1826, 0, -5733, 1024, 46, 57, 53, 255 }, // 0x00001020
	 { 1047, 1253, -1837, 0, -4378, 1024, 25, 31, 29, 255 }, // 0x00001030
	 { 1135, 1253, -1634, 0, -3093, 1024, 25, 31, 29, 255 }, // 0x00001040
	 { 988, 1251, -1611, 0, -3261, 0, 25, 31, 29, 255 }, // 0x00001050
};

Vtx_t _spot07_room_0_vertices_00001060[15] = 
{
	 { 877, 1026, -1725, 0, 7285, 1024, 25, 31, 29, 255 }, // 0x00001060
	 { 877, 1265, -1725, 0, 7292, 0, 25, 31, 29, 255 }, // 0x00001070
	 { 935, 1265, -1723, 0, 6586, 0, 25, 31, 29, 255 }, // 0x00001080
	 { 935, 1026, -1723, 0, 6453, 1024, 25, 31, 29, 255 }, // 0x00001090
	 { 988, 1251, -1611, 0, 5309, 0, 25, 31, 29, 255 }, // 0x000010A0
	 { 988, 976, -1611, 0, 5309, 1024, 25, 31, 29, 255 }, // 0x000010B0
	 { 405, 857, -1226, 0, 4889, 856, 123, 147, 139, 255 }, // 0x000010C0
	 { 205, 857, -1226, 0, 6264, 1024, 95, 116, 109, 255 }, // 0x000010D0
	 { 405, 887, -1226, 0, 4889, 1024, 123, 147, 139, 255 }, // 0x000010E0
	 { 285, 1026, -1826, 0, 2358, 1024, 39, 48, 45, 255 }, // 0x000010F0
	 { 271, 1267, -1744, 0, 1754, 0, 25, 31, 29, 255 }, // 0x00001100
	 { 271, 1019, -1744, 0, 1754, 1024, 33, 40, 38, 255 }, // 0x00001110
	 { 285, 1026, -1826, 0, 2358, 1024, 39, 48, 45, 255 }, // 0x00001120
	 { 285, 1253, -1826, 0, 2358, 0, 25, 31, 29, 255 }, // 0x00001130
	 { 271, 1267, -1744, 0, 1754, 0, 25, 31, 29, 255 }, // 0x00001140
};

Vtx_t _spot07_room_0_vertices_00001150[5] = 
{
	 { 271, 1267, -1744, 0, 1754, 1024, 25, 31, 29, 255 }, // 0x00001150
	 { 285, 1253, -1826, 0, 1789, 0, 25, 31, 29, 255 }, // 0x00001160
	 { 338, 1265, -1726, 0, 1245, 1024, 25, 31, 29, 255 }, // 0x00001170
	 { 285, 1253, -1826, 0, 1789, 0, 25, 31, 29, 255 }, // 0x00001180
	 { 465, 1257, -1826, 0, 1245, 0, 46, 57, 53, 255 }, // 0x00001190
};

Vtx_t _spot07_room_0_vertices_000011A0[4] = 
{
	 { 271, 1019, -1744, 0, 1754, 1024, 33, 40, 38, 255 }, // 0x000011A0
	 { 271, 1267, -1744, 0, 1754, 0, 25, 31, 29, 255 }, // 0x000011B0
	 { 338, 1026, -1726, 0, 1245, 1024, 60, 73, 69, 255 }, // 0x000011C0
	 { 338, 1265, -1726, 0, 1245, 0, 25, 31, 29, 255 }, // 0x000011D0
};

Vtx_t _spot07_room_0_vertices_000011E0[8] = 
{
	 { 107, 480, -817, 0, 0, 0, 0, 0, 0, 0 }, // 0x000011E0
	 { 965, 480, -666, 0, 0, 0, 0, 0, 0, 0 }, // 0x000011F0
	 { 329, 946, -2077, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001200
	 { 1187, 946, -1925, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001210
	 { 82, 873, -677, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001220
	 { 940, 873, -526, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001230
	 { 304, 1338, -1936, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001240
	 { 1162, 1338, -1785, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001250
};

Gfx _spot07_room_0_dlist_00001260[] =
{
	gsDPPipeSync(), // 0x00001260
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001268
	gsSPVertex(_spot07_room_0_vertices_000011E0, 8, 0), // 0x00001270
	gsSPCullDisplayList(0, 7), // 0x00001278
	gsDPPipeSync(), // 0x00001280
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001288
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001290
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001298
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00006F98), // 0x000012A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 5, 0), // 0x000012A8
	gsDPLoadSync(), // 0x000012B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000012B8
	gsDPPipeSync(), // 0x000012C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 1, 5, 0), // 0x000012C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000012D0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000012D8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000012E0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000012E8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000012F0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000012F8
	gsSPVertex(_spot07_room_0_vertices_00000D70, 4, 0), // 0x00001300
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001308
	gsDPPipeSync(), // 0x00001310
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001318
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005398), // 0x00001320
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00001328
	gsDPLoadSync(), // 0x00001330
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001338
	gsDPPipeSync(), // 0x00001340
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00001348
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001350
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00003F70), // 0x00001358
	gsDPTileSync(), // 0x00001360
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001368
	gsDPLoadSync(), // 0x00001370
	gsDPLoadTLUTCmd(7, 15), // 0x00001378
	gsDPPipeSync(), // 0x00001380
	gsSPVertex(_spot07_room_0_vertices_00000DB0, 4, 0), // 0x00001388
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001390
	gsDPPipeSync(), // 0x00001398
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005798), // 0x000013A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x000013A8
	gsDPLoadSync(), // 0x000013B0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000013B8
	gsDPPipeSync(), // 0x000013C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x000013C8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000013D0
	gsSPVertex(_spot07_room_0_vertices_00000DF0, 8, 0), // 0x000013D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000013E0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000013E8
	gsDPPipeSync(), // 0x000013F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00007798), // 0x000013F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001400
	gsDPLoadSync(), // 0x00001408
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001410
	gsDPPipeSync(), // 0x00001418
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001420
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001428
	gsSPVertex(_spot07_room_0_vertices_00000E70, 20, 0), // 0x00001430
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001438
	gsSP2Triangles(1, 0, 4, 0, 4, 0, 5, 0), // 0x00001440
	gsSP2Triangles(4, 5, 6, 0, 7, 1, 4, 0), // 0x00001448
	gsSP2Triangles(1, 7, 8, 0, 1, 8, 9, 0), // 0x00001450
	gsSP2Triangles(10, 2, 11, 0, 10, 3, 2, 0), // 0x00001458
	gsSP2Triangles(3, 10, 12, 0, 3, 12, 13, 0), // 0x00001460
	gsSP2Triangles(11, 2, 14, 0, 11, 14, 15, 0), // 0x00001468
	gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0), // 0x00001470
	gsDPPipeSync(), // 0x00001478
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001480
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00006F98), // 0x00001488
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 5, 0), // 0x00001490
	gsDPLoadSync(), // 0x00001498
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000014A0
	gsDPPipeSync(), // 0x000014A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 1, 5, 0), // 0x000014B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000014B8
	gsSPVertex(_spot07_room_0_vertices_00000FB0, 4, 0), // 0x000014C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000014C8
	gsDPPipeSync(), // 0x000014D0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000014D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005398), // 0x000014E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x000014E8
	gsDPLoadSync(), // 0x000014F0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000014F8
	gsDPPipeSync(), // 0x00001500
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00001508
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001510
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00003F70), // 0x00001518
	gsDPTileSync(), // 0x00001520
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001528
	gsDPLoadSync(), // 0x00001530
	gsDPLoadTLUTCmd(7, 15), // 0x00001538
	gsDPPipeSync(), // 0x00001540
	gsSPVertex(_spot07_room_0_vertices_00000FF0, 7, 0), // 0x00001548
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00001550
	gsSP2Triangles(0, 5, 6, 0, 1, 0, 6, 0), // 0x00001558
	gsDPPipeSync(), // 0x00001560
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005798), // 0x00001568
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00001570
	gsDPLoadSync(), // 0x00001578
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001580
	gsDPPipeSync(), // 0x00001588
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00001590
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001598
	gsSPVertex(_spot07_room_0_vertices_00001060, 15, 0), // 0x000015A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000015A8
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0), // 0x000015B0
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x000015B8
	gsSP1Triangle(12, 13, 14, 0), // 0x000015C0
	gsDPPipeSync(), // 0x000015C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00004F98), // 0x000015D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 0, 6, 0), // 0x000015D8
	gsDPLoadSync(), // 0x000015E0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000015E8
	gsDPPipeSync(), // 0x000015F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 1, 5, 0, 0, 6, 0), // 0x000015F8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001600
	gsSPVertex(_spot07_room_0_vertices_00001150, 5, 0), // 0x00001608
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00001610
	gsDPPipeSync(), // 0x00001618
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005798), // 0x00001620
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00001628
	gsDPLoadSync(), // 0x00001630
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001638
	gsDPPipeSync(), // 0x00001640
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00001648
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001650
	gsSPVertex(_spot07_room_0_vertices_000011A0, 4, 0), // 0x00001658
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001660
	gsSPEndDisplayList(), // 0x00001668
};

Vtx_t _spot07_room_0_vertices_00001670[24] = 
{
	 { 425, 887, -1366, 0, 4876, 1024, 208, 217, 214, 255 }, // 0x00001670
	 { 405, 887, -1226, 0, 4889, 0, 123, 147, 139, 255 }, // 0x00001680
	 { 520, 887, -1226, 0, 3977, 0, 60, 73, 69, 255 }, // 0x00001690
	 { 565, 892, -1373, 0, 3849, 1024, 208, 217, 214, 255 }, // 0x000016A0
	 { 685, 892, -1373, 0, 2712, 1024, 208, 217, 214, 255 }, // 0x000016B0
	 { 805, 887, -1366, 0, 1832, 1024, 208, 217, 214, 255 }, // 0x000016C0
	 { 730, 887, -1226, 0, 2433, 0, 60, 73, 69, 255 }, // 0x000016D0
	 { 825, 887, -1226, 0, 1742, 0, 39, 48, 45, 255 }, // 0x000016E0
	 { 985, 906, -1226, 0, 895, 0, 39, 48, 45, 255 }, // 0x000016F0
	 { 985, 906, -1346, 0, -181, 1024, 208, 217, 214, 255 }, // 0x00001700
	 { 1085, 906, -1226, 0, 0, 0, 39, 48, 45, 255 }, // 0x00001710
	 { 1085, 906, -1346, 0, -1267, 0, 54, 66, 62, 255 }, // 0x00001720
	 { 988, 976, -1611, 0, -3261, 1024, 25, 31, 29, 255 }, // 0x00001730
	 { 1135, 976, -1634, 0, -3042, 0, 54, 66, 62, 255 }, // 0x00001740
	 { 935, 1026, -1723, 0, -4446, 1024, 25, 31, 29, 255 }, // 0x00001750
	 { 1047, 1026, -1837, 0, -4464, 0, 54, 66, 62, 255 }, // 0x00001760
	 { 805, 1026, -1826, 0, -5733, 0, 255, 255, 255, 255 }, // 0x00001770
	 { 877, 1026, -1725, 0, -5107, 1024, 25, 31, 29, 255 }, // 0x00001780
	 { 805, 1026, -1726, 0, -5662, 1024, 255, 255, 255, 255 }, // 0x00001790
	 { 445, 1026, -1826, 0, 2657, 0, 255, 255, 255, 255 }, // 0x000017A0
	 { 338, 1026, -1726, 0, 1873, 1024, 60, 73, 69, 255 }, // 0x000017B0
	 { 445, 1026, -1726, 0, 2657, 1024, 255, 255, 255, 255 }, // 0x000017C0
	 { 285, 1026, -1826, 0, 1383, 0, 39, 48, 45, 255 }, // 0x000017D0
	 { 271, 1019, -1744, 0, 1383, 1024, 33, 40, 38, 255 }, // 0x000017E0
};

Vtx_t _spot07_room_0_vertices_000017F0[8] = 
{
	 { 271, 863, -1230, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017F0
	 { 1135, 863, -1230, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001800
	 { 271, 972, -1846, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001810
	 { 1135, 972, -1846, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001820
	 { 271, 937, -1217, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001830
	 { 1135, 937, -1217, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001840
	 { 271, 1046, -1833, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001850
	 { 1135, 1046, -1833, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001860
};

Gfx _spot07_room_0_dlist_00001870[] =
{
	gsDPPipeSync(), // 0x00001870
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001878
	gsSPVertex(_spot07_room_0_vertices_000017F0, 8, 0), // 0x00001880
	gsSPCullDisplayList(0, 7), // 0x00001888
	gsDPPipeSync(), // 0x00001890
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001898
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000018A0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000018A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009418), // 0x000018B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 15, 0, 6, 15), // 0x000018B8
	gsDPLoadSync(), // 0x000018C0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000018C8
	gsDPPipeSync(), // 0x000018D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 5, 15, 0, 6, 15), // 0x000018D8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000018E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00006798), // 0x000018E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 128, 7, 0, 2, 5, 0, 0, 6, 0), // 0x000018F0
	gsDPLoadSync(), // 0x000018F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001900
	gsDPPipeSync(), // 0x00001908
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 128, 1, 0, 2, 5, 0, 0, 6, 0), // 0x00001910
	gsDPSetTileSize(1, 0, 0, 252, 124), // 0x00001918
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00003F70), // 0x00001920
	gsDPTileSync(), // 0x00001928
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001930
	gsDPLoadSync(), // 0x00001938
	gsDPLoadTLUTCmd(7, 15), // 0x00001940
	gsDPPipeSync(), // 0x00001948
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001950
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001958
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001960
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001968
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001970
	gsDPSetEnvColor(0, 0, 0, 156), // 0x00001978
	gsSPVertex(_spot07_room_0_vertices_00001670, 24, 0), // 0x00001980
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00001988
	gsSP2Triangles(4, 3, 2, 0, 5, 4, 6, 0), // 0x00001990
	gsSP2Triangles(4, 2, 6, 0, 5, 7, 8, 0), // 0x00001998
	gsSP2Triangles(7, 5, 6, 0, 5, 8, 9, 0), // 0x000019A0
	gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0), // 0x000019A8
	gsSP2Triangles(12, 9, 11, 0, 12, 11, 13, 0), // 0x000019B0
	gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0), // 0x000019B8
	gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0), // 0x000019C0
	gsSP2Triangles(14, 15, 17, 0, 19, 20, 21, 0), // 0x000019C8
	gsSP2Triangles(19, 22, 20, 0, 23, 20, 22, 0), // 0x000019D0
	gsDPPipeSync(), // 0x000019D8
	gsDPSetEnvColor(0, 0, 0, 128), // 0x000019E0
	gsSPEndDisplayList(), // 0x000019E8
};

Vtx_t _spot07_room_0_vertices_000019F0[93] = 
{
	 { 805, 996, -2332, 0, 935, 1024, 12, 14, 13, 255 }, // 0x000019F0
	 { 805, 996, -1826, 0, 4762, 1024, 174, 189, 183, 255 }, // 0x00001A00
	 { 805, 1026, -1826, 0, 4762, 913, 255, 255, 255, 255 }, // 0x00001A10
	 { 445, 996, -1826, 0, -8662, 1024, 174, 189, 183, 255 }, // 0x00001A20
	 { 441, 996, -2332, 0, -4835, 1024, 12, 14, 13, 255 }, // 0x00001A30
	 { 445, 1026, -1826, 0, -8662, 907, 255, 255, 255, 255 }, // 0x00001A40
	 { 359, 857, -1644, 0, 628, 1024, 216, 223, 220, 255 }, // 0x00001A50
	 { 359, 1255, -1644, 0, 628, 0, 33, 40, 38, 255 }, // 0x00001A60
	 { 285, 1249, -1600, 0, 0, 0, 33, 40, 38, 255 }, // 0x00001A70
	 { 338, 857, -1726, 0, 1245, 1024, 33, 40, 38, 255 }, // 0x00001A80
	 { 338, 1026, -1726, 0, 1245, 512, 60, 73, 69, 255 }, // 0x00001A90
	 { 359, 857, -1644, 0, 628, 1024, 216, 223, 220, 255 }, // 0x00001AA0
	 { 359, 1255, -1644, 0, 628, 0, 33, 40, 38, 255 }, // 0x00001AB0
	 { 338, 1265, -1726, 0, 1245, 0, 25, 31, 29, 255 }, // 0x00001AC0
	 { 359, 1255, -1644, 0, 628, 0, 33, 40, 38, 255 }, // 0x00001AD0
	 { 359, 857, -1644, 0, 628, 1024, 216, 223, 220, 255 }, // 0x00001AE0
	 { 285, 857, -1600, 0, 0, 1024, 216, 223, 220, 255 }, // 0x00001AF0
	 { 205, 1001, -1626, 0, -612, 601, 157, 175, 169, 255 }, // 0x00001B00
	 { 205, 857, -1626, 0, -612, 1024, 191, 202, 198, 255 }, // 0x00001B10
	 { 205, 1253, -1626, 0, -612, 0, 33, 40, 38, 255 }, // 0x00001B20
	 { 205, 1001, -1626, 0, -612, 601, 157, 175, 169, 255 }, // 0x00001B30
	 { 285, 1249, -1600, 0, 0, 0, 33, 40, 38, 255 }, // 0x00001B40
	 { 1085, 1137, -1226, 0, 0, 0, 33, 40, 38, 255 }, // 0x00001B50
	 { 1085, 906, -1226, 0, 0, 1024, 39, 48, 45, 255 }, // 0x00001B60
	 { 985, 906, -1226, 0, 895, 1024, 39, 48, 45, 255 }, // 0x00001B70
	 { 825, 887, -1226, 0, 1742, 1024, 39, 48, 45, 255 }, // 0x00001B80
	 { 1085, 906, -1346, 0, -1267, 1024, 54, 66, 62, 255 }, // 0x00001B90
	 { 1135, 1253, -1634, 0, -3093, 0, 25, 31, 29, 255 }, // 0x00001BA0
	 { 1135, 976, -1634, 0, -3042, 1024, 54, 66, 62, 255 }, // 0x00001BB0
	 { 1047, 1253, -1837, 0, -4378, 0, 25, 31, 29, 255 }, // 0x00001BC0
	 { 1047, 1026, -1837, 0, -4464, 1024, 54, 66, 62, 255 }, // 0x00001BD0
	 { 988, 976, -1611, 0, 1224, 715, 25, 31, 29, 255 }, // 0x00001BE0
	 { 988, 1251, -1611, 0, 1224, 0, 25, 31, 29, 255 }, // 0x00001BF0
	 { 920, 1248, -1588, 0, 699, 0, 33, 40, 38, 255 }, // 0x00001C00
	 { 988, 976, -1611, 0, 1224, 715, 25, 31, 29, 255 }, // 0x00001C10
	 { 920, 857, -1588, 0, 699, 1024, 216, 223, 220, 255 }, // 0x00001C20
	 { 988, 857, -1611, 0, 1224, 1024, 216, 223, 220, 255 }, // 0x00001C30
	 { 988, 976, -1611, 0, 1224, 715, 25, 31, 29, 255 }, // 0x00001C40
	 { 848, 857, -1650, 0, 0, 1024, 216, 223, 220, 255 }, // 0x00001C50
	 { 848, 1256, -1650, 0, 0, 0, 33, 40, 38, 255 }, // 0x00001C60
	 { 877, 1026, -1725, 0, -586, 587, 25, 31, 29, 255 }, // 0x00001C70
	 { 877, 1026, -1725, 0, -586, 587, 25, 31, 29, 255 }, // 0x00001C80
	 { 877, 857, -1725, 0, -586, 1024, 33, 40, 38, 255 }, // 0x00001C90
	 { 877, 1265, -1725, 0, -586, 0, 25, 31, 29, 255 }, // 0x00001CA0
	 { 877, 1026, -1725, 0, -586, 587, 25, 31, 29, 255 }, // 0x00001CB0
	 { 205, 1253, -1626, 0, 9034, 0, 33, 40, 38, 255 }, // 0x00001CC0
	 { 205, 1137, -1226, 0, 6264, 0, 33, 40, 38, 255 }, // 0x00001CD0
	 { 205, 1001, -1466, 0, 7913, 541, 133, 155, 148, 255 }, // 0x00001CE0
	 { 205, 1001, -1626, 0, 9013, 541, 157, 175, 169, 255 }, // 0x00001CF0
	 { 205, 857, -1226, 0, 6264, 1024, 95, 116, 109, 255 }, // 0x00001D00
	 { 205, 857, -1466, 0, 7913, 1024, 233, 237, 236, 255 }, // 0x00001D10
	 { 405, 887, -1226, 0, 4889, 1024, 123, 147, 139, 255 }, // 0x00001D20
	 { 520, 1047, -1226, 0, 3977, 333, 157, 175, 169, 255 }, // 0x00001D30
	 { 520, 887, -1226, 0, 3977, 1024, 60, 73, 69, 255 }, // 0x00001D40
	 { 730, 1047, -1226, 0, 2433, 322, 74, 91, 85, 255 }, // 0x00001D50
	 { 1085, 1137, -1226, 0, 0, 0, 33, 40, 38, 255 }, // 0x00001D60
	 { 825, 887, -1226, 0, 1742, 1024, 39, 48, 45, 255 }, // 0x00001D70
	 { 730, 887, -1226, 0, 2433, 1024, 60, 73, 69, 255 }, // 0x00001D80
	 { 805, 996, -2332, 0, 935, 1024, 12, 14, 13, 255 }, // 0x00001D90
	 { 805, 1026, -1826, 0, 4762, 913, 255, 255, 255, 255 }, // 0x00001DA0
	 { 785, 1257, -1826, 0, 4762, 0, 46, 57, 53, 255 }, // 0x00001DB0
	 { 441, 996, -2332, 0, -4835, 1024, 12, 14, 13, 255 }, // 0x00001DC0
	 { 465, 1257, -1826, 0, -8662, 0, 46, 57, 53, 255 }, // 0x00001DD0
	 { 445, 1026, -1826, 0, -8662, 907, 255, 255, 255, 255 }, // 0x00001DE0
	 { -199, 996, -2812, 0, 2056, 1024, 133, 155, 148, 255 }, // 0x00001DF0
	 { -198, 1183, -2777, 0, 1478, 66, 133, 155, 148, 255 }, // 0x00001E00
	 { -201, 1245, -2647, 0, -473, -253, 133, 155, 148, 255 }, // 0x00001E10
	 { -196, 1183, -2522, 0, -2314, 66, 133, 155, 148, 255 }, // 0x00001E20
	 { -199, 996, -2492, 0, -2691, 1024, 133, 155, 148, 255 }, // 0x00001E30
	 { 805, 996, -2332, 0, 935, 1024, 12, 14, 13, 255 }, // 0x00001E40
	 { 784, 1257, -2332, 0, 935, 0, 25, 31, 29, 255 }, // 0x00001E50
	 { 623, 1236, -2678, 0, -1950, 0, 39, 48, 45, 255 }, // 0x00001E60
	 { 641, 996, -2692, 0, -1950, 1024, 39, 48, 45, 255 }, // 0x00001E70
	 { 383, 1236, -2474, 0, -1950, 0, 33, 40, 38, 255 }, // 0x00001E80
	 { 464, 1257, -2332, 0, -4835, 0, 25, 31, 29, 255 }, // 0x00001E90
	 { 361, 996, -2452, 0, -1950, 1024, 39, 48, 45, 255 }, // 0x00001EA0
	 { 281, 1205, -2776, 0, -4546, 0, 25, 31, 29, 255 }, // 0x00001EB0
	 { 281, 996, -2812, 0, -4546, 1024, 108, 132, 124, 255 }, // 0x00001EC0
	 { 241, 996, -2492, 0, 646, 1024, 54, 66, 62, 255 }, // 0x00001ED0
	 { 242, 1205, -2513, 0, 646, 0, 25, 31, 29, 255 }, // 0x00001EE0
	 { -198, 1183, -2777, 0, -7684, 0, 133, 155, 148, 255 }, // 0x00001EF0
	 { -199, 996, -2812, 0, -7684, 1024, 133, 155, 148, 255 }, // 0x00001F00
	 { -196, 1183, -2522, 0, 3784, 0, 133, 155, 148, 255 }, // 0x00001F10
	 { -199, 996, -2492, 0, 3784, 1024, 133, 155, 148, 255 }, // 0x00001F20
	 { 785, 1257, -1826, 0, 4762, 0, 46, 57, 53, 255 }, // 0x00001F30
	 { -42, 957, -1485, 0, -1468, 0, 60, 73, 69, 255 }, // 0x00001F40
	 { 205, 1001, -1466, 0, -3217, 0, 191, 202, 198, 255 }, // 0x00001F50
	 { 205, 857, -1466, 0, -3217, 1024, 233, 237, 236, 255 }, // 0x00001F60
	 { -35, 857, -1466, 0, -1418, 1024, 60, 73, 69, 255 }, // 0x00001F70
	 { 205, 857, -1626, 0, 5241, 1024, 191, 202, 198, 255 }, // 0x00001F80
	 { 205, 1001, -1626, 0, 5241, 0, 157, 175, 169, 255 }, // 0x00001F90
	 { -35, 957, -1626, 0, 4008, 0, 80, 98, 92, 255 }, // 0x00001FA0
	 { -35, 857, -1626, 0, 4026, 1024, 80, 98, 92, 255 }, // 0x00001FB0
};

Vtx_t _spot07_room_0_vertices_00001FC0[12] = 
{
	 { -35, 857, -1626, 0, 4026, 1024, 80, 98, 92, 255 }, // 0x00001FC0
	 { -35, 957, -1626, 0, 4008, 0, 80, 98, 92, 255 }, // 0x00001FD0
	 { -155, 957, -1586, 0, 3361, 0, 60, 73, 69, 255 }, // 0x00001FE0
	 { -155, 857, -1586, 0, 3379, 1024, 60, 73, 69, 255 }, // 0x00001FF0
	 { -115, 857, -1386, 0, -371, 1024, 18, 22, 21, 255 }, // 0x00002000
	 { -134, 957, -1392, 0, -364, 0, 18, 22, 21, 255 }, // 0x00002010
	 { -42, 957, -1485, 0, -1468, 0, 60, 73, 69, 255 }, // 0x00002020
	 { -35, 857, -1466, 0, -1418, 1024, 60, 73, 69, 255 }, // 0x00002030
	 { -222, 957, -1498, 0, 2785, 0, 18, 22, 21, 255 }, // 0x00002040
	 { -235, 857, -1506, 0, 2799, 1024, 18, 22, 21, 255 }, // 0x00002050
	 { -264, 957, -1384, 0, 2147, 0, 18, 22, 21, 255 }, // 0x00002060
	 { -275, 857, -1386, 0, 2152, 1024, 18, 22, 21, 255 }, // 0x00002070
};

Vtx_t _spot07_room_0_vertices_00002080[8] = 
{
	 { -275, 857, -2812, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002080
	 { 1135, 857, -2812, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002090
	 { -275, 1265, -2812, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020A0
	 { 1135, 1265, -2812, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020B0
	 { -275, 857, -1226, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020C0
	 { 1135, 857, -1226, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020D0
	 { -275, 1265, -1226, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020E0
	 { 1135, 1265, -1226, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020F0
};

Gfx _spot07_room_0_dlist_00002100[] =
{
	gsDPPipeSync(), // 0x00002100
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002108
	gsSPVertex(_spot07_room_0_vertices_00002080, 8, 0), // 0x00002110
	gsSPCullDisplayList(0, 7), // 0x00002118
	gsDPPipeSync(), // 0x00002120
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002128
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002130
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002138
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005798), // 0x00002140
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00002148
	gsDPLoadSync(), // 0x00002150
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002158
	gsDPPipeSync(), // 0x00002160
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00002168
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002170
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009018), // 0x00002178
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 128, 7, 0, 0, 5, 15, 0, 6, 15), // 0x00002180
	gsDPLoadSync(), // 0x00002188
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002190
	gsDPPipeSync(), // 0x00002198
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 128, 1, 0, 0, 5, 15, 0, 6, 15), // 0x000021A0
	gsDPSetTileSize(1, 0, 0, 252, 124), // 0x000021A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00003F70), // 0x000021B0
	gsDPTileSync(), // 0x000021B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000021C0
	gsDPLoadSync(), // 0x000021C8
	gsDPLoadTLUTCmd(7, 15), // 0x000021D0
	gsDPPipeSync(), // 0x000021D8
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000021E0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000021E8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000021F0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000021F8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002200
	gsDPSetEnvColor(0, 0, 0, 100), // 0x00002208
	gsSPDisplayList(0x0C000000), // 0x00002210
	gsSPVertex(_spot07_room_0_vertices_000019F0, 32, 0), // 0x00002218
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00002220
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00002228
	gsSP2Triangles(10, 12, 11, 0, 10, 13, 14, 0), // 0x00002230
	gsSP2Triangles(15, 8, 16, 0, 16, 8, 17, 0), // 0x00002238
	gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0), // 0x00002240
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x00002248
	gsSP2Triangles(23, 22, 26, 0, 22, 27, 26, 0), // 0x00002250
	gsSP2Triangles(27, 28, 26, 0, 28, 27, 29, 0), // 0x00002258
	gsSP1Triangle(28, 29, 30, 0), // 0x00002260
	gsSPVertex(_spot07_room_0_vertices_00001BE0, 32, 0), // 0x00002268
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0), // 0x00002270
	gsSP2Triangles(5, 6, 4, 0, 4, 2, 7, 0), // 0x00002278
	gsSP2Triangles(2, 8, 7, 0, 7, 8, 9, 0), // 0x00002280
	gsSP2Triangles(7, 10, 11, 0, 8, 12, 13, 0), // 0x00002288
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x00002290
	gsSP2Triangles(15, 18, 16, 0, 16, 18, 19, 0), // 0x00002298
	gsSP2Triangles(18, 15, 20, 0, 15, 21, 20, 0), // 0x000022A0
	gsSP2Triangles(21, 22, 20, 0, 15, 23, 21, 0), // 0x000022A8
	gsSP2Triangles(15, 24, 23, 0, 24, 25, 23, 0), // 0x000022B0
	gsSP2Triangles(25, 26, 23, 0, 27, 28, 29, 0), // 0x000022B8
	gsSPVertex(_spot07_room_0_vertices_00001DC0, 32, 0), // 0x000022C0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000022C8
	gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0), // 0x000022D0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000022D8
	gsSP2Triangles(12, 13, 0, 0, 14, 12, 0, 0), // 0x000022E0
	gsSP2Triangles(11, 10, 15, 0, 11, 15, 16, 0), // 0x000022E8
	gsSP2Triangles(17, 18, 12, 0, 17, 12, 14, 0), // 0x000022F0
	gsSP2Triangles(16, 15, 19, 0, 16, 19, 20, 0), // 0x000022F8
	gsSP2Triangles(21, 18, 17, 0, 22, 21, 17, 0), // 0x00002300
	gsSP2Triangles(9, 8, 23, 0, 0, 13, 1, 0), // 0x00002308
	gsSP2Triangles(24, 25, 26, 0, 27, 24, 26, 0), // 0x00002310
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002318
	gsSPVertex(_spot07_room_0_vertices_00001FC0, 12, 0), // 0x00002320
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002328
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002330
	gsSP2Triangles(3, 2, 8, 0, 3, 8, 9, 0), // 0x00002338
	gsSP2Triangles(8, 10, 11, 0, 9, 8, 11, 0), // 0x00002340
	gsDPPipeSync(), // 0x00002348
	gsDPSetEnvColor(0, 0, 0, 128), // 0x00002350
	gsSPEndDisplayList(), // 0x00002358
};

Vtx_t _spot07_room_0_vertices_00002360[32] = 
{
	 { 1135, 1253, -1634, 0, -3093, 1024, 25, 31, 29, 255 }, // 0x00002360
	 { 950, 1226, -1418, 0, -1094, 0, 33, 40, 38, 255 }, // 0x00002370
	 { 988, 1251, -1611, 0, -3261, 0, 25, 31, 29, 255 }, // 0x00002380
	 { 1085, 1137, -1226, 0, 0, 1024, 33, 40, 38, 255 }, // 0x00002390
	 { 205, 1137, -1226, 0, 6264, 1024, 33, 40, 38, 255 }, // 0x000023A0
	 { 950, 1226, -1418, 0, 540, 0, 33, 40, 38, 255 }, // 0x000023B0
	 { 205, 1137, -1226, 0, 6264, 1024, 33, 40, 38, 255 }, // 0x000023C0
	 { 299, 1226, -1414, 0, 5729, 0, 33, 40, 38, 255 }, // 0x000023D0
	 { 205, 1253, -1626, 0, 9034, 1024, 33, 40, 38, 255 }, // 0x000023E0
	 { 299, 1226, -1414, 0, 7286, 0, 33, 40, 38, 255 }, // 0x000023F0
	 { 205, 1253, -1626, 0, -612, 1024, 33, 40, 38, 255 }, // 0x00002400
	 { 285, 1249, -1600, 0, 0, 1024, 33, 40, 38, 255 }, // 0x00002410
	 { 299, 1226, -1414, 0, -612, 0, 33, 40, 38, 255 }, // 0x00002420
	 { 359, 1255, -1644, 0, 628, 1024, 33, 40, 38, 255 }, // 0x00002430
	 { 490, 1249, -1596, 0, 502, 0, 12, 14, 13, 255 }, // 0x00002440
	 { 359, 1255, -1644, 0, 628, 1024, 33, 40, 38, 255 }, // 0x00002450
	 { 493, 1266, -1735, 0, 883, 0, 25, 31, 29, 255 }, // 0x00002460
	 { 465, 1257, -1826, 0, 1245, 0, 46, 57, 53, 255 }, // 0x00002470
	 { 493, 1266, -1735, 0, 883, 0, 25, 31, 29, 255 }, // 0x00002480
	 { 338, 1265, -1726, 0, 1245, 1024, 25, 31, 29, 255 }, // 0x00002490
	 { 920, 1248, -1588, 0, 699, 1024, 33, 40, 38, 255 }, // 0x000024A0
	 { 988, 1251, -1611, 0, 1224, 1024, 25, 31, 29, 255 }, // 0x000024B0
	 { 950, 1226, -1418, 0, 940, 0, 33, 40, 38, 255 }, // 0x000024C0
	 { 761, 1248, -1591, 0, 383, 0, 12, 14, 13, 255 }, // 0x000024D0
	 { 848, 1256, -1650, 0, 0, 1024, 33, 40, 38, 255 }, // 0x000024E0
	 { 737, 1266, -1738, 0, 0, 0, 25, 31, 29, 255 }, // 0x000024F0
	 { 785, 1257, -1826, 0, -586, 0, 46, 57, 53, 255 }, // 0x00002500
	 { 877, 1265, -1725, 0, -586, 1024, 25, 31, 29, 255 }, // 0x00002510
	 { 280, 1260, -2651, 0, 646, 0, 25, 31, 29, 255 }, // 0x00002520
	 { 242, 1205, -2513, 0, 646, 1024, 25, 31, 29, 255 }, // 0x00002530
	 { -196, 1183, -2522, 0, 3784, 1024, 133, 155, 148, 255 }, // 0x00002540
	 { -201, 1245, -2647, 0, 3784, 0, 133, 155, 148, 255 }, // 0x00002550
};

Vtx_t _spot07_room_0_vertices_00002560[17] = 
{
	 { 280, 1260, -2651, 0, -4546, 0, 25, 31, 29, 255 }, // 0x00002560
	 { -201, 1245, -2647, 0, -7684, 0, 133, 155, 148, 255 }, // 0x00002570
	 { -198, 1183, -2777, 0, -7684, 1024, 133, 155, 148, 255 }, // 0x00002580
	 { 281, 1205, -2776, 0, -4546, 1024, 25, 31, 29, 255 }, // 0x00002590
	 { 520, 1277, -2572, 0, -1950, 0, 33, 40, 38, 255 }, // 0x000025A0
	 { 383, 1236, -2474, 0, -1950, 1024, 33, 40, 38, 255 }, // 0x000025B0
	 { 242, 1205, -2513, 0, 646, 1024, 25, 31, 29, 255 }, // 0x000025C0
	 { 280, 1260, -2651, 0, 646, 0, 25, 31, 29, 255 }, // 0x000025D0
	 { 623, 1236, -2678, 0, -1950, 1024, 39, 48, 45, 255 }, // 0x000025E0
	 { 623, 1277, -2332, 0, -4835, 0, 25, 31, 29, 255 }, // 0x000025F0
	 { 464, 1257, -2332, 0, -4835, 1024, 25, 31, 29, 255 }, // 0x00002600
	 { 623, 1277, -2332, 0, 935, 0, 25, 31, 29, 255 }, // 0x00002610
	 { 784, 1257, -2332, 0, 935, 1024, 25, 31, 29, 255 }, // 0x00002620
	 { 627, 1277, -1826, 0, -8662, 0, 25, 31, 29, 255 }, // 0x00002630
	 { 465, 1257, -1826, 0, -8662, 1024, 46, 57, 53, 255 }, // 0x00002640
	 { 785, 1257, -1826, 0, 4762, 1024, 46, 57, 53, 255 }, // 0x00002650
	 { 627, 1277, -1826, 0, 4762, 0, 25, 31, 29, 255 }, // 0x00002660
};

Vtx_t _spot07_room_0_vertices_00002670[8] = 
{
	 { 612, 1137, -3072, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002670
	 { 1260, 1137, -1290, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002680
	 { 612, 1277, -3072, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002690
	 { 1260, 1277, -1290, 0, 0, 0, 0, 0, 0, 0 }, // 0x000026A0
	 { -341, 1137, -2725, 0, 0, 0, 0, 0, 0, 0 }, // 0x000026B0
	 { 308, 1137, -943, 0, 0, 0, 0, 0, 0, 0 }, // 0x000026C0
	 { -341, 1277, -2725, 0, 0, 0, 0, 0, 0, 0 }, // 0x000026D0
	 { 308, 1277, -943, 0, 0, 0, 0, 0, 0, 0 }, // 0x000026E0
};

Gfx _spot07_room_0_dlist_000026F0[] =
{
	gsDPPipeSync(), // 0x000026F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000026F8
	gsSPVertex(_spot07_room_0_vertices_00002670, 8, 0), // 0x00002700
	gsSPCullDisplayList(0, 7), // 0x00002708
	gsDPPipeSync(), // 0x00002710
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002718
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002720
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002728
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00004F98), // 0x00002730
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 0, 6, 0), // 0x00002738
	gsDPLoadSync(), // 0x00002740
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002748
	gsDPPipeSync(), // 0x00002750
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 1, 5, 0, 0, 6, 0), // 0x00002758
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002760
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009018), // 0x00002768
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 128, 7, 0, 0, 5, 15, 0, 6, 15), // 0x00002770
	gsDPLoadSync(), // 0x00002778
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002780
	gsDPPipeSync(), // 0x00002788
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 128, 1, 0, 0, 5, 15, 0, 6, 15), // 0x00002790
	gsDPSetTileSize(1, 0, 0, 252, 124), // 0x00002798
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00003F70), // 0x000027A0
	gsDPTileSync(), // 0x000027A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000027B0
	gsDPLoadSync(), // 0x000027B8
	gsDPLoadTLUTCmd(7, 15), // 0x000027C0
	gsDPPipeSync(), // 0x000027C8
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000027D0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000027D8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000027E0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000027E8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000027F0
	gsDPSetEnvColor(0, 0, 0, 100), // 0x000027F8
	gsSPDisplayList(0x0C000000), // 0x00002800
	gsSPVertex(_spot07_room_0_vertices_00002360, 32, 0), // 0x00002808
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002810
	gsSP2Triangles(4, 5, 3, 0, 6, 7, 5, 0), // 0x00002818
	gsSP2Triangles(4, 8, 9, 0, 10, 11, 12, 0), // 0x00002820
	gsSP2Triangles(13, 14, 11, 0, 12, 11, 14, 0), // 0x00002828
	gsSP2Triangles(14, 15, 16, 0, 17, 18, 15, 0), // 0x00002830
	gsSP2Triangles(15, 19, 17, 0, 20, 21, 22, 0), // 0x00002838
	gsSP2Triangles(23, 20, 22, 0, 24, 20, 23, 0), // 0x00002840
	gsSP2Triangles(25, 24, 23, 0, 24, 25, 26, 0), // 0x00002848
	gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0), // 0x00002850
	gsSP1Triangle(28, 30, 31, 0), // 0x00002858
	gsSPVertex(_spot07_room_0_vertices_00002560, 17, 0), // 0x00002860
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002868
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002870
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 8, 0), // 0x00002878
	gsSP2Triangles(9, 10, 5, 0, 9, 5, 4, 0), // 0x00002880
	gsSP2Triangles(11, 4, 8, 0, 11, 8, 12, 0), // 0x00002888
	gsSP2Triangles(10, 9, 13, 0, 14, 10, 13, 0), // 0x00002890
	gsSP2Triangles(11, 12, 15, 0, 16, 11, 15, 0), // 0x00002898
	gsDPPipeSync(), // 0x000028A0
	gsDPSetEnvColor(0, 0, 0, 128), // 0x000028A8
	gsSPEndDisplayList(), // 0x000028B0
};

Vtx_t _spot07_room_0_vertices_000028B8[15] = 
{
	 { 405, 857, -1226, 0, 6304, 317, 123, 147, 139, 255 }, // 0x000028B8
	 { 405, 887, -1226, 0, 6304, 0, 123, 147, 139, 255 }, // 0x000028C8
	 { 425, 887, -1366, 0, 4876, 0, 255, 255, 255, 255 }, // 0x000028D8
	 { 405, 857, -1226, 0, 6311, 319, 123, 147, 139, 255 }, // 0x000028E8
	 { 425, 857, -1366, 0, 4882, 319, 216, 223, 220, 255 }, // 0x000028F8
	 { 565, 892, -1373, 0, 3849, 0, 255, 255, 255, 255 }, // 0x00002908
	 { 565, 857, -1373, 0, 3858, 353, 216, 223, 220, 255 }, // 0x00002918
	 { 685, 857, -1373, 0, 2702, 353, 216, 223, 220, 255 }, // 0x00002928
	 { 685, 892, -1373, 0, 2712, 0, 255, 255, 255, 255 }, // 0x00002938
	 { 805, 887, -1366, 0, 1832, 0, 255, 255, 255, 255 }, // 0x00002948
	 { 805, 857, -1366, 0, 1839, 318, 216, 223, 220, 255 }, // 0x00002958
	 { 985, 857, -1346, 0, -181, 450, 216, 223, 220, 255 }, // 0x00002968
	 { 985, 906, -1346, 0, -181, 0, 255, 255, 255, 255 }, // 0x00002978
	 { 988, 857, -1611, 0, -3261, 937, 216, 223, 220, 255 }, // 0x00002988
	 { 988, 976, -1611, 0, -3261, 0, 25, 31, 29, 255 }, // 0x00002998
};

Vtx_t _spot07_room_0_vertices_000029A8[8] = 
{
	 { 988, 857, -1611, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029A8
	 { 1073, 857, -1378, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029B8
	 { 988, 976, -1611, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029C8
	 { 1073, 976, -1378, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029D8
	 { 349, 857, -1379, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029E8
	 { 434, 857, -1145, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029F8
	 { 349, 976, -1379, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A08
	 { 434, 976, -1145, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A18
};

Gfx _spot07_room_0_dlist_00002A28[] =
{
	gsDPPipeSync(), // 0x00002A28
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002A30
	gsSPVertex(_spot07_room_0_vertices_000029A8, 8, 0), // 0x00002A38
	gsSPCullDisplayList(0, 7), // 0x00002A40
	gsDPPipeSync(), // 0x00002A48
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002A50
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002A58
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002A60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00006398), // 0x00002A68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00002A70
	gsDPLoadSync(), // 0x00002A78
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002A80
	gsDPPipeSync(), // 0x00002A88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00002A90
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002A98
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009018), // 0x00002AA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 128, 7, 0, 0, 5, 15, 0, 6, 15), // 0x00002AA8
	gsDPLoadSync(), // 0x00002AB0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002AB8
	gsDPPipeSync(), // 0x00002AC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 128, 1, 0, 0, 5, 15, 0, 6, 15), // 0x00002AC8
	gsDPSetTileSize(1, 0, 0, 252, 124), // 0x00002AD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00003F70), // 0x00002AD8
	gsDPTileSync(), // 0x00002AE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002AE8
	gsDPLoadSync(), // 0x00002AF0
	gsDPLoadTLUTCmd(7, 15), // 0x00002AF8
	gsDPPipeSync(), // 0x00002B00
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002B08
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002B10
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002B18
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002B20
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002B28
	gsDPSetEnvColor(0, 0, 0, 100), // 0x00002B30
	gsSPDisplayList(0x0C000000), // 0x00002B38
	gsSPVertex(_spot07_room_0_vertices_000028B8, 15, 0), // 0x00002B40
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0), // 0x00002B48
	gsSP2Triangles(4, 2, 5, 0, 4, 5, 6, 0), // 0x00002B50
	gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0), // 0x00002B58
	gsSP2Triangles(10, 9, 11, 0, 12, 11, 9, 0), // 0x00002B60
	gsSP2Triangles(13, 11, 12, 0, 14, 13, 12, 0), // 0x00002B68
	gsDPPipeSync(), // 0x00002B70
	gsDPSetEnvColor(0, 0, 0, 128), // 0x00002B78
	gsSPEndDisplayList(), // 0x00002B80
};

Vtx_t _spot07_room_0_vertices_00002B88[36] = 
{
	 { 785, 1257, -1826, 0, 2458, -875, 46, 57, 53, 255 }, // 0x00002B88
	 { 805, 1026, -1826, 0, 2662, 1099, 255, 255, 255, 255 }, // 0x00002B98
	 { 1047, 1026, -1837, 0, 5037, 1099, 54, 66, 62, 255 }, // 0x00002BA8
	 { 1047, 1253, -1837, 0, 5037, -833, 25, 31, 29, 255 }, // 0x00002BB8
	 { 285, 1026, -1826, 0, -2662, 1099, 39, 48, 45, 255 }, // 0x00002BC8
	 { 445, 1026, -1826, 0, -1024, 1099, 255, 255, 255, 255 }, // 0x00002BD8
	 { 465, 1257, -1826, 0, -819, -875, 46, 57, 53, 255 }, // 0x00002BE8
	 { 285, 1253, -1826, 0, -2662, -833, 25, 31, 29, 255 }, // 0x00002BF8
	 { 445, 1026, -1726, 0, 1269, 1527, 255, 255, 255, 255 }, // 0x00002C08
	 { 338, 857, -1726, 0, -246, 3642, 33, 40, 38, 255 }, // 0x00002C18
	 { 445, 857, -1726, 0, 1269, 3642, 141, 162, 155, 255 }, // 0x00002C28
	 { 877, 1026, -1725, 0, 7379, 1527, 25, 31, 29, 255 }, // 0x00002C38
	 { 805, 1026, -1726, 0, 6356, 1527, 255, 255, 255, 255 }, // 0x00002C48
	 { 805, 857, -1726, 0, 6356, 3642, 141, 162, 155, 255 }, // 0x00002C58
	 { 338, 1026, -1726, 0, -246, 1527, 60, 73, 69, 255 }, // 0x00002C68
	 { 877, 857, -1725, 0, 7379, 3642, 33, 40, 38, 255 }, // 0x00002C78
	 { 805, 857, -1746, 0, 6073, 3642, 74, 91, 85, 255 }, // 0x00002C88
	 { 805, 996, -1746, 0, 6073, 1903, 191, 202, 198, 255 }, // 0x00002C98
	 { 805, 1026, -1826, 0, 4943, 1527, 255, 255, 255, 255 }, // 0x00002CA8
	 { 805, 996, -1826, 0, 4943, 1903, 174, 189, 183, 255 }, // 0x00002CB8
	 { 445, 996, -1746, 0, 1552, 1903, 191, 202, 198, 255 }, // 0x00002CC8
	 { 445, 996, -1826, 0, 2682, 1903, 174, 189, 183, 255 }, // 0x00002CD8
	 { 445, 1026, -1826, 0, 2682, 1527, 255, 255, 255, 255 }, // 0x00002CE8
	 { 445, 857, -1746, 0, 1552, 3642, 74, 91, 85, 255 }, // 0x00002CF8
	 { 565, 892, -1373, 0, 4996, 67, 255, 255, 255, 255 }, // 0x00002D08
	 { 565, 947, -1544, 0, 2816, -640, 74, 91, 85, 255 }, // 0x00002D18
	 { 565, 857, -1544, 0, 2816, 512, 233, 237, 236, 255 }, // 0x00002D28
	 { 565, 857, -1373, 0, 4996, 512, 216, 223, 220, 255 }, // 0x00002D38
	 { 565, 947, -1449, 0, 4021, -640, 74, 91, 85, 255 }, // 0x00002D48
	 { 685, 947, -1544, 0, 1280, -640, 74, 91, 85, 255 }, // 0x00002D58
	 { 685, 857, -1544, 0, 1280, 512, 233, 237, 236, 255 }, // 0x00002D68
	 { 685, 947, -1449, 0, 75, -640, 74, 91, 85, 255 }, // 0x00002D78
	 { 685, 892, -1373, 0, -900, 67, 255, 255, 255, 255 }, // 0x00002D88
	 { 685, 947, -1544, 0, 1280, -640, 74, 91, 85, 255 }, // 0x00002D98
	 { 685, 857, -1544, 0, 1280, 512, 233, 237, 236, 255 }, // 0x00002DA8
	 { 685, 857, -1373, 0, -900, 512, 216, 223, 220, 255 }, // 0x00002DB8
};

Vtx_t _spot07_room_0_vertices_00002DC8[8] = 
{
	 { 285, 674, -1527, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002DC8
	 { 1047, 674, -1527, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002DD8
	 { 285, 1065, -1994, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002DE8
	 { 1047, 1065, -1994, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002DF8
	 { 285, 878, -1356, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002E08
	 { 1047, 878, -1356, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002E18
	 { 285, 1269, -1823, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002E28
	 { 1047, 1269, -1823, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002E38
};

Gfx _spot07_room_0_dlist_00002E48[] =
{
	gsDPPipeSync(), // 0x00002E48
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002E50
	gsSPVertex(_spot07_room_0_vertices_00002DC8, 8, 0), // 0x00002E58
	gsSPCullDisplayList(0, 7), // 0x00002E60
	gsDPPipeSync(), // 0x00002E68
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002E70
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002E78
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002E80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00007798), // 0x00002E88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002E90
	gsDPLoadSync(), // 0x00002E98
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002EA0
	gsDPPipeSync(), // 0x00002EA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002EB0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002EB8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009018), // 0x00002EC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 128, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002EC8
	gsDPLoadSync(), // 0x00002ED0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002ED8
	gsDPPipeSync(), // 0x00002EE0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 128, 1, 0, 0, 5, 0, 0, 6, 0), // 0x00002EE8
	gsDPSetTileSize(1, 0, 0, 252, 124), // 0x00002EF0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00003F70), // 0x00002EF8
	gsDPTileSync(), // 0x00002F00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002F08
	gsDPLoadSync(), // 0x00002F10
	gsDPLoadTLUTCmd(7, 15), // 0x00002F18
	gsDPPipeSync(), // 0x00002F20
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002F28
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002F30
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002F38
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002F40
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002F48
	gsDPSetEnvColor(0, 0, 0, 100), // 0x00002F50
	gsSPDisplayList(0x0C000000), // 0x00002F58
	gsSPVertex(_spot07_room_0_vertices_00002B88, 32, 0), // 0x00002F60
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00002F68
	gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0), // 0x00002F70
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0), // 0x00002F78
	gsSP2Triangles(8, 14, 9, 0, 11, 13, 15, 0), // 0x00002F80
	gsSP2Triangles(16, 12, 17, 0, 16, 13, 12, 0), // 0x00002F88
	gsSP2Triangles(18, 17, 12, 0, 18, 19, 17, 0), // 0x00002F90
	gsSP2Triangles(8, 20, 21, 0, 8, 21, 22, 0), // 0x00002F98
	gsSP2Triangles(8, 23, 20, 0, 8, 10, 23, 0), // 0x00002FA0
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002FA8
	gsSP2Triangles(25, 24, 28, 0, 26, 25, 29, 0), // 0x00002FB0
	gsSP1Triangle(26, 29, 30, 0), // 0x00002FB8
	gsSPVertex(_spot07_room_0_vertices_00002D78, 5, 0), // 0x00002FC0
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0), // 0x00002FC8
	gsSP1Triangle(4, 3, 1, 0), // 0x00002FD0
	gsDPPipeSync(), // 0x00002FD8
	gsDPSetEnvColor(0, 0, 0, 128), // 0x00002FE0
	gsSPEndDisplayList(), // 0x00002FE8
};

Vtx_t _spot07_room_0_vertices_00002FF0[32] = 
{
	 { 737, 1266, -1738, 0, 1831, 574, 25, 31, 29, 255 }, // 0x00002FF0
	 { 627, 1277, -1826, 0, 1024, 1024, 25, 31, 29, 255 }, // 0x00003000
	 { 785, 1257, -1826, 0, 2178, 1024, 46, 57, 53, 255 }, // 0x00003010
	 { 465, 1257, -1826, 0, -162, 1024, 46, 57, 53, 255 }, // 0x00003020
	 { 493, 1266, -1735, 0, 42, 559, 25, 31, 29, 255 }, // 0x00003030
	 { 490, 1249, -1596, 0, 20, -151, 12, 14, 13, 255 }, // 0x00003040
	 { 761, 1248, -1591, 0, 2004, -179, 12, 14, 13, 255 }, // 0x00003050
	 { 299, 1226, -1414, 0, 3426, 1087, 33, 40, 38, 255 }, // 0x00003060
	 { 490, 1249, -1596, 0, 2028, 151, 12, 14, 13, 255 }, // 0x00003070
	 { 950, 1226, -1418, 0, -1339, 1065, 33, 40, 38, 255 }, // 0x00003080
	 { 761, 1248, -1591, 0, 44, 179, 12, 14, 13, 255 }, // 0x00003090
	 { 805, 996, -2332, 0, 0, -410, 12, 14, 13, 255 }, // 0x000030A0
	 { 441, 996, -2332, 0, 1861, -410, 12, 14, 13, 255 }, // 0x000030B0
	 { 569, 996, -1826, 0, 1208, -3002, 233, 237, 236, 255 }, // 0x000030C0
	 { 681, 996, -1826, 0, 635, -3002, 233, 237, 236, 255 }, // 0x000030D0
	 { 445, 996, -1826, 0, 1843, -3002, 174, 189, 183, 255 }, // 0x000030E0
	 { 805, 996, -1826, 0, 0, -3002, 174, 189, 183, 255 }, // 0x000030F0
	 { 641, 996, -2692, 0, 0, 1024, 39, 48, 45, 255 }, // 0x00003100
	 { 361, 996, -2452, 0, 1843, 1024, 39, 48, 45, 255 }, // 0x00003110
	 { 281, 996, -2812, 0, 0, 2458, 108, 132, 124, 255 }, // 0x00003120
	 { 241, 996, -2492, 0, 1843, 2458, 54, 66, 62, 255 }, // 0x00003130
	 { -199, 996, -2812, 0, 0, 3891, 133, 155, 148, 255 }, // 0x00003140
	 { -199, 996, -2492, 0, 1843, 3891, 133, 155, 148, 255 }, // 0x00003150
	 { 769, 996, -1806, 0, 184, -3105, 208, 217, 214, 255 }, // 0x00003160
	 { 769, 996, -1746, 0, 184, -3412, 233, 237, 236, 255 }, // 0x00003170
	 { 805, 996, -1746, 0, 0, -3412, 191, 202, 198, 255 }, // 0x00003180
	 { 709, 996, -1806, 0, 492, -3105, 233, 237, 236, 255 }, // 0x00003190
	 { 681, 996, -1746, 0, 635, -3412, 233, 237, 236, 255 }, // 0x000031A0
	 { 709, 996, -1746, 0, 492, -3412, 233, 237, 236, 255 }, // 0x000031B0
	 { 541, 996, -1746, 0, 1352, -3412, 233, 237, 236, 255 }, // 0x000031C0
	 { 569, 996, -1746, 0, 1208, -3412, 233, 237, 236, 255 }, // 0x000031D0
	 { 541, 996, -1806, 0, 1352, -3105, 233, 237, 236, 255 }, // 0x000031E0
};

Vtx_t _spot07_room_0_vertices_000031F0[32] = 
{
	 { 445, 996, -1826, 0, 1843, -3002, 174, 189, 183, 255 }, // 0x000031F0
	 { 481, 996, -1806, 0, 1659, -3105, 208, 217, 214, 255 }, // 0x00003200
	 { 541, 996, -1806, 0, 1352, -3105, 233, 237, 236, 255 }, // 0x00003210
	 { 569, 996, -1826, 0, 1208, -3002, 233, 237, 236, 255 }, // 0x00003220
	 { 445, 996, -1746, 0, 1843, -3412, 191, 202, 198, 255 }, // 0x00003230
	 { 481, 996, -1746, 0, 1659, -3412, 233, 237, 236, 255 }, // 0x00003240
	 { -35, 857, -1466, 0, 474, -2275, 60, 73, 69, 255 }, // 0x00003250
	 { 205, 857, -1466, 0, 474, -819, 233, 237, 236, 255 }, // 0x00003260
	 { 205, 857, -1626, 0, 1294, -819, 191, 202, 198, 255 }, // 0x00003270
	 { -35, 857, -1626, 0, 1294, -2048, 80, 98, 92, 255 }, // 0x00003280
	 { -155, 857, -1586, 0, 1294, -2696, 60, 73, 69, 255 }, // 0x00003290
	 { -115, 857, -1386, 0, 474, -3612, 18, 22, 21, 255 }, // 0x000032A0
	 { -235, 857, -1506, 0, 1294, -3275, 18, 22, 21, 255 }, // 0x000032B0
	 { -275, 857, -1386, 0, 1294, -3923, 18, 22, 21, 255 }, // 0x000032C0
	 { 285, 857, -1600, 0, 1163, -411, 216, 223, 220, 255 }, // 0x000032D0
	 { 205, 857, -1226, 0, -754, -819, 95, 116, 109, 255 }, // 0x000032E0
	 { 405, 857, -1226, 0, -754, 205, 123, 147, 139, 255 }, // 0x000032F0
	 { 425, 857, -1366, 0, -38, 307, 216, 223, 220, 255 }, // 0x00003300
	 { 565, 857, -1373, 0, 0, 1024, 216, 223, 220, 255 }, // 0x00003310
	 { 565, 857, -1544, 0, 872, 1024, 233, 237, 236, 255 }, // 0x00003320
	 { 685, 857, -1544, 0, 872, 1638, 233, 237, 236, 255 }, // 0x00003330
	 { 848, 857, -1650, 0, 1418, 2472, 216, 223, 220, 255 }, // 0x00003340
	 { 359, 857, -1644, 0, 1387, -32, 216, 223, 220, 255 }, // 0x00003350
	 { 805, 857, -1726, 0, 1806, 2253, 141, 162, 155, 255 }, // 0x00003360
	 { 445, 857, -1726, 0, 1806, 410, 141, 162, 155, 255 }, // 0x00003370
	 { 338, 857, -1726, 0, 1806, -139, 33, 40, 38, 255 }, // 0x00003380
	 { 805, 857, -1746, 0, 1908, 2253, 74, 91, 85, 255 }, // 0x00003390
	 { 445, 857, -1746, 0, 1908, 410, 74, 91, 85, 255 }, // 0x000033A0
	 { 877, 857, -1725, 0, 1800, 2623, 33, 40, 38, 255 }, // 0x000033B0
	 { 920, 857, -1588, 0, 1098, 2842, 216, 223, 220, 255 }, // 0x000033C0
	 { 685, 857, -1373, 0, 0, 1638, 216, 223, 220, 255 }, // 0x000033D0
	 { 805, 857, -1366, 0, -38, 2253, 216, 223, 220, 255 }, // 0x000033E0
};

Vtx_t _spot07_room_0_vertices_000033F0[4] = 
{
	 { 985, 857, -1346, 0, -140, 3174, 216, 223, 220, 255 }, // 0x000033F0
	 { 920, 857, -1588, 0, 1098, 2842, 216, 223, 220, 255 }, // 0x00003400
	 { 805, 857, -1366, 0, -38, 2253, 216, 223, 220, 255 }, // 0x00003410
	 { 988, 857, -1611, 0, 1218, 3189, 216, 223, 220, 255 }, // 0x00003420
};

Vtx_t _spot07_room_0_vertices_00003430[8] = 
{
	 { -275, 857, -2812, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003430
	 { 988, 857, -2812, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003440
	 { -275, 1277, -2812, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003450
	 { 988, 1277, -2812, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003460
	 { -275, 857, -1226, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003470
	 { 988, 857, -1226, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003480
	 { -275, 1277, -1226, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003490
	 { 988, 1277, -1226, 0, 0, 0, 0, 0, 0, 0 }, // 0x000034A0
};

Gfx _spot07_room_0_dlist_000034B0[] =
{
	gsDPPipeSync(), // 0x000034B0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000034B8
	gsSPVertex(_spot07_room_0_vertices_00003430, 8, 0), // 0x000034C0
	gsSPCullDisplayList(0, 7), // 0x000034C8
	gsDPPipeSync(), // 0x000034D0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000034D8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000034E0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000034E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009418), // 0x000034F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000034F8
	gsDPLoadSync(), // 0x00003500
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003508
	gsDPPipeSync(), // 0x00003510
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003518
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003520
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009018), // 0x00003528
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 128, 7, 0, 0, 5, 15, 0, 6, 15), // 0x00003530
	gsDPLoadSync(), // 0x00003538
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003540
	gsDPPipeSync(), // 0x00003548
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 128, 1, 0, 0, 5, 15, 0, 6, 15), // 0x00003550
	gsDPSetTileSize(1, 0, 0, 252, 124), // 0x00003558
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00003F70), // 0x00003560
	gsDPTileSync(), // 0x00003568
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003570
	gsDPLoadSync(), // 0x00003578
	gsDPLoadTLUTCmd(7, 15), // 0x00003580
	gsDPPipeSync(), // 0x00003588
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003590
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003598
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000035A0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000035A8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000035B0
	gsDPSetEnvColor(0, 0, 0, 100), // 0x000035B8
	gsSPDisplayList(0x0C000000), // 0x000035C0
	gsSPVertex(_spot07_room_0_vertices_00002FF0, 32, 0), // 0x000035C8
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0), // 0x000035D0
	gsSP2Triangles(1, 5, 4, 0, 1, 6, 5, 0), // 0x000035D8
	gsSP2Triangles(1, 0, 6, 0, 7, 8, 9, 0), // 0x000035E0
	gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0), // 0x000035E8
	gsSP2Triangles(11, 13, 14, 0, 12, 15, 13, 0), // 0x000035F0
	gsSP2Triangles(16, 11, 14, 0, 11, 17, 18, 0), // 0x000035F8
	gsSP2Triangles(11, 18, 12, 0, 17, 19, 20, 0), // 0x00003600
	gsSP2Triangles(17, 20, 18, 0, 19, 21, 22, 0), // 0x00003608
	gsSP2Triangles(19, 22, 20, 0, 23, 24, 25, 0), // 0x00003610
	gsSP2Triangles(23, 25, 16, 0, 14, 26, 23, 0), // 0x00003618
	gsSP2Triangles(14, 23, 16, 0, 27, 28, 26, 0), // 0x00003620
	gsSP2Triangles(27, 26, 14, 0, 29, 30, 13, 0), // 0x00003628
	gsSP1Triangle(29, 13, 31, 0), // 0x00003630
	gsSPVertex(_spot07_room_0_vertices_000031F0, 32, 0), // 0x00003638
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003640
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0), // 0x00003648
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00003650
	gsSP2Triangles(6, 9, 10, 0, 11, 6, 10, 0), // 0x00003658
	gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0), // 0x00003660
	gsSP2Triangles(8, 7, 14, 0, 15, 16, 7, 0), // 0x00003668
	gsSP2Triangles(16, 17, 7, 0, 7, 17, 14, 0), // 0x00003670
	gsSP2Triangles(14, 17, 18, 0, 14, 18, 19, 0), // 0x00003678
	gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0), // 0x00003680
	gsSP2Triangles(14, 19, 22, 0, 22, 21, 23, 0), // 0x00003688
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x00003690
	gsSP2Triangles(24, 23, 26, 0, 24, 26, 27, 0), // 0x00003698
	gsSP2Triangles(21, 28, 23, 0, 20, 29, 21, 0), // 0x000036A0
	gsSP2Triangles(20, 30, 29, 0, 31, 29, 30, 0), // 0x000036A8
	gsSPVertex(_spot07_room_0_vertices_000033F0, 4, 0), // 0x000036B0
	gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0), // 0x000036B8
	gsDPPipeSync(), // 0x000036C0
	gsDPSetEnvColor(0, 0, 0, 128), // 0x000036C8
	gsSPEndDisplayList(), // 0x000036D0
};

Vtx_t _spot07_room_0_vertices_000036D8[11] = 
{
	 { -115, 857, -966, 0, 474, -6074, 60, 73, 69, 255 }, // 0x000036D8
	 { -115, 857, -1226, 0, 474, -4742, 18, 22, 21, 255 }, // 0x000036E8
	 { -275, 857, -1226, 0, 1294, -4742, 18, 22, 21, 255 }, // 0x000036F8
	 { -275, 857, -966, 0, 1294, -6074, 60, 73, 69, 255 }, // 0x00003708
	 { -115, 857, -1386, 0, 474, -3612, 18, 22, 21, 255 }, // 0x00003718
	 { -275, 857, -1386, 0, 1294, -3923, 18, 22, 21, 255 }, // 0x00003728
	 { 41, 944, -23, 0, 679, -1024, 18, 22, 21, 255 }, // 0x00003738
	 { -687, 818, -204, 0, -2527, 0, 18, 22, 21, 255 }, // 0x00003748
	 { -80, 1200, -840, 0, 3196, 1024, 18, 22, 21, 255 }, // 0x00003758
	 { -671, 952, -577, 0, -1025, 1024, 18, 22, 21, 255 }, // 0x00003768
	 { -833, 701, -338, 0, -3667, 1024, 33, 40, 38, 255 }, // 0x00003778
};

Vtx_t _spot07_room_0_vertices_00003788[4] = 
{
	 { 351, 108, 309, 0, 1024, 1024, 46, 57, 53, 255 }, // 0x00003788
	 { 351, 561, 309, 0, 1024, 0, 25, 31, 29, 255 }, // 0x00003798
	 { 218, 172, 176, 0, 0, 1024, 39, 48, 45, 255 }, // 0x000037A8
	 { 218, 695, 176, 0, 0, 0, 80, 98, 92, 255 }, // 0x000037B8
};

Vtx_t _spot07_room_0_vertices_000037C8[5] = 
{
	 { 351, 561, 309, 0, 1024, 0, 25, 31, 29, 255 }, // 0x000037C8
	 { 120, 736, 320, 0, 2048, 1024, 25, 31, 29, 255 }, // 0x000037D8
	 { 218, 695, 176, 0, 2048, 0, 80, 98, 92, 255 }, // 0x000037E8
	 { 351, 561, 309, 0, 1024, 0, 25, 31, 29, 255 }, // 0x000037F8
	 { 236, 601, 432, 0, 1024, 1024, 54, 66, 62, 255 }, // 0x00003808
};

Vtx_t _spot07_room_0_vertices_00003818[4] = 
{
	 { 120, 160, 320, 0, 2048, 1024, 108, 132, 124, 255 }, // 0x00003818
	 { 120, 736, 320, 0, 2048, 0, 25, 31, 29, 255 }, // 0x00003828
	 { 236, 200, 432, 0, 1024, 872, 95, 116, 109, 255 }, // 0x00003838
	 { 236, 601, 432, 0, 1024, 0, 54, 66, 62, 255 }, // 0x00003848
};

Vtx_t _spot07_room_0_vertices_00003858[12] = 
{
	 { -135, 957, -1226, 0, 709, 0, 18, 22, 21, 255 }, // 0x00003858
	 { -134, 957, -1392, 0, -364, 0, 18, 22, 21, 255 }, // 0x00003868
	 { -115, 857, -1386, 0, -371, 1024, 18, 22, 21, 255 }, // 0x00003878
	 { -115, 857, -1226, 0, 709, 1024, 18, 22, 21, 255 }, // 0x00003888
	 { -275, 857, -1386, 0, 2152, 1024, 18, 22, 21, 255 }, // 0x00003898
	 { -264, 957, -1384, 0, 2147, 0, 18, 22, 21, 255 }, // 0x000038A8
	 { -255, 957, -1226, 0, 1333, 0, 18, 22, 21, 255 }, // 0x000038B8
	 { -275, 857, -1226, 0, 1333, 1024, 18, 22, 21, 255 }, // 0x000038C8
	 { -135, 957, -966, 0, 2048, 0, 39, 48, 45, 255 }, // 0x000038D8
	 { -115, 857, -966, 0, 2048, 1024, 60, 73, 69, 255 }, // 0x000038E8
	 { -275, 857, -966, 0, 0, 1024, 60, 73, 69, 255 }, // 0x000038F8
	 { -255, 957, -966, 0, 0, 0, 39, 48, 45, 255 }, // 0x00003908
};

Vtx_t _spot07_room_0_vertices_00003918[14] = 
{
	 { -687, 818, -204, 0, 774, 0, 18, 22, 21, 255 }, // 0x00003918
	 { -630, 622, 340, 0, 117, 1024, 87, 107, 101, 255 }, // 0x00003928
	 { -863, 622, 12, 0, 2220, 1024, 87, 107, 101, 255 }, // 0x00003938
	 { -833, 701, -338, 0, 2361, 0, 33, 40, 38, 255 }, // 0x00003948
	 { 41, 944, -23, 0, -3908, 0, 18, 22, 21, 255 }, // 0x00003958
	 { -190, 622, 340, 0, -2379, 1024, 87, 107, 101, 255 }, // 0x00003968
	 { 120, 736, 320, 0, -3908, 1024, 25, 31, 29, 255 }, // 0x00003978
	 { 41, 944, -23, 0, 1749, 0, 18, 22, 21, 255 }, // 0x00003988
	 { 409, 872, -78, 0, 0, 1024, 25, 31, 29, 255 }, // 0x00003998
	 { 267, 773, -6, 0, 1561, 1024, 80, 98, 92, 255 }, // 0x000039A8
	 { 218, 695, 176, 0, 2944, 1024, 80, 98, 92, 255 }, // 0x000039B8
	 { 267, 773, -6, 0, 1556, 1024, 80, 98, 92, 255 }, // 0x000039C8
	 { 218, 695, 176, 0, 2954, 1024, 80, 98, 92, 255 }, // 0x000039D8
	 { 120, 736, 320, 0, 4057, 1024, 25, 31, 29, 255 }, // 0x000039E8
};

Vtx_t _spot07_room_0_vertices_000039F8[18] = 
{
	 { -630, 622, 340, 0, 117, 0, 87, 107, 101, 255 }, // 0x000039F8
	 { -863, 210, 12, 0, 2048, 1024, 54, 66, 62, 255 }, // 0x00003A08
	 { -863, 622, 12, 0, 2220, 0, 87, 107, 101, 255 }, // 0x00003A18
	 { -630, 128, 340, 0, -55, 1024, 54, 66, 62, 255 }, // 0x00003A28
	 { -863, 210, 12, 0, 2048, 1024, 54, 66, 62, 255 }, // 0x00003A38
	 { -190, 622, 340, 0, -2379, 0, 87, 107, 101, 255 }, // 0x00003A48
	 { -630, 128, 340, 0, -55, 1024, 54, 66, 62, 255 }, // 0x00003A58
	 { -8, 160, 340, 0, -3247, 1024, 54, 66, 62, 255 }, // 0x00003A68
	 { -630, 128, 340, 0, -55, 1024, 54, 66, 62, 255 }, // 0x00003A78
	 { 120, 736, 320, 0, -3908, 0, 25, 31, 29, 255 }, // 0x00003A88
	 { 120, 160, 320, 0, -3908, 1024, 108, 132, 124, 255 }, // 0x00003A98
	 { 218, 172, 176, 0, 2984, 1024, 39, 48, 45, 255 }, // 0x00003AA8
	 { 218, 695, 176, 0, 2954, 0, 80, 98, 92, 255 }, // 0x00003AB8
	 { 267, 773, -6, 0, 1556, 0, 80, 98, 92, 255 }, // 0x00003AC8
	 { 267, 274, -6, 0, 1556, 1024, 39, 48, 45, 255 }, // 0x00003AD8
	 { 449, 571, -55, 0, 0, 727, 115, 141, 132, 255 }, // 0x00003AE8
	 { 409, 872, -78, 0, 0, 0, 25, 31, 29, 255 }, // 0x00003AF8
	 { 449, 411, -55, 0, 0, 1024, 46, 57, 53, 255 }, // 0x00003B08
};

Vtx_t _spot07_room_0_vertices_00003B18[4] = 
{
	 { 409, 872, -78, 0, 8613, 971, 25, 31, 29, 255 }, // 0x00003B18
	 { 41, 944, -23, 0, 8000, 0, 18, 22, 21, 255 }, // 0x00003B28
	 { 253, 954, -701, 0, 5400, 1024, 18, 22, 21, 255 }, // 0x00003B38
	 { -80, 1200, -840, 0, 3196, 0, 18, 22, 21, 255 }, // 0x00003B48
};

Vtx_t _spot07_room_0_vertices_00003B58[4] = 
{
	 { 520, 562, -200, 0, 4222, 0, 148, 168, 161, 255 }, // 0x00003B58
	 { 520, 791, -689, 0, -1134, 0, 18, 22, 21, 255 }, // 0x00003B68
	 { 730, 791, -689, 0, -1134, 1024, 18, 22, 21, 255 }, // 0x00003B78
	 { 730, 562, -200, 0, 2804, 1024, 123, 147, 139, 255 }, // 0x00003B88
};

Vtx_t _spot07_room_0_vertices_00003B98[8] = 
{
	 { 520, 402, -200, 0, -2527, 1024, 101, 124, 116, 255 }, // 0x00003B98
	 { 520, 631, -689, 0, 3158, 1024, 18, 22, 21, 255 }, // 0x00003BA8
	 { 520, 791, -689, 0, 3158, 0, 18, 22, 21, 255 }, // 0x00003BB8
	 { 520, 562, -200, 0, -2197, 0, 148, 168, 161, 255 }, // 0x00003BC8
	 { 730, 562, -200, 0, 2804, 0, 123, 147, 139, 255 }, // 0x00003BD8
	 { 730, 791, -689, 0, -1134, 0, 18, 22, 21, 255 }, // 0x00003BE8
	 { 730, 631, -689, 0, -1110, 1024, 18, 22, 21, 255 }, // 0x00003BF8
	 { 730, 402, -200, 0, 2828, 1024, 74, 91, 85, 255 }, // 0x00003C08
};

Vtx_t _spot07_room_0_vertices_00003C18[5] = 
{
	 { 440, 602, -200, 0, 5605, 0, 115, 141, 132, 255 }, // 0x00003C18
	 { 520, 562, -200, 0, 4222, 0, 148, 168, 161, 255 }, // 0x00003C28
	 { 449, 571, -55, 0, 5570, 1024, 115, 141, 132, 255 }, // 0x00003C38
	 { 637, 562, -73, 0, 4063, 1024, 123, 147, 139, 255 }, // 0x00003C48
	 { 730, 562, -200, 0, 2804, 1024, 123, 147, 139, 255 }, // 0x00003C58
};

Vtx_t _spot07_room_0_vertices_00003C68[10] = 
{
	 { 440, 402, -200, 0, -3560, 1024, 101, 124, 116, 255 }, // 0x00003C68
	 { 520, 402, -200, 0, -2527, 1024, 101, 124, 116, 255 }, // 0x00003C78
	 { 520, 562, -200, 0, -2197, 0, 148, 168, 161, 255 }, // 0x00003C88
	 { 440, 602, -200, 0, -3580, 0, 115, 141, 132, 255 }, // 0x00003C98
	 { 730, 402, -200, 0, 2828, 1024, 74, 91, 85, 255 }, // 0x00003CA8
	 { 637, 402, -73, 0, 4087, 1024, 46, 57, 53, 255 }, // 0x00003CB8
	 { 637, 562, -73, 0, 4063, 0, 123, 147, 139, 255 }, // 0x00003CC8
	 { 730, 562, -200, 0, 2804, 0, 123, 147, 139, 255 }, // 0x00003CD8
	 { 449, 571, -55, 0, 5570, 0, 115, 141, 132, 255 }, // 0x00003CE8
	 { 449, 411, -55, 0, 5594, 1024, 46, 57, 53, 255 }, // 0x00003CF8
};

Vtx_t _spot07_room_0_vertices_00003D08[4] = 
{
	 { 730, 402, -200, 0, 1943, 12794, 74, 91, 85, 255 }, // 0x00003D08
	 { 730, 631, -689, 0, 1943, 955, 18, 22, 21, 255 }, // 0x00003D18
	 { 520, 631, -689, 0, 106, 955, 18, 22, 21, 255 }, // 0x00003D28
	 { 520, 402, -200, 0, 106, 12794, 101, 124, 116, 255 }, // 0x00003D38
};

Vtx_t _spot07_room_0_vertices_00003D48[5] = 
{
	 { 520, 402, -200, 0, 5126, 1024, 101, 124, 116, 255 }, // 0x00003D48
	 { 440, 402, -200, 0, 6031, 1024, 101, 124, 116, 255 }, // 0x00003D58
	 { 449, 411, -55, 0, 6066, 0, 46, 57, 53, 255 }, // 0x00003D68
	 { 637, 402, -73, 0, 4707, 0, 46, 57, 53, 255 }, // 0x00003D78
	 { 730, 402, -200, 0, 3572, 0, 74, 91, 85, 255 }, // 0x00003D88
};

Vtx_t _spot07_room_0_vertices_00003D98[9] = 
{
	 { -255, 957, -966, 0, 0, 1024, 39, 48, 45, 255 }, // 0x00003D98
	 { -255, 957, -1226, 0, 1333, 1024, 18, 22, 21, 255 }, // 0x00003DA8
	 { -195, 977, -1226, 0, 1329, 560, 18, 22, 21, 255 }, // 0x00003DB8
	 { -195, 977, -966, 0, 0, 560, 39, 48, 45, 255 }, // 0x00003DC8
	 { -135, 957, -1226, 0, 1328, 0, 18, 22, 21, 255 }, // 0x00003DD8
	 { -135, 957, -966, 0, 0, 0, 39, 48, 45, 255 }, // 0x00003DE8
	 { -195, 977, -1386, 0, 2202, 511, 18, 22, 21, 255 }, // 0x00003DF8
	 { -264, 957, -1384, 0, 2147, 1024, 18, 22, 21, 255 }, // 0x00003E08
	 { -134, 957, -1392, 0, 2401, 0, 18, 22, 21, 255 }, // 0x00003E18
};

Vtx_t _spot07_room_0_vertices_00003E28[8] = 
{
	 { -979, -114, 64, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E28
	 { 445, -114, 582, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E38
	 { -395, 871, -1540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E48
	 { 1029, 871, -1022, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E58
	 { -1100, 498, 396, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E68
	 { 324, 498, 915, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E78
	 { -516, 1484, -1208, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E88
	 { 908, 1484, -689, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E98
};

Gfx _spot07_room_0_dlist_00003EA8[] =
{
	gsDPPipeSync(), // 0x00003EA8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003EB0
	gsSPVertex(_spot07_room_0_vertices_00003E28, 8, 0), // 0x00003EB8
	gsSPCullDisplayList(0, 7), // 0x00003EC0
	gsDPPipeSync(), // 0x00003EC8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003ED0
	gsDPPipeSync(), // 0x00003ED8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003EE0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003EE8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009418), // 0x00003EF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003EF8
	gsDPLoadSync(), // 0x00003F00
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003F08
	gsDPPipeSync(), // 0x00003F10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003F18
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003F20
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009018), // 0x00003F28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 128, 7, 0, 0, 5, 15, 0, 6, 15), // 0x00003F30
	gsDPLoadSync(), // 0x00003F38
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003F40
	gsDPPipeSync(), // 0x00003F48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 128, 1, 0, 0, 5, 15, 0, 6, 15), // 0x00003F50
	gsDPSetTileSize(1, 0, 0, 252, 124), // 0x00003F58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00003F70), // 0x00003F60
	gsDPTileSync(), // 0x00003F68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003F70
	gsDPLoadSync(), // 0x00003F78
	gsDPLoadTLUTCmd(7, 15), // 0x00003F80
	gsDPPipeSync(), // 0x00003F88
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003F90
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003F98
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003FA0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003FA8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003FB0
	gsDPSetEnvColor(0, 0, 0, 100), // 0x00003FB8
	gsSPDisplayList(0x0C000000), // 0x00003FC0
	gsSPVertex(_spot07_room_0_vertices_000036D8, 11, 0), // 0x00003FC8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003FD0
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x00003FD8
	gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0), // 0x00003FE0
	gsSP1Triangle(9, 7, 10, 0), // 0x00003FE8
	gsDPPipeSync(), // 0x00003FF0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005798), // 0x00003FF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00004000
	gsDPLoadSync(), // 0x00004008
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004010
	gsDPPipeSync(), // 0x00004018
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00004020
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004028
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004030
	gsSPVertex(_spot07_room_0_vertices_00003788, 4, 0), // 0x00004038
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004040
	gsDPPipeSync(), // 0x00004048
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005398), // 0x00004050
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00004058
	gsDPLoadSync(), // 0x00004060
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004068
	gsDPPipeSync(), // 0x00004070
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00004078
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004080
	gsSPVertex(_spot07_room_0_vertices_000037C8, 5, 0), // 0x00004088
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0), // 0x00004090
	gsDPPipeSync(), // 0x00004098
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005798), // 0x000040A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x000040A8
	gsDPLoadSync(), // 0x000040B0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000040B8
	gsDPPipeSync(), // 0x000040C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x000040C8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000040D0
	gsSPVertex(_spot07_room_0_vertices_00003818, 4, 0), // 0x000040D8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000040E0
	gsDPPipeSync(), // 0x000040E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005798), // 0x000040F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x000040F8
	gsDPLoadSync(), // 0x00004100
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004108
	gsDPPipeSync(), // 0x00004110
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00004118
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004120
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009018), // 0x00004128
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 128, 7, 0, 0, 5, 15, 0, 6, 15), // 0x00004130
	gsDPLoadSync(), // 0x00004138
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004140
	gsDPPipeSync(), // 0x00004148
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 128, 1, 0, 0, 5, 15, 0, 6, 15), // 0x00004150
	gsDPSetTileSize(1, 0, 0, 252, 124), // 0x00004158
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004160
	gsSPDisplayList(0x0C000000), // 0x00004168
	gsSPVertex(_spot07_room_0_vertices_00003858, 12, 0), // 0x00004170
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00004178
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004180
	gsSP2Triangles(8, 0, 3, 0, 8, 3, 9, 0), // 0x00004188
	gsSP2Triangles(10, 7, 6, 0, 10, 6, 11, 0), // 0x00004190
	gsDPPipeSync(), // 0x00004198
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00007B98), // 0x000041A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 1, 0, 6, 0), // 0x000041A8
	gsDPLoadSync(), // 0x000041B0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000041B8
	gsDPPipeSync(), // 0x000041C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 1, 0, 6, 0), // 0x000041C8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000041D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009018), // 0x000041D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 128, 7, 0, 0, 5, 5, 0, 6, 3), // 0x000041E0
	gsDPLoadSync(), // 0x000041E8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000041F0
	gsDPPipeSync(), // 0x000041F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 128, 1, 0, 0, 5, 5, 0, 6, 3), // 0x00004200
	gsDPSetTileSize(1, 0, 0, 252, 124), // 0x00004208
	gsSPDisplayList(0x0C000000), // 0x00004210
	gsSPVertex(_spot07_room_0_vertices_00003918, 14, 0), // 0x00004218
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004220
	gsSP2Triangles(4, 1, 0, 0, 4, 5, 1, 0), // 0x00004228
	gsSP2Triangles(6, 5, 4, 0, 7, 8, 9, 0), // 0x00004230
	gsSP2Triangles(10, 7, 11, 0, 7, 12, 13, 0), // 0x00004238
	gsDPPipeSync(), // 0x00004240
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00006B98), // 0x00004248
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00004250
	gsDPLoadSync(), // 0x00004258
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004260
	gsDPPipeSync(), // 0x00004268
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00004270
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004278
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009018), // 0x00004280
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 128, 7, 0, 0, 5, 15, 0, 6, 15), // 0x00004288
	gsDPLoadSync(), // 0x00004290
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004298
	gsDPPipeSync(), // 0x000042A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 128, 1, 0, 0, 5, 15, 0, 6, 15), // 0x000042A8
	gsDPSetTileSize(1, 0, 0, 252, 124), // 0x000042B0
	gsSPDisplayList(0x0C000000), // 0x000042B8
	gsSPVertex(_spot07_room_0_vertices_000039F8, 18, 0), // 0x000042C0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x000042C8
	gsSP2Triangles(5, 6, 0, 0, 5, 7, 8, 0), // 0x000042D0
	gsSP2Triangles(9, 10, 5, 0, 10, 7, 5, 0), // 0x000042D8
	gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0), // 0x000042E0
	gsSP2Triangles(14, 13, 15, 0, 16, 15, 13, 0), // 0x000042E8
	gsSP1Triangle(14, 15, 17, 0), // 0x000042F0
	gsDPPipeSync(), // 0x000042F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005F98), // 0x00004300
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00004308
	gsDPLoadSync(), // 0x00004310
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004318
	gsDPPipeSync(), // 0x00004320
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00004328
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004330
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009018), // 0x00004338
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 128, 7, 0, 0, 5, 15, 0, 6, 15), // 0x00004340
	gsDPLoadSync(), // 0x00004348
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004350
	gsDPPipeSync(), // 0x00004358
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 128, 1, 0, 0, 5, 15, 0, 6, 15), // 0x00004360
	gsDPSetTileSize(1, 0, 0, 252, 124), // 0x00004368
	gsSPDisplayList(0x0C000000), // 0x00004370
	gsSPVertex(_spot07_room_0_vertices_00003B18, 4, 0), // 0x00004378
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004380
	gsDPPipeSync(), // 0x00004388
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005398), // 0x00004390
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00004398
	gsDPLoadSync(), // 0x000043A0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000043A8
	gsDPPipeSync(), // 0x000043B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x000043B8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000043C0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000043C8
	gsSPVertex(_spot07_room_0_vertices_00003B58, 4, 0), // 0x000043D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000043D8
	gsDPPipeSync(), // 0x000043E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005798), // 0x000043E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x000043F0
	gsDPLoadSync(), // 0x000043F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004400
	gsDPPipeSync(), // 0x00004408
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00004410
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004418
	gsSPVertex(_spot07_room_0_vertices_00003B98, 8, 0), // 0x00004420
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004428
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004430
	gsDPPipeSync(), // 0x00004438
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005398), // 0x00004440
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00004448
	gsDPLoadSync(), // 0x00004450
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004458
	gsDPPipeSync(), // 0x00004460
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00004468
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004470
	gsSPVertex(_spot07_room_0_vertices_00003C18, 5, 0), // 0x00004478
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004480
	gsSP1Triangle(1, 4, 3, 0), // 0x00004488
	gsDPPipeSync(), // 0x00004490
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005798), // 0x00004498
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x000044A0
	gsDPLoadSync(), // 0x000044A8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000044B0
	gsDPPipeSync(), // 0x000044B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x000044C0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000044C8
	gsSPVertex(_spot07_room_0_vertices_00003C68, 10, 0), // 0x000044D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000044D8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000044E0
	gsSP2Triangles(8, 6, 5, 0, 8, 5, 9, 0), // 0x000044E8
	gsDPPipeSync(), // 0x000044F0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000044F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00006F98), // 0x00004500
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 5, 0), // 0x00004508
	gsDPLoadSync(), // 0x00004510
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004518
	gsDPPipeSync(), // 0x00004520
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 1, 5, 0), // 0x00004528
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004530
	gsSPVertex(_spot07_room_0_vertices_00003D08, 4, 0), // 0x00004538
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004540
	gsDPPipeSync(), // 0x00004548
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004550
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009418), // 0x00004558
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 15, 0, 6, 15), // 0x00004560
	gsDPLoadSync(), // 0x00004568
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004570
	gsDPPipeSync(), // 0x00004578
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 5, 15, 0, 6, 15), // 0x00004580
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004588
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005B98), // 0x00004590
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 128, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00004598
	gsDPLoadSync(), // 0x000045A0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000045A8
	gsDPPipeSync(), // 0x000045B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 128, 1, 0, 2, 5, 0, 0, 6, 0), // 0x000045B8
	gsDPSetTileSize(1, 0, 0, 252, 124), // 0x000045C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00003F70), // 0x000045C8
	gsDPTileSync(), // 0x000045D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000045D8
	gsDPLoadSync(), // 0x000045E0
	gsDPLoadTLUTCmd(7, 15), // 0x000045E8
	gsDPPipeSync(), // 0x000045F0
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000045F8
	gsDPSetEnvColor(0, 0, 0, 156), // 0x00004600
	gsSPVertex(_spot07_room_0_vertices_00003D48, 5, 0), // 0x00004608
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x00004610
	gsSP1Triangle(3, 4, 0, 0), // 0x00004618
	gsDPPipeSync(), // 0x00004620
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00005398), // 0x00004628
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00004630
	gsDPLoadSync(), // 0x00004638
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004640
	gsDPPipeSync(), // 0x00004648
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00004650
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004658
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot07_scene_tex_00009018), // 0x00004660
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 128, 7, 0, 0, 5, 15, 0, 6, 15), // 0x00004668
	gsDPLoadSync(), // 0x00004670
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004678
	gsDPPipeSync(), // 0x00004680
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 128, 1, 0, 0, 5, 15, 0, 6, 15), // 0x00004688
	gsDPSetTileSize(1, 0, 0, 252, 124), // 0x00004690
	gsDPSetEnvColor(0, 0, 0, 100), // 0x00004698
	gsSPDisplayList(0x0C000000), // 0x000046A0
	gsSPVertex(_spot07_room_0_vertices_00003D98, 9, 0), // 0x000046A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000046B0
	gsSP2Triangles(3, 4, 5, 0, 3, 2, 4, 0), // 0x000046B8
	gsSP2Triangles(6, 4, 2, 0, 7, 6, 1, 0), // 0x000046C0
	gsSP2Triangles(6, 2, 1, 0, 6, 8, 4, 0), // 0x000046C8
	gsDPPipeSync(), // 0x000046D0
	gsDPSetEnvColor(0, 0, 0, 128), // 0x000046D8
	gsSPEndDisplayList(), // 0x000046E0
};

static u8 unaccounted46E8[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x08, 0x38, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0xA8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0x60, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x18, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x21, 0x00, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x26, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2A, 0x28, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2E, 0x48, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x34, 0xB0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3E, 0xA8, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _spot07_room_0_tex_00004748[] = 
{
	0x7B9783D9A4DFBDA9, 0x9C9F40038C198C19, 0x3801839528012801, 0x280138014803BDA3,  // 0x00004748 
	0x618F590950C7514B, 0x48C740038C198C19, 0x3801839528012801, 0x280138014803BDA3,  // 0x00004768 
	0x618F590950C7514B, 0x48C740038C198C19, 0x3801839528012801, 0x280138014803BDA3,  // 0x00004788 
	0x618F590950C7514B, 0x48C740038C198C19, 0x3801839528011045, 0x5A4F945D6AD383D9,  // 0x000047A8 
	0x7B577B979C9F39CB, 0x528F50454003945B, 0x4003400328012001, 0x28013001945B4803,  // 0x000047C8 
	0xA4DF5087508750C7, 0x514B50454003945B, 0x4003400328012001, 0x28013001945B4803,  // 0x000047E8 
	0xA4DF5087508750C7, 0x514B50454003945B, 0x4003400328012001, 0x28013001945B4803,  // 0x00004808 
	0xA4DF5087508750C7, 0x514B50454003945B, 0x4003400328015A8F, 0xC5EB949D7B578C1B,  // 0x00004828 
	0x83D9B5A739897B97, 0x6AD3B5A1508783D7, 0x945B400340032801, 0x280183D738018C19,  // 0x00004848 
	0x4003945B5045514B, 0x58C9B5A1508783D7, 0x945B400340032801, 0x280183D738018C19,  // 0x00004868 
	0x4003945B5045514B, 0x58C9B5A1508783D7, 0x945B400340032801, 0x280183D738018C19,  // 0x00004888 
	0x4003945B5045514B, 0x58C9B5A1508783D7, 0x945B400348C73149, 0x41CBB5657B5583D9,  // 0x000048A8 
	0x735531898C5BA523, 0x7B5750C748C79C9D, 0x4803400340033801, 0x839538018C197B11,  // 0x000048C8 
	0x83953801A4DF5045, 0x480350C748C79C9D, 0x4803400340033801, 0x839538018C197B11,  // 0x000048E8 
	0x83953801A4DF5045, 0x480350C748C79C9D, 0x4803400340033801, 0x839538018C197B11,  // 0x00004908 
	0x83953801A4DF5045, 0x480350C748C79C9D, 0x48034003518B5A4F, 0xA52339899CDD83D9,  // 0x00004928 
	0x73577B57BDEB9C9F, 0x0003518BA4DFAD21, 0x4045AD1F4003945B, 0x38018C197B1172CF,  // 0x00004948 
	0x72CF8395380183D7, 0x30014003A4DFAD21, 0x4045AD1F4003945B, 0x38018C197B1172CF,  // 0x00004968 
	0x72CF8395380183D7, 0x30014003A4DFAD21, 0x4045AD1F4003945B, 0x38018C197B1172CF,  // 0x00004988 
	0x72CF8395380183D7, 0x30014003A4DFAD21, 0x4045AD1F4003524F, 0x3147CE6D5A917B97,  // 0x000049A8 
	0x8C5BC5EBB5A73149, 0x6B15518B5087B561, 0x618D590B48034803, 0xA4DD30017B1172CF,  // 0x000049C8 
	0x72CF28017B113001, 0x300140035087B561, 0x618D590B48034803, 0xA4DD30017B1172CF,  // 0x000049E8 
	0x72CF28017B113001, 0x300140035087B561, 0x618D590B48034803, 0xA4DD30017B1172CF,  // 0x00004A08 
	0x72CF28017B113001, 0x300140035087B561, 0x618D590B48039CA1, 0x7B95524FAD1F8C1B,  // 0x00004A28 
	0x7B979C9F3989C5EB, 0x7B976AD148039C9D, 0xD6656A9558894803, 0x4803945B38018395,  // 0x00004A48 
	0x280172CF28012801, 0x30017B1148039C9D, 0xD6656A9558894803, 0x4803945B38018395,  // 0x00004A68 
	0x280172CF28012801, 0x30017B1148039C9D, 0xD6656A9558894803, 0x4803945B38018395,  // 0x00004A88 
	0x280172CF28012801, 0x30017B1148039C9D, 0xD6656A9558893147, 0xB567A4DF4A0D83D9,  // 0x00004AA8 
	0x8C1B3989AD65528F, 0x62D3300128018395, 0x584569CF69CF590B, 0x48034803945B4003,  // 0x00004AC8 
	0x8395300128012801, 0x2801300128018395, 0x584569CF69CF590B, 0x48034803945B4003,  // 0x00004AE8 
	0x8395300128012801, 0x2801300128018395, 0x584569CF69CF590B, 0x48034803945B4003,  // 0x00004B08 
	0x8395300128012801, 0x2801300128018395, 0x584569CF69CF8C1B, 0x3989B5A77B5783D9,  // 0x00004B28 
	0x7B99945D4A4D7B97, 0x9C9F200183958C19, 0x4803CE2569CF618F, 0x590B50034803A4DD,  // 0x00004B48 
	0x4003380128012801, 0x2001200183958C19, 0x4803CE2569CF618F, 0x590B50034803A4DD,  // 0x00004B68 
	0x4003380128012801, 0x2001200183958C19, 0x4803CE2569CF618F, 0x590B50034803A4DD,  // 0x00004B88 
	0x4003380128012801, 0x2001200183958C19, 0x4803CE2569CFB5A9, 0x9C9F5AD1A52383D9,  // 0x00004BA8 
	0x7B57528F8C19C5EB, 0x39CB200130018395, 0x3801500369CF6A53, 0x618F5845945B4003,  // 0x00004BC8 
	0xA4DD400338012801, 0x2001200130018395, 0x3801500369CF6A53, 0x618F5845945B4003,  // 0x00004BE8 
	0xA4DD400338012801, 0x2001200130018395, 0x3801500369CF6A53, 0x618F5845945B4003,  // 0x00004C08 
	0xA4DD400338012801, 0x2001200130018395, 0x3801500369CF3149, 0xB5678C199C9D83D9,  // 0x00004C28 
	0x7B975A8FC5EB3149, 0x6B555A4F2801628D, 0x83D7380150035889, 0x590BCE2559098C19,  // 0x00004C48 
	0x3801A4DD38013001, 0x28015A0D2801628D, 0x83D7380150035889, 0x590BCE2559098C19,  // 0x00004C68 
	0x3801A4DD38013001, 0x28015A0D2801628D, 0x83D7380150035889, 0x590BCE2559098C19,  // 0x00004C88 
	0x3801A4DD38013001, 0x28015A0D2801628D, 0x83D738015003394B, 0x3147B567AD237B97,  // 0x00004CA8 
	0x83D9C62D41CB6291, 0x524F3001200149CB, 0x2801380140035003, 0xBDA36251D625AD21,  // 0x00004CC8 
	0x9C9D3801945B3001, 0x28013001200149CB, 0x2801380140035003, 0xBDA36251D625AD21,  // 0x00004CE8 
	0x9C9D3801945B3001, 0x28013001200149CB, 0x2801380140035003, 0xBDA36251D625AD21,  // 0x00004D08 
	0x9C9D3801945B3001, 0x28013001200149CB, 0x2801380140035A8F, 0x8C194A0D6B157B97,  // 0x00004D28 
	0x8C195A918C5BC62B, 0x524F280149CB5A0D, 0x2001839528019C9D, 0x5845AD21D625C5E5,  // 0x00004D48 
	0xAD218C1938018C19, 0x2801280149CB5A0D, 0x2001839528019C9D, 0x5845AD21D625C5E5,  // 0x00004D68 
	0xAD218C1938018C19, 0x2801280149CB5A0D, 0x2001839528019C9D, 0x5845AD21D625C5E5,  // 0x00004D88 
	0xAD218C1938018C19, 0x2801280149CB5A0D, 0x2001839528019C9F, 0x6B557B5583D983D9,  // 0x00004DA8 
	0x73157B97BDE94A0D, 0x9CA1280120013107, 0x2001280128013801, 0x945B5003AD21B561,  // 0x00004DC8 
	0xBDA350C7945B4003, 0x3801280120013107, 0x2001280128013801, 0x945B5003AD21B561,  // 0x00004DE8 
	0xBDA350C7945B4003, 0x3801280120013107, 0x2001280128013801, 0x945B5003AD21B561,  // 0x00004E08 
	0xBDA350C7945B4003, 0x3801280120013107, 0x2001280128016B15, 0xBDA9B5658C1B7B57,  // 0x00004E28 
	0x7B97C62B3149BDE9, 0x39899C9D2801628D, 0x628D280130012801, 0x3801A4DD58459C9D,  // 0x00004E48 
	0x618DAD2148454845, 0x4803945B2801628D, 0x628D280130012801, 0x3801A4DD58459C9D,  // 0x00004E68 
	0x618DAD2148454845, 0x4803945B2801628D, 0x628D280130012801, 0x3801A4DD58459C9D,  // 0x00004E88 
	0x618DAD2148454845, 0x4803945B2801628D, 0x628D2801520D4A4D, 0x39893989B5677B57,  // 0x00004EA8 
	0x7B5739898C5B3989, 0x6B553801380183D7, 0x2801280128012801, 0x28014003A4DD590B,  // 0x00004EC8 
	0xC5E3508750454045, 0x40033801380183D7, 0x2801280128012801, 0x28014003A4DD590B,  // 0x00004EE8 
	0xC5E3508750454045, 0x40033801380183D7, 0x2801280128012801, 0x28014003A4DD590B,  // 0x00004F08 
	0xC5E3508750454045, 0x40033801380183D7, 0x2801280128017357, 0x735539CB4A4D7B99,  // 0x00004F28 
};

u64 _spot07_room_0_tex_00004F48[] = 
{
	0x7B997B9BA4E1B5AB, 0x949F529783DD83DD, 0x000F631B000B000B, 0x000B000F0013BDA3,  // 0x00004F48 
	0x39D9315529133155, 0x2913084F83DD83DD, 0x000F631B000B000B, 0x000B000F0013BDA3,  // 0x00004F68 
	0x39D9315529133155, 0x2913084F83DD83DD, 0x000F631B000B000B, 0x000B000F0013BDA3,  // 0x00004F88 
	0x39D9315529133155, 0x2913084F83DD83DD, 0x000F631B108D000B, 0x42138C1D529983D9,  // 0x00004FA8 
	0x83D97B9994A1398B, 0x52511093084F8C5F, 0x00110011000B0009, 0x000B000D8C5F0013,  // 0x00004FC8 
	0xA4E118D318D32913, 0x31551093084F8C5F, 0x00110011000B0009, 0x000B000D8C5F0013,  // 0x00004FE8 
	0xA4E118D318D32913, 0x31551093084F8C5F, 0x00110011000B0009, 0x000B000D8C5F0013,  // 0x00005008 
	0xA4E118D318D32913, 0x31551093084F8C5F, 0x0011001152974A53, 0xC5EB8C1B6B156B55,  // 0x00005028 
	0x7357B5A9318B7397, 0x5AD7B56318D3739D, 0x8C5F00110011000B, 0x000B739D000F83DD,  // 0x00005048 
	0x00118C5F10933155, 0x2915B56318D3739D, 0x8C5F00110011000B, 0x000B739D000F83DD,  // 0x00005068 
	0x00118C5F10933155, 0x2915B56318D3739D, 0x8C5F00110011000B, 0x000B739D000F83DD,  // 0x00005088 
	0x00118C5F10933155, 0x2915B56318D3739D, 0x8C5F00113197294B, 0x39CBB56563155A91,  // 0x000050A8 
	0x5A9131498C5BA4E5, 0x5ADF29132913945F, 0x085100110011000F, 0x631B000F83DD5AD9,  // 0x000050C8 
	0x631B000FA4E11093, 0x085129132913945F, 0x085100110011000F, 0x631B000F83DD5AD9,  // 0x000050E8 
	0x631B000FA4E11093, 0x085129132913945F, 0x085100110011000F, 0x631B000F83DD5AD9,  // 0x00005108 
	0x631B000FA4E11093, 0x085129132913945F, 0x0851001100114215, 0xA4E5318B945D6313,  // 0x00005128 
	0x5AD37357BDEB94A1, 0x0005084F9CE1AD21, 0x1091A52100118C5F, 0x000F83DD5AD94A59,  // 0x00005148 
	0x4A59631B000F739D, 0x000D084F9CE1AD21, 0x1091A52100118C5F, 0x000F83DD5AD94A59,  // 0x00005168 
	0x4A59631B000F739D, 0x000D084F9CE1AD21, 0x1091A52100118C5F, 0x000F83DD5AD94A59,  // 0x00005188 
	0x4A59631B000F739D, 0x000D084F9CE1AD21, 0x1091A52100114A4F, 0x210BCE6D524F6B15,  // 0x000051A8 
	0x8C1BBDEBAD692949, 0x6317109118D3B563, 0x3997295700130013, 0x9C9F000D5AD94A59,  // 0x000051C8 
	0x4A59000B5AD9000D, 0x000D084F18D3B563, 0x3997295700130013, 0x9C9F000D5AD94A59,  // 0x000051E8 
	0x4A59000B5AD9000D, 0x000D084F18D3B563, 0x3997295700130013, 0x9C9F000D5AD94A59,  // 0x00005208 
	0x4A59000B5AD9000D, 0x000D084F18D3B563, 0x39972957001394A1, 0x73974A4F945B6B55,  // 0x00005228 
	0x8C1B9CA1318BBDEB, 0x735B5ADB08519C9F, 0xD6655A9B18D50013, 0x00138C5F000F631B,  // 0x00005248 
	0x000B4A59000B000B, 0x000D52D908519C9F, 0xD6655A9B18D50013, 0x00138C5F000F631B,  // 0x00005268 
	0x000B4A59000B000B, 0x000D52D908519C9F, 0xD6655A9B18D50013, 0x00138C5F000F631B,  // 0x00005288 
	0x000B4A59000B000B, 0x000D52D908519C9F, 0xD6655A9B3997210B, 0xAD67A4DF420D7357,  // 0x000052A8 
	0x8419318BAD25524F, 0x6315000D000B631B, 0x1095421942192957, 0x001300138C5F0011,  // 0x000052C8 
	0x631B000D000B000B, 0x000B000D000B631B, 0x1095421942192957, 0x001300138C5F0011,  // 0x000052E8 
	0x631B000D000B000B, 0x000B000D000B631B, 0x1095421942192957, 0x001300138C5F0011,  // 0x00005308 
	0x631B000D000B000B, 0x000B000D000B631B, 0x109542196B1B83DD, 0x294BB56973577B97,  // 0x00005328 
	0x5AD18C1F4A0F7B97, 0x94610009631B83DD, 0x0851CE25421939D9, 0x2957085300139C9F,  // 0x00005348 
	0x0011000F000B000B, 0x00090009631B83DD, 0x0851CE25421939D9, 0x2957085300139C9F,  // 0x00005368 
	0x0011000F000B000B, 0x00090009631B83DD, 0x0851CE25421939D9, 0x2957085300139C9F,  // 0x00005388 
	0x0011000F000B000B, 0x00090009631B83DD, 0x0851CE254A19B5A9, 0x949F5AD3A4E583D9,  // 0x000053A8 
	0x524F52518C1BBDEB, 0x398B0009000D631B, 0x000F08534219525B, 0x39D910958C5F0011,  // 0x000053C8 
	0x9C9F0011000F000B, 0x00090009000D631B, 0x000F08534219525B, 0x39D910958C5F0011,  // 0x000053E8 
	0x9C9F0011000F000B, 0x00090009000D631B, 0x000F08534219525B, 0x39D910958C5F0011,  // 0x00005408 
	0x9C9F0011000F000B, 0x00090009000D631B, 0x000F085342192949, 0xAD698C1B9C9F83D9,  // 0x00005428 
	0x62D35291BDEB2949, 0x6B153195000B4217, 0x739D000F085318D5, 0x2957CE25315583DD,  // 0x00005448 
	0x000F9C9F000F000D, 0x000B3195000B4217, 0x739D000F085318D5, 0x2957CE25315583DD,  // 0x00005468 
	0x000F9C9F000F000D, 0x000B3195000B4217, 0x739D000F085318D5, 0x2957CE25315583DD,  // 0x00005488 
	0x000F9C9F000F000D, 0x000B3195000B4217, 0x739D000F085318D5, 0x210BAD69AD256B15,  // 0x000054A8 
	0x7357C62D39CD5295, 0x4211000D00092155, 0x000B000F00110853, 0xBDA35259D625AD21,  // 0x000054C8 
	0x949F000F8C5F000D, 0x000B000D00092155, 0x000B000F00110853, 0xBDA35259D625AD21,  // 0x000054E8 
	0x949F000F8C5F000D, 0x000B000D00092155, 0x000B000F00110853, 0xBDA35259D625AD21,  // 0x00005508 
	0x949F000F8C5F000D, 0x000B000D00092155, 0x000B000F00114A15, 0x841941CD6B155A91,  // 0x00005528 
	0x7B995A918C1BC62B, 0x4211319321553195, 0x0009631B000B9C9F, 0x1095AD21D625C5E5,  // 0x00005548 
	0xAD2183DD000F83DD, 0x000B000B21553195, 0x0009631B000B9C9F, 0x1095AD21D625C5E5,  // 0x00005568 
	0xAD2183DD000F83DD, 0x000B000B21553195, 0x0009631B000B9C9F, 0x1095AD21D625C5E5,  // 0x00005588 
	0xAD2183DD000F83DD, 0x000B000B21553195, 0x0009631B4A559C9F, 0x6B1573577B9962D3,  // 0x000055A8 
	0x63157359BDEB420D, 0x94A36B1900090893, 0x0009000B000B000F, 0x8C5F0853AD21B563,  // 0x000055C8 
	0xBDA329138C5F0011, 0x000F000B00090893, 0x0009000B000B000F, 0x8C5F0853AD21B563,  // 0x000055E8 
	0xBDA329138C5F0011, 0x000F000B00090893, 0x0009000B000B000F, 0x8C5F0853AD21B563,  // 0x00005608 
	0xBDA329138C5F0011, 0x000F000B00090893, 0x0009000B4A155AD9, 0xB5A9B5657B9762D3,  // 0x00005628 
	0x7357C62D2949BDAB, 0x318B949F000B4217, 0x4217000B000D000B, 0x000F9C9F1095949F,  // 0x00005648 
	0x3997AD2110911091, 0x08518C5F000B4217, 0x4217000B000D000B, 0x000F9C9F1095949F,  // 0x00005668 
	0x3997AD2110911091, 0x08518C5F000B4217, 0x4217000B000D000B, 0x000F9C9F1095949F,  // 0x00005688 
	0x3997AD2110911091, 0x08518C5F000B4217, 0x4217000B29534A0F, 0x318B3189AD696B17,  // 0x000056A8 
	0x7357318B8C1B318B, 0x6B17000F000F739D, 0x000B000B000B000B, 0x000B00119C9F2957,  // 0x000056C8 
	0xC5E318D310931091, 0x084F000F000F739D, 0x000B000B000B000B, 0x000B00119C9F2957,  // 0x000056E8 
	0xC5E318D310931091, 0x084F000F000F739D, 0x000B000B000B000B, 0x000B00119C9F2957,  // 0x00005708 
	0xC5E318D310931091, 0x084F000F000F739D, 0x000B000B000B6B59, 0x6B55398B4A0F7B99,  // 0x00005728 
};

u64 _spot07_room_0_tex_00005748[] = 
{
	0x0000000000000000, 0x000018C4420E6315, 0x7B57210900000000, 0x0000000000000000,  // 0x00005748 
	0x0000000000000840, 0x420C5AD3BD63D629, 0xC62F94617B9B20C7, 0x0000000000000000,  // 0x00005768 
	0x000000001082520E, 0x9C1BBD1FC51FBD69, 0xAD239CA3945F735B, 0x314B000000000000,  // 0x00005788 
	0x0000000010828B9B, 0x9419CDE7ACDF93D9, 0x7B57629163175255, 0x318B18C700000000,  // 0x000057A8 
	0x0000084220C6ACE3, 0xCD61BD2193DB7B53, 0x5A91420D394B39CD, 0x39CD20C700000000,  // 0x000057C8 
	0x000010C44A0EBDA7, 0xB521A45F7B576A91, 0x5291394B290939CD, 0x398D290708400000,  // 0x000057E8 
	0x00001082398C841B, 0x7B57735762D35291, 0x41892909298B39CF, 0x314B20C700000000,  // 0x00005808 
	0x0000000029485293, 0x520D5AD7420D298B, 0x3149314B298B3149, 0x318B188500000000,  // 0x00005828 
	0x000000001082398A, 0x5AD3420D398B2907, 0x29073149314B318B, 0x398D104200000000,  // 0x00005848 
	0x00000000084218C4, 0x8397C5A5BD238C1D, 0x8BDB520D5A517317, 0x41CF18C600000000,  // 0x00005868 
	0x0000080008426B55, 0x6A9162915A513149, 0x290720851885318D, 0x5251290900000840,  // 0x00005888 
	0x000000000842524F, 0x73176B15735B420D, 0x3107290720C52149, 0x2907210700002906,  // 0x000058A8 
	0x0000000000002908, 0x420F6B576B595211, 0x314920C729091885, 0x2107108441CC524E,  // 0x000058C8 
	0x0000000000000800, 0x314852517399420D, 0x2907290920852107, 0x29485A908C1AC5EA,  // 0x000058E8 
	0x0000000000000000, 0x10423148520D5AD3, 0x20C71885188520C6, 0x5A8E9C5ABD669CE4,  // 0x00005908 
	0x0000000000000000, 0x000018C44A0D6B15, 0x398B208520C75A90, 0xB4DEAC9C841C83DE,  // 0x00005928 
	0x0000000000000000, 0x000020C6524F7317, 0x5A5129092107CDA6, 0xBD668C1C6316398A,  // 0x00005948 
	0x0000000000000000, 0x000029087B57624F, 0x5A513107298BBD6A, 0xA5267B564A10524E,  // 0x00005968 
	0xD628D5A3CD63DE6B, 0xCD63C563B51DC523, 0xD6297B57B4DF6B15, 0x8B997B577B9D945A,  // 0x00005988 
	0x9418AD2593D99C5B, 0x620FA5239C1D7317, 0x72D3418D841B6291, 0x6A5183559C1D9C1C,  // 0x000059A8 
	0x41CC418D398B2909, 0x418B5A936B15520D, 0x5A4F5A4F5AD35A4F, 0x6B1531495A915B14,  // 0x000059C8 
	0x1082188429472907, 0x318920C7B5678C1D, 0x7B555A5121058C63, 0x841F5253398C2908,  // 0x000059E8 
	0x0000080008400000, 0x10820000B563945F, 0x72D34A0D29096316, 0x6B585AD66316398A,  // 0x00005A08 
	0x0000000000000000, 0x00000000BDA78B97, 0x8357520D2107318A, 0x6B9863165A92524E,  // 0x00005A28 
	0x0000000000000000, 0x00001082D62DAC9D, 0x841B5A51290718C6, 0x52526B588398A45A,  // 0x00005A48 
	0x0000000000000000, 0x00001082CD65B523, 0x8BDB520D29071884, 0x2108945EB520AC5A,  // 0x00005A68 
	0x0000000000000000, 0x004218C4D629ACE1, 0x8C1D5A9129070840, 0x18C4318AB4DE8B96,  // 0x00005A88 
	0x0000000000000000, 0x000018C4DE6FCDE9, 0x9C5F5AD329471084, 0x29087B5893DAB4DE,  // 0x00005AA8 
	0x0000000000000000, 0x188441CCDDE7C521, 0x8C1D4A0D20C518C4, 0xC5A8ACE272D25A90,  // 0x00005AC8 
	0x0000000000000800, 0x29068397CCDFB49F, 0x83574A0D31091085, 0xCDEC9C1C5A4E398A,  // 0x00005AE8 
	0x00000000000018C4, 0x524FE669D62DB523, 0x83575A51418B2909, 0xB5697314398A0842,  // 0x00005B08 
	0x00000000000018C4, 0x524F9C5BDE6BAC9D, 0x8B956B154A0D3149, 0x9CA3731631481884,  // 0x00005B28 
	0x0000000000000842, 0x41CDB525B5A79C1D, 0x72D35A93420D2909, 0x8BDD5AD221060842,  // 0x00005B48 
	0x0000000000000000, 0x5A91BDA5B5658C1D, 0x7317529131493149, 0x8399525018840000,  // 0x00005B68 
	0x0000000000000842, 0x4A51ACDF9CA17B59, 0x418B394B20C73149, 0x72D3525008000000,  // 0x00005B88 
	0x0000000000000000, 0x524F945F83DB520D, 0x418B20C520852909, 0x6B15394829061884,  // 0x00005BA8 
	0x0000000000000000, 0x10848BDB83DB5A93, 0x418B290720C528C7, 0x520C418A39482906,  // 0x00005BC8 
	0x0000000000000000, 0x080241CD8BD77317, 0x498B314929090801, 0x520C5A5031084A0C,  // 0x00005BE8 
	0x0000000000000000, 0x000010848C5D7BDD, 0x49CB298B29491042, 0x398841483908418A,  // 0x00005C08 
	0x0000000000000000, 0x00000000949F7BDD, 0x5AD339CD298B0800, 0x18C4524E39483948,  // 0x00005C28 
	0x0000000000000000, 0x000000009C9F7355, 0x6B5931CB398B0000, 0x10823106520C6A8E,  // 0x00005C48 
	0x0000000000000000, 0x000000009C9F7B55, 0x5B155293298B0000, 0x20C439889418BD1C,  // 0x00005C68 
	0x0000000000000000, 0x000000009C9F6A91, 0x6357529329071884, 0x4A0C8BD68BD65A8E,  // 0x00005C88 
	0x0000000000000000, 0x00000000B5659461, 0x418B3149314962D0, 0x83969C5C6B5439CA,  // 0x00005CA8 
	0x0000000000000000, 0x00000000AC9D93DB, 0x731931493949BD5E, 0xA49A83DA52502908,  // 0x00005CC8 
	0x0000000000000000, 0x00000000A4198C1D, 0x521129073149BD1C, 0x945E6B5639CC0842,  // 0x00005CE8 
	0x0000000000000000, 0x00000000B4E38B99, 0x624F394B298BB564, 0x7BDA529229480000,  // 0x00005D08 
	0x0000000000000000, 0x00000000C5EDAD25, 0x6AD331092149A522, 0x6356398C18C40000,  // 0x00005D28 
	0x0000000000000000, 0x000000007B55A49F, 0x51CD418B10C58C1A, 0x6B14424E39CC0000,  // 0x00005D48 
	0x00000000084020C6, 0x418A29069397ACE1, 0x418D394920C78C1C, 0x62D241CA52900000,  // 0x00005D68 
	0x00004A0C83568BD9, 0x9C5BF6EFB49DBD63, 0x93DB4A0D29097B99, 0x63174A0C628E6AD4,  // 0x00005D88 
	0x7B96BD63E623FF6F, 0xF6EDDDA1EEADEEAB, 0xE66BC4E1BCE17317, 0x73198357A4198B98,  // 0x00005DA8 
	0xCDA6B4DFC51FCDA3, 0xCDA5B459CD63AC9D, 0xB49DA4178B9593DB, 0x7B1593956B15398C,  // 0x00005DC8 
	0x9C1C8B558B9993D9, 0x941993D993DB72D3, 0x8B978B957B576A91, 0x73115A93498D6AD6,  // 0x00005DE8 
	0x731473156AD37317, 0x6291624F5291520D, 0x5A4F52915A515A4F, 0x62914A0D2909520C,  // 0x00005E08 
	0x4A0C529141CB3949, 0x398B418B3949418B, 0x418B49CB4A0D398B, 0x418B394B20C741CE,  // 0x00005E28 
	0x0000000000000000, 0x0800318AA4E3E66B, 0x9C59731731491084, 0x0000000000000842,  // 0x00005E48 
	0x0000000000000842, 0x4A0EA4E3EEEBEEAD, 0x9BD7624F39492107, 0x1042000000000840,  // 0x00005E68 
	0x0000000010846B14, 0x9CE1F771CD21E62B, 0x9C1972D14A0D398B, 0x1885084200000000,  // 0x00005E88 
	0x0000000029489C5F, 0xF7B5F6EFDDA3D5E9, 0xACE18B995A4F4A0D, 0x310720C500000000,  // 0x00005EA8 
	0x000021062106C5A5, 0xDDA5E66BE627D5E7, 0xB52193DB72D34A0D, 0x3149290708420000,  // 0x00005EC8 
	0x0842000021069C5B, 0xACA1ACE1A45FA45F, 0x8BDB73175A93398B, 0x2107210708400000,  // 0x00005EE8 
	0x0000000018C441CD, 0x6B577B997B997B59, 0x52915291318918C5, 0x1085104200000000,  // 0x00005F08 
	0x0000000000001084, 0x18C4420D39CB398B, 0x314B210708430840, 0x0000000000000000,  // 0x00005F28 
};

static u8 unaccounted5F48[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx_t _spot07_room_0_vertices_00005F50[4] = 
{
	 { 585, 1236, -1905, 0, -2048, 0, 25, 31, 29, 255 }, // 0x00005F50
	 { 585, 1156, -1905, 0, -2048, 2048, 216, 223, 220, 255 }, // 0x00005F60
	 { 665, 1156, -1905, 0, 2048, 2048, 216, 223, 220, 255 }, // 0x00005F70
	 { 665, 1236, -1905, 0, 2048, 0, 25, 31, 29, 255 }, // 0x00005F80
};

Vtx_t _spot07_room_0_vertices_00005F90[8] = 
{
	 { 585, 1156, -1905, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005F90
	 { 665, 1156, -1905, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005FA0
	 { 585, 1236, -1905, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005FB0
	 { 665, 1236, -1905, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005FC0
	 { 585, 1156, -1905, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005FD0
	 { 665, 1156, -1905, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005FE0
	 { 585, 1236, -1905, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005FF0
	 { 665, 1236, -1905, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006000
};

Gfx _spot07_room_0_dlist_00006010[] =
{
	gsDPPipeSync(), // 0x00006010
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006018
	gsSPVertex(_spot07_room_0_vertices_00005F90, 8, 0), // 0x00006020
	gsSPCullDisplayList(0, 7), // 0x00006028
	gsDPPipeSync(), // 0x00006030
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006038
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006040
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006048
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot07_scene_tex_00008798), // 0x00006050
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 6, 0), // 0x00006058
	gsDPLoadSync(), // 0x00006060
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006068
	gsDPPipeSync(), // 0x00006070
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 1, 6, 0), // 0x00006078
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00006080
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006088
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00006090
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00006098
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x000060A0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000060A8
	gsSPVertex(_spot07_room_0_vertices_00005F50, 4, 0), // 0x000060B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000060B8
	gsSPEndDisplayList(), // 0x000060C0
};

Vtx_t _spot07_room_0_vertices_000060C8[10] = 
{
	 { -161, 1005, -2800, 0, 32, 320, 255, 255, 255, 255 }, // 0x000060C8
	 { 281, 996, -2812, 0, 22, -34, 255, 255, 255, 255 }, // 0x000060D8
	 { 281, 1205, -2776, 0, 51, -30, 255, 255, 255, 255 }, // 0x000060E8
	 { -160, 1178, -2768, 0, 58, 323, 255, 255, 255, 255 }, // 0x000060F8
	 { 280, 1260, -2651, 0, 152, -28, 255, 255, 255, 255 }, // 0x00006108
	 { -162, 1235, -2648, 0, 154, 325, 255, 255, 255, 255 }, // 0x00006118
	 { -158, 1178, -2532, 0, 247, 321, 255, 255, 255, 255 }, // 0x00006128
	 { 242, 1205, -2513, 0, 262, 1, 255, 255, 255, 255 }, // 0x00006138
	 { 241, 996, -2492, 0, 278, -2, 255, 255, 255, 255 }, // 0x00006148
	 { -161, 1005, -2504, 0, 269, 320, 255, 255, 255, 255 }, // 0x00006158
};

Vtx_t _spot07_room_0_vertices_00006168[8] = 
{
	 { -162, 996, -2812, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006168
	 { 281, 996, -2812, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006178
	 { -162, 1260, -2812, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006188
	 { 281, 1260, -2812, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006198
	 { -162, 996, -2492, 0, 0, 0, 0, 0, 0, 0 }, // 0x000061A8
	 { 281, 996, -2492, 0, 0, 0, 0, 0, 0, 0 }, // 0x000061B8
	 { -162, 1260, -2492, 0, 0, 0, 0, 0, 0, 0 }, // 0x000061C8
	 { 281, 1260, -2492, 0, 0, 0, 0, 0, 0, 0 }, // 0x000061D8
};

Gfx _spot07_room_0_dlist_000061E8[] =
{
	gsDPPipeSync(), // 0x000061E8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000061F0
	gsSPVertex(_spot07_room_0_vertices_00006168, 8, 0), // 0x000061F8
	gsSPCullDisplayList(0, 7), // 0x00006200
	gsDPPipeSync(), // 0x00006208
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006210
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006218
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006220
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, 0x08000000), // 0x00006228
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 3, 0, 0, 3, 0), // 0x00006230
	gsDPLoadSync(), // 0x00006238
	gsDPLoadBlock(7, 0, 0, 31, 2048), // 0x00006240
	gsDPPipeSync(), // 0x00006248
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 1, 0, 0, 0, 2, 3, 0, 0, 3, 0), // 0x00006250
	gsDPSetTileSize(0, 0, 0, 28, 28), // 0x00006258
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006260
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00006268
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00006270
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00006278
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006280
	gsSPVertex(_spot07_room_0_vertices_000060C8, 10, 0), // 0x00006288
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006290
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0), // 0x00006298
	gsSP2Triangles(5, 4, 6, 0, 4, 7, 6, 0), // 0x000062A0
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x000062A8
	gsSP2Triangles(9, 8, 1, 0, 9, 1, 0, 0), // 0x000062B0
	gsSP2Triangles(0, 3, 5, 0, 0, 5, 6, 0), // 0x000062B8
	gsSP1Triangle(0, 6, 9, 0), // 0x000062C0
	gsSPEndDisplayList(), // 0x000062C8
};

static u8 unaccounted62D0[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x60, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x61, 0xE8, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};


