#include <ultra64.h>
#include <z64.h>
#include "ganontika_room_14.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "ganontika_scene.h"



SCmdEchoSettings _ganontika_room_14_set0000_cmd00 = { 0x16, 0, { 0 }, 0x08 }; // 0x0000
SCmdRoomBehavior _ganontika_room_14_set0000_cmd01 = { 0x08, 0x01, 0x00000003 }; // 0x0008
SCmdSkyboxDisables _ganontika_room_14_set0000_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0010
SCmdTimeSettings _ganontika_room_14_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _ganontika_room_14_set0000_cmd04 = { 0x0A, 0, (u32)&_ganontika_room_14_meshHeader_000001D0 }; // 0x0020
SCmdObjectList _ganontika_room_14_set0000_cmd05 = { 0x0B, 0x07, (u32)_ganontika_room_14_objectList_00000040 }; // 0x0028
SCmdActorList _ganontika_room_14_set0000_cmd06 = { 0x01, 0x18, (u32)_ganontika_room_14_actorList_00000050 }; // 0x0030
SCmdEndMarker _ganontika_room_14_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _ganontika_room_14_objectList_00000040[] = 
{
	OBJECT_DEMO_KEKKAI,
	OBJECT_HIDAN_OBJECTS,
	OBJECT_BW,
	OBJECT_BB,
	OBJECT_D_HSBLOCK,
	OBJECT_HEAVY_OBJECT,
	OBJECT_VM,
};

ActorEntry _ganontika_room_14_actorList_00000050[24] = 
{
	{ ACTOR_OBJ_HSBLOCK, -1579, 152, -2923, 0, 5461, 0, 0xFFC0 }, //0x00000050 
	{ ACTOR_EN_BW, -1460, 151, -2478, 0, -9102, 0, 0xFFFF }, //0x00000060 
	{ ACTOR_EN_BW, -1504, 151, -2341, 0, 9466, 0, 0xFFFF }, //0x00000070 
	{ ACTOR_BG_HIDAN_SIMA, -1156, 20, -3516, 0, -27307, 0, 0x0001 }, //0x00000080 
	{ ACTOR_BG_HIDAN_SIMA, -791, 20, -2229, 0, -10923, 0, 0x0001 }, //0x00000090 
	{ ACTOR_BG_HIDAN_SIMA, -1834, 20, -2492, 0, -27307, 0, 0x0001 }, //0x000000A0 
	{ ACTOR_BG_HIDAN_ROCK, -685, 20, -2946, 0, 5461, 0, 0xFF01 }, //0x000000B0 
	{ ACTOR_BG_HIDAN_ROCK, -1327, 20, -2736, 0, 5461, 0, 0xFF01 }, //0x000000C0 
	{ ACTOR_BG_HIDAN_ROCK, -1681, 20, -3218, 0, 5461, 0, 0xFF01 }, //0x000000D0 
	{ ACTOR_BG_HIDAN_SIMA, -541, 20, -2678, 0, 5461, 0, 0x0000 }, //0x000000E0 
	{ ACTOR_BG_HIDAN_SIMA, -940, 20, -2799, 0, 5461, 0, 0x0000 }, //0x000000F0 
	{ ACTOR_BG_HIDAN_SIMA, -802, 20, -2553, 0, 5461, 0, 0x0000 }, //0x00000100 
	{ ACTOR_BG_HIDAN_SIMA, -1408, 20, -3378, 0, 5461, 0, 0x0000 }, //0x00000110 
	{ ACTOR_BG_HIDAN_SIMA, -1985, 20, -3072, 0, 5461, 0, 0x0000 }, //0x00000120 
	{ ACTOR_BG_HEAVY_BLOCK, -975, 61, -3752, 0, 5461, 0, 0xFF00 }, //0x00000130 
	{ ACTOR_BG_HEAVY_BLOCK, -1385, 59, -2231, 0, -27307, 0, 0xFF00 }, //0x00000140 
	{ ACTOR_EN_VM, -915, 152, -3647, 0, 0, 0, 0x0500 }, //0x00000150 
	{ ACTOR_OBJ_HSBLOCK, -1811, 153, -3826, 0, 5461, 0, 0x01C1 }, //0x00000160 
	{ ACTOR_EN_G_SWITCH, -970, 152, -3747, 0, 0, 0, 0x1FC1 }, //0x00000170 
	{ ACTOR_EN_G_SWITCH, -1891, 222, -2753, 0, 0, 0, 0x1FC1 }, //0x00000180 
	{ ACTOR_EN_G_SWITCH, -2044, 244, -3354, 0, 0, 0, 0x1FC1 }, //0x00000190 
	{ ACTOR_EN_G_SWITCH, -686, 640, -2945, 0, 0, 0, 0x1FC1 }, //0x000001A0 
	{ ACTOR_EN_G_SWITCH, -1655, 120, -2133, 0, 0, 0, 0x1FC1 }, //0x000001B0 
	{ ACTOR_EN_G_SWITCH, -626, 150, -1998, 0, 0, 0, 0x0141 }, //0x000001C0 
};


MeshHeader2 _ganontika_room_14_meshHeader_000001D0 = { { 2 }, 0x0B, (u32)&_ganontika_room_14_meshDListEntry_000001DC, (u32)&(_ganontika_room_14_meshDListEntry_000001DC) + sizeof(_ganontika_room_14_meshDListEntry_000001DC) };

MeshEntry2 _ganontika_room_14_meshDListEntry_000001DC[11] = 
{
	{ -651, 92, -1975, 156, (u32)_ganontika_room_14_dlist_00000918, 0 },
	{ -1891, 93, -3808, 181, (u32)_ganontika_room_14_dlist_00001110, 0 },
	{ -1947, 203, -3853, 59, (u32)_ganontika_room_14_dlist_00001670, 0 },
	{ -1470, 92, -2385, 189, (u32)_ganontika_room_14_dlist_00001C68, 0 },
	{ -918, 93, -3650, 155, (u32)_ganontika_room_14_dlist_00002778, 0 },
	{ -1725, 128, -2829, 296, (u32)_ganontika_room_14_dlist_000036E8, 0 },
	{ -1223, 453, -2919, 1331, (u32)_ganontika_room_14_dlist_00004920, 0 },
	{ -1942, 253, -3841, 123, (u32)_ganontika_room_14_dlist_00004BF8, (u32)_ganontika_room_14_dlist_000085F0 },
	{ -621, 200, -1916, 59, (u32)_ganontika_room_14_dlist_000003D0, 0 },
	{ -1224, 29, -2920, 1263, (u32)_ganontika_room_14_dlist_00004E38, 0 },
	{ -1224, 58, -2920, 1263, 0, (u32)_ganontika_room_14_dlist_00008888 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

Vtx_t _ganontika_room_14_vertices_00000290[12] = 
{
	 { -600, 150, -1940, 0, 171, 2048, 115, 102, 78, 255 }, // 0x00000290
	 { -590, 150, -1922, 0, 341, 2048, 115, 102, 78, 255 }, // 0x000002A0
	 { -590, 250, -1922, 0, 341, 341, 69, 62, 48, 255 }, // 0x000002B0
	 { -600, 250, -1940, 0, 171, 341, 69, 62, 48, 255 }, // 0x000002C0
	 { -600, 250, -1940, 0, 1024, 0, 69, 62, 48, 255 }, // 0x000002D0
	 { -590, 250, -1922, 0, 1024, 341, 69, 62, 48, 255 }, // 0x000002E0
	 { -642, 250, -1892, 0, 512, 341, 69, 62, 48, 255 }, // 0x000002F0
	 { -652, 250, -1910, 0, 512, 0, 69, 62, 48, 255 }, // 0x00000300
	 { -652, 250, -1910, 0, 171, 341, 69, 62, 48, 255 }, // 0x00000310
	 { -642, 250, -1892, 0, 341, 341, 69, 62, 48, 255 }, // 0x00000320
	 { -642, 150, -1892, 0, 341, 2048, 115, 102, 78, 255 }, // 0x00000330
	 { -652, 150, -1910, 0, 171, 2048, 115, 102, 78, 255 }, // 0x00000340
};

Vtx_t _ganontika_room_14_vertices_00000350[8] = 
{
	 { -600, 150, -1940, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000350
	 { -590, 150, -1922, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000360
	 { -600, 250, -1940, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000370
	 { -590, 250, -1922, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000380
	 { -652, 150, -1910, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000390
	 { -642, 150, -1892, 0, 0, 0, 0, 0, 0, 0 }, // 0x000003A0
	 { -652, 250, -1910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000003B0
	 { -642, 250, -1892, 0, 0, 0, 0, 0, 0, 0 }, // 0x000003C0
};

Gfx _ganontika_room_14_dlist_000003D0[] =
{
	gsDPPipeSync(), // 0x000003D0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000003D8
	gsSPVertex(_ganontika_room_14_vertices_00000350, 8, 0), // 0x000003E0
	gsSPCullDisplayList(0, 7), // 0x000003E8
	gsDPPipeSync(), // 0x000003F0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000003F8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000400
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000408
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000410
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000418
	gsDPLoadSync(), // 0x00000420
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000428
	gsDPPipeSync(), // 0x00000430
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000438
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000440
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00000448
	gsDPTileSync(), // 0x00000450
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000458
	gsDPLoadSync(), // 0x00000460
	gsDPLoadTLUTCmd(7, 255), // 0x00000468
	gsDPPipeSync(), // 0x00000470
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000478
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000480
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000488
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000490
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000498
	gsSPVertex(_ganontika_room_14_vertices_00000290, 12, 0), // 0x000004A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000004A8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000004B0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000004B8
	gsSPEndDisplayList(), // 0x000004C0
};

Vtx_t _ganontika_room_14_vertices_000004C8[10] = 
{
	 { -582, 150, -2089, 0, -137, 1775, 245, 244, 241, 255 }, // 0x000004C8
	 { -617, 150, -2069, 0, 137, 1638, 255, 255, 255, 255 }, // 0x000004D8
	 { -547, 150, -1947, 0, -341, 683, 255, 255, 255, 255 }, // 0x000004E8
	 { -512, 150, -1967, 0, -614, 819, 115, 102, 78, 255 }, // 0x000004F8
	 { -637, 150, -2103, 0, 273, 1911, 255, 255, 255, 255 }, // 0x00000508
	 { -775, 150, -2023, 0, 1365, 1365, 255, 255, 255, 255 }, // 0x00000518
	 { -755, 150, -1989, 0, 1229, 1092, 255, 255, 255, 255 }, // 0x00000528
	 { -790, 150, -1969, 0, 1502, 956, 245, 244, 241, 255 }, // 0x00000538
	 { -720, 150, -1847, 0, 1024, 0, 115, 102, 78, 255 }, // 0x00000548
	 { -685, 150, -1867, 0, 751, 137, 255, 255, 255, 255 }, // 0x00000558
};

Vtx_t _ganontika_room_14_vertices_00000568[4] = 
{
	 { -790, 150, -1969, 0, 3072, 0, 245, 244, 241, 255 }, // 0x00000568
	 { -790, 120, -1969, 0, 3072, 512, 245, 244, 241, 255 }, // 0x00000578
	 { -730, 120, -1865, 0, 0, 512, 115, 102, 78, 255 }, // 0x00000588
	 { -730, 150, -1865, 0, 0, 0, 115, 102, 78, 255 }, // 0x00000598
};

Vtx_t _ganontika_room_14_vertices_000005A8[4] = 
{
	 { -790, 120, -1969, 0, 3072, 0, 245, 244, 241, 255 }, // 0x000005A8
	 { -790, 34, -1969, 0, 3072, 1024, 188, 0, 0, 255 }, // 0x000005B8
	 { -730, 34, -1865, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000005C8
	 { -730, 120, -1865, 0, 0, 0, 115, 102, 78, 255 }, // 0x000005D8
};

Vtx_t _ganontika_room_14_vertices_000005E8[4] = 
{
	 { -776, 120, -2023, 0, 1448, 512, 255, 255, 255, 255 }, // 0x000005E8
	 { -790, 120, -1969, 0, 0, 512, 245, 244, 241, 255 }, // 0x000005F8
	 { -790, 150, -1969, 0, 0, 0, 245, 244, 241, 255 }, // 0x00000608
	 { -775, 150, -2023, 0, 1448, 0, 255, 255, 255, 255 }, // 0x00000618
};

Vtx_t _ganontika_room_14_vertices_00000628[4] = 
{
	 { -776, 120, -2023, 0, 1448, 0, 255, 255, 255, 255 }, // 0x00000628
	 { -776, 34, -2023, 0, 1448, 1024, 188, 0, 0, 255 }, // 0x00000638
	 { -790, 34, -1969, 0, 0, 1024, 188, 0, 0, 255 }, // 0x00000648
	 { -790, 120, -1969, 0, 0, 0, 245, 244, 241, 255 }, // 0x00000658
};

Vtx_t _ganontika_room_14_vertices_00000668[4] = 
{
	 { -637, 120, -2103, 0, 4096, 512, 255, 255, 255, 255 }, // 0x00000668
	 { -776, 120, -2023, 0, 0, 512, 255, 255, 255, 255 }, // 0x00000678
	 { -775, 150, -2023, 0, 0, 0, 255, 255, 255, 255 }, // 0x00000688
	 { -637, 150, -2103, 0, 4096, 0, 255, 255, 255, 255 }, // 0x00000698
};

Vtx_t _ganontika_room_14_vertices_000006A8[4] = 
{
	 { -637, 120, -2103, 0, 4096, 0, 255, 255, 255, 255 }, // 0x000006A8
	 { -637, 34, -2103, 0, 4096, 1024, 188, 0, 0, 255 }, // 0x000006B8
	 { -776, 34, -2023, 0, 0, 1024, 188, 0, 0, 255 }, // 0x000006C8
	 { -776, 120, -2023, 0, 0, 0, 255, 255, 255, 255 }, // 0x000006D8
};

Vtx_t _ganontika_room_14_vertices_000006E8[4] = 
{
	 { -582, 150, -2089, 0, 1448, 0, 245, 244, 241, 255 }, // 0x000006E8
	 { -582, 120, -2089, 0, 1448, 512, 245, 244, 241, 255 }, // 0x000006F8
	 { -637, 120, -2103, 0, 0, 512, 255, 255, 255, 255 }, // 0x00000708
	 { -637, 150, -2103, 0, 0, 0, 255, 255, 255, 255 }, // 0x00000718
};

Vtx_t _ganontika_room_14_vertices_00000728[4] = 
{
	 { -582, 120, -2089, 0, 1448, 0, 245, 244, 241, 255 }, // 0x00000728
	 { -582, 34, -2089, 0, 1448, 1024, 188, 0, 0, 255 }, // 0x00000738
	 { -637, 34, -2103, 0, 0, 1024, 188, 0, 0, 255 }, // 0x00000748
	 { -637, 120, -2103, 0, 0, 0, 255, 255, 255, 255 }, // 0x00000758
};

Vtx_t _ganontika_room_14_vertices_00000768[4] = 
{
	 { -522, 150, -1985, 0, 3072, 0, 115, 102, 78, 255 }, // 0x00000768
	 { -522, 120, -1985, 0, 3072, 512, 245, 244, 241, 255 }, // 0x00000778
	 { -582, 120, -2089, 0, 0, 512, 245, 244, 241, 255 }, // 0x00000788
	 { -582, 150, -2089, 0, 0, 0, 245, 244, 241, 255 }, // 0x00000798
};

Vtx_t _ganontika_room_14_vertices_000007A8[4] = 
{
	 { -522, 120, -1985, 0, 3072, 0, 245, 244, 241, 255 }, // 0x000007A8
	 { -522, 34, -1985, 0, 3072, 1024, 188, 0, 0, 255 }, // 0x000007B8
	 { -582, 34, -2089, 0, 0, 1024, 188, 0, 0, 255 }, // 0x000007C8
	 { -582, 120, -2089, 0, 0, 0, 245, 244, 241, 255 }, // 0x000007D8
};

Vtx_t _ganontika_room_14_vertices_000007E8[11] = 
{
	 { -617, 150, -2069, 0, 0, 4096, 255, 255, 255, 255 }, // 0x000007E8
	 { -646, 150, -1959, 0, 2048, 2048, 255, 255, 255, 255 }, // 0x000007F8
	 { -547, 150, -1947, 0, 0, 512, 115, 102, 78, 255 }, // 0x00000808
	 { -616, 150, -1907, 0, 2048, 512, 115, 102, 78, 255 }, // 0x00000818
	 { -617, 150, -2069, 0, 0, -1024, 255, 255, 255, 255 }, // 0x00000828
	 { -755, 150, -1989, 0, 0, 3072, 255, 255, 255, 255 }, // 0x00000838
	 { -646, 150, -1959, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00000848
	 { -755, 150, -1989, 0, 0, -2560, 255, 255, 255, 255 }, // 0x00000858
	 { -685, 150, -1867, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00000868
	 { -646, 150, -1959, 0, 2048, -512, 255, 255, 255, 255 }, // 0x00000878
	 { -616, 150, -1907, 0, 2048, 1024, 115, 102, 78, 255 }, // 0x00000888
};

Vtx_t _ganontika_room_14_vertices_00000898[8] = 
{
	 { -602, 34, -2123, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000898
	 { -512, 34, -1967, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008A8
	 { -602, 150, -2123, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008B8
	 { -512, 150, -1967, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008C8
	 { -810, 34, -2003, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008D8
	 { -720, 34, -1847, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008E8
	 { -810, 150, -2003, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008F8
	 { -720, 150, -1847, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000908
};

Gfx _ganontika_room_14_dlist_00000918[] =
{
	gsDPPipeSync(), // 0x00000918
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000920
	gsSPVertex(_ganontika_room_14_vertices_00000898, 8, 0), // 0x00000928
	gsSPCullDisplayList(0, 7), // 0x00000930
	gsDPPipeSync(), // 0x00000938
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000940
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000948
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000950
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00000958
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000960
	gsDPLoadSync(), // 0x00000968
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000970
	gsDPPipeSync(), // 0x00000978
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000980
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000988
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000990
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000998
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000009A0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000009A8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000009B0
	gsSPVertex(_ganontika_room_14_vertices_000004C8, 10, 0), // 0x000009B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000009C0
	gsSP2Triangles(0, 4, 1, 0, 4, 5, 6, 0), // 0x000009C8
	gsSP2Triangles(4, 6, 1, 0, 5, 7, 6, 0), // 0x000009D0
	gsSP2Triangles(7, 8, 9, 0, 7, 9, 6, 0), // 0x000009D8
	gsDPPipeSync(), // 0x000009E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000009E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x000009F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x000009F8
	gsDPLoadSync(), // 0x00000A00
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00000A08
	gsDPPipeSync(), // 0x00000A10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00000A18
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00000A20
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00000A28
	gsDPTileSync(), // 0x00000A30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000A38
	gsDPLoadSync(), // 0x00000A40
	gsDPLoadTLUTCmd(7, 255), // 0x00000A48
	gsDPPipeSync(), // 0x00000A50
	gsSPVertex(_ganontika_room_14_vertices_00000568, 4, 0), // 0x00000A58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000A60
	gsDPPipeSync(), // 0x00000A68
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00000A70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000A78
	gsDPLoadSync(), // 0x00000A80
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000A88
	gsDPPipeSync(), // 0x00000A90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000A98
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000AA0
	gsSPVertex(_ganontika_room_14_vertices_000005A8, 4, 0), // 0x00000AA8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000AB0
	gsDPPipeSync(), // 0x00000AB8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00000AC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00000AC8
	gsDPLoadSync(), // 0x00000AD0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00000AD8
	gsDPPipeSync(), // 0x00000AE0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00000AE8
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00000AF0
	gsSPVertex(_ganontika_room_14_vertices_000005E8, 4, 0), // 0x00000AF8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000B00
	gsDPPipeSync(), // 0x00000B08
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00000B10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000B18
	gsDPLoadSync(), // 0x00000B20
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000B28
	gsDPPipeSync(), // 0x00000B30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000B38
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000B40
	gsSPVertex(_ganontika_room_14_vertices_00000628, 4, 0), // 0x00000B48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000B50
	gsDPPipeSync(), // 0x00000B58
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00000B60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00000B68
	gsDPLoadSync(), // 0x00000B70
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00000B78
	gsDPPipeSync(), // 0x00000B80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00000B88
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00000B90
	gsSPVertex(_ganontika_room_14_vertices_00000668, 4, 0), // 0x00000B98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000BA0
	gsDPPipeSync(), // 0x00000BA8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00000BB0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000BB8
	gsDPLoadSync(), // 0x00000BC0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000BC8
	gsDPPipeSync(), // 0x00000BD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000BD8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000BE0
	gsSPVertex(_ganontika_room_14_vertices_000006A8, 4, 0), // 0x00000BE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000BF0
	gsDPPipeSync(), // 0x00000BF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00000C00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00000C08
	gsDPLoadSync(), // 0x00000C10
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00000C18
	gsDPPipeSync(), // 0x00000C20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00000C28
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00000C30
	gsSPVertex(_ganontika_room_14_vertices_000006E8, 4, 0), // 0x00000C38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000C40
	gsDPPipeSync(), // 0x00000C48
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00000C50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000C58
	gsDPLoadSync(), // 0x00000C60
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000C68
	gsDPPipeSync(), // 0x00000C70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000C78
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000C80
	gsSPVertex(_ganontika_room_14_vertices_00000728, 4, 0), // 0x00000C88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000C90
	gsDPPipeSync(), // 0x00000C98
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00000CA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00000CA8
	gsDPLoadSync(), // 0x00000CB0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00000CB8
	gsDPPipeSync(), // 0x00000CC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00000CC8
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00000CD0
	gsSPVertex(_ganontika_room_14_vertices_00000768, 4, 0), // 0x00000CD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000CE0
	gsDPPipeSync(), // 0x00000CE8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00000CF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000CF8
	gsDPLoadSync(), // 0x00000D00
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000D08
	gsDPPipeSync(), // 0x00000D10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000D18
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000D20
	gsSPVertex(_ganontika_room_14_vertices_000007A8, 4, 0), // 0x00000D28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000D30
	gsDPPipeSync(), // 0x00000D38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000057B8), // 0x00000D40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000D48
	gsDPLoadSync(), // 0x00000D50
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000D58
	gsDPPipeSync(), // 0x00000D60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000D68
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000D70
	gsSPVertex(_ganontika_room_14_vertices_000007E8, 11, 0), // 0x00000D78
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000D80
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00000D88
	gsSP1Triangle(8, 10, 9, 0), // 0x00000D90
	gsSPEndDisplayList(), // 0x00000D98
};

Vtx_t _ganontika_room_14_vertices_00000DA0[7] = 
{
	 { -1796, 153, -3951, 0, 1053, 2644, 69, 62, 48, 255 }, // 0x00000DA0
	 { -1952, 153, -3861, 0, 289, 2139, 81, 72, 55, 255 }, // 0x00000DB0
	 { -1726, 153, -3830, 0, 464, 3536, 245, 244, 241, 255 }, // 0x00000DC0
	 { -1741, 153, -3775, 0, 41, 3622, 255, 255, 255, 255 }, // 0x00000DD0
	 { -1931, 153, -3665, 0, -978, 2949, 255, 255, 255, 255 }, // 0x00000DE0
	 { -1986, 153, -3680, 0, -1064, 2526, 245, 244, 241, 255 }, // 0x00000DF0
	 { -2056, 153, -3801, 0, -476, 1635, 69, 62, 48, 255 }, // 0x00000E00
};

Vtx_t _ganontika_room_14_vertices_00000E10[4] = 
{
	 { -2046, 153, -3784, 0, 0, 0, 115, 102, 78, 255 }, // 0x00000E10
	 { -2046, 123, -3784, 0, 0, 512, 115, 102, 78, 255 }, // 0x00000E20
	 { -1986, 123, -3680, 0, 3072, 512, 245, 244, 241, 255 }, // 0x00000E30
	 { -1986, 153, -3680, 0, 3072, 0, 245, 244, 241, 255 }, // 0x00000E40
};

Vtx_t _ganontika_room_14_vertices_00000E50[4] = 
{
	 { -2046, 123, -3784, 0, 0, 0, 115, 102, 78, 255 }, // 0x00000E50
	 { -2046, 34, -3784, 0, 0, 1024, 254, 15, 15, 255 }, // 0x00000E60
	 { -1986, 34, -3680, 0, 3072, 1024, 254, 15, 15, 255 }, // 0x00000E70
	 { -1986, 123, -3680, 0, 3072, 0, 245, 244, 241, 255 }, // 0x00000E80
};

Vtx_t _ganontika_room_14_vertices_00000E90[4] = 
{
	 { -1931, 153, -3665, 0, 1448, 0, 255, 255, 255, 255 }, // 0x00000E90
	 { -1986, 153, -3680, 0, 0, 0, 245, 244, 241, 255 }, // 0x00000EA0
	 { -1986, 123, -3680, 0, 0, 512, 245, 244, 241, 255 }, // 0x00000EB0
	 { -1931, 123, -3665, 0, 1448, 512, 255, 255, 255, 255 }, // 0x00000EC0
};

Vtx_t _ganontika_room_14_vertices_00000ED0[4] = 
{
	 { -1986, 123, -3680, 0, 0, 0, 245, 244, 241, 255 }, // 0x00000ED0
	 { -1986, 34, -3680, 0, 0, 1024, 254, 15, 15, 255 }, // 0x00000EE0
	 { -1931, 34, -3665, 0, 1448, 1024, 254, 15, 15, 255 }, // 0x00000EF0
	 { -1931, 123, -3665, 0, 1448, 0, 255, 255, 255, 255 }, // 0x00000F00
};

Vtx_t _ganontika_room_14_vertices_00000F10[4] = 
{
	 { -1741, 153, -3775, 0, 4096, 0, 255, 255, 255, 255 }, // 0x00000F10
	 { -1931, 153, -3665, 0, 0, 0, 255, 255, 255, 255 }, // 0x00000F20
	 { -1931, 123, -3665, 0, 0, 512, 255, 255, 255, 255 }, // 0x00000F30
	 { -1741, 123, -3775, 0, 4096, 512, 255, 255, 255, 255 }, // 0x00000F40
};

Vtx_t _ganontika_room_14_vertices_00000F50[4] = 
{
	 { -1931, 123, -3665, 0, 0, 0, 255, 255, 255, 255 }, // 0x00000F50
	 { -1931, 34, -3665, 0, 0, 1024, 254, 15, 15, 255 }, // 0x00000F60
	 { -1741, 34, -3775, 0, 4096, 1024, 254, 15, 15, 255 }, // 0x00000F70
	 { -1741, 123, -3775, 0, 4096, 0, 255, 255, 255, 255 }, // 0x00000F80
};

Vtx_t _ganontika_room_14_vertices_00000F90[4] = 
{
	 { -1741, 153, -3775, 0, 0, 0, 255, 255, 255, 255 }, // 0x00000F90
	 { -1741, 123, -3775, 0, 0, 512, 255, 255, 255, 255 }, // 0x00000FA0
	 { -1726, 123, -3830, 0, 1448, 512, 245, 244, 241, 255 }, // 0x00000FB0
	 { -1726, 153, -3830, 0, 1448, 0, 245, 244, 241, 255 }, // 0x00000FC0
};

Vtx_t _ganontika_room_14_vertices_00000FD0[4] = 
{
	 { -1741, 123, -3775, 0, 0, 0, 255, 255, 255, 255 }, // 0x00000FD0
	 { -1741, 34, -3775, 0, 0, 1024, 254, 15, 15, 255 }, // 0x00000FE0
	 { -1727, 34, -3830, 0, 1448, 1024, 254, 15, 15, 255 }, // 0x00000FF0
	 { -1726, 123, -3830, 0, 1448, 0, 245, 244, 241, 255 }, // 0x00001000
};

Vtx_t _ganontika_room_14_vertices_00001010[4] = 
{
	 { -1726, 153, -3830, 0, 0, 0, 245, 244, 241, 255 }, // 0x00001010
	 { -1726, 123, -3830, 0, 0, 512, 245, 244, 241, 255 }, // 0x00001020
	 { -1786, 123, -3934, 0, 3072, 512, 245, 244, 241, 255 }, // 0x00001030
	 { -1786, 153, -3934, 0, 3072, 0, 115, 102, 78, 255 }, // 0x00001040
};

Vtx_t _ganontika_room_14_vertices_00001050[4] = 
{
	 { -1726, 123, -3830, 0, 0, 0, 245, 244, 241, 255 }, // 0x00001050
	 { -1727, 34, -3830, 0, 0, 1024, 254, 15, 15, 255 }, // 0x00001060
	 { -1787, 34, -3934, 0, 3072, 1024, 254, 15, 15, 255 }, // 0x00001070
	 { -1786, 123, -3934, 0, 3072, 0, 245, 244, 241, 255 }, // 0x00001080
};

Vtx_t _ganontika_room_14_vertices_00001090[8] = 
{
	 { -1796, 34, -3951, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001090
	 { -1706, 34, -3795, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010A0
	 { -1796, 153, -3951, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010B0
	 { -1706, 153, -3795, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010C0
	 { -2056, 34, -3801, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010D0
	 { -1966, 34, -3645, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010E0
	 { -2056, 153, -3801, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010F0
	 { -1966, 153, -3645, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001100
};

Gfx _ganontika_room_14_dlist_00001110[] =
{
	gsDPPipeSync(), // 0x00001110
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001118
	gsSPVertex(_ganontika_room_14_vertices_00001090, 8, 0), // 0x00001120
	gsSPCullDisplayList(0, 7), // 0x00001128
	gsDPPipeSync(), // 0x00001130
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001138
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001140
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001148
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00001150
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001158
	gsDPLoadSync(), // 0x00001160
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001168
	gsDPPipeSync(), // 0x00001170
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001178
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001180
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001188
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001190
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001198
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000011A0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000011A8
	gsSPVertex(_ganontika_room_14_vertices_00000DA0, 7, 0), // 0x000011B0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000011B8
	gsSP2Triangles(1, 4, 3, 0, 1, 5, 4, 0), // 0x000011C0
	gsSP1Triangle(1, 6, 5, 0), // 0x000011C8
	gsDPPipeSync(), // 0x000011D0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000011D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x000011E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x000011E8
	gsDPLoadSync(), // 0x000011F0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x000011F8
	gsDPPipeSync(), // 0x00001200
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00001208
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00001210
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001218
	gsDPTileSync(), // 0x00001220
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001228
	gsDPLoadSync(), // 0x00001230
	gsDPLoadTLUTCmd(7, 255), // 0x00001238
	gsDPPipeSync(), // 0x00001240
	gsSPVertex(_ganontika_room_14_vertices_00000E10, 4, 0), // 0x00001248
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001250
	gsDPPipeSync(), // 0x00001258
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00001260
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001268
	gsDPLoadSync(), // 0x00001270
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001278
	gsDPPipeSync(), // 0x00001280
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001288
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001290
	gsSPVertex(_ganontika_room_14_vertices_00000E50, 4, 0), // 0x00001298
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000012A0
	gsDPPipeSync(), // 0x000012A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x000012B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x000012B8
	gsDPLoadSync(), // 0x000012C0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x000012C8
	gsDPPipeSync(), // 0x000012D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x000012D8
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x000012E0
	gsSPVertex(_ganontika_room_14_vertices_00000E90, 4, 0), // 0x000012E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000012F0
	gsDPPipeSync(), // 0x000012F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00001300
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001308
	gsDPLoadSync(), // 0x00001310
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001318
	gsDPPipeSync(), // 0x00001320
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001328
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001330
	gsSPVertex(_ganontika_room_14_vertices_00000ED0, 4, 0), // 0x00001338
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001340
	gsDPPipeSync(), // 0x00001348
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00001350
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00001358
	gsDPLoadSync(), // 0x00001360
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00001368
	gsDPPipeSync(), // 0x00001370
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00001378
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00001380
	gsSPVertex(_ganontika_room_14_vertices_00000F10, 4, 0), // 0x00001388
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001390
	gsDPPipeSync(), // 0x00001398
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x000013A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000013A8
	gsDPLoadSync(), // 0x000013B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000013B8
	gsDPPipeSync(), // 0x000013C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000013C8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000013D0
	gsSPVertex(_ganontika_room_14_vertices_00000F50, 4, 0), // 0x000013D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000013E0
	gsDPPipeSync(), // 0x000013E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x000013F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x000013F8
	gsDPLoadSync(), // 0x00001400
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00001408
	gsDPPipeSync(), // 0x00001410
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00001418
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00001420
	gsSPVertex(_ganontika_room_14_vertices_00000F90, 4, 0), // 0x00001428
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001430
	gsDPPipeSync(), // 0x00001438
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00001440
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001448
	gsDPLoadSync(), // 0x00001450
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001458
	gsDPPipeSync(), // 0x00001460
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001468
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001470
	gsSPVertex(_ganontika_room_14_vertices_00000FD0, 4, 0), // 0x00001478
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001480
	gsDPPipeSync(), // 0x00001488
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00001490
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00001498
	gsDPLoadSync(), // 0x000014A0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x000014A8
	gsDPPipeSync(), // 0x000014B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x000014B8
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x000014C0
	gsSPVertex(_ganontika_room_14_vertices_00001010, 4, 0), // 0x000014C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000014D0
	gsDPPipeSync(), // 0x000014D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x000014E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000014E8
	gsDPLoadSync(), // 0x000014F0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000014F8
	gsDPPipeSync(), // 0x00001500
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001508
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001510
	gsSPVertex(_ganontika_room_14_vertices_00001050, 4, 0), // 0x00001518
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001520
	gsSPEndDisplayList(), // 0x00001528
};

Vtx_t _ganontika_room_14_vertices_00001530[12] = 
{
	 { -1968, 153, -3829, 0, 171, 2048, 115, 102, 78, 255 }, // 0x00001530
	 { -1978, 153, -3846, 0, 341, 2048, 115, 102, 78, 255 }, // 0x00001540
	 { -1978, 253, -3846, 0, 341, 341, 69, 62, 48, 255 }, // 0x00001550
	 { -1968, 253, -3829, 0, 171, 341, 69, 62, 48, 255 }, // 0x00001560
	 { -1968, 253, -3829, 0, 512, 0, 69, 62, 48, 255 }, // 0x00001570
	 { -1978, 253, -3846, 0, 512, 341, 69, 62, 48, 255 }, // 0x00001580
	 { -1926, 253, -3876, 0, 1024, 341, 69, 62, 48, 255 }, // 0x00001590
	 { -1916, 253, -3859, 0, 1024, 0, 69, 62, 48, 255 }, // 0x000015A0
	 { -1916, 253, -3859, 0, 171, 341, 69, 62, 48, 255 }, // 0x000015B0
	 { -1926, 253, -3876, 0, 341, 341, 69, 62, 48, 255 }, // 0x000015C0
	 { -1926, 153, -3876, 0, 341, 2048, 115, 102, 78, 255 }, // 0x000015D0
	 { -1916, 153, -3859, 0, 171, 2048, 115, 102, 78, 255 }, // 0x000015E0
};

Vtx_t _ganontika_room_14_vertices_000015F0[8] = 
{
	 { -1926, 153, -3876, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015F0
	 { -1916, 153, -3859, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001600
	 { -1926, 253, -3876, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001610
	 { -1916, 253, -3859, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001620
	 { -1978, 153, -3846, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001630
	 { -1968, 153, -3829, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001640
	 { -1978, 253, -3846, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001650
	 { -1968, 253, -3829, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001660
};

Gfx _ganontika_room_14_dlist_00001670[] =
{
	gsDPPipeSync(), // 0x00001670
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001678
	gsSPVertex(_ganontika_room_14_vertices_000015F0, 8, 0), // 0x00001680
	gsSPCullDisplayList(0, 7), // 0x00001688
	gsDPPipeSync(), // 0x00001690
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001698
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000016A0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000016A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000016B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000016B8
	gsDPLoadSync(), // 0x000016C0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000016C8
	gsDPPipeSync(), // 0x000016D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000016D8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000016E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000016E8
	gsDPTileSync(), // 0x000016F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000016F8
	gsDPLoadSync(), // 0x00001700
	gsDPLoadTLUTCmd(7, 255), // 0x00001708
	gsDPPipeSync(), // 0x00001710
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001718
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001720
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001728
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001730
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001738
	gsSPVertex(_ganontika_room_14_vertices_00001530, 12, 0), // 0x00001740
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001748
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001750
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001758
	gsSPEndDisplayList(), // 0x00001760
};

Vtx_t _ganontika_room_14_vertices_00001768[8] = 
{
	 { -1619, 151, -2483, 0, -497, 205, 203, 195, 178, 255 }, // 0x00001768
	 { -1648, 151, -2374, 0, -883, 977, 189, 178, 157, 255 }, // 0x00001778
	 { -1568, 151, -2235, 0, -497, 2136, 189, 178, 157, 255 }, // 0x00001788
	 { -1459, 151, -2206, 0, 275, 2522, 203, 195, 178, 255 }, // 0x00001798
	 { -1320, 151, -2286, 0, 1434, 2136, 255, 255, 255, 255 }, // 0x000017A8
	 { -1291, 151, -2395, 0, 1820, 1363, 255, 255, 255, 255 }, // 0x000017B8
	 { -1371, 151, -2534, 0, 1434, 205, 255, 255, 255, 255 }, // 0x000017C8
	 { -1480, 151, -2563, 0, 661, -181, 255, 255, 255, 255 }, // 0x000017D8
};

Vtx_t _ganontika_room_14_vertices_000017E8[4] = 
{
	 { -1480, 101, -2563, 0, 0, 0, 147, 131, 97, 255 }, // 0x000017E8
	 { -1480, 34, -2563, 0, 0, 512, 255, 42, 42, 255 }, // 0x000017F8
	 { -1619, 34, -2483, 0, 2048, 512, 255, 42, 42, 255 }, // 0x00001808
	 { -1619, 101, -2483, 0, 2048, 0, 147, 131, 97, 255 }, // 0x00001818
};

Vtx_t _ganontika_room_14_vertices_00001828[4] = 
{
	 { -1480, 151, -2563, 0, 0, 0, 255, 255, 255, 255 }, // 0x00001828
	 { -1480, 101, -2563, 0, 0, 512, 147, 131, 97, 255 }, // 0x00001838
	 { -1619, 101, -2483, 0, 2048, 512, 147, 131, 97, 255 }, // 0x00001848
	 { -1619, 151, -2483, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00001858
};

Vtx_t _ganontika_room_14_vertices_00001868[4] = 
{
	 { -1371, 101, -2534, 0, 0, 0, 147, 131, 97, 255 }, // 0x00001868
	 { -1371, 34, -2534, 0, 0, 512, 255, 42, 42, 255 }, // 0x00001878
	 { -1480, 34, -2563, 0, 1448, 512, 255, 42, 42, 255 }, // 0x00001888
	 { -1480, 101, -2563, 0, 1448, 0, 147, 131, 97, 255 }, // 0x00001898
};

Vtx_t _ganontika_room_14_vertices_000018A8[4] = 
{
	 { -1371, 151, -2534, 0, 0, 0, 255, 255, 255, 255 }, // 0x000018A8
	 { -1371, 101, -2534, 0, 0, 512, 147, 131, 97, 255 }, // 0x000018B8
	 { -1480, 101, -2563, 0, 1448, 512, 147, 131, 97, 255 }, // 0x000018C8
	 { -1480, 151, -2563, 0, 1448, 0, 255, 255, 255, 255 }, // 0x000018D8
};

Vtx_t _ganontika_room_14_vertices_000018E8[4] = 
{
	 { -1291, 101, -2396, 0, 0, 0, 147, 131, 97, 255 }, // 0x000018E8
	 { -1291, 34, -2396, 0, 0, 512, 255, 42, 42, 255 }, // 0x000018F8
	 { -1371, 34, -2534, 0, 2048, 512, 255, 42, 42, 255 }, // 0x00001908
	 { -1371, 101, -2534, 0, 2048, 0, 147, 131, 97, 255 }, // 0x00001918
};

Vtx_t _ganontika_room_14_vertices_00001928[4] = 
{
	 { -1291, 151, -2395, 0, 0, 0, 255, 255, 255, 255 }, // 0x00001928
	 { -1291, 101, -2396, 0, 0, 512, 147, 131, 97, 255 }, // 0x00001938
	 { -1371, 101, -2534, 0, 2048, 512, 147, 131, 97, 255 }, // 0x00001948
	 { -1371, 151, -2534, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00001958
};

Vtx_t _ganontika_room_14_vertices_00001968[4] = 
{
	 { -1320, 101, -2286, 0, 0, 0, 147, 131, 97, 255 }, // 0x00001968
	 { -1320, 34, -2286, 0, 0, 512, 255, 42, 42, 255 }, // 0x00001978
	 { -1291, 34, -2396, 0, 1448, 512, 255, 42, 42, 255 }, // 0x00001988
	 { -1291, 101, -2396, 0, 1448, 0, 147, 131, 97, 255 }, // 0x00001998
};

Vtx_t _ganontika_room_14_vertices_000019A8[4] = 
{
	 { -1320, 151, -2286, 0, 0, 0, 255, 255, 255, 255 }, // 0x000019A8
	 { -1320, 101, -2286, 0, 0, 512, 147, 131, 97, 255 }, // 0x000019B8
	 { -1291, 101, -2396, 0, 1448, 512, 147, 131, 97, 255 }, // 0x000019C8
	 { -1291, 151, -2395, 0, 1448, 0, 255, 255, 255, 255 }, // 0x000019D8
};

Vtx_t _ganontika_room_14_vertices_000019E8[4] = 
{
	 { -1459, 101, -2206, 0, 0, 0, 147, 131, 97, 255 }, // 0x000019E8
	 { -1459, 34, -2206, 0, 0, 512, 255, 42, 42, 255 }, // 0x000019F8
	 { -1320, 34, -2286, 0, 2048, 512, 255, 42, 42, 255 }, // 0x00001A08
	 { -1320, 101, -2286, 0, 2048, 0, 147, 131, 97, 255 }, // 0x00001A18
};

Vtx_t _ganontika_room_14_vertices_00001A28[4] = 
{
	 { -1459, 151, -2206, 0, 0, 0, 255, 255, 255, 255 }, // 0x00001A28
	 { -1459, 101, -2206, 0, 0, 512, 147, 131, 97, 255 }, // 0x00001A38
	 { -1320, 101, -2286, 0, 2048, 512, 147, 131, 97, 255 }, // 0x00001A48
	 { -1320, 151, -2286, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00001A58
};

Vtx_t _ganontika_room_14_vertices_00001A68[4] = 
{
	 { -1568, 101, -2236, 0, 0, 0, 147, 131, 97, 255 }, // 0x00001A68
	 { -1568, 34, -2236, 0, 0, 512, 255, 42, 42, 255 }, // 0x00001A78
	 { -1459, 34, -2206, 0, 1448, 512, 255, 42, 42, 255 }, // 0x00001A88
	 { -1459, 101, -2206, 0, 1448, 0, 147, 131, 97, 255 }, // 0x00001A98
};

Vtx_t _ganontika_room_14_vertices_00001AA8[4] = 
{
	 { -1568, 151, -2235, 0, 0, 0, 255, 255, 255, 255 }, // 0x00001AA8
	 { -1568, 101, -2236, 0, 0, 512, 147, 131, 97, 255 }, // 0x00001AB8
	 { -1459, 101, -2206, 0, 1448, 512, 147, 131, 97, 255 }, // 0x00001AC8
	 { -1459, 151, -2206, 0, 1448, 0, 255, 255, 255, 255 }, // 0x00001AD8
};

Vtx_t _ganontika_room_14_vertices_00001AE8[4] = 
{
	 { -1648, 101, -2374, 0, 0, 0, 147, 131, 97, 255 }, // 0x00001AE8
	 { -1648, 34, -2374, 0, 0, 512, 255, 42, 42, 255 }, // 0x00001AF8
	 { -1568, 34, -2236, 0, 2048, 512, 255, 42, 42, 255 }, // 0x00001B08
	 { -1568, 101, -2236, 0, 2048, 0, 147, 131, 97, 255 }, // 0x00001B18
};

Vtx_t _ganontika_room_14_vertices_00001B28[4] = 
{
	 { -1648, 151, -2374, 0, 0, 0, 255, 255, 255, 255 }, // 0x00001B28
	 { -1648, 101, -2374, 0, 0, 512, 147, 131, 97, 255 }, // 0x00001B38
	 { -1568, 101, -2236, 0, 2048, 512, 147, 131, 97, 255 }, // 0x00001B48
	 { -1568, 151, -2235, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00001B58
};

Vtx_t _ganontika_room_14_vertices_00001B68[4] = 
{
	 { -1619, 101, -2483, 0, 0, 0, 147, 131, 97, 255 }, // 0x00001B68
	 { -1619, 34, -2483, 0, 0, 512, 255, 42, 42, 255 }, // 0x00001B78
	 { -1648, 34, -2374, 0, 1448, 512, 255, 42, 42, 255 }, // 0x00001B88
	 { -1648, 101, -2374, 0, 1448, 0, 147, 131, 97, 255 }, // 0x00001B98
};

Vtx_t _ganontika_room_14_vertices_00001BA8[4] = 
{
	 { -1619, 151, -2483, 0, 0, 0, 255, 255, 255, 255 }, // 0x00001BA8
	 { -1619, 101, -2483, 0, 0, 512, 147, 131, 97, 255 }, // 0x00001BB8
	 { -1648, 101, -2374, 0, 1448, 512, 147, 131, 97, 255 }, // 0x00001BC8
	 { -1648, 151, -2374, 0, 1448, 0, 255, 255, 255, 255 }, // 0x00001BD8
};

Vtx_t _ganontika_room_14_vertices_00001BE8[8] = 
{
	 { -1411, 34, -2603, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001BE8
	 { -1251, 34, -2326, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001BF8
	 { -1411, 151, -2603, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001C08
	 { -1251, 151, -2326, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001C18
	 { -1688, 34, -2443, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001C28
	 { -1528, 34, -2166, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001C38
	 { -1688, 151, -2443, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001C48
	 { -1528, 151, -2166, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001C58
};

Gfx _ganontika_room_14_dlist_00001C68[] =
{
	gsDPPipeSync(), // 0x00001C68
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001C70
	gsSPVertex(_ganontika_room_14_vertices_00001BE8, 8, 0), // 0x00001C78
	gsSPCullDisplayList(0, 7), // 0x00001C80
	gsDPPipeSync(), // 0x00001C88
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001C90
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001C98
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001CA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00001CA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001CB0
	gsDPLoadSync(), // 0x00001CB8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001CC0
	gsDPPipeSync(), // 0x00001CC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001CD0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001CD8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001CE0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001CE8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001CF0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001CF8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001D00
	gsSPVertex(_ganontika_room_14_vertices_00001768, 8, 0), // 0x00001D08
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001D10
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00001D18
	gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0), // 0x00001D20
	gsDPPipeSync(), // 0x00001D28
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001D30
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00001D38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001D40
	gsDPLoadSync(), // 0x00001D48
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001D50
	gsDPPipeSync(), // 0x00001D58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001D60
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001D68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001D70
	gsDPTileSync(), // 0x00001D78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001D80
	gsDPLoadSync(), // 0x00001D88
	gsDPLoadTLUTCmd(7, 255), // 0x00001D90
	gsDPPipeSync(), // 0x00001D98
	gsSPVertex(_ganontika_room_14_vertices_000017E8, 4, 0), // 0x00001DA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001DA8
	gsDPPipeSync(), // 0x00001DB0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00001DB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00001DC0
	gsDPLoadSync(), // 0x00001DC8
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00001DD0
	gsDPPipeSync(), // 0x00001DD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00001DE0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00001DE8
	gsSPVertex(_ganontika_room_14_vertices_00001828, 4, 0), // 0x00001DF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001DF8
	gsDPPipeSync(), // 0x00001E00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00001E08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001E10
	gsDPLoadSync(), // 0x00001E18
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001E20
	gsDPPipeSync(), // 0x00001E28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001E30
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001E38
	gsSPVertex(_ganontika_room_14_vertices_00001868, 4, 0), // 0x00001E40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001E48
	gsDPPipeSync(), // 0x00001E50
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00001E58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00001E60
	gsDPLoadSync(), // 0x00001E68
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00001E70
	gsDPPipeSync(), // 0x00001E78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00001E80
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00001E88
	gsSPVertex(_ganontika_room_14_vertices_000018A8, 4, 0), // 0x00001E90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001E98
	gsDPPipeSync(), // 0x00001EA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00001EA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001EB0
	gsDPLoadSync(), // 0x00001EB8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001EC0
	gsDPPipeSync(), // 0x00001EC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001ED0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001ED8
	gsSPVertex(_ganontika_room_14_vertices_000018E8, 4, 0), // 0x00001EE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001EE8
	gsDPPipeSync(), // 0x00001EF0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00001EF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00001F00
	gsDPLoadSync(), // 0x00001F08
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00001F10
	gsDPPipeSync(), // 0x00001F18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00001F20
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00001F28
	gsSPVertex(_ganontika_room_14_vertices_00001928, 4, 0), // 0x00001F30
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001F38
	gsDPPipeSync(), // 0x00001F40
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00001F48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001F50
	gsDPLoadSync(), // 0x00001F58
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001F60
	gsDPPipeSync(), // 0x00001F68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001F70
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001F78
	gsSPVertex(_ganontika_room_14_vertices_00001968, 4, 0), // 0x00001F80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001F88
	gsDPPipeSync(), // 0x00001F90
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00001F98
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00001FA0
	gsDPLoadSync(), // 0x00001FA8
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00001FB0
	gsDPPipeSync(), // 0x00001FB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00001FC0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00001FC8
	gsSPVertex(_ganontika_room_14_vertices_000019A8, 4, 0), // 0x00001FD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001FD8
	gsDPPipeSync(), // 0x00001FE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00001FE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001FF0
	gsDPLoadSync(), // 0x00001FF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002000
	gsDPPipeSync(), // 0x00002008
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002010
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002018
	gsSPVertex(_ganontika_room_14_vertices_000019E8, 4, 0), // 0x00002020
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002028
	gsDPPipeSync(), // 0x00002030
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00002038
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00002040
	gsDPLoadSync(), // 0x00002048
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00002050
	gsDPPipeSync(), // 0x00002058
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00002060
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002068
	gsSPVertex(_ganontika_room_14_vertices_00001A28, 4, 0), // 0x00002070
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002078
	gsDPPipeSync(), // 0x00002080
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00002088
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002090
	gsDPLoadSync(), // 0x00002098
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000020A0
	gsDPPipeSync(), // 0x000020A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000020B0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000020B8
	gsSPVertex(_ganontika_room_14_vertices_00001A68, 4, 0), // 0x000020C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000020C8
	gsDPPipeSync(), // 0x000020D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x000020D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x000020E0
	gsDPLoadSync(), // 0x000020E8
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x000020F0
	gsDPPipeSync(), // 0x000020F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00002100
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002108
	gsSPVertex(_ganontika_room_14_vertices_00001AA8, 4, 0), // 0x00002110
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002118
	gsDPPipeSync(), // 0x00002120
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00002128
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002130
	gsDPLoadSync(), // 0x00002138
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002140
	gsDPPipeSync(), // 0x00002148
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002150
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002158
	gsSPVertex(_ganontika_room_14_vertices_00001AE8, 4, 0), // 0x00002160
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002168
	gsDPPipeSync(), // 0x00002170
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00002178
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00002180
	gsDPLoadSync(), // 0x00002188
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00002190
	gsDPPipeSync(), // 0x00002198
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x000021A0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x000021A8
	gsSPVertex(_ganontika_room_14_vertices_00001B28, 4, 0), // 0x000021B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000021B8
	gsDPPipeSync(), // 0x000021C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x000021C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000021D0
	gsDPLoadSync(), // 0x000021D8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000021E0
	gsDPPipeSync(), // 0x000021E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000021F0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000021F8
	gsSPVertex(_ganontika_room_14_vertices_00001B68, 4, 0), // 0x00002200
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002208
	gsDPPipeSync(), // 0x00002210
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00002218
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00002220
	gsDPLoadSync(), // 0x00002228
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00002230
	gsDPPipeSync(), // 0x00002238
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00002240
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002248
	gsSPVertex(_ganontika_room_14_vertices_00001BA8, 4, 0), // 0x00002250
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002258
	gsSPEndDisplayList(), // 0x00002260
};

Vtx_t _ganontika_room_14_vertices_00002268[4] = 
{
	 { -917, 102, -3789, 0, 0, 0, 147, 131, 97, 255 }, // 0x00002268
	 { -917, 34, -3789, 0, 0, 512, 254, 15, 15, 255 }, // 0x00002278
	 { -1039, 34, -3719, 0, 2048, 512, 254, 15, 15, 255 }, // 0x00002288
	 { -1039, 102, -3719, 0, 2048, 0, 147, 131, 97, 255 }, // 0x00002298
};

Vtx_t _ganontika_room_14_vertices_000022A8[4] = 
{
	 { -917, 152, -3789, 0, 0, 0, 134, 119, 89, 255 }, // 0x000022A8
	 { -917, 102, -3789, 0, 0, 512, 147, 131, 97, 255 }, // 0x000022B8
	 { -1039, 102, -3719, 0, 2048, 512, 147, 131, 97, 255 }, // 0x000022C8
	 { -1039, 152, -3719, 0, 2048, 0, 255, 255, 255, 255 }, // 0x000022D8
};

Vtx_t _ganontika_room_14_vertices_000022E8[4] = 
{
	 { -919, 102, -3511, 0, 0, 0, 147, 131, 97, 255 }, // 0x000022E8
	 { -919, 34, -3511, 0, 0, 512, 254, 15, 15, 255 }, // 0x000022F8
	 { -797, 34, -3581, 0, 2048, 512, 254, 15, 15, 255 }, // 0x00002308
	 { -797, 102, -3581, 0, 2048, 0, 147, 131, 97, 255 }, // 0x00002318
};

Vtx_t _ganontika_room_14_vertices_00002328[4] = 
{
	 { -919, 152, -3511, 0, 0, 0, 255, 255, 255, 255 }, // 0x00002328
	 { -919, 102, -3511, 0, 0, 512, 147, 131, 97, 255 }, // 0x00002338
	 { -797, 102, -3581, 0, 2048, 512, 147, 131, 97, 255 }, // 0x00002348
	 { -797, 152, -3581, 0, 2048, 0, 134, 119, 89, 255 }, // 0x00002358
};

Vtx_t _ganontika_room_14_vertices_00002368[4] = 
{
	 { -1001, 102, -3533, 0, 0, 0, 147, 131, 97, 255 }, // 0x00002368
	 { -1001, 34, -3533, 0, 0, 512, 254, 15, 15, 255 }, // 0x00002378
	 { -919, 34, -3511, 0, 1448, 512, 254, 15, 15, 255 }, // 0x00002388
	 { -919, 102, -3511, 0, 1448, 0, 147, 131, 97, 255 }, // 0x00002398
};

Vtx_t _ganontika_room_14_vertices_000023A8[4] = 
{
	 { -1001, 152, -3533, 0, 0, 0, 255, 255, 255, 255 }, // 0x000023A8
	 { -1001, 102, -3533, 0, 0, 512, 147, 131, 97, 255 }, // 0x000023B8
	 { -919, 102, -3511, 0, 1448, 512, 147, 131, 97, 255 }, // 0x000023C8
	 { -919, 152, -3511, 0, 1448, 0, 255, 255, 255, 255 }, // 0x000023D8
};

Vtx_t _ganontika_room_14_vertices_000023E8[4] = 
{
	 { -1061, 102, -3637, 0, 0, 0, 147, 131, 97, 255 }, // 0x000023E8
	 { -1061, 34, -3637, 0, 0, 512, 254, 15, 15, 255 }, // 0x000023F8
	 { -1001, 34, -3533, 0, 2048, 512, 254, 15, 15, 255 }, // 0x00002408
	 { -1001, 102, -3533, 0, 2048, 0, 147, 131, 97, 255 }, // 0x00002418
};

Vtx_t _ganontika_room_14_vertices_00002428[4] = 
{
	 { -1061, 152, -3637, 0, 0, 0, 255, 255, 255, 255 }, // 0x00002428
	 { -1061, 102, -3637, 0, 0, 512, 147, 131, 97, 255 }, // 0x00002438
	 { -1001, 102, -3533, 0, 2048, 512, 147, 131, 97, 255 }, // 0x00002448
	 { -1001, 152, -3533, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00002458
};

Vtx_t _ganontika_room_14_vertices_00002468[4] = 
{
	 { -1039, 102, -3719, 0, 0, 0, 147, 131, 97, 255 }, // 0x00002468
	 { -1039, 34, -3719, 0, 0, 512, 254, 15, 15, 255 }, // 0x00002478
	 { -1061, 34, -3637, 0, 1448, 512, 254, 15, 15, 255 }, // 0x00002488
	 { -1061, 102, -3637, 0, 1448, 0, 147, 131, 97, 255 }, // 0x00002498
};

Vtx_t _ganontika_room_14_vertices_000024A8[8] = 
{
	 { -1039, 152, -3719, 0, 0, 0, 255, 255, 255, 255 }, // 0x000024A8
	 { -1039, 102, -3719, 0, 0, 512, 147, 131, 97, 255 }, // 0x000024B8
	 { -1061, 102, -3637, 0, 1448, 512, 147, 131, 97, 255 }, // 0x000024C8
	 { -1061, 152, -3637, 0, 1448, 0, 255, 255, 255, 255 }, // 0x000024D8
	 { -835, 152, -3767, 0, 1448, 0, 169, 154, 126, 255 }, // 0x000024E8
	 { -835, 102, -3767, 0, 1448, 512, 147, 131, 97, 255 }, // 0x000024F8
	 { -917, 102, -3789, 0, 0, 512, 147, 131, 97, 255 }, // 0x00002508
	 { -917, 152, -3789, 0, 0, 0, 169, 154, 126, 255 }, // 0x00002518
};

Vtx_t _ganontika_room_14_vertices_00002528[4] = 
{
	 { -835, 102, -3767, 0, 1448, 0, 147, 131, 97, 255 }, // 0x00002528
	 { -836, 34, -3767, 0, 1448, 512, 254, 15, 15, 255 }, // 0x00002538
	 { -917, 34, -3789, 0, 0, 512, 254, 15, 15, 255 }, // 0x00002548
	 { -917, 102, -3789, 0, 0, 0, 147, 131, 97, 255 }, // 0x00002558
};

Vtx_t _ganontika_room_14_vertices_00002568[4] = 
{
	 { -775, 152, -3663, 0, 2048, 0, 158, 142, 111, 255 }, // 0x00002568
	 { -775, 102, -3663, 0, 2048, 512, 147, 131, 97, 255 }, // 0x00002578
	 { -835, 102, -3767, 0, 0, 512, 147, 131, 97, 255 }, // 0x00002588
	 { -835, 152, -3767, 0, 0, 0, 158, 142, 111, 255 }, // 0x00002598
};

Vtx_t _ganontika_room_14_vertices_000025A8[4] = 
{
	 { -775, 102, -3663, 0, 2048, 0, 147, 131, 97, 255 }, // 0x000025A8
	 { -775, 34, -3663, 0, 2048, 512, 254, 15, 15, 255 }, // 0x000025B8
	 { -836, 34, -3767, 0, 0, 512, 254, 15, 15, 255 }, // 0x000025C8
	 { -835, 102, -3767, 0, 0, 0, 147, 131, 97, 255 }, // 0x000025D8
};

Vtx_t _ganontika_room_14_vertices_000025E8[4] = 
{
	 { -797, 152, -3581, 0, 1448, 0, 169, 154, 126, 255 }, // 0x000025E8
	 { -797, 102, -3581, 0, 1448, 512, 147, 131, 97, 255 }, // 0x000025F8
	 { -775, 102, -3663, 0, 0, 512, 147, 131, 97, 255 }, // 0x00002608
	 { -775, 152, -3663, 0, 0, 0, 169, 154, 126, 255 }, // 0x00002618
};

Vtx_t _ganontika_room_14_vertices_00002628[4] = 
{
	 { -797, 102, -3581, 0, 1448, 0, 147, 131, 97, 255 }, // 0x00002628
	 { -797, 34, -3581, 0, 1448, 512, 254, 15, 15, 255 }, // 0x00002638
	 { -775, 34, -3663, 0, 0, 512, 254, 15, 15, 255 }, // 0x00002648
	 { -775, 102, -3663, 0, 0, 0, 147, 131, 97, 255 }, // 0x00002658
};

Vtx_t _ganontika_room_14_vertices_00002668[9] = 
{
	 { -797, 152, -3581, 0, 1563, 1293, 134, 119, 89, 255 }, // 0x00002668
	 { -918, 152, -3650, 0, 614, 819, 203, 195, 178, 255 }, // 0x00002678
	 { -919, 152, -3511, 0, 668, 1878, 255, 255, 255, 255 }, // 0x00002688
	 { -1001, 152, -3533, 0, 35, 1745, 255, 255, 255, 255 }, // 0x00002698
	 { -1061, 152, -3637, 0, -467, 979, 255, 255, 255, 255 }, // 0x000026A8
	 { -1039, 152, -3719, 0, -334, 345, 255, 255, 255, 255 }, // 0x000026B8
	 { -775, 152, -3663, 0, 1695, 659, 189, 178, 157, 255 }, // 0x000026C8
	 { -835, 152, -3767, 0, 1194, -107, 189, 178, 157, 255 }, // 0x000026D8
	 { -917, 152, -3789, 0, 560, -240, 134, 119, 89, 255 }, // 0x000026E8
};

Vtx_t _ganontika_room_14_vertices_000026F8[8] = 
{
	 { -865, 34, -3819, 0, 0, 0, 0, 0, 0, 0 }, // 0x000026F8
	 { -745, 34, -3611, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002708
	 { -865, 152, -3819, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002718
	 { -745, 152, -3611, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002728
	 { -1091, 34, -3689, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002738
	 { -971, 34, -3481, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002748
	 { -1091, 152, -3689, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002758
	 { -971, 152, -3481, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002768
};

Gfx _ganontika_room_14_dlist_00002778[] =
{
	gsDPPipeSync(), // 0x00002778
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002780
	gsSPVertex(_ganontika_room_14_vertices_000026F8, 8, 0), // 0x00002788
	gsSPCullDisplayList(0, 7), // 0x00002790
	gsDPPipeSync(), // 0x00002798
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000027A0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000027A8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000027B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x000027B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000027C0
	gsDPLoadSync(), // 0x000027C8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000027D0
	gsDPPipeSync(), // 0x000027D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000027E0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000027E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000027F0
	gsDPTileSync(), // 0x000027F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002800
	gsDPLoadSync(), // 0x00002808
	gsDPLoadTLUTCmd(7, 255), // 0x00002810
	gsDPPipeSync(), // 0x00002818
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002820
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002828
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002830
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002838
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002840
	gsSPVertex(_ganontika_room_14_vertices_00002268, 4, 0), // 0x00002848
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002850
	gsDPPipeSync(), // 0x00002858
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00002860
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00002868
	gsDPLoadSync(), // 0x00002870
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00002878
	gsDPPipeSync(), // 0x00002880
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00002888
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002890
	gsSPVertex(_ganontika_room_14_vertices_000022A8, 4, 0), // 0x00002898
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000028A0
	gsDPPipeSync(), // 0x000028A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x000028B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000028B8
	gsDPLoadSync(), // 0x000028C0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000028C8
	gsDPPipeSync(), // 0x000028D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000028D8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000028E0
	gsSPVertex(_ganontika_room_14_vertices_000022E8, 4, 0), // 0x000028E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000028F0
	gsDPPipeSync(), // 0x000028F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00002900
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00002908
	gsDPLoadSync(), // 0x00002910
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00002918
	gsDPPipeSync(), // 0x00002920
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00002928
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002930
	gsSPVertex(_ganontika_room_14_vertices_00002328, 4, 0), // 0x00002938
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002940
	gsDPPipeSync(), // 0x00002948
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00002950
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002958
	gsDPLoadSync(), // 0x00002960
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002968
	gsDPPipeSync(), // 0x00002970
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002978
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002980
	gsSPVertex(_ganontika_room_14_vertices_00002368, 4, 0), // 0x00002988
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002990
	gsDPPipeSync(), // 0x00002998
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x000029A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x000029A8
	gsDPLoadSync(), // 0x000029B0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x000029B8
	gsDPPipeSync(), // 0x000029C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x000029C8
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x000029D0
	gsSPVertex(_ganontika_room_14_vertices_000023A8, 4, 0), // 0x000029D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000029E0
	gsDPPipeSync(), // 0x000029E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x000029F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000029F8
	gsDPLoadSync(), // 0x00002A00
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002A08
	gsDPPipeSync(), // 0x00002A10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002A18
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002A20
	gsSPVertex(_ganontika_room_14_vertices_000023E8, 4, 0), // 0x00002A28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002A30
	gsDPPipeSync(), // 0x00002A38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00002A40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00002A48
	gsDPLoadSync(), // 0x00002A50
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00002A58
	gsDPPipeSync(), // 0x00002A60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00002A68
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002A70
	gsSPVertex(_ganontika_room_14_vertices_00002428, 4, 0), // 0x00002A78
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002A80
	gsDPPipeSync(), // 0x00002A88
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00002A90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002A98
	gsDPLoadSync(), // 0x00002AA0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002AA8
	gsDPPipeSync(), // 0x00002AB0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002AB8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002AC0
	gsSPVertex(_ganontika_room_14_vertices_00002468, 4, 0), // 0x00002AC8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002AD0
	gsDPPipeSync(), // 0x00002AD8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00002AE0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00002AE8
	gsDPLoadSync(), // 0x00002AF0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00002AF8
	gsDPPipeSync(), // 0x00002B00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00002B08
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002B10
	gsSPVertex(_ganontika_room_14_vertices_000024A8, 8, 0), // 0x00002B18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002B20
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002B28
	gsDPPipeSync(), // 0x00002B30
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00002B38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002B40
	gsDPLoadSync(), // 0x00002B48
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002B50
	gsDPPipeSync(), // 0x00002B58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002B60
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002B68
	gsSPVertex(_ganontika_room_14_vertices_00002528, 4, 0), // 0x00002B70
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002B78
	gsDPPipeSync(), // 0x00002B80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00002B88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00002B90
	gsDPLoadSync(), // 0x00002B98
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00002BA0
	gsDPPipeSync(), // 0x00002BA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00002BB0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002BB8
	gsSPVertex(_ganontika_room_14_vertices_00002568, 4, 0), // 0x00002BC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002BC8
	gsDPPipeSync(), // 0x00002BD0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00002BD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002BE0
	gsDPLoadSync(), // 0x00002BE8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002BF0
	gsDPPipeSync(), // 0x00002BF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002C00
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002C08
	gsSPVertex(_ganontika_room_14_vertices_000025A8, 4, 0), // 0x00002C10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002C18
	gsDPPipeSync(), // 0x00002C20
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00002C28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00002C30
	gsDPLoadSync(), // 0x00002C38
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00002C40
	gsDPPipeSync(), // 0x00002C48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00002C50
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002C58
	gsSPVertex(_ganontika_room_14_vertices_000025E8, 4, 0), // 0x00002C60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002C68
	gsDPPipeSync(), // 0x00002C70
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00002C78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002C80
	gsDPLoadSync(), // 0x00002C88
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002C90
	gsDPPipeSync(), // 0x00002C98
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002CA0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002CA8
	gsSPVertex(_ganontika_room_14_vertices_00002628, 4, 0), // 0x00002CB0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002CB8
	gsDPPipeSync(), // 0x00002CC0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002CC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00002CD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002CD8
	gsDPLoadSync(), // 0x00002CE0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002CE8
	gsDPPipeSync(), // 0x00002CF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002CF8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002D00
	gsSPVertex(_ganontika_room_14_vertices_00002668, 9, 0), // 0x00002D08
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002D10
	gsSP2Triangles(1, 4, 3, 0, 1, 5, 4, 0), // 0x00002D18
	gsSP2Triangles(0, 6, 1, 0, 6, 7, 1, 0), // 0x00002D20
	gsSP2Triangles(7, 8, 1, 0, 8, 5, 1, 0), // 0x00002D28
	gsSPEndDisplayList(), // 0x00002D30
};

Vtx_t _ganontika_room_14_vertices_00002D38[4] = 
{
	 { -1477, 152, -2958, 0, -1448, 2990, 234, 231, 223, 255 }, // 0x00002D38
	 { -1497, 152, -2992, 0, -1106, 3331, 234, 231, 223, 255 }, // 0x00002D48
	 { -1670, 152, -2892, 0, 600, 1624, 234, 231, 223, 255 }, // 0x00002D58
	 { -1650, 152, -2858, 0, 259, 1283, 234, 231, 223, 255 }, // 0x00002D68
};

Vtx_t _ganontika_room_14_vertices_00002D78[4] = 
{
	 { -1650, 102, -2858, 0, 0, 0, 158, 142, 111, 255 }, // 0x00002D78
	 { -1650, 34, -2858, 0, 0, 512, 243, 48, 0, 255 }, // 0x00002D88
	 { -1477, 34, -2958, 0, 3413, 512, 255, 42, 42, 255 }, // 0x00002D98
	 { -1477, 102, -2958, 0, 3413, 0, 147, 131, 97, 255 }, // 0x00002DA8
};

Vtx_t _ganontika_room_14_vertices_00002DB8[4] = 
{
	 { -1650, 152, -2858, 0, 0, 0, 255, 255, 255, 255 }, // 0x00002DB8
	 { -1650, 102, -2858, 0, 0, 512, 158, 142, 111, 255 }, // 0x00002DC8
	 { -1477, 102, -2958, 0, 3413, 512, 147, 131, 97, 255 }, // 0x00002DD8
	 { -1477, 152, -2958, 0, 3413, 0, 255, 255, 255, 255 }, // 0x00002DE8
};

Vtx_t _ganontika_room_14_vertices_00002DF8[4] = 
{
	 { -1497, 102, -2992, 0, 0, 0, 147, 131, 97, 255 }, // 0x00002DF8
	 { -1497, 34, -2993, 0, 0, 512, 255, 42, 42, 255 }, // 0x00002E08
	 { -1670, 34, -2893, 0, 3413, 512, 243, 48, 0, 255 }, // 0x00002E18
	 { -1670, 102, -2892, 0, 3413, 0, 158, 142, 111, 255 }, // 0x00002E28
};

Vtx_t _ganontika_room_14_vertices_00002E38[4] = 
{
	 { -1497, 152, -2992, 0, 0, 0, 255, 255, 255, 255 }, // 0x00002E38
	 { -1497, 102, -2992, 0, 0, 512, 147, 131, 97, 255 }, // 0x00002E48
	 { -1670, 102, -2892, 0, 3413, 512, 158, 142, 111, 255 }, // 0x00002E58
	 { -1670, 152, -2892, 0, 3413, 0, 255, 255, 255, 255 }, // 0x00002E68
};

Vtx_t _ganontika_room_14_vertices_00002E78[4] = 
{
	 { -1477, 102, -2958, 0, 0, 0, 147, 131, 97, 255 }, // 0x00002E78
	 { -1477, 34, -2958, 0, 0, 512, 255, 42, 42, 255 }, // 0x00002E88
	 { -1497, 34, -2993, 0, 683, 512, 255, 42, 42, 255 }, // 0x00002E98
	 { -1497, 102, -2992, 0, 683, 0, 147, 131, 97, 255 }, // 0x00002EA8
};

Vtx_t _ganontika_room_14_vertices_00002EB8[4] = 
{
	 { -1477, 152, -2958, 0, 0, 0, 255, 255, 255, 255 }, // 0x00002EB8
	 { -1477, 102, -2958, 0, 0, 512, 147, 131, 97, 255 }, // 0x00002EC8
	 { -1497, 102, -2992, 0, 683, 512, 147, 131, 97, 255 }, // 0x00002ED8
	 { -1497, 152, -2992, 0, 683, 0, 255, 255, 255, 255 }, // 0x00002EE8
};

Vtx_t _ganontika_room_14_vertices_00002EF8[8] = 
{
	 { -1685, 102, -2918, 0, 0, 0, 147, 131, 97, 255 }, // 0x00002EF8
	 { -1685, 34, -2918, 0, 0, 512, 255, 42, 42, 255 }, // 0x00002F08
	 { -1754, 34, -2878, 0, 1024, 512, 254, 15, 15, 255 }, // 0x00002F18
	 { -1754, 102, -2878, 0, 1024, 0, 169, 154, 126, 255 }, // 0x00002F28
	 { -1754, 34, -2878, 0, 1, 1127, 254, 15, 15, 255 }, // 0x00002F38
	 { -1823, 34, -2838, 0, 1640, 1127, 254, 15, 15, 255 }, // 0x00002F48
	 { -1823, 102, -2838, 0, 1640, 717, 147, 131, 97, 255 }, // 0x00002F58
	 { -1754, 102, -2878, 0, 1, 717, 169, 154, 126, 255 }, // 0x00002F68
};

Vtx_t _ganontika_room_14_vertices_00002F78[4] = 
{
	 { -1685, 152, -2918, 0, 0, 0, 255, 255, 255, 255 }, // 0x00002F78
	 { -1685, 102, -2918, 0, 0, 512, 147, 131, 97, 255 }, // 0x00002F88
	 { -1754, 102, -2878, 0, 1024, 512, 169, 154, 126, 255 }, // 0x00002F98
	 { -1754, 152, -2878, 0, 1024, 0, 169, 154, 126, 255 }, // 0x00002FA8
};

Vtx_t _ganontika_room_14_vertices_00002FB8[8] = 
{
	 { -1635, 102, -2832, 0, 0, 0, 147, 131, 97, 255 }, // 0x00002FB8
	 { -1635, 34, -2832, 0, 0, 512, 255, 42, 42, 255 }, // 0x00002FC8
	 { -1650, 34, -2858, 0, 512, 512, 243, 48, 0, 255 }, // 0x00002FD8
	 { -1650, 102, -2858, 0, 512, 0, 158, 142, 111, 255 }, // 0x00002FE8
	 { -1670, 34, -2893, 0, 1536, 512, 243, 48, 0, 255 }, // 0x00002FF8
	 { -1685, 34, -2918, 0, 2048, 512, 255, 42, 42, 255 }, // 0x00003008
	 { -1685, 102, -2918, 0, 2048, 0, 147, 131, 97, 255 }, // 0x00003018
	 { -1670, 102, -2892, 0, 1536, 0, 158, 142, 111, 255 }, // 0x00003028
};

Vtx_t _ganontika_room_14_vertices_00003038[8] = 
{
	 { -1635, 152, -2832, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003038
	 { -1635, 102, -2832, 0, 0, 512, 147, 131, 97, 255 }, // 0x00003048
	 { -1650, 102, -2858, 0, 512, 512, 158, 142, 111, 255 }, // 0x00003058
	 { -1650, 152, -2858, 0, 512, 0, 255, 255, 255, 255 }, // 0x00003068
	 { -1670, 102, -2892, 0, 1536, 512, 158, 142, 111, 255 }, // 0x00003078
	 { -1685, 102, -2918, 0, 2048, 512, 147, 131, 97, 255 }, // 0x00003088
	 { -1685, 152, -2918, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003098
	 { -1670, 152, -2892, 0, 1536, 0, 255, 255, 255, 255 }, // 0x000030A8
};

Vtx_t _ganontika_room_14_vertices_000030B8[8] = 
{
	 { -1773, 102, -2752, 0, 0, 717, 147, 131, 97, 255 }, // 0x000030B8
	 { -1773, 34, -2752, 0, 0, 1126, 254, 15, 15, 255 }, // 0x000030C8
	 { -1704, 34, -2792, 0, 1639, 1126, 254, 15, 15, 255 }, // 0x000030D8
	 { -1704, 102, -2792, 0, 1639, 717, 169, 154, 126, 255 }, // 0x000030E8
	 { -1704, 34, -2792, 0, 1024, 512, 254, 15, 15, 255 }, // 0x000030F8
	 { -1635, 34, -2832, 0, 2048, 512, 255, 42, 42, 255 }, // 0x00003108
	 { -1635, 102, -2832, 0, 2048, 0, 147, 131, 97, 255 }, // 0x00003118
	 { -1704, 102, -2792, 0, 1024, 0, 169, 154, 126, 255 }, // 0x00003128
};

Vtx_t _ganontika_room_14_vertices_00003138[4] = 
{
	 { -1704, 102, -2792, 0, 1024, 512, 169, 154, 126, 255 }, // 0x00003138
	 { -1635, 102, -2832, 0, 2048, 512, 147, 131, 97, 255 }, // 0x00003148
	 { -1635, 152, -2832, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003158
	 { -1704, 152, -2792, 0, 1024, 0, 169, 154, 126, 255 }, // 0x00003168
};

Vtx_t _ganontika_room_14_vertices_00003178[15] = 
{
	 { -1823, 222, -2838, 0, 541, 2019, 234, 231, 223, 255 }, // 0x00003178
	 { -1704, 222, -2791, 0, -995, 1848, 234, 231, 223, 255 }, // 0x00003188
	 { -1754, 222, -2878, 0, -142, 2702, 255, 255, 255, 255 }, // 0x00003198
	 { -1704, 152, -2792, 0, 683, 341, 169, 154, 126, 255 }, // 0x000031A8
	 { -1685, 152, -2918, 0, 853, 1877, 234, 231, 223, 255 }, // 0x000031B8
	 { -1754, 152, -2878, 0, 1536, 1195, 169, 154, 126, 255 }, // 0x000031C8
	 { -1635, 152, -2832, 0, 0, 1024, 234, 231, 223, 255 }, // 0x000031D8
	 { -1685, 152, -2918, 0, 853, 1877, 234, 231, 223, 255 }, // 0x000031E8
	 { -1773, 222, -2751, 0, -312, 1166, 234, 231, 223, 255 }, // 0x000031F8
	 { -1923, 222, -2838, 0, 1707, 1707, 255, 255, 255, 255 }, // 0x00003208
	 { -1973, 222, -2751, 0, 2019, 541, 255, 255, 255, 255 }, // 0x00003218
	 { -1923, 222, -2665, 0, 1166, -312, 255, 255, 255, 255 }, // 0x00003228
	 { -1823, 222, -2665, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003238
	 { -1773, 222, -2751, 0, -312, 1166, 255, 255, 255, 255 }, // 0x00003248
	 { -1823, 222, -2838, 0, 541, 2019, 255, 255, 255, 255 }, // 0x00003258
};

Vtx_t _ganontika_room_14_vertices_00003268[4] = 
{
	 { -1973, 172, -2751, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003268
	 { -1973, 34, -2752, 0, 0, 1128, 254, 15, 15, 255 }, // 0x00003278
	 { -1923, 34, -2665, 0, 2048, 1127, 254, 15, 15, 255 }, // 0x00003288
	 { -1923, 172, -2665, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003298
};

Vtx_t _ganontika_room_14_vertices_000032A8[4] = 
{
	 { -1973, 222, -2751, 0, 0, 0, 255, 255, 255, 255 }, // 0x000032A8
	 { -1973, 172, -2751, 0, 0, 510, 255, 255, 255, 255 }, // 0x000032B8
	 { -1923, 172, -2665, 0, 2048, 510, 255, 255, 255, 255 }, // 0x000032C8
	 { -1923, 222, -2665, 0, 2048, -1, 255, 255, 255, 255 }, // 0x000032D8
};

Vtx_t _ganontika_room_14_vertices_000032E8[4] = 
{
	 { -1923, 172, -2838, 0, 0, 0, 255, 255, 255, 255 }, // 0x000032E8
	 { -1923, 34, -2838, 0, 0, 1129, 254, 15, 15, 255 }, // 0x000032F8
	 { -1973, 34, -2752, 0, 2048, 1128, 254, 15, 15, 255 }, // 0x00003308
	 { -1973, 172, -2751, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003318
};

Vtx_t _ganontika_room_14_vertices_00003328[4] = 
{
	 { -1923, 222, -2838, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003328
	 { -1923, 172, -2838, 0, 0, 510, 255, 255, 255, 255 }, // 0x00003338
	 { -1973, 172, -2751, 0, 2048, 510, 255, 255, 255, 255 }, // 0x00003348
	 { -1973, 222, -2751, 0, 2048, -1, 255, 255, 255, 255 }, // 0x00003358
};

Vtx_t _ganontika_room_14_vertices_00003368[4] = 
{
	 { -1823, 172, -2838, 0, 0, 0, 169, 154, 126, 255 }, // 0x00003368
	 { -1823, 34, -2838, 0, 2, 1128, 254, 15, 15, 255 }, // 0x00003378
	 { -1923, 34, -2838, 0, 2050, 1128, 254, 15, 15, 255 }, // 0x00003388
	 { -1923, 172, -2838, 0, 2048, -1, 255, 255, 255, 255 }, // 0x00003398
};

Vtx_t _ganontika_room_14_vertices_000033A8[4] = 
{
	 { -1823, 222, -2838, 0, 0, 0, 255, 255, 255, 255 }, // 0x000033A8
	 { -1823, 172, -2838, 0, 0, 511, 169, 154, 126, 255 }, // 0x000033B8
	 { -1923, 172, -2838, 0, 2048, 510, 255, 255, 255, 255 }, // 0x000033C8
	 { -1923, 222, -2838, 0, 2048, 1, 255, 255, 255, 255 }, // 0x000033D8
};

Vtx_t _ganontika_room_14_vertices_000033E8[4] = 
{
	 { -1823, 171, -2665, 0, 0, 0, 169, 154, 126, 255 }, // 0x000033E8
	 { -1823, 34, -2665, 0, 2, 1126, 254, 15, 15, 255 }, // 0x000033F8
	 { -1773, 34, -2752, 0, 2050, 1126, 254, 15, 15, 255 }, // 0x00003408
	 { -1773, 172, -2751, 0, 2048, -1, 169, 154, 126, 255 }, // 0x00003418
};

Vtx_t _ganontika_room_14_vertices_00003428[4] = 
{
	 { -1823, 222, -2665, 0, 0, -1, 255, 255, 255, 255 }, // 0x00003428
	 { -1823, 171, -2665, 0, 0, 512, 169, 154, 126, 255 }, // 0x00003438
	 { -1773, 172, -2751, 0, 2048, 512, 169, 154, 126, 255 }, // 0x00003448
	 { -1773, 222, -2751, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003458
};

Vtx_t _ganontika_room_14_vertices_00003468[4] = 
{
	 { -1923, 172, -2665, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003468
	 { -1923, 34, -2665, 0, -2, 1127, 254, 15, 15, 255 }, // 0x00003478
	 { -1823, 34, -2665, 0, 2046, 1127, 254, 15, 15, 255 }, // 0x00003488
	 { -1823, 171, -2665, 0, 2048, 1, 169, 154, 126, 255 }, // 0x00003498
};

Vtx_t _ganontika_room_14_vertices_000034A8[4] = 
{
	 { -1923, 222, -2665, 0, 0, 0, 255, 255, 255, 255 }, // 0x000034A8
	 { -1923, 172, -2665, 0, 0, 512, 255, 255, 255, 255 }, // 0x000034B8
	 { -1823, 171, -2665, 0, 2048, 512, 169, 154, 126, 255 }, // 0x000034C8
	 { -1823, 222, -2665, 0, 2048, -1, 255, 255, 255, 255 }, // 0x000034D8
};

Vtx_t _ganontika_room_14_vertices_000034E8[4] = 
{
	 { -1773, 172, -2751, 0, 0, 0, 169, 154, 126, 255 }, // 0x000034E8
	 { -1773, 102, -2752, 0, 0, 717, 147, 131, 97, 255 }, // 0x000034F8
	 { -1704, 102, -2792, 0, 1639, 717, 169, 154, 126, 255 }, // 0x00003508
	 { -1704, 172, -2791, 0, 1638, 0, 255, 255, 255, 255 }, // 0x00003518
};

Vtx_t _ganontika_room_14_vertices_00003528[4] = 
{
	 { -1773, 222, -2751, 0, 0, 0, 134, 119, 89, 255 }, // 0x00003528
	 { -1773, 172, -2751, 0, 0, 512, 169, 154, 126, 255 }, // 0x00003538
	 { -1704, 172, -2791, 0, 1638, 512, 255, 255, 255, 255 }, // 0x00003548
	 { -1704, 222, -2791, 0, 1638, 0, 255, 255, 255, 255 }, // 0x00003558
};

Vtx_t _ganontika_room_14_vertices_00003568[4] = 
{
	 { -1754, 102, -2878, 0, 1, 717, 169, 154, 126, 255 }, // 0x00003568
	 { -1823, 102, -2838, 0, 1640, 717, 147, 131, 97, 255 }, // 0x00003578
	 { -1823, 172, -2838, 0, 1640, 0, 169, 154, 126, 255 }, // 0x00003588
	 { -1754, 172, -2878, 0, 1, 0, 255, 255, 255, 255 }, // 0x00003598
};

Vtx_t _ganontika_room_14_vertices_000035A8[4] = 
{
	 { -1823, 172, -2838, 0, 1638, 511, 169, 154, 126, 255 }, // 0x000035A8
	 { -1823, 222, -2838, 0, 1638, 0, 134, 119, 89, 255 }, // 0x000035B8
	 { -1754, 222, -2878, 0, 0, 0, 255, 255, 255, 255 }, // 0x000035C8
	 { -1754, 172, -2878, 0, 0, 511, 255, 255, 255, 255 }, // 0x000035D8
};

Vtx_t _ganontika_room_14_vertices_000035E8[4] = 
{
	 { -1704, 152, -2792, 0, 1, 205, 169, 154, 126, 255 }, // 0x000035E8
	 { -1754, 152, -2878, 0, 2049, 205, 169, 154, 126, 255 }, // 0x000035F8
	 { -1754, 172, -2878, 0, 2048, 0, 147, 131, 97, 255 }, // 0x00003608
	 { -1704, 172, -2791, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003618
};

Vtx_t _ganontika_room_14_vertices_00003628[4] = 
{
	 { -1754, 172, -2878, 0, 1638, 511, 147, 131, 97, 255 }, // 0x00003628
	 { -1754, 222, -2878, 0, 1638, 0, 134, 119, 89, 255 }, // 0x00003638
	 { -1704, 222, -2791, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003648
	 { -1704, 172, -2791, 0, 0, 511, 255, 255, 255, 255 }, // 0x00003658
};

Vtx_t _ganontika_room_14_vertices_00003668[8] = 
{
	 { -1491, 34, -2996, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003668
	 { -1423, 34, -2810, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003678
	 { -1491, 222, -2996, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003688
	 { -1423, 222, -2810, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003698
	 { -1995, 34, -2812, 0, 0, 0, 0, 0, 0, 0 }, // 0x000036A8
	 { -1928, 34, -2627, 0, 0, 0, 0, 0, 0, 0 }, // 0x000036B8
	 { -1995, 222, -2812, 0, 0, 0, 0, 0, 0, 0 }, // 0x000036C8
	 { -1928, 222, -2627, 0, 0, 0, 0, 0, 0, 0 }, // 0x000036D8
};

Gfx _ganontika_room_14_dlist_000036E8[] =
{
	gsDPPipeSync(), // 0x000036E8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000036F0
	gsSPVertex(_ganontika_room_14_vertices_00003668, 8, 0), // 0x000036F8
	gsSPCullDisplayList(0, 7), // 0x00003700
	gsDPPipeSync(), // 0x00003708
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003710
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003718
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003720
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00003728
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003730
	gsDPLoadSync(), // 0x00003738
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003740
	gsDPPipeSync(), // 0x00003748
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003750
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003758
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003760
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003768
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003770
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003778
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003780
	gsSPVertex(_ganontika_room_14_vertices_00002D38, 4, 0), // 0x00003788
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003790
	gsDPPipeSync(), // 0x00003798
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000037A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x000037A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000037B0
	gsDPLoadSync(), // 0x000037B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000037C0
	gsDPPipeSync(), // 0x000037C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000037D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000037D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000037E0
	gsDPTileSync(), // 0x000037E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000037F0
	gsDPLoadSync(), // 0x000037F8
	gsDPLoadTLUTCmd(7, 255), // 0x00003800
	gsDPPipeSync(), // 0x00003808
	gsSPVertex(_ganontika_room_14_vertices_00002D78, 4, 0), // 0x00003810
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003818
	gsDPPipeSync(), // 0x00003820
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00003828
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00003830
	gsDPLoadSync(), // 0x00003838
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00003840
	gsDPPipeSync(), // 0x00003848
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00003850
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00003858
	gsSPVertex(_ganontika_room_14_vertices_00002DB8, 4, 0), // 0x00003860
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003868
	gsDPPipeSync(), // 0x00003870
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00003878
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003880
	gsDPLoadSync(), // 0x00003888
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003890
	gsDPPipeSync(), // 0x00003898
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000038A0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000038A8
	gsSPVertex(_ganontika_room_14_vertices_00002DF8, 4, 0), // 0x000038B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000038B8
	gsDPPipeSync(), // 0x000038C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x000038C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x000038D0
	gsDPLoadSync(), // 0x000038D8
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x000038E0
	gsDPPipeSync(), // 0x000038E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x000038F0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x000038F8
	gsSPVertex(_ganontika_room_14_vertices_00002E38, 4, 0), // 0x00003900
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003908
	gsDPPipeSync(), // 0x00003910
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00003918
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003920
	gsDPLoadSync(), // 0x00003928
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003930
	gsDPPipeSync(), // 0x00003938
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003940
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003948
	gsSPVertex(_ganontika_room_14_vertices_00002E78, 4, 0), // 0x00003950
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003958
	gsDPPipeSync(), // 0x00003960
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00003968
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00003970
	gsDPLoadSync(), // 0x00003978
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00003980
	gsDPPipeSync(), // 0x00003988
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00003990
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00003998
	gsSPVertex(_ganontika_room_14_vertices_00002EB8, 4, 0), // 0x000039A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000039A8
	gsDPPipeSync(), // 0x000039B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x000039B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000039C0
	gsDPLoadSync(), // 0x000039C8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000039D0
	gsDPPipeSync(), // 0x000039D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000039E0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000039E8
	gsSPVertex(_ganontika_room_14_vertices_00002EF8, 8, 0), // 0x000039F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000039F8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003A00
	gsDPPipeSync(), // 0x00003A08
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00003A10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00003A18
	gsDPLoadSync(), // 0x00003A20
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00003A28
	gsDPPipeSync(), // 0x00003A30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00003A38
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00003A40
	gsSPVertex(_ganontika_room_14_vertices_00002F78, 4, 0), // 0x00003A48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003A50
	gsDPPipeSync(), // 0x00003A58
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00003A60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003A68
	gsDPLoadSync(), // 0x00003A70
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003A78
	gsDPPipeSync(), // 0x00003A80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003A88
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003A90
	gsSPVertex(_ganontika_room_14_vertices_00002FB8, 8, 0), // 0x00003A98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003AA0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003AA8
	gsDPPipeSync(), // 0x00003AB0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00003AB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00003AC0
	gsDPLoadSync(), // 0x00003AC8
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00003AD0
	gsDPPipeSync(), // 0x00003AD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00003AE0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00003AE8
	gsSPVertex(_ganontika_room_14_vertices_00003038, 8, 0), // 0x00003AF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003AF8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003B00
	gsDPPipeSync(), // 0x00003B08
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00003B10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003B18
	gsDPLoadSync(), // 0x00003B20
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003B28
	gsDPPipeSync(), // 0x00003B30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003B38
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003B40
	gsSPVertex(_ganontika_room_14_vertices_000030B8, 8, 0), // 0x00003B48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003B50
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003B58
	gsDPPipeSync(), // 0x00003B60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00003B68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00003B70
	gsDPLoadSync(), // 0x00003B78
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00003B80
	gsDPPipeSync(), // 0x00003B88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00003B90
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00003B98
	gsSPVertex(_ganontika_room_14_vertices_00003138, 4, 0), // 0x00003BA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003BA8
	gsDPPipeSync(), // 0x00003BB0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003BB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00003BC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003BC8
	gsDPLoadSync(), // 0x00003BD0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003BD8
	gsDPPipeSync(), // 0x00003BE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003BE8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003BF0
	gsSPVertex(_ganontika_room_14_vertices_00003178, 15, 0), // 0x00003BF8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003C00
	gsSP2Triangles(3, 6, 7, 0, 0, 8, 1, 0), // 0x00003C08
	gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0), // 0x00003C10
	gsSP2Triangles(9, 12, 13, 0, 9, 13, 14, 0), // 0x00003C18
	gsDPPipeSync(), // 0x00003C20
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003C28
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00003C30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003C38
	gsDPLoadSync(), // 0x00003C40
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003C48
	gsDPPipeSync(), // 0x00003C50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003C58
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003C60
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00003C68
	gsDPTileSync(), // 0x00003C70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003C78
	gsDPLoadSync(), // 0x00003C80
	gsDPLoadTLUTCmd(7, 255), // 0x00003C88
	gsDPPipeSync(), // 0x00003C90
	gsSPVertex(_ganontika_room_14_vertices_00003268, 4, 0), // 0x00003C98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003CA0
	gsDPPipeSync(), // 0x00003CA8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00003CB0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00003CB8
	gsDPLoadSync(), // 0x00003CC0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00003CC8
	gsDPPipeSync(), // 0x00003CD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00003CD8
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00003CE0
	gsSPVertex(_ganontika_room_14_vertices_000032A8, 4, 0), // 0x00003CE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003CF0
	gsDPPipeSync(), // 0x00003CF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00003D00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003D08
	gsDPLoadSync(), // 0x00003D10
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003D18
	gsDPPipeSync(), // 0x00003D20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003D28
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003D30
	gsSPVertex(_ganontika_room_14_vertices_000032E8, 4, 0), // 0x00003D38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003D40
	gsDPPipeSync(), // 0x00003D48
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00003D50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00003D58
	gsDPLoadSync(), // 0x00003D60
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00003D68
	gsDPPipeSync(), // 0x00003D70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00003D78
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00003D80
	gsSPVertex(_ganontika_room_14_vertices_00003328, 4, 0), // 0x00003D88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003D90
	gsDPPipeSync(), // 0x00003D98
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00003DA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003DA8
	gsDPLoadSync(), // 0x00003DB0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003DB8
	gsDPPipeSync(), // 0x00003DC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003DC8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003DD0
	gsSPVertex(_ganontika_room_14_vertices_00003368, 4, 0), // 0x00003DD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003DE0
	gsDPPipeSync(), // 0x00003DE8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00003DF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00003DF8
	gsDPLoadSync(), // 0x00003E00
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00003E08
	gsDPPipeSync(), // 0x00003E10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00003E18
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00003E20
	gsSPVertex(_ganontika_room_14_vertices_000033A8, 4, 0), // 0x00003E28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003E30
	gsDPPipeSync(), // 0x00003E38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00003E40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003E48
	gsDPLoadSync(), // 0x00003E50
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003E58
	gsDPPipeSync(), // 0x00003E60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003E68
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003E70
	gsSPVertex(_ganontika_room_14_vertices_000033E8, 4, 0), // 0x00003E78
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003E80
	gsDPPipeSync(), // 0x00003E88
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00003E90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00003E98
	gsDPLoadSync(), // 0x00003EA0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00003EA8
	gsDPPipeSync(), // 0x00003EB0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00003EB8
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00003EC0
	gsSPVertex(_ganontika_room_14_vertices_00003428, 4, 0), // 0x00003EC8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003ED0
	gsDPPipeSync(), // 0x00003ED8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00003EE0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003EE8
	gsDPLoadSync(), // 0x00003EF0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003EF8
	gsDPPipeSync(), // 0x00003F00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003F08
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003F10
	gsSPVertex(_ganontika_room_14_vertices_00003468, 4, 0), // 0x00003F18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003F20
	gsDPPipeSync(), // 0x00003F28
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00003F30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00003F38
	gsDPLoadSync(), // 0x00003F40
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00003F48
	gsDPPipeSync(), // 0x00003F50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00003F58
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00003F60
	gsSPVertex(_ganontika_room_14_vertices_000034A8, 4, 0), // 0x00003F68
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003F70
	gsDPPipeSync(), // 0x00003F78
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00003F80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003F88
	gsDPLoadSync(), // 0x00003F90
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003F98
	gsDPPipeSync(), // 0x00003FA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003FA8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003FB0
	gsSPVertex(_ganontika_room_14_vertices_000034E8, 4, 0), // 0x00003FB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003FC0
	gsDPPipeSync(), // 0x00003FC8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00003FD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00003FD8
	gsDPLoadSync(), // 0x00003FE0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00003FE8
	gsDPPipeSync(), // 0x00003FF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00003FF8
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00004000
	gsSPVertex(_ganontika_room_14_vertices_00003528, 4, 0), // 0x00004008
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004010
	gsDPPipeSync(), // 0x00004018
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x00004020
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004028
	gsDPLoadSync(), // 0x00004030
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004038
	gsDPPipeSync(), // 0x00004040
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004048
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004050
	gsSPVertex(_ganontika_room_14_vertices_00003568, 4, 0), // 0x00004058
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004060
	gsDPPipeSync(), // 0x00004068
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00004070
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00004078
	gsDPLoadSync(), // 0x00004080
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00004088
	gsDPPipeSync(), // 0x00004090
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00004098
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x000040A0
	gsSPVertex(_ganontika_room_14_vertices_000035A8, 4, 0), // 0x000040A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000040B0
	gsDPPipeSync(), // 0x000040B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00007BB8), // 0x000040C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000040C8
	gsDPLoadSync(), // 0x000040D0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000040D8
	gsDPPipeSync(), // 0x000040E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000040E8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000040F0
	gsSPVertex(_ganontika_room_14_vertices_000035E8, 4, 0), // 0x000040F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004100
	gsDPPipeSync(), // 0x00004108
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000077B8), // 0x00004110
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00004118
	gsDPLoadSync(), // 0x00004120
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00004128
	gsDPPipeSync(), // 0x00004130
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00004138
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00004140
	gsSPVertex(_ganontika_room_14_vertices_00003628, 4, 0), // 0x00004148
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004150
	gsSPEndDisplayList(), // 0x00004158
};

Vtx_t _ganontika_room_14_vertices_00004160[116] = 
{
	 { -1077, 34, -1665, 0, 5120, 3072, 188, 0, 0, 255 }, // 0x00004160
	 { -1077, 150, -1665, 0, 5120, 2560, 81, 72, 55, 255 }, // 0x00004170
	 { -626, 150, -1925, 0, 683, 2560, 255, 255, 255, 255 }, // 0x00004180
	 { -652, 250, -1910, 0, 939, 2133, 255, 255, 255, 255 }, // 0x00004190
	 { -652, 150, -1910, 0, 939, 2560, 255, 255, 255, 255 }, // 0x000041A0
	 { -1076, 510, -1664, 0, 5120, 1025, 177, 164, 138, 255 }, // 0x000041B0
	 { -1076, 869, -1664, 0, 5120, -509, 52, 49, 38, 255 }, // 0x000041C0
	 { -210, 869, -2164, 0, -3413, -509, 52, 49, 38, 255 }, // 0x000041D0
	 { -600, 250, -1940, 0, 427, 2133, 255, 255, 255, 255 }, // 0x000041E0
	 { -211, 150, -2165, 0, -3413, 2560, 81, 72, 55, 255 }, // 0x000041F0
	 { -210, 510, -2164, 0, -3413, 1025, 177, 164, 138, 255 }, // 0x00004200
	 { -211, 34, -2165, 0, -3413, 3072, 188, 0, 0, 255 }, // 0x00004210
	 { -600, 150, -1940, 0, 427, 2560, 255, 255, 255, 255 }, // 0x00004220
	 { -1077, 150, -1665, 0, -1025, 2048, 81, 72, 55, 255 }, // 0x00004230
	 { -1077, 34, -1665, 0, -1024, 2560, 188, 0, 0, 255 }, // 0x00004240
	 { -1568, 34, -1796, 0, 3320, 2560, 161, 0, 0, 255 }, // 0x00004250
	 { -1568, 150, -1796, 0, 3320, 2048, 69, 62, 48, 255 }, // 0x00004260
	 { -1568, 34, -1796, 0, -4779, 2560, 161, 0, 0, 255 }, // 0x00004270
	 { -1968, 34, -2489, 0, 2048, 2560, 161, 0, 0, 255 }, // 0x00004280
	 { -1968, 151, -2489, 0, 2049, 2048, 52, 49, 38, 255 }, // 0x00004290
	 { -1568, 150, -1796, 0, -4778, 2048, 69, 62, 48, 255 }, // 0x000042A0
	 { -2368, 34, -3182, 0, 8875, 2560, 161, 0, 0, 255 }, // 0x000042B0
	 { -2368, 153, -3182, 0, 8875, 2048, 69, 62, 48, 255 }, // 0x000042C0
	 { -2368, 34, -3182, 0, -1024, 2560, 161, 0, 0, 255 }, // 0x000042D0
	 { -2237, 34, -3674, 0, 3320, 2560, 161, 0, 0, 255 }, // 0x000042E0
	 { -2237, 153, -3674, 0, 3320, 2048, 81, 72, 55, 255 }, // 0x000042F0
	 { -2368, 153, -3182, 0, -1025, 2048, 69, 62, 48, 255 }, // 0x00004300
	 { -79, 150, -2657, 0, 8875, 3073, 69, 62, 48, 255 }, // 0x00004310
	 { -479, 151, -3350, 0, 2048, 3072, 52, 49, 38, 255 }, // 0x00004320
	 { -479, 34, -3350, 0, 2048, 3572, 161, 0, 0, 255 }, // 0x00004330
	 { -79, 34, -2657, 0, 8875, 3567, 161, 0, 0, 255 }, // 0x00004340
	 { -479, 151, -3350, 0, 2048, 3072, 52, 49, 38, 255 }, // 0x00004350
	 { -879, 153, -4042, 0, -4779, 3071, 69, 62, 48, 255 }, // 0x00004360
	 { -879, 34, -4042, 0, -4778, 3577, 161, 0, 0, 255 }, // 0x00004370
	 { -479, 34, -3350, 0, 2048, 3572, 161, 0, 0, 255 }, // 0x00004380
	 { -879, 153, -4042, 0, 3320, 2046, 69, 62, 48, 255 }, // 0x00004390
	 { -1371, 153, -4174, 0, -1024, 2048, 81, 72, 55, 255 }, // 0x000043A0
	 { -1371, 34, -4174, 0, -1024, 2560, 161, 0, 0, 255 }, // 0x000043B0
	 { -879, 34, -4042, 0, 3320, 2558, 161, 0, 0, 255 }, // 0x000043C0
	 { -79, 34, -2657, 0, -1024, 2560, 161, 0, 0, 255 }, // 0x000043D0
	 { -211, 34, -2165, 0, 3320, 2558, 188, 0, 0, 255 }, // 0x000043E0
	 { -211, 150, -2165, 0, 3320, 2046, 81, 72, 55, 255 }, // 0x000043F0
	 { -79, 150, -2657, 0, -1024, 2048, 69, 62, 48, 255 }, // 0x00004400
	 { -1942, 153, -3844, 0, 853, 2048, 255, 255, 255, 255 }, // 0x00004410
	 { -1371, 34, -4174, 0, 6485, 2560, 161, 0, 0, 255 }, // 0x00004420
	 { -1371, 153, -4174, 0, 6485, 2048, 81, 72, 55, 255 }, // 0x00004430
	 { -2237, 34, -3674, 0, -2048, 2560, 79, 0, 0, 255 }, // 0x00004440
	 { -2237, 153, -3674, 0, -2048, 2048, 81, 72, 55, 255 }, // 0x00004450
	 { -2237, 34, -3674, 0, -2048, 2560, 161, 0, 0, 255 }, // 0x00004460
	 { -1968, 153, -3829, 0, 597, 2048, 255, 255, 255, 255 }, // 0x00004470
	 { -1968, 253, -3829, 0, 597, 1621, 255, 255, 255, 255 }, // 0x00004480
	 { -2236, 513, -3673, 0, -2048, 511, 177, 164, 138, 255 }, // 0x00004490
	 { -2236, 873, -3673, 0, -2048, -1027, 52, 49, 38, 255 }, // 0x000044A0
	 { -1370, 873, -4173, 0, 6485, -1027, 52, 49, 38, 255 }, // 0x000044B0
	 { -1916, 253, -3859, 0, 1109, 1621, 255, 255, 255, 255 }, // 0x000044C0
	 { -1370, 513, -4174, 0, 6485, 511, 177, 164, 138, 255 }, // 0x000044D0
	 { -1916, 153, -3859, 0, 1109, 2048, 255, 255, 255, 255 }, // 0x000044E0
	 { -210, 510, -2164, 0, 3321, 511, 177, 164, 138, 255 }, // 0x000044F0
	 { -79, 510, -2656, 0, -1023, 512, 134, 119, 89, 255 }, // 0x00004500
	 { -210, 869, -2164, 0, 3322, -1023, 52, 49, 38, 255 }, // 0x00004510
	 { -78, 870, -2656, 0, -1023, -1024, 52, 49, 38, 255 }, // 0x00004520
	 { -78, 870, -2656, 0, 8875, 1, 52, 49, 38, 255 }, // 0x00004530
	 { -479, 511, -3349, 0, 2048, 1536, 169, 154, 126, 255 }, // 0x00004540
	 { -79, 510, -2656, 0, 8875, 1537, 134, 119, 89, 255 }, // 0x00004550
	 { -478, 871, -3349, 0, 2048, 0, 52, 49, 38, 255 }, // 0x00004560
	 { -79, 150, -2657, 0, 8875, 3073, 69, 62, 48, 255 }, // 0x00004570
	 { -878, 873, -4041, 0, -4779, -1, 52, 49, 38, 255 }, // 0x00004580
	 { -879, 513, -4042, 0, -4779, 1535, 147, 131, 97, 255 }, // 0x00004590
	 { -879, 153, -4042, 0, -4779, 3071, 69, 62, 48, 255 }, // 0x000045A0
	 { -479, 151, -3350, 0, 2048, 3072, 52, 49, 38, 255 }, // 0x000045B0
	 { -878, 873, -4041, 0, 3322, -1026, 52, 49, 38, 255 }, // 0x000045C0
	 { -1370, 873, -4173, 0, -1023, -1027, 52, 49, 38, 255 }, // 0x000045D0
	 { -1370, 513, -4174, 0, -1023, 511, 177, 164, 138, 255 }, // 0x000045E0
	 { -879, 513, -4042, 0, 3321, 510, 147, 131, 97, 255 }, // 0x000045F0
	 { -1371, 153, -4174, 0, -1024, 2048, 81, 72, 55, 255 }, // 0x00004600
	 { -879, 153, -4042, 0, 3320, 2046, 69, 62, 48, 255 }, // 0x00004610
	 { -1076, 869, -1664, 0, -1033, -1021, 52, 49, 38, 255 }, // 0x00004620
	 { -1076, 510, -1664, 0, -1029, 513, 177, 164, 138, 255 }, // 0x00004630
	 { -1568, 510, -1796, 0, 3316, 512, 134, 119, 89, 255 }, // 0x00004640
	 { -1568, 870, -1795, 0, 3311, -1024, 52, 49, 38, 255 }, // 0x00004650
	 { -1077, 150, -1665, 0, -1025, 2048, 81, 72, 55, 255 }, // 0x00004660
	 { -1568, 150, -1796, 0, 3320, 2048, 69, 62, 48, 255 }, // 0x00004670
	 { -1568, 150, -1796, 0, -4778, 2048, 69, 62, 48, 255 }, // 0x00004680
	 { -1968, 511, -2489, 0, 2048, 512, 169, 154, 126, 255 }, // 0x00004690
	 { -1568, 510, -1796, 0, -4778, 512, 134, 119, 89, 255 }, // 0x000046A0
	 { -1968, 151, -2489, 0, 2049, 2048, 52, 49, 38, 255 }, // 0x000046B0
	 { -1568, 870, -1795, 0, -4779, -1024, 52, 49, 38, 255 }, // 0x000046C0
	 { -1968, 871, -2488, 0, 2048, -1024, 52, 49, 38, 255 }, // 0x000046D0
	 { -2368, 153, -3182, 0, 8875, 2048, 69, 62, 48, 255 }, // 0x000046E0
	 { -2368, 513, -3181, 0, 8875, 512, 147, 131, 97, 255 }, // 0x000046F0
	 { -2368, 873, -3181, 0, 8875, -1024, 52, 49, 38, 255 }, // 0x00004700
	 { -2368, 153, -3182, 0, -1025, 2048, 69, 62, 48, 255 }, // 0x00004710
	 { -2237, 153, -3674, 0, 3320, 2048, 81, 72, 55, 255 }, // 0x00004720
	 { -2236, 513, -3673, 0, 3315, 511, 177, 164, 138, 255 }, // 0x00004730
	 { -2368, 513, -3181, 0, -1029, 512, 147, 131, 97, 255 }, // 0x00004740
	 { -2236, 873, -3673, 0, 3311, -1027, 52, 49, 38, 255 }, // 0x00004750
	 { -2368, 873, -3181, 0, -1033, -1024, 52, 49, 38, 255 }, // 0x00004760
	 { -210, 869, -2164, 0, 10496, 3839, 52, 49, 38, 255 }, // 0x00004770
	 { -1076, 869, -1664, 0, 10496, 639, 52, 49, 38, 255 }, // 0x00004780
	 { -1568, 870, -1795, 0, 8192, -513, 52, 49, 38, 255 }, // 0x00004790
	 { -78, 870, -2656, 0, 8192, 4991, 52, 49, 38, 255 }, // 0x000047A0
	 { -1968, 871, -2488, 0, 3072, -512, 52, 49, 38, 255 }, // 0x000047B0
	 { -478, 871, -3349, 0, 3072, 4992, 52, 49, 38, 255 }, // 0x000047C0
	 { -2368, 873, -3181, 0, -2048, -511, 52, 49, 38, 255 }, // 0x000047D0
	 { -878, 873, -4041, 0, -2048, 4993, 52, 49, 38, 255 }, // 0x000047E0
	 { -2236, 873, -3673, 0, -4352, 641, 52, 49, 38, 255 }, // 0x000047F0
	 { -1370, 873, -4173, 0, -4352, 3841, 52, 49, 38, 255 }, // 0x00004800
	 { -1968, 253, -3829, 0, 597, 1621, 255, 255, 255, 255 }, // 0x00004810
	 { -1916, 253, -3859, 0, 1109, 1621, 255, 255, 255, 255 }, // 0x00004820
	 { -1370, 873, -4173, 0, 6485, -1027, 52, 49, 38, 255 }, // 0x00004830
	 { -2236, 873, -3673, 0, -2048, -1027, 52, 49, 38, 255 }, // 0x00004840
	 { -479, 151, -3350, 0, 2048, 3072, 52, 49, 38, 255 }, // 0x00004850
	 { -79, 150, -2657, 0, 8875, 3073, 69, 62, 48, 255 }, // 0x00004860
	 { -479, 511, -3349, 0, 2048, 1536, 169, 154, 126, 255 }, // 0x00004870
	 { -879, 513, -4042, 0, -4779, 1535, 147, 131, 97, 255 }, // 0x00004880
	 { -878, 873, -4041, 0, -4779, -1, 52, 49, 38, 255 }, // 0x00004890
};

Vtx_t _ganontika_room_14_vertices_000048A0[8] = 
{
	 { -1059, 34, -4354, 0, 0, 0, 0, 0, 0, 0 }, // 0x000048A0
	 { 102, 34, -2344, 0, 0, 0, 0, 0, 0, 0 }, // 0x000048B0
	 { -1059, 873, -4354, 0, 0, 0, 0, 0, 0, 0 }, // 0x000048C0
	 { 102, 873, -2344, 0, 0, 0, 0, 0, 0, 0 }, // 0x000048D0
	 { -2549, 34, -3494, 0, 0, 0, 0, 0, 0, 0 }, // 0x000048E0
	 { -1388, 34, -1483, 0, 0, 0, 0, 0, 0, 0 }, // 0x000048F0
	 { -2549, 873, -3494, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004900
	 { -1388, 873, -1483, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004910
};

Gfx _ganontika_room_14_dlist_00004920[] =
{
	gsDPPipeSync(), // 0x00004920
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004928
	gsSPVertex(_ganontika_room_14_vertices_000048A0, 8, 0), // 0x00004930
	gsSPCullDisplayList(0, 7), // 0x00004938
	gsDPPipeSync(), // 0x00004940
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004948
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004950
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004958
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000067B8), // 0x00004960
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004968
	gsDPLoadSync(), // 0x00004970
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004978
	gsDPPipeSync(), // 0x00004980
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004988
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004990
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004998
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000049A0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000049A8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000049B0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000049B8
	gsSPVertex(_ganontika_room_14_vertices_00004160, 32, 0), // 0x000049C0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0), // 0x000049C8
	gsSP2Triangles(1, 5, 3, 0, 5, 6, 3, 0), // 0x000049D0
	gsSP2Triangles(3, 6, 7, 0, 3, 7, 8, 0), // 0x000049D8
	gsSP2Triangles(9, 8, 10, 0, 8, 7, 10, 0), // 0x000049E0
	gsSP2Triangles(9, 11, 2, 0, 9, 12, 8, 0), // 0x000049E8
	gsSP2Triangles(11, 0, 2, 0, 13, 14, 15, 0), // 0x000049F0
	gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0), // 0x000049F8
	gsSP2Triangles(17, 19, 20, 0, 18, 21, 22, 0), // 0x00004A00
	gsSP2Triangles(18, 22, 19, 0, 23, 24, 25, 0), // 0x00004A08
	gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0), // 0x00004A10
	gsSP1Triangle(27, 29, 30, 0), // 0x00004A18
	gsSPVertex(_ganontika_room_14_vertices_00004350, 32, 0), // 0x00004A20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004A28
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004A30
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004A38
	gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0), // 0x00004A40
	gsSP2Triangles(12, 16, 17, 0, 18, 19, 16, 0), // 0x00004A48
	gsSP2Triangles(19, 20, 16, 0, 19, 21, 20, 0), // 0x00004A50
	gsSP2Triangles(22, 23, 24, 0, 23, 14, 24, 0), // 0x00004A58
	gsSP2Triangles(23, 25, 14, 0, 10, 26, 27, 0), // 0x00004A60
	gsSP2Triangles(10, 27, 11, 0, 26, 28, 29, 0), // 0x00004A68
	gsSP1Triangle(26, 29, 27, 0), // 0x00004A70
	gsSPVertex(_ganontika_room_14_vertices_00004530, 32, 0), // 0x00004A78
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00004A80
	gsSP2Triangles(1, 4, 2, 0, 3, 5, 1, 0), // 0x00004A88
	gsSP2Triangles(6, 7, 1, 0, 7, 8, 1, 0), // 0x00004A90
	gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0), // 0x00004A98
	gsSP2Triangles(11, 13, 14, 0, 11, 14, 12, 0), // 0x00004AA0
	gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0), // 0x00004AA8
	gsSP2Triangles(16, 19, 20, 0, 16, 20, 17, 0), // 0x00004AB0
	gsSP2Triangles(21, 22, 23, 0, 21, 24, 22, 0), // 0x00004AB8
	gsSP2Triangles(22, 25, 23, 0, 22, 26, 25, 0), // 0x00004AC0
	gsSP2Triangles(24, 27, 22, 0, 27, 28, 22, 0), // 0x00004AC8
	gsSP2Triangles(28, 29, 22, 0, 29, 26, 22, 0), // 0x00004AD0
	gsSPVertex(_ganontika_room_14_vertices_00004710, 25, 0), // 0x00004AD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004AE0
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00004AE8
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00004AF0
	gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0), // 0x00004AF8
	gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0), // 0x00004B00
	gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0), // 0x00004B08
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00004B10
	gsSP2Triangles(20, 21, 22, 0, 23, 22, 24, 0), // 0x00004B18
	gsSPEndDisplayList(), // 0x00004B20
};

Vtx_t _ganontika_room_14_vertices_00004B28[5] = 
{
	 { -1959, 333, -3813, 0, 0, 0, 255, 69, 69, 255 }, // 0x00004B28
	 { -1933, 303, -3828, 0, 1024, 1024, 255, 178, 193, 255 }, // 0x00004B38
	 { -1907, 333, -3843, 0, 2048, 0, 255, 69, 69, 255 }, // 0x00004B48
	 { -1907, 273, -3843, 0, 2048, 2048, 161, 0, 0, 255 }, // 0x00004B58
	 { -1959, 273, -3813, 0, 0, 2048, 161, 0, 0, 255 }, // 0x00004B68
};

Vtx_t _ganontika_room_14_vertices_00004B78[8] = 
{
	 { -1907, 273, -3843, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B78
	 { -1907, 273, -3843, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B88
	 { -1907, 333, -3843, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B98
	 { -1907, 333, -3843, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BA8
	 { -1959, 273, -3813, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BB8
	 { -1959, 273, -3813, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BC8
	 { -1959, 333, -3813, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BD8
	 { -1959, 333, -3813, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BE8
};

Gfx _ganontika_room_14_dlist_00004BF8[] =
{
	gsDPPipeSync(), // 0x00004BF8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004C00
	gsSPVertex(_ganontika_room_14_vertices_00004B78, 8, 0), // 0x00004C08
	gsSPCullDisplayList(0, 7), // 0x00004C10
	gsDPPipeSync(), // 0x00004C18
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004C20
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004C28
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004C30
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00005FB8), // 0x00004C38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00004C40
	gsDPLoadSync(), // 0x00004C48
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004C50
	gsDPPipeSync(), // 0x00004C58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00004C60
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004C68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00004F98), // 0x00004C70
	gsDPTileSync(), // 0x00004C78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004C80
	gsDPLoadSync(), // 0x00004C88
	gsDPLoadTLUTCmd(7, 15), // 0x00004C90
	gsDPPipeSync(), // 0x00004C98
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004CA0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004CA8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004CB0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004CB8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004CC0
	gsSPVertex(_ganontika_room_14_vertices_00004B28, 5, 0), // 0x00004CC8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004CD0
	gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0), // 0x00004CD8
	gsSPEndDisplayList(), // 0x00004CE0
};

Vtx_t _ganontika_room_14_vertices_00004CE8[13] = 
{
	 { -79, 34, -2657, 0, 3616, 939, 79, 0, 0, 255 }, // 0x00004CE8
	 { -1224, 24, -2919, 0, 676, 1061, 255, 255, 255, 255 }, // 0x00004CF8
	 { -879, 28, -2322, 0, 2207, 2122, 147, 131, 97, 255 }, // 0x00004D08
	 { -479, 34, -3350, 0, 1576, -475, 79, 0, 0, 255 }, // 0x00004D18
	 { -1568, 34, -1796, 0, 1818, 4011, 79, 0, 0, 255 }, // 0x00004D28
	 { -1968, 34, -2489, 0, -223, 2598, 79, 0, 0, 255 }, // 0x00004D38
	 { -879, 34, -4042, 0, -465, -1889, 79, 0, 0, 255 }, // 0x00004D48
	 { -1569, 28, -3517, 0, -854, 1, 147, 131, 97, 255 }, // 0x00004D58
	 { -2368, 34, -3182, 0, -2263, 1184, 79, 0, 0, 255 }, // 0x00004D68
	 { -1371, 34, -4174, 0, -1289, -1759, 79, 0, 0, 255 }, // 0x00004D78
	 { -2237, 34, -3674, 0, -2504, 317, 79, 0, 0, 255 }, // 0x00004D88
	 { -1077, 34, -1665, 0, 2642, 3882, 79, 0, 0, 255 }, // 0x00004D98
	 { -211, 34, -2165, 0, 3857, 1806, 79, 0, 0, 255 }, // 0x00004DA8
};

Vtx_t _ganontika_room_14_vertices_00004DB8[8] = 
{
	 { -1059, 24, -4354, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004DB8
	 { 101, 24, -2345, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004DC8
	 { -1059, 34, -4354, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004DD8
	 { 101, 34, -2345, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004DE8
	 { -2549, 24, -3494, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004DF8
	 { -1388, 24, -1485, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004E08
	 { -2549, 34, -3494, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004E18
	 { -1388, 34, -1485, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004E28
};

Gfx _ganontika_room_14_dlist_00004E38[] =
{
	gsDPPipeSync(), // 0x00004E38
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004E40
	gsSPVertex(_ganontika_room_14_vertices_00004DB8, 8, 0), // 0x00004E48
	gsSPCullDisplayList(0, 7), // 0x00004E50
	gsDPPipeSync(), // 0x00004E58
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004E60
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004E68
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004E70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_00004FB8), // 0x00004E78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 15, 0, 5, 14), // 0x00004E80
	gsDPLoadSync(), // 0x00004E88
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004E90
	gsDPPipeSync(), // 0x00004E98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 15, 0, 5, 14), // 0x00004EA0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004EA8
	gsDPTileSync(), // 0x00004EB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 1, 0, 0, 5, 14, 0, 5, 15), // 0x00004EB8
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00004EC0
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004EC8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004ED0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004ED8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004EE0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004EE8
	gsSPDisplayList(0x0A000000), // 0x00004EF0
	gsSPVertex(_ganontika_room_14_vertices_00004CE8, 13, 0), // 0x00004EF8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00004F00
	gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0), // 0x00004F08
	gsSP2Triangles(3, 6, 1, 0, 6, 7, 1, 0), // 0x00004F10
	gsSP2Triangles(7, 8, 1, 0, 8, 5, 1, 0), // 0x00004F18
	gsSP2Triangles(6, 9, 7, 0, 9, 10, 7, 0), // 0x00004F20
	gsSP2Triangles(10, 8, 7, 0, 11, 2, 4, 0), // 0x00004F28
	gsSP2Triangles(11, 12, 2, 0, 12, 0, 2, 0), // 0x00004F30
	gsSPEndDisplayList(), // 0x00004F38
};

static u8 unaccounted4F40[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x09, 0x18, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x11, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x16, 0x70, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1C, 0x68, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x27, 0x78, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x36, 0xE8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x49, 0x20, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4B, 0xF8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4E, 0x38, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 _ganontika_room_14_tex_00004F98[] = 
{
	0x00008C5FAD659CE3, 0x73992107398D4A0F, 0x6B5729495293C62D, 0xBDEB841D5AD50000,  // 0x00004F98 
};

u64 _ganontika_room_14_tex_00004FB8[] = 
{
	0x988188C1888178C1, 0x78C180C190C19901, 0x88C188C198C1A8C1, 0xB101B941C181C181,  // 0x00004FB8 
	0xB981A94190C18081, 0x80C180C190C1A8C1, 0xC8C1C881C0C1B881, 0xA081988190C19881,  // 0x00004FD8 
	0x98C1888180818081, 0x80C188C1A1019901, 0x90C190C190C1A0C1, 0xA8C1A901A901B141,  // 0x00004FF8 
	0xA941990190C180C1, 0x78C180C190C1A901, 0xC901D0C1C8C1C0C1, 0xA8819881888190C1,  // 0x00005018 
	0x9081808180818081, 0x808198C1A101A8C1, 0x98C1A0C190C190C1, 0x98C198C1A0C1A0C1,  // 0x00005038 
	0x990190C188C180C1, 0x78C180C19101B141, 0xC101C8C1D0C1C0C1, 0xB081A08188C190C1,  // 0x00005058 
	0x8081788178C18881, 0x90C1A0C1A8C1A8C1, 0xA901A8C198C188C1, 0x90C190C190C190C1,  // 0x00005078 
	0x88C180C188C180C1, 0x78C179019101B141, 0xB981C8C1D0C1C881, 0xB881A08188C18881,  // 0x00005098 
	0x788170C170C18881, 0x98C1A0C1A8C1A8C1, 0xB101B10198C190C1, 0x88C188C188C190C1,  // 0x000050B8 
	0x88C178C178C178C1, 0x78C178C19101A981, 0xB181C101D0C1C8C1, 0xB0C1A8C188C18081,  // 0x000050D8 
	0x7881708168818881, 0xA8C1B0C1A8C1A901, 0xB101B101A0C190C1, 0x88C180C188C19101,  // 0x000050F8 
	0x90C178C170C178C1, 0x80C178C189019901, 0xA141B101C8C1C8C1, 0xC0C1A8C188C18081,  // 0x00005118 
	0x7881708170819081, 0xA8C1A8C1A901A901, 0xB141B101A0C190C1, 0x80C180C178C180C1,  // 0x00005138 
	0x90C188C178C180C1, 0x80C178C181018901, 0x89419901B8C1C0C1, 0xB8C1A8C190C18081,  // 0x00005158 
	0x7881708178819081, 0x98C198C1A101A901, 0xB101B101A0C188C1, 0x80C178C178C180C1,  // 0x00005178 
	0x9101910180C188C1, 0x88C178C178C17901, 0x810189019101B0C1, 0xB0C1A0C190818081,  // 0x00005198 
	0x7081708178818881, 0x88C190C19901A0C1, 0xA901A90198C18901, 0x78C178C180C18101,  // 0x000051B8 
	0x9101910180C18101, 0x80C170C170C17101, 0x794181418901A0C1, 0xA08190C188817881,  // 0x000051D8 
	0x7081708168817881, 0x8081808191019101, 0xA101A101910180C1, 0x70C170C179018101,  // 0x000051F8 
	0x8901910190C18101, 0x78C170C179017901, 0x79418141890190C1, 0x90C1888180817881,  // 0x00005218 
	0x7081688160817081, 0x7881788180C180C1, 0x89019101810170C1, 0x68C170C178C17901,  // 0x00005238 
	0x8101910191018101, 0x7901790179017941, 0x81418101810188C1, 0x80C1808178817881,  // 0x00005258 
	0x7081688160816881, 0x7081788180C180C1, 0x89018101790168C1, 0x58C160C168C18101,  // 0x00005278 
	0x8901910191018101, 0x78C1790179417941, 0x8901810188C180C1, 0x8081808178817881,  // 0x00005298 
	0x7081608160816881, 0x7081788188C188C1, 0x78C178C178C168C1, 0x58C160C170C18101,  // 0x000052B8 
	0x89018901910188C1, 0x78C1790181418901, 0x910188C188C190C1, 0x8081788170817881,  // 0x000052D8 
	0x7081608160816881, 0x70818081888180C1, 0x78C178C170C160C1, 0x58C160C171018901,  // 0x000052F8 
	0x89018901910188C1, 0x810189018901A0C1, 0x98C188C190C198C1, 0x88C188C178817881,  // 0x00005318 
	0x6081608160816881, 0x78818081808180C1, 0x78C178C170C160C1, 0x60C168C171018101,  // 0x00005338 
	0x8901890190C188C1, 0x88C1910198C1A8C1, 0xA0C190C190C190C1, 0x98C190C188C17881,  // 0x00005358 
	0x7081608160816881, 0x80818081808180C1, 0x78C178C170C168C1, 0x68C168C171018101,  // 0x00005378 
	0x8901890190C190C1, 0x910198C1B081B0C1, 0xA8C1A0C190C1A0C1, 0xA0C1A0C1A0C188C1,  // 0x00005398 
	0x8081708168817081, 0x7881808188C180C1, 0x78C170C168816081, 0x60C168C170C18101,  // 0x000053B8 
	0x810188C190C190C1, 0x98C1A881B881B8C1, 0xA901A8C19901A101, 0xB101B0C1A8C19881,  // 0x000053D8 
	0x8081788168816881, 0x7081888190C188C1, 0x78C1708168816081, 0x608160C168C178C1,  // 0x000053F8 
	0x80C180C190C198C1, 0xA081A881C081C0C1, 0xB101B101A901A101, 0xB101B0C1B0C1A0C1,  // 0x00005418 
	0x8881808170816881, 0x7881888198C190C1, 0x80C1788168816881, 0x6881688168C170C1,  // 0x00005438 
	0x78C188C198C19881, 0xA081B081C8C1D0C1, 0xD101B901B101A901, 0xA101A0C1A8C1A0C1,  // 0x00005458 
	0x88C1788170817081, 0x788190C1A0C190C1, 0x88C178C168816881, 0x68C168C170C170C1,  // 0x00005478 
	0x70C180C198C19881, 0xA081C0C1D0C1D901, 0xE101C941B901B101, 0xA901A0C198C198C1,  // 0x00005498 
	0x88C178C170817081, 0x808190C1A881A0C1, 0x90C180C1708168C1, 0x68C168C1790180C1,  // 0x000054B8 
	0x78C1808188C190C1, 0xA881C0C1D0C1E901, 0xE941D901C901B901, 0xA90198C190C188C1,  // 0x000054D8 
	0x80C178C178817081, 0x80819081A8C1A8C1, 0x910188C180C170C1, 0x68C1790189018901,  // 0x000054F8 
	0x88C178C178C180C1, 0x90C1C0C1D0C1E901, 0xE901D901C901C101, 0xB10198C188C188C1,  // 0x00005518 
	0x808178C178817081, 0x80819081A8C1B101, 0xA101A0C198C188C1, 0x88C1890191419901,  // 0x00005538 
	0x98C180C1708178C1, 0x88C1B0C1C0C1D8C1, 0xE901E141D101C141, 0xB101A0C1988190C1,  // 0x00005558 
	0x908180C178C17881, 0x7881888198C1B101, 0xB101A8C1A8C1A0C1, 0x91019941A141A941,  // 0x00005578 
	0xA0C190C178C178C1, 0x78C190C1B8C1D0C1, 0xE101D101C901C101, 0xB101A8C1A0C1A0C1,  // 0x00005598 
	0x9881888188C18081, 0x7881888190C1A901, 0xB101B101B0C1B0C1, 0x9941A141A941A941,  // 0x000055B8 
	0xA0C188C1788170C1, 0x70C180C19901C101, 0xD101D101C941C101, 0xB101B0C1B0C1B081,  // 0x000055D8 
	0x9881888180818081, 0x788188819081A0C1, 0xB101B101B0C1B101, 0xB141A981B141B141,  // 0x000055F8 
	0x990188C1788170C1, 0x68C178C170C1A101, 0xC101B901B901B901, 0xB0C1A8C1B8C1B881,  // 0x00005618 
	0xA081908180818081, 0x788180818881A0C1, 0xB101A8C1A8C1B101, 0xB141B181B141B141,  // 0x00005638 
	0x990188C178C170C1, 0x68C168C170C18901, 0xA101B101B101B101, 0xA8C1B0C1B8C1B8C1,  // 0x00005658 
	0xA88190C188818881, 0x808178C188C1A101, 0xA10198C1A0C1B0C1, 0xB141B981B181B141,  // 0x00005678 
	0xA10188C1788170C1, 0x60C168C180C188C1, 0xA0C1A901A8C198C1, 0xA0C1B0C1B8C1B881,  // 0x00005698 
	0xA88190C180818881, 0x8081788180C19901, 0x990188C198C1A901, 0xB141B9C1C1C1B981,  // 0x000056B8 
	0xA14188C178C170C1, 0x68C168C180C198C1, 0xA8C1B101A0C198C1, 0x98C1A881B0C1B881,  // 0x000056D8 
	0xA081908180818081, 0x808180C19101A101, 0x990188C198C1A101, 0xB141B981CA01C201,  // 0x000056F8 
	0xA941910178C178C1, 0x70C168C188C1A8C1, 0xA8C1B0C1A0C198C1, 0x9081A081A881B081,  // 0x00005718 
	0x98C1908180817881, 0x80C188C19901A101, 0x910188C198C1A101, 0xB141B981CA01CA01,  // 0x00005738 
	0xC1C1A14190C178C1, 0x78C170C190C1B881, 0xB8C1B8C1A8819881, 0x98C19881A0C1A881,  // 0x00005758 
	0x98C188C1888180C1, 0x80C180C191019901, 0x890188C198C1A901, 0xB101B981C9C1CA01,  // 0x00005778 
	0xC1C1B14198C180C1, 0x78C180C19081B081, 0xC8C1C081B881A881, 0xA081988198C1A0C1,  // 0x00005798 
};

u64 _ganontika_room_14_tex_000057B8[] = 
{
	0x1111589635AE1D96, 0x3535301105051111, 0x11050A0A050A0A0A, 0x0A0A0A0A0A0A0505,  // 0x000057B8 
	0x111111050A0A050A, 0x0A0A0A0A0A0A0A05, 0x1111051105111105, 0x1111111111111111,  // 0x000057D8 
	0x11583535583E678B, 0x353558050A0A0A11, 0x111111110A0A0A0A, 0x0A6F6F0A0A0A0A0A,  // 0x000057F8 
	0x0511111111050A0A, 0x0A0A0A6F6F0A0A05, 0x111111110511110A, 0x0505111111111111,  // 0x00005818 
	0x11576A9658586D8A, 0x3E6B11050A0A0A0A, 0x0511111105050A0A, 0x0A0A0A0A0A0A0A0A,  // 0x00005838 
	0x0A05051111110505, 0x0A0A0A0A0A050505, 0x050511110505050A, 0x050A050505050505,  // 0x00005858 
	0x1157206A5858B0A1, 0x8A4235050A0A0A0A, 0x05050511110A0A0A, 0x6F6F0A1111110A0A,  // 0x00005878 
	0x0A0A05050511110A, 0x0A6F6F6F0A0A0505, 0x0A05111111111105, 0x11050A0A0A0A0A0A,  // 0x00005898 
	0x11587168116A96C0, 0xA15835050A0A0505, 0x05050505050A0A6F, 0x0A0A0A11110A0A0A,  // 0x000058B8 
	0x050505050505050A, 0x6F6F0A0A050A0A0A, 0x050A050505050511, 0x11050A0A0A0A0A0A,  // 0x000058D8 
	0x111157A63E579CAE, 0x5758110505050A0A, 0x0A0A0A0A050A0A0A, 0x0505050505050505,  // 0x000058F8 
	0x0A0A0A0A0A05050A, 0x0A0A050505050505, 0x0A0A0A0A05050505, 0x05050A0A050A0A05,  // 0x00005918 
	0x111111419C9CA85A, 0x8A58350505050A0A, 0x0A0A05050A0A0A05, 0x050A050A0A0A0505,  // 0x00005938 
	0x0A0A0A0A05050A0A, 0x0A05050A05050505, 0x050A0A0A0A050505, 0x05050A05050A0505,  // 0x00005958 
	0x11115858ACAE9F46, 0x2AAB5811050A0A0A, 0x051105050A0A0505, 0x0A0A0A0A0A0A050A,  // 0x00005978 
	0x0A0A051105050A0A, 0x05050A0A0A050511, 0x11050A0A0A0A0505, 0x050A0A05050A0505,  // 0x00005998 
	0x11111157C14E5858, 0x587158056F0A0A05, 0x1111110505051111, 0x11050A0A0A6F6F0A,  // 0x000059B8 
	0x0A11111111050505, 0x111111050A0A0505, 0x05050A0A0A0A0A11, 0x0A0A050505050505,  // 0x000059D8 
	0x11585835ACAB5858, 0x586758056F0A0511, 0x050A0A0A11111111, 0x1111050A0A6F6F0A,  // 0x000059F8 
	0x0511050A0A0A1111, 0x1111111105050505, 0x0505050A0A0A050A, 0x0A05111105111105,  // 0x00005A18 
	0x11585889A19CB558, 0x9F7111050A0A0505, 0x0A0A0A0A05050505, 0x0505110A0A6F0A0A,  // 0x00005A38 
	0x05050A0A0A0A0505, 0x050505051105050A, 0x0A05050A0A0A0A0A, 0x0A0A051105051105,  // 0x00005A58 
	0x11112B0D96A89C4D, 0xA8A130110505050A, 0x05050505050A0A0A, 0x0A0A050A0A0A0505,  // 0x00005A78 
	0x0A0A05050505050A, 0x0A0A0A0A0511050A, 0x0A0A050A0A0A0A0A, 0x0A0A05050A05050A,  // 0x00005A98 
	0x116A0B6B1196EA9C, 0xA111051105050505, 0x0511110A0A0A0A0A, 0x0505050505050505,  // 0x00005AB8 
	0x05050511110A0A0A, 0x0A0A050505050505, 0x0A0A0A05050A6F0A, 0x05050A6F0A0A6F0A,  // 0x00005AD8 
	0x115A6A113535AA9C, 0x7111050505050505, 0x111111050A0A0A0A, 0x0511051111110505,  // 0x00005AF8 
	0x0511111111110A0A, 0x0A0A051105050505, 0x0A0A0511050A0A11, 0x11056F0A0A6F0A0A,  // 0x00005B18 
	0x72675B1196359F71, 0xA66A110505050505, 0x05050505050A0A05, 0x1111111111110505,  // 0x00005B38 
	0x050505050505050A, 0x0A0511111105050A, 0x0505051105051111, 0x050A6F0A056F0A05,  // 0x00005B58 
	0x11414158585271D8, 0x9CA62B110A050A0A, 0x0A0A0A0A05050505, 0x1111110A0A050505,  // 0x00005B78 
	0x0A0A0A0A0A0A0505, 0x050511111111050A, 0x051111050511110A, 0x6F0A0A11110A1111,  // 0x00005B98 
	0x1158679558A89C9F, 0x8BAB5B05050A0A05, 0x050A0A0A05050505, 0x0505050A0A0A050A,  // 0x00005BB8 
	0x0A05050A0A0A0505, 0x0505050505050505, 0x111111111111050A, 0x0A0A051111051111,  // 0x00005BD8 
	0x113CC06D58A89F58, 0x113E3E1105050505, 0x05050A0A0A050505, 0x050A050A0A050505,  // 0x00005BF8 
	0x050505050A0A0A05, 0x0505050A0505050A, 0x0511111111050A0A, 0x0A05111111111111,  // 0x00005C18 
	0x113E2AA641ACAA58, 0x58750B1111111105, 0x0505050A0A0A0A05, 0x1105050A05111111,  // 0x00005C38 
	0x11050505050A0A0A, 0x0A05110505050505, 0x05111111050A0A0A, 0x0511111105111105,  // 0x00005C58 
	0x11AB582AA6C1AA58, 0x112B2B110505050A, 0x05050505050A0A0A, 0x0511050A0A050511,  // 0x00005C78 
	0x050A050505050A0A, 0x0A05051105050511, 0x111111050A0A0A0A, 0x0511050511050511,  // 0x00005C98 
	0x112A11116DC19658, 0x11A1571105050A0A, 0x0A05050505050505, 0x0505050A0A0A0505,  // 0x00005CB8 
	0x0A0A0A0505050505, 0x0505050505111111, 0x1111050A0A050505, 0x0505050511050511,  // 0x00005CD8 
	0x110D111142AC4158, 0x57A158050A0A0A0A, 0x0A0505050505050A, 0x0A0A0505050A0A0A,  // 0x00005CF8 
	0x0A0A0A0505050505, 0x050A0A0A05111111, 0x11050A0A0A051105, 0x0A0A050505050505,  // 0x00005D18 
	0x110D123546676D57, 0x7AB5580A0A0A0A0A, 0x050505111111050A, 0x0A0A1105050A6F0A,  // 0x00005D38 
	0x0A0A050505111111, 0x050A0A0A11111111, 0x050A0A0A05050511, 0x050A05050A05050A,  // 0x00005D58 
	0x11350596966A676D, 0x7A5811050A0A0A05, 0x0505111111111111, 0x111111110A0A0A0A,  // 0x00005D78 
	0x0505050511111111, 0x1111111111110505, 0x050A0A05110A0A05, 0x0505050A05050A05,  // 0x00005D98 
	0x1111352BB59F969C, 0x6D58350505050505, 0x0505111111111111, 0x1111110A0A0A0505,  // 0x00005DB8 
	0x0505050511111111, 0x1111111111050505, 0x0A051111110A6F0A, 0x0A05050A0A050A0A,  // 0x00005DD8 
	0x051167AE9F9F96C0, 0x673535050A050505, 0x05050A0A05050505, 0x1111110505050505,  // 0x00005DF8 
	0x050505050A0A0505, 0x0505111111050505, 0x0505111105050505, 0x0A05110505110505,  // 0x00005E18 
	0x1135AC0B58589590, 0x905835050A050505, 0x05050A0A0A050505, 0x0505051111110505,  // 0x00005E38 
	0x050505050A0A0A05, 0x0505050505050505, 0x1111050505051111, 0x0505050511050511,  // 0x00005E58 
	0x11588A1158AA24A1, 0x5A1158110A050505, 0x05050A0A0A05050A, 0x0A0A051111050505,  // 0x00005E78 
	0x050505050A0A0A05, 0x050A0A0A05050505, 0x05050A050A051111, 0x11050A0A050A0A05,  // 0x00005E98 
	0x11115A759FD9A1AC, 0x285A11110A050A0A, 0x051111050A0A0A0A, 0x0505050A0A050505,  // 0x00005EB8 
	0x0A0A111111050A0A, 0x0A0A0505050A0A0A, 0x0A0A0A0A0511050A, 0x1111050511050511,  // 0x00005ED8 
	0x11110D5AAA33AE9F, 0x110B421105050505, 0x05050A0A0A050505, 0x0505051111110505,  // 0x00005EF8 
	0x050505050A0A0A05, 0x050505050505050A, 0x0A0A0A0A0511050A, 0x0A05050505050505,  // 0x00005F18 
	0x113511AE9CA6A858, 0x58776A1105050505, 0x05050A0A0A05050A, 0x0A0A051111050505,  // 0x00005F38 
	0x050505050A0A0A05, 0x050A0A0A0A05110A, 0x0A050A0A11050A0A, 0x0A05110505110505,  // 0x00005F58 
	0x050558B66DD8A658, 0x58351A1105050A0A, 0x051111050A0A0A0A, 0x0505050A0A050505,  // 0x00005F78 
	0x0A0A111111050A0A, 0x0A0A05050A050A0A, 0x0A051105110A0A05, 0x0511111111111111,  // 0x00005F98 
};

u64 _ganontika_room_14_tex_00005FB8[] = 
{
	0x0000000000000000, 0x0000000000000000, 0xD000000000000000, 0x0000000000000000,  // 0x00005FB8 
	0x0000000000000000, 0x0000000001111111, 0x4D1111D400000000, 0x0000000000000000,  // 0x00005FD8 
	0x0000000000000000, 0x0000013111111111, 0x4D4D11D1D4400000, 0x0000000000000000,  // 0x00005FF8 
	0x0000000000000000, 0x0003222222222222, 0x23D4DD444D1DA000, 0x0000000000000000,  // 0x00006018 
	0x0000000000000000, 0x0333322222BB2222, 0x2231331D148444A0, 0x0000000000000000,  // 0x00006038 
	0x0000000000000003, 0x12233222BBB22222, 0x2223322333148418, 0xA000000000000000,  // 0x00006058 
	0x0000000000000013, 0x2332222222233233, 0x222113112231448D, 0xA800000000000000,  // 0x00006078 
	0x0000000000002112, 0x222BBB2222233222, 0x223111113231D41D, 0xDAAA000000000000,  // 0x00006098 
	0x000000000002D132, 0x2222222222232222, 0x2311111D3331D122, 0xD8AAA00000000000,  // 0x000060B8 
	0x00000000003D12BB, 0x2223333223222222, 0x3111111322311133, 0x14A6760000000000,  // 0x000060D8 
	0x00000000011122BB, 0xB223322333222222, 0x1131333222231133, 0x2146676000000000,  // 0x000060F8 
	0x00000000D132BB2B, 0x2222233332222321, 0x1113223222221333, 0x3D889A7600000000,  // 0x00006118 
	0x00000003D332B222, 0x2332223122B21D11, 0x113221333223D111, 0x1D44A8A6A0000000,  // 0x00006138 
	0x0000000D122B2222, 0x3332332222244113, 0x332233312222811D, 0xD331488A70000000,  // 0x00006158 
	0x0000001D22222222, 0x11233222B2881113, 0x2222331132216441, 0x12214D4877000000,  // 0x00006178 
	0x000002D122222322, 0x1323222228A31112, 0x221111D1322A98D3, 0x22214318A7700000,  // 0x00006198 
	0x000001D222222221, 0x3222222387831133, 0x3144484222166122, 0x222112247A600000,  // 0x000061B8 
	0x00002D3222222231, 0x2322223877111133, 0x3D44443231798322, 0x2231122D67690000,  // 0x000061D8 
	0x00001D2222222233, 0x2222BB366A1DD322, 0x311113122A591222, 0x2113222466765000,  // 0x000061F8 
	0x0002112222BB2221, 0x222BB24668111323, 0x2313122229573222, 0x3132223479A65000,  // 0x00006218 
	0x0003D32222222231, 0x2222B28673332223, 0x111222B2A5943222, 0x112222D8A6765000,  // 0x00006238 
	0x0013D22222222231, 0x232B22A6A113214D, 0xDD32BBB469933233, 0x132221484A665500,  // 0x00006258 
	0x0032D12222222233, 0x33BB2386A1112D4D, 0x122BBB3669A31331, 0x32231D884A655500,  // 0x00006278 
	0x0033132222222223, 0x222B234681123312, 0x22BBB2A669121111, 0x223DD4848AA95500,  // 0x00006298 
	0x0D32122BB2221232, 0x222B2347822B2222, 0x23222D6696221332, 0x31141D4444865650,  // 0x000062B8 
	0x0D3132B222221133, 0x222B223D8222322B, 0xB2221A6698211122, 0x31D414DD41876950,  // 0x000062D8 
	0x0D11322222331122, 0x222BBBB22222BB2B, 0xBBB2866991111122, 0x21D14D1111886550,  // 0x000062F8 
	0x0811332323311132, 0x2222BBBBBBBBBBBB, 0xBB2DA76663D41322, 0x31D3811111145550,  // 0x00006318 
	0x0811311323331112, 0x222BBBBBBBBBBBBB, 0xB2148A7981DD1331, 0xDD31A13322345550,  // 0x00006338 
	0x081121131323D1D1, 0x222BBBBBBBBBBBBB, 0x23D48A69444DD1D4, 0x812D722323475550,  // 0x00006358 
	0x081D133113214D44, 0x132BBBB222BB2B22, 0x2DD48A9988444484, 0x131A631334875550,  // 0x00006378 
	0x8A14D222323D4444, 0xD1122232222BB223, 0x1488479944D4D4D1, 0x1B499111444A5550,  // 0x00006398 
	0x0AD1122223184444, 0x44D1DD1122BB2231, 0xD48AA66644444DD3, 0xB28691DD11DA5555,  // 0x000063B8 
	0x0741331111488441, 0xDD411D4122222311, 0xD48A7777484DD132, 0xB1A69441234A5550,  // 0x000063D8 
	0x078D31D1144A8884, 0xDD84D1D1113331D4, 0xD44AAA69844D12B2, 0x2D7964D331D65550,  // 0x000063F8 
	0x0AAD1111DDDA4848, 0x44D84D331111D44D, 0x144AA76684D3BBB1, 0x4A699D1111465550,  // 0x00006418 
	0x0778133D411A8444, 0xA8D4884322314881, 0x1D488AA7A322B228, 0x7699A11111865550,  // 0x00006438 
	0x0AAA411D11D8A8AA, 0xAA88441132148444, 0x4448888A7D22B21A, 0x7999413231865550,  // 0x00006458 
	0x06A78311111DAAA6, 0x696844DDDD444888, 0x48AAA888A4122346, 0x959933221DA55550,  // 0x00006478 
	0x007A832331118AAA, 0x7957844488448884, 0x877AAAD484D11DA6, 0x55972222D4A55500,  // 0x00006498 
	0x007A8D322311D6A8, 0xAA6967A8A7667A88, 0xA6AAA8DA88A84869, 0x5554222318655500,  // 0x000064B8 
	0x00A6A4322311166A, 0xA7A6667AA7666AAA, 0x77AAA8AAAAAAA669, 0x556B22221A555500,  // 0x000064D8 
	0x00867AD331133159, 0x6A7777696667A776, 0x667AA8A777676995, 0x5512113146555500,  // 0x000064F8 
	0x000A688111333365, 0x57AAA769967AAA76, 0x66A88A7669666955, 0x583DDDD4A9555000,  // 0x00006518 
	0x000767AD31131149, 0x5566666669777777, 0x7A8A766666669555, 0x611114AA95555000,  // 0x00006538 
	0x0000A96AD111111D, 0x5599699666999666, 0x6776669999995555, 0x31DD448655550000,  // 0x00006558 
	0x0000689784113233, 0x4555555955999996, 0x6699995995555551, 0x311448A655550000,  // 0x00006578 
	0x00000769A4D13333, 0x1D55555599599996, 0x6669955559555512, 0x311DA76555500000,  // 0x00006598 
	0x000009659AD33222, 0x23D6555555559999, 0x5595599555556223, 0x1114769555500000,  // 0x000065B8 
	0x00000097968DD132, 0x231DA59559555595, 0x55555555559A3222, 0x11DA695555000000,  // 0x000065D8 
	0x000000597978D131, 0xDDDD189555595555, 0x5555555556422331, 0xD486955550000000,  // 0x000065F8 
	0x0000000555574114, 0x48D1111165555955, 0x5555559A11133114, 0x8A69555550000000,  // 0x00006618 
	0x000000006556ADDD, 0x11111333111A7955, 0x556AAD4111331D48, 0x8A65555500000000,  // 0x00006638 
	0x0000000009559681, 0x331D111113333111, 0x133D444D44114848, 0xA655555000000000,  // 0x00006658 
	0x000000000095559A, 0x44D1111113311DD1, 0x11D4D4444DD14487, 0x9555550000000000,  // 0x00006678 
	0x0000000000055555, 0x6A411148D11444D1, 0xD4444DD4D11D8A69, 0x5555500000000000,  // 0x00006698 
	0x0000000000005555, 0x59A488A81D844114, 0x84DDDDDD144A7955, 0x5555000000000000,  // 0x000066B8 
	0x0000000000000055, 0x55566A41D484D448, 0x884DD8A48A765555, 0x5500000000000000,  // 0x000066D8 
	0x0000000000000005, 0x5555566A77A88AAA, 0xAA88AAAA76955555, 0x5000000000000000,  // 0x000066F8 
	0x0000000000000000, 0x0555555996669666, 0x6776666955555550, 0x0000000000000000,  // 0x00006718 
	0x0000000000000000, 0x0005555555995555, 0x5555555555555000, 0x0000000000000000,  // 0x00006738 
	0x0000000000000000, 0x0000055555555555, 0x5555555555500000, 0x0000000000000000,  // 0x00006758 
	0x0000000000000000, 0x0000000005555555, 0x5555555000000000, 0x0000000000000000,  // 0x00006778 
	0x0000000000000000, 0x0000000000000000, 0x9000000000000000, 0x0000000000000000,  // 0x00006798 
};

u64 _ganontika_room_14_tex_000067B8[] = 
{
	0x28C5398B4A0D5A91, 0x528F5A8F5A4F5A8F, 0x524F5A4F524F4A0B, 0x39CB41CD524F4A0D,  // 0x000067B8 
	0x41CD41CD39CB39CB, 0x314762D36291524F, 0x524F524F5251524F, 0x5251524F524F39CB,  // 0x000067D8 
	0x4A0D41CD31492905, 0x398B314931473147, 0x31493149398941CB, 0x39493189314739CB,  // 0x000067F8 
	0x5A8F4A0F420D420D, 0x420D4A0F524F524F, 0x524F524F524F524F, 0x420D420D420D41CD,  // 0x00006818 
	0x2907420D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D41CD, 0x4A0D41CD524F4A0D,  // 0x00006838 
	0x4A0D4A0D4A0D4A0D, 0x318962D141CD41CD, 0x4A0D4A0D41CD318B, 0x39CD4A0D41CD41CD,  // 0x00006858 
	0x4A0D4A0D41CB41CB, 0x41CB420D4A0D4A0D, 0x4A0D4A0D4A0D4A4F, 0x314731474A0F524F,  // 0x00006878 
	0x4A0F4A0F4A0D41CD, 0x39CB524F41CD4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x00006898 
	0x29074A0D524F4A0D, 0x4A0D4A0D4A4D4A0D, 0x41CD41CD39CB41CD, 0x41CD41CD39CB41CD,  // 0x000068B8 
	0x39CB41CD4A0D41CD, 0x29475A8F4A0D4A0D, 0x41CD41CD41CD31CB, 0x420D39CD39CD39CD,  // 0x000068D8 
	0x420D39CD39CD41CD, 0x39CD39CB41CD41CD, 0x41CD41CD41CD418B, 0x2907524F524F524F,  // 0x000068F8 
	0x41CD4A0D41CD41CD, 0x39CD39CD39CB4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x00006918 
	0x2105420D524F4A0F, 0x524F4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x00006938 
	0x4A0D39CB39CB39CB, 0x2907524F41CB318B, 0x318B39CB318B318B, 0x39CB4A0D524F4A0D,  // 0x00006958 
	0x4A0D4A0D4A0D420D, 0x39CD39CD420D420D, 0x420D31CB31CB3989, 0x3149524F4A0D420D,  // 0x00006978 
	0x41CB420D420D4A0F, 0x4A0F4A0F420F420D, 0x4A0F420D41C94A0D, 0x524F524F524F4A0D,  // 0x00006998 
	0x29074A0D524F4A0D, 0x41CB418B4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x41CD41CD4A0D41CD,  // 0x000069B8 
	0x4A0D4A0D4A0D41CD, 0x29475A8F49CB39CB, 0x41CD39CD39CD39CD, 0x39CD41CD41CD4A0D,  // 0x000069D8 
	0x41CD41CD39CB41CD, 0x41CD39CB39CB4A0D, 0x4A0D4A0D4A0D418B, 0x3189528F41CB39CB,  // 0x000069F8 
	0x39CD39CB39CB41CD, 0x39CD39CD39CD39CB, 0x41CD39CB398941CD, 0x39CB39CB39CB31CB,  // 0x00006A18 
	0x31494A0F420B41CB, 0x39CB418B49CB4A0D, 0x4A0B4A0D4A0D4A0D, 0x4A0D41CD4A0D4A0D,  // 0x00006A38 
	0x4A0D4A0D4A0D4A0D, 0x31475A8F41C939CB, 0x4A0D41CD39CD39CB, 0x39CB41CB420B4A0D,  // 0x00006A58 
	0x4A0D4A0D4A0D4A0D, 0x4A0D41CD4A0D4A0D, 0x4A0D4A0D4A0D41CB, 0x3189524F41C939CB,  // 0x00006A78 
	0x420D41CD39CB39CB, 0x39CB41CD41CD39CD, 0x318B318B418941CD, 0x39CD41CD4A0D41CD,  // 0x00006A98 
	0x3149524F41CB398B, 0x39CB41CB398B318B, 0x39CB41CD39CD41CD, 0x41CD41CD41CD41CD,  // 0x00006AB8 
	0x39CD39CD41CD41CB, 0x31495A9149C939CB, 0x39CB31CB31CB31CB, 0x31CB31CB39CB39CD,  // 0x00006AD8 
	0x41CD39CD39CB39CB, 0x39CD41CD41CD41CD, 0x41CD39CD4A0D3989, 0x3189528F41CB41CB,  // 0x00006AF8 
	0x39CB39CB39CB39CB, 0x39CB39CB39CB39CB, 0x39CB39CB39494A0D, 0x4A0D41CD41CD39CB,  // 0x00006B18 
	0x31495A914A0D41CD, 0x420D41CB41CB41CB, 0x41CB41CB41CD41CD, 0x420D420F420D39CB,  // 0x00006B38 
	0x39CB39CB41CD3189, 0x31494A0D49C941CD, 0x39CB39CD39CB39CB, 0x39CD41CB41CD41CB,  // 0x00006B58 
	0x420D420D39CD39CD, 0x39CD420D420D4A0D, 0x4A0D4A0D524F41CB, 0x2907524D418949C9,  // 0x00006B78 
	0x49CB4A0B49CB41CD, 0x41CD41CD49CB49CB, 0x418941894989520D, 0x524D49CB39CB39CB,  // 0x00006B98 
	0x31494A0D39CB420D, 0x4A0B4A0D41CB39CB, 0x39CB39CB39CB39CD, 0x39CB318B39CB39CB,  // 0x00006BB8 
	0x39CB318B4A0D41CB, 0x31494A0D51C949CB, 0x41C941C939893989, 0x39893989398939C9,  // 0x00006BD8 
	0x31CB39CD39CD39CD, 0x39CD39CD31CB31CB, 0x31CB39CB41CD3989, 0x31494A0D41CD41CB,  // 0x00006BF8 
	0x41CD41CD41CD49CD, 0x41CD41CD398B39CB, 0x318B398B398B41CD, 0x4A0D4A0D39CB39CB,  // 0x00006C18 
	0x2907310731472907, 0x2907290729072907, 0x2907290531073107, 0x3149394939493949,  // 0x00006C38 
	0x3149314931493107, 0x210539CB49C951CB, 0x51CB49CB39893989, 0x39893989318B39C9,  // 0x00006C58 
	0x39CB318B318B318B, 0x39CB318B39CB39CB, 0x39CB318B41CD3989, 0x31493107398B41CD,  // 0x00006C78 
	0x41CD41CD41CD41CD, 0x398B41CB39CB31CB, 0x39CD39CB31CB524F, 0x524F4A0D41CD318B,  // 0x00006C98 
	0x41CD41CD41CB39CB, 0x398B398929073949, 0x41CB49CB5A8F4A4D, 0x4A4D524F4A4F4A4D,  // 0x00006CB8 
	0x4A4D318B39CB3149, 0x31494A0D5A4B4209, 0x4209420941C939C9, 0x398739C942094209,  // 0x00006CD8 
	0x42094209420B420B, 0x420B4A0B41CD41CD, 0x39CB31CB41CD4A0D, 0x2907314931493149,  // 0x00006CF8 
	0x3149314931493147, 0x3149314931493149, 0x3147314729073147, 0x31473147318B318B,  // 0x00006D18 
	0x4A0D4A0D4A0D39CD, 0x39CB39CB29073149, 0x5A8F4A0B4A0B41CD, 0x41CD41CD4A0D4A0D,  // 0x00006D38 
	0x4A0D39CB41CD41CD, 0x3989290729072907, 0x20C518C318C32105, 0x3147318931473147,  // 0x00006D58 
	0x3107290529053107, 0x3147314931073107, 0x3149314931493189, 0x31473147524F520B,  // 0x00006D78 
	0x41CB4A0B4A0B41CB, 0x4A0B420B4A0B4A0B, 0x398B318B29054A0D, 0x5291524F524F4A0D,  // 0x00006D98 
	0x41CD41CD41CD39CB, 0x31CB314729073949, 0x524D4A0B4A0D41CD, 0x420D4A0D4A0D4A0D,  // 0x00006DB8 
	0x4A0D39CB4A0D4A0D, 0x4A0B41CD41CB49CD, 0x41CB41893147524F, 0x5A915A91524F524F,  // 0x00006DD8 
	0x4A0F4A0F4A0F39CB, 0x4A0D41CD41CD4A0D, 0x41CD41CD41CD41CD, 0x398931496AD1524B,  // 0x00006DF8 
	0x4A0D4A0D4A0D41CD, 0x4A0D4A0D4A0D4A0D, 0x41CD39CB3147524F, 0x49CD41CD41CD398B,  // 0x00006E18 
	0x41CD41CD39CB318B, 0x39CD318B29053989, 0x49CB4A0D39CD39CD, 0x41CD4A0D4A0B4A0B,  // 0x00006E38 
	0x4A0B41C94A0B520B, 0x520B49CB49CB520B, 0x39CB41CB3149524F, 0x5A4D4A0D420D420D,  // 0x00006E58 
	0x420D420D420D420B, 0x4A4B4A4B4A4B4A4B, 0x4A4B4A4B4A0D524F, 0x41CD31476AD1524B,  // 0x00006E78 
	0x4A0D4A0D41CD41CD, 0x4A0D4A0D4A0D41CD, 0x41CD39CD318B5A4F, 0x5A4F524F41CD39CD,  // 0x00006E98 
	0x39CD41CD39CB39CD, 0x39CD318B29054A0D, 0x49CB4A0D41CB41CD, 0x41C95A4D520D520D,  // 0x00006EB8 
	0x4A0B49CB4A0B41C9, 0x520B4A0B4A0B41CD, 0x41CD41CD39CB3189, 0x524D41CD39CB41CD,  // 0x00006ED8 
	0x39CB39CD39CB39CD, 0x39CB39CB39CB41CD, 0x39CB41CD4A0D4A0D, 0x41CB3149628F4A0B,  // 0x00006EF8 
	0x41CD39CB39CD39CB, 0x39CB41CD39CB39CD, 0x39CB318B31475A4F, 0x524F4A0D41CB41CD,  // 0x00006F18 
	0x39CB41CD41CD41CD, 0x41CD318B29054A0D, 0x49CB520D51CB41C9, 0x41C9418941C94A0D,  // 0x00006F38 
	0x4A0D49CB4A0B4A0B, 0x51CB4A0D41CD41CD, 0x4A0D4A0D41CD3189, 0x520B41CD39CB4A0D,  // 0x00006F58 
	0x39CD39CD39CD39CD, 0x39CD39CB39CB39CB, 0x39CB39CB41CD4A0D, 0x41CB314939CB5207,  // 0x00006F78 
	0x520B4A0B4A094A09, 0x41C9520B41CD39CD, 0x39CB318B3147520B, 0x520D4A0D49CB49CB,  // 0x00006F98 
	0x41CD4A0D4A0D4A0D, 0x524F41CD314739CB, 0x41CD4A0F49CB39C9, 0x39C941CB39C931CB,  // 0x00006FB8 
	0x420D39CD39CD39CD, 0x420D520B4A0B4A0B, 0x4A0D524F4A0D418B, 0x4A0D41C941CD39CD,  // 0x00006FD8 
	0x39CD39CB39CB39CD, 0x41CD39CD31CB318B, 0x31CB31CB4A0D4A0D, 0x41CB31894A0D49CB,  // 0x00006FF8 
	0x39CB39CB39CB39CB, 0x41CD39CB39CB39CB, 0x318B31472905524F, 0x49CD398B39CB41CD,  // 0x00007018 
	0x3147314731473149, 0x31473147290539CB, 0x41CD4A0D4A0B4A0D, 0x4A0D39CB318B39CB,  // 0x00007038 
	0x41CD39CD41CD41CD, 0x41CD41CD41CD39CB, 0x39CD41CD39CB3989, 0x4A0D49CB41CD39CB,  // 0x00007058 
	0x39CB318B39CB39CB, 0x318B318B318B318B, 0x318B318B41CD41CD, 0x41CD314729073107,  // 0x00007078 
	0x3107310731493107, 0x2907310731073149, 0x314921053147318B, 0x318B314731473147,  // 0x00007098 
	0x39CB398B39CB318B, 0x39CD318B2905318B, 0x39CB39CD420D39CD, 0x420D31CB31CB31CB,  // 0x000070B8 
	0x318B318B318B31CB, 0x41CD39CD39CB31CB, 0x318B41CD39CB3147, 0x39CB318B41CD41CD,  // 0x000070D8 
	0x39CD39CB39CB39CB, 0x39CB39CB318B39CB, 0x318B318B39CD41CD, 0x39CB3149524F4A4F,  // 0x000070F8 
	0x4A4D4A0D4A0D4A0D, 0x4A0D4A0D420B41CB, 0x41CB418B39CB39CB, 0x39CB39CB39CB39CB,  // 0x00007118 
	0x39CB39CB39CB39CB, 0x39CB39CB314739CB, 0x4A0B41CB41CB4A0B, 0x4A0B41CB39C931CB,  // 0x00007138 
	0x39C941CB41CB41CB, 0x41C941C941CB39CB, 0x39CB41CD318B2905, 0x4A0D41CD39CD39CB,  // 0x00007158 
	0x39CB318B318B318B, 0x318B318B318B318B, 0x39CB31CB39CD39CB, 0x39CB31495A9141CB,  // 0x00007178 
	0x41C94A0B4A0B4A0B, 0x4A0B4A0B420B41CB, 0x39CB39CB39CB39CB, 0x39CB41CD4A0D39CB,  // 0x00007198 
	0x39CB39CB39CB4A0D, 0x4A0D39CB31473147, 0x3989318931893107, 0x3147290529053147,  // 0x000071B8 
	0x29053147318B318B, 0x3147314931073107, 0x3107290720C520C5, 0x3107310731072905,  // 0x000071D8 
	0x2905290529052905, 0x2905290531493149, 0x3949394939493149, 0x2905290552514A0B,  // 0x000071F8 
	0x4A0B520B4A0B41CB, 0x41CB41C949CB4209, 0x420942094A0B4A0B, 0x4A0D41CB49CB39CB,  // 0x00007218 
	0x39CB39CB4A0D4A0D, 0x4A0D39CB3147524F, 0x5A91524F5A91524F, 0x4A0D39895A915A91,  // 0x00007238 
	0x5A4F5A4F5A4F628F, 0x5A4F524D41C949CB, 0x49CB49CB39CB39CB, 0x39CB41CD41CD4A0D,  // 0x00007258 
	0x41CD314931074A0F, 0x525141CD4A0D4A4D, 0x4A0F318B318B41CD, 0x41CD31472905420D,  // 0x00007278 
	0x318B39CB39CB39CB, 0x318B39CB39CB39CB, 0x39CB39CB41CB398B, 0x41CB39CB39CB39CB,  // 0x00007298 
	0x39CB39CB39CB39CB, 0x39CB39CB31474A0D, 0x420D524F4A0D41CD, 0x524F418B62D331CD,  // 0x000072B8 
	0x420D39CD4A0B41CB, 0x4A4B4A0B4A0B524B, 0x524B524B41CD4A0D, 0x41CD41CD41CD4A0D,  // 0x000072D8 
	0x41CD39CB31076313, 0x4A0D4A0D4A0D4A0D, 0x4A0D41CB41CB3989, 0x398B314731475291,  // 0x000072F8 
	0x39CB41CD41CD41CD, 0x39CB39CB39CB39CB, 0x39CB39CB39CB39CB, 0x41CD39CB41CD4A0D,  // 0x00007318 
	0x39CB39CB39CB39CB, 0x39CB39CD31474A4F, 0x39CD4A0D4A0D4A0D, 0x524F398962D3420D,  // 0x00007338 
	0x39CD41CD39CB39CB, 0x420D420D420D420D, 0x420D420D420D420D, 0x4A0D4A0D4A0D4A0D,  // 0x00007358 
	0x41CD39CB3149524F, 0x41CB41CB49CB420D, 0x41CD39CB39CB398B, 0x39CB314731475291,  // 0x00007378 
	0x39CD420D420D420D, 0x420D39CD31CB31CB, 0x31CB420D420D420D, 0x420D4A0D4A0D41CD,  // 0x00007398 
	0x3147314731492907, 0x2907290731473147, 0x3147314739CB3147, 0x314731475A9139CD,  // 0x000073B8 
	0x31CB41CD39CD41CD, 0x41CD39CB4A0D4A0D, 0x4A0D4A0D41CD41CD, 0x39CD39CB39CB39CB,  // 0x000073D8 
	0x4A0D41CD31496291, 0x49CB49CB49CB49CB, 0x49CB49CB41CB41C9, 0x39CB39CB3147420D,  // 0x000073F8 
	0x41CD41CD4A0D4A4D, 0x4A0D4A0D4A0D49CB, 0x4A0D4A0D524F524F, 0x524F524F4A0D3147,  // 0x00007418 
	0x524F4A8F4A8F4A4D, 0x524D524D524D524D, 0x5A8F5A8F4A0B4A0B, 0x4A0D39C94A0F41CD,  // 0x00007438 
	0x39CD39CD4A0D4A0D, 0x41CD39CD41CD39CD, 0x39CD39CB39CB318B, 0x41CD39CB39CB41CD,  // 0x00007458 
	0x4A0D41CD314962D3, 0x41CB41CB420B41CD, 0x41CD39CD39CB39CB, 0x398B318B31472905,  // 0x00007478 
	0x3189314731493989, 0x398B31893189418B, 0x3149290731493149, 0x3189398939C939CB,  // 0x00007498 
	0x41CD39CB4A0B4209, 0x42094A0B42094209, 0x4A4B4A4B4A0D4A0D, 0x4A0B39C93147524F,  // 0x000074B8 
	0x39CD39CD39CD39CD, 0x39CB39CB41CD4A0D, 0x41CD39CD39CD39CB, 0x39CB39CB39CB41CD,  // 0x000074D8 
	0x524F524F3149524F, 0x41CB520B4A0B49CB, 0x49CB41C941C941CD, 0x39CB39CB41CD2905,  // 0x000074F8 
	0x41CB4A0F524F524F, 0x524F52514A0F524F, 0x4A0D318B5AD1524F, 0x5A4F4A0B41CB41CD,  // 0x00007518 
	0x398B398B41CB41CB, 0x4A0D39CB42094A0B, 0x5A8D524B4A0D4A0D, 0x520B39C9318941CD,  // 0x00007538 
	0x41CD520B520B520B, 0x520B520B520B49CB, 0x41CB41C939CB39CB, 0x39CB39CB39CB4A0D,  // 0x00007558 
	0x41CD39CB2907524F, 0x4A0B41CD41CD39CB, 0x39CB39CB41CD41CD, 0x41CB524F39CB3147,  // 0x00007578 
	0x4A0F41CD41CD39CB, 0x41CD41CD41CD41CD, 0x41CD39CB5A4F4A0D, 0x4A0B41CD39CB398B,  // 0x00007598 
	0x39CD39CD39CD39CD, 0x4A0B4A0B4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x520B41CB3989524F,  // 0x000075B8 
	0x4A0D41CD4A0D39CB, 0x39CD4A0D41CD420B, 0x420B420B4A4B4A0B, 0x4A4B4A0D41CD4A0D,  // 0x000075D8 
	0x41CD41CD3189524F, 0x4A0B41CD4A0B4A0B, 0x4A0B4A0B41CD41CD, 0x41CB4A0D39CB318B,  // 0x000075F8 
	0x5A914A0D4A0D4A0D, 0x4A0D4A0D41CD4A0D, 0x41CD3147420D39CB, 0x39CB39CB39CB31CB,  // 0x00007618 
	0x39CD39CD39CD4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x520B4A0B3989524F,  // 0x00007638 
	0x4A0D4A0D41CD39CD, 0x41CD39CD39CD39CD, 0x39CB39CD39CD39CB, 0x39CD39CD39CD39CD,  // 0x00007658 
	0x39CD39CB314941CD, 0x41CD41CD41CD39CD, 0x39CB39CB39CB41CD, 0x398B4A0D39CB3147,  // 0x00007678 
	0x524F524F4A0D41CD, 0x41CD41CD41CD4A0D, 0x41CD318B4A0F39CD, 0x39CD39CD39CD39CD,  // 0x00007698 
	0x41CD39CD41CD41CD, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A4D31894A0F,  // 0x000076B8 
	0x420D4A0F4A0F4A0F, 0x4A0F4A0F4A0F524F, 0x4A0F4A0F4A0F41CD, 0x39CB41CD41CD41CD,  // 0x000076D8 
	0x4A0D4A0D3189524F, 0x4A0D41CD4A0D41CD, 0x41CD41CD4A0D41CB, 0x39CB4A0D39CB2905,  // 0x000076F8 
	0x41CD524F4A0D4A0D, 0x41CD41CD41CD39CB, 0x318B3147524F420D, 0x420D420D420D420F,  // 0x00007718 
	0x3147314731493189, 0x3189318B31893989, 0x41CD39CB39CB31CB, 0x31892949314718C3,  // 0x00007738 
	0x18C3290531493149, 0x3949314931493149, 0x2907314929073989, 0x31CB314731473147,  // 0x00007758 
	0x314718C32905524F, 0x39CB39CB39CB39CB, 0x39CB39CB41CB4A0D, 0x4A0D4A0D39CB2905,  // 0x00007778 
	0x2905290529053147, 0x3147314731473147, 0x290518C329052905, 0x3147314731473147,  // 0x00007798 
};

u64 _ganontika_room_14_tex_000077B8[] = 
{
	0x0D515D33370B3E54, 0x0B24510B37334A4B, 0x5451245353745439, 0x5D374C4C542B542B,  // 0x000077B8 
	0x512B2B51545D74DA, 0x51547454514B5151, 0x37333353375174A3, 0x745351510B0D3713,  // 0x000077D8 
	0x0B545051370B0854, 0x1351DA74A353330B, 0x513A2B5174335454, 0x5437283A532B530C,  // 0x000077F8 
	0x3A403A3A3351A345, 0x5174370C030C080B, 0x132F403A330B512B, 0x5D374B4C2F1B0B16,  // 0x00007818 
	0x380851080107000B, 0x0013370C09070901, 0x16010308740D3724, 0x0B01000013000800,  // 0x00007838 
	0x0C0000090C162B39, 0x0B0803096909070C, 0x000914011B36742B, 0x371B010000070309,  // 0x00007858 
	0x09093A0909090700, 0x00000C0000000000, 0x0C0900002B0B530B, 0x0000000000000000,  // 0x00007878 
	0x00090909090C1B51, 0x0C07090700000000, 0x00000014000C5136, 0x0C00070700000009,  // 0x00007898 
	0x0007010100000000, 0x0000000707000701, 0x0001030700163336, 0x0000000000000000,  // 0x000078B8 
	0x0700000707070C0B, 0x0107000000000000, 0x0000000714092B01, 0x0700000000000007,  // 0x000078D8 
	0x0003090000090003, 0x0000000003030C0C, 0x0203040014073716, 0x0000010402020000,  // 0x000078F8 
	0x0300030300070940, 0x0000000000000000, 0x0000010069070C00, 0x0000000000030309,  // 0x00007918 
	0x0001000000010000, 0x0001040101000000, 0x00011B0207140136, 0x0000010101010101,  // 0x00007938 
	0x000100000000071B, 0x0001010100000000, 0x0001010169070000, 0x00010001011B0100,  // 0x00007958 
	0x01010101011B1B01, 0x1B01000101000000, 0x0000010114070701, 0x0702010101010001,  // 0x00007978 
	0x0101010C0C0C0107, 0x0000010101010101, 0x0000010009000303, 0x0001010104010009,  // 0x00007998 
	0x0000000000010000, 0x0000000001010101, 0x0000000069090000, 0x0304000100000009,  // 0x000079B8 
	0x0000090000010009, 0x0009090909090969, 0x6969696969070703, 0x0101010101010009,  // 0x000079D8 
	0x0909090909090909, 0x0900090909090909, 0x0909090909090909, 0x0714090969696969,  // 0x000079F8 
	0x6969696969696909, 0x0900000009690900, 0x0101000900070909, 0x0909090909090009,  // 0x00007A18 
	0x041B2F1B1B1B2F1B, 0x0001010100000700, 0x000100000000010C, 0x0100010000000101,  // 0x00007A38 
	0x041B045C5C2F2F1B, 0x0100000101000901, 0x01041B0101000001, 0x000001000000011B,  // 0x00007A58 
	0x00011B1B01010101, 0x0400000000010009, 0x0000010101000301, 0x0101000000010401,  // 0x00007A78 
	0x1B1B1B1B01040404, 0x0401010001016900, 0x0001000101010001, 0x1B1B000000010100,  // 0x00007A98 
	0x01011B0101010101, 0x1B01010101010914, 0x0000090001010401, 0x0100000001000000,  // 0x00007AB8 
	0x01041B0104010100, 0x0101010401010909, 0x0901000101000101, 0x0001000900010001,  // 0x00007AD8 
	0x010101011B2F1B01, 0x0104040401000014, 0x0001000000000100, 0x0101010101010001,  // 0x00007AF8 
	0x01011B01011B0401, 0x010101011B010909, 0x0901010101010100, 0x0101010900010000,  // 0x00007B18 
	0x010101041B1B1B04, 0x04011B041B000009, 0x0001010101010000, 0x0001000101040101,  // 0x00007B38 
	0x0101011B011B0101, 0x1B04010100000909, 0x0001000001010100, 0x01000069001B0001,  // 0x00007B58 
	0x000104010101011B, 0x0001041B1B010109, 0x0001011B00001B00, 0x0000010000000009,  // 0x00007B78 
	0x0001010101010101, 0x0000010101020700, 0x0001010100000100, 0x0000004909000009,  // 0x00007B98 
};

u64 _ganontika_room_14_tex_00007BB8[] = 
{
	0x0909090909090909, 0x0909090900090909, 0x0709090909090007, 0x0709090909090909,  // 0x00007BB8 
	0x0909090909090909, 0x0909090907090709, 0x0909090909090909, 0x0709090909090909,  // 0x00007BD8 
	0x0000010101010003, 0x0300041B01010001, 0x0009000007000000, 0x0900040000090900,  // 0x00007BF8 
	0x0115151501010201, 0x0100040401150401, 0x0000000900000000, 0x0700010000000000,  // 0x00007C18 
	0x0000000303020202, 0x0200000000011B1B, 0x010100030901011B, 0x1B01041501020007,  // 0x00007C38 
	0x020002001B151515, 0x151515151B011515, 0x15041B0101010404, 0x1503000000010009,  // 0x00007C58 
	0x0900020203000000, 0x0200000000000000, 0x0000000209000101, 0x0401150101020009,  // 0x00007C78 
	0x0202020201010102, 0x0215150103030303, 0x0202010101010C01, 0x0402010101000007,  // 0x00007C98 
	0x0001020101010101, 0x0000010000000000, 0x000000020900010C, 0x0C15150404020309,  // 0x00007CB8 
	0x0002020201020101, 0x0101010101020202, 0x0202010202020101, 0x0101010001010107,  // 0x00007CD8 
	0x0900000104010101, 0x0003000002010104, 0x0101000209010C0C, 0x0C0C010101010009,  // 0x00007CF8 
	0x0003020200000201, 0x0200020101030202, 0x0202020203000102, 0x0102010100010009,  // 0x00007D18 
	0x00000201011B0401, 0x0102010101010200, 0x00011B0107000C01, 0x0C0C010C01010109,  // 0x00007D38 
	0x0101000200010202, 0x01010C0C1B020202, 0x0203020303020200, 0x0000010101010107,  // 0x00007D58 
	0x00010104151B1B04, 0x0401010101010101, 0x0101010109010101, 0x0C0C0C0404040009,  // 0x00007D78 
	0x0000010101010101, 0x0101010101020200, 0x0000000000010101, 0x020202010C1B0109,  // 0x00007D98 
	0x0001000000010000, 0x0000000001010401, 0x0000010007000001, 0x0102020000000909,  // 0x00007DB8 
	0x0709000000020000, 0x0000000000000000, 0x0000010100000003, 0x0302010103000109,  // 0x00007DD8 
	0x0907090909090909, 0x0909090909090909, 0x0907090909070900, 0x000003020301043D,  // 0x00007DF8 
	0x3D3F3F3F04010000, 0x0000000000000000, 0x0000000000000000, 0x0000000009090007,  // 0x00007E18 
	0x041B2F2F5C2F2E2E, 0x1B04010100000900, 0x0000000900010101, 0x1B2F1B1B2F1B1B1B,  // 0x00007E38 
	0x1B1B1B012F2F1B1B, 0x00011B1B2F010000, 0x010001010101011B, 0x041B010101011B1B,  // 0x00007E58 
	0x1B041B1B1B1B0404, 0x041B1B013D010001, 0x01011B2F1B04011B, 0x1B011B01011B1B1B,  // 0x00007E78 
	0x0401041B04043D04, 0x0704010101010000, 0x000004011B041B04, 0x1B01011B01011B01,  // 0x00007E98 
	0x0101042F04040101, 0x010101010C010900, 0x011B011B1B1B2F1B, 0x0401011B1B1B1B2F,  // 0x00007EB8 
	0x1B041B0404040401, 0x0901040100010000, 0x001B1B011B012F0C, 0x0101010101010101,  // 0x00007ED8 
	0x041B1B042E2F2F1B, 0x1B150C0103000900, 0x011B010101010101, 0x0101010101011B1B,  // 0x00007EF8 
	0x043D2E1B2F040100, 0x0701040101010300, 0x011B010101011B04, 0x0401010101010101,  // 0x00007F18 
	0x01011B04011B011B, 0x151B0C0101020709, 0x01010101010C0C01, 0x0001010401011B1B,  // 0x00007F38 
	0x0404041B1B1B0401, 0x0004041B2F2F0100, 0x0104040104010101, 0x0101020201010404,  // 0x00007F58 
	0x0001000101000101, 0x010415151B010900, 0x0201010401000101, 0x0001010101011B1B,  // 0x00007F78 
	0x041B041B1B040009, 0x0700010C0C1B0309, 0x0001010101000404, 0x01011B1B01010101,  // 0x00007F98 
	0x0100000000000003, 0x0002000001040000, 0x0001000104040401, 0x0000000000000000,  // 0x00007FB8 
	0x0000000009090909, 0x0900000000000009, 0x0009090900000000, 0x0000000101010100,  // 0x00007FD8 
	0x0909070909090909, 0x0909000909090909, 0x0909090909070700, 0x0000010101000101,  // 0x00007FF8 
	0x0104040401040101, 0x010401010101001B, 0x1B2F010009090909, 0x0909090909090909,  // 0x00008018 
	0x0101040101040100, 0x0100000100010001, 0x021E0C0007031E2E, 0x0401010404041B04,  // 0x00008038 
	0x1B2F041B011B0101, 0x0001010101010101, 0x0200000009000304, 0x0202000000010909,  // 0x00008058 
	0x0000000000000000, 0x0000000000000101, 0x0101010109000001, 0x0101010300000001,  // 0x00008078 
	0x0C01010204030000, 0x0000000900000003, 0x0000030009000201, 0x0101010401010009,  // 0x00008098 
	0x0100000002010101, 0x0101010000010201, 0x0C1B04010900011B, 0x1B04010203030003,  // 0x000080B8 
	0x0201010404040101, 0x0200000000000000, 0x0000000009020204, 0x0404020201010109,  // 0x000080D8 
	0x0001000000000000, 0x0000000302010101, 0x0101040009010101, 0x011B1B0401020003,  // 0x000080F8 
	0x03030202041E0202, 0x0200000000000000, 0x0000000009010101, 0x0101020200010109,  // 0x00008118 
	0x0001000000000201, 0x0202020101020301, 0x01011B0009000001, 0x0101010101010101,  // 0x00008138 
	0x0001020404040402, 0x0401010100000000, 0x0001010109000101, 0x01040201011B0109,  // 0x00008158 
	0x0101010102010C01, 0x0C01010201000000, 0x0000010009011B01, 0x0101010101010001,  // 0x00008178 
	0x010101151B150404, 0x0402010101010101, 0x0000010109000101, 0x0004010104010009,  // 0x00008198 
	0x0000000000010000, 0x0000000001010101, 0x0000000009090101, 0x0404000100020100,  // 0x000081B8 
	0x0202030202010000, 0x0000090909090909, 0x0909090909000001, 0x0101010101010009,  // 0x000081D8 
	0x0909090909090909, 0x0900090909090909, 0x0909090909090909, 0x0900000000000000,  // 0x000081F8 
	0x0000000000000000, 0x0001010100090900, 0x0101000900070909, 0x0909090909090709,  // 0x00008218 
	0x041B2F1B1B1B2F1B, 0x0001010100090900, 0x0001000000000000, 0x0000010000000101,  // 0x00008238 
	0x041B042F2F2F2F1B, 0x0100000101000900, 0x01041B0101000001, 0x000001090900011B,  // 0x00008258 
	0x00011B1B01010101, 0x0400000000010900, 0x0000010101000001, 0x0101000000010401,  // 0x00008278 
	0x1B1B1B0404040404, 0x0401010001010907, 0x0001000101010001, 0x1B1B000900010100,  // 0x00008298 
	0x01011B0101010101, 0x1B01010101010900, 0x0000090001010401, 0x0100000001000000,  // 0x000082B8 
	0x01041B0101010200, 0x0101010401010009, 0x0002020101000101, 0x0001000700010001,  // 0x000082D8 
	0x010101011B2F1B01, 0x0104040401000709, 0x0001000000000100, 0x0101010101010001,  // 0x000082F8 
	0x01011B01011B0401, 0x010101011B010009, 0x0001010101010100, 0x0101010900010003,  // 0x00008318 
	0x010101041B1B1B04, 0x04011B041B000009, 0x0001010101010000, 0x0001000101040101,  // 0x00008338 
	0x0101011B011B0101, 0x1B04010100000009, 0x0001000001010100, 0x0100000907010101,  // 0x00008358 
	0x000104010101011B, 0x0001041B1B010109, 0x0001011B00001B00, 0x0000010000000009,  // 0x00008378 
	0x0001010101010100, 0x0000000000040009, 0x0001010100000100, 0x0000000709000009,  // 0x00008398 
};

static u8 unaccounted83B8[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx_t _ganontika_room_14_vertices_000083C0[27] = 
{
	 { -2003, 153, -3809, 0, 2048, 2048, 68, 74, 83, 255 }, // 0x000083C0
	 { -1978, 288, -3807, 0, 1463, 666, 255, 255, 255, 255 }, // 0x000083D0
	 { -2003, 323, -3809, 0, 2048, 307, 156, 163, 174, 255 }, // 0x000083E0
	 { -1984, 153, -3803, 0, 1658, 2048, 68, 74, 83, 255 }, // 0x000083F0
	 { -1973, 153, -3810, 0, 1268, 2048, 212, 214, 218, 255 }, // 0x00008400
	 { -1970, 270, -3812, 0, 1170, 845, 255, 255, 255, 255 }, // 0x00008410
	 { -1968, 153, -3829, 0, 878, 2048, 34, 36, 41, 255 }, // 0x00008420
	 { -1968, 253, -3829, 0, 878, 1024, 34, 36, 41, 255 }, // 0x00008430
	 { -1942, 253, -3844, 0, 0, 1024, 34, 36, 41, 255 }, // 0x00008440
	 { -1935, 264, -3832, 0, 0, 910, 170, 176, 184, 255 }, // 0x00008450
	 { -1970, 270, -3812, 0, 1170, 845, 255, 255, 255, 255 }, // 0x00008460
	 { -1935, 308, -3832, 0, 0, 455, 212, 214, 218, 255 }, // 0x00008470
	 { -1965, 338, -3814, 0, 1024, 154, 212, 214, 218, 255 }, // 0x00008480
	 { -1935, 353, -3832, 0, 0, 0, 212, 214, 218, 255 }, // 0x00008490
	 { -1942, 253, -3844, 0, 0, 1024, 34, 36, 41, 255 }, // 0x000084A0
	 { -1916, 253, -3859, 0, 878, 1024, 34, 36, 41, 255 }, // 0x000084B0
	 { -1900, 270, -3852, 0, 1170, 845, 255, 255, 255, 255 }, // 0x000084C0
	 { -1935, 264, -3832, 0, 0, 910, 170, 176, 184, 255 }, // 0x000084D0
	 { -1892, 288, -3857, 0, 1463, 666, 255, 255, 255, 255 }, // 0x000084E0
	 { -1935, 308, -3832, 0, 0, 455, 212, 214, 218, 255 }, // 0x000084F0
	 { -1905, 338, -3849, 0, 1024, 154, 212, 214, 218, 255 }, // 0x00008500
	 { -1935, 353, -3832, 0, 0, 0, 212, 214, 218, 255 }, // 0x00008510
	 { -1881, 323, -3879, 0, 2048, 307, 156, 163, 174, 255 }, // 0x00008520
	 { -1916, 153, -3859, 0, 878, 2048, 34, 36, 41, 255 }, // 0x00008530
	 { -1898, 153, -3853, 0, 1268, 2048, 212, 214, 218, 255 }, // 0x00008540
	 { -1886, 153, -3860, 0, 1658, 2048, 68, 74, 83, 255 }, // 0x00008550
	 { -1881, 153, -3879, 0, 2048, 2048, 68, 74, 83, 255 }, // 0x00008560
};

Vtx_t _ganontika_room_14_vertices_00008570[8] = 
{
	 { -1881, 153, -3879, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008570
	 { -1874, 153, -3867, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008580
	 { -1881, 353, -3879, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008590
	 { -1874, 353, -3867, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085A0
	 { -2003, 153, -3809, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085B0
	 { -1996, 153, -3797, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085C0
	 { -2003, 353, -3809, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085D0
	 { -1996, 353, -3797, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085E0
};

Gfx _ganontika_room_14_dlist_000085F0[] =
{
	gsDPPipeSync(), // 0x000085F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000085F8
	gsSPVertex(_ganontika_room_14_vertices_00008570, 8, 0), // 0x00008600
	gsSPCullDisplayList(0, 7), // 0x00008608
	gsDPPipeSync(), // 0x00008610
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008618
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008620
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008628
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000089C8), // 0x00008630
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00008638
	gsDPLoadSync(), // 0x00008640
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00008648
	gsDPPipeSync(), // 0x00008650
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00008658
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00008660
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00008668
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00008670
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00008678
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00008680
	gsDPSetPrimColor(0, 0, 255, 255, 255, 254), // 0x00008688
	gsSPVertex(_ganontika_room_14_vertices_000083C0, 27, 0), // 0x00008690
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008698
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 1, 0), // 0x000086A0
	gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0), // 0x000086A8
	gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0), // 0x000086B0
	gsSP2Triangles(9, 11, 1, 0, 9, 1, 10, 0), // 0x000086B8
	gsSP2Triangles(11, 12, 1, 0, 11, 13, 12, 0), // 0x000086C0
	gsSP2Triangles(12, 2, 1, 0, 14, 15, 16, 0), // 0x000086C8
	gsSP2Triangles(14, 16, 17, 0, 16, 18, 19, 0), // 0x000086D0
	gsSP2Triangles(16, 19, 17, 0, 18, 20, 19, 0), // 0x000086D8
	gsSP2Triangles(20, 21, 19, 0, 18, 22, 20, 0), // 0x000086E0
	gsSP2Triangles(15, 23, 16, 0, 23, 24, 16, 0), // 0x000086E8
	gsSP2Triangles(24, 25, 18, 0, 24, 18, 16, 0), // 0x000086F0
	gsSP2Triangles(25, 26, 18, 0, 26, 22, 18, 0), // 0x000086F8
	gsSPEndDisplayList(), // 0x00008700
};

Vtx_t _ganontika_room_14_vertices_00008708[13] = 
{
	 { -79, 63, -2657, 0, 3616, 939, 79, 0, 0, 255 }, // 0x00008708
	 { -1224, 53, -2919, 0, 676, 1061, 255, 255, 255, 102 }, // 0x00008718
	 { -879, 57, -2322, 0, 2207, 2122, 147, 131, 97, 255 }, // 0x00008728
	 { -479, 63, -3350, 0, 1576, -475, 79, 0, 0, 255 }, // 0x00008738
	 { -1568, 63, -1796, 0, 1818, 4011, 79, 0, 0, 255 }, // 0x00008748
	 { -1968, 63, -2489, 0, -223, 2598, 79, 0, 0, 255 }, // 0x00008758
	 { -879, 63, -4042, 0, -465, -1889, 79, 0, 0, 255 }, // 0x00008768
	 { -1569, 57, -3517, 0, -854, 1, 147, 131, 97, 255 }, // 0x00008778
	 { -2368, 63, -3182, 0, -2263, 1184, 79, 0, 0, 255 }, // 0x00008788
	 { -1371, 63, -4174, 0, -1289, -1759, 79, 0, 0, 255 }, // 0x00008798
	 { -2237, 63, -3674, 0, -2504, 317, 79, 0, 0, 255 }, // 0x000087A8
	 { -1077, 63, -1665, 0, 2642, 3882, 79, 0, 0, 255 }, // 0x000087B8
	 { -211, 63, -2165, 0, 3857, 1806, 79, 0, 0, 255 }, // 0x000087C8
};

Vtx_t _ganontika_room_14_vertices_000087D8[3] = 
{
	 { -211, 63, -2165, 0, 3857, 1806, 79, 0, 0, 255 }, // 0x000087D8
	 { -79, 63, -2657, 0, 3616, 939, 79, 0, 0, 255 }, // 0x000087E8
	 { -879, 57, -2322, 0, 2207, 2122, 147, 131, 97, 255 }, // 0x000087F8
};

Vtx_t _ganontika_room_14_vertices_00008808[8] = 
{
	 { -1059, 53, -4354, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008808
	 { 101, 53, -2345, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008818
	 { -1059, 63, -4354, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008828
	 { 101, 63, -2345, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008838
	 { -2549, 53, -3494, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008848
	 { -1388, 53, -1485, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008858
	 { -2549, 63, -3494, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008868
	 { -1388, 63, -1485, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008878
};

Gfx _ganontika_room_14_dlist_00008888[] =
{
	gsDPPipeSync(), // 0x00008888
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00008890
	gsSPVertex(_ganontika_room_14_vertices_00008808, 8, 0), // 0x00008898
	gsSPCullDisplayList(0, 7), // 0x000088A0
	gsDPPipeSync(), // 0x000088A8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000088B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000088B8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000088C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_14_tex_000099C8), // 0x000088C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 15, 0, 5, 14), // 0x000088D0
	gsDPLoadSync(), // 0x000088D8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000088E0
	gsDPPipeSync(), // 0x000088E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 15, 0, 5, 14), // 0x000088F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000088F8
	gsDPTileSync(), // 0x00008900
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 1, 0, 0, 5, 14, 0, 5, 15), // 0x00008908
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00008910
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, COMBINED, 0, PRIMITIVE, 0), // 0x00008918
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00008920
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00008928
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00008930
	gsDPSetPrimColor(0, 0, 255, 255, 255, 102), // 0x00008938
	gsSPDisplayList(0x09000000), // 0x00008940
	gsSPVertex(_ganontika_room_14_vertices_00008708, 13, 0), // 0x00008948
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008950
	gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0), // 0x00008958
	gsSP2Triangles(3, 6, 1, 0, 6, 7, 1, 0), // 0x00008960
	gsSP2Triangles(7, 8, 1, 0, 8, 5, 1, 0), // 0x00008968
	gsSP2Triangles(6, 9, 7, 0, 9, 10, 7, 0), // 0x00008970
	gsSP2Triangles(10, 8, 7, 0, 11, 2, 4, 0), // 0x00008978
	gsSP1Triangle(11, 12, 2, 0), // 0x00008980
	gsDPPipeSync(), // 0x00008988
	gsDPSetPrimColor(0, 0, 255, 255, 255, 178), // 0x00008990
	gsSPVertex(_ganontika_room_14_vertices_000087D8, 3, 0), // 0x00008998
	gsSP1Triangle(0, 1, 2, 0), // 0x000089A0
	gsSPEndDisplayList(), // 0x000089A8
};

static u8 unaccounted89B0[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x85, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x88, 0x88, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 _ganontika_room_14_tex_000089C8[] = 
{
	0x7F50404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x000089C8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x000089E8 
	0x8F8F404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00008A08 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00008A28 
	0x9F9F6F4040404040, 0x4040404040404040, 0x40406F6F40404040, 0x4040404040404040,  // 0x00008A48 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00008A68 
	0x8F9F9F5F40404040, 0x4040404040404040, 0x6FBFAF6F40404040, 0x4040404040404040,  // 0x00008A88 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00008AA8 
	0x8F8F8F7F5F4F6F6F, 0x6F40405050405F7F, 0x9F9F7F6F40404040, 0x4040404040404040,  // 0x00008AC8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00008AE8 
	0x8F7F6F5F7F9F8F8F, 0x9F9F9F8F8F7F5F8F, 0x7F8F6F5F40404040, 0x4040404040404040,  // 0x00008B08 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00008B28 
	0x6F6F6F7F8F8F8F8F, 0x9F8F7F7F8F7F4F5F, 0x6F6F5F6F8F6F5F50, 0x4040404040404040,  // 0x00008B48 
	0x5F4F404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00008B68 
	0x4F4F5F5F6F6F6F6F, 0x6F6F5F5F6F5F3F3F, 0x3F4F7F7F7F7F7F7F, 0x7F6F50405F6F9F9F,  // 0x00008B88 
	0x5F40404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x00008BA8 
	0x3F3F4F3F3F3F3F3F, 0x4F3F3F3F3F3F4F4F, 0x3F3F3F6F8F8F8F7F, 0x6F7F6F7F9F9F8F6F,  // 0x00008BC8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404030, 0x303F404040404040,  // 0x00008BE8 
	0x4F4F4F3F3F3F3F3F, 0x4F4F4F4F4F3F4F3F, 0x4F3F4F4F3F3F6F7F, 0x7F5F6F8F7F7F5F40,  // 0x00008C08 
	0x4040404040404040, 0x4040404040404040, 0x4040404040303030, 0x4F6F404040404040,  // 0x00008C28 
	0x3F4F4F3F3F3F3F4F, 0x3F4F3F3F3F3F3F4F, 0x3F4F3F3F3F3F3F3F, 0x4F5F6F6F5F6F7F50,  // 0x00008C48 
	0x4040404040404040, 0x4040404040404040, 0x4040403030304F5F, 0x8F6F404040404040,  // 0x00008C68 
	0x4F4F3F3F3F3F3F4F, 0x4F4F4F4F4F3F4F4F, 0x3F3F3F3F3F4F3F4F, 0x3F3F5F7F8F7F9F8F,  // 0x00008C88 
	0x5040404040404040, 0x4040404040404040, 0x303030304F5F7F9F, 0x7F4F304040404040,  // 0x00008CA8 
	0x3F3F3F3F3F3F4F3F, 0x3F4F3F4F4F3F4F4F, 0x3F4F3F3F3F3F4F4F, 0x3F3F4F8F8F7F7F9F,  // 0x00008CC8 
	0x8F50404040404040, 0x4040403030403030, 0x3F4F5F6F8F9F9F6F, 0x6F3F303040404040,  // 0x00008CE8 
	0x4F4F4F3F4F3F3F4F, 0x4F4F4F4F3F4F4F3F, 0x4F4F4F4F3F3F4F3F, 0x3F4F3F5F7F8F7F7F,  // 0x00008D08 
	0x7F6F404040404030, 0x3030304F4F5F6F8F, 0x8F9F9FAF9F7F5F5F, 0x3F20304040404040,  // 0x00008D28 
	0x4F4F3F4F3F3F3F3F, 0x4F4F3F4F4F4F4F4F, 0x4F4F3F3F4F4F4F3F, 0x3F3F4F4F6F7F7F7F,  // 0x00008D48 
	0x6F6F4F404030203F, 0x3F4F6F8F8F9F8F8F, 0x8F8F7F7F7F6F5F3F, 0x3F30304040404040,  // 0x00008D68 
	0x3F3F4F3F3F3F3F3F, 0x3F3F4F4F3F4F4F3F, 0x3F4F4F3F3F4F3F4F, 0x3F4F4F4F3F4F5F7F,  // 0x00008D88 
	0x9FAF7F40303F4F7F, 0x7F9FAF9F9F9F8F6F, 0x7F7F6F6F6F5F3F3F, 0x2030404040404040,  // 0x00008DA8 
	0x3F4F4F4F4F4F4F4F, 0x4F3F4F4F4F4F4F3F, 0x3F3F3F4F4F4F3F4F, 0x3F4F4F4F5F5F4F4F,  // 0x00008DC8 
	0x6F6F6F303F4F7F7F, 0x8F7F7F7F8F6F7F6F, 0x6F6F6F6F4F3F3F20, 0x3040404040404040,  // 0x00008DE8 
	0x3F3F4F4F3F4F4F3F, 0x4F4F3F4F4F3F3F4F, 0x4F3F3F3F4F3F3F4F, 0x4F3F3F4F7F7F7F7F,  // 0x00008E08 
	0x7F5F5F3F3F4F5F6F, 0x6F5F6F6F6F7F7F6F, 0x5F5F3F3F2F2F2030, 0x4040404040404040,  // 0x00008E28 
	0x3F3F3F3F4F4F4F3F, 0x4F4F3F3F4F4F3F3F, 0x3F4F4F4F4F4F4F3F, 0x4F4F5F6F7F7F7F7F,  // 0x00008E48 
	0x8F8F4F3F4F4F5F6F, 0x5F6F5F5F5F4F4F3F, 0x3F3F3F3F3F304040, 0x4040404040404040,  // 0x00008E68 
	0x3F4F4F3F3F3F3F4F, 0x3F3F3F4F4F4F3F4F, 0x4F3F3F4F4F3F4F4F, 0x4F4F6F8F7F7F7F7F,  // 0x00008E88 
	0x9F5F3F3F3F4F4F4F, 0x3F3F2F2F3F2F3F3F, 0x3F3F4F4F40404040, 0x4040404040404040,  // 0x00008EA8 
	0x4F4F3F4F3F3F3F3F, 0x3F3F4F3F3F4F4F3F, 0x4F4F3F3F4F3F3F3F, 0x3F5F6F8F8F8F8F8F,  // 0x00008EC8 
	0x7F4F2F2F5F5F4F2F, 0x2F3F4F4F3F3F3F4F, 0x7F8F9F6F40404040, 0x4040404040404040,  // 0x00008EE8 
	0x4F4F3F3F4F3F4F4F, 0x3F4F4F3F3F3F4F3F, 0x3F3F4F4F4F4F5F4F, 0x5F7F6F5F5F4F7F5F,  // 0x00008F08 
	0x3F2F2F2F3F6F3F3F, 0x3F4F7F6F4F4F5F4F, 0x5F5F8F8F5F4F4040, 0x4040404040404040,  // 0x00008F28 
	0x4F4F4F4F4F3F3F3F, 0x3F4F3F3F4F4F3F3F, 0x3F4F4F5F7F6F7F8F, 0x6F5F5F9F9F6F4F3F,  // 0x00008F48 
	0x2F2F2F3F4F3F4F5F, 0x4F4F5F4F4F6F7F7F, 0x7F4F6F5F4F4F4F40, 0x4040404040404040,  // 0x00008F68 
	0x3F3F4F4F4F4F3F4F, 0x3F3F3F4F4F4F4F3F, 0x4F5F7F7F6F6F6F8F, 0x8F7F6F5F4F4F2F2F,  // 0x00008F88 
	0x2F2F3F4F4F4F4F7F, 0x7F5F4F4F6F8F8F8F, 0x9F6F4F4F5F7F6F5F, 0x4040404040404040,  // 0x00008FA8 
	0x4F4F4F4F4F5F4F4F, 0x5F5F7F7F5F6F7F6F, 0x5F4F5F7F9F8F7F8F, 0x9F9F4F3F2F2F2F2F,  // 0x00008FC8 
	0x2F3F4F6F6F6F8F9F, 0x8F6F6F6F7F8F8F9F, 0x9F8F6F6F8F9F7F6F, 0x4040404040404040,  // 0x00008FE8 
	0x4F4F5F7F7F7F7F7F, 0x7F7F7F7F7F6F5F6F, 0x8F9F6F5F5F7F8F5F, 0x4F3F2F2F3F3F3F3F,  // 0x00009008 
	0x3F4F4F4F5F6F6F7F, 0x8F8F8F8F8F8F8F9F, 0x9F8F8F9F8F7F6F4F, 0x4040404040404040,  // 0x00009028 
	0x7F8F4F5F9F7F7F7F, 0x7F7F7F7F7F8F8F6F, 0x5F6F7F5F3F2F2F2F, 0x2F3F3F3F3F5F6F5F,  // 0x00009048 
	0x4F4F4F4F4F4F4F6F, 0x7F6F6F7F8F8F8F9F, 0x9F9F9F8F7F4F4F4F, 0x6F5F3F3030404040,  // 0x00009068 
	0x6F7F8F5F5F6F7F8F, 0x8F9F8F8F8F5F3F3F, 0x2F2F2F3F3F3F3F3F, 0x4F4F3F3F3F3F3F6F,  // 0x00009088 
	0x8F8F9F7F4F5F4F4F, 0x4F4F4F6F6F6F8F7F, 0x6F5F4F4F4F6FAFBF, 0xAF7F4F3030404040,  // 0x000090A8 
	0x5F5F5F4F4F5F4F3F, 0x4F3F3F2F3F3F4F4F, 0x4F4F5F5F4F5F6F6F, 0x5F5F4F3F3F3F4F4F,  // 0x000090C8 
	0x5F4F6F7F7F9F9F7F, 0x7F4F4F4F5F4F4F4F, 0x4F5F7F8F9F9F7F6F, 0x7F4F3F3F40404040,  // 0x000090E8 
	0x5F4F7F6F6F6F6F4F, 0x3F3F5F7F7F7F8F8F, 0x7F7F8F7F7F7F8F7F, 0x6F5F5F3F4F5F7F7F,  // 0x00009108 
	0x7F6F6F4F4F4F3F5F, 0x7F8F7F7F7F8F7F8F, 0x6F7F7F6F4F3F2F3F, 0x4F5F4F3F3F4F4040,  // 0x00009128 
	0x7F7F7F7F8F5F3F3F, 0x6F7F6F7F8F8F7F7F, 0x7F8F7F7F7F7F7F7F, 0x7F6F3F3F4F5F6F7F,  // 0x00009148 
	0x8FAF9F9F5F4F3F3F, 0x3F3F3F4F4F4F5F4F, 0x4F3F3F3F2F3F4F5F, 0x6F7F6F5F4F3F3F40,  // 0x00009168 
	0x7F6F6F5F4F4F3F3F, 0x3F4F4F5F4F5F5F5F, 0x5F6F5F4F4F4F3F3F, 0x3F3F2F3F4F4F5F8F,  // 0x00009188 
	0x8FBFBF9F7F7F4F3F, 0x3F4F6F6F8F8F9F8F, 0x6F6F3F3F3F4F6F8F, 0x8FAFBF9F7F5F3F3F,  // 0x000091A8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4030303F3F4F5F6F,  // 0x000091C8 
	0x8F9FAFAF7F6F4F3F, 0x4F5F5F8F7F8FAFAF, 0x9F7F5F3F4F4F6F8F, 0x8FAF9FAF9F7F5F3F,  // 0x000091E8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040303F4F5F6F,  // 0x00009208 
	0x7F8F7FAF8F5F3F3F, 0x3F5F7F7F9F9FAFAF, 0x9F8F4F3F4F5F5F7F, 0x9F9F9FAF9F7F5F3F,  // 0x00009228 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x40404040304F6F5F,  // 0x00009248 
	0x6F6F7F9F8F4F3F3F, 0x3F4F6F7F8F9F9FAF, 0x8F6F4F2F2F4F4F7F, 0x7FAF9F8F8F6F4F3F,  // 0x00009268 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404030305F,  // 0x00009288 
	0x5F6F7F8F3F3F2F2F, 0x2F3F4F6F8F8F9F9F, 0x5F4F2F2F2F3F4F5F, 0x7F8F7F8F8F6F4F3F,  // 0x000092A8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040303F,  // 0x000092C8 
	0x4F4F5F3F2F2F2F3F, 0x2F2F3F4F7F8F7F6F, 0x6F3F2F2F2F3F3F5F, 0x7F6F7F8F6F5F3F30,  // 0x000092E8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00009308 
	0x3F2F1F2F2F3F3F3F, 0x3F3F3F3F6F5F7F3F, 0x2F2F2F2F2F2F2F3F, 0x4F6F6F6F4F3F3040,  // 0x00009328 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x00009348 
	0x2F2F2F3F3F3F4F4F, 0x3F3F3F3F5F3F2F2F, 0x3F3F2F2F2F2F2F2F, 0x4F4F4F4F3F404040,  // 0x00009368 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x00009388 
	0x2F3F3F3F3F4F4F4F, 0x4F4F4F3F3F3F4F4F, 0x4F4F3F3F3F3F2F2F, 0x2F4F3F3F40404040,  // 0x000093A8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x000093C8 
	0x3F3F3F3F4F4F4F5F, 0x4F4F4F4F4F5F6F5F, 0x5F4F4F4F3F3F3F2F, 0x3F3F304040404040,  // 0x000093E8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x00009408 
	0x3F3F3F3F4F5F5F5F, 0x5F5F6F6F6F5F6F6F, 0x5F5F5F4F3F3F3F3F, 0x3F30404040404040,  // 0x00009428 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00009448 
	0x3F3F3F4F4F5F5F6F, 0x6F6F6F6F6F6F6F6F, 0x6F6F5F4F4F3F3F2F, 0x4040404040404040,  // 0x00009468 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00009488 
	0x3F4F4F4F5F5F6F6F, 0x7F7F6F6F7F6F7F7F, 0x6F6F5F4F4F3F2F2F, 0x4040404040404040,  // 0x000094A8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x000094C8 
	0x3F3F3F4F5F5F6F7F, 0x7F7F8F7F6F7F8F7F, 0x7F6F6F5F4F3F3F3F, 0x4040404040404040,  // 0x000094E8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x00009508 
	0x4F4F4F4F5F6F7F7F, 0x7F8F7F7F6F7F7F7F, 0x7F6F5F5F5F4F3F3F, 0x4040404040404040,  // 0x00009528 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x00009548 
	0x3F4F4F4F4F5F6F7F, 0x8F7F7F7F7F7F7F6F, 0x7F6F5F5F5F5F3F2F, 0x4040404040404040,  // 0x00009568 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x00009588 
	0x4F4F4F4F5F5F6F7F, 0x6F7F8F7F6F7F7F7F, 0x7F7F5F5F5F3F4F3F, 0x4040404040404040,  // 0x000095A8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x000095C8 
	0x3F3F4F4F5F5F5F6F, 0x7F6F6F7F7F7F7F7F, 0x7F6F6F4F4F4F3F3F, 0x4040404040404040,  // 0x000095E8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00009608 
	0x3F3F4F4F5F6F7F8F, 0x7F7F7F7F7F7F7F6F, 0x6F6F5F5F5F4F4F3F, 0x4040404040404040,  // 0x00009628 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x00009648 
	0x3F4F4F4F5F6F6F7F, 0x7F7F7F7F7F7F8F8F, 0x6F6F5F5F4F4F3F3F, 0x4040404040404040,  // 0x00009668 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00009688 
	0x4F3F4F4F5F5F6F7F, 0x7F6F7F7F7F7F7F7F, 0x7F6F6F5F4F4F3F3F, 0x4040404040404040,  // 0x000096A8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x000096C8 
	0x3F4F4F4F4F5F5F7F, 0x7F7F7F7F7F7F7F7F, 0x7F6F6F5F5F4F3F3F, 0x4040404040404040,  // 0x000096E8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00009708 
	0x3F3F4F4F5F5F7F7F, 0x7F6F8F7F7F7F7F7F, 0x7F7F6F4F4F4F3F2F, 0x4040404040404040,  // 0x00009728 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00009748 
	0x4F4F4F4F5F5F6F7F, 0x7F6F7F7F7F7F7F7F, 0x7F5F4F4F4F3F4F3F, 0x4040404040404040,  // 0x00009768 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x00009788 
	0x4F4F4F4F5F6F6F6F, 0x7F6F7F7F7F7F7F8F, 0x6F5F5F5F4F4F3F3F, 0x4040404040404040,  // 0x000097A8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x000097C8 
	0x4F4F4F4F5F6F6F7F, 0x8F7F7F8F8F8F6F6F, 0x7F6F5F5F4F4F3F3F, 0x4040404040404040,  // 0x000097E8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x00009808 
	0x3F4F4F5F6F6F5F7F, 0x5F4F4F4F4F4F4F6F, 0x7F7F6F6F5F5F3F3F, 0x4040404040404040,  // 0x00009828 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x00009848 
	0x3F3F3F4F5F5F5F5F, 0x6F8F8F8F8F9F8F6F, 0x5F4F4F6F5F4F3F3F, 0x4040404040404040,  // 0x00009868 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x40404040406F7F7F,  // 0x00009888 
	0x8F6F6F5F4F4F8F8F, 0x7F7F7F6F6F7F8F8F, 0x7F7F4F3F4F6F9F7F, 0x6F5F404040404040,  // 0x000098A8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x40404040404F6F6F,  // 0x000098C8 
	0x8F9F9F7F4F4F4F4F, 0x3F5F4F5F6F5F5F4F, 0x4F3F3F7F9F9F9F9F, 0x7F5F404040404040,  // 0x000098E8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040405F4F5F6F5F,  // 0x00009908 
	0x4F5F5F5F5F4F3F3F, 0x4F7F9F9F9F8F6F3F, 0x3F4F6F5F5F5F5F6F, 0x6F6F5F5040404040,  // 0x00009928 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040406F8F8F9F8F,  // 0x00009948 
	0x9F9F9F9F8F6F5F4F, 0x4F6F8F8F9F7F6F4F, 0x5F5F8FAFAF9F9FAF, 0xAF8F9F6F40404040,  // 0x00009968 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040407F7F7F7F7F,  // 0x00009988 
	0x7F7F7F7F7F7F8F5F, 0x5F5F5F5F7F5F5F6F, 0x8F8F7F8F7F7F7F8F, 0x7F7F7F6F40404040,  // 0x000099A8 
};

u64 _ganontika_room_14_tex_000099C8[] = 
{
	0x988188C1888178C1, 0x78C180C190C19901, 0x88C188C198C1A8C1, 0xB101B941C181C181,  // 0x000099C8 
	0xB981A94190C18081, 0x80C180C190C1A8C1, 0xC8C1C881C0C1B881, 0xA081988190C19881,  // 0x000099E8 
	0x98C1888180818081, 0x80C188C1A1019901, 0x90C190C190C1A0C1, 0xA8C1A901A901B141,  // 0x00009A08 
	0xA941990190C180C1, 0x78C180C190C1A901, 0xC901D0C1C8C1C0C1, 0xA8819881888190C1,  // 0x00009A28 
	0x9081808180818081, 0x808198C1A101A8C1, 0x98C1A0C190C190C1, 0x98C198C1A0C1A0C1,  // 0x00009A48 
	0x990190C188C180C1, 0x78C180C19101B141, 0xC101C8C1D0C1C0C1, 0xB081A08188C190C1,  // 0x00009A68 
	0x8081788178C18881, 0x90C1A0C1A8C1A8C1, 0xA901A8C198C188C1, 0x90C190C190C190C1,  // 0x00009A88 
	0x88C180C188C180C1, 0x78C179019101B141, 0xB981C8C1D0C1C881, 0xB881A08188C18881,  // 0x00009AA8 
	0x788170C170C18881, 0x98C1A0C1A8C1A8C1, 0xB101B10198C190C1, 0x88C188C188C190C1,  // 0x00009AC8 
	0x88C178C178C178C1, 0x78C178C19101A981, 0xB181C101D0C1C8C1, 0xB0C1A8C188C18081,  // 0x00009AE8 
	0x7881708168818881, 0xA8C1B0C1A8C1A901, 0xB101B101A0C190C1, 0x88C180C188C19101,  // 0x00009B08 
	0x90C178C170C178C1, 0x80C178C189019901, 0xA141B101C8C1C8C1, 0xC0C1A8C188C18081,  // 0x00009B28 
	0x7881708170819081, 0xA8C1A8C1A901A901, 0xB141B101A0C190C1, 0x80C180C178C180C1,  // 0x00009B48 
	0x90C188C178C180C1, 0x80C178C181018901, 0x89419901B8C1C0C1, 0xB8C1A8C190C18081,  // 0x00009B68 
	0x7881708178819081, 0x98C198C1A101A901, 0xB101B101A0C188C1, 0x80C178C178C180C1,  // 0x00009B88 
	0x9101910180C188C1, 0x88C178C178C17901, 0x810189019101B0C1, 0xB0C1A0C190818081,  // 0x00009BA8 
	0x7081708178818881, 0x88C190C19901A0C1, 0xA901A90198C18901, 0x78C178C180C18101,  // 0x00009BC8 
	0x9101910180C18101, 0x80C170C170C17101, 0x794181418901A0C1, 0xA08190C188817881,  // 0x00009BE8 
	0x7081708168817881, 0x8081808191019101, 0xA101A101910180C1, 0x70C170C179018101,  // 0x00009C08 
	0x8901910190C18101, 0x78C170C179017901, 0x79418141890190C1, 0x90C1888180817881,  // 0x00009C28 
	0x7081688160817081, 0x7881788180C180C1, 0x89019101810170C1, 0x68C170C178C17901,  // 0x00009C48 
	0x8101910191018101, 0x7901790179017941, 0x81418101810188C1, 0x80C1808178817881,  // 0x00009C68 
	0x7081688160816881, 0x7081788180C180C1, 0x89018101790168C1, 0x58C160C168C18101,  // 0x00009C88 
	0x8901910191018101, 0x78C1790179417941, 0x8901810188C180C1, 0x8081808178817881,  // 0x00009CA8 
	0x7081608160816881, 0x7081788188C188C1, 0x78C178C178C168C1, 0x58C160C170C18101,  // 0x00009CC8 
	0x89018901910188C1, 0x78C1790181418901, 0x910188C188C190C1, 0x8081788170817881,  // 0x00009CE8 
	0x7081608160816881, 0x70818081888180C1, 0x78C178C170C160C1, 0x58C160C171018901,  // 0x00009D08 
	0x89018901910188C1, 0x810189018901A0C1, 0x98C188C190C198C1, 0x88C188C178817881,  // 0x00009D28 
	0x6081608160816881, 0x78818081808180C1, 0x78C178C170C160C1, 0x60C168C171018101,  // 0x00009D48 
	0x8901890190C188C1, 0x88C1910198C1A8C1, 0xA0C190C190C190C1, 0x98C190C188C17881,  // 0x00009D68 
	0x7081608160816881, 0x80818081808180C1, 0x78C178C170C168C1, 0x68C168C171018101,  // 0x00009D88 
	0x8901890190C190C1, 0x910198C1B081B0C1, 0xA8C1A0C190C1A0C1, 0xA0C1A0C1A0C188C1,  // 0x00009DA8 
	0x8081708168817081, 0x7881808188C180C1, 0x78C170C168816081, 0x60C168C170C18101,  // 0x00009DC8 
	0x810188C190C190C1, 0x98C1A881B881B8C1, 0xA901A8C19901A101, 0xB101B0C1A8C19881,  // 0x00009DE8 
	0x8081788168816881, 0x7081888190C188C1, 0x78C1708168816081, 0x608160C168C178C1,  // 0x00009E08 
	0x80C180C190C198C1, 0xA081A881C081C0C1, 0xB101B101A901A101, 0xB101B0C1B0C1A0C1,  // 0x00009E28 
	0x8881808170816881, 0x7881888198C190C1, 0x80C1788168816881, 0x6881688168C170C1,  // 0x00009E48 
	0x78C188C198C19881, 0xA081B081C8C1D0C1, 0xD101B901B101A901, 0xA101A0C1A8C1A0C1,  // 0x00009E68 
	0x88C1788170817081, 0x788190C1A0C190C1, 0x88C178C168816881, 0x68C168C170C170C1,  // 0x00009E88 
	0x70C180C198C19881, 0xA081C0C1D0C1D901, 0xE101C941B901B101, 0xA901A0C198C198C1,  // 0x00009EA8 
	0x88C178C170817081, 0x808190C1A881A0C1, 0x90C180C1708168C1, 0x68C168C1790180C1,  // 0x00009EC8 
	0x78C1808188C190C1, 0xA881C0C1D0C1E901, 0xE941D901C901B901, 0xA90198C190C188C1,  // 0x00009EE8 
	0x80C178C178817081, 0x80819081A8C1A8C1, 0x910188C180C170C1, 0x68C1790189018901,  // 0x00009F08 
	0x88C178C178C180C1, 0x90C1C0C1D0C1E901, 0xE901D901C901C101, 0xB10198C188C188C1,  // 0x00009F28 
	0x808178C178817081, 0x80819081A8C1B101, 0xA101A0C198C188C1, 0x88C1890191419901,  // 0x00009F48 
	0x98C180C1708178C1, 0x88C1B0C1C0C1D8C1, 0xE901E141D101C141, 0xB101A0C1988190C1,  // 0x00009F68 
	0x908180C178C17881, 0x7881888198C1B101, 0xB101A8C1A8C1A0C1, 0x91019941A141A941,  // 0x00009F88 
	0xA0C190C178C178C1, 0x78C190C1B8C1D0C1, 0xE101D101C901C101, 0xB101A8C1A0C1A0C1,  // 0x00009FA8 
	0x9881888188C18081, 0x7881888190C1A901, 0xB101B101B0C1B0C1, 0x9941A141A941A941,  // 0x00009FC8 
	0xA0C188C1788170C1, 0x70C180C19901C101, 0xD101D101C941C101, 0xB101B0C1B0C1B081,  // 0x00009FE8 
	0x9881888180818081, 0x788188819081A0C1, 0xB101B101B0C1B101, 0xB141A981B141B141,  // 0x0000A008 
	0x990188C1788170C1, 0x68C178C170C1A101, 0xC101B901B901B901, 0xB0C1A8C1B8C1B881,  // 0x0000A028 
	0xA081908180818081, 0x788180818881A0C1, 0xB101A8C1A8C1B101, 0xB141B181B141B141,  // 0x0000A048 
	0x990188C178C170C1, 0x68C168C170C18901, 0xA101B101B101B101, 0xA8C1B0C1B8C1B8C1,  // 0x0000A068 
	0xA88190C188818881, 0x808178C188C1A101, 0xA10198C1A0C1B0C1, 0xB141B981B181B141,  // 0x0000A088 
	0xA10188C1788170C1, 0x60C168C180C188C1, 0xA0C1A901A8C198C1, 0xA0C1B0C1B8C1B881,  // 0x0000A0A8 
	0xA88190C180818881, 0x8081788180C19901, 0x990188C198C1A901, 0xB141B9C1C1C1B981,  // 0x0000A0C8 
	0xA14188C178C170C1, 0x68C168C180C198C1, 0xA8C1B101A0C198C1, 0x98C1A881B0C1B881,  // 0x0000A0E8 
	0xA081908180818081, 0x808180C19101A101, 0x990188C198C1A101, 0xB141B981CA01C201,  // 0x0000A108 
	0xA941910178C178C1, 0x70C168C188C1A8C1, 0xA8C1B0C1A0C198C1, 0x9081A081A881B081,  // 0x0000A128 
	0x98C1908180817881, 0x80C188C19901A101, 0x910188C198C1A101, 0xB141B981CA01CA01,  // 0x0000A148 
	0xC1C1A14190C178C1, 0x78C170C190C1B881, 0xB8C1B8C1A8819881, 0x98C19881A0C1A881,  // 0x0000A168 
	0x98C188C1888180C1, 0x80C180C191019901, 0x890188C198C1A901, 0xB101B981C9C1CA01,  // 0x0000A188 
	0xC1C1B14198C180C1, 0x78C180C19081B081, 0xC8C1C081B881A881, 0xA081988198C1A0C1,  // 0x0000A1A8 
};

static u8 unaccountedA1C8[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


