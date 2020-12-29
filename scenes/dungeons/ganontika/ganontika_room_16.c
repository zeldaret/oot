#include <ultra64.h>
#include <z64.h>
#include "ganontika_room_16.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "ganontika_scene.h"



SCmdEchoSettings _ganontika_room_16_set0000_cmd00 = { 0x16, 0, { 0 }, 0x06 }; // 0x0000
SCmdRoomBehavior _ganontika_room_16_set0000_cmd01 = { 0x08, 0x01, 0x00000100 }; // 0x0008
SCmdSkyboxDisables _ganontika_room_16_set0000_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0010
SCmdTimeSettings _ganontika_room_16_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _ganontika_room_16_set0000_cmd04 = { 0x0A, 0, (u32)&_ganontika_room_16_meshHeader_000000B0 }; // 0x0020
SCmdObjectList _ganontika_room_16_set0000_cmd05 = { 0x0B, 0x05, (u32)_ganontika_room_16_objectList_00000040 }; // 0x0028
SCmdActorList _ganontika_room_16_set0000_cmd06 = { 0x01, 0x06, (u32)_ganontika_room_16_actorList_0000004C }; // 0x0030
SCmdEndMarker _ganontika_room_16_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _ganontika_room_16_objectList_00000040[] = 
{
	OBJECT_DEMO_KEKKAI,
	OBJECT_BOX,
	OBJECT_HEAVY_OBJECT,
	OBJECT_SHOPNUTS,
	OBJECT_DEKUNUTS,
};

ActorEntry _ganontika_room_16_actorList_0000004C[6] = 
{
	{ ACTOR_EN_SHOPNUTS, -193, -240, 694, 0, 13471, 0, 0x0000 }, //0x0000004C 
	{ ACTOR_EN_SHOPNUTS, 92, -240, 969, 0, -27307, 0, 0x0005 }, //0x0000005C 
	{ ACTOR_EN_SHOPNUTS, -189, -240, 865, 0, 21845, 0, 0x0007 }, //0x0000006C 
	{ ACTOR_EN_SHOPNUTS, -84, -240, 970, 0, 27307, 0, 0x0006 }, //0x0000007C 
	{ ACTOR_EN_SHOPNUTS, 210, -240, 870, 0, -21845, 0, 0x0008 }, //0x0000008C 
	{ ACTOR_EN_ELF, -1, -142, 761, 0, 0, 0, 0x0004 }, //0x0000009C 
};

static u32 padAC = 0;

MeshHeader2 _ganontika_room_16_meshHeader_000000B0 = { { 2 }, 0x03, (u32)&_ganontika_room_16_meshDListEntry_000000BC, (u32)&(_ganontika_room_16_meshDListEntry_000000BC) + sizeof(_ganontika_room_16_meshDListEntry_000000BC) };

MeshEntry2 _ganontika_room_16_meshDListEntry_000000BC[3] = 
{
	{ 0, -123, 775, 322, (u32)_ganontika_room_16_dlist_000006F0, 0 },
	{ 0, -240, 775, 299, (u32)_ganontika_room_16_dlist_00000E80, 0 },
	{ 0, -123, 398, 192, (u32)_ganontika_room_16_dlist_00001288, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

Vtx_t _ganontika_room_16_vertices_000000F0[4] = 
{
	 { -115, -240, 1052, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000000F0
	 { -115, -180, 1052, 0, 0, 0, 169, 154, 126, 255 }, // 0x00000100
	 { 115, -180, 1052, 0, 8192, 0, 169, 154, 126, 255 }, // 0x00000110
	 { 115, -240, 1052, 0, 8192, 1024, 100, 89, 67, 255 }, // 0x00000120
};

Vtx_t _ganontika_room_16_vertices_00000130[4] = 
{
	 { -115, -180, 1052, 0, 2939, 2048, 169, 154, 126, 255 }, // 0x00000130
	 { -115, -5, 1052, 0, 2939, -2427, 35, 31, 25, 255 }, // 0x00000140
	 { 115, -5, 1052, 0, 0, -2427, 35, 31, 25, 255 }, // 0x00000150
	 { 115, -180, 1052, 0, 0, 2048, 169, 154, 126, 255 }, // 0x00000160
};

Vtx_t _ganontika_room_16_vertices_00000170[15] = 
{
	 { 80, -240, 498, 0, 3072, 0, 69, 62, 48, 255 }, // 0x00000170
	 { 80, -112, 498, 0, -212, 0, 115, 102, 78, 255 }, // 0x00000180
	 { 60, -120, 498, 0, 0, 512, 100, 89, 67, 255 }, // 0x00000190
	 { 60, -240, 498, 0, 3072, 512, 100, 89, 67, 255 }, // 0x000001A0
	 { -28, -60, 498, 0, 173, 512, 115, 102, 78, 255 }, // 0x000001B0
	 { -20, -80, 498, 0, -39, 0, 69, 62, 48, 255 }, // 0x000001C0
	 { 20, -80, 498, 0, -1063, 0, 69, 62, 48, 255 }, // 0x000001D0
	 { 28, -60, 498, 0, -1275, 512, 115, 102, 78, 255 }, // 0x000001E0
	 { -80, -112, 498, 0, 848, 512, 115, 102, 78, 255 }, // 0x000001F0
	 { -60, -120, 498, 0, 636, 0, 100, 89, 67, 255 }, // 0x00000200
	 { -28, -60, 498, 0, -1024, 512, 115, 102, 78, 255 }, // 0x00000210
	 { -80, -112, 498, 0, -2772, 512, 115, 102, 78, 255 }, // 0x00000220
	 { -80, -240, 498, 0, 512, 512, 69, 62, 48, 255 }, // 0x00000230
	 { -60, -240, 498, 0, 512, 0, 100, 89, 67, 255 }, // 0x00000240
	 { -60, -120, 498, 0, -2560, 0, 100, 89, 67, 255 }, // 0x00000250
};

Vtx_t _ganontika_room_16_vertices_00000260[4] = 
{
	 { -115, -240, 498, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00000260
	 { -115, -180, 498, 0, 0, 0, 134, 119, 89, 255 }, // 0x00000270
	 { -277, -180, 660, 0, 8192, 0, 169, 154, 126, 255 }, // 0x00000280
	 { -277, -240, 660, 0, 8192, 1024, 100, 89, 67, 255 }, // 0x00000290
};

Vtx_t _ganontika_room_16_vertices_000002A0[4] = 
{
	 { -115, -180, 498, 0, 2939, 2048, 134, 119, 89, 255 }, // 0x000002A0
	 { -115, -5, 498, 0, 2939, -2427, 35, 31, 25, 255 }, // 0x000002B0
	 { -277, -5, 660, 0, 0, -2427, 35, 31, 25, 255 }, // 0x000002C0
	 { -277, -180, 660, 0, 0, 2048, 169, 154, 126, 255 }, // 0x000002D0
};

Vtx_t _ganontika_room_16_vertices_000002E0[4] = 
{
	 { -277, -240, 660, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000002E0
	 { -277, -180, 660, 0, 0, 0, 169, 154, 126, 255 }, // 0x000002F0
	 { -277, -180, 889, 0, 8192, 0, 169, 154, 126, 255 }, // 0x00000300
	 { -277, -240, 889, 0, 8192, 1024, 100, 89, 67, 255 }, // 0x00000310
};

Vtx_t _ganontika_room_16_vertices_00000320[4] = 
{
	 { -277, -180, 660, 0, 2939, 2048, 169, 154, 126, 255 }, // 0x00000320
	 { -277, -5, 660, 0, 2939, -2427, 35, 31, 25, 255 }, // 0x00000330
	 { -277, -5, 889, 0, 0, -2427, 35, 31, 25, 255 }, // 0x00000340
	 { -277, -180, 889, 0, 0, 2048, 169, 154, 126, 255 }, // 0x00000350
};

Vtx_t _ganontika_room_16_vertices_00000360[4] = 
{
	 { -277, -240, 889, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00000360
	 { -277, -180, 889, 0, 0, 0, 169, 154, 126, 255 }, // 0x00000370
	 { -115, -180, 1052, 0, 8192, 0, 169, 154, 126, 255 }, // 0x00000380
	 { -115, -240, 1052, 0, 8192, 1024, 69, 62, 48, 255 }, // 0x00000390
};

Vtx_t _ganontika_room_16_vertices_000003A0[4] = 
{
	 { -277, -180, 889, 0, 2939, 2048, 169, 154, 126, 255 }, // 0x000003A0
	 { -277, -5, 889, 0, 2939, -2427, 35, 31, 25, 255 }, // 0x000003B0
	 { -115, -5, 1052, 0, 0, -2427, 35, 31, 25, 255 }, // 0x000003C0
	 { -115, -180, 1052, 0, 0, 2048, 169, 154, 126, 255 }, // 0x000003D0
};

Vtx_t _ganontika_room_16_vertices_000003E0[4] = 
{
	 { 115, -240, 1052, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000003E0
	 { 115, -180, 1052, 0, 0, 0, 169, 154, 126, 255 }, // 0x000003F0
	 { 277, -180, 889, 0, 8192, 0, 169, 154, 126, 255 }, // 0x00000400
	 { 277, -240, 889, 0, 8192, 1024, 100, 89, 67, 255 }, // 0x00000410
};

Vtx_t _ganontika_room_16_vertices_00000420[4] = 
{
	 { 115, -180, 1052, 0, 2939, 2048, 169, 154, 126, 255 }, // 0x00000420
	 { 115, -5, 1052, 0, 2939, -2427, 35, 31, 25, 255 }, // 0x00000430
	 { 277, -5, 889, 0, 0, -2427, 35, 31, 25, 255 }, // 0x00000440
	 { 277, -180, 889, 0, 0, 2048, 169, 154, 126, 255 }, // 0x00000450
};

Vtx_t _ganontika_room_16_vertices_00000460[4] = 
{
	 { 277, -240, 889, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00000460
	 { 277, -180, 889, 0, 0, 0, 169, 154, 126, 255 }, // 0x00000470
	 { 277, -180, 660, 0, 8192, 0, 169, 154, 126, 255 }, // 0x00000480
	 { 277, -240, 660, 0, 8192, 1024, 100, 89, 67, 255 }, // 0x00000490
};

Vtx_t _ganontika_room_16_vertices_000004A0[4] = 
{
	 { 277, -180, 889, 0, 2939, 2048, 169, 154, 126, 255 }, // 0x000004A0
	 { 277, -5, 889, 0, 2939, -2427, 35, 31, 25, 255 }, // 0x000004B0
	 { 277, -5, 660, 0, 0, -2427, 35, 31, 25, 255 }, // 0x000004C0
	 { 277, -180, 660, 0, 0, 2048, 169, 154, 126, 255 }, // 0x000004D0
};

Vtx_t _ganontika_room_16_vertices_000004E0[4] = 
{
	 { 277, -240, 660, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000004E0
	 { 277, -180, 660, 0, 0, 0, 169, 154, 126, 255 }, // 0x000004F0
	 { 115, -180, 498, 0, 8192, 0, 134, 119, 89, 255 }, // 0x00000500
	 { 115, -240, 498, 0, 8192, 1024, 81, 72, 55, 255 }, // 0x00000510
};

Vtx_t _ganontika_room_16_vertices_00000520[4] = 
{
	 { 277, -180, 660, 0, 2939, 2048, 169, 154, 126, 255 }, // 0x00000520
	 { 277, -5, 660, 0, 2939, -2427, 35, 31, 25, 255 }, // 0x00000530
	 { 115, -5, 498, 0, 0, -2427, 35, 31, 25, 255 }, // 0x00000540
	 { 115, -180, 498, 0, 0, 2048, 134, 119, 89, 255 }, // 0x00000550
};

Vtx_t _ganontika_room_16_vertices_00000560[10] = 
{
	 { 0, -5, 775, 0, 1024, 512, 134, 119, 89, 255 }, // 0x00000560
	 { -277, -5, 660, 0, 0, -512, 35, 31, 25, 255 }, // 0x00000570
	 { -115, -5, 498, 0, -1024, 0, 35, 31, 25, 255 }, // 0x00000580
	 { -277, -5, 889, 0, 2048, -512, 35, 31, 25, 255 }, // 0x00000590
	 { -115, -5, 1052, 0, 3072, 0, 35, 31, 25, 255 }, // 0x000005A0
	 { 115, -5, 1052, 0, 3072, 1024, 35, 31, 25, 255 }, // 0x000005B0
	 { 277, -5, 889, 0, 2048, 1536, 35, 31, 25, 255 }, // 0x000005C0
	 { 277, -5, 660, 0, 0, 1536, 35, 31, 25, 255 }, // 0x000005D0
	 { 115, -5, 498, 0, -1024, 1024, 35, 31, 25, 255 }, // 0x000005E0
	 { 0, -5, 498, 0, -1024, 512, 35, 31, 25, 255 }, // 0x000005F0
};

Vtx_t _ganontika_room_16_vertices_00000600[7] = 
{
	 { -60, -120, 498, 0, 636, 0, 100, 89, 67, 255 }, // 0x00000600
	 { -20, -80, 498, 0, -812, 0, 69, 62, 48, 255 }, // 0x00000610
	 { -28, -60, 498, 0, -1024, 512, 115, 102, 78, 255 }, // 0x00000620
	 { 60, -120, 498, 0, -636, 0, 100, 89, 67, 255 }, // 0x00000630
	 { 80, -112, 498, 0, -848, 512, 115, 102, 78, 255 }, // 0x00000640
	 { 20, -80, 498, 0, 812, 0, 69, 62, 48, 255 }, // 0x00000650
	 { 28, -60, 498, 0, 1024, 512, 115, 102, 78, 255 }, // 0x00000660
};

Vtx_t _ganontika_room_16_vertices_00000670[8] = 
{
	 { -277, -240, 498, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000670
	 { 277, -240, 498, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000680
	 { -277, -5, 498, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000690
	 { 277, -5, 498, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006A0
	 { -277, -240, 1052, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006B0
	 { 277, -240, 1052, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006C0
	 { -277, -5, 1052, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006D0
	 { 277, -5, 1052, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006E0
};

Gfx _ganontika_room_16_dlist_000006F0[] =
{
	gsDPPipeSync(), // 0x000006F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000006F8
	gsSPVertex(_ganontika_room_16_vertices_00000670, 8, 0), // 0x00000700
	gsSPCullDisplayList(0, 7), // 0x00000708
	gsDPPipeSync(), // 0x00000710
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000718
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000720
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000728
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00000730
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000738
	gsDPLoadSync(), // 0x00000740
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000748
	gsDPPipeSync(), // 0x00000750
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000758
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000760
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00000768
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
	gsSPVertex(_ganontika_room_16_vertices_000000F0, 4, 0), // 0x000007C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000007C8
	gsDPPipeSync(), // 0x000007D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000007D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000007E0
	gsDPLoadSync(), // 0x000007E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000007F0
	gsDPPipeSync(), // 0x000007F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000800
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000808
	gsSPVertex(_ganontika_room_16_vertices_00000130, 4, 0), // 0x00000810
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000818
	gsDPPipeSync(), // 0x00000820
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000828
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F580), // 0x00000830
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00000838
	gsDPLoadSync(), // 0x00000840
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00000848
	gsDPPipeSync(), // 0x00000850
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x00000858
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00000860
	gsSPVertex(_ganontika_room_16_vertices_00000170, 15, 0), // 0x00000868
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000870
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000878
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0), // 0x00000880
	gsSP1Triangle(11, 13, 14, 0), // 0x00000888
	gsDPPipeSync(), // 0x00000890
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000898
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x000008A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x000008A8
	gsDPLoadSync(), // 0x000008B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000008B8
	gsDPPipeSync(), // 0x000008C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000008C8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000008D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000008D8
	gsDPTileSync(), // 0x000008E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000008E8
	gsDPLoadSync(), // 0x000008F0
	gsDPLoadTLUTCmd(7, 255), // 0x000008F8
	gsDPPipeSync(), // 0x00000900
	gsSPVertex(_ganontika_room_16_vertices_00000260, 4, 0), // 0x00000908
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000910
	gsDPPipeSync(), // 0x00000918
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000920
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000928
	gsDPLoadSync(), // 0x00000930
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000938
	gsDPPipeSync(), // 0x00000940
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000948
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000950
	gsSPVertex(_ganontika_room_16_vertices_000002A0, 4, 0), // 0x00000958
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000960
	gsDPPipeSync(), // 0x00000968
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00000970
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000978
	gsDPLoadSync(), // 0x00000980
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000988
	gsDPPipeSync(), // 0x00000990
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000998
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000009A0
	gsSPVertex(_ganontika_room_16_vertices_000002E0, 4, 0), // 0x000009A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000009B0
	gsDPPipeSync(), // 0x000009B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000009C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000009C8
	gsDPLoadSync(), // 0x000009D0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000009D8
	gsDPPipeSync(), // 0x000009E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000009E8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000009F0
	gsSPVertex(_ganontika_room_16_vertices_00000320, 4, 0), // 0x000009F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000A00
	gsDPPipeSync(), // 0x00000A08
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00000A10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000A18
	gsDPLoadSync(), // 0x00000A20
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000A28
	gsDPPipeSync(), // 0x00000A30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000A38
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000A40
	gsSPVertex(_ganontika_room_16_vertices_00000360, 4, 0), // 0x00000A48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000A50
	gsDPPipeSync(), // 0x00000A58
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000A60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000A68
	gsDPLoadSync(), // 0x00000A70
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000A78
	gsDPPipeSync(), // 0x00000A80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000A88
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000A90
	gsSPVertex(_ganontika_room_16_vertices_000003A0, 4, 0), // 0x00000A98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000AA0
	gsDPPipeSync(), // 0x00000AA8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00000AB0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000AB8
	gsDPLoadSync(), // 0x00000AC0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000AC8
	gsDPPipeSync(), // 0x00000AD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000AD8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000AE0
	gsSPVertex(_ganontika_room_16_vertices_000003E0, 4, 0), // 0x00000AE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000AF0
	gsDPPipeSync(), // 0x00000AF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000B00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000B08
	gsDPLoadSync(), // 0x00000B10
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000B18
	gsDPPipeSync(), // 0x00000B20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000B28
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000B30
	gsSPVertex(_ganontika_room_16_vertices_00000420, 4, 0), // 0x00000B38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000B40
	gsDPPipeSync(), // 0x00000B48
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00000B50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000B58
	gsDPLoadSync(), // 0x00000B60
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000B68
	gsDPPipeSync(), // 0x00000B70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000B78
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000B80
	gsSPVertex(_ganontika_room_16_vertices_00000460, 4, 0), // 0x00000B88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000B90
	gsDPPipeSync(), // 0x00000B98
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000BA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000BA8
	gsDPLoadSync(), // 0x00000BB0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000BB8
	gsDPPipeSync(), // 0x00000BC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000BC8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000BD0
	gsSPVertex(_ganontika_room_16_vertices_000004A0, 4, 0), // 0x00000BD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000BE0
	gsDPPipeSync(), // 0x00000BE8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00000BF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000BF8
	gsDPLoadSync(), // 0x00000C00
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000C08
	gsDPPipeSync(), // 0x00000C10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000C18
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000C20
	gsSPVertex(_ganontika_room_16_vertices_000004E0, 4, 0), // 0x00000C28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000C30
	gsDPPipeSync(), // 0x00000C38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000C40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000C48
	gsDPLoadSync(), // 0x00000C50
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000C58
	gsDPPipeSync(), // 0x00000C60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000C68
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000C70
	gsSPVertex(_ganontika_room_16_vertices_00000520, 4, 0), // 0x00000C78
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000C80
	gsDPPipeSync(), // 0x00000C88
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000C90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_16_tex_00001630), // 0x00000C98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000CA0
	gsDPLoadSync(), // 0x00000CA8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00000CB0
	gsDPPipeSync(), // 0x00000CB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000CC0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000CC8
	gsSPVertex(_ganontika_room_16_vertices_00000560, 10, 0), // 0x00000CD0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00000CD8
	gsSP2Triangles(0, 4, 3, 0, 5, 4, 0, 0), // 0x00000CE0
	gsSP2Triangles(6, 5, 0, 0, 7, 6, 0, 0), // 0x00000CE8
	gsSP2Triangles(7, 0, 8, 0, 0, 9, 8, 0), // 0x00000CF0
	gsSP1Triangle(0, 2, 9, 0), // 0x00000CF8
	gsDPPipeSync(), // 0x00000D00
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F580), // 0x00000D08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00000D10
	gsDPLoadSync(), // 0x00000D18
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00000D20
	gsDPPipeSync(), // 0x00000D28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x00000D30
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00000D38
	gsSPVertex(_ganontika_room_16_vertices_00000600, 7, 0), // 0x00000D40
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000D48
	gsSP1Triangle(6, 5, 4, 0), // 0x00000D50
	gsSPEndDisplayList(), // 0x00000D58
};

Vtx_t _ganontika_room_16_vertices_00000D60[10] = 
{
	 { 0, -240, 775, 0, -88, 1395, 223, 191, 159, 255 }, // 0x00000D60
	 { 277, -240, 889, 0, -203, 3010, 100, 89, 67, 255 }, // 0x00000D70
	 { 277, -240, 660, 0, 973, 2618, 100, 89, 67, 255 }, // 0x00000D80
	 { 115, -240, 1052, 0, -1311, 2455, 69, 62, 48, 255 }, // 0x00000D90
	 { -277, -240, 889, 0, -1149, 171, 100, 89, 67, 255 }, // 0x00000DA0
	 { -115, -240, 1052, 0, -1703, 1280, 69, 62, 48, 255 }, // 0x00000DB0
	 { -277, -240, 660, 0, 27, -220, 100, 89, 67, 255 }, // 0x00000DC0
	 { -115, -240, 498, 0, 1135, 334, 81, 72, 55, 255 }, // 0x00000DD0
	 { 0, -240, 498, 0, 1331, 922, 81, 72, 55, 255 }, // 0x00000DE0
	 { 115, -240, 498, 0, 1527, 1509, 81, 72, 55, 255 }, // 0x00000DF0
};

Vtx_t _ganontika_room_16_vertices_00000E00[8] = 
{
	 { -277, -240, 498, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E00
	 { 277, -240, 498, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E10
	 { -277, -240, 498, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E20
	 { 277, -240, 498, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E30
	 { -277, -240, 1052, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E40
	 { 277, -240, 1052, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E50
	 { -277, -240, 1052, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E60
	 { 277, -240, 1052, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E70
};

Gfx _ganontika_room_16_dlist_00000E80[] =
{
	gsDPPipeSync(), // 0x00000E80
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000E88
	gsSPVertex(_ganontika_room_16_vertices_00000E00, 8, 0), // 0x00000E90
	gsSPCullDisplayList(0, 7), // 0x00000E98
	gsDPPipeSync(), // 0x00000EA0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000EA8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000EB0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000EB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00000EC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000EC8
	gsDPLoadSync(), // 0x00000ED0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000ED8
	gsDPPipeSync(), // 0x00000EE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000EE8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000EF0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000EF8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000F00
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000F08
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000F10
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000F18
	gsSPVertex(_ganontika_room_16_vertices_00000D60, 10, 0), // 0x00000F20
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0), // 0x00000F28
	gsSP2Triangles(4, 5, 0, 0, 6, 4, 0, 0), // 0x00000F30
	gsSP2Triangles(6, 0, 7, 0, 7, 0, 8, 0), // 0x00000F38
	gsSP2Triangles(8, 0, 9, 0, 9, 0, 2, 0), // 0x00000F40
	gsSP1Triangle(3, 0, 5, 0), // 0x00000F48
	gsSPEndDisplayList(), // 0x00000F50
};

Vtx_t _ganontika_room_16_vertices_00000F58[4] = 
{
	 { 60, -120, 498, 0, -341, 0, 158, 142, 111, 255 }, // 0x00000F58
	 { 60, -120, 298, 0, 3072, 0, 5, 5, 5, 255 }, // 0x00000F68
	 { 60, -240, 298, 0, 3072, 1024, 5, 5, 5, 255 }, // 0x00000F78
	 { 60, -240, 498, 0, -341, 1024, 158, 142, 111, 255 }, // 0x00000F88
};

Vtx_t _ganontika_room_16_vertices_00000F98[5] = 
{
	 { 60, -240, 498, 0, 1434, 1229, 81, 72, 55, 255 }, // 0x00000F98
	 { 60, -240, 298, 0, 2458, 887, 5, 5, 5, 255 }, // 0x00000FA8
	 { 0, -240, 498, 0, 1331, 922, 81, 72, 55, 255 }, // 0x00000FB8
	 { -60, -240, 298, 0, 2253, 273, 5, 5, 5, 255 }, // 0x00000FC8
	 { -60, -240, 498, 0, 1229, 614, 81, 72, 55, 255 }, // 0x00000FD8
};

Vtx_t _ganontika_room_16_vertices_00000FE8[12] = 
{
	 { -60, -240, 498, 0, -341, 1024, 158, 142, 111, 255 }, // 0x00000FE8
	 { -60, -240, 298, 0, 3072, 1024, 5, 5, 5, 255 }, // 0x00000FF8
	 { -60, -120, 298, 0, 3072, 0, 5, 5, 5, 255 }, // 0x00001008
	 { -60, -120, 498, 0, -341, 0, 158, 142, 111, 255 }, // 0x00001018
	 { -60, -120, 298, 0, 3072, 0, 5, 5, 5, 255 }, // 0x00001028
	 { -20, -80, 298, 0, 3072, -341, 5, 5, 5, 255 }, // 0x00001038
	 { -20, -80, 498, 0, -341, -341, 158, 142, 111, 255 }, // 0x00001048
	 { -20, -80, 298, 0, 3072, -341, 5, 5, 5, 255 }, // 0x00001058
	 { 20, -80, 298, 0, 3072, -341, 5, 5, 5, 255 }, // 0x00001068
	 { 20, -80, 498, 0, -341, -341, 158, 142, 111, 255 }, // 0x00001078
	 { 60, -120, 298, 0, 3072, 0, 5, 5, 5, 255 }, // 0x00001088
	 { 60, -120, 498, 0, -341, 0, 158, 142, 111, 255 }, // 0x00001098
};

Vtx_t _ganontika_room_16_vertices_000010A8[4] = 
{
	 { 115, -5, 498, 0, 2939, -2427, 35, 31, 25, 255 }, // 0x000010A8
	 { -115, -5, 498, 0, 0, -2427, 35, 31, 25, 255 }, // 0x000010B8
	 { -28, -60, 498, 0, 1107, -1024, 169, 154, 126, 255 }, // 0x000010C8
	 { 28, -60, 498, 0, 1832, -1024, 169, 154, 126, 255 }, // 0x000010D8
};

Vtx_t _ganontika_room_16_vertices_000010E8[4] = 
{
	 { -80, -180, 498, 0, 1242, 0, 169, 154, 126, 255 }, // 0x000010E8
	 { -115, -180, 498, 0, 0, 0, 169, 154, 126, 255 }, // 0x000010F8
	 { -115, -240, 498, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00001108
	 { -80, -240, 498, 0, 1242, 1024, 100, 89, 67, 255 }, // 0x00001118
};

Vtx_t _ganontika_room_16_vertices_00001128[5] = 
{
	 { -115, -5, 498, 0, 0, -2427, 35, 31, 25, 255 }, // 0x00001128
	 { -80, -112, 498, 0, 446, 300, 169, 154, 126, 255 }, // 0x00001138
	 { -28, -60, 498, 0, 1107, -1024, 169, 154, 126, 255 }, // 0x00001148
	 { -115, -180, 498, 0, 0, 2048, 169, 154, 126, 255 }, // 0x00001158
	 { -80, -180, 498, 0, 446, 2048, 169, 154, 126, 255 }, // 0x00001168
};

Vtx_t _ganontika_room_16_vertices_00001178[4] = 
{
	 { 115, -240, 498, 0, 8192, 1024, 81, 72, 55, 255 }, // 0x00001178
	 { 115, -180, 498, 0, 8192, 0, 169, 154, 126, 255 }, // 0x00001188
	 { 80, -180, 498, 0, 6950, 0, 169, 154, 126, 255 }, // 0x00001198
	 { 80, -240, 498, 0, 6950, 1024, 100, 89, 67, 255 }, // 0x000011A8
};

Vtx_t _ganontika_room_16_vertices_000011B8[5] = 
{
	 { 115, -180, 498, 0, 2939, 2048, 169, 154, 126, 255 }, // 0x000011B8
	 { 80, -112, 498, 0, 2494, 300, 169, 154, 126, 255 }, // 0x000011C8
	 { 80, -180, 498, 0, 2494, 2048, 169, 154, 126, 255 }, // 0x000011D8
	 { 115, -5, 498, 0, 2939, -2427, 35, 31, 25, 255 }, // 0x000011E8
	 { 28, -60, 498, 0, 1832, -1024, 169, 154, 126, 255 }, // 0x000011F8
};

Vtx_t _ganontika_room_16_vertices_00001208[8] = 
{
	 { -115, -240, 298, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001208
	 { 115, -240, 298, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001218
	 { -115, -5, 298, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001228
	 { 115, -5, 298, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001238
	 { -115, -240, 498, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001248
	 { 115, -240, 498, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001258
	 { -115, -5, 498, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001268
	 { 115, -5, 498, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001278
};

Gfx _ganontika_room_16_dlist_00001288[] =
{
	gsDPPipeSync(), // 0x00001288
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001290
	gsSPVertex(_ganontika_room_16_vertices_00001208, 8, 0), // 0x00001298
	gsSPCullDisplayList(0, 7), // 0x000012A0
	gsDPPipeSync(), // 0x000012A8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000012B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000012B8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000012C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_16_tex_00002630), // 0x000012C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000012D0
	gsDPLoadSync(), // 0x000012D8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000012E0
	gsDPPipeSync(), // 0x000012E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000012F0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000012F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001300
	gsDPTileSync(), // 0x00001308
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001310
	gsDPLoadSync(), // 0x00001318
	gsDPLoadTLUTCmd(7, 255), // 0x00001320
	gsDPPipeSync(), // 0x00001328
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001330
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001338
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001340
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001348
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001350
	gsSPVertex(_ganontika_room_16_vertices_00000F58, 4, 0), // 0x00001358
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001360
	gsDPPipeSync(), // 0x00001368
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001370
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00001378
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001380
	gsDPLoadSync(), // 0x00001388
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001390
	gsDPPipeSync(), // 0x00001398
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000013A0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000013A8
	gsSPVertex(_ganontika_room_16_vertices_00000F98, 5, 0), // 0x000013B0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000013B8
	gsSP1Triangle(3, 4, 2, 0), // 0x000013C0
	gsDPPipeSync(), // 0x000013C8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000013D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_16_tex_00002630), // 0x000013D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000013E0
	gsDPLoadSync(), // 0x000013E8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000013F0
	gsDPPipeSync(), // 0x000013F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001400
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001408
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001410
	gsDPTileSync(), // 0x00001418
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001420
	gsDPLoadSync(), // 0x00001428
	gsDPLoadTLUTCmd(7, 255), // 0x00001430
	gsDPPipeSync(), // 0x00001438
	gsSPVertex(_ganontika_room_16_vertices_00000FE8, 12, 0), // 0x00001440
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001448
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 6, 0), // 0x00001450
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00001458
	gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0), // 0x00001460
	gsDPPipeSync(), // 0x00001468
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00001470
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001478
	gsDPLoadSync(), // 0x00001480
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001488
	gsDPPipeSync(), // 0x00001490
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001498
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000014A0
	gsSPVertex(_ganontika_room_16_vertices_000010A8, 4, 0), // 0x000014A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000014B0
	gsDPPipeSync(), // 0x000014B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x000014C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x000014C8
	gsDPLoadSync(), // 0x000014D0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000014D8
	gsDPPipeSync(), // 0x000014E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000014E8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000014F0
	gsSPVertex(_ganontika_room_16_vertices_000010E8, 4, 0), // 0x000014F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001500
	gsDPPipeSync(), // 0x00001508
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00001510
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001518
	gsDPLoadSync(), // 0x00001520
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001528
	gsDPPipeSync(), // 0x00001530
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001538
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001540
	gsSPVertex(_ganontika_room_16_vertices_00001128, 5, 0), // 0x00001548
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001550
	gsSP1Triangle(3, 4, 1, 0), // 0x00001558
	gsDPPipeSync(), // 0x00001560
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00001568
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00001570
	gsDPLoadSync(), // 0x00001578
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001580
	gsDPPipeSync(), // 0x00001588
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00001590
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001598
	gsSPVertex(_ganontika_room_16_vertices_00001178, 4, 0), // 0x000015A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000015A8
	gsDPPipeSync(), // 0x000015B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000015B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000015C0
	gsDPLoadSync(), // 0x000015C8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000015D0
	gsDPPipeSync(), // 0x000015D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000015E0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000015E8
	gsSPVertex(_ganontika_room_16_vertices_000011B8, 5, 0), // 0x000015F0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000015F8
	gsSP1Triangle(3, 4, 1, 0), // 0x00001600
	gsSPEndDisplayList(), // 0x00001608
};

static u8 unaccounted1610[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0x80, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0x88, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _ganontika_room_16_tex_00001630[] = 
{
	0x28C5398B4A0D5A91, 0x528F5A8F5A4F5A8F, 0x524F5A4F524F4A0B, 0x39CB41CD524F4A0D,  // 0x00001630 
	0x41CD41CD39CB39CB, 0x314762D36291524F, 0x524F524F5251524F, 0x5251524F524F39CB,  // 0x00001650 
	0x4A0D41CD31492905, 0x398B314931473147, 0x31493149398941CB, 0x39493189314739CB,  // 0x00001670 
	0x5A8F4A0F420D420D, 0x420D4A0F524F524F, 0x524F524F524F524F, 0x420D420D420D41CD,  // 0x00001690 
	0x2907420D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D41CD, 0x4A0D41CD524F4A0D,  // 0x000016B0 
	0x4A0D4A0D4A0D4A0D, 0x318962D141CD41CD, 0x4A0D4A0D41CD318B, 0x39CD4A0D41CD41CD,  // 0x000016D0 
	0x4A0D4A0D41CB41CB, 0x41CB420D4A0D4A0D, 0x4A0D4A0D4A0D4A4F, 0x314731474A0F524F,  // 0x000016F0 
	0x4A0F4A0F4A0D41CD, 0x39CB524F41CD4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x00001710 
	0x29074A0D524F4A0D, 0x4A0D4A0D4A4D4A0D, 0x41CD41CD39CB41CD, 0x41CD41CD39CB41CD,  // 0x00001730 
	0x39CB41CD4A0D41CD, 0x29475A8F4A0D4A0D, 0x41CD41CD41CD31CB, 0x420D39CD39CD39CD,  // 0x00001750 
	0x420D39CD39CD41CD, 0x39CD39CB41CD41CD, 0x41CD41CD41CD418B, 0x2907524F524F524F,  // 0x00001770 
	0x41CD4A0D41CD41CD, 0x39CD39CD39CB4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x00001790 
	0x2105420D524F4A0F, 0x524F4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x000017B0 
	0x4A0D39CB39CB39CB, 0x2907524F41CB318B, 0x318B39CB318B318B, 0x39CB4A0D524F4A0D,  // 0x000017D0 
	0x4A0D4A0D4A0D420D, 0x39CD39CD420D420D, 0x420D31CB31CB3989, 0x3149524F4A0D420D,  // 0x000017F0 
	0x41CB420D420D4A0F, 0x4A0F4A0F420F420D, 0x4A0F420D41C94A0D, 0x524F524F524F4A0D,  // 0x00001810 
	0x29074A0D524F4A0D, 0x41CB418B4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x41CD41CD4A0D41CD,  // 0x00001830 
	0x4A0D4A0D4A0D41CD, 0x29475A8F49CB39CB, 0x41CD39CD39CD39CD, 0x39CD41CD41CD4A0D,  // 0x00001850 
	0x41CD41CD39CB41CD, 0x41CD39CB39CB4A0D, 0x4A0D4A0D4A0D418B, 0x3189528F41CB39CB,  // 0x00001870 
	0x39CD39CB39CB41CD, 0x39CD39CD39CD39CB, 0x41CD39CB398941CD, 0x39CB39CB39CB31CB,  // 0x00001890 
	0x31494A0F420B41CB, 0x39CB418B49CB4A0D, 0x4A0B4A0D4A0D4A0D, 0x4A0D41CD4A0D4A0D,  // 0x000018B0 
	0x4A0D4A0D4A0D4A0D, 0x31475A8F41C939CB, 0x4A0D41CD39CD39CB, 0x39CB41CB420B4A0D,  // 0x000018D0 
	0x4A0D4A0D4A0D4A0D, 0x4A0D41CD4A0D4A0D, 0x4A0D4A0D4A0D41CB, 0x3189524F41C939CB,  // 0x000018F0 
	0x420D41CD39CB39CB, 0x39CB41CD41CD39CD, 0x318B318B418941CD, 0x39CD41CD4A0D41CD,  // 0x00001910 
	0x3149524F41CB398B, 0x39CB41CB398B318B, 0x39CB41CD39CD41CD, 0x41CD41CD41CD41CD,  // 0x00001930 
	0x39CD39CD41CD41CB, 0x31495A9149C939CB, 0x39CB31CB31CB31CB, 0x31CB31CB39CB39CD,  // 0x00001950 
	0x41CD39CD39CB39CB, 0x39CD41CD41CD41CD, 0x41CD39CD4A0D3989, 0x3189528F41CB41CB,  // 0x00001970 
	0x39CB39CB39CB39CB, 0x39CB39CB39CB39CB, 0x39CB39CB39494A0D, 0x4A0D41CD41CD39CB,  // 0x00001990 
	0x31495A914A0D41CD, 0x420D41CB41CB41CB, 0x41CB41CB41CD41CD, 0x420D420F420D39CB,  // 0x000019B0 
	0x39CB39CB41CD3189, 0x31494A0D49C941CD, 0x39CB39CD39CB39CB, 0x39CD41CB41CD41CB,  // 0x000019D0 
	0x420D420D39CD39CD, 0x39CD420D420D4A0D, 0x4A0D4A0D524F41CB, 0x2907524D418949C9,  // 0x000019F0 
	0x49CB4A0B49CB41CD, 0x41CD41CD49CB49CB, 0x418941894989520D, 0x524D49CB39CB39CB,  // 0x00001A10 
	0x31494A0D39CB420D, 0x4A0B4A0D41CB39CB, 0x39CB39CB39CB39CD, 0x39CB318B39CB39CB,  // 0x00001A30 
	0x39CB318B4A0D41CB, 0x31494A0D51C949CB, 0x41C941C939893989, 0x39893989398939C9,  // 0x00001A50 
	0x31CB39CD39CD39CD, 0x39CD39CD31CB31CB, 0x31CB39CB41CD3989, 0x31494A0D41CD41CB,  // 0x00001A70 
	0x41CD41CD41CD49CD, 0x41CD41CD398B39CB, 0x318B398B398B41CD, 0x4A0D4A0D39CB39CB,  // 0x00001A90 
	0x2907310731472907, 0x2907290729072907, 0x2907290531073107, 0x3149394939493949,  // 0x00001AB0 
	0x3149314931493107, 0x210539CB49C951CB, 0x51CB49CB39893989, 0x39893989318B39C9,  // 0x00001AD0 
	0x39CB318B318B318B, 0x39CB318B39CB39CB, 0x39CB318B41CD3989, 0x31493107398B41CD,  // 0x00001AF0 
	0x41CD41CD41CD41CD, 0x398B41CB39CB31CB, 0x39CD39CB31CB524F, 0x524F4A0D41CD318B,  // 0x00001B10 
	0x41CD41CD41CB39CB, 0x398B398929073949, 0x41CB49CB5A8F4A4D, 0x4A4D524F4A4F4A4D,  // 0x00001B30 
	0x4A4D318B39CB3149, 0x31494A0D5A4B4209, 0x4209420941C939C9, 0x398739C942094209,  // 0x00001B50 
	0x42094209420B420B, 0x420B4A0B41CD41CD, 0x39CB31CB41CD4A0D, 0x2907314931493149,  // 0x00001B70 
	0x3149314931493147, 0x3149314931493149, 0x3147314729073147, 0x31473147318B318B,  // 0x00001B90 
	0x4A0D4A0D4A0D39CD, 0x39CB39CB29073149, 0x5A8F4A0B4A0B41CD, 0x41CD41CD4A0D4A0D,  // 0x00001BB0 
	0x4A0D39CB41CD41CD, 0x3989290729072907, 0x20C518C318C32105, 0x3147318931473147,  // 0x00001BD0 
	0x3107290529053107, 0x3147314931073107, 0x3149314931493189, 0x31473147524F520B,  // 0x00001BF0 
	0x41CB4A0B4A0B41CB, 0x4A0B420B4A0B4A0B, 0x398B318B29054A0D, 0x5291524F524F4A0D,  // 0x00001C10 
	0x41CD41CD41CD39CB, 0x31CB314729073949, 0x524D4A0B4A0D41CD, 0x420D4A0D4A0D4A0D,  // 0x00001C30 
	0x4A0D39CB4A0D4A0D, 0x4A0B41CD41CB49CD, 0x41CB41893147524F, 0x5A915A91524F524F,  // 0x00001C50 
	0x4A0F4A0F4A0F39CB, 0x4A0D41CD41CD4A0D, 0x41CD41CD41CD41CD, 0x398931496AD1524B,  // 0x00001C70 
	0x4A0D4A0D4A0D41CD, 0x4A0D4A0D4A0D4A0D, 0x41CD39CB3147524F, 0x49CD41CD41CD398B,  // 0x00001C90 
	0x41CD41CD39CB318B, 0x39CD318B29053989, 0x49CB4A0D39CD39CD, 0x41CD4A0D4A0B4A0B,  // 0x00001CB0 
	0x4A0B41C94A0B520B, 0x520B49CB49CB520B, 0x39CB41CB3149524F, 0x5A4D4A0D420D420D,  // 0x00001CD0 
	0x420D420D420D420B, 0x4A4B4A4B4A4B4A4B, 0x4A4B4A4B4A0D524F, 0x41CD31476AD1524B,  // 0x00001CF0 
	0x4A0D4A0D41CD41CD, 0x4A0D4A0D4A0D41CD, 0x41CD39CD318B5A4F, 0x5A4F524F41CD39CD,  // 0x00001D10 
	0x39CD41CD39CB39CD, 0x39CD318B29054A0D, 0x49CB4A0D41CB41CD, 0x41C95A4D520D520D,  // 0x00001D30 
	0x4A0B49CB4A0B41C9, 0x520B4A0B4A0B41CD, 0x41CD41CD39CB3189, 0x524D41CD39CB41CD,  // 0x00001D50 
	0x39CB39CD39CB39CD, 0x39CB39CB39CB41CD, 0x39CB41CD4A0D4A0D, 0x41CB3149628F4A0B,  // 0x00001D70 
	0x41CD39CB39CD39CB, 0x39CB41CD39CB39CD, 0x39CB318B31475A4F, 0x524F4A0D41CB41CD,  // 0x00001D90 
	0x39CB41CD41CD41CD, 0x41CD318B29054A0D, 0x49CB520D51CB41C9, 0x41C9418941C94A0D,  // 0x00001DB0 
	0x4A0D49CB4A0B4A0B, 0x51CB4A0D41CD41CD, 0x4A0D4A0D41CD3189, 0x520B41CD39CB4A0D,  // 0x00001DD0 
	0x39CD39CD39CD39CD, 0x39CD39CB39CB39CB, 0x39CB39CB41CD4A0D, 0x41CB314939CB5207,  // 0x00001DF0 
	0x520B4A0B4A094A09, 0x41C9520B41CD39CD, 0x39CB318B3147520B, 0x520D4A0D49CB49CB,  // 0x00001E10 
	0x41CD4A0D4A0D4A0D, 0x524F41CD314739CB, 0x41CD4A0F49CB39C9, 0x39C941CB39C931CB,  // 0x00001E30 
	0x420D39CD39CD39CD, 0x420D520B4A0B4A0B, 0x4A0D524F4A0D418B, 0x4A0D41C941CD39CD,  // 0x00001E50 
	0x39CD39CB39CB39CD, 0x41CD39CD31CB318B, 0x31CB31CB4A0D4A0D, 0x41CB31894A0D49CB,  // 0x00001E70 
	0x39CB39CB39CB39CB, 0x41CD39CB39CB39CB, 0x318B31472905524F, 0x49CD398B39CB41CD,  // 0x00001E90 
	0x3147314731473149, 0x31473147290539CB, 0x41CD4A0D4A0B4A0D, 0x4A0D39CB318B39CB,  // 0x00001EB0 
	0x41CD39CD41CD41CD, 0x41CD41CD41CD39CB, 0x39CD41CD39CB3989, 0x4A0D49CB41CD39CB,  // 0x00001ED0 
	0x39CB318B39CB39CB, 0x318B318B318B318B, 0x318B318B41CD41CD, 0x41CD314729073107,  // 0x00001EF0 
	0x3107310731493107, 0x2907310731073149, 0x314921053147318B, 0x318B314731473147,  // 0x00001F10 
	0x39CB398B39CB318B, 0x39CD318B2905318B, 0x39CB39CD420D39CD, 0x420D31CB31CB31CB,  // 0x00001F30 
	0x318B318B318B31CB, 0x41CD39CD39CB31CB, 0x318B41CD39CB3147, 0x39CB318B41CD41CD,  // 0x00001F50 
	0x39CD39CB39CB39CB, 0x39CB39CB318B39CB, 0x318B318B39CD41CD, 0x39CB3149524F4A4F,  // 0x00001F70 
	0x4A4D4A0D4A0D4A0D, 0x4A0D4A0D420B41CB, 0x41CB418B39CB39CB, 0x39CB39CB39CB39CB,  // 0x00001F90 
	0x39CB39CB39CB39CB, 0x39CB39CB314739CB, 0x4A0B41CB41CB4A0B, 0x4A0B41CB39C931CB,  // 0x00001FB0 
	0x39C941CB41CB41CB, 0x41C941C941CB39CB, 0x39CB41CD318B2905, 0x4A0D41CD39CD39CB,  // 0x00001FD0 
	0x39CB318B318B318B, 0x318B318B318B318B, 0x39CB31CB39CD39CB, 0x39CB31495A9141CB,  // 0x00001FF0 
	0x41C94A0B4A0B4A0B, 0x4A0B4A0B420B41CB, 0x39CB39CB39CB39CB, 0x39CB41CD4A0D39CB,  // 0x00002010 
	0x39CB39CB39CB4A0D, 0x4A0D39CB31473147, 0x3989318931893107, 0x3147290529053147,  // 0x00002030 
	0x29053147318B318B, 0x3147314931073107, 0x3107290720C520C5, 0x3107310731072905,  // 0x00002050 
	0x2905290529052905, 0x2905290531493149, 0x3949394939493149, 0x2905290552514A0B,  // 0x00002070 
	0x4A0B520B4A0B41CB, 0x41CB41C949CB4209, 0x420942094A0B4A0B, 0x4A0D41CB49CB39CB,  // 0x00002090 
	0x39CB39CB4A0D4A0D, 0x4A0D39CB3147524F, 0x5A91524F5A91524F, 0x4A0D39895A915A91,  // 0x000020B0 
	0x5A4F5A4F5A4F628F, 0x5A4F524D41C949CB, 0x49CB49CB39CB39CB, 0x39CB41CD41CD4A0D,  // 0x000020D0 
	0x41CD314931074A0F, 0x525141CD4A0D4A4D, 0x4A0F318B318B41CD, 0x41CD31472905420D,  // 0x000020F0 
	0x318B39CB39CB39CB, 0x318B39CB39CB39CB, 0x39CB39CB41CB398B, 0x41CB39CB39CB39CB,  // 0x00002110 
	0x39CB39CB39CB39CB, 0x39CB39CB31474A0D, 0x420D524F4A0D41CD, 0x524F418B62D331CD,  // 0x00002130 
	0x420D39CD4A0B41CB, 0x4A4B4A0B4A0B524B, 0x524B524B41CD4A0D, 0x41CD41CD41CD4A0D,  // 0x00002150 
	0x41CD39CB31076313, 0x4A0D4A0D4A0D4A0D, 0x4A0D41CB41CB3989, 0x398B314731475291,  // 0x00002170 
	0x39CB41CD41CD41CD, 0x39CB39CB39CB39CB, 0x39CB39CB39CB39CB, 0x41CD39CB41CD4A0D,  // 0x00002190 
	0x39CB39CB39CB39CB, 0x39CB39CD31474A4F, 0x39CD4A0D4A0D4A0D, 0x524F398962D3420D,  // 0x000021B0 
	0x39CD41CD39CB39CB, 0x420D420D420D420D, 0x420D420D420D420D, 0x4A0D4A0D4A0D4A0D,  // 0x000021D0 
	0x41CD39CB3149524F, 0x41CB41CB49CB420D, 0x41CD39CB39CB398B, 0x39CB314731475291,  // 0x000021F0 
	0x39CD420D420D420D, 0x420D39CD31CB31CB, 0x31CB420D420D420D, 0x420D4A0D4A0D41CD,  // 0x00002210 
	0x3147314731492907, 0x2907290731473147, 0x3147314739CB3147, 0x314731475A9139CD,  // 0x00002230 
	0x31CB41CD39CD41CD, 0x41CD39CB4A0D4A0D, 0x4A0D4A0D41CD41CD, 0x39CD39CB39CB39CB,  // 0x00002250 
	0x4A0D41CD31496291, 0x49CB49CB49CB49CB, 0x49CB49CB41CB41C9, 0x39CB39CB3147420D,  // 0x00002270 
	0x41CD41CD4A0D4A4D, 0x4A0D4A0D4A0D49CB, 0x4A0D4A0D524F524F, 0x524F524F4A0D3147,  // 0x00002290 
	0x524F4A8F4A8F4A4D, 0x524D524D524D524D, 0x5A8F5A8F4A0B4A0B, 0x4A0D39C94A0F41CD,  // 0x000022B0 
	0x39CD39CD4A0D4A0D, 0x41CD39CD41CD39CD, 0x39CD39CB39CB318B, 0x41CD39CB39CB41CD,  // 0x000022D0 
	0x4A0D41CD314962D3, 0x41CB41CB420B41CD, 0x41CD39CD39CB39CB, 0x398B318B31472905,  // 0x000022F0 
	0x3189314731493989, 0x398B31893189418B, 0x3149290731493149, 0x3189398939C939CB,  // 0x00002310 
	0x41CD39CB4A0B4209, 0x42094A0B42094209, 0x4A4B4A4B4A0D4A0D, 0x4A0B39C93147524F,  // 0x00002330 
	0x39CD39CD39CD39CD, 0x39CB39CB41CD4A0D, 0x41CD39CD39CD39CB, 0x39CB39CB39CB41CD,  // 0x00002350 
	0x524F524F3149524F, 0x41CB520B4A0B49CB, 0x49CB41C941C941CD, 0x39CB39CB41CD2905,  // 0x00002370 
	0x41CB4A0F524F524F, 0x524F52514A0F524F, 0x4A0D318B5AD1524F, 0x5A4F4A0B41CB41CD,  // 0x00002390 
	0x398B398B41CB41CB, 0x4A0D39CB42094A0B, 0x5A8D524B4A0D4A0D, 0x520B39C9318941CD,  // 0x000023B0 
	0x41CD520B520B520B, 0x520B520B520B49CB, 0x41CB41C939CB39CB, 0x39CB39CB39CB4A0D,  // 0x000023D0 
	0x41CD39CB2907524F, 0x4A0B41CD41CD39CB, 0x39CB39CB41CD41CD, 0x41CB524F39CB3147,  // 0x000023F0 
	0x4A0F41CD41CD39CB, 0x41CD41CD41CD41CD, 0x41CD39CB5A4F4A0D, 0x4A0B41CD39CB398B,  // 0x00002410 
	0x39CD39CD39CD39CD, 0x4A0B4A0B4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x520B41CB3989524F,  // 0x00002430 
	0x4A0D41CD4A0D39CB, 0x39CD4A0D41CD420B, 0x420B420B4A4B4A0B, 0x4A4B4A0D41CD4A0D,  // 0x00002450 
	0x41CD41CD3189524F, 0x4A0B41CD4A0B4A0B, 0x4A0B4A0B41CD41CD, 0x41CB4A0D39CB318B,  // 0x00002470 
	0x5A914A0D4A0D4A0D, 0x4A0D4A0D41CD4A0D, 0x41CD3147420D39CB, 0x39CB39CB39CB31CB,  // 0x00002490 
	0x39CD39CD39CD4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x520B4A0B3989524F,  // 0x000024B0 
	0x4A0D4A0D41CD39CD, 0x41CD39CD39CD39CD, 0x39CB39CD39CD39CB, 0x39CD39CD39CD39CD,  // 0x000024D0 
	0x39CD39CB314941CD, 0x41CD41CD41CD39CD, 0x39CB39CB39CB41CD, 0x398B4A0D39CB3147,  // 0x000024F0 
	0x524F524F4A0D41CD, 0x41CD41CD41CD4A0D, 0x41CD318B4A0F39CD, 0x39CD39CD39CD39CD,  // 0x00002510 
	0x41CD39CD41CD41CD, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A4D31894A0F,  // 0x00002530 
	0x420D4A0F4A0F4A0F, 0x4A0F4A0F4A0F524F, 0x4A0F4A0F4A0F41CD, 0x39CB41CD41CD41CD,  // 0x00002550 
	0x4A0D4A0D3189524F, 0x4A0D41CD4A0D41CD, 0x41CD41CD4A0D41CB, 0x39CB4A0D39CB2905,  // 0x00002570 
	0x41CD524F4A0D4A0D, 0x41CD41CD41CD39CB, 0x318B3147524F420D, 0x420D420D420D420F,  // 0x00002590 
	0x3147314731493189, 0x3189318B31893989, 0x41CD39CB39CB31CB, 0x31892949314718C3,  // 0x000025B0 
	0x18C3290531493149, 0x3949314931493149, 0x2907314929073989, 0x31CB314731473147,  // 0x000025D0 
	0x314718C32905524F, 0x39CB39CB39CB39CB, 0x39CB39CB41CB4A0D, 0x4A0D4A0D39CB2905,  // 0x000025F0 
	0x2905290529053147, 0x3147314731473147, 0x290518C329052905, 0x3147314731473147,  // 0x00002610 
};

u64 _ganontika_room_16_tex_00002630[] = 
{
	0x0909090909090909, 0x0909090900090909, 0x0709090909090007, 0x0709090909090909,  // 0x00002630 
	0x0909090909090909, 0x0909090907090709, 0x0909090909090909, 0x0709090909090909,  // 0x00002650 
	0x0000010101010003, 0x0300041B01010001, 0x0009000007000000, 0x0900040000090900,  // 0x00002670 
	0x0115151501010201, 0x0100040401150401, 0x0000000900000000, 0x0700010000000000,  // 0x00002690 
	0x0000000303020202, 0x0200000000011B1B, 0x010100030901011B, 0x1B01041501020007,  // 0x000026B0 
	0x020002001B151515, 0x151515151B011515, 0x15041B0101010404, 0x1503000000010009,  // 0x000026D0 
	0x0900020203000000, 0x0200000000000000, 0x0000000209000101, 0x0401150101020009,  // 0x000026F0 
	0x0202020201010102, 0x0215150103030303, 0x0202010101010C01, 0x0402010101000007,  // 0x00002710 
	0x0001020101010101, 0x0000010000000000, 0x000000020900010C, 0x0C15150404020309,  // 0x00002730 
	0x0002020201020101, 0x0101010101020202, 0x0202010202020101, 0x0101010001010107,  // 0x00002750 
	0x0900000104010101, 0x0003000002010104, 0x0101000209010C0C, 0x0C0C010101010009,  // 0x00002770 
	0x0003020200000201, 0x0200020101030202, 0x0202020203000102, 0x0102010100010009,  // 0x00002790 
	0x00000201011B0401, 0x0102010101010200, 0x00011B0107000C01, 0x0C0C010C01010109,  // 0x000027B0 
	0x0101000200010202, 0x01010C0C1B020202, 0x0203020303020200, 0x0000010101010107,  // 0x000027D0 
	0x00010104151B1B04, 0x0401010101010101, 0x0101010109010101, 0x0C0C0C0404040009,  // 0x000027F0 
	0x0000010101010101, 0x0101010101020200, 0x0000000000010101, 0x020202010C1B0109,  // 0x00002810 
	0x0001000000010000, 0x0000000001010401, 0x0000010007000001, 0x0102020000000909,  // 0x00002830 
	0x0709000000020000, 0x0000000000000000, 0x0000010100000003, 0x0302010103000109,  // 0x00002850 
	0x0907090909090909, 0x0909090909090909, 0x0907090909070900, 0x000003020301043D,  // 0x00002870 
	0x3D3F3F3F04010000, 0x0000000000000000, 0x0000000000000000, 0x0000000009090007,  // 0x00002890 
	0x041B2F2F5C2F2E2E, 0x1B04010100000900, 0x0000000900010101, 0x1B2F1B1B2F1B1B1B,  // 0x000028B0 
	0x1B1B1B012F2F1B1B, 0x00011B1B2F010000, 0x010001010101011B, 0x041B010101011B1B,  // 0x000028D0 
	0x1B041B1B1B1B0404, 0x041B1B013D010001, 0x01011B2F1B04011B, 0x1B011B01011B1B1B,  // 0x000028F0 
	0x0401041B04043D04, 0x0704010101010000, 0x000004011B041B04, 0x1B01011B01011B01,  // 0x00002910 
	0x0101042F04040101, 0x010101010C010900, 0x011B011B1B1B2F1B, 0x0401011B1B1B1B2F,  // 0x00002930 
	0x1B041B0404040401, 0x0901040100010000, 0x001B1B011B012F0C, 0x0101010101010101,  // 0x00002950 
	0x041B1B042E2F2F1B, 0x1B150C0103000900, 0x011B010101010101, 0x0101010101011B1B,  // 0x00002970 
	0x043D2E1B2F040100, 0x0701040101010300, 0x011B010101011B04, 0x0401010101010101,  // 0x00002990 
	0x01011B04011B011B, 0x151B0C0101020709, 0x01010101010C0C01, 0x0001010401011B1B,  // 0x000029B0 
	0x0404041B1B1B0401, 0x0004041B2F2F0100, 0x0104040104010101, 0x0101020201010404,  // 0x000029D0 
	0x0001000101000101, 0x010415151B010900, 0x0201010401000101, 0x0001010101011B1B,  // 0x000029F0 
	0x041B041B1B040009, 0x0700010C0C1B0309, 0x0001010101000404, 0x01011B1B01010101,  // 0x00002A10 
	0x0100000000000003, 0x0002000001040000, 0x0001000104040401, 0x0000000000000000,  // 0x00002A30 
	0x0000000009090909, 0x0900000000000009, 0x0009090900000000, 0x0000000101010100,  // 0x00002A50 
	0x0909070909090909, 0x0909000909090909, 0x0909090909070700, 0x0000010101000101,  // 0x00002A70 
	0x0104040401040101, 0x010401010101001B, 0x1B2F010009090909, 0x0909090909090909,  // 0x00002A90 
	0x0101040101040100, 0x0100000100010001, 0x021E0C0007031E2E, 0x0401010404041B04,  // 0x00002AB0 
	0x1B2F041B011B0101, 0x0001010101010101, 0x0200000009000304, 0x0202000000010909,  // 0x00002AD0 
	0x0000000000000000, 0x0000000000000101, 0x0101010109000001, 0x0101010300000001,  // 0x00002AF0 
	0x0C01010204030000, 0x0000000900000003, 0x0000030009000201, 0x0101010401010009,  // 0x00002B10 
	0x0100000002010101, 0x0101010000010201, 0x0C1B04010900011B, 0x1B04010203030003,  // 0x00002B30 
	0x0201010404040101, 0x0200000000000000, 0x0000000009020204, 0x0404020201010109,  // 0x00002B50 
	0x0001000000000000, 0x0000000302010101, 0x0101040009010101, 0x011B1B0401020003,  // 0x00002B70 
	0x03030202041E0202, 0x0200000000000000, 0x0000000009010101, 0x0101020200010109,  // 0x00002B90 
	0x0001000000000201, 0x0202020101020301, 0x01011B0009000001, 0x0101010101010101,  // 0x00002BB0 
	0x0001020404040402, 0x0401010100000000, 0x0001010109000101, 0x01040201011B0109,  // 0x00002BD0 
	0x0101010102010C01, 0x0C01010201000000, 0x0000010009011B01, 0x0101010101010001,  // 0x00002BF0 
	0x010101151B150404, 0x0402010101010101, 0x0000010109000101, 0x0004010104010009,  // 0x00002C10 
	0x0000000000010000, 0x0000000001010101, 0x0000000009090101, 0x0404000100020100,  // 0x00002C30 
	0x0202030202010000, 0x0000090909090909, 0x0909090909000001, 0x0101010101010009,  // 0x00002C50 
	0x0909090909090909, 0x0900090909090909, 0x0909090909090909, 0x0900000000000000,  // 0x00002C70 
	0x0000000000000000, 0x0001010100090900, 0x0101000900070909, 0x0909090909090709,  // 0x00002C90 
	0x041B2F1B1B1B2F1B, 0x0001010100090900, 0x0001000000000000, 0x0000010000000101,  // 0x00002CB0 
	0x041B042F2F2F2F1B, 0x0100000101000900, 0x01041B0101000001, 0x000001090900011B,  // 0x00002CD0 
	0x00011B1B01010101, 0x0400000000010900, 0x0000010101000001, 0x0101000000010401,  // 0x00002CF0 
	0x1B1B1B0404040404, 0x0401010001010907, 0x0001000101010001, 0x1B1B000900010100,  // 0x00002D10 
	0x01011B0101010101, 0x1B01010101010900, 0x0000090001010401, 0x0100000001000000,  // 0x00002D30 
	0x01041B0101010200, 0x0101010401010009, 0x0002020101000101, 0x0001000700010001,  // 0x00002D50 
	0x010101011B2F1B01, 0x0104040401000709, 0x0001000000000100, 0x0101010101010001,  // 0x00002D70 
	0x01011B01011B0401, 0x010101011B010009, 0x0001010101010100, 0x0101010900010003,  // 0x00002D90 
	0x010101041B1B1B04, 0x04011B041B000009, 0x0001010101010000, 0x0001000101040101,  // 0x00002DB0 
	0x0101011B011B0101, 0x1B04010100000009, 0x0001000001010100, 0x0100000907010101,  // 0x00002DD0 
	0x000104010101011B, 0x0001041B1B010109, 0x0001011B00001B00, 0x0000010000000009,  // 0x00002DF0 
	0x0001010101010100, 0x0000000000040009, 0x0001010100000100, 0x0000000709000009,  // 0x00002E10 
};


