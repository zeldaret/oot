#include <ultra64.h>
#include <z64.h>
#include "hakaana_ouke_room_2.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "hakaana_ouke_scene.h"



SCmdAltHeaders _hakaana_ouke_room_2_set0000_cmd00 = { 0x18, 0, (u32)&_hakaana_ouke_room_2_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _hakaana_ouke_room_2_set0000_cmd01 = { 0x16, 0, { 0 }, 0x04 }; // 0x0008
SCmdRoomBehavior _hakaana_ouke_room_2_set0000_cmd02 = { 0x08, 0x00, 0x00000001 }; // 0x0010
SCmdSkyboxDisables _hakaana_ouke_room_2_set0000_cmd03 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0018
SCmdTimeSettings _hakaana_ouke_room_2_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0020
SCmdMesh _hakaana_ouke_room_2_set0000_cmd05 = { 0x0A, 0, (u32)&_hakaana_ouke_room_2_meshHeader_000000A0 }; // 0x0028
SCmdObjectList _hakaana_ouke_room_2_set0000_cmd06 = { 0x0B, 0x07, (u32)_hakaana_ouke_room_2_objectList_0000005C }; // 0x0030
SCmdActorList _hakaana_ouke_room_2_set0000_cmd07 = { 0x01, 0x03, (u32)_hakaana_ouke_room_2_actorList_0000006C }; // 0x0038
SCmdEndMarker _hakaana_ouke_room_2_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _hakaana_ouke_room_2_alternateHeaders_00000048[] = 
{
	0,
	0,
	0,
	(u32)&_hakaana_ouke_room_2_set00C0_cmd00,
	(u32)&_hakaana_ouke_room_2_set0140_cmd00,
};

s16 _hakaana_ouke_room_2_objectList_0000005C[] = 
{
	OBJECT_HAKACH_OBJECTS,
	OBJECT_RD,
	OBJECT_SYOKUDAI,
	OBJECT_FIREFLY,
	OBJECT_BOX,
	OBJECT_EFC_FLASH,
	OBJECT_OUKE_HAKA,
};

ActorEntry _hakaana_ouke_room_2_actorList_0000006C[3] = 
{
	{ ACTOR_EN_OKARINA_TAG, 0, 127, -1200, 0, 0, 0, 0x17FF }, //0x0000006C 
	{ ACTOR_OBJ_SYOKUDAI, 60, 60, -1112, 0, 0, 0, 0x2400 }, //0x0000007C 
	{ ACTOR_OBJ_SYOKUDAI, -60, 60, -1112, 0, 0, 0, 0x2400 }, //0x0000008C 
};

static u32 pad9C = 0;

MeshHeader0 _hakaana_ouke_room_2_meshHeader_000000A0 = { { 0 }, 0x01, (u32)&_hakaana_ouke_room_2_meshDListEntry_000000AC, (u32)&(_hakaana_ouke_room_2_meshDListEntry_000000AC) + sizeof(_hakaana_ouke_room_2_meshDListEntry_000000AC) };

MeshEntry0 _hakaana_ouke_room_2_meshDListEntry_000000AC[1] = 
{
	{ (u32)_hakaana_ouke_room_2_dlist_00002738, (u32)_hakaana_ouke_room_2_dlist_000050F8 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.
static u32 padB8 = 0;
static u32 padBC = 0;

SCmdEchoSettings _hakaana_ouke_room_2_set00C0_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x00C0
SCmdRoomBehavior _hakaana_ouke_room_2_set00C0_cmd01 = { 0x08, 0x00, 0x00000001 }; // 0x00C8
SCmdSkyboxDisables _hakaana_ouke_room_2_set00C0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x00D0
SCmdTimeSettings _hakaana_ouke_room_2_set00C0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x00D8
SCmdMesh _hakaana_ouke_room_2_set00C0_cmd04 = { 0x0A, 0, (u32)&_hakaana_ouke_room_2_meshHeader_000000A0 }; // 0x00E0
SCmdObjectList _hakaana_ouke_room_2_set00C0_cmd05 = { 0x0B, 0x04, (u32)_hakaana_ouke_room_2_objectList_00000100 }; // 0x00E8
SCmdActorList _hakaana_ouke_room_2_set00C0_cmd06 = { 0x01, 0x03, (u32)_hakaana_ouke_room_2_actorList_00000108 }; // 0x00F0
SCmdEndMarker _hakaana_ouke_room_2_set00C0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x00F8
s16 _hakaana_ouke_room_2_objectList_00000100[] = 
{
	OBJECT_DDAN_OBJECTS,
	OBJECT_RD,
	OBJECT_SYOKUDAI,
	OBJECT_FIREFLY,
};

ActorEntry _hakaana_ouke_room_2_actorList_00000108[3] = 
{
	{ ACTOR_OBJ_SYOKUDAI, 60, 60, -1112, 0, 0, 0, 0x2400 }, //0x00000108 
	{ ACTOR_OBJ_SYOKUDAI, -60, 60, -1112, 0, 0, 0, 0x2400 }, //0x00000118 
	{ ACTOR_EN_OKARINA_TAG, -1, 172, -1202, 0, 0, 0, 0x17FF }, //0x00000128 
};

static u32 pad138 = 0;
static u32 pad13C = 0;

SCmdEchoSettings _hakaana_ouke_room_2_set0140_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0140
SCmdRoomBehavior _hakaana_ouke_room_2_set0140_cmd01 = { 0x08, 0x00, 0x00000001 }; // 0x0148
SCmdSkyboxDisables _hakaana_ouke_room_2_set0140_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0150
SCmdTimeSettings _hakaana_ouke_room_2_set0140_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0158
SCmdMesh _hakaana_ouke_room_2_set0140_cmd04 = { 0x0A, 0, (u32)&_hakaana_ouke_room_2_meshHeader_000000A0 }; // 0x0160
SCmdObjectList _hakaana_ouke_room_2_set0140_cmd05 = { 0x0B, 0x04, (u32)_hakaana_ouke_room_2_objectList_00000180 }; // 0x0168
SCmdActorList _hakaana_ouke_room_2_set0140_cmd06 = { 0x01, 0x03, (u32)_hakaana_ouke_room_2_actorList_00000188 }; // 0x0170
SCmdEndMarker _hakaana_ouke_room_2_set0140_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0178
s16 _hakaana_ouke_room_2_objectList_00000180[] = 
{
	OBJECT_DDAN_OBJECTS,
	OBJECT_RD,
	OBJECT_SYOKUDAI,
	OBJECT_FIREFLY,
};

ActorEntry _hakaana_ouke_room_2_actorList_00000188[3] = 
{
	{ ACTOR_OBJ_SYOKUDAI, 60, 60, -1112, 0, 0, 0, 0x2400 }, //0x00000188 
	{ ACTOR_OBJ_SYOKUDAI, -60, 60, -1112, 0, 0, 0, 0x2400 }, //0x00000198 
	{ ACTOR_EN_OKARINA_TAG, -1, 172, -1202, 0, 0, 0, 0x17FF }, //0x000001A8 
};

static u32 pad1B8 = 0;
static u32 pad1BC = 0;

Vtx_t _hakaana_ouke_room_2_vertices_000001C0[10] = 
{
	 { -64, 172, -1202, 0, -1511, 1024, 89, 89, 89, 255 }, // 0x000001C0
	 { 64, 172, -1202, 0, 2048, 1024, 89, 89, 89, 255 }, // 0x000001D0
	 { 64, 172, -1222, 0, 2048, 512, 89, 89, 89, 255 }, // 0x000001E0
	 { -64, 172, -1222, 0, -1511, 512, 89, 89, 89, 255 }, // 0x000001F0
	 { 80, 60, -1202, 0, 5021, 7788, 106, 141, 199, 255 }, // 0x00000200
	 { 64, 172, -1202, 0, 4871, 43, 89, 89, 89, 255 }, // 0x00000210
	 { 54, 155, -1202, 0, 4096, 1024, 89, 89, 89, 255 }, // 0x00000220
	 { 65, 60, -1202, 0, 4096, 7685, 106, 141, 199, 255 }, // 0x00000230
	 { 0, 172, -1202, 0, 782, -412, 89, 89, 89, 255 }, // 0x00000240
	 { 11, 155, -1202, 0, 1351, 719, 89, 89, 89, 255 }, // 0x00000250
};

Vtx_t _hakaana_ouke_room_2_vertices_00000260[3] = 
{
	 { 0, 172, -1202, 0, 823, 10, 254, 254, 15, 255 }, // 0x00000260
	 { -4, 165, -1202, 0, 391, 920, 255, 255, 255, 255 }, // 0x00000270
	 { 4, 165, -1202, 0, 1254, 920, 255, 255, 255, 255 }, // 0x00000280
};

Vtx_t _hakaana_ouke_room_2_vertices_00000290[3] = 
{
	 { -4, 165, -1202, 0, 460, -20, 89, 89, 89, 255 }, // 0x00000290
	 { 0, 159, -1202, 0, 688, 432, 89, 89, 89, 255 }, // 0x000002A0
	 { 4, 165, -1202, 0, 1009, 41, 89, 89, 89, 255 }, // 0x000002B0
};

Vtx_t _hakaana_ouke_room_2_vertices_000002C0[5] = 
{
	 { -4, 165, -1202, 0, 391, 920, 255, 255, 255, 255 }, // 0x000002C0
	 { -9, 159, -1202, 0, -40, 1945, 254, 254, 15, 255 }, // 0x000002D0
	 { 0, 159, -1202, 0, 822, 1945, 255, 255, 255, 255 }, // 0x000002E0
	 { 9, 159, -1202, 0, 1685, 1945, 254, 254, 15, 255 }, // 0x000002F0
	 { 4, 165, -1202, 0, 1254, 920, 255, 255, 255, 255 }, // 0x00000300
};

Vtx_t _hakaana_ouke_room_2_vertices_00000310[17] = 
{
	 { -9, 159, -1202, 0, 139, 371, 89, 89, 89, 255 }, // 0x00000310
	 { -11, 155, -1202, 0, -22, 567, 89, 89, 89, 255 }, // 0x00000320
	 { 11, 155, -1202, 0, 1351, 719, 89, 89, 89, 255 }, // 0x00000330
	 { 9, 159, -1202, 0, 1237, 493, 89, 89, 89, 255 }, // 0x00000340
	 { 0, 172, -1202, 0, 782, -412, 89, 89, 89, 255 }, // 0x00000350
	 { -64, 172, -1202, 0, -3307, -867, 89, 89, 89, 255 }, // 0x00000360
	 { -54, 155, -1202, 0, -2767, 262, 89, 89, 89, 255 }, // 0x00000370
	 { -80, 60, -1202, 0, -5156, 6655, 106, 141, 199, 255 }, // 0x00000380
	 { -65, 60, -1202, 0, -4231, 6758, 106, 141, 199, 255 }, // 0x00000390
	 { 80, 60, -1222, 0, 551, 1024, 106, 141, 199, 255 }, // 0x000003A0
	 { 64, 172, -1222, 0, 551, -2292, 89, 89, 89, 255 }, // 0x000003B0
	 { 64, 172, -1202, 0, 0, -2292, 89, 89, 89, 255 }, // 0x000003C0
	 { 80, 60, -1202, 0, 0, 1024, 11, 22, 39, 255 }, // 0x000003D0
	 { -80, 60, -1202, 0, 538, 1024, 11, 22, 39, 255 }, // 0x000003E0
	 { -64, 172, -1202, 0, 538, -2219, 89, 89, 89, 255 }, // 0x000003F0
	 { -64, 172, -1222, 0, 0, -2219, 89, 89, 89, 255 }, // 0x00000400
	 { -80, 60, -1222, 0, 0, 1024, 106, 141, 199, 255 }, // 0x00000410
};

Vtx_t _hakaana_ouke_room_2_vertices_00000420[4] = 
{
	 { -40, 100, -1202, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00000420
	 { 40, 100, -1202, 0, 4096, 1024, 255, 255, 255, 255 }, // 0x00000430
	 { 40, 140, -1202, 0, 4096, -322, 255, 255, 255, 255 }, // 0x00000440
	 { -40, 140, -1202, 0, 0, -322, 255, 255, 255, 255 }, // 0x00000450
};

Vtx_t _hakaana_ouke_room_2_vertices_00000460[8] = 
{
	 { -65, 60, -1202, 0, 3105, 152, 96, 160, 255, 255 }, // 0x00000460
	 { 65, 60, -1202, 0, -1488, 144, 96, 160, 255, 255 }, // 0x00000470
	 { 40, 100, -1202, 0, -596, 902, 255, 255, 255, 255 }, // 0x00000480
	 { -40, 100, -1202, 0, 2211, 907, 255, 255, 255, 255 }, // 0x00000490
	 { -54, 155, -1202, 0, 2699, 1956, 89, 89, 89, 255 }, // 0x000004A0
	 { -40, 140, -1202, 0, 2210, 1664, 255, 255, 255, 255 }, // 0x000004B0
	 { 40, 140, -1202, 0, -597, 1659, 255, 255, 255, 255 }, // 0x000004C0
	 { 54, 155, -1202, 0, -1086, 1949, 89, 89, 89, 255 }, // 0x000004D0
};

Vtx_t _hakaana_ouke_room_2_vertices_000004E0[8] = 
{
	 { -80, 60, -1222, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004E0
	 { 80, 60, -1222, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004F0
	 { -80, 172, -1222, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000500
	 { 80, 172, -1222, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000510
	 { -80, 60, -1202, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000520
	 { 80, 60, -1202, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000530
	 { -80, 172, -1202, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000540
	 { 80, 172, -1202, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000550
};

Gfx _hakaana_ouke_room_2_dlist_00000560[] =
{
	gsDPPipeSync(), // 0x00000560
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000568
	gsSPVertex(_hakaana_ouke_room_2_vertices_000004E0, 8, 0), // 0x00000570
	gsSPCullDisplayList(0, 7), // 0x00000578
	gsDPPipeSync(), // 0x00000580
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000588
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000590
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000598
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00003F78), // 0x000005A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000005A8
	gsDPLoadSync(), // 0x000005B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000005B8
	gsDPPipeSync(), // 0x000005C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000005C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000005D0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000005D8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000005E0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000005E8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000005F0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000005F8
	gsSPVertex(_hakaana_ouke_room_2_vertices_000001C0, 10, 0), // 0x00000600
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000608
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000610
	gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0), // 0x00000618
	gsDPPipeSync(), // 0x00000620
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00004778), // 0x00000628
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000630
	gsDPLoadSync(), // 0x00000638
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000640
	gsDPPipeSync(), // 0x00000648
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000650
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000658
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00000660
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000260, 3, 0), // 0x00000668
	gsSP1Triangle(0, 1, 2, 0), // 0x00000670
	gsDPPipeSync(), // 0x00000678
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00003F78), // 0x00000680
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000688
	gsDPLoadSync(), // 0x00000690
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000698
	gsDPPipeSync(), // 0x000006A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000006A8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000006B0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000006B8
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000290, 3, 0), // 0x000006C0
	gsSP1Triangle(0, 1, 2, 0), // 0x000006C8
	gsDPPipeSync(), // 0x000006D0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00004778), // 0x000006D8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000006E0
	gsDPLoadSync(), // 0x000006E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000006F0
	gsDPPipeSync(), // 0x000006F8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000700
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000708
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00000710
	gsSPVertex(_hakaana_ouke_room_2_vertices_000002C0, 5, 0), // 0x00000718
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0), // 0x00000720
	gsDPPipeSync(), // 0x00000728
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00003F78), // 0x00000730
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000738
	gsDPLoadSync(), // 0x00000740
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000748
	gsDPPipeSync(), // 0x00000750
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000758
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000760
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000768
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000310, 17, 0), // 0x00000770
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000778
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 1, 0), // 0x00000780
	gsSP2Triangles(6, 5, 7, 0, 6, 7, 8, 0), // 0x00000788
	gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0), // 0x00000790
	gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0), // 0x00000798
	gsDPPipeSync(), // 0x000007A0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00002778), // 0x000007A8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 7, 0), // 0x000007B0
	gsDPLoadSync(), // 0x000007B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000007C0
	gsDPPipeSync(), // 0x000007C8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 5, 0, 0, 7, 0), // 0x000007D0
	gsDPSetTileSize(0, 0, 0, 508, 124), // 0x000007D8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000007E0
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000420, 4, 0), // 0x000007E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000007F0
	gsDPPipeSync(), // 0x000007F8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00004778), // 0x00000800
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000808
	gsDPLoadSync(), // 0x00000810
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000818
	gsDPPipeSync(), // 0x00000820
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000828
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000830
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000460, 8, 0), // 0x00000838
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000840
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000848
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00000850
	gsSP2Triangles(2, 1, 7, 0, 2, 7, 6, 0), // 0x00000858
	gsSPEndDisplayList(), // 0x00000860
};

Vtx_t _hakaana_ouke_room_2_vertices_00000868[4] = 
{
	 { 108, 40, -1222, 0, 5322, 6971, 255, 255, 255, 255 }, // 0x00000868
	 { 138, 275, -1222, 0, 6507, 1024, 114, 114, 114, 255 }, // 0x00000878
	 { -138, 275, -1222, 0, -4168, 1024, 114, 114, 114, 255 }, // 0x00000888
	 { -108, 40, -1222, 0, -2983, 6971, 255, 255, 255, 255 }, // 0x00000898
};

Vtx_t _hakaana_ouke_room_2_vertices_000008A8[16] = 
{
	 { 138, 275, -1222, 0, 3600, 1024, 114, 114, 114, 255 }, // 0x000008A8
	 { 138, 308, -1222, 0, 3600, 206, 12, 12, 12, 255 }, // 0x000008B8
	 { -138, 308, -1222, 0, -2088, 206, 12, 12, 12, 255 }, // 0x000008C8
	 { -138, 275, -1222, 0, -2088, 1024, 114, 114, 114, 255 }, // 0x000008D8
	 { 124, 40, -1242, 0, 1024, 1024, 11, 22, 39, 255 }, // 0x000008E8
	 { 159, 275, -1242, 0, 1024, -3456, 114, 114, 114, 255 }, // 0x000008F8
	 { 138, 275, -1222, 0, 0, -3456, 114, 114, 114, 255 }, // 0x00000908
	 { 108, 40, -1222, 0, 0, 1024, 11, 22, 39, 255 }, // 0x00000918
	 { 159, 308, -1242, 0, 1024, -4096, 12, 12, 12, 255 }, // 0x00000928
	 { 138, 308, -1222, 0, 0, -4096, 12, 12, 12, 255 }, // 0x00000938
	 { -108, 40, -1222, 0, 1024, 1024, 11, 22, 39, 255 }, // 0x00000948
	 { -138, 275, -1222, 0, 1024, -3456, 114, 114, 114, 255 }, // 0x00000958
	 { -159, 275, -1242, 0, 0, -3456, 114, 114, 114, 255 }, // 0x00000968
	 { -124, 40, -1242, 0, 0, 1024, 11, 22, 39, 255 }, // 0x00000978
	 { -138, 308, -1222, 0, 1024, -4096, 12, 12, 12, 255 }, // 0x00000988
	 { -159, 308, -1242, 0, 0, -4096, 12, 12, 12, 255 }, // 0x00000998
};

Vtx_t _hakaana_ouke_room_2_vertices_000009A8[8] = 
{
	 { -159, 40, -1242, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009A8
	 { 159, 40, -1242, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009B8
	 { -159, 308, -1242, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009C8
	 { 159, 308, -1242, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009D8
	 { -159, 40, -1222, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009E8
	 { 159, 40, -1222, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009F8
	 { -159, 308, -1222, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A08
	 { 159, 308, -1222, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A18
};

Gfx _hakaana_ouke_room_2_dlist_00000A28[] =
{
	gsDPPipeSync(), // 0x00000A28
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000A30
	gsSPVertex(_hakaana_ouke_room_2_vertices_000009A8, 8, 0), // 0x00000A38
	gsSPCullDisplayList(0, 7), // 0x00000A40
	gsDPPipeSync(), // 0x00000A48
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000A50
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000A58
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000A60
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00003778), // 0x00000A68
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 7, 0), // 0x00000A70
	gsDPLoadSync(), // 0x00000A78
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000A80
	gsDPPipeSync(), // 0x00000A88
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 5, 0, 0, 7, 0), // 0x00000A90
	gsDPSetTileSize(0, 0, 0, 508, 124), // 0x00000A98
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000AA0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00000AA8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000AB0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000AB8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000AC0
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000868, 4, 0), // 0x00000AC8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000AD0
	gsDPPipeSync(), // 0x00000AD8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00003F78), // 0x00000AE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000AE8
	gsDPLoadSync(), // 0x00000AF0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000AF8
	gsDPPipeSync(), // 0x00000B00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000B08
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000B10
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000B18
	gsSPVertex(_hakaana_ouke_room_2_vertices_000008A8, 16, 0), // 0x00000B20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000B28
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000B30
	gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0), // 0x00000B38
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00000B40
	gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0), // 0x00000B48
	gsSPEndDisplayList(), // 0x00000B50
};

Vtx_t _hakaana_ouke_room_2_vertices_00000B58[4] = 
{
	 { -80, 60, -1202, 0, -4096, -3150, 255, 255, 255, 255 }, // 0x00000B58
	 { -40, 60, -1141, 0, -2048, 0, 255, 255, 255, 255 }, // 0x00000B68
	 { 40, 60, -1141, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00000B78
	 { 80, 60, -1202, 0, 4096, -3150, 255, 255, 255, 255 }, // 0x00000B88
};

Vtx_t _hakaana_ouke_room_2_vertices_00000B98[4] = 
{
	 { -80, 40, -1222, 0, 10240, 2048, 96, 160, 255, 255 }, // 0x00000B98
	 { -80, 60, -1222, 0, 10240, 0, 255, 255, 255, 255 }, // 0x00000BA8
	 { 80, 60, -1222, 0, -6144, 0, 255, 255, 255, 255 }, // 0x00000BB8
	 { 80, 40, -1222, 0, -6144, 2048, 96, 160, 255, 255 }, // 0x00000BC8
};

Vtx_t _hakaana_ouke_room_2_vertices_00000BD8[4] = 
{
	 { -40, 47, -1121, 0, -2048, 1024, 255, 255, 255, 255 }, // 0x00000BD8
	 { -40, 47, -1101, 0, -2048, 2048, 255, 255, 255, 255 }, // 0x00000BE8
	 { 40, 47, -1101, 0, 2048, 2048, 255, 255, 255, 255 }, // 0x00000BF8
	 { 40, 47, -1121, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00000C08
};

Vtx_t _hakaana_ouke_room_2_vertices_00000C18[8] = 
{
	 { 40, 40, -1101, 0, 8192, 2048, 96, 160, 255, 255 }, // 0x00000C18
	 { 40, 47, -1101, 0, 8192, 1365, 255, 255, 255, 255 }, // 0x00000C28
	 { -40, 47, -1101, 0, 0, 1365, 255, 255, 255, 255 }, // 0x00000C38
	 { -40, 40, -1101, 0, 0, 2048, 96, 160, 255, 255 }, // 0x00000C48
	 { 40, 47, -1121, 0, 8192, 2048, 96, 160, 255, 255 }, // 0x00000C58
	 { 40, 53, -1121, 0, 8192, 1365, 255, 255, 255, 255 }, // 0x00000C68
	 { -40, 53, -1121, 0, 0, 1365, 255, 255, 255, 255 }, // 0x00000C78
	 { -40, 47, -1121, 0, 0, 2048, 96, 160, 255, 255 }, // 0x00000C88
};

Vtx_t _hakaana_ouke_room_2_vertices_00000C98[8] = 
{
	 { -40, 53, -1141, 0, -2048, 0, 255, 255, 255, 255 }, // 0x00000C98
	 { -40, 53, -1121, 0, -2048, 1024, 255, 255, 255, 255 }, // 0x00000CA8
	 { 40, 53, -1121, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00000CB8
	 { 40, 53, -1141, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00000CC8
	 { 80, 60, -1085, 0, 4096, 2848, 255, 255, 255, 255 }, // 0x00000CD8
	 { 80, 60, -1202, 0, 4096, -3150, 255, 255, 255, 255 }, // 0x00000CE8
	 { 40, 60, -1141, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00000CF8
	 { 40, 60, -1085, 0, 2048, 2848, 255, 255, 255, 255 }, // 0x00000D08
};

Vtx_t _hakaana_ouke_room_2_vertices_00000D18[11] = 
{
	 { 40, 40, -1085, 0, 0, 2048, 42, 127, 255, 255 }, // 0x00000D18
	 { 40, 60, -1085, 0, 0, 0, 255, 255, 255, 255 }, // 0x00000D28
	 { 40, 60, -1141, 0, 4096, 0, 255, 255, 255, 255 }, // 0x00000D38
	 { 40, 40, -1141, 0, 4096, 2048, 96, 160, 255, 255 }, // 0x00000D48
	 { 80, 40, -1085, 0, 4096, 2048, 96, 160, 255, 255 }, // 0x00000D58
	 { 80, 60, -1085, 0, 4096, 0, 216, 216, 216, 255 }, // 0x00000D68
	 { 40, 40, -1085, 0, 0, 2048, 96, 160, 255, 255 }, // 0x00000D78
	 { 80, 40, -1222, 0, 10240, 2048, 96, 160, 255, 255 }, // 0x00000D88
	 { 80, 60, -1222, 0, 10240, 0, 178, 178, 178, 255 }, // 0x00000D98
	 { 80, 60, -1085, 0, -6144, 0, 178, 178, 178, 255 }, // 0x00000DA8
	 { 80, 40, -1085, 0, -6144, 2048, 42, 127, 255, 255 }, // 0x00000DB8
};

Vtx_t _hakaana_ouke_room_2_vertices_00000DC8[4] = 
{
	 { -40, 60, -1085, 0, -2048, 2848, 255, 255, 255, 255 }, // 0x00000DC8
	 { -40, 60, -1141, 0, -2048, 0, 255, 255, 255, 255 }, // 0x00000DD8
	 { -80, 60, -1202, 0, -4096, -3150, 255, 255, 255, 255 }, // 0x00000DE8
	 { -80, 60, -1085, 0, -4096, 2848, 255, 255, 255, 255 }, // 0x00000DF8
};

Vtx_t _hakaana_ouke_room_2_vertices_00000E08[16] = 
{
	 { -40, 40, -1141, 0, 4096, 2048, 96, 160, 255, 255 }, // 0x00000E08
	 { -40, 60, -1141, 0, 4096, 0, 255, 255, 255, 255 }, // 0x00000E18
	 { -40, 60, -1085, 0, 0, 0, 255, 255, 255, 255 }, // 0x00000E28
	 { -40, 40, -1085, 0, 0, 2048, 42, 127, 255, 255 }, // 0x00000E38
	 { -40, 40, -1085, 0, 4096, 2048, 96, 160, 255, 255 }, // 0x00000E48
	 { -40, 60, -1085, 0, 4096, 0, 255, 255, 255, 255 }, // 0x00000E58
	 { -80, 60, -1085, 0, 0, 0, 216, 216, 216, 255 }, // 0x00000E68
	 { -80, 40, -1085, 0, 0, 2048, 96, 160, 255, 255 }, // 0x00000E78
	 { -80, 60, -1222, 0, -6144, 0, 178, 178, 178, 255 }, // 0x00000E88
	 { -80, 40, -1222, 0, -6144, 2048, 96, 160, 255, 255 }, // 0x00000E98
	 { -80, 40, -1085, 0, 10240, 2048, 42, 127, 255, 255 }, // 0x00000EA8
	 { -80, 60, -1085, 0, 10240, 0, 178, 178, 178, 255 }, // 0x00000EB8
	 { -40, 60, -1141, 0, 0, 0, 255, 255, 255, 255 }, // 0x00000EC8
	 { -40, 53, -1141, 0, 0, 682, 96, 160, 255, 255 }, // 0x00000ED8
	 { 40, 53, -1141, 0, 8192, 682, 96, 160, 255, 255 }, // 0x00000EE8
	 { 40, 60, -1141, 0, 8192, 0, 255, 255, 255, 255 }, // 0x00000EF8
};

Vtx_t _hakaana_ouke_room_2_vertices_00000F08[8] = 
{
	 { -80, 40, -1222, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000F08
	 { 80, 40, -1222, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000F18
	 { -80, 60, -1222, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000F28
	 { 80, 60, -1222, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000F38
	 { -80, 40, -1085, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000F48
	 { 80, 40, -1085, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000F58
	 { -80, 60, -1085, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000F68
	 { 80, 60, -1085, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000F78
};

Gfx _hakaana_ouke_room_2_dlist_00000F88[] =
{
	gsDPPipeSync(), // 0x00000F88
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000F90
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000F08, 8, 0), // 0x00000F98
	gsSPCullDisplayList(0, 7), // 0x00000FA0
	gsDPPipeSync(), // 0x00000FA8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000FB0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000FB8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000FC0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_scene_tex_000042E0), // 0x00000FC8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000FD0
	gsDPLoadSync(), // 0x00000FD8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000FE0
	gsDPPipeSync(), // 0x00000FE8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000FF0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000FF8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001000
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001008
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001010
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001018
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001020
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000B58, 4, 0), // 0x00001028
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001030
	gsDPPipeSync(), // 0x00001038
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00004778), // 0x00001040
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001048
	gsDPLoadSync(), // 0x00001050
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001058
	gsDPPipeSync(), // 0x00001060
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001068
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001070
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000B98, 4, 0), // 0x00001078
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001080
	gsDPPipeSync(), // 0x00001088
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_scene_tex_000042E0), // 0x00001090
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001098
	gsDPLoadSync(), // 0x000010A0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000010A8
	gsDPPipeSync(), // 0x000010B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000010B8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000010C0
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000BD8, 4, 0), // 0x000010C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000010D0
	gsDPPipeSync(), // 0x000010D8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00004778), // 0x000010E0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000010E8
	gsDPLoadSync(), // 0x000010F0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000010F8
	gsDPPipeSync(), // 0x00001100
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001108
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001110
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000C18, 8, 0), // 0x00001118
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001120
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001128
	gsDPPipeSync(), // 0x00001130
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_scene_tex_000042E0), // 0x00001138
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001140
	gsDPLoadSync(), // 0x00001148
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001150
	gsDPPipeSync(), // 0x00001158
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001160
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001168
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000C98, 8, 0), // 0x00001170
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001178
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001180
	gsDPPipeSync(), // 0x00001188
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00004778), // 0x00001190
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001198
	gsDPLoadSync(), // 0x000011A0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000011A8
	gsDPPipeSync(), // 0x000011B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000011B8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000011C0
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000D18, 11, 0), // 0x000011C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000011D0
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 6, 0), // 0x000011D8
	gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0), // 0x000011E0
	gsDPPipeSync(), // 0x000011E8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_scene_tex_000042E0), // 0x000011F0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000011F8
	gsDPLoadSync(), // 0x00001200
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001208
	gsDPPipeSync(), // 0x00001210
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001218
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001220
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000DC8, 4, 0), // 0x00001228
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001230
	gsDPPipeSync(), // 0x00001238
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00004778), // 0x00001240
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001248
	gsDPLoadSync(), // 0x00001250
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001258
	gsDPPipeSync(), // 0x00001260
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001268
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001270
	gsSPVertex(_hakaana_ouke_room_2_vertices_00000E08, 16, 0), // 0x00001278
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001280
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001288
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001290
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001298
	gsSPEndDisplayList(), // 0x000012A0
};

Vtx_t _hakaana_ouke_room_2_vertices_000012A8[18] = 
{
	 { -200, -5, -986, 0, -982, 941, 10, 91, 75, 255 }, // 0x000012A8
	 { -133, -5, -896, 0, -223, 977, 151, 255, 172, 255 }, // 0x000012B8
	 { -66, -5, -864, 0, 641, 260, 151, 255, 172, 255 }, // 0x000012C8
	 { -40, -5, -986, 0, 747, -493, 10, 91, 75, 255 }, // 0x000012D8
	 { -123, -5, -782, 0, 536, 1012, 205, 255, 225, 255 }, // 0x000012E8
	 { -200, -5, -640, 0, 324, 2516, 10, 91, 75, 255 }, // 0x000012F8
	 { -167, -5, -754, 0, 430, 1764, 151, 255, 172, 255 }, // 0x00001308
	 { -40, -5, -640, 0, 2053, 1082, 10, 91, 75, 255 }, // 0x00001318
	 { -95, -5, -710, 0, 1294, 1047, 151, 255, 172, 255 }, // 0x00001328
	 { 40, -5, -986, 0, -982, 941, 10, 91, 75, 255 }, // 0x00001338
	 { 65, -5, -897, 0, -223, 977, 151, 255, 172, 255 }, // 0x00001348
	 { 174, -5, -864, 0, 641, 260, 151, 255, 172, 255 }, // 0x00001358
	 { 200, -5, -986, 0, 747, -493, 10, 91, 75, 255 }, // 0x00001368
	 { 102, -5, -811, 0, 536, 1012, 205, 255, 225, 255 }, // 0x00001378
	 { 40, -5, -640, 0, 324, 2516, 10, 91, 75, 255 }, // 0x00001388
	 { 80, -5, -696, 0, 430, 1764, 151, 255, 172, 255 }, // 0x00001398
	 { 200, -5, -640, 0, 2053, 1082, 10, 91, 75, 255 }, // 0x000013A8
	 { 160, -5, -726, 0, 1294, 1047, 151, 255, 172, 255 }, // 0x000013B8
};

Vtx_t _hakaana_ouke_room_2_vertices_000013C8[8] = 
{
	 { -200, -5, -986, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013C8
	 { 200, -5, -986, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013D8
	 { -200, -5, -986, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013E8
	 { 200, -5, -986, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013F8
	 { -200, -5, -640, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001408
	 { 200, -5, -640, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001418
	 { -200, -5, -640, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001428
	 { 200, -5, -640, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001438
};

Gfx _hakaana_ouke_room_2_dlist_00001448[] =
{
	gsDPPipeSync(), // 0x00001448
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001450
	gsSPVertex(_hakaana_ouke_room_2_vertices_000013C8, 8, 0), // 0x00001458
	gsSPCullDisplayList(0, 7), // 0x00001460
	gsDPPipeSync(), // 0x00001468
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001470
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001478
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001480
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00002F78), // 0x00001488
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 15, 0, 5, 15), // 0x00001490
	gsDPLoadSync(), // 0x00001498
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000014A0
	gsDPPipeSync(), // 0x000014A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 15, 0, 5, 15), // 0x000014B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000014B8
	gsDPTileSync(), // 0x000014C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 1, 0, 0, 5, 1, 0, 5, 1), // 0x000014C8
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x000014D0
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000014D8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000014E0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000014E8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000014F0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000014F8
	gsSPDisplayList(0x0A000000), // 0x00001500
	gsSPVertex(_hakaana_ouke_room_2_vertices_000012A8, 18, 0), // 0x00001508
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001510
	gsSP2Triangles(1, 4, 2, 0, 0, 5, 6, 0), // 0x00001518
	gsSP2Triangles(0, 6, 1, 0, 6, 4, 1, 0), // 0x00001520
	gsSP2Triangles(5, 7, 8, 0, 5, 8, 6, 0), // 0x00001528
	gsSP2Triangles(8, 4, 6, 0, 7, 3, 2, 0), // 0x00001530
	gsSP2Triangles(7, 2, 8, 0, 2, 4, 8, 0), // 0x00001538
	gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0), // 0x00001540
	gsSP2Triangles(10, 13, 11, 0, 9, 14, 15, 0), // 0x00001548
	gsSP2Triangles(9, 15, 10, 0, 15, 13, 10, 0), // 0x00001550
	gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0), // 0x00001558
	gsSP2Triangles(17, 13, 15, 0, 16, 12, 11, 0), // 0x00001560
	gsSP2Triangles(16, 11, 17, 0, 11, 13, 17, 0), // 0x00001568
	gsSPEndDisplayList(), // 0x00001570
};

Vtx_t _hakaana_ouke_room_2_vertices_00001578[32] = 
{
	 { -40, 0, -640, 0, 0, 2048, 104, 140, 150, 255 }, // 0x00001578
	 { -40, 0, -420, 0, 0, 7168, 0, 0, 0, 255 }, // 0x00001588
	 { 0, 0, -420, 0, 1024, 7168, 0, 0, 0, 255 }, // 0x00001598
	 { 0, 0, -640, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x000015A8
	 { 40, 0, -420, 0, 2048, 7168, 0, 0, 0, 255 }, // 0x000015B8
	 { 40, 0, -640, 0, 2048, 2048, 104, 140, 150, 255 }, // 0x000015C8
	 { 0, 40, -1046, 0, 1024, -13460, 255, 255, 255, 255 }, // 0x000015D8
	 { 200, 40, -1046, 0, 6144, -13460, 153, 153, 153, 255 }, // 0x000015E8
	 { 200, 40, -1242, 0, 6144, -18484, 153, 153, 153, 255 }, // 0x000015F8
	 { 0, 40, -1242, 0, 1024, -18484, 255, 255, 255, 255 }, // 0x00001608
	 { -200, 40, -1242, 0, -4096, -18484, 114, 114, 114, 255 }, // 0x00001618
	 { -200, 40, -1046, 0, -4096, -13460, 153, 153, 153, 255 }, // 0x00001628
	 { 40, 0, -640, 0, 2048, -8192, 255, 255, 255, 255 }, // 0x00001638
	 { 40, -10, -640, 0, 2048, -8192, 255, 255, 255, 255 }, // 0x00001648
	 { 40, -10, -986, 0, 2048, -11924, 255, 255, 255, 255 }, // 0x00001658
	 { 40, 0, -986, 0, 2048, -11924, 255, 255, 255, 255 }, // 0x00001668
	 { -40, 0, -986, 0, 0, -11924, 255, 255, 255, 255 }, // 0x00001678
	 { -40, -10, -986, 0, 0, -11924, 255, 255, 255, 255 }, // 0x00001688
	 { -40, -10, -640, 0, 0, -8192, 255, 255, 255, 255 }, // 0x00001698
	 { -40, 0, -640, 0, 0, -8192, 255, 255, 255, 255 }, // 0x000016A8
	 { -40, 0, -640, 0, 0, 2048, 255, 255, 255, 255 }, // 0x000016B8
	 { 40, 0, -640, 0, 2048, 2048, 153, 153, 153, 255 }, // 0x000016C8
	 { 40, 0, -986, 0, 2048, -6804, 153, 153, 153, 255 }, // 0x000016D8
	 { -40, 0, -986, 0, 0, -6804, 255, 255, 255, 255 }, // 0x000016E8
	 { 40, -10, -640, 0, 2048, 2048, 106, 141, 199, 255 }, // 0x000016F8
	 { 200, -10, -640, 0, 6144, 2048, 153, 153, 153, 255 }, // 0x00001708
	 { 200, -10, -986, 0, 6144, -6804, 153, 153, 153, 255 }, // 0x00001718
	 { 40, -10, -986, 0, 2048, -6804, 255, 255, 255, 255 }, // 0x00001728
	 { -200, -10, -986, 0, -4096, -6804, 114, 114, 114, 255 }, // 0x00001738
	 { -200, -10, -640, 0, -4096, 2048, 153, 153, 153, 255 }, // 0x00001748
	 { -40, -10, -640, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00001758
	 { -40, -10, -986, 0, 0, -6804, 255, 255, 255, 255 }, // 0x00001768
};

Vtx_t _hakaana_ouke_room_2_vertices_00001778[34] = 
{
	 { 0, 30, -1046, 0, 1024, -13460, 151, 192, 255, 255 }, // 0x00001778
	 { -200, 30, -1046, 0, -4096, -13460, 216, 216, 216, 255 }, // 0x00001788
	 { -200, 30, -1026, 0, -4096, -12948, 216, 216, 216, 255 }, // 0x00001798
	 { 0, 30, -1026, 0, 1024, -12948, 255, 255, 255, 255 }, // 0x000017A8
	 { 200, 30, -1026, 0, 6144, -12948, 216, 216, 216, 255 }, // 0x000017B8
	 { 200, 30, -1046, 0, 6144, -13460, 216, 216, 216, 255 }, // 0x000017C8
	 { 0, 20, -1026, 0, 1024, -12948, 151, 192, 255, 255 }, // 0x000017D8
	 { -200, 20, -1026, 0, -4096, -12948, 216, 216, 216, 255 }, // 0x000017E8
	 { -200, 20, -1006, 0, -4096, -12436, 216, 216, 216, 255 }, // 0x000017F8
	 { 0, 20, -1006, 0, 1024, -12436, 255, 255, 255, 255 }, // 0x00001808
	 { 200, 20, -1006, 0, 6144, -12436, 216, 216, 216, 255 }, // 0x00001818
	 { 200, 20, -1026, 0, 6144, -12948, 216, 216, 216, 255 }, // 0x00001828
	 { 0, 10, -1006, 0, 1024, -12436, 151, 192, 255, 255 }, // 0x00001838
	 { -200, 10, -1006, 0, -4096, -12436, 216, 216, 216, 255 }, // 0x00001848
	 { -200, 10, -986, 0, -4096, -11924, 216, 216, 216, 255 }, // 0x00001858
	 { 0, 10, -986, 0, 1024, -11924, 255, 255, 255, 255 }, // 0x00001868
	 { 200, 10, -986, 0, 6144, -11924, 216, 216, 216, 255 }, // 0x00001878
	 { 200, 10, -1006, 0, 6144, -12436, 216, 216, 216, 255 }, // 0x00001888
	 { 200, 30, -1046, 0, 6144, 1280, 35, 41, 66, 255 }, // 0x00001898
	 { 200, 40, -1046, 0, 6144, 1024, 178, 178, 178, 255 }, // 0x000018A8
	 { -200, 40, -1046, 0, -4096, 1024, 178, 178, 178, 255 }, // 0x000018B8
	 { -200, 30, -1046, 0, -4096, 1280, 35, 41, 66, 255 }, // 0x000018C8
	 { 200, 20, -1026, 0, 6144, 1536, 35, 41, 66, 255 }, // 0x000018D8
	 { 200, 30, -1026, 0, 6144, 1280, 178, 178, 178, 255 }, // 0x000018E8
	 { -200, 30, -1026, 0, -4096, 1280, 178, 178, 178, 255 }, // 0x000018F8
	 { -200, 20, -1026, 0, -4096, 1536, 35, 41, 66, 255 }, // 0x00001908
	 { 200, 10, -1006, 0, 6144, 1792, 35, 41, 66, 255 }, // 0x00001918
	 { 200, 20, -1006, 0, 6144, 1536, 178, 178, 178, 255 }, // 0x00001928
	 { -200, 20, -1006, 0, -4096, 1536, 178, 178, 178, 255 }, // 0x00001938
	 { -200, 10, -1006, 0, -4096, 1792, 35, 41, 66, 255 }, // 0x00001948
	 { 200, -10, -986, 0, 6144, 2048, 35, 41, 66, 255 }, // 0x00001958
	 { 200, 10, -986, 0, 6144, 1536, 178, 178, 178, 255 }, // 0x00001968
	 { -200, 10, -986, 0, -4096, 1536, 178, 178, 178, 255 }, // 0x00001978
	 { -200, -10, -986, 0, -4096, 2048, 35, 41, 66, 255 }, // 0x00001988
};

Vtx_t _hakaana_ouke_room_2_vertices_00001998[8] = 
{
	 { -200, -10, -1242, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001998
	 { 200, -10, -1242, 0, 0, 0, 0, 0, 0, 0 }, // 0x000019A8
	 { -200, 40, -1242, 0, 0, 0, 0, 0, 0, 0 }, // 0x000019B8
	 { 200, 40, -1242, 0, 0, 0, 0, 0, 0, 0 }, // 0x000019C8
	 { -200, -10, -420, 0, 0, 0, 0, 0, 0, 0 }, // 0x000019D8
	 { 200, -10, -420, 0, 0, 0, 0, 0, 0, 0 }, // 0x000019E8
	 { -200, 40, -420, 0, 0, 0, 0, 0, 0, 0 }, // 0x000019F8
	 { 200, 40, -420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A08
};

Gfx _hakaana_ouke_room_2_dlist_00001A18[] =
{
	gsDPPipeSync(), // 0x00001A18
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001A20
	gsSPVertex(_hakaana_ouke_room_2_vertices_00001998, 8, 0), // 0x00001A28
	gsSPCullDisplayList(0, 7), // 0x00001A30
	gsDPPipeSync(), // 0x00001A38
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001A40
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001A48
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001A50
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_scene_tex_000042E0), // 0x00001A58
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001A60
	gsDPLoadSync(), // 0x00001A68
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001A70
	gsDPPipeSync(), // 0x00001A78
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001A80
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001A88
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001A90
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001A98
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001AA0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001AA8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001AB0
	gsSPVertex(_hakaana_ouke_room_2_vertices_00001578, 32, 0), // 0x00001AB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001AC0
	gsSP2Triangles(4, 5, 3, 0, 4, 3, 2, 0), // 0x00001AC8
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00001AD0
	gsSP2Triangles(10, 11, 6, 0, 10, 6, 9, 0), // 0x00001AD8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001AE0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00001AE8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00001AF0
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00001AF8
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00001B00
	gsSPVertex(_hakaana_ouke_room_2_vertices_00001778, 32, 0), // 0x00001B08
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B10
	gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0), // 0x00001B18
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00001B20
	gsSP2Triangles(10, 11, 6, 0, 10, 6, 9, 0), // 0x00001B28
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001B30
	gsSP2Triangles(16, 17, 12, 0, 16, 12, 15, 0), // 0x00001B38
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x00001B40
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x00001B48
	gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0), // 0x00001B50
	gsSPVertex(_hakaana_ouke_room_2_vertices_00001958, 4, 0), // 0x00001B58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B60
	gsSPEndDisplayList(), // 0x00001B68
};

Vtx_t _hakaana_ouke_room_2_vertices_00001B70[32] = 
{
	 { 200, -10, -640, 0, -1024, 2328, 106, 141, 199, 255 }, // 0x00001B70
	 { 40, -10, -640, 0, 2700, 2328, 106, 141, 199, 255 }, // 0x00001B80
	 { 40, 321, -640, 0, 2700, -6144, 0, 0, 0, 255 }, // 0x00001B90
	 { 200, 321, -640, 0, -1024, -6144, 0, 0, 0, 255 }, // 0x00001BA0
	 { -40, -10, -640, 0, 4561, 2328, 106, 141, 199, 255 }, // 0x00001BB0
	 { -200, -10, -640, 0, 8285, 2328, 106, 141, 199, 255 }, // 0x00001BC0
	 { -200, 321, -640, 0, 8285, -6144, 0, 0, 0, 255 }, // 0x00001BD0
	 { -40, 321, -640, 0, 4561, -6144, 0, 0, 0, 255 }, // 0x00001BE0
	 { -200, 321, -640, 0, -1626, 2048, 0, 0, 0, 255 }, // 0x00001BF0
	 { -200, 321, -1242, 0, 6494, 2048, 0, 0, 0, 255 }, // 0x00001C00
	 { 200, 321, -1242, 0, 6494, -3347, 0, 0, 0, 255 }, // 0x00001C10
	 { 200, 321, -640, 0, -1626, -3347, 0, 0, 0, 255 }, // 0x00001C20
	 { -40, 150, -420, 0, -4594, -110, 0, 0, 0, 255 }, // 0x00001C30
	 { -40, 321, -640, 0, -1626, -110, 0, 0, 0, 255 }, // 0x00001C40
	 { 40, 321, -640, 0, -1626, -1189, 0, 0, 0, 255 }, // 0x00001C50
	 { 40, 150, -420, 0, -4594, -1189, 0, 0, 0, 255 }, // 0x00001C60
	 { -40, 321, -640, 0, 0, -2852, 0, 0, 0, 255 }, // 0x00001C70
	 { -40, 150, -420, 0, 2543, -321, 0, 0, 0, 255 }, // 0x00001C80
	 { -40, -10, -640, 0, 0, 2048, 106, 141, 199, 255 }, // 0x00001C90
	 { -40, -10, -420, 0, 2543, 2048, 0, 0, 0, 255 }, // 0x00001CA0
	 { -200, -10, -1242, 0, 13595, 1179, 151, 192, 255, 255 }, // 0x00001CB0
	 { -200, 321, -1242, 0, 13595, 6827, 0, 0, 0, 255 }, // 0x00001CC0
	 { -200, 321, -640, 0, 7077, 6827, 0, 0, 0, 255 }, // 0x00001CD0
	 { -200, -10, -640, 0, 7077, 1179, 106, 141, 199, 255 }, // 0x00001CE0
	 { 200, 321, -640, 0, 7077, 6827, 0, 0, 0, 255 }, // 0x00001CF0
	 { 200, 321, -1242, 0, 13595, 6827, 0, 0, 0, 255 }, // 0x00001D00
	 { 200, -10, -1242, 0, 13595, 1179, 151, 192, 255, 255 }, // 0x00001D10
	 { 200, -10, -640, 0, 7077, 1179, 106, 141, 199, 255 }, // 0x00001D20
	 { 40, 150, -420, 0, 2543, -321, 0, 0, 0, 255 }, // 0x00001D30
	 { 40, -10, -640, 0, 0, 2048, 106, 141, 199, 255 }, // 0x00001D40
	 { 40, -10, -420, 0, 2543, 2048, 0, 0, 0, 255 }, // 0x00001D50
	 { 40, 321, -640, 0, 0, -2852, 0, 0, 0, 255 }, // 0x00001D60
};

Vtx_t _hakaana_ouke_room_2_vertices_00001D70[4] = 
{
	 { 200, -10, -1242, 0, 6144, 2048, 151, 192, 255, 255 }, // 0x00001D70
	 { 200, 321, -1242, 0, 6144, -2048, 0, 0, 0, 255 }, // 0x00001D80
	 { -200, 321, -1242, 0, -4096, -2048, 0, 0, 0, 255 }, // 0x00001D90
	 { -200, -10, -1242, 0, -4096, 2048, 151, 192, 255, 255 }, // 0x00001DA0
};

Vtx_t _hakaana_ouke_room_2_vertices_00001DB0[8] = 
{
	 { -200, -10, -1242, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DB0
	 { 200, -10, -1242, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DC0
	 { -200, 321, -1242, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DD0
	 { 200, 321, -1242, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DE0
	 { -200, -10, -420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DF0
	 { 200, -10, -420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E00
	 { -200, 321, -420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E10
	 { 200, 321, -420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E20
};

Gfx _hakaana_ouke_room_2_dlist_00001E30[] =
{
	gsDPPipeSync(), // 0x00001E30
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001E38
	gsSPVertex(_hakaana_ouke_room_2_vertices_00001DB0, 8, 0), // 0x00001E40
	gsSPCullDisplayList(0, 7), // 0x00001E48
	gsDPPipeSync(), // 0x00001E50
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001E58
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001E60
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001E68
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _hakaana_ouke_scene_tex_00003AE0), // 0x00001E70
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001E78
	gsDPLoadSync(), // 0x00001E80
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001E88
	gsDPPipeSync(), // 0x00001E90
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001E98
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001EA0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001EA8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001EB0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001EB8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001EC0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001EC8
	gsSPVertex(_hakaana_ouke_room_2_vertices_00001B70, 32, 0), // 0x00001ED0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001ED8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001EE0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001EE8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001EF0
	gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0), // 0x00001EF8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00001F00
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00001F08
	gsSP2Triangles(28, 29, 30, 0, 28, 31, 29, 0), // 0x00001F10
	gsSPVertex(_hakaana_ouke_room_2_vertices_00001D70, 4, 0), // 0x00001F18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001F20
	gsSPEndDisplayList(), // 0x00001F28
};

Vtx_t _hakaana_ouke_room_2_vertices_00001F30[9] = 
{
	 { 152, 47, -1139, 0, -75, 20, 0, 129, 215, 255 }, // 0x00001F30
	 { 132, 58, -1143, 0, 643, 756, 255, 255, 255, 255 }, // 0x00001F40
	 { 124, 52, -1130, 0, 1277, 191, 255, 255, 255, 255 }, // 0x00001F50
	 { 154, 47, -1097, 0, -75, 20, 0, 129, 215, 255 }, // 0x00001F60
	 { 148, 58, -1117, 0, 643, 756, 255, 255, 255, 255 }, // 0x00001F70
	 { 132, 52, -1117, 0, 1277, 191, 255, 255, 255, 255 }, // 0x00001F80
	 { 169, 47, -1110, 0, -75, 20, 0, 129, 215, 255 }, // 0x00001F90
	 { 154, 58, -1124, 0, 643, 756, 255, 255, 255, 255 }, // 0x00001FA0
	 { 141, 52, -1116, 0, 1277, 191, 255, 255, 255, 255 }, // 0x00001FB0
};

Vtx_t _hakaana_ouke_room_2_vertices_00001FC0[12] = 
{
	 { 108, 47, -1130, 0, -932, 601, 0, 129, 215, 255 }, // 0x00001FC0
	 { 117, 51, -1136, 0, -1053, 56, 255, 255, 255, 255 }, // 0x00001FD0
	 { 88, 54, -1161, 0, 1030, -21, 205, 255, 255, 255 }, // 0x00001FE0
	 { 79, 40, -1152, 0, 1032, 747, 0, 129, 215, 255 }, // 0x00001FF0
	 { 190, 47, -1187, 0, -932, 601, 0, 129, 215, 255 }, // 0x00002000
	 { 154, 54, -1197, 0, 1030, -21, 255, 255, 255, 255 }, // 0x00002010
	 { 153, 40, -1185, 0, 1032, 747, 0, 129, 215, 255 }, // 0x00002020
	 { 193, 51, -1198, 0, -1053, 56, 255, 255, 255, 255 }, // 0x00002030
	 { 139, 47, -1077, 0, -932, 601, 0, 129, 215, 255 }, // 0x00002040
	 { 147, 51, -1085, 0, -1053, 56, 255, 255, 255, 255 }, // 0x00002050
	 { 113, 54, -1103, 0, 1030, -21, 205, 255, 255, 255 }, // 0x00002060
	 { 106, 40, -1093, 0, 1032, 747, 0, 129, 215, 255 }, // 0x00002070
};

Vtx_t _hakaana_ouke_room_2_vertices_00002080[6] = 
{
	 { 120, 54, -1174, 0, 1024, 0, 15, 13, 10, 255 }, // 0x00002080
	 { 117, 47, -1153, 0, 1024, 1024, 15, 13, 10, 255 }, // 0x00002090
	 { 128, 46, -1152, 0, 0, 1024, 15, 13, 10, 255 }, // 0x000020A0
	 { 131, 53, -1173, 0, 0, 0, 15, 13, 10, 255 }, // 0x000020B0
	 { 109, 55, -1175, 0, 0, 0, 15, 13, 10, 255 }, // 0x000020C0
	 { 106, 48, -1155, 0, 0, 1024, 15, 13, 10, 255 }, // 0x000020D0
};

Vtx_t _hakaana_ouke_room_2_vertices_000020E0[9] = 
{
	 { 117, 67, -1167, 0, 1024, 0, 205, 245, 255, 255 }, // 0x000020E0
	 { 116, 64, -1161, 0, 1024, 341, 255, 255, 255, 255 }, // 0x000020F0
	 { 121, 63, -1162, 0, 768, 256, 255, 255, 255, 255 }, // 0x00002100
	 { 128, 64, -1168, 0, 0, 0, 205, 245, 255, 255 }, // 0x00002110
	 { 126, 47, -1154, 0, 0, 1024, 0, 129, 215, 255 }, // 0x00002120
	 { 112, 63, -1163, 0, 768, 256, 205, 245, 255, 255 }, // 0x00002130
	 { 104, 47, -1156, 0, 0, 1024, 0, 129, 215, 255 }, // 0x00002140
	 { 115, 49, -1151, 0, 1024, 1024, 76, 76, 76, 255 }, // 0x00002150
	 { 106, 64, -1169, 0, 0, 0, 205, 245, 255, 255 }, // 0x00002160
};

Vtx_t _hakaana_ouke_room_2_vertices_00002170[6] = 
{
	 { 180, 52, -1146, 0, 0, 0, 15, 13, 10, 255 }, // 0x00002170
	 { 163, 46, -1128, 0, 0, 1024, 15, 13, 10, 255 }, // 0x00002180
	 { 172, 47, -1119, 0, 1024, 1024, 15, 13, 10, 255 }, // 0x00002190
	 { 189, 53, -1137, 0, 1024, 0, 15, 13, 10, 255 }, // 0x000021A0
	 { 181, 49, -1110, 0, 0, 1024, 15, 13, 10, 255 }, // 0x000021B0
	 { 198, 54, -1128, 0, 0, 0, 15, 13, 10, 255 }, // 0x000021C0
};

Vtx_t _hakaana_ouke_room_2_vertices_000021D0[9] = 
{
	 { 161, 47, -1129, 0, 0, 1024, 0, 129, 215, 255 }, // 0x000021D0
	 { 173, 66, -1132, 0, 768, 256, 205, 245, 255, 255 }, // 0x000021E0
	 { 172, 66, -1142, 0, 0, 0, 205, 245, 255, 255 }, // 0x000021F0
	 { 180, 70, -1132, 0, 1024, 0, 205, 245, 255, 255 }, // 0x00002200
	 { 176, 66, -1127, 0, 1024, 341, 255, 255, 255, 255 }, // 0x00002210
	 { 168, 49, -1118, 0, 1024, 1024, 76, 76, 76, 255 }, // 0x00002220
	 { 191, 66, -1125, 0, 0, 0, 205, 245, 255, 255 }, // 0x00002230
	 { 181, 66, -1125, 0, 768, 256, 255, 255, 255, 255 }, // 0x00002240
	 { 181, 47, -1113, 0, 0, 1024, 0, 129, 215, 255 }, // 0x00002250
};

Vtx_t _hakaana_ouke_room_2_vertices_00002260[6] = 
{
	 { -187, 66, -1196, 0, 0, 0, 15, 13, 10, 255 }, // 0x00002260
	 { -176, 47, -1185, 0, 0, 1024, 15, 13, 10, 255 }, // 0x00002270
	 { -167, 47, -1194, 0, 1024, 1024, 15, 13, 10, 255 }, // 0x00002280
	 { -178, 66, -1206, 0, 1024, 0, 15, 13, 10, 255 }, // 0x00002290
	 { -158, 47, -1204, 0, 0, 1024, 15, 13, 10, 255 }, // 0x000022A0
	 { -169, 66, -1215, 0, 0, 0, 15, 13, 10, 255 }, // 0x000022B0
};

Vtx_t _hakaana_ouke_room_2_vertices_000022C0[9] = 
{
	 { -178, 48, -1185, 0, 0, 1024, 0, 129, 215, 255 }, // 0x000022C0
	 { -179, 67, -1197, 0, 768, 256, 205, 245, 255, 255 }, // 0x000022D0
	 { -189, 68, -1196, 0, 0, 0, 205, 245, 255, 255 }, // 0x000022E0
	 { -179, 71, -1204, 0, 1024, 0, 205, 245, 255, 255 }, // 0x000022F0
	 { -175, 68, -1199, 0, 1024, 341, 255, 255, 255, 255 }, // 0x00002300
	 { -166, 51, -1191, 0, 1024, 1024, 255, 255, 255, 255 }, // 0x00002310
	 { -172, 68, -1214, 0, 0, 0, 205, 245, 255, 255 }, // 0x00002320
	 { -172, 67, -1205, 0, 768, 256, 255, 255, 255, 255 }, // 0x00002330
	 { -160, 48, -1203, 0, 0, 1024, 0, 129, 215, 255 }, // 0x00002340
};

Vtx_t _hakaana_ouke_room_2_vertices_00002350[8] = 
{
	 { -120, 47, -1149, 0, -932, 601, 0, 129, 215, 255 }, // 0x00002350
	 { -157, 54, -1154, 0, 1030, -21, 255, 255, 255, 255 }, // 0x00002360
	 { -156, 40, -1141, 0, 1032, 747, 0, 129, 215, 255 }, // 0x00002370
	 { -119, 51, -1160, 0, -1053, 56, 255, 255, 255, 255 }, // 0x00002380
	 { -114, 49, -1214, 0, -932, 601, 0, 129, 215, 255 }, // 0x00002390
	 { -116, 57, -1222, 0, -1053, 56, 255, 255, 255, 255 }, // 0x000023A0
	 { -150, 57, -1204, 0, 1030, -21, 255, 255, 255, 255 }, // 0x000023B0
	 { -147, 39, -1198, 0, 1032, 747, 0, 129, 215, 255 }, // 0x000023C0
};

Vtx_t _hakaana_ouke_room_2_vertices_000023D0[8] = 
{
	 { -178, 39, -1263, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023D0
	 { 209, 39, -1195, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023E0
	 { -178, 71, -1263, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023F0
	 { 209, 71, -1195, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002400
	 { -200, 39, -1137, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002410
	 { 187, 39, -1069, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002420
	 { -200, 71, -1137, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002430
	 { 187, 71, -1069, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002440
};

Gfx _hakaana_ouke_room_2_dlist_00002450[] =
{
	gsDPPipeSync(), // 0x00002450
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002458
	gsSPVertex(_hakaana_ouke_room_2_vertices_000023D0, 8, 0), // 0x00002460
	gsSPCullDisplayList(0, 7), // 0x00002468
	gsDPPipeSync(), // 0x00002470
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002478
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002480
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002488
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _hakaana_ouke_scene_tex_00002EE0), // 0x00002490
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x00002498
	gsDPLoadSync(), // 0x000024A0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x000024A8
	gsDPPipeSync(), // 0x000024B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x000024B8
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x000024C0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000024C8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000024D0
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x000024D8
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x000024E0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000024E8
	gsSPVertex(_hakaana_ouke_room_2_vertices_00001F30, 9, 0), // 0x000024F0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000024F8
	gsSP1Triangle(6, 7, 8, 0), // 0x00002500
	gsDPPipeSync(), // 0x00002508
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _hakaana_ouke_scene_tex_00002AE0), // 0x00002510
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 1, 5, 0), // 0x00002518
	gsDPLoadSync(), // 0x00002520
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00002528
	gsDPPipeSync(), // 0x00002530
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 1, 5, 0), // 0x00002538
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00002540
	gsSPVertex(_hakaana_ouke_room_2_vertices_00001FC0, 12, 0), // 0x00002548
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002550
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00002558
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002560
	gsDPPipeSync(), // 0x00002568
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _hakaana_ouke_scene_tex_000032E0), // 0x00002570
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00002578
	gsDPLoadSync(), // 0x00002580
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002588
	gsDPPipeSync(), // 0x00002590
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00002598
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000025A0
	gsDPSetPrimColor(0, 0, 15, 13, 10, 255), // 0x000025A8
	gsSPVertex(_hakaana_ouke_room_2_vertices_00002080, 6, 0), // 0x000025B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000025B8
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0), // 0x000025C0
	gsDPPipeSync(), // 0x000025C8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000025D0
	gsSPVertex(_hakaana_ouke_room_2_vertices_000020E0, 9, 0), // 0x000025D8
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x000025E0
	gsSP2Triangles(3, 2, 4, 0, 1, 0, 5, 0), // 0x000025E8
	gsSP2Triangles(6, 7, 1, 0, 6, 1, 5, 0), // 0x000025F0
	gsSP2Triangles(5, 0, 8, 0, 6, 5, 8, 0), // 0x000025F8
	gsSP2Triangles(1, 4, 2, 0, 1, 7, 4, 0), // 0x00002600
	gsDPPipeSync(), // 0x00002608
	gsDPSetPrimColor(0, 0, 15, 13, 10, 255), // 0x00002610
	gsSPVertex(_hakaana_ouke_room_2_vertices_00002170, 6, 0), // 0x00002618
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002620
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0), // 0x00002628
	gsDPPipeSync(), // 0x00002630
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002638
	gsSPVertex(_hakaana_ouke_room_2_vertices_000021D0, 9, 0), // 0x00002640
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002648
	gsSP2Triangles(0, 4, 1, 0, 0, 5, 4, 0), // 0x00002650
	gsSP2Triangles(4, 3, 1, 0, 6, 7, 8, 0), // 0x00002658
	gsSP2Triangles(6, 3, 7, 0, 3, 4, 7, 0), // 0x00002660
	gsSP2Triangles(4, 8, 7, 0, 4, 5, 8, 0), // 0x00002668
	gsDPPipeSync(), // 0x00002670
	gsDPSetPrimColor(0, 0, 15, 13, 10, 255), // 0x00002678
	gsSPVertex(_hakaana_ouke_room_2_vertices_00002260, 6, 0), // 0x00002680
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002688
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0), // 0x00002690
	gsDPPipeSync(), // 0x00002698
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000026A0
	gsSPVertex(_hakaana_ouke_room_2_vertices_000022C0, 9, 0), // 0x000026A8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000026B0
	gsSP2Triangles(0, 4, 1, 0, 0, 5, 4, 0), // 0x000026B8
	gsSP2Triangles(4, 3, 1, 0, 6, 7, 8, 0), // 0x000026C0
	gsSP2Triangles(6, 3, 7, 0, 3, 4, 7, 0), // 0x000026C8
	gsSP2Triangles(4, 8, 7, 0, 4, 5, 8, 0), // 0x000026D0
	gsDPPipeSync(), // 0x000026D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _hakaana_ouke_scene_tex_00002AE0), // 0x000026E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 1, 5, 0), // 0x000026E8
	gsDPLoadSync(), // 0x000026F0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x000026F8
	gsDPPipeSync(), // 0x00002700
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 1, 5, 0), // 0x00002708
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00002710
	gsSPVertex(_hakaana_ouke_room_2_vertices_00002350, 8, 0), // 0x00002718
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002720
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002728
	gsSPEndDisplayList(), // 0x00002730
};

Gfx _hakaana_ouke_room_2_dlist_00002738[] =
{
	gsSPDisplayList(_hakaana_ouke_room_2_dlist_00000560), // 0x00002738
	gsSPDisplayList(_hakaana_ouke_room_2_dlist_00000A28), // 0x00002740
	gsSPDisplayList(_hakaana_ouke_room_2_dlist_00000F88), // 0x00002748
	gsSPDisplayList(_hakaana_ouke_room_2_dlist_00001448), // 0x00002750
	gsSPDisplayList(_hakaana_ouke_room_2_dlist_00001A18), // 0x00002758
	gsSPDisplayList(_hakaana_ouke_room_2_dlist_00001E30), // 0x00002760
	gsSPDisplayList(_hakaana_ouke_room_2_dlist_00002450), // 0x00002768
	gsSPEndDisplayList(), // 0x00002770
};

u64 _hakaana_ouke_room_2_tex_00002778[] = 
{
	0x4465350201045031, 0x3554002525532205, 0x0532404305405001, 0x3033464410201002,  // 0x00002778 
	0x4503343042013244, 0x3544503510364422, 0x4414254464002133, 0x4405232100025006,  // 0x00002798 
	0x3336504467076920, 0x1367567377A36332, 0x086449A026020576, 0x859A540083500565,  // 0x000027B8 
	0x400556006703A660, 0x0166079535140530, 0x53669A0206138667, 0x7A61207682756A36,  // 0x000027D8 
	0x1036565159AAAC54, 0x67AA999AAAA52551, 0x088AAAA51519AAA9, 0x98AB000699AAA995,  // 0x000027F8 
	0x536552039AAAC605, 0x340569BA45402AA9, 0x99AABA056AA999AA, 0xAB4026A998AAAC53,  // 0x00002818 
	0x4663421089BA3665, 0x017509AA43520131, 0x099B66666109AA96, 0x98AA0306AAB9019B,  // 0x00002838 
	0x510535229AA64305, 0x52655ABA06056541, 0x9AA66040000099C5, 0x4515268089A92156,  // 0x00002858 
	0x6046642599A07A45, 0x3244079656A56002, 0x6AAB6032254AAA89, 0xAAAA0229AAA96AAB,  // 0x00002878 
	0x545262069AA41501, 0x003079BA16030057, 0xAAB05134004189A4, 0x8A36603068A76A62,  // 0x00002898 
	0x60063162699AAB40, 0x6564097AAAC560AA, 0xA79B504434638739, 0x6200035656A89509,  // 0x000028B8 
	0x460046037A922024, 0x332669AA06320AA8, 0x8AB5352305AAAAAA, 0xAC23048AAA999C54,  // 0x000028D8 
	0x4254003399A96604, 0x6001059B56535660, 0x06AA56633246057A, 0x987534009AB9338A,  // 0x000028F8 
	0x652604069AA03134, 0x235669AA03237693, 0x8AB54600098A1355, 0x6006007B9A769A46,  // 0x00002918 
	0x6203507097906A54, 0x3460098A26055450, 0x098B346333076799, 0x438A2615AA60596A,  // 0x00002938 
	0x544506347AA46254, 0x416549BA36145350, 0xAAA02640099A7060, 0x6A56509AA4457B66,  // 0x00002958 
	0x323677AA9AAAAB54, 0x369AAAA536605620, 0x1AAA3566066AAAAA, 0xAABA06205AAAAAA5,  // 0x00002978 
	0x40395AAAAB846561, 0x58AAA9B554525286, 0xABA1562355AAAAAA, 0xAB5008AB9549A563,  // 0x00002998 
	0x6216353624565330, 0x3664573651261620, 0x4557604250574246, 0x6372166146644562,  // 0x000029B8 
	0x6664653466613566, 0x3343654244611224, 0x4526563526633735, 0x4604175140347646,  // 0x000029D8 
	0x5662324550125660, 0x4160545236635463, 0x6045543066356463, 0x3210400652606316,  // 0x000029F8 
	0x5643562053015654, 0x5620645641514215, 0x4155543506223600, 0x6264000640605163,  // 0x00002A18 
	0x6435600400044435, 0x6206245315142032, 0x0443205062005006, 0x0530006204061503,  // 0x00002A38 
	0x3460513550403666, 0x5150040351426040, 0x0563604265505044, 0x0556002405352441,  // 0x00002A58 
	0x0025103650067AA2, 0x5499269A54460044, 0x147104965146AA60, 0x65A3555057A45009,  // 0x00002A78 
	0xA665044744A43654, 0x0725646095600200, 0x2992540000656463, 0xA915255055A40263,  // 0x00002A98 
	0x4512358AAAAAAB90, 0x523068A9063100AA, 0x898AAAA35279A903, 0x99B16342AAB4569A,  // 0x00002AB8 
	0xA4230AA98AB25036, 0xA9A89AABA1326507, 0x8BA642668AAAA997, 0xAA0634569AB50035,  // 0x00002AD8 
	0x2501467A90555564, 0x638A97889BA05618, 0x09AA6544246AA970, 0x7AB055037AB8407A,  // 0x00002AF8 
	0xA4603AA669C56469, 0xA9099B9A44055603, 0x7A94002464010038, 0xA95558518AA67414,  // 0x00002B18 
	0x1515009937655A60, 0x59A997ABAB900063, 0x097A08A44097A457, 0xA9C03656A990087A,  // 0x00002B38 
	0xA14260307AC36042, 0x6507AA5505520008, 0x7BA5245303606178, 0xA95026607AA08905,  // 0x00002B58 
	0x664557AAA9AAAB66, 0x567677AA650450AA, 0xAAAA9AB15059A9A8, 0x6AC52438A66AA94A,  // 0x00002B78 
	0xA33633336AA42042, 0x55099A5522609AA7, 0x9AA165605AAA9AAA, 0xA95209A999AAAA55,  // 0x00002B98 
	0x426009A899AAAA64, 0x519999A92AA01599, 0x9AAA9AA1406ACA97, 0x7AC3356764768777,  // 0x00002BB8 
	0x343566009AC62643, 0x0009AA305403AA01, 0x9A90607309AB9AA9, 0x94054A956ABAA914,  // 0x00002BD8 
	0x4156407069943A51, 0x0079AA997BA66205, 0x606204A25079BA84, 0x99A0062034560007,  // 0x00002BF8 
	0xA550075089B43646, 0x060AA737A1450506, 0x9A9545010A992070, 0x7855350499C62642,  // 0x00002C18 
	0x45260699A99AABA5, 0x61AA9157AB901399, 0xA99A9AA5579ACA03, 0xAAC51406AAA99A9A,  // 0x00002C38 
	0xA54518AAAAA54355, 0x9AAAA9AAB8218999, 0xABA6616709A99A9A, 0xA95141379AB42511,  // 0x00002C58 
	0x311355999AA9A554, 0x39999449A963645A, 0xAAAA9A54139AA42A, 0x99A03408A9AAAA9A,  // 0x00002C78 
	0x41635A9AAA52654A, 0x9AA9A99A8534AAAA, 0xAA0035539A99AAA9, 0xA6056649AA930453,  // 0x00002C98 
	0x5566233400236430, 0x3135513336255553, 0x6462636454604563, 0x0343511540246246,  // 0x00002CB8 
	0x5646135610505066, 0x1106636326543045, 0x5600545623660364, 0x6634204556546650,  // 0x00002CD8 
	0x1342345441001236, 0x5641044250303000, 0x1435005520505503, 0x0052661503152404,  // 0x00002CF8 
	0x5245300522652554, 0x6035524614550320, 0x2100544432343505, 0x0055250343405553,  // 0x00002D18 
	0x2601059A4307A552, 0x244708566A906300, 0x3649955116427263, 0x376A06025705533A,  // 0x00002D38 
	0x62023403AA466252, 0x4356505464512602, 0x8666AA3340487706, 0x3A55400770990123,  // 0x00002D58 
	0x5654099A6008BA10, 0x536649AAAB82659A, 0xA79AA332547AAAAA, 0xAAAA547AAAAAAAAA,  // 0x00002D78 
	0x05324009AA150535, 0x4356069563367406, 0x99AACA106AA88AAA, 0xAB5673A86AB94305,  // 0x00002D98 
	0x66410AA977A7AA03, 0x400589AA9A00439A, 0x509AA53555044605, 0x0160615531635355,  // 0x00002DB8 
	0x65550069AA155661, 0x1035448A75264998, 0x9AA965364A9578CA, 0x9620265559A95555,  // 0x00002DD8 
	0x0634AAA7AABAAA56, 0x200498AA00322331, 0x609AA32326600666, 0x308A200652375659,  // 0x00002DF8 
	0x53106599774AA062, 0x3401269A56019A96, 0x7BA52456614379BA, 0x5647006399957B54,  // 0x00002E18 
	0x645305069AA06A53, 0x03AAB9AA51565316, 0x037AA562166AAAAA, 0xAAAA3009AAAA7AAA,  // 0x00002E38 
	0x06049AAA9AAAA151, 0x5708AAAA70296006, 0x9A556066646058CA, 0x513677A977AAAB53,  // 0x00002E58 
	0x0050097A9895AA36, 0x229AA97693206650, 0x309AA96243264460, 0x103264069B9628AA,  // 0x00002E78 
	0x35708BA759AB9223, 0x4507AA760427099A, 0x9999BA36296089B9, 0x0663576678A90400,  // 0x00002E98 
	0x162558ABA919AA30, 0x149850633A949400, 0x03A8509953000066, 0x166A1308876777AA,  // 0x00002EB8 
	0x35609980079AA010, 0x3698BA35655768AA, 0xA969BA43043178CA, 0x2604665099970A62,  // 0x00002ED8 
	0x36339AAA969AA563, 0x96AAAAAAABA554AA, 0xAAAAAAB94559AAAA, 0xAAA5530AAAAAAAA5,  // 0x00002EF8 
	0x0379A9AAAA9A9639, 0xBAA9C55444669ABA, 0xA4AAC5009AAAAAB5, 0x53465657AAAAAA35,  // 0x00002F18 
	0x4566356445666463, 0x1646655675424665, 0x3625434410576564, 0x6334335525766566,  // 0x00002F38 
	0x5045736336271555, 0x3656455655616663, 0x6466661125675346, 0x6253551657566463,  // 0x00002F58 
};

u64 _hakaana_ouke_room_2_tex_00002F78[] = 
{
	0xDEB394616B195A93, 0x62D37355A4E1A4DD, 0x4A114A1341D34A4F, 0x8C199C5D5A8D524D,  // 0x00002F78 
	0x524B41C94A0F62D1, 0x6B1373557B976B15, 0x318D421121094A53, 0x398D7B53EF79F7BD,  // 0x00002F98 
	0xCE6F9CA1839B62D5, 0x420F6B118BD76B11, 0x5A1139CF5A0F39CF, 0x39D14211420F318D,  // 0x00002FB8 
	0x5A8F73118C195AD1, 0x6B135AD363135291, 0x4A5142114A53398F, 0x41D16AD1A4DFDEF3,  // 0x00002FD8 
	0x39CF5A11318D294B, 0x4A535A1151D1318F, 0x421339D1318D294B, 0x294B2109294B2147,  // 0x00002FF8 
	0x62D1525183D95A91, 0x6B1373555A93420F, 0x41CF420F2949318B, 0x41CD525162D17B53,  // 0x00003018 
	0x41CF41D1318D318D, 0x2109294D2109294B, 0x294B4211294B318D, 0x18C7294B1909294B,  // 0x00003038 
	0x62D15A915293528F, 0x731573555A914A0F, 0x294729474A4DAD23, 0x945B731349CD1085,  // 0x00003058 
	0x318D318B5A0F4211, 0x39CF2107210939CF, 0x41CF420F294B318D, 0x39CF2109294B39CF,  // 0x00003078 
	0x4A134A0D39CF4A53, 0x83958BD773137353, 0x6B117353B565C5EB, 0xBDA7A4E17B953189,  // 0x00003098 
	0x398B39CF5A5341D1, 0x39CF420F398B6251, 0x52554A5121092109, 0x4A1139CD294741CF,  // 0x000030B8 
	0x420F520F5A114211, 0x3A0D83D75A4F8397, 0x94199C9BA4DFBDA7, 0xB565ACE19C9D62D1,  // 0x000030D8 
	0x62D762D752D54A53, 0x39CF42116AD97295, 0x41D141CD525139CD, 0x294B41D152956253,  // 0x000030F8 
	0x5A0F294B318F420F, 0x4A0F4A4F52515293, 0x73556B1383D5BDA5, 0x7B135A8F524F5AD5,  // 0x00003118 
	0x4A135A9541D1318D, 0x529339CF318F6293, 0x5A5118C59C9F62D9, 0x735D318B420F4A4F,  // 0x00003138 
	0x6311524F420F39CF, 0x4A536B1341CF4211, 0x39D139CF6B13945F, 0x528F39CF420F5253,  // 0x00003158 
	0x524F39D141CF294B, 0x314D39CF21074A0F, 0x2947420D9C9F62D7, 0x73197B5529092107,  // 0x00003178 
	0xA4DF94197B5362D1, 0x398F39CF318D2109, 0x318D39CF210D214B, 0x4211290B294B398B,  // 0x00003198 
	0x420D420F4A115253, 0x298B39CF41CD6B11, 0x7B95945DACE19C5D, 0x5A91B5655251524F,  // 0x000031B8 
	0x9C9F83957B555A91, 0x41CF2949318D318D, 0x2109318D39CF39CF, 0x41CF294B39CF41CD,  // 0x000031D8 
	0x39CD4A0F4A0F5A51, 0x294B318D41CF8397, 0x841F6B579C9D945B, 0x9C9D8C17839583D5,  // 0x000031F8 
	0x7B9583973A1139D1, 0x5A935AD34A11294B, 0x318D318D398F39CD, 0x318D294B4A115253,  // 0x00003218 
	0x520F3189420D4A0F, 0x318D294B318D418F, 0x42556B57739762D3, 0x524F735373537353,  // 0x00003238 
	0x7B955A93398F2149, 0x41D152514A13314D, 0x294B39CF318D2107, 0x5AD5420B524D62D1,  // 0x00003258 
	0x9C5D524F4A0D6B13, 0x420F39CF294B2109, 0x2107294D41D14211, 0x4A515A91524F5A91,  // 0x00003278 
	0x6B13528F41D1294B, 0x294B41D141CF398F, 0x39CF294B318B294B, 0x8BDB4A0D83D9628F,  // 0x00003298 
	0xC5E952514A0F7B53, 0x6AD54A4F318D2109, 0x318941CB524F318D, 0x318D318D420D62D3,  // 0x000032B8 
	0x62D3528F52514A51, 0x41D1398F2149294B, 0x318D298939895A51, 0x39CF41CB9CA18C1B,  // 0x000032D8 
	0x7B572909314D6AD3, 0x7315524F29493189, 0x7B978BD96B11294B, 0x214B21077313A49F,  // 0x000032F8 
	0x8BD939CB524F62D1, 0x4211318D2149318D, 0x294B318993D9A45B, 0x524D4A0D41CF945F,  // 0x00003318 
	0x8C1B6B154A0D6B13, 0x7355524F3989524F, 0xCDEBB521941B62D3, 0x2109210783DB9C9F,  // 0x00003338 
	0x8BD9524F5251628F, 0x524F21491907398D, 0x398B4A0D941BACE1, 0x945D5A8F41CB7B99,  // 0x00003358 
	0xBD659C5F6B157357, 0x735762CF8BD7ACE1, 0xB565C5A7C5E9DEB3, 0xAD258C1D83DB83D9,  // 0x00003378 
	0x4A1152534A0F62D3, 0x7B5539895A4D7B59, 0x6B138C198BD99C9F, 0x83D973578C1BACE1,  // 0x00003398 
	0xC5E9735773577B99, 0x7B577B978BD98C1B, 0x945D9C5FAD21DEB3, 0xCE2B49CF314B39CD,  // 0x000033B8 
	0x39D1210B39CF62D3, 0x941B9C9DB563C5A7, 0xB5239C5B52517313, 0x4A0D9C5DAD23C5E9,  // 0x000033D8 
	0xACDF62D54A0F41CD, 0x52935AD194199C5B, 0x4A11420D4A0F7357, 0x62D541CD398D318D,  // 0x000033F8 
	0x318D1909398F5A91, 0x83999C5BA49F8BD9, 0x83DB52913A0F41CF, 0x528D7B55B565BDA7,  // 0x00003418 
	0x525341CF420F318D, 0x318D318D525162D7, 0x5A8F398F398D41CD, 0x5251398F39CF4211,  // 0x00003438 
	0x318D318B398D5AD1, 0x4A117B577357420F, 0x6A9541CF8B57318D, 0x4A0F7313ACE18C19,  // 0x00003458 
	0x318F420F318D2109, 0x294B294B18C92109, 0x5A9141D141CF398D, 0x314B41CF4A0F318D,  // 0x00003478 
	0x318F318B5A8F6B55, 0x421139CD420D424F, 0x4A1349D152116251, 0x41CF5A9173155251,  // 0x00003498 
	0x39CD318F318D318D, 0x294B318D5251420B, 0x9CA15291294B298B, 0x210B39CD628F7B57,  // 0x000034B8 
	0x41CF5A4F73114A51, 0x318D18C583D77B55, 0x529339CF298D314B, 0x4A1362D3628F5A53,  // 0x000034D8 
	0x4A0B6AD32949420F, 0x3A0D210939CD528F, 0xA4DD6A932109398F, 0x498D5AD37355C5E7,  // 0x000034F8 
	0x62CF39CD62D56311, 0x420B524D9C1983D5, 0x6A4F421162934211, 0x4A5362D54A134211,  // 0x00003518 
	0x93DB7B5562D17355, 0x420D41D1318D318B, 0x4A515255294B41D1, 0x314B5A1352D34A53,  // 0x00003538 
	0x318D294B39CD5251, 0x5A4D72D552936A95, 0x398F294B4A1139CF, 0x318D318D210939CB,  // 0x00003558 
	0xD67173134A4D6B11, 0x52914A1341CF3189, 0x528F39CD318D39CF, 0x294B41D1521139CD,  // 0x00003578 
	0x4A13318D418B5A11, 0x621162135A11314B, 0x298D294B210941D1, 0x294B18C7314B6291,  // 0x00003598 
	0xB5252949290B628F, 0x5A8F4A4F524D62CF, 0x83D531CB318D4211, 0x39CF2949294939CB,  // 0x000035B8 
	0x420F42114A114A13, 0x398F398F398F318D, 0x318D294B4A935A93, 0x214931CB524F8395,  // 0x000035D8 
	0xACDF6B134A0D628F, 0x73539C9F5A8F6B53, 0x6B11398D6253398F, 0x39CD29498BD97313,  // 0x000035F8 
	0x6B11318B4A0F39CF, 0x318F214B294B294B, 0x318D39CF39CF420F, 0x524D62917B1593D9,  // 0x00003618 
	0x6B176B117B5541CB, 0x6AD1ACDF8BD78395, 0x4A4D62D15AD14A0F, 0x398F73137B5541D1,  // 0x00003638 
	0x5AD13A0D41CF4A53, 0x29495A516AD3318D, 0x210731CF21094A93, 0x524F72D383556B17,  // 0x00003658 
	0x5A9349D15A917B55, 0x6B134A0D31898C17, 0x5A8F83958BD7945B, 0x41D152157B535A4F,  // 0x00003678 
	0x6A956A93294B4211, 0x4A0F729541CF39CF, 0x5A8F620F214B294D, 0x318D4A514A13398D,  // 0x00003698 
	0x4A0F39CD6B117B53, 0x6B135A8F314D3189, 0x73537B537B939C5D, 0x628F52514A136B53,  // 0x000036B8 
	0x7B5541D362514A11, 0x520D5A1139CF318D, 0x318B620F6A954A51, 0x4A1141CF29491905,  // 0x000036D8 
	0x7B5539CD7B956B13, 0x7B537B958BD7A4DF, 0x7B956B11628F5AD1, 0x6B13735339CB7B55,  // 0x000036F8 
	0x5A935A51625341CF, 0x39C962D14A51318D, 0x294B39CF39CF4A4F, 0x528F5A8F6B118BD9,  // 0x00003718 
	0x9C5D318D4A115A95, 0x8BD773558BD9FFFF, 0x4A5139D1294D4A0D, 0x7B9583957B539419,  // 0x00003738 
	0x62D162D14A4F524D, 0x7B539C5B420F6313, 0x5A935251318D4A13, 0x41CD7B5373579463,  // 0x00003758 
};

u64 _hakaana_ouke_room_2_tex_00003778[] = 
{
	0x6545567343747645, 0x5334336466476424, 0x7443566655444454, 0x3545654327542445,  // 0x00003778 
	0x4555465654755464, 0x4653484334535445, 0x3243367445553357, 0x6555654434355563,  // 0x00003798 
	0x4345555456545554, 0x5555565445654556, 0x5455655555445564, 0x4546546555456466,  // 0x000037B8 
	0x5567656644543465, 0x4555534565445456, 0x5565545666655465, 0x5656455667556445,  // 0x000037D8 
	0x5653034564531445, 0x5540111145541102, 0x4531001114666300, 0x0445201201565511,  // 0x000037F8 
	0x1256200012455310, 0x1115456310026555, 0x3134541101014421, 0x0012453110024456,  // 0x00003818 
	0x4553055655422666, 0x4602332285640224, 0x6541411237445112, 0x2555013234743304,  // 0x00003838 
	0x1564131232654143, 0x3437555322375455, 0x1165440133258312, 0x2324550211328453,  // 0x00003858 
	0x74414A6444434963, 0x451599658553369A, 0x6542578658555147, 0x88546A6799846416,  // 0x00003878 
	0x8974258865863258, 0xA5773452489A6465, 0x24966649569B7379, 0x559B95287699B565,  // 0x00003898 
	0x4553486553533865, 0x5632883686543797, 0x6542585158445238, 0x76547616A6556407,  // 0x000038B8 
	0xA85525972486315A, 0x615647514A856555, 0x2485537737884466, 0x25A6544953987545,  // 0x000038D8 
	0x5544474454524712, 0x5614962587632733, 0x4541773067555146, 0x1355521741662007,  // 0x000038F8 
	0x8455589447964698, 0x26A8444258665456, 0x2473541027744530, 0x0550452104503455,  // 0x00003918 
	0x4553375565725438, 0x8503963585433527, 0x7552774168555143, 0x3675541435830536,  // 0x00003938 
	0x7356656464643566, 0x6664445338654534, 0x2376630358755524, 0x4444870144549745,  // 0x00003958 
	0x45532656554148AB, 0x63136524954436AB, 0x844148417A445147, 0xAA555405AA746936,  // 0x00003978 
	0x7565431155555105, 0x4004556249754636, 0x2485516A57765535, 0x99AB940479648646,  // 0x00003998 
	0x4462275544524A87, 0x4514752586543787, 0x7540582178555138, 0x7544330795555418,  // 0x000039B8 
	0x6455651584544268, 0x3047555348745557, 0x3486577546645327, 0x9656641477349545,  // 0x000039D8 
	0x4552375654533965, 0x5603851596532621, 0x5452530069410034, 0x0354000693546507,  // 0x000039F8 
	0x7545100540454264, 0x0167431038644530, 0x0286444426755425, 0x3000362374169544,  // 0x00003A18 
	0x6653386544624974, 0x4613851694443446, 0x6452544468403455, 0x4864344584556317,  // 0x00003A38 
	0x7555243454855353, 0x4668532449734412, 0x4695356318754414, 0x4445651375259466,  // 0x00003A58 
	0x53649B645645AC64, 0x4539A45BA5548AAB, 0x6655BB9AB845A9AC, 0xAA467ABA8535547B,  // 0x00003A78 
	0x83535AAABAA637BA, 0xBAB8439BAB665449, 0xAAA555438C74447A, 0xA9AA954AA65BB544,  // 0x00003A98 
	0x5565555554445543, 0x5556546745565465, 0x5545556744656655, 0x5444686544656455,  // 0x00003AB8 
	0x4554565566543565, 0x5564436644434455, 0x6555454555654466, 0x4565435655464345,  // 0x00003AD8 
	0x0111010110111100, 0x0110000011000000, 0x0010001000100100, 0x0011110110101000,  // 0x00003AF8 
	0x0111101000100001, 0x1000000000011010, 0x0101100010120000, 0x1110100010000000,  // 0x00003B18 
	0x7787887778877889, 0x8787887778889778, 0x7768877899777888, 0x8788987788777688,  // 0x00003B38 
	0x7877778786878778, 0x7887787789887777, 0x7777787888878878, 0x8788777777777777,  // 0x00003B58 
	0x4445545564544544, 0x5454444555465445, 0x4356443664344545, 0x4644445544554545,  // 0x00003B78 
	0x5545554444445244, 0x5544665645355654, 0x3555465454555445, 0x3565365545336545,  // 0x00003B98 
	0x5655355654546554, 0x4565645555544466, 0x5664565545655556, 0x5456555445444557,  // 0x00003BB8 
	0x4453445565565564, 0x5644445455564446, 0x6544455454645655, 0x6545654564456443,  // 0x00003BD8 
	0x5423222335523133, 0x4542222324342462, 0x3344531425343244, 0x1455442232456223,  // 0x00003BF8 
	0x2445542232245423, 0x3225554323444555, 0x5422654444324554, 0x3122245222355455,  // 0x00003C18 
	0x4410112174201000, 0x4630111107502530, 0x2555420115630360, 0x1554550001554011,  // 0x00003C38 
	0x1664420110054100, 0x0124464304764555, 0x6103554310004540, 0x1120375010274655,  // 0x00003C58 
	0x4424886474337784, 0x9655865888316943, 0x7755535889623940, 0x4965642479844585,  // 0x00003C78 
	0x6854557878994389, 0x899944514A634534, 0x5339542316779534, 0x8768984495694544,  // 0x00003C98 
	0x5404A83585227A53, 0x9457736B86417833, 0x88555149A8413511, 0x48644513A9745882,  // 0x00003CB8 
	0x674556A899A857AA, 0x99A7365249655455, 0x6227652026987548, 0x936A864893595435,  // 0x00003CD8 
	0x5307730795327303, 0x7654348846217842, 0x8544216713446757, 0x7B54420693446540,  // 0x00003CF8 
	0x6845521220135222, 0x1133562046244445, 0x2237664674855556, 0x3178444200661455,  // 0x00003D18 
	0x5415742685325124, 0x9655389754225932, 0x6751015316568648, 0x9A65002596655540,  // 0x00003D38 
	0x6845420100165010, 0x0014540245145562, 0x0038646954963445, 0x4188355102631656,  // 0x00003D58 
	0x6325612585358566, 0xA755533446415622, 0x7854764689530127, 0x2256347884564541,  // 0x00003D78 
	0x7763549878884258, 0x8768625776496462, 0x3679653117724654, 0x437655348567A845,  // 0x00003D98 
	0x5425322795596479, 0x8555223754315433, 0x7845745A88520345, 0x3663249865545651,  // 0x00003DB8 
	0x574555888997525A, 0x7457423893495642, 0x37A8542024435565, 0x42775546637A8654,  // 0x00003DD8 
	0x5348556894420362, 0x3652026615459557, 0xA654105845512797, 0x3864156122456211,  // 0x00003DF8 
	0x7417521112144255, 0x0157633730496311, 0x2674543467668552, 0x2477554531562534,  // 0x00003E18 
	0x647626A864202432, 0x5641145426465249, 0x8651234954441794, 0x4865242222544023,  // 0x00003E38 
	0x4237420111464353, 0x1368433422597201, 0x3774453496249630, 0x2456545541533655,  // 0x00003E58 
	0x4543598456468868, 0x9555897888463388, 0x4455899B45546A73, 0x8A55478978855677,  // 0x00003E78 
	0x9AB7437987996377, 0x888845689A897257, 0x9A75554895378444, 0x7997555544889854,  // 0x00003E98 
	0x4314564333356664, 0x6535656675313663, 0x3433456441446752, 0x4643355655633656,  // 0x00003EB8 
	0x6564237646753376, 0x5564235666662366, 0x5743533663364335, 0x6763234324666332,  // 0x00003ED8 
	0x5555555555655555, 0x5545655555655655, 0x6655555555655555, 0x4466455555555655,  // 0x00003EF8 
	0x5555555545555655, 0x5555554555555655, 0x5556555566555555, 0x5555555555565555,  // 0x00003F18 
	0x8787978878788799, 0x7798988898878778, 0x9978897789979888, 0x9998997888999997,  // 0x00003F38 
	0x8986878878889878, 0x8897789987978889, 0x8989778898888789, 0x7788977899877888,  // 0x00003F58 
};

u64 _hakaana_ouke_room_2_tex_00003F78[] = 
{
	0x294B21073A114A51, 0x18C5290918C739CD, 0x7BDD631762D72109, 0x298B5B1939CF318B,  // 0x00003F78 
	0x5293398D31CF62D5, 0x398B29494253294B, 0x2107108321074211, 0x739D4A5152936317,  // 0x00003F98 
	0x3A0F2109294939CF, 0x39CF6B5929491083, 0x2107314B4A93318D, 0x39CD42114A5194A5,  // 0x00003FB8 
	0xAD694A514A532949, 0x188539CF29074A51, 0x421131CD21092109, 0x314B2949A5295AD7,  // 0x00003FD8 
	0xA5274A5129094A53, 0x4A53420F6B5B420D, 0x2107210942512109, 0x318B63176B196319,  // 0x00003FF8 
	0x739B631718C52949, 0x21074A9718C5420F, 0x5B1963194211318B, 0x294918C529492949,  // 0x00004018 
	0x420F4A53398D5AD7, 0x39CF290994A36B59, 0x739B318D21092107, 0x294952D742512107,  // 0x00004038 
	0x39CF4A9729495295, 0x52952909318B52D5, 0x7C1F5293318B52D5, 0x4211318D4A514A51,  // 0x00004058 
	0x52955B1729092949, 0x2909420F7BDF739B, 0x6317294920C74253, 0x5AD731CD39CF4253,  // 0x00004078 
	0x420F425339CD6B5B, 0x4A53210720C75253, 0x842173DD6B5B7C21, 0x6B594A93398B8C61,  // 0x00004098 
	0x42534A51314B2107, 0x2949739D5AD75B19, 0x39CF18C521073A0F, 0x52D520C74A934211,  // 0x000040B8 
	0x294B42536B594A51, 0x294B210931CF39CD, 0x31CF42515295635B, 0x5AD54A1142514A51,  // 0x000040D8 
	0x6B597BDF5AD7318D, 0x294B73DF4A934A95, 0x4A9539CD294B318B, 0x39CD2949290720C7,  // 0x000040F8 
	0x3A113A114A112949, 0x18C5294B39CF31CD, 0x31CF294B318D420F, 0x420F318B294B1885,  // 0x00004118 
	0x4A117C214A954A53, 0x31CF3A114253318D, 0x318B29495B1931CD, 0x294B5AD539CD2949,  // 0x00004138 
	0x318D31CF294918C5, 0x398D8C6363172109, 0x3A11294B2909318B, 0x8421631741CD5293,  // 0x00004158 
	0x210742114A53318B, 0x318D31D1294B2107, 0x294918C552D75295, 0x5AD7739B420F39CD,  // 0x00004178 
	0x210718C518C520C5, 0x5AD573DF318D1085, 0x294B318D4A932107, 0x39CF846394A38C61,  // 0x00004198 
	0x18C539CD4A514A53, 0x420F5293294918C5, 0x2107294B294B39CD, 0x5AD52949318D4A53,  // 0x000041B8 
	0x318B2107294B318D, 0x73DF4A97210918C5, 0x210952D78C635293, 0x318B5295420F39CD,  // 0x000041D8 
	0x2107318D4A954253, 0x29496317425118C5, 0x210721072107314B, 0x6B59420F29495293,  // 0x000041F8 
	0x2107318B4A5139CD, 0x2949294B18C539CD, 0x52D7635B421139CD, 0x420F39CF294918C5,  // 0x00004218 
	0x29494A9552D74211, 0x318D5B194A53294B, 0x2109420F4A116B5B, 0x2949210718C7420F,  // 0x00004238 
	0x5AD752D56B595293, 0x5AD5318B2949294B, 0x21074A53425339CF, 0x39CD318B318B2109,  // 0x00004258 
	0x31CF421131496319, 0x294B94637C214253, 0x318B4A0F314B31CD, 0x294B210910834A51,  // 0x00004278 
	0x62D74A5142535AD7, 0x420F398D4A51318B, 0x294B425329492909, 0x5293318B294B2949,  // 0x00004298 
	0x52D75295294941CD, 0x2107420F73DF5B19, 0x39CF420F318B2109, 0x318F210939CD2107,  // 0x000042B8 
	0x29092107294B5B17, 0x41CF314B318D4A93, 0x635B529362D739CF, 0x39CF39CD294918C5,  // 0x000042D8 
	0x298B42112949398B, 0x18C539CF531B4211, 0x21072949294B31CD, 0x5AD77BDD52D54A51,  // 0x000042F8 
	0x4A53318B318B294B, 0x398D210731CD4251, 0x6B9D318B5AD54A51, 0x4211210939CF5295,  // 0x00004318 
	0x4A5352D739CD5AD5, 0x318B294B21091083, 0x5A955293294939CD, 0x52954A5129075293,  // 0x00004338 
	0x39CD39CD52D72949, 0x4211298B318B73DF, 0x52D7318D94A35295, 0x318D21493A0F420F,  // 0x00004358 
	0x318B318D42515AD7, 0x4A5320C5318B294B, 0x41CF6B5939CF1885, 0x18C5318B318B62D5,  // 0x00004378 
	0x398B29494253294B, 0x2107108321074211, 0x31CF294B529739CD, 0x298B2107294B398B,  // 0x00004398 
	0x294B29494A978CA5, 0x420F31CF84215295, 0x290939CD2949294B, 0x5295841F4A532949,  // 0x000043B8 
	0x188539CF29074A51, 0x421131CD21092109, 0x31CF18C518C539CF, 0x2107420F4A515251,  // 0x000043D8 
	0x3A11294B421139CD, 0x4A535B193A0F2949, 0x2949318B3A114A95, 0x4251210742112949,  // 0x000043F8 
	0x21074A9718C5420F, 0x5B1963194211318B, 0x2949421131CD52D7, 0x318B318B63178C63,  // 0x00004418 
	0x4255298B18C50843, 0x63196B5B10832107, 0x420F210739CD39CF, 0x4A535AD752952949,  // 0x00004438 
	0x2107318D18C72107, 0x39CD318D21094A53, 0x318D39CF2107294B, 0x210918C5420F8CA3,  // 0x00004458 
	0x3A11294B18C5318B, 0x3A0F318D18C7318D, 0x3149318B318D2107, 0x318B94A34A5331CF,  // 0x00004478 
	0x2109210918C51085, 0x294B294B210952D7, 0x42532107318D318B, 0x4211294B318B318D,  // 0x00004498 
	0x29492109294B318B, 0x31CD210931CF4253, 0x18C518C71085294B, 0x52936317294B2107,  // 0x000044B8 
	0x3A114A5118C52909, 0x18C739CD529331CF, 0x39CF18C75B1939CD, 0x5AD7739D294B1083,  // 0x000044D8 
	0x39CF3A1121071909, 0x18C7398D4A9552D9, 0x294B108310855AD7, 0xA5295AD73A0F2109,  // 0x000044F8 
	0x294939CF39CF6B59, 0x294910832109294B, 0x31CD39CF94A55295, 0x39CD73DF52D74A51,  // 0x00004518 
	0x4A954A9539CD18C5, 0x52935AD5318B318B, 0x21094A5342534A93, 0x6B5B635B3A11298B,  // 0x00004538 
	0x3A11318D21072109, 0x2949529339CF318B, 0x3A0F5B194A535AD7, 0x63195B196B9D6B5B,  // 0x00004558 
	0x5B1731CF294B18C5, 0x39CD8C6363172109, 0x3A11294B2909318B, 0x84214A53318D4211,  // 0x00004578 
	0x39CF31CD318D18C7, 0x318B529352936B5B, 0x42533A1152958CA3, 0x4A51298B318D318D,  // 0x00004598 
	0x6319318D108518C5, 0x18C573DF318D1085, 0x294B318D4A932107, 0x39CF18C718C55293,  // 0x000045B8 
	0x294B52D95B193A11, 0x294B318D29494A95, 0x3A1139CD39CF5AD7, 0x21076B9D318D1883,  // 0x000045D8 
	0x2907529339CD39CD, 0x52D74A97210918C5, 0x210952D78C635293, 0x318B210718C720C7,  // 0x000045F8 
	0x318D4211318D298B, 0x18C5210921072949, 0x294B4A5152D7318D, 0x1083421152954A51,  // 0x00004618 
	0x318B62D5398B2949, 0x4253294B18C539CD, 0x52D7635B421139CD, 0x420F210729495293,  // 0x00004638 
	0x5295318B841F420F, 0x5AD752D56B595293, 0x5AD5318B2949294B, 0x294B20C718C5318B,  // 0x00004658 
	0x4A532949188539CF, 0x2907318B2949294B, 0x21074A53425339CF, 0x39CD18C54A535AD7,  // 0x00004678 
	0x42112109B56B4A51, 0x62D74A5142535AD7, 0x420F398D4A51318B, 0x18C718C75295841F,  // 0x00004698 
	0x4211294921074A97, 0x18C5398D4A51318B, 0x294B425329492909, 0x5293294984212107,  // 0x000046B8 
	0x18C7318D739D2107, 0x29092107294B5B17, 0x41CF314B318D4A93, 0x18C7318D42512107,  // 0x000046D8 
	0x529529492107318D, 0x18C7314B318D4A93, 0x635B529362D739CF, 0x39CF294B425118C5,  // 0x000046F8 
	0x294B4A9539CD4A51, 0x4A53318B318B294B, 0x398D210731CD4251, 0x4A5152934A535AD7,  // 0x00004718 
	0x4A5331CF21092109, 0x18C5210731CD4251, 0x6B9D318B5AD54A51, 0x4211210942112109,  // 0x00004738 
	0x298D52D7318D5293, 0x39CD39CD52D72949, 0x4211298B318B73DF, 0xA52739CD318B94A3,  // 0x00004758 
};

u64 _hakaana_ouke_room_2_tex_00004778[] = 
{
	0xBBBCB8CBACCCBBAB, 0xBA9AAAAABCBAA987, 0x9BBBBBABAABBAAAA, 0xABBBBBBBBABDDCBB,  // 0x00004778 
	0xABBCB8CBBCDCCCBB, 0xBA9AAAAABBCBA887, 0x9BBBBBBBBBBBAAAA, 0xBBBCCBBB89BCDDCB,  // 0x00004798 
	0xABBCCCCBACDCCCBB, 0xABAAABBBBBCCA89B, 0xACBABBBBBBBBAAAA, 0xBBCCCBBBABBCDDCB,  // 0x000047B8 
	0xAACCCCDBACDCBBBC, 0xCABBABBBBBCBB99B, 0xABCBBBCCBBCBAAAA, 0xBBCCCBCBBBBBCDCB,  // 0x000047D8 
	0xBABBCCDB9DDBCCAB, 0xBAAABABBBBCBA99B, 0xBBDBBBBBABBB9ABB, 0xCCCCCBBBAABCBCCB,  // 0x000047F8 
	0xBBBBCCDC9CDCDBAB, 0xABAABBBABBCBB99A, 0xBCCBBBBBAABAAABB, 0xCCCCCCCBAABCBBBB,  // 0x00004818 
	0xBBBCBBCC9CDDDBAB, 0xA9BBABBABBCBB999, 0xACCCBBBABABAABBC, 0xCBCCBCCBBABCCBBB,  // 0x00004838 
	0xBBBCA6BB8CCDDBAB, 0xBBCAABBBCBBBBAA7, 0xACCCBAABBBBBABCC, 0xBCCCBCCB98BCCCBB,  // 0x00004858 
	0xBBBCBACA8CDCCAAB, 0xBACAABBBCBBBBAAA, 0xBCDCBAABBBCBBBCB, 0xBCDCBCCB99BCBCBA,  // 0x00004878 
	0xBBBBCCCA8CCCBAAB, 0xBAABABBBCBBAAABB, 0x9ADCCABBBCCBBCCB, 0xACDCCCBABBABBCBA,  // 0x00004898 
	0xBBBBCDC97BCBAAAB, 0xB9ABABBBCBBBAAAA, 0x8ACCCBBBBDCBBCBB, 0xABCDCCBBAAAAABBA,  // 0x000048B8 
	0xBBCBCDB98BBBBABA, 0xAAABBBBBCCCBBAAA, 0x9BCBCBCBBCBCDBBB, 0xBBCDCBBBBBAABAAA,  // 0x000048D8 
	0xCBCBDCBA8AABBBBA, 0xAAAAABBBDCDBAAB9, 0x9BBBCCBBBBBDDBBB, 0xBBCCCBBBBBBABAAA,  // 0x000048F8 
	0xCBBBA9B98AABBBAA, 0xBAABABBBCCCCBAB6, 0x8AAACCBBBBBDCBCB, 0xBBCCCCBBAABBBBBB,  // 0x00004918 
	0xCBAAA7B97AAABBBA, 0xAAABBBBBBBBBBBA5, 0x8AABCCCBBBCDBBCB, 0xBBCCCBAB98CABCCC,  // 0x00004938 
	0xBA9AABB87AABABBB, 0xAABBBBBBBCBCBAA9, 0x9BBBCCCBBCCDCBBB, 0xBBCCCBBBBBBBBBCC,  // 0x00004958 
	0xBA99ABB98AAAABBB, 0xAAABCCBBBBCDBAB7, 0x8CBCCCCCBBCDCBCB, 0xBCCCCBBBBCBBCBBC,  // 0x00004978 
	0x9999BCC98BABBBBB, 0xBABBBBABCCCDBBC7, 0x5CBCCBCCBBCDDCBB, 0xBCBCCBBBCCBBCBBC,  // 0x00004998 
	0x99899CC88BABBBCB, 0xBABCBBBBCCDDBBD7, 0x2BBCBBCCBBDDCCBB, 0xCCCCCBBBBBBBBBBB,  // 0x000049B8 
	0x98879CA79BBBBBBB, 0xAABCBCCCCDDDBCD6, 0x4B9BBBBCBCDDCCBB, 0xBBBBBBBCBACBBBCB,  // 0x000049D8 
	0x976798B8ABBBBBBB, 0xAACCBCCCCDDDBDC1, 0x1B8ABBCBBCDDCCCB, 0xBCBCBBCCB8DBBBBB,  // 0x000049F8 
	0x8667BBB8BBBBBBBB, 0xBACCBCCCCDCBADB1, 0x2C8ABBCBBCCCCCCB, 0xBCBBBBBBBACBBCBB,  // 0x00004A18 
	0x7667BCB8BBBBBBBB, 0xBABBBCBDCDB98CB2, 0x1C9ACBCBBCCBDCBB, 0xBCCBAAABBABCCBAA,  // 0x00004A38 
	0x8667ABA8AABBBABB, 0xBBBBBACCCDB98CB1, 0x1CABCBCBBDDCCCBB, 0xACCBAABBBBCCCCA8,  // 0x00004A58 
	0x95688A98A9AAA9AA, 0xBABABACACCCA8BA4, 0x2B99BCDBACCBBBCC, 0xBCCB999A99ABCBA7,  // 0x00004A78 
	0x95567988989899AA, 0xBAA9BA99CC967989, 0x29968CDB99AAABCC, 0xBCCB9A88868BB998,  // 0x00004A98 
	0x744797788789A99A, 0xBA9A9988AA747868, 0x26847BBB999999AA, 0xBCCBAB87967BA888,  // 0x00004AB8 
	0x223442367787898A, 0x99A9997787525651, 0x166459A989975778, 0x6788566551365454,  // 0x00004AD8 
	0x3401234787678888, 0x8A8A988686110000, 0x4331345245654435, 0x5744343221213586,  // 0x00004AF8 
	0x9BAACCCB78A99BB8, 0xAAAAA89998A99877, 0x7A7689A799BCBABB, 0xDB99A977A8667997,  // 0x00004B18 
	0xAB9ABBBB9A7A9999, 0x9BBB9A9A98AA9889, 0x9A78779678ACAAA9, 0xCBBBBB9698567AB8,  // 0x00004B38 
	0xAB99BABA9A97A999, 0x8AABA99999BA9999, 0x9958769589BBABAA, 0xBBCBAAA588577BAA,  // 0x00004B58 
	0xABA9AAA89A87A998, 0x8AABB7989ABA999A, 0x995788969AABABAA, 0xBAACB9A585586AAA,  // 0x00004B78 
	0x9AA9A9A989A889A9, 0x8AABB789AAA89997, 0x8A7888979BABBBA9, 0xBBABBAA586786ABB,  // 0x00004B98 
	0x99A996BA8BAA9999, 0x9BBAA89BAAB99A95, 0x9A998798ABAAAAA9, 0xBAABBBA573896AAA,  // 0x00004BB8 
	0xAAAAA9AA9BBA9BA9, 0xABAAAA9BAAAAAAAA, 0xAA999798ABAAAAA9, 0xAABBBBB688986AAA,  // 0x00004BD8 
	0xAAAAAAA99AAA9AA9, 0xBBAAAAAAAAAAABBB, 0xAB89A898ABA9AAAA, 0xAABABBA59A9769A9,  // 0x00004BF8 
	0x9A99A9A89AAAAAAA, 0xAAAAAAAAAAAAABBA, 0xAA99A8989AA9AAAA, 0xAAABBAA699987999,  // 0x00004C18 
	0x9A99A999AABAAAAA, 0xBAAAAAAAA99BABB9, 0x589997899AAAAAAA, 0xAAABAAA684798899,  // 0x00004C38 
	0x9999AA99AABB9AAA, 0xBAAAAAAAA99A9AB9, 0x599998899AAA9AAA, 0xAAABBAA773798798,  // 0x00004C58 
	0x99999798AABB9AAA, 0xBBAAAAA9A9977AA7, 0x79999889AAAA9AAA, 0xAAABAAA864798888,  // 0x00004C78 
	0x99999698AABBBBBB, 0xBBABAAA99AB869A5, 0x5AA998899AAA9A9A, 0xAAAAABB851798878,  // 0x00004C98 
	0x98889888AAABABBB, 0xABBBAAA989A869A9, 0x7AA998889A999A8A, 0xAAAA9BB862798988,  // 0x00004CB8 
	0x98889998AAAA9ABA, 0xBBABB9987997489A, 0x8BB998889999897A, 0xAAAA9BB963897988,  // 0x00004CD8 
	0x888899999A9AAAAA, 0xBBAAB99869973799, 0x89BA97889999886A, 0xAAAA9BA964887988,  // 0x00004CF8 
	0x988898999AAAA9A9, 0xBBABB99657983799, 0x88AAA7889989986A, 0xAA9AAAA962697988,  // 0x00004D18 
	0x98989898999A99A9, 0xBBBBA895468726A7, 0x989A98989989986A, 0xABAAA9AA63796988,  // 0x00004D38 
	0x989984889A8A89A8, 0xBBBBA8A4456516A5, 0x79AA989899788759, 0xAABB9AA971686988,  // 0x00004D58 
	0x989997888A8A6898, 0xBBBB98A4455516A9, 0x99A9989889787659, 0xAAAAAAB873775988,  // 0x00004D78 
	0x999999898A894788, 0xBBAB97A345541799, 0xA899888889876769, 0xBABAABA984875978,  // 0x00004D98 
	0x99999898898A5688, 0xACAA88A3444318A8, 0x689887889A885669, 0xBABAABAA95876A78,  // 0x00004DB8 
	0x9999979868894687, 0x9BAB7693344319B8, 0x589877789A886679, 0xAABBABAA94687A88,  // 0x00004DD8 
	0x9988879867794688, 0x9BAC769443464ABA, 0x9898778999998889, 0xBBBB9AAA93577988,  // 0x00004DF8 
	0x999A879667893587, 0x9BAB669442475AB7, 0x8798778999999979, 0xABBA989992686978,  // 0x00004E18 
	0x999A969568772587, 0x8AAB66A6636759B7, 0x8798878989888878, 0x9AAAB99890265876,  // 0x00004E38 
	0x99AAA9A458652675, 0x9AAA56A565565BBA, 0xA998877988778887, 0x999ADCBBC7447868,  // 0x00004E58 
	0x9A9AA9A458432663, 0x7A9B658653554CCA, 0xA998877888787887, 0x88889BCBC978BB99,  // 0x00004E78 
	0x9A9AA9A677433664, 0x89AA558653423CBA, 0x7788766789666677, 0x7776456BE9776998,  // 0x00004E98 
	0xAAAA9AA666422686, 0x8A97758565413AA8, 0x5886754688666677, 0x7764332285012566,  // 0x00004EB8 
	0x9A99898455455676, 0x8811953112211997, 0x7975554677654566, 0x5541232020025555,  // 0x00004ED8 
	0x5568648664686438, 0x95000300000017A7, 0x7851144336441343, 0x0124422010016634,  // 0x00004EF8 
	0x1234202220122003, 0x3100000000000031, 0x1441000001000000, 0x0000101000002312,  // 0x00004F18 
	0x0000000012100020, 0x0022000000000254, 0x3553311020000000, 0x0431001333624642,  // 0x00004F38 
	0x465568879A967686, 0x38998A7631222436, 0x5889978787787777, 0x46675589A8988987,  // 0x00004F58 
};

static u8 unaccounted4F78[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx_t _hakaana_ouke_room_2_vertices_00004F80[4] = 
{
	 { -47, 71, -1201, 0, 0, 1024, 104, 140, 150, 255 }, // 0x00004F80
	 { -13, 75, -1201, 0, 4096, 1024, 104, 140, 150, 255 }, // 0x00004F90
	 { -14, 84, -1201, 0, 4096, 0, 255, 255, 255, 255 }, // 0x00004FA0
	 { -49, 80, -1201, 0, 0, 0, 255, 255, 255, 255 }, // 0x00004FB0
};

Vtx_t _hakaana_ouke_room_2_vertices_00004FC0[8] = 
{
	 { -49, 71, -1201, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004FC0
	 { -13, 71, -1201, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004FD0
	 { -49, 84, -1201, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004FE0
	 { -13, 84, -1201, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004FF0
	 { -49, 71, -1201, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005000
	 { -13, 71, -1201, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005010
	 { -49, 84, -1201, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005020
	 { -13, 84, -1201, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005030
};

Gfx _hakaana_ouke_room_2_dlist_00005040[] =
{
	gsDPPipeSync(), // 0x00005040
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005048
	gsSPVertex(_hakaana_ouke_room_2_vertices_00004FC0, 8, 0), // 0x00005050
	gsSPCullDisplayList(0, 7), // 0x00005058
	gsDPPipeSync(), // 0x00005060
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005068
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005070
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005078
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _hakaana_ouke_room_2_tex_00005108), // 0x00005080
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 7, 0), // 0x00005088
	gsDPLoadSync(), // 0x00005090
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005098
	gsDPPipeSync(), // 0x000050A0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 16, 0, 0, 0, 2, 5, 0, 2, 7, 0), // 0x000050A8
	gsDPSetTileSize(0, 0, 0, 508, 124), // 0x000050B0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000050B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x000050C0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000050C8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000050D0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000050D8
	gsSPVertex(_hakaana_ouke_room_2_vertices_00004F80, 4, 0), // 0x000050E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000050E8
	gsSPEndDisplayList(), // 0x000050F0
};

Gfx _hakaana_ouke_room_2_dlist_000050F8[] =
{
	gsSPDisplayList(_hakaana_ouke_room_2_dlist_00005040), // 0x000050F8
	gsSPEndDisplayList(), // 0x00005100
};

u64 _hakaana_ouke_room_2_tex_00005108[] = 
{
	0xF0F0F0F0F0B0F0F0, 0xF070F0B0F0E0B0F0, 0xF0F0F080F0F090F0, 0xF0F0F07070F0F0F0,  // 0x00005108 
	0x7080F09090B080C0, 0xD0F0F0D0A090D070, 0xF0F0F0F0F070F0C0, 0xA0F0F090F0B0E0F0,  // 0x00005128 
	0xF0F0F0F0A0F0C0F0, 0x80F0F0F0F0F0C0F0, 0xA0F0B0F0F0F0F0F0, 0xF0E0F0F0C0F0B0F0,  // 0x00005148 
	0xF0C0F0F0E0F0D0E0, 0xF0F0F0F0C0F0F0F0, 0xF0F0F07070F080A0, 0xF070D080F0F080E0,  // 0x00005168 
	0xF0F0F0F0F0F0F0C0, 0x90F0E0F070D08080, 0xF0B0F0F0A0F0F0C0, 0xD0F0B0C0E0A0F0F0,  // 0x00005188 
	0x80F0F0B0F08080F0, 0xF080A0E0F0C0F070, 0xF0F090D090F0F0B0, 0xF0F0F0F090F0E0F0,  // 0x000051A8 
	0x90F0F0A0F0F0F0F0, 0xD0F0F0F0E080E0A0, 0x70C0E0F0C0D070A0, 0xE0A0F0F0F0F0D080,  // 0x000051C8 
	0xE0F070F0F0F0E0F0, 0xD0F090C0E0F0F070, 0xF0708070F0F0B0F0, 0xF0F0F0D0C090F0F0,  // 0x000051E8 
	0xD0F0F0F0F0B0F090, 0x807D0D6D1D5DA0F0, 0xF0F0F0F0B0F0F0B0, 0xD080F0F0F070F080,  // 0x00005208 
	0xF0E0F080F0F0C0F0, 0xF0B0F0E0F0F0F080, 0x80F0C0D080F0F0F0, 0xC080F0F0F0F0F070,  // 0x00005228 
	0xF0F07080A0F0F0B0, 0xF080A0F0C0F0B0F0, 0x7070F0F0F0F0F0F0, 0xF0F0F0F090E090F0,  // 0x00005248 
	0xF0F080D0E0F0E0F0, 0xA0F0F0F0E0F0F0C0, 0xB0F0F090E0F0F070, 0xF0A0B0F0C0C090F0,  // 0x00005268 
	0xF0C0F0A0F0E0C07D, 0x5D3D1D0D0F0DE0C0, 0xE0C0F0F0D0E0F070, 0xF0B0F0F0F0F0F0F0,  // 0x00005288 
	0xA090F070F0F0F070, 0xF0F0F0F0E0E0F0B0, 0xA0E090F0F0F0D0F0, 0xF0D0F0F0C0F0AD3D,  // 0x000052A8 
	0x8DB0F0F0F090F0F0, 0x90F0A0F0F0C0F0E0, 0xB0A0F0B080F070F0, 0x80F070A0D0E090AD,  // 0x000052C8 
	0x0D3D0D4D60A0F090, 0xF070F0A0C0A070F0, 0xC0F0F0F080F0F0A0, 0xF0F0F0F070D0F0F0,  // 0x000052E8 
	0x90B0D0C0F0F09D3D, 0x9DE0A05D0D0D4DB0, 0xF0D0F0F090F080D0, 0xF0F0D080B0F0D0A0,  // 0x00005308 
	0xB0F080C08080F0F0, 0xA0F0F0B0F0F0A0E0, 0xF0F0C0F080F0F0F0, 0x80F0F08D0D0D0D0F,  // 0x00005328 
	0x3D90F0F0C070F0F0, 0xD080F0F090F0F0F0, 0xF090B0F0F0E07080, 0xF0F0F080F0C02D4D,  // 0x00005348 
	0x0F0F0F0D4DF0F090, 0xF0F0C0F0F0D080F0, 0xD0F0F0F0F0F0F0F0, 0xF0F0F0F0B0F0E090,  // 0x00005368 
	0xF0F090F0F0F04D1D, 0xF0F0F0F0900D5DC0, 0xC0C0F080904D1D0D, 0x4D0D0D0D0D4D0D4D,  // 0x00005388 
	0x2D0D4D6D0D0D0D1D, 0x6D0D0D5D7D1D1D1D, 0x1D1D4D1D0D3D0D6D, 0x1D0D2D0D0F0F0F0F,  // 0x000053A8 
	0x0D0D4D3D7D4D0D1D, 0x3D0D0D1D0D0D5D5D, 0x5D6D6D3D0D3D1D4D, 0x0D0D0D6D3D0D1D0F,  // 0x000053C8 
	0x1F0F0F0F0D2D0D5D, 0x1D5D3D1D0D3D0D3D, 0x0D0D4D4D90F0A090, 0x80F0D0F0F0F0A0F0,  // 0x000053E8 
	0xF0E0D0F0F0F05D7D, 0xC0D0B0F04D0DC0F0, 0xF0F0E0F0909D5D8D, 0x1D5D7D2D1D4D3D3D,  // 0x00005408 
	0x6D2D5D1D1D3D3D7D, 0x1D2D4D3D6D2D6D3D, 0x3DAD6DAD2D4DAD4D, 0x5D1D4D0F0F0F0D2D,  // 0x00005428 
	0x5D2D9D3D4D1D6D6D, 0x9D3DAD2D2D2D3DBD, 0x4D5D7D8D1D7D1D5D, 0x9DBD7D3D9D1D0D0F,  // 0x00005448 
	0x0F0F0D1D2DCD0D7D, 0x2D8DBD5D9D1DAD8D, 0x9D9DBD5DB0E0F080, 0x90F0F070F0C0B0F0,  // 0x00005468 
	0xF0F0F0F0F0F090F0, 0x80E0C05D0D9DF0D0, 0xC0A0E0B09070F0F0, 0xC0B0F0F0F0F0F0F0,  // 0x00005488 
	0xF0A0F0B0B080F0D0, 0xA080B0B0B0E070C0, 0xF0E080F0D0A0B080, 0xF0F02D1F0F0D9DF0,  // 0x000054A8 
	0xE0F0E0F0F090F0F0, 0xF0F0A080D0F0F0F0, 0xF0B0E0F080F090F0, 0xA0F090B0F0E02D0D,  // 0x000054C8 
	0x0D0D0D80F0F0F0C0, 0xA07070A0F0A0C0B0, 0xF0F0F0F090F0E0F0, 0xF0F0F0F0F0E0F0F0,  // 0x000054E8 
	0xF080F0F0F0F0F0F0, 0xF0A0E01D2DF0F0F0, 0xC0C0B0F0E0D0F0F0, 0xF0F0A0A0F0B0B0B0,  // 0x00005508 
	0xB0F0F0F0E0C090F0, 0xF0F0F090D0F0F0F0, 0xF0D0F0E090E0E0F0, 0xF0A00D1D0DADE070,  // 0x00005528 
	0xB080F070E0D0F0F0, 0x80F0A0A0F0C080F0, 0xA0F0A0A0A090F080, 0xF0F0F0D0A0F0F0F0,  // 0x00005548 
	0x6D70E0F0F0E0D0F0, 0xD0E0F0F0F0F0F0F0, 0x8090E0F080F0E0F0, 0xC070A0F0F0B0F0B0,  // 0x00005568 
	0xF080E0F0F0F0F080, 0x80F04D0D5DF090F0, 0xF0F090E0F0F0F0F0, 0x90F0F0C0C0C0F080,  // 0x00005588 
	0x9090E0C0F0C080B0, 0x90F070F0F070F0F0, 0xA0B080D0F0B080F0, 0xF0F0D0F0D0E0F0E0,  // 0x000055A8 
	0xB0F080F0D080F0F0, 0xF080F090F0A0F0F0, 0xF0F0B0F0F0A0A0D0, 0x90A0F0F0F0F0F0F0,  // 0x000055C8 
	0x70F0F0F08080A0F0, 0xF0A0F0F0F0F0F0A0, 0xA0F070F0E0F0F0D0, 0x90F0A0F0C090F0F0,  // 0x000055E8 
	0xF0F0C090F0E0F070, 0xD0800D3DB0F0F0A0, 0xF0F0C0D0F0B0C07D, 0x5D5D5D4D9DBD6D5D,  // 0x00005608 
	0x4D4D5DCD3D5D8DBD, 0x7D5D5D9D5D4D7D5D, 0x9D5D6D5D5D5DCD4D, 0xBD8D9D5D5D5D5D5D,  // 0x00005628 
	0x5DADAD7D9DAD2D0D, 0x0D4D5D3D6D8DBD7D, 0x7D3D5D8D5DCD5D5D, 0x5D8D4D8D5D3D5D5D,  // 0x00005648 
	0x9D8DAD7D5D4D7D8D, 0xCD5D5D5D3D4D3D5D, 0x5D5D5DBD5DCD8DC0, 0x90F0F0F0F0F070F0,  // 0x00005668 
	0xC0F0C0F0B0F0B080, 0xC05D1D60F0F0F0A0, 0x70B0F0E0E0F0F00D, 0x0D0D2D0D0D0D0D2D,  // 0x00005688 
	0x0D0D1D0D0F2F1F0D, 0x0D1D0D2D0D0D2D1D, 0x2D0D1D0D0D1D2D3D, 0x0D1D0D0D1D0D0D0D,  // 0x000056A8 
	0x2D1D0D2D0D0F0F0F, 0x0D0D1D0D0D0D0D0D, 0x1D0D3D0D0D0D2D2D, 0x1D0D1D2D1D0D0D0D,  // 0x000056C8 
	0x2D0D0D0D0D2D0D0D, 0x2D0D0D0D0D2D1D0D, 0x0D0D0D0D0D0D3DF0, 0xF0F0F0F0F0F0F0C0,  // 0x000056E8 
	0xF0F0F0F0F0F0C0F0, 0xA00D2DD0F0F0F0F0, 0x90F0F0C0F080F080, 0xF080E0B0F0F0F0C0,  // 0x00005708 
	0x80F0F0BD0F0F0F8D, 0xF080F0F070F0F070, 0xF0F0F0F0F0F0F080, 0xF0C0C0C0F0A0F0F0,  // 0x00005728 
	0xF070E0F00D0F4F4F, 0x0DF0F0C0C0F0D090, 0xB0F0F0D0F0F0A0F0, 0xA0A0F0F0F0F0D0F0,  // 0x00005748 
	0xF0F0D080B0D0F0A0, 0x7080F070F0E090F0, 0xF0F0F0F0F0F0F0C0, 0xF0F090F0B090F090,  // 0x00005768 
	0x90F0F090807070F0, 0x5D0D70F07D1D0D0D, 0x1D5DC0F0C0F070F0, 0xC08080B0F0F0F0F0,  // 0x00005788 
	0x80705D0D0F0F1D4D, 0xF090F0F0F0F0F080, 0xB0F0F0F070F0C0F0, 0xF0F080F0F0F0F090,  // 0x000057A8 
	0xF0C0B0F01D1F0F0D, 0x3DF080F0F0F0F0F0, 0xA090F0F0D080F0F0, 0x90F0A0F090A0E080,  // 0x000057C8 
	0xE0F0D0A09090F0B0, 0xF0F0F080C080F0B0, 0x9070F0F0F0F0F0B0, 0xF080F07080F0F0F0,  // 0x000057E8 
	0xA0F0D0C0F0F0F090, 0x3D9DE02D0D1D0D0D, 0x0D0D5DF0A0F0D0F0, 0x80F0F0F0C0F0B0A0,  // 0x00005808 
	0xB0C06D0F0F0F5D70, 0xF070F0F0F0F0D0F0, 0x9070F0E0F070F090, 0xF070F0A0F0F0F0F0,  // 0x00005828 
	0x90F0F0F02D8F0F3D, 0xE0F08090F0F070F0, 0xC0B0F0F0B0F0F0F0, 0xF0F0F080B0F0C0F0,  // 0x00005848 
	0xD0F0D0F090F0F0B0, 0xF0F0E090E0F0F0F0, 0xF0E080F07080F0A0, 0xF0B090A080C0F0F0,  // 0x00005868 
	0xE0D0B070F09080D0, 0x6D9D5D0D0D5DA0A0, 0x5D0D0DF0F0F0B0F0, 0xF05D8D5D5D1D5D2D,  // 0x00005888 
	0x5D6D0D0F0F0F5D5D, 0x5D2D9D4D5DBDCD6D, 0x1D6D5D9D4DAD9D2D, 0x9D3D8D4D2D5D1DAD,  // 0x000058A8 
	0x1D3D9D8D8D3F3F1D, 0x3D2DADBD1D7D9D1D, 0x3D9D2D1D0D4D8D5D, 0x3DBD7D1D2DADBD2D,  // 0x000058C8 
	0x1D6D3D4D2D2D1D9D, 0xBD1D2D4D1D2D1D2D, 0x7D6D5D1D9D6D5D4D, 0xCDF0F090F080F0F0,  // 0x000058E8 
	0x90F0D0B0F0F090D0, 0x1DBD4D0D2D80F0C0, 0xB00D0D5DF0F090F0, 0xF05D6D4D5D3D0D4D,  // 0x00005908 
	0x6D6D5D0D4D1D3D0D, 0x3D0D0D2D5D0D1F1F, 0x1F3F0F0D6D4D1D0D, 0x1D2D1D4D5D4D2D0D,  // 0x00005928 
	0x1D1D6D0D0D7D1D0D, 0x2D0D5D0D2D2D5D4D, 0x0F5F5F0F3D2D0D1D, 0x3D6D2D0D6D0D5D0D,  // 0x00005948 
	0x7D6D2D0D4D2D6D0D, 0x0D4D4D1D1D4D4D0D, 0x2D3D3D6D6D5D1D1D, 0x5DE080F080F0F0E0,  // 0x00005968 
	0xF070F0F070E0C070, 0x1D5DF00D5DB00D1D, 0xF05D0D1DF0F0F0C0, 0xF0A0F0E0C0A0F0F0,  // 0x00005988 
	0xF0C0F070E0C0E0C0, 0xF0F0D0E0F01D4F0F, 0x0F0F3F4DF0F0A090, 0xF070F0F0F070F0F0,  // 0x000059A8 
	0xF0F0E0E0F0B0A0E0, 0x90F0F0F0D0F0F09D, 0x8F1F0F2F5DA0E0B0, 0xF0F0F090F0F090F0,  // 0x000059C8 
	0xA0F0F0C0F0E0B0A0, 0xF0B080F070F080F0, 0x70A0D0E090F090F0, 0x80E070A0F090F070,  // 0x000059E8 
	0xF0C0809080F0F0C0, 0x3D4DF01D7DC00D0D, 0xB0F00D2DF08070F0, 0xA0F0C0F0B0F090F0,  // 0x00005A08 
	0xF0F0F0F080B0F0F0, 0xF070F0C07D4D0F0F, 0x4F4F5D3D90F0C0B0, 0xF0F0F0F0F0C0F080,  // 0x00005A28 
	0xF0F0F0F0F0A090F0, 0xF0D080F0F090F00D, 0x0F2F0F0F5DE0F0D0, 0xA09090F0B0F0F0F0,  // 0x00005A48 
	0x80C080F0B09070F0, 0xF0F0F0F0B0F080F0, 0x7080F0F0F090F0D0, 0xF0A0E0A0F0E0F0C0,  // 0x00005A68 
	0xB0807080D0F0D090, 0x7D5DE0C0F0804D0D, 0xD0F01D0DF0F0C0F0, 0xF0F0808070F070B0,  // 0x00005A88 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0900D0F0F0F, 0x0D0D3D90F090A0D0, 0xF0F0D0F0A0F0F080,  // 0x00005AA8 
	0xF0F0F0F0F0F0F0C0, 0xF0F080C0F0F0700D, 0x6F2F0F0D5DF0F0B0, 0xF0F0F0B070B0F0A0,  // 0x00005AC8 
	0xF0D0D0F0F090F0E0, 0xA0F0F0B0A0F0D0F0, 0xB0F0F0F0F080F0F0, 0xF0F0F0A0F0F0F0C0,  // 0x00005AE8 
	0xF090D0F0F0F0F0D0, 0xF00D0D4DC05D0D2D, 0xC0F00D2DE070B080, 0xF070E0D0F0F080F0,  // 0x00005B08 
	0xA0A0F0C080F0A0F0, 0xA0A0A0900D0F0F0F, 0x1DD0A0F0F0F0B070, 0xE0F0F0E0D0F0D0E0,  // 0x00005B28 
	0xF0F0F0F0F0F08090, 0xE0F080F0E0F08D0D, 0x0F0F1F5DF0B0F0F0, 0xF090B070F0F0F0B0,  // 0x00005B48 
	0xF0A0B07080F0E090, 0xE0E0F0E0F0F0F0F0, 0xF0A0F0F0E090F0F0, 0xF090F0F0F0B0F0F0,  // 0x00005B68 
	0xC090F0A0F090F0E0, 0xF05D0D1D0D0D3D70, 0xD05D1D5DF090F0F0, 0xF0F0F08D4D6D7DBD,  // 0x00005B88 
	0x5D6D7D3D2D2D1D1D, 0x3D7D2D7D7D0F8F0F, 0x0DADAD3DBD8D3D9D, 0x7D7D2DCDAD2D5D5D,  // 0x00005BA8 
	0x5D2D2D5D2D6D1D6D, 0x6D1D1D9D8D5D9D0F, 0x1F3F4F1D7D7D7D3D, 0x3D1D8D8D2D4D1D2D,  // 0x00005BC8 
	0x1D2D4D2D2D2D4D1D, 0xBD7DAD5D8D5D1DAD, 0x2DAD2D3D3D5DAD2D, 0x5D4D5DF0F0F0F0F0,  // 0x00005BE8 
	0x80F090D0D080F0F0, 0xE0C0E01D1D1DF0F0, 0xF03D0DF0F0F0F0F0, 0xC090F02D2D0D1D0D,  // 0x00005C08 
	0x0D4D0D1D2D0D4D2D, 0x0D1D4D0D1D1D0D4D, 0x7D0D1D2D0D6D0D0D, 0x5D3D0D0D1D2D0D4D,  // 0x00005C28 
	0x0D2D4D0D1D0D1D4D, 0x0D6D6D5D3D0D2D1D, 0x1D0D4D2D0D6D4D2D, 0x2D1D1D2D2D1D0D1D,  // 0x00005C48 
	0x0D0D0D1D2D1D1D0D, 0x0D1D0D3D5D3D7D1D, 0x0D1D6D0D5D5D1D1D, 0x2D1D7D90C0E0F0F0,  // 0x00005C68 
	0xF0F0F0F070F0F0F0, 0xE0F0F0A0F0D0F0F0, 0x0D0D4DF080D0F0F0, 0xF0D0C090C0A0F0F0,  // 0x00005C88 
	0x90F0F080D0F0A080, 0x70E0F0F0C0F0F090, 0xA0F0F0A080F0C0E0, 0xB0A070F0F070B0E0,  // 0x00005CA8 
	0x70B090B0F0F0F080, 0xF0F0F0E0F0F0F090, 0xF080F0F0F080E0F0, 0xF0F0F0F080F0F090,  // 0x00005CC8 
	0xA0A0C0F0F0F0B0F0, 0xF0A0F0F0C0F0E0F0, 0xF080F0E0E0F090B0, 0x80C0E0D0E0C0F0F0,  // 0x00005CE8 
	0xA0F0F0A0B0F090A0, 0x9090B0F0C0A0806D, 0x1D3DC0A0F0F070B0, 0x70F0F0BDBDF0F0A0,  // 0x00005D08 
	0xF0F080F0F0F0F0F0, 0xF0D0F0806DF090A0, 0xF0E0D0F06DF090E0, 0xF0D080F0F0F0E0F0,  // 0x00005D28 
	0x80F0F070F0F0F0E0, 0xF0E03DF0C0F0F0F0, 0xF0F0F0F090F0D0F0, 0x80F0A0F0D0D0A080,  // 0x00005D48 
	0xF070C0F0F080F0D0, 0xF0F0F090F080F0A0, 0xF0F0F0B080A0C0C0, 0xE0E0F0F0F0F0F0F0,  // 0x00005D68 
	0xF0C0F0F0F0F090F0, 0xF090A0F0F0E0E03D, 0x4D5DE0F0B0C0F0F0, 0xF0F0C02D0D0DF0E0,  // 0x00005D88 
	0xF0F05D5DF0F0C0A0, 0x9D9DF0B01DBD70F0, 0xF0F0F0E00DF0F0F0, 0xF0F0AD3DF0F09090,  // 0x00005DA8 
	0xF0F0C0F0F0F0F0F0, 0xF0B01D80F0A0F070, 0xB0B02D0D0D3DD05D, 0x80F0F090E0F01D0D,  // 0x00005DC8 
	0x1D6DF07DBDB0F0F0, 0xD0E0F0F070F0F0F0, 0xB0F0F0F0D0B0F00D, 0x3D0D2D2D5DF0F0F0,  // 0x00005DE8 
	0xF0E0F0A0F0F0F0E0, 0xF0F0C0B0F0F01D0D, 0xE0F070F0A0B0F0C0, 0xC090F0F0F00DF0F0,  // 0x00005E08 
	0xF01D0D5D0D0D0D0D, 0x0D0DA0803D5DF0F0, 0xC0F0E06D1DF0F0D0, 0xF02D0D0DA080F05D,  // 0x00005E28 
	0x5D5DA090A090F0F0, 0x2D0DD05D4DF0A0F0, 0xF0C00D6DF02D0D7D, 0xE0F00DF0B0F00D2D,  // 0x00005E48 
	0x4D1D3D0D4DBD0D4D, 0xB0901D8D70A0F0DD, 0x1D70F0705D0D0D0D, 0x0F3D0D8D5DA0B0F0,  // 0x00005E68 
	0xE0E0F0F0C0F0D0F0, 0xF080C0F0F08D1D6D, 0xF0B070F0F0F0D080, 0xF0F0F0F0D00D2D70,  // 0x00005E88 
	0x9D1D1DF0E0F0B0F0, 0x0DF0F0F06D2D0D0D, 0x0D5DF01D5DF0F0F0, 0x5D4D4F0D80C07D3D,  // 0x00005EA8 
	0x0D4D4D0D5DF0F0AD, 0x0D3DF00D5D901D5D, 0xF06D0D80F070D070, 0xF0F00DF0B05D3D0D,  // 0x00005EC8 
	0xC0F0F02D1DAD0D3D, 0x70E08D5DF0F0F05D, 0x0DF0F0F05D0F0F4F, 0x0DDD8080F080F0F0,  // 0x00005EE8 
	0xF0F0F070F0F0F0E0, 0xF0F0D07D2D0D9DD0, 0xD0F0E0F0A0A0F0F0, 0xF0F0F0F0F01D2D4D,  // 0x00005F08 
	0x1D0DA070A080F04D, 0x0DF090E0F0E05DAD, 0x3DF03D1D70B0F0F0, 0xE06D7D2DF0D00D4D,  // 0x00005F28 
	0x8D906D2D0D0D0D0D, 0x0DF0A00D5DA07D5D, 0xF02D5DA0F0E06D8D, 0x3D5D0DC0B05D5F4D,  // 0x00005F48 
	0x3DA0805D0D800D1D, 0x80F05D5D705D5D8D, 0x5D90F0905D0D0F0D, 0x2DF0C070F0C0D0F0,  // 0x00005F68 
	0xF0C0F0C0F0F0F0C0, 0xF0F09D0D3D5DC0F0, 0xA0D0F0B0F090F0A0, 0xF0F0F070C0F00D7D,  // 0x00005F88 
	0x0D2DF0F0F0BD0D0D, 0xBDF0F0A070F0E0F0, 0xB01D5D8D90F0A0F0, 0x90F09D2DBD5D9D5D,  // 0x00005FA8 
	0xF0F070B09D5D50F0, 0x90F0F02D2D2D0D2D, 0xF0F0F0F0F0F01D0D, 0x0D0D1D0D1D1D5F2D,  // 0x00005FC8 
	0x8DF08090F0F00D2D, 0xF0D0F05D1D0D5DF0, 0x0DADF0B0900D0D0D, 0xF090F0F07090F0F0,  // 0x00005FE8 
	0xF0F0A0C0F0F0F0F0, 0xF0F0F070F0F0F0E0, 0xF0F0D0E0F070D0D0, 0xD0F0E0F0A0A0F0F0,  // 0x00006008 
	0xF0F0F0F0F00D2DBD, 0xE0F0B070A080F0B0, 0x0D0D1DE0F0E090F0, 0x80F0B05D0D3DF0F0,  // 0x00006028 
	0xF0B0F0D0F0D080F0, 0xF090F0F00D1D0D3D, 0xE0F0A0F080A0F0F0, 0xF0A0F0A06D0D1D0D,  // 0x00006048 
	0x70B080C0B0A00DCD, 0x70A080F04D80F0E0, 0x4DF0F0F070C05DCD, 0xF090F090F0E0B0C0,  // 0x00006068 
	0x80B0F0F0E0F0F080, 0xA0F0A0F0F09090E0, 0x80F0D0F0F0B0F0F0, 0xE0F0F0F0F0F0F0C0,  // 0x00006088 
	0xF0A0C0F0D0F0F0F0, 0xF090F0F0C0F080F0, 0x0DCD80E0B0F0F0F0, 0xC080F0F0F0C0F0C0,  // 0x000060A8 
	0xF0F080F0F070F0F0, 0x70F0F0F0F0F0F0F0, 0x80F0C0C0C0F0A0F0, 0xF0F070E0F0901D5D,  // 0x000060C8 
	0xF0F0F0F0C0C0F0D0, 0x90B0F0F0D0F0F0A0, 0xF0A0A0F0F0F0F0D0, 0xF0F0F0D080B0D0F0,  // 0x000060E8 
};

static u8 unaccounted6108[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


