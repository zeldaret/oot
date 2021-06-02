#include <ultra64.h>
#include <z64.h>
#include "HIDAN_room_8.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "HIDAN_scene.h"



SCmdEchoSettings _HIDAN_room_8_set0000_cmd00 = { 0x16, 0, { 0 }, 0x04 }; // 0x0000
SCmdRoomBehavior _HIDAN_room_8_set0000_cmd01 = { 0x08, 0x01, 0x00000002 }; // 0x0008
SCmdSkyboxDisables _HIDAN_room_8_set0000_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0010
SCmdTimeSettings _HIDAN_room_8_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _HIDAN_room_8_set0000_cmd04 = { 0x0A, 0, (u32)&_HIDAN_room_8_meshHeader_000000D0 }; // 0x0020
SCmdObjectList _HIDAN_room_8_set0000_cmd05 = { 0x0B, 0x06, (u32)_HIDAN_room_8_objectList_00000040 }; // 0x0028
SCmdActorList _HIDAN_room_8_set0000_cmd06 = { 0x01, 0x08, (u32)_HIDAN_room_8_actorList_0000004C }; // 0x0030
SCmdEndMarker _HIDAN_room_8_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _HIDAN_room_8_objectList_00000040[] = 
{
	OBJECT_HIDAN_OBJECTS,
	OBJECT_D_HSBLOCK,
	OBJECT_SYOKUDAI,
	OBJECT_BOX,
	OBJECT_ST,
	OBJECT_GI_SUTARU,
};

ActorEntry _HIDAN_room_8_actorList_0000004C[8] = 
{
	{ ACTOR_OBJ_HSBLOCK, 1492, 4680, -712, 0, 0, 0, 0x3DC1 }, //0x0000004C 
	{ ACTOR_OBJ_HSBLOCK, 1852, 4680, -312, 0, 8192, 0, 0x3DC1 }, //0x0000005C 
	{ ACTOR_OBJ_HSBLOCK, 1481, 4652, 335, -4551, 0, -1820, 0xFF40 }, //0x0000006C 
	{ ACTOR_OBJ_SWITCH, 2003, 4680, -475, 0, 8192, 0, 0x3D01 }, //0x0000007C 
	{ ACTOR_BG_HIDAN_CURTAIN, 1938, 4680, -393, 0, 0, 0, 0x1378 }, //0x0000008C 
	{ ACTOR_OBJ_OSHIHIKI, 1938, 4680, -395, 0, 8192, 0, 0xFF00 }, //0x0000009C 
	{ ACTOR_EN_SW, 1938, 4680, -394, -182, 8192, 0, 0x8504 }, //0x000000AC 
	{ ACTOR_OBJ_SWITCH, 1221, 4400, -591, 0, 0, 0, 0x3800 }, //0x000000BC 
};

static u32 padCC = 0;

MeshHeader2 _HIDAN_room_8_meshHeader_000000D0 = { { 2 }, 0x07, (u32)&_HIDAN_room_8_meshDListEntry_000000DC, (u32)&(_HIDAN_room_8_meshDListEntry_000000DC) + sizeof(_HIDAN_room_8_meshDListEntry_000000DC) };

MeshEntry2 _HIDAN_room_8_meshDListEntry_000000DC[7] = 
{
	{ 1550, 2600, 0, 1632, (u32)_HIDAN_room_8_dlist_00003668, 0 },
	{ 1625, 10, 75, 1684, (u32)_HIDAN_room_8_dlist_00002660, 0 },
	{ 1260, 4700, -450, 771, (u32)_HIDAN_room_8_dlist_00000700, 0 },
	{ 1110, 4700, 300, 807, (u32)_HIDAN_room_8_dlist_00001248, 0 },
	{ 1860, 4700, 450, 771, (u32)_HIDAN_room_8_dlist_00001900, 0 },
	{ 2010, 4700, -300, 771, (u32)_HIDAN_room_8_dlist_00002050, 0 },
	{ 1571, 500, 88, 904, (u32)_HIDAN_room_8_dlist_000047E8, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

Vtx_t _HIDAN_room_8_vertices_00000150[4] = 
{
	 { 1260, 4400, -100, 0, 0, 1024, 114, 114, 114, 255 }, // 0x00000150
	 { 1460, 4400, -300, 0, 0, 2048, 114, 114, 114, 255 }, // 0x00000160
	 { 1260, 4400, -900, 0, 2048, 3072, 51, 51, 51, 255 }, // 0x00000170
	 { 660, 4400, -300, 0, 2048, 0, 76, 76, 76, 255 }, // 0x00000180
};

Vtx_t _HIDAN_room_8_vertices_00000190[4] = 
{
	 { 1440, 4880, -900, 0, 3072, -6144, 25, 25, 25, 255 }, // 0x00000190
	 { 1440, 4680, -900, 0, 3072, -2731, 25, 25, 25, 255 }, // 0x000001A0
	 { 1860, 4680, -900, 0, 10240, -2731, 51, 51, 51, 255 }, // 0x000001B0
	 { 1860, 4880, -900, 0, 10240, -6144, 25, 25, 25, 255 }, // 0x000001C0
};

Vtx_t _HIDAN_room_8_vertices_000001D0[3] = 
{
	 { 1720, 4680, -900, 0, 7851, -7727, 89, 89, 89, 255 }, // 0x000001D0
	 { 1720, 4680, -570, 0, 1878, -1753, 127, 127, 127, 255 }, // 0x000001E0
	 { 1860, 4680, -900, 0, 10386, -5193, 51, 51, 51, 255 }, // 0x000001F0
};

Vtx_t _HIDAN_room_8_vertices_00000200[4] = 
{
	 { 1440, 4880, -900, 0, 3072, -6144, 25, 25, 25, 255 }, // 0x00000200
	 { 1260, 4880, -900, 0, 0, -6144, 25, 25, 25, 255 }, // 0x00000210
	 { 1260, 4400, -900, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00000220
	 { 1440, 4400, -900, 0, 3072, 2048, 25, 25, 25, 255 }, // 0x00000230
};

Vtx_t _HIDAN_room_8_vertices_00000240[4] = 
{
	 { 1440, 4400, -570, 0, 8448, 1024, 93, 94, 63, 255 }, // 0x00000240
	 { 1440, 4680, -570, 0, 8448, -6144, 93, 94, 63, 255 }, // 0x00000250
	 { 1440, 4680, -900, 0, 0, -6144, 25, 25, 25, 255 }, // 0x00000260
	 { 1440, 4400, -900, 0, 0, 1024, 25, 25, 25, 255 }, // 0x00000270
};

Vtx_t _HIDAN_room_8_vertices_00000280[4] = 
{
	 { 1440, 4400, -570, 0, 742, 2688, 129, 129, 129, 255 }, // 0x00000280
	 { 1440, 4400, -900, 0, 1587, 3533, 25, 25, 25, 255 }, // 0x00000290
	 { 1260, 4400, -900, 0, 2048, 3072, 51, 51, 51, 255 }, // 0x000002A0
	 { 1460, 4400, -300, 0, 0, 2048, 114, 114, 114, 255 }, // 0x000002B0
};

Vtx_t _HIDAN_room_8_vertices_000002C0[4] = 
{
	 { 1720, 4680, -570, 0, 7168, -6144, 51, 51, 51, 255 }, // 0x000002C0
	 { 1610, 4500, -570, 0, 4352, -1536, 51, 51, 51, 255 }, // 0x000002D0
	 { 1720, 4400, -570, 0, 7168, 1024, 129, 129, 129, 255 }, // 0x000002E0
	 { 1610, 4400, -570, 0, 4352, 1024, 51, 51, 51, 255 }, // 0x000002F0
};

Vtx_t _HIDAN_room_8_vertices_00000300[4] = 
{
	 { 1610, 4500, -570, 0, 1024, -1536, 51, 51, 51, 255 }, // 0x00000300
	 { 1610, 4500, -590, 0, 512, -1536, 51, 51, 51, 255 }, // 0x00000310
	 { 1610, 4400, -590, 0, 512, 1024, 51, 51, 51, 255 }, // 0x00000320
	 { 1610, 4400, -570, 0, 1024, 1024, 51, 51, 51, 255 }, // 0x00000330
};

Vtx_t _HIDAN_room_8_vertices_00000340[3] = 
{
	 { 1400, 5200, -480, 0, -80, 1354, 25, 25, 25, 255 }, // 0x00000340
	 { 1720, 5200, -480, 0, -1718, 1354, 25, 25, 25, 255 }, // 0x00000350
	 { 1560, 5200, 0, 0, -899, 3812, 25, 25, 25, 255 }, // 0x00000360
};

Vtx_t _HIDAN_room_8_vertices_00000370[4] = 
{
	 { 1660, 4200, -300, 0, -2048, -1536, 51, 51, 51, 255 }, // 0x00000370
	 { 1660, 4400, -300, 0, -2048, 3584, 196, 141, 53, 255 }, // 0x00000380
	 { 1460, 4400, -300, 0, 3072, 3584, 51, 51, 51, 255 }, // 0x00000390
	 { 1460, 4200, -300, 0, 3072, -1536, 51, 51, 51, 255 }, // 0x000003A0
};

Vtx_t _HIDAN_room_8_vertices_000003B0[4] = 
{
	 { 1460, 4400, -300, 0, 0, 2048, 114, 114, 114, 255 }, // 0x000003B0
	 { 1660, 4400, -300, 0, -512, 2560, 196, 141, 53, 255 }, // 0x000003C0
	 { 1720, 4400, -570, 0, 26, 3405, 51, 51, 51, 255 }, // 0x000003D0
	 { 1440, 4400, -570, 0, 742, 2688, 129, 129, 129, 255 }, // 0x000003E0
};

Vtx_t _HIDAN_room_8_vertices_000003F0[4] = 
{
	 { 1610, 4400, -570, 0, 1024, -1024, 51, 51, 51, 255 }, // 0x000003F0
	 { 1610, 4400, -590, 0, 512, -1024, 51, 51, 51, 255 }, // 0x00000400
	 { 1550, 4400, -590, 0, 512, 512, 51, 51, 51, 255 }, // 0x00000410
	 { 1550, 4400, -570, 0, 1024, 512, 129, 129, 129, 255 }, // 0x00000420
};

Vtx_t _HIDAN_room_8_vertices_00000430[4] = 
{
	 { 1440, 4680, -900, 0, 2783, -12796, 25, 25, 25, 255 }, // 0x00000430
	 { 1440, 4680, -570, 0, -3191, -6822, 93, 94, 63, 255 }, // 0x00000440
	 { 1720, 4680, -570, 0, 1878, -1753, 127, 127, 127, 255 }, // 0x00000450
	 { 1720, 4680, -900, 0, 7851, -7727, 89, 89, 89, 255 }, // 0x00000460
};

Vtx_t _HIDAN_room_8_vertices_00000470[6] = 
{
	 { 1440, 4400, -570, 0, 0, 1024, 129, 129, 129, 255 }, // 0x00000470
	 { 1550, 4400, -570, 0, 2816, 1024, 51, 51, 51, 255 }, // 0x00000480
	 { 1550, 4500, -570, 0, 2816, -1536, 51, 51, 51, 255 }, // 0x00000490
	 { 1440, 4680, -570, 0, 0, -6144, 129, 129, 129, 255 }, // 0x000004A0
	 { 1610, 4500, -570, 0, 4352, -1536, 51, 51, 51, 255 }, // 0x000004B0
	 { 1720, 4680, -570, 0, 7168, -6144, 51, 51, 51, 255 }, // 0x000004C0
};

Vtx_t _HIDAN_room_8_vertices_000004D0[8] = 
{
	 { 1550, 4500, -570, 0, 1024, 512, 51, 51, 51, 255 }, // 0x000004D0
	 { 1550, 4500, -590, 0, 512, 512, 51, 51, 51, 255 }, // 0x000004E0
	 { 1610, 4500, -590, 0, 512, -1024, 51, 51, 51, 255 }, // 0x000004F0
	 { 1610, 4500, -570, 0, 1024, -1024, 51, 51, 51, 255 }, // 0x00000500
	 { 1550, 4400, -570, 0, 1024, 1024, 129, 129, 129, 255 }, // 0x00000510
	 { 1550, 4400, -590, 0, 512, 1024, 51, 51, 51, 255 }, // 0x00000520
	 { 1550, 4500, -590, 0, 512, -1536, 51, 51, 51, 255 }, // 0x00000530
	 { 1550, 4500, -570, 0, 1024, -1536, 51, 51, 51, 255 }, // 0x00000540
};

Vtx_t _HIDAN_room_8_vertices_00000550[4] = 
{
	 { 1400, 5200, -480, 0, -80, 1354, 25, 25, 25, 255 }, // 0x00000550
	 { 1260, 4880, -900, 0, 637, 4324, 25, 25, 25, 255 }, // 0x00000560
	 { 1860, 4880, -900, 0, 3371, 2922, 25, 25, 25, 255 }, // 0x00000570
	 { 1720, 5200, -480, 0, 1378, 607, 25, 25, 25, 255 }, // 0x00000580
};

Vtx_t _HIDAN_room_8_vertices_00000590[4] = 
{
	 { 1460, 4200, -300, 0, 7241, 1024, 51, 51, 51, 255 }, // 0x00000590
	 { 1460, 4400, -300, 0, 7241, -4096, 51, 51, 51, 255 }, // 0x000005A0
	 { 1260, 4400, -100, 0, 0, -4096, 196, 141, 53, 255 }, // 0x000005B0
	 { 1260, 4200, -100, 0, 0, 1024, 51, 51, 51, 255 }, // 0x000005C0
};

Vtx_t _HIDAN_room_8_vertices_000005D0[4] = 
{
	 { 1260, 4880, -900, 0, 14482, -6144, 25, 25, 25, 255 }, // 0x000005D0
	 { 660, 4880, -300, 0, 0, -6144, 25, 25, 25, 255 }, // 0x000005E0
	 { 660, 4400, -300, 0, 0, 2048, 143, 102, 60, 255 }, // 0x000005F0
	 { 1260, 4400, -900, 0, 14482, 2048, 51, 51, 51, 255 }, // 0x00000600
};

Vtx_t _HIDAN_room_8_vertices_00000610[7] = 
{
	 { 1080, 5200, -160, 0, 1228, 5254, 25, 25, 25, 255 }, // 0x00000610
	 { 660, 4880, -300, 0, 3646, 3387, 25, 25, 25, 255 }, // 0x00000620
	 { 1260, 4880, -900, 0, 0, 1024, 25, 25, 25, 255 }, // 0x00000630
	 { 1400, 5200, -480, 0, -717, 3994, 25, 25, 25, 255 }, // 0x00000640
	 { 1080, 5200, -160, 0, -1036, 3096, 25, 25, 25, 255 }, // 0x00000650
	 { 1400, 5200, -480, 0, 0, 1024, 25, 25, 25, 255 }, // 0x00000660
	 { 1560, 5200, 0, 0, -2591, 1024, 25, 25, 25, 255 }, // 0x00000670
};

Vtx_t _HIDAN_room_8_vertices_00000680[8] = 
{
	 { 993, 4200, -1215, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000680
	 { 1884, 4200, -891, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000690
	 { 993, 5200, -1215, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006A0
	 { 1884, 5200, -891, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006B0
	 { 660, 4200, -300, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006C0
	 { 1551, 4200, 24, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006D0
	 { 660, 5200, -300, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006E0
	 { 1551, 5200, 24, 0, 0, 0, 0, 0, 0, 0 }, // 0x000006F0
};

Gfx _HIDAN_room_8_dlist_00000700[] =
{
	gsDPPipeSync(), // 0x00000700
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000708
	gsSPVertex(_HIDAN_room_8_vertices_00000680, 8, 0), // 0x00000710
	gsSPCullDisplayList(0, 7), // 0x00000718
	gsDPPipeSync(), // 0x00000720
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000728
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000730
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000738
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000062D8), // 0x00000740
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000748
	gsDPLoadSync(), // 0x00000750
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000758
	gsDPPipeSync(), // 0x00000760
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000768
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000770
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000778
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000780
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000788
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000790
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000798
	gsSPVertex(_HIDAN_room_8_vertices_00000150, 4, 0), // 0x000007A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000007A8
	gsDPPipeSync(), // 0x000007B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000007B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000086D8), // 0x000007C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000007C8
	gsDPLoadSync(), // 0x000007D0
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x000007D8
	gsDPPipeSync(), // 0x000007E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000007E8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000007F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x000007F8
	gsDPTileSync(), // 0x00000800
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000808
	gsDPLoadSync(), // 0x00000810
	gsDPLoadTLUTCmd(7, 15), // 0x00000818
	gsDPPipeSync(), // 0x00000820
	gsSPVertex(_HIDAN_room_8_vertices_00000190, 4, 0), // 0x00000828
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000830
	gsDPPipeSync(), // 0x00000838
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000082D8), // 0x00000840
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000848
	gsDPLoadSync(), // 0x00000850
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x00000858
	gsDPPipeSync(), // 0x00000860
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000868
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000870
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00019DD0), // 0x00000878
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000880
	gsDPLoadSync(), // 0x00000888
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00000890
	gsDPPipeSync(), // 0x00000898
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000008A0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000008A8
	gsSPVertex(_HIDAN_room_8_vertices_000001D0, 3, 0), // 0x000008B0
	gsSP1Triangle(0, 1, 2, 0), // 0x000008B8
	gsDPPipeSync(), // 0x000008C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000086D8), // 0x000008C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000008D0
	gsDPLoadSync(), // 0x000008D8
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x000008E0
	gsDPPipeSync(), // 0x000008E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000008F0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000008F8
	gsSPVertex(_HIDAN_room_8_vertices_00000200, 4, 0), // 0x00000900
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000908
	gsDPPipeSync(), // 0x00000910
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189D0), // 0x00000918
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000920
	gsDPLoadSync(), // 0x00000928
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00000930
	gsDPPipeSync(), // 0x00000938
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000940
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000948
	gsSPVertex(_HIDAN_room_8_vertices_00000240, 4, 0), // 0x00000950
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000958
	gsDPPipeSync(), // 0x00000960
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000968
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000062D8), // 0x00000970
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000978
	gsDPLoadSync(), // 0x00000980
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000988
	gsDPPipeSync(), // 0x00000990
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000998
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000009A0
	gsSPVertex(_HIDAN_room_8_vertices_00000280, 4, 0), // 0x000009A8
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x000009B0
	gsDPPipeSync(), // 0x000009B8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000009C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189D0), // 0x000009C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000009D0
	gsDPLoadSync(), // 0x000009D8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000009E0
	gsDPPipeSync(), // 0x000009E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000009F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000009F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00000A00
	gsDPTileSync(), // 0x00000A08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000A10
	gsDPLoadSync(), // 0x00000A18
	gsDPLoadTLUTCmd(7, 15), // 0x00000A20
	gsDPPipeSync(), // 0x00000A28
	gsSPVertex(_HIDAN_room_8_vertices_000002C0, 4, 0), // 0x00000A30
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000A38
	gsDPPipeSync(), // 0x00000A40
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018BD0), // 0x00000A48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000A50
	gsDPLoadSync(), // 0x00000A58
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00000A60
	gsDPPipeSync(), // 0x00000A68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000A70
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000A78
	gsSPVertex(_HIDAN_room_8_vertices_00000300, 4, 0), // 0x00000A80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000A88
	gsDPPipeSync(), // 0x00000A90
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000A98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00000AA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000AA8
	gsDPLoadSync(), // 0x00000AB0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000AB8
	gsDPPipeSync(), // 0x00000AC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000AC8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000AD0
	gsSPVertex(_HIDAN_room_8_vertices_00000340, 3, 0), // 0x00000AD8
	gsSP1Triangle(0, 1, 2, 0), // 0x00000AE0
	gsDPPipeSync(), // 0x00000AE8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000AF0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189D0), // 0x00000AF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000B00
	gsDPLoadSync(), // 0x00000B08
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00000B10
	gsDPPipeSync(), // 0x00000B18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000B20
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000B28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00000B30
	gsDPTileSync(), // 0x00000B38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000B40
	gsDPLoadSync(), // 0x00000B48
	gsDPLoadTLUTCmd(7, 15), // 0x00000B50
	gsDPPipeSync(), // 0x00000B58
	gsSPVertex(_HIDAN_room_8_vertices_00000370, 4, 0), // 0x00000B60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000B68
	gsDPPipeSync(), // 0x00000B70
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000B78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000062D8), // 0x00000B80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000B88
	gsDPLoadSync(), // 0x00000B90
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000B98
	gsDPPipeSync(), // 0x00000BA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000BA8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000BB0
	gsSPVertex(_HIDAN_room_8_vertices_000003B0, 4, 0), // 0x00000BB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000BC0
	gsDPPipeSync(), // 0x00000BC8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000BD0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018BD0), // 0x00000BD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000BE0
	gsDPLoadSync(), // 0x00000BE8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00000BF0
	gsDPPipeSync(), // 0x00000BF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000C00
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000C08
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00000C10
	gsDPTileSync(), // 0x00000C18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000C20
	gsDPLoadSync(), // 0x00000C28
	gsDPLoadTLUTCmd(7, 15), // 0x00000C30
	gsDPPipeSync(), // 0x00000C38
	gsSPVertex(_HIDAN_room_8_vertices_000003F0, 4, 0), // 0x00000C40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000C48
	gsDPPipeSync(), // 0x00000C50
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00019DD0), // 0x00000C58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000C60
	gsDPLoadSync(), // 0x00000C68
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00000C70
	gsDPPipeSync(), // 0x00000C78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000C80
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000C88
	gsSPVertex(_HIDAN_room_8_vertices_00000430, 4, 0), // 0x00000C90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000C98
	gsDPPipeSync(), // 0x00000CA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189D0), // 0x00000CA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000CB0
	gsDPLoadSync(), // 0x00000CB8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00000CC0
	gsDPPipeSync(), // 0x00000CC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000CD0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000CD8
	gsSPVertex(_HIDAN_room_8_vertices_00000470, 6, 0), // 0x00000CE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000CE8
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0), // 0x00000CF0
	gsDPPipeSync(), // 0x00000CF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018BD0), // 0x00000D00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000D08
	gsDPLoadSync(), // 0x00000D10
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00000D18
	gsDPPipeSync(), // 0x00000D20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000D28
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000D30
	gsSPVertex(_HIDAN_room_8_vertices_000004D0, 8, 0), // 0x00000D38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000D40
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000D48
	gsDPPipeSync(), // 0x00000D50
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000D58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00000D60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000D68
	gsDPLoadSync(), // 0x00000D70
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000D78
	gsDPPipeSync(), // 0x00000D80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000D88
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000D90
	gsSPVertex(_HIDAN_room_8_vertices_00000550, 4, 0), // 0x00000D98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000DA0
	gsDPPipeSync(), // 0x00000DA8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000DB0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189D0), // 0x00000DB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000DC0
	gsDPLoadSync(), // 0x00000DC8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00000DD0
	gsDPPipeSync(), // 0x00000DD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000DE0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000DE8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00000DF0
	gsDPTileSync(), // 0x00000DF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000E00
	gsDPLoadSync(), // 0x00000E08
	gsDPLoadTLUTCmd(7, 15), // 0x00000E10
	gsDPPipeSync(), // 0x00000E18
	gsSPVertex(_HIDAN_room_8_vertices_00000590, 4, 0), // 0x00000E20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000E28
	gsDPPipeSync(), // 0x00000E30
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000086D8), // 0x00000E38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000E40
	gsDPLoadSync(), // 0x00000E48
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x00000E50
	gsDPPipeSync(), // 0x00000E58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000E60
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000E68
	gsSPVertex(_HIDAN_room_8_vertices_000005D0, 4, 0), // 0x00000E70
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00000E78
	gsDPPipeSync(), // 0x00000E80
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000E88
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00000E90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000E98
	gsDPLoadSync(), // 0x00000EA0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000EA8
	gsDPPipeSync(), // 0x00000EB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000EB8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000EC0
	gsSPVertex(_HIDAN_room_8_vertices_00000610, 7, 0), // 0x00000EC8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000ED0
	gsSP1Triangle(4, 5, 6, 0), // 0x00000ED8
	gsSPEndDisplayList(), // 0x00000EE0
};

Vtx_t _HIDAN_room_8_vertices_00000EE8[14] = 
{
	 { 1400, 5200, 480, 0, -288, 1024, 25, 25, 25, 255 }, // 0x00000EE8
	 { 1080, 5200, 160, 0, 748, 3096, 25, 25, 25, 255 }, // 0x00000EF8
	 { 1560, 5200, 0, 0, 2303, 1024, 25, 25, 25, 255 }, // 0x00000F08
	 { 1400, 5200, 480, 0, -1209, 3327, 25, 25, 25, 255 }, // 0x00000F18
	 { 1260, 4880, 900, 0, 915, 5522, 25, 25, 25, 255 }, // 0x00000F28
	 { 660, 4880, 300, 0, 2858, 1636, 25, 25, 25, 255 }, // 0x00000F38
	 { 1080, 5200, 160, 0, -173, 1254, 25, 25, 25, 255 }, // 0x00000F48
	 { 1080, 5200, 160, 0, -518, 2578, 25, 25, 25, 255 }, // 0x00000F58
	 { 1080, 5200, -160, 0, 0, 1024, 25, 25, 25, 255 }, // 0x00000F68
	 { 1560, 5200, 0, 0, -2591, 1024, 25, 25, 25, 255 }, // 0x00000F78
	 { 1080, 5200, 160, 0, -3439, 2617, 25, 25, 25, 255 }, // 0x00000F88
	 { 660, 4880, 300, 0, -721, 4010, 25, 25, 25, 255 }, // 0x00000F98
	 { 660, 4880, -300, 0, 0, 1024, 25, 25, 25, 255 }, // 0x00000FA8
	 { 1080, 5200, -160, 0, -3055, 1024, 25, 25, 25, 255 }, // 0x00000FB8
};

Vtx_t _HIDAN_room_8_vertices_00000FC8[8] = 
{
	 { 1260, 4200, 100, 0, -3072, -1024, 51, 51, 51, 255 }, // 0x00000FC8
	 { 1260, 4400, 100, 0, -3072, 4096, 196, 141, 53, 255 }, // 0x00000FD8
	 { 1460, 4400, 300, 0, 4169, 4096, 196, 141, 53, 255 }, // 0x00000FE8
	 { 1460, 4200, 300, 0, 4169, -1024, 51, 51, 51, 255 }, // 0x00000FF8
	 { 1260, 4200, -100, 0, 1024, 1024, 51, 51, 51, 255 }, // 0x00001008
	 { 1260, 4400, -100, 0, 1024, -4096, 196, 141, 53, 255 }, // 0x00001018
	 { 1260, 4400, 100, 0, -4096, -4096, 196, 141, 53, 255 }, // 0x00001028
	 { 1260, 4200, 100, 0, -4096, 1024, 51, 51, 51, 255 }, // 0x00001038
};

Vtx_t _HIDAN_room_8_vertices_00001048[8] = 
{
	 { 660, 4880, 300, 0, -5120, -6144, 25, 25, 25, 255 }, // 0x00001048
	 { 660, 4480, 300, 0, -5120, 683, 143, 102, 60, 255 }, // 0x00001058
	 { 660, 4880, -300, 0, 5120, -6144, 25, 25, 25, 255 }, // 0x00001068
	 { 660, 4400, -300, 0, 5120, 2048, 90, 63, 37, 255 }, // 0x00001078
	 { 1260, 4880, 900, 0, -7898, -6144, 25, 25, 25, 255 }, // 0x00001088
	 { 1260, 4680, 900, 0, -7898, -2731, 90, 63, 37, 255 }, // 0x00001098
	 { 660, 4880, 300, 0, 6583, -6144, 25, 25, 25, 255 }, // 0x000010A8
	 { 660, 4480, 300, 0, 6583, 683, 90, 63, 37, 255 }, // 0x000010B8
};

Vtx_t _HIDAN_room_8_vertices_000010C8[6] = 
{
	 { 1260, 4400, -100, 0, 0, 1024, 114, 114, 114, 255 }, // 0x000010C8
	 { 660, 4400, -300, 0, 2048, 0, 76, 76, 76, 255 }, // 0x000010D8
	 { 660, 4480, 300, 0, 512, -1536, 76, 76, 76, 255 }, // 0x000010E8
	 { 1260, 4680, 900, 0, -2560, -1536, 90, 63, 37, 255 }, // 0x000010F8
	 { 1460, 4680, 300, 0, -1536, 512, 114, 114, 114, 255 }, // 0x00001108
	 { 1260, 4480, 100, 0, -512, 512, 114, 114, 114, 255 }, // 0x00001118
};

Vtx_t _HIDAN_room_8_vertices_00001128[4] = 
{
	 { 1260, 4400, 100, 0, 7168, 2048, 196, 141, 53, 255 }, // 0x00001128
	 { 1260, 4480, 100, 0, 7168, 0, 51, 51, 51, 255 }, // 0x00001138
	 { 1460, 4680, 300, 0, -73, -5120, 51, 51, 51, 255 }, // 0x00001148
	 { 1460, 4400, 300, 0, -73, 2048, 196, 141, 53, 255 }, // 0x00001158
};

Vtx_t _HIDAN_room_8_vertices_00001168[3] = 
{
	 { 1260, 4400, -100, 0, 0, 1024, 114, 114, 114, 255 }, // 0x00001168
	 { 660, 4480, 300, 0, 512, -1536, 76, 76, 76, 255 }, // 0x00001178
	 { 1260, 4480, 100, 0, -512, 512, 114, 114, 114, 255 }, // 0x00001188
};

Vtx_t _HIDAN_room_8_vertices_00001198[3] = 
{
	 { 1260, 4400, -100, 0, 5120, 2048, 196, 141, 53, 255 }, // 0x00001198
	 { 1260, 4480, 100, 0, 0, 0, 51, 51, 51, 255 }, // 0x000011A8
	 { 1260, 4400, 100, 0, 0, 2048, 196, 141, 53, 255 }, // 0x000011B8
};

Vtx_t _HIDAN_room_8_vertices_000011C8[8] = 
{
	 { 669, 4200, -324, 0, 0, 0, 0, 0, 0, 0 }, // 0x000011C8
	 { 1584, 4200, 9, 0, 0, 0, 0, 0, 0, 0 }, // 0x000011D8
	 { 669, 5200, -324, 0, 0, 0, 0, 0, 0, 0 }, // 0x000011E8
	 { 1584, 5200, 9, 0, 0, 0, 0, 0, 0, 0 }, // 0x000011F8
	 { 345, 4200, 567, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001208
	 { 1260, 4200, 900, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001218
	 { 345, 5200, 567, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001228
	 { 1260, 5200, 900, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001238
};

Gfx _HIDAN_room_8_dlist_00001248[] =
{
	gsDPPipeSync(), // 0x00001248
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001250
	gsSPVertex(_HIDAN_room_8_vertices_000011C8, 8, 0), // 0x00001258
	gsSPCullDisplayList(0, 7), // 0x00001260
	gsDPPipeSync(), // 0x00001268
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001270
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001278
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001280
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00001288
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001290
	gsDPLoadSync(), // 0x00001298
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000012A0
	gsDPPipeSync(), // 0x000012A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000012B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000012B8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000012C0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000012C8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000012D0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000012D8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000012E0
	gsSPVertex(_HIDAN_room_8_vertices_00000EE8, 14, 0), // 0x000012E8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000012F0
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x000012F8
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00001300
	gsDPPipeSync(), // 0x00001308
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001310
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189D0), // 0x00001318
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001320
	gsDPLoadSync(), // 0x00001328
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00001330
	gsDPPipeSync(), // 0x00001338
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001340
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001348
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00001350
	gsDPTileSync(), // 0x00001358
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001360
	gsDPLoadSync(), // 0x00001368
	gsDPLoadTLUTCmd(7, 15), // 0x00001370
	gsDPPipeSync(), // 0x00001378
	gsSPVertex(_HIDAN_room_8_vertices_00000FC8, 8, 0), // 0x00001380
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001388
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001390
	gsDPPipeSync(), // 0x00001398
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000086D8), // 0x000013A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000013A8
	gsDPLoadSync(), // 0x000013B0
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x000013B8
	gsDPPipeSync(), // 0x000013C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000013C8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000013D0
	gsSPVertex(_HIDAN_room_8_vertices_00001048, 8, 0), // 0x000013D8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000013E0
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x000013E8
	gsDPPipeSync(), // 0x000013F0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000013F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000062D8), // 0x00001400
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001408
	gsDPLoadSync(), // 0x00001410
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001418
	gsDPPipeSync(), // 0x00001420
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001428
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001430
	gsSPVertex(_HIDAN_room_8_vertices_000010C8, 6, 0), // 0x00001438
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00001440
	gsSP1Triangle(2, 3, 5, 0), // 0x00001448
	gsDPPipeSync(), // 0x00001450
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001458
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000082D8), // 0x00001460
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001468
	gsDPLoadSync(), // 0x00001470
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x00001478
	gsDPPipeSync(), // 0x00001480
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001488
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001490
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00001498
	gsDPTileSync(), // 0x000014A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000014A8
	gsDPLoadSync(), // 0x000014B0
	gsDPLoadTLUTCmd(7, 15), // 0x000014B8
	gsDPPipeSync(), // 0x000014C0
	gsSPVertex(_HIDAN_room_8_vertices_00001128, 4, 0), // 0x000014C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000014D0
	gsDPPipeSync(), // 0x000014D8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000014E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000062D8), // 0x000014E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000014F0
	gsDPLoadSync(), // 0x000014F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001500
	gsDPPipeSync(), // 0x00001508
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001510
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001518
	gsSPVertex(_HIDAN_room_8_vertices_00001168, 3, 0), // 0x00001520
	gsSP1Triangle(0, 1, 2, 0), // 0x00001528
	gsDPPipeSync(), // 0x00001530
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001538
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000082D8), // 0x00001540
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001548
	gsDPLoadSync(), // 0x00001550
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x00001558
	gsDPPipeSync(), // 0x00001560
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001568
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001570
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00001578
	gsDPTileSync(), // 0x00001580
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001588
	gsDPLoadSync(), // 0x00001590
	gsDPLoadTLUTCmd(7, 15), // 0x00001598
	gsDPPipeSync(), // 0x000015A0
	gsSPVertex(_HIDAN_room_8_vertices_00001198, 3, 0), // 0x000015A8
	gsSP1Triangle(0, 1, 2, 0), // 0x000015B0
	gsSPEndDisplayList(), // 0x000015B8
};

Vtx_t _HIDAN_room_8_vertices_000015C0[14] = 
{
	 { 2040, 5200, 160, 0, -288, 1024, 25, 25, 25, 255 }, // 0x000015C0
	 { 1720, 5200, 480, 0, 748, 3096, 25, 25, 25, 255 }, // 0x000015D0
	 { 1560, 5200, 0, 0, 2303, 1024, 25, 25, 25, 255 }, // 0x000015E0
	 { 2040, 5200, 160, 0, -1209, 3327, 25, 25, 25, 255 }, // 0x000015F0
	 { 2460, 4880, 300, 0, 915, 5522, 25, 25, 25, 255 }, // 0x00001600
	 { 1860, 4880, 900, 0, 2858, 1636, 25, 25, 25, 255 }, // 0x00001610
	 { 1720, 5200, 480, 0, -173, 1254, 25, 25, 25, 255 }, // 0x00001620
	 { 1720, 5200, 480, 0, -2591, 1024, 25, 25, 25, 255 }, // 0x00001630
	 { 1400, 5200, 480, 0, -2072, 2578, 25, 25, 25, 255 }, // 0x00001640
	 { 1560, 5200, 0, 0, 0, 1024, 25, 25, 25, 255 }, // 0x00001650
	 { 1720, 5200, 480, 0, -1638, 1024, 25, 25, 25, 255 }, // 0x00001660
	 { 1860, 4880, 900, 0, -2355, 3994, 25, 25, 25, 255 }, // 0x00001670
	 { 1260, 4880, 900, 0, 717, 3994, 25, 25, 25, 255 }, // 0x00001680
	 { 1400, 5200, 480, 0, 0, 1024, 25, 25, 25, 255 }, // 0x00001690
};

Vtx_t _HIDAN_room_8_vertices_000016A0[8] = 
{
	 { 1860, 4880, 900, 0, -2560, -6144, 25, 25, 25, 255 }, // 0x000016A0
	 { 1860, 4560, 900, 0, -2560, -683, 143, 102, 60, 255 }, // 0x000016B0
	 { 1260, 4880, 900, 0, 7680, -6144, 25, 25, 25, 255 }, // 0x000016C0
	 { 1260, 4680, 900, 0, 7680, -2731, 90, 63, 37, 255 }, // 0x000016D0
	 { 2460, 4880, 300, 0, -4242, 2048, 25, 25, 25, 255 }, // 0x000016E0
	 { 2460, 4520, 300, 0, -4242, 8192, 143, 102, 60, 255 }, // 0x000016F0
	 { 1860, 4880, 900, 0, 10240, 2048, 25, 25, 25, 255 }, // 0x00001700
	 { 1860, 4560, 900, 0, 10240, 7509, 90, 63, 37, 255 }, // 0x00001710
};

Vtx_t _HIDAN_room_8_vertices_00001720[8] = 
{
	 { 1460, 4200, 300, 0, -2048, -1024, 51, 51, 51, 255 }, // 0x00001720
	 { 1460, 4400, 300, 0, -2048, 4096, 196, 141, 53, 255 }, // 0x00001730
	 { 1660, 4400, 300, 0, 3072, 4096, 196, 141, 53, 255 }, // 0x00001740
	 { 1660, 4200, 300, 0, 3072, -1024, 51, 51, 51, 255 }, // 0x00001750
	 { 1660, 4200, 300, 0, -3072, -1024, 51, 51, 51, 255 }, // 0x00001760
	 { 1660, 4400, 300, 0, -3072, 4096, 196, 141, 53, 255 }, // 0x00001770
	 { 1860, 4400, 100, 0, 4169, 4096, 196, 141, 53, 255 }, // 0x00001780
	 { 1860, 4200, 100, 0, 4169, -1024, 51, 51, 51, 255 }, // 0x00001790
};

Vtx_t _HIDAN_room_8_vertices_000017A0[6] = 
{
	 { 1460, 4680, 300, 0, -1536, 512, 114, 114, 114, 255 }, // 0x000017A0
	 { 1260, 4680, 900, 0, -2560, -1536, 90, 63, 37, 255 }, // 0x000017B0
	 { 1860, 4560, 900, 0, -4096, 0, 76, 76, 76, 255 }, // 0x000017C0
	 { 1660, 4600, 300, 0, -2048, 1024, 114, 114, 114, 255 }, // 0x000017D0
	 { 2460, 4520, 300, 0, -4096, 3072, 76, 76, 76, 255 }, // 0x000017E0
	 { 1860, 4600, 100, 0, -2048, 2048, 114, 114, 114, 255 }, // 0x000017F0
};

Vtx_t _HIDAN_room_8_vertices_00001800[8] = 
{
	 { 1660, 4400, 300, 0, 7241, 2048, 196, 141, 53, 255 }, // 0x00001800
	 { 1660, 4600, 300, 0, 7241, -3072, 51, 51, 51, 255 }, // 0x00001810
	 { 1860, 4600, 100, 0, 0, -3072, 51, 51, 51, 255 }, // 0x00001820
	 { 1860, 4400, 100, 0, 0, 2048, 196, 141, 53, 255 }, // 0x00001830
	 { 1460, 4400, 300, 0, 5120, 2048, 196, 141, 53, 255 }, // 0x00001840
	 { 1460, 4680, 300, 0, 5120, -5120, 51, 51, 51, 255 }, // 0x00001850
	 { 1660, 4600, 300, 0, 0, -3072, 51, 51, 51, 255 }, // 0x00001860
	 { 1660, 4400, 300, 0, 0, 2048, 196, 141, 53, 255 }, // 0x00001870
};

Vtx_t _HIDAN_room_8_vertices_00001880[8] = 
{
	 { 1569, 4200, -24, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001880
	 { 2460, 4200, 300, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001890
	 { 1569, 5200, -24, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018A0
	 { 2460, 5200, 300, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018B0
	 { 1236, 4200, 891, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018C0
	 { 2127, 4200, 1215, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018D0
	 { 1236, 5200, 891, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018E0
	 { 2127, 5200, 1215, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018F0
};

Gfx _HIDAN_room_8_dlist_00001900[] =
{
	gsDPPipeSync(), // 0x00001900
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001908
	gsSPVertex(_HIDAN_room_8_vertices_00001880, 8, 0), // 0x00001910
	gsSPCullDisplayList(0, 7), // 0x00001918
	gsDPPipeSync(), // 0x00001920
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001928
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001930
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001938
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00001940
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001948
	gsDPLoadSync(), // 0x00001950
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001958
	gsDPPipeSync(), // 0x00001960
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001968
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001970
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001978
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001980
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001988
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001990
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001998
	gsSPVertex(_HIDAN_room_8_vertices_000015C0, 14, 0), // 0x000019A0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000019A8
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x000019B0
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x000019B8
	gsDPPipeSync(), // 0x000019C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000019C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000086D8), // 0x000019D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000019D8
	gsDPLoadSync(), // 0x000019E0
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x000019E8
	gsDPPipeSync(), // 0x000019F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000019F8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001A00
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00001A08
	gsDPTileSync(), // 0x00001A10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001A18
	gsDPLoadSync(), // 0x00001A20
	gsDPLoadTLUTCmd(7, 15), // 0x00001A28
	gsDPPipeSync(), // 0x00001A30
	gsSPVertex(_HIDAN_room_8_vertices_000016A0, 8, 0), // 0x00001A38
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001A40
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00001A48
	gsDPPipeSync(), // 0x00001A50
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189D0), // 0x00001A58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001A60
	gsDPLoadSync(), // 0x00001A68
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00001A70
	gsDPPipeSync(), // 0x00001A78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001A80
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001A88
	gsSPVertex(_HIDAN_room_8_vertices_00001720, 8, 0), // 0x00001A90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001A98
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001AA0
	gsDPPipeSync(), // 0x00001AA8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001AB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000062D8), // 0x00001AB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001AC0
	gsDPLoadSync(), // 0x00001AC8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001AD0
	gsDPPipeSync(), // 0x00001AD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001AE0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001AE8
	gsSPVertex(_HIDAN_room_8_vertices_000017A0, 6, 0), // 0x00001AF0
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0), // 0x00001AF8
	gsSP2Triangles(0, 2, 3, 0, 3, 4, 5, 0), // 0x00001B00
	gsDPPipeSync(), // 0x00001B08
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001B10
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000082D8), // 0x00001B18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001B20
	gsDPLoadSync(), // 0x00001B28
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x00001B30
	gsDPPipeSync(), // 0x00001B38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001B40
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001B48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00001B50
	gsDPTileSync(), // 0x00001B58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001B60
	gsDPLoadSync(), // 0x00001B68
	gsDPLoadTLUTCmd(7, 15), // 0x00001B70
	gsDPPipeSync(), // 0x00001B78
	gsSPVertex(_HIDAN_room_8_vertices_00001800, 8, 0), // 0x00001B80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B88
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001B90
	gsSPEndDisplayList(), // 0x00001B98
};

Vtx_t _HIDAN_room_8_vertices_00001BA0[4] = 
{
	 { 1720, 5200, -480, 0, -262, 1354, 25, 25, 25, 255 }, // 0x00001BA0
	 { 1860, 4880, -900, 0, -978, 4324, 25, 25, 25, 255 }, // 0x00001BB0
	 { 2460, 4880, -300, 0, 3344, 3884, 25, 25, 25, 255 }, // 0x00001BC0
	 { 2040, 5200, -160, 0, 2043, 1119, 25, 25, 25, 255 }, // 0x00001BD0
};

Vtx_t _HIDAN_room_8_vertices_00001BE0[7] = 
{
	 { 1720, 4680, -570, 0, 1878, -1753, 127, 127, 127, 255 }, // 0x00001BE0
	 { 1660, 4680, -300, 0, -4096, 2048, 51, 51, 51, 255 }, // 0x00001BF0
	 { 1820, 4680, -400, 0, 611, 3134, 93, 94, 63, 255 }, // 0x00001C00
	 { 1860, 4680, -100, 0, -4096, 9289, 93, 94, 63, 255 }, // 0x00001C10
	 { 2460, 4680, -300, 0, 10386, 16530, 143, 102, 60, 255 }, // 0x00001C20
	 { 2060, 4680, -400, 0, 4955, 7479, 93, 94, 63, 255 }, // 0x00001C30
	 { 1940, 4680, -280, 0, 611, 7479, 93, 94, 63, 255 }, // 0x00001C40
};

Vtx_t _HIDAN_room_8_vertices_00001C50[4] = 
{
	 { 1860, 4400, -100, 0, 7241, 2048, 196, 141, 53, 255 }, // 0x00001C50
	 { 1860, 4680, -100, 0, 7241, -5120, 51, 51, 51, 255 }, // 0x00001C60
	 { 1660, 4680, -300, 0, 0, -5120, 129, 129, 129, 255 }, // 0x00001C70
	 { 1660, 4400, -300, 0, 0, 2048, 196, 141, 53, 255 }, // 0x00001C80
};

Vtx_t _HIDAN_room_8_vertices_00001C90[5] = 
{
	 { 1820, 4680, -400, 0, 2048, 2048, 93, 94, 63, 255 }, // 0x00001C90
	 { 1940, 4680, -400, 0, 1024, 1024, 196, 141, 53, 255 }, // 0x00001CA0
	 { 1940, 4680, -520, 0, 0, 2048, 93, 94, 63, 255 }, // 0x00001CB0
	 { 2060, 4680, -400, 0, 0, 0, 93, 94, 63, 255 }, // 0x00001CC0
	 { 1940, 4680, -280, 0, 2048, 0, 93, 94, 63, 255 }, // 0x00001CD0
};

Vtx_t _HIDAN_room_8_vertices_00001CE0[9] = 
{
	 { 1940, 4680, -520, 0, 4955, 3134, 93, 94, 63, 255 }, // 0x00001CE0
	 { 2060, 4680, -400, 0, 4955, 7479, 93, 94, 63, 255 }, // 0x00001CF0
	 { 2460, 4680, -300, 0, 10386, 16530, 143, 102, 60, 255 }, // 0x00001D00
	 { 1860, 4680, -900, 0, 10386, -5193, 51, 51, 51, 255 }, // 0x00001D10
	 { 1860, 4680, -100, 0, -4096, 9289, 93, 94, 63, 255 }, // 0x00001D20
	 { 1940, 4680, -280, 0, 611, 7479, 93, 94, 63, 255 }, // 0x00001D30
	 { 1820, 4680, -400, 0, 611, 3134, 93, 94, 63, 255 }, // 0x00001D40
	 { 1660, 4680, -300, 0, -4096, 2048, 51, 51, 51, 255 }, // 0x00001D50
	 { 1720, 4680, -570, 0, 1878, -1753, 127, 127, 127, 255 }, // 0x00001D60
};

Vtx_t _HIDAN_room_8_vertices_00001D70[4] = 
{
	 { 1860, 4200, -100, 0, -3145, -1536, 51, 51, 51, 255 }, // 0x00001D70
	 { 1860, 4400, -100, 0, -3145, 3584, 196, 141, 53, 255 }, // 0x00001D80
	 { 1660, 4400, -300, 0, 4096, 3584, 196, 141, 53, 255 }, // 0x00001D90
	 { 1660, 4200, -300, 0, 4096, -1536, 51, 51, 51, 255 }, // 0x00001DA0
};

Vtx_t _HIDAN_room_8_vertices_00001DB0[4] = 
{
	 { 1660, 4400, -300, 0, 7081, 2048, 179, 179, 179, 255 }, // 0x00001DB0
	 { 1660, 4680, -300, 0, 7081, -5120, 51, 51, 51, 255 }, // 0x00001DC0
	 { 1720, 4680, -570, 0, 0, -5120, 93, 94, 63, 255 }, // 0x00001DD0
	 { 1720, 4400, -570, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00001DE0
};

Vtx_t _HIDAN_room_8_vertices_00001DF0[10] = 
{
	 { 1720, 5200, -480, 0, 0, 1024, 25, 25, 25, 255 }, // 0x00001DF0
	 { 2040, 5200, -160, 0, -2317, 1024, 25, 25, 25, 255 }, // 0x00001E00
	 { 1560, 5200, 0, 0, -1159, 3341, 25, 25, 25, 255 }, // 0x00001E10
	 { 2040, 5200, 160, 0, -1638, 1024, 25, 25, 25, 255 }, // 0x00001E20
	 { 1560, 5200, 0, 0, -819, 3482, 25, 25, 25, 255 }, // 0x00001E30
	 { 2040, 5200, -160, 0, 0, 1024, 25, 25, 25, 255 }, // 0x00001E40
	 { 2040, 5200, -160, 0, -6, 1328, 25, 25, 25, 255 }, // 0x00001E50
	 { 2460, 4880, -300, 0, 1295, 4092, 25, 25, 25, 255 }, // 0x00001E60
	 { 2460, 4880, 300, 0, 3690, 2169, 25, 25, 25, 255 }, // 0x00001E70
	 { 2040, 5200, 160, 0, 1272, 302, 25, 25, 25, 255 }, // 0x00001E80
};

Vtx_t _HIDAN_room_8_vertices_00001E90[4] = 
{
	 { 1860, 4200, 100, 0, -2048, -1024, 51, 51, 51, 255 }, // 0x00001E90
	 { 1860, 4400, 100, 0, -2048, 4096, 196, 141, 53, 255 }, // 0x00001EA0
	 { 1860, 4400, -100, 0, 3072, 4096, 196, 141, 53, 255 }, // 0x00001EB0
	 { 1860, 4200, -100, 0, 3072, -1024, 51, 51, 51, 255 }, // 0x00001EC0
};

Vtx_t _HIDAN_room_8_vertices_00001ED0[8] = 
{
	 { 2460, 4880, -300, 0, -1536, 2048, 25, 25, 25, 255 }, // 0x00001ED0
	 { 2460, 4680, -300, 0, -1536, 5461, 143, 102, 60, 255 }, // 0x00001EE0
	 { 2460, 4880, 300, 0, 8704, 2048, 25, 25, 25, 255 }, // 0x00001EF0
	 { 2460, 4520, 300, 0, 8704, 8192, 90, 63, 37, 255 }, // 0x00001F00
	 { 1860, 4680, -900, 0, -439, -2731, 51, 51, 51, 255 }, // 0x00001F10
	 { 2460, 4680, -300, 0, 14042, -2731, 143, 102, 60, 255 }, // 0x00001F20
	 { 1860, 4880, -900, 0, -439, -6144, 25, 25, 25, 255 }, // 0x00001F30
	 { 2460, 4880, -300, 0, 14042, -6144, 25, 25, 25, 255 }, // 0x00001F40
};

Vtx_t _HIDAN_room_8_vertices_00001F50[4] = 
{
	 { 2460, 4520, 300, 0, -4096, 3072, 76, 76, 76, 255 }, // 0x00001F50
	 { 2460, 4680, -300, 0, -2560, 4608, 143, 102, 60, 255 }, // 0x00001F60
	 { 1860, 4680, -100, 0, -1536, 2560, 114, 114, 114, 255 }, // 0x00001F70
	 { 1860, 4600, 100, 0, -2048, 2048, 114, 114, 114, 255 }, // 0x00001F80
};

Vtx_t _HIDAN_room_8_vertices_00001F90[4] = 
{
	 { 1860, 4400, 100, 0, 5120, 2048, 196, 141, 53, 255 }, // 0x00001F90
	 { 1860, 4600, 100, 0, 5120, -3072, 51, 51, 51, 255 }, // 0x00001FA0
	 { 1860, 4680, -100, 0, 0, -5120, 51, 51, 51, 255 }, // 0x00001FB0
	 { 1860, 4400, -100, 0, 0, 2048, 196, 141, 53, 255 }, // 0x00001FC0
};

Vtx_t _HIDAN_room_8_vertices_00001FD0[8] = 
{
	 { 1842, 4200, -906, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001FD0
	 { 2775, 4200, -567, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001FE0
	 { 1842, 5200, -906, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001FF0
	 { 2775, 5200, -567, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002000
	 { 1518, 4200, -15, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002010
	 { 2451, 4200, 324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002020
	 { 1518, 5200, -15, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002030
	 { 2451, 5200, 324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002040
};

Gfx _HIDAN_room_8_dlist_00002050[] =
{
	gsDPPipeSync(), // 0x00002050
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002058
	gsSPVertex(_HIDAN_room_8_vertices_00001FD0, 8, 0), // 0x00002060
	gsSPCullDisplayList(0, 7), // 0x00002068
	gsDPPipeSync(), // 0x00002070
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002078
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002080
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002088
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00002090
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002098
	gsDPLoadSync(), // 0x000020A0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000020A8
	gsDPPipeSync(), // 0x000020B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000020B8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000020C0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000020C8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000020D0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000020D8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000020E0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000020E8
	gsSPVertex(_HIDAN_room_8_vertices_00001BA0, 4, 0), // 0x000020F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000020F8
	gsDPPipeSync(), // 0x00002100
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002108
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00019DD0), // 0x00002110
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002118
	gsDPLoadSync(), // 0x00002120
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00002128
	gsDPPipeSync(), // 0x00002130
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002138
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002140
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00002148
	gsDPTileSync(), // 0x00002150
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002158
	gsDPLoadSync(), // 0x00002160
	gsDPLoadTLUTCmd(7, 15), // 0x00002168
	gsDPPipeSync(), // 0x00002170
	gsSPVertex(_HIDAN_room_8_vertices_00001BE0, 7, 0), // 0x00002178
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00002180
	gsSP1Triangle(3, 5, 6, 0), // 0x00002188
	gsDPPipeSync(), // 0x00002190
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000082D8), // 0x00002198
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000021A0
	gsDPLoadSync(), // 0x000021A8
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x000021B0
	gsDPPipeSync(), // 0x000021B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000021C0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000021C8
	gsSPVertex(_HIDAN_room_8_vertices_00001C50, 4, 0), // 0x000021D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000021D8
	gsDPPipeSync(), // 0x000021E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000021E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_00008AD8), // 0x000021F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x000021F8
	gsDPLoadSync(), // 0x00002200
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002208
	gsDPPipeSync(), // 0x00002210
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00002218
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002220
	gsSPVertex(_HIDAN_room_8_vertices_00001C90, 5, 0), // 0x00002228
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002230
	gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0), // 0x00002238
	gsDPPipeSync(), // 0x00002240
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002248
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00019DD0), // 0x00002250
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002258
	gsDPLoadSync(), // 0x00002260
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00002268
	gsDPPipeSync(), // 0x00002270
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002278
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002280
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00002288
	gsDPTileSync(), // 0x00002290
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002298
	gsDPLoadSync(), // 0x000022A0
	gsDPLoadTLUTCmd(7, 15), // 0x000022A8
	gsDPPipeSync(), // 0x000022B0
	gsSPVertex(_HIDAN_room_8_vertices_00001CE0, 9, 0), // 0x000022B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000022C0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000022C8
	gsSP2Triangles(8, 6, 0, 0, 8, 0, 3, 0), // 0x000022D0
	gsDPPipeSync(), // 0x000022D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189D0), // 0x000022E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000022E8
	gsDPLoadSync(), // 0x000022F0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000022F8
	gsDPPipeSync(), // 0x00002300
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002308
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002310
	gsSPVertex(_HIDAN_room_8_vertices_00001D70, 4, 0), // 0x00002318
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002320
	gsDPPipeSync(), // 0x00002328
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000082D8), // 0x00002330
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002338
	gsDPLoadSync(), // 0x00002340
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x00002348
	gsDPPipeSync(), // 0x00002350
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002358
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002360
	gsSPVertex(_HIDAN_room_8_vertices_00001DB0, 4, 0), // 0x00002368
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002370
	gsDPPipeSync(), // 0x00002378
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002380
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00002388
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002390
	gsDPLoadSync(), // 0x00002398
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000023A0
	gsDPPipeSync(), // 0x000023A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000023B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000023B8
	gsSPVertex(_HIDAN_room_8_vertices_00001DF0, 10, 0), // 0x000023C0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000023C8
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x000023D0
	gsDPPipeSync(), // 0x000023D8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000023E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189D0), // 0x000023E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000023F0
	gsDPLoadSync(), // 0x000023F8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00002400
	gsDPPipeSync(), // 0x00002408
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002410
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002418
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00002420
	gsDPTileSync(), // 0x00002428
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002430
	gsDPLoadSync(), // 0x00002438
	gsDPLoadTLUTCmd(7, 15), // 0x00002440
	gsDPPipeSync(), // 0x00002448
	gsSPVertex(_HIDAN_room_8_vertices_00001E90, 4, 0), // 0x00002450
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002458
	gsDPPipeSync(), // 0x00002460
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000086D8), // 0x00002468
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002470
	gsDPLoadSync(), // 0x00002478
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x00002480
	gsDPPipeSync(), // 0x00002488
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002490
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002498
	gsSPVertex(_HIDAN_room_8_vertices_00001ED0, 8, 0), // 0x000024A0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000024A8
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x000024B0
	gsDPPipeSync(), // 0x000024B8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000024C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000062D8), // 0x000024C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000024D0
	gsDPLoadSync(), // 0x000024D8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000024E0
	gsDPPipeSync(), // 0x000024E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000024F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000024F8
	gsSPVertex(_HIDAN_room_8_vertices_00001F50, 4, 0), // 0x00002500
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00002508
	gsDPPipeSync(), // 0x00002510
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002518
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000082D8), // 0x00002520
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002528
	gsDPLoadSync(), // 0x00002530
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x00002538
	gsDPPipeSync(), // 0x00002540
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002548
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002550
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00002558
	gsDPTileSync(), // 0x00002560
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002568
	gsDPLoadSync(), // 0x00002570
	gsDPLoadTLUTCmd(7, 15), // 0x00002578
	gsDPPipeSync(), // 0x00002580
	gsSPVertex(_HIDAN_room_8_vertices_00001F90, 4, 0), // 0x00002588
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002590
	gsSPEndDisplayList(), // 0x00002598
};

Vtx_t _HIDAN_room_8_vertices_000025A0[4] = 
{
	 { 2690, 10, 1380, 0, 2035, 3597, 206, 205, 201, 255 }, // 0x000025A0
	 { 2690, 10, -1230, 0, 5376, 256, 206, 205, 201, 255 }, // 0x000025B0
	 { 560, 10, -1230, 0, 2650, -2470, 206, 205, 201, 255 }, // 0x000025C0
	 { 560, 10, 1380, 0, -691, 870, 206, 205, 201, 255 }, // 0x000025D0
};

Vtx_t _HIDAN_room_8_vertices_000025E0[8] = 
{
	 { 560, 10, -1230, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025E0
	 { 2690, 10, -1230, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025F0
	 { 560, 10, -1230, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002600
	 { 2690, 10, -1230, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002610
	 { 560, 10, 1380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002620
	 { 2690, 10, 1380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002630
	 { 560, 10, 1380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002640
	 { 2690, 10, 1380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002650
};

Gfx _HIDAN_room_8_dlist_00002660[] =
{
	gsDPPipeSync(), // 0x00002660
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002668
	gsSPVertex(_HIDAN_room_8_vertices_000025E0, 8, 0), // 0x00002670
	gsSPCullDisplayList(0, 7), // 0x00002678
	gsDPPipeSync(), // 0x00002680
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002688
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002690
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002698
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000092D8), // 0x000026A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 15, 0, 5, 15), // 0x000026A8
	gsDPLoadSync(), // 0x000026B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000026B8
	gsDPPipeSync(), // 0x000026C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 15, 0, 5, 15), // 0x000026C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000026D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00019FD0), // 0x000026D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 15, 0, 5, 15), // 0x000026E0
	gsDPLoadSync(), // 0x000026E8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000026F0
	gsDPPipeSync(), // 0x000026F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 15, 0, 5, 15), // 0x00002700
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00002708
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002710
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002718
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002720
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002728
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002730
	gsSPDisplayList(0x08000000), // 0x00002738
	gsSPVertex(_HIDAN_room_8_vertices_000025A0, 4, 0), // 0x00002740
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002748
	gsSPEndDisplayList(), // 0x00002750
};

Vtx_t _HIDAN_room_8_vertices_00002758[20] = 
{
	 { 1809, 4200, -151, 0, 4437, 653, 45, 45, 45, 255 }, // 0x00002758
	 { 1660, 4200, -300, 0, 4437, -424, 45, 45, 45, 255 }, // 0x00002768
	 { 1660, 2900, -300, 0, 0, -424, 45, 45, 45, 255 }, // 0x00002778
	 { 1809, 2900, -151, 0, 0, 653, 178, 110, 75, 255 }, // 0x00002788
	 { 1860, 2900, -100, 0, 0, 1024, 178, 110, 75, 255 }, // 0x00002798
	 { 1860, 4200, -100, 0, 4437, 1024, 45, 45, 45, 255 }, // 0x000027A8
	 { 1610, 4200, 300, 0, 2425, -26, 45, 45, 45, 255 }, // 0x000027B8
	 { 1660, 4200, 300, 0, 2425, -282, 45, 45, 45, 255 }, // 0x000027C8
	 { 1660, 2900, 300, 0, -2012, -282, 45, 45, 45, 255 }, // 0x000027D8
	 { 1610, 2900, 300, 0, -2012, -26, 45, 45, 45, 255 }, // 0x000027E8
	 { 1550, 4200, 300, 0, 2425, 281, 45, 45, 45, 255 }, // 0x000027F8
	 { 1550, 2900, 300, 0, -2012, 281, 45, 45, 45, 255 }, // 0x00002808
	 { 1460, 2900, 300, 0, -2012, 742, 178, 110, 75, 255 }, // 0x00002818
	 { 1460, 4200, 300, 0, 2425, 742, 45, 45, 45, 255 }, // 0x00002828
	 { 1260, 2900, -100, 0, 2093, 98, 178, 110, 75, 255 }, // 0x00002838
	 { 1260, 4200, -100, 0, 6531, 98, 45, 45, 45, 255 }, // 0x00002848
	 { 1260, 4200, 30, 0, 6531, -567, 45, 45, 45, 255 }, // 0x00002858
	 { 1260, 2900, 30, 0, 2093, -567, 45, 45, 45, 255 }, // 0x00002868
	 { 1260, 4200, 100, 0, 6531, -926, 45, 45, 45, 255 }, // 0x00002878
	 { 1260, 2900, 100, 0, 2093, -926, 45, 45, 45, 255 }, // 0x00002888
};

Vtx_t _HIDAN_room_8_vertices_00002898[12] = 
{
	 { 1871, 2800, -129, 0, 512, 1024, 45, 45, 45, 255 }, // 0x00002898
	 { 1851, 2800, -109, 0, 1024, 1024, 178, 110, 75, 255 }, // 0x000028A8
	 { 1851, 2900, -109, 0, 1024, -1539, 178, 110, 75, 255 }, // 0x000028B8
	 { 1871, 2900, -129, 0, 512, -1539, 45, 45, 45, 255 }, // 0x000028C8
	 { 1829, 2900, -171, 0, 512, -1539, 45, 45, 45, 255 }, // 0x000028D8
	 { 1809, 2900, -151, 0, 1024, -1539, 178, 110, 75, 255 }, // 0x000028E8
	 { 1809, 2800, -151, 0, 1024, 1024, 178, 110, 75, 255 }, // 0x000028F8
	 { 1829, 2800, -171, 0, 512, 1024, 45, 45, 45, 255 }, // 0x00002908
	 { 1829, 2800, -171, 0, 1031, 996, 45, 45, 45, 255 }, // 0x00002918
	 { 1809, 2800, -151, 0, 1543, 996, 178, 110, 75, 255 }, // 0x00002928
	 { 1851, 2800, -109, 0, 1543, -542, 178, 110, 75, 255 }, // 0x00002938
	 { 1871, 2800, -129, 0, 1031, -542, 45, 45, 45, 255 }, // 0x00002948
};

Vtx_t _HIDAN_room_8_vertices_00002958[16] = 
{
	 { 1860, 2800, 100, 0, -3373, 1897, 178, 110, 75, 255 }, // 0x00002958
	 { 1860, 2900, 100, 0, -3032, 1897, 45, 45, 45, 255 }, // 0x00002968
	 { 1860, 2900, -100, 0, -3032, 873, 178, 110, 75, 255 }, // 0x00002978
	 { 1860, 2800, -100, 0, -3373, 873, 45, 45, 45, 255 }, // 0x00002988
	 { 1660, 2800, 300, 0, -314, 763, 45, 45, 45, 255 }, // 0x00002998
	 { 1660, 2900, 300, 0, 28, 763, 45, 45, 45, 255 }, // 0x000029A8
	 { 1860, 2900, 100, 0, 28, -685, 45, 45, 45, 255 }, // 0x000029B8
	 { 1860, 2800, 100, 0, -314, -685, 178, 110, 75, 255 }, // 0x000029C8
	 { 1809, 2900, -151, 0, 0, 653, 178, 110, 75, 255 }, // 0x000029D8
	 { 1660, 2800, -300, 0, -341, -424, 45, 45, 45, 255 }, // 0x000029E8
	 { 1809, 2800, -151, 0, -341, 653, 45, 45, 45, 255 }, // 0x000029F8
	 { 1660, 2900, -300, 0, 0, -424, 45, 45, 45, 255 }, // 0x00002A08
	 { 1860, 2800, -100, 0, -341, 1024, 45, 45, 45, 255 }, // 0x00002A18
	 { 1860, 2900, -100, 0, 0, 1024, 178, 110, 75, 255 }, // 0x00002A28
	 { 1851, 2900, -109, 0, 0, 960, 178, 110, 75, 255 }, // 0x00002A38
	 { 1851, 2800, -109, 0, -341, 960, 45, 45, 45, 255 }, // 0x00002A48
};

Vtx_t _HIDAN_room_8_vertices_00002A58[5] = 
{
	 { 1700, 2800, -120, 0, -2421, 3558, 178, 110, 75, 255 }, // 0x00002A58
	 { 1780, 2800, 0, 0, 4820, 4282, 178, 110, 75, 255 }, // 0x00002A68
	 { 1860, 2800, 0, 0, 7716, 2834, 45, 45, 45, 255 }, // 0x00002A78
	 { 1860, 2800, -100, 0, 4096, 1024, 45, 45, 45, 255 }, // 0x00002A88
	 { 1752, 2800, -208, 0, -3708, 1024, 45, 45, 45, 255 }, // 0x00002A98
};

Vtx_t _HIDAN_room_8_vertices_00002AA8[8] = 
{
	 { 1860, 2900, 100, 0, -3032, 1897, 45, 45, 45, 255 }, // 0x00002AA8
	 { 1860, 4200, 100, 0, 1405, 1897, 45, 45, 45, 255 }, // 0x00002AB8
	 { 1860, 4200, -100, 0, 1405, 873, 45, 45, 45, 255 }, // 0x00002AC8
	 { 1860, 2900, -100, 0, -3032, 873, 178, 110, 75, 255 }, // 0x00002AD8
	 { 1660, 2900, 300, 0, 28, 763, 45, 45, 45, 255 }, // 0x00002AE8
	 { 1660, 4200, 300, 0, 4465, 763, 45, 45, 45, 255 }, // 0x00002AF8
	 { 1860, 4200, 100, 0, 4465, -685, 45, 45, 45, 255 }, // 0x00002B08
	 { 1860, 2900, 100, 0, 28, -685, 45, 45, 45, 255 }, // 0x00002B18
};

Vtx_t _HIDAN_room_8_vertices_00002B28[32] = 
{
	 { 1230, 2800, 90, 0, 512, -512, 45, 45, 45, 255 }, // 0x00002B28
	 { 1260, 2800, 90, 0, 1024, -512, 178, 110, 75, 255 }, // 0x00002B38
	 { 1260, 2800, 30, 0, 1024, 1024, 178, 110, 75, 255 }, // 0x00002B48
	 { 1230, 2800, 30, 0, 512, 1024, 45, 45, 45, 255 }, // 0x00002B58
	 { 1230, 2800, 30, 0, 512, 1024, 45, 45, 45, 255 }, // 0x00002B68
	 { 1260, 2800, 30, 0, 1024, 1017, 178, 110, 75, 255 }, // 0x00002B78
	 { 1260, 2900, 30, 0, 1041, -1577, 45, 45, 45, 255 }, // 0x00002B88
	 { 1230, 2900, 30, 0, 529, -1571, 45, 45, 45, 255 }, // 0x00002B98
	 { 1230, 2900, 90, 0, 529, -1571, 45, 45, 45, 255 }, // 0x00002BA8
	 { 1260, 2900, 90, 0, 1041, -1577, 45, 45, 45, 255 }, // 0x00002BB8
	 { 1260, 2800, 90, 0, 1024, 1017, 178, 110, 75, 255 }, // 0x00002BC8
	 { 1230, 2800, 90, 0, 512, 1024, 45, 45, 45, 255 }, // 0x00002BD8
	 { 1610, 2900, 330, 0, 512, -1521, 45, 45, 45, 255 }, // 0x00002BE8
	 { 1610, 2900, 300, 0, 0, -1521, 45, 45, 45, 255 }, // 0x00002BF8
	 { 1610, 2800, 300, 0, 0, 1024, 178, 110, 75, 255 }, // 0x00002C08
	 { 1610, 2800, 330, 0, 512, 1024, 45, 45, 45, 255 }, // 0x00002C18
	 { 1610, 2800, 330, 0, 512, 1024, 45, 45, 45, 255 }, // 0x00002C28
	 { 1610, 2800, 300, 0, 0, 1024, 178, 110, 75, 255 }, // 0x00002C38
	 { 1550, 2800, 300, 0, 0, -510, 178, 110, 75, 255 }, // 0x00002C48
	 { 1550, 2800, 330, 0, 512, -510, 45, 45, 45, 255 }, // 0x00002C58
	 { 1550, 2800, 330, 0, 512, 1024, 45, 45, 45, 255 }, // 0x00002C68
	 { 1550, 2800, 300, 0, 0, 1024, 178, 110, 75, 255 }, // 0x00002C78
	 { 1550, 2900, 300, 0, 0, -1521, 45, 45, 45, 255 }, // 0x00002C88
	 { 1550, 2900, 330, 0, 512, -1521, 45, 45, 45, 255 }, // 0x00002C98
	 { 1580, 2800, -330, 0, 512, 1024, 45, 45, 45, 255 }, // 0x00002CA8
	 { 1580, 2800, -300, 0, 0, 1024, 178, 110, 75, 255 }, // 0x00002CB8
	 { 1580, 2900, -300, 0, 0, -1543, 45, 45, 45, 255 }, // 0x00002CC8
	 { 1580, 2900, -330, 0, 512, -1543, 45, 45, 45, 255 }, // 0x00002CD8
	 { 1520, 2900, -330, 0, 512, -1543, 45, 45, 45, 255 }, // 0x00002CE8
	 { 1520, 2900, -300, 0, 0, -1543, 45, 45, 45, 255 }, // 0x00002CF8
	 { 1520, 2800, -300, 0, 0, 1024, 178, 110, 75, 255 }, // 0x00002D08
	 { 1520, 2800, -330, 0, 512, 1024, 45, 45, 45, 255 }, // 0x00002D18
};

Vtx_t _HIDAN_room_8_vertices_00002D28[4] = 
{
	 { 1520, 2800, -330, 0, 512, -465, 45, 45, 45, 255 }, // 0x00002D28
	 { 1520, 2800, -300, 0, 1024, -465, 178, 110, 75, 255 }, // 0x00002D38
	 { 1580, 2800, -300, 0, 1024, 1024, 178, 110, 75, 255 }, // 0x00002D48
	 { 1580, 2800, -330, 0, 512, 1024, 45, 45, 45, 255 }, // 0x00002D58
};

Vtx_t _HIDAN_room_8_vertices_00002D68[32] = 
{
	 { 1660, 2600, 300, 0, -996, 763, 45, 45, 45, 255 }, // 0x00002D68
	 { 1660, 2800, 300, 0, -314, 763, 45, 45, 45, 255 }, // 0x00002D78
	 { 1860, 2800, 100, 0, -314, -685, 178, 110, 75, 255 }, // 0x00002D88
	 { 1860, 2600, 100, 0, -996, -685, 45, 45, 45, 255 }, // 0x00002D98
	 { 1260, 2800, 100, 0, -4387, 129, 45, 45, 45, 255 }, // 0x00002DA8
	 { 1260, 2900, 100, 0, -4046, 129, 45, 45, 45, 255 }, // 0x00002DB8
	 { 1460, 2900, 300, 0, -4046, -1320, 178, 110, 75, 255 }, // 0x00002DC8
	 { 1460, 2800, 300, 0, -4387, -1320, 45, 45, 45, 255 }, // 0x00002DD8
	 { 1260, 2600, 100, 0, -5070, 129, 45, 45, 45, 255 }, // 0x00002DE8
	 { 1460, 2600, 300, 0, -5070, -1320, 45, 45, 45, 255 }, // 0x00002DF8
	 { 1460, 2800, -300, 0, 1747, 495, 45, 45, 45, 255 }, // 0x00002E08
	 { 1260, 2900, -100, 0, 2088, -953, 178, 110, 75, 255 }, // 0x00002E18
	 { 1260, 2800, -100, 0, 1747, -953, 45, 45, 45, 255 }, // 0x00002E28
	 { 1460, 2900, -300, 0, 2088, 495, 45, 45, 45, 255 }, // 0x00002E38
	 { 1460, 2600, -300, 0, 1064, 495, 45, 45, 45, 255 }, // 0x00002E48
	 { 1260, 2600, -100, 0, 1064, -953, 45, 45, 45, 255 }, // 0x00002E58
	 { 1660, 2600, -300, 0, -2048, 1024, 45, 45, 45, 255 }, // 0x00002E68
	 { 1660, 2800, -300, 0, 0, 1024, 45, 45, 45, 255 }, // 0x00002E78
	 { 1460, 2800, -300, 0, 0, 2048, 45, 45, 45, 255 }, // 0x00002E88
	 { 1460, 2600, -300, 0, -2048, 2048, 45, 45, 45, 255 }, // 0x00002E98
	 { 1860, 2600, -100, 0, -1024, 1024, 45, 45, 45, 255 }, // 0x00002EA8
	 { 1660, 2800, -300, 0, -341, -424, 45, 45, 45, 255 }, // 0x00002EB8
	 { 1660, 2600, -300, 0, -1024, -424, 45, 45, 45, 255 }, // 0x00002EC8
	 { 1860, 2800, -100, 0, -341, 1024, 45, 45, 45, 255 }, // 0x00002ED8
	 { 1460, 2800, 300, 0, -2354, 742, 45, 45, 45, 255 }, // 0x00002EE8
	 { 1460, 2900, 300, 0, -2012, 742, 178, 110, 75, 255 }, // 0x00002EF8
	 { 1550, 2900, 300, 0, -2012, 281, 45, 45, 45, 255 }, // 0x00002F08
	 { 1550, 2800, 300, 0, -2354, 281, 45, 45, 45, 255 }, // 0x00002F18
	 { 1610, 2900, 300, 0, -2012, -26, 45, 45, 45, 255 }, // 0x00002F28
	 { 1660, 2900, 300, 0, -2012, -282, 45, 45, 45, 255 }, // 0x00002F38
	 { 1660, 2800, 300, 0, -2354, -282, 45, 45, 45, 255 }, // 0x00002F48
	 { 1610, 2800, 300, 0, -2354, -26, 45, 45, 45, 255 }, // 0x00002F58
};

Vtx_t _HIDAN_room_8_vertices_00002F68[26] = 
{
	 { 1260, 2900, -100, 0, 2093, 98, 178, 110, 75, 255 }, // 0x00002F68
	 { 1260, 2900, 30, 0, 2093, -567, 45, 45, 45, 255 }, // 0x00002F78
	 { 1260, 2800, 30, 0, 1752, -567, 178, 110, 75, 255 }, // 0x00002F88
	 { 1260, 2800, -100, 0, 1752, 98, 45, 45, 45, 255 }, // 0x00002F98
	 { 1260, 2900, 90, 0, 2093, -874, 45, 45, 45, 255 }, // 0x00002FA8
	 { 1260, 2900, 100, 0, 2093, -926, 45, 45, 45, 255 }, // 0x00002FB8
	 { 1260, 2800, 100, 0, 1752, -926, 45, 45, 45, 255 }, // 0x00002FC8
	 { 1260, 2800, 90, 0, 1752, -874, 178, 110, 75, 255 }, // 0x00002FD8
	 { 1520, 2900, -300, 0, -2048, -114, 45, 45, 45, 255 }, // 0x00002FE8
	 { 1460, 2900, -300, 0, -2047, -421, 45, 45, 45, 255 }, // 0x00002FF8
	 { 1460, 2800, -300, 0, -2388, -421, 45, 45, 45, 255 }, // 0x00003008
	 { 1520, 2800, -300, 0, -2389, -114, 178, 110, 75, 255 }, // 0x00003018
	 { 1660, 2900, -300, 0, -2049, 603, 45, 45, 45, 255 }, // 0x00003028
	 { 1580, 2900, -300, 0, -2048, 193, 45, 45, 45, 255 }, // 0x00003038
	 { 1580, 2800, -300, 0, -2389, 193, 178, 110, 75, 255 }, // 0x00003048
	 { 1660, 2800, -300, 0, -2390, 603, 45, 45, 45, 255 }, // 0x00003058
	 { 1860, 2600, -100, 0, -4056, 873, 45, 45, 45, 255 }, // 0x00003068
	 { 1860, 2600, 100, 0, -4056, 1897, 45, 45, 45, 255 }, // 0x00003078
	 { 1860, 2800, 100, 0, -3373, 1897, 178, 110, 75, 255 }, // 0x00003088
	 { 1860, 2800, 0, 0, -3373, 1385, 45, 45, 45, 255 }, // 0x00003098
	 { 1260, 2600, -100, 0, 3999, -1024, 45, 45, 45, 255 }, // 0x000030A8
	 { 1260, 2800, -100, 0, 3999, 1024, 45, 45, 45, 255 }, // 0x000030B8
	 { 1340, 2800, -60, 0, 1770, 1020, 45, 45, 45, 255 }, // 0x000030C8
	 { 1318, 2800, 158, 0, -1024, 1024, 45, 45, 45, 255 }, // 0x000030D8
	 { 1318, 2600, 158, 0, -1024, -1536, 45, 45, 45, 255 }, // 0x000030E8
	 { 1380, 2800, 100, 0, 1030, 1024, 178, 110, 75, 255 }, // 0x000030F8
};

Vtx_t _HIDAN_room_8_vertices_00003108[6] = 
{
	 { 1380, 2800, 0, 0, 0, 1024, 178, 110, 75, 255 }, // 0x00003108
	 { 1340, 2800, -60, 0, -3072, 2048, 45, 45, 45, 255 }, // 0x00003118
	 { 1260, 2800, -100, 0, -5120, 4096, 45, 45, 45, 255 }, // 0x00003128
	 { 1260, 2800, 100, 0, 5120, 4096, 45, 45, 45, 255 }, // 0x00003138
	 { 1318, 2800, 158, 0, 8111, 2600, 45, 45, 45, 255 }, // 0x00003148
	 { 1380, 2800, 100, 0, 5120, 1024, 178, 110, 75, 255 }, // 0x00003158
};

Vtx_t _HIDAN_room_8_vertices_00003168[6] = 
{
	 { 1520, 2800, 180, 0, 3435, 1024, 45, 45, 45, 255 }, // 0x00003168
	 { 1460, 2600, 300, 0, 0, -1536, 45, 45, 45, 255 }, // 0x00003178
	 { 1460, 2800, 300, 0, 0, 1024, 45, 45, 45, 255 }, // 0x00003188
	 { 1660, 2600, 300, 0, -6656, -1536, 45, 45, 45, 255 }, // 0x00003198
	 { 1620, 2800, 180, 0, -3584, 1024, 178, 110, 75, 255 }, // 0x000031A8
	 { 1660, 2800, 300, 0, -6656, 1024, 45, 45, 45, 255 }, // 0x000031B8
};

Vtx_t _HIDAN_room_8_vertices_000031C8[22] = 
{
	 { 1620, 2800, 180, 0, -2048, -11264, 178, 110, 75, 255 }, // 0x000031C8
	 { 1520, 2800, 180, 0, 3072, -11264, 45, 45, 45, 255 }, // 0x000031D8
	 { 1460, 2800, 300, 0, 6144, -14336, 45, 45, 45, 255 }, // 0x000031E8
	 { 1660, 2800, 300, 0, -4096, -14336, 45, 45, 45, 255 }, // 0x000031F8
	 { 1560, 2800, 0, 0, 0, -3584, 178, 110, 75, 255 }, // 0x00003208
	 { 1380, 2800, 0, 0, 0, 1024, 178, 110, 75, 255 }, // 0x00003218
	 { 1560, 2800, 40, 0, 2048, -3584, 45, 45, 45, 255 }, // 0x00003228
	 { 1380, 2800, 40, 0, 2048, 1024, 178, 110, 75, 255 }, // 0x00003238
	 { 1540, 2800, -120, 0, 2048, -3584, 178, 110, 75, 255 }, // 0x00003248
	 { 1540, 2800, -160, 0, 2048, -2560, 178, 110, 75, 255 }, // 0x00003258
	 { 1500, 2800, -160, 0, 4096, -2560, 178, 110, 75, 255 }, // 0x00003268
	 { 1500, 2800, -120, 0, 4096, -3584, 45, 45, 45, 255 }, // 0x00003278
	 { 1600, 2800, 0, 0, -1024, -6656, 178, 110, 75, 255 }, // 0x00003288
	 { 1560, 2800, 0, 0, 1024, -6656, 178, 110, 75, 255 }, // 0x00003298
	 { 1560, 2800, 40, 0, 1024, -7680, 45, 45, 45, 255 }, // 0x000032A8
	 { 1600, 2800, 40, 0, -1024, -7680, 45, 45, 45, 255 }, // 0x000032B8
	 { 1570, 2800, 130, 0, 512, -9984, 178, 110, 75, 255 }, // 0x000032C8
	 { 1560, 2800, 80, 0, 1024, -8704, 178, 110, 75, 255 }, // 0x000032D8
	 { 1580, 2800, -160, 0, 0, -2560, 178, 110, 75, 255 }, // 0x000032E8
	 { 1660, 2800, -220, 0, -4096, -1024, 45, 45, 45, 255 }, // 0x000032F8
	 { 1660, 2800, -300, 0, -4096, 1024, 45, 45, 45, 255 }, // 0x00003308
	 { 1460, 2800, -300, 0, 6144, 1024, 45, 45, 45, 255 }, // 0x00003318
};

Vtx_t _HIDAN_room_8_vertices_00003328[32] = 
{
	 { 1260, 2900, 100, 0, -4046, 129, 45, 45, 45, 255 }, // 0x00003328
	 { 1260, 4200, 100, 0, 392, 129, 45, 45, 45, 255 }, // 0x00003338
	 { 1460, 4200, 300, 0, 392, -1320, 45, 45, 45, 255 }, // 0x00003348
	 { 1460, 2900, 300, 0, -4046, -1320, 178, 110, 75, 255 }, // 0x00003358
	 { 1460, 2900, -300, 0, 2088, 495, 45, 45, 45, 255 }, // 0x00003368
	 { 1460, 4200, -300, 0, 6526, 495, 45, 45, 45, 255 }, // 0x00003378
	 { 1260, 4200, -100, 0, 6526, -953, 45, 45, 45, 255 }, // 0x00003388
	 { 1260, 2900, -100, 0, 2088, -953, 178, 110, 75, 255 }, // 0x00003398
	 { 1660, 2900, -300, 0, -2049, 603, 45, 45, 45, 255 }, // 0x000033A8
	 { 1660, 4200, -300, 0, 2383, 603, 45, 45, 45, 255 }, // 0x000033B8
	 { 1460, 4200, -300, 0, 2384, -421, 45, 45, 45, 255 }, // 0x000033C8
	 { 1460, 2900, -300, 0, -2047, -421, 45, 45, 45, 255 }, // 0x000033D8
	 { 1460, 2600, -300, 0, 1064, 495, 45, 45, 45, 255 }, // 0x000033E8
	 { 1260, 2600, -100, 0, 1064, -953, 45, 45, 45, 255 }, // 0x000033F8
	 { 1260, 1000, -100, 0, -3714, -953, 178, 110, 75, 255 }, // 0x00003408
	 { 1460, 1000, -300, 0, -3714, 495, 45, 45, 45, 255 }, // 0x00003418
	 { 1260, 1000, -100, 0, -3709, 98, 178, 110, 75, 255 }, // 0x00003428
	 { 1260, 2600, -100, 0, 1069, 98, 45, 45, 45, 255 }, // 0x00003438
	 { 1260, 2600, 100, 0, 1069, -926, 45, 45, 45, 255 }, // 0x00003448
	 { 1260, 1000, 100, 0, -3709, -926, 45, 45, 45, 255 }, // 0x00003458
	 { 1260, 2600, 100, 0, -5070, 129, 45, 45, 45, 255 }, // 0x00003468
	 { 1460, 2600, 300, 0, -5070, -1320, 45, 45, 45, 255 }, // 0x00003478
	 { 1460, 1000, 300, 0, -9848, -1320, 178, 110, 75, 255 }, // 0x00003488
	 { 1260, 1000, 100, 0, -9848, 129, 45, 45, 45, 255 }, // 0x00003498
	 { 1460, 1000, 300, 0, -7815, 742, 178, 110, 75, 255 }, // 0x000034A8
	 { 1460, 2600, 300, 0, -3036, 742, 45, 45, 45, 255 }, // 0x000034B8
	 { 1660, 2600, 300, 0, -3036, -282, 45, 45, 45, 255 }, // 0x000034C8
	 { 1660, 1000, 300, 0, -7815, -282, 45, 45, 45, 255 }, // 0x000034D8
	 { 1660, 2600, 300, 0, -996, 763, 45, 45, 45, 255 }, // 0x000034E8
	 { 1860, 2600, 100, 0, -996, -685, 45, 45, 45, 255 }, // 0x000034F8
	 { 1860, 1000, 100, 0, -5775, -685, 178, 110, 75, 255 }, // 0x00003508
	 { 1660, 1000, 300, 0, -5775, 763, 45, 45, 45, 255 }, // 0x00003518
};

Vtx_t _HIDAN_room_8_vertices_00003528[12] = 
{
	 { 1860, 1000, 100, 0, -8835, 1897, 178, 110, 75, 255 }, // 0x00003528
	 { 1860, 2600, 100, 0, -4056, 1897, 45, 45, 45, 255 }, // 0x00003538
	 { 1860, 2600, -100, 0, -4056, 873, 45, 45, 45, 255 }, // 0x00003548
	 { 1860, 1000, -100, 0, -8835, 873, 45, 45, 45, 255 }, // 0x00003558
	 { 1660, 1000, -300, 0, -7843, 603, 178, 110, 75, 255 }, // 0x00003568
	 { 1660, 2600, -300, 0, -3071, 603, 45, 45, 45, 255 }, // 0x00003578
	 { 1460, 2600, -300, 0, -3070, -421, 45, 45, 45, 255 }, // 0x00003588
	 { 1460, 1000, -300, 0, -7842, -421, 45, 45, 45, 255 }, // 0x00003598
	 { 1860, 2600, -100, 0, -1024, 1024, 45, 45, 45, 255 }, // 0x000035A8
	 { 1660, 2600, -300, 0, -1024, -424, 45, 45, 45, 255 }, // 0x000035B8
	 { 1660, 1000, -300, 0, -5803, -424, 178, 110, 75, 255 }, // 0x000035C8
	 { 1860, 1000, -100, 0, -5803, 1024, 45, 45, 45, 255 }, // 0x000035D8
};

Vtx_t _HIDAN_room_8_vertices_000035E8[8] = 
{
	 { 1530, 1000, -422, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035E8
	 { 1981, 1000, -44, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035F8
	 { 1530, 4200, -422, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003608
	 { 1981, 4200, -44, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003618
	 { 1146, 1000, 36, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003628
	 { 1596, 1000, 414, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003638
	 { 1146, 4200, 36, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003648
	 { 1596, 4200, 414, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003658
};

Gfx _HIDAN_room_8_dlist_00003668[] =
{
	gsDPPipeSync(), // 0x00003668
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003670
	gsSPVertex(_HIDAN_room_8_vertices_000035E8, 8, 0), // 0x00003678
	gsSPCullDisplayList(0, 7), // 0x00003680
	gsDPPipeSync(), // 0x00003688
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003690
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003698
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000036A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x000036A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000036B0
	gsDPLoadSync(), // 0x000036B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000036C0
	gsDPPipeSync(), // 0x000036C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000036D0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000036D8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000036E0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000036E8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000036F0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000036F8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003700
	gsSPVertex(_HIDAN_room_8_vertices_00002758, 20, 0), // 0x00003708
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003710
	gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0), // 0x00003718
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00003720
	gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0), // 0x00003728
	gsSP2Triangles(12, 13, 10, 0, 12, 10, 11, 0), // 0x00003730
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x00003738
	gsSP2Triangles(16, 18, 19, 0, 16, 19, 17, 0), // 0x00003740
	gsDPPipeSync(), // 0x00003748
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003750
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018BD0), // 0x00003758
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003760
	gsDPLoadSync(), // 0x00003768
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00003770
	gsDPPipeSync(), // 0x00003778
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003780
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003788
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00003790
	gsDPTileSync(), // 0x00003798
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000037A0
	gsDPLoadSync(), // 0x000037A8
	gsDPLoadTLUTCmd(7, 15), // 0x000037B0
	gsDPPipeSync(), // 0x000037B8
	gsSPVertex(_HIDAN_room_8_vertices_00002898, 12, 0), // 0x000037C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000037C8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000037D0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000037D8
	gsDPPipeSync(), // 0x000037E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000037E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x000037F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000037F8
	gsDPLoadSync(), // 0x00003800
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003808
	gsDPPipeSync(), // 0x00003810
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003818
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003820
	gsSPVertex(_HIDAN_room_8_vertices_00002958, 16, 0), // 0x00003828
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003830
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003838
	gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0), // 0x00003840
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003848
	gsDPPipeSync(), // 0x00003850
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_00005AD8), // 0x00003858
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003860
	gsDPLoadSync(), // 0x00003868
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003870
	gsDPPipeSync(), // 0x00003878
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003880
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003888
	gsSPVertex(_HIDAN_room_8_vertices_00002A58, 5, 0), // 0x00003890
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003898
	gsSP1Triangle(4, 0, 3, 0), // 0x000038A0
	gsDPPipeSync(), // 0x000038A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x000038B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000038B8
	gsDPLoadSync(), // 0x000038C0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000038C8
	gsDPPipeSync(), // 0x000038D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000038D8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000038E0
	gsSPVertex(_HIDAN_room_8_vertices_00002AA8, 8, 0), // 0x000038E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000038F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000038F8
	gsDPPipeSync(), // 0x00003900
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003908
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018BD0), // 0x00003910
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003918
	gsDPLoadSync(), // 0x00003920
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00003928
	gsDPPipeSync(), // 0x00003930
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003938
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003940
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_000189B0), // 0x00003948
	gsDPTileSync(), // 0x00003950
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003958
	gsDPLoadSync(), // 0x00003960
	gsDPLoadTLUTCmd(7, 15), // 0x00003968
	gsDPPipeSync(), // 0x00003970
	gsSPVertex(_HIDAN_room_8_vertices_00002B28, 32, 0), // 0x00003978
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003980
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003988
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003990
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003998
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000039A0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000039A8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x000039B0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000039B8
	gsSPVertex(_HIDAN_room_8_vertices_00002D28, 4, 0), // 0x000039C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000039C8
	gsDPPipeSync(), // 0x000039D0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000039D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x000039E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000039E8
	gsDPLoadSync(), // 0x000039F0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000039F8
	gsDPPipeSync(), // 0x00003A00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003A08
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003A10
	gsSPVertex(_HIDAN_room_8_vertices_00002D68, 32, 0), // 0x00003A18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003A20
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003A28
	gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0), // 0x00003A30
	gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0), // 0x00003A38
	gsSP2Triangles(14, 10, 12, 0, 14, 12, 15, 0), // 0x00003A40
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003A48
	gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0), // 0x00003A50
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00003A58
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00003A60
	gsSPVertex(_HIDAN_room_8_vertices_00002F68, 26, 0), // 0x00003A68
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00003A70
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003A78
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003A80
	gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0), // 0x00003A88
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003A90
	gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0), // 0x00003A98
	gsDPPipeSync(), // 0x00003AA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_00005AD8), // 0x00003AA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003AB0
	gsDPLoadSync(), // 0x00003AB8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003AC0
	gsDPPipeSync(), // 0x00003AC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003AD0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003AD8
	gsSPVertex(_HIDAN_room_8_vertices_00003108, 6, 0), // 0x00003AE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003AE8
	gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0), // 0x00003AF0
	gsDPPipeSync(), // 0x00003AF8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00003B00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003B08
	gsDPLoadSync(), // 0x00003B10
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003B18
	gsDPPipeSync(), // 0x00003B20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003B28
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003B30
	gsSPVertex(_HIDAN_room_8_vertices_00003168, 6, 0), // 0x00003B38
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003B40
	gsDPPipeSync(), // 0x00003B48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_00005AD8), // 0x00003B50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003B58
	gsDPLoadSync(), // 0x00003B60
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003B68
	gsDPPipeSync(), // 0x00003B70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003B78
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003B80
	gsSPVertex(_HIDAN_room_8_vertices_000031C8, 22, 0), // 0x00003B88
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00003B90
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00003B98
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003BA0
	gsSP2Triangles(12, 8, 11, 0, 12, 11, 13, 0), // 0x00003BA8
	gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0), // 0x00003BB0
	gsSP2Triangles(0, 16, 1, 0, 15, 17, 16, 0), // 0x00003BB8
	gsSP2Triangles(0, 15, 16, 0, 15, 14, 17, 0), // 0x00003BC0
	gsSP2Triangles(10, 18, 19, 0, 10, 19, 20, 0), // 0x00003BC8
	gsSP1Triangle(21, 10, 20, 0), // 0x00003BD0
	gsDPPipeSync(), // 0x00003BD8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00003BE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003BE8
	gsDPLoadSync(), // 0x00003BF0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003BF8
	gsDPPipeSync(), // 0x00003C00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003C08
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003C10
	gsSPVertex(_HIDAN_room_8_vertices_00003328, 32, 0), // 0x00003C18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003C20
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003C28
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003C30
	gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0), // 0x00003C38
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003C40
	gsSP2Triangles(20, 21, 22, 0, 23, 20, 22, 0), // 0x00003C48
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00003C50
	gsSP2Triangles(28, 29, 30, 0, 31, 28, 30, 0), // 0x00003C58
	gsSPVertex(_HIDAN_room_8_vertices_00003528, 12, 0), // 0x00003C60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003C68
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003C70
	gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0), // 0x00003C78
	gsSPEndDisplayList(), // 0x00003C80
};

Vtx_t _HIDAN_room_8_vertices_00003C88[6] = 
{
	 { 1158, 200, 616, 0, 1084, 5402, 157, 157, 148, 255 }, // 0x00003C88
	 { 1310, 100, 346, 0, 955, 3648, 157, 157, 148, 255 }, // 0x00003C98
	 { 1017, 200, 476, 0, -23, 5185, 157, 157, 148, 255 }, // 0x00003CA8
	 { 1429, 100, 386, 0, 1645, 3462, 157, 157, 148, 255 }, // 0x00003CB8
	 { 1420, 100, 553, 0, 2126, 4279, 157, 157, 148, 255 }, // 0x00003CC8
	 { 1450, 100, 523, 0, 2174, 4043, 157, 157, 148, 255 }, // 0x00003CD8
};

Vtx_t _HIDAN_room_8_vertices_00003CE8[3] = 
{
	 { 1560, 0, 573, 0, 0, 1024, 255, 53, 53, 255 }, // 0x00003CE8
	 { 1429, 100, 386, 0, 1530, 4, 157, 157, 148, 255 }, // 0x00003CF8
	 { 1450, 100, 523, 0, 508, 145, 157, 157, 148, 255 }, // 0x00003D08
};

Vtx_t _HIDAN_room_8_vertices_00003D18[3] = 
{
	 { 1158, 200, 616, 0, 1084, 5402, 157, 157, 148, 255 }, // 0x00003D18
	 { 1420, 100, 553, 0, 2126, 4279, 157, 157, 148, 255 }, // 0x00003D28
	 { 1429, 100, 386, 0, 1645, 3462, 157, 157, 148, 255 }, // 0x00003D38
};

Vtx_t _HIDAN_room_8_vertices_00003D48[3] = 
{
	 { 1429, 100, 386, 0, 1530, 4, 157, 157, 148, 255 }, // 0x00003D48
	 { 1560, 0, 573, 0, 0, 1024, 255, 53, 53, 255 }, // 0x00003D58
	 { 1459, 0, 356, 0, 1701, 518, 255, 53, 53, 255 }, // 0x00003D68
};

Vtx_t _HIDAN_room_8_vertices_00003D78[4] = 
{
	 { 1120, 160, -70, 0, 0, -10432, 69, 49, 29, 255 }, // 0x00003D78
	 { 900, 140, -70, 0, 0, -4774, 107, 106, 96, 255 }, // 0x00003D88
	 { 900, 140, 70, 0, 2048, -4774, 107, 106, 96, 255 }, // 0x00003D98
	 { 1120, 160, 70, 0, 2048, -10432, 69, 49, 29, 255 }, // 0x00003DA8
};

Vtx_t _HIDAN_room_8_vertices_00003DB8[16] = 
{
	 { 1145, 160, -55, 0, -1074, 508, 107, 106, 96, 255 }, // 0x00003DB8
	 { 1028, 1000, -288, 0, -20984, 508, 107, 106, 96, 255 }, // 0x00003DC8
	 { 1018, 1000, -288, 0, -20916, 0, 53, 53, 48, 255 }, // 0x00003DD8
	 { 1135, 160, -55, 0, -1007, 0, 107, 106, 96, 255 }, // 0x00003DE8
	 { 1140, 160, -60, 0, -988, 487, 107, 106, 96, 255 }, // 0x00003DF8
	 { 1023, 1000, -293, 0, -20897, 487, 107, 106, 96, 255 }, // 0x00003E08
	 { 1023, 1000, -283, 0, -21054, 0, 53, 53, 48, 255 }, // 0x00003E18
	 { 1140, 160, -50, 0, -1145, 0, 107, 106, 96, 255 }, // 0x00003E28
	 { 1140, 160, 50, 0, -1145, 0, 107, 106, 96, 255 }, // 0x00003E38
	 { 1023, 1000, 283, 0, -21054, 0, 107, 106, 96, 255 }, // 0x00003E48
	 { 1023, 1000, 293, 0, -20897, 487, 53, 53, 48, 255 }, // 0x00003E58
	 { 1140, 160, 60, 0, -988, 487, 107, 106, 96, 255 }, // 0x00003E68
	 { 1135, 160, 55, 0, -1007, 0, 107, 106, 96, 255 }, // 0x00003E78
	 { 1018, 1000, 288, 0, -20916, 0, 107, 106, 96, 255 }, // 0x00003E88
	 { 1028, 1000, 288, 0, -20984, 508, 53, 53, 48, 255 }, // 0x00003E98
	 { 1145, 160, 55, 0, -1074, 508, 107, 106, 96, 255 }, // 0x00003EA8
};

Vtx_t _HIDAN_room_8_vertices_00003EB8[3] = 
{
	 { 1086, 0, -489, 0, 163, 1352, 255, 53, 53, 255 }, // 0x00003EB8
	 { 1209, 0, -64, 0, 3755, 1024, 255, 53, 53, 255 }, // 0x00003EC8
	 { 1146, 140, -489, 0, 138, 850, 157, 157, 148, 255 }, // 0x00003ED8
};

Vtx_t _HIDAN_room_8_vertices_00003EE8[7] = 
{
	 { 1796, 20, -11, 0, 2127, 425, 157, 157, 148, 255 }, // 0x00003EE8
	 { 1936, 20, 99, 0, 3135, 504, 157, 157, 148, 255 }, // 0x00003EF8
	 { 1926, 20, -211, 0, 2111, -929, 157, 157, 148, 255 }, // 0x00003F08
	 { 1616, 20, 49, 0, 1465, 1276, 157, 157, 148, 255 }, // 0x00003F18
	 { 1526, 20, -131, 0, 473, 709, 157, 157, 148, 255 }, // 0x00003F28
	 { 1406, 20, -41, 0, 189, 1512, 157, 157, 148, 255 }, // 0x00003F38
	 { 1466, 20, 139, 0, 1040, 2174, 157, 157, 148, 255 }, // 0x00003F48
};

Vtx_t _HIDAN_room_8_vertices_00003F58[7] = 
{
	 { 1329, 104, 367, 0, 597, -6912, 255, 53, 53, 255 }, // 0x00003F58
	 { 1312, 110, 355, 0, 0, -6912, 157, 157, 148, 255 }, // 0x00003F68
	 { 1458, 20, 103, 0, 0, 1024, 157, 157, 148, 255 }, // 0x00003F78
	 { 1465, 20, 131, 0, 597, 515, 255, 53, 53, 255 }, // 0x00003F88
	 { 1492, 20, 123, 0, 0, 1024, 157, 157, 148, 255 }, // 0x00003F98
	 { 1347, 110, 375, 0, 0, -6912, 157, 157, 148, 255 }, // 0x00003FA8
	 { 1465, 20, 131, 0, 597, 515, 255, 53, 53, 255 }, // 0x00003FB8
};

Vtx_t _HIDAN_room_8_vertices_00003FC8[4] = 
{
	 { 1860, 1000, -100, 0, 388, -7, 53, 53, 48, 255 }, // 0x00003FC8
	 { 1660, 1000, -300, 0, -51, -154, 53, 53, 48, 255 }, // 0x00003FD8
	 { 1850, 640, -103, 0, 118, 517, 80, 78, 72, 255 }, // 0x00003FE8
	 { 1808, 640, -246, 0, -196, 412, 107, 106, 96, 255 }, // 0x00003FF8
};

Vtx_t _HIDAN_room_8_vertices_00004008[14] = 
{
	 { 1800, 160, -70, 0, 0, -4745, 124, 90, 53, 255 }, // 0x00004008
	 { 1560, 130, -70, 0, 0, 1368, 69, 49, 29, 255 }, // 0x00004018
	 { 1560, 130, 70, 0, 2048, 1368, 69, 49, 29, 255 }, // 0x00004028
	 { 1800, 160, 70, 0, 2048, -4745, 124, 90, 53, 255 }, // 0x00004038
	 { 1804, 100, -70, 0, 2048, 2545, 255, 53, 53, 255 }, // 0x00004048
	 { 1800, 160, -70, 0, 2048, 875, 69, 49, 29, 255 }, // 0x00004058
	 { 1804, 100, 70, 0, 0, 2545, 69, 49, 29, 255 }, // 0x00004068
	 { 1800, 160, 70, 0, 0, 875, 69, 49, 29, 255 }, // 0x00004078
	 { 1560, 130, -70, 0, 0, -10916, 69, 49, 29, 255 }, // 0x00004088
	 { 1340, 160, -70, 0, 0, -5273, 69, 49, 29, 255 }, // 0x00004098
	 { 1340, 160, 70, 0, 2048, -5273, 69, 49, 29, 255 }, // 0x000040A8
	 { 1560, 130, 70, 0, 2048, -10916, 69, 49, 29, 255 }, // 0x000040B8
	 { 1120, 160, -70, 0, 0, 339, 69, 49, 29, 255 }, // 0x000040C8
	 { 1120, 160, 70, 0, 2048, 339, 69, 49, 29, 255 }, // 0x000040D8
};

Vtx_t _HIDAN_room_8_vertices_000040E8[32] = 
{
	 { 1785, 160, -55, 0, -1074, 508, 107, 106, 96, 255 }, // 0x000040E8
	 { 1668, 1000, -288, 0, -20984, 508, 107, 106, 96, 255 }, // 0x000040F8
	 { 1658, 1000, -288, 0, -20916, 0, 53, 53, 48, 255 }, // 0x00004108
	 { 1775, 160, -55, 0, -1007, 0, 107, 106, 96, 255 }, // 0x00004118
	 { 1780, 160, -60, 0, -988, 487, 107, 106, 96, 255 }, // 0x00004128
	 { 1663, 1000, -293, 0, -20897, 487, 107, 106, 96, 255 }, // 0x00004138
	 { 1663, 1000, -283, 0, -21054, 0, 53, 53, 48, 255 }, // 0x00004148
	 { 1780, 160, -50, 0, -1145, 0, 107, 106, 96, 255 }, // 0x00004158
	 { 1340, 160, -50, 0, -1145, 0, 107, 106, 96, 255 }, // 0x00004168
	 { 1457, 1000, -283, 0, -21054, 0, 107, 106, 96, 255 }, // 0x00004178
	 { 1457, 1000, -293, 0, -20897, 487, 53, 53, 48, 255 }, // 0x00004188
	 { 1340, 160, -60, 0, -988, 487, 107, 106, 96, 255 }, // 0x00004198
	 { 1345, 160, -55, 0, -1007, 0, 107, 106, 96, 255 }, // 0x000041A8
	 { 1462, 1000, -288, 0, -20916, 0, 107, 106, 96, 255 }, // 0x000041B8
	 { 1452, 1000, -288, 0, -20984, 508, 53, 53, 48, 255 }, // 0x000041C8
	 { 1335, 160, -55, 0, -1074, 508, 107, 106, 96, 255 }, // 0x000041D8
	 { 1335, 160, 55, 0, -1074, 508, 107, 106, 96, 255 }, // 0x000041E8
	 { 1452, 1000, 288, 0, -20984, 508, 107, 106, 96, 255 }, // 0x000041F8
	 { 1462, 1000, 288, 0, -20916, 0, 53, 53, 48, 255 }, // 0x00004208
	 { 1345, 160, 55, 0, -1007, 0, 107, 106, 96, 255 }, // 0x00004218
	 { 1340, 160, 60, 0, -988, 487, 107, 106, 96, 255 }, // 0x00004228
	 { 1457, 1000, 293, 0, -20897, 487, 107, 106, 96, 255 }, // 0x00004238
	 { 1457, 1000, 283, 0, -21054, 0, 53, 53, 48, 255 }, // 0x00004248
	 { 1340, 160, 50, 0, -1145, 0, 107, 106, 96, 255 }, // 0x00004258
	 { 1780, 160, 50, 0, -1145, 0, 107, 106, 96, 255 }, // 0x00004268
	 { 1663, 1000, 283, 0, -21054, 0, 107, 106, 96, 255 }, // 0x00004278
	 { 1663, 1000, 293, 0, -20897, 487, 53, 53, 48, 255 }, // 0x00004288
	 { 1780, 160, 60, 0, -988, 487, 107, 106, 96, 255 }, // 0x00004298
	 { 1775, 160, 55, 0, -1007, 0, 107, 106, 96, 255 }, // 0x000042A8
	 { 1658, 1000, 288, 0, -20916, 0, 107, 106, 96, 255 }, // 0x000042B8
	 { 1668, 1000, 288, 0, -20984, 508, 53, 53, 48, 255 }, // 0x000042C8
	 { 1785, 160, 55, 0, -1074, 508, 107, 106, 96, 255 }, // 0x000042D8
};

Vtx_t _HIDAN_room_8_vertices_000042E8[4] = 
{
	 { 1209, 0, -64, 0, -816, 2030, 255, 53, 53, 255 }, // 0x000042E8
	 { 1244, 0, -68, 0, -660, 1899, 255, 53, 53, 255 }, // 0x000042F8
	 { 1146, 140, -489, 0, -2451, 214, 157, 157, 148, 255 }, // 0x00004308
	 { 1216, 140, -489, 0, -2120, -6, 157, 157, 148, 255 }, // 0x00004318
};

Vtx_t _HIDAN_room_8_vertices_00004328[3] = 
{
	 { 1244, 0, -68, 0, -1454, -430, 255, 53, 53, 255 }, // 0x00004328
	 { 1366, 0, -489, 0, 146, 1170, 255, 53, 53, 255 }, // 0x00004338
	 { 1216, 140, -489, 0, 770, 514, 157, 157, 148, 255 }, // 0x00004348
};

Vtx_t _HIDAN_room_8_vertices_00004358[4] = 
{
	 { 1312, 110, 355, 0, 1536, -2944, 157, 157, 148, 255 }, // 0x00004358
	 { 1347, 110, 375, 0, 512, -2944, 157, 157, 148, 255 }, // 0x00004368
	 { 1492, 20, 123, 0, 512, 1024, 157, 157, 148, 255 }, // 0x00004378
	 { 1458, 20, 103, 0, 1536, 1024, 157, 157, 148, 255 }, // 0x00004388
};

Vtx_t _HIDAN_room_8_vertices_00004398[31] = 
{
	 { 1429, 100, 386, 0, 0, 455, 157, 157, 148, 255 }, // 0x00004398
	 { 1459, 0, 356, 0, 0, 1024, 255, 53, 53, 255 }, // 0x000043A8
	 { 1310, 0, 323, 0, 1057, 1024, 255, 53, 53, 255 }, // 0x000043B8
	 { 1310, 100, 346, 0, 1072, 455, 157, 157, 148, 255 }, // 0x000043C8
	 { 1310, 100, 346, 0, 2741, 439, 157, 157, 148, 255 }, // 0x000043D8
	 { 1310, 0, 323, 0, 2771, 927, 255, 53, 53, 255 }, // 0x000043E8
	 { 1017, 0, 476, 0, 64, 1022, 255, 53, 53, 255 }, // 0x000043F8
	 { 1017, 200, 476, 0, 0, 439, 157, 157, 148, 255 }, // 0x00004408
	 { 1366, 0, -49, 0, 700, 2389, 255, 53, 53, 255 }, // 0x00004418
	 { 1406, 20, -41, 0, 768, 2048, 157, 157, 148, 255 }, // 0x00004428
	 { 1526, 20, -131, 0, 0, 1024, 157, 157, 148, 255 }, // 0x00004438
	 { 1526, 0, -169, 0, -324, 1024, 255, 53, 53, 255 }, // 0x00004448
	 { 1446, 0, 191, 0, 2748, 1707, 255, 53, 53, 255 }, // 0x00004458
	 { 1466, 20, 139, 0, 2304, 1536, 157, 157, 148, 255 }, // 0x00004468
	 { 1666, 0, 51, 0, 1724, 0, 255, 53, 53, 255 }, // 0x00004478
	 { 1616, 20, 49, 0, 1536, 256, 157, 157, 148, 255 }, // 0x00004488
	 { 1526, 0, -169, 0, 17, 0, 255, 53, 53, 255 }, // 0x00004498
	 { 1526, 20, -131, 0, 256, 256, 157, 157, 148, 255 }, // 0x000044A8
	 { 1756, 0, -19, 0, 700, 2389, 255, 53, 53, 255 }, // 0x000044B8
	 { 1796, 20, -11, 0, 768, 2048, 157, 157, 148, 255 }, // 0x000044C8
	 { 1926, 20, -211, 0, 0, 1024, 157, 157, 148, 255 }, // 0x000044D8
	 { 1926, 0, -249, 0, -324, 1024, 255, 53, 53, 255 }, // 0x000044E8
	 { 1926, 0, 141, 0, 2748, 1707, 255, 53, 53, 255 }, // 0x000044F8
	 { 1936, 20, 99, 0, 2304, 1536, 157, 157, 148, 255 }, // 0x00004508
	 { 1860, 1000, 100, 0, 827, 139, 80, 78, 72, 255 }, // 0x00004518
	 { 1860, 1000, -100, 0, 388, -7, 53, 53, 48, 255 }, // 0x00004528
	 { 1850, 640, -103, 0, 118, 517, 80, 78, 72, 255 }, // 0x00004538
	 { 2086, 0, -49, 0, 17, 0, 255, 53, 53, 255 }, // 0x00004548
	 { 1936, 20, 99, 0, 1536, 256, 157, 157, 148, 255 }, // 0x00004558
	 { 1926, 0, 141, 0, 1724, 0, 255, 53, 53, 255 }, // 0x00004568
	 { 2056, 20, -61, 0, 256, 256, 157, 157, 148, 255 }, // 0x00004578
};

Vtx_t _HIDAN_room_8_vertices_00004588[3] = 
{
	 { 1936, 20, 99, 0, 3135, 504, 157, 157, 148, 255 }, // 0x00004588
	 { 2056, 20, -61, 0, 3198, -630, 157, 157, 148, 255 }, // 0x00004598
	 { 1926, 20, -211, 0, 2111, -929, 157, 157, 148, 255 }, // 0x000045A8
};

Vtx_t _HIDAN_room_8_vertices_000045B8[3] = 
{
	 { 1998, 1000, 666, 0, 2069, 553, 53, 53, 48, 255 }, // 0x000045B8
	 { 1860, 1000, 100, 0, 827, 139, 80, 78, 72, 255 }, // 0x000045C8
	 { 1850, 640, -103, 0, 118, 517, 80, 78, 72, 255 }, // 0x000045D8
};

Vtx_t _HIDAN_room_8_vertices_000045E8[8] = 
{
	 { 1960, 92, 70, 0, 2048, -10317, 69, 49, 29, 255 }, // 0x000045E8
	 { 1960, 92, -70, 0, 0, -10317, 107, 76, 45, 255 }, // 0x000045F8
	 { 1960, 160, -70, 0, 0, -8651, 69, 49, 29, 255 }, // 0x00004608
	 { 1960, 160, 70, 0, 2048, -8651, 69, 49, 29, 255 }, // 0x00004618
	 { 1960, 160, 70, 0, 2048, 1371, 69, 49, 29, 255 }, // 0x00004628
	 { 2200, 140, 70, 0, 2048, -4442, 107, 106, 96, 255 }, // 0x00004638
	 { 2200, 140, -70, 0, 0, -4442, 107, 106, 96, 255 }, // 0x00004648
	 { 1960, 160, -70, 0, 0, 1371, 69, 49, 29, 255 }, // 0x00004658
};

Vtx_t _HIDAN_room_8_vertices_00004668[8] = 
{
	 { 1975, 160, 55, 0, -1074, 508, 107, 106, 96, 255 }, // 0x00004668
	 { 2092, 1000, 288, 0, -20984, 508, 107, 106, 96, 255 }, // 0x00004678
	 { 2102, 1000, 288, 0, -20916, 0, 53, 53, 48, 255 }, // 0x00004688
	 { 1985, 160, 55, 0, -1007, 0, 107, 106, 96, 255 }, // 0x00004698
	 { 1980, 160, 60, 0, -988, 487, 107, 106, 96, 255 }, // 0x000046A8
	 { 2097, 1000, 293, 0, -20897, 487, 107, 106, 96, 255 }, // 0x000046B8
	 { 2097, 1000, 283, 0, -21054, 0, 53, 53, 48, 255 }, // 0x000046C8
	 { 1980, 160, 50, 0, -1145, 0, 107, 106, 96, 255 }, // 0x000046D8
};

Vtx_t _HIDAN_room_8_vertices_000046E8[4] = 
{
	 { 2242, 127, -239, 0, 512, 1024, 157, 157, 148, 255 }, // 0x000046E8
	 { 2222, 127, -273, 0, 1536, 1024, 157, 157, 148, 255 }, // 0x000046F8
	 { 1972, 20, -128, 0, 1536, -3922, 157, 157, 148, 255 }, // 0x00004708
	 { 1992, 20, -94, 0, 512, -3922, 157, 157, 148, 255 }, // 0x00004718
};

Vtx_t _HIDAN_room_8_vertices_00004728[4] = 
{
	 { 1926, 0, -249, 0, -324, 1024, 255, 53, 53, 255 }, // 0x00004728
	 { 1926, 20, -211, 0, 0, 1024, 157, 157, 148, 255 }, // 0x00004738
	 { 2056, 20, -61, 0, 256, 256, 157, 157, 148, 255 }, // 0x00004748
	 { 2086, 0, -49, 0, 17, 0, 255, 53, 53, 255 }, // 0x00004758
};

Vtx_t _HIDAN_room_8_vertices_00004768[8] = 
{
	 { 986, 0, -556, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004768
	 { 2271, 0, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004778
	 { 986, 1000, -556, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004788
	 { 2271, 1000, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004798
	 { 791, 0, 551, 0, 0, 0, 0, 0, 0, 0 }, // 0x000047A8
	 { 2075, 0, 778, 0, 0, 0, 0, 0, 0, 0 }, // 0x000047B8
	 { 791, 1000, 551, 0, 0, 0, 0, 0, 0, 0 }, // 0x000047C8
	 { 2075, 1000, 778, 0, 0, 0, 0, 0, 0, 0 }, // 0x000047D8
};

Gfx _HIDAN_room_8_dlist_000047E8[] =
{
	gsDPPipeSync(), // 0x000047E8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000047F0
	gsSPVertex(_HIDAN_room_8_vertices_00004768, 8, 0), // 0x000047F8
	gsSPCullDisplayList(0, 7), // 0x00004800
	gsDPPipeSync(), // 0x00004808
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004810
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004818
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004820
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000052D8), // 0x00004828
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004830
	gsDPLoadSync(), // 0x00004838
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004840
	gsDPPipeSync(), // 0x00004848
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004850
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004858
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004860
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004868
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004870
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004878
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004880
	gsSPVertex(_HIDAN_room_8_vertices_00003C88, 6, 0), // 0x00004888
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004890
	gsSP1Triangle(0, 3, 1, 0), // 0x00004898
	gsDPPipeSync(), // 0x000048A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x000048A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000048B0
	gsDPLoadSync(), // 0x000048B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000048C0
	gsDPPipeSync(), // 0x000048C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000048D0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000048D8
	gsSPVertex(_HIDAN_room_8_vertices_00003CE8, 3, 0), // 0x000048E0
	gsSP1Triangle(0, 1, 2, 0), // 0x000048E8
	gsDPPipeSync(), // 0x000048F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000052D8), // 0x000048F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004900
	gsDPLoadSync(), // 0x00004908
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004910
	gsDPPipeSync(), // 0x00004918
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004920
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004928
	gsSPVertex(_HIDAN_room_8_vertices_00003D18, 3, 0), // 0x00004930
	gsSP1Triangle(0, 1, 2, 0), // 0x00004938
	gsDPPipeSync(), // 0x00004940
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00004948
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004950
	gsDPLoadSync(), // 0x00004958
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004960
	gsDPPipeSync(), // 0x00004968
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004970
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004978
	gsSPVertex(_HIDAN_room_8_vertices_00003D48, 3, 0), // 0x00004980
	gsSP1Triangle(0, 1, 2, 0), // 0x00004988
	gsDPPipeSync(), // 0x00004990
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_00006AD8), // 0x00004998
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000049A0
	gsDPLoadSync(), // 0x000049A8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000049B0
	gsDPPipeSync(), // 0x000049B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000049C0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000049C8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000049D0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000049D8
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000049E0
	gsSPVertex(_HIDAN_room_8_vertices_00003D78, 4, 0), // 0x000049E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000049F0
	gsDPPipeSync(), // 0x000049F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000050D8), // 0x00004A00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00004A08
	gsDPLoadSync(), // 0x00004A10
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00004A18
	gsDPPipeSync(), // 0x00004A20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x00004A28
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00004A30
	gsSPVertex(_HIDAN_room_8_vertices_00003DB8, 16, 0), // 0x00004A38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004A40
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004A48
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004A50
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00004A58
	gsDPPipeSync(), // 0x00004A60
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00004A68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004A70
	gsDPLoadSync(), // 0x00004A78
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004A80
	gsDPPipeSync(), // 0x00004A88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004A90
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004A98
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004AA0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004AA8
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00004AB0
	gsSPVertex(_HIDAN_room_8_vertices_00003EB8, 3, 0), // 0x00004AB8
	gsSP1Triangle(0, 1, 2, 0), // 0x00004AC0
	gsDPPipeSync(), // 0x00004AC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000052D8), // 0x00004AD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004AD8
	gsDPLoadSync(), // 0x00004AE0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004AE8
	gsDPPipeSync(), // 0x00004AF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004AF8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004B00
	gsSPVertex(_HIDAN_room_8_vertices_00003EE8, 7, 0), // 0x00004B08
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004B10
	gsSP1Triangle(6, 3, 5, 0), // 0x00004B18
	gsDPPipeSync(), // 0x00004B20
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_00007AD8), // 0x00004B28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00004B30
	gsDPLoadSync(), // 0x00004B38
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004B40
	gsDPPipeSync(), // 0x00004B48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00004B50
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004B58
	gsSPVertex(_HIDAN_room_8_vertices_00003F58, 7, 0), // 0x00004B60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004B68
	gsSP2Triangles(4, 5, 0, 0, 4, 0, 6, 0), // 0x00004B70
	gsDPPipeSync(), // 0x00004B78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00004B80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004B88
	gsDPLoadSync(), // 0x00004B90
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004B98
	gsDPPipeSync(), // 0x00004BA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004BA8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004BB0
	gsSPVertex(_HIDAN_room_8_vertices_00003FC8, 4, 0), // 0x00004BB8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004BC0
	gsDPPipeSync(), // 0x00004BC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_00006AD8), // 0x00004BD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004BD8
	gsDPLoadSync(), // 0x00004BE0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004BE8
	gsDPPipeSync(), // 0x00004BF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004BF8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004C00
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004C08
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004C10
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00004C18
	gsSPVertex(_HIDAN_room_8_vertices_00004008, 14, 0), // 0x00004C20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004C28
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00004C30
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004C38
	gsSP2Triangles(9, 12, 13, 0, 9, 13, 10, 0), // 0x00004C40
	gsDPPipeSync(), // 0x00004C48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000050D8), // 0x00004C50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00004C58
	gsDPLoadSync(), // 0x00004C60
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00004C68
	gsDPPipeSync(), // 0x00004C70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x00004C78
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00004C80
	gsSPVertex(_HIDAN_room_8_vertices_000040E8, 32, 0), // 0x00004C88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004C90
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004C98
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004CA0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00004CA8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00004CB0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00004CB8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00004CC0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00004CC8
	gsDPPipeSync(), // 0x00004CD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000052D8), // 0x00004CD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004CE0
	gsDPLoadSync(), // 0x00004CE8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004CF0
	gsDPPipeSync(), // 0x00004CF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004D00
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004D08
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004D10
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004D18
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00004D20
	gsSPVertex(_HIDAN_room_8_vertices_000042E8, 4, 0), // 0x00004D28
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004D30
	gsDPPipeSync(), // 0x00004D38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00004D40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004D48
	gsDPLoadSync(), // 0x00004D50
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004D58
	gsDPPipeSync(), // 0x00004D60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004D68
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004D70
	gsSPVertex(_HIDAN_room_8_vertices_00004328, 3, 0), // 0x00004D78
	gsSP1Triangle(0, 1, 2, 0), // 0x00004D80
	gsDPPipeSync(), // 0x00004D88
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_00007AD8), // 0x00004D90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00004D98
	gsDPLoadSync(), // 0x00004DA0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004DA8
	gsDPPipeSync(), // 0x00004DB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00004DB8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004DC0
	gsSPVertex(_HIDAN_room_8_vertices_00004358, 4, 0), // 0x00004DC8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004DD0
	gsDPPipeSync(), // 0x00004DD8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00004DE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004DE8
	gsDPLoadSync(), // 0x00004DF0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004DF8
	gsDPPipeSync(), // 0x00004E00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004E08
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004E10
	gsSPVertex(_HIDAN_room_8_vertices_00004398, 31, 0), // 0x00004E18
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00004E20
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004E28
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004E30
	gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0), // 0x00004E38
	gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0), // 0x00004E40
	gsSP2Triangles(16, 17, 15, 0, 16, 15, 14, 0), // 0x00004E48
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x00004E50
	gsSP2Triangles(22, 23, 19, 0, 22, 19, 18, 0), // 0x00004E58
	gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0), // 0x00004E60
	gsSP1Triangle(27, 30, 28, 0), // 0x00004E68
	gsDPPipeSync(), // 0x00004E70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000052D8), // 0x00004E78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004E80
	gsDPLoadSync(), // 0x00004E88
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004E90
	gsDPPipeSync(), // 0x00004E98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004EA0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004EA8
	gsSPVertex(_HIDAN_room_8_vertices_00004588, 3, 0), // 0x00004EB0
	gsSP1Triangle(0, 1, 2, 0), // 0x00004EB8
	gsDPPipeSync(), // 0x00004EC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00004EC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004ED0
	gsDPLoadSync(), // 0x00004ED8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004EE0
	gsDPPipeSync(), // 0x00004EE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004EF0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004EF8
	gsSPVertex(_HIDAN_room_8_vertices_000045B8, 3, 0), // 0x00004F00
	gsSP1Triangle(0, 1, 2, 0), // 0x00004F08
	gsDPPipeSync(), // 0x00004F10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_00006AD8), // 0x00004F18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004F20
	gsDPLoadSync(), // 0x00004F28
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004F30
	gsDPPipeSync(), // 0x00004F38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004F40
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004F48
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004F50
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004F58
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00004F60
	gsSPVertex(_HIDAN_room_8_vertices_000045E8, 8, 0), // 0x00004F68
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004F70
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004F78
	gsDPPipeSync(), // 0x00004F80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_000050D8), // 0x00004F88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00004F90
	gsDPLoadSync(), // 0x00004F98
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00004FA0
	gsDPPipeSync(), // 0x00004FA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x00004FB0
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00004FB8
	gsSPVertex(_HIDAN_room_8_vertices_00004668, 8, 0), // 0x00004FC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004FC8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004FD0
	gsDPPipeSync(), // 0x00004FD8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_room_8_tex_00007AD8), // 0x00004FE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00004FE8
	gsDPLoadSync(), // 0x00004FF0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004FF8
	gsDPPipeSync(), // 0x00005000
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00005008
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005010
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005018
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005020
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00005028
	gsSPVertex(_HIDAN_room_8_vertices_000046E8, 4, 0), // 0x00005030
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005038
	gsDPPipeSync(), // 0x00005040
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HIDAN_scene_tex_00018DD0), // 0x00005048
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005050
	gsDPLoadSync(), // 0x00005058
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005060
	gsDPPipeSync(), // 0x00005068
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005070
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005078
	gsSPVertex(_HIDAN_room_8_vertices_00004728, 4, 0), // 0x00005080
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005088
	gsSPEndDisplayList(), // 0x00005090
};

static u8 unaccounted5098[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x07, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0x48, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x19, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x20, 0x50, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x26, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x36, 0x68, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x47, 0xE8, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _HIDAN_room_8_tex_000050D8[] = 
{
	0xBB82BB82BB82BB82, 0xBB82BB82B344BB82, 0xBB82BB82BB82BB82, 0xBB82BB82BB82BB82,  // 0x000050D8 
	0xB342B342B342B344, 0xBB45BB83C381BB83, 0xC381BB83AB45AB45, 0xB342B342B342B342,  // 0x000050F8 
	0xAB42AB04BB85C341, 0xB341C341CBC5CBC3, 0xC3C3AB41C383AB43, 0xA2C3A304AB42AB42,  // 0x00005118 
	0xAB02CB85CBC3B341, 0xC381CC05B343B343, 0xB301AB01B341AB03, 0xA2C1BB839AC5A304,  // 0x00005138 
	0xDBC1BB41CBC7D447, 0xBB85B343A2C3A303, 0xAB03AB43AB43AB03, 0xB301AAC1AAC1DBC1,  // 0x00005158 
	0xAAC1BB43AB038241, 0x8A817A41720169C1, 0x7A0172017A418241, 0x8A419241DBC1CB81,  // 0x00005178 
	0xC3C5A2C179C16181, 0x61C17201598161C1, 0x5181618169C18241, 0xAAC1AAC1BB019A81,  // 0x00005198 
	0xA2C192817A4161C1, 0x4941390130C12881, 0x38C171C1A2C1A2C1, 0xB301B301D3C5CC05,  // 0x000051B8 
	0x7A016181410130C1, 0x30C128C128C17A01, 0xC381C381CB81C341, 0xBB41D405C3859281,  // 0x000051D8 
	0x49012881208128C1, 0x288130C19A81CBC1, 0xCB81C381AB019A81, 0xA303820169815141,  // 0x000051F8 
	0x3901288128812881, 0x28C17201AB01A301, 0x9AC1AB01AB43AB43, 0x9AC38A43618138C1,  // 0x00005218 
	0x30C130C130C130C1, 0x51818AC3A3459B45, 0xA34593038AC37A83, 0x61C3414131013101,  // 0x00005238 
	0x310530C128C13101, 0x41416A017A417241, 0x7A81724161C15181, 0x390128C130C13902,  // 0x00005258 
	0x49403902310330C1, 0x30C1414151814981, 0x39014141310128C1, 0x30C1310339024940,  // 0x00005278 
	0x4100410041003103, 0x310330C330C33105, 0x30C5310330C330C3, 0x3900390041004100,  // 0x00005298 
	0x38C0390038C03900, 0x39003900310030C0, 0x30C030C030C030C0, 0x30C0310030C030C0,  // 0x000052B8 
};

u64 _HIDAN_room_8_tex_000052D8[] = 
{
	0x51C95A0B520B5A0B, 0x6A4D6A8D624D4147, 0x288528C5208528C5, 0x6A8F624D624D728D,  // 0x000052D8 
	0x6A8D5A4B6A4D4989, 0x51CB59CB20852885, 0x4107498951C951CB, 0x624D5A4B5A0B624D,  // 0x000052F8 
	0x728D5A4B39474989, 0x624B624B6A8D5A0B, 0x624D6A4D83113907, 0x39075A0B624B6A8D,  // 0x00005318 
	0x6A8D72CD7ACF728D, 0x6A8D5A0B5A0B51C9, 0x2885184339473107, 0x310741496A4D72CD,  // 0x00005338 
	0x5A0B5A0B51C951C9, 0x728D5A0B51895A0B, 0x624D49C949895189, 0x308551C95A0B51CB,  // 0x00005358 
	0x6A4D6A8D728D5A0B, 0x5A0B4189390751CB, 0x624D390749894949, 0x4147624B51C951CB,  // 0x00005378 
	0x4189418949895A0B, 0x4107624D728D624D, 0x4989498941493947, 0x394749898311728D,  // 0x00005398 
	0x5A0B51CB49C94989, 0x5A0B72CD83535A0B, 0x51C9728D8311830F, 0x7B1151C951CB4989,  // 0x000053B8 
	0x51C96A4D5A0B624D, 0x51CB310751C951CB, 0x4147498951CB51C9, 0x624D8311835328C5,  // 0x000053D8 
	0x394751CB498949C9, 0x624D72CD7ACF7AD1, 0x6ACF28C541077AD1, 0x83535A0B5A0B5A4D,  // 0x000053F8 
	0x8353624D624D7AD1, 0x6A8F51C9414730C5, 0x204320C528C520C5, 0x204349C97B0F7ACF,  // 0x00005418 
	0x108520C520434189, 0x49C9624D7B118355, 0x72CF728D835349C9, 0x288538C78B5593D7,  // 0x00005438 
	0x939772CF39072085, 0x41896AD16AD18395, 0x7ACF59CB6A4D6A8F, 0x628F5A4D418951C9,  // 0x00005458 
	0x51CB6A8F520B5A0B, 0x1843728F51CB5A0B, 0x7B117B116A4D624D, 0x7B13628D20857B13,  // 0x00005478 
	0x1085418972D1620B, 0x51C930C741895A0B, 0x5A0B414951CB72D1, 0x6A8F6A8F6A8F5A0B,  // 0x00005498 
	0x5A0B5A0B418959CB, 0x49892905520B3907, 0x49C95A0B624D6A8F, 0x72D16A8F10851843,  // 0x000054B8 
	0x9417498951C972D1, 0x6A91624D624D6A4D, 0x6A8F620B624B4989, 0x3107394749C951C9,  // 0x000054D8 
	0x624D620B72CF6A8F, 0x498928C520853947, 0x4189414749C951C9, 0x39472085624D72D1,  // 0x000054F8 
	0x93D78B95628D4989, 0x6A4D6A8D6A8D6A8F, 0x72CD7ACF8353728D, 0x390759CB51CB5189,  // 0x00005518 
	0x620B624B624B624D, 0x6A4D5A0B51CB3907, 0x51C9624D39471843, 0x5A0B7B135A4D6A8F,  // 0x00005538 
	0x628D7ACF8B955A4B, 0x835183117B117B11, 0x624D72CF7B11624B, 0x498928C520851843,  // 0x00005558 
	0x41475A0B620B620B, 0x728D83517B1183D7, 0x728D5A0B5A4D51CB, 0x3107390751C9520B,  // 0x00005578 
	0x51C96A8F6ACF624B, 0x8B937B0F7ACF7ACF, 0x6A8D624B624B72CF, 0x8B95728D30C751CB,  // 0x00005598 
	0x4147208539075A0B, 0x6A8D830F6A8D7B11, 0x5A0B49C9394728C5, 0x3947418749894189,  // 0x000055B8 
	0x20C5208551CB5A0B, 0x51C972CF72CD628D, 0x4189624D5A0B5A4B, 0x628D728D624B728D,  // 0x000055D8 
	0x59CB624B498951C9, 0x5A0B8353624D4189, 0x39474187394751C9, 0x5A0B5A0D51C94147,  // 0x000055F8 
	0x28C5208539473107, 0x3107520B624B72CD, 0x6A8D5A0B51C93107, 0x51C9520B72CF8B53,  // 0x00005618 
	0x7ACF830F5A0B4989, 0x51C96A8F6A8D51C9, 0x4989394751C95A0B, 0x628D49C949C94189,  // 0x00005638 
	0x624D5A0B5A0B49C9, 0x28C5310749896A8D, 0x624D28C510854989, 0x6A8F6A8F624B628F,  // 0x00005658 
	0x5A0B310731073107, 0x51CB49C951CB49C9, 0x49CB3947418951C9, 0x520B624B5A0B72CD,  // 0x00005678 
	0x72CF8B537ACF624D, 0x28C55A0B6A8F72CF, 0x72CF520B20C54147, 0x6AD1628F6A8F6A8F,  // 0x00005698 
	0x6A8F8313498951CB, 0x51C97B116A8D5A0B, 0x30C5310739473947, 0x394749898311A457,  // 0x000056B8 
	0x414959CB59CB30C7, 0x6A4D8311624B728D, 0x6A8D6A4D5A4D2085, 0x5A0B72D15A0B4989,  // 0x000056D8 
	0x6A8D7B1172CF6A8D, 0x6A4D7ACF72CD72CD, 0x624D5A4D41893947, 0x51CB624D624D1085,  // 0x000056F8 
	0x8B95939593938351, 0x4989624D7ACF7B0F, 0x83117B136A8F5A0D, 0x41893947728F7B11,  // 0x00005718 
	0x624D59CB620B6A8D, 0x624B6A8F72CF7B11, 0x7B116A8D624D6A91, 0x624D520920858311,  // 0x00005738 
	0x5A0B624D6A4D6A4D, 0x7B11728D7B0F7B11, 0x624B6A8F5A0B624D, 0x72CF7ACF728F4989,  // 0x00005758 
	0x6A4D7AD16A8D51CB, 0x6A4D6A4D6A8D72CF, 0x624B620B624D728D, 0x30C741496A4D4147,  // 0x00005778 
	0x51CB5A0B624D4149, 0x6A8D6A8D5A0B72CF, 0x72D15A4B418949C9, 0x51CB51C949897B13,  // 0x00005798 
	0x31075A0B6A8F5A0B, 0x5A0B624D5A0B51C9, 0x5A0B5A0B28C53085, 0x620D8B537B11628F,  // 0x000057B8 
	0x5A0B3107414972D3, 0x520B41895A0B624D, 0x624D628D620B5A0B, 0x418728C55A0B624D,  // 0x000057D8 
	0x6A8F41495A0B51C9, 0x51C951CB51C951CB, 0x41896A4D624D51C9, 0x624D5A0B620B5A0B,  // 0x000057F8 
	0x830F8355624B3947, 0x5A0B6A8F5A0D51C9, 0x51CB624D728D624B, 0x3947624D51C95A0D,  // 0x00005818 
	0x4989310741473947, 0x49C9498951CB4989, 0x6A8D520B5A0B51CB, 0x5A0B72CF83518B95,  // 0x00005838 
	0x8B9372CF8B536ACD, 0x6A8D7B536ACF628F, 0x6ACF7B53628D6A8D, 0x83956AD15A4B4189,  // 0x00005858 
	0x624B72CF51C93107, 0x310749C95A0B624B, 0x6A8D5A4D51CB4189, 0x51C972CF83538B93,  // 0x00005878 
	0x7B117ACF72CD6A8D, 0x5A0B59CB620B5A0B, 0x5A0B72CF83514989, 0x4149390749C9520B,  // 0x00005898 
	0x6AD15A4B28C55A0B, 0x520928C528C52905, 0x31475A0B5A0D4189, 0x7B137B13839793D9,  // 0x000058B8 
	0x4149728D5A4B4189, 0x6ACF72CF7B0F8BD7, 0x6A8D6A4D6A8F5A0B, 0x49895A0D51CB51CB,  // 0x000058D8 
	0x51CB520B28C55A4D, 0x51CB520B5A0B8397, 0x7B116A4D39072885, 0x30C75A0B6A8F72CD,  // 0x000058F8 
	0x7B537B5573137B13, 0x6A8D6A8D5A4B1085, 0x2085394739473907, 0x414741894187624D,  // 0x00005918 
	0x498949C928C551C9, 0x624D5A4D49896A8F, 0x83956A8D6A4D51C9, 0x4989628D6A8D5A0B,  // 0x00005938 
	0x394751CB5A0B8311, 0x8B953147208551CB, 0x5A0B5A0B6A8F624D, 0x4989624B73117B51,  // 0x00005958 
	0x72CD7B0FA4598B93, 0x6A4D728F49C94189, 0x731372CF8B936A8D, 0x49C95A4D51C928C5,  // 0x00005978 
	0x3947624F6A8D4989, 0x394751C95A4D5A0B, 0x624D5A4D5A4D5A0B, 0x72CF8B937B0F8B93,  // 0x00005998 
	0x6A8D830F8B51A459, 0x9BD39393939551C9, 0x4949624B624D7B11, 0x3107418949C93105,  // 0x000059B8 
	0x51CB624D520B3947, 0x51C96A8F7B536ACF, 0x628F5A4B628D49C9, 0x28C5390741894989,  // 0x000059D8 
	0x7B0F830F72CF8351, 0x93D5A41993D57ACF, 0x8B97620B5A0D51C9, 0x5A4F314718433105,  // 0x000059F8 
	0x2885184328C551CB, 0x51C9624D6A8D624D, 0x72CF72CF7B115A4B, 0x5A0B7B117B0F830F,  // 0x00005A18 
	0x72CD72CF83537B0F, 0x49C97ACF39472885, 0x41893147208528C5, 0x30C551CB520B28C5,  // 0x00005A38 
	0x7B0F72CD10854189, 0x3907310739474989, 0x6A8F6ACD41895A4B, 0x624D624B6A8D624B,  // 0x00005A58 
	0x5A0B31076A4D59CB, 0x728D624B624D7B11, 0x728D72CF6A8D5A0B, 0x5A4B628D6A8D6A8D,  // 0x00005A78 
	0x6A8D5A0B418949C9, 0x49C9394731074147, 0x3947310741C94189, 0x5A0B624D624D5A4B,  // 0x00005A98 
	0x624D3907624D8B53, 0x7B535A0B624D6A8D, 0x624D624B51CB5A0B, 0x51CB624D624D830F,  // 0x00005AB8 
};

u64 _HIDAN_room_8_tex_00005AD8[] = 
{
	0x930783057B497A43, 0x72857AC772856A01, 0x8285830369C18347, 0xA40983477B457A83,  // 0x00005AD8 
	0x83479B0593098B89, 0x8BCDA34982859B8F, 0x8B87838561C36285, 0x82437A877AC75A03,  // 0x00005AF8 
	0x8B857A837AC7938B, 0x5A4351836A4571C5, 0x720382835A457245, 0x830793458B477B43,  // 0x00005B18 
	0x72C77AC57AC38B89, 0x82C772837AC39349, 0x9387938973055A05, 0x6A856A4383075983,  // 0x00005B38 
	0x834782C393498B49, 0x6A0151C372838B49, 0x6A8582C769C37A85, 0x7AC9834982C57B03,  // 0x00005B58 
	0x82C77B4593059B8D, 0x8B8D7B0592C78B05, 0x8B8B8B078B877245, 0x6A859307CD5B5A03,  // 0x00005B78 
	0x7A877AC57A876A43, 0x61C382057A457283, 0x8AC58B0762018305, 0x834782C78AC98347,  // 0x00005B98 
	0x83077AC38A859B4B, 0x934D7B0582C39387, 0x8B09930B93897AC7, 0x72838285D59F59C3,  // 0x00005BB8 
	0x8AC57AC372456243, 0x72457AC3620359C1, 0x724382876A018B07, 0x8B878B0B7A8782C3,  // 0x00005BD8 
	0x93098AC78AC5A3D1, 0x9C0D8AC582859389, 0x930B82C97A83A38F, 0x93497A839B8F6A43,  // 0x00005BF8 
	0x8B057A877A457B07, 0x7A87628369C361C3, 0x7AC78A8572018307, 0x8B07838992C58B45,  // 0x00005C18 
	0x93458AC77B09ABCB, 0x93CD72C573099349, 0x838B930772839BC9, 0x9309624782435A03,  // 0x00005C38 
	0x8B0972C782C77305, 0x72056A456A037245, 0x7B478B8562057B09, 0x9B4983859B8993C5,  // 0x00005C58 
	0x9B098AC58B87AC0F, 0xAC0D93897AC7830B, 0x83859BC97B038AC9, 0x7A8772C57A856A03,  // 0x00005C78 
	0x93496A456A476205, 0x6A036A4579C38A45, 0x8B0993897245AC0B, 0x9C0D83078B87A387,  // 0x00005C98 
	0x93C78B09938BA40D, 0xA3C9934973478B49, 0x8307938993077B05, 0x8B0B938D8B0969C1,  // 0x00005CB8 
	0x9B8B6A8562037203, 0x72C56A4369C18347, 0x8B4983079389B497, 0xABCF8345934B8389,  // 0x00005CD8 
	0x934B83859389A3CD, 0xA40D934982C99B49, 0x8BC7A38F8BCB8B0B, 0x83478B8BAC516203,  // 0x00005CF8 
	0x940F72856A8559C5, 0x6A837A457A85AC0F, 0x938F83479C4FC55B, 0xB48D8B07938B930B,  // 0x00005D18 
	0xA3C99BCDA38DA44D, 0xA3CDA491AC11AC4D, 0x938B9BCFA38FA409, 0x938B92CBBD1359C1,  // 0x00005D38 
	0x9C0D830582C77A45, 0x72C59389A387A48F, 0xA40F9B47ABCDC557, 0xB48F9B47A3CD9B89,  // 0x00005D58 
	0x9BCF9C0BAC91B493, 0xB40FB4CFB497ACCF, 0xA38BAC4F9BC9938F, 0x8B49938BAC5169C3,  // 0x00005D78 
	0xA3898B037AC751C1, 0x7245938D6A83A4CF, 0xAC139387A44DACD5, 0x9B8B8B479BCD9B47,  // 0x00005D98 
	0xA40FA40FA451BCD1, 0xA451AC4FB4D7BC91, 0x8B89A40F8B079C0F, 0x938F8B8DC5135A03,  // 0x00005DB8 
	0x934B92C78B4D7205, 0x72C783478B07A44F, 0xB44D9B8D9347BCD5, 0x9C518B099BC78B05,  // 0x00005DD8 
	0xA40FABD3AC51A491, 0xAC4FBD1BC557B517, 0x934BA44B7285A411, 0xA3D1A3CFCE1D59C1,  // 0x00005DF8 
	0x9389A38BAC517A45, 0x93899BCB8307C4CD, 0xC4D5AC4D8B4BC55B, 0xB4539349A3D17AC9,  // 0x00005E18 
	0xA3CBB495BD539C4D, 0xBCD9D59FC559AC8F, 0x9B8BAC136A49938B, 0x9B8FAC91ACD16A05,  // 0x00005E38 
	0xC513B4498B8B82C7, 0x8B89B455A3CBB3D1, 0xA41193CB93C9AD0F, 0xDE23ACD18B85AC4B,  // 0x00005E58 
	0xC559C4D5CD19B44D, 0xA40FAC93D5DDE6ED, 0xDE63CDD9C553C59D, 0xB4518A8793457285,  // 0x00005E78 
	0x7AC57AC582C54941, 0x620382455A415981, 0x61C3718182416A45, 0x6AC371C172436A03,  // 0x00005E98 
	0x61C3624162416A87, 0x72476A477A83A38B, 0x82437AC372037A87, 0x628351C159C36A07,  // 0x00005EB8 
	0x9C4BA40D9B89940B, 0x9C11A44FA3498B87, 0x9C0BA40DA44FAC8D, 0xA491A3CDB44B6A43,  // 0x00005ED8 
	0x8AC793498B079B49, 0x830B7B477243A40F, 0x93099B457AC7B451, 0xAC0D7AC769C372C9,  // 0x00005EF8 
	0x938BAC0B83478B8B, 0x9BD18B8B83859B05, 0x8B49A3C99C0F9C4D, 0xB4519B47AC8B6241,  // 0x00005F18 
	0x72C37A4569C16A45, 0x6A4572435A038347, 0x8AC5938572C393C9, 0x8AC769C159C38309,  // 0x00005F38 
	0x9BCB8B8B940FABCD, 0xAC4F8B458B878BC7, 0x93C99C0993CB9B8F, 0xB44BA3CBAC116205,  // 0x00005F58 
	0x8307828572058A87, 0x82C7724583077283, 0x82C58AC78B4DA40F, 0x828559C38A879389,  // 0x00005F78 
	0xA40FA44B9B89A40B, 0x9C118B099B879BC9, 0x9B87A3899BC9A3CD, 0xB40D9B4B9B8B6205,  // 0x00005F98 
	0x728572C96AC572C7, 0x73077AC562C38287, 0x8A8782C7830993CB, 0x72875A0372878387,  // 0x00005FB8 
	0xA411A40993057AC5, 0xA3CD8B899B878BC7, 0xA38BA38DA48FA3CF, 0xA3D1AC4B93C96245,  // 0x00005FD8 
	0x72C7730772458309, 0x93498B4751C35A01, 0x93457B076A877AC7, 0x6A8559C362039307,  // 0x00005FF8 
	0xB44D9BCF8AC782C9, 0xA3D18B0B93479407, 0xAC0B93C7A44FAC4F, 0xA3D3A411AC0F6A05,  // 0x00006018 
	0x9347930B8AC58B4B, 0x9BC992C55A4559C3, 0x72C782C56A059349, 0x8AC97A8372459B87,  // 0x00006038 
	0x9C0BA3D193CB9389, 0xB40B93858B899B89, 0x94098B87A40BABCF, 0xA3D193C9B4917205,  // 0x00006058 
	0x8307930B8B038AC9, 0x92C79B078ACB6245, 0x72C58B077A479C0D, 0x9B4D8B0382879B07,  // 0x00006078 
	0xAC0BA40DAC0D93CD, 0x9BCB8AC383498B4D, 0x93898B8DA3CBA40D, 0xA409A38FA44B7245,  // 0x00006098 
	0x72C59B4993058283, 0x6A438A838B4972C3, 0x82898B457A8772C5, 0x9B47A3478A838B47,  // 0x000060B8 
	0x9B8DA451AC0F9C0B, 0xAC4B6AC58B47A389, 0x9B058B87ABD1B451, 0xAC4DAC53C5177285,  // 0x000060D8 
	0x934DA45393CD6A03, 0x7A43720362456A03, 0x83099BCB93898289, 0x7AC77B0772839B49,  // 0x000060F8 
	0xAC4FB493A40B9C4F, 0xBCD39B8BA389B3D1, 0xA38D8BCDAC51A44F, 0xB40DBD11DE1D82C5,  // 0x00006118 
	0x8345A3CD8B055A05, 0x5A03720372C772C3, 0x9B87A3CBA3CB8345, 0x7A43724162038307,  // 0x00006138 
	0xA40F9BCB8B498B07, 0xB497A40F9B4DA451, 0xA40B9B8BB413C4D3, 0xBC8DB44DC5117A45,  // 0x00006158 
	0x8B479C4F72C55183, 0x620561C372477283, 0x9B47A3C78AC982C5, 0x730572C562058B09,  // 0x00006178 
	0xAC0DAC49940B7245, 0xACD1B451940DBC91, 0x938D9B49ABD1C559, 0xACCFABCB938D7283,  // 0x00006198 
	0x7A89AC0F8B455A43, 0x7A877A85830382C5, 0x9305830B8B877247, 0x8B058B456AC3934B,  // 0x000061B8 
	0xBD0FB44B94096A85, 0xB48FB4919C09BC97, 0x8B8993CDAC0DC559, 0xABCDACCFA34B6AC3,  // 0x000061D8 
	0x9B49BC939C0F6287, 0x7B098B07AC49ABCD, 0x9C099B498BC78AC7, 0x93058B895A458B8B,  // 0x000061F8 
	0xAC4D93058B8D7B05, 0xC553B48FA3C9C55B, 0x93CDA40BA3CBBD9D, 0xA411C4DBA44D72C7,  // 0x00006218 
	0x8B8DC5599BC98B8D, 0x9BCD9BCFB40FBC93, 0xB413A44D93CD7B0B, 0x7AC582C37285A40F,  // 0x00006238 
	0xC513A3CB8B8D93CD, 0xCD99DE65CD9DA40B, 0xB44FB4D7BC97B4D5, 0xBD57C557AC0F8287,  // 0x00006258 
	0xD621D5DDB4118B0D, 0xCD9FDDE1AC4D934D, 0x9389CD59B411834B, 0x9347B40FA413AC53,  // 0x00006278 
	0x51834101490149C1, 0x59C1698569C36A03, 0x6243724382C79B09, 0x934D93477AC36285,  // 0x00006298 
	0x5981514172455A03, 0x620149C141815183, 0x69C161C129014941, 0x49015141410159C1,  // 0x000062B8 
};

u64 _HIDAN_room_8_tex_000062D8[] = 
{
	0x4901594151415981, 0x71C171C161C130C1, 0x1001180108011801, 0x720169C169C17A01,  // 0x000062D8 
	0x71C1618171C14101, 0x5101590108011801, 0x304140C149015141, 0x6981618161416981,  // 0x000062F8 
	0x7A0161C128814101, 0x6181698171C15941, 0x69C179C192412841, 0x2841614169817A01,  // 0x00006318 
	0x7A0182018A817A01, 0x71C16141594148C1, 0x1001000128812041, 0x2881388171C17A41,  // 0x00006338 
	0x6181594149014901, 0x7A01614148C16141, 0x6981490140C148C1, 0x1801490159415101,  // 0x00006358 
	0x71C17A0182016181, 0x618138C130415101, 0x6981304140814081, 0x3081698149015101,  // 0x00006378 
	0x38C138C148C15941, 0x304169817A4169C1, 0x40C140C138C13081, 0x308140C19A4179C1,  // 0x00006398 
	0x5941510149014901, 0x59817A019AC15981, 0x490179C19A819A81, 0x8A815141514140C1,  // 0x000063B8 
	0x510171C1618169C1, 0x5141204149015141, 0x308140C151415101, 0x69819A419AC31801,  // 0x000063D8 
	0x2881514149014901, 0x69C17A418A418A41, 0x7A41184130419201, 0x9AC35941618161C1,  // 0x000063F8 
	0x9AC369C169818A01, 0x79C1490130811801, 0x0001080110010801, 0x0001494192818A01,  // 0x00006418 
	0x00010841000138C1, 0x490171C18A81A2C3, 0x824179C19AC34141, 0x18012801A2C3B343,  // 0x00006438 
	0xBB03820130410801, 0x41017A437A43A303, 0x8A015901718179C1, 0x71C161C138C15101,  // 0x00006458 
	0x510179C151815981, 0x000181C151415941, 0x8A83928171C17181, 0x92436A8108019243,  // 0x00006478 
	0x000138C182016941, 0x4901204138C15941, 0x618138C151018201, 0x7A017A017A015941,  // 0x00006498 
	0x5941594138C15941, 0x4901184151412881, 0x41016181698171C1, 0x82017A0100010001,  // 0x000064B8 
	0xBB85410149018241, 0x7A016981698171C1, 0x7A01618169814101, 0x2841308141015141,  // 0x000064D8 
	0x69C16181824179C1, 0x40C1180108012881, 0x38C1308149015141, 0x3081080169818243,  // 0x000064F8 
	0xB383AB436A0140C1, 0x71C171C171C17A01, 0x82018A41A2817A01, 0x3041590151014901,  // 0x00006518 
	0x6141618169816981, 0x71C1594151012881, 0x4901698128810001, 0x59819283618179C1,  // 0x00006538 
	0x6A018A41A3036181, 0x9AC192C192818A81, 0x69C1824192816981, 0x4101184108010001,  // 0x00006558 
	0x3081614161816181, 0x7A019AC18A81A385, 0x7A01618161815141, 0x2041288149015141,  // 0x00006578 
	0x49017A017A416981, 0xAB0192C18A418A41, 0x71C169C161818A81, 0xAB43820120015101,  // 0x00006598 
	0x30C1100128815941, 0x71C1928172019281, 0x5981494130811801, 0x288130C140C140C1,  // 0x000065B8 
	0x1001080149415981, 0x490182817A4171C1, 0x40C169C159416181, 0x6A017A01618179C1,  // 0x000065D8 
	0x5901618140C15101, 0x61819AC369C14101, 0x28C130C130814941, 0x59415981514130C1,  // 0x000065F8 
	0x1001080128812081, 0x2881514169C18241, 0x7A01598149012081, 0x490151417A01A2C1,  // 0x00006618 
	0x8A419A41614140C1, 0x51417A0171C15101, 0x4101308149016181, 0x71C1490149413901,  // 0x00006638 
	0x6981594159414941, 0x1841204141017201, 0x69C11001000140C1, 0x7201720169C16A01,  // 0x00006658 
	0x5941204120812841, 0x5141490149014901, 0x4901288140C14941, 0x514161C159418241,  // 0x00006678 
	0x8241A3018A4169C1, 0x1801598172018201, 0x82415141100130C1, 0x7A0371C17A017201,  // 0x00006698 
	0x7A019A8340C15141, 0x49018A417A015981, 0x1841204128812881, 0x288140C19A81D403,  // 0x000066B8 
	0x3841590159012001, 0x71819A8169817A01, 0x7A0171C161810801, 0x59418201618140C1,  // 0x000066D8 
	0x71C18A81824179C1, 0x71C18A4182418241, 0x6981618138C12881, 0x514169C161C10001,  // 0x000066F8 
	0xAB03B343AB419AC1, 0x488169818A419281, 0x9281928372016181, 0x38C1308179C18A43,  // 0x00006718 
	0x69C15941614179C1, 0x61C17A0182418A81, 0x9281720161817A01, 0x6981514108019A41,  // 0x00006738 
	0x594169C171C171C1, 0x92817A018A819281, 0x69817A0159416981, 0x82018A0181C14101,  // 0x00006758 
	0x7181924179C15101, 0x71C171C172018201, 0x69816981698181C1, 0x2041388171C13881,  // 0x00006778 
	0x5141594169C13881, 0x7A0171C159417A41, 0x824361C138C14901, 0x5101510141019243,  // 0x00006798 
	0x2041614179C15941, 0x598169C161814901, 0x5941614118011801, 0x6941A2818A8171C1,  // 0x000067B8 
	0x5981288138C18243, 0x514138C1598169C1, 0x69C169C161816181, 0x38C1180161416981,  // 0x000067D8 
	0x7A01388159415141, 0x4901514149415141, 0x38C1718169815101, 0x6981618161815941,  // 0x000067F8 
	0x92819B0369C12881, 0x59417A0161814901, 0x510169C17A0169C1, 0x308169C151016181,  // 0x00006818 
	0x48C1204130C12881, 0x4901490149014101, 0x71C1514159415101, 0x598182419B01AB43,  // 0x00006838 
	0xA3418241A3017A41, 0x71C192C37A417201, 0x7A4192C369C17A01, 0xA3037A43618138C1,  // 0x00006858 
	0x6981824151012041, 0x2041490159416181, 0x7A0161C1514138C1, 0x490182819B03A343,  // 0x00006878 
	0x92818A817A4171C1, 0x5941590161816181, 0x594182419B0148C1, 0x3881304149415141,  // 0x00006898 
	0x7A43598118015941, 0x4981184118411841, 0x28C15981598138C1, 0x8A439283A345B385,  // 0x000068B8 
	0x38C17A0161C138C1, 0x7A0182418A81AB85, 0x720171C17A015941, 0x48C1598149415141,  // 0x000068D8 
	0x5141594110416181, 0x514159415981A385, 0x9281718128411001, 0x204159417A017A41,  // 0x000068F8 
	0x92C392C38A838A83, 0x720171C161C10001, 0x0801308128812881, 0x308138C130C16981,  // 0x00006918 
	0x4101410118015141, 0x69C1618140C17A01, 0xA303720171814901, 0x41016A0172015981,  // 0x00006938 
	0x3081514159419A81, 0xAB03208108015101, 0x5941594171C16981, 0x40C169818A8192C1,  // 0x00006958 
	0x7A418AC1CC03AB01, 0x79C17A01410138C1, 0x8A838A41AB037201, 0x490161C149011841,  // 0x00006978 
	0x308169C172014101, 0x3081494161C16181, 0x69C161C161C15981, 0x8241AB419281AB01,  // 0x00006998 
	0x720192C1A2C1D403, 0xBB41B301B3434941, 0x4081698169C18A41, 0x204138C149011841,  // 0x000069B8 
	0x5141618151413081, 0x51017A4192C37A41, 0x6A0159C16A414941, 0x1801304138C14101,  // 0x000069D8 
	0x8A819AC182419AC1, 0xB343D3C3B3438A41, 0xAB03614161814941, 0x6181208100011841,  // 0x000069F8 
	0x1001000118015141, 0x490169C1724169C1, 0x8241824192C159C1, 0x598192818A8192C1,  // 0x00006A18 
	0x7A418241A2C39241, 0x4141924128811001, 0x40C1288110011001, 0x1841514151411801,  // 0x00006A38 
	0x92817A41000138C1, 0x2881204130814101, 0x7A01724138C16181, 0x69C169C1720169C1,  // 0x00006A58 
	0x5941284171C15901, 0x8201618169C18AC3, 0x7A017A4172016181, 0x61816A0172017201,  // 0x00006A78 
	0x7201594138C14901, 0x49012881208138C1, 0x28812041410138C1, 0x598169C169C161C1,  // 0x00006A98 
	0x6981284169C1A301, 0x92C3598169C17201, 0x69C1618151415981, 0x514169C169C19281,  // 0x00006AB8 
};

u64 _HIDAN_room_8_tex_00006AD8[] = 
{
	0x00000000BCD5AC93, 0xA40FA40FA40F9C0F, 0x39816B05CE25BCD5, 0xAC93AC93AC93AC93,  // 0x00006AD8 
	0xAC93AC93AC93AC93, 0xBCD5BCD5BCD5BCD5, 0xA451A451A451BCD5, 0xAC93AC93AC93AC93,  // 0x00006AF8 
	0xAC93AC93AC93BCD5, 0xBCD5BCD5AC93AC93, 0xAC93AC93AC93AC93, 0xAC93AC93AC93AC93,  // 0x00006B18 
	0xAC93AC93AC93AC93, 0xAC93AC93AC938B8B, 0x31417347CE67AC93, 0xAC93AC93BCD5BCD5,  // 0x00006B38 
	0x0000AC93AC93A40F, 0x93CD93CD93CD9C0F, 0x41C383CDDEA7BCD5, 0xBCD5BCD5AC93AC93,  // 0x00006B58 
	0xAC93AC93AC93BCD5, 0xAC93AC93AC93AC93, 0xA451A4519C0FAC93, 0xAC93AC939C0F9C0F,  // 0x00006B78 
	0x9C0FA451A4519C0F, 0xAC93AC93BCD5AC93, 0xA40FA40FA40F8B8B, 0xA4519C0F9C0F9C0F,  // 0x00006B98 
	0x8B8BA40F9C0F8B8B, 0xAC93AC93AC939C0F, 0x4A036AC5D6A9A451, 0x8349A40FAC930000,  // 0x00006BB8 
	0x000000000000BCD5, 0x8B8B8B8BA40F9C0F, 0x62C78BCDE72DBCD5, 0xBCD5BCD5A40FA40F,  // 0x00006BD8 
	0xA40FA40F8B8B8B8B, 0x8B8B8B8BA40FA40F, 0xAC93AC93A40FA40F, 0x93CD93CD83498B8B,  // 0x00006BF8 
	0x8B8B9C0F9C0F8B8B, 0xA40FA40FBCD5AC93, 0xAC93AC93AC93AC93, 0xBCD5BCD5A451A451,  // 0x00006C18 
	0xBCD5BCD5A451A451, 0xBCD5BCD59C0F3981, 0x41C18C0DE6EBBCD5, 0xAC93AC9300000000,  // 0x00006C38 
	0x00000000BCD5AC93, 0x8B8B8B8BAC939C0F, 0x62877307BDE1BCD5, 0xBCD5BCD5BCD5BCD5,  // 0x00006C58 
	0xBCD5BCD5A451A451, 0xA4519C0FAC93AC93, 0xAC93AC93AC939C0F, 0xA40FA40F8B8B9C0F,  // 0x00006C78 
	0x9C0F9C0F9C0F8B8B, 0x93CD93CDA40FAC93, 0xAC93BCD5AC93A40F, 0xA40FA40F8B8B9C0F,  // 0x00006C98 
	0xAC93AC93A451A451, 0xBCD5BCD59C0F41C1, 0x7B898BCDDEA9AC93, 0xA40FA40FBCD50000,  // 0x00006CB8 
	0x00000000BCD5BCD5, 0xAC93AC939C0F5A45, 0x5245838BC5E1BCD5, 0xBCD5BCD5BCD5BCD5,  // 0x00006CD8 
	0xBCD5BCD5BCD5BCD5, 0xBCD5AC93AC93AC93, 0xAC93BCD5BCD59C0F, 0xA40FA40F8B8B9C0F,  // 0x00006CF8 
	0x9C0FA451A4519C0F, 0xA40FA40FA40FAC93, 0xAC93BCD5AC93A40F, 0xA40FA40F8B8B8B8B,  // 0x00006D18 
	0xA40F8B8B9C0F9C0F, 0x9C0FBCD59C0F5245, 0x7B49C623D667BCD5, 0xBCD5BCD500000000,  // 0x00006D38 
	0x0000BCD5BCD5A451, 0x9C0FAC939C0F6AC9, 0x7B498BCFCE65AC93, 0xAC93AC93A40FA40F,  // 0x00006D58 
	0xA40F93CDA40FA40F, 0xA40F9C0FA451A451, 0xA451A451A451A451, 0xA451BCD5BCD5A451,  // 0x00006D78 
	0xA451A451BCD5BCD5, 0xAC93AC93AC93AC93, 0x9C0F9C0F9C0FAC93, 0xAC93AC93BCD5BCD5,  // 0x00006D98 
	0xAC939C0F9C0F9C0F, 0xA4519C0F73095243, 0x83CDC623AC93AC93, 0xBCD5000000000000,  // 0x00006DB8 
	0xAC93AC93A40F8B8B, 0x8349AC939C0F4A03, 0x7B89CE25D665BCD5, 0xBCD5AC93AC93AC93,  // 0x00006DD8 
	0xBCD5AC93BCD5BCD5, 0xBCD5A4519C0F8B8B, 0x9C0F9C0F9C0F9C0F, 0xA451BCD5BCD5A451,  // 0x00006DF8 
	0xA4519C0FAC93AC93, 0xAC93BCD5BCD5BCD5, 0xA451A451A451BCD5, 0xBCD5BCD5BCD5AC93,  // 0x00006E18 
	0xA40F8B8B8B8B8B8B, 0xA4519C0F4A037B49, 0x9C93D625AC93AC93, 0xBCD5BCD500000000,  // 0x00006E38 
	0x00000000AC93AC93, 0xAC938B8B4A035A87, 0x9451DEE9BCD5A451, 0xA4519C0F9C0F8B8B,  // 0x00006E58 
	0x9C0F9C0F9C0F9C0F, 0x9C0FA4519C0F9C0F, 0xA4519C0F8B8B8B8B, 0x8B8BAC93AC93AC93,  // 0x00006E78 
	0xAC93A40F8B8B8B8B, 0x8B8B9C0F9C0FA40F, 0xA40FA40FA40FA40F, 0xA40FAC939C0F8B8B,  // 0x00006E98 
	0x8B8BAC93AC93AC93, 0xBCD59C0F5A858BCF, 0xCE23DEABAC939C0F, 0x9C0F9C0FBCD50000,  // 0x00006EB8 
	0x0000000000009C0F, 0x9C0F9C0F5A457B49, 0x8C0DCE25BCD5A451, 0xA4519C0F9C0F8B8B,  // 0x00006ED8 
	0xA40FA40FA40FA40F, 0xA40FAC93BCD5BCD5, 0xBCD5BCD5AC93A40F, 0xA40FA40FA40FAC93,  // 0x00006EF8 
	0xA40FA40F8B8B9C0F, 0x9C0FA451A451BCD5, 0xBCD5BCD5AC93AC93, 0xAC93BCD5A451A451,  // 0x00006F18 
	0x9C0FAC93AC93AC93, 0xAC939C0F730B9453, 0xD6A7BCD5AC939C0F, 0x9C0FBCD5BCD5BCD5,  // 0x00006F38 
	0x0000BCD5AC939C0F, 0x9C0F8B8B5A879451, 0xE72DE6EBBCD5BCD5, 0xBCD5BCD5BCD5BCD5,  // 0x00006F58 
	0xBCD5BCD5AC93AC93, 0xAC93AC93AC93AC93, 0xAC93BCD5AC93AC93, 0xAC93AC93AC93AC93,  // 0x00006F78 
	0x93CD93CD93CD93CD, 0x93CDA40FA40FAC93, 0xBCD5BCD5BCD5BCD5, 0xBCD5AC93AC93AC93,  // 0x00006F98 
	0xAC93AC93AC93AC93, 0xAC939C0F62C98BCF, 0xD6A9AC93AC93AC93, 0x9C0FBCD500000000,  // 0x00006FB8 
	0x00000000BCD5BCD5, 0x9C0F9C0F52457349, 0xB55FBCD5A451A451, 0x9C0F9C0F8B8B9C0F,  // 0x00006FD8 
	0x9C0F9C0F9C0F9C0F, 0xA4518B8B8B8B9C0F, 0x9C0F8B8B8B8B8B8B, 0xAC93AC93AC93AC93,  // 0x00006FF8 
	0xAC939C0F9C0F9C0F, 0xA451A451A40FA40F, 0xA40FA40FA40FA40F, 0xAC939C0F9C0F9C0F,  // 0x00007018 
	0xAC93AC93AC93BCD5, 0xBCD59C0F62C96AC7, 0xCE67AC938B8D8349, 0xA44FA44FAC930000,  // 0x00007038 
	0x0000000000000000, 0x0000314331414A03, 0xBD9FCDE300000000, 0x0000000000000000,  // 0x00007058 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007078 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007098 
	0x0000000000000000, 0x00005A4541C38BCF, 0xBDDFE6ED00000000, 0x0000000000000000,  // 0x000070B8 
	0x0000000000000000, 0x000020C173078C0F, 0xD6A99CE1A5210000, 0x0000000000000000,  // 0x000070D8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000070F8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007118 
	0x0000000000000000, 0x000039837B498BCD, 0xE72DCE6BC6270000, 0x0000000000000000,  // 0x00007138 
	0x0000000000000000, 0x00004A038C0FDEEB, 0xCE6983CFC6270000, 0x0000000000000000,  // 0x00007158 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007178 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007198 
	0x0000000000000000, 0x000041C37349D6A9, 0xE72F7B8BCE670000, 0x0000000000000000,  // 0x000071B8 
	0x0000000000000000, 0x000041C5734BAD5F, 0x734F83CBDEED0000, 0x0000000000000000,  // 0x000071D8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000071F8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007218 
	0x0000000000000000, 0x00004A058C11C625, 0x52477B8BC6250000, 0x0000000000000000,  // 0x00007238 
	0x0000000000000000, 0x000041C5838DD6A9, 0x5A877B49C5E30000, 0x0000000000000000,  // 0x00007258 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007278 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007298 
	0x0000000000000000, 0x00005A878BCDB59F, 0x734D7B8B9CDB0000, 0x0000000000000000,  // 0x000072B8 
	0x0000AC93AC93AC93, 0xAC939C0F9C0F9C0F, 0x6AC77307CE65AC93, 0xAC93AC93BCD5BCD5,  // 0x000072D8 
	0xBCD5BCD5BCD5BCD5, 0xBCD5BCD5BCD5A451, 0xA451A451A451BCD5, 0xBCD5BCD5BCD5BCD5,  // 0x000072F8 
	0xBCD5BCD5BCD5BCD5, 0xBCD5BCD5BCD5BCD5, 0xBCD5BCD5BCD5BCD5, 0xAC93AC93AC93AC93,  // 0x00007318 
	0xAC93AC93AC93AC93, 0xBCD5BCD5BCD59C0F, 0x5A4583CDB55FBCD5, 0xBCD5BCD500000000,  // 0x00007338 
	0x000000000000AC93, 0xA40F8B8B9C0F9C0F, 0x39817B47CE67BCD5, 0xBCD5BCD5BCD5BCD5,  // 0x00007358 
	0xAC93AC93AC93A40F, 0xA40FA40FA40F8B8B, 0x9C0F9C0FA451AC93, 0xAC93AC93A40FAC93,  // 0x00007378 
	0xAC93AC93AC93BCD5, 0xBCD5BCD5BCD5A451, 0xA451A4519C0FAC93, 0xA40FA40FA40FAC93,  // 0x00007398 
	0xAC93AC93AC93A40F, 0xAC93AC93AC939C0F, 0x5A878C0FE6EDA451, 0x9C0FBCD5BCD50000,  // 0x000073B8 
	0x0000000000000000, 0x9C0FAC939C0F41C3, 0x418183CDCE23AC93, 0xAC93AC938B8B8B8B,  // 0x000073D8 
	0xA40FA40FA40FA40F, 0xA40FA40FA40F8B8B, 0x8B8B8B8B9C0FA40F, 0xA40FA40FA40FBCD5,  // 0x000073F8 
	0xBCD5BCD5A40FA40F, 0xA40F93CD93CD8B8B, 0x9C0F9C0F9C0FAC93, 0xA40FA40FA40FA40F,  // 0x00007418 
	0x8B8B9C0F9C0FAC93, 0xAC93AC93AC939C0F, 0x734B838BCE65A451, 0x8B8BAC9300000000,  // 0x00007438 
	0x0000AC93AC93AC93, 0x9C0FAC939C0F6AC9, 0x7B8B9C53BD5DAC93, 0xA40F93CD8B8B8B8B,  // 0x00007458 
	0xA40FA40FA40F9C0F, 0xA451A4519C0F9C0F, 0x8B8B9C0F9C0F8B8B, 0x9C0F9C0F9C0FA451,  // 0x00007478 
	0x9C0F9C0F9C0FAC93, 0xAC93AC93AC939C0F, 0x9C0F8B8B8B8BAC93, 0xAC93A40F93CD93CD,  // 0x00007498 
	0x8B8BA451A451AC93, 0xA40FA40FA40F9C0F, 0x62876B07C623A451, 0xA451AC93AC93AC93,  // 0x000074B8 
	0xBCD59C0F834993CD, 0x93CD9C0F9C0F7309, 0x7B8BE6EBE6EBBCD5, 0xBCD5BCD5A451A451,  // 0x000074D8 
	0xBCD5AC93AC939C0F, 0x9C0FA451A451A451, 0x9C0F9C0F9C0F9C0F, 0xA451A451A451A451,  // 0x000074F8 
	0xA451A451A451BCD5, 0xBCD5BCD5BCD5BCD5, 0xBCD5A451A451A451, 0xA451AC93AC93AC93,  // 0x00007518 
	0xA451A4519C0FA40F, 0xA40FAC938B8B5205, 0x41C17B47DEA7A451, 0x8B8BA40FBCD50000,  // 0x00007538 
	0x0000AC9393CD93CD, 0x93CD9C0F5A855A87, 0x7B8BCE67BCD5BCD5, 0xBCD5BCD5AC93AC93,  // 0x00007558 
	0xAC93A40FA40FAC93, 0xA40FAC93AC93AC93, 0xAC93AC93AC93AC93, 0xAC939C0F8B8B8B8B,  // 0x00007578 
	0xA40F93CDA40FA40F, 0x9C0F9C0F8B8B8B8B, 0x8B8B8B8B9C0F8B8B, 0x9C0FAC93AC93AC93,  // 0x00007598 
	0x9C0FA451A451BCD5, 0xBCD5BCD59C0F4A03, 0x7B899C51C5E1BCD5, 0xAC93AC93BCD5BCD5,  // 0x000075B8 
	0x0000000000000000, 0xA4519C0F4A03838B, 0x9451D6A7AC93A40F, 0xA40FAC93AC93A40F,  // 0x000075D8 
	0xA40FA40FAC93AC93, 0xAC939C0FA451A451, 0xA451AC93AC93AC93, 0xAC939C0F9C0F9C0F,  // 0x000075F8 
	0xAC93A40FAC93AC93, 0xA4519C0F8B8B8B8B, 0x8B8B8B8B8B8B8B8B, 0xA451BCD5BCD5BCD5,  // 0x00007618 
	0xBCD5BCD5BCD5AC93, 0xAC93AC939C0F5245, 0x940FCE25CE65AC93, 0x9C0FAC93BCD50000,  // 0x00007638 
	0x00000000BCD5AC93, 0x9C0F9C0F6AC78C0F, 0xEF6FEF2FBCD5BCD5, 0x9C0F9C0F9C0F9C0F,  // 0x00007658 
	0x9C0FAC93AC93AC93, 0xAC939C0F9C0F9C0F, 0x9C0FA40FAC93AC93, 0xAC93AC93BCD5BCD5,  // 0x00007678 
	0xAC93AC93AC93AC93, 0x9C0F9C0F9C0F9C0F, 0x8B8BAC93AC93AC93, 0xAC93AC93AC939C0F,  // 0x00007698 
	0x9C0F9C0FBCD5AC93, 0xAC938B8B4A034A03, 0x7B8BC5E1BCD5AC93, 0x8B8BAC9300000000,  // 0x000076B8 
	0x0000BCD5AC93AC93, 0x8B8B8B8B4A037B47, 0xD667AC93AC93AC93, 0x9C0F9C0F9C0F8B8B,  // 0x000076D8 
	0x8B8BA40FA40FA40F, 0xAC938B8B8B8B8B8B, 0x8B8BA40FA40FA40F, 0xA40FA40FAC93AC93,  // 0x000076F8 
	0xA40F93CD93CD93CD, 0x83498B8B9C0FA451, 0xA451AC93AC93AC93, 0xAC93AC93AC93A451,  // 0x00007718 
	0x8B8B8B8BA40FA40F, 0xA40F8B8B5A456B07, 0x83CDD665A4518B8B, 0x93CDAC9300000000,  // 0x00007738 
	0x00000000A4519C0F, 0xAC939C0F73097307, 0xCE23AC93AC93AC93, 0xBCD5BCD5BCD5BCD5,  // 0x00007758 
	0xAC93AC93AC93AC93, 0xBCD5BCD5BCD5BCD5, 0xBCD5A451A451A451, 0xA451A451A451A451,  // 0x00007778 
	0xAC93AC93AC93AC93, 0xAC93BCD5BCD5BCD5, 0xBCD5BCD5BCD5BCD5, 0xBCD5BCD5BCD5BCD5,  // 0x00007798 
	0xBCD5BCD5BCD5BCD5, 0xBCD59C0F4A057B8B, 0xCE23D6A9AC93A40F, 0xAC93BCD5BCD50000,  // 0x000077B8 
	0x0000000000008B8B, 0x8B8B9C0F5205838B, 0xBD9FBCD5A451A451, 0x9C0F9C0F8B8B9C0F,  // 0x000077D8 
	0x9C0F9C0F9C0F9C0F, 0xA4519C0F9C0FA451, 0xA4519C0F9C0F9C0F, 0xBCD5BCD5BCD5BCD5,  // 0x000077F8 
	0xAC939C0F9C0F9C0F, 0xA451A451AC93AC93, 0xAC93AC93AC93AC93, 0xBCD5A4519C0F9C0F,  // 0x00007818 
	0xAC93AC93AC93BCD5, 0xBCD59C0F52479C93, 0xE72F8B8B8B8B8B8B, 0x0000000000000000,  // 0x00007838 
	0x0000000000000000, 0x000049C552457B8D, 0xC625B5A300000000, 0x0000000000000000,  // 0x00007858 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007878 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007898 
	0x0000000000000000, 0x000000004A0383CF, 0xAD1DBDE500000000, 0x0000000000000000,  // 0x000078B8 
	0x0000000000000000, 0x00004A057B8B9451, 0xDEEBD6ABEF710000, 0x0000000000000000,  // 0x000078D8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000078F8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007918 
	0x0000000000000000, 0x0000290139C37B8B, 0xD6A9949F8C5B0000, 0x0000000000000000,  // 0x00007938 
	0x0000000000000000, 0x00004A0383CDCE25, 0xD6A983CBE72D0000, 0x0000000000000000,  // 0x00007958 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007978 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007998 
	0x0000000000000000, 0x0000398183899453, 0xB5A19C95C6250000, 0x0000000000000000,  // 0x000079B8 
	0x0000000000000000, 0x000049C37B89D6A9, 0x6B0D7B49D6A90000, 0x0000000000000000,  // 0x000079D8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000079F8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007A18 
	0x0000000000000000, 0x00005A87838FBDE3, 0xC6259453D6AB0000, 0x0000000000000000,  // 0x00007A38 
	0x0000000000000000, 0x000039817B4D9C99, 0x6B0D7349D6A70000, 0x0000000000000000,  // 0x00007A58 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007A78 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007A98 
	0x0000000000000000, 0x000041C57B89EF6F, 0x62CB9451EF710000, 0x0000000000000000,  // 0x00007AB8 
};

u64 _HIDAN_room_8_tex_00007AD8[] = 
{
	0x1045208339453987, 0x28C3418551C949C7, 0x30C3414349C7624B, 0x5A8B4145310328C3,  // 0x00007AD8 
	0x5A07730D51C551C7, 0x624772878B0DA3D1, 0xBCD3AC53B453AC11, 0xAC119B4D8AC78A87,  // 0x00007AF8 
	0x0843184131433103, 0x28C3394349C74987, 0x30C3414549C55A09, 0x628B49C730C11881,  // 0x00007B18 
	0x414372CD5A0772CB, 0x6A8772878B4DAC51, 0xC4D3AC13B493AC53, 0xAC11930B82858A87,  // 0x00007B38 
	0x08431881394328C1, 0x2081390341454985, 0x3081414541854985, 0x5A4951C728C11041,  // 0x00007B58 
	0x30C151C559C57B0D, 0x6A877287938DB451, 0xC515A411B4D5B493, 0xABD18ACB7A4392C9,  // 0x00007B78 
	0x0843184139432081, 0x1881310341454185, 0x28C1394339433103, 0x520951C520811841,  // 0x00007B98 
	0x2081520949838B8F, 0x6A476A87A38DBCD3, 0xCD55A411BCD5BCD5, 0xAC118ACD72038AC9,  // 0x00007BB8 
	0x08431841394320C3, 0x104128C149C73943, 0x28C13943310328C3, 0x52074183208128C1,  // 0x00007BD8 
	0x208352073901730D, 0x30C36A499BCFC515, 0xCD57AC53B495C4D5, 0xAC1182CD72039309,  // 0x00007BF8 
	0x084328C341853103, 0x1041314549C53945, 0x31014983418528C3, 0x5207394320412081,  // 0x00007C18 
	0x310351C530C15209, 0x390372C99BCFC515, 0xCD57B495B493C515, 0xA3D1828D71C39309,  // 0x00007C38 
	0x0843184131013103, 0x20814187520949C7, 0x3103520752093103, 0x49C53901208128C1,  // 0x00007C58 
	0x3901498330C14145, 0x41037B0B9BCFCD15, 0xCD57B495B493C515, 0xA3D17A8D71C18AC7,  // 0x00007C78 
	0x0843208152094185, 0x204149C76ACF49C7, 0x3101520752493903, 0x49C5394320413143,  // 0x00007C98 
	0x30C149C739434145, 0x3103938B9BCFBCD3, 0xCD57B495B493C515, 0xA3D17A8B69818A87,  // 0x00007CB8 
	0x084320C152094985, 0x28815A8D6AD15207, 0x30C152095A494143, 0x49C749C728813943,  // 0x00007CD8 
	0x41435A495A095A07, 0x31039B8BA3CFBCD3, 0xCD57B493B493CD15, 0xA3D17A4B61819B07,  // 0x00007CF8 
	0x0843188152094985, 0x310362CD51C951C5, 0x38C152095A4B4985, 0x51C5520930C13101,  // 0x00007D18 
	0x4983520752096A89, 0x2083934B9BCFBC93, 0xCD99BC95B493CD15, 0xA3D17A4B59019B47,  // 0x00007D38 
	0x08432903520949C5, 0x51C76ACF498551C5, 0x3101628B5A4B3903, 0x4985418528C33943,  // 0x00007D58 
	0x3903498549C57B0B, 0x39056249A40FB451, 0xCD57B493AC51C4D3, 0xA3CF72496181A349,  // 0x00007D78 
	0x1083394549C749C7, 0x49C7524949C751C5, 0x3941628D6ACF30C1, 0x5207390330C33943,  // 0x00007D98 
	0x30C152073943830B, 0x51C73903934BAC51, 0xC513B491A40FBC8F, 0x9BCD720969819B47,  // 0x00007DB8 
	0x0843290541C549C7, 0x49C75209310151C5, 0x410352095A4930C1, 0x4183394331034185,  // 0x00007DD8 
	0x30C1418341436A89, 0x6A8D394382CBAC4F, 0xC513AC0F9B8DB44D, 0x934B69C769C192C7,  // 0x00007DF8 
	0x0843188139414985, 0x5207520741434983, 0x390149C5520728C1, 0x4983418339033945,  // 0x00007E18 
	0x28C1498349835187, 0x6A8D310382CBAC4F, 0xC513934D82C9A3CB, 0x8AC9618761818A87,  // 0x00007E38 
	0x10431041310151C7, 0x62CD524939013901, 0x31015A495A4930C1, 0x4143414330C33943,  // 0x00007E58 
	0x30C1414341434185, 0x7B0F5A0783098B0D, 0xCD1582CB93499349, 0x8289618759419287,  // 0x00007E78 
	0x1043080128815A09, 0x5A4B524928C13901, 0x51C549C549C528C1, 0x3901498530C33945,  // 0x00007E98 
	0x28C1390149854185, 0x83936A499B8D830D, 0xBCD382CB9B8B9309, 0x82C971C759418A87,  // 0x00007EB8 
	0x0843000128C15A49, 0x4A07418520813943, 0x51C34185628F3945, 0x3901418541434185,  // 0x00007ED8 
	0x3945390149855A05, 0x83935A07AC51938F, 0xB44F934DA3CB9309, 0xABC9B3C969C38A87,  // 0x00007EF8 
	0x1043000128C35A07, 0x52073943188130C1, 0x30C141435A494183, 0x310349C749853101,  // 0x00007F18 
	0x4183310349C751C7, 0x5A0B49C5B493A411, 0xCD559B8F8B4B8AC9, 0xAC0BBC4D72037A45,  // 0x00007F38 
	0x1083000120814185, 0x49C7418328814187, 0x4143390149C53943, 0x28C15A07394528C1,  // 0x00007F58 
	0x394328C15A074185, 0x49895A07B493B495, 0xD597AC118B0B7209, 0xB40BBC4D7A436141,  // 0x00007F78 
	0x1883000118815209, 0x524B310318414187, 0x5A4930C139013101, 0x208151C531032081,  // 0x00007F98 
	0x3101208151C54145, 0x49875207B493B495, 0xD597B4918B0B7A49, 0xABCBB40B9B076141,  // 0x00007FB8 
	0x39451041104149C5, 0x41853103184149C9, 0x5A49498549873103, 0x28C351C529032081,  // 0x00007FD8 
	0x310328C351C53943, 0x49875A49BC95BCD5, 0xD599C5138B0D8ACB, 0xAC0BB40B93075941,  // 0x00007FF8 
	0x3105100110415207, 0x5209208128C349C7, 0x5A47620941853101, 0x310349C528C128C3,  // 0x00008018 
	0x3101310349C54185, 0x51C76A89BCD5BD15, 0xD597B49382CB934B, 0xB40BB40B93075901,  // 0x00008038 
	0x20C5080120815A4B, 0x4A09188139455A49, 0x520751C552074183, 0x390349C528813103,  // 0x00008058 
	0x4183390349C551C5, 0x41456249B493B455, 0xCD57AC519B4F9B4D, 0xB44DAC099B476981,  // 0x00008078 
	0x2905100118815A4B, 0x418528C131035A4B, 0x414341436A8D5209, 0x4185310330C13901,  // 0x00008098 
	0x5209418539035A07, 0x418562499B91AC13, 0xBD17B4939B4F9B8D, 0xB44DA389A34769C1,  // 0x000080B8 
	0x2083000120C35249, 0x30C11841394562CD, 0x3947390352074A07, 0x520728C120C130C1,  // 0x000080D8 
	0x4A07520728C15209, 0x41878B4D934FB497, 0xCD57C555A38F9B4B, 0xB44DA3899B4769C1,  // 0x000080F8 
	0x08430001310549C7, 0x2881188149C55A8B, 0x4185418549855209, 0x51C5288139453103,  // 0x00008118 
	0x520951C528C1620B, 0x52079C119B91BCD5, 0xCD57CD55AC51930B, 0xBC4DABCB9B4771C1,  // 0x00008138 
	0x0843000128C34185, 0x184128C3628B5A8B, 0x398351C74985730F, 0x49851841414530C3,  // 0x00008158 
	0x730F498520415A09, 0x6ACB9BCFA393B4D5, 0xD597C515B451930B, 0xBC8FABCB9B4979C1,  // 0x00008178 
	0x0843000128C13143, 0x184149855A495A4B, 0x4183418541835A4B, 0x3905204139452881,  // 0x00008198 
	0x5A493105204151C7, 0x730D8B4B9B91A411, 0xD597C515AC51934D, 0xBC8FABCB9B496981,  // 0x000081B8 
	0x0843080139033145, 0x1841418552095A4B, 0x394339035A09624B, 0x20C3208141852881,  // 0x000081D8 
	0x628B208120815209, 0x628B8B0B9B919391, 0xD599CD57AC51934D, 0xBC91ABCB9B096181,  // 0x000081F8 
	0x0843104141833945, 0x2081414352095249, 0x28C130C152075A4B, 0x3945208139432881,  // 0x00008218 
	0x5A4B3945288151C9, 0x41877AC99B519B91, 0xD599CD57AC519B8F, 0xBC91A3CB93096981,  // 0x00008238 
	0x08431041394120C3, 0x2081390352095209, 0x208130C151C75A4B, 0x49C730C339431881,  // 0x00008258 
	0x628D5A4B41034187, 0x31037AC7934F938F, 0xCD57CD55AC519B8F, 0xB451A38D93078A05,  // 0x00008278 
	0x08831883394320C3, 0x2883418552094A09, 0x30C3390351C9628D, 0x5209310339431881,  // 0x00008298 
	0x6ACF520731033903, 0x51C57287830D934F, 0xB493C515AC51A3CF, 0xB4119B4D92C78A45,  // 0x000082B8 
};

u64 _HIDAN_room_8_tex_000082D8[] = 
{
	0x99C9C979979CCCCC, 0xCCBCCCCBC9999CC6, 0x854405A8588585A5, 0x0052040400004040,  // 0x000082D8 
	0x4410105404442420, 0x2252241220110100, 0x0021024220002402, 0x0457627711002210,  // 0x000082F8 
	0x1100627722107773, 0x7222074411230012, 0x122161B701375540, 0x5702275021761113,  // 0x00008318 
	0x2011052622545122, 0x77227B0231201116, 0x2210540232021222, 0x2367711222150132,  // 0x00008338 
	0x2331554232263777, 0x6077702331051333, 0x4131045550400545, 0x0444144000001363,  // 0x00008358 
	0x1261040500266233, 0x3633672000001620, 0x1121214021000414, 0x4110411001131210,  // 0x00008378 
	0x1111100001044445, 0x0145110411111130, 0x0223612110220210, 0x2111132111263231,  // 0x00008398 
	0xA85505548A88A888, 0x8884501188505500, 0x5545251058580145, 0x0554534885125000,  // 0x000083B8 
	0x54041A025801DDDA, 0xA05453A855110401, 0x45400A4145858450, 0x1155335505140032,  // 0x000083D8 
	0x0010588400000050, 0x0401351550150131, 0x000558A420002321, 0x0412041010555163,  // 0x000083F8 
	0x5555885588588885, 0x8888A85805885105, 0x5045584545022222, 0x1002020555555120,  // 0x00008418 
	0x3331233363333322, 0x2213133262221200, 0x2237666632213137, 0x3333366376666104,  // 0x00008438 
	0x0200010010241004, 0x0580111010100002, 0x1331332330612212, 0x1141122131331230,  // 0x00008458 
	0x85580585885A8885, 0x88A8855558505555, 0x8540044855855585, 0x8885840554405444,  // 0x00008478 
	0x5440054555455884, 0x5585844440510000, 0x4000144444004050, 0x4040120144534024,  // 0x00008498 
	0x5020201004005555, 0x0001021212420312, 0x0113322110140005, 0x0212273120023312,  // 0x000084B8 
	0x1223720330210100, 0x0612232630373203, 0x6207372237363210, 0x2727777332337403,  // 0x000084D8 
	0x3337732773733231, 0x3723377772777322, 0x7777733677776332, 0x3767777773277730,  // 0x000084F8 
	0x0230252000204045, 0x1000032102520304, 0x0222702220210100, 0x1213362321072310,  // 0x00008518 
	0x88552855588AA88A, 0xA8A5A55555505454, 0x5444044555558888, 0x5888840454400444,  // 0x00008538 
	0x5445145455545855, 0x55A5544545404454, 0x4005114144044554, 0x4454440014115110,  // 0x00008558 
	0x1100010110010854, 0x0550111010100021, 0x1111211201201010, 0x1101021031121013,  // 0x00008578 
	0x2311111312201411, 0x1101022131111133, 0x2321121313102011, 0x1102022131111233,  // 0x00008598 
	0x3631333613212113, 0x2112113163331373, 0x6966666336313233, 0x2322166363666393,  // 0x000085B8 
	0x1201314541144440, 0x4440511550131114, 0x1613611111311012, 0x1001121111163260,  // 0x000085D8 
	0x84555558855858AA, 0x8885855588555540, 0x4055058885055588, 0x8855505885505540,  // 0x000085F8 
	0x0400005550550888, 0x5550450555015004, 0x4101100000004044, 0x0044000000011114,  // 0x00008618 
	0x0221111040115410, 0x4005110401111131, 0x2221321111101110, 0x0110011111231322,  // 0x00008638 
	0x3332332112321121, 0x1211332122332321, 0x3333333322363222, 0x3222632232333323,  // 0x00008658 
	0x3666363333373337, 0x7366633636366632, 0x0633333666233336, 0x3337373633333332,  // 0x00008678 
	0x2321133123121222, 0x3332361221211131, 0x1101233111012202, 0x1001011112321330,  // 0x00008698 
	0x0102111111001100, 0x0102002110010112, 0x0012223302022042, 0x0221313222111000,  // 0x000086B8 
};

u64 _HIDAN_room_8_tex_000086D8[] = 
{
	0x97736797B9999997, 0x97736797B9999997, 0x4040005054540050, 0x5050555444540050,  // 0x000086D8 
	0x0020110240201110, 0x1212420450201112, 0x2045613750456100, 0x13230217A0456113,  // 0x000086F8 
	0x1040103954001030, 0x1233230780401036, 0x3111243B54214110, 0x0123212744214133,  // 0x00008718 
	0x3200756BA5134012, 0x1246703B55164133, 0x3024652B88014111, 0x0112742758025116,  // 0x00008738 
	0x31022A174A2A8111, 0x01277536082A8116, 0x10237A162A258401, 0x0027B8202A258006,  // 0x00008758 
	0x0226341242248540, 0x024B74220224A512, 0x224720120201A840, 0x102776202202A801,  // 0x00008778 
	0x200B701042025800, 0x004BB23222024811, 0x2222773222223540, 0x2023BB7232233500,  // 0x00008798 
	0x222023763B732002, 0x004337777B770000, 0x2858452488554520, 0x0084845028580524,  // 0x000087B8 
	0x77797B32C7777BB9, 0x77797B72C7777BB9, 0x21321234C2300300, 0x31321235C2310300,  // 0x000087D8 
	0x1132121472310700, 0x1122121472300700, 0x4002132071220730, 0x4002132070220730,  // 0x000087F8 
	0x0411131131230304, 0x0411131132320304, 0x0011111171214201, 0x0011111270220201,  // 0x00008818 
	0x0001100260011210, 0x0001100260010210, 0x0000111331000001, 0x0000110331000001,  // 0x00008838 
	0x0000031270000201, 0x0000031270000201, 0x4111011491100005, 0x5111011491100005,  // 0x00008858 
	0x0111031191110000, 0x0111032191110000, 0x1110132271012000, 0x1110132171012000,  // 0x00008878 
	0x1021121061101310, 0x1021121090101310, 0x1211111161111112, 0x1211111161111112,  // 0x00008898 
	0x2132331091622122, 0x2132331091622121, 0x2333311566132222, 0x2333311566132222,  // 0x000088B8 
	0x97936797B9999997, 0x97936697B9999997, 0x6662323763666363, 0x6662333763666363,  // 0x000088D8 
	0x9661322227163163, 0x9661612227163166, 0x7332313200561363, 0x7622313200561363,  // 0x000088F8 
	0x7622311104010363, 0x6622301104010363, 0x9622100310110331, 0x9622200310110331,  // 0x00008918 
	0x9332312210410134, 0x9332312210410135, 0x6312110200410130, 0x6312110200410130,  // 0x00008938 
	0x7232121100400120, 0x7232121100400120, 0x9621100042405032, 0x7631010042405031,  // 0x00008958 
	0x7333002010000014, 0x7326002010000114, 0x6322320220040010, 0x6312320220040014,  // 0x00008978 
	0x7321322024200004, 0x6332222024200004, 0x6323312222000002, 0x7313322222000002,  // 0x00008998 
	0x9233222222201200, 0x9233222222201200, 0x6214202740430325, 0x6214202740430324,  // 0x000089B8 
	0x66697B72C7767BB9, 0x66697B72C7767BB9, 0x31321225C2310300, 0x31321225C2310300,  // 0x000089D8 
	0x1132121472300700, 0x1132121472300700, 0x0402132071220634, 0x0402132071220720,  // 0x000089F8 
	0x0411131131230300, 0x4411131131230300, 0x0011111171224241, 0x0011111171224241,  // 0x00008A18 
	0x0001100260011211, 0x0001100260011211, 0x0000111331000000, 0x0000111331000001,  // 0x00008A38 
	0x0000031270000201, 0x0000031270000200, 0x4111011491100005, 0x0111011491100005,  // 0x00008A58 
	0x0111031191110005, 0x0111031191110000, 0x1110132271011101, 0x1110132271012000,  // 0x00008A78 
	0x1021121061101300, 0x1021121061101301, 0x1211111161111112, 0x1211111161111112,  // 0x00008A98 
	0x2132331091332122, 0x2132331091622122, 0x2333311566232222, 0x2333311566132221,  // 0x00008AB8 
};

u64 _HIDAN_room_8_tex_00008AD8[] = 
{
	0x5A057B478AC97287, 0x934D934B9B8D8BCB, 0x834983498B4F8B49, 0x838D934B7B4B7B0B,  // 0x00008AD8 
	0x7B478B09938782C9, 0x6AC78247830B93C9, 0x8B49834D9C0B834F, 0x728B8B0B938B8AC9,  // 0x00008AF8 
	0x72478B4B72897AC7, 0x8BCD8B8F8B8D8B8D, 0x7B0783097ACB8309, 0x8B8B838B930B8349,  // 0x00008B18 
	0x72877AC982C96B05, 0x62458309830B7B0B, 0x73078309834B7B0B, 0x6AC77B078B0B7AC5,  // 0x00008B38 
	0x82C9834B6A857207, 0x834983498B098307, 0x7287830592C982CB, 0x82CB7B4B93498B4B,  // 0x00008B58 
	0x6AC982C97B496245, 0x6A4783098AC9830B, 0x82CB93098B896A85, 0x6A4582C793457AC9,  // 0x00008B78 
	0x5A47728B724759C7, 0x7A477AC97AC57287, 0x6A477AC58B498307, 0x728972878A857A85,  // 0x00008B98 
	0x720572897AC559C5, 0x72477A4772877B09, 0x7A897B4B7AC97207, 0x72058AC982C56245,  // 0x00008BB8 
	0x5185728562076A45, 0x6A457A876A0761C3, 0x620562477AC76AC7, 0x72876AC572477203,  // 0x00008BD8 
	0x69C37A8572896205, 0x59C5724572896289, 0x7287724562056205, 0x6A45620772455205,  // 0x00008BF8 
	0x61C562C56A457AC5, 0x728572855A435205, 0x598362457A876A47, 0x6285518551C34985,  // 0x00008C18 
	0x59C35A035A036207, 0x6A83728762055A03, 0x5A0359C5620361C5, 0x59C5624361C55985,  // 0x00008C38 
	0x728562C962056A03, 0x8B077A89620549C3, 0x518349C35A0561C3, 0x6A0359C349034141,  // 0x00008C58 
	0x5A054183494351C3, 0x72055A4561C559C5, 0x49835A056A857A85, 0x52034A0359C34983,  // 0x00008C78 
	0x620562496A856A47, 0x72475A4551C55983, 0x4143418341435943, 0x49C3498149434903,  // 0x00008C98 
	0x5983414139435183, 0x598359C3518559C3, 0x61C3418151836A05, 0x4943410141434101,  // 0x00008CB8 
	0x7247834B8B8B7289, 0x6A476A436A456185, 0x4901390149434141, 0x3943390341034143,  // 0x00008CD8 
	0x4941390139033943, 0x3901514361835983, 0x498330C138C159C3, 0x48C1490338C13903,  // 0x00008CF8 
	0x8307934B9B8D8349, 0x7A475A475A034983, 0x41434141940D8B91, 0x9B8B934D9B89930D,  // 0x00008D18 
	0x7B498B498B8B9349, 0x7B4B8BCDA411A3CB, 0x9BCB930D938D8B0B, 0x8B898B4B8B098347,  // 0x00008D38 
	0x7AC7938F938D8B0B, 0x72875A0552054185, 0x39033901838D938B, 0xA38D9B8D830B8B49,  // 0x00008D58 
	0x8B0993CF9BCD8B4B, 0x8AC993CF940F9B4D, 0x9C0D9C119C099389, 0x934D8B8B8B0B8309,  // 0x00008D78 
	0x72C9834993097289, 0x7287628562034983, 0x49414181934D6245, 0x6A457A456A055A05,  // 0x00008D98 
	0x5A05728762457245, 0x6A476A475A055A45, 0x72477AC97A857243, 0x5A437A8562056243,  // 0x00008DB8 
	0x7AC98B0F8B0D7289, 0x62856A8551C35983, 0x494341839B8F7245, 0x62476AC772436203,  // 0x00008DD8 
	0x5A036245728582C7, 0x6AC56A0551C36247, 0x6287728972877245, 0x5A036A455A476A05,  // 0x00008DF8 
	0x8309938D838B82CB, 0x7A85720559C359C1, 0x51414101938F72C5, 0x6A85624572055183,  // 0x00008E18 
	0x49836A45828972C9, 0x72455A4559C56A47, 0x72C7620551836245, 0x6205828572837287,  // 0x00008E38 
	0x7A87938B83098B49, 0x7AC7728559C54981, 0x39433941940D82CB, 0x628951C5410130C1,  // 0x00008E58 
	0x20C161C78B076A45, 0x82877AC76A876A45, 0x628928C130812903, 0x418372056A057205,  // 0x00008E78 
	0x5A07830B83498309, 0x6A45724569C549C3, 0x398340C18B4F7307, 0x5A0530C138817207,  // 0x00008E98 
	0x9C0F51836A875183, 0x62876AC972C96287, 0x62473943728B2881, 0x2081414372476A07,  // 0x00008EB8 
	0x62C5938982CB6A45, 0x72476A05624361C5, 0x518139018B4B6A47, 0x5185308131014943,  // 0x00008ED8 
	0x4103628551C33943, 0x51835A4549C351C3, 0x6A45514359C35183, 0x288138C16A455A05,  // 0x00008EF8 
	0x82898B8D7AC972C5, 0x72056A05598349C3, 0x518138C18B0D6205, 0x51C3624562055183,  // 0x00008F18 
	0x5A07394328C13081, 0x1881308131012881, 0x410351C56A875A03, 0xA40FAC0B6A456203,  // 0x00008F38 
	0x7289934D838D8347, 0x82C97A05620351C3, 0x5103390183896245, 0x6245834B72854183,  // 0x00008F58 
	0x2901208128812081, 0x10812081288128C1, 0x410159836A476289, 0x93CB724772056183,  // 0x00008F78 
	0x7B058B4D934B8B49, 0x7A476285624549C3, 0x494130C1830D6203, 0x5A475A4561C53101,  // 0x00008F98 
	0x208128C1518359C5, 0x418349C36A857AC7, 0x7243410131015185, 0x41837A836A455185,  // 0x00008FB8 
	0x83078389830B834D, 0x6A85620569C361C5, 0x518139018B8D7249, 0x6AC55A0562056A47,  // 0x00008FD8 
	0x5A05498551C349C3, 0x598361C56A476AC5, 0x6247624761C55A07, 0x498362035A0359C3,  // 0x00008FF8 
	0x82498B0B8309838B, 0x7B056A4559C35183, 0x390338C1834F72C7, 0x7A8762055A476247,  // 0x00009018 
	0x59C351C349C35985, 0x61C371C57A477B0B, 0x6A897A856A075A43, 0x28C1620562456243,  // 0x00009038 
	0x6AC7838D838F938D, 0x72876A83598549C3, 0x4981390393CD7287, 0x72C54983494361C5,  // 0x00009058 
	0x514351C3598559C5, 0x49C351C572056A85, 0x724762877AC76287, 0x308151C371C57205,  // 0x00009078 
	0x62C78349834B8B49, 0x7305720569C351C3, 0x4181494193CD7285, 0x620538C159C561C3,  // 0x00009098 
	0x498349C349C34983, 0x49C35A05620572C7, 0x72C57A878B096A85, 0x51C5390169C551C5,  // 0x000090B8 
	0x6A478B0F8B8D8309, 0x73097A8561C559C3, 0x51834101938F6245, 0x51C330C169C351C3,  // 0x000090D8 
	0x514349C359C551C5, 0x59C362037AC57287, 0x7287828982C77309, 0x59C539435A055985,  // 0x000090F8 
	0x72857B0D8B89834B, 0x8AC76A4559C54943, 0x310331018B8D59C5, 0x49454A036A454943,  // 0x00009118 
	0x518361C36A056203, 0x61C5624562037A89, 0x72857AC772C77A45, 0x6A4549835A4359C5,  // 0x00009138 
	0x7B0983498BC9938D, 0x82C7824761C34943, 0x38C330C1930949C3, 0x41436AC959C54983,  // 0x00009158 
	0x49C35A0569C34943, 0x69C5724572477287, 0x7A877AC972457245, 0x6A8769C35A455983,  // 0x00009178 
	0x83098B499B499B8D, 0x728772876A055203, 0x4103414183495205, 0x59C36A47938D7B49,  // 0x00009198 
	0x624559C551C34983, 0x72456A077A057285, 0x828782457A878B4D, 0x9B8B620552455983,  // 0x000091B8 
	0x6AC5938D8BCF934B, 0x6A87728361C54983, 0x3941494193CF59C5, 0x51C35A058B8BA415,  // 0x000091D8 
	0x938F8B0B9B4FA413, 0x82895A076A05AC51, 0x9C4F9C0F9BCF9C51, 0x72CB71C56A856203,  // 0x000091F8 
	0x72C9938D8B098B8B, 0x82C9828752034985, 0x414341019B4D6205, 0x51856A4549C36207,  // 0x00009218 
	0x72876A47938DA415, 0x82875A036A89A451, 0x7A896A4783096A47, 0x7245724572036A03,  // 0x00009238 
	0x7287834B7AC77AC7, 0x72C572435A455183, 0x59434901934D5A05, 0x49C3620551C33983,  // 0x00009258 
	0x59C361C369C34183, 0x7245620562056207, 0x6205620762457A45, 0x7245624751C569C5,  // 0x00009278 
	0x7A897B097B0B8349, 0x6287624379C551C3, 0x518149838B0959C5, 0x49836A45620349C3,  // 0x00009298 
	0x4A0551C351C37243, 0x6AC75A075A036A07, 0x6207728772476AC7, 0x62035A0351C56207,  // 0x000092B8 
};

u64 _HIDAN_room_8_tex_000092D8[] = 
{
	0xB041A841A0019041, 0x90419841A881B0C1, 0xA081A841B041C841, 0xD8C1E0C1E941E981,  // 0x000092D8 
	0xE141C901B0419841, 0x90419841A841C881, 0xF081F001E841E001, 0xC001B801B041B001,  // 0x000092F8 
	0xB041A00198019801, 0x9041A081C081B881, 0xA841B081A841B841, 0xC881C881D0C1D941,  // 0x00009318 
	0xC901B8C1A8419841, 0x90419881A881D0C1, 0xF081F841F881E841, 0xD001B001A801A841,  // 0x00009338 
	0xA841980198419801, 0x9801B041C881C881, 0xB881B881A841A841, 0xB841B841B841C081,  // 0x00009358 
	0xB081A881A8419041, 0x88419081A8C1D101, 0xE8C1F881F881F081, 0xD001B841A041A841,  // 0x00009378 
	0x984188419041A041, 0xA841B841C841C841, 0xC881C841B841A041, 0xA841A841B041A841,  // 0x00009398 
	0xA0419841A0419841, 0x88819081A8C1D101, 0xE141F081F881F001, 0xE041C041A841A041,  // 0x000093B8 
	0x900180418041A001, 0xB841C041C841C881, 0xD0C1D081B841A841, 0xA041A041A081B081,  // 0x000093D8 
	0xA081888190419041, 0x88818881A8C1C941, 0xD941E881F881F881, 0xD841C841A8419801,  // 0x000093F8 
	0x880180017841A001, 0xC841D081C881C881, 0xD8C1D0C1C041A841, 0xA0419841A081A881,  // 0x00009418 
	0xA881908180818841, 0x90819081A081B0C1, 0xC901D8C1F081F081, 0xE841C841A8419801,  // 0x00009438 
	0x900188018001A801, 0xC841C881C881D0C1, 0xD901D0C1C081A881, 0x9841984190819881,  // 0x00009458 
	0xA881A08188819881, 0x988190819881A0C1, 0xA8C1B8C1D841E881, 0xE041C841A8419801,  // 0x00009478 
	0x880180018801A801, 0xB041B881C081C881, 0xD0C1D081C041A081, 0x9841908190819081,  // 0x00009498 
	0xA881A8819841A081, 0xA0819041888188C1, 0x98C1A8C1B0C1D881, 0xD041B841A8019801,  // 0x000094B8 
	0x800180018801A001, 0xA041A841B881C881, 0xD081C881B081A081, 0x9081904190819881,  // 0x000094D8 
	0xA8C1A8C198419881, 0x90818041888188C1, 0x88C19901A0C1C041, 0xB801A841A0018801,  // 0x000094F8 
	0x8001800178019001, 0x98019841A881B081, 0xB881B881A8819081, 0x8041888190819881,  // 0x00009518 
	0xA0C1A8C1A8819081, 0x8881808188C188C1, 0x890190C1A0C1A881, 0xA881A00190018801,  // 0x00009538 
	0x8001780170018001, 0x8801900198819881, 0xA081A88198818881, 0x78418041888190C1,  // 0x00009558 
	0x98C1A8C1A8819881, 0x888188C188C188C1, 0x910198C19881A041, 0x9841980190018801,  // 0x00009578 
	0x8801700170017801, 0x8001880198419881, 0xA081988188817881, 0x68417041788190C1,  // 0x00009598 
	0xA0C1A881A8C19881, 0x888188C191019101, 0xA0C19881A0419841, 0x9001900188019001,  // 0x000095B8 
	0x8801700170017801, 0x88019001A041A081, 0x9041888188817081, 0x6841684180819081,  // 0x000095D8 
	0xA081A081A881A081, 0x908190C19901A0C1, 0xA881A041A041A841, 0x9801900188018801,  // 0x000095F8 
	0x8001700170017801, 0x88019801A0019841, 0x8841904180417041, 0x684170818081A081,  // 0x00009618 
	0xA0C1A0C1A881A081, 0x9881A0C1A0C1C081, 0xB881A041B041B041, 0xA041A04188018801,  // 0x00009638 
	0x7001680170017801, 0x8801900198019041, 0x8841884180417041, 0x7041788180819881,  // 0x00009658 
	0xA0C1A0C1A881A041, 0xA881B081B041D041, 0xC841A841B041B041, 0xB041B041A0419001,  // 0x00009678 
	0x8001700168017801, 0x9001980198419841, 0x8841884180417841, 0x70417881808198C1,  // 0x00009698 
	0xA0C1A081B081A881, 0xA881B841D001D841, 0xC881C081B081B881, 0xC081C081C041A041,  // 0x000096B8 
	0x9001800170018001, 0x88019801A0419841, 0x8841804178017001, 0x70417041808198C1,  // 0x000096D8 
	0x9081A081B081B081, 0xB081C801E001E041, 0xD081C881B881C081, 0xD081D841D041B041,  // 0x000096F8 
	0x9841900178017801, 0x8801A041A841A041, 0x9041800170017001, 0x7001704170818881,  // 0x00009718 
	0x90819841A881B041, 0xB841C801E801E841, 0xD881D081C881C081, 0xD0C1D041D041C041,  // 0x00009738 
	0xA841900180017801, 0x8801A001B041A841, 0x9841884178017001, 0x7801704170418041,  // 0x00009758 
	0x8841A041B081B841, 0xC001D801F841F881, 0xF8C1E0C1D0C1C8C1, 0xC0C1C841C841C041,  // 0x00009778 
	0xA041900180018801, 0x8801A841B841A841, 0xA041884178017801, 0x7841704180418041,  // 0x00009798 
	0x80419841B081B041, 0xC001F041F841F905, 0xF987F8C1E0C1D8C1, 0xC881B881B881B041,  // 0x000097B8 
	0xA041904180018801, 0x9001B041C841C041, 0xA881984180417841, 0x7841788190819081,  // 0x000097D8 
	0x88419841A841B041, 0xC801F041F881F989, 0xF9C7F903F081E0C1, 0xD081B881A841A041,  // 0x000097F8 
	0x9841904188018801, 0x9801B001C841C881, 0xB081A08198418841, 0x788188C1A0C1A081,  // 0x00009818 
	0xA041904190419841, 0xB081E841F8C1F987, 0xF9C9F903F881E8C1, 0xD8C1B841A041A041,  // 0x00009838 
	0x9841884190018001, 0x9801B001C841D081, 0xC0C1C081B041A041, 0xA081A0C1B101B0C1,  // 0x00009858 
	0xB081984180018841, 0xA081D081F081F905, 0xF9C9F985F8C1F0C1, 0xD081C081B841A841,  // 0x00009878 
	0xA801984190418801, 0x8801A001B841D0C1, 0xD881C881C841C041, 0xA8C1B0C1C901C901,  // 0x00009898 
	0xC081A84190418841, 0x8841A881E081F881, 0xF947F901F8C1E8C1, 0xD881D041C041C041,  // 0x000098B8 
	0xB801A001A0419801, 0x8801A001B041C881, 0xD8C1D081D881D081, 0xB901C101D101C8C1,  // 0x000098D8 
	0xC881A08190418841, 0x80419041B081E8C1, 0xF8C1F8C1F0C1E881, 0xD881D081D041D801,  // 0x000098F8 
	0xB801A04198019801, 0x8801A001A841C841, 0xD8C1D081D881D0C1, 0xD101C941D101D101,  // 0x00009918 
	0xB8C1A04188018841, 0x784188418841C081, 0xE881E081E081E0C1, 0xD041D041D841D841,  // 0x00009938 
	0xC001A80198019801, 0x88019801A001C041, 0xD081C881C841D881, 0xD901D141D941D901,  // 0x00009958 
	0xB881A04190418041, 0x784178418841A081, 0xC881D8C1D0C1D081, 0xC881D041E041D841,  // 0x00009978 
	0xC801B041A001A001, 0x98018841A041C081, 0xB8C1B081C041D041, 0xD101E141D941D901,  // 0x00009998 
	0xC8C1A04190418041, 0x704178419041A881, 0xC081C881C881B881, 0xC841D041E041E001,  // 0x000099B8 
	0xD001A8419801A001, 0x980188019841B8C1, 0xB0C1A841B841C881, 0xD101E181E981E141,  // 0x000099D8 
	0xC101A04190418041, 0x784178419841B081, 0xC881D081C081B041, 0xB841C841D041E001,  // 0x000099F8 
	0xC001A80198019801, 0x98019841A881B8C1, 0xB081A041B041C0C1, 0xD101E181F201EA01,  // 0x00009A18 
	0xC941B0C190418841, 0x80417841A041C841, 0xD081D041C081B041, 0xA801C001C841D801,  // 0x00009A38 
	0xB841A80198018801, 0x9841A041B0C1B8C1, 0xA881A041B041C081, 0xD101E181F201FA01,  // 0x00009A58 
	0xE9C1C141A8419041, 0x88418041A841D801, 0xD841E041C801B841, 0xB041B001C041C841,  // 0x00009A78 
	0xB041A041A0019841, 0x90419841A881B8C1, 0xA881A041B041C8C1, 0xD8C1E141F181FA01,  // 0x00009A98 
	0xE9C1D141B0419841, 0x90419041A841D801, 0xF041E801E001C801, 0xB801B041B841B841,  // 0x00009AB8 
};

static u8 unaccounted9AD8[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


