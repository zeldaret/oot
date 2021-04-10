#include <ultra64.h>
#include <z64.h>
#include "jyasinzou_room_7.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "jyasinzou_scene.h"



SCmdEchoSettings _jyasinzou_room_7_set0000_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0000
SCmdRoomBehavior _jyasinzou_room_7_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _jyasinzou_room_7_set0000_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0010
SCmdTimeSettings _jyasinzou_room_7_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _jyasinzou_room_7_set0000_cmd04 = { 0x0A, 0, (u32)&_jyasinzou_room_7_meshHeader_000000B0 }; // 0x0020
SCmdObjectList _jyasinzou_room_7_set0000_cmd05 = { 0x0B, 0x03, (u32)_jyasinzou_room_7_objectList_00000040 }; // 0x0028
SCmdActorList _jyasinzou_room_7_set0000_cmd06 = { 0x01, 0x06, (u32)_jyasinzou_room_7_actorList_00000048 }; // 0x0030
SCmdEndMarker _jyasinzou_room_7_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _jyasinzou_room_7_objectList_00000040[] = 
{
	OBJECT_JYA_OBJ,
	OBJECT_JYA_DOOR,
	OBJECT_HIDAN_OBJECTS,
};

ActorEntry _jyasinzou_room_7_actorList_00000048[6] = 
{
	{ ACTOR_BG_HIDAN_SEKIZOU, -678, 823, -347, 0, 9284, 0, 0x0000 }, //0x00000048 
	{ ACTOR_EN_LIGHT, -800, 888, -298, 0, 0, 0, 0x03F4 }, //0x00000058 
	{ ACTOR_EN_LIGHT, -800, 885, -119, 0, 0, 0, 0x03F4 }, //0x00000068 
	{ ACTOR_EN_LIGHT, -668, 858, -430, 0, 0, 0, 0x03F4 }, //0x00000078 
	{ ACTOR_EN_LIGHT, -580, 875, -210, 0, 0, 0, 0x03F4 }, //0x00000088 
	{ ACTOR_EN_LIGHT, -492, 859, -430, 0, 0, 0, 0x03F4 }, //0x00000098 
};

static u32 padA8 = 0;
static u32 padAC = 0;

MeshHeader2 _jyasinzou_room_7_meshHeader_000000B0 = { { 2 }, 0x0B, (u32)&_jyasinzou_room_7_meshDListEntry_000000BC, (u32)&(_jyasinzou_room_7_meshDListEntry_000000BC) + sizeof(_jyasinzou_room_7_meshDListEntry_000000BC) };

MeshEntry2 _jyasinzou_room_7_meshDListEntry_000000BC[11] = 
{
	{ -800, 883, -122, 24, (u32)_jyasinzou_room_7_dlist_00000390, 0 },
	{ -579, 873, -209, 22, (u32)_jyasinzou_room_7_dlist_00000610, 0 },
	{ -492, 853, -430, 24, (u32)_jyasinzou_room_7_dlist_00000890, 0 },
	{ -800, 883, -299, 23, (u32)_jyasinzou_room_7_dlist_00000B10, 0 },
	{ -711, 873, -341, 22, (u32)_jyasinzou_room_7_dlist_00000D90, 0 },
	{ -669, 853, -430, 23, (u32)_jyasinzou_room_7_dlist_00001010, 0 },
	{ -700, 928, -330, 331, (u32)_jyasinzou_room_7_dlist_00001310, 0 },
	{ -700, 928, -330, 331, (u32)_jyasinzou_room_7_dlist_00001980, 0 },
	{ -700, 928, -330, 331, (u32)_jyasinzou_room_7_dlist_00001FD8, 0 },
	{ -730, 828, -360, 297, (u32)_jyasinzou_room_7_dlist_00002340, 0 },
	{ -730, 908, -360, 311, (u32)_jyasinzou_room_7_dlist_00002630, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

static u8 unaccounted0170[] = 
{
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xB0, 0x01, 0x02, 0x00, 0x00, 0x03, 0x00, 0x01, 0xA8, 
	0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0xFD, 0x5C, 0x03, 0x69, 0xFF, 0x06, 
	0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x03, 0xF0, 0x00, 0xFC, 0xFD, 0xD0, 0x06, 0x07, 0xFE, 0xCA, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xB0, 0x01, 0x02, 0x00, 0x00, 0x03, 0x00, 0x02, 0x08, 
	0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0xFD, 0x5C, 0x03, 0x69, 0xFF, 0x06, 
	0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x03, 0xF0, 0x00, 0xFC, 0xFD, 0xD0, 0x06, 0x07, 0xFE, 0xCA, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

Vtx_t _jyasinzou_room_7_vertices_00000230[6] = 
{
	 { -800, 866, -112, 0, 1024, 0, 113, 75, 37, 255 }, // 0x00000230
	 { -786, 899, -112, 0, 2048, 2048, 197, 140, 82, 255 }, // 0x00000240
	 { -814, 899, -112, 0, 0, 2048, 197, 140, 82, 255 }, // 0x00000250
	 { -800, 894, -135, 0, 2048, 2048, 241, 228, 215, 255 }, // 0x00000260
	 { -814, 899, -112, 0, 0, 2048, 197, 140, 82, 255 }, // 0x00000270
	 { -800, 894, -135, 0, 0, 2048, 241, 228, 215, 255 }, // 0x00000280
};

Vtx_t _jyasinzou_room_7_vertices_00000290[8] = 
{
	 { -792, 901, -117, 0, 0, 1024, 209, 164, 118, 255 }, // 0x00000290
	 { -792, 894, -117, 0, 512, 1024, 113, 75, 37, 255 }, // 0x000002A0
	 { -792, 894, -108, 0, 512, 0, 81, 72, 55, 255 }, // 0x000002B0
	 { -792, 901, -108, 0, 0, 0, 81, 72, 55, 255 }, // 0x000002C0
	 { -808, 901, -108, 0, 0, 0, 81, 72, 55, 255 }, // 0x000002D0
	 { -808, 894, -108, 0, 512, 0, 81, 72, 55, 255 }, // 0x000002E0
	 { -808, 894, -117, 0, 512, 1024, 113, 75, 37, 255 }, // 0x000002F0
	 { -808, 901, -117, 0, 0, 1024, 209, 164, 118, 255 }, // 0x00000300
};

Vtx_t _jyasinzou_room_7_vertices_00000310[8] = 
{
	 { -810, 866, -129, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000310
	 { -796, 866, -106, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000320
	 { -792, 874, -140, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000330
	 { -778, 874, -116, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000340
	 { -821, 900, -123, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000350
	 { -807, 900, -100, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000360
	 { -802, 908, -134, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000370
	 { -789, 908, -110, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000380
};

Gfx _jyasinzou_room_7_dlist_00000390[] =
{
	gsDPPipeSync(), // 0x00000390
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000398
	gsSPVertex(_jyasinzou_room_7_vertices_00000310, 8, 0), // 0x000003A0
	gsSPCullDisplayList(0, 7), // 0x000003A8
	gsDPPipeSync(), // 0x000003B0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000003B8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000003C0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000003C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00002908), // 0x000003D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 1, 5, 0), // 0x000003D8
	gsDPLoadSync(), // 0x000003E0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000003E8
	gsDPPipeSync(), // 0x000003F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 6, 0, 1, 5, 0), // 0x000003F8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000400
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000408
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00000410
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00000418
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x00000420
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000428
	gsSPVertex(_jyasinzou_room_7_vertices_00000230, 6, 0), // 0x00000430
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0), // 0x00000438
	gsSP1Triangle(5, 1, 0, 0), // 0x00000440
	gsDPPipeSync(), // 0x00000448
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00004908), // 0x00000450
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 4, 0), // 0x00000458
	gsDPLoadSync(), // 0x00000460
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000468
	gsDPPipeSync(), // 0x00000470
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 2, 4, 0), // 0x00000478
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00000480
	gsDPSetPrimColor(0, 0, 245, 244, 241, 255), // 0x00000488
	gsSPVertex(_jyasinzou_room_7_vertices_00000290, 8, 0), // 0x00000490
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000498
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000004A0
	gsSPEndDisplayList(), // 0x000004A8
};

Vtx_t _jyasinzou_room_7_vertices_000004B0[6] = 
{
	 { -575, 856, -205, 0, 1024, 0, 113, 75, 37, 255 }, // 0x000004B0
	 { -565, 889, -215, 0, 2048, 2048, 197, 140, 82, 255 }, // 0x000004C0
	 { -585, 889, -195, 0, 0, 2048, 197, 140, 82, 255 }, // 0x000004D0
	 { -592, 884, -222, 0, 2048, 2048, 241, 228, 215, 255 }, // 0x000004E0
	 { -585, 889, -195, 0, 0, 2048, 197, 140, 82, 255 }, // 0x000004F0
	 { -592, 884, -222, 0, 0, 2048, 241, 228, 215, 255 }, // 0x00000500
};

Vtx_t _jyasinzou_room_7_vertices_00000510[8] = 
{
	 { -573, 891, -214, 0, 0, 1024, 209, 164, 118, 255 }, // 0x00000510
	 { -573, 884, -214, 0, 512, 1024, 113, 75, 37, 255 }, // 0x00000520
	 { -567, 884, -208, 0, 512, 0, 81, 72, 55, 255 }, // 0x00000530
	 { -567, 891, -208, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000540
	 { -578, 891, -197, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000550
	 { -578, 884, -197, 0, 512, 0, 81, 72, 55, 255 }, // 0x00000560
	 { -584, 884, -203, 0, 512, 1024, 113, 75, 37, 255 }, // 0x00000570
	 { -584, 891, -203, 0, 0, 1024, 209, 164, 118, 255 }, // 0x00000580
};

Vtx_t _jyasinzou_room_7_vertices_00000590[8] = 
{
	 { -594, 856, -208, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000590
	 { -567, 856, -204, 0, 0, 0, 0, 0, 0, 0 }, // 0x000005A0
	 { -590, 864, -229, 0, 0, 0, 0, 0, 0, 0 }, // 0x000005B0
	 { -564, 864, -224, 0, 0, 0, 0, 0, 0, 0 }, // 0x000005C0
	 { -596, 890, -196, 0, 0, 0, 0, 0, 0, 0 }, // 0x000005D0
	 { -569, 890, -192, 0, 0, 0, 0, 0, 0, 0 }, // 0x000005E0
	 { -592, 898, -217, 0, 0, 0, 0, 0, 0, 0 }, // 0x000005F0
	 { -566, 898, -212, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000600
};

Gfx _jyasinzou_room_7_dlist_00000610[] =
{
	gsDPPipeSync(), // 0x00000610
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000618
	gsSPVertex(_jyasinzou_room_7_vertices_00000590, 8, 0), // 0x00000620
	gsSPCullDisplayList(0, 7), // 0x00000628
	gsDPPipeSync(), // 0x00000630
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000638
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000640
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000648
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00002908), // 0x00000650
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 1, 5, 0), // 0x00000658
	gsDPLoadSync(), // 0x00000660
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00000668
	gsDPPipeSync(), // 0x00000670
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 6, 0, 1, 5, 0), // 0x00000678
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000680
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000688
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00000690
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00000698
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x000006A0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000006A8
	gsSPVertex(_jyasinzou_room_7_vertices_000004B0, 6, 0), // 0x000006B0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0), // 0x000006B8
	gsSP1Triangle(5, 1, 0, 0), // 0x000006C0
	gsDPPipeSync(), // 0x000006C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00004908), // 0x000006D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 4, 0), // 0x000006D8
	gsDPLoadSync(), // 0x000006E0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000006E8
	gsDPPipeSync(), // 0x000006F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 2, 4, 0), // 0x000006F8
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00000700
	gsDPSetPrimColor(0, 0, 245, 244, 241, 255), // 0x00000708
	gsSPVertex(_jyasinzou_room_7_vertices_00000510, 8, 0), // 0x00000710
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000718
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000720
	gsSPEndDisplayList(), // 0x00000728
};

Vtx_t _jyasinzou_room_7_vertices_00000730[6] = 
{
	 { -482, 836, -430, 0, 1024, 0, 113, 75, 37, 255 }, // 0x00000730
	 { -482, 869, -444, 0, 2048, 2048, 197, 140, 82, 255 }, // 0x00000740
	 { -482, 869, -416, 0, 0, 2048, 197, 140, 82, 255 }, // 0x00000750
	 { -505, 864, -430, 0, 2048, 2048, 241, 228, 215, 255 }, // 0x00000760
	 { -482, 869, -416, 0, 0, 2048, 197, 140, 82, 255 }, // 0x00000770
	 { -505, 864, -430, 0, 0, 2048, 241, 228, 215, 255 }, // 0x00000780
};

Vtx_t _jyasinzou_room_7_vertices_00000790[8] = 
{
	 { -487, 871, -438, 0, 0, 1024, 209, 164, 118, 255 }, // 0x00000790
	 { -487, 864, -438, 0, 512, 1024, 113, 75, 37, 255 }, // 0x000007A0
	 { -478, 864, -438, 0, 512, 0, 81, 72, 55, 255 }, // 0x000007B0
	 { -478, 871, -438, 0, 0, 0, 81, 72, 55, 255 }, // 0x000007C0
	 { -478, 871, -422, 0, 0, 0, 81, 72, 55, 255 }, // 0x000007D0
	 { -478, 864, -422, 0, 512, 0, 81, 72, 55, 255 }, // 0x000007E0
	 { -487, 864, -422, 0, 512, 1024, 113, 75, 37, 255 }, // 0x000007F0
	 { -487, 871, -422, 0, 0, 1024, 209, 164, 118, 255 }, // 0x00000800
};

Vtx_t _jyasinzou_room_7_vertices_00000810[8] = 
{
	 { -499, 836, -440, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000810
	 { -476, 836, -426, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000820
	 { -493, 870, -451, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000830
	 { -470, 870, -437, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000840
	 { -510, 844, -422, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000850
	 { -486, 844, -408, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000860
	 { -504, 878, -432, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000870
	 { -480, 878, -419, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000880
};

Gfx _jyasinzou_room_7_dlist_00000890[] =
{
	gsDPPipeSync(), // 0x00000890
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000898
	gsSPVertex(_jyasinzou_room_7_vertices_00000810, 8, 0), // 0x000008A0
	gsSPCullDisplayList(0, 7), // 0x000008A8
	gsDPPipeSync(), // 0x000008B0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000008B8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000008C0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000008C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00002908), // 0x000008D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 1, 5, 0), // 0x000008D8
	gsDPLoadSync(), // 0x000008E0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000008E8
	gsDPPipeSync(), // 0x000008F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 6, 0, 1, 5, 0), // 0x000008F8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000900
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000908
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00000910
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00000918
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x00000920
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000928
	gsSPVertex(_jyasinzou_room_7_vertices_00000730, 6, 0), // 0x00000930
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0), // 0x00000938
	gsSP1Triangle(5, 1, 0, 0), // 0x00000940
	gsDPPipeSync(), // 0x00000948
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00004908), // 0x00000950
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 4, 0), // 0x00000958
	gsDPLoadSync(), // 0x00000960
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000968
	gsDPPipeSync(), // 0x00000970
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 2, 4, 0), // 0x00000978
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00000980
	gsDPSetPrimColor(0, 0, 245, 244, 241, 255), // 0x00000988
	gsSPVertex(_jyasinzou_room_7_vertices_00000790, 8, 0), // 0x00000990
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000998
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000009A0
	gsSPEndDisplayList(), // 0x000009A8
};

Vtx_t _jyasinzou_room_7_vertices_000009B0[6] = 
{
	 { -814, 899, -308, 0, 0, 2048, 197, 140, 82, 255 }, // 0x000009B0
	 { -786, 899, -308, 0, 2048, 2048, 197, 140, 82, 255 }, // 0x000009C0
	 { -800, 866, -308, 0, 1024, 0, 113, 75, 37, 255 }, // 0x000009D0
	 { -814, 899, -308, 0, 0, 2048, 197, 140, 82, 255 }, // 0x000009E0
	 { -800, 894, -285, 0, 2048, 2048, 241, 228, 215, 255 }, // 0x000009F0
	 { -800, 894, -285, 0, 0, 2048, 241, 228, 215, 255 }, // 0x00000A00
};

Vtx_t _jyasinzou_room_7_vertices_00000A10[8] = 
{
	 { -792, 901, -312, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000A10
	 { -792, 894, -312, 0, 512, 0, 81, 72, 55, 255 }, // 0x00000A20
	 { -792, 894, -303, 0, 512, 1024, 113, 75, 37, 255 }, // 0x00000A30
	 { -792, 901, -303, 0, 0, 1024, 209, 164, 118, 255 }, // 0x00000A40
	 { -808, 901, -303, 0, 0, 1024, 209, 164, 118, 255 }, // 0x00000A50
	 { -808, 894, -303, 0, 512, 1024, 113, 75, 37, 255 }, // 0x00000A60
	 { -808, 894, -312, 0, 512, 0, 81, 72, 55, 255 }, // 0x00000A70
	 { -808, 901, -312, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000A80
};

Vtx_t _jyasinzou_room_7_vertices_00000A90[8] = 
{
	 { -804, 866, -314, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A90
	 { -790, 866, -291, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AA0
	 { -793, 900, -320, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AB0
	 { -779, 900, -297, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AC0
	 { -822, 874, -304, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AD0
	 { -808, 874, -280, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AE0
	 { -811, 908, -310, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AF0
	 { -798, 908, -286, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B00
};

Gfx _jyasinzou_room_7_dlist_00000B10[] =
{
	gsDPPipeSync(), // 0x00000B10
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000B18
	gsSPVertex(_jyasinzou_room_7_vertices_00000A90, 8, 0), // 0x00000B20
	gsSPCullDisplayList(0, 7), // 0x00000B28
	gsDPPipeSync(), // 0x00000B30
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000B38
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000B40
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000B48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00002908), // 0x00000B50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 1, 5, 0), // 0x00000B58
	gsDPLoadSync(), // 0x00000B60
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00000B68
	gsDPPipeSync(), // 0x00000B70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 6, 0, 1, 5, 0), // 0x00000B78
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000B80
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000B88
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00000B90
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00000B98
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x00000BA0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000BA8
	gsSPVertex(_jyasinzou_room_7_vertices_000009B0, 6, 0), // 0x00000BB0
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0), // 0x00000BB8
	gsSP1Triangle(2, 1, 5, 0), // 0x00000BC0
	gsDPPipeSync(), // 0x00000BC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00004908), // 0x00000BD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 4, 0), // 0x00000BD8
	gsDPLoadSync(), // 0x00000BE0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000BE8
	gsDPPipeSync(), // 0x00000BF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 2, 4, 0), // 0x00000BF8
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00000C00
	gsDPSetPrimColor(0, 0, 245, 244, 241, 255), // 0x00000C08
	gsSPVertex(_jyasinzou_room_7_vertices_00000A10, 8, 0), // 0x00000C10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000C18
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000C20
	gsSPEndDisplayList(), // 0x00000C28
};

Vtx_t _jyasinzou_room_7_vertices_00000C30[6] = 
{
	 { -724, 889, -334, 0, 0, 2048, 197, 140, 82, 255 }, // 0x00000C30
	 { -704, 889, -354, 0, 2048, 2048, 197, 140, 82, 255 }, // 0x00000C40
	 { -714, 856, -344, 0, 1024, 0, 113, 75, 37, 255 }, // 0x00000C50
	 { -724, 889, -334, 0, 0, 2048, 197, 140, 82, 255 }, // 0x00000C60
	 { -697, 884, -327, 0, 2048, 2048, 241, 228, 215, 255 }, // 0x00000C70
	 { -697, 884, -327, 0, 0, 2048, 241, 228, 215, 255 }, // 0x00000C80
};

Vtx_t _jyasinzou_room_7_vertices_00000C90[8] = 
{
	 { -711, 891, -352, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000C90
	 { -711, 884, -352, 0, 512, 0, 81, 72, 55, 255 }, // 0x00000CA0
	 { -705, 884, -346, 0, 512, 1024, 113, 75, 37, 255 }, // 0x00000CB0
	 { -705, 891, -346, 0, 0, 1024, 209, 164, 118, 255 }, // 0x00000CC0
	 { -716, 891, -335, 0, 0, 1024, 209, 164, 118, 255 }, // 0x00000CD0
	 { -716, 884, -335, 0, 512, 1024, 113, 75, 37, 255 }, // 0x00000CE0
	 { -722, 884, -341, 0, 512, 0, 81, 72, 55, 255 }, // 0x00000CF0
	 { -722, 891, -341, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000D00
};

Vtx_t _jyasinzou_room_7_vertices_00000D10[8] = 
{
	 { -722, 856, -345, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D10
	 { -695, 856, -340, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D20
	 { -719, 890, -357, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D30
	 { -693, 890, -352, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D40
	 { -725, 864, -325, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D50
	 { -699, 864, -320, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D60
	 { -723, 898, -337, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D70
	 { -696, 898, -332, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D80
};

Gfx _jyasinzou_room_7_dlist_00000D90[] =
{
	gsDPPipeSync(), // 0x00000D90
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000D98
	gsSPVertex(_jyasinzou_room_7_vertices_00000D10, 8, 0), // 0x00000DA0
	gsSPCullDisplayList(0, 7), // 0x00000DA8
	gsDPPipeSync(), // 0x00000DB0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000DB8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000DC0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000DC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00002908), // 0x00000DD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 1, 5, 0), // 0x00000DD8
	gsDPLoadSync(), // 0x00000DE0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00000DE8
	gsDPPipeSync(), // 0x00000DF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 6, 0, 1, 5, 0), // 0x00000DF8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000E00
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000E08
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00000E10
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00000E18
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x00000E20
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000E28
	gsSPVertex(_jyasinzou_room_7_vertices_00000C30, 6, 0), // 0x00000E30
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0), // 0x00000E38
	gsSP1Triangle(2, 1, 5, 0), // 0x00000E40
	gsDPPipeSync(), // 0x00000E48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00004908), // 0x00000E50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 4, 0), // 0x00000E58
	gsDPLoadSync(), // 0x00000E60
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000E68
	gsDPPipeSync(), // 0x00000E70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 2, 4, 0), // 0x00000E78
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00000E80
	gsDPSetPrimColor(0, 0, 245, 244, 241, 255), // 0x00000E88
	gsSPVertex(_jyasinzou_room_7_vertices_00000C90, 8, 0), // 0x00000E90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000E98
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000EA0
	gsSPEndDisplayList(), // 0x00000EA8
};

Vtx_t _jyasinzou_room_7_vertices_00000EB0[6] = 
{
	 { -678, 869, -416, 0, 0, 2048, 197, 140, 82, 255 }, // 0x00000EB0
	 { -678, 869, -444, 0, 2048, 2048, 197, 140, 82, 255 }, // 0x00000EC0
	 { -678, 836, -430, 0, 1024, 0, 113, 75, 37, 255 }, // 0x00000ED0
	 { -678, 869, -416, 0, 0, 2048, 197, 140, 82, 255 }, // 0x00000EE0
	 { -655, 864, -430, 0, 2048, 2048, 241, 228, 215, 255 }, // 0x00000EF0
	 { -655, 864, -430, 0, 0, 2048, 241, 228, 215, 255 }, // 0x00000F00
};

Vtx_t _jyasinzou_room_7_vertices_00000F10[8] = 
{
	 { -682, 871, -438, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000F10
	 { -682, 864, -438, 0, 512, 0, 81, 72, 55, 255 }, // 0x00000F20
	 { -673, 864, -438, 0, 512, 1024, 113, 75, 37, 255 }, // 0x00000F30
	 { -673, 871, -438, 0, 0, 1024, 209, 164, 118, 255 }, // 0x00000F40
	 { -673, 871, -422, 0, 0, 1024, 209, 164, 118, 255 }, // 0x00000F50
	 { -673, 864, -422, 0, 512, 1024, 113, 75, 37, 255 }, // 0x00000F60
	 { -682, 864, -422, 0, 512, 0, 81, 72, 55, 255 }, // 0x00000F70
	 { -682, 871, -422, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000F80
};

Vtx_t _jyasinzou_room_7_vertices_00000F90[8] = 
{
	 { -684, 836, -434, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000F90
	 { -661, 836, -420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000FA0
	 { -674, 844, -452, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000FB0
	 { -650, 844, -438, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000FC0
	 { -690, 870, -423, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000FD0
	 { -667, 870, -409, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000FE0
	 { -680, 878, -441, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000FF0
	 { -656, 878, -428, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001000
};

Gfx _jyasinzou_room_7_dlist_00001010[] =
{
	gsDPPipeSync(), // 0x00001010
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001018
	gsSPVertex(_jyasinzou_room_7_vertices_00000F90, 8, 0), // 0x00001020
	gsSPCullDisplayList(0, 7), // 0x00001028
	gsDPPipeSync(), // 0x00001030
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001038
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001040
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001048
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00002908), // 0x00001050
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 1, 5, 0), // 0x00001058
	gsDPLoadSync(), // 0x00001060
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001068
	gsDPPipeSync(), // 0x00001070
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 6, 0, 1, 5, 0), // 0x00001078
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001080
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001088
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001090
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00001098
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x000010A0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000010A8
	gsSPVertex(_jyasinzou_room_7_vertices_00000EB0, 6, 0), // 0x000010B0
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0), // 0x000010B8
	gsSP1Triangle(2, 1, 5, 0), // 0x000010C0
	gsDPPipeSync(), // 0x000010C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00004908), // 0x000010D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 4, 0), // 0x000010D8
	gsDPLoadSync(), // 0x000010E0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000010E8
	gsDPPipeSync(), // 0x000010F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 2, 4, 0), // 0x000010F8
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00001100
	gsDPSetPrimColor(0, 0, 245, 244, 241, 255), // 0x00001108
	gsSPVertex(_jyasinzou_room_7_vertices_00000F10, 8, 0), // 0x00001110
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001118
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001120
	gsSPEndDisplayList(), // 0x00001128
};

Vtx_t _jyasinzou_room_7_vertices_00001130[7] = 
{
	 { -800, 843, -210, 0, 2048, -1434, 69, 62, 48, 255 }, // 0x00001130
	 { -800, 843, -310, 0, 0, -1434, 132, 88, 43, 255 }, // 0x00001140
	 { -920, 843, -310, 0, 0, 1024, 25, 20, 15, 255 }, // 0x00001150
	 { -920, 843, -270, 0, 819, 1024, 52, 49, 38, 255 }, // 0x00001160
	 { -920, 843, -150, 0, 3277, 1024, 52, 49, 38, 255 }, // 0x00001170
	 { -920, 843, -110, 0, 4096, 1024, 25, 20, 15, 255 }, // 0x00001180
	 { -800, 843, -110, 0, 4096, -1434, 132, 88, 43, 255 }, // 0x00001190
};

Vtx_t _jyasinzou_room_7_vertices_000011A0[8] = 
{
	 { -800, 1043, -110, 0, 1536, -512, 35, 31, 25, 255 }, // 0x000011A0
	 { -920, 1043, -110, 0, 0, -512, 35, 31, 25, 255 }, // 0x000011B0
	 { -920, 1043, -310, 0, 0, 2048, 35, 31, 25, 255 }, // 0x000011C0
	 { -800, 1043, -310, 0, 1536, 2048, 35, 31, 25, 255 }, // 0x000011D0
	 { -680, 1013, -430, 0, 3072, 3584, 35, 31, 25, 255 }, // 0x000011E0
	 { -680, 1013, -550, 0, 3072, 5120, 35, 31, 25, 255 }, // 0x000011F0
	 { -480, 1013, -550, 0, 5632, 5120, 35, 31, 25, 255 }, // 0x00001200
	 { -480, 1013, -430, 0, 5632, 3584, 35, 31, 25, 255 }, // 0x00001210
};

Vtx_t _jyasinzou_room_7_vertices_00001220[7] = 
{
	 { -580, 813, -430, 0, 2048, 0, 81, 72, 55, 255 }, // 0x00001220
	 { -680, 813, -550, 0, 0, 2458, 25, 20, 15, 255 }, // 0x00001230
	 { -680, 813, -430, 0, 0, 0, 132, 88, 43, 255 }, // 0x00001240
	 { -640, 813, -550, 0, 819, 2458, 52, 49, 38, 255 }, // 0x00001250
	 { -520, 813, -550, 0, 3277, 2458, 52, 49, 38, 255 }, // 0x00001260
	 { -480, 813, -550, 0, 4096, 2458, 25, 20, 15, 255 }, // 0x00001270
	 { -480, 813, -430, 0, 4096, 0, 132, 88, 43, 255 }, // 0x00001280
};

Vtx_t _jyasinzou_room_7_vertices_00001290[8] = 
{
	 { -620, 813, -667, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001290
	 { -421, 813, -500, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012A0
	 { -620, 1043, -667, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012B0
	 { -421, 1043, -500, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012C0
	 { -1018, 813, -193, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012D0
	 { -819, 813, -26, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012E0
	 { -1018, 1043, -193, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012F0
	 { -819, 1043, -26, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001300
};

Gfx _jyasinzou_room_7_dlist_00001310[] =
{
	gsDPPipeSync(), // 0x00001310
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001318
	gsSPVertex(_jyasinzou_room_7_vertices_00001290, 8, 0), // 0x00001320
	gsSPCullDisplayList(0, 7), // 0x00001328
	gsDPPipeSync(), // 0x00001330
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001338
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001340
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001348
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00003908), // 0x00001350
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00001358
	gsDPLoadSync(), // 0x00001360
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001368
	gsDPPipeSync(), // 0x00001370
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00001378
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001380
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00001388
	gsDPTileSync(), // 0x00001390
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001398
	gsDPLoadSync(), // 0x000013A0
	gsDPLoadTLUTCmd(7, 255), // 0x000013A8
	gsDPPipeSync(), // 0x000013B0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000013B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000013C0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000013C8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000013D0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000013D8
	gsSPVertex(_jyasinzou_room_7_vertices_00001130, 7, 0), // 0x000013E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000013E8
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x000013F0
	gsSP1Triangle(0, 5, 6, 0), // 0x000013F8
	gsDPPipeSync(), // 0x00001400
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00001408
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001410
	gsDPLoadSync(), // 0x00001418
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001420
	gsDPPipeSync(), // 0x00001428
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001430
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001438
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001440
	gsDPTileSync(), // 0x00001448
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001450
	gsDPLoadSync(), // 0x00001458
	gsDPLoadTLUTCmd(7, 15), // 0x00001460
	gsDPPipeSync(), // 0x00001468
	gsSPVertex(_jyasinzou_room_7_vertices_000011A0, 8, 0), // 0x00001470
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001478
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001480
	gsDPPipeSync(), // 0x00001488
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00003908), // 0x00001490
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00001498
	gsDPLoadSync(), // 0x000014A0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000014A8
	gsDPPipeSync(), // 0x000014B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000014B8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000014C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x000014C8
	gsDPTileSync(), // 0x000014D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000014D8
	gsDPLoadSync(), // 0x000014E0
	gsDPLoadTLUTCmd(7, 255), // 0x000014E8
	gsDPPipeSync(), // 0x000014F0
	gsSPVertex(_jyasinzou_room_7_vertices_00001220, 7, 0), // 0x000014F8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001500
	gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0), // 0x00001508
	gsSP1Triangle(0, 6, 5, 0), // 0x00001510
	gsSPEndDisplayList(), // 0x00001518
};

Vtx_t _jyasinzou_room_7_vertices_00001520[32] = 
{
	 { -680, 813, -550, 0, 0, 1024, 25, 20, 15, 255 }, // 0x00001520
	 { -680, 1013, -550, 0, 0, -1024, 35, 31, 25, 255 }, // 0x00001530
	 { -680, 911, -430, 0, 2267, 26, 255, 172, 151, 255 }, // 0x00001540
	 { -680, 813, -430, 0, 2267, 1024, 132, 88, 43, 255 }, // 0x00001550
	 { -680, 1013, -430, 0, 2267, -1024, 35, 31, 25, 255 }, // 0x00001560
	 { -800, 843, -310, 0, 5413, 717, 132, 88, 43, 255 }, // 0x00001570
	 { -800, 943, -310, 0, 5413, -307, 255, 172, 151, 255 }, // 0x00001580
	 { -920, 843, -310, 0, 7680, 717, 25, 20, 15, 255 }, // 0x00001590
	 { -800, 1043, -310, 0, 5413, -1331, 35, 31, 25, 255 }, // 0x000015A0
	 { -920, 1043, -310, 0, 7680, -1331, 35, 31, 25, 255 }, // 0x000015B0
	 { -480, 813, -430, 0, 2604, 1024, 132, 88, 43, 255 }, // 0x000015C0
	 { -480, 913, -430, 0, 2604, 0, 255, 160, 96, 255 }, // 0x000015D0
	 { -480, 813, -550, 0, 0, 1024, 25, 20, 15, 255 }, // 0x000015E0
	 { -480, 1013, -430, 0, 2604, -1024, 35, 31, 25, 255 }, // 0x000015F0
	 { -480, 1013, -550, 0, 0, -1024, 35, 31, 25, 255 }, // 0x00001600
	 { -920, 843, -110, 0, 15360, 717, 25, 20, 15, 255 }, // 0x00001610
	 { -800, 943, -110, 0, 12756, -307, 255, 160, 96, 255 }, // 0x00001620
	 { -800, 843, -110, 0, 12756, 717, 132, 88, 43, 255 }, // 0x00001630
	 { -920, 1043, -110, 0, 15360, -1331, 35, 31, 25, 255 }, // 0x00001640
	 { -800, 1043, -110, 0, 12756, -1331, 35, 31, 25, 255 }, // 0x00001650
	 { -689, 916, -384, 0, 3047, -26, 134, 119, 89, 255 }, // 0x00001660
	 { -689, 813, -384, 0, 3047, 1024, 25, 20, 15, 255 }, // 0x00001670
	 { -689, 1018, -384, 0, 3047, -1075, 35, 31, 25, 255 }, // 0x00001680
	 { -689, 823, -384, 0, 3047, 922, 25, 20, 15, 255 }, // 0x00001690
	 { -689, 921, -384, 0, 3047, -77, 134, 119, 89, 255 }, // 0x000016A0
	 { -715, 926, -345, 0, 3840, -128, 255, 172, 151, 255 }, // 0x000016B0
	 { -715, 823, -345, 0, 3840, 922, 93, 62, 31, 255 }, // 0x000016C0
	 { -715, 1028, -345, 0, 3840, -1178, 35, 31, 25, 255 }, // 0x000016D0
	 { -715, 833, -345, 0, 3840, 819, 93, 62, 31, 255 }, // 0x000016E0
	 { -715, 931, -345, 0, 3840, -179, 255, 172, 151, 255 }, // 0x000016F0
	 { -754, 936, -319, 0, 4633, -230, 134, 119, 89, 255 }, // 0x00001700
	 { -754, 833, -319, 0, 4633, 819, 25, 20, 15, 255 }, // 0x00001710
};

Vtx_t _jyasinzou_room_7_vertices_00001720[30] = 
{
	 { -715, 931, -345, 0, 3840, -179, 255, 172, 151, 255 }, // 0x00001720
	 { -715, 1028, -345, 0, 3840, -1178, 35, 31, 25, 255 }, // 0x00001730
	 { -754, 1038, -319, 0, 4633, -1280, 35, 31, 25, 255 }, // 0x00001740
	 { -754, 936, -319, 0, 4633, -230, 134, 119, 89, 255 }, // 0x00001750
	 { -754, 843, -319, 0, 4633, 717, 25, 20, 15, 255 }, // 0x00001760
	 { -754, 941, -319, 0, 4633, -282, 134, 119, 89, 255 }, // 0x00001770
	 { -800, 843, -310, 0, 5413, 717, 132, 88, 43, 255 }, // 0x00001780
	 { -800, 943, -310, 0, 5413, -307, 255, 172, 151, 255 }, // 0x00001790
	 { -800, 1043, -310, 0, 5413, -1331, 35, 31, 25, 255 }, // 0x000017A0
	 { -800, 843, -110, 0, 12756, 717, 132, 88, 43, 255 }, // 0x000017B0
	 { -678, 941, -134, 0, 10196, -282, 134, 119, 89, 255 }, // 0x000017C0
	 { -678, 843, -134, 0, 10196, 717, 25, 20, 15, 255 }, // 0x000017D0
	 { -800, 943, -110, 0, 12756, -307, 255, 160, 96, 255 }, // 0x000017E0
	 { -800, 1043, -110, 0, 12756, -1331, 35, 31, 25, 255 }, // 0x000017F0
	 { -678, 1038, -134, 0, 10196, -1280, 35, 31, 25, 255 }, // 0x00001800
	 { -678, 833, -134, 0, 10196, 819, 25, 20, 15, 255 }, // 0x00001810
	 { -678, 936, -134, 0, 10196, -230, 134, 119, 89, 255 }, // 0x00001820
	 { -574, 931, -204, 0, 7680, -179, 255, 160, 96, 255 }, // 0x00001830
	 { -574, 833, -204, 0, 7680, 819, 132, 88, 43, 255 }, // 0x00001840
	 { -574, 1028, -204, 0, 7680, -1178, 35, 31, 25, 255 }, // 0x00001850
	 { -574, 823, -204, 0, 7680, 922, 132, 88, 43, 255 }, // 0x00001860
	 { -574, 926, -204, 0, 7680, -128, 255, 160, 96, 255 }, // 0x00001870
	 { -504, 921, -308, 0, 5164, -77, 134, 119, 89, 255 }, // 0x00001880
	 { -504, 823, -308, 0, 5164, 922, 25, 20, 15, 255 }, // 0x00001890
	 { -504, 1018, -308, 0, 5164, -1075, 35, 31, 25, 255 }, // 0x000018A0
	 { -504, 916, -308, 0, 5164, -26, 134, 119, 89, 255 }, // 0x000018B0
	 { -480, 913, -430, 0, 2604, 0, 255, 160, 96, 255 }, // 0x000018C0
	 { -480, 1013, -430, 0, 2604, -1024, 35, 31, 25, 255 }, // 0x000018D0
	 { -480, 813, -430, 0, 2604, 1024, 132, 88, 43, 255 }, // 0x000018E0
	 { -504, 813, -308, 0, 5164, 1024, 25, 20, 15, 255 }, // 0x000018F0
};

Vtx_t _jyasinzou_room_7_vertices_00001900[8] = 
{
	 { -920, 813, -550, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001900
	 { -480, 813, -550, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001910
	 { -920, 1043, -550, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001920
	 { -480, 1043, -550, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001930
	 { -920, 813, -110, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001940
	 { -480, 813, -110, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001950
	 { -920, 1043, -110, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001960
	 { -480, 1043, -110, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001970
};

Gfx _jyasinzou_room_7_dlist_00001980[] =
{
	gsDPPipeSync(), // 0x00001980
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001988
	gsSPVertex(_jyasinzou_room_7_vertices_00001900, 8, 0), // 0x00001990
	gsSPCullDisplayList(0, 7), // 0x00001998
	gsDPPipeSync(), // 0x000019A0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000019A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000019B0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000019B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00004108), // 0x000019C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000019C8
	gsDPLoadSync(), // 0x000019D0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000019D8
	gsDPPipeSync(), // 0x000019E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000019E8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000019F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x000019F8
	gsDPTileSync(), // 0x00001A00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001A08
	gsDPLoadSync(), // 0x00001A10
	gsDPLoadTLUTCmd(7, 255), // 0x00001A18
	gsDPPipeSync(), // 0x00001A20
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001A28
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001A30
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001A38
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001A40
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001A48
	gsSPVertex(_jyasinzou_room_7_vertices_00001520, 32, 0), // 0x00001A50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001A58
	gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0), // 0x00001A60
	gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0), // 0x00001A68
	gsSP2Triangles(10, 11, 12, 0, 11, 13, 14, 0), // 0x00001A70
	gsSP2Triangles(11, 14, 12, 0, 15, 16, 17, 0), // 0x00001A78
	gsSP2Triangles(15, 18, 16, 0, 18, 19, 16, 0), // 0x00001A80
	gsSP2Triangles(3, 20, 21, 0, 3, 2, 20, 0), // 0x00001A88
	gsSP2Triangles(2, 4, 20, 0, 4, 22, 20, 0), // 0x00001A90
	gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0), // 0x00001A98
	gsSP2Triangles(24, 22, 27, 0, 24, 27, 25, 0), // 0x00001AA0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00001AA8
	gsSPVertex(_jyasinzou_room_7_vertices_00001720, 30, 0), // 0x00001AB0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001AB8
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00001AC0
	gsSP2Triangles(5, 8, 7, 0, 5, 2, 8, 0), // 0x00001AC8
	gsSP2Triangles(9, 10, 11, 0, 9, 12, 10, 0), // 0x00001AD0
	gsSP2Triangles(12, 13, 10, 0, 13, 14, 10, 0), // 0x00001AD8
	gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0), // 0x00001AE0
	gsSP2Triangles(16, 14, 19, 0, 16, 19, 17, 0), // 0x00001AE8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00001AF0
	gsSP2Triangles(21, 19, 24, 0, 21, 24, 22, 0), // 0x00001AF8
	gsSP2Triangles(25, 24, 26, 0, 24, 27, 26, 0), // 0x00001B00
	gsSP2Triangles(28, 29, 26, 0, 29, 25, 26, 0), // 0x00001B08
	gsSPEndDisplayList(), // 0x00001B10
};

Vtx_t _jyasinzou_room_7_vertices_00001B18[10] = 
{
	 { -480, 1013, -430, 0, 5632, 3584, 35, 31, 25, 255 }, // 0x00001B18
	 { -504, 1018, -308, 0, 5320, 2017, 35, 31, 25, 255 }, // 0x00001B28
	 { -689, 1018, -384, 0, 2955, 2996, 35, 31, 25, 255 }, // 0x00001B38
	 { -680, 1013, -430, 0, 3072, 3584, 35, 31, 25, 255 }, // 0x00001B48
	 { -574, 1028, -204, 0, 4432, 688, 35, 31, 25, 255 }, // 0x00001B58
	 { -715, 1028, -345, 0, 2622, 2498, 35, 31, 25, 255 }, // 0x00001B68
	 { -678, 1038, -134, 0, 3103, -200, 35, 31, 25, 255 }, // 0x00001B78
	 { -754, 1038, -319, 0, 2124, 2165, 35, 31, 25, 255 }, // 0x00001B88
	 { -800, 1043, -110, 0, 1536, -512, 35, 31, 25, 255 }, // 0x00001B98
	 { -800, 1043, -310, 0, 1536, 2048, 35, 31, 25, 255 }, // 0x00001BA8
};

Vtx_t _jyasinzou_room_7_vertices_00001BB8[16] = 
{
	 { -920, 843, -150, 0, 683, 1024, 115, 102, 78, 255 }, // 0x00001BB8
	 { -920, 1003, -150, 0, 683, -341, 134, 119, 89, 255 }, // 0x00001BC8
	 { -920, 843, -110, 0, 0, 1024, 25, 20, 15, 255 }, // 0x00001BD8
	 { -920, 843, -270, 0, 2731, 1024, 81, 72, 55, 255 }, // 0x00001BE8
	 { -920, 843, -310, 0, 3413, 1024, 25, 20, 15, 255 }, // 0x00001BF8
	 { -920, 1003, -270, 0, 2731, -341, 134, 119, 89, 255 }, // 0x00001C08
	 { -920, 1043, -310, 0, 3413, -683, 35, 31, 25, 255 }, // 0x00001C18
	 { -920, 1043, -110, 0, 0, -683, 35, 31, 25, 255 }, // 0x00001C28
	 { -640, 813, -550, 0, -683, 1024, 100, 89, 67, 255 }, // 0x00001C38
	 { -640, 973, -550, 0, -683, -341, 134, 119, 89, 255 }, // 0x00001C48
	 { -680, 813, -550, 0, -1365, 1024, 25, 20, 15, 255 }, // 0x00001C58
	 { -520, 813, -550, 0, 1365, 1024, 100, 89, 67, 255 }, // 0x00001C68
	 { -480, 813, -550, 0, 2048, 1024, 25, 20, 15, 255 }, // 0x00001C78
	 { -520, 973, -550, 0, 1365, -341, 134, 119, 89, 255 }, // 0x00001C88
	 { -480, 1013, -550, 0, 2048, -683, 35, 31, 25, 255 }, // 0x00001C98
	 { -680, 1013, -550, 0, -1365, -683, 35, 31, 25, 255 }, // 0x00001CA8
};

Vtx_t _jyasinzou_room_7_vertices_00001CB8[42] = 
{
	 { -597, 823, -346, 0, 2009, 1039, 81, 72, 55, 255 }, // 0x00001CB8
	 { -644, 823, -274, 0, 2009, -400, 52, 49, 38, 255 }, // 0x00001CC8
	 { -504, 823, -308, 0, 4017, 1438, 25, 20, 15, 255 }, // 0x00001CD8
	 { -574, 823, -204, 0, 4017, -799, 132, 88, 43, 255 }, // 0x00001CE8
	 { -689, 823, -384, 0, 0, 639, 25, 20, 15, 255 }, // 0x00001CF8
	 { -715, 823, -345, 0, 0, 0, 93, 62, 31, 255 }, // 0x00001D08
	 { -644, 833, -274, 0, 2009, 1424, 81, 72, 55, 255 }, // 0x00001D18
	 { -678, 833, -134, 0, 4017, -414, 25, 20, 15, 255 }, // 0x00001D28
	 { -574, 833, -204, 0, 4017, 1823, 132, 88, 43, 255 }, // 0x00001D38
	 { -716, 833, -227, 0, 2009, -15, 52, 49, 38, 255 }, // 0x00001D48
	 { -754, 833, -319, 0, 0, 385, 25, 20, 15, 255 }, // 0x00001D58
	 { -715, 833, -345, 0, 0, 1024, 93, 62, 31, 255 }, // 0x00001D68
	 { -597, 823, -346, 0, 2048, 0, 25, 20, 15, 255 }, // 0x00001D78
	 { -597, 813, -346, 0, 2048, 205, 25, 20, 15, 255 }, // 0x00001D88
	 { -689, 813, -384, 0, 0, 205, 25, 20, 15, 255 }, // 0x00001D98
	 { -689, 823, -384, 0, 0, 0, 25, 20, 15, 255 }, // 0x00001DA8
	 { -504, 823, -308, 0, 4096, 0, 25, 20, 15, 255 }, // 0x00001DB8
	 { -504, 813, -308, 0, 4096, 205, 25, 20, 15, 255 }, // 0x00001DC8
	 { -644, 833, -274, 0, 2048, 0, 25, 20, 15, 255 }, // 0x00001DD8
	 { -644, 823, -274, 0, 2048, 205, 25, 20, 15, 255 }, // 0x00001DE8
	 { -715, 823, -345, 0, 0, 205, 25, 20, 15, 255 }, // 0x00001DF8
	 { -715, 833, -345, 0, 0, 0, 25, 20, 15, 255 }, // 0x00001E08
	 { -574, 833, -204, 0, 4096, 0, 25, 20, 15, 255 }, // 0x00001E18
	 { -574, 823, -204, 0, 4096, 205, 25, 20, 15, 255 }, // 0x00001E28
	 { -716, 843, -227, 0, 2048, 0, 52, 49, 38, 255 }, // 0x00001E38
	 { -716, 833, -227, 0, 2048, 205, 25, 20, 15, 255 }, // 0x00001E48
	 { -754, 833, -319, 0, 0, 205, 25, 20, 15, 255 }, // 0x00001E58
	 { -754, 843, -319, 0, 0, 0, 25, 20, 15, 255 }, // 0x00001E68
	 { -678, 843, -134, 0, 4096, 0, 25, 20, 15, 255 }, // 0x00001E78
	 { -678, 833, -134, 0, 4096, 205, 25, 20, 15, 255 }, // 0x00001E88
	 { -800, 843, -310, 0, 0, 978, 132, 88, 43, 255 }, // 0x00001E98
	 { -800, 843, -210, 0, 2050, 1386, 69, 62, 48, 255 }, // 0x00001EA8
	 { -754, 843, -319, 0, 0, 0, 25, 20, 15, 255 }, // 0x00001EB8
	 { -716, 843, -227, 0, 2050, -408, 81, 72, 55, 255 }, // 0x00001EC8
	 { -678, 843, -134, 0, 4099, -815, 25, 20, 15, 255 }, // 0x00001ED8
	 { -800, 843, -110, 0, 4099, 1794, 132, 88, 43, 255 }, // 0x00001EE8
	 { -480, 813, -430, 0, 4099, 1794, 132, 88, 43, 255 }, // 0x00001EF8
	 { -580, 813, -430, 0, 2050, 1386, 81, 72, 55, 255 }, // 0x00001F08
	 { -504, 813, -308, 0, 4099, -815, 25, 20, 15, 255 }, // 0x00001F18
	 { -597, 813, -346, 0, 2050, -408, 69, 62, 48, 255 }, // 0x00001F28
	 { -689, 813, -384, 0, 0, 0, 25, 20, 15, 255 }, // 0x00001F38
	 { -680, 813, -430, 0, 0, 978, 132, 88, 43, 255 }, // 0x00001F48
};

Vtx_t _jyasinzou_room_7_vertices_00001F58[8] = 
{
	 { -920, 813, -550, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F58
	 { -480, 813, -550, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F68
	 { -920, 1043, -550, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F78
	 { -480, 1043, -550, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F88
	 { -920, 813, -110, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F98
	 { -480, 813, -110, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001FA8
	 { -920, 1043, -110, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001FB8
	 { -480, 1043, -110, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001FC8
};

Gfx _jyasinzou_room_7_dlist_00001FD8[] =
{
	gsDPPipeSync(), // 0x00001FD8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001FE0
	gsSPVertex(_jyasinzou_room_7_vertices_00001F58, 8, 0), // 0x00001FE8
	gsSPCullDisplayList(0, 7), // 0x00001FF0
	gsDPPipeSync(), // 0x00001FF8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002000
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002008
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002010
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00002018
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00002020
	gsDPLoadSync(), // 0x00002028
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002030
	gsDPPipeSync(), // 0x00002038
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00002040
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00002048
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00002050
	gsDPTileSync(), // 0x00002058
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002060
	gsDPLoadSync(), // 0x00002068
	gsDPLoadTLUTCmd(7, 15), // 0x00002070
	gsDPPipeSync(), // 0x00002078
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002080
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002088
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002090
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002098
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000020A0
	gsSPVertex(_jyasinzou_room_7_vertices_00001B18, 10, 0), // 0x000020A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000020B0
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x000020B8
	gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0), // 0x000020C0
	gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0), // 0x000020C8
	gsDPPipeSync(), // 0x000020D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00004108), // 0x000020D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000020E0
	gsDPLoadSync(), // 0x000020E8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000020F0
	gsDPPipeSync(), // 0x000020F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002100
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002108
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00002110
	gsDPTileSync(), // 0x00002118
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002120
	gsDPLoadSync(), // 0x00002128
	gsDPLoadTLUTCmd(7, 255), // 0x00002130
	gsDPPipeSync(), // 0x00002138
	gsSPVertex(_jyasinzou_room_7_vertices_00001BB8, 16, 0), // 0x00002140
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00002148
	gsSP2Triangles(5, 4, 6, 0, 1, 7, 2, 0), // 0x00002150
	gsSP2Triangles(1, 5, 7, 0, 5, 6, 7, 0), // 0x00002158
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0), // 0x00002160
	gsSP2Triangles(13, 12, 14, 0, 9, 15, 10, 0), // 0x00002168
	gsSP2Triangles(9, 13, 15, 0, 13, 14, 15, 0), // 0x00002170
	gsDPPipeSync(), // 0x00002178
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00003908), // 0x00002180
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00002188
	gsDPLoadSync(), // 0x00002190
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002198
	gsDPPipeSync(), // 0x000021A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000021A8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000021B0
	gsSPVertex(_jyasinzou_room_7_vertices_00001CB8, 32, 0), // 0x000021B8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000021C0
	gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0), // 0x000021C8
	gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0), // 0x000021D0
	gsSP2Triangles(6, 10, 9, 0, 6, 11, 10, 0), // 0x000021D8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000021E0
	gsSP2Triangles(12, 16, 17, 0, 12, 17, 13, 0), // 0x000021E8
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x000021F0
	gsSP2Triangles(18, 22, 23, 0, 18, 23, 19, 0), // 0x000021F8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002200
	gsSP2Triangles(24, 28, 29, 0, 24, 29, 25, 0), // 0x00002208
	gsSPVertex(_jyasinzou_room_7_vertices_00001E98, 12, 0), // 0x00002210
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002218
	gsSP2Triangles(3, 1, 4, 0, 1, 5, 4, 0), // 0x00002220
	gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0), // 0x00002228
	gsSP2Triangles(9, 7, 10, 0, 7, 11, 10, 0), // 0x00002230
	gsSPEndDisplayList(), // 0x00002238
};

Vtx_t _jyasinzou_room_7_vertices_00002240[8] = 
{
	 { -940, 843, -150, 0, 3277, 1434, 69, 62, 48, 255 }, // 0x00002240
	 { -920, 843, -150, 0, 3277, 1024, 52, 49, 38, 255 }, // 0x00002250
	 { -920, 843, -270, 0, 819, 1024, 52, 49, 38, 255 }, // 0x00002260
	 { -940, 843, -270, 0, 819, 1434, 69, 62, 48, 255 }, // 0x00002270
	 { -640, 813, -570, 0, 724, 1586, 52, 49, 38, 255 }, // 0x00002280
	 { -640, 813, -550, 0, 803, 1184, 52, 49, 38, 255 }, // 0x00002290
	 { -520, 813, -550, 0, 3214, 1663, 52, 49, 38, 255 }, // 0x000022A0
	 { -520, 813, -570, 0, 3134, 2065, 52, 49, 38, 255 }, // 0x000022B0
};

Vtx_t _jyasinzou_room_7_vertices_000022C0[8] = 
{
	 { -619, 813, -653, 0, 0, 0, 0, 0, 0, 0 }, // 0x000022C0
	 { -510, 813, -562, 0, 0, 0, 0, 0, 0, 0 }, // 0x000022D0
	 { -619, 843, -653, 0, 0, 0, 0, 0, 0, 0 }, // 0x000022E0
	 { -510, 843, -562, 0, 0, 0, 0, 0, 0, 0 }, // 0x000022F0
	 { -999, 813, -200, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002300
	 { -890, 813, -108, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002310
	 { -999, 843, -200, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002320
	 { -890, 843, -108, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002330
};

Gfx _jyasinzou_room_7_dlist_00002340[] =
{
	gsDPPipeSync(), // 0x00002340
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002348
	gsSPVertex(_jyasinzou_room_7_vertices_000022C0, 8, 0), // 0x00002350
	gsSPCullDisplayList(0, 7), // 0x00002358
	gsDPPipeSync(), // 0x00002360
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002368
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002370
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002378
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00003908), // 0x00002380
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00002388
	gsDPLoadSync(), // 0x00002390
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002398
	gsDPPipeSync(), // 0x000023A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000023A8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000023B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x000023B8
	gsDPTileSync(), // 0x000023C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000023C8
	gsDPLoadSync(), // 0x000023D0
	gsDPLoadTLUTCmd(7, 255), // 0x000023D8
	gsDPPipeSync(), // 0x000023E0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000023E8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000023F0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000023F8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002400
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002408
	gsSPVertex(_jyasinzou_room_7_vertices_00002240, 8, 0), // 0x00002410
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002418
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002420
	gsSPEndDisplayList(), // 0x00002428
};

Vtx_t _jyasinzou_room_7_vertices_00002430[4] = 
{
	 { -640, 813, -550, 0, -341, 1024, 69, 62, 48, 255 }, // 0x00002430
	 { -640, 813, -570, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00002440
	 { -640, 973, -570, 0, 0, -341, 69, 62, 48, 255 }, // 0x00002450
	 { -640, 973, -550, 0, -341, -341, 69, 62, 48, 255 }, // 0x00002460
};

Vtx_t _jyasinzou_room_7_vertices_00002470[4] = 
{
	 { -640, 973, -550, 0, 1195, 1024, 69, 62, 48, 255 }, // 0x00002470
	 { -640, 973, -570, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00002480
	 { -520, 973, -570, 0, 1024, 512, 69, 62, 48, 255 }, // 0x00002490
	 { -520, 973, -550, 0, 1195, 512, 69, 62, 48, 255 }, // 0x000024A0
};

Vtx_t _jyasinzou_room_7_vertices_000024B0[4] = 
{
	 { -520, 973, -550, 0, 2389, -341, 69, 62, 48, 255 }, // 0x000024B0
	 { -520, 973, -570, 0, 2048, -341, 69, 62, 48, 255 }, // 0x000024C0
	 { -520, 813, -570, 0, 2048, 1024, 69, 62, 48, 255 }, // 0x000024D0
	 { -520, 813, -550, 0, 2389, 1024, 69, 62, 48, 255 }, // 0x000024E0
};

Vtx_t _jyasinzou_room_7_vertices_000024F0[12] = 
{
	 { -920, 1003, -270, 0, 341, 683, 52, 49, 38, 255 }, // 0x000024F0
	 { -940, 1003, -270, 0, 171, 683, 52, 49, 38, 255 }, // 0x00002500
	 { -940, 843, -270, 0, 171, 2048, 81, 72, 55, 255 }, // 0x00002510
	 { -920, 843, -270, 0, 341, 2048, 81, 72, 55, 255 }, // 0x00002520
	 { -920, 1003, -150, 0, 341, 1024, 52, 49, 38, 255 }, // 0x00002530
	 { -940, 1003, -150, 0, 171, 1024, 52, 49, 38, 255 }, // 0x00002540
	 { -940, 1003, -270, 0, 171, 2048, 52, 49, 38, 255 }, // 0x00002550
	 { -920, 1003, -270, 0, 341, 2048, 52, 49, 38, 255 }, // 0x00002560
	 { -920, 843, -150, 0, 341, 2048, 81, 72, 55, 255 }, // 0x00002570
	 { -940, 843, -150, 0, 171, 2048, 81, 72, 55, 255 }, // 0x00002580
	 { -940, 1003, -150, 0, 171, 683, 52, 49, 38, 255 }, // 0x00002590
	 { -920, 1003, -150, 0, 341, 683, 52, 49, 38, 255 }, // 0x000025A0
};

Vtx_t _jyasinzou_room_7_vertices_000025B0[8] = 
{
	 { -619, 813, -653, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025B0
	 { -510, 813, -562, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025C0
	 { -619, 1003, -653, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025D0
	 { -510, 1003, -562, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025E0
	 { -999, 813, -200, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025F0
	 { -890, 813, -108, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002600
	 { -999, 1003, -200, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002610
	 { -890, 1003, -108, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002620
};

Gfx _jyasinzou_room_7_dlist_00002630[] =
{
	gsDPPipeSync(), // 0x00002630
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002638
	gsSPVertex(_jyasinzou_room_7_vertices_000025B0, 8, 0), // 0x00002640
	gsSPCullDisplayList(0, 7), // 0x00002648
	gsDPPipeSync(), // 0x00002650
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002658
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002660
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002668
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00004108), // 0x00002670
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002678
	gsDPLoadSync(), // 0x00002680
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002688
	gsDPPipeSync(), // 0x00002690
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002698
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000026A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x000026A8
	gsDPTileSync(), // 0x000026B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000026B8
	gsDPLoadSync(), // 0x000026C0
	gsDPLoadTLUTCmd(7, 255), // 0x000026C8
	gsDPPipeSync(), // 0x000026D0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000026D8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000026E0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000026E8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000026F0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000026F8
	gsSPVertex(_jyasinzou_room_7_vertices_00002430, 4, 0), // 0x00002700
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002708
	gsDPPipeSync(), // 0x00002710
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00004D08), // 0x00002718
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00002720
	gsDPLoadSync(), // 0x00002728
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002730
	gsDPPipeSync(), // 0x00002738
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00002740
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00002748
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00002750
	gsDPTileSync(), // 0x00002758
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002760
	gsDPLoadSync(), // 0x00002768
	gsDPLoadTLUTCmd(7, 15), // 0x00002770
	gsDPPipeSync(), // 0x00002778
	gsSPVertex(_jyasinzou_room_7_vertices_00002470, 4, 0), // 0x00002780
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002788
	gsDPPipeSync(), // 0x00002790
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00004108), // 0x00002798
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000027A0
	gsDPLoadSync(), // 0x000027A8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000027B0
	gsDPPipeSync(), // 0x000027B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000027C0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000027C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x000027D0
	gsDPTileSync(), // 0x000027D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000027E0
	gsDPLoadSync(), // 0x000027E8
	gsDPLoadTLUTCmd(7, 255), // 0x000027F0
	gsDPPipeSync(), // 0x000027F8
	gsSPVertex(_jyasinzou_room_7_vertices_000024B0, 4, 0), // 0x00002800
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002808
	gsDPPipeSync(), // 0x00002810
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_7_tex_00004D08), // 0x00002818
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00002820
	gsDPLoadSync(), // 0x00002828
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002830
	gsDPPipeSync(), // 0x00002838
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00002840
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00002848
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00002850
	gsDPTileSync(), // 0x00002858
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002860
	gsDPLoadSync(), // 0x00002868
	gsDPLoadTLUTCmd(7, 15), // 0x00002870
	gsDPPipeSync(), // 0x00002878
	gsSPVertex(_jyasinzou_room_7_vertices_000024F0, 12, 0), // 0x00002880
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002888
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002890
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002898
	gsSPEndDisplayList(), // 0x000028A0
};

static u8 unaccounted28A8[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x10, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x08, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0x10, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0x10, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x19, 0x80, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1F, 0xD8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x23, 0x40, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x26, 0x30, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _jyasinzou_room_7_tex_00002908[] = 
{
	0x7359735973597359, 0x7359735973597359, 0x7359735973597359, 0x7359735973597359,  // 0x00002908 
	0x7359735973597359, 0x7359735973597359, 0x7359735973597359, 0x7359735973597359,  // 0x00002928 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002948 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002968 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002988 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x000029A8 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x000029C8 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x000029E8 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002A08 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002A28 
	0x20C620C65A936317, 0x20C620C620C620C6, 0x20C620C64A0F5A93, 0x20C620C620C620C6,  // 0x00002A48 
	0x20C620C639CD5251, 0x20C620C620C620C6, 0x20C620C64A0F62D5, 0x20C620C620C620C6,  // 0x00002A68 
	0x20C620C65AD5735B, 0x20C620C620C620C6, 0x20C620C64A0F841D, 0x20C620C620C620C6,  // 0x00002A88 
	0x20C620C631496317, 0x20C620C620C620C6, 0x20C620C64A0F7B9B, 0x20C620C620C620C6,  // 0x00002AA8 
	0x20C620C6631783DD, 0x20C620C620C620C6, 0x20C620C64A0F739B, 0x20C620C620C620C6,  // 0x00002AC8 
	0x20C620C6318B7B9B, 0x20C620C620C620C6, 0x20C620C64A0F6B59, 0x20C620C620C620C6,  // 0x00002AE8 
	0x20C620C662D57BDD, 0x20C620C620C620C6, 0x20C620C65A93739B, 0x20C620C620C620C6,  // 0x00002B08 
	0x20C620C6318B6B59, 0x20C620C620C620C6, 0x20C620C64A0F739B, 0x20C620C620C620C6,  // 0x00002B28 
	0x20C620C652516B19, 0x20C620C620C620C6, 0x20C620C65A9383DD, 0x20C620C620C620C6,  // 0x00002B48 
	0x20C620C639CD6317, 0x20C620C620C620C6, 0x20C620C64A0F83DD, 0x20C620C620C620C6,  // 0x00002B68 
	0x20C620C64A0F5A93, 0x20C620C620C620C6, 0x20C620C65A93841F, 0x20C620C620C620C6,  // 0x00002B88 
	0x20C620C64A0F5A93, 0x20C620C620C620C6, 0x20C620C64A0F841F, 0x20C620C620C620C6,  // 0x00002BA8 
	0x7B9B841D8C618C61, 0x8C1F83DD739B62D7, 0x39CD318D5A938C61, 0x4A0F314941CD5251,  // 0x00002BC8 
	0x62D573598C618C61, 0x8C1F841F7B9B6B17, 0x62D552514A0F8C61, 0x4A0F318D41CF5A93,  // 0x00002BE8 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x41CD398B52938C61, 0x4A0F398B39CD4A0F,  // 0x00002C08 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F41CD398B, 0x398B398B4A0F8C1F, 0x4A0F3149398B4A0F,  // 0x00002C28 
	0x20C620C63149318B, 0x20C620C620C620C6, 0x20C620C65293841F, 0x20C620C620C620C6,  // 0x00002C48 
	0x20C620C631494A11, 0x20C620C620C620C6, 0x20C620C64A0F83DD, 0x20C620C620C620C6,  // 0x00002C68 
	0x20C620C64A0F6315, 0x20C620C620C620C6, 0x20C620C652517359, 0x20C620C620C620C6,  // 0x00002C88 
	0x20C620C64A0F6B59, 0x20C620C620C620C6, 0x20C620C64A0F6B17, 0x20C620C620C620C6,  // 0x00002CA8 
	0x20C620C64A0F739B, 0x20C620C620C620C6, 0x20C620C6398B5AD5, 0x20C620C620C620C6,  // 0x00002CC8 
	0x20C620C64A0F739B, 0x20C620C620C620C6, 0x20C620C639CD5A93, 0x20C620C620C620C6,  // 0x00002CE8 
	0x20C620C64A0F7BDD, 0x20C620C620C620C6, 0x20C620C6318B5251, 0x20C620C620C620C6,  // 0x00002D08 
	0x20C620C64A0F7BDD, 0x20C620C620C620C6, 0x20C620C6398B5251, 0x20C620C620C620C6,  // 0x00002D28 
	0x20C620C64A0F8C1F, 0x20C620C620C620C6, 0x20C620C63149318B, 0x20C620C620C620C6,  // 0x00002D48 
	0x20C620C64A0F8C1F, 0x20C620C620C620C6, 0x20C620C631494A11, 0x20C620C620C620C6,  // 0x00002D68 
	0x20C620C64A0F94A3, 0x20C620C620C620C6, 0x20C620C64A0F4A0F, 0x20C620C620C620C6,  // 0x00002D88 
	0x20C620C64A0F94A3, 0x20C620C620C620C6, 0x20C620C64A0F5A93, 0x20C620C620C620C6,  // 0x00002DA8 
	0x39CD318B4A0F9CA5, 0x4A0F41CF4A515AD5, 0x739B7B9B7BDD7BDD, 0x739B735962D5420F,  // 0x00002DC8 
	0x39CD318B4A0F9CA5, 0x4A0F41CD41CD5A93, 0x4A515AD56B5983DD, 0x7BDD739B73596315,  // 0x00002DE8 
	0x318B29494A0F94A3, 0x39CD2949318B39CD, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F41CD398B,  // 0x00002E08 
	0x318B29496B178C21, 0x39CD3149398B420D, 0x39CD4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002E28 
	0x20C620C64A0F8C61, 0x20C620C620C620C6, 0x20C620C62949420F, 0x20C620C620C620C6,  // 0x00002E48 
	0x20C620C64A0F83DD, 0x20C620C620C620C6, 0x20C620C62949420F, 0x20C620C620C620C6,  // 0x00002E68 
	0x20C620C64A0F83DD, 0x20C620C620C620C6, 0x20C620C6314B5293, 0x20C620C620C620C6,  // 0x00002E88 
	0x20C620C6420F7B9D, 0x20C620C620C620C6, 0x20C620C6314B5AD5, 0x20C620C620C620C6,  // 0x00002EA8 
	0x20C620C64A0F7B9B, 0x20C620C620C620C6, 0x20C620C641CD6317, 0x20C620C620C620C6,  // 0x00002EC8 
	0x20C620C641CD6B59, 0x20C620C620C620C6, 0x20C620C6398B6317, 0x20C620C620C620C6,  // 0x00002EE8 
	0x20C620C6398B4A0F, 0x20C620C620C620C6, 0x20C620C64A0F7BDD, 0x20C620C620C620C6,  // 0x00002F08 
	0x20C620C6318B5AD5, 0x20C620C620C620C6, 0x20C620C64A0F739B, 0x20C620C620C620C6,  // 0x00002F28 
	0x20C620C6314939CD, 0x20C620C620C620C6, 0x20C620C64A0F83DD, 0x20C620C620C620C6,  // 0x00002F48 
	0x20C620C629495A93, 0x20C620C620C620C6, 0x20C620C64A0F7BDD, 0x20C620C620C620C6,  // 0x00002F68 
	0x20C620C629492949, 0x20C620C620C620C6, 0x20C620C64A0F841F, 0x20C620C620C620C6,  // 0x00002F88 
	0x20C620C62949420F, 0x20C620C620C620C6, 0x20C620C64A0F841D, 0x20C620C620C620C6,  // 0x00002FA8 
	0x20C620C64A0F4A0F, 0x20C620C620C620C6, 0x20C620C65A938C1F, 0x20C620C620C620C6,  // 0x00002FC8 
	0x20C620C64A0F5A93, 0x20C620C620C620C6, 0x20C620C64A0F8C1F, 0x20C620C620C620C6,  // 0x00002FE8 
	0x7B9B841D8C618C61, 0x8C1F83DD739B62D7, 0x39CD318D5A938C61, 0x4A0F41CD52516317,  // 0x00003008 
	0x73597BDB841F841F, 0x7B9B735963175AD5, 0x525341CF4A0F8C61, 0x4A0F318D41CF5A93,  // 0x00003028 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F41CD, 0x398B31495A938C21, 0x4A0F318B41CD420F,  // 0x00003048 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F41CD, 0x41CD398B4A0F8C1F, 0x4A0F3149398B4A0F,  // 0x00003068 
	0x20C620C63149318B, 0x20C620C620C620C6, 0x20C620C65A9383DD, 0x20C620C620C620C6,  // 0x00003088 
	0x20C620C63149318B, 0x20C620C620C620C6, 0x20C620C64A0F83DD, 0x20C620C620C620C6,  // 0x000030A8 
	0x20C620C64A0F6315, 0x20C620C620C620C6, 0x20C620C65A937359, 0x20C620C620C620C6,  // 0x000030C8 
	0x20C620C64A0F6315, 0x20C620C620C620C6, 0x20C620C64A0F7359, 0x20C620C620C620C6,  // 0x000030E8 
	0x20C620C64A0F739B, 0x20C620C620C620C6, 0x20C620C652516317, 0x20C620C620C620C6,  // 0x00003108 
	0x20C620C64A0F739B, 0x20C620C620C620C6, 0x20C620C639CD6317, 0x20C620C620C620C6,  // 0x00003128 
	0x20C620C64A0F7BDD, 0x20C620C620C620C6, 0x20C620C6398B5AD5, 0x20C620C620C620C6,  // 0x00003148 
	0x20C620C64A0F7BDD, 0x20C620C620C620C6, 0x20C620C6398B5AD5, 0x20C620C620C620C6,  // 0x00003168 
	0x20C620C64A0F8C1F, 0x20C620C620C620C6, 0x20C620C631495A93, 0x20C620C620C620C6,  // 0x00003188 
	0x20C620C64A0F8C1F, 0x20C620C620C620C6, 0x20C620C631494A11, 0x20C620C620C620C6,  // 0x000031A8 
	0x20C620C64A0F94A3, 0x20C620C620C620C6, 0x20C620C64A0F4A0F, 0x20C620C620C620C6,  // 0x000031C8 
	0x20C620C64A0F94A3, 0x20C620C620C620C6, 0x20C620C64A0F5A93, 0x20C620C620C620C6,  // 0x000031E8 
	0x39CD318B4A0F9CA5, 0x4A51525163176B17, 0x739B7B9B7BDD83DD, 0x7BDD83DD7BDD6317,  // 0x00003208 
	0x5251398D4A0F9CA5, 0x4A0F318B4A515A95, 0x5AD56B177BDD83DD, 0x7BDD739B73596315,  // 0x00003228 
	0x318B29494A0F94A3, 0x4A0F39CD398B39CD, 0x420D4A0F4A0F4A0F, 0x4A0F4A0F4A0F39CD,  // 0x00003248 
	0x318B29494A0F94A3, 0x4A0F3149318B39CD, 0x39CD420D4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00003268 
	0x20C620C64A0F8C61, 0x20C620C620C620C6, 0x20C620C62949420F, 0x20C620C620C620C6,  // 0x00003288 
	0x20C620C673599461, 0x20C620C620C620C6, 0x20C620C6318B4A0F, 0x20C620C620C620C6,  // 0x000032A8 
	0x20C620C64A0F841F, 0x20C620C620C620C6, 0x20C620C6314B6B59, 0x20C620C620C620C6,  // 0x000032C8 
	0x20C620C65AD58C1F, 0x20C620C620C620C6, 0x20C620C641CD5A95, 0x20C620C620C620C6,  // 0x000032E8 
	0x20C620C6398B6317, 0x20C620C620C620C6, 0x20C620C64A0F7B9B, 0x20C620C620C620C6,  // 0x00003308 
	0x20C620C64A4F6B17, 0x20C620C620C620C6, 0x20C620C64A0F7B9B, 0x20C620C620C620C6,  // 0x00003328 
	0x20C620C631495AD5, 0x20C620C620C620C6, 0x20C620C64A0F83DD, 0x20C620C620C620C6,  // 0x00003348 
	0x20C620C639CD5293, 0x20C620C620C620C6, 0x20C620C64A0F83DD, 0x20C620C620C620C6,  // 0x00003368 
	0x20C620C62949420F, 0x20C620C620C620C6, 0x20C620C64A0F841F, 0x20C620C620C620C6,  // 0x00003388 
	0x20C620C6318B41CF, 0x20C620C620C620C6, 0x20C620C64A0F8C1F, 0x20C620C620C620C6,  // 0x000033A8 
	0x20C620C64A0F4A0F, 0x20C620C620C620C6, 0x20C620C64A0F8C21, 0x20C620C620C620C6,  // 0x000033C8 
	0x20C620C64A0F4A0F, 0x20C620C620C620C6, 0x20C620C64A0F8C61, 0x20C620C620C620C6,  // 0x000033E8 
	0x7B9B841D8C619461, 0x946183DD739B62D7, 0x39CD318D4A0F8C61, 0x62D57B9B62D57B9B,  // 0x00003408 
	0x83DD841D8C619461, 0x9461841F7B9D6B17, 0x631752934A0F8C61, 0x4A0F318D41CF5A93,  // 0x00003428 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F420F41CD, 0x318B31494A0F8C21, 0x52935A935A935291,  // 0x00003448 
	0x525152514A0F4A0F, 0x4A0F4A0F420D39CD, 0x41CD398B4A0F8C61, 0x4A0F3149398B4A0F,  // 0x00003468 
	0x20C620C63149318B, 0x20C620C620C620C6, 0x20C620C64A0F841F, 0x20C620C620C620C6,  // 0x00003488 
	0x20C620C641CD318B, 0x20C620C620C620C6, 0x20C620C64A0F841F, 0x20C620C620C620C6,  // 0x000034A8 
	0x20C620C64A0F6315, 0x20C620C620C620C6, 0x20C620C64A0F739B, 0x20C620C620C620C6,  // 0x000034C8 
	0x20C620C64A4F5AD5, 0x20C620C620C620C6, 0x20C620C64A0F7359, 0x20C620C620C620C6,  // 0x000034E8 
	0x20C620C64A0F739B, 0x20C620C620C620C6, 0x20C620C639CD6B59, 0x20C620C620C620C6,  // 0x00003508 
	0x20C620C652516B59, 0x20C620C620C620C6, 0x20C620C6420D5AD5, 0x20C620C620C620C6,  // 0x00003528 
	0x20C620C64A0F7BDD, 0x20C620C620C620C6, 0x20C620C64A0F5AD5, 0x20C620C620C620C6,  // 0x00003548 
	0x20C620C652517BDD, 0x20C620C620C620C6, 0x20C620C639CD5251, 0x20C620C620C620C6,  // 0x00003568 
	0x20C620C64A0F8C1F, 0x20C620C620C620C6, 0x20C620C6420F5A95, 0x20C620C620C620C6,  // 0x00003588 
	0x20C620C65251841F, 0x20C620C620C620C6, 0x20C620C6398B41CF, 0x20C620C620C620C6,  // 0x000035A8 
	0x20C620C64A0F94A3, 0x20C620C620C620C6, 0x20C620C639CD41CF, 0x20C620C620C620C6,  // 0x000035C8 
	0x20C620C65A939463, 0x20C620C620C620C6, 0x20C620C641CD4A0F, 0x20C620C620C620C6,  // 0x000035E8 
	0x39CD318B4A0F9CA5, 0x420F41CF4A515AD5, 0x739B7B9B7BDD7BDD, 0x739B73595AD541CF,  // 0x00003608 
	0x398D318B6B179CA5, 0x4A0F52535AD56B17, 0x6B597BDD7BDD83DD, 0x7BDD739B73596315,  // 0x00003628 
	0x318B29494A0F94A3, 0x39CD2949318B39CD, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F41CD398B,  // 0x00003648 
	0x318B29495A9394A3, 0x39CD3149398B420D, 0x39CD4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00003668 
	0x20C620C64A0F8C61, 0x20C620C620C620C6, 0x20C620C629495293, 0x20C620C620C620C6,  // 0x00003688 
	0x20C620C652518C61, 0x20C620C620C620C6, 0x20C620C62949420F, 0x20C620C620C620C6,  // 0x000036A8 
	0x20C620C64A0F841F, 0x20C620C620C620C6, 0x20C620C6314B735B, 0x20C620C620C620C6,  // 0x000036C8 
	0x20C620C6525183DD, 0x20C620C620C620C6, 0x20C620C6314B6317, 0x20C620C620C620C6,  // 0x000036E8 
	0x20C620C64A0F83DD, 0x20C620C620C620C6, 0x20C620C64A0F739B, 0x20C620C620C620C6,  // 0x00003708 
	0x20C620C652517B9B, 0x20C620C620C620C6, 0x20C620C6398B6B59, 0x20C620C620C620C6,  // 0x00003728 
	0x20C620C64A0F7B9B, 0x20C620C620C620C6, 0x20C620C652517359, 0x20C620C620C620C6,  // 0x00003748 
	0x20C620C64A0F7359, 0x20C620C620C620C6, 0x20C620C641CD7359, 0x20C620C620C620C6,  // 0x00003768 
	0x20C620C662D5739B, 0x20C620C620C620C6, 0x20C620C65AD56B57, 0x20C620C620C620C6,  // 0x00003788 
	0x20C620C673597359, 0x20C620C620C620C6, 0x20C620C673597BDD, 0x20C620C620C620C6,  // 0x000037A8 
	0x7359735973597359, 0x7359735973597359, 0x7359735973597359, 0x7359735973597359,  // 0x000037C8 
	0x7359735973597359, 0x7359735973597359, 0x7359735973597B9B, 0x7359735973597359,  // 0x000037E8 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00003808 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00003828 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00003848 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00003868 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00003888 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x000038A8 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x000038C8 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x000038E8 
};

u64 _jyasinzou_room_7_tex_00003908[] = 
{
	0x1A0B08000008087B, 0x7B7B0823231E1E23, 0x00001E00001E1E1E, 0x1E000000081E0000,  // 0x00003908 
	0x0800080800002323, 0x001E08081E001E1E, 0x1E23230808000800, 0xD00008D008080899,  // 0x00003928 
	0x0B0B0827030303BA, 0x7B7B0800231E031E, 0x27272727001E1E27, 0x1E030300031E0327,  // 0x00003948 
	0x0303080327000323, 0x271E030808272727, 0x2323270303030800, 0x0827030308080372,  // 0x00003968 
	0x1ADE862708030008, 0xB37B0803231E0303, 0x23270327001E0308, 0x2708080803270327,  // 0x00003988 
	0x0308030003030827, 0x231E270386270000, 0x2323000027080803, 0x0327272703031E03,  // 0x000039A8 
	0xB78CD00008080300, 0xBA7B08860023008C, 0x00080808001E8C8C, 0x0808088C08000000,  // 0x000039C8 
	0x080800008C03088C, 0x00231E0000080023, 0x231E00001E030808, 0x0800080023231E08,  // 0x000039E8 
	0x0B08D00000000300, 0x86C6E50827230808, 0x0000000808030008, 0x0808000808000800,  // 0x00003A08 
	0x00002308081E0008, 0x2300001E00082323, 0x0000231E001E0000, 0x0008080023001E08,  // 0x00003A28 
	0x1AE5860000230000, 0x08EFBA0327230327, 0x0003002703080003, 0x2703272727030300,  // 0x00003A48 
	0x00230003031E2727, 0x0003232327031E03, 0x0000032727232300, 0x000303001E002327,  // 0x00003A68 
	0x0BB7080300272323, 0x03E0B38627000027, 0x0386031E27082703, 0x030003001E080000,  // 0x00003A88 
	0x0027030300031E23, 0x0303232703271E03, 0x0000030303002300, 0x000000272700271E,  // 0x00003AA8 
	0x0BE5080300032323, 0x00037BBA03032303, 0x08E003231E031E08, 0x080003001E030000,  // 0x00003AC8 
	0x0008030300E02723, 0x03231E08031E2700, 0x2300000303002323, 0x0000001E00000323,  // 0x00003AE8 
	0x1A0808001E002323, 0x00087B7B088C0000, 0x08000000231E1E08, 0x0808000800000008,  // 0x00003B08 
	0x1E08001E0800081E, 0x2323080800000808, 0x00230000001E2323, 0x23081E0000000023,  // 0x00003B28 
	0x1A8C0B0803230308, 0x2727B37BBA860800, 0x000000081E1E0008, 0x001E08001E081E00,  // 0x00003B48 
	0x032323000000001E, 0x231E082323000808, 0x080300000003231E, 0x0323230808002323,  // 0x00003B68 
	0x1A8CDE0327000308, 0x2723B37BB3080827, 0x2703030303082703, 0x0003080327082727,  // 0x00003B88 
	0x2700000003030023, 0x2303270000000303, 0x0308002327031E1E, 0x2723230303032327,  // 0x00003BA8 
	0x1A86861E23002703, 0x03237BC9C6080823, 0x0308032708861E00, 0x000803030003031E,  // 0x00003BC8 
	0x2300000308032727, 0x2703270300271E27, 0x2703032723002727, 0x2323272700030303,  // 0x00003BE8 
	0x1A088C1E23002700, 0x03277BB38C030823, 0x8C08000308002323, 0x00081E000000031E,  // 0x00003C08 
	0x2300000808001E08, 0x08000008001E1E00, 0x0000080323230000, 0x231E080323238C00,  // 0x00003C28 
	0x1A8C0B1E081E0023, 0x00037BBA00000808, 0x008C081E001E231E, 0x0800000000001E1E,  // 0x00003C48 
	0x081E000800081E8C, 0x0000000808002300, 0x0800001E00000800, 0x1E8C0823231E0008,  // 0x00003C68 
	0x1ADE080308032300, 0x23007B0800230008, 0x1E86080303030386, 0x0800000003232703,  // 0x00003C88 
	0x0803860000082727, 0x03001E2727000000, 0x0803031E03030000, 0x8603232300860000,  // 0x00003CA8 
	0x1A390B0303032700, 0x278CC60327270000, 0x0308080300080808, 0x08272700031E0003,  // 0x00003CC8 
	0x0303860300000023, 0x032727271E000300, 0x0303032708030303, 0x861E231E08860000,  // 0x00003CE8 
	0x1AB71A2700270000, 0x08B3D08627030023, 0x080303271E030300, 0x031E270000272327,  // 0x00003D08 
	0x0027030327230023, 0x2727000023270300, 0x2700002703000803, 0x03231E278C032700,  // 0x00003D28 
	0x1AB70B1E231E0303, 0xBA7B080308032300, 0x08000008081E0023, 0x0000082323081E1E,  // 0x00003D48 
	0x231E001E1E230000, 0x08080800001E1E08, 0x1E00001E00080800, 0x2323000808001E23,  // 0x00003D68 
	0x1A0B08031E1E038C, 0xC67B000008000000, 0x00231E0808031E00, 0x00001E031E1E0303,  // 0x00003D88 
	0x1E1E08000003231E, 0x00081E0800002300, 0x0300000300080823, 0x232308080008031E,  // 0x00003DA8 
	0x0B0B0B08270303BA, 0xC97B000003000303, 0x001E030308860300, 0x03031E03031E2708,  // 0x00003DC8 
	0x270303000008031E, 0x00031E2700000000, 0x0300030886082700, 0x0300030327082723,  // 0x00003DE8 
	0x1ADE0B03000803B3, 0x7B7B030300030803, 0x271E030008860300, 0x0303032708031E03,  // 0x00003E08 
	0x0008270027030303, 0x00001E0327030000, 0x0003860886031E27, 0x0803002703032323,  // 0x00003E28 
	0x0B8C0B00000803C6, 0x7B7B080800080800, 0x1E23000008080000, 0x0000081E08082300,  // 0x00003E48 
	0x00081E0027000008, 0x23231E081E080023, 0x23088C080023231E, 0x0308231E031E2300,  // 0x00003E68 
	0x0BD00B231E00000B, 0x7B7B080803080008, 0x2323000000000000, 0x1E1E000808002323,  // 0x00003E88 
	0x1E0808088C080000, 0x231E080008080800, 0x0808080000230008, 0x230008001E008C00,  // 0x00003EA8 
	0x0B0808030023001E, 0xBA7B030308270308, 0x8603000300030003, 0x0303000800030003,  // 0x00003EC8 
	0x001E080803000023, 0x0003270008000800, 0x080827002303E008, 0x232327031E1E0800,  // 0x00003EE8 
	0x0B8608030003001E, 0x08B3E00003000308, 0x8603002700032703, 0x0303030300030303,  // 0x00003F08 
	0x0000030800030003, 0x0003270027000303, 0x0808270003080803, 0x27271E0803030300,  // 0x00003F28 
	0x1AB7082703030003, 0x27BAEF0327000003, 0x0303272300001E00, 0x1E27080003030800,  // 0x00003F48 
	0x0327270300080308, 0x0000000023000303, 0x0303000008030027, 0x0386270303030000,  // 0x00003F68 
	0x0BB7081E081E0303, 0x27E5B3E02300001E, 0x00081E2323001E23, 0x1E08080008080800,  // 0x00003F88 
	0x081E080000030303, 0x000000001E230323, 0x1E000000031E001E, 0x008C081E23000000,  // 0x00003FA8 
	0x1AD0080308030800, 0x03037BEF23230000, 0x0800001E001E0300, 0x0308000800000008,  // 0x00003FC8 
	0x08030023001E1E1E, 0x00002308031E1E00, 0x0000231E1E1E1E00, 0x081E08030008088C,  // 0x00003FE8 
	0x0B8C862727030800, 0x08037BB308230023, 0x0800031E27030303, 0x0803032703038627,  // 0x00004008 
	0x2703001E00271E27, 0x0003000303031E23, 0x0000031E271E1E03, 0x081E270300270808,  // 0x00004028 
	0x0BB7B72723000303, 0x03037B7BBA232723, 0x0300031E1E030303, 0x030003030308D027,  // 0x00004048 
	0x2300270303002700, 0x2708032700080323, 0x2727081E00272708, 0x2727270303030300,  // 0x00004068 
	0x1AB7E50023000003, 0x00277B7BB3001E23, 0x00231E1E1E1E0800, 0x00001E0300088C00,  // 0x00004088 
	0x23001E0303000000, 0x1E03031E00030323, 0x1E1E082323080003, 0x2300000303080023,  // 0x000040A8 
	0x1AB7082323000003, 0x00277B7BC6030800, 0x0800000800000808, 0x08081E1E08080023,  // 0x000040C8 
	0x2300001E0000001E, 0x1E001E001E000000, 0x1E0008230008081E, 0x1E0800001E080023,  // 0x000040E8 
};

u64 _jyasinzou_room_7_tex_00004108[] = 
{
	0x1919191919191919, 0x1919191941191919, 0x4019191940194019, 0x1919401919194040,  // 0x00004108 
	0x4019191919191919, 0x1919191940191919, 0x0A4C432D0E053405, 0x4619191919191919,  // 0x00004128 
	0x41090606060A0909, 0x09090D0E0606461B, 0x4C46461240461212, 0x4612120909401946,  // 0x00004148 
	0x460F430F06060906, 0x06090D0F06433828, 0x4040411941384038, 0x41124C4612461912,  // 0x00004168 
	0x414109090A090909, 0x41194141410A0E26, 0x262E4C2619265C34, 0x71344C4C0A381212,  // 0x00004188 
	0x4C4109460A0E0D06, 0x0A0F060E0E0A0A06, 0x0D0D0E0606060F0D, 0x060946464C261940,  // 0x000041A8 
	0x4041414041410909, 0x0909414141410909, 0x12464C264A4C050E, 0x0E0E0F4306411240,  // 0x000041C8 
	0x4C10093812090A12, 0x0A46414141380909, 0x0A09060A060A0E06, 0x0F0605052E341938,  // 0x000041E8 
	0x380A460A06430606, 0x06090A0909094141, 0x41124C26104C462E, 0x623F2D0643124340,  // 0x00004208 
	0x4C124606430A0A2E, 0x0A0A43060A431241, 0x0A0A060E060A0606, 0x0605434334714040,  // 0x00004228 
	0x4041310A0F43060A, 0x090A410A0606060F, 0x0A0A096410262605, 0x05060A4346434340,  // 0x00004248 
	0x4C09310941461246, 0x0A460909060A460A, 0x060A0941410A4C41, 0x2E0A434C4C261940,  // 0x00004268 
	0x094141120A2E0F0F, 0x0A0A0D0609060909, 0x090A0E3A12460E0E, 0x43430E050E430A40,  // 0x00004288 
	0x050A090A09460A0A, 0x0E0A2E2E2D0A0A0A, 0x0A090941411F4C10, 0x10090A0A0A054040,  // 0x000042A8 
	0x120A0A0A6B0E0E0F, 0x0F0A060F06060A0A, 0x0A060A06120A0A0A, 0x060D0E0D0D0F0919,  // 0x000042C8 
	0x090906060A060606, 0x060A0A0A430A1209, 0x094112460A4C4C4C, 0x06060A0A0E0E4019,  // 0x000042E8 
	0x090A0909090A0909, 0x094109090A060F06, 0x41090A094609090A, 0x0A09404040401919,  // 0x00004308 
	0x4119191919411941, 0x091941410A0A0906, 0x0A09060A09090909, 0x0606060609094019,  // 0x00004328 
	0x1940194119191919, 0x1919191919191919, 0x1940121012104040, 0x403146635CC7A4B0,  // 0x00004348 
	0xC5A4CFCF3F051919, 0x1919191919191919, 0x1919191919411919, 0x1919194019191940,  // 0x00004368 
	0x0F0E3F3FA4AFA4A4, 0x3A5C1B0E09411041, 0x6343CFA4D15C0534, 0x0E3F265C630E0E0E,  // 0x00004388 
	0x0E0E0E063F3F0E26, 0x091B3A71B03A3A12, 0x3409265C34345C78, 0xA471262626261F26,  // 0x000043A8 
	0x0E0D0E0E0E0E0F0F, 0x0F0E0E0E1D26120A, 0x0A060E3F0E0D060E, 0x0E060E06060E0E0E,  // 0x000043C8 
	0x0F060F0E0D0D9EC7, 0x41630E0E430A2612, 0x264C1D060E0D263F, 0x0E06060E06060E06,  // 0x000043E8 
	0x0E9E9E3F0F0F060A, 0x0A0A0A0A26714663, 0x060E06630E0E3F0E, 0x0F06060E0E0E0E3F,  // 0x00004408 
	0x0E0F0E0D0F0F0F26, 0x400E5C0E430A6410, 0x26780E0A0E063F0E, 0x0F060906060A0A06,  // 0x00004428 
	0x9E0E3F0F573F3F0E, 0x0F0D061F12B9120E, 0x630E430E06090606, 0x060606060A060E0E,  // 0x00004448 
	0x0F9E570E3F0D064C, 0x410E632E05064C40, 0x263A060A0A060E0F, 0x0E0E2E2E0E2E2E0A,  // 0x00004468 
	0x06060E0F060E060E, 0x3F0E0E060626121D, 0x0E0A0A0E06060E06, 0x090A060F06060E0E,  // 0x00004488 
	0x0F0F0D0E0E0E0D1B, 0x090E0E0E623F0A40, 0x060F0F060F060606, 0x060A092E0E0E0E0D,  // 0x000044A8 
	0x0906090A0A094643, 0x43623F570E2E1034, 0x0E0E060F0609060A, 0x090A060606060E0E,  // 0x000044C8 
	0x0D0E0D0E2E060910, 0x410909050A1D0A40, 0x090A06060A090F0F, 0x06060E0E0A060A06,  // 0x000044E8 
	0x0A09090909401940, 0x404109120A0A1043, 0x0A0E1D430D0F0A0A, 0x0940404040404040,  // 0x00004508 
	0x4019191919191919, 0x1919404010121010, 0x1012104040404040, 0x4009090606060A09,  // 0x00004528 
	0x1919101012121210, 0x1040401919191919, 0x1919191940404040, 0x4040460A0A0A0505,  // 0x00004548 
	0x0E5CC7C734A4785C, 0x71C71B5C3A3A2626, 0x26340E6346404019, 0x1940404019191919,  // 0x00004568 
	0x0A2E5C342671261F, 0x261F4C264C264605, 0x26C3AF3F6B1D9AA4, 0x5C3434341B345C34,  // 0x00004588 
	0x34340E0E060E0606, 0x090A0A0A0A05050E, 0x0E464646124064B0, 0x3A3A26264C051941,  // 0x000045A8 
	0x4C41414109090909, 0x0941414109090A06, 0x060A060E090E460A, 0x0606430A12122E2E,  // 0x000045C8 
	0x050A0A090A090909, 0x094141124C2E2E0E, 0x2E060A4140190906, 0x0606060F060A0919,  // 0x000045E8 
	0x1B09060E06060606, 0x06060609090A090E, 0x0A0E0D05402E4C0E, 0x0E0F06060941100A,  // 0x00004608 
	0x0A060A090F0F0606, 0x0A0A090A0A4C4C2E, 0x2E4C4C0A1941090F, 0x0F0E0D0606060609,  // 0x00004628 
	0x4C0A190941194106, 0x094141410A0A0E0E, 0x060A0D05190E4C0A, 0x0A0E0E0F06060909,  // 0x00004648 
	0x0A090A0A41410A2E, 0x0E0E0E0E0E0E2E2E, 0x0E2E0A41190A090A, 0x0A060909090A0A19,  // 0x00004668 
	0x46060909410A0909, 0x09060D0606090909, 0x090A260E414C090A, 0x060A0A060A0A0A0A,  // 0x00004688 
	0x090A090909094109, 0x0A0A0A0A0A4C2E0E, 0x2E0E050A19090A06, 0x0A06090A0A0E0A41,  // 0x000046A8 
	0x0A0A0A0A060E0E06, 0x0E0A090A0A090909, 0x41090E0641430E06, 0x0606060A060A090A,  // 0x000046C8 
	0x2E0E0E0E0E0E2E2E, 0x05090A0A06060A0A, 0x0909060640090606, 0x09060A0A0F060919,  // 0x000046E8 
	0x09090941090A4141, 0x094141090A0A0A0A, 0x4109090919190A0A, 0x0F0F090A09090A4C,  // 0x00004708 
	0x2E2E4C0A090A0919, 0x4019191919191919, 0x191919191941410A, 0x06060A060A0A0919,  // 0x00004728 
	0x1919191919191919, 0x1941191919191919, 0x1919191919191919, 0x1919410919191919,  // 0x00004748 
	0x1919191919191919, 0x0906060640191940, 0x0A0A091940401919, 0x1919191919191940,  // 0x00004768 
	0x1D3AD10E0E0E3F0E, 0x090606060A121219, 0x09342626B9262626, 0x644C4C1F0A46050E,  // 0x00004788 
	0x0F0E0FAFAF3F3F0E, 0x262626260564404C, 0x0E1D1B6B0E642671, 0x64461219194C0526,  // 0x000047A8 
	0x4C050E0E0A060606, 0x0F0941090A050A19, 0x64120A0A4609120A, 0x06060909090A0F06,  // 0x000047C8 
	0x0E26260E0E3F3F1D, 0x1D050E460526194C, 0x0A0A090A0A0A4106, 0x260E4C19413A264C,  // 0x000047E8 
	0x0A0A0E060A0A0A0A, 0x0E06060A0A051219, 0x640A124C43060606, 0x060909090A090909,  // 0x00004808 
	0x060D0E0A0F060609, 0x0606060F06344026, 0x2E0A090A0A090606, 0x46054C0909784C26,  // 0x00004828 
	0x0A0A06060E3F0E06, 0x0A0F0F0D060A0919, 0x46054C0909094609, 0x06060606060A0906,  // 0x00004848 
	0x060A0E060A0E0D06, 0x0A060A060E5C4026, 0x2605430A0A0A0609, 0x0A05344009260909,  // 0x00004868 
	0x06060A0D0E0E0E0D, 0x0F0A0E0D0E0A4119, 0x410A0A43430A4612, 0x090A090A060D0606,  // 0x00004888 
	0x06060A0E0A0E0A0A, 0x0E0F0A0A094C4026, 0x340E460A0606060A, 0x054C4C41410E090A,  // 0x000048A8 
	0x09060F06060A060E, 0x09060F0E0E060A40, 0x410A060E09090E09, 0x09090A0941094119,  // 0x000048C8 
	0x090606060A06060A, 0x41410A0A0A0F4046, 0x0E0E050E430A0E0A, 0x4343464640090919,  // 0x000048E8 
};

u64 _jyasinzou_room_7_tex_00004908[] = 
{
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00004908 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00004928 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00004948 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00004968 
	0x2104210439CC5A92, 0x525062D45A925290, 0x525052505A904A0E, 0x4A0E314829462104,  // 0x00004988 
	0x21044A4E5A92A4E5, 0x946194618C1F83DB, 0x7B997B997B997B99, 0x735762D241CC2104,  // 0x000049A8 
	0x4A4E7398CE2BCE2D, 0xB56BAD299CA3945F, 0x945F945F945F945F, 0x83DB7B9B525041CC,  // 0x000049C8 
	0x7356BDE7DEABA527, 0x9CE56B1562D35A4F, 0x5A916B1562D17357, 0x8C1F945F5A934A0E,  // 0x000049E8 
	0xB5A7D66BAD699463, 0x7357525141CC39CA, 0x41CA420C520D7357, 0x7B9B83DB6B13524F,  // 0x00004A08 
	0x9CE5BDA9945F7357, 0x524F398A21042104, 0x210421043988520D, 0x7B998BDD735562D3,  // 0x00004A28 
	0x83DDB56794615AD3, 0x41CC314821042104, 0x2104210421043988, 0x62D38C1F7B995A91,  // 0x00004A48 
	0x83DBA4E394615AD3, 0x2104210421042104, 0x2104210429063988, 0x520D946183DD4A0D,  // 0x00004A68 
	0x7357945F8C1F4A51, 0x2104210421042104, 0x2104210421063988, 0x520D9CA38C1F41CB,  // 0x00004A88 
	0x62D3735762D541CD, 0x2104210421042104, 0x2104210429063988, 0x520D9CA394614A4F,  // 0x00004AA8 
	0x318A4A0E41CC3148, 0x2104210421042104, 0x2104210421063988, 0x520D9CA39C614A4F,  // 0x00004AC8 
	0x420C210421042104, 0x2104210421042104, 0x2104210421043988, 0x520D9CA39CA36315,  // 0x00004AE8 
	0x524E210421042104, 0x2104210421042104, 0x2104210421043988, 0x520D9CA3945F7B99,  // 0x00004B08 
	0x41CC314821042104, 0x2104290621042104, 0x2104210421043988, 0x520D94618C1D62D5,  // 0x00004B28 
	0xB567DEABC5EB841D, 0x2948294821042104, 0x2104210421043988, 0x520D94618C1D62D5,  // 0x00004B48 
	0x7B99C5E794615AD5, 0x318A290621042104, 0x21042104210441CA, 0x5A919CA3839B524F,  // 0x00004B68 
	0x7357A4E194636B17, 0x420E294621042104, 0x2104210421044A0C, 0x73159CE37B594A0D,  // 0x00004B88 
	0x7B99945F94637359, 0x4A4E318821042104, 0x2104210429065A92, 0x945FA4E5735741CB,  // 0x00004BA8 
	0x6B158BDD9CA38C1F, 0x41CB314821042104, 0x2104210431487359, 0xB567A5256B153189,  // 0x00004BC8 
	0x520D6B158C1F9C63, 0x62D141CB21042104, 0x210441CC6B17BDEB, 0x9CA18C1D5A913989,  // 0x00004BE8 
	0x420C6AD37357839B, 0x94615A91420B4A0B, 0x4A0B83999C5F9CA3, 0x7B9973575A912104,  // 0x00004C08 
	0x210441CA520D7357, 0x945F945F945F945F, 0x945F9CA38C1F83DB, 0x6B15524F29482104,  // 0x00004C28 
	0x210421043988520D, 0x62D36B1773577357, 0x62D362D36B155A93, 0x3989398821042104,  // 0x00004C48 
	0x2104210421044A0C, 0x39CA4A0C4A0E41CC, 0x4A0C420C420C318A, 0x2906210421042104,  // 0x00004C68 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00004C88 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00004CA8 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00004CC8 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00004CE8 
};

u64 _jyasinzou_room_7_tex_00004D08[] = 
{
	0x8929492941103851, 0x31311131015388CD, 0x8875111515153533, 0x5675778499999066,  // 0x00004D08 
	0x8924299919138011, 0x131114445003336C, 0x1115111111111377, 0x3315334491999948,  // 0x00004D28 
	0x6499493941481844, 0x441411145131000C, 0x2221111114111021, 0x2115613144444926,  // 0x00004D48 
	0x8424494914434544, 0x444444054411112B, 0x2103311113300310, 0x0021640422092922,  // 0x00004D68 
	0x8999444914311111, 0x1212304000120128, 0x4233311133A11A2A, 0x4110640209499940,  // 0x00004D88 
	0x8922414111313310, 0x1010111111101018, 0x203777333333A73A, 0x7A71003229229994,  // 0x00004DA8 
	0x8494009143314111, 0x1141101024424416, 0x2402020222222222, 0x2220000102999990,  // 0x00004DC8 
	0x6423941110110010, 0x0022022242202248, 0x0225000202222222, 0x2222030124429993,  // 0x00004DE8 
	0x8020002403033310, 0x1110122442222226, 0x5550000000000224, 0x2222010012202060,  // 0x00004E08 
	0x8016680660036836, 0x8666663111211118, 0x3766000000007721, 0x1300336330306668,  // 0x00004E28 
	0x8006000630013103, 0x0666033111411338, 0x731033301033A311, 0x1111000311030018,  // 0x00004E48 
	0x8366680607011113, 0x1033311444444118, 0x13031001122A7341, 0x1113336313300020,  // 0x00004E68 
	0xC063660333131411, 0x1330341194411338, 0x3030003000307A11, 0x1111336011000216,  // 0x00004E88 
	0x8666606665751511, 0x1773319119411338, 0x3606703313A37311, 0x1113336310002006,  // 0x00004EA8 
	0xC666600066311113, 0x0710021444005558, 0x5660666566775533, 0x113A006022202426,  // 0x00004EC8 
	0xC066066666751111, 0x330002322423755B, 0x55686575777755A3, 0xA3A7300020202216,  // 0x00004EE8 
	0xC060004001491914, 0x4220222444007558, 0x55866557757555A3, 0x3A37A00022234226,  // 0x00004F08 
	0xC660002420219141, 0x4492212144101358, 0x566667A7A755557A, 0x73A733002A2222A6,  // 0x00004F28 
	0xC660244222419144, 0x4442224212122158, 0x5566577777755577, 0x3775A07322AA2126,  // 0x00004F48 
	0xC660022420349414, 0x4444424224415558, 0x575865A7A77A5553, 0x37A5230A22222A08,  // 0x00004F68 
	0xC863222207224141, 0x4444224442250118, 0x15576777777757A7, 0x7775703022222276,  // 0x00004F88 
	0xC660042202244144, 0x0242222204041418, 0x13576777777A5577, 0x7777202A22A0AA06,  // 0x00004FA8 
	0xCC60429410044141, 0x1024202214101118, 0x1372A7A7A7755577, 0x5757720A24423078,  // 0x00004FC8 
	0xC866024220244414, 0x1242444202242915, 0x113230737A755575, 0x7557021A42441776,  // 0x00004FE8 
	0xC866002206603331, 0x7121200144221915, 0x11370330A7555555, 0x757521004A927308,  // 0x00005008 
	0xC866002060677333, 0x6700013001300198, 0x1157767667655B55, 0x5556021322437768,  // 0x00005028 
	0xC806002055555555, 0x8557303310030118, 0x3135755555888855, 0x7557010323247668,  // 0x00005048 
	0xC806000606677775, 0x555577550637611B, 0x115755555558B853, 0x7356010323416608,  // 0x00005068 
	0xC600002035657555, 0x856755573776631C, 0x8B3775555685885A, 0x777670030411666B,  // 0x00005088 
	0xC806000065555555, 0x555565575776611B, 0x3585555558585873, 0x3332010402136008,  // 0x000050A8 
	0xC600202060631777, 0x56666677550663BB, 0x3355588885855831, 0x3200100001130868,  // 0x000050C8 
	0xD842022104224113, 0x60008023367585BC, 0x55B88B8858856871, 0x0105207030330036,  // 0x000050E8 
	0xDDCC8888888B8888, 0x8B8CCBC688CCBDDD, 0xDBBBBBBBBBBB8C88, 0x88BDC88B8B88C8BB,  // 0x00005108 
	0xDC20222222206320, 0x200602201020048D, 0x833758B85555A311, 0x4400510000011008,  // 0x00005128 
	0xC840224222228000, 0x021020111031044B, 0x1111555855553031, 0x1158503000330300,  // 0x00005148 
	0xC200242222020000, 0x0101012130002498, 0x1511355885557111, 0x1110533036003300,  // 0x00005168 
	0xC010422021222021, 0x2222444043114448, 0x19114755B5537733, 0x3138033100013136,  // 0x00005188 
	0xC010224204222002, 0x2224424242104958, 0x99914775B8731331, 0x3335730006606600,  // 0x000051A8 
	0xB002224222242020, 0x1222444494949558, 0x9999207686500333, 0x3130700066006636,  // 0x000051C8 
	0xC300022010000000, 0x212444444442445B, 0x4494000677733033, 0x1103331060002166,  // 0x000051E8 
	0xC000202300100060, 0x301122201033190B, 0x9999103075631333, 0x3310730203330166,  // 0x00005208 
	0xC030220300000606, 0x0302311213030778, 0x1441401367733077, 0x3735633000110160,  // 0x00005228 
	0xC100423730060060, 0x300100038033141B, 0x4444130378577357, 0x3575777401041906,  // 0x00005248 
	0xB202412733000006, 0x3001033103317148, 0x1411203755557777, 0x5375676002141060,  // 0x00005268 
	0x8022222707767766, 0x030120000337394B, 0x0744101533535366, 0x7776566004026911,  // 0x00005288 
	0x82020A0377767065, 0x3330331377AA3346, 0x4114203137853578, 0x5685526629499309,  // 0x000052A8 
	0xC007773755555356, 0xA33A3773363AAA35, 0x44A1655553455767, 0x5852556029999140,  // 0x000052C8 
	0x8231377576657757, 0x733173731AA33315, 0x1413335555855588, 0x5555850044463944,  // 0x000052E8 
	0x8857707655573373, 0x3131131373333338, 0x5535755555555555, 0x5555660499999210,  // 0x00005308 
	0x8005070573573353, 0x1111113133733118, 0x1335535555855555, 0x1555772249003191,  // 0x00005328 
	0x8021501333332113, 0x3111131377775118, 0x1151155555555555, 0x5555762499993049,  // 0x00005348 
	0x8000022000222223, 0x1114444411111118, 0x1111111515555555, 0x5553773499339122,  // 0x00005368 
	0x8000000000000200, 0x2249444242222138, 0x1341515555155555, 0x5515373099991444,  // 0x00005388 
	0xC000000000000222, 0x0444422222222A78, 0xA731111111111155, 0x5111371449431142,  // 0x000053A8 
	0x8000000000000060, 0x0202202022222078, 0x677A731111111111, 0x1113333149999142,  // 0x000053C8 
	0x8000000600000200, 0x1002000000000066, 0x7000077777733133, 0x3350303489991299,  // 0x000053E8 
	0x8002000666060063, 0x0122022222222428, 0x077A222A03202373, 0x3565688032269992,  // 0x00005408 
	0x8420222020000202, 0x2121220202222006, 0xA22A2A2A27206676, 0x7760000249991999,  // 0x00005428 
	0x6422022606060020, 0x2022142402000206, 0x2776766667777667, 0x66766004A9999999,  // 0x00005448 
	0x8422000000060060, 0x000000000066680C, 0x000022222A2A6700, 0x0000002499999999,  // 0x00005468 
	0x8990022006066007, 0x333333337766666C, 0x0602022220000066, 0x6060001449999999,  // 0x00005488 
	0x6444402000201111, 0x111131133306686C, 0x6606303331137666, 0x6603730499999999,  // 0x000054A8 
	0x8990449440333311, 0x333160600867600C, 0x0086865667777676, 0x0333131199999999,  // 0x000054C8 
	0xC80006888B8B8C88, 0xC8C8C88BC88CCBBD, 0xCBCCBBBCBCCCCCCC, 0xBCCBCB8888866668,  // 0x000054E8 
};

static u8 unaccounted5508[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


