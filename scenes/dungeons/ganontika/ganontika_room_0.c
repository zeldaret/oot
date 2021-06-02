#include <ultra64.h>
#include <z64.h>
#include "ganontika_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "ganontika_scene.h"



SCmdEchoSettings _ganontika_room_0_set0000_cmd00 = { 0x16, 0, { 0 }, 0x06 }; // 0x0000
SCmdRoomBehavior _ganontika_room_0_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _ganontika_room_0_set0000_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0010
SCmdTimeSettings _ganontika_room_0_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _ganontika_room_0_set0000_cmd04 = { 0x0A, 0, (u32)&_ganontika_room_0_meshHeader_00000110 }; // 0x0020
SCmdObjectList _ganontika_room_0_set0000_cmd05 = { 0x0B, 0x06, (u32)_ganontika_room_0_objectList_00000040 }; // 0x0028
SCmdActorList _ganontika_room_0_set0000_cmd06 = { 0x01, 0x0C, (u32)_ganontika_room_0_actorList_0000004C }; // 0x0030
SCmdEndMarker _ganontika_room_0_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _ganontika_room_0_objectList_00000040[] = 
{
	OBJECT_DEMO_KEKKAI,
	OBJECT_BB,
	OBJECT_IK,
	OBJECT_AM,
	OBJECT_TRAP,
	OBJECT_SYOKUDAI,
};

ActorEntry _ganontika_room_0_actorList_0000004C[12] = 
{
	{ ACTOR_EN_AM, -111, 210, 792, 0, 0, 0, 0xFFFF }, //0x0000004C 
	{ ACTOR_EN_AM, 109, 210, 792, 0, 0, 0, 0xFFFF }, //0x0000005C 
	{ ACTOR_EN_IK, 3, 150, 690, 0, 0, 0, 0xFF02 }, //0x0000006C 
	{ ACTOR_EN_LIGHT, 90, 371, 1854, 0, 0, 0, 0x03F5 }, //0x0000007C 
	{ ACTOR_EN_LIGHT, -91, 280, 1453, 0, 0, 0, 0x03F5 }, //0x0000008C 
	{ ACTOR_EN_LIGHT, -89, 371, 1853, 0, 0, 0, 0x03F5 }, //0x0000009C 
	{ ACTOR_EN_LIGHT, 90, 280, 1454, 0, 0, 0, 0x03F5 }, //0x000000AC 
	{ ACTOR_OBJ_SYOKUDAI, -154, 270, 634, 0, 0, 0, 0x2400 }, //0x000000BC 
	{ ACTOR_OBJ_SYOKUDAI, 149, 270, 632, 0, 0, 0, 0x2400 }, //0x000000CC 
	{ ACTOR_EN_BB, -27, 190, 1079, 0, 0, 0, 0x00FB }, //0x000000DC 
	{ ACTOR_EN_BB, 34, 242, 1078, 0, 0, 0, 0x11FB }, //0x000000EC 
	{ ACTOR_EN_TRAP, 70, 150, 793, 0, -16384, 0, 0x0310 }, //0x000000FC 
};

static u32 pad10C = 0;

MeshHeader2 _ganontika_room_0_meshHeader_00000110 = { { 2 }, 0x11, (u32)&_ganontika_room_0_meshDListEntry_0000011C, (u32)&(_ganontika_room_0_meshDListEntry_0000011C) + sizeof(_ganontika_room_0_meshDListEntry_0000011C) };

MeshEntry2 _ganontika_room_0_meshDListEntry_0000011C[17] = 
{
	{ 0, 520, 2233, 160, (u32)_ganontika_room_0_dlist_00000550, 0 },
	{ 0, 250, 1073, 160, (u32)_ganontika_room_0_dlist_00000B30, 0 },
	{ 0, 520, 2413, 191, (u32)_ganontika_room_0_dlist_00001088, 0 },
	{ 0, 520, 2413, 191, 0, (u32)_ganontika_room_0_dlist_00008910 },
	{ 0, 290, 893, 306, (u32)_ganontika_room_0_dlist_00001670, 0 },
	{ 0, 475, 2053, 218, (u32)_ganontika_room_0_dlist_000022A8, 0 },
	{ 0, 295, 1253, 218, (u32)_ganontika_room_0_dlist_00002F98, 0 },
	{ 0, 430, 1853, 168, (u32)_ganontika_room_0_dlist_00003658, 0 },
	{ 0, 340, 1453, 168, (u32)_ganontika_room_0_dlist_00003C20, 0 },
	{ 0, 385, 1653, 218, (u32)_ganontika_room_0_dlist_00004860, 0 },
	{ 0, 290, 723, 330, (u32)_ganontika_room_0_dlist_000052B0, 0 },
	{ 90, 360, 1853, 37, (u32)_ganontika_room_0_dlist_00005EC8, 0 },
	{ -90, 360, 1853, 37, (u32)_ganontika_room_0_dlist_00006608, 0 },
	{ 90, 270, 1453, 37, (u32)_ganontika_room_0_dlist_00006D48, 0 },
	{ -90, 270, 1453, 37, (u32)_ganontika_room_0_dlist_00007488, 0 },
	{ 0, 180, 793, 134, (u32)_ganontika_room_0_dlist_000079E8, 0 },
	{ 0, 210, 633, 181, (u32)_ganontika_room_0_dlist_00007DA0, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

Vtx_t _ganontika_room_0_vertices_00000230[12] = 
{
	 { 70, 620, 2293, 0, 7168, -3840, 68, 74, 83, 255 }, // 0x00000230
	 { 110, 580, 2173, 0, 5632, -2816, 68, 74, 83, 255 }, // 0x00000240
	 { 110, 580, 2293, 0, 7168, -2816, 68, 74, 83, 255 }, // 0x00000250
	 { 70, 620, 2173, 0, 5632, -3840, 68, 74, 83, 255 }, // 0x00000260
	 { 70, 620, 2173, 0, 9557, 1707, 68, 74, 83, 255 }, // 0x00000270
	 { -70, 620, 2293, 0, 10581, 0, 68, 74, 83, 255 }, // 0x00000280
	 { -70, 620, 2173, 0, 9557, 0, 68, 74, 83, 255 }, // 0x00000290
	 { 70, 620, 2293, 0, 10581, 1707, 68, 74, 83, 255 }, // 0x000002A0
	 { -70, 620, 2173, 0, 4608, -1536, 68, 74, 83, 255 }, // 0x000002B0
	 { -70, 620, 2293, 0, 3072, -1536, 68, 74, 83, 255 }, // 0x000002C0
	 { -110, 580, 2173, 0, 4608, -512, 68, 74, 83, 255 }, // 0x000002D0
	 { -110, 580, 2293, 0, 3072, -512, 68, 74, 83, 255 }, // 0x000002E0
};

Vtx_t _ganontika_room_0_vertices_000002F0[6] = 
{
	 { 0, 420, 2293, 0, 2048, -5120, 100, 89, 67, 255 }, // 0x000002F0
	 { -110, 420, 2173, 0, 0, -3072, 100, 89, 67, 255 }, // 0x00000300
	 { -110, 420, 2293, 0, 0, -5120, 100, 89, 67, 255 }, // 0x00000310
	 { 0, 420, 2173, 0, 2048, -3072, 134, 119, 89, 255 }, // 0x00000320
	 { 110, 420, 2173, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x00000330
	 { 110, 420, 2293, 0, 4096, -5120, 100, 89, 67, 255 }, // 0x00000340
};

Vtx_t _ganontika_room_0_vertices_00000350[3] = 
{
	 { 110, 480, 2173, 0, 5632, -256, 147, 131, 97, 255 }, // 0x00000350
	 { 110, 580, 2293, 0, 7168, -2816, 68, 74, 83, 255 }, // 0x00000360
	 { 110, 580, 2173, 0, 5632, -2816, 68, 74, 83, 255 }, // 0x00000370
};

Vtx_t _ganontika_room_0_vertices_00000380[6] = 
{
	 { 110, 480, 2173, 0, 0, 0, 147, 131, 97, 255 }, // 0x00000380
	 { 110, 420, 2173, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00000390
	 { 110, 420, 2293, 0, 4096, 1024, 100, 89, 67, 255 }, // 0x000003A0
	 { -110, 420, 2173, 0, 4096, 1024, 100, 89, 67, 255 }, // 0x000003B0
	 { -110, 480, 2173, 0, 4096, 0, 147, 131, 97, 255 }, // 0x000003C0
	 { -110, 420, 2293, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000003D0
};

Vtx_t _ganontika_room_0_vertices_000003E0[6] = 
{
	 { -110, 480, 2173, 0, 4608, 2048, 147, 131, 97, 255 }, // 0x000003E0
	 { -110, 580, 2173, 0, 4608, -512, 68, 74, 83, 255 }, // 0x000003F0
	 { -110, 580, 2293, 0, 3072, -512, 68, 74, 83, 255 }, // 0x00000400
	 { 110, 480, 2173, 0, 5632, -256, 147, 131, 97, 255 }, // 0x00000410
	 { 110, 480, 2293, 0, 7168, -256, 100, 89, 67, 255 }, // 0x00000420
	 { 110, 580, 2293, 0, 7168, -2816, 68, 74, 83, 255 }, // 0x00000430
};

Vtx_t _ganontika_room_0_vertices_00000440[3] = 
{
	 { 110, 480, 2173, 0, 0, 0, 147, 131, 97, 255 }, // 0x00000440
	 { 110, 420, 2293, 0, 4096, 1024, 100, 89, 67, 255 }, // 0x00000450
	 { 110, 480, 2293, 0, 4096, 0, 100, 89, 67, 255 }, // 0x00000460
};

Vtx_t _ganontika_room_0_vertices_00000470[3] = 
{
	 { -110, 480, 2173, 0, 4608, 2048, 147, 131, 97, 255 }, // 0x00000470
	 { -110, 580, 2293, 0, 3072, -512, 68, 74, 83, 255 }, // 0x00000480
	 { -110, 480, 2293, 0, 3072, 2048, 100, 89, 67, 255 }, // 0x00000490
};

Vtx_t _ganontika_room_0_vertices_000004A0[3] = 
{
	 { -110, 480, 2173, 0, 4096, 0, 147, 131, 97, 255 }, // 0x000004A0
	 { -110, 480, 2293, 0, 0, 0, 100, 89, 67, 255 }, // 0x000004B0
	 { -110, 420, 2293, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000004C0
};

Vtx_t _ganontika_room_0_vertices_000004D0[8] = 
{
	 { -110, 420, 2173, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004D0
	 { 110, 420, 2173, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004E0
	 { -110, 620, 2173, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004F0
	 { 110, 620, 2173, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000500
	 { -110, 420, 2293, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000510
	 { 110, 420, 2293, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000520
	 { -110, 620, 2293, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000530
	 { 110, 620, 2293, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000540
};

Gfx _ganontika_room_0_dlist_00000550[] =
{
	gsDPPipeSync(), // 0x00000550
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000558
	gsSPVertex(_ganontika_room_0_vertices_000004D0, 8, 0), // 0x00000560
	gsSPCullDisplayList(0, 7), // 0x00000568
	gsDPPipeSync(), // 0x00000570
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000578
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000580
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000588
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000590
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000598
	gsDPLoadSync(), // 0x000005A0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000005A8
	gsDPPipeSync(), // 0x000005B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000005B8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000005C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000005C8
	gsDPTileSync(), // 0x000005D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000005D8
	gsDPLoadSync(), // 0x000005E0
	gsDPLoadTLUTCmd(7, 255), // 0x000005E8
	gsDPPipeSync(), // 0x000005F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000005F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000600
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000608
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000610
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000618
	gsSPVertex(_ganontika_room_0_vertices_00000230, 12, 0), // 0x00000620
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00000628
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00000630
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x00000638
	gsDPPipeSync(), // 0x00000640
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_0_tex_00007F48), // 0x00000648
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000650
	gsDPLoadSync(), // 0x00000658
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000660
	gsDPPipeSync(), // 0x00000668
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000670
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000678
	gsSPVertex(_ganontika_room_0_vertices_000002F0, 6, 0), // 0x00000680
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00000688
	gsSP2Triangles(3, 0, 4, 0, 0, 5, 4, 0), // 0x00000690
	gsDPPipeSync(), // 0x00000698
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000006A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000006A8
	gsDPLoadSync(), // 0x000006B0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000006B8
	gsDPPipeSync(), // 0x000006C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000006C8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000006D0
	gsSPVertex(_ganontika_room_0_vertices_00000350, 3, 0), // 0x000006D8
	gsSP1Triangle(0, 1, 2, 0), // 0x000006E0
	gsDPPipeSync(), // 0x000006E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x000006F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x000006F8
	gsDPLoadSync(), // 0x00000700
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000708
	gsDPPipeSync(), // 0x00000710
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000718
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000720
	gsSPVertex(_ganontika_room_0_vertices_00000380, 6, 0), // 0x00000728
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000730
	gsDPPipeSync(), // 0x00000738
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000740
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000748
	gsDPLoadSync(), // 0x00000750
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000758
	gsDPPipeSync(), // 0x00000760
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000768
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000770
	gsSPVertex(_ganontika_room_0_vertices_000003E0, 6, 0), // 0x00000778
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000780
	gsDPPipeSync(), // 0x00000788
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00000790
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000798
	gsDPLoadSync(), // 0x000007A0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000007A8
	gsDPPipeSync(), // 0x000007B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000007B8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000007C0
	gsSPVertex(_ganontika_room_0_vertices_00000440, 3, 0), // 0x000007C8
	gsSP1Triangle(0, 1, 2, 0), // 0x000007D0
	gsDPPipeSync(), // 0x000007D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000007E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000007E8
	gsDPLoadSync(), // 0x000007F0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000007F8
	gsDPPipeSync(), // 0x00000800
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000808
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000810
	gsSPVertex(_ganontika_room_0_vertices_00000470, 3, 0), // 0x00000818
	gsSP1Triangle(0, 1, 2, 0), // 0x00000820
	gsDPPipeSync(), // 0x00000828
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00000830
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000838
	gsDPLoadSync(), // 0x00000840
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000848
	gsDPPipeSync(), // 0x00000850
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000858
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000860
	gsSPVertex(_ganontika_room_0_vertices_000004A0, 3, 0), // 0x00000868
	gsSP1Triangle(0, 1, 2, 0), // 0x00000870
	gsSPEndDisplayList(), // 0x00000878
};

Vtx_t _ganontika_room_0_vertices_00000880[7] = 
{
	 { 0, 150, 1013, 0, 2048, 0, 218, 211, 199, 255 }, // 0x00000880
	 { 110, 150, 1133, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00000890
	 { 110, 150, 1013, 0, 0, 0, 115, 102, 78, 255 }, // 0x000008A0
	 { 0, 150, 1133, 0, 2048, 2048, 115, 102, 78, 255 }, // 0x000008B0
	 { 0, 150, 1013, 0, 2048, 0, 218, 211, 199, 255 }, // 0x000008C0
	 { -110, 150, 1133, 0, 0, 2048, 69, 62, 48, 255 }, // 0x000008D0
	 { -110, 150, 1013, 0, 0, 0, 115, 102, 78, 255 }, // 0x000008E0
};

Vtx_t _ganontika_room_0_vertices_000008F0[12] = 
{
	 { 110, 310, 1013, 0, 12971, 4864, 69, 62, 48, 255 }, // 0x000008F0
	 { 110, 310, 1133, 0, 10923, 4864, 80, 86, 96, 255 }, // 0x00000900
	 { 70, 350, 1133, 0, 10923, 3840, 80, 86, 96, 255 }, // 0x00000910
	 { 70, 350, 1013, 0, 12971, 3840, 69, 62, 48, 255 }, // 0x00000920
	 { -70, 350, 1133, 0, 1024, 0, 80, 86, 96, 255 }, // 0x00000930
	 { -70, 350, 1013, 0, 0, 0, 69, 62, 48, 255 }, // 0x00000940
	 { 70, 350, 1013, 0, 0, 1707, 69, 62, 48, 255 }, // 0x00000950
	 { 70, 350, 1133, 0, 1024, 1707, 80, 86, 96, 255 }, // 0x00000960
	 { -110, 310, 1133, 0, 10923, 4864, 80, 86, 96, 255 }, // 0x00000970
	 { -110, 310, 1013, 0, 12971, 4864, 69, 62, 48, 255 }, // 0x00000980
	 { -70, 350, 1013, 0, 12971, 3840, 69, 62, 48, 255 }, // 0x00000990
	 { -70, 350, 1133, 0, 10923, 3840, 80, 86, 96, 255 }, // 0x000009A0
};

Vtx_t _ganontika_room_0_vertices_000009B0[4] = 
{
	 { 110, 150, 1013, 0, 0, 1024, 115, 102, 78, 255 }, // 0x000009B0
	 { 110, 150, 1133, 0, 4096, 1024, 69, 62, 48, 255 }, // 0x000009C0
	 { 110, 210, 1133, 0, 4096, 0, 68, 74, 83, 255 }, // 0x000009D0
	 { 110, 210, 1013, 0, 0, 0, 81, 72, 55, 255 }, // 0x000009E0
};

Vtx_t _ganontika_room_0_vertices_000009F0[8] = 
{
	 { 110, 210, 1133, 0, 10923, 7424, 68, 74, 83, 255 }, // 0x000009F0
	 { 110, 310, 1133, 0, 10923, 4864, 80, 86, 96, 255 }, // 0x00000A00
	 { 110, 310, 1013, 0, 12971, 4864, 69, 62, 48, 255 }, // 0x00000A10
	 { 110, 210, 1013, 0, 12971, 7424, 81, 72, 55, 255 }, // 0x00000A20
	 { -110, 310, 1013, 0, 12971, 4864, 69, 62, 48, 255 }, // 0x00000A30
	 { -110, 310, 1133, 0, 10923, 4864, 80, 86, 96, 255 }, // 0x00000A40
	 { -110, 210, 1133, 0, 10923, 7424, 68, 74, 83, 255 }, // 0x00000A50
	 { -110, 210, 1013, 0, 12971, 7424, 81, 72, 55, 255 }, // 0x00000A60
};

Vtx_t _ganontika_room_0_vertices_00000A70[4] = 
{
	 { -110, 210, 1133, 0, 0, 0, 68, 74, 83, 255 }, // 0x00000A70
	 { -110, 150, 1133, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00000A80
	 { -110, 150, 1013, 0, 4096, 1024, 115, 102, 78, 255 }, // 0x00000A90
	 { -110, 210, 1013, 0, 4096, 0, 81, 72, 55, 255 }, // 0x00000AA0
};

Vtx_t _ganontika_room_0_vertices_00000AB0[8] = 
{
	 { -110, 150, 1013, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AB0
	 { 110, 150, 1013, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AC0
	 { -110, 350, 1013, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AD0
	 { 110, 350, 1013, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AE0
	 { -110, 150, 1133, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AF0
	 { 110, 150, 1133, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B00
	 { -110, 350, 1133, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B10
	 { 110, 350, 1133, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B20
};

Gfx _ganontika_room_0_dlist_00000B30[] =
{
	gsDPPipeSync(), // 0x00000B30
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000B38
	gsSPVertex(_ganontika_room_0_vertices_00000AB0, 8, 0), // 0x00000B40
	gsSPCullDisplayList(0, 7), // 0x00000B48
	gsDPPipeSync(), // 0x00000B50
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000B58
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000B60
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000B68
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_0_tex_00007F48), // 0x00000B70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000B78
	gsDPLoadSync(), // 0x00000B80
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000B88
	gsDPPipeSync(), // 0x00000B90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000B98
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000BA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00000BA8
	gsDPTileSync(), // 0x00000BB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000BB8
	gsDPLoadSync(), // 0x00000BC0
	gsDPLoadTLUTCmd(7, 255), // 0x00000BC8
	gsDPPipeSync(), // 0x00000BD0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000BD8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000BE0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000BE8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000BF0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000BF8
	gsSPVertex(_ganontika_room_0_vertices_00000880, 7, 0), // 0x00000C00
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00000C08
	gsSP2Triangles(4, 5, 3, 0, 4, 6, 5, 0), // 0x00000C10
	gsDPPipeSync(), // 0x00000C18
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000C20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000C28
	gsDPLoadSync(), // 0x00000C30
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000C38
	gsDPPipeSync(), // 0x00000C40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000C48
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000C50
	gsSPVertex(_ganontika_room_0_vertices_000008F0, 12, 0), // 0x00000C58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000C60
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000C68
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000C70
	gsDPPipeSync(), // 0x00000C78
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00000C80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000C88
	gsDPLoadSync(), // 0x00000C90
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000C98
	gsDPPipeSync(), // 0x00000CA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000CA8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000CB0
	gsSPVertex(_ganontika_room_0_vertices_000009B0, 4, 0), // 0x00000CB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000CC0
	gsDPPipeSync(), // 0x00000CC8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000CD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000CD8
	gsDPLoadSync(), // 0x00000CE0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000CE8
	gsDPPipeSync(), // 0x00000CF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000CF8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000D00
	gsSPVertex(_ganontika_room_0_vertices_000009F0, 8, 0), // 0x00000D08
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000D10
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000D18
	gsDPPipeSync(), // 0x00000D20
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00000D28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000D30
	gsDPLoadSync(), // 0x00000D38
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000D40
	gsDPPipeSync(), // 0x00000D48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000D50
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000D58
	gsSPVertex(_ganontika_room_0_vertices_00000A70, 4, 0), // 0x00000D60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000D68
	gsSPEndDisplayList(), // 0x00000D70
};

Vtx_t _ganontika_room_0_vertices_00000D78[3] = 
{
	 { -110, 480, 2293, 0, 3072, 2048, 100, 89, 67, 255 }, // 0x00000D78
	 { -110, 580, 2293, 0, 3072, -512, 68, 74, 83, 255 }, // 0x00000D88
	 { -110, 580, 2533, 0, 0, -512, 5, 5, 5, 255 }, // 0x00000D98
};

Vtx_t _ganontika_room_0_vertices_00000DA8[6] = 
{
	 { -110, 420, 2293, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00000DA8
	 { -110, 480, 2293, 0, 0, 0, 100, 89, 67, 255 }, // 0x00000DB8
	 { -110, 420, 2533, 0, -8192, 1024, 5, 5, 5, 255 }, // 0x00000DC8
	 { 110, 480, 2293, 0, 8192, 0, 100, 89, 67, 255 }, // 0x00000DD8
	 { 110, 420, 2293, 0, 8192, 1024, 100, 89, 67, 255 }, // 0x00000DE8
	 { 110, 420, 2533, 0, 16384, 1024, 5, 5, 5, 255 }, // 0x00000DF8
};

Vtx_t _ganontika_room_0_vertices_00000E08[3] = 
{
	 { 110, 480, 2293, 0, 7168, -256, 100, 89, 67, 255 }, // 0x00000E08
	 { 110, 580, 2533, 0, 10240, -2816, 5, 5, 5, 255 }, // 0x00000E18
	 { 110, 580, 2293, 0, 7168, -2816, 68, 74, 83, 255 }, // 0x00000E28
};

Vtx_t _ganontika_room_0_vertices_00000E38[6] = 
{
	 { 0, 420, 2533, 0, 2048, -8192, 5, 5, 5, 255 }, // 0x00000E38
	 { 110, 420, 2533, 0, 4096, -8192, 5, 5, 5, 255 }, // 0x00000E48
	 { 110, 420, 2293, 0, 4096, -4096, 100, 89, 67, 255 }, // 0x00000E58
	 { 0, 420, 2293, 0, 2048, -4096, 100, 89, 67, 255 }, // 0x00000E68
	 { -110, 420, 2293, 0, 0, -4096, 100, 89, 67, 255 }, // 0x00000E78
	 { -110, 420, 2533, 0, 0, -8192, 5, 5, 5, 255 }, // 0x00000E88
};

Vtx_t _ganontika_room_0_vertices_00000E98[14] = 
{
	 { -70, 620, 2533, 0, 0, -1536, 5, 5, 5, 255 }, // 0x00000E98
	 { -110, 580, 2533, 0, 0, -512, 5, 5, 5, 255 }, // 0x00000EA8
	 { -110, 580, 2293, 0, 3072, -512, 68, 74, 83, 255 }, // 0x00000EB8
	 { -70, 620, 2293, 0, 3072, -1536, 68, 74, 83, 255 }, // 0x00000EC8
	 { 70, 620, 2293, 0, 10581, 1707, 68, 74, 83, 255 }, // 0x00000ED8
	 { 70, 620, 2533, 0, 12629, 1707, 5, 5, 5, 255 }, // 0x00000EE8
	 { -70, 620, 2533, 0, 12629, 0, 5, 5, 5, 255 }, // 0x00000EF8
	 { -70, 620, 2293, 0, 10581, 0, 68, 74, 83, 255 }, // 0x00000F08
	 { 70, 620, 2533, 0, 10240, -3840, 5, 5, 5, 255 }, // 0x00000F18
	 { 70, 620, 2293, 0, 7168, -3840, 68, 74, 83, 255 }, // 0x00000F28
	 { 110, 580, 2293, 0, 7168, -2816, 68, 74, 83, 255 }, // 0x00000F38
	 { 110, 580, 2533, 0, 10240, -2816, 5, 5, 5, 255 }, // 0x00000F48
	 { 110, 480, 2293, 0, 7168, -256, 100, 89, 67, 255 }, // 0x00000F58
	 { 110, 480, 2533, 0, 10240, -256, 5, 5, 5, 255 }, // 0x00000F68
};

Vtx_t _ganontika_room_0_vertices_00000F78[3] = 
{
	 { 110, 480, 2293, 0, 8192, 0, 100, 89, 67, 255 }, // 0x00000F78
	 { 110, 420, 2533, 0, 16384, 1024, 5, 5, 5, 255 }, // 0x00000F88
	 { 110, 480, 2533, 0, 16384, 0, 5, 5, 5, 255 }, // 0x00000F98
};

Vtx_t _ganontika_room_0_vertices_00000FA8[3] = 
{
	 { -110, 480, 2293, 0, 3072, 2048, 100, 89, 67, 255 }, // 0x00000FA8
	 { -110, 580, 2533, 0, 0, -512, 5, 5, 5, 255 }, // 0x00000FB8
	 { -110, 480, 2533, 0, 0, 2048, 5, 5, 5, 255 }, // 0x00000FC8
};

Vtx_t _ganontika_room_0_vertices_00000FD8[3] = 
{
	 { -110, 480, 2293, 0, 0, 0, 100, 89, 67, 255 }, // 0x00000FD8
	 { -110, 480, 2533, 0, -8192, 0, 5, 5, 5, 255 }, // 0x00000FE8
	 { -110, 420, 2533, 0, -8192, 1024, 5, 5, 5, 255 }, // 0x00000FF8
};

Vtx_t _ganontika_room_0_vertices_00001008[8] = 
{
	 { -110, 420, 2293, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001008
	 { 110, 420, 2293, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001018
	 { -110, 620, 2293, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001028
	 { 110, 620, 2293, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001038
	 { -110, 420, 2533, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001048
	 { 110, 420, 2533, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001058
	 { -110, 620, 2533, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001068
	 { 110, 620, 2533, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001078
};

Gfx _ganontika_room_0_dlist_00001088[] =
{
	gsDPPipeSync(), // 0x00001088
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001090
	gsSPVertex(_ganontika_room_0_vertices_00001008, 8, 0), // 0x00001098
	gsSPCullDisplayList(0, 7), // 0x000010A0
	gsDPPipeSync(), // 0x000010A8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000010B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000010B8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000010C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000010C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000010D0
	gsDPLoadSync(), // 0x000010D8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000010E0
	gsDPPipeSync(), // 0x000010E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000010F0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000010F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001100
	gsDPTileSync(), // 0x00001108
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001110
	gsDPLoadSync(), // 0x00001118
	gsDPLoadTLUTCmd(7, 255), // 0x00001120
	gsDPPipeSync(), // 0x00001128
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001130
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001138
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001140
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001148
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001150
	gsSPVertex(_ganontika_room_0_vertices_00000D78, 3, 0), // 0x00001158
	gsSP1Triangle(0, 1, 2, 0), // 0x00001160
	gsDPPipeSync(), // 0x00001168
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00001170
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00001178
	gsDPLoadSync(), // 0x00001180
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001188
	gsDPPipeSync(), // 0x00001190
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00001198
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000011A0
	gsSPVertex(_ganontika_room_0_vertices_00000DA8, 6, 0), // 0x000011A8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000011B0
	gsDPPipeSync(), // 0x000011B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000011C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000011C8
	gsDPLoadSync(), // 0x000011D0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000011D8
	gsDPPipeSync(), // 0x000011E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000011E8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000011F0
	gsSPVertex(_ganontika_room_0_vertices_00000E08, 3, 0), // 0x000011F8
	gsSP1Triangle(0, 1, 2, 0), // 0x00001200
	gsDPPipeSync(), // 0x00001208
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_0_tex_00007F48), // 0x00001210
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00001218
	gsDPLoadSync(), // 0x00001220
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001228
	gsDPPipeSync(), // 0x00001230
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00001238
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001240
	gsSPVertex(_ganontika_room_0_vertices_00000E38, 6, 0), // 0x00001248
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00001250
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00001258
	gsDPPipeSync(), // 0x00001260
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00001268
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001270
	gsDPLoadSync(), // 0x00001278
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001280
	gsDPPipeSync(), // 0x00001288
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001290
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001298
	gsSPVertex(_ganontika_room_0_vertices_00000E98, 14, 0), // 0x000012A0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x000012A8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000012B0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000012B8
	gsSP1Triangle(12, 13, 11, 0), // 0x000012C0
	gsDPPipeSync(), // 0x000012C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x000012D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x000012D8
	gsDPLoadSync(), // 0x000012E0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000012E8
	gsDPPipeSync(), // 0x000012F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000012F8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001300
	gsSPVertex(_ganontika_room_0_vertices_00000F78, 3, 0), // 0x00001308
	gsSP1Triangle(0, 1, 2, 0), // 0x00001310
	gsDPPipeSync(), // 0x00001318
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00001320
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001328
	gsDPLoadSync(), // 0x00001330
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001338
	gsDPPipeSync(), // 0x00001340
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001348
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001350
	gsSPVertex(_ganontika_room_0_vertices_00000FA8, 3, 0), // 0x00001358
	gsSP1Triangle(0, 1, 2, 0), // 0x00001360
	gsDPPipeSync(), // 0x00001368
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00001370
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00001378
	gsDPLoadSync(), // 0x00001380
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001388
	gsDPPipeSync(), // 0x00001390
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00001398
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000013A0
	gsSPVertex(_ganontika_room_0_vertices_00000FD8, 3, 0), // 0x000013A8
	gsSP1Triangle(0, 1, 2, 0), // 0x000013B0
	gsSPEndDisplayList(), // 0x000013B8
};

Vtx_t _ganontika_room_0_vertices_000013C0[4] = 
{
	 { -110, 210, 1013, 0, 0, 0, 81, 72, 55, 255 }, // 0x000013C0
	 { -110, 150, 1013, 0, 0, 1024, 115, 102, 78, 255 }, // 0x000013D0
	 { -270, 150, 853, 0, 8192, 1024, 81, 72, 55, 255 }, // 0x000013E0
	 { -270, 210, 853, 0, 8192, 0, 158, 142, 111, 255 }, // 0x000013F0
};

Vtx_t _ganontika_room_0_vertices_00001400[8] = 
{
	 { -270, 370, 853, 0, 2172, -2048, 69, 62, 48, 255 }, // 0x00001400
	 { -110, 310, 1013, 0, 0, -512, 69, 62, 48, 255 }, // 0x00001410
	 { -110, 210, 1013, 0, 0, 2048, 81, 72, 55, 255 }, // 0x00001420
	 { -270, 210, 853, 0, 2172, 2048, 158, 142, 111, 255 }, // 0x00001430
	 { 110, 210, 1013, 0, 2172, 2048, 81, 72, 55, 255 }, // 0x00001440
	 { 110, 310, 1013, 0, 2172, -512, 69, 62, 48, 255 }, // 0x00001450
	 { 270, 370, 853, 0, 0, -2048, 69, 62, 48, 255 }, // 0x00001460
	 { 270, 210, 853, 0, 0, 2048, 158, 142, 111, 255 }, // 0x00001470
};

Vtx_t _ganontika_room_0_vertices_00001480[4] = 
{
	 { 270, 150, 853, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00001480
	 { 110, 150, 1013, 0, 8192, 1024, 115, 102, 78, 255 }, // 0x00001490
	 { 110, 210, 1013, 0, 8192, 0, 81, 72, 55, 255 }, // 0x000014A0
	 { 270, 210, 853, 0, 0, 0, 158, 142, 111, 255 }, // 0x000014B0
};

Vtx_t _ganontika_room_0_vertices_000014C0[12] = 
{
	 { -110, 310, 1013, 0, -1024, -512, 69, 62, 48, 255 }, // 0x000014C0
	 { -270, 370, 853, 0, 0, -2048, 69, 62, 48, 255 }, // 0x000014D0
	 { -210, 430, 813, 0, 0, -3584, 69, 62, 48, 255 }, // 0x000014E0
	 { -70, 350, 1013, 0, -1024, -1536, 69, 62, 48, 255 }, // 0x000014F0
	 { -70, 350, 1013, 0, 2389, 1024, 69, 62, 48, 255 }, // 0x00001500
	 { -210, 430, 813, 0, 1707, 0, 69, 62, 48, 255 }, // 0x00001510
	 { 210, 430, 853, 0, 1707, 4437, 69, 62, 48, 255 }, // 0x00001520
	 { 70, 350, 1013, 0, 2389, 3413, 69, 62, 48, 255 }, // 0x00001530
	 { 270, 370, 853, 0, 2560, -2048, 69, 62, 48, 255 }, // 0x00001540
	 { 110, 310, 1013, 0, 3584, -512, 69, 62, 48, 255 }, // 0x00001550
	 { 70, 350, 1013, 0, 3584, -1536, 69, 62, 48, 255 }, // 0x00001560
	 { 210, 430, 853, 0, 2560, -3584, 69, 62, 48, 255 }, // 0x00001570
};

Vtx_t _ganontika_room_0_vertices_00001580[7] = 
{
	 { 90, 150, 773, 0, -358, 1485, 218, 211, 199, 255 }, // 0x00001580
	 { -90, 150, 773, 0, 1024, 1024, 218, 211, 199, 255 }, // 0x00001590
	 { 0, 150, 1013, 0, -282, -589, 218, 211, 199, 255 }, // 0x000015A0
	 { -110, 150, 1013, 0, 563, -870, 115, 102, 78, 255 }, // 0x000015B0
	 { -270, 150, 853, 0, 2202, -51, 81, 72, 55, 255 }, // 0x000015C0
	 { 110, 150, 1013, 0, -1126, -307, 115, 102, 78, 255 }, // 0x000015D0
	 { 270, 150, 853, 0, -1946, 1331, 81, 72, 55, 255 }, // 0x000015E0
};

Vtx_t _ganontika_room_0_vertices_000015F0[8] = 
{
	 { -270, 150, 773, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015F0
	 { 270, 150, 773, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001600
	 { -270, 430, 773, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001610
	 { 270, 430, 773, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001620
	 { -270, 150, 1013, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001630
	 { 270, 150, 1013, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001640
	 { -270, 430, 1013, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001650
	 { 270, 430, 1013, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001660
};

Gfx _ganontika_room_0_dlist_00001670[] =
{
	gsDPPipeSync(), // 0x00001670
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001678
	gsSPVertex(_ganontika_room_0_vertices_000015F0, 8, 0), // 0x00001680
	gsSPCullDisplayList(0, 7), // 0x00001688
	gsDPPipeSync(), // 0x00001690
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001698
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000016A0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000016A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x000016B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x000016B8
	gsDPLoadSync(), // 0x000016C0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000016C8
	gsDPPipeSync(), // 0x000016D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000016D8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000016E0
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
	gsSPVertex(_ganontika_room_0_vertices_000013C0, 4, 0), // 0x00001740
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001748
	gsDPPipeSync(), // 0x00001750
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00001758
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001760
	gsDPLoadSync(), // 0x00001768
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001770
	gsDPPipeSync(), // 0x00001778
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001780
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001788
	gsSPVertex(_ganontika_room_0_vertices_00001400, 8, 0), // 0x00001790
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001798
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000017A0
	gsDPPipeSync(), // 0x000017A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x000017B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x000017B8
	gsDPLoadSync(), // 0x000017C0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000017C8
	gsDPPipeSync(), // 0x000017D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000017D8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000017E0
	gsSPVertex(_ganontika_room_0_vertices_00001480, 4, 0), // 0x000017E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000017F0
	gsDPPipeSync(), // 0x000017F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00001800
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001808
	gsDPLoadSync(), // 0x00001810
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001818
	gsDPPipeSync(), // 0x00001820
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001828
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001830
	gsSPVertex(_ganontika_room_0_vertices_000014C0, 12, 0), // 0x00001838
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001840
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001848
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001850
	gsDPPipeSync(), // 0x00001858
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001860
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00001868
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001870
	gsDPLoadSync(), // 0x00001878
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001880
	gsDPPipeSync(), // 0x00001888
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001890
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001898
	gsSPVertex(_ganontika_room_0_vertices_00001580, 7, 0), // 0x000018A0
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x000018A8
	gsSP2Triangles(1, 4, 3, 0, 2, 5, 0, 0), // 0x000018B0
	gsSP1Triangle(5, 6, 0, 0), // 0x000018B8
	gsSPEndDisplayList(), // 0x000018C0
};

Vtx_t _ganontika_room_0_vertices_000018C8[54] = 
{
	 { 0, 330, 1933, 0, 2048, -1365, 69, 62, 48, 255 }, // 0x000018C8
	 { 0, 340, 1933, 0, 2048, -1707, 132, 88, 43, 255 }, // 0x000018D8
	 { 110, 330, 1933, 0, 4096, -1365, 100, 89, 67, 255 }, // 0x000018E8
	 { 110, 340, 1933, 0, 4096, -1707, 100, 89, 67, 255 }, // 0x000018F8
	 { -110, 330, 1933, 0, 0, -1365, 100, 89, 67, 255 }, // 0x00001908
	 { -110, 340, 1933, 0, 0, -1707, 100, 89, 67, 255 }, // 0x00001918
	 { 0, 410, 2173, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x00001928
	 { 0, 420, 2173, 0, 2048, -3072, 147, 131, 97, 255 }, // 0x00001938
	 { 110, 410, 2173, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00001948
	 { 110, 420, 2173, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x00001958
	 { -110, 420, 2173, 0, 0, -3072, 100, 89, 67, 255 }, // 0x00001968
	 { -110, 410, 2173, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00001978
	 { 0, 400, 2143, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x00001988
	 { 0, 410, 2143, 0, 2048, -3072, 147, 131, 97, 255 }, // 0x00001998
	 { 110, 400, 2143, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x000019A8
	 { 110, 410, 2143, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x000019B8
	 { -110, 410, 2143, 0, 0, -3072, 100, 89, 67, 255 }, // 0x000019C8
	 { -110, 400, 2143, 0, 0, -2731, 100, 89, 67, 255 }, // 0x000019D8
	 { 0, 390, 2113, 0, 2048, -2389, 69, 62, 48, 255 }, // 0x000019E8
	 { 0, 400, 2113, 0, 2048, -2731, 147, 131, 97, 255 }, // 0x000019F8
	 { 110, 390, 2113, 0, 4096, -2389, 100, 89, 67, 255 }, // 0x00001A08
	 { 110, 400, 2113, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00001A18
	 { -110, 390, 2113, 0, 0, -2389, 100, 89, 67, 255 }, // 0x00001A28
	 { -110, 400, 2113, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00001A38
	 { 0, 380, 2083, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x00001A48
	 { 0, 390, 2083, 0, 2048, -3072, 147, 131, 97, 255 }, // 0x00001A58
	 { 110, 380, 2083, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00001A68
	 { 110, 390, 2083, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x00001A78
	 { -110, 390, 2083, 0, 0, -3072, 100, 89, 67, 255 }, // 0x00001A88
	 { -110, 380, 2083, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00001A98
	 { 0, 370, 2053, 0, 2048, -2389, 69, 62, 48, 255 }, // 0x00001AA8
	 { 0, 380, 2053, 0, 2048, -2731, 147, 131, 97, 255 }, // 0x00001AB8
	 { 110, 370, 2053, 0, 4096, -2389, 100, 89, 67, 255 }, // 0x00001AC8
	 { 110, 380, 2053, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00001AD8
	 { -110, 370, 2053, 0, 0, -2389, 100, 89, 67, 255 }, // 0x00001AE8
	 { -110, 380, 2053, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00001AF8
	 { 0, 360, 2023, 0, 2048, -2048, 69, 62, 48, 255 }, // 0x00001B08
	 { 0, 370, 2023, 0, 2048, -2389, 147, 131, 97, 255 }, // 0x00001B18
	 { 110, 360, 2023, 0, 4096, -2048, 100, 89, 67, 255 }, // 0x00001B28
	 { 110, 370, 2023, 0, 4096, -2389, 100, 89, 67, 255 }, // 0x00001B38
	 { -110, 360, 2023, 0, 0, -2048, 100, 89, 67, 255 }, // 0x00001B48
	 { -110, 370, 2023, 0, 0, -2389, 100, 89, 67, 255 }, // 0x00001B58
	 { 0, 350, 1993, 0, 2048, -1707, 69, 62, 48, 255 }, // 0x00001B68
	 { 0, 360, 1993, 0, 2048, -2048, 147, 131, 97, 255 }, // 0x00001B78
	 { 110, 350, 1993, 0, 4096, -1707, 100, 89, 67, 255 }, // 0x00001B88
	 { 110, 360, 1993, 0, 4096, -2048, 100, 89, 67, 255 }, // 0x00001B98
	 { -110, 350, 1993, 0, 0, -1707, 100, 89, 67, 255 }, // 0x00001BA8
	 { -110, 360, 1993, 0, 0, -2048, 100, 89, 67, 255 }, // 0x00001BB8
	 { 0, 340, 1963, 0, 2048, -1365, 69, 62, 48, 255 }, // 0x00001BC8
	 { 0, 350, 1963, 0, 2048, -1707, 147, 131, 97, 255 }, // 0x00001BD8
	 { 110, 340, 1963, 0, 4096, -1365, 100, 89, 67, 255 }, // 0x00001BE8
	 { 110, 350, 1963, 0, 4096, -1707, 100, 89, 67, 255 }, // 0x00001BF8
	 { -110, 340, 1963, 0, 0, -1365, 100, 89, 67, 255 }, // 0x00001C08
	 { -110, 350, 1963, 0, 0, -1707, 100, 89, 67, 255 }, // 0x00001C18
};

Vtx_t _ganontika_room_0_vertices_00001C28[12] = 
{
	 { 110, 490, 1933, 0, 2560, -512, 93, 62, 31, 255 }, // 0x00001C28
	 { 110, 390, 1933, 0, 2560, 2048, 209, 164, 118, 255 }, // 0x00001C38
	 { 110, 435, 2053, 0, 4096, 896, 100, 89, 67, 255 }, // 0x00001C48
	 { 110, 580, 2173, 0, 5632, -2816, 68, 74, 83, 255 }, // 0x00001C58
	 { 110, 535, 2053, 0, 4096, -1664, 5, 5, 5, 255 }, // 0x00001C68
	 { 110, 480, 2173, 0, 5632, -256, 147, 131, 97, 255 }, // 0x00001C78
	 { -110, 435, 2053, 0, 6144, 3200, 100, 89, 67, 255 }, // 0x00001C88
	 { -110, 390, 1933, 0, 7680, 4352, 209, 164, 118, 255 }, // 0x00001C98
	 { -110, 490, 1933, 0, 7680, 1792, 93, 62, 31, 255 }, // 0x00001CA8
	 { -110, 535, 2053, 0, 6144, 640, 5, 5, 5, 255 }, // 0x00001CB8
	 { -110, 580, 2173, 0, 4608, -512, 68, 74, 83, 255 }, // 0x00001CC8
	 { -110, 480, 2173, 0, 4608, 2048, 147, 131, 97, 255 }, // 0x00001CD8
};

Vtx_t _ganontika_room_0_vertices_00001CE8[12] = 
{
	 { -110, 370, 2053, 0, 4096, 1109, 81, 72, 55, 255 }, // 0x00001CE8
	 { -110, 330, 1933, 0, 8192, 1024, 100, 89, 67, 255 }, // 0x00001CF8
	 { -110, 390, 1933, 0, 8192, 0, 209, 164, 118, 255 }, // 0x00001D08
	 { -110, 435, 2053, 0, 4096, 0, 100, 89, 67, 255 }, // 0x00001D18
	 { -110, 480, 2173, 0, 0, 0, 147, 131, 97, 255 }, // 0x00001D28
	 { -110, 410, 2173, 0, 0, 1195, 100, 89, 67, 255 }, // 0x00001D38
	 { 110, 370, 2053, 0, 4096, 1109, 81, 72, 55, 255 }, // 0x00001D48
	 { 110, 410, 2173, 0, 0, 1195, 100, 89, 67, 255 }, // 0x00001D58
	 { 110, 480, 2173, 0, 0, 0, 147, 131, 97, 255 }, // 0x00001D68
	 { 110, 435, 2053, 0, 4096, 0, 100, 89, 67, 255 }, // 0x00001D78
	 { 110, 330, 1933, 0, 8192, 1024, 100, 89, 67, 255 }, // 0x00001D88
	 { 110, 390, 1933, 0, 8192, 0, 209, 164, 118, 255 }, // 0x00001D98
};

Vtx_t _ganontika_room_0_vertices_00001DA8[54] = 
{
	 { -110, 410, 2173, 0, 0, -3072, 100, 89, 67, 255 }, // 0x00001DA8
	 { 0, 410, 2143, 0, 2048, -2731, 134, 119, 89, 255 }, // 0x00001DB8
	 { -110, 410, 2143, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00001DC8
	 { 0, 410, 2173, 0, 2048, -3072, 69, 62, 48, 255 }, // 0x00001DD8
	 { 110, 410, 2173, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x00001DE8
	 { 110, 410, 2143, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00001DF8
	 { -110, 400, 2143, 0, 0, -3072, 100, 89, 67, 255 }, // 0x00001E08
	 { 0, 400, 2113, 0, 2048, -2731, 158, 142, 111, 255 }, // 0x00001E18
	 { -110, 400, 2113, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00001E28
	 { 0, 400, 2143, 0, 2048, -3072, 69, 62, 48, 255 }, // 0x00001E38
	 { 0, 390, 2113, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x00001E48
	 { 0, 390, 2083, 0, 2048, -2389, 158, 142, 111, 255 }, // 0x00001E58
	 { -110, 390, 2113, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00001E68
	 { -110, 390, 2083, 0, 0, -2389, 100, 89, 67, 255 }, // 0x00001E78
	 { 110, 390, 2113, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00001E88
	 { 110, 390, 2083, 0, 4096, -2389, 100, 89, 67, 255 }, // 0x00001E98
	 { 110, 400, 2143, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x00001EA8
	 { 110, 400, 2113, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00001EB8
	 { 0, 380, 2053, 0, 2048, -2731, 169, 154, 126, 255 }, // 0x00001EC8
	 { 110, 380, 2083, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x00001ED8
	 { 110, 380, 2053, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00001EE8
	 { 0, 380, 2083, 0, 2048, -3072, 69, 62, 48, 255 }, // 0x00001EF8
	 { 0, 370, 2023, 0, 2048, -2389, 177, 164, 138, 255 }, // 0x00001F08
	 { 110, 370, 2053, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00001F18
	 { 110, 370, 2023, 0, 4096, -2389, 100, 89, 67, 255 }, // 0x00001F28
	 { 0, 370, 2053, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x00001F38
	 { 0, 360, 1993, 0, 2048, -2048, 223, 191, 159, 255 }, // 0x00001F48
	 { 110, 360, 2023, 0, 4096, -2389, 100, 89, 67, 255 }, // 0x00001F58
	 { 110, 360, 1993, 0, 4096, -2048, 100, 89, 67, 255 }, // 0x00001F68
	 { 0, 360, 2023, 0, 2048, -2389, 69, 62, 48, 255 }, // 0x00001F78
	 { 0, 350, 1963, 0, 2048, -1707, 223, 191, 159, 255 }, // 0x00001F88
	 { 110, 350, 1993, 0, 4096, -2048, 100, 89, 67, 255 }, // 0x00001F98
	 { 110, 350, 1963, 0, 4096, -1707, 100, 89, 67, 255 }, // 0x00001FA8
	 { 0, 350, 1993, 0, 2048, -2048, 69, 62, 48, 255 }, // 0x00001FB8
	 { 0, 340, 1933, 0, 2048, -1365, 229, 203, 177, 255 }, // 0x00001FC8
	 { 110, 340, 1963, 0, 4096, -1707, 100, 89, 67, 255 }, // 0x00001FD8
	 { 110, 340, 1933, 0, 4096, -1365, 100, 89, 67, 255 }, // 0x00001FE8
	 { 0, 340, 1963, 0, 2048, -1707, 69, 62, 48, 255 }, // 0x00001FF8
	 { -110, 340, 1963, 0, 0, -1707, 100, 89, 67, 255 }, // 0x00002008
	 { -110, 340, 1933, 0, 0, -1365, 100, 89, 67, 255 }, // 0x00002018
	 { -110, 350, 1993, 0, 0, -2048, 100, 89, 67, 255 }, // 0x00002028
	 { -110, 350, 1963, 0, 0, -1707, 100, 89, 67, 255 }, // 0x00002038
	 { 0, 360, 2023, 0, 2048, -2389, 69, 62, 48, 255 }, // 0x00002048
	 { 0, 360, 1993, 0, 2048, -2048, 223, 191, 159, 255 }, // 0x00002058
	 { -110, 360, 2023, 0, 0, -2389, 100, 89, 67, 255 }, // 0x00002068
	 { -110, 360, 1993, 0, 0, -2048, 100, 89, 67, 255 }, // 0x00002078
	 { 0, 370, 2053, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x00002088
	 { 0, 370, 2023, 0, 2048, -2389, 177, 164, 138, 255 }, // 0x00002098
	 { -110, 370, 2053, 0, 0, -2731, 100, 89, 67, 255 }, // 0x000020A8
	 { -110, 370, 2023, 0, 0, -2389, 100, 89, 67, 255 }, // 0x000020B8
	 { -110, 380, 2083, 0, 0, -3072, 100, 89, 67, 255 }, // 0x000020C8
	 { 0, 380, 2053, 0, 2048, -2731, 169, 154, 126, 255 }, // 0x000020D8
	 { -110, 380, 2053, 0, 0, -2731, 100, 89, 67, 255 }, // 0x000020E8
	 { 0, 380, 2083, 0, 2048, -3072, 69, 62, 48, 255 }, // 0x000020F8
};

Vtx_t _ganontika_room_0_vertices_00002108[18] = 
{
	 { 70, 530, 1933, 0, 7509, 1707, 75, 50, 24, 255 }, // 0x00002108
	 { 70, 575, 2053, 0, 8533, 1707, 5, 5, 5, 255 }, // 0x00002118
	 { -70, 575, 2053, 0, 8533, 0, 5, 5, 5, 255 }, // 0x00002128
	 { -70, 530, 1933, 0, 7509, 0, 93, 62, 31, 255 }, // 0x00002138
	 { 70, 620, 2173, 0, 9557, 1707, 68, 74, 83, 255 }, // 0x00002148
	 { -70, 620, 2173, 0, 9557, 0, 68, 74, 83, 255 }, // 0x00002158
	 { 110, 580, 2173, 0, 5632, -2816, 68, 74, 83, 255 }, // 0x00002168
	 { 70, 620, 2173, 0, 5632, -3840, 68, 74, 83, 255 }, // 0x00002178
	 { 70, 575, 2053, 0, 4096, -2688, 5, 5, 5, 255 }, // 0x00002188
	 { 110, 535, 2053, 0, 4096, -1664, 5, 5, 5, 255 }, // 0x00002198
	 { 70, 530, 1933, 0, 2560, -1536, 75, 50, 24, 255 }, // 0x000021A8
	 { 110, 490, 1933, 0, 2560, -512, 93, 62, 31, 255 }, // 0x000021B8
	 { -110, 580, 2173, 0, 4608, -512, 68, 74, 83, 255 }, // 0x000021C8
	 { -110, 535, 2053, 0, 6144, 640, 5, 5, 5, 255 }, // 0x000021D8
	 { -70, 575, 2053, 0, 6144, -384, 5, 5, 5, 255 }, // 0x000021E8
	 { -70, 620, 2173, 0, 4608, -1536, 68, 74, 83, 255 }, // 0x000021F8
	 { -110, 490, 1933, 0, 7680, 1792, 93, 62, 31, 255 }, // 0x00002208
	 { -70, 530, 1933, 0, 7680, 768, 93, 62, 31, 255 }, // 0x00002218
};

Vtx_t _ganontika_room_0_vertices_00002228[8] = 
{
	 { -110, 324, 1936, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002228
	 { 110, 324, 1936, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002238
	 { -110, 509, 1868, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002248
	 { 110, 509, 1868, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002258
	 { -110, 435, 2241, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002268
	 { 110, 435, 2241, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002278
	 { -110, 620, 2173, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002288
	 { 110, 620, 2173, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002298
};

Gfx _ganontika_room_0_dlist_000022A8[] =
{
	gsDPPipeSync(), // 0x000022A8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000022B0
	gsSPVertex(_ganontika_room_0_vertices_00002228, 8, 0), // 0x000022B8
	gsSPCullDisplayList(0, 7), // 0x000022C0
	gsDPPipeSync(), // 0x000022C8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000022D0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000022D8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000022E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_0_tex_00007F48), // 0x000022E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x000022F0
	gsDPLoadSync(), // 0x000022F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002300
	gsDPPipeSync(), // 0x00002308
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00002310
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002318
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00002320
	gsDPTileSync(), // 0x00002328
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002330
	gsDPLoadSync(), // 0x00002338
	gsDPLoadTLUTCmd(7, 255), // 0x00002340
	gsDPPipeSync(), // 0x00002348
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002350
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002358
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002360
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002368
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002370
	gsSPVertex(_ganontika_room_0_vertices_000018C8, 32, 0), // 0x00002378
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002380
	gsSP2Triangles(1, 4, 5, 0, 1, 0, 4, 0), // 0x00002388
	gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0), // 0x00002390
	gsSP2Triangles(10, 7, 11, 0, 7, 6, 11, 0), // 0x00002398
	gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0), // 0x000023A0
	gsSP2Triangles(16, 13, 17, 0, 13, 12, 17, 0), // 0x000023A8
	gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0), // 0x000023B0
	gsSP2Triangles(19, 22, 23, 0, 19, 18, 22, 0), // 0x000023B8
	gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0), // 0x000023C0
	gsSP2Triangles(28, 25, 29, 0, 25, 24, 29, 0), // 0x000023C8
	gsSPVertex(_ganontika_room_0_vertices_00001AA8, 24, 0), // 0x000023D0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000023D8
	gsSP2Triangles(1, 4, 5, 0, 1, 0, 4, 0), // 0x000023E0
	gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0), // 0x000023E8
	gsSP2Triangles(7, 10, 11, 0, 7, 6, 10, 0), // 0x000023F0
	gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0), // 0x000023F8
	gsSP2Triangles(13, 16, 17, 0, 13, 12, 16, 0), // 0x00002400
	gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0), // 0x00002408
	gsSP2Triangles(19, 22, 23, 0, 19, 18, 22, 0), // 0x00002410
	gsDPPipeSync(), // 0x00002418
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00002420
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002428
	gsDPLoadSync(), // 0x00002430
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002438
	gsDPPipeSync(), // 0x00002440
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002448
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002450
	gsSPVertex(_ganontika_room_0_vertices_00001C28, 12, 0), // 0x00002458
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00002460
	gsSP2Triangles(4, 0, 2, 0, 5, 3, 2, 0), // 0x00002468
	gsSP2Triangles(6, 7, 8, 0, 6, 9, 10, 0), // 0x00002470
	gsSP2Triangles(6, 8, 9, 0, 11, 6, 10, 0), // 0x00002478
	gsDPPipeSync(), // 0x00002480
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00002488
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00002490
	gsDPLoadSync(), // 0x00002498
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000024A0
	gsDPPipeSync(), // 0x000024A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000024B0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000024B8
	gsSPVertex(_ganontika_room_0_vertices_00001CE8, 12, 0), // 0x000024C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000024C8
	gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0), // 0x000024D0
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x000024D8
	gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0), // 0x000024E0
	gsDPPipeSync(), // 0x000024E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_0_tex_00007F48), // 0x000024F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x000024F8
	gsDPLoadSync(), // 0x00002500
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002508
	gsDPPipeSync(), // 0x00002510
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00002518
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002520
	gsSPVertex(_ganontika_room_0_vertices_00001DA8, 32, 0), // 0x00002528
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002530
	gsSP2Triangles(1, 4, 5, 0, 1, 3, 4, 0), // 0x00002538
	gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0), // 0x00002540
	gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0), // 0x00002548
	gsSP2Triangles(11, 14, 15, 0, 11, 10, 14, 0), // 0x00002550
	gsSP2Triangles(7, 16, 17, 0, 7, 9, 16, 0), // 0x00002558
	gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0), // 0x00002560
	gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0), // 0x00002568
	gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0), // 0x00002570
	gsSPVertex(_ganontika_room_0_vertices_00001F88, 24, 0), // 0x00002578
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002580
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00002588
	gsSP2Triangles(7, 4, 8, 0, 4, 9, 8, 0), // 0x00002590
	gsSP2Triangles(3, 0, 10, 0, 0, 11, 10, 0), // 0x00002598
	gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0), // 0x000025A0
	gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0), // 0x000025A8
	gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0), // 0x000025B0
	gsDPPipeSync(), // 0x000025B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000025C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000025C8
	gsDPLoadSync(), // 0x000025D0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000025D8
	gsDPPipeSync(), // 0x000025E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000025E8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000025F0
	gsSPVertex(_ganontika_room_0_vertices_00002108, 18, 0), // 0x000025F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002600
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00002608
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00002610
	gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0), // 0x00002618
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002620
	gsSP2Triangles(13, 16, 17, 0, 13, 17, 14, 0), // 0x00002628
	gsSPEndDisplayList(), // 0x00002630
};

Vtx_t _ganontika_room_0_vertices_00002638[54] = 
{
	 { 0, 150, 1133, 0, 2048, -1365, 69, 62, 48, 255 }, // 0x00002638
	 { 0, 160, 1133, 0, 2048, -1707, 147, 131, 97, 255 }, // 0x00002648
	 { 110, 150, 1133, 0, 4096, -1365, 69, 62, 48, 255 }, // 0x00002658
	 { 110, 160, 1133, 0, 4096, -1707, 69, 62, 48, 255 }, // 0x00002668
	 { -110, 150, 1133, 0, 0, -1365, 69, 62, 48, 255 }, // 0x00002678
	 { -110, 160, 1133, 0, 0, -1707, 69, 62, 48, 255 }, // 0x00002688
	 { 0, 230, 1373, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x00002698
	 { 0, 240, 1373, 0, 2048, -3072, 147, 131, 97, 255 }, // 0x000026A8
	 { 110, 240, 1373, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x000026B8
	 { 110, 230, 1373, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x000026C8
	 { -110, 240, 1373, 0, 0, -3072, 100, 89, 67, 255 }, // 0x000026D8
	 { -110, 230, 1373, 0, 0, -2731, 100, 89, 67, 255 }, // 0x000026E8
	 { 0, 220, 1343, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x000026F8
	 { 0, 230, 1343, 0, 2048, -3072, 147, 131, 97, 255 }, // 0x00002708
	 { 110, 220, 1343, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00002718
	 { 110, 230, 1343, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x00002728
	 { -110, 230, 1343, 0, 0, -3072, 100, 89, 67, 255 }, // 0x00002738
	 { -110, 220, 1343, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00002748
	 { 0, 210, 1313, 0, 2048, -2389, 69, 62, 48, 255 }, // 0x00002758
	 { 0, 220, 1313, 0, 2048, -2731, 147, 131, 97, 255 }, // 0x00002768
	 { 110, 210, 1313, 0, 4096, -2389, 100, 89, 67, 255 }, // 0x00002778
	 { 110, 220, 1313, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00002788
	 { -110, 210, 1313, 0, 0, -2389, 100, 89, 67, 255 }, // 0x00002798
	 { -110, 220, 1313, 0, 0, -2731, 100, 89, 67, 255 }, // 0x000027A8
	 { 0, 200, 1283, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x000027B8
	 { 0, 210, 1283, 0, 2048, -3072, 147, 131, 97, 255 }, // 0x000027C8
	 { 110, 200, 1283, 0, 4096, -2731, 69, 62, 48, 255 }, // 0x000027D8
	 { 110, 210, 1283, 0, 4096, -3072, 69, 62, 48, 255 }, // 0x000027E8
	 { -110, 210, 1283, 0, 0, -3072, 69, 62, 48, 255 }, // 0x000027F8
	 { -110, 200, 1283, 0, 0, -2731, 69, 62, 48, 255 }, // 0x00002808
	 { 0, 190, 1253, 0, 2048, -2389, 69, 62, 48, 255 }, // 0x00002818
	 { 0, 200, 1253, 0, 2048, -2731, 147, 131, 97, 255 }, // 0x00002828
	 { 110, 190, 1253, 0, 4096, -2389, 69, 62, 48, 255 }, // 0x00002838
	 { 110, 200, 1253, 0, 4096, -2731, 69, 62, 48, 255 }, // 0x00002848
	 { -110, 190, 1253, 0, 0, -2389, 69, 62, 48, 255 }, // 0x00002858
	 { -110, 200, 1253, 0, 0, -2731, 69, 62, 48, 255 }, // 0x00002868
	 { 0, 180, 1223, 0, 2048, -2048, 69, 62, 48, 255 }, // 0x00002878
	 { 0, 190, 1223, 0, 2048, -2389, 147, 131, 97, 255 }, // 0x00002888
	 { 110, 180, 1223, 0, 4096, -2048, 69, 62, 48, 255 }, // 0x00002898
	 { 110, 190, 1223, 0, 4096, -2389, 69, 62, 48, 255 }, // 0x000028A8
	 { -110, 180, 1223, 0, 0, -2048, 69, 62, 48, 255 }, // 0x000028B8
	 { -110, 190, 1223, 0, 0, -2389, 69, 62, 48, 255 }, // 0x000028C8
	 { 0, 170, 1193, 0, 2048, -1707, 69, 62, 48, 255 }, // 0x000028D8
	 { 0, 180, 1193, 0, 2048, -2048, 147, 131, 97, 255 }, // 0x000028E8
	 { 110, 170, 1193, 0, 4096, -1707, 69, 62, 48, 255 }, // 0x000028F8
	 { 110, 180, 1193, 0, 4096, -2048, 69, 62, 48, 255 }, // 0x00002908
	 { -110, 170, 1193, 0, 0, -1707, 69, 62, 48, 255 }, // 0x00002918
	 { -110, 180, 1193, 0, 0, -2048, 69, 62, 48, 255 }, // 0x00002928
	 { 0, 160, 1163, 0, 2048, -1365, 69, 62, 48, 255 }, // 0x00002938
	 { 0, 170, 1163, 0, 2048, -1707, 147, 131, 97, 255 }, // 0x00002948
	 { 110, 160, 1163, 0, 4096, -1365, 69, 62, 48, 255 }, // 0x00002958
	 { 110, 170, 1163, 0, 4096, -1707, 69, 62, 48, 255 }, // 0x00002968
	 { -110, 160, 1163, 0, 0, -1365, 69, 62, 48, 255 }, // 0x00002978
	 { -110, 170, 1163, 0, 0, -1707, 69, 62, 48, 255 }, // 0x00002988
};

Vtx_t _ganontika_room_0_vertices_00002998[10] = 
{
	 { 110, 310, 1133, 0, 2731, 256, 80, 86, 96, 255 }, // 0x00002998
	 { 110, 210, 1133, 0, 2731, 2816, 68, 74, 83, 255 }, // 0x000029A8
	 { 110, 255, 1253, 0, 1365, 1664, 81, 72, 55, 255 }, // 0x000029B8
	 { 110, 400, 1373, 0, 0, -2048, 151, 101, 50, 255 }, // 0x000029C8
	 { 110, 300, 1373, 0, 0, 512, 170, 113, 56, 255 }, // 0x000029D8
	 { -110, 255, 1253, 0, 1365, 1664, 81, 72, 55, 255 }, // 0x000029E8
	 { -110, 210, 1133, 0, 2731, 2816, 68, 74, 83, 255 }, // 0x000029F8
	 { -110, 310, 1133, 0, 2731, 256, 80, 86, 96, 255 }, // 0x00002A08
	 { -110, 400, 1373, 0, 0, -2048, 151, 101, 50, 255 }, // 0x00002A18
	 { -110, 300, 1373, 0, 0, 512, 170, 113, 56, 255 }, // 0x00002A28
};

Vtx_t _ganontika_room_0_vertices_00002A38[12] = 
{
	 { -110, 190, 1253, 0, 4096, 1109, 69, 62, 48, 255 }, // 0x00002A38
	 { -110, 150, 1133, 0, 8192, 1024, 69, 62, 48, 255 }, // 0x00002A48
	 { -110, 210, 1133, 0, 8192, 0, 68, 74, 83, 255 }, // 0x00002A58
	 { -110, 255, 1253, 0, 4096, 0, 81, 72, 55, 255 }, // 0x00002A68
	 { -110, 300, 1373, 0, 0, 0, 170, 113, 56, 255 }, // 0x00002A78
	 { -110, 230, 1373, 0, 0, 1195, 100, 89, 67, 255 }, // 0x00002A88
	 { 110, 190, 1253, 0, 4096, 1109, 69, 62, 48, 255 }, // 0x00002A98
	 { 110, 230, 1373, 0, 0, 1195, 100, 89, 67, 255 }, // 0x00002AA8
	 { 110, 300, 1373, 0, 0, 0, 170, 113, 56, 255 }, // 0x00002AB8
	 { 110, 255, 1253, 0, 4096, 0, 81, 72, 55, 255 }, // 0x00002AC8
	 { 110, 150, 1133, 0, 8192, 1024, 69, 62, 48, 255 }, // 0x00002AD8
	 { 110, 210, 1133, 0, 8192, 0, 68, 74, 83, 255 }, // 0x00002AE8
};

Vtx_t _ganontika_room_0_vertices_00002AF8[54] = 
{
	 { -110, 230, 1373, 0, 0, -3072, 100, 89, 67, 255 }, // 0x00002AF8
	 { 0, 230, 1343, 0, 2048, -2731, 235, 216, 197, 255 }, // 0x00002B08
	 { -110, 230, 1343, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00002B18
	 { 0, 230, 1373, 0, 2048, -3072, 69, 62, 48, 255 }, // 0x00002B28
	 { 110, 230, 1373, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x00002B38
	 { 110, 230, 1343, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00002B48
	 { -110, 220, 1343, 0, 0, -3072, 100, 89, 67, 255 }, // 0x00002B58
	 { 0, 220, 1313, 0, 2048, -2731, 241, 228, 215, 255 }, // 0x00002B68
	 { -110, 220, 1313, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00002B78
	 { 0, 220, 1343, 0, 2048, -3072, 69, 62, 48, 255 }, // 0x00002B88
	 { 0, 210, 1313, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x00002B98
	 { 0, 210, 1283, 0, 2048, -2389, 229, 203, 177, 255 }, // 0x00002BA8
	 { -110, 210, 1313, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00002BB8
	 { -110, 210, 1283, 0, 0, -2389, 69, 62, 48, 255 }, // 0x00002BC8
	 { 110, 210, 1313, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00002BD8
	 { 110, 210, 1283, 0, 4096, -2389, 69, 62, 48, 255 }, // 0x00002BE8
	 { 110, 220, 1343, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x00002BF8
	 { 110, 220, 1313, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00002C08
	 { 0, 200, 1253, 0, 2048, -2731, 216, 178, 139, 255 }, // 0x00002C18
	 { 110, 200, 1283, 0, 4096, -3072, 69, 62, 48, 255 }, // 0x00002C28
	 { 110, 200, 1253, 0, 4096, -2731, 69, 62, 48, 255 }, // 0x00002C38
	 { 0, 200, 1283, 0, 2048, -3072, 69, 62, 48, 255 }, // 0x00002C48
	 { 0, 190, 1223, 0, 2048, -2389, 177, 164, 138, 255 }, // 0x00002C58
	 { 110, 190, 1253, 0, 4096, -2731, 69, 62, 48, 255 }, // 0x00002C68
	 { 110, 190, 1223, 0, 4096, -2389, 69, 62, 48, 255 }, // 0x00002C78
	 { 0, 190, 1253, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x00002C88
	 { 0, 180, 1193, 0, 2048, -2048, 169, 154, 126, 255 }, // 0x00002C98
	 { 110, 180, 1223, 0, 4096, -2389, 69, 62, 48, 255 }, // 0x00002CA8
	 { 110, 180, 1193, 0, 4096, -2048, 69, 62, 48, 255 }, // 0x00002CB8
	 { 0, 180, 1223, 0, 2048, -2389, 69, 62, 48, 255 }, // 0x00002CC8
	 { 0, 170, 1163, 0, 2048, -1707, 158, 142, 111, 255 }, // 0x00002CD8
	 { 110, 170, 1193, 0, 4096, -2048, 69, 62, 48, 255 }, // 0x00002CE8
	 { 110, 170, 1163, 0, 4096, -1707, 69, 62, 48, 255 }, // 0x00002CF8
	 { 0, 170, 1193, 0, 2048, -2048, 69, 62, 48, 255 }, // 0x00002D08
	 { 0, 160, 1133, 0, 2048, -1365, 158, 142, 111, 255 }, // 0x00002D18
	 { 110, 160, 1163, 0, 4096, -1707, 69, 62, 48, 255 }, // 0x00002D28
	 { 110, 160, 1133, 0, 4096, -1365, 69, 62, 48, 255 }, // 0x00002D38
	 { 0, 160, 1163, 0, 2048, -1707, 69, 62, 48, 255 }, // 0x00002D48
	 { -110, 160, 1163, 0, 0, -1707, 69, 62, 48, 255 }, // 0x00002D58
	 { -110, 160, 1133, 0, 0, -1365, 69, 62, 48, 255 }, // 0x00002D68
	 { -110, 170, 1193, 0, 0, -2048, 69, 62, 48, 255 }, // 0x00002D78
	 { -110, 170, 1163, 0, 0, -1707, 69, 62, 48, 255 }, // 0x00002D88
	 { 0, 180, 1223, 0, 2048, -2389, 69, 62, 48, 255 }, // 0x00002D98
	 { 0, 180, 1193, 0, 2048, -2048, 169, 154, 126, 255 }, // 0x00002DA8
	 { -110, 180, 1223, 0, 0, -2389, 69, 62, 48, 255 }, // 0x00002DB8
	 { -110, 180, 1193, 0, 0, -2048, 69, 62, 48, 255 }, // 0x00002DC8
	 { 0, 190, 1253, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x00002DD8
	 { 0, 190, 1223, 0, 2048, -2389, 177, 164, 138, 255 }, // 0x00002DE8
	 { -110, 190, 1253, 0, 0, -2731, 69, 62, 48, 255 }, // 0x00002DF8
	 { -110, 190, 1223, 0, 0, -2389, 69, 62, 48, 255 }, // 0x00002E08
	 { -110, 200, 1283, 0, 0, -3072, 69, 62, 48, 255 }, // 0x00002E18
	 { 0, 200, 1253, 0, 2048, -2731, 216, 178, 139, 255 }, // 0x00002E28
	 { -110, 200, 1253, 0, 0, -2731, 69, 62, 48, 255 }, // 0x00002E38
	 { 0, 200, 1283, 0, 2048, -3072, 69, 62, 48, 255 }, // 0x00002E48
};

Vtx_t _ganontika_room_0_vertices_00002E58[12] = 
{
	 { -70, 350, 1133, 0, 2731, -768, 80, 86, 96, 255 }, // 0x00002E58
	 { -70, 440, 1373, 0, 0, -3072, 151, 101, 50, 255 }, // 0x00002E68
	 { -110, 400, 1373, 0, 0, -2048, 151, 101, 50, 255 }, // 0x00002E78
	 { -110, 310, 1133, 0, 2731, 256, 80, 86, 96, 255 }, // 0x00002E88
	 { 70, 350, 1133, 0, 1024, 1707, 80, 86, 96, 255 }, // 0x00002E98
	 { 70, 440, 1373, 0, 3072, 1707, 151, 101, 50, 255 }, // 0x00002EA8
	 { -70, 440, 1373, 0, 3072, 0, 151, 101, 50, 255 }, // 0x00002EB8
	 { -70, 350, 1133, 0, 1024, 0, 80, 86, 96, 255 }, // 0x00002EC8
	 { 70, 350, 1133, 0, 2731, -768, 80, 86, 96, 255 }, // 0x00002ED8
	 { 110, 310, 1133, 0, 2731, 256, 80, 86, 96, 255 }, // 0x00002EE8
	 { 110, 400, 1373, 0, 0, -2048, 151, 101, 50, 255 }, // 0x00002EF8
	 { 70, 440, 1373, 0, 0, -3072, 151, 101, 50, 255 }, // 0x00002F08
};

Vtx_t _ganontika_room_0_vertices_00002F18[8] = 
{
	 { -110, 144, 1136, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002F18
	 { 110, 144, 1136, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002F28
	 { -110, 329, 1068, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002F38
	 { 110, 329, 1068, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002F48
	 { -110, 255, 1441, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002F58
	 { 110, 255, 1441, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002F68
	 { -110, 440, 1373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002F78
	 { 110, 440, 1373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002F88
};

Gfx _ganontika_room_0_dlist_00002F98[] =
{
	gsDPPipeSync(), // 0x00002F98
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002FA0
	gsSPVertex(_ganontika_room_0_vertices_00002F18, 8, 0), // 0x00002FA8
	gsSPCullDisplayList(0, 7), // 0x00002FB0
	gsDPPipeSync(), // 0x00002FB8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002FC0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002FC8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002FD0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_0_tex_00007F48), // 0x00002FD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00002FE0
	gsDPLoadSync(), // 0x00002FE8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002FF0
	gsDPPipeSync(), // 0x00002FF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00003000
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003008
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00003010
	gsDPTileSync(), // 0x00003018
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003020
	gsDPLoadSync(), // 0x00003028
	gsDPLoadTLUTCmd(7, 255), // 0x00003030
	gsDPPipeSync(), // 0x00003038
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003040
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003048
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003050
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003058
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003060
	gsSPVertex(_ganontika_room_0_vertices_00002638, 32, 0), // 0x00003068
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00003070
	gsSP2Triangles(1, 4, 5, 0, 1, 0, 4, 0), // 0x00003078
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00003080
	gsSP2Triangles(10, 7, 6, 0, 10, 6, 11, 0), // 0x00003088
	gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0), // 0x00003090
	gsSP2Triangles(16, 13, 17, 0, 13, 12, 17, 0), // 0x00003098
	gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0), // 0x000030A0
	gsSP2Triangles(19, 22, 23, 0, 19, 18, 22, 0), // 0x000030A8
	gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0), // 0x000030B0
	gsSP2Triangles(28, 25, 29, 0, 25, 24, 29, 0), // 0x000030B8
	gsSPVertex(_ganontika_room_0_vertices_00002818, 24, 0), // 0x000030C0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000030C8
	gsSP2Triangles(1, 4, 5, 0, 1, 0, 4, 0), // 0x000030D0
	gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0), // 0x000030D8
	gsSP2Triangles(7, 10, 11, 0, 7, 6, 10, 0), // 0x000030E0
	gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0), // 0x000030E8
	gsSP2Triangles(13, 16, 17, 0, 13, 12, 16, 0), // 0x000030F0
	gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0), // 0x000030F8
	gsSP2Triangles(19, 22, 23, 0, 19, 18, 22, 0), // 0x00003100
	gsDPPipeSync(), // 0x00003108
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00003110
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003118
	gsDPLoadSync(), // 0x00003120
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003128
	gsDPPipeSync(), // 0x00003130
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003138
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003140
	gsSPVertex(_ganontika_room_0_vertices_00002998, 10, 0), // 0x00003148
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00003150
	gsSP2Triangles(4, 3, 2, 0, 5, 6, 7, 0), // 0x00003158
	gsSP2Triangles(5, 7, 8, 0, 9, 5, 8, 0), // 0x00003160
	gsDPPipeSync(), // 0x00003168
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00003170
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00003178
	gsDPLoadSync(), // 0x00003180
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003188
	gsDPPipeSync(), // 0x00003190
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00003198
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000031A0
	gsSPVertex(_ganontika_room_0_vertices_00002A38, 12, 0), // 0x000031A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000031B0
	gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0), // 0x000031B8
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x000031C0
	gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0), // 0x000031C8
	gsDPPipeSync(), // 0x000031D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_0_tex_00007F48), // 0x000031D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x000031E0
	gsDPLoadSync(), // 0x000031E8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000031F0
	gsDPPipeSync(), // 0x000031F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00003200
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003208
	gsSPVertex(_ganontika_room_0_vertices_00002AF8, 32, 0), // 0x00003210
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00003218
	gsSP2Triangles(1, 4, 5, 0, 1, 3, 4, 0), // 0x00003220
	gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0), // 0x00003228
	gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0), // 0x00003230
	gsSP2Triangles(11, 14, 15, 0, 11, 10, 14, 0), // 0x00003238
	gsSP2Triangles(7, 16, 17, 0, 7, 9, 16, 0), // 0x00003240
	gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0), // 0x00003248
	gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0), // 0x00003250
	gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0), // 0x00003258
	gsSPVertex(_ganontika_room_0_vertices_00002CD8, 24, 0), // 0x00003260
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00003268
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00003270
	gsSP2Triangles(7, 4, 8, 0, 4, 9, 8, 0), // 0x00003278
	gsSP2Triangles(3, 0, 10, 0, 0, 11, 10, 0), // 0x00003280
	gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0), // 0x00003288
	gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0), // 0x00003290
	gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0), // 0x00003298
	gsDPPipeSync(), // 0x000032A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000032A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000032B0
	gsDPLoadSync(), // 0x000032B8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000032C0
	gsDPPipeSync(), // 0x000032C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000032D0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000032D8
	gsSPVertex(_ganontika_room_0_vertices_00002E58, 12, 0), // 0x000032E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000032E8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000032F0
	gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0), // 0x000032F8
	gsSPEndDisplayList(), // 0x00003300
};

Vtx_t _ganontika_room_0_vertices_00003308[4] = 
{
	 { 110, 390, 1933, 0, 0, 0, 209, 164, 118, 255 }, // 0x00003308
	 { 110, 390, 1853, 0, 2048, 0, 254, 176, 124, 255 }, // 0x00003318
	 { 110, 330, 1853, 0, 2048, 1024, 132, 88, 43, 255 }, // 0x00003328
	 { 110, 330, 1933, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00003338
};

Vtx_t _ganontika_room_0_vertices_00003348[5] = 
{
	 { 110, 390, 1853, 0, 1024, 2048, 254, 176, 124, 255 }, // 0x00003348
	 { 110, 390, 1933, 0, 0, 2048, 209, 164, 118, 255 }, // 0x00003358
	 { 110, 490, 1933, 0, 0, -512, 93, 62, 31, 255 }, // 0x00003368
	 { 110, 490, 1773, 0, 2048, -512, 93, 62, 31, 255 }, // 0x00003378
	 { 110, 390, 1773, 0, 2048, 2048, 209, 164, 118, 255 }, // 0x00003388
};

Vtx_t _ganontika_room_0_vertices_00003398[10] = 
{
	 { 110, 390, 1853, 0, 2048, 0, 254, 176, 124, 255 }, // 0x00003398
	 { 110, 390, 1773, 0, 4096, 0, 209, 164, 118, 255 }, // 0x000033A8
	 { 110, 330, 1773, 0, 4096, 1024, 81, 72, 55, 255 }, // 0x000033B8
	 { 110, 330, 1853, 0, 2048, 1024, 132, 88, 43, 255 }, // 0x000033C8
	 { -110, 330, 1933, 0, 0, 1024, 81, 72, 55, 255 }, // 0x000033D8
	 { -110, 330, 1853, 0, 2048, 1024, 132, 88, 43, 255 }, // 0x000033E8
	 { -110, 390, 1853, 0, 2048, 0, 254, 176, 124, 255 }, // 0x000033F8
	 { -110, 390, 1933, 0, 0, 0, 209, 164, 118, 255 }, // 0x00003408
	 { -110, 330, 1773, 0, 4096, 1024, 81, 72, 55, 255 }, // 0x00003418
	 { -110, 390, 1773, 0, 4096, 0, 209, 164, 118, 255 }, // 0x00003428
};

Vtx_t _ganontika_room_0_vertices_00003438[17] = 
{
	 { -110, 390, 1773, 0, 2048, 2048, 209, 164, 118, 255 }, // 0x00003438
	 { -110, 490, 1773, 0, 2048, -512, 93, 62, 31, 255 }, // 0x00003448
	 { -110, 390, 1853, 0, 1024, 2048, 254, 176, 124, 255 }, // 0x00003458
	 { -110, 490, 1933, 0, 0, -512, 93, 62, 31, 255 }, // 0x00003468
	 { -110, 390, 1933, 0, 0, 2048, 209, 164, 118, 255 }, // 0x00003478
	 { 70, 530, 1933, 0, 2731, -768, 81, 72, 55, 255 }, // 0x00003488
	 { 70, 530, 1773, 0, 4096, -768, 81, 72, 55, 255 }, // 0x00003498
	 { 110, 490, 1933, 0, 2731, 256, 93, 62, 31, 255 }, // 0x000034A8
	 { 110, 490, 1773, 0, 4096, 256, 93, 62, 31, 255 }, // 0x000034B8
	 { 70, 530, 1933, 0, 1024, 1792, 81, 72, 55, 255 }, // 0x000034C8
	 { -70, 530, 1773, 0, 0, 0, 81, 72, 55, 255 }, // 0x000034D8
	 { 70, 530, 1773, 0, 0, 1792, 81, 72, 55, 255 }, // 0x000034E8
	 { -70, 530, 1933, 0, 1024, 0, 81, 72, 55, 255 }, // 0x000034F8
	 { -70, 530, 1933, 0, 2731, -768, 81, 72, 55, 255 }, // 0x00003508
	 { -110, 490, 1933, 0, 2731, 256, 93, 62, 31, 255 }, // 0x00003518
	 { -70, 530, 1773, 0, 4096, -768, 81, 72, 55, 255 }, // 0x00003528
	 { -110, 490, 1773, 0, 4096, 256, 93, 62, 31, 255 }, // 0x00003538
};

Vtx_t _ganontika_room_0_vertices_00003548[9] = 
{
	 { 0, 330, 1933, 0, 2048, -1024, 69, 62, 48, 255 }, // 0x00003548
	 { -110, 330, 1853, 0, 0, 0, 197, 140, 82, 255 }, // 0x00003558
	 { -110, 330, 1933, 0, 0, -1024, 100, 89, 67, 255 }, // 0x00003568
	 { 0, 330, 1853, 0, 2048, 0, 134, 119, 89, 255 }, // 0x00003578
	 { 0, 330, 1773, 0, 2048, 1024, 223, 191, 159, 255 }, // 0x00003588
	 { -110, 330, 1773, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00003598
	 { 110, 330, 1773, 0, 4096, 1024, 100, 89, 67, 255 }, // 0x000035A8
	 { 110, 330, 1853, 0, 4096, 0, 197, 140, 82, 255 }, // 0x000035B8
	 { 110, 330, 1933, 0, 4096, -1024, 100, 89, 67, 255 }, // 0x000035C8
};

Vtx_t _ganontika_room_0_vertices_000035D8[8] = 
{
	 { -110, 330, 1773, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035D8
	 { 110, 330, 1773, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035E8
	 { -110, 530, 1773, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035F8
	 { 110, 530, 1773, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003608
	 { -110, 330, 1933, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003618
	 { 110, 330, 1933, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003628
	 { -110, 530, 1933, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003638
	 { 110, 530, 1933, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003648
};

Gfx _ganontika_room_0_dlist_00003658[] =
{
	gsDPPipeSync(), // 0x00003658
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003660
	gsSPVertex(_ganontika_room_0_vertices_000035D8, 8, 0), // 0x00003668
	gsSPCullDisplayList(0, 7), // 0x00003670
	gsDPPipeSync(), // 0x00003678
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003680
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003688
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003690
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00003698
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x000036A0
	gsDPLoadSync(), // 0x000036A8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000036B0
	gsDPPipeSync(), // 0x000036B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000036C0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000036C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000036D0
	gsDPTileSync(), // 0x000036D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000036E0
	gsDPLoadSync(), // 0x000036E8
	gsDPLoadTLUTCmd(7, 255), // 0x000036F0
	gsDPPipeSync(), // 0x000036F8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003700
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003708
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003710
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003718
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003720
	gsSPVertex(_ganontika_room_0_vertices_00003308, 4, 0), // 0x00003728
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003730
	gsDPPipeSync(), // 0x00003738
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00003740
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003748
	gsDPLoadSync(), // 0x00003750
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003758
	gsDPPipeSync(), // 0x00003760
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003768
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003770
	gsSPVertex(_ganontika_room_0_vertices_00003348, 5, 0), // 0x00003778
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x00003780
	gsSP1Triangle(0, 2, 3, 0), // 0x00003788
	gsDPPipeSync(), // 0x00003790
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00003798
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x000037A0
	gsDPLoadSync(), // 0x000037A8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000037B0
	gsDPPipeSync(), // 0x000037B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000037C0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000037C8
	gsSPVertex(_ganontika_room_0_vertices_00003398, 10, 0), // 0x000037D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000037D8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000037E0
	gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0), // 0x000037E8
	gsDPPipeSync(), // 0x000037F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000037F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003800
	gsDPLoadSync(), // 0x00003808
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003810
	gsDPPipeSync(), // 0x00003818
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003820
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003828
	gsSPVertex(_ganontika_room_0_vertices_00003438, 17, 0), // 0x00003830
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00003838
	gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0), // 0x00003840
	gsSP2Triangles(6, 8, 7, 0, 9, 10, 11, 0), // 0x00003848
	gsSP2Triangles(9, 12, 10, 0, 13, 14, 15, 0), // 0x00003850
	gsSP1Triangle(14, 16, 15, 0), // 0x00003858
	gsDPPipeSync(), // 0x00003860
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_0_tex_00007F48), // 0x00003868
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00003870
	gsDPLoadSync(), // 0x00003878
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003880
	gsDPPipeSync(), // 0x00003888
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00003890
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003898
	gsSPVertex(_ganontika_room_0_vertices_00003548, 9, 0), // 0x000038A0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000038A8
	gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0), // 0x000038B0
	gsSP2Triangles(6, 4, 7, 0, 4, 3, 7, 0), // 0x000038B8
	gsSP2Triangles(3, 0, 7, 0, 0, 8, 7, 0), // 0x000038C0
	gsSPEndDisplayList(), // 0x000038C8
};

Vtx_t _ganontika_room_0_vertices_000038D0[12] = 
{
	 { 70, 440, 1533, 0, 2731, -768, 151, 101, 50, 255 }, // 0x000038D0
	 { 70, 440, 1373, 0, 4096, -768, 151, 101, 50, 255 }, // 0x000038E0
	 { 110, 400, 1533, 0, 2731, 256, 151, 101, 50, 255 }, // 0x000038F0
	 { 110, 400, 1373, 0, 4096, 256, 151, 101, 50, 255 }, // 0x00003900
	 { 70, 440, 1533, 0, -1536, 1792, 151, 101, 50, 255 }, // 0x00003910
	 { -70, 440, 1373, 0, -2560, 0, 151, 101, 50, 255 }, // 0x00003920
	 { 70, 440, 1373, 0, -2560, 1792, 151, 101, 50, 255 }, // 0x00003930
	 { -70, 440, 1533, 0, -1536, 0, 151, 101, 50, 255 }, // 0x00003940
	 { -70, 440, 1533, 0, 2731, -768, 151, 101, 50, 255 }, // 0x00003950
	 { -110, 400, 1533, 0, 2731, 256, 151, 101, 50, 255 }, // 0x00003960
	 { -70, 440, 1373, 0, 4096, -768, 151, 101, 50, 255 }, // 0x00003970
	 { -110, 400, 1373, 0, 4096, 256, 151, 101, 50, 255 }, // 0x00003980
};

Vtx_t _ganontika_room_0_vertices_00003990[9] = 
{
	 { 0, 240, 1533, 0, 2048, -1024, 69, 62, 48, 255 }, // 0x00003990
	 { -110, 240, 1453, 0, 0, 0, 132, 88, 43, 255 }, // 0x000039A0
	 { -110, 240, 1533, 0, 0, -1024, 100, 89, 67, 255 }, // 0x000039B0
	 { 0, 240, 1453, 0, 2048, 0, 134, 119, 89, 255 }, // 0x000039C0
	 { 0, 240, 1373, 0, 2048, 1024, 223, 191, 159, 255 }, // 0x000039D0
	 { -110, 240, 1373, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000039E0
	 { 110, 240, 1373, 0, 4096, 1024, 100, 89, 67, 255 }, // 0x000039F0
	 { 110, 240, 1453, 0, 4096, 0, 254, 111, 15, 255 }, // 0x00003A00
	 { 110, 240, 1533, 0, 4096, -1024, 100, 89, 67, 255 }, // 0x00003A10
};

Vtx_t _ganontika_room_0_vertices_00003A20[5] = 
{
	 { -110, 300, 1373, 0, 2048, 2048, 170, 113, 56, 255 }, // 0x00003A20
	 { -110, 400, 1373, 0, 2048, -512, 151, 101, 50, 255 }, // 0x00003A30
	 { -110, 300, 1453, 0, 1024, 2048, 254, 176, 124, 255 }, // 0x00003A40
	 { -110, 400, 1533, 0, 0, -512, 151, 101, 50, 255 }, // 0x00003A50
	 { -110, 300, 1533, 0, 0, 2048, 170, 113, 56, 255 }, // 0x00003A60
};

Vtx_t _ganontika_room_0_vertices_00003A70[4] = 
{
	 { 110, 300, 1453, 0, 2048, 0, 254, 176, 124, 255 }, // 0x00003A70
	 { 110, 300, 1373, 0, 4096, 0, 158, 142, 111, 255 }, // 0x00003A80
	 { 110, 240, 1373, 0, 4096, 1024, 81, 72, 55, 255 }, // 0x00003A90
	 { 110, 240, 1453, 0, 2048, 1024, 132, 88, 43, 255 }, // 0x00003AA0
};

Vtx_t _ganontika_room_0_vertices_00003AB0[5] = 
{
	 { 110, 300, 1453, 0, 1024, 2048, 254, 176, 124, 255 }, // 0x00003AB0
	 { 110, 400, 1533, 0, 0, -512, 151, 101, 50, 255 }, // 0x00003AC0
	 { 110, 400, 1373, 0, 2048, -512, 151, 101, 50, 255 }, // 0x00003AD0
	 { 110, 300, 1373, 0, 2048, 2048, 170, 113, 56, 255 }, // 0x00003AE0
	 { 110, 300, 1533, 0, 0, 2048, 170, 113, 56, 255 }, // 0x00003AF0
};

Vtx_t _ganontika_room_0_vertices_00003B00[10] = 
{
	 { 110, 300, 1533, 0, 0, 0, 158, 142, 111, 255 }, // 0x00003B00
	 { 110, 300, 1453, 0, 2048, 0, 254, 176, 124, 255 }, // 0x00003B10
	 { 110, 240, 1453, 0, 2048, 1024, 132, 88, 43, 255 }, // 0x00003B20
	 { 110, 240, 1533, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00003B30
	 { -110, 240, 1533, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00003B40
	 { -110, 240, 1453, 0, 2048, 1024, 132, 88, 43, 255 }, // 0x00003B50
	 { -110, 300, 1453, 0, 2048, 0, 254, 176, 124, 255 }, // 0x00003B60
	 { -110, 300, 1533, 0, 0, 0, 158, 142, 111, 255 }, // 0x00003B70
	 { -110, 240, 1373, 0, 4096, 1024, 81, 72, 55, 255 }, // 0x00003B80
	 { -110, 300, 1373, 0, 4096, 0, 158, 142, 111, 255 }, // 0x00003B90
};

Vtx_t _ganontika_room_0_vertices_00003BA0[8] = 
{
	 { -110, 240, 1373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003BA0
	 { 110, 240, 1373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003BB0
	 { -110, 440, 1373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003BC0
	 { 110, 440, 1373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003BD0
	 { -110, 240, 1533, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003BE0
	 { 110, 240, 1533, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003BF0
	 { -110, 440, 1533, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C00
	 { 110, 440, 1533, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C10
};

Gfx _ganontika_room_0_dlist_00003C20[] =
{
	gsDPPipeSync(), // 0x00003C20
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003C28
	gsSPVertex(_ganontika_room_0_vertices_00003BA0, 8, 0), // 0x00003C30
	gsSPCullDisplayList(0, 7), // 0x00003C38
	gsDPPipeSync(), // 0x00003C40
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003C48
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003C50
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003C58
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00003C60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003C68
	gsDPLoadSync(), // 0x00003C70
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003C78
	gsDPPipeSync(), // 0x00003C80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003C88
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003C90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00003C98
	gsDPTileSync(), // 0x00003CA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003CA8
	gsDPLoadSync(), // 0x00003CB0
	gsDPLoadTLUTCmd(7, 255), // 0x00003CB8
	gsDPPipeSync(), // 0x00003CC0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003CC8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003CD0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003CD8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003CE0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003CE8
	gsSPVertex(_ganontika_room_0_vertices_000038D0, 12, 0), // 0x00003CF0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00003CF8
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00003D00
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x00003D08
	gsDPPipeSync(), // 0x00003D10
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_0_tex_00007F48), // 0x00003D18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00003D20
	gsDPLoadSync(), // 0x00003D28
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003D30
	gsDPPipeSync(), // 0x00003D38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00003D40
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003D48
	gsSPVertex(_ganontika_room_0_vertices_00003990, 9, 0), // 0x00003D50
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00003D58
	gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0), // 0x00003D60
	gsSP2Triangles(6, 4, 7, 0, 4, 3, 7, 0), // 0x00003D68
	gsSP2Triangles(3, 0, 7, 0, 0, 8, 7, 0), // 0x00003D70
	gsDPPipeSync(), // 0x00003D78
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00003D80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003D88
	gsDPLoadSync(), // 0x00003D90
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003D98
	gsDPPipeSync(), // 0x00003DA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003DA8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003DB0
	gsSPVertex(_ganontika_room_0_vertices_00003A20, 5, 0), // 0x00003DB8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00003DC0
	gsSP1Triangle(3, 4, 2, 0), // 0x00003DC8
	gsDPPipeSync(), // 0x00003DD0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00003DD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00003DE0
	gsDPLoadSync(), // 0x00003DE8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003DF0
	gsDPPipeSync(), // 0x00003DF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00003E00
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003E08
	gsSPVertex(_ganontika_room_0_vertices_00003A70, 4, 0), // 0x00003E10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003E18
	gsDPPipeSync(), // 0x00003E20
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00003E28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003E30
	gsDPLoadSync(), // 0x00003E38
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003E40
	gsDPPipeSync(), // 0x00003E48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003E50
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003E58
	gsSPVertex(_ganontika_room_0_vertices_00003AB0, 5, 0), // 0x00003E60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003E68
	gsSP1Triangle(0, 4, 1, 0), // 0x00003E70
	gsDPPipeSync(), // 0x00003E78
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00003E80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00003E88
	gsDPLoadSync(), // 0x00003E90
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003E98
	gsDPPipeSync(), // 0x00003EA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00003EA8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003EB0
	gsSPVertex(_ganontika_room_0_vertices_00003B00, 10, 0), // 0x00003EB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003EC0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003EC8
	gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0), // 0x00003ED0
	gsSPEndDisplayList(), // 0x00003ED8
};

Vtx_t _ganontika_room_0_vertices_00003EE0[18] = 
{
	 { -110, 445, 1653, 0, 6144, 640, 5, 5, 5, 255 }, // 0x00003EE0
	 { -110, 400, 1533, 0, 7680, 1792, 151, 101, 50, 255 }, // 0x00003EF0
	 { -70, 440, 1533, 0, 7680, 768, 151, 101, 50, 255 }, // 0x00003F00
	 { -70, 485, 1653, 0, 6144, -384, 5, 5, 5, 255 }, // 0x00003F10
	 { -110, 490, 1773, 0, 4608, -512, 93, 62, 31, 255 }, // 0x00003F20
	 { -70, 530, 1773, 0, 4608, -1536, 68, 74, 83, 255 }, // 0x00003F30
	 { 70, 485, 1653, 0, 4096, -2688, 5, 5, 5, 255 }, // 0x00003F40
	 { 70, 440, 1533, 0, 2560, -1536, 151, 101, 50, 255 }, // 0x00003F50
	 { 110, 400, 1533, 0, 2560, -512, 151, 101, 50, 255 }, // 0x00003F60
	 { 110, 445, 1653, 0, 4096, -1664, 5, 5, 5, 255 }, // 0x00003F70
	 { 110, 490, 1773, 0, 5632, -2816, 93, 62, 31, 255 }, // 0x00003F80
	 { 70, 530, 1773, 0, 5632, -3840, 68, 74, 83, 255 }, // 0x00003F90
	 { 70, 485, 1653, 0, 8533, 1707, 5, 5, 5, 255 }, // 0x00003FA0
	 { 70, 530, 1773, 0, 9557, 1707, 68, 74, 83, 255 }, // 0x00003FB0
	 { -70, 530, 1773, 0, 9557, 0, 68, 74, 83, 255 }, // 0x00003FC0
	 { -70, 485, 1653, 0, 8533, 0, 5, 5, 5, 255 }, // 0x00003FD0
	 { 70, 440, 1533, 0, 7509, 1707, 151, 101, 50, 255 }, // 0x00003FE0
	 { -70, 440, 1533, 0, 7509, 0, 151, 101, 50, 255 }, // 0x00003FF0
};

Vtx_t _ganontika_room_0_vertices_00004000[48] = 
{
	 { -110, 290, 1683, 0, 0, -3072, 100, 89, 67, 255 }, // 0x00004000
	 { 0, 290, 1683, 0, 2048, -3072, 69, 62, 48, 255 }, // 0x00004010
	 { 0, 290, 1653, 0, 2048, -2731, 169, 154, 126, 255 }, // 0x00004020
	 { -110, 290, 1653, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00004030
	 { 0, 280, 1623, 0, 2048, -2389, 177, 164, 138, 255 }, // 0x00004040
	 { -110, 280, 1623, 0, 0, -2389, 100, 89, 67, 255 }, // 0x00004050
	 { -110, 280, 1653, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00004060
	 { 0, 280, 1653, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x00004070
	 { 0, 270, 1593, 0, 2048, -2048, 223, 191, 159, 255 }, // 0x00004080
	 { -110, 270, 1593, 0, 0, -2048, 100, 89, 67, 255 }, // 0x00004090
	 { -110, 270, 1623, 0, 0, -2389, 100, 89, 67, 255 }, // 0x000040A0
	 { 0, 270, 1623, 0, 2048, -2389, 69, 62, 48, 255 }, // 0x000040B0
	 { 0, 260, 1563, 0, 2048, -1707, 223, 191, 159, 255 }, // 0x000040C0
	 { -110, 260, 1563, 0, 0, -1707, 100, 89, 67, 255 }, // 0x000040D0
	 { -110, 260, 1593, 0, 0, -2048, 100, 89, 67, 255 }, // 0x000040E0
	 { 0, 260, 1593, 0, 2048, -2048, 69, 62, 48, 255 }, // 0x000040F0
	 { 0, 250, 1533, 0, 2048, -1365, 229, 203, 177, 255 }, // 0x00004100
	 { -110, 250, 1533, 0, 0, -1365, 100, 89, 67, 255 }, // 0x00004110
	 { -110, 250, 1563, 0, 0, -1707, 100, 89, 67, 255 }, // 0x00004120
	 { 0, 250, 1563, 0, 2048, -1707, 69, 62, 48, 255 }, // 0x00004130
	 { 110, 250, 1563, 0, 4096, -1707, 100, 89, 67, 255 }, // 0x00004140
	 { 110, 250, 1533, 0, 4096, -1365, 100, 89, 67, 255 }, // 0x00004150
	 { 110, 260, 1593, 0, 4096, -2048, 100, 89, 67, 255 }, // 0x00004160
	 { 110, 260, 1563, 0, 4096, -1707, 100, 89, 67, 255 }, // 0x00004170
	 { 110, 270, 1623, 0, 4096, -2389, 100, 89, 67, 255 }, // 0x00004180
	 { 110, 270, 1593, 0, 4096, -2048, 100, 89, 67, 255 }, // 0x00004190
	 { 110, 280, 1653, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x000041A0
	 { 110, 280, 1623, 0, 4096, -2389, 100, 89, 67, 255 }, // 0x000041B0
	 { 110, 290, 1683, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x000041C0
	 { 110, 290, 1653, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x000041D0
	 { 0, 310, 1713, 0, 2048, -2731, 158, 142, 111, 255 }, // 0x000041E0
	 { 0, 310, 1743, 0, 2048, -3072, 69, 62, 48, 255 }, // 0x000041F0
	 { 110, 310, 1743, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x00004200
	 { 110, 310, 1713, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00004210
	 { 0, 300, 1683, 0, 2048, -2389, 158, 142, 111, 255 }, // 0x00004220
	 { 0, 300, 1713, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x00004230
	 { 110, 300, 1713, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00004240
	 { 110, 300, 1683, 0, 4096, -2389, 100, 89, 67, 255 }, // 0x00004250
	 { -110, 300, 1683, 0, 0, -2389, 100, 89, 67, 255 }, // 0x00004260
	 { -110, 300, 1713, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00004270
	 { -110, 310, 1743, 0, 0, -3072, 100, 89, 67, 255 }, // 0x00004280
	 { -110, 310, 1713, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00004290
	 { 0, 320, 1743, 0, 2048, -2731, 134, 119, 89, 255 }, // 0x000042A0
	 { 0, 320, 1773, 0, 2048, -3072, 69, 62, 48, 255 }, // 0x000042B0
	 { 110, 320, 1773, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x000042C0
	 { 110, 320, 1743, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x000042D0
	 { -110, 320, 1773, 0, 0, -3072, 100, 89, 67, 255 }, // 0x000042E0
	 { -110, 320, 1743, 0, 0, -2731, 100, 89, 67, 255 }, // 0x000042F0
};

Vtx_t _ganontika_room_0_vertices_00004300[12] = 
{
	 { 110, 240, 1533, 0, 8192, 1024, 100, 89, 67, 255 }, // 0x00004300
	 { 110, 280, 1653, 0, 4096, 1109, 81, 72, 55, 255 }, // 0x00004310
	 { 110, 345, 1653, 0, 4096, 0, 81, 72, 55, 255 }, // 0x00004320
	 { 110, 300, 1533, 0, 8192, 0, 170, 113, 56, 255 }, // 0x00004330
	 { 110, 320, 1773, 0, 0, 1195, 100, 89, 67, 255 }, // 0x00004340
	 { 110, 390, 1773, 0, 0, 0, 209, 164, 118, 255 }, // 0x00004350
	 { -110, 390, 1773, 0, 0, 0, 209, 164, 118, 255 }, // 0x00004360
	 { -110, 320, 1773, 0, 0, 1195, 100, 89, 67, 255 }, // 0x00004370
	 { -110, 280, 1653, 0, 4096, 1109, 81, 72, 55, 255 }, // 0x00004380
	 { -110, 345, 1653, 0, 4096, 0, 81, 72, 55, 255 }, // 0x00004390
	 { -110, 240, 1533, 0, 8192, 1024, 100, 89, 67, 255 }, // 0x000043A0
	 { -110, 300, 1533, 0, 8192, 0, 170, 113, 56, 255 }, // 0x000043B0
};

Vtx_t _ganontika_room_0_vertices_000043C0[12] = 
{
	 { -110, 390, 1773, 0, 4608, 2048, 209, 164, 118, 255 }, // 0x000043C0
	 { -110, 345, 1653, 0, 6144, 3200, 81, 72, 55, 255 }, // 0x000043D0
	 { -110, 490, 1773, 0, 4608, -512, 93, 62, 31, 255 }, // 0x000043E0
	 { -110, 400, 1533, 0, 7680, 1792, 151, 101, 50, 255 }, // 0x000043F0
	 { -110, 445, 1653, 0, 6144, 640, 5, 5, 5, 255 }, // 0x00004400
	 { -110, 300, 1533, 0, 7680, 4352, 170, 113, 56, 255 }, // 0x00004410
	 { 110, 390, 1773, 0, 5632, -256, 209, 164, 118, 255 }, // 0x00004420
	 { 110, 490, 1773, 0, 5632, -2816, 93, 62, 31, 255 }, // 0x00004430
	 { 110, 345, 1653, 0, 4096, 896, 81, 72, 55, 255 }, // 0x00004440
	 { 110, 445, 1653, 0, 4096, -1664, 5, 5, 5, 255 }, // 0x00004450
	 { 110, 400, 1533, 0, 2560, -512, 151, 101, 50, 255 }, // 0x00004460
	 { 110, 300, 1533, 0, 2560, 2048, 170, 113, 56, 255 }, // 0x00004470
};

Vtx_t _ganontika_room_0_vertices_00004480[54] = 
{
	 { 0, 260, 1563, 0, 2048, -1707, 147, 131, 97, 255 }, // 0x00004480
	 { 0, 250, 1563, 0, 2048, -1365, 69, 62, 48, 255 }, // 0x00004490
	 { -110, 250, 1563, 0, 0, -1365, 100, 89, 67, 255 }, // 0x000044A0
	 { -110, 260, 1563, 0, 0, -1707, 100, 89, 67, 255 }, // 0x000044B0
	 { 110, 260, 1563, 0, 4096, -1707, 100, 89, 67, 255 }, // 0x000044C0
	 { 110, 250, 1563, 0, 4096, -1365, 100, 89, 67, 255 }, // 0x000044D0
	 { 0, 270, 1593, 0, 2048, -2048, 147, 131, 97, 255 }, // 0x000044E0
	 { 0, 260, 1593, 0, 2048, -1707, 69, 62, 48, 255 }, // 0x000044F0
	 { -110, 260, 1593, 0, 0, -1707, 100, 89, 67, 255 }, // 0x00004500
	 { -110, 270, 1593, 0, 0, -2048, 100, 89, 67, 255 }, // 0x00004510
	 { 110, 270, 1593, 0, 4096, -2048, 100, 89, 67, 255 }, // 0x00004520
	 { 110, 260, 1593, 0, 4096, -1707, 100, 89, 67, 255 }, // 0x00004530
	 { 0, 280, 1623, 0, 2048, -2389, 147, 131, 97, 255 }, // 0x00004540
	 { 0, 270, 1623, 0, 2048, -2048, 69, 62, 48, 255 }, // 0x00004550
	 { -110, 270, 1623, 0, 0, -2048, 100, 89, 67, 255 }, // 0x00004560
	 { -110, 280, 1623, 0, 0, -2389, 100, 89, 67, 255 }, // 0x00004570
	 { 110, 280, 1623, 0, 4096, -2389, 100, 89, 67, 255 }, // 0x00004580
	 { 110, 270, 1623, 0, 4096, -2048, 100, 89, 67, 255 }, // 0x00004590
	 { 0, 290, 1653, 0, 2048, -2731, 147, 131, 97, 255 }, // 0x000045A0
	 { 0, 280, 1653, 0, 2048, -2389, 69, 62, 48, 255 }, // 0x000045B0
	 { -110, 280, 1653, 0, 0, -2389, 100, 89, 67, 255 }, // 0x000045C0
	 { -110, 290, 1653, 0, 0, -2731, 100, 89, 67, 255 }, // 0x000045D0
	 { 110, 290, 1653, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x000045E0
	 { 110, 280, 1653, 0, 4096, -2389, 100, 89, 67, 255 }, // 0x000045F0
	 { 0, 300, 1683, 0, 2048, -3072, 147, 131, 97, 255 }, // 0x00004600
	 { 0, 290, 1683, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x00004610
	 { -110, 290, 1683, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00004620
	 { -110, 300, 1683, 0, 0, -3072, 100, 89, 67, 255 }, // 0x00004630
	 { 110, 300, 1683, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x00004640
	 { 110, 290, 1683, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00004650
	 { 0, 310, 1713, 0, 2048, -2731, 147, 131, 97, 255 }, // 0x00004660
	 { 0, 300, 1713, 0, 2048, -2389, 69, 62, 48, 255 }, // 0x00004670
	 { -110, 300, 1713, 0, 0, -2389, 100, 89, 67, 255 }, // 0x00004680
	 { -110, 310, 1713, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00004690
	 { 110, 310, 1713, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x000046A0
	 { 110, 300, 1713, 0, 4096, -2389, 100, 89, 67, 255 }, // 0x000046B0
	 { 0, 320, 1743, 0, 2048, -3072, 147, 131, 97, 255 }, // 0x000046C0
	 { 0, 310, 1743, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x000046D0
	 { -110, 310, 1743, 0, 0, -2731, 100, 89, 67, 255 }, // 0x000046E0
	 { -110, 320, 1743, 0, 0, -3072, 100, 89, 67, 255 }, // 0x000046F0
	 { 110, 320, 1743, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x00004700
	 { 110, 310, 1743, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00004710
	 { 0, 330, 1773, 0, 2048, -3072, 147, 131, 97, 255 }, // 0x00004720
	 { 0, 320, 1773, 0, 2048, -2731, 69, 62, 48, 255 }, // 0x00004730
	 { -110, 320, 1773, 0, 0, -2731, 100, 89, 67, 255 }, // 0x00004740
	 { -110, 330, 1773, 0, 0, -3072, 100, 89, 67, 255 }, // 0x00004750
	 { 110, 330, 1773, 0, 4096, -3072, 100, 89, 67, 255 }, // 0x00004760
	 { 110, 320, 1773, 0, 4096, -2731, 100, 89, 67, 255 }, // 0x00004770
	 { 0, 250, 1533, 0, 2048, -1707, 132, 88, 43, 255 }, // 0x00004780
	 { 0, 240, 1533, 0, 2048, -1365, 69, 62, 48, 255 }, // 0x00004790
	 { -110, 240, 1533, 0, 0, -1365, 100, 89, 67, 255 }, // 0x000047A0
	 { -110, 250, 1533, 0, 0, -1707, 100, 89, 67, 255 }, // 0x000047B0
	 { 110, 250, 1533, 0, 4096, -1707, 100, 89, 67, 255 }, // 0x000047C0
	 { 110, 240, 1533, 0, 4096, -1365, 100, 89, 67, 255 }, // 0x000047D0
};

Vtx_t _ganontika_room_0_vertices_000047E0[8] = 
{
	 { -110, 234, 1536, 0, 0, 0, 0, 0, 0, 0 }, // 0x000047E0
	 { 110, 234, 1536, 0, 0, 0, 0, 0, 0, 0 }, // 0x000047F0
	 { -110, 419, 1468, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004800
	 { 110, 419, 1468, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004810
	 { -110, 345, 1841, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004820
	 { 110, 345, 1841, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004830
	 { -110, 530, 1773, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004840
	 { 110, 530, 1773, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004850
};

Gfx _ganontika_room_0_dlist_00004860[] =
{
	gsDPPipeSync(), // 0x00004860
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004868
	gsSPVertex(_ganontika_room_0_vertices_000047E0, 8, 0), // 0x00004870
	gsSPCullDisplayList(0, 7), // 0x00004878
	gsDPPipeSync(), // 0x00004880
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004888
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004890
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004898
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000048A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000048A8
	gsDPLoadSync(), // 0x000048B0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000048B8
	gsDPPipeSync(), // 0x000048C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000048C8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000048D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000048D8
	gsDPTileSync(), // 0x000048E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000048E8
	gsDPLoadSync(), // 0x000048F0
	gsDPLoadTLUTCmd(7, 255), // 0x000048F8
	gsDPPipeSync(), // 0x00004900
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004908
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004910
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004918
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004920
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004928
	gsSPVertex(_ganontika_room_0_vertices_00003EE0, 18, 0), // 0x00004930
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004938
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00004940
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00004948
	gsSP2Triangles(10, 11, 6, 0, 10, 6, 9, 0), // 0x00004950
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00004958
	gsSP2Triangles(16, 12, 15, 0, 16, 15, 17, 0), // 0x00004960
	gsDPPipeSync(), // 0x00004968
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_0_tex_00007F48), // 0x00004970
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00004978
	gsDPLoadSync(), // 0x00004980
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004988
	gsDPPipeSync(), // 0x00004990
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00004998
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000049A0
	gsSPVertex(_ganontika_room_0_vertices_00004000, 32, 0), // 0x000049A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000049B0
	gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0), // 0x000049B8
	gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0), // 0x000049C0
	gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0), // 0x000049C8
	gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0), // 0x000049D0
	gsSP2Triangles(16, 19, 20, 0, 16, 20, 21, 0), // 0x000049D8
	gsSP2Triangles(12, 15, 22, 0, 12, 22, 23, 0), // 0x000049E0
	gsSP2Triangles(8, 11, 24, 0, 8, 24, 25, 0), // 0x000049E8
	gsSP2Triangles(4, 7, 26, 0, 4, 26, 27, 0), // 0x000049F0
	gsSP2Triangles(2, 1, 28, 0, 2, 28, 29, 0), // 0x000049F8
	gsSPVertex(_ganontika_room_0_vertices_000041E0, 18, 0), // 0x00004A00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004A08
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004A10
	gsSP2Triangles(4, 8, 9, 0, 5, 4, 9, 0), // 0x00004A18
	gsSP2Triangles(10, 1, 0, 0, 10, 0, 11, 0), // 0x00004A20
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00004A28
	gsSP2Triangles(16, 13, 12, 0, 16, 12, 17, 0), // 0x00004A30
	gsDPPipeSync(), // 0x00004A38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00004A40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00004A48
	gsDPLoadSync(), // 0x00004A50
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004A58
	gsDPPipeSync(), // 0x00004A60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00004A68
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004A70
	gsSPVertex(_ganontika_room_0_vertices_00004300, 12, 0), // 0x00004A78
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004A80
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00004A88
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00004A90
	gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0), // 0x00004A98
	gsDPPipeSync(), // 0x00004AA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00004AA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004AB0
	gsDPLoadSync(), // 0x00004AB8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004AC0
	gsDPPipeSync(), // 0x00004AC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004AD0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004AD8
	gsSPVertex(_ganontika_room_0_vertices_000043C0, 12, 0), // 0x00004AE0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0), // 0x00004AE8
	gsSP2Triangles(1, 4, 2, 0, 1, 5, 3, 0), // 0x00004AF0
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 8, 0), // 0x00004AF8
	gsSP2Triangles(7, 9, 8, 0, 10, 11, 8, 0), // 0x00004B00
	gsDPPipeSync(), // 0x00004B08
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_0_tex_00007F48), // 0x00004B10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00004B18
	gsDPLoadSync(), // 0x00004B20
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004B28
	gsDPPipeSync(), // 0x00004B30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00004B38
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004B40
	gsSPVertex(_ganontika_room_0_vertices_00004480, 32, 0), // 0x00004B48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004B50
	gsSP2Triangles(0, 4, 5, 0, 1, 0, 5, 0), // 0x00004B58
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00004B60
	gsSP2Triangles(6, 10, 11, 0, 7, 6, 11, 0), // 0x00004B68
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00004B70
	gsSP2Triangles(12, 16, 17, 0, 13, 12, 17, 0), // 0x00004B78
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x00004B80
	gsSP2Triangles(18, 22, 23, 0, 19, 18, 23, 0), // 0x00004B88
	gsSP2Triangles(24, 25, 26, 0, 27, 24, 26, 0), // 0x00004B90
	gsSP2Triangles(24, 28, 29, 0, 25, 24, 29, 0), // 0x00004B98
	gsSPVertex(_ganontika_room_0_vertices_00004660, 24, 0), // 0x00004BA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004BA8
	gsSP2Triangles(0, 4, 5, 0, 1, 0, 5, 0), // 0x00004BB0
	gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0), // 0x00004BB8
	gsSP2Triangles(6, 10, 11, 0, 7, 6, 11, 0), // 0x00004BC0
	gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0), // 0x00004BC8
	gsSP2Triangles(12, 16, 17, 0, 13, 12, 17, 0), // 0x00004BD0
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x00004BD8
	gsSP2Triangles(18, 22, 23, 0, 19, 18, 23, 0), // 0x00004BE0
	gsSPEndDisplayList(), // 0x00004BE8
};

Vtx_t _ganontika_room_0_vertices_00004BF0[8] = 
{
	 { 90, 150, 773, 0, -358, 1485, 218, 211, 199, 255 }, // 0x00004BF0
	 { 270, 150, 613, 0, -1331, 3174, 81, 72, 55, 255 }, // 0x00004C00
	 { 90, 150, 613, 0, 51, 2714, 158, 142, 111, 255 }, // 0x00004C10
	 { -90, 150, 613, 0, 1434, 2253, 158, 142, 111, 255 }, // 0x00004C20
	 { -270, 150, 613, 0, 2816, 1792, 81, 72, 55, 255 }, // 0x00004C30
	 { -90, 150, 773, 0, 1024, 1024, 218, 211, 199, 255 }, // 0x00004C40
	 { 270, 150, 853, 0, -1946, 1331, 81, 72, 55, 255 }, // 0x00004C50
	 { -270, 150, 853, 0, 2202, -51, 81, 72, 55, 255 }, // 0x00004C60
};

Vtx_t _ganontika_room_0_vertices_00004C70[10] = 
{
	 { 0, 150, 653, 0, 1820, 1024, 255, 255, 255, 255 }, // 0x00004C70
	 { -90, 150, 773, 0, 0, -1024, 218, 211, 199, 255 }, // 0x00004C80
	 { 90, 150, 773, 0, 0, 3072, 218, 211, 199, 255 }, // 0x00004C90
	 { 90, 150, 593, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00004CA0
	 { 0, 150, 593, 0, 2048, 1024, 100, 89, 67, 255 }, // 0x00004CB0
	 { 0, 150, 653, 0, 2048, -341, 255, 255, 255, 255 }, // 0x00004CC0
	 { 90, 150, 773, 0, 0, -2162, 218, 211, 199, 255 }, // 0x00004CD0
	 { -90, 150, 593, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00004CE0
	 { -90, 150, 773, 0, 0, 4210, 218, 211, 199, 255 }, // 0x00004CF0
	 { 0, 150, 653, 0, 2048, 2389, 255, 255, 255, 255 }, // 0x00004D00
};

Vtx_t _ganontika_room_0_vertices_00004D10[12] = 
{
	 { -30, 150, 613, 0, 171, 2048, 100, 89, 67, 255 }, // 0x00004D10
	 { -30, 150, 593, 0, 0, 2048, 100, 89, 67, 255 }, // 0x00004D20
	 { -30, 250, 593, 0, 0, 341, 52, 49, 38, 255 }, // 0x00004D30
	 { -30, 250, 613, 0, 171, 341, 52, 49, 38, 255 }, // 0x00004D40
	 { -30, 250, 613, 0, 1024, 1707, 52, 49, 38, 255 }, // 0x00004D50
	 { -30, 250, 593, 0, 1024, 2048, 52, 49, 38, 255 }, // 0x00004D60
	 { 30, 250, 593, 0, 512, 2048, 52, 49, 38, 255 }, // 0x00004D70
	 { 30, 250, 613, 0, 512, 1707, 52, 49, 38, 255 }, // 0x00004D80
	 { 30, 250, 613, 0, 0, 341, 52, 49, 38, 255 }, // 0x00004D90
	 { 30, 250, 593, 0, 171, 341, 52, 49, 38, 255 }, // 0x00004DA0
	 { 30, 150, 593, 0, 171, 2048, 100, 89, 67, 255 }, // 0x00004DB0
	 { 30, 150, 613, 0, 0, 2048, 100, 89, 67, 255 }, // 0x00004DC0
};

Vtx_t _ganontika_room_0_vertices_00004DD0[4] = 
{
	 { -270, 150, 853, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00004DD0
	 { -270, 150, 613, 0, 8192, 1024, 81, 72, 55, 255 }, // 0x00004DE0
	 { -270, 210, 613, 0, 8192, 0, 158, 142, 111, 255 }, // 0x00004DF0
	 { -270, 210, 853, 0, 0, 0, 158, 142, 111, 255 }, // 0x00004E00
};

Vtx_t _ganontika_room_0_vertices_00004E10[8] = 
{
	 { -270, 210, 613, 0, 2560, 2048, 158, 142, 111, 255 }, // 0x00004E10
	 { -270, 370, 613, 0, 2560, -2048, 69, 62, 48, 255 }, // 0x00004E20
	 { -270, 370, 853, 0, 0, -2048, 69, 62, 48, 255 }, // 0x00004E30
	 { -270, 210, 853, 0, 0, 2048, 158, 142, 111, 255 }, // 0x00004E40
	 { 270, 370, 853, 0, 2560, -2048, 69, 62, 48, 255 }, // 0x00004E50
	 { 270, 370, 613, 0, 0, -2048, 69, 62, 48, 255 }, // 0x00004E60
	 { 270, 210, 613, 0, 0, 2048, 158, 142, 111, 255 }, // 0x00004E70
	 { 270, 210, 853, 0, 2560, 2048, 158, 142, 111, 255 }, // 0x00004E80
};

Vtx_t _ganontika_room_0_vertices_00004E90[4] = 
{
	 { 270, 210, 613, 0, -4096, 0, 158, 142, 111, 255 }, // 0x00004E90
	 { 270, 150, 613, 0, -4096, 1024, 81, 72, 55, 255 }, // 0x00004EA0
	 { 270, 150, 853, 0, 4096, 1024, 81, 72, 55, 255 }, // 0x00004EB0
	 { 270, 210, 853, 0, 4096, 0, 158, 142, 111, 255 }, // 0x00004EC0
};

Vtx_t _ganontika_room_0_vertices_00004ED0[12] = 
{
	 { -210, 430, 813, 0, 1707, 0, 69, 62, 48, 255 }, // 0x00004ED0
	 { -210, 430, 613, 0, 0, 0, 52, 49, 38, 255 }, // 0x00004EE0
	 { 210, 430, 613, 0, 0, 4437, 52, 49, 38, 255 }, // 0x00004EF0
	 { 210, 430, 853, 0, 1707, 4437, 69, 62, 48, 255 }, // 0x00004F00
	 { 210, 430, 853, 0, 2560, -3584, 69, 62, 48, 255 }, // 0x00004F10
	 { 210, 430, 613, 0, 0, -3584, 52, 49, 38, 255 }, // 0x00004F20
	 { 270, 370, 613, 0, 0, -2048, 69, 62, 48, 255 }, // 0x00004F30
	 { 270, 370, 853, 0, 2560, -2048, 69, 62, 48, 255 }, // 0x00004F40
	 { -270, 370, 853, 0, 0, -2048, 69, 62, 48, 255 }, // 0x00004F50
	 { -270, 370, 613, 0, 2560, -2048, 69, 62, 48, 255 }, // 0x00004F60
	 { -210, 430, 613, 0, 2560, -3584, 52, 49, 38, 255 }, // 0x00004F70
	 { -210, 430, 813, 0, 0, -3584, 69, 62, 48, 255 }, // 0x00004F80
};

Vtx_t _ganontika_room_0_vertices_00004F90[4] = 
{
	 { 30, 250, 613, 0, 2048, 0, 147, 131, 97, 255 }, // 0x00004F90
	 { 50, 270, 613, 0, 2560, 512, 100, 89, 67, 255 }, // 0x00004FA0
	 { -50, 270, 613, 0, 0, 512, 100, 89, 67, 255 }, // 0x00004FB0
	 { -30, 250, 613, 0, 512, 0, 147, 131, 97, 255 }, // 0x00004FC0
};

Vtx_t _ganontika_room_0_vertices_00004FD0[4] = 
{
	 { 50, 270, 613, 0, 2304, 512, 203, 195, 178, 255 }, // 0x00004FD0
	 { 210, 430, 613, 0, 4352, -3584, 52, 49, 38, 255 }, // 0x00004FE0
	 { -210, 430, 613, 0, -1024, -3584, 52, 49, 38, 255 }, // 0x00004FF0
	 { -50, 270, 613, 0, 1024, 512, 203, 195, 178, 255 }, // 0x00005000
};

Vtx_t _ganontika_room_0_vertices_00005010[3] = 
{
	 { -30, 150, 613, 0, 512, 0, 100, 89, 67, 255 }, // 0x00005010
	 { -30, 250, 613, 0, -2048, 0, 147, 131, 97, 255 }, // 0x00005020
	 { -50, 150, 613, 0, 512, 512, 100, 89, 67, 255 }, // 0x00005030
};

Vtx_t _ganontika_room_0_vertices_00005040[3] = 
{
	 { -50, 270, 613, 0, 1024, 512, 203, 195, 178, 255 }, // 0x00005040
	 { -210, 430, 613, 0, -1024, -3584, 52, 49, 38, 255 }, // 0x00005050
	 { -270, 370, 613, 0, -1792, -2048, 69, 62, 48, 255 }, // 0x00005060
};

Vtx_t _ganontika_room_0_vertices_00005070[3] = 
{
	 { -30, 250, 613, 0, -2048, 0, 147, 131, 97, 255 }, // 0x00005070
	 { -50, 270, 613, 0, -2560, 512, 100, 89, 67, 255 }, // 0x00005080
	 { -50, 150, 613, 0, 512, 512, 100, 89, 67, 255 }, // 0x00005090
};

Vtx_t _ganontika_room_0_vertices_000050A0[3] = 
{
	 { -50, 270, 613, 0, 1024, 512, 203, 195, 178, 255 }, // 0x000050A0
	 { -270, 210, 613, 0, -1792, 2048, 158, 142, 111, 255 }, // 0x000050B0
	 { -50, 210, 613, 0, 1024, 2048, 203, 195, 178, 255 }, // 0x000050C0
};

Vtx_t _ganontika_room_0_vertices_000050D0[4] = 
{
	 { -270, 210, 613, 0, 0, 0, 158, 142, 111, 255 }, // 0x000050D0
	 { -270, 150, 613, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000050E0
	 { -50, 150, 613, 0, 8192, 1024, 100, 89, 67, 255 }, // 0x000050F0
	 { -50, 210, 613, 0, 8192, 0, 203, 195, 178, 255 }, // 0x00005100
};

Vtx_t _ganontika_room_0_vertices_00005110[6] = 
{
	 { -50, 270, 613, 0, 1024, 512, 203, 195, 178, 255 }, // 0x00005110
	 { -270, 370, 613, 0, -1792, -2048, 69, 62, 48, 255 }, // 0x00005120
	 { -270, 210, 613, 0, -1792, 2048, 158, 142, 111, 255 }, // 0x00005130
	 { 270, 370, 613, 0, 5120, -2048, 69, 62, 48, 255 }, // 0x00005140
	 { 210, 430, 613, 0, 4352, -3584, 52, 49, 38, 255 }, // 0x00005150
	 { 50, 270, 613, 0, 2304, 512, 203, 195, 178, 255 }, // 0x00005160
};

Vtx_t _ganontika_room_0_vertices_00005170[4] = 
{
	 { 270, 150, 613, 0, 8192, 1024, 69, 62, 48, 255 }, // 0x00005170
	 { 270, 210, 613, 0, 8192, 0, 158, 142, 111, 255 }, // 0x00005180
	 { 50, 210, 613, 0, 0, 0, 203, 195, 178, 255 }, // 0x00005190
	 { 50, 150, 613, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000051A0
};

Vtx_t _ganontika_room_0_vertices_000051B0[4] = 
{
	 { 270, 210, 613, 0, 5120, 2048, 158, 142, 111, 255 }, // 0x000051B0
	 { 50, 270, 613, 0, 2304, 512, 203, 195, 178, 255 }, // 0x000051C0
	 { 50, 210, 613, 0, 2304, 2048, 203, 195, 178, 255 }, // 0x000051D0
	 { 270, 370, 613, 0, 5120, -2048, 69, 62, 48, 255 }, // 0x000051E0
};

Vtx_t _ganontika_room_0_vertices_000051F0[4] = 
{
	 { 50, 270, 613, 0, 1024, 512, 100, 89, 67, 255 }, // 0x000051F0
	 { 30, 250, 613, 0, 512, 0, 147, 131, 97, 255 }, // 0x00005200
	 { 50, 150, 613, 0, -2048, 512, 100, 89, 67, 255 }, // 0x00005210
	 { 30, 150, 613, 0, -2048, 0, 100, 89, 67, 255 }, // 0x00005220
};

Vtx_t _ganontika_room_0_vertices_00005230[8] = 
{
	 { -270, 150, 593, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005230
	 { 270, 150, 593, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005240
	 { -270, 430, 593, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005250
	 { 270, 430, 593, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005260
	 { -270, 150, 853, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005270
	 { 270, 150, 853, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005280
	 { -270, 430, 853, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005290
	 { 270, 430, 853, 0, 0, 0, 0, 0, 0, 0 }, // 0x000052A0
};

Gfx _ganontika_room_0_dlist_000052B0[] =
{
	gsDPPipeSync(), // 0x000052B0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000052B8
	gsSPVertex(_ganontika_room_0_vertices_00005230, 8, 0), // 0x000052C0
	gsSPCullDisplayList(0, 7), // 0x000052C8
	gsDPPipeSync(), // 0x000052D0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000052D8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000052E0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000052E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x000052F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000052F8
	gsDPLoadSync(), // 0x00005300
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005308
	gsDPPipeSync(), // 0x00005310
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005318
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005320
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005328
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005330
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005338
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005340
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005348
	gsSPVertex(_ganontika_room_0_vertices_00004BF0, 8, 0), // 0x00005350
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00005358
	gsSP2Triangles(6, 1, 0, 0, 5, 4, 7, 0), // 0x00005360
	gsDPPipeSync(), // 0x00005368
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005370
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_0_tex_00007F48), // 0x00005378
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00005380
	gsDPLoadSync(), // 0x00005388
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005390
	gsDPPipeSync(), // 0x00005398
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000053A0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000053A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000053B0
	gsDPTileSync(), // 0x000053B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000053C0
	gsDPLoadSync(), // 0x000053C8
	gsDPLoadTLUTCmd(7, 255), // 0x000053D0
	gsDPPipeSync(), // 0x000053D8
	gsSPVertex(_ganontika_room_0_vertices_00004C70, 10, 0), // 0x000053E0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000053E8
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x000053F0
	gsSP1Triangle(4, 7, 9, 0), // 0x000053F8
	gsDPPipeSync(), // 0x00005400
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00005408
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005410
	gsDPLoadSync(), // 0x00005418
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005420
	gsDPPipeSync(), // 0x00005428
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005430
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005438
	gsSPVertex(_ganontika_room_0_vertices_00004D10, 12, 0), // 0x00005440
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005448
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005450
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00005458
	gsDPPipeSync(), // 0x00005460
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00005468
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00005470
	gsDPLoadSync(), // 0x00005478
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005480
	gsDPPipeSync(), // 0x00005488
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00005490
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005498
	gsSPVertex(_ganontika_room_0_vertices_00004DD0, 4, 0), // 0x000054A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000054A8
	gsDPPipeSync(), // 0x000054B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000054B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000054C0
	gsDPLoadSync(), // 0x000054C8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000054D0
	gsDPPipeSync(), // 0x000054D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000054E0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000054E8
	gsSPVertex(_ganontika_room_0_vertices_00004E10, 8, 0), // 0x000054F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000054F8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005500
	gsDPPipeSync(), // 0x00005508
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00005510
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00005518
	gsDPLoadSync(), // 0x00005520
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005528
	gsDPPipeSync(), // 0x00005530
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00005538
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005540
	gsSPVertex(_ganontika_room_0_vertices_00004E90, 4, 0), // 0x00005548
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005550
	gsDPPipeSync(), // 0x00005558
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00005560
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005568
	gsDPLoadSync(), // 0x00005570
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005578
	gsDPPipeSync(), // 0x00005580
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005588
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005590
	gsSPVertex(_ganontika_room_0_vertices_00004ED0, 12, 0), // 0x00005598
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000055A0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000055A8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000055B0
	gsDPPipeSync(), // 0x000055B8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000055C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F580), // 0x000055C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x000055D0
	gsDPLoadSync(), // 0x000055D8
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x000055E0
	gsDPPipeSync(), // 0x000055E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x000055F0
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x000055F8
	gsSPVertex(_ganontika_room_0_vertices_00004F90, 4, 0), // 0x00005600
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005608
	gsDPPipeSync(), // 0x00005610
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005618
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00005620
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005628
	gsDPLoadSync(), // 0x00005630
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005638
	gsDPPipeSync(), // 0x00005640
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005648
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005650
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00005658
	gsDPTileSync(), // 0x00005660
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005668
	gsDPLoadSync(), // 0x00005670
	gsDPLoadTLUTCmd(7, 255), // 0x00005678
	gsDPPipeSync(), // 0x00005680
	gsSPVertex(_ganontika_room_0_vertices_00004FD0, 4, 0), // 0x00005688
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005690
	gsDPPipeSync(), // 0x00005698
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000056A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F580), // 0x000056A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x000056B0
	gsDPLoadSync(), // 0x000056B8
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x000056C0
	gsDPPipeSync(), // 0x000056C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x000056D0
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x000056D8
	gsSPVertex(_ganontika_room_0_vertices_00005010, 3, 0), // 0x000056E0
	gsSP1Triangle(0, 1, 2, 0), // 0x000056E8
	gsDPPipeSync(), // 0x000056F0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000056F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00005700
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005708
	gsDPLoadSync(), // 0x00005710
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005718
	gsDPPipeSync(), // 0x00005720
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005728
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005730
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00005738
	gsDPTileSync(), // 0x00005740
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005748
	gsDPLoadSync(), // 0x00005750
	gsDPLoadTLUTCmd(7, 255), // 0x00005758
	gsDPPipeSync(), // 0x00005760
	gsSPVertex(_ganontika_room_0_vertices_00005040, 3, 0), // 0x00005768
	gsSP1Triangle(0, 1, 2, 0), // 0x00005770
	gsDPPipeSync(), // 0x00005778
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005780
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F580), // 0x00005788
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00005790
	gsDPLoadSync(), // 0x00005798
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x000057A0
	gsDPPipeSync(), // 0x000057A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x000057B0
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x000057B8
	gsSPVertex(_ganontika_room_0_vertices_00005070, 3, 0), // 0x000057C0
	gsSP1Triangle(0, 1, 2, 0), // 0x000057C8
	gsDPPipeSync(), // 0x000057D0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000057D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000057E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000057E8
	gsDPLoadSync(), // 0x000057F0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000057F8
	gsDPPipeSync(), // 0x00005800
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005808
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005810
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00005818
	gsDPTileSync(), // 0x00005820
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005828
	gsDPLoadSync(), // 0x00005830
	gsDPLoadTLUTCmd(7, 255), // 0x00005838
	gsDPPipeSync(), // 0x00005840
	gsSPVertex(_ganontika_room_0_vertices_000050A0, 3, 0), // 0x00005848
	gsSP1Triangle(0, 1, 2, 0), // 0x00005850
	gsDPPipeSync(), // 0x00005858
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00005860
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00005868
	gsDPLoadSync(), // 0x00005870
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005878
	gsDPPipeSync(), // 0x00005880
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00005888
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005890
	gsSPVertex(_ganontika_room_0_vertices_000050D0, 4, 0), // 0x00005898
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000058A0
	gsDPPipeSync(), // 0x000058A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000058B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000058B8
	gsDPLoadSync(), // 0x000058C0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000058C8
	gsDPPipeSync(), // 0x000058D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000058D8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000058E0
	gsSPVertex(_ganontika_room_0_vertices_00005110, 6, 0), // 0x000058E8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000058F0
	gsDPPipeSync(), // 0x000058F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00005900
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00005908
	gsDPLoadSync(), // 0x00005910
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005918
	gsDPPipeSync(), // 0x00005920
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00005928
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005930
	gsSPVertex(_ganontika_room_0_vertices_00005170, 4, 0), // 0x00005938
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005940
	gsDPPipeSync(), // 0x00005948
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00005950
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005958
	gsDPLoadSync(), // 0x00005960
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005968
	gsDPPipeSync(), // 0x00005970
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005978
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005980
	gsSPVertex(_ganontika_room_0_vertices_000051B0, 4, 0), // 0x00005988
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005990
	gsDPPipeSync(), // 0x00005998
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000059A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F580), // 0x000059A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x000059B0
	gsDPLoadSync(), // 0x000059B8
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x000059C0
	gsDPPipeSync(), // 0x000059C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x000059D0
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x000059D8
	gsSPVertex(_ganontika_room_0_vertices_000051F0, 4, 0), // 0x000059E0
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x000059E8
	gsSPEndDisplayList(), // 0x000059F0
};

Vtx_t _ganontika_room_0_vertices_000059F8[43] = 
{
	 { 70, 390, 1843, 0, 0, 0, 216, 178, 139, 255 }, // 0x000059F8
	 { 80, 390, 1833, 0, 1024, 0, 216, 178, 139, 255 }, // 0x00005A08
	 { 80, 330, 1833, 0, 1024, 1024, 197, 140, 82, 255 }, // 0x00005A18
	 { 70, 330, 1843, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00005A28
	 { 80, 390, 1833, 0, 0, 0, 216, 178, 139, 255 }, // 0x00005A38
	 { 100, 390, 1833, 0, 1024, 0, 189, 126, 63, 255 }, // 0x00005A48
	 { 100, 330, 1833, 0, 1024, 1024, 197, 140, 82, 255 }, // 0x00005A58
	 { 80, 330, 1833, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00005A68
	 { 110, 330, 1843, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00005A78
	 { 100, 330, 1833, 0, 1024, 1024, 197, 140, 82, 255 }, // 0x00005A88
	 { 110, 390, 1843, 0, 0, 0, 189, 126, 63, 255 }, // 0x00005A98
	 { 100, 330, 1873, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00005AA8
	 { 110, 330, 1863, 0, 1024, 1024, 197, 140, 82, 255 }, // 0x00005AB8
	 { 100, 390, 1873, 0, 0, 0, 189, 126, 63, 255 }, // 0x00005AC8
	 { 110, 390, 1863, 0, 1024, 0, 189, 126, 63, 255 }, // 0x00005AD8
	 { 97, 390, 1838, 0, 1280, 0, 189, 126, 63, 255 }, // 0x00005AE8
	 { 110, 390, 1843, 0, 1280, 0, 189, 126, 63, 255 }, // 0x00005AF8
	 { 100, 390, 1833, 0, 1536, 0, 189, 126, 63, 255 }, // 0x00005B08
	 { 105, 390, 1846, 0, 1280, 0, 189, 126, 63, 255 }, // 0x00005B18
	 { 110, 390, 1863, 0, 768, 0, 189, 126, 63, 255 }, // 0x00005B28
	 { 105, 390, 1860, 0, 768, 0, 189, 126, 63, 255 }, // 0x00005B38
	 { 100, 390, 1873, 0, 512, 0, 189, 126, 63, 255 }, // 0x00005B48
	 { 74, 390, 1860, 0, 768, 0, 189, 126, 63, 255 }, // 0x00005B58
	 { 70, 390, 1863, 0, 768, 0, 216, 178, 139, 255 }, // 0x00005B68
	 { 80, 390, 1873, 0, 512, 0, 216, 178, 139, 255 }, // 0x00005B78
	 { 70, 390, 1843, 0, 1280, 0, 216, 178, 139, 255 }, // 0x00005B88
	 { 74, 390, 1846, 0, 1024, 0, 189, 126, 63, 255 }, // 0x00005B98
	 { 83, 390, 1838, 0, 1280, 0, 189, 126, 63, 255 }, // 0x00005BA8
	 { 80, 390, 1833, 0, 1536, 0, 216, 178, 139, 255 }, // 0x00005BB8
	 { 97, 390, 1869, 0, 768, 0, 189, 126, 63, 255 }, // 0x00005BC8
	 { 83, 390, 1869, 0, 768, 0, 189, 126, 63, 255 }, // 0x00005BD8
	 { 100, 390, 1873, 0, 0, 0, 189, 126, 63, 255 }, // 0x00005BE8
	 { 80, 390, 1873, 0, 1024, 0, 216, 178, 139, 255 }, // 0x00005BF8
	 { 80, 330, 1873, 0, 1024, 1024, 197, 140, 82, 255 }, // 0x00005C08
	 { 100, 330, 1873, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00005C18
	 { 80, 390, 1873, 0, 0, 0, 216, 178, 139, 255 }, // 0x00005C28
	 { 70, 390, 1863, 0, 1024, 0, 216, 178, 139, 255 }, // 0x00005C38
	 { 70, 330, 1863, 0, 1024, 1024, 197, 140, 82, 255 }, // 0x00005C48
	 { 80, 330, 1873, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00005C58
	 { 70, 390, 1843, 0, 1024, 0, 216, 178, 139, 255 }, // 0x00005C68
	 { 70, 330, 1843, 0, 1024, 1024, 197, 140, 82, 255 }, // 0x00005C78
	 { 70, 330, 1863, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00005C88
	 { 70, 390, 1863, 0, 0, 0, 216, 178, 139, 255 }, // 0x00005C98
};

Vtx_t _ganontika_room_0_vertices_00005CA8[8] = 
{
	 { 97, 350, 1838, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00005CA8
	 { 83, 350, 1838, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00005CB8
	 { 74, 350, 1846, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00005CC8
	 { 74, 350, 1860, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00005CD8
	 { 83, 350, 1869, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00005CE8
	 { 97, 350, 1869, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00005CF8
	 { 105, 350, 1860, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00005D08
	 { 105, 350, 1846, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00005D18
};

Vtx_t _ganontika_room_0_vertices_00005D28[18] = 
{
	 { 105, 390, 1846, 0, 7425, 0, 189, 126, 63, 255 }, // 0x00005D28
	 { 105, 350, 1846, 0, 7425, 1024, 5, 5, 5, 255 }, // 0x00005D38
	 { 105, 350, 1860, 0, 8959, 1024, 5, 5, 5, 255 }, // 0x00005D48
	 { 105, 390, 1860, 0, 8959, 0, 189, 126, 63, 255 }, // 0x00005D58
	 { 105, 390, 1860, 0, 767, 0, 189, 126, 63, 255 }, // 0x00005D68
	 { 105, 350, 1860, 0, 767, 1024, 5, 5, 5, 255 }, // 0x00005D78
	 { 97, 350, 1869, 0, 1281, 1024, 5, 5, 5, 255 }, // 0x00005D88
	 { 97, 390, 1869, 0, 1281, 0, 189, 126, 63, 255 }, // 0x00005D98
	 { 83, 350, 1869, 0, 2815, 1024, 5, 5, 5, 255 }, // 0x00005DA8
	 { 83, 390, 1869, 0, 2815, 0, 189, 126, 63, 255 }, // 0x00005DB8
	 { 74, 350, 1860, 0, 3329, 1024, 5, 5, 5, 255 }, // 0x00005DC8
	 { 74, 390, 1860, 0, 3329, 0, 189, 126, 63, 255 }, // 0x00005DD8
	 { 74, 350, 1846, 0, 4863, 1024, 5, 5, 5, 255 }, // 0x00005DE8
	 { 74, 390, 1846, 0, 4863, 0, 189, 126, 63, 255 }, // 0x00005DF8
	 { 83, 350, 1838, 0, 5377, 1024, 5, 5, 5, 255 }, // 0x00005E08
	 { 83, 390, 1838, 0, 5377, 0, 189, 126, 63, 255 }, // 0x00005E18
	 { 97, 350, 1838, 0, 6911, 1024, 5, 5, 5, 255 }, // 0x00005E28
	 { 97, 390, 1838, 0, 6911, 0, 189, 126, 63, 255 }, // 0x00005E38
};

Vtx_t _ganontika_room_0_vertices_00005E48[8] = 
{
	 { 70, 330, 1833, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E48
	 { 110, 330, 1833, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E58
	 { 70, 390, 1833, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E68
	 { 110, 390, 1833, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E78
	 { 70, 330, 1873, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E88
	 { 110, 330, 1873, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E98
	 { 70, 390, 1873, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005EA8
	 { 110, 390, 1873, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005EB8
};

Gfx _ganontika_room_0_dlist_00005EC8[] =
{
	gsDPPipeSync(), // 0x00005EC8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005ED0
	gsSPVertex(_ganontika_room_0_vertices_00005E48, 8, 0), // 0x00005ED8
	gsSPCullDisplayList(0, 7), // 0x00005EE0
	gsDPPipeSync(), // 0x00005EE8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005EF0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005EF8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005F00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001FF80), // 0x00005F08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005F10
	gsDPLoadSync(), // 0x00005F18
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005F20
	gsDPPipeSync(), // 0x00005F28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005F30
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005F38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00005F40
	gsDPTileSync(), // 0x00005F48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005F50
	gsDPLoadSync(), // 0x00005F58
	gsDPLoadTLUTCmd(7, 255), // 0x00005F60
	gsDPPipeSync(), // 0x00005F68
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005F70
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005F78
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005F80
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005F88
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005F90
	gsSPVertex(_ganontika_room_0_vertices_000059F8, 32, 0), // 0x00005F98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005FA0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005FA8
	gsSP2Triangles(8, 9, 5, 0, 8, 5, 10, 0), // 0x00005FB0
	gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0), // 0x00005FB8
	gsSP2Triangles(15, 16, 17, 0, 15, 18, 16, 0), // 0x00005FC0
	gsSP2Triangles(18, 19, 16, 0, 18, 20, 19, 0), // 0x00005FC8
	gsSP2Triangles(20, 21, 19, 0, 22, 23, 24, 0), // 0x00005FD0
	gsSP2Triangles(22, 25, 23, 0, 22, 26, 25, 0), // 0x00005FD8
	gsSP2Triangles(26, 27, 25, 0, 27, 28, 25, 0), // 0x00005FE0
	gsSP2Triangles(20, 29, 21, 0, 29, 30, 21, 0), // 0x00005FE8
	gsSP2Triangles(30, 24, 21, 0, 30, 22, 24, 0), // 0x00005FF0
	gsSP2Triangles(15, 28, 27, 0, 15, 17, 28, 0), // 0x00005FF8
	gsSPVertex(_ganontika_room_0_vertices_00005BE8, 12, 0), // 0x00006000
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006008
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006010
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00006018
	gsDPPipeSync(), // 0x00006020
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006028
	gsSPTexture(0, 0, 0, 0, 0), // 0x00006030
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00006038
	gsSPVertex(_ganontika_room_0_vertices_00005CA8, 8, 0), // 0x00006040
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006048
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00006050
	gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0), // 0x00006058
	gsDPPipeSync(), // 0x00006060
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00006068
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006070
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001FF80), // 0x00006078
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006080
	gsDPLoadSync(), // 0x00006088
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00006090
	gsDPPipeSync(), // 0x00006098
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000060A0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000060A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000060B0
	gsDPTileSync(), // 0x000060B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000060C0
	gsDPLoadSync(), // 0x000060C8
	gsDPLoadTLUTCmd(7, 255), // 0x000060D0
	gsDPPipeSync(), // 0x000060D8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000060E0
	gsSPVertex(_ganontika_room_0_vertices_00005D28, 18, 0), // 0x000060E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000060F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000060F8
	gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0), // 0x00006100
	gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0), // 0x00006108
	gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0), // 0x00006110
	gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0), // 0x00006118
	gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0), // 0x00006120
	gsSP2Triangles(17, 16, 1, 0, 17, 1, 0, 0), // 0x00006128
	gsSPEndDisplayList(), // 0x00006130
};

Vtx_t _ganontika_room_0_vertices_00006138[43] = 
{
	 { -70, 330, 1843, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00006138
	 { -80, 330, 1833, 0, 1024, 1024, 197, 140, 82, 255 }, // 0x00006148
	 { -80, 390, 1833, 0, 1024, 0, 216, 178, 139, 255 }, // 0x00006158
	 { -70, 390, 1843, 0, 0, 0, 216, 178, 139, 255 }, // 0x00006168
	 { -80, 330, 1833, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00006178
	 { -100, 330, 1833, 0, 1024, 1024, 197, 140, 82, 255 }, // 0x00006188
	 { -100, 390, 1833, 0, 1024, 0, 189, 126, 63, 255 }, // 0x00006198
	 { -80, 390, 1833, 0, 0, 0, 216, 178, 139, 255 }, // 0x000061A8
	 { -110, 390, 1843, 0, 0, 0, 189, 126, 63, 255 }, // 0x000061B8
	 { -100, 330, 1833, 0, 1024, 1024, 197, 140, 82, 255 }, // 0x000061C8
	 { -110, 330, 1843, 0, 0, 1024, 197, 140, 82, 255 }, // 0x000061D8
	 { -100, 390, 1873, 0, 0, 0, 189, 126, 63, 255 }, // 0x000061E8
	 { -110, 330, 1863, 0, 1024, 1024, 197, 140, 82, 255 }, // 0x000061F8
	 { -100, 330, 1873, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00006208
	 { -110, 390, 1863, 0, 1024, 0, 189, 126, 63, 255 }, // 0x00006218
	 { -100, 390, 1833, 0, 1536, 0, 189, 126, 63, 255 }, // 0x00006228
	 { -110, 390, 1843, 0, 1280, 0, 189, 126, 63, 255 }, // 0x00006238
	 { -97, 390, 1838, 0, 1280, 0, 189, 126, 63, 255 }, // 0x00006248
	 { -106, 390, 1846, 0, 1280, 0, 189, 126, 63, 255 }, // 0x00006258
	 { -110, 390, 1863, 0, 768, 0, 189, 126, 63, 255 }, // 0x00006268
	 { -106, 390, 1860, 0, 768, 0, 189, 126, 63, 255 }, // 0x00006278
	 { -100, 390, 1873, 0, 512, 0, 189, 126, 63, 255 }, // 0x00006288
	 { -80, 390, 1873, 0, 512, 0, 216, 178, 139, 255 }, // 0x00006298
	 { -70, 390, 1863, 0, 768, 0, 216, 178, 139, 255 }, // 0x000062A8
	 { -75, 390, 1860, 0, 768, 0, 189, 126, 63, 255 }, // 0x000062B8
	 { -70, 390, 1843, 0, 1280, 0, 216, 178, 139, 255 }, // 0x000062C8
	 { -75, 390, 1846, 0, 1024, 0, 189, 126, 63, 255 }, // 0x000062D8
	 { -83, 390, 1838, 0, 1280, 0, 189, 126, 63, 255 }, // 0x000062E8
	 { -80, 390, 1833, 0, 1536, 0, 216, 178, 139, 255 }, // 0x000062F8
	 { -97, 390, 1869, 0, 768, 0, 189, 126, 63, 255 }, // 0x00006308
	 { -83, 390, 1869, 0, 768, 0, 189, 126, 63, 255 }, // 0x00006318
	 { -100, 330, 1873, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00006328
	 { -80, 330, 1873, 0, 1024, 1024, 197, 140, 82, 255 }, // 0x00006338
	 { -80, 390, 1873, 0, 1024, 0, 216, 178, 139, 255 }, // 0x00006348
	 { -100, 390, 1873, 0, 0, 0, 189, 126, 63, 255 }, // 0x00006358
	 { -80, 330, 1873, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00006368
	 { -70, 330, 1863, 0, 1024, 1024, 197, 140, 82, 255 }, // 0x00006378
	 { -70, 390, 1863, 0, 1024, 0, 216, 178, 139, 255 }, // 0x00006388
	 { -80, 390, 1873, 0, 0, 0, 216, 178, 139, 255 }, // 0x00006398
	 { -70, 390, 1863, 0, 0, 0, 216, 178, 139, 255 }, // 0x000063A8
	 { -70, 330, 1863, 0, 0, 1024, 197, 140, 82, 255 }, // 0x000063B8
	 { -70, 330, 1843, 0, 1024, 1024, 197, 140, 82, 255 }, // 0x000063C8
	 { -70, 390, 1843, 0, 1024, 0, 216, 178, 139, 255 }, // 0x000063D8
};

Vtx_t _ganontika_room_0_vertices_000063E8[8] = 
{
	 { -106, 350, 1846, 0, 0, 1024, 5, 5, 5, 255 }, // 0x000063E8
	 { -106, 350, 1860, 0, 0, 1024, 5, 5, 5, 255 }, // 0x000063F8
	 { -97, 350, 1869, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00006408
	 { -83, 350, 1869, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00006418
	 { -75, 350, 1860, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00006428
	 { -75, 350, 1846, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00006438
	 { -83, 350, 1838, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00006448
	 { -97, 350, 1838, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00006458
};

Vtx_t _ganontika_room_0_vertices_00006468[18] = 
{
	 { -106, 390, 1860, 0, 8959, 0, 189, 126, 63, 255 }, // 0x00006468
	 { -106, 350, 1860, 0, 8959, 1024, 5, 5, 5, 255 }, // 0x00006478
	 { -106, 350, 1846, 0, 7425, 1024, 5, 5, 5, 255 }, // 0x00006488
	 { -106, 390, 1846, 0, 7425, 0, 189, 126, 63, 255 }, // 0x00006498
	 { -97, 390, 1869, 0, 1281, 0, 189, 126, 63, 255 }, // 0x000064A8
	 { -97, 350, 1869, 0, 1281, 1024, 5, 5, 5, 255 }, // 0x000064B8
	 { -106, 350, 1860, 0, 767, 1024, 5, 5, 5, 255 }, // 0x000064C8
	 { -106, 390, 1860, 0, 767, 0, 189, 126, 63, 255 }, // 0x000064D8
	 { -83, 390, 1869, 0, 2815, 0, 189, 126, 63, 255 }, // 0x000064E8
	 { -83, 350, 1869, 0, 2815, 1024, 5, 5, 5, 255 }, // 0x000064F8
	 { -75, 390, 1860, 0, 3329, 0, 189, 126, 63, 255 }, // 0x00006508
	 { -75, 350, 1860, 0, 3329, 1024, 5, 5, 5, 255 }, // 0x00006518
	 { -75, 390, 1846, 0, 4863, 0, 189, 126, 63, 255 }, // 0x00006528
	 { -75, 350, 1846, 0, 4863, 1024, 5, 5, 5, 255 }, // 0x00006538
	 { -83, 390, 1838, 0, 5377, 0, 189, 126, 63, 255 }, // 0x00006548
	 { -83, 350, 1838, 0, 5377, 1024, 5, 5, 5, 255 }, // 0x00006558
	 { -97, 390, 1838, 0, 6911, 0, 189, 126, 63, 255 }, // 0x00006568
	 { -97, 350, 1838, 0, 6911, 1024, 5, 5, 5, 255 }, // 0x00006578
};

Vtx_t _ganontika_room_0_vertices_00006588[8] = 
{
	 { -110, 330, 1833, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006588
	 { -70, 330, 1833, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006598
	 { -110, 390, 1833, 0, 0, 0, 0, 0, 0, 0 }, // 0x000065A8
	 { -70, 390, 1833, 0, 0, 0, 0, 0, 0, 0 }, // 0x000065B8
	 { -110, 330, 1873, 0, 0, 0, 0, 0, 0, 0 }, // 0x000065C8
	 { -70, 330, 1873, 0, 0, 0, 0, 0, 0, 0 }, // 0x000065D8
	 { -110, 390, 1873, 0, 0, 0, 0, 0, 0, 0 }, // 0x000065E8
	 { -70, 390, 1873, 0, 0, 0, 0, 0, 0, 0 }, // 0x000065F8
};

Gfx _ganontika_room_0_dlist_00006608[] =
{
	gsDPPipeSync(), // 0x00006608
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006610
	gsSPVertex(_ganontika_room_0_vertices_00006588, 8, 0), // 0x00006618
	gsSPCullDisplayList(0, 7), // 0x00006620
	gsDPPipeSync(), // 0x00006628
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006630
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00006638
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006640
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001FF80), // 0x00006648
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006650
	gsDPLoadSync(), // 0x00006658
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00006660
	gsDPPipeSync(), // 0x00006668
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006670
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006678
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00006680
	gsDPTileSync(), // 0x00006688
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00006690
	gsDPLoadSync(), // 0x00006698
	gsDPLoadTLUTCmd(7, 255), // 0x000066A0
	gsDPPipeSync(), // 0x000066A8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000066B0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000066B8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000066C0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000066C8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000066D0
	gsSPVertex(_ganontika_room_0_vertices_00006138, 32, 0), // 0x000066D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000066E0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000066E8
	gsSP2Triangles(8, 6, 9, 0, 8, 9, 10, 0), // 0x000066F0
	gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0), // 0x000066F8
	gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0), // 0x00006700
	gsSP2Triangles(16, 19, 18, 0, 19, 20, 18, 0), // 0x00006708
	gsSP2Triangles(19, 21, 20, 0, 22, 23, 24, 0), // 0x00006710
	gsSP2Triangles(23, 25, 24, 0, 25, 26, 24, 0), // 0x00006718
	gsSP2Triangles(25, 27, 26, 0, 25, 28, 27, 0), // 0x00006720
	gsSP2Triangles(21, 29, 20, 0, 21, 30, 29, 0), // 0x00006728
	gsSP2Triangles(21, 22, 30, 0, 22, 24, 30, 0), // 0x00006730
	gsSP2Triangles(27, 28, 17, 0, 28, 15, 17, 0), // 0x00006738
	gsSPVertex(_ganontika_room_0_vertices_00006328, 12, 0), // 0x00006740
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006748
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006750
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00006758
	gsDPPipeSync(), // 0x00006760
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006768
	gsSPTexture(0, 0, 0, 0, 0), // 0x00006770
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00006778
	gsSPVertex(_ganontika_room_0_vertices_000063E8, 8, 0), // 0x00006780
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006788
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00006790
	gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0), // 0x00006798
	gsDPPipeSync(), // 0x000067A0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000067A8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000067B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001FF80), // 0x000067B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000067C0
	gsDPLoadSync(), // 0x000067C8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000067D0
	gsDPPipeSync(), // 0x000067D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000067E0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000067E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000067F0
	gsDPTileSync(), // 0x000067F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00006800
	gsDPLoadSync(), // 0x00006808
	gsDPLoadTLUTCmd(7, 255), // 0x00006810
	gsDPPipeSync(), // 0x00006818
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006820
	gsSPVertex(_ganontika_room_0_vertices_00006468, 18, 0), // 0x00006828
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006830
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006838
	gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0), // 0x00006840
	gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0), // 0x00006848
	gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0), // 0x00006850
	gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0), // 0x00006858
	gsSP2Triangles(16, 17, 15, 0, 16, 15, 14, 0), // 0x00006860
	gsSP2Triangles(3, 2, 17, 0, 3, 17, 16, 0), // 0x00006868
	gsSPEndDisplayList(), // 0x00006870
};

Vtx_t _ganontika_room_0_vertices_00006878[43] = 
{
	 { 70, 300, 1443, 0, 0, 0, 254, 150, 124, 255 }, // 0x00006878
	 { 80, 300, 1433, 0, 1024, 0, 254, 150, 124, 255 }, // 0x00006888
	 { 80, 240, 1433, 0, 1024, 1024, 147, 131, 97, 255 }, // 0x00006898
	 { 70, 240, 1443, 0, 0, 1024, 223, 217, 208, 255 }, // 0x000068A8
	 { 80, 300, 1433, 0, 0, 0, 254, 150, 124, 255 }, // 0x000068B8
	 { 100, 300, 1433, 0, 1024, 0, 254, 150, 124, 255 }, // 0x000068C8
	 { 100, 240, 1433, 0, 1024, 1024, 254, 111, 15, 255 }, // 0x000068D8
	 { 80, 240, 1433, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000068E8
	 { 110, 240, 1443, 0, 0, 1024, 254, 111, 15, 255 }, // 0x000068F8
	 { 100, 240, 1433, 0, 1024, 1024, 254, 111, 15, 255 }, // 0x00006908
	 { 110, 300, 1443, 0, 0, 0, 254, 150, 124, 255 }, // 0x00006918
	 { 100, 240, 1473, 0, 0, 1024, 254, 111, 15, 255 }, // 0x00006928
	 { 110, 240, 1463, 0, 1024, 1024, 254, 111, 15, 255 }, // 0x00006938
	 { 100, 300, 1473, 0, 0, 0, 254, 150, 124, 255 }, // 0x00006948
	 { 110, 300, 1463, 0, 1024, 0, 254, 150, 124, 255 }, // 0x00006958
	 { 97, 300, 1438, 0, 1280, 0, 254, 150, 124, 255 }, // 0x00006968
	 { 110, 300, 1443, 0, 1280, 0, 254, 150, 124, 255 }, // 0x00006978
	 { 100, 300, 1433, 0, 1536, 0, 254, 150, 124, 255 }, // 0x00006988
	 { 105, 300, 1446, 0, 1280, 0, 254, 150, 124, 255 }, // 0x00006998
	 { 110, 300, 1463, 0, 768, 0, 254, 150, 124, 255 }, // 0x000069A8
	 { 105, 300, 1460, 0, 768, 0, 254, 150, 124, 255 }, // 0x000069B8
	 { 100, 300, 1473, 0, 512, 0, 254, 150, 124, 255 }, // 0x000069C8
	 { 74, 300, 1460, 0, 768, 0, 254, 150, 124, 255 }, // 0x000069D8
	 { 70, 300, 1463, 0, 768, 0, 254, 150, 124, 255 }, // 0x000069E8
	 { 80, 300, 1473, 0, 512, 0, 254, 150, 124, 255 }, // 0x000069F8
	 { 70, 300, 1443, 0, 1280, 0, 254, 150, 124, 255 }, // 0x00006A08
	 { 74, 300, 1446, 0, 1024, 0, 254, 150, 124, 255 }, // 0x00006A18
	 { 83, 300, 1438, 0, 1280, 0, 254, 150, 124, 255 }, // 0x00006A28
	 { 80, 300, 1433, 0, 1536, 0, 254, 150, 124, 255 }, // 0x00006A38
	 { 97, 300, 1469, 0, 768, 0, 254, 150, 124, 255 }, // 0x00006A48
	 { 83, 300, 1469, 0, 768, 0, 254, 150, 124, 255 }, // 0x00006A58
	 { 100, 300, 1473, 0, 0, 0, 254, 150, 124, 255 }, // 0x00006A68
	 { 80, 300, 1473, 0, 1024, 0, 254, 150, 124, 255 }, // 0x00006A78
	 { 80, 240, 1473, 0, 1024, 1024, 147, 131, 97, 255 }, // 0x00006A88
	 { 100, 240, 1473, 0, 0, 1024, 254, 111, 15, 255 }, // 0x00006A98
	 { 80, 300, 1473, 0, 0, 0, 254, 150, 124, 255 }, // 0x00006AA8
	 { 70, 300, 1463, 0, 1024, 0, 254, 150, 124, 255 }, // 0x00006AB8
	 { 70, 240, 1463, 0, 1024, 1024, 223, 217, 208, 255 }, // 0x00006AC8
	 { 80, 240, 1473, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00006AD8
	 { 70, 300, 1443, 0, 1024, 0, 254, 150, 124, 255 }, // 0x00006AE8
	 { 70, 240, 1443, 0, 1024, 1024, 223, 217, 208, 255 }, // 0x00006AF8
	 { 70, 240, 1463, 0, 0, 1024, 223, 217, 208, 255 }, // 0x00006B08
	 { 70, 300, 1463, 0, 0, 0, 254, 150, 124, 255 }, // 0x00006B18
};

Vtx_t _ganontika_room_0_vertices_00006B28[8] = 
{
	 { 97, 260, 1438, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00006B28
	 { 83, 260, 1438, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00006B38
	 { 74, 260, 1446, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00006B48
	 { 74, 260, 1460, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00006B58
	 { 83, 260, 1469, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00006B68
	 { 97, 260, 1469, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00006B78
	 { 105, 260, 1460, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00006B88
	 { 105, 260, 1446, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00006B98
};

Vtx_t _ganontika_room_0_vertices_00006BA8[18] = 
{
	 { 105, 300, 1446, 0, 7425, 0, 254, 150, 124, 255 }, // 0x00006BA8
	 { 105, 260, 1446, 0, 7425, 1024, 5, 5, 5, 255 }, // 0x00006BB8
	 { 105, 260, 1460, 0, 8959, 1024, 5, 5, 5, 255 }, // 0x00006BC8
	 { 105, 300, 1460, 0, 8959, 0, 254, 150, 124, 255 }, // 0x00006BD8
	 { 105, 300, 1460, 0, 767, 0, 254, 150, 124, 255 }, // 0x00006BE8
	 { 105, 260, 1460, 0, 767, 1024, 5, 5, 5, 255 }, // 0x00006BF8
	 { 97, 260, 1469, 0, 1281, 1024, 5, 5, 5, 255 }, // 0x00006C08
	 { 97, 300, 1469, 0, 1281, 0, 254, 150, 124, 255 }, // 0x00006C18
	 { 83, 260, 1469, 0, 2815, 1024, 5, 5, 5, 255 }, // 0x00006C28
	 { 83, 300, 1469, 0, 2815, 0, 254, 150, 124, 255 }, // 0x00006C38
	 { 74, 260, 1460, 0, 3329, 1024, 5, 5, 5, 255 }, // 0x00006C48
	 { 74, 300, 1460, 0, 3329, 0, 254, 150, 124, 255 }, // 0x00006C58
	 { 74, 260, 1446, 0, 4863, 1024, 5, 5, 5, 255 }, // 0x00006C68
	 { 74, 300, 1446, 0, 4863, 0, 254, 150, 124, 255 }, // 0x00006C78
	 { 83, 260, 1438, 0, 5377, 1024, 5, 5, 5, 255 }, // 0x00006C88
	 { 83, 300, 1438, 0, 5377, 0, 254, 150, 124, 255 }, // 0x00006C98
	 { 97, 260, 1438, 0, 6911, 1024, 5, 5, 5, 255 }, // 0x00006CA8
	 { 97, 300, 1438, 0, 6911, 0, 254, 150, 124, 255 }, // 0x00006CB8
};

Vtx_t _ganontika_room_0_vertices_00006CC8[8] = 
{
	 { 70, 240, 1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006CC8
	 { 110, 240, 1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006CD8
	 { 70, 300, 1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006CE8
	 { 110, 300, 1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006CF8
	 { 70, 240, 1473, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D08
	 { 110, 240, 1473, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D18
	 { 70, 300, 1473, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D28
	 { 110, 300, 1473, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D38
};

Gfx _ganontika_room_0_dlist_00006D48[] =
{
	gsDPPipeSync(), // 0x00006D48
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006D50
	gsSPVertex(_ganontika_room_0_vertices_00006CC8, 8, 0), // 0x00006D58
	gsSPCullDisplayList(0, 7), // 0x00006D60
	gsDPPipeSync(), // 0x00006D68
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006D70
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00006D78
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006D80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001FF80), // 0x00006D88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006D90
	gsDPLoadSync(), // 0x00006D98
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00006DA0
	gsDPPipeSync(), // 0x00006DA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006DB0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006DB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00006DC0
	gsDPTileSync(), // 0x00006DC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00006DD0
	gsDPLoadSync(), // 0x00006DD8
	gsDPLoadTLUTCmd(7, 255), // 0x00006DE0
	gsDPPipeSync(), // 0x00006DE8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006DF0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006DF8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00006E00
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00006E08
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006E10
	gsSPVertex(_ganontika_room_0_vertices_00006878, 32, 0), // 0x00006E18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006E20
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006E28
	gsSP2Triangles(8, 9, 5, 0, 8, 5, 10, 0), // 0x00006E30
	gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0), // 0x00006E38
	gsSP2Triangles(15, 16, 17, 0, 15, 18, 16, 0), // 0x00006E40
	gsSP2Triangles(18, 19, 16, 0, 18, 20, 19, 0), // 0x00006E48
	gsSP2Triangles(20, 21, 19, 0, 22, 23, 24, 0), // 0x00006E50
	gsSP2Triangles(22, 25, 23, 0, 22, 26, 25, 0), // 0x00006E58
	gsSP2Triangles(26, 27, 25, 0, 27, 28, 25, 0), // 0x00006E60
	gsSP2Triangles(20, 29, 21, 0, 29, 30, 21, 0), // 0x00006E68
	gsSP2Triangles(30, 24, 21, 0, 30, 22, 24, 0), // 0x00006E70
	gsSP2Triangles(15, 28, 27, 0, 15, 17, 28, 0), // 0x00006E78
	gsSPVertex(_ganontika_room_0_vertices_00006A68, 12, 0), // 0x00006E80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006E88
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006E90
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00006E98
	gsDPPipeSync(), // 0x00006EA0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006EA8
	gsSPTexture(0, 0, 0, 0, 0), // 0x00006EB0
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00006EB8
	gsSPVertex(_ganontika_room_0_vertices_00006B28, 8, 0), // 0x00006EC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006EC8
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00006ED0
	gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0), // 0x00006ED8
	gsDPPipeSync(), // 0x00006EE0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00006EE8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006EF0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001FF80), // 0x00006EF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006F00
	gsDPLoadSync(), // 0x00006F08
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00006F10
	gsDPPipeSync(), // 0x00006F18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006F20
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006F28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00006F30
	gsDPTileSync(), // 0x00006F38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00006F40
	gsDPLoadSync(), // 0x00006F48
	gsDPLoadTLUTCmd(7, 255), // 0x00006F50
	gsDPPipeSync(), // 0x00006F58
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006F60
	gsSPVertex(_ganontika_room_0_vertices_00006BA8, 18, 0), // 0x00006F68
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006F70
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006F78
	gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0), // 0x00006F80
	gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0), // 0x00006F88
	gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0), // 0x00006F90
	gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0), // 0x00006F98
	gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0), // 0x00006FA0
	gsSP2Triangles(17, 16, 1, 0, 17, 1, 0, 0), // 0x00006FA8
	gsSPEndDisplayList(), // 0x00006FB0
};

Vtx_t _ganontika_room_0_vertices_00006FB8[43] = 
{
	 { -70, 240, 1443, 0, 0, 1024, 223, 217, 208, 255 }, // 0x00006FB8
	 { -80, 240, 1433, 0, 1024, 1024, 147, 131, 97, 255 }, // 0x00006FC8
	 { -80, 300, 1433, 0, 1024, 0, 254, 150, 124, 255 }, // 0x00006FD8
	 { -70, 300, 1443, 0, 0, 0, 254, 150, 124, 255 }, // 0x00006FE8
	 { -80, 240, 1433, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00006FF8
	 { -100, 240, 1433, 0, 1024, 1024, 254, 111, 15, 255 }, // 0x00007008
	 { -100, 300, 1433, 0, 1024, 0, 254, 150, 124, 255 }, // 0x00007018
	 { -80, 300, 1433, 0, 0, 0, 254, 150, 124, 255 }, // 0x00007028
	 { -110, 300, 1443, 0, 0, 0, 254, 176, 124, 255 }, // 0x00007038
	 { -100, 240, 1433, 0, 1024, 1024, 254, 111, 15, 255 }, // 0x00007048
	 { -110, 240, 1443, 0, 0, 1024, 132, 88, 43, 255 }, // 0x00007058
	 { -100, 300, 1473, 0, 0, 0, 254, 150, 124, 255 }, // 0x00007068
	 { -110, 240, 1463, 0, 1024, 1024, 132, 88, 43, 255 }, // 0x00007078
	 { -100, 240, 1473, 0, 0, 1024, 254, 111, 15, 255 }, // 0x00007088
	 { -110, 300, 1463, 0, 1024, 0, 254, 176, 124, 255 }, // 0x00007098
	 { -100, 300, 1433, 0, 1536, 0, 254, 150, 124, 255 }, // 0x000070A8
	 { -110, 300, 1443, 0, 1280, 0, 254, 176, 124, 255 }, // 0x000070B8
	 { -97, 300, 1438, 0, 1280, 0, 254, 150, 124, 255 }, // 0x000070C8
	 { -106, 300, 1446, 0, 1280, 0, 254, 150, 124, 255 }, // 0x000070D8
	 { -110, 300, 1463, 0, 768, 0, 254, 176, 124, 255 }, // 0x000070E8
	 { -106, 300, 1460, 0, 768, 0, 254, 150, 124, 255 }, // 0x000070F8
	 { -100, 300, 1473, 0, 512, 0, 254, 150, 124, 255 }, // 0x00007108
	 { -80, 300, 1473, 0, 512, 0, 254, 150, 124, 255 }, // 0x00007118
	 { -70, 300, 1463, 0, 768, 0, 254, 150, 124, 255 }, // 0x00007128
	 { -75, 300, 1460, 0, 768, 0, 254, 150, 124, 255 }, // 0x00007138
	 { -70, 300, 1443, 0, 1280, 0, 254, 150, 124, 255 }, // 0x00007148
	 { -75, 300, 1446, 0, 1024, 0, 254, 150, 124, 255 }, // 0x00007158
	 { -83, 300, 1438, 0, 1280, 0, 254, 150, 124, 255 }, // 0x00007168
	 { -80, 300, 1433, 0, 1536, 0, 254, 150, 124, 255 }, // 0x00007178
	 { -97, 300, 1469, 0, 768, 0, 254, 150, 124, 255 }, // 0x00007188
	 { -83, 300, 1469, 0, 768, 0, 254, 150, 124, 255 }, // 0x00007198
	 { -100, 240, 1473, 0, 0, 1024, 254, 111, 15, 255 }, // 0x000071A8
	 { -80, 240, 1473, 0, 1024, 1024, 147, 131, 97, 255 }, // 0x000071B8
	 { -80, 300, 1473, 0, 1024, 0, 254, 150, 124, 255 }, // 0x000071C8
	 { -100, 300, 1473, 0, 0, 0, 254, 150, 124, 255 }, // 0x000071D8
	 { -80, 240, 1473, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000071E8
	 { -70, 240, 1463, 0, 1024, 1024, 223, 217, 208, 255 }, // 0x000071F8
	 { -70, 300, 1463, 0, 1024, 0, 254, 150, 124, 255 }, // 0x00007208
	 { -80, 300, 1473, 0, 0, 0, 254, 150, 124, 255 }, // 0x00007218
	 { -70, 300, 1463, 0, 0, 0, 254, 150, 124, 255 }, // 0x00007228
	 { -70, 240, 1463, 0, 0, 1024, 223, 217, 208, 255 }, // 0x00007238
	 { -70, 240, 1443, 0, 1024, 1024, 223, 217, 208, 255 }, // 0x00007248
	 { -70, 300, 1443, 0, 1024, 0, 254, 150, 124, 255 }, // 0x00007258
};

Vtx_t _ganontika_room_0_vertices_00007268[8] = 
{
	 { -106, 260, 1446, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00007268
	 { -106, 260, 1460, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00007278
	 { -97, 260, 1469, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00007288
	 { -83, 260, 1469, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00007298
	 { -75, 260, 1460, 0, 0, 1024, 5, 5, 5, 255 }, // 0x000072A8
	 { -75, 260, 1446, 0, 0, 1024, 5, 5, 5, 255 }, // 0x000072B8
	 { -83, 260, 1438, 0, 0, 1024, 5, 5, 5, 255 }, // 0x000072C8
	 { -97, 260, 1438, 0, 0, 1024, 5, 5, 5, 255 }, // 0x000072D8
};

Vtx_t _ganontika_room_0_vertices_000072E8[18] = 
{
	 { -106, 300, 1460, 0, 8959, 0, 254, 150, 124, 255 }, // 0x000072E8
	 { -106, 260, 1460, 0, 8959, 1024, 5, 5, 5, 255 }, // 0x000072F8
	 { -106, 260, 1446, 0, 7425, 1024, 5, 5, 5, 255 }, // 0x00007308
	 { -106, 300, 1446, 0, 7425, 0, 254, 150, 124, 255 }, // 0x00007318
	 { -97, 300, 1469, 0, 1281, 0, 254, 150, 124, 255 }, // 0x00007328
	 { -97, 260, 1469, 0, 1281, 1024, 5, 5, 5, 255 }, // 0x00007338
	 { -106, 260, 1460, 0, 767, 1024, 5, 5, 5, 255 }, // 0x00007348
	 { -106, 300, 1460, 0, 767, 0, 254, 150, 124, 255 }, // 0x00007358
	 { -83, 300, 1469, 0, 2815, 0, 254, 150, 124, 255 }, // 0x00007368
	 { -83, 260, 1469, 0, 2815, 1024, 5, 5, 5, 255 }, // 0x00007378
	 { -75, 300, 1460, 0, 3329, 0, 254, 150, 124, 255 }, // 0x00007388
	 { -75, 260, 1460, 0, 3329, 1024, 5, 5, 5, 255 }, // 0x00007398
	 { -75, 300, 1446, 0, 4863, 0, 254, 150, 124, 255 }, // 0x000073A8
	 { -75, 260, 1446, 0, 4863, 1024, 5, 5, 5, 255 }, // 0x000073B8
	 { -83, 300, 1438, 0, 5377, 0, 254, 150, 124, 255 }, // 0x000073C8
	 { -83, 260, 1438, 0, 5377, 1024, 5, 5, 5, 255 }, // 0x000073D8
	 { -97, 300, 1438, 0, 6911, 0, 254, 150, 124, 255 }, // 0x000073E8
	 { -97, 260, 1438, 0, 6911, 1024, 5, 5, 5, 255 }, // 0x000073F8
};

Vtx_t _ganontika_room_0_vertices_00007408[8] = 
{
	 { -110, 240, 1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007408
	 { -70, 240, 1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007418
	 { -110, 300, 1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007428
	 { -70, 300, 1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007438
	 { -110, 240, 1473, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007448
	 { -70, 240, 1473, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007458
	 { -110, 300, 1473, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007468
	 { -70, 300, 1473, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007478
};

Gfx _ganontika_room_0_dlist_00007488[] =
{
	gsDPPipeSync(), // 0x00007488
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007490
	gsSPVertex(_ganontika_room_0_vertices_00007408, 8, 0), // 0x00007498
	gsSPCullDisplayList(0, 7), // 0x000074A0
	gsDPPipeSync(), // 0x000074A8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000074B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000074B8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000074C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001FF80), // 0x000074C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000074D0
	gsDPLoadSync(), // 0x000074D8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000074E0
	gsDPPipeSync(), // 0x000074E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000074F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000074F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00007500
	gsDPTileSync(), // 0x00007508
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00007510
	gsDPLoadSync(), // 0x00007518
	gsDPLoadTLUTCmd(7, 255), // 0x00007520
	gsDPPipeSync(), // 0x00007528
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007530
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007538
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007540
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007548
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007550
	gsSPVertex(_ganontika_room_0_vertices_00006FB8, 32, 0), // 0x00007558
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007560
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007568
	gsSP2Triangles(8, 6, 9, 0, 8, 9, 10, 0), // 0x00007570
	gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0), // 0x00007578
	gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0), // 0x00007580
	gsSP2Triangles(16, 19, 18, 0, 19, 20, 18, 0), // 0x00007588
	gsSP2Triangles(19, 21, 20, 0, 22, 23, 24, 0), // 0x00007590
	gsSP2Triangles(23, 25, 24, 0, 25, 26, 24, 0), // 0x00007598
	gsSP2Triangles(25, 27, 26, 0, 25, 28, 27, 0), // 0x000075A0
	gsSP2Triangles(21, 29, 20, 0, 21, 30, 29, 0), // 0x000075A8
	gsSP2Triangles(21, 22, 30, 0, 22, 24, 30, 0), // 0x000075B0
	gsSP2Triangles(27, 28, 17, 0, 28, 15, 17, 0), // 0x000075B8
	gsSPVertex(_ganontika_room_0_vertices_000071A8, 12, 0), // 0x000075C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000075C8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000075D0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000075D8
	gsDPPipeSync(), // 0x000075E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000075E8
	gsSPTexture(0, 0, 0, 0, 0), // 0x000075F0
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x000075F8
	gsSPVertex(_ganontika_room_0_vertices_00007268, 8, 0), // 0x00007600
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007608
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00007610
	gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0), // 0x00007618
	gsDPPipeSync(), // 0x00007620
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00007628
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007630
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001FF80), // 0x00007638
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007640
	gsDPLoadSync(), // 0x00007648
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007650
	gsDPPipeSync(), // 0x00007658
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007660
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007668
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00007670
	gsDPTileSync(), // 0x00007678
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00007680
	gsDPLoadSync(), // 0x00007688
	gsDPLoadTLUTCmd(7, 255), // 0x00007690
	gsDPPipeSync(), // 0x00007698
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000076A0
	gsSPVertex(_ganontika_room_0_vertices_000072E8, 18, 0), // 0x000076A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000076B0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000076B8
	gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0), // 0x000076C0
	gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0), // 0x000076C8
	gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0), // 0x000076D0
	gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0), // 0x000076D8
	gsSP2Triangles(16, 17, 15, 0, 16, 15, 14, 0), // 0x000076E0
	gsSP2Triangles(3, 2, 17, 0, 3, 17, 16, 0), // 0x000076E8
	gsSPEndDisplayList(), // 0x000076F0
};

Vtx_t _ganontika_room_0_vertices_000076F8[39] = 
{
	 { -90, 150, 773, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000076F8
	 { -130, 150, 773, 0, 1024, 1024, 254, 111, 15, 255 }, // 0x00007708
	 { -130, 210, 773, 0, 1024, 0, 218, 211, 199, 255 }, // 0x00007718
	 { -90, 210, 773, 0, 0, 0, 218, 211, 199, 255 }, // 0x00007728
	 { -130, 210, 813, 0, 512, 0, 218, 211, 199, 255 }, // 0x00007738
	 { -90, 210, 773, 0, 768, 0, 218, 211, 199, 255 }, // 0x00007748
	 { -130, 210, 773, 0, 768, 0, 218, 211, 199, 255 }, // 0x00007758
	 { -90, 210, 813, 0, 512, 0, 218, 211, 199, 255 }, // 0x00007768
	 { -130, 150, 813, 0, 0, 1024, 169, 154, 126, 255 }, // 0x00007778
	 { -90, 150, 813, 0, 1024, 1024, 203, 195, 178, 255 }, // 0x00007788
	 { -90, 210, 813, 0, 1024, 0, 218, 211, 199, 255 }, // 0x00007798
	 { -130, 210, 813, 0, 0, 0, 218, 211, 199, 255 }, // 0x000077A8
	 { -90, 210, 813, 0, 0, 0, 218, 211, 199, 255 }, // 0x000077B8
	 { -90, 150, 813, 0, 0, 1024, 203, 195, 178, 255 }, // 0x000077C8
	 { -90, 150, 773, 0, 1024, 1024, 223, 217, 208, 255 }, // 0x000077D8
	 { -90, 210, 773, 0, 1024, 0, 218, 211, 199, 255 }, // 0x000077E8
	 { -130, 150, 773, 0, 1024, 1024, 223, 217, 208, 255 }, // 0x000077F8
	 { -130, 150, 813, 0, 0, 1024, 169, 154, 126, 255 }, // 0x00007808
	 { -130, 210, 813, 0, 0, 0, 218, 211, 199, 255 }, // 0x00007818
	 { 90, 210, 773, 0, 1024, 0, 218, 211, 199, 255 }, // 0x00007828
	 { 90, 150, 773, 0, 1024, 1024, 223, 217, 208, 255 }, // 0x00007838
	 { 90, 150, 813, 0, 0, 1024, 203, 195, 178, 255 }, // 0x00007848
	 { 90, 210, 813, 0, 0, 0, 218, 211, 199, 255 }, // 0x00007858
	 { 130, 210, 813, 0, 0, 0, 218, 211, 199, 255 }, // 0x00007868
	 { 130, 150, 813, 0, 0, 1024, 169, 154, 126, 255 }, // 0x00007878
	 { 130, 150, 773, 0, 1024, 1024, 223, 217, 208, 255 }, // 0x00007888
	 { 130, 210, 773, 0, 1024, 0, 218, 211, 199, 255 }, // 0x00007898
	 { 90, 150, 813, 0, 0, 1024, 203, 195, 178, 255 }, // 0x000078A8
	 { 130, 150, 813, 0, 1024, 1024, 169, 154, 126, 255 }, // 0x000078B8
	 { 130, 210, 813, 0, 1024, 0, 218, 211, 199, 255 }, // 0x000078C8
	 { 90, 210, 813, 0, 0, 0, 218, 211, 199, 255 }, // 0x000078D8
	 { 90, 210, 813, 0, 512, 0, 218, 211, 199, 255 }, // 0x000078E8
	 { 130, 210, 813, 0, 512, 0, 218, 211, 199, 255 }, // 0x000078F8
	 { 130, 210, 773, 0, 768, 0, 218, 211, 199, 255 }, // 0x00007908
	 { 90, 210, 773, 0, 768, 0, 218, 211, 199, 255 }, // 0x00007918
	 { 130, 150, 773, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00007928
	 { 90, 150, 773, 0, 1024, 1024, 254, 111, 15, 255 }, // 0x00007938
	 { 90, 210, 773, 0, 1024, 0, 218, 211, 199, 255 }, // 0x00007948
	 { 130, 210, 773, 0, 0, 0, 218, 211, 199, 255 }, // 0x00007958
};

Vtx_t _ganontika_room_0_vertices_00007968[8] = 
{
	 { -130, 150, 773, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007968
	 { 130, 150, 773, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007978
	 { -130, 210, 773, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007988
	 { 130, 210, 773, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007998
	 { -130, 150, 813, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079A8
	 { 130, 150, 813, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079B8
	 { -130, 210, 813, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079C8
	 { 130, 210, 813, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079D8
};

Gfx _ganontika_room_0_dlist_000079E8[] =
{
	gsDPPipeSync(), // 0x000079E8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000079F0
	gsSPVertex(_ganontika_room_0_vertices_00007968, 8, 0), // 0x000079F8
	gsSPCullDisplayList(0, 7), // 0x00007A00
	gsDPPipeSync(), // 0x00007A08
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007A10
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00007A18
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007A20
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001FF80), // 0x00007A28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007A30
	gsDPLoadSync(), // 0x00007A38
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007A40
	gsDPPipeSync(), // 0x00007A48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007A50
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007A58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00007A60
	gsDPTileSync(), // 0x00007A68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00007A70
	gsDPLoadSync(), // 0x00007A78
	gsDPLoadTLUTCmd(7, 255), // 0x00007A80
	gsDPPipeSync(), // 0x00007A88
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007A90
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007A98
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007AA0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007AA8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007AB0
	gsSPVertex(_ganontika_room_0_vertices_000076F8, 32, 0), // 0x00007AB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007AC0
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00007AC8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00007AD0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00007AD8
	gsSP2Triangles(2, 16, 17, 0, 2, 17, 18, 0), // 0x00007AE0
	gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0), // 0x00007AE8
	gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0), // 0x00007AF0
	gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0), // 0x00007AF8
	gsSPVertex(_ganontika_room_0_vertices_000078E8, 8, 0), // 0x00007B00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007B08
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007B10
	gsSPEndDisplayList(), // 0x00007B18
};

Vtx_t _ganontika_room_0_vertices_00007B20[32] = 
{
	 { -170, 270, 653, 0, 512, 0, 218, 211, 199, 255 }, // 0x00007B20
	 { -130, 270, 613, 0, 768, 0, 218, 211, 199, 255 }, // 0x00007B30
	 { -170, 270, 613, 0, 768, 0, 218, 211, 199, 255 }, // 0x00007B40
	 { -130, 270, 653, 0, 512, 0, 218, 211, 199, 255 }, // 0x00007B50
	 { -170, 150, 653, 0, 0, 2048, 169, 154, 126, 255 }, // 0x00007B60
	 { -130, 150, 653, 0, 1024, 2048, 203, 195, 178, 255 }, // 0x00007B70
	 { -130, 270, 653, 0, 1024, 0, 218, 211, 199, 255 }, // 0x00007B80
	 { -170, 270, 653, 0, 0, 0, 218, 211, 199, 255 }, // 0x00007B90
	 { -130, 270, 653, 0, 0, 0, 218, 211, 199, 255 }, // 0x00007BA0
	 { -130, 150, 653, 0, 0, 2048, 203, 195, 178, 255 }, // 0x00007BB0
	 { -130, 150, 613, 0, 1024, 2048, 223, 217, 208, 255 }, // 0x00007BC0
	 { -130, 270, 613, 0, 1024, 0, 218, 211, 199, 255 }, // 0x00007BD0
	 { -170, 270, 613, 0, 1024, 0, 218, 211, 199, 255 }, // 0x00007BE0
	 { -170, 150, 613, 0, 1024, 2048, 223, 217, 208, 255 }, // 0x00007BF0
	 { -170, 150, 653, 0, 0, 2048, 169, 154, 126, 255 }, // 0x00007C00
	 { -170, 270, 653, 0, 0, 0, 218, 211, 199, 255 }, // 0x00007C10
	 { 130, 270, 613, 0, 1024, 0, 218, 211, 199, 255 }, // 0x00007C20
	 { 130, 150, 613, 0, 1024, 2048, 223, 217, 208, 255 }, // 0x00007C30
	 { 130, 150, 653, 0, 0, 2048, 203, 195, 178, 255 }, // 0x00007C40
	 { 130, 270, 653, 0, 0, 0, 218, 211, 199, 255 }, // 0x00007C50
	 { 170, 270, 653, 0, 0, 0, 218, 211, 199, 255 }, // 0x00007C60
	 { 170, 150, 653, 0, 0, 2048, 169, 154, 126, 255 }, // 0x00007C70
	 { 170, 150, 613, 0, 1024, 2048, 223, 217, 208, 255 }, // 0x00007C80
	 { 170, 270, 613, 0, 1024, 0, 218, 211, 199, 255 }, // 0x00007C90
	 { 130, 150, 653, 0, 0, 2048, 203, 195, 178, 255 }, // 0x00007CA0
	 { 170, 150, 653, 0, 1024, 2048, 169, 154, 126, 255 }, // 0x00007CB0
	 { 170, 270, 653, 0, 1024, 0, 218, 211, 199, 255 }, // 0x00007CC0
	 { 130, 270, 653, 0, 0, 0, 218, 211, 199, 255 }, // 0x00007CD0
	 { 130, 270, 653, 0, 512, 0, 218, 211, 199, 255 }, // 0x00007CE0
	 { 170, 270, 653, 0, 512, 0, 218, 211, 199, 255 }, // 0x00007CF0
	 { 170, 270, 613, 0, 768, 0, 218, 211, 199, 255 }, // 0x00007D00
	 { 130, 270, 613, 0, 768, 0, 218, 211, 199, 255 }, // 0x00007D10
};

Vtx_t _ganontika_room_0_vertices_00007D20[8] = 
{
	 { -170, 150, 613, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007D20
	 { 170, 150, 613, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007D30
	 { -170, 270, 613, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007D40
	 { 170, 270, 613, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007D50
	 { -170, 150, 653, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007D60
	 { 170, 150, 653, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007D70
	 { -170, 270, 653, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007D80
	 { 170, 270, 653, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007D90
};

Gfx _ganontika_room_0_dlist_00007DA0[] =
{
	gsDPPipeSync(), // 0x00007DA0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007DA8
	gsSPVertex(_ganontika_room_0_vertices_00007D20, 8, 0), // 0x00007DB0
	gsSPCullDisplayList(0, 7), // 0x00007DB8
	gsDPPipeSync(), // 0x00007DC0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007DC8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00007DD0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007DD8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001FF80), // 0x00007DE0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007DE8
	gsDPLoadSync(), // 0x00007DF0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007DF8
	gsDPPipeSync(), // 0x00007E00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007E08
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007E10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00007E18
	gsDPTileSync(), // 0x00007E20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00007E28
	gsDPLoadSync(), // 0x00007E30
	gsDPLoadTLUTCmd(7, 255), // 0x00007E38
	gsDPPipeSync(), // 0x00007E40
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007E48
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007E50
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007E58
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007E60
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007E68
	gsSPVertex(_ganontika_room_0_vertices_00007B20, 32, 0), // 0x00007E70
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00007E78
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007E80
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00007E88
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00007E90
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00007E98
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00007EA0
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00007EA8
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00007EB0
	gsSPEndDisplayList(), // 0x00007EB8
};

static u8 unaccounted7EC0[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x05, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0x30, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0x88, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x16, 0x70, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x22, 0xA8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2F, 0x98, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x36, 0x58, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3C, 0x20, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x48, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x52, 0xB0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5E, 0xC8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x66, 0x08, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x6D, 0x48, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x74, 0x88, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x79, 0xE8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x7D, 0xA0, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 _ganontika_room_0_tex_00007F48[] = 
{
	0x32191C1F192780D5, 0xB0DDB85F1F271919, 0x1C194612191C272D, 0x1C12191919271F1F,  // 0x00007F48 
	0x2D191C192D123212, 0x321C4F122D1C2D19, 0x1905121F1C271C2D, 0x272D321F12121F1C,  // 0x00007F68 
	0x191F1F3232059DE1, 0xD6CD5F5F5F5F5F19, 0x1F1F321F1F1C321F, 0x1F1F321F1F2D321F,  // 0x00007F88 
	0x5F1F1C5F1F121C12, 0x1F19121219121C19, 0x192D121C12222D2D, 0x2712191F1C1C1F19,  // 0x00007FA8 
	0x195F32321F5FF9A7, 0xF52D5F2D2D2D1C4F, 0x2712122D27272712, 0x3535321212271927,  // 0x00007FC8 
	0x2712271212272D35, 0x2712321212121227, 0x12124F2D1C272712, 0x1F192D121C1F3227,  // 0x00007FE8 
	0x121219192727BBA7, 0xCD2D0A052D1C1C1F, 0x1912121C1C051C19, 0x1227191919123219,  // 0x00008008 
	0x4F192D19351C3227, 0x353519121212124F, 0x3527121935351227, 0x27121227271C1F12,  // 0x00008028 
	0x1227121C2DB0A7BE, 0xE24F2D1922191919, 0x32221219321F1F32, 0x1927122D1912191F,  // 0x00008048 
	0x1F1F1F1F2D1F1F1C, 0x1C121F1F1F12195F, 0x121C1F1F191F5F1F, 0x1C191F1F271C1F1F,  // 0x00008068 
	0x322D1C1F19B4A7D6, 0xCACE2D5FCFBC3219, 0x27351C191F192D1C, 0x32122D1F1212122D,  // 0x00008088 
	0x191C351F271F1F12, 0x1C12272D1F272719, 0x1C1235121C192735, 0x121212124F271227,  // 0x000080A8 
	0x35271235B695D5B7, 0xC8CAB8CABA1C3219, 0x1C2D1912121C1C27, 0x1F2D2D1F19191C2D,  // 0x000080C8 
	0x1F19121912193219, 0x192D1C27191F122D, 0x19191C1F1F1C2D12, 0x27191F12121C321C,  // 0x000080E8 
	0x2D2D2D1C9DB5F0E8, 0xC671C3E1C95F1227, 0x191C121212121C27, 0x192D2D1C1F1C2727,  // 0x00008108 
	0x191927122D191912, 0x1C191C272D19192D, 0x1219325F1F19191F, 0x122D1F1C2D1C1C19,  // 0x00008128 
	0x32191F1F3235AAA0, 0xF771C3EB1F32121C, 0x191F19321F1C1F12, 0x1F3219191F121912,  // 0x00008148 
	0x121F191C121F1F12, 0x321C4F1912271C1C, 0x272712321F321227, 0x121227051C191C35,  // 0x00008168 
	0x27352D1C2D9DF3F1, 0xBE9E6AB24F052735, 0x354F27121C27194F, 0x3512191C19191F32,  // 0x00008188 
	0x121F1F1912193219, 0x32121C1919191F1F, 0x27121C19191F3212, 0x321F12121F1F1F1C,  // 0x000081A8 
	0x191C2712126BC4B7, 0xD75F2D2D27121F1C, 0x3535192D1C191F12, 0x12353211191F1F1C,  // 0x000081C8 
	0x2719191C4F35271C, 0x272D12352D2D1212, 0x27121212121F2D35, 0x2712123546351212,  // 0x000081E8 
	0x322D27273596A0B7, 0xC55F5F19191F191F, 0x191932191F1C322D, 0x321C1C12191F1C1C,  // 0x00008208 
	0x272D1F1C1212321F, 0x12121C1919122D19, 0x2D191C2D19191235, 0x271212272727121C,  // 0x00008228 
	0x321C1C321F190DC3, 0x80804F5F1919322D, 0x1C12352719193227, 0x1C2D121C1212221C,  // 0x00008248 
	0x2D2D2D122719271C, 0x3227191F1C124F12, 0x1C3227122D1F5F2D, 0x321C12193212124F,  // 0x00008268 
	0x2735321F1F19139E, 0xADC66A5F2D121932, 0x05271C3512321F1C, 0x1F191919121C2D19,  // 0x00008288 
	0x321C1F1235123512, 0x191F19121212191C, 0x1212121912321F19, 0x191919121F1C1212,  // 0x000082A8 
	0x2D121C19322DF4D0, 0x9EADC7BA2D32192D, 0x1912123535122D1C, 0x4F192D2712191935,  // 0x000082C8 
	0x27121C3212121C1F, 0x1919274F32221C19, 0x2735121F1C4F2712, 0x3512123527321912,  // 0x000082E8 
	0x1F19192D1C0A27BC, 0xADD3AD4F4F5F1F19, 0x1F1F1F322D191F19, 0x1F1F1912321C3232,  // 0x00008308 
	0x192D2D1F32121C5F, 0x1F192D1C19192D1F, 0x194F2D1F2D1F1F19, 0x1F192D122712192D,  // 0x00008328 
	0x27353527122D6B8A, 0xD19E9D9D9D4F2D12, 0x1C191F19121C4F1C, 0x1F351C19121F1C32,  // 0x00008348 
	0x191C2D1C191C2712, 0x321C1F1F4F272719, 0x122D3512191F1C32, 0x32051C1F1C121F1C,  // 0x00008368 
	0x1C1219324F5FB2C8, 0xC8B84F199D6B354F, 0x124F12121235121F, 0x2D1C1C1C12191C12,  // 0x00008388 
	0x2D1C1C3512123527, 0x124F4F2D19122727, 0x122D35124F122712, 0x2727191C1C12271C,  // 0x000083A8 
	0x27272D273219B68A, 0xDDADB65F122D1C27, 0x1912271C12271219, 0x121F32191C2D191F,  // 0x000083C8 
	0x5F19323527321C1F, 0x1F1F19191F32051F, 0x2D1F1C1F1F321F1F, 0x1F1F1F1C1C191C5F,  // 0x000083E8 
	0x3232054F325FD4CB, 0xCCB8DC275F322D4F, 0x191912121C1C1235, 0x27123527121F1212,  // 0x00008408 
	0x122D3227121F2727, 0x12191C12272D1C35, 0x46124F121F4F2712, 0x1C12271C1C271212,  // 0x00008428 
	0x1F1F1F1F1F32E7D2, 0x1A1FE3D719322D12, 0x325F1C1F1F1F1F1F, 0x2D1F2D2727191F2D,  // 0x00008448 
	0x12191F121F323512, 0x27271912354F1F1C, 0x35192D271C1C2D4F, 0x35121C1C19192D12,  // 0x00008468 
	0x271C27321F4FD0EC, 0x27DC9E274F0A1212, 0x19123535124F1C1F, 0x1919051C1C121C5F,  // 0x00008488 
	0x12271F1C19321232, 0x191F191C19193219, 0x1F1F1F121C321F1F, 0x1C192D1912193219,  // 0x000084A8 
	0x321F121C4F192D9D, 0xE3B4122D4F323219, 0x1F1F191C1212121F, 0x192D121F5F353232,  // 0x000084C8 
	0x1C12121C321C2727, 0x273212051212121C, 0x19191C19124F121F, 0x1F1C1C1912351C12,  // 0x000084E8 
	0x122D1C27195F5F19, 0xAD802D4F12192D12, 0x191F19121227351C, 0x121F2D271C122719,  // 0x00008508 
	0x1C3212273219121C, 0x121F5F1227271C19, 0x19121C191F352719, 0x1F1C1C321F2D1C1F,  // 0x00008528 
	0x121C191C125FC9FB, 0xD180C519321C2D12, 0x191F3232121F1C19, 0x2D1C1912271F1919,  // 0x00008548 
	0x1C191912191C1212, 0x3512121C4F1C1C19, 0x1F121C4F2D193535, 0x1F122735121C2727,  // 0x00008568 
	0x192D12221912B4C6, 0xBEB4FA9D1F051219, 0x191C191C271F191F, 0x1F1F191F191C5F1F,  // 0x00008588 
	0x35191C1C1F5F1F1F, 0x19051C1F4F271219, 0x1F191F3219321C1C, 0x1F5F1F19192D121F,  // 0x000085A8 
	0x1C2D19124F19B9A7, 0x9EC5BBE5352D221C, 0x271C194F354F4F12, 0x2712192712121232,  // 0x000085C8 
	0x1227271212121C2D, 0x1F2D125F12272D27, 0x1C2732321F272732, 0x32325F5F1F051219,  // 0x000085E8 
	0x1C191C2D2D8EC4B7, 0xE0199D2D1C321912, 0x121F1C1F121F3512, 0x321C1227274F1219,  // 0x00008608 
	0x1F1F1C121C121912, 0x1919121F194F2D1C, 0x2D274F191C121C1C, 0x19191F12271C3519,  // 0x00008628 
	0x1212124FE0CBC459, 0x27E5B21232353512, 0x124F191C12193512, 0x12321C35354F1912,  // 0x00008648 
	0x123219321F12271C, 0x1C1919321C1C1919, 0x3235121C1F191212, 0x1227191C2D19271C,  // 0x00008668 
	0x1C193219BC3EBA34, 0xEDC7CC1F5F321919, 0x121C19192D1C1C12, 0x4F1F1F1C124F2D1C,  // 0x00008688 
	0x1219122719191212, 0x12191F191919322D, 0x1C1C2D271C12121C, 0x1227271C1F1F2712,  // 0x000086A8 
	0x2719192DCFC9B2E9, 0xEFC7E22D5F321C4F, 0x122D352D12321F4F, 0x2719191F1F27351C,  // 0x000086C8 
	0x1C324F3532191C19, 0x192D192D12191212, 0x5F1C124F1227321F, 0x19124F321F1C2712,  // 0x000086E8 
	0x121212121C5F8CD2, 0xA7D3CE5F2D1F1212, 0x1C321C2D35191F27, 0x352D1C19191C3519,  // 0x00008708 
	0x1C1912271C321227, 0x1F121C191C2D3527, 0x5F1F19121212191F, 0x1C27351C1F1C272D,  // 0x00008728 
};

static u8 unaccounted8748[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx_t _ganontika_room_0_vertices_00008750[20] = 
{
	 { 101, 432, 2533, 0, 5721, -273, 244, 236, 214, 255 }, // 0x00008750
	 { 110, 420, 2293, 0, 5717, 4096, 244, 236, 214, 255 }, // 0x00008760
	 { -110, 420, 2293, 0, 4523, 4096, 244, 236, 214, 255 }, // 0x00008770
	 { -101, 432, 2533, 0, 4519, -273, 244, 236, 214, 255 }, // 0x00008780
	 { -65, 612, 2533, 0, 2934, -273, 244, 236, 214, 255 }, // 0x00008790
	 { -101, 576, 2533, 0, 3354, -273, 244, 236, 214, 255 }, // 0x000087A0
	 { -110, 580, 2293, 0, 3361, 4096, 244, 236, 214, 255 }, // 0x000087B0
	 { -70, 620, 2293, 0, 2938, 4096, 244, 236, 214, 255 }, // 0x000087C0
	 { 70, 620, 2293, 0, 2182, 4096, 244, 236, 214, 255 }, // 0x000087D0
	 { 65, 612, 2533, 0, 2186, -273, 244, 236, 214, 255 }, // 0x000087E0
	 { 110, 580, 2293, 0, 1759, 4096, 244, 236, 214, 255 }, // 0x000087F0
	 { 101, 576, 2533, 0, 1766, -273, 244, 236, 214, 255 }, // 0x00008800
	 { 110, 420, 2293, 0, 597, 4096, 244, 236, 214, 255 }, // 0x00008810
	 { 101, 432, 2533, 0, 601, -273, 244, 236, 214, 255 }, // 0x00008820
	 { 110, 420, 2533, 0, 5717, 0, 244, 236, 214, 255 }, // 0x00008830
	 { -110, 420, 2533, 0, 4523, 0, 244, 236, 214, 255 }, // 0x00008840
	 { -110, 580, 2533, 0, 3361, 0, 244, 236, 214, 255 }, // 0x00008850
	 { -70, 620, 2533, 0, 2938, 0, 244, 236, 214, 255 }, // 0x00008860
	 { 70, 620, 2533, 0, 2182, 0, 244, 236, 214, 255 }, // 0x00008870
	 { 110, 580, 2533, 0, 6879, 0, 244, 236, 214, 255 }, // 0x00008880
};

Vtx_t _ganontika_room_0_vertices_00008890[8] = 
{
	 { -110, 420, 2293, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008890
	 { 110, 420, 2293, 0, 0, 0, 0, 0, 0, 0 }, // 0x000088A0
	 { -110, 620, 2293, 0, 0, 0, 0, 0, 0, 0 }, // 0x000088B0
	 { 110, 620, 2293, 0, 0, 0, 0, 0, 0, 0 }, // 0x000088C0
	 { -110, 420, 2533, 0, 0, 0, 0, 0, 0, 0 }, // 0x000088D0
	 { 110, 420, 2533, 0, 0, 0, 0, 0, 0, 0 }, // 0x000088E0
	 { -110, 620, 2533, 0, 0, 0, 0, 0, 0, 0 }, // 0x000088F0
	 { 110, 620, 2533, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008900
};

Gfx _ganontika_room_0_dlist_00008910[] =
{
	gsDPPipeSync(), // 0x00008910
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00008918
	gsSPVertex(_ganontika_room_0_vertices_00008890, 8, 0), // 0x00008920
	gsSPCullDisplayList(0, 7), // 0x00008928
	gsDPPipeSync(), // 0x00008930
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008938
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008940
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008948
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _ganontika_room_0_tex_00008A10), // 0x00008950
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 7, 0, 1, 3, 0), // 0x00008958
	gsDPLoadSync(), // 0x00008960
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00008968
	gsDPPipeSync(), // 0x00008970
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 2, 0, 0, 0, 2, 7, 0, 1, 3, 0), // 0x00008978
	gsDPSetTileSize(0, 0, 0, 28, 508), // 0x00008980
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, SHADE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00008988
	gsSPSetOtherMode(0xE2, 3, 29, 0x0C1849D8), // 0x00008990
	gsSPGeometryMode(0xFF0F0000, 0x00000000), // 0x00008998
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x000089A0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000089A8
	gsSPVertex(_ganontika_room_0_vertices_00008750, 20, 0), // 0x000089B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000089B8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000089C0
	gsSP2Triangles(8, 9, 4, 0, 8, 4, 7, 0), // 0x000089C8
	gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0), // 0x000089D0
	gsSP2Triangles(3, 2, 6, 0, 3, 6, 5, 0), // 0x000089D8
	gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0), // 0x000089E0
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x000089E8
	gsSP2Triangles(14, 17, 18, 0, 14, 18, 19, 0), // 0x000089F0
	gsSPEndDisplayList(), // 0x000089F8
};

static u8 unaccounted8A00[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x89, 0x10, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _ganontika_room_0_tex_00008A10[] = 
{
	0xFFF6FFF6FFF6FFF6, 0xFFF6FFF6FFF6FFF6, 0xFFF6FFF6FFF6FFF6, 0xFFF6FFF6FFF6FFF6,  // 0x00008A10 
	0xFFF6FFF6FFF6FFF6, 0xFFF6FFF6FFF6FFF6, 0xFFF6FFF6FFF6FFF6, 0xFFF6FFF6FFF6FFF6,  // 0x00008A30 
	0xF6F4FDF5FEF8FCFA, 0xFFF7FDF7FEF8FDF5, 0xFCF2FCF3FEF7FDF8, 0xFAF5FDF5FEF6FAF3,  // 0x00008A50 
	0xF9F1FCF1FCF6FCF7, 0xFCF3FCF3FEF2F9F2, 0xF5EFFCF0FCF3FCF3, 0xFBF1FCF1FEF3FCF0,  // 0x00008A70 
	0xFBEDFEEEF6F1F7EF, 0xFAEFFCEFFDF1F9EE, 0xF6EBFAEDF2EEFCED, 0xFCEDFDEDFEECFCEC,  // 0x00008A90 
	0xF9E9F7EAF4EDFDEB, 0xF9EBFBEBFEEAFDEA, 0xF4E8FAE8F9E9F6E9, 0xFAE9FCE9FCE9FCE8,  // 0x00008AB0 
	0xF0E6F8E6F6E7FAE7, 0xF9E7F9E7FDE6F9E6, 0xF3E4F7E5F4E5F6E5, 0xF8E5FCE6FBE5FDE5,  // 0x00008AD0 
	0xF8E2F7E2F6E3F9E3, 0xF9E3FEE3FAE3FEE2, 0xF9E0F5E1F8E1F7E1, 0xF9E1FAE1FAE1FEE1,  // 0x00008AF0 
	0xF8DEF5DEF9DFF5DF, 0xFBDFF8DFEDDFFDDF, 0xF8DDF1DDFBDDF8DE, 0xF9DEFADDF5DDFADD,  // 0x00008B10 
	0xF6DBF8DAFDDBF7DB, 0xFDDBFCDBF7DBFCDA, 0xF4D8F7D9FCD9F7D9, 0xF9D9F5D9F9D9FCD9,  // 0x00008B30 
	0xF4D7EFD6FAD7F7D7, 0xFCD7F7D7FDD7FCD7, 0xFAD5F5D5FBD5F4D5, 0xFCD5F3D6FBD5F4D5,  // 0x00008B50 
	0xF9D2F4D3FCD3F8D3, 0xFCD3F9D3F8D3F6D3, 0xF9D0F8D1FAD1F1D1, 0xF6D1F7D2FDD1F8D1,  // 0x00008B70 
	0xFCCFFACFFECFF8CF, 0xFCD0F8CFFDD0F8CF, 0xF9CDF5CDFCCDF3CD, 0xFCCDF7CDFDCDF7CD,  // 0x00008B90 
	0xF8CBF2CBFECBF3CB, 0xFBCBF5CCFACBF0CB, 0xFDC9F4C9FEC9EECA, 0xF8C9F3C9FDC9F6C9,  // 0x00008BB0 
	0xFCC7F6C7FEC7EEC8, 0xF5C7F0C7FAC7F7C7, 0xFDC5F4C5FCC5F3C6, 0xF6C6F3C5FAC5F3C5,  // 0x00008BD0 
	0xFAC2F1C3FDC3EFC3, 0xF6C3F2C3F9C3F1C3, 0xF9C1F5C1FEC1F5C2, 0xF7C1F8C1FAC1F5C1,  // 0x00008BF0 
	0xF8BFF2BFFDBFEEC0, 0xF6C0F6C0FDBFF5BF, 0xFDBCF5BDFCBDEDBD, 0xF9BDFDBEFBBEF3BE,  // 0x00008C10 
	0xF7BAEFBBFDBBEABB, 0xF4BBFEBBFDBBF3BB, 0xF8B9F5B9FAB9EDB9, 0xF0BAFEB9FABAF2B9,  // 0x00008C30 
	0xF7B6F8B7FDB7F2B7, 0xF1B7FDB8F9B7F0B7, 0xF8B5F2B5FCB5F2B5, 0xF3B5FDB6F7B5F0B5,  // 0x00008C50 
	0xF6B3F3B3F9B3F4B3, 0xF0B3FDB3F6B4F4B4, 0xF6B1F3B2F9B1F2B1, 0xEFB1FCB1F0B1F1B1,  // 0x00008C70 
	0xF5AFF4B0F9AFF8AF, 0xEDB0FCAFF6AFEDAF, 0xFAADF3ADF5ADF6AD, 0xE9ADF6AEF5ADF0AD,  // 0x00008C90 
	0xF9ABF5ABF6ACF8AB, 0xEFABF9ABF5ACEFAB, 0xF5A9F5A9F1A9F4A9, 0xEFA9FDA9F5AAF4A9,  // 0x00008CB0 
	0xF3A7F6A7F4A7F5A7, 0xECA7FCA7EFA7EEA7, 0xF7A5F6A5EFA5F8A6, 0xF1A5FDA5F2A5F0A6,  // 0x00008CD0 
	0xF7A3F7A3F0A3FBA3, 0xF1A3FCA3EFA3F4A3, 0xF1A1F7A1F2A2F6A1, 0xF2A1FCA2EBA2F3A1,  // 0x00008CF0 
	0xF09FFA9FF29FF99F, 0xF39FFD9FEEA0F29F, 0xF39DF69DF39DF89D, 0xF29EFD9DF09DF59D,  // 0x00008D10 
	0xFA9BF59BF39CF59C, 0xF09BFA9CEA9BF89B, 0xF899F899F69AF699, 0xED99FB99EA99F699,  // 0x00008D30 
	0xFC97FB98F498F697, 0xED97FB97EB98FB97, 0xF595F595F495F796, 0xF196FB95EA95FB95,  // 0x00008D50 
	0xF993F594F393F793, 0xF293F693E494F893, 0xFC91F791F591F992, 0xEF91FB91E392FA92,  // 0x00008D70 
	0xF690F38FF58FF890, 0xED90FA8FE88FFA8F, 0xF48DF78DF58DF68D, 0xED8EF88DE98DF78E,  // 0x00008D90 
	0xF98CF78BF38BF68B, 0xF28CF88CE68CFC8B, 0xF989F98AF68AF389, 0xF389FB89E989FB89,  // 0x00008DB0 
	0xF587F687EF88F388, 0xF388FD88EE87F987, 0xF585F386F086F985, 0xF286FD85ED85F985,  // 0x00008DD0 
	0xF884F684ED83F283, 0xF183FD83EF84F683, 0xF981F681EC82F581, 0xF482FA81ED81FA81,  // 0x00008DF0 
	0xF77FF67FEB80F980, 0xF87FF97FED7FF47F, 0xF47DF87DED7EF77E, 0xF97DF97DEE7EF67D,  // 0x00008E10 
	0xED7CFA7BF17CFA7C, 0xF87CF97CEF7BF67B, 0xEE7AF87AEF79F97A, 0xFA79F77AF379F879,  // 0x00008E30 
	0xEC77F878F377FC78, 0xFE78F778F378F677, 0xEB75F575ED75F976, 0xFE76F575F176F375,  // 0x00008E50 
	0xED73F674EF73F973, 0xFD74EF74F473F674, 0xEA72F771EF72F972, 0xFD72F071F672F472,  // 0x00008E70 
	0xEA70F570F46FF66F, 0xF770ED70F370F76F, 0xEF6EF26DF06EF26E, 0xFB6EEC6EF06EF96E,  // 0x00008E90 
	0xEE6CF36CF36CF66B, 0xFB6BE86CF16BF76C, 0xEA69EE69FA6AF769, 0xF769E86AF06AFB6A,  // 0x00008EB0 
	0xF267EF67FA68F368, 0xF967EA68F468F868, 0xEF66ED65F766EE65, 0xFB65E966F466F965,  // 0x00008ED0 
	0xF564E763F664F664, 0xFD63EA64F064F963, 0xF361EB61FA61F462, 0xFC61E962EE62F961,  // 0x00008EF0 
	0xF660EC5FF860F360, 0xFD60EE5FEE60F760, 0xFA5DED5DF65EF35D, 0xFD5DF05DEE5EF65D,  // 0x00008F10 
	0xF85BEF5CF95CF45B, 0xF95CF25CF05CF65B, 0xFB5AED59FB5AEE5A, 0xF95AEE5AF05AF659,  // 0x00008F30 
	0xFC58EA57FC58EF58, 0xF658E958F357F357, 0xF555ED56FD56F356, 0xF956F355F455F655,  // 0x00008F50 
	0xFA54EF53FD54F554, 0xFB54F854EF54F453, 0xF751EF52FD52F652, 0xF951F351EB52F651,  // 0x00008F70 
	0xFD4FF050FD50F74F, 0xF650F350EE50F350, 0xFC4EF24EFB4EF54D, 0xF44EF64EF24EF64E,  // 0x00008F90 
	0xFD4CF04CFD4CF84B, 0xF84CF44CF44CF74C, 0xF94AEF4AFA4AF749, 0xF649F24AF34AF34A,  // 0x00008FB0 
	0xF647F348FD48F848, 0xF548F248F347F647, 0xF445F645FA46F946, 0xF645EE45EF46F646,  // 0x00008FD0 
	0xF944F244F543F944, 0xF743EF44F044F643, 0xFA42FB41F942F742, 0xF641F442F442F941,  // 0x00008FF0 
	0xF83FFC40FB40F940, 0xF440ED40F33FFC40, 0xF53DF63EF93EF93E, 0xF13EEB3EF43EFC3D,  // 0x00009010 
	0xF93CF93CF33CF93C, 0xF53CEA3CF43CF93B, 0xF739F73AF53AFB3A, 0xF63AEC3AF63AF839,  // 0x00009030 
	0xF837F638EF37F838, 0xFA38ED38F638F938, 0xF335FB36EC36F736, 0xF436EE36F636F535,  // 0x00009050 
	0xF334F834EE34F734, 0xF633EF34FA34FA34, 0xF532FC32EB31F632, 0xF932F532FC32FE32,  // 0x00009070 
	0xF730FD2FEB30F830, 0xF930F630FB30FA30, 0xF32EFC2EEA2EF92E, 0xFC2EF92EF42EF92E,  // 0x00009090 
	0xF32BFA2CE82CF92C, 0xFA2CF92CF32CFB2C, 0xF52AF92AEE2AF829, 0xF52AF92AF82AFA2A,  // 0x000090B0 
	0xF728FC28ED27F528, 0xF928F728F928FA28, 0xF226FC26EF26F826, 0xFB26F526F826F826,  // 0x000090D0 
	0xF324FA24ED24F424, 0xF924F824FB23F724, 0xEE21FB22ED21F122, 0xF922F922F722F422,  // 0x000090F0 
	0xED20FB20E820F120, 0xFA20FA20FA20FC20, 0xF11EFA1EEC1EEE1E, 0xFA1EF91EFB1EF81E,  // 0x00009110 
	0xEF1CFC1CEA1CEF1C, 0xF41CFA1CF71CF61C, 0xF21AFB1AE81AF21A, 0xFB1AF71AF51AF61A,  // 0x00009130 
	0xF018F818EA18F418, 0xFB18F618FA18F517, 0xEE16F816EA16F016, 0xF616F316F916F116,  // 0x00009150 
	0xEE14FC14EA14F014, 0xF314F314F714F114, 0xEE12FC12EB12F312, 0xF312F712FC12EF12,  // 0x00009170 
	0xED10FB10EF10F610, 0xF610F110FB10F010, 0xF00EF90EEF0EF60E, 0xF20EF60EFD0EF20E,  // 0x00009190 
	0xF00CFC0CEF0CFA0C, 0xF40CF80CFD0CF60C, 0xEF0AFB0AF00AFB0A, 0xF20AF80AF90AEC0A,  // 0x000091B0 
	0xF108FC08F408FC08, 0xF308F408FC08EC08, 0xF706FA06F506F806, 0xF206FB06FD06EE06,  // 0x000091D0 
	0xF304F704F304FC04, 0xF304FB04FE04F004, 0xF402F402EF02FD02, 0xF402FC02FD02EE02,  // 0x000091F0 
};


