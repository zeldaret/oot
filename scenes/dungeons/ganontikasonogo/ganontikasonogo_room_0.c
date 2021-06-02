#include <ultra64.h>
#include <z64.h>
#include "ganontikasonogo_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "ganontikasonogo_scene.h"



SCmdEchoSettings _ganontikasonogo_room_0_set0000_cmd00 = { 0x16, 0, { 0 }, 0x11 }; // 0x0000
SCmdRoomBehavior _ganontikasonogo_room_0_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _ganontikasonogo_room_0_set0000_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0010
SCmdTimeSettings _ganontikasonogo_room_0_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _ganontikasonogo_room_0_set0000_cmd04 = { 0x0A, 0, (u32)&_ganontikasonogo_room_0_meshHeader_000000C0 }; // 0x0020
SCmdObjectList _ganontikasonogo_room_0_set0000_cmd05 = { 0x0B, 0x07, (u32)_ganontikasonogo_room_0_objectList_00000040 }; // 0x0028
SCmdActorList _ganontikasonogo_room_0_set0000_cmd06 = { 0x01, 0x07, (u32)_ganontikasonogo_room_0_actorList_00000050 }; // 0x0030
SCmdEndMarker _ganontikasonogo_room_0_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _ganontikasonogo_room_0_objectList_00000040[] = 
{
	OBJECT_GANON_OBJECTS,
	OBJECT_ZL2,
	OBJECT_ZL2_ANIME2,
	OBJECT_GANON_OBJECTS,
	OBJECT_ZG,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_RD,
};

ActorEntry _ganontikasonogo_room_0_actorList_00000050[7] = 
{
	{ ACTOR_EN_RIVER_SOUND, 867, 226, -824, 0, 0, 0, 0x0012 }, //0x00000050 
	{ ACTOR_EN_ZL3, 746, 226, -837, 0, -16384, 0, 0x2903 }, //0x00000060 
	{ ACTOR_EN_EG, 903, 226, -788, 0, 0, 0, 0x0000 }, //0x00000070 
	{ ACTOR_BG_ZG, 1292, 196, -840, 0, -16384, 0, 0x2908 }, //0x00000080 
	{ ACTOR_EN_RD, 942, 220, -912, 0, 0, 0, 0x7F01 }, //0x00000090 
	{ ACTOR_EN_FIRE_ROCK, 783, 226, -908, 0, 0, 0, 0x0006 }, //0x000000A0 
	{ ACTOR_EN_FIRE_ROCK, 1070, 202, -746, 0, 0, 0, 0x0006 }, //0x000000B0 
};


MeshHeader0 _ganontikasonogo_room_0_meshHeader_000000C0 = { { 0 }, 0x01, (u32)&_ganontikasonogo_room_0_meshDListEntry_000000CC, (u32)&(_ganontikasonogo_room_0_meshDListEntry_000000CC) + sizeof(_ganontikasonogo_room_0_meshDListEntry_000000CC) };

MeshEntry0 _ganontikasonogo_room_0_meshDListEntry_000000CC[1] = 
{
	{ (u32)_ganontikasonogo_room_0_dlist_000091C0, (u32)_ganontikasonogo_room_0_dlist_00016B48 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.
static u32 padD8 = 0;
static u32 padDC = 0;

Vtx_t _ganontikasonogo_room_0_vertices_000000E0[32] = 
{
	 { 462, 626, -649, 0, 11200, -3459, 69, 62, 48, 255 }, // 0x000000E0
	 { 191, 626, -378, 0, 8000, -3459, 91, 99, 111, 255 }, // 0x000000F0
	 { 212, 196, -329, 0, 8000, 2048, 198, 188, 168, 255 }, // 0x00000100
	 { 511, 196, -628, 0, 11200, 2048, 245, 244, 241, 255 }, // 0x00000110
	 { 511, 196, -628, 0, 11200, 2048, 255, 255, 255, 255 }, // 0x00000120
	 { 493, 350, -780, 0, 12307, 74, 255, 255, 255, 255 }, // 0x00000130
	 { 462, 626, -1031, 0, 14400, -3459, 69, 62, 48, 255 }, // 0x00000140
	 { 511, 196, -1052, 0, 14400, 2048, 245, 244, 241, 255 }, // 0x00000150
	 { 212, 196, -1351, 0, 17600, 2048, 245, 244, 241, 255 }, // 0x00000160
	 { 191, 626, -1302, 0, 17600, -3459, 115, 102, 78, 255 }, // 0x00000170
	 { -212, 196, -1351, 0, 20800, 2048, 245, 244, 241, 255 }, // 0x00000180
	 { -191, 626, -1302, 0, 20800, -3459, 115, 102, 78, 255 }, // 0x00000190
	 { 191, 626, -1302, 0, 17600, -3459, 115, 102, 78, 255 }, // 0x000001A0
	 { 511, 196, -1052, 0, 14400, 2048, 255, 255, 255, 255 }, // 0x000001B0
	 { 493, 350, -900, 0, 13293, 74, 255, 255, 255, 255 }, // 0x000001C0
	 { 511, 196, -900, 0, 13276, 2048, 255, 255, 255, 255 }, // 0x000001D0
	 { 511, 196, -780, 0, 12324, 2048, 255, 255, 255, 255 }, // 0x000001E0
	 { 67, 277, -338, 0, 6935, 1130, 189, 178, 157, 255 }, // 0x000001F0
	 { 212, 196, -329, 0, 8000, 2048, 189, 178, 157, 255 }, // 0x00000200
	 { 66, 196, -328, 0, 6923, 2050, 189, 178, 157, 255 }, // 0x00000210
	 { 59, 323, -343, 0, 6881, 545, 23, 19, 30, 255 }, // 0x00000220
	 { -59, 323, -343, 0, 5919, 545, 23, 19, 30, 255 }, // 0x00000230
	 { -191, 626, -378, 0, 4800, -3459, 91, 99, 111, 255 }, // 0x00000240
	 { -67, 277, -338, 0, 5865, 1130, 189, 178, 157, 255 }, // 0x00000250
	 { -212, 196, -329, 0, 4800, 2048, 189, 178, 157, 255 }, // 0x00000260
	 { -66, 196, -328, 0, 5877, 2050, 189, 178, 157, 255 }, // 0x00000270
	 { 57, 333, -344, 0, 87, 542, 23, 19, 30, 255 }, // 0x00000280
	 { 76, 356, -476, 0, 947, -3, 81, 72, 55, 255 }, // 0x00000290
	 { 67, 277, -338, 0, 53, 1128, 169, 154, 126, 255 }, // 0x000002A0
	 { -75, 356, -476, 0, 947, -2, 81, 72, 55, 255 }, // 0x000002B0
	 { -57, 333, -344, 0, 87, 542, 23, 19, 30, 255 }, // 0x000002C0
	 { -67, 277, -338, 0, 53, 1128, 169, 154, 126, 255 }, // 0x000002D0
};

Vtx_t _ganontikasonogo_room_0_vertices_000002E0[4] = 
{
	 { -75, 356, -476, 0, 947, -2, 81, 72, 55, 255 }, // 0x000002E0
	 { -75, 356, -526, 0, 1267, -2, 5, 5, 5, 255 }, // 0x000002F0
	 { 75, 356, -526, 0, 1267, -2, 5, 5, 5, 255 }, // 0x00000300
	 { 76, 356, -476, 0, 947, -3, 81, 72, 55, 255 }, // 0x00000310
};

Vtx_t _ganontikasonogo_room_0_vertices_00000320[7] = 
{
	 { 66, 196, -328, 0, 1702, 1008, 69, 62, 48, 255 }, // 0x00000320
	 { 75, 196, -476, 0, 1793, -507, 81, 72, 55, 255 }, // 0x00000330
	 { 0, 196, -329, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00000340
	 { -75, 196, -476, 0, 256, -507, 81, 72, 55, 255 }, // 0x00000350
	 { -66, 196, -328, 0, 348, 1008, 69, 62, 48, 255 }, // 0x00000360
	 { 75, 196, -526, 0, 1792, -1019, 5, 5, 5, 255 }, // 0x00000370
	 { -75, 196, -526, 0, 256, -1019, 5, 5, 5, 255 }, // 0x00000380
};

Vtx_t _ganontikasonogo_room_0_vertices_00000390[16] = 
{
	 { -67, 277, -338, 0, 53, 1128, 169, 154, 126, 255 }, // 0x00000390
	 { -75, 196, -476, 0, 947, 2046, 81, 72, 55, 255 }, // 0x000003A0
	 { -75, 356, -476, 0, 947, -2, 81, 72, 55, 255 }, // 0x000003B0
	 { -66, 196, -328, 0, 0, 2048, 81, 72, 55, 255 }, // 0x000003C0
	 { -75, 196, -526, 0, 1267, 2046, 5, 5, 5, 255 }, // 0x000003D0
	 { -75, 356, -526, 0, 1267, -2, 5, 5, 5, 255 }, // 0x000003E0
	 { 67, 277, -338, 0, 53, 1128, 169, 154, 126, 255 }, // 0x000003F0
	 { 75, 196, -476, 0, 947, 2046, 81, 72, 55, 255 }, // 0x00000400
	 { 66, 196, -328, 0, 0, 2048, 0, 0, 0, 255 }, // 0x00000410
	 { 76, 356, -476, 0, 947, -3, 81, 72, 55, 255 }, // 0x00000420
	 { 75, 356, -526, 0, 1267, -2, 5, 5, 5, 255 }, // 0x00000430
	 { 75, 196, -526, 0, 1267, 2046, 5, 5, 5, 255 }, // 0x00000440
	 { -75, 356, -526, 0, 5443, 0, 5, 5, 5, 255 }, // 0x00000450
	 { -75, 196, -526, 0, 5443, 2048, 5, 5, 5, 255 }, // 0x00000460
	 { 75, 196, -526, 0, 7357, 2048, 5, 5, 5, 255 }, // 0x00000470
	 { 75, 356, -526, 0, 7357, 0, 5, 5, 5, 255 }, // 0x00000480
};

Vtx_t _ganontikasonogo_room_0_vertices_00000490[8] = 
{
	 { -212, 196, -1351, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000490
	 { 511, 196, -1351, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004A0
	 { -212, 626, -1351, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004B0
	 { 511, 626, -1351, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004C0
	 { -212, 196, -328, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004D0
	 { 511, 196, -328, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004E0
	 { -212, 626, -328, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004F0
	 { 511, 626, -328, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000500
};

Gfx _ganontikasonogo_room_0_dlist_00000510[] =
{
	gsDPPipeSync(), // 0x00000510
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000518
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000490, 8, 0), // 0x00000520
	gsSPCullDisplayList(0, 7), // 0x00000528
	gsDPPipeSync(), // 0x00000530
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000538
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000540
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000548
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000B2D8), // 0x00000550
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000558
	gsDPLoadSync(), // 0x00000560
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00000568
	gsDPPipeSync(), // 0x00000570
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000578
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000580
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000588
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000590
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000598
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000005A0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000005A8
	gsSPVertex(_ganontikasonogo_room_0_vertices_000000E0, 32, 0), // 0x000005B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000005B8
	gsSP2Triangles(4, 5, 0, 0, 5, 6, 0, 0), // 0x000005C0
	gsSP2Triangles(7, 8, 9, 0, 7, 9, 6, 0), // 0x000005C8
	gsSP2Triangles(8, 10, 11, 0, 8, 11, 12, 0), // 0x000005D0
	gsSP2Triangles(13, 14, 15, 0, 5, 4, 16, 0), // 0x000005D8
	gsSP2Triangles(13, 6, 14, 0, 6, 5, 14, 0), // 0x000005E0
	gsSP2Triangles(17, 18, 1, 0, 17, 19, 18, 0), // 0x000005E8
	gsSP2Triangles(20, 17, 1, 0, 20, 1, 21, 0), // 0x000005F0
	gsSP2Triangles(22, 23, 21, 0, 22, 24, 23, 0), // 0x000005F8
	gsSP2Triangles(1, 22, 21, 0, 24, 25, 23, 0), // 0x00000600
	gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0), // 0x00000608
	gsSP2Triangles(30, 29, 27, 0, 30, 27, 26, 0), // 0x00000610
	gsSPVertex(_ganontikasonogo_room_0_vertices_000002E0, 4, 0), // 0x00000618
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000620
	gsDPPipeSync(), // 0x00000628
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000D2D8), // 0x00000630
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000638
	gsDPLoadSync(), // 0x00000640
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00000648
	gsDPPipeSync(), // 0x00000650
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000658
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000660
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000320, 7, 0), // 0x00000668
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000670
	gsSP2Triangles(3, 4, 2, 0, 1, 5, 6, 0), // 0x00000678
	gsSP1Triangle(1, 6, 3, 0), // 0x00000680
	gsDPPipeSync(), // 0x00000688
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000B2D8), // 0x00000690
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000698
	gsDPLoadSync(), // 0x000006A0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000006A8
	gsDPPipeSync(), // 0x000006B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000006B8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000006C0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000390, 16, 0), // 0x000006C8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000006D0
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x000006D8
	gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0), // 0x000006E0
	gsSP2Triangles(9, 10, 11, 0, 9, 11, 7, 0), // 0x000006E8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000006F0
	gsSPEndDisplayList(), // 0x000006F8
};

Vtx_t _ganontikasonogo_room_0_vertices_00000700[4] = 
{
	 { 223, 79, -1378, 0, 5704, 0, 158, 142, 111, 255 }, // 0x00000700
	 { 538, 79, -1063, 0, 0, 0, 218, 211, 199, 255 }, // 0x00000710
	 { 614, -240, -1094, 0, -403, 2042, 115, 102, 78, 255 }, // 0x00000720
	 { 254, -240, -1454, 0, 6108, 2042, 115, 102, 78, 255 }, // 0x00000730
};

Vtx_t _ganontikasonogo_room_0_vertices_00000740[4] = 
{
	 { 212, 196, -1351, 0, 28160, 0, 255, 255, 255, 255 }, // 0x00000740
	 { 511, 196, -1052, 0, 23040, 0, 255, 255, 255, 255 }, // 0x00000750
	 { 538, 79, -1063, 0, 23040, 512, 218, 211, 199, 255 }, // 0x00000760
	 { 223, 79, -1378, 0, 28160, 512, 158, 142, 111, 255 }, // 0x00000770
};

Vtx_t _ganontikasonogo_room_0_vertices_00000780[4] = 
{
	 { 223, 79, -1378, 0, 0, 0, 218, 211, 199, 255 }, // 0x00000780
	 { 254, -240, -1454, 0, -403, 2042, 115, 102, 78, 255 }, // 0x00000790
	 { -254, -240, -1454, 0, 6108, 2042, 115, 102, 78, 255 }, // 0x000007A0
	 { -223, 79, -1378, 0, 5704, 0, 115, 102, 78, 255 }, // 0x000007B0
};

Vtx_t _ganontikasonogo_room_0_vertices_000007C0[11] = 
{
	 { -212, 196, -1351, 0, 4339, 0, 255, 255, 255, 255 }, // 0x000007C0
	 { 212, 196, -1351, 0, 0, 0, 255, 255, 255, 255 }, // 0x000007D0
	 { 223, 79, -1378, 0, -112, 512, 218, 211, 199, 255 }, // 0x000007E0
	 { -223, 79, -1378, 0, 4451, 512, 115, 102, 78, 255 }, // 0x000007F0
	 { 212, 196, -329, 0, 7232, 0, 147, 131, 97, 255 }, // 0x00000800
	 { 100, 196, -329, 0, 5322, 0, 255, 255, 255, 255 }, // 0x00000810
	 { 223, 79, -302, 0, 7419, 498, 147, 131, 97, 255 }, // 0x00000820
	 { 0, 118, -310, 0, 3616, 331, 100, 89, 67, 255 }, // 0x00000830
	 { -100, 196, -329, 0, 1909, 0, 255, 255, 255, 255 }, // 0x00000840
	 { -223, 79, -302, 0, -187, 498, 147, 131, 97, 255 }, // 0x00000850
	 { -212, 196, -329, 0, 0, 0, 147, 131, 97, 255 }, // 0x00000860
};

Vtx_t _ganontikasonogo_room_0_vertices_00000870[7] = 
{
	 { -254, -240, -226, 0, -403, 2042, 115, 102, 78, 255 }, // 0x00000870
	 { 0, -61, -268, 0, 2852, 896, 158, 142, 111, 255 }, // 0x00000880
	 { -223, 79, -302, 0, 0, 0, 147, 131, 97, 255 }, // 0x00000890
	 { 0, 118, -310, 0, 2852, -251, 100, 89, 67, 255 }, // 0x000008A0
	 { 0, -240, -226, 0, 2852, 2042, 100, 89, 67, 255 }, // 0x000008B0
	 { 254, -240, -226, 0, 6108, 2042, 115, 102, 78, 255 }, // 0x000008C0
	 { 223, 79, -302, 0, 5704, 0, 147, 131, 97, 255 }, // 0x000008D0
};

Vtx_t _ganontikasonogo_room_0_vertices_000008E0[4] = 
{
	 { 538, 79, -617, 0, 17920, 512, 134, 119, 89, 255 }, // 0x000008E0
	 { 511, 196, -628, 0, 17920, 0, 255, 255, 255, 255 }, // 0x000008F0
	 { 212, 196, -329, 0, 12800, 0, 198, 188, 168, 255 }, // 0x00000900
	 { 223, 79, -302, 0, 12800, 512, 201, 193, 214, 255 }, // 0x00000910
};

Vtx_t _ganontikasonogo_room_0_vertices_00000920[8] = 
{
	 { 254, -240, -226, 0, -403, 2042, 115, 102, 78, 255 }, // 0x00000920
	 { 614, -240, -586, 0, 6108, 2042, 115, 102, 78, 255 }, // 0x00000930
	 { 538, 79, -617, 0, 5704, 0, 134, 119, 89, 255 }, // 0x00000940
	 { 223, 79, -302, 0, 0, 0, 201, 193, 214, 255 }, // 0x00000950
	 { 614, -240, -1094, 0, 6108, 2042, 115, 102, 78, 255 }, // 0x00000960
	 { 538, 79, -940, 0, 4278, 0, 158, 142, 111, 255 }, // 0x00000970
	 { 538, 79, -740, 0, 1426, 0, 158, 142, 111, 255 }, // 0x00000980
	 { 538, 79, -1063, 0, 5704, 0, 169, 154, 126, 255 }, // 0x00000990
};

Vtx_t _ganontikasonogo_room_0_vertices_000009A0[8] = 
{
	 { 511, 196, -1052, 0, 4339, 0, 169, 154, 126, 255 }, // 0x000009A0
	 { 511, 196, -940, 0, 3254, 0, 218, 211, 199, 255 }, // 0x000009B0
	 { 538, 79, -940, 0, 3310, 512, 158, 142, 111, 255 }, // 0x000009C0
	 { 538, 79, -1063, 0, 4451, 512, 169, 154, 126, 255 }, // 0x000009D0
	 { 511, 196, -740, 0, 1085, 0, 218, 211, 199, 255 }, // 0x000009E0
	 { 511, 196, -628, 0, 0, 0, 169, 154, 126, 255 }, // 0x000009F0
	 { 538, 79, -617, 0, -112, 512, 169, 154, 126, 255 }, // 0x00000A00
	 { 538, 79, -740, 0, 1029, 512, 158, 142, 111, 255 }, // 0x00000A10
};

Vtx_t _ganontikasonogo_room_0_vertices_00000A20[4] = 
{
	 { 538, 79, -617, 0, 0, 0, 169, 154, 126, 255 }, // 0x00000A20
	 { 614, -240, -586, 0, -403, 2042, 115, 102, 78, 255 }, // 0x00000A30
	 { 538, 79, -740, 0, 1426, 0, 158, 142, 111, 255 }, // 0x00000A40
	 { 614, -240, -1094, 0, 6108, 2042, 115, 102, 78, 255 }, // 0x00000A50
};

Vtx_t _ganontikasonogo_room_0_vertices_00000A60[8] = 
{
	 { -254, -240, -1454, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A60
	 { 614, -240, -1454, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A70
	 { -254, 196, -1454, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A80
	 { 614, 196, -1454, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A90
	 { -254, -240, -226, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AA0
	 { 614, -240, -226, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AB0
	 { -254, 196, -226, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AC0
	 { 614, 196, -226, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AD0
};

Gfx _ganontikasonogo_room_0_dlist_00000AE0[] =
{
	gsDPPipeSync(), // 0x00000AE0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000AE8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000A60, 8, 0), // 0x00000AF0
	gsSPCullDisplayList(0, 7), // 0x00000AF8
	gsDPPipeSync(), // 0x00000B00
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000B08
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000B10
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000B18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00000B20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000B28
	gsDPLoadSync(), // 0x00000B30
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00000B38
	gsDPPipeSync(), // 0x00000B40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000B48
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000B50
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000B58
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000B60
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000B68
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000B70
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000B78
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000700, 4, 0), // 0x00000B80
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00000B88
	gsDPPipeSync(), // 0x00000B90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00000B98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00000BA0
	gsDPLoadSync(), // 0x00000BA8
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00000BB0
	gsDPPipeSync(), // 0x00000BB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00000BC0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00000BC8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000740, 4, 0), // 0x00000BD0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00000BD8
	gsDPPipeSync(), // 0x00000BE0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00000BE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000BF0
	gsDPLoadSync(), // 0x00000BF8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00000C00
	gsDPPipeSync(), // 0x00000C08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000C10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000C18
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000780, 4, 0), // 0x00000C20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000C28
	gsDPPipeSync(), // 0x00000C30
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00000C38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00000C40
	gsDPLoadSync(), // 0x00000C48
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00000C50
	gsDPPipeSync(), // 0x00000C58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00000C60
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00000C68
	gsSPVertex(_ganontikasonogo_room_0_vertices_000007C0, 11, 0), // 0x00000C70
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000C78
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00000C80
	gsSP2Triangles(8, 9, 7, 0, 8, 10, 9, 0), // 0x00000C88
	gsDPPipeSync(), // 0x00000C90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00000C98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000CA0
	gsDPLoadSync(), // 0x00000CA8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00000CB0
	gsDPPipeSync(), // 0x00000CB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000CC0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000CC8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000870, 7, 0), // 0x00000CD0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000CD8
	gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0), // 0x00000CE0
	gsSP2Triangles(5, 6, 1, 0, 6, 3, 1, 0), // 0x00000CE8
	gsDPPipeSync(), // 0x00000CF0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00000CF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00000D00
	gsDPLoadSync(), // 0x00000D08
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00000D10
	gsDPPipeSync(), // 0x00000D18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00000D20
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00000D28
	gsSPVertex(_ganontikasonogo_room_0_vertices_000008E0, 4, 0), // 0x00000D30
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000D38
	gsDPPipeSync(), // 0x00000D40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00000D48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000D50
	gsDPLoadSync(), // 0x00000D58
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00000D60
	gsDPPipeSync(), // 0x00000D68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000D70
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000D78
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000920, 8, 0), // 0x00000D80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000D88
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00000D90
	gsDPPipeSync(), // 0x00000D98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00000DA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00000DA8
	gsDPLoadSync(), // 0x00000DB0
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00000DB8
	gsDPPipeSync(), // 0x00000DC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00000DC8
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00000DD0
	gsSPVertex(_ganontikasonogo_room_0_vertices_000009A0, 8, 0), // 0x00000DD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000DE0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000DE8
	gsDPPipeSync(), // 0x00000DF0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00000DF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000E00
	gsDPLoadSync(), // 0x00000E08
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00000E10
	gsDPPipeSync(), // 0x00000E18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000E20
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000E28
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000A20, 4, 0), // 0x00000E30
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000E38
	gsSPEndDisplayList(), // 0x00000E40
};

Vtx_t _ganontikasonogo_room_0_vertices_00000E48[5] = 
{
	 { 150, 754, 473, 0, 10469, 0, 69, 62, 48, 255 }, // 0x00000E48
	 { 632, 250, 195, 0, 5717, 2150, 218, 211, 199, 255 }, // 0x00000E58
	 { 580, 250, 225, 0, 6229, 2150, 218, 211, 199, 255 }, // 0x00000E68
	 { 681, 754, 167, 0, 5234, 0, 69, 62, 48, 255 }, // 0x00000E78
	 { 1212, 754, -140, 0, 0, 0, 69, 62, 48, 255 }, // 0x00000E88
};

Vtx_t _ganontikasonogo_room_0_vertices_00000E98[4] = 
{
	 { 520, 150, -165, 0, 2642, 403, 255, 255, 255, 255 }, // 0x00000E98
	 { 325, 150, -52, 0, 1625, 459, 255, 255, 255, 255 }, // 0x00000EA8
	 { 325, 150, 98, 0, 1318, 1065, 255, 255, 255, 255 }, // 0x00000EB8
	 { 650, 150, -90, 0, 3013, 972, 255, 255, 255, 255 }, // 0x00000EC8
};

Vtx_t _ganontikasonogo_room_0_vertices_00000ED8[8] = 
{
	 { 1212, 754, -140, 0, 0, 0, 69, 62, 48, 255 }, // 0x00000ED8
	 { 1212, -110, -140, 0, 0, 3686, 115, 102, 78, 255 }, // 0x00000EE8
	 { 632, 250, 195, 0, 5717, 2150, 218, 211, 199, 255 }, // 0x00000EF8
	 { 632, -110, 195, 0, 5717, 3686, 69, 62, 48, 255 }, // 0x00000F08
	 { 580, 250, 225, 0, 6229, 2150, 218, 211, 199, 255 }, // 0x00000F18
	 { 580, 150, 225, 0, 6229, 2577, 218, 211, 199, 255 }, // 0x00000F28
	 { 150, 150, 473, 0, 10469, 2577, 100, 89, 67, 255 }, // 0x00000F38
	 { 150, 754, 473, 0, 10469, 0, 69, 62, 48, 255 }, // 0x00000F48
};

Vtx_t _ganontikasonogo_room_0_vertices_00000F58[7] = 
{
	 { 477, 150, 146, 0, 1833, 1572, 255, 255, 255, 255 }, // 0x00000F58
	 { 615, 150, 66, 0, 2556, 1532, 255, 255, 255, 255 }, // 0x00000F68
	 { 325, 150, 98, 0, 1318, 1065, 255, 255, 255, 255 }, // 0x00000F78
	 { 650, 150, -90, 0, 3013, 972, 255, 255, 255, 255 }, // 0x00000F88
	 { 675, 150, 170, 0, 2586, 2075, 134, 119, 89, 255 }, // 0x00000F98
	 { 769, 150, 116, 0, 3072, 2048, 115, 102, 78, 255 }, // 0x00000FA8
	 { 615, 150, 66, 0, 2556, 1532, 255, 255, 255, 255 }, // 0x00000FB8
};

Vtx_t _ganontikasonogo_room_0_vertices_00000FC8[3] = 
{
	 { 1093, -37, -71, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00000FC8
	 { 650, 150, -90, 0, 2048, -6158, 255, 255, 255, 255 }, // 0x00000FD8
	 { 769, 150, 116, 0, 0, -6158, 115, 102, 78, 255 }, // 0x00000FE8
};

Vtx_t _ganontikasonogo_room_0_vertices_00000FF8[6] = 
{
	 { 650, 150, -90, 0, 3013, 972, 255, 255, 255, 255 }, // 0x00000FF8
	 { 615, 150, 66, 0, 2556, 1532, 255, 255, 255, 255 }, // 0x00001008
	 { 769, 150, 116, 0, 3072, 2048, 115, 102, 78, 255 }, // 0x00001018
	 { 1212, -37, -140, 0, 8991, 4096, 115, 102, 78, 255 }, // 0x00001028
	 { 974, -37, -277, 0, 7772, 3392, 198, 188, 168, 255 }, // 0x00001038
	 { 1093, -37, -71, 0, 8381, 4448, 100, 89, 67, 255 }, // 0x00001048
};

Vtx_t _ganontikasonogo_room_0_vertices_00001058[3] = 
{
	 { 974, -37, -277, 0, 2048, 1024, 218, 211, 199, 255 }, // 0x00001058
	 { 650, 150, -90, 0, 2048, -6158, 255, 255, 255, 255 }, // 0x00001068
	 { 1093, -37, -71, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00001078
};

Vtx_t _ganontikasonogo_room_0_vertices_00001088[5] = 
{
	 { 150, 150, 473, 0, -156, 2225, 69, 62, 48, 255 }, // 0x00001088
	 { 537, 150, 250, 0, 1863, 2114, 134, 119, 89, 255 }, // 0x00001098
	 { 477, 150, 146, 0, 1833, 1572, 255, 255, 255, 255 }, // 0x000010A8
	 { 325, 150, 98, 0, 1318, 1065, 255, 255, 255, 255 }, // 0x000010B8
	 { 90, 150, 323, 0, -91, 1496, 255, 255, 255, 255 }, // 0x000010C8
};

Vtx_t _ganontikasonogo_room_0_vertices_000010D8[12] = 
{
	 { 650, 150, -90, 0, 512, 0, 158, 142, 111, 255 }, // 0x000010D8
	 { 650, 70, -90, 0, 512, 512, 158, 142, 111, 255 }, // 0x000010E8
	 { 520, 70, -165, 0, 2048, 512, 147, 131, 97, 255 }, // 0x000010F8
	 { 520, 150, -165, 0, 2048, 0, 147, 131, 97, 255 }, // 0x00001108
	 { 520, 150, -165, 0, 0, 0, 255, 255, 255, 255 }, // 0x00001118
	 { 520, 70, -165, 0, 0, 512, 255, 255, 255, 255 }, // 0x00001128
	 { 325, 70, -52, 0, 2304, 512, 158, 142, 111, 255 }, // 0x00001138
	 { 325, 150, -52, 0, 2304, 0, 158, 142, 111, 255 }, // 0x00001148
	 { 325, 150, -52, 0, 0, 0, 158, 142, 111, 255 }, // 0x00001158
	 { 325, 70, -52, 0, 0, 512, 158, 142, 111, 255 }, // 0x00001168
	 { 325, 70, 98, 0, 1536, 512, 100, 89, 67, 255 }, // 0x00001178
	 { 325, 150, 98, 0, 1536, 0, 115, 102, 78, 255 }, // 0x00001188
};

Vtx_t _ganontikasonogo_room_0_vertices_00001198[15] = 
{
	 { 974, -240, -277, 0, -3319, 784, 52, 49, 38, 255 }, // 0x00001198
	 { 650, -240, -90, 0, 2048, 1984, 100, 89, 67, 255 }, // 0x000011A8
	 { 650, 70, -90, 0, 2048, 0, 115, 102, 78, 255 }, // 0x000011B8
	 { 650, 70, -90, 0, 128, 0, 158, 142, 111, 255 }, // 0x000011C8
	 { 650, -240, -90, 0, 128, 1984, 100, 89, 67, 255 }, // 0x000011D8
	 { 520, -240, -165, 0, 2048, 1984, 115, 102, 78, 255 }, // 0x000011E8
	 { 520, 70, -165, 0, 2048, 0, 147, 131, 97, 255 }, // 0x000011F8
	 { 325, 70, -52, 0, 0, 0, 158, 142, 111, 255 }, // 0x00001208
	 { 325, -240, -52, 0, 0, 1984, 158, 142, 111, 255 }, // 0x00001218
	 { 325, -240, 98, 0, 1920, 1984, 69, 62, 48, 255 }, // 0x00001228
	 { 325, 70, 98, 0, 1920, 0, 100, 89, 67, 255 }, // 0x00001238
	 { 520, 70, -165, 0, 0, 0, 255, 255, 255, 255 }, // 0x00001248
	 { 520, -240, -165, 0, 0, 1984, 255, 255, 255, 255 }, // 0x00001258
	 { 325, -240, -52, 0, 2880, 1984, 115, 102, 78, 255 }, // 0x00001268
	 { 325, 70, -52, 0, 2880, 0, 158, 142, 111, 255 }, // 0x00001278
};

Vtx_t _ganontikasonogo_room_0_vertices_00001288[4] = 
{
	 { 974, -37, -277, 0, 0, 0, 218, 211, 199, 255 }, // 0x00001288
	 { 974, -117, -277, 0, 0, 512, 100, 89, 67, 255 }, // 0x00001298
	 { 650, 70, -90, 0, 4800, 512, 115, 102, 78, 255 }, // 0x000012A8
	 { 650, 150, -90, 0, 4800, 0, 158, 142, 111, 255 }, // 0x000012B8
};

Vtx_t _ganontikasonogo_room_0_vertices_000012C8[3] = 
{
	 { 974, -117, -277, 0, -3319, 0, 100, 89, 67, 255 }, // 0x000012C8
	 { 974, -240, -277, 0, -3319, 784, 52, 49, 38, 255 }, // 0x000012D8
	 { 650, 70, -90, 0, 2048, 0, 115, 102, 78, 255 }, // 0x000012E8
};

Vtx_t _ganontikasonogo_room_0_vertices_000012F8[8] = 
{
	 { 1028, -240, -459, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012F8
	 { 1212, -240, -140, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001308
	 { 1028, 754, -459, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001318
	 { 1212, 754, -140, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001328
	 { -34, -240, 155, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001338
	 { 150, -240, 473, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001348
	 { -34, 754, 155, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001358
	 { 150, 754, 473, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001368
};

Gfx _ganontikasonogo_room_0_dlist_00001378[] =
{
	gsDPPipeSync(), // 0x00001378
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001380
	gsSPVertex(_ganontikasonogo_room_0_vertices_000012F8, 8, 0), // 0x00001388
	gsSPCullDisplayList(0, 7), // 0x00001390
	gsDPPipeSync(), // 0x00001398
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000013A0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000013A8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000013B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x000013B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000013C0
	gsDPLoadSync(), // 0x000013C8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000013D0
	gsDPPipeSync(), // 0x000013D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000013E0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000013E8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000013F0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000013F8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001400
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001408
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001410
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000E48, 5, 0), // 0x00001418
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001420
	gsSP1Triangle(3, 4, 1, 0), // 0x00001428
	gsDPPipeSync(), // 0x00001430
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000F2D8), // 0x00001438
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001440
	gsDPLoadSync(), // 0x00001448
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001450
	gsDPPipeSync(), // 0x00001458
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001460
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001468
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000E98, 4, 0), // 0x00001470
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001478
	gsDPPipeSync(), // 0x00001480
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x00001488
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001490
	gsDPLoadSync(), // 0x00001498
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000014A0
	gsDPPipeSync(), // 0x000014A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000014B0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000014B8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000ED8, 8, 0), // 0x000014C0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000014C8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000014D0
	gsDPPipeSync(), // 0x000014D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000F2D8), // 0x000014E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000014E8
	gsDPLoadSync(), // 0x000014F0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000014F8
	gsDPPipeSync(), // 0x00001500
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001508
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001510
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000F58, 7, 0), // 0x00001518
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0), // 0x00001520
	gsSP1Triangle(4, 5, 6, 0), // 0x00001528
	gsDPPipeSync(), // 0x00001530
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000E2D8), // 0x00001538
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001540
	gsDPLoadSync(), // 0x00001548
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001550
	gsDPPipeSync(), // 0x00001558
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001560
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001568
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000FC8, 3, 0), // 0x00001570
	gsSP1Triangle(0, 1, 2, 0), // 0x00001578
	gsDPPipeSync(), // 0x00001580
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000F2D8), // 0x00001588
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001590
	gsDPLoadSync(), // 0x00001598
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000015A0
	gsDPPipeSync(), // 0x000015A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000015B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000015B8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00000FF8, 6, 0), // 0x000015C0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000015C8
	gsDPPipeSync(), // 0x000015D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000E2D8), // 0x000015D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000015E0
	gsDPLoadSync(), // 0x000015E8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000015F0
	gsDPPipeSync(), // 0x000015F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001600
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001608
	gsSPVertex(_ganontikasonogo_room_0_vertices_00001058, 3, 0), // 0x00001610
	gsSP1Triangle(0, 1, 2, 0), // 0x00001618
	gsDPPipeSync(), // 0x00001620
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000F2D8), // 0x00001628
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001630
	gsDPLoadSync(), // 0x00001638
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001640
	gsDPPipeSync(), // 0x00001648
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001650
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001658
	gsSPVertex(_ganontikasonogo_room_0_vertices_00001088, 5, 0), // 0x00001660
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x00001668
	gsSP1Triangle(3, 4, 0, 0), // 0x00001670
	gsDPPipeSync(), // 0x00001678
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00001680
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00001688
	gsDPLoadSync(), // 0x00001690
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00001698
	gsDPPipeSync(), // 0x000016A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x000016A8
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x000016B0
	gsSPVertex(_ganontikasonogo_room_0_vertices_000010D8, 12, 0), // 0x000016B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000016C0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000016C8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000016D0
	gsDPPipeSync(), // 0x000016D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x000016E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000016E8
	gsDPLoadSync(), // 0x000016F0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000016F8
	gsDPPipeSync(), // 0x00001700
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001708
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001710
	gsSPVertex(_ganontikasonogo_room_0_vertices_00001198, 15, 0), // 0x00001718
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00001720
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x00001728
	gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0), // 0x00001730
	gsSP1Triangle(11, 13, 14, 0), // 0x00001738
	gsDPPipeSync(), // 0x00001740
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00001748
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00001750
	gsDPLoadSync(), // 0x00001758
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00001760
	gsDPPipeSync(), // 0x00001768
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00001770
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00001778
	gsSPVertex(_ganontikasonogo_room_0_vertices_00001288, 4, 0), // 0x00001780
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001788
	gsDPPipeSync(), // 0x00001790
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00001798
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000017A0
	gsDPLoadSync(), // 0x000017A8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000017B0
	gsDPPipeSync(), // 0x000017B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000017C0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000017C8
	gsSPVertex(_ganontikasonogo_room_0_vertices_000012C8, 3, 0), // 0x000017D0
	gsSP1Triangle(0, 1, 2, 0), // 0x000017D8
	gsSPEndDisplayList(), // 0x000017E0
};

Vtx_t _ganontikasonogo_room_0_vertices_000017E8[3] = 
{
	 { 974, -37, -278, 0, 7772, 3392, 198, 188, 168, 255 }, // 0x000017E8
	 { 1212, -37, -140, 0, 8991, 4096, 115, 102, 78, 255 }, // 0x000017F8
	 { 1212, -37, -278, 0, 8991, 3392, 115, 102, 78, 255 }, // 0x00001808
};

Vtx_t _ganontikasonogo_room_0_vertices_00001818[4] = 
{
	 { 974, -240, -671, 0, 2048, 1024, 147, 131, 97, 255 }, // 0x00001818
	 { 974, -37, -278, 0, 2048, -6711, 255, 255, 255, 255 }, // 0x00001828
	 { 1212, -37, -278, 0, 0, -6711, 115, 102, 78, 255 }, // 0x00001838
	 { 1212, -240, -671, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00001848
};

Vtx_t _ganontikasonogo_room_0_vertices_00001858[20] = 
{
	 { 1212, 396, -890, 0, 5547, 1529, 234, 231, 223, 255 }, // 0x00001858
	 { 1212, 396, -790, 0, 6400, 1529, 234, 231, 223, 255 }, // 0x00001868
	 { 1212, 754, -140, 0, 11947, 0, 69, 62, 48, 255 }, // 0x00001878
	 { 1212, 754, -840, 0, 5973, 0, 69, 62, 48, 255 }, // 0x00001888
	 { 1212, 754, -1540, 0, 0, 0, 69, 62, 48, 255 }, // 0x00001898
	 { 1212, -240, -1540, 0, 0, 4241, 100, 89, 67, 255 }, // 0x000018A8
	 { 1212, -240, -1205, 0, 2859, 4241, 100, 89, 67, 255 }, // 0x000018B8
	 { 1212, 58, -1235, 0, 2603, 2970, 255, 255, 255, 255 }, // 0x000018C8
	 { 1212, -140, -870, 0, 5717, 3814, 147, 131, 97, 255 }, // 0x000018D8
	 { 1212, 196, -930, 0, 5205, 2382, 147, 131, 97, 255 }, // 0x000018E8
	 { 1212, -240, -870, 0, 5717, 4241, 147, 131, 97, 255 }, // 0x000018F8
	 { 1212, -140, -810, 0, 6229, 3814, 147, 131, 97, 255 }, // 0x00001908
	 { 1212, 196, -750, 0, 6741, 2382, 147, 131, 97, 255 }, // 0x00001918
	 { 1212, -240, -810, 0, 6229, 4241, 147, 131, 97, 255 }, // 0x00001928
	 { 1212, -240, -475, 0, 9088, 4241, 100, 89, 67, 255 }, // 0x00001938
	 { 1212, -240, -140, 0, 11947, 4241, 115, 102, 78, 255 }, // 0x00001948
	 { 1212, 58, -445, 0, 9344, 2970, 255, 255, 255, 255 }, // 0x00001958
	 { 1212, 356, -750, 0, 6741, 1699, 234, 231, 223, 255 }, // 0x00001968
	 { 1212, 356, -930, 0, 5205, 1699, 234, 231, 223, 255 }, // 0x00001978
	 { 1212, 396, -890, 0, 5547, 1529, 234, 231, 223, 255 }, // 0x00001988
};

Vtx_t _ganontikasonogo_room_0_vertices_00001998[12] = 
{
	 { 1212, -140, -810, 0, -171, 341, 35, 31, 25, 255 }, // 0x00001998
	 { 1232, -140, -810, 0, 0, 341, 35, 31, 25, 255 }, // 0x000019A8
	 { 1232, -240, -810, 0, 0, 2048, 69, 62, 48, 255 }, // 0x000019B8
	 { 1212, -240, -810, 0, -171, 2048, 69, 62, 48, 255 }, // 0x000019C8
	 { 1212, -140, -870, 0, 0, 0, 35, 31, 25, 255 }, // 0x000019D8
	 { 1232, -140, -870, 0, 0, 341, 35, 31, 25, 255 }, // 0x000019E8
	 { 1232, -140, -810, 0, 512, 341, 35, 31, 25, 255 }, // 0x000019F8
	 { 1212, -140, -810, 0, 512, 0, 35, 31, 25, 255 }, // 0x00001A08
	 { 1212, -240, -870, 0, -171, 2048, 69, 62, 48, 255 }, // 0x00001A18
	 { 1232, -240, -870, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00001A28
	 { 1232, -140, -870, 0, 0, 341, 35, 31, 25, 255 }, // 0x00001A38
	 { 1212, -140, -870, 0, -171, 341, 35, 31, 25, 255 }, // 0x00001A48
};

Vtx_t _ganontikasonogo_room_0_vertices_00001A58[3] = 
{
	 { 974, -240, -516, 0, -1380, 0, 147, 131, 97, 255 }, // 0x00001A58
	 { 974, -240, -278, 0, 2048, 784, 52, 49, 38, 255 }, // 0x00001A68
	 { 974, -117, -278, 0, 2048, 0, 100, 89, 67, 255 }, // 0x00001A78
};

Vtx_t _ganontikasonogo_room_0_vertices_00001A88[4] = 
{
	 { 974, -240, -671, 0, -3619, 0, 147, 131, 97, 255 }, // 0x00001A88
	 { 974, -240, -516, 0, -1380, 512, 147, 131, 97, 255 }, // 0x00001A98
	 { 974, -117, -278, 0, 2048, 512, 100, 89, 67, 255 }, // 0x00001AA8
	 { 974, -37, -278, 0, 2048, 0, 218, 211, 199, 255 }, // 0x00001AB8
};

Vtx_t _ganontikasonogo_room_0_vertices_00001AC8[8] = 
{
	 { 974, -240, -1540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AC8
	 { 1232, -240, -1540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AD8
	 { 974, 754, -1540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AE8
	 { 1232, 754, -1540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AF8
	 { 974, -240, -140, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001B08
	 { 1232, -240, -140, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001B18
	 { 974, 754, -140, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001B28
	 { 1232, 754, -140, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001B38
};

Gfx _ganontikasonogo_room_0_dlist_00001B48[] =
{
	gsDPPipeSync(), // 0x00001B48
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001B50
	gsSPVertex(_ganontikasonogo_room_0_vertices_00001AC8, 8, 0), // 0x00001B58
	gsSPCullDisplayList(0, 7), // 0x00001B60
	gsDPPipeSync(), // 0x00001B68
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001B70
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001B78
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001B80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000F2D8), // 0x00001B88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001B90
	gsDPLoadSync(), // 0x00001B98
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001BA0
	gsDPPipeSync(), // 0x00001BA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001BB0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001BB8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001BC0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001BC8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001BD0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001BD8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001BE0
	gsSPVertex(_ganontikasonogo_room_0_vertices_000017E8, 3, 0), // 0x00001BE8
	gsSP1Triangle(0, 1, 2, 0), // 0x00001BF0
	gsDPPipeSync(), // 0x00001BF8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000E2D8), // 0x00001C00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001C08
	gsDPLoadSync(), // 0x00001C10
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001C18
	gsDPPipeSync(), // 0x00001C20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001C28
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001C30
	gsSPVertex(_ganontikasonogo_room_0_vertices_00001818, 4, 0), // 0x00001C38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001C40
	gsDPPipeSync(), // 0x00001C48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x00001C50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001C58
	gsDPLoadSync(), // 0x00001C60
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001C68
	gsDPPipeSync(), // 0x00001C70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001C78
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001C80
	gsSPVertex(_ganontikasonogo_room_0_vertices_00001858, 20, 0), // 0x00001C88
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x00001C90
	gsSP2Triangles(0, 2, 3, 0, 5, 6, 7, 0), // 0x00001C98
	gsSP2Triangles(6, 8, 7, 0, 8, 9, 7, 0), // 0x00001CA0
	gsSP2Triangles(10, 8, 6, 0, 11, 12, 9, 0), // 0x00001CA8
	gsSP2Triangles(11, 9, 8, 0, 13, 14, 11, 0), // 0x00001CB0
	gsSP2Triangles(15, 16, 14, 0, 16, 11, 14, 0), // 0x00001CB8
	gsSP2Triangles(16, 12, 11, 0, 16, 17, 12, 0), // 0x00001CC0
	gsSP2Triangles(15, 2, 16, 0, 2, 17, 16, 0), // 0x00001CC8
	gsSP2Triangles(2, 1, 17, 0, 5, 7, 4, 0), // 0x00001CD0
	gsSP2Triangles(7, 18, 4, 0, 7, 9, 18, 0), // 0x00001CD8
	gsSP1Triangle(18, 19, 4, 0), // 0x00001CE0
	gsDPPipeSync(), // 0x00001CE8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_scene_tex_00002B00), // 0x00001CF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001CF8
	gsDPLoadSync(), // 0x00001D00
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001D08
	gsDPPipeSync(), // 0x00001D10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001D18
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001D20
	gsSPVertex(_ganontikasonogo_room_0_vertices_00001998, 12, 0), // 0x00001D28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001D30
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001D38
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001D40
	gsDPPipeSync(), // 0x00001D48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00001D50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001D58
	gsDPLoadSync(), // 0x00001D60
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001D68
	gsDPPipeSync(), // 0x00001D70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001D78
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001D80
	gsSPVertex(_ganontikasonogo_room_0_vertices_00001A58, 3, 0), // 0x00001D88
	gsSP1Triangle(0, 1, 2, 0), // 0x00001D90
	gsDPPipeSync(), // 0x00001D98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00001DA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00001DA8
	gsDPLoadSync(), // 0x00001DB0
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00001DB8
	gsDPPipeSync(), // 0x00001DC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00001DC8
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00001DD0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00001A88, 4, 0), // 0x00001DD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001DE0
	gsSPEndDisplayList(), // 0x00001DE8
};

Vtx_t _ganontikasonogo_room_0_vertices_00001DF0[16] = 
{
	 { 520, 70, -1515, 0, 0, 0, 177, 164, 138, 255 }, // 0x00001DF0
	 { 520, -240, -1515, 0, 0, 1984, 177, 164, 138, 255 }, // 0x00001E00
	 { 650, -240, -1590, 0, 1920, 1984, 100, 89, 67, 255 }, // 0x00001E10
	 { 650, 70, -1590, 0, 1920, 0, 115, 102, 78, 255 }, // 0x00001E20
	 { 325, 70, -1628, 0, 0, 0, 255, 255, 255, 255 }, // 0x00001E30
	 { 325, -240, -1628, 0, 0, 1984, 255, 255, 255, 255 }, // 0x00001E40
	 { 520, -240, -1515, 0, 2880, 1984, 115, 102, 78, 255 }, // 0x00001E50
	 { 520, 70, -1515, 0, 2880, 0, 203, 195, 178, 255 }, // 0x00001E60
	 { 325, 70, -1778, 0, 0, 0, 158, 142, 111, 255 }, // 0x00001E70
	 { 325, -240, -1778, 0, 0, 1984, 100, 89, 67, 255 }, // 0x00001E80
	 { 325, -240, -1628, 0, 1920, 1984, 115, 102, 78, 255 }, // 0x00001E90
	 { 325, 70, -1628, 0, 1920, 0, 115, 102, 78, 255 }, // 0x00001EA0
	 { 0, 70, -1965, 0, 0, 0, 158, 142, 111, 255 }, // 0x00001EB0
	 { 0, -240, -1965, 0, 0, 1984, 115, 102, 78, 255 }, // 0x00001EC0
	 { 325, 70, -1778, 0, 4800, 0, 115, 102, 78, 255 }, // 0x00001ED0
	 { 325, -240, -1778, 0, 4800, 1984, 100, 89, 67, 255 }, // 0x00001EE0
};

Vtx_t _ganontikasonogo_room_0_vertices_00001EF0[16] = 
{
	 { 0, 150, -1965, 0, 0, 0, 218, 211, 199, 255 }, // 0x00001EF0
	 { 0, 70, -1965, 0, 0, 512, 158, 142, 111, 255 }, // 0x00001F00
	 { 325, 70, -1778, 0, 3840, 512, 115, 102, 78, 255 }, // 0x00001F10
	 { 325, 150, -1778, 0, 3840, 0, 158, 142, 111, 255 }, // 0x00001F20
	 { 520, 150, -1515, 0, 512, 0, 255, 255, 255, 255 }, // 0x00001F30
	 { 520, 70, -1515, 0, 512, 512, 177, 164, 138, 255 }, // 0x00001F40
	 { 650, 70, -1590, 0, 2048, 512, 115, 102, 78, 255 }, // 0x00001F50
	 { 650, 150, -1590, 0, 2048, 0, 158, 142, 111, 255 }, // 0x00001F60
	 { 325, 150, -1628, 0, 0, 0, 255, 255, 255, 255 }, // 0x00001F70
	 { 325, 70, -1628, 0, 0, 512, 255, 255, 255, 255 }, // 0x00001F80
	 { 520, 70, -1515, 0, 2304, 512, 203, 195, 178, 255 }, // 0x00001F90
	 { 520, 150, -1515, 0, 2304, 0, 255, 255, 255, 255 }, // 0x00001FA0
	 { 325, 150, -1778, 0, 0, 0, 158, 142, 111, 255 }, // 0x00001FB0
	 { 325, 70, -1778, 0, 0, 512, 158, 142, 111, 255 }, // 0x00001FC0
	 { 325, 70, -1628, 0, 1536, 512, 115, 102, 78, 255 }, // 0x00001FD0
	 { 325, 150, -1628, 0, 1536, 0, 255, 255, 255, 255 }, // 0x00001FE0
};

Vtx_t _ganontikasonogo_room_0_vertices_00001FF0[9] = 
{
	 { 769, 150, -1796, 0, 6719, -4384, 115, 102, 78, 255 }, // 0x00001FF0
	 { 675, 150, -1850, 0, 6331, -4608, 134, 119, 89, 255 }, // 0x00002000
	 { 615, 150, -1746, 0, 5947, -3943, 255, 255, 255, 255 }, // 0x00002010
	 { 650, 150, -1590, 0, 6109, -3328, 255, 255, 255, 255 }, // 0x00002020
	 { 477, 150, -1826, 0, 5060, -4455, 255, 255, 255, 255 }, // 0x00002030
	 { 325, 150, -1778, 0, 4446, -4288, 255, 255, 255, 255 }, // 0x00002040
	 { 0, 150, -2240, 0, 2783, -6656, 100, 89, 67, 255 }, // 0x00002050
	 { 0, 150, -1965, 0, 2783, -5248, 255, 255, 255, 255 }, // 0x00002060
	 { 537, 150, -1930, 0, 5444, -5120, 134, 119, 89, 255 }, // 0x00002070
};

Vtx_t _ganontikasonogo_room_0_vertices_00002080[8] = 
{
	 { 632, 250, -1875, 0, 6229, 2150, 158, 142, 111, 255 }, // 0x00002080
	 { 632, -110, -1875, 0, 6229, 3686, 158, 142, 111, 255 }, // 0x00002090
	 { 1212, -110, -1540, 0, 11947, 3686, 100, 89, 67, 255 }, // 0x000020A0
	 { 1212, 754, -1540, 0, 11947, 0, 69, 62, 48, 255 }, // 0x000020B0
	 { 0, 150, -2240, 0, 0, 2577, 100, 89, 67, 255 }, // 0x000020C0
	 { 580, 150, -1905, 0, 5717, 2577, 158, 142, 111, 255 }, // 0x000020D0
	 { 580, 250, -1905, 0, 5717, 2150, 158, 142, 111, 255 }, // 0x000020E0
	 { 0, 754, -2240, 0, 0, 0, 69, 62, 48, 255 }, // 0x000020F0
};

Vtx_t _ganontikasonogo_room_0_vertices_00002100[4] = 
{
	 { 650, 150, -1590, 0, 6109, -3328, 255, 255, 255, 255 }, // 0x00002100
	 { 325, 150, -1778, 0, 4446, -4288, 255, 255, 255, 255 }, // 0x00002110
	 { 325, 150, -1628, 0, 4446, -3520, 255, 255, 255, 255 }, // 0x00002120
	 { 520, 150, -1515, 0, 5444, -2944, 255, 255, 255, 255 }, // 0x00002130
};

Vtx_t _ganontikasonogo_room_0_vertices_00002140[5] = 
{
	 { 1212, 754, -1540, 0, 11947, 0, 69, 62, 48, 255 }, // 0x00002140
	 { 606, 754, -1890, 0, 5973, 0, 69, 62, 48, 255 }, // 0x00002150
	 { 580, 250, -1905, 0, 5717, 2150, 158, 142, 111, 255 }, // 0x00002160
	 { 0, 754, -2240, 0, 0, 0, 69, 62, 48, 255 }, // 0x00002170
	 { 632, 250, -1875, 0, 6229, 2150, 158, 142, 111, 255 }, // 0x00002180
};

Vtx_t _ganontikasonogo_room_0_vertices_00002190[8] = 
{
	 { 0, -240, -2240, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002190
	 { 1212, -240, -1540, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021A0
	 { 0, 754, -2240, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021B0
	 { 1212, 754, -1540, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021C0
	 { -184, -240, -1921, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021D0
	 { 1028, -240, -1221, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021E0
	 { -184, 754, -1921, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021F0
	 { 1028, 754, -1221, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002200
};

Gfx _ganontikasonogo_room_0_dlist_00002210[] =
{
	gsDPPipeSync(), // 0x00002210
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002218
	gsSPVertex(_ganontikasonogo_room_0_vertices_00002190, 8, 0), // 0x00002220
	gsSPCullDisplayList(0, 7), // 0x00002228
	gsDPPipeSync(), // 0x00002230
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002238
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002240
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002248
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00002250
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002258
	gsDPLoadSync(), // 0x00002260
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002268
	gsDPPipeSync(), // 0x00002270
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002278
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002280
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002288
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002290
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002298
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000022A0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000022A8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00001DF0, 16, 0), // 0x000022B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000022B8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000022C0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000022C8
	gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0), // 0x000022D0
	gsDPPipeSync(), // 0x000022D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x000022E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x000022E8
	gsDPLoadSync(), // 0x000022F0
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x000022F8
	gsDPPipeSync(), // 0x00002300
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00002308
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002310
	gsSPVertex(_ganontikasonogo_room_0_vertices_00001EF0, 16, 0), // 0x00002318
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002320
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002328
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002330
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002338
	gsDPPipeSync(), // 0x00002340
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000F2D8), // 0x00002348
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002350
	gsDPLoadSync(), // 0x00002358
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002360
	gsDPPipeSync(), // 0x00002368
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002370
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002378
	gsSPVertex(_ganontikasonogo_room_0_vertices_00001FF0, 9, 0), // 0x00002380
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002388
	gsSP2Triangles(4, 5, 3, 0, 4, 3, 2, 0), // 0x00002390
	gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0), // 0x00002398
	gsSP1Triangle(8, 6, 4, 0), // 0x000023A0
	gsDPPipeSync(), // 0x000023A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x000023B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000023B8
	gsDPLoadSync(), // 0x000023C0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000023C8
	gsDPPipeSync(), // 0x000023D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000023D8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000023E0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00002080, 8, 0), // 0x000023E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000023F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000023F8
	gsDPPipeSync(), // 0x00002400
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000F2D8), // 0x00002408
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002410
	gsDPLoadSync(), // 0x00002418
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002420
	gsDPPipeSync(), // 0x00002428
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002430
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002438
	gsSPVertex(_ganontikasonogo_room_0_vertices_00002100, 4, 0), // 0x00002440
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002448
	gsDPPipeSync(), // 0x00002450
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x00002458
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002460
	gsDPLoadSync(), // 0x00002468
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002470
	gsDPPipeSync(), // 0x00002478
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002480
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002488
	gsSPVertex(_ganontikasonogo_room_0_vertices_00002140, 5, 0), // 0x00002490
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002498
	gsSP1Triangle(0, 2, 4, 0), // 0x000024A0
	gsSPEndDisplayList(), // 0x000024A8
};

Vtx_t _ganontikasonogo_room_0_vertices_000024B0[9] = 
{
	 { 0, 754, -2240, 0, 11947, 0, 69, 62, 48, 255 }, // 0x000024B0
	 { -632, 250, -1875, 0, 5717, 2150, 158, 142, 111, 255 }, // 0x000024C0
	 { -580, 250, -1905, 0, 6229, 2150, 158, 142, 111, 255 }, // 0x000024D0
	 { -606, 754, -1890, 0, 5973, 0, 69, 62, 48, 255 }, // 0x000024E0
	 { -1212, 754, -1540, 0, 0, 0, 69, 62, 48, 255 }, // 0x000024F0
	 { -1212, -110, -1540, 0, 0, 3686, 100, 89, 67, 255 }, // 0x00002500
	 { -632, -110, -1875, 0, 5717, 3686, 158, 142, 111, 255 }, // 0x00002510
	 { -580, 150, -1905, 0, 6229, 2577, 158, 142, 111, 255 }, // 0x00002520
	 { 0, 150, -2240, 0, 11947, 2577, 100, 89, 67, 255 }, // 0x00002530
};

Vtx_t _ganontikasonogo_room_0_vertices_00002540[5] = 
{
	 { 0, 150, -2240, 0, 2783, -6656, 100, 89, 67, 255 }, // 0x00002540
	 { -325, 150, -1778, 0, 1121, -4288, 255, 255, 255, 255 }, // 0x00002550
	 { 0, 150, -1965, 0, 2783, -5248, 255, 255, 255, 255 }, // 0x00002560
	 { -477, 150, -1826, 0, 507, -4455, 255, 255, 255, 255 }, // 0x00002570
	 { -537, 150, -1930, 0, 123, -5120, 134, 119, 89, 255 }, // 0x00002580
};

Vtx_t _ganontikasonogo_room_0_vertices_00002590[4] = 
{
	 { -325, 150, -1778, 0, -1792, 0, 158, 142, 111, 255 }, // 0x00002590
	 { -325, 70, -1778, 0, -1792, 512, 158, 142, 111, 255 }, // 0x000025A0
	 { 0, 70, -1965, 0, 2048, 512, 177, 164, 138, 255 }, // 0x000025B0
	 { 0, 150, -1965, 0, 2048, 0, 218, 211, 199, 255 }, // 0x000025C0
};

Vtx_t _ganontikasonogo_room_0_vertices_000025D0[4] = 
{
	 { -325, 70, -1778, 0, 0, 0, 158, 142, 111, 255 }, // 0x000025D0
	 { -325, -240, -1778, 0, 0, 1984, 158, 142, 111, 255 }, // 0x000025E0
	 { 0, -240, -1965, 0, 4800, 1984, 100, 89, 67, 255 }, // 0x000025F0
	 { 0, 70, -1965, 0, 4800, 0, 177, 164, 138, 255 }, // 0x00002600
};

Vtx_t _ganontikasonogo_room_0_vertices_00002610[12] = 
{
	 { -325, 150, -1628, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00002610
	 { -325, 70, -1628, 0, 2048, 512, 158, 142, 111, 255 }, // 0x00002620
	 { -325, 70, -1778, 0, 512, 512, 158, 142, 111, 255 }, // 0x00002630
	 { -325, 150, -1778, 0, 512, 0, 158, 142, 111, 255 }, // 0x00002640
	 { -520, 150, -1515, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00002650
	 { -520, 70, -1515, 0, 2048, 512, 177, 164, 138, 255 }, // 0x00002660
	 { -325, 70, -1628, 0, -256, 512, 255, 255, 255, 255 }, // 0x00002670
	 { -325, 150, -1628, 0, -256, 0, 255, 255, 255, 255 }, // 0x00002680
	 { -650, 150, -1590, 0, 1536, 0, 158, 142, 111, 255 }, // 0x00002690
	 { -650, 70, -1590, 0, 1536, 512, 115, 102, 78, 255 }, // 0x000026A0
	 { -520, 70, -1515, 0, 0, 512, 158, 142, 111, 255 }, // 0x000026B0
	 { -520, 150, -1515, 0, 0, 0, 255, 255, 255, 255 }, // 0x000026C0
};

Vtx_t _ganontikasonogo_room_0_vertices_000026D0[11] = 
{
	 { -769, 150, -1796, 0, -1152, -4384, 115, 102, 78, 255 }, // 0x000026D0
	 { -650, 150, -1590, 0, -542, -3328, 255, 255, 255, 255 }, // 0x000026E0
	 { -615, 150, -1746, 0, -380, -3943, 255, 255, 255, 255 }, // 0x000026F0
	 { -675, 150, -1850, 0, -764, -4608, 134, 119, 89, 255 }, // 0x00002700
	 { -477, 150, -1826, 0, 507, -4455, 255, 255, 255, 255 }, // 0x00002710
	 { -325, 150, -1778, 0, 1121, -4288, 255, 255, 255, 255 }, // 0x00002720
	 { -520, 150, -1515, 0, 123, -2944, 255, 255, 255, 255 }, // 0x00002730
	 { -325, 150, -1628, 0, 1121, -3520, 255, 255, 255, 255 }, // 0x00002740
	 { -650, 150, -1590, 0, -542, -3328, 255, 255, 255, 255 }, // 0x00002750
	 { -325, 150, -1778, 0, 1121, -4288, 255, 255, 255, 255 }, // 0x00002760
	 { -615, 150, -1746, 0, -380, -3943, 255, 255, 255, 255 }, // 0x00002770
};

Vtx_t _ganontikasonogo_room_0_vertices_00002780[12] = 
{
	 { -520, 70, -1515, 0, 0, 0, 177, 164, 138, 255 }, // 0x00002780
	 { -520, -240, -1515, 0, 0, 1984, 177, 164, 138, 255 }, // 0x00002790
	 { -325, -240, -1628, 0, 2880, 1984, 115, 102, 78, 255 }, // 0x000027A0
	 { -325, 70, -1628, 0, 2880, 0, 255, 255, 255, 255 }, // 0x000027B0
	 { -650, 70, -1590, 0, 0, 0, 115, 102, 78, 255 }, // 0x000027C0
	 { -650, -240, -1590, 0, 0, 1984, 100, 89, 67, 255 }, // 0x000027D0
	 { -520, -240, -1515, 0, 1920, 1984, 115, 102, 78, 255 }, // 0x000027E0
	 { -520, 70, -1515, 0, 1920, 0, 158, 142, 111, 255 }, // 0x000027F0
	 { -325, 70, -1628, 0, 0, 0, 158, 142, 111, 255 }, // 0x00002800
	 { -325, -240, -1628, 0, 0, 1984, 158, 142, 111, 255 }, // 0x00002810
	 { -325, -240, -1778, 0, 1920, 1984, 81, 72, 55, 255 }, // 0x00002820
	 { -325, 70, -1778, 0, 1920, 0, 158, 142, 111, 255 }, // 0x00002830
};

Vtx_t _ganontikasonogo_room_0_vertices_00002840[8] = 
{
	 { 0, -240, -2240, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002840
	 { 184, -240, -1921, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002850
	 { 0, 754, -2240, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002860
	 { 184, 754, -1921, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002870
	 { -1212, -240, -1540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002880
	 { -1028, -240, -1221, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002890
	 { -1212, 754, -1540, 0, 0, 0, 0, 0, 0, 0 }, // 0x000028A0
	 { -1028, 754, -1221, 0, 0, 0, 0, 0, 0, 0 }, // 0x000028B0
};

Gfx _ganontikasonogo_room_0_dlist_000028C0[] =
{
	gsDPPipeSync(), // 0x000028C0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000028C8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00002840, 8, 0), // 0x000028D0
	gsSPCullDisplayList(0, 7), // 0x000028D8
	gsDPPipeSync(), // 0x000028E0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000028E8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000028F0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000028F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x00002900
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002908
	gsDPLoadSync(), // 0x00002910
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002918
	gsDPPipeSync(), // 0x00002920
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002928
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002930
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002938
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002940
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002948
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002950
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002958
	gsSPVertex(_ganontikasonogo_room_0_vertices_000024B0, 9, 0), // 0x00002960
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002968
	gsSP2Triangles(3, 4, 1, 0, 5, 6, 1, 0), // 0x00002970
	gsSP2Triangles(5, 1, 4, 0, 2, 7, 8, 0), // 0x00002978
	gsSP1Triangle(2, 8, 0, 0), // 0x00002980
	gsDPPipeSync(), // 0x00002988
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000F2D8), // 0x00002990
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002998
	gsDPLoadSync(), // 0x000029A0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000029A8
	gsDPPipeSync(), // 0x000029B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000029B8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000029C0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00002540, 5, 0), // 0x000029C8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000029D0
	gsSP1Triangle(0, 4, 3, 0), // 0x000029D8
	gsDPPipeSync(), // 0x000029E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x000029E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x000029F0
	gsDPLoadSync(), // 0x000029F8
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00002A00
	gsDPPipeSync(), // 0x00002A08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00002A10
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002A18
	gsSPVertex(_ganontikasonogo_room_0_vertices_00002590, 4, 0), // 0x00002A20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002A28
	gsDPPipeSync(), // 0x00002A30
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00002A38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002A40
	gsDPLoadSync(), // 0x00002A48
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002A50
	gsDPPipeSync(), // 0x00002A58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002A60
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002A68
	gsSPVertex(_ganontikasonogo_room_0_vertices_000025D0, 4, 0), // 0x00002A70
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002A78
	gsDPPipeSync(), // 0x00002A80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00002A88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00002A90
	gsDPLoadSync(), // 0x00002A98
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00002AA0
	gsDPPipeSync(), // 0x00002AA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00002AB0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002AB8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00002610, 12, 0), // 0x00002AC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002AC8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002AD0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002AD8
	gsDPPipeSync(), // 0x00002AE0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000F2D8), // 0x00002AE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002AF0
	gsDPLoadSync(), // 0x00002AF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002B00
	gsDPPipeSync(), // 0x00002B08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002B10
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002B18
	gsSPVertex(_ganontikasonogo_room_0_vertices_000026D0, 11, 0), // 0x00002B20
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00002B28
	gsSP2Triangles(4, 2, 5, 0, 6, 7, 5, 0), // 0x00002B30
	gsSP2Triangles(6, 5, 1, 0, 8, 9, 10, 0), // 0x00002B38
	gsDPPipeSync(), // 0x00002B40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00002B48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002B50
	gsDPLoadSync(), // 0x00002B58
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002B60
	gsDPPipeSync(), // 0x00002B68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002B70
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002B78
	gsSPVertex(_ganontikasonogo_room_0_vertices_00002780, 12, 0), // 0x00002B80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002B88
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002B90
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002B98
	gsSPEndDisplayList(), // 0x00002BA0
};

Vtx_t _ganontikasonogo_room_0_vertices_00002BA8[12] = 
{
	 { -325, 70, -53, 0, 0, 0, 255, 255, 255, 255 }, // 0x00002BA8
	 { -325, -240, -53, 0, 0, 1984, 177, 164, 138, 255 }, // 0x00002BB8
	 { -520, -240, -165, 0, 2880, 1984, 177, 164, 138, 255 }, // 0x00002BC8
	 { -520, 70, -165, 0, 2880, 0, 177, 164, 138, 255 }, // 0x00002BD8
	 { -325, 70, 97, 0, 0, 0, 100, 89, 67, 255 }, // 0x00002BE8
	 { -325, -240, 97, 0, 0, 1984, 134, 119, 89, 255 }, // 0x00002BF8
	 { -325, -240, -53, 0, 1920, 1984, 177, 164, 138, 255 }, // 0x00002C08
	 { -325, 70, -53, 0, 1920, 0, 158, 142, 111, 255 }, // 0x00002C18
	 { -520, 70, -165, 0, 0, 0, 158, 142, 111, 255 }, // 0x00002C28
	 { -520, -240, -165, 0, 0, 1984, 177, 164, 138, 255 }, // 0x00002C38
	 { -650, -240, -90, 0, 1920, 1984, 81, 72, 55, 255 }, // 0x00002C48
	 { -650, 70, -90, 0, 1920, 0, 115, 102, 78, 255 }, // 0x00002C58
};

Vtx_t _ganontikasonogo_room_0_vertices_00002C68[12] = 
{
	 { -325, 150, 97, 0, 512, 0, 158, 142, 111, 255 }, // 0x00002C68
	 { -325, 70, 97, 0, 512, 512, 100, 89, 67, 255 }, // 0x00002C78
	 { -325, 70, -53, 0, 2048, 512, 158, 142, 111, 255 }, // 0x00002C88
	 { -325, 150, -53, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00002C98
	 { -325, 150, -53, 0, -256, 0, 255, 255, 255, 255 }, // 0x00002CA8
	 { -325, 70, -53, 0, -256, 512, 255, 255, 255, 255 }, // 0x00002CB8
	 { -520, 70, -165, 0, 2048, 512, 177, 164, 138, 255 }, // 0x00002CC8
	 { -520, 150, -165, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00002CD8
	 { -520, 150, -165, 0, 0, 0, 255, 255, 255, 255 }, // 0x00002CE8
	 { -520, 70, -165, 0, 0, 512, 158, 142, 111, 255 }, // 0x00002CF8
	 { -650, 70, -90, 0, 1536, 512, 115, 102, 78, 255 }, // 0x00002D08
	 { -650, 150, -90, 0, 1536, 0, 158, 142, 111, 255 }, // 0x00002D18
};

Vtx_t _ganontikasonogo_room_0_vertices_00002D28[14] = 
{
	 { -615, 150, 66, 0, -2414, -984, 255, 255, 255, 255 }, // 0x00002D28
	 { -650, 150, -90, 0, -2232, -1684, 255, 255, 255, 255 }, // 0x00002D38
	 { -769, 150, 116, 0, -3134, -1095, 115, 102, 78, 255 }, // 0x00002D48
	 { -325, 150, 98, 0, -1304, -263, 255, 255, 255, 255 }, // 0x00002D58
	 { -477, 150, 146, 0, -2018, -378, 255, 255, 255, 255 }, // 0x00002D68
	 { -150, 150, 473, 0, -1367, 1612, 69, 62, 48, 255 }, // 0x00002D78
	 { -90, 150, 323, 0, -817, 1128, 255, 255, 255, 255 }, // 0x00002D88
	 { -537, 150, 250, 0, -2472, -81, 134, 119, 89, 255 }, // 0x00002D98
	 { -325, 150, 97, 0, -1304, -263, 255, 255, 255, 255 }, // 0x00002DA8
	 { -615, 150, 66, 0, -2414, -984, 255, 255, 255, 255 }, // 0x00002DB8
	 { -650, 150, -90, 0, -2232, -1684, 255, 255, 255, 255 }, // 0x00002DC8
	 { -325, 150, -53, 0, -997, -868, 255, 255, 255, 255 }, // 0x00002DD8
	 { -520, 150, -165, 0, -1554, -1721, 255, 255, 255, 255 }, // 0x00002DE8
	 { -675, 150, 170, 0, -2868, -687, 134, 119, 89, 255 }, // 0x00002DF8
};

Vtx_t _ganontikasonogo_room_0_vertices_00002E08[9] = 
{
	 { -1212, -110, -140, 0, 10469, 2133, 100, 89, 67, 255 }, // 0x00002E08
	 { -1212, 754, -140, 0, 10469, -1553, 69, 62, 48, 255 }, // 0x00002E18
	 { -632, 250, 195, 0, 4751, 597, 218, 211, 199, 255 }, // 0x00002E28
	 { -632, -110, 195, 0, 4751, 2133, 218, 211, 199, 255 }, // 0x00002E38
	 { -150, 150, 473, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00002E48
	 { -580, 150, 225, 0, 4239, 1024, 218, 211, 199, 255 }, // 0x00002E58
	 { -580, 250, 225, 0, 4239, 597, 218, 211, 199, 255 }, // 0x00002E68
	 { -150, 754, 473, 0, 0, -1553, 81, 72, 55, 255 }, // 0x00002E78
	 { -681, 754, 167, 0, 5234, -1553, 115, 102, 78, 255 }, // 0x00002E88
};

Vtx_t _ganontikasonogo_room_0_vertices_00002E98[8] = 
{
	 { -1028, -240, -459, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002E98
	 { 34, -240, 155, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002EA8
	 { -1028, 754, -459, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002EB8
	 { 34, 754, 155, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002EC8
	 { -1212, -240, -140, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002ED8
	 { -150, -240, 473, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002EE8
	 { -1212, 754, -140, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002EF8
	 { -150, 754, 473, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002F08
};

Gfx _ganontikasonogo_room_0_dlist_00002F18[] =
{
	gsDPPipeSync(), // 0x00002F18
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002F20
	gsSPVertex(_ganontikasonogo_room_0_vertices_00002E98, 8, 0), // 0x00002F28
	gsSPCullDisplayList(0, 7), // 0x00002F30
	gsDPPipeSync(), // 0x00002F38
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002F40
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002F48
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002F50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00002F58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002F60
	gsDPLoadSync(), // 0x00002F68
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002F70
	gsDPPipeSync(), // 0x00002F78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002F80
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002F88
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002F90
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002F98
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002FA0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002FA8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002FB0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00002BA8, 12, 0), // 0x00002FB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002FC0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002FC8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002FD0
	gsDPPipeSync(), // 0x00002FD8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00002FE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00002FE8
	gsDPLoadSync(), // 0x00002FF0
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00002FF8
	gsDPPipeSync(), // 0x00003000
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00003008
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00003010
	gsSPVertex(_ganontikasonogo_room_0_vertices_00002C68, 12, 0), // 0x00003018
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003020
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003028
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003030
	gsDPPipeSync(), // 0x00003038
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000F2D8), // 0x00003040
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003048
	gsDPLoadSync(), // 0x00003050
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003058
	gsDPPipeSync(), // 0x00003060
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003068
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003070
	gsSPVertex(_ganontikasonogo_room_0_vertices_00002D28, 14, 0), // 0x00003078
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003080
	gsSP2Triangles(3, 5, 6, 0, 4, 7, 5, 0), // 0x00003088
	gsSP2Triangles(8, 9, 4, 0, 9, 8, 10, 0), // 0x00003090
	gsSP2Triangles(10, 8, 11, 0, 10, 11, 12, 0), // 0x00003098
	gsSP1Triangle(0, 2, 13, 0), // 0x000030A0
	gsDPPipeSync(), // 0x000030A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x000030B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000030B8
	gsDPLoadSync(), // 0x000030C0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000030C8
	gsDPPipeSync(), // 0x000030D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000030D8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000030E0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00002E08, 9, 0), // 0x000030E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000030F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000030F8
	gsSP2Triangles(1, 8, 6, 0, 8, 7, 6, 0), // 0x00003100
	gsSP1Triangle(1, 6, 2, 0), // 0x00003108
	gsSPEndDisplayList(), // 0x00003110
};

Vtx_t _ganontikasonogo_room_0_vertices_00003118[4] = 
{
	 { -325, 70, 98, 0, 6651, 512, 100, 89, 67, 255 }, // 0x00003118
	 { -325, 150, 98, 0, 6651, 0, 158, 142, 111, 255 }, // 0x00003128
	 { 325, 150, 98, 0, 0, 0, 203, 195, 178, 255 }, // 0x00003138
	 { 325, 70, 98, 0, 0, 512, 100, 89, 67, 255 }, // 0x00003148
};

Vtx_t _ganontikasonogo_room_0_vertices_00003158[9] = 
{
	 { 0, 150, 97, 0, 7, 401, 255, 255, 255, 255 }, // 0x00003158
	 { -90, 150, 323, 0, -817, 1128, 255, 255, 255, 255 }, // 0x00003168
	 { 90, 150, 323, 0, -91, 1496, 255, 255, 255, 255 }, // 0x00003178
	 { 325, 150, 98, 0, 1318, 1065, 255, 255, 255, 255 }, // 0x00003188
	 { 90, 150, 473, 0, -398, 2103, 69, 62, 48, 255 }, // 0x00003198
	 { 150, 150, 473, 0, -156, 2225, 69, 62, 48, 255 }, // 0x000031A8
	 { -150, 150, 473, 0, -1367, 1612, 69, 62, 48, 255 }, // 0x000031B8
	 { -90, 150, 473, 0, -1125, 1735, 69, 62, 48, 255 }, // 0x000031C8
	 { -325, 150, 98, 0, -1304, -263, 255, 255, 255, 255 }, // 0x000031D8
};

Vtx_t _ganontikasonogo_room_0_vertices_000031E8[11] = 
{
	 { -90, 310, 473, 0, 2048, 1894, 134, 119, 89, 255 }, // 0x000031E8
	 { -90, 150, 473, 0, 2048, 2577, 100, 89, 67, 255 }, // 0x000031F8
	 { -150, 150, 473, 0, 2560, 2577, 100, 89, 67, 255 }, // 0x00003208
	 { -150, 754, 473, 0, 2560, 0, 81, 72, 55, 255 }, // 0x00003218
	 { 150, 150, 473, 0, 0, 2577, 100, 89, 67, 255 }, // 0x00003228
	 { 90, 150, 473, 0, 512, 2577, 100, 89, 67, 255 }, // 0x00003238
	 { 90, 310, 473, 0, 512, 1894, 134, 119, 89, 255 }, // 0x00003248
	 { 150, 754, 473, 0, 0, 0, 69, 62, 48, 255 }, // 0x00003258
	 { -50, 350, 473, 0, 1707, 1724, 158, 142, 111, 255 }, // 0x00003268
	 { 50, 350, 473, 0, 853, 1724, 158, 142, 111, 255 }, // 0x00003278
	 { -50, 350, 473, 0, 1707, 1724, 158, 142, 111, 255 }, // 0x00003288
};

Vtx_t _ganontikasonogo_room_0_vertices_00003298[8] = 
{
	 { -325, -73, 345, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003298
	 { 325, -73, 345, 0, 0, 0, 0, 0, 0, 0 }, // 0x000032A8
	 { -325, 90, 63, 0, 0, 0, 0, 0, 0, 0 }, // 0x000032B8
	 { 325, 90, 63, 0, 0, 0, 0, 0, 0, 0 }, // 0x000032C8
	 { -325, 603, 735, 0, 0, 0, 0, 0, 0, 0 }, // 0x000032D8
	 { 325, 603, 735, 0, 0, 0, 0, 0, 0, 0 }, // 0x000032E8
	 { -325, 766, 453, 0, 0, 0, 0, 0, 0, 0 }, // 0x000032F8
	 { 325, 766, 453, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003308
};

Gfx _ganontikasonogo_room_0_dlist_00003318[] =
{
	gsDPPipeSync(), // 0x00003318
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003320
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003298, 8, 0), // 0x00003328
	gsSPCullDisplayList(0, 7), // 0x00003330
	gsDPPipeSync(), // 0x00003338
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003340
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003348
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003350
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00003358
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00003360
	gsDPLoadSync(), // 0x00003368
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00003370
	gsDPPipeSync(), // 0x00003378
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00003380
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00003388
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003390
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003398
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000033A0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000033A8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000033B0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003118, 4, 0), // 0x000033B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000033C0
	gsDPPipeSync(), // 0x000033C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000F2D8), // 0x000033D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000033D8
	gsDPLoadSync(), // 0x000033E0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000033E8
	gsDPPipeSync(), // 0x000033F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000033F8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003400
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003158, 9, 0), // 0x00003408
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00003410
	gsSP2Triangles(2, 4, 5, 0, 6, 7, 1, 0), // 0x00003418
	gsSP1Triangle(0, 8, 1, 0), // 0x00003420
	gsDPPipeSync(), // 0x00003428
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x00003430
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003438
	gsDPLoadSync(), // 0x00003440
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003448
	gsDPPipeSync(), // 0x00003450
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003458
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003460
	gsSPVertex(_ganontikasonogo_room_0_vertices_000031E8, 11, 0), // 0x00003468
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003470
	gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0), // 0x00003478
	gsSP2Triangles(8, 3, 7, 0, 7, 9, 8, 0), // 0x00003480
	gsSP2Triangles(7, 6, 9, 0, 0, 3, 10, 0), // 0x00003488
	gsSPEndDisplayList(), // 0x00003490
};

Vtx_t _ganontikasonogo_room_0_vertices_00003498[15] = 
{
	 { -1212, 754, -140, 0, -5184, -1280, 69, 62, 48, 255 }, // 0x00003498
	 { -909, 754, -315, 0, -3632, -832, 169, 154, 126, 255 }, // 0x000034A8
	 { -112, 754, 145, 0, 448, -2010, 169, 154, 126, 255 }, // 0x000034B8
	 { -150, 754, 473, 0, 256, -2850, 81, 72, 55, 255 }, // 0x000034C8
	 { 0, 754, -840, 0, 1024, 512, 5, 5, 5, 255 }, // 0x000034D8
	 { 113, 754, 145, 0, 1600, -2010, 169, 154, 126, 255 }, // 0x000034E8
	 { 150, 754, 473, 0, 1792, -2850, 69, 62, 48, 255 }, // 0x000034F8
	 { 909, 754, -315, 0, 5680, -832, 169, 154, 126, 255 }, // 0x00003508
	 { 1212, 754, -140, 0, 7232, -1280, 69, 62, 48, 255 }, // 0x00003518
	 { 909, 754, -1365, 0, 5680, 1856, 169, 154, 126, 255 }, // 0x00003528
	 { 1212, 754, -1540, 0, 7232, 2304, 69, 62, 48, 255 }, // 0x00003538
	 { -1212, 754, -1540, 0, -5184, 2304, 69, 62, 48, 255 }, // 0x00003548
	 { 0, 754, -2240, 0, 1024, 4096, 69, 62, 48, 255 }, // 0x00003558
	 { 0, 754, -1890, 0, 1024, 3200, 169, 154, 126, 255 }, // 0x00003568
	 { -909, 754, -1365, 0, -3632, 1856, 169, 154, 126, 255 }, // 0x00003578
};

Vtx_t _ganontikasonogo_room_0_vertices_00003588[8] = 
{
	 { -1212, 754, -2240, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003588
	 { 1212, 754, -2240, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003598
	 { -1212, 754, -2240, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035A8
	 { 1212, 754, -2240, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035B8
	 { -1212, 754, 473, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035C8
	 { 1212, 754, 473, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035D8
	 { -1212, 754, 473, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035E8
	 { 1212, 754, 473, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035F8
};

Gfx _ganontikasonogo_room_0_dlist_00003608[] =
{
	gsDPPipeSync(), // 0x00003608
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003610
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003588, 8, 0), // 0x00003618
	gsSPCullDisplayList(0, 7), // 0x00003620
	gsDPPipeSync(), // 0x00003628
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003630
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003638
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003640
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x00003648
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003650
	gsDPLoadSync(), // 0x00003658
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003660
	gsDPPipeSync(), // 0x00003668
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003670
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003678
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003680
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003688
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003690
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003698
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000036A0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003498, 15, 0), // 0x000036A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000036B0
	gsSP2Triangles(1, 4, 2, 0, 4, 5, 2, 0), // 0x000036B8
	gsSP2Triangles(5, 6, 3, 0, 5, 3, 2, 0), // 0x000036C0
	gsSP2Triangles(4, 7, 5, 0, 7, 8, 6, 0), // 0x000036C8
	gsSP2Triangles(7, 6, 5, 0, 4, 9, 7, 0), // 0x000036D0
	gsSP2Triangles(9, 10, 8, 0, 9, 8, 7, 0), // 0x000036D8
	gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0), // 0x000036E0
	gsSP2Triangles(13, 4, 14, 0, 12, 10, 9, 0), // 0x000036E8
	gsSP2Triangles(12, 9, 13, 0, 9, 4, 13, 0), // 0x000036F0
	gsSPEndDisplayList(), // 0x000036F8
};

Vtx_t _ganontikasonogo_room_0_vertices_00003700[9] = 
{
	 { 90, 150, 473, 0, 0, 0, 69, 62, 48, 255 }, // 0x00003700
	 { 90, 150, 323, 0, 0, 3422, 255, 255, 255, 255 }, // 0x00003710
	 { 0, 150, 413, 0, 2048, 1374, 198, 188, 168, 255 }, // 0x00003720
	 { 90, 150, 323, 0, 0, 3072, 255, 255, 255, 255 }, // 0x00003730
	 { -90, 150, 323, 0, 0, -1024, 255, 255, 255, 255 }, // 0x00003740
	 { 0, 150, 413, 0, 2048, 1024, 198, 188, 168, 255 }, // 0x00003750
	 { -90, 150, 323, 0, 0, -2056, 255, 255, 255, 255 }, // 0x00003760
	 { -90, 150, 473, 0, 0, 1365, 69, 62, 48, 255 }, // 0x00003770
	 { 0, 150, 413, 0, 2048, -8, 198, 188, 168, 255 }, // 0x00003780
};

Vtx_t _ganontikasonogo_room_0_vertices_00003790[14] = 
{
	 { -90, 310, 473, 0, 12288, -1280, 134, 119, 89, 255 }, // 0x00003790
	 { -90, 310, 593, 0, 10752, -1280, 5, 5, 5, 255 }, // 0x000037A0
	 { -90, 150, 593, 0, 10752, -256, 5, 5, 5, 255 }, // 0x000037B0
	 { -90, 150, 473, 0, 12288, -256, 81, 72, 55, 255 }, // 0x000037C0
	 { 90, 150, 473, 0, 12288, -256, 81, 72, 55, 255 }, // 0x000037D0
	 { 90, 150, 593, 0, 10752, -256, 5, 5, 5, 255 }, // 0x000037E0
	 { 90, 310, 593, 0, 10752, -1280, 5, 5, 5, 255 }, // 0x000037F0
	 { 90, 310, 473, 0, 12288, -1280, 134, 119, 89, 255 }, // 0x00003800
	 { -50, 350, 473, 0, 12288, -2048, 100, 89, 67, 255 }, // 0x00003810
	 { -50, 350, 593, 0, 10752, -2048, 5, 5, 5, 255 }, // 0x00003820
	 { -50, 350, 593, 0, 10752, -2560, 5, 5, 5, 255 }, // 0x00003830
	 { -50, 350, 473, 0, 12288, -2560, 52, 49, 38, 255 }, // 0x00003840
	 { 50, 350, 473, 0, 12288, -2048, 100, 89, 67, 255 }, // 0x00003850
	 { 50, 350, 593, 0, 10752, -2048, 5, 5, 5, 255 }, // 0x00003860
};

Vtx_t _ganontikasonogo_room_0_vertices_00003870[8] = 
{
	 { 0, 150, 413, 0, 2048, -8, 198, 188, 168, 255 }, // 0x00003870
	 { -90, 150, 473, 0, 0, 1365, 81, 72, 55, 255 }, // 0x00003880
	 { -90, 150, 593, 0, 0, 4096, 5, 5, 5, 255 }, // 0x00003890
	 { 0, 150, 593, 0, 2048, 4096, 5, 5, 5, 255 }, // 0x000038A0
	 { 0, 150, 413, 0, 2048, 1374, 198, 188, 168, 255 }, // 0x000038B0
	 { 0, 150, 593, 0, 2048, -2731, 5, 5, 5, 255 }, // 0x000038C0
	 { 90, 150, 593, 0, 0, -2731, 5, 5, 5, 255 }, // 0x000038D0
	 { 90, 150, 473, 0, 0, 0, 81, 72, 55, 255 }, // 0x000038E0
};

Vtx_t _ganontikasonogo_room_0_vertices_000038F0[4] = 
{
	 { 90, 350, 593, 0, 0, 1024, 5, 5, 5, 255 }, // 0x000038F0
	 { 90, 150, 593, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00003900
	 { -90, 150, 593, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00003910
	 { -90, 350, 593, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00003920
};

Vtx_t _ganontikasonogo_room_0_vertices_00003930[8] = 
{
	 { -90, 150, 323, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003930
	 { 90, 150, 323, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003940
	 { -90, 350, 323, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003950
	 { 90, 350, 323, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003960
	 { -90, 150, 593, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003970
	 { 90, 150, 593, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003980
	 { -90, 350, 593, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003990
	 { 90, 350, 593, 0, 0, 0, 0, 0, 0, 0 }, // 0x000039A0
};

Gfx _ganontikasonogo_room_0_dlist_000039B0[] =
{
	gsDPPipeSync(), // 0x000039B0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000039B8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003930, 8, 0), // 0x000039C0
	gsSPCullDisplayList(0, 7), // 0x000039C8
	gsDPPipeSync(), // 0x000039D0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000039D8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000039E0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000039E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_scene_tex_00003B00), // 0x000039F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x000039F8
	gsDPLoadSync(), // 0x00003A00
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003A08
	gsDPPipeSync(), // 0x00003A10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x00003A18
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003A20
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003A28
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003A30
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003A38
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003A40
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003A48
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003700, 9, 0), // 0x00003A50
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003A58
	gsSP1Triangle(6, 7, 8, 0), // 0x00003A60
	gsDPPipeSync(), // 0x00003A68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x00003A70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003A78
	gsDPLoadSync(), // 0x00003A80
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003A88
	gsDPPipeSync(), // 0x00003A90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003A98
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003AA0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003790, 14, 0), // 0x00003AA8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003AB0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003AB8
	gsSP2Triangles(1, 0, 8, 0, 1, 8, 9, 0), // 0x00003AC0
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00003AC8
	gsSP2Triangles(7, 6, 13, 0, 7, 13, 12, 0), // 0x00003AD0
	gsDPPipeSync(), // 0x00003AD8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_scene_tex_00003B00), // 0x00003AE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x00003AE8
	gsDPLoadSync(), // 0x00003AF0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003AF8
	gsDPPipeSync(), // 0x00003B00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x00003B08
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003B10
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003870, 8, 0), // 0x00003B18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003B20
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003B28
	gsDPPipeSync(), // 0x00003B30
	gsSPTexture(0, 0, 0, 0, 0), // 0x00003B38
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00003B40
	gsDPSetPrimColor(0, 0, 5, 5, 5, 255), // 0x00003B48
	gsSPVertex(_ganontikasonogo_room_0_vertices_000038F0, 4, 0), // 0x00003B50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003B58
	gsSPEndDisplayList(), // 0x00003B60
};

Vtx_t _ganontikasonogo_room_0_vertices_00003B68[11] = 
{
	 { 547, 150, 267, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00003B68
	 { 586, 150, 175, 0, 2048, 2560, 255, 255, 255, 255 }, // 0x00003B78
	 { 477, 150, 146, 0, 0, 4608, 255, 255, 255, 255 }, // 0x00003B88
	 { 616, 150, 227, 0, 2048, 1024, 100, 89, 67, 255 }, // 0x00003B98
	 { 685, 150, 187, 0, 0, 512, 100, 89, 67, 255 }, // 0x00003BA8
	 { 615, 150, 66, 0, 0, 4096, 255, 255, 255, 255 }, // 0x00003BB8
	 { 586, 150, 175, 0, 2048, 2048, 255, 255, 255, 255 }, // 0x00003BC8
	 { 616, 150, 227, 0, 2048, 512, 100, 89, 67, 255 }, // 0x00003BD8
	 { 586, 150, 175, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003BE8
	 { 615, 150, 66, 0, 0, -2048, 255, 255, 255, 255 }, // 0x00003BF8
	 { 477, 150, 146, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00003C08
};

Vtx_t _ganontikasonogo_room_0_vertices_00003C18[12] = 
{
	 { 632, 150, 195, 0, 1707, 1365, 115, 102, 78, 255 }, // 0x00003C18
	 { 642, 150, 212, 0, 2048, 1365, 115, 102, 78, 255 }, // 0x00003C28
	 { 642, 250, 212, 0, 2048, 0, 69, 62, 48, 255 }, // 0x00003C38
	 { 632, 250, 195, 0, 1707, 0, 69, 62, 48, 255 }, // 0x00003C48
	 { 580, 250, 225, 0, 683, -341, 69, 62, 48, 255 }, // 0x00003C58
	 { 590, 250, 242, 0, 341, -341, 69, 62, 48, 255 }, // 0x00003C68
	 { 590, 150, 242, 0, 341, 1024, 115, 102, 78, 255 }, // 0x00003C78
	 { 580, 150, 225, 0, 683, 1024, 115, 102, 78, 255 }, // 0x00003C88
	 { 632, 250, 195, 0, 0, 171, 69, 62, 48, 255 }, // 0x00003C98
	 { 642, 250, 212, 0, 0, 0, 69, 62, 48, 255 }, // 0x00003CA8
	 { 590, 250, 242, 0, 2048, 0, 69, 62, 48, 255 }, // 0x00003CB8
	 { 580, 250, 225, 0, 2048, 171, 69, 62, 48, 255 }, // 0x00003CC8
};

Vtx_t _ganontikasonogo_room_0_vertices_00003CD8[8] = 
{
	 { 615, 150, 66, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003CD8
	 { 685, 150, 187, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003CE8
	 { 615, 250, 66, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003CF8
	 { 685, 250, 187, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003D08
	 { 477, 150, 146, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003D18
	 { 547, 150, 267, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003D28
	 { 477, 250, 146, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003D38
	 { 547, 250, 267, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003D48
};

Gfx _ganontikasonogo_room_0_dlist_00003D58[] =
{
	gsDPPipeSync(), // 0x00003D58
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003D60
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003CD8, 8, 0), // 0x00003D68
	gsSPCullDisplayList(0, 7), // 0x00003D70
	gsDPPipeSync(), // 0x00003D78
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003D80
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003D88
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003D90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000A2D8), // 0x00003D98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x00003DA0
	gsDPLoadSync(), // 0x00003DA8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003DB0
	gsDPPipeSync(), // 0x00003DB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x00003DC0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003DC8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003DD0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003DD8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003DE0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003DE8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003DF0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003B68, 11, 0), // 0x00003DF8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00003E00
	gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0), // 0x00003E08
	gsSP1Triangle(8, 9, 10, 0), // 0x00003E10
	gsDPPipeSync(), // 0x00003E18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x00003E20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003E28
	gsDPLoadSync(), // 0x00003E30
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003E38
	gsDPPipeSync(), // 0x00003E40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003E48
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003E50
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003C18, 12, 0), // 0x00003E58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003E60
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003E68
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003E70
	gsSPEndDisplayList(), // 0x00003E78
};

Vtx_t _ganontikasonogo_room_0_vertices_00003E80[11] = 
{
	 { -477, 150, 146, 0, 0, -2048, 255, 255, 255, 255 }, // 0x00003E80
	 { -615, 150, 66, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00003E90
	 { -586, 150, 175, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003EA0
	 { -477, 150, 146, 0, 0, 4096, 255, 255, 255, 255 }, // 0x00003EB0
	 { -586, 150, 175, 0, 2048, 2048, 255, 255, 255, 255 }, // 0x00003EC0
	 { -547, 150, 267, 0, 0, 512, 100, 89, 67, 255 }, // 0x00003ED0
	 { -616, 150, 227, 0, 2048, 512, 134, 119, 89, 255 }, // 0x00003EE0
	 { -685, 150, 187, 0, 0, 0, 100, 89, 67, 255 }, // 0x00003EF0
	 { -616, 150, 227, 0, 2048, 0, 134, 119, 89, 255 }, // 0x00003F00
	 { -586, 150, 175, 0, 2048, 1536, 255, 255, 255, 255 }, // 0x00003F10
	 { -615, 150, 66, 0, 0, 3584, 255, 255, 255, 255 }, // 0x00003F20
};

Vtx_t _ganontikasonogo_room_0_vertices_00003F30[4] = 
{
	 { -580, 250, 225, 0, 0, 853, 35, 31, 25, 255 }, // 0x00003F30
	 { -590, 250, 242, 0, 0, 1024, 35, 31, 25, 255 }, // 0x00003F40
	 { -642, 250, 212, 0, 2048, 1024, 35, 31, 25, 255 }, // 0x00003F50
	 { -632, 250, 195, 0, 2048, 853, 35, 31, 25, 255 }, // 0x00003F60
};

Vtx_t _ganontikasonogo_room_0_vertices_00003F70[8] = 
{
	 { -632, 250, 195, 0, 512, -512, 35, 31, 25, 255 }, // 0x00003F70
	 { -642, 250, 212, 0, 256, -512, 35, 31, 25, 255 }, // 0x00003F80
	 { -642, 150, 212, 0, 256, 2048, 100, 89, 67, 255 }, // 0x00003F90
	 { -632, 150, 195, 0, 512, 2048, 100, 89, 67, 255 }, // 0x00003FA0
	 { -580, 150, 225, 0, 512, 2048, 100, 89, 67, 255 }, // 0x00003FB0
	 { -590, 150, 242, 0, 256, 2048, 100, 89, 67, 255 }, // 0x00003FC0
	 { -590, 250, 242, 0, 256, -512, 35, 31, 25, 255 }, // 0x00003FD0
	 { -580, 250, 225, 0, 512, -512, 35, 31, 25, 255 }, // 0x00003FE0
};

Vtx_t _ganontikasonogo_room_0_vertices_00003FF0[8] = 
{
	 { -615, 150, 66, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003FF0
	 { -477, 150, 146, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004000
	 { -615, 250, 66, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004010
	 { -477, 250, 146, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004020
	 { -685, 150, 187, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004030
	 { -547, 150, 267, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004040
	 { -685, 250, 187, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004050
	 { -547, 250, 267, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004060
};

Gfx _ganontikasonogo_room_0_dlist_00004070[] =
{
	gsDPPipeSync(), // 0x00004070
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004078
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003FF0, 8, 0), // 0x00004080
	gsSPCullDisplayList(0, 7), // 0x00004088
	gsDPPipeSync(), // 0x00004090
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004098
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000040A0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000040A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000A2D8), // 0x000040B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x000040B8
	gsDPLoadSync(), // 0x000040C0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000040C8
	gsDPPipeSync(), // 0x000040D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x000040D8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000040E0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000040E8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000040F0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000040F8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004100
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004108
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003E80, 11, 0), // 0x00004110
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004118
	gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0), // 0x00004120
	gsSP1Triangle(10, 7, 9, 0), // 0x00004128
	gsDPPipeSync(), // 0x00004130
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x00004138
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004140
	gsDPLoadSync(), // 0x00004148
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004150
	gsDPPipeSync(), // 0x00004158
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004160
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004168
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003F30, 4, 0), // 0x00004170
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004178
	gsDPPipeSync(), // 0x00004180
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_scene_tex_00002B00), // 0x00004188
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004190
	gsDPLoadSync(), // 0x00004198
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000041A0
	gsDPPipeSync(), // 0x000041A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000041B0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000041B8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00003F70, 8, 0), // 0x000041C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000041C8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000041D0
	gsSPEndDisplayList(), // 0x000041D8
};

Vtx_t _ganontikasonogo_room_0_vertices_000041E0[11] = 
{
	 { -547, 150, -1947, 0, 0, 512, 115, 102, 78, 255 }, // 0x000041E0
	 { -616, 150, -1907, 0, 2048, 512, 115, 102, 78, 255 }, // 0x000041F0
	 { -586, 150, -1855, 0, 2048, -1024, 255, 255, 255, 255 }, // 0x00004200
	 { -477, 150, -1826, 0, 0, -3072, 255, 255, 255, 255 }, // 0x00004210
	 { -616, 150, -1907, 0, 2048, 1024, 115, 102, 78, 255 }, // 0x00004220
	 { -685, 150, -1867, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00004230
	 { -586, 150, -1855, 0, 2048, 2560, 255, 255, 255, 255 }, // 0x00004240
	 { -615, 150, -1746, 0, 0, 4608, 255, 255, 255, 255 }, // 0x00004250
	 { -615, 150, -1746, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00004260
	 { -477, 150, -1826, 0, 0, -2048, 255, 255, 255, 255 }, // 0x00004270
	 { -586, 150, -1855, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00004280
};

Vtx_t _ganontikasonogo_room_0_vertices_00004290[12] = 
{
	 { -580, 250, -1905, 0, 1365, 0, 69, 62, 48, 255 }, // 0x00004290
	 { -590, 250, -1922, 0, 1195, 0, 69, 62, 48, 255 }, // 0x000042A0
	 { -590, 150, -1922, 0, 1195, 683, 115, 102, 78, 255 }, // 0x000042B0
	 { -580, 150, -1905, 0, 1365, 683, 115, 102, 78, 255 }, // 0x000042C0
	 { -632, 250, -1875, 0, 683, 1365, 69, 62, 48, 255 }, // 0x000042D0
	 { -642, 250, -1892, 0, 853, 1451, 69, 62, 48, 255 }, // 0x000042E0
	 { -590, 250, -1922, 0, 1877, 939, 69, 62, 48, 255 }, // 0x000042F0
	 { -580, 250, -1905, 0, 1707, 853, 69, 62, 48, 255 }, // 0x00004300
	 { -632, 150, -1875, 0, 683, 1024, 115, 102, 78, 255 }, // 0x00004310
	 { -642, 150, -1892, 0, 853, 1024, 115, 102, 78, 255 }, // 0x00004320
	 { -642, 250, -1892, 0, 853, 341, 69, 62, 48, 255 }, // 0x00004330
	 { -632, 250, -1875, 0, 683, 341, 69, 62, 48, 255 }, // 0x00004340
};

Vtx_t _ganontikasonogo_room_0_vertices_00004350[8] = 
{
	 { -547, 150, -1947, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004350
	 { -477, 150, -1826, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004360
	 { -547, 250, -1947, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004370
	 { -477, 250, -1826, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004380
	 { -685, 150, -1867, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004390
	 { -615, 150, -1746, 0, 0, 0, 0, 0, 0, 0 }, // 0x000043A0
	 { -685, 250, -1867, 0, 0, 0, 0, 0, 0, 0 }, // 0x000043B0
	 { -615, 250, -1746, 0, 0, 0, 0, 0, 0, 0 }, // 0x000043C0
};

Gfx _ganontikasonogo_room_0_dlist_000043D0[] =
{
	gsDPPipeSync(), // 0x000043D0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000043D8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004350, 8, 0), // 0x000043E0
	gsSPCullDisplayList(0, 7), // 0x000043E8
	gsDPPipeSync(), // 0x000043F0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000043F8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004400
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004408
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000A2D8), // 0x00004410
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x00004418
	gsDPLoadSync(), // 0x00004420
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004428
	gsDPPipeSync(), // 0x00004430
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x00004438
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004440
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004448
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004450
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004458
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004460
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004468
	gsSPVertex(_ganontikasonogo_room_0_vertices_000041E0, 11, 0), // 0x00004470
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004478
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00004480
	gsSP1Triangle(8, 9, 10, 0), // 0x00004488
	gsDPPipeSync(), // 0x00004490
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x00004498
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000044A0
	gsDPLoadSync(), // 0x000044A8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000044B0
	gsDPPipeSync(), // 0x000044B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000044C0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000044C8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004290, 12, 0), // 0x000044D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000044D8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000044E0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000044E8
	gsSPEndDisplayList(), // 0x000044F0
};

Vtx_t _ganontikasonogo_room_0_vertices_000044F8[11] = 
{
	 { 586, 150, -1855, 0, 2048, 0, 255, 255, 255, 255 }, // 0x000044F8
	 { 477, 150, -1826, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00004508
	 { 615, 150, -1746, 0, 0, -2048, 255, 255, 255, 255 }, // 0x00004518
	 { 547, 150, -1947, 0, 0, 512, 115, 102, 78, 255 }, // 0x00004528
	 { 477, 150, -1826, 0, 0, -3072, 255, 255, 255, 255 }, // 0x00004538
	 { 586, 150, -1855, 0, 2048, -1024, 255, 255, 255, 255 }, // 0x00004548
	 { 616, 150, -1907, 0, 2048, 512, 115, 102, 78, 255 }, // 0x00004558
	 { 685, 150, -1867, 0, 0, 0, 115, 102, 78, 255 }, // 0x00004568
	 { 616, 150, -1907, 0, 2048, 0, 115, 102, 78, 255 }, // 0x00004578
	 { 586, 150, -1855, 0, 2048, -1536, 255, 255, 255, 255 }, // 0x00004588
	 { 615, 150, -1746, 0, 0, -3584, 255, 255, 255, 255 }, // 0x00004598
};

Vtx_t _ganontikasonogo_room_0_vertices_000045A8[12] = 
{
	 { 580, 250, -1905, 0, 1024, 512, 81, 72, 55, 255 }, // 0x000045A8
	 { 590, 250, -1922, 0, 1024, 597, 81, 72, 55, 255 }, // 0x000045B8
	 { 642, 250, -1892, 0, 2048, 597, 81, 72, 55, 255 }, // 0x000045C8
	 { 632, 250, -1875, 0, 2048, 512, 81, 72, 55, 255 }, // 0x000045D8
	 { 632, 250, -1875, 0, 1195, 0, 81, 72, 55, 255 }, // 0x000045E8
	 { 642, 250, -1892, 0, 1024, 0, 81, 72, 55, 255 }, // 0x000045F8
	 { 642, 150, -1892, 0, 1024, 683, 115, 102, 78, 255 }, // 0x00004608
	 { 632, 150, -1875, 0, 1195, 683, 115, 102, 78, 255 }, // 0x00004618
	 { 580, 150, -1905, 0, 683, 1024, 115, 102, 78, 255 }, // 0x00004628
	 { 590, 150, -1922, 0, 853, 1024, 115, 102, 78, 255 }, // 0x00004638
	 { 590, 250, -1922, 0, 853, -341, 81, 72, 55, 255 }, // 0x00004648
	 { 580, 250, -1905, 0, 683, -341, 81, 72, 55, 255 }, // 0x00004658
};

Vtx_t _ganontikasonogo_room_0_vertices_00004668[8] = 
{
	 { 547, 150, -1947, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004668
	 { 685, 150, -1867, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004678
	 { 547, 250, -1947, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004688
	 { 685, 250, -1867, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004698
	 { 477, 150, -1826, 0, 0, 0, 0, 0, 0, 0 }, // 0x000046A8
	 { 615, 150, -1746, 0, 0, 0, 0, 0, 0, 0 }, // 0x000046B8
	 { 477, 250, -1826, 0, 0, 0, 0, 0, 0, 0 }, // 0x000046C8
	 { 615, 250, -1746, 0, 0, 0, 0, 0, 0, 0 }, // 0x000046D8
};

Gfx _ganontikasonogo_room_0_dlist_000046E8[] =
{
	gsDPPipeSync(), // 0x000046E8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000046F0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004668, 8, 0), // 0x000046F8
	gsSPCullDisplayList(0, 7), // 0x00004700
	gsDPPipeSync(), // 0x00004708
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004710
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004718
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004720
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000A2D8), // 0x00004728
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x00004730
	gsDPLoadSync(), // 0x00004738
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004740
	gsDPPipeSync(), // 0x00004748
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x00004750
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004758
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004760
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004768
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004770
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004778
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004780
	gsSPVertex(_ganontikasonogo_room_0_vertices_000044F8, 11, 0), // 0x00004788
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004790
	gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0), // 0x00004798
	gsSP1Triangle(7, 9, 10, 0), // 0x000047A0
	gsDPPipeSync(), // 0x000047A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x000047B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000047B8
	gsDPLoadSync(), // 0x000047C0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000047C8
	gsDPPipeSync(), // 0x000047D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000047D8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000047E0
	gsSPVertex(_ganontikasonogo_room_0_vertices_000045A8, 12, 0), // 0x000047E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000047F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000047F8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004800
	gsSPEndDisplayList(), // 0x00004808
};

Vtx_t _ganontikasonogo_room_0_vertices_00004810[9] = 
{
	 { 100, 160, -185, 0, 0, -683, 158, 142, 111, 255 }, // 0x00004810
	 { -100, 160, -185, 0, 5120, -683, 158, 142, 111, 255 }, // 0x00004820
	 { -100, 118, -310, 0, 5120, -2353, 158, 142, 111, 255 }, // 0x00004830
	 { 100, 118, -310, 0, 0, -2353, 158, 142, 111, 255 }, // 0x00004840
	 { 100, 151, -53, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00004850
	 { -100, 151, -53, 0, 5120, 1024, 158, 142, 111, 255 }, // 0x00004860
	 { 100, 54, 98, 0, 0, 2690, 81, 72, 55, 255 }, // 0x00004870
	 { -100, 54, 98, 0, 5120, 2690, 81, 72, 55, 255 }, // 0x00004880
	 { -100, 151, -53, 0, 5120, 1024, 158, 142, 111, 255 }, // 0x00004890
};

Vtx_t _ganontikasonogo_room_0_vertices_000048A0[4] = 
{
	 { 100, 150, 97, 0, 2, 0, 158, 142, 111, 255 }, // 0x000048A0
	 { 100, 107, 98, 0, 0, 512, 158, 142, 111, 255 }, // 0x000048B0
	 { 100, 151, -53, 0, 3622, 512, 255, 255, 255, 255 }, // 0x000048C0
	 { 100, 190, -44, 0, 3729, 3, 255, 255, 255, 255 }, // 0x000048D0
};

Vtx_t _ganontikasonogo_room_0_vertices_000048E0[3] = 
{
	 { 100, 107, 98, 0, 0, 0, 158, 142, 111, 255 }, // 0x000048E0
	 { 100, 54, 98, 0, -2, 512, 158, 142, 111, 255 }, // 0x000048F0
	 { 100, 151, -53, 0, 3622, 0, 255, 255, 255, 255 }, // 0x00004900
};

Vtx_t _ganontikasonogo_room_0_vertices_00004910[4] = 
{
	 { -100, 190, -44, 0, 0, 2113, 255, 255, 255, 255 }, // 0x00004910
	 { -100, 150, 97, 0, 0, 3272, 158, 142, 111, 255 }, // 0x00004920
	 { 100, 150, 97, 0, 2048, 3272, 158, 142, 111, 255 }, // 0x00004930
	 { 100, 190, -44, 0, 2048, 2113, 255, 255, 255, 255 }, // 0x00004940
};

Vtx_t _ganontikasonogo_room_0_vertices_00004950[4] = 
{
	 { 100, 190, -44, 0, 0, 0, 255, 255, 255, 255 }, // 0x00004950
	 { 100, 151, -53, 0, 106, 509, 255, 255, 255, 255 }, // 0x00004960
	 { 100, 160, -185, 0, 3520, 511, 255, 255, 255, 255 }, // 0x00004970
	 { 100, 200, -185, 0, 3593, 0, 255, 255, 255, 255 }, // 0x00004980
};

Vtx_t _ganontikasonogo_room_0_vertices_00004990[4] = 
{
	 { -100, 200, -185, 0, 0, 954, 255, 255, 255, 255 }, // 0x00004990
	 { -100, 190, -44, 0, 0, 2113, 255, 255, 255, 255 }, // 0x000049A0
	 { 100, 190, -44, 0, 2048, 2113, 255, 255, 255, 255 }, // 0x000049B0
	 { 100, 200, -185, 0, 2048, 954, 255, 255, 255, 255 }, // 0x000049C0
};

Vtx_t _ganontikasonogo_room_0_vertices_000049D0[4] = 
{
	 { 100, 200, -185, 0, 0, 0, 255, 255, 255, 255 }, // 0x000049D0
	 { 100, 160, -185, 0, 73, 511, 255, 255, 255, 255 }, // 0x000049E0
	 { 100, 157, -319, 0, 3593, 512, 158, 142, 111, 255 }, // 0x000049F0
	 { 100, 196, -329, 0, 3593, 0, 158, 142, 111, 255 }, // 0x00004A00
};

Vtx_t _ganontikasonogo_room_0_vertices_00004A10[3] = 
{
	 { 100, 160, -185, 0, 0, 0, 255, 255, 255, 255 }, // 0x00004A10
	 { 100, 118, -310, 0, 3520, 513, 158, 142, 111, 255 }, // 0x00004A20
	 { 100, 157, -319, 0, 3520, 1, 158, 142, 111, 255 }, // 0x00004A30
};

Vtx_t _ganontikasonogo_room_0_vertices_00004A40[5] = 
{
	 { 100, 196, -329, 0, 2048, -205, 69, 62, 48, 255 }, // 0x00004A40
	 { 0, 196, -329, 0, 1024, -205, 115, 102, 78, 255 }, // 0x00004A50
	 { 100, 200, -185, 0, 2048, 954, 255, 255, 255, 255 }, // 0x00004A60
	 { -100, 200, -185, 0, 0, 954, 255, 255, 255, 255 }, // 0x00004A70
	 { -100, 196, -329, 0, 0, -205, 69, 62, 48, 255 }, // 0x00004A80
};

Vtx_t _ganontikasonogo_room_0_vertices_00004A90[3] = 
{
	 { -100, 157, -319, 0, 3520, 1, 158, 142, 111, 255 }, // 0x00004A90
	 { -100, 118, -310, 0, 3520, 513, 158, 142, 111, 255 }, // 0x00004AA0
	 { -100, 160, -185, 0, 0, 0, 255, 255, 255, 255 }, // 0x00004AB0
};

Vtx_t _ganontikasonogo_room_0_vertices_00004AC0[8] = 
{
	 { -100, 196, -329, 0, 3593, 0, 158, 142, 111, 255 }, // 0x00004AC0
	 { -100, 157, -319, 0, 3593, 512, 158, 142, 111, 255 }, // 0x00004AD0
	 { -100, 160, -185, 0, 73, 511, 255, 255, 255, 255 }, // 0x00004AE0
	 { -100, 200, -185, 0, 0, 0, 255, 255, 255, 255 }, // 0x00004AF0
	 { -100, 200, -185, 0, 3593, 0, 255, 255, 255, 255 }, // 0x00004B00
	 { -100, 160, -185, 0, 3520, 511, 255, 255, 255, 255 }, // 0x00004B10
	 { -100, 151, -53, 0, 106, 509, 255, 255, 255, 255 }, // 0x00004B20
	 { -100, 190, -44, 0, 0, 0, 255, 255, 255, 255 }, // 0x00004B30
};

Vtx_t _ganontikasonogo_room_0_vertices_00004B40[3] = 
{
	 { -100, 151, -53, 0, 3622, 0, 255, 255, 255, 255 }, // 0x00004B40
	 { -100, 54, 98, 0, -2, 512, 158, 142, 111, 255 }, // 0x00004B50
	 { -100, 107, 98, 0, 0, 0, 158, 142, 111, 255 }, // 0x00004B60
};

Vtx_t _ganontikasonogo_room_0_vertices_00004B70[4] = 
{
	 { -100, 190, -44, 0, 3729, 3, 255, 255, 255, 255 }, // 0x00004B70
	 { -100, 151, -53, 0, 3622, 512, 255, 255, 255, 255 }, // 0x00004B80
	 { -100, 107, 98, 0, 0, 512, 158, 142, 111, 255 }, // 0x00004B90
	 { -100, 150, 97, 0, 2, 0, 158, 142, 111, 255 }, // 0x00004BA0
};

Vtx_t _ganontikasonogo_room_0_vertices_00004BB0[32] = 
{
	 { -110, 150, 119, 0, 518, 2108, 69, 62, 48, 255 }, // 0x00004BB0
	 { -110, 230, 119, 0, 262, 181, 177, 164, 138, 255 }, // 0x00004BC0
	 { -120, 230, 97, 0, 0, 241, 177, 164, 138, 255 }, // 0x00004BD0
	 { -120, 150, 97, 0, 0, 2168, 75, 50, 24, 255 }, // 0x00004BE0
	 { -90, 150, 119, 0, 1018, 1988, 100, 89, 67, 255 }, // 0x00004BF0
	 { -90, 230, 119, 0, 518, 60, 177, 164, 138, 255 }, // 0x00004C00
	 { -110, 150, 119, 0, 518, 2108, 100, 89, 67, 255 }, // 0x00004C10
	 { -80, 150, 97, 0, 1536, 1928, 75, 50, 24, 255 }, // 0x00004C20
	 { -80, 230, 97, 0, 1027, 0, 177, 164, 138, 255 }, // 0x00004C30
	 { -90, 150, 119, 0, 1018, 1988, 69, 62, 48, 255 }, // 0x00004C40
	 { -90, 150, 76, 0, 2054, 1988, 75, 50, 24, 255 }, // 0x00004C50
	 { -90, 230, 76, 0, 2554, 60, 177, 164, 138, 255 }, // 0x00004C60
	 { -80, 230, 97, 0, 2045, 0, 177, 164, 138, 255 }, // 0x00004C70
	 { -110, 150, 76, 0, 2554, 2108, 75, 50, 24, 255 }, // 0x00004C80
	 { -110, 230, 76, 0, 2810, 181, 177, 164, 138, 255 }, // 0x00004C90
	 { -120, 150, 97, 0, 3072, 2168, 75, 50, 24, 255 }, // 0x00004CA0
	 { -120, 230, 97, 0, 3072, 241, 177, 164, 138, 255 }, // 0x00004CB0
	 { -100, 260, 97, 0, 0, -602, 245, 244, 241, 255 }, // 0x00004CC0
	 { -80, 230, 97, 0, 259, 0, 177, 164, 138, 255 }, // 0x00004CD0
	 { -80, 230, 97, 0, 1277, 0, 177, 164, 138, 255 }, // 0x00004CE0
	 { -100, 260, 97, 0, 3072, -602, 245, 244, 241, 255 }, // 0x00004CF0
	 { 90, 230, 76, 0, 2810, 181, 177, 164, 138, 255 }, // 0x00004D00
	 { 80, 230, 97, 0, 3072, 241, 177, 164, 138, 255 }, // 0x00004D10
	 { 100, 260, 97, 0, 3072, -602, 245, 244, 241, 255 }, // 0x00004D20
	 { 110, 230, 76, 0, 2554, 60, 177, 164, 138, 255 }, // 0x00004D30
	 { 120, 230, 97, 0, 1277, 0, 177, 164, 138, 255 }, // 0x00004D40
	 { 110, 230, 119, 0, 518, 60, 177, 164, 138, 255 }, // 0x00004D50
	 { 120, 230, 97, 0, 259, 0, 177, 164, 138, 255 }, // 0x00004D60
	 { 100, 260, 97, 0, 0, -602, 245, 244, 241, 255 }, // 0x00004D70
	 { 90, 230, 119, 0, 262, 181, 177, 164, 138, 255 }, // 0x00004D80
	 { 80, 230, 97, 0, 0, 241, 177, 164, 138, 255 }, // 0x00004D90
	 { 80, 150, 97, 0, 3072, 2168, 75, 50, 24, 255 }, // 0x00004DA0
};

Vtx_t _ganontikasonogo_room_0_vertices_00004DB0[16] = 
{
	 { 80, 150, 97, 0, 3072, 2168, 75, 50, 24, 255 }, // 0x00004DB0
	 { 90, 230, 76, 0, 2810, 181, 177, 164, 138, 255 }, // 0x00004DC0
	 { 90, 150, 76, 0, 2554, 2108, 75, 50, 24, 255 }, // 0x00004DD0
	 { 110, 230, 76, 0, 2554, 60, 177, 164, 138, 255 }, // 0x00004DE0
	 { 110, 150, 76, 0, 2054, 1988, 75, 50, 24, 255 }, // 0x00004DF0
	 { 120, 230, 97, 0, 2045, 0, 177, 164, 138, 255 }, // 0x00004E00
	 { 120, 150, 97, 0, 1536, 1928, 75, 50, 24, 255 }, // 0x00004E10
	 { 120, 230, 97, 0, 1027, 0, 177, 164, 138, 255 }, // 0x00004E20
	 { 110, 230, 119, 0, 518, 60, 177, 164, 138, 255 }, // 0x00004E30
	 { 110, 150, 119, 0, 1018, 1988, 81, 72, 55, 255 }, // 0x00004E40
	 { 110, 150, 119, 0, 1018, 1988, 100, 89, 67, 255 }, // 0x00004E50
	 { 90, 230, 119, 0, 262, 181, 177, 164, 138, 255 }, // 0x00004E60
	 { 90, 150, 119, 0, 518, 2108, 100, 89, 67, 255 }, // 0x00004E70
	 { 90, 150, 119, 0, 518, 2108, 81, 72, 55, 255 }, // 0x00004E80
	 { 80, 230, 97, 0, 0, 241, 177, 164, 138, 255 }, // 0x00004E90
	 { 80, 150, 97, 0, 0, 2168, 75, 50, 24, 255 }, // 0x00004EA0
};

Vtx_t _ganontikasonogo_room_0_vertices_00004EB0[24] = 
{
	 { -95, 190, -44, 0, 1850, 1024, 177, 164, 138, 255 }, // 0x00004EB0
	 { -95, 240, -33, 0, 1845, 0, 255, 255, 255, 255 }, // 0x00004EC0
	 { -95, 198, 115, 0, -293, -7, 177, 164, 138, 255 }, // 0x00004ED0
	 { -95, 150, 97, 0, -198, 1024, 177, 164, 138, 255 }, // 0x00004EE0
	 { -95, 200, -185, 0, 2002, 1024, 177, 164, 138, 255 }, // 0x00004EF0
	 { -95, 250, -185, 0, 2084, 0, 255, 255, 255, 255 }, // 0x00004F00
	 { -95, 240, -33, 0, -122, -3, 255, 255, 255, 255 }, // 0x00004F10
	 { -95, 190, -44, 0, -46, 1024, 177, 164, 138, 255 }, // 0x00004F20
	 { -95, 196, -329, 0, 2048, 1024, 177, 164, 138, 255 }, // 0x00004F30
	 { -95, 246, -333, 0, 2113, 0, 177, 164, 138, 255 }, // 0x00004F40
	 { -95, 250, -185, 0, 1, -2, 255, 255, 255, 255 }, // 0x00004F50
	 { -95, 200, -185, 0, 0, 1024, 177, 164, 138, 255 }, // 0x00004F60
	 { 95, 196, -329, 0, 2048, 1024, 177, 164, 138, 255 }, // 0x00004F70
	 { 95, 246, -333, 0, 2113, 0, 177, 164, 138, 255 }, // 0x00004F80
	 { 95, 250, -185, 0, 1, -2, 255, 255, 255, 255 }, // 0x00004F90
	 { 95, 200, -185, 0, 0, 1024, 177, 164, 138, 255 }, // 0x00004FA0
	 { 95, 200, -185, 0, 2002, 1024, 177, 164, 138, 255 }, // 0x00004FB0
	 { 95, 250, -185, 0, 2084, 0, 255, 255, 255, 255 }, // 0x00004FC0
	 { 95, 240, -33, 0, -122, -3, 255, 255, 255, 255 }, // 0x00004FD0
	 { 95, 190, -44, 0, -46, 1024, 177, 164, 138, 255 }, // 0x00004FE0
	 { 95, 190, -44, 0, 1850, 1024, 177, 164, 138, 255 }, // 0x00004FF0
	 { 95, 240, -33, 0, 1845, 0, 255, 255, 255, 255 }, // 0x00005000
	 { 95, 198, 115, 0, -293, -7, 177, 164, 138, 255 }, // 0x00005010
	 { 95, 150, 97, 0, -198, 1024, 177, 164, 138, 255 }, // 0x00005020
};

Vtx_t _ganontikasonogo_room_0_vertices_00005030[8] = 
{
	 { -120, 54, -333, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005030
	 { 120, 54, -333, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005040
	 { -120, 260, -333, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005050
	 { 120, 260, -333, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005060
	 { -120, 54, 119, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005070
	 { 120, 54, 119, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005080
	 { -120, 260, 119, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005090
	 { 120, 260, 119, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050A0
};

Gfx _ganontikasonogo_room_0_dlist_000050B0[] =
{
	gsDPPipeSync(), // 0x000050B0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000050B8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00005030, 8, 0), // 0x000050C0
	gsSPCullDisplayList(0, 7), // 0x000050C8
	gsDPPipeSync(), // 0x000050D0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000050D8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000050E0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000050E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x000050F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000050F8
	gsDPLoadSync(), // 0x00005100
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005108
	gsDPPipeSync(), // 0x00005110
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005118
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005120
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005128
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005130
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005138
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005140
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005148
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004810, 9, 0), // 0x00005150
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005158
	gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0), // 0x00005160
	gsSP2Triangles(4, 6, 7, 0, 4, 7, 8, 0), // 0x00005168
	gsDPPipeSync(), // 0x00005170
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00005178
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00005180
	gsDPLoadSync(), // 0x00005188
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00005190
	gsDPPipeSync(), // 0x00005198
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x000051A0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x000051A8
	gsSPVertex(_ganontikasonogo_room_0_vertices_000048A0, 4, 0), // 0x000051B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000051B8
	gsDPPipeSync(), // 0x000051C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x000051C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000051D0
	gsDPLoadSync(), // 0x000051D8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000051E0
	gsDPPipeSync(), // 0x000051E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000051F0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000051F8
	gsSPVertex(_ganontikasonogo_room_0_vertices_000048E0, 3, 0), // 0x00005200
	gsSP1Triangle(0, 1, 2, 0), // 0x00005208
	gsDPPipeSync(), // 0x00005210
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000D2D8), // 0x00005218
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005220
	gsDPLoadSync(), // 0x00005228
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005230
	gsDPPipeSync(), // 0x00005238
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005240
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005248
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004910, 4, 0), // 0x00005250
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005258
	gsDPPipeSync(), // 0x00005260
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00005268
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00005270
	gsDPLoadSync(), // 0x00005278
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00005280
	gsDPPipeSync(), // 0x00005288
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00005290
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00005298
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004950, 4, 0), // 0x000052A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000052A8
	gsDPPipeSync(), // 0x000052B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000D2D8), // 0x000052B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000052C0
	gsDPLoadSync(), // 0x000052C8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000052D0
	gsDPPipeSync(), // 0x000052D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000052E0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000052E8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004990, 4, 0), // 0x000052F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000052F8
	gsDPPipeSync(), // 0x00005300
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00005308
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00005310
	gsDPLoadSync(), // 0x00005318
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00005320
	gsDPPipeSync(), // 0x00005328
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00005330
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00005338
	gsSPVertex(_ganontikasonogo_room_0_vertices_000049D0, 4, 0), // 0x00005340
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005348
	gsDPPipeSync(), // 0x00005350
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00005358
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005360
	gsDPLoadSync(), // 0x00005368
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005370
	gsDPPipeSync(), // 0x00005378
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005380
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005388
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004A10, 3, 0), // 0x00005390
	gsSP1Triangle(0, 1, 2, 0), // 0x00005398
	gsDPPipeSync(), // 0x000053A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000D2D8), // 0x000053A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000053B0
	gsDPLoadSync(), // 0x000053B8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000053C0
	gsDPPipeSync(), // 0x000053C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000053D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000053D8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004A40, 5, 0), // 0x000053E0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000053E8
	gsSP1Triangle(1, 4, 3, 0), // 0x000053F0
	gsDPPipeSync(), // 0x000053F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00005400
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005408
	gsDPLoadSync(), // 0x00005410
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005418
	gsDPPipeSync(), // 0x00005420
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005428
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005430
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004A90, 3, 0), // 0x00005438
	gsSP1Triangle(0, 1, 2, 0), // 0x00005440
	gsDPPipeSync(), // 0x00005448
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00005450
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00005458
	gsDPLoadSync(), // 0x00005460
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00005468
	gsDPPipeSync(), // 0x00005470
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00005478
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00005480
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004AC0, 8, 0), // 0x00005488
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005490
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005498
	gsDPPipeSync(), // 0x000054A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x000054A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000054B0
	gsDPLoadSync(), // 0x000054B8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000054C0
	gsDPPipeSync(), // 0x000054C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000054D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000054D8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004B40, 3, 0), // 0x000054E0
	gsSP1Triangle(0, 1, 2, 0), // 0x000054E8
	gsDPPipeSync(), // 0x000054F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x000054F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00005500
	gsDPLoadSync(), // 0x00005508
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00005510
	gsDPPipeSync(), // 0x00005518
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00005520
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00005528
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004B70, 4, 0), // 0x00005530
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005538
	gsDPPipeSync(), // 0x00005540
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000FAD8), // 0x00005548
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005550
	gsDPLoadSync(), // 0x00005558
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00005560
	gsDPPipeSync(), // 0x00005568
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005570
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005578
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004BB0, 32, 0), // 0x00005580
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005588
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 6, 0), // 0x00005590
	gsSP2Triangles(7, 8, 5, 0, 7, 5, 9, 0), // 0x00005598
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 7, 0), // 0x000055A0
	gsSP2Triangles(13, 14, 11, 0, 13, 11, 10, 0), // 0x000055A8
	gsSP2Triangles(15, 16, 14, 0, 15, 14, 13, 0), // 0x000055B0
	gsSP2Triangles(2, 1, 17, 0, 1, 5, 17, 0), // 0x000055B8
	gsSP2Triangles(5, 18, 17, 0, 19, 11, 20, 0), // 0x000055C0
	gsSP2Triangles(11, 14, 20, 0, 14, 16, 20, 0), // 0x000055C8
	gsSP2Triangles(21, 22, 23, 0, 24, 21, 23, 0), // 0x000055D0
	gsSP2Triangles(25, 24, 23, 0, 26, 27, 28, 0), // 0x000055D8
	gsSP2Triangles(29, 26, 28, 0, 30, 29, 28, 0), // 0x000055E0
	gsSP1Triangle(31, 22, 21, 0), // 0x000055E8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004DB0, 16, 0), // 0x000055F0
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x000055F8
	gsSP2Triangles(2, 3, 4, 0, 4, 3, 5, 0), // 0x00005600
	gsSP2Triangles(4, 5, 6, 0, 6, 7, 8, 0), // 0x00005608
	gsSP2Triangles(6, 8, 9, 0, 10, 8, 11, 0), // 0x00005610
	gsSP2Triangles(10, 11, 12, 0, 13, 11, 14, 0), // 0x00005618
	gsSP1Triangle(13, 14, 15, 0), // 0x00005620
	gsDPPipeSync(), // 0x00005628
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000092D8), // 0x00005630
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00005638
	gsDPLoadSync(), // 0x00005640
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005648
	gsDPPipeSync(), // 0x00005650
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00005658
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005660
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005668
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00005670
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00005678
	gsSPVertex(_ganontikasonogo_room_0_vertices_00004EB0, 24, 0), // 0x00005680
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005688
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005690
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00005698
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000056A0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000056A8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000056B0
	gsSPEndDisplayList(), // 0x000056B8
};

Vtx_t _ganontikasonogo_room_0_vertices_000056C0[16] = 
{
	 { 511, 196, -935, 0, 13, 1024, 158, 142, 111, 255 }, // 0x000056C0
	 { 746, 226, -935, 0, 4787, 1024, 255, 255, 255, 255 }, // 0x000056D0
	 { 746, 276, -935, 0, 4787, 0, 255, 255, 255, 255 }, // 0x000056E0
	 { 506, 245, -935, 0, 13, 0, 115, 102, 78, 255 }, // 0x000056F0
	 { 979, 226, -935, 0, 9562, 1024, 255, 255, 255, 255 }, // 0x00005700
	 { 1212, 196, -935, 0, 14336, 1024, 158, 142, 111, 255 }, // 0x00005710
	 { 1212, 246, -935, 0, 14336, 0, 189, 178, 157, 255 }, // 0x00005720
	 { 979, 276, -935, 0, 9562, 0, 255, 255, 255, 255 }, // 0x00005730
	 { 511, 196, -745, 0, 13, 1024, 158, 142, 111, 255 }, // 0x00005740
	 { 746, 226, -745, 0, 4787, 1024, 255, 255, 255, 255 }, // 0x00005750
	 { 746, 276, -745, 0, 4787, 0, 255, 255, 255, 255 }, // 0x00005760
	 { 506, 245, -745, 0, 13, 0, 115, 102, 78, 255 }, // 0x00005770
	 { 979, 226, -745, 0, 9562, 1024, 255, 255, 255, 255 }, // 0x00005780
	 { 1212, 196, -745, 0, 14336, 1024, 158, 142, 111, 255 }, // 0x00005790
	 { 1212, 246, -745, 0, 14336, 0, 115, 102, 78, 255 }, // 0x000057A0
	 { 979, 276, -745, 0, 9562, 0, 255, 255, 255, 255 }, // 0x000057B0
};

Vtx_t _ganontikasonogo_room_0_vertices_000057C0[14] = 
{
	 { 1212, -4, -740, 0, 5968, 768, 134, 119, 89, 255 }, // 0x000057C0
	 { 1119, 96, -940, 0, 5172, 0, 134, 119, 89, 255 }, // 0x000057D0
	 { 1212, -4, -940, 0, 5968, 768, 134, 119, 89, 255 }, // 0x000057E0
	 { 1212, -4, -740, 0, 0, 768, 134, 119, 89, 255 }, // 0x000057F0
	 { 1119, 96, -740, 0, 0, 0, 134, 119, 89, 255 }, // 0x00005800
	 { 1119, 96, -940, 0, 2048, 0, 134, 119, 89, 255 }, // 0x00005810
	 { 979, 166, -740, 0, 0, -170, 134, 119, 89, 255 }, // 0x00005820
	 { 746, 166, -740, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00005830
	 { 746, 166, -940, 0, 2048, 1024, 134, 119, 89, 255 }, // 0x00005840
	 { 979, 166, -940, 0, 2048, -170, 134, 119, 89, 255 }, // 0x00005850
	 { 606, 96, -740, 0, 0, 0, 134, 119, 89, 255 }, // 0x00005860
	 { 513, -4, -740, 0, 0, 768, 134, 119, 89, 255 }, // 0x00005870
	 { 513, -4, -940, 0, 2048, 768, 134, 119, 89, 255 }, // 0x00005880
	 { 606, 96, -940, 0, 2048, 0, 134, 119, 89, 255 }, // 0x00005890
};

Vtx_t _ganontikasonogo_room_0_vertices_000058A0[8] = 
{
	 { 746, 166, -740, 0, 1989, 256, 255, 255, 255, 255 }, // 0x000058A0
	 { 979, 166, -740, 0, 3979, 256, 255, 255, 255, 255 }, // 0x000058B0
	 { 979, 226, -740, 0, 3979, 0, 255, 255, 255, 255 }, // 0x000058C0
	 { 746, 226, -740, 0, 1989, 0, 255, 255, 255, 255 }, // 0x000058D0
	 { 979, 166, -940, 0, 3979, 256, 255, 255, 255, 255 }, // 0x000058E0
	 { 746, 166, -940, 0, 1989, 256, 255, 255, 255, 255 }, // 0x000058F0
	 { 746, 226, -940, 0, 1989, 0, 255, 255, 255, 255 }, // 0x00005900
	 { 979, 226, -940, 0, 3979, 0, 255, 255, 255, 255 }, // 0x00005910
};

Vtx_t _ganontikasonogo_room_0_vertices_00005920[8] = 
{
	 { 511, 196, -940, 0, 2048, 3066, 158, 142, 111, 255 }, // 0x00005920
	 { 511, 196, -740, 0, 0, 3066, 158, 142, 111, 255 }, // 0x00005930
	 { 746, 226, -740, 0, 0, 678, 255, 255, 255, 255 }, // 0x00005940
	 { 746, 226, -940, 0, 2048, 678, 255, 255, 255, 255 }, // 0x00005950
	 { 979, 226, -740, 0, 0, -1709, 255, 255, 255, 255 }, // 0x00005960
	 { 1212, 196, -740, 0, 0, -4096, 158, 142, 111, 255 }, // 0x00005970
	 { 1212, 196, -940, 0, 2048, -4096, 158, 142, 111, 255 }, // 0x00005980
	 { 979, 226, -940, 0, 2048, -1709, 255, 255, 255, 255 }, // 0x00005990
};

Vtx_t _ganontikasonogo_room_0_vertices_000059A0[3] = 
{
	 { 513, -4, -940, 0, 0, 768, 134, 119, 89, 255 }, // 0x000059A0
	 { 513, 96, -940, 0, 0, 0, 69, 62, 48, 255 }, // 0x000059B0
	 { 606, 96, -940, 0, 796, 0, 134, 119, 89, 255 }, // 0x000059C0
};

Vtx_t _ganontikasonogo_room_0_vertices_000059D0[9] = 
{
	 { 513, 96, -940, 0, 0, 512, 69, 62, 48, 255 }, // 0x000059D0
	 { 511, 196, -940, 0, 0, 0, 158, 142, 111, 255 }, // 0x000059E0
	 { 606, 96, -940, 0, 796, 512, 134, 119, 89, 255 }, // 0x000059F0
	 { 746, 166, -940, 0, 1989, 256, 255, 255, 255, 255 }, // 0x00005A00
	 { 746, 226, -940, 0, 1989, 0, 255, 255, 255, 255 }, // 0x00005A10
	 { 979, 166, -940, 0, 3979, 256, 255, 255, 255, 255 }, // 0x00005A20
	 { 979, 226, -940, 0, 3979, 0, 255, 255, 255, 255 }, // 0x00005A30
	 { 1212, 196, -940, 0, 5968, 0, 158, 142, 111, 255 }, // 0x00005A40
	 { 1119, 96, -940, 0, 5172, 512, 134, 119, 89, 255 }, // 0x00005A50
};

Vtx_t _ganontikasonogo_room_0_vertices_00005A60[3] = 
{
	 { 1212, -4, -940, 0, 5968, 768, 134, 119, 89, 255 }, // 0x00005A60
	 { 1119, 96, -940, 0, 5172, 0, 134, 119, 89, 255 }, // 0x00005A70
	 { 1212, 116, -940, 0, 5968, 0, 134, 119, 89, 255 }, // 0x00005A80
};

Vtx_t _ganontikasonogo_room_0_vertices_00005A90[3] = 
{
	 { 1119, 96, -940, 0, 5172, 512, 134, 119, 89, 255 }, // 0x00005A90
	 { 1212, 196, -940, 0, 5968, 0, 158, 142, 111, 255 }, // 0x00005AA0
	 { 1212, 116, -940, 0, 5968, 512, 134, 119, 89, 255 }, // 0x00005AB0
};

Vtx_t _ganontikasonogo_room_0_vertices_00005AC0[3] = 
{
	 { 1212, -4, -740, 0, 5968, 768, 134, 119, 89, 255 }, // 0x00005AC0
	 { 1212, 96, -740, 0, 5968, 0, 134, 119, 89, 255 }, // 0x00005AD0
	 { 1119, 96, -740, 0, 5172, 0, 134, 119, 89, 255 }, // 0x00005AE0
};

Vtx_t _ganontikasonogo_room_0_vertices_00005AF0[5] = 
{
	 { 1212, 96, -740, 0, 5968, 512, 134, 119, 89, 255 }, // 0x00005AF0
	 { 1212, 196, -740, 0, 5968, 0, 158, 142, 111, 255 }, // 0x00005B00
	 { 1119, 96, -740, 0, 5172, 512, 134, 119, 89, 255 }, // 0x00005B10
	 { 979, 166, -740, 0, 3979, 256, 255, 255, 255, 255 }, // 0x00005B20
	 { 979, 226, -740, 0, 3979, 0, 255, 255, 255, 255 }, // 0x00005B30
};

Vtx_t _ganontikasonogo_room_0_vertices_00005B40[3] = 
{
	 { 513, 96, -740, 0, 0, 0, 69, 62, 48, 255 }, // 0x00005B40
	 { 513, -4, -740, 0, 0, 768, 134, 119, 89, 255 }, // 0x00005B50
	 { 606, 96, -740, 0, 796, 0, 134, 119, 89, 255 }, // 0x00005B60
};

Vtx_t _ganontikasonogo_room_0_vertices_00005B70[5] = 
{
	 { 511, 196, -740, 0, 0, 0, 158, 142, 111, 255 }, // 0x00005B70
	 { 513, 96, -740, 0, 0, 512, 69, 62, 48, 255 }, // 0x00005B80
	 { 606, 96, -740, 0, 796, 512, 134, 119, 89, 255 }, // 0x00005B90
	 { 746, 166, -740, 0, 1989, 256, 255, 255, 255, 255 }, // 0x00005BA0
	 { 746, 226, -740, 0, 1989, 0, 255, 255, 255, 255 }, // 0x00005BB0
};

Vtx_t _ganontikasonogo_room_0_vertices_00005BC0[8] = 
{
	 { 746, 166, -740, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00005BC0
	 { 606, 96, -740, 0, 0, 1740, 134, 119, 89, 255 }, // 0x00005BD0
	 { 606, 96, -940, 0, 2048, 1740, 134, 119, 89, 255 }, // 0x00005BE0
	 { 746, 166, -940, 0, 2048, 1024, 134, 119, 89, 255 }, // 0x00005BF0
	 { 1119, 96, -740, 0, 0, -886, 134, 119, 89, 255 }, // 0x00005C00
	 { 979, 166, -740, 0, 0, -170, 134, 119, 89, 255 }, // 0x00005C10
	 { 979, 166, -940, 0, 2048, -170, 134, 119, 89, 255 }, // 0x00005C20
	 { 1119, 96, -940, 0, 2048, -886, 134, 119, 89, 255 }, // 0x00005C30
};

Vtx_t _ganontikasonogo_room_0_vertices_00005C40[4] = 
{
	 { 746, 226, -740, 0, 0, 678, 255, 255, 255, 255 }, // 0x00005C40
	 { 979, 226, -740, 0, 0, -1709, 255, 255, 255, 255 }, // 0x00005C50
	 { 979, 226, -940, 0, 2048, -1709, 255, 255, 255, 255 }, // 0x00005C60
	 { 746, 226, -940, 0, 2048, 678, 255, 255, 255, 255 }, // 0x00005C70
};

Vtx_t _ganontikasonogo_room_0_vertices_00005C80[8] = 
{
	 { 506, -4, -940, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005C80
	 { 1212, -4, -940, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005C90
	 { 506, 276, -940, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005CA0
	 { 1212, 276, -940, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005CB0
	 { 506, -4, -740, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005CC0
	 { 1212, -4, -740, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005CD0
	 { 506, 276, -740, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005CE0
	 { 1212, 276, -740, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005CF0
};

Gfx _ganontikasonogo_room_0_dlist_00005D00[] =
{
	gsDPPipeSync(), // 0x00005D00
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005D08
	gsSPVertex(_ganontikasonogo_room_0_vertices_00005C80, 8, 0), // 0x00005D10
	gsSPCullDisplayList(0, 7), // 0x00005D18
	gsDPPipeSync(), // 0x00005D20
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005D28
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005D30
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005D38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000092D8), // 0x00005D40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00005D48
	gsDPLoadSync(), // 0x00005D50
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005D58
	gsDPPipeSync(), // 0x00005D60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00005D68
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005D70
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005D78
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00005D80
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00005D88
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x00005D90
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005D98
	gsSPVertex(_ganontikasonogo_room_0_vertices_000056C0, 16, 0), // 0x00005DA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005DA8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005DB0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00005DB8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00005DC0
	gsSP2Triangles(12, 15, 10, 0, 12, 10, 9, 0), // 0x00005DC8
	gsSP2Triangles(4, 7, 2, 0, 4, 2, 1, 0), // 0x00005DD0
	gsDPPipeSync(), // 0x00005DD8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00005DE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005DE8
	gsDPLoadSync(), // 0x00005DF0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005DF8
	gsDPPipeSync(), // 0x00005E00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005E08
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005E10
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005E18
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005E20
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00005E28
	gsSPVertex(_ganontikasonogo_room_0_vertices_000057C0, 14, 0), // 0x00005E30
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00005E38
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00005E40
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00005E48
	gsDPPipeSync(), // 0x00005E50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00005E58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00005E60
	gsDPLoadSync(), // 0x00005E68
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00005E70
	gsDPPipeSync(), // 0x00005E78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00005E80
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00005E88
	gsSPVertex(_ganontikasonogo_room_0_vertices_000058A0, 8, 0), // 0x00005E90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005E98
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005EA0
	gsDPPipeSync(), // 0x00005EA8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000D2D8), // 0x00005EB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005EB8
	gsDPLoadSync(), // 0x00005EC0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005EC8
	gsDPPipeSync(), // 0x00005ED0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005ED8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005EE0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00005920, 8, 0), // 0x00005EE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005EF0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005EF8
	gsDPPipeSync(), // 0x00005F00
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00005F08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005F10
	gsDPLoadSync(), // 0x00005F18
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005F20
	gsDPPipeSync(), // 0x00005F28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005F30
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005F38
	gsSPVertex(_ganontikasonogo_room_0_vertices_000059A0, 3, 0), // 0x00005F40
	gsSP1Triangle(0, 1, 2, 0), // 0x00005F48
	gsDPPipeSync(), // 0x00005F50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00005F58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00005F60
	gsDPLoadSync(), // 0x00005F68
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00005F70
	gsDPPipeSync(), // 0x00005F78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00005F80
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00005F88
	gsSPVertex(_ganontikasonogo_room_0_vertices_000059D0, 9, 0), // 0x00005F90
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0), // 0x00005F98
	gsSP2Triangles(3, 1, 4, 0, 5, 6, 7, 0), // 0x00005FA0
	gsSP1Triangle(5, 7, 8, 0), // 0x00005FA8
	gsDPPipeSync(), // 0x00005FB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00005FB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005FC0
	gsDPLoadSync(), // 0x00005FC8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005FD0
	gsDPPipeSync(), // 0x00005FD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005FE0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005FE8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00005A60, 3, 0), // 0x00005FF0
	gsSP1Triangle(0, 1, 2, 0), // 0x00005FF8
	gsDPPipeSync(), // 0x00006000
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00006008
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00006010
	gsDPLoadSync(), // 0x00006018
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00006020
	gsDPPipeSync(), // 0x00006028
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00006030
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00006038
	gsSPVertex(_ganontikasonogo_room_0_vertices_00005A90, 3, 0), // 0x00006040
	gsSP1Triangle(0, 1, 2, 0), // 0x00006048
	gsDPPipeSync(), // 0x00006050
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00006058
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006060
	gsDPLoadSync(), // 0x00006068
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00006070
	gsDPPipeSync(), // 0x00006078
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006080
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006088
	gsSPVertex(_ganontikasonogo_room_0_vertices_00005AC0, 3, 0), // 0x00006090
	gsSP1Triangle(0, 1, 2, 0), // 0x00006098
	gsDPPipeSync(), // 0x000060A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x000060A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x000060B0
	gsDPLoadSync(), // 0x000060B8
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x000060C0
	gsDPPipeSync(), // 0x000060C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x000060D0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x000060D8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00005AF0, 5, 0), // 0x000060E0
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0), // 0x000060E8
	gsSP1Triangle(3, 1, 4, 0), // 0x000060F0
	gsDPPipeSync(), // 0x000060F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00006100
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006108
	gsDPLoadSync(), // 0x00006110
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00006118
	gsDPPipeSync(), // 0x00006120
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006128
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006130
	gsSPVertex(_ganontikasonogo_room_0_vertices_00005B40, 3, 0), // 0x00006138
	gsSP1Triangle(0, 1, 2, 0), // 0x00006140
	gsDPPipeSync(), // 0x00006148
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00006150
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00006158
	gsDPLoadSync(), // 0x00006160
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00006168
	gsDPPipeSync(), // 0x00006170
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00006178
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00006180
	gsSPVertex(_ganontikasonogo_room_0_vertices_00005B70, 5, 0), // 0x00006188
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006190
	gsSP1Triangle(0, 3, 4, 0), // 0x00006198
	gsDPPipeSync(), // 0x000061A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x000061A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000061B0
	gsDPLoadSync(), // 0x000061B8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000061C0
	gsDPPipeSync(), // 0x000061C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000061D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000061D8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00005BC0, 8, 0), // 0x000061E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000061E8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000061F0
	gsDPPipeSync(), // 0x000061F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000D2D8), // 0x00006200
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006208
	gsDPLoadSync(), // 0x00006210
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00006218
	gsDPPipeSync(), // 0x00006220
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006228
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006230
	gsSPVertex(_ganontikasonogo_room_0_vertices_00005C40, 4, 0), // 0x00006238
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006240
	gsSPEndDisplayList(), // 0x00006248
};

Vtx_t _ganontikasonogo_room_0_vertices_00006250[4] = 
{
	 { 1212, 196, -750, 0, 1638, 1024, 147, 131, 97, 255 }, // 0x00006250
	 { 1412, 196, -750, 0, 1638, -1024, 5, 5, 5, 255 }, // 0x00006260
	 { 1412, 196, -930, 0, 410, -1024, 5, 5, 5, 255 }, // 0x00006270
	 { 1212, 196, -930, 0, 410, 1024, 147, 131, 97, 255 }, // 0x00006280
};

Vtx_t _ganontikasonogo_room_0_vertices_00006290[16] = 
{
	 { 1212, 396, -790, 0, 2560, 0, 81, 72, 55, 255 }, // 0x00006290
	 { 1412, 396, -790, 0, 0, 0, 5, 5, 5, 255 }, // 0x000062A0
	 { 1412, 356, -750, 0, 0, 512, 5, 5, 5, 255 }, // 0x000062B0
	 { 1212, 356, -750, 0, 2560, 512, 81, 72, 55, 255 }, // 0x000062C0
	 { 1412, 196, -750, 0, 0, 1024, 5, 5, 5, 255 }, // 0x000062D0
	 { 1212, 196, -750, 0, 2560, 1024, 147, 131, 97, 255 }, // 0x000062E0
	 { 1212, 396, -890, 0, 512, 0, 81, 72, 55, 255 }, // 0x000062F0
	 { 1412, 396, -890, 0, 512, 1024, 5, 5, 5, 255 }, // 0x00006300
	 { 1412, 396, -790, 0, 2048, 1024, 5, 5, 5, 255 }, // 0x00006310
	 { 1212, 396, -790, 0, 2048, 0, 81, 72, 55, 255 }, // 0x00006320
	 { 1212, 196, -930, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00006330
	 { 1412, 196, -930, 0, 2560, 1024, 5, 5, 5, 255 }, // 0x00006340
	 { 1412, 356, -930, 0, 2560, 512, 5, 5, 5, 255 }, // 0x00006350
	 { 1212, 356, -930, 0, 0, 512, 81, 72, 55, 255 }, // 0x00006360
	 { 1412, 396, -890, 0, 2560, 0, 5, 5, 5, 255 }, // 0x00006370
	 { 1212, 396, -890, 0, 0, 0, 81, 72, 55, 255 }, // 0x00006380
};

Vtx_t _ganontikasonogo_room_0_vertices_00006390[12] = 
{
	 { 311, 196, -900, 0, 0, 2048, 5, 5, 5, 255 }, // 0x00006390
	 { 511, 196, -900, 0, 1280, 2048, 147, 131, 97, 255 }, // 0x000063A0
	 { 493, 356, -900, 0, 1163, 0, 100, 89, 67, 255 }, // 0x000063B0
	 { 311, 356, -900, 0, 0, 0, 5, 5, 5, 255 }, // 0x000063C0
	 { 311, 356, -900, 0, 1024, 2560, 5, 5, 5, 255 }, // 0x000063D0
	 { 493, 356, -900, 0, 1024, 234, 100, 89, 67, 255 }, // 0x000063E0
	 { 493, 356, -780, 0, 0, 234, 100, 89, 67, 255 }, // 0x000063F0
	 { 311, 356, -780, 0, 0, 2560, 5, 5, 5, 255 }, // 0x00006400
	 { 311, 356, -780, 0, 0, 0, 5, 5, 5, 255 }, // 0x00006410
	 { 493, 356, -780, 0, 1163, 0, 100, 89, 67, 255 }, // 0x00006420
	 { 511, 196, -780, 0, 1280, 2048, 147, 131, 97, 255 }, // 0x00006430
	 { 311, 196, -780, 0, 0, 2048, 5, 5, 5, 255 }, // 0x00006440
};

Vtx_t _ganontikasonogo_room_0_vertices_00006450[4] = 
{
	 { 311, 196, -780, 0, 410, -1024, 5, 5, 5, 255 }, // 0x00006450
	 { 511, 196, -780, 0, 410, 1024, 147, 131, 97, 255 }, // 0x00006460
	 { 511, 196, -900, 0, 1638, 1024, 147, 131, 97, 255 }, // 0x00006470
	 { 311, 196, -900, 0, 1638, -1024, 5, 5, 5, 255 }, // 0x00006480
};

Vtx_t _ganontikasonogo_room_0_vertices_00006490[4] = 
{
	 { 311, 196, -780, 0, 0, 2048, 5, 5, 5, 255 }, // 0x00006490
	 { 311, 196, -900, 0, 1024, 2048, 5, 5, 5, 255 }, // 0x000064A0
	 { 311, 356, -900, 0, 1024, 0, 5, 5, 5, 255 }, // 0x000064B0
	 { 311, 356, -780, 0, 0, 0, 5, 5, 5, 255 }, // 0x000064C0
};

Vtx_t _ganontikasonogo_room_0_vertices_000064D0[8] = 
{
	 { 311, 196, -930, 0, 0, 0, 0, 0, 0, 0 }, // 0x000064D0
	 { 1412, 196, -930, 0, 0, 0, 0, 0, 0, 0 }, // 0x000064E0
	 { 311, 396, -930, 0, 0, 0, 0, 0, 0, 0 }, // 0x000064F0
	 { 1412, 396, -930, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006500
	 { 311, 196, -750, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006510
	 { 1412, 196, -750, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006520
	 { 311, 396, -750, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006530
	 { 1412, 396, -750, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006540
};

Gfx _ganontikasonogo_room_0_dlist_00006550[] =
{
	gsDPPipeSync(), // 0x00006550
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006558
	gsSPVertex(_ganontikasonogo_room_0_vertices_000064D0, 8, 0), // 0x00006560
	gsSPCullDisplayList(0, 7), // 0x00006568
	gsDPPipeSync(), // 0x00006570
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006578
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006580
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006588
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000D2D8), // 0x00006590
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006598
	gsDPLoadSync(), // 0x000065A0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000065A8
	gsDPPipeSync(), // 0x000065B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000065B8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000065C0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000065C8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000065D0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000065D8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000065E0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000065E8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00006250, 4, 0), // 0x000065F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000065F8
	gsDPPipeSync(), // 0x00006600
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000132D8), // 0x00006608
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006610
	gsDPLoadSync(), // 0x00006618
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00006620
	gsDPPipeSync(), // 0x00006628
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006630
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006638
	gsSPVertex(_ganontikasonogo_room_0_vertices_00006290, 16, 0), // 0x00006640
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006648
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00006650
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00006658
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00006660
	gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0), // 0x00006668
	gsDPPipeSync(), // 0x00006670
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000B2D8), // 0x00006678
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00006680
	gsDPLoadSync(), // 0x00006688
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00006690
	gsDPPipeSync(), // 0x00006698
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000066A0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000066A8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00006390, 12, 0), // 0x000066B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000066B8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000066C0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000066C8
	gsDPPipeSync(), // 0x000066D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000D2D8), // 0x000066D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000066E0
	gsDPLoadSync(), // 0x000066E8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000066F0
	gsDPPipeSync(), // 0x000066F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006700
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006708
	gsSPVertex(_ganontikasonogo_room_0_vertices_00006450, 4, 0), // 0x00006710
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006718
	gsDPPipeSync(), // 0x00006720
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000B2D8), // 0x00006728
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00006730
	gsDPLoadSync(), // 0x00006738
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00006740
	gsDPPipeSync(), // 0x00006748
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00006750
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006758
	gsSPVertex(_ganontikasonogo_room_0_vertices_00006490, 4, 0), // 0x00006760
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006768
	gsSPEndDisplayList(), // 0x00006770
};

Vtx_t _ganontikasonogo_room_0_vertices_00006778[32] = 
{
	 { -637, -240, -278, 0, -3636, 2893, 169, 154, 126, 255 }, // 0x00006778
	 { -100, -240, -66, 0, -1248, 4898, 198, 188, 168, 255 }, // 0x00006788
	 { -254, -240, -226, 0, -1765, 3815, 115, 102, 78, 255 }, // 0x00006798
	 { -325, -240, 98, 0, -2678, 5351, 134, 119, 89, 255 }, // 0x000067A8
	 { -974, -240, -278, 0, -5363, 2322, 81, 72, 55, 255 }, // 0x000067B8
	 { 254, -240, -226, 0, 839, 4683, 115, 102, 78, 255 }, // 0x000067C8
	 { 100, -240, -66, 0, -224, 5239, 198, 188, 168, 255 }, // 0x000067D8
	 { 325, -240, 98, 0, 648, 6459, 69, 62, 48, 255 }, // 0x000067E8
	 { 100, -240, 98, 0, -503, 6076, 81, 72, 55, 255 }, // 0x000067F8
	 { -100, -240, 98, 0, -1527, 5735, 81, 72, 55, 255 }, // 0x00006808
	 { 614, -240, -586, 0, 3295, 3455, 115, 102, 78, 255 }, // 0x00006818
	 { 638, -240, -255, 0, 2852, 5188, 169, 154, 126, 255 }, // 0x00006828
	 { 974, -240, -277, 0, 4613, 5648, 52, 49, 38, 255 }, // 0x00006838
	 { 614, -240, -586, 0, 3295, 3455, 115, 102, 78, 255 }, // 0x00006848
	 { 816, -240, -548, 0, 4263, 3995, 169, 154, 126, 255 }, // 0x00006858
	 { 614, -240, -840, 0, 3729, 2153, 52, 49, 38, 255 }, // 0x00006868
	 { 638, -240, -255, 0, 2852, 5188, 169, 154, 126, 255 }, // 0x00006878
	 { 1232, -240, -671, 0, 6607, 4073, 100, 89, 67, 255 }, // 0x00006888
	 { 1092, -240, -760, 0, 6042, 3379, 169, 154, 126, 255 }, // 0x00006898
	 { 974, -240, -671, 0, 5285, 3632, 100, 89, 67, 255 }, // 0x000068A8
	 { 974, -240, -840, 0, 5573, 2768, 203, 195, 178, 255 }, // 0x000068B8
	 { 1232, -240, -920, 0, 7031, 2799, 169, 154, 126, 255 }, // 0x000068C8
	 { 1232, -240, -1009, 0, 7183, 2344, 100, 89, 67, 255 }, // 0x000068D8
	 { 1092, -240, -920, 0, 6315, 2560, 169, 154, 126, 255 }, // 0x000068E8
	 { 1232, -240, -760, 0, 6758, 3618, 169, 154, 126, 255 }, // 0x000068F8
	 { 974, -240, -1009, 0, 5861, 1904, 147, 131, 97, 255 }, // 0x00006908
	 { 804, -240, -1113, 0, 5169, 1079, 169, 154, 126, 255 }, // 0x00006918
	 { 614, -240, -1094, 0, 4163, 851, 115, 102, 78, 255 }, // 0x00006928
	 { 614, -240, -1386, 0, 4662, -644, 169, 154, 126, 255 }, // 0x00006938
	 { 254, -240, -1454, 0, 2935, -1605, 115, 102, 78, 255 }, // 0x00006948
	 { 614, -240, -1094, 0, 4163, 851, 115, 102, 78, 255 }, // 0x00006958
	 { 614, -240, -1386, 0, 4662, -644, 169, 154, 126, 255 }, // 0x00006968
};

Vtx_t _ganontikasonogo_room_0_vertices_00006978[27] = 
{
	 { 974, -240, -1403, 0, 6533, -112, 100, 89, 67, 255 }, // 0x00006978
	 { 0, -240, -1735, 0, 2112, -3476, 213, 206, 192, 255 }, // 0x00006988
	 { 614, -240, -1386, 0, 4662, -644, 169, 154, 126, 255 }, // 0x00006998
	 { 0, -240, -1965, 0, 2505, -4655, 100, 89, 67, 255 }, // 0x000069A8
	 { 254, -240, -1454, 0, 2935, -1605, 115, 102, 78, 255 }, // 0x000069B8
	 { -254, -240, -1454, 0, 331, -2473, 115, 102, 78, 255 }, // 0x000069C8
	 { -711, -240, -1284, 0, -2299, -2382, 169, 154, 126, 255 }, // 0x000069D8
	 { -974, -240, -1403, 0, -3443, -3438, 100, 89, 67, 255 }, // 0x000069E8
	 { 638, -240, -255, 0, 2852, 5188, 169, 154, 126, 255 }, // 0x000069F8
	 { 100, -240, -66, 0, -224, 5239, 198, 188, 168, 255 }, // 0x00006A08
	 { 325, -240, 98, 0, 648, 6459, 69, 62, 48, 255 }, // 0x00006A18
	 { 254, -240, -226, 0, 839, 4683, 115, 102, 78, 255 }, // 0x00006A28
	 { 974, -240, -840, 0, 5573, 2768, 203, 195, 178, 255 }, // 0x00006A38
	 { 816, -240, -548, 0, 4263, 3995, 169, 154, 126, 255 }, // 0x00006A48
	 { 974, -240, -671, 0, 5285, 3632, 100, 89, 67, 255 }, // 0x00006A58
	 { 804, -240, -1113, 0, 5169, 1079, 169, 154, 126, 255 }, // 0x00006A68
	 { 614, -240, -840, 0, 3729, 2153, 52, 49, 38, 255 }, // 0x00006A78
	 { 974, -240, -1009, 0, 5861, 1904, 147, 131, 97, 255 }, // 0x00006A88
	 { 974, -240, -1403, 0, 6533, -112, 100, 89, 67, 255 }, // 0x00006A98
	 { 614, -240, -1386, 0, 4662, -644, 169, 154, 126, 255 }, // 0x00006AA8
	 { 974, -240, -278, 0, 4613, 5648, 52, 49, 38, 255 }, // 0x00006AB8
	 { 638, -240, -255, 0, 2852, 5188, 169, 154, 126, 255 }, // 0x00006AC8
	 { -100, -240, -66, 0, -1248, 4898, 198, 188, 168, 255 }, // 0x00006AD8
	 { -100, -240, 98, 0, -1527, 5735, 81, 72, 55, 255 }, // 0x00006AE8
	 { 100, -240, 98, 0, -503, 6076, 81, 72, 55, 255 }, // 0x00006AF8
	 { 1092, -240, -760, 0, 6042, 3379, 169, 154, 126, 255 }, // 0x00006B08
	 { 1092, -240, -920, 0, 6315, 2560, 169, 154, 126, 255 }, // 0x00006B18
};

Vtx_t _ganontikasonogo_room_0_vertices_00006B28[8] = 
{
	 { -487, -240, -2246, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006B28
	 { 1485, -240, -1108, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006B38
	 { -487, -240, -2246, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006B48
	 { 1485, -240, -1108, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006B58
	 { -1461, -240, -559, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006B68
	 { 510, -240, 580, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006B78
	 { -1461, -240, -559, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006B88
	 { 510, -240, 580, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006B98
};

Gfx _ganontikasonogo_room_0_dlist_00006BA8[] =
{
	gsDPPipeSync(), // 0x00006BA8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006BB0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00006B28, 8, 0), // 0x00006BB8
	gsSPCullDisplayList(0, 7), // 0x00006BC0
	gsDPPipeSync(), // 0x00006BC8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006BD0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006BD8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006BE0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000F2D8), // 0x00006BE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006BF0
	gsDPLoadSync(), // 0x00006BF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006C00
	gsDPPipeSync(), // 0x00006C08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006C10
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006C18
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006C20
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006C28
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00006C30
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00006C38
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006C40
	gsSPVertex(_ganontikasonogo_room_0_vertices_00006778, 32, 0), // 0x00006C48
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00006C50
	gsSP2Triangles(0, 4, 3, 0, 2, 1, 5, 0), // 0x00006C58
	gsSP2Triangles(1, 6, 5, 0, 7, 6, 8, 0), // 0x00006C60
	gsSP2Triangles(1, 3, 9, 0, 10, 5, 11, 0), // 0x00006C68
	gsSP2Triangles(7, 12, 11, 0, 13, 14, 15, 0), // 0x00006C70
	gsSP2Triangles(13, 16, 14, 0, 17, 18, 19, 0), // 0x00006C78
	gsSP2Triangles(18, 20, 19, 0, 21, 22, 23, 0), // 0x00006C80
	gsSP2Triangles(17, 24, 18, 0, 25, 23, 22, 0), // 0x00006C88
	gsSP2Triangles(25, 20, 23, 0, 15, 26, 27, 0), // 0x00006C90
	gsSP2Triangles(26, 28, 27, 0, 29, 30, 31, 0), // 0x00006C98
	gsSPVertex(_ganontikasonogo_room_0_vertices_00006978, 27, 0), // 0x00006CA0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00006CA8
	gsSP2Triangles(1, 4, 2, 0, 5, 4, 1, 0), // 0x00006CB0
	gsSP2Triangles(6, 5, 1, 0, 7, 1, 3, 0), // 0x00006CB8
	gsSP2Triangles(7, 6, 1, 0, 8, 9, 10, 0), // 0x00006CC0
	gsSP2Triangles(8, 11, 9, 0, 12, 13, 14, 0), // 0x00006CC8
	gsSP2Triangles(12, 15, 13, 0, 15, 16, 13, 0), // 0x00006CD0
	gsSP2Triangles(12, 17, 15, 0, 17, 18, 15, 0), // 0x00006CD8
	gsSP2Triangles(18, 19, 15, 0, 14, 13, 20, 0), // 0x00006CE0
	gsSP2Triangles(13, 21, 20, 0, 9, 22, 23, 0), // 0x00006CE8
	gsSP2Triangles(9, 23, 24, 0, 12, 25, 26, 0), // 0x00006CF0
	gsSPEndDisplayList(), // 0x00006CF8
};

Vtx_t _ganontikasonogo_room_0_vertices_00006D00[5] = 
{
	 { 571, 330, -1889, 0, 0, 0, 180, 69, 255, 255 }, // 0x00006D00
	 { 597, 300, -1874, 0, 1024, 1024, 239, 178, 255, 255 }, // 0x00006D10
	 { 623, 330, -1859, 0, 2048, 0, 180, 69, 255, 255 }, // 0x00006D20
	 { 571, 270, -1889, 0, 0, 2048, 80, 0, 134, 255 }, // 0x00006D30
	 { 623, 270, -1859, 0, 2048, 2048, 80, 0, 134, 255 }, // 0x00006D40
};

Vtx_t _ganontikasonogo_room_0_vertices_00006D50[8] = 
{
	 { 571, 270, -1889, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D50
	 { 623, 270, -1859, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D60
	 { 571, 330, -1889, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D70
	 { 623, 330, -1859, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D80
	 { 571, 270, -1889, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D90
	 { 623, 270, -1859, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006DA0
	 { 571, 330, -1889, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006DB0
	 { 623, 330, -1859, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006DC0
};

Gfx _ganontikasonogo_room_0_dlist_00006DD0[] =
{
	gsDPPipeSync(), // 0x00006DD0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006DD8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00006D50, 8, 0), // 0x00006DE0
	gsSPCullDisplayList(0, 7), // 0x00006DE8
	gsDPPipeSync(), // 0x00006DF0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006DF8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00006E00
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006E08
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00012AD8), // 0x00006E10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00006E18
	gsDPLoadSync(), // 0x00006E20
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006E28
	gsDPPipeSync(), // 0x00006E30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00006E38
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00006E40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000092B8), // 0x00006E48
	gsDPTileSync(), // 0x00006E50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00006E58
	gsDPLoadSync(), // 0x00006E60
	gsDPLoadTLUTCmd(7, 15), // 0x00006E68
	gsDPPipeSync(), // 0x00006E70
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006E78
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00006E80
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00006E88
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00006E90
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006E98
	gsSPVertex(_ganontikasonogo_room_0_vertices_00006D00, 5, 0), // 0x00006EA0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00006EA8
	gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0), // 0x00006EB0
	gsSPEndDisplayList(), // 0x00006EB8
};

Vtx_t _ganontikasonogo_room_0_vertices_00006EC0[5] = 
{
	 { -623, 330, -1859, 0, 0, 0, 255, 69, 69, 255 }, // 0x00006EC0
	 { -597, 300, -1874, 0, 1024, 1024, 255, 178, 193, 255 }, // 0x00006ED0
	 { -571, 330, -1889, 0, 2048, 0, 255, 69, 69, 255 }, // 0x00006EE0
	 { -571, 270, -1889, 0, 2048, 2048, 161, 0, 0, 255 }, // 0x00006EF0
	 { -623, 270, -1859, 0, 0, 2048, 161, 0, 0, 255 }, // 0x00006F00
};

Vtx_t _ganontikasonogo_room_0_vertices_00006F10[8] = 
{
	 { -571, 270, -1889, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F10
	 { -571, 270, -1889, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F20
	 { -571, 330, -1889, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F30
	 { -571, 330, -1889, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F40
	 { -623, 270, -1859, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F50
	 { -623, 270, -1859, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F60
	 { -623, 330, -1859, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F70
	 { -623, 330, -1859, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F80
};

Gfx _ganontikasonogo_room_0_dlist_00006F90[] =
{
	gsDPPipeSync(), // 0x00006F90
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006F98
	gsSPVertex(_ganontikasonogo_room_0_vertices_00006F10, 8, 0), // 0x00006FA0
	gsSPCullDisplayList(0, 7), // 0x00006FA8
	gsDPPipeSync(), // 0x00006FB0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006FB8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00006FC0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006FC8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000122D8), // 0x00006FD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00006FD8
	gsDPLoadSync(), // 0x00006FE0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006FE8
	gsDPPipeSync(), // 0x00006FF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00006FF8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00007000
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000092B8), // 0x00007008
	gsDPTileSync(), // 0x00007010
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00007018
	gsDPLoadSync(), // 0x00007020
	gsDPLoadTLUTCmd(7, 15), // 0x00007028
	gsDPPipeSync(), // 0x00007030
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007038
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00007040
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007048
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007050
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007058
	gsSPVertex(_ganontikasonogo_room_0_vertices_00006EC0, 5, 0), // 0x00007060
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00007068
	gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0), // 0x00007070
	gsSPEndDisplayList(), // 0x00007078
};

Vtx_t _ganontikasonogo_room_0_vertices_00007080[5] = 
{
	 { 1194, -60, -870, 0, 0, 0, 0, 42, 107, 255 }, // 0x00007080
	 { 1194, -90, -840, 0, 1024, 1024, 151, 234, 255, 255 }, // 0x00007090
	 { 1194, -60, -810, 0, 2048, 0, 0, 42, 107, 255 }, // 0x000070A0
	 { 1194, -120, -810, 0, 2048, 2048, 0, 64, 107, 255 }, // 0x000070B0
	 { 1194, -120, -870, 0, 0, 2048, 0, 64, 107, 255 }, // 0x000070C0
};

Vtx_t _ganontikasonogo_room_0_vertices_000070D0[8] = 
{
	 { 1194, -120, -870, 0, 0, 0, 0, 0, 0, 0 }, // 0x000070D0
	 { 1194, -120, -870, 0, 0, 0, 0, 0, 0, 0 }, // 0x000070E0
	 { 1194, -60, -870, 0, 0, 0, 0, 0, 0, 0 }, // 0x000070F0
	 { 1194, -60, -870, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007100
	 { 1194, -120, -810, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007110
	 { 1194, -120, -810, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007120
	 { 1194, -60, -810, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007130
	 { 1194, -60, -810, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007140
};

Gfx _ganontikasonogo_room_0_dlist_00007150[] =
{
	gsDPPipeSync(), // 0x00007150
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007158
	gsSPVertex(_ganontikasonogo_room_0_vertices_000070D0, 8, 0), // 0x00007160
	gsSPCullDisplayList(0, 7), // 0x00007168
	gsDPPipeSync(), // 0x00007170
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007178
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00007180
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007188
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00011AD8), // 0x00007190
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00007198
	gsDPLoadSync(), // 0x000071A0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000071A8
	gsDPPipeSync(), // 0x000071B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x000071B8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000071C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000092B8), // 0x000071C8
	gsDPTileSync(), // 0x000071D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000071D8
	gsDPLoadSync(), // 0x000071E0
	gsDPLoadTLUTCmd(7, 15), // 0x000071E8
	gsDPPipeSync(), // 0x000071F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000071F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00007200
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007208
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007210
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007218
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007080, 5, 0), // 0x00007220
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00007228
	gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0), // 0x00007230
	gsSPEndDisplayList(), // 0x00007238
};

Vtx_t _ganontikasonogo_room_0_vertices_00007240[5] = 
{
	 { -571, 330, 209, 0, 0, 0, 254, 111, 15, 255 }, // 0x00007240
	 { -597, 300, 194, 0, 1024, 1024, 255, 192, 151, 255 }, // 0x00007250
	 { -623, 330, 179, 0, 2048, 0, 254, 111, 15, 255 }, // 0x00007260
	 { -623, 270, 179, 0, 2048, 2048, 254, 111, 15, 255 }, // 0x00007270
	 { -571, 270, 209, 0, 0, 2048, 254, 111, 15, 255 }, // 0x00007280
};

Vtx_t _ganontikasonogo_room_0_vertices_00007290[8] = 
{
	 { -623, 270, 179, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007290
	 { -571, 270, 209, 0, 0, 0, 0, 0, 0, 0 }, // 0x000072A0
	 { -623, 330, 179, 0, 0, 0, 0, 0, 0, 0 }, // 0x000072B0
	 { -571, 330, 209, 0, 0, 0, 0, 0, 0, 0 }, // 0x000072C0
	 { -623, 270, 179, 0, 0, 0, 0, 0, 0, 0 }, // 0x000072D0
	 { -571, 270, 209, 0, 0, 0, 0, 0, 0, 0 }, // 0x000072E0
	 { -623, 330, 179, 0, 0, 0, 0, 0, 0, 0 }, // 0x000072F0
	 { -571, 330, 209, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007300
};

Gfx _ganontikasonogo_room_0_dlist_00007310[] =
{
	gsDPPipeSync(), // 0x00007310
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007318
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007290, 8, 0), // 0x00007320
	gsSPCullDisplayList(0, 7), // 0x00007328
	gsDPPipeSync(), // 0x00007330
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007338
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00007340
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007348
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000112D8), // 0x00007350
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00007358
	gsDPLoadSync(), // 0x00007360
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00007368
	gsDPPipeSync(), // 0x00007370
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00007378
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00007380
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000092B8), // 0x00007388
	gsDPTileSync(), // 0x00007390
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00007398
	gsDPLoadSync(), // 0x000073A0
	gsDPLoadTLUTCmd(7, 15), // 0x000073A8
	gsDPPipeSync(), // 0x000073B0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000073B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000073C0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000073C8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000073D0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000073D8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007240, 5, 0), // 0x000073E0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000073E8
	gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0), // 0x000073F0
	gsSPEndDisplayList(), // 0x000073F8
};

Vtx_t _ganontikasonogo_room_0_vertices_00007400[5] = 
{
	 { 623, 330, 179, 0, 0, 0, 53, 134, 0, 255 }, // 0x00007400
	 { 597, 300, 194, 0, 1024, 1024, 216, 255, 178, 255 }, // 0x00007410
	 { 571, 330, 209, 0, 2048, 0, 53, 134, 0, 255 }, // 0x00007420
	 { 571, 270, 209, 0, 2048, 2048, 21, 107, 0, 255 }, // 0x00007430
	 { 623, 270, 179, 0, 0, 2048, 21, 107, 0, 255 }, // 0x00007440
};

Vtx_t _ganontikasonogo_room_0_vertices_00007450[8] = 
{
	 { 623, 270, 179, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007450
	 { 623, 270, 179, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007460
	 { 623, 330, 179, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007470
	 { 623, 330, 179, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007480
	 { 571, 270, 209, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007490
	 { 571, 270, 209, 0, 0, 0, 0, 0, 0, 0 }, // 0x000074A0
	 { 571, 330, 209, 0, 0, 0, 0, 0, 0, 0 }, // 0x000074B0
	 { 571, 330, 209, 0, 0, 0, 0, 0, 0, 0 }, // 0x000074C0
};

Gfx _ganontikasonogo_room_0_dlist_000074D0[] =
{
	gsDPPipeSync(), // 0x000074D0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000074D8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007450, 8, 0), // 0x000074E0
	gsSPCullDisplayList(0, 7), // 0x000074E8
	gsDPPipeSync(), // 0x000074F0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000074F8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00007500
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007508
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00010AD8), // 0x00007510
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00007518
	gsDPLoadSync(), // 0x00007520
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00007528
	gsDPPipeSync(), // 0x00007530
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00007538
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00007540
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000092B8), // 0x00007548
	gsDPTileSync(), // 0x00007550
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00007558
	gsDPLoadSync(), // 0x00007560
	gsDPLoadTLUTCmd(7, 15), // 0x00007568
	gsDPPipeSync(), // 0x00007570
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007578
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00007580
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007588
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007590
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007598
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007400, 5, 0), // 0x000075A0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000075A8
	gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0), // 0x000075B0
	gsSPEndDisplayList(), // 0x000075B8
};

Vtx_t _ganontikasonogo_room_0_vertices_000075C0[4] = 
{
	 { 1212, -240, -1009, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000075C0
	 { 1212, -37, -1402, 0, 0, -6711, 115, 102, 78, 255 }, // 0x000075D0
	 { 974, -37, -1402, 0, 2048, -6711, 255, 255, 255, 255 }, // 0x000075E0
	 { 974, -240, -1009, 0, 2048, 1024, 147, 131, 97, 255 }, // 0x000075F0
};

Vtx_t _ganontikasonogo_room_0_vertices_00007600[4] = 
{
	 { 974, -37, -1402, 0, 2048, 0, 218, 211, 199, 255 }, // 0x00007600
	 { 974, -117, -1402, 0, 2048, 512, 113, 124, 139, 255 }, // 0x00007610
	 { 974, -240, -1164, 0, -1380, 512, 147, 131, 97, 255 }, // 0x00007620
	 { 974, -240, -1009, 0, -3619, 0, 147, 131, 97, 255 }, // 0x00007630
};

Vtx_t _ganontikasonogo_room_0_vertices_00007640[7] = 
{
	 { 650, 70, -1590, 0, 2048, 0, 115, 102, 78, 255 }, // 0x00007640
	 { 974, -240, -1403, 0, -3319, 784, 69, 62, 48, 255 }, // 0x00007650
	 { 974, -117, -1403, 0, -3319, 0, 113, 124, 139, 255 }, // 0x00007660
	 { 974, -117, -1402, 0, 2048, 0, 113, 124, 139, 255 }, // 0x00007670
	 { 974, -240, -1402, 0, 2048, 784, 69, 62, 48, 255 }, // 0x00007680
	 { 974, -240, -1164, 0, -1380, 0, 147, 131, 97, 255 }, // 0x00007690
	 { 650, -240, -1590, 0, 2048, 1984, 100, 89, 67, 255 }, // 0x000076A0
};

Vtx_t _ganontikasonogo_room_0_vertices_000076B0[4] = 
{
	 { 650, 150, -1590, 0, 4800, 0, 158, 142, 111, 255 }, // 0x000076B0
	 { 650, 70, -1590, 0, 4800, 512, 115, 102, 78, 255 }, // 0x000076C0
	 { 974, -117, -1403, 0, 0, 512, 113, 124, 139, 255 }, // 0x000076D0
	 { 974, -37, -1402, 0, 0, 0, 218, 211, 199, 255 }, // 0x000076E0
};

Vtx_t _ganontikasonogo_room_0_vertices_000076F0[5] = 
{
	 { 1093, -37, -1609, 0, 8381, 4448, 100, 89, 67, 255 }, // 0x000076F0
	 { 974, -37, -1402, 0, 7772, 3392, 198, 188, 168, 255 }, // 0x00007700
	 { 1212, -37, -1540, 0, 8991, 4096, 115, 102, 78, 255 }, // 0x00007710
	 { 1212, -37, -1402, 0, 8991, 3392, 115, 102, 78, 255 }, // 0x00007720
	 { 974, -37, -1402, 0, 7772, 3392, 198, 188, 168, 255 }, // 0x00007730
};

Vtx_t _ganontikasonogo_room_0_vertices_00007740[4] = 
{
	 { 1093, -37, -1609, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00007740
	 { 650, 150, -1590, 0, 2048, -6158, 255, 255, 255, 255 }, // 0x00007750
	 { 974, -37, -1402, 0, 2048, 1024, 218, 211, 199, 255 }, // 0x00007760
	 { 769, 150, -1796, 0, 0, -6158, 115, 102, 78, 255 }, // 0x00007770
};

Vtx_t _ganontikasonogo_room_0_vertices_00007780[8] = 
{
	 { 549, -408, -1417, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007780
	 { 1223, -408, -1028, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007790
	 { 815, 38, -1877, 0, 0, 0, 0, 0, 0, 0 }, // 0x000077A0
	 { 1489, 38, -1488, 0, 0, 0, 0, 0, 0, 0 }, // 0x000077B0
	 { 453, -179, -1250, 0, 0, 0, 0, 0, 0, 0 }, // 0x000077C0
	 { 1127, -179, -861, 0, 0, 0, 0, 0, 0, 0 }, // 0x000077D0
	 { 719, 267, -1711, 0, 0, 0, 0, 0, 0, 0 }, // 0x000077E0
	 { 1393, 267, -1322, 0, 0, 0, 0, 0, 0, 0 }, // 0x000077F0
};

Gfx _ganontikasonogo_room_0_dlist_00007800[] =
{
	gsDPPipeSync(), // 0x00007800
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007808
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007780, 8, 0), // 0x00007810
	gsSPCullDisplayList(0, 7), // 0x00007818
	gsDPPipeSync(), // 0x00007820
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007828
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007830
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007838
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000E2D8), // 0x00007840
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00007848
	gsDPLoadSync(), // 0x00007850
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007858
	gsDPPipeSync(), // 0x00007860
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007868
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007870
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007878
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007880
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007888
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007890
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007898
	gsSPVertex(_ganontikasonogo_room_0_vertices_000075C0, 4, 0), // 0x000078A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000078A8
	gsDPPipeSync(), // 0x000078B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x000078B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x000078C0
	gsDPLoadSync(), // 0x000078C8
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x000078D0
	gsDPPipeSync(), // 0x000078D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x000078E0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x000078E8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007600, 4, 0), // 0x000078F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000078F8
	gsDPPipeSync(), // 0x00007900
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00007908
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00007910
	gsDPLoadSync(), // 0x00007918
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007920
	gsDPPipeSync(), // 0x00007928
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007930
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007938
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007640, 7, 0), // 0x00007940
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00007948
	gsSP1Triangle(0, 6, 1, 0), // 0x00007950
	gsDPPipeSync(), // 0x00007958
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00007960
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00007968
	gsDPLoadSync(), // 0x00007970
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00007978
	gsDPPipeSync(), // 0x00007980
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00007988
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00007990
	gsSPVertex(_ganontikasonogo_room_0_vertices_000076B0, 4, 0), // 0x00007998
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000079A0
	gsDPPipeSync(), // 0x000079A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000F2D8), // 0x000079B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000079B8
	gsDPLoadSync(), // 0x000079C0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000079C8
	gsDPPipeSync(), // 0x000079D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000079D8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000079E0
	gsSPVertex(_ganontikasonogo_room_0_vertices_000076F0, 5, 0), // 0x000079E8
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0), // 0x000079F0
	gsDPPipeSync(), // 0x000079F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000E2D8), // 0x00007A00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00007A08
	gsDPLoadSync(), // 0x00007A10
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007A18
	gsDPPipeSync(), // 0x00007A20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007A28
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007A30
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007740, 4, 0), // 0x00007A38
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0), // 0x00007A40
	gsSPEndDisplayList(), // 0x00007A48
};

Vtx_t _ganontikasonogo_room_0_vertices_00007A50[4] = 
{
	 { -974, -117, -1403, 0, -3319, 0, 113, 124, 139, 255 }, // 0x00007A50
	 { -974, -240, -1403, 0, -3319, 784, 69, 62, 48, 255 }, // 0x00007A60
	 { -650, 70, -1590, 0, 2048, 0, 115, 102, 78, 255 }, // 0x00007A70
	 { -650, -240, -1590, 0, 2048, 1984, 100, 89, 67, 255 }, // 0x00007A80
};

Vtx_t _ganontikasonogo_room_0_vertices_00007A90[4] = 
{
	 { -974, -37, -1402, 0, 0, 0, 218, 211, 199, 255 }, // 0x00007A90
	 { -974, -117, -1403, 0, 0, 512, 113, 124, 139, 255 }, // 0x00007AA0
	 { -650, 70, -1590, 0, 4800, 512, 115, 102, 78, 255 }, // 0x00007AB0
	 { -650, 150, -1590, 0, 4800, 0, 158, 142, 111, 255 }, // 0x00007AC0
};

Vtx_t _ganontikasonogo_room_0_vertices_00007AD0[3] = 
{
	 { -1212, -37, -1540, 0, 8991, 4096, 115, 102, 78, 255 }, // 0x00007AD0
	 { -974, -37, -1402, 0, 7772, 3392, 198, 188, 168, 255 }, // 0x00007AE0
	 { -1093, -37, -1609, 0, 8381, 4448, 100, 89, 67, 255 }, // 0x00007AF0
};

Vtx_t _ganontikasonogo_room_0_vertices_00007B00[4] = 
{
	 { -974, -37, -1402, 0, 2048, 1024, 218, 211, 199, 255 }, // 0x00007B00
	 { -650, 150, -1590, 0, 2048, -6158, 255, 255, 255, 255 }, // 0x00007B10
	 { -1093, -37, -1609, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00007B20
	 { -769, 150, -1796, 0, 0, -6158, 115, 102, 78, 255 }, // 0x00007B30
};

Vtx_t _ganontikasonogo_room_0_vertices_00007B40[8] = 
{
	 { -769, -240, -1796, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007B40
	 { -650, -240, -1590, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007B50
	 { -769, 150, -1796, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007B60
	 { -650, 150, -1590, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007B70
	 { -1212, -240, -1540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007B80
	 { -1093, -240, -1334, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007B90
	 { -1212, 150, -1540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007BA0
	 { -1093, 150, -1334, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007BB0
};

Gfx _ganontikasonogo_room_0_dlist_00007BC0[] =
{
	gsDPPipeSync(), // 0x00007BC0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007BC8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007B40, 8, 0), // 0x00007BD0
	gsSPCullDisplayList(0, 7), // 0x00007BD8
	gsDPPipeSync(), // 0x00007BE0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007BE8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007BF0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007BF8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00007C00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00007C08
	gsDPLoadSync(), // 0x00007C10
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007C18
	gsDPPipeSync(), // 0x00007C20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007C28
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007C30
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007C38
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007C40
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007C48
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007C50
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007C58
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007A50, 4, 0), // 0x00007C60
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00007C68
	gsDPPipeSync(), // 0x00007C70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00007C78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00007C80
	gsDPLoadSync(), // 0x00007C88
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00007C90
	gsDPPipeSync(), // 0x00007C98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00007CA0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00007CA8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007A90, 4, 0), // 0x00007CB0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007CB8
	gsDPPipeSync(), // 0x00007CC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000F2D8), // 0x00007CC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007CD0
	gsDPLoadSync(), // 0x00007CD8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00007CE0
	gsDPPipeSync(), // 0x00007CE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007CF0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007CF8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007AD0, 3, 0), // 0x00007D00
	gsSP1Triangle(0, 1, 2, 0), // 0x00007D08
	gsDPPipeSync(), // 0x00007D10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000E2D8), // 0x00007D18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00007D20
	gsDPLoadSync(), // 0x00007D28
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007D30
	gsDPPipeSync(), // 0x00007D38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007D40
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007D48
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007B00, 4, 0), // 0x00007D50
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x00007D58
	gsSPEndDisplayList(), // 0x00007D60
};

Vtx_t _ganontikasonogo_room_0_vertices_00007D68[4] = 
{
	 { -650, 70, -90, 0, 2048, 0, 115, 102, 78, 255 }, // 0x00007D68
	 { -974, -240, -277, 0, -3319, 784, 69, 62, 48, 255 }, // 0x00007D78
	 { -974, -117, -277, 0, -3319, 0, 113, 124, 139, 255 }, // 0x00007D88
	 { -650, -240, -90, 0, 2048, 1984, 100, 89, 67, 255 }, // 0x00007D98
};

Vtx_t _ganontikasonogo_room_0_vertices_00007DA8[4] = 
{
	 { -650, 150, -90, 0, 4800, 0, 158, 142, 111, 255 }, // 0x00007DA8
	 { -650, 70, -90, 0, 4800, 512, 115, 102, 78, 255 }, // 0x00007DB8
	 { -974, -117, -277, 0, 0, 512, 113, 124, 139, 255 }, // 0x00007DC8
	 { -974, -37, -277, 0, 0, 0, 218, 211, 199, 255 }, // 0x00007DD8
};

Vtx_t _ganontikasonogo_room_0_vertices_00007DE8[4] = 
{
	 { -1093, -37, -71, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00007DE8
	 { -650, 150, -90, 0, 2048, -6158, 255, 255, 255, 255 }, // 0x00007DF8
	 { -974, -37, -277, 0, 2048, 1024, 218, 211, 199, 255 }, // 0x00007E08
	 { -769, 150, 116, 0, 0, -6158, 115, 102, 78, 255 }, // 0x00007E18
};

Vtx_t _ganontikasonogo_room_0_vertices_00007E28[8] = 
{
	 { -974, -240, -277, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007E28
	 { -650, -240, -90, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007E38
	 { -974, 150, -277, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007E48
	 { -650, 150, -90, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007E58
	 { -1093, -240, -71, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007E68
	 { -769, -240, 116, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007E78
	 { -1093, 150, -71, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007E88
	 { -769, 150, 116, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007E98
};

Gfx _ganontikasonogo_room_0_dlist_00007EA8[] =
{
	gsDPPipeSync(), // 0x00007EA8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007EB0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007E28, 8, 0), // 0x00007EB8
	gsSPCullDisplayList(0, 7), // 0x00007EC0
	gsDPPipeSync(), // 0x00007EC8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007ED0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007ED8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007EE0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00007EE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00007EF0
	gsDPLoadSync(), // 0x00007EF8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007F00
	gsDPPipeSync(), // 0x00007F08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007F10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007F18
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007F20
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007F28
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007F30
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007F38
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007F40
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007D68, 4, 0), // 0x00007F48
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00007F50
	gsDPPipeSync(), // 0x00007F58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_000142D8), // 0x00007F60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00007F68
	gsDPLoadSync(), // 0x00007F70
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00007F78
	gsDPPipeSync(), // 0x00007F80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00007F88
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00007F90
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007DA8, 4, 0), // 0x00007F98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007FA0
	gsDPPipeSync(), // 0x00007FA8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000E2D8), // 0x00007FB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00007FB8
	gsDPLoadSync(), // 0x00007FC0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007FC8
	gsDPPipeSync(), // 0x00007FD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007FD8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007FE0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00007DE8, 4, 0), // 0x00007FE8
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0), // 0x00007FF0
	gsSPEndDisplayList(), // 0x00007FF8
};

Vtx_t _ganontikasonogo_room_0_vertices_00008000[32] = 
{
	 { 195, 615, -361, 0, 10898, 2265, 113, 124, 139, 255 }, // 0x00008000
	 { 191, 546, -378, 0, 10729, 3082, 45, 49, 55, 255 }, // 0x00008010
	 { 229, 561, -367, 0, 11142, 3020, 45, 49, 55, 255 }, // 0x00008020
	 { 211, 536, -397, 0, 10994, 3263, 45, 49, 55, 255 }, // 0x00008030
	 { -229, 561, -367, 0, 6086, 1638, 81, 72, 55, 255 }, // 0x00008040
	 { -191, 546, -378, 0, 6351, 1930, 45, 49, 55, 255 }, // 0x00008050
	 { -198, 592, -347, 0, 6543, 1360, 142, 150, 162, 255 }, // 0x00008060
	 { 189, 668, -327, 0, 10981, 1318, 142, 150, 162, 255 }, // 0x00008070
	 { 278, 592, -369, 0, 11441, 2346, 184, 188, 196, 255 }, // 0x00008080
	 { 288, 741, -355, 0, 11293, 686, 35, 31, 25, 255 }, // 0x00008090
	 { 278, 592, -369, 0, 11702, 2837, 184, 188, 196, 255 }, // 0x000080A0
	 { 266, 436, -436, 0, 11523, 4628, 69, 62, 48, 255 }, // 0x000080B0
	 { 229, 561, -367, 0, 11142, 3020, 45, 49, 55, 255 }, // 0x000080C0
	 { 355, 523, -453, 0, 12785, 3858, 45, 49, 55, 255 }, // 0x000080D0
	 { 516, 693, -600, 0, 15511, 2293, 103, 111, 125, 255 }, // 0x000080E0
	 { 278, 592, -369, 0, 12056, 2492, 184, 188, 196, 255 }, // 0x000080F0
	 { 550, 754, -612, 0, 15833, 1656, 35, 31, 25, 255 }, // 0x00008100
	 { 462, 626, -649, 0, 15679, 2932, 69, 62, 48, 255 }, // 0x00008110
	 { 314, 496, -493, 0, 12613, 4053, 25, 20, 15, 255 }, // 0x00008120
	 { 560, 609, -840, 0, 18166, 3578, 147, 131, 97, 255 }, // 0x00008130
	 { 550, 754, -840, 0, 18166, 1656, 35, 31, 25, 255 }, // 0x00008140
	 { 560, 609, -840, 0, 17895, 3081, 103, 111, 125, 255 }, // 0x00008150
	 { 504, 708, -1053, 0, 20591, 2077, 103, 111, 125, 255 }, // 0x00008160
	 { 560, 609, -840, 0, 18438, 3081, 103, 111, 125, 255 }, // 0x00008170
	 { 550, 754, -1068, 0, 20500, 1656, 35, 31, 25, 255 }, // 0x00008180
	 { 483, 650, -1046, 0, 20688, 2706, 134, 119, 89, 255 }, // 0x00008190
	 { 462, 546, -840, 0, 18166, 3896, 34, 36, 41, 255 }, // 0x000081A0
	 { 462, 626, -1031, 0, 20654, 2932, 69, 62, 48, 255 }, // 0x000081B0
	 { 314, 496, -1187, 0, 23720, 4053, 25, 20, 15, 255 }, // 0x000081C0
	 { 269, 413, -1246, 0, 24860, 4911, 35, 31, 25, 255 }, // 0x000081D0
	 { 289, 438, -1272, 0, 24697, 4677, 158, 142, 111, 255 }, // 0x000081E0
	 { 355, 523, -1227, 0, 23548, 3858, 147, 131, 97, 255 }, // 0x000081F0
};

Vtx_t _ganontikasonogo_room_0_vertices_00008200[37] = 
{
	 { 273, 754, -1344, 0, 25040, 686, 35, 31, 25, 255 }, // 0x00008200
	 { 550, 754, -1068, 0, 20500, 1656, 35, 31, 25, 255 }, // 0x00008210
	 { 504, 708, -1053, 0, 20591, 2077, 103, 111, 125, 255 }, // 0x00008220
	 { 279, 612, -1318, 0, 24272, 2484, 184, 188, 196, 255 }, // 0x00008230
	 { 483, 650, -1046, 0, 20688, 2706, 134, 119, 89, 255 }, // 0x00008240
	 { 279, 612, -1318, 0, 24631, 2837, 184, 188, 196, 255 }, // 0x00008250
	 { 355, 523, -1227, 0, 23548, 3858, 147, 131, 97, 255 }, // 0x00008260
	 { 289, 438, -1272, 0, 24697, 4677, 158, 142, 111, 255 }, // 0x00008270
	 { 227, 500, -1274, 0, 25228, 3744, 25, 20, 15, 255 }, // 0x00008280
	 { 191, 546, -1302, 0, 25604, 3082, 25, 20, 15, 255 }, // 0x00008290
	 { 184, 571, -1327, 0, 25696, 2762, 134, 119, 89, 255 }, // 0x000082A0
	 { 241, 525, -1307, 0, 25143, 3480, 100, 89, 67, 255 }, // 0x000082B0
	 { 269, 413, -1246, 0, 24860, 4911, 35, 31, 25, 255 }, // 0x000082C0
	 { 279, 612, -1318, 0, 24890, 2337, 184, 188, 196, 255 }, // 0x000082D0
	 { 195, 702, -1323, 0, 25230, 1218, 45, 49, 55, 255 }, // 0x000082E0
	 { 14, 657, -1364, 0, 27353, 1207, 81, 72, 55, 255 }, // 0x000082F0
	 { 0, 722, -1364, 0, 27334, 380, 45, 49, 55, 255 }, // 0x00008300
	 { 0, 754, -1390, 0, 27250, 0, 35, 31, 25, 255 }, // 0x00008310
	 { -191, 546, -1302, 0, 29982, 1930, 115, 102, 78, 255 }, // 0x00008320
	 { -209, 571, -1331, 0, 29952, 1577, 126, 136, 151, 255 }, // 0x00008330
	 { 15, 626, -1302, 0, 27458, 1587, 34, 36, 41, 255 }, // 0x00008340
	 { 191, 546, -1302, 0, 25604, 3082, 35, 31, 25, 255 }, // 0x00008350
	 { -198, 592, -347, 0, 6543, 1360, 142, 150, 162, 255 }, // 0x00008360
	 { -191, 546, -378, 0, 6351, 1930, 45, 49, 55, 255 }, // 0x00008370
	 { 14, 657, -316, 0, 8980, 1207, 126, 136, 151, 255 }, // 0x00008380
	 { 191, 546, -378, 0, 10729, 3082, 45, 49, 55, 255 }, // 0x00008390
	 { 195, 615, -361, 0, 10898, 2265, 113, 124, 139, 255 }, // 0x000083A0
	 { 0, 626, -378, 0, 8695, 1542, 57, 61, 69, 255 }, // 0x000083B0
	 { -167, 702, -286, 0, 7190, 119, 103, 111, 125, 255 }, // 0x000083C0
	 { 0, 722, -296, 0, 8999, 380, 103, 111, 125, 255 }, // 0x000083D0
	 { 189, 668, -327, 0, 10981, 1318, 142, 150, 162, 255 }, // 0x000083E0
	 { 0, 754, -290, 0, 9083, 0, 35, 31, 25, 255 }, // 0x000083F0
	 { 189, 668, -327, 0, 10981, 1318, 142, 150, 162, 255 }, // 0x00008400
	 { 288, 741, -355, 0, 11293, 686, 35, 31, 25, 255 }, // 0x00008410
	 { 0, 722, -296, 0, 8999, 380, 103, 111, 125, 255 }, // 0x00008420
	 { -228, 754, -290, 0, 6874, -686, 35, 31, 25, 255 }, // 0x00008430
	 { -167, 702, -286, 0, 7190, 119, 103, 111, 125, 255 }, // 0x00008440
};

Vtx_t _ganontikasonogo_room_0_vertices_00008450[8] = 
{
	 { -229, 413, -1390, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008450
	 { 560, 413, -1390, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008460
	 { -229, 754, -1390, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008470
	 { 560, 754, -1390, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008480
	 { -229, 413, -286, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008490
	 { 560, 413, -286, 0, 0, 0, 0, 0, 0, 0 }, // 0x000084A0
	 { -229, 754, -286, 0, 0, 0, 0, 0, 0, 0 }, // 0x000084B0
	 { 560, 754, -286, 0, 0, 0, 0, 0, 0, 0 }, // 0x000084C0
};

Gfx _ganontikasonogo_room_0_dlist_000084D0[] =
{
	gsDPPipeSync(), // 0x000084D0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000084D8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00008450, 8, 0), // 0x000084E0
	gsSPCullDisplayList(0, 7), // 0x000084E8
	gsDPPipeSync(), // 0x000084F0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000084F8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008500
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008508
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000FAD8), // 0x00008510
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00008518
	gsDPLoadSync(), // 0x00008520
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00008528
	gsDPPipeSync(), // 0x00008530
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00008538
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008540
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008548
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00008550
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00008558
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00008560
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00008568
	gsSPVertex(_ganontikasonogo_room_0_vertices_00008000, 32, 0), // 0x00008570
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x00008578
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00008580
	gsSP2Triangles(7, 0, 8, 0, 0, 2, 10, 0), // 0x00008588
	gsSP2Triangles(3, 11, 12, 0, 11, 10, 12, 0), // 0x00008590
	gsSP2Triangles(11, 13, 10, 0, 13, 14, 10, 0), // 0x00008598
	gsSP2Triangles(14, 9, 15, 0, 14, 16, 9, 0), // 0x000085A0
	gsSP2Triangles(14, 13, 17, 0, 13, 18, 17, 0), // 0x000085A8
	gsSP2Triangles(13, 11, 18, 0, 14, 17, 19, 0), // 0x000085B0
	gsSP2Triangles(20, 16, 21, 0, 16, 14, 21, 0), // 0x000085B8
	gsSP2Triangles(22, 20, 23, 0, 22, 24, 20, 0), // 0x000085C0
	gsSP2Triangles(25, 22, 23, 0, 19, 26, 25, 0), // 0x000085C8
	gsSP2Triangles(26, 27, 25, 0, 19, 17, 26, 0), // 0x000085D0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000085D8
	gsSP2Triangles(27, 28, 31, 0, 27, 31, 25, 0), // 0x000085E0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00008200, 32, 0), // 0x000085E8
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x000085F0
	gsSP2Triangles(3, 2, 4, 0, 5, 4, 6, 0), // 0x000085F8
	gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0), // 0x00008600
	gsSP2Triangles(8, 10, 11, 0, 12, 8, 11, 0), // 0x00008608
	gsSP2Triangles(12, 11, 7, 0, 5, 7, 11, 0), // 0x00008610
	gsSP2Triangles(5, 11, 10, 0, 13, 10, 14, 0), // 0x00008618
	gsSP2Triangles(0, 13, 14, 0, 10, 9, 15, 0), // 0x00008620
	gsSP2Triangles(14, 10, 15, 0, 14, 15, 16, 0), // 0x00008628
	gsSP2Triangles(0, 14, 17, 0, 14, 16, 17, 0), // 0x00008630
	gsSP2Triangles(15, 18, 19, 0, 15, 20, 18, 0), // 0x00008638
	gsSP2Triangles(15, 21, 20, 0, 16, 15, 19, 0), // 0x00008640
	gsSP2Triangles(22, 23, 24, 0, 24, 25, 26, 0), // 0x00008648
	gsSP2Triangles(23, 27, 24, 0, 27, 25, 24, 0), // 0x00008650
	gsSP2Triangles(28, 22, 29, 0, 22, 24, 29, 0), // 0x00008658
	gsSP2Triangles(29, 24, 30, 0, 24, 26, 30, 0), // 0x00008660
	gsSPVertex(_ganontikasonogo_room_0_vertices_000083F0, 6, 0), // 0x00008668
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008670
	gsSP2Triangles(4, 5, 3, 0, 4, 3, 0, 0), // 0x00008678
	gsSPEndDisplayList(), // 0x00008680
};

Vtx_t _ganontikasonogo_room_0_vertices_00008688[96] = 
{
	 { -523, 507, 66, 0, 2048, -856, 142, 150, 162, 255 }, // 0x00008688
	 { -606, 523, 210, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008698
	 { -554, 467, 240, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x000086A8
	 { -523, 507, 66, 0, 2048, -659, 142, 150, 162, 255 }, // 0x000086B8
	 { -554, 467, 240, 0, 0, 1024, 103, 111, 125, 255 }, // 0x000086C8
	 { -606, 410, 210, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x000086D8
	 { -523, 507, 66, 0, 2048, -567, 142, 150, 162, 255 }, // 0x000086E8
	 { -606, 410, 210, 0, 0, 1024, 103, 111, 125, 255 }, // 0x000086F8
	 { -658, 467, 180, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008708
	 { -523, 507, 66, 0, 2048, -533, 142, 150, 162, 255 }, // 0x00008718
	 { -658, 467, 180, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008728
	 { -606, 523, 210, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008738
	 { 1046, 507, -840, 0, 2048, -1037, 142, 150, 162, 255 }, // 0x00008748
	 { 1212, 467, -780, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008758
	 { 1212, 523, -840, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008768
	 { 1046, 507, -840, 0, 2048, -1046, 142, 150, 162, 255 }, // 0x00008778
	 { 1212, 410, -840, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008788
	 { 1212, 467, -780, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008798
	 { 1046, 507, -840, 0, 2048, -1012, 142, 150, 162, 255 }, // 0x000087A8
	 { 1212, 467, -900, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x000087B8
	 { 1212, 410, -840, 0, 0, 1024, 103, 111, 125, 255 }, // 0x000087C8
	 { 1046, 507, -840, 0, 2048, -1034, 142, 150, 162, 255 }, // 0x000087D8
	 { 1212, 523, -840, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x000087E8
	 { 1212, 467, -900, 0, 0, 1024, 103, 111, 125, 255 }, // 0x000087F8
	 { 525, 633, -900, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008808
	 { 546, 689, -840, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008818
	 { 680, 595, -840, 0, 2048, -1018, 142, 150, 162, 255 }, // 0x00008828
	 { 505, 576, -840, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008838
	 { 525, 633, -900, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008848
	 { 680, 595, -840, 0, 2048, -1037, 142, 150, 162, 255 }, // 0x00008858
	 { 525, 633, -780, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008868
	 { 505, 576, -840, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008878
	 { 680, 595, -840, 0, 2048, -822, 142, 150, 162, 255 }, // 0x00008888
	 { 546, 689, -840, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008898
	 { 525, 633, -780, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x000088A8
	 { 680, 595, -840, 0, 2048, -1046, 142, 150, 162, 255 }, // 0x000088B8
	 { 523, 507, 66, 0, 2048, -1033, 142, 150, 162, 255 }, // 0x000088C8
	 { 554, 467, 240, 0, 0, 1024, 103, 111, 125, 255 }, // 0x000088D8
	 { 606, 523, 210, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x000088E8
	 { 523, 507, 66, 0, 2048, -1048, 142, 150, 162, 255 }, // 0x000088F8
	 { 606, 410, 210, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008908
	 { 554, 467, 240, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008918
	 { 523, 507, 66, 0, 2048, -962, 142, 150, 162, 255 }, // 0x00008928
	 { 658, 467, 180, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008938
	 { 606, 410, 210, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008948
	 { 523, 507, 66, 0, 2048, -969, 142, 150, 162, 255 }, // 0x00008958
	 { 606, 523, 210, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008968
	 { 658, 467, 180, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008978
	 { 315, 633, -415, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008988
	 { 273, 689, -367, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008998
	 { 340, 595, -251, 0, 2048, -386, 142, 150, 162, 255 }, // 0x000089A8
	 { 252, 576, -403, 0, 0, 1024, 103, 111, 125, 255 }, // 0x000089B8
	 { 315, 633, -415, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x000089C8
	 { 340, 595, -251, 0, 2048, -566, 142, 150, 162, 255 }, // 0x000089D8
	 { 211, 633, -355, 0, 0, 1024, 103, 111, 125, 255 }, // 0x000089E8
	 { 252, 576, -403, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x000089F8
	 { 340, 595, -251, 0, 2048, -770, 142, 150, 162, 255 }, // 0x00008A08
	 { 273, 689, -367, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008A18
	 { 211, 633, -355, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008A28
	 { 340, 595, -251, 0, 2048, -832, 142, 150, 162, 255 }, // 0x00008A38
	 { 273, 689, -1313, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008A48
	 { 314, 633, -1265, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008A58
	 { 340, 595, -1429, 0, 2048, -1033, 142, 150, 162, 255 }, // 0x00008A68
	 { 314, 633, -1265, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008A78
	 { 252, 576, -1277, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008A88
	 { 340, 595, -1429, 0, 2048, -1042, 142, 150, 162, 255 }, // 0x00008A98
	 { 252, 576, -1277, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008AA8
	 { 211, 633, -1325, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008AB8
	 { 340, 595, -1429, 0, 2048, -1046, 142, 150, 162, 255 }, // 0x00008AC8
	 { 211, 633, -1325, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008AD8
	 { 273, 689, -1313, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008AE8
	 { 340, 595, -1429, 0, 2048, -1040, 142, 150, 162, 255 }, // 0x00008AF8
	 { 523, 507, -1746, 0, 2048, -1036, 142, 150, 162, 255 }, // 0x00008B08
	 { 606, 523, -1890, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008B18
	 { 554, 467, -1920, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008B28
	 { 523, 507, -1746, 0, 2048, -1026, 142, 150, 162, 255 }, // 0x00008B38
	 { 554, 467, -1920, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008B48
	 { 606, 410, -1890, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008B58
	 { 523, 507, -1746, 0, 2048, -1030, 142, 150, 162, 255 }, // 0x00008B68
	 { 606, 410, -1890, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008B78
	 { 658, 467, -1860, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008B88
	 { 523, 507, -1746, 0, 2048, -1045, 142, 150, 162, 255 }, // 0x00008B98
	 { 658, 467, -1860, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008BA8
	 { 606, 523, -1890, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008BB8
	 { -523, 507, -1746, 0, 2048, -1016, 142, 150, 162, 255 }, // 0x00008BC8
	 { -606, 523, -1890, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008BD8
	 { -658, 467, -1860, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008BE8
	 { -523, 507, -1746, 0, 2048, -1028, 142, 150, 162, 255 }, // 0x00008BF8
	 { -658, 467, -1860, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008C08
	 { -606, 410, -1890, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008C18
	 { -523, 507, -1746, 0, 2048, -1021, 142, 150, 162, 255 }, // 0x00008C28
	 { -606, 410, -1890, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008C38
	 { -554, 467, -1920, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008C48
	 { -523, 507, -1746, 0, 2048, -1027, 142, 150, 162, 255 }, // 0x00008C58
	 { -554, 467, -1920, 0, 0, 1024, 103, 111, 125, 255 }, // 0x00008C68
	 { -606, 523, -1890, 0, 2048, 1024, 103, 111, 125, 255 }, // 0x00008C78
};

Vtx_t _ganontikasonogo_room_0_vertices_00008C88[8] = 
{
	 { -658, 410, -1920, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008C88
	 { 1212, 410, -1920, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008C98
	 { -658, 689, -1920, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008CA8
	 { 1212, 689, -1920, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008CB8
	 { -658, 410, 240, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008CC8
	 { 1212, 410, 240, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008CD8
	 { -658, 689, 240, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008CE8
	 { 1212, 689, 240, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008CF8
};

Gfx _ganontikasonogo_room_0_dlist_00008D08[] =
{
	gsDPPipeSync(), // 0x00008D08
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00008D10
	gsSPVertex(_ganontikasonogo_room_0_vertices_00008C88, 8, 0), // 0x00008D18
	gsSPCullDisplayList(0, 7), // 0x00008D20
	gsDPPipeSync(), // 0x00008D28
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008D30
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008D38
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008D40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000C2D8), // 0x00008D48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00008D50
	gsDPLoadSync(), // 0x00008D58
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00008D60
	gsDPPipeSync(), // 0x00008D68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00008D70
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00008D78
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008D80
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00008D88
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00008D90
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00008D98
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00008DA0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00008688, 32, 0), // 0x00008DA8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008DB0
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00008DB8
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0), // 0x00008DC0
	gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0), // 0x00008DC8
	gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0), // 0x00008DD0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00008868, 32, 0), // 0x00008DD8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008DE0
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00008DE8
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0), // 0x00008DF0
	gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0), // 0x00008DF8
	gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0), // 0x00008E00
	gsSPVertex(_ganontikasonogo_room_0_vertices_00008A48, 32, 0), // 0x00008E08
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008E10
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00008E18
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0), // 0x00008E20
	gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0), // 0x00008E28
	gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0), // 0x00008E30
	gsSPVertex(_ganontikasonogo_room_0_vertices_00008C28, 6, 0), // 0x00008E38
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008E40
	gsSPEndDisplayList(), // 0x00008E48
};

Vtx_t _ganontikasonogo_room_0_vertices_00008E50[4] = 
{
	 { 325, -240, 98, 0, 0, 1984, 158, 142, 111, 255 }, // 0x00008E50
	 { -325, -240, 98, 0, 8314, 1984, 158, 142, 111, 255 }, // 0x00008E60
	 { -325, 70, 98, 0, 8314, 0, 115, 102, 78, 255 }, // 0x00008E70
	 { 325, 70, 98, 0, 0, 0, 158, 142, 111, 255 }, // 0x00008E80
};

Vtx_t _ganontikasonogo_room_0_vertices_00008E90[8] = 
{
	 { -325, -240, 98, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008E90
	 { 325, -240, 98, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008EA0
	 { -325, 70, 98, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008EB0
	 { 325, 70, 98, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008EC0
	 { -325, -240, 98, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008ED0
	 { 325, -240, 98, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008EE0
	 { -325, 70, 98, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008EF0
	 { 325, 70, 98, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008F00
};

Gfx _ganontikasonogo_room_0_dlist_00008F10[] =
{
	gsDPPipeSync(), // 0x00008F10
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00008F18
	gsSPVertex(_ganontikasonogo_room_0_vertices_00008E90, 8, 0), // 0x00008F20
	gsSPCullDisplayList(0, 7), // 0x00008F28
	gsDPPipeSync(), // 0x00008F30
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008F38
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008F40
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008F48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00014AD8), // 0x00008F50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00008F58
	gsDPLoadSync(), // 0x00008F60
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00008F68
	gsDPPipeSync(), // 0x00008F70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00008F78
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00008F80
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008F88
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00008F90
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00008F98
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00008FA0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00008FA8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00008E50, 4, 0), // 0x00008FB0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00008FB8
	gsSPEndDisplayList(), // 0x00008FC0
};

Vtx_t _ganontikasonogo_room_0_vertices_00008FC8[11] = 
{
	 { 1092, -240, -920, 0, 0, 4096, 169, 154, 126, 255 }, // 0x00008FC8
	 { 1172, -240, -840, 0, 2048, 2048, 255, 255, 255, 255 }, // 0x00008FD8
	 { 1232, -240, -920, 0, 0, 512, 169, 154, 126, 255 }, // 0x00008FE8
	 { 1232, -240, -760, 0, 0, 0, 169, 154, 126, 255 }, // 0x00008FF8
	 { 1232, -240, -840, 0, 2048, 0, 134, 119, 89, 255 }, // 0x00009008
	 { 1172, -240, -840, 0, 2048, 1536, 255, 255, 255, 255 }, // 0x00009018
	 { 1092, -240, -760, 0, 0, 3584, 169, 154, 126, 255 }, // 0x00009028
	 { 1232, -240, -840, 0, 2048, 512, 134, 119, 89, 255 }, // 0x00009038
	 { 1092, -240, -920, 0, 0, -2048, 169, 154, 126, 255 }, // 0x00009048
	 { 1092, -240, -760, 0, 0, 2048, 169, 154, 126, 255 }, // 0x00009058
	 { 1172, -240, -840, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00009068
};

Vtx_t _ganontikasonogo_room_0_vertices_00009078[8] = 
{
	 { 1092, -240, -920, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009078
	 { 1232, -240, -920, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009088
	 { 1092, -240, -920, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009098
	 { 1232, -240, -920, 0, 0, 0, 0, 0, 0, 0 }, // 0x000090A8
	 { 1092, -240, -760, 0, 0, 0, 0, 0, 0, 0 }, // 0x000090B8
	 { 1232, -240, -760, 0, 0, 0, 0, 0, 0, 0 }, // 0x000090C8
	 { 1092, -240, -760, 0, 0, 0, 0, 0, 0, 0 }, // 0x000090D8
	 { 1232, -240, -760, 0, 0, 0, 0, 0, 0, 0 }, // 0x000090E8
};

Gfx _ganontikasonogo_room_0_dlist_000090F8[] =
{
	gsDPPipeSync(), // 0x000090F8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00009100
	gsSPVertex(_ganontikasonogo_room_0_vertices_00009078, 8, 0), // 0x00009108
	gsSPCullDisplayList(0, 7), // 0x00009110
	gsDPPipeSync(), // 0x00009118
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00009120
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00009128
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00009130
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_0000A2D8), // 0x00009138
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x00009140
	gsDPLoadSync(), // 0x00009148
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00009150
	gsDPPipeSync(), // 0x00009158
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x00009160
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00009168
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00009170
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00009178
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00009180
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00009188
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00009190
	gsSPVertex(_ganontikasonogo_room_0_vertices_00008FC8, 11, 0), // 0x00009198
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000091A0
	gsSP2Triangles(6, 3, 5, 0, 1, 7, 2, 0), // 0x000091A8
	gsSP1Triangle(8, 9, 10, 0), // 0x000091B0
	gsSPEndDisplayList(), // 0x000091B8
};

Gfx _ganontikasonogo_room_0_dlist_000091C0[] =
{
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00000510), // 0x000091C0
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00000AE0), // 0x000091C8
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00001378), // 0x000091D0
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00001B48), // 0x000091D8
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00002210), // 0x000091E0
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_000028C0), // 0x000091E8
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00002F18), // 0x000091F0
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00003318), // 0x000091F8
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00003608), // 0x00009200
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_000039B0), // 0x00009208
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00003D58), // 0x00009210
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00004070), // 0x00009218
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_000043D0), // 0x00009220
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_000046E8), // 0x00009228
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_000050B0), // 0x00009230
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00005D00), // 0x00009238
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00006550), // 0x00009240
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00006BA8), // 0x00009248
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00006DD0), // 0x00009250
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00006F90), // 0x00009258
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00007150), // 0x00009260
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00007310), // 0x00009268
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_000074D0), // 0x00009270
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00007800), // 0x00009278
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00007BC0), // 0x00009280
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00007EA8), // 0x00009288
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_000084D0), // 0x00009290
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00008D08), // 0x00009298
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00008F10), // 0x000092A0
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_000090F8), // 0x000092A8
	gsSPEndDisplayList(), // 0x000092B0
};

u64 _ganontikasonogo_room_0_tex_000092B8[] = 
{
	0x00008C5FAD659CE3, 0x73992107398D6B57, 0x4A0F2949C62D5293, 0xBDEB841D5AD50000,  // 0x000092B8 
};

u64 _ganontikasonogo_room_0_tex_000092D8[] = 
{
	0x8C639CE594A594A5, 0xA5279CE7AD29AD69, 0x94A3A529A529A527, 0x9CE7AD29A529B5AD,  // 0x000092D8 
	0x9CE7A5298C6394A5, 0x94A594A59CE7A529, 0xA5299CE7A529BDAD, 0x9CE7A52994A58421,  // 0x000092F8 
	0x8C639CE594A594A5, 0xA5279CE7AD29AD69, 0x94A3A529A529A527, 0x9CE7AD29A529B5AD,  // 0x00009318 
	0x9CE7A5298C6394A5, 0x94A594A59CE7A529, 0xA5299CE7A529BDAD, 0x94A5A52994A58421,  // 0x00009338 
	0x39CD18C742114211, 0x318B5AD794A5AD6B, 0x94A57BDF63192109, 0x421152938421AD6B,  // 0x00009358 
	0xAD6B9CE79CE794A5, 0x7BDF63196B5B6B5B, 0x7BDF8C619CE5A529, 0x94A34A51318D0883,  // 0x00009378 
	0x39CD18C742114211, 0x318B5AD794A5AD6B, 0x94A56B5B42110001, 0x294B52938421AD6B,  // 0x00009398 
	0xAD6B9CE79CE794A5, 0x7BDF5AD75AD75AD7, 0x6B5B84219CE5A529, 0x7BDF4A51318D0883,  // 0x000093B8 
	0x18C7294921092107, 0x210918C5739DAD6B, 0x5295294931492949, 0x525352954A538C63,  // 0x000093D8 
	0xA5297BDF4A53318B, 0x318B39CB420F5293, 0x5AD5739D84219CE7, 0x6317294B294B2949,  // 0x000093F8 
	0x18C7294921092107, 0x210918C5739DAD6B, 0x5295294920C518C5, 0x29472107318D8421,  // 0x00009418 
	0xA529739D420F2107, 0x21472947294718C5, 0x18C539CF42116317, 0x294B294B294B2949,  // 0x00009438 
	0x2109420F39CD39CF, 0x4A5139CD525394A5, 0x4A53420F42114A51, 0x4A4F52936B59739D,  // 0x00009458 
	0xA5296319421139CD, 0x39CD318B420F39CD, 0x420F5AD5739D9CE7, 0x318D39CD4A5139CD,  // 0x00009478 
	0x2109420F39CD39CF, 0x4A5139CD525394A5, 0x4A53420F42114A51, 0x4A4F4A51739D5B17,  // 0x00009498 
	0xA5296319421139CD, 0x420D420F5AD539CD, 0x318B19074A51739D, 0x318D39CD4A5139CD,  // 0x000094B8 
	0x210952954A514A51, 0x4A5139CD63179CE7, 0x318B39CF5AD56B5B, 0x6317425152958421,  // 0x000094D8 
	0x9CE54A535AD74A53, 0x420F420F4A51420F, 0x39CD42116B5B9CE7, 0x420F420F5AD539CF,  // 0x000094F8 
	0x210952954A514A51, 0x4A5139CD63179CE7, 0x318B39CF5AD56B5B, 0x6317425142116B5B,  // 0x00009518 
	0xA5295AD763195295, 0x4A534A535A9539CF, 0x294918C73A0F7BDF, 0x5AD5420F5AD539CF,  // 0x00009538 
	0x210739CF529162D7, 0x4A1129497B9D4211, 0x294942115AD75AD7, 0x6B5B5AD752935295,  // 0x00009558 
	0x5293529552955AD7, 0x4A5342114A51420F, 0x420F4A5163178C61, 0x631939CF5AD54A51,  // 0x00009578 
	0x2107314B529162D7, 0x4A11318D7BDF4211, 0x294942115AD75AD7, 0x6B5B421131CD6317,  // 0x00009598 
	0xB5AD94A563195AD7, 0x529542114A53420F, 0x294918C5318B4A53, 0x420F39CF5AD54A51,  // 0x000095B8 
	0x1083084118C72109, 0x29495AD552952107, 0x2109108518C51085, 0x39CF421121072107,  // 0x000095D8 
	0x210718C521072109, 0x2949210921092949, 0x318B39CF318D420F, 0x739D294921092107,  // 0x000095F8 
	0x18C718C718C72109, 0x318D739D6B192107, 0x2109108518C51085, 0x18C718C5294B4211,  // 0x00009618 
	0x63198C638C631085, 0x1087108518C718C7, 0x210918C721072107, 0x294B210918C518C7,  // 0x00009638 
	0x1083000108431085, 0x5AD55AD508430843, 0x210918C508430841, 0x108518C721092107,  // 0x00009658 
	0x21092109294B18C7, 0x2107294B29492949, 0x318B318D39CD294B, 0x631763194A5320C7,  // 0x00009678 
	0x18C5108510852949, 0x52954A5318C70843, 0x210918C508430841, 0x108518C721092107,  // 0x00009698 
	0x21092109294B18C7, 0x2107294B29492949, 0x318B318D39CF314B, 0x2107294B21091085,  // 0x000096B8 
	0x18C7108518C7739D, 0x52952107210918C5, 0x1085210721072109, 0x2949318D21092949,  // 0x000096D8 
	0x52932109294B39CD, 0x2109294939CD2107, 0x210939CF39CF318B, 0x294921096B59739D,  // 0x000096F8 
	0x63194A5152954A53, 0x39CF2107210918C5, 0x1085210721072109, 0x2949318D21092949,  // 0x00009718 
	0x52932109294B39CD, 0x2109294939CD2107, 0x210939CF39CD294B, 0x18C718C7294B318B,  // 0x00009738 
	0x420F294B318B2109, 0x18C5210718C72109, 0x2949294B39CF2109, 0x18C7210718C7294B,  // 0x00009758 
	0x6B5B294B294B2949, 0x21095AD74A532949, 0x2109318D318D294B, 0x398D318D318D318B,  // 0x00009778 
	0x4211421142112109, 0x18C7210721092109, 0x2949294B39CF2109, 0x18C7210718C7294B,  // 0x00009798 
	0x6B5B294B294B2949, 0x21095AD74A532949, 0x2109318D39CF318D, 0x41CF314B318D6B59,  // 0x000097B8 
	0x21092949294B18C5, 0x18C5108318C518C7, 0x4211294B420F5293, 0x39CD210918C74211,  // 0x000097D8 
	0x8C6139CD294B2949, 0x42115AD74A532109, 0x1085108518C518C5, 0x294B210918C51083,  // 0x000097F8 
	0x18C7318B18C71085, 0x1085108318C518C7, 0x4211294B420F5293, 0x39CD210918C74211,  // 0x00009818 
	0x8C6139CD294B2949, 0x42115AD74A532109, 0x10851085210718C7, 0x294B210918C51083,  // 0x00009838 
	0x1084108410841084, 0x1084108410841084, 0x10841084318D5AD7, 0x6B594A53318D6B5B,  // 0x00009858 
	0x94A55295210939CF, 0x6B5B4A51420F1084, 0x1084108410841084, 0x1084108410841084,  // 0x00009878 
	0x1084108410841084, 0x1084108410841084, 0x10841084318D5AD7, 0x6B594A53318D6B5B,  // 0x00009898 
	0x94A55295210939CF, 0x6B5B4A51420F1084, 0x1084108410841084, 0x1084108410841084,  // 0x000098B8 
	0x1084108410841084, 0x1084108410841084, 0x108410841084420F, 0x7BDF631739CF739D,  // 0x000098D8 
	0x94A55293318D6B5B, 0x420F318B10841084, 0x1084108410841084, 0x1084108410841084,  // 0x000098F8 
	0x1084108410841084, 0x1084108410841084, 0x108410841084420F, 0x7BDF631739CF739D,  // 0x00009918 
	0x94A55293318D6B5B, 0x420F318B10841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009938 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x42116B5B94A39CE7,  // 0x00009958 
	0xA5278C637BDF420F, 0x318B108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009978 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x42116B5B94A39CE7,  // 0x00009998 
	0xA5278C637BDF420F, 0x318B108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x000099B8 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x108439CD318D2109,  // 0x000099D8 
	0x318D2949294B318D, 0x1084108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x000099F8 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x1084318D318B2109,  // 0x00009A18 
	0x318D2949294B318D, 0x1084108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009A38 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x108439CF4A535295,  // 0x00009A58 
	0x52954A5139CF294B, 0x1084108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009A78 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x108439CF4A534A53,  // 0x00009A98 
	0x4A53420F39CF294B, 0x1084108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009AB8 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x10844A534A53318D,  // 0x00009AD8 
	0x2949318D631939CF, 0x1084108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009AF8 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x10844A53631739CF,  // 0x00009B18 
	0x294B39CD52954211, 0x1084108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009B38 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x108439CF529539CF,  // 0x00009B58 
	0x2949318D5AD7318D, 0x1084108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009B78 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x108439CF5AD74211,  // 0x00009B98 
	0x294B39CF529539CF, 0x1084108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009BB8 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x108442115AD75AD7,  // 0x00009BD8 
	0x318D42114211318D, 0x1084108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009BF8 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x1084421152956317,  // 0x00009C18 
	0x42115295421139CF, 0x1084108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009C38 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x18C739CD42115295,  // 0x00009C58 
	0x5AD7421139CF294B, 0x2109108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009C78 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x18C7318D42115AD5,  // 0x00009C98 
	0x6B5B421139CF294B, 0x2109108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009CB8 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x739D6B59318D318B,  // 0x00009CD8 
	0x4A53318D318B6B5B, 0x4A53108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009CF8 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x5AD56317318D318B,  // 0x00009D18 
	0x5295318D318B6B5B, 0x4A53108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009D38 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x42117BDF94A56B59,  // 0x00009D58 
	0x39CF631794A56B5B, 0x4251108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009D78 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x39CF7BDF94A56317,  // 0x00009D98 
	0x39CF631794A56B5B, 0x4251108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009DB8 
	0x1084108410841084, 0x1084108410841084, 0x108410841084294A, 0x5295739D8C638C63,  // 0x00009DD8 
	0x9CE77BDF8C638421, 0x5295108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009DF8 
	0x1084108410841084, 0x1084108410841084, 0x108410841084294A, 0x5295739D8C638C63,  // 0x00009E18 
	0x9CE77BDF8C638421, 0x5295108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009E38 
	0x1084108410841084, 0x1084108410841084, 0x1084108410842109, 0x4A537BDF84219CE7,  // 0x00009E58 
	0x8C6394E58C636B5B, 0x5AD7294B10841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009E78 
	0x1084108410841084, 0x1084108410841084, 0x1084108410842109, 0x4A537BDF84219CE7,  // 0x00009E98 
	0x8C6394E58C636B5B, 0x5AD7294B10841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009EB8 
	0x1084108410841084, 0x1084108410841084, 0x108410841084318D, 0x42116B5B9CE78421,  // 0x00009ED8 
	0x8C637BDF8C63739D, 0x6B5B318D10841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009EF8 
	0x1084108410841084, 0x1084108410841084, 0x108410841084318D, 0x42116B5B9CE78421,  // 0x00009F18 
	0x8C637BDF8C63739D, 0x6B5B318D10841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009F38 
	0x1084108410841084, 0x1084108410841084, 0x1084108410842109, 0x6B5B83DF8421739D,  // 0x00009F58 
	0x7BDF739D7BDF6B9B, 0x6B5B294B10841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009F78 
	0x1084108410841084, 0x1084108410841084, 0x1084108410842109, 0x6B5B83DF8421739D,  // 0x00009F98 
	0x7BDF739D7BDF6B9B, 0x6B5B294B10841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009FB8 
	0x1084108410841084, 0x1084108410841084, 0x10841084108439CF, 0x6319318D52955AD7,  // 0x00009FD8 
	0x6B5B6B5B7BDD5AD7, 0x84217BDF10841084, 0x1084108410841084, 0x1084108410841084,  // 0x00009FF8 
	0x1084108410841084, 0x1084108410841084, 0x10841084108439CF, 0x6319318D52955AD7,  // 0x0000A018 
	0x6B5B6B5B7BDD5AD7, 0x84217BDF10841084, 0x1084108410841084, 0x1084108410841084,  // 0x0000A038 
	0x1084108410841084, 0x1084108410841084, 0x108410841084294B, 0x210739CD318D5295,  // 0x0000A058 
	0x63196B5B7BDF8C63, 0x842118C710841084, 0x1084108410841084, 0x1084108410841084,  // 0x0000A078 
	0x1084108410841084, 0x1084108410841084, 0x108410841084294B, 0x210739CD318D5295,  // 0x0000A098 
	0x63196B5B7BDF8C63, 0x842118C710841084, 0x1084108410841084, 0x1084108410841084,  // 0x0000A0B8 
	0x1084108410841084, 0x1084108410841084, 0x10841084108418C7, 0x18C5318D4A515AD7,  // 0x0000A0D8 
	0x5AD78C638C638421, 0x2107210910841084, 0x1084108410841084, 0x1084108410841084,  // 0x0000A0F8 
	0x1084108410841084, 0x1084108410841084, 0x10841084108418C7, 0x18C5318D4A515AD7,  // 0x0000A118 
	0x5AD78C638C638421, 0x2107210910841084, 0x1084108410841084, 0x1084108410841084,  // 0x0000A138 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x18C72109318D5295,  // 0x0000A158 
	0x84217BDF5AD7294B, 0x2109108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x0000A178 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x18C72109318D5295,  // 0x0000A198 
	0x84217BDF5AD7294B, 0x2109108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x0000A1B8 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x10842109294B39CD,  // 0x0000A1D8 
	0x5AD7294B294B2109, 0x1084108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x0000A1F8 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x10842109294B39CD,  // 0x0000A218 
	0x5AD7294B294B2109, 0x1084108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x0000A238 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x10841084210939CF,  // 0x0000A258 
	0x294B294B08431084, 0x1084108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x0000A278 
	0x1084108410841084, 0x1084108410841084, 0x1084108410841084, 0x10841084210939CF,  // 0x0000A298 
	0x294B294B08431084, 0x1084108410841084, 0x1084108410841084, 0x1084108410841084,  // 0x0000A2B8 
};

u64 _ganontikasonogo_room_0_tex_0000A2D8[] = 
{
	0x11551915319939D9, 0x3195B4597B1539DB, 0x2957295731931115, 0x1913191319151915,  // 0x0000A2D8 
	0x1915191310D310D3, 0x191310D110D110D1, 0x10D110D110D110D1, 0x10D110D119131913,  // 0x0000A2F8 
	0x1915191519151913, 0x10D110D3191310D1, 0x10D110D110D110D1, 0x10D110D110D11913,  // 0x0000A318 
	0x1915191519131955, 0x1913215721571913, 0x1955215721571955, 0x1955215719551955,  // 0x0000A338 
	0x1155299929552957, 0x29996AD7A3D96299, 0x3195295731971113, 0x10D110D110D31915,  // 0x0000A358 
	0x1955195519151915, 0x10D310D310D310D1, 0x10D110CF10CF1091, 0x10D110D110D110D1,  // 0x0000A378 
	0x1913191519551955, 0x1915191310D310D3, 0x10D310D110D110CF, 0x10CF10D310D31913,  // 0x0000A398 
	0x1915191519151955, 0x19131915191510D3, 0x1913191319551955, 0x1955195519551955,  // 0x0000A3B8 
	0x1957525941D539DB, 0x299929978B99A3D7, 0x6AD741D721151113, 0x10D110D110D110D3,  // 0x0000A3D8 
	0x1913191519151915, 0x1913191310D110D1, 0x10D110D110D110D1, 0x10D110D110D110D1,  // 0x0000A3F8 
	0x10D1191319131915, 0x1915191519131913, 0x10D110D110D110D1, 0x10D1191319131913,  // 0x0000A418 
	0x1913191319551955, 0x19131913191310D3, 0x191310D319131913, 0x1913191319131913,  // 0x0000A438 
	0x19575A99525539D5, 0x3199319B72D7B457, 0x9BD74A1529571113, 0x10D110D110D110D3,  // 0x0000A458 
	0x1913191319131915, 0x191510D310D110D1, 0x108F10CF10D11915, 0x1955191510D110D1,  // 0x0000A478 
	0x10D110D319131913, 0x19131915191510D3, 0x10D110CF108F10CF, 0x10D110D319131913,  // 0x0000A498 
	0x10D1191319551955, 0x1955195519151913, 0x1915191310D310D1, 0x10D110D310D110D1,  // 0x0000A4B8 
	0x11553199A4176A95, 0x211539D54219CCD9, 0xBC57299929571113, 0x10D110D319131913,  // 0x0000A4D8 
	0x1913191319131913, 0x191310D1109110CF, 0x10D110D110D31915, 0x191510D310D110D3,  // 0x0000A4F8 
	0x1913191319131913, 0x19131913191310D1, 0x10CF10CF10D110D1, 0x191310D310D110D1,  // 0x0000A518 
	0x191310D319131913, 0x1913191319131955, 0x1955191310D310D1, 0x10D310D310D110D3,  // 0x0000A538 
	0x111521575259BC99, 0x62975A59C4DBB45B, 0x5259219921571113, 0x1913191310D310D1,  // 0x0000A558 
	0x10D110D110D110D3, 0x191310D110D110D3, 0x1913191319131913, 0x1913191319131913,  // 0x0000A578 
	0x10D310D110D110D1, 0x10D11913191310D1, 0x10D110D319131913, 0x1913191319131913,  // 0x0000A598 
	0x10D310D110D110D1, 0x1913191319131913, 0x1913191310D310D1, 0x191310D310D11913,  // 0x0000A5B8 
	0x1115215721577B5B, 0xC4DBC4DBBC9B8B57, 0xA3D7215929571113, 0x1913191310D110D1,  // 0x0000A5D8 
	0x10D110D119131913, 0x10D310D110D11913, 0x191310D3191310D1, 0x10D110D319131913,  // 0x0000A5F8 
	0x10D110D110D110D1, 0x1913191310D310D1, 0x10D11913191310D3, 0x1913191319131913,  // 0x0000A618 
	0x191310D310D110D1, 0x10D1191319131913, 0x1913191310D31913, 0x191310D319131913,  // 0x0000A638 
	0x11552157299931D9, 0xDD19B45B3A1F31D7, 0x7B57939931991155, 0x191310D110D110D1,  // 0x0000A658 
	0x1913191519131913, 0x10D110D119131913, 0x10D310D110D110D1, 0x10D110D3191310D1,  // 0x0000A678 
	0x10D110D119131915, 0x1913191310D110D1, 0x1913191310D310D1, 0x10D3191319131915,  // 0x0000A698 
	0x1915191310D110D1, 0x10D110D119131913, 0x191310D310D31913, 0x191310D319131913,  // 0x0000A6B8 
	0x1155215721575A99, 0xF59962DB299B299B, 0x2999A417319B1113, 0x10CF109110D11913,  // 0x0000A6D8 
	0x1915191519151913, 0x1913191319151915, 0x1915191310D110D1, 0x10D110CF10CF1091,  // 0x0000A6F8 
	0x10D3191519151915, 0x1915191319131913, 0x1915191519151913, 0x10D110D319131913,  // 0x0000A718 
	0x1913191310D110D1, 0x10D110D110D31915, 0x10D110D319131913, 0x1913191319131913,  // 0x0000A738 
	0x1155299929993195, 0xD5199399299B2999, 0x299B93D931991113, 0x10CF10D119131915,  // 0x0000A758 
	0x191310D310D110D3, 0x1915191519151955, 0x19151915191310D3, 0x10D1108F10CF10D1,  // 0x0000A778 
	0x19131915191310D3, 0x10D110D319151915, 0x1915195519151915, 0x1913191319131913,  // 0x0000A798 
	0x19131913191310D1, 0x10D110D3191310D3, 0x10D1191319151915, 0x1913191519151913,  // 0x0000A7B8 
	0x1155299931DB5215, 0xAC17CCDB525B31DB, 0x3A1D9BDB21571113, 0x10D110D319131913,  // 0x0000A7D8 
	0x10D310D110D110D3, 0x1913191319131913, 0x19131913191510D3, 0x10D110CF10D110D3,  // 0x0000A7F8 
	0x1913191310D310D1, 0x10D110D319131913, 0x1913191319131913, 0x19151913191310D1,  // 0x0000A818 
	0x10D11913191310D1, 0x10D110D310D310D1, 0x10D110D319131915, 0x1913191319151913,  // 0x0000A838 
	0x1155191573195A55, 0x4219BC9DC4DD93DD, 0xBC9BBC5731931115, 0x19131913191310D3,  // 0x0000A858 
	0x1913191319131913, 0x191310D110D110D1, 0x10D310D3191310D1, 0x10D110D119131913,  // 0x0000A878 
	0x10D310D319131913, 0x19131913191310D1, 0x10D110D110D310D3, 0x19131915191310D1,  // 0x0000A898 
	0x10D110D1191310D1, 0x10D110D110D110D1, 0x10D110D319131913, 0x10D31913191310D3,  // 0x0000A8B8 
	0x115542156AD541D7, 0x211539DBAC1FCD1B, 0xB457191518D31155, 0x1913191319131913,  // 0x0000A8D8 
	0x19131915191510D3, 0x10D110D110D110D3, 0x1913191319131913, 0x1913191319131913,  // 0x0000A8F8 
	0x1913191319131915, 0x191510D310D110D1, 0x10D110D319131913, 0x1913191319131913,  // 0x0000A918 
	0x10D110D110D11913, 0x191310D1108F10D1, 0x1913191310D310CF, 0x10D110D310CF10D1,  // 0x0000A938 
	0x21978B9742152157, 0x29572957425FCCDB, 0xA417191519131913, 0x1913191319131913,  // 0x0000A958 
	0x1915191519151913, 0x10D310D110D110D3, 0x1913191519131915, 0x1955191519131913,  // 0x0000A978 
	0x1913191519151915, 0x1915191510D310D1, 0x10D110D319131915, 0x1913191319131913,  // 0x0000A998 
	0x10D110D119131915, 0x191310D110D11955, 0x1955191310CF10D1, 0x10D110CF10D110D1,  // 0x0000A9B8 
	0x2A1B93DB4A572157, 0x39DB295739DDA41B, 0xC49939D521571913, 0x1913191319131913,  // 0x0000A9D8 
	0x1913191319131913, 0x191310D310D31913, 0x1915191519151915, 0x1915191519131913,  // 0x0000A9F8 
	0x1913191319131913, 0x19131913191310D3, 0x10D3191319151955, 0x19151913191310D1,  // 0x0000AA18 
	0x1913191319131915, 0x1913191319151955, 0x191310D110CF10D1, 0x191310CF10D11913,  // 0x0000AA38 
	0x2197835B7B5B31DB, 0x29974A59A41DDD5B, 0xC4DBBC996AD91955, 0x10D3191310D310D3,  // 0x0000AA58 
	0x10D310D310D110D3, 0x1913191319131913, 0x19151915191510D3, 0x10D3191319131913,  // 0x0000AA78 
	0x10D310D310D310D3, 0x10D110D319131913, 0x1913191319151915, 0x19151915191310D1,  // 0x0000AA98 
	0x1913195519151913, 0x19131955195510D1, 0x10CF10D110D11915, 0x215710D119152157,  // 0x0000AAB8 
	0x115529979BD95A9B, 0x31DBB49DCCDB421D, 0x62D993994A571113, 0x18D310D310D31913,  // 0x0000AAD8 
	0x191310D310D110D1, 0x1913191319131913, 0x19131913191310D1, 0x10D110D3191310D3,  // 0x0000AAF8 
	0x10D31913191310D3, 0x10D110D319131913, 0x1913191319131913, 0x1913191319131913,  // 0x0000AB18 
	0x1915191519151915, 0x19151955191310D1, 0x10D110D119132157, 0x1955191321571955,  // 0x0000AB38 
	0x11552995C4D98B59, 0x299BBC9B3A1F31DB, 0x19156AD76AD71115, 0x1913191319131913,  // 0x0000AB58 
	0x1913191310D310D3, 0x10D3191319131913, 0x191310D3191310D3, 0x10D3191319131913,  // 0x0000AB78 
	0x1913191319131913, 0x10D310D310D31913, 0x19131913191310D3, 0x19131913191310D3,  // 0x0000AB98 
	0x1913191519151955, 0x1915191310D110D1, 0x10D3191319551957, 0x1915195519571915,  // 0x0000ABB8 
	0x11556AD78357BC99, 0x7B5BD51B421F2999, 0x219952576AD51155, 0x1915191519151913,  // 0x0000ABD8 
	0x19131913191310D3, 0x10D110D110D11913, 0x19151913191310D3, 0x1913191519151915,  // 0x0000ABF8 
	0x1915191319131913, 0x191310D310D110D1, 0x10D1191319151913, 0x1913191319131913,  // 0x0000AC18 
	0x1913191519551955, 0x191310D110D110D1, 0x1913191519551915, 0x1913195519151913,  // 0x0000AC38 
	0x1155939929997B17, 0xBC59F599421F2999, 0x21577B1973191155, 0x19131913191310D3,  // 0x0000AC58 
	0x1913191319131913, 0x191310D110D110D3, 0x19131915191310D1, 0x10D3191319131915,  // 0x0000AC78 
	0x191310D319131913, 0x1913191310D310D1, 0x10D1191319131915, 0x1913191319131915,  // 0x0000AC98 
	0x1915195519551913, 0x10D110D110D110D1, 0x1913191519131913, 0x1955191319131955,  // 0x0000ACB8 
	0x11557B1721571915, 0x8B99F59939DB3199, 0x2157BC575A991155, 0x191318D310D110D1,  // 0x0000ACD8 
	0x10D1191319131913, 0x1913191319131913, 0x19131913191310D3, 0x10D310D319131913,  // 0x0000ACF8 
	0x10D110D110D11913, 0x1913191319131913, 0x1913191319131913, 0x1913191519551955,  // 0x0000AD18 
	0x19571955191310D1, 0x10D3191319131913, 0x1913191319131913, 0x1915191319131915,  // 0x0000AD38 
	0x11155A5521572157, 0x4A15D5198B5B31DB, 0x5A99BC5731991113, 0x10D110D110D110D1,  // 0x0000AD58 
	0x10D3191319131913, 0x19131913191310D3, 0x10D110D119131913, 0x191310D310D110D1,  // 0x0000AD78 
	0x10D110D110D31913, 0x1913191319131913, 0x191310D310D110D1, 0x1913195521571955,  // 0x0000AD98 
	0x1955191310D110D1, 0x10D1191319151913, 0x10D310D119131913, 0x1913191319131913,  // 0x0000ADB8 
	0x11555A5529132957, 0x3997A3D98B595259, 0x421B525B299910D3, 0x10D1109110D110D3,  // 0x0000ADD8 
	0x1913191319131915, 0x19151915191310D3, 0x10D110D319151913, 0x191310D110CF1091,  // 0x0000ADF8 
	0x10D110D319131913, 0x1913191519151915, 0x191310D110D110D3, 0x1915195721571915,  // 0x0000AE18 
	0x191310D110D110D1, 0x1913191319131915, 0x191310D319131913, 0x10D31913191310D3,  // 0x0000AE38 
	0x11552957211341D9, 0x4A1941D59BD98B99, 0x421B31DB21151113, 0x10D110D110D31913,  // 0x0000AE58 
	0x1913191319151955, 0x1955191519151915, 0x1915195519551915, 0x10D310D110D110D1,  // 0x0000AE78 
	0x1913191319131913, 0x1915195519551915, 0x1915191519151955, 0x1955195519131913,  // 0x0000AE98 
	0x191310D110D31913, 0x195510D110D11913, 0x19131913191310D1, 0x1913191310D11913,  // 0x0000AEB8 
	0x1955211529557B19, 0x525B421D4219C4DB, 0x8B5931D929571913, 0x18D3191319131913,  // 0x0000AED8 
	0x1913191319151915, 0x1915191519151915, 0x19151955195510D3, 0x10D110D319131913,  // 0x0000AEF8 
	0x1913191319131913, 0x1915191519151915, 0x1915191519151955, 0x1955191319131913,  // 0x0000AF18 
	0x10D1191319552157, 0x195510D310CF10D1, 0x10D11913191310D1, 0x10D1191310D110D1,  // 0x0000AF38 
	0x191321159BD9AC59, 0x3A1D39DD39DBCCD9, 0x9BD9295729571913, 0x10D3191319131913,  // 0x0000AF58 
	0x1913191310D310D3, 0x1913191319131913, 0x1915195519551913, 0x1913191319131913,  // 0x0000AF78 
	0x1913191319131913, 0x10D310D319131913, 0x1913191319151955, 0x1955191319131913,  // 0x0000AF98 
	0x1913191319551955, 0x1913191319131913, 0x10D1191319151913, 0x1913191519131913,  // 0x0000AFB8 
	0x19552957D51972D5, 0x319B319B5A9B9B95, 0x8B55219929571913, 0x10D3191319131913,  // 0x0000AFD8 
	0x1913191310D110D1, 0x10D3191319131913, 0x1913191319131915, 0x1915191519131913,  // 0x0000AFF8 
	0x1913191319131913, 0x10D110D110D31913, 0x1913191319131913, 0x1913191319131913,  // 0x0000B018 
	0x1915191519131913, 0x1913191319551957, 0x1913191319131913, 0x1915191319131915,  // 0x0000B038 
	0x219731DBA3D72157, 0x31DB425F835DBC57, 0x8B57191529991915, 0x10D1191319131913,  // 0x0000B058 
	0x1913191310D310D1, 0x10D11913191310D1, 0x10D110D119131915, 0x1915191319131913,  // 0x0000B078 
	0x1913191319131913, 0x10D310D110D11913, 0x191310D110D110D1, 0x1913191319131913,  // 0x0000B098 
	0x1913191310D11913, 0x10D1191319552157, 0x1955191310D110D1, 0x191310D110D11913,  // 0x0000B0B8 
	0x195521158B575257, 0x31DD52A3AC17DD19, 0x73178B5721571955, 0x10D3191310D310D1,  // 0x0000B0D8 
	0x1913191519151913, 0x10D110D110D110D3, 0x19131913191310D3, 0x10D3191319131913,  // 0x0000B0F8 
	0x10D110D319151915, 0x1915191310D110D1, 0x10D110D319131913, 0x191310D310D110D1,  // 0x0000B118 
	0x10D110D310D110D1, 0x19131915191310D3, 0x1915191519131913, 0x1915191319131915,  // 0x0000B138 
	0x111519155A558B97, 0x421F731BB45939DD, 0x215772D54A151115, 0x1913191319131913,  // 0x0000B158 
	0x1913191310D110D1, 0x10D3191319131913, 0x1913191319131915, 0x1915191519131913,  // 0x0000B178 
	0x1913191319131913, 0x10D110D110D31913, 0x1913191319131913, 0x19131913191310D1,  // 0x0000B198 
	0x10D110D110D110D1, 0x19131955191310D1, 0x10D3191319131913, 0x1913191319131913,  // 0x0000B1B8 
	0x111529572157AC19, 0xCCDBC499BC9D2999, 0x319949D339D51115, 0x1913191319131913,  // 0x0000B1D8 
	0x1913191310D310D1, 0x10D11913191310D1, 0x10D110D119131915, 0x1915191319131913,  // 0x0000B1F8 
	0x1913191319131913, 0x10D310D110D11913, 0x191310D110D110D1, 0x10D31913191510D1,  // 0x0000B218 
	0x10D1191310D310D3, 0x1915191310D310D3, 0x10D3191319151913, 0x1913191519131913,  // 0x0000B238 
	0x111318D331995217, 0x8B59DD1BBC993199, 0x31DB295539D31115, 0x1913191310D310D1,  // 0x0000B258 
	0x1913191519151913, 0x10D110D110D110D3, 0x19131913191310D3, 0x10D3191319131913,  // 0x0000B278 
	0x10D110D319151915, 0x1915191310D110D1, 0x10D110D319131913, 0x10D1191310D310D1,  // 0x0000B298 
	0x10D1191319551913, 0x191510D110D11913, 0x1913191519151915, 0x1955191519151955,  // 0x0000B2B8 
};

u64 _ganontikasonogo_room_0_tex_0000B2D8[] = 
{
	0x394F394F314F314F, 0x310D394D18C9394D, 0x0087394F394D394D, 0x290B310B310B310D,  // 0x0000B2D8 
	0x310D290B20CB290D, 0x394D394D394F08C9, 0x08C9310B499149D1, 0x3991310D290D394F,  // 0x0000B2F8 
	0x2089208918C92089, 0x1889208918C90045, 0x008710C908C7210B, 0x20CB294B28CB290B,  // 0x0000B318 
	0x310B20CB310D418F, 0x20C920C920C908C7, 0x088920C9394D290B, 0x20CB28CB20C928CB,  // 0x0000B338 
	0x210F295131932151, 0x110D10CB08CB090D, 0x115131931991110D, 0x08C9088710891089,  // 0x0000B358 
	0x10C9190B18CB190B, 0x110D08D1090F090D, 0x110D00C908C900C9, 0x0089008708C910C9,  // 0x0000B378 
	0x51CD5A556A977AD9, 0x62556A974A13298F, 0x41D34A1372996A97, 0x214F52154A132991,  // 0x0000B398 
	0x08CB20CB52136255, 0x72D96255298F5A55, 0x41D162995A155255, 0x51D372D951D318C9,  // 0x0000B3B8 
	0x49916299394F394D, 0x499151D349D3314D, 0x218F418F418F49D1, 0x6255418F49D16255,  // 0x0000B3D8 
	0x110D518B61CD49D3, 0x310B314D398F49D1, 0x394F394D418F51D3, 0x49CF51D349CF10C9,  // 0x0000B3F8 
	0x4A155259418F314D, 0x394F4991394D294F, 0x214D214D394D418F, 0x49D1394D419149D1,  // 0x0000B418 
	0x18C9290D318F418F, 0x39D3418F310D418F, 0x314D394F49914991, 0x418F4991418F10C9,  // 0x0000B438 
	0x41D33191294D394F, 0x49D1625549D149D1, 0x190B3191210B210B, 0x3191210B290D3191,  // 0x0000B458 
	0x210B49D3314D418F, 0x39D3394D294D4991, 0x394D3191394D418F, 0x418F418F418F190B,  // 0x0000B478 
	0x318F214D318F418F, 0x499151D349D1418F, 0x210B294D290D290D, 0x39D1290D294D39D1,  // 0x0000B498 
	0x18C9418F314D418F, 0x39D3418F394F4991, 0x418F3991394F314D, 0x418F314D418F10C9,  // 0x0000B4B8 
	0x4A1539CF298D418F, 0x418F49D1418F394F, 0x20CB0947290D394D, 0x318F210D314D3191,  // 0x0000B4D8 
	0x18C9318F210B3991, 0x319149D3418F5A13, 0x49913991394D290B, 0x49D1290B49D11109,  // 0x0000B4F8 
	0x51D34991298B394F, 0x419149D1418F394F, 0x310D394F394F294D, 0x298F310D314D318F,  // 0x0000B518 
	0x18C949D1394D294F, 0x49D1418F499151D3, 0x418F4991290B310D, 0x4191314D398F210D,  // 0x0000B538 
	0x41D151D31949394D, 0x4191394F394D310D, 0x310D210B18CB194B, 0x214D18C9194D298F,  // 0x0000B558 
	0x08C9398F3993314F, 0x398F398F3991318F, 0x418F49D3394F290D, 0x318F310D314F08C7,  // 0x0000B578 
	0x214F49911909394D, 0x398F394D394D290B, 0x290D190B11491949, 0x298D0909194B3991,  // 0x0000B598 
	0x0087290D41D3314F, 0x399139D141D34991, 0x394F394D418F310D, 0x39D3314F31D108C5,  // 0x0000B5B8 
	0x190D5213394F418F, 0x49D3418F394F310D, 0x310D290B0907210B, 0x314D090920CB394F,  // 0x0000B5D8 
	0x0087290D39934191, 0x499149914191418F, 0x4991394D290D394D, 0x418F310D394D210D,  // 0x0000B5F8 
	0x108749913991394D, 0x2191290B290B210B, 0x210B290B190B210B, 0x310D1909210B310D,  // 0x0000B618 
	0x0047110D294F210D, 0x39D3318F418F418F, 0x394F418F214D314F, 0x20CB314F18C9210D,  // 0x0000B638 
	0x0047310D39913191, 0x39933993314D28CB, 0x290B290B18891089, 0x20C91889108920C9,  // 0x0000B658 
	0x0047110D314D294D, 0x394D210B20C920C9, 0x20CB20C920C9310D, 0x310D290D310D18C9,  // 0x0000B678 
	0x08CB190D190B08CB, 0x190B18CD090B110B, 0x090908C910C908C9, 0x08CB10C910C910CB,  // 0x0000B698 
	0x20CD210F110F114D, 0x08C900C908C900C9, 0x10C918CB18C910C9, 0x10C910C910C918CB,  // 0x0000B6B8 
	0x831B39D15A5572D9, 0x6A9752135A156255, 0x6A975213290D418F, 0x625741D3521549D3,  // 0x0000B6D8 
	0x194D41D362575255, 0x5255625739D141D3, 0x4A151111394F41D1, 0x3991525552557297,  // 0x0000B6F8 
	0x5A13398F521349D1, 0x418F394D418F314D, 0x521349D118C949D1, 0x5A9349D1294D394F,  // 0x0000B718 
	0x418F418F49D1418F, 0x418F49D1418F5A15, 0x7AD9310D49CD418F, 0x499149D149D149D3,  // 0x0000B738 
	0x314D290D290D190B, 0x210B190B110B290D, 0x310D310D10C949D3, 0x51D34991210B210B,  // 0x0000B758 
	0x20CB290D394F20CB, 0x290D394F418F314D, 0x418F18C918CB3991, 0x394F310D418F398F,  // 0x0000B778 
	0x214D218D190B190B, 0x190911091909290D, 0x18C9290B08C9314D, 0x4991394D418F394D,  // 0x0000B798 
	0x214D290B294D214D, 0x290B314D41D1290D, 0x41D318C9290B398F, 0x418F290B290D210B,  // 0x0000B7B8 
	0x521551D349D3214D, 0x294D210B09070907, 0x0909194B10C9398F, 0x49D14991394F290B,  // 0x0000B7D8 
	0x1109314D41D1190B, 0x394F41D149D14191, 0x52551909210B3993, 0x318F210B314D314D,  // 0x0000B7F8 
	0x314D49914991418F, 0x394F398D290B214B, 0x294D198B08C9418F, 0x418F394F394D310D,  // 0x0000B818 
	0x394F310D294D394F, 0x310D294D398F314D, 0x41D318C9394F3993, 0x294F4191521541D1,  // 0x0000B838 
	0x314D419149D1498F, 0x394D394D394D210B, 0x314D1109008939D5, 0x394D314D310D314D,  // 0x0000B858 
	0x210B1109190B210B, 0x1109190B394F298D, 0x399108C93991210D, 0x314F314F3991398F,  // 0x0000B878 
	0x418F418F5213418F, 0x394D314D290B210B, 0x314D290D08C941D1, 0x394D294D310D310D,  // 0x0000B898 
	0x210B1109210D210B, 0x1109210D294D18CB, 0x210D00C7318F28CB, 0x4191310D394F394F,  // 0x0000B8B8 
	0x394F394F418F49D3, 0x394F49D1394F294D, 0x290B318F0087294F, 0x290B210D210B18CB,  // 0x0000B8D8 
	0x20CB20C920C920CB, 0x20C920C9210B18C9, 0x20CB00C72191294D, 0x314D20CB20CD394D,  // 0x0000B8F8 
	0x394D394F418F4191, 0x394F418F394F210B, 0x20C920CB0087290D, 0x290B290D290B20CB,  // 0x0000B918 
	0x20CB310D210B20CB, 0x310D210B310D290D, 0x290D00C739913991, 0x210D394F41913991,  // 0x0000B938 
	0x394D314D394F294D, 0x394D394D210B210B, 0x210B210B008720CB, 0x390D20CB310D20CB,  // 0x0000B958 
	0x20CB310D394D20CB, 0x310D394D294D394F, 0x18CB00C7110B210D, 0x294D394F41914991,  // 0x0000B978 
	0x10CB10C920CB20CB, 0x28CB28CB210D310B, 0x190B20CB00C710C9, 0x290D210D214D210D,  // 0x0000B998 
	0x214D294F214F214D, 0x294F214F10CB190D, 0x10C900C7110B10CB, 0x18CB210B210B210B,  // 0x0000B9B8 
	0x0087088708C70889, 0x08C910C908C90087, 0x00C7008700C900C9, 0x08C910C920C910C9,  // 0x0000B9D8 
	0x20C920C9088920C9, 0x20C9088900C70087, 0x00C700C700C908C9, 0x08CB08C7088708C7,  // 0x0000B9F8 
	0x521541D1394F314D, 0x210B290D294F39D5, 0x39D539D539D53A15, 0x51D35A1562557A95,  // 0x0000BA18 
	0x5A116A576255394D, 0x218D5A135A554213, 0x42135A5752155213, 0x394F314D294D4A13,  // 0x0000BA38 
	0x499149D151D351D3, 0x6A97194F52135A15, 0x420D5A15420D418F, 0x4991418F394F394D,  // 0x0000BA58 
	0x310D394D418F418F, 0x21095A57399149D1, 0x4991398F49914991, 0x49D1418F394D394F,  // 0x0000BA78 
	0x394F310D41CD3A13, 0x6A97310D5213314D, 0x314D314D314D314D, 0x314D210B290D310B,  // 0x0000BA98 
	0x310D314D310D394D, 0x19095A15294D314D, 0x210D310D3993394F, 0x3991394D394D394D,  // 0x0000BAB8 
	0x4991394F310D294F, 0x520D210949D1310D, 0x418F310D418F314D, 0x418F41D1314D310D,  // 0x0000BAD8 
	0x310D310B394D4A0D, 0x11074991290D210B, 0x394D394D394F394F, 0x394D394D394D394F,  // 0x0000BAF8 
	0x418F314D290D210D, 0x419110C9418F290B, 0x418F290B418F49D1, 0x418D394F394D394D,  // 0x0000BB18 
	0x310D314D310D49CB, 0x08C749D1290B310D, 0x394D394D394F418F, 0x418F394D418F394D,  // 0x0000BB38 
	0x418F398F294D290D, 0x418F0887394D310D, 0x394D310D394D394B, 0x290B394B394D314D,  // 0x0000BB58 
	0x394F394F394F394F, 0x110749CF310D310D, 0x394D394D394D394F, 0x394D394D394D394D,  // 0x0000BB78 
	0x418F394D418F418F, 0x394D0087394F28CB, 0x290B28CB290B290B, 0x310D290D290B394D,  // 0x0000BB98 
	0x394D394D418F310D, 0x110951CD394F314D, 0x310D394D310B314D, 0x310D394D394F418F,  // 0x0000BBB8 
	0x310D310B314D394F, 0x10C9190B314D10C9, 0x20C910C920C9394D, 0x20CB310B310D394D,  // 0x0000BBD8 
	0x394D310D418F418D, 0x08C9418F49CF394D, 0x394F49D1394D394D, 0x394F310D418F394D,  // 0x0000BBF8 
	0x310D310D310D314D, 0x08C9210D210B1909, 0x394D1909394D1909, 0x18C9290D310D498F,  // 0x0000BC18 
	0x418F4991394D418B, 0x00C7314D394F314D, 0x394D394D394D394D, 0x394F394D394F394F,  // 0x0000BC38 
	0x28CB20CB310D394F, 0x08C9294D314D418F, 0x398F394F398F394D, 0x1909394F314D3991,  // 0x0000BC58 
	0x414D414D394F190B, 0x00C7210D310D294D, 0x394D394D394D394D, 0x394D394F394F314D,  // 0x0000BC78 
	0x210B210B294D210D, 0x1089398F394D418D, 0x314D418D394D518B, 0x310D20C91909210B,  // 0x0000BC98 
	0x10C920C9210B18CB, 0x008710C9294F318F, 0x318F294F294D418F, 0x418F4191314D210B,  // 0x0000BCB8 
	0x08C9008900C90109, 0x10C920C9210B20C9, 0x290920C9290928CB, 0x10C700C7088708C9,  // 0x0000BCD8 
	0x08C908C900C908CB, 0x08C9090910C908C9, 0x08C7190B210D10C9, 0x18CB18CB18C908C9,  // 0x0000BCF8 
	0x394F3991418F398F, 0x51D36213394F290D, 0x10C90887088720C9, 0x190D110B394D51D5,  // 0x0000BD18 
	0x51D361CF62555215, 0x62574A1349D351D3, 0x4191418F394D10C9, 0x210B5A134991418F,  // 0x0000BD38 
	0x5A1351D351D35211, 0x418F394F52136255, 0x398F214B314D4A17, 0x5A1321094A516A97,  // 0x0000BD58 
	0x49D1218D214B214B, 0x210B314D190B210B, 0x394D49D1290B41CD, 0x39D1298F49D36255,  // 0x0000BD78 
	0x314D394D290D20CB, 0x20CB210B210B290D, 0x314F210D314D310D, 0x394F210939D1294D,  // 0x0000BD98 
	0x20CB20C9190B214D, 0x190B20CB290B310D, 0x310D419119095213, 0x398F214D294D394D,  // 0x0000BDB8 
	0x290D210B190B210B, 0x210B0947194B394F, 0x394F310B294D290D, 0x499120C93991290D,  // 0x0000BDD8 
	0x290B190918C9210B, 0x18C9110908C718C9, 0x190B49D3190B5A15, 0x314F294D210B210B,  // 0x0000BDF8 
	0x190B10C918C9210B, 0x20CB394D394D290D, 0x290D18C9210D310D, 0x499118C941D341D1,  // 0x0000BE18 
	0x394D294D10C9290D, 0x290B20CB090718C9, 0x190B394F10C751D3, 0x314D314D18C910C9,  // 0x0000BE38 
	0x190B18C9190B20CB, 0x210B210B08C910C9, 0x310D210D314D290D, 0x394F18C93991314D,  // 0x0000BE58 
	0x314D290D394D314D, 0x210B18C9190910C9, 0x210B18CB08894991, 0x394D210B18C91109,  // 0x0000BE78 
	0x190B10C911091109, 0x20CB10C9290D290D, 0x314D18CB290B10C9, 0x394F0087394D290B,  // 0x0000BE98 
	0x310D290B290B10C9, 0x10C910C919091109, 0x190B290B0087314D, 0x290B210B190B210B,  // 0x0000BEB8 
	0x310D10C9110908C9, 0x18C908C920C9210B, 0x190B210B10C90887, 0x294F09071909394D,  // 0x0000BED8 
	0x394D290B210D1109, 0x18C91109110908C9, 0x1109290B0047294B, 0x10C910C9310D394F,  // 0x0000BEF8 
	0x290D210B198D210B, 0x214D210B290B10C9, 0x110920CB08C708C7, 0x20C908C73991394D,  // 0x0000BF18 
	0x394D18C9290D210D, 0x310D310D11091109, 0x10C9290B0087394F, 0x314F210B20C918CB,  // 0x0000BF38 
	0x20CB20CB394F418F, 0x314F290D310D10C9, 0x10C910C908C708C7, 0x20CB0087210B394F,  // 0x0000BF58 
	0x290B290D298F310D, 0x10C918CB210B394F, 0x18C9394D00C9394F, 0x210B290D290D1949,  // 0x0000BF78 
	0x3991314F398F3191, 0x310D210D210D10C9, 0x2109290D394D0187, 0x1109004720C9394D,  // 0x0000BF98 
	0x314D318D294D210B, 0x290D18C9314D290D, 0x290B310D0907310D, 0x210B28CB394F4991,  // 0x0000BFB8 
	0x39D339D339D339D3, 0x39D3214D3151314D, 0x198D294D394D310D, 0x394D008718C9290B,  // 0x0000BFD8 
	0x110908C9290B1109, 0x08C908C708C9190B, 0x210B210B004708C7, 0x20CB290D314F398F,  // 0x0000BFF8 
	0x10CF110D10CB08C9, 0x08C708C718CB18C9, 0x290B18C910890887, 0x0087008708CB0889,  // 0x0000C018 
	0x10C910C900870087, 0x10C920C918C91089, 0x0887314D10CD090D, 0x090D08C9214D110F,  // 0x0000C038 
	0x4A134A1349D35213, 0x294D10C900C90087, 0x0087008710C9190B, 0x198D299162556253,  // 0x0000C058 
	0x620F6A11625539D1, 0x52155215318F18CB, 0x08CB52136A975215, 0x41D3214D4A135255,  // 0x0000C078 
	0x310D394F394F418F, 0x418F314F418F49D1, 0x08CD394F49D15A55, 0x6A973191399149D1,  // 0x0000C098 
	0x41D141D151D349D1, 0x49D1214D51D349CF, 0x210D51D3418F394D, 0x20CB290B294D418F,  // 0x0000C0B8 
	0x20CB210D290B310D, 0x49D349D162556255, 0x10CB5A13418F49D3, 0x418F210D210B210B,  // 0x0000C0D8 
	0x210B394D394F310D, 0x290B394D418F310D, 0x10895A13398F314F, 0x210D110B190B214D,  // 0x0000C0F8 
	0x318F398F418F49D1, 0x418F394F49D15A13, 0x210D41D34191394F, 0x314D290D314D310B,  // 0x0000C118 
	0x418F394F394F418F, 0x394F418F20CB394D, 0x0087394F210B314D, 0x294D290B210B310D,  // 0x0000C138 
	0x290B398F290B418F, 0x394D394F418F4A11, 0x210B314D290B210B, 0x18C918C920CB20CB,  // 0x0000C158 
	0x310D394F394F394F, 0x310D418F310D210D, 0x0045394F18CB190B, 0x210B210D20CB310D,  // 0x0000C178 
	0x310D394D394D418F, 0x394F4191314D49CF, 0x08C7394D294D210B, 0x190B20CB210B290B,  // 0x0000C198 
	0x394D290B310D290B, 0x210B290D210B210B, 0x0047394F18C9210B, 0x210D290B20C9290D,  // 0x0000C1B8 
	0x210B394F49914991, 0x3995521341D15211, 0x10C928CB20CB28CB, 0x310D290B290B210B,  // 0x0000C1D8 
	0x310B290B20C9310D, 0x290B210B314F210D, 0x0047418F210D310D, 0x210D20CB18C9210D,  // 0x0000C1F8 
	0x20CB310D521349D1, 0x418F49D1418F39CD, 0x10C7394D290B310D, 0x290D310D310D394F,  // 0x0000C218 
	0x418F418F394F418F, 0x49D1394F190B214F, 0x10C94991394F394F, 0x290B18C91109210B,  // 0x0000C238 
	0x314F398F294F394D, 0x310D310D418F218B, 0x08C7394D398D310D, 0x394D210B294D214B,  // 0x0000C258 
	0x290D418F418F294D, 0x3991418F214D394F, 0x10CD51D3418F394F, 0x290B210D194B214D,  // 0x0000C278 
	0x210B418F310D394D, 0x310D394F398D394D, 0x00C7310D290B394D, 0x310B310D11091109,  // 0x0000C298 
	0x10C9294D290D394D, 0x0909290D290D310D, 0x08C7394D210B394F, 0x318F294F214F394D,  // 0x0000C2B8 
};

u64 _ganontikasonogo_room_0_tex_0000C2D8[] = 
{
	0x841FAD67CE6FBDEB, 0xAD67AD2783DD41CF, 0x314D398D314D5AD7, 0x5295314D398D4A11,  // 0x0000C2D8 
	0x4A1141CF41CF41CF, 0x5A955A9562D75A95, 0x5A9541CF398D314B, 0x314D314B314D398D,  // 0x0000C2F8 
	0x4211398D314B41CF, 0x398D314B314D314B, 0x314D398D4211398D, 0x314B398D314B398F,  // 0x0000C318 
	0x7B9D398F314D41CF, 0x398F314D290B310B, 0x20C75AD5BDEBD6AF, 0xC62DB5A9BDEB7359,  // 0x0000C338 
	0xAD67BDEBB5A9C62D, 0xD6AFBDEB5AD520C7, 0x314B290B314D398F, 0x41CF314D398F4A11,  // 0x0000C358 
	0x4A5141CF62D55AD7, 0x6B1952534A11398D, 0x398F4A115AD54A53, 0x314B20C7314B290B,  // 0x0000C378 
	0x20C920C9290B4A11, 0x5AD54A53314B20C7, 0x314B290B20C920C9, 0x290B314D398D314D,  // 0x0000C398 
	0x4A11314D398D314D, 0x314D314D20C9314D, 0x314B739BCE6FDEF3, 0xDEF3D6B1CE6F83DD,  // 0x0000C3B8 
	0xCE6DCE6FB5A98C1F, 0x8C2183DD5A95314B, 0x314D28C9398D314D, 0x314D398D41CF5253,  // 0x0000C3D8 
	0x4A115253841F41CF, 0x398D314B290B290B, 0x290B314D4A118C1F, 0x7B9B314B314D20C9,  // 0x0000C3F8 
	0x290920C9290B314D, 0x4A118C1F7B9B314B, 0x314D20C9290920C9, 0x290B290B398D5253,  // 0x0000C418 
	0x739B9CE352535A95, 0x52535AD75253398D, 0x6B59AD279CA3E733, 0xDEF1CE6DB5A98C61,  // 0x0000C438 
	0xE733B5A9CE6DDEF1, 0xE733B5A9AD276B59, 0x398D52955A954A11, 0x5293525352535A95,  // 0x0000C458 
	0x7B9BA52573595253, 0x6B595A95314D4A11, 0x62D573595A954A11, 0x8C5F6B59398D5295,  // 0x0000C478 
	0x6B59739B7BDD7359, 0x5A954A1183DD6317, 0x398D52956B59739B, 0x7BDD5A954A517B9B,  // 0x0000C498 
	0xCE6D9CE552515A93, 0x4A11525352536B19, 0xB5A9C62BBDA9BDEB, 0xAD69C62DE7338C21,  // 0x0000C4B8 
	0xBDEB94A1841F7B9B, 0xAD27946194A3A4E5, 0x62D7525352534A11, 0x529341CF4A1162D7,  // 0x0000C4D8 
	0x841FB5A94A515251, 0x63175251314D5A95, 0x52535A935AD54A11, 0x6B19AD6752535253,  // 0x0000C4F8 
	0x62D76B596B175A93, 0x5A934A115AD59CE5, 0x5253525362D76B59, 0x6B175A95739B7B9B,  // 0x0000C518 
	0xBDEB739B62D55293, 0x4A0F4A0F41CD7BDD, 0xDF33BDEBCE6DF7B7, 0xF7F7B5A9BDEB8C61,  // 0x0000C538 
	0xE735CE6FDEF1F7F7, 0xF7B7EF75E733BDEB, 0x6B59398D4A0F4A0F, 0x529362D55A956B19,  // 0x0000C558 
	0x8C61B5A96B5941CF, 0x41CF398D310B398D, 0x398D314B398D290B, 0x841FBE2D6B1741CD,  // 0x0000C578 
	0x394B314B398D314B, 0x398D290B841FBE2D, 0x6B1741CD394B314B, 0x418D398D52539CA3,  // 0x0000C598 
	0xBDEB8C1F8C618C5F, 0x841F94A39CA3AD67, 0xDEF1E733BDEBB569, 0xBDEBCE6FCE6F7B9D,  // 0x0000C5B8 
	0xE733BDEBA4E5E733, 0xD66FBDEBE733DEF1, 0xAD679CA394A3841F, 0x8C5F8C6194A383DD,  // 0x0000C5D8 
	0x8C61B5A99CE37359, 0x5A95318D5A954211, 0x6B1763175A957BDD, 0xAD67C62D9CE3739B,  // 0x0000C5F8 
	0x5A95290B52536317, 0x5A957BDDAD67C62D, 0xAD678C616B19290B, 0x5253739BA525C62D,  // 0x0000C618 
	0xC62DB5A9BDEBB5A9, 0xB5A9B5A9BDEBAD27, 0xE733E775DF33E733, 0xDEF3BDEBDEF18C1F,  // 0x0000C638 
	0xDEF3DEF1B5A9AD67, 0xE733DF33E775E733, 0xAD27BDEBB5A9B5A9, 0xB5A9BDEBBDEBC62D,  // 0x0000C658 
	0xBDEB9CA39CE3A525, 0x9CE594A3AD67A525, 0xB5A9B569BDEBAD69, 0xAD679CE39CE3AD67,  // 0x0000C678 
	0xAD69B5A9B5699CE3, 0xAD27B5A9C62DC62D, 0xAD27BDEBBDEBBDEB, 0xB5A9C62DBDEBCE6F,  // 0x0000C698 
	0xB5ABBDEB739B6B19, 0x4A53841F9CA3AD67, 0xE733EF75AD679461, 0x94A3AD27BDEB841F,  // 0x0000C6B8 
	0xB5A9A525AD279CE5, 0x841FCE6FEF75E733, 0xAD679CA3841F4A53, 0x6B19739BA525C62D,  // 0x0000C6D8 
	0xC62DB5A994A37BDD, 0x735B7B9D739B83DD, 0x8C6194A394A1A4E5, 0x9CE373595A95318D,  // 0x0000C6F8 
	0x5A9541CF62D76317, 0x5A957BDDAD67C62D, 0xAD678C616B19290B, 0x5253739BA525C62D,  // 0x0000C718 
	0xC62DB5A96B1762D5, 0x41CD41CF41CD6B17, 0xD6B1CE6FE733CE6F, 0x9CE3841FAD67841F,  // 0x0000C738 
	0x841F735B63178C1F, 0xAD67BE2BCE6FD6B1, 0x6B1741CD41CF41CD, 0x62D56B1762D7A4E5,  // 0x0000C758 
	0xBDEB8C615A95398D, 0x41CD41CF4A515A95, 0x5AD573598C61B5A9, 0x6B5941CF41CF398D,  // 0x0000C778 
	0x310B398D398D314B, 0x398D290B841FBDEB, 0x6B1741CD394B314B, 0x418D398D52539CA3,  // 0x0000C798 
	0xBDEB8C1F62D56B17, 0x6B5962D752535253, 0xD6AFD6B1DEF3EF75, 0xE733B5A9AD678C1F,  // 0x0000C7B8 
	0xBDAB94A19CE394A1, 0x7B9D7BDD7BDDA4E5, 0x52534A1162D76B59, 0x6B1762D5739B9461,  // 0x0000C7D8 
	0xA5255A9552955253, 0x525341CF52934A11, 0x4A1162D77B9BA525, 0x4A514A5163175251,  // 0x0000C7F8 
	0x314D5A9552535A93, 0x5AD54A116B19AD27, 0x5253525362D76B59, 0x6B175A95739B7B9B,  // 0x0000C818 
	0xBDEB739B6B197BDD, 0x739B6B595295398D, 0x94A3CE6FC62DEF75, 0xEF77E733B5A98C1F,  // 0x0000C838 
	0xDEF3B5A9E733EF77, 0xC62DC62D83DD83DD, 0x398D525363176B19, 0x735B62D75A9562D5,  // 0x0000C858 
	0x62D763176B196B59, 0x5A9552535A955253, 0x52535293735994A3, 0x62D74A116B595A95,  // 0x0000C878 
	0x314D4A1162D57359, 0x5A954A1194617B9B, 0x398D52956B59739B, 0x7BDD5A954A517B9B,  // 0x0000C898 
	0xCE6D9CE552934A11, 0x20C9290920C95253, 0x7BDDCE6FC62DC5EB, 0xCE6F9CA3B569841F,  // 0x0000C8B8 
	0xD6B1B569B5A9F7B7, 0xE733C62DB5AB6317, 0x4A1120C929092909, 0x41CF5253314B314B,  // 0x0000C8D8 
	0x314B290B314D398D, 0x398D314D314D398D, 0x41CF4A1142115AD5, 0x83DD41CF314D314B,  // 0x0000C8F8 
	0x290B290B290B314D, 0x4A118C1F8C1F314B, 0x314D20C9290920C9, 0x290B290B398D5253,  // 0x0000C918 
	0x739B9CE3314D290B, 0x20C941CF5A955A95, 0x739B841F94A3B5A9, 0xC62DA5259CA38C61,  // 0x0000C938 
	0xE733B569C62BE735, 0xD6F1AD699CE3735B, 0x52935A9539CF20C9, 0x290B314D314D314D,  // 0x0000C958 
	0x4A11314D398F398D, 0x314D398F398F314D, 0x398F4A114A514A11, 0x7B9B5A956B195253,  // 0x0000C978 
	0x4A11398D398F4A11, 0x5AD55A956B5920C7, 0x314B290B20C920C9, 0x290B314D398D314D,  // 0x0000C998 
	0x4A11314D398D310B, 0x314D41CF52936B19, 0xA525C62DAD67B5A9, 0xA525C62D9CE57B9B,  // 0x0000C9B8 
	0xA4E58C1FC62DBDEB, 0xD6B1C62DC62D83DD, 0x52954A1141CF314D, 0x314B314D314B398F,  // 0x0000C9D8 
	0x7B9D398F41CF398F, 0x314D5A955295314D, 0x398D4A114A1141CF, 0x6B1741CF52535253,  // 0x0000C9F8 
	0x62D75A955A9541CF, 0x398D62D75293314B, 0x314D398D4211398D, 0x314B398D314B398F,  // 0x0000CA18 
	0x7B9D398F398D4A11, 0x62D75253398D4A13, 0x5A95CE6FB5A9E733, 0xAD69BDEBAD278C61,  // 0x0000CA38 
	0xDF33AD27BDEBAD69, 0xE733B5A9BDEB5AD7, 0x4A13394D4A115A95, 0x41D1398D290B5295,  // 0x0000CA58 
	0x9CE54A11398F398D, 0x5295739B62D7314D, 0x20C920C929092909, 0x6B19398D290920C9,  // 0x0000CA78 
	0x290B41CF314B20C9, 0x20C96B17398D290B, 0x525341CF525362D7, 0x4A11398D290B5295,  // 0x0000CA98 
	0x9CE54A1141CF398F, 0x314B529352534A11, 0x7BDD94A1AD69C62D, 0xC62DA525AD678C61,  // 0x0000CAB8 
	0xE733AD67C62BE733, 0xB5A98C1F73596B59, 0x41D14A1141D1314B, 0x39CF41CF398F735B,  // 0x0000CAD8 
	0x398D314B398D314B, 0x398D4211398D314D, 0x314B314D314B5A95, 0x6317314B398D4211,  // 0x0000CAF8 
	0x398D314D314B314D, 0x314B6B5941CF5A95, 0x5A9562D75A955A95, 0x41CF41CF41CF4A11,  // 0x0000CB18 
	0x4A11398D398F398D, 0x314D398D41CF7B9B, 0xB5A9A525841FAD27, 0xA4E594A1AD2783DD,  // 0x0000CB38 
	0xC66DAD27739B7359, 0x7BDD735B8C618C61, 0x62D7398F398F314B, 0x398D398F314D4A11,  // 0x0000CB58 
	0x314D398D314D290B, 0x20C920C9290B314B, 0x20C7314B6B597B9D, 0x4A11290B20C920C9,  // 0x0000CB78 
	0x290B314B20C7314B, 0x5A95735B4A11398F, 0x398D4A1152536B19, 0x5AD762D541CF4A51,  // 0x0000CB98 
	0x4A11398F9CA320C9, 0x290B20C9290B6317, 0x94A1946183DD94A1, 0xAD67841F94A1735B,  // 0x0000CBB8 
	0x9CA383DD739B7BDD, 0x73595AD5525362D7, 0x4A11290B20C9290B, 0x20C98C619CE3739B,  // 0x0000CBD8 
	0x5253398D290B290B, 0x20C9290920C9314D, 0x314B83DD8C614A11, 0x314D290B20C92909,  // 0x0000CBF8 
	0x20C9314D314B7B9B, 0x8C615253314D290B, 0x290B290B314B398D, 0x41CF841F52534A11,  // 0x0000CC18 
	0x525341CF7B9D6B5B, 0x63195A95631762D7, 0xAD67BDEBBDEBCE6F, 0xEF75BDEBB5A983DD,  // 0x0000CC38 
	0xCE6F9CE39CE5EF75, 0xBDEBAD67BDEBAD67, 0x6317529352536319, 0x6B5B735B9CE5CE6D,  // 0x0000CC58 
	0x7B9B4A515A957BDD, 0x739B6B595295398D, 0x735B8C614A115A95, 0x73597BDD739B6B59,  // 0x0000CC78 
	0x5295398D6B598C5F, 0x4A115A95735962D5, 0x4A11314D5A956B59, 0x52537359A5257B9B,  // 0x0000CC98 
	0x5A95525363175A95, 0x52935A936B576B17, 0x739BBDEBC62DDEF3, 0xCE6FB5A9CE6D841F,  // 0x0000CCB8 
	0xD6AFCE6DB5A9BDEB, 0xDEF3C62DAD677BDD, 0x6B176B574A114A11, 0x5A9563176B59BDEB,  // 0x0000CCD8 
	0x7B9B739B5A956B17, 0x6B5962D752535253, 0xAD676B194A115AD5, 0x5A936B176B5962D7,  // 0x0000CCF8 
	0x52535253AD676B19, 0x4A115AD55A935253, 0x5A95314D52516317, 0x52514A51B5A9841F,  // 0x0000CD18 
	0x62D752535293314B, 0x398D39CD41CD4A51, 0x94619CA3AD27CE6D, 0xBDEBAD69BDEB94A3,  // 0x0000CD38 
	0xCE6FBDEB94A38C61, 0x841F841F9CA37BDD, 0x4A5141CD39CD398B, 0x314B52938C1FBDEB,  // 0x0000CD58 
	0x9CA35253398D418D, 0x314B394B41CD6B59, 0xBDEB841F290B398D, 0x314B418D314B394B,  // 0x0000CD78 
	0x41CD6B17BE2D841F, 0x290B398D314B398D, 0x398D310B398D41CF, 0x41CF6B59B5A99CA3,  // 0x0000CD98 
	0x841F6B19AD69AD69, 0x94A37BDD7BDD7BDD, 0x9CE5CE6FAD69E733, 0xE733AD67BDEB9461,  // 0x0000CDB8 
	0xC62DBDEB9CE3CE6F, 0xE733AD69AD677B9B, 0x6B596B597BDD94A3, 0x94A3735B9CA3C62D,  // 0x0000CDD8 
	0xC62DA525739B5253, 0x290B6B198C61AD27, 0xC62DAD677BDD5A95, 0x63175253290B6B19,  // 0x0000CDF8 
	0x8C61AD67C62DAD67, 0x7BDD5A9563176B17, 0x42115A95318D5A95, 0x7359AD67C62DB5A9,  // 0x0000CE18 
	0xA52594A3A4E5AD67, 0xAD67AD67B5A9BDEB, 0xC62DDEF1DEF3BDEB, 0xDEF3DEF1DEF194A1,  // 0x0000CE38 
	0xCE6FDEF1DEF1DEF3, 0xE733DEF3DEF1C62D, 0xBDEBB5A9AD67AD67, 0xAD67A4E58C1F9CE5,  // 0x0000CE58 
	0xCE6FBDEBC62DB5A9, 0xBDEBBDEBBDEBA525, 0xC62DC62DB5A9BDEB, 0xAD67B569B5A9AD69,  // 0x0000CE78 
	0xAD67AD67BDEBBDEB, 0xC62DBDEBB569B5A9, 0xB5A9AD67A525AD67, 0xB5A9AD67C62DBDEB,  // 0x0000CE98 
	0xC62DBDEBAD69AD69, 0x94A37BDD7BDD94A1, 0xBDEBC62DE733E733, 0xC62DC5EB94A36B59,  // 0x0000CEB8 
	0xAD27AD67C5EBE733, 0xE733E733C62DBDEB, 0x94A17BDD7BDD94A3, 0xAD69AD69B5A99461,  // 0x0000CED8 
	0x9461A525739B5253, 0x290B6B198C61AD27, 0xC62DAD677BDD5A95, 0x63176B1742115A95,  // 0x0000CEF8 
	0x318D5A957359AD67, 0xC62DB5A9A52594A3, 0x8C618C5F841F94A3, 0xAD69AD69B5A9C62D,  // 0x0000CF18 
	0xC62DA5255293314B, 0x398D39CD5AD36317, 0x63179461AD27AD67, 0x94A194A19CE383DD,  // 0x0000CF38 
	0xAD679CE3C62DAD67, 0xAD67AD2794616317, 0x63175AD339CD398D, 0x314B52938C1FBDEB,  // 0x0000CF58 
	0x9CA341CF398D418D, 0x314B394B41CD6B59, 0xBE2D841F290B398D, 0x314B398D398D310B,  // 0x0000CF78 
	0x398D398F398D6B59, 0xB5A99CA3841F6B19, 0x62D552934A0F4A0F, 0x41CF5AD58C61BDEB,  // 0x0000CF98 
	0xA4E562D763175A95, 0x52935A936B5783DD, 0xC62DA4E5841FA525, 0xAD69BDEB94A183DD,  // 0x0000CFB8 
	0x83DD94A1A525841F, 0xA5259CA38C617BDD, 0x73596B575A935293, 0x5A956317739BBDEB,  // 0x0000CFD8 
	0x7B9B63174A115A95, 0x6B5962D752535253, 0xAD676B1941CF5253, 0x52514A115253314D,  // 0x0000CFF8 
	0x5251631752514A51, 0xB5A9841F62D75253, 0x52515A934A115253, 0x529362D7735BB5A9,  // 0x0000D018 
	0x9461739B7B9D6B5B, 0x63195A9563175293, 0x739B6B198C5FA525, 0xAD67B5A9A5258C61,  // 0x0000D038 
	0xBDEBA525B5A9AD67, 0xA5257BDB6B195AD5, 0x42115A955A956319, 0x6B5B7B9D9CE5CE6D,  // 0x0000D058 
	0x7B9B4A515A9562D7, 0x63176B595253398D, 0x63177B9B4A115A95, 0x735962D54A11314D,  // 0x0000D078 
	0x5A956B5952537359, 0xA5257B9B5A955253, 0x52535A9552535AD7, 0x6B596B1963177B9B,  // 0x0000D098 
	0x739B63179CA320C9, 0x290B20C941CF5A95, 0x94A1A4E5A52583DD, 0x841F9CA3AD69841F,  // 0x0000D0B8 
	0xB5A9AD699CA3841F, 0x83DD7BDD6B1962D7, 0x4A11398F28C9290B, 0x20C99CA39CE3739B,  // 0x0000D0D8 
	0x5253398D290B290B, 0x2909290B20C9314D, 0x314B83DD8C614A11, 0x314D290B290B290B,  // 0x0000D0F8 
	0x314B398D41CF841F, 0x52534A11525341CF, 0x398D314D314D398D, 0x398D314D290B314B,  // 0x0000D118 
	0x314B314D398F398D, 0x314B5253631783DD, 0x52537BDD7BDD841F, 0x94A1AD279CA3841F,  // 0x0000D138 
	0xB5A99CA3AD27AD67, 0x9CA36B596B5941CF, 0x62D74A1141CF314B, 0x398D398F314D4A11,  // 0x0000D158 
	0x314D398D314D290B, 0x20C920C9290B314B, 0x20C7398F6B17735B, 0x4A11398F398D4A11,  // 0x0000D178 
	0x52536B195AD762D5, 0x41CF4A514A11398F, 0x314D41CF398F314D, 0x398D398F314D4A11,  // 0x0000D198 
	0x314D398D41CF39CF, 0x314D8C619CA394A1, 0x52537B9B94A1C62B, 0xCE6FD6B1B5698C1F,  // 0x0000D1B8 
	0xBDEBB569D6B1CE6F, 0xA52583DD7B9B4A11, 0x7359841F8C61314D, 0x39CF41CF398F7B9D,  // 0x0000D1D8 
	0x398F314B398D314B, 0x398D4211398D314D, 0x314B314D314B62D7, 0x63175A955A9562D7,  // 0x0000D1F8 
	0x5A955A9541CF41CF, 0x41CF4A114A11398D, 0x314D52955AD7314D, 0x39CF41CF398F7B9D,  // 0x0000D218 
	0x398F314B41CF398D, 0x52958C1F7B9B6B19, 0x5AD55AD56B177BDD, 0x8C219CA394616B19,  // 0x0000D238 
	0x8C1F94619CA38C21, 0x7BDD6B175AD55AD5, 0x6B197B9B8C1F5295, 0x398D41CF4A119CE5,  // 0x0000D258 
	0x5295290B398D4A11, 0x62D7525341CF5253, 0x290B290920C920C9, 0x314D398F41CF290B,  // 0x0000D278 
	0x20C92909398D41CF, 0x2909290920C920C9, 0x314D62D7739B5295, 0x398D41CF4A119CE5,  // 0x0000D298 
	0x5295290B314D5295, 0x5AD7314D398D314D, 0x41CF83DDAD27AD67, 0xBDEBCE6FAD67841F,  // 0x0000D2B8 
};

u64 _ganontikasonogo_room_0_tex_0000D2D8[] = 
{
	0x6319529352935AD3, 0x4A53208528C73949, 0x418B3107394B5A0F, 0x418B520B49CB51CD,  // 0x0000D2D8 
	0x49CB49CD4A0B520D, 0x41CB29072909418B, 0x39493107418B5A4F, 0x624F520D498B51CB,  // 0x0000D2F8 
	0x49CB5A0F628F624F, 0x39095A0F520D5A0F, 0x49CB418B290749CD, 0x72D15A4F62515A4F,  // 0x0000D318 
	0x624F5A4F49CB498B, 0x520D290739493949, 0x418B28C529071085, 0x739D52936B5B739D,  // 0x0000D338 
	0x8C6352935AD55AD5, 0x6B5B208529073107, 0x31492085290749CB, 0x5A0F520D5A4F624F,  // 0x0000D358 
	0x5A4D624D624F6A4F, 0x418B3949624F7AD1, 0x7A8F5A0D41493147, 0x51CB520D620F5A4D,  // 0x0000D378 
	0x520D520D418B398B, 0x39496291624F5A0F, 0x624F418B394972D3, 0x6AD15A4F6A915A4F,  // 0x0000D398 
	0x624F624F624F49CB, 0x6251414B51CD418B, 0x314B28C731474A95, 0x842152934A53739D,  // 0x0000D3B8 
	0x94A58C63739D739D, 0x6B5B188520C520C5, 0x2907210731495A0D, 0x418B5A0D520D520D,  // 0x0000D3D8 
	0x5A0D51CB520D3109, 0x28C5624D7A8F51CB, 0x61CD724F59CD4149, 0x3909390741893109,  // 0x0000D3F8 
	0x290728C929072907, 0x28C7498B5A0F5A4F, 0x49CD394949CB7B13, 0x628F520D5A0F5A0F,  // 0x0000D418 
	0x5A0F5A4F520D520D, 0x520D314928C72907, 0x28C7208528C5739D, 0x842152934A53739D,  // 0x0000D438 
	0x842184218421739D, 0x10851885310951CD, 0x49CF51CF49CD3949, 0x3989418B49CB49CD,  // 0x0000D458 
	0x624F51CD394B3107, 0x5A0B724F59CB59CB, 0x61CB6A4F624D6A4D, 0x6A8F620D418B314B,  // 0x0000D478 
	0x620F729172D3520F, 0x418B20C729073949, 0x49CD2907520D7291, 0x5A0F49CB520D49CB,  // 0x0000D498 
	0x51CD520D51CD49CB, 0x498B20C729092909, 0x290728C718856B5B, 0x8C63739D84218C63,  // 0x0000D4B8 
	0x5AD752938C638421, 0x10852907394951CD, 0x6A4F72916A9151CB, 0x290731093949520D,  // 0x0000D4D8 
	0x418B394B49CD4149, 0x498B620D59CB51C9, 0x59CD5A0D728F6A0D, 0x6A4D59CD498B51CB,  // 0x0000D4F8 
	0x6A915A0D5A0D624F, 0x72D1520F31093109, 0x2949398B310949CB, 0x5A0F49CB49CB41CB,  // 0x0000D518 
	0x5A0D49CB520D418B, 0x29075A0F52115A51, 0x41CF20C720851085, 0x739D739D4A938421,  // 0x0000D538 
	0x5AD75293739D8C63, 0x6B5B28C720C528C7, 0x418B51CD5A0D6A91, 0x520F41CD39093949,  // 0x0000D558 
	0x3109524D6A914189, 0x30C74149620D620B, 0x4989498959CB51CB, 0x624D51CB39075A0F,  // 0x0000D578 
	0x5A4F49CB5A0D520D, 0x5A0D398B3949520D, 0x524D4A0F31493949, 0x49CB5A0F5A0F5A4F,  // 0x0000D598 
	0x520F414B29072109, 0x5A0F5A515A5141CD, 0x398B290918851085, 0x529352934A535AD7,  // 0x0000D5B8 
	0x842152935A93739D, 0x6B5B20853107418B, 0x394949CB520D5A0F, 0x6AD151CD418B2909,  // 0x0000D5D8 
	0x624F72916A8F628F, 0x3949288551CB620D, 0x624D5A0D51CD6A0D, 0x6A4D59CB394951CD,  // 0x0000D5F8 
	0x520D520D520D5A0D, 0x49CB28C749CD624F, 0x7B1573115A4D3109, 0x31493109498B51CB,  // 0x0000D618 
	0x418B290941CD72D5, 0x625149CD49CD318B, 0x398D520F314B1085, 0x6B5B52934A93739D,  // 0x0000D638 
	0x8C63842184218421, 0x6B5B290731094189, 0x49CB49CB520D49CB, 0x5A0D6A5149CD3909,  // 0x0000D658 
	0x624F520D51CD6251, 0x520D3909290759CB, 0x6A4F724F724D59CB, 0x59CB518B418B3949,  // 0x0000D678 
	0x51CD5A0D6251520D, 0x3109414B624F72D3, 0x6A4F5A0D6A8F6AD1, 0x520D394B31493109,  // 0x0000D698 
	0x28C7418D7AD5520F, 0x49CD49CD418B41CD, 0x418D49CD39894A53, 0x739D52936B5B8421,  // 0x0000D6B8 
	0x7BDF52935AD38421, 0x739D73593949498B, 0x4189520F624F6A91, 0x5A0D6A91620F3949,  // 0x0000D6D8 
	0x5A0D520D51CD49CD, 0x629151CD41494189, 0x59CB59CB59CB3949, 0x31093949394B3109,  // 0x0000D6F8 
	0x49CD51CD625151CB, 0x394972D37AD36A91, 0x5A0F5A0F5A0F6A8F, 0x624F51CD398B2949,  // 0x0000D718 
	0x4A0F6A91520F418D, 0x498D49CD41CB41CB, 0x418B3949739B6B5B, 0x8C63842184218421,  // 0x0000D738 
	0x7BDF52935AD38421, 0x739D735931074189, 0x498B418B624F6A4F, 0x5A0D624F5A0F418B,  // 0x0000D758 
	0x624F520D5A0F49CD, 0x5A4D5A4D29093149, 0x49CB398B524D6ACF, 0x72D17B1372D35A0F,  // 0x0000D778 
	0x39895A0D5A0D3949, 0x498B72916A515A0F, 0x5A0F51CD49CB51CB, 0x59CD624D520D394B,  // 0x0000D798 
	0x5A515A4F49CD398B, 0x49CD49CD49CD418B, 0x394B398B20C74A53, 0x94A584214A935AD7,  // 0x0000D7B8 
	0x84215293739D739D, 0x529528C528C73109, 0x418B49CB5A0D6A8F, 0x6A4F520D49CB394B,  // 0x0000D7D8 
	0x5A4D520F520B520D, 0x5A0D51CB41896A91, 0x83557AD16A8F6A91, 0x624D5A0D624D6251,  // 0x0000D7F8 
	0x41C951CB498B3149, 0x624F6A8F5A0F5A0D, 0x520D5A4F5A0D51CD, 0x49CB49CB5A0D3909,  // 0x0000D818 
	0x31095A51520F520F, 0x520F49CD49CD394B, 0x394B398B18851085, 0x8C638C634A935295,  // 0x0000D838 
	0x8C63739D739D739D, 0x52952085290751CD, 0x51CD628F6A8F51CB, 0x418B498B398B498B,  // 0x0000D858 
	0x314B6A916A8F6291, 0x6A51520D39497B13, 0x6A8F520D520B520D, 0x5A4D5A4D624F6A4F,  // 0x0000D878 
	0x6A8F39492907418B, 0x520F624F5A0F624F, 0x624F628F620F628F, 0x5A4F520D5A0D3149,  // 0x0000D898 
	0x3107498B4A0F4A0F, 0x520F520F520F520F, 0x398B208718851085, 0x739D8421739D5AD7,  // 0x0000D8B8 
	0x8C63739D739D8421, 0x18C720C5390741CB, 0x520D4A0D3949518B, 0x6A4F7A917AD182D3,  // 0x0000D8D8 
	0x82D3498B624F624F, 0x5A4F398972917291, 0x520B520D520D5A0D, 0x624D624F5A4D6A4F,  // 0x0000D8F8 
	0x6A8F6A9141CB3949, 0x41CB520D620F5A0D, 0x520D49CB5A0D520B, 0x520D520D628F3949,  // 0x0000D918 
	0x3109290928C72909, 0x394B520F520F49CD, 0x20C720C529074A53, 0x8C63739D739D739D,  // 0x0000D938 
	0x5AD752935AD3739D, 0x529520C739493107, 0x2907394B728F7AD3, 0x7291624F6A4F620D,  // 0x0000D958 
	0x5A0D3949394949CB, 0x49CB31076A4F5A4D, 0x418951CB41895A0D, 0x5A0D5A0D520D6A4F,  // 0x0000D978 
	0x51CD2907494B51CD, 0x394931075A0F520D, 0x520B520D520D5A4F, 0x520D620F628F51CD,  // 0x0000D998 
	0x318B524F5A934A0F, 0x398B290928C92087, 0x2907310731478421, 0x842152934A93739D,  // 0x0000D9B8 
	0x739D5A935AD35AD3, 0x842162D7310749CB, 0x39495A0D728F620F, 0x5A0D5A0D5A0D4989,  // 0x0000D9D8 
	0x5A0D5A0D39474189, 0x3107290749CB520D, 0x49CB49CB49CB418B, 0x418B51CB5A0D49CB,  // 0x0000D9F8 
	0x49CB520D82D37293, 0x5A4F518D418B51CD, 0x624F624F624F6A91, 0x624F628F5A0F3149,  // 0x0000DA18 
	0x5A4F831572D36AD1, 0x72D172D341CB398B, 0x49CD418B6B598421, 0x5AD35AD34A53739D,  // 0x0000DA38 
	0x739D8421739D739D, 0x4A532085208528C7, 0x28C749495A0D6A0D, 0x49CB518B49CB51CD,  // 0x0000DA58 
	0x5A0D5A0D394928C7, 0x498B520D314951CB, 0x5A4D49CB418B418B, 0x51CB49CB39472907,  // 0x0000DA78 
	0x72917291620F6A51, 0x72D36A935A0F3109, 0x3949520D51CD5A0F, 0x5A0D49CB310741CB,  // 0x0000DA98 
	0x7B13624F49CD498B, 0x5A4F6A515A4F394B, 0x5A0D394B20C54A53, 0x739D52936B5B739D,  // 0x0000DAB8 
	0x5AD7739D5293739D, 0x108520852907498B, 0x31493107620D724F, 0x59CD51CD5A0B59CD,  // 0x0000DAD8 
	0x5A0F498B498B2909, 0x7B1372D35A512907, 0x3107418949CB5A0D, 0x520D394931097293,  // 0x0000DAF8 
	0x6A515A0D620F5A0F, 0x5A0D62516A516251, 0x49CD28C74989520D, 0x520D2907520D7291,  // 0x0000DB18 
	0x6A91520F5A0F5A0F, 0x49CB5A0F624F3149, 0x49CB418929074A53, 0x739D739D84218421,  // 0x0000DB38 
	0x5AD75293739D8C63, 0x4A5320C5310949CB, 0x49CB29074989624F, 0x620D5A0D51CB59CD,  // 0x0000DB58 
	0x620F51CB30C77291, 0x7B136A51624F6A8F, 0x5A4D31493149418B, 0x41CB498D7AD3624F,  // 0x0000DB78 
	0x59CD624F620F51CD, 0x49CD49CB51CD6A4F, 0x624F394B310949CB, 0x3949394B6A916A91,  // 0x0000DB98 
	0x520F49CD4A0D520F, 0x49CD520F6251314B, 0x498B418B29071085, 0x739D52934A53739D,  // 0x0000DBB8 
	0x842152935293739D, 0x842128C74189414B, 0x59CD418B310759CD, 0x620F518B5A0D5A0D,  // 0x0000DBD8 
	0x59CD394939497AD3, 0x6A91498B418B5A0F, 0x624F72913949294B, 0x49CF82D5620F5A0D,  // 0x0000DBF8 
	0x620F6A4F62115A0D, 0x59CD49CB498B49CB, 0x5A0F418B498B2907, 0x314B6A9173136251,  // 0x0000DC18 
	0x520D49CD520D520F, 0x4A0B520D520F3149, 0x3149414931094A53, 0x739D739D6B5B739D,  // 0x0000DC38 
	0x94A5739D52935A93, 0x842128C531073107, 0x498B5A4F39494149, 0x59CD59CD5A0D59CD,  // 0x0000DC58 
	0x498931077AD1624F, 0x5A0D41CB59CD498B, 0x41895A4F624F3109, 0x59CD6A4F6A0F59CD,  // 0x0000DC78 
	0x59CD624F5A0D498B, 0x4949498B518B498B, 0x5A0F414B394B3109, 0x41CD6251624F520F,  // 0x0000DC98 
	0x520D4A0D51CD49CB, 0x520D520F62913149, 0x2085310720C56B5B, 0x5293739D4A515AD7,  // 0x0000DCB8 
	0x94A594A584218421, 0x6B5B20C529073149, 0x51CB624F51CD28C7, 0x3947498B620D498B,  // 0x0000DCD8 
	0x28C7624F6A8F520D, 0x418951CD5A0F49CB, 0x41CB49CB5A4D3109, 0x620F72916A4F620F,  // 0x0000DCF8 
	0x6A4F5A0F5A0D51CD, 0x49CD5A0D49CD51CB, 0x498B39494A0D3989, 0x31495A4F49CD4A0D,  // 0x0000DD18 
	0x4A0D4A0D49CD49CD, 0x520F524F629141CB, 0x208528C520856B5B, 0x8421739D4A515AD7,  // 0x0000DD38 
	0x8421739D739D5AD3, 0x084320C529073949, 0x418B498B6A4F3949, 0x20C541894149494B,  // 0x0000DD58 
	0x51CD7B13624F418B, 0x4989398B498B498B, 0x41CB520D5A4D3109, 0x5A0D72915A0D51CD,  // 0x0000DD78 
	0x625151CD51CD51CD, 0x520F5A0D5A0D5A0D, 0x414B520D7B13520D, 0x290749CB5A4F5A0F,  // 0x0000DD98 
	0x49CD520D49CD520D, 0x51CD4A0D629149CB, 0x20C728C728C70843, 0x739D84218421739D,  // 0x0000DDB8 
	0x5AD75293739D739D, 0x4A5328C728C53909, 0x49CB3949520D4A0D, 0x210728C731093107,  // 0x0000DDD8 
	0x418B62515A0F51CD, 0x498B3949418B3949, 0x398B51CD5A0F3949, 0x624F6A51624F51CB,  // 0x0000DDF8 
	0x620F51CD49CD59CD, 0x5A0D51CB518B414B, 0x5A0D72D16A4F418B, 0x2907398B5A4F520D,  // 0x0000DE18 
	0x49CD49CB49CB49CD, 0x49CD520F6A91520F, 0x2087208528C50885, 0x739D52934A515AD7,  // 0x0000DE38 
	0x5AD75293739D5AD3, 0x425328C731073949, 0x418B418B49CD6AD1, 0x72D349CD498B394B,  // 0x0000DE58 
	0x51CD6A9149CB5A0F, 0x41CB49CD520D3149, 0x49CB520D624F3109, 0x5A0F72917293620F,  // 0x0000DE78 
	0x5A0F5A0D49CB59CD, 0x51CD498B418B49CB, 0x624F5A0F5A0D520D, 0x3949398B624F418B,  // 0x0000DE98 
	0x41CB49CB49CB4A0D, 0x49CB41CB520F20C7, 0x1885188518856B5B, 0x842152936B5B5AD7,  // 0x0000DEB8 
	0x7BDF5293739D739D, 0x4A5328C731074189, 0x49CB49CB5A4D5A0D, 0x5A4F394949CD51CD,  // 0x0000DED8 
	0x28C7498B520D498B, 0x498B41CB520D49CB, 0x624F6291628F3109, 0x398B49CD6A4F6211,  // 0x0000DEF8 
	0x5A0F5A0D520F520F, 0x59CD51CB398B6A91, 0x5A4F520D5A0F624F, 0x49CB39495A515A4D,  // 0x0000DF18 
	0x520D49CD49CD49CB, 0x41CB3949520D28C9, 0x290720C718854A53, 0x739D739D6B5B739D,  // 0x0000DF38 
	0x94A58C638C638C63, 0x84216B17188528C7, 0x414951CB5A4F3949, 0x2907314B72936AD1,  // 0x0000DF58 
	0x49CD31095A4F624F, 0x520D49CB51CD520F, 0x5A0D5A0F49CD3949, 0x3949414B51CD518B,  // 0x0000DF78 
	0x49CB62515A0F5A0F, 0x59CD414B5A0F624F, 0x49CB49CB520D624F, 0x51CD418B3149520D,  // 0x0000DF98 
	0x5A4F6A91520F520F, 0x398B520F41CB3109, 0x3149398B28C51085, 0x84218C6384218C63,  // 0x0000DFB8 
	0x8C63739D52935293, 0x84215AD5208520C5, 0x2085418B394928C7, 0x39496A0D624F418B,  // 0x0000DFD8 
	0x4A0D5A0F31475A4D, 0x624F624F520D624F, 0x5A0F394B41493107, 0x624F629149CB3109,  // 0x0000DFF8 
	0x4149498B49CB51CD, 0x3989520F6A9151CB, 0x418949CB51CB5A0F, 0x49CB31093107418B,  // 0x0000E018 
	0x394B520D398B418B, 0x418B49CD31093149, 0x49CB398B39491885, 0x739D52934A51739D,  // 0x0000E038 
	0x7BDF52935293739D, 0x739D188520C749CB, 0x414B3949418B3149, 0x831372D15A0F51CD,  // 0x0000E058 
	0x49CB520D520D3109, 0x498B5A0D5A0D5A0D, 0x3949418B5A4F6291, 0x72D1624F72916A91,  // 0x0000E078 
	0x524D314B3107418B, 0x2907520D520D49CD, 0x520B5A0D520D520D, 0x49CB39496A917B13,  // 0x0000E098 
	0x6AD141CB418D314B, 0x29093109318B51CD, 0x49CB394939894A53, 0x739D52934A515AD7,  // 0x0000E0B8 
	0x7BDF52935AD38421, 0x52952085394949CB, 0x41CB520D398B6251, 0x6AD15A0D5A0D5A0F,  // 0x0000E0D8 
	0x5A4D520D624F41CB, 0x3107418B31073107, 0x418B6A916A915A4F, 0x51CB520D51CD5A4F,  // 0x0000E0F8 
	0x6A916A8F39CB2909, 0x310928C7394941CB, 0x49CB51CB5A4F5A4D, 0x39495A0F6A916A8F,  // 0x0000E118 
	0x5A4F62916AD1624F, 0x520D314949CD49CB, 0x310731472907739D, 0x5AD352934A515AD7,  // 0x0000E138 
	0x842152938C638421, 0x18C7208539494149, 0x51CD62915A0F72D1, 0x5A0D51CB51CD4A0B,  // 0x0000E158 
	0x5A0D520D524F6A51, 0x49CB394B418B520D, 0x520F520D51CB520D, 0x51CD520D5A0D520D,  // 0x0000E178 
	0x520D5A0F62516AD1, 0x418B624F41CB418B, 0x418B49CB629141CB, 0x418B6AD15A0F5A4F,  // 0x0000E198 
	0x520D520D520D6A8F, 0x3149314951CB49CB, 0x4189394928C5739D, 0x5AD352934A53739D,  // 0x0000E1B8 
	0x8C63739D5AD38421, 0x739D208531073949, 0x4189418B39496A91, 0x5A4F628F624F5A0D,  // 0x0000E1D8 
	0x51CD520D5A0D520D, 0x5A4D398951CD520D, 0x498B49CD49CB49CB, 0x498B51CD51CB51CB,  // 0x0000E1F8 
	0x49CB49CB5A0F5A4F, 0x394B5A0D628F520D, 0x31493949418B3949, 0x5A0D6A91624F49CB,  // 0x0000E218 
	0x520D5A4F624F5A4F, 0x5A4F31095A0D5A0D, 0x49CB39492085739D, 0x8421842184218C63,  // 0x0000E238 
	0x739D52935A9362D3, 0x4A95208529073949, 0x418B394939495A0F, 0x5A0D520D49CB520D,  // 0x0000E258 
	0x418B49CB51CD520D, 0x4A0B310951CB49CB, 0x498B49CB49CB520D, 0x49CB49CD51CB51CD,  // 0x0000E278 
	0x51CB59CD5A0D49CB, 0x310951CD51CD520D, 0x51CB31492907418B, 0x5A4F520D624F520D,  // 0x0000E298 
	0x4A0D5A4F520D49CB, 0x51CD3149418B49CB, 0x49CB394929071085, 0x5AD552934A536B5B,  // 0x0000E2B8 
};

u64 _ganontikasonogo_room_0_tex_0000E2D8[] = 
{
	0x314D73178B9993DB, 0x210D39D1318F4A53, 0x5255525552534A53, 0x4A1342114A534A53,  // 0x0000E2D8 
	0x4A534A534A534A53, 0x4A534A5352955A95, 0x5A975A974A534A53, 0x4A534A5352955A95,  // 0x0000E2F8 
	0x5A975A974A534A53, 0x4A5352554A534A55, 0x4A53525552555255, 0x52554A534A134A53,  // 0x0000E318 
	0x52554A134A134A13, 0x4A134A134A535255, 0x4A134A13421139D1, 0x839973155A93398F,  // 0x0000E338 
	0x525383579C1D9C1D, 0x294F319139D14A13, 0x4A554A534A534A53, 0x4A534A134A134A13,  // 0x0000E358 
	0x4A134A134A134A13, 0x4A534A534A554A55, 0x52554A554A554A13, 0x4A534A534A554A55,  // 0x0000E378 
	0x52554A554A554A13, 0x4A534A134A134A13, 0x4A134A134A134A13, 0x4A134A134A134A13,  // 0x0000E398 
	0x4A534A534A534A13, 0x4A134A534A534A53, 0x4A5341D14213318F, 0x8BD983576AD5318D,  // 0x0000E3B8 
	0x525383999BDBA41D, 0x294F318F39D1318F, 0x39D139D139D139D1, 0x39D139D139D139D1,  // 0x0000E3D8 
	0x39D139D139D139D1, 0x41D141D141D141D1, 0x41D141D141D14211, 0x41D141D141D141D1,  // 0x0000E3F8 
	0x41D141D141D14211, 0x39D139D1421139D1, 0x421341D1421341D1, 0x4211421141D14211,  // 0x0000E418 
	0x41D141D141D139D1, 0x39D141D139D139D1, 0x39D13191318F318F, 0x8BD983576AD5398F,  // 0x0000E438 
	0x5A538B999C1B9C1B, 0x214D294D318F318F, 0x318F294F318F318F, 0x318F319139D139D1,  // 0x0000E458 
	0x39D139D139D139D1, 0x39D139D139D139D1, 0x39D139D139D139D1, 0x39D139D139D139D1,  // 0x0000E478 
	0x39D139D139D139D1, 0x39D141D139D139D1, 0x41D139D141D139D1, 0x41D139D139D139D1,  // 0x0000E498 
	0x39D139D139D139D1, 0x39D139D1318F318F, 0x294D318F318F294F, 0x8BD97B576AD541CF,  // 0x0000E4B8 
	0x52538B9993DBA41D, 0x210D294D294D294D, 0x294F294D294D294F, 0x318F318F318F318F,  // 0x0000E4D8 
	0x318F318F318F318F, 0x318F318F318F318F, 0x318F318F318F318F, 0x318F318F318F318F,  // 0x0000E4F8 
	0x318F318F318F318F, 0x318F318F318F318F, 0x318F318F318F318F, 0x31D1318F318F318F,  // 0x0000E518 
	0x318F318F318F318F, 0x294F294F294D294D, 0x210D294D294D210D, 0x8B997315731741CF,  // 0x0000E538 
	0x5251835793D99C1B, 0x210B210D214D214D, 0x210D210D210D210D, 0x210D214D214D214D,  // 0x0000E558 
	0x294D294D294D294D, 0x294D294D294D294D, 0x294D294D294F294D, 0x294D294D294D294D,  // 0x0000E578 
	0x294D294D294F294D, 0x294F294F294F294F, 0x298F318F294F318F, 0x318F294F294F294F,  // 0x0000E598 
	0x294D294D214D214D, 0x214D210D210D210D, 0x210D210D190B210B, 0x839973176AD5398F,  // 0x0000E5B8 
	0x525383978B999BD9, 0x18CB190B190B210B, 0x190B190B190B190B, 0x190B190B190B190B,  // 0x0000E5D8 
	0x210B210B210B210B, 0x210B210B210B210D, 0x210B210D210D210D, 0x210B210B210B210D,  // 0x0000E5F8 
	0x210B210D210D210D, 0x210D210D210D210D, 0x210D210D210D210D, 0x210D210D210D210D,  // 0x0000E618 
	0x210D210D210B190B, 0x190B18CB18CB18CB, 0x18CB18CB18CB18CB, 0x8B997B576B1541CF,  // 0x0000E638 
	0x5253835793D99BD9, 0x210D210D294D294D, 0x294F318F318F318F, 0x318F318F41D139D1,  // 0x0000E658 
	0x39D139D141D141D1, 0x4A13318F39D139D1, 0x39D141D141D141D1, 0x39D141D141D14A13,  // 0x0000E678 
	0x318F39D139D139D1, 0x39D141D141D141D1, 0x4A13318F39D139D1, 0x39D139D141D141D1,  // 0x0000E698 
	0x41D139D139D139D1, 0x318F318F294D294F, 0x210D210B190B190B, 0x8B977B57629341CF,  // 0x0000E6B8 
	0x5253835793D99C1B, 0x318F318F39D139D1, 0x39D141D139D141D1, 0x41D139D141D14213,  // 0x0000E6D8 
	0x4A535A97629762D7, 0x6B196B196B196B19, 0x62D76B19629762D7, 0x6AD76B196B196B19,  // 0x0000E6F8 
	0x6B196B196B195A97, 0x5A9562976B196B19, 0x6B196B196B196B19, 0x5A975A9562D762D7,  // 0x0000E718 
	0x62D75A9752955253, 0x4A13421339D1318F, 0x314F294D210D210D, 0x8B9983576AD5398F,  // 0x0000E738 
	0x5A537B5793D99BD9, 0x318F39D142134213, 0x42134A134A135255, 0x525552955A976AD7,  // 0x0000E758 
	0x7319735B73597319, 0x7359735973596AD7, 0x6AD773196B197359, 0x7B5B735973197359,  // 0x0000E778 
	0x735973596AD76AD7, 0x73196B1973597319, 0x7359735973596AD7, 0x6AD773196B197359,  // 0x0000E798 
	0x73196AD76B1762D7, 0x5A975A9752554213, 0x39D1318F294D294D, 0x93D98399731741CF,  // 0x0000E7B8 
	0x4A11731593D993D9, 0x39D1319142134A13, 0x5A97529562D762D7, 0x62D76B196B197B5B,  // 0x0000E7D8 
	0x7B5B7B5B7B5B735B, 0x735B735B735B735B, 0x6B19731973597B5B, 0x7B5B7B5B735B735B,  // 0x0000E7F8 
	0x735B735B735B6B19, 0x735973597B5B735B, 0x735B735B735B735B, 0x6B19735973597B5B,  // 0x0000E818 
	0x7319731962D77359, 0x6B1962D75A975A95, 0x525539D1318F294D, 0x8BD983997317398D,  // 0x0000E838 
	0x525373159BD98B99, 0x41D139D152555255, 0x6B196B1973197319, 0x6B197B5B73597B5B,  // 0x0000E858 
	0x839D839D8BDD8BDD, 0x8C1F7B5B7B5B7B5B, 0x735B735B735B7B5B, 0x839D8BDD8BDD8C1F,  // 0x0000E878 
	0x7B5B7B5B7B5B735B, 0x7B5B735B8BDD8BDD, 0x8C1F7B5B7B5B7B5B, 0x735B7B5B735B7B5B,  // 0x0000E898 
	0x735B735B7B5B839D, 0x7B9B735B6B196AD7, 0x62D74A5341D1294F, 0x8B9983577357318F,  // 0x0000E8B8 
	0x525383578B978B99, 0x41D139D1529562D7, 0x735B7B9B7B5B735B, 0x7B9B7B5B839B839D,  // 0x0000E8D8 
	0x8BDF8BDF941F8BDF, 0x839D839D839D6AD7, 0x73598BDD7B5B839D, 0x8BDF941F8BDF839D,  // 0x0000E8F8 
	0x839D839D6AD77359, 0x7B5B7B5B941F8BDF, 0x839D839D839D6AD7, 0x73597B5B7B5B839D,  // 0x0000E918 
	0x8BDD8BDD8BDF8BDD, 0x8BDD839D839D7B5B, 0x6B195255318F318F, 0x8BD983997317398F,  // 0x0000E938 
	0x5A538B9993D993DB, 0x41D139D16B197B9B, 0x839D839D839B7B9B, 0x839D839B839D8C1F,  // 0x0000E958 
	0x8BDD8B9D8BDF8BDF, 0x83DD83DD83DD83DD, 0x7319839D7B5B8C1F, 0x8B9D8BDF8BDF83DD,  // 0x0000E978 
	0x83DD83DD83DD7319, 0x73597B5B8BDF8BDF, 0x83DD83DD83DD83DD, 0x731973597B5B8C1F,  // 0x0000E998 
	0x839D839D8BDF83DD, 0x8BDF839D8BDD8BDD, 0x839D6297294F39D1, 0x8B998B996B15398F,  // 0x0000E9B8 
	0x4A118B9993DB9C1B, 0x4A534A557B9B8C1F, 0x8C1F941F8BDF839D, 0x6B197B9B8BDD839D,  // 0x0000E9D8 
	0x941F9C618BDF6B19, 0x8BDD8BDD8BDD8BDD, 0x8BDD8BDD62D762D7, 0x839D8BDF6B198BDD,  // 0x0000E9F8 
	0x8BDD8BDD8BDD8BDD, 0x839D83DD8BDF6B19, 0x8BDD8BDD8BDD8BDD, 0x8BDD839D83DD8BDF,  // 0x0000EA18 
	0x7B5B839D8BDD7B5B, 0x8BDD7B9B8BDF839D, 0x839D6B194A13318F, 0x93DB8BD96AD5314D,  // 0x0000EA38 
	0x398F8357835793DB, 0x294D318F41D15255, 0x421342134A134213, 0x42134A1342135255,  // 0x0000EA58 
	0x421341D139D139D1, 0x318F421341D14213, 0x4A134A134A138C1F, 0x41D1421342134213,  // 0x0000EA78 
	0x52554A1339D139D1, 0x41D14A134A135255, 0x629752554A134213, 0x41D15255421341D1,  // 0x0000EA98 
	0x4A1341D139D15255, 0x39D141D1525541D1, 0x41D1318F210D294D, 0x8BD983576AD539CF,  // 0x0000EAB8 
	0x41CF7B178B9993DB, 0x214D39D142134A13, 0x52554A5552555255, 0x5255525552555255,  // 0x0000EAD8 
	0x52554A5339D141D1, 0x39D141D1421341D1, 0x52554A13421139D1, 0x41D14A554A134213,  // 0x0000EAF8 
	0x4A134A1342134A13, 0x4A134A134A134A13, 0x5A954A5542134213, 0x421342134A134A13,  // 0x0000EB18 
	0x4A13525552555A95, 0x5255525552555255, 0x4A1339D1210D210D, 0x93DB8B996B1541CF,  // 0x0000EB38 
	0x4A117B57835793D9, 0x294D318F318F4213, 0x42134A5352554A53, 0x4A534A534A534A53,  // 0x0000EB58 
	0x52554A1339D139D1, 0x318F39D141D14213, 0x4A1342134A134A13, 0x4A1341D1421341D1,  // 0x0000EB78 
	0x42134A134A134A13, 0x4A534A134A134A13, 0x5A954A1339D139D1, 0x42114213421341D1,  // 0x0000EB98 
	0x421142134A134A13, 0x4A13421141D141D1, 0x39D1294F214D210D, 0x83977B576AD541CF,  // 0x0000EBB8 
	0x52537B577B5793D9, 0x318F294F318F318F, 0x39D139D141D14213, 0x41D139D141D14213,  // 0x0000EBD8 
	0x421139D1318F318F, 0x318F318F39D139D1, 0x41D139D141D141D1, 0x42134213421341D1,  // 0x0000EBF8 
	0x42134A1342134213, 0x4213421342134213, 0x4A5341D139D1318F, 0x41D141D139D139D1,  // 0x0000EC18 
	0x39D141D139D141D1, 0x39D1318F318F318F, 0x318F294D294D210D, 0x83577B575A5341CF,  // 0x0000EC38 
	0x52537B5783578B97, 0x294D294D294D318F, 0x318F318F39D1318F, 0x319139D1318F39D1,  // 0x0000EC58 
	0x398F39D1318F318F, 0x314F318F39D139D1, 0x39D139D139D139D1, 0x39D141D1421339D1,  // 0x0000EC78 
	0x41D1421341D141D1, 0x41D1421341D141D1, 0x421341D139D13991, 0x39D141D1318F39D1,  // 0x0000EC98 
	0x41D139D139D139D1, 0x318F318F318F294F, 0x294D294D294D210D, 0x83577B575A5341CF,  // 0x0000ECB8 
	0x52537B1783979399, 0x294D210D214D294D, 0x294F318F298F214D, 0x318F318F318F318F,  // 0x0000ECD8 
	0x318F318F318F318F, 0x294D318F39D1318F, 0x39D139D139D139D1, 0x318F3991318F318F,  // 0x0000ECF8 
	0x39D139D139D139D1, 0x39D139D139D139D1, 0x41D139D139D1318F, 0x39D139D1294D39D1,  // 0x0000ED18 
	0x39D139D1318F318F, 0x318F294D294D214D, 0x214D294D214D210D, 0x83978357629341CF,  // 0x0000ED38 
	0x52517B1793D993D9, 0x214D190B190B210D, 0x210D214D294D210D, 0x214D294D294D294D,  // 0x0000ED58 
	0x294F318F294F294D, 0x294D318F318F318F, 0x318F318F318F318F, 0x294D318F31D1318F,  // 0x0000ED78 
	0x39D1318F318F318F, 0x318F318F318F318F, 0x39D1318F318F318F, 0x318F318F210D294F,  // 0x0000ED98 
	0x318F294F294D294F, 0x294D210D210D190B, 0x210B210D210B210D, 0x8B997B57629341CF,  // 0x0000EDB8 
	0x52517B1793D99C1B, 0x190B18CB18CB190B, 0x210B210B210D210B, 0x210D210D214D214D,  // 0x0000EDD8 
	0x214D210D210B214D, 0x214D294D294D294D, 0x294D214D214D214D, 0x214D294D294D214D,  // 0x0000EDF8 
	0x214D294D294D294D, 0x294D294F294D294F, 0x294F294F294F294D, 0x294D294D210D210D,  // 0x0000EE18 
	0x210D210D210D210D, 0x190B190B190B18CB, 0x18CB190B18CB190B, 0x8B997B57629341CF,  // 0x0000EE38 
	0x52537B1793D99C1B, 0x18CB18CB18CB18CB, 0x18CB18CB18CB18CB, 0x18CB18CB190B190B,  // 0x0000EE58 
	0x210D214D18CB18CB, 0x190B18CB18CB18CB, 0x18CB18CB18CB18CB, 0x18CB18CB18CB18CB,  // 0x0000EE78 
	0x190B18CB18CB18CB, 0x18CB18CB18CB18CB, 0x18CB18CB18CB190B, 0x18CB18CB18CB18CB,  // 0x0000EE98 
	0x18CB18CB18CB18CB, 0x18CB18CB18CB18CB, 0x18CB18CB18CB18CB, 0x8B997317629341CF,  // 0x0000EEB8 
	0x52537B579BDB9C1B, 0x214D190B210D210B, 0x190B210D294F294D, 0x318F318F39D139D1,  // 0x0000EED8 
	0x421352554A134A13, 0x5A95525552555A95, 0x62D75A9752955255, 0x421339D152555255,  // 0x0000EEF8 
	0x5255529562D76B19, 0x52534A554211318F, 0x294F39D139D15A95, 0x5A97525339D14213,  // 0x0000EF18 
	0x525542134A1339D1, 0x39D1294D294D294D, 0x210D210D190B210B, 0x835773155A5341CF,  // 0x0000EF38 
	0x5A53835793D993DB, 0x294D190B294F294D, 0x294F318F41D141D1, 0x42134A5352555255,  // 0x0000EF58 
	0x4A5562976B197B5B, 0x7B5B7B5B62D77319, 0x73197B5B62D76B19, 0x73597B5B7B5B7359,  // 0x0000EF78 
	0x62D773196B197319, 0x62D762D762D76297, 0x39D15A975A97735B, 0x62D76297529562D7,  // 0x0000EF98 
	0x62D762D752554A13, 0x421341D139D1318F, 0x318F214D210D210D, 0x83576AD55A9341CF,  // 0x0000EFB8 
	0x5A53835783998B99, 0x318F214D318F39D1, 0x41D142134A535295, 0x629762D76AD76B19,  // 0x0000EFD8 
	0x6B1973197B5B839D, 0x7B5B839D73597B5B, 0x7B5B839D73597359, 0x7B5B839D7B5B839D,  // 0x0000EFF8 
	0x73597B5B7B5B839D, 0x7359735973597359, 0x6AD773597B5B839D, 0x6B19839B73597B5B,  // 0x0000F018 
	0x735B735962D75255, 0x4A13421339D139D1, 0x318F294F294D294D, 0x835773155A5341CF,  // 0x0000F038 
	0x5A538357839793D9, 0x318F294D318F41D1, 0x4A13529562D76AD7, 0x7359735B735B735B,  // 0x0000F058 
	0x735973597B9D83DD, 0x7B5B7B9B839D7B9B, 0x7B5B839D735B735B, 0x7B9D83DD7B5B7B9B,  // 0x0000F078 
	0x839D7B9B7B5B839D, 0x735B735B735B735B, 0x6B1973597B9D83DD, 0x7B5B735B7B9B7B9B,  // 0x0000F098 
	0x7B5B7B9B735962D7, 0x5A954A534A134213, 0x421339D1318F294F, 0x835773155A9341CF,  // 0x0000F0B8 
	0x525383579C1BA45D, 0x31D1318F4A134A53, 0x62D762D76B19735B, 0x7B9B839D83DD7B5B,  // 0x0000F0D8 
	0x7B9D839D8BDF8C1F, 0x7B5B8BDD8BDD8BDD, 0x7B9D83DD7B9B7B5B, 0x8BDF8C1F7B5B8BDD,  // 0x0000F0F8 
	0x8BDD8BDD7B9D83DD, 0x7B9B7B5B7B9B7B5B, 0x7B9D839D8BDF8C1F, 0x7B9B8BDD83DD8BDD,  // 0x0000F118 
	0x7B9D83DD839D7B9B, 0x73596B195A974A13, 0x421339D139D1318F, 0x93997B57629341CF,  // 0x0000F138 
	0x52117B179BDBA45D, 0x39D1294F52555A97, 0x7B9B7B5B839D7B5B, 0x839D839B839D7B5B,  // 0x0000F158 
	0x839B7B9B839D839D, 0x839D839B83DD839D, 0x83DD839D839D7B5B, 0x839D839D839D839B,  // 0x0000F178 
	0x83DD839D83DD839D, 0x839D7B5B839D7B5B, 0x839B7B9B8C1F8C1F, 0x8BDD8BDF839D839D,  // 0x0000F198 
	0x83DD839D839D839D, 0x839D7B5B7B5B62D7, 0x52554213421139D1, 0x9BDB7B57629541CF,  // 0x0000F1B8 
	0x521173179BD99C1B, 0x41D139D152557B9B, 0x8BDD83DD941F7B5B, 0x8BDD8BDF8BDD8B9D,  // 0x0000F1D8 
	0x8B9D8BDD8BDD8BDD, 0x7B9B839D73597B5B, 0x839D839D839D839D, 0x8BDD8BDD7B9B839D,  // 0x0000F1F8 
	0x73597B5B839D839D, 0x839D839D8BDD8B9D, 0x8B9D8BDD8C1F9421, 0x7B5B8C1F8BDD8BDD,  // 0x0000F218 
	0x8BDD8BDD941F8BDF, 0x8B9D941F8BDF7B5B, 0x6B19525541D1318F, 0x9BD98357629541CF,  // 0x0000F238 
	0x525373158B99A41D, 0x319139D139D15A97, 0x5A954A5352554A13, 0x4A13735B52555A95,  // 0x0000F258 
	0x5A95525562D76B19, 0x5A9562D76B196297, 0x6AD75A9552554213, 0x6B195255525562D7,  // 0x0000F278 
	0x6B1962976AD75A95, 0x5A955A955A955A95, 0x5A955A9562D76B19, 0x6AD76B195A954A53,  // 0x0000F298 
	0x5A9539D1421339D1, 0x52555A955A975255, 0x52554A1339D1318F, 0x9C1D83596AD54A11,  // 0x0000F2B8 
};

u64 _ganontikasonogo_room_0_tex_0000F2D8[] = 
{
	0x7B5973576AD57317, 0x6AD5520F5A515A93, 0x62936AD57B576AD5, 0x5A93629562D562D5,  // 0x0000F2D8 
	0x62D55A536AD56293, 0x6AD7629562D56AD7, 0x62D55A955A957B59, 0x8BDB8BDB6AD55A93,  // 0x0000F2F8 
	0x7B9983996B176AD5, 0x6AD5629352515A93, 0x5A515A936AD56AD5, 0x5A5173155A936AD5,  // 0x0000F318 
	0x6293629373175A95, 0x731752535A936AD5, 0x731752514A1162D5, 0x7319839B731762D5,  // 0x0000F338 
	0x7357731762D55A93, 0x73175A535A935A95, 0x6AD55A5162936293, 0x52515A93520F5251,  // 0x0000F358 
	0x5A515A936AD77317, 0x7B995A9352515A51, 0x5A936AD762D57317, 0x7317735962936AD5,  // 0x0000F378 
	0x731773175A936295, 0x62935A936B177B59, 0x7B5762935A936293, 0x73175A935A935251,  // 0x0000F398 
	0x5A536AD76AD75251, 0x5A935A9362935A53, 0x52115A9362957317, 0x731773176AD77317,  // 0x0000F3B8 
	0x6AD76AD55A936293, 0x629562957B598BD9, 0x83996AD56AD76293, 0x5A535A9362956B17,  // 0x0000F3D8 
	0x62D762D562955251, 0x5A935A936B158397, 0x6AD5525162D57317, 0x73176AD562D57317,  // 0x0000F3F8 
	0x6B1573175A935A53, 0x6AD562D56B156B15, 0x731762D562956295, 0x62D56B1573577317,  // 0x0000F418 
	0x62D5525152115251, 0x52515A9573177317, 0x73176295629562D5, 0x6AD55A935A936AD5,  // 0x0000F438 
	0x6AD7735762D562D5, 0x62D562935A936AD5, 0x6295629562957B59, 0x6AD75A9552535253,  // 0x0000F458 
	0x5A93525352535A53, 0x525362D56B176B17, 0x5A535A956B1762D5, 0x62D562D573177359,  // 0x0000F478 
	0x6B1762D562D57357, 0x6295629562957317, 0x6AD562956B176B17, 0x62D562D55A934A11,  // 0x0000F498 
	0x52535A955A935A95, 0x5253525162D76B17, 0x5A956B176B1762D5, 0x5A9373177B997B59,  // 0x0000F4B8 
	0x6293629373176B17, 0x73177B5962956AD5, 0x735773176B1762D5, 0x731773595A955A95,  // 0x0000F4D8 
	0x62D762D55A955253, 0x52535A9562D76B17, 0x73597B996B1762D5, 0x5A93629562D57B59,  // 0x0000F4F8 
	0x6AD56AD56B177317, 0x6B17731762D57B59, 0x6AD76AD56B176AD7, 0x62D56AD76AD76B17,  // 0x0000F518 
	0x6B1762D76B176B19, 0x7B9B6B175A957359, 0x73596B176B177B59, 0x7B5962D55A5362D5,  // 0x0000F538 
	0x7317629562957317, 0x62D562D5629562D5, 0x5A9562D762D562D5, 0x5A9362D56B176AD7,  // 0x0000F558 
	0x6AD75A535A955A95, 0x62D762D762D75A95, 0x6B175A9562D57357, 0x6B17735773177317,  // 0x0000F578 
	0x6AD762D56B177359, 0x62D562956AD562D5, 0x6AD762D55A935A93, 0x62D56B176B176295,  // 0x0000F598 
	0x6AD762D562D55A93, 0x525362D762D56295, 0x5A9562D56B176B17, 0x62D56B1773176AD7,  // 0x0000F5B8 
	0x6295629573176B17, 0x731773577B597317, 0x62D56B1773577B99, 0x6AD76B1773176AD5,  // 0x0000F5D8 
	0x62D56B177B575A95, 0x7B57731762956295, 0x73176B1773577317, 0x6B176B176B175251,  // 0x0000F5F8 
	0x62935A936AD55A95, 0x62D56B1762D55A93, 0x5A957317731762D5, 0x6B176B1773176AD5,  // 0x0000F618 
	0x7B597B5773176B17, 0x6AD56AD56AD57317, 0x6B176B176B177317, 0x6AD56B1762D562D5,  // 0x0000F638 
	0x629562D5629562D5, 0x62D55A53629362D7, 0x6AD75A9562956AD7, 0x629562D762D76295,  // 0x0000F658 
	0x62D57317731762D5, 0x62D57317731762D5, 0x62D562955A955253, 0x62D562D562935A93,  // 0x0000F678 
	0x5A535251629562D5, 0x62D552515A937359, 0x6B175A9362D562D7, 0x5A9562D5629562D7,  // 0x0000F698 
	0x73597B577B577B17, 0x6AD75A9362D56B17, 0x6B176B1762D54A0F, 0x5A9362D562956293,  // 0x0000F6B8 
	0x62D562D562D56295, 0x62D55A5352516B17, 0x62D5629573596B17, 0x62D76B195A9562D7,  // 0x0000F6D8 
	0x62D56AD783997317, 0x62D562D573578399, 0x73575A935A955A95, 0x5A935A9362936AD7,  // 0x0000F6F8 
	0x6AD75A9562D56B17, 0x6B177B576AD56295, 0x5A956AD76B176B17, 0x735962D562D76AD7,  // 0x0000F718 
	0x6B1762D762956B15, 0x7357735762D55A53, 0x62955A9562D56295, 0x6B1762D562935A93,  // 0x0000F738 
	0x5A935A9362D55A95, 0x629573597B597317, 0x73177B5962D57359, 0x62D75A956B176B17,  // 0x0000F758 
	0x73576B1773177317, 0x7B577B596B175253, 0x62956B1762D562D5, 0x62D562935A535251,  // 0x0000F778 
	0x521152115A935A53, 0x5A9373596B177317, 0x93DB73576B176B17, 0x525362D55A955A95,  // 0x0000F798 
	0x73176B1762D562D5, 0x73596B1752535251, 0x6295731762D55A93, 0x5A934A0F4A0F5A53,  // 0x0000F7B8 
	0x62D55A935A9562D5, 0x5A9573597B997B57, 0x6B1773176AD57317, 0x6AD57B576B1762D5,  // 0x0000F7D8 
	0x5A5149CF52515A93, 0x5A9562955A955A53, 0x5A9362D56B155A93, 0x49CF52515A536295,  // 0x0000F7F8 
	0x62D56B1773177359, 0x6B176B176AD762D5, 0x62D573177B5762D5, 0x83997B5762D55A95,  // 0x0000F818 
	0x5A535A9352535A95, 0x62D762D56B176AD5, 0x7317731762D56293, 0x5A9373176AD55A53,  // 0x0000F838 
	0x5A9562D562D77359, 0x735973576B1762D5, 0x6AD762957B596AD5, 0x83597B5752534A0F,  // 0x0000F858 
	0x52535A955A9562D7, 0x6B1762D55A936AD5, 0x7B1773176AD57B57, 0x83977B577B577317,  // 0x0000F878 
	0x62D56B1762D562D5, 0x735973596B176B17, 0x62D76AD76B1762D5, 0x6AD56B176AD762D7,  // 0x0000F898 
	0x5A954A1152535A95, 0x62D762956AD56AD5, 0x73176AD562D57317, 0x731773176AD562D5,  // 0x0000F8B8 
	0x6AD562D573597359, 0x7B596B1762D56B17, 0x5A935A955A956AD7, 0x5A955A936AD76B17,  // 0x0000F8D8 
	0x62D7525152535A95, 0x62D75A535A936295, 0x5A516AD573157B57, 0x6AD57B576B155253,  // 0x0000F8F8 
	0x73175A9562D58BDB, 0x83996AD562D56AD7, 0x62D7735962D75A95, 0x62D562D573197B59,  // 0x0000F918 
	0x62D75A956B176AD7, 0x6B1773176AD562D5, 0x5251629373177317, 0x6AD5731762D55251,  // 0x0000F938 
	0x5253525362D56AD7, 0x7B5973176B177359, 0x7B597319525362D5, 0x6B176AD7839B6B17,  // 0x0000F958 
	0x5A9362956B177B59, 0x62D76AD773176AD7, 0x52515A937B597317, 0x7B577B5962D562D5,  // 0x0000F978 
	0x62D55A9562D76AD5, 0x6B1773176AD56AD7, 0x7B5973597B5983D9, 0x73576AD57B597359,  // 0x0000F998 
	0x7B597B5973177B59, 0x6B176AD773176B17, 0x6295735962D56AD7, 0x731773176B175A95,  // 0x0000F9B8 
	0x525352515A9362D5, 0x62957B577B576B17, 0x731773577B997B59, 0x5A935A936B178399,  // 0x0000F9D8 
	0x7B597B597B597317, 0x7B577B5973176B17, 0x7B597B596AD76AD7, 0x5A956B176AD55A53,  // 0x0000F9F8 
	0x5A956AD752515251, 0x62D56AD562956B17, 0x6AD57B597B576295, 0x52515A936AD57317,  // 0x0000FA18 
	0x6B1773176AD56AD5, 0x7B997B997B578C1B, 0x8C1B735752515253, 0x5A9562D562D57357,  // 0x0000FA38 
	0x6295629362D56295, 0x5A93629573177B57, 0x6AD57B57735762D5, 0x62D56B175A938399,  // 0x0000FA58 
	0x735773577B576B17, 0x62956B176B157357, 0x7B595A9552515253, 0x73176AD762D57317,  // 0x0000FA78 
	0x6AD5731762D562D5, 0x62D56B1773177317, 0x62D57B59731762D5, 0x5A955A5352537317,  // 0x0000FA98 
	0x62D56AD583997B59, 0x6AD56AD77B597317, 0x5A9352535A9362D5, 0x62D562D562935A93,  // 0x0000FAB8 
};

u64 _ganontikasonogo_room_0_tex_0000FAD8[] = 
{
	0x3947298D39D14297, 0x52DD5B2152994A9B, 0x329B3A5539D13213, 0x3A15429B62DD6B5F,  // 0x0000FAD8 
	0x5ADD3A17218D21CD, 0x31CB314B298F31D1, 0x3A11429B4B1D2A17, 0x221331CD39473945,  // 0x0000FAF8 
	0x298D221122112A13, 0x425752DD52DD3A13, 0x21CF29CF32113A99, 0x529952DD52DD52DB,  // 0x0000FB18 
	0x3A5529CF298F31CD, 0x39CD39CF31D131CF, 0x318F42995BA5531F, 0x429939D1398B398B,  // 0x0000FB38 
	0x39D132112A133257, 0x3A994A994A9939D1, 0x21CF39D14A555A99, 0x62DD62DD4B1D4A57,  // 0x0000FB58 
	0x31D131CF3A134213, 0x421339CF39D131D1, 0x31D13213531F6C29, 0x63A3529942553A13,  // 0x0000FB78 
	0x32132A1332574257, 0x3A574A5542553A11, 0x31CF3A114A55631D, 0x6BA36B1D62DD4A57,  // 0x0000FB98 
	0x39D139D13A133A13, 0x3A11318D31D139D1, 0x3A113A53531D7429, 0x6BE9531D42974257,  // 0x0000FBB8 
	0x3A57321332994AD9, 0x4ADB52D9425329CD, 0x318D39D14213529B, 0x6BA373A3631D3A57,  // 0x0000FBD8 
	0x3A1542133A1339D1, 0x39D339CF31CF39D1, 0x3A1352DB63636BE7, 0x742963A342DF4ADD,  // 0x0000FBF8 
	0x42DD3A9942DD6361, 0x63E552D929CD298B, 0x298F39D14A555299, 0x6B1D6B61631D52DB,  // 0x0000FC18 
	0x5ADB5297421339D3, 0x39D139D339D33A15, 0x4A5752DB5B1D6361, 0x73E76BE7531F42DD,  // 0x0000FC38 
	0x53215ADD5BA36BE7, 0x6BE55257298F298F, 0x318F39CF42575B1D, 0x63616BA56B5F6BA3,  // 0x0000FC58 
	0x6BA36B1F52DB4297, 0x3A1529D342134299, 0x529B52DB42574299, 0x5B1D6BE75B613A9B,  // 0x0000FC78 
	0x5B6563A56BA57361, 0x6B6152D93A133191, 0x318F31CF3A554A97, 0x4A9752995A996B1F,  // 0x0000FC98 
	0x6B5F6BA56BA3635F, 0x5A993A55529752DD, 0x5ADB52DD42573259, 0x429B6BA563A34ADD,  // 0x0000FCB8 
	0x52DB5B1D5ADB6B61, 0x6BA36B615AD94253, 0x3A113A1352995299, 0x4A994A5742554A9B,  // 0x0000FCD8 
	0x5297631D6B5F73E3, 0x63E562DD5ADB5ADD, 0x5299429B3A173217, 0x321952DD63A75BE7,  // 0x0000FCF8 
	0x429942553A1752DB, 0x635F736163614A97, 0x3A99531D631D5A99, 0x4A57421339D139D3,  // 0x0000FD18 
	0x3A154A99529962DB, 0x73617361631F5297, 0x3A1531D329D131D1, 0x29D3325752DD5B21,  // 0x0000FD38 
	0x3A5729D529D53A13, 0x52DB6BA36BE55B1D, 0x5B1D631D6B5F5299, 0x39D339D131D131D1,  // 0x0000FD58 
	0x29D131D132114A57, 0x631F6B615B5F4255, 0x31D1319129D339D1, 0x31D329D33A5752DF,  // 0x0000FD78 
	0x2A1321D329D329D5, 0x3A575A9B63616B61, 0x5B1D52DB5ADB4A55, 0x318F39CF31D139D1,  // 0x0000FD98 
	0x319131D32A1329D1, 0x42155297529929D3, 0x219131D12A1129D1, 0x2993219329D54A9D,  // 0x0000FDB8 
	0x29D12191198F1153, 0x29D34A9963616B61, 0x5B5F4A5742534A99, 0x3A1539D131D131D1,  // 0x0000FDD8 
	0x31D139D339D131CF, 0x31D14259631D3A57, 0x31D331D329D129D1, 0x2991199119912A17,  // 0x0000FDF8 
	0x29D319D3199319D3, 0x31D33A575B1F631F, 0x63214A9931D33A57, 0x425731D1298F318F,  // 0x0000FE18 
	0x318F31D1298F31D1, 0x318F3A155ADD4ADB, 0x39D32991318F29D3, 0x29D12191199321D3,  // 0x0000FE38 
	0x219329D329D329D1, 0x31D32A1552DB529B, 0x52973A1521D121D1, 0x39D329D1298F298D,  // 0x0000FE58 
	0x298F2191318F3215, 0x3A1531D33A154A9B, 0x39D32191319129D3, 0x31D12991195321D5,  // 0x0000FE78 
	0x21D1199119D12A11, 0x3213321752DD62DD, 0x52573A13298F298F, 0x2993298F298F298D,  // 0x0000FE98 
	0x31CF29D339D33A15, 0x421539D3299139D3, 0x31D121D121D329D3, 0x31D129D3199321D1,  // 0x0000FEB8 
	0x21932191218F29D1, 0x3A554A99631F5ADB, 0x4A5531D1318F318F, 0x318F298F31CF39D1,  // 0x0000FED8 
	0x39D331D139D33A13, 0x3A1331D529512991, 0x31D129D131D129D3, 0x2A1329D321D329D3,  // 0x0000FEF8 
	0x19D121D321D329D5, 0x3A575B216BE562DB, 0x4A55318F318F318F, 0x31CF29D3321329D7,  // 0x0000FF18 
	0x31D329D33A1331D3, 0x31D12991318F298F, 0x2991199129D33213, 0x29D329D332153217,  // 0x0000FF38 
	0x2A152A152A153215, 0x42574A9D631F6B1D, 0x529939D139D1298F, 0x2A112A1539D131D3,  // 0x0000FF58 
	0x319131D339D339D3, 0x39D131D33191218F, 0x298F31D332573255, 0x29D329D129D33215,  // 0x0000FF78 
	0x2A152A1532153A17, 0x429942594ADD631F, 0x6B1D4A5939D32A13, 0x3215321739D33213,  // 0x0000FF98 
	0x29D339D139D131D3, 0x31D13191294F31D1, 0x31D33A573A573A15, 0x29D329D32A1329D3,  // 0x0000FFB8 
	0x22132A1732594257, 0x42592A1732155299, 0x63615B1F32152A13, 0x39D3321529D331D1,  // 0x0000FFD8 
	0x29D331D339D34215, 0x42153A1531934215, 0x42593ADB2A573A15, 0x321329D729D521D3,  // 0x0000FFF8 
	0x3A99325932593A9B, 0x42572A1529D339D3, 0x52575ADB4A574215, 0x32132A1129D13213,  // 0x00010018 
	0x321331D131D13A15, 0x52DB52DB4A574299, 0x429D3A9B3A5B429F, 0x329B2A192A152A17,  // 0x00010038 
	0x3A593A9B32592A17, 0x29D5199119912991, 0x42155ADB5A995257, 0x4A57421539D339D3,  // 0x00010058 
	0x39D329D1298F298F, 0x3A575B1F5ADD4ADB, 0x429B429D42DD4B21, 0x4B214B1F42DB3259,  // 0x00010078 
	0x2A153257321729D3, 0x2191214D2191318F, 0x31D352995A995ADB, 0x52DB4A9B3A1329D3,  // 0x00010098 
	0x31D131D139D12951, 0x21914255631D5BA3, 0x5B63532552DF431F, 0x532142DF32592A17,  // 0x000100B8 
	0x2A15321321D3198D, 0x194D294D298F214D, 0x294D41D15ADB62DD, 0x529B4A994A554213,  // 0x000100D8 
	0x39D331D529D31991, 0x294F29D352DB6BA5, 0x6BE75C2B5BE5531F, 0x531F32593257429B,  // 0x000100F8 
	0x321521D3194F114D, 0x198F298D318F298D, 0x318D39D15ADB5ADB, 0x529942DD4A593A17,  // 0x00010118 
	0x325531D3298F218F, 0x219319513215631F, 0x6BA56BE75BA55B61, 0x42592A1532573A9B,  // 0x00010138 
	0x21D31993198F29D1, 0x29D131CF318D318F, 0x298D294D421362DB, 0x62DB525742134215,  // 0x00010158 
	0x425731D121912991, 0x2193298F21914259, 0x62DD6BE36B61631F, 0x39D329D331D331D5,  // 0x00010178 
	0x31D1299131CF29D3, 0x31D339D1398F398D, 0x39CF298D31D1631F, 0x6B6162DB4A994A9B,  // 0x00010198 
	0x4A9B4A5521932991, 0x219129D129D13213, 0x4A995B6152DD3215, 0x31D132573A131993,  // 0x000101B8 
	0x2A11219131D13213, 0x39D139D1318F394B, 0x398B318D298D4A55, 0x6B616B1F5ADD42DB,  // 0x000101D8 
	0x42994A573A1731D1, 0x21D12A1142134A59, 0x5B1D5B214A5721D3, 0x31D3321739D11991,  // 0x000101F8 
	0x39CF31D139D339D1, 0x31D129D131D1394B, 0x3949398B218D31D1, 0x631F6B1F6B1D5ADB,  // 0x00010218 
	0x4A5742554A9B3A97, 0x3A13321342574ADB, 0x4A9B52DD39D329D3, 0x31D329D3298F194D,  // 0x00010238 
	0x31D329D339D339D3, 0x31D1318F318F3147, 0x294B398B318F318F, 0x4A576B1F6BE763A5,  // 0x00010258 
	0x52DD3A974A994ADD, 0x42994299529952DB, 0x42153A15299129D3, 0x39D1298F298D318F,  // 0x00010278 
	0x318F318F318F39D3, 0x39D339D139CF3989, 0x2949318939CF3213, 0x39D34A9952DD62DD,  // 0x00010298 
	0x6B61535F4A9B4ADB, 0x529B5B1D52DB4A9B, 0x31D3299129912991, 0x31D139D129D33A13,  // 0x000102B8 
	0x31D3318F318F31D1, 0x39D139D339D131D1, 0x31CD39D342134213, 0x39D131D33A57529B,  // 0x000102D8 
	0x6B616B5F6B615B1D, 0x531D5B215ADB4213, 0x198F298F298F298F, 0x2A13425542154255,  // 0x000102F8 
	0x39D139D131D139D1, 0x39D33A133A134213, 0x4A554A9B42573A13, 0x29D3218F298F3A17,  // 0x00010318 
	0x4A995A996B5F7361, 0x6BA15ADD4A9D29D3, 0x09CD29CF298F298F, 0x42135A995A994A99,  // 0x00010338 
	0x421339D339D139D1, 0x39D3421342154257, 0x4A573A973213298F, 0x218F198F194F2191,  // 0x00010358 
	0x321342135ADB73A5, 0x6BA752993191298F, 0x218F39CF31CF21CD, 0x21D13A975ADB5ADB,  // 0x00010378 
	0x4A573A97421339D3, 0x42133A174A574A99, 0x39D3318F218F198D, 0x198F318F29D1318F,  // 0x00010398 
	0x219131D542595ADD, 0x63656B1F32553213, 0x39D139CD318F31CF, 0x31D13A1152575ADB,  // 0x000103B8 
	0x4A5552574A554257, 0x4A554A574A554215, 0x31D121912191298F, 0x298F298F21D12991,  // 0x000103D8 
	0x29D342554A9B5299, 0x5B216365531F4215, 0x41CF41CD39CF31CF, 0x31D131D142155299,  // 0x000103F8 
	0x3A594A554A975297, 0x52574A57421539D3, 0x39D131D1318F318F, 0x318F318F31913A13,  // 0x00010418 
	0x42975ADB529D425B, 0x4A9B5ADF5ADD4257, 0x39D139CF41CD398D, 0x3A134A554A555297,  // 0x00010438 
	0x21D131CF32154215, 0x4A99425739D1298F, 0x319131D3298F31D1, 0x298F294D29934215,  // 0x00010458 
	0x4A9B5B1F429B3219, 0x429B52DF529B3A15, 0x39CF398D298D31D1, 0x4A5552974A5539D1,  // 0x00010478 
	0x118F214D198D31D1, 0x321739D1318F298F, 0x318F3191318F318F, 0x318F318F2A153257,  // 0x00010498 
	0x3A59321729D52995, 0x3219425B52DD4257, 0x31D1319131D14A55, 0x5297525739D3298D,  // 0x000104B8 
	0x318F298F198F218D, 0x298F298F29D32993, 0x298F318F298D318D, 0x318F31D129D53217,  // 0x000104D8 
	0x3A5729D321D32193, 0x21933A595B1F4A9B, 0x2A1542154A555299, 0x52DB4213298F298B,  // 0x000104F8 
	0x11CD118D298F318F, 0x318F298F318F398D, 0x31CF318F298F318F, 0x29D329D7321531D7,  // 0x00010518 
	0x21D71993218F214F, 0x298F31D352DD5ADD, 0x42D95ADB52DD5257, 0x4A57318F198B218D,  // 0x00010538 
	0x194D298D298F2991, 0x318F29CF318D394B, 0x318D314D298F3191, 0x29D329D73A173215,  // 0x00010558 
	0x29D52191298F294D, 0x298D3191425B5ADF, 0x5B1F636153654A57, 0x3A13298D198D39D1,  // 0x00010578 
	0x190D298D21D129D3, 0x29D339D1398D394B, 0x3149314B318D3191, 0x29D532173A193217,  // 0x00010598 
	0x31D3298F298F298F, 0x298D295132576363, 0x63676321531D4259, 0x31D1298F19CF2A11,  // 0x000105B8 
	0x218F31CF318F39D3, 0x3A1539D1398B3907, 0x3907314B298F31D3, 0x31D73A173A193217,  // 0x000105D8 
	0x29D1218D298F298F, 0x298D298F31D552DD, 0x631F5B21531D3A59, 0x198F218F29CF31CF,  // 0x000105F8 
	0x29D339D1299139D3, 0x42974A1339CD3149, 0x310B294D31D13213, 0x3A17321731D739D3,  // 0x00010618 
	0x31D3318F298F298D, 0x298F29D13A17529B, 0x5ADD52DD42572991, 0x214D298F29CF218B,  // 0x00010638 
	0x31D32991199131D1, 0x3A575299525741CF, 0x398F39D13A154255, 0x3A173A573A153A13,  // 0x00010658 
	0x39D1298F298D298F, 0x319129D33A57429B, 0x52DB3A151991214D, 0x39CF39CD318B318B,  // 0x00010678 
	0x31D129D131D139D1, 0x3A1552996B1F5A99, 0x52574A5542574257, 0x4A554A57421339D1,  // 0x00010698 
	0x398F39D131D1318F, 0x31D1321342594ADF, 0x42DD2A13218F398F, 0x39CD318D318D39CD,  // 0x000106B8 
	0x31D339D132133215, 0x321542576B1F6B1F, 0x5B635ADD52994A97, 0x4A995A994A573A13,  // 0x000106D8 
	0x39D139D331D131D1, 0x3255429942594ADD, 0x321721D3321339D1, 0x31CD418B398B39CF,  // 0x000106F8 
	0x32153A133A153215, 0x3A134215631F73E5, 0x6B61631F631D62DB, 0x62DD6B1F631D5257,  // 0x00010718 
	0x421339D331D13A15, 0x429B4ADD425B3A59, 0x2A573A5B425B4213, 0x39CF398B39CD39CF,  // 0x00010738 
	0x321732153A153A15, 0x3A57425752996363, 0x62DB6B5F5B1D5B1D, 0x62DB62DD6B21631D,  // 0x00010758 
	0x4A992A17425752DD, 0x52DD4ADB42992A13, 0x3A175B21532352DB, 0x42553A1139D339D5,  // 0x00010778 
	0x4A553A5742574A57, 0x529B52994A575ADB, 0x6B5F73A562DD5B1D, 0x5ADB5ADB632162DD,  // 0x00010798 
	0x5ADD42D952DB4ADF, 0x429D4297321511D1, 0x29D55B1F6BE953A9, 0x4B1D42993A5732D9,  // 0x000107B8 
	0x42994A9952DB52DB, 0x52994A5742974A55, 0x5B1D631D5ADB4A9B, 0x3A573A153A174257,  // 0x000107D8 
	0x63616BE563615B1D, 0x429B425731D1218F, 0x218F29D752DB6BE7, 0x6BA3636162DB5ADD,  // 0x000107F8 
	0x5B1F5ADD52DB4ADD, 0x4A9932152A1339D3, 0x4A5752574A573A13, 0x29D1198F195129D3,  // 0x00010818 
	0x4A996BA373A56BA5, 0x5B1D429531CF29CF, 0x31CF1993321552DD, 0x73A373E76B1F5B1D,  // 0x00010838 
	0x6B635B1F4A993A57, 0x3A1331D129D129D1, 0x3A155257529931D1, 0x114D214B194F218F,  // 0x00010858 
	0x32154A99636173E7, 0x631F3A1329CF29CF, 0x29D119D332154ADB, 0x631D63A55B1D529B,  // 0x00010878 
	0x5ADB52993A1729D3, 0x299131D132132A15, 0x3A1342134257194F, 0x294D294D214D298F,  // 0x00010898 
	0x3215425952DB631D, 0x5ADD3A13318F318F, 0x2991221542DF53A3, 0x4A9B4ADB425939D1,  // 0x000108B8 
	0x3A15321321D1298F, 0x31D139D131D34215, 0x4A574A553A15194D, 0x298D218B294D31D1,  // 0x000108D8 
	0x429B631F5B6152DB, 0x3A1331D13191298F, 0x31D132574ADD5361, 0x4ADB42973A553A57,  // 0x000108F8 
	0x39D1298F298D31D1, 0x32152A152A134A57, 0x631F4ADB31D1218B, 0x298D214D29CD31D1,  // 0x00010918 
	0x429952994B1B3A97, 0x321539D131D139D1, 0x3A132A1332995361, 0x42DD42993A57329B,  // 0x00010938 
	0x39D1298F31D14213, 0x3A573A5942594ADD, 0x635F42D9218D218B, 0x218D298D31CF31D1,  // 0x00010958 
	0x4297429942993A15, 0x325539D33A134213, 0x321119D12A555BA3, 0x4B63429D3A5729D1,  // 0x00010978 
	0x3A1339D142134A57, 0x531D5B61635F5BA3, 0x635F3A971191298D, 0x298D218B31CD31D1,  // 0x00010998 
	0x3A153A553A573255, 0x3255421542973A13, 0x29D121D12A15531F, 0x531F3257325521CF,  // 0x000109B8 
	0x3A133A134A5752DB, 0x631D5BA56B5F5BE3, 0x639F531B21D129CD, 0x31CD31CF298F3213,  // 0x000109D8 
	0x3A572A152A133213, 0x32554257429B2A57, 0x221329D33A574ADD, 0x4ADD2A1731D1218B,  // 0x000109F8 
	0x3A1142514A5552DB, 0x5B1D53A56B636C27, 0x6B5F535F31CF29CD, 0x29CD39D142134257,  // 0x00010A18 
	0x3A5529D1299129D1, 0x32573A5932592215, 0x29D329D52A573299, 0x3A993215298F294B,  // 0x00010A38 
	0x41CB39CF3A114255, 0x4A99531F536563E9, 0x63613ADB19CD21CF, 0x39D13A1342554297,  // 0x00010A58 
	0x2A13218F198F19D1, 0x32153A5732552A15, 0x325932992A972A97, 0x325731D3318D3947,  // 0x00010A78 
	0x418939CF3A534257, 0x42DD531F53615BA5, 0x631D3A93318F19D3, 0x19D52A1542574ADB,  // 0x00010A98 
	0x3A1331CF29CF21D1, 0x2A153A593A573215, 0x32572A9922592A57, 0x325531CF39894143,  // 0x00010AB8 
};

u64 _ganontikasonogo_room_0_tex_00010AD8[] = 
{
	0x0000000000000000, 0x0000000000000001, 0x1100000000000000, 0x0000000000000000,  // 0x00010AD8 
	0x0000000000000000, 0x0000000041174111, 0x1111111100000000, 0x0000000000000000,  // 0x00010AF8 
	0x0000000000000000, 0x0000074411447411, 0x1111322222100000, 0x0000000000000000,  // 0x00010B18 
	0x0000000000000000, 0x0004147417411322, 0x2222233222223000, 0x0000000000000000,  // 0x00010B38 
	0x0000000000000000, 0xBB71144114122222, 0x2AAAAA2231132230, 0x0000000000000000,  // 0x00010B58 
	0x0000000000000008, 0xB74411132112A222, 0x22CACAAAAA231131, 0x1000000000000000,  // 0x00010B78 
	0x000000000000076B, 0x4771322A21113233, 0x332AA2323CAAA232, 0x1300000000000000,  // 0x00010B98 
	0x00000000000076B4, 0x771122ACA2111322, 0x3223A22233AACAA2, 0x2331000000000000,  // 0x00010BB8 
	0x0000000000076B11, 0x1411112222223322, 0x223322223132AAAA, 0x2231300000000000,  // 0x00010BD8 
	0x0000000000B68731, 0x1141441322AAA432, 0x232322222222AA23, 0xAA21130000000000,  // 0x00010BF8 
	0x0000000006667122, 0x23114122AA21E132, 0x22222AAA222AC222, 0xACA1133000000000,  // 0x00010C18 
	0x0000000059681122, 0x2141132ACD472223, 0x22323ACA222AAAA2, 0x3222121100000000,  // 0x00010C38 
	0x0000000656842233, 0x177732A144743233, 0x2233232D11132322, 0x312A222130000000,  // 0x00010C58 
	0x000000059BB12237, 0xB771AAA4B4B11133, 0x2223114433113222, 0x222AA22210000000,  // 0x00010C78 
	0x00000095BB713238, 0x741AAA24B7111113, 0x2344111132222231, 0x122CCAA233000000,  // 0x00010C98 
	0x0000085967443298, 0x412AA234B4113311, 0x1B74111132AAAA22, 0x132AACA221100000,  // 0x00010CB8 
	0x0000095864141798, 0x71AAA21771111111, 0x6B4111132ACACA32, 0x3332CACA22100000,  // 0x00010CD8 
	0x00006566B1111566, 0x71AAA3171311111B, 0x671414112AAAAA22, 0x2331222A33110000,  // 0x00010CF8 
	0x00005588B4111599, 0x72AAA114111111B9, 0x944447B74DDD3111, 0x1311222213214000,  // 0x00010D18 
	0x000859B747138999, 0x42AA214111111469, 0x67744B8888BB774B, 0x7143232311211000,  // 0x00010D38 
	0x0006564444436556, 0x73AA311111131969, 0x98B8666668866696, 0xBB13312223331000,  // 0x00010D58 
	0x0096561147415559, 0xB133111111114969, 0x6666666666666666, 0x6B13111332311700,  // 0x00010D78 
	0x0096564217415559, 0x811441144111B969, 0x6666699999996666, 0x6B71441333314400,  // 0x00010D98 
	0x0066964214419559, 0x6411131441116966, 0x6669999999999999, 0x9666B71111114400,  // 0x00010DB8 
	0x05669B4121118559, 0x6713117412339966, 0x9999971111234469, 0x99969B1432211140,  // 0x00010DD8 
	0x05996B1131118559, 0x9811141412319999, 0x996122A211322222, 0x4699644422231170,  // 0x00010DF8 
	0x0595671111114559, 0x9684123112316999, 0x6122322231122232, 0x23B966B4A22214B0,  // 0x00010E18 
	0x05956B1111111959, 0x9664223112349668, 0x1123322231113222, 0x22216671CAAA1B80,  // 0x00010E38 
	0x05996B7411111B59, 0x966B113312319672, 0x1111111111111111, 0x132218B12AAC1770,  // 0x00010E58 
	0x0599B77741111185, 0x9966711113119732, 0x337941122AA21441, 0x1113236123234440,  // 0x00010E78 
	0x0599844741111319, 0x999684112232B112, 0x222B9641AAAAA171, 0x1113221321111440,  // 0x00010E98 
	0x5599641144111134, 0x9969687122123311, 0x3231698EAAAAAA21, 0x1333222331314774,  // 0x00010EB8 
	0x5559871114114432, 0x1999666711223144, 0x1311196842AAAAA2, 0x1131322332217477,  // 0x00010ED8 
	0x05598B7441444412, 0x21959966B712A211, 0x133111968E3AA222, 0x3111131322234480,  // 0x00010EF8 
	0x0559B7BBB2444441, 0x1311999996B42A23, 0x1212118668E1AA22, 0x1111413333234780,  // 0x00010F18 
	0x05598777B3A47774, 0x111111B666668E12, 0x34231119668E2AA2, 0x1341111311117BB0,  // 0x00010F38 
	0x0555B74764AA1774, 0x1331111147B71222, 0x71A11136668B1AAA, 0x2111133333147B70,  // 0x00010F58 
	0x05596741BB2AA274, 0x1131133113111224, 0x1AAD1318966842AA, 0x211111322331BB80,  // 0x00010F78 
	0x05559B4169EAAA23, 0x3111322233211113, 0xAA271114966871AA, 0x3111131223176660,  // 0x00010F98 
	0x05559B117981AAAA, 0xA311322231311122, 0xA21B11149668712A, 0x11412213221B8670,  // 0x00010FB8 
	0x0055564315943AAA, 0xAAAAAAA22221132A, 0xA347314496664133, 0x1411AA2122468B00,  // 0x00010FD8 
	0x0055597329981222, 0x2A22A333223322AA, 0x2177223196667111, 0x1411A22321BB8700,  // 0x00010FF8 
	0x005559611B59B412, 0x2AA222AAAAAAAAA2, 0x31B1131196668111, 0x171E332314B88700,  // 0x00011018 
	0x0005559B11559B11, 0x2CACAAACAAAAAA23, 0x17B14777666668B7, 0xB41B11114B966000,  // 0x00011038 
	0x00055596138559B7, 0x13322AAAAAAAAD11, 0x76431477986668BB, 0x6787144789998000,  // 0x00011058 
	0x00055559B1195968, 0x71411AC22AA2344B, 0x6632A31B96666669, 0x9697111765960000,  // 0x00011078 
	0x00005559671B5596, 0x67BB84D1474B8869, 0x6222AA2666696999, 0x9951147B59880000,  // 0x00011098 
	0x000005559B416559, 0x9966668B7B999999, 0x2223333966666999, 0x9973178996600000,  // 0x000110B8 
	0x0000055556711155, 0x9999666999999991, 0x231113B969969955, 0x5932176999900000,  // 0x000110D8 
	0x00000055596B7449, 0x5555599555555911, 0x3313136896999555, 0x5123189695000000,  // 0x000110F8 
	0x0000005555967744, 0x8955555555597111, 0x11133B8B66999999, 0x4111B86955000000,  // 0x00011118 
	0x0000000555598BB7, 0xBBB6995998411133, 0x111116B766999956, 0x477BB95550000000,  // 0x00011138 
	0x0000000055559B74, 0x1441133111111112, 0x3131768899955974, 0x47B6555500000000,  // 0x00011158 
	0x000000000555598B, 0x1114441111111113, 0x2217799995558744, 0x7B95555000000000,  // 0x00011178 
	0x0000000000555559, 0xB444141111141111, 0x21B899555987114B, 0x9555950000000000,  // 0x00011198 
	0x0000000000055555, 0x9874144447447441, 0x11B8BB7B74444789, 0x5555500000000000,  // 0x000111B8 
	0x0000000000005555, 0x596B47B747B77117, 0x4111113147B86995, 0x5555000000000000,  // 0x000111D8 
	0x0000000000000555, 0x55596B7477BB7717, 0x774114444B899555, 0x5550000000000000,  // 0x000111F8 
	0x0000000000000005, 0x55555996668888B7, 0xBBB744BB86955555, 0x5000000000000000,  // 0x00011218 
	0x0000000000000000, 0x5555555999999996, 0x6666666955555555, 0x0000000000000000,  // 0x00011238 
	0x0000000000000000, 0x0055555555595555, 0x5555555555555000, 0x0000000000000000,  // 0x00011258 
	0x0000000000000000, 0x0000055555555555, 0x5555555555500000, 0x0000000000000000,  // 0x00011278 
	0x0000000000000000, 0x0000000055555555, 0x5555555000000000, 0x0000000000000000,  // 0x00011298 
	0x0000000000000000, 0x0000000000000055, 0x9000000000000000, 0x0000000000000000,  // 0x000112B8 
};

u64 _ganontikasonogo_room_0_tex_000112D8[] = 
{
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000112D8 
	0x0000000000000000, 0x0000000001147111, 0x1111111000000000, 0x0000000000000000,  // 0x000112F8 
	0x0000000000000000, 0x0000004411444441, 0x1111322222000000, 0x0000000000000000,  // 0x00011318 
	0x0000000000000000, 0x0007417417441332, 0x2222232222221000, 0x0000000000000000,  // 0x00011338 
	0x0000000000000000, 0x08711471141222CC, 0x2CACCC2231122230, 0x0000000000000000,  // 0x00011358 
	0x0000000000000000, 0xB74441113112C222, 0x22CAACCCC2211323, 0x1000000000000000,  // 0x00011378 
	0x0000000000000088, 0x7771322C21112233, 0x322CC222CAAA2222, 0x1300000000000000,  // 0x00011398 
	0x00000000000008B7, 0x774122CAC2111322, 0x3222C22232CCCCC3, 0x2130000000000000,  // 0x000113B8 
	0x0000000000078B41, 0x4411132CCC231322, 0x2232C2223122CAAC, 0x2233100000000000,  // 0x000113D8 
	0x0000000000B88B11, 0x11414112C2C23122, 0x232222222322CC22, 0xC231110000000000,  // 0x000113F8 
	0x0000000006B8B422, 0x2311111122223113, 0x22222CC2222CC222, 0xCAC1133000000000,  // 0x00011418 
	0x0000000056681122, 0x22231411133112C3, 0x12322CCC222CCCC2, 0x2222121100000000,  // 0x00011438 
	0x0000000056872233, 0x22223114122221BB, 0x223322222232C222, 0x332C222100000000,  // 0x00011458 
	0x000000099BB42231, 0x332131411CA34B13, 0x222222C222222223, 0x222CC22310000000,  // 0x00011478 
	0x000000658B713221, 0x331174112317B113, 0x22C2222223222313, 0x222CCAC213000000,  // 0x00011498 
	0x00000B9987443222, 0x2117412C177B3331, 0x3223231331332332, 0x222CCAC221000000,  // 0x000114B8 
	0x0000065867141222, 0x318B12A377B11111, 0x1111111131322222, 0x222CCCA223100000,  // 0x000114D8 
	0x0000B99884111322, 0x37673A277B111111, 0x3111122313231132, 0x2222C2CC33110000,  // 0x000114F8 
	0x00006588B71112C2, 0x7681CA3741111111, 0x1271144441111111, 0x3222C22213310000,  // 0x00011518 
	0x000896BB47132322, 0x8BB1A21441111111, 0x3777B11411111321, 0x1322222311211000,  // 0x00011538 
	0x0008567414432316, 0x684CA21111133111, 0x78B44411132CC232, 0x3122222233331000,  // 0x00011558 
	0x0008564147412166, 0x971AC21141111147, 0xB6774111222CAA22, 0x2332333332314000,  // 0x00011578 
	0x0098564217412169, 0x672AAC3141111148, 0x86B7477122CAAA22, 0x2231111333144700,  // 0x00011598 
	0x0098967334413766, 0x842AAC3441111238, 0x66777871112AAA22, 0x2224111111114400,  // 0x000115B8 
	0x0068984121111666, 0x81CAAC3112222236, 0x96BB8871471AAC23, 0x1224133332211140,  // 0x000115D8 
	0x05966B1131117668, 0xB4AAAC2132322236, 0x96B6887477122C23, 0x4237133222211170,  // 0x000115F8 
	0x056567111111696B, 0x742AAAC232233319, 0x98B666B77B122221, 0x12174322C22214B0,  // 0x00011618 
	0x05956B1111115967, 0x112AAAAC22231116, 0x968868B777432234, 0x111B7222CCCC4B80,  // 0x00011638 
	0x05696B741114556B, 0x11CAAAACC2231136, 0x968866BB74111311, 0x44477322CAA24770,  // 0x00011658 
	0x0565BB77411B5967, 0x73AAAAA2AC22213B, 0x9668668887411111, 0x4141422222214410,  // 0x00011678 
	0x0595844441165697, 0x41CAAAAAA22CC211, 0x6966666888B74444, 0x1311722231114140,  // 0x00011698 
	0x0599641144155967, 0x412AAAAAA22CCC11, 0x8966666888874441, 0x1214B22331317770,  // 0x000116B8 
	0x059687411445596B, 0x712CCAAAAA22A221, 0x1696666868841111, 0x1147B223322174B0,  // 0x000116D8 
	0x05598B7447B5559B, 0xB73AAACAAA22C222, 0x11B66666688B4111, 0x41777332222374B0,  // 0x000116F8 
	0x055987BB47B55568, 0xBB12AAAACC22C2C1, 0x1221666666684111, 0x117B7133332147B0,  // 0x00011718 
	0x0555877774B55568, 0x8B432AACCC2A22C3, 0x1333169666688741, 0x17B8711111117B40,  // 0x00011738 
	0x0555874774455596, 0x68713CAAACAA2221, 0x1111316666666841, 0x1788133333147B40,  // 0x00011758 
	0x05556B4444195596, 0x684132AAAAAC1111, 0x4113331966668B44, 0x788B113223318BB0,  // 0x00011778 
	0x0555984114165596, 0x66B41132CC214174, 0x713331186666887B, 0x8BB1131223176680,  // 0x00011798 
	0x00559811111B5596, 0x666B7113311747B7, 0x811311146668BBB8, 0x8882221323188800,  // 0x000117B8 
	0x0055564333145559, 0x66668B444B8BB887, 0x811131476666B4B6, 0x8842CC212278B700,  // 0x000117D8 
	0x005559B322319559, 0x96666668866B66BB, 0x7111223466688B8B, 0x7612222321BBB700,  // 0x000117F8 
	0x0005556412314555, 0x96966669968996B8, 0x1111111768688B88, 0x681133231488B400,  // 0x00011818 
	0x0005556813331655, 0x5996669999669661, 0x3111474B8B888669, 0x9331111148668000,  // 0x00011838 
	0x0005559643331755, 0x5999969966959681, 0x2312147967886865, 0x7311147786568000,  // 0x00011858 
	0x0000555981111475, 0x5555599995999722, 0x2222C3786B869958, 0x2311114765680000,  // 0x00011878 
	0x0000555967111114, 0x6555555599961222, 0x2222226768665563, 0x22311478568B0000,  // 0x00011898 
	0x0000055598411114, 0x44B6555566713133, 0x2323178786955673, 0x2223178596800000,  // 0x000118B8 
	0x0000055556B11111, 0x1111111447441113, 0x2311777B69556111, 0x2222176969500000,  // 0x000118D8 
	0x00000055556B7411, 0x1111111111441111, 0x131177B695583231, 0x3221486895000000,  // 0x000118F8 
	0x000000055596B741, 0x4411333311111331, 0x1111BB6666711111, 0x1114B88950000000,  // 0x00011918 
	0x0000000055596B77, 0x7741133311131133, 0x4148999971111114, 0x77BB855500000000,  // 0x00011938 
	0x0000000055559874, 0x111113331111111B, 0x8895987111111144, 0x4786555500000000,  // 0x00011958 
	0x0000000005555587, 0x111111111111176B, 0x8BB7411144414447, 0x7855995000000000,  // 0x00011978 
	0x0000000000555556, 0x8444141111144111, 0x3311114444741148, 0x9559550000000000,  // 0x00011998 
	0x0000000000055555, 0x6877144747477444, 0x1111111141444B69, 0x5555500000000000,  // 0x000119B8 
	0x0000000000000555, 0x556877B747B77117, 0x4111111147B86955, 0x5550000000000000,  // 0x000119D8 
	0x0000000000000055, 0x55596874777BB747, 0x744114444B895555, 0x5500000000000000,  // 0x000119F8 
	0x0000000000000005, 0x555559666668888B, 0xBBB777B866955555, 0x5000000000000000,  // 0x00011A18 
	0x0000000000000000, 0x0555555996999666, 0x6666666555555550, 0x0000000000000000,  // 0x00011A38 
	0x0000000000000000, 0x0005555555555555, 0x5555555555555000, 0x0000000000000000,  // 0x00011A58 
	0x0000000000000000, 0x0000005555555555, 0x5555555555500000, 0x0000000000000000,  // 0x00011A78 
	0x0000000000000000, 0x0000000005555555, 0x5595555000000000, 0x0000000000000000,  // 0x00011A98 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011AB8 
};

u64 _ganontikasonogo_room_0_tex_00011AD8[] = 
{
	0x0000000000000000, 0x0000000000000001, 0x3300000000000000, 0x0000000000000000,  // 0x00011AD8 
	0x0000000000000000, 0x0000000041474441, 0x1114113100000000, 0x0000000000000000,  // 0x00011AF8 
	0x0000000000000000, 0x0000074444447441, 0x3313322222300000, 0x0000000000000000,  // 0x00011B18 
	0x0000000000000000, 0x00E4447447441322, 0x2222232222223000, 0x0000000000000000,  // 0x00011B38 
	0x0000000000000000, 0xEB71444414122222, 0x2AAACC2233332230, 0x0000000000000000,  // 0x00011B58 
	0x0000000000000008, 0xE74443332332C222, 0x22CAACCCCC233333, 0x3000000000000000,  // 0x00011B78 
	0x0000000000000E8B, 0x4774322A23113233, 0x332CC2222CCAC232, 0x3330000000000000,  // 0x00011B98 
	0x000000000000E8B4, 0x774122CAC231332B, 0x1322C22233CCCCC2, 0x2331000000000000,  // 0x00011BB8 
	0x0000000000078B41, 0x4444432CCC2313E4, 0x333322223332CACC, 0x2233300000000000,  // 0x00011BD8 
	0x0000000000E68733, 0x34444432C2C23771, 0xC23322222222CC22, 0xCC23330000000000,  // 0x00011BF8 
	0x0000000008667122, 0x2231441122228E3C, 0xAAC32CCC222CC222, 0xCAC3333000000000,  // 0x00011C18 
	0x0000000056881322, 0x222344133228832C, 0xC2CC22CC222CCCC2, 0x222C123100000000,  // 0x00011C38 
	0x0000000656842233, 0x3223311441B9B32C, 0xAAA2C32222322222, 0x332C222330000000,  // 0x00011C58 
	0x000000696BE42231, 0x333334114469842A, 0xAAA2232222222223, 0x222CC22233000000,  // 0x00011C78 
	0x000000998E713223, 0x3333311114596E3A, 0xAAA2232223322333, 0x222CCAC233000000,  // 0x00011C98 
	0x0000085687443222, 0x2332223317996B42, 0xAAC2244333333332, 0x222CCAA223300000,  // 0x00011CB8 
	0x0000095884443222, 0x332222223E966E13, 0x2C22344133222CC2, 0x2222CCAC22300000,  // 0x00011CD8 
	0x00008588B4143222, 0x3333222234966B12, 0xC2223E4444323322, 0x2222222C33330000,  // 0x00011CF8 
	0x0000558BE4113433, 0x3322223337966873, 0xCC214B1474144111, 0x1322C22233334000,  // 0x00011D18 
	0x000B56B744447411, 0x32CAC23147666684, 0x22144B1347844322, 0x222CC2C333334000,  // 0x00011D38 
	0x0008584444B8847E, 0x432CAAC233866668, 0x447B672478E412CC, 0xC222332223331000,  // 0x00011D58 
	0x0098584147498788, 0x4CAAACC231466888, 0x8BB89428E8413CAA, 0xC223413332334400,  // 0x00011D78 
	0x0068564247468696, 0xE2AAAAA223466668, 0x888683888743CCC2, 0x2224733333344400,  // 0x00011D98 
	0x0066584234486996, 0x843CAAAC33449668, 0x886834688E42A223, 0x3227E33333314400,  // 0x00011DB8 
	0x05689B43244B6996, 0x8B442C2214426988, 0x669EC8866B422344, 0x434B433232231140,  // 0x00011DD8 
	0x05666E4131449666, 0x88BE432234433966, 0x6961786668414478, 0x8E88133222233170,  // 0x00011DF8 
	0x0599871411419966, 0x6668E13114123899, 0x99E38866688E8886, 0x66663322C22234B0,  // 0x00011E18 
	0x05956E414144B996, 0x66688EEEE4122466, 0x9828886686666666, 0x669E2222CCAC1E80,  // 0x00011E38 
	0x05966B7411441899, 0x666668888433C116, 0x6446688866666666, 0x666222222AAC4770,  // 0x00011E58 
	0x0599E77741141346, 0x9966666668E43338, 0x43B6688688666666, 0x91322C2222234440,  // 0x00011E78 
	0x5559B44744144331, 0x769966666688BB32, 0x336666666666666E, 0x1313C22223314440,  // 0x00011E98 
	0x5599844444314133, 0x31747EE7B7744441, 0x3314EBE77E47EE44, 0x3333222333334774,  // 0x00011EB8 
	0x555687414441442C, 0x2311433332222344, 0x4333444143331144, 0x433332233223747E,  // 0x00011ED8 
	0x05968E7444444412, 0x2443222222AAA234, 0x13B413322CCCCA21, 0x4431133322224480,  // 0x00011EF8 
	0x0559B7BE47744447, 0x44332CCACCAA3424, 0x22887432CAAAAAAC, 0x3444433333234780,  // 0x00011F18 
	0x0559B77744447744, 0x1432AAAAAA237124, 0x234688432CAAAAA2, 0xC211413333317BE0,  // 0x00011F38 
	0x0559B7477441E743, 0x1122AAAAA347E274, 0x221866E742AAAAAC, 0x2223133333347B70,  // 0x00011F58 
	0x0559874444416B41, 0x132CAAAA3EB84472, 0xA2316688E32AAAAA, 0x223113322331BE80,  // 0x00011F78 
	0x05559E4444449844, 0x3332CA23B8874B12, 0xAA23866884132CAA, 0x2314333223348860,  // 0x00011F98 
	0x05559B33344796B7, 0x434744476871B712, 0xAAC348688B74332C, 0x23443233221B8870,  // 0x00011FB8 
	0x0055564233169987, 0x747866688B44B742, 0xAAA2349668884133, 0x44443C2322488E00,  // 0x00011FD8 
	0x0055567222369968, 0xE7B86666883BEE4C, 0xAA2C328666888BB4, 0x4444422323EB8E00,  // 0x00011FF8 
	0x0055598432355996, 0x88868868847B871C, 0xAAC2234966668888, 0xE77EE32334E88700,  // 0x00012018 
	0x0055596B43E55999, 0x66686686E18E8E1C, 0xAAC2237B96666666, 0x869683144B666000,  // 0x00012038 
	0x0005559843765599, 0x6669696743988871, 0xCCC2337448999999, 0x9555644786968000,  // 0x00012058 
	0x00055556E1334B65, 0x5999943141968E74, 0x3C22144441499995, 0x59E4444785668000,  // 0x00012078 
	0x0000555987111144, 0x8888233147996871, 0x222244133314B881, 0x2233147B99880000,  // 0x00012098 
	0x000005556B444144, 0x444133117B966684, 0x1324741233331443, 0x2223178658800000,  // 0x000120B8 
	0x0000055556741334, 0x133131144869666B, 0x444E7E3332332211, 0x3222148965900000,  // 0x000120D8 
	0x00000055598E7411, 0x1333311147996666, 0x8B88BE3233333233, 0x3223489865000000,  // 0x000120F8 
	0x0000005555987744, 0x4413333314999666, 0x6668BE1233311333, 0x3134E88955000000,  // 0x00012118 
	0x0000000555568777, 0x7743333331899669, 0x6696661333141114, 0x477EB65550000000,  // 0x00012138 
	0x0000000055559B74, 0x4441123334485599, 0x9595831433314444, 0x47B8955500000000,  // 0x00012158 
	0x00000000055559B7, 0x1344413314446599, 0x9698111444444444, 0x7B95555000000000,  // 0x00012178 
	0x0000000000555596, 0xE444444311444899, 0x956134444474444E, 0x6555950000000000,  // 0x00012198 
	0x0000000000055555, 0x6874144447477485, 0x5833131444444786, 0x5555500000000000,  // 0x000121B8 
	0x0000000000005555, 0x596B47B747BE7446, 0x8413333144EB8695, 0x5555000000000000,  // 0x000121D8 
	0x0000000000000555, 0x55568B7477BBE747, 0x744134444E869555, 0x5550000000000000,  // 0x000121F8 
	0x0000000000000005, 0x55555968888888BE, 0xBEE744EE88955555, 0x5000000000000000,  // 0x00012218 
	0x0000000000000000, 0x5555555966699668, 0x8888686955555555, 0x0000000000000000,  // 0x00012238 
	0x0000000000000000, 0x0055555555555555, 0x9555555555555000, 0x0000000000000000,  // 0x00012258 
	0x0000000000000000, 0x0000055555555555, 0x5555555555500000, 0x0000000000000000,  // 0x00012278 
	0x0000000000000000, 0x0000000055555555, 0x5555555500000000, 0x0000000000000000,  // 0x00012298 
	0x0000000000000000, 0x0000000000000055, 0x9000000000000000, 0x0000000000000000,  // 0x000122B8 
};

u64 _ganontikasonogo_room_0_tex_000122D8[] = 
{
	0x0000000000000000, 0x0000000000000000, 0xD000000000000000, 0x0000000000000000,  // 0x000122D8 
	0x0000000000000000, 0x0000000001111111, 0x4D1111D400000000, 0x0000000000000000,  // 0x000122F8 
	0x0000000000000000, 0x0000013111111111, 0x4D4D11D1D4400000, 0x0000000000000000,  // 0x00012318 
	0x0000000000000000, 0x0003222222222222, 0x23D4DD444D1DB000, 0x0000000000000000,  // 0x00012338 
	0x0000000000000000, 0x0333322222AA2222, 0x2231331D147444B0, 0x0000000000000000,  // 0x00012358 
	0x0000000000000003, 0x12233222AAA22222, 0x2223322333147417, 0xB000000000000000,  // 0x00012378 
	0x0000000000000013, 0x2332222222233233, 0x222113112231447D, 0xB700000000000000,  // 0x00012398 
	0x0000000000002112, 0x222AAA2222233222, 0x223111113231D41D, 0xDBBB000000000000,  // 0x000123B8 
	0x000000000002D132, 0x2222222222232222, 0x2311111D3331D122, 0xD7BBB00000000000,  // 0x000123D8 
	0x00000000003D12AA, 0x2223333223222222, 0x3111111322311133, 0x14B6860000000000,  // 0x000123F8 
	0x00000000011122AA, 0xA223322333222222, 0x1131333222231133, 0x2146686000000000,  // 0x00012418 
	0x00000000D132AA2A, 0x2222233332222321, 0x1113223222221333, 0x3D779B8600000000,  // 0x00012438 
	0x00000003D332A222, 0x2332223122A21D11, 0x113221333223D111, 0x1D44B7B6B0000000,  // 0x00012458 
	0x0000000D122A2222, 0x3332332222244113, 0x332233312222711D, 0xD331477B80000000,  // 0x00012478 
	0x0000001D22222222, 0x11233222A2771113, 0x2222331132216441, 0x12214D4788000000,  // 0x00012498 
	0x000002D122222322, 0x1323222227B31112, 0x221111D1322B97D3, 0x22214317B8800000,  // 0x000124B8 
	0x000001D222222221, 0x3222222378731133, 0x3144474222166122, 0x222112248B600000,  // 0x000124D8 
	0x00002D3222222231, 0x2322223788111133, 0x3D44443231897322, 0x2231122D68690000,  // 0x000124F8 
	0x00001D2222222233, 0x2222AA366B1DD322, 0x311113122B591222, 0x2113222466865000,  // 0x00012518 
	0x0002112222AA2221, 0x222AA24667111323, 0x2313122229583222, 0x3132223489B65000,  // 0x00012538 
	0x0003D32222222231, 0x2222A27683332223, 0x111222A2B5943222, 0x112222D7B6865000,  // 0x00012558 
	0x0013D22222222231, 0x232A22B6B113214D, 0xDD32AAA469933233, 0x132221474B665500,  // 0x00012578 
	0x0032D12222222233, 0x33AA2376B1112D4D, 0x122AAA3669B31331, 0x32231D774B655500,  // 0x00012598 
	0x0033132222222223, 0x222A234671123312, 0x22AAA2B669121111, 0x223DD4747BB95500,  // 0x000125B8 
	0x0D32122AA2221232, 0x222A2348722A2222, 0x23222D6696221332, 0x31141D4444765650,  // 0x000125D8 
	0x0D3132A222221133, 0x222A223D7222322A, 0xA2221B6697211122, 0x31D414DD41786950,  // 0x000125F8 
	0x0D11322222331122, 0x222AAAA22222AA2A, 0xAAA2766991111122, 0x21D14D1111776550,  // 0x00012618 
	0x0711332323311132, 0x2222AAAAAAAAAAAA, 0xAA2DB86663D41322, 0x31D3711111145550,  // 0x00012638 
	0x0711311323331112, 0x222AAAAAAAAAAAAA, 0xA2147B8971DD1331, 0xDD31B13322345550,  // 0x00012658 
	0x071121131323D1D1, 0x222AAAAAAAAAAAAA, 0x23D47B69444DD1D4, 0x712D822323485550,  // 0x00012678 
	0x071D133113214D44, 0x132AAAA222AA2A22, 0x2DD47B9977444474, 0x131B631334785550,  // 0x00012698 
	0x7B14D222323D4444, 0xD1122232222AA223, 0x1477489944D4D4D1, 0x1A499111444B5550,  // 0x000126B8 
	0x0BD1122223174444, 0x44D1DD1122AA2231, 0xD47BB66644444DD3, 0xA27691DD11DB5555,  // 0x000126D8 
	0x0841331111477441, 0xDD411D4122222311, 0xD47B8888474DD132, 0xA1B69441234B5550,  // 0x000126F8 
	0x087D31D1144B7774, 0xDD74D1D1113331D4, 0xD44BBB69744D12A2, 0x2D8964D331D65550,  // 0x00012718 
	0x0BBD1111DDDB4747, 0x44D74D331111D44D, 0x144BB86674D3AAA1, 0x4B699D1111465550,  // 0x00012738 
	0x0887133D411B7444, 0xB7D4774322314771, 0x1D477BB8B322A227, 0x8699B11111765550,  // 0x00012758 
	0x0BBB411D11D7B7BB, 0xBB77441132147444, 0x4447777B8D22A21B, 0x8999413231765550,  // 0x00012778 
	0x06B87311111DBBB6, 0x696744DDDD444777, 0x47BBB777B4122346, 0x959933221DB55550,  // 0x00012798 
	0x008B732331117BBB, 0x8958744477447774, 0x788BBBD474D11DB6, 0x55982222D4B55500,  // 0x000127B8 
	0x008B7D322311D6B7, 0xBB6968B7B8668B77, 0xB6BBB7DB77B74769, 0x5554222317655500,  // 0x000127D8 
	0x00B6B4322311166B, 0xB8B6668BB8666BBB, 0x88BBB7BBBBBBB669, 0x556A22221B555500,  // 0x000127F8 
	0x00768BD331133159, 0x6B8888696668B886, 0x668BB7B888686995, 0x5512113146555500,  // 0x00012818 
	0x000B677111333365, 0x58BBB869968BBB86, 0x66B77B8669666955, 0x573DDDD4B9555000,  // 0x00012838 
	0x000868BD31131149, 0x5566666669888888, 0x8B7B866666669555, 0x611114BB95555000,  // 0x00012858 
	0x0000B96BD111111D, 0x5599699666999666, 0x6886669999995555, 0x31DD447655550000,  // 0x00012878 
	0x0000679874113233, 0x4555555955999996, 0x6699995995555551, 0x311447B655550000,  // 0x00012898 
	0x00000869B4D13333, 0x1D55555599599996, 0x6669955559555512, 0x311DB86555500000,  // 0x000128B8 
	0x000009659BD33222, 0x23D6555555559999, 0x5595599555556223, 0x1114869555500000,  // 0x000128D8 
	0x00000098967DD132, 0x231DB59559555595, 0x55555555559B3222, 0x11DB695555000000,  // 0x000128F8 
	0x000000598987D131, 0xDDDD179555595555, 0x5555555556422331, 0xD476955550000000,  // 0x00012918 
	0x0000000555584114, 0x47D1111165555955, 0x5555559B11133114, 0x7B69555550000000,  // 0x00012938 
	0x000000006556BDDD, 0x11111333111B8955, 0x556BBD4111331D47, 0x7B65555500000000,  // 0x00012958 
	0x0000000009559671, 0x331D111113333111, 0x133D444D44114747, 0xB655555000000000,  // 0x00012978 
	0x000000000095559B, 0x44D1111113311DD1, 0x11D4D4444DD14478, 0x9555550000000000,  // 0x00012998 
	0x0000000000055555, 0x6B411147D11444D1, 0xD4444DD4D11D7B69, 0x5555500000000000,  // 0x000129B8 
	0x0000000000005555, 0x59B477B71D744114, 0x74DDDDDD144B8955, 0x5555000000000000,  // 0x000129D8 
	0x0000000000000055, 0x55566B41D474D447, 0x774DD7B47B865555, 0x5500000000000000,  // 0x000129F8 
	0x0000000000000005, 0x5555566B88B77BBB, 0xBB77BBBB86955555, 0x5000000000000000,  // 0x00012A18 
	0x0000000000000000, 0x0555555996669666, 0x6886666955555550, 0x0000000000000000,  // 0x00012A38 
	0x0000000000000000, 0x0005555555995555, 0x5555555555555000, 0x0000000000000000,  // 0x00012A58 
	0x0000000000000000, 0x0000055555555555, 0x5555555555500000, 0x0000000000000000,  // 0x00012A78 
	0x0000000000000000, 0x0000000005555555, 0x5555555000000000, 0x0000000000000000,  // 0x00012A98 
	0x0000000000000000, 0x0000000000000000, 0x9000000000000000, 0x0000000000000000,  // 0x00012AB8 
};

u64 _ganontikasonogo_room_0_tex_00012AD8[] = 
{
	0x0000000000000000, 0x0000000000000000, 0x1000000000000000, 0x0000000000000000,  // 0x00012AD8 
	0x0000000000000000, 0x0000000001177441, 0x1114411100000000, 0x0000000000000000,  // 0x00012AF8 
	0x0000000000000000, 0x0000004444447441, 0x1111322223100000, 0x0000000000000000,  // 0x00012B18 
	0x0000000000000000, 0x0004447447441322, 0x2222232322223000, 0x0000000000000000,  // 0x00012B38 
	0x0000000000000000, 0x0B74444414122222, 0x2AACCC2231132230, 0x0000000000000000,  // 0x00012B58 
	0x0000000000000008, 0xB74441112112C222, 0x22CAACCCC2211131, 0x1000000000000000,  // 0x00012B78 
	0x000000000000008B, 0x4774322A21113233, 0x322CC2222CAA2232, 0x1300000000000000,  // 0x00012B98 
	0x00000000000076B4, 0x774122CAC2111111, 0x3222C22233CCCCC3, 0x2131000000000000,  // 0x00012BB8 
	0x0000000000078B41, 0x4444112CCC217422, 0xC222C2223132CACC, 0x2233300000000000,  // 0x00012BD8 
	0x0000000000E88731, 0x14444412C2184232, 0x222222222222CC22, 0xCC31130000000000,  // 0x00012BF8 
	0x000000000686E422, 0x23114411226E2132, 0xCAA222C2222CC222, 0xCAC1133000000000,  // 0x00012C18 
	0x0000000056881122, 0x222314111B6B333C, 0xAAA2222C222CCCC2, 0x2222121100000000,  // 0x00012C38 
	0x0000000656842233, 0x2222311445664132, 0xAAA232122232C222, 0x312C222130000000,  // 0x00012C58 
	0x0000000568E42231, 0x3321344145687132, 0xAA22221222222223, 0x222CC22330000000,  // 0x00012C78 
	0x000000658E743221, 0x3313111145668441, 0x2232334223222313, 0x222CCAC231000000,  // 0x00012C98 
	0x0000085587443222, 0x2132233145666B74, 0x4431147331332332, 0x222CCAA221300000,  // 0x00012CB8 
	0x0000065867441222, 0x2122222216666888, 0xBE7444E111222CC2, 0x2222CCAC22100000,  // 0x00012CD8 
	0x00008568B4141222, 0x2113222237666888, 0xBE7748E444322CAC, 0x2222C2CC13110000,  // 0x00012CF8 
	0x00005588E41112CC, 0x2314133111666668, 0x77E8681474322CCC, 0x2222C22213310000,  // 0x00012D18 
	0x000856B7471222CA, 0xC221444144486666, 0x66666333441CC22C, 0x2222222311214000,  // 0x00012D38 
	0x000856744443232C, 0xC22333441111E666, 0x666632234432C2CC, 0xC222222223314000,  // 0x00012D58 
	0x0056584147412332, 0x2231323141111788, 0x8B43222314322222, 0xCC22333332314400,  // 0x00012D78 
	0x0068564247432221, 0x3234432141111444, 0x4122222314122222, 0x2AC2111333344700,  // 0x00012D98 
	0x0068567214412221, 0x1311412222231132, 0x3332221113222222, 0x3223111111144400,  // 0x00012DB8 
	0x0568584121113322, 0xB114442222223332, 0x1322222223333221, 0x3323333332211170,  // 0x00012DD8 
	0x05666B4131133223, 0x487E41322C2222CC, 0x2AACAA2222CAA212, 0x2323333222231170,  // 0x00012DF8 
	0x0555671111413222, 0x288B71313C22AAAA, 0xAAAAACCAAAAC3472, 0x22232322C22214B0,  // 0x00012E18 
	0x05556B4111111322, 0x2456E4111132CAAA, 0xAAAAAACAAC317822, 0x22222222CCCC4E80,  // 0x00012E38 
	0x05556B7411141123, 0x31E56741113322AA, 0xAAAAAACAA2176731, 0x33222222CAA24770,  // 0x00012E58 
	0x0555B77741111331, 0x411668E4413222CA, 0xAAAAAAAC234B8444, 0x41322C2222234440,  // 0x00012E78 
	0x0555844444111331, 0x4131666B413322CC, 0xCAAAAAA231787474, 0x1112C22231114440,  // 0x00012E98 
	0x5555644144114131, 0x3113B666B41322AA, 0xCAAAAC2214EE4444, 0x1333222331317770,  // 0x00012EB8 
	0x055687414441443C, 0x23111656687412CC, 0xCAAAC21177B14444, 0x41332223322174E7,  // 0x00012ED8 
	0x0556BE7447444412, 0x23144456688B4122, 0x2C22234777411111, 0x1111131322237480,  // 0x00012EF8 
	0x055587EE47744413, 0x22C2446666888712, 0x3111317EEE111222, 0x2C244133332147B0,  // 0x00012F18 
	0x0555877744447413, 0x2CAA2345668BEE44, 0x1114117BB2411132, 0x2223111311117B70,  // 0x00012F38 
	0x055587477448772A, 0xAAAAA238566BE774, 0x111447B84141112C, 0xAA22133333147B40,  // 0x00012F58 
	0x05556E444466842A, 0xAAAAA23165668E41, 0x1114E8883844113C, 0xAA2311322334BB80,  // 0x00012F78 
	0x05555B4447588722, 0xCCAAAC1145666871, 0x3144B861E874441C, 0xAC23311223176680,  // 0x00012F98 
	0x005558111756BB13, 0x2C22C21438566874, 0x11178B8188B44413, 0xC2233113221E8800,  // 0x00012FB8 
	0x0055564337568713, 0xCC21147414556687, 0x417B7E71688B4131, 0x131331112248B700,  // 0x00012FD8 
	0x0055567327558744, 0x111114E41385668E, 0x77BEB73386888741, 0x1441111321EBB700,  // 0x00012FF8 
	0x00555564145558B7, 0x8B74144431465668, 0xBE7E81118668888B, 0xE7444E3314B88700,  // 0x00013018 
	0x0005556B4155566B, 0xBB77744441175668, 0x8B7EB744E6666888, 0x8E44B61448668000,  // 0x00013038 
	0x0005555643755566, 0xBBB68EE44223856E, 0x77EE147446666666, 0x6688577786568000,  // 0x00013058 
	0x00005555B1185566, 0x6668681143221568, 0x77B1C31444555666, 0x6655844765680000,  // 0x00013078 
	0x000055556711B555, 0x6655611144322E56, 0x66722C2111465555, 0x555B147B56880000,  // 0x00013098 
	0x000005555B444485, 0x5567111144413165, 0x5B23322231117655, 0x6843478558800000,  // 0x000130B8 
	0x0000055556741114, 0x1111111447441146, 0x8311133332332211, 0x3222176565500000,  // 0x000130D8 
	0x00000055558E7441, 0x1113111114744114, 0x4312332233313331, 0x1221486865000000,  // 0x000130F8 
	0x0000000555587744, 0x4411333311144111, 0x1113232331111111, 0x1114EB8550000000,  // 0x00013118 
	0x0000000555558777, 0x7741323311111131, 0x1413311131441144, 0x47EBB65550000000,  // 0x00013138 
	0x0000000055555874, 0x4441123334411112, 0x3133111413314444, 0x47B8555500000000,  // 0x00013158 
	0x000000000555558E, 0x1144441311441113, 0x2231111444444444, 0x7855555000000000,  // 0x00013178 
	0x0000000000555556, 0xB444444111144111, 0x233114444474444B, 0x5555550000000000,  // 0x00013198 
	0x0000000000055555, 0x6874144447477444, 0x1111111444444785, 0x5555500000000000,  // 0x000131B8 
	0x0000000000005555, 0x556B47B747B77447, 0x4411113147E88655, 0x5555000000000000,  // 0x000131D8 
	0x0000000000000055, 0x5555687477EE7747, 0x744114444E865555, 0x5500000000000000,  // 0x000131F8 
	0x0000000000000005, 0x5555556666888887, 0xBEE744EB86555555, 0x5000000000000000,  // 0x00013218 
	0x0000000000000000, 0x0555555556655666, 0x6666666555555550, 0x0000000000000000,  // 0x00013238 
	0x0000000000000000, 0x0005555555555555, 0x5555555555555000, 0x0000000000000000,  // 0x00013258 
	0x0000000000000000, 0x0000055555555555, 0x5555555555500000, 0x0000000000000000,  // 0x00013278 
	0x0000000000000000, 0x0000000005555555, 0x5555555000000000, 0x0000000000000000,  // 0x00013298 
	0x0000000000000000, 0x0000000000000000, 0x5000000000000000, 0x0000000000000000,  // 0x000132B8 
};

u64 _ganontikasonogo_room_0_tex_000132D8[] = 
{
	0x28C5398B4A0D5A91, 0x528F5A8F5A4F5A8F, 0x524F5A4F524F4A0B, 0x39CB41CD524F4A0D,  // 0x000132D8 
	0x41CD41CD39CB39CB, 0x314762D36291524F, 0x524F524F5251524F, 0x5251524F524F39CB,  // 0x000132F8 
	0x4A0D41CD31492905, 0x398B314931473147, 0x31493149398941CB, 0x39493189314739CB,  // 0x00013318 
	0x5A8F4A0F420D420D, 0x420D4A0F524F524F, 0x524F524F524F524F, 0x420D420D420D41CD,  // 0x00013338 
	0x2907420D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D41CD, 0x4A0D41CD524F4A0D,  // 0x00013358 
	0x4A0D4A0D4A0D4A0D, 0x318962D141CD41CD, 0x4A0D4A0D41CD318B, 0x39CD4A0D41CD41CD,  // 0x00013378 
	0x4A0D4A0D41CB41CB, 0x41CB420D4A0D4A0D, 0x4A0D4A0D4A0D4A4F, 0x314731474A0F524F,  // 0x00013398 
	0x4A0F4A0F4A0D41CD, 0x39CB524F41CD4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x000133B8 
	0x29074A0D524F4A0D, 0x4A0D4A0D4A4D4A0D, 0x41CD41CD39CB41CD, 0x41CD41CD39CB41CD,  // 0x000133D8 
	0x39CB41CD4A0D41CD, 0x29475A8F4A0D4A0D, 0x41CD41CD41CD31CB, 0x420D39CD39CD39CD,  // 0x000133F8 
	0x420D39CD39CD41CD, 0x39CD39CB41CD41CD, 0x41CD41CD41CD418B, 0x2907524F524F524F,  // 0x00013418 
	0x41CD4A0D41CD41CD, 0x39CD39CD39CB4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x00013438 
	0x2105420D524F4A0F, 0x524F4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x00013458 
	0x4A0D39CB39CB39CB, 0x2907524F41CB318B, 0x318B39CB318B318B, 0x39CB4A0D524F4A0D,  // 0x00013478 
	0x4A0D4A0D4A0D420D, 0x39CD39CD420D420D, 0x420D31CB31CB3989, 0x3149524F4A0D420D,  // 0x00013498 
	0x41CB420D420D4A0F, 0x4A0F4A0F420F420D, 0x4A0F420D41C94A0D, 0x524F524F524F4A0D,  // 0x000134B8 
	0x29074A0D524F4A0D, 0x41CB418B4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x41CD41CD4A0D41CD,  // 0x000134D8 
	0x4A0D4A0D4A0D41CD, 0x29475A8F49CB39CB, 0x41CD39CD39CD39CD, 0x39CD41CD41CD4A0D,  // 0x000134F8 
	0x41CD41CD39CB41CD, 0x41CD39CB39CB4A0D, 0x4A0D4A0D4A0D418B, 0x3189528F41CB39CB,  // 0x00013518 
	0x39CD39CB39CB41CD, 0x39CD39CD39CD39CB, 0x41CD39CB398941CD, 0x39CB39CB39CB31CB,  // 0x00013538 
	0x31494A0F420B41CB, 0x39CB418B49CB4A0D, 0x4A0B4A0D4A0D4A0D, 0x4A0D41CD4A0D4A0D,  // 0x00013558 
	0x4A0D4A0D4A0D4A0D, 0x31475A8F41C939CB, 0x4A0D41CD39CD39CB, 0x39CB41CB420B4A0D,  // 0x00013578 
	0x4A0D4A0D4A0D4A0D, 0x4A0D41CD4A0D4A0D, 0x4A0D4A0D4A0D41CB, 0x3189524F41C939CB,  // 0x00013598 
	0x420D41CD39CB39CB, 0x39CB41CD41CD39CD, 0x318B318B418941CD, 0x39CD41CD4A0D41CD,  // 0x000135B8 
	0x3149524F41CB398B, 0x39CB41CB398B318B, 0x39CB41CD39CD41CD, 0x41CD41CD41CD41CD,  // 0x000135D8 
	0x39CD39CD41CD41CB, 0x31495A9149C939CB, 0x39CB31CB31CB31CB, 0x31CB31CB39CB39CD,  // 0x000135F8 
	0x41CD39CD39CB39CB, 0x39CD41CD41CD41CD, 0x41CD39CD4A0D3989, 0x3189528F41CB41CB,  // 0x00013618 
	0x39CB39CB39CB39CB, 0x39CB39CB39CB39CB, 0x39CB39CB39494A0D, 0x4A0D41CD41CD39CB,  // 0x00013638 
	0x31495A914A0D41CD, 0x420D41CB41CB41CB, 0x41CB41CB41CD41CD, 0x420D420F420D39CB,  // 0x00013658 
	0x39CB39CB41CD3189, 0x31494A0D49C941CD, 0x39CB39CD39CB39CB, 0x39CD41CB41CD41CB,  // 0x00013678 
	0x420D420D39CD39CD, 0x39CD420D420D4A0D, 0x4A0D4A0D524F41CB, 0x2907524D418949C9,  // 0x00013698 
	0x49CB4A0B49CB41CD, 0x41CD41CD49CB49CB, 0x418941894989520D, 0x524D49CB39CB39CB,  // 0x000136B8 
	0x31494A0D39CB420D, 0x4A0B4A0D41CB39CB, 0x39CB39CB39CB39CD, 0x39CB318B39CB39CB,  // 0x000136D8 
	0x39CB318B4A0D41CB, 0x31494A0D51C949CB, 0x41C941C939893989, 0x39893989398939C9,  // 0x000136F8 
	0x31CB39CD39CD39CD, 0x39CD39CD31CB31CB, 0x31CB39CB41CD3989, 0x31494A0D41CD41CB,  // 0x00013718 
	0x41CD41CD41CD49CD, 0x41CD41CD398B39CB, 0x318B398B398B41CD, 0x4A0D4A0D39CB39CB,  // 0x00013738 
	0x2907310731472907, 0x2907290729072907, 0x2907290531073107, 0x3149394939493949,  // 0x00013758 
	0x3149314931493107, 0x210539CB49C951CB, 0x51CB49CB39893989, 0x39893989318B39C9,  // 0x00013778 
	0x39CB318B318B318B, 0x39CB318B39CB39CB, 0x39CB318B41CD3989, 0x31493107398B41CD,  // 0x00013798 
	0x41CD41CD41CD41CD, 0x398B41CB39CB31CB, 0x39CD39CB31CB524F, 0x524F4A0D41CD318B,  // 0x000137B8 
	0x41CD41CD41CB39CB, 0x398B398929073949, 0x41CB49CB5A8F4A4D, 0x4A4D524F4A4F4A4D,  // 0x000137D8 
	0x4A4D318B39CB3149, 0x31494A0D5A4B4209, 0x4209420941C939C9, 0x398739C942094209,  // 0x000137F8 
	0x42094209420B420B, 0x420B4A0B41CD41CD, 0x39CB31CB41CD4A0D, 0x2907314931493149,  // 0x00013818 
	0x3149314931493147, 0x3149314931493149, 0x3147314729073147, 0x31473147318B318B,  // 0x00013838 
	0x4A0D4A0D4A0D39CD, 0x39CB39CB29073149, 0x5A8F4A0B4A0B41CD, 0x41CD41CD4A0D4A0D,  // 0x00013858 
	0x4A0D39CB41CD41CD, 0x3989290729072907, 0x20C518C318C32105, 0x3147318931473147,  // 0x00013878 
	0x3107290529053107, 0x3147314931073107, 0x3149314931493189, 0x31473147524F520B,  // 0x00013898 
	0x41CB4A0B4A0B41CB, 0x4A0B420B4A0B4A0B, 0x398B318B29054A0D, 0x5291524F524F4A0D,  // 0x000138B8 
	0x41CD41CD41CD39CB, 0x31CB314729073949, 0x524D4A0B4A0D41CD, 0x420D4A0D4A0D4A0D,  // 0x000138D8 
	0x4A0D39CB4A0D4A0D, 0x4A0B41CD41CB49CD, 0x41CB41893147524F, 0x5A915A91524F524F,  // 0x000138F8 
	0x4A0F4A0F4A0F39CB, 0x4A0D41CD41CD4A0D, 0x41CD41CD41CD41CD, 0x398931496AD1524B,  // 0x00013918 
	0x4A0D4A0D4A0D41CD, 0x4A0D4A0D4A0D4A0D, 0x41CD39CB3147524F, 0x49CD41CD41CD398B,  // 0x00013938 
	0x41CD41CD39CB318B, 0x39CD318B29053989, 0x49CB4A0D39CD39CD, 0x41CD4A0D4A0B4A0B,  // 0x00013958 
	0x4A0B41C94A0B520B, 0x520B49CB49CB520B, 0x39CB41CB3149524F, 0x5A4D4A0D420D420D,  // 0x00013978 
	0x420D420D420D420B, 0x4A4B4A4B4A4B4A4B, 0x4A4B4A4B4A0D524F, 0x41CD31476AD1524B,  // 0x00013998 
	0x4A0D4A0D41CD41CD, 0x4A0D4A0D4A0D41CD, 0x41CD39CD318B5A4F, 0x5A4F524F41CD39CD,  // 0x000139B8 
	0x39CD41CD39CB39CD, 0x39CD318B29054A0D, 0x49CB4A0D41CB41CD, 0x41C95A4D520D520D,  // 0x000139D8 
	0x4A0B49CB4A0B41C9, 0x520B4A0B4A0B41CD, 0x41CD41CD39CB3189, 0x524D41CD39CB41CD,  // 0x000139F8 
	0x39CB39CD39CB39CD, 0x39CB39CB39CB41CD, 0x39CB41CD4A0D4A0D, 0x41CB3149628F4A0B,  // 0x00013A18 
	0x41CD39CB39CD39CB, 0x39CB41CD39CB39CD, 0x39CB318B31475A4F, 0x524F4A0D41CB41CD,  // 0x00013A38 
	0x39CB41CD41CD41CD, 0x41CD318B29054A0D, 0x49CB520D51CB41C9, 0x41C9418941C94A0D,  // 0x00013A58 
	0x4A0D49CB4A0B4A0B, 0x51CB4A0D41CD41CD, 0x4A0D4A0D41CD3189, 0x520B41CD39CB4A0D,  // 0x00013A78 
	0x39CD39CD39CD39CD, 0x39CD39CB39CB39CB, 0x39CB39CB41CD4A0D, 0x41CB314939CB5207,  // 0x00013A98 
	0x520B4A0B4A094A09, 0x41C9520B41CD39CD, 0x39CB318B3147520B, 0x520D4A0D49CB49CB,  // 0x00013AB8 
	0x41CD4A0D4A0D4A0D, 0x524F41CD314739CB, 0x41CD4A0F49CB39C9, 0x39C941CB39C931CB,  // 0x00013AD8 
	0x420D39CD39CD39CD, 0x420D520B4A0B4A0B, 0x4A0D524F4A0D418B, 0x4A0D41C941CD39CD,  // 0x00013AF8 
	0x39CD39CB39CB39CD, 0x41CD39CD31CB318B, 0x31CB31CB4A0D4A0D, 0x41CB31894A0D49CB,  // 0x00013B18 
	0x39CB39CB39CB39CB, 0x41CD39CB39CB39CB, 0x318B31472905524F, 0x49CD398B39CB41CD,  // 0x00013B38 
	0x3147314731473149, 0x31473147290539CB, 0x41CD4A0D4A0B4A0D, 0x4A0D39CB318B39CB,  // 0x00013B58 
	0x41CD39CD41CD41CD, 0x41CD41CD41CD39CB, 0x39CD41CD39CB3989, 0x4A0D49CB41CD39CB,  // 0x00013B78 
	0x39CB318B39CB39CB, 0x318B318B318B318B, 0x318B318B41CD41CD, 0x41CD314729073107,  // 0x00013B98 
	0x3107310731493107, 0x2907310731073149, 0x314921053147318B, 0x318B314731473147,  // 0x00013BB8 
	0x39CB398B39CB318B, 0x39CD318B2905318B, 0x39CB39CD420D39CD, 0x420D31CB31CB31CB,  // 0x00013BD8 
	0x318B318B318B31CB, 0x41CD39CD39CB31CB, 0x318B41CD39CB3147, 0x39CB318B41CD41CD,  // 0x00013BF8 
	0x39CD39CB39CB39CB, 0x39CB39CB318B39CB, 0x318B318B39CD41CD, 0x39CB3149524F4A4F,  // 0x00013C18 
	0x4A4D4A0D4A0D4A0D, 0x4A0D4A0D420B41CB, 0x41CB418B39CB39CB, 0x39CB39CB39CB39CB,  // 0x00013C38 
	0x39CB39CB39CB39CB, 0x39CB39CB314739CB, 0x4A0B41CB41CB4A0B, 0x4A0B41CB39C931CB,  // 0x00013C58 
	0x39C941CB41CB41CB, 0x41C941C941CB39CB, 0x39CB41CD318B2905, 0x4A0D41CD39CD39CB,  // 0x00013C78 
	0x39CB318B318B318B, 0x318B318B318B318B, 0x39CB31CB39CD39CB, 0x39CB31495A9141CB,  // 0x00013C98 
	0x41C94A0B4A0B4A0B, 0x4A0B4A0B420B41CB, 0x39CB39CB39CB39CB, 0x39CB41CD4A0D39CB,  // 0x00013CB8 
	0x39CB39CB39CB4A0D, 0x4A0D39CB31473147, 0x3989318931893107, 0x3147290529053147,  // 0x00013CD8 
	0x29053147318B318B, 0x3147314931073107, 0x3107290720C520C5, 0x3107310731072905,  // 0x00013CF8 
	0x2905290529052905, 0x2905290531493149, 0x3949394939493149, 0x2905290552514A0B,  // 0x00013D18 
	0x4A0B520B4A0B41CB, 0x41CB41C949CB4209, 0x420942094A0B4A0B, 0x4A0D41CB49CB39CB,  // 0x00013D38 
	0x39CB39CB4A0D4A0D, 0x4A0D39CB3147524F, 0x5A91524F5A91524F, 0x4A0D39895A915A91,  // 0x00013D58 
	0x5A4F5A4F5A4F628F, 0x5A4F524D41C949CB, 0x49CB49CB39CB39CB, 0x39CB41CD41CD4A0D,  // 0x00013D78 
	0x41CD314931074A0F, 0x525141CD4A0D4A4D, 0x4A0F318B318B41CD, 0x41CD31472905420D,  // 0x00013D98 
	0x318B39CB39CB39CB, 0x318B39CB39CB39CB, 0x39CB39CB41CB398B, 0x41CB39CB39CB39CB,  // 0x00013DB8 
	0x39CB39CB39CB39CB, 0x39CB39CB31474A0D, 0x420D524F4A0D41CD, 0x524F418B62D331CD,  // 0x00013DD8 
	0x420D39CD4A0B41CB, 0x4A4B4A0B4A0B524B, 0x524B524B41CD4A0D, 0x41CD41CD41CD4A0D,  // 0x00013DF8 
	0x41CD39CB31076313, 0x4A0D4A0D4A0D4A0D, 0x4A0D41CB41CB3989, 0x398B314731475291,  // 0x00013E18 
	0x39CB41CD41CD41CD, 0x39CB39CB39CB39CB, 0x39CB39CB39CB39CB, 0x41CD39CB41CD4A0D,  // 0x00013E38 
	0x39CB39CB39CB39CB, 0x39CB39CD31474A4F, 0x39CD4A0D4A0D4A0D, 0x524F398962D3420D,  // 0x00013E58 
	0x39CD41CD39CB39CB, 0x420D420D420D420D, 0x420D420D420D420D, 0x4A0D4A0D4A0D4A0D,  // 0x00013E78 
	0x41CD39CB3149524F, 0x41CB41CB49CB420D, 0x41CD39CB39CB398B, 0x39CB314731475291,  // 0x00013E98 
	0x39CD420D420D420D, 0x420D39CD31CB31CB, 0x31CB420D420D420D, 0x420D4A0D4A0D41CD,  // 0x00013EB8 
	0x3147314731492907, 0x2907290731473147, 0x3147314739CB3147, 0x314731475A9139CD,  // 0x00013ED8 
	0x31CB41CD39CD41CD, 0x41CD39CB4A0D4A0D, 0x4A0D4A0D41CD41CD, 0x39CD39CB39CB39CB,  // 0x00013EF8 
	0x4A0D41CD31496291, 0x49CB49CB49CB49CB, 0x49CB49CB41CB41C9, 0x39CB39CB3147420D,  // 0x00013F18 
	0x41CD41CD4A0D4A4D, 0x4A0D4A0D4A0D49CB, 0x4A0D4A0D524F524F, 0x524F524F4A0D3147,  // 0x00013F38 
	0x524F4A8F4A8F4A4D, 0x524D524D524D524D, 0x5A8F5A8F4A0B4A0B, 0x4A0D39C94A0F41CD,  // 0x00013F58 
	0x39CD39CD4A0D4A0D, 0x41CD39CD41CD39CD, 0x39CD39CB39CB318B, 0x41CD39CB39CB41CD,  // 0x00013F78 
	0x4A0D41CD314962D3, 0x41CB41CB420B41CD, 0x41CD39CD39CB39CB, 0x398B318B31472905,  // 0x00013F98 
	0x3189314731493989, 0x398B31893189418B, 0x3149290731493149, 0x3189398939C939CB,  // 0x00013FB8 
	0x41CD39CB4A0B4209, 0x42094A0B42094209, 0x4A4B4A4B4A0D4A0D, 0x4A0B39C93147524F,  // 0x00013FD8 
	0x39CD39CD39CD39CD, 0x39CB39CB41CD4A0D, 0x41CD39CD39CD39CB, 0x39CB39CB39CB41CD,  // 0x00013FF8 
	0x524F524F3149524F, 0x41CB520B4A0B49CB, 0x49CB41C941C941CD, 0x39CB39CB41CD2905,  // 0x00014018 
	0x41CB4A0F524F524F, 0x524F52514A0F524F, 0x4A0D318B5AD1524F, 0x5A4F4A0B41CB41CD,  // 0x00014038 
	0x398B398B41CB41CB, 0x4A0D39CB42094A0B, 0x5A8D524B4A0D4A0D, 0x520B39C9318941CD,  // 0x00014058 
	0x41CD520B520B520B, 0x520B520B520B49CB, 0x41CB41C939CB39CB, 0x39CB39CB39CB4A0D,  // 0x00014078 
	0x41CD39CB2907524F, 0x4A0B41CD41CD39CB, 0x39CB39CB41CD41CD, 0x41CB524F39CB3147,  // 0x00014098 
	0x4A0F41CD41CD39CB, 0x41CD41CD41CD41CD, 0x41CD39CB5A4F4A0D, 0x4A0B41CD39CB398B,  // 0x000140B8 
	0x39CD39CD39CD39CD, 0x4A0B4A0B4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x520B41CB3989524F,  // 0x000140D8 
	0x4A0D41CD4A0D39CB, 0x39CD4A0D41CD420B, 0x420B420B4A4B4A0B, 0x4A4B4A0D41CD4A0D,  // 0x000140F8 
	0x41CD41CD3189524F, 0x4A0B41CD4A0B4A0B, 0x4A0B4A0B41CD41CD, 0x41CB4A0D39CB318B,  // 0x00014118 
	0x5A914A0D4A0D4A0D, 0x4A0D4A0D41CD4A0D, 0x41CD3147420D39CB, 0x39CB39CB39CB31CB,  // 0x00014138 
	0x39CD39CD39CD4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x520B4A0B3989524F,  // 0x00014158 
	0x4A0D4A0D41CD39CD, 0x41CD39CD39CD39CD, 0x39CB39CD39CD39CB, 0x39CD39CD39CD39CD,  // 0x00014178 
	0x39CD39CB314941CD, 0x41CD41CD41CD39CD, 0x39CB39CB39CB41CD, 0x398B4A0D39CB3147,  // 0x00014198 
	0x524F524F4A0D41CD, 0x41CD41CD41CD4A0D, 0x41CD318B4A0F39CD, 0x39CD39CD39CD39CD,  // 0x000141B8 
	0x41CD39CD41CD41CD, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A4D31894A0F,  // 0x000141D8 
	0x420D4A0F4A0F4A0F, 0x4A0F4A0F4A0F524F, 0x4A0F4A0F4A0F41CD, 0x39CB41CD41CD41CD,  // 0x000141F8 
	0x4A0D4A0D3189524F, 0x4A0D41CD4A0D41CD, 0x41CD41CD4A0D41CB, 0x39CB4A0D39CB2905,  // 0x00014218 
	0x41CD524F4A0D4A0D, 0x41CD41CD41CD39CB, 0x318B3147524F420D, 0x420D420D420D420F,  // 0x00014238 
	0x3147314731493189, 0x3189318B31893989, 0x41CD39CB39CB31CB, 0x31892949314718C3,  // 0x00014258 
	0x18C3290531493149, 0x3949314931493149, 0x2907314929073989, 0x31CB314731473147,  // 0x00014278 
	0x314718C32905524F, 0x39CB39CB39CB39CB, 0x39CB39CB41CB4A0D, 0x4A0D4A0D39CB2905,  // 0x00014298 
	0x2905290529053147, 0x3147314731473147, 0x290518C329052905, 0x3147314731473147,  // 0x000142B8 
};

u64 _ganontikasonogo_room_0_tex_000142D8[] = 
{
	0x5A95841FA4E7735B, 0x7B9D62D56AD79463, 0x62D783DD83DF62D7, 0x7B9D735B8C1F9461,  // 0x000142D8 
	0x94A383DF83DD8C21, 0x8C219CA59463AD29, 0xA4E57B9D7B9B7B9B, 0x94636B1994636B19,  // 0x000142F8 
	0x83DF6B196B1983DF, 0x9463A52994A5AD6B, 0x83DF94639CA59463, 0x83DF8C6183DF83DF,  // 0x00014318 
	0x7B9D735B735B8C21, 0x7B9D83DF9CA57BDF, 0x94A58C2183DF83DF, 0x62D55A957B9D4A11,  // 0x00014338 
	0x62D79463C5EF83DF, 0x7B9D62D741CF9463, 0x4A1183DFAD6B9CE7, 0x7BDF8C21735B62D7,  // 0x00014358 
	0x83DF6B176B1983DF, 0x9CA5735B94639463, 0x94637B9D73596B17, 0x84216B198C2141CD,  // 0x00014378 
	0x6B175A536B176B17, 0x735B83DF7B9FBDEF, 0x83DF9CA5739D398D, 0x314941CD418D62D7,  // 0x00014398 
	0x4A1152115A936B17, 0x735B62D783DF6B19, 0xA5297B9D8C617B9B, 0x52114A0F62D55253,  // 0x000143B8 
	0x1887398F83DF41CF, 0x314B20C528C762D7, 0x20C74A11735D398D, 0x188520C518C5314B,  // 0x000143D8 
	0x5253394B314941CF, 0x9CA55A957B9D7BDD, 0x62D7314B29092907, 0x4A13290941CF2907,  // 0x000143F8 
	0x398D28C720C71885, 0x41CD52536B19AD29, 0x62D741CF31091885, 0x1843188520C5398D,  // 0x00014418 
	0x20C718C51883394B, 0x4A0F52519CE56B19, 0x7B9D4A0F314B28C7, 0x290720C531491885,  // 0x00014438 
	0x10C510C5631710C5, 0x18C518C520C52907, 0x290720C7398D20C7, 0x2107210729492107,  // 0x00014458 
	0x398D18C528C72909, 0x6B1962D58C2162D5, 0x294920C729072949, 0x290720C721072107,  // 0x00014478 
	0x210718C518851885, 0x1885398D4A0F83DF, 0x41CD210518C520C5, 0x2107290729072949,  // 0x00014498 
	0x2907290729071883, 0x290939CD841F5251, 0x398D210720C520C5, 0x2107290929071885,  // 0x000144B8 
	0x29092105318B318B, 0x2949294929092949, 0x2949290929492105, 0x210529092105318B,  // 0x000144D8 
	0x2909318B314720C5, 0x29095253735B5251, 0x20C720C729072909, 0x2107210720C72909,  // 0x000144F8 
	0x2105294929092105, 0x20C520C539CD62D7, 0x314B20C521072949, 0x2107210721072107,  // 0x00014518 
	0x21072107290920C5, 0x188318C56B19314B, 0x20C5290729072947, 0x2949294929492105,  // 0x00014538 
	0x2107314918852107, 0x2107188521073149, 0x2107210721072107, 0x3149314939CD39CD,  // 0x00014558 
	0x3189314941CB2949, 0x188320C57B9D5253, 0x28C72949318B41CB, 0x3189318929472107,  // 0x00014578 
	0x3149210731493149, 0x214720C518855A93, 0x2907210721472107, 0x2107210721072107,  // 0x00014598 
	0x21072107314B2947, 0x104320C541CD2907, 0x2907290729472947, 0x2947314931491885,  // 0x000145B8 
	0x2947398B29472947, 0x2147318B29472947, 0x294739CB4A0B39CB, 0x398B294729472947,  // 0x000145D8 
	0x2947318B420F3189, 0x20C51883394B5251, 0x20C72949318B39CB, 0x318B318B318B318B,  // 0x000145F8 
	0x2947318B29472947, 0x2947210720C5420F, 0x2909318B318B318B, 0x2147214729472147,  // 0x00014618 
	0x2947318B318B318B, 0x104320C520C72907, 0x290739CB2947318B, 0x318B420F318B2147,  // 0x00014638 
	0x318B318B318B318B, 0x39CB420F420F39CB, 0x420F318B2947318B, 0x318B294729472947,  // 0x00014658 
	0x2147294739CB39CB, 0x188320C52085398B, 0x20C53189398B318B, 0x398B318B2947318B,  // 0x00014678 
	0x39CB39CB318B41CD, 0x41CD39CD39CB20C5, 0x29492947318B318B, 0x398B398B318B318B,  // 0x00014698 
	0x29472947398B20C7, 0x1885294731093109, 0x2947398B318B318B, 0x4A0B39CB294718C5,  // 0x000146B8 
	0x2947294729472147, 0x2947318B21472147, 0x2947214721472947, 0x318B318B318B318B,  // 0x000146D8 
	0x2147294729472947, 0x1043188520C728C7, 0x310941CB2947318B, 0x29472947294718C5,  // 0x000146F8 
	0x2947294718C52147, 0x2947318B29471885, 0x214718C518C518C5, 0x18C518C518C51043,  // 0x00014718 
	0x1043104310431043, 0x1043210521053149, 0x398B398B318B39CB, 0x318B318B294718C5,  // 0x00014738 
	0x18C518C518C518C5, 0x18C518C518C518C5, 0x18C5214718C518C5, 0x18C518C518C51885,  // 0x00014758 
	0x188518C518C518C5, 0x18C518C518C518C5, 0x20C5108318C51885, 0x1043104310431043,  // 0x00014778 
	0x1043104310431043, 0x10431043104318C5, 0x188520C720C720C7, 0x1885104318C52947,  // 0x00014798 
	0x318B318B294718C5, 0x210720C518851885, 0x1885188518851885, 0x1885188521071885,  // 0x000147B8 
	0x4A0B420F524F420F, 0x420F420F524F420F, 0x2947398B398B398B, 0x2947210720C520C7,  // 0x000147D8 
	0x2907398B29472147, 0x21472147398B39CD, 0x398B2949318B2947, 0x29472947318B39CB,  // 0x000147F8 
	0x4A0B420F4A0B62D3, 0x62D3524F524F420F, 0x318B29472147318B, 0x318B29471885318B,  // 0x00014818 
	0x39CB4A0B420F39CB, 0x39CB29472947398B, 0x29472947398B20C7, 0x20C72147398B420F,  // 0x00014838 
	0x2147318B420F420F, 0x318B39CB39CB39CB, 0x4A0B294721472947, 0x2947318B21471885,  // 0x00014858 
	0x21472147318B318B, 0x318B29493149318B, 0x398B39CB29472947, 0x2947318B4A0B398B,  // 0x00014878 
	0x420F420F420F420F, 0x39CB4A0B4A0B4A0B, 0x4A0B318B39CB2947, 0x318B318B10432147,  // 0x00014898 
	0x2147318B2947318B, 0x318B318B2147398B, 0x420F420F294720C7, 0x2949318B39CB2947,  // 0x000148B8 
	0x318B318B420F39CB, 0x318B318B318B318B, 0x420F39CB39CB318B, 0x318B398B18C51883,  // 0x000148D8 
	0x2147214718C52947, 0x318B398B4A0B39CB, 0x39CB294729472947, 0x318B294729472947,  // 0x000148F8 
	0x39CB4A0B420F318B, 0x4A0B39CB39CB2947, 0x39CB39CB39CB4A0B, 0x39CB398B188518C5,  // 0x00014918 
	0x18C5318B2947318B, 0x318B294739CB398B, 0x2947318B29471885, 0x2947398B294739CB,  // 0x00014938 
	0x318B318B39CB39CB, 0x420F524F420F39CB, 0x318B4A0B4A0B4A0B, 0x39CB294729471883,  // 0x00014958 
	0x2947318B29472147, 0x29472947318B2947, 0x398B398B39CB398B, 0x398B318B2947398B,  // 0x00014978 
	0x39CB318B420F39CB, 0x318B420F4A0B39CB, 0x318B39CB318B39CB, 0x420F39CB188518C5,  // 0x00014998 
	0x18C5318B318B318B, 0x318B318B39CB2947, 0x318B318B398B1885, 0x2947318B29472947,  // 0x000149B8 
	0x398B39CB318B4A0B, 0x420F420F420F4A0B, 0x4A0B318B420F4A0B, 0x420F294721471885,  // 0x000149D8 
	0x2147318B318B398B, 0x39CB39CB29472147, 0x2947318B2947318B, 0x39CB4A0B39CB39CB,  // 0x000149F8 
	0x39CB398B318B420F, 0x318B420F318B318B, 0x420F4A0B318B318B, 0x29472947188518C5,  // 0x00014A18 
	0x2147318B29472947, 0x398B398B398B2947, 0x318B294729471043, 0x2147420F2947318B,  // 0x00014A38 
	0x294739CB4A0B398B, 0x39CB318B39CB420F, 0x294739CB4A0B420F, 0x420F39CB318B1885,  // 0x00014A58 
	0x2147318B398B420F, 0x29472947420F2947, 0x29472947318B2947, 0x21472947214718C5,  // 0x00014A78 
	0x2947398B39CB39CB, 0x318B39CB398B318B, 0x21472147318B318B, 0x318B398920C52147,  // 0x00014A98 
	0x2147318B318B39CB, 0x2947294739CB2947, 0x2947294729470801, 0x18C52947294718C5,  // 0x00014AB8 
};

u64 _ganontikasonogo_room_0_tex_00014AD8[] = 
{
	0x18C518C518C518C5, 0x18C518C518C518C5, 0x18C518C518C518C5, 0x214718C518C518C5,  // 0x00014AD8 
	0x210518C518C518C5, 0x18C518C5210720C5, 0x20C518C518C518C5, 0x18C518C518C518C5,  // 0x00014AF8 
	0x18C518C518C518C5, 0x18C518C518C518C5, 0x18C518C518C518C5, 0x210518C520C518C5,  // 0x00014B18 
	0x18C518C518C518C5, 0x18C518C518C518C5, 0x20C518C518C518C5, 0x18C518C518C518C5,  // 0x00014B38 
	0x2147294739CB39CB, 0x398B318B29493149, 0x314929474A0B420F, 0x39CB398B2947398B,  // 0x00014B58 
	0x294718C521472147, 0x20C5294729472949, 0x18C5294741CB2947, 0x294718C518C52949,  // 0x00014B78 
	0x39CB524D4A0D4A0D, 0x398B39CB3189398B, 0x398B29474A0B4A0B, 0x398B4A0D41CB398B,  // 0x00014B98 
	0x21472147294718C5, 0x2947294721472107, 0x21052947318B2947, 0x21472947210720C7,  // 0x00014BB8 
	0x2147214729473149, 0x3149318931893189, 0x3189210721472147, 0x2147318B420F420F,  // 0x00014BD8 
	0x39CB318B29493149, 0x18C5318B39CB420F, 0x420F39CB41CB4A0D, 0x318B3189294920C5,  // 0x00014BF8 
	0x3189294931892949, 0x420D4A0D4A0D4A0D, 0x4A0D4A0D524D4A4D, 0x4A4F318B4A0D4A0D,  // 0x00014C18 
	0x524D4A0B420F398B, 0x398B39CB4A0B4A0B, 0x4A0D314929492949, 0x2949318B290718C5,  // 0x00014C38 
	0x18C5214731893189, 0x3149294929472947, 0x3189210721472147, 0x2147214729472947,  // 0x00014C58 
	0x2947294729473189, 0x18C52147318B39CB, 0x41CB39CB524D39CB, 0x318B3189294918C5,  // 0x00014C78 
	0x3189318931893189, 0x398B318B398B3189, 0x31894A0D4A0D318B, 0x3149314931493149,  // 0x00014C98 
	0x31893189318B318B, 0x398B318B39CD398B, 0x41CB3189318B318B, 0x318B2949290720C5,  // 0x00014CB8 
	0x2947318B3189398B, 0x39CB39CB39CB39CB, 0x29492947318B2947, 0x2947294721472147,  // 0x00014CD8 
	0x2147214721473189, 0x18C5214739CB39CD, 0x41CD4A0D524D420B, 0x420B3189314918C5,  // 0x00014CF8 
	0x2947318931893189, 0x398B3189398B398B, 0x398B398B398B318B, 0x318B318931893189,  // 0x00014D18 
	0x31893189318B3189, 0x31893189318B318B, 0x39CB318B318B2947, 0x39CB39CB318B20C5,  // 0x00014D38 
	0x18C521472949398B, 0x4A0B39CB39CB318B, 0x2949314929472949, 0x3189398B39CB41CB,  // 0x00014D58 
	0x318B318B29473189, 0x18C5318B39CD39CD, 0x41CD41CD39CB39CB, 0x39CB39CB294918C5,  // 0x00014D78 
	0x2947314931893189, 0x214729473189398B, 0x318929493189318B, 0x398B314931893189,  // 0x00014D98 
	0x3189318931893189, 0x31492949318B3189, 0x39CB3189318B318B, 0x2947318B294918C5,  // 0x00014DB8 
	0x21472147318939CB, 0x39CB420D41CB39CB, 0x318B3189398B398B, 0x398B398B31892947,  // 0x00014DD8 
	0x2947318B420F318B, 0x20C5294739CD39CB, 0x39CD39CD39CB39CD, 0x39CB398B318B18C5,  // 0x00014DF8 
	0x318B318B29493189, 0x2947318B31893189, 0x398B39CB41CD41CD, 0x420D318931893189,  // 0x00014E18 
	0x3189314931893149, 0x3149318931892947, 0x29492949318B318B, 0x318B318B318B20C5,  // 0x00014E38 
	0x2147318B398B41CB, 0x4A0D420D420D4A0B, 0x4A0B318B39CB39CB, 0x39CB39CB398B318B,  // 0x00014E58 
	0x318B39CB318B39CB, 0x18C5318B318B398B, 0x41CD41CD41CD4A0B, 0x4A0B4A0B294718C5,  // 0x00014E78 
	0x29472947398B398B, 0x318B39CB39CB398B, 0x39CB318B318B318B, 0x318B318931892949,  // 0x00014E98 
	0x2949294729492949, 0x2949318B398B318B, 0x318931893189318B, 0x39CD420F318B18C5,  // 0x00014EB8 
	0x2947318B29472947, 0x2947318B29472947, 0x2947214729472947, 0x318B39CB4A0B39CB,  // 0x00014ED8 
	0x21472947318B2947, 0x20C529472947318B, 0x398B398939892909, 0x2907210718C518C5,  // 0x00014EF8 
	0x20C518C520C72107, 0x2909298921072947, 0x2947210729472949, 0x2949294929492949,  // 0x00014F18 
	0x2949294739CB318B, 0x2947294729493149, 0x31493189398B398B, 0x31492947318B18C5,  // 0x00014F38 
	0x18C520C518C518C5, 0x18C518C518C518C5, 0x18C518C518C518C5, 0x18C518C518C518C5,  // 0x00014F58 
	0x18C520C518C518C5, 0x18C5210518C520C7, 0x2107210731493189, 0x3149318B4A0B528B,  // 0x00014F78 
	0x528B628F628F628F, 0x4A0B398B21072107, 0x210720C721072107, 0x2107210721072107,  // 0x00014F98 
	0x20C7290721072907, 0x2907210720C720C7, 0x2907290721072107, 0x18C518C520C720C5,  // 0x00014FB8 
	0x4A0B420F524F524F, 0x62D3524F5A8F5A8F, 0x420F4A0B398B39CB, 0x2947214718C52147,  // 0x00014FD8 
	0x29472947214718C5, 0x2147318B398B318B, 0x420F524F420F420F, 0x524F420F420F420F,  // 0x00014FF8 
	0x420F420F420F39CB, 0x524F524F420F420F, 0x2107398B420F420F, 0x524F318B29472107,  // 0x00015018 
	0x398B2947318B39CB, 0x398B398B39CB420F, 0x4A0B420F318B318B, 0x318B39CB420F420F,  // 0x00015038 
	0x420F4A0B420F420F, 0x420F420F4A0B4A0B, 0x4A0B420F420F39CB, 0x528B39CB20C7318B,  // 0x00015058 
	0x318B39CB420F524F, 0x420F4A0B39CB420F, 0x420F39CB420F39CB, 0x39CB420F420F420F,  // 0x00015078 
	0x4A0B39CB4A0B420F, 0x4A0B4A0B528B4A0B, 0x21054A0B39CB39CB, 0x39CB318B29472107,  // 0x00015098 
	0x294729474A0B39CB, 0x420F4A0B420F4A0B, 0x420F398B39CB420F, 0x39CB39CB420F39CB,  // 0x000150B8 
	0x398B39CB4A4B524F, 0x4A0B4A0B39CB318B, 0x318B318B318B318B, 0x39CD318B18C52947,  // 0x000150D8 
	0x39CB420F39CB420F, 0x420F420F524F420F, 0x4A0B39CB39CB420F, 0x420F420F420F524F,  // 0x000150F8 
	0x420F4A0B420F4A0B, 0x4A0B4A0B4A0B318B, 0x18C5318B4A0B318B, 0x2947318B21072107,  // 0x00015118 
	0x2947420F420F318B, 0x420F39CB524F41CD, 0x39CB39CB398B398B, 0x398B318B318B398B,  // 0x00015138 
	0x420B420D4A4F4A0B, 0x5A8F524F524F420F, 0x420D4A0D41CD398B, 0x3149290718C52947,  // 0x00015158 
	0x318B420F398B398B, 0x318B318B39CB39CB, 0x39CB39CB39CB39CB, 0x318B39CB420F420F,  // 0x00015178 
	0x4A0B528B5A8F420F, 0x524F4A0B398B2947, 0x2105318B4A0B39CB, 0x318B39CB31492909,  // 0x00015198 
	0x318B420F39CB318B, 0x318B39CB420F41CB, 0x41CB39CB398B398B, 0x398B398B318B398B,  // 0x000151B8 
	0x39CB39CB420F4A0B, 0x39CB420F39CB420F, 0x4A0D420D41CD39CB, 0x39CB318920C518C5,  // 0x000151D8 
	0x318B318B318B398B, 0x398B39CD39CD398B, 0x2947318B39CB4A0B, 0x39CB39CB420F420F,  // 0x000151F8 
	0x4A0B4A0B4A0B420F, 0x420F420F4A0B398B, 0x21074A0B4A0B420F, 0x524F524F318B2107,  // 0x00015218 
	0x39CB4A0B4A0B398B, 0x4A0B39CB39CB398B, 0x39CB398B31893189, 0x39CB39CB41CB4A0B,  // 0x00015238 
	0x294739CB2947318B, 0x318B2947398B39CB, 0x39CB41CB4A0D4A4D, 0x420F39CB18C52147,  // 0x00015258 
	0x3189398B39CB41CB, 0x39CB2947398B318B, 0x2947318B39CB39CB, 0x39CB39CB420F420F,  // 0x00015278 
	0x4A0B420F4A0B420F, 0x420F4A0B294718C5, 0x21052949318B39CD, 0x39CD420D314918C5,  // 0x00015298 
	0x2947318B39CB39CB, 0x318B29474A0B4A0B, 0x398B39CB420F420F, 0x318B39CB318B39CB,  // 0x000152B8 
	0x318B294729472947, 0x2947214729493149, 0x2949318929492949, 0x398B4A0B21072947,  // 0x000152D8 
	0x294739CB294739CB, 0x4A0B4A0B4A0B318B, 0x2947210729072949, 0x2949210721072107,  // 0x000152F8 
	0x210720C729092107, 0x18C518C518C518C5, 0x18C520C729092949, 0x2909210720C718C5,  // 0x00015318 
	0x214718C518C518C5, 0x2947294729472947, 0x294729472947398B, 0x39CB39CB318B2947,  // 0x00015338 
	0x18C518C520C518C5, 0x18C518C518C518C5, 0x18C518C520C718C5, 0x18C518C518C518C5,  // 0x00015358 
	0x18C518C518C518C5, 0x18C5210521052107, 0x21072107398B398B, 0x318B2947318B398B,  // 0x00015378 
	0x398B4A0B4A0B4A0B, 0x398B4A0B398B39CB, 0x398B4A0B398B39CB, 0x318B318B2947420F,  // 0x00015398 
	0x420F524F398B2107, 0x18C518C518C518C5, 0x18C518C518C518C5, 0x18C518C518C518C5,  // 0x000153B8 
	0x318B39CB4A0B39CB, 0x39CB4A0B39CB2947, 0x318B29472947318B, 0x2947318B2947318B,  // 0x000153D8 
	0x318939C941CD2947, 0x20C5314939C95A8F, 0x4A0B39CB398B4A0B, 0x4A0B4A0B420F4A0B,  // 0x000153F8 
	0x420F524F4A0B420D, 0x39CB420D398B39CB, 0x2947318B318B318B, 0x318B318B318B39CB,  // 0x00015418 
	0x3189294929472947, 0x18C5290731494A0B, 0x3189318929472947, 0x2947318B18C518C5,  // 0x00015438 
	0x2147214729472949, 0x2947294729472947, 0x2947214721472147, 0x29472947318B398B,  // 0x00015458 
	0x398B318B39CB39CB, 0x18C529472947318B, 0x39CB39CB398B3149, 0x294929472949318B,  // 0x00015478 
	0x39CD318B318B3189, 0x41CB314929472947, 0x29472147214718C5, 0x2147294729473149,  // 0x00015498 
	0x2949294931492147, 0x18C52949318939CB, 0x398B398B39CB4A0B, 0x398B318B294718C5,  // 0x000154B8 
	0x398B294729472949, 0x318939CB398B39CB, 0x39CB398B39CB2947, 0x2947318B318939CB,  // 0x000154D8 
	0x39CD420F4A0B318B, 0x18C52147318B420F, 0x420F4A0B39CB3189, 0x3149314929493149,  // 0x000154F8 
	0x3189398B398B41CB, 0x49CB41CB398B318B, 0x3189294929492949, 0x2107210721072907,  // 0x00015518 
	0x2907290729072947, 0x18C531893189420B, 0x41CB41CB39893189, 0x398B398B39CB18C5,  // 0x00015538 
	0x2947318B29472949, 0x2949294929492949, 0x2949294721473149, 0x3189318B318B398B,  // 0x00015558 
	0x39CB318B4A0B2907, 0x18C5318B318B318B, 0x318B420F420F4A0B, 0x39CB318929493149,  // 0x00015578 
	0x3149314931893989, 0x41CB41C939893189, 0x3189214721472147, 0x2147210721072107,  // 0x00015598 
	0x2907290729492147, 0x18C5318B318B39CB, 0x39CB398B31893989, 0x2947318B318B18C5,  // 0x000155B8 
	0x2947398B29472949, 0x294929493189318B, 0x318931893989398B, 0x398B31893149318B,  // 0x000155D8 
	0x318B318B420F2949, 0x18C521472947318B, 0x39CB318B318B39CB, 0x318B318B318B398B,  // 0x000155F8 
	0x2947398B318941CB, 0x41CB41CB41CB3989, 0x41CB398B398B398B, 0x2147214729472147,  // 0x00015618 
	0x2947318B318B318B, 0x18C52947398B398B, 0x318B41CB3989398B, 0x318B420F318B18C5,  // 0x00015638 
	0x318B318B318B318B, 0x3189318B39CD39CB, 0x39CD39CB318B3189, 0x318B294729472949,  // 0x00015658 
	0x2947294739CB2949, 0x18C5398B420F39CB, 0x398B39CB398B318B, 0x398B318B2947318B,  // 0x00015678 
	0x39CB39CB398B4A0D, 0x420D4A0D41CB41CB, 0x41CB3989398B398B, 0x398B398B318B318B,  // 0x00015698 
	0x29472947398B39CB, 0x18C52947398B398B, 0x294741CB398B398B, 0x4A0B39CB294718C5,  // 0x000156B8 
	0x2947294729472147, 0x2947318B21472147, 0x2947214721472947, 0x318B318B318B318B,  // 0x000156D8 
	0x2147294729472107, 0x18C518C5318B398B, 0x420B420B2949398B, 0x29493189318B2907,  // 0x000156F8 
	0x3189318931493989, 0x3189398B29492107, 0x2949210718C518C5, 0x18C518C518C518C5,  // 0x00015718 
	0x18C518C518C518C5, 0x18C521472947318B, 0x398B398B318B39CB, 0x318B318B294718C5,  // 0x00015738 
	0x18C518C518C518C5, 0x18C518C518C518C5, 0x18C5214718C518C5, 0x18C518C518C518C5,  // 0x00015758 
	0x18C518C518C518C5, 0x18C518C518C518C5, 0x18C520C721072107, 0x2107210721072909,  // 0x00015778 
	0x2909290921072107, 0x2107290921072107, 0x2949398B398B398B, 0x294718C518C52947,  // 0x00015798 
	0x318B318B294718C5, 0x2107210518C518C5, 0x18C518C518C518C5, 0x18C518C520C518C5,  // 0x000157B8 
	0x4A0B420F524F420F, 0x420F420F524F420F, 0x2947398B398B398B, 0x294718C518C52147,  // 0x000157D8 
	0x2947398B29472147, 0x2147214729472947, 0x29472947318B2947, 0x29472947318B39CB,  // 0x000157F8 
	0x4A0B420F4A0B524F, 0x524F524F524F420F, 0x318B29472147318B, 0x318B294718C52907,  // 0x00015818 
	0x39CB4A0B420F39CB, 0x39CB29472947398B, 0x29472947398B18C5, 0x18C52147398B420F,  // 0x00015838 
	0x2147318B420F420F, 0x318B39CB39CB39CB, 0x4A0B294721472947, 0x2947318B18C52947,  // 0x00015858 
	0x21472147318B318B, 0x318B29472147318B, 0x39CB39CB29472947, 0x2947318B4A0B398B,  // 0x00015878 
	0x420F420F420F41CB, 0x41CB4A0B4A0B4A0B, 0x4A0B318B39CB2947, 0x318B318B18C52105,  // 0x00015898 
	0x2147318B2947318B, 0x318B318B2147398B, 0x420F420F294718C5, 0x2147318B39CB2947,  // 0x000158B8 
	0x318B318B420F39CB, 0x318B318B318B318B, 0x420F39CB39CB318B, 0x318B398B18C52947,  // 0x000158D8 
	0x2147214718C52947, 0x318B398B4A0B39CB, 0x39CB294729472947, 0x318B294729472947,  // 0x000158F8 
	0x39CB4A0B420F39CB, 0x39CB318B31892947, 0x39CB39CB39CB4A0B, 0x39CB398B210718C5,  // 0x00015918 
	0x290731893189318B, 0x318B294739CB398B, 0x2947318B294720C5, 0x2947398B294739CB,  // 0x00015938 
	0x318B318B39CB39CB, 0x420F524F420F39CB, 0x318B4A0B4A0B4A0B, 0x39CB294720C518C5,  // 0x00015958 
	0x2947318B29472147, 0x29472947318B2947, 0x398B398B39CB398B, 0x398B318B2947398B,  // 0x00015978 
	0x39CB318B420F39CB, 0x318B420F4A0B39CB, 0x318B39CB318B39CB, 0x420F39CB210718C5,  // 0x00015998 
	0x2907318B318B318B, 0x318B318B39CB2947, 0x318B318B398B18C5, 0x2947318B29473149,  // 0x000159B8 
	0x398B398B318B4A0B, 0x420F420F420F4A0B, 0x4A0B318B420F4A0B, 0x420F2947214718C5,  // 0x000159D8 
	0x2147318B318B398B, 0x39CB39CB29472147, 0x2947318B2947318B, 0x39CB4A0B39CB39CB,  // 0x000159F8 
	0x39CB398B318B420F, 0x318B420F318B318B, 0x420F4A0B318B318B, 0x29472947210718C5,  // 0x00015A18 
	0x2147318B29472947, 0x398B398B398B2947, 0x318B2947294718C5, 0x210539CB318B398B,  // 0x00015A38 
	0x294739CB4A0B398B, 0x39CB318B39CB420F, 0x294739CB4A0B420F, 0x420F39CB318B18C5,  // 0x00015A58 
	0x2147318B398B420F, 0x29472947420F2947, 0x29472947318B2947, 0x21472947214718C5,  // 0x00015A78 
	0x2947398B39CB39CB, 0x318B39CB398B2949, 0x2107210729492949, 0x29494A0B290718C5,  // 0x00015A98 
	0x2147318B318B39CB, 0x2947294739CB2947, 0x29472947210720C5, 0x18C52947294718C5,  // 0x00015AB8 
};

static u8 unaccounted15AD8[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx_t _ganontikasonogo_room_0_vertices_00015AE0[27] = 
{
	 { 546, 150, -1925, 0, 2048, 2048, 68, 74, 83, 255 }, // 0x00015AE0
	 { 556, 285, -1903, 0, 1463, 666, 255, 255, 255, 255 }, // 0x00015AF0
	 { 546, 320, -1925, 0, 2048, 307, 156, 163, 174, 255 }, // 0x00015B00
	 { 550, 150, -1906, 0, 1658, 2048, 68, 74, 83, 255 }, // 0x00015B10
	 { 562, 150, -1900, 0, 1268, 2048, 212, 214, 218, 255 }, // 0x00015B20
	 { 565, 268, -1898, 0, 1170, 845, 255, 255, 255, 255 }, // 0x00015B30
	 { 580, 150, -1905, 0, 878, 2048, 34, 36, 41, 255 }, // 0x00015B40
	 { 580, 250, -1905, 0, 878, 1024, 34, 36, 41, 255 }, // 0x00015B50
	 { 606, 250, -1890, 0, 0, 1024, 34, 36, 41, 255 }, // 0x00015B60
	 { 599, 261, -1878, 0, 0, 910, 170, 176, 184, 255 }, // 0x00015B70
	 { 565, 268, -1898, 0, 1170, 845, 255, 255, 255, 255 }, // 0x00015B80
	 { 599, 306, -1878, 0, 0, 455, 212, 214, 218, 255 }, // 0x00015B90
	 { 569, 335, -1895, 0, 1024, 154, 212, 214, 218, 255 }, // 0x00015BA0
	 { 599, 350, -1878, 0, 0, 0, 212, 214, 218, 255 }, // 0x00015BB0
	 { 606, 250, -1890, 0, 0, 1024, 34, 36, 41, 255 }, // 0x00015BC0
	 { 632, 250, -1875, 0, 878, 1024, 34, 36, 41, 255 }, // 0x00015BD0
	 { 634, 268, -1858, 0, 1170, 845, 255, 255, 255, 255 }, // 0x00015BE0
	 { 599, 261, -1878, 0, 0, 910, 170, 176, 184, 255 }, // 0x00015BF0
	 { 643, 285, -1853, 0, 1463, 666, 255, 255, 255, 255 }, // 0x00015C00
	 { 599, 306, -1878, 0, 0, 455, 212, 214, 218, 255 }, // 0x00015C10
	 { 630, 335, -1860, 0, 1024, 154, 212, 214, 218, 255 }, // 0x00015C20
	 { 599, 350, -1878, 0, 0, 0, 212, 214, 218, 255 }, // 0x00015C30
	 { 667, 320, -1855, 0, 2048, 307, 156, 163, 174, 255 }, // 0x00015C40
	 { 632, 150, -1875, 0, 878, 2048, 34, 36, 41, 255 }, // 0x00015C50
	 { 637, 150, -1856, 0, 1268, 2048, 212, 214, 218, 255 }, // 0x00015C60
	 { 648, 150, -1850, 0, 1658, 2048, 68, 74, 83, 255 }, // 0x00015C70
	 { 667, 150, -1855, 0, 2048, 2048, 68, 74, 83, 255 }, // 0x00015C80
};

Vtx_t _ganontikasonogo_room_0_vertices_00015C90[8] = 
{
	 { 546, 150, -1925, 0, 0, 0, 0, 0, 0, 0 }, // 0x00015C90
	 { 667, 150, -1855, 0, 0, 0, 0, 0, 0, 0 }, // 0x00015CA0
	 { 546, 350, -1925, 0, 0, 0, 0, 0, 0, 0 }, // 0x00015CB0
	 { 667, 350, -1855, 0, 0, 0, 0, 0, 0, 0 }, // 0x00015CC0
	 { 539, 150, -1913, 0, 0, 0, 0, 0, 0, 0 }, // 0x00015CD0
	 { 660, 150, -1843, 0, 0, 0, 0, 0, 0, 0 }, // 0x00015CE0
	 { 539, 350, -1913, 0, 0, 0, 0, 0, 0, 0 }, // 0x00015CF0
	 { 660, 350, -1843, 0, 0, 0, 0, 0, 0, 0 }, // 0x00015D00
};

Gfx _ganontikasonogo_room_0_dlist_00015D10[] =
{
	gsDPPipeSync(), // 0x00015D10
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00015D18
	gsSPVertex(_ganontikasonogo_room_0_vertices_00015C90, 8, 0), // 0x00015D20
	gsSPCullDisplayList(0, 7), // 0x00015D28
	gsDPPipeSync(), // 0x00015D30
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00015D38
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00015D40
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00015D48
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00016B78), // 0x00015D50
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00015D58
	gsDPLoadSync(), // 0x00015D60
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00015D68
	gsDPPipeSync(), // 0x00015D70
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00015D78
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00015D80
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00015D88
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00015D90
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00015D98
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00015DA0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 254), // 0x00015DA8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00015AE0, 27, 0), // 0x00015DB0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00015DB8
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 1, 0), // 0x00015DC0
	gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0), // 0x00015DC8
	gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0), // 0x00015DD0
	gsSP2Triangles(9, 11, 1, 0, 9, 1, 10, 0), // 0x00015DD8
	gsSP2Triangles(11, 12, 1, 0, 11, 13, 12, 0), // 0x00015DE0
	gsSP2Triangles(12, 2, 1, 0, 14, 15, 16, 0), // 0x00015DE8
	gsSP2Triangles(14, 16, 17, 0, 16, 18, 19, 0), // 0x00015DF0
	gsSP2Triangles(16, 19, 17, 0, 18, 20, 19, 0), // 0x00015DF8
	gsSP2Triangles(20, 21, 19, 0, 18, 22, 20, 0), // 0x00015E00
	gsSP2Triangles(15, 23, 16, 0, 23, 24, 16, 0), // 0x00015E08
	gsSP2Triangles(24, 25, 18, 0, 24, 18, 16, 0), // 0x00015E10
	gsSP2Triangles(25, 26, 18, 0, 26, 22, 18, 0), // 0x00015E18
	gsSPEndDisplayList(), // 0x00015E20
};

Vtx_t _ganontikasonogo_room_0_vertices_00015E28[27] = 
{
	 { -667, 150, -1855, 0, 2048, 2048, 68, 74, 83, 255 }, // 0x00015E28
	 { -643, 285, -1853, 0, 1463, 666, 255, 255, 255, 255 }, // 0x00015E38
	 { -667, 320, -1855, 0, 2048, 307, 156, 163, 174, 255 }, // 0x00015E48
	 { -648, 150, -1850, 0, 1658, 2048, 68, 74, 83, 255 }, // 0x00015E58
	 { -637, 150, -1856, 0, 1268, 2048, 212, 214, 218, 255 }, // 0x00015E68
	 { -634, 268, -1858, 0, 1170, 845, 255, 255, 255, 255 }, // 0x00015E78
	 { -632, 150, -1875, 0, 878, 2048, 34, 36, 41, 255 }, // 0x00015E88
	 { -632, 250, -1875, 0, 878, 1024, 34, 36, 41, 255 }, // 0x00015E98
	 { -606, 250, -1890, 0, 0, 1024, 34, 36, 41, 255 }, // 0x00015EA8
	 { -599, 261, -1878, 0, 0, 910, 170, 176, 184, 255 }, // 0x00015EB8
	 { -634, 268, -1858, 0, 1170, 845, 255, 255, 255, 255 }, // 0x00015EC8
	 { -599, 306, -1878, 0, 0, 455, 212, 214, 218, 255 }, // 0x00015ED8
	 { -630, 335, -1860, 0, 1024, 154, 212, 214, 218, 255 }, // 0x00015EE8
	 { -599, 350, -1878, 0, 0, 0, 212, 214, 218, 255 }, // 0x00015EF8
	 { -606, 250, -1890, 0, 0, 1024, 34, 36, 41, 255 }, // 0x00015F08
	 { -580, 250, -1905, 0, 878, 1024, 34, 36, 41, 255 }, // 0x00015F18
	 { -565, 268, -1898, 0, 1170, 845, 255, 255, 255, 255 }, // 0x00015F28
	 { -599, 261, -1878, 0, 0, 910, 170, 176, 184, 255 }, // 0x00015F38
	 { -556, 285, -1903, 0, 1463, 666, 255, 255, 255, 255 }, // 0x00015F48
	 { -599, 306, -1878, 0, 0, 455, 212, 214, 218, 255 }, // 0x00015F58
	 { -569, 335, -1895, 0, 1024, 154, 212, 214, 218, 255 }, // 0x00015F68
	 { -599, 350, -1878, 0, 0, 0, 212, 214, 218, 255 }, // 0x00015F78
	 { -546, 320, -1925, 0, 2048, 307, 156, 163, 174, 255 }, // 0x00015F88
	 { -580, 150, -1905, 0, 878, 2048, 34, 36, 41, 255 }, // 0x00015F98
	 { -562, 150, -1900, 0, 1268, 2048, 212, 214, 218, 255 }, // 0x00015FA8
	 { -550, 150, -1906, 0, 1658, 2048, 68, 74, 83, 255 }, // 0x00015FB8
	 { -546, 150, -1925, 0, 2048, 2048, 68, 74, 83, 255 }, // 0x00015FC8
};

Vtx_t _ganontikasonogo_room_0_vertices_00015FD8[8] = 
{
	 { -546, 150, -1925, 0, 0, 0, 0, 0, 0, 0 }, // 0x00015FD8
	 { -539, 150, -1913, 0, 0, 0, 0, 0, 0, 0 }, // 0x00015FE8
	 { -546, 350, -1925, 0, 0, 0, 0, 0, 0, 0 }, // 0x00015FF8
	 { -539, 350, -1913, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016008
	 { -667, 150, -1855, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016018
	 { -660, 150, -1843, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016028
	 { -667, 350, -1855, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016038
	 { -660, 350, -1843, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016048
};

Gfx _ganontikasonogo_room_0_dlist_00016058[] =
{
	gsDPPipeSync(), // 0x00016058
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00016060
	gsSPVertex(_ganontikasonogo_room_0_vertices_00015FD8, 8, 0), // 0x00016068
	gsSPCullDisplayList(0, 7), // 0x00016070
	gsDPPipeSync(), // 0x00016078
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00016080
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00016088
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00016090
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00016B78), // 0x00016098
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x000160A0
	gsDPLoadSync(), // 0x000160A8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000160B0
	gsDPPipeSync(), // 0x000160B8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x000160C0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000160C8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x000160D0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x000160D8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000160E0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000160E8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 254), // 0x000160F0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00015E28, 27, 0), // 0x000160F8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00016100
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 1, 0), // 0x00016108
	gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0), // 0x00016110
	gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0), // 0x00016118
	gsSP2Triangles(9, 11, 1, 0, 9, 1, 10, 0), // 0x00016120
	gsSP2Triangles(11, 12, 1, 0, 11, 13, 12, 0), // 0x00016128
	gsSP2Triangles(12, 2, 1, 0, 14, 15, 16, 0), // 0x00016130
	gsSP2Triangles(14, 16, 17, 0, 16, 18, 19, 0), // 0x00016138
	gsSP2Triangles(16, 19, 17, 0, 18, 20, 19, 0), // 0x00016140
	gsSP2Triangles(20, 21, 19, 0, 18, 22, 20, 0), // 0x00016148
	gsSP2Triangles(15, 23, 16, 0, 23, 24, 16, 0), // 0x00016150
	gsSP2Triangles(24, 25, 18, 0, 24, 18, 16, 0), // 0x00016158
	gsSP2Triangles(25, 26, 18, 0, 26, 22, 18, 0), // 0x00016160
	gsSPEndDisplayList(), // 0x00016168
};

Vtx_t _ganontikasonogo_room_0_vertices_00016170[27] = 
{
	 { -546, 150, 245, 0, 2048, 2048, 68, 74, 83, 255 }, // 0x00016170
	 { -556, 285, 223, 0, 1463, 666, 198, 202, 208, 255 }, // 0x00016180
	 { -546, 320, 245, 0, 2048, 307, 198, 202, 208, 255 }, // 0x00016190
	 { -550, 150, 226, 0, 1658, 2048, 68, 74, 83, 255 }, // 0x000161A0
	 { -562, 150, 220, 0, 1268, 2048, 198, 202, 208, 255 }, // 0x000161B0
	 { -565, 268, 218, 0, 1170, 845, 198, 202, 208, 255 }, // 0x000161C0
	 { -580, 150, 225, 0, 878, 2048, 34, 36, 41, 255 }, // 0x000161D0
	 { -580, 250, 225, 0, 878, 1024, 34, 36, 41, 255 }, // 0x000161E0
	 { -606, 250, 210, 0, 0, 1024, 34, 36, 41, 255 }, // 0x000161F0
	 { -599, 261, 198, 0, 0, 910, 170, 176, 184, 255 }, // 0x00016200
	 { -565, 268, 218, 0, 1170, 845, 198, 202, 208, 255 }, // 0x00016210
	 { -599, 306, 198, 0, 0, 455, 212, 214, 218, 255 }, // 0x00016220
	 { -569, 335, 215, 0, 1024, 154, 151, 213, 255, 255 }, // 0x00016230
	 { -599, 350, 198, 0, 0, 0, 113, 124, 139, 255 }, // 0x00016240
	 { -606, 250, 210, 0, 0, 1024, 34, 36, 41, 255 }, // 0x00016250
	 { -632, 250, 195, 0, 878, 1024, 34, 36, 41, 255 }, // 0x00016260
	 { -634, 268, 178, 0, 1170, 845, 198, 202, 208, 255 }, // 0x00016270
	 { -599, 261, 198, 0, 0, 910, 170, 176, 184, 255 }, // 0x00016280
	 { -643, 285, 173, 0, 1463, 666, 198, 202, 208, 255 }, // 0x00016290
	 { -599, 306, 198, 0, 0, 455, 212, 214, 218, 255 }, // 0x000162A0
	 { -630, 335, 180, 0, 1024, 154, 151, 213, 255, 255 }, // 0x000162B0
	 { -599, 350, 198, 0, 0, 0, 113, 124, 139, 255 }, // 0x000162C0
	 { -667, 320, 175, 0, 2048, 307, 198, 202, 208, 255 }, // 0x000162D0
	 { -632, 150, 195, 0, 878, 2048, 34, 36, 41, 255 }, // 0x000162E0
	 { -637, 150, 176, 0, 1268, 2048, 198, 202, 208, 255 }, // 0x000162F0
	 { -648, 150, 170, 0, 1658, 2048, 68, 74, 83, 255 }, // 0x00016300
	 { -667, 150, 175, 0, 2048, 2048, 68, 74, 83, 255 }, // 0x00016310
};

Vtx_t _ganontikasonogo_room_0_vertices_00016320[8] = 
{
	 { -660, 150, 163, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016320
	 { -539, 150, 233, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016330
	 { -660, 350, 163, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016340
	 { -539, 350, 233, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016350
	 { -667, 150, 175, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016360
	 { -546, 150, 245, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016370
	 { -667, 350, 175, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016380
	 { -546, 350, 245, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016390
};

Gfx _ganontikasonogo_room_0_dlist_000163A0[] =
{
	gsDPPipeSync(), // 0x000163A0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000163A8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00016320, 8, 0), // 0x000163B0
	gsSPCullDisplayList(0, 7), // 0x000163B8
	gsDPPipeSync(), // 0x000163C0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000163C8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000163D0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000163D8
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00016B78), // 0x000163E0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x000163E8
	gsDPLoadSync(), // 0x000163F0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000163F8
	gsDPPipeSync(), // 0x00016400
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00016408
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00016410
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00016418
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00016420
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00016428
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00016430
	gsDPSetPrimColor(0, 0, 255, 255, 255, 254), // 0x00016438
	gsSPVertex(_ganontikasonogo_room_0_vertices_00016170, 27, 0), // 0x00016440
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00016448
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 1, 0), // 0x00016450
	gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0), // 0x00016458
	gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0), // 0x00016460
	gsSP2Triangles(9, 11, 1, 0, 9, 1, 10, 0), // 0x00016468
	gsSP2Triangles(11, 12, 1, 0, 11, 13, 12, 0), // 0x00016470
	gsSP2Triangles(12, 2, 1, 0, 14, 15, 16, 0), // 0x00016478
	gsSP2Triangles(14, 16, 17, 0, 16, 18, 19, 0), // 0x00016480
	gsSP2Triangles(16, 19, 17, 0, 18, 20, 19, 0), // 0x00016488
	gsSP2Triangles(20, 21, 19, 0, 18, 22, 20, 0), // 0x00016490
	gsSP2Triangles(15, 23, 16, 0, 23, 24, 16, 0), // 0x00016498
	gsSP2Triangles(24, 25, 18, 0, 24, 18, 16, 0), // 0x000164A0
	gsSP2Triangles(25, 26, 18, 0, 26, 22, 18, 0), // 0x000164A8
	gsSPEndDisplayList(), // 0x000164B0
};

Vtx_t _ganontikasonogo_room_0_vertices_000164B8[27] = 
{
	 { 1212, -240, -910, 0, 2048, 2048, 68, 74, 83, 255 }, // 0x000164B8
	 { 1198, -105, -890, 0, 1463, 666, 158, 142, 111, 255 }, // 0x000164C8
	 { 1212, -70, -910, 0, 2048, 307, 69, 62, 48, 255 }, // 0x000164D8
	 { 1198, -240, -897, 0, 1658, 2048, 68, 74, 83, 255 }, // 0x000164E8
	 { 1198, -240, -883, 0, 1268, 2048, 158, 142, 111, 255 }, // 0x000164F8
	 { 1198, -123, -880, 0, 1170, 845, 158, 142, 111, 255 }, // 0x00016508
	 { 1212, -240, -870, 0, 878, 2048, 34, 36, 41, 255 }, // 0x00016518
	 { 1212, -140, -870, 0, 878, 1024, 34, 36, 41, 255 }, // 0x00016528
	 { 1212, -140, -840, 0, 0, 1024, 34, 36, 41, 255 }, // 0x00016538
	 { 1198, -129, -840, 0, 0, 910, 170, 176, 184, 255 }, // 0x00016548
	 { 1198, -123, -880, 0, 1170, 845, 158, 142, 111, 255 }, // 0x00016558
	 { 1198, -84, -840, 0, 0, 455, 113, 124, 139, 255 }, // 0x00016568
	 { 1198, -55, -875, 0, 1024, 154, 69, 62, 48, 255 }, // 0x00016578
	 { 1198, -40, -840, 0, 0, 0, 69, 62, 48, 255 }, // 0x00016588
	 { 1212, -140, -840, 0, 0, 1024, 34, 36, 41, 255 }, // 0x00016598
	 { 1212, -140, -810, 0, 878, 1024, 34, 36, 41, 255 }, // 0x000165A8
	 { 1198, -123, -800, 0, 1170, 845, 158, 142, 111, 255 }, // 0x000165B8
	 { 1198, -129, -840, 0, 0, 910, 170, 176, 184, 255 }, // 0x000165C8
	 { 1198, -105, -790, 0, 1463, 666, 158, 142, 111, 255 }, // 0x000165D8
	 { 1198, -84, -840, 0, 0, 455, 113, 124, 139, 255 }, // 0x000165E8
	 { 1198, -55, -805, 0, 1024, 154, 69, 62, 48, 255 }, // 0x000165F8
	 { 1198, -40, -840, 0, 0, 0, 69, 62, 48, 255 }, // 0x00016608
	 { 1212, -70, -770, 0, 2048, 307, 69, 62, 48, 255 }, // 0x00016618
	 { 1212, -240, -810, 0, 878, 2048, 34, 36, 41, 255 }, // 0x00016628
	 { 1198, -240, -797, 0, 1268, 2048, 158, 142, 111, 255 }, // 0x00016638
	 { 1198, -240, -783, 0, 1658, 2048, 68, 74, 83, 255 }, // 0x00016648
	 { 1212, -240, -770, 0, 2048, 2048, 68, 74, 83, 255 }, // 0x00016658
};

Vtx_t _ganontikasonogo_room_0_vertices_00016668[8] = 
{
	 { 1198, -240, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016668
	 { 1212, -240, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016678
	 { 1198, -40, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016688
	 { 1212, -40, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016698
	 { 1198, -240, -770, 0, 0, 0, 0, 0, 0, 0 }, // 0x000166A8
	 { 1212, -240, -770, 0, 0, 0, 0, 0, 0, 0 }, // 0x000166B8
	 { 1198, -40, -770, 0, 0, 0, 0, 0, 0, 0 }, // 0x000166C8
	 { 1212, -40, -770, 0, 0, 0, 0, 0, 0, 0 }, // 0x000166D8
};

Gfx _ganontikasonogo_room_0_dlist_000166E8[] =
{
	gsDPPipeSync(), // 0x000166E8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000166F0
	gsSPVertex(_ganontikasonogo_room_0_vertices_00016668, 8, 0), // 0x000166F8
	gsSPCullDisplayList(0, 7), // 0x00016700
	gsDPPipeSync(), // 0x00016708
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00016710
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00016718
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00016720
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00016B78), // 0x00016728
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00016730
	gsDPLoadSync(), // 0x00016738
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00016740
	gsDPPipeSync(), // 0x00016748
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00016750
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00016758
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00016760
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00016768
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00016770
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00016778
	gsDPSetPrimColor(0, 0, 255, 255, 255, 254), // 0x00016780
	gsSPVertex(_ganontikasonogo_room_0_vertices_000164B8, 27, 0), // 0x00016788
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00016790
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 1, 0), // 0x00016798
	gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0), // 0x000167A0
	gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0), // 0x000167A8
	gsSP2Triangles(9, 11, 1, 0, 9, 1, 10, 0), // 0x000167B0
	gsSP2Triangles(11, 12, 1, 0, 11, 13, 12, 0), // 0x000167B8
	gsSP2Triangles(12, 2, 1, 0, 14, 15, 16, 0), // 0x000167C0
	gsSP2Triangles(14, 16, 17, 0, 16, 18, 19, 0), // 0x000167C8
	gsSP2Triangles(16, 19, 17, 0, 18, 20, 19, 0), // 0x000167D0
	gsSP2Triangles(20, 21, 19, 0, 18, 22, 20, 0), // 0x000167D8
	gsSP2Triangles(15, 23, 16, 0, 23, 24, 16, 0), // 0x000167E0
	gsSP2Triangles(24, 25, 18, 0, 24, 18, 16, 0), // 0x000167E8
	gsSP2Triangles(25, 26, 18, 0, 26, 22, 18, 0), // 0x000167F0
	gsSPEndDisplayList(), // 0x000167F8
};

Vtx_t _ganontikasonogo_room_0_vertices_00016800[27] = 
{
	 { 667, 150, 175, 0, 2048, 2048, 68, 74, 83, 255 }, // 0x00016800
	 { 643, 285, 173, 0, 1463, 666, 198, 202, 208, 255 }, // 0x00016810
	 { 667, 320, 175, 0, 2048, 307, 198, 202, 208, 255 }, // 0x00016820
	 { 648, 150, 170, 0, 1658, 2048, 68, 74, 83, 255 }, // 0x00016830
	 { 637, 150, 176, 0, 1268, 2048, 198, 202, 208, 255 }, // 0x00016840
	 { 634, 268, 178, 0, 1170, 845, 198, 202, 208, 255 }, // 0x00016850
	 { 632, 150, 195, 0, 878, 2048, 34, 36, 41, 255 }, // 0x00016860
	 { 632, 250, 195, 0, 878, 1024, 34, 36, 41, 255 }, // 0x00016870
	 { 606, 250, 210, 0, 0, 1024, 34, 36, 41, 255 }, // 0x00016880
	 { 599, 261, 198, 0, 0, 910, 50, 75, 25, 255 }, // 0x00016890
	 { 634, 268, 178, 0, 1170, 845, 198, 202, 208, 255 }, // 0x000168A0
	 { 599, 306, 198, 0, 0, 455, 5, 5, 5, 255 }, // 0x000168B0
	 { 630, 335, 180, 0, 1024, 154, 198, 202, 208, 255 }, // 0x000168C0
	 { 599, 350, 198, 0, 0, 0, 198, 202, 208, 255 }, // 0x000168D0
	 { 606, 250, 210, 0, 0, 1024, 34, 36, 41, 255 }, // 0x000168E0
	 { 580, 250, 225, 0, 878, 1024, 34, 36, 41, 255 }, // 0x000168F0
	 { 565, 268, 218, 0, 1170, 845, 198, 202, 208, 255 }, // 0x00016900
	 { 599, 261, 198, 0, 0, 910, 50, 75, 25, 255 }, // 0x00016910
	 { 556, 285, 223, 0, 1463, 666, 198, 202, 208, 255 }, // 0x00016920
	 { 599, 306, 198, 0, 0, 455, 5, 5, 5, 255 }, // 0x00016930
	 { 569, 335, 215, 0, 1024, 154, 198, 202, 208, 255 }, // 0x00016940
	 { 599, 350, 198, 0, 0, 0, 198, 202, 208, 255 }, // 0x00016950
	 { 546, 320, 245, 0, 2048, 307, 198, 202, 208, 255 }, // 0x00016960
	 { 580, 150, 225, 0, 878, 2048, 34, 36, 41, 255 }, // 0x00016970
	 { 562, 150, 220, 0, 1268, 2048, 198, 202, 208, 255 }, // 0x00016980
	 { 550, 150, 226, 0, 1658, 2048, 68, 74, 83, 255 }, // 0x00016990
	 { 546, 150, 245, 0, 2048, 2048, 68, 74, 83, 255 }, // 0x000169A0
};

Vtx_t _ganontikasonogo_room_0_vertices_000169B0[8] = 
{
	 { 660, 150, 163, 0, 0, 0, 0, 0, 0, 0 }, // 0x000169B0
	 { 667, 150, 175, 0, 0, 0, 0, 0, 0, 0 }, // 0x000169C0
	 { 660, 350, 163, 0, 0, 0, 0, 0, 0, 0 }, // 0x000169D0
	 { 667, 350, 175, 0, 0, 0, 0, 0, 0, 0 }, // 0x000169E0
	 { 539, 150, 233, 0, 0, 0, 0, 0, 0, 0 }, // 0x000169F0
	 { 546, 150, 245, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016A00
	 { 539, 350, 233, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016A10
	 { 546, 350, 245, 0, 0, 0, 0, 0, 0, 0 }, // 0x00016A20
};

Gfx _ganontikasonogo_room_0_dlist_00016A30[] =
{
	gsDPPipeSync(), // 0x00016A30
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00016A38
	gsSPVertex(_ganontikasonogo_room_0_vertices_000169B0, 8, 0), // 0x00016A40
	gsSPCullDisplayList(0, 7), // 0x00016A48
	gsDPPipeSync(), // 0x00016A50
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00016A58
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00016A60
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00016A68
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _ganontikasonogo_room_0_tex_00016B78), // 0x00016A70
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00016A78
	gsDPLoadSync(), // 0x00016A80
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00016A88
	gsDPPipeSync(), // 0x00016A90
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00016A98
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00016AA0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00016AA8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00016AB0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00016AB8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00016AC0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 254), // 0x00016AC8
	gsSPVertex(_ganontikasonogo_room_0_vertices_00016800, 27, 0), // 0x00016AD0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00016AD8
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 1, 0), // 0x00016AE0
	gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0), // 0x00016AE8
	gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0), // 0x00016AF0
	gsSP2Triangles(9, 11, 1, 0, 9, 1, 10, 0), // 0x00016AF8
	gsSP2Triangles(11, 12, 1, 0, 11, 13, 12, 0), // 0x00016B00
	gsSP2Triangles(12, 2, 1, 0, 14, 15, 16, 0), // 0x00016B08
	gsSP2Triangles(14, 16, 17, 0, 16, 18, 19, 0), // 0x00016B10
	gsSP2Triangles(16, 19, 17, 0, 18, 20, 19, 0), // 0x00016B18
	gsSP2Triangles(20, 21, 19, 0, 18, 22, 20, 0), // 0x00016B20
	gsSP2Triangles(15, 23, 16, 0, 23, 24, 16, 0), // 0x00016B28
	gsSP2Triangles(24, 25, 18, 0, 24, 18, 16, 0), // 0x00016B30
	gsSP2Triangles(25, 26, 18, 0, 26, 22, 18, 0), // 0x00016B38
	gsSPEndDisplayList(), // 0x00016B40
};

Gfx _ganontikasonogo_room_0_dlist_00016B48[] =
{
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00015D10), // 0x00016B48
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00016058), // 0x00016B50
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_000163A0), // 0x00016B58
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_000166E8), // 0x00016B60
	gsSPDisplayList(_ganontikasonogo_room_0_dlist_00016A30), // 0x00016B68
	gsSPEndDisplayList(), // 0x00016B70
};

u64 _ganontikasonogo_room_0_tex_00016B78[] = 
{
	0x7F50404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00016B78 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00016B98 
	0x8F8F404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00016BB8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00016BD8 
	0x9F9F6F4040404040, 0x4040404040404040, 0x40406F6F40404040, 0x4040404040404040,  // 0x00016BF8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00016C18 
	0x8F9F9F5F40404040, 0x4040404040404040, 0x6FBFAF6F40404040, 0x4040404040404040,  // 0x00016C38 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00016C58 
	0x8F8F8F7F5F4F6F6F, 0x6F40405050405F7F, 0x9F9F7F6F40404040, 0x4040404040404040,  // 0x00016C78 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00016C98 
	0x8F7F6F5F7F9F8F8F, 0x9F9F9F8F8F7F5F8F, 0x7F8F6F5F40404040, 0x4040404040404040,  // 0x00016CB8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00016CD8 
	0x6F6F6F7F8F8F8F8F, 0x9F8F7F7F8F7F4F5F, 0x6F6F5F6F8F6F5F50, 0x4040404040404040,  // 0x00016CF8 
	0x5F4F404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00016D18 
	0x4F4F5F5F6F6F6F6F, 0x6F6F5F5F6F5F3F3F, 0x3F4F7F7F7F7F7F7F, 0x7F6F50405F6F9F9F,  // 0x00016D38 
	0x5F40404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00016D58 
	0x3F3F4F3F3F3F3F3F, 0x4F3F3F3F3F3F4F4F, 0x3F3F3F6F8F8F8F7F, 0x6F7F6F7F9F9F8F6F,  // 0x00016D78 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404030, 0x303F404040404040,  // 0x00016D98 
	0x4F4F4F3F3F3F3F3F, 0x4F4F4F4F4F3F4F3F, 0x4F3F4F4F3F3F6F7F, 0x7F5F6F8F7F7F5F40,  // 0x00016DB8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040303030, 0x4F6F404040404040,  // 0x00016DD8 
	0x3F4F4F3F3F3F3F4F, 0x3F4F3F3F3F3F3F4F, 0x3F4F3F3F3F3F3F3F, 0x4F5F6F6F5F6F7F50,  // 0x00016DF8 
	0x4040404040404040, 0x4040404040404040, 0x4040403030304F5F, 0x8F6F404040404040,  // 0x00016E18 
	0x4F4F3F3F3F3F3F4F, 0x4F4F4F4F4F3F4F4F, 0x3F3F3F3F3F4F3F4F, 0x3F3F5F7F8F7F9F8F,  // 0x00016E38 
	0x5040404040404040, 0x4040404040404040, 0x303030304F5F7F9F, 0x7F4F304040404040,  // 0x00016E58 
	0x3F3F3F3F3F3F4F3F, 0x3F4F3F4F4F3F4F4F, 0x3F4F3F3F3F3F4F4F, 0x3F3F4F8F8F7F7F9F,  // 0x00016E78 
	0x8F50404040404040, 0x4040403030403030, 0x3F4F5F6F8F9F9F6F, 0x6F3F303040404040,  // 0x00016E98 
	0x4F4F4F3F4F3F3F4F, 0x4F4F4F4F3F4F4F3F, 0x4F4F4F4F3F3F4F3F, 0x3F4F3F5F7F8F7F7F,  // 0x00016EB8 
	0x7F6F404040404030, 0x3030304F4F5F6F8F, 0x8F9F9FAF9F7F5F5F, 0x3F20304040404040,  // 0x00016ED8 
	0x4F4F3F4F3F3F3F3F, 0x4F4F3F4F4F4F4F4F, 0x4F4F3F3F4F4F4F3F, 0x3F3F4F4F6F7F7F7F,  // 0x00016EF8 
	0x6F6F4F404030203F, 0x3F4F6F8F8F9F8F8F, 0x8F8F7F7F7F6F5F3F, 0x3F30304040404040,  // 0x00016F18 
	0x3F3F4F3F3F3F3F3F, 0x3F3F4F4F3F4F4F3F, 0x3F4F4F3F3F4F3F4F, 0x3F4F4F4F3F4F5F7F,  // 0x00016F38 
	0x9FAF7F40303F4F7F, 0x7F9FAF9F9F9F8F6F, 0x7F7F6F6F6F5F3F3F, 0x2030404040404040,  // 0x00016F58 
	0x3F4F4F4F4F4F4F4F, 0x4F3F4F4F4F4F4F3F, 0x3F3F3F4F4F4F3F4F, 0x3F4F4F4F5F5F4F4F,  // 0x00016F78 
	0x6F6F6F303F4F7F7F, 0x8F7F7F7F8F6F7F6F, 0x6F6F6F6F4F3F3F20, 0x3040404040404040,  // 0x00016F98 
	0x3F3F4F4F3F4F4F3F, 0x4F4F3F4F4F3F3F4F, 0x4F3F3F3F4F3F3F4F, 0x4F3F3F4F7F7F7F7F,  // 0x00016FB8 
	0x7F5F5F3F3F4F5F6F, 0x6F5F6F6F6F7F7F6F, 0x5F5F3F3F2F2F2030, 0x4040404040404040,  // 0x00016FD8 
	0x3F3F3F3F4F4F4F3F, 0x4F4F3F3F4F4F3F3F, 0x3F4F4F4F4F4F4F3F, 0x4F4F5F6F7F7F7F7F,  // 0x00016FF8 
	0x8F8F4F3F4F4F5F6F, 0x5F6F5F5F5F4F4F3F, 0x3F3F3F3F3F304040, 0x4040404040404040,  // 0x00017018 
	0x3F4F4F3F3F3F3F4F, 0x3F3F3F4F4F4F3F4F, 0x4F3F3F4F4F3F4F4F, 0x4F4F6F8F7F7F7F7F,  // 0x00017038 
	0x9F5F3F3F3F4F4F4F, 0x3F3F2F2F3F2F3F3F, 0x3F3F4F4F40404040, 0x4040404040404040,  // 0x00017058 
	0x4F4F3F4F3F3F3F3F, 0x3F3F4F3F3F4F4F3F, 0x4F4F3F3F4F3F3F3F, 0x3F5F6F8F8F8F8F8F,  // 0x00017078 
	0x7F4F2F2F5F5F4F2F, 0x2F3F4F4F3F3F3F4F, 0x7F8F9F6F40404040, 0x4040404040404040,  // 0x00017098 
	0x4F4F3F3F4F3F4F4F, 0x3F4F4F3F3F3F4F3F, 0x3F3F4F4F4F4F5F4F, 0x5F7F6F5F5F4F7F5F,  // 0x000170B8 
	0x3F2F2F2F3F6F3F3F, 0x3F4F7F6F4F4F5F4F, 0x5F5F8F8F5F4F4040, 0x4040404040404040,  // 0x000170D8 
	0x4F4F4F4F4F3F3F3F, 0x3F4F3F3F4F4F3F3F, 0x3F4F4F5F7F6F7F8F, 0x6F5F5F9F9F6F4F3F,  // 0x000170F8 
	0x2F2F2F3F4F3F4F5F, 0x4F4F5F4F4F6F7F7F, 0x7F4F6F5F4F4F4F40, 0x4040404040404040,  // 0x00017118 
	0x3F3F4F4F4F4F3F4F, 0x3F3F3F4F4F4F4F3F, 0x4F5F7F7F6F6F6F8F, 0x8F7F6F5F4F4F2F2F,  // 0x00017138 
	0x2F2F3F4F4F4F4F7F, 0x7F5F4F4F6F8F8F8F, 0x9F6F4F4F5F7F6F5F, 0x4040404040404040,  // 0x00017158 
	0x4F4F4F4F4F5F4F4F, 0x5F5F7F7F5F6F7F6F, 0x5F4F5F7F9F8F7F8F, 0x9F9F4F3F2F2F2F2F,  // 0x00017178 
	0x2F3F4F6F6F6F8F9F, 0x8F6F6F6F7F8F8F9F, 0x9F8F6F6F8F9F7F6F, 0x4040404040404040,  // 0x00017198 
	0x4F4F5F7F7F7F7F7F, 0x7F7F7F7F7F6F5F6F, 0x8F9F6F5F5F7F8F5F, 0x4F3F2F2F3F3F3F3F,  // 0x000171B8 
	0x3F4F4F4F5F6F6F7F, 0x8F8F8F8F8F8F8F9F, 0x9F8F8F9F8F7F6F4F, 0x4040404040404040,  // 0x000171D8 
	0x7F8F4F5F9F7F7F7F, 0x7F7F7F7F7F8F8F6F, 0x5F6F7F5F3F2F2F2F, 0x2F3F3F3F3F5F6F5F,  // 0x000171F8 
	0x4F4F4F4F4F4F4F6F, 0x7F6F6F7F8F8F8F9F, 0x9F9F9F8F7F4F4F4F, 0x6F5F3F3030404040,  // 0x00017218 
	0x6F7F8F5F5F6F7F8F, 0x8F9F8F8F8F5F3F3F, 0x2F2F2F3F3F3F3F3F, 0x4F4F3F3F3F3F3F6F,  // 0x00017238 
	0x8F8F9F7F4F5F4F4F, 0x4F4F4F6F6F6F8F7F, 0x6F5F4F4F4F6FAFBF, 0xAF7F4F3030404040,  // 0x00017258 
	0x5F5F5F4F4F5F4F3F, 0x4F3F3F2F3F3F4F4F, 0x4F4F5F5F4F5F6F6F, 0x5F5F4F3F3F3F4F4F,  // 0x00017278 
	0x5F4F6F7F7F9F9F7F, 0x7F4F4F4F5F4F4F4F, 0x4F5F7F8F9F9F7F6F, 0x7F4F3F3F40404040,  // 0x00017298 
	0x5F4F7F6F6F6F6F4F, 0x3F3F5F7F7F7F8F8F, 0x7F7F8F7F7F7F8F7F, 0x6F5F5F3F4F5F7F7F,  // 0x000172B8 
	0x7F6F6F4F4F4F3F5F, 0x7F8F7F7F7F8F7F8F, 0x6F7F7F6F4F3F2F3F, 0x4F5F4F3F3F4F4040,  // 0x000172D8 
	0x7F7F7F7F8F5F3F3F, 0x6F7F6F7F8F8F7F7F, 0x7F8F7F7F7F7F7F7F, 0x7F6F3F3F4F5F6F7F,  // 0x000172F8 
	0x8FAF9F9F5F4F3F3F, 0x3F3F3F4F4F4F5F4F, 0x4F3F3F3F2F3F4F5F, 0x6F7F6F5F4F3F3F40,  // 0x00017318 
	0x7F6F6F5F4F4F3F3F, 0x3F4F4F5F4F5F5F5F, 0x5F6F5F4F4F4F3F3F, 0x3F3F2F3F4F4F5F8F,  // 0x00017338 
	0x8FBFBF9F7F7F4F3F, 0x3F4F6F6F8F8F9F8F, 0x6F6F3F3F3F4F6F8F, 0x8FAFBF9F7F5F3F3F,  // 0x00017358 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4030303F3F4F5F6F,  // 0x00017378 
	0x8F9FAFAF7F6F4F3F, 0x4F5F5F8F7F8FAFAF, 0x9F7F5F3F4F4F6F8F, 0x8FAF9FAF9F7F5F3F,  // 0x00017398 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040303F4F5F6F,  // 0x000173B8 
	0x7F8F7FAF8F5F3F3F, 0x3F5F7F7F9F9FAFAF, 0x9F8F4F3F4F5F5F7F, 0x9F9F9FAF9F7F5F3F,  // 0x000173D8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x40404040304F6F5F,  // 0x000173F8 
	0x6F6F7F9F8F4F3F3F, 0x3F4F6F7F8F9F9FAF, 0x8F6F4F2F2F4F4F7F, 0x7FAF9F8F8F6F4F3F,  // 0x00017418 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404030305F,  // 0x00017438 
	0x5F6F7F8F3F3F2F2F, 0x2F3F4F6F8F8F9F9F, 0x5F4F2F2F2F3F4F5F, 0x7F8F7F8F8F6F4F3F,  // 0x00017458 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040303F,  // 0x00017478 
	0x4F4F5F3F2F2F2F3F, 0x2F2F3F4F7F8F7F6F, 0x6F3F2F2F2F3F3F5F, 0x7F6F7F8F6F5F3F30,  // 0x00017498 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x000174B8 
	0x3F2F1F2F2F3F3F3F, 0x3F3F3F3F6F5F7F3F, 0x2F2F2F2F2F2F2F3F, 0x4F6F6F6F4F3F3040,  // 0x000174D8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x000174F8 
	0x2F2F2F3F3F3F4F4F, 0x3F3F3F3F5F3F2F2F, 0x3F3F2F2F2F2F2F2F, 0x4F4F4F4F3F404040,  // 0x00017518 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x00017538 
	0x2F3F3F3F3F4F4F4F, 0x4F4F4F3F3F3F4F4F, 0x4F4F3F3F3F3F2F2F, 0x2F4F3F3F40404040,  // 0x00017558 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00017578 
	0x3F3F3F3F4F4F4F5F, 0x4F4F4F4F4F5F6F5F, 0x5F4F4F4F3F3F3F2F, 0x3F3F304040404040,  // 0x00017598 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x000175B8 
	0x3F3F3F3F4F5F5F5F, 0x5F5F6F6F6F5F6F6F, 0x5F5F5F4F3F3F3F3F, 0x3F30404040404040,  // 0x000175D8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x000175F8 
	0x3F3F3F4F4F5F5F6F, 0x6F6F6F6F6F6F6F6F, 0x6F6F5F4F4F3F3F2F, 0x4040404040404040,  // 0x00017618 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00017638 
	0x3F4F4F4F5F5F6F6F, 0x7F7F6F6F7F6F7F7F, 0x6F6F5F4F4F3F2F2F, 0x4040404040404040,  // 0x00017658 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00017678 
	0x3F3F3F4F5F5F6F7F, 0x7F7F8F7F6F7F8F7F, 0x7F6F6F5F4F3F3F3F, 0x4040404040404040,  // 0x00017698 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x000176B8 
	0x4F4F4F4F5F6F7F7F, 0x7F8F7F7F6F7F7F7F, 0x7F6F5F5F5F4F3F3F, 0x4040404040404040,  // 0x000176D8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x000176F8 
	0x3F4F4F4F4F5F6F7F, 0x8F7F7F7F7F7F7F6F, 0x7F6F5F5F5F5F3F2F, 0x4040404040404040,  // 0x00017718 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x00017738 
	0x4F4F4F4F5F5F6F7F, 0x6F7F8F7F6F7F7F7F, 0x7F7F5F5F5F3F4F3F, 0x4040404040404040,  // 0x00017758 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x00017778 
	0x3F3F4F4F5F5F5F6F, 0x7F6F6F7F7F7F7F7F, 0x7F6F6F4F4F4F3F3F, 0x4040404040404040,  // 0x00017798 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x000177B8 
	0x3F3F4F4F5F6F7F8F, 0x7F7F7F7F7F7F7F6F, 0x6F6F5F5F5F4F4F3F, 0x4040404040404040,  // 0x000177D8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x000177F8 
	0x3F4F4F4F5F6F6F7F, 0x7F7F7F7F7F7F8F8F, 0x6F6F5F5F4F4F3F3F, 0x4040404040404040,  // 0x00017818 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00017838 
	0x4F3F4F4F5F5F6F7F, 0x7F6F7F7F7F7F7F7F, 0x7F6F6F5F4F4F3F3F, 0x4040404040404040,  // 0x00017858 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00017878 
	0x3F4F4F4F4F5F5F7F, 0x7F7F7F7F7F7F7F7F, 0x7F6F6F5F5F4F3F3F, 0x4040404040404040,  // 0x00017898 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x000178B8 
	0x3F3F4F4F5F5F7F7F, 0x7F6F8F7F7F7F7F7F, 0x7F7F6F4F4F4F3F2F, 0x4040404040404040,  // 0x000178D8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x000178F8 
	0x4F4F4F4F5F5F6F7F, 0x7F6F7F7F7F7F7F7F, 0x7F5F4F4F4F3F4F3F, 0x4040404040404040,  // 0x00017918 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00017938 
	0x4F4F4F4F5F6F6F6F, 0x7F6F7F7F7F7F7F8F, 0x6F5F5F5F4F4F3F3F, 0x4040404040404040,  // 0x00017958 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00017978 
	0x4F4F4F4F5F6F6F7F, 0x8F7F7F8F8F8F6F6F, 0x7F6F5F5F4F4F3F3F, 0x4040404040404040,  // 0x00017998 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x000179B8 
	0x3F4F4F5F6F6F5F7F, 0x5F4F4F4F4F4F4F6F, 0x7F7F6F6F5F5F3F3F, 0x4040404040404040,  // 0x000179D8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x000179F8 
	0x3F3F3F4F5F5F5F5F, 0x6F8F8F8F8F9F8F6F, 0x5F4F4F6F5F4F3F3F, 0x4040404040404040,  // 0x00017A18 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x40404040406F7F7F,  // 0x00017A38 
	0x8F6F6F5F4F4F8F8F, 0x7F7F7F6F6F7F8F8F, 0x7F7F4F3F4F6F9F7F, 0x6F5F404040404040,  // 0x00017A58 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x40404040404F6F6F,  // 0x00017A78 
	0x8F9F9F7F4F4F4F4F, 0x3F5F4F5F6F5F5F4F, 0x4F3F3F7F9F9F9F9F, 0x7F5F404040404040,  // 0x00017A98 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040405F4F5F6F5F,  // 0x00017AB8 
	0x4F5F5F5F5F4F3F3F, 0x4F7F9F9F9F8F6F3F, 0x3F4F6F5F5F5F5F6F, 0x6F6F5F5040404040,  // 0x00017AD8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040406F8F8F9F8F,  // 0x00017AF8 
	0x9F9F9F9F8F6F5F4F, 0x4F6F8F8F9F7F6F4F, 0x5F5F8FAFAF9F9FAF, 0xAF8F9F6F40404040,  // 0x00017B18 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040407F7F7F7F7F,  // 0x00017B38 
	0x7F7F7F7F7F7F8F5F, 0x5F5F5F5F7F5F5F6F, 0x8F8F7F8F7F7F7F8F, 0x7F7F7F6F40404040,  // 0x00017B58 
};

static u8 unaccounted17B78[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


