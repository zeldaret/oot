#include <ultra64.h>
#include <z64.h>
#include "testroom_room_4.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "testroom_scene.h"



SCmdEchoSettings _testroom_room_4_set0000_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0000
SCmdRoomBehavior _testroom_room_4_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _testroom_room_4_set0000_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0010
SCmdTimeSettings _testroom_room_4_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF }; // 0x0018
SCmdMesh _testroom_room_4_set0000_cmd04 = { 0x0A, 0, (u32)&_testroom_room_4_meshHeader_00000050 }; // 0x0020
SCmdObjectList _testroom_room_4_set0000_cmd05 = { 0x0B, 0x05, (u32)_testroom_room_4_objectList_00000038 }; // 0x0028
SCmdEndMarker _testroom_room_4_set0000_cmd06 = { 0x14, 0x00, 0x00 }; // 0x0030
s16 _testroom_room_4_objectList_00000038[] = 
{
	OBJECT_BOX,
	OBJECT_YUKABYUN,
	OBJECT_LIGHTBOX,
	OBJECT_TRAP,
	OBJECT_VM,
};

static u8 unaccounted0044[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

MeshHeader0 _testroom_room_4_meshHeader_00000050 = { { 0 }, 0x01, (u32)&_testroom_room_4_meshDListEntry_0000005C, (u32)&(_testroom_room_4_meshDListEntry_0000005C) + sizeof(_testroom_room_4_meshDListEntry_0000005C) };

MeshEntry0 _testroom_room_4_meshDListEntry_0000005C[1] = 
{
	{ (u32)_testroom_room_4_dlist_000001F0, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.
static u32 pad68 = 0;
static u32 pad6C = 0;

Vtx_t _testroom_room_4_vertices_00000070[18] = 
{
	 { 8, 0, -400, 0, 8485, 2048, 216, 216, 216, 255 }, // 0x00000070
	 { 8, 24, -400, 0, 8485, 1434, 178, 178, 178, 255 }, // 0x00000080
	 { 8, 24, -120, 0, 1317, 1434, 114, 114, 114, 255 }, // 0x00000090
	 { 8, 0, -120, 0, 1317, 2048, 178, 178, 178, 255 }, // 0x000000A0
	 { 40, 24, -120, 0, 512, 1434, 114, 114, 114, 255 }, // 0x000000B0
	 { 40, 24, -400, 0, -6656, 1434, 178, 178, 178, 255 }, // 0x000000C0
	 { 40, 0, -400, 0, -6656, 2048, 216, 216, 216, 255 }, // 0x000000D0
	 { 40, 0, -120, 0, 512, 2048, 178, 178, 178, 255 }, // 0x000000E0
	 { 8, 24, 200, 0, -6875, 1434, 178, 178, 178, 255 }, // 0x000000F0
	 { 8, 0, 200, 0, -6875, 2048, 216, 216, 216, 255 }, // 0x00000100
	 { 40, 0, 200, 0, 8704, 2048, 216, 216, 216, 255 }, // 0x00000110
	 { 40, 24, 200, 0, 8704, 1434, 178, 178, 178, 255 }, // 0x00000120
	 { 40, 24, -120, 0, 824, 1076, 89, 89, 89, 255 }, // 0x00000130
	 { 40, 24, 200, 0, 824, -7116, 140, 140, 140, 255 }, // 0x00000140
	 { 8, 24, 200, 0, 5, -7116, 140, 140, 140, 255 }, // 0x00000150
	 { 8, 24, -120, 0, 5, 1076, 89, 89, 89, 255 }, // 0x00000160
	 { 8, 24, -400, 0, 5, 8244, 140, 140, 140, 255 }, // 0x00000170
	 { 40, 24, -400, 0, 824, 8244, 140, 140, 140, 255 }, // 0x00000180
};

Vtx_t _testroom_room_4_vertices_00000190[6] = 
{
	 { 8, 0, -120, 0, 1024, 0, 204, 204, 204, 255 }, // 0x00000190
	 { 8, 0, 200, 0, -7168, 0, 255, 255, 255, 255 }, // 0x000001A0
	 { 40, 0, 200, 0, -7168, 1024, 255, 255, 255, 255 }, // 0x000001B0
	 { 40, 0, -120, 0, 1024, 1024, 204, 204, 204, 255 }, // 0x000001C0
	 { 40, 0, -400, 0, 8192, 1024, 255, 255, 255, 255 }, // 0x000001D0
	 { 8, 0, -400, 0, 8192, 0, 255, 255, 255, 255 }, // 0x000001E0
};

Gfx _testroom_room_4_dlist_000001F0[] =
{
	gsDPPipeSync(), // 0x000001F0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000001F8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000200
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _testroom_scene_tex_00002A00), // 0x00000208
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000210
	gsDPLoadSync(), // 0x00000218
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00000220
	gsDPPipeSync(), // 0x00000228
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000230
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000238
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000240
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000248
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000250
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00000258
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000260
	gsSPVertex(_testroom_room_4_vertices_00000070, 18, 0), // 0x00000268
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000270
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000278
	gsSP2Triangles(2, 8, 9, 0, 2, 9, 3, 0), // 0x00000280
	gsSP2Triangles(10, 11, 4, 0, 10, 4, 7, 0), // 0x00000288
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00000290
	gsSP2Triangles(16, 17, 12, 0, 16, 12, 15, 0), // 0x00000298
	gsDPPipeSync(), // 0x000002A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _testroom_scene_tex_00003A00), // 0x000002A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000002B0
	gsDPLoadSync(), // 0x000002B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000002C0
	gsDPPipeSync(), // 0x000002C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000002D0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000002D8
	gsSPVertex(_testroom_room_4_vertices_00000190, 6, 0), // 0x000002E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000002E8
	gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0), // 0x000002F0
	gsSPEndDisplayList(), // 0x000002F8
};


