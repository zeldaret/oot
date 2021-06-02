#include <ultra64.h>
#include <z64.h>
#include "jyasinzou_room_2.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "jyasinzou_scene.h"



SCmdEchoSettings _jyasinzou_room_2_set0000_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0000
SCmdRoomBehavior _jyasinzou_room_2_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _jyasinzou_room_2_set0000_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0010
SCmdTimeSettings _jyasinzou_room_2_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _jyasinzou_room_2_set0000_cmd04 = { 0x0A, 0, (u32)&_jyasinzou_room_2_meshHeader_00000130 }; // 0x0020
SCmdObjectList _jyasinzou_room_2_set0000_cmd05 = { 0x0B, 0x06, (u32)_jyasinzou_room_2_objectList_00000040 }; // 0x0028
SCmdActorList _jyasinzou_room_2_set0000_cmd06 = { 0x01, 0x0E, (u32)_jyasinzou_room_2_actorList_0000004C }; // 0x0030
SCmdEndMarker _jyasinzou_room_2_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _jyasinzou_room_2_objectList_00000040[] = 
{
	OBJECT_JYA_OBJ,
	OBJECT_JYA_DOOR,
	OBJECT_BOMBIWA,
	OBJECT_RD,
	OBJECT_HAKA,
	OBJECT_DEMO_KEKKAI,
};

ActorEntry _jyasinzou_room_2_actorList_0000004C[14] = 
{
	{ ACTOR_EN_RD, -502, 30, -734, 0, 0, 0, 0x7FFE }, //0x0000004C 
	{ ACTOR_EN_RD, -420, 30, -1333, 0, -16384, 0, 0x7FFE }, //0x0000005C 
	{ ACTOR_EN_RD, -417, 30, -1141, 0, -16384, 0, 0x7FFE }, //0x0000006C 
	{ ACTOR_BG_HAKA, -586, 30, -665, 0, 0, 0, 0x0000 }, //0x0000007C 
	{ ACTOR_BG_HAKA, -411, 30, -665, 0, 0, 0, 0x0000 }, //0x0000008C 
	{ ACTOR_BG_JYA_KANAAMI, -591, 32, -1053, 0, -32768, 0, 0x0021 }, //0x0000009C 
	{ ACTOR_OBJ_SWITCH, -412, 30, -666, 0, 0, 0, 0x2100 }, //0x000000AC 
	{ ACTOR_OBJ_BOMBIWA, -593, 30, -1340, 0, 0, 0, 0x0028 }, //0x000000BC 
	{ ACTOR_BG_GND_DARKMEIRO, -587, 80, -944, 0, 0, 0, 0x3601 }, //0x000000CC 
	{ ACTOR_OBJ_SWITCH, -594, 70, -1389, 0, 8192, 0, 0x3602 }, //0x000000DC 
	{ ACTOR_OBJ_BOMBIWA, -786, 119, -930, 0, 0, 0, 0x003C }, //0x000000EC 
	{ ACTOR_OBJ_BOMBIWA, -421, -86, -1036, 0, 0, 0, 0x003D }, //0x000000FC 
	{ ACTOR_OBJ_TSUBO, -382, 30, -1256, 0, 0, 0, 0x6803 }, //0x0000010C 
	{ ACTOR_OBJ_TSUBO, -381, 30, -1207, 0, 0, 0, 0x660E }, //0x0000011C 
};

static u32 pad12C = 0;

MeshHeader2 _jyasinzou_room_2_meshHeader_00000130 = { { 2 }, 0x05, (u32)&_jyasinzou_room_2_meshDListEntry_0000013C, (u32)&(_jyasinzou_room_2_meshDListEntry_0000013C) + sizeof(_jyasinzou_room_2_meshDListEntry_0000013C) };

MeshEntry2 _jyasinzou_room_2_meshDListEntry_0000013C[5] = 
{
	{ -551, 150, -1243, 328, (u32)_jyasinzou_room_2_dlist_000006F0, 0 },
	{ -551, 30, -639, 296, (u32)_jyasinzou_room_2_dlist_00000C58, 0 },
	{ -551, -30, -759, 483, (u32)_jyasinzou_room_2_dlist_00001398, 0 },
	{ -551, 150, -1053, 286, (u32)_jyasinzou_room_2_dlist_00001D88, 0 },
	{ -745, 110, -1388, 145, (u32)_jyasinzou_room_2_dlist_00002170, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

static u8 unaccounted0190[] = 
{
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x30, 0x01, 0x03, 0x00, 0x00, 0x03, 0x00, 0x01, 0xC8, 
	0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x2D, 0xFD, 0x33, 0x08, 0x78, 0xFA, 0xF6, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xC2, 0x00, 0x08, 0xFD, 0x5C, 0x03, 0x69, 0xFD, 0x9E, 
	0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x03, 0xF0, 0x00, 0xFD, 0xFD, 0xB1, 0x00, 0x1E, 0xFB, 0xE3, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x30, 0x01, 0x03, 0x00, 0x00, 0x03, 0x00, 0x02, 0x38, 
	0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x2D, 0xFD, 0x33, 0x08, 0x78, 0xFA, 0xF6, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xC2, 0x00, 0x08, 0xFD, 0x5C, 0x03, 0x69, 0xFD, 0x9E, 
	0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x03, 0xF0, 0x00, 0xFD, 0xFD, 0xB1, 0x00, 0x1E, 0xFB, 0xE3, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

Vtx_t _jyasinzou_room_2_vertices_00000270[14] = 
{
	 { -311, 30, -1333, 0, 1312, -5501, 115, 102, 78, 255 }, // 0x00000270
	 { -311, 30, -1433, 0, 505, -5574, 69, 62, 48, 255 }, // 0x00000280
	 { -461, 30, -1333, 0, 1202, -4292, 158, 142, 111, 255 }, // 0x00000290
	 { -551, 30, -1193, 0, 2264, -3464, 158, 142, 111, 255 }, // 0x000002A0
	 { -551, 30, -1433, 0, 329, -3640, 52, 49, 38, 255 }, // 0x000002B0
	 { -628, 30, -1356, 0, 898, -2957, 69, 62, 48, 255 }, // 0x000002C0
	 { -671, 30, -1313, 0, 1209, -2584, 69, 62, 48, 255 }, // 0x000002D0
	 { -713, 30, -1271, 0, 1520, -2211, 69, 62, 48, 255 }, // 0x000002E0
	 { -791, 30, -1193, 0, 2088, -1529, 52, 49, 38, 255 }, // 0x000002F0
	 { -791, 30, -1053, 0, 3217, -1426, 81, 72, 55, 255 }, // 0x00000300
	 { -551, 30, -1053, 0, 3393, -3361, 158, 142, 111, 255 }, // 0x00000310
	 { -461, 30, -1153, 0, 2653, -4160, 158, 142, 111, 255 }, // 0x00000320
	 { -311, 30, -1053, 0, 3569, -5296, 81, 72, 55, 255 }, // 0x00000330
	 { -311, 30, -1153, 0, 2763, -5369, 115, 102, 78, 255 }, // 0x00000340
};

Vtx_t _jyasinzou_room_2_vertices_00000350[4] = 
{
	 { -551, 270, -1433, 0, 0, 0, 69, 62, 48, 255 }, // 0x00000350
	 { -551, 30, -1433, 0, 0, 2048, 52, 49, 38, 255 }, // 0x00000360
	 { -431, 150, -1433, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00000370
	 { -311, 30, -1433, 0, 2048, 2048, 69, 62, 48, 255 }, // 0x00000380
};

Vtx_t _jyasinzou_room_2_vertices_00000390[4] = 
{
	 { -791, 30, -1053, 0, 0, 2048, 115, 102, 78, 255 }, // 0x00000390
	 { -791, 30, -1193, 0, 1792, 2048, 52, 49, 38, 255 }, // 0x000003A0
	 { -791, 270, -1193, 0, 1792, -1024, 69, 62, 48, 255 }, // 0x000003B0
	 { -791, 270, -1053, 0, 0, -1024, 81, 72, 55, 255 }, // 0x000003C0
};

Vtx_t _jyasinzou_room_2_vertices_000003D0[5] = 
{
	 { -713, 30, -1271, 0, 1280, -1024, 115, 102, 78, 255 }, // 0x000003D0
	 { -713, 190, -1271, 0, 1280, 1024, 115, 102, 78, 255 }, // 0x000003E0
	 { -791, 30, -1193, 0, 2048, -1024, 52, 49, 38, 255 }, // 0x000003F0
	 { -791, 270, -1193, 0, 2048, 2048, 69, 62, 48, 255 }, // 0x00000400
	 { -671, 270, -1313, 0, 512, 2048, 100, 89, 67, 255 }, // 0x00000410
};

Vtx_t _jyasinzou_room_2_vertices_00000420[6] = 
{
	 { -671, 270, -1313, 0, 1536, -1024, 100, 89, 67, 255 }, // 0x00000420
	 { -713, 190, -1271, 0, 768, 0, 115, 102, 78, 255 }, // 0x00000430
	 { -628, 190, -1356, 0, 2304, 0, 115, 102, 78, 255 }, // 0x00000440
	 { -551, 270, -1433, 0, 3072, -1024, 69, 62, 48, 255 }, // 0x00000450
	 { -551, 30, -1433, 0, 3072, 2048, 52, 49, 38, 255 }, // 0x00000460
	 { -628, 30, -1356, 0, 2304, 2048, 115, 102, 78, 255 }, // 0x00000470
};

Vtx_t _jyasinzou_room_2_vertices_00000480[19] = 
{
	 { -551, 270, -1182, 0, 3072, 4727, 81, 72, 55, 255 }, // 0x00000480
	 { -311, 270, -1053, 0, 6144, 3072, 81, 72, 55, 255 }, // 0x00000490
	 { -791, 270, -1053, 0, 0, 3072, 81, 72, 55, 255 }, // 0x000004A0
	 { -551, 270, -1433, 0, 3072, 7936, 69, 62, 48, 255 }, // 0x000004B0
	 { -791, 270, -1193, 0, 0, 4864, 69, 62, 48, 255 }, // 0x000004C0
	 { -311, 270, -1433, 0, 6144, 7936, 69, 62, 48, 255 }, // 0x000004D0
	 { -311, 270, -1193, 0, 6144, 4864, 69, 62, 48, 255 }, // 0x000004E0
	 { -311, 270, -1433, 0, 2048, 0, 69, 62, 48, 255 }, // 0x000004F0
	 { -551, 270, -1433, 0, 0, 0, 69, 62, 48, 255 }, // 0x00000500
	 { -431, 150, -1433, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00000510
	 { -311, 30, -1433, 0, 2048, 2048, 69, 62, 48, 255 }, // 0x00000520
	 { -311, 30, -1193, 0, -2816, 1024, 69, 62, 48, 255 }, // 0x00000530
	 { -311, 30, -1053, 0, -1024, 1024, 115, 102, 78, 255 }, // 0x00000540
	 { -311, 270, -1053, 0, -1024, -2048, 81, 72, 55, 255 }, // 0x00000550
	 { -311, 270, -1193, 0, -2816, -2048, 69, 62, 48, 255 }, // 0x00000560
	 { -311, 270, -1433, 0, 0, -1024, 69, 62, 48, 255 }, // 0x00000570
	 { -311, 30, -1433, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00000580
	 { -311, 30, -1193, 0, 3072, 2048, 69, 62, 48, 255 }, // 0x00000590
	 { -311, 270, -1193, 0, 3072, -1024, 69, 62, 48, 255 }, // 0x000005A0
};

Vtx_t _jyasinzou_room_2_vertices_000005B0[9] = 
{
	 { -461, 30, -1153, 0, 0, 3072, 158, 142, 111, 255 }, // 0x000005B0
	 { -371, 30, -1243, 0, 2048, 1024, 177, 164, 138, 255 }, // 0x000005C0
	 { -461, 30, -1333, 0, 0, -1024, 158, 142, 111, 255 }, // 0x000005D0
	 { -311, 30, -1153, 0, 0, 0, 115, 102, 78, 255 }, // 0x000005E0
	 { -371, 30, -1243, 0, 2048, 1365, 177, 164, 138, 255 }, // 0x000005F0
	 { -461, 30, -1153, 0, 0, 3413, 158, 142, 111, 255 }, // 0x00000600
	 { -311, 30, -1333, 0, 0, 0, 115, 102, 78, 255 }, // 0x00000610
	 { -311, 30, -1243, 0, 2048, 0, 115, 102, 78, 255 }, // 0x00000620
	 { -461, 30, -1333, 0, 0, 3413, 158, 142, 111, 255 }, // 0x00000630
};

Vtx_t _jyasinzou_room_2_vertices_00000640[3] = 
{
	 { -551, 30, -1193, 0, 2264, -3464, 158, 142, 111, 255 }, // 0x00000640
	 { -461, 30, -1153, 0, 2653, -4160, 158, 142, 111, 255 }, // 0x00000650
	 { -461, 30, -1333, 0, 1202, -4292, 158, 142, 111, 255 }, // 0x00000660
};

Vtx_t _jyasinzou_room_2_vertices_00000670[8] = 
{
	 { -791, 30, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000670
	 { -311, 30, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000680
	 { -791, 270, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000690
	 { -311, 270, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006A0
	 { -791, 30, -1053, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006B0
	 { -311, 30, -1053, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006C0
	 { -791, 270, -1053, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006D0
	 { -311, 270, -1053, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006E0
};

Gfx _jyasinzou_room_2_dlist_000006F0[] =
{
	gsDPPipeSync(), // 0x000006F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000006F8
	gsSPVertex(_jyasinzou_room_2_vertices_00000670, 8, 0), // 0x00000700
	gsSPCullDisplayList(0, 7), // 0x00000708
	gsDPPipeSync(), // 0x00000710
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000718
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000720
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000728
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000047B0), // 0x00000730
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000738
	gsDPLoadSync(), // 0x00000740
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000748
	gsDPPipeSync(), // 0x00000750
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000758
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000760
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00000768
	gsDPTileSync(), // 0x00000770
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000778
	gsDPLoadSync(), // 0x00000780
	gsDPLoadTLUTCmd(7, 255), // 0x00000788
	gsDPPipeSync(), // 0x00000790
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000798
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000007A0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000007A8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000007B0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000007B8
	gsSPVertex(_jyasinzou_room_2_vertices_00000270, 14, 0), // 0x000007C0
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0), // 0x000007C8
	gsSP2Triangles(2, 1, 4, 0, 3, 4, 5, 0), // 0x000007D0
	gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0), // 0x000007D8
	gsSP2Triangles(3, 7, 8, 0, 9, 3, 8, 0), // 0x000007E0
	gsSP2Triangles(9, 10, 3, 0, 10, 11, 3, 0), // 0x000007E8
	gsSP2Triangles(10, 12, 11, 0, 12, 13, 11, 0), // 0x000007F0
	gsDPPipeSync(), // 0x000007F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000053B0), // 0x00000800
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000808
	gsDPLoadSync(), // 0x00000810
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000818
	gsDPPipeSync(), // 0x00000820
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000828
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000830
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000838
	gsDPTileSync(), // 0x00000840
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000848
	gsDPLoadSync(), // 0x00000850
	gsDPLoadTLUTCmd(7, 15), // 0x00000858
	gsDPPipeSync(), // 0x00000860
	gsSPVertex(_jyasinzou_room_2_vertices_00000350, 4, 0), // 0x00000868
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0), // 0x00000870
	gsDPPipeSync(), // 0x00000878
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000880
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000888
	gsDPLoadSync(), // 0x00000890
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000898
	gsDPPipeSync(), // 0x000008A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000008A8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000008B0
	gsSPVertex(_jyasinzou_room_2_vertices_00000390, 4, 0), // 0x000008B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000008C0
	gsDPPipeSync(), // 0x000008C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000053B0), // 0x000008D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000008D8
	gsDPLoadSync(), // 0x000008E0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000008E8
	gsDPPipeSync(), // 0x000008F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000008F8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000900
	gsSPVertex(_jyasinzou_room_2_vertices_000003D0, 5, 0), // 0x00000908
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000910
	gsSP1Triangle(4, 3, 1, 0), // 0x00000918
	gsDPPipeSync(), // 0x00000920
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000928
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000930
	gsDPLoadSync(), // 0x00000938
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000940
	gsDPPipeSync(), // 0x00000948
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000950
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000958
	gsSPVertex(_jyasinzou_room_2_vertices_00000420, 6, 0), // 0x00000960
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00000968
	gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0), // 0x00000970
	gsDPPipeSync(), // 0x00000978
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000053B0), // 0x00000980
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000988
	gsDPLoadSync(), // 0x00000990
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000998
	gsDPPipeSync(), // 0x000009A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000009A8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000009B0
	gsSPVertex(_jyasinzou_room_2_vertices_00000480, 19, 0), // 0x000009B8
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0), // 0x000009C0
	gsSP2Triangles(0, 2, 4, 0, 5, 6, 0, 0), // 0x000009C8
	gsSP2Triangles(6, 1, 0, 0, 3, 5, 0, 0), // 0x000009D0
	gsSP2Triangles(7, 8, 9, 0, 10, 7, 9, 0), // 0x000009D8
	gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0), // 0x000009E0
	gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0), // 0x000009E8
	gsDPPipeSync(), // 0x000009F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000033B0), // 0x000009F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000A00
	gsDPLoadSync(), // 0x00000A08
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000A10
	gsDPPipeSync(), // 0x00000A18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000A20
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000A28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00000A30
	gsDPTileSync(), // 0x00000A38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000A40
	gsDPLoadSync(), // 0x00000A48
	gsDPLoadTLUTCmd(7, 255), // 0x00000A50
	gsDPPipeSync(), // 0x00000A58
	gsSPVertex(_jyasinzou_room_2_vertices_000005B0, 9, 0), // 0x00000A60
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000A68
	gsSP2Triangles(6, 4, 7, 0, 4, 3, 7, 0), // 0x00000A70
	gsSP1Triangle(8, 4, 6, 0), // 0x00000A78
	gsDPPipeSync(), // 0x00000A80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000047B0), // 0x00000A88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000A90
	gsDPLoadSync(), // 0x00000A98
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000AA0
	gsDPPipeSync(), // 0x00000AA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000AB0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000AB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00000AC0
	gsDPTileSync(), // 0x00000AC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000AD0
	gsDPLoadSync(), // 0x00000AD8
	gsDPLoadTLUTCmd(7, 255), // 0x00000AE0
	gsDPPipeSync(), // 0x00000AE8
	gsSPVertex(_jyasinzou_room_2_vertices_00000640, 3, 0), // 0x00000AF0
	gsSP1Triangle(0, 1, 2, 0), // 0x00000AF8
	gsSPEndDisplayList(), // 0x00000B00
};

Vtx_t _jyasinzou_room_2_vertices_00000B08[13] = 
{
	 { -551, 30, -684, 0, 283, -174, 158, 142, 111, 255 }, // 0x00000B08
	 { -311, 30, -673, 0, 1667, -1541, 69, 62, 48, 255 }, // 0x00000B18
	 { -311, 30, -813, 0, 835, -2311, 81, 72, 55, 255 }, // 0x00000B28
	 { -551, 30, -813, 0, -485, -885, 158, 142, 111, 255 }, // 0x00000B38
	 { -791, 30, -813, 0, -1805, 540, 81, 72, 55, 255 }, // 0x00000B48
	 { -791, 30, -673, 0, -973, 1310, 100, 89, 67, 255 }, // 0x00000B58
	 { -761, 30, -621, 0, -499, 1418, 69, 62, 48, 255 }, // 0x00000B68
	 { -748, 30, -559, 0, -62, 1684, 69, 62, 48, 255 }, // 0x00000B78
	 { -718, 30, -507, 0, 412, 1791, 69, 62, 48, 255 }, // 0x00000B88
	 { -701, 30, -517, 0, 448, 1633, 69, 62, 48, 255 }, // 0x00000B98
	 { -778, 30, -611, 0, -535, 1576, 69, 62, 48, 255 }, // 0x00000BA8
	 { -671, 30, -465, 0, 922, 1741, 69, 62, 48, 255 }, // 0x00000BB8
	 { -431, 30, -465, 0, 2242, 315, 69, 62, 48, 255 }, // 0x00000BC8
};

Vtx_t _jyasinzou_room_2_vertices_00000BD8[8] = 
{
	 { -791, 30, -813, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000BD8
	 { -311, 30, -813, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000BE8
	 { -791, 30, -813, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000BF8
	 { -311, 30, -813, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000C08
	 { -791, 30, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000C18
	 { -311, 30, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000C28
	 { -791, 30, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000C38
	 { -311, 30, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000C48
};

Gfx _jyasinzou_room_2_dlist_00000C58[] =
{
	gsDPPipeSync(), // 0x00000C58
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000C60
	gsSPVertex(_jyasinzou_room_2_vertices_00000BD8, 8, 0), // 0x00000C68
	gsSPCullDisplayList(0, 7), // 0x00000C70
	gsDPPipeSync(), // 0x00000C78
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000C80
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000C88
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000C90
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000047B0), // 0x00000C98
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000CA0
	gsDPLoadSync(), // 0x00000CA8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000CB0
	gsDPPipeSync(), // 0x00000CB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000CC0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000CC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00000CD0
	gsDPTileSync(), // 0x00000CD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000CE0
	gsDPLoadSync(), // 0x00000CE8
	gsDPLoadTLUTCmd(7, 255), // 0x00000CF0
	gsDPPipeSync(), // 0x00000CF8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000D00
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000D08
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000D10
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000D18
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000D20
	gsSPVertex(_jyasinzou_room_2_vertices_00000B08, 13, 0), // 0x00000D28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000D30
	gsSP2Triangles(0, 3, 4, 0, 5, 0, 4, 0), // 0x00000D38
	gsSP2Triangles(5, 6, 0, 0, 7, 8, 9, 0), // 0x00000D40
	gsSP2Triangles(6, 10, 7, 0, 6, 7, 0, 0), // 0x00000D48
	gsSP2Triangles(7, 9, 0, 0, 9, 11, 0, 0), // 0x00000D50
	gsSP2Triangles(11, 12, 0, 0, 0, 12, 1, 0), // 0x00000D58
	gsSPEndDisplayList(), // 0x00000D60
};

Vtx_t _jyasinzou_room_2_vertices_00000D68[19] = 
{
	 { -311, 270, -673, 0, 3072, -1024, 69, 62, 48, 255 }, // 0x00000D68
	 { -311, 30, -673, 0, 3072, 2048, 69, 62, 48, 255 }, // 0x00000D78
	 { -431, 30, -465, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00000D88
	 { -431, 270, -465, 0, 0, -1024, 69, 62, 48, 255 }, // 0x00000D98
	 { -311, 270, -673, 0, -2816, -2048, 69, 62, 48, 255 }, // 0x00000DA8
	 { -311, 270, -813, 0, -1024, -2048, 81, 72, 55, 255 }, // 0x00000DB8
	 { -311, 30, -813, 0, -1024, 1024, 115, 102, 78, 255 }, // 0x00000DC8
	 { -311, 30, -673, 0, -2816, 1024, 69, 62, 48, 255 }, // 0x00000DD8
	 { -551, 150, -465, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00000DE8
	 { -431, 270, -465, 0, 2048, 0, 69, 62, 48, 255 }, // 0x00000DF8
	 { -431, 30, -465, 0, 2048, 2048, 69, 62, 48, 255 }, // 0x00000E08
	 { -671, 270, -465, 0, 0, 0, 69, 62, 48, 255 }, // 0x00000E18
	 { -551, 270, -684, 0, 3072, -1655, 81, 72, 55, 255 }, // 0x00000E28
	 { -431, 270, -465, 0, 4608, -4452, 69, 62, 48, 255 }, // 0x00000E38
	 { -671, 270, -465, 0, 1536, -4452, 69, 62, 48, 255 }, // 0x00000E48
	 { -311, 270, -813, 0, 6144, 0, 81, 72, 55, 255 }, // 0x00000E58
	 { -311, 270, -673, 0, 6144, -1792, 69, 62, 48, 255 }, // 0x00000E68
	 { -791, 270, -673, 0, 0, -1792, 69, 62, 48, 255 }, // 0x00000E78
	 { -791, 270, -813, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000E88
};

Vtx_t _jyasinzou_room_2_vertices_00000E98[5] = 
{
	 { -791, -330, -1053, 0, 0, 2048, 0, 0, 0, 255 }, // 0x00000E98
	 { -551, -330, -933, 0, 1024, 0, 0, 0, 0, 255 }, // 0x00000EA8
	 { -311, -330, -1053, 0, 0, -2048, 0, 0, 0, 255 }, // 0x00000EB8
	 { -791, -330, -813, 0, 2048, 2048, 0, 0, 0, 255 }, // 0x00000EC8
	 { -311, -330, -813, 0, 2048, -2048, 0, 0, 0, 255 }, // 0x00000ED8
};

Vtx_t _jyasinzou_room_2_vertices_00000EE8[12] = 
{
	 { -311, 30, -813, 0, -1024, 1024, 115, 102, 78, 255 }, // 0x00000EE8
	 { -311, 30, -1053, 0, 2048, 1024, 115, 102, 78, 255 }, // 0x00000EF8
	 { -311, -330, -1053, 0, 2048, 4096, 0, 0, 0, 255 }, // 0x00000F08
	 { -311, -330, -813, 0, -1024, 4096, 0, 0, 0, 255 }, // 0x00000F18
	 { -791, -330, -813, 0, 3072, 3072, 0, 0, 0, 255 }, // 0x00000F28
	 { -791, -330, -1053, 0, 0, 3072, 0, 0, 0, 255 }, // 0x00000F38
	 { -791, 30, -1053, 0, 0, 0, 115, 102, 78, 255 }, // 0x00000F48
	 { -791, 30, -813, 0, 3072, 0, 115, 102, 78, 255 }, // 0x00000F58
	 { -791, -90, -1053, 0, 2560, 512, 81, 72, 55, 255 }, // 0x00000F68
	 { -791, -330, -1053, 0, 2560, 2048, 0, 0, 0, 255 }, // 0x00000F78
	 { -311, -330, -1053, 0, 5120, 2048, 0, 0, 0, 255 }, // 0x00000F88
	 { -311, -90, -1053, 0, 5120, 512, 81, 72, 55, 255 }, // 0x00000F98
};

Vtx_t _jyasinzou_room_2_vertices_00000FA8[4] = 
{
	 { -791, -90, -1053, 0, 4096, 683, 81, 72, 55, 255 }, // 0x00000FA8
	 { -311, -90, -1053, 0, 0, 683, 81, 72, 55, 255 }, // 0x00000FB8
	 { -311, 30, -1053, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000FC8
	 { -791, 30, -1053, 0, 4096, 0, 81, 72, 55, 255 }, // 0x00000FD8
};

Vtx_t _jyasinzou_room_2_vertices_00000FE8[12] = 
{
	 { -791, 270, -1053, 0, 0, 3072, 81, 72, 55, 255 }, // 0x00000FE8
	 { -311, 270, -1053, 0, 6144, 3072, 52, 49, 38, 255 }, // 0x00000FF8
	 { -311, 270, -813, 0, 6144, 0, 81, 72, 55, 255 }, // 0x00001008
	 { -791, 270, -813, 0, 0, 0, 81, 72, 55, 255 }, // 0x00001018
	 { -791, 30, -1053, 0, 0, 0, 115, 102, 78, 255 }, // 0x00001028
	 { -791, 270, -1053, 0, 0, -3072, 81, 72, 55, 255 }, // 0x00001038
	 { -791, 270, -813, 0, 3072, -3072, 81, 72, 55, 255 }, // 0x00001048
	 { -791, 30, -813, 0, 3072, 0, 115, 102, 78, 255 }, // 0x00001058
	 { -311, 30, -813, 0, -1024, 1024, 115, 102, 78, 255 }, // 0x00001068
	 { -311, 270, -813, 0, -1024, -2048, 81, 72, 55, 255 }, // 0x00001078
	 { -311, 270, -1053, 0, 2048, -2048, 52, 49, 38, 255 }, // 0x00001088
	 { -311, 30, -1053, 0, 2048, 1024, 115, 102, 78, 255 }, // 0x00001098
};

Vtx_t _jyasinzou_room_2_vertices_000010A8[4] = 
{
	 { -718, 190, -507, 0, 256, 0, 52, 49, 38, 255 }, // 0x000010A8
	 { -701, 190, -517, 0, 0, 0, 52, 49, 38, 255 }, // 0x000010B8
	 { -701, 30, -517, 0, 0, 2048, 81, 72, 55, 255 }, // 0x000010C8
	 { -718, 30, -507, 0, 256, 2048, 69, 62, 48, 255 }, // 0x000010D8
};

Vtx_t _jyasinzou_room_2_vertices_000010E8[4] = 
{
	 { -778, 190, -611, 0, 1024, 1792, 69, 62, 48, 255 }, // 0x000010E8
	 { -761, 190, -621, 0, 1024, 1536, 69, 62, 48, 255 }, // 0x000010F8
	 { -701, 190, -517, 0, 256, 1536, 69, 62, 48, 255 }, // 0x00001108
	 { -718, 190, -507, 0, 256, 1792, 69, 62, 48, 255 }, // 0x00001118
};

Vtx_t _jyasinzou_room_2_vertices_00001128[10] = 
{
	 { -778, 30, -611, 0, 256, 2048, 69, 62, 48, 255 }, // 0x00001128
	 { -761, 30, -621, 0, 0, 2048, 81, 72, 55, 255 }, // 0x00001138
	 { -761, 190, -621, 0, 0, 0, 52, 49, 38, 255 }, // 0x00001148
	 { -778, 190, -611, 0, 256, 0, 52, 49, 38, 255 }, // 0x00001158
	 { -701, 190, -517, 0, 2304, 0, 115, 102, 78, 255 }, // 0x00001168
	 { -671, 30, -465, 0, 3072, 2048, 69, 62, 48, 255 }, // 0x00001178
	 { -701, 30, -517, 0, 2304, 2048, 115, 102, 78, 255 }, // 0x00001188
	 { -671, 270, -465, 0, 3072, -1024, 69, 62, 48, 255 }, // 0x00001198
	 { -731, 270, -569, 0, 1536, -1024, 100, 89, 67, 255 }, // 0x000011A8
	 { -761, 190, -621, 0, 768, 0, 115, 102, 78, 255 }, // 0x000011B8
};

Vtx_t _jyasinzou_room_2_vertices_000011C8[5] = 
{
	 { -761, 190, -621, 0, 1280, 1024, 115, 102, 78, 255 }, // 0x000011C8
	 { -791, 270, -673, 0, 2048, 2048, 69, 62, 48, 255 }, // 0x000011D8
	 { -731, 270, -569, 0, 512, 2048, 100, 89, 67, 255 }, // 0x000011E8
	 { -791, 30, -673, 0, 2048, -1024, 100, 89, 67, 255 }, // 0x000011F8
	 { -761, 30, -621, 0, 1280, -1024, 115, 102, 78, 255 }, // 0x00001208
};

Vtx_t _jyasinzou_room_2_vertices_00001218[4] = 
{
	 { -791, 270, -813, 0, 0, -1024, 81, 72, 55, 255 }, // 0x00001218
	 { -791, 270, -673, 0, 1792, -1024, 69, 62, 48, 255 }, // 0x00001228
	 { -791, 30, -673, 0, 1792, 2048, 100, 89, 67, 255 }, // 0x00001238
	 { -791, 30, -813, 0, 0, 2048, 115, 102, 78, 255 }, // 0x00001248
};

Vtx_t _jyasinzou_room_2_vertices_00001258[4] = 
{
	 { -671, 30, -465, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00001258
	 { -551, 150, -465, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00001268
	 { -431, 30, -465, 0, 2048, 2048, 69, 62, 48, 255 }, // 0x00001278
	 { -671, 270, -465, 0, 0, 0, 69, 62, 48, 255 }, // 0x00001288
};

Vtx_t _jyasinzou_room_2_vertices_00001298[4] = 
{
	 { -791, 30, -813, 0, 4096, 0, 81, 72, 55, 255 }, // 0x00001298
	 { -311, 30, -813, 0, 0, 0, 81, 72, 55, 255 }, // 0x000012A8
	 { -311, -90, -813, 0, 0, 683, 81, 72, 55, 255 }, // 0x000012B8
	 { -791, -90, -813, 0, 4096, 683, 81, 72, 55, 255 }, // 0x000012C8
};

Vtx_t _jyasinzou_room_2_vertices_000012D8[4] = 
{
	 { -311, -90, -813, 0, 5120, 512, 81, 72, 55, 255 }, // 0x000012D8
	 { -311, -330, -813, 0, 5120, 2048, 0, 0, 0, 255 }, // 0x000012E8
	 { -791, -330, -813, 0, 2560, 2048, 0, 0, 0, 255 }, // 0x000012F8
	 { -791, -90, -813, 0, 2560, 512, 81, 72, 55, 255 }, // 0x00001308
};

Vtx_t _jyasinzou_room_2_vertices_00001318[8] = 
{
	 { -791, -330, -1053, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001318
	 { -311, -330, -1053, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001328
	 { -791, 270, -1053, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001338
	 { -311, 270, -1053, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001348
	 { -791, -330, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001358
	 { -311, -330, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001368
	 { -791, 270, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001378
	 { -311, 270, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001388
};

Gfx _jyasinzou_room_2_dlist_00001398[] =
{
	gsDPPipeSync(), // 0x00001398
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000013A0
	gsSPVertex(_jyasinzou_room_2_vertices_00001318, 8, 0), // 0x000013A8
	gsSPCullDisplayList(0, 7), // 0x000013B0
	gsDPPipeSync(), // 0x000013B8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000013C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000013C8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000013D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000053B0), // 0x000013D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000013E0
	gsDPLoadSync(), // 0x000013E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000013F0
	gsDPPipeSync(), // 0x000013F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001400
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001408
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001410
	gsDPTileSync(), // 0x00001418
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001420
	gsDPLoadSync(), // 0x00001428
	gsDPLoadTLUTCmd(7, 15), // 0x00001430
	gsDPPipeSync(), // 0x00001438
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001440
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001448
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001450
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001458
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001460
	gsSPVertex(_jyasinzou_room_2_vertices_00000D68, 19, 0), // 0x00001468
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001470
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001478
	gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0), // 0x00001480
	gsSP2Triangles(12, 13, 14, 0, 12, 15, 16, 0), // 0x00001488
	gsSP2Triangles(12, 16, 13, 0, 17, 18, 12, 0), // 0x00001490
	gsSP2Triangles(17, 12, 14, 0, 18, 15, 12, 0), // 0x00001498
	gsDPPipeSync(), // 0x000014A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x000014A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000014B0
	gsDPLoadSync(), // 0x000014B8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000014C0
	gsDPPipeSync(), // 0x000014C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000014D0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000014D8
	gsSPVertex(_jyasinzou_room_2_vertices_00000E98, 5, 0), // 0x000014E0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000014E8
	gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0), // 0x000014F0
	gsDPPipeSync(), // 0x000014F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000053B0), // 0x00001500
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001508
	gsDPLoadSync(), // 0x00001510
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001518
	gsDPPipeSync(), // 0x00001520
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001528
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001530
	gsSPVertex(_jyasinzou_room_2_vertices_00000EE8, 12, 0), // 0x00001538
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001540
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001548
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001550
	gsDPPipeSync(), // 0x00001558
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_00004BB0), // 0x00001560
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001568
	gsDPLoadSync(), // 0x00001570
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001578
	gsDPPipeSync(), // 0x00001580
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001588
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001590
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001598
	gsDPTileSync(), // 0x000015A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000015A8
	gsDPLoadSync(), // 0x000015B0
	gsDPLoadTLUTCmd(7, 255), // 0x000015B8
	gsDPPipeSync(), // 0x000015C0
	gsSPVertex(_jyasinzou_room_2_vertices_00000FA8, 4, 0), // 0x000015C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000015D0
	gsDPPipeSync(), // 0x000015D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000053B0), // 0x000015E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000015E8
	gsDPLoadSync(), // 0x000015F0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000015F8
	gsDPPipeSync(), // 0x00001600
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001608
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001610
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001618
	gsDPTileSync(), // 0x00001620
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001628
	gsDPLoadSync(), // 0x00001630
	gsDPLoadTLUTCmd(7, 15), // 0x00001638
	gsDPPipeSync(), // 0x00001640
	gsSPVertex(_jyasinzou_room_2_vertices_00000FE8, 12, 0), // 0x00001648
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001650
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001658
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001660
	gsDPPipeSync(), // 0x00001668
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00001670
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001678
	gsDPLoadSync(), // 0x00001680
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001688
	gsDPPipeSync(), // 0x00001690
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001698
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000016A0
	gsSPVertex(_jyasinzou_room_2_vertices_000010A8, 4, 0), // 0x000016A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000016B0
	gsDPPipeSync(), // 0x000016B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000053B0), // 0x000016C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000016C8
	gsDPLoadSync(), // 0x000016D0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000016D8
	gsDPPipeSync(), // 0x000016E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000016E8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000016F0
	gsSPVertex(_jyasinzou_room_2_vertices_000010E8, 4, 0), // 0x000016F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001700
	gsDPPipeSync(), // 0x00001708
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00001710
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001718
	gsDPLoadSync(), // 0x00001720
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001728
	gsDPPipeSync(), // 0x00001730
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001738
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001740
	gsSPVertex(_jyasinzou_room_2_vertices_00001128, 10, 0), // 0x00001748
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001750
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00001758
	gsSP2Triangles(4, 8, 7, 0, 4, 9, 8, 0), // 0x00001760
	gsDPPipeSync(), // 0x00001768
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000053B0), // 0x00001770
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001778
	gsDPLoadSync(), // 0x00001780
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001788
	gsDPPipeSync(), // 0x00001790
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001798
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000017A0
	gsSPVertex(_jyasinzou_room_2_vertices_000011C8, 5, 0), // 0x000017A8
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0), // 0x000017B0
	gsSP1Triangle(3, 0, 4, 0), // 0x000017B8
	gsDPPipeSync(), // 0x000017C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x000017C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000017D0
	gsDPLoadSync(), // 0x000017D8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000017E0
	gsDPPipeSync(), // 0x000017E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000017F0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000017F8
	gsSPVertex(_jyasinzou_room_2_vertices_00001218, 4, 0), // 0x00001800
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001808
	gsDPPipeSync(), // 0x00001810
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000053B0), // 0x00001818
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001820
	gsDPLoadSync(), // 0x00001828
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001830
	gsDPPipeSync(), // 0x00001838
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001840
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001848
	gsSPVertex(_jyasinzou_room_2_vertices_00001258, 4, 0), // 0x00001850
	gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0), // 0x00001858
	gsDPPipeSync(), // 0x00001860
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_00004BB0), // 0x00001868
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001870
	gsDPLoadSync(), // 0x00001878
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001880
	gsDPPipeSync(), // 0x00001888
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001890
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001898
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x000018A0
	gsDPTileSync(), // 0x000018A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000018B0
	gsDPLoadSync(), // 0x000018B8
	gsDPLoadTLUTCmd(7, 255), // 0x000018C0
	gsDPPipeSync(), // 0x000018C8
	gsSPVertex(_jyasinzou_room_2_vertices_00001298, 4, 0), // 0x000018D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000018D8
	gsDPPipeSync(), // 0x000018E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000053B0), // 0x000018E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000018F0
	gsDPLoadSync(), // 0x000018F8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001900
	gsDPPipeSync(), // 0x00001908
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001910
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001918
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001920
	gsDPTileSync(), // 0x00001928
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001930
	gsDPLoadSync(), // 0x00001938
	gsDPLoadTLUTCmd(7, 15), // 0x00001940
	gsDPPipeSync(), // 0x00001948
	gsSPVertex(_jyasinzou_room_2_vertices_000012D8, 4, 0), // 0x00001950
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001958
	gsSPEndDisplayList(), // 0x00001960
};

Vtx_t _jyasinzou_room_2_vertices_00001968[16] = 
{
	 { -335, 252, -1043, 0, 0, 0, 147, 131, 97, 255 }, // 0x00001968
	 { -335, 252, -1063, 0, 512, 0, 147, 131, 97, 255 }, // 0x00001978
	 { -283, 252, -1063, 0, 512, 1024, 52, 49, 38, 255 }, // 0x00001988
	 { -283, 252, -1043, 0, 0, 1024, 52, 49, 38, 255 }, // 0x00001998
	 { -283, 48, -1043, 0, 0, 1024, 52, 49, 38, 255 }, // 0x000019A8
	 { -283, 48, -1063, 0, 512, 1024, 52, 49, 38, 255 }, // 0x000019B8
	 { -335, 48, -1063, 0, 512, 0, 147, 131, 97, 255 }, // 0x000019C8
	 { -335, 48, -1043, 0, 0, 0, 147, 131, 97, 255 }, // 0x000019D8
	 { -767, 48, -1043, 0, 0, 0, 158, 142, 111, 255 }, // 0x000019E8
	 { -767, 48, -1063, 0, 512, 0, 158, 142, 111, 255 }, // 0x000019F8
	 { -818, 48, -1063, 0, 512, 1024, 52, 49, 38, 255 }, // 0x00001A08
	 { -818, 48, -1043, 0, 0, 1024, 52, 49, 38, 255 }, // 0x00001A18
	 { -818, 252, -1043, 0, 0, 1024, 52, 49, 38, 255 }, // 0x00001A28
	 { -818, 252, -1063, 0, 512, 1024, 52, 49, 38, 255 }, // 0x00001A38
	 { -767, 252, -1063, 0, 512, 0, 158, 142, 111, 255 }, // 0x00001A48
	 { -767, 252, -1043, 0, 0, 0, 158, 142, 111, 255 }, // 0x00001A58
};

Vtx_t _jyasinzou_room_2_vertices_00001A68[20] = 
{
	 { -643, 42, -1053, 0, -4557, 273, 158, 142, 111, 255 }, // 0x00001A68
	 { -631, 270, -1053, 0, 1280, 0, 134, 119, 89, 255 }, // 0x00001A78
	 { -643, 258, -1053, 0, 973, 273, 169, 154, 126, 255 }, // 0x00001A88
	 { -631, 30, -1053, 0, -4864, 0, 158, 142, 111, 255 }, // 0x00001A98
	 { -791, 30, -1053, 0, -1792, 0, 69, 62, 48, 255 }, // 0x00001AA8
	 { -631, 30, -1053, 0, 2304, 0, 158, 142, 111, 255 }, // 0x00001AB8
	 { -643, 42, -1053, 0, 1997, 273, 158, 142, 111, 255 }, // 0x00001AC8
	 { -779, 42, -1053, 0, -1485, 273, 115, 102, 78, 255 }, // 0x00001AD8
	 { -791, 30, -1053, 0, -3413, 0, 69, 62, 48, 255 }, // 0x00001AE8
	 { -779, 42, -1053, 0, -3140, 273, 115, 102, 78, 255 }, // 0x00001AF8
	 { -791, 270, -1053, 0, 2048, 0, 69, 62, 48, 255 }, // 0x00001B08
	 { -779, 258, -1053, 0, 1775, 273, 147, 131, 97, 255 }, // 0x00001B18
	 { -551, 30, -1053, 0, -2389, 0, 158, 142, 111, 255 }, // 0x00001B28
	 { -311, 30, -1053, 0, 3072, 0, 69, 62, 48, 255 }, // 0x00001B38
	 { -323, 42, -1053, 0, 2799, 273, 115, 102, 78, 255 }, // 0x00001B48
	 { -539, 42, -1053, 0, -2116, 273, 158, 142, 111, 255 }, // 0x00001B58
	 { -551, 30, -1053, 0, 3584, 0, 158, 142, 111, 255 }, // 0x00001B68
	 { -539, 42, -1053, 0, 3277, 273, 158, 142, 111, 255 }, // 0x00001B78
	 { -551, 270, -1053, 0, -2560, 0, 134, 119, 89, 255 }, // 0x00001B88
	 { -539, 258, -1053, 0, -2253, 273, 169, 154, 126, 255 }, // 0x00001B98
};

Vtx_t _jyasinzou_room_2_vertices_00001BA8[10] = 
{
	 { -539, 258, -1053, 0, -2048, 1024, 169, 154, 126, 255 }, // 0x00001BA8
	 { -539, 42, -1053, 0, 1638, 4710, 158, 142, 111, 255 }, // 0x00001BB8
	 { -431, 150, -1053, 0, 1638, 1024, 255, 255, 255, 255 }, // 0x00001BC8
	 { -323, 42, -1053, 0, 5325, 1024, 115, 102, 78, 255 }, // 0x00001BD8
	 { -323, 258, -1053, 0, 1638, -2662, 147, 131, 97, 255 }, // 0x00001BE8
	 { -779, 42, -1053, 0, 3174, 4198, 115, 102, 78, 255 }, // 0x00001BF8
	 { -711, 150, -1053, 0, 2492, 1195, 255, 255, 255, 255 }, // 0x00001C08
	 { -779, 258, -1053, 0, -512, 512, 147, 131, 97, 255 }, // 0x00001C18
	 { -643, 258, -1053, 0, 1809, -1809, 169, 154, 126, 255 }, // 0x00001C28
	 { -643, 42, -1053, 0, 5495, 1877, 158, 142, 111, 255 }, // 0x00001C38
};

Vtx_t _jyasinzou_room_2_vertices_00001C48[12] = 
{
	 { -323, 42, -1053, 0, 3823, 273, 115, 102, 78, 255 }, // 0x00001C48
	 { -311, 270, -1053, 0, -1365, 0, 69, 62, 48, 255 }, // 0x00001C58
	 { -323, 258, -1053, 0, -1092, 273, 147, 131, 97, 255 }, // 0x00001C68
	 { -311, 30, -1053, 0, 4096, 0, 69, 62, 48, 255 }, // 0x00001C78
	 { -791, 270, -1053, 0, -1280, 0, 69, 62, 48, 255 }, // 0x00001C88
	 { -779, 258, -1053, 0, -973, 273, 147, 131, 97, 255 }, // 0x00001C98
	 { -643, 258, -1053, 0, 2509, 273, 169, 154, 126, 255 }, // 0x00001CA8
	 { -631, 270, -1053, 0, 2816, 0, 134, 119, 89, 255 }, // 0x00001CB8
	 { -539, 258, -1053, 0, -1485, 273, 169, 154, 126, 255 }, // 0x00001CC8
	 { -323, 258, -1053, 0, 4045, 273, 147, 131, 97, 255 }, // 0x00001CD8
	 { -311, 270, -1053, 0, 4352, 0, 69, 62, 48, 255 }, // 0x00001CE8
	 { -551, 270, -1053, 0, -1792, 0, 134, 119, 89, 255 }, // 0x00001CF8
};

Vtx_t _jyasinzou_room_2_vertices_00001D08[8] = 
{
	 { -818, 30, -1063, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D08
	 { -283, 30, -1063, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D18
	 { -818, 270, -1063, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D28
	 { -283, 270, -1063, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D38
	 { -818, 30, -1043, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D48
	 { -283, 30, -1043, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D58
	 { -818, 270, -1043, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D68
	 { -283, 270, -1043, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D78
};

Gfx _jyasinzou_room_2_dlist_00001D88[] =
{
	gsDPPipeSync(), // 0x00001D88
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001D90
	gsSPVertex(_jyasinzou_room_2_vertices_00001D08, 8, 0), // 0x00001D98
	gsSPCullDisplayList(0, 7), // 0x00001DA0
	gsDPPipeSync(), // 0x00001DA8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001DB0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001DB8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001DC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_00003BB0), // 0x00001DC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 4, 0), // 0x00001DD0
	gsDPLoadSync(), // 0x00001DD8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001DE0
	gsDPPipeSync(), // 0x00001DE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 2, 4, 0), // 0x00001DF0
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00001DF8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001E00
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001E08
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00001E10
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x00001E18
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001E20
	gsSPVertex(_jyasinzou_room_2_vertices_00001968, 16, 0), // 0x00001E28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001E30
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001E38
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001E40
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001E48
	gsDPPipeSync(), // 0x00001E50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000023B0), // 0x00001E58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 5, 0), // 0x00001E60
	gsDPLoadSync(), // 0x00001E68
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001E70
	gsDPPipeSync(), // 0x00001E78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 6, 0, 0, 5, 0), // 0x00001E80
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001E88
	gsSPVertex(_jyasinzou_room_2_vertices_00001A68, 20, 0), // 0x00001E90
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0), // 0x00001E98
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001EA0
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x00001EA8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001EB0
	gsSP2Triangles(16, 17, 18, 0, 18, 17, 19, 0), // 0x00001EB8
	gsDPPipeSync(), // 0x00001EC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_00003FB0), // 0x00001EC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00001ED0
	gsDPLoadSync(), // 0x00001ED8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001EE0
	gsDPPipeSync(), // 0x00001EE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00001EF0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001EF8
	gsSPVertex(_jyasinzou_room_2_vertices_00001BA8, 10, 0), // 0x00001F00
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001F08
	gsSP2Triangles(3, 4, 2, 0, 4, 0, 2, 0), // 0x00001F10
	gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0), // 0x00001F18
	gsSP2Triangles(5, 9, 6, 0, 9, 8, 6, 0), // 0x00001F20
	gsDPPipeSync(), // 0x00001F28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000023B0), // 0x00001F30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 5, 0), // 0x00001F38
	gsDPLoadSync(), // 0x00001F40
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001F48
	gsDPPipeSync(), // 0x00001F50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 6, 0, 0, 5, 0), // 0x00001F58
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001F60
	gsSPVertex(_jyasinzou_room_2_vertices_00001C48, 12, 0), // 0x00001F68
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001F70
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001F78
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001F80
	gsSPEndDisplayList(), // 0x00001F88
};

Vtx_t _jyasinzou_room_2_vertices_00001F90[5] = 
{
	 { -862, 190, -1419, 0, -908, 7758, 35, 31, 25, 255 }, // 0x00001F90
	 { -777, 190, -1504, 0, 178, 8844, 35, 31, 25, 255 }, // 0x00001FA0
	 { -671, 190, -1313, 0, 1536, 6400, 81, 72, 55, 255 }, // 0x00001FB0
	 { -713, 190, -1271, 0, 993, 5857, 35, 31, 25, 255 }, // 0x00001FC0
	 { -628, 190, -1356, 0, 2079, 6943, 35, 31, 25, 255 }, // 0x00001FD0
};

Vtx_t _jyasinzou_room_2_vertices_00001FE0[5] = 
{
	 { -671, 30, -1313, 0, 1209, -2584, 69, 62, 48, 255 }, // 0x00001FE0
	 { -628, 30, -1356, 0, 898, -2957, 69, 62, 48, 255 }, // 0x00001FF0
	 { -777, 30, -1504, 0, -408, -1869, 69, 62, 48, 255 }, // 0x00002000
	 { -862, 30, -1419, 0, 214, -1123, 69, 62, 48, 255 }, // 0x00002010
	 { -713, 30, -1271, 0, 1520, -2211, 69, 62, 48, 255 }, // 0x00002020
};

Vtx_t _jyasinzou_room_2_vertices_00002030[12] = 
{
	 { -713, 110, -1271, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x00002030
	 { -713, 30, -1271, 0, 2048, 2048, 69, 62, 48, 255 }, // 0x00002040
	 { -862, 30, -1419, 0, -640, 2048, 69, 62, 48, 255 }, // 0x00002050
	 { -862, 110, -1419, 0, -640, 1024, 69, 62, 48, 255 }, // 0x00002060
	 { -713, 190, -1271, 0, 2048, 0, 35, 31, 25, 255 }, // 0x00002070
	 { -862, 190, -1419, 0, -640, 0, 35, 31, 25, 255 }, // 0x00002080
	 { -628, 110, -1356, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00002090
	 { -628, 190, -1356, 0, 0, 0, 35, 31, 25, 255 }, // 0x000020A0
	 { -777, 190, -1504, 0, 2688, 0, 35, 31, 25, 255 }, // 0x000020B0
	 { -777, 110, -1504, 0, 2688, 1024, 69, 62, 48, 255 }, // 0x000020C0
	 { -628, 30, -1356, 0, 0, 2048, 69, 62, 48, 255 }, // 0x000020D0
	 { -777, 30, -1504, 0, 2688, 2048, 69, 62, 48, 255 }, // 0x000020E0
};

Vtx_t _jyasinzou_room_2_vertices_000020F0[8] = 
{
	 { -763, 30, -1516, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020F0
	 { -622, 30, -1348, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002100
	 { -763, 190, -1516, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002110
	 { -622, 190, -1348, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002120
	 { -869, 30, -1427, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002130
	 { -727, 30, -1259, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002140
	 { -869, 190, -1427, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002150
	 { -727, 190, -1259, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002160
};

Gfx _jyasinzou_room_2_dlist_00002170[] =
{
	gsDPPipeSync(), // 0x00002170
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002178
	gsSPVertex(_jyasinzou_room_2_vertices_000020F0, 8, 0), // 0x00002180
	gsSPCullDisplayList(0, 7), // 0x00002188
	gsDPPipeSync(), // 0x00002190
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002198
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000021A0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000021A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000053B0), // 0x000021B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000021B8
	gsDPLoadSync(), // 0x000021C0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000021C8
	gsDPPipeSync(), // 0x000021D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000021D8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000021E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000021E8
	gsDPTileSync(), // 0x000021F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000021F8
	gsDPLoadSync(), // 0x00002200
	gsDPLoadTLUTCmd(7, 15), // 0x00002208
	gsDPPipeSync(), // 0x00002210
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002218
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002220
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002228
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002230
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002238
	gsSPVertex(_jyasinzou_room_2_vertices_00001F90, 5, 0), // 0x00002240
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002248
	gsSP1Triangle(1, 4, 2, 0), // 0x00002250
	gsDPPipeSync(), // 0x00002258
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_2_tex_000047B0), // 0x00002260
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002268
	gsDPLoadSync(), // 0x00002270
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002278
	gsDPPipeSync(), // 0x00002280
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002288
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002290
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00002298
	gsDPTileSync(), // 0x000022A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000022A8
	gsDPLoadSync(), // 0x000022B0
	gsDPLoadTLUTCmd(7, 255), // 0x000022B8
	gsDPPipeSync(), // 0x000022C0
	gsSPVertex(_jyasinzou_room_2_vertices_00001FE0, 5, 0), // 0x000022C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000022D0
	gsSP1Triangle(4, 0, 3, 0), // 0x000022D8
	gsDPPipeSync(), // 0x000022E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x000022E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000022F0
	gsDPLoadSync(), // 0x000022F8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002300
	gsDPPipeSync(), // 0x00002308
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00002310
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00002318
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00002320
	gsDPTileSync(), // 0x00002328
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002330
	gsDPLoadSync(), // 0x00002338
	gsDPLoadTLUTCmd(7, 15), // 0x00002340
	gsDPPipeSync(), // 0x00002348
	gsSPVertex(_jyasinzou_room_2_vertices_00002030, 12, 0), // 0x00002350
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002358
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00002360
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00002368
	gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0), // 0x00002370
	gsSPEndDisplayList(), // 0x00002378
};

static u8 unaccounted2380[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0x58, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0x98, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0x88, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x21, 0x70, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _jyasinzou_room_2_tex_000023B0[] = 
{
	0xBDEDC62FCE71C62F, 0xC62FB5ABC62FC62F, 0xC62FBDEDB5ADB5AD, 0xC5EFC5EFBDEFBDED,  // 0x000023B0 
	0xC5EFC62FCE71C62F, 0xC62FBDEDBDEDC62F, 0xC5EFCE2FC62FBDED, 0xBDEDBDEDC5EFC5EF,  // 0x000023D0 
	0x6B156B156B156B15, 0x6B156B156B156B15, 0x6B156B156B156B15, 0x6B156B156B156B15,  // 0x000023F0 
	0x6B156B156B156B15, 0x6B156B1573576B17, 0x6B156B156B156B15, 0x6B156B156B156B15,  // 0x00002410 
	0x6B156B156B156B15, 0x6B156B156B156B15, 0x7399841D6B156B15, 0x6B156B156B156B15,  // 0x00002430 
	0x6B156B156B157315, 0x731573576B156B15, 0x7399841D6B156B15, 0x6B156B156B157357,  // 0x00002450 
	0x83DB7B996B156B15, 0x6B156B156B155A93, 0xAD27C5EF841D62D3, 0x6AD56B156B156B15,  // 0x00002470 
	0x6B156B156B156B15, 0x6B15735762D35A93, 0xAD27C5EF841D7B97, 0x731573576B177357,  // 0x00002490 
	0x83DB7B996B156B15, 0x6B156B156B154A0F, 0x7359AD27841D62D3, 0x62D362D56B156B15,  // 0x000024B0 
	0x6B156B1573156B15, 0x6B156B176B154A0F, 0x7359AD27841D7317, 0x6B1573576B177B99,  // 0x000024D0 
	0x83DB8399735762D3, 0x6B156B156B156B15, 0x4A0F5251735762D5, 0x6B156B156B156B15,  // 0x000024F0 
	0x6B156AD373156B15, 0x6B156B1573576B15, 0x4A0F525173577B99, 0x73577B9973597B99,  // 0x00002510 
	0x83DB83996B156AD3, 0x6B156B156B156B15, 0x6B156B156B1562D5, 0x6B156B156B156B15,  // 0x00002530 
	0x6B156B156B156B15, 0x6B156B1573576B15, 0x62D35A9362D37357, 0x7357735773577B99,  // 0x00002550 
	0x2107210729492909, 0x2909314B29092909, 0x314B398B314B2907, 0x2107294929492107,  // 0x00002570 
	0x2107210729092949, 0x2949294929492949, 0x2949210721072909, 0x29092949294939CD,  // 0x00002590 
	0x20C620C620C620C6, 0x20C6294939CB7359, 0x4A0F290820C620C6, 0x20C620C620C620C6,  // 0x000025B0 
	0x20C620C620C620C6, 0x20C620C62106314B, 0x4A517359318B20C6, 0x20C620C620C620C6,  // 0x000025D0 
	0x20C620C620C620C6, 0x20C6294939CB7359, 0x4A0F290820C620C6, 0x20C620C620C620C6,  // 0x000025F0 
	0x20C620C620C620C6, 0x20C620C62106314B, 0x4A517359318B20C6, 0x20C620C620C620C6,  // 0x00002610 
	0x20C620C620C620C6, 0x20C6294939CD7359, 0x4A11290820C620C6, 0x20C620C620C620C6,  // 0x00002630 
	0x20C620C620C620C6, 0x20C620C62106314B, 0x52517359398B20C6, 0x20C620C620C620C6,  // 0x00002650 
	0x20C620C620C620C6, 0x20C6294941CD735B, 0x4A51290820C620C6, 0x20C620C620C620C6,  // 0x00002670 
	0x20C620C620C620C6, 0x20C620C62106318B, 0x52517359398B20C6, 0x20C620C620C620C6,  // 0x00002690 
	0x20C620C620C620C6, 0x20C6294941CD739B, 0x4A51290820C620C6, 0x20C620C620C620C6,  // 0x000026B0 
	0x20C620C620C620C6, 0x20C620C62106318B, 0x5293735B398D20C6, 0x20C620C620C620C6,  // 0x000026D0 
	0x20C620C620C620C6, 0x20C62949420F7B9B, 0x5251290820C620C6, 0x20C620C620C620C6,  // 0x000026F0 
	0x20C620C620C620C6, 0x20C620C62108398B, 0x5A93739B39CD20C6, 0x20C620C620C620C6,  // 0x00002710 
	0x20C620C620C620C6, 0x20C6314B4A0F7B9B, 0x5251294820C620C6, 0x20C620C620C620C6,  // 0x00002730 
	0x20C620C620C620C6, 0x20C620C62908398D, 0x5A937B9B39CD20C6, 0x20C620C620C620C6,  // 0x00002750 
	0x20C620C620C620C6, 0x20C6314B4A0F7BDB, 0x5251294820C620C6, 0x20C620C620C620C6,  // 0x00002770 
	0x20C620C620C620C6, 0x20C620C62908398D, 0x5AD37B9B39CD20C6, 0x20C620C620C620C6,  // 0x00002790 
	0x20C620C620C620C6, 0x20C629494A0F7BDB, 0x5251294820C620C6, 0x20C620C620C620C6,  // 0x000027B0 
	0x20C620C620C620C6, 0x20C620C62108398B, 0x5AD37B9B39CD20C6, 0x20C620C620C620C6,  // 0x000027D0 
	0x20C620C620C620C6, 0x20C6314B4A0F83DD, 0x5253294820C620C6, 0x20C620C620C620C6,  // 0x000027F0 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x62D37BDB39CD20C6, 0x20C620C620C620C6,  // 0x00002810 
	0x20C620C620C620C6, 0x20C6314B4A4F841D, 0x5293294820C620C6, 0x20C620C620C620C6,  // 0x00002830 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x62D583DD39CD20C6, 0x20C620C620C620C6,  // 0x00002850 
	0x20C620C620C620C6, 0x20C6318B4A4F8C1F, 0x5293294820C620C6, 0x20C620C620C620C6,  // 0x00002870 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x62D583DD41CD20C6, 0x20C620C620C620C6,  // 0x00002890 
	0x20C620C620C620C6, 0x20C6314B4A0F8C1F, 0x5A93294820C620C6, 0x20C620C620C620C6,  // 0x000028B0 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x62D583DD41CF20C6, 0x20C620C620C620C6,  // 0x000028D0 
	0x20C620C620C620C6, 0x20C6314B4A0F841F, 0x5A93294820C620C6, 0x20C620C620C620C6,  // 0x000028F0 
	0x20C620C620C620C6, 0x20C620C62908398B, 0x62D5841D420F20C6, 0x20C620C620C620C6,  // 0x00002910 
	0x20C620C620C620C6, 0x20C631494A0F841F, 0x5A95294820C620C6, 0x20C620C620C620C6,  // 0x00002930 
	0x20C620C620C620C6, 0x20C620C62908398B, 0x62D5841F420F20C6, 0x20C620C620C620C6,  // 0x00002950 
	0x20C620C620C620C6, 0x20C631494A0F841F, 0x5A95294820C620C6, 0x20C620C620C620C6,  // 0x00002970 
	0x20C620C620C620C6, 0x20C620C62106398B, 0x62D5841F420F20C6, 0x20C620C620C620C6,  // 0x00002990 
	0x20C620C620C620C6, 0x20C631494A0F8C1F, 0x5AD5314820C620C6, 0x20C620C620C620C6,  // 0x000029B0 
	0x20C620C620C620C6, 0x20C620C62108398B, 0x62D58C1F4A1120C6, 0x20C620C620C620C6,  // 0x000029D0 
	0x20C620C620C620C6, 0x20C631494A4F8C61, 0x62D7314A20C620C6, 0x20C620C620C620C6,  // 0x000029F0 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x63158C614A5120C6, 0x20C620C620C620C6,  // 0x00002A10 
	0x20C620C620C620C6, 0x20C6314B4A4F9461, 0x6317314A20C620C6, 0x20C620C620C620C6,  // 0x00002A30 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x63159461525120C6, 0x20C620C620C620C6,  // 0x00002A50 
	0x20C620C620C620C6, 0x20C6314B4A4F9461, 0x6B17314A20C620C6, 0x20C620C620C620C6,  // 0x00002A70 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x63159461525320C6, 0x20C620C620C620C6,  // 0x00002A90 
	0x20C620C620C620C6, 0x20C6314B4A4F9461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00002AB0 
	0x20C620C620C620C6, 0x20C620C62908398D, 0x63159461529320C6, 0x20C620C620C620C6,  // 0x00002AD0 
	0x20C620C620C620C6, 0x20C6314B4A0F9461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00002AF0 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x631594615A9320C6, 0x20C620C620C620C6,  // 0x00002B10 
	0x20C620C620C620C6, 0x20C6318B4A0F9461, 0x6B19318A20C620C6, 0x20C620C620C620C6,  // 0x00002B30 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x62D594615A9320C6, 0x20C620C620C620C6,  // 0x00002B50 
	0x20C620C620C620C6, 0x20C6314B4A0F9461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00002B70 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x62D594615A9320C6, 0x20C620C620C620C6,  // 0x00002B90 
	0x20C620C620C620C6, 0x20C6314B4A0F9461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00002BB0 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x631594615A9320C6, 0x20C620C620C620C6,  // 0x00002BD0 
	0x20C620C620C620C6, 0x20C6314B4A4F9461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00002BF0 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x631794A3529320C6, 0x20C620C620C620C6,  // 0x00002C10 
	0x20C620C620C620C6, 0x20C6318B52519461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00002C30 
	0x20C620C620C620C6, 0x20C620C6290841CD, 0x6B179461529320C6, 0x20C620C620C620C6,  // 0x00002C50 
	0x20C620C620C620C6, 0x20C639CD525194A1, 0x6B17314A20C620C6, 0x20C620C620C620C6,  // 0x00002C70 
	0x20C620C620C620C6, 0x20C620C62948420F, 0x6B179461525120C6, 0x20C620C620C620C6,  // 0x00002C90 
	0x20C620C620C620C6, 0x20C639CD525194A3, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00002CB0 
	0x20C620C620C620C6, 0x20C620C62948420F, 0x6B1794A35A9320C6, 0x20C620C620C620C6,  // 0x00002CD0 
	0x20C620C620C620C6, 0x20C639CD525194A3, 0x6B19318A20C620C6, 0x20C620C620C620C6,  // 0x00002CF0 
	0x20C620C620C620C6, 0x20C620C62948420F, 0x6B1794A35A9320C6, 0x20C620C620C620C6,  // 0x00002D10 
	0x20C620C620C620C6, 0x20C639CD529194A3, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00002D30 
	0x20C620C620C620C6, 0x20C620C629484A0F, 0x6B1794A35A9320C6, 0x20C620C620C620C6,  // 0x00002D50 
	0x20C620C620C620C6, 0x20C641CD529394A3, 0x6B17314A20C620C6, 0x20C620C620C620C6,  // 0x00002D70 
	0x20C620C620C620C6, 0x20C620C629484A0F, 0x6B179463525120C6, 0x20C620C620C620C6,  // 0x00002D90 
	0x20C620C620C620C6, 0x20C641CF529394A3, 0x6B17314A20C620C6, 0x20C620C620C620C6,  // 0x00002DB0 
	0x20C620C620C620C6, 0x20C620C6314A4A0F, 0x6B199463525120C6, 0x20C620C620C620C6,  // 0x00002DD0 
	0x20C620C620C620C6, 0x20C64A0F5A9394A3, 0x6B17314A20C620C6, 0x20C620C620C620C6,  // 0x00002DF0 
	0x20C620C620C620C6, 0x20C620C6314A4A51, 0x6B599463525120C6, 0x20C620C620C620C6,  // 0x00002E10 
	0x20C620C620C620C6, 0x20C64A515A9394A3, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00002E30 
	0x20C620C620C620C6, 0x20C620C6318A5251, 0x6B599463529120C6, 0x20C620C620C620C6,  // 0x00002E50 
	0x20C620C620C620C6, 0x20C64A515AD394A3, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00002E70 
	0x20C620C620C620C6, 0x20C620C6318A5253, 0x73599463529120C6, 0x20C620C620C620C6,  // 0x00002E90 
	0x20C620C620C620C6, 0x20C6525162D594A3, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00002EB0 
	0x20C620C620C620C6, 0x20C620C6318A5293, 0x735994A15A9120C6, 0x20C620C620C620C6,  // 0x00002ED0 
	0x20C620C620C620C6, 0x20C6525162D594A3, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00002EF0 
	0x20C620C620C620C6, 0x20C620C6318A5293, 0x739994615A9320C6, 0x20C620C620C620C6,  // 0x00002F10 
	0x20C620C620C620C6, 0x20C64A5162D594A3, 0x6B57318A20C620C6, 0x20C620C620C620C6,  // 0x00002F30 
	0x20C620C620C620C6, 0x20C620C6318A5293, 0x739994615A9320C6, 0x20C620C620C620C6,  // 0x00002F50 
	0x20C620C620C620C6, 0x20C64A5162D594A3, 0x6B57318A20C620C6, 0x20C620C620C620C6,  // 0x00002F70 
	0x20C620C620C620C6, 0x20C620C6318A5293, 0x739B94615A9320C6, 0x20C620C620C620C6,  // 0x00002F90 
	0x20C620C620C620C6, 0x20C64A5162D594A3, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00002FB0 
	0x20C620C620C620C6, 0x20C620C6318A5A93, 0x739994615A9320C6, 0x20C620C620C620C6,  // 0x00002FD0 
	0x20C620C620C620C6, 0x20C6525363159463, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00002FF0 
	0x20C620C620C620C6, 0x20C620C6318A5A93, 0x739994615A9320C6, 0x20C620C620C620C6,  // 0x00003010 
	0x20C620C620C620C6, 0x20C64A5162D59461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00003030 
	0x20C620C620C620C6, 0x20C620C6318A5293, 0x73999461529120C6, 0x20C620C620C620C6,  // 0x00003050 
	0x20C620C620C620C6, 0x20C64A0F62D59461, 0x6317314A20C620C6, 0x20C620C620C620C6,  // 0x00003070 
	0x20C620C620C620C6, 0x20C620C6318A5251, 0x73598C61525120C6, 0x20C620C620C620C6,  // 0x00003090 
	0x20C620C620C620C6, 0x20C64A0F62D59461, 0x6317314A20C620C6, 0x20C620C620C620C6,  // 0x000030B0 
	0x20C620C620C620C6, 0x20C620C6318A5251, 0x73598C61525120C6, 0x20C620C620C620C6,  // 0x000030D0 
	0x20C620C620C620C6, 0x20C64A1162D59461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x000030F0 
	0x20C620C620C620C6, 0x20C620C6318A5251, 0x73598C61529120C6, 0x20C620C620C620C6,  // 0x00003110 
	0x20C620C620C620C6, 0x20C64A115AD39461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x00003130 
	0x20C620C620C620C6, 0x20C620C6318A5251, 0x73598C61525120C6, 0x20C620C620C620C6,  // 0x00003150 
	0x20C620C620C620C6, 0x20C64A0F5A938C61, 0x62D5314A20C620C6, 0x20C620C620C620C6,  // 0x00003170 
	0x20C620C620C620C6, 0x20C620C6318A5251, 0x6B598C614A5120C6, 0x20C620C620C620C6,  // 0x00003190 
	0x20C620C620C620C6, 0x20C64A0F5A938C61, 0x5AD5294820C620C6, 0x20C620C620C620C6,  // 0x000031B0 
	0x20C620C620C620C6, 0x20C620C6314A4A51, 0x6B178C21420F20C6, 0x20C620C620C620C6,  // 0x000031D0 
	0x20C620C620C620C6, 0x20C6420F52938C1F, 0x5AD5294820C620C6, 0x20C620C620C620C6,  // 0x000031F0 
	0x20C620C620C620C6, 0x20C620C6314A4A51, 0x6B178C1F4A0F20C6, 0x20C620C620C620C6,  // 0x00003210 
	0x20C620C620C620C6, 0x20C6420F5251841F, 0x5AD5314820C620C6, 0x20C620C620C620C6,  // 0x00003230 
	0x20C620C620C620C6, 0x20C620C6314A4A0F, 0x62D783DF4A1120C6, 0x20C620C620C620C6,  // 0x00003250 
	0x20C620C620C620C6, 0x20C641CD52517B9D, 0x5A93294820C620C6, 0x20C620C620C620C6,  // 0x00003270 
	0x20C620C620C620C6, 0x20C620C631484A0F, 0x62D57B9D4A0F20C6, 0x20C620C620C620C6,  // 0x00003290 
	0x20C620C620C620C6, 0x20C639CD52517359, 0x5253294820C620C6, 0x20C620C620C620C6,  // 0x000032B0 
	0x20C620C620C620C6, 0x20C620C62948420F, 0x5A956B59420F20C6, 0x20C620C620C620C6,  // 0x000032D0 
	0x20C620C620C620C6, 0x20C639CD4A516B17, 0x4A51294820C620C6, 0x20C620C620C620C6,  // 0x000032F0 
	0x20C620C620C620C6, 0x20C620C6294841CF, 0x5A93631741CF20C6, 0x20C620C620C620C6,  // 0x00003310 
	0x20C620C620C620C6, 0x20C639CD4A116B17, 0x4A51294820C620C6, 0x20C620C620C620C6,  // 0x00003330 
	0x20C620C620C620C6, 0x20C620C62948420F, 0x52936317420F20C6, 0x20C620C620C620C6,  // 0x00003350 
	0x20C620C620C620C6, 0x20C641CD4A116B19, 0x5251294820C620C6, 0x20C620C620C620C6,  // 0x00003370 
	0x20C620C620C620C6, 0x20C620C62948420F, 0x52936B17420F20C6, 0x20C620C620C620C6,  // 0x00003390 
};

u64 _jyasinzou_room_2_tex_000033B0[] = 
{
	0x1A0B08000008087B, 0x7B7B0823231E1E23, 0x00001E00001E1E1E, 0x1E000000081E0000,  // 0x000033B0 
	0x0800080800002323, 0x001E08081E001E1E, 0x1E23230808000800, 0xD00008D008080899,  // 0x000033D0 
	0x0B0B0827030303BA, 0x7B7B0800231E031E, 0x27272727001E1E27, 0x1E030300031E0327,  // 0x000033F0 
	0x0303080327000323, 0x271E030808272727, 0x2323270303030800, 0x0827030308080372,  // 0x00003410 
	0x1ADE862708030008, 0xB37B0803231E0303, 0x23270327001E0308, 0x2708080803270327,  // 0x00003430 
	0x0308030003030827, 0x231E270386270000, 0x2323000027080803, 0x0327272703031E03,  // 0x00003450 
	0xB78CD00008080300, 0xBA7B08860023008C, 0x00080808001E8C8C, 0x0808088C08000000,  // 0x00003470 
	0x080800008C03088C, 0x00231E0000080023, 0x231E00001E030808, 0x0800080023231E08,  // 0x00003490 
	0x0B08D00000000300, 0x86C6E50827230808, 0x0000000808030008, 0x0808000808000800,  // 0x000034B0 
	0x00002308081E0008, 0x2300001E00082323, 0x0000231E001E0000, 0x0008080023001E08,  // 0x000034D0 
	0x1AE5860000230000, 0x08EFBA0327230327, 0x0003002703080003, 0x2703272727030300,  // 0x000034F0 
	0x00230003031E2727, 0x0003232327031E03, 0x0000032727232300, 0x000303001E002327,  // 0x00003510 
	0x0BB7080300272323, 0x03E0B38627000027, 0x0386031E27082703, 0x030003001E080000,  // 0x00003530 
	0x0027030300031E23, 0x0303232703271E03, 0x0000030303002300, 0x000000272700271E,  // 0x00003550 
	0x0BE5080300032323, 0x00037BBA03032303, 0x08E003231E031E08, 0x080003001E030000,  // 0x00003570 
	0x0008030300E02723, 0x03231E08031E2700, 0x2300000303002323, 0x0000001E00000323,  // 0x00003590 
	0x1A0808001E002323, 0x00087B7B088C0000, 0x08000000231E1E08, 0x0808000800000008,  // 0x000035B0 
	0x1E08001E0800081E, 0x2323080800000808, 0x00230000001E2323, 0x23081E0000000023,  // 0x000035D0 
	0x1A8C0B0803230308, 0x2727B37BBA860800, 0x000000081E1E0008, 0x001E08001E081E00,  // 0x000035F0 
	0x032323000000001E, 0x231E082323000808, 0x080300000003231E, 0x0323230808002323,  // 0x00003610 
	0x1A8CDE0327000308, 0x2723B37BB3080827, 0x2703030303082703, 0x0003080327082727,  // 0x00003630 
	0x2700000003030023, 0x2303270000000303, 0x0308002327031E1E, 0x2723230303032327,  // 0x00003650 
	0x1A86861E23002703, 0x03237BC9C6080823, 0x0308032708861E00, 0x000803030003031E,  // 0x00003670 
	0x2300000308032727, 0x2703270300271E27, 0x2703032723002727, 0x2323272700030303,  // 0x00003690 
	0x1A088C1E23002700, 0x03277BB38C030823, 0x8C08000308002323, 0x00081E000000031E,  // 0x000036B0 
	0x2300000808001E08, 0x08000008001E1E00, 0x0000080323230000, 0x231E080323238C00,  // 0x000036D0 
	0x1A8C0B1E081E0023, 0x00037BBA00000808, 0x008C081E001E231E, 0x0800000000001E1E,  // 0x000036F0 
	0x081E000800081E8C, 0x0000000808002300, 0x0800001E00000800, 0x1E8C0823231E0008,  // 0x00003710 
	0x1ADE080308032300, 0x23007B0800230008, 0x1E86080303030386, 0x0800000003232703,  // 0x00003730 
	0x0803860000082727, 0x03001E2727000000, 0x0803031E03030000, 0x8603232300860000,  // 0x00003750 
	0x1A390B0303032700, 0x278CC60327270000, 0x0308080300080808, 0x08272700031E0003,  // 0x00003770 
	0x0303860300000023, 0x032727271E000300, 0x0303032708030303, 0x861E231E08860000,  // 0x00003790 
	0x1AB71A2700270000, 0x08B3D08627030023, 0x080303271E030300, 0x031E270000272327,  // 0x000037B0 
	0x0027030327230023, 0x2727000023270300, 0x2700002703000803, 0x03231E278C032700,  // 0x000037D0 
	0x1AB70B1E231E0303, 0xBA7B080308032300, 0x08000008081E0023, 0x0000082323081E1E,  // 0x000037F0 
	0x231E001E1E230000, 0x08080800001E1E08, 0x1E00001E00080800, 0x2323000808001E23,  // 0x00003810 
	0x1A0B08031E1E038C, 0xC67B000008000000, 0x00231E0808031E00, 0x00001E031E1E0303,  // 0x00003830 
	0x1E1E08000003231E, 0x00081E0800002300, 0x0300000300080823, 0x232308080008031E,  // 0x00003850 
	0x0B0B0B08270303BA, 0xC97B000003000303, 0x001E030308860300, 0x03031E03031E2708,  // 0x00003870 
	0x270303000008031E, 0x00031E2700000000, 0x0300030886082700, 0x0300030327082723,  // 0x00003890 
	0x1ADE0B03000803B3, 0x7B7B030300030803, 0x271E030008860300, 0x0303032708031E03,  // 0x000038B0 
	0x0008270027030303, 0x00001E0327030000, 0x0003860886031E27, 0x0803002703032323,  // 0x000038D0 
	0x0B8C0B00000803C6, 0x7B7B080800080800, 0x1E23000008080000, 0x0000081E08082300,  // 0x000038F0 
	0x00081E0027000008, 0x23231E081E080023, 0x23088C080023231E, 0x0308231E031E2300,  // 0x00003910 
	0x0BD00B231E00000B, 0x7B7B080803080008, 0x2323000000000000, 0x1E1E000808002323,  // 0x00003930 
	0x1E0808088C080000, 0x231E080008080800, 0x0808080000230008, 0x230008001E008C00,  // 0x00003950 
	0x0B0808030023001E, 0xBA7B030308270308, 0x8603000300030003, 0x0303000800030003,  // 0x00003970 
	0x001E080803000023, 0x0003270008000800, 0x080827002303E008, 0x232327031E1E0800,  // 0x00003990 
	0x0B8608030003001E, 0x08B3E00003000308, 0x8603002700032703, 0x0303030300030303,  // 0x000039B0 
	0x0000030800030003, 0x0003270027000303, 0x0808270003080803, 0x27271E0803030300,  // 0x000039D0 
	0x1AB7082703030003, 0x27BAEF0327000003, 0x0303272300001E00, 0x1E27080003030800,  // 0x000039F0 
	0x0327270300080308, 0x0000000023000303, 0x0303000008030027, 0x0386270303030000,  // 0x00003A10 
	0x0BB7081E081E0303, 0x27E5B3E02300001E, 0x00081E2323001E23, 0x1E08080008080800,  // 0x00003A30 
	0x081E080000030303, 0x000000001E230323, 0x1E000000031E001E, 0x008C081E23000000,  // 0x00003A50 
	0x1AD0080308030800, 0x03037BEF23230000, 0x0800001E001E0300, 0x0308000800000008,  // 0x00003A70 
	0x08030023001E1E1E, 0x00002308031E1E00, 0x0000231E1E1E1E00, 0x081E08030008088C,  // 0x00003A90 
	0x0B8C862727030800, 0x08037BB308230023, 0x0800031E27030303, 0x0803032703038627,  // 0x00003AB0 
	0x2703001E00271E27, 0x0003000303031E23, 0x0000031E271E1E03, 0x081E270300270808,  // 0x00003AD0 
	0x0BB7B72723000303, 0x03037B7BBA232723, 0x0300031E1E030303, 0x030003030308D027,  // 0x00003AF0 
	0x2300270303002700, 0x2708032700080323, 0x2727081E00272708, 0x2727270303030300,  // 0x00003B10 
	0x1AB7E50023000003, 0x00277B7BB3001E23, 0x00231E1E1E1E0800, 0x00001E0300088C00,  // 0x00003B30 
	0x23001E0303000000, 0x1E03031E00030323, 0x1E1E082323080003, 0x2300000303080023,  // 0x00003B50 
	0x1AB7082323000003, 0x00277B7BC6030800, 0x0800000800000808, 0x08081E1E08080023,  // 0x00003B70 
	0x2300001E0000001E, 0x1E001E001E000000, 0x1E0008230008081E, 0x1E0800001E080023,  // 0x00003B90 
};

u64 _jyasinzou_room_2_tex_00003BB0[] = 
{
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003BB0 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003BD0 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003BF0 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003C10 
	0x2104210439CC5A92, 0x525062D45A925290, 0x525052505A904A0E, 0x4A0E314829462104,  // 0x00003C30 
	0x21044A4E5A92A4E5, 0x946194618C1F83DB, 0x7B997B997B997B99, 0x735762D241CC2104,  // 0x00003C50 
	0x4A4E7398CE2BCE2D, 0xB56BAD299CA3945F, 0x945F945F945F945F, 0x83DB7B9B525041CC,  // 0x00003C70 
	0x7356BDE7DEABA527, 0x9CE56B1562D35A4F, 0x5A916B1562D17357, 0x8C1F945F5A934A0E,  // 0x00003C90 
	0xB5A7D66BAD699463, 0x7357525141CC39CA, 0x41CA420C520D7357, 0x7B9B83DB6B13524F,  // 0x00003CB0 
	0x9CE5BDA9945F7357, 0x524F398A21042104, 0x210421043988520D, 0x7B998BDD735562D3,  // 0x00003CD0 
	0x83DDB56794615AD3, 0x41CC314821042104, 0x2104210421043988, 0x62D38C1F7B995A91,  // 0x00003CF0 
	0x83DBA4E394615AD3, 0x2104210421042104, 0x2104210429063988, 0x520D946183DD4A0D,  // 0x00003D10 
	0x7357945F8C1F4A51, 0x2104210421042104, 0x2104210421063988, 0x520D9CA38C1F41CB,  // 0x00003D30 
	0x62D3735762D541CD, 0x2104210421042104, 0x2104210429063988, 0x520D9CA394614A4F,  // 0x00003D50 
	0x318A4A0E41CC3148, 0x2104210421042104, 0x2104210421063988, 0x520D9CA39C614A4F,  // 0x00003D70 
	0x420C210421042104, 0x2104210421042104, 0x2104210421043988, 0x520D9CA39CA36315,  // 0x00003D90 
	0x524E210421042104, 0x2104210421042104, 0x2104210421043988, 0x520D9CA3945F7B99,  // 0x00003DB0 
	0x41CC314821042104, 0x2104290621042104, 0x2104210421043988, 0x520D94618C1D62D5,  // 0x00003DD0 
	0xB567DEABC5EB841D, 0x2948294821042104, 0x2104210421043988, 0x520D94618C1D62D5,  // 0x00003DF0 
	0x7B99C5E794615AD5, 0x318A290621042104, 0x21042104210441CA, 0x5A919CA3839B524F,  // 0x00003E10 
	0x7357A4E194636B17, 0x420E294621042104, 0x2104210421044A0C, 0x73159CE37B594A0D,  // 0x00003E30 
	0x7B99945F94637359, 0x4A4E318821042104, 0x2104210429065A92, 0x945FA4E5735741CB,  // 0x00003E50 
	0x6B158BDD9CA38C1F, 0x41CB314821042104, 0x2104210431487359, 0xB567A5256B153189,  // 0x00003E70 
	0x520D6B158C1F9C63, 0x62D141CB21042104, 0x210441CC6B17BDEB, 0x9CA18C1D5A913989,  // 0x00003E90 
	0x420C6AD37357839B, 0x94615A91420B4A0B, 0x4A0B83999C5F9CA3, 0x7B9973575A912104,  // 0x00003EB0 
	0x210441CA520D7357, 0x945F945F945F945F, 0x945F9CA38C1F83DB, 0x6B15524F29482104,  // 0x00003ED0 
	0x210421043988520D, 0x62D36B1773577357, 0x62D362D36B155A93, 0x3989398821042104,  // 0x00003EF0 
	0x2104210421044A0C, 0x39CA4A0C4A0E41CC, 0x4A0C420C420C318A, 0x2906210421042104,  // 0x00003F10 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003F30 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003F50 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003F70 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003F90 
};

u64 _jyasinzou_room_2_tex_00003FB0[] = 
{
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F62D54A0F20C6, 0x20C620C620C620C6,  // 0x00003FB0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F62D54A0F20C6, 0x20C620C620C620C6,  // 0x00003FD0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F5A934A0F20C6, 0x20C620C620C620C6,  // 0x00003FF0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F62D54A0F20C6, 0x20C620C620C620C6,  // 0x00004010 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x41CD5A934A0F20C6, 0x20C620C620C620C6,  // 0x00004030 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x525162D54A0F20C6, 0x20C620C620C620C6,  // 0x00004050 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x41CD5251420D20C6, 0x20C620C620C620C6,  // 0x00004070 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x5A936B174A0F20C6, 0x20C620C620C620C6,  // 0x00004090 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x398B4A0F41CD20C6, 0x20C620C620C620C6,  // 0x000040B0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F6B594A0F20C6, 0x20C620C620C620C6,  // 0x000040D0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x314939CD318B20C6, 0x20C620C620C620C6,  // 0x000040F0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F739B4A0F20C6, 0x20C620C620C620C6,  // 0x00004110 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x29492949294920C6, 0x20C620C620C620C6,  // 0x00004130 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F83DD4A0F20C6, 0x20C620C620C620C6,  // 0x00004150 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00004170 
	0x4A0F4A0F4A0F4A0F, 0x41CD39CD398B3149, 0x4A0F841F4A0F3149, 0x398B39CD420F4A0F,  // 0x00004190 
	0x62D563176B176B17, 0x735973997B9B841D, 0x8C61946194618C61, 0x8C1F83DD7BDD739B,  // 0x000041B0 
	0x73596B1762D55AD5, 0x52934A5141CF318D, 0x4A0F8C614A0F318D, 0x41CF4A0F52515A93,  // 0x000041D0 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x000041F0 
	0x4A0F4A0F4A0F4A0F, 0x41CD39CD398B3149, 0x4A0F841F4A0F3149, 0x398B39CD41CD4A0F,  // 0x00004210 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x3149318B314920C6, 0x20C620C620C620C6,  // 0x00004230 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F7BDD4A0F20C6, 0x20C620C620C620C6,  // 0x00004250 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x398B41CD398B20C6, 0x20C620C620C620C6,  // 0x00004270 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F73594A0F20C6, 0x20C620C620C620C6,  // 0x00004290 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x39CD4A1139CD20C6, 0x20C620C620C620C6,  // 0x000042B0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F6B174A0F20C6, 0x20C620C620C620C6,  // 0x000042D0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x41CD525141CD20C6, 0x20C620C620C620C6,  // 0x000042F0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F63174A0F20C6, 0x20C620C620C620C6,  // 0x00004310 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F5A934A0F20C6, 0x20C620C620C620C6,  // 0x00004330 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F63154A0F20C6, 0x20C620C620C620C6,  // 0x00004350 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F5AD34A0F20C6, 0x20C620C620C620C6,  // 0x00004370 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F62D54A0F20C6, 0x20C620C620C620C6,  // 0x00004390 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F62D54A0F20C6, 0x20C620C620C620C6,  // 0x000043B0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F62D54A0F20C6, 0x20C620C620C620C6,  // 0x000043D0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F63154A0F20C6, 0x20C620C620C620C6,  // 0x000043F0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F5AD54A0F20C6, 0x20C620C620C620C6,  // 0x00004410 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F6B174A0F20C6, 0x20C620C620C620C6,  // 0x00004430 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F5A934A0F20C6, 0x20C620C620C620C6,  // 0x00004450 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F6B594A0F20C6, 0x20C620C620C620C6,  // 0x00004470 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x41CD525141CD20C6, 0x20C620C620C620C6,  // 0x00004490 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F739B4A0F20C6, 0x20C620C620C620C6,  // 0x000044B0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x39CD4A0F39CD20C6, 0x20C620C620C620C6,  // 0x000044D0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F7BDD4A0F20C6, 0x20C620C620C620C6,  // 0x000044F0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x398B41CD398B20C6, 0x20C620C620C620C6,  // 0x00004510 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F8C1F4A0F20C6, 0x20C620C620C620C6,  // 0x00004530 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x3149318B314920C6, 0x20C620C620C620C6,  // 0x00004550 
	0x4A0F4A0F420F41CD, 0x39CD318B29492107, 0x4A0F94A34A0F2107, 0x2949318B39CD41CD,  // 0x00004570 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00004590 
	0x62D55AD55A935A93, 0x52514A0F39CD318B, 0x4A0F9CA54A0F318B, 0x41CF4A5152935A93,  // 0x000045B0 
	0x5AD55AD562D56315, 0x63176B597359739B, 0x7BDD83DD7BDD739B, 0x73596B596B176315,  // 0x000045D0 
	0x4A0F4A0F4A0F4A0F, 0x41CD39CD318B2949, 0x4A0F94A34A0F2107, 0x2949318B39CD41CD,  // 0x000045F0 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00004610 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F8C614A0F20C6, 0x20C620C620C620C6,  // 0x00004630 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x2949318B314920C6, 0x20C620C620C620C6,  // 0x00004650 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F83DD4A0F20C6, 0x20C620C620C620C6,  // 0x00004670 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x314B39CD398B20C6, 0x20C620C620C620C6,  // 0x00004690 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F7B9B4A0F20C6, 0x20C620C620C620C6,  // 0x000046B0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x398B4A0F39CD20C6, 0x20C620C620C620C6,  // 0x000046D0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F73594A0F20C6, 0x20C620C620C620C6,  // 0x000046F0 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x41CD525141CD20C6, 0x20C620C620C620C6,  // 0x00004710 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F6B174A0F20C6, 0x20C620C620C620C6,  // 0x00004730 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x420F5A934A0F20C6, 0x20C620C620C620C6,  // 0x00004750 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F62D54A0F20C6, 0x20C620C620C620C6,  // 0x00004770 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x4A0F5AD54A0F20C6, 0x20C620C620C620C6,  // 0x00004790 
};

u64 _jyasinzou_room_2_tex_000047B0[] = 
{
	0x57030317032E5456, 0x2E343F4634460303, 0x1717031725030303, 0x3030261A24301717,  // 0x000047B0 
	0x0303030317261A1A, 0x6CB324245D465403, 0x0317252525250303, 0x0303300325460303,  // 0x000047D0 
	0x0303301A03032E03, 0x5703245D25171703, 0x0325171703252503, 0x30031A0303300303,  // 0x000047F0 
	0x0346031A1A6C2603, 0x1A4634523F031A03, 0x031A03251754301A, 0x54032E033017032E,  // 0x00004810 
	0x1A2E031A031A5717, 0x3F03173F34260303, 0x03030330301A5C03, 0x2E571A2E1A1A3054,  // 0x00004830 
	0x172603171A173F17, 0x3003030324252530, 0x0303170317302653, 0x03030303031A1A30,  // 0x00004850 
	0x3F242A2446033825, 0x030303031724252A, 0x5403252530172503, 0x262603032503253C,  // 0x00004870 
	0x4646440317172503, 0x2A54033003680325, 0x0317030303305403, 0x03031A030317033F,  // 0x00004890 
	0x253F03302E031717, 0x1A0317031A173803, 0x2E03031A172E306C, 0x3026301A30033C54,  // 0x000048B0 
	0x26033C1A2E031A03, 0x30262E2E2E30031A, 0x2E261A0354302E49, 0x6C03302A303C2E86,  // 0x000048D0 
	0x171A251725540344, 0x2630035C1A035430, 0x0354300303171A30, 0x1A031725244B0330,  // 0x000048F0 
	0x25301A4B25031A03, 0x1A862E1730251A26, 0x2E03031703030303, 0x030317460303245D,  // 0x00004910 
	0x2E2E03543C031A03, 0x3049544903466CA7, 0x0354920317305403, 0x25032A2546030324,  // 0x00004930 
	0x1A541A033025306C, 0x03032E2E2E25036C, 0xA757032E54030303, 0x3054035425305C49,  // 0x00004950 
	0x0303540303305703, 0xAC1A572E2E494B03, 0x6CA7545403031754, 0x2E1A545403266CA7,  // 0x00004970 
	0x6C1A251A301A3057, 0x576C6C6C032E0346, 0x306CA703171A037E, 0x6CAC1A2E6CAC036C,  // 0x00004990 
	0x1A1A30301A170354, 0x57572E1730031A54, 0x3C0325300330302E, 0x576C2E03546C2E30,  // 0x000049B0 
	0x03171A0303031717, 0x0303300317172503, 0x265D462A46030354, 0x25576C3054302E1A,  // 0x000049D0 
	0x2603170317250317, 0x1703030303173C30, 0x462A34034B170317, 0x1703031A03170330,  // 0x000049F0 
	0x1A1A03251717031A, 0x2E032A2A301A0330, 0x462A033C251A0326, 0x030325172E300303,  // 0x00004A10 
	0x3C30173030253030, 0x2E6C2E2E54031A46, 0x2554304603032E1A, 0x5426030330260303,  // 0x00004A30 
	0x3025171A461A302E, 0x03306C031A035424, 0x032530031703572E, 0x1A2E3C262530171A,  // 0x00004A50 
	0x301A030317032626, 0x5425030317174B46, 0x30173C03031A3054, 0x3017261A03031703,  // 0x00004A70 
	0x03572625172E546C, 0x0317030317172A17, 0x033025254654032E, 0x0317542503030303,  // 0x00004A90 
	0x03032E2E2E666C1A, 0x541A54305417541A, 0x2EAC260317030303, 0x260303300303031A,  // 0x00004AB0 
	0x6C30036C571A6C2E, 0x6C1A03A7492E1730, 0xAC576C2E25033026, 0x0303030303170326,  // 0x00004AD0 
	0x2E2E1AAC2E7E302E, 0x6C1A1A1A6C493046, 0x1A496CAC2E2E3030, 0x5CAC031A2E030303,  // 0x00004AF0 
	0x4B03541A2E572E54, 0x2E26032A2E6C254B, 0x302E30542EAC2E03, 0x541A66261A5C5C03,  // 0x00004B10 
	0x6C031717302E1A03, 0x036C03172646D030, 0x2517030303030303, 0x250330170303301A,  // 0x00004B30 
	0x172E4B1717542603, 0x17031A0303241717, 0x1717170303031717, 0x032A033025170303,  // 0x00004B50 
	0x03265C543F17032E, 0x26302A0326171703, 0x0303030303172E03, 0x0330030354030303,  // 0x00004B70 
	0x2E54262E30174B49, 0x261A540317030330, 0x260330030303261A, 0x03262E03032E0303,  // 0x00004B90 
};

u64 _jyasinzou_room_2_tex_00004BB0[] = 
{
	0x43437F7F36363636, 0x3636364343364343, 0x4343364343434336, 0x36434343437B437B,  // 0x00004BB0 
	0x43437B437B7B7B43, 0x7B7B7B7B437B4343, 0x4343434343434336, 0x434343437B437B43,  // 0x00004BD0 
	0xB7B7B7B76A7E5AB7, 0x6A4E6A6A7EB7B76A, 0xB76A4E7E6AB7B76A, 0x4EB76AB76A6A5A6A,  // 0x00004BF0 
	0xB7B76A891A033C7E, 0x1A1A1A1A5A5A4E5A, 0xB7B7B7035A5A6A4E, 0x6A6A6A5A5A6A6A7E,  // 0x00004C10 
	0x5757575757241A1A, 0x1A6A572E246A1A1A, 0x1A572E6A571A2E2E, 0x5A1A1A1A572E6A57,  // 0x00004C30 
	0x1A2E2E5A44444403, 0x44444444261A5A2E, 0x2E2E5A242E26266A, 0x1A1A26261A261A6A,  // 0x00004C50 
	0x5757571A571A1A1A, 0x1A6A2E1A1A1A1A1A, 0x1A2E1A2E1A2E572E, 0x5A1A1A1A2E1A5A1A,  // 0x00004C70 
	0x2E572E5A26444403, 0x24444444032E5A2E, 0x2E2E2E251A26261A, 0x5A251A1A26261A6A,  // 0x00004C90 
	0x1A572E5757571A57, 0x2E575757571A572E, 0x575757575A5A5A1A, 0x5A572E575757575A,  // 0x00004CB0 
	0x5A5A1A2E5A034444, 0x6144442603035A26, 0x262E26261A26262E, 0x6A1A1A2E262E2625,  // 0x00004CD0 
	0x245D3F2424245D5D, 0x24242424245D5D24, 0x2424243F3F243F24, 0x3F5D242424243F3F,  // 0x00004CF0 
	0x243F24243F343434, 0x3952342424242424, 0x2424242434245D5D, 0x5D34345D34345D5D,  // 0x00004D10 
	0x1F1F141415151515, 0x1515151415151515, 0x1514151414141435, 0x15151414141F1F1F,  // 0x00004D30 
	0x1414141414141414, 0x1414141415141515, 0x1515141414151514, 0x1514151514151414,  // 0x00004D50 
	0x1414326732323232, 0x3232326735353267, 0x3267673567323267, 0x356732676732151F,  // 0x00004D70 
	0x1535353535151415, 0x3535353567353535, 0x3232321535356767, 0x6767673535676715,  // 0x00004D90 
	0x1435040C040C040C, 0x0C0C0C0C350F0F0C, 0x0F0C6B0C0C0F6B0C, 0x0C0F6B0C0C040415,  // 0x00004DB0 
	0x6B6B6B6B32323235, 0x323232326B0C6B6B, 0x6B6B04356B6B6B0F, 0x0F0F6B6B0F6B0C0F,  // 0x00004DD0 
	0x1404190419190404, 0x040404040C0C0C0C, 0x0C040C0404040404, 0x04040C0404191935,  // 0x00004DF0 
	0x046B04040C6B6B35, 0x356B6B6B0C040404, 0x0404040C0C0C0C0C, 0x0C0C0C0C040C0C0C,  // 0x00004E10 
	0x152D010909091904, 0x1919191919041919, 0x1919191919091904, 0x1904191909093132,  // 0x00004E30 
	0x191E191919046B6B, 0x356B6B0404041904, 0x0419041904041919, 0x0404041904191904,  // 0x00004E50 
	0x1547180700010001, 0x4700010101474701, 0x0101010000010001, 0x010101090000000C,  // 0x00004E70 
	0x0000087201093119, 0x6B6B3131721E1E72, 0x1E31317231310909, 0x471919091909093E,  // 0x00004E90 
	0x0407070A0A0A0A01, 0x0701010901010909, 0x072007000A070707, 0x0701200100500832,  // 0x00004EB0 
	0x070108080007001E, 0x012019011E200931, 0x010101091E094707, 0x0708010409500000,  // 0x00004ED0 
	0x040A070A07640720, 0x010101090107091E, 0x2020200720200020, 0x0101640000200809,  // 0x00004EF0 
	0x080000080A072000, 0x0101041E201E0104, 0x1E09041E1E040909, 0x060D060D0D00070D,  // 0x00004F10 
	0x1007070101012001, 0x1E1E1E1E1E201E09, 0x6420206420010120, 0x200920640064201E,  // 0x00004F30 
	0x08086400091E1E1E, 0x1E20081E1E010901, 0x1E041E101E1E0907, 0x0A0D0D0D0D000807,  // 0x00004F50 
	0x040A20002001011E, 0x0109091E01011E01, 0x0120200001200120, 0x006464202020001E,  // 0x00004F70 
	0x0008002020201E1E, 0x1E1E041E1E1E0404, 0x1E1E1E1E041E0707, 0x08080809200D0808,  // 0x00004F90 
	0x04040A0101070109, 0x1E1E1E0120200120, 0x2000200000200020, 0x0120202020202004,  // 0x00004FB0 
	0x1E1E201E011E1E1E, 0x1E1E1E1E1E1E1E1E, 0x1E1E1E1E09090708, 0x0D0D0D0D0D0A0007,  // 0x00004FD0 
	0x040707200701071E, 0x01201E0120201E20, 0x0000000000002000, 0x2020012020000004,  // 0x00004FF0 
	0x0020201E1E201E1E, 0x1E1E041E1E1E1E1E, 0x001E1E1E01010A0A, 0x080D070720000D00,  // 0x00005010 
	0x04070A0000070020, 0x202020200A000020, 0x2000000000200020, 0x010101011E000004,  // 0x00005030 
	0x00001E00001E1E1E, 0x1E1E1E1E1E1E1E1E, 0x1E1E1E1E01090A08, 0x0D0D0D0D2007080D,  // 0x00005050 
	0x04070707070A0A07, 0x07070A0A0A0A0A20, 0x0000000808080808, 0x0000000000000004,  // 0x00005070 
	0x000000000000001E, 0x001E1E1E1E1E1E1E, 0x1E1E1E2001012008, 0x0D0D20200D000A0A,  // 0x00005090 
	0x0407070707070707, 0x07070707070A0707, 0x0A0A080D0808080A, 0x080A0A0A0A002004,  // 0x000050B0 
	0x002008001E001E1E, 0x1E1E001E1E1E1E1E, 0x1E1E001E20012007, 0x0D0D0D0D00080808,  // 0x000050D0 
	0x1007070707070707, 0x07070707070A0A0A, 0x07080808080A0A0A, 0x0A0A0A0A0A640104,  // 0x000050F0 
	0x6401200000000000, 0x0000000000001E1E, 0x1E00000020010008, 0x080D08200000080A,  // 0x00005110 
	0x0407070707070707, 0x0707070707070907, 0x070A070A0A070A07, 0x0A0A0A0A0A070104,  // 0x00005130 
	0x0901016401200000, 0x0000000000000000, 0x0000002020202000, 0x080D0D0D0D00080A,  // 0x00005150 
	0x0407070707070709, 0x07070707070A0707, 0x0007070A07070707, 0x0707070707070909,  // 0x00005170 
	0x0107070707010101, 0x0101012020002020, 0x20201E0720072008, 0x0D0D0D0D000A0D0D,  // 0x00005190 
	0x0407070A07070709, 0x0909070907070920, 0x07000A0A070A0A0A, 0x0A0A0A0A0A080A04,  // 0x000051B0 
	0x070101640A0A0A64, 0x07200A070A200120, 0x201E091E09040407, 0x200A04090D0D0D0A,  // 0x000051D0 
	0x04080A070A0A0A07, 0x0A070707070A070A, 0x0A000A000A0A070A, 0x070A0A0A0A070709,  // 0x000051F0 
	0x640A0A640A640A64, 0x0A010A0709090109, 0x010109070707070A, 0x080D0D0D000D0D0D,  // 0x00005210 
	0x09080A0A070A0A09, 0x0709070907070A07, 0x0A070A0A00080A08, 0x070A0707070A0709,  // 0x00005230 
	0x0A01010901090909, 0x0901010101090901, 0x0909010909070708, 0x640D0D0D0D0D0D0D,  // 0x00005250 
	0x04080A0A07070707, 0x0707070907070907, 0x0707070707070707, 0x0707090909040710,  // 0x00005270 
	0x070707070A0A0A0A, 0x0A640A6409010707, 0x0707070707070A08, 0x0D0D0D0D0D0D0D0D,  // 0x00005290 
	0x040D0D07070A0A07, 0x0709070909070701, 0x2020202020202020, 0x0101090909090910,  // 0x000052B0 
	0x0709070A070A0A0A, 0x0A07070707070909, 0x0907090707070008, 0x080D0D0D0D0D0D0D,  // 0x000052D0 
	0x0908080808070A07, 0x07070A0700000000, 0x0000000020000020, 0x2020070909040910,  // 0x000052F0 
	0x0909070920072020, 0x2000002001090909, 0x0909072001200708, 0x0D0D0D0D0D0D0D0D,  // 0x00005310 
	0x040D0D0708080D08, 0x0807202020200000, 0x2020200009070907, 0x0704090109070710,  // 0x00005330 
	0x0707040904091E09, 0x0901010101090109, 0x0720202000200000, 0x0D0D0D0D0D0D0D0D,  // 0x00005350 
	0x1004070707090404, 0x0432043204100404, 0x1004100410040432, 0x100404101032101F,  // 0x00005370 
	0x1032101032323210, 0x3210101010101010, 0x3210103210320404, 0x0404040909090904,  // 0x00005390 
};

u64 _jyasinzou_room_2_tex_000053B0[] = 
{
	0x8929492941103851, 0x31311131015388CD, 0x8875111515153533, 0x5675778499999066,  // 0x000053B0 
	0x8924299919138011, 0x131114445003336C, 0x1115111111111377, 0x3315334491999948,  // 0x000053D0 
	0x6499493941481844, 0x441411145131000C, 0x2221111114111021, 0x2115613144444926,  // 0x000053F0 
	0x8424494914434544, 0x444444054411112B, 0x2103311113300310, 0x0021640422092922,  // 0x00005410 
	0x8999444914311111, 0x1212304000120128, 0x4233311133A11A2A, 0x4110640209499940,  // 0x00005430 
	0x8922414111313310, 0x1010111111101018, 0x203777333333A73A, 0x7A71003229229994,  // 0x00005450 
	0x8494009143314111, 0x1141101024424416, 0x2402020222222222, 0x2220000102999990,  // 0x00005470 
	0x6423941110110010, 0x0022022242202248, 0x0225000202222222, 0x2222030124429993,  // 0x00005490 
	0x8020002403033310, 0x1110122442222226, 0x5550000000000224, 0x2222010012202060,  // 0x000054B0 
	0x8016680660036836, 0x8666663111211118, 0x3766000000007721, 0x1300336330306668,  // 0x000054D0 
	0x8006000630013103, 0x0666033111411338, 0x731033301033A311, 0x1111000311030018,  // 0x000054F0 
	0x8366680607011113, 0x1033311444444118, 0x13031001122A7341, 0x1113336313300020,  // 0x00005510 
	0xC063660333131411, 0x1330341194411338, 0x3030003000307A11, 0x1111336011000216,  // 0x00005530 
	0x8666606665751511, 0x1773319119411338, 0x3606703313A37311, 0x1113336310002006,  // 0x00005550 
	0xC666600066311113, 0x0710021444005558, 0x5660666566775533, 0x113A006022202426,  // 0x00005570 
	0xC066066666751111, 0x330002322423755B, 0x55686575777755A3, 0xA3A7300020202216,  // 0x00005590 
	0xC060004001491914, 0x4220222444007558, 0x55866557757555A3, 0x3A37A00022234226,  // 0x000055B0 
	0xC660002420219141, 0x4492212144101358, 0x566667A7A755557A, 0x73A733002A2222A6,  // 0x000055D0 
	0xC660244222419144, 0x4442224212122158, 0x5566577777755577, 0x3775A07322AA2126,  // 0x000055F0 
	0xC660022420349414, 0x4444424224415558, 0x575865A7A77A5553, 0x37A5230A22222A08,  // 0x00005610 
	0xC863222207224141, 0x4444224442250118, 0x15576777777757A7, 0x7775703022222276,  // 0x00005630 
	0xC660042202244144, 0x0242222204041418, 0x13576777777A5577, 0x7777202A22A0AA06,  // 0x00005650 
	0xCC60429410044141, 0x1024202214101118, 0x1372A7A7A7755577, 0x5757720A24423078,  // 0x00005670 
	0xC866024220244414, 0x1242444202242915, 0x113230737A755575, 0x7557021A42441776,  // 0x00005690 
	0xC866002206603331, 0x7121200144221915, 0x11370330A7555555, 0x757521004A927308,  // 0x000056B0 
	0xC866002060677333, 0x6700013001300198, 0x1157767667655B55, 0x5556021322437768,  // 0x000056D0 
	0xC806002055555555, 0x8557303310030118, 0x3135755555888855, 0x7557010323247668,  // 0x000056F0 
	0xC806000606677775, 0x555577550637611B, 0x115755555558B853, 0x7356010323416608,  // 0x00005710 
	0xC600002035657555, 0x856755573776631C, 0x8B3775555685885A, 0x777670030411666B,  // 0x00005730 
	0xC806000065555555, 0x555565575776611B, 0x3585555558585873, 0x3332010402136008,  // 0x00005750 
	0xC600202060631777, 0x56666677550663BB, 0x3355588885855831, 0x3200100001130868,  // 0x00005770 
	0xD842022104224113, 0x60008023367585BC, 0x55B88B8858856871, 0x0105207030330036,  // 0x00005790 
	0xDDCC8888888B8888, 0x8B8CCBC688CCBDDD, 0xDBBBBBBBBBBB8C88, 0x88BDC88B8B88C8BB,  // 0x000057B0 
	0xDC20222222206320, 0x200602201020048D, 0x833758B85555A311, 0x4400510000011008,  // 0x000057D0 
	0xC840224222228000, 0x021020111031044B, 0x1111555855553031, 0x1158503000330300,  // 0x000057F0 
	0xC200242222020000, 0x0101012130002498, 0x1511355885557111, 0x1110533036003300,  // 0x00005810 
	0xC010422021222021, 0x2222444043114448, 0x19114755B5537733, 0x3138033100013136,  // 0x00005830 
	0xC010224204222002, 0x2224424242104958, 0x99914775B8731331, 0x3335730006606600,  // 0x00005850 
	0xB002224222242020, 0x1222444494949558, 0x9999207686500333, 0x3130700066006636,  // 0x00005870 
	0xC300022010000000, 0x212444444442445B, 0x4494000677733033, 0x1103331060002166,  // 0x00005890 
	0xC000202300100060, 0x301122201033190B, 0x9999103075631333, 0x3310730203330166,  // 0x000058B0 
	0xC030220300000606, 0x0302311213030778, 0x1441401367733077, 0x3735633000110160,  // 0x000058D0 
	0xC100423730060060, 0x300100038033141B, 0x4444130378577357, 0x3575777401041906,  // 0x000058F0 
	0xB202412733000006, 0x3001033103317148, 0x1411203755557777, 0x5375676002141060,  // 0x00005910 
	0x8022222707767766, 0x030120000337394B, 0x0744101533535366, 0x7776566004026911,  // 0x00005930 
	0x82020A0377767065, 0x3330331377AA3346, 0x4114203137853578, 0x5685526629499309,  // 0x00005950 
	0xC007773755555356, 0xA33A3773363AAA35, 0x44A1655553455767, 0x5852556029999140,  // 0x00005970 
	0x8231377576657757, 0x733173731AA33315, 0x1413335555855588, 0x5555850044463944,  // 0x00005990 
	0x8857707655573373, 0x3131131373333338, 0x5535755555555555, 0x5555660499999210,  // 0x000059B0 
	0x8005070573573353, 0x1111113133733118, 0x1335535555855555, 0x1555772249003191,  // 0x000059D0 
	0x8021501333332113, 0x3111131377775118, 0x1151155555555555, 0x5555762499993049,  // 0x000059F0 
	0x8000022000222223, 0x1114444411111118, 0x1111111515555555, 0x5553773499339122,  // 0x00005A10 
	0x8000000000000200, 0x2249444242222138, 0x1341515555155555, 0x5515373099991444,  // 0x00005A30 
	0xC000000000000222, 0x0444422222222A78, 0xA731111111111155, 0x5111371449431142,  // 0x00005A50 
	0x8000000000000060, 0x0202202022222078, 0x677A731111111111, 0x1113333149999142,  // 0x00005A70 
	0x8000000600000200, 0x1002000000000066, 0x7000077777733133, 0x3350303489991299,  // 0x00005A90 
	0x8002000666060063, 0x0122022222222428, 0x077A222A03202373, 0x3565688032269992,  // 0x00005AB0 
	0x8420222020000202, 0x2121220202222006, 0xA22A2A2A27206676, 0x7760000249991999,  // 0x00005AD0 
	0x6422022606060020, 0x2022142402000206, 0x2776766667777667, 0x66766004A9999999,  // 0x00005AF0 
	0x8422000000060060, 0x000000000066680C, 0x000022222A2A6700, 0x0000002499999999,  // 0x00005B10 
	0x8990022006066007, 0x333333337766666C, 0x0602022220000066, 0x6060001449999999,  // 0x00005B30 
	0x6444402000201111, 0x111131133306686C, 0x6606303331137666, 0x6603730499999999,  // 0x00005B50 
	0x8990449440333311, 0x333160600867600C, 0x0086865667777676, 0x0333131199999999,  // 0x00005B70 
	0xC80006888B8B8C88, 0xC8C8C88BC88CCBBD, 0xCBCCBBBCBCCCCCCC, 0xBCCBCB8888866668,  // 0x00005B90 
};


