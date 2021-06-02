#include <ultra64.h>
#include <z64.h>
#include "Bmori1_room_19.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "Bmori1_scene.h"



SCmdEchoSettings _Bmori1_room_19_set0000_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0000
SCmdRoomBehavior _Bmori1_room_19_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _Bmori1_room_19_set0000_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0010
SCmdTimeSettings _Bmori1_room_19_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _Bmori1_room_19_set0000_cmd04 = { 0x0A, 0, (u32)&_Bmori1_room_19_meshHeader_000000A0 }; // 0x0020
SCmdObjectList _Bmori1_room_19_set0000_cmd05 = { 0x0B, 0x0A, (u32)_Bmori1_room_19_objectList_00000040 }; // 0x0028
SCmdActorList _Bmori1_room_19_set0000_cmd06 = { 0x01, 0x04, (u32)_Bmori1_room_19_actorList_00000054 }; // 0x0030
SCmdEndMarker _Bmori1_room_19_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _Bmori1_room_19_objectList_00000040[] = 
{
	OBJECT_MORI_TEX,
	OBJECT_MORI_OBJECTS,
	OBJECT_BOX,
	OBJECT_SYOKUDAI,
	OBJECT_BB,
	OBJECT_ST,
	OBJECT_DEMO_KEKKAI,
	OBJECT_MORI_HINERI1,
	OBJECT_MORI_HINERI1A,
	OBJECT_WALLMASTER,
};

ActorEntry _Bmori1_room_19_actorList_00000054[4] = 
{
	{ ACTOR_EN_WALLMAS, -1763, 1467, -3318, 0, 0, 0, 0x0001 }, //0x00000054 
	{ ACTOR_ELF_MSG2, -1552, 1429, -3468, 0, 20, 0, 0x3F92 }, //0x00000064 
	{ ACTOR_BG_MORI_HINERI, -1761, 1278, -3015, 0, 0, 0, 0x3F13 }, //0x00000074 
	{ ACTOR_ELF_MSG, -1773, 1206, -3127, 0, 0, 0, 0x1691 }, //0x00000084 
};

static u32 pad94 = 0;
static u32 pad98 = 0;
static u32 pad9C = 0;

MeshHeader0 _Bmori1_room_19_meshHeader_000000A0 = { { 0 }, 0x01, (u32)&_Bmori1_room_19_meshDListEntry_000000AC, (u32)&(_Bmori1_room_19_meshDListEntry_000000AC) + sizeof(_Bmori1_room_19_meshDListEntry_000000AC) };

MeshEntry0 _Bmori1_room_19_meshDListEntry_000000AC[1] = 
{
	{ (u32)_Bmori1_room_19_dlist_000004F0, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.
static u32 padB8 = 0;
static u32 padBC = 0;

Vtx_t _Bmori1_room_19_vertices_000000C0[32] = 
{
	 { -1436, 1328, -3290, 0, 1434, 1331, 81, 72, 55, 255 }, // 0x000000C0
	 { -1416, 1328, -3290, 0, 1229, 1434, 52, 49, 38, 255 }, // 0x000000D0
	 { -1416, 1228, -3290, 0, 717, 410, 69, 62, 48, 255 }, // 0x000000E0
	 { -1436, 1228, -3290, 0, 922, 307, 81, 72, 55, 255 }, // 0x000000F0
	 { -1416, 1328, -3350, 0, 717, 410, 52, 49, 38, 255 }, // 0x00000100
	 { -1436, 1328, -3350, 0, 922, 307, 52, 49, 38, 255 }, // 0x00000110
	 { -1436, 1228, -3350, 0, 1434, 1331, 81, 72, 55, 255 }, // 0x00000120
	 { -1416, 1228, -3350, 0, 1229, 1434, 69, 62, 48, 255 }, // 0x00000130
	 { -1436, 1328, -3370, 0, -95, 1233, 52, 49, 38, 255 }, // 0x00000140
	 { -1436, 1228, -3370, 0, 933, 1737, 52, 49, 38, 255 }, // 0x00000150
	 { -1436, 1228, -3350, 0, 1034, 1531, 81, 72, 55, 255 }, // 0x00000160
	 { -1436, 1328, -3350, 0, 5, 1027, 69, 62, 48, 255 }, // 0x00000170
	 { -1436, 1228, -3290, 0, 1335, 914, 81, 72, 55, 255 }, // 0x00000180
	 { -1436, 1228, -3270, 0, 1437, 709, 52, 49, 38, 255 }, // 0x00000190
	 { -1436, 1328, -3270, 0, 410, 205, 52, 49, 38, 255 }, // 0x000001A0
	 { -1436, 1328, -3290, 0, 307, 410, 69, 62, 48, 255 }, // 0x000001B0
	 { -1516, 443, -3075, 0, -522, -1063, 52, 49, 38, 255 }, // 0x000001C0
	 { -1516, 443, -3565, 0, -2087, 1546, 52, 49, 38, 255 }, // 0x000001D0
	 { -1761, 443, -3320, 0, 0, 1024, 158, 142, 111, 255 }, // 0x000001E0
	 { -2006, 443, -3075, 0, 2087, 502, 52, 49, 38, 255 }, // 0x000001F0
	 { -2006, 443, -3565, 0, 522, 3111, 52, 49, 38, 255 }, // 0x00000200
	 { -1811, 683, -3370, 0, 1385, 422, 52, 49, 38, 255 }, // 0x00000210
	 { -1811, 933, -3370, 0, -723, 949, 69, 62, 48, 255 }, // 0x00000220
	 { -1811, 933, -3270, 0, -572, 1551, 69, 62, 48, 255 }, // 0x00000230
	 { -1811, 683, -3270, 0, 1536, 1024, 52, 49, 38, 255 }, // 0x00000240
	 { -1711, 683, -3370, 0, 1717, 1069, 52, 49, 38, 255 }, // 0x00000250
	 { -1711, 933, -3370, 0, -392, 542, 69, 62, 48, 255 }, // 0x00000260
	 { -1811, 933, -3370, 0, -542, 1144, 69, 62, 48, 255 }, // 0x00000270
	 { -1811, 683, -3370, 0, 1566, 1672, 52, 49, 38, 255 }, // 0x00000280
	 { -1711, 683, -3270, 0, 1717, 1069, 52, 49, 38, 255 }, // 0x00000290
	 { -1711, 933, -3270, 0, -392, 542, 69, 62, 48, 255 }, // 0x000002A0
	 { -1711, 933, -3370, 0, -542, 1144, 69, 62, 48, 255 }, // 0x000002B0
};

Vtx_t _Bmori1_room_19_vertices_000002C0[7] = 
{
	 { -1711, 683, -3270, 0, 1717, 1069, 52, 49, 38, 255 }, // 0x000002C0
	 { -1711, 933, -3370, 0, -542, 1144, 69, 62, 48, 255 }, // 0x000002D0
	 { -1711, 683, -3370, 0, 1566, 1672, 52, 49, 38, 255 }, // 0x000002E0
	 { -1811, 683, -3270, 0, 1476, 1009, 52, 49, 38, 255 }, // 0x000002F0
	 { -1811, 933, -3270, 0, -632, 482, 69, 62, 48, 255 }, // 0x00000300
	 { -1711, 933, -3270, 0, -783, 1084, 69, 62, 48, 255 }, // 0x00000310
	 { -1711, 683, -3270, 0, 1325, 1611, 52, 49, 38, 255 }, // 0x00000320
};

Vtx_t _Bmori1_room_19_vertices_00000330[8] = 
{
	 { -2006, 443, -3565, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000330
	 { -1416, 443, -3565, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000340
	 { -2006, 1328, -3565, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000350
	 { -1416, 1328, -3565, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000360
	 { -2006, 443, -3075, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000370
	 { -1416, 443, -3075, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000380
	 { -2006, 1328, -3075, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000390
	 { -1416, 1328, -3075, 0, 0, 0, 0, 0, 0, 0 }, // 0x000003A0
};

Gfx _Bmori1_room_19_dlist_000003B0[] =
{
	gsDPPipeSync(), // 0x000003B0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000003B8
	gsSPVertex(_Bmori1_room_19_vertices_00000330, 8, 0), // 0x000003C0
	gsSPCullDisplayList(0, 7), // 0x000003C8
	gsDPPipeSync(), // 0x000003D0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000003D8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000003E0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000003E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _Bmori1_scene_tex_00015B90), // 0x000003F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000003F8
	gsDPLoadSync(), // 0x00000400
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000408
	gsDPPipeSync(), // 0x00000410
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000418
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000420
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _Bmori1_scene_tex_00014288), // 0x00000428
	gsDPTileSync(), // 0x00000430
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000438
	gsDPLoadSync(), // 0x00000440
	gsDPLoadTLUTCmd(7, 255), // 0x00000448
	gsDPPipeSync(), // 0x00000450
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000458
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000460
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000468
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000470
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000478
	gsSPVertex(_Bmori1_room_19_vertices_000000C0, 32, 0), // 0x00000480
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000488
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000490
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000498
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000004A0
	gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0), // 0x000004A8
	gsSP2Triangles(19, 18, 20, 0, 18, 17, 20, 0), // 0x000004B0
	gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0), // 0x000004B8
	gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0), // 0x000004C0
	gsSP1Triangle(29, 30, 31, 0), // 0x000004C8
	gsSPVertex(_Bmori1_room_19_vertices_000002C0, 7, 0), // 0x000004D0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000004D8
	gsSP1Triangle(3, 5, 6, 0), // 0x000004E0
	gsSPEndDisplayList(), // 0x000004E8
};

Gfx _Bmori1_room_19_dlist_000004F0[] =
{
	gsSPDisplayList(_Bmori1_room_19_dlist_000003B0), // 0x000004F0
	gsSPEndDisplayList(), // 0x000004F8
};


