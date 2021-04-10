#include <ultra64.h>
#include <z64.h>
#include "HIDAN_room_21.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "HIDAN_scene.h"



SCmdEchoSettings _HIDAN_room_21_set0000_cmd00 = { 0x16, 0, { 0 }, 0x04 }; // 0x0000
SCmdRoomBehavior _HIDAN_room_21_set0000_cmd01 = { 0x08, 0x01, 0x00000003 }; // 0x0008
SCmdSkyboxDisables _HIDAN_room_21_set0000_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0010
SCmdTimeSettings _HIDAN_room_21_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _HIDAN_room_21_set0000_cmd04 = { 0x0A, 0, (u32)&_HIDAN_room_21_meshHeader_000000B0 }; // 0x0020
SCmdObjectList _HIDAN_room_21_set0000_cmd05 = { 0x0B, 0x03, (u32)_HIDAN_room_21_objectList_00000040 }; // 0x0028
SCmdActorList _HIDAN_room_21_set0000_cmd06 = { 0x01, 0x06, (u32)_HIDAN_room_21_actorList_00000048 }; // 0x0030
SCmdEndMarker _HIDAN_room_21_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _HIDAN_room_21_objectList_00000040[] = 
{
	OBJECT_HIDAN_OBJECTS,
	OBJECT_SYOKUDAI,
	OBJECT_GI_HEART,
};

ActorEntry _HIDAN_room_21_actorList_00000048[6] = 
{
	{ ACTOR_BG_HIDAN_ROCK, 3310, 120, 0, 0, 0, 0, 0x2F00 }, //0x00000048 
	{ ACTOR_BG_HIDAN_CURTAIN, 3310, 120, 0, 0, 0, 0, 0x3FFF }, //0x00000058 
	{ ACTOR_EN_ITEM00, 3476, 640, -331, 0, 0, 0, 0x2F03 }, //0x00000068 
	{ ACTOR_EN_ITEM00, 3307, 440, 180, 0, 0, 0, 0x3003 }, //0x00000078 
	{ ACTOR_EN_ITEM00, 3502, 640, 320, 0, 16384, 0, 0x3403 }, //0x00000088 
	{ ACTOR_OBJ_SYOKUDAI, 3307, 440, -169, 0, 0, 0, 0x2400 }, //0x00000098 
};

static u32 padA8 = 0;
static u32 padAC = 0;

MeshHeader2 _HIDAN_room_21_meshHeader_000000B0 = { { 2 }, 0x0B, (u32)&_HIDAN_room_21_meshDListEntry_000000BC, (u32)&(_HIDAN_room_21_meshDListEntry_000000BC) + sizeof(_HIDAN_room_21_meshDListEntry_000000BC) };

MeshEntry2 _HIDAN_room_21_meshDListEntry_000000BC[11] = 
{
	{ 3310, 110, 0, 84, (u32)_HIDAN_room_21_dlist_000003E8, 0 },
	{ 2940, 0, 30, 500, (u32)_HIDAN_room_21_dlist_00000230, 0 },
	{ 3220, 2120, 0, 201, (u32)_HIDAN_room_21_dlist_00003FF8, 0 },
	{ 3310, 1530, 0, 536, (u32)_HIDAN_room_21_dlist_00004348, 0 },
	{ 3310, 115, 30, 559, (u32)_HIDAN_room_21_dlist_00003AF0, 0 },
	{ 2820, 160, 30, 521, (u32)_HIDAN_room_21_dlist_00003458, 0 },
	{ 3150, 500, 30, 743, (u32)_HIDAN_room_21_dlist_00002F58, 0 },
	{ 3315, 380, 29, 614, (u32)_HIDAN_room_21_dlist_00002560, 0 },
	{ 3310, 280, 0, 391, (u32)_HIDAN_room_21_dlist_000010C0, 0 },
	{ 3580, 460, 0, 556, (u32)_HIDAN_room_21_dlist_00000838, 0 },
	{ 2976, 163, 0, 113, (u32)_HIDAN_room_21_dlist_00000670, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

Vtx_t _HIDAN_room_21_vertices_00000170[4] = 
{
	 { 3040, 0, -460, 0, 1024, 512, 255, 255, 255, 255 }, // 0x00000170
	 { 2840, 0, -460, 0, 768, 256, 255, 255, 255, 255 }, // 0x00000180
	 { 2840, 0, 520, 0, -486, 1510, 255, 255, 255, 255 }, // 0x00000190
	 { 3040, 0, 520, 0, -230, 1766, 255, 255, 255, 255 }, // 0x000001A0
};

Vtx_t _HIDAN_room_21_vertices_000001B0[8] = 
{
	 { 2840, 0, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x000001B0
	 { 3040, 0, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x000001C0
	 { 2840, 0, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x000001D0
	 { 3040, 0, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x000001E0
	 { 2840, 0, 520, 0, 0, 0, 0, 0, 0, 0 }, // 0x000001F0
	 { 3040, 0, 520, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000200
	 { 2840, 0, 520, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000210
	 { 3040, 0, 520, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000220
};

Gfx _HIDAN_room_21_dlist_00000230[] =
{
	gsDPPipeSync(), // 0x00000230
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000238
	gsSPVertex(_HIDAN_room_21_vertices_000001B0, 8, 0), // 0x00000240
	gsSPCullDisplayList(0, 7), // 0x00000248
	gsDPPipeSync(), // 0x00000250
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000258
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000260
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000268
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00007C78), // 0x00000270
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 15, 0, 5, 15), // 0x00000278
	gsDPLoadSync(), // 0x00000280
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000288
	gsDPPipeSync(), // 0x00000290
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 15, 0, 5, 15), // 0x00000298
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000002A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00019FD0), // 0x000002A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 15, 0, 5, 15), // 0x000002B0
	gsDPLoadSync(), // 0x000002B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000002C0
	gsDPPipeSync(), // 0x000002C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 15, 0, 5, 15), // 0x000002D0
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x000002D8
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000002E0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000002E8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000002F0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000002F8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000300
	gsSPDisplayList(0x08000000), // 0x00000308
	gsSPVertex(_HIDAN_room_21_vertices_00000170, 4, 0), // 0x00000310
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000318
	gsSPEndDisplayList(), // 0x00000320
};

Vtx_t _HIDAN_room_21_vertices_00000328[4] = 
{
	 { 3370, 110, -60, 0, 1836, 1795, 255, 255, 255, 255 }, // 0x00000328
	 { 3250, 110, -60, 0, 2560, 2519, 255, 255, 255, 255 }, // 0x00000338
	 { 3250, 110, 60, 0, 3284, 1795, 255, 255, 255, 255 }, // 0x00000348
	 { 3370, 110, 60, 0, 2560, 1071, 255, 255, 255, 255 }, // 0x00000358
};

Vtx_t _HIDAN_room_21_vertices_00000368[8] = 
{
	 { 3250, 110, -60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000368
	 { 3370, 110, -60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000378
	 { 3250, 110, -60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000388
	 { 3370, 110, -60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000398
	 { 3250, 110, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x000003A8
	 { 3370, 110, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x000003B8
	 { 3250, 110, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x000003C8
	 { 3370, 110, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x000003D8
};

Gfx _HIDAN_room_21_dlist_000003E8[] =
{
	gsDPPipeSync(), // 0x000003E8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000003F0
	gsSPVertex(_HIDAN_room_21_vertices_00000368, 8, 0), // 0x000003F8
	gsSPCullDisplayList(0, 7), // 0x00000400
	gsDPPipeSync(), // 0x00000408
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000410
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000418
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000420
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00007478), // 0x00000428
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 15), // 0x00000430
	gsDPLoadSync(), // 0x00000438
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000440
	gsDPPipeSync(), // 0x00000448
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 15), // 0x00000450
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000458
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00000460
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 15, 0, 5, 15), // 0x00000468
	gsDPLoadSync(), // 0x00000470
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000478
	gsDPPipeSync(), // 0x00000480
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 15, 0, 5, 15), // 0x00000488
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00000490
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000498
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000004A0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000004A8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000004B0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000004B8
	gsSPDisplayList(0x09000000), // 0x000004C0
	gsSPVertex(_HIDAN_room_21_vertices_00000328, 4, 0), // 0x000004C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000004D0
	gsSPEndDisplayList(), // 0x000004D8
};

Vtx_t _HIDAN_room_21_vertices_000004E0[17] = 
{
	 { 3080, 120, 0, 0, 597, 1024, 107, 106, 96, 255 }, // 0x000004E0
	 { 3080, 124, 20, 0, 0, 1024, 157, 157, 148, 255 }, // 0x000004F0
	 { 2873, 207, 20, 0, 0, -6912, 157, 157, 148, 255 }, // 0x00000500
	 { 2873, 203, 0, 0, 597, -6912, 157, 157, 148, 255 }, // 0x00000510
	 { 2873, 207, 20, 0, 1536, 512, 157, 157, 148, 255 }, // 0x00000520
	 { 2873, 207, -20, 0, 512, 512, 157, 157, 148, 255 }, // 0x00000530
	 { 2873, 203, 0, 0, 1024, 819, 157, 157, 148, 255 }, // 0x00000540
	 { 3080, 120, 0, 0, 1024, 819, 107, 106, 96, 255 }, // 0x00000550
	 { 3080, 124, -20, 0, 512, 512, 157, 157, 148, 255 }, // 0x00000560
	 { 3080, 124, 20, 0, 1536, 512, 157, 157, 148, 255 }, // 0x00000570
	 { 3080, 120, 0, 0, 1024, 819, 107, 106, 96, 255 }, // 0x00000580
	 { 2873, 207, -20, 0, 1536, -2944, 157, 157, 148, 255 }, // 0x00000590
	 { 2873, 207, 20, 0, 512, -2944, 157, 157, 148, 255 }, // 0x000005A0
	 { 3080, 124, 20, 0, 512, 1024, 157, 157, 148, 255 }, // 0x000005B0
	 { 3080, 124, -20, 0, 1536, 1024, 157, 157, 148, 255 }, // 0x000005C0
	 { 2873, 207, -20, 0, 0, -6912, 157, 157, 148, 255 }, // 0x000005D0
	 { 3080, 124, -20, 0, 0, 1024, 157, 157, 148, 255 }, // 0x000005E0
};

Vtx_t _HIDAN_room_21_vertices_000005F0[8] = 
{
	 { 3072, 119, -55, 0, 0, 0, 0, 0, 0, 0 }, // 0x000005F0
	 { 3085, 119, 19, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000600
	 { 3076, 132, -56, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000610
	 { 3090, 132, 18, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000620
	 { 2862, 197, -18, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000630
	 { 2875, 197, 56, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000640
	 { 2867, 209, -19, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000650
	 { 2880, 209, 55, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000660
};

Gfx _HIDAN_room_21_dlist_00000670[] =
{
	gsDPPipeSync(), // 0x00000670
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000678
	gsSPVertex(_HIDAN_room_21_vertices_000005F0, 8, 0), // 0x00000680
	gsSPCullDisplayList(0, 7), // 0x00000688
	gsDPPipeSync(), // 0x00000690
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000698
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000006A0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000006A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00006A78), // 0x000006B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x000006B8
	gsDPLoadSync(), // 0x000006C0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000006C8
	gsDPPipeSync(), // 0x000006D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x000006D8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000006E0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000006E8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000006F0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000006F8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000700
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000708
	gsSPVertex(_HIDAN_room_21_vertices_000004E0, 17, 0), // 0x00000710
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000718
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00000720
	gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0), // 0x00000728
	gsSP2Triangles(11, 13, 14, 0, 3, 15, 16, 0), // 0x00000730
	gsSP1Triangle(3, 16, 0, 0), // 0x00000738
	gsSPEndDisplayList(), // 0x00000740
};

Vtx_t _HIDAN_room_21_vertices_00000748[7] = 
{
	 { 3580, 120, 440, 0, -860, 1311, 53, 53, 48, 255 }, // 0x00000748
	 { 3580, 460, 0, 0, 389, 1065, 109, 32, 16, 255 }, // 0x00000758
	 { 3580, 120, 0, 0, 41, 1761, 53, 53, 48, 255 }, // 0x00000768
	 { 3580, 120, -440, 0, 942, 2212, 53, 53, 48, 255 }, // 0x00000778
	 { 3580, 800, 440, 0, -164, -82, 53, 53, 48, 255 }, // 0x00000788
	 { 3580, 460, 0, 0, 389, 1065, 109, 32, 16, 255 }, // 0x00000798
	 { 3580, 800, -440, 0, 1638, 819, 53, 53, 48, 255 }, // 0x000007A8
};

Vtx_t _HIDAN_room_21_vertices_000007B8[8] = 
{
	 { 3580, 120, -440, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007B8
	 { 3580, 120, -440, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007C8
	 { 3580, 800, -440, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007D8
	 { 3580, 800, -440, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007E8
	 { 3580, 120, 440, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007F8
	 { 3580, 120, 440, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000808
	 { 3580, 800, 440, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000818
	 { 3580, 800, 440, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000828
};

Gfx _HIDAN_room_21_dlist_00000838[] =
{
	gsDPPipeSync(), // 0x00000838
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000840
	gsSPVertex(_HIDAN_room_21_vertices_000007B8, 8, 0), // 0x00000848
	gsSPCullDisplayList(0, 7), // 0x00000850
	gsDPPipeSync(), // 0x00000858
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000860
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000868
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000870
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00000878
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000880
	gsDPLoadSync(), // 0x00000888
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000890
	gsDPPipeSync(), // 0x00000898
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000008A0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000008A8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000008B0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000008B8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000008C0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000008C8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000008D0
	gsSPVertex(_HIDAN_room_21_vertices_00000748, 7, 0), // 0x000008D8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000008E0
	gsSP2Triangles(1, 0, 4, 0, 3, 5, 6, 0), // 0x000008E8
	gsSP1Triangle(5, 4, 6, 0), // 0x000008F0
	gsSPEndDisplayList(), // 0x000008F8
};

Vtx_t _HIDAN_room_21_vertices_00000900[4] = 
{
	 { 3240, 200, 200, 0, 1024, 1024, 200, 165, 131, 255 }, // 0x00000900
	 { 3380, 320, 200, 0, -1024, -3584, 143, 102, 60, 255 }, // 0x00000910
	 { 3380, 200, 200, 0, -1024, 1024, 200, 165, 131, 255 }, // 0x00000920
	 { 3240, 320, 200, 0, 1024, -3584, 143, 102, 60, 255 }, // 0x00000930
};

Vtx_t _HIDAN_room_21_vertices_00000940[8] = 
{
	 { 3240, 200, 300, 0, 1024, 1024, 107, 106, 96, 255 }, // 0x00000940
	 { 3240, 320, 300, 0, 1024, -3584, 59, 53, 42, 255 }, // 0x00000950
	 { 3240, 200, 200, 0, -1024, 1024, 200, 165, 131, 255 }, // 0x00000960
	 { 3240, 320, 200, 0, -1024, -3584, 143, 102, 60, 255 }, // 0x00000970
	 { 3380, 200, 300, 0, 1024, 1024, 107, 106, 96, 255 }, // 0x00000980
	 { 3380, 320, 300, 0, 1024, -3584, 145, 134, 109, 255 }, // 0x00000990
	 { 3240, 320, 300, 0, -1024, -3584, 145, 134, 109, 255 }, // 0x000009A0
	 { 3240, 200, 300, 0, -1024, 1024, 107, 106, 96, 255 }, // 0x000009B0
};

Vtx_t _HIDAN_room_21_vertices_000009C0[4] = 
{
	 { 3380, 200, 200, 0, 1024, 1024, 200, 165, 131, 255 }, // 0x000009C0
	 { 3380, 320, 200, 0, 1024, -3584, 143, 102, 60, 255 }, // 0x000009D0
	 { 3380, 200, 300, 0, -1024, 1024, 107, 106, 96, 255 }, // 0x000009E0
	 { 3380, 320, 300, 0, -1024, -3584, 59, 53, 42, 255 }, // 0x000009F0
};

Vtx_t _HIDAN_room_21_vertices_00000A00[4] = 
{
	 { 3240, 440, 60, 0, 2757, 1024, 102, 92, 76, 255 }, // 0x00000A00
	 { 3380, 440, 60, 0, 2757, -614, 102, 92, 76, 255 }, // 0x00000A10
	 { 3380, 320, 100, 0, 0, -614, 157, 157, 148, 255 }, // 0x00000A20
	 { 3240, 320, 100, 0, 0, 1024, 157, 157, 148, 255 }, // 0x00000A30
};

Vtx_t _HIDAN_room_21_vertices_00000A40[4] = 
{
	 { 3240, 320, 300, 0, -188, -13, 145, 134, 109, 255 }, // 0x00000A40
	 { 3380, 320, 300, 0, -188, 2214, 145, 134, 109, 255 }, // 0x00000A50
	 { 3380, 440, 300, 0, 2048, 2214, 102, 92, 76, 255 }, // 0x00000A60
	 { 3240, 440, 300, 0, 2048, -13, 102, 92, 76, 255 }, // 0x00000A70
};

Vtx_t _HIDAN_room_21_vertices_00000A80[4] = 
{
	 { 3240, 440, 300, 0, 3072, 1024, 102, 92, 76, 255 }, // 0x00000A80
	 { 3380, 440, 300, 0, 0, 1024, 102, 92, 76, 255 }, // 0x00000A90
	 { 3240, 440, 60, 0, 3072, 6290, 102, 92, 76, 255 }, // 0x00000AA0
	 { 3380, 440, 60, 0, 0, 6290, 102, 92, 76, 255 }, // 0x00000AB0
};

Vtx_t _HIDAN_room_21_vertices_00000AC0[4] = 
{
	 { 3380, 320, -200, 0, -1024, -3584, 107, 106, 96, 255 }, // 0x00000AC0
	 { 3240, 320, -200, 0, 1024, -3584, 107, 106, 96, 255 }, // 0x00000AD0
	 { 3240, 200, -200, 0, 1024, 1024, 200, 165, 131, 255 }, // 0x00000AE0
	 { 3380, 200, -200, 0, -1024, 1024, 200, 165, 131, 255 }, // 0x00000AF0
};

Vtx_t _HIDAN_room_21_vertices_00000B00[4] = 
{
	 { 3240, 320, -140, 0, 0, 1024, 157, 157, 148, 255 }, // 0x00000B00
	 { 3380, 320, -140, 0, 0, -614, 157, 157, 148, 255 }, // 0x00000B10
	 { 3380, 440, -100, 0, 2757, -614, 102, 92, 76, 255 }, // 0x00000B20
	 { 3240, 440, -100, 0, 2757, 1024, 102, 92, 76, 255 }, // 0x00000B30
};

Vtx_t _HIDAN_room_21_vertices_00000B40[4] = 
{
	 { 3240, 440, -300, 0, 2048, -13, 102, 92, 76, 255 }, // 0x00000B40
	 { 3380, 440, -300, 0, 2048, 2214, 102, 92, 76, 255 }, // 0x00000B50
	 { 3380, 320, -300, 0, -188, 2214, 145, 134, 109, 255 }, // 0x00000B60
	 { 3240, 320, -300, 0, -188, -13, 59, 53, 42, 255 }, // 0x00000B70
};

Vtx_t _HIDAN_room_21_vertices_00000B80[4] = 
{
	 { 3380, 200, -300, 0, -1024, 1024, 107, 106, 96, 255 }, // 0x00000B80
	 { 3380, 320, -300, 0, -1024, -3584, 59, 53, 42, 255 }, // 0x00000B90
	 { 3380, 320, -200, 0, 1024, -3584, 107, 106, 96, 255 }, // 0x00000BA0
	 { 3380, 200, -200, 0, 1024, 1024, 200, 165, 131, 255 }, // 0x00000BB0
};

Vtx_t _HIDAN_room_21_vertices_00000BC0[8] = 
{
	 { 3240, 200, -300, 0, -1024, 1024, 107, 106, 96, 255 }, // 0x00000BC0
	 { 3240, 320, -300, 0, -1024, -3584, 59, 53, 42, 255 }, // 0x00000BD0
	 { 3380, 320, -300, 0, 1024, -3584, 145, 134, 109, 255 }, // 0x00000BE0
	 { 3380, 200, -300, 0, 1024, 1024, 107, 106, 96, 255 }, // 0x00000BF0
	 { 3240, 200, -200, 0, -1024, 1024, 200, 165, 131, 255 }, // 0x00000C00
	 { 3240, 320, -200, 0, -1024, -3584, 107, 106, 96, 255 }, // 0x00000C10
	 { 3240, 320, -300, 0, 1024, -3584, 145, 134, 109, 255 }, // 0x00000C20
	 { 3240, 200, -300, 0, 1024, 1024, 107, 106, 96, 255 }, // 0x00000C30
};

Vtx_t _HIDAN_room_21_vertices_00000C40[4] = 
{
	 { 3380, 440, -100, 0, 0, -3365, 102, 92, 76, 255 }, // 0x00000C40
	 { 3380, 440, -300, 0, 0, 1024, 102, 92, 76, 255 }, // 0x00000C50
	 { 3240, 440, -100, 0, 3147, -3365, 102, 92, 76, 255 }, // 0x00000C60
	 { 3240, 440, -300, 0, 3147, 1024, 102, 92, 76, 255 }, // 0x00000C70
};

Vtx_t _HIDAN_room_21_vertices_00000C80[4] = 
{
	 { 3240, 200, -300, 0, 684, 986, 107, 106, 96, 255 }, // 0x00000C80
	 { 3200, 120, -340, 0, 0, 2131, 107, 106, 96, 255 }, // 0x00000C90
	 { 3200, 120, -160, 0, 3080, 2131, 107, 106, 96, 255 }, // 0x00000CA0
	 { 3240, 200, -200, 0, 2396, 986, 200, 165, 131, 255 }, // 0x00000CB0
};

Vtx_t _HIDAN_room_21_vertices_00000CC0[20] = 
{
	 { 3240, 320, -200, 0, -176, 2731, 107, 106, 96, 255 }, // 0x00000CC0
	 { 3240, 320, -140, 0, -176, 3755, 157, 157, 148, 255 }, // 0x00000CD0
	 { 3240, 440, -100, 0, 2048, 4437, 102, 92, 76, 255 }, // 0x00000CE0
	 { 3240, 440, -300, 0, 2048, 1024, 102, 92, 76, 255 }, // 0x00000CF0
	 { 3240, 320, -300, 0, -176, 1024, 145, 134, 109, 255 }, // 0x00000D00
	 { 3380, 320, -140, 0, -176, 3755, 157, 157, 148, 255 }, // 0x00000D10
	 { 3380, 320, -200, 0, -176, 2731, 107, 106, 96, 255 }, // 0x00000D20
	 { 3380, 440, -100, 0, 2048, 4437, 102, 92, 76, 255 }, // 0x00000D30
	 { 3380, 320, -300, 0, -176, 1024, 59, 53, 42, 255 }, // 0x00000D40
	 { 3380, 440, -300, 0, 2048, 1024, 102, 92, 76, 255 }, // 0x00000D50
	 { 3240, 440, 60, 0, 2048, 5120, 102, 92, 76, 255 }, // 0x00000D60
	 { 3240, 320, 100, 0, -185, 4437, 157, 157, 148, 255 }, // 0x00000D70
	 { 3240, 320, 200, 0, -185, 2731, 143, 102, 60, 255 }, // 0x00000D80
	 { 3240, 320, 300, 0, -185, 1024, 59, 53, 42, 255 }, // 0x00000D90
	 { 3240, 440, 300, 0, 2048, 1024, 102, 92, 76, 255 }, // 0x00000DA0
	 { 3380, 320, 100, 0, -185, 4437, 157, 157, 148, 255 }, // 0x00000DB0
	 { 3380, 440, 60, 0, 2048, 5120, 102, 92, 76, 255 }, // 0x00000DC0
	 { 3380, 320, 200, 0, -185, 2731, 143, 102, 60, 255 }, // 0x00000DD0
	 { 3380, 440, 300, 0, 2048, 1024, 102, 92, 76, 255 }, // 0x00000DE0
	 { 3380, 320, 300, 0, -185, 1024, 59, 53, 42, 255 }, // 0x00000DF0
};

Vtx_t _HIDAN_room_21_vertices_00000E00[28] = 
{
	 { 3240, 200, 200, 0, 2396, 986, 200, 165, 131, 255 }, // 0x00000E00
	 { 3200, 120, 160, 0, 3080, 2131, 107, 106, 96, 255 }, // 0x00000E10
	 { 3200, 120, 340, 0, 0, 2131, 107, 106, 96, 255 }, // 0x00000E20
	 { 3240, 200, 300, 0, 684, 986, 107, 106, 96, 255 }, // 0x00000E30
	 { 3380, 200, 300, 0, 684, 986, 107, 106, 96, 255 }, // 0x00000E40
	 { 3420, 120, 340, 0, 0, 2131, 107, 106, 96, 255 }, // 0x00000E50
	 { 3420, 120, 160, 0, 3080, 2131, 107, 106, 96, 255 }, // 0x00000E60
	 { 3380, 200, 200, 0, 2396, 986, 200, 165, 131, 255 }, // 0x00000E70
	 { 3380, 200, -200, 0, 2396, 986, 200, 165, 131, 255 }, // 0x00000E80
	 { 3420, 120, -160, 0, 3080, 2131, 107, 106, 96, 255 }, // 0x00000E90
	 { 3420, 120, -340, 0, 0, 2131, 107, 106, 96, 255 }, // 0x00000EA0
	 { 3380, 200, -300, 0, 684, 986, 107, 106, 96, 255 }, // 0x00000EB0
	 { 3380, 200, -300, 0, 2894, 986, 107, 106, 96, 255 }, // 0x00000EC0
	 { 3420, 120, -340, 0, 3828, 2131, 107, 106, 96, 255 }, // 0x00000ED0
	 { 3200, 120, -340, 0, -372, 2131, 107, 106, 96, 255 }, // 0x00000EE0
	 { 3240, 200, -300, 0, 561, 986, 107, 106, 96, 255 }, // 0x00000EF0
	 { 3240, 200, -200, 0, 561, 986, 200, 165, 131, 255 }, // 0x00000F00
	 { 3200, 120, -160, 0, -372, 2131, 107, 106, 96, 255 }, // 0x00000F10
	 { 3420, 120, -160, 0, 3828, 2131, 107, 106, 96, 255 }, // 0x00000F20
	 { 3380, 200, -200, 0, 2894, 986, 200, 165, 131, 255 }, // 0x00000F30
	 { 3380, 200, 200, 0, 2894, 986, 200, 165, 131, 255 }, // 0x00000F40
	 { 3420, 120, 160, 0, 3828, 2131, 107, 106, 96, 255 }, // 0x00000F50
	 { 3200, 120, 160, 0, -372, 2131, 107, 106, 96, 255 }, // 0x00000F60
	 { 3240, 200, 200, 0, 561, 986, 200, 165, 131, 255 }, // 0x00000F70
	 { 3240, 200, 300, 0, 561, 986, 107, 106, 96, 255 }, // 0x00000F80
	 { 3200, 120, 340, 0, -372, 2131, 107, 106, 96, 255 }, // 0x00000F90
	 { 3420, 120, 340, 0, 3828, 2131, 107, 106, 96, 255 }, // 0x00000FA0
	 { 3380, 200, 300, 0, 2894, 986, 107, 106, 96, 255 }, // 0x00000FB0
};

Vtx_t _HIDAN_room_21_vertices_00000FC0[8] = 
{
	 { 3380, 320, 200, 0, 0, 1024, 143, 102, 60, 255 }, // 0x00000FC0
	 { 3240, 320, 200, 0, 3072, 1024, 143, 102, 60, 255 }, // 0x00000FD0
	 { 3240, 320, 100, 0, 3072, 3218, 157, 157, 148, 255 }, // 0x00000FE0
	 { 3380, 320, 100, 0, 0, 3218, 157, 157, 148, 255 }, // 0x00000FF0
	 { 3240, 320, -140, 0, 3072, -293, 157, 157, 148, 255 }, // 0x00001000
	 { 3240, 320, -200, 0, 3072, 1024, 107, 106, 96, 255 }, // 0x00001010
	 { 3380, 320, -200, 0, 0, 1024, 107, 106, 96, 255 }, // 0x00001020
	 { 3380, 320, -140, 0, 0, -293, 157, 157, 148, 255 }, // 0x00001030
};

Vtx_t _HIDAN_room_21_vertices_00001040[8] = 
{
	 { 3200, 120, -340, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001040
	 { 3420, 120, -340, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001050
	 { 3200, 440, -340, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001060
	 { 3420, 440, -340, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001070
	 { 3200, 120, 340, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001080
	 { 3420, 120, 340, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001090
	 { 3200, 440, 340, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010A0
	 { 3420, 440, 340, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010B0
};

Gfx _HIDAN_room_21_dlist_000010C0[] =
{
	gsDPPipeSync(), // 0x000010C0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000010C8
	gsSPVertex(_HIDAN_room_21_vertices_00001040, 8, 0), // 0x000010D0
	gsSPCullDisplayList(0, 7), // 0x000010D8
	gsDPPipeSync(), // 0x000010E0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000010E8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000010F0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000010F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00007278), // 0x00001100
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00001108
	gsDPLoadSync(), // 0x00001110
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00001118
	gsDPPipeSync(), // 0x00001120
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00001128
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001130
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018990), // 0x00001138
	gsDPTileSync(), // 0x00001140
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001148
	gsDPLoadSync(), // 0x00001150
	gsDPLoadTLUTCmd(7, 15), // 0x00001158
	gsDPPipeSync(), // 0x00001160
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001168
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001170
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001178
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001180
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001188
	gsSPVertex(_HIDAN_room_21_vertices_00000900, 4, 0), // 0x00001190
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001198
	gsDPPipeSync(), // 0x000011A0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000011A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00005E78), // 0x000011B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000011B8
	gsDPLoadSync(), // 0x000011C0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000011C8
	gsDPPipeSync(), // 0x000011D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000011D8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000011E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000011E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00007278), // 0x000011F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x000011F8
	gsDPLoadSync(), // 0x00001200
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00001208
	gsDPPipeSync(), // 0x00001210
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00001218
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001220
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018990), // 0x00001228
	gsDPTileSync(), // 0x00001230
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001238
	gsDPLoadSync(), // 0x00001240
	gsDPLoadTLUTCmd(7, 15), // 0x00001248
	gsDPPipeSync(), // 0x00001250
	gsSPVertex(_HIDAN_room_21_vertices_00000940, 8, 0), // 0x00001258
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001260
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001268
	gsDPPipeSync(), // 0x00001270
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001278
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00005E78), // 0x00001280
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001288
	gsDPLoadSync(), // 0x00001290
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001298
	gsDPPipeSync(), // 0x000012A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000012A8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000012B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000012B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00007278), // 0x000012C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x000012C8
	gsDPLoadSync(), // 0x000012D0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000012D8
	gsDPPipeSync(), // 0x000012E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x000012E8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000012F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018990), // 0x000012F8
	gsDPTileSync(), // 0x00001300
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001308
	gsDPLoadSync(), // 0x00001310
	gsDPLoadTLUTCmd(7, 15), // 0x00001318
	gsDPPipeSync(), // 0x00001320
	gsSPVertex(_HIDAN_room_21_vertices_000009C0, 4, 0), // 0x00001328
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001330
	gsDPPipeSync(), // 0x00001338
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001340
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00004678), // 0x00001348
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001350
	gsDPLoadSync(), // 0x00001358
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001360
	gsDPPipeSync(), // 0x00001368
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001370
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001378
	gsSPVertex(_HIDAN_room_21_vertices_00000A00, 4, 0), // 0x00001380
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001388
	gsDPPipeSync(), // 0x00001390
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001398
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00006678), // 0x000013A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000013A8
	gsDPLoadSync(), // 0x000013B0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000013B8
	gsDPPipeSync(), // 0x000013C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000013C8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000013D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018990), // 0x000013D8
	gsDPTileSync(), // 0x000013E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000013E8
	gsDPLoadSync(), // 0x000013F0
	gsDPLoadTLUTCmd(7, 15), // 0x000013F8
	gsDPPipeSync(), // 0x00001400
	gsSPVertex(_HIDAN_room_21_vertices_00000A40, 4, 0), // 0x00001408
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001410
	gsDPPipeSync(), // 0x00001418
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00019DD0), // 0x00001420
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001428
	gsDPLoadSync(), // 0x00001430
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00001438
	gsDPPipeSync(), // 0x00001440
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001448
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001450
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00001458
	gsDPTileSync(), // 0x00001460
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001468
	gsDPLoadSync(), // 0x00001470
	gsDPLoadTLUTCmd(7, 15), // 0x00001478
	gsDPPipeSync(), // 0x00001480
	gsSPVertex(_HIDAN_room_21_vertices_00000A80, 4, 0), // 0x00001488
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001490
	gsDPPipeSync(), // 0x00001498
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00007278), // 0x000014A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x000014A8
	gsDPLoadSync(), // 0x000014B0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000014B8
	gsDPPipeSync(), // 0x000014C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x000014C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000014D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018990), // 0x000014D8
	gsDPTileSync(), // 0x000014E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000014E8
	gsDPLoadSync(), // 0x000014F0
	gsDPLoadTLUTCmd(7, 15), // 0x000014F8
	gsDPPipeSync(), // 0x00001500
	gsSPVertex(_HIDAN_room_21_vertices_00000AC0, 4, 0), // 0x00001508
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00001510
	gsDPPipeSync(), // 0x00001518
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001520
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00005E78), // 0x00001528
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001530
	gsDPLoadSync(), // 0x00001538
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001540
	gsDPPipeSync(), // 0x00001548
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001550
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001558
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00004678), // 0x00001560
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001568
	gsDPLoadSync(), // 0x00001570
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001578
	gsDPPipeSync(), // 0x00001580
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001588
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001590
	gsSPVertex(_HIDAN_room_21_vertices_00000B00, 4, 0), // 0x00001598
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000015A0
	gsDPPipeSync(), // 0x000015A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000015B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00006678), // 0x000015B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000015C0
	gsDPLoadSync(), // 0x000015C8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000015D0
	gsDPPipeSync(), // 0x000015D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000015E0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000015E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018990), // 0x000015F0
	gsDPTileSync(), // 0x000015F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001600
	gsDPLoadSync(), // 0x00001608
	gsDPLoadTLUTCmd(7, 15), // 0x00001610
	gsDPPipeSync(), // 0x00001618
	gsSPVertex(_HIDAN_room_21_vertices_00000B40, 4, 0), // 0x00001620
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001628
	gsDPPipeSync(), // 0x00001630
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00007278), // 0x00001638
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00001640
	gsDPLoadSync(), // 0x00001648
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00001650
	gsDPPipeSync(), // 0x00001658
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00001660
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001668
	gsSPVertex(_HIDAN_room_21_vertices_00000B80, 4, 0), // 0x00001670
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001678
	gsDPPipeSync(), // 0x00001680
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001688
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00005E78), // 0x00001690
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001698
	gsDPLoadSync(), // 0x000016A0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000016A8
	gsDPPipeSync(), // 0x000016B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000016B8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000016C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000016C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00007278), // 0x000016D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x000016D8
	gsDPLoadSync(), // 0x000016E0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000016E8
	gsDPPipeSync(), // 0x000016F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x000016F8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001700
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018990), // 0x00001708
	gsDPTileSync(), // 0x00001710
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001718
	gsDPLoadSync(), // 0x00001720
	gsDPLoadTLUTCmd(7, 15), // 0x00001728
	gsDPPipeSync(), // 0x00001730
	gsSPVertex(_HIDAN_room_21_vertices_00000BC0, 8, 0), // 0x00001738
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001740
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001748
	gsDPPipeSync(), // 0x00001750
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001758
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00005E78), // 0x00001760
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001768
	gsDPLoadSync(), // 0x00001770
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001778
	gsDPPipeSync(), // 0x00001780
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001788
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001790
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001798
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00019DD0), // 0x000017A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000017A8
	gsDPLoadSync(), // 0x000017B0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000017B8
	gsDPPipeSync(), // 0x000017C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000017C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000017D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x000017D8
	gsDPTileSync(), // 0x000017E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000017E8
	gsDPLoadSync(), // 0x000017F0
	gsDPLoadTLUTCmd(7, 15), // 0x000017F8
	gsDPPipeSync(), // 0x00001800
	gsSPVertex(_HIDAN_room_21_vertices_00000C40, 4, 0), // 0x00001808
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001810
	gsDPPipeSync(), // 0x00001818
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001820
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000195D0), // 0x00001828
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001830
	gsDPLoadSync(), // 0x00001838
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001840
	gsDPPipeSync(), // 0x00001848
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001850
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001858
	gsSPVertex(_HIDAN_room_21_vertices_00000C80, 4, 0), // 0x00001860
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001868
	gsDPPipeSync(), // 0x00001870
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001878
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00006678), // 0x00001880
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001888
	gsDPLoadSync(), // 0x00001890
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001898
	gsDPPipeSync(), // 0x000018A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000018A8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000018B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018990), // 0x000018B8
	gsDPTileSync(), // 0x000018C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000018C8
	gsDPLoadSync(), // 0x000018D0
	gsDPLoadTLUTCmd(7, 15), // 0x000018D8
	gsDPPipeSync(), // 0x000018E0
	gsSPVertex(_HIDAN_room_21_vertices_00000CC0, 20, 0), // 0x000018E8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0), // 0x000018F0
	gsSP2Triangles(5, 6, 7, 0, 6, 8, 9, 0), // 0x000018F8
	gsSP2Triangles(6, 9, 7, 0, 3, 0, 2, 0), // 0x00001900
	gsSP2Triangles(10, 11, 12, 0, 12, 13, 14, 0), // 0x00001908
	gsSP2Triangles(15, 16, 17, 0, 18, 19, 17, 0), // 0x00001910
	gsSP2Triangles(18, 17, 16, 0, 12, 14, 10, 0), // 0x00001918
	gsDPPipeSync(), // 0x00001920
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001928
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000195D0), // 0x00001930
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001938
	gsDPLoadSync(), // 0x00001940
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001948
	gsDPPipeSync(), // 0x00001950
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001958
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001960
	gsSPVertex(_HIDAN_room_21_vertices_00000E00, 28, 0), // 0x00001968
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001970
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001978
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001980
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001988
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00001990
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00001998
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x000019A0
	gsDPPipeSync(), // 0x000019A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000019B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00019DD0), // 0x000019B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000019C0
	gsDPLoadSync(), // 0x000019C8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000019D0
	gsDPPipeSync(), // 0x000019D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000019E0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000019E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x000019F0
	gsDPTileSync(), // 0x000019F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001A00
	gsDPLoadSync(), // 0x00001A08
	gsDPLoadTLUTCmd(7, 15), // 0x00001A10
	gsDPPipeSync(), // 0x00001A18
	gsSPVertex(_HIDAN_room_21_vertices_00000FC0, 8, 0), // 0x00001A20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001A28
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001A30
	gsSPEndDisplayList(), // 0x00001A38
};

Vtx_t _HIDAN_room_21_vertices_00001A40[32] = 
{
	 { 3050, 250, 70, 0, 3584, 256, 107, 106, 96, 255 }, // 0x00001A40
	 { 3050, 260, 80, 0, 3840, 0, 107, 106, 96, 255 }, // 0x00001A50
	 { 3050, 260, -80, 0, -256, 0, 107, 106, 96, 255 }, // 0x00001A60
	 { 3050, 250, -70, 0, 0, 256, 107, 106, 96, 255 }, // 0x00001A70
	 { 3050, 120, 70, 0, -1024, 0, 80, 78, 72, 255 }, // 0x00001A80
	 { 3050, 130, 80, 0, -768, 256, 157, 157, 148, 255 }, // 0x00001A90
	 { 3050, 260, 80, 0, 2048, 256, 107, 106, 96, 255 }, // 0x00001AA0
	 { 3050, 250, 70, 0, 1792, 0, 107, 106, 96, 255 }, // 0x00001AB0
	 { 3050, 130, -80, 0, 256, 256, 107, 106, 96, 255 }, // 0x00001AC0
	 { 3050, 120, -70, 0, 0, 0, 80, 78, 72, 255 }, // 0x00001AD0
	 { 3050, 250, -70, 0, 2816, 0, 107, 106, 96, 255 }, // 0x00001AE0
	 { 3050, 260, -80, 0, 3072, 256, 107, 106, 96, 255 }, // 0x00001AF0
	 { 3050, 640, 260, 0, 13312, 256, 107, 106, 96, 255 }, // 0x00001B00
	 { 3050, 640, -260, 0, 0, 256, 107, 106, 96, 255 }, // 0x00001B10
	 { 3050, 630, -260, 0, 0, 512, 107, 106, 96, 255 }, // 0x00001B20
	 { 3050, 630, 260, 0, 13312, 512, 107, 106, 96, 255 }, // 0x00001B30
	 { 3050, 120, 270, 0, 5120, 256, 80, 78, 72, 255 }, // 0x00001B40
	 { 3050, 130, 260, 0, 4864, 0, 157, 157, 148, 255 }, // 0x00001B50
	 { 3050, 130, 80, 0, 256, 0, 157, 157, 148, 255 }, // 0x00001B60
	 { 3050, 120, 70, 0, 0, 256, 80, 78, 72, 255 }, // 0x00001B70
	 { 3050, 130, -260, 0, 76, 0, 157, 157, 148, 255 }, // 0x00001B80
	 { 3050, 120, -270, 0, -180, 256, 80, 78, 72, 255 }, // 0x00001B90
	 { 3050, 120, -70, 0, 4940, 256, 80, 78, 72, 255 }, // 0x00001BA0
	 { 3050, 130, -80, 0, 4684, 0, 157, 157, 148, 255 }, // 0x00001BB0
	 { 3050, 130, -270, 0, 8448, 0, 157, 157, 148, 255 }, // 0x00001BC0
	 { 3050, 130, -460, 0, 3593, 0, 157, 157, 148, 255 }, // 0x00001BD0
	 { 3050, 120, -460, 0, 3593, 256, 80, 78, 72, 255 }, // 0x00001BE0
	 { 3050, 120, -270, 0, 8448, 256, 80, 78, 72, 255 }, // 0x00001BF0
	 { 3050, 640, -270, 0, 13312, 256, 107, 106, 96, 255 }, // 0x00001C00
	 { 3050, 640, -460, 0, 8457, 256, 107, 106, 96, 255 }, // 0x00001C10
	 { 3050, 630, -460, 0, 8457, 512, 107, 106, 96, 255 }, // 0x00001C20
	 { 3050, 630, -270, 0, 13312, 512, 107, 106, 96, 255 }, // 0x00001C30
};

Vtx_t _HIDAN_room_21_vertices_00001C40[16] = 
{
	 { 3050, 630, 270, 0, -1242, 512, 107, 106, 96, 255 }, // 0x00001C40
	 { 3050, 630, 519, 0, 5120, 512, 107, 106, 96, 255 }, // 0x00001C50
	 { 3050, 640, 519, 0, 5120, 256, 107, 106, 96, 255 }, // 0x00001C60
	 { 3050, 640, 270, 0, -1242, 256, 107, 106, 96, 255 }, // 0x00001C70
	 { 3050, 120, 270, 0, -1242, 512, 80, 78, 72, 255 }, // 0x00001C80
	 { 3050, 120, 519, 0, 5120, 512, 80, 78, 72, 255 }, // 0x00001C90
	 { 3050, 130, 519, 0, 5120, 256, 157, 157, 148, 255 }, // 0x00001CA0
	 { 3050, 130, 270, 0, -1242, 256, 157, 157, 148, 255 }, // 0x00001CB0
	 { 3050, 640, 260, 0, -474, 512, 107, 106, 96, 255 }, // 0x00001CC0
	 { 3050, 640, 519, 0, 6144, 512, 107, 106, 96, 255 }, // 0x00001CD0
	 { 3060, 640, 519, 0, 6144, 256, 157, 157, 148, 255 }, // 0x00001CE0
	 { 3060, 640, 260, 0, -474, 256, 157, 157, 148, 255 }, // 0x00001CF0
	 { 3060, 640, 400, 0, -512, 256, 107, 106, 96, 255 }, // 0x00001D00
	 { 3580, 640, 400, 0, -12363, 256, 107, 106, 96, 255 }, // 0x00001D10
	 { 3580, 640, 390, 0, -12363, 0, 157, 157, 148, 255 }, // 0x00001D20
	 { 3060, 640, 390, 0, -512, 0, 157, 157, 148, 255 }, // 0x00001D30
};

Vtx_t _HIDAN_room_21_vertices_00001D40[4] = 
{
	 { 3060, 640, 270, 0, -789, 3072, 157, 157, 148, 255 }, // 0x00001D40
	 { 3060, 640, 390, 0, 1669, 3072, 157, 157, 148, 255 }, // 0x00001D50
	 { 3570, 640, 390, 0, 1669, -6226, 157, 157, 148, 255 }, // 0x00001D60
	 { 3570, 640, 270, 0, -789, -6226, 107, 106, 96, 255 }, // 0x00001D70
};

Vtx_t _HIDAN_room_21_vertices_00001D80[20] = 
{
	 { 3570, 640, 270, 0, -1242, 512, 107, 106, 96, 255 }, // 0x00001D80
	 { 3570, 640, 390, 0, 1830, 512, 107, 106, 96, 255 }, // 0x00001D90
	 { 3580, 640, 390, 0, 1830, 256, 107, 106, 96, 255 }, // 0x00001DA0
	 { 3580, 640, 270, 0, -1242, 256, 107, 106, 96, 255 }, // 0x00001DB0
	 { 3060, 640, 270, 0, -512, 256, 107, 106, 96, 255 }, // 0x00001DC0
	 { 3580, 640, 270, 0, -12363, 256, 107, 106, 96, 255 }, // 0x00001DD0
	 { 3580, 640, 260, 0, -12363, 0, 157, 157, 148, 255 }, // 0x00001DE0
	 { 3060, 640, 260, 0, -512, 0, 157, 157, 148, 255 }, // 0x00001DF0
	 { 3060, 640, 260, 0, 14327, 256, 107, 106, 96, 255 }, // 0x00001E00
	 { 3060, 640, -460, 0, -4096, 256, 107, 106, 96, 255 }, // 0x00001E10
	 { 3050, 640, -460, 0, -4096, 512, 107, 106, 96, 255 }, // 0x00001E20
	 { 3050, 640, 260, 0, 14327, 512, 107, 106, 96, 255 }, // 0x00001E30
	 { 3060, 640, -390, 0, -512, 256, 107, 106, 96, 255 }, // 0x00001E40
	 { 3580, 640, -390, 0, -12363, 256, 107, 106, 96, 255 }, // 0x00001E50
	 { 3580, 640, -400, 0, -12363, 0, 157, 157, 148, 255 }, // 0x00001E60
	 { 3060, 640, -400, 0, -512, 0, 157, 157, 148, 255 }, // 0x00001E70
	 { 3570, 640, -390, 0, -1242, 512, 107, 106, 96, 255 }, // 0x00001E80
	 { 3570, 640, -270, 0, 1830, 512, 107, 106, 96, 255 }, // 0x00001E90
	 { 3580, 640, -270, 0, 1830, 256, 107, 106, 96, 255 }, // 0x00001EA0
	 { 3580, 640, -390, 0, -1242, 256, 107, 106, 96, 255 }, // 0x00001EB0
};

Vtx_t _HIDAN_room_21_vertices_00001EC0[4] = 
{
	 { 3060, 640, -390, 0, -789, 3072, 157, 157, 148, 255 }, // 0x00001EC0
	 { 3060, 640, -270, 0, 1669, 3072, 157, 157, 148, 255 }, // 0x00001ED0
	 { 3570, 640, -270, 0, 1669, -6226, 157, 157, 148, 255 }, // 0x00001EE0
	 { 3570, 640, -390, 0, -789, -6226, 107, 106, 96, 255 }, // 0x00001EF0
};

Vtx_t _HIDAN_room_21_vertices_00001F00[18] = 
{
	 { 3060, 640, -260, 0, -512, 256, 107, 106, 96, 255 }, // 0x00001F00
	 { 3580, 640, -260, 0, -12363, 256, 107, 106, 96, 255 }, // 0x00001F10
	 { 3580, 640, -270, 0, -12363, 0, 157, 157, 148, 255 }, // 0x00001F20
	 { 3060, 640, -270, 0, -512, 0, 157, 157, 148, 255 }, // 0x00001F30
	 { 3060, 630, -260, 0, -512, 0, 157, 157, 148, 255 }, // 0x00001F40
	 { 3580, 630, -260, 0, -12363, 0, 157, 157, 148, 255 }, // 0x00001F50
	 { 3060, 640, -400, 0, -512, 256, 107, 106, 96, 255 }, // 0x00001F60
	 { 3580, 640, -400, 0, -12363, 256, 107, 106, 96, 255 }, // 0x00001F70
	 { 3580, 630, -400, 0, -12363, 0, 157, 157, 148, 255 }, // 0x00001F80
	 { 3060, 630, -400, 0, -512, 0, 157, 157, 148, 255 }, // 0x00001F90
	 { 3060, 630, 400, 0, -512, 0, 157, 157, 148, 255 }, // 0x00001FA0
	 { 3580, 630, 400, 0, -12363, 0, 157, 157, 148, 255 }, // 0x00001FB0
	 { 3580, 640, 400, 0, -12363, 256, 107, 106, 96, 255 }, // 0x00001FC0
	 { 3060, 640, 400, 0, -512, 256, 107, 106, 96, 255 }, // 0x00001FD0
	 { 3060, 640, 260, 0, -512, 256, 107, 106, 96, 255 }, // 0x00001FE0
	 { 3580, 640, 260, 0, -12363, 256, 107, 106, 96, 255 }, // 0x00001FF0
	 { 3580, 630, 260, 0, -12363, 0, 157, 157, 148, 255 }, // 0x00002000
	 { 3060, 630, 260, 0, -512, 0, 157, 157, 148, 255 }, // 0x00002010
};

Vtx_t _HIDAN_room_21_vertices_00002020[8] = 
{
	 { 3050, 630, -260, 0, -410, -9216, 107, 106, 96, 255 }, // 0x00002020
	 { 3050, 440, -260, 0, -410, -5325, 107, 106, 96, 255 }, // 0x00002030
	 { 3050, 440, 260, 0, 10240, -5325, 157, 157, 148, 255 }, // 0x00002040
	 { 3050, 630, 260, 0, 10240, -9216, 107, 106, 96, 255 }, // 0x00002050
	 { 3050, 440, 509, 0, 4096, -3277, 157, 157, 148, 255 }, // 0x00002060
	 { 3050, 630, 509, 0, 4096, -7168, 107, 106, 96, 255 }, // 0x00002070
	 { 3050, 630, 270, 0, -789, -7168, 107, 106, 96, 255 }, // 0x00002080
	 { 3050, 440, 270, 0, -789, -3277, 107, 106, 96, 255 }, // 0x00002090
};

Vtx_t _HIDAN_room_21_vertices_000020A0[8] = 
{
	 { 3050, 440, 519, 0, -8448, 256, 107, 106, 96, 255 }, // 0x000020A0
	 { 3050, 630, 519, 0, -13312, 256, 107, 106, 96, 255 }, // 0x000020B0
	 { 3050, 630, 509, 0, -13312, 0, 157, 157, 148, 255 }, // 0x000020C0
	 { 3050, 440, 509, 0, -8448, 0, 157, 157, 148, 255 }, // 0x000020D0
	 { 3050, 440, -450, 0, -8448, 0, 157, 157, 148, 255 }, // 0x000020E0
	 { 3050, 630, -450, 0, -13312, 0, 157, 157, 148, 255 }, // 0x000020F0
	 { 3050, 630, -460, 0, -13312, 256, 107, 106, 96, 255 }, // 0x00002100
	 { 3050, 440, -460, 0, -8448, 256, 107, 106, 96, 255 }, // 0x00002110
};

Vtx_t _HIDAN_room_21_vertices_00002120[4] = 
{
	 { 3050, 630, -270, 0, 10240, -9216, 107, 106, 96, 255 }, // 0x00002120
	 { 3050, 630, -450, 0, 6561, -9216, 107, 106, 96, 255 }, // 0x00002130
	 { 3050, 440, -450, 0, 6561, -5325, 107, 106, 96, 255 }, // 0x00002140
	 { 3050, 440, -270, 0, 10240, -5325, 157, 157, 148, 255 }, // 0x00002150
};

Vtx_t _HIDAN_room_21_vertices_00002160[20] = 
{
	 { 3050, 440, -260, 0, -8192, 0, 157, 157, 148, 255 }, // 0x00002160
	 { 3050, 640, -260, 0, -13312, 0, 157, 157, 148, 255 }, // 0x00002170
	 { 3050, 640, -270, 0, -13312, 256, 107, 106, 96, 255 }, // 0x00002180
	 { 3050, 440, -270, 0, -8192, 256, 107, 106, 96, 255 }, // 0x00002190
	 { 3050, 640, 260, 0, -766, 256, 107, 106, 96, 255 }, // 0x000021A0
	 { 3050, 440, 260, 0, 4354, 256, 107, 106, 96, 255 }, // 0x000021B0
	 { 3050, 440, 270, 0, 4354, 0, 157, 157, 148, 255 }, // 0x000021C0
	 { 3050, 640, 270, 0, -766, 0, 157, 157, 148, 255 }, // 0x000021D0
	 { 3050, 430, 260, 0, 4610, 256, 107, 106, 96, 255 }, // 0x000021E0
	 { 3050, 430, 270, 0, 4610, 0, 157, 157, 148, 255 }, // 0x000021F0
	 { 3050, 130, 260, 0, 12290, 256, 107, 106, 96, 255 }, // 0x00002200
	 { 3050, 120, 270, 0, 12546, 0, 80, 78, 72, 255 }, // 0x00002210
	 { 3050, 430, -260, 0, -7936, 0, 157, 157, 148, 255 }, // 0x00002220
	 { 3050, 430, -270, 0, -7936, 256, 107, 106, 96, 255 }, // 0x00002230
	 { 3050, 130, -260, 0, -256, 0, 157, 157, 148, 255 }, // 0x00002240
	 { 3050, 120, -270, 0, 0, 256, 80, 78, 72, 255 }, // 0x00002250
	 { 3050, 440, -450, 0, -12279, 256, 107, 106, 96, 255 }, // 0x00002260
	 { 3050, 430, -450, 0, -12279, 512, 107, 106, 96, 255 }, // 0x00002270
	 { 3050, 430, -270, 0, -7680, 512, 157, 157, 148, 255 }, // 0x00002280
	 { 3050, 440, -270, 0, -7680, 256, 157, 157, 148, 255 }, // 0x00002290
};

Vtx_t _HIDAN_room_21_vertices_000022A0[4] = 
{
	 { 3050, 430, -450, 0, 6561, -5120, 107, 106, 96, 255 }, // 0x000022A0
	 { 3050, 130, -450, 0, 6561, 1024, 157, 157, 148, 255 }, // 0x000022B0
	 { 3050, 130, -270, 0, 10240, 1024, 157, 157, 148, 255 }, // 0x000022C0
	 { 3050, 430, -270, 0, 10240, -5120, 157, 157, 148, 255 }, // 0x000022D0
};

Vtx_t _HIDAN_room_21_vertices_000022E0[16] = 
{
	 { 3050, 430, -450, 0, -8192, 0, 157, 157, 148, 255 }, // 0x000022E0
	 { 3050, 440, -450, 0, -8448, 0, 157, 157, 148, 255 }, // 0x000022F0
	 { 3050, 440, -460, 0, -8448, 256, 107, 106, 96, 255 }, // 0x00002300
	 { 3050, 430, -460, 0, -8192, 256, 107, 106, 96, 255 }, // 0x00002310
	 { 3050, 130, -450, 0, -512, 0, 157, 157, 148, 255 }, // 0x00002320
	 { 3050, 130, -460, 0, -512, 256, 107, 106, 96, 255 }, // 0x00002330
	 { 3050, 430, 519, 0, -8192, 256, 107, 106, 96, 255 }, // 0x00002340
	 { 3050, 440, 519, 0, -8448, 256, 107, 106, 96, 255 }, // 0x00002350
	 { 3050, 440, 509, 0, -8448, 0, 157, 157, 148, 255 }, // 0x00002360
	 { 3050, 430, 509, 0, -8192, 0, 157, 157, 148, 255 }, // 0x00002370
	 { 3050, 130, 519, 0, -512, 256, 107, 106, 96, 255 }, // 0x00002380
	 { 3050, 130, 509, 0, -512, 0, 157, 157, 148, 255 }, // 0x00002390
	 { 3050, 430, 509, 0, 12250, 512, 157, 157, 148, 255 }, // 0x000023A0
	 { 3050, 440, 509, 0, 12250, 256, 157, 157, 148, 255 }, // 0x000023B0
	 { 3050, 440, 270, 0, 6144, 256, 107, 106, 96, 255 }, // 0x000023C0
	 { 3050, 430, 270, 0, 6144, 512, 107, 106, 96, 255 }, // 0x000023D0
};

Vtx_t _HIDAN_room_21_vertices_000023E0[4] = 
{
	 { 3050, 130, 270, 0, -789, 3072, 157, 157, 148, 255 }, // 0x000023E0
	 { 3050, 130, 509, 0, 4096, 3072, 157, 157, 148, 255 }, // 0x000023F0
	 { 3050, 430, 509, 0, 4096, -3072, 157, 157, 148, 255 }, // 0x00002400
	 { 3050, 430, 270, 0, -789, -3072, 107, 106, 96, 255 }, // 0x00002410
};

Vtx_t _HIDAN_room_21_vertices_00002420[4] = 
{
	 { 3050, 440, -260, 0, -7424, 256, 107, 106, 96, 255 }, // 0x00002420
	 { 3050, 430, -260, 0, -7424, 512, 107, 106, 96, 255 }, // 0x00002430
	 { 3050, 430, 260, 0, 5888, 512, 157, 157, 148, 255 }, // 0x00002440
	 { 3050, 440, 260, 0, 5888, 256, 157, 157, 148, 255 }, // 0x00002450
};

Vtx_t _HIDAN_room_21_vertices_00002460[8] = 
{
	 { 3050, 430, -260, 0, -2867, -2458, 107, 106, 96, 255 }, // 0x00002460
	 { 3050, 130, -260, 0, -2867, 3686, 157, 157, 148, 255 }, // 0x00002470
	 { 3050, 130, -80, 0, 819, 3686, 157, 157, 148, 255 }, // 0x00002480
	 { 3050, 260, -80, 0, 819, 1024, 107, 106, 96, 255 }, // 0x00002490
	 { 3050, 260, 80, 0, 4096, 1024, 107, 106, 96, 255 }, // 0x000024A0
	 { 3050, 130, 80, 0, 4096, 3686, 157, 157, 148, 255 }, // 0x000024B0
	 { 3050, 130, 260, 0, 7782, 3686, 157, 157, 148, 255 }, // 0x000024C0
	 { 3050, 430, 260, 0, 7782, -2458, 157, 157, 148, 255 }, // 0x000024D0
};

Vtx_t _HIDAN_room_21_vertices_000024E0[8] = 
{
	 { 3050, 120, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x000024E0
	 { 3580, 120, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x000024F0
	 { 3050, 640, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002500
	 { 3580, 640, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002510
	 { 3050, 120, 519, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002520
	 { 3580, 120, 519, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002530
	 { 3050, 640, 519, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002540
	 { 3580, 640, 519, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002550
};

Gfx _HIDAN_room_21_dlist_00002560[] =
{
	gsDPPipeSync(), // 0x00002560
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002568
	gsSPVertex(_HIDAN_room_21_vertices_000024E0, 8, 0), // 0x00002570
	gsSPCullDisplayList(0, 7), // 0x00002578
	gsDPPipeSync(), // 0x00002580
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002588
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002590
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002598
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00004478), // 0x000025A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 3, 0, 0, 5, 0), // 0x000025A8
	gsDPLoadSync(), // 0x000025B0
	gsDPLoadBlock(7, 0, 0, 255, 256), // 0x000025B8
	gsDPPipeSync(), // 0x000025C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 3, 0, 0, 5, 0), // 0x000025C8
	gsDPSetTileSize(0, 0, 0, 124, 28), // 0x000025D0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000025D8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000025E0
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x000025E8
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x000025F0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000025F8
	gsSPVertex(_HIDAN_room_21_vertices_00001A40, 32, 0), // 0x00002600
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002608
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002610
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002618
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002620
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002628
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002630
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002638
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002640
	gsSPVertex(_HIDAN_room_21_vertices_00001C40, 16, 0), // 0x00002648
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002650
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002658
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002660
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002668
	gsDPPipeSync(), // 0x00002670
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00005678), // 0x00002678
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002680
	gsDPLoadSync(), // 0x00002688
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002690
	gsDPPipeSync(), // 0x00002698
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000026A0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000026A8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000026B0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000026B8
	gsSPVertex(_HIDAN_room_21_vertices_00001D40, 4, 0), // 0x000026C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000026C8
	gsDPPipeSync(), // 0x000026D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00004478), // 0x000026D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 3, 0, 0, 5, 0), // 0x000026E0
	gsDPLoadSync(), // 0x000026E8
	gsDPLoadBlock(7, 0, 0, 255, 256), // 0x000026F0
	gsDPPipeSync(), // 0x000026F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 3, 0, 0, 5, 0), // 0x00002700
	gsDPSetTileSize(0, 0, 0, 124, 28), // 0x00002708
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002710
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002718
	gsSPVertex(_HIDAN_room_21_vertices_00001D80, 20, 0), // 0x00002720
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002728
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002730
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002738
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002740
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002748
	gsDPPipeSync(), // 0x00002750
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00005678), // 0x00002758
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002760
	gsDPLoadSync(), // 0x00002768
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002770
	gsDPPipeSync(), // 0x00002778
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002780
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002788
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002790
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00002798
	gsSPVertex(_HIDAN_room_21_vertices_00001EC0, 4, 0), // 0x000027A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000027A8
	gsDPPipeSync(), // 0x000027B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00004478), // 0x000027B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 3, 0, 0, 5, 0), // 0x000027C0
	gsDPLoadSync(), // 0x000027C8
	gsDPLoadBlock(7, 0, 0, 255, 256), // 0x000027D0
	gsDPPipeSync(), // 0x000027D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 3, 0, 0, 5, 0), // 0x000027E0
	gsDPSetTileSize(0, 0, 0, 124, 28), // 0x000027E8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000027F0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000027F8
	gsSPVertex(_HIDAN_room_21_vertices_00001F00, 18, 0), // 0x00002800
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002808
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0), // 0x00002810
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00002818
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00002820
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x00002828
	gsDPPipeSync(), // 0x00002830
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00005678), // 0x00002838
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002840
	gsDPLoadSync(), // 0x00002848
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002850
	gsDPPipeSync(), // 0x00002858
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002860
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002868
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002870
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00002878
	gsSPVertex(_HIDAN_room_21_vertices_00002020, 8, 0), // 0x00002880
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002888
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002890
	gsDPPipeSync(), // 0x00002898
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00004478), // 0x000028A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 3, 0, 0, 5, 0), // 0x000028A8
	gsDPLoadSync(), // 0x000028B0
	gsDPLoadBlock(7, 0, 0, 255, 256), // 0x000028B8
	gsDPPipeSync(), // 0x000028C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 3, 0, 0, 5, 0), // 0x000028C8
	gsDPSetTileSize(0, 0, 0, 124, 28), // 0x000028D0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000028D8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000028E0
	gsSPVertex(_HIDAN_room_21_vertices_000020A0, 8, 0), // 0x000028E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000028F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000028F8
	gsDPPipeSync(), // 0x00002900
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00005678), // 0x00002908
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002910
	gsDPLoadSync(), // 0x00002918
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002920
	gsDPPipeSync(), // 0x00002928
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002930
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002938
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002940
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00002948
	gsSPVertex(_HIDAN_room_21_vertices_00002120, 4, 0), // 0x00002950
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002958
	gsDPPipeSync(), // 0x00002960
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00004478), // 0x00002968
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 3, 0, 0, 5, 0), // 0x00002970
	gsDPLoadSync(), // 0x00002978
	gsDPLoadBlock(7, 0, 0, 255, 256), // 0x00002980
	gsDPPipeSync(), // 0x00002988
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 3, 0, 0, 5, 0), // 0x00002990
	gsDPSetTileSize(0, 0, 0, 124, 28), // 0x00002998
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000029A0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000029A8
	gsSPVertex(_HIDAN_room_21_vertices_00002160, 20, 0), // 0x000029B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000029B8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000029C0
	gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0), // 0x000029C8
	gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0), // 0x000029D0
	gsSP2Triangles(12, 0, 3, 0, 12, 3, 13, 0), // 0x000029D8
	gsSP2Triangles(14, 12, 13, 0, 14, 13, 15, 0), // 0x000029E0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000029E8
	gsDPPipeSync(), // 0x000029F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00005678), // 0x000029F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002A00
	gsDPLoadSync(), // 0x00002A08
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002A10
	gsDPPipeSync(), // 0x00002A18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002A20
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002A28
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002A30
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00002A38
	gsSPVertex(_HIDAN_room_21_vertices_000022A0, 4, 0), // 0x00002A40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002A48
	gsDPPipeSync(), // 0x00002A50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00004478), // 0x00002A58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 3, 0, 0, 5, 0), // 0x00002A60
	gsDPLoadSync(), // 0x00002A68
	gsDPLoadBlock(7, 0, 0, 255, 256), // 0x00002A70
	gsDPPipeSync(), // 0x00002A78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 3, 0, 0, 5, 0), // 0x00002A80
	gsDPSetTileSize(0, 0, 0, 124, 28), // 0x00002A88
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002A90
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002A98
	gsSPVertex(_HIDAN_room_21_vertices_000022E0, 16, 0), // 0x00002AA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002AA8
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00002AB0
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00002AB8
	gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0), // 0x00002AC0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002AC8
	gsDPPipeSync(), // 0x00002AD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00005678), // 0x00002AD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002AE0
	gsDPLoadSync(), // 0x00002AE8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002AF0
	gsDPPipeSync(), // 0x00002AF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002B00
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002B08
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002B10
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00002B18
	gsSPVertex(_HIDAN_room_21_vertices_000023E0, 4, 0), // 0x00002B20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002B28
	gsDPPipeSync(), // 0x00002B30
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00004478), // 0x00002B38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 3, 0, 0, 5, 0), // 0x00002B40
	gsDPLoadSync(), // 0x00002B48
	gsDPLoadBlock(7, 0, 0, 255, 256), // 0x00002B50
	gsDPPipeSync(), // 0x00002B58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 3, 0, 0, 5, 0), // 0x00002B60
	gsDPSetTileSize(0, 0, 0, 124, 28), // 0x00002B68
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002B70
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002B78
	gsSPVertex(_HIDAN_room_21_vertices_00002420, 4, 0), // 0x00002B80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002B88
	gsDPPipeSync(), // 0x00002B90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00005678), // 0x00002B98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002BA0
	gsDPLoadSync(), // 0x00002BA8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002BB0
	gsDPPipeSync(), // 0x00002BB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002BC0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002BC8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002BD0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00002BD8
	gsSPVertex(_HIDAN_room_21_vertices_00002460, 8, 0), // 0x00002BE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002BE8
	gsSP2Triangles(0, 3, 4, 0, 4, 5, 6, 0), // 0x00002BF0
	gsSP2Triangles(4, 6, 7, 0, 4, 7, 0, 0), // 0x00002BF8
	gsSPEndDisplayList(), // 0x00002C00
};

Vtx_t _HIDAN_room_21_vertices_00002C08[41] = 
{
	 { 2720, 200, 320, 0, -532, 1270, 107, 106, 96, 255 }, // 0x00002C08
	 { 2720, 200, 50, 0, 20, 1546, 80, 78, 72, 255 }, // 0x00002C18
	 { 2720, 320, 50, 0, 143, 1300, 80, 78, 72, 255 }, // 0x00002C28
	 { 2840, 0, 80, 0, 0, 1024, 255, 53, 53, 255 }, // 0x00002C38
	 { 2840, 0, -80, 0, 1365, 1219, 255, 53, 53, 255 }, // 0x00002C48
	 { 2880, 200, -80, 0, 1365, 473, 80, 78, 72, 255 }, // 0x00002C58
	 { 2880, 200, 80, 0, 0, 278, 80, 78, 72, 255 }, // 0x00002C68
	 { 2720, 320, -50, 0, 348, 1403, 80, 78, 72, 255 }, // 0x00002C78
	 { 2720, 200, -50, 0, 225, 1649, 80, 78, 72, 255 }, // 0x00002C88
	 { 2720, 100, -320, 0, 676, 2130, 107, 106, 96, 255 }, // 0x00002C98
	 { 2720, 800, -320, 0, 1393, 696, 53, 53, 48, 255 }, // 0x00002CA8
	 { 2720, 800, 320, 0, 82, 41, 53, 53, 48, 255 }, // 0x00002CB8
	 { 2940, 0, 520, 0, -3755, 416, 255, 53, 53, 255 }, // 0x00002CC8
	 { 2940, 200, 520, 0, -3755, -301, 107, 106, 96, 255 }, // 0x00002CD8
	 { 2720, 200, 320, 0, 819, 1434, 107, 106, 96, 255 }, // 0x00002CE8
	 { 2720, 800, 320, 0, 1434, 205, 53, 53, 48, 255 }, // 0x00002CF8
	 { 3040, 800, 520, 0, 661, -182, 53, 53, 48, 255 }, // 0x00002D08
	 { 2940, 200, 520, 0, 220, 1134, 107, 106, 96, 255 }, // 0x00002D18
	 { 3580, 800, 440, 0, -190, -607, 53, 53, 48, 255 }, // 0x00002D28
	 { 3580, 120, 440, 0, -887, 786, 53, 53, 48, 255 }, // 0x00002D38
	 { 3040, 120, 520, 0, -36, 1211, 107, 106, 96, 255 }, // 0x00002D48
	 { 3040, 800, -460, 0, 614, -205, 53, 53, 48, 255 }, // 0x00002D58
	 { 3040, 120, -460, 0, -82, 1188, 107, 106, 96, 255 }, // 0x00002D68
	 { 3580, 800, -440, 0, 1721, 349, 53, 53, 48, 255 }, // 0x00002D78
	 { 3580, 120, -440, 0, 1025, 1741, 53, 53, 48, 255 }, // 0x00002D88
	 { 3040, 0, -460, 0, -205, 1434, 255, 53, 53, 255 }, // 0x00002D98
	 { 2900, 0, -460, 0, -491, 1290, 255, 53, 53, 255 }, // 0x00002DA8
	 { 2720, 800, -320, 0, -30, -527, 53, 53, 48, 255 }, // 0x00002DB8
	 { 2720, 100, -320, 0, -747, 907, 107, 106, 96, 255 }, // 0x00002DC8
	 { 3040, 0, 520, 0, -158, 1457, 255, 53, 53, 255 }, // 0x00002DD8
	 { 2940, 0, 520, 0, 15, 1544, 255, 53, 53, 255 }, // 0x00002DE8
	 { 3040, 800, 520, 0, 576, 1933, 53, 53, 48, 255 }, // 0x00002DF8
	 { 2720, 800, 320, 0, -90, 2086, 53, 53, 48, 255 }, // 0x00002E08
	 { 3250, 1000, 60, 0, 256, 1075, 53, 53, 48, 255 }, // 0x00002E18
	 { 3250, 1000, -60, 0, 102, 922, 53, 53, 48, 255 }, // 0x00002E28
	 { 2720, 800, -320, 0, -909, 1267, 53, 53, 48, 255 }, // 0x00002E38
	 { 3040, 800, -460, 0, -678, 678, 53, 53, 48, 255 }, // 0x00002E48
	 { 3580, 800, -440, 0, 38, 13, 53, 53, 48, 255 }, // 0x00002E58
	 { 3370, 1000, -60, 0, 256, 768, 53, 53, 48, 255 }, // 0x00002E68
	 { 3580, 800, 440, 0, 1165, 1139, 53, 53, 48, 255 }, // 0x00002E78
	 { 3370, 1000, 60, 0, 410, 922, 53, 53, 48, 255 }, // 0x00002E88
};

Vtx_t _HIDAN_room_21_vertices_00002E98[4] = 
{
	 { 3040, 0, 520, 0, 5140, -553, 255, 53, 53, 255 }, // 0x00002E98
	 { 3040, 120, 520, 0, 4895, -1290, 107, 106, 96, 255 }, // 0x00002EA8
	 { 3040, 120, -460, 0, -1126, 717, 107, 106, 96, 255 }, // 0x00002EB8
	 { 3040, 0, -460, 0, -881, 1454, 255, 53, 53, 255 }, // 0x00002EC8
};

Vtx_t _HIDAN_room_21_vertices_00002ED8[8] = 
{
	 { 2720, 0, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002ED8
	 { 3580, 0, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002EE8
	 { 2720, 1000, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002EF8
	 { 3580, 1000, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002F08
	 { 2720, 0, 520, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002F18
	 { 3580, 0, 520, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002F28
	 { 2720, 1000, 520, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002F38
	 { 3580, 1000, 520, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002F48
};

Gfx _HIDAN_room_21_dlist_00002F58[] =
{
	gsDPPipeSync(), // 0x00002F58
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002F60
	gsSPVertex(_HIDAN_room_21_vertices_00002ED8, 8, 0), // 0x00002F68
	gsSPCullDisplayList(0, 7), // 0x00002F70
	gsDPPipeSync(), // 0x00002F78
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002F80
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002F88
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002F90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00002F98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002FA0
	gsDPLoadSync(), // 0x00002FA8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002FB0
	gsDPPipeSync(), // 0x00002FB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002FC0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002FC8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002FD0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002FD8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002FE0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002FE8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002FF0
	gsSPVertex(_HIDAN_room_21_vertices_00002C08, 32, 0), // 0x00002FF8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003000
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x00003008
	gsSP2Triangles(2, 7, 10, 0, 2, 10, 11, 0), // 0x00003010
	gsSP2Triangles(0, 2, 11, 0, 7, 9, 10, 0), // 0x00003018
	gsSP2Triangles(6, 12, 3, 0, 6, 13, 12, 0), // 0x00003020
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x00003028
	gsSP2Triangles(18, 19, 16, 0, 19, 20, 16, 0), // 0x00003030
	gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0), // 0x00003038
	gsSP2Triangles(25, 22, 26, 0, 26, 27, 28, 0), // 0x00003040
	gsSP2Triangles(26, 22, 27, 0, 22, 21, 27, 0), // 0x00003048
	gsSP2Triangles(20, 29, 30, 0, 17, 20, 30, 0), // 0x00003050
	gsSP1Triangle(17, 16, 20, 0), // 0x00003058
	gsSPVertex(_HIDAN_room_21_vertices_00002DF8, 10, 0), // 0x00003060
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003068
	gsSP2Triangles(6, 7, 3, 0, 6, 3, 5, 0), // 0x00003070
	gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0), // 0x00003078
	gsSP2Triangles(2, 9, 8, 0, 2, 8, 0, 0), // 0x00003080
	gsSP2Triangles(4, 3, 2, 0, 4, 2, 1, 0), // 0x00003088
	gsDPPipeSync(), // 0x00003090
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00003098
	gsSPVertex(_HIDAN_room_21_vertices_00002E98, 4, 0), // 0x000030A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000030A8
	gsSPEndDisplayList(), // 0x000030B0
};

Vtx_t _HIDAN_room_21_vertices_000030B8[4] = 
{
	 { 2720, 320, 50, 0, 0, -5120, 80, 78, 72, 255 }, // 0x000030B8
	 { 2720, 200, 50, 0, 0, 1024, 80, 78, 72, 255 }, // 0x000030C8
	 { 2720, 300, 30, 0, 1024, -4096, 157, 157, 148, 255 }, // 0x000030D8
	 { 2720, 200, 30, 0, 1024, 1024, 107, 106, 96, 255 }, // 0x000030E8
};

Vtx_t _HIDAN_room_21_vertices_000030F8[8] = 
{
	 { 2720, 200, 30, 0, 1024, 1024, 107, 106, 96, 255 }, // 0x000030F8
	 { 2700, 200, 30, 0, 512, 1024, 107, 106, 96, 255 }, // 0x00003108
	 { 2700, 300, 30, 0, 512, -1536, 107, 106, 96, 255 }, // 0x00003118
	 { 2720, 300, 30, 0, 1024, -1536, 157, 157, 148, 255 }, // 0x00003128
	 { 2720, 200, -30, 0, 0, 1024, 107, 106, 96, 255 }, // 0x00003138
	 { 2700, 200, -30, 0, 512, 1024, 107, 106, 96, 255 }, // 0x00003148
	 { 2700, 200, 30, 0, 512, 2560, 107, 106, 96, 255 }, // 0x00003158
	 { 2720, 200, 30, 0, 0, 2560, 107, 106, 96, 255 }, // 0x00003168
};

Vtx_t _HIDAN_room_21_vertices_00003178[6] = 
{
	 { 2720, 200, -30, 0, 4096, 1024, 107, 106, 96, 255 }, // 0x00003178
	 { 2720, 200, -50, 0, 5120, 1024, 80, 78, 72, 255 }, // 0x00003188
	 { 2720, 300, -30, 0, 4096, -4096, 157, 157, 148, 255 }, // 0x00003198
	 { 2720, 320, -50, 0, 5120, -5120, 80, 78, 72, 255 }, // 0x000031A8
	 { 2720, 320, 50, 0, 0, -5120, 80, 78, 72, 255 }, // 0x000031B8
	 { 2720, 300, 30, 0, 1024, -4096, 157, 157, 148, 255 }, // 0x000031C8
};

Vtx_t _HIDAN_room_21_vertices_000031D8[8] = 
{
	 { 2720, 300, 30, 0, 0, 2560, 157, 157, 148, 255 }, // 0x000031D8
	 { 2700, 300, 30, 0, 512, 2560, 107, 106, 96, 255 }, // 0x000031E8
	 { 2700, 300, -30, 0, 512, 1024, 107, 106, 96, 255 }, // 0x000031F8
	 { 2720, 300, -30, 0, 0, 1024, 157, 157, 148, 255 }, // 0x00003208
	 { 2720, 300, -30, 0, 1024, -1536, 157, 157, 148, 255 }, // 0x00003218
	 { 2700, 300, -30, 0, 512, -1536, 107, 106, 96, 255 }, // 0x00003228
	 { 2720, 200, -30, 0, 1024, 1024, 107, 106, 96, 255 }, // 0x00003238
	 { 2700, 200, -30, 0, 512, 1024, 107, 106, 96, 255 }, // 0x00003248
};

Vtx_t _HIDAN_room_21_vertices_00003258[5] = 
{
	 { 2720, 200, 50, 0, 768, -2048, 80, 78, 72, 255 }, // 0x00003258
	 { 2800, 200, -15, 0, 2432, 0, 157, 157, 148, 255 }, // 0x00003268
	 { 2720, 200, -50, 0, 3328, -2048, 80, 78, 72, 255 }, // 0x00003278
	 { 2880, 200, -80, 0, 4096, 2048, 80, 78, 72, 255 }, // 0x00003288
	 { 2880, 200, 80, 0, 0, 2048, 80, 78, 72, 255 }, // 0x00003298
};

Vtx_t _HIDAN_room_21_vertices_000032A8[3] = 
{
	 { 2780, 100, -260, 0, 2191, 963, 107, 106, 96, 255 }, // 0x000032A8
	 { 2840, 0, -80, 0, 1024, 1024, 255, 53, 53, 255 }, // 0x000032B8
	 { 2900, 0, -200, 0, 1700, 1393, 255, 53, 53, 255 }, // 0x000032C8
};

Vtx_t _HIDAN_room_21_vertices_000032D8[3] = 
{
	 { 2780, 100, -260, 0, 2901, 1123, 107, 106, 96, 255 }, // 0x000032D8
	 { 2880, 200, -80, 0, 1365, 473, 80, 78, 72, 255 }, // 0x000032E8
	 { 2840, 0, -80, 0, 1365, 1219, 255, 53, 53, 255 }, // 0x000032F8
};

Vtx_t _HIDAN_room_21_vertices_00003308[4] = 
{
	 { 2780, 100, -260, 0, 2191, 963, 107, 106, 96, 255 }, // 0x00003308
	 { 2720, 100, -320, 0, 2621, 778, 107, 106, 96, 255 }, // 0x00003318
	 { 2720, 200, -50, 0, 963, 502, 80, 78, 72, 255 }, // 0x00003328
	 { 2880, 200, -80, 0, 983, 1188, 80, 78, 72, 255 }, // 0x00003338
};

Vtx_t _HIDAN_room_21_vertices_00003348[9] = 
{
	 { 2780, 100, -260, 0, 2191, 963, 107, 106, 96, 255 }, // 0x00003348
	 { 2900, 0, -200, 0, 1700, 1393, 255, 53, 53, 255 }, // 0x00003358
	 { 2920, 0, -341, 0, 2544, 1620, 255, 53, 53, 255 }, // 0x00003368
	 { 2900, 0, -460, 0, 3297, 1659, 255, 53, 53, 255 }, // 0x00003378
	 { 2720, 100, -320, 0, 2621, 778, 107, 106, 96, 255 }, // 0x00003388
	 { 2720, 200, 50, 0, 348, 399, 80, 78, 72, 255 }, // 0x00003398
	 { 2720, 200, 320, 0, -1311, 123, 107, 106, 96, 255 }, // 0x000033A8
	 { 2940, 200, 520, 0, -2765, 819, 107, 106, 96, 255 }, // 0x000033B8
	 { 2880, 200, 80, 0, 0, 1024, 80, 78, 72, 255 }, // 0x000033C8
};

Vtx_t _HIDAN_room_21_vertices_000033D8[8] = 
{
	 { 2816, -71, -445, 0, 0, 0, 0, 0, 0, 0 }, // 0x000033D8
	 { 2985, -71, 512, 0, 0, 0, 0, 0, 0, 0 }, // 0x000033E8
	 { 2947, 40, -468, 0, 0, 0, 0, 0, 0, 0 }, // 0x000033F8
	 { 3116, 40, 489, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003408
	 { 2553, 247, -399, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003418
	 { 2722, 247, 558, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003428
	 { 2684, 359, -422, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003438
	 { 2853, 359, 535, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003448
};

Gfx _HIDAN_room_21_dlist_00003458[] =
{
	gsDPPipeSync(), // 0x00003458
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003460
	gsSPVertex(_HIDAN_room_21_vertices_000033D8, 8, 0), // 0x00003468
	gsSPCullDisplayList(0, 7), // 0x00003470
	gsDPPipeSync(), // 0x00003478
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003480
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003488
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003490
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00019DD0), // 0x00003498
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000034A0
	gsDPLoadSync(), // 0x000034A8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000034B0
	gsDPPipeSync(), // 0x000034B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000034C0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000034C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x000034D0
	gsDPTileSync(), // 0x000034D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000034E0
	gsDPLoadSync(), // 0x000034E8
	gsDPLoadTLUTCmd(7, 15), // 0x000034F0
	gsDPPipeSync(), // 0x000034F8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003500
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003508
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003510
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003518
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003520
	gsSPVertex(_HIDAN_room_21_vertices_000030B8, 4, 0), // 0x00003528
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00003530
	gsDPPipeSync(), // 0x00003538
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018BD0), // 0x00003540
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003548
	gsDPLoadSync(), // 0x00003550
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00003558
	gsDPPipeSync(), // 0x00003560
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003568
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003570
	gsSPVertex(_HIDAN_room_21_vertices_000030F8, 8, 0), // 0x00003578
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003580
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003588
	gsDPPipeSync(), // 0x00003590
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00019DD0), // 0x00003598
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000035A0
	gsDPLoadSync(), // 0x000035A8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000035B0
	gsDPPipeSync(), // 0x000035B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000035C0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000035C8
	gsSPVertex(_HIDAN_room_21_vertices_00003178, 6, 0), // 0x000035D0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000035D8
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 2, 0), // 0x000035E0
	gsDPPipeSync(), // 0x000035E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018BD0), // 0x000035F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000035F8
	gsDPLoadSync(), // 0x00003600
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00003608
	gsDPPipeSync(), // 0x00003610
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003618
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003620
	gsSPVertex(_HIDAN_room_21_vertices_000031D8, 8, 0), // 0x00003628
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003630
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00003638
	gsDPPipeSync(), // 0x00003640
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189D0), // 0x00003648
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003650
	gsDPLoadSync(), // 0x00003658
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00003660
	gsDPPipeSync(), // 0x00003668
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003670
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003678
	gsSPVertex(_HIDAN_room_21_vertices_00003258, 5, 0), // 0x00003680
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00003688
	gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0), // 0x00003690
	gsDPPipeSync(), // 0x00003698
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000036A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00004E78), // 0x000036A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000036B0
	gsDPLoadSync(), // 0x000036B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000036C0
	gsDPPipeSync(), // 0x000036C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000036D0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000036D8
	gsSPVertex(_HIDAN_room_21_vertices_000032A8, 3, 0), // 0x000036E0
	gsSP1Triangle(0, 1, 2, 0), // 0x000036E8
	gsDPPipeSync(), // 0x000036F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x000036F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003700
	gsDPLoadSync(), // 0x00003708
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003710
	gsDPPipeSync(), // 0x00003718
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003720
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003728
	gsSPVertex(_HIDAN_room_21_vertices_000032D8, 3, 0), // 0x00003730
	gsSP1Triangle(0, 1, 2, 0), // 0x00003738
	gsDPPipeSync(), // 0x00003740
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00004E78), // 0x00003748
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003750
	gsDPLoadSync(), // 0x00003758
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003760
	gsDPPipeSync(), // 0x00003768
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003770
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003778
	gsSPVertex(_HIDAN_room_21_vertices_00003308, 4, 0), // 0x00003780
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003788
	gsDPPipeSync(), // 0x00003790
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00003798
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000037A0
	gsDPLoadSync(), // 0x000037A8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000037B0
	gsDPPipeSync(), // 0x000037B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000037C0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000037C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00004E78), // 0x000037D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000037D8
	gsDPLoadSync(), // 0x000037E0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000037E8
	gsDPPipeSync(), // 0x000037F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000037F8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003800
	gsSPVertex(_HIDAN_room_21_vertices_00003348, 9, 0), // 0x00003808
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x00003810
	gsSP2Triangles(3, 4, 0, 0, 5, 6, 7, 0), // 0x00003818
	gsSP1Triangle(5, 7, 8, 0), // 0x00003820
	gsSPEndDisplayList(), // 0x00003828
};

Vtx_t _HIDAN_room_21_vertices_00003830[16] = 
{
	 { 3338, 120, 28, 0, 0, 1024, 206, 205, 201, 255 }, // 0x00003830
	 { 3338, 110, 28, 0, 0, 1109, 255, 53, 53, 255 }, // 0x00003840
	 { 3310, 110, 40, 0, 784, 1109, 255, 53, 53, 255 }, // 0x00003850
	 { 3310, 120, 40, 0, 784, 1024, 206, 205, 201, 255 }, // 0x00003860
	 { 3282, 110, 28, 0, 1338, 1109, 255, 53, 53, 255 }, // 0x00003870
	 { 3282, 120, 28, 0, 1338, 1024, 206, 205, 201, 255 }, // 0x00003880
	 { 3270, 110, 0, 0, 1338, 1109, 255, 53, 53, 255 }, // 0x00003890
	 { 3270, 120, 0, 0, 1338, 1024, 206, 205, 201, 255 }, // 0x000038A0
	 { 3282, 110, -28, 0, 784, 1109, 255, 53, 53, 255 }, // 0x000038B0
	 { 3282, 120, -28, 0, 784, 1024, 206, 205, 201, 255 }, // 0x000038C0
	 { 3310, 110, -40, 0, 0, 1109, 255, 53, 53, 255 }, // 0x000038D0
	 { 3310, 120, -40, 0, 0, 1024, 206, 205, 201, 255 }, // 0x000038E0
	 { 3338, 110, -28, 0, -554, 1109, 255, 53, 53, 255 }, // 0x000038F0
	 { 3338, 120, -28, 0, -554, 1024, 206, 205, 201, 255 }, // 0x00003900
	 { 3350, 110, 0, 0, -554, 1109, 255, 53, 53, 255 }, // 0x00003910
	 { 3350, 120, 0, 0, -554, 1024, 206, 205, 201, 255 }, // 0x00003920
};

Vtx_t _HIDAN_room_21_vertices_00003930[20] = 
{
	 { 3250, 120, 60, 0, 776, 1319, 157, 157, 148, 255 }, // 0x00003930
	 { 3270, 120, 0, 0, 614, 1103, 206, 205, 201, 255 }, // 0x00003940
	 { 3250, 120, -60, 0, 291, 995, 157, 157, 148, 255 }, // 0x00003950
	 { 3282, 120, 28, 0, 776, 1148, 206, 205, 201, 255 }, // 0x00003960
	 { 3282, 120, -28, 0, 547, 995, 206, 205, 201, 255 }, // 0x00003970
	 { 3310, 120, -40, 0, 614, 887, 206, 205, 201, 255 }, // 0x00003980
	 { 3338, 120, -28, 0, 776, 843, 206, 205, 201, 255 }, // 0x00003990
	 { 3370, 120, -60, 0, 776, 672, 157, 157, 148, 255 }, // 0x000039A0
	 { 3282, 120, -28, 0, 547, 995, 206, 205, 201, 255 }, // 0x000039B0
	 { 3350, 120, 0, 0, 938, 887, 206, 205, 201, 255 }, // 0x000039C0
	 { 3338, 120, 28, 0, 1005, 995, 206, 205, 201, 255 }, // 0x000039D0
	 { 3370, 120, 60, 0, 1262, 995, 157, 157, 148, 255 }, // 0x000039E0
	 { 3338, 120, -28, 0, 776, 843, 206, 205, 201, 255 }, // 0x000039F0
	 { 3310, 120, 40, 0, 938, 1103, 206, 205, 201, 255 }, // 0x00003A00
	 { 3338, 120, 28, 0, 1005, 995, 206, 205, 201, 255 }, // 0x00003A10
	 { 3282, 120, 28, 0, 776, 1148, 206, 205, 201, 255 }, // 0x00003A20
	 { 3040, 120, 520, 0, 1788, 3127, 107, 106, 96, 255 }, // 0x00003A30
	 { 3040, 120, -460, 0, -2179, 483, 107, 106, 96, 255 }, // 0x00003A40
	 { 3580, 120, 440, 0, 3650, 1454, 53, 53, 48, 255 }, // 0x00003A50
	 { 3580, 120, -440, 0, 88, -921, 53, 53, 48, 255 }, // 0x00003A60
};

Vtx_t _HIDAN_room_21_vertices_00003A70[8] = 
{
	 { 3040, 110, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003A70
	 { 3580, 110, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003A80
	 { 3040, 120, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003A90
	 { 3580, 120, -460, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003AA0
	 { 3040, 110, 520, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003AB0
	 { 3580, 110, 520, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003AC0
	 { 3040, 120, 520, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003AD0
	 { 3580, 120, 520, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003AE0
};

Gfx _HIDAN_room_21_dlist_00003AF0[] =
{
	gsDPPipeSync(), // 0x00003AF0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003AF8
	gsSPVertex(_HIDAN_room_21_vertices_00003A70, 8, 0), // 0x00003B00
	gsSPCullDisplayList(0, 7), // 0x00003B08
	gsDPPipeSync(), // 0x00003B10
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003B18
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003B20
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003B28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00003B30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003B38
	gsDPLoadSync(), // 0x00003B40
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003B48
	gsDPPipeSync(), // 0x00003B50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003B58
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003B60
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003B68
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003B70
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003B78
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003B80
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003B88
	gsSPVertex(_HIDAN_room_21_vertices_00003830, 16, 0), // 0x00003B90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003B98
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0), // 0x00003BA0
	gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0), // 0x00003BA8
	gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0), // 0x00003BB0
	gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0), // 0x00003BB8
	gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0), // 0x00003BC0
	gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0), // 0x00003BC8
	gsSP2Triangles(15, 14, 1, 0, 15, 1, 0, 0), // 0x00003BD0
	gsDPPipeSync(), // 0x00003BD8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_21_tex_00004E78), // 0x00003BE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003BE8
	gsDPLoadSync(), // 0x00003BF0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003BF8
	gsDPPipeSync(), // 0x00003C00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003C08
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003C10
	gsSPVertex(_HIDAN_room_21_vertices_00003930, 20, 0), // 0x00003C18
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00003C20
	gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0), // 0x00003C28
	gsSP2Triangles(2, 8, 5, 0, 2, 5, 7, 0), // 0x00003C30
	gsSP2Triangles(9, 10, 11, 0, 7, 12, 9, 0), // 0x00003C38
	gsSP2Triangles(7, 9, 11, 0, 11, 13, 0, 0), // 0x00003C40
	gsSP2Triangles(11, 14, 13, 0, 13, 15, 0, 0), // 0x00003C48
	gsSP2Triangles(16, 0, 2, 0, 16, 2, 17, 0), // 0x00003C50
	gsSP2Triangles(11, 18, 19, 0, 11, 19, 7, 0), // 0x00003C58
	gsSP2Triangles(16, 18, 11, 0, 16, 11, 0, 0), // 0x00003C60
	gsSP2Triangles(7, 19, 17, 0, 7, 17, 2, 0), // 0x00003C68
	gsSPEndDisplayList(), // 0x00003C70
};

Vtx_t _HIDAN_room_21_vertices_00003C78[14] = 
{
	 { 3090, 2180, -120, 0, 6144, -3072, 59, 53, 42, 255 }, // 0x00003C78
	 { 3090, 2160, -30, 0, 1536, -2048, 145, 134, 109, 255 }, // 0x00003C88
	 { 3090, 2060, -120, 0, 6144, 3072, 59, 53, 42, 255 }, // 0x00003C98
	 { 3090, 2060, -30, 0, 1536, 3072, 59, 53, 42, 255 }, // 0x00003CA8
	 { 3090, 2180, 120, 0, -6144, -3072, 59, 53, 42, 255 }, // 0x00003CB8
	 { 3090, 2160, 30, 0, -1536, -2048, 145, 134, 109, 255 }, // 0x00003CC8
	 { 3090, 2060, -120, 0, -8192, -7168, 59, 53, 42, 255 }, // 0x00003CD8
	 { 3250, 2060, -60, 0, -5120, 1024, 145, 134, 109, 255 }, // 0x00003CE8
	 { 3370, 2060, -60, 0, -5120, 7168, 145, 134, 109, 255 }, // 0x00003CF8
	 { 3370, 2060, -120, 0, -8192, 7168, 102, 92, 76, 255 }, // 0x00003D08
	 { 3090, 2060, 120, 0, 4096, -7168, 59, 53, 42, 255 }, // 0x00003D18
	 { 3250, 2060, 60, 0, 1024, 1024, 145, 134, 109, 255 }, // 0x00003D28
	 { 3370, 2060, 60, 0, 1024, 7168, 145, 134, 109, 255 }, // 0x00003D38
	 { 3370, 2060, 120, 0, 4096, 7168, 102, 92, 76, 255 }, // 0x00003D48
};

Vtx_t _HIDAN_room_21_vertices_00003D58[16] = 
{
	 { 3070, 2160, -30, 0, 512, 1024, 59, 53, 42, 255 }, // 0x00003D58
	 { 3090, 2160, -30, 0, 0, 1024, 145, 134, 109, 255 }, // 0x00003D68
	 { 3090, 2160, 30, 0, 0, 2560, 145, 134, 109, 255 }, // 0x00003D78
	 { 3070, 2160, 30, 0, 512, 2560, 145, 134, 109, 255 }, // 0x00003D88
	 { 3070, 2060, 30, 0, 1536, 1024, 59, 53, 42, 255 }, // 0x00003D98
	 { 3090, 2060, 30, 0, 1536, 1536, 59, 53, 42, 255 }, // 0x00003DA8
	 { 3090, 2060, -30, 0, 0, 1536, 59, 53, 42, 255 }, // 0x00003DB8
	 { 3070, 2060, -30, 0, 0, 1024, 59, 53, 42, 255 }, // 0x00003DC8
	 { 3070, 2160, 30, 0, 512, -1536, 145, 134, 109, 255 }, // 0x00003DD8
	 { 3090, 2160, 30, 0, 1024, -1536, 145, 134, 109, 255 }, // 0x00003DE8
	 { 3090, 2060, 30, 0, 1024, 1024, 59, 53, 42, 255 }, // 0x00003DF8
	 { 3070, 2060, 30, 0, 512, 1024, 59, 53, 42, 255 }, // 0x00003E08
	 { 3070, 2060, -30, 0, 512, 1024, 59, 53, 42, 255 }, // 0x00003E18
	 { 3090, 2060, -30, 0, 1024, 1024, 59, 53, 42, 255 }, // 0x00003E28
	 { 3090, 2160, -30, 0, 1024, -1536, 145, 134, 109, 255 }, // 0x00003E38
	 { 3070, 2160, -30, 0, 512, -1536, 59, 53, 42, 255 }, // 0x00003E48
};

Vtx_t _HIDAN_room_21_vertices_00003E58[18] = 
{
	 { 3090, 2160, 30, 0, -1536, -2048, 145, 134, 109, 255 }, // 0x00003E58
	 { 3090, 2060, 120, 0, -6144, 3072, 59, 53, 42, 255 }, // 0x00003E68
	 { 3090, 2060, 30, 0, -1536, 3072, 59, 53, 42, 255 }, // 0x00003E78
	 { 3090, 2180, 120, 0, -6144, -3072, 59, 53, 42, 255 }, // 0x00003E88
	 { 3090, 2180, -120, 0, -5120, 10240, 59, 53, 42, 255 }, // 0x00003E98
	 { 3370, 2180, -120, 0, -5120, -4096, 59, 53, 42, 255 }, // 0x00003EA8
	 { 3370, 2180, 120, 0, 7168, -4096, 59, 53, 42, 255 }, // 0x00003EB8
	 { 3090, 2180, 120, 0, 7168, 10240, 59, 53, 42, 255 }, // 0x00003EC8
	 { 3370, 2060, -120, 0, 6144, 3072, 102, 92, 76, 255 }, // 0x00003ED8
	 { 3370, 2060, 120, 0, -6144, 3072, 102, 92, 76, 255 }, // 0x00003EE8
	 { 3370, 2180, 120, 0, -6144, -3072, 59, 53, 42, 255 }, // 0x00003EF8
	 { 3370, 2180, -120, 0, 6144, -3072, 59, 53, 42, 255 }, // 0x00003F08
	 { 3090, 2060, 120, 0, 8192, 3072, 59, 53, 42, 255 }, // 0x00003F18
	 { 3090, 2180, 120, 0, 8192, -3072, 59, 53, 42, 255 }, // 0x00003F28
	 { 3090, 2060, -120, 0, 8192, 3072, 59, 53, 42, 255 }, // 0x00003F38
	 { 3370, 2060, -120, 0, -6144, 3072, 102, 92, 76, 255 }, // 0x00003F48
	 { 3370, 2180, -120, 0, -6144, -3072, 59, 53, 42, 255 }, // 0x00003F58
	 { 3090, 2180, -120, 0, 8192, -3072, 59, 53, 42, 255 }, // 0x00003F68
};

Vtx_t _HIDAN_room_21_vertices_00003F78[8] = 
{
	 { 3070, 2060, -120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003F78
	 { 3370, 2060, -120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003F88
	 { 3070, 2180, -120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003F98
	 { 3370, 2180, -120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003FA8
	 { 3070, 2060, 120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003FB8
	 { 3370, 2060, 120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003FC8
	 { 3070, 2180, 120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003FD8
	 { 3370, 2180, 120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003FE8
};

Gfx _HIDAN_room_21_dlist_00003FF8[] =
{
	gsDPPipeSync(), // 0x00003FF8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004000
	gsSPVertex(_HIDAN_room_21_vertices_00003F78, 8, 0), // 0x00004008
	gsSPCullDisplayList(0, 7), // 0x00004010
	gsDPPipeSync(), // 0x00004018
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004020
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004028
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004030
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00019DD0), // 0x00004038
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004040
	gsDPLoadSync(), // 0x00004048
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00004050
	gsDPPipeSync(), // 0x00004058
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004060
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004068
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00004070
	gsDPTileSync(), // 0x00004078
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004080
	gsDPLoadSync(), // 0x00004088
	gsDPLoadTLUTCmd(7, 15), // 0x00004090
	gsDPPipeSync(), // 0x00004098
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000040A0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000040A8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000040B0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000040B8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000040C0
	gsSPVertex(_HIDAN_room_21_vertices_00003C78, 14, 0), // 0x000040C8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000040D0
	gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0), // 0x000040D8
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x000040E0
	gsSP2Triangles(7, 6, 10, 0, 7, 10, 11, 0), // 0x000040E8
	gsSP2Triangles(12, 11, 10, 0, 12, 10, 13, 0), // 0x000040F0
	gsDPPipeSync(), // 0x000040F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018BD0), // 0x00004100
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004108
	gsDPLoadSync(), // 0x00004110
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00004118
	gsDPPipeSync(), // 0x00004120
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004128
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004130
	gsSPVertex(_HIDAN_room_21_vertices_00003D58, 16, 0), // 0x00004138
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004140
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004148
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004150
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00004158
	gsDPPipeSync(), // 0x00004160
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00019DD0), // 0x00004168
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004170
	gsDPLoadSync(), // 0x00004178
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00004180
	gsDPPipeSync(), // 0x00004188
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004190
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004198
	gsSPVertex(_HIDAN_room_21_vertices_00003E58, 18, 0), // 0x000041A0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000041A8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000041B0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000041B8
	gsSP2Triangles(9, 12, 13, 0, 9, 13, 10, 0), // 0x000041C0
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x000041C8
	gsSPEndDisplayList(), // 0x000041D0
};

Vtx_t _HIDAN_room_21_vertices_000041D8[15] = 
{
	 { 3250, 1000, -60, 0, 819, 2662, 145, 134, 109, 255 }, // 0x000041D8
	 { 3250, 2060, -60, 0, 819, -3891, 59, 53, 42, 255 }, // 0x000041E8
	 { 3250, 2060, 60, 0, 0, -3891, 59, 53, 42, 255 }, // 0x000041F8
	 { 3250, 1000, 60, 0, 0, 2662, 145, 134, 109, 255 }, // 0x00004208
	 { 3250, 1000, 60, 0, 819, -10445, 145, 134, 109, 255 }, // 0x00004218
	 { 3250, 2060, 60, 0, 819, -3891, 59, 53, 42, 255 }, // 0x00004228
	 { 3370, 2060, 60, 0, 0, -3891, 59, 53, 42, 255 }, // 0x00004238
	 { 3370, 1000, 60, 0, 0, -10445, 145, 134, 109, 255 }, // 0x00004248
	 { 3370, 1000, 60, 0, 0, 2662, 145, 134, 109, 255 }, // 0x00004258
	 { 3370, 2060, 60, 0, 0, -3891, 59, 53, 42, 255 }, // 0x00004268
	 { 3370, 2060, -60, 0, 819, -3891, 59, 53, 42, 255 }, // 0x00004278
	 { 3370, 1000, -60, 0, 819, 2662, 145, 134, 109, 255 }, // 0x00004288
	 { 3370, 1000, -60, 0, 0, -10445, 145, 134, 109, 255 }, // 0x00004298
	 { 3370, 2060, -60, 0, 0, -3891, 59, 53, 42, 255 }, // 0x000042A8
	 { 3250, 1000, -60, 0, 819, -10445, 145, 134, 109, 255 }, // 0x000042B8
};

Vtx_t _HIDAN_room_21_vertices_000042C8[8] = 
{
	 { 3250, 1000, -60, 0, 0, 0, 0, 0, 0, 0 }, // 0x000042C8
	 { 3370, 1000, -60, 0, 0, 0, 0, 0, 0, 0 }, // 0x000042D8
	 { 3250, 2060, -60, 0, 0, 0, 0, 0, 0, 0 }, // 0x000042E8
	 { 3370, 2060, -60, 0, 0, 0, 0, 0, 0, 0 }, // 0x000042F8
	 { 3250, 1000, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004308
	 { 3370, 1000, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004318
	 { 3250, 2060, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004328
	 { 3370, 2060, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004338
};

Gfx _HIDAN_room_21_dlist_00004348[] =
{
	gsDPPipeSync(), // 0x00004348
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004350
	gsSPVertex(_HIDAN_room_21_vertices_000042C8, 8, 0), // 0x00004358
	gsSPCullDisplayList(0, 7), // 0x00004360
	gsDPPipeSync(), // 0x00004368
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004370
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004378
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004380
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00004388
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004390
	gsDPLoadSync(), // 0x00004398
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000043A0
	gsDPPipeSync(), // 0x000043A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000043B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000043B8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000043C0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000043C8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000043D0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000043D8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000043E0
	gsSPVertex(_HIDAN_room_21_vertices_000041D8, 15, 0), // 0x000043E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000043F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000043F8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004400
	gsSP2Triangles(12, 13, 1, 0, 12, 1, 14, 0), // 0x00004408
	gsSPEndDisplayList(), // 0x00004410
};

static u8 unaccounted4418[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x30, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0xE8, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x08, 0x38, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x25, 0x60, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2F, 0x58, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x34, 0x58, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3A, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3F, 0xF8, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x43, 0x48, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _HIDAN_room_21_tex_00004478[] = 
{
	0x31CB31CB31CB31C9, 0x29C931CB31CB3A0D, 0x3A0D3A0D31CB31CB, 0x31CB320D3A0D320D,  // 0x00004478 
	0x39CB39CB320D3A0D, 0x31CB31CB31CB31CB, 0x320D3A0D320D39CB, 0x39CB320D320D320D,  // 0x00004498 
	0x424D3A4D424D424F, 0x424F424D3A4D424F, 0x3A4D3A4D3A4D3A4D, 0x424D424F424F424D,  // 0x000044B8 
	0x3A4D424D424F3A4D, 0x3A4D3A4D3A4D424D, 0x424F424F424D3A4D, 0x424D424F424F424D,  // 0x000044D8 
	0x328F3A0B29CB2187, 0x318929C93A0D31CD, 0x3A0D3A0D3A4D3A0B, 0x29CB2187318929C9,  // 0x000044F8 
	0x3A0D424F3A4D3A0D, 0x3A4D3A4D3A0B29CB, 0x2187318929C93A0D, 0x424F3A4D324D324D,  // 0x00004518 
	0x324D31CB19853A0D, 0x73DB52D33A0D320D, 0x3A4D3A4D3A0B31CB, 0x19853A0D73DB52D3,  // 0x00004538 
	0x3A0D424D3A4D3A4D, 0x3A4D3A0B31CB1985, 0x3A0D73DB52D33A0D, 0x424D3A4D324D324F,  // 0x00004558 
	0x2A0D29CB19854A51, 0xB5AB6357420D320D, 0x424F320F320B31CB, 0x19854A51B5AB6357,  // 0x00004578 
	0x420D320B320B3A0D, 0x324D320B31CB1985, 0x4A51B5AB6357420D, 0x320B320B320B324D,  // 0x00004598 
	0x21CB21CB29892947, 0x294939CD3A0D320B, 0x3A4F3A4F3A0D31CB, 0x29C929472947420D,  // 0x000045B8 
	0x420D31CB29CB320D, 0x320D3A0D31CB29C9, 0x29472947420D420D, 0x31CB29CB2A0D29CB,  // 0x000045D8 
	0x1989298939CB31CB, 0x41CD418D39CD3A0D, 0x4A914AD14AD1424F, 0x420D31CB41CD418D,  // 0x000045F8 
	0x39CD31CB29CB320D, 0x3A4F52D1424F420D, 0x31CB41CD418D39CD, 0x31CB29CB21CB21CB,  // 0x00004618 
	0x2989298929892989, 0x2989298929892989, 0x2989298929892989, 0x2989298929892989,  // 0x00004638 
	0x2989298929892989, 0x2989298929892989, 0x2989298929892989, 0x2989298929892989,  // 0x00004658 
};

u64 _HIDAN_room_21_tex_00004678[] = 
{
	0xACDFBDE17BD562CF, 0x6B118C1520C51083, 0x084308434A0DAD21, 0xDE6B62D321072105,  // 0x00004678 
	0x18C518C35A8F941B, 0x945B8C5B73958C19, 0xAD1FD6A518831083, 0x4A0D7353E6A3A4DF,  // 0x00004698 
	0x8BD9B51DC5E1A499, 0xBD5D628D29071883, 0x1083084320C52907, 0x2105188510830843,  // 0x000046B8 
	0x084118C583D9AD21, 0x6B1339CB528F6311, 0x9C9BA4DB20C53147, 0x520BA4DFD625945B,  // 0x000046D8 
	0xA4DF6B1173939C99, 0xC59F49C941892105, 0x18C5084108430843, 0x0843108308430001,  // 0x000046F8 
	0x000118C58C1B7355, 0x108329474A4D6B53, 0x73D55ACF210562CF, 0x628FD625BD618C19,  // 0x00004718 
	0xFF6D62CF630F7BD5, 0x520B524B524D2907, 0x18C5108310832949, 0x41CB398B290720C5,  // 0x00004738 
	0x1885398B8C1B5AD1, 0x1083108339C97393, 0x6B93214510835A4D, 0x6B11941B945BFFFB,  // 0x00004758 
	0x9C9B6B13524D420B, 0x5A4F5A9139893149, 0x398B39894A0D7B97, 0x9C9FAD25AD218BD9,  // 0x00004778 
	0x524D5A8F6B155A91, 0x188318C55B118457, 0x7C17214518C34189, 0x6AD16B13CE29FFFD,  // 0x00004798 
	0xA4DF83D95ACF5AD1, 0x73554A0F2105398B, 0x41CB4A0D524D8C19, 0xC5E7A4E383DB6B13,  // 0x000047B8 
	0x4A0B4A0F41CD2947, 0x29475AD1949B8C99, 0x6B93294718C520C5, 0x7B97FF75F773EF77,  // 0x000047D8 
	0x10834A0D6B537355, 0x525141CD188341C9, 0x528F5A914A4D4A4D, 0x8C5B739941CD39CB,  // 0x000047F8 
	0x520B188300012107, 0x5AD16B9573D57BD5, 0x4A4D290718833989, 0x7357FFF9FFFF3101,  // 0x00004818 
	0x21054A0D7B996315, 0x6B1741CD4A0D7B95, 0x83D97357420B420B, 0x5AD16B5531493989,  // 0x00004838 
	0x4A4D108308410001, 0x528F8459424D18C5, 0x1083420F420F2105, 0x5A8FD669E7310001,  // 0x00004858 
	0x62D35AD183DB5A93, 0x62D562D36313945B, 0xB5237B97528D424B, 0x4A0D8C1B63156B17,  // 0x00004878 
	0x524D210508410001, 0x5291420D21471085, 0x1083739D739B1883, 0x524D000100014A0F,  // 0x00004898 
	0x5AD11083108320C5, 0x314731894A4D5AD1, 0xA4E3A4E35ACF2987, 0x10854A0F5AD55293,  // 0x000048B8 
	0x210718C510410841, 0x420D31893189949F, 0x7B997BDB83DB20C5, 0x3189000100015AD1,  // 0x000048D8 
	0x52CF108318C320C5, 0x29472907420B4A4B, 0x94A1AD674A4D3189, 0x18C5398B21071885,  // 0x000048F8 
	0x0843084108412947, 0x18C529474A8D9CDF, 0x5AD341CD318B3189, 0x314741CB31895ACF,  // 0x00004918 
	0x63131083188339CB, 0x31894A4F4A4D4A4B, 0x5AD37399524F3189, 0x2107398B18C52107,  // 0x00004938 
	0x210721074A0D3189, 0x2947420B4A8D841D, 0x5251294931493189, 0x314918C562D58419,  // 0x00004958 
	0x4A4D18C320C53187, 0x39C973997BD9420B, 0x631383DB4A4D3189, 0x398B398B18852907,  // 0x00004978 
	0x6B158C1B528F39CB, 0x3989420B5AD1424D, 0x18C52947C627AD21, 0x29472105B565841B,  // 0x00004998 
	0x6313294721053187, 0x3187841F7BDB420B, 0x528DB563528D4A8D, 0x524F398B10832907,  // 0x000049B8 
	0x6B138C195A91420B, 0x29475ACF63533A0B, 0x3189524F9CA19C9F, 0x4A4D4A4B7BD77BD9,  // 0x000049D8 
	0x7359314721052947, 0x294720C729473189, 0x528FCE2952CF528D, 0x5ACF39CB08432105,  // 0x000049F8 
	0x39895A8D73934A0D, 0x42096B536B554A8F, 0x3189528F6B134A4D, 0x39C93A096B117BDB,  // 0x00004A18 
	0x7B9D294539CB3187, 0x29472107420B420B, 0x7B97BDA573956311, 0x631118C520C53149,  // 0x00004A38 
	0x524D7B9373534A4D, 0x62CF8C597395420B, 0x528F4A4D29473187, 0x3A0931872947739B,  // 0x00004A58 
	0x8C1F2907398B398B, 0x29475293528D52CF, 0x949B5ACF6B556313, 0x420D000120C5420D,  // 0x00004A78 
	0x420B739373536311, 0x5ACF8C597BD93189, 0x4A0D4A0D398939C9, 0x39C929475291AD69,  // 0x00004A98 
	0x529318C5420B4A0D, 0x21076B5931873187, 0x6B534A8B63159CDF, 0x7355000120C7420D,  // 0x00004AB8 
	0x41CB524D29053189, 0x6B518C5984194A4D, 0x08410841318739C9, 0x3147210573979CA1,  // 0x00004AD8 
	0x08434A118C1B4A0F, 0x4A0FBDA9524D0001, 0x52CD4A4B39CBAD21, 0x7B99084121072907,  // 0x00004AF8 
	0x18C518C320C52907, 0x39893189420D39CB, 0x18C5318963136B13, 0x4A0F7355524F1883,  // 0x00004B18 
	0x08437399CE2B8C1B, 0x8C1D9C9D41CB2105, 0x5B0F5B0F7BD7B563, 0x83D91083294718C5,  // 0x00004B38 
	0x0841084331892947, 0x2105108310833189, 0x6B15735583D98C1B, 0x524F7355524F1043,  // 0x00004B58 
	0x20C5AD23E6EFB523, 0xA49F7B554A0D524D, 0x5ACD7BD5CDE5C5A5, 0x6B5520C518C53149,  // 0x00004B78 
	0x294908414A0D2947, 0x0843108318C55291, 0xB5636B554A4D7355, 0x7B577B9783974A0D,  // 0x00004B98 
	0x7353BDA5CE296AD1, 0x290562D173115A8D, 0x7B939C99A4DD945B, 0x7B993189108339CB,  // 0x00004BB8 
	0x41CD084131893189, 0x108321054A8D6B11, 0x4A4B42092907524F, 0x83D9ACE1BD63A49D,  // 0x00004BD8 
	0x73536B116B116B13, 0x6291290529073989, 0x83D5A4DB6B535251, 0x5A915A9141CB41CB,  // 0x00004BF8 
	0x20C518C510852947, 0x18C52947528F6B11, 0x4A0B39C929053947, 0x4A0B83D9CE29C5A5,  // 0x00004C18 
	0x62CF524D41C983D9, 0x7B5720C529053989, 0x73535A8F420D41CD, 0x62D37357420D62D1,  // 0x00004C38 
	0x6311314929492949, 0x2147318939C9528D, 0x39C9290562D36B13, 0x41C941C98C199C5D,  // 0x00004C58 
	0x6AD16AD183D58395, 0x524F20C521052907, 0x318929472107398B, 0x4A0D39CB41CB7357,  // 0x00004C78 
	0xAD2163155291318B, 0x420B39C918C539C9, 0x420B398762D36AD3, 0x4A0B5A8D9C5D9C9D,  // 0x00004C98 
	0xACDDAD1D6AD13989, 0x31473147290720C5, 0x2107318921071885, 0x2947294941CD6B15,  // 0x00004CB8 
	0xACDFA4DF83D96311, 0x4A4D39C929474209, 0x6311524D31473987, 0x5A8D7B539C5B945B,  // 0x00004CD8 
	0x8BD75A8F29072907, 0x49CB290708431083, 0x4A0D7B9539CB1085, 0x318B5A915A9383D9,  // 0x00004CF8 
	0x9499949B528F7BD5, 0x6B13294931874A4D, 0x7395528F210583D7, 0xACDFACDFBD63A4DF,  // 0x00004D18 
	0x6AD14A0B29073147, 0x41C91883108318C5, 0x29075A8D62D13149, 0x52515A9383D99C9F,  // 0x00004D38 
	0x9C9B9C993989420B, 0x735541CD21053187, 0x739752932107B563, 0xC5E7B561A4DFB51F,  // 0x00004D58 
	0x62CF524D29073149, 0x6AD1520D5A4F49CB, 0x20C539894A0B2947, 0x524F7B99BD65945D,  // 0x00004D78 
	0x945B7353398B2107, 0x39CB420D18C52105, 0x6B97529318C57B97, 0xACDF9417AC9B9C59,  // 0x00004D98 
	0x4A0B6AD141CB5A8F, 0xC5A16ACF4A0B3147, 0x3147290729072907, 0x941BCDE7B523A4E1,  // 0x00004DB8 
	0x528F318910830843, 0x39CB41CB294731C9, 0x52CF3A0B39CF5293, 0x524D7B5383955A8F,  // 0x00004DD8 
	0x4A0B735339C941CB, 0xACDB4A0B18C318C3, 0x4189520D31473149, 0xAD21945D420D318B,  // 0x00004DF8 
	0x08410843108339C9, 0x62D3398B29073A09, 0x31C94ACF4A514A11, 0x6B15945B73577357,  // 0x00004E18 
	0x73517311420B4A0B, 0x735162CF18831083, 0x210531474A0D945D, 0xC5A5945D21070001,  // 0x00004E38 
	0x08411083290762CF, 0x73555291420B39C9, 0x52CF6BD510831083, 0x7357945B945B7B97,  // 0x00004E58 
};

u64 _HIDAN_room_21_tex_00004E78[] = 
{
	0x51C95A0B520B5A0B, 0x6A4D6A8D624D4147, 0x288528C5208528C5, 0x6A8F624D624D728D,  // 0x00004E78 
	0x6A8D5A4B6A4D4989, 0x51CB59CB20852885, 0x4107498951C951CB, 0x624D5A4B5A0B624D,  // 0x00004E98 
	0x728D5A4B39474989, 0x624B624B6A8D5A0B, 0x624D6A4D83113907, 0x39075A0B624B6A8D,  // 0x00004EB8 
	0x6A8D72CD7ACF728D, 0x6A8D5A0B5A0B51C9, 0x2885184339473107, 0x310741496A4D72CD,  // 0x00004ED8 
	0x5A0B5A0B51C951C9, 0x728D5A0B51895A0B, 0x624D49C949895189, 0x308551C95A0B51CB,  // 0x00004EF8 
	0x6A4D6A8D728D5A0B, 0x5A0B4189390751CB, 0x624D390749894949, 0x4147624B51C951CB,  // 0x00004F18 
	0x4189418949895A0B, 0x4107624D728D624D, 0x4989498941493947, 0x394749898311728D,  // 0x00004F38 
	0x5A0B51CB49C94989, 0x5A0B72CD83535A0B, 0x51C9728D8311830F, 0x7B1151C951CB4989,  // 0x00004F58 
	0x51C96A4D5A0B624D, 0x51CB310751C951CB, 0x4147498951CB51C9, 0x624D8311835328C5,  // 0x00004F78 
	0x394751CB498949C9, 0x624D72CD7ACF7AD1, 0x6ACF28C541077AD1, 0x83535A0B5A0B5A4D,  // 0x00004F98 
	0x8353624D624D7AD1, 0x6A8F51C9414730C5, 0x204320C528C520C5, 0x204349C97B0F7ACF,  // 0x00004FB8 
	0x108520C520434189, 0x49C9624D7B118355, 0x72CF728D835349C9, 0x288538C78B5593D7,  // 0x00004FD8 
	0x939772CF39072085, 0x41896AD16AD18395, 0x7ACF59CB6A4D6A8F, 0x628F5A4D418951C9,  // 0x00004FF8 
	0x51CB6A8F520B5A0B, 0x1843728F51CB5A0B, 0x7B117B116A4D624D, 0x7B13628D20857B13,  // 0x00005018 
	0x1085418972D1620B, 0x51C930C741895A0B, 0x5A0B414951CB72D1, 0x6A8F6A8F6A8F5A0B,  // 0x00005038 
	0x5A0B5A0B418959CB, 0x49892905520B3907, 0x49C95A0B624D6A8F, 0x72D16A8F10851843,  // 0x00005058 
	0x9417498951C972D1, 0x6A91624D624D6A4D, 0x6A8F620B624B4989, 0x3107394749C951C9,  // 0x00005078 
	0x624D620B72CF6A8F, 0x498928C520853947, 0x4189414749C951C9, 0x39472085624D72D1,  // 0x00005098 
	0x93D78B95628D4989, 0x6A4D6A8D6A8D6A8F, 0x72CD7ACF8353728D, 0x390759CB51CB5189,  // 0x000050B8 
	0x620B624B624B624D, 0x6A4D5A0B51CB3907, 0x51C9624D39471843, 0x5A0B7B135A4D6A8F,  // 0x000050D8 
	0x628D7ACF8B955A4B, 0x835183117B117B11, 0x624D72CF7B11624B, 0x498928C520851843,  // 0x000050F8 
	0x41475A0B620B620B, 0x728D83517B1183D7, 0x728D5A0B5A4D51CB, 0x3107390751C9520B,  // 0x00005118 
	0x51C96A8F6ACF624B, 0x8B937B0F7ACF7ACF, 0x6A8D624B624B72CF, 0x8B95728D30C751CB,  // 0x00005138 
	0x4147208539075A0B, 0x6A8D830F6A8D7B11, 0x5A0B49C9394728C5, 0x3947418749894189,  // 0x00005158 
	0x20C5208551CB5A0B, 0x51C972CF72CD628D, 0x4189624D5A0B5A4B, 0x628D728D624B728D,  // 0x00005178 
	0x59CB624B498951C9, 0x5A0B8353624D4189, 0x39474187394751C9, 0x5A0B5A0D51C94147,  // 0x00005198 
	0x28C5208539473107, 0x3107520B624B72CD, 0x6A8D5A0B51C93107, 0x51C9520B72CF8B53,  // 0x000051B8 
	0x7ACF830F5A0B4989, 0x51C96A8F6A8D51C9, 0x4989394751C95A0B, 0x628D49C949C94189,  // 0x000051D8 
	0x624D5A0B5A0B49C9, 0x28C5310749896A8D, 0x624D28C510854989, 0x6A8F6A8F624B628F,  // 0x000051F8 
	0x5A0B310731073107, 0x51CB49C951CB49C9, 0x49CB3947418951C9, 0x520B624B5A0B72CD,  // 0x00005218 
	0x72CF8B537ACF624D, 0x28C55A0B6A8F72CF, 0x72CF520B20C54147, 0x6AD1628F6A8F6A8F,  // 0x00005238 
	0x6A8F8313498951CB, 0x51C97B116A8D5A0B, 0x30C5310739473947, 0x394749898311A457,  // 0x00005258 
	0x414959CB59CB30C7, 0x6A4D8311624B728D, 0x6A8D6A4D5A4D2085, 0x5A0B72D15A0B4989,  // 0x00005278 
	0x6A8D7B1172CF6A8D, 0x6A4D7ACF72CD72CD, 0x624D5A4D41893947, 0x51CB624D624D1085,  // 0x00005298 
	0x8B95939593938351, 0x4989624D7ACF7B0F, 0x83117B136A8F5A0D, 0x41893947728F7B11,  // 0x000052B8 
	0x624D59CB620B6A8D, 0x624B6A8F72CF7B11, 0x7B116A8D624D6A91, 0x624D520920858311,  // 0x000052D8 
	0x5A0B624D6A4D6A4D, 0x7B11728D7B0F7B11, 0x624B6A8F5A0B624D, 0x72CF7ACF728F4989,  // 0x000052F8 
	0x6A4D7AD16A8D51CB, 0x6A4D6A4D6A8D72CF, 0x624B620B624D728D, 0x30C741496A4D4147,  // 0x00005318 
	0x51CB5A0B624D4149, 0x6A8D6A8D5A0B72CF, 0x72D15A4B418949C9, 0x51CB51C949897B13,  // 0x00005338 
	0x31075A0B6A8F5A0B, 0x5A0B624D5A0B51C9, 0x5A0B5A0B28C53085, 0x620D8B537B11628F,  // 0x00005358 
	0x5A0B3107414972D3, 0x520B41895A0B624D, 0x624D628D620B5A0B, 0x418728C55A0B624D,  // 0x00005378 
	0x6A8F41495A0B51C9, 0x51C951CB51C951CB, 0x41896A4D624D51C9, 0x624D5A0B620B5A0B,  // 0x00005398 
	0x830F8355624B3947, 0x5A0B6A8F5A0D51C9, 0x51CB624D728D624B, 0x3947624D51C95A0D,  // 0x000053B8 
	0x4989310741473947, 0x49C9498951CB4989, 0x6A8D520B5A0B51CB, 0x5A0B72CF83518B95,  // 0x000053D8 
	0x8B9372CF8B536ACD, 0x6A8D7B536ACF628F, 0x6ACF7B53628D6A8D, 0x83956AD15A4B4189,  // 0x000053F8 
	0x624B72CF51C93107, 0x310749C95A0B624B, 0x6A8D5A4D51CB4189, 0x51C972CF83538B93,  // 0x00005418 
	0x7B117ACF72CD6A8D, 0x5A0B59CB620B5A0B, 0x5A0B72CF83514989, 0x4149390749C9520B,  // 0x00005438 
	0x6AD15A4B28C55A0B, 0x520928C528C52905, 0x31475A0B5A0D4189, 0x7B137B13839793D9,  // 0x00005458 
	0x4149728D5A4B4189, 0x6ACF72CF7B0F8BD7, 0x6A8D6A4D6A8F5A0B, 0x49895A0D51CB51CB,  // 0x00005478 
	0x51CB520B28C55A4D, 0x51CB520B5A0B8397, 0x7B116A4D39072885, 0x30C75A0B6A8F72CD,  // 0x00005498 
	0x7B537B5573137B13, 0x6A8D6A8D5A4B1085, 0x2085394739473907, 0x414741894187624D,  // 0x000054B8 
	0x498949C928C551C9, 0x624D5A4D49896A8F, 0x83956A8D6A4D51C9, 0x4989628D6A8D5A0B,  // 0x000054D8 
	0x394751CB5A0B8311, 0x8B953147208551CB, 0x5A0B5A0B6A8F624D, 0x4989624B73117B51,  // 0x000054F8 
	0x72CD7B0FA4598B93, 0x6A4D728F49C94189, 0x731372CF8B936A8D, 0x49C95A4D51C928C5,  // 0x00005518 
	0x3947624F6A8D4989, 0x394751C95A4D5A0B, 0x624D5A4D5A4D5A0B, 0x72CF8B937B0F8B93,  // 0x00005538 
	0x6A8D830F8B51A459, 0x9BD39393939551C9, 0x4949624B624D7B11, 0x3107418949C93105,  // 0x00005558 
	0x51CB624D520B3947, 0x51C96A8F7B536ACF, 0x628F5A4B628D49C9, 0x28C5390741894989,  // 0x00005578 
	0x7B0F830F72CF8351, 0x93D5A41993D57ACF, 0x8B97620B5A0D51C9, 0x5A4F314718433105,  // 0x00005598 
	0x2885184328C551CB, 0x51C9624D6A8D624D, 0x72CF72CF7B115A4B, 0x5A0B7B117B0F830F,  // 0x000055B8 
	0x72CD72CF83537B0F, 0x49C97ACF39472885, 0x41893147208528C5, 0x30C551CB520B28C5,  // 0x000055D8 
	0x7B0F72CD10854189, 0x3907310739474989, 0x6A8F6ACD41895A4B, 0x624D624B6A8D624B,  // 0x000055F8 
	0x5A0B31076A4D59CB, 0x728D624B624D7B11, 0x728D72CF6A8D5A0B, 0x5A4B628D6A8D6A8D,  // 0x00005618 
	0x6A8D5A0B418949C9, 0x49C9394731074147, 0x3947310741C94189, 0x5A0B624D624D5A4B,  // 0x00005638 
	0x624D3907624D8B53, 0x7B535A0B624D6A8D, 0x624D624B51CB5A0B, 0x51CB624D624D830F,  // 0x00005658 
};

u64 _HIDAN_room_21_tex_00005678[] = 
{
	0x18C618C618C618C6, 0x18C620C6398D41CD, 0x629562D5314A18C6, 0x18C618C618C618C6,  // 0x00005678 
	0x18C618C618C618C6, 0x18C6314A8BDDCE31, 0xB569941F4A0E20C6, 0x18C618C618C618C6,  // 0x00005698 
	0x18C618C618C618C6, 0x29084A0F6295314A, 0x4A0E7B9B6AD52948, 0x18C618C618C618C6,  // 0x000056B8 
	0x18C618C618C618C6, 0x2908398B521049CE, 0x41CE6AD473175210, 0x210818C618C618C6,  // 0x000056D8 
	0x18C618C618C6314A, 0x5A534A0E314A18C6, 0x20C6398C6AD75250, 0x290818C618C618C6,  // 0x000056F8 
	0x18C618C620C6314A, 0x394B290820C618C6, 0x18C6290852507B5B, 0x5A5220C618C618C6,  // 0x00005718 
	0x18C620C641CC62D5, 0x5A52290818C618C6, 0x18C618C6294841CF, 0x41CE210818C618C6,  // 0x00005738 
	0x18C620C6314A398D, 0x290818C618C618C6, 0x18C618C620C65210, 0x6295398D20C620C6,  // 0x00005758 
	0x2908525073595250, 0x290818C618C618C6, 0x18C618C618C62908, 0x41CD394A20C620C6,  // 0x00005778 
	0x20C6314A314B20C6, 0x18C618C618C618C6, 0x18C618C618C620C6, 0x2908314B398D4A0E,  // 0x00005798 
	0x6AD78C1D62D42108, 0x18C618C618C618C6, 0x18C618C618C618C6, 0x290849CF41CF49CF,  // 0x000057B8 
	0x4A115211398C20C6, 0x18C618C618C618C6, 0x18C618C618C618C6, 0x18C6398C6AD5839B,  // 0x000057D8 
	0x62D4A4A3839B2908, 0x18C618C618C618C6, 0x18C618C618C620C6, 0x52108B9D6AD45A52,  // 0x000057F8 
	0x5A526AD473174A10, 0x20C618C618C618C6, 0x18C618C618C620C6, 0x49CE73175A92398C,  // 0x00005818 
	0x210862D49CA36B17, 0x294818C618C618C6, 0x18C618C621086AD4, 0xB5299C6241CC20C6,  // 0x00005838 
	0x20C629085A537B19, 0x41CC18C618C618C6, 0x18C618C620C649CE, 0x7B596294290818C6,  // 0x00005858 
	0x18C6210862D49461, 0x7316290818C618C6, 0x18C621087316B569, 0x9C6041CC18C618C6,  // 0x00005878 
	0x18C618C621085211, 0x5211290818C618C6, 0x18C620C6398C5A53, 0x4A1020C818C618C6,  // 0x00005898 
	0x18C618C620C65A52, 0x8B9D5250290820C6, 0x20C652509C217B5A, 0x314A18C618C618C6,  // 0x000058B8 
	0x18C618C618C620C8, 0x398D418D290820C6, 0x2908418C41CF314A, 0x20C618C618C618C6,  // 0x000058D8 
	0x18C618C618C620C6, 0x418C52115A535211, 0x4A0F629552502908, 0x18C618C618C618C6,  // 0x000058F8 
	0x18C618C618C618C6, 0x20C649CF62956AD7, 0x7B596295314A18C6, 0x18C618C618C618C6,  // 0x00005918 
	0x18C618C618C618C6, 0x290841CF5A536295, 0x6295731952512106, 0x18C618C618C618C6,  // 0x00005938 
	0x18C618C618C618C6, 0x314A7B199C639C21, 0xA4A59C216AD52908, 0x18C618C618C618C6,  // 0x00005958 
	0x18C618C620C641CE, 0x6293418C210820C6, 0x290852506B175251, 0x290818C618C618C6,  // 0x00005978 
	0x18C618C618C6314A, 0x629573194A0E2908, 0x398A629493DF6295, 0x290818C618C618C6,  // 0x00005998 
	0x18C621085A53835B, 0x5A5220C618C618C6, 0x18C620C6398A5A93, 0x4A11290818C618C6,  // 0x000059B8 
	0x18C618C6314A6295, 0x6295314A18C618C6, 0x18C6210852106295, 0x49CF290818C618C6,  // 0x000059D8 
	0x2908629594216AD6, 0x290818C618C618C6, 0x18C618C618C6314A, 0x4A0F49CE290820C6,  // 0x000059F8 
	0x18C620C641CF4A11, 0x290818C618C618C6, 0x18C618C618C62908, 0x49CF41CF29082106,  // 0x00005A18 
	0x6AD5839B62942908, 0x18C618C618C618C6, 0x18C618C618C618C6, 0x20C8398D4A115213,  // 0x00005A38 
	0x398D2909290920C6, 0x18C618C618C618C6, 0x18C618C618C618C6, 0x2108398D52116AD6,  // 0x00005A58 
	0x62D57B594A0E20C6, 0x18C618C618C618C6, 0x18C618C618C618C6, 0x18C6314B6A97731B,  // 0x00005A78 
	0x6A955A53314A18C6, 0x18C618C618C618C6, 0x18C618C618C618C6, 0x20C6398C6295835B,  // 0x00005A98 
	0x294862D58BDD5A52, 0x20C618C618C618C6, 0x18C618C618C620C6, 0x314B49CE41CE314A,  // 0x00005AB8 
	0x398C7318731941CC, 0x20C618C618C618C6, 0x18C618C618C62106, 0x5A5273194A10314A,  // 0x00005AD8 
	0x18C6294873599C61, 0x62D4210818C618C6, 0x18C618C620C6398D, 0x521041CE20C618C6,  // 0x00005AF8 
	0x18C6314A6AD67B19, 0x4A0F290818C618C6, 0x18C618C621066294, 0x9C617316290818C6,  // 0x00005B18 
	0x18C618C629487319, 0xA4A362D4210818C6, 0x18C6290841CF49CE, 0x314A20C618C618C6,  // 0x00005B38 
	0x18C618C629084A0E, 0x62956295314A18C6, 0x18C621064A0E941F, 0x839A314A18C618C6,  // 0x00005B58 
	0x18C618C618C62908, 0x5A93629541CC314A, 0x398C521149CE2908, 0x18C618C618C618C6,  // 0x00005B78 
	0x18C618C618C620C6, 0x398A62955A5341CE, 0x4A0E49CE4A0F5A52, 0x314A18C618C618C6,  // 0x00005B98 
	0x18C618C618C618C6, 0x20C6318B62D5941F, 0x8BDD6294290818C6, 0x18C618C618C618C6,  // 0x00005BB8 
	0x18C618C618C618C6, 0x18C6314A5A538B9D, 0xA4A37317398A20C6, 0x18C618C618C618C6,  // 0x00005BD8 
	0x18C618C618C618C6, 0x20C641CD5A936B17, 0x5A9341CF210618C6, 0x18C618C618C618C6,  // 0x00005BF8 
	0x18C618C618C618C6, 0x21082909398D5251, 0x62D552514A0F314A, 0x20C618C618C618C6,  // 0x00005C18 
	0x18C618C618C62908, 0x52515A92314A20C6, 0x20C620C629092908, 0x20C618C618C618C6,  // 0x00005C38 
	0x18C618C618C62108, 0x398D290820C620C6, 0x20C620C6398C41CF, 0x394A20C618C618C6,  // 0x00005C58 
	0x18C618C6314A5A53, 0x6AD4398A18C618C6, 0x18C618C620C62909, 0x290820C618C618C6,  // 0x00005C78 
	0x18C618C62909314B, 0x398A20C618C618C6, 0x18C618C618C62908, 0x418D41CD294820C6,  // 0x00005C98 
	0x20C6398C6AD55A52, 0x314A18C618C618C6, 0x18C618C618C620C6, 0x2109210820C62908,  // 0x00005CB8 
	0x2908418D4A0F314A, 0x20C618C618C618C6, 0x18C618C618C618C6, 0x20C6394B49CF49CE,  // 0x00005CD8 
	0x398D62D55A522908, 0x18C618C618C618C6, 0x18C618C618C618C6, 0x20C6314B41CD835B,  // 0x00005CF8 
	0x94217B5B49CE20C6, 0x18C618C618C618C6, 0x18C618C618C618C6, 0x18C620C64A0F6B17,  // 0x00005D18 
	0x398C6AD75A9220C6, 0x18C618C618C618C6, 0x18C618C618C62108, 0x4A0F49CF41CD7B19,  // 0x00005D38 
	0xA4A5941F41CE20C6, 0x18C618C618C618C6, 0x18C618C618C618C6, 0x20C6398D5A935A52,  // 0x00005D58 
	0x20C652507B595250, 0x20C618C618C618C6, 0x18C618C6294862D5, 0x6B17398A20C62908,  // 0x00005D78 
	0x49CE835A839B5A53, 0x290818C618C618C6, 0x18C618C618C620C6, 0x41CF6AD74A0E2106,  // 0x00005D98 
	0x18C6290862D4941F, 0x6AD5294818C618C6, 0x18C6398A7B59839B, 0x41CE18C618C618C6,  // 0x00005DB8 
	0x18C629485A928BDD, 0x7B59398C20C618C6, 0x18C618C629084A11, 0x62935250210618C6,  // 0x00005DD8 
	0x18C618C629487358, 0xA4E58BDD4A0E318A, 0x5250941F941E4A0E, 0x18C618C618C618C6,  // 0x00005DF8 
	0x18C618C621065210, 0x941EA4A37316314A, 0x20C629085A536AD7, 0x398C20C618C618C6,  // 0x00005E18 
	0x18C618C618C62908, 0x6B16B568A4A3941F, 0xC5EFB5684A0E18C6, 0x18C618C618C618C6,  // 0x00005E38 
	0x18C618C618C618C6, 0x398C941EBDAD941F, 0x62D5629562D5398C, 0x18C618C618C618C6,  // 0x00005E58 
};

u64 _HIDAN_room_21_tex_00005E78[] = 
{
	0x930783057B497A43, 0x72857AC772856A01, 0x8285830369C18347, 0xA40983477B457A83,  // 0x00005E78 
	0x83479B0593098B89, 0x8BCDA34982859B8F, 0x8B87838561C36285, 0x82437A877AC75A03,  // 0x00005E98 
	0x8B857A837AC7938B, 0x5A4351836A4571C5, 0x720382835A457245, 0x830793458B477B43,  // 0x00005EB8 
	0x72C77AC57AC38B89, 0x82C772837AC39349, 0x9387938973055A05, 0x6A856A4383075983,  // 0x00005ED8 
	0x834782C393498B49, 0x6A0151C372838B49, 0x6A8582C769C37A85, 0x7AC9834982C57B03,  // 0x00005EF8 
	0x82C77B4593059B8D, 0x8B8D7B0592C78B05, 0x8B8B8B078B877245, 0x6A859307CD5B5A03,  // 0x00005F18 
	0x7A877AC57A876A43, 0x61C382057A457283, 0x8AC58B0762018305, 0x834782C78AC98347,  // 0x00005F38 
	0x83077AC38A859B4B, 0x934D7B0582C39387, 0x8B09930B93897AC7, 0x72838285D59F59C3,  // 0x00005F58 
	0x8AC57AC372456243, 0x72457AC3620359C1, 0x724382876A018B07, 0x8B878B0B7A8782C3,  // 0x00005F78 
	0x93098AC78AC5A3D1, 0x9C0D8AC582859389, 0x930B82C97A83A38F, 0x93497A839B8F6A43,  // 0x00005F98 
	0x8B057A877A457B07, 0x7A87628369C361C3, 0x7AC78A8572018307, 0x8B07838992C58B45,  // 0x00005FB8 
	0x93458AC77B09ABCB, 0x93CD72C573099349, 0x838B930772839BC9, 0x9309624782435A03,  // 0x00005FD8 
	0x8B0972C782C77305, 0x72056A456A037245, 0x7B478B8562057B09, 0x9B4983859B8993C5,  // 0x00005FF8 
	0x9B098AC58B87AC0F, 0xAC0D93897AC7830B, 0x83859BC97B038AC9, 0x7A8772C57A856A03,  // 0x00006018 
	0x93496A456A476205, 0x6A036A4579C38A45, 0x8B0993897245AC0B, 0x9C0D83078B87A387,  // 0x00006038 
	0x93C78B09938BA40D, 0xA3C9934973478B49, 0x8307938993077B05, 0x8B0B938D8B0969C1,  // 0x00006058 
	0x9B8B6A8562037203, 0x72C56A4369C18347, 0x8B4983079389B497, 0xABCF8345934B8389,  // 0x00006078 
	0x934B83859389A3CD, 0xA40D934982C99B49, 0x8BC7A38F8BCB8B0B, 0x83478B8BAC516203,  // 0x00006098 
	0x940F72856A8559C5, 0x6A837A457A85AC0F, 0x938F83479C4FC55B, 0xB48D8B07938B930B,  // 0x000060B8 
	0xA3C99BCDA38DA44D, 0xA3CDA491AC11AC4D, 0x938B9BCFA38FA409, 0x938B92CBBD1359C1,  // 0x000060D8 
	0x9C0D830582C77A45, 0x72C59389A387A48F, 0xA40F9B47ABCDC557, 0xB48F9B47A3CD9B89,  // 0x000060F8 
	0x9BCF9C0BAC91B493, 0xB40FB4CFB497ACCF, 0xA38BAC4F9BC9938F, 0x8B49938BAC5169C3,  // 0x00006118 
	0xA3898B037AC751C1, 0x7245938D6A83A4CF, 0xAC139387A44DACD5, 0x9B8B8B479BCD9B47,  // 0x00006138 
	0xA40FA40FA451BCD1, 0xA451AC4FB4D7BC91, 0x8B89A40F8B079C0F, 0x938F8B8DC5135A03,  // 0x00006158 
	0x934B92C78B4D7205, 0x72C783478B07A44F, 0xB44D9B8D9347BCD5, 0x9C518B099BC78B05,  // 0x00006178 
	0xA40FABD3AC51A491, 0xAC4FBD1BC557B517, 0x934BA44B7285A411, 0xA3D1A3CFCE1D59C1,  // 0x00006198 
	0x9389A38BAC517A45, 0x93899BCB8307C4CD, 0xC4D5AC4D8B4BC55B, 0xB4539349A3D17AC9,  // 0x000061B8 
	0xA3CBB495BD539C4D, 0xBCD9D59FC559AC8F, 0x9B8BAC136A49938B, 0x9B8FAC91ACD16A05,  // 0x000061D8 
	0xC513B4498B8B82C7, 0x8B89B455A3CBB3D1, 0xA41193CB93C9AD0F, 0xDE23ACD18B85AC4B,  // 0x000061F8 
	0xC559C4D5CD19B44D, 0xA40FAC93D5DDE6ED, 0xDE63CDD9C553C59D, 0xB4518A8793457285,  // 0x00006218 
	0x7AC57AC582C54941, 0x620382455A415981, 0x61C3718182416A45, 0x6AC371C172436A03,  // 0x00006238 
	0x61C3624162416A87, 0x72476A477A83A38B, 0x82437AC372037A87, 0x628351C159C36A07,  // 0x00006258 
	0x9C4BA40D9B89940B, 0x9C11A44FA3498B87, 0x9C0BA40DA44FAC8D, 0xA491A3CDB44B6A43,  // 0x00006278 
	0x8AC793498B079B49, 0x830B7B477243A40F, 0x93099B457AC7B451, 0xAC0D7AC769C372C9,  // 0x00006298 
	0x938BAC0B83478B8B, 0x9BD18B8B83859B05, 0x8B49A3C99C0F9C4D, 0xB4519B47AC8B6241,  // 0x000062B8 
	0x72C37A4569C16A45, 0x6A4572435A038347, 0x8AC5938572C393C9, 0x8AC769C159C38309,  // 0x000062D8 
	0x9BCB8B8B940FABCD, 0xAC4F8B458B878BC7, 0x93C99C0993CB9B8F, 0xB44BA3CBAC116205,  // 0x000062F8 
	0x8307828572058A87, 0x82C7724583077283, 0x82C58AC78B4DA40F, 0x828559C38A879389,  // 0x00006318 
	0xA40FA44B9B89A40B, 0x9C118B099B879BC9, 0x9B87A3899BC9A3CD, 0xB40D9B4B9B8B6205,  // 0x00006338 
	0x728572C96AC572C7, 0x73077AC562C38287, 0x8A8782C7830993CB, 0x72875A0372878387,  // 0x00006358 
	0xA411A40993057AC5, 0xA3CD8B899B878BC7, 0xA38BA38DA48FA3CF, 0xA3D1AC4B93C96245,  // 0x00006378 
	0x72C7730772458309, 0x93498B4751C35A01, 0x93457B076A877AC7, 0x6A8559C362039307,  // 0x00006398 
	0xB44D9BCF8AC782C9, 0xA3D18B0B93479407, 0xAC0B93C7A44FAC4F, 0xA3D3A411AC0F6A05,  // 0x000063B8 
	0x9347930B8AC58B4B, 0x9BC992C55A4559C3, 0x72C782C56A059349, 0x8AC97A8372459B87,  // 0x000063D8 
	0x9C0BA3D193CB9389, 0xB40B93858B899B89, 0x94098B87A40BABCF, 0xA3D193C9B4917205,  // 0x000063F8 
	0x8307930B8B038AC9, 0x92C79B078ACB6245, 0x72C58B077A479C0D, 0x9B4D8B0382879B07,  // 0x00006418 
	0xAC0BA40DAC0D93CD, 0x9BCB8AC383498B4D, 0x93898B8DA3CBA40D, 0xA409A38FA44B7245,  // 0x00006438 
	0x72C59B4993058283, 0x6A438A838B4972C3, 0x82898B457A8772C5, 0x9B47A3478A838B47,  // 0x00006458 
	0x9B8DA451AC0F9C0B, 0xAC4B6AC58B47A389, 0x9B058B87ABD1B451, 0xAC4DAC53C5177285,  // 0x00006478 
	0x934DA45393CD6A03, 0x7A43720362456A03, 0x83099BCB93898289, 0x7AC77B0772839B49,  // 0x00006498 
	0xAC4FB493A40B9C4F, 0xBCD39B8BA389B3D1, 0xA38D8BCDAC51A44F, 0xB40DBD11DE1D82C5,  // 0x000064B8 
	0x8345A3CD8B055A05, 0x5A03720372C772C3, 0x9B87A3CBA3CB8345, 0x7A43724162038307,  // 0x000064D8 
	0xA40F9BCB8B498B07, 0xB497A40F9B4DA451, 0xA40B9B8BB413C4D3, 0xBC8DB44DC5117A45,  // 0x000064F8 
	0x8B479C4F72C55183, 0x620561C372477283, 0x9B47A3C78AC982C5, 0x730572C562058B09,  // 0x00006518 
	0xAC0DAC49940B7245, 0xACD1B451940DBC91, 0x938D9B49ABD1C559, 0xACCFABCB938D7283,  // 0x00006538 
	0x7A89AC0F8B455A43, 0x7A877A85830382C5, 0x9305830B8B877247, 0x8B058B456AC3934B,  // 0x00006558 
	0xBD0FB44B94096A85, 0xB48FB4919C09BC97, 0x8B8993CDAC0DC559, 0xABCDACCFA34B6AC3,  // 0x00006578 
	0x9B49BC939C0F6287, 0x7B098B07AC49ABCD, 0x9C099B498BC78AC7, 0x93058B895A458B8B,  // 0x00006598 
	0xAC4D93058B8D7B05, 0xC553B48FA3C9C55B, 0x93CDA40BA3CBBD9D, 0xA411C4DBA44D72C7,  // 0x000065B8 
	0x8B8DC5599BC98B8D, 0x9BCD9BCFB40FBC93, 0xB413A44D93CD7B0B, 0x7AC582C37285A40F,  // 0x000065D8 
	0xC513A3CB8B8D93CD, 0xCD99DE65CD9DA40B, 0xB44FB4D7BC97B4D5, 0xBD57C557AC0F8287,  // 0x000065F8 
	0xD621D5DDB4118B0D, 0xCD9FDDE1AC4D934D, 0x9389CD59B411834B, 0x9347B40FA413AC53,  // 0x00006618 
	0x51834101490149C1, 0x59C1698569C36A03, 0x6243724382C79B09, 0x934D93477AC36285,  // 0x00006638 
	0x5981514172455A03, 0x620149C141815183, 0x69C161C129014941, 0x49015141410159C1,  // 0x00006658 
};

u64 _HIDAN_room_21_tex_00006678[] = 
{
	0x1337717102178AA8, 0x8AAAAA8759770117, 0x7110719018AAAAA8, 0x8AA8710217177394,  // 0x00006678 
	0x1770101100078831, 0x00AAA11001133333, 0x33333170011AAA00, 0x1888A02039010754,  // 0x00006698 
	0x191178880017A7A8, 0x71A812917373378A, 0xA87333771921A817, 0x3777710088331124,  // 0x000066B8 
	0x033333131331117A, 0x720A7A7777311773, 0x3717137777A7A02A, 0xA710733131333306,  // 0x000066D8 
	0x3101113388811117, 0x8110177119773387, 0x3887179117719918, 0x7111338833111122,  // 0x000066F8 
	0x333303888888B833, 0xA1011900337338B8, 0x8B83333310910013, 0x3388888B88300104,  // 0x00006718 
	0x4424422219000915, 0x5222512444222522, 0x2252246464524464, 0x22444442CC301146,  // 0x00006738 
	0x522022421199558A, 0x9202555522250244, 0x4422222445224242, 0x512444226C303102,  // 0x00006758 
	0x5220090009999155, 0x5555552255022000, 0x5222222224427377, 0x4283A14464831122,  // 0x00006778 
	0x900009009911111A, 0x152524420199999B, 0xB1003752466CC605, 0x2662924444333302,  // 0x00006798 
	0x1025171011100055, 0x002204445AA09299, 0x20024D854644C004, 0x26C0042442831022,  // 0x000067B8 
	0x9910130330000000, 0x0338304019170239, 0x0009568044426B34, 0x26C1244444317392,  // 0x000067D8 
	0x9792BB03B72B3401, 0x0DB23B14B0012130, 0x2001940300246B12, 0x2CE3042224833194,  // 0x000067F8 
	0x40043304DA5DD100, 0x63100B32B100CB02, 0x2000046B91126312, 0x446BA5524231112C,  // 0x00006818 
	0x0024B054B5283014, 0x03102B72D3129B00, 0x0101004B1992CB04, 0x24C3526224111104,  // 0x00006838 
	0x01433094D04B3004, 0xB0024D32D3320B33, 0x1110004B3114CB02, 0x2CC3144522313124,  // 0x00006858 
	0xAA2B3314B10B3334, 0xD3144D85DB353B33, 0x1313B32BBA14CB00, 0x02CB054442371192,  // 0x00006878 
	0x11203196302DB312, 0x3B302B39DD85BB9B, 0xBBBBD857D194CBB0, 0x046B324442100924,  // 0x00006898 
	0x3102D874B10BB330, 0x2B302B30DB39DB34, 0xB725D721B9926B10, 0x026B322445DA7924,  // 0x000068B8 
	0x0332DB14B30BB833, 0x4DB12B31D332DB14, 0x00023045D3924B32, 0x046B025022117704,  // 0x000068D8 
	0x11000B32DB0BB133, 0x00B00B85DB12DB39, 0x83110029D1126B30, 0x046B109155319024,  // 0x000068F8 
	0x33100D35D81DB333, 0x10D10D30B302BB33, 0x3333006337194B30, 0x026B399555810104,  // 0x00006918 
	0x00143B09D30BB310, 0x0BB02B14B8304D31, 0x3111394B00144B30, 0x24CB00211431002C,  // 0x00006938 
	0x1310D305DB0DB333, 0x1D304B34B3332D03, 0x3013306B0004CB30, 0x044B395152311104,  // 0x00006958 
	0x1024B302D803B312, 0x4B312D3213315DB1, 0x1137120B01A54B30, 0x046B359522333324,  // 0x00006978 
	0x1050100293951375, 0x01312002070102B1, 0x137022B122246B32, 0x5268022444111124,  // 0x00006998 
	0x1001313383313133, 0x110101007833198B, 0x783319B122046310, 0x226B055522333124,  // 0x000069B8 
	0x1111113178311110, 0x7300110091A77359, 0x88B5499520024BB0, 0x2223355222311194,  // 0x000069D8 
	0x1900011119000011, 0x1100000000111755, 0x24229525226440B3, 0x3240314242331102,  // 0x000069F8 
	0x2200002904219000, 0x0900020091192222, 0x4464599206CCCCCC, 0xCCCCC6C446311026,  // 0x00006A18 
	0x2020222200209110, 0x1124222525552424, 0x4242225424444452, 0x222446646C101104,  // 0x00006A38 
	0x6444642244444242, 0x5122222242444644, 0x6464444444444422, 0x466CCCCC6C04024C,  // 0x00006A58 
};

u64 _HIDAN_room_21_tex_00006A78[] = 
{
	0x1045208339453987, 0x28C3418551C949C7, 0x30C3414349C7624B, 0x5A8B4145310328C3,  // 0x00006A78 
	0x5A07730D51C551C7, 0x624772878B0DA3D1, 0xBCD3AC53B453AC11, 0xAC119B4D8AC78A87,  // 0x00006A98 
	0x0843184131433103, 0x28C3394349C74987, 0x30C3414549C55A09, 0x628B49C730C11881,  // 0x00006AB8 
	0x414372CD5A0772CB, 0x6A8772878B4DAC51, 0xC4D3AC13B493AC53, 0xAC11930B82858A87,  // 0x00006AD8 
	0x08431881394328C1, 0x2081390341454985, 0x3081414541854985, 0x5A4951C728C11041,  // 0x00006AF8 
	0x30C151C559C57B0D, 0x6A877287938DB451, 0xC515A411B4D5B493, 0xABD18ACB7A4392C9,  // 0x00006B18 
	0x0843184139432081, 0x1881310341454185, 0x28C1394339433103, 0x520951C520811841,  // 0x00006B38 
	0x2081520949838B8F, 0x6A476A87A38DBCD3, 0xCD55A411BCD5BCD5, 0xAC118ACD72038AC9,  // 0x00006B58 
	0x08431841394320C3, 0x104128C149C73943, 0x28C13943310328C3, 0x52074183208128C1,  // 0x00006B78 
	0x208352073901730D, 0x30C36A499BCFC515, 0xCD57AC53B495C4D5, 0xAC1182CD72039309,  // 0x00006B98 
	0x084328C341853103, 0x1041314549C53945, 0x31014983418528C3, 0x5207394320412081,  // 0x00006BB8 
	0x310351C530C15209, 0x390372C99BCFC515, 0xCD57B495B493C515, 0xA3D1828D71C39309,  // 0x00006BD8 
	0x0843184131013103, 0x20814187520949C7, 0x3103520752093103, 0x49C53901208128C1,  // 0x00006BF8 
	0x3901498330C14145, 0x41037B0B9BCFCD15, 0xCD57B495B493C515, 0xA3D17A8D71C18AC7,  // 0x00006C18 
	0x0843208152094185, 0x204149C76ACF49C7, 0x3101520752493903, 0x49C5394320413143,  // 0x00006C38 
	0x30C149C739434145, 0x3103938B9BCFBCD3, 0xCD57B495B493C515, 0xA3D17A8B69818A87,  // 0x00006C58 
	0x084320C152094985, 0x28815A8D6AD15207, 0x30C152095A494143, 0x49C749C728813943,  // 0x00006C78 
	0x41435A495A095A07, 0x31039B8BA3CFBCD3, 0xCD57B493B493CD15, 0xA3D17A4B61819B07,  // 0x00006C98 
	0x0843188152094985, 0x310362CD51C951C5, 0x38C152095A4B4985, 0x51C5520930C13101,  // 0x00006CB8 
	0x4983520752096A89, 0x2083934B9BCFBC93, 0xCD99BC95B493CD15, 0xA3D17A4B59019B47,  // 0x00006CD8 
	0x08432903520949C5, 0x51C76ACF498551C5, 0x3101628B5A4B3903, 0x4985418528C33943,  // 0x00006CF8 
	0x3903498549C57B0B, 0x39056249A40FB451, 0xCD57B493AC51C4D3, 0xA3CF72496181A349,  // 0x00006D18 
	0x1083394549C749C7, 0x49C7524949C751C5, 0x3941628D6ACF30C1, 0x5207390330C33943,  // 0x00006D38 
	0x30C152073943830B, 0x51C73903934BAC51, 0xC513B491A40FBC8F, 0x9BCD720969819B47,  // 0x00006D58 
	0x0843290541C549C7, 0x49C75209310151C5, 0x410352095A4930C1, 0x4183394331034185,  // 0x00006D78 
	0x30C1418341436A89, 0x6A8D394382CBAC4F, 0xC513AC0F9B8DB44D, 0x934B69C769C192C7,  // 0x00006D98 
	0x0843188139414985, 0x5207520741434983, 0x390149C5520728C1, 0x4983418339033945,  // 0x00006DB8 
	0x28C1498349835187, 0x6A8D310382CBAC4F, 0xC513934D82C9A3CB, 0x8AC9618761818A87,  // 0x00006DD8 
	0x10431041310151C7, 0x62CD524939013901, 0x31015A495A4930C1, 0x4143414330C33943,  // 0x00006DF8 
	0x30C1414341434185, 0x7B0F5A0783098B0D, 0xCD1582CB93499349, 0x8289618759419287,  // 0x00006E18 
	0x1043080128815A09, 0x5A4B524928C13901, 0x51C549C549C528C1, 0x3901498530C33945,  // 0x00006E38 
	0x28C1390149854185, 0x83936A499B8D830D, 0xBCD382CB9B8B9309, 0x82C971C759418A87,  // 0x00006E58 
	0x0843000128C15A49, 0x4A07418520813943, 0x51C34185628F3945, 0x3901418541434185,  // 0x00006E78 
	0x3945390149855A05, 0x83935A07AC51938F, 0xB44F934DA3CB9309, 0xABC9B3C969C38A87,  // 0x00006E98 
	0x1043000128C35A07, 0x52073943188130C1, 0x30C141435A494183, 0x310349C749853101,  // 0x00006EB8 
	0x4183310349C751C7, 0x5A0B49C5B493A411, 0xCD559B8F8B4B8AC9, 0xAC0BBC4D72037A45,  // 0x00006ED8 
	0x1083000120814185, 0x49C7418328814187, 0x4143390149C53943, 0x28C15A07394528C1,  // 0x00006EF8 
	0x394328C15A074185, 0x49895A07B493B495, 0xD597AC118B0B7209, 0xB40BBC4D7A436141,  // 0x00006F18 
	0x1883000118815209, 0x524B310318414187, 0x5A4930C139013101, 0x208151C531032081,  // 0x00006F38 
	0x3101208151C54145, 0x49875207B493B495, 0xD597B4918B0B7A49, 0xABCBB40B9B076141,  // 0x00006F58 
	0x39451041104149C5, 0x41853103184149C9, 0x5A49498549873103, 0x28C351C529032081,  // 0x00006F78 
	0x310328C351C53943, 0x49875A49BC95BCD5, 0xD599C5138B0D8ACB, 0xAC0BB40B93075941,  // 0x00006F98 
	0x3105100110415207, 0x5209208128C349C7, 0x5A47620941853101, 0x310349C528C128C3,  // 0x00006FB8 
	0x3101310349C54185, 0x51C76A89BCD5BD15, 0xD597B49382CB934B, 0xB40BB40B93075901,  // 0x00006FD8 
	0x20C5080120815A4B, 0x4A09188139455A49, 0x520751C552074183, 0x390349C528813103,  // 0x00006FF8 
	0x4183390349C551C5, 0x41456249B493B455, 0xCD57AC519B4F9B4D, 0xB44DAC099B476981,  // 0x00007018 
	0x2905100118815A4B, 0x418528C131035A4B, 0x414341436A8D5209, 0x4185310330C13901,  // 0x00007038 
	0x5209418539035A07, 0x418562499B91AC13, 0xBD17B4939B4F9B8D, 0xB44DA389A34769C1,  // 0x00007058 
	0x2083000120C35249, 0x30C11841394562CD, 0x3947390352074A07, 0x520728C120C130C1,  // 0x00007078 
	0x4A07520728C15209, 0x41878B4D934FB497, 0xCD57C555A38F9B4B, 0xB44DA3899B4769C1,  // 0x00007098 
	0x08430001310549C7, 0x2881188149C55A8B, 0x4185418549855209, 0x51C5288139453103,  // 0x000070B8 
	0x520951C528C1620B, 0x52079C119B91BCD5, 0xCD57CD55AC51930B, 0xBC4DABCB9B4771C1,  // 0x000070D8 
	0x0843000128C34185, 0x184128C3628B5A8B, 0x398351C74985730F, 0x49851841414530C3,  // 0x000070F8 
	0x730F498520415A09, 0x6ACB9BCFA393B4D5, 0xD597C515B451930B, 0xBC8FABCB9B4979C1,  // 0x00007118 
	0x0843000128C13143, 0x184149855A495A4B, 0x4183418541835A4B, 0x3905204139452881,  // 0x00007138 
	0x5A493105204151C7, 0x730D8B4B9B91A411, 0xD597C515AC51934D, 0xBC8FABCB9B496981,  // 0x00007158 
	0x0843080139033145, 0x1841418552095A4B, 0x394339035A09624B, 0x20C3208141852881,  // 0x00007178 
	0x628B208120815209, 0x628B8B0B9B919391, 0xD599CD57AC51934D, 0xBC91ABCB9B096181,  // 0x00007198 
	0x0843104141833945, 0x2081414352095249, 0x28C130C152075A4B, 0x3945208139432881,  // 0x000071B8 
	0x5A4B3945288151C9, 0x41877AC99B519B91, 0xD599CD57AC519B8F, 0xBC91A3CB93096981,  // 0x000071D8 
	0x08431041394120C3, 0x2081390352095209, 0x208130C151C75A4B, 0x49C730C339431881,  // 0x000071F8 
	0x628D5A4B41034187, 0x31037AC7934F938F, 0xCD57CD55AC519B8F, 0xB451A38D93078A05,  // 0x00007218 
	0x08831883394320C3, 0x2883418552094A09, 0x30C3390351C9628D, 0x5209310339431881,  // 0x00007238 
	0x6ACF520731033903, 0x51C57287830D934F, 0xB493C515AC51A3CF, 0xB4119B4D92C78A45,  // 0x00007258 
};

u64 _HIDAN_room_21_tex_00007278[] = 
{
	0x18B8BD818B88A754, 0x38711A225AA75526, 0xA88BA735888A9552, 0xA31A2254AA152226,  // 0x00007278 
	0x8BDD3375B88D8A52, 0x88AA5224A7781526, 0xADDB88178888A152, 0x888A552211AA5522,  // 0x00007298 
	0xA8B883178338A725, 0xA8A15242A5511544, 0x57BB833938797126, 0x11AA52221A525546,  // 0x000072B8 
	0x5788381ABB317152, 0x1AAA5525AA125524, 0x138888A588791224, 0x77A555561A552226,  // 0x000072D8 
	0xA8B8888A8889AA52, 0xAAA71555A8121524, 0xA8D88882BDA17552, 0xA8A15156A8155526,  // 0x000072F8 
	0x88BB3A8A88318A22, 0x88AA5252AA75A526, 0xA8BDD8A58888AA12, 0xAAAAA126A1175556,  // 0x00007318 
	0xAD88887183B88122, 0x88A11522A1AA7242, 0xA8B877958D888522, 0x88AA2264AAAAA246,  // 0x00007338 
	0x78838B718B887126, 0xAA125A248AAA5246, 0x9888D8AADD8D1552, 0x1AA1A522D8AA2224,  // 0x00007358 
	0x78BB88A18D88AA52, 0xA3AA5552AAAA5526, 0xA8DB13AA8D88A755, 0xA8AA2222A8A11522,  // 0x00007378 
	0x78DD971588888A22, 0x8A884246A57A1524, 0x78D838813313A755, 0xAA81251215555522,  // 0x00007398 
	0x9B83B8877188A752, 0x18A51552557A1524, 0x9888DDA53DD8A724, 0x1111AA26588A5526,  // 0x000073B8 
	0x18BDB8323AAAA554, 0x78AAA5561A155226, 0x78BBD81017AAA152, 0xA7A7A54655551526,  // 0x000073D8 
	0x78DDD8998887AA55, 0xA88AA564A7755522, 0x78DDB33138851522, 0xA788A2545A145466,  // 0x000073F8 
	0xABDD88A58B81A854, 0xA88A15247AA25A26, 0x1888D88938337152, 0x7AA1A55457575526,  // 0x00007418 
	0xA88BD8A938888124, 0x8A1AA524111AA246, 0xAB83BB8988B88A22, 0xA8151156AAAAA564,  // 0x00007438 
	0x188838797388A526, 0x77A55524515A5266, 0x18D383198BB88952, 0x7A8552427AAA1224,  // 0x00007458 
};

u64 _HIDAN_room_21_tex_00007478[] = 
{
	0x588160C140413841, 0x4041484128412041, 0x2001200138415881, 0x68C1384128412841,  // 0x00007478 
	0x2841204138415041, 0x5081484140415041, 0x704190C158414041, 0x4041384158815081,  // 0x00007498 
	0x4841588160C15881, 0x6081384128412041, 0x2041200128412841, 0x2841204120412001,  // 0x000074B8 
	0x2001284148415881, 0x3841304138415841, 0x9041C041A0417841, 0x5041484148414041,  // 0x000074D8 
	0x5081484148415881, 0x70C1404138413041, 0x2841200128012801, 0x3841384138013801,  // 0x000074F8 
	0x3801384160815041, 0x2841284140416841, 0xB841D841D081B081, 0x6041588140414041,  // 0x00007518 
	0x5881484148816081, 0x6081688160814041, 0x3041384138415041, 0x6041604158415841,  // 0x00007538 
	0x5841604170816041, 0x3841384148417881, 0xC841E181E241CA01, 0x70C1504140415881,  // 0x00007558 
	0x4841488158417081, 0xA8C1C901A0817841, 0x6041604168417881, 0x88C1910198C18881,  // 0x00007578 
	0x8081788178817081, 0x50415041604180C1, 0xD101E281E441C281, 0x7101508140415081,  // 0x00007598 
	0x5041588168C1A941, 0xDA81E281D9C1B101, 0x8081784178419081, 0xA941A10198C198C1,  // 0x000075B8 
	0x9081888180417841, 0x70417081808188C1, 0xB881D1C1D241A141, 0x70C1588140814881,  // 0x000075D8 
	0x384148417101CA81, 0xEBC1F441EB41D201, 0x9901888188819081, 0xA8C1A8C1A081A041,  // 0x000075F8 
	0xA881904188418841, 0x9081888180818881, 0x9041A841A0817841, 0x608160C150813841,  // 0x00007618 
	0x304148417941D2C1, 0xF481FD81F441E301, 0xB181A0C19881A081, 0xA8C1B8C1B841C041,  // 0x00007638 
	0xC881B841A8419841, 0x9881A0C180816841, 0x6841704160814041, 0x404160C158812841,  // 0x00007658 
	0x384148417901CA41, 0xEBC1FC81F401E301, 0xC201B0C1A8C1B081, 0xB881D8C1E841F041,  // 0x00007678 
	0xF001E841D801B841, 0xB081988180417041, 0x6041788168813041, 0x3841200128413841,  // 0x00007698 
	0x384128414841A0C1, 0xE201EA81EA41D181, 0xC181C141B8C1B881, 0xC881E881F8C1F8C1,  // 0x000076B8 
	0xF881F841F001E001, 0xC081A8419041A101, 0x9081808170813841, 0x3041180118013841,  // 0x000076D8 
	0x3841284140417841, 0xB081D0C1C901B8C1, 0xC141C981C0C1C8C1, 0xE0C1F101F981F981,  // 0x000076F8 
	0xF941F8C1F841F041, 0xD841B841A881A901, 0x9081784160414841, 0x3041304128413841,  // 0x00007718 
	0x3841204138416841, 0x80819881A0C1A881, 0xB0C1C0C1C8C1D901, 0xF101FA41FA81FB01,  // 0x00007738 
	0xFAC1FA41F9C1F881, 0xE841C881B0C1B0C1, 0x9081784168415041, 0x3841284138413841,  // 0x00007758 
	0x3841284138415841, 0x784198C1A8C1A881, 0xB8C1C901D0C1E141, 0xFA01FB41FBC1FC01,  // 0x00007778 
	0xFC81FC01FAC1F941, 0xF041D081B8C1A081, 0x88417841994178C1, 0x4041284150814041,  // 0x00007798 
	0x3841284140416041, 0x704198C1A8C1A881, 0xB8C1D981D101E9C1, 0xFB01FC01FC81FD41,  // 0x000077B8 
	0xFD41FCC1FB41F9C1, 0xF081D8C1C0C1A881, 0x9041888190C17881, 0x5041304140414041,  // 0x000077D8 
	0x4041284140416041, 0x704180419041A881, 0xC0C1DA01D941E9C1, 0xFB41FC41FD01FE41,  // 0x000077F8 
	0xFD81FC81FBC1FA01, 0xF101E141C901B0C1, 0x9841908180816841, 0x4841304140414041,  // 0x00007818 
	0x4041284148416041, 0x704180419881B081, 0xC901D9C1E141EA01, 0xFB01FBC1FCC1FD81,  // 0x00007838 
	0xFD41FC81FB81FA01, 0xF8C1E141C901B081, 0xA081908170416041, 0x5041304128414041,  // 0x00007858 
	0x4881284148416041, 0x70419081A081B0C1, 0xC941C8C1D941E981, 0xFA01FA81FBC1FC41,  // 0x00007878 
	0xFC01FC01FB01F981, 0xF0C1E141C901A881, 0xA081888178416041, 0x48412841384158C1,  // 0x00007898 
	0x3841284150416041, 0x684190819041A081, 0xC0C1C8C1D941EA01, 0xF981F9C1FAC1FB41,  // 0x000078B8 
	0xFB01FAC1F941F881, 0xF081D941C8C1A8C1, 0x8841704170416041, 0x4841284140415081,  // 0x000078D8 
	0x2001384160816041, 0x7041A94198819041, 0xB8C1C0C1C8C1E1C1, 0xF141F8C1F981F981,  // 0x000078F8 
	0xF941F8C1F881F041, 0xE041C881B081A081, 0x8841804178816841, 0x4841404138412041,  // 0x00007918 
	0x2001404171017081, 0x80C198C188819041, 0xB0C1C0C1D101E1C1, 0xE941F041F881F881,  // 0x00007938 
	0xF841F841F841E841, 0xC841B041A0419841, 0x98C1888180817081, 0x4841404138412001,  // 0x00007958 
	0x28415881710178C1, 0x8081808188819881, 0xA8C1C0C1D1C1D9C1, 0xD901D841E841F041,  // 0x00007978 
	0xF041F001E841D041, 0xB841A84198419881, 0xA941888170416041, 0x4841404140413841,  // 0x00007998 
	0x404160C168C15041, 0x5041788188819081, 0xA8C1B901C141C901, 0xC8C1C881C841D881,  // 0x000079B8 
	0xD881C841C841B881, 0xA8419841A081A0C1, 0x9881888170416041, 0x5081588160C15081,  // 0x000079D8 
	0x4041404140415041, 0x6041684178418841, 0xA0C1B101B0C1B0C1, 0xB8C1C0C1C081C081,  // 0x000079F8 
	0xB841B041A841A881, 0x984190419881B101, 0xC0C1D0C1A8817041, 0x4841488168C160C1,  // 0x00007A18 
	0x3841384140416881, 0x8081784188419041, 0xA08198819881A081, 0xA8C1B0C1A881B8C1,  // 0x00007A38 
	0xB0C1A081A0419841, 0x8841884190C1C141, 0xE201E241E281A941, 0x5881384148415081,  // 0x00007A58 
	0x4041484168819881, 0xC081D081D881D041, 0xA841884180418841, 0x988190819881A8C1,  // 0x00007A78 
	0xB141A0C198818841, 0x8881808188C1D201, 0xEB81F401EBC1CA41, 0x68C1484158815081,  // 0x00007A98 
	0x588168C17081C0C1, 0xE1C1F241F201E0C1, 0xC841884178417041, 0x78418041888198C1,  // 0x00007AB8 
	0xA141A10190C18881, 0x7881788180C1DAC1, 0xF481FDC1EC01CA41, 0x7101508150815081,  // 0x00007AD8 
	0x488148416881D181, 0xF381FC01FB01E981, 0xD90198C170416041, 0x6841788180818881,  // 0x00007AF8 
	0x90C190C178817881, 0x7081604170C1CA81, 0xEC01F481E341CA81, 0x898168C160C15881,  // 0x00007B18 
	0x404148416881D201, 0xF401FD41FBC1EA01, 0xD10180C168415841, 0x6041684178818081,  // 0x00007B38 
	0x8081788158415841, 0x604150415841A101, 0xE281E2C1D1C1BA41, 0x8141588150815881,  // 0x00007B58 
	0x384148416081C141, 0xEBC1F401F3C1E201, 0xB8C1604148413841, 0x4841608178C16881,  // 0x00007B78 
	0x6881584140413841, 0x3841384138416841, 0xB101C10198818081, 0x6081484148415081,  // 0x00007B98 
	0x38414841504190C1, 0xDA81DA81D201C0C1, 0x8041484130412841, 0x484168C160815881,  // 0x00007BB8 
	0x3841284120412001, 0x3041304130414041, 0x6081608158415041, 0x3841384140413841,  // 0x00007BD8 
	0x3841404140415041, 0x894170C160815841, 0x5041484130413041, 0x5881508130413041,  // 0x00007BF8 
	0x2001200120413041, 0x3841304128413841, 0x3841484140413841, 0x3841404140414041,  // 0x00007C18 
	0x4041404138413841, 0x5041504138413041, 0x3041304138415081, 0x60C1508128411801,  // 0x00007C38 
	0x2001204128413841, 0x4041384130413041, 0x3841404120412041, 0x4041484148414041,  // 0x00007C58 
};

u64 _HIDAN_room_21_tex_00007C78[] = 
{
	0xB041A841A0019041, 0x90419841A881B0C1, 0xA081A841B041C841, 0xD8C1E0C1E941E981,  // 0x00007C78 
	0xE141C901B0419841, 0x90419841A841C881, 0xF081F001E841E001, 0xC001B801B041B001,  // 0x00007C98 
	0xB041A00198019801, 0x9041A081C081B881, 0xA841B081A841B841, 0xC881C881D0C1D941,  // 0x00007CB8 
	0xC901B8C1A8419841, 0x90419881A881D0C1, 0xF081F841F881E841, 0xD001B001A801A841,  // 0x00007CD8 
	0xA841980198419801, 0x9801B041C881C881, 0xB881B881A841A841, 0xB841B841B841C081,  // 0x00007CF8 
	0xB081A881A8419041, 0x88419081A8C1D101, 0xE8C1F881F881F081, 0xD001B841A041A841,  // 0x00007D18 
	0x984188419041A041, 0xA841B841C841C841, 0xC881C841B841A041, 0xA841A841B041A841,  // 0x00007D38 
	0xA0419841A0419841, 0x88819081A8C1D101, 0xE141F081F881F001, 0xE041C041A841A041,  // 0x00007D58 
	0x900180418041A001, 0xB841C041C841C881, 0xD0C1D081B841A841, 0xA041A041A081B081,  // 0x00007D78 
	0xA081888190419041, 0x88818881A8C1C941, 0xD941E881F881F881, 0xD841C841A8419801,  // 0x00007D98 
	0x880180017841A001, 0xC841D081C881C881, 0xD8C1D0C1C041A841, 0xA0419841A081A881,  // 0x00007DB8 
	0xA881908180818841, 0x90819081A081B0C1, 0xC901D8C1F081F081, 0xE841C841A8419801,  // 0x00007DD8 
	0x900188018001A801, 0xC841C881C881D0C1, 0xD901D0C1C081A881, 0x9841984190819881,  // 0x00007DF8 
	0xA881A08188819881, 0x988190819881A0C1, 0xA8C1B8C1D841E881, 0xE041C841A8419801,  // 0x00007E18 
	0x880180018801A801, 0xB041B881C081C881, 0xD0C1D081C041A081, 0x9841908190819081,  // 0x00007E38 
	0xA881A8819841A081, 0xA0819041888188C1, 0x98C1A8C1B0C1D881, 0xD041B841A8019801,  // 0x00007E58 
	0x800180018801A001, 0xA041A841B881C881, 0xD081C881B081A081, 0x9081904190819881,  // 0x00007E78 
	0xA8C1A8C198419881, 0x90818041888188C1, 0x88C19901A0C1C041, 0xB801A841A0018801,  // 0x00007E98 
	0x8001800178019001, 0x98019841A881B081, 0xB881B881A8819081, 0x8041888190819881,  // 0x00007EB8 
	0xA0C1A8C1A8819081, 0x8881808188C188C1, 0x890190C1A0C1A881, 0xA881A00190018801,  // 0x00007ED8 
	0x8001780170018001, 0x8801900198819881, 0xA081A88198818881, 0x78418041888190C1,  // 0x00007EF8 
	0x98C1A8C1A8819881, 0x888188C188C188C1, 0x910198C19881A041, 0x9841980190018801,  // 0x00007F18 
	0x8801700170017801, 0x8001880198419881, 0xA081988188817881, 0x68417041788190C1,  // 0x00007F38 
	0xA0C1A881A8C19881, 0x888188C191019101, 0xA0C19881A0419841, 0x9001900188019001,  // 0x00007F58 
	0x8801700170017801, 0x88019001A041A081, 0x9041888188817081, 0x6841684180819081,  // 0x00007F78 
	0xA081A081A881A081, 0x908190C19901A0C1, 0xA881A041A041A841, 0x9801900188018801,  // 0x00007F98 
	0x8001700170017801, 0x88019801A0019841, 0x8841904180417041, 0x684170818081A081,  // 0x00007FB8 
	0xA0C1A0C1A881A081, 0x9881A0C1A0C1C081, 0xB881A041B041B041, 0xA041A04188018801,  // 0x00007FD8 
	0x7001680170017801, 0x8801900198019041, 0x8841884180417041, 0x7041788180819881,  // 0x00007FF8 
	0xA0C1A0C1A881A041, 0xA881B081B041D041, 0xC841A841B041B041, 0xB041B041A0419001,  // 0x00008018 
	0x8001700168017801, 0x9001980198419841, 0x8841884180417841, 0x70417881808198C1,  // 0x00008038 
	0xA0C1A081B081A881, 0xA881B841D001D841, 0xC881C081B081B881, 0xC081C081C041A041,  // 0x00008058 
	0x9001800170018001, 0x88019801A0419841, 0x8841804178017001, 0x70417041808198C1,  // 0x00008078 
	0x9081A081B081B081, 0xB081C801E001E041, 0xD081C881B881C081, 0xD081D841D041B041,  // 0x00008098 
	0x9841900178017801, 0x8801A041A841A041, 0x9041800170017001, 0x7001704170818881,  // 0x000080B8 
	0x90819841A881B041, 0xB841C801E801E841, 0xD881D081C881C081, 0xD0C1D041D041C041,  // 0x000080D8 
	0xA841900180017801, 0x8801A001B041A841, 0x9841884178017001, 0x7801704170418041,  // 0x000080F8 
	0x8841A041B081B841, 0xC001D801F841F881, 0xF8C1E0C1D0C1C8C1, 0xC0C1C841C841C041,  // 0x00008118 
	0xA041900180018801, 0x8801A841B841A841, 0xA041884178017801, 0x7841704180418041,  // 0x00008138 
	0x80419841B081B041, 0xC001F041F841F905, 0xF987F8C1E0C1D8C1, 0xC881B881B881B041,  // 0x00008158 
	0xA041904180018801, 0x9001B041C841C041, 0xA881984180417841, 0x7841788190819081,  // 0x00008178 
	0x88419841A841B041, 0xC801F041F881F989, 0xF9C7F903F081E0C1, 0xD081B881A841A041,  // 0x00008198 
	0x9841904188018801, 0x9801B001C841C881, 0xB081A08198418841, 0x788188C1A0C1A081,  // 0x000081B8 
	0xA041904190419841, 0xB081E841F8C1F987, 0xF9C9F903F881E8C1, 0xD8C1B841A041A041,  // 0x000081D8 
	0x9841884190018001, 0x9801B001C841D081, 0xC0C1C081B041A041, 0xA081A0C1B101B0C1,  // 0x000081F8 
	0xB081984180018841, 0xA081D081F081F905, 0xF9C9F985F8C1F0C1, 0xD081C081B841A841,  // 0x00008218 
	0xA801984190418801, 0x8801A001B841D0C1, 0xD881C881C841C041, 0xA8C1B0C1C901C901,  // 0x00008238 
	0xC081A84190418841, 0x8841A881E081F881, 0xF947F901F8C1E8C1, 0xD881D041C041C041,  // 0x00008258 
	0xB801A001A0419801, 0x8801A001B041C881, 0xD8C1D081D881D081, 0xB901C101D101C8C1,  // 0x00008278 
	0xC881A08190418841, 0x80419041B081E8C1, 0xF8C1F8C1F0C1E881, 0xD881D081D041D801,  // 0x00008298 
	0xB801A04198019801, 0x8801A001A841C841, 0xD8C1D081D881D0C1, 0xD101C941D101D101,  // 0x000082B8 
	0xB8C1A04188018841, 0x784188418841C081, 0xE881E081E081E0C1, 0xD041D041D841D841,  // 0x000082D8 
	0xC001A80198019801, 0x88019801A001C041, 0xD081C881C841D881, 0xD901D141D941D901,  // 0x000082F8 
	0xB881A04190418041, 0x784178418841A081, 0xC881D8C1D0C1D081, 0xC881D041E041D841,  // 0x00008318 
	0xC801B041A001A001, 0x98018841A041C081, 0xB8C1B081C041D041, 0xD101E141D941D901,  // 0x00008338 
	0xC8C1A04190418041, 0x704178419041A881, 0xC081C881C881B881, 0xC841D041E041E001,  // 0x00008358 
	0xD001A8419801A001, 0x980188019841B8C1, 0xB0C1A841B841C881, 0xD101E181E981E141,  // 0x00008378 
	0xC101A04190418041, 0x784178419841B081, 0xC881D081C081B041, 0xB841C841D041E001,  // 0x00008398 
	0xC001A80198019801, 0x98019841A881B8C1, 0xB081A041B041C0C1, 0xD101E181F201EA01,  // 0x000083B8 
	0xC941B0C190418841, 0x80417841A041C841, 0xD081D041C081B041, 0xA801C001C841D801,  // 0x000083D8 
	0xB841A80198018801, 0x9841A041B0C1B8C1, 0xA881A041B041C081, 0xD101E181F201FA01,  // 0x000083F8 
	0xE9C1C141A8419041, 0x88418041A841D801, 0xD841E041C801B841, 0xB041B001C041C841,  // 0x00008418 
	0xB041A041A0019841, 0x90419841A881B8C1, 0xA881A041B041C8C1, 0xD8C1E141F181FA01,  // 0x00008438 
	0xE9C1D141B0419841, 0x90419041A841D801, 0xF041E801E001C801, 0xB801B041B841B841,  // 0x00008458 
};

static u8 unaccounted8478[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


