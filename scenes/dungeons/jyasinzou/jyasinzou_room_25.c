#include <ultra64.h>
#include <z64.h>
#include "jyasinzou_room_25.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "jyasinzou_scene.h"



SCmdEchoSettings _jyasinzou_room_25_set0000_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0000
SCmdRoomBehavior _jyasinzou_room_25_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _jyasinzou_room_25_set0000_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0010
SCmdTimeSettings _jyasinzou_room_25_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _jyasinzou_room_25_set0000_cmd04 = { 0x0A, 0, (u32)&_jyasinzou_room_25_meshHeader_00000130 }; // 0x0020
SCmdObjectList _jyasinzou_room_25_set0000_cmd05 = { 0x0B, 0x0D, (u32)_jyasinzou_room_25_objectList_00000040 }; // 0x0028
SCmdActorList _jyasinzou_room_25_set0000_cmd06 = { 0x01, 0x0D, (u32)_jyasinzou_room_25_actorList_0000005C }; // 0x0030
SCmdEndMarker _jyasinzou_room_25_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _jyasinzou_room_25_objectList_00000040[] = 
{
	OBJECT_JYA_OBJ,
	OBJECT_JYA_DOOR,
	OBJECT_MIR_RAY,
	OBJECT_BDOOR,
	OBJECT_SYOKUDAI,
	OBJECT_LIGHTSWITCH,
	OBJECT_BOX,
	OBJECT_KA,
	OBJECT_TIMEBLOCK,
	OBJECT_EFC_TW,
	OBJECT_JYA_IRON,
	OBJECT_WALLMASTER,
	OBJECT_KIBAKO2,
};

ActorEntry _jyasinzou_room_25_actorList_0000005C[13] = 
{
	{ ACTOR_BG_JYA_BIGMIRROR, 60, 1802, -1102, 0, 0, 0, 0x0000 }, //0x0000005C 
	{ ACTOR_OBJ_KIBAKO2, 270, 1613, -1186, 0, 0, 0, 0xFFFF }, //0x0000006C 
	{ ACTOR_OBJ_KIBAKO2, -150, 1613, -1186, 0, 0, 0, 0xFFFF }, //0x0000007C 
	{ ACTOR_OBJ_KIBAKO2, 270, 1613, -1138, 0, 0, 0, 0xFFFF }, //0x0000008C 
	{ ACTOR_OBJ_KIBAKO2, -150, 1613, -1138, 0, 0, 0, 0xFFFF }, //0x0000009C 
	{ ACTOR_OBJ_SWITCH, -147, 1613, -1186, 0, 0, 0, 0x1301 }, //0x000000AC 
	{ ACTOR_OBJ_LIGHTSWITCH, 60, 1653, -892, 0, -32768, 0, 0x1700 }, //0x000000BC 
	{ ACTOR_BG_JYA_LIFT, 60, 1613, -1090, 0, 0, 0, 0x0017 }, //0x000000CC 
	{ ACTOR_EN_WONDER_ITEM, -167, 1733, -830, 0, 0, 0, 0x3FE9 }, //0x000000DC 
	{ ACTOR_OBJ_TSUBO, 244, 1733, -893, 0, 0, 0, 0x7803 }, //0x000000EC 
	{ ACTOR_OBJ_TSUBO, -122, 1733, -741, 0, 0, 0, 0x7A03 }, //0x000000FC 
	{ ACTOR_OBJ_TSUBO, 250, 1733, -741, 0, 0, 0, 0x7C03 }, //0x0000010C 
	{ ACTOR_OBJ_TSUBO, -123, 1733, -892, 0, 0, 0, 0x760F }, //0x0000011C 
};

static u32 pad12C = 0;

MeshHeader2 _jyasinzou_room_25_meshHeader_00000130 = { { 2 }, 0x20, (u32)&_jyasinzou_room_25_meshDListEntry_0000013C, (u32)&(_jyasinzou_room_25_meshDListEntry_0000013C) + sizeof(_jyasinzou_room_25_meshDListEntry_0000013C) };

MeshEntry2 _jyasinzou_room_25_meshDListEntry_0000013C[32] = 
{
	{ 60, 1488, -1090, 183, (u32)_jyasinzou_room_25_dlist_00000620, 0 },
	{ 60, 1783, -960, 386, (u32)_jyasinzou_room_25_dlist_00000F10, 0 },
	{ 60, 1823, -1080, 302, (u32)_jyasinzou_room_25_dlist_000019A0, 0 },
	{ 60, 1673, -830, 274, (u32)_jyasinzou_room_25_dlist_00001E00, 0 },
	{ -172, 1843, -930, 112, (u32)_jyasinzou_room_25_dlist_00002418, 0 },
	{ -172, 1843, -730, 112, (u32)_jyasinzou_room_25_dlist_00002610, 0 },
	{ 291, 1843, -930, 112, (u32)_jyasinzou_room_25_dlist_00002808, 0 },
	{ 291, 1843, -730, 112, (u32)_jyasinzou_room_25_dlist_00002A00, 0 },
	{ 60, 1809, -1090, 173, (u32)_jyasinzou_room_25_dlist_00002C78, 0 },
	{ 60, 1738, -655, 85, (u32)_jyasinzou_room_25_dlist_00002ED8, 0 },
	{ -130, 1868, -310, 173, (u32)_jyasinzou_room_25_dlist_00003298, 0 },
	{ 60, 1993, -310, 216, (u32)_jyasinzou_room_25_dlist_000034D0, 0 },
	{ 50, 1863, -378, 308, (u32)_jyasinzou_room_25_dlist_000038F0, 0 },
	{ 480, 573, -810, 410, (u32)_jyasinzou_room_25_dlist_000041F8, 0 },
	{ -455, 606, -975, 128, (u32)_jyasinzou_room_25_dlist_00004B60, 0 },
	{ 160, 692, -1630, 733, (u32)_jyasinzou_room_25_dlist_00004DC0, 0 },
	{ 60, 693, -670, 608, (u32)_jyasinzou_room_25_dlist_00005050, 0 },
	{ 60, 1057, -1494, 78, (u32)_jyasinzou_room_25_dlist_00005340, 0 },
	{ 482, 667, -1259, 109, (u32)_jyasinzou_room_25_dlist_00005670, 0 },
	{ -363, 667, -1259, 109, (u32)_jyasinzou_room_25_dlist_000059D0, 0 },
	{ -242, 779, -1483, 220, (u32)_jyasinzou_room_25_dlist_00005E28, 0 },
	{ 361, 779, -1483, 219, (u32)_jyasinzou_room_25_dlist_00006400, 0 },
	{ 60, 869, -1529, 240, (u32)_jyasinzou_room_25_dlist_00006E18, 0 },
	{ 69, 619, -1547, 186, (u32)_jyasinzou_room_25_dlist_000076A8, 0 },
	{ 60, 1185, -1408, 54, (u32)_jyasinzou_room_25_dlist_00007958, 0 },
	{ 102, 970, -1553, 150, (u32)_jyasinzou_room_25_dlist_00007DF0, 0 },
	{ 223, 441, -1465, 238, (u32)_jyasinzou_room_25_dlist_000083F8, 0 },
	{ -70, 524, -1466, 357, (u32)_jyasinzou_room_25_dlist_00008C30, 0 },
	{ 60, 1188, -1392, 40, (u32)_jyasinzou_room_25_dlist_00009010, 0 },
	{ -250, 646, -790, 279, (u32)_jyasinzou_room_25_dlist_00009248, 0 },
	{ 50, 673, -1130, 879, (u32)_jyasinzou_room_25_dlist_0000A0E0, 0 },
	{ 60, 1808, -610, 138, (u32)_jyasinzou_room_25_dlist_0000B540, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

static u8 unaccounted0340[] = 
{
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x30, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x30, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

Vtx_t _jyasinzou_room_25_vertices_000003A0[32] = 
{
	 { 120, 1613, -1210, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000003A0
	 { 120, 1363, -1210, 0, 0, 4036, 69, 62, 48, 255 }, // 0x000003B0
	 { 180, 1363, -1150, 0, 341, 4036, 52, 49, 38, 255 }, // 0x000003C0
	 { 180, 1613, -1150, 0, 341, 1024, 81, 72, 55, 255 }, // 0x000003D0
	 { 180, 1363, -1150, 0, 341, 4036, 69, 62, 48, 255 }, // 0x000003E0
	 { 180, 1363, -1030, 0, 683, 4036, 52, 49, 38, 255 }, // 0x000003F0
	 { 180, 1613, -1030, 0, 683, 1024, 81, 72, 55, 255 }, // 0x00000400
	 { 180, 1613, -1150, 0, 341, 1024, 100, 89, 67, 255 }, // 0x00000410
	 { 180, 1363, -1030, 0, 683, 4036, 69, 62, 48, 255 }, // 0x00000420
	 { 120, 1363, -970, 0, 1024, 4036, 52, 49, 38, 255 }, // 0x00000430
	 { 120, 1613, -970, 0, 1024, 1024, 81, 72, 55, 255 }, // 0x00000440
	 { 180, 1613, -1030, 0, 683, 1024, 100, 89, 67, 255 }, // 0x00000450
	 { 0, 1613, -1210, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00000460
	 { 0, 1363, -1210, 0, 0, 4036, 69, 62, 48, 255 }, // 0x00000470
	 { 120, 1363, -1210, 0, 1024, 4036, 52, 49, 38, 255 }, // 0x00000480
	 { 120, 1613, -1210, 0, 1024, 1024, 81, 72, 55, 255 }, // 0x00000490
	 { 0, 1613, -970, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000004A0
	 { 0, 1363, -970, 0, 0, 4036, 69, 62, 48, 255 }, // 0x000004B0
	 { -60, 1363, -1030, 0, 341, 4036, 52, 49, 38, 255 }, // 0x000004C0
	 { -60, 1613, -1030, 0, 341, 1024, 81, 72, 55, 255 }, // 0x000004D0
	 { -60, 1363, -1030, 0, 341, 4036, 69, 62, 48, 255 }, // 0x000004E0
	 { -60, 1363, -1150, 0, 683, 4036, 52, 49, 38, 255 }, // 0x000004F0
	 { -60, 1613, -1150, 0, 683, 1024, 81, 72, 55, 255 }, // 0x00000500
	 { -60, 1613, -1030, 0, 341, 1024, 100, 89, 67, 255 }, // 0x00000510
	 { -60, 1363, -1150, 0, 683, 4036, 69, 62, 48, 255 }, // 0x00000520
	 { 0, 1363, -1210, 0, 1024, 4036, 52, 49, 38, 255 }, // 0x00000530
	 { 0, 1613, -1210, 0, 1024, 1024, 81, 72, 55, 255 }, // 0x00000540
	 { -60, 1613, -1150, 0, 683, 1024, 100, 89, 67, 255 }, // 0x00000550
	 { 120, 1613, -970, 0, 1024, 1024, 100, 89, 67, 255 }, // 0x00000560
	 { 120, 1363, -970, 0, 1024, 4036, 69, 62, 48, 255 }, // 0x00000570
	 { 0, 1363, -970, 0, 0, 4036, 52, 49, 38, 255 }, // 0x00000580
	 { 0, 1613, -970, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00000590
};

Vtx_t _jyasinzou_room_25_vertices_000005A0[8] = 
{
	 { -60, 1363, -1210, 0, 0, 0, 0, 0, 0, 0 }, // 0x000005A0
	 { 180, 1363, -1210, 0, 0, 0, 0, 0, 0, 0 }, // 0x000005B0
	 { -60, 1613, -1210, 0, 0, 0, 0, 0, 0, 0 }, // 0x000005C0
	 { 180, 1613, -1210, 0, 0, 0, 0, 0, 0, 0 }, // 0x000005D0
	 { -60, 1363, -970, 0, 0, 0, 0, 0, 0, 0 }, // 0x000005E0
	 { 180, 1363, -970, 0, 0, 0, 0, 0, 0, 0 }, // 0x000005F0
	 { -60, 1613, -970, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000600
	 { 180, 1613, -970, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000610
};

Gfx _jyasinzou_room_25_dlist_00000620[] =
{
	gsDPPipeSync(), // 0x00000620
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000628
	gsSPVertex(_jyasinzou_room_25_vertices_000005A0, 8, 0), // 0x00000630
	gsSPCullDisplayList(0, 7), // 0x00000638
	gsDPPipeSync(), // 0x00000640
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000648
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000650
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000658
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00015398), // 0x00000660
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000668
	gsDPLoadSync(), // 0x00000670
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000678
	gsDPPipeSync(), // 0x00000680
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000688
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000690
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000698
	gsDPTileSync(), // 0x000006A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000006A8
	gsDPLoadSync(), // 0x000006B0
	gsDPLoadTLUTCmd(7, 15), // 0x000006B8
	gsDPPipeSync(), // 0x000006C0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000006C8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000006D0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000006D8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000006E0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000006E8
	gsSPVertex(_jyasinzou_room_25_vertices_000003A0, 32, 0), // 0x000006F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000006F8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000700
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000708
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00000710
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00000718
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00000720
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00000728
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00000730
	gsSPEndDisplayList(), // 0x00000738
};

Vtx_t _jyasinzou_room_25_vertices_00000740[8] = 
{
	 { 320, 1733, -890, 0, -1792, 2048, 81, 72, 55, 255 }, // 0x00000740
	 { 300, 1733, -890, 0, -1536, 2048, 81, 72, 55, 255 }, // 0x00000750
	 { 300, 1733, -770, 0, -1536, 512, 81, 72, 55, 255 }, // 0x00000760
	 { 320, 1733, -770, 0, -1792, 512, 81, 72, 55, 255 }, // 0x00000770
	 { 320, 1893, -890, 0, -1024, -2048, 69, 62, 48, 255 }, // 0x00000780
	 { 300, 1893, -890, 0, -1280, -2048, 69, 62, 48, 255 }, // 0x00000790
	 { 300, 1733, -890, 0, -1280, 0, 81, 72, 55, 255 }, // 0x000007A0
	 { 320, 1733, -890, 0, -1024, 0, 81, 72, 55, 255 }, // 0x000007B0
};

Vtx_t _jyasinzou_room_25_vertices_000007C0[8] = 
{
	 { 320, 1733, -770, 0, 2645, 1365, 81, 72, 55, 255 }, // 0x000007C0
	 { 300, 1733, -770, 0, 2816, 1365, 81, 72, 55, 255 }, // 0x000007D0
	 { 300, 1893, -770, 0, 2816, 0, 81, 72, 55, 255 }, // 0x000007E0
	 { 320, 1893, -770, 0, 2645, 0, 81, 72, 55, 255 }, // 0x000007F0
	 { 320, 1893, -770, 0, 1792, 4693, 81, 72, 55, 255 }, // 0x00000800
	 { 300, 1893, -770, 0, 1792, 4864, 81, 72, 55, 255 }, // 0x00000810
	 { 300, 1893, -890, 0, 2816, 4864, 81, 72, 55, 255 }, // 0x00000820
	 { 320, 1893, -890, 0, 2816, 4693, 81, 72, 55, 255 }, // 0x00000830
};

Vtx_t _jyasinzou_room_25_vertices_00000840[11] = 
{
	 { -180, 1613, -1210, 0, 4096, -2048, 52, 49, 38, 255 }, // 0x00000840
	 { -60, 1613, -1150, 0, 3072, 0, 158, 142, 111, 255 }, // 0x00000850
	 { 0, 1613, -1210, 0, 4096, 1024, 115, 102, 78, 255 }, // 0x00000860
	 { -180, 1613, -950, 0, -341, -2048, 52, 49, 38, 255 }, // 0x00000870
	 { -60, 1613, -1030, 0, 1024, 0, 158, 142, 111, 255 }, // 0x00000880
	 { 0, 1613, -970, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00000890
	 { -60, 1613, -890, 0, -1365, 0, 69, 62, 48, 255 }, // 0x000008A0
	 { 120, 1613, -970, 0, 0, 3072, 158, 142, 111, 255 }, // 0x000008B0
	 { 180, 1613, -890, 0, -1365, 4096, 69, 62, 48, 255 }, // 0x000008C0
	 { 240, 1613, -950, 0, -341, 5120, 100, 89, 67, 255 }, // 0x000008D0
	 { -120, 1613, -950, 0, -341, -1024, 100, 89, 67, 255 }, // 0x000008E0
};

Vtx_t _jyasinzou_room_25_vertices_000008F0[8] = 
{
	 { -180, 1953, -710, 0, 8192, -2048, 69, 62, 48, 255 }, // 0x000008F0
	 { 0, 1853, -710, 0, 5120, -186, 158, 142, 111, 255 }, // 0x00000900
	 { -180, 1733, -710, 0, 8192, 2048, 69, 62, 48, 255 }, // 0x00000910
	 { 300, 1953, -710, 0, 0, -2048, 69, 62, 48, 255 }, // 0x00000920
	 { 120, 1853, -710, 0, 3072, -186, 158, 142, 111, 255 }, // 0x00000930
	 { 300, 1733, -710, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00000940
	 { 120, 1733, -710, 0, 3072, 2048, 134, 119, 89, 255 }, // 0x00000950
	 { 0, 1733, -710, 0, 5120, 2048, 134, 119, 89, 255 }, // 0x00000960
};

Vtx_t _jyasinzou_room_25_vertices_00000970[5] = 
{
	 { 300, 1953, -950, 0, 2048, 1024, 69, 62, 48, 255 }, // 0x00000970
	 { 60, 1953, -840, 0, -2048, -85, 115, 102, 78, 255 }, // 0x00000980
	 { -180, 1953, -950, 0, -6144, 1024, 69, 62, 48, 255 }, // 0x00000990
	 { 300, 1953, -710, 0, 2048, -1195, 69, 62, 48, 255 }, // 0x000009A0
	 { -180, 1953, -710, 0, -6144, -1195, 69, 62, 48, 255 }, // 0x000009B0
};

Vtx_t _jyasinzou_room_25_vertices_000009C0[5] = 
{
	 { 120, 1613, -1210, 0, 4096, 3072, 115, 102, 78, 255 }, // 0x000009C0
	 { 180, 1613, -1150, 0, 3072, 4096, 158, 142, 111, 255 }, // 0x000009D0
	 { 300, 1613, -1210, 0, 4096, 6144, 81, 72, 55, 255 }, // 0x000009E0
	 { 180, 1613, -1030, 0, 1024, 4096, 158, 142, 111, 255 }, // 0x000009F0
	 { 300, 1613, -950, 0, -341, 6144, 52, 49, 38, 255 }, // 0x00000A00
};

Vtx_t _jyasinzou_room_25_vertices_00000A10[3] = 
{
	 { 300, 1613, -1210, 0, -2389, 2048, 81, 72, 55, 255 }, // 0x00000A10
	 { 300, 1723, -1080, 0, -171, 171, 134, 119, 89, 255 }, // 0x00000A20
	 { 300, 1693, -1210, 0, -2389, 683, 81, 72, 55, 255 }, // 0x00000A30
};

Vtx_t _jyasinzou_room_25_vertices_00000A40[8] = 
{
	 { 300, 1613, -950, 0, -341, 6144, 52, 49, 38, 255 }, // 0x00000A40
	 { 180, 1613, -1030, 0, 1024, 4096, 158, 142, 111, 255 }, // 0x00000A50
	 { 240, 1613, -950, 0, -341, 5120, 100, 89, 67, 255 }, // 0x00000A60
	 { 120, 1613, -970, 0, 0, 3072, 158, 142, 111, 255 }, // 0x00000A70
	 { 0, 1613, -970, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00000A80
	 { -60, 1613, -1030, 0, 1024, 0, 158, 142, 111, 255 }, // 0x00000A90
	 { -120, 1613, -950, 0, -341, -1024, 100, 89, 67, 255 }, // 0x00000AA0
	 { -180, 1613, -950, 0, -341, -2048, 52, 49, 38, 255 }, // 0x00000AB0
};

Vtx_t _jyasinzou_room_25_vertices_00000AC0[9] = 
{
	 { 300, 1733, -950, 0, 2048, 0, 69, 62, 48, 255 }, // 0x00000AC0
	 { 300, 1723, -1080, 0, -171, 171, 134, 119, 89, 255 }, // 0x00000AD0
	 { 300, 1613, -950, 0, 2048, 2048, 52, 49, 38, 255 }, // 0x00000AE0
	 { 300, 1613, -1210, 0, -2389, 2048, 81, 72, 55, 255 }, // 0x00000AF0
	 { -180, 1693, -1210, 0, 4437, 682, 81, 72, 55, 255 }, // 0x00000B00
	 { -180, 1723, -1080, 0, 2219, 171, 134, 119, 89, 255 }, // 0x00000B10
	 { -180, 1613, -1210, 0, 4437, 2048, 81, 72, 55, 255 }, // 0x00000B20
	 { -180, 1613, -950, 0, 0, 2048, 52, 49, 38, 255 }, // 0x00000B30
	 { -180, 1733, -950, 0, 0, 0, 69, 62, 48, 255 }, // 0x00000B40
};

Vtx_t _jyasinzou_room_25_vertices_00000B50[3] = 
{
	 { -180, 1893, -890, 0, 3072, -931, 177, 164, 138, 255 }, // 0x00000B50
	 { -180, 1733, -890, 0, 3072, 2048, 100, 89, 67, 255 }, // 0x00000B60
	 { -180, 1733, -950, 0, 4096, 2048, 69, 62, 48, 255 }, // 0x00000B70
};

Vtx_t _jyasinzou_room_25_vertices_00000B80[3] = 
{
	 { -180, 1723, -1080, 0, 2219, 171, 134, 119, 89, 255 }, // 0x00000B80
	 { -180, 1693, -1210, 0, 4437, 682, 81, 72, 55, 255 }, // 0x00000B90
	 { -180, 1953, -950, 0, 0, -3755, 69, 62, 48, 255 }, // 0x00000BA0
};

Vtx_t _jyasinzou_room_25_vertices_00000BB0[6] = 
{
	 { -180, 1953, -950, 0, 4096, -2048, 69, 62, 48, 255 }, // 0x00000BB0
	 { -180, 1953, -710, 0, 0, -2048, 69, 62, 48, 255 }, // 0x00000BC0
	 { -180, 1893, -770, 0, 1024, -931, 177, 164, 138, 255 }, // 0x00000BD0
	 { -180, 1893, -890, 0, 3072, -931, 177, 164, 138, 255 }, // 0x00000BE0
	 { -180, 1733, -770, 0, 1024, 2048, 100, 89, 67, 255 }, // 0x00000BF0
	 { -180, 1733, -710, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00000C00
};

Vtx_t _jyasinzou_room_25_vertices_00000C10[8] = 
{
	 { -200, 1893, -890, 0, 2816, 4693, 81, 72, 55, 255 }, // 0x00000C10
	 { -180, 1893, -890, 0, 2816, 4864, 81, 72, 55, 255 }, // 0x00000C20
	 { -180, 1893, -770, 0, 1792, 4864, 81, 72, 55, 255 }, // 0x00000C30
	 { -200, 1893, -770, 0, 1792, 4693, 81, 72, 55, 255 }, // 0x00000C40
	 { -200, 1893, -770, 0, 2645, 0, 81, 72, 55, 255 }, // 0x00000C50
	 { -180, 1893, -770, 0, 2816, 0, 81, 72, 55, 255 }, // 0x00000C60
	 { -180, 1733, -770, 0, 2816, 1365, 81, 72, 55, 255 }, // 0x00000C70
	 { -200, 1733, -770, 0, 2645, 1365, 81, 72, 55, 255 }, // 0x00000C80
};

Vtx_t _jyasinzou_room_25_vertices_00000C90[8] = 
{
	 { -200, 1733, -890, 0, -1024, 0, 81, 72, 55, 255 }, // 0x00000C90
	 { -180, 1733, -890, 0, -1280, 0, 81, 72, 55, 255 }, // 0x00000CA0
	 { -180, 1893, -890, 0, -1280, -2048, 69, 62, 48, 255 }, // 0x00000CB0
	 { -200, 1893, -890, 0, -1024, -2048, 69, 62, 48, 255 }, // 0x00000CC0
	 { -200, 1733, -770, 0, -1792, 512, 81, 72, 55, 255 }, // 0x00000CD0
	 { -180, 1733, -770, 0, -1536, 512, 81, 72, 55, 255 }, // 0x00000CE0
	 { -180, 1733, -890, 0, -1536, 2048, 81, 72, 55, 255 }, // 0x00000CF0
	 { -200, 1733, -890, 0, -1792, 2048, 81, 72, 55, 255 }, // 0x00000D00
};

Vtx_t _jyasinzou_room_25_vertices_00000D10[3] = 
{
	 { -180, 1893, -890, 0, 3072, -931, 177, 164, 138, 255 }, // 0x00000D10
	 { -180, 1733, -950, 0, 4096, 2048, 69, 62, 48, 255 }, // 0x00000D20
	 { -180, 1953, -950, 0, 4096, -2048, 69, 62, 48, 255 }, // 0x00000D30
};

Vtx_t _jyasinzou_room_25_vertices_00000D40[7] = 
{
	 { -180, 1733, -950, 0, 0, 0, 69, 62, 48, 255 }, // 0x00000D40
	 { -180, 1723, -1080, 0, 2219, 171, 134, 119, 89, 255 }, // 0x00000D50
	 { -180, 1953, -950, 0, 0, -3755, 69, 62, 48, 255 }, // 0x00000D60
	 { 300, 1953, -950, 0, 2048, -3755, 69, 62, 48, 255 }, // 0x00000D70
	 { 300, 1693, -1210, 0, -2389, 683, 81, 72, 55, 255 }, // 0x00000D80
	 { 300, 1723, -1080, 0, -171, 171, 134, 119, 89, 255 }, // 0x00000D90
	 { 300, 1733, -950, 0, 2048, 0, 69, 62, 48, 255 }, // 0x00000DA0
};

Vtx_t _jyasinzou_room_25_vertices_00000DB0[8] = 
{
	 { 300, 1733, -950, 0, 4096, 2048, 69, 62, 48, 255 }, // 0x00000DB0
	 { 300, 1733, -890, 0, 3072, 2048, 100, 89, 67, 255 }, // 0x00000DC0
	 { 300, 1893, -890, 0, 3072, -931, 177, 164, 138, 255 }, // 0x00000DD0
	 { 300, 1953, -950, 0, 4096, -2048, 69, 62, 48, 255 }, // 0x00000DE0
	 { 300, 1893, -770, 0, 1024, -931, 177, 164, 138, 255 }, // 0x00000DF0
	 { 300, 1953, -710, 0, 0, -2048, 69, 62, 48, 255 }, // 0x00000E00
	 { 300, 1733, -710, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00000E10
	 { 300, 1733, -770, 0, 1024, 2048, 100, 89, 67, 255 }, // 0x00000E20
};

Vtx_t _jyasinzou_room_25_vertices_00000E30[6] = 
{
	 { 300, 1613, -1210, 0, 8192, 2048, 81, 72, 55, 255 }, // 0x00000E30
	 { 300, 1693, -1210, 0, 8192, 683, 81, 72, 55, 255 }, // 0x00000E40
	 { 120, 1613, -1210, 0, 5120, 2048, 177, 164, 138, 255 }, // 0x00000E50
	 { -180, 1693, -1210, 0, 0, 683, 81, 72, 55, 255 }, // 0x00000E60
	 { 0, 1613, -1210, 0, 3072, 2048, 177, 164, 138, 255 }, // 0x00000E70
	 { -180, 1613, -1210, 0, 0, 2048, 52, 49, 38, 255 }, // 0x00000E80
};

Vtx_t _jyasinzou_room_25_vertices_00000E90[8] = 
{
	 { -200, 1613, -1210, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E90
	 { 320, 1613, -1210, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000EA0
	 { -200, 1953, -1210, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000EB0
	 { 320, 1953, -1210, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000EC0
	 { -200, 1613, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000ED0
	 { 320, 1613, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000EE0
	 { -200, 1953, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000EF0
	 { 320, 1953, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000F00
};

Gfx _jyasinzou_room_25_dlist_00000F10[] =
{
	gsDPPipeSync(), // 0x00000F10
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000F18
	gsSPVertex(_jyasinzou_room_25_vertices_00000E90, 8, 0), // 0x00000F20
	gsSPCullDisplayList(0, 7), // 0x00000F28
	gsDPPipeSync(), // 0x00000F30
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000F38
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000F40
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000F48
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000F50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000F58
	gsDPLoadSync(), // 0x00000F60
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000F68
	gsDPPipeSync(), // 0x00000F70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000F78
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000F80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000F88
	gsDPTileSync(), // 0x00000F90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000F98
	gsDPLoadSync(), // 0x00000FA0
	gsDPLoadTLUTCmd(7, 15), // 0x00000FA8
	gsDPPipeSync(), // 0x00000FB0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000FB8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000FC0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000FC8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000FD0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000FD8
	gsSPVertex(_jyasinzou_room_25_vertices_00000740, 8, 0), // 0x00000FE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000FE8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000FF0
	gsDPPipeSync(), // 0x00000FF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00015398), // 0x00001000
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001008
	gsDPLoadSync(), // 0x00001010
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001018
	gsDPPipeSync(), // 0x00001020
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001028
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001030
	gsSPVertex(_jyasinzou_room_25_vertices_000007C0, 8, 0), // 0x00001038
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001040
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001048
	gsDPPipeSync(), // 0x00001050
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00011398), // 0x00001058
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001060
	gsDPLoadSync(), // 0x00001068
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001070
	gsDPPipeSync(), // 0x00001078
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001080
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001088
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00001090
	gsDPTileSync(), // 0x00001098
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000010A0
	gsDPLoadSync(), // 0x000010A8
	gsDPLoadTLUTCmd(7, 255), // 0x000010B0
	gsDPPipeSync(), // 0x000010B8
	gsSPVertex(_jyasinzou_room_25_vertices_00000840, 11, 0), // 0x000010C0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x000010C8
	gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0), // 0x000010D0
	gsSP2Triangles(6, 8, 7, 0, 8, 9, 7, 0), // 0x000010D8
	gsSP1Triangle(5, 10, 6, 0), // 0x000010E0
	gsDPPipeSync(), // 0x000010E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000CE98), // 0x000010F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 5, 0), // 0x000010F8
	gsDPLoadSync(), // 0x00001100
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001108
	gsDPPipeSync(), // 0x00001110
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 6, 0, 0, 5, 0), // 0x00001118
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001120
	gsSPVertex(_jyasinzou_room_25_vertices_000008F0, 8, 0), // 0x00001128
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001130
	gsSP2Triangles(3, 4, 1, 0, 3, 5, 4, 0), // 0x00001138
	gsSP2Triangles(5, 6, 4, 0, 7, 2, 1, 0), // 0x00001140
	gsDPPipeSync(), // 0x00001148
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000E698), // 0x00001150
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001158
	gsDPLoadSync(), // 0x00001160
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001168
	gsDPPipeSync(), // 0x00001170
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001178
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001180
	gsSPVertex(_jyasinzou_room_25_vertices_00000970, 5, 0), // 0x00001188
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001190
	gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0), // 0x00001198
	gsDPPipeSync(), // 0x000011A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00011398), // 0x000011A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000011B0
	gsDPLoadSync(), // 0x000011B8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000011C0
	gsDPPipeSync(), // 0x000011C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000011D0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000011D8
	gsSPVertex(_jyasinzou_room_25_vertices_000009C0, 5, 0), // 0x000011E0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x000011E8
	gsSP1Triangle(3, 2, 1, 0), // 0x000011F0
	gsDPPipeSync(), // 0x000011F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014798), // 0x00001200
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001208
	gsDPLoadSync(), // 0x00001210
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001218
	gsDPPipeSync(), // 0x00001220
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001228
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001230
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017FE0), // 0x00001238
	gsDPTileSync(), // 0x00001240
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001248
	gsDPLoadSync(), // 0x00001250
	gsDPLoadTLUTCmd(7, 15), // 0x00001258
	gsDPPipeSync(), // 0x00001260
	gsSPVertex(_jyasinzou_room_25_vertices_00000A10, 3, 0), // 0x00001268
	gsSP1Triangle(0, 1, 2, 0), // 0x00001270
	gsDPPipeSync(), // 0x00001278
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00011398), // 0x00001280
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001288
	gsDPLoadSync(), // 0x00001290
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001298
	gsDPPipeSync(), // 0x000012A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000012A8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000012B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x000012B8
	gsDPTileSync(), // 0x000012C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000012C8
	gsDPLoadSync(), // 0x000012D0
	gsDPLoadTLUTCmd(7, 255), // 0x000012D8
	gsDPPipeSync(), // 0x000012E0
	gsSPVertex(_jyasinzou_room_25_vertices_00000A40, 8, 0), // 0x000012E8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000012F0
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x000012F8
	gsDPPipeSync(), // 0x00001300
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014798), // 0x00001308
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001310
	gsDPLoadSync(), // 0x00001318
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001320
	gsDPPipeSync(), // 0x00001328
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001330
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001338
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017FE0), // 0x00001340
	gsDPTileSync(), // 0x00001348
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001350
	gsDPLoadSync(), // 0x00001358
	gsDPLoadTLUTCmd(7, 15), // 0x00001360
	gsDPPipeSync(), // 0x00001368
	gsSPVertex(_jyasinzou_room_25_vertices_00000AC0, 9, 0), // 0x00001370
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001378
	gsSP2Triangles(4, 5, 6, 0, 7, 5, 8, 0), // 0x00001380
	gsSP1Triangle(7, 6, 5, 0), // 0x00001388
	gsDPPipeSync(), // 0x00001390
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000CE98), // 0x00001398
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 5, 0), // 0x000013A0
	gsDPLoadSync(), // 0x000013A8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000013B0
	gsDPPipeSync(), // 0x000013B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 6, 0, 0, 5, 0), // 0x000013C0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000013C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x000013D0
	gsDPTileSync(), // 0x000013D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000013E0
	gsDPLoadSync(), // 0x000013E8
	gsDPLoadTLUTCmd(7, 255), // 0x000013F0
	gsDPPipeSync(), // 0x000013F8
	gsSPVertex(_jyasinzou_room_25_vertices_00000B50, 3, 0), // 0x00001400
	gsSP1Triangle(0, 1, 2, 0), // 0x00001408
	gsDPPipeSync(), // 0x00001410
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014798), // 0x00001418
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001420
	gsDPLoadSync(), // 0x00001428
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001430
	gsDPPipeSync(), // 0x00001438
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001440
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001448
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017FE0), // 0x00001450
	gsDPTileSync(), // 0x00001458
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001460
	gsDPLoadSync(), // 0x00001468
	gsDPLoadTLUTCmd(7, 15), // 0x00001470
	gsDPPipeSync(), // 0x00001478
	gsSPVertex(_jyasinzou_room_25_vertices_00000B80, 3, 0), // 0x00001480
	gsSP1Triangle(0, 1, 2, 0), // 0x00001488
	gsDPPipeSync(), // 0x00001490
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000CE98), // 0x00001498
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 5, 0), // 0x000014A0
	gsDPLoadSync(), // 0x000014A8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000014B0
	gsDPPipeSync(), // 0x000014B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 6, 0, 0, 5, 0), // 0x000014C0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000014C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x000014D0
	gsDPTileSync(), // 0x000014D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000014E0
	gsDPLoadSync(), // 0x000014E8
	gsDPLoadTLUTCmd(7, 255), // 0x000014F0
	gsDPPipeSync(), // 0x000014F8
	gsSPVertex(_jyasinzou_room_25_vertices_00000BB0, 6, 0), // 0x00001500
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001508
	gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0), // 0x00001510
	gsDPPipeSync(), // 0x00001518
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00015398), // 0x00001520
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001528
	gsDPLoadSync(), // 0x00001530
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001538
	gsDPPipeSync(), // 0x00001540
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001548
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001550
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001558
	gsDPTileSync(), // 0x00001560
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001568
	gsDPLoadSync(), // 0x00001570
	gsDPLoadTLUTCmd(7, 15), // 0x00001578
	gsDPPipeSync(), // 0x00001580
	gsSPVertex(_jyasinzou_room_25_vertices_00000C10, 8, 0), // 0x00001588
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001590
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001598
	gsDPPipeSync(), // 0x000015A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x000015A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000015B0
	gsDPLoadSync(), // 0x000015B8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000015C0
	gsDPPipeSync(), // 0x000015C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000015D0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000015D8
	gsSPVertex(_jyasinzou_room_25_vertices_00000C90, 8, 0), // 0x000015E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000015E8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000015F0
	gsDPPipeSync(), // 0x000015F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000CE98), // 0x00001600
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 5, 0), // 0x00001608
	gsDPLoadSync(), // 0x00001610
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001618
	gsDPPipeSync(), // 0x00001620
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 6, 0, 0, 5, 0), // 0x00001628
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001630
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00001638
	gsDPTileSync(), // 0x00001640
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001648
	gsDPLoadSync(), // 0x00001650
	gsDPLoadTLUTCmd(7, 255), // 0x00001658
	gsDPPipeSync(), // 0x00001660
	gsSPVertex(_jyasinzou_room_25_vertices_00000D10, 3, 0), // 0x00001668
	gsSP1Triangle(0, 1, 2, 0), // 0x00001670
	gsDPPipeSync(), // 0x00001678
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014798), // 0x00001680
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001688
	gsDPLoadSync(), // 0x00001690
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001698
	gsDPPipeSync(), // 0x000016A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000016A8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000016B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017FE0), // 0x000016B8
	gsDPTileSync(), // 0x000016C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000016C8
	gsDPLoadSync(), // 0x000016D0
	gsDPLoadTLUTCmd(7, 15), // 0x000016D8
	gsDPPipeSync(), // 0x000016E0
	gsSPVertex(_jyasinzou_room_25_vertices_00000D40, 7, 0), // 0x000016E8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000016F0
	gsSP1Triangle(5, 6, 3, 0), // 0x000016F8
	gsDPPipeSync(), // 0x00001700
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000CE98), // 0x00001708
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 5, 0), // 0x00001710
	gsDPLoadSync(), // 0x00001718
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001720
	gsDPPipeSync(), // 0x00001728
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 6, 0, 0, 5, 0), // 0x00001730
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001738
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00001740
	gsDPTileSync(), // 0x00001748
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001750
	gsDPLoadSync(), // 0x00001758
	gsDPLoadTLUTCmd(7, 255), // 0x00001760
	gsDPPipeSync(), // 0x00001768
	gsSPVertex(_jyasinzou_room_25_vertices_00000DB0, 8, 0), // 0x00001770
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00001778
	gsSP2Triangles(2, 4, 3, 0, 4, 5, 3, 0), // 0x00001780
	gsSP2Triangles(6, 5, 4, 0, 6, 4, 7, 0), // 0x00001788
	gsDPPipeSync(), // 0x00001790
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014798), // 0x00001798
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000017A0
	gsDPLoadSync(), // 0x000017A8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000017B0
	gsDPPipeSync(), // 0x000017B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000017C0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000017C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017FE0), // 0x000017D0
	gsDPTileSync(), // 0x000017D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000017E0
	gsDPLoadSync(), // 0x000017E8
	gsDPLoadTLUTCmd(7, 15), // 0x000017F0
	gsDPPipeSync(), // 0x000017F8
	gsSPVertex(_jyasinzou_room_25_vertices_00000E30, 6, 0), // 0x00001800
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001808
	gsSP2Triangles(3, 4, 2, 0, 3, 5, 4, 0), // 0x00001810
	gsSPEndDisplayList(), // 0x00001818
};

Vtx_t _jyasinzou_room_25_vertices_00001820[16] = 
{
	 { 100, 1851, -1053, 0, 4778, 2480, 255, 255, 255, 255 }, // 0x00001820
	 { 129, 1830, -1073, 0, 5278, 2980, 255, 255, 255, 255 }, // 0x00001830
	 { 300, 1953, -950, 0, 8192, 1, 69, 62, 48, 255 }, // 0x00001840
	 { 140, 1802, -1102, 0, 5461, 3663, 203, 195, 178, 255 }, // 0x00001850
	 { -180, 1953, -950, 0, 0, 0, 69, 62, 48, 255 }, // 0x00001860
	 { 20, 1851, -1053, 0, 3413, 2480, 255, 255, 255, 255 }, // 0x00001870
	 { 60, 1858, -1045, 0, 4096, 2297, 255, 255, 255, 255 }, // 0x00001880
	 { -9, 1830, -1073, 0, 2913, 2980, 255, 255, 255, 255 }, // 0x00001890
	 { -20, 1802, -1102, 0, 2730, 3662, 203, 195, 178, 255 }, // 0x000018A0
	 { 300, 1693, -1210, 0, 8192, 6276, 81, 72, 55, 255 }, // 0x000018B0
	 { 60, 1745, -1158, 0, 4095, 5028, 189, 178, 157, 255 }, // 0x000018C0
	 { -180, 1693, -1210, 0, 0, 6275, 81, 72, 55, 255 }, // 0x000018D0
	 { 100, 1753, -1151, 0, 4778, 4845, 189, 178, 157, 255 }, // 0x000018E0
	 { 20, 1753, -1151, 0, 3413, 4845, 189, 178, 157, 255 }, // 0x000018F0
	 { 129, 1773, -1130, 0, 5278, 4345, 189, 178, 157, 255 }, // 0x00001900
	 { -9, 1773, -1130, 0, 2913, 4345, 189, 178, 157, 255 }, // 0x00001910
};

Vtx_t _jyasinzou_room_25_vertices_00001920[8] = 
{
	 { -180, 1693, -1210, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001920
	 { 300, 1693, -1210, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001930
	 { -180, 1718, -1231, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001940
	 { 300, 1718, -1231, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001950
	 { -180, 1929, -929, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001960
	 { 300, 1929, -929, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001970
	 { -180, 1953, -950, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001980
	 { 300, 1953, -950, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001990
};

Gfx _jyasinzou_room_25_dlist_000019A0[] =
{
	gsDPPipeSync(), // 0x000019A0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000019A8
	gsSPVertex(_jyasinzou_room_25_vertices_00001920, 8, 0), // 0x000019B0
	gsSPCullDisplayList(0, 7), // 0x000019B8
	gsDPPipeSync(), // 0x000019C0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000019C8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000019D0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000019D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014798), // 0x000019E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000019E8
	gsDPLoadSync(), // 0x000019F0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000019F8
	gsDPPipeSync(), // 0x00001A00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001A08
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001A10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017FE0), // 0x00001A18
	gsDPTileSync(), // 0x00001A20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001A28
	gsDPLoadSync(), // 0x00001A30
	gsDPLoadTLUTCmd(7, 15), // 0x00001A38
	gsDPPipeSync(), // 0x00001A40
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001A48
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001A50
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001A58
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001A60
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001A68
	gsSPVertex(_jyasinzou_room_25_vertices_00001820, 16, 0), // 0x00001A70
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001A78
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00001A80
	gsSP2Triangles(7, 4, 8, 0, 0, 2, 6, 0), // 0x00001A88
	gsSP2Triangles(2, 4, 6, 0, 9, 10, 11, 0), // 0x00001A90
	gsSP2Triangles(9, 12, 10, 0, 10, 13, 11, 0), // 0x00001A98
	gsSP2Triangles(9, 14, 12, 0, 13, 15, 11, 0), // 0x00001AA0
	gsSP2Triangles(9, 3, 14, 0, 15, 8, 11, 0), // 0x00001AA8
	gsSP2Triangles(9, 2, 3, 0, 8, 4, 11, 0), // 0x00001AB0
	gsSPEndDisplayList(), // 0x00001AB8
};

Vtx_t _jyasinzou_room_25_vertices_00001AC0[3] = 
{
	 { 60, 1733, -710, 0, 1536, -256, 147, 131, 97, 255 }, // 0x00001AC0
	 { 180, 1733, -890, 0, 0, 2048, 134, 119, 89, 255 }, // 0x00001AD0
	 { -60, 1733, -890, 0, 3072, 2048, 134, 119, 89, 255 }, // 0x00001AE0
};

Vtx_t _jyasinzou_room_25_vertices_00001AF0[4] = 
{
	 { -60, 1733, -890, 0, 4096, 0, 100, 89, 67, 255 }, // 0x00001AF0
	 { 180, 1733, -890, 0, 0, 0, 100, 89, 67, 255 }, // 0x00001B00
	 { 180, 1673, -890, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00001B10
	 { -60, 1673, -890, 0, 4096, 1024, 100, 89, 67, 255 }, // 0x00001B20
};

Vtx_t _jyasinzou_room_25_vertices_00001B30[4] = 
{
	 { 180, 1673, -890, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00001B30
	 { 180, 1613, -890, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00001B40
	 { -60, 1613, -890, 0, 4096, 2048, 69, 62, 48, 255 }, // 0x00001B50
	 { -60, 1673, -890, 0, 4096, 1024, 100, 89, 67, 255 }, // 0x00001B60
};

Vtx_t _jyasinzou_room_25_vertices_00001B70[4] = 
{
	 { 180, 1733, -890, 0, 2048, -2829, 81, 72, 55, 255 }, // 0x00001B70
	 { 240, 1733, -950, 0, -848, -2829, 100, 89, 67, 255 }, // 0x00001B80
	 { 240, 1613, -950, 0, -848, 1267, 100, 89, 67, 255 }, // 0x00001B90
	 { 180, 1613, -890, 0, 2048, 1267, 69, 62, 48, 255 }, // 0x00001BA0
};

Vtx_t _jyasinzou_room_25_vertices_00001BB0[4] = 
{
	 { 240, 1733, -950, 0, 1024, 0, 115, 102, 78, 255 }, // 0x00001BB0
	 { 300, 1733, -950, 0, 0, 0, 69, 62, 48, 255 }, // 0x00001BC0
	 { 240, 1673, -950, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00001BD0
	 { 300, 1673, -950, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00001BE0
};

Vtx_t _jyasinzou_room_25_vertices_00001BF0[4] = 
{
	 { 300, 1673, -950, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00001BF0
	 { 300, 1613, -950, 0, 0, 2048, 52, 49, 38, 255 }, // 0x00001C00
	 { 240, 1673, -950, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00001C10
	 { 240, 1613, -950, 0, 1024, 2048, 69, 62, 48, 255 }, // 0x00001C20
};

Vtx_t _jyasinzou_room_25_vertices_00001C30[4] = 
{
	 { -60, 1733, -890, 0, -848, -2830, 81, 72, 55, 255 }, // 0x00001C30
	 { -60, 1613, -890, 0, -848, 1267, 69, 62, 48, 255 }, // 0x00001C40
	 { -120, 1613, -950, 0, 2048, 1267, 100, 89, 67, 255 }, // 0x00001C50
	 { -120, 1733, -950, 0, 2048, -2830, 100, 89, 67, 255 }, // 0x00001C60
};

Vtx_t _jyasinzou_room_25_vertices_00001C70[9] = 
{
	 { -120, 1733, -950, 0, 3840, 2816, 147, 131, 97, 255 }, // 0x00001C70
	 { -180, 1733, -710, 0, 4608, -256, 69, 62, 48, 255 }, // 0x00001C80
	 { -60, 1733, -890, 0, 3072, 2048, 134, 119, 89, 255 }, // 0x00001C90
	 { -180, 1733, -950, 0, 4609, 2816, 81, 72, 55, 255 }, // 0x00001CA0
	 { 60, 1733, -710, 0, 1536, -256, 147, 131, 97, 255 }, // 0x00001CB0
	 { 300, 1733, -710, 0, -1536, -256, 69, 62, 48, 255 }, // 0x00001CC0
	 { 180, 1733, -890, 0, 0, 2048, 134, 119, 89, 255 }, // 0x00001CD0
	 { 240, 1733, -950, 0, -768, 2816, 147, 131, 97, 255 }, // 0x00001CE0
	 { 300, 1733, -950, 0, -1536, 2816, 69, 62, 48, 255 }, // 0x00001CF0
};

Vtx_t _jyasinzou_room_25_vertices_00001D00[4] = 
{
	 { -180, 1613, -950, 0, 1024, 2048, 52, 49, 38, 255 }, // 0x00001D00
	 { -120, 1673, -950, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00001D10
	 { -120, 1613, -950, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00001D20
	 { -180, 1673, -950, 0, 1024, 1024, 81, 72, 55, 255 }, // 0x00001D30
};

Vtx_t _jyasinzou_room_25_vertices_00001D40[4] = 
{
	 { -180, 1673, -950, 0, 1024, 1024, 81, 72, 55, 255 }, // 0x00001D40
	 { -180, 1733, -950, 0, 1024, 0, 81, 72, 55, 255 }, // 0x00001D50
	 { -120, 1673, -950, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00001D60
	 { -120, 1733, -950, 0, 0, 0, 115, 102, 78, 255 }, // 0x00001D70
};

Vtx_t _jyasinzou_room_25_vertices_00001D80[8] = 
{
	 { -180, 1613, -950, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D80
	 { 300, 1613, -950, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D90
	 { -180, 1733, -950, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DA0
	 { 300, 1733, -950, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DB0
	 { -180, 1613, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DC0
	 { 300, 1613, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DD0
	 { -180, 1733, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DE0
	 { 300, 1733, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DF0
};

Gfx _jyasinzou_room_25_dlist_00001E00[] =
{
	gsDPPipeSync(), // 0x00001E00
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001E08
	gsSPVertex(_jyasinzou_room_25_vertices_00001D80, 8, 0), // 0x00001E10
	gsSPCullDisplayList(0, 7), // 0x00001E18
	gsDPPipeSync(), // 0x00001E20
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001E28
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001E30
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001E38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00001E40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001E48
	gsDPLoadSync(), // 0x00001E50
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001E58
	gsDPPipeSync(), // 0x00001E60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001E68
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001E70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001E78
	gsDPTileSync(), // 0x00001E80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001E88
	gsDPLoadSync(), // 0x00001E90
	gsDPLoadTLUTCmd(7, 15), // 0x00001E98
	gsDPPipeSync(), // 0x00001EA0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001EA8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001EB0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001EB8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001EC0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001EC8
	gsSPVertex(_jyasinzou_room_25_vertices_00001AC0, 3, 0), // 0x00001ED0
	gsSP1Triangle(0, 1, 2, 0), // 0x00001ED8
	gsDPPipeSync(), // 0x00001EE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x00001EE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001EF0
	gsDPLoadSync(), // 0x00001EF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001F00
	gsDPPipeSync(), // 0x00001F08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001F10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001F18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001F20
	gsDPTileSync(), // 0x00001F28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001F30
	gsDPLoadSync(), // 0x00001F38
	gsDPLoadTLUTCmd(7, 255), // 0x00001F40
	gsDPPipeSync(), // 0x00001F48
	gsSPVertex(_jyasinzou_room_25_vertices_00001AF0, 4, 0), // 0x00001F50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001F58
	gsDPPipeSync(), // 0x00001F60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00015398), // 0x00001F68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001F70
	gsDPLoadSync(), // 0x00001F78
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001F80
	gsDPPipeSync(), // 0x00001F88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001F90
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001F98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001FA0
	gsDPTileSync(), // 0x00001FA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001FB0
	gsDPLoadSync(), // 0x00001FB8
	gsDPLoadTLUTCmd(7, 15), // 0x00001FC0
	gsDPPipeSync(), // 0x00001FC8
	gsSPVertex(_jyasinzou_room_25_vertices_00001B30, 4, 0), // 0x00001FD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001FD8
	gsDPPipeSync(), // 0x00001FE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00011F98), // 0x00001FE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001FF0
	gsDPLoadSync(), // 0x00001FF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002000
	gsDPPipeSync(), // 0x00002008
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002010
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002018
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00002020
	gsDPTileSync(), // 0x00002028
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002030
	gsDPLoadSync(), // 0x00002038
	gsDPLoadTLUTCmd(7, 255), // 0x00002040
	gsDPPipeSync(), // 0x00002048
	gsSPVertex(_jyasinzou_room_25_vertices_00001B70, 4, 0), // 0x00002050
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002058
	gsDPPipeSync(), // 0x00002060
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x00002068
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002070
	gsDPLoadSync(), // 0x00002078
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002080
	gsDPPipeSync(), // 0x00002088
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002090
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002098
	gsSPVertex(_jyasinzou_room_25_vertices_00001BB0, 4, 0), // 0x000020A0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000020A8
	gsDPPipeSync(), // 0x000020B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00015398), // 0x000020B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000020C0
	gsDPLoadSync(), // 0x000020C8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000020D0
	gsDPPipeSync(), // 0x000020D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000020E0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000020E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000020F0
	gsDPTileSync(), // 0x000020F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002100
	gsDPLoadSync(), // 0x00002108
	gsDPLoadTLUTCmd(7, 15), // 0x00002110
	gsDPPipeSync(), // 0x00002118
	gsSPVertex(_jyasinzou_room_25_vertices_00001BF0, 4, 0), // 0x00002120
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002128
	gsDPPipeSync(), // 0x00002130
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00011F98), // 0x00002138
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002140
	gsDPLoadSync(), // 0x00002148
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002150
	gsDPPipeSync(), // 0x00002158
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002160
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002168
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00002170
	gsDPTileSync(), // 0x00002178
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002180
	gsDPLoadSync(), // 0x00002188
	gsDPLoadTLUTCmd(7, 255), // 0x00002190
	gsDPPipeSync(), // 0x00002198
	gsSPVertex(_jyasinzou_room_25_vertices_00001C30, 4, 0), // 0x000021A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000021A8
	gsDPPipeSync(), // 0x000021B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x000021B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000021C0
	gsDPLoadSync(), // 0x000021C8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000021D0
	gsDPPipeSync(), // 0x000021D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000021E0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000021E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000021F0
	gsDPTileSync(), // 0x000021F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002200
	gsDPLoadSync(), // 0x00002208
	gsDPLoadTLUTCmd(7, 15), // 0x00002210
	gsDPPipeSync(), // 0x00002218
	gsSPVertex(_jyasinzou_room_25_vertices_00001C70, 9, 0), // 0x00002220
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002228
	gsSP2Triangles(1, 4, 2, 0, 4, 5, 6, 0), // 0x00002230
	gsSP2Triangles(5, 7, 6, 0, 5, 8, 7, 0), // 0x00002238
	gsDPPipeSync(), // 0x00002240
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00015398), // 0x00002248
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00002250
	gsDPLoadSync(), // 0x00002258
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002260
	gsDPPipeSync(), // 0x00002268
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00002270
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00002278
	gsSPVertex(_jyasinzou_room_25_vertices_00001D00, 4, 0), // 0x00002280
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002288
	gsDPPipeSync(), // 0x00002290
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x00002298
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000022A0
	gsDPLoadSync(), // 0x000022A8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000022B0
	gsDPPipeSync(), // 0x000022B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000022C0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000022C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x000022D0
	gsDPTileSync(), // 0x000022D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000022E0
	gsDPLoadSync(), // 0x000022E8
	gsDPLoadTLUTCmd(7, 255), // 0x000022F0
	gsDPPipeSync(), // 0x000022F8
	gsSPVertex(_jyasinzou_room_25_vertices_00001D40, 4, 0), // 0x00002300
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002308
	gsSPEndDisplayList(), // 0x00002310
};

Vtx_t _jyasinzou_room_25_vertices_00002318[8] = 
{
	 { -163, 1733, -940, 0, 683, 6143, 177, 164, 138, 255 }, // 0x00002318
	 { -180, 1733, -950, 0, 1024, 6143, 115, 102, 78, 255 }, // 0x00002328
	 { -180, 1953, -950, 0, 1024, 0, 81, 72, 55, 255 }, // 0x00002338
	 { -163, 1953, -940, 0, 683, 0, 81, 72, 55, 255 }, // 0x00002348
	 { -163, 1733, -920, 0, 341, 6143, 177, 164, 138, 255 }, // 0x00002358
	 { -163, 1953, -920, 0, 341, 0, 81, 72, 55, 255 }, // 0x00002368
	 { -180, 1733, -910, 0, 0, 6143, 69, 62, 48, 255 }, // 0x00002378
	 { -180, 1953, -910, 0, 0, 0, 81, 72, 55, 255 }, // 0x00002388
};

Vtx_t _jyasinzou_room_25_vertices_00002398[8] = 
{
	 { -180, 1733, -950, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002398
	 { -163, 1733, -950, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023A8
	 { -180, 1953, -950, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023B8
	 { -163, 1953, -950, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023C8
	 { -180, 1733, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023D8
	 { -163, 1733, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023E8
	 { -180, 1953, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023F8
	 { -163, 1953, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002408
};

Gfx _jyasinzou_room_25_dlist_00002418[] =
{
	gsDPPipeSync(), // 0x00002418
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002420
	gsSPVertex(_jyasinzou_room_25_vertices_00002398, 8, 0), // 0x00002428
	gsSPCullDisplayList(0, 7), // 0x00002430
	gsDPPipeSync(), // 0x00002438
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002440
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002448
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002450
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00011798), // 0x00002458
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 1, 4, 0), // 0x00002460
	gsDPLoadSync(), // 0x00002468
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00002470
	gsDPPipeSync(), // 0x00002478
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 7, 0, 1, 4, 0), // 0x00002480
	gsDPSetTileSize(0, 0, 0, 60, 508), // 0x00002488
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00002490
	gsDPTileSync(), // 0x00002498
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000024A0
	gsDPLoadSync(), // 0x000024A8
	gsDPLoadTLUTCmd(7, 255), // 0x000024B0
	gsDPPipeSync(), // 0x000024B8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000024C0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000024C8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000024D0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000024D8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000024E0
	gsSPVertex(_jyasinzou_room_25_vertices_00002318, 8, 0), // 0x000024E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000024F0
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x000024F8
	gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0), // 0x00002500
	gsSPEndDisplayList(), // 0x00002508
};

Vtx_t _jyasinzou_room_25_vertices_00002510[8] = 
{
	 { -163, 1733, -740, 0, 683, 6143, 177, 164, 138, 255 }, // 0x00002510
	 { -180, 1733, -750, 0, 1024, 6143, 115, 102, 78, 255 }, // 0x00002520
	 { -180, 1953, -750, 0, 1024, 0, 81, 72, 55, 255 }, // 0x00002530
	 { -163, 1953, -740, 0, 683, 0, 81, 72, 55, 255 }, // 0x00002540
	 { -163, 1733, -720, 0, 341, 6143, 81, 72, 55, 255 }, // 0x00002550
	 { -163, 1953, -720, 0, 341, 0, 81, 72, 55, 255 }, // 0x00002560
	 { -180, 1733, -710, 0, 0, 6143, 69, 62, 48, 255 }, // 0x00002570
	 { -180, 1953, -710, 0, 0, 0, 81, 72, 55, 255 }, // 0x00002580
};

Vtx_t _jyasinzou_room_25_vertices_00002590[8] = 
{
	 { -180, 1733, -750, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002590
	 { -163, 1733, -750, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025A0
	 { -180, 1953, -750, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025B0
	 { -163, 1953, -750, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025C0
	 { -180, 1733, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025D0
	 { -163, 1733, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025E0
	 { -180, 1953, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025F0
	 { -163, 1953, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002600
};

Gfx _jyasinzou_room_25_dlist_00002610[] =
{
	gsDPPipeSync(), // 0x00002610
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002618
	gsSPVertex(_jyasinzou_room_25_vertices_00002590, 8, 0), // 0x00002620
	gsSPCullDisplayList(0, 7), // 0x00002628
	gsDPPipeSync(), // 0x00002630
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002638
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002640
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002648
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00011798), // 0x00002650
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 1, 4, 0), // 0x00002658
	gsDPLoadSync(), // 0x00002660
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00002668
	gsDPPipeSync(), // 0x00002670
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 7, 0, 1, 4, 0), // 0x00002678
	gsDPSetTileSize(0, 0, 0, 60, 508), // 0x00002680
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00002688
	gsDPTileSync(), // 0x00002690
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002698
	gsDPLoadSync(), // 0x000026A0
	gsDPLoadTLUTCmd(7, 255), // 0x000026A8
	gsDPPipeSync(), // 0x000026B0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000026B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000026C0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000026C8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000026D0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000026D8
	gsSPVertex(_jyasinzou_room_25_vertices_00002510, 8, 0), // 0x000026E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000026E8
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x000026F0
	gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0), // 0x000026F8
	gsSPEndDisplayList(), // 0x00002700
};

Vtx_t _jyasinzou_room_25_vertices_00002708[8] = 
{
	 { 283, 1953, -940, 0, 683, 0, 81, 72, 55, 255 }, // 0x00002708
	 { 300, 1953, -950, 0, 1024, 0, 81, 72, 55, 255 }, // 0x00002718
	 { 300, 1733, -950, 0, 1024, 6143, 115, 102, 78, 255 }, // 0x00002728
	 { 283, 1733, -940, 0, 683, 6143, 177, 164, 138, 255 }, // 0x00002738
	 { 283, 1953, -920, 0, 341, 0, 81, 72, 55, 255 }, // 0x00002748
	 { 283, 1733, -920, 0, 341, 6143, 177, 164, 138, 255 }, // 0x00002758
	 { 300, 1953, -910, 0, 0, 0, 81, 72, 55, 255 }, // 0x00002768
	 { 300, 1733, -910, 0, 0, 6143, 69, 62, 48, 255 }, // 0x00002778
};

Vtx_t _jyasinzou_room_25_vertices_00002788[8] = 
{
	 { 283, 1733, -950, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002788
	 { 300, 1733, -950, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002798
	 { 283, 1953, -950, 0, 0, 0, 0, 0, 0, 0 }, // 0x000027A8
	 { 300, 1953, -950, 0, 0, 0, 0, 0, 0, 0 }, // 0x000027B8
	 { 283, 1733, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000027C8
	 { 300, 1733, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000027D8
	 { 283, 1953, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000027E8
	 { 300, 1953, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000027F8
};

Gfx _jyasinzou_room_25_dlist_00002808[] =
{
	gsDPPipeSync(), // 0x00002808
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002810
	gsSPVertex(_jyasinzou_room_25_vertices_00002788, 8, 0), // 0x00002818
	gsSPCullDisplayList(0, 7), // 0x00002820
	gsDPPipeSync(), // 0x00002828
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002830
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002838
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002840
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00011798), // 0x00002848
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 1, 4, 0), // 0x00002850
	gsDPLoadSync(), // 0x00002858
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00002860
	gsDPPipeSync(), // 0x00002868
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 7, 0, 1, 4, 0), // 0x00002870
	gsDPSetTileSize(0, 0, 0, 60, 508), // 0x00002878
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00002880
	gsDPTileSync(), // 0x00002888
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002890
	gsDPLoadSync(), // 0x00002898
	gsDPLoadTLUTCmd(7, 255), // 0x000028A0
	gsDPPipeSync(), // 0x000028A8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000028B0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000028B8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000028C0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000028C8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000028D0
	gsSPVertex(_jyasinzou_room_25_vertices_00002708, 8, 0), // 0x000028D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000028E0
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x000028E8
	gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0), // 0x000028F0
	gsSPEndDisplayList(), // 0x000028F8
};

Vtx_t _jyasinzou_room_25_vertices_00002900[8] = 
{
	 { 283, 1953, -740, 0, 683, 0, 81, 72, 55, 255 }, // 0x00002900
	 { 300, 1953, -750, 0, 1024, 0, 81, 72, 55, 255 }, // 0x00002910
	 { 300, 1733, -750, 0, 1024, 6143, 115, 102, 78, 255 }, // 0x00002920
	 { 283, 1733, -740, 0, 683, 6143, 177, 164, 138, 255 }, // 0x00002930
	 { 283, 1953, -720, 0, 341, 0, 81, 72, 55, 255 }, // 0x00002940
	 { 283, 1733, -720, 0, 341, 6143, 81, 72, 55, 255 }, // 0x00002950
	 { 300, 1953, -710, 0, 0, 0, 81, 72, 55, 255 }, // 0x00002960
	 { 300, 1733, -710, 0, 0, 6143, 69, 62, 48, 255 }, // 0x00002970
};

Vtx_t _jyasinzou_room_25_vertices_00002980[8] = 
{
	 { 283, 1733, -750, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002980
	 { 300, 1733, -750, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002990
	 { 283, 1953, -750, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029A0
	 { 300, 1953, -750, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029B0
	 { 283, 1733, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029C0
	 { 300, 1733, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029D0
	 { 283, 1953, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029E0
	 { 300, 1953, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029F0
};

Gfx _jyasinzou_room_25_dlist_00002A00[] =
{
	gsDPPipeSync(), // 0x00002A00
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002A08
	gsSPVertex(_jyasinzou_room_25_vertices_00002980, 8, 0), // 0x00002A10
	gsSPCullDisplayList(0, 7), // 0x00002A18
	gsDPPipeSync(), // 0x00002A20
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002A28
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002A30
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002A38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00011798), // 0x00002A40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 1, 4, 0), // 0x00002A48
	gsDPLoadSync(), // 0x00002A50
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00002A58
	gsDPPipeSync(), // 0x00002A60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 7, 0, 1, 4, 0), // 0x00002A68
	gsDPSetTileSize(0, 0, 0, 60, 508), // 0x00002A70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00002A78
	gsDPTileSync(), // 0x00002A80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002A88
	gsDPLoadSync(), // 0x00002A90
	gsDPLoadTLUTCmd(7, 255), // 0x00002A98
	gsDPPipeSync(), // 0x00002AA0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002AA8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002AB0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002AB8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002AC0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002AC8
	gsSPVertex(_jyasinzou_room_25_vertices_00002900, 8, 0), // 0x00002AD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002AD8
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00002AE0
	gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0), // 0x00002AE8
	gsSPEndDisplayList(), // 0x00002AF0
};

Vtx_t _jyasinzou_room_25_vertices_00002AF8[16] = 
{
	 { -40, 1909, -990, 0, 0, 0, 223, 217, 208, 255 }, // 0x00002AF8
	 { -40, 1869, -1030, 0, 0, 1024, 198, 188, 168, 255 }, // 0x00002B08
	 { 0, 1869, -1030, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00002B18
	 { 0, 1909, -990, 0, 512, 0, 198, 188, 168, 255 }, // 0x00002B28
	 { 120, 1909, -990, 0, 0, 0, 223, 217, 208, 255 }, // 0x00002B38
	 { 120, 1869, -1030, 0, 0, 1024, 198, 188, 168, 255 }, // 0x00002B48
	 { 160, 1869, -1030, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00002B58
	 { 160, 1909, -990, 0, 512, 0, 198, 188, 168, 255 }, // 0x00002B68
	 { -40, 1749, -1150, 0, 0, 0, 223, 217, 208, 255 }, // 0x00002B78
	 { -40, 1709, -1190, 0, 0, 1024, 198, 188, 168, 255 }, // 0x00002B88
	 { 0, 1709, -1190, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00002B98
	 { 0, 1749, -1150, 0, 512, 0, 198, 188, 168, 255 }, // 0x00002BA8
	 { 120, 1709, -1190, 0, 0, 1024, 198, 188, 168, 255 }, // 0x00002BB8
	 { 160, 1709, -1190, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00002BC8
	 { 160, 1749, -1150, 0, 512, 0, 198, 188, 168, 255 }, // 0x00002BD8
	 { 120, 1749, -1150, 0, 0, 0, 223, 217, 208, 255 }, // 0x00002BE8
};

Vtx_t _jyasinzou_room_25_vertices_00002BF8[8] = 
{
	 { -40, 1709, -1190, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BF8
	 { 160, 1709, -1190, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002C08
	 { -40, 1728, -1206, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002C18
	 { 160, 1728, -1206, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002C28
	 { -40, 1890, -974, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002C38
	 { 160, 1890, -974, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002C48
	 { -40, 1909, -990, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002C58
	 { 160, 1909, -990, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002C68
};

Gfx _jyasinzou_room_25_dlist_00002C78[] =
{
	gsDPPipeSync(), // 0x00002C78
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002C80
	gsSPVertex(_jyasinzou_room_25_vertices_00002BF8, 8, 0), // 0x00002C88
	gsSPCullDisplayList(0, 7), // 0x00002C90
	gsDPPipeSync(), // 0x00002C98
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002CA0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002CA8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002CB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000BA98), // 0x00002CB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 4, 0), // 0x00002CC0
	gsDPLoadSync(), // 0x00002CC8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002CD0
	gsDPPipeSync(), // 0x00002CD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 2, 4, 0), // 0x00002CE0
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00002CE8
	gsDPSetCombineLERP(TEXEL0, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00002CF0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00002CF8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002D00
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002D08
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002D10
	gsSPVertex(_jyasinzou_room_25_vertices_00002AF8, 16, 0), // 0x00002D18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002D20
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002D28
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002D30
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002D38
	gsSPEndDisplayList(), // 0x00002D40
};

Vtx_t _jyasinzou_room_25_vertices_00002D48[6] = 
{
	 { 60, 1743, -599, 0, 259, -1046, 100, 89, 67, 255 }, // 0x00002D48
	 { 60, 1733, -626, 0, 303, -1400, 115, 102, 78, 255 }, // 0x00002D58
	 { 0, 1733, -620, 0, 757, -1343, 100, 89, 67, 255 }, // 0x00002D68
	 { -4, 1743, -599, 0, 713, -989, 100, 89, 67, 255 }, // 0x00002D78
	 { 124, 1743, -599, 0, -196, -1103, 100, 89, 67, 255 }, // 0x00002D88
	 { 120, 1733, -625, 0, -151, -1456, 100, 89, 67, 255 }, // 0x00002D98
};

Vtx_t _jyasinzou_room_25_vertices_00002DA8[5] = 
{
	 { 120, 1733, -625, 0, 768, -1347, 100, 89, 67, 255 }, // 0x00002DA8
	 { 120, 1733, -710, 0, 768, -256, 100, 89, 67, 255 }, // 0x00002DB8
	 { 60, 1733, -710, 0, 1536, -256, 147, 131, 97, 255 }, // 0x00002DC8
	 { 0, 1733, -620, 0, 2304, -1403, 100, 89, 67, 255 }, // 0x00002DD8
	 { 0, 1733, -710, 0, 2304, -256, 100, 89, 67, 255 }, // 0x00002DE8
};

Vtx_t _jyasinzou_room_25_vertices_00002DF8[6] = 
{
	 { 60, 1743, -599, 0, 3474, 4065, 100, 89, 67, 255 }, // 0x00002DF8
	 { 60, 1733, -626, 0, 3656, 3974, 115, 102, 78, 255 }, // 0x00002E08
	 { 0, 1733, -620, 0, 3416, 3583, 100, 89, 67, 255 }, // 0x00002E18
	 { -4, 1743, -599, 0, 3256, 3629, 100, 89, 67, 255 }, // 0x00002E28
	 { 124, 1743, -599, 0, 3693, 4502, 100, 89, 67, 255 }, // 0x00002E38
	 { 120, 1733, -625, 0, 3856, 4387, 100, 89, 67, 255 }, // 0x00002E48
};

Vtx_t _jyasinzou_room_25_vertices_00002E58[8] = 
{
	 { -4, 1733, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002E58
	 { 124, 1733, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002E68
	 { -4, 1743, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002E78
	 { 124, 1743, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002E88
	 { -4, 1733, -599, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002E98
	 { 124, 1733, -599, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002EA8
	 { -4, 1743, -599, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002EB8
	 { 124, 1743, -599, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002EC8
};

Gfx _jyasinzou_room_25_dlist_00002ED8[] =
{
	gsDPPipeSync(), // 0x00002ED8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002EE0
	gsSPVertex(_jyasinzou_room_25_vertices_00002E58, 8, 0), // 0x00002EE8
	gsSPCullDisplayList(0, 7), // 0x00002EF0
	gsDPPipeSync(), // 0x00002EF8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002F00
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002F08
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002F10
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014398), // 0x00002F18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002F20
	gsDPLoadSync(), // 0x00002F28
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002F30
	gsDPPipeSync(), // 0x00002F38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002F40
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002F48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00002F50
	gsDPTileSync(), // 0x00002F58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002F60
	gsDPLoadSync(), // 0x00002F68
	gsDPLoadTLUTCmd(7, 255), // 0x00002F70
	gsDPPipeSync(), // 0x00002F78
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002F80
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002F88
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002F90
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002F98
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002FA0
	gsSPVertex(_jyasinzou_room_25_vertices_00002D48, 6, 0), // 0x00002FA8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002FB0
	gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0), // 0x00002FB8
	gsDPPipeSync(), // 0x00002FC0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00002FC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00002FD0
	gsDPLoadSync(), // 0x00002FD8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002FE0
	gsDPPipeSync(), // 0x00002FE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00002FF0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00002FF8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00003000
	gsDPTileSync(), // 0x00003008
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003010
	gsDPLoadSync(), // 0x00003018
	gsDPLoadTLUTCmd(7, 15), // 0x00003020
	gsDPPipeSync(), // 0x00003028
	gsSPVertex(_jyasinzou_room_25_vertices_00002DA8, 5, 0), // 0x00003030
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00003038
	gsSP1Triangle(4, 3, 2, 0), // 0x00003040
	gsDPPipeSync(), // 0x00003048
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014398), // 0x00003050
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003058
	gsDPLoadSync(), // 0x00003060
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003068
	gsDPPipeSync(), // 0x00003070
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003078
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003080
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00003088
	gsDPTileSync(), // 0x00003090
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003098
	gsDPLoadSync(), // 0x000030A0
	gsDPLoadTLUTCmd(7, 255), // 0x000030A8
	gsDPPipeSync(), // 0x000030B0
	gsSPVertex(_jyasinzou_room_25_vertices_00002DF8, 6, 0), // 0x000030B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000030C0
	gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0), // 0x000030C8
	gsSPEndDisplayList(), // 0x000030D0
};

Vtx_t _jyasinzou_room_25_vertices_000030D8[20] = 
{
	 { -120, 1928, -390, 0, 14009, -723, 100, 89, 67, 255 }, // 0x000030D8
	 { -140, 1863, -350, 0, 14778, 0, 52, 49, 38, 255 }, // 0x000030E8
	 { -140, 1823, -370, 0, 14551, 481, 52, 49, 38, 255 }, // 0x000030F8
	 { -140, 1883, -310, 0, 15360, -241, 52, 49, 38, 255 }, // 0x00003108
	 { -120, 1928, -230, 0, 1351, -723, 100, 89, 67, 255 }, // 0x00003118
	 { -120, 1938, -310, 0, 0, -843, 100, 89, 67, 255 }, // 0x00003128
	 { -120, 1993, -190, 0, 1983, -1506, 18, 12, 5, 255 }, // 0x00003138
	 { -120, 1938, -310, 0, 15360, -843, 100, 89, 67, 255 }, // 0x00003148
	 { -120, 1993, -430, 0, 13377, -1506, 25, 20, 15, 255 }, // 0x00003158
	 { -120, 1993, -190, 0, 17343, -1506, 18, 12, 5, 255 }, // 0x00003168
	 { -140, 1883, -310, 0, 0, -241, 52, 49, 38, 255 }, // 0x00003178
	 { -140, 1863, -270, 0, 582, 0, 52, 49, 38, 255 }, // 0x00003188
	 { -140, 1823, -250, 0, 809, 481, 52, 49, 38, 255 }, // 0x00003198
	 { -120, 1743, -220, 0, 1163, 1506, 35, 31, 25, 255 }, // 0x000031A8
	 { -140, 1743, -250, 0, 733, 1446, 52, 49, 38, 255 }, // 0x000031B8
	 { -120, 1868, -430, 0, 13664, 0, 100, 89, 67, 255 }, // 0x000031C8
	 { -120, 1743, -400, 0, 14197, 1506, 35, 31, 25, 255 }, // 0x000031D8
	 { -120, 1743, -430, 0, 13888, 1506, 35, 31, 25, 255 }, // 0x000031E8
	 { -120, 1868, -190, 0, 1696, 0, 100, 89, 67, 255 }, // 0x000031F8
	 { -120, 1743, -190, 0, 1472, 1506, 35, 31, 25, 255 }, // 0x00003208
};

Vtx_t _jyasinzou_room_25_vertices_00003218[8] = 
{
	 { -140, 1743, -430, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003218
	 { -120, 1743, -430, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003228
	 { -140, 1993, -430, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003238
	 { -120, 1993, -430, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003248
	 { -140, 1743, -190, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003258
	 { -120, 1743, -190, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003268
	 { -140, 1993, -190, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003278
	 { -120, 1993, -190, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003288
};

Gfx _jyasinzou_room_25_dlist_00003298[] =
{
	gsDPPipeSync(), // 0x00003298
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000032A0
	gsSPVertex(_jyasinzou_room_25_vertices_00003218, 8, 0), // 0x000032A8
	gsSPCullDisplayList(0, 7), // 0x000032B0
	gsDPPipeSync(), // 0x000032B8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000032C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000032C8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000032D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DE98), // 0x000032D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000032E0
	gsDPLoadSync(), // 0x000032E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000032F0
	gsDPPipeSync(), // 0x000032F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003300
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003308
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00003310
	gsDPTileSync(), // 0x00003318
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003320
	gsDPLoadSync(), // 0x00003328
	gsDPLoadTLUTCmd(7, 255), // 0x00003330
	gsDPPipeSync(), // 0x00003338
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003340
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003348
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003350
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003358
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003360
	gsSPVertex(_jyasinzou_room_25_vertices_000030D8, 20, 0), // 0x00003368
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0), // 0x00003370
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00003378
	gsSP2Triangles(7, 0, 8, 0, 7, 3, 0, 0), // 0x00003380
	gsSP2Triangles(5, 4, 10, 0, 4, 11, 10, 0), // 0x00003388
	gsSP2Triangles(12, 11, 4, 0, 12, 13, 14, 0), // 0x00003390
	gsSP2Triangles(8, 0, 15, 0, 0, 16, 15, 0), // 0x00003398
	gsSP2Triangles(16, 17, 15, 0, 4, 13, 12, 0), // 0x000033A0
	gsSP2Triangles(4, 18, 19, 0, 4, 19, 13, 0), // 0x000033A8
	gsSP1Triangle(4, 6, 18, 0), // 0x000033B0
	gsSPEndDisplayList(), // 0x000033B8
};

Vtx_t _jyasinzou_room_25_vertices_000033C0[9] = 
{
	 { 60, 1993, -310, 0, 242, 1145, 35, 31, 25, 255 }, // 0x000033C0
	 { 240, 1993, -430, 0, -1376, -729, 18, 12, 5, 255 }, // 0x000033D0
	 { 240, 1993, -190, 0, 1350, -1070, 18, 12, 5, 255 }, // 0x000033E0
	 { -120, 1993, -430, 0, -865, 3360, 25, 20, 15, 255 }, // 0x000033F0
	 { -60, 1993, -490, 0, -1632, 2764, 25, 20, 15, 255 }, // 0x00003400
	 { 180, 1993, -490, 0, -1973, 38, 18, 12, 5, 255 }, // 0x00003410
	 { 180, 1993, -130, 0, 2117, -474, 18, 12, 5, 255 }, // 0x00003420
	 { -60, 1993, -130, 0, 2458, 2253, 18, 12, 5, 255 }, // 0x00003430
	 { -120, 1993, -190, 0, 1861, 3020, 18, 12, 5, 255 }, // 0x00003440
};

Vtx_t _jyasinzou_room_25_vertices_00003450[8] = 
{
	 { -120, 1993, -490, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003450
	 { 240, 1993, -490, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003460
	 { -120, 1993, -490, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003470
	 { 240, 1993, -490, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003480
	 { -120, 1993, -130, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003490
	 { 240, 1993, -130, 0, 0, 0, 0, 0, 0, 0 }, // 0x000034A0
	 { -120, 1993, -130, 0, 0, 0, 0, 0, 0, 0 }, // 0x000034B0
	 { 240, 1993, -130, 0, 0, 0, 0, 0, 0, 0 }, // 0x000034C0
};

Gfx _jyasinzou_room_25_dlist_000034D0[] =
{
	gsDPPipeSync(), // 0x000034D0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000034D8
	gsSPVertex(_jyasinzou_room_25_vertices_00003450, 8, 0), // 0x000034E0
	gsSPCullDisplayList(0, 7), // 0x000034E8
	gsDPPipeSync(), // 0x000034F0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000034F8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003500
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003508
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DE98), // 0x00003510
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003518
	gsDPLoadSync(), // 0x00003520
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003528
	gsDPPipeSync(), // 0x00003530
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003538
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003540
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00003548
	gsDPTileSync(), // 0x00003550
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003558
	gsDPLoadSync(), // 0x00003560
	gsDPLoadTLUTCmd(7, 255), // 0x00003568
	gsDPPipeSync(), // 0x00003570
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003578
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003580
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003588
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003590
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003598
	gsSPVertex(_jyasinzou_room_25_vertices_000033C0, 9, 0), // 0x000035A0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0), // 0x000035A8
	gsSP2Triangles(0, 5, 1, 0, 0, 4, 5, 0), // 0x000035B0
	gsSP2Triangles(0, 2, 6, 0, 0, 6, 7, 0), // 0x000035B8
	gsSP2Triangles(8, 3, 0, 0, 8, 0, 7, 0), // 0x000035C0
	gsSPEndDisplayList(), // 0x000035C8
};

Vtx_t _jyasinzou_room_25_vertices_000035D0[21] = 
{
	 { 60, 1733, -626, 0, 303, -1400, 115, 102, 78, 255 }, // 0x000035D0
	 { 60, 1743, -599, 0, 259, -1046, 100, 89, 67, 255 }, // 0x000035E0
	 { 124, 1743, -599, 0, -196, -1103, 100, 89, 67, 255 }, // 0x000035F0
	 { 120, 1733, -625, 0, -151, -1456, 100, 89, 67, 255 }, // 0x00003600
	 { 0, 1733, -620, 0, 757, -1343, 100, 89, 67, 255 }, // 0x00003610
	 { -4, 1743, -599, 0, 713, -989, 100, 89, 67, 255 }, // 0x00003620
	 { -120, 1743, -430, 0, 1707, 3413, 35, 31, 25, 255 }, // 0x00003630
	 { 60, 1743, -310, 0, 1502, 5052, 115, 102, 78, 255 }, // 0x00003640
	 { -60, 1743, -490, 0, 2321, 3618, 35, 31, 25, 255 }, // 0x00003650
	 { -140, 1743, -370, 0, 1229, 3482, 69, 62, 48, 255 }, // 0x00003660
	 { -140, 1743, -310, 0, 819, 3686, 100, 89, 67, 255 }, // 0x00003670
	 { -140, 1743, -250, 0, 410, 3891, 69, 62, 48, 255 }, // 0x00003680
	 { -120, 1743, -190, 0, 68, 4233, 35, 31, 25, 255 }, // 0x00003690
	 { -60, 1743, -130, 0, -137, 4847, 35, 31, 25, 255 }, // 0x000036A0
	 { 180, 1743, -130, 0, 683, 6485, 35, 31, 25, 255 }, // 0x000036B0
	 { 0, 1743, -510, 0, 2662, 3959, 81, 72, 55, 255 }, // 0x000036C0
	 { 60, 1743, -510, 0, 2867, 4369, 100, 89, 67, 255 }, // 0x000036D0
	 { 120, 1743, -510, 0, 3072, 4779, 81, 72, 55, 255 }, // 0x000036E0
	 { 180, 1743, -490, 0, 3140, 5257, 52, 49, 38, 255 }, // 0x000036F0
	 { 240, 1743, -430, 0, 2935, 5871, 35, 31, 25, 255 }, // 0x00003700
	 { 240, 1743, -190, 0, 1297, 6690, 35, 31, 25, 255 }, // 0x00003710
};

Vtx_t _jyasinzou_room_25_vertices_00003720[15] = 
{
	 { -120, 1868, -190, 0, 1696, 0, 100, 89, 67, 255 }, // 0x00003720
	 { -60, 1863, -130, 0, 2736, 241, 69, 62, 48, 255 }, // 0x00003730
	 { -60, 1743, -130, 0, 2437, 1687, 35, 31, 25, 255 }, // 0x00003740
	 { -120, 1743, -190, 0, 1472, 1506, 35, 31, 25, 255 }, // 0x00003750
	 { -120, 1993, -190, 0, 1983, -1506, 18, 12, 5, 255 }, // 0x00003760
	 { -60, 1993, -130, 0, 3105, -1325, 18, 12, 5, 255 }, // 0x00003770
	 { 180, 1863, -130, 0, 5502, 964, 69, 62, 48, 255 }, // 0x00003780
	 { 180, 1743, -130, 0, 5243, 2409, 35, 31, 25, 255 }, // 0x00003790
	 { 180, 1993, -130, 0, 5740, -602, 18, 12, 5, 255 }, // 0x000037A0
	 { 240, 1993, -190, 0, 6527, -422, 18, 12, 5, 255 }, // 0x000037B0
	 { 240, 1863, -190, 0, 6379, 1144, 52, 49, 38, 255 }, // 0x000037C0
	 { 240, 1743, -190, 0, 6208, 2590, 35, 31, 25, 255 }, // 0x000037D0
	 { 240, 1863, -430, 0, 8981, 1144, 35, 31, 25, 255 }, // 0x000037E0
	 { 240, 1743, -430, 0, 9152, 2590, 35, 31, 25, 255 }, // 0x000037F0
	 { 240, 1993, -430, 0, 8833, -422, 18, 12, 5, 255 }, // 0x00003800
};

Vtx_t _jyasinzou_room_25_vertices_00003810[6] = 
{
	 { 60, 1743, -599, 0, 3474, 4065, 100, 89, 67, 255 }, // 0x00003810
	 { -4, 1743, -599, 0, 3256, 3629, 100, 89, 67, 255 }, // 0x00003820
	 { 0, 1743, -510, 0, 2662, 3959, 81, 72, 55, 255 }, // 0x00003830
	 { 60, 1743, -510, 0, 2867, 4369, 100, 89, 67, 255 }, // 0x00003840
	 { 124, 1743, -599, 0, 3693, 4502, 100, 89, 67, 255 }, // 0x00003850
	 { 120, 1743, -510, 0, 3072, 4779, 81, 72, 55, 255 }, // 0x00003860
};

Vtx_t _jyasinzou_room_25_vertices_00003870[8] = 
{
	 { -140, 1733, -626, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003870
	 { 240, 1733, -626, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003880
	 { -140, 1993, -626, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003890
	 { 240, 1993, -626, 0, 0, 0, 0, 0, 0, 0 }, // 0x000038A0
	 { -140, 1733, -130, 0, 0, 0, 0, 0, 0, 0 }, // 0x000038B0
	 { 240, 1733, -130, 0, 0, 0, 0, 0, 0, 0 }, // 0x000038C0
	 { -140, 1993, -130, 0, 0, 0, 0, 0, 0, 0 }, // 0x000038D0
	 { 240, 1993, -130, 0, 0, 0, 0, 0, 0, 0 }, // 0x000038E0
};

Gfx _jyasinzou_room_25_dlist_000038F0[] =
{
	gsDPPipeSync(), // 0x000038F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000038F8
	gsSPVertex(_jyasinzou_room_25_vertices_00003870, 8, 0), // 0x00003900
	gsSPCullDisplayList(0, 7), // 0x00003908
	gsDPPipeSync(), // 0x00003910
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003918
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003920
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003928
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014398), // 0x00003930
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003938
	gsDPLoadSync(), // 0x00003940
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003948
	gsDPPipeSync(), // 0x00003950
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003958
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003960
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00003968
	gsDPTileSync(), // 0x00003970
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003978
	gsDPLoadSync(), // 0x00003980
	gsDPLoadTLUTCmd(7, 255), // 0x00003988
	gsDPPipeSync(), // 0x00003990
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003998
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000039A0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000039A8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000039B0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000039B8
	gsSPVertex(_jyasinzou_room_25_vertices_000035D0, 21, 0), // 0x000039C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000039C8
	gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0), // 0x000039D0
	gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0), // 0x000039D8
	gsSP2Triangles(9, 10, 7, 0, 10, 11, 7, 0), // 0x000039E0
	gsSP2Triangles(11, 12, 7, 0, 12, 13, 7, 0), // 0x000039E8
	gsSP2Triangles(13, 14, 7, 0, 7, 15, 8, 0), // 0x000039F0
	gsSP2Triangles(7, 16, 15, 0, 7, 17, 16, 0), // 0x000039F8
	gsSP2Triangles(7, 18, 17, 0, 7, 19, 18, 0), // 0x00003A00
	gsSP2Triangles(7, 20, 19, 0, 7, 14, 20, 0), // 0x00003A08
	gsDPPipeSync(), // 0x00003A10
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DE98), // 0x00003A18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003A20
	gsDPLoadSync(), // 0x00003A28
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003A30
	gsDPPipeSync(), // 0x00003A38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003A40
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003A48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00003A50
	gsDPTileSync(), // 0x00003A58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003A60
	gsDPLoadSync(), // 0x00003A68
	gsDPLoadTLUTCmd(7, 255), // 0x00003A70
	gsDPPipeSync(), // 0x00003A78
	gsSPVertex(_jyasinzou_room_25_vertices_00003720, 15, 0), // 0x00003A80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003A88
	gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0), // 0x00003A90
	gsSP2Triangles(1, 6, 7, 0, 1, 7, 2, 0), // 0x00003A98
	gsSP2Triangles(1, 5, 8, 0, 1, 8, 6, 0), // 0x00003AA0
	gsSP2Triangles(9, 10, 6, 0, 9, 6, 8, 0), // 0x00003AA8
	gsSP2Triangles(10, 11, 7, 0, 10, 7, 6, 0), // 0x00003AB0
	gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0), // 0x00003AB8
	gsSP2Triangles(10, 9, 14, 0, 10, 14, 12, 0), // 0x00003AC0
	gsDPPipeSync(), // 0x00003AC8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014398), // 0x00003AD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003AD8
	gsDPLoadSync(), // 0x00003AE0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003AE8
	gsDPPipeSync(), // 0x00003AF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003AF8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003B00
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00003B08
	gsDPTileSync(), // 0x00003B10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003B18
	gsDPLoadSync(), // 0x00003B20
	gsDPLoadTLUTCmd(7, 255), // 0x00003B28
	gsDPPipeSync(), // 0x00003B30
	gsSPVertex(_jyasinzou_room_25_vertices_00003810, 6, 0), // 0x00003B38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003B40
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00003B48
	gsSPEndDisplayList(), // 0x00003B50
};

Vtx_t _jyasinzou_room_25_vertices_00003B58[8] = 
{
	 { 560, 480, -990, 0, 0, 4096, 115, 102, 78, 255 }, // 0x00003B58
	 { 560, 733, -990, 0, 0, 0, 81, 72, 55, 255 }, // 0x00003B68
	 { 590, 733, -990, 0, 1024, 0, 81, 72, 55, 255 }, // 0x00003B78
	 { 590, 480, -990, 0, 1024, 4096, 115, 102, 78, 255 }, // 0x00003B88
	 { 560, 480, -960, 0, 0, 4096, 115, 102, 78, 255 }, // 0x00003B98
	 { 560, 733, -960, 0, 0, 0, 81, 72, 55, 255 }, // 0x00003BA8
	 { 560, 733, -990, 0, 1024, 0, 81, 72, 55, 255 }, // 0x00003BB8
	 { 560, 480, -990, 0, 1024, 4096, 115, 102, 78, 255 }, // 0x00003BC8
};

Vtx_t _jyasinzou_room_25_vertices_00003BD8[5] = 
{
	 { 320, 647, -790, 0, 205, 614, 134, 119, 89, 255 }, // 0x00003BD8
	 { 320, 647, -910, 0, 1126, 307, 147, 131, 97, 255 }, // 0x00003BE8
	 { 180, 647, -910, 0, 1434, 1229, 100, 89, 67, 255 }, // 0x00003BF8
	 { 180, 647, -670, 0, -410, 1843, 147, 131, 97, 255 }, // 0x00003C08
	 { 320, 647, -670, 0, -717, 922, 69, 62, 48, 255 }, // 0x00003C18
};

Vtx_t _jyasinzou_room_25_vertices_00003C28[4] = 
{
	 { 560, 813, -790, 0, 2048, -10264, 203, 195, 178, 255 }, // 0x00003C28
	 { 320, 647, -790, 0, 2048, -2739, 134, 119, 89, 255 }, // 0x00003C38
	 { 320, 647, -670, 0, 0, -2739, 69, 62, 48, 255 }, // 0x00003C48
	 { 560, 813, -670, 0, 0, -10264, 100, 89, 67, 255 }, // 0x00003C58
};

Vtx_t _jyasinzou_room_25_vertices_00003C68[3] = 
{
	 { 320, 647, -790, 0, 205, 614, 134, 119, 89, 255 }, // 0x00003C68
	 { 180, 647, -910, 0, 1434, 1229, 100, 89, 67, 255 }, // 0x00003C78
	 { 180, 647, -670, 0, -410, 1843, 147, 131, 97, 255 }, // 0x00003C88
};

Vtx_t _jyasinzou_room_25_vertices_00003C98[4] = 
{
	 { 320, 647, -790, 0, 2048, -10264, 134, 119, 89, 255 }, // 0x00003C98
	 { 560, 480, -790, 0, 2048, -2739, 52, 49, 38, 255 }, // 0x00003CA8
	 { 560, 480, -910, 0, 0, -2739, 52, 49, 38, 255 }, // 0x00003CB8
	 { 320, 647, -910, 0, 0, -10264, 147, 131, 97, 255 }, // 0x00003CC8
};

Vtx_t _jyasinzou_room_25_vertices_00003CD8[8] = 
{
	 { 560, 733, -990, 0, 1280, 1024, 69, 62, 48, 255 }, // 0x00003CD8
	 { 560, 733, -790, 0, 2048, 1024, 69, 62, 48, 255 }, // 0x00003CE8
	 { 560, 813, -790, 0, 2048, 0, 100, 89, 67, 255 }, // 0x00003CF8
	 { 560, 813, -990, 0, 1280, 0, 81, 72, 55, 255 }, // 0x00003D08
	 { 560, 733, -990, 0, 2048, 1024, 69, 62, 48, 255 }, // 0x00003D18
	 { 560, 813, -990, 0, 2048, 0, 100, 89, 67, 255 }, // 0x00003D28
	 { 760, 813, -990, 0, 512, 0, 81, 72, 55, 255 }, // 0x00003D38
	 { 760, 733, -990, 0, 512, 1024, 69, 62, 48, 255 }, // 0x00003D48
};

Vtx_t _jyasinzou_room_25_vertices_00003D58[4] = 
{
	 { 560, 333, -990, 0, 768, 1195, 69, 62, 48, 255 }, // 0x00003D58
	 { 560, 333, -910, 0, 1536, 1195, 69, 62, 48, 255 }, // 0x00003D68
	 { 560, 400, -910, 0, 1536, 0, 69, 62, 48, 255 }, // 0x00003D78
	 { 560, 400, -990, 0, 768, 0, 69, 62, 48, 255 }, // 0x00003D88
};

Vtx_t _jyasinzou_room_25_vertices_00003D98[4] = 
{
	 { 560, 400, -990, 0, 1280, 1024, 69, 62, 48, 255 }, // 0x00003D98
	 { 560, 400, -910, 0, 2048, 1024, 69, 62, 48, 255 }, // 0x00003DA8
	 { 560, 480, -910, 0, 2048, 0, 100, 89, 67, 255 }, // 0x00003DB8
	 { 560, 480, -990, 0, 1280, 0, 115, 102, 78, 255 }, // 0x00003DC8
};

Vtx_t _jyasinzou_room_25_vertices_00003DD8[6] = 
{
	 { 640, 813, -730, 0, 819, 1434, 158, 142, 111, 255 }, // 0x00003DD8
	 { 760, 813, -730, 0, -410, 819, 81, 72, 55, 255 }, // 0x00003DE8
	 { 760, 813, -990, 0, 922, -1843, 81, 72, 55, 255 }, // 0x00003DF8
	 { 560, 813, -990, 0, 2560, -1024, 158, 142, 111, 255 }, // 0x00003E08
	 { 560, 813, -670, 0, 922, 2253, 100, 89, 67, 255 }, // 0x00003E18
	 { 640, 813, -630, 0, 307, 2458, 115, 102, 78, 255 }, // 0x00003E28
};

Vtx_t _jyasinzou_room_25_vertices_00003E38[4] = 
{
	 { 780, 480, -790, 0, 2560, 2560, 81, 72, 55, 255 }, // 0x00003E38
	 { 760, 480, -790, 0, 2304, 2560, 81, 72, 55, 255 }, // 0x00003E48
	 { 760, 640, -790, 0, 2304, 512, 69, 62, 48, 255 }, // 0x00003E58
	 { 780, 640, -790, 0, 2560, 512, 69, 62, 48, 255 }, // 0x00003E68
};

Vtx_t _jyasinzou_room_25_vertices_00003E78[4] = 
{
	 { 560, 333, -990, 0, 2560, 853, 69, 62, 48, 255 }, // 0x00003E78
	 { 560, 400, -990, 0, 2560, 0, 69, 62, 48, 255 }, // 0x00003E88
	 { 760, 400, -990, 0, 0, 0, 52, 49, 38, 255 }, // 0x00003E98
	 { 760, 333, -990, 0, 0, 853, 52, 49, 38, 255 }, // 0x00003EA8
};

Vtx_t _jyasinzou_room_25_vertices_00003EB8[4] = 
{
	 { 560, 400, -990, 0, 2560, 1024, 69, 62, 48, 255 }, // 0x00003EB8
	 { 560, 480, -990, 0, 2560, 0, 115, 102, 78, 255 }, // 0x00003EC8
	 { 760, 480, -990, 0, 0, 0, 52, 49, 38, 255 }, // 0x00003ED8
	 { 760, 400, -990, 0, 0, 1024, 52, 49, 38, 255 }, // 0x00003EE8
};

Vtx_t _jyasinzou_room_25_vertices_00003EF8[4] = 
{
	 { 320, 567, -910, 0, 1024, -939, 115, 102, 78, 255 }, // 0x00003EF8
	 { 560, 400, -910, 0, -2048, 1195, 69, 62, 48, 255 }, // 0x00003F08
	 { 560, 333, -910, 0, -2048, 2048, 69, 62, 48, 255 }, // 0x00003F18
	 { 320, 333, -910, 0, 1024, 2048, 69, 62, 48, 255 }, // 0x00003F28
};

Vtx_t _jyasinzou_room_25_vertices_00003F38[4] = 
{
	 { 320, 647, -910, 0, 1024, 0, 115, 102, 78, 255 }, // 0x00003F38
	 { 560, 480, -910, 0, 4096, 0, 81, 72, 55, 255 }, // 0x00003F48
	 { 560, 400, -910, 0, 4096, 1024, 69, 62, 48, 255 }, // 0x00003F58
	 { 320, 567, -910, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00003F68
};

Vtx_t _jyasinzou_room_25_vertices_00003F78[4] = 
{
	 { 180, 333, -910, 0, 2816, 2048, 69, 62, 48, 255 }, // 0x00003F78
	 { 180, 567, -910, 0, 2816, -939, 134, 119, 89, 255 }, // 0x00003F88
	 { 320, 567, -910, 0, 1024, -939, 115, 102, 78, 255 }, // 0x00003F98
	 { 320, 333, -910, 0, 1024, 2048, 69, 62, 48, 255 }, // 0x00003FA8
};

Vtx_t _jyasinzou_room_25_vertices_00003FB8[8] = 
{
	 { 180, 567, -910, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00003FB8
	 { 180, 647, -910, 0, 0, 0, 81, 72, 55, 255 }, // 0x00003FC8
	 { 320, 647, -910, 0, 1536, 0, 115, 102, 78, 255 }, // 0x00003FD8
	 { 320, 567, -910, 0, 1536, 1024, 115, 102, 78, 255 }, // 0x00003FE8
	 { 180, 567, -670, 0, 3072, 1024, 69, 62, 48, 255 }, // 0x00003FF8
	 { 180, 647, -670, 0, 3072, 0, 115, 102, 78, 255 }, // 0x00004008
	 { 180, 647, -910, 0, 0, 0, 115, 102, 78, 255 }, // 0x00004018
	 { 180, 567, -910, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00004028
};

Vtx_t _jyasinzou_room_25_vertices_00004038[8] = 
{
	 { 180, 413, -670, 0, 3072, 1963, 35, 31, 25, 255 }, // 0x00004038
	 { 180, 567, -670, 0, 3072, 0, 69, 62, 48, 255 }, // 0x00004048
	 { 180, 567, -910, 0, 0, 0, 100, 89, 67, 255 }, // 0x00004058
	 { 180, 333, -910, 0, 0, 2987, 69, 62, 48, 255 }, // 0x00004068
	 { 560, 640, -790, 0, 2304, -512, 115, 102, 78, 255 }, // 0x00004078
	 { 760, 640, -790, 0, 256, -512, 69, 62, 48, 255 }, // 0x00004088
	 { 760, 480, -790, 0, 256, 2048, 81, 72, 55, 255 }, // 0x00004098
	 { 560, 480, -790, 0, 2304, 2048, 52, 49, 38, 255 }, // 0x000040A8
};

Vtx_t _jyasinzou_room_25_vertices_000040B8[4] = 
{
	 { 560, 480, -790, 0, 1024, 1024, 52, 49, 38, 255 }, // 0x000040B8
	 { 780, 480, -790, 0, 1707, 1024, 81, 72, 55, 255 }, // 0x000040C8
	 { 780, 480, -990, 0, 1707, 2048, 52, 49, 38, 255 }, // 0x000040D8
	 { 560, 480, -990, 0, 1024, 2048, 115, 102, 78, 255 }, // 0x000040E8
};

Vtx_t _jyasinzou_room_25_vertices_000040F8[8] = 
{
	 { 560, 640, -790, 0, 1536, 1195, 115, 102, 78, 255 }, // 0x000040F8
	 { 560, 733, -790, 0, 1536, 0, 100, 89, 67, 255 }, // 0x00004108
	 { 760, 733, -790, 0, 0, 0, 52, 49, 38, 255 }, // 0x00004118
	 { 760, 640, -790, 0, 0, 1195, 69, 62, 48, 255 }, // 0x00004128
	 { 560, 640, -790, 0, 2304, -512, 115, 102, 78, 255 }, // 0x00004138
	 { 560, 480, -790, 0, 2304, 2048, 52, 49, 38, 255 }, // 0x00004148
	 { 320, 647, -790, 0, 5376, -341, 134, 119, 89, 255 }, // 0x00004158
	 { 560, 813, -790, 0, 2304, -2731, 100, 89, 67, 255 }, // 0x00004168
};

Vtx_t _jyasinzou_room_25_vertices_00004178[8] = 
{
	 { 180, 333, -990, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004178
	 { 780, 333, -990, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004188
	 { 180, 813, -990, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004198
	 { 780, 813, -990, 0, 0, 0, 0, 0, 0, 0 }, // 0x000041A8
	 { 180, 333, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x000041B8
	 { 780, 333, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x000041C8
	 { 180, 813, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x000041D8
	 { 780, 813, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x000041E8
};

Gfx _jyasinzou_room_25_dlist_000041F8[] =
{
	gsDPPipeSync(), // 0x000041F8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004200
	gsSPVertex(_jyasinzou_room_25_vertices_00004178, 8, 0), // 0x00004208
	gsSPCullDisplayList(0, 7), // 0x00004210
	gsDPPipeSync(), // 0x00004218
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004220
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004228
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004230
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00012B98), // 0x00004238
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004240
	gsDPLoadSync(), // 0x00004248
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004250
	gsDPPipeSync(), // 0x00004258
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004260
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004268
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004270
	gsDPTileSync(), // 0x00004278
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004280
	gsDPLoadSync(), // 0x00004288
	gsDPLoadTLUTCmd(7, 255), // 0x00004290
	gsDPPipeSync(), // 0x00004298
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000042A0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000042A8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000042B0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000042B8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000042C0
	gsSPVertex(_jyasinzou_room_25_vertices_00003B58, 8, 0), // 0x000042C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000042D0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000042D8
	gsDPPipeSync(), // 0x000042E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00012798), // 0x000042E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000042F0
	gsDPLoadSync(), // 0x000042F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004300
	gsDPPipeSync(), // 0x00004308
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004310
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004318
	gsSPVertex(_jyasinzou_room_25_vertices_00003BD8, 5, 0), // 0x00004320
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x00004328
	gsDPPipeSync(), // 0x00004330
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013B98), // 0x00004338
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004340
	gsDPLoadSync(), // 0x00004348
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004350
	gsDPPipeSync(), // 0x00004358
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004360
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004368
	gsSPVertex(_jyasinzou_room_25_vertices_00003C28, 4, 0), // 0x00004370
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004378
	gsDPPipeSync(), // 0x00004380
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00012798), // 0x00004388
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004390
	gsDPLoadSync(), // 0x00004398
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000043A0
	gsDPPipeSync(), // 0x000043A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000043B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000043B8
	gsSPVertex(_jyasinzou_room_25_vertices_00003C68, 3, 0), // 0x000043C0
	gsSP1Triangle(0, 1, 2, 0), // 0x000043C8
	gsDPPipeSync(), // 0x000043D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013B98), // 0x000043D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000043E0
	gsDPLoadSync(), // 0x000043E8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000043F0
	gsDPPipeSync(), // 0x000043F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004400
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004408
	gsSPVertex(_jyasinzou_room_25_vertices_00003C98, 4, 0), // 0x00004410
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004418
	gsDPPipeSync(), // 0x00004420
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x00004428
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004430
	gsDPLoadSync(), // 0x00004438
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004440
	gsDPPipeSync(), // 0x00004448
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004450
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004458
	gsSPVertex(_jyasinzou_room_25_vertices_00003CD8, 8, 0), // 0x00004460
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004468
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004470
	gsDPPipeSync(), // 0x00004478
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004480
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004488
	gsDPLoadSync(), // 0x00004490
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004498
	gsDPPipeSync(), // 0x000044A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000044A8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000044B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000044B8
	gsDPTileSync(), // 0x000044C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000044C8
	gsDPLoadSync(), // 0x000044D0
	gsDPLoadTLUTCmd(7, 15), // 0x000044D8
	gsDPPipeSync(), // 0x000044E0
	gsSPVertex(_jyasinzou_room_25_vertices_00003D58, 4, 0), // 0x000044E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000044F0
	gsDPPipeSync(), // 0x000044F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x00004500
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004508
	gsDPLoadSync(), // 0x00004510
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004518
	gsDPPipeSync(), // 0x00004520
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004528
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004530
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004538
	gsDPTileSync(), // 0x00004540
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004548
	gsDPLoadSync(), // 0x00004550
	gsDPLoadTLUTCmd(7, 255), // 0x00004558
	gsDPPipeSync(), // 0x00004560
	gsSPVertex(_jyasinzou_room_25_vertices_00003D98, 4, 0), // 0x00004568
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004570
	gsDPPipeSync(), // 0x00004578
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00012798), // 0x00004580
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004588
	gsDPLoadSync(), // 0x00004590
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004598
	gsDPPipeSync(), // 0x000045A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000045A8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000045B0
	gsSPVertex(_jyasinzou_room_25_vertices_00003DD8, 6, 0), // 0x000045B8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x000045C0
	gsSP2Triangles(0, 4, 5, 0, 3, 0, 2, 0), // 0x000045C8
	gsDPPipeSync(), // 0x000045D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x000045D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000045E0
	gsDPLoadSync(), // 0x000045E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000045F0
	gsDPPipeSync(), // 0x000045F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004600
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004608
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00004610
	gsDPTileSync(), // 0x00004618
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004620
	gsDPLoadSync(), // 0x00004628
	gsDPLoadTLUTCmd(7, 15), // 0x00004630
	gsDPPipeSync(), // 0x00004638
	gsSPVertex(_jyasinzou_room_25_vertices_00003E38, 4, 0), // 0x00004640
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004648
	gsDPPipeSync(), // 0x00004650
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00015398), // 0x00004658
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004660
	gsDPLoadSync(), // 0x00004668
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004670
	gsDPPipeSync(), // 0x00004678
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004680
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004688
	gsSPVertex(_jyasinzou_room_25_vertices_00003E78, 4, 0), // 0x00004690
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004698
	gsDPPipeSync(), // 0x000046A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x000046A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000046B0
	gsDPLoadSync(), // 0x000046B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000046C0
	gsDPPipeSync(), // 0x000046C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000046D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000046D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x000046E0
	gsDPTileSync(), // 0x000046E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000046F0
	gsDPLoadSync(), // 0x000046F8
	gsDPLoadTLUTCmd(7, 255), // 0x00004700
	gsDPPipeSync(), // 0x00004708
	gsSPVertex(_jyasinzou_room_25_vertices_00003EB8, 4, 0), // 0x00004710
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004718
	gsDPPipeSync(), // 0x00004720
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004728
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004730
	gsDPLoadSync(), // 0x00004738
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004740
	gsDPPipeSync(), // 0x00004748
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004750
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004758
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00004760
	gsDPTileSync(), // 0x00004768
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004770
	gsDPLoadSync(), // 0x00004778
	gsDPLoadTLUTCmd(7, 15), // 0x00004780
	gsDPPipeSync(), // 0x00004788
	gsSPVertex(_jyasinzou_room_25_vertices_00003EF8, 4, 0), // 0x00004790
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004798
	gsDPPipeSync(), // 0x000047A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x000047A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000047B0
	gsDPLoadSync(), // 0x000047B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000047C0
	gsDPPipeSync(), // 0x000047C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000047D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000047D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x000047E0
	gsDPTileSync(), // 0x000047E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000047F0
	gsDPLoadSync(), // 0x000047F8
	gsDPLoadTLUTCmd(7, 255), // 0x00004800
	gsDPPipeSync(), // 0x00004808
	gsSPVertex(_jyasinzou_room_25_vertices_00003F38, 4, 0), // 0x00004810
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004818
	gsDPPipeSync(), // 0x00004820
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004828
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004830
	gsDPLoadSync(), // 0x00004838
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004840
	gsDPPipeSync(), // 0x00004848
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004850
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004858
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00004860
	gsDPTileSync(), // 0x00004868
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004870
	gsDPLoadSync(), // 0x00004878
	gsDPLoadTLUTCmd(7, 15), // 0x00004880
	gsDPPipeSync(), // 0x00004888
	gsSPVertex(_jyasinzou_room_25_vertices_00003F78, 4, 0), // 0x00004890
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004898
	gsDPPipeSync(), // 0x000048A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x000048A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000048B0
	gsDPLoadSync(), // 0x000048B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000048C0
	gsDPPipeSync(), // 0x000048C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000048D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000048D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x000048E0
	gsDPTileSync(), // 0x000048E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000048F0
	gsDPLoadSync(), // 0x000048F8
	gsDPLoadTLUTCmd(7, 255), // 0x00004900
	gsDPPipeSync(), // 0x00004908
	gsSPVertex(_jyasinzou_room_25_vertices_00003FB8, 8, 0), // 0x00004910
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004918
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004920
	gsDPPipeSync(), // 0x00004928
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004930
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004938
	gsDPLoadSync(), // 0x00004940
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004948
	gsDPPipeSync(), // 0x00004950
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004958
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004960
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00004968
	gsDPTileSync(), // 0x00004970
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004978
	gsDPLoadSync(), // 0x00004980
	gsDPLoadTLUTCmd(7, 15), // 0x00004988
	gsDPPipeSync(), // 0x00004990
	gsSPVertex(_jyasinzou_room_25_vertices_00004038, 8, 0), // 0x00004998
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000049A0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000049A8
	gsDPPipeSync(), // 0x000049B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00015398), // 0x000049B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000049C0
	gsDPLoadSync(), // 0x000049C8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000049D0
	gsDPPipeSync(), // 0x000049D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000049E0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000049E8
	gsSPVertex(_jyasinzou_room_25_vertices_000040B8, 4, 0), // 0x000049F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000049F8
	gsDPPipeSync(), // 0x00004A00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004A08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004A10
	gsDPLoadSync(), // 0x00004A18
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004A20
	gsDPPipeSync(), // 0x00004A28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004A30
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004A38
	gsSPVertex(_jyasinzou_room_25_vertices_000040F8, 8, 0), // 0x00004A40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004A48
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004A50
	gsSPEndDisplayList(), // 0x00004A58
};

Vtx_t _jyasinzou_room_25_vertices_00004A60[8] = 
{
	 { -440, 480, -990, 0, 1024, 4096, 115, 102, 78, 255 }, // 0x00004A60
	 { -440, 733, -990, 0, 1024, 0, 81, 72, 55, 255 }, // 0x00004A70
	 { -440, 733, -960, 0, 0, 0, 81, 72, 55, 255 }, // 0x00004A80
	 { -440, 480, -960, 0, 0, 4096, 115, 102, 78, 255 }, // 0x00004A90
	 { -470, 480, -990, 0, 1024, 4096, 115, 102, 78, 255 }, // 0x00004AA0
	 { -470, 733, -990, 0, 1024, 0, 81, 72, 55, 255 }, // 0x00004AB0
	 { -440, 733, -990, 0, 0, 0, 81, 72, 55, 255 }, // 0x00004AC0
	 { -440, 480, -990, 0, 0, 4096, 115, 102, 78, 255 }, // 0x00004AD0
};

Vtx_t _jyasinzou_room_25_vertices_00004AE0[8] = 
{
	 { -470, 480, -990, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004AE0
	 { -440, 480, -990, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004AF0
	 { -470, 733, -990, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B00
	 { -440, 733, -990, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B10
	 { -470, 480, -960, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B20
	 { -440, 480, -960, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B30
	 { -470, 733, -960, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B40
	 { -440, 733, -960, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B50
};

Gfx _jyasinzou_room_25_dlist_00004B60[] =
{
	gsDPPipeSync(), // 0x00004B60
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004B68
	gsSPVertex(_jyasinzou_room_25_vertices_00004AE0, 8, 0), // 0x00004B70
	gsSPCullDisplayList(0, 7), // 0x00004B78
	gsDPPipeSync(), // 0x00004B80
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004B88
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004B90
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004B98
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00012B98), // 0x00004BA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004BA8
	gsDPLoadSync(), // 0x00004BB0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004BB8
	gsDPPipeSync(), // 0x00004BC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004BC8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004BD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004BD8
	gsDPTileSync(), // 0x00004BE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004BE8
	gsDPLoadSync(), // 0x00004BF0
	gsDPLoadTLUTCmd(7, 255), // 0x00004BF8
	gsDPPipeSync(), // 0x00004C00
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004C08
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004C10
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004C18
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004C20
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004C28
	gsSPVertex(_jyasinzou_room_25_vertices_00004A60, 8, 0), // 0x00004C30
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004C38
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004C40
	gsSPEndDisplayList(), // 0x00004C48
};

Vtx_t _jyasinzou_room_25_vertices_00004C50[15] = 
{
	 { 60, 333, -1630, 0, 8960, 2048, 5, 5, 5, 255 }, // 0x00004C50
	 { 104, 979, -1630, 0, 9525, -6219, 52, 49, 38, 255 }, // 0x00004C60
	 { -270, 733, -1630, 0, 4736, -3072, 191, 223, 159, 255 }, // 0x00004C70
	 { 390, 733, -1630, 0, 13184, -3072, 191, 223, 159, 255 }, // 0x00004C80
	 { 140, 1051, -1630, 0, 9984, -7136, 52, 49, 38, 255 }, // 0x00004C90
	 { -20, 1051, -1630, 0, 7936, -7136, 52, 49, 38, 255 }, // 0x00004CA0
	 { -375, 1033, -1630, 0, 3392, -6912, 191, 223, 159, 255 }, // 0x00004CB0
	 { -480, 813, -1630, 0, 2048, -4096, 52, 49, 38, 255 }, // 0x00004CC0
	 { -480, 333, -1630, 0, 2048, 2048, 52, 49, 38, 255 }, // 0x00004CD0
	 { 600, 813, -1630, 0, 15872, -4096, 100, 89, 67, 255 }, // 0x00004CE0
	 { 600, 333, -1630, 0, 15872, 2048, 52, 49, 38, 255 }, // 0x00004CF0
	 { -270, 333, -1630, 0, 4736, 2048, 5, 5, 5, 255 }, // 0x00004D00
	 { 390, 333, -1630, 0, 13184, 2048, 5, 5, 5, 255 }, // 0x00004D10
	 { 495, 1033, -1630, 0, 14528, -6912, 191, 223, 159, 255 }, // 0x00004D20
	 { 800, 813, -1630, 0, 18432, -4096, 100, 89, 67, 255 }, // 0x00004D30
};

Vtx_t _jyasinzou_room_25_vertices_00004D40[8] = 
{
	 { -480, 333, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004D40
	 { 800, 333, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004D50
	 { -480, 1051, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004D60
	 { 800, 1051, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004D70
	 { -480, 333, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004D80
	 { 800, 333, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004D90
	 { -480, 1051, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004DA0
	 { 800, 1051, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004DB0
};

Gfx _jyasinzou_room_25_dlist_00004DC0[] =
{
	gsDPPipeSync(), // 0x00004DC0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004DC8
	gsSPVertex(_jyasinzou_room_25_vertices_00004D40, 8, 0), // 0x00004DD0
	gsSPCullDisplayList(0, 7), // 0x00004DD8
	gsDPPipeSync(), // 0x00004DE0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004DE8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004DF0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004DF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014798), // 0x00004E00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004E08
	gsDPLoadSync(), // 0x00004E10
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004E18
	gsDPPipeSync(), // 0x00004E20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004E28
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004E30
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017FE0), // 0x00004E38
	gsDPTileSync(), // 0x00004E40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004E48
	gsDPLoadSync(), // 0x00004E50
	gsDPLoadTLUTCmd(7, 15), // 0x00004E58
	gsDPPipeSync(), // 0x00004E60
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004E68
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004E70
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004E78
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004E80
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004E88
	gsSPVertex(_jyasinzou_room_25_vertices_00004C50, 15, 0), // 0x00004E90
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0), // 0x00004E98
	gsSP2Triangles(3, 1, 0, 0, 1, 5, 2, 0), // 0x00004EA0
	gsSP2Triangles(2, 6, 7, 0, 8, 2, 7, 0), // 0x00004EA8
	gsSP2Triangles(9, 3, 10, 0, 8, 11, 2, 0), // 0x00004EB0
	gsSP2Triangles(11, 0, 2, 0, 10, 3, 12, 0), // 0x00004EB8
	gsSP2Triangles(3, 0, 12, 0, 2, 5, 6, 0), // 0x00004EC0
	gsSP2Triangles(3, 13, 4, 0, 3, 9, 13, 0), // 0x00004EC8
	gsSP1Triangle(9, 14, 13, 0), // 0x00004ED0
	gsSPEndDisplayList(), // 0x00004ED8
};

Vtx_t _jyasinzou_room_25_vertices_00004EE0[15] = 
{
	 { -480, 813, -670, 0, 10240, 1024, 100, 89, 67, 255 }, // 0x00004EE0
	 { 60, 909, -670, 0, 1024, 206, 177, 164, 138, 255 }, // 0x00004EF0
	 { -200, 647, -670, 0, 5461, 2446, 100, 89, 67, 255 }, // 0x00004F00
	 { -60, 647, -670, 0, 3072, 2446, 100, 89, 67, 255 }, // 0x00004F10
	 { 0, 573, -670, 0, 2048, 3072, 115, 102, 78, 255 }, // 0x00004F20
	 { 120, 573, -670, 0, 0, 3072, 115, 102, 78, 255 }, // 0x00004F30
	 { 180, 647, -670, 0, -1024, 2446, 100, 89, 67, 255 }, // 0x00004F40
	 { 360, 647, -670, 0, -4096, 2446, 100, 89, 67, 255 }, // 0x00004F50
	 { 600, 813, -670, 0, -8192, 1024, 100, 89, 67, 255 }, // 0x00004F60
	 { 180, 413, -670, 0, -1024, 4437, 69, 62, 48, 255 }, // 0x00004F70
	 { 120, 413, -670, 0, 0, 4437, 52, 49, 38, 255 }, // 0x00004F80
	 { 0, 413, -670, 0, 2048, 4437, 52, 49, 38, 255 }, // 0x00004F90
	 { -60, 413, -670, 0, 3072, 4437, 35, 31, 25, 255 }, // 0x00004FA0
	 { 600, 973, -670, 0, -8192, -341, 100, 89, 67, 255 }, // 0x00004FB0
	 { -480, 973, -670, 0, 10240, -341, 100, 89, 67, 255 }, // 0x00004FC0
};

Vtx_t _jyasinzou_room_25_vertices_00004FD0[8] = 
{
	 { -480, 413, -670, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004FD0
	 { 600, 413, -670, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004FE0
	 { -480, 973, -670, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004FF0
	 { 600, 973, -670, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005000
	 { -480, 413, -670, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005010
	 { 600, 413, -670, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005020
	 { -480, 973, -670, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005030
	 { 600, 973, -670, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005040
};

Gfx _jyasinzou_room_25_dlist_00005050[] =
{
	gsDPPipeSync(), // 0x00005050
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005058
	gsSPVertex(_jyasinzou_room_25_vertices_00004FD0, 8, 0), // 0x00005060
	gsSPCullDisplayList(0, 7), // 0x00005068
	gsDPPipeSync(), // 0x00005070
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005078
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005080
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005088
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00005090
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005098
	gsDPLoadSync(), // 0x000050A0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000050A8
	gsDPPipeSync(), // 0x000050B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000050B8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000050C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000050C8
	gsDPTileSync(), // 0x000050D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000050D8
	gsDPLoadSync(), // 0x000050E0
	gsDPLoadTLUTCmd(7, 15), // 0x000050E8
	gsDPPipeSync(), // 0x000050F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000050F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005100
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005108
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005110
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005118
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000E698), // 0x00005120
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005128
	gsDPLoadSync(), // 0x00005130
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005138
	gsDPPipeSync(), // 0x00005140
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005148
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005150
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00005158
	gsDPTileSync(), // 0x00005160
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005168
	gsDPLoadSync(), // 0x00005170
	gsDPLoadTLUTCmd(7, 255), // 0x00005178
	gsDPPipeSync(), // 0x00005180
	gsSPVertex(_jyasinzou_room_25_vertices_00004EE0, 15, 0), // 0x00005188
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00005190
	gsSP2Triangles(1, 4, 3, 0, 1, 5, 4, 0), // 0x00005198
	gsSP2Triangles(5, 1, 6, 0, 1, 7, 6, 0), // 0x000051A0
	gsSP2Triangles(1, 8, 7, 0, 9, 5, 6, 0), // 0x000051A8
	gsSP2Triangles(5, 9, 10, 0, 11, 12, 4, 0), // 0x000051B0
	gsSP2Triangles(3, 4, 12, 0, 13, 8, 1, 0), // 0x000051B8
	gsSP1Triangle(0, 14, 1, 0), // 0x000051C0
	gsSPEndDisplayList(), // 0x000051C8
};

Vtx_t _jyasinzou_room_25_vertices_000051D0[15] = 
{
	 { 12, 1059, -1493, 0, 638, 1867, 100, 89, 67, 255 }, // 0x000051D0
	 { 10, 1107, -1488, 0, -8, 1288, 134, 119, 89, 255 }, // 0x000051E0
	 { 0, 1106, -1497, 0, -124, 1426, 134, 119, 89, 255 }, // 0x000051F0
	 { 12, 1059, -1493, 0, 638, 1867, 134, 119, 89, 255 }, // 0x00005200
	 { 25, 1072, -1480, 0, 635, 1550, 100, 89, 67, 255 }, // 0x00005210
	 { -6, 1074, -1513, 0, 220, 1910, 115, 102, 78, 255 }, // 0x00005220
	 { 41, 1011, -1488, 0, 1624, 2119, 100, 89, 67, 255 }, // 0x00005230
	 { 60, 1007, -1486, 0, 1917, 1917, 100, 89, 67, 255 }, // 0x00005240
	 { 60, 1057, -1474, 0, 1280, 1280, 134, 119, 89, 255 }, // 0x00005250
	 { 96, 1072, -1480, 0, 1550, 635, 100, 89, 67, 255 }, // 0x00005260
	 { 80, 1011, -1488, 0, 2119, 1624, 100, 89, 67, 255 }, // 0x00005270
	 { 108, 1059, -1493, 0, 1867, 638, 134, 119, 89, 255 }, // 0x00005280
	 { 126, 1074, -1513, 0, 1910, 220, 115, 102, 78, 255 }, // 0x00005290
	 { 121, 1106, -1497, 0, 1426, -124, 100, 89, 67, 255 }, // 0x000052A0
	 { 111, 1107, -1488, 0, 1288, -8, 134, 119, 89, 255 }, // 0x000052B0
};

Vtx_t _jyasinzou_room_25_vertices_000052C0[8] = 
{
	 { -6, 1006, -1489, 0, 0, 0, 0, 0, 0, 0 }, // 0x000052C0
	 { 126, 1006, -1489, 0, 0, 0, 0, 0, 0, 0 }, // 0x000052D0
	 { -6, 1097, -1522, 0, 0, 0, 0, 0, 0, 0 }, // 0x000052E0
	 { 126, 1097, -1522, 0, 0, 0, 0, 0, 0, 0 }, // 0x000052F0
	 { -6, 1018, -1456, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005300
	 { 126, 1018, -1456, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005310
	 { -6, 1109, -1489, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005320
	 { 126, 1109, -1489, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005330
};

Gfx _jyasinzou_room_25_dlist_00005340[] =
{
	gsDPPipeSync(), // 0x00005340
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005348
	gsSPVertex(_jyasinzou_room_25_vertices_000052C0, 8, 0), // 0x00005350
	gsSPCullDisplayList(0, 7), // 0x00005358
	gsDPPipeSync(), // 0x00005360
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005368
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005370
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005378
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DA98), // 0x00005380
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005388
	gsDPLoadSync(), // 0x00005390
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005398
	gsDPPipeSync(), // 0x000053A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000053A8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000053B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000B8A0), // 0x000053B8
	gsDPTileSync(), // 0x000053C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000053C8
	gsDPLoadSync(), // 0x000053D0
	gsDPLoadTLUTCmd(7, 255), // 0x000053D8
	gsDPPipeSync(), // 0x000053E0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000053E8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000053F0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000053F8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005400
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005408
	gsSPVertex(_jyasinzou_room_25_vertices_000051D0, 15, 0), // 0x00005410
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0), // 0x00005418
	gsSP2Triangles(2, 5, 3, 0, 6, 7, 4, 0), // 0x00005420
	gsSP2Triangles(3, 6, 4, 0, 4, 7, 8, 0), // 0x00005428
	gsSP2Triangles(7, 9, 8, 0, 9, 10, 11, 0), // 0x00005430
	gsSP2Triangles(9, 7, 10, 0, 11, 12, 13, 0), // 0x00005438
	gsSP2Triangles(9, 11, 13, 0, 13, 14, 9, 0), // 0x00005440
	gsSPEndDisplayList(), // 0x00005448
};

Vtx_t _jyasinzou_room_25_vertices_00005450[26] = 
{
	 { 482, 688, -1152, 0, 511, 779, 255, 255, 255, 255 }, // 0x00005450
	 { 445, 687, -1181, 0, 885, 758, 255, 255, 255, 255 }, // 0x00005460
	 { 443, 664, -1181, 0, 893, 964, 134, 119, 89, 255 }, // 0x00005470
	 { 479, 664, -1152, 0, 520, 986, 134, 119, 89, 255 }, // 0x00005480
	 { 421, 680, -1261, 0, 989, 441, 255, 255, 255, 255 }, // 0x00005490
	 { 418, 652, -1261, 0, 745, 407, 147, 131, 97, 255 }, // 0x000054A0
	 { 443, 664, -1181, 0, 907, 841, 134, 119, 89, 255 }, // 0x000054B0
	 { 445, 687, -1181, 0, 1024, 858, 255, 255, 255, 255 }, // 0x000054C0
	 { 419, 680, -1307, 0, 1000, 221, 255, 255, 255, 255 }, // 0x000054D0
	 { 436, 644, -1348, 0, 819, 15, 81, 72, 55, 255 }, // 0x000054E0
	 { 449, 675, -1355, 0, 1024, 0, 189, 178, 157, 255 }, // 0x000054F0
	 { 541, 663, -1338, 0, 29, 211, 255, 255, 255, 255 }, // 0x00005500
	 { 494, 651, -1365, 0, 344, -61, 115, 102, 78, 255 }, // 0x00005510
	 { 481, 678, -1357, 0, 498, -7, 189, 178, 157, 255 }, // 0x00005520
	 { 547, 668, -1273, 0, -15, 582, 255, 255, 255, 255 }, // 0x00005530
	 { 523, 680, -1301, 0, 160, 447, 255, 255, 255, 255 }, // 0x00005540
	 { 521, 667, -1256, 0, 177, 663, 147, 131, 97, 255 }, // 0x00005550
	 { 494, 672, -1287, 0, 463, 332, 147, 131, 97, 255 }, // 0x00005560
	 { 421, 680, -1261, 0, 1003, 457, 255, 255, 255, 255 }, // 0x00005570
	 { 419, 680, -1307, 0, 1017, 231, 255, 255, 255, 255 }, // 0x00005580
	 { 487, 686, -1319, 0, 513, 173, 255, 255, 255, 255 }, // 0x00005590
	 { 516, 691, -1334, 0, 214, 230, 255, 255, 255, 255 }, // 0x000055A0
	 { 449, 675, -1355, 0, 861, 4, 189, 178, 157, 255 }, // 0x000055B0
	 { 482, 688, -1152, 0, 523, 1024, 255, 255, 255, 255 }, // 0x000055C0
	 { 519, 681, -1185, 0, 208, 895, 255, 255, 255, 255 }, // 0x000055D0
	 { 445, 687, -1181, 0, 879, 877, 255, 255, 255, 255 }, // 0x000055E0
};

Vtx_t _jyasinzou_room_25_vertices_000055F0[8] = 
{
	 { 418, 644, -1365, 0, 0, 0, 0, 0, 0, 0 }, // 0x000055F0
	 { 547, 644, -1365, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005600
	 { 418, 691, -1365, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005610
	 { 547, 691, -1365, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005620
	 { 418, 644, -1152, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005630
	 { 547, 644, -1152, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005640
	 { 418, 691, -1152, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005650
	 { 547, 691, -1152, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005660
};

Gfx _jyasinzou_room_25_dlist_00005670[] =
{
	gsDPPipeSync(), // 0x00005670
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005678
	gsSPVertex(_jyasinzou_room_25_vertices_000055F0, 8, 0), // 0x00005680
	gsSPCullDisplayList(0, 7), // 0x00005688
	gsDPPipeSync(), // 0x00005690
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005698
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000056A0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000056A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00010398), // 0x000056B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x000056B8
	gsDPLoadSync(), // 0x000056C0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000056C8
	gsDPPipeSync(), // 0x000056D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x000056D8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000056E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000B8A0), // 0x000056E8
	gsDPTileSync(), // 0x000056F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000056F8
	gsDPLoadSync(), // 0x00005700
	gsDPLoadTLUTCmd(7, 255), // 0x00005708
	gsDPPipeSync(), // 0x00005710
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005718
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005720
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005728
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005730
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005738
	gsSPVertex(_jyasinzou_room_25_vertices_00005450, 26, 0), // 0x00005740
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005748
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005750
	gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0), // 0x00005758
	gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0), // 0x00005760
	gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0), // 0x00005768
	gsSP2Triangles(17, 18, 16, 0, 17, 19, 18, 0), // 0x00005770
	gsSP2Triangles(17, 20, 19, 0, 17, 15, 20, 0), // 0x00005778
	gsSP2Triangles(15, 21, 20, 0, 15, 14, 11, 0), // 0x00005780
	gsSP2Triangles(15, 11, 21, 0, 20, 22, 19, 0), // 0x00005788
	gsSP2Triangles(20, 13, 22, 0, 20, 21, 13, 0), // 0x00005790
	gsSP2Triangles(21, 11, 13, 0, 18, 23, 16, 0), // 0x00005798
	gsSP2Triangles(23, 24, 16, 0, 18, 25, 23, 0), // 0x000057A0
	gsSPEndDisplayList(), // 0x000057A8
};

Vtx_t _jyasinzou_room_25_vertices_000057B0[26] = 
{
	 { -359, 664, -1152, 0, 520, 986, 134, 119, 89, 255 }, // 0x000057B0
	 { -323, 664, -1181, 0, 893, 964, 134, 119, 89, 255 }, // 0x000057C0
	 { -325, 687, -1181, 0, 885, 758, 255, 255, 255, 255 }, // 0x000057D0
	 { -362, 688, -1152, 0, 511, 779, 255, 255, 255, 255 }, // 0x000057E0
	 { -325, 687, -1181, 0, 1024, 858, 255, 255, 255, 255 }, // 0x000057F0
	 { -323, 664, -1181, 0, 907, 841, 134, 119, 89, 255 }, // 0x00005800
	 { -298, 652, -1261, 0, 745, 407, 147, 131, 97, 255 }, // 0x00005810
	 { -301, 680, -1261, 0, 989, 441, 255, 255, 255, 255 }, // 0x00005820
	 { -316, 644, -1348, 0, 819, 15, 81, 72, 55, 255 }, // 0x00005830
	 { -329, 675, -1355, 0, 1024, 0, 189, 178, 157, 255 }, // 0x00005840
	 { -299, 680, -1307, 0, 1000, 221, 255, 255, 255, 255 }, // 0x00005850
	 { -361, 678, -1357, 0, 498, -7, 189, 178, 157, 255 }, // 0x00005860
	 { -374, 651, -1365, 0, 344, -61, 115, 102, 78, 255 }, // 0x00005870
	 { -421, 663, -1338, 0, 29, 211, 255, 255, 255, 255 }, // 0x00005880
	 { -401, 667, -1256, 0, 177, 663, 147, 131, 97, 255 }, // 0x00005890
	 { -403, 680, -1301, 0, 160, 447, 255, 255, 255, 255 }, // 0x000058A0
	 { -427, 668, -1273, 0, -15, 582, 255, 255, 255, 255 }, // 0x000058B0
	 { -374, 672, -1287, 0, 463, 332, 147, 131, 97, 255 }, // 0x000058C0
	 { -301, 680, -1261, 0, 1003, 457, 255, 255, 255, 255 }, // 0x000058D0
	 { -299, 680, -1307, 0, 1017, 231, 255, 255, 255, 255 }, // 0x000058E0
	 { -367, 686, -1319, 0, 513, 173, 255, 255, 255, 255 }, // 0x000058F0
	 { -396, 691, -1334, 0, 214, 230, 255, 255, 255, 255 }, // 0x00005900
	 { -329, 675, -1355, 0, 861, 4, 189, 178, 157, 255 }, // 0x00005910
	 { -362, 688, -1152, 0, 523, 1024, 255, 255, 255, 255 }, // 0x00005920
	 { -399, 681, -1185, 0, 208, 895, 255, 255, 255, 255 }, // 0x00005930
	 { -325, 687, -1181, 0, 879, 877, 255, 255, 255, 255 }, // 0x00005940
};

Vtx_t _jyasinzou_room_25_vertices_00005950[8] = 
{
	 { -329, 643, -1382, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005950
	 { -259, 643, -1188, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005960
	 { -323, 679, -1384, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005970
	 { -253, 679, -1190, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005980
	 { -456, 666, -1335, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005990
	 { -386, 666, -1142, 0, 0, 0, 0, 0, 0, 0 }, // 0x000059A0
	 { -450, 703, -1338, 0, 0, 0, 0, 0, 0, 0 }, // 0x000059B0
	 { -380, 703, -1144, 0, 0, 0, 0, 0, 0, 0 }, // 0x000059C0
};

Gfx _jyasinzou_room_25_dlist_000059D0[] =
{
	gsDPPipeSync(), // 0x000059D0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000059D8
	gsSPVertex(_jyasinzou_room_25_vertices_00005950, 8, 0), // 0x000059E0
	gsSPCullDisplayList(0, 7), // 0x000059E8
	gsDPPipeSync(), // 0x000059F0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000059F8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005A00
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005A08
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00010398), // 0x00005A10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00005A18
	gsDPLoadSync(), // 0x00005A20
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005A28
	gsDPPipeSync(), // 0x00005A30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00005A38
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005A40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000B8A0), // 0x00005A48
	gsDPTileSync(), // 0x00005A50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005A58
	gsDPLoadSync(), // 0x00005A60
	gsDPLoadTLUTCmd(7, 255), // 0x00005A68
	gsDPPipeSync(), // 0x00005A70
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005A78
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005A80
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005A88
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005A90
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005A98
	gsSPVertex(_jyasinzou_room_25_vertices_000057B0, 26, 0), // 0x00005AA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005AA8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005AB0
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0), // 0x00005AB8
	gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0), // 0x00005AC0
	gsSP2Triangles(14, 18, 17, 0, 18, 19, 17, 0), // 0x00005AC8
	gsSP2Triangles(19, 20, 17, 0, 20, 15, 17, 0), // 0x00005AD0
	gsSP2Triangles(20, 21, 15, 0, 21, 13, 16, 0), // 0x00005AD8
	gsSP2Triangles(21, 16, 15, 0, 19, 22, 20, 0), // 0x00005AE0
	gsSP2Triangles(22, 11, 20, 0, 11, 21, 20, 0), // 0x00005AE8
	gsSP2Triangles(11, 13, 21, 0, 14, 23, 18, 0), // 0x00005AF0
	gsSP2Triangles(14, 24, 23, 0, 23, 25, 18, 0), // 0x00005AF8
	gsSPEndDisplayList(), // 0x00005B00
};

Vtx_t _jyasinzou_room_25_vertices_00005B08[22] = 
{
	 { -132, 914, -1574, 0, 2588, -1474, 100, 89, 67, 255 }, // 0x00005B08
	 { -207, 789, -1565, 0, 2720, -70, 213, 206, 192, 255 }, // 0x00005B18
	 { -179, 772, -1551, 0, 3164, -63, 255, 255, 255, 255 }, // 0x00005B28
	 { -109, 871, -1565, 0, 3300, -1225, 81, 72, 55, 255 }, // 0x00005B38
	 { -254, 711, -1581, 0, 2557, 946, 218, 211, 199, 255 }, // 0x00005B48
	 { -235, 694, -1561, 0, 3164, 986, 169, 154, 126, 255 }, // 0x00005B58
	 { -132, 914, -1618, 0, 1956, -1475, 100, 89, 67, 255 }, // 0x00005B68
	 { -210, 787, -1614, 0, 1991, -35, 134, 119, 89, 255 }, // 0x00005B78
	 { -260, 707, -1604, 0, 2072, 1003, 100, 89, 67, 255 }, // 0x00005B88
	 { -260, 707, -1604, 0, 2868, -1823, 100, 89, 67, 255 }, // 0x00005B98
	 { -295, 671, -1585, 0, 2315, -1356, 115, 102, 78, 255 }, // 0x00005BA8
	 { -254, 711, -1581, 0, 3042, -1575, 218, 211, 199, 255 }, // 0x00005BB8
	 { -235, 694, -1561, 0, 352, -1416, 169, 154, 126, 255 }, // 0x00005BC8
	 { -257, 693, -1519, 0, 304, -694, 169, 154, 126, 255 }, // 0x00005BD8
	 { -241, 654, -1510, 0, 921, -634, 115, 102, 78, 255 }, // 0x00005BE8
	 { -220, 668, -1592, 0, 778, -1853, 69, 62, 48, 255 }, // 0x00005BF8
	 { -293, 705, -1518, 0, 2890, -493, 169, 154, 126, 255 }, // 0x00005C08
	 { -257, 693, -1519, 0, 3376, -694, 169, 154, 126, 255 }, // 0x00005C18
	 { -235, 694, -1561, 0, 3424, -1416, 169, 154, 126, 255 }, // 0x00005C28
	 { -318, 655, -1535, 0, 2173, -532, 100, 89, 67, 255 }, // 0x00005C38
	 { -302, 682, -1416, 0, 326, 950, 218, 211, 199, 255 }, // 0x00005C48
	 { -288, 648, -1409, 0, 943, 996, 134, 119, 89, 255 }, // 0x00005C58
};

Vtx_t _jyasinzou_room_25_vertices_00005C68[4] = 
{
	 { -302, 682, -1416, 0, -233, 1183, 218, 211, 199, 255 }, // 0x00005C68
	 { -329, 675, -1355, 0, 0, 2048, 189, 178, 157, 255 }, // 0x00005C78
	 { -316, 644, -1348, 0, 1024, 2048, 81, 72, 55, 255 }, // 0x00005C88
	 { -288, 648, -1409, 0, 1024, 1183, 134, 119, 89, 255 }, // 0x00005C98
};

Vtx_t _jyasinzou_room_25_vertices_00005CA8[4] = 
{
	 { -293, 705, -1518, 0, 2890, -493, 169, 154, 126, 255 }, // 0x00005CA8
	 { -335, 688, -1417, 0, 2834, 1102, 169, 154, 126, 255 }, // 0x00005CB8
	 { -302, 682, -1416, 0, 3398, 950, 218, 211, 199, 255 }, // 0x00005CC8
	 { -257, 693, -1519, 0, 3376, -694, 169, 154, 126, 255 }, // 0x00005CD8
};

Vtx_t _jyasinzou_room_25_vertices_00005CE8[4] = 
{
	 { -335, 688, -1417, 0, -176, 1191, 169, 154, 126, 255 }, // 0x00005CE8
	 { -361, 678, -1357, 0, 0, 2048, 189, 178, 157, 255 }, // 0x00005CF8
	 { -329, 675, -1355, 0, 1024, 2048, 189, 178, 157, 255 }, // 0x00005D08
	 { -302, 682, -1416, 0, 1024, 1186, 218, 211, 199, 255 }, // 0x00005D18
};

Vtx_t _jyasinzou_room_25_vertices_00005D28[4] = 
{
	 { -318, 655, -1535, 0, 2173, -532, 100, 89, 67, 255 }, // 0x00005D28
	 { -353, 653, -1429, 0, 2185, 1076, 169, 154, 126, 255 }, // 0x00005D38
	 { -335, 688, -1417, 0, 2834, 1102, 169, 154, 126, 255 }, // 0x00005D48
	 { -293, 705, -1518, 0, 2890, -493, 169, 154, 126, 255 }, // 0x00005D58
};

Vtx_t _jyasinzou_room_25_vertices_00005D68[4] = 
{
	 { -353, 653, -1429, 0, 1024, 1184, 169, 154, 126, 255 }, // 0x00005D68
	 { -374, 651, -1365, 0, 1024, 2048, 115, 102, 78, 255 }, // 0x00005D78
	 { -361, 678, -1357, 0, 0, 2048, 189, 178, 157, 255 }, // 0x00005D88
	 { -335, 688, -1417, 0, -508, 1184, 169, 154, 126, 255 }, // 0x00005D98
};

Vtx_t _jyasinzou_room_25_vertices_00005DA8[8] = 
{
	 { -369, 527, -1497, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005DA8
	 { -250, 527, -1397, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005DB8
	 { -154, 807, -1754, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005DC8
	 { -35, 807, -1654, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005DD8
	 { -444, 666, -1408, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005DE8
	 { -325, 666, -1308, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005DF8
	 { -229, 946, -1664, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E08
	 { -110, 946, -1564, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E18
};

Gfx _jyasinzou_room_25_dlist_00005E28[] =
{
	gsDPPipeSync(), // 0x00005E28
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005E30
	gsSPVertex(_jyasinzou_room_25_vertices_00005DA8, 8, 0), // 0x00005E38
	gsSPCullDisplayList(0, 7), // 0x00005E40
	gsDPPipeSync(), // 0x00005E48
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005E50
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005E58
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005E60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DA98), // 0x00005E68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005E70
	gsDPLoadSync(), // 0x00005E78
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005E80
	gsDPPipeSync(), // 0x00005E88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005E90
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005E98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000B8A0), // 0x00005EA0
	gsDPTileSync(), // 0x00005EA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005EB0
	gsDPLoadSync(), // 0x00005EB8
	gsDPLoadTLUTCmd(7, 255), // 0x00005EC0
	gsDPPipeSync(), // 0x00005EC8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005ED0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005ED8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005EE0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005EE8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005EF0
	gsSPVertex(_jyasinzou_room_25_vertices_00005B08, 22, 0), // 0x00005EF8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005F00
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00005F08
	gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0), // 0x00005F10
	gsSP2Triangles(7, 8, 4, 0, 7, 4, 1, 0), // 0x00005F18
	gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0), // 0x00005F20
	gsSP2Triangles(12, 14, 15, 0, 11, 16, 17, 0), // 0x00005F28
	gsSP2Triangles(11, 17, 18, 0, 10, 19, 16, 0), // 0x00005F30
	gsSP2Triangles(10, 16, 11, 0, 13, 20, 21, 0), // 0x00005F38
	gsSP1Triangle(13, 21, 14, 0), // 0x00005F40
	gsDPPipeSync(), // 0x00005F48
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F698), // 0x00005F50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005F58
	gsDPLoadSync(), // 0x00005F60
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005F68
	gsDPPipeSync(), // 0x00005F70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005F78
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005F80
	gsSPVertex(_jyasinzou_room_25_vertices_00005C68, 4, 0), // 0x00005F88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005F90
	gsDPPipeSync(), // 0x00005F98
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DA98), // 0x00005FA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005FA8
	gsDPLoadSync(), // 0x00005FB0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005FB8
	gsDPPipeSync(), // 0x00005FC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005FC8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005FD0
	gsSPVertex(_jyasinzou_room_25_vertices_00005CA8, 4, 0), // 0x00005FD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005FE0
	gsDPPipeSync(), // 0x00005FE8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F698), // 0x00005FF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005FF8
	gsDPLoadSync(), // 0x00006000
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006008
	gsDPPipeSync(), // 0x00006010
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00006018
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006020
	gsSPVertex(_jyasinzou_room_25_vertices_00005CE8, 4, 0), // 0x00006028
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006030
	gsDPPipeSync(), // 0x00006038
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DA98), // 0x00006040
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006048
	gsDPLoadSync(), // 0x00006050
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00006058
	gsDPPipeSync(), // 0x00006060
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006068
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006070
	gsSPVertex(_jyasinzou_room_25_vertices_00005D28, 4, 0), // 0x00006078
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006080
	gsDPPipeSync(), // 0x00006088
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F698), // 0x00006090
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00006098
	gsDPLoadSync(), // 0x000060A0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000060A8
	gsDPPipeSync(), // 0x000060B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000060B8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000060C0
	gsSPVertex(_jyasinzou_room_25_vertices_00005D68, 4, 0), // 0x000060C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000060D0
	gsSPEndDisplayList(), // 0x000060D8
};

Vtx_t _jyasinzou_room_25_vertices_000060E0[22] = 
{
	 { 229, 871, -1565, 0, 3300, -1225, 81, 72, 55, 255 }, // 0x000060E0
	 { 299, 772, -1551, 0, 3164, -63, 255, 255, 255, 255 }, // 0x000060F0
	 { 327, 789, -1565, 0, 2720, -70, 213, 206, 192, 255 }, // 0x00006100
	 { 252, 914, -1574, 0, 2588, -1474, 100, 89, 67, 255 }, // 0x00006110
	 { 355, 694, -1561, 0, 3164, 986, 169, 154, 126, 255 }, // 0x00006120
	 { 374, 711, -1581, 0, 2557, 946, 218, 211, 199, 255 }, // 0x00006130
	 { 330, 787, -1614, 0, 1991, -35, 134, 119, 89, 255 }, // 0x00006140
	 { 252, 914, -1618, 0, 1956, -1475, 100, 89, 67, 255 }, // 0x00006150
	 { 380, 707, -1604, 0, 2072, 1003, 100, 89, 67, 255 }, // 0x00006160
	 { 374, 711, -1581, 0, 3042, -1575, 218, 211, 199, 255 }, // 0x00006170
	 { 415, 671, -1585, 0, 2315, -1356, 115, 102, 78, 255 }, // 0x00006180
	 { 380, 707, -1604, 0, 2868, -1823, 100, 89, 67, 255 }, // 0x00006190
	 { 340, 668, -1592, 0, 778, -1853, 69, 62, 48, 255 }, // 0x000061A0
	 { 361, 654, -1510, 0, 921, -634, 115, 102, 78, 255 }, // 0x000061B0
	 { 377, 693, -1519, 0, 304, -694, 169, 154, 126, 255 }, // 0x000061C0
	 { 355, 694, -1561, 0, 352, -1416, 169, 154, 126, 255 }, // 0x000061D0
	 { 355, 694, -1561, 0, 3424, -1416, 169, 154, 126, 255 }, // 0x000061E0
	 { 377, 693, -1519, 0, 3376, -694, 169, 154, 126, 255 }, // 0x000061F0
	 { 413, 705, -1518, 0, 2890, -493, 169, 154, 126, 255 }, // 0x00006200
	 { 438, 655, -1535, 0, 2173, -532, 100, 89, 67, 255 }, // 0x00006210
	 { 408, 648, -1409, 0, 943, 996, 134, 119, 89, 255 }, // 0x00006220
	 { 422, 682, -1416, 0, 326, 950, 218, 211, 199, 255 }, // 0x00006230
};

Vtx_t _jyasinzou_room_25_vertices_00006240[4] = 
{
	 { 408, 648, -1409, 0, 1024, 1160, 134, 119, 89, 255 }, // 0x00006240
	 { 436, 644, -1348, 0, 1024, 2048, 81, 72, 55, 255 }, // 0x00006250
	 { 449, 675, -1355, 0, 0, 2048, 189, 178, 157, 255 }, // 0x00006260
	 { 422, 682, -1416, 0, -233, 1160, 218, 211, 199, 255 }, // 0x00006270
};

Vtx_t _jyasinzou_room_25_vertices_00006280[4] = 
{
	 { 377, 693, -1519, 0, 3376, -694, 169, 154, 126, 255 }, // 0x00006280
	 { 422, 682, -1416, 0, 3398, 950, 218, 211, 199, 255 }, // 0x00006290
	 { 455, 688, -1417, 0, 2834, 1102, 169, 154, 126, 255 }, // 0x000062A0
	 { 413, 705, -1518, 0, 2890, -493, 169, 154, 126, 255 }, // 0x000062B0
};

Vtx_t _jyasinzou_room_25_vertices_000062C0[4] = 
{
	 { 422, 682, -1416, 0, 1024, 1163, 218, 211, 199, 255 }, // 0x000062C0
	 { 449, 675, -1355, 0, 1024, 2048, 189, 178, 157, 255 }, // 0x000062D0
	 { 481, 678, -1357, 0, 0, 2048, 189, 178, 157, 255 }, // 0x000062E0
	 { 455, 688, -1417, 0, -176, 1169, 169, 154, 126, 255 }, // 0x000062F0
};

Vtx_t _jyasinzou_room_25_vertices_00006300[4] = 
{
	 { 413, 705, -1518, 0, 2890, -493, 169, 154, 126, 255 }, // 0x00006300
	 { 455, 688, -1417, 0, 2834, 1102, 169, 154, 126, 255 }, // 0x00006310
	 { 473, 653, -1429, 0, 2185, 1076, 169, 154, 126, 255 }, // 0x00006320
	 { 438, 655, -1535, 0, 2173, -532, 100, 89, 67, 255 }, // 0x00006330
};

Vtx_t _jyasinzou_room_25_vertices_00006340[4] = 
{
	 { 455, 688, -1417, 0, -508, 1162, 169, 154, 126, 255 }, // 0x00006340
	 { 481, 678, -1357, 0, 0, 2048, 189, 178, 157, 255 }, // 0x00006350
	 { 494, 651, -1365, 0, 1024, 2048, 115, 102, 78, 255 }, // 0x00006360
	 { 473, 653, -1429, 0, 1024, 1162, 169, 154, 126, 255 }, // 0x00006370
};

Vtx_t _jyasinzou_room_25_vertices_00006380[8] = 
{
	 { 332, 619, -1647, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006380
	 { 443, 619, -1343, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006390
	 { 393, 657, -1670, 0, 0, 0, 0, 0, 0, 0 }, // 0x000063A0
	 { 504, 657, -1365, 0, 0, 0, 0, 0, 0, 0 }, // 0x000063B0
	 { 188, 884, -1595, 0, 0, 0, 0, 0, 0, 0 }, // 0x000063C0
	 { 299, 884, -1291, 0, 0, 0, 0, 0, 0, 0 }, // 0x000063D0
	 { 250, 922, -1617, 0, 0, 0, 0, 0, 0, 0 }, // 0x000063E0
	 { 360, 922, -1313, 0, 0, 0, 0, 0, 0, 0 }, // 0x000063F0
};

Gfx _jyasinzou_room_25_dlist_00006400[] =
{
	gsDPPipeSync(), // 0x00006400
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006408
	gsSPVertex(_jyasinzou_room_25_vertices_00006380, 8, 0), // 0x00006410
	gsSPCullDisplayList(0, 7), // 0x00006418
	gsDPPipeSync(), // 0x00006420
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006428
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00006430
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006438
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DA98), // 0x00006440
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006448
	gsDPLoadSync(), // 0x00006450
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00006458
	gsDPPipeSync(), // 0x00006460
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006468
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006470
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000B8A0), // 0x00006478
	gsDPTileSync(), // 0x00006480
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00006488
	gsDPLoadSync(), // 0x00006490
	gsDPLoadTLUTCmd(7, 255), // 0x00006498
	gsDPPipeSync(), // 0x000064A0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000064A8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000064B0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000064B8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000064C0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000064C8
	gsSPVertex(_jyasinzou_room_25_vertices_000060E0, 22, 0), // 0x000064D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000064D8
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x000064E0
	gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0), // 0x000064E8
	gsSP2Triangles(2, 5, 8, 0, 2, 8, 6, 0), // 0x000064F0
	gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0), // 0x000064F8
	gsSP2Triangles(12, 14, 15, 0, 16, 17, 18, 0), // 0x00006500
	gsSP2Triangles(16, 18, 9, 0, 9, 18, 19, 0), // 0x00006508
	gsSP2Triangles(9, 19, 10, 0, 13, 20, 21, 0), // 0x00006510
	gsSP1Triangle(13, 21, 14, 0), // 0x00006518
	gsDPPipeSync(), // 0x00006520
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F698), // 0x00006528
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00006530
	gsDPLoadSync(), // 0x00006538
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006540
	gsDPPipeSync(), // 0x00006548
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00006550
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006558
	gsSPVertex(_jyasinzou_room_25_vertices_00006240, 4, 0), // 0x00006560
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006568
	gsDPPipeSync(), // 0x00006570
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DA98), // 0x00006578
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006580
	gsDPLoadSync(), // 0x00006588
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00006590
	gsDPPipeSync(), // 0x00006598
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000065A0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000065A8
	gsSPVertex(_jyasinzou_room_25_vertices_00006280, 4, 0), // 0x000065B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000065B8
	gsDPPipeSync(), // 0x000065C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F698), // 0x000065C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000065D0
	gsDPLoadSync(), // 0x000065D8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000065E0
	gsDPPipeSync(), // 0x000065E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000065F0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000065F8
	gsSPVertex(_jyasinzou_room_25_vertices_000062C0, 4, 0), // 0x00006600
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006608
	gsDPPipeSync(), // 0x00006610
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DA98), // 0x00006618
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006620
	gsDPLoadSync(), // 0x00006628
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00006630
	gsDPPipeSync(), // 0x00006638
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006640
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006648
	gsSPVertex(_jyasinzou_room_25_vertices_00006300, 4, 0), // 0x00006650
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006658
	gsDPPipeSync(), // 0x00006660
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F698), // 0x00006668
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00006670
	gsDPLoadSync(), // 0x00006678
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006680
	gsDPPipeSync(), // 0x00006688
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00006690
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006698
	gsSPVertex(_jyasinzou_room_25_vertices_00006340, 4, 0), // 0x000066A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000066A8
	gsSPEndDisplayList(), // 0x000066B0
};

Vtx_t _jyasinzou_room_25_vertices_000066B8[23] = 
{
	 { 54, 803, -1432, 0, -15, 199, 158, 142, 111, 255 }, // 0x000066B8
	 { 60, 820, -1426, 0, 59, 129, 255, 255, 255, 255 }, // 0x000066C8
	 { 50, 835, -1435, 0, 94, 51, 126, 136, 151, 255 }, // 0x000066D8
	 { 60, 849, -1437, 0, 176, 27, 255, 255, 255, 255 }, // 0x000066E8
	 { 60, 849, -1437, 0, 125, 13, 255, 255, 255, 255 }, // 0x000066F8
	 { 60, 863, -1456, 0, 0, 512, 203, 195, 178, 255 }, // 0x00006708
	 { 40, 841, -1452, 0, 512, 512, 147, 131, 97, 255 }, // 0x00006718
	 { 50, 835, -1435, 0, 422, 0, 126, 136, 151, 255 }, // 0x00006728
	 { 60, 863, -1456, 0, 0, 512, 203, 195, 178, 255 }, // 0x00006738
	 { 60, 849, -1437, 0, 130, 13, 255, 255, 255, 255 }, // 0x00006748
	 { 70, 835, -1435, 0, 426, 0, 215, 182, 90, 255 }, // 0x00006758
	 { 80, 841, -1452, 0, 512, 512, 147, 131, 97, 255 }, // 0x00006768
	 { 70, 835, -1435, 0, 154, 121, 215, 182, 90, 255 }, // 0x00006778
	 { 49, 791, -1443, 0, -512, 512, 69, 62, 48, 255 }, // 0x00006788
	 { 54, 803, -1432, 0, -292, 75, 158, 142, 111, 255 }, // 0x00006798
	 { 50, 835, -1435, 0, 351, 0, 126, 136, 151, 255 }, // 0x000067A8
	 { 40, 841, -1452, 0, 512, 512, 147, 131, 97, 255 }, // 0x000067B8
	 { 60, 790, -1430, 0, -47, 279, 169, 154, 126, 255 }, // 0x000067C8
	 { 67, 803, -1432, 0, 23, 244, 158, 142, 111, 255 }, // 0x000067D8
	 { 80, 841, -1452, 0, 1024, 512, 147, 131, 97, 255 }, // 0x000067E8
	 { 70, 835, -1435, 0, 831, 0, 215, 182, 90, 255 }, // 0x000067F8
	 { 67, 803, -1432, 0, 192, 75, 158, 142, 111, 255 }, // 0x00006808
	 { 72, 791, -1443, 0, 0, 512, 69, 62, 48, 255 }, // 0x00006818
};

Vtx_t _jyasinzou_room_25_vertices_00006828[10] = 
{
	 { 7, 893, -1481, 0, -933, 111, 158, 142, 111, 255 }, // 0x00006828
	 { 60, 863, -1456, 0, -258, 1275, 203, 195, 178, 255 }, // 0x00006838
	 { 20, 925, -1513, 0, -325, -604, 69, 62, 48, 255 }, // 0x00006848
	 { 40, 841, -1452, 0, -720, 1391, 147, 131, 97, 255 }, // 0x00006858
	 { 113, 893, -1481, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x00006868
	 { 63, 956, -1570, 0, 1024, -1430, 81, 72, 55, 255 }, // 0x00006878
	 { -88, 949, -1558, 0, -1884, -2470, 100, 89, 67, 255 }, // 0x00006888
	 { 31, 964, -1584, 0, 587, -2000, 81, 72, 55, 255 }, // 0x00006898
	 { 17, 979, -1630, 0, 753, -2987, 69, 62, 48, 255 }, // 0x000068A8
	 { -88, 949, -1630, 0, -1281, -3562, 81, 72, 55, 255 }, // 0x000068B8
};

Vtx_t _jyasinzou_room_25_vertices_000068C8[4] = 
{
	 { -142, 949, -1545, 0, 2122, 2048, 213, 206, 192, 255 }, // 0x000068C8
	 { -88, 949, -1558, 0, 1868, 718, 100, 89, 67, 255 }, // 0x000068D8
	 { -88, 949, -1630, 0, 117, 718, 81, 72, 55, 255 }, // 0x000068E8
	 { -142, 949, -1632, 0, 0, 2048, 69, 62, 48, 255 }, // 0x000068F8
};

Vtx_t _jyasinzou_room_25_vertices_00006908[3] = 
{
	 { 63, 956, -1570, 0, 1024, -1430, 81, 72, 55, 255 }, // 0x00006908
	 { 31, 964, -1584, 0, 587, -2000, 81, 72, 55, 255 }, // 0x00006918
	 { 20, 925, -1513, 0, -325, -604, 69, 62, 48, 255 }, // 0x00006928
};

Vtx_t _jyasinzou_room_25_vertices_00006938[6] = 
{
	 { -142, 949, -1545, 0, 2072, 2048, 213, 206, 192, 255 }, // 0x00006938
	 { -102, 868, -1546, 0, 0, 2048, 100, 89, 67, 255 }, // 0x00006948
	 { -64, 919, -1532, 0, 371, 546, 115, 102, 78, 255 }, // 0x00006958
	 { -88, 949, -1558, 0, 620, 709, 100, 89, 67, 255 }, // 0x00006968
	 { -142, 949, -1545, 0, 0, 2048, 213, 206, 192, 255 }, // 0x00006978
	 { -64, 919, -1532, 0, 1613, 524, 115, 102, 78, 255 }, // 0x00006988
};

Vtx_t _jyasinzou_room_25_vertices_00006998[5] = 
{
	 { -64, 919, -1532, 0, -1748, -1559, 115, 102, 78, 255 }, // 0x00006998
	 { 31, 964, -1584, 0, 587, -2000, 81, 72, 55, 255 }, // 0x000069A8
	 { -88, 949, -1558, 0, -1884, -2470, 100, 89, 67, 255 }, // 0x000069B8
	 { 7, 893, -1481, 0, -933, 111, 158, 142, 111, 255 }, // 0x000069C8
	 { 20, 925, -1513, 0, -325, -604, 69, 62, 48, 255 }, // 0x000069D8
};

Vtx_t _jyasinzou_room_25_vertices_000069E8[7] = 
{
	 { 49, 791, -1443, 0, 1024, 0, 147, 131, 97, 255 }, // 0x000069E8
	 { 40, 841, -1452, 0, 308, 339, 147, 131, 97, 255 }, // 0x000069F8
	 { -33, 817, -1433, 0, 1024, 1024, 177, 164, 138, 255 }, // 0x00006A08
	 { 7, 893, -1481, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00006A18
	 { 7, 893, -1481, 0, 1024, 0, 158, 142, 111, 255 }, // 0x00006A28
	 { -54, 885, -1499, 0, 419, 213, 189, 178, 157, 255 }, // 0x00006A38
	 { -33, 817, -1433, 0, 1024, 1024, 177, 164, 138, 255 }, // 0x00006A48
};

Vtx_t _jyasinzou_room_25_vertices_00006A58[3] = 
{
	 { 7, 893, -1481, 0, 1024, 0, 158, 142, 111, 255 }, // 0x00006A58
	 { -64, 919, -1532, 0, -995, 0, 115, 102, 78, 255 }, // 0x00006A68
	 { -54, 885, -1499, 0, -230, 700, 189, 178, 157, 255 }, // 0x00006A78
};

Vtx_t _jyasinzou_room_25_vertices_00006A88[3] = 
{
	 { -33, 817, -1433, 0, 1024, 1024, 177, 164, 138, 255 }, // 0x00006A88
	 { -54, 885, -1499, 0, 419, 213, 189, 178, 157, 255 }, // 0x00006A98
	 { -79, 798, -1524, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00006AA8
};

Vtx_t _jyasinzou_room_25_vertices_00006AB8[4] = 
{
	 { -54, 885, -1499, 0, -230, 700, 189, 178, 157, 255 }, // 0x00006AB8
	 { -102, 868, -1546, 0, -1612, 1063, 100, 89, 67, 255 }, // 0x00006AC8
	 { -79, 798, -1524, 0, -436, 2135, 81, 72, 55, 255 }, // 0x00006AD8
	 { -64, 919, -1532, 0, -995, 0, 115, 102, 78, 255 }, // 0x00006AE8
};

Vtx_t _jyasinzou_room_25_vertices_00006AF8[10] = 
{
	 { 262, 949, -1632, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00006AF8
	 { 208, 949, -1630, 0, 117, 718, 81, 72, 55, 255 }, // 0x00006B08
	 { 208, 949, -1558, 0, 1868, 718, 100, 89, 67, 255 }, // 0x00006B18
	 { 262, 949, -1545, 0, 2122, 2048, 213, 206, 192, 255 }, // 0x00006B28
	 { 184, 919, -1532, 0, 1613, 524, 115, 102, 78, 255 }, // 0x00006B38
	 { 262, 949, -1545, 0, 0, 2048, 213, 206, 192, 255 }, // 0x00006B48
	 { 208, 949, -1558, 0, 620, 709, 100, 89, 67, 255 }, // 0x00006B58
	 { 184, 919, -1532, 0, 371, 546, 115, 102, 78, 255 }, // 0x00006B68
	 { 222, 868, -1546, 0, 0, 2048, 100, 89, 67, 255 }, // 0x00006B78
	 { 262, 949, -1545, 0, 2072, 2048, 213, 206, 192, 255 }, // 0x00006B88
};

Vtx_t _jyasinzou_room_25_vertices_00006B98[3] = 
{
	 { 91, 962, -1584, 0, 1686, -1464, 81, 72, 55, 255 }, // 0x00006B98
	 { 63, 956, -1570, 0, 1024, -1430, 81, 72, 55, 255 }, // 0x00006BA8
	 { 113, 893, -1481, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x00006BB8
};

Vtx_t _jyasinzou_room_25_vertices_00006BC8[7] = 
{
	 { 154, 817, -1433, 0, 1024, 1024, 177, 164, 138, 255 }, // 0x00006BC8
	 { 80, 841, -1452, 0, 308, 339, 147, 131, 97, 255 }, // 0x00006BD8
	 { 72, 791, -1443, 0, 1024, 0, 147, 131, 97, 255 }, // 0x00006BE8
	 { 113, 893, -1481, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00006BF8
	 { 154, 817, -1433, 0, 1024, 1024, 177, 164, 138, 255 }, // 0x00006C08
	 { 174, 885, -1499, 0, 419, 213, 189, 178, 157, 255 }, // 0x00006C18
	 { 113, 893, -1481, 0, 1024, 0, 158, 142, 111, 255 }, // 0x00006C28
};

Vtx_t _jyasinzou_room_25_vertices_00006C38[3] = 
{
	 { 174, 885, -1499, 0, -230, 700, 189, 178, 157, 255 }, // 0x00006C38
	 { 185, 919, -1532, 0, -995, 0, 115, 102, 78, 255 }, // 0x00006C48
	 { 113, 893, -1481, 0, 1024, 0, 158, 142, 111, 255 }, // 0x00006C58
};

Vtx_t _jyasinzou_room_25_vertices_00006C68[3] = 
{
	 { 199, 798, -1524, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00006C68
	 { 174, 885, -1499, 0, 419, 213, 189, 178, 157, 255 }, // 0x00006C78
	 { 154, 817, -1433, 0, 1024, 1024, 177, 164, 138, 255 }, // 0x00006C88
};

Vtx_t _jyasinzou_room_25_vertices_00006C98[4] = 
{
	 { 199, 798, -1524, 0, -436, 2135, 81, 72, 55, 255 }, // 0x00006C98
	 { 222, 868, -1546, 0, -1612, 1063, 100, 89, 67, 255 }, // 0x00006CA8
	 { 174, 885, -1499, 0, -230, 700, 189, 178, 157, 255 }, // 0x00006CB8
	 { 185, 919, -1532, 0, -995, 0, 115, 102, 78, 255 }, // 0x00006CC8
};

Vtx_t _jyasinzou_room_25_vertices_00006CD8[3] = 
{
	 { 49, 791, -1443, 0, 1403, 435, 147, 131, 97, 255 }, // 0x00006CD8
	 { 60, 759, -1452, 0, 891, 2048, 35, 31, 25, 255 }, // 0x00006CE8
	 { 72, 791, -1443, 0, 379, 435, 147, 131, 97, 255 }, // 0x00006CF8
};

Vtx_t _jyasinzou_room_25_vertices_00006D08[9] = 
{
	 { 104, 979, -1630, 0, 2362, -2236, 35, 31, 25, 255 }, // 0x00006D08
	 { 209, 949, -1558, 0, 3591, 86, 100, 89, 67, 255 }, // 0x00006D18
	 { 209, 949, -1630, 0, 4194, -1006, 81, 72, 55, 255 }, // 0x00006D28
	 { 104, 979, -1630, 0, 2362, -2236, 52, 49, 38, 255 }, // 0x00006D38
	 { 185, 919, -1532, 0, 2849, 587, 115, 102, 78, 255 }, // 0x00006D48
	 { 91, 962, -1584, 0, 1686, -1464, 81, 72, 55, 255 }, // 0x00006D58
	 { 113, 893, -1481, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x00006D68
	 { 60, 863, -1456, 0, -258, 1275, 203, 195, 178, 255 }, // 0x00006D78
	 { 80, 841, -1452, 0, 11, 1733, 147, 131, 97, 255 }, // 0x00006D88
};

Vtx_t _jyasinzou_room_25_vertices_00006D98[8] = 
{
	 { -142, 739, -1475, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D98
	 { 262, 739, -1475, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006DA8
	 { -142, 956, -1657, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006DB8
	 { 262, 956, -1657, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006DC8
	 { -142, 803, -1399, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006DD8
	 { 262, 803, -1399, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006DE8
	 { -142, 1020, -1581, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006DF8
	 { 262, 1020, -1581, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006E08
};

Gfx _jyasinzou_room_25_dlist_00006E18[] =
{
	gsDPPipeSync(), // 0x00006E18
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006E20
	gsSPVertex(_jyasinzou_room_25_vertices_00006D98, 8, 0), // 0x00006E28
	gsSPCullDisplayList(0, 7), // 0x00006E30
	gsDPPipeSync(), // 0x00006E38
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006E40
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006E48
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006E50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019120), // 0x00006E58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00006E60
	gsDPLoadSync(), // 0x00006E68
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00006E70
	gsDPPipeSync(), // 0x00006E78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x00006E80
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00006E88
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006E90
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006E98
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00006EA0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00006EA8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006EB0
	gsSPVertex(_jyasinzou_room_25_vertices_000066B8, 23, 0), // 0x00006EB8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00006EC0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006EC8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00006ED0
	gsSP2Triangles(3, 1, 12, 0, 13, 14, 15, 0), // 0x00006ED8
	gsSP2Triangles(13, 15, 16, 0, 0, 17, 1, 0), // 0x00006EE0
	gsSP2Triangles(17, 18, 1, 0, 19, 20, 21, 0), // 0x00006EE8
	gsSP2Triangles(19, 21, 22, 0, 12, 1, 18, 0), // 0x00006EF0
	gsDPPipeSync(), // 0x00006EF8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00006F00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F298), // 0x00006F08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006F10
	gsDPLoadSync(), // 0x00006F18
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00006F20
	gsDPPipeSync(), // 0x00006F28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006F30
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006F38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000B8A0), // 0x00006F40
	gsDPTileSync(), // 0x00006F48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00006F50
	gsDPLoadSync(), // 0x00006F58
	gsDPLoadTLUTCmd(7, 255), // 0x00006F60
	gsDPPipeSync(), // 0x00006F68
	gsSPVertex(_jyasinzou_room_25_vertices_00006828, 10, 0), // 0x00006F70
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00006F78
	gsSP2Triangles(4, 2, 1, 0, 4, 5, 2, 0), // 0x00006F80
	gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0), // 0x00006F88
	gsDPPipeSync(), // 0x00006F90
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F698), // 0x00006F98
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00006FA0
	gsDPLoadSync(), // 0x00006FA8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006FB0
	gsDPPipeSync(), // 0x00006FB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00006FC0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006FC8
	gsSPVertex(_jyasinzou_room_25_vertices_000068C8, 4, 0), // 0x00006FD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006FD8
	gsDPPipeSync(), // 0x00006FE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F298), // 0x00006FE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006FF0
	gsDPLoadSync(), // 0x00006FF8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007000
	gsDPPipeSync(), // 0x00007008
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007010
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007018
	gsSPVertex(_jyasinzou_room_25_vertices_00006908, 3, 0), // 0x00007020
	gsSP1Triangle(0, 1, 2, 0), // 0x00007028
	gsDPPipeSync(), // 0x00007030
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F698), // 0x00007038
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00007040
	gsDPLoadSync(), // 0x00007048
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00007050
	gsDPPipeSync(), // 0x00007058
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00007060
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00007068
	gsSPVertex(_jyasinzou_room_25_vertices_00006938, 6, 0), // 0x00007070
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00007078
	gsDPPipeSync(), // 0x00007080
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F298), // 0x00007088
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007090
	gsDPLoadSync(), // 0x00007098
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000070A0
	gsDPPipeSync(), // 0x000070A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000070B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000070B8
	gsSPVertex(_jyasinzou_room_25_vertices_00006998, 5, 0), // 0x000070C0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0), // 0x000070C8
	gsSP1Triangle(4, 1, 0, 0), // 0x000070D0
	gsDPPipeSync(), // 0x000070D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00010798), // 0x000070E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x000070E8
	gsDPLoadSync(), // 0x000070F0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000070F8
	gsDPPipeSync(), // 0x00007100
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00007108
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007110
	gsSPVertex(_jyasinzou_room_25_vertices_000069E8, 7, 0), // 0x00007118
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00007120
	gsSP1Triangle(4, 5, 6, 0), // 0x00007128
	gsDPPipeSync(), // 0x00007130
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F298), // 0x00007138
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007140
	gsDPLoadSync(), // 0x00007148
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007150
	gsDPPipeSync(), // 0x00007158
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007160
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007168
	gsSPVertex(_jyasinzou_room_25_vertices_00006A58, 3, 0), // 0x00007170
	gsSP1Triangle(0, 1, 2, 0), // 0x00007178
	gsDPPipeSync(), // 0x00007180
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00010798), // 0x00007188
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00007190
	gsDPLoadSync(), // 0x00007198
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000071A0
	gsDPPipeSync(), // 0x000071A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x000071B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000071B8
	gsSPVertex(_jyasinzou_room_25_vertices_00006A88, 3, 0), // 0x000071C0
	gsSP1Triangle(0, 1, 2, 0), // 0x000071C8
	gsDPPipeSync(), // 0x000071D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F298), // 0x000071D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000071E0
	gsDPLoadSync(), // 0x000071E8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000071F0
	gsDPPipeSync(), // 0x000071F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007200
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007208
	gsSPVertex(_jyasinzou_room_25_vertices_00006AB8, 4, 0), // 0x00007210
	gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0), // 0x00007218
	gsDPPipeSync(), // 0x00007220
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F698), // 0x00007228
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00007230
	gsDPLoadSync(), // 0x00007238
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00007240
	gsDPPipeSync(), // 0x00007248
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00007250
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00007258
	gsSPVertex(_jyasinzou_room_25_vertices_00006AF8, 10, 0), // 0x00007260
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007268
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00007270
	gsDPPipeSync(), // 0x00007278
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F298), // 0x00007280
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007288
	gsDPLoadSync(), // 0x00007290
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007298
	gsDPPipeSync(), // 0x000072A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000072A8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000072B0
	gsSPVertex(_jyasinzou_room_25_vertices_00006B98, 3, 0), // 0x000072B8
	gsSP1Triangle(0, 1, 2, 0), // 0x000072C0
	gsDPPipeSync(), // 0x000072C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00010798), // 0x000072D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x000072D8
	gsDPLoadSync(), // 0x000072E0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000072E8
	gsDPPipeSync(), // 0x000072F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x000072F8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007300
	gsSPVertex(_jyasinzou_room_25_vertices_00006BC8, 7, 0), // 0x00007308
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00007310
	gsSP1Triangle(4, 5, 6, 0), // 0x00007318
	gsDPPipeSync(), // 0x00007320
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F298), // 0x00007328
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007330
	gsDPLoadSync(), // 0x00007338
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007340
	gsDPPipeSync(), // 0x00007348
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007350
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007358
	gsSPVertex(_jyasinzou_room_25_vertices_00006C38, 3, 0), // 0x00007360
	gsSP1Triangle(0, 1, 2, 0), // 0x00007368
	gsDPPipeSync(), // 0x00007370
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00010798), // 0x00007378
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00007380
	gsDPLoadSync(), // 0x00007388
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007390
	gsDPPipeSync(), // 0x00007398
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x000073A0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000073A8
	gsSPVertex(_jyasinzou_room_25_vertices_00006C68, 3, 0), // 0x000073B0
	gsSP1Triangle(0, 1, 2, 0), // 0x000073B8
	gsDPPipeSync(), // 0x000073C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F298), // 0x000073C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000073D0
	gsDPLoadSync(), // 0x000073D8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000073E0
	gsDPPipeSync(), // 0x000073E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000073F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000073F8
	gsSPVertex(_jyasinzou_room_25_vertices_00006C98, 4, 0), // 0x00007400
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0), // 0x00007408
	gsDPPipeSync(), // 0x00007410
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F698), // 0x00007418
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00007420
	gsDPLoadSync(), // 0x00007428
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00007430
	gsDPPipeSync(), // 0x00007438
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00007440
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00007448
	gsSPVertex(_jyasinzou_room_25_vertices_00006CD8, 3, 0), // 0x00007450
	gsSP1Triangle(0, 1, 2, 0), // 0x00007458
	gsDPPipeSync(), // 0x00007460
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F298), // 0x00007468
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007470
	gsDPLoadSync(), // 0x00007478
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007480
	gsDPPipeSync(), // 0x00007488
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007490
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007498
	gsSPVertex(_jyasinzou_room_25_vertices_00006D08, 9, 0), // 0x000074A0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0), // 0x000074A8
	gsSP2Triangles(4, 3, 5, 0, 4, 5, 6, 0), // 0x000074B0
	gsSP1Triangle(7, 8, 6, 0), // 0x000074B8
	gsSPEndDisplayList(), // 0x000074C0
};

Vtx_t _jyasinzou_room_25_vertices_000074C8[10] = 
{
	 { 60, 586, -1475, 0, 2432, -468, 213, 206, 192, 255 }, // 0x000074C8
	 { 122, 591, -1523, 0, 1568, -398, 134, 119, 89, 255 }, // 0x000074D8
	 { 133, 727, -1517, 0, 1500, 1315, 69, 62, 48, 255 }, // 0x000074E8
	 { 60, 695, -1477, 0, 2434, 911, 147, 131, 97, 255 }, // 0x000074F8
	 { 146, 528, -1515, 0, 1387, -1190, 158, 142, 111, 255 }, // 0x00007508
	 { 146, 528, -1515, 0, 11115, -1190, 158, 142, 111, 255 }, // 0x00007518
	 { 203, 567, -1626, 0, 9690, -706, 81, 72, 55, 255 }, // 0x00007528
	 { 122, 591, -1523, 0, 11296, -398, 134, 119, 89, 255 }, // 0x00007538
	 { 169, 602, -1623, 0, 9728, -256, 69, 62, 48, 255 }, // 0x00007548
	 { 60, 511, -1463, 0, 2430, -1409, 198, 188, 168, 255 }, // 0x00007558
};

Vtx_t _jyasinzou_room_25_vertices_00007568[3] = 
{
	 { 203, 567, -1626, 0, -129, -12, 81, 72, 55, 255 }, // 0x00007568
	 { 146, 528, -1515, 0, 2531, 36, 158, 142, 111, 255 }, // 0x00007578
	 { 221, 549, -1630, 0, -147, 1024, 81, 72, 55, 255 }, // 0x00007588
};

Vtx_t _jyasinzou_room_25_vertices_00007598[9] = 
{
	 { -13, 727, -1517, 0, 3369, 1311, 69, 62, 48, 255 }, // 0x00007598
	 { -2, 591, -1523, 0, 3296, -401, 134, 119, 89, 255 }, // 0x000075A8
	 { 60, 586, -1475, 0, 2432, -468, 213, 206, 192, 255 }, // 0x000075B8
	 { 60, 695, -1477, 0, 2434, 911, 147, 131, 97, 255 }, // 0x000075C8
	 { -43, 704, -1623, 0, 4864, 1021, 52, 49, 38, 255 }, // 0x000075D8
	 { -49, 602, -1623, 0, 4864, -261, 69, 62, 48, 255 }, // 0x000075E8
	 { -26, 528, -1515, 0, 3474, -1194, 158, 142, 111, 255 }, // 0x000075F8
	 { -83, 567, -1626, 0, 4902, -713, 81, 72, 55, 255 }, // 0x00007608
	 { 60, 511, -1463, 0, 2430, -1409, 198, 188, 168, 255 }, // 0x00007618
};

Vtx_t _jyasinzou_room_25_vertices_00007628[8] = 
{
	 { -83, 511, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007628
	 { 221, 511, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007638
	 { -83, 727, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007648
	 { 221, 727, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007658
	 { -83, 511, -1463, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007668
	 { 221, 511, -1463, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007678
	 { -83, 727, -1463, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007688
	 { 221, 727, -1463, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007698
};

Gfx _jyasinzou_room_25_dlist_000076A8[] =
{
	gsDPPipeSync(), // 0x000076A8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000076B0
	gsSPVertex(_jyasinzou_room_25_vertices_00007628, 8, 0), // 0x000076B8
	gsSPCullDisplayList(0, 7), // 0x000076C0
	gsDPPipeSync(), // 0x000076C8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000076D0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000076D8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000076E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DA98), // 0x000076E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000076F0
	gsDPLoadSync(), // 0x000076F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007700
	gsDPPipeSync(), // 0x00007708
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007710
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007718
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000B8A0), // 0x00007720
	gsDPTileSync(), // 0x00007728
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00007730
	gsDPLoadSync(), // 0x00007738
	gsDPLoadTLUTCmd(7, 255), // 0x00007740
	gsDPPipeSync(), // 0x00007748
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007750
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007758
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007760
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007768
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007770
	gsSPVertex(_jyasinzou_room_25_vertices_000074C8, 10, 0), // 0x00007778
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00007780
	gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0), // 0x00007788
	gsSP2Triangles(7, 6, 8, 0, 9, 4, 0, 0), // 0x00007790
	gsDPPipeSync(), // 0x00007798
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00010B98), // 0x000077A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000077A8
	gsDPLoadSync(), // 0x000077B0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000077B8
	gsDPPipeSync(), // 0x000077C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000077C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000077D0
	gsSPVertex(_jyasinzou_room_25_vertices_00007568, 3, 0), // 0x000077D8
	gsSP1Triangle(0, 1, 2, 0), // 0x000077E0
	gsDPPipeSync(), // 0x000077E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DA98), // 0x000077F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000077F8
	gsDPLoadSync(), // 0x00007800
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007808
	gsDPPipeSync(), // 0x00007810
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007818
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007820
	gsSPVertex(_jyasinzou_room_25_vertices_00007598, 9, 0), // 0x00007828
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007830
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0), // 0x00007838
	gsSP2Triangles(1, 6, 2, 0, 1, 7, 6, 0), // 0x00007840
	gsSP2Triangles(5, 7, 1, 0, 2, 6, 8, 0), // 0x00007848
	gsSPEndDisplayList(), // 0x00007850
};

Vtx_t _jyasinzou_room_25_vertices_00007858[8] = 
{
	 { 98, 1185, -1405, 0, 1000, 593, 134, 119, 89, 255 }, // 0x00007858
	 { 60, 1215, -1393, 0, 565, 781, 234, 231, 223, 255 }, // 0x00007868
	 { 68, 1154, -1379, 0, 943, 1196, 203, 195, 178, 255 }, // 0x00007878
	 { 53, 1154, -1379, 0, 787, 1297, 203, 195, 178, 255 }, // 0x00007888
	 { 101, 1217, -1423, 0, 815, 238, 177, 164, 138, 255 }, // 0x00007898
	 { 19, 1199, -1436, 0, -22, 667, 115, 102, 78, 255 }, // 0x000078A8
	 { 23, 1185, -1405, 0, 213, 1100, 134, 119, 89, 255 }, // 0x000078B8
	 { 20, 1217, -1423, 0, -33, 785, 177, 164, 138, 255 }, // 0x000078C8
};

Vtx_t _jyasinzou_room_25_vertices_000078D8[8] = 
{
	 { 19, 1152, -1380, 0, 0, 0, 0, 0, 0, 0 }, // 0x000078D8
	 { 101, 1152, -1380, 0, 0, 0, 0, 0, 0, 0 }, // 0x000078E8
	 { 19, 1200, -1437, 0, 0, 0, 0, 0, 0, 0 }, // 0x000078F8
	 { 101, 1200, -1437, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007908
	 { 19, 1183, -1355, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007918
	 { 101, 1183, -1355, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007928
	 { 19, 1230, -1411, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007938
	 { 101, 1230, -1411, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007948
};

Gfx _jyasinzou_room_25_dlist_00007958[] =
{
	gsDPPipeSync(), // 0x00007958
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007960
	gsSPVertex(_jyasinzou_room_25_vertices_000078D8, 8, 0), // 0x00007968
	gsSPCullDisplayList(0, 7), // 0x00007970
	gsDPPipeSync(), // 0x00007978
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007980
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00007988
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007990
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000FE98), // 0x00007998
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x000079A0
	gsDPLoadSync(), // 0x000079A8
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x000079B0
	gsDPPipeSync(), // 0x000079B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x000079C0
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x000079C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000B8A0), // 0x000079D0
	gsDPTileSync(), // 0x000079D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000079E0
	gsDPLoadSync(), // 0x000079E8
	gsDPLoadTLUTCmd(7, 255), // 0x000079F0
	gsDPPipeSync(), // 0x000079F8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007A00
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007A08
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007A10
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007A18
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007A20
	gsSPVertex(_jyasinzou_room_25_vertices_00007858, 8, 0), // 0x00007A28
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00007A30
	gsSP2Triangles(4, 1, 0, 0, 5, 6, 7, 0), // 0x00007A38
	gsSP2Triangles(6, 1, 7, 0, 3, 1, 6, 0), // 0x00007A40
	gsSPEndDisplayList(), // 0x00007A48
};

Vtx_t _jyasinzou_room_25_vertices_00007A50[11] = 
{
	 { 119, 1007, -1630, 0, 1062, 1296, 115, 102, 78, 255 }, // 0x00007A50
	 { 128, 1022, -1594, 0, 1245, 1606, 81, 72, 55, 255 }, // 0x00007A60
	 { 137, 1038, -1630, 0, 1309, 1360, 115, 102, 78, 255 }, // 0x00007A70
	 { 199, 1002, -1630, 0, 90, 1114, 115, 102, 78, 255 }, // 0x00007A80
	 { 175, 995, -1594, 0, -91, 1294, 81, 72, 55, 255 }, // 0x00007A90
	 { 221, 968, -1594, 0, 90, 1474, 81, 72, 55, 255 }, // 0x00007AA0
	 { 230, 984, -1630, 0, 270, 1294, 115, 102, 78, 255 }, // 0x00007AB0
	 { 137, 1038, -1630, 0, -42, 1024, 115, 102, 78, 255 }, // 0x00007AC0
	 { 128, 1022, -1594, 0, -42, 1279, 81, 72, 55, 255 }, // 0x00007AD0
	 { 175, 995, -1594, 0, 213, 1279, 81, 72, 55, 255 }, // 0x00007AE0
	 { 168, 1020, -1630, 0, 213, 1024, 115, 102, 78, 255 }, // 0x00007AF0
};

Vtx_t _jyasinzou_room_25_vertices_00007B00[4] = 
{
	 { 144, 957, -1594, 0, 2169, 1843, 81, 72, 55, 255 }, // 0x00007B00
	 { 175, 995, -1594, 0, 2371, 1895, 81, 72, 55, 255 }, // 0x00007B10
	 { 150, 989, -1630, 0, 2434, 1648, 52, 49, 38, 255 }, // 0x00007B20
	 { 127, 957, -1630, 0, 2263, 1604, 52, 49, 38, 255 }, // 0x00007B30
};

Vtx_t _jyasinzou_room_25_vertices_00007B40[32] = 
{
	 { 3, 954, -1502, 0, 1450, 473, 198, 188, 168, 255 }, // 0x00007B40
	 { -11, 922, -1520, 0, 1877, 687, 115, 102, 78, 255 }, // 0x00007B50
	 { 34, 903, -1493, 0, 1691, -133, 147, 131, 97, 255 }, // 0x00007B60
	 { 3, 954, -1502, 0, 2454, 1541, 198, 188, 168, 255 }, // 0x00007B70
	 { -25, 1007, -1549, 0, 2411, 604, 177, 164, 138, 255 }, // 0x00007B80
	 { -11, 922, -1520, 0, 1689, 1389, 115, 102, 78, 255 }, // 0x00007B90
	 { 16, 971, -1513, 0, 2663, 1342, 198, 188, 168, 255 }, // 0x00007BA0
	 { 2, 1013, -1571, 0, 2613, 364, 100, 89, 67, 255 }, // 0x00007BB0
	 { 22, 957, -1546, 0, 406, 969, 81, 72, 55, 255 }, // 0x00007BC0
	 { 2, 1013, -1571, 0, 47, 364, 100, 89, 67, 255 }, // 0x00007BD0
	 { 16, 971, -1513, 0, 97, 1342, 198, 188, 168, 255 }, // 0x00007BE0
	 { 17, 979, -1630, 0, 517, -263, 69, 62, 48, 255 }, // 0x00007BF0
	 { 169, 960, -1630, 0, 2481, -813, 81, 72, 55, 255 }, // 0x00007C00
	 { 165, 956, -1535, 0, 2658, 657, 147, 131, 97, 255 }, // 0x00007C10
	 { 189, 984, -1619, 0, 2699, -854, 81, 72, 55, 255 }, // 0x00007C20
	 { 150, 940, -1557, 0, 2460, 509, 147, 131, 97, 255 }, // 0x00007C30
	 { 189, 984, -1619, 0, -31, -840, 81, 72, 55, 255 }, // 0x00007C40
	 { 183, 944, -1522, 0, 174, 708, 147, 131, 97, 255 }, // 0x00007C50
	 { 215, 972, -1621, 0, 212, -890, 81, 72, 55, 255 }, // 0x00007C60
	 { 165, 956, -1535, 0, -73, 671, 147, 131, 97, 255 }, // 0x00007C70
	 { 97, 933, -1521, 0, 1082, -739, 100, 89, 67, 255 }, // 0x00007C80
	 { 16, 971, -1513, 0, 1210, 373, 198, 188, 168, 255 }, // 0x00007C90
	 { 99, 942, -1487, 0, 1283, -836, 198, 188, 168, 255 }, // 0x00007CA0
	 { 22, 957, -1546, 0, 996, 295, 81, 72, 55, 255 }, // 0x00007CB0
	 { 105, 925, -1476, 0, 1504, -953, 198, 188, 168, 255 }, // 0x00007CC0
	 { 150, 940, -1557, 0, 2444, -834, 147, 131, 97, 255 }, // 0x00007CD0
	 { 97, 933, -1521, 0, 2478, 560, 100, 89, 67, 255 }, // 0x00007CE0
	 { 165, 956, -1535, 0, 2663, -872, 147, 131, 97, 255 }, // 0x00007CF0
	 { 99, 942, -1487, 0, 2680, 736, 198, 188, 168, 255 }, // 0x00007D00
	 { 165, 956, -1535, 0, -68, -858, 147, 131, 97, 255 }, // 0x00007D10
	 { 99, 942, -1487, 0, -50, 750, 198, 188, 168, 255 }, // 0x00007D20
	 { 183, 944, -1522, 0, 177, -892, 147, 131, 97, 255 }, // 0x00007D30
};

Vtx_t _jyasinzou_room_25_vertices_00007D40[3] = 
{
	 { 99, 942, -1487, 0, -50, 750, 198, 188, 168, 255 }, // 0x00007D40
	 { 105, 925, -1476, 0, 207, 759, 198, 188, 168, 255 }, // 0x00007D50
	 { 183, 944, -1522, 0, 177, -892, 147, 131, 97, 255 }, // 0x00007D60
};

Vtx_t _jyasinzou_room_25_vertices_00007D70[8] = 
{
	 { -25, 900, -1485, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007D70
	 { 230, 900, -1485, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007D80
	 { -25, 963, -1658, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007D90
	 { 230, 963, -1658, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007DA0
	 { -25, 975, -1458, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007DB0
	 { 230, 975, -1458, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007DC0
	 { -25, 1038, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007DD0
	 { 230, 1038, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007DE0
};

Gfx _jyasinzou_room_25_dlist_00007DF0[] =
{
	gsDPPipeSync(), // 0x00007DF0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007DF8
	gsSPVertex(_jyasinzou_room_25_vertices_00007D70, 8, 0), // 0x00007E00
	gsSPCullDisplayList(0, 7), // 0x00007E08
	gsDPPipeSync(), // 0x00007E10
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007E18
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00007E20
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007E28
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000F298), // 0x00007E30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007E38
	gsDPLoadSync(), // 0x00007E40
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007E48
	gsDPPipeSync(), // 0x00007E50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007E58
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007E60
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000B8A0), // 0x00007E68
	gsDPTileSync(), // 0x00007E70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00007E78
	gsDPLoadSync(), // 0x00007E80
	gsDPLoadTLUTCmd(7, 255), // 0x00007E88
	gsDPPipeSync(), // 0x00007E90
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007E98
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007EA0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007EA8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007EB0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007EB8
	gsSPVertex(_jyasinzou_room_25_vertices_00007A50, 11, 0), // 0x00007EC0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00007EC8
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x00007ED0
	gsSP1Triangle(7, 9, 10, 0), // 0x00007ED8
	gsDPPipeSync(), // 0x00007EE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DA98), // 0x00007EE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007EF0
	gsDPLoadSync(), // 0x00007EF8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007F00
	gsDPPipeSync(), // 0x00007F08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007F10
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007F18
	gsSPVertex(_jyasinzou_room_25_vertices_00007B00, 4, 0), // 0x00007F20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007F28
	gsDPPipeSync(), // 0x00007F30
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000FE98), // 0x00007F38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00007F40
	gsDPLoadSync(), // 0x00007F48
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00007F50
	gsDPPipeSync(), // 0x00007F58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x00007F60
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00007F68
	gsSPVertex(_jyasinzou_room_25_vertices_00007B40, 32, 0), // 0x00007F70
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00007F78
	gsSP2Triangles(6, 4, 3, 0, 7, 4, 6, 0), // 0x00007F80
	gsSP2Triangles(8, 9, 10, 0, 11, 9, 8, 0), // 0x00007F88
	gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0), // 0x00007F90
	gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0), // 0x00007F98
	gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0), // 0x00007FA0
	gsSP2Triangles(22, 0, 24, 0, 22, 21, 0, 0), // 0x00007FA8
	gsSP2Triangles(24, 0, 2, 0, 25, 26, 27, 0), // 0x00007FB0
	gsSP2Triangles(26, 28, 27, 0, 29, 30, 31, 0), // 0x00007FB8
	gsSPVertex(_jyasinzou_room_25_vertices_00007D40, 3, 0), // 0x00007FC0
	gsSP1Triangle(0, 1, 2, 0), // 0x00007FC8
	gsSPEndDisplayList(), // 0x00007FD0
};

Vtx_t _jyasinzou_room_25_vertices_00007FD8[14] = 
{
	 { 183, 408, -1399, 0, 504, 264, 52, 49, 38, 255 }, // 0x00007FD8
	 { 167, 425, -1379, 0, 949, 379, 213, 206, 192, 255 }, // 0x00007FE8
	 { 257, 377, -1365, 0, 736, -1076, 134, 119, 89, 255 }, // 0x00007FF8
	 { 167, 425, -1379, 0, 1132, 580, 213, 206, 192, 255 }, // 0x00008008
	 { 146, 420, -1370, 0, 1308, 722, 213, 206, 192, 255 }, // 0x00008018
	 { 257, 377, -1365, 0, 1231, -1079, 134, 119, 89, 255 }, // 0x00008028
	 { 14, 514, -1471, 0, 980, 474, 213, 206, 192, 255 }, // 0x00008038
	 { 167, 425, -1379, 0, 940, -868, 213, 206, 192, 255 }, // 0x00008048
	 { 183, 408, -1399, 0, 519, -914, 52, 49, 38, 255 }, // 0x00008058
	 { 32, 504, -1479, 0, 571, 386, 52, 49, 38, 255 }, // 0x00008068
	 { -2, 492, -1465, 0, 1606, 646, 213, 206, 192, 255 }, // 0x00008078
	 { 146, 420, -1370, 0, 1390, -784, 213, 206, 192, 255 }, // 0x00008088
	 { 167, 425, -1379, 0, 1173, -807, 213, 206, 192, 255 }, // 0x00008098
	 { 14, 514, -1471, 0, 1288, 591, 213, 206, 192, 255 }, // 0x000080A8
};

Vtx_t _jyasinzou_room_25_vertices_000080B8[7] = 
{
	 { 204, 333, -1345, 0, 382, 978, 69, 62, 48, 255 }, // 0x000080B8
	 { 191, 362, -1345, 0, 363, 866, 115, 102, 78, 255 }, // 0x000080C8
	 { 178, 362, -1300, 0, 0, 1024, 158, 142, 111, 255 }, // 0x000080D8
	 { 204, 333, -1345, 0, 1300, -367, 69, 62, 48, 255 }, // 0x000080E8
	 { 178, 362, -1300, 0, 1137, -450, 158, 142, 111, 255 }, // 0x000080F8
	 { 182, 333, -1300, 0, 1164, -657, 69, 62, 48, 255 }, // 0x00008108
	 { 126, 388, -1376, 0, 153, 391, 115, 102, 78, 255 }, // 0x00008118
};

Vtx_t _jyasinzou_room_25_vertices_00008128[7] = 
{
	 { 146, 528, -1515, 0, 536, 34, 158, 142, 111, 255 }, // 0x00008128
	 { 159, 477, -1525, 0, 536, 1024, 115, 102, 78, 255 }, // 0x00008138
	 { 221, 549, -1630, 0, -2195, 1024, 81, 72, 55, 255 }, // 0x00008148
	 { 112, 467, -1472, 0, 1445, 1024, 69, 62, 48, 255 }, // 0x00008158
	 { 146, 528, -1515, 0, 317, 82, 158, 142, 111, 255 }, // 0x00008168
	 { 103, 520, -1489, 0, 1242, -9, 177, 164, 138, 255 }, // 0x00008178
	 { 159, 477, -1525, 0, 97, 1024, 115, 102, 78, 255 }, // 0x00008188
};

Vtx_t _jyasinzou_room_25_vertices_00008198[3] = 
{
	 { 112, 467, -1472, 0, -523, 1161, 69, 62, 48, 255 }, // 0x00008198
	 { 157, 432, -1467, 0, -428, 829, 100, 89, 67, 255 }, // 0x000081A8
	 { 159, 477, -1525, 0, 0, 1024, 115, 102, 78, 255 }, // 0x000081B8
};

Vtx_t _jyasinzou_room_25_vertices_000081C8[7] = 
{
	 { 60, 474, -1461, 0, 263, -23, 158, 142, 111, 255 }, // 0x000081C8
	 { 112, 467, -1472, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000081D8
	 { 103, 520, -1489, 0, 1024, 1024, 177, 164, 138, 255 }, // 0x000081E8
	 { 60, 511, -1463, 0, 1024, 0, 198, 188, 168, 255 }, // 0x000081F8
	 { 60, 474, -1461, 0, 141, 132, 158, 142, 111, 255 }, // 0x00008208
	 { 60, 422, -1459, 0, 1024, 1024, 52, 49, 38, 255 }, // 0x00008218
	 { 112, 467, -1472, 0, 1024, -628, 69, 62, 48, 255 }, // 0x00008228
};

Vtx_t _jyasinzou_room_25_vertices_00008238[20] = 
{
	 { 60, 422, -1459, 0, 272, -349, 52, 49, 38, 255 }, // 0x00008238
	 { 157, 432, -1467, 0, 1024, 0, 100, 89, 67, 255 }, // 0x00008248
	 { 112, 467, -1472, 0, 826, -284, 69, 62, 48, 255 }, // 0x00008258
	 { 221, 549, -1630, 0, 1024, 1024, 81, 72, 55, 255 }, // 0x00008268
	 { 442, 481, -1550, 0, 1569, -547, 81, 72, 55, 255 }, // 0x00008278
	 { 348, 443, -1630, 0, 1348, 98, 52, 49, 38, 255 }, // 0x00008288
	 { 370, 537, -1505, 0, 1162, -126, 189, 178, 157, 255 }, // 0x00008298
	 { 159, 477, -1525, 0, 0, 1024, 115, 102, 78, 255 }, // 0x000082A8
	 { 204, 333, -1345, 0, 382, 978, 69, 62, 48, 255 }, // 0x000082B8
	 { 358, 420, -1387, 0, 1932, 1240, 115, 102, 78, 255 }, // 0x000082C8
	 { 191, 362, -1345, 0, 363, 866, 115, 102, 78, 255 }, // 0x000082D8
	 { 231, 424, -1419, 0, 1234, 551, 189, 178, 157, 255 }, // 0x000082E8
	 { 126, 388, -1376, 0, 153, 391, 115, 102, 78, 255 }, // 0x000082F8
	 { 323, 491, -1438, 0, 469, -83, 203, 195, 178, 255 }, // 0x00008308
	 { 231, 424, -1419, 0, -302, 287, 189, 178, 157, 255 }, // 0x00008318
	 { 358, 420, -1387, 0, 190, -523, 115, 102, 78, 255 }, // 0x00008328
	 { 157, 432, -1467, 0, -428, 829, 100, 89, 67, 255 }, // 0x00008338
	 { 157, 432, -1467, 0, -428, 829, 100, 89, 67, 255 }, // 0x00008348
	 { 159, 477, -1525, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00008358
	 { 448, 495, -1462, 0, 1232, -742, 169, 154, 126, 255 }, // 0x00008368
};

Vtx_t _jyasinzou_room_25_vertices_00008378[8] = 
{
	 { 20, 324, -1484, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008378
	 { 208, 324, -1260, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008388
	 { 312, 391, -1729, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008398
	 { 500, 391, -1505, 0, 0, 0, 0, 0, 0, 0 }, // 0x000083A8
	 { -5, 510, -1463, 0, 0, 0, 0, 0, 0, 0 }, // 0x000083B8
	 { 182, 510, -1239, 0, 0, 0, 0, 0, 0, 0 }, // 0x000083C8
	 { 287, 578, -1708, 0, 0, 0, 0, 0, 0, 0 }, // 0x000083D8
	 { 475, 578, -1484, 0, 0, 0, 0, 0, 0, 0 }, // 0x000083E8
};

Gfx _jyasinzou_room_25_dlist_000083F8[] =
{
	gsDPPipeSync(), // 0x000083F8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00008400
	gsSPVertex(_jyasinzou_room_25_vertices_00008378, 8, 0), // 0x00008408
	gsSPCullDisplayList(0, 7), // 0x00008410
	gsDPPipeSync(), // 0x00008418
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008420
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00008428
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008430
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000FE98), // 0x00008438
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00008440
	gsDPLoadSync(), // 0x00008448
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00008450
	gsDPPipeSync(), // 0x00008458
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x00008460
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00008468
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000B8A0), // 0x00008470
	gsDPTileSync(), // 0x00008478
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00008480
	gsDPLoadSync(), // 0x00008488
	gsDPLoadTLUTCmd(7, 255), // 0x00008490
	gsDPPipeSync(), // 0x00008498
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000084A0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000084A8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000084B0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000084B8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000084C0
	gsSPVertex(_jyasinzou_room_25_vertices_00007FD8, 14, 0), // 0x000084C8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000084D0
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x000084D8
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x000084E0
	gsDPPipeSync(), // 0x000084E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000FF98), // 0x000084F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000084F8
	gsDPLoadSync(), // 0x00008500
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008508
	gsDPPipeSync(), // 0x00008510
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008518
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008520
	gsSPVertex(_jyasinzou_room_25_vertices_000080B8, 7, 0), // 0x00008528
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008530
	gsSP1Triangle(6, 2, 1, 0), // 0x00008538
	gsDPPipeSync(), // 0x00008540
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00010B98), // 0x00008548
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008550
	gsDPLoadSync(), // 0x00008558
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008560
	gsDPPipeSync(), // 0x00008568
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008570
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008578
	gsSPVertex(_jyasinzou_room_25_vertices_00008128, 7, 0), // 0x00008580
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008588
	gsSP1Triangle(3, 6, 4, 0), // 0x00008590
	gsDPPipeSync(), // 0x00008598
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000FF98), // 0x000085A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000085A8
	gsDPLoadSync(), // 0x000085B0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000085B8
	gsDPPipeSync(), // 0x000085C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000085C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000085D0
	gsSPVertex(_jyasinzou_room_25_vertices_00008198, 3, 0), // 0x000085D8
	gsSP1Triangle(0, 1, 2, 0), // 0x000085E0
	gsDPPipeSync(), // 0x000085E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00010F98), // 0x000085F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x000085F8
	gsDPLoadSync(), // 0x00008600
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008608
	gsDPPipeSync(), // 0x00008610
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00008618
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008620
	gsSPVertex(_jyasinzou_room_25_vertices_000081C8, 7, 0), // 0x00008628
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00008630
	gsSP1Triangle(4, 5, 6, 0), // 0x00008638
	gsDPPipeSync(), // 0x00008640
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000FF98), // 0x00008648
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008650
	gsDPLoadSync(), // 0x00008658
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008660
	gsDPPipeSync(), // 0x00008668
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008670
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008678
	gsSPVertex(_jyasinzou_room_25_vertices_00008238, 20, 0), // 0x00008680
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008688
	gsSP2Triangles(3, 6, 4, 0, 7, 6, 3, 0), // 0x00008690
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 10, 0), // 0x00008698
	gsSP2Triangles(10, 9, 11, 0, 13, 14, 15, 0), // 0x000086A0
	gsSP2Triangles(13, 16, 14, 0, 1, 12, 11, 0), // 0x000086A8
	gsSP2Triangles(1, 0, 12, 0, 17, 13, 18, 0), // 0x000086B0
	gsSP2Triangles(13, 6, 7, 0, 13, 19, 6, 0), // 0x000086B8
	gsSP2Triangles(15, 19, 13, 0, 6, 19, 4, 0), // 0x000086C0
	gsSPEndDisplayList(), // 0x000086C8
};

Vtx_t _jyasinzou_room_25_vertices_000086D0[21] = 
{
	 { -41, 716, -1599, 0, -1709, 1504, 81, 72, 55, 255 }, // 0x000086D0
	 { -140, 599, -1594, 0, 373, 1878, 198, 188, 168, 255 }, // 0x000086E0
	 { -30, 685, -1594, 0, -1525, 1024, 81, 72, 55, 255 }, // 0x000086F0
	 { -124, 569, -1594, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00008700
	 { -140, 599, -1594, 0, -362, 1709, 198, 188, 168, 255 }, // 0x00008710
	 { -164, 500, -1594, 0, 0, 1024, 52, 49, 38, 255 }, // 0x00008720
	 { -124, 569, -1594, 0, -994, 1024, 158, 142, 111, 255 }, // 0x00008730
	 { -308, 413, -1630, 0, 984, 1587, 52, 49, 38, 255 }, // 0x00008740
	 { -140, 599, -1630, 0, 399, 1126, 115, 102, 78, 255 }, // 0x00008750
	 { -140, 599, -1594, 0, 336, 1373, 198, 188, 168, 255 }, // 0x00008760
	 { -41, 716, -1599, 0, 2386, 1899, 81, 72, 55, 255 }, // 0x00008770
	 { -47, 712, -1625, 0, 2449, 1652, 81, 72, 55, 255 }, // 0x00008780
	 { -308, 413, -1630, 0, 182, 1071, 52, 49, 38, 255 }, // 0x00008790
	 { -140, 599, -1594, 0, 1428, 1653, 198, 188, 168, 255 }, // 0x000087A0
	 { -140, 599, -1630, 0, 1491, 1406, 115, 102, 78, 255 }, // 0x000087B0
	 { -45, 589, -1613, 0, 584, 1608, 52, 49, 38, 255 }, // 0x000087C0
	 { -124, 569, -1594, 0, 404, 1788, 158, 142, 111, 255 }, // 0x000087D0
	 { -151, 447, -1630, 0, 1287, 2311, 52, 49, 38, 255 }, // 0x000087E0
	 { -30, 685, -1594, 0, 225, 1609, 81, 72, 55, 255 }, // 0x000087F0
	 { -124, 569, -1594, 0, 1303, 2688, 158, 142, 111, 255 }, // 0x00008800
	 { -45, 589, -1613, 0, 1483, 2507, 52, 49, 38, 255 }, // 0x00008810
};

Vtx_t _jyasinzou_room_25_vertices_00008820[18] = 
{
	 { 60, 422, -1459, 0, 1909, -85, 52, 49, 38, 255 }, // 0x00008820
	 { 141, 393, -1382, 0, 1884, -800, 52, 49, 38, 255 }, // 0x00008830
	 { 146, 420, -1370, 0, 1390, -784, 213, 206, 192, 255 }, // 0x00008840
	 { -39, 556, -1515, 0, 1244, 824, 134, 119, 89, 255 }, // 0x00008850
	 { 14, 514, -1471, 0, 927, -857, 213, 206, 192, 255 }, // 0x00008860
	 { 32, 504, -1479, 0, 563, -1016, 52, 49, 38, 255 }, // 0x00008870
	 { -18, 555, -1520, 0, 818, 672, 81, 72, 55, 255 }, // 0x00008880
	 { -39, 556, -1515, 0, 1595, 857, 134, 119, 89, 255 }, // 0x00008890
	 { -52, 525, -1514, 0, 1807, 635, 134, 119, 89, 255 }, // 0x000088A0
	 { -2, 492, -1465, 0, 1635, -638, 213, 206, 192, 255 }, // 0x000088B0
	 { 14, 514, -1471, 0, 1277, -671, 213, 206, 192, 255 }, // 0x000088C0
	 { -39, 556, -1515, 0, 1378, -721, 134, 119, 89, 255 }, // 0x000088D0
	 { -49, 602, -1623, 0, 1017, 594, 69, 62, 48, 255 }, // 0x000088E0
	 { -76, 610, -1626, 0, 1423, 714, 69, 62, 48, 255 }, // 0x000088F0
	 { -39, 556, -1515, 0, 1654, -741, 134, 119, 89, 255 }, // 0x00008900
	 { -107, 576, -1630, 0, 1847, 617, 69, 62, 48, 255 }, // 0x00008910
	 { -52, 525, -1514, 0, 1878, -839, 134, 119, 89, 255 }, // 0x00008920
	 { -18, 555, -1520, 0, 990, -774, 81, 72, 55, 255 }, // 0x00008930
};

Vtx_t _jyasinzou_room_25_vertices_00008940[29] = 
{
	 { -125, 419, -1363, 0, 2749, 932, 158, 142, 111, 255 }, // 0x00008940
	 { -241, 391, -1389, 0, 1944, 1330, 69, 62, 48, 255 }, // 0x00008950
	 { -31, 333, -1302, 0, 3677, 2156, 52, 49, 38, 255 }, // 0x00008960
	 { -108, 453, -1415, 0, 1524, 277, 177, 164, 138, 255 }, // 0x00008970
	 { -250, 538, -1505, 0, 224, -274, 169, 154, 126, 255 }, // 0x00008980
	 { -220, 477, -1391, 0, 1186, -472, 147, 131, 97, 255 }, // 0x00008990
	 { -125, 419, -1363, 0, 1854, -10, 158, 142, 111, 255 }, // 0x000089A0
	 { -220, 477, -1391, 0, 2032, 110, 147, 131, 97, 255 }, // 0x000089B0
	 { -322, 429, -1463, 0, 1211, 783, 57, 61, 69, 255 }, // 0x000089C0
	 { -322, 498, -1463, 0, 1211, -186, 81, 72, 55, 255 }, // 0x000089D0
	 { -322, 498, -1463, 0, 295, -877, 81, 72, 55, 255 }, // 0x000089E0
	 { -223, 473, -1638, 0, -366, 229, 69, 62, 48, 255 }, // 0x000089F0
	 { -322, 482, -1550, 0, -220, -634, 52, 49, 38, 255 }, // 0x00008A00
	 { -101, 549, -1630, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00008A10
	 { 8, 467, -1472, 0, 1587, 1169, 115, 102, 78, 255 }, // 0x00008A20
	 { 8, 467, -1472, 0, 1587, 1169, 115, 102, 78, 255 }, // 0x00008A30
	 { -21, 395, -1293, 0, 3774, 1268, 158, 142, 111, 255 }, // 0x00008A40
	 { -21, 395, -1293, 0, 2752, 415, 158, 142, 111, 255 }, // 0x00008A50
	 { 30, 412, -1373, 0, 2415, 975, 147, 131, 97, 255 }, // 0x00008A60
	 { 8, 467, -1472, 0, 1587, 1169, 100, 89, 67, 255 }, // 0x00008A70
	 { 60, 422, -1459, 0, 1967, 1421, 52, 49, 38, 255 }, // 0x00008A80
	 { 8, 467, -1472, 0, 1587, 1169, 100, 89, 67, 255 }, // 0x00008A90
	 { 178, 362, -1300, 0, 5381, 1741, 158, 142, 111, 255 }, // 0x00008AA0
	 { -31, 333, -1302, 0, 3677, 2156, 69, 62, 48, 255 }, // 0x00008AB0
	 { 182, 333, -1300, 0, 5407, 2149, 69, 62, 48, 255 }, // 0x00008AC0
	 { -21, 395, -1293, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00008AD0
	 { 178, 362, -1300, 0, 1813, 1024, 158, 142, 111, 255 }, // 0x00008AE0
	 { 126, 388, -1376, 0, 1412, 455, 115, 102, 78, 255 }, // 0x00008AF0
	 { 30, 412, -1373, 0, 529, 443, 147, 131, 97, 255 }, // 0x00008B00
};

Vtx_t _jyasinzou_room_25_vertices_00008B10[4] = 
{
	 { 17, 520, -1489, 0, 1024, 1024, 177, 164, 138, 255 }, // 0x00008B10
	 { 60, 474, -1461, 0, 263, -23, 158, 142, 111, 255 }, // 0x00008B20
	 { 60, 511, -1463, 0, 1024, 0, 198, 188, 168, 255 }, // 0x00008B30
	 { 8, 467, -1472, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00008B40
};

Vtx_t _jyasinzou_room_25_vertices_00008B50[3] = 
{
	 { -26, 528, -1515, 0, 220, 82, 158, 142, 111, 255 }, // 0x00008B50
	 { 8, 467, -1472, 0, 1348, 1024, 100, 89, 67, 255 }, // 0x00008B60
	 { 17, 520, -1489, 0, 1145, -9, 177, 164, 138, 255 }, // 0x00008B70
};

Vtx_t _jyasinzou_room_25_vertices_00008B80[3] = 
{
	 { 60, 422, -1459, 0, 890, -176, 52, 49, 38, 255 }, // 0x00008B80
	 { 30, 412, -1373, 0, 529, 443, 147, 131, 97, 255 }, // 0x00008B90
	 { 126, 388, -1376, 0, 1412, 455, 115, 102, 78, 255 }, // 0x00008BA0
};

Vtx_t _jyasinzou_room_25_vertices_00008BB0[8] = 
{
	 { -359, 282, -1541, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008BB0
	 { 151, 282, -1247, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008BC0
	 { -186, 572, -1841, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008BD0
	 { 324, 572, -1547, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008BE0
	 { -423, 433, -1431, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008BF0
	 { 87, 433, -1136, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008C00
	 { -250, 724, -1731, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008C10
	 { 260, 724, -1436, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008C20
};

Gfx _jyasinzou_room_25_dlist_00008C30[] =
{
	gsDPPipeSync(), // 0x00008C30
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00008C38
	gsSPVertex(_jyasinzou_room_25_vertices_00008BB0, 8, 0), // 0x00008C40
	gsSPCullDisplayList(0, 7), // 0x00008C48
	gsDPPipeSync(), // 0x00008C50
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008C58
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00008C60
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008C68
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DA98), // 0x00008C70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008C78
	gsDPLoadSync(), // 0x00008C80
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008C88
	gsDPPipeSync(), // 0x00008C90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008C98
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008CA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000B8A0), // 0x00008CA8
	gsDPTileSync(), // 0x00008CB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00008CB8
	gsDPLoadSync(), // 0x00008CC0
	gsDPLoadTLUTCmd(7, 255), // 0x00008CC8
	gsDPPipeSync(), // 0x00008CD0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008CD8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00008CE0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00008CE8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00008CF0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00008CF8
	gsSPVertex(_jyasinzou_room_25_vertices_000086D0, 21, 0), // 0x00008D00
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00008D08
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00008D10
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00008D18
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0), // 0x00008D20
	gsSP1Triangle(18, 19, 20, 0), // 0x00008D28
	gsDPPipeSync(), // 0x00008D30
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000FE98), // 0x00008D38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00008D40
	gsDPLoadSync(), // 0x00008D48
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00008D50
	gsDPPipeSync(), // 0x00008D58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x00008D60
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00008D68
	gsSPVertex(_jyasinzou_room_25_vertices_00008820, 18, 0), // 0x00008D70
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008D78
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x00008D80
	gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0), // 0x00008D88
	gsSP2Triangles(14, 15, 16, 0, 14, 13, 15, 0), // 0x00008D90
	gsSP1Triangle(17, 12, 11, 0), // 0x00008D98
	gsDPPipeSync(), // 0x00008DA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000FF98), // 0x00008DA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008DB0
	gsDPLoadSync(), // 0x00008DB8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008DC0
	gsDPPipeSync(), // 0x00008DC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008DD0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008DD8
	gsSPVertex(_jyasinzou_room_25_vertices_00008940, 29, 0), // 0x00008DE0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008DE8
	gsSP2Triangles(5, 6, 3, 0, 0, 7, 1, 0), // 0x00008DF0
	gsSP2Triangles(8, 1, 7, 0, 9, 8, 7, 0), // 0x00008DF8
	gsSP2Triangles(4, 10, 5, 0, 11, 12, 13, 0), // 0x00008E00
	gsSP2Triangles(12, 4, 13, 0, 12, 10, 4, 0), // 0x00008E08
	gsSP2Triangles(13, 4, 14, 0, 15, 4, 3, 0), // 0x00008E10
	gsSP2Triangles(16, 0, 2, 0, 6, 17, 3, 0), // 0x00008E18
	gsSP2Triangles(18, 19, 3, 0, 18, 3, 17, 0), // 0x00008E20
	gsSP2Triangles(18, 20, 21, 0, 22, 23, 24, 0), // 0x00008E28
	gsSP2Triangles(25, 26, 27, 0, 28, 25, 27, 0), // 0x00008E30
	gsDPPipeSync(), // 0x00008E38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00010F98), // 0x00008E40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00008E48
	gsDPLoadSync(), // 0x00008E50
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008E58
	gsDPPipeSync(), // 0x00008E60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00008E68
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008E70
	gsSPVertex(_jyasinzou_room_25_vertices_00008B10, 4, 0), // 0x00008E78
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0), // 0x00008E80
	gsDPPipeSync(), // 0x00008E88
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00010B98), // 0x00008E90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008E98
	gsDPLoadSync(), // 0x00008EA0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008EA8
	gsDPPipeSync(), // 0x00008EB0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008EB8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008EC0
	gsSPVertex(_jyasinzou_room_25_vertices_00008B50, 3, 0), // 0x00008EC8
	gsSP1Triangle(0, 1, 2, 0), // 0x00008ED0
	gsDPPipeSync(), // 0x00008ED8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000FF98), // 0x00008EE0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008EE8
	gsDPLoadSync(), // 0x00008EF0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008EF8
	gsDPPipeSync(), // 0x00008F00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008F08
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008F10
	gsSPVertex(_jyasinzou_room_25_vertices_00008B80, 3, 0), // 0x00008F18
	gsSP1Triangle(0, 1, 2, 0), // 0x00008F20
	gsSPEndDisplayList(), // 0x00008F28
};

Vtx_t _jyasinzou_room_25_vertices_00008F30[6] = 
{
	 { 98, 1189, -1405, 0, 1024, 512, 223, 217, 208, 255 }, // 0x00008F30
	 { 60, 1219, -1393, 0, 874, -996, 223, 217, 208, 255 }, // 0x00008F40
	 { 68, 1158, -1379, 0, -691, 512, 223, 217, 208, 255 }, // 0x00008F50
	 { 53, 1158, -1379, 0, 1715, 512, 223, 217, 208, 255 }, // 0x00008F60
	 { 60, 1219, -1393, 0, 150, -996, 223, 217, 208, 255 }, // 0x00008F70
	 { 23, 1189, -1405, 0, 0, 512, 223, 217, 208, 255 }, // 0x00008F80
};

Vtx_t _jyasinzou_room_25_vertices_00008F90[8] = 
{
	 { 54, 1151, -1410, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008F90
	 { 59, 1151, -1377, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008FA0
	 { 97, 1188, -1418, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008FB0
	 { 103, 1188, -1385, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008FC0
	 { 22, 1189, -1405, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008FD0
	 { 28, 1189, -1372, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008FE0
	 { 65, 1226, -1412, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008FF0
	 { 71, 1226, -1379, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009000
};

Gfx _jyasinzou_room_25_dlist_00009010[] =
{
	gsDPPipeSync(), // 0x00009010
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00009018
	gsSPVertex(_jyasinzou_room_25_vertices_00008F90, 8, 0), // 0x00009020
	gsSPCullDisplayList(0, 7), // 0x00009028
	gsDPPipeSync(), // 0x00009030
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00009038
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00009040
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00009048
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000EE98), // 0x00009050
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x00009058
	gsDPLoadSync(), // 0x00009060
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00009068
	gsDPPipeSync(), // 0x00009070
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x00009078
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00009080
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00009088
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00009090
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00009098
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000090A0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000090A8
	gsSPVertex(_jyasinzou_room_25_vertices_00008F30, 6, 0), // 0x000090B0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000090B8
	gsSPEndDisplayList(), // 0x000090C0
};

Vtx_t _jyasinzou_room_25_vertices_000090C8[4] = 
{
	 { -200, 647, -910, 0, 0, -10264, 147, 131, 97, 255 }, // 0x000090C8
	 { -440, 480, -910, 0, 0, -2739, 52, 49, 38, 255 }, // 0x000090D8
	 { -440, 480, -790, 0, 2048, -2739, 52, 49, 38, 255 }, // 0x000090E8
	 { -200, 647, -790, 0, 2048, -10264, 134, 119, 89, 255 }, // 0x000090F8
};

Vtx_t _jyasinzou_room_25_vertices_00009108[3] = 
{
	 { -60, 647, -670, 0, -410, 1843, 147, 131, 97, 255 }, // 0x00009108
	 { -60, 647, -910, 0, 1434, 1229, 100, 89, 67, 255 }, // 0x00009118
	 { -200, 647, -790, 0, 205, 614, 134, 119, 89, 255 }, // 0x00009128
};

Vtx_t _jyasinzou_room_25_vertices_00009138[4] = 
{
	 { -440, 813, -670, 0, 0, -10264, 100, 89, 67, 255 }, // 0x00009138
	 { -200, 647, -670, 0, 0, -2739, 69, 62, 48, 255 }, // 0x00009148
	 { -200, 647, -790, 0, 2048, -2739, 134, 119, 89, 255 }, // 0x00009158
	 { -440, 813, -790, 0, 2048, -10264, 203, 195, 178, 255 }, // 0x00009168
};

Vtx_t _jyasinzou_room_25_vertices_00009178[5] = 
{
	 { -200, 647, -670, 0, -717, 922, 69, 62, 48, 255 }, // 0x00009178
	 { -60, 647, -670, 0, -410, 1843, 147, 131, 97, 255 }, // 0x00009188
	 { -200, 647, -790, 0, 205, 614, 134, 119, 89, 255 }, // 0x00009198
	 { -60, 647, -910, 0, 1434, 1229, 100, 89, 67, 255 }, // 0x000091A8
	 { -200, 647, -910, 0, 1126, 307, 147, 131, 97, 255 }, // 0x000091B8
};

Vtx_t _jyasinzou_room_25_vertices_000091C8[8] = 
{
	 { -440, 480, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000091C8
	 { -60, 480, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000091D8
	 { -440, 813, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000091E8
	 { -60, 813, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000091F8
	 { -440, 480, -670, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009208
	 { -60, 480, -670, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009218
	 { -440, 813, -670, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009228
	 { -60, 813, -670, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009238
};

Gfx _jyasinzou_room_25_dlist_00009248[] =
{
	gsDPPipeSync(), // 0x00009248
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00009250
	gsSPVertex(_jyasinzou_room_25_vertices_000091C8, 8, 0), // 0x00009258
	gsSPCullDisplayList(0, 7), // 0x00009260
	gsDPPipeSync(), // 0x00009268
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00009270
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00009278
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00009280
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013B98), // 0x00009288
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00009290
	gsDPLoadSync(), // 0x00009298
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000092A0
	gsDPPipeSync(), // 0x000092A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000092B0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000092B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x000092C0
	gsDPTileSync(), // 0x000092C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000092D0
	gsDPLoadSync(), // 0x000092D8
	gsDPLoadTLUTCmd(7, 255), // 0x000092E0
	gsDPPipeSync(), // 0x000092E8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000092F0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000092F8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00009300
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00009308
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00009310
	gsSPVertex(_jyasinzou_room_25_vertices_000090C8, 4, 0), // 0x00009318
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009320
	gsDPPipeSync(), // 0x00009328
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00012798), // 0x00009330
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00009338
	gsDPLoadSync(), // 0x00009340
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00009348
	gsDPPipeSync(), // 0x00009350
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00009358
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00009360
	gsSPVertex(_jyasinzou_room_25_vertices_00009108, 3, 0), // 0x00009368
	gsSP1Triangle(0, 1, 2, 0), // 0x00009370
	gsDPPipeSync(), // 0x00009378
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013B98), // 0x00009380
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00009388
	gsDPLoadSync(), // 0x00009390
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00009398
	gsDPPipeSync(), // 0x000093A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000093A8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000093B0
	gsSPVertex(_jyasinzou_room_25_vertices_00009138, 4, 0), // 0x000093B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000093C0
	gsDPPipeSync(), // 0x000093C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00012798), // 0x000093D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000093D8
	gsDPLoadSync(), // 0x000093E0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000093E8
	gsDPPipeSync(), // 0x000093F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000093F8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00009400
	gsSPVertex(_jyasinzou_room_25_vertices_00009178, 5, 0), // 0x00009408
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00009410
	gsSPEndDisplayList(), // 0x00009418
};

Vtx_t _jyasinzou_room_25_vertices_00009420[6] = 
{
	 { 540, 333, -1630, 0, 1567, 2048, 35, 31, 25, 255 }, // 0x00009420
	 { 60, 333, -1630, 0, 784, -475, 5, 5, 5, 255 }, // 0x00009430
	 { 399, 333, -1291, 0, 0, 2048, 147, 131, 97, 255 }, // 0x00009440
	 { 60, 333, -1630, 0, 784, -475, 5, 5, 5, 255 }, // 0x00009450
	 { -420, 333, -1630, 0, 0, 2048, 52, 49, 38, 255 }, // 0x00009460
	 { -279, 333, -1291, 0, 1567, 2048, 147, 131, 97, 255 }, // 0x00009470
};

Vtx_t _jyasinzou_room_25_vertices_00009480[3] = 
{
	 { -640, 333, -1270, 0, 6997, 3072, 35, 31, 25, 255 }, // 0x00009480
	 { -640, 333, -910, 0, 6997, 0, 69, 62, 48, 255 }, // 0x00009490
	 { -300, 333, -1090, 0, 4096, 1536, 158, 142, 111, 255 }, // 0x000094A0
};

Vtx_t _jyasinzou_room_25_vertices_000094B0[6] = 
{
	 { -279, 333, -1291, 0, 0, 2048, 147, 131, 97, 255 }, // 0x000094B0
	 { 60, 333, -1150, 0, 1567, 2048, 147, 131, 97, 255 }, // 0x000094C0
	 { 60, 333, -1630, 0, 784, -475, 5, 5, 5, 255 }, // 0x000094D0
	 { 60, 333, -1150, 0, 0, 2048, 147, 131, 97, 255 }, // 0x000094E0
	 { 399, 333, -1291, 0, 1567, 2048, 147, 131, 97, 255 }, // 0x000094F0
	 { 60, 333, -1630, 0, 784, -475, 5, 5, 5, 255 }, // 0x00009500
};

Vtx_t _jyasinzou_room_25_vertices_00009510[3] = 
{
	 { -300, 333, -1090, 0, 4096, 1536, 158, 142, 111, 255 }, // 0x00009510
	 { -640, 333, -910, 0, 6997, 0, 69, 62, 48, 255 }, // 0x00009520
	 { -60, 333, -910, 0, 2048, 0, 69, 62, 48, 255 }, // 0x00009530
};

Vtx_t _jyasinzou_room_25_vertices_00009540[4] = 
{
	 { -480, 333, -1270, 0, 3584, 5632, 52, 49, 38, 255 }, // 0x00009540
	 { -480, 333, -1630, 0, -1024, 5632, 5, 5, 5, 255 }, // 0x00009550
	 { -480, 733, -1630, 0, -1024, 0, 52, 49, 38, 255 }, // 0x00009560
	 { -480, 733, -1270, 0, 3584, 0, 81, 72, 55, 255 }, // 0x00009570
};

Vtx_t _jyasinzou_room_25_vertices_00009580[4] = 
{
	 { -480, 733, -1630, 0, 0, 1024, 52, 49, 38, 255 }, // 0x00009580
	 { -480, 813, -1630, 0, 0, 0, 52, 49, 38, 255 }, // 0x00009590
	 { -480, 813, -1270, 0, 4608, 0, 81, 72, 55, 255 }, // 0x000095A0
	 { -480, 733, -1270, 0, 4608, 1024, 81, 72, 55, 255 }, // 0x000095B0
};

Vtx_t _jyasinzou_room_25_vertices_000095C0[8] = 
{
	 { -440, 813, -790, 0, 2304, -2731, 100, 89, 67, 255 }, // 0x000095C0
	 { -200, 647, -790, 0, 5376, -341, 134, 119, 89, 255 }, // 0x000095D0
	 { -440, 640, -790, 0, 2304, -512, 115, 102, 78, 255 }, // 0x000095E0
	 { -440, 480, -790, 0, 2304, 2048, 52, 49, 38, 255 }, // 0x000095F0
	 { -640, 640, -790, 0, 0, 1195, 69, 62, 48, 255 }, // 0x00009600
	 { -640, 733, -790, 0, 0, 0, 52, 49, 38, 255 }, // 0x00009610
	 { -440, 733, -790, 0, 1536, 0, 100, 89, 67, 255 }, // 0x00009620
	 { -440, 640, -790, 0, 1536, 1195, 115, 102, 78, 255 }, // 0x00009630
};

Vtx_t _jyasinzou_room_25_vertices_00009640[4] = 
{
	 { -440, 480, -990, 0, 1024, 2048, 115, 102, 78, 255 }, // 0x00009640
	 { -660, 480, -990, 0, 1707, 2048, 52, 49, 38, 255 }, // 0x00009650
	 { -660, 480, -790, 0, 1707, 1024, 81, 72, 55, 255 }, // 0x00009660
	 { -440, 480, -790, 0, 1024, 1024, 52, 49, 38, 255 }, // 0x00009670
};

Vtx_t _jyasinzou_room_25_vertices_00009680[8] = 
{
	 { -440, 480, -790, 0, 2304, 2048, 52, 49, 38, 255 }, // 0x00009680
	 { -640, 480, -790, 0, 256, 2048, 81, 72, 55, 255 }, // 0x00009690
	 { -640, 640, -790, 0, 256, -512, 69, 62, 48, 255 }, // 0x000096A0
	 { -440, 640, -790, 0, 2304, -512, 115, 102, 78, 255 }, // 0x000096B0
	 { -60, 333, -910, 0, 2048, 2048, 69, 62, 48, 255 }, // 0x000096C0
	 { -60, 567, -910, 0, 2048, -939, 100, 89, 67, 255 }, // 0x000096D0
	 { -60, 567, -670, 0, -1024, -939, 69, 62, 48, 255 }, // 0x000096E0
	 { -60, 413, -670, 0, -1024, 1024, 35, 31, 25, 255 }, // 0x000096F0
};

Vtx_t _jyasinzou_room_25_vertices_00009700[8] = 
{
	 { -60, 567, -910, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00009700
	 { -60, 647, -910, 0, 0, 0, 115, 102, 78, 255 }, // 0x00009710
	 { -60, 647, -670, 0, 3072, 0, 115, 102, 78, 255 }, // 0x00009720
	 { -60, 567, -670, 0, 3072, 1024, 69, 62, 48, 255 }, // 0x00009730
	 { -200, 567, -910, 0, 1536, 1024, 115, 102, 78, 255 }, // 0x00009740
	 { -200, 647, -910, 0, 1536, 0, 115, 102, 78, 255 }, // 0x00009750
	 { -60, 647, -910, 0, 0, 0, 81, 72, 55, 255 }, // 0x00009760
	 { -60, 567, -910, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00009770
};

Vtx_t _jyasinzou_room_25_vertices_00009780[4] = 
{
	 { -200, 333, -910, 0, 1792, 2048, 69, 62, 48, 255 }, // 0x00009780
	 { -200, 567, -910, 0, 1792, -939, 115, 102, 78, 255 }, // 0x00009790
	 { -60, 567, -910, 0, 0, -939, 134, 119, 89, 255 }, // 0x000097A0
	 { -60, 333, -910, 0, 0, 2048, 69, 62, 48, 255 }, // 0x000097B0
};

Vtx_t _jyasinzou_room_25_vertices_000097C0[4] = 
{
	 { -200, 567, -910, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x000097C0
	 { -440, 400, -910, 0, 4096, 1024, 69, 62, 48, 255 }, // 0x000097D0
	 { -440, 480, -910, 0, 4096, 0, 81, 72, 55, 255 }, // 0x000097E0
	 { -200, 647, -910, 0, 1024, 0, 115, 102, 78, 255 }, // 0x000097F0
};

Vtx_t _jyasinzou_room_25_vertices_00009800[8] = 
{
	 { -200, 333, -910, 0, 1792, 2048, 69, 62, 48, 255 }, // 0x00009800
	 { -440, 333, -910, 0, 4864, 2048, 69, 62, 48, 255 }, // 0x00009810
	 { -440, 400, -910, 0, 4864, 1195, 69, 62, 48, 255 }, // 0x00009820
	 { -200, 567, -910, 0, 1792, -939, 115, 102, 78, 255 }, // 0x00009830
	 { 120, 413, -670, 0, 0, 2048, 52, 49, 38, 255 }, // 0x00009840
	 { 120, 413, -650, 0, 341, 2048, 52, 49, 38, 255 }, // 0x00009850
	 { 120, 573, -650, 0, 341, -683, 81, 72, 55, 255 }, // 0x00009860
	 { 120, 573, -670, 0, 0, -683, 81, 72, 55, 255 }, // 0x00009870
};

Vtx_t _jyasinzou_room_25_vertices_00009880[4] = 
{
	 { 0, 413, -670, 0, 1536, 0, 52, 49, 38, 255 }, // 0x00009880
	 { 0, 413, -650, 0, 1536, -171, 52, 49, 38, 255 }, // 0x00009890
	 { 120, 413, -650, 0, 512, -171, 52, 49, 38, 255 }, // 0x000098A0
	 { 120, 413, -670, 0, 512, 0, 52, 49, 38, 255 }, // 0x000098B0
};

Vtx_t _jyasinzou_room_25_vertices_000098C0[4] = 
{
	 { 0, 573, -670, 0, 683, -683, 81, 72, 55, 255 }, // 0x000098C0
	 { 0, 573, -650, 0, 341, -683, 81, 72, 55, 255 }, // 0x000098D0
	 { 0, 413, -650, 0, 341, 2048, 52, 49, 38, 255 }, // 0x000098E0
	 { 0, 413, -670, 0, 683, 2048, 52, 49, 38, 255 }, // 0x000098F0
};

Vtx_t _jyasinzou_room_25_vertices_00009900[10] = 
{
	 { -640, 813, -1630, 0, 9216, -4096, 81, 72, 55, 255 }, // 0x00009900
	 { -640, 1013, -1150, 0, 3072, -6656, 191, 223, 159, 255 }, // 0x00009910
	 { -640, 813, -1270, 0, 4608, -4096, 158, 142, 111, 255 }, // 0x00009920
	 { -640, 640, -910, 0, 0, -1877, 69, 62, 48, 255 }, // 0x00009930
	 { -640, 333, -1270, 0, 4608, 2048, 35, 31, 25, 255 }, // 0x00009940
	 { -640, 480, -910, 0, 0, 171, 81, 72, 55, 255 }, // 0x00009950
	 { -640, 333, -910, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00009960
	 { -640, 813, -790, 0, -1536, -4096, 158, 142, 111, 255 }, // 0x00009970
	 { -640, 640, -790, 0, -1536, -1877, 69, 62, 48, 255 }, // 0x00009980
	 { -640, 813, -670, 0, -3072, -4096, 81, 72, 55, 255 }, // 0x00009990
};

Vtx_t _jyasinzou_room_25_vertices_000099A0[4] = 
{
	 { -480, 813, -1630, 0, 5734, 3891, 69, 62, 48, 255 }, // 0x000099A0
	 { -640, 813, -1630, 0, 6417, 2526, 35, 31, 25, 255 }, // 0x000099B0
	 { -480, 813, -1270, 0, 2867, 2458, 169, 154, 126, 255 }, // 0x000099C0
	 { -640, 813, -1270, 0, 3959, 1297, 81, 72, 55, 255 }, // 0x000099D0
};

Vtx_t _jyasinzou_room_25_vertices_000099E0[6] = 
{
	 { -640, 400, -990, 0, 5461, -1252, 69, 62, 48, 255 }, // 0x000099E0
	 { -640, 480, -990, 0, 5461, -3982, 52, 49, 38, 255 }, // 0x000099F0
	 { -440, 480, -990, 0, 0, -3982, 115, 102, 78, 255 }, // 0x00009A00
	 { -440, 400, -990, 0, 0, -1252, 69, 62, 48, 255 }, // 0x00009A10
	 { -640, 333, -990, 0, 5461, 1024, 52, 49, 38, 255 }, // 0x00009A20
	 { -440, 333, -990, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00009A30
};

Vtx_t _jyasinzou_room_25_vertices_00009A40[4] = 
{
	 { -480, 733, -1270, 0, 3584, 0, 81, 72, 55, 255 }, // 0x00009A40
	 { -640, 733, -1270, 0, 1024, 0, 69, 62, 48, 255 }, // 0x00009A50
	 { -640, 333, -1270, 0, 1024, 5632, 35, 31, 25, 255 }, // 0x00009A60
	 { -480, 333, -1270, 0, 3584, 5632, 52, 49, 38, 255 }, // 0x00009A70
};

Vtx_t _jyasinzou_room_25_vertices_00009A80[4] = 
{
	 { -480, 733, -1270, 0, 4608, 1024, 81, 72, 55, 255 }, // 0x00009A80
	 { -480, 813, -1270, 0, 4608, 0, 81, 72, 55, 255 }, // 0x00009A90
	 { -640, 813, -1270, 0, 2048, 0, 69, 62, 48, 255 }, // 0x00009AA0
	 { -640, 733, -1270, 0, 2048, 1024, 69, 62, 48, 255 }, // 0x00009AB0
};

Vtx_t _jyasinzou_room_25_vertices_00009AC0[6] = 
{
	 { -300, 333, -1090, 0, 4096, 1536, 158, 142, 111, 255 }, // 0x00009AC0
	 { -480, 333, -1270, 0, 5632, 3072, 52, 49, 38, 255 }, // 0x00009AD0
	 { -640, 333, -1270, 0, 6997, 3072, 35, 31, 25, 255 }, // 0x00009AE0
	 { -279, 333, -1291, 0, 3920, 3248, 158, 142, 111, 255 }, // 0x00009AF0
	 { -420, 333, -1630, 0, 5120, 6144, 52, 49, 38, 255 }, // 0x00009B00
	 { -480, 333, -1630, 0, 5632, 6144, 52, 49, 38, 255 }, // 0x00009B10
};

Vtx_t _jyasinzou_room_25_vertices_00009B20[4] = 
{
	 { -660, 640, -790, 0, 2560, 512, 69, 62, 48, 255 }, // 0x00009B20
	 { -640, 640, -790, 0, 2304, 512, 69, 62, 48, 255 }, // 0x00009B30
	 { -640, 480, -790, 0, 2304, 2560, 81, 72, 55, 255 }, // 0x00009B40
	 { -660, 480, -790, 0, 2560, 2560, 81, 72, 55, 255 }, // 0x00009B50
};

Vtx_t _jyasinzou_room_25_vertices_00009B60[10] = 
{
	 { 760, 640, -910, 0, 0, -1877, 69, 62, 48, 255 }, // 0x00009B60
	 { 760, 640, -790, 0, -1536, -1877, 69, 62, 48, 255 }, // 0x00009B70
	 { 760, 813, -790, 0, -1536, -4096, 158, 142, 111, 255 }, // 0x00009B80
	 { 760, 1013, -1150, 0, 3072, -6656, 191, 223, 159, 255 }, // 0x00009B90
	 { 760, 333, -1270, 0, 4608, 2048, 35, 31, 25, 255 }, // 0x00009BA0
	 { 760, 333, -910, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00009BB0
	 { 760, 480, -910, 0, 0, 171, 81, 72, 55, 255 }, // 0x00009BC0
	 { 760, 813, -1270, 0, 4608, -4096, 158, 142, 111, 255 }, // 0x00009BD0
	 { 760, 813, -1630, 0, 9216, -4096, 81, 72, 55, 255 }, // 0x00009BE0
	 { 760, 813, -670, 0, -3072, -4096, 69, 62, 48, 255 }, // 0x00009BF0
};

Vtx_t _jyasinzou_room_25_vertices_00009C00[8] = 
{
	 { 600, 333, -1270, 0, -3584, 3072, 52, 49, 38, 255 }, // 0x00009C00
	 { 600, 333, -1630, 0, -3584, 6144, 52, 49, 38, 255 }, // 0x00009C10
	 { 540, 333, -1630, 0, -3072, 6144, 52, 49, 38, 255 }, // 0x00009C20
	 { 399, 333, -1291, 0, -1872, 3248, 158, 142, 111, 255 }, // 0x00009C30
	 { 420, 333, -1090, 0, -2048, 1536, 158, 142, 111, 255 }, // 0x00009C40
	 { 760, 333, -1270, 0, -4949, 3072, 35, 31, 25, 255 }, // 0x00009C50
	 { 760, 333, -910, 0, -4949, 0, 69, 62, 48, 255 }, // 0x00009C60
	 { 180, 333, -910, 0, 0, 0, 69, 62, 48, 255 }, // 0x00009C70
};

Vtx_t _jyasinzou_room_25_vertices_00009C80[6] = 
{
	 { 600, 733, -1270, 0, 3584, 0, 81, 72, 55, 255 }, // 0x00009C80
	 { 600, 733, -1630, 0, -1024, 0, 52, 49, 38, 255 }, // 0x00009C90
	 { 600, 333, -1630, 0, -1024, 5632, 5, 5, 5, 255 }, // 0x00009CA0
	 { 600, 333, -1270, 0, 3584, 5632, 52, 49, 38, 255 }, // 0x00009CB0
	 { 760, 333, -1270, 0, 1024, 5632, 35, 31, 25, 255 }, // 0x00009CC0
	 { 760, 733, -1270, 0, 1024, 0, 69, 62, 48, 255 }, // 0x00009CD0
};

Vtx_t _jyasinzou_room_25_vertices_00009CE0[6] = 
{
	 { 760, 733, -1270, 0, 2048, 1024, 69, 62, 48, 255 }, // 0x00009CE0
	 { 760, 813, -1270, 0, 2048, 0, 69, 62, 48, 255 }, // 0x00009CF0
	 { 600, 813, -1270, 0, 4608, 0, 81, 72, 55, 255 }, // 0x00009D00
	 { 600, 733, -1270, 0, 4608, 1024, 81, 72, 55, 255 }, // 0x00009D10
	 { 600, 813, -1630, 0, 0, 0, 52, 49, 38, 255 }, // 0x00009D20
	 { 600, 733, -1630, 0, 0, 1024, 52, 49, 38, 255 }, // 0x00009D30
};

Vtx_t _jyasinzou_room_25_vertices_00009D40[10] = 
{
	 { 600, 813, -1270, 0, 2867, 2458, 169, 154, 126, 255 }, // 0x00009D40
	 { 760, 813, -1630, 0, 6417, 2526, 35, 31, 25, 255 }, // 0x00009D50
	 { 600, 813, -1630, 0, 5734, 3891, 69, 62, 48, 255 }, // 0x00009D60
	 { 760, 813, -1270, 0, 3959, 1297, 81, 72, 55, 255 }, // 0x00009D70
	 { -640, 813, -990, 0, 922, -1843, 81, 72, 55, 255 }, // 0x00009D80
	 { -520, 813, -730, 0, 819, 1434, 158, 142, 111, 255 }, // 0x00009D90
	 { -440, 813, -990, 0, 2560, -1024, 158, 142, 111, 255 }, // 0x00009DA0
	 { -520, 813, -630, 0, 307, 2458, 115, 102, 78, 255 }, // 0x00009DB0
	 { -440, 813, -670, 0, 922, 2253, 100, 89, 67, 255 }, // 0x00009DC0
	 { -640, 813, -730, 0, -410, 819, 81, 72, 55, 255 }, // 0x00009DD0
};

Vtx_t _jyasinzou_room_25_vertices_00009DE0[4] = 
{
	 { -440, 480, -990, 0, 1280, 0, 115, 102, 78, 255 }, // 0x00009DE0
	 { -440, 480, -910, 0, 2048, 0, 100, 89, 67, 255 }, // 0x00009DF0
	 { -440, 400, -910, 0, 2048, 1024, 69, 62, 48, 255 }, // 0x00009E00
	 { -440, 400, -990, 0, 1280, 1024, 69, 62, 48, 255 }, // 0x00009E10
};

Vtx_t _jyasinzou_room_25_vertices_00009E20[4] = 
{
	 { -440, 400, -990, 0, 768, 0, 69, 62, 48, 255 }, // 0x00009E20
	 { -440, 400, -910, 0, 1536, 0, 69, 62, 48, 255 }, // 0x00009E30
	 { -440, 333, -910, 0, 1536, 1195, 69, 62, 48, 255 }, // 0x00009E40
	 { -440, 333, -990, 0, 768, 1195, 69, 62, 48, 255 }, // 0x00009E50
};

Vtx_t _jyasinzou_room_25_vertices_00009E60[8] = 
{
	 { -640, 733, -990, 0, 512, 1024, 69, 62, 48, 255 }, // 0x00009E60
	 { -640, 813, -990, 0, 512, 0, 81, 72, 55, 255 }, // 0x00009E70
	 { -440, 813, -990, 0, 2048, 0, 100, 89, 67, 255 }, // 0x00009E80
	 { -440, 733, -990, 0, 2048, 1024, 69, 62, 48, 255 }, // 0x00009E90
	 { -440, 813, -990, 0, 1280, 0, 81, 72, 55, 255 }, // 0x00009EA0
	 { -440, 813, -790, 0, 2048, 0, 100, 89, 67, 255 }, // 0x00009EB0
	 { -440, 733, -790, 0, 2048, 1024, 69, 62, 48, 255 }, // 0x00009EC0
	 { -440, 733, -990, 0, 1280, 1024, 69, 62, 48, 255 }, // 0x00009ED0
};

Vtx_t _jyasinzou_room_25_vertices_00009EE0[8] = 
{
	 { 60, 333, -910, 0, 1024, 0, 147, 131, 97, 255 }, // 0x00009EE0
	 { 180, 333, -910, 0, 0, 0, 69, 62, 48, 255 }, // 0x00009EF0
	 { 60, 333, -1150, 0, 1024, 2048, 134, 119, 89, 255 }, // 0x00009F00
	 { 420, 333, -1090, 0, -2048, 1536, 158, 142, 111, 255 }, // 0x00009F10
	 { 399, 333, -1291, 0, -1872, 3248, 158, 142, 111, 255 }, // 0x00009F20
	 { -279, 333, -1291, 0, 3920, 3248, 158, 142, 111, 255 }, // 0x00009F30
	 { -300, 333, -1090, 0, 4096, 1536, 158, 142, 111, 255 }, // 0x00009F40
	 { -60, 333, -910, 0, 2048, 0, 69, 62, 48, 255 }, // 0x00009F50
};

Vtx_t _jyasinzou_room_25_vertices_00009F60[4] = 
{
	 { 180, 333, -910, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00009F60
	 { 60, 333, -910, 0, 1024, 1024, 147, 131, 97, 255 }, // 0x00009F70
	 { 60, 413, -790, 0, 1024, -2668, 213, 206, 192, 255 }, // 0x00009F80
	 { 180, 413, -790, 0, 0, -2668, 100, 89, 67, 255 }, // 0x00009F90
};

Vtx_t _jyasinzou_room_25_vertices_00009FA0[4] = 
{
	 { 60, 413, -790, 0, 1024, 1024, 213, 206, 192, 255 }, // 0x00009FA0
	 { 60, 413, -670, 0, 1024, 0, 52, 49, 38, 255 }, // 0x00009FB0
	 { 180, 413, -670, 0, 0, 0, 69, 62, 48, 255 }, // 0x00009FC0
	 { 180, 413, -790, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00009FD0
};

Vtx_t _jyasinzou_room_25_vertices_00009FE0[4] = 
{
	 { -60, 333, -910, 0, 2048, 1024, 69, 62, 48, 255 }, // 0x00009FE0
	 { -60, 413, -790, 0, 2048, -2668, 100, 89, 67, 255 }, // 0x00009FF0
	 { 60, 413, -790, 0, 1024, -2668, 213, 206, 192, 255 }, // 0x0000A000
	 { 60, 333, -910, 0, 1024, 1024, 147, 131, 97, 255 }, // 0x0000A010
};

Vtx_t _jyasinzou_room_25_vertices_0000A020[4] = 
{
	 { -60, 413, -790, 0, 2048, 1024, 100, 89, 67, 255 }, // 0x0000A020
	 { -60, 413, -670, 0, 2048, 0, 52, 49, 38, 255 }, // 0x0000A030
	 { 60, 413, -670, 0, 1024, 0, 52, 49, 38, 255 }, // 0x0000A040
	 { 60, 413, -790, 0, 1024, 1024, 213, 206, 192, 255 }, // 0x0000A050
};

Vtx_t _jyasinzou_room_25_vertices_0000A060[8] = 
{
	 { -660, 333, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A060
	 { 760, 333, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A070
	 { -660, 1013, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A080
	 { 760, 1013, -1630, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A090
	 { -660, 333, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A0A0
	 { 760, 333, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A0B0
	 { -660, 1013, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A0C0
	 { 760, 1013, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A0D0
};

Gfx _jyasinzou_room_25_dlist_0000A0E0[] =
{
	gsDPPipeSync(), // 0x0000A0E0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000A0E8
	gsSPVertex(_jyasinzou_room_25_vertices_0000A060, 8, 0), // 0x0000A0F0
	gsSPCullDisplayList(0, 7), // 0x0000A0F8
	gsDPPipeSync(), // 0x0000A100
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000A108
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x0000A110
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000A118
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000D698), // 0x0000A120
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 4, 0), // 0x0000A128
	gsDPLoadSync(), // 0x0000A130
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x0000A138
	gsDPPipeSync(), // 0x0000A140
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 6, 0, 0, 4, 0), // 0x0000A148
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x0000A150
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x0000A158
	gsDPTileSync(), // 0x0000A160
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A168
	gsDPLoadSync(), // 0x0000A170
	gsDPLoadTLUTCmd(7, 255), // 0x0000A178
	gsDPPipeSync(), // 0x0000A180
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000A188
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x0000A190
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x0000A198
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x0000A1A0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000A1A8
	gsSPVertex(_jyasinzou_room_25_vertices_00009420, 6, 0), // 0x0000A1B0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000A1B8
	gsDPPipeSync(), // 0x0000A1C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014F98), // 0x0000A1C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A1D0
	gsDPLoadSync(), // 0x0000A1D8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000A1E0
	gsDPPipeSync(), // 0x0000A1E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A1F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A1F8
	gsSPVertex(_jyasinzou_room_25_vertices_00009480, 3, 0), // 0x0000A200
	gsSP1Triangle(0, 1, 2, 0), // 0x0000A208
	gsDPPipeSync(), // 0x0000A210
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000D698), // 0x0000A218
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 4, 0), // 0x0000A220
	gsDPLoadSync(), // 0x0000A228
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x0000A230
	gsDPPipeSync(), // 0x0000A238
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 6, 0, 0, 4, 0), // 0x0000A240
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x0000A248
	gsSPVertex(_jyasinzou_room_25_vertices_000094B0, 6, 0), // 0x0000A250
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000A258
	gsDPPipeSync(), // 0x0000A260
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014F98), // 0x0000A268
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A270
	gsDPLoadSync(), // 0x0000A278
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000A280
	gsDPPipeSync(), // 0x0000A288
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A290
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A298
	gsSPVertex(_jyasinzou_room_25_vertices_00009510, 3, 0), // 0x0000A2A0
	gsSP1Triangle(0, 1, 2, 0), // 0x0000A2A8
	gsDPPipeSync(), // 0x0000A2B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x0000A2B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x0000A2C0
	gsDPLoadSync(), // 0x0000A2C8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A2D0
	gsDPPipeSync(), // 0x0000A2D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x0000A2E0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000A2E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x0000A2F0
	gsDPTileSync(), // 0x0000A2F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A300
	gsDPLoadSync(), // 0x0000A308
	gsDPLoadTLUTCmd(7, 15), // 0x0000A310
	gsDPPipeSync(), // 0x0000A318
	gsSPVertex(_jyasinzou_room_25_vertices_00009540, 4, 0), // 0x0000A320
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A328
	gsDPPipeSync(), // 0x0000A330
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x0000A338
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000A340
	gsDPLoadSync(), // 0x0000A348
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000A350
	gsDPPipeSync(), // 0x0000A358
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000A360
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000A368
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x0000A370
	gsDPTileSync(), // 0x0000A378
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A380
	gsDPLoadSync(), // 0x0000A388
	gsDPLoadTLUTCmd(7, 255), // 0x0000A390
	gsDPPipeSync(), // 0x0000A398
	gsSPVertex(_jyasinzou_room_25_vertices_00009580, 4, 0), // 0x0000A3A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A3A8
	gsDPPipeSync(), // 0x0000A3B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x0000A3B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x0000A3C0
	gsDPLoadSync(), // 0x0000A3C8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A3D0
	gsDPPipeSync(), // 0x0000A3D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x0000A3E0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000A3E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x0000A3F0
	gsDPTileSync(), // 0x0000A3F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A400
	gsDPLoadSync(), // 0x0000A408
	gsDPLoadTLUTCmd(7, 15), // 0x0000A410
	gsDPPipeSync(), // 0x0000A418
	gsSPVertex(_jyasinzou_room_25_vertices_000095C0, 8, 0), // 0x0000A420
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x0000A428
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000A430
	gsDPPipeSync(), // 0x0000A438
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00015398), // 0x0000A440
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x0000A448
	gsDPLoadSync(), // 0x0000A450
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A458
	gsDPPipeSync(), // 0x0000A460
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x0000A468
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000A470
	gsSPVertex(_jyasinzou_room_25_vertices_00009640, 4, 0), // 0x0000A478
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A480
	gsDPPipeSync(), // 0x0000A488
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x0000A490
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x0000A498
	gsDPLoadSync(), // 0x0000A4A0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A4A8
	gsDPPipeSync(), // 0x0000A4B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x0000A4B8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000A4C0
	gsSPVertex(_jyasinzou_room_25_vertices_00009680, 8, 0), // 0x0000A4C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A4D0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000A4D8
	gsDPPipeSync(), // 0x0000A4E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x0000A4E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000A4F0
	gsDPLoadSync(), // 0x0000A4F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000A500
	gsDPPipeSync(), // 0x0000A508
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000A510
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000A518
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x0000A520
	gsDPTileSync(), // 0x0000A528
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A530
	gsDPLoadSync(), // 0x0000A538
	gsDPLoadTLUTCmd(7, 255), // 0x0000A540
	gsDPPipeSync(), // 0x0000A548
	gsSPVertex(_jyasinzou_room_25_vertices_00009700, 8, 0), // 0x0000A550
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A558
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000A560
	gsDPPipeSync(), // 0x0000A568
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x0000A570
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x0000A578
	gsDPLoadSync(), // 0x0000A580
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A588
	gsDPPipeSync(), // 0x0000A590
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x0000A598
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000A5A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x0000A5A8
	gsDPTileSync(), // 0x0000A5B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A5B8
	gsDPLoadSync(), // 0x0000A5C0
	gsDPLoadTLUTCmd(7, 15), // 0x0000A5C8
	gsDPPipeSync(), // 0x0000A5D0
	gsSPVertex(_jyasinzou_room_25_vertices_00009780, 4, 0), // 0x0000A5D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A5E0
	gsDPPipeSync(), // 0x0000A5E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x0000A5F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000A5F8
	gsDPLoadSync(), // 0x0000A600
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000A608
	gsDPPipeSync(), // 0x0000A610
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000A618
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000A620
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x0000A628
	gsDPTileSync(), // 0x0000A630
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A638
	gsDPLoadSync(), // 0x0000A640
	gsDPLoadTLUTCmd(7, 255), // 0x0000A648
	gsDPPipeSync(), // 0x0000A650
	gsSPVertex(_jyasinzou_room_25_vertices_000097C0, 4, 0), // 0x0000A658
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A660
	gsDPPipeSync(), // 0x0000A668
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x0000A670
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x0000A678
	gsDPLoadSync(), // 0x0000A680
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A688
	gsDPPipeSync(), // 0x0000A690
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x0000A698
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000A6A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x0000A6A8
	gsDPTileSync(), // 0x0000A6B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A6B8
	gsDPLoadSync(), // 0x0000A6C0
	gsDPLoadTLUTCmd(7, 15), // 0x0000A6C8
	gsDPPipeSync(), // 0x0000A6D0
	gsSPVertex(_jyasinzou_room_25_vertices_00009800, 8, 0), // 0x0000A6D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A6E0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000A6E8
	gsDPPipeSync(), // 0x0000A6F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014F98), // 0x0000A6F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A700
	gsDPLoadSync(), // 0x0000A708
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000A710
	gsDPPipeSync(), // 0x0000A718
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A720
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A728
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x0000A730
	gsDPTileSync(), // 0x0000A738
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A740
	gsDPLoadSync(), // 0x0000A748
	gsDPLoadTLUTCmd(7, 255), // 0x0000A750
	gsDPPipeSync(), // 0x0000A758
	gsSPVertex(_jyasinzou_room_25_vertices_00009880, 4, 0), // 0x0000A760
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A768
	gsDPPipeSync(), // 0x0000A770
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x0000A778
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x0000A780
	gsDPLoadSync(), // 0x0000A788
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A790
	gsDPPipeSync(), // 0x0000A798
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x0000A7A0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000A7A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x0000A7B0
	gsDPTileSync(), // 0x0000A7B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A7C0
	gsDPLoadSync(), // 0x0000A7C8
	gsDPLoadTLUTCmd(7, 15), // 0x0000A7D0
	gsDPPipeSync(), // 0x0000A7D8
	gsSPVertex(_jyasinzou_room_25_vertices_000098C0, 4, 0), // 0x0000A7E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A7E8
	gsDPPipeSync(), // 0x0000A7F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014798), // 0x0000A7F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x0000A800
	gsDPLoadSync(), // 0x0000A808
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A810
	gsDPPipeSync(), // 0x0000A818
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x0000A820
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000A828
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017FE0), // 0x0000A830
	gsDPTileSync(), // 0x0000A838
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A840
	gsDPLoadSync(), // 0x0000A848
	gsDPLoadTLUTCmd(7, 15), // 0x0000A850
	gsDPPipeSync(), // 0x0000A858
	gsSPVertex(_jyasinzou_room_25_vertices_00009900, 10, 0), // 0x0000A860
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x0000A868
	gsSP2Triangles(3, 4, 2, 0, 3, 5, 4, 0), // 0x0000A870
	gsSP2Triangles(5, 6, 4, 0, 1, 7, 3, 0), // 0x0000A878
	gsSP2Triangles(7, 8, 3, 0, 1, 9, 7, 0), // 0x0000A880
	gsDPPipeSync(), // 0x0000A888
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00012798), // 0x0000A890
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A898
	gsDPLoadSync(), // 0x0000A8A0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000A8A8
	gsDPPipeSync(), // 0x0000A8B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A8B8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A8C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x0000A8C8
	gsDPTileSync(), // 0x0000A8D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A8D8
	gsDPLoadSync(), // 0x0000A8E0
	gsDPLoadTLUTCmd(7, 255), // 0x0000A8E8
	gsDPPipeSync(), // 0x0000A8F0
	gsSPVertex(_jyasinzou_room_25_vertices_000099A0, 4, 0), // 0x0000A8F8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x0000A900
	gsDPPipeSync(), // 0x0000A908
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00011F98), // 0x0000A910
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000A918
	gsDPLoadSync(), // 0x0000A920
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000A928
	gsDPPipeSync(), // 0x0000A930
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000A938
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000A940
	gsSPVertex(_jyasinzou_room_25_vertices_000099E0, 6, 0), // 0x0000A948
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A950
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x0000A958
	gsDPPipeSync(), // 0x0000A960
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x0000A968
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x0000A970
	gsDPLoadSync(), // 0x0000A978
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A980
	gsDPPipeSync(), // 0x0000A988
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x0000A990
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000A998
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x0000A9A0
	gsDPTileSync(), // 0x0000A9A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A9B0
	gsDPLoadSync(), // 0x0000A9B8
	gsDPLoadTLUTCmd(7, 15), // 0x0000A9C0
	gsDPPipeSync(), // 0x0000A9C8
	gsSPVertex(_jyasinzou_room_25_vertices_00009A40, 4, 0), // 0x0000A9D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A9D8
	gsDPPipeSync(), // 0x0000A9E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x0000A9E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000A9F0
	gsDPLoadSync(), // 0x0000A9F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000AA00
	gsDPPipeSync(), // 0x0000AA08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000AA10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000AA18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x0000AA20
	gsDPTileSync(), // 0x0000AA28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000AA30
	gsDPLoadSync(), // 0x0000AA38
	gsDPLoadTLUTCmd(7, 255), // 0x0000AA40
	gsDPPipeSync(), // 0x0000AA48
	gsSPVertex(_jyasinzou_room_25_vertices_00009A80, 4, 0), // 0x0000AA50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AA58
	gsDPPipeSync(), // 0x0000AA60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014F98), // 0x0000AA68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AA70
	gsDPLoadSync(), // 0x0000AA78
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000AA80
	gsDPPipeSync(), // 0x0000AA88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AA90
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AA98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x0000AAA0
	gsDPTileSync(), // 0x0000AAA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000AAB0
	gsDPLoadSync(), // 0x0000AAB8
	gsDPLoadTLUTCmd(7, 255), // 0x0000AAC0
	gsDPPipeSync(), // 0x0000AAC8
	gsSPVertex(_jyasinzou_room_25_vertices_00009AC0, 6, 0), // 0x0000AAD0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x0000AAD8
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 1, 0), // 0x0000AAE0
	gsDPPipeSync(), // 0x0000AAE8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x0000AAF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x0000AAF8
	gsDPLoadSync(), // 0x0000AB00
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000AB08
	gsDPPipeSync(), // 0x0000AB10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x0000AB18
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000AB20
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x0000AB28
	gsDPTileSync(), // 0x0000AB30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000AB38
	gsDPLoadSync(), // 0x0000AB40
	gsDPLoadTLUTCmd(7, 15), // 0x0000AB48
	gsDPPipeSync(), // 0x0000AB50
	gsSPVertex(_jyasinzou_room_25_vertices_00009B20, 4, 0), // 0x0000AB58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AB60
	gsDPPipeSync(), // 0x0000AB68
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014798), // 0x0000AB70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x0000AB78
	gsDPLoadSync(), // 0x0000AB80
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000AB88
	gsDPPipeSync(), // 0x0000AB90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x0000AB98
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000ABA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017FE0), // 0x0000ABA8
	gsDPTileSync(), // 0x0000ABB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000ABB8
	gsDPLoadSync(), // 0x0000ABC0
	gsDPLoadTLUTCmd(7, 15), // 0x0000ABC8
	gsDPPipeSync(), // 0x0000ABD0
	gsSPVertex(_jyasinzou_room_25_vertices_00009B60, 10, 0), // 0x0000ABD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000ABE0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 0, 0), // 0x0000ABE8
	gsSP2Triangles(7, 4, 0, 0, 7, 0, 3, 0), // 0x0000ABF0
	gsSP2Triangles(7, 3, 8, 0, 2, 9, 3, 0), // 0x0000ABF8
	gsDPPipeSync(), // 0x0000AC00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014F98), // 0x0000AC08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AC10
	gsDPLoadSync(), // 0x0000AC18
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000AC20
	gsDPPipeSync(), // 0x0000AC28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AC30
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AC38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x0000AC40
	gsDPTileSync(), // 0x0000AC48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000AC50
	gsDPLoadSync(), // 0x0000AC58
	gsDPLoadTLUTCmd(7, 255), // 0x0000AC60
	gsDPPipeSync(), // 0x0000AC68
	gsSPVertex(_jyasinzou_room_25_vertices_00009C00, 8, 0), // 0x0000AC70
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AC78
	gsSP2Triangles(0, 3, 4, 0, 5, 0, 4, 0), // 0x0000AC80
	gsSP2Triangles(4, 6, 5, 0, 7, 6, 4, 0), // 0x0000AC88
	gsDPPipeSync(), // 0x0000AC90
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x0000AC98
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x0000ACA0
	gsDPLoadSync(), // 0x0000ACA8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000ACB0
	gsDPPipeSync(), // 0x0000ACB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x0000ACC0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000ACC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x0000ACD0
	gsDPTileSync(), // 0x0000ACD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000ACE0
	gsDPLoadSync(), // 0x0000ACE8
	gsDPLoadTLUTCmd(7, 15), // 0x0000ACF0
	gsDPPipeSync(), // 0x0000ACF8
	gsSPVertex(_jyasinzou_room_25_vertices_00009C80, 6, 0), // 0x0000AD00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AD08
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 0, 0), // 0x0000AD10
	gsDPPipeSync(), // 0x0000AD18
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x0000AD20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000AD28
	gsDPLoadSync(), // 0x0000AD30
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000AD38
	gsDPPipeSync(), // 0x0000AD40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000AD48
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000AD50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x0000AD58
	gsDPTileSync(), // 0x0000AD60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000AD68
	gsDPLoadSync(), // 0x0000AD70
	gsDPLoadTLUTCmd(7, 255), // 0x0000AD78
	gsDPPipeSync(), // 0x0000AD80
	gsSPVertex(_jyasinzou_room_25_vertices_00009CE0, 6, 0), // 0x0000AD88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AD90
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0), // 0x0000AD98
	gsDPPipeSync(), // 0x0000ADA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00012798), // 0x0000ADA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000ADB0
	gsDPLoadSync(), // 0x0000ADB8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000ADC0
	gsDPPipeSync(), // 0x0000ADC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000ADD0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000ADD8
	gsSPVertex(_jyasinzou_room_25_vertices_00009D40, 10, 0), // 0x0000ADE0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x0000ADE8
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 5, 0), // 0x0000ADF0
	gsSP2Triangles(8, 6, 5, 0, 4, 9, 5, 0), // 0x0000ADF8
	gsDPPipeSync(), // 0x0000AE00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x0000AE08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000AE10
	gsDPLoadSync(), // 0x0000AE18
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000AE20
	gsDPPipeSync(), // 0x0000AE28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000AE30
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000AE38
	gsSPVertex(_jyasinzou_room_25_vertices_00009DE0, 4, 0), // 0x0000AE40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AE48
	gsDPPipeSync(), // 0x0000AE50
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x0000AE58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x0000AE60
	gsDPLoadSync(), // 0x0000AE68
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000AE70
	gsDPPipeSync(), // 0x0000AE78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x0000AE80
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000AE88
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x0000AE90
	gsDPTileSync(), // 0x0000AE98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000AEA0
	gsDPLoadSync(), // 0x0000AEA8
	gsDPLoadTLUTCmd(7, 15), // 0x0000AEB0
	gsDPPipeSync(), // 0x0000AEB8
	gsSPVertex(_jyasinzou_room_25_vertices_00009E20, 4, 0), // 0x0000AEC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AEC8
	gsDPPipeSync(), // 0x0000AED0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013398), // 0x0000AED8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000AEE0
	gsDPLoadSync(), // 0x0000AEE8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000AEF0
	gsDPPipeSync(), // 0x0000AEF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000AF00
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000AF08
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x0000AF10
	gsDPTileSync(), // 0x0000AF18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000AF20
	gsDPLoadSync(), // 0x0000AF28
	gsDPLoadTLUTCmd(7, 255), // 0x0000AF30
	gsDPPipeSync(), // 0x0000AF38
	gsSPVertex(_jyasinzou_room_25_vertices_00009E60, 8, 0), // 0x0000AF40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AF48
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000AF50
	gsDPPipeSync(), // 0x0000AF58
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014F98), // 0x0000AF60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AF68
	gsDPLoadSync(), // 0x0000AF70
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000AF78
	gsDPPipeSync(), // 0x0000AF80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AF88
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AF90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x0000AF98
	gsDPTileSync(), // 0x0000AFA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000AFA8
	gsDPLoadSync(), // 0x0000AFB0
	gsDPLoadTLUTCmd(7, 255), // 0x0000AFB8
	gsDPPipeSync(), // 0x0000AFC0
	gsSPVertex(_jyasinzou_room_25_vertices_00009EE0, 8, 0), // 0x0000AFC8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x0000AFD0
	gsSP2Triangles(3, 4, 2, 0, 5, 6, 2, 0), // 0x0000AFD8
	gsSP2Triangles(6, 7, 2, 0, 7, 0, 2, 0), // 0x0000AFE0
	gsDPPipeSync(), // 0x0000AFE8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013B98), // 0x0000AFF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000AFF8
	gsDPLoadSync(), // 0x0000B000
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000B008
	gsDPPipeSync(), // 0x0000B010
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000B018
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000B020
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x0000B028
	gsDPTileSync(), // 0x0000B030
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000B038
	gsDPLoadSync(), // 0x0000B040
	gsDPLoadTLUTCmd(7, 255), // 0x0000B048
	gsDPPipeSync(), // 0x0000B050
	gsSPVertex(_jyasinzou_room_25_vertices_00009F60, 4, 0), // 0x0000B058
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B060
	gsDPPipeSync(), // 0x0000B068
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014F98), // 0x0000B070
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000B078
	gsDPLoadSync(), // 0x0000B080
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000B088
	gsDPPipeSync(), // 0x0000B090
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000B098
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B0A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x0000B0A8
	gsDPTileSync(), // 0x0000B0B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000B0B8
	gsDPLoadSync(), // 0x0000B0C0
	gsDPLoadTLUTCmd(7, 255), // 0x0000B0C8
	gsDPPipeSync(), // 0x0000B0D0
	gsSPVertex(_jyasinzou_room_25_vertices_00009FA0, 4, 0), // 0x0000B0D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B0E0
	gsDPPipeSync(), // 0x0000B0E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00013B98), // 0x0000B0F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000B0F8
	gsDPLoadSync(), // 0x0000B100
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000B108
	gsDPPipeSync(), // 0x0000B110
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000B118
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000B120
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x0000B128
	gsDPTileSync(), // 0x0000B130
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000B138
	gsDPLoadSync(), // 0x0000B140
	gsDPLoadTLUTCmd(7, 255), // 0x0000B148
	gsDPPipeSync(), // 0x0000B150
	gsSPVertex(_jyasinzou_room_25_vertices_00009FE0, 4, 0), // 0x0000B158
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B160
	gsDPPipeSync(), // 0x0000B168
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_00014F98), // 0x0000B170
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000B178
	gsDPLoadSync(), // 0x0000B180
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000B188
	gsDPPipeSync(), // 0x0000B190
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000B198
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B1A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x0000B1A8
	gsDPTileSync(), // 0x0000B1B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000B1B8
	gsDPLoadSync(), // 0x0000B1C0
	gsDPLoadTLUTCmd(7, 255), // 0x0000B1C8
	gsDPPipeSync(), // 0x0000B1D0
	gsSPVertex(_jyasinzou_room_25_vertices_0000A020, 4, 0), // 0x0000B1D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B1E0
	gsSPEndDisplayList(), // 0x0000B1E8
};

Vtx_t _jyasinzou_room_25_vertices_0000B1F0[16] = 
{
	 { 0, 1823, -670, 0, 4156, 2008, 69, 62, 48, 255 }, // 0x0000B1F0
	 { 0, 1733, -620, 0, 5414, 1499, 100, 89, 67, 255 }, // 0x0000B200
	 { 0, 1733, -670, 0, 5373, 2127, 115, 102, 78, 255 }, // 0x0000B210
	 { 0, 1823, -510, 0, 4395, -18, 69, 62, 48, 255 }, // 0x0000B220
	 { 0, 1743, -510, 0, 5425, 88, 52, 49, 38, 255 }, // 0x0000B230
	 { 0, 1853, -670, 0, 3843, 1969, 35, 31, 25, 255 }, // 0x0000B240
	 { 20, 1863, -510, 0, 3704, -70, 35, 31, 25, 255 }, // 0x0000B250
	 { 60, 1853, -670, 0, 3072, 1969, 25, 20, 15, 255 }, // 0x0000B260
	 { 60, 1883, -510, 0, 3072, -97, 25, 20, 15, 255 }, // 0x0000B270
	 { 120, 1853, -670, 0, 2301, 1969, 35, 31, 25, 255 }, // 0x0000B280
	 { 100, 1863, -510, 0, 2440, -70, 35, 31, 25, 255 }, // 0x0000B290
	 { 120, 1823, -670, 0, 1988, 2008, 69, 62, 48, 255 }, // 0x0000B2A0
	 { 120, 1823, -510, 0, 1749, -18, 69, 62, 48, 255 }, // 0x0000B2B0
	 { 120, 1733, -625, 0, 734, 1555, 100, 89, 67, 255 }, // 0x0000B2C0
	 { 120, 1743, -510, 0, 719, 88, 52, 49, 38, 255 }, // 0x0000B2D0
	 { 120, 1733, -670, 0, 771, 2127, 115, 102, 78, 255 }, // 0x0000B2E0
};

Vtx_t _jyasinzou_room_25_vertices_0000B2F0[5] = 
{
	 { 120, 1733, -690, 0, 0, 3819, 189, 178, 157, 255 }, // 0x0000B2F0
	 { 0, 1733, -690, 0, 4096, 3819, 189, 178, 157, 255 }, // 0x0000B300
	 { 60, 1793, -690, 0, 2048, 2048, 255, 255, 255, 255 }, // 0x0000B310
	 { 120, 1853, -690, 0, 0, 277, 134, 119, 89, 255 }, // 0x0000B320
	 { 0, 1853, -690, 0, 4096, 277, 134, 119, 89, 255 }, // 0x0000B330
};

Vtx_t _jyasinzou_room_25_vertices_0000B340[24] = 
{
	 { 0, 1853, -690, 0, 683, 0, 81, 72, 55, 255 }, // 0x0000B340
	 { 0, 1853, -670, 0, 341, 0, 81, 72, 55, 255 }, // 0x0000B350
	 { 0, 1733, -670, 0, 341, 1024, 115, 102, 78, 255 }, // 0x0000B360
	 { 0, 1733, -690, 0, 683, 1024, 115, 102, 78, 255 }, // 0x0000B370
	 { 120, 1853, -690, 0, 0, 683, 81, 72, 55, 255 }, // 0x0000B380
	 { 120, 1853, -670, 0, 0, 853, 81, 72, 55, 255 }, // 0x0000B390
	 { 0, 1853, -670, 0, 2048, 853, 81, 72, 55, 255 }, // 0x0000B3A0
	 { 0, 1853, -690, 0, 2048, 683, 81, 72, 55, 255 }, // 0x0000B3B0
	 { 120, 1733, -690, 0, 683, 1024, 115, 102, 78, 255 }, // 0x0000B3C0
	 { 120, 1733, -670, 0, 341, 1024, 115, 102, 78, 255 }, // 0x0000B3D0
	 { 120, 1853, -670, 0, 341, 0, 81, 72, 55, 255 }, // 0x0000B3E0
	 { 120, 1853, -690, 0, 683, 0, 81, 72, 55, 255 }, // 0x0000B3F0
	 { 120, 1733, -710, 0, 683, 1024, 115, 102, 78, 255 }, // 0x0000B400
	 { 120, 1733, -690, 0, 341, 1024, 115, 102, 78, 255 }, // 0x0000B410
	 { 120, 1853, -690, 0, 341, 0, 81, 72, 55, 255 }, // 0x0000B420
	 { 120, 1853, -710, 0, 683, 0, 81, 72, 55, 255 }, // 0x0000B430
	 { 120, 1853, -710, 0, 0, 683, 81, 72, 55, 255 }, // 0x0000B440
	 { 120, 1853, -690, 0, 0, 853, 81, 72, 55, 255 }, // 0x0000B450
	 { 0, 1853, -690, 0, 2048, 853, 81, 72, 55, 255 }, // 0x0000B460
	 { 0, 1853, -710, 0, 2048, 683, 81, 72, 55, 255 }, // 0x0000B470
	 { 0, 1853, -710, 0, 683, 0, 81, 72, 55, 255 }, // 0x0000B480
	 { 0, 1853, -690, 0, 341, 0, 81, 72, 55, 255 }, // 0x0000B490
	 { 0, 1733, -690, 0, 341, 1024, 115, 102, 78, 255 }, // 0x0000B4A0
	 { 0, 1733, -710, 0, 683, 1024, 115, 102, 78, 255 }, // 0x0000B4B0
};

Vtx_t _jyasinzou_room_25_vertices_0000B4C0[8] = 
{
	 { 0, 1733, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B4C0
	 { 120, 1733, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B4D0
	 { 0, 1883, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B4E0
	 { 120, 1883, -710, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B4F0
	 { 0, 1733, -510, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B500
	 { 120, 1733, -510, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B510
	 { 0, 1883, -510, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B520
	 { 120, 1883, -510, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B530
};

Gfx _jyasinzou_room_25_dlist_0000B540[] =
{
	gsDPPipeSync(), // 0x0000B540
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000B548
	gsSPVertex(_jyasinzou_room_25_vertices_0000B4C0, 8, 0), // 0x0000B550
	gsSPCullDisplayList(0, 7), // 0x0000B558
	gsDPPipeSync(), // 0x0000B560
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000B568
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x0000B570
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000B578
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000DE98), // 0x0000B580
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x0000B588
	gsDPLoadSync(), // 0x0000B590
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000B598
	gsDPPipeSync(), // 0x0000B5A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x0000B5A8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x0000B5B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x0000B5B8
	gsDPTileSync(), // 0x0000B5C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000B5C8
	gsDPLoadSync(), // 0x0000B5D0
	gsDPLoadTLUTCmd(7, 255), // 0x0000B5D8
	gsDPPipeSync(), // 0x0000B5E0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000B5E8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x0000B5F0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x0000B5F8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x0000B600
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000B608
	gsSPVertex(_jyasinzou_room_25_vertices_0000B1F0, 16, 0), // 0x0000B610
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x0000B618
	gsSP2Triangles(3, 4, 1, 0, 3, 0, 5, 0), // 0x0000B620
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 6, 0), // 0x0000B628
	gsSP2Triangles(7, 6, 5, 0, 8, 7, 9, 0), // 0x0000B630
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 10, 0), // 0x0000B638
	gsSP2Triangles(11, 10, 9, 0, 12, 13, 14, 0), // 0x0000B640
	gsSP2Triangles(12, 11, 13, 0, 11, 15, 13, 0), // 0x0000B648
	gsDPPipeSync(), // 0x0000B650
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000B658
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000BE98), // 0x0000B660
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 5, 0), // 0x0000B668
	gsDPLoadSync(), // 0x0000B670
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x0000B678
	gsDPPipeSync(), // 0x0000B680
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 6, 0, 0, 5, 0), // 0x0000B688
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x0000B690
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000B698
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x0000B6A0
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x0000B6A8
	gsSPVertex(_jyasinzou_room_25_vertices_0000B2F0, 5, 0), // 0x0000B6B0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x0000B6B8
	gsSP2Triangles(2, 1, 4, 0, 3, 2, 4, 0), // 0x0000B6C0
	gsDPPipeSync(), // 0x0000B6C8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x0000B6D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_25_tex_0000E698), // 0x0000B6D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000B6E0
	gsDPLoadSync(), // 0x0000B6E8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000B6F0
	gsDPPipeSync(), // 0x0000B6F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000B700
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000B708
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x0000B710
	gsDPTileSync(), // 0x0000B718
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000B720
	gsDPLoadSync(), // 0x0000B728
	gsDPLoadTLUTCmd(7, 255), // 0x0000B730
	gsDPPipeSync(), // 0x0000B738
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000B740
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x0000B748
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x0000B750
	gsSPVertex(_jyasinzou_room_25_vertices_0000B340, 24, 0), // 0x0000B758
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B760
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000B768
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x0000B770
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x0000B778
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x0000B780
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x0000B788
	gsSPEndDisplayList(), // 0x0000B790
};

static u8 unaccountedB798[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0F, 0x10, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x19, 0xA0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1E, 0x00, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x24, 0x18, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x26, 0x10, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x28, 0x08, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2A, 0x00, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2C, 0x78, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2E, 0xD8, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x32, 0x98, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x34, 0xD0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x38, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x41, 0xF8, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4B, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4D, 0xC0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x50, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x53, 0x40, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x56, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x59, 0xD0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5E, 0x28, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x64, 0x00, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x6E, 0x18, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x76, 0xA8, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x79, 0x58, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x7D, 0xF0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x83, 0xF8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x8C, 0x30, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x90, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x92, 0x48, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA0, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xB5, 0x40, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 _jyasinzou_room_25_tex_0000B8A0[] = 
{
	0x61C9620B720B528B, 0x6A097A0B424B5149, 0x5ACB4A494947824B, 0x49CB5A4D72896B0B,  // 0x0000B8A0 
	0x4209518741896A8D, 0x39472945318761CB, 0x61C74A0731854107, 0x7A8D418769C94A4D,  // 0x0000B8C0 
	0x29C97A495ACD31CB, 0x7A899AC939C76207, 0x6A0739893A0D5947, 0x5907594921039A87,  // 0x0000B8E0 
	0x830D518571CB71C5, 0x52878A47698972CF, 0x8A8B398B5A874A05, 0x52CD29898B0F1903,  // 0x0000B900 
	0x824921514A8D2909, 0x8A07734D31491949, 0x6987190792459B8F, 0x2111528F424D4A47,  // 0x0000B920 
	0x81C72943294F9289, 0x5ACF8A898A05824D, 0x29056B59628F318D, 0x418B39CF8A4D6ACF,  // 0x0000B940 
	0x934BAB4B420D5295, 0x820582CF6B094A4F, 0x314B7B13BCCB4211, 0x9391B4116AD181C5,  // 0x0000B960 
	0x938F924962C78A87, 0x490750C57B114945, 0x30C5731152D77349, 0x3905928DB40F7315,  // 0x0000B980 
	0x934DAC0F62CFBC91, 0x830F8B0B5A95BC93, 0xAC118A4BB34B8BD3, 0xBBD1B309CC511109,  // 0x0000B9A0 
	0x69478351ABCDB38D, 0x210F93CFBB8B930D, 0x834F8393ABD18B51, 0x31CD734FB2C7834D,  // 0x0000B9C0 
	0xB45320CDDD936943, 0x8BD95085E6158B53, 0x4105CCD38BCDD5D5, 0x4A0318C56B0F1107,  // 0x0000B9E0 
	0xBD95AB499C0DC453, 0x7B5571836AC7AC13, 0x08C7D4D1AC9362D7, 0x83DBBB8D3145C449,  // 0x0000BA00 
	0xB40DCC4F9307ED93, 0x9BD3B4958309C54F, 0xB4D38397CD93C495, 0xE5D3CC8B9C55739D,  // 0x0000BA20 
	0xAC97E4D1B591D48F, 0x93897309DC93D451, 0xCC958347B3C91101, 0x28C3CCD1CC919AD1,  // 0x0000BA40 
	0xBD53CC897BDF945B, 0x9C194A9793DB928F, 0xB3CD9A8FD40FD551, 0xDC51D4CDD4C7BC49,  // 0x0000BA60 
	0x9CD3B49B10C79B47, 0xD61338819B879C5B, 0xAC0910C1DE130000, 0x0000000000000000,  // 0x0000BA80 
};

static u8 unaccountedBAA0[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5A, 0x92, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5A, 0x92, 0xA4, 0xE5, 
	0x94, 0x61, 0x94, 0x61, 0x8C, 0x1F, 0x83, 0xDB, 0x7B, 0x99, 0x7B, 0x99, 0x7B, 0x99, 0x7B, 0x99, 
	0x73, 0x57, 0x62, 0xD2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x73, 0x98, 0xCE, 0x2B, 0xCE, 0x2D, 
	0xB5, 0x6B, 0xAD, 0x29, 0x9C, 0xA3, 0x94, 0x5F, 0x94, 0x5F, 0x94, 0x5F, 0x94, 0x5F, 0x94, 0x5F, 
	0x83, 0xDB, 0x7B, 0x9B, 0x52, 0x50, 0x00, 0x00, 0x5A, 0x92, 0xBD, 0xE7, 0xDE, 0xAB, 0xA5, 0x27, 
	0x9C, 0xE5, 0x6B, 0x15, 0x62, 0xD3, 0x5A, 0x4F, 0x5A, 0x91, 0x6B, 0x15, 0x62, 0xD1, 0x73, 0x57, 
	0x8C, 0x1F, 0x94, 0x5F, 0x5A, 0x93, 0x4A, 0x0C, 0x94, 0x5F, 0xD6, 0x6B, 0xAD, 0x69, 0x94, 0x63, 
	0x73, 0x57, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x73, 0x57, 
	0x7B, 0x9B, 0x83, 0xDB, 0x6B, 0x13, 0x52, 0x0D, 0x7B, 0xDD, 0xBD, 0xA9, 0x94, 0x5F, 0x73, 0x57, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x7B, 0x99, 0x6B, 0x17, 0x73, 0x55, 0x5A, 0x91, 0x6B, 0x17, 0xB5, 0x67, 0x73, 0x59, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x73, 0x59, 0x7B, 0x99, 0x52, 0x4F, 0x63, 0x15, 0xA4, 0xE3, 0x73, 0x5B, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x73, 0x59, 0x83, 0xDD, 0x42, 0x0D, 0x73, 0x59, 0x94, 0x61, 0x73, 0x59, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x7B, 0x9B, 0x8C, 0x1F, 0x39, 0xCB, 0x73, 0x59, 0x94, 0x61, 0x73, 0x59, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x7B, 0x9D, 0x94, 0x61, 0x4A, 0x0D, 0x73, 0x59, 0x94, 0x61, 0x73, 0x59, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x7B, 0x9D, 0x9C, 0x61, 0x4A, 0x0D, 0x73, 0x59, 0x94, 0x61, 0x73, 0x59, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x7B, 0x9D, 0x9C, 0xA3, 0x5A, 0xD3, 0x63, 0x15, 0xA4, 0xE3, 0x73, 0x5B, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x73, 0x59, 0x83, 0xDD, 0x42, 0x0D, 0x73, 0x59, 0x94, 0x61, 0x73, 0x59, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x7B, 0x9B, 0x8C, 0x1F, 0x39, 0xCB, 0x73, 0x59, 0x8C, 0x1F, 0x73, 0x59, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x7B, 0x9B, 0x83, 0x9B, 0x4A, 0x0F, 0x5A, 0x91, 0xA4, 0xE1, 0x73, 0x9B, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x7B, 0x9D, 0x7B, 0x59, 0x41, 0xCD, 0x73, 0x59, 0x94, 0x61, 0x73, 0x59, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x7B, 0x9B, 0x94, 0x5F, 0x73, 0x57, 0x73, 0x59, 0x94, 0x61, 0x73, 0x59, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x73, 0x59, 0x8C, 0x1D, 0x5A, 0x93, 0x73, 0x59, 0x94, 0x61, 0x73, 0x59, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x73, 0x59, 0x8C, 0x1D, 0x5A, 0x93, 0x73, 0x59, 0x8C, 0x1F, 0x73, 0x59, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x7B, 0x9B, 0x83, 0x9B, 0x4A, 0x0F, 0x5A, 0x91, 0xA4, 0xE1, 0x73, 0x9B, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x7B, 0x9D, 0x7B, 0x59, 0x41, 0xCD, 0x62, 0xD3, 0x94, 0x5F, 0x73, 0x9B, 0x00, 0x01, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0x00, 0x01, 0x83, 0xDD, 0x73, 0x57, 0x39, 0x8B, 0x52, 0x51, 0x8B, 0xDD, 0x9C, 0xA3, 0x8C, 0x1F, 
	0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 
	0xB5, 0x67, 0x8C, 0x5F, 0x6B, 0x15, 0x31, 0x47, 0x41, 0xCB, 0x6B, 0x15, 0x8C, 0x1F, 0x9C, 0x63, 
	0x62, 0xD1, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0xBD, 0xEB, 
	0x9C, 0xA1, 0x8C, 0x1D, 0x5A, 0x91, 0x31, 0x89, 0x31, 0x8A, 0x6A, 0xD3, 0x73, 0x57, 0x83, 0x9B, 
	0x94, 0x61, 0x5A, 0x91, 0x42, 0x0B, 0x4A, 0x0B, 0x4A, 0x0B, 0x83, 0x99, 0x9C, 0x5F, 0x9C, 0xA3, 
	0x7B, 0x99, 0x73, 0x57, 0x5A, 0x91, 0x21, 0x04, 0x00, 0x00, 0x41, 0xCA, 0x52, 0x0D, 0x73, 0x57, 
	0x94, 0x5F, 0x94, 0x5F, 0x94, 0x5F, 0x94, 0x5F, 0x94, 0x5F, 0x9C, 0xA3, 0x8C, 0x1F, 0x83, 0xDB, 
	0x6B, 0x15, 0x52, 0x4F, 0x29, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x39, 0x88, 0x52, 0x0D, 
	0x62, 0xD3, 0x6B, 0x17, 0x73, 0x57, 0x73, 0x57, 0x62, 0xD3, 0x62, 0xD3, 0x6B, 0x15, 0x5A, 0x93, 
	0x39, 0x89, 0x39, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x31, 0x88, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 _jyasinzou_room_25_tex_0000BE98[] = 
{
	0xBDEDC62FCE71C62F, 0xC62FB5ABC62FC62F, 0xC62FBDEDB5ADB5AD, 0xC5EFC5EFBDEFBDED,  // 0x0000BE98 
	0xC5EFC62FCE71C62F, 0xC62FBDEDBDEDC62F, 0xC5EFCE2FC62FBDED, 0xBDEDBDEDC5EFC5EF,  // 0x0000BEB8 
	0x6B156B156B156B15, 0x6B156B156B156B15, 0x6B156B156B156B15, 0x6B156B156B156B15,  // 0x0000BED8 
	0x6B156B156B156B15, 0x6B156B1573576B17, 0x6B156B156B156B15, 0x6B156B156B156B15,  // 0x0000BEF8 
	0x6B156B156B156B15, 0x6B156B156B156B15, 0x7399841D6B156B15, 0x6B156B156B156B15,  // 0x0000BF18 
	0x6B156B156B157315, 0x731573576B156B15, 0x7399841D6B156B15, 0x6B156B156B157357,  // 0x0000BF38 
	0x83DB7B996B156B15, 0x6B156B156B155A93, 0xAD27C5EF841D62D3, 0x6AD56B156B156B15,  // 0x0000BF58 
	0x6B156B156B156B15, 0x6B15735762D35A93, 0xAD27C5EF841D7B97, 0x731573576B177357,  // 0x0000BF78 
	0x83DB7B996B156B15, 0x6B156B156B154A0F, 0x7359AD27841D62D3, 0x62D362D56B156B15,  // 0x0000BF98 
	0x6B156B1573156B15, 0x6B156B176B154A0F, 0x7359AD27841D7317, 0x6B1573576B177B99,  // 0x0000BFB8 
	0x83DB8399735762D3, 0x6B156B156B156B15, 0x4A0F5251735762D5, 0x6B156B156B156B15,  // 0x0000BFD8 
	0x6B156AD373156B15, 0x6B156B1573576B15, 0x4A0F525173577B99, 0x73577B9973597B99,  // 0x0000BFF8 
	0x83DB83996B156AD3, 0x6B156B156B156B15, 0x6B156B156B1562D5, 0x6B156B156B156B15,  // 0x0000C018 
	0x6B156B156B156B15, 0x6B156B1573576B15, 0x62D35A9362D37357, 0x7357735773577B99,  // 0x0000C038 
	0x2107210729492909, 0x2909314B29092909, 0x314B398B314B2907, 0x2107294929492107,  // 0x0000C058 
	0x2107210729092949, 0x2949294929492949, 0x2949210721072909, 0x29092949294939CD,  // 0x0000C078 
	0x20C620C620C620C6, 0x20C6294939CB7359, 0x4A0F290820C620C6, 0x20C620C620C620C6,  // 0x0000C098 
	0x20C620C620C620C6, 0x20C620C62106314B, 0x4A517359318B20C6, 0x20C620C620C620C6,  // 0x0000C0B8 
	0x20C620C620C620C6, 0x20C6294939CB7359, 0x4A0F290820C620C6, 0x20C620C620C620C6,  // 0x0000C0D8 
	0x20C620C620C620C6, 0x20C620C62106314B, 0x4A517359318B20C6, 0x20C620C620C620C6,  // 0x0000C0F8 
	0x20C620C620C620C6, 0x20C6294939CD7359, 0x4A11290820C620C6, 0x20C620C620C620C6,  // 0x0000C118 
	0x20C620C620C620C6, 0x20C620C62106314B, 0x52517359398B20C6, 0x20C620C620C620C6,  // 0x0000C138 
	0x20C620C620C620C6, 0x20C6294941CD735B, 0x4A51290820C620C6, 0x20C620C620C620C6,  // 0x0000C158 
	0x20C620C620C620C6, 0x20C620C62106318B, 0x52517359398B20C6, 0x20C620C620C620C6,  // 0x0000C178 
	0x20C620C620C620C6, 0x20C6294941CD739B, 0x4A51290820C620C6, 0x20C620C620C620C6,  // 0x0000C198 
	0x20C620C620C620C6, 0x20C620C62106318B, 0x5293735B398D20C6, 0x20C620C620C620C6,  // 0x0000C1B8 
	0x20C620C620C620C6, 0x20C62949420F7B9B, 0x5251290820C620C6, 0x20C620C620C620C6,  // 0x0000C1D8 
	0x20C620C620C620C6, 0x20C620C62108398B, 0x5A93739B39CD20C6, 0x20C620C620C620C6,  // 0x0000C1F8 
	0x20C620C620C620C6, 0x20C6314B4A0F7B9B, 0x5251294820C620C6, 0x20C620C620C620C6,  // 0x0000C218 
	0x20C620C620C620C6, 0x20C620C62908398D, 0x5A937B9B39CD20C6, 0x20C620C620C620C6,  // 0x0000C238 
	0x20C620C620C620C6, 0x20C6314B4A0F7BDB, 0x5251294820C620C6, 0x20C620C620C620C6,  // 0x0000C258 
	0x20C620C620C620C6, 0x20C620C62908398D, 0x5AD37B9B39CD20C6, 0x20C620C620C620C6,  // 0x0000C278 
	0x20C620C620C620C6, 0x20C629494A0F7BDB, 0x5251294820C620C6, 0x20C620C620C620C6,  // 0x0000C298 
	0x20C620C620C620C6, 0x20C620C62108398B, 0x5AD37B9B39CD20C6, 0x20C620C620C620C6,  // 0x0000C2B8 
	0x20C620C620C620C6, 0x20C6314B4A0F83DD, 0x5253294820C620C6, 0x20C620C620C620C6,  // 0x0000C2D8 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x62D37BDB39CD20C6, 0x20C620C620C620C6,  // 0x0000C2F8 
	0x20C620C620C620C6, 0x20C6314B4A4F841D, 0x5293294820C620C6, 0x20C620C620C620C6,  // 0x0000C318 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x62D583DD39CD20C6, 0x20C620C620C620C6,  // 0x0000C338 
	0x20C620C620C620C6, 0x20C6318B4A4F8C1F, 0x5293294820C620C6, 0x20C620C620C620C6,  // 0x0000C358 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x62D583DD41CD20C6, 0x20C620C620C620C6,  // 0x0000C378 
	0x20C620C620C620C6, 0x20C6314B4A0F8C1F, 0x5A93294820C620C6, 0x20C620C620C620C6,  // 0x0000C398 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x62D583DD41CF20C6, 0x20C620C620C620C6,  // 0x0000C3B8 
	0x20C620C620C620C6, 0x20C6314B4A0F841F, 0x5A93294820C620C6, 0x20C620C620C620C6,  // 0x0000C3D8 
	0x20C620C620C620C6, 0x20C620C62908398B, 0x62D5841D420F20C6, 0x20C620C620C620C6,  // 0x0000C3F8 
	0x20C620C620C620C6, 0x20C631494A0F841F, 0x5A95294820C620C6, 0x20C620C620C620C6,  // 0x0000C418 
	0x20C620C620C620C6, 0x20C620C62908398B, 0x62D5841F420F20C6, 0x20C620C620C620C6,  // 0x0000C438 
	0x20C620C620C620C6, 0x20C631494A0F841F, 0x5A95294820C620C6, 0x20C620C620C620C6,  // 0x0000C458 
	0x20C620C620C620C6, 0x20C620C62106398B, 0x62D5841F420F20C6, 0x20C620C620C620C6,  // 0x0000C478 
	0x20C620C620C620C6, 0x20C631494A0F8C1F, 0x5AD5314820C620C6, 0x20C620C620C620C6,  // 0x0000C498 
	0x20C620C620C620C6, 0x20C620C62108398B, 0x62D58C1F4A1120C6, 0x20C620C620C620C6,  // 0x0000C4B8 
	0x20C620C620C620C6, 0x20C631494A4F8C61, 0x62D7314A20C620C6, 0x20C620C620C620C6,  // 0x0000C4D8 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x63158C614A5120C6, 0x20C620C620C620C6,  // 0x0000C4F8 
	0x20C620C620C620C6, 0x20C6314B4A4F9461, 0x6317314A20C620C6, 0x20C620C620C620C6,  // 0x0000C518 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x63159461525120C6, 0x20C620C620C620C6,  // 0x0000C538 
	0x20C620C620C620C6, 0x20C6314B4A4F9461, 0x6B17314A20C620C6, 0x20C620C620C620C6,  // 0x0000C558 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x63159461525320C6, 0x20C620C620C620C6,  // 0x0000C578 
	0x20C620C620C620C6, 0x20C6314B4A4F9461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000C598 
	0x20C620C620C620C6, 0x20C620C62908398D, 0x63159461529320C6, 0x20C620C620C620C6,  // 0x0000C5B8 
	0x20C620C620C620C6, 0x20C6314B4A0F9461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000C5D8 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x631594615A9320C6, 0x20C620C620C620C6,  // 0x0000C5F8 
	0x20C620C620C620C6, 0x20C6318B4A0F9461, 0x6B19318A20C620C6, 0x20C620C620C620C6,  // 0x0000C618 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x62D594615A9320C6, 0x20C620C620C620C6,  // 0x0000C638 
	0x20C620C620C620C6, 0x20C6314B4A0F9461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000C658 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x62D594615A9320C6, 0x20C620C620C620C6,  // 0x0000C678 
	0x20C620C620C620C6, 0x20C6314B4A0F9461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000C698 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x631594615A9320C6, 0x20C620C620C620C6,  // 0x0000C6B8 
	0x20C620C620C620C6, 0x20C6314B4A4F9461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000C6D8 
	0x20C620C620C620C6, 0x20C620C6290839CD, 0x631794A3529320C6, 0x20C620C620C620C6,  // 0x0000C6F8 
	0x20C620C620C620C6, 0x20C6318B52519461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000C718 
	0x20C620C620C620C6, 0x20C620C6290841CD, 0x6B179461529320C6, 0x20C620C620C620C6,  // 0x0000C738 
	0x20C620C620C620C6, 0x20C639CD525194A1, 0x6B17314A20C620C6, 0x20C620C620C620C6,  // 0x0000C758 
	0x20C620C620C620C6, 0x20C620C62948420F, 0x6B179461525120C6, 0x20C620C620C620C6,  // 0x0000C778 
	0x20C620C620C620C6, 0x20C639CD525194A3, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000C798 
	0x20C620C620C620C6, 0x20C620C62948420F, 0x6B1794A35A9320C6, 0x20C620C620C620C6,  // 0x0000C7B8 
	0x20C620C620C620C6, 0x20C639CD525194A3, 0x6B19318A20C620C6, 0x20C620C620C620C6,  // 0x0000C7D8 
	0x20C620C620C620C6, 0x20C620C62948420F, 0x6B1794A35A9320C6, 0x20C620C620C620C6,  // 0x0000C7F8 
	0x20C620C620C620C6, 0x20C639CD529194A3, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000C818 
	0x20C620C620C620C6, 0x20C620C629484A0F, 0x6B1794A35A9320C6, 0x20C620C620C620C6,  // 0x0000C838 
	0x20C620C620C620C6, 0x20C641CD529394A3, 0x6B17314A20C620C6, 0x20C620C620C620C6,  // 0x0000C858 
	0x20C620C620C620C6, 0x20C620C629484A0F, 0x6B179463525120C6, 0x20C620C620C620C6,  // 0x0000C878 
	0x20C620C620C620C6, 0x20C641CF529394A3, 0x6B17314A20C620C6, 0x20C620C620C620C6,  // 0x0000C898 
	0x20C620C620C620C6, 0x20C620C6314A4A0F, 0x6B199463525120C6, 0x20C620C620C620C6,  // 0x0000C8B8 
	0x20C620C620C620C6, 0x20C64A0F5A9394A3, 0x6B17314A20C620C6, 0x20C620C620C620C6,  // 0x0000C8D8 
	0x20C620C620C620C6, 0x20C620C6314A4A51, 0x6B599463525120C6, 0x20C620C620C620C6,  // 0x0000C8F8 
	0x20C620C620C620C6, 0x20C64A515A9394A3, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000C918 
	0x20C620C620C620C6, 0x20C620C6318A5251, 0x6B599463529120C6, 0x20C620C620C620C6,  // 0x0000C938 
	0x20C620C620C620C6, 0x20C64A515AD394A3, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000C958 
	0x20C620C620C620C6, 0x20C620C6318A5253, 0x73599463529120C6, 0x20C620C620C620C6,  // 0x0000C978 
	0x20C620C620C620C6, 0x20C6525162D594A3, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000C998 
	0x20C620C620C620C6, 0x20C620C6318A5293, 0x735994A15A9120C6, 0x20C620C620C620C6,  // 0x0000C9B8 
	0x20C620C620C620C6, 0x20C6525162D594A3, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000C9D8 
	0x20C620C620C620C6, 0x20C620C6318A5293, 0x739994615A9320C6, 0x20C620C620C620C6,  // 0x0000C9F8 
	0x20C620C620C620C6, 0x20C64A5162D594A3, 0x6B57318A20C620C6, 0x20C620C620C620C6,  // 0x0000CA18 
	0x20C620C620C620C6, 0x20C620C6318A5293, 0x739994615A9320C6, 0x20C620C620C620C6,  // 0x0000CA38 
	0x20C620C620C620C6, 0x20C64A5162D594A3, 0x6B57318A20C620C6, 0x20C620C620C620C6,  // 0x0000CA58 
	0x20C620C620C620C6, 0x20C620C6318A5293, 0x739B94615A9320C6, 0x20C620C620C620C6,  // 0x0000CA78 
	0x20C620C620C620C6, 0x20C64A5162D594A3, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000CA98 
	0x20C620C620C620C6, 0x20C620C6318A5A93, 0x739994615A9320C6, 0x20C620C620C620C6,  // 0x0000CAB8 
	0x20C620C620C620C6, 0x20C6525363159463, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000CAD8 
	0x20C620C620C620C6, 0x20C620C6318A5A93, 0x739994615A9320C6, 0x20C620C620C620C6,  // 0x0000CAF8 
	0x20C620C620C620C6, 0x20C64A5162D59461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000CB18 
	0x20C620C620C620C6, 0x20C620C6318A5293, 0x73999461529120C6, 0x20C620C620C620C6,  // 0x0000CB38 
	0x20C620C620C620C6, 0x20C64A0F62D59461, 0x6317314A20C620C6, 0x20C620C620C620C6,  // 0x0000CB58 
	0x20C620C620C620C6, 0x20C620C6318A5251, 0x73598C61525120C6, 0x20C620C620C620C6,  // 0x0000CB78 
	0x20C620C620C620C6, 0x20C64A0F62D59461, 0x6317314A20C620C6, 0x20C620C620C620C6,  // 0x0000CB98 
	0x20C620C620C620C6, 0x20C620C6318A5251, 0x73598C61525120C6, 0x20C620C620C620C6,  // 0x0000CBB8 
	0x20C620C620C620C6, 0x20C64A1162D59461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000CBD8 
	0x20C620C620C620C6, 0x20C620C6318A5251, 0x73598C61529120C6, 0x20C620C620C620C6,  // 0x0000CBF8 
	0x20C620C620C620C6, 0x20C64A115AD39461, 0x6B17318A20C620C6, 0x20C620C620C620C6,  // 0x0000CC18 
	0x20C620C620C620C6, 0x20C620C6318A5251, 0x73598C61525120C6, 0x20C620C620C620C6,  // 0x0000CC38 
	0x20C620C620C620C6, 0x20C64A0F5A938C61, 0x62D5314A20C620C6, 0x20C620C620C620C6,  // 0x0000CC58 
	0x20C620C620C620C6, 0x20C620C6318A5251, 0x6B598C614A5120C6, 0x20C620C620C620C6,  // 0x0000CC78 
	0x20C620C620C620C6, 0x20C64A0F5A938C61, 0x5AD5294820C620C6, 0x20C620C620C620C6,  // 0x0000CC98 
	0x20C620C620C620C6, 0x20C620C6314A4A51, 0x6B178C21420F20C6, 0x20C620C620C620C6,  // 0x0000CCB8 
	0x20C620C620C620C6, 0x20C6420F52938C1F, 0x5AD5294820C620C6, 0x20C620C620C620C6,  // 0x0000CCD8 
	0x20C620C620C620C6, 0x20C620C6314A4A51, 0x6B178C1F4A0F20C6, 0x20C620C620C620C6,  // 0x0000CCF8 
	0x20C620C620C620C6, 0x20C6420F5251841F, 0x5AD5314820C620C6, 0x20C620C620C620C6,  // 0x0000CD18 
	0x20C620C620C620C6, 0x20C620C6314A4A0F, 0x62D783DF4A1120C6, 0x20C620C620C620C6,  // 0x0000CD38 
	0x20C620C620C620C6, 0x20C641CD52517B9D, 0x5A93294820C620C6, 0x20C620C620C620C6,  // 0x0000CD58 
	0x20C620C620C620C6, 0x20C620C631484A0F, 0x62D57B9D4A0F20C6, 0x20C620C620C620C6,  // 0x0000CD78 
	0x20C620C620C620C6, 0x20C639CD52517359, 0x5253294820C620C6, 0x20C620C620C620C6,  // 0x0000CD98 
	0x20C620C620C620C6, 0x20C620C62948420F, 0x5A956B59420F20C6, 0x20C620C620C620C6,  // 0x0000CDB8 
	0x20C620C620C620C6, 0x20C639CD4A516B17, 0x4A51294820C620C6, 0x20C620C620C620C6,  // 0x0000CDD8 
	0x20C620C620C620C6, 0x20C620C6294841CF, 0x5A93631741CF20C6, 0x20C620C620C620C6,  // 0x0000CDF8 
	0x20C620C620C620C6, 0x20C639CD4A116B17, 0x4A51294820C620C6, 0x20C620C620C620C6,  // 0x0000CE18 
	0x20C620C620C620C6, 0x20C620C62948420F, 0x52936317420F20C6, 0x20C620C620C620C6,  // 0x0000CE38 
	0x20C620C620C620C6, 0x20C641CD4A116B19, 0x5251294820C620C6, 0x20C620C620C620C6,  // 0x0000CE58 
	0x20C620C620C620C6, 0x20C620C62948420F, 0x52936B17420F20C6, 0x20C620C620C620C6,  // 0x0000CE78 
};

u64 _jyasinzou_room_25_tex_0000CE98[] = 
{
	0x150707044D074766, 0x7FCCD6D6D6D6D6CC, 0xAEAE474747666647, 0x475A15074D074747,  // 0x0000CE98 
	0x07070715155A1547, 0x7FCCD6AECCAECC7F, 0x6666667F7FAE7F47, 0x471507070715667F,  // 0x0000CEB8 
	0x0707151515071515, 0xAECCAE7FAEAEAE66, 0x1547AE7F73664747, 0x07070707155A7F7F,  // 0x0000CED8 
	0x6615151515151515, 0x5A47071547667F15, 0x151547667F4E7315, 0x07044D0707477F7F,  // 0x0000CEF8 
	0x66665A15155A1315, 0x155A07154715157F, 0x7F471515664E4715, 0x1507150715667FAE,  // 0x0000CF18 
	0x7F4E4E1515151513, 0x15475A5A15154715, 0x4747150707471507, 0x071515151515667F,  // 0x0000CF38 
	0x734E5A1515151515, 0x0715071515156647, 0x1547151547074D04, 0x07071515075AAEAE,  // 0x0000CF58 
	0x4E4E471507151507, 0x040415071547D666, 0x4715151566150404, 0x071566474747CC7F,  // 0x0000CF78 
	0x4E4E151507071507, 0x040747664747AE47, 0x4715474747150411, 0x0715664715477F7F,  // 0x0000CF98 
	0x661515074D071507, 0x0407154E47667F66, 0x477F6647154D0704, 0x04075A4715477F73,  // 0x0000CFB8 
	0x1507074D044D4D04, 0x044D5A5A15154707, 0x0747474707074D04, 0x044D15150715477F,  // 0x0000CFD8 
	0x470707074D111111, 0x04075A4747157F15, 0x0715155A07070707, 0x044D07044D154766,  // 0x0000CFF8 
	0x47475A1507070411, 0x0415474747474715, 0x1507476615071507, 0x07070C0415071566,  // 0x0000D018 
	0x5A475A1515150704, 0x0715476666661507, 0x47664E4E155A0707, 0x07070704155A5A4E,  // 0x0000D038 
	0x131507075A15154D, 0x4D07474707071515, 0x15664715070C1104, 0x0707070407155A4E,  // 0x0000D058 
	0x15154D0715151507, 0x07154747074D1515, 0x11044E1507040407, 0x0C0707070707154E,  // 0x0000D078 
	0x1515071515471515, 0x07071566154D1504, 0x4D155A1507040715, 0x0C0C0C0C0707155A,  // 0x0000D098 
	0x4D154E5A155A1515, 0x154747470707154D, 0x071507070C070C04, 0x0C04040C07070404,  // 0x0000D0B8 
	0x15075A07155A1507, 0x1515151507154707, 0x1515040404070404, 0x0411110C07040404,  // 0x0000D0D8 
	0x115A471515150707, 0x1507150707075A5A, 0x070C040407070404, 0x0411040C07040404,  // 0x0000D0F8 
	0x070715474715155A, 0x1515150704071515, 0x0707070707041111, 0x1111040407070707,  // 0x0000D118 
	0x07070407154D0715, 0x1515155A07040707, 0x07070407040C0404, 0x0411041104040707,  // 0x0000D138 
	0x0715074D07111104, 0x4D07041504070707, 0x0715070707110411, 0x1104112F04040707,  // 0x0000D158 
	0x0707040707070411, 0x1111110707150704, 0x0713150704041111, 0x11151104044D0707,  // 0x0000D178 
	0x15074D4D4D070704, 0x4D4D2F0404070C04, 0x0C07070C044D0704, 0x07042F11044D4D11,  // 0x0000D198 
	0x1515074D074D0707, 0x04076D2F11110707, 0x0C0C0407044D0715, 0x070411112F040404,  // 0x0000D1B8 
	0x154E4D1515111107, 0x0407112F11110404, 0x040704070411112F, 0x040411112F110707,  // 0x0000D1D8 
	0x4D151566072F1107, 0x1111041104070411, 0x1107150711042F2F, 0x4D07155A4D040707,  // 0x0000D1F8 
	0x040715074D111507, 0x04040411040C0411, 0x040707042F112F11, 0x151507074D071507,  // 0x0000D218 
	0x0715154D04114D15, 0x1104070404040411, 0x040407112F11042F, 0x2F4D040407151515,  // 0x0000D238 
	0x154715154D2F1111, 0x114D07071111112F, 0x04042F2F2F04112F, 0x2F1111044D07135A,  // 0x0000D258 
	0x07154766072F292F, 0x2F0407072F2F6D2F, 0x04116D111111112F, 0x1111110707150713,  // 0x0000D278 
	0x154D4D1511041111, 0x2F042F2F112F2F2F, 0x2F112F112F2F2F2F, 0x2F04111111111104,  // 0x0000D298 
	0x154D4D154D040704, 0x2F2F1104112F2F6D, 0x2F112F2F2F2F2F2F, 0x2F04041111111111,  // 0x0000D2B8 
	0x5A4D044D4D071511, 0x2F11111111112F2F, 0x6D6D2F116D6D6D2F, 0x11110711044D1111,  // 0x0000D2D8 
	0x1507070404040711, 0x2F112F2F29292958, 0x29292F116D6D2F11, 0x2F2F042F11041104,  // 0x0000D2F8 
	0x5A07154D11112F11, 0x116D2F2F2958E9AB, 0xAB58582F6D296D2F, 0x6D2F116D2F111107,  // 0x0000D318 
	0x5A5A04296D2F2F6D, 0x1129292F5FAB7C4D, 0x11112999292F6D6D, 0x6D2F1129112F1107,  // 0x0000D338 
	0x5A0711112F2F2929, 0x111138AB6806360C, 0x479A9A7C58296D6D, 0x292F2F6D2F2F1104,  // 0x0000D358 
	0x5A0C111111292929, 0x291129E911071373, 0x47159E9A88582929, 0x292F29296D112F04,  // 0x0000D378 
	0x131111111129ABAB, 0x582938580B2F2F4E, 0x472F16157C992958, 0x296D11296D2F2F04,  // 0x0000D398 
	0x5A11111129585858, 0x582968990429294D, 0x9E2F111588389958, 0x586D2F112F2F1111,  // 0x0000D3B8 
	0xAB29585899433636, 0x175224AB044D2988, 0xC39E5A5A8858582F, 0x99996D1111111104,  // 0x0000D3D8 
	0x589958AB56639E9A, 0x9A9A56242F1573E6, 0xE6C373472F07C388, 0x0716992911111111,  // 0x0000D3F8 
	0x5858AB5834A2111D, 0x043F9A7C24117FAE, 0x73734E297C9A9AC3, 0x9E8817992911112F,  // 0x0000D418 
	0x2F58582F3624247C, 0x29997C9E292C5666, 0x4D1529299E479E47, 0x4D118817992F1199,  // 0x0000D438 
	0x29999958042F2C88, 0x4D99889A466D4D07, 0x4D882967292F8829, 0x24242936996D68AB,  // 0x0000D458 
	0x58685F293688889E, 0x887C1DE6385F2F29, 0x292F241129298829, 0x4D88073699ABAA38,  // 0x0000D478 
	0x2C2999AB2F04E6B1, 0x9E9A9E4D68120554, 0x40ABAB2907479E9E, 0xB1E63F4D5FAB4B52,  // 0x0000D498 
	0x05520499580447CC, 0x8836074B38124C2E, 0x46682F2F889E1D9A, 0xC59A9A07685F1717,  // 0x0000D4B8 
	0x0E0E0E2FAB2C4D15, 0x2F294B3828121B71, 0x26222F58114D2F88, 0xC3882968682C170E,  // 0x0000D4D8 
	0x050562052929292F, 0x404B2C382C265C71, 0x49B92F5829112F2F, 0x366D3838384B460E,  // 0x0000D4F8 
	0x2634CB6262299968, 0x5F380606053BAF3A, 0x3A495429292F292C, 0x294B1228381F2E26,  // 0x0000D518 
	0x261B0E343405BC38, 0x06282C2CCB343A49, 0x3A4912384B12121F, 0x4646123B1F642663,  // 0x0000D538 
	0x1B342671AF34282C, 0x2506284949052E3A, 0x1B2005105B384626, 0x4950B9251F3B493A,  // 0x0000D558 
	0x341B2E4922251B25, 0x28282526261F121F, 0x2E3505286812462E, 0x3AB9491B46A0505C,  // 0x0000D578 
	0x343449202234341B, 0x281B050546B9332E, 0x12052525281F1F26, 0x503A4971A03B503F,  // 0x0000D598 
	0x1B34263A1B1B1B1B, 0x252D281B3A346C78, 0x3A644C46381F2E3B, 0x49501C1BA0645063,  // 0x0000D5B8 
	0x341B2E2620261B05, 0x282805493A3A7479, 0x2649052810101220, 0x3A20261B5050503F,  // 0x0000D5D8 
	0x26344926CB263426, 0x1B1B0E0E4C305350, 0x641B05252812263A, 0x5049266C53334926,  // 0x0000D5F8 
	0x2E4C2E2E201BA064, 0x05433A6433333535, 0xA0431B2525053A26, 0x30535053CB33640E,  // 0x0000D618 
	0x4C121F1F0522051F, 0x254C49A033A0A0A0, 0x2234221B1B2E37A0, 0x6C71493322224C06,  // 0x0000D638 
	0x0A10545418121F18, 0xCB1FA0A0B9A06464, 0xA03334620522122E, 0x35222212181F430A,  // 0x0000D658 
	0x4610541018121F4A, 0xA0A0CBA0B9A06464, 0x6422104B1F401F18, 0x10101010104A4631,  // 0x0000D678 
};

u64 _jyasinzou_room_25_tex_0000D698[] = 
{
	0x1B341B343434051B, 0x341B34711B343434, 0x1B341B343434251B, 0x34341B5C1B343434,  // 0x0000D698 
	0x1B341B3434341F1B, 0x343434341B343434, 0x252525251F1F1F1F, 0x1F250525251F1810,  // 0x0000D6B8 
	0x1B1B1B1B1B1B1B1B, 0x1B1B1B1B1B1B1B1F, 0x1B1B1B1B341B261B, 0x1B1B261B1B261B1F,  // 0x0000D6D8 
	0x1B1B1B1B1B261B1B, 0x1B26261B1B261B25, 0x1B1B1B2626261B1B, 0x1B1B261B26261B25,  // 0x0000D6F8 
	0x1B1B1B1B261B2626, 0x0526261B26261B4C, 0x052525251F1F1F4A, 0x651F1F2525251F10,  // 0x0000D718 
	0x2605050505051B65, 0x0505051B05050505, 0x1B1B1B1B05050E1F, 0x0E0E0E0E0E0E050E,  // 0x0000D738 
	0x4C0E1B050505051F, 0x0505052E0505051B, 0x1B0E0E1B0505051F, 0x0505050505050505,  // 0x0000D758 
	0x1B0E050505050E1F, 0x050E050505050505, 0x0505050505052512, 0x0505050505052505,  // 0x0000D778 
	0x1210651012121012, 0x2810121F1F1F1F1F, 0x0510052505050505, 0x0505050505050525,  // 0x0000D798 
	0x1F10052505050505, 0x0505050505250505, 0x0510050505050505, 0x0505050505050505,  // 0x0000D7B8 
	0x2565252505050505, 0x2505050505052505, 0x2565254305050505, 0x0505050505052505,  // 0x0000D7D8 
	0x6510282828282828, 0x2828282828282865, 0x25251F2525252525, 0x2825252525252525,  // 0x0000D7F8 
	0x1F25252525250543, 0x2825250525252525, 0x1F251F2525282525, 0x102528251F25251F,  // 0x0000D818 
	0x651F1F281F281F1F, 0x101F28251F1F251F, 0x651F1F2828282828, 0x4A2828281F1F1F25,  // 0x0000D838 
	0xA628282810101080, 0x8180101010282810, 0x1F28656528282828, 0x2828282828656528,  // 0x0000D858 
	0x65252525281F2828, 0x252528281F1F1F65, 0x2525252525251F28, 0x28281F2825251F1F,  // 0x0000D878 
	0x252525252525251F, 0x25281F251F251F25, 0x2505052525050525, 0x0525252525251F25,  // 0x0000D898 
	0x0505050505050525, 0x25282825281F651F, 0x1F65656528281210, 0x1228282828652865,  // 0x0000D8B8 
	0x6505050505050510, 0x0505050505052505, 0x0505050505056265, 0x0505056205050505,  // 0x0000D8D8 
	0x25055D625D5D621F, 0x6205626205050505, 0x055D5D626262621F, 0x6362626362050505,  // 0x0000D8F8 
	0x055D626262626328, 0x6262623462050505, 0x4A281F251F651228, 0x8010651F1F1F1F25,  // 0x0000D918 
	0x1F05050505050505, 0x0505050505050505, 0x255D1B1B1B0E1B0E, 0x1B620E1B1B1B051B,  // 0x0000D938 
	0x251B1B1B1B1B1B1B, 0x1B1B1B1B1B1B5D1B, 0x251B1B1B1B1B1B1B, 0x1B1B1B1B1B1B5D1B,  // 0x0000D958 
	0x251B1B1B1B1B1B1B, 0x1B1B1B1B1B1B1B5D, 0x2505050505050505, 0x2525250525252525,  // 0x0000D978 
	0x1F251F1F1F1F1810, 0x814A14651F1F2525, 0x051B051B05251B5D, 0x1825051B5D5D5D1B,  // 0x0000D998 
	0x1F1B251B5D5D1B5D, 0x1F1B051B05055D1B, 0x655D051B5D055D05, 0x1F0505252505255D,  // 0x0000D9B8 
	0x1F251F0505250525, 0x652565651F051F05, 0x801010221F1F1F65, 0x28658065651F101F,  // 0x0000D9D8 
	0x4B4B80808080814B, 0x4B4B801080808080, 0xA3A3A3CAA3A36CA3, 0xA3CACA50CAA3A3A3,  // 0x0000D9F8 
	0x1B34343A50793A79, 0x50503A3A341B5D1B, 0x25345D5D3A3A3A5D, 0x5D3A1B1B5D5D621B,  // 0x0000DA18 
	0x1B5D25255D1B5D5D, 0x25343A1B25255D1B, 0x052572255D5D5D72, 0x725D3A5D72725D1B,  // 0x0000DA38 
	0x5D257272251B0B72, 0x72253A257272255D, 0x2572727272347272, 0x72723A727272723A,  // 0x0000DA58 
	0x7272727272727272, 0x7272727272727272, 0x50A3A3A3A3A350A3, 0xA350A3A350CAA3A3,  // 0x0000DA78 
};

u64 _jyasinzou_room_25_tex_0000DA98[] = 
{
	0x5702021E320B1C36, 0x0B75181877183202, 0x1E171E1736020202, 0x0202050531021700,  // 0x0000DA98 
	0x04321E0417050505, 0x38A8317475001C32, 0x321E1E1E00000232, 0x0202020236001E32,  // 0x0000DAB8 
	0x023202051E020B02, 0x57022C110000361E, 0x021E171E02360002, 0x0202050201050404,  // 0x0000DAD8 
	0x02180205055E0504, 0x051877F52B020502, 0x0205021E001C0205, 0x05320B020517020B,  // 0x0000DAF8 
	0x050B020202055717, 0x1817362B77050402, 0x0202040213055E01, 0x0B57050B0205011C,  // 0x0000DB18 
	0x1705021705171836, 0x020202042B360002, 0x170417171E010B40, 0x3202020202050502,  // 0x0000DB38 
	0x2B311E2B18322100, 0x32021E321731361E, 0x1C1E1E3602170032, 0x05051E021E011E2D,  // 0x0000DB58 
	0x1800480217000002, 0x361C02050475021E, 0x1E17020202171C02, 0x0202051E021E3231,  // 0x0000DB78 
	0x1E2B02020B021736, 0x0502360105172132, 0x0B0102051789025E, 0x020502050202181C,  // 0x0000DB98 
	0x050218050B020504, 0x01050B0B0B323205, 0x0B0505041C020B7D, 0x5E020232132B5721,  // 0x0000DBB8 
	0x1705361700050248, 0x0502025E05320502, 0x021C023217170502, 0x050217362C2D3202,  // 0x0000DBD8 
	0x0402022B36020502, 0x050B0B1702001C05, 0x0B323217021E0202, 0x023200181E042B0A,  // 0x0000DBF8 
	0x0B0B021C2D020502, 0x13381C7D02185E7D, 0x011C21321E130502, 0x00021E1E1801042B,  // 0x0000DC18 
	0x021C050402001389, 0x17320B0B0B000238, 0x7D57020B05320202, 0x321C321C36058938,  // 0x0000DC38 
	0x02321C0201055702, 0x7D05570B0B7D1102, 0x387D051C0232171C, 0x0B05051C02055E7D,  // 0x0000DC58 
	0x3805000505050257, 0x575E3857020B3218, 0x13387D171705321C, 0x5E5E1C0B385E3238,  // 0x0000DC78 
	0x050502020517321C, 0x57570B170204051C, 0x2C0200050213050B, 0x57380B021C5E0B02,  // 0x0000DC98 
	0x3217050202170017, 0x0402023217001E32, 0x0577001E18170205, 0x00575E021C020B05,  // 0x0000DCB8 
	0x050217171E1E1736, 0x1704020501360002, 0x003677172D1E0217, 0x1704040532170213,  // 0x0000DCD8 
	0x0505021E17170205, 0x0B051E1E05050202, 0x181E32181E053205, 0x32021E170B020200,  // 0x0000DCF8 
	0x2B021705051E1C02, 0x0B380B0B1C320500, 0x001C050032020B05, 0x0505321E02053204,  // 0x0000DD18 
	0x133600050002320B, 0x32325E0205011C31, 0x320002021E02570B, 0x050B2D0500133605,  // 0x0000DD38 
	0x050501021E020505, 0x1C00020217361100, 0x051700170205021C, 0x1300050502051702,  // 0x0000DD58 
	0x0157051E170B1C5E, 0x32361E1E00171E36, 0x02021E00181C020B, 0x32361C0002320202,  // 0x0000DD78 
	0x02020B0B0B555705, 0x1C051C0157175705, 0x0B5E051E17170232, 0x0504170532023205,  // 0x0000DD98 
	0x380202385702380B, 0x3805027D380B1713, 0xE7575E0B1E1E1305, 0x32041E011E170405,  // 0x0000DDB8 
	0x0B0B055E0B1C0205, 0x5E2405245E7D0118, 0x057D385E0B0B1702, 0x897D04050B1E0132,  // 0x0000DDD8 
	0x11021C050B57571C, 0x0B0532170B38362D, 0x130B021C0B5E0B01, 0x05055505055E8901,  // 0x0000DDF8 
	0x5E020017130B0502, 0x025E021705000A13, 0x1E0002323202021E, 0x1E32021704021305,  // 0x0000DE18 
	0x170B1117361C0502, 0x1E0405021E113636, 0x171717043202171E, 0x011E1E0536363202,  // 0x0000DE38 
	0x01055E572B001E0B, 0x05011E0205361702, 0x021E021E02170B02, 0x321C32171C021E32,  // 0x0000DE58 
	0x0B05050B1C17117D, 0x0505570217010202, 0x0532130232020505, 0x02050B02020B0202,  // 0x0000DE78 
};

u64 _jyasinzou_room_25_tex_0000DE98[] = 
{
	0x312419242452096B, 0x3A7126B92631092C, 0x31312E434C091231, 0x0A0A310A49556426,  // 0x0000DE98 
	0x09242424562D310A, 0x26262E4C4C31312C, 0x2C2E1B0E31314C4C, 0x433131314331316B,  // 0x0000DEB8 
	0x092424292D71260E, 0x0A09310A6426062C, 0x2E783A3A0E1B2634, 0x342D09313106316B,  // 0x0000DED8 
	0x2C2424311B6C5036, 0x560909430A2E4646, 0x3A83943A71347883, 0x260E432C31675209,  // 0x0000DEF8 
	0x242429437895780E, 0x5609240A0612462E, 0x50C99483A883BDAD, 0x3A2D31522C092C2C,  // 0x0000DF18 
	0x2424523434787983, 0x0E31310931093826, 0x34C1D5C99494A8A8, 0x78262E3609095609,  // 0x0000DF38 
	0x3124246B0E34263A, 0x340E09402C52090E, 0x269BC9D5C9C19494, 0x83342E5209096731,  // 0x0000DF58 
	0x2E3124522D67312E, 0x0E0E43565252240E, 0x6C9B9BC1D5DD9F9F, 0xA83A432C24090E06,  // 0x0000DF78 
	0x6B4C312956295243, 0x2E0E34366B563131, 0x9B9BC9C9CEE7D3A8, 0x8326093124312650,  // 0x0000DF98 
	0x313A640909242C31, 0x34345CA45C636752, 0x3A9B95C1D5D39494, 0x78260A09240A0650,  // 0x0000DFB8 
	0x36639A2656092C17, 0x5C83A4AD5C262D52, 0x2E6C95D594CE6C5C, 0x264309402C2E4331,  // 0x0000DFD8 
	0x887C34A206092C36, 0xC7AD958371340E2C, 0x0E265195949F7963, 0x432C2C2C52310A52,  // 0x0000DFF8 
	0x780D5C5C2D2F520E, 0x9ACED594833A4D24, 0x31432E6C6C6C2643, 0x092C2452520A4C0E,  // 0x0000E018 
	0x831D3AA836360931, 0x2D793A0E0E362429, 0x242C1F0A260E4331, 0x4024245631672663,  // 0x0000E038 
	0x3A649595262D3152, 0x31062E3109242452, 0x0D0E262643435652, 0x292C52520B367C26,  // 0x0000E058 
	0x1D9A6C1D17042C2C, 0x2C5229064652521D, 0x0D5C6C8334880E0F, 0x3652096B5C0D7C71,  // 0x0000E078 
	0x1DA8360E4D092C24, 0x2409090931310E34, 0x5C7883343A172D7C, 0x6B09123A345CACA4,  // 0x0000E098 
	0xAF78340E31310E17, 0x56294D6709260E2D, 0x719F945C790E5688, 0x31314650785CC583,  // 0x0000E0B8 
	0xAD79782E0E677C34, 0xA243314626959B79, 0x9595A9D13A0E5224, 0x0931673679B094B0,  // 0x0000E0D8 
	0x5C45460A6463C526, 0x2612240946509B95, 0x949583780E0A0924, 0x31092931643C97AF,  // 0x0000E0F8 
	0x430A46631D332E78, 0xA0224124090A9BA9, 0xD3A9AF953A0A2C2C, 0x41242456311F53C7,  // 0x0000E118 
	0x313164263551A483, 0x4F33644124311BA9, 0xCEA9A8792609090A, 0x52242424242952A2,  // 0x0000E138 
	0x0924B92D34BDBD78, 0x50350E5624242E50, 0xD89B6C34432C4329, 0x242C310952562929,  // 0x0000E158 
	0x093183505194BD50, 0x505164292429292E, 0x50956CA23109464C, 0x0A4D0F266C714C56,  // 0x0000E178 
	0x2409789B7469790E, 0x3134362929240A49, 0x9FA9512924124126, 0x74340D83FA95266B,  // 0x0000E198 
	0x2C52676C3A3A2667, 0x43314D0A24240931, 0x49262E2924413151, 0x9F9F83B6C1A8502E,  // 0x0000E1B8 
	0x5229672E79516B43, 0x50243143242C2643, 0x434C4609242C0EC5, 0xC1B8DDB6D36C0D0E,  // 0x0000E1D8 
	0x672956566B49343A, 0x2E3124242C439B50, 0x3A43092C2429A494, 0xB8E7B8B8B0AF2634,  // 0x0000E1F8 
	0x6356290967676B3A, 0x340A2424433ACE9F, 0x6C264C092417635C, 0x94B8A9835C5CEFC5,  // 0x0000E218 
	0x2624292429092E43, 0x6724246B0ED8E79F, 0x3A670931433156A2, 0x6CC9D8D88371B083,  // 0x0000E238 
	0x5031242424242409, 0x24295636A2349F79, 0x2646562429464D7C, 0xC5B6C1B6A851A8AD,  // 0x0000E258 
	0x6C2E312424242456, 0x564D4DA22D0E3434, 0x17673124241788C5, 0xFAB6BDAD6CB0B3BD,  // 0x0000E278 
	0x1F1F312424242424, 0x560D880E362D2D6B, 0x366729292971509F, 0x94B8DDAD3A786C6C,  // 0x0000E298 
	0x2E3106092C242409, 0x3157CF0F062D3109, 0x313131525234B0AD, 0xA4FAADBD6C502643,  // 0x0000E2B8 
	0x31582C522C244109, 0xA2C79A0E0FAF6C34, 0x0656292409676B1D, 0x1D79791D3A636731,  // 0x0000E2D8 
	0x24295667431B0A64, 0x0E4983901DA89534, 0x3411562424096756, 0x504C7C0E630E3141,  // 0x0000E2F8 
	0x52296B4C4C644343, 0x460A0E62AF95CE95, 0x780B56562424520E, 0x7926349A0F344309,  // 0x0000E318 
	0x523136260E2E3167, 0x432C2E060F3494A8, 0x5C5C670A41245656, 0x170F340E6BA2A231,  // 0x0000E338 
	0x2467A20E6B0E5C1D, 0x3A06091729347195, 0x7863175629242C2C, 0x0909312E316B4331,  // 0x0000E358 
	0x520E2D632D7183C5, 0xA4342D24432D7195, 0x71340F3656242424, 0x2C242C2E52313109,  // 0x0000E378 
	0x246BA2432DC783B0, 0xA4710D3143630F34, 0x341D0D6752191924, 0x3109520A09313124,  // 0x0000E398 
	0x096B0E0A7C7126AD, 0xBD71513A0A1F4317, 0x170F0D1724242C29, 0x2E31562C31095209,  // 0x0000E3B8 
	0x31310E316B340E9B, 0x94C19451501C5256, 0x366B635629092E26, 0x260E312C242C2C6B,  // 0x0000E3D8 
	0x0A26266B0E6B3AAD, 0x9FE79F9B74646B56, 0x3617064029432E51, 0x503A780A0A2C316B,  // 0x0000E3F8 
	0x09266C6C50A29BD8, 0x9FD36C0512520909, 0x366B52242E435050, 0xD59F9F7952242C31,  // 0x0000E418 
	0x243A7879260E3533, 0x55CA49310924242C, 0x095224242E2E6C50, 0xA9A96C954324242C,  // 0x0000E438 
	0x09523A0E433A1B2E, 0x2632646452382424, 0x24242429A2638383, 0x9495837843092911,  // 0x0000E458 
	0x2D0E4343675C5C79, 0x8369713629242424, 0x0929310BAD94C1BD, 0x94BDD15C52563F3F,  // 0x0000E478 
	0x5C0E52520D71C6AD, 0xAD7863292C242424, 0x09642E3678DDB6B6, 0xB6C19B49310ED1D1,  // 0x0000E498 
	0x635224314D5CC6C6, 0xA1A804242C292929, 0x295C26B9ADB8B8B8, 0xDDC9BD792E3A5C5C,  // 0x0000E4B8 
	0x6709243167311B31, 0x642E2F2456433129, 0x2911062E51B6B6E7, 0xB8B6B6A831345C5C,  // 0x0000E4D8 
	0x670924416B565624, 0x2C24115667673129, 0x29175209097883A9, 0x6CA8713667D17C7C,  // 0x0000E4F8 
	0x0E09242456242C24, 0x2429394DA20E4D29, 0x29175252246B3A9F, 0x0E502E52290DD15C,  // 0x0000E518 
	0x6B09192429293829, 0x2FACA894AD0E6767, 0x52173643520E506C, 0x342626242947AF5C,  // 0x0000E538 
	0x0E09242424110488, 0x6AB0CE785C633636, 0x3629310656292E50, 0x34262E24291D9A9A,  // 0x0000E558 
	0x4324242456636383, 0xC3D3A9A895718888, 0x365624295624293A, 0x342E5224296B3A5C,  // 0x0000E578 
	0x09242424432679B0, 0x9FB8D3A9D86C3988, 0x0B2F2429242429A2, 0x366B2F2F29526B0E,  // 0x0000E598 
	0x09242952522E5C63, 0x9FCEDD839B693A0B, 0x0656242429672D56, 0x29562F2956093152,  // 0x0000E5B8 
	0x5656295667562D26, 0x1D95A9B030642E0F, 0x9E292429670A8856, 0x5629292967312924,  // 0x0000E5D8 
	0x3636292424522D26, 0x340E3A491BA0647C, 0x2F2424244D36A229, 0x5629170A364D2924,  // 0x0000E5F8 
	0xA23456292917630E, 0x509F9B503535202E, 0x2924242452671D0E, 0x2D2DA2264D360E0E,  // 0x0000E618 
	0x0E6B2E24242F340E, 0x9FCACACAA4717C17, 0x2F2C24243131316B, 0x7179799B717C7163,  // 0x0000E638 
	0x340E4D2424562D0E, 0x6C79513A346BA211, 0x2924242C2C312956, 0x79786C6C95C96C34,  // 0x0000E658 
	0x3A565224242F360E, 0x717950503A2E6752, 0x5609310931313131, 0x6B26793A783A2671,  // 0x0000E678 
};

u64 _jyasinzou_room_25_tex_0000E698[] = 
{
	0x1919191919191919, 0x1919191941191919, 0x4019191940194019, 0x1919401919194040,  // 0x0000E698 
	0x4019191919191919, 0x1919191940191919, 0x0A4C432D0E053405, 0x4619191919191919,  // 0x0000E6B8 
	0x41090606060A0909, 0x09090D0E0606461B, 0x4C46461240461212, 0x4612120909401946,  // 0x0000E6D8 
	0x460F430F06060906, 0x06090D0F06433828, 0x4040411941384038, 0x41124C4612461912,  // 0x0000E6F8 
	0x414109090A090909, 0x41194141410A0E26, 0x262E4C2619265C34, 0x71344C4C0A381212,  // 0x0000E718 
	0x4C4109460A0E0D06, 0x0A0F060E0E0A0A06, 0x0D0D0E0606060F0D, 0x060946464C261940,  // 0x0000E738 
	0x4041414041410909, 0x0909414141410909, 0x12464C264A4C050E, 0x0E0E0F4306411240,  // 0x0000E758 
	0x4C10093812090A12, 0x0A46414141380909, 0x0A09060A060A0E06, 0x0F0605052E341938,  // 0x0000E778 
	0x380A460A06430606, 0x06090A0909094141, 0x41124C26104C462E, 0x623F2D0643124340,  // 0x0000E798 
	0x4C124606430A0A2E, 0x0A0A43060A431241, 0x0A0A060E060A0606, 0x0605434334714040,  // 0x0000E7B8 
	0x4041310A0F43060A, 0x090A410A0606060F, 0x0A0A096410262605, 0x05060A4346434340,  // 0x0000E7D8 
	0x4C09310941461246, 0x0A460909060A460A, 0x060A0941410A4C41, 0x2E0A434C4C261940,  // 0x0000E7F8 
	0x094141120A2E0F0F, 0x0A0A0D0609060909, 0x090A0E3A12460E0E, 0x43430E050E430A40,  // 0x0000E818 
	0x050A090A09460A0A, 0x0E0A2E2E2D0A0A0A, 0x0A090941411F4C10, 0x10090A0A0A054040,  // 0x0000E838 
	0x120A0A0A6B0E0E0F, 0x0F0A060F06060A0A, 0x0A060A06120A0A0A, 0x060D0E0D0D0F0919,  // 0x0000E858 
	0x090906060A060606, 0x060A0A0A430A1209, 0x094112460A4C4C4C, 0x06060A0A0E0E4019,  // 0x0000E878 
	0x090A0909090A0909, 0x094109090A060F06, 0x41090A094609090A, 0x0A09404040401919,  // 0x0000E898 
	0x4119191919411941, 0x091941410A0A0906, 0x0A09060A09090909, 0x0606060609094019,  // 0x0000E8B8 
	0x1940194119191919, 0x1919191919191919, 0x1940121012104040, 0x403146635CC7A4B0,  // 0x0000E8D8 
	0xC5A4CFCF3F051919, 0x1919191919191919, 0x1919191919411919, 0x1919194019191940,  // 0x0000E8F8 
	0x0F0E3F3FA4AFA4A4, 0x3A5C1B0E09411041, 0x6343CFA4D15C0534, 0x0E3F265C630E0E0E,  // 0x0000E918 
	0x0E0E0E063F3F0E26, 0x091B3A71B03A3A12, 0x3409265C34345C78, 0xA471262626261F26,  // 0x0000E938 
	0x0E0D0E0E0E0E0F0F, 0x0F0E0E0E1D26120A, 0x0A060E3F0E0D060E, 0x0E060E06060E0E0E,  // 0x0000E958 
	0x0F060F0E0D0D9EC7, 0x41630E0E430A2612, 0x264C1D060E0D263F, 0x0E06060E06060E06,  // 0x0000E978 
	0x0E9E9E3F0F0F060A, 0x0A0A0A0A26714663, 0x060E06630E0E3F0E, 0x0F06060E0E0E0E3F,  // 0x0000E998 
	0x0E0F0E0D0F0F0F26, 0x400E5C0E430A6410, 0x26780E0A0E063F0E, 0x0F060906060A0A06,  // 0x0000E9B8 
	0x9E0E3F0F573F3F0E, 0x0F0D061F12B9120E, 0x630E430E06090606, 0x060606060A060E0E,  // 0x0000E9D8 
	0x0F9E570E3F0D064C, 0x410E632E05064C40, 0x263A060A0A060E0F, 0x0E0E2E2E0E2E2E0A,  // 0x0000E9F8 
	0x06060E0F060E060E, 0x3F0E0E060626121D, 0x0E0A0A0E06060E06, 0x090A060F06060E0E,  // 0x0000EA18 
	0x0F0F0D0E0E0E0D1B, 0x090E0E0E623F0A40, 0x060F0F060F060606, 0x060A092E0E0E0E0D,  // 0x0000EA38 
	0x0906090A0A094643, 0x43623F570E2E1034, 0x0E0E060F0609060A, 0x090A060606060E0E,  // 0x0000EA58 
	0x0D0E0D0E2E060910, 0x410909050A1D0A40, 0x090A06060A090F0F, 0x06060E0E0A060A06,  // 0x0000EA78 
	0x0A09090909401940, 0x404109120A0A1043, 0x0A0E1D430D0F0A0A, 0x0940404040404040,  // 0x0000EA98 
	0x4019191919191919, 0x1919404010121010, 0x1012104040404040, 0x4009090606060A09,  // 0x0000EAB8 
	0x1919101012121210, 0x1040401919191919, 0x1919191940404040, 0x4040460A0A0A0505,  // 0x0000EAD8 
	0x0E5CC7C734A4785C, 0x71C71B5C3A3A2626, 0x26340E6346404019, 0x1940404019191919,  // 0x0000EAF8 
	0x0A2E5C342671261F, 0x261F4C264C264605, 0x26C3AF3F6B1D9AA4, 0x5C3434341B345C34,  // 0x0000EB18 
	0x34340E0E060E0606, 0x090A0A0A0A05050E, 0x0E464646124064B0, 0x3A3A26264C051941,  // 0x0000EB38 
	0x4C41414109090909, 0x0941414109090A06, 0x060A060E090E460A, 0x0606430A12122E2E,  // 0x0000EB58 
	0x050A0A090A090909, 0x094141124C2E2E0E, 0x2E060A4140190906, 0x0606060F060A0919,  // 0x0000EB78 
	0x1B09060E06060606, 0x06060609090A090E, 0x0A0E0D05402E4C0E, 0x0E0F06060941100A,  // 0x0000EB98 
	0x0A060A090F0F0606, 0x0A0A090A0A4C4C2E, 0x2E4C4C0A1941090F, 0x0F0E0D0606060609,  // 0x0000EBB8 
	0x4C0A190941194106, 0x094141410A0A0E0E, 0x060A0D05190E4C0A, 0x0A0E0E0F06060909,  // 0x0000EBD8 
	0x0A090A0A41410A2E, 0x0E0E0E0E0E0E2E2E, 0x0E2E0A41190A090A, 0x0A060909090A0A19,  // 0x0000EBF8 
	0x46060909410A0909, 0x09060D0606090909, 0x090A260E414C090A, 0x060A0A060A0A0A0A,  // 0x0000EC18 
	0x090A090909094109, 0x0A0A0A0A0A4C2E0E, 0x2E0E050A19090A06, 0x0A06090A0A0E0A41,  // 0x0000EC38 
	0x0A0A0A0A060E0E06, 0x0E0A090A0A090909, 0x41090E0641430E06, 0x0606060A060A090A,  // 0x0000EC58 
	0x2E0E0E0E0E0E2E2E, 0x05090A0A06060A0A, 0x0909060640090606, 0x09060A0A0F060919,  // 0x0000EC78 
	0x09090941090A4141, 0x094141090A0A0A0A, 0x4109090919190A0A, 0x0F0F090A09090A4C,  // 0x0000EC98 
	0x2E2E4C0A090A0919, 0x4019191919191919, 0x191919191941410A, 0x06060A060A0A0919,  // 0x0000ECB8 
	0x1919191919191919, 0x1941191919191919, 0x1919191919191919, 0x1919410919191919,  // 0x0000ECD8 
	0x1919191919191919, 0x0906060640191940, 0x0A0A091940401919, 0x1919191919191940,  // 0x0000ECF8 
	0x1D3AD10E0E0E3F0E, 0x090606060A121219, 0x09342626B9262626, 0x644C4C1F0A46050E,  // 0x0000ED18 
	0x0F0E0FAFAF3F3F0E, 0x262626260564404C, 0x0E1D1B6B0E642671, 0x64461219194C0526,  // 0x0000ED38 
	0x4C050E0E0A060606, 0x0F0941090A050A19, 0x64120A0A4609120A, 0x06060909090A0F06,  // 0x0000ED58 
	0x0E26260E0E3F3F1D, 0x1D050E460526194C, 0x0A0A090A0A0A4106, 0x260E4C19413A264C,  // 0x0000ED78 
	0x0A0A0E060A0A0A0A, 0x0E06060A0A051219, 0x640A124C43060606, 0x060909090A090909,  // 0x0000ED98 
	0x060D0E0A0F060609, 0x0606060F06344026, 0x2E0A090A0A090606, 0x46054C0909784C26,  // 0x0000EDB8 
	0x0A0A06060E3F0E06, 0x0A0F0F0D060A0919, 0x46054C0909094609, 0x06060606060A0906,  // 0x0000EDD8 
	0x060A0E060A0E0D06, 0x0A060A060E5C4026, 0x2605430A0A0A0609, 0x0A05344009260909,  // 0x0000EDF8 
	0x06060A0D0E0E0E0D, 0x0F0A0E0D0E0A4119, 0x410A0A43430A4612, 0x090A090A060D0606,  // 0x0000EE18 
	0x06060A0E0A0E0A0A, 0x0E0F0A0A094C4026, 0x340E460A0606060A, 0x054C4C41410E090A,  // 0x0000EE38 
	0x09060F06060A060E, 0x09060F0E0E060A40, 0x410A060E09090E09, 0x09090A0941094119,  // 0x0000EE58 
	0x090606060A06060A, 0x41410A0A0A0F4046, 0x0E0E050E430A0E0A, 0x4343464640090919,  // 0x0000EE78 
};

u64 _jyasinzou_room_25_tex_0000EE98[] = 
{
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000EE98 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000EEB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x48C148C138813081,  // 0x0000EED8 
	0x3081388148C148C1, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000EEF8 
	0x0000000000000000, 0x0000000000000000, 0x0000000040C138C1, 0x3081288128812081,  // 0x0000EF18 
	0x2081288128813081, 0x388148C148C10000, 0x0000000000000000, 0x0000000000000000,  // 0x0000EF38 
	0x0000000000000000, 0x0000000000000000, 0x40C138C130812881, 0x20814943518559C7,  // 0x0000EF58 
	0x59C7518539032081, 0x28813081388148C1, 0x48C1000000000000, 0x0000000000000000,  // 0x0000EF78 
	0x0000000000000000, 0x0000000040C13881, 0x2081208149436207, 0x728B830D938F938F,  // 0x0000EF98 
	0x938F830D830D728B, 0x6207494320813081, 0x388148C100000000, 0x0000000000000000,  // 0x0000EFB8 
	0x0000000020810000, 0x000048C138813081, 0x62077ACB830D8B4D, 0x938F938F938F938F,  // 0x0000EFD8 
	0x938F938F938F8B4F, 0x8B4D830D7ACB6207, 0x3081388148C10000, 0x0000208100000000,  // 0x0000EFF8 
	0x0000208100000000, 0x48C1388130816207, 0x7ACB830D8B4D938F, 0x8B4F938F938F938F,  // 0x0000F018 
	0x938F938F938F938F, 0x938F8B4F8B4D830D, 0x7ACB4943388148C1, 0x0000000020810000,  // 0x0000F038 
	0x0000208120812081, 0x2081208162077ACB, 0x830D8B4D8B4F938F, 0x938F938F938F938F,  // 0x0000F058 
	0x938F938F938F938F, 0x938F938F8B4D7ACD, 0x6A49414320812081, 0x2081208120810000,  // 0x0000F078 
	0x00000000000048C1, 0x48C13881208151C7, 0x728B830D8B4D938F, 0x938F938F938F938F,  // 0x0000F098 
	0x938F938F938F938F, 0x8B4F8B4D830D7ACB, 0x62072881308140C1, 0x48C1000000000000,  // 0x0000F0B8 
	0x0000000000000000, 0x0000000048C13881, 0x308162077ACB830D, 0x8B4D938F938F938F,  // 0x0000F0D8 
	0x938F938F938F8B4F, 0x8B4D830D728B59C7, 0x388148C100000000, 0x0000000000000000,  // 0x0000F0F8 
	0x0000000000000000, 0x00000000000048C1, 0x3881208151C5728B, 0x830D8B4D938F938F,  // 0x0000F118 
	0x938F8B4F8B4D830D, 0x728B51C530813881, 0x48C1000000000000, 0x0000000000000000,  // 0x0000F138 
	0x0000000000000000, 0x0000000000000000, 0x0000308130812081, 0x208159C7728B830D,  // 0x0000F158 
	0x830D830D728B51C5, 0x20812081388140C1, 0x0000000000000000, 0x0000000000000000,  // 0x0000F178 
	0x0000000000000000, 0x0000000000000000, 0x0000000048C13881, 0x2081208120812081,  // 0x0000F198 
	0x2081208120812081, 0x388140C100000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000F1B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x000040C138812081,  // 0x0000F1D8 
	0x2081308138C10000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000F1F8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000F218 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000F238 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000F258 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000F278 
};

u64 _jyasinzou_room_25_tex_0000F298[] = 
{
	0x10190F031023163D, 0x1620231009720309, 0x2A0609292E200367, 0x1F3C220E03164716,  // 0x0000F298 
	0x0F2616062016202A, 0x2A0629101003063D, 0x202016101F4D2323, 0x2A1F42063D16080F,  // 0x0000F2B8 
	0x0F0F343BAD162606, 0x033C06034F203D16, 0x47209C4E23062A3D, 0x162316160608080F,  // 0x0000F2D8 
	0x3403034526030F03, 0x062A033409030649, 0x084D0342084E1F67, 0x823D20664F10030F,  // 0x0000F2F8 
	0x0808030310222222, 0x033A080308060F10, 0x032906064E2A1F03, 0x6E20450F08091008,  // 0x0000F318 
	0x080D031026090308, 0x0903090606060926, 0x0306060939064E0D, 0x5426090FB60F080F,  // 0x0000F338 
	0x1F030F4508090634, 0x3A34083403344F15, 0x0C061F06062A3C3C, 0x4219297203080C08,  // 0x0000F358 
	0x080808452609090C, 0x3C03090909031515, 0x1503620306093C3C, 0x01201A0322080F08,  // 0x0000F378 
	0x0D0F0F1029101010, 0x1006080916162016, 0x233D20093A0D0D3C, 0x5420104F10030F0F,  // 0x0000F398 
	0x081009450F080609, 0x06092920492A0803, 0x2246160313084E23, 0x060F5403034F0908,  // 0x0000F3B8 
	0x16294545224D4223, 0x2947473D03030308, 0x0808060372344649, 0x0FAE080F08661D16,  // 0x0000F3D8 
	0x060F0D3C032A1F22, 0x063D233C23090834, 0x060D081616161408, 0x3A0934060803063D,  // 0x0000F3F8 
	0x100909101020103C, 0x22100310093A6634, 0x0909010651264508, 0x09B6030306064E20,  // 0x0000F418 
	0x0623033409091010, 0x103D1009033C0D3A, 0x0309030D669F0F09, 0x3A66010606066710,  // 0x0000F438 
	0x20103C080308D534, 0x0916062A100C0808, 0x060303081D450809, 0x0E08080806060810,  // 0x0000F458 
	0x0606100366037B7B, 0x2916030803420919, 0x030908011908010D, 0x4503030910030320,  // 0x0000F478 
	0x062310083AB60803, 0x29103A3C1F3A0909, 0x030830450E013C08, 0x220D080F09060826,  // 0x0000F498 
	0x2006030372030610, 0xAF03220106033A72, 0x09D50F0F06033A08, 0x0808010F03340810,  // 0x0000F4B8 
	0x2616202609201A03, 0x090F0F063A0E720E, 0x083AB61A1A26091F, 0x136608034E342A20,  // 0x0000F4D8 
	0x19191A101647030F, 0x220E101D09083A3A, 0x090909193B0F0909, 0x08080F0C7266087B,  // 0x0000F4F8 
	0x0F4F3B201606080F, 0x090809191D090920, 0x093B147B37AE4503, 0x2909103403850866,  // 0x0000F518 
	0x0F0F091A09060603, 0x030808AE34471546, 0x1A3A0F0F72222201, 0x081520099D0FD90F,  // 0x0000F538 
	0x0806032609060C2A, 0x233903224D4E1510, 0x0F72060303080308, 0x45080D450F0F72B6,  // 0x0000F558 
	0x3A0308100D03032A, 0x4E06033A09060622, 0x5423062909063C22, 0x3C450803061F3410,  // 0x0000F578 
	0x191F030682080662, 0x6754226609292010, 0x2A062A1006720309, 0x0910030D03030909,  // 0x0000F598 
	0x6206060682221F3C, 0x672222034F193F4F, 0x03060603223C0822, 0x0816090342060629,  // 0x0000F5B8 
	0x0606061F06080D54, 0x08030609097B0303, 0x23232A22220D2203, 0x45083403030C0303,  // 0x0000F5D8 
	0x233922AA9D09033C, 0x102A0C090F13AE22, 0x1047100642031010, 0x094595061F1F063C,  // 0x0000F5F8 
	0x06829F7BC034462A, 0x3D16269D54080308, 0x0808201020160309, 0x9D660F0F1206030C,  // 0x0000F618 
	0x4D2282220F1F0626, 0x3D20062320030803, 0x033C3C0616099D54, 0x080372220F06104D,  // 0x0000F638 
	0x224D3C0606103C06, 0x16200623064F0303, 0x062306100842224E, 0x03080F225454462A,  // 0x0000F658 
	0x033C220306060620, 0x23232A0603340810, 0x10262A19204E0342, 0x0308450F0606203D,  // 0x0000F678 
};

u64 _jyasinzou_room_25_tex_0000F698[] = 
{
	0x454503030F03ACAC, 0x34090906094F4F15, 0x1A0934343A7B7BD5, 0xD56672723A081009,  // 0x0000F698 
	0x08082208229D3B0F, 0x0610100909720F08, 0x4F548222827B7B72, 0x660F19724F343408,  // 0x0000F6B8 
	0x08030303090F1A34, 0x1009191206030808, 0x2A54420603080F7B, 0x857B0934260F4522,  // 0x0000F6D8 
	0x0366080310081A3B, 0x0662424E062A064E, 0x100610060603220F, 0x0F08220606420803,  // 0x0000F6F8 
	0x08080866030F3B3B, 0x2A104E4E2A102A3C, 0x203C060303033408, 0x033C420620060609,  // 0x0000F718 
	0x0603424203032026, 0x1023232A23239C23, 0x16102A5D03030303, 0x672A202368060322,  // 0x0000F738 
	0x06034D2203101520, 0x10109C23239C9C20, 0x49204E4242224203, 0x06233D3D2A420603,  // 0x0000F758 
	0x033434031A160926, 0x0910091003672A23, 0x4942200606224210, 0x2A20105406062306,  // 0x0000F778 
	0x0F08262E0903341A, 0x1A2603082A23234E, 0x820F201510064620, 0x2006450F0F10472A,  // 0x0000F798 
	0x0326190303030866, 0x151549203D202082, 0x54544D0623261515, 0x035422459D0F2016,  // 0x0000F7B8 
	0x3F2E030808033408, 0x0808494947204D54, 0x4242422209260906, 0x08064267424D224F,  // 0x0000F7D8 
	0x091A3A0306100342, 0x0F824D2026548282, 0x3C22066609100808, 0x0342032A2A3C223C,  // 0x0000F7F8 
	0x42513419062A4242, 0x030342343C540310, 0x0803340306200303, 0x4E2A1F064E1F3C2A,  // 0x0000F818 
	0x2A15164F03031003, 0x034E0D493442093A, 0x0866083A091A0634, 0x062A9C622A064E20,  // 0x0000F838 
	0x10AD190303060342, 0x0F3C2246063C083C, 0x34080F0F03290313, 0x08062A394E030310,  // 0x0000F858 
	0x233F4F343406064E, 0x3C6767162A4E423C, 0x080808034E100308, 0x3C032A102A22082A,  // 0x0000F878 
	0x582E3B2634089C67, 0x5D06234929200308, 0x03083A1020200303, 0x0F42033C54220806,  // 0x0000F898 
	0x201516194F032A9C, 0x232049161649261D, 0x0910101020492320, 0x4E2A5D4203060916,  // 0x0000F8B8 
	0x1F0F4F2E1A162316, 0x16160F22221A1A15, 0x3B2016161003203D, 0x1647232306121A26,  // 0x0000F8D8 
	0x420F7B0F2A168F23, 0x4F8245829D03083B, 0x1016160945548206, 0x2043472010160608,  // 0x0000F8F8 
	0x1F3413AA3C3D4749, 0x9D2206109C2A0803, 0x10260F5442063C3C, 0x2267204916080F0D,  // 0x0000F918 
	0x3C083422422A163D, 0x062A109C2323030D, 0x062A420610101009, 0x3A088203103C220F,  // 0x0000F938 
	0x030F081006102320, 0x23232A0610230642, 0x203D2A2A42223C08, 0x0306061029222208,  // 0x0000F958 
	0x08663A4F09032320, 0x4E4E42420606034E, 0x104906624E03420F, 0x424E1F091D08220F,  // 0x0000F978 
	0x660F660808032016, 0x423C1F4208034E06, 0x061A062906060808, 0x4D4254060603343C,  // 0x0000F998 
	0x0FB20F080303161A, 0x0F3C03080D034E03, 0x0815191008080F22, 0x4D2A4E1F39032203,  // 0x0000F9B8 
	0x0F0F0F3C03063B10, 0x06080808031F4254, 0x031619060E03083A, 0x203D682949060308,  // 0x0000F9D8 
	0x080F663C0610162A, 0x10100C0309062A2A, 0x191620080309343A, 0x0639064F26190306,  // 0x0000F9F8 
	0x6672342A20209D10, 0x162010103D3D152E, 0x1626102903660F7B, 0x544E221458190606,  // 0x0000FA18 
	0x4F4F4F19203C4554, 0x062029101A49AD4F, 0x727B19491506030C, 0x3D4939102E15123A,  // 0x0000FA38 
	0x34094F1A3B104F2A, 0x424F3B51152E4F0F, 0x0F0F081A5858BE58, 0x494926092206AD16,  // 0x0000FA58 
	0x3A3B3B0834093A3A, 0x080F3B2616080F0F, 0x0F7B0F083426511D, 0x672A0D22220F1615,  // 0x0000FA78 
	0xAD090F0F0F0E663A, 0x09450F1934090308, 0x080808087B0F0803, 0x9C5482220808AE09,  // 0x0000FA98 
	0x1A2666080F7B450F, 0x080F0F1D09190909, 0x3419340F080F1306, 0x030606060D030808,  // 0x0000FAB8 
	0x1934660308080F0F, 0x080F66DC1019093A, 0x093409087B660615, 0x121D291908221F0F,  // 0x0000FAD8 
	0x263A100909191D10, 0x1010091503340934, 0x0808097B72033A51, 0x0303080F37227203,  // 0x0000FAF8 
	0x3B6634093A09094F, 0x4F3B191A093A017B, 0x7B0F7B660E080119, 0x72060608080F7272,  // 0x0000FB18 
	0x0C343A0C1062060C, 0x060C033B03120322, 0x0808082203060616, 0x2A065C102909540F,  // 0x0000FB38 
	0x2E43142646102A12, 0x2A16491620290606, 0x060C060306062946, 0x2039233906061910,  // 0x0000FB58 
	0xAD582A0606061016, 0xAD2E2E1249585858, 0x1416262629142A2A, 0x292020030D3410AD,  // 0x0000FB78 
	0x0949492E49581616, 0x151412033A1215AD, 0x58495815BE26193C, 0x3C29291019165849,  // 0x0000FB98 
	0x1F131D1ADC164949, 0x0822130603548206, 0x26141A1D10081210, 0x10080919262E1510,  // 0x0000FBB8 
	0x3C2208AE22291D09, 0x08030301090D033A, 0x081906340109340C, 0x0908220308260906,  // 0x0000FBD8 
	0x0D22663A09090808, 0x0D0845010808340D, 0x0F2203220F080822, 0x720D0D033B080D03,  // 0x0000FBF8 
	0x06080E343A140F08, 0x0F08080F0F0F3A03, 0x0808140903030303, 0x0C3409191A08090C,  // 0x0000FC18 
	0x3B1A19261951B63A, 0x3A3A3A3A3A3A3A3A, 0x3B3B2EACAC313BAC, 0x3B19AC3AF5724FAC,  // 0x0000FC38 
	0x91959F0000000E09, 0x1827000E01080113, 0x3A0F0030130F0801, 0x010F0D45796E0801,  // 0x0000FC58 
	0x3001171C05138465, 0x9B30989F9824841C, 0x1C84029884307095, 0x9F843E3E8B70883E,  // 0x0000FC78 
	0x17171E0101001707, 0x072D2D002B072D74, 0x740707000707070C, 0x2D11070A0A0A0711,  // 0x0000FC98 
	0x1301010F13010900, 0x190007002D2D0100, 0x072B111112001101, 0x01012D00072D0101,  // 0x0000FCB8 
	0x4501010101010101, 0x0145010001010101, 0x01002D001E090711, 0x170907010E0F0F30,  // 0x0000FCD8 
	0x0100000D0C1A2912, 0x0912170113010E02, 0x042D2D1301111212, 0x14581619371C1C9B,  // 0x0000FCF8 
	0x300101191A073A08, 0x0314580917010201, 0x017475070C127691, 0xAA4527170301010F,  // 0x0000FD18 
	0x98010E1234959581, 0x88959B1A460A1301, 0x2D2B071415F0F095, 0x6CC58B09032D070D,  // 0x0000FD38 
	0x45013013139DAA98, 0x988BC51315122D00, 0x01001309030F0FAE, 0x45458B140D071801,  // 0x0000FD58 
	0x0F01010F0F458B7B, 0xAE0F080F15070000, 0x0017020112010908, 0x9D7945097C090001,  // 0x0000FD78 
	0x010700035C5C0322, 0x22090C0C78071407, 0x0707000019130801, 0x0806061D0A012D09,  // 0x0000FD98 
	0x2B0A11171A155812, 0x14291A09032D2B00, 0x2B11070001450903, 0x1D7878192D130E3A,  // 0x0000FDB8 
	0x0101000401001B78, 0x141DA80C002D0113, 0x0401040E0F300113, 0x01720E0004130D13,  // 0x0000FDD8 
	0x0113011700040400, 0x0002012B2B000000, 0x0113021313130E0F, 0x041C172413010101,  // 0x0000FDF8 
	0x4537010E00003618, 0x0000040017002D2D, 0x0100010101001700, 0x00180101010F1345,  // 0x0000FE18 
	0x012B2D2D00002D2D, 0x2B75002D002D0000, 0x010000000001011E, 0x011324130101020F,  // 0x0000FE38 
	0x5C12077474741212, 0x0707740A07090707, 0x0D0C740A0C070707, 0x2D170A0711110700,  // 0x0000FE58 
	0x545D0C0C5B5C5C03, 0x1F1F676767670C0C, 0x0C5C0C0C09070700, 0x0D03070C0107070C,  // 0x0000FE78 
};

u64 _jyasinzou_room_25_tex_0000FE98[] = 
{
	0x68234E23B8B8AFB8, 0x478F3D4E4E5439AF, 0x230D22103DB8478F, 0x47490C1F1F4D4D47,  // 0x0000FE98 
	0x1F5A54134E230C03, 0x393D542367626747, 0x620D0D628F2A1F1F, 0x3C47472339392A47,  // 0x0000FEB8 
	0x5C1F4DAF20062A23, 0x1F4E8F438F4747B8, 0x2A4D0C231F1F4E2A, 0x23034DB8B88F3D47,  // 0x0000FED8 
	0x473D478F0C4D1F54, 0x0D622A4762629C23, 0xB88F3D47235C393C, 0x4D62F239034D2247,  // 0x0000FEF8 
	0xB82323233D8F4747, 0x3D23AF060D5F3C1F, 0x233D474720473D47, 0x473D8F065A5A0C1F,  // 0x0000FF18 
	0x204747AF3D2A0D6E, 0x4D6223391F623D49, 0x621F3D234E1F1F4D, 0x1F06478F478F8FF2,  // 0x0000FF38 
	0x1F5C3D4723202320, 0x62620C8FAFAF473D, 0x4E2A234723232320, 0x2A5C23494343391F,  // 0x0000FF58 
	0x1F092A4747202339, 0x2023431F5A202006, 0x1F47AFAF473D2323, 0x5468065F375A2323,  // 0x0000FF78 
};

u64 _jyasinzou_room_25_tex_0000FF98[] = 
{
	0x0A0301270048000E, 0x110A1D1111040130, 0x131C2818111D1D11, 0x2727180065841300,  // 0x0000FF98 
	0x1901181833010B1C, 0x183B312727013065, 0x652404003BA81811, 0x180A270E65651301,  // 0x0000FFB8 
	0x000A1900305E3E24, 0x31111127011C3E30, 0x0B02022777111118, 0x1827015F84301709,  // 0x0000FFD8 
	0x111128843E022400, 0x3B113B170E843E0B, 0x913E0E7718273118, 0x2700000565370131,  // 0x0000FFF8 
	0x31270E131CA76500, 0x1D771101373E6C84, 0x371C181911270027, 0x0027000F371C0077,  // 0x00010018 
	0x180401133EC40431, 0x3127000D1C653065, 0x0E2B7731180E2827, 0x0027270424131131,  // 0x00010038 
	0x180221303E650F77, 0x1819270057303E30, 0x023111280E40210E, 0x2818180E3E790431,  // 0x00010058 
	0x18210EE79B653331, 0x1D19070E6C385E02, 0x1831272821240233, 0x0428021C651C3131,  // 0x00010078 
	0x280B24E71C1C1819, 0x7711043EDF1C240E, 0x313104040E1C0B0E, 0x28272713131E1818,  // 0x00010098 
	0x21303E3E301C000A, 0x18310E1C1C0B0E28, 0x31183118013E9721, 0x4827041305042704,  // 0x000100B8 
	0x0505021C0B57091D, 0x2700014065304021, 0x31313127385E5740, 0x2827182113273127,  // 0x000100D8 
	0x2828301C1C371111, 0x19000B0BDF973004, 0x313127005E910E04, 0x271811311811180E,  // 0x000100F8 
	0x280B303037130A11, 0x77271C306CDF5718, 0x3118280E1C041818, 0x3111180031183118,  // 0x00010118 
	0x40243E6513001D3B, 0x1D1804053E651311, 0x3128182104183131, 0x3127280E04282828,  // 0x00010138 
	0x2405053700091B77, 0x000901021C300077, 0x18310E0000183118, 0x2728042128183321,  // 0x00010158 
	0x0402653737111A11, 0x311804A7910B0018, 0x270E130127111127, 0x18045E0E04272804,  // 0x00010178 
	0x0E651C07001D7704, 0x31091365A7650219, 0x2700001131AC2827, 0x0065241C0E180128,  // 0x00010198 
	0x301C0E0D0D1D0A00, 0x2800001C6530132D, 0x1A1D113B18050427, 0x6530301718282702,  // 0x000101B8 
	0x021C01011D1D0327, 0x0100010E1C02050C, 0x141911180104041C, 0x3E05212711280E1C,  // 0x000101D8 
	0x050109141D093118, 0x27000E051C0E13BE, 0x1D1931002704655E, 0x570E180A11040165,  // 0x000101F8 
	0x840D110A0C272719, 0x2B040E1C05790D14, 0x191800000E0B0B85, 0x040418190E0E1C24,  // 0x00010218 
	0x1C130C0918000727, 0x040E050E1307110A, 0x2B090004301C6502, 0x0E180C0004010265,  // 0x00010238 
	0x1300010A19000E24, 0x24020401090C1D19, 0x19182704023E3E24, 0x1811191808001C13,  // 0x00010258 
	0x01010D77181C3765, 0x1C04130111190A0C, 0x1831002730305704, 0x01011811040E241C,  // 0x00010278 
	0x270D31310E376C3E, 0x130101000C110927, 0x31131C303E050009, 0x073B27130E0B5E30,  // 0x00010298 
	0x2711270901240B13, 0x010409001D191800, 0x0130309B1C040900, 0xAC110101213E8401,  // 0x000102B8 
	0x110A18373E3EA71C, 0x3700001D192B1904, 0x24570B5E05130000, 0x1827000E381C0E01,  // 0x000102D8 
	0x3109040D65A7650E, 0x0401191D003B0101, 0x2484240E1C132709, 0x19000E301C130111,  // 0x000102F8 
	0x0027010113131C01, 0x0E0D12090A010124, 0x243E651C0E01180A, 0x1800013E01011100,  // 0x00010318 
	0x0001000D010E0204, 0x000C190A09270402, 0x2457243704181919, 0x043A243701000101,  // 0x00010338 
	0x0F000D000E040E11, 0x27180A1907002801, 0x1C022404041D3119, 0x0018010101093700,  // 0x00010358 
	0x1703010400011827, 0x0011111111270124, 0x37240221013B7711, 0x1804041900651327,  // 0x00010378 
};

u64 _jyasinzou_room_25_tex_00010398[] = 
{
	0x0B040B380B600B0B, 0x0B380B380B0B4040, 0x0B5589550405380B, 0x210B050B38210A0A,  // 0x00010398 
	0x0201000221020201, 0x01020E020205240B, 0x210B0B2105010401, 0x02050E010000070A,  // 0x000103B8 
	0x4002000004010404, 0x0004020400000102, 0x0204020240050200, 0x0000170E0101111B,  // 0x000103D8 
	0x600B020402040105, 0x0B890E01020B890E, 0x0102000200000402, 0x040001040140070A,  // 0x000103F8 
	0x0B010B383840010B, 0x21050204050E0B02, 0x0400040007000238, 0x210221890B380411,  // 0x00010418 
	0x0200010538402102, 0x04011E0100020417, 0x0524020000210B02, 0x0B0B0B400B21171B,  // 0x00010438 
	0x2124040038890B0E, 0x01170E020E01170E, 0x04010200000B0B04, 0x0502210B0502000A,  // 0x00010458 
	0x0105020001040404, 0x0102210204040221, 0x0204070A09052404, 0x020E052102380000,  // 0x00010478 
	0x0B02020401041700, 0x020B400201052138, 0x00001400170E010B, 0x21210B210502070A,  // 0x00010498 
	0x0B00010B21000000, 0x0000000700000000, 0x1B16070001010202, 0x050121890E00077C,  // 0x000104B8 
	0x000004000117000A, 0x1414161B071B1278, 0x160A070004210104, 0x010001001709001B,  // 0x000104D8 
	0x020521020100000A, 0x071B1B1B0A0A1B14, 0x7407000000010204, 0x1E02020102212B07,  // 0x000104F8 
	0x3821010404010007, 0x191B1B0A12111B1B, 0x1B1B1D1200000002, 0x010000010E050111,  // 0x00010518 
	0x0B01000000000701, 0x1B1B1B0001010202, 0x010240020205020E, 0x0707000000010012,  // 0x00010538 
	0x0104010401000A0A, 0x141B1B0240402121, 0x0E0E02020E010007, 0x070A0A0707071B11,  // 0x00010558 
	0x040201000007070A, 0x0A14160001000000, 0x17000A0A112D1B14, 0x580A120A19077C14,  // 0x00010578 
	0x120121010400070A, 0x0A141B1B1B121B1D, 0x0A7816141B1B1D11, 0x07000000070A1B7C,  // 0x00010598 
	0x110701170007190A, 0x1707120A1B0A0A1B, 0x1478140705010502, 0x00010101000C0A0A,  // 0x000105B8 
	0x0714781B0A0A0A00, 0x0221010000000001, 0x010711210504002D, 0x1600040100070A0A,  // 0x000105D8 
	0x00070A1B0A12110C, 0x0000000000010540, 0x0B0400383840000A, 0x740402012D0A1214,  // 0x000105F8 
	0x040200002D001B00, 0x0000070012000000, 0x0000000B0401000A, 0x0A12112D111D7C7C,  // 0x00010618 
	0x0104000001071400, 0x0A0A070A1100000A, 0x071B1B0711070707, 0x1800010007111B74,  // 0x00010638 
	0x0500010E010A0A04, 0x0138021107000000, 0x001B00020004070A, 0x00050B0000010A2D,  // 0x00010658 
	0x00000401000A0A01, 0x0105010700240524, 0x001B00000000110A, 0x120A07110C070A00,  // 0x00010678 
	0x00010104040A1B11, 0x0000000007170001, 0x0014000A0A0A1211, 0x0402111BA80A0007,  // 0x00010698 
	0x6004050502071B07, 0x0A0707000A000A0A, 0x0A0A015E0B021B07, 0x0B40240207040007,  // 0x000106B8 
	0x0501243821001100, 0x020E000A1B000001, 0x010A38380B001B11, 0x0100010A00000011,  // 0x000106D8 
	0x0B04050100070700, 0x380202120A070200, 0x0A0A0B0102001B1B, 0x01000007071D0001,  // 0x000106F8 
	0x380B021100070A00, 0x0121051812002401, 0x0A0A0501000A0707, 0x1117071D1D0A0707,  // 0x00010718 
	0x0B380A0712110A07, 0x4002001B110A0205, 0x1B120E00000A0C00, 0x1D147C0A0707111B,  // 0x00010738 
	0x0540010E07011109, 0x0001071B1B070A14, 0x1B1B14000A0A0A07, 0x07112D0100040124,  // 0x00010758 
	0x01058960110A1211, 0x00000A0000000400, 0x02002D0700000400, 0x2101210B0B0B0500,  // 0x00010778 
};

u64 _jyasinzou_room_25_tex_00010798[] = 
{
	0x99B47FB45A0D1F12, 0x39396254BB7FA4BC, 0x7FE3A4BCBCA45FA4, 0xB4C9C9E3E6E3E48B,  // 0x00010798 
	0x697F675D6759597F, 0x7F7A867A59635D5D, 0x6B63597A59598667, 0x6B6B6E54622A4D69,  // 0x000107B8 
	0xBB638663597A7ABC, 0xCF5959E259635D5D, 0x5B63595959597F86, 0x7F4D070A07000101,  // 0x000107D8 
	0xE459C9596B6B5A6B, 0x6763BB7A7A59596B, 0x6763635969860300, 0x11272485F8C08570,  // 0x000107F8 
	0xA4597A59637F6363, 0x6B6B6B8659BB5963, 0x7A4D5B675B18D9C2, 0xD4C640817E805570,  // 0x00010818 
	0xF1E2CF597F867F63, 0x866B6B6363676B6B, 0x693730022828F6BF, 0x96C024C60E0E2437,  // 0x00010838 
	0xBC59CF59638659CF, 0x867A6B5B5B5D5D0D, 0x370BD4B130644B92, 0x60730E13273A0701,  // 0x00010858 
	0x4D6363636B7F63E5, 0x7ABB635D5A0D0100, 0x2860CD7E8C242827, 0x280C0C0A12010300,  // 0x00010878 
	0x376B6B5D637A7AE5, 0x7A635D5D1F010B27, 0xAC73EFEFC2240007, 0x111111147C070A09,  // 0x00010898 
	0xA4597A865D63637A, 0x636B620D00B6607D, 0x3133042728190C19, 0x0D0D14011D091417,  // 0x000108B8 
	0xC97ACFE2E55D415D, 0x5D5D07070EBFE18A, 0x2731270C0C1BA80C, 0x1D0719140712140C,  // 0x000108D8 
	0x5A6B86867A636B5D, 0x39120C0E24BFE1C0, 0x273B07097C14190B, 0x4B09121D1D78581B,  // 0x000108F8 
	0xE4BB7F63867A635D, 0x1F01854B21D94027, 0x11A8140A140730DD, 0x83111B0C14147809,  // 0x00010918 
	0xF77A7F867A7F0D0C, 0x0D13BFCDDA28770A, 0x1D147C16BE140960, 0x80191D1414161200,  // 0x00010938 
	0x7F866B676B636B4D, 0x010EC2DA6A240A09, 0xBEDC581B16141212, 0x2914140C58580C03,  // 0x00010958 
	0xE6BC595D5B5B670C, 0x01D4736404771D58, 0x78787814142E2E0C, 0x1400071D14120C91,  // 0x00010978 
	0xB4595959867F5F0D, 0x85EEBFC6181B147C, 0x7C1D141D58145829, 0x1D88AA0C0C1203B7,  // 0x00010998 
	0x696B7A59861F013E, 0x4BC2211827147858, 0x1D0C781D14147814, 0x01806D1D120C2483,  // 0x000109B8 
	0xC959BBA40D0E85BF, 0xBF2127181D147C0C, 0x0701190712121414, 0x141D1B1D1D074BA2,  // 0x000109D8 
	0x6E597AA40D01F6E1, 0xCD282714121B1614, 0x1D01958813012912, 0x292912122960B1A2,  // 0x000109F8 
	0x63686B670000B6F3, 0xC618BE0A1D120C0A, 0x780C857EC13E370C, 0x147C167C048AB0AB,  // 0x00010A18 
	0xBC7A674D13923804, 0x0277141D1D09071D, 0x1912123881B9EABD, 0xAA01130F61C1A2CC,  // 0x00010A38 
	0x5959A40DDAEE9624, 0x0E7C1D1B4BCB0F07, 0x0C010A01C6C1CCD1, 0xB9D3BD96D7A6A2AB,  // 0x00010A58 
	0xBB635A01BFCD9637, 0x19581401CBB30E14, 0x122914141328B3CA, 0xD1EAD3D3CCA2A2E0,  // 0x00010A78 
	0x866312040B929219, 0xA878140D5F031246, 0x0C0C0C0C1213C6EB, 0xCCD1B9A6C3CAD8D2,  // 0x00010A98 
	0x6B6B07072728010A, 0x1D7C14191214121D, 0x0C00191D0C1D0292, 0xA6A2D1A2A2ABF4FA,  // 0x00010AB8 
	0x7F6B856A9602011D, 0x141D1B1D0716291D, 0xC4CB300C000309C4, 0xDEA2D3A9CCABA6CA,  // 0x00010AD8 
	0xE654B2CDED7E017C, 0x160A141416121B12, 0x6930130A0912120F, 0x83B9B9ABB0D2A2AB,  // 0x00010AF8 
	0x596B1C6D6D1C090A, 0x141414147816140C, 0x09121B14120C0EAA, 0xA9C3A6C3CAA6A6CA,  // 0x00010B18 
	0xBC4D0E0B211E0A12, 0x1D0C7C1D0C1B1614, 0x0A1D1D0C120EE8D8, 0xC3C3D6A6F4B0ABA6,  // 0x00010B38 
	0xF16E806A6024190D, 0x781B141414295816, 0x1629141D0BC1ECC3, 0xC3EBB9A6B0A6ABAB,  // 0x00010B58 
	0xF74D884B801C1F17, 0x0D0C030C070C0D0C, 0x015F13707EABABA2, 0xB0D0C5D2D2C8B0B0,  // 0x00010B78 
};

u64 _jyasinzou_room_25_tex_00010B98[] = 
{
	0x3939153939463939, 0x393939391F625C1F, 0x0C391F6239623962, 0x5C625C395C39395C,  // 0x00010B98 
	0x6E6E5A6E6E0D1F5A, 0x0D1F031F6E5A6969, 0x696E1F1F1F5C1F0C, 0x1F0C4D1F5A6E6969,  // 0x00010BB8 
	0x6E796969795A3776, 0x6E0D5A3791797969, 0x5F5A5F76370D0D5F, 0x6E796E7969999969,  // 0x00010BD8 
	0x5A5A5F5F0D0D7691, 0x5F13797669371313, 0x0D137669375F5F91, 0x9991375F99A776AE,  // 0x00010BF8 
	0x0D0D0D0D0D135F13, 0x010D3779375F820D, 0x135F763713133776, 0x79130D0D37375F5F,  // 0x00010C18 
	0x120D0D0C0D0D5A0C, 0x0C0D0D1F1F0D0D1F, 0x5A1F0C1F0C5A695A, 0x5A0D0D0D0D1F0C09,  // 0x00010C38 
	0x5D5B525241524141, 0x52685B685D5D415B, 0x415B52526868525D, 0x5D5D5D5B5243585D,  // 0x00010C58 
	0x39415B9441414141, 0x4152524652524C41, 0x414152944343415B, 0x5B5D5B41524C43BB,  // 0x00010C78 
	0x5B5B4C4141414141, 0x4C52682968524C41, 0x414C523958434C5D, 0x415B414141524369,  // 0x00010C98 
	0x6B5C4C524141414C, 0x4C5B170446524C4C, 0x414C940707464C5D, 0x5B41415D4C435B80,  // 0x00010CB8 
	0x695C52524141414C, 0x945B382F43434C41, 0x419494070B484C4C, 0x5B5B524C52431CC4,  // 0x00010CD8 
	0x6D07524C5241944C, 0xA13970381143944C, 0x414CA11825045B4C, 0x5B5B4152A1293EBA,  // 0x00010CF8 
	0xC4375B524C41524C, 0x460B6C252143944C, 0x419458406157744C, 0x414141414605B4A0,  // 0x00010D18 
	0xA06C5B52524C9452, 0x11976C3E55589441, 0x4CA1469B80971E4C, 0x4C415D4C58386CC5,  // 0x00010D38 
	0xCB4B0D5B4C4C9446, 0x014B6C885707A141, 0x4C4339616D4B445B, 0x414C52A1439781D0,  // 0x00010D58 
	0xE09A17684C4CA107, 0x794B9A8130044352, 0x94431361BA923E48, 0x4C4C524305707ED0,  // 0x00010D78 
	0xE06D765B52944301, 0x9B60888169554352, 0xA1435E927EC08B33, 0x414C52683E81BAC5,  // 0x00010D98 
	0xCAC53E17A152490D, 0x8070817E4B3E5894, 0xA11780816A6A4B21, 0x074C4301708183C8,  // 0x00010DB8 
	0x6A836C6946A17437, 0x618B6A6A4B3E1E43, 0xA10D4B7E6A6A8113, 0x215243303E997EC7,  // 0x00010DD8 
	0x6A83CE3E14430037, 0x9581C06A88700249, 0x43026C7E6A83B03E, 0x445243979A8BC76A,  // 0x00010DF8 
	0x6AB0874B6E430165, 0x8B816A6ABA8B5558, 0x43656C6A6A6AA06C, 0x245B073E6CBAC7C0,  // 0x00010E18 
	0x6AC7ED7E70433797, 0x8B6A6A6AB7A47D05, 0x079BB7C7C0C8BACE, 0x55680D3ECEC8C86A,  // 0x00010E38 
	0x6A6A6A8B6D5B709B, 0x8BC87E6ABACE8B91, 0x676CBABA6AC7D0C5, 0x9B1E059AB7B0876A,  // 0x00010E58 
	0xAAAAAA54B44DB491, 0xB49895919999B47F, 0x6EA7999995B2A48B, 0xA70413A78BCE8B81,  // 0x00010E78 
	0x62290C0C0C0C620C, 0x1F1F1F0C0C1F1F5D, 0x0C5C1F1F4D4D0C5C, 0x084D13080D0D0C1F,  // 0x00010E98 
	0x12035F6E0D0D5A5F, 0x5F0D0D135A0D0D0D, 0x5F130D030C0D5A0D, 0x0C030C0C03031F0C,  // 0x00010EB8 
	0x1F79995F5F699176, 0x0D13377676135F84, 0x99A799375F699976, 0x79010D0176760D82,  // 0x00010ED8 
	0x0D6E0D0D0D696E0D, 0x010D795F131376A7, 0x695F79377999766E, 0x13010D76765F3737,  // 0x00010EF8 
	0x5A6E0C030D0D0D0C, 0x030D5A0D035A6969, 0x6E0D5A7976375A01, 0x030D13765F0D7679,  // 0x00010F18 
	0x795F0C0C0D12030D, 0x5A0D030C0C0D540D, 0x03030D5F5A010303, 0x010D5F130D13766E,  // 0x00010F38 
	0x5A0C0D0312120D5A, 0x6E5A1F0C0C12290C, 0x12120C0C0C030C0D, 0x79790D0D0C030C5C,  // 0x00010F58 
	0x390D1F4D4D0C7F6E, 0x6E5A7F690D1F2929, 0x391212120C0D0C69, 0xC97F4D1F0C392915,  // 0x00010F78 
};

u64 _jyasinzou_room_25_tex_00010F98[] = 
{
	0x343B340D19101910, 0x1D26261526261D19, 0x193B26511A4F1A51, 0xA82B3E570B0B2B14,  // 0x00010F98 
	0x19491A1A1A1A1A1A, 0x2E3F2E2E151A1A1A, 0x1551511A151A1526, 0xA82B3674742C2C1D,  // 0x00010FB8 
	0x261A094F26261516, 0x2E2E3F2E191A261A, 0x3B26263B151A2E2E, 0x1900483690902BAC,  // 0x00010FD8 
	0x2619261A3B3F3F3F, 0x2E512E151515151A, 0x19261A1D1A151515, 0x3B04902D2B752D19,  // 0x00010FF8 
	0x161A4F1D2E153F3F, 0x2E20261515151A15, 0x1A262E2E2E2E1A15, 0x1904002C36752D19,  // 0x00011018 
	0x511A3B26511A1A4F, 0x152E2E1515151551, 0x3F1A3F3F3F2E1515, 0x00042C2D36752C34,  // 0x00011038 
	0x2E16153F1A51091A, 0x10093B261A1A5116, 0x3B15264F3F151551, 0x19043648002C2D1D,  // 0x00011058 
	0x51154F3F2E1A1A26, 0x1A0910191A1A1A26, 0x161919093F2E1515, 0x00212D36482C361A,  // 0x00011078 
	0x1A1A4F1A15264F26, 0x2619130E85802402, 0x262615261A3F512E, 0x341E2B2D1E2D361A,  // 0x00011098 
	0x151A191A343A163B, 0x1DB69287D6A98366, 0x111A1A261A3F151A, 0x091E2B2B902C4834,  // 0x000110B8 
	0x15152615264F1919, 0x0E878E9A959F7E4B, 0x4B193B1A1A2E1515, 0x18042C2D362C3619,  // 0x000110D8 
	0x262E3F153B1A1672, 0x30834B30308083B9, 0x4B131926153F3F15, 0x1D042B36052B483B,  // 0x000110F8 
	0x162E1A154F15100F, 0x9B4B9F92E8838EB9, 0x6D9A111A1A513F2E, 0x19002B362B2C3685,  // 0x00011118 
	0x203F264F103F2E19, 0x85B28C838E816D83, 0x8E80191A151A2E15, 0x191E2B36362C4824,  // 0x00011138 
	0x5115263B1551153B, 0x70A0DD876D7E7E6D, 0xB20E1A152E1A2E1A, 0x191E2B481E2B3245,  // 0x00011158 
	0x5115082616151519, 0x3A6080B29281B29F, 0x0409513F3F152E1A, 0x311E2B2C2D901811,  // 0x00011178 
	0x261A26152E3F3B15, 0x3B160F844B302719, 0x1A511A2E2E15151A, 0x00042B2C90002B31,  // 0x00011198 
	0x10151A2E3BAD3F3F, 0x26191D0100091D1D, 0x2E3F3F3F3F1A3F2E, 0x3A04902C2B900011,  // 0x000111B8 
	0x09151A151A512E51, 0x1551191A3A3B1A2E, 0xF93FDB3F2E1A3F2E, 0x2705182C2B482B09,  // 0x000111D8 
	0x3B51152E1551153F, 0x51152E2E1A2E3FDB, 0x3F2E2EDB15513F15, 0x094036361E2B4811,  // 0x000111F8 
	0x161515512E2E2E2E, 0x1551152E2E2E3F2E, 0x3F2E3F1526511551, 0x1840002C2B480031,  // 0x00011218 
	0x26513B163B151515, 0x1A2E3F3F3F2E3F3F, 0x1A511A513B152E26, 0x271E482D212B1800,  // 0x00011238 
	0x1A151A151515153F, 0x3F2E3F2E3F512E2E, 0x3F2E2E3F1A1A1A3B, 0x0032369090363618,  // 0x00011258 
	0x3A1A1A511A3B1A1D, 0x1926163B1A261A26, 0x1A15511A1A1A1D21, 0x212B001E36900011,  // 0x00011278 
	0x04211E2B48481848, 0x0004040E0011002B, 0x001E4848321E3348, 0x2B2C2C2C2C2B2B2B,  // 0x00011298 
	0x0B1E362CA5752C2B, 0x481836211E181E2B, 0x2B2B75752C2C752C, 0xA5A5A5A52C903677,  // 0x000112B8 
	0x300B362B2C2D2C75, 0x2C2C2C2C2B362C2C, 0x2C2C757575A57474, 0xA52D75742C2C1875,  // 0x000112D8 
	0x2D362C2CA52C752C, 0x2C2B2D2C36362C2C, 0x2C2C3636362B2C2C, 0x752C2D2B2C2B2D75,  // 0x000112F8 
	0x2D322CA5A575752C, 0x2C2CA52C2D2C2C2C, 0x2C2D2D2D2B2D2C2C, 0x2D2C2D902C2C2C31,  // 0x00011318 
	0x482C752C2D2D2B36, 0x2D2B2B3690171E1E, 0x362C2C902D902C2C, 0x752C2C2C2C2C2C1B,  // 0x00011338 
	0x0E2B310A2B180000, 0x481704002B002B2B, 0x752B2B112C117574, 0x77742B747474A83B,  // 0x00011358 
	0x2413020E0E022402, 0x0E0E24012404040E, 0x0E00044828000404, 0x000E0E0E0E3A0027,  // 0x00011378 
};

u64 _jyasinzou_room_25_tex_00011398[] = 
{
	0x522C28062D2D2D06, 0x06062D2D2D2D2D2D, 0x2D062D0606060606, 0x251A252506062831,  // 0x00011398 
	0x2C905757C3C3C357, 0x57573F3F1D3F3F3F, 0x573F1D0D0D1D3F3F, 0x3F570D3F57579090,  // 0x000113B8 
	0x2890573F1D1D1D1D, 0x1D1D630D0F2D0F0F, 0x0F0F630D0D0D0D1D, 0x1D0D0D0D1D1D5790,  // 0x000113D8 
	0x0690571D1D1D3F1D, 0x1D1D0D0D0F2D0F0F, 0x0F0D0D0D0D0D1D1D, 0x1D0D0F0F0D1D5790,  // 0x000113F8 
	0x0690571D3F1D3F0D, 0x1D1D1D1D0D0D0D1D, 0x0D7C1D1D3F3F3F3F, 0x1D3F0D1D1D5757B1,  // 0x00011418 
	0x2D5757631D1D3F1D, 0x0D1D1D1D1D0D0F0D, 0x1D1D1D3F573F3F3F, 0x1D3F1D1D0D3F5790,  // 0x00011438 
	0x063F3F631D1D3F1D, 0x1D1D1D3F3F0D0D0D, 0x0D1D1D1D3F57573F, 0x3F573F573F573F3F,  // 0x00011458 
	0x061D3F630F1D3F1D, 0x1D0D0F0F0D0F0F0F, 0x0D1D1D3F5757573F, 0x3F3F3F573F571D62,  // 0x00011478 
	0x061D1D0D0D0D1D0D, 0x0D0F0D0F0F0F2D2D, 0x0D0D0D1D3F3F3F1D, 0x1D0D1D0D0D3F3F0D,  // 0x00011498 
	0x060D0F0F7C7C0D0D, 0x0F0F0F0F0F2D2D2D, 0x2D0F0D0D1D1D1D1D, 0x630D0D0F0D0D1D1D,  // 0x000114B8 
	0x061D0F0F1D1D0D0F, 0x0F0F0F2D2D2D2D2D, 0x0F0F0F0D0D0F0D0D, 0x0D0F0F0D0D0D1D3F,  // 0x000114D8 
	0x06570F0D571D1D0F, 0x0D0D0F2D2D0F2D2D, 0x0F0F0F0D0D0F0D0D, 0x0F2D0D0D0D0D1D90,  // 0x000114F8 
	0x2D3F0D1D3F1D1D0F, 0x0F0F0F2D2D2D2D06, 0x2D0F0F0D1D0D0F0F, 0x0F0F0D0D0D0D3FB1,  // 0x00011518 
	0x2D3F0D1D0D1D0D0D, 0x0F0F0F062D0F2D06, 0x2D0D0D0D0D0D0D0D, 0x0F0F0D1D0D0D1DB1,  // 0x00011538 
	0x061D0F0D0F0D0F0F, 0x2D2D2D06060F2D06, 0x0F0D0D0D0D0D0F0D, 0x0D0F2D1D1D1D1D90,  // 0x00011558 
	0x2D3F0F0D0F0F0F2D, 0x2D060606060F2D2D, 0x2D0F0D0D0D0D0F0F, 0x0D0D0D1D0D0D0D57,  // 0x00011578 
	0x2D0D0F0F0F0F2D2D, 0x2D0606062D0F2D0F, 0x0F0D0D0D620D0D0D, 0x0D0D1D0D0D0D0D57,  // 0x00011598 
	0x2D0F2D2D0F0F0F2D, 0x2D2D2D2D0D0D0F0F, 0x0D0D62621D1D0D62, 0x0D0F0D0F0D0D0D57,  // 0x000115B8 
	0x2D3F0D0F2D0F0F0F, 0x0F0F2D0F0D0D0D0D, 0x0D621D1D1D1D620D, 0x0D0F0F0F0F0F1D90,  // 0x000115D8 
	0x2D3F0D0D2D0F0D0D, 0x0F0F0D0D0D1D0D0D, 0x0D621D1D3F1D1D1D, 0x620D0D0D0D0F1D90,  // 0x000115F8 
	0x2D1D2D0F0F0D0D0F, 0x0F0F0D0D0D1D630D, 0x0D1D1D5757575757, 0x3F3F1D1D1D0D1D57,  // 0x00011618 
	0x060D2D0F0F0F0F0F, 0x0F0F0F0F0F0D0D0D, 0x0D1D3F5757573F3F, 0x1D3F1D1D1D1D1D57,  // 0x00011638 
	0x2D1D0F0F0F0F0F0F, 0x0F0F0F0F0F0D0D0D, 0x0D0D3F3F3F3F1D1D, 0x1D1D1D1D1D1D0D3F,  // 0x00011658 
	0x2D1D0F0F0F0F0F2D, 0x0F0F0F0F0F0F0F0F, 0x0F0D0D0D1D0D0F0D, 0x0D7C7C7C0D0D0D90,  // 0x00011678 
	0x06570D0F0F0F0F0F, 0x2D2D0F2D0F0D0F0F, 0x0D0D0D0D0D0F0D0D, 0x0F0D0F0F0D0D1D90,  // 0x00011698 
	0x2D901D1D0F0F0F0F, 0x2D2D2D2D2D0F0F0F, 0x0D0D1D1D7C0D1D63, 0x1D0D1D1D1D1D1DA4,  // 0x000116B8 
	0x0FCF3F0F1D1D7C0F, 0x0F0F0F2D0F0D0D0D, 0x1D1D1D1D1D1D7C0D, 0x0D0D1D1D0D0D1D90,  // 0x000116D8 
	0x2DCF3F3F1D0D7C2D, 0x0F2D2D2D2D0F0F0D, 0x0D0D0D1D1D1D1D7C, 0x0D0F7C0F0F0D3FB1,  // 0x000116F8 
	0x06CF90573F1D0F0F, 0x0F0F2D2D2D2D2D2D, 0x0F0F0F0F0F0F0F0F, 0x0F0F2D062D0D3FA4,  // 0x00011718 
	0x2DCFB15757571D0F, 0x0F2D2D2D2D2D0F2D, 0x0F0D0D0D0D0D0D0D, 0x0F0F2D062D6257B1,  // 0x00011738 
	0x28B1B1B190573F1D, 0x1D0F7C0F0D1D1D1D, 0x0D6262620D0D1D62, 0x0D0D0F2D0F1D3F90,  // 0x00011758 
	0x283F57909090B190, 0x571D3F3F57575790, 0x57573F1D1D1D1D1D, 0x1D0D0F0F0D1D3F57,  // 0x00011778 
};

u64 _jyasinzou_room_25_tex_00011798[] = 
{
	0x10160F2D5234E9E9, 0xBE6649A7D49CD49C, 0x294810168A4F0A0A, 0xE963536C669B66E1,  // 0x00011798 
	0x216D6D2121272727, 0x2929101010483D62, 0x2727272727291F1F, 0x1F15101662100F39,  // 0x000117B8 
	0x2927212129101639, 0x372D4F523A3A0952, 0x29272729297C374F, 0x4F603444CFCF400A,  // 0x000117D8 
	0x1B27274810108A60, 0x180A585858635858, 0x555529101039374F, 0x345879BE66633F44,  // 0x000117F8 
	0x551B481016393752, 0x3F63866663404F96, 0x211B487C62374F34, 0x065F6686AA585844,  // 0x00011818 
	0x2155486262394F44, 0x636666BE5FCF7C10, 0x215548627C396058, 0x66A7DE7958528A96,  // 0x00011838 
	0x2127487C168A4F44, 0x5F5BA74492445FC4, 0x21552916168A6058, 0x5FA7AC345F5F539C,  // 0x00011858 
	0x212729160F374F0A, 0x5F85DEE10A5F5CD4, 0x212129100F8A3A44, 0x6685B68538529658,  // 0x00011878 
	0x21211F1039373A40, 0x5F6C859B5F634034, 0x27212748168A6034, 0xAA5F6C6C5F5F5F92,  // 0x00011898 
	0x27211F4810392D09, 0xCF58869BDF6CA7A7, 0x21211F10107C5234, 0x400A6366A7A7DEE6,  // 0x000118B8 
	0x21212748107C5234, 0xCF06585F539BDF85, 0x216D272729481652, 0x34345858385F9BDF,  // 0x000118D8 
	0x212121211F144D8A, 0x4F4F3A604458BE5F, 0x16164D373A34AA06, 0xBEBE66DEDE93D485,  // 0x000118F8 
	0x294848103796580A, 0x5853665FA7A7DEA7, 0xC6C6C68B8BA32121, 0x292948102929107C,  // 0x00011918 
	0xB4216D6D6DA3A321, 0x141F14168A8A3752, 0x212121216D21140C, 0x8A524006E9636363,  // 0x00011938 
	0x2127216D297C524F, 0x4F44795F5F666C49, 0x1427A3292D52963F, 0x0A866C9B5BD49393,  // 0x00011958 
	0x146D217C4040374A, 0x4A342E9CABCBCBCB, 0x276D485252225521, 0x27145292A8C1C5BB,  // 0x00011978 
	0xA36D7C521021271F, 0x101F273738D4C1BB, 0xA327525229214839, 0xB3528A4D37E9D4CA,  // 0x00011998 
	0xA31F2D2D1F278ACF, 0x866653440F2D49AB, 0xA32752371F273744, 0x635F86BE527C63C1,  // 0x000119B8 
	0x8B6D396016273D52, 0x34585844963963C1, 0xA3A310603721297C, 0x37523460377C69BB,  // 0x000119D8 
	0x6DB4555244392929, 0x2916161027105FF0, 0x216DA37C5863442D, 0x4821A3B4217C49EB,  // 0x000119F8 
	0x21276D294449665F, 0x5F34621F105266C1, 0x21216D2196669C85, 0x9C9C6C345260DFFB,  // 0x00011A18 
	0x2121216D4858A79C, 0xC1F0AB66CF4F79FE, 0x21212121A32240DF, 0xEBBBE5AB66CF63D4,  // 0x00011A38 
	0x21212121A3212934, 0xE6C1BBEBF44966D4, 0x21216D5534633727, 0x8A5F7ABBE5C1AB9C,  // 0x00011A58 
	0x6D21554A3F2E4429, 0x291644CBE5BBF89C, 0xA36D7C523F52558A, 0x580F2734E69CC5B6,  // 0x00011A78 
	0xC61F375234212140, 0xD40F294F3F24AA44, 0x217C524C16217C66, 0xDE1021226C4D1879,  // 0x00011A98 
	0x2939523727A32D9B, 0x4F2748219610AAE1, 0x1B62523721A3616C, 0x4427391F1F213934,  // 0x00011AB8 
	0x6D3D523955C61066, 0x86143952141F2916, 0xC6294A4A29C62134, 0x663739404F378A37,  // 0x00011AD8 
	0x8B217C4A376D6D29, 0x4458523458CD4458, 0x6D8B294A61482727, 0x3D9634345886E186,  // 0x00011AF8 
	0x216D6D29618A103D, 0x4A52964463E1D1D1, 0x215541551D397C7C, 0x8A529644589257AC,  // 0x00011B18 
	0x21291B5555293D3D, 0x628A619625039266, 0x6D21555529294829, 0x297C375224560392,  // 0x00011B38 
	0xA3551B1B29482929, 0x293D395296344403, 0x6D2121272910103D, 0x3D62525252525260,  // 0x00011B58 
	0x1F27291637344F4F, 0x344463636649499B, 0x555555551D3B2222, 0x8D4A7C8A61616152,  // 0x00011B78 
	0x3D3D294141555555, 0x555529482222224A, 0x223D4A3D22223D3D, 0x7C6239373752343F,  // 0x00011B98 
	0x8E1D4A614C3D3D39, 0x5261524F34963461, 0x8E411D4A34614A39, 0x623952524A4A4A10,  // 0x00011BB8 
	0x5955411D37243F39, 0x22373922223D7C4A, 0x2222555522345625, 0x4A29291D3D396144,  // 0x00011BD8 
	0x22222955558D2AAC, 0x242929393496AAA7, 0x22221D29551D2485, 0x6C393DB3B338269C,  // 0x00011BF8 
	0x1D223D29223D3903, 0x85448A4434CDABB6, 0x22221D224A621D4C, 0x536C3F3F61CFA8B6,  // 0x00011C18 
	0x1B1D223D613D5522, 0x24492E5E5E660385, 0x1B1D3D6161222955, 0x4A66B6852E2444A8,  // 0x00011C38 
	0x1B557C34393D3D29, 0x2224B6B6443F86AB, 0x55554A617C7C7C39, 0x7C4C85AB92255C85,  // 0x00011C58 
	0x5529394C3D7C3734, 0x377C86E5A82A666C, 0x55223939293DB3AA, 0x44523FC1C1384434,  // 0x00011C78 
	0x5522424A294A6158, 0x383461B6BB922444, 0x1B8D4C3D1D4A3492, 0x865261B6CB63446C,  // 0x00011C98 
	0x558D37221D379603, 0x925261ABCB584485, 0x553D391D224A2438, 0x385234ABA83F3F85,  // 0x00011CB8 
	0x554A374822373F38, 0x445244C16C343485, 0x594A52221D614403, 0x446186CB92242438,  // 0x00011CD8 
	0x554A613D1D4C4458, 0x3F34A7B63F443824, 0x417C614A22614444, 0x344485853444A76C,  // 0x00011CF8 
	0x8E1D61618D393434, 0x3486B6DF344466AB, 0x8E554C967C3D3937, 0x568585B6863453AB,  // 0x00011D18 
	0x41554A345229224A, 0x2A2E443F6C38389C, 0x5541222434483BCD, 0x56344A4ACD6C66FB,  // 0x00011D38 
	0x3D55556156374A3F, 0x614A374A3F8653FB, 0x221D418D3F44374A, 0x3D37374A244453C1,  // 0x00011D58 
	0x1D225959612E9629, 0x3D614A394C3F2E9C, 0x1B2255558D92864A, 0x3D4A3D3D522A85CB,  // 0x00011D78 
	0x292255292234D103, 0x4A7C7C37CD6CB6C5, 0x1D55224A3D3B2585, 0x44374FCFBE85ABEB,  // 0x00011D98 
	0x55558A613D55422E, 0x6634344438A79CC5, 0x553D346129551D61, 0x6C86343F86A8ABC5,  // 0x00011DB8 
	0x294A34521B221D3D, 0x3FA82E443885CBC5, 0x224A344A293D3D22, 0x4A86AB85926CCBE5,  // 0x00011DD8 
	0x224A5222228A377C, 0x294A9CBB852EA8E5, 0x3D4A39293D523424, 0x4A2258EBABDF6CAB,  // 0x00011DF8 
	0x4A393D553D523424, 0x7C4896855CB68585, 0x4A4A22553D4C3F61, 0x3D7C58254244ABB6,  // 0x00011E18 
	0x3937225562526152, 0x373F38377C5292FB, 0x4A4C3D293D8A374C, 0x39374A4A52969658,  // 0x00011E38 
	0x394C4A1B22612434, 0x4A7C379658634496, 0x394C372922524403, 0x58444438866C6663,  // 0x00011E58 
	0x4A4C613D228A4492, 0x92926366859C9CE6, 0x224A344A3D4A442E, 0x2E262EAC9CC1FE9C,  // 0x00011E78 
	0x412234614A4A3F2E, 0x2E3866A79CC1E5BB, 0x8E55374061372486, 0x6C5F86499CF8F6E5,  // 0x00011E98 
	0x554122342A3F6144, 0x665F669BA8F8F6F2, 0x5541554C25863F96, 0x385386669BABF0F8,  // 0x00011EB8 
	0x5555414A5E03383F, 0x3F385CD1DF9CE5F2, 0x29555522963C262E, 0x242A589CAB85BBF2,  // 0x00011ED8 
	0x29295529B33F0385, 0x03244403BBA8BBFF, 0x2929292934243F9C, 0xB63F6134ABABCBFF,  // 0x00011EF8 
	0x1B48294A3F4C4A38, 0xC5D13752E62EA8F6, 0x55414A244C1D1D37, 0xA8C56C442A25D1B6,  // 0x00011F18 
	0x554155228D3D2262, 0xE1BBF09C61CD8FF6, 0x55551B224A8A3737, 0x44C1C5268A38BBF2,  // 0x00011F38 
	0x48103D395261CF34, 0x24A8C5663486C5C5, 0x3D7C3937963F4492, 0x3F2EC5B62A496C03,  // 0x00011F58 
	0x397C398A9644032E, 0xE158C1C53838AAE6, 0x524A4A4A344438E1, 0xE603B6E549586CC5,  // 0x00011F78 
};

u64 _jyasinzou_room_25_tex_00011F98[] = 
{
	0x0C043A3109191909, 0x0101010101191931, 0x19190C1F0C191919, 0x1919310909090101,  // 0x00011F98 
	0x0101090F0F142714, 0x0404040404191919, 0x1919191919190F04, 0x1919190C0F142714,  // 0x00011FB8 
	0x150F0C1919190419, 0x19191919190F0419, 0x3E1904150F191919, 0x1919191919191919,  // 0x00011FD8 
	0x191904161421211F, 0x0F04040C04040404, 0x0404041919040F19, 0x1919040415272715,  // 0x00011FF8 
	0x1F150C0C0C0C0C0C, 0x0C0C0C0C0C670C0C, 0x0C0C0F14350F0C0C, 0x0C0C0C0C0C0C0C0C,  // 0x00012018 
	0x0C0C161F1F212114, 0x15670C0F0F0C0C0C, 0x0C0C0C0C0C0F160C, 0x0C0C16101F212127,  // 0x00012038 
	0x2727670F32323232, 0x32320F0F0F150F0F, 0x0F0F671414160F0F, 0x0F0F3232320F320F,  // 0x00012058 
	0x0F0F141F1F212121, 0x15673232670F0F0F, 0x0F0F0F0F0F16160F, 0x0F0F161F21212121,  // 0x00012078 
	0x2727151515351515, 0x1515151515151515, 0x1515141F1F156715, 0x1515151515321515,  // 0x00012098 
	0x15141F2727212121, 0x1F1F151515151010, 0x1010101010151510, 0x1010142721272721,  // 0x000120B8 
	0x27271F141F271414, 0x1414141414141414, 0x1414141F271F1515, 0x1414141414151514,  // 0x000120D8 
	0x1F27272721216D21, 0x2121271F14141414, 0x1414141414141414, 0x141F212121151F21,  // 0x000120F8 
	0x0F15272114272121, 0x2121212127271F1F, 0x1F1F1F2721271F1F, 0x2727272721351F27,  // 0x00012118 
	0x6D6D21141F272714, 0x1F272121211F1F1F, 0x1F271F1F271F1F6D, 0x21271F1415353514,  // 0x00012138 
	0x0404040404041504, 0x0404043235353514, 0x14142727141F216D, 0x2127141419190C32,  // 0x00012158 
	0x0C0C0C0C040F3232, 0x3204191E6B32151F, 0x27216D6D21A36D21, 0x1F1F150F04040404,  // 0x00012178 
	0x3119190901080000, 0x0000C2C200000001, 0x19040404043A0909, 0x0404043101010009,  // 0x00012198 
	0x31000000000000C2, 0x7575757201010909, 0x0C35272127140F04, 0x0100000808080801,  // 0x000121B8 
	0x0845454545454545, 0x0808080808080808, 0x0801000109040F01, 0x50050B4545454545,  // 0x000121D8 
	0x4545454545450808, 0x0808080808080808, 0x00013A043A090106, 0x4545454545121245,  // 0x000121F8 
	0x4505050505454545, 0x4508084545451212, 0x121205063A142132, 0x000E1C1C1C1CA105,  // 0x00012218 
	0x0505054545450808, 0x080845454512050E, 0x010435353E001205, 0x1212050512120512,  // 0x00012238 
	0x0505020202020202, 0x455050450D0DAF0D, 0x0E0E0E0037101F32, 0x6B00021313130B02,  // 0x00012258 
	0x0202020B020B0B0D, 0x0B450D050E0E0E12, 0x193232350C040002, 0x0E0E1C0B05050505,  // 0x00012278 
	0x0C0C040401020202, 0x0202020202020202, 0x0232151514142732, 0x320C0C0C0C0C0C0C,  // 0x00012298 
	0x0202020202121212, 0x06010104040C0C6B, 0x0C0C141F27141619, 0x000202050B0E0104,  // 0x000122B8 
	0x3532323514326B6B, 0x0F02020202040404, 0x040C3515151F1432, 0x320C0C0C0C0C0C32,  // 0x000122D8 
	0x0404046B6B323232, 0x3216320F0C0F0C0C, 0x0C0C3521271F150F, 0x0C0C020035351514,  // 0x000122F8 
	0x353232151F356B32, 0x320C04046B040404, 0x040C0F150F1F2735, 0x32320C0C0C0C0C0F,  // 0x00012318 
	0x0F0C040C0C0C0C6B, 0x0C1615040404040C, 0x6B0C15211F14150C, 0x0C0C0C3232323514,  // 0x00012338 
	0x1467671414146B6B, 0x326B6B6B6B6B6B6B, 0x0C0C671535142715, 0x32320C0C0C0F0F0F,  // 0x00012358 
	0x0F0C0C0C0C0C0C0C, 0x0F0F150C04040C0C, 0x6B0C141F1F14140C, 0x0C0C323267673215,  // 0x00012378 
	0x1415351414143232, 0x3532323232323232, 0x0C321414151F2114, 0x32320C0C0F0F6767,  // 0x00012398 
	0x0F0F0C0C0C0C0C0C, 0x0F0F350F0C0C0C0C, 0x320C27271F14140F, 0x0F0F326735353515,  // 0x000123B8 
	0x1F15351414143532, 0x153232323267320F, 0x0F67141F1527211F, 0x670F0F0F0F0F1532,  // 0x000123D8 
	0x0F0F0F0C0F0F0F0F, 0x0F1567670F0F0F0F, 0x35672721271F140F, 0x0F0F323267353515,  // 0x000123F8 
	0x1415151415151567, 0x1567676767356767, 0x6715141F14272727, 0x15140F6715671532,  // 0x00012418 
	0x0F0F0F0F0F0F0F0F, 0x161567670F0F0F0F, 0x151F276D21271415, 0x670F676767151515,  // 0x00012438 
	0x1415151515151567, 0x6715676767156767, 0x671514271F1F1F21, 0x2715141414151535,  // 0x00012458 
	0x350F0F3567673516, 0x1615151616156715, 0x1427276D6D271F14, 0x1410161635151514,  // 0x00012478 
	0x1415151515151515, 0x1514151515141515, 0x15151F1F1F212121, 0x1F1F141415151535,  // 0x00012498 
	0x350F0F1515151515, 0x1515151515151F1F, 0x1F21146D21272727, 0x141F15151515151F,  // 0x000124B8 
	0x1414141414141414, 0x1414141414141414, 0x14141F1F1F21A36D, 0x216D271F1F141414,  // 0x000124D8 
	0x14350F0F67151516, 0x15151515151F1F27, 0x2721272127272714, 0x141F1F1F1F14141F,  // 0x000124F8 
	0x1F1F1F1F1F1F1F1F, 0x1F1F1F1F1F1F1F1F, 0x1414151415142121, 0x271F1F1414141415,  // 0x00012518 
	0x15160F1616161616, 0x1015151514272721, 0x6D211F151F160C14, 0x1527141F271F271F,  // 0x00012538 
	0x2121272714212714, 0x2721212121150F1F, 0x350F0F150F040C3E, 0x090C0C0C0F0F0F19,  // 0x00012558 
	0x31190F1514100F47, 0x040F0404043E040F, 0x0F16040F3E040415, 0x0C1416106D212127,  // 0x00012578 
	0x0104191E31311931, 0x1931010100000001, 0x0100000000010400, 0x0100083101010008,  // 0x00012598 
	0x501919190C0C3E00, 0x0601000000063E3E, 0x0100470900000047, 0x4704000C0C0C0419,  // 0x000125B8 
	0x450D0D4550505045, 0x4550454512121208, 0x0808080812121206, 0x0605120D0D0D0D45,  // 0x000125D8 
	0x5100504501150F00, 0x0612080808060608, 0x0808080808080808, 0x08080800160F3A00,  // 0x000125F8 
	0x12050B0B0B0B0B0B, 0x0505050505050505, 0x0505050605790E0E, 0xA105050D0D0B0B13,  // 0x00012618 
	0x1C1C1C011027153E, 0x0505050505050505, 0x0505050505050505, 0x0505050E10140412,  // 0x00012638 
	0x050E0E1C02020228, 0xC3C3C3780202C328, 0x0205120979051C02, 0x0E13020B0E0E0B0B,  // 0x00012658 
	0x0B05090C14100F19, 0x060B0E130E0E2802, 0x020202020202020B, 0x130B1C4716100F04,  // 0x00012678 
	0x3A2D010100120202, 0x0202020202023A01, 0x3A0F040F01010100, 0x0202020200080100,  // 0x00012698 
	0x083A3A0C0F141F0C, 0x093A090E0B9E0E0E, 0x0202020202021201, 0x010909091510160F,  // 0x000126B8 
	0x01010101013A0101, 0x0101010101013A01, 0x0101093A01010101, 0x0101010101010101,  // 0x000126D8 
	0x0101093A19101F19, 0x0109043A02061800, 0x0601010101013A3A, 0x0101013A0C150F0F,  // 0x000126F8 
	0x04010101013A0101, 0x0101010101013A01, 0x0101012D01000101, 0x0000060600010101,  // 0x00012718 
	0x01093A0F0916210F, 0x01012D0901010101, 0x0000010101012D3A, 0x0101013A0C15150C,  // 0x00012738 
	0x0C3A0100012D0901, 0x011E091E09093A01, 0x3A0F0416013A0100, 0x0000010100080100,  // 0x00012758 
	0x083A040416162710, 0x04013A3A01000119, 0x010901010101043A, 0x0101091910141416,  // 0x00012778 
};

u64 _jyasinzou_room_25_tex_00012798[] = 
{
	0x57030317032E5456, 0x2E343F4634460303, 0x1717031725030303, 0x3030261A24301717,  // 0x00012798 
	0x0303030317261A1A, 0x6CB324245D465403, 0x0317252525250303, 0x0303300325460303,  // 0x000127B8 
	0x0303301A03032E03, 0x5703245D25171703, 0x0325171703252503, 0x30031A0303300303,  // 0x000127D8 
	0x0346031A1A6C2603, 0x1A4634523F031A03, 0x031A03251754301A, 0x54032E033017032E,  // 0x000127F8 
	0x1A2E031A031A5717, 0x3F03173F34260303, 0x03030330301A5C03, 0x2E571A2E1A1A3054,  // 0x00012818 
	0x172603171A173F17, 0x3003030324252530, 0x0303170317302653, 0x03030303031A1A30,  // 0x00012838 
	0x3F242A2446033825, 0x030303031724252A, 0x5403252530172503, 0x262603032503253C,  // 0x00012858 
	0x4646440317172503, 0x2A54033003680325, 0x0317030303305403, 0x03031A030317033F,  // 0x00012878 
	0x253F03302E031717, 0x1A0317031A173803, 0x2E03031A172E306C, 0x3026301A30033C54,  // 0x00012898 
	0x26033C1A2E031A03, 0x30262E2E2E30031A, 0x2E261A0354302E49, 0x6C03302A303C2E86,  // 0x000128B8 
	0x171A251725540344, 0x2630035C1A035430, 0x0354300303171A30, 0x1A031725244B0330,  // 0x000128D8 
	0x25301A4B25031A03, 0x1A862E1730251A26, 0x2E03031703030303, 0x030317460303245D,  // 0x000128F8 
	0x2E2E03543C031A03, 0x3049544903466CA7, 0x0354920317305403, 0x25032A2546030324,  // 0x00012918 
	0x1A541A033025306C, 0x03032E2E2E25036C, 0xA757032E54030303, 0x3054035425305C49,  // 0x00012938 
	0x0303540303305703, 0xAC1A572E2E494B03, 0x6CA7545403031754, 0x2E1A545403266CA7,  // 0x00012958 
	0x6C1A251A301A3057, 0x576C6C6C032E0346, 0x306CA703171A037E, 0x6CAC1A2E6CAC036C,  // 0x00012978 
	0x1A1A30301A170354, 0x57572E1730031A54, 0x3C0325300330302E, 0x576C2E03546C2E30,  // 0x00012998 
	0x03171A0303031717, 0x0303300317172503, 0x265D462A46030354, 0x25576C3054302E1A,  // 0x000129B8 
	0x2603170317250317, 0x1703030303173C30, 0x462A34034B170317, 0x1703031A03170330,  // 0x000129D8 
	0x1A1A03251717031A, 0x2E032A2A301A0330, 0x462A033C251A0326, 0x030325172E300303,  // 0x000129F8 
	0x3C30173030253030, 0x2E6C2E2E54031A46, 0x2554304603032E1A, 0x5426030330260303,  // 0x00012A18 
	0x3025171A461A302E, 0x03306C031A035424, 0x032530031703572E, 0x1A2E3C262530171A,  // 0x00012A38 
	0x301A030317032626, 0x5425030317174B46, 0x30173C03031A3054, 0x3017261A03031703,  // 0x00012A58 
	0x03572625172E546C, 0x0317030317172A17, 0x033025254654032E, 0x0317542503030303,  // 0x00012A78 
	0x03032E2E2E666C1A, 0x541A54305417541A, 0x2EAC260317030303, 0x260303300303031A,  // 0x00012A98 
	0x6C30036C571A6C2E, 0x6C1A03A7492E1730, 0xAC576C2E25033026, 0x0303030303170326,  // 0x00012AB8 
	0x2E2E1AAC2E7E302E, 0x6C1A1A1A6C493046, 0x1A496CAC2E2E3030, 0x5CAC031A2E030303,  // 0x00012AD8 
	0x4B03541A2E572E54, 0x2E26032A2E6C254B, 0x302E30542EAC2E03, 0x541A66261A5C5C03,  // 0x00012AF8 
	0x6C031717302E1A03, 0x036C03172646D030, 0x2517030303030303, 0x250330170303301A,  // 0x00012B18 
	0x172E4B1717542603, 0x17031A0303241717, 0x1717170303031717, 0x032A033025170303,  // 0x00012B38 
	0x03265C543F17032E, 0x26302A0326171703, 0x0303030303172E03, 0x0330030354030303,  // 0x00012B58 
	0x2E54262E30174B49, 0x261A540317030330, 0x260330030303261A, 0x03262E03032E0303,  // 0x00012B78 
};

u64 _jyasinzou_room_25_tex_00012B98[] = 
{
	0x0F3A2D3A3A043A04, 0x043A04042D3A3A04, 0x2D2D2D2D2D2D2D2D, 0x2D2D2D2D2D3A3A3A,  // 0x00012B98 
	0x090A0D0000000700, 0x070A070A080A0A08, 0x070A0707070A0A0A, 0x0A0A07070A080D0D,  // 0x00012BB8 
	0x090A0D0000000700, 0x070A070A080A0A08, 0x070A0707070A0A0A, 0x0A0A07070A080D0D,  // 0x00012BD8 
	0x1F1F1F1F1F1F1F14, 0x1414141F141F1F1F, 0x1414141414141414, 0x1515141415141414,  // 0x00012BF8 
	0x0F3A0C0F040C0F0F, 0x0F0C0F0C0F4D0F0C, 0x164D1616160C0C0F, 0x04040F0C0F0C0F0C,  // 0x00012C18 
	0x04013A2D72040419, 0x0C010C0419000472, 0x3E04190420047504, 0x190C0C1E013E0909,  // 0x00012C38 
	0x0401090C720C0472, 0x0F01191919190400, 0x0404010420041904, 0x01040F1E0A3E0D00,  // 0x00012C58 
	0x04000C04190C0400, 0x0F041E0F72043E3E, 0x0C041E722075193E, 0x09190F2D3E2D0909,  // 0x00012C78 
	0x0401090972190472, 0x0404720F19190419, 0x3E04191E1E1E1920, 0x04010C040C3E0904,  // 0x00012C98 
	0x0F040C0C0F0C1619, 0x0C0F0C0F4D0C0F0C, 0x044D1904041E1904, 0x0C040F040C040C0C,  // 0x00012CB8 
	0x154D160C0F4D164D, 0x350F4D3516161635, 0x1014101410101010, 0x1010101010161616,  // 0x00012CD8 
	0x090A0D0000000700, 0x070A070A080A0A08, 0x070A0707070A0A0A, 0x0A0A07070A080D0D,  // 0x00012CF8 
	0x090A0D0000000700, 0x070A070A080A0A08, 0x070A0707070A0A0A, 0x0A0A07070A080D0D,  // 0x00012D18 
	0x1516101610101535, 0x3535351616161616, 0x1616101010101010, 0x1616161010351616,  // 0x00012D38 
	0x140F0F0C0F0C0404, 0x0C0C0C0C040C0C0F, 0x0F0F0F0F0F0C0C0C, 0x0C040C0C0C040404,  // 0x00012D58 
	0x10042D0404041919, 0x042D2D043A3E1904, 0x0404040404040404, 0x191919042D3E3E3E,  // 0x00012D78 
	0x10043E0109010172, 0x0101010101093E19, 0x1904041919191919, 0x311E31473E010101,  // 0x00012D98 
	0x1009070A0A0A4550, 0x080D060A06510072, 0x1E31090164C21E31, 0x01010001070A0A0A,  // 0x00012DB8 
	0x1009000806060D50, 0x0808060651000000, 0x3131313101017531, 0x010101000164640A,  // 0x00012DD8 
	0x1009070A0A005051, 0x0808080806065172, 0x1E1E31016400751E, 0x31006418070A0A0A,  // 0x00012DF8 
	0x1009000A07180608, 0x0808060608060000, 0x0072314701017572, 0x00010101000A0A0A,  // 0x00012E18 
	0x1009070A07180608, 0x0006060A00070000, 0x0072314701017531, 0x0101010A0A646464,  // 0x00012E38 
	0x1009060D51070608, 0x51000A0A00000000, 0x0000006464007531, 0x751E3101070A0820,  // 0x00012E58 
	0x10090706060A0600, 0x0008080818180A00, 0x0000200101017531, 0x0101310700080800,  // 0x00012E78 
	0x1009070A07470120, 0x01000A0718060000, 0x0000010100C21E1E, 0x3101011807084501,  // 0x00012E98 
	0x1009090747010000, 0x070001000818091E, 0x1E31090909477531, 0x00000107470A0A0A,  // 0x00012EB8 
	0x1009070909010000, 0x00010701000A0031, 0x1E31094701017572, 0x64640001070A0A0A,  // 0x00012ED8 
	0x1009070607060000, 0x08060A0A06180131, 0x1E19193131017572, 0x00200000070A0A08,  // 0x00012EF8 
	0x1516101610101535, 0x3535351616161616, 0x1616101010101010, 0x1616161010351616,  // 0x00012F18 
	0x140F0F0C0F0C0404, 0x0C0C0C0C040C0C0F, 0x0F0F0F0F0F0C0C0C, 0x0C040C0C0C040404,  // 0x00012F38 
	0x10042D0404041919, 0x042D2D043A3E1904, 0x0404040404040404, 0x191919042D3E3E3E,  // 0x00012F58 
	0x10043E0109010172, 0x0101010101093E19, 0x1904041919191919, 0x311E31473E010101,  // 0x00012F78 
	0x1009070A0A0A4550, 0x080D060A06510072, 0x1E31090164C21E31, 0x01010001070A0A0A,  // 0x00012F98 
	0x1009000806060D50, 0x0808060651000000, 0x3131313101017531, 0x010101000164640A,  // 0x00012FB8 
	0x1009070A0A005051, 0x0808080806065172, 0x1E1E31016400751E, 0x31006418070A0A0A,  // 0x00012FD8 
	0x1009000A07180608, 0x0808060608060000, 0x0072314701017572, 0x00010101000A0A0A,  // 0x00012FF8 
	0x1009070A07180608, 0x0006060A00070000, 0x0072314701017531, 0x0101010A0A646464,  // 0x00013018 
	0x1009060D51070608, 0x51000A0A00000000, 0x0000006464007531, 0x751E3101070A0820,  // 0x00013038 
	0x32090706060A0600, 0x0008080818180A00, 0x0000200101017531, 0x0101310700080800,  // 0x00013058 
	0x1009070A07470120, 0x01000A0718060000, 0x0000010100C21E1E, 0x3101011807084501,  // 0x00013078 
	0x1009090747010000, 0x070001000818091E, 0x1E31090909477531, 0x00000107470A0A0A,  // 0x00013098 
	0x1009070909010000, 0x00010701000A0031, 0x1E31094701017572, 0x64640001070A0A0A,  // 0x000130B8 
	0x1009070607060000, 0x08060A0A06180131, 0x1E19193131017572, 0x00200000070A0A08,  // 0x000130D8 
	0x1516101610101535, 0x3535351616161616, 0x1616101010101010, 0x1616161010351616,  // 0x000130F8 
	0x140F0F0C0F0C0404, 0x0C0C0C0C040C0C0F, 0x0F0F0F0F0F0C0C0C, 0x0C040C0C0C040404,  // 0x00013118 
	0x10042D0404041919, 0x042D2D043A3E1904, 0x0404040404040404, 0x191919042D3E3E3E,  // 0x00013138 
	0x10043E0109010172, 0x0101010101093E19, 0x1904041919191919, 0x311E31473E010101,  // 0x00013158 
	0x1009070A0A0A4550, 0x080D060A06510072, 0x1E31090164C21E31, 0x01010001070A0A0A,  // 0x00013178 
	0x1009000806060D50, 0x0808060651000000, 0x3131313101017531, 0x010101000164640A,  // 0x00013198 
	0x0409070A0A005051, 0x0808080806065172, 0x1E1E31016400751E, 0x31006418070A0A0A,  // 0x000131B8 
	0x0409000A07180608, 0x0808060608060000, 0x0072314701017572, 0x00010101000A0A0A,  // 0x000131D8 
	0x1409070A07180608, 0x0006060A00070000, 0x0072314701017531, 0x0101010A0A646464,  // 0x000131F8 
	0x0409060D51070608, 0x51000A0A00000000, 0x0000006464007531, 0x751E3101070A0820,  // 0x00013218 
	0x10090706060A0600, 0x0008080818180A00, 0x0000200101017531, 0x0101310700080800,  // 0x00013238 
	0x0409070A07470120, 0x01000A0718060000, 0x0000010100C21E1E, 0x3101011807084501,  // 0x00013258 
	0x0409090747010000, 0x070001000818091E, 0x1E31090909477531, 0x00000107470A0A0A,  // 0x00013278 
	0x0409070909010000, 0x00010701000A0031, 0x1E31094701017572, 0x64640001070A0A0A,  // 0x00013298 
	0x0409070607060000, 0x08060A0A06180131, 0x1E19193131017572, 0x00200000070A0A08,  // 0x000132B8 
	0x090A070A0707070A, 0x0A0A000A07070707, 0x0A01010909010109, 0x09010907640D0D0D,  // 0x000132D8 
	0x040A070707070709, 0x0707070707090907, 0x07070A0A0A0A0907, 0x0707070A0D0D0D0D,  // 0x000132F8 
	0x040D070A07070907, 0x2020202001090909, 0x0707070A0A070709, 0x09090700080D0D0D,  // 0x00013318 
	0x0908080A070A0000, 0x0000200020070909, 0x0907202020000109, 0x090701070D0D0D0D,  // 0x00013338 
	0x040D080D08202000, 0x2020090907090907, 0x0704041E09010101, 0x072000000D0D0D0D,  // 0x00013358 
	0x1007070404040404, 0x1010100410041010, 0x1010323232101010, 0x3210100404040909,  // 0x00013378 
};

u64 _jyasinzou_room_25_tex_00013398[] = 
{
	0x43437F7F36363636, 0x3636364343364343, 0x4343364343434336, 0x36434343437B437B,  // 0x00013398 
	0x43437B437B7B7B43, 0x7B7B7B7B437B4343, 0x4343434343434336, 0x434343437B437B43,  // 0x000133B8 
	0xB7B7B7B76A7E5AB7, 0x6A4E6A6A7EB7B76A, 0xB76A4E7E6AB7B76A, 0x4EB76AB76A6A5A6A,  // 0x000133D8 
	0xB7B76A891A033C7E, 0x1A1A1A1A5A5A4E5A, 0xB7B7B7035A5A6A4E, 0x6A6A6A5A5A6A6A7E,  // 0x000133F8 
	0x5757575757241A1A, 0x1A6A572E246A1A1A, 0x1A572E6A571A2E2E, 0x5A1A1A1A572E6A57,  // 0x00013418 
	0x1A2E2E5A44444403, 0x44444444261A5A2E, 0x2E2E5A242E26266A, 0x1A1A26261A261A6A,  // 0x00013438 
	0x5757571A571A1A1A, 0x1A6A2E1A1A1A1A1A, 0x1A2E1A2E1A2E572E, 0x5A1A1A1A2E1A5A1A,  // 0x00013458 
	0x2E572E5A26444403, 0x24444444032E5A2E, 0x2E2E2E251A26261A, 0x5A251A1A26261A6A,  // 0x00013478 
	0x1A572E5757571A57, 0x2E575757571A572E, 0x575757575A5A5A1A, 0x5A572E575757575A,  // 0x00013498 
	0x5A5A1A2E5A034444, 0x6144442603035A26, 0x262E26261A26262E, 0x6A1A1A2E262E2625,  // 0x000134B8 
	0x245D3F2424245D5D, 0x24242424245D5D24, 0x2424243F3F243F24, 0x3F5D242424243F3F,  // 0x000134D8 
	0x243F24243F343434, 0x3952342424242424, 0x2424242434245D5D, 0x5D34345D34345D5D,  // 0x000134F8 
	0x1F1F141415151515, 0x1515151415151515, 0x1514151414141435, 0x15151414141F1F1F,  // 0x00013518 
	0x1414141414141414, 0x1414141415141515, 0x1515141414151514, 0x1514151514151414,  // 0x00013538 
	0x1414326732323232, 0x3232326735353267, 0x3267673567323267, 0x356732676732151F,  // 0x00013558 
	0x1535353535151415, 0x3535353567353535, 0x3232321535356767, 0x6767673535676715,  // 0x00013578 
	0x1435040C040C040C, 0x0C0C0C0C350F0F0C, 0x0F0C6B0C0C0F6B0C, 0x0C0F6B0C0C040415,  // 0x00013598 
	0x6B6B6B6B32323235, 0x323232326B0C6B6B, 0x6B6B04356B6B6B0F, 0x0F0F6B6B0F6B0C0F,  // 0x000135B8 
	0x1404190419190404, 0x040404040C0C0C0C, 0x0C040C0404040404, 0x04040C0404191935,  // 0x000135D8 
	0x046B04040C6B6B35, 0x356B6B6B0C040404, 0x0404040C0C0C0C0C, 0x0C0C0C0C040C0C0C,  // 0x000135F8 
	0x152D010909091904, 0x1919191919041919, 0x1919191919091904, 0x1904191909093132,  // 0x00013618 
	0x191E191919046B6B, 0x356B6B0404041904, 0x0419041904041919, 0x0404041904191904,  // 0x00013638 
	0x1547180700010001, 0x4700010101474701, 0x0101010000010001, 0x010101090000000C,  // 0x00013658 
	0x0000087201093119, 0x6B6B3131721E1E72, 0x1E31317231310909, 0x471919091909093E,  // 0x00013678 
	0x0407070A0A0A0A01, 0x0701010901010909, 0x072007000A070707, 0x0701200100500832,  // 0x00013698 
	0x070108080007001E, 0x012019011E200931, 0x010101091E094707, 0x0708010409500000,  // 0x000136B8 
	0x040A070A07640720, 0x010101090107091E, 0x2020200720200020, 0x0101640000200809,  // 0x000136D8 
	0x080000080A072000, 0x0101041E201E0104, 0x1E09041E1E040909, 0x060D060D0D00070D,  // 0x000136F8 
	0x1007070101012001, 0x1E1E1E1E1E201E09, 0x6420206420010120, 0x200920640064201E,  // 0x00013718 
	0x08086400091E1E1E, 0x1E20081E1E010901, 0x1E041E101E1E0907, 0x0A0D0D0D0D000807,  // 0x00013738 
	0x040A20002001011E, 0x0109091E01011E01, 0x0120200001200120, 0x006464202020001E,  // 0x00013758 
	0x0008002020201E1E, 0x1E1E041E1E1E0404, 0x1E1E1E1E041E0707, 0x08080809200D0808,  // 0x00013778 
	0x04040A0101070109, 0x1E1E1E0120200120, 0x2000200000200020, 0x0120202020202004,  // 0x00013798 
	0x1E1E201E011E1E1E, 0x1E1E1E1E1E1E1E1E, 0x1E1E1E1E09090708, 0x0D0D0D0D0D0A0007,  // 0x000137B8 
	0x040707200701071E, 0x01201E0120201E20, 0x0000000000002000, 0x2020012020000004,  // 0x000137D8 
	0x0020201E1E201E1E, 0x1E1E041E1E1E1E1E, 0x001E1E1E01010A0A, 0x080D070720000D00,  // 0x000137F8 
	0x04070A0000070020, 0x202020200A000020, 0x2000000000200020, 0x010101011E000004,  // 0x00013818 
	0x00001E00001E1E1E, 0x1E1E1E1E1E1E1E1E, 0x1E1E1E1E01090A08, 0x0D0D0D0D2007080D,  // 0x00013838 
	0x04070707070A0A07, 0x07070A0A0A0A0A20, 0x0000000808080808, 0x0000000000000004,  // 0x00013858 
	0x000000000000001E, 0x001E1E1E1E1E1E1E, 0x1E1E1E2001012008, 0x0D0D20200D000A0A,  // 0x00013878 
	0x0407070707070707, 0x07070707070A0707, 0x0A0A080D0808080A, 0x080A0A0A0A002004,  // 0x00013898 
	0x002008001E001E1E, 0x1E1E001E1E1E1E1E, 0x1E1E001E20012007, 0x0D0D0D0D00080808,  // 0x000138B8 
	0x1007070707070707, 0x07070707070A0A0A, 0x07080808080A0A0A, 0x0A0A0A0A0A640104,  // 0x000138D8 
	0x6401200000000000, 0x0000000000001E1E, 0x1E00000020010008, 0x080D08200000080A,  // 0x000138F8 
	0x0407070707070707, 0x0707070707070907, 0x070A070A0A070A07, 0x0A0A0A0A0A070104,  // 0x00013918 
	0x0901016401200000, 0x0000000000000000, 0x0000002020202000, 0x080D0D0D0D00080A,  // 0x00013938 
	0x0407070707070709, 0x07070707070A0707, 0x0007070A07070707, 0x0707070707070909,  // 0x00013958 
	0x0107070707010101, 0x0101012020002020, 0x20201E0720072008, 0x0D0D0D0D000A0D0D,  // 0x00013978 
	0x0407070A07070709, 0x0909070907070920, 0x07000A0A070A0A0A, 0x0A0A0A0A0A080A04,  // 0x00013998 
	0x070101640A0A0A64, 0x07200A070A200120, 0x201E091E09040407, 0x200A04090D0D0D0A,  // 0x000139B8 
	0x04080A070A0A0A07, 0x0A070707070A070A, 0x0A000A000A0A070A, 0x070A0A0A0A070709,  // 0x000139D8 
	0x640A0A640A640A64, 0x0A010A0709090109, 0x010109070707070A, 0x080D0D0D000D0D0D,  // 0x000139F8 
	0x09080A0A070A0A09, 0x0709070907070A07, 0x0A070A0A00080A08, 0x070A0707070A0709,  // 0x00013A18 
	0x0A01010901090909, 0x0901010101090901, 0x0909010909070708, 0x640D0D0D0D0D0D0D,  // 0x00013A38 
	0x04080A0A07070707, 0x0707070907070907, 0x0707070707070707, 0x0707090909040710,  // 0x00013A58 
	0x070707070A0A0A0A, 0x0A640A6409010707, 0x0707070707070A08, 0x0D0D0D0D0D0D0D0D,  // 0x00013A78 
	0x040D0D07070A0A07, 0x0709070909070701, 0x2020202020202020, 0x0101090909090910,  // 0x00013A98 
	0x0709070A070A0A0A, 0x0A07070707070909, 0x0907090707070008, 0x080D0D0D0D0D0D0D,  // 0x00013AB8 
	0x0908080808070A07, 0x07070A0700000000, 0x0000000020000020, 0x2020070909040910,  // 0x00013AD8 
	0x0909070920072020, 0x2000002001090909, 0x0909072001200708, 0x0D0D0D0D0D0D0D0D,  // 0x00013AF8 
	0x040D0D0708080D08, 0x0807202020200000, 0x2020200009070907, 0x0704090109070710,  // 0x00013B18 
	0x0707040904091E09, 0x0901010101090109, 0x0720202000200000, 0x0D0D0D0D0D0D0D0D,  // 0x00013B38 
	0x1004070707090404, 0x0432043204100404, 0x1004100410040432, 0x100404101032101F,  // 0x00013B58 
	0x1032101032323210, 0x3210101010101010, 0x3210103210320404, 0x0404040909090904,  // 0x00013B78 
};

u64 _jyasinzou_room_25_tex_00013B98[] = 
{
	0x1418790E1B3B1D33, 0x4242424233234242, 0x3333333342424C4C, 0x2FB3423342424C4C,  // 0x00013B98 
	0x2FB3423333424242, 0x4242427742423342, 0x4233333333334242, 0x3333233B05182D15,  // 0x00013BB8 
	0x04050202591D2333, 0x4233333333333333, 0x3333333333424242, 0x4242773333424242,  // 0x00013BD8 
	0x4242773333333333, 0x3333333333333333, 0x3333423333423333, 0x3323231D1C054715,  // 0x00013BF8 
	0x04050E02592B3B1D, 0x3B23232323232323, 0x2323233B23232323, 0x2323232323232323,  // 0x00013C18 
	0x2323232323232323, 0x2323232323232323, 0x232323233B232323, 0x3B3B1D2B1C126015,  // 0x00013C38 
	0x040502021B591D2B, 0x1D2B2B1D1D1D223B, 0x3B3B3B3B3B233B23, 0x232323233B233B23,  // 0x00013C58 
	0x2323232323232323, 0x2323232323233B23, 0x3B3B23233B3B1D2B, 0x592B2B2B1C086067,  // 0x00013C78 
	0x04050E281B595959, 0x2B1B592B2B2B1D1D, 0x1D1D1D1D1D1D1D1D, 0x1D1D1D1D1D1D1D1D,  // 0x00013C98 
	0x1D1D1D1D1D1D1D1D, 0x1D1D1D1D3B1D1D1D, 0x1D1D1D2B2B2B5959, 0x1B59591BA10A4035,  // 0x00013CB8 
	0x04121302411B1B1B, 0x1B1B1B1B1B1B1B1B, 0x1B1B1B1B1B591B59, 0x1B592B1B1B591B59,  // 0x00013CD8 
	0x1B592B1B2B2B2B2B, 0x2B2B2B2B2B2B2B2B, 0x2B591B1B1BD24141, 0x41414141A10A4015,  // 0x00013CF8 
	0x04050B1176764141, 0x4141414141414141, 0x4141414141414141, 0x4141411B41414141,  // 0x00013D18 
	0x4141411B1BD2D21B, 0x1B1B1B1B1B1B1B1B, 0x414141414176768E, 0x8E8E8E8E0B064067,  // 0x00013D38 
	0x04051C1155411B59, 0x2B1D2B2B1D1D233B, 0x3B3B8D8D33222222, 0x22238D8D8D8D8D33,  // 0x00013D58 
	0x22222222228D8D8D, 0x3322222222228D8D, 0x233B3B221D1D592B, 0x414141410D063E67,  // 0x00013D78 
	0x040513112B1D3B3B, 0x3B233B23238D234A, 0x422F2F5D5D5D2424, 0x5D5D2F685D242424,  // 0x00013D98 
	0x242424B3612F2424, 0x24242424B3612F5D, 0x5D2F4C4233233B1D, 0x2B5941550B054715,  // 0x00013DB8 
	0x044513131D3B4A23, 0x23333342774C2F5D, 0x4B3C3C244B4B4B5D, 0x5D24D04B3C3C244B,  // 0x00013DD8 
	0x4B4B5D5D24D03C24, 0x4B4B4B5D5D24D04B, 0x245D5D2F2F2F4223, 0x3B1D1B1B13794035,  // 0x00013DF8 
	0x0C0813133B1D4A33, 0x2F4C2F2F68242446, 0x3C3C254646464646, 0x24744B463C254646,  // 0x00013E18 
	0x464646243C4B2546, 0x46464646243C4B46, 0x744B5D3C842F2F4C, 0x423B2B1B1C794015,  // 0x00013E38 
	0x040013A1233B7777, 0x5D5D3C4B243C3C25, 0x0303030354252525, 0x3C3C462503030354,  // 0x00013E58 
	0x2525253C3C460303, 0x542525253C3C4625, 0x3C4625031746745D, 0x2F33232BA1050A14,  // 0x00013E78 
	0x04120D1C233B4C5D, 0x4617253C17252503, 0x1A1A541A0303035D, 0x4B2617031A541A03,  // 0x00013E98 
	0x03035D4B4617541A, 0x0303035D4B461703, 0x2603260303030325, 0x5D771D1D1CE90A15,  // 0x00013EB8 
	0x2D051C0E23235D03, 0x03172503032A0354, 0x26031A1A03030303, 0x24032554031A1A03,  // 0x00013ED8 
	0x030303243C251A1A, 0x03030303243C2554, 0x03031A0354032603, 0x172F5922A1794015,  // 0x00013EF8 
	0x0C050E024277177E, 0x6A5454174B252603, 0x6A8930241A1A1A1A, 0x1A035D2F0330241A,  // 0x00013F18 
	0x1A1A1A1A03033024, 0x1A1A1A1A1A030354, 0x250326251A171A03, 0x035D331D0E79011F,  // 0x00013F38 
	0x1512050E1B1D2377, 0x2323334A4A4A2342, 0x4A8D3B221D4A2323, 0x394A3354234A4A4A,  // 0x00013F58 
	0x77332222234A3377, 0x2F4233238D422323, 0x33233B423B234223, 0x231D411B79124715,  // 0x00013F78 
	0x1606050E1B222333, 0x7742777742777742, 0x42423B8D3B232323, 0x4233233B23423333,  // 0x00013F98 
	0x3333233333333333, 0x2F423323234A3333, 0x3377774C77427742, 0x333B551B0E79400F,  // 0x00013FB8 
	0x0F06120E1B1D1D23, 0x2333423342424242, 0x77333B221D3B234A, 0x4A4A333333232323,  // 0x00013FD8 
	0x2333333333333333, 0x4C333B22234A4A23, 0x234A333333232323, 0x3B2B1B1B05064716,  // 0x00013FF8 
	0x0C06450E2B2B2B1D, 0x3B3B232323232323, 0x238D1D2B1D1D3B23, 0x23232323234A3323,  // 0x00014018 
	0x234A232323233323, 0x42233B2223233B22, 0x23238D233B1D1D1D, 0x2B591B4112061967,  // 0x00014038 
	0x0C060D0B1B1B592B, 0x2B1D3B2B1D22223B, 0x22221D1D2B1D3B23, 0x3B3B23233B23233B,  // 0x00014058 
	0x2323232323232323, 0x33233B223B231D3B, 0x233B3B3B1D1D2B2B, 0x591B1B1B45060435,  // 0x00014078 
	0x0406051359D21B59, 0x2B2B2B1B1D2B1D1D, 0x1D1D1D1D1B1D2222, 0x2222223B22221D1D,  // 0x00014098 
	0x223B3B3B3B3B3B3B, 0x233B3B1D3B3B5922, 0x3B3B1D1D1D59591B, 0x1B1B1B1B05123E35,  // 0x000140B8 
	0x0C061C131B41411B, 0x1B1B59411B592B2B, 0x2B2B2B2B1B2B1D2B, 0x1D2B2B2B2B2B3B1D,  // 0x000140D8 
	0x3B1D1D1D1D1D1D1D, 0x3B1D1D2B1D1DD22B, 0x2B2B592B59414141, 0x4141414105060935,  // 0x000140F8 
	0x0C06130241768E41, 0x41414141411B1B1B, 0x1B1B411B1B1B591B, 0x591B1B1B1B1B591B,  // 0x00014118 
	0x1B59592B2B2B2B2B, 0x2B2B2B1B59594141, 0x411B414141417676, 0x7676764105063E35,  // 0x00014138 
	0x04061C02B4B4B4B4, 0x8BB4B48E8E8E7641, 0x411B768E768E7676, 0x767676768E8E768E,  // 0x00014158 
	0x768E76767676768E, 0x8E8E8E418E8E8E8E, 0x8E8EB4B4B4B4B4B4, 0xB4B4B4B4A10A3E35,  // 0x00014178 
	0x040602021B76D241, 0x411B2B2B1D1D3B23, 0x4A4233334C7777B3, 0x5D2F4C77333B7777,  // 0x00014198 
	0x774C2FD04242231D, 0x593B232F2F428D4A, 0x7733333B221B1B1B, 0x1B41414145000467,  // 0x000141B8 
	0x04061C021B412B59, 0x2B1D23234A424C77, 0x772FD0174625684B, 0x4B3C2F5D4B17463C,  // 0x000141D8 
	0x684B5D4B2F2F2F2F, 0x232F2F4B2F2F4C68, 0x5D2F423323233B1D, 0x1D1B1B5512011935,  // 0x000141F8 
	0x2D12A1A11D1B2B3B, 0x2323334C2F2F6824, 0x844B170325033C56, 0x56174B3C17032503,  // 0x00014218 
	0x3C5656174B3C4B3C, 0x5D4B170324253C3C, 0x3C4B2F4233233B22, 0x222B591B45001916,  // 0x00014238 
	0x2D12051C1D592B23, 0x334C2F5D4B463C4B, 0x4B4B030346170325, 0x2503464603034617,  // 0x00014258 
	0x0325250346464646, 0xD04B0303463C1725, 0x25174B5D4C423323, 0x4A3B1D2B1200190F,  // 0x00014278 
	0x2D1211C33B2B3333, 0x5D5D4B4B03038817, 0x0303545446268803, 0x0303031754544626,  // 0x00014298 
	0x8803030303170317, 0x0303545425030303, 0x030317173C5D8C33, 0x233B3B1D0B06090F,  // 0x000142B8 
	0x0C0611C33B2B422F, 0x1746034603030325, 0x2525030303030303, 0x0303032503030303,  // 0x000142D8 
	0x0303030303250325, 0x25255454261A0303, 0x0303030303255668, 0x424A233B0212090F,  // 0x000142F8 
	0x0C181102233B7717, 0x260357461A1A0326, 0x031A1A8825033C25, 0x030303031A882503,  // 0x00014318 
	0x3C25030303032626, 0x031A1A6A25542603, 0x2626541A26541A25, 0x2477231D1145090F,  // 0x00014338 
	0x041805283B3B3B8C, 0x4C4242333317778C, 0x8C4C2F5D4C2F242F, 0x5D8C4223D042422F,  // 0x00014358 
	0x242F5D8C8C8C8C8C, 0x8C4C2F745D5D4C42, 0x8C3B333B428C8C4C, 0x42333B1D0279600F,  // 0x00014378 
};

u64 _jyasinzou_room_25_tex_00014398[] = 
{
	0x6A895A4E4E4336B9, 0xB965B92C2C2C652C, 0x434E4343366565A6, 0x7F7F7B7B434E3689,  // 0x00014398 
	0x7F7F7B435A574E4E, 0x432C436A5A434E5A, 0x6A7E7E7E7E5A362C, 0x2C2C7F367F7F7F2C,  // 0x000143B8 
	0x2C2C4343435A887E, 0x6A5A1A7E4E7F4343, 0x7B4E6A5A88881A4E, 0x362C2C2C2C652C36,  // 0x000143D8 
	0x7B7F362C65657F6A, 0x894E4EAE2C432C65, 0x65652CA6437B43A9, 0x362C2C3636437B89,  // 0x000143F8 
	0x432C2C366565652C, 0x7B652C3665AEAE65, 0xB9B9B96565656536, 0x43434E4E367B4E4E,  // 0x00014418 
	0x362C2C362C656565, 0x434E362C2C65A636, 0x36362C65B9656565, 0x2C2C2C434E4343B9,  // 0x00014438 
	0x652C2C3636362C2C, 0x2C4E43362C851A1A, 0x1A03927E4E2CB9B9, 0xB9B9B9B92C436565,  // 0x00014458 
	0x43A92CAE3636AEAE, 0x36A65AC936A94E5A, 0x5A7E92921A7EA94E, 0x437F437F2C43577B,  // 0x00014478 
	0x5A57D13636AE2C2C, 0xAEAE3643A6656536, 0x43364343434E5A5A, 0x894E7E5A5A7E8888,  // 0x00014498 
	0x1A1AD1C9362C2C65, 0x65652C2CC9A66565, 0x434E4E362C652C43, 0x7F362C364E5A5A7E,  // 0x000144B8 
	0x4EA9C9A6A6362CAE, 0x6565656565AEA6AE, 0x654E7EA62C656565, 0x65652C2C2C4E4343,  // 0x000144D8 
	0x36AEAE65652C65A6, 0x362C65656565B9B9, 0xB9B94E7E4E366565, 0x652C362C2C36432C,  // 0x000144F8 
	0xAE2C652C362C6565, 0x85A93636C9A66565, 0x2C2C2C7E7E43362C, 0x2C2C2C2C2C2C7F7F,  // 0x00014518 
	0xA63643A9A63665B9, 0x2C3636C9A95A7E92, 0x037E7ED1575A4365, 0x652C362C2C2C2C7F,  // 0x00014538 
	0x364E4EC9362C2C65, 0x2C3636A9A97E883F, 0x343F44575725884E, 0x362C2C2C367F7B36,  // 0x00014558 
	0x4336363636362C2C, 0x3636A9A95A7EB74E, 0x7E25887E4E4E5A88, 0x921A572C2C7B4E4E,  // 0x00014578 
	0x4E4EAEA6A67FC9C9, 0x434E5A4E5AA94336, 0x364EB75A4EA94E5A, 0x5A7E7E254E367E5A,  // 0x00014598 
	0x7E4E4EA6C9A94E5A, 0x4E5AD14E43433636, 0x36364E4E4EA943A6, 0xC9365A7E885A7E88,  // 0x000145B8 
	0x88884E4EC9C9A94E, 0x5A577E5AA6362C36, 0x2C36C94E4E36362C, 0x36AE652C2C7E0325,  // 0x000145D8 
	0x2544925A4EA9434E, 0x7E6A575A362C2C2C, 0x2C2C2C6543434E5A, 0x4EAE2C2C2C434E92,  // 0x000145F8 
	0x5792032588574E36, 0x4E5AD15A4EAE652C, 0x2C2C65652C43364E, 0x5A5A432C2C364E5A,  // 0x00014618 
	0x4EA9924488921A36, 0xAEA643A9574E4336, 0x4E362C2C2C2C6536, 0x2CA67B43362C2C2C,  // 0x00014638 
	0x3636A6435A7E7E57, 0x5AA6AE2C365A881A, 0x5A5A5A5A2C362C2C, 0x2C364E432C2C2C36,  // 0x00014658 
	0x36363636A6434E4E, 0xA97F2C2C434E4E57, 0x1A307E306A7B7B30, 0x6A5A5A896A893636,  // 0x00014678 
	0x7B3636362C2C2C2C, 0xAEAE2C2C2C2C362C, 0x367B6A6A30306A89, 0x463434464688897F,  // 0x00014698 
	0x4E7B7F36437F7F7F, 0x43A643897F367F43, 0x367B43894E888830, 0x464634B35D173030,  // 0x000146B8 
	0x30306A894E5A6A5A, 0x4E4E7F43A95A6A6A, 0x4E4343367F7B0388, 0x30888888244B8830,  // 0x000146D8 
	0x4630306A30894E89, 0x89894E4E43A94343, 0x43363636367F8930, 0x3030303089301717,  // 0x000146F8 
	0x8830303030306A7B, 0x437B7F367F433636, 0x362C2CAE362C2C7B, 0x896A6A896A7B6A88,  // 0x00014718 
	0x3030306A6A6A6A5A, 0x7B362C362C2C2C2C, 0x2C2C2C2C36364343, 0x7F896A898989896A,  // 0x00014738 
	0x306A6A6A89367F89, 0x894E7F362C2C2C2C, 0x2C7F7B89894E7B7B, 0x7F7F6A886A6A896A,  // 0x00014758 
	0x8846305A4E436565, 0x367B4336367B4E89, 0x7B7F36367F7F435A, 0x4E7B7B8846306A30,  // 0x00014778 
};

u64 _jyasinzou_room_25_tex_00014798[] = 
{
	0x3000000001010000, 0x1220022300111000, 0x0010000111113000, 0x1100000300111100,  // 0x00014798 
	0x1325201102222200, 0x07AAAA1000322230, 0x0025332422002446, 0x6522330544450033,  // 0x000147B8 
	0x1152230002455455, 0x5201005452032200, 0x0010326665335235, 0x6203332217242200,  // 0x000147D8 
	0x1700464525544444, 0x44223256C4200025, 0x4230055665389A80, 0x5210111110245317,  // 0x000147F8 
	0x1112255603245503, 0x2462331264233546, 0x5333331252711303, 0x5510111311243111,  // 0x00014818 
	0x11031105100457AA, 0x7221033354322566, 0x3322301044111302, 0x2632001332421111,  // 0x00014838 
	0x1030072533342011, 0x0227033055225464, 0x0325323346087135, 0x4462111334433233,  // 0x00014858 
	0x0011034070246233, 0x2440322242202465, 0x1032225546378135, 0x6629977136654665,  // 0x00014878 
	0x2233244710246555, 0x4651324462002440, 0x102256B444077710, 0x5519111702655222,  // 0x00014898 
	0x3332465333356664, 0x4511004462102550, 0x0322242135381332, 0x4671103100525022,  // 0x000148B8 
	0x1100556533356522, 0x1871010260000443, 0x0252352026233133, 0x4C01133110556250,  // 0x000148D8 
	0x113110221112519A, 0x8710033344325663, 0x3252054244181771, 0x2451313311356528,  // 0x000148F8 
	0x8000780520054301, 0x0301010135325663, 0x3222025462110077, 0x0528711011125219,  // 0x00014918 
	0x8102071520244330, 0x3017113305200443, 0x0256532565300111, 0x1561111111024507,  // 0x00014938 
	0x2300000521054233, 0x3010010355535640, 0x2566423565012017, 0x1267113201802211,  // 0x00014958 
	0x2201103420134231, 0x0025200326535665, 0x5242202464545317, 0x1548702520024217,  // 0x00014978 
	0x1022225623005521, 0x3544425544002666, 0x6642132466662112, 0x5621110322444310,  // 0x00014998 
	0x2125444271070533, 0x3225546642705400, 0x5453733254428103, 0x5533301130223010,  // 0x000149B8 
	0x0110220870011000, 0x0000254528813018, 0x1011131011000000, 0x1110333189888702,  // 0x000149D8 
	0x1813231170130177, 0x1107813071010200, 0x1710171118893011, 0x0000100011031030,  // 0x000149F8 
	0x1710030332302000, 0x2220117020000222, 0x3133225333220300, 0x3300000032222011,  // 0x00014A18 
	0x0220223333200355, 0x2222020000232200, 0x0003500220000000, 0x3223300002011001,  // 0x00014A38 
	0x0224420033255522, 0x2522222000254455, 0x3333330200000020, 0x2023322252000220,  // 0x00014A58 
	0x0246642033325422, 0x3202223300024B52, 0x3666420000460050, 0x4660030200031000,  // 0x00014A78 
	0x5664644031226665, 0x0812363002444510, 0x6666640046464334, 0x656B323520107000,  // 0x00014A98 
	0x391625503A056445, 0x0033643305646300, 0x6671651944464106, 0x614B620264001704,  // 0x00014AB8 
	0x1106805238146588, 0x1333653300541032, 0x6602633004440774, 0x0156621056432004,  // 0x00014AD8 
	0xA904834038266300, 0x3333643300054003, 0x3656530904442916, 0x3024651705445004,  // 0x00014AF8 
	0x2026256018346022, 0x3115603331854098, 0x3346630056644095, 0x5056453110542835,  // 0x00014B18 
	0x4446644008146222, 0x3192603333915011, 0x3364320256444412, 0x0044500311345931,  // 0x00014B38 
	0x0546440080226442, 0x3174403342114099, 0x0344332563636492, 0x0566100013565710,  // 0x00014B58 
	0x8125230115666455, 0x3236403344144010, 0x0266432433434412, 0x0661000072451813,  // 0x00014B78 
	0x0915417711906781, 0x3136003315466590, 0x546B652633433610, 0x564100077527A803,  // 0x00014B98 
	0x0805617870106600, 0x0816600334666412, 0x4655562633433690, 0x3651000174407003,  // 0x00014BB8 
	0x0772437773256600, 0x1995663336406412, 0x6081260632433600, 0x2640000815450100,  // 0x00014BD8 
	0x0112421125536600, 0x1193560245014410, 0x6287563622422630, 0x26600021A7564100,  // 0x00014BF8 
	0x2335441055206611, 0x2233663241115403, 0x6423663662426600, 0x0660302239854130,  // 0x00014C18 
	0x4522451166446300, 0x5442660266444608, 0x6646621262426510, 0x0660333627885130,  // 0x00014C38 
	0x02554277A0665111, 0x2466651046444508, 0x2664427262006013, 0x0040101442206131,  // 0x00014C58 
	0x813550A79A887717, 0x9266710111022119, 0x1035531021330181, 0x0000717545564800,  // 0x00014C78 
	0x1997300079998811, 0x8787111899981178, 0xA981130002100011, 0x9093010935551713,  // 0x00014C98 
	0x2171032332232332, 0x3017111000100000, 0x1771103301033301, 0x7333300331187100,  // 0x00014CB8 
	0x0300032000201122, 0x0000330022220002, 0x0223132000033333, 0x2000200333211330,  // 0x00014CD8 
	0x0022233330201000, 0x0222302252220002, 0x0122003071000000, 0x0022200001071332,  // 0x00014CF8 
	0x0002500255522290, 0x0000302220002230, 0x1002002233000001, 0x1022311719871010,  // 0x00014D18 
	0x0102555322500011, 0x0001301011133300, 0x3322333035531003, 0x3332230871117178,  // 0x00014D38 
	0x0225451102220790, 0x1110111033311021, 0x1245013202231006, 0x4113330118713311,  // 0x00014D58 
	0x026B41A816445119, 0x2311101356381330, 0x1445111335411064, 0x1910000780266452,  // 0x00014D78 
	0x0246653105904299, 0x4650817154873302, 0x36D2171024411063, 0x0024465223521355,  // 0x00014D98 
	0x0445443158904279, 0x2442717344881000, 0x1244311364111066, 0x1244236528011A52,  // 0x00014DB8 
	0x0572550140706538, 0x3442711566313017, 0xA154001045083006, 0x0242811208207051,  // 0x00014DD8 
	0x0293243362104511, 0x3521808046213301, 0x1826037345074406, 0x0262320608044629,  // 0x00014DF8 
	0x951056014232B2A7, 0x052081A15B411223, 0x32541134E4011646, 0x0366222608754551,  // 0x00014E18 
	0x842246212032B217, 0x053811113560A101, 0x34643136E5311146, 0x0056646418A24420,  // 0x00014E38 
	0xA254644000024517, 0x0578712373448100, 0x26233315C2201044, 0x40166C6330545522,  // 0x00014E58 
	0x885555400000C511, 0x2288114211468110, 0x541108A0C5231446, 0x4480543256418154,  // 0x00014E78 
	0x0802445255326233, 0x6511314203648178, 0x54500092C4200463, 0x368046225439A165,  // 0x00014E98 
	0x5131442564554201, 0x4513316420453209, 0x72540002B5013431, 0x36134D4202227244,  // 0x00014EB8 
	0x00022422B6466500, 0x4431016B52453227, 0xA326B00264102431, 0x36102C4373252542,  // 0x00014ED8 
	0x1254460165464233, 0x6437185452452052, 0x0225427244111445, 0x4610040002232543,  // 0x00014EF8 
	0x9354660913232213, 0x4211381254420024, 0x222243126578A104, 0x401142232644430A,  // 0x00014F18 
	0xA900203191223301, 0x3108199822311000, 0x2253311121879912, 0x21A033011103299A,  // 0x00014F38 
	0x9A981337A9321031, 0x31011A711AA81119, 0x9989871777111981, 0x17881111AAA179AA,  // 0x00014F58 
	0x8A98000088120000, 0x0000117011111111, 0x1181711117771771, 0x1181100018701887,  // 0x00014F78 
};

u64 _jyasinzou_room_25_tex_00014F98[] = 
{
	0x380B1A381A878738, 0x2838878787878787, 0x8728872828282828, 0xBCBCBCBC3880871A,  // 0x00014F98 
	0x38B70D8989898939, 0x3989390D0B0B8939, 0x39390F0B0B0F0D39, 0x0D890B0D0D0D8989,  // 0x00014FB8 
	0x2839391736363939, 0x36360B0B281A1717, 0x170B390B170B170B, 0x0B0B170B0B173989,  // 0x00014FD8 
	0x38AC0B1739393639, 0x36360B0B17171717, 0x170B0B170B0B0B39, 0x0B0B1717173939AC,  // 0x00014FF8 
	0x380D0B1739363636, 0x0B0B393636360B0B, 0x0B39393939393939, 0x0B0B0B0B0B3939AC,  // 0x00015018 
	0x870D0B1739363939, 0x363936363636170B, 0x3636363639393639, 0x3939390B0B393939,  // 0x00015038 
	0x870B170B36363936, 0x0B36363936360B0B, 0x0B39363639393939, 0x3989398939390B0B,  // 0x00015058 
	0x870B171717363636, 0x0B17171717171717, 0x0B39393639393939, 0x3939393936390B0B,  // 0x00015078 
	0x280D17170B36360B, 0x17170B1717171A1A, 0x170B0B0B39363639, 0x0B0B0B0B0B0B892D,  // 0x00015098 
	0x1A0B1A170B0B360B, 0x17171717171A1A1A, 0x1A1A170B0B0B0B39, 0x0B0B1A1A1A170B0D,  // 0x000150B8 
	0x1A0B171739360B1A, 0x1A17171A1A171A1A, 0x1A1A17170B171717, 0x1A871A1A0B0B0B39,  // 0x000150D8 
	0x8789170B39390B1A, 0x1A1A171A1717171A, 0x1A1A17170B171A0B, 0x1A1A1A0B0B0B0BAC,  // 0x000150F8 
	0x0B390B3636393617, 0x1A1A1A1A1A171A1A, 0x1A1A17170B0B1A17, 0x17170B0B0B1A39AC,  // 0x00015118 
	0x0B39360B0B360B1A, 0x1A1A1A1A1A171A1A, 0x1A1A1A170B0B1A0B, 0x1A1A1A0B0B0B0BAC,  // 0x00015138 
	0x1A0D171717171A1A, 0x1A1A1A1A1A1A1A1A, 0x1A0B0B0B0B1A1A0B, 0x0B1A1A0B390B0B89,  // 0x00015158 
	0x0B0D1A1A1A1A1A1A, 0x1A1A1A871A1A1A1A, 0x170B0B0B0B1A1A1A, 0x0B0B170B0B0B0B89,  // 0x00015178 
	0x0B0B1A1A1A171A1A, 0x1A1A1A1A1A1A1A1A, 0x1A0B0B0B0B0B0B0B, 0x0B0B0B0B0B0B0B89,  // 0x00015198 
	0x0B1A1A1A1A17171A, 0x1A1A871A1A0B1A1A, 0x0B0B0B0B0B0B0B0B, 0x0B1A0B1A0B0B0B39,  // 0x000151B8 
	0x0B0D361A1A1A171A, 0x1A271A1A0B0B0B0B, 0x0B0B0B0B0B0B0B0B, 0x0B1A1A1A1A270B89,  // 0x000151D8 
	0x0B0D36171A170B0B, 0x1A1A0B0B0B390B0B, 0x0B0B0B0B0B0B0B0B, 0x0B1A1A1A1A270B89,  // 0x000151F8 
	0x0B0F1717170B0B17, 0x17170B0B0B0B0B0B, 0x0B0B0B3939393939, 0x390B0B0B0B0B0B89,  // 0x00015218 
	0x1A0B171717171717, 0x17171717170B0B36, 0x0B39393989393936, 0x3639363636390B39,  // 0x00015238 
	0x0B0D171717171717, 0x17171717170B0B0B, 0x360B393939390B36, 0x0B36363636360B0D,  // 0x00015258 
	0x0B0D171717171717, 0x1717171717171A1A, 0x170B3636360B170B, 0x170B0B0B0B0B1789,  // 0x00015278 
	0x870D17171717171A, 0x17171717170B1717, 0x0B0B170B0B171717, 0x1717171717171789,  // 0x00015298 
	0x8739170B1717171A, 0x1A1A1A1A1A171A1A, 0x170B39360B0B360B, 0x360B363636363957,  // 0x000152B8 
	0x1AAC39170B363617, 0x17171717170B0B0B, 0x3639393939390B36, 0x0B17360B0B0B179E,  // 0x000152D8 
	0x87AC3636170B0B1A, 0x171A1A1A1A170B36, 0x0B0B360B0B0B3939, 0x39170B17171717AC,  // 0x000152F8 
	0x28AC363617171717, 0x1717171A1A171A1A, 0x1717171717171717, 0x1717171A1A1A1A90,  // 0x00015318 
	0x1AB18917170B3617, 0x171A171A1A1A1717, 0x1A0B0B0B0B0B0B0B, 0x1A1A1A1A1A1A1AB7,  // 0x00015338 
	0x87ACAC39390B3917, 0x17170B170B0B0B0B, 0x0B0B0B0B0B0B0B0B, 0x0B0B1A1A1A1A0B39,  // 0x00015358 
	0x873989898989ACAC, 0x390D393939DE8989, 0x3939DE0B0B0B0F0B, 0x0D2D87871A0B3962,  // 0x00015378 
};

u64 _jyasinzou_room_25_tex_00015398[] = 
{
	0x8929492941103851, 0x31311131015388CD, 0x8875111515153533, 0x5675778499999066,  // 0x00015398 
	0x8924299919138011, 0x131114445003336C, 0x1115111111111377, 0x3315334491999948,  // 0x000153B8 
	0x6499493941481844, 0x441411145131000C, 0x2221111114111021, 0x2115613144444926,  // 0x000153D8 
	0x8424494914434544, 0x444444054411112B, 0x2103311113300310, 0x0021640422092922,  // 0x000153F8 
	0x8999444914311111, 0x1212304000120128, 0x4233311133A11A2A, 0x4110640209499940,  // 0x00015418 
	0x8922414111313310, 0x1010111111101018, 0x203777333333A73A, 0x7A71003229229994,  // 0x00015438 
	0x8494009143314111, 0x1141101024424416, 0x2402020222222222, 0x2220000102999990,  // 0x00015458 
	0x6423941110110010, 0x0022022242202248, 0x0225000202222222, 0x2222030124429993,  // 0x00015478 
	0x8020002403033310, 0x1110122442222226, 0x5550000000000224, 0x2222010012202060,  // 0x00015498 
	0x8016680660036836, 0x8666663111211118, 0x3766000000007721, 0x1300336330306668,  // 0x000154B8 
	0x8006000630013103, 0x0666033111411338, 0x731033301033A311, 0x1111000311030018,  // 0x000154D8 
	0x8366680607011113, 0x1033311444444118, 0x13031001122A7341, 0x1113336313300020,  // 0x000154F8 
	0xC063660333131411, 0x1330341194411338, 0x3030003000307A11, 0x1111336011000216,  // 0x00015518 
	0x8666606665751511, 0x1773319119411338, 0x3606703313A37311, 0x1113336310002006,  // 0x00015538 
	0xC666600066311113, 0x0710021444005558, 0x5660666566775533, 0x113A006022202426,  // 0x00015558 
	0xC066066666751111, 0x330002322423755B, 0x55686575777755A3, 0xA3A7300020202216,  // 0x00015578 
	0xC060004001491914, 0x4220222444007558, 0x55866557757555A3, 0x3A37A00022234226,  // 0x00015598 
	0xC660002420219141, 0x4492212144101358, 0x566667A7A755557A, 0x73A733002A2222A6,  // 0x000155B8 
	0xC660244222419144, 0x4442224212122158, 0x5566577777755577, 0x3775A07322AA2126,  // 0x000155D8 
	0xC660022420349414, 0x4444424224415558, 0x575865A7A77A5553, 0x37A5230A22222A08,  // 0x000155F8 
	0xC863222207224141, 0x4444224442250118, 0x15576777777757A7, 0x7775703022222276,  // 0x00015618 
	0xC660042202244144, 0x0242222204041418, 0x13576777777A5577, 0x7777202A22A0AA06,  // 0x00015638 
	0xCC60429410044141, 0x1024202214101118, 0x1372A7A7A7755577, 0x5757720A24423078,  // 0x00015658 
	0xC866024220244414, 0x1242444202242915, 0x113230737A755575, 0x7557021A42441776,  // 0x00015678 
	0xC866002206603331, 0x7121200144221915, 0x11370330A7555555, 0x757521004A927308,  // 0x00015698 
	0xC866002060677333, 0x6700013001300198, 0x1157767667655B55, 0x5556021322437768,  // 0x000156B8 
	0xC806002055555555, 0x8557303310030118, 0x3135755555888855, 0x7557010323247668,  // 0x000156D8 
	0xC806000606677775, 0x555577550637611B, 0x115755555558B853, 0x7356010323416608,  // 0x000156F8 
	0xC600002035657555, 0x856755573776631C, 0x8B3775555685885A, 0x777670030411666B,  // 0x00015718 
	0xC806000065555555, 0x555565575776611B, 0x3585555558585873, 0x3332010402136008,  // 0x00015738 
	0xC600202060631777, 0x56666677550663BB, 0x3355588885855831, 0x3200100001130868,  // 0x00015758 
	0xD842022104224113, 0x60008023367585BC, 0x55B88B8858856871, 0x0105207030330036,  // 0x00015778 
	0xDDCC8888888B8888, 0x8B8CCBC688CCBDDD, 0xDBBBBBBBBBBB8C88, 0x88BDC88B8B88C8BB,  // 0x00015798 
	0xDC20222222206320, 0x200602201020048D, 0x833758B85555A311, 0x4400510000011008,  // 0x000157B8 
	0xC840224222228000, 0x021020111031044B, 0x1111555855553031, 0x1158503000330300,  // 0x000157D8 
	0xC200242222020000, 0x0101012130002498, 0x1511355885557111, 0x1110533036003300,  // 0x000157F8 
	0xC010422021222021, 0x2222444043114448, 0x19114755B5537733, 0x3138033100013136,  // 0x00015818 
	0xC010224204222002, 0x2224424242104958, 0x99914775B8731331, 0x3335730006606600,  // 0x00015838 
	0xB002224222242020, 0x1222444494949558, 0x9999207686500333, 0x3130700066006636,  // 0x00015858 
	0xC300022010000000, 0x212444444442445B, 0x4494000677733033, 0x1103331060002166,  // 0x00015878 
	0xC000202300100060, 0x301122201033190B, 0x9999103075631333, 0x3310730203330166,  // 0x00015898 
	0xC030220300000606, 0x0302311213030778, 0x1441401367733077, 0x3735633000110160,  // 0x000158B8 
	0xC100423730060060, 0x300100038033141B, 0x4444130378577357, 0x3575777401041906,  // 0x000158D8 
	0xB202412733000006, 0x3001033103317148, 0x1411203755557777, 0x5375676002141060,  // 0x000158F8 
	0x8022222707767766, 0x030120000337394B, 0x0744101533535366, 0x7776566004026911,  // 0x00015918 
	0x82020A0377767065, 0x3330331377AA3346, 0x4114203137853578, 0x5685526629499309,  // 0x00015938 
	0xC007773755555356, 0xA33A3773363AAA35, 0x44A1655553455767, 0x5852556029999140,  // 0x00015958 
	0x8231377576657757, 0x733173731AA33315, 0x1413335555855588, 0x5555850044463944,  // 0x00015978 
	0x8857707655573373, 0x3131131373333338, 0x5535755555555555, 0x5555660499999210,  // 0x00015998 
	0x8005070573573353, 0x1111113133733118, 0x1335535555855555, 0x1555772249003191,  // 0x000159B8 
	0x8021501333332113, 0x3111131377775118, 0x1151155555555555, 0x5555762499993049,  // 0x000159D8 
	0x8000022000222223, 0x1114444411111118, 0x1111111515555555, 0x5553773499339122,  // 0x000159F8 
	0x8000000000000200, 0x2249444242222138, 0x1341515555155555, 0x5515373099991444,  // 0x00015A18 
	0xC000000000000222, 0x0444422222222A78, 0xA731111111111155, 0x5111371449431142,  // 0x00015A38 
	0x8000000000000060, 0x0202202022222078, 0x677A731111111111, 0x1113333149999142,  // 0x00015A58 
	0x8000000600000200, 0x1002000000000066, 0x7000077777733133, 0x3350303489991299,  // 0x00015A78 
	0x8002000666060063, 0x0122022222222428, 0x077A222A03202373, 0x3565688032269992,  // 0x00015A98 
	0x8420222020000202, 0x2121220202222006, 0xA22A2A2A27206676, 0x7760000249991999,  // 0x00015AB8 
	0x6422022606060020, 0x2022142402000206, 0x2776766667777667, 0x66766004A9999999,  // 0x00015AD8 
	0x8422000000060060, 0x000000000066680C, 0x000022222A2A6700, 0x0000002499999999,  // 0x00015AF8 
	0x8990022006066007, 0x333333337766666C, 0x0602022220000066, 0x6060001449999999,  // 0x00015B18 
	0x6444402000201111, 0x111131133306686C, 0x6606303331137666, 0x6603730499999999,  // 0x00015B38 
	0x8990449440333311, 0x333160600867600C, 0x0086865667777676, 0x0333131199999999,  // 0x00015B58 
	0xC80006888B8B8C88, 0xC8C8C88BC88CCBBD, 0xCBCCBBBCBCCCCCCC, 0xBCCBCB8888866668,  // 0x00015B78 
};

static u8 unaccounted15B98[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


