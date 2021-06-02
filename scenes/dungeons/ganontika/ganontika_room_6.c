#include <ultra64.h>
#include <z64.h>
#include "ganontika_room_6.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "ganontika_scene.h"



SCmdEchoSettings _ganontika_room_6_set0000_cmd00 = { 0x16, 0, { 0 }, 0x06 }; // 0x0000
SCmdRoomBehavior _ganontika_room_6_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _ganontika_room_6_set0000_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0010
SCmdTimeSettings _ganontika_room_6_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _ganontika_room_6_set0000_cmd04 = { 0x0A, 0, (u32)&_ganontika_room_6_meshHeader_000001B0 }; // 0x0020
SCmdObjectList _ganontika_room_6_set0000_cmd05 = { 0x0B, 0x09, (u32)_ganontika_room_6_objectList_00000040 }; // 0x0028
SCmdActorList _ganontika_room_6_set0000_cmd06 = { 0x01, 0x15, (u32)_ganontika_room_6_actorList_00000054 }; // 0x0030
SCmdEndMarker _ganontika_room_6_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _ganontika_room_6_objectList_00000040[] = 
{
	OBJECT_DEMO_KEKKAI,
	OBJECT_HAKA_OBJECTS,
	OBJECT_D_HSBLOCK,
	OBJECT_TIMEBLOCK,
	OBJECT_EFC_TW,
	OBJECT_AM,
	OBJECT_VM,
	OBJECT_BOX,
	OBJECT_EFC_FLASH,
};

ActorEntry _ganontika_room_6_actorList_00000054[21] = 
{
	{ ACTOR_OBJ_HSBLOCK, 1288, 30, 1877, 0, 5461, 0, 0xFFC2 }, //0x00000054 
	{ ACTOR_EN_AM, 1638, 50, 1489, 0, -10923, 0, 0xFFFF }, //0x00000064 
	{ ACTOR_BG_GND_DARKMEIRO, 1423, -71, 2124, 0, 5461, 0, 0xFF01 }, //0x00000074 
	{ ACTOR_EN_AM, 1423, 350, 2124, 0, 5461, 0, 0x0000 }, //0x00000084 
	{ ACTOR_BG_HAKA_TRAP, 1923, 171, 2092, 0, -27307, 0, 0x0004 }, //0x00000094 
	{ ACTOR_BG_HAKA_TRAP, 1577, 159, 2292, 0, -27307, 0, 0x0004 }, //0x000000A4 
	{ ACTOR_BG_HAKA_TRAP, 1360, 164, 1116, 0, 5461, 0, 0x0004 }, //0x000000B4 
	{ ACTOR_BG_HAKA_TRAP, 1014, 164, 1316, 0, 5461, 0, 0x0004 }, //0x000000C4 
	{ ACTOR_EN_VM, 1247, 50, 1773, 0, 5461, 0, 0x0500 }, //0x000000D4 
	{ ACTOR_EN_VM, 1816, -50, 1911, 0, 16384, 0, 0x0500 }, //0x000000E4 
	{ ACTOR_EN_VM, 1615, 50, 1558, 0, 0, 0, 0x0501 }, //0x000000F4 
	{ ACTOR_EN_VM, 1526, 50, 1803, 0, 10923, 0, 0x0501 }, //0x00000104 
	{ ACTOR_EN_VM, 1641, 30, 2011, 0, 21845, 0, 0x0501 }, //0x00000114 
	{ ACTOR_EN_VM, 1537, 118, 2219, 0, 27307, 0, 0x0501 }, //0x00000124 
	{ ACTOR_EN_BOX, 1243, 220, 1206, 0, 21845, 5, 0x8942 }, //0x00000134 
	{ ACTOR_EN_BOX, 1689, 150, 1575, 0, 21845, 7, 0x8023 }, //0x00000144 
	{ ACTOR_OBJ_SWITCH, 997, 151, 1285, 0, 5461, 0, 0x0502 }, //0x00000154 
	{ ACTOR_OBJ_SWITCH, 1942, 151, 2125, 0, -27307, 0, 0x0782 }, //0x00000164 
	{ ACTOR_OBJ_SWITCH, 1423, -71, 2124, 0, 5461, 0, 0x3820 }, //0x00000174 
	{ ACTOR_OBJ_WARP2BLOCK, 1423, 151, 2124, 0, 5461, 0, 0x183A }, //0x00000184 
	{ ACTOR_OBJ_WARP2BLOCK, 1423, 250, 2124, 0, 5461, 0, 0x983A }, //0x00000194 
};

static u32 pad1A4 = 0;
static u32 pad1A8 = 0;
static u32 pad1AC = 0;

MeshHeader2 _ganontika_room_6_meshHeader_000001B0 = { { 2 }, 0x0F, (u32)&_ganontika_room_6_meshDListEntry_000001BC, (u32)&(_ganontika_room_6_meshDListEntry_000001BC) + sizeof(_ganontika_room_6_meshDListEntry_000001BC) };

MeshEntry2 _ganontika_room_6_meshDListEntry_000001BC[15] = 
{
	{ 1166, 171, 1146, 304, (u32)_ganontika_room_6_dlist_0000A250, 0 },
	{ 1771, 171, 2261, 304, (u32)_ganontika_room_6_dlist_00007980, 0 },
	{ 1768, 210, 2220, 122, (u32)_ganontika_room_6_dlist_000018F8, (u32)_ganontika_room_6_dlist_0000EB30 },
	{ 1468, -30, 1703, 771, (u32)_ganontika_room_6_dlist_000010E0, 0 },
	{ 1723, 160, 2145, 157, (u32)_ganontika_room_6_dlist_000015E0, 0 },
	{ 1468, -30, 1603, 823, (u32)_ganontika_room_6_dlist_00001D18, 0 },
	{ 1250, -180, 1786, 261, (u32)_ganontika_room_6_dlist_000023A0, 0 },
	{ 1646, -180, 1551, 261, (u32)_ganontika_room_6_dlist_00002C20, 0 },
	{ 1528, -180, 1807, 237, (u32)_ganontika_room_6_dlist_00003640, 0 },
	{ 1822, -230, 1915, 192, (u32)_ganontika_room_6_dlist_00004308, 0 },
	{ 1654, -190, 2018, 231, (u32)_ganontika_room_6_dlist_00004E30, 0 },
	{ 1536, -146, 2221, 266, (u32)_ganontika_room_6_dlist_00005850, 0 },
	{ 1209, -30, 1853, 710, (u32)_ganontika_room_6_dlist_00006168, 0 },
	{ 1468, 320, 1703, 671, (u32)_ganontika_room_6_dlist_000003F0, 0 },
	{ 1536, -60, 1742, 765, (u32)_ganontika_room_6_dlist_000009E0, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

Vtx_t _ganontika_room_6_vertices_000002B0[12] = 
{
	 { 1682, 290, 2273, 0, 3413, 1024, 158, 142, 111, 255 }, // 0x000002B0
	 { 1509, 350, 2373, 0, 5120, 0, 52, 49, 38, 255 }, // 0x000002C0
	 { 2028, 350, 2073, 0, 0, 0, 52, 49, 38, 255 }, // 0x000002D0
	 { 1509, 290, 2373, 0, 5120, 1024, 69, 62, 48, 255 }, // 0x000002E0
	 { 1855, 290, 2173, 0, 1707, 1024, 158, 142, 111, 255 }, // 0x000002F0
	 { 2028, 290, 2073, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00000300
	 { 909, 350, 1334, 0, 5120, 0, 52, 49, 38, 255 }, // 0x00000310
	 { 909, 290, 1334, 0, 5120, 1024, 115, 102, 78, 255 }, // 0x00000320
	 { 1082, 290, 1234, 0, 3413, 1024, 115, 102, 78, 255 }, // 0x00000330
	 { 1428, 350, 1034, 0, 0, 0, 52, 49, 38, 255 }, // 0x00000340
	 { 1255, 290, 1134, 0, 1707, 1024, 115, 102, 78, 255 }, // 0x00000350
	 { 1428, 290, 1034, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00000360
};

Vtx_t _ganontika_room_6_vertices_00000370[8] = 
{
	 { 1428, 290, 1034, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000370
	 { 2028, 290, 2073, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000380
	 { 1428, 350, 1034, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000390
	 { 2028, 350, 2073, 0, 0, 0, 0, 0, 0, 0 }, // 0x000003A0
	 { 909, 290, 1334, 0, 0, 0, 0, 0, 0, 0 }, // 0x000003B0
	 { 1509, 290, 2373, 0, 0, 0, 0, 0, 0, 0 }, // 0x000003C0
	 { 909, 350, 1334, 0, 0, 0, 0, 0, 0, 0 }, // 0x000003D0
	 { 1509, 350, 2373, 0, 0, 0, 0, 0, 0, 0 }, // 0x000003E0
};

Gfx _ganontika_room_6_dlist_000003F0[] =
{
	gsDPPipeSync(), // 0x000003F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000003F8
	gsSPVertex(_ganontika_room_6_vertices_00000370, 8, 0), // 0x00000400
	gsSPCullDisplayList(0, 7), // 0x00000408
	gsDPPipeSync(), // 0x00000410
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000418
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000420
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000428
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B500), // 0x00000430
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000438
	gsDPLoadSync(), // 0x00000440
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000448
	gsDPPipeSync(), // 0x00000450
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000458
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000460
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00000468
	gsDPTileSync(), // 0x00000470
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000478
	gsDPLoadSync(), // 0x00000480
	gsDPLoadTLUTCmd(7, 255), // 0x00000488
	gsDPPipeSync(), // 0x00000490
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000498
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000004A0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000004A8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000004B0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000004B8
	gsSPVertex(_ganontika_room_6_vertices_000002B0, 12, 0), // 0x000004C0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000004C8
	gsSP2Triangles(0, 2, 4, 0, 2, 5, 4, 0), // 0x000004D0
	gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0), // 0x000004D8
	gsSP2Triangles(10, 9, 8, 0, 10, 11, 9, 0), // 0x000004E0
	gsSPEndDisplayList(), // 0x000004E8
};

Vtx_t _ganontika_room_6_vertices_000004F0[12] = 
{
	 { 1133, 210, 1182, 0, 171, 341, 81, 72, 55, 255 }, // 0x000004F0
	 { 1143, 210, 1199, 0, 0, 341, 81, 72, 55, 255 }, // 0x00000500
	 { 1143, 110, 1199, 0, 0, 2048, 100, 89, 67, 255 }, // 0x00000510
	 { 1133, 110, 1182, 0, 171, 2048, 100, 89, 67, 255 }, // 0x00000520
	 { 1185, 110, 1152, 0, 0, 2048, 100, 89, 67, 255 }, // 0x00000530
	 { 1195, 110, 1169, 0, 171, 2048, 100, 89, 67, 255 }, // 0x00000540
	 { 1195, 210, 1169, 0, 171, 341, 81, 72, 55, 255 }, // 0x00000550
	 { 1185, 210, 1152, 0, 0, 341, 81, 72, 55, 255 }, // 0x00000560
	 { 1185, 210, 1152, 0, 512, 1707, 81, 72, 55, 255 }, // 0x00000570
	 { 1195, 210, 1169, 0, 512, 2048, 81, 72, 55, 255 }, // 0x00000580
	 { 1143, 210, 1199, 0, 1024, 2048, 81, 72, 55, 255 }, // 0x00000590
	 { 1133, 210, 1182, 0, 1024, 1707, 81, 72, 55, 255 }, // 0x000005A0
};

Vtx_t _ganontika_room_6_vertices_000005B0[5] = 
{
	 { 1245, 110, 1117, 0, 1894, -51, 81, 72, 55, 255 }, // 0x000005B0
	 { 1308, 110, 1265, 0, 1331, 1126, 169, 154, 126, 255 }, // 0x000005C0
	 { 1355, 110, 1307, 0, 1331, 1638, 100, 89, 67, 255 }, // 0x000005D0
	 { 1269, 110, 1357, 0, 563, 1382, 100, 89, 67, 255 }, // 0x000005E0
	 { 1228, 110, 1127, 0, 1741, -102, 81, 72, 55, 255 }, // 0x000005F0
};

Vtx_t _ganontika_room_6_vertices_00000600[5] = 
{
	 { 1228, 110, 1127, 0, 4096, 2048, 81, 72, 55, 255 }, // 0x00000600
	 { 1159, 110, 1167, 0, 2048, 2048, 100, 89, 67, 255 }, // 0x00000610
	 { 1308, 110, 1265, 0, 4096, -2048, 169, 154, 126, 255 }, // 0x00000620
	 { 1169, 110, 1345, 0, 0, -2048, 169, 154, 126, 255 }, // 0x00000630
	 { 1089, 110, 1207, 0, 0, 2048, 81, 72, 55, 255 }, // 0x00000640
};

Vtx_t _ganontika_room_6_vertices_00000650[6] = 
{
	 { 1169, 110, 1345, 0, 102, 717, 169, 154, 126, 255 }, // 0x00000650
	 { 1269, 110, 1357, 0, 563, 1382, 100, 89, 67, 255 }, // 0x00000660
	 { 1308, 110, 1265, 0, 1331, 1126, 169, 154, 126, 255 }, // 0x00000670
	 { 1089, 110, 1207, 0, 512, -512, 81, 72, 55, 255 }, // 0x00000680
	 { 1072, 110, 1217, 0, 358, -563, 81, 72, 55, 255 }, // 0x00000690
	 { 1182, 110, 1407, 0, -205, 1126, 100, 89, 67, 255 }, // 0x000006A0
};

Vtx_t _ganontika_room_6_vertices_000006B0[32] = 
{
	 { 1195, 110, 1169, 0, 2816, 3072, 81, 72, 55, 255 }, // 0x000006B0
	 { 1255, 110, 1134, 0, 3413, 3072, 81, 72, 55, 255 }, // 0x000006C0
	 { 1195, 210, 1169, 0, 2816, 1365, 169, 154, 126, 255 }, // 0x000006D0
	 { 1293, 177, 1112, 0, 3787, 1935, 158, 142, 111, 255 }, // 0x000006E0
	 { 1255, 290, 1134, 0, 3413, 0, 115, 102, 78, 255 }, // 0x000006F0
	 { 1082, 290, 1234, 0, 1707, 0, 115, 102, 78, 255 }, // 0x00000700
	 { 1143, 210, 1199, 0, 2304, 1365, 169, 154, 126, 255 }, // 0x00000710
	 { 1044, 177, 1256, 0, 1333, 1935, 158, 142, 111, 255 }, // 0x00000720
	 { 1082, 110, 1234, 0, 1707, 3072, 81, 72, 55, 255 }, // 0x00000730
	 { 1143, 110, 1199, 0, 2304, 3072, 81, 72, 55, 255 }, // 0x00000740
	 { 1893, 177, 2151, 0, 1333, 1935, 115, 102, 78, 255 }, // 0x00000750
	 { 1855, 290, 2173, 0, 1707, 0, 158, 142, 111, 255 }, // 0x00000760
	 { 1917, 226, 2138, 0, 1099, 1089, 81, 72, 55, 255 }, // 0x00000770
	 { 1967, 226, 2109, 0, 606, 1089, 81, 72, 55, 255 }, // 0x00000780
	 { 2028, 290, 2073, 0, 0, 0, 69, 62, 48, 255 }, // 0x00000790
	 { 1991, 177, 2095, 0, 374, 1935, 115, 102, 78, 255 }, // 0x000007A0
	 { 2028, 110, 2073, 0, 0, 3072, 158, 142, 111, 255 }, // 0x000007B0
	 { 1942, 110, 2123, 0, 853, 3072, 115, 102, 78, 255 }, // 0x000007C0
	 { 1942, -50, 2123, 0, 853, 5803, 134, 119, 89, 255 }, // 0x000007D0
	 { 2028, -410, 2073, 0, 0, 11947, 5, 5, 5, 255 }, // 0x000007E0
	 { 1855, -410, 2173, 0, 1707, 11947, 5, 5, 5, 255 }, // 0x000007F0
	 { 1855, 110, 2173, 0, 1707, 3072, 81, 72, 55, 255 }, // 0x00000800
	 { 1795, 210, 2208, 0, 2304, 1365, 169, 154, 126, 255 }, // 0x00000810
	 { 1855, 110, 2173, 0, 1707, 3072, 81, 72, 55, 255 }, // 0x00000820
	 { 1743, 210, 2238, 0, 2816, 1365, 169, 154, 126, 255 }, // 0x00000830
	 { 1743, 110, 2238, 0, 2816, 3072, 81, 72, 55, 255 }, // 0x00000840
	 { 1682, 110, 2273, 0, 3413, 3072, 81, 72, 55, 255 }, // 0x00000850
	 { 1795, 110, 2208, 0, 2304, 3072, 81, 72, 55, 255 }, // 0x00000860
	 { 1682, 290, 2273, 0, 3413, 0, 158, 142, 111, 255 }, // 0x00000870
	 { 1644, 177, 2295, 0, 3787, 1935, 115, 102, 78, 255 }, // 0x00000880
	 { 1595, 110, 2323, 0, 4267, 3072, 115, 102, 78, 255 }, // 0x00000890
	 { 1621, 226, 2309, 0, 4019, 1089, 81, 72, 55, 255 }, // 0x000008A0
};

Vtx_t _ganontika_room_6_vertices_000008B0[11] = 
{
	 { 1621, 226, 2309, 0, 4019, 1089, 81, 72, 55, 255 }, // 0x000008B0
	 { 1570, 226, 2338, 0, 4513, 1089, 81, 72, 55, 255 }, // 0x000008C0
	 { 1509, 290, 2373, 0, 5120, 0, 69, 62, 48, 255 }, // 0x000008D0
	 { 1682, 290, 2273, 0, 3413, 0, 158, 142, 111, 255 }, // 0x000008E0
	 { 1547, 177, 2351, 0, 4745, 1935, 115, 102, 78, 255 }, // 0x000008F0
	 { 1509, 110, 2373, 0, 5120, 3072, 158, 142, 111, 255 }, // 0x00000900
	 { 1595, 110, 2323, 0, 4267, 3072, 115, 102, 78, 255 }, // 0x00000910
	 { 1509, -410, 2373, 0, 5120, 11947, 5, 5, 5, 255 }, // 0x00000920
	 { 1595, -50, 2323, 0, 4267, 5803, 134, 119, 89, 255 }, // 0x00000930
	 { 1682, -410, 2273, 0, 3413, 11947, 5, 5, 5, 255 }, // 0x00000940
	 { 1682, 110, 2273, 0, 3413, 3072, 81, 72, 55, 255 }, // 0x00000950
};

Vtx_t _ganontika_room_6_vertices_00000960[8] = 
{
	 { 1418, -410, 1017, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000960
	 { 2028, -410, 2073, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000970
	 { 1418, 290, 1017, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000980
	 { 2028, 290, 2073, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000990
	 { 899, -410, 1317, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009A0
	 { 1509, -410, 2373, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009B0
	 { 899, 290, 1317, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009C0
	 { 1509, 290, 2373, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009D0
};

Gfx _ganontika_room_6_dlist_000009E0[] =
{
	gsDPPipeSync(), // 0x000009E0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000009E8
	gsSPVertex(_ganontika_room_6_vertices_00000960, 8, 0), // 0x000009F0
	gsSPCullDisplayList(0, 7), // 0x000009F8
	gsDPPipeSync(), // 0x00000A00
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000A08
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000A10
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000A18
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000A20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000A28
	gsDPLoadSync(), // 0x00000A30
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000A38
	gsDPPipeSync(), // 0x00000A40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000A48
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000A50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00000A58
	gsDPTileSync(), // 0x00000A60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000A68
	gsDPLoadSync(), // 0x00000A70
	gsDPLoadTLUTCmd(7, 255), // 0x00000A78
	gsDPPipeSync(), // 0x00000A80
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000A88
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000A90
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000A98
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000AA0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000AA8
	gsSPVertex(_ganontika_room_6_vertices_000004F0, 12, 0), // 0x00000AB0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000AB8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000AC0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000AC8
	gsDPPipeSync(), // 0x00000AD0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000AD8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00000AE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000AE8
	gsDPLoadSync(), // 0x00000AF0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000AF8
	gsDPPipeSync(), // 0x00000B00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000B08
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000B10
	gsSPVertex(_ganontika_room_6_vertices_000005B0, 5, 0), // 0x00000B18
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000B20
	gsSP1Triangle(0, 4, 1, 0), // 0x00000B28
	gsDPPipeSync(), // 0x00000B30
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000B38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C100), // 0x00000B40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000B48
	gsDPLoadSync(), // 0x00000B50
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000B58
	gsDPPipeSync(), // 0x00000B60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000B68
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000B70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00000B78
	gsDPTileSync(), // 0x00000B80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000B88
	gsDPLoadSync(), // 0x00000B90
	gsDPLoadTLUTCmd(7, 255), // 0x00000B98
	gsDPPipeSync(), // 0x00000BA0
	gsSPVertex(_ganontika_room_6_vertices_00000600, 5, 0), // 0x00000BA8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000BB0
	gsSP1Triangle(1, 4, 3, 0), // 0x00000BB8
	gsDPPipeSync(), // 0x00000BC0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000BC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00000BD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000BD8
	gsDPLoadSync(), // 0x00000BE0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000BE8
	gsDPPipeSync(), // 0x00000BF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000BF8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000C00
	gsSPVertex(_ganontika_room_6_vertices_00000650, 6, 0), // 0x00000C08
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0), // 0x00000C10
	gsSP2Triangles(4, 5, 0, 0, 5, 1, 0, 0), // 0x00000C18
	gsDPPipeSync(), // 0x00000C20
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000C28
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000C30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000C38
	gsDPLoadSync(), // 0x00000C40
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000C48
	gsDPPipeSync(), // 0x00000C50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000C58
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000C60
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00000C68
	gsDPTileSync(), // 0x00000C70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000C78
	gsDPLoadSync(), // 0x00000C80
	gsDPLoadTLUTCmd(7, 255), // 0x00000C88
	gsDPPipeSync(), // 0x00000C90
	gsSPVertex(_ganontika_room_6_vertices_000006B0, 32, 0), // 0x00000C98
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000CA0
	gsSP2Triangles(3, 4, 2, 0, 4, 5, 6, 0), // 0x00000CA8
	gsSP2Triangles(4, 6, 2, 0, 5, 7, 6, 0), // 0x00000CB0
	gsSP2Triangles(7, 8, 6, 0, 8, 9, 6, 0), // 0x00000CB8
	gsSP2Triangles(10, 11, 12, 0, 13, 12, 11, 0), // 0x00000CC0
	gsSP2Triangles(13, 11, 14, 0, 15, 13, 14, 0), // 0x00000CC8
	gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0), // 0x00000CD0
	gsSP2Triangles(18, 16, 19, 0, 20, 18, 19, 0), // 0x00000CD8
	gsSP2Triangles(17, 16, 18, 0, 18, 20, 21, 0), // 0x00000CE0
	gsSP2Triangles(10, 17, 21, 0, 17, 18, 21, 0), // 0x00000CE8
	gsSP2Triangles(22, 10, 23, 0, 24, 25, 26, 0), // 0x00000CF0
	gsSP2Triangles(22, 23, 27, 0, 22, 11, 10, 0), // 0x00000CF8
	gsSP2Triangles(22, 24, 28, 0, 22, 28, 11, 0), // 0x00000D00
	gsSP2Triangles(24, 29, 28, 0, 29, 26, 30, 0), // 0x00000D08
	gsSP2Triangles(24, 26, 29, 0, 29, 31, 28, 0), // 0x00000D10
	gsSPVertex(_ganontika_room_6_vertices_000008B0, 11, 0), // 0x00000D18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000D20
	gsSP2Triangles(4, 2, 1, 0, 4, 5, 2, 0), // 0x00000D28
	gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0), // 0x00000D30
	gsSP2Triangles(8, 10, 9, 0, 6, 10, 8, 0), // 0x00000D38
	gsSP2Triangles(6, 8, 5, 0, 8, 7, 5, 0), // 0x00000D40
	gsSPEndDisplayList(), // 0x00000D48
};

Vtx_t _ganontika_room_6_vertices_00000D50[3] = 
{
	 { 1469, 350, 1704, 0, -512, -1536, 134, 119, 89, 255 }, // 0x00000D50
	 { 1509, 350, 2373, 0, 2048, 1024, 52, 49, 38, 255 }, // 0x00000D60
	 { 909, 350, 1334, 0, 2048, -4096, 52, 49, 38, 255 }, // 0x00000D70
};

Vtx_t _ganontika_room_6_vertices_00000D80[6] = 
{
	 { 1082, -410, 1234, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00000D80
	 { 909, -410, 1334, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00000D90
	 { 1182, -410, 1407, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00000DA0
	 { 1509, -410, 2373, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00000DB0
	 { 1582, -410, 2100, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00000DC0
	 { 1682, -410, 2273, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00000DD0
};

Vtx_t _ganontika_room_6_vertices_00000DE0[19] = 
{
	 { 970, 226, 1299, 0, 607, 1089, 158, 142, 111, 255 }, // 0x00000DE0
	 { 909, 290, 1334, 0, 0, 0, 115, 102, 78, 255 }, // 0x00000DF0
	 { 947, 177, 1312, 0, 375, 1935, 158, 142, 111, 255 }, // 0x00000E00
	 { 909, 110, 1334, 0, 0, 3072, 158, 142, 111, 255 }, // 0x00000E10
	 { 1082, 290, 1234, 0, 1707, 0, 115, 102, 78, 255 }, // 0x00000E20
	 { 1021, 226, 1270, 0, 1101, 1089, 158, 142, 111, 255 }, // 0x00000E30
	 { 1044, 177, 1256, 0, 1333, 1935, 158, 142, 111, 255 }, // 0x00000E40
	 { 1082, -410, 1234, 0, 1707, 11947, 5, 5, 5, 255 }, // 0x00000E50
	 { 995, -50, 1284, 0, 853, 5803, 134, 119, 89, 255 }, // 0x00000E60
	 { 909, -410, 1334, 0, 0, 11947, 5, 5, 5, 255 }, // 0x00000E70
	 { 1082, 110, 1234, 0, 1707, 3072, 81, 72, 55, 255 }, // 0x00000E80
	 { 1682, -410, 2273, 0, 1707, 8875, 5, 5, 5, 255 }, // 0x00000E90
	 { 1682, 110, 2273, 0, 1707, 0, 158, 142, 111, 255 }, // 0x00000EA0
	 { 1582, 110, 2100, 0, 0, 0, 158, 142, 111, 255 }, // 0x00000EB0
	 { 1582, -410, 2100, 0, 0, 8875, 5, 5, 5, 255 }, // 0x00000EC0
	 { 1182, -410, 1407, 0, 1707, 8875, 5, 5, 5, 255 }, // 0x00000ED0
	 { 1182, 110, 1407, 0, 1707, 0, 158, 142, 111, 255 }, // 0x00000EE0
	 { 1082, 110, 1234, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000EF0
	 { 1082, -410, 1234, 0, 0, 8875, 5, 5, 5, 255 }, // 0x00000F00
};

Vtx_t _ganontika_room_6_vertices_00000F10[3] = 
{
	 { 1469, 350, 1704, 0, -512, -1536, 134, 119, 89, 255 }, // 0x00000F10
	 { 2028, 350, 2073, 0, -3072, 1024, 52, 49, 38, 255 }, // 0x00000F20
	 { 1509, 350, 2373, 0, 2048, 1024, 52, 49, 38, 255 }, // 0x00000F30
};

Vtx_t _ganontika_room_6_vertices_00000F40[18] = 
{
	 { 909, 110, 1334, 0, 0, 3072, 158, 142, 111, 255 }, // 0x00000F40
	 { 995, 110, 1284, 0, 853, 3072, 158, 142, 111, 255 }, // 0x00000F50
	 { 947, 177, 1312, 0, 375, 1935, 158, 142, 111, 255 }, // 0x00000F60
	 { 1082, 110, 1234, 0, 1707, 3072, 81, 72, 55, 255 }, // 0x00000F70
	 { 1044, 177, 1256, 0, 1333, 1935, 158, 142, 111, 255 }, // 0x00000F80
	 { 995, -50, 1284, 0, 853, 5803, 134, 119, 89, 255 }, // 0x00000F90
	 { 1428, -410, 1034, 0, 5120, 11947, 5, 5, 5, 255 }, // 0x00000FA0
	 { 1342, -50, 1084, 0, 4267, 5803, 134, 119, 89, 255 }, // 0x00000FB0
	 { 1255, -410, 1134, 0, 3413, 11947, 5, 5, 5, 255 }, // 0x00000FC0
	 { 1428, 110, 1034, 0, 5120, 3072, 158, 142, 111, 255 }, // 0x00000FD0
	 { 1255, 110, 1134, 0, 3413, 3072, 81, 72, 55, 255 }, // 0x00000FE0
	 { 1342, 110, 1084, 0, 4267, 3072, 158, 142, 111, 255 }, // 0x00000FF0
	 { 1391, 177, 1056, 0, 4746, 1935, 158, 142, 111, 255 }, // 0x00001000
	 { 1293, 177, 1112, 0, 3787, 1935, 158, 142, 111, 255 }, // 0x00001010
	 { 1317, 226, 1099, 0, 4021, 1089, 158, 142, 111, 255 }, // 0x00001020
	 { 1255, 290, 1134, 0, 3413, 0, 115, 102, 78, 255 }, // 0x00001030
	 { 1428, 290, 1034, 0, 5120, 0, 115, 102, 78, 255 }, // 0x00001040
	 { 1367, 226, 1070, 0, 4514, 1089, 158, 142, 111, 255 }, // 0x00001050
};

Vtx_t _ganontika_room_6_vertices_00001060[8] = 
{
	 { 1428, -410, 1034, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001060
	 { 2028, -410, 2073, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001070
	 { 1428, 350, 1034, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001080
	 { 2028, 350, 2073, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001090
	 { 909, -410, 1334, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010A0
	 { 1509, -410, 2373, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010B0
	 { 909, 350, 1334, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010C0
	 { 1509, 350, 2373, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010D0
};

Gfx _ganontika_room_6_dlist_000010E0[] =
{
	gsDPPipeSync(), // 0x000010E0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000010E8
	gsSPVertex(_ganontika_room_6_vertices_00001060, 8, 0), // 0x000010F0
	gsSPCullDisplayList(0, 7), // 0x000010F8
	gsDPPipeSync(), // 0x00001100
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001108
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001110
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001118
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D900), // 0x00001120
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001128
	gsDPLoadSync(), // 0x00001130
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001138
	gsDPPipeSync(), // 0x00001140
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001148
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001150
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001158
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001160
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001168
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001170
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001178
	gsSPVertex(_ganontika_room_6_vertices_00000D50, 3, 0), // 0x00001180
	gsSP1Triangle(0, 1, 2, 0), // 0x00001188
	gsDPPipeSync(), // 0x00001190
	gsSPTexture(0, 0, 0, 0, 0), // 0x00001198
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x000011A0
	gsSPVertex(_ganontika_room_6_vertices_00000D80, 6, 0), // 0x000011A8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0), // 0x000011B0
	gsSP2Triangles(1, 4, 2, 0, 3, 5, 4, 0), // 0x000011B8
	gsDPPipeSync(), // 0x000011C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000011C8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000011D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000011D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000011E0
	gsDPLoadSync(), // 0x000011E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000011F0
	gsDPPipeSync(), // 0x000011F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001200
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001208
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001210
	gsDPTileSync(), // 0x00001218
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001220
	gsDPLoadSync(), // 0x00001228
	gsDPLoadTLUTCmd(7, 255), // 0x00001230
	gsDPPipeSync(), // 0x00001238
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001240
	gsSPVertex(_ganontika_room_6_vertices_00000DE0, 19, 0), // 0x00001248
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001250
	gsSP2Triangles(4, 5, 6, 0, 4, 1, 0, 0), // 0x00001258
	gsSP2Triangles(4, 0, 5, 0, 7, 8, 9, 0), // 0x00001260
	gsSP2Triangles(7, 10, 8, 0, 3, 9, 8, 0), // 0x00001268
	gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0), // 0x00001270
	gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0), // 0x00001278
	gsDPPipeSync(), // 0x00001280
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001288
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D900), // 0x00001290
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001298
	gsDPLoadSync(), // 0x000012A0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000012A8
	gsDPPipeSync(), // 0x000012B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000012B8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000012C0
	gsSPVertex(_ganontika_room_6_vertices_00000F10, 3, 0), // 0x000012C8
	gsSP1Triangle(0, 1, 2, 0), // 0x000012D0
	gsDPPipeSync(), // 0x000012D8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000012E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000012E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000012F0
	gsDPLoadSync(), // 0x000012F8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001300
	gsDPPipeSync(), // 0x00001308
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001310
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001318
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001320
	gsDPTileSync(), // 0x00001328
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001330
	gsDPLoadSync(), // 0x00001338
	gsDPLoadTLUTCmd(7, 255), // 0x00001340
	gsDPPipeSync(), // 0x00001348
	gsSPVertex(_ganontika_room_6_vertices_00000F40, 18, 0), // 0x00001350
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0), // 0x00001358
	gsSP2Triangles(0, 5, 1, 0, 5, 3, 1, 0), // 0x00001360
	gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0), // 0x00001368
	gsSP2Triangles(10, 8, 7, 0, 10, 7, 11, 0), // 0x00001370
	gsSP2Triangles(11, 9, 12, 0, 7, 9, 11, 0), // 0x00001378
	gsSP2Triangles(10, 11, 13, 0, 14, 15, 13, 0), // 0x00001380
	gsSP2Triangles(16, 15, 14, 0, 16, 14, 17, 0), // 0x00001388
	gsSP2Triangles(16, 17, 12, 0, 9, 16, 12, 0), // 0x00001390
	gsSPEndDisplayList(), // 0x00001398
};

Vtx_t _ganontika_room_6_vertices_000013A0[12] = 
{
	 { 1753, 110, 2256, 0, 171, 2048, 100, 89, 67, 255 }, // 0x000013A0
	 { 1743, 110, 2238, 0, 0, 2048, 100, 89, 67, 255 }, // 0x000013B0
	 { 1743, 210, 2238, 0, 0, 341, 81, 72, 55, 255 }, // 0x000013C0
	 { 1753, 210, 2256, 0, 171, 341, 81, 72, 55, 255 }, // 0x000013D0
	 { 1805, 210, 2226, 0, 0, 341, 81, 72, 55, 255 }, // 0x000013E0
	 { 1795, 210, 2208, 0, 171, 341, 81, 72, 55, 255 }, // 0x000013F0
	 { 1795, 110, 2208, 0, 171, 2048, 100, 89, 67, 255 }, // 0x00001400
	 { 1805, 110, 2226, 0, 0, 2048, 100, 89, 67, 255 }, // 0x00001410
	 { 1753, 210, 2256, 0, 1024, 1707, 81, 72, 55, 255 }, // 0x00001420
	 { 1743, 210, 2238, 0, 1024, 2048, 81, 72, 55, 255 }, // 0x00001430
	 { 1795, 210, 2208, 0, 512, 2048, 81, 72, 55, 255 }, // 0x00001440
	 { 1805, 210, 2226, 0, 512, 1707, 81, 72, 55, 255 }, // 0x00001450
};

Vtx_t _ganontika_room_6_vertices_00001460[5] = 
{
	 { 1755, 110, 2000, 0, 2048, 1536, 115, 102, 78, 255 }, // 0x00001460
	 { 1768, 110, 2062, 0, 1536, 1536, 169, 154, 126, 255 }, // 0x00001470
	 { 1865, 110, 2191, 0, 358, 2099, 100, 89, 67, 255 }, // 0x00001480
	 { 1669, 110, 2050, 0, 1792, 768, 115, 102, 78, 255 }, // 0x00001490
	 { 1848, 110, 2201, 0, 307, 1946, 81, 72, 55, 255 }, // 0x000014A0
};

Vtx_t _ganontika_room_6_vertices_000014B0[5] = 
{
	 { 1768, 110, 2062, 0, 4096, -2048, 169, 154, 126, 255 }, // 0x000014B0
	 { 1779, 110, 2241, 0, 2048, 2048, 100, 89, 67, 255 }, // 0x000014C0
	 { 1848, 110, 2201, 0, 4096, 2048, 81, 72, 55, 255 }, // 0x000014D0
	 { 1629, 110, 2142, 0, 0, -2048, 169, 154, 126, 255 }, // 0x000014E0
	 { 1709, 110, 2281, 0, 0, 2048, 81, 72, 55, 255 }, // 0x000014F0
};

Vtx_t _ganontika_room_6_vertices_00001500[6] = 
{
	 { 1768, 110, 2062, 0, 1536, 1536, 169, 154, 126, 255 }, // 0x00001500
	 { 1669, 110, 2050, 0, 1792, 768, 115, 102, 78, 255 }, // 0x00001510
	 { 1629, 110, 2142, 0, 1126, 307, 169, 154, 126, 255 }, // 0x00001520
	 { 1692, 110, 2291, 0, -154, 563, 100, 89, 67, 255 }, // 0x00001530
	 { 1709, 110, 2281, 0, -102, 717, 81, 72, 55, 255 }, // 0x00001540
	 { 1582, 110, 2100, 0, 1536, 0, 100, 89, 67, 255 }, // 0x00001550
};

Vtx_t _ganontika_room_6_vertices_00001560[8] = 
{
	 { 1755, 110, 2000, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001560
	 { 1865, 110, 2191, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001570
	 { 1755, 210, 2000, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001580
	 { 1865, 210, 2191, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001590
	 { 1582, 110, 2100, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015A0
	 { 1692, 110, 2291, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015B0
	 { 1582, 210, 2100, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015C0
	 { 1692, 210, 2291, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015D0
};

Gfx _ganontika_room_6_dlist_000015E0[] =
{
	gsDPPipeSync(), // 0x000015E0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000015E8
	gsSPVertex(_ganontika_room_6_vertices_00001560, 8, 0), // 0x000015F0
	gsSPCullDisplayList(0, 7), // 0x000015F8
	gsDPPipeSync(), // 0x00001600
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001608
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001610
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001618
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00001620
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001628
	gsDPLoadSync(), // 0x00001630
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001638
	gsDPPipeSync(), // 0x00001640
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001648
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001650
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001658
	gsDPTileSync(), // 0x00001660
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001668
	gsDPLoadSync(), // 0x00001670
	gsDPLoadTLUTCmd(7, 255), // 0x00001678
	gsDPPipeSync(), // 0x00001680
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001688
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001690
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001698
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000016A0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000016A8
	gsSPVertex(_ganontika_room_6_vertices_000013A0, 12, 0), // 0x000016B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000016B8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000016C0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000016C8
	gsDPPipeSync(), // 0x000016D0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000016D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x000016E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000016E8
	gsDPLoadSync(), // 0x000016F0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000016F8
	gsDPPipeSync(), // 0x00001700
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001708
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001710
	gsSPVertex(_ganontika_room_6_vertices_00001460, 5, 0), // 0x00001718
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001720
	gsSP1Triangle(1, 4, 2, 0), // 0x00001728
	gsDPPipeSync(), // 0x00001730
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001738
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C100), // 0x00001740
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00001748
	gsDPLoadSync(), // 0x00001750
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001758
	gsDPPipeSync(), // 0x00001760
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00001768
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001770
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001778
	gsDPTileSync(), // 0x00001780
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001788
	gsDPLoadSync(), // 0x00001790
	gsDPLoadTLUTCmd(7, 255), // 0x00001798
	gsDPPipeSync(), // 0x000017A0
	gsSPVertex(_ganontika_room_6_vertices_000014B0, 5, 0), // 0x000017A8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000017B0
	gsSP1Triangle(3, 4, 1, 0), // 0x000017B8
	gsDPPipeSync(), // 0x000017C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000017C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x000017D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000017D8
	gsDPLoadSync(), // 0x000017E0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000017E8
	gsDPPipeSync(), // 0x000017F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000017F8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001800
	gsSPVertex(_ganontika_room_6_vertices_00001500, 6, 0), // 0x00001808
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0), // 0x00001810
	gsSP2Triangles(2, 5, 3, 0, 2, 1, 5, 0), // 0x00001818
	gsSPEndDisplayList(), // 0x00001820
};

Vtx_t _ganontika_room_6_vertices_00001828[5] = 
{
	 { 1786, 290, 2193, 0, 0, 0, 53, 134, 0, 255 }, // 0x00001828
	 { 1760, 260, 2208, 0, 1024, 1024, 216, 255, 178, 255 }, // 0x00001838
	 { 1734, 290, 2223, 0, 2048, 0, 53, 134, 0, 255 }, // 0x00001848
	 { 1734, 230, 2223, 0, 2048, 2048, 21, 107, 0, 255 }, // 0x00001858
	 { 1786, 230, 2193, 0, 0, 2048, 21, 107, 0, 255 }, // 0x00001868
};

Vtx_t _ganontika_room_6_vertices_00001878[8] = 
{
	 { 1786, 230, 2193, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001878
	 { 1786, 230, 2193, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001888
	 { 1786, 290, 2193, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001898
	 { 1786, 290, 2193, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018A8
	 { 1734, 230, 2223, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018B8
	 { 1734, 230, 2223, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018C8
	 { 1734, 290, 2223, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018D8
	 { 1734, 290, 2223, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018E8
};

Gfx _ganontika_room_6_dlist_000018F8[] =
{
	gsDPPipeSync(), // 0x000018F8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001900
	gsSPVertex(_ganontika_room_6_vertices_00001878, 8, 0), // 0x00001908
	gsSPCullDisplayList(0, 7), // 0x00001910
	gsDPPipeSync(), // 0x00001918
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001920
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001928
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001930
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CF00), // 0x00001938
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00001940
	gsDPLoadSync(), // 0x00001948
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001950
	gsDPPipeSync(), // 0x00001958
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00001960
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001968
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B4E0), // 0x00001970
	gsDPTileSync(), // 0x00001978
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001980
	gsDPLoadSync(), // 0x00001988
	gsDPLoadTLUTCmd(7, 15), // 0x00001990
	gsDPPipeSync(), // 0x00001998
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000019A0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000019A8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000019B0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000019B8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000019C0
	gsSPVertex(_ganontika_room_6_vertices_00001828, 5, 0), // 0x000019C8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000019D0
	gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0), // 0x000019D8
	gsSPEndDisplayList(), // 0x000019E0
};

Vtx_t _ganontika_room_6_vertices_000019E8[16] = 
{
	 { 1255, -410, 1134, 0, 1707, 8875, 5, 5, 5, 255 }, // 0x000019E8
	 { 1255, 110, 1134, 0, 1707, 0, 81, 72, 55, 255 }, // 0x000019F8
	 { 1355, 110, 1307, 0, 0, 0, 158, 142, 111, 255 }, // 0x00001A08
	 { 1355, -410, 1307, 0, 0, 8875, 5, 5, 5, 255 }, // 0x00001A18
	 { 1755, -410, 2000, 0, 1707, 8875, 5, 5, 5, 255 }, // 0x00001A28
	 { 1755, 110, 2000, 0, 1707, 0, 158, 142, 111, 255 }, // 0x00001A38
	 { 1855, 110, 2173, 0, 0, 0, 158, 142, 111, 255 }, // 0x00001A48
	 { 1855, -410, 2173, 0, 0, 8875, 5, 5, 5, 255 }, // 0x00001A58
	 { 1728, 110, 1554, 0, 5120, 3072, 177, 164, 138, 255 }, // 0x00001A68
	 { 1428, 110, 1034, 0, 0, 3072, 158, 142, 111, 255 }, // 0x00001A78
	 { 1428, -410, 1034, 0, 0, 11947, 5, 5, 5, 255 }, // 0x00001A88
	 { 2028, -410, 2073, 0, 10240, 11947, 5, 5, 5, 255 }, // 0x00001A98
	 { 2028, 110, 2073, 0, 10240, 3072, 158, 142, 111, 255 }, // 0x00001AA8
	 { 2028, 290, 2073, 0, 10240, 0, 69, 62, 48, 255 }, // 0x00001AB8
	 { 1728, 290, 1554, 0, 5120, 0, 147, 131, 97, 255 }, // 0x00001AC8
	 { 1428, 290, 1034, 0, 0, 0, 115, 102, 78, 255 }, // 0x00001AD8
};

Vtx_t _ganontika_room_6_vertices_00001AE8[8] = 
{
	 { 1755, -410, 2000, 0, 0, 2048, 5, 5, 5, 255 }, // 0x00001AE8
	 { 1855, -410, 2173, 0, 0, 2048, 5, 5, 5, 255 }, // 0x00001AF8
	 { 2028, -410, 2073, 0, 0, 2048, 5, 5, 5, 255 }, // 0x00001B08
	 { 1355, -410, 1307, 0, 0, 2048, 5, 5, 5, 255 }, // 0x00001B18
	 { 1428, -410, 1034, 0, 0, 2048, 5, 5, 5, 255 }, // 0x00001B28
	 { 1182, -410, 1407, 0, 0, 2048, 5, 5, 5, 255 }, // 0x00001B38
	 { 1582, -410, 2100, 0, 0, 2048, 5, 5, 5, 255 }, // 0x00001B48
	 { 1255, -410, 1134, 0, 0, 2048, 5, 5, 5, 255 }, // 0x00001B58
};

Vtx_t _ganontika_room_6_vertices_00001B68[3] = 
{
	 { 1428, 350, 1034, 0, -3072, -4096, 52, 49, 38, 255 }, // 0x00001B68
	 { 2028, 350, 2073, 0, -3072, 1024, 52, 49, 38, 255 }, // 0x00001B78
	 { 1469, 350, 1704, 0, -512, -1536, 134, 119, 89, 255 }, // 0x00001B88
};

Vtx_t _ganontika_room_6_vertices_00001B98[8] = 
{
	 { 1582, -410, 2100, 0, 1707, 8875, 5, 5, 5, 255 }, // 0x00001B98
	 { 1582, 110, 2100, 0, 1707, 0, 158, 142, 111, 255 }, // 0x00001BA8
	 { 1755, 110, 2000, 0, 0, 0, 158, 142, 111, 255 }, // 0x00001BB8
	 { 1755, -410, 2000, 0, 0, 8875, 5, 5, 5, 255 }, // 0x00001BC8
	 { 1355, -410, 1307, 0, 1707, 8875, 5, 5, 5, 255 }, // 0x00001BD8
	 { 1355, 110, 1307, 0, 1707, 0, 158, 142, 111, 255 }, // 0x00001BE8
	 { 1182, 110, 1407, 0, 0, 0, 158, 142, 111, 255 }, // 0x00001BF8
	 { 1182, -410, 1407, 0, 0, 8875, 5, 5, 5, 255 }, // 0x00001C08
};

Vtx_t _ganontika_room_6_vertices_00001C18[3] = 
{
	 { 1469, 350, 1704, 0, -512, -1536, 134, 119, 89, 255 }, // 0x00001C18
	 { 909, 350, 1334, 0, 2048, -4096, 52, 49, 38, 255 }, // 0x00001C28
	 { 1428, 350, 1034, 0, -3072, -4096, 52, 49, 38, 255 }, // 0x00001C38
};

Vtx_t _ganontika_room_6_vertices_00001C48[5] = 
{
	 { 1728, 290, 1554, 0, 5120, 1024, 147, 131, 97, 255 }, // 0x00001C48
	 { 2028, 350, 2073, 0, 10240, 0, 52, 49, 38, 255 }, // 0x00001C58
	 { 1428, 350, 1034, 0, 0, 0, 52, 49, 38, 255 }, // 0x00001C68
	 { 2028, 290, 2073, 0, 10240, 1024, 69, 62, 48, 255 }, // 0x00001C78
	 { 1428, 290, 1034, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00001C88
};

Vtx_t _ganontika_room_6_vertices_00001C98[8] = 
{
	 { 1428, -410, 1034, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001C98
	 { 2028, -410, 2073, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CA8
	 { 1428, 350, 1034, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CB8
	 { 2028, 350, 2073, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CC8
	 { 909, -410, 1334, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CD8
	 { 1509, -410, 2373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CE8
	 { 909, 350, 1334, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CF8
	 { 1509, 350, 2373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D08
};

Gfx _ganontika_room_6_dlist_00001D18[] =
{
	gsDPPipeSync(), // 0x00001D18
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001D20
	gsSPVertex(_ganontika_room_6_vertices_00001C98, 8, 0), // 0x00001D28
	gsSPCullDisplayList(0, 7), // 0x00001D30
	gsDPPipeSync(), // 0x00001D38
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001D40
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001D48
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001D50
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00001D58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001D60
	gsDPLoadSync(), // 0x00001D68
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001D70
	gsDPPipeSync(), // 0x00001D78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001D80
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001D88
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001D90
	gsDPTileSync(), // 0x00001D98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001DA0
	gsDPLoadSync(), // 0x00001DA8
	gsDPLoadTLUTCmd(7, 255), // 0x00001DB0
	gsDPPipeSync(), // 0x00001DB8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001DC0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001DC8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001DD0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001DD8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001DE0
	gsSPVertex(_ganontika_room_6_vertices_000019E8, 16, 0), // 0x00001DE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001DF0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001DF8
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 8, 0), // 0x00001E00
	gsSP2Triangles(11, 8, 10, 0, 8, 12, 13, 0), // 0x00001E08
	gsSP2Triangles(8, 14, 15, 0, 8, 13, 14, 0), // 0x00001E10
	gsSP1Triangle(8, 15, 9, 0), // 0x00001E18
	gsDPPipeSync(), // 0x00001E20
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001E28
	gsSPTexture(0, 0, 0, 0, 0), // 0x00001E30
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00001E38
	gsSPVertex(_ganontika_room_6_vertices_00001AE8, 8, 0), // 0x00001E40
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00001E48
	gsSP2Triangles(3, 2, 4, 0, 3, 5, 6, 0), // 0x00001E50
	gsSP2Triangles(3, 6, 0, 0, 3, 4, 7, 0), // 0x00001E58
	gsDPPipeSync(), // 0x00001E60
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001E68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D900), // 0x00001E70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001E78
	gsDPLoadSync(), // 0x00001E80
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001E88
	gsDPPipeSync(), // 0x00001E90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001E98
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001EA0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001EA8
	gsSPVertex(_ganontika_room_6_vertices_00001B68, 3, 0), // 0x00001EB0
	gsSP1Triangle(0, 1, 2, 0), // 0x00001EB8
	gsDPPipeSync(), // 0x00001EC0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001EC8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00001ED0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001ED8
	gsDPLoadSync(), // 0x00001EE0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001EE8
	gsDPPipeSync(), // 0x00001EF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001EF8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001F00
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001F08
	gsDPTileSync(), // 0x00001F10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001F18
	gsDPLoadSync(), // 0x00001F20
	gsDPLoadTLUTCmd(7, 255), // 0x00001F28
	gsDPPipeSync(), // 0x00001F30
	gsSPVertex(_ganontika_room_6_vertices_00001B98, 8, 0), // 0x00001F38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001F40
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001F48
	gsDPPipeSync(), // 0x00001F50
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001F58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D900), // 0x00001F60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001F68
	gsDPLoadSync(), // 0x00001F70
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001F78
	gsDPPipeSync(), // 0x00001F80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001F88
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001F90
	gsSPVertex(_ganontika_room_6_vertices_00001C18, 3, 0), // 0x00001F98
	gsSP1Triangle(0, 1, 2, 0), // 0x00001FA0
	gsDPPipeSync(), // 0x00001FA8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001FB0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B500), // 0x00001FB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001FC0
	gsDPLoadSync(), // 0x00001FC8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001FD0
	gsDPPipeSync(), // 0x00001FD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001FE0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001FE8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001FF0
	gsDPTileSync(), // 0x00001FF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002000
	gsDPLoadSync(), // 0x00002008
	gsDPLoadTLUTCmd(7, 255), // 0x00002010
	gsDPPipeSync(), // 0x00002018
	gsSPVertex(_ganontika_room_6_vertices_00001C48, 5, 0), // 0x00002020
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002028
	gsSP1Triangle(0, 2, 4, 0), // 0x00002030
	gsSPEndDisplayList(), // 0x00002038
};

Vtx_t _ganontika_room_6_vertices_00002040[6] = 
{
	 { 1139, 50, 1732, 0, 3706, 1543, 134, 119, 89, 255 }, // 0x00002040
	 { 1239, 50, 1906, 0, 2982, 95, 134, 119, 89, 255 }, // 0x00002050
	 { 1351, 50, 1841, 0, 2040, 565, 189, 178, 157, 255 }, // 0x00002060
	 { 1362, 50, 1800, 0, 1932, 891, 189, 178, 157, 255 }, // 0x00002070
	 { 1292, 50, 1678, 0, 2439, 1905, 189, 178, 157, 255 }, // 0x00002080
	 { 1251, 50, 1667, 0, 2764, 2013, 189, 178, 157, 255 }, // 0x00002090
};

Vtx_t _ganontika_room_6_vertices_000020A0[4] = 
{
	 { 1251, 30, 1667, 0, 5436, 2048, 177, 164, 138, 255 }, // 0x000020A0
	 { 1251, -410, 1667, 0, 5436, -3584, 5, 5, 5, 255 }, // 0x000020B0
	 { 1139, -410, 1732, 0, 4121, -3584, 5, 5, 5, 255 }, // 0x000020C0
	 { 1139, 30, 1732, 0, 4121, 2048, 100, 89, 67, 255 }, // 0x000020D0
};

Vtx_t _ganontika_room_6_vertices_000020E0[4] = 
{
	 { 1251, 50, 1667, 0, 205, 1434, 134, 119, 89, 255 }, // 0x000020E0
	 { 1251, 30, 1667, 0, 307, 1638, 177, 164, 138, 255 }, // 0x000020F0
	 { 1139, 30, 1732, 0, 1638, 973, 100, 89, 67, 255 }, // 0x00002100
	 { 1139, 50, 1732, 0, 1536, 768, 134, 119, 89, 255 }, // 0x00002110
};

Vtx_t _ganontika_room_6_vertices_00002120[4] = 
{
	 { 1292, 30, 1678, 0, 5846, 2048, 177, 164, 138, 255 }, // 0x00002120
	 { 1292, -410, 1678, 0, 5846, -3584, 5, 5, 5, 255 }, // 0x00002130
	 { 1251, -410, 1667, 0, 5436, -3584, 5, 5, 5, 255 }, // 0x00002140
	 { 1251, 30, 1667, 0, 5436, 2048, 198, 188, 168, 255 }, // 0x00002150
};

Vtx_t _ganontika_room_6_vertices_00002160[4] = 
{
	 { 1292, 50, 1678, 0, 78, 1241, 134, 119, 89, 255 }, // 0x00002160
	 { 1292, 30, 1678, 0, 180, 1446, 177, 164, 138, 255 }, // 0x00002170
	 { 1251, 30, 1667, 0, 614, 1229, 198, 188, 168, 255 }, // 0x00002180
	 { 1251, 50, 1667, 0, 512, 1024, 134, 119, 89, 255 }, // 0x00002190
};

Vtx_t _ganontika_room_6_vertices_000021A0[4] = 
{
	 { 1362, 30, 1800, 0, 7295, 2048, 177, 164, 138, 255 }, // 0x000021A0
	 { 1362, -410, 1800, 0, 7295, -3584, 5, 5, 5, 255 }, // 0x000021B0
	 { 1292, -410, 1678, 0, 5846, -3584, 5, 5, 5, 255 }, // 0x000021C0
	 { 1292, 30, 1678, 0, 5846, 2048, 198, 188, 168, 255 }, // 0x000021D0
};

Vtx_t _ganontika_room_6_vertices_000021E0[4] = 
{
	 { 1362, 50, 1800, 0, -102, 1331, 134, 119, 89, 255 }, // 0x000021E0
	 { 1362, 30, 1800, 0, 0, 1536, 177, 164, 138, 255 }, // 0x000021F0
	 { 1292, 30, 1678, 0, 1434, 819, 198, 188, 168, 255 }, // 0x00002200
	 { 1292, 50, 1678, 0, 1331, 614, 134, 119, 89, 255 }, // 0x00002210
};

Vtx_t _ganontika_room_6_vertices_00002220[4] = 
{
	 { 1351, 30, 1841, 0, 537, 2048, 189, 178, 157, 255 }, // 0x00002220
	 { 1351, -410, 1841, 0, 537, -3584, 5, 5, 5, 255 }, // 0x00002230
	 { 1362, -410, 1800, 0, 127, -3584, 5, 5, 5, 255 }, // 0x00002240
	 { 1362, 30, 1800, 0, 127, 2048, 169, 154, 126, 255 }, // 0x00002250
};

Vtx_t _ganontika_room_6_vertices_00002260[4] = 
{
	 { 1351, 50, 1841, 0, 78, 1241, 134, 119, 89, 255 }, // 0x00002260
	 { 1351, 30, 1841, 0, 180, 1446, 189, 178, 157, 255 }, // 0x00002270
	 { 1362, 30, 1800, 0, 614, 1229, 169, 154, 126, 255 }, // 0x00002280
	 { 1362, 50, 1800, 0, 512, 1024, 134, 119, 89, 255 }, // 0x00002290
};

Vtx_t _ganontika_room_6_vertices_000022A0[4] = 
{
	 { 1239, 30, 1906, 0, 1852, 2048, 100, 89, 67, 255 }, // 0x000022A0
	 { 1239, -410, 1906, 0, 1852, -3584, 5, 5, 5, 255 }, // 0x000022B0
	 { 1351, -410, 1841, 0, 537, -3584, 5, 5, 5, 255 }, // 0x000022C0
	 { 1351, 30, 1841, 0, 537, 2048, 169, 154, 126, 255 }, // 0x000022D0
};

Vtx_t _ganontika_room_6_vertices_000022E0[4] = 
{
	 { 1239, 50, 1906, 0, -410, 1485, 134, 119, 89, 255 }, // 0x000022E0
	 { 1239, 30, 1906, 0, -307, 1690, 100, 89, 67, 255 }, // 0x000022F0
	 { 1351, 30, 1841, 0, 1024, 1024, 169, 154, 126, 255 }, // 0x00002300
	 { 1351, 50, 1841, 0, 922, 819, 134, 119, 89, 255 }, // 0x00002310
};

Vtx_t _ganontika_room_6_vertices_00002320[8] = 
{
	 { 1277, -410, 1652, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002320
	 { 1377, -410, 1826, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002330
	 { 1277, 50, 1652, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002340
	 { 1377, 50, 1826, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002350
	 { 1139, -410, 1732, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002360
	 { 1239, -410, 1906, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002370
	 { 1139, 50, 1732, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002380
	 { 1239, 50, 1906, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002390
};

Gfx _ganontika_room_6_dlist_000023A0[] =
{
	gsDPPipeSync(), // 0x000023A0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000023A8
	gsSPVertex(_ganontika_room_6_vertices_00002320, 8, 0), // 0x000023B0
	gsSPCullDisplayList(0, 7), // 0x000023B8
	gsDPPipeSync(), // 0x000023C0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000023C8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000023D0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000023D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x000023E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000023E8
	gsDPLoadSync(), // 0x000023F0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000023F8
	gsDPPipeSync(), // 0x00002400
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002408
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002410
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002418
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002420
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002428
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002430
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002438
	gsSPVertex(_ganontika_room_6_vertices_00002040, 6, 0), // 0x00002440
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002448
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00002450
	gsDPPipeSync(), // 0x00002458
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002460
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00002468
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002470
	gsDPLoadSync(), // 0x00002478
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002480
	gsDPPipeSync(), // 0x00002488
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002490
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002498
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000024A0
	gsDPTileSync(), // 0x000024A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000024B0
	gsDPLoadSync(), // 0x000024B8
	gsDPLoadTLUTCmd(7, 255), // 0x000024C0
	gsDPPipeSync(), // 0x000024C8
	gsSPVertex(_ganontika_room_6_vertices_000020A0, 4, 0), // 0x000024D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000024D8
	gsDPPipeSync(), // 0x000024E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000024E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x000024F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000024F8
	gsDPLoadSync(), // 0x00002500
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002508
	gsDPPipeSync(), // 0x00002510
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002518
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002520
	gsSPVertex(_ganontika_room_6_vertices_000020E0, 4, 0), // 0x00002528
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002530
	gsDPPipeSync(), // 0x00002538
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002540
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00002548
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002550
	gsDPLoadSync(), // 0x00002558
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002560
	gsDPPipeSync(), // 0x00002568
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002570
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002578
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00002580
	gsDPTileSync(), // 0x00002588
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002590
	gsDPLoadSync(), // 0x00002598
	gsDPLoadTLUTCmd(7, 255), // 0x000025A0
	gsDPPipeSync(), // 0x000025A8
	gsSPVertex(_ganontika_room_6_vertices_00002120, 4, 0), // 0x000025B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000025B8
	gsDPPipeSync(), // 0x000025C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000025C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x000025D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000025D8
	gsDPLoadSync(), // 0x000025E0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000025E8
	gsDPPipeSync(), // 0x000025F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000025F8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002600
	gsSPVertex(_ganontika_room_6_vertices_00002160, 4, 0), // 0x00002608
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002610
	gsDPPipeSync(), // 0x00002618
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002620
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00002628
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002630
	gsDPLoadSync(), // 0x00002638
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002640
	gsDPPipeSync(), // 0x00002648
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002650
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002658
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00002660
	gsDPTileSync(), // 0x00002668
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002670
	gsDPLoadSync(), // 0x00002678
	gsDPLoadTLUTCmd(7, 255), // 0x00002680
	gsDPPipeSync(), // 0x00002688
	gsSPVertex(_ganontika_room_6_vertices_000021A0, 4, 0), // 0x00002690
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002698
	gsDPPipeSync(), // 0x000026A0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000026A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x000026B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000026B8
	gsDPLoadSync(), // 0x000026C0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000026C8
	gsDPPipeSync(), // 0x000026D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000026D8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000026E0
	gsSPVertex(_ganontika_room_6_vertices_000021E0, 4, 0), // 0x000026E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000026F0
	gsDPPipeSync(), // 0x000026F8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002700
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00002708
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002710
	gsDPLoadSync(), // 0x00002718
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002720
	gsDPPipeSync(), // 0x00002728
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002730
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002738
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00002740
	gsDPTileSync(), // 0x00002748
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002750
	gsDPLoadSync(), // 0x00002758
	gsDPLoadTLUTCmd(7, 255), // 0x00002760
	gsDPPipeSync(), // 0x00002768
	gsSPVertex(_ganontika_room_6_vertices_00002220, 4, 0), // 0x00002770
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002778
	gsDPPipeSync(), // 0x00002780
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002788
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00002790
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002798
	gsDPLoadSync(), // 0x000027A0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000027A8
	gsDPPipeSync(), // 0x000027B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000027B8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000027C0
	gsSPVertex(_ganontika_room_6_vertices_00002260, 4, 0), // 0x000027C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000027D0
	gsDPPipeSync(), // 0x000027D8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000027E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x000027E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000027F0
	gsDPLoadSync(), // 0x000027F8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002800
	gsDPPipeSync(), // 0x00002808
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002810
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002818
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00002820
	gsDPTileSync(), // 0x00002828
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002830
	gsDPLoadSync(), // 0x00002838
	gsDPLoadTLUTCmd(7, 255), // 0x00002840
	gsDPPipeSync(), // 0x00002848
	gsSPVertex(_ganontika_room_6_vertices_000022A0, 4, 0), // 0x00002850
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002858
	gsDPPipeSync(), // 0x00002860
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002868
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00002870
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002878
	gsDPLoadSync(), // 0x00002880
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002888
	gsDPPipeSync(), // 0x00002890
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002898
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000028A0
	gsSPVertex(_ganontika_room_6_vertices_000022E0, 4, 0), // 0x000028A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000028B0
	gsSPEndDisplayList(), // 0x000028B8
};

Vtx_t _ganontika_room_6_vertices_000028C0[6] = 
{
	 { 1646, 50, 1671, 0, -421, 1796, 189, 178, 157, 255 }, // 0x000028C0
	 { 1758, 50, 1606, 0, -1363, 2267, 115, 102, 78, 255 }, // 0x000028D0
	 { 1658, 50, 1432, 0, -639, 3715, 115, 102, 78, 255 }, // 0x000028E0
	 { 1605, 50, 1660, 0, -96, 1905, 189, 178, 157, 255 }, // 0x000028F0
	 { 1535, 50, 1538, 0, 411, 2918, 189, 178, 157, 255 }, // 0x00002900
	 { 1546, 50, 1497, 0, 303, 3244, 189, 178, 157, 255 }, // 0x00002910
};

Vtx_t _ganontika_room_6_vertices_00002920[4] = 
{
	 { 1658, 30, 1432, 0, 5316, 0, 100, 89, 67, 255 }, // 0x00002920
	 { 1658, -410, 1432, 0, 5316, 5632, 5, 5, 5, 255 }, // 0x00002930
	 { 1546, -410, 1497, 0, 6631, 5632, 5, 5, 5, 255 }, // 0x00002940
	 { 1546, 30, 1497, 0, 6631, 0, 177, 164, 138, 255 }, // 0x00002950
};

Vtx_t _ganontika_room_6_vertices_00002960[4] = 
{
	 { 1658, 50, 1432, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00002960
	 { 1658, 30, 1432, 0, 102, 1229, 100, 89, 67, 255 }, // 0x00002970
	 { 1546, 30, 1497, 0, 1434, 563, 177, 164, 138, 255 }, // 0x00002980
	 { 1546, 50, 1497, 0, 1331, 358, 134, 119, 89, 255 }, // 0x00002990
};

Vtx_t _ganontika_room_6_vertices_000029A0[4] = 
{
	 { 1546, 30, 1497, 0, 6631, 0, 198, 188, 168, 255 }, // 0x000029A0
	 { 1546, -410, 1497, 0, 6631, 5632, 5, 5, 5, 255 }, // 0x000029B0
	 { 1535, -410, 1538, 0, 7041, 5632, 5, 5, 5, 255 }, // 0x000029C0
	 { 1535, 30, 1538, 0, 7041, 0, 177, 164, 138, 255 }, // 0x000029D0
};

Vtx_t _ganontika_room_6_vertices_000029E0[4] = 
{
	 { 1546, 50, 1497, 0, 0, 1024, 134, 119, 89, 255 }, // 0x000029E0
	 { 1546, 30, 1497, 0, 102, 1229, 198, 188, 168, 255 }, // 0x000029F0
	 { 1535, 30, 1538, 0, 537, 1012, 177, 164, 138, 255 }, // 0x00002A00
	 { 1535, 50, 1538, 0, 434, 807, 134, 119, 89, 255 }, // 0x00002A10
};

Vtx_t _ganontika_room_6_vertices_00002A20[4] = 
{
	 { 1535, 30, 1538, 0, 7041, 0, 198, 188, 168, 255 }, // 0x00002A20
	 { 1535, -410, 1538, 0, 7041, 5632, 5, 5, 5, 255 }, // 0x00002A30
	 { 1605, -410, 1660, 0, 8490, 5632, 5, 5, 5, 255 }, // 0x00002A40
	 { 1605, 30, 1660, 0, 8490, 0, 177, 164, 138, 255 }, // 0x00002A50
};

Vtx_t _ganontika_room_6_vertices_00002A60[4] = 
{
	 { 1535, 50, 1538, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00002A60
	 { 1535, 30, 1538, 0, 102, 1229, 198, 188, 168, 255 }, // 0x00002A70
	 { 1605, 30, 1660, 0, 1536, 512, 177, 164, 138, 255 }, // 0x00002A80
	 { 1605, 50, 1660, 0, 1434, 307, 134, 119, 89, 255 }, // 0x00002A90
};

Vtx_t _ganontika_room_6_vertices_00002AA0[4] = 
{
	 { 1605, 30, 1660, 0, 1322, 0, 169, 154, 126, 255 }, // 0x00002AA0
	 { 1605, -410, 1660, 0, 1322, 5632, 5, 5, 5, 255 }, // 0x00002AB0
	 { 1646, -410, 1671, 0, 1732, 5632, 5, 5, 5, 255 }, // 0x00002AC0
	 { 1646, 30, 1671, 0, 1732, 0, 189, 178, 157, 255 }, // 0x00002AD0
};

Vtx_t _ganontika_room_6_vertices_00002AE0[4] = 
{
	 { 1605, 50, 1660, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00002AE0
	 { 1605, 30, 1660, 0, 102, 1229, 169, 154, 126, 255 }, // 0x00002AF0
	 { 1646, 30, 1671, 0, 537, 1012, 189, 178, 157, 255 }, // 0x00002B00
	 { 1646, 50, 1671, 0, 434, 807, 134, 119, 89, 255 }, // 0x00002B10
};

Vtx_t _ganontika_room_6_vertices_00002B20[4] = 
{
	 { 1646, 30, 1671, 0, 1732, 0, 169, 154, 126, 255 }, // 0x00002B20
	 { 1646, -410, 1671, 0, 1732, 5632, 5, 5, 5, 255 }, // 0x00002B30
	 { 1758, -410, 1606, 0, 3047, 5632, 5, 5, 5, 255 }, // 0x00002B40
	 { 1758, 30, 1606, 0, 3047, 0, 100, 89, 67, 255 }, // 0x00002B50
};

Vtx_t _ganontika_room_6_vertices_00002B60[4] = 
{
	 { 1646, 50, 1671, 0, 0, 1280, 134, 119, 89, 255 }, // 0x00002B60
	 { 1646, 30, 1671, 0, 102, 1485, 169, 154, 126, 255 }, // 0x00002B70
	 { 1758, 30, 1606, 0, 1434, 819, 100, 89, 67, 255 }, // 0x00002B80
	 { 1758, 50, 1606, 0, 1331, 614, 115, 102, 78, 255 }, // 0x00002B90
};

Vtx_t _ganontika_room_6_vertices_00002BA0[8] = 
{
	 { 1658, -410, 1432, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BA0
	 { 1758, -410, 1606, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BB0
	 { 1658, 50, 1432, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BC0
	 { 1758, 50, 1606, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BD0
	 { 1520, -410, 1512, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BE0
	 { 1620, -410, 1686, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BF0
	 { 1520, 50, 1512, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002C00
	 { 1620, 50, 1686, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002C10
};

Gfx _ganontika_room_6_dlist_00002C20[] =
{
	gsDPPipeSync(), // 0x00002C20
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002C28
	gsSPVertex(_ganontika_room_6_vertices_00002BA0, 8, 0), // 0x00002C30
	gsSPCullDisplayList(0, 7), // 0x00002C38
	gsDPPipeSync(), // 0x00002C40
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002C48
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002C50
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002C58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00002C60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002C68
	gsDPLoadSync(), // 0x00002C70
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002C78
	gsDPPipeSync(), // 0x00002C80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002C88
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002C90
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002C98
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002CA0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002CA8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002CB0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002CB8
	gsSPVertex(_ganontika_room_6_vertices_000028C0, 6, 0), // 0x00002CC0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00002CC8
	gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0), // 0x00002CD0
	gsDPPipeSync(), // 0x00002CD8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002CE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00002CE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002CF0
	gsDPLoadSync(), // 0x00002CF8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002D00
	gsDPPipeSync(), // 0x00002D08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002D10
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002D18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00002D20
	gsDPTileSync(), // 0x00002D28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002D30
	gsDPLoadSync(), // 0x00002D38
	gsDPLoadTLUTCmd(7, 255), // 0x00002D40
	gsDPPipeSync(), // 0x00002D48
	gsSPVertex(_ganontika_room_6_vertices_00002920, 4, 0), // 0x00002D50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002D58
	gsDPPipeSync(), // 0x00002D60
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002D68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00002D70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002D78
	gsDPLoadSync(), // 0x00002D80
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002D88
	gsDPPipeSync(), // 0x00002D90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002D98
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002DA0
	gsSPVertex(_ganontika_room_6_vertices_00002960, 4, 0), // 0x00002DA8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002DB0
	gsDPPipeSync(), // 0x00002DB8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002DC0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00002DC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002DD0
	gsDPLoadSync(), // 0x00002DD8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002DE0
	gsDPPipeSync(), // 0x00002DE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002DF0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002DF8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00002E00
	gsDPTileSync(), // 0x00002E08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002E10
	gsDPLoadSync(), // 0x00002E18
	gsDPLoadTLUTCmd(7, 255), // 0x00002E20
	gsDPPipeSync(), // 0x00002E28
	gsSPVertex(_ganontika_room_6_vertices_000029A0, 4, 0), // 0x00002E30
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002E38
	gsDPPipeSync(), // 0x00002E40
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002E48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00002E50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002E58
	gsDPLoadSync(), // 0x00002E60
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002E68
	gsDPPipeSync(), // 0x00002E70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002E78
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002E80
	gsSPVertex(_ganontika_room_6_vertices_000029E0, 4, 0), // 0x00002E88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002E90
	gsDPPipeSync(), // 0x00002E98
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002EA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00002EA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002EB0
	gsDPLoadSync(), // 0x00002EB8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002EC0
	gsDPPipeSync(), // 0x00002EC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002ED0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002ED8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00002EE0
	gsDPTileSync(), // 0x00002EE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002EF0
	gsDPLoadSync(), // 0x00002EF8
	gsDPLoadTLUTCmd(7, 255), // 0x00002F00
	gsDPPipeSync(), // 0x00002F08
	gsSPVertex(_ganontika_room_6_vertices_00002A20, 4, 0), // 0x00002F10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002F18
	gsDPPipeSync(), // 0x00002F20
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002F28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00002F30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002F38
	gsDPLoadSync(), // 0x00002F40
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002F48
	gsDPPipeSync(), // 0x00002F50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002F58
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002F60
	gsSPVertex(_ganontika_room_6_vertices_00002A60, 4, 0), // 0x00002F68
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002F70
	gsDPPipeSync(), // 0x00002F78
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002F80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00002F88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002F90
	gsDPLoadSync(), // 0x00002F98
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002FA0
	gsDPPipeSync(), // 0x00002FA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002FB0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002FB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00002FC0
	gsDPTileSync(), // 0x00002FC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002FD0
	gsDPLoadSync(), // 0x00002FD8
	gsDPLoadTLUTCmd(7, 255), // 0x00002FE0
	gsDPPipeSync(), // 0x00002FE8
	gsSPVertex(_ganontika_room_6_vertices_00002AA0, 4, 0), // 0x00002FF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002FF8
	gsDPPipeSync(), // 0x00003000
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003008
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00003010
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003018
	gsDPLoadSync(), // 0x00003020
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003028
	gsDPPipeSync(), // 0x00003030
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003038
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003040
	gsSPVertex(_ganontika_room_6_vertices_00002AE0, 4, 0), // 0x00003048
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003050
	gsDPPipeSync(), // 0x00003058
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003060
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00003068
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003070
	gsDPLoadSync(), // 0x00003078
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003080
	gsDPPipeSync(), // 0x00003088
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003090
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003098
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000030A0
	gsDPTileSync(), // 0x000030A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000030B0
	gsDPLoadSync(), // 0x000030B8
	gsDPLoadTLUTCmd(7, 255), // 0x000030C0
	gsDPPipeSync(), // 0x000030C8
	gsSPVertex(_ganontika_room_6_vertices_00002B20, 4, 0), // 0x000030D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000030D8
	gsDPPipeSync(), // 0x000030E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000030E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x000030F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000030F8
	gsDPLoadSync(), // 0x00003100
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003108
	gsDPPipeSync(), // 0x00003110
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003118
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003120
	gsSPVertex(_ganontika_room_6_vertices_00002B60, 4, 0), // 0x00003128
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003130
	gsSPEndDisplayList(), // 0x00003138
};

Vtx_t _ganontika_room_6_vertices_00003140[8] = 
{
	 { 1480, 50, 1775, 0, 972, 1031, 189, 178, 157, 255 }, // 0x00003140
	 { 1470, 50, 1811, 0, 1067, 746, 189, 178, 157, 255 }, // 0x00003150
	 { 1496, 50, 1857, 0, 877, 366, 189, 178, 157, 255 }, // 0x00003160
	 { 1532, 50, 1866, 0, 592, 271, 189, 178, 157, 255 }, // 0x00003170
	 { 1578, 50, 1840, 0, 212, 461, 189, 178, 157, 255 }, // 0x00003180
	 { 1587, 50, 1804, 0, 117, 746, 189, 178, 157, 255 }, // 0x00003190
	 { 1561, 50, 1759, 0, 307, 1126, 189, 178, 157, 255 }, // 0x000031A0
	 { 1525, 50, 1749, 0, 592, 1221, 189, 178, 157, 255 }, // 0x000031B0
};

Vtx_t _ganontika_room_6_vertices_000031C0[4] = 
{
	 { 1525, 30, 1749, 0, 3033, 2048, 189, 178, 157, 255 }, // 0x000031C0
	 { 1525, -410, 1749, 0, 3033, -3584, 5, 5, 5, 255 }, // 0x000031D0
	 { 1480, -410, 1775, 0, 2428, -3584, 5, 5, 5, 255 }, // 0x000031E0
	 { 1480, 30, 1775, 0, 2428, 2048, 158, 142, 111, 255 }, // 0x000031F0
};

Vtx_t _ganontika_room_6_vertices_00003200[4] = 
{
	 { 1525, 50, 1749, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00003200
	 { 1525, 30, 1749, 0, 256, 1280, 189, 178, 157, 255 }, // 0x00003210
	 { 1480, 30, 1775, 0, 640, 896, 158, 142, 111, 255 }, // 0x00003220
	 { 1480, 50, 1775, 0, 384, 640, 134, 119, 89, 255 }, // 0x00003230
};

Vtx_t _ganontika_room_6_vertices_00003240[4] = 
{
	 { 1480, 30, 1775, 0, 2428, 2048, 189, 178, 157, 255 }, // 0x00003240
	 { 1480, -410, 1775, 0, 2428, -3584, 5, 5, 5, 255 }, // 0x00003250
	 { 1470, -410, 1811, 0, 2009, -3584, 5, 5, 5, 255 }, // 0x00003260
	 { 1470, 30, 1811, 0, 2009, 2048, 158, 142, 111, 255 }, // 0x00003270
};

Vtx_t _ganontika_room_6_vertices_00003280[4] = 
{
	 { 1480, 50, 1775, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00003280
	 { 1480, 30, 1775, 0, 256, 1280, 189, 178, 157, 255 }, // 0x00003290
	 { 1470, 30, 1811, 0, 528, 1008, 158, 142, 111, 255 }, // 0x000032A0
	 { 1470, 50, 1811, 0, 272, 752, 134, 119, 89, 255 }, // 0x000032B0
};

Vtx_t _ganontika_room_6_vertices_000032C0[4] = 
{
	 { 1470, 30, 1811, 0, 2009, 2048, 189, 178, 157, 255 }, // 0x000032C0
	 { 1470, -410, 1811, 0, 2009, -3584, 5, 5, 5, 255 }, // 0x000032D0
	 { 1496, -410, 1857, 0, 1404, -3584, 5, 5, 5, 255 }, // 0x000032E0
	 { 1496, 30, 1857, 0, 1404, 2048, 158, 142, 111, 255 }, // 0x000032F0
};

Vtx_t _ganontika_room_6_vertices_00003300[4] = 
{
	 { 1470, 50, 1811, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00003300
	 { 1470, 30, 1811, 0, 256, 1280, 189, 178, 157, 255 }, // 0x00003310
	 { 1496, 30, 1857, 0, 640, 896, 158, 142, 111, 255 }, // 0x00003320
	 { 1496, 50, 1857, 0, 384, 640, 134, 119, 89, 255 }, // 0x00003330
};

Vtx_t _ganontika_room_6_vertices_00003340[4] = 
{
	 { 1496, 30, 1857, 0, 1404, 2048, 177, 164, 138, 255 }, // 0x00003340
	 { 1496, -410, 1857, 0, 1404, -3584, 5, 5, 5, 255 }, // 0x00003350
	 { 1532, -410, 1866, 0, 985, -3584, 5, 5, 5, 255 }, // 0x00003360
	 { 1532, 30, 1866, 0, 985, 2048, 115, 102, 78, 255 }, // 0x00003370
};

Vtx_t _ganontika_room_6_vertices_00003380[4] = 
{
	 { 1496, 50, 1857, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00003380
	 { 1496, 30, 1857, 0, 256, 1280, 177, 164, 138, 255 }, // 0x00003390
	 { 1532, 30, 1866, 0, 528, 1008, 115, 102, 78, 255 }, // 0x000033A0
	 { 1532, 50, 1866, 0, 272, 752, 134, 119, 89, 255 }, // 0x000033B0
};

Vtx_t _ganontika_room_6_vertices_000033C0[4] = 
{
	 { 1532, 30, 1866, 0, 985, 2048, 147, 131, 97, 255 }, // 0x000033C0
	 { 1532, -410, 1866, 0, 985, -3584, 5, 5, 5, 255 }, // 0x000033D0
	 { 1578, -410, 1840, 0, 380, -3584, 5, 5, 5, 255 }, // 0x000033E0
	 { 1578, 30, 1840, 0, 380, 2048, 147, 131, 97, 255 }, // 0x000033F0
};

Vtx_t _ganontika_room_6_vertices_00003400[4] = 
{
	 { 1532, 50, 1866, 0, 256, 1280, 134, 119, 89, 255 }, // 0x00003400
	 { 1532, 30, 1866, 0, 512, 1536, 147, 131, 97, 255 }, // 0x00003410
	 { 1578, 30, 1840, 0, 896, 1152, 147, 131, 97, 255 }, // 0x00003420
	 { 1578, 50, 1840, 0, 640, 896, 134, 119, 89, 255 }, // 0x00003430
};

Vtx_t _ganontika_room_6_vertices_00003440[4] = 
{
	 { 1578, 30, 1840, 0, 4476, 2048, 134, 119, 89, 255 }, // 0x00003440
	 { 1578, -410, 1840, 0, 4476, -3584, 5, 5, 5, 255 }, // 0x00003450
	 { 1587, -410, 1804, 0, 4057, -3584, 5, 5, 5, 255 }, // 0x00003460
	 { 1587, 30, 1804, 0, 4057, 2048, 115, 102, 78, 255 }, // 0x00003470
};

Vtx_t _ganontika_room_6_vertices_00003480[4] = 
{
	 { 1578, 50, 1840, 0, 256, 1280, 134, 119, 89, 255 }, // 0x00003480
	 { 1578, 30, 1840, 0, 512, 1536, 134, 119, 89, 255 }, // 0x00003490
	 { 1587, 30, 1804, 0, 784, 1264, 115, 102, 78, 255 }, // 0x000034A0
	 { 1587, 50, 1804, 0, 528, 1008, 134, 119, 89, 255 }, // 0x000034B0
};

Vtx_t _ganontika_room_6_vertices_000034C0[4] = 
{
	 { 1587, 30, 1804, 0, 4057, 2048, 134, 119, 89, 255 }, // 0x000034C0
	 { 1587, -410, 1804, 0, 4057, -3584, 5, 5, 5, 255 }, // 0x000034D0
	 { 1561, -410, 1759, 0, 3452, -3584, 5, 5, 5, 255 }, // 0x000034E0
	 { 1561, 30, 1759, 0, 3452, 2048, 169, 154, 126, 255 }, // 0x000034F0
};

Vtx_t _ganontika_room_6_vertices_00003500[4] = 
{
	 { 1587, 50, 1804, 0, 256, 1280, 134, 119, 89, 255 }, // 0x00003500
	 { 1587, 30, 1804, 0, 512, 1536, 134, 119, 89, 255 }, // 0x00003510
	 { 1561, 30, 1759, 0, 896, 1152, 169, 154, 126, 255 }, // 0x00003520
	 { 1561, 50, 1759, 0, 640, 896, 134, 119, 89, 255 }, // 0x00003530
};

Vtx_t _ganontika_room_6_vertices_00003540[4] = 
{
	 { 1561, 30, 1759, 0, 3452, 2048, 189, 178, 157, 255 }, // 0x00003540
	 { 1561, -410, 1759, 0, 3452, -3584, 5, 5, 5, 255 }, // 0x00003550
	 { 1525, -410, 1749, 0, 3033, -3584, 5, 5, 5, 255 }, // 0x00003560
	 { 1525, 30, 1749, 0, 3033, 2048, 158, 142, 111, 255 }, // 0x00003570
};

Vtx_t _ganontika_room_6_vertices_00003580[4] = 
{
	 { 1561, 50, 1759, 0, 256, 1280, 134, 119, 89, 255 }, // 0x00003580
	 { 1561, 30, 1759, 0, 512, 1536, 189, 178, 157, 255 }, // 0x00003590
	 { 1525, 30, 1749, 0, 784, 1264, 158, 142, 111, 255 }, // 0x000035A0
	 { 1525, 50, 1749, 0, 528, 1008, 134, 119, 89, 255 }, // 0x000035B0
};

Vtx_t _ganontika_room_6_vertices_000035C0[8] = 
{
	 { 1548, -410, 1736, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035C0
	 { 1600, -410, 1827, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035D0
	 { 1548, 50, 1736, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035E0
	 { 1600, 50, 1827, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035F0
	 { 1457, -410, 1788, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003600
	 { 1509, -410, 1879, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003610
	 { 1457, 50, 1788, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003620
	 { 1509, 50, 1879, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003630
};

Gfx _ganontika_room_6_dlist_00003640[] =
{
	gsDPPipeSync(), // 0x00003640
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003648
	gsSPVertex(_ganontika_room_6_vertices_000035C0, 8, 0), // 0x00003650
	gsSPCullDisplayList(0, 7), // 0x00003658
	gsDPPipeSync(), // 0x00003660
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003668
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003670
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003678
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00003680
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003688
	gsDPLoadSync(), // 0x00003690
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003698
	gsDPPipeSync(), // 0x000036A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000036A8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000036B0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000036B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000036C0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000036C8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000036D0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000036D8
	gsSPVertex(_ganontika_room_6_vertices_00003140, 8, 0), // 0x000036E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000036E8
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x000036F0
	gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0), // 0x000036F8
	gsDPPipeSync(), // 0x00003700
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003708
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00003710
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003718
	gsDPLoadSync(), // 0x00003720
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003728
	gsDPPipeSync(), // 0x00003730
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003738
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003740
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00003748
	gsDPTileSync(), // 0x00003750
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003758
	gsDPLoadSync(), // 0x00003760
	gsDPLoadTLUTCmd(7, 255), // 0x00003768
	gsDPPipeSync(), // 0x00003770
	gsSPVertex(_ganontika_room_6_vertices_000031C0, 4, 0), // 0x00003778
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003780
	gsDPPipeSync(), // 0x00003788
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003790
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00003798
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000037A0
	gsDPLoadSync(), // 0x000037A8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000037B0
	gsDPPipeSync(), // 0x000037B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000037C0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000037C8
	gsSPVertex(_ganontika_room_6_vertices_00003200, 4, 0), // 0x000037D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000037D8
	gsDPPipeSync(), // 0x000037E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000037E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x000037F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000037F8
	gsDPLoadSync(), // 0x00003800
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003808
	gsDPPipeSync(), // 0x00003810
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003818
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003820
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00003828
	gsDPTileSync(), // 0x00003830
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003838
	gsDPLoadSync(), // 0x00003840
	gsDPLoadTLUTCmd(7, 255), // 0x00003848
	gsDPPipeSync(), // 0x00003850
	gsSPVertex(_ganontika_room_6_vertices_00003240, 4, 0), // 0x00003858
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003860
	gsDPPipeSync(), // 0x00003868
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003870
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00003878
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003880
	gsDPLoadSync(), // 0x00003888
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003890
	gsDPPipeSync(), // 0x00003898
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000038A0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000038A8
	gsSPVertex(_ganontika_room_6_vertices_00003280, 4, 0), // 0x000038B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000038B8
	gsDPPipeSync(), // 0x000038C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000038C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x000038D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000038D8
	gsDPLoadSync(), // 0x000038E0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000038E8
	gsDPPipeSync(), // 0x000038F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000038F8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003900
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00003908
	gsDPTileSync(), // 0x00003910
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003918
	gsDPLoadSync(), // 0x00003920
	gsDPLoadTLUTCmd(7, 255), // 0x00003928
	gsDPPipeSync(), // 0x00003930
	gsSPVertex(_ganontika_room_6_vertices_000032C0, 4, 0), // 0x00003938
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003940
	gsDPPipeSync(), // 0x00003948
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003950
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00003958
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003960
	gsDPLoadSync(), // 0x00003968
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003970
	gsDPPipeSync(), // 0x00003978
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003980
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003988
	gsSPVertex(_ganontika_room_6_vertices_00003300, 4, 0), // 0x00003990
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003998
	gsDPPipeSync(), // 0x000039A0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000039A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x000039B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000039B8
	gsDPLoadSync(), // 0x000039C0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000039C8
	gsDPPipeSync(), // 0x000039D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000039D8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000039E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000039E8
	gsDPTileSync(), // 0x000039F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000039F8
	gsDPLoadSync(), // 0x00003A00
	gsDPLoadTLUTCmd(7, 255), // 0x00003A08
	gsDPPipeSync(), // 0x00003A10
	gsSPVertex(_ganontika_room_6_vertices_00003340, 4, 0), // 0x00003A18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003A20
	gsDPPipeSync(), // 0x00003A28
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003A30
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00003A38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003A40
	gsDPLoadSync(), // 0x00003A48
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003A50
	gsDPPipeSync(), // 0x00003A58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003A60
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003A68
	gsSPVertex(_ganontika_room_6_vertices_00003380, 4, 0), // 0x00003A70
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003A78
	gsDPPipeSync(), // 0x00003A80
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003A88
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00003A90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003A98
	gsDPLoadSync(), // 0x00003AA0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003AA8
	gsDPPipeSync(), // 0x00003AB0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003AB8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003AC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00003AC8
	gsDPTileSync(), // 0x00003AD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003AD8
	gsDPLoadSync(), // 0x00003AE0
	gsDPLoadTLUTCmd(7, 255), // 0x00003AE8
	gsDPPipeSync(), // 0x00003AF0
	gsSPVertex(_ganontika_room_6_vertices_000033C0, 4, 0), // 0x00003AF8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003B00
	gsDPPipeSync(), // 0x00003B08
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003B10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00003B18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003B20
	gsDPLoadSync(), // 0x00003B28
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003B30
	gsDPPipeSync(), // 0x00003B38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003B40
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003B48
	gsSPVertex(_ganontika_room_6_vertices_00003400, 4, 0), // 0x00003B50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003B58
	gsDPPipeSync(), // 0x00003B60
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003B68
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00003B70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003B78
	gsDPLoadSync(), // 0x00003B80
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003B88
	gsDPPipeSync(), // 0x00003B90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003B98
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003BA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00003BA8
	gsDPTileSync(), // 0x00003BB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003BB8
	gsDPLoadSync(), // 0x00003BC0
	gsDPLoadTLUTCmd(7, 255), // 0x00003BC8
	gsDPPipeSync(), // 0x00003BD0
	gsSPVertex(_ganontika_room_6_vertices_00003440, 4, 0), // 0x00003BD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003BE0
	gsDPPipeSync(), // 0x00003BE8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003BF0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00003BF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003C00
	gsDPLoadSync(), // 0x00003C08
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003C10
	gsDPPipeSync(), // 0x00003C18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003C20
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003C28
	gsSPVertex(_ganontika_room_6_vertices_00003480, 4, 0), // 0x00003C30
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003C38
	gsDPPipeSync(), // 0x00003C40
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003C48
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00003C50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003C58
	gsDPLoadSync(), // 0x00003C60
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003C68
	gsDPPipeSync(), // 0x00003C70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003C78
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003C80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00003C88
	gsDPTileSync(), // 0x00003C90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003C98
	gsDPLoadSync(), // 0x00003CA0
	gsDPLoadTLUTCmd(7, 255), // 0x00003CA8
	gsDPPipeSync(), // 0x00003CB0
	gsSPVertex(_ganontika_room_6_vertices_000034C0, 4, 0), // 0x00003CB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003CC0
	gsDPPipeSync(), // 0x00003CC8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003CD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00003CD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003CE0
	gsDPLoadSync(), // 0x00003CE8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003CF0
	gsDPPipeSync(), // 0x00003CF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003D00
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003D08
	gsSPVertex(_ganontika_room_6_vertices_00003500, 4, 0), // 0x00003D10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003D18
	gsDPPipeSync(), // 0x00003D20
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003D28
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00003D30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003D38
	gsDPLoadSync(), // 0x00003D40
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003D48
	gsDPPipeSync(), // 0x00003D50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003D58
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003D60
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00003D68
	gsDPTileSync(), // 0x00003D70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003D78
	gsDPLoadSync(), // 0x00003D80
	gsDPLoadTLUTCmd(7, 255), // 0x00003D88
	gsDPPipeSync(), // 0x00003D90
	gsSPVertex(_ganontika_room_6_vertices_00003540, 4, 0), // 0x00003D98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003DA0
	gsDPPipeSync(), // 0x00003DA8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003DB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00003DB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003DC0
	gsDPLoadSync(), // 0x00003DC8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003DD0
	gsDPPipeSync(), // 0x00003DD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003DE0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003DE8
	gsSPVertex(_ganontika_room_6_vertices_00003580, 4, 0), // 0x00003DF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003DF8
	gsSPEndDisplayList(), // 0x00003E00
};

Vtx_t _ganontika_room_6_vertices_00003E08[8] = 
{
	 { 1766, -50, 1879, 0, -1290, 58, 189, 178, 157, 255 }, // 0x00003E08
	 { 1755, -50, 1920, 0, -1182, -267, 189, 178, 157, 255 }, // 0x00003E18
	 { 1785, -50, 1971, 0, -1399, -702, 189, 178, 157, 255 }, // 0x00003E28
	 { 1826, -50, 1982, 0, -1725, -811, 189, 178, 157, 255 }, // 0x00003E38
	 { 1878, -50, 1952, 0, -2159, -593, 177, 164, 138, 255 }, // 0x00003E48
	 { 1889, -50, 1911, 0, -2268, -267, 158, 142, 111, 255 }, // 0x00003E58
	 { 1859, -50, 1860, 0, -2051, 167, 158, 142, 111, 255 }, // 0x00003E68
	 { 1818, -50, 1849, 0, -1725, 276, 177, 164, 138, 255 }, // 0x00003E78
};

Vtx_t _ganontika_room_6_vertices_00003E88[4] = 
{
	 { 1818, -70, 1849, 0, 3791, 2048, 134, 119, 89, 255 }, // 0x00003E88
	 { 1818, -410, 1849, 0, 3791, -2304, 5, 5, 5, 255 }, // 0x00003E98
	 { 1766, -410, 1879, 0, 3036, -2304, 5, 5, 5, 255 }, // 0x00003EA8
	 { 1766, -70, 1879, 0, 3036, 2048, 115, 102, 78, 255 }, // 0x00003EB8
};

Vtx_t _ganontika_room_6_vertices_00003EC8[4] = 
{
	 { 1818, -50, 1849, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00003EC8
	 { 1818, -70, 1849, 0, 256, 1280, 134, 119, 89, 255 }, // 0x00003ED8
	 { 1766, -70, 1879, 0, 1024, 512, 115, 102, 78, 255 }, // 0x00003EE8
	 { 1766, -50, 1879, 0, 768, 256, 134, 119, 89, 255 }, // 0x00003EF8
};

Vtx_t _ganontika_room_6_vertices_00003F08[4] = 
{
	 { 1859, -70, 1860, 0, 4316, 2048, 134, 119, 89, 255 }, // 0x00003F08
	 { 1859, -410, 1860, 0, 4316, -2304, 5, 5, 5, 255 }, // 0x00003F18
	 { 1818, -410, 1849, 0, 3791, -2304, 5, 5, 5, 255 }, // 0x00003F28
	 { 1818, -70, 1849, 0, 3791, 2048, 134, 119, 89, 255 }, // 0x00003F38
};

Vtx_t _ganontika_room_6_vertices_00003F48[4] = 
{
	 { 1859, -50, 1860, 0, 256, 1280, 134, 119, 89, 255 }, // 0x00003F48
	 { 1859, -70, 1860, 0, 512, 1536, 134, 119, 89, 255 }, // 0x00003F58
	 { 1818, -70, 1849, 0, 1055, 993, 134, 119, 89, 255 }, // 0x00003F68
	 { 1818, -50, 1849, 0, 799, 737, 134, 119, 89, 255 }, // 0x00003F78
};

Vtx_t _ganontika_room_6_vertices_00003F88[4] = 
{
	 { 1889, -70, 1911, 0, 5071, 2048, 134, 119, 89, 255 }, // 0x00003F88
	 { 1889, -410, 1911, 0, 5071, -2304, 5, 5, 5, 255 }, // 0x00003F98
	 { 1859, -410, 1860, 0, 4316, -2304, 5, 5, 5, 255 }, // 0x00003FA8
	 { 1859, -70, 1860, 0, 4316, 2048, 134, 119, 89, 255 }, // 0x00003FB8
};

Vtx_t _ganontika_room_6_vertices_00003FC8[4] = 
{
	 { 1889, -50, 1911, 0, 256, 1280, 134, 119, 89, 255 }, // 0x00003FC8
	 { 1889, -70, 1911, 0, 512, 1536, 134, 119, 89, 255 }, // 0x00003FD8
	 { 1859, -70, 1860, 0, 1280, 768, 134, 119, 89, 255 }, // 0x00003FE8
	 { 1859, -50, 1860, 0, 1024, 512, 134, 119, 89, 255 }, // 0x00003FF8
};

Vtx_t _ganontika_room_6_vertices_00004008[4] = 
{
	 { 1878, -70, 1952, 0, 5596, 2048, 134, 119, 89, 255 }, // 0x00004008
	 { 1878, -410, 1952, 0, 5596, -2304, 5, 5, 5, 255 }, // 0x00004018
	 { 1889, -410, 1911, 0, 5071, -2304, 5, 5, 5, 255 }, // 0x00004028
	 { 1889, -70, 1911, 0, 5071, 2048, 134, 119, 89, 255 }, // 0x00004038
};

Vtx_t _ganontika_room_6_vertices_00004048[4] = 
{
	 { 1878, -50, 1952, 0, 256, 1280, 134, 119, 89, 255 }, // 0x00004048
	 { 1878, -70, 1952, 0, 512, 1536, 134, 119, 89, 255 }, // 0x00004058
	 { 1889, -70, 1911, 0, 1055, 993, 134, 119, 89, 255 }, // 0x00004068
	 { 1889, -50, 1911, 0, 799, 737, 134, 119, 89, 255 }, // 0x00004078
};

Vtx_t _ganontika_room_6_vertices_00004088[4] = 
{
	 { 1826, -70, 1982, 0, 1231, 2048, 189, 178, 157, 255 }, // 0x00004088
	 { 1826, -410, 1982, 0, 1231, -2304, 5, 5, 5, 255 }, // 0x00004098
	 { 1878, -410, 1952, 0, 476, -2304, 5, 5, 5, 255 }, // 0x000040A8
	 { 1878, -70, 1952, 0, 476, 2048, 134, 119, 89, 255 }, // 0x000040B8
};

Vtx_t _ganontika_room_6_vertices_000040C8[4] = 
{
	 { 1826, -50, 1982, 0, 256, 1280, 134, 119, 89, 255 }, // 0x000040C8
	 { 1826, -70, 1982, 0, 512, 1536, 189, 178, 157, 255 }, // 0x000040D8
	 { 1878, -70, 1952, 0, 1280, 768, 134, 119, 89, 255 }, // 0x000040E8
	 { 1878, -50, 1952, 0, 1024, 512, 177, 164, 138, 255 }, // 0x000040F8
};

Vtx_t _ganontika_room_6_vertices_00004108[4] = 
{
	 { 1785, -70, 1971, 0, 1756, 2048, 189, 178, 157, 255 }, // 0x00004108
	 { 1785, -410, 1971, 0, 1756, -2304, 5, 5, 5, 255 }, // 0x00004118
	 { 1826, -410, 1982, 0, 1231, -2304, 5, 5, 5, 255 }, // 0x00004128
	 { 1826, -70, 1982, 0, 1231, 2048, 115, 102, 78, 255 }, // 0x00004138
};

Vtx_t _ganontika_room_6_vertices_00004148[4] = 
{
	 { 1785, -50, 1971, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00004148
	 { 1785, -70, 1971, 0, 256, 1280, 189, 178, 157, 255 }, // 0x00004158
	 { 1826, -70, 1982, 0, 799, 737, 115, 102, 78, 255 }, // 0x00004168
	 { 1826, -50, 1982, 0, 543, 481, 134, 119, 89, 255 }, // 0x00004178
};

Vtx_t _ganontika_room_6_vertices_00004188[4] = 
{
	 { 1755, -70, 1920, 0, 2511, 2048, 158, 142, 111, 255 }, // 0x00004188
	 { 1755, -410, 1920, 0, 2511, -2304, 5, 5, 5, 255 }, // 0x00004198
	 { 1785, -410, 1971, 0, 1756, -2304, 5, 5, 5, 255 }, // 0x000041A8
	 { 1785, -70, 1971, 0, 1756, 2048, 115, 102, 78, 255 }, // 0x000041B8
};

Vtx_t _ganontika_room_6_vertices_000041C8[4] = 
{
	 { 1755, -50, 1920, 0, 0, 1024, 134, 119, 89, 255 }, // 0x000041C8
	 { 1755, -70, 1920, 0, 256, 1280, 158, 142, 111, 255 }, // 0x000041D8
	 { 1785, -70, 1971, 0, 1024, 512, 115, 102, 78, 255 }, // 0x000041E8
	 { 1785, -50, 1971, 0, 768, 256, 134, 119, 89, 255 }, // 0x000041F8
};

Vtx_t _ganontika_room_6_vertices_00004208[4] = 
{
	 { 1766, -70, 1879, 0, 3036, 2048, 158, 142, 111, 255 }, // 0x00004208
	 { 1766, -410, 1879, 0, 3036, -2304, 5, 5, 5, 255 }, // 0x00004218
	 { 1755, -410, 1920, 0, 2511, -2304, 5, 5, 5, 255 }, // 0x00004228
	 { 1755, -70, 1920, 0, 2511, 2048, 115, 102, 78, 255 }, // 0x00004238
};

Vtx_t _ganontika_room_6_vertices_00004248[4] = 
{
	 { 1766, -50, 1879, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00004248
	 { 1766, -70, 1879, 0, 256, 1280, 158, 142, 111, 255 }, // 0x00004258
	 { 1755, -70, 1920, 0, 799, 737, 115, 102, 78, 255 }, // 0x00004268
	 { 1755, -50, 1920, 0, 543, 481, 134, 119, 89, 255 }, // 0x00004278
};

Vtx_t _ganontika_room_6_vertices_00004288[8] = 
{
	 { 1844, -410, 1834, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004288
	 { 1904, -410, 1937, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004298
	 { 1844, -50, 1834, 0, 0, 0, 0, 0, 0, 0 }, // 0x000042A8
	 { 1904, -50, 1937, 0, 0, 0, 0, 0, 0, 0 }, // 0x000042B8
	 { 1740, -410, 1894, 0, 0, 0, 0, 0, 0, 0 }, // 0x000042C8
	 { 1800, -410, 1997, 0, 0, 0, 0, 0, 0, 0 }, // 0x000042D8
	 { 1740, -50, 1894, 0, 0, 0, 0, 0, 0, 0 }, // 0x000042E8
	 { 1800, -50, 1997, 0, 0, 0, 0, 0, 0, 0 }, // 0x000042F8
};

Gfx _ganontika_room_6_dlist_00004308[] =
{
	gsDPPipeSync(), // 0x00004308
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004310
	gsSPVertex(_ganontika_room_6_vertices_00004288, 8, 0), // 0x00004318
	gsSPCullDisplayList(0, 7), // 0x00004320
	gsDPPipeSync(), // 0x00004328
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004330
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004338
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004340
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00004348
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004350
	gsDPLoadSync(), // 0x00004358
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004360
	gsDPPipeSync(), // 0x00004368
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004370
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004378
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004380
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004388
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004390
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004398
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000043A0
	gsSPVertex(_ganontika_room_6_vertices_00003E08, 8, 0), // 0x000043A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000043B0
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x000043B8
	gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0), // 0x000043C0
	gsDPPipeSync(), // 0x000043C8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000043D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x000043D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000043E0
	gsDPLoadSync(), // 0x000043E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000043F0
	gsDPPipeSync(), // 0x000043F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004400
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004408
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00004410
	gsDPTileSync(), // 0x00004418
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004420
	gsDPLoadSync(), // 0x00004428
	gsDPLoadTLUTCmd(7, 255), // 0x00004430
	gsDPPipeSync(), // 0x00004438
	gsSPVertex(_ganontika_room_6_vertices_00003E88, 4, 0), // 0x00004440
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004448
	gsDPPipeSync(), // 0x00004450
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004458
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00004460
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004468
	gsDPLoadSync(), // 0x00004470
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004478
	gsDPPipeSync(), // 0x00004480
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004488
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004490
	gsSPVertex(_ganontika_room_6_vertices_00003EC8, 4, 0), // 0x00004498
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000044A0
	gsDPPipeSync(), // 0x000044A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000044B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x000044B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000044C0
	gsDPLoadSync(), // 0x000044C8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000044D0
	gsDPPipeSync(), // 0x000044D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000044E0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000044E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000044F0
	gsDPTileSync(), // 0x000044F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004500
	gsDPLoadSync(), // 0x00004508
	gsDPLoadTLUTCmd(7, 255), // 0x00004510
	gsDPPipeSync(), // 0x00004518
	gsSPVertex(_ganontika_room_6_vertices_00003F08, 4, 0), // 0x00004520
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004528
	gsDPPipeSync(), // 0x00004530
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004538
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00004540
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004548
	gsDPLoadSync(), // 0x00004550
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004558
	gsDPPipeSync(), // 0x00004560
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004568
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004570
	gsSPVertex(_ganontika_room_6_vertices_00003F48, 4, 0), // 0x00004578
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004580
	gsDPPipeSync(), // 0x00004588
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004590
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00004598
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000045A0
	gsDPLoadSync(), // 0x000045A8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000045B0
	gsDPPipeSync(), // 0x000045B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000045C0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000045C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000045D0
	gsDPTileSync(), // 0x000045D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000045E0
	gsDPLoadSync(), // 0x000045E8
	gsDPLoadTLUTCmd(7, 255), // 0x000045F0
	gsDPPipeSync(), // 0x000045F8
	gsSPVertex(_ganontika_room_6_vertices_00003F88, 4, 0), // 0x00004600
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004608
	gsDPPipeSync(), // 0x00004610
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004618
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00004620
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004628
	gsDPLoadSync(), // 0x00004630
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004638
	gsDPPipeSync(), // 0x00004640
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004648
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004650
	gsSPVertex(_ganontika_room_6_vertices_00003FC8, 4, 0), // 0x00004658
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004660
	gsDPPipeSync(), // 0x00004668
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004670
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00004678
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004680
	gsDPLoadSync(), // 0x00004688
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004690
	gsDPPipeSync(), // 0x00004698
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000046A0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000046A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000046B0
	gsDPTileSync(), // 0x000046B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000046C0
	gsDPLoadSync(), // 0x000046C8
	gsDPLoadTLUTCmd(7, 255), // 0x000046D0
	gsDPPipeSync(), // 0x000046D8
	gsSPVertex(_ganontika_room_6_vertices_00004008, 4, 0), // 0x000046E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000046E8
	gsDPPipeSync(), // 0x000046F0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000046F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00004700
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004708
	gsDPLoadSync(), // 0x00004710
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004718
	gsDPPipeSync(), // 0x00004720
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004728
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004730
	gsSPVertex(_ganontika_room_6_vertices_00004048, 4, 0), // 0x00004738
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004740
	gsDPPipeSync(), // 0x00004748
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004750
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00004758
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004760
	gsDPLoadSync(), // 0x00004768
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004770
	gsDPPipeSync(), // 0x00004778
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004780
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004788
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00004790
	gsDPTileSync(), // 0x00004798
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000047A0
	gsDPLoadSync(), // 0x000047A8
	gsDPLoadTLUTCmd(7, 255), // 0x000047B0
	gsDPPipeSync(), // 0x000047B8
	gsSPVertex(_ganontika_room_6_vertices_00004088, 4, 0), // 0x000047C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000047C8
	gsDPPipeSync(), // 0x000047D0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000047D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x000047E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000047E8
	gsDPLoadSync(), // 0x000047F0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000047F8
	gsDPPipeSync(), // 0x00004800
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004808
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004810
	gsSPVertex(_ganontika_room_6_vertices_000040C8, 4, 0), // 0x00004818
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004820
	gsDPPipeSync(), // 0x00004828
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004830
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00004838
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004840
	gsDPLoadSync(), // 0x00004848
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004850
	gsDPPipeSync(), // 0x00004858
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004860
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004868
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00004870
	gsDPTileSync(), // 0x00004878
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004880
	gsDPLoadSync(), // 0x00004888
	gsDPLoadTLUTCmd(7, 255), // 0x00004890
	gsDPPipeSync(), // 0x00004898
	gsSPVertex(_ganontika_room_6_vertices_00004108, 4, 0), // 0x000048A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000048A8
	gsDPPipeSync(), // 0x000048B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000048B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x000048C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000048C8
	gsDPLoadSync(), // 0x000048D0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000048D8
	gsDPPipeSync(), // 0x000048E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000048E8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000048F0
	gsSPVertex(_ganontika_room_6_vertices_00004148, 4, 0), // 0x000048F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004900
	gsDPPipeSync(), // 0x00004908
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004910
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00004918
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004920
	gsDPLoadSync(), // 0x00004928
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004930
	gsDPPipeSync(), // 0x00004938
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004940
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004948
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00004950
	gsDPTileSync(), // 0x00004958
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004960
	gsDPLoadSync(), // 0x00004968
	gsDPLoadTLUTCmd(7, 255), // 0x00004970
	gsDPPipeSync(), // 0x00004978
	gsSPVertex(_ganontika_room_6_vertices_00004188, 4, 0), // 0x00004980
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004988
	gsDPPipeSync(), // 0x00004990
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004998
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x000049A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000049A8
	gsDPLoadSync(), // 0x000049B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000049B8
	gsDPPipeSync(), // 0x000049C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000049C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000049D0
	gsSPVertex(_ganontika_room_6_vertices_000041C8, 4, 0), // 0x000049D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000049E0
	gsDPPipeSync(), // 0x000049E8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000049F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x000049F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004A00
	gsDPLoadSync(), // 0x00004A08
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004A10
	gsDPPipeSync(), // 0x00004A18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004A20
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004A28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00004A30
	gsDPTileSync(), // 0x00004A38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004A40
	gsDPLoadSync(), // 0x00004A48
	gsDPLoadTLUTCmd(7, 255), // 0x00004A50
	gsDPPipeSync(), // 0x00004A58
	gsSPVertex(_ganontika_room_6_vertices_00004208, 4, 0), // 0x00004A60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004A68
	gsDPPipeSync(), // 0x00004A70
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004A78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00004A80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004A88
	gsDPLoadSync(), // 0x00004A90
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004A98
	gsDPPipeSync(), // 0x00004AA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004AA8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004AB0
	gsSPVertex(_ganontika_room_6_vertices_00004248, 4, 0), // 0x00004AB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004AC0
	gsSPEndDisplayList(), // 0x00004AC8
};

Vtx_t _ganontika_room_6_vertices_00004AD0[6] = 
{
	 { 1598, 30, 1987, 0, 122, -738, 189, 178, 157, 255 }, // 0x00004AD0
	 { 1587, 30, 2028, 0, 230, -1064, 189, 178, 157, 255 }, // 0x00004AE0
	 { 1617, 30, 2080, 0, 13, -1498, 115, 102, 78, 255 }, // 0x00004AF0
	 { 1721, 30, 2020, 0, -856, -1064, 115, 102, 78, 255 }, // 0x00004B00
	 { 1691, 30, 1968, 0, -639, -629, 189, 178, 157, 255 }, // 0x00004B10
	 { 1650, 30, 1957, 0, -313, -521, 189, 178, 157, 255 }, // 0x00004B20
};

Vtx_t _ganontika_room_6_vertices_00004B30[4] = 
{
	 { 1650, 10, 1957, 0, 3791, 2048, 158, 142, 111, 255 }, // 0x00004B30
	 { 1650, -410, 1957, 0, 3791, -3328, 5, 5, 5, 255 }, // 0x00004B40
	 { 1598, -410, 1987, 0, 3036, -3328, 5, 5, 5, 255 }, // 0x00004B50
	 { 1598, 10, 1987, 0, 3036, 2048, 158, 142, 111, 255 }, // 0x00004B60
};

Vtx_t _ganontika_room_6_vertices_00004B70[4] = 
{
	 { 1650, 30, 1957, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00004B70
	 { 1650, 10, 1957, 0, 256, 1280, 158, 142, 111, 255 }, // 0x00004B80
	 { 1598, 10, 1987, 0, 1024, 512, 158, 142, 111, 255 }, // 0x00004B90
	 { 1598, 30, 1987, 0, 768, 256, 134, 119, 89, 255 }, // 0x00004BA0
};

Vtx_t _ganontika_room_6_vertices_00004BB0[4] = 
{
	 { 1691, 10, 1968, 0, 4316, 2048, 147, 131, 97, 255 }, // 0x00004BB0
	 { 1691, -410, 1968, 0, 4316, -3328, 5, 5, 5, 255 }, // 0x00004BC0
	 { 1650, -410, 1957, 0, 3791, -3328, 5, 5, 5, 255 }, // 0x00004BD0
	 { 1650, 10, 1957, 0, 3791, 2048, 134, 119, 89, 255 }, // 0x00004BE0
};

Vtx_t _ganontika_room_6_vertices_00004BF0[4] = 
{
	 { 1691, 30, 1968, 0, 225, 1311, 134, 119, 89, 255 }, // 0x00004BF0
	 { 1691, 10, 1968, 0, 481, 1567, 147, 131, 97, 255 }, // 0x00004C00
	 { 1650, 10, 1957, 0, 1024, 1024, 134, 119, 89, 255 }, // 0x00004C10
	 { 1650, 30, 1957, 0, 768, 768, 134, 119, 89, 255 }, // 0x00004C20
};

Vtx_t _ganontika_room_6_vertices_00004C30[4] = 
{
	 { 1721, 10, 2020, 0, 5071, 2048, 100, 89, 67, 255 }, // 0x00004C30
	 { 1721, -410, 2020, 0, 5071, -3328, 5, 5, 5, 255 }, // 0x00004C40
	 { 1691, -410, 1968, 0, 4316, -3328, 5, 5, 5, 255 }, // 0x00004C50
	 { 1691, 10, 1968, 0, 4316, 2048, 115, 102, 78, 255 }, // 0x00004C60
};

Vtx_t _ganontika_room_6_vertices_00004C70[4] = 
{
	 { 1721, 30, 2020, 0, 0, 1536, 115, 102, 78, 255 }, // 0x00004C70
	 { 1721, 10, 2020, 0, 256, 1792, 100, 89, 67, 255 }, // 0x00004C80
	 { 1691, 10, 1968, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00004C90
	 { 1691, 30, 1968, 0, 768, 768, 134, 119, 89, 255 }, // 0x00004CA0
};

Vtx_t _ganontika_room_6_vertices_00004CB0[4] = 
{
	 { 1587, 10, 2028, 0, 2511, 2048, 169, 154, 126, 255 }, // 0x00004CB0
	 { 1587, -410, 2028, 0, 2511, -3328, 5, 5, 5, 255 }, // 0x00004CC0
	 { 1617, -410, 2080, 0, 1756, -3328, 5, 5, 5, 255 }, // 0x00004CD0
	 { 1617, 10, 2080, 0, 1756, 2048, 100, 89, 67, 255 }, // 0x00004CE0
};

Vtx_t _ganontika_room_6_vertices_00004CF0[4] = 
{
	 { 1587, 30, 2028, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00004CF0
	 { 1587, 10, 2028, 0, 256, 1280, 169, 154, 126, 255 }, // 0x00004D00
	 { 1617, 10, 2080, 0, 1024, 512, 100, 89, 67, 255 }, // 0x00004D10
	 { 1617, 30, 2080, 0, 768, 256, 115, 102, 78, 255 }, // 0x00004D20
};

Vtx_t _ganontika_room_6_vertices_00004D30[4] = 
{
	 { 1598, 10, 1987, 0, 3036, 2048, 169, 154, 126, 255 }, // 0x00004D30
	 { 1598, -410, 1987, 0, 3036, -3328, 5, 5, 5, 255 }, // 0x00004D40
	 { 1587, -410, 2028, 0, 2511, -3328, 5, 5, 5, 255 }, // 0x00004D50
	 { 1587, 10, 2028, 0, 2511, 2048, 158, 142, 111, 255 }, // 0x00004D60
};

Vtx_t _ganontika_room_6_vertices_00004D70[4] = 
{
	 { 1598, 30, 1987, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00004D70
	 { 1598, 10, 1987, 0, 256, 1280, 169, 154, 126, 255 }, // 0x00004D80
	 { 1587, 10, 2028, 0, 799, 737, 158, 142, 111, 255 }, // 0x00004D90
	 { 1587, 30, 2028, 0, 543, 481, 134, 119, 89, 255 }, // 0x00004DA0
};

Vtx_t _ganontika_room_6_vertices_00004DB0[8] = 
{
	 { 1676, -410, 1942, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004DB0
	 { 1721, -410, 2020, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004DC0
	 { 1676, 30, 1942, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004DD0
	 { 1721, 30, 2020, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004DE0
	 { 1572, -410, 2002, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004DF0
	 { 1617, -410, 2080, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004E00
	 { 1572, 30, 2002, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004E10
	 { 1617, 30, 2080, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004E20
};

Gfx _ganontika_room_6_dlist_00004E30[] =
{
	gsDPPipeSync(), // 0x00004E30
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004E38
	gsSPVertex(_ganontika_room_6_vertices_00004DB0, 8, 0), // 0x00004E40
	gsSPCullDisplayList(0, 7), // 0x00004E48
	gsDPPipeSync(), // 0x00004E50
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004E58
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004E60
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004E68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00004E70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004E78
	gsDPLoadSync(), // 0x00004E80
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004E88
	gsDPPipeSync(), // 0x00004E90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004E98
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004EA0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004EA8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004EB0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004EB8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004EC0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004EC8
	gsSPVertex(_ganontika_room_6_vertices_00004AD0, 6, 0), // 0x00004ED0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004ED8
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00004EE0
	gsDPPipeSync(), // 0x00004EE8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004EF0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00004EF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004F00
	gsDPLoadSync(), // 0x00004F08
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004F10
	gsDPPipeSync(), // 0x00004F18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004F20
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004F28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00004F30
	gsDPTileSync(), // 0x00004F38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004F40
	gsDPLoadSync(), // 0x00004F48
	gsDPLoadTLUTCmd(7, 255), // 0x00004F50
	gsDPPipeSync(), // 0x00004F58
	gsSPVertex(_ganontika_room_6_vertices_00004B30, 4, 0), // 0x00004F60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004F68
	gsDPPipeSync(), // 0x00004F70
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004F78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00004F80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004F88
	gsDPLoadSync(), // 0x00004F90
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004F98
	gsDPPipeSync(), // 0x00004FA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004FA8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004FB0
	gsSPVertex(_ganontika_room_6_vertices_00004B70, 4, 0), // 0x00004FB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004FC0
	gsDPPipeSync(), // 0x00004FC8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004FD0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00004FD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004FE0
	gsDPLoadSync(), // 0x00004FE8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004FF0
	gsDPPipeSync(), // 0x00004FF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005000
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005008
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00005010
	gsDPTileSync(), // 0x00005018
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005020
	gsDPLoadSync(), // 0x00005028
	gsDPLoadTLUTCmd(7, 255), // 0x00005030
	gsDPPipeSync(), // 0x00005038
	gsSPVertex(_ganontika_room_6_vertices_00004BB0, 4, 0), // 0x00005040
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005048
	gsDPPipeSync(), // 0x00005050
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005058
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00005060
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005068
	gsDPLoadSync(), // 0x00005070
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005078
	gsDPPipeSync(), // 0x00005080
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005088
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005090
	gsSPVertex(_ganontika_room_6_vertices_00004BF0, 4, 0), // 0x00005098
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000050A0
	gsDPPipeSync(), // 0x000050A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000050B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x000050B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000050C0
	gsDPLoadSync(), // 0x000050C8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000050D0
	gsDPPipeSync(), // 0x000050D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000050E0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000050E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000050F0
	gsDPTileSync(), // 0x000050F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005100
	gsDPLoadSync(), // 0x00005108
	gsDPLoadTLUTCmd(7, 255), // 0x00005110
	gsDPPipeSync(), // 0x00005118
	gsSPVertex(_ganontika_room_6_vertices_00004C30, 4, 0), // 0x00005120
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005128
	gsDPPipeSync(), // 0x00005130
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005138
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00005140
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005148
	gsDPLoadSync(), // 0x00005150
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005158
	gsDPPipeSync(), // 0x00005160
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005168
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005170
	gsSPVertex(_ganontika_room_6_vertices_00004C70, 4, 0), // 0x00005178
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005180
	gsDPPipeSync(), // 0x00005188
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005190
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00005198
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000051A0
	gsDPLoadSync(), // 0x000051A8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000051B0
	gsDPPipeSync(), // 0x000051B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000051C0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000051C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000051D0
	gsDPTileSync(), // 0x000051D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000051E0
	gsDPLoadSync(), // 0x000051E8
	gsDPLoadTLUTCmd(7, 255), // 0x000051F0
	gsDPPipeSync(), // 0x000051F8
	gsSPVertex(_ganontika_room_6_vertices_00004CB0, 4, 0), // 0x00005200
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005208
	gsDPPipeSync(), // 0x00005210
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005218
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00005220
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005228
	gsDPLoadSync(), // 0x00005230
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005238
	gsDPPipeSync(), // 0x00005240
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005248
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005250
	gsSPVertex(_ganontika_room_6_vertices_00004CF0, 4, 0), // 0x00005258
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005260
	gsDPPipeSync(), // 0x00005268
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005270
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00005278
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005280
	gsDPLoadSync(), // 0x00005288
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005290
	gsDPPipeSync(), // 0x00005298
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000052A0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000052A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000052B0
	gsDPTileSync(), // 0x000052B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000052C0
	gsDPLoadSync(), // 0x000052C8
	gsDPLoadTLUTCmd(7, 255), // 0x000052D0
	gsDPPipeSync(), // 0x000052D8
	gsSPVertex(_ganontika_room_6_vertices_00004D30, 4, 0), // 0x000052E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000052E8
	gsDPPipeSync(), // 0x000052F0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000052F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00005300
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005308
	gsDPLoadSync(), // 0x00005310
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005318
	gsDPPipeSync(), // 0x00005320
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005328
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005330
	gsSPVertex(_ganontika_room_6_vertices_00004D70, 4, 0), // 0x00005338
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005340
	gsSPEndDisplayList(), // 0x00005348
};

Vtx_t _ganontika_room_6_vertices_00005350[8] = 
{
	 { 1509, 118, 2203, 0, 1119, 1119, 177, 164, 138, 255 }, // 0x00005350
	 { 1503, 118, 2224, 0, 998, 755, 177, 164, 138, 255 }, // 0x00005360
	 { 1518, 118, 2250, 0, 512, 512, 177, 164, 138, 255 }, // 0x00005370
	 { 1539, 118, 2255, 0, 148, 633, 177, 164, 138, 255 }, // 0x00005380
	 { 1565, 118, 2240, 0, -95, 1119, 189, 178, 157, 255 }, // 0x00005390
	 { 1570, 118, 2220, 0, 26, 1483, 189, 178, 157, 255 }, // 0x000053A0
	 { 1555, 118, 2194, 0, 512, 1726, 189, 178, 157, 255 }, // 0x000053B0
	 { 1535, 118, 2188, 0, 876, 1605, 189, 178, 157, 255 }, // 0x000053C0
};

Vtx_t _ganontika_room_6_vertices_000053D0[4] = 
{
	 { 1555, 98, 2194, 0, 3452, 2048, 158, 142, 111, 255 }, // 0x000053D0
	 { 1555, -410, 2194, 0, 3452, -4455, 5, 5, 5, 255 }, // 0x000053E0
	 { 1535, -410, 2188, 0, 3033, -4455, 5, 5, 5, 255 }, // 0x000053F0
	 { 1535, 98, 2188, 0, 3033, 2048, 158, 142, 111, 255 }, // 0x00005400
};

Vtx_t _ganontika_room_6_vertices_00005410[4] = 
{
	 { 1555, 118, 2194, 0, 496, 1040, 134, 119, 89, 255 }, // 0x00005410
	 { 1555, 98, 2194, 0, 752, 1296, 158, 142, 111, 255 }, // 0x00005420
	 { 1535, 98, 2188, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x00005430
	 { 1535, 118, 2188, 0, 768, 768, 134, 119, 89, 255 }, // 0x00005440
};

Vtx_t _ganontika_room_6_vertices_00005450[4] = 
{
	 { 1570, 98, 2220, 0, 4057, 2048, 177, 164, 138, 255 }, // 0x00005450
	 { 1570, -410, 2220, 0, 4057, -4455, 5, 5, 5, 255 }, // 0x00005460
	 { 1555, -410, 2194, 0, 3452, -4455, 5, 5, 5, 255 }, // 0x00005470
	 { 1555, 98, 2194, 0, 3452, 2048, 115, 102, 78, 255 }, // 0x00005480
};

Vtx_t _ganontika_room_6_vertices_00005490[4] = 
{
	 { 1570, 118, 2220, 0, 384, 1152, 134, 119, 89, 255 }, // 0x00005490
	 { 1570, 98, 2220, 0, 640, 1408, 177, 164, 138, 255 }, // 0x000054A0
	 { 1555, 98, 2194, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x000054B0
	 { 1555, 118, 2194, 0, 768, 768, 134, 119, 89, 255 }, // 0x000054C0
};

Vtx_t _ganontika_room_6_vertices_000054D0[4] = 
{
	 { 1565, 98, 2240, 0, 4476, 2048, 100, 89, 67, 255 }, // 0x000054D0
	 { 1565, -410, 2240, 0, 4476, -4455, 5, 5, 5, 255 }, // 0x000054E0
	 { 1570, -410, 2220, 0, 4057, -4455, 5, 5, 5, 255 }, // 0x000054F0
	 { 1570, 98, 2220, 0, 4057, 2048, 147, 131, 97, 255 }, // 0x00005500
};

Vtx_t _ganontika_room_6_vertices_00005510[4] = 
{
	 { 1565, 118, 2240, 0, 496, 1040, 134, 119, 89, 255 }, // 0x00005510
	 { 1565, 98, 2240, 0, 752, 1296, 100, 89, 67, 255 }, // 0x00005520
	 { 1570, 98, 2220, 0, 1024, 1024, 147, 131, 97, 255 }, // 0x00005530
	 { 1570, 118, 2220, 0, 768, 768, 134, 119, 89, 255 }, // 0x00005540
};

Vtx_t _ganontika_room_6_vertices_00005550[4] = 
{
	 { 1539, 98, 2255, 0, 985, 2048, 100, 89, 67, 255 }, // 0x00005550
	 { 1539, -410, 2255, 0, 985, -4455, 5, 5, 5, 255 }, // 0x00005560
	 { 1565, -410, 2240, 0, 380, -4455, 5, 5, 5, 255 }, // 0x00005570
	 { 1565, 98, 2240, 0, 380, 2048, 100, 89, 67, 255 }, // 0x00005580
};

Vtx_t _ganontika_room_6_vertices_00005590[4] = 
{
	 { 1539, 118, 2255, 0, 384, 1152, 134, 119, 89, 255 }, // 0x00005590
	 { 1539, 98, 2255, 0, 640, 1408, 100, 89, 67, 255 }, // 0x000055A0
	 { 1565, 98, 2240, 0, 1024, 1024, 100, 89, 67, 255 }, // 0x000055B0
	 { 1565, 118, 2240, 0, 768, 768, 134, 119, 89, 255 }, // 0x000055C0
};

Vtx_t _ganontika_room_6_vertices_000055D0[4] = 
{
	 { 1518, 98, 2250, 0, 1404, 2048, 100, 89, 67, 255 }, // 0x000055D0
	 { 1518, -410, 2250, 0, 1404, -4455, 5, 5, 5, 255 }, // 0x000055E0
	 { 1539, -410, 2255, 0, 985, -4455, 5, 5, 5, 255 }, // 0x000055F0
	 { 1539, 98, 2255, 0, 985, 2048, 100, 89, 67, 255 }, // 0x00005600
};

Vtx_t _ganontika_room_6_vertices_00005610[4] = 
{
	 { 1518, 118, 2250, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00005610
	 { 1518, 98, 2250, 0, 256, 1280, 100, 89, 67, 255 }, // 0x00005620
	 { 1539, 98, 2255, 0, 528, 1008, 100, 89, 67, 255 }, // 0x00005630
	 { 1539, 118, 2255, 0, 272, 752, 134, 119, 89, 255 }, // 0x00005640
};

Vtx_t _ganontika_room_6_vertices_00005650[4] = 
{
	 { 1503, 98, 2224, 0, 2009, 2048, 134, 119, 89, 255 }, // 0x00005650
	 { 1503, -410, 2224, 0, 2009, -4455, 5, 5, 5, 255 }, // 0x00005660
	 { 1518, -410, 2250, 0, 1404, -4455, 5, 5, 5, 255 }, // 0x00005670
	 { 1518, 98, 2250, 0, 1404, 2048, 100, 89, 67, 255 }, // 0x00005680
};

Vtx_t _ganontika_room_6_vertices_00005690[4] = 
{
	 { 1503, 118, 2224, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00005690
	 { 1503, 98, 2224, 0, 256, 1280, 134, 119, 89, 255 }, // 0x000056A0
	 { 1518, 98, 2250, 0, 640, 896, 100, 89, 67, 255 }, // 0x000056B0
	 { 1518, 118, 2250, 0, 384, 640, 134, 119, 89, 255 }, // 0x000056C0
};

Vtx_t _ganontika_room_6_vertices_000056D0[4] = 
{
	 { 1509, 98, 2203, 0, 2428, 2048, 134, 119, 89, 255 }, // 0x000056D0
	 { 1509, -410, 2203, 0, 2428, -4455, 5, 5, 5, 255 }, // 0x000056E0
	 { 1503, -410, 2224, 0, 2009, -4455, 5, 5, 5, 255 }, // 0x000056F0
	 { 1503, 98, 2224, 0, 2009, 2048, 115, 102, 78, 255 }, // 0x00005700
};

Vtx_t _ganontika_room_6_vertices_00005710[4] = 
{
	 { 1509, 118, 2203, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00005710
	 { 1509, 98, 2203, 0, 256, 1280, 134, 119, 89, 255 }, // 0x00005720
	 { 1503, 98, 2224, 0, 528, 1008, 115, 102, 78, 255 }, // 0x00005730
	 { 1503, 118, 2224, 0, 272, 752, 134, 119, 89, 255 }, // 0x00005740
};

Vtx_t _ganontika_room_6_vertices_00005750[4] = 
{
	 { 1535, 98, 2188, 0, 3033, 2048, 177, 164, 138, 255 }, // 0x00005750
	 { 1535, -410, 2188, 0, 3033, -4455, 5, 5, 5, 255 }, // 0x00005760
	 { 1509, -410, 2203, 0, 2428, -4455, 5, 5, 5, 255 }, // 0x00005770
	 { 1509, 98, 2203, 0, 2428, 2048, 115, 102, 78, 255 }, // 0x00005780
};

Vtx_t _ganontika_room_6_vertices_00005790[4] = 
{
	 { 1535, 118, 2188, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00005790
	 { 1535, 98, 2188, 0, 256, 1280, 177, 164, 138, 255 }, // 0x000057A0
	 { 1509, 98, 2203, 0, 640, 896, 115, 102, 78, 255 }, // 0x000057B0
	 { 1509, 118, 2203, 0, 384, 640, 134, 119, 89, 255 }, // 0x000057C0
};

Vtx_t _ganontika_room_6_vertices_000057D0[8] = 
{
	 { 1548, -410, 2181, 0, 0, 0, 0, 0, 0, 0 }, // 0x000057D0
	 { 1578, -410, 2233, 0, 0, 0, 0, 0, 0, 0 }, // 0x000057E0
	 { 1548, 118, 2181, 0, 0, 0, 0, 0, 0, 0 }, // 0x000057F0
	 { 1578, 118, 2233, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005800
	 { 1496, -410, 2211, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005810
	 { 1526, -410, 2263, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005820
	 { 1496, 118, 2211, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005830
	 { 1526, 118, 2263, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005840
};

Gfx _ganontika_room_6_dlist_00005850[] =
{
	gsDPPipeSync(), // 0x00005850
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005858
	gsSPVertex(_ganontika_room_6_vertices_000057D0, 8, 0), // 0x00005860
	gsSPCullDisplayList(0, 7), // 0x00005868
	gsDPPipeSync(), // 0x00005870
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005878
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005880
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005888
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00005890
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005898
	gsDPLoadSync(), // 0x000058A0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000058A8
	gsDPPipeSync(), // 0x000058B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000058B8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000058C0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000058C8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000058D0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000058D8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000058E0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000058E8
	gsSPVertex(_ganontika_room_6_vertices_00005350, 8, 0), // 0x000058F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000058F8
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00005900
	gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0), // 0x00005908
	gsDPPipeSync(), // 0x00005910
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005918
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00005920
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005928
	gsDPLoadSync(), // 0x00005930
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005938
	gsDPPipeSync(), // 0x00005940
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005948
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005950
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00005958
	gsDPTileSync(), // 0x00005960
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005968
	gsDPLoadSync(), // 0x00005970
	gsDPLoadTLUTCmd(7, 255), // 0x00005978
	gsDPPipeSync(), // 0x00005980
	gsSPVertex(_ganontika_room_6_vertices_000053D0, 4, 0), // 0x00005988
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005990
	gsDPPipeSync(), // 0x00005998
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000059A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x000059A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000059B0
	gsDPLoadSync(), // 0x000059B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000059C0
	gsDPPipeSync(), // 0x000059C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000059D0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000059D8
	gsSPVertex(_ganontika_room_6_vertices_00005410, 4, 0), // 0x000059E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000059E8
	gsDPPipeSync(), // 0x000059F0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000059F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00005A00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005A08
	gsDPLoadSync(), // 0x00005A10
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005A18
	gsDPPipeSync(), // 0x00005A20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005A28
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005A30
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00005A38
	gsDPTileSync(), // 0x00005A40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005A48
	gsDPLoadSync(), // 0x00005A50
	gsDPLoadTLUTCmd(7, 255), // 0x00005A58
	gsDPPipeSync(), // 0x00005A60
	gsSPVertex(_ganontika_room_6_vertices_00005450, 4, 0), // 0x00005A68
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005A70
	gsDPPipeSync(), // 0x00005A78
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005A80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00005A88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005A90
	gsDPLoadSync(), // 0x00005A98
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005AA0
	gsDPPipeSync(), // 0x00005AA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005AB0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005AB8
	gsSPVertex(_ganontika_room_6_vertices_00005490, 4, 0), // 0x00005AC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005AC8
	gsDPPipeSync(), // 0x00005AD0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005AD8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00005AE0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005AE8
	gsDPLoadSync(), // 0x00005AF0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005AF8
	gsDPPipeSync(), // 0x00005B00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005B08
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005B10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00005B18
	gsDPTileSync(), // 0x00005B20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005B28
	gsDPLoadSync(), // 0x00005B30
	gsDPLoadTLUTCmd(7, 255), // 0x00005B38
	gsDPPipeSync(), // 0x00005B40
	gsSPVertex(_ganontika_room_6_vertices_000054D0, 4, 0), // 0x00005B48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005B50
	gsDPPipeSync(), // 0x00005B58
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005B60
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00005B68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005B70
	gsDPLoadSync(), // 0x00005B78
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005B80
	gsDPPipeSync(), // 0x00005B88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005B90
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005B98
	gsSPVertex(_ganontika_room_6_vertices_00005510, 4, 0), // 0x00005BA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005BA8
	gsDPPipeSync(), // 0x00005BB0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005BB8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00005BC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005BC8
	gsDPLoadSync(), // 0x00005BD0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005BD8
	gsDPPipeSync(), // 0x00005BE0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005BE8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005BF0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00005BF8
	gsDPTileSync(), // 0x00005C00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005C08
	gsDPLoadSync(), // 0x00005C10
	gsDPLoadTLUTCmd(7, 255), // 0x00005C18
	gsDPPipeSync(), // 0x00005C20
	gsSPVertex(_ganontika_room_6_vertices_00005550, 4, 0), // 0x00005C28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005C30
	gsDPPipeSync(), // 0x00005C38
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005C40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00005C48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005C50
	gsDPLoadSync(), // 0x00005C58
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005C60
	gsDPPipeSync(), // 0x00005C68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005C70
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005C78
	gsSPVertex(_ganontika_room_6_vertices_00005590, 4, 0), // 0x00005C80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005C88
	gsDPPipeSync(), // 0x00005C90
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005C98
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00005CA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005CA8
	gsDPLoadSync(), // 0x00005CB0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005CB8
	gsDPPipeSync(), // 0x00005CC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005CC8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005CD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00005CD8
	gsDPTileSync(), // 0x00005CE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005CE8
	gsDPLoadSync(), // 0x00005CF0
	gsDPLoadTLUTCmd(7, 255), // 0x00005CF8
	gsDPPipeSync(), // 0x00005D00
	gsSPVertex(_ganontika_room_6_vertices_000055D0, 4, 0), // 0x00005D08
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005D10
	gsDPPipeSync(), // 0x00005D18
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005D20
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00005D28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005D30
	gsDPLoadSync(), // 0x00005D38
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005D40
	gsDPPipeSync(), // 0x00005D48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005D50
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005D58
	gsSPVertex(_ganontika_room_6_vertices_00005610, 4, 0), // 0x00005D60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005D68
	gsDPPipeSync(), // 0x00005D70
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005D78
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00005D80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005D88
	gsDPLoadSync(), // 0x00005D90
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005D98
	gsDPPipeSync(), // 0x00005DA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005DA8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005DB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00005DB8
	gsDPTileSync(), // 0x00005DC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005DC8
	gsDPLoadSync(), // 0x00005DD0
	gsDPLoadTLUTCmd(7, 255), // 0x00005DD8
	gsDPPipeSync(), // 0x00005DE0
	gsSPVertex(_ganontika_room_6_vertices_00005650, 4, 0), // 0x00005DE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005DF0
	gsDPPipeSync(), // 0x00005DF8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005E00
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00005E08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005E10
	gsDPLoadSync(), // 0x00005E18
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005E20
	gsDPPipeSync(), // 0x00005E28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005E30
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005E38
	gsSPVertex(_ganontika_room_6_vertices_00005690, 4, 0), // 0x00005E40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005E48
	gsDPPipeSync(), // 0x00005E50
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005E58
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00005E60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005E68
	gsDPLoadSync(), // 0x00005E70
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005E78
	gsDPPipeSync(), // 0x00005E80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005E88
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005E90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00005E98
	gsDPTileSync(), // 0x00005EA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005EA8
	gsDPLoadSync(), // 0x00005EB0
	gsDPLoadTLUTCmd(7, 255), // 0x00005EB8
	gsDPPipeSync(), // 0x00005EC0
	gsSPVertex(_ganontika_room_6_vertices_000056D0, 4, 0), // 0x00005EC8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005ED0
	gsDPPipeSync(), // 0x00005ED8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005EE0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00005EE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005EF0
	gsDPLoadSync(), // 0x00005EF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005F00
	gsDPPipeSync(), // 0x00005F08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005F10
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005F18
	gsSPVertex(_ganontika_room_6_vertices_00005710, 4, 0), // 0x00005F20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005F28
	gsDPPipeSync(), // 0x00005F30
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005F38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B900), // 0x00005F40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005F48
	gsDPLoadSync(), // 0x00005F50
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005F58
	gsDPPipeSync(), // 0x00005F60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005F68
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005F70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00005F78
	gsDPTileSync(), // 0x00005F80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005F88
	gsDPLoadSync(), // 0x00005F90
	gsDPLoadTLUTCmd(7, 255), // 0x00005F98
	gsDPPipeSync(), // 0x00005FA0
	gsSPVertex(_ganontika_room_6_vertices_00005750, 4, 0), // 0x00005FA8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005FB0
	gsDPPipeSync(), // 0x00005FB8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005FC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020B80), // 0x00005FC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005FD0
	gsDPLoadSync(), // 0x00005FD8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005FE0
	gsDPPipeSync(), // 0x00005FE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005FF0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005FF8
	gsSPVertex(_ganontika_room_6_vertices_00005790, 4, 0), // 0x00006000
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006008
	gsSPEndDisplayList(), // 0x00006010
};

Vtx_t _ganontika_room_6_vertices_00006018[8] = 
{
	 { 1509, 290, 2373, 0, 0, 0, 69, 62, 48, 255 }, // 0x00006018
	 { 1509, 110, 2373, 0, 0, 3072, 158, 142, 111, 255 }, // 0x00006028
	 { 1209, 110, 1854, 0, 5120, 3072, 177, 164, 138, 255 }, // 0x00006038
	 { 909, -410, 1334, 0, 10240, 11947, 5, 5, 5, 255 }, // 0x00006048
	 { 1509, -410, 2373, 0, 0, 11947, 5, 5, 5, 255 }, // 0x00006058
	 { 909, 110, 1334, 0, 10240, 3072, 158, 142, 111, 255 }, // 0x00006068
	 { 909, 290, 1334, 0, 10240, 0, 115, 102, 78, 255 }, // 0x00006078
	 { 1209, 290, 1854, 0, 5120, 0, 147, 131, 97, 255 }, // 0x00006088
};

Vtx_t _ganontika_room_6_vertices_00006098[5] = 
{
	 { 1509, 350, 2373, 0, 0, 0, 52, 49, 38, 255 }, // 0x00006098
	 { 1509, 290, 2373, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000060A8
	 { 1209, 290, 1854, 0, 5120, 1024, 147, 131, 97, 255 }, // 0x000060B8
	 { 909, 290, 1334, 0, 10240, 1024, 115, 102, 78, 255 }, // 0x000060C8
	 { 909, 350, 1334, 0, 10240, 0, 52, 49, 38, 255 }, // 0x000060D8
};

Vtx_t _ganontika_room_6_vertices_000060E8[8] = 
{
	 { 909, -410, 1334, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060E8
	 { 1509, -410, 2373, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060F8
	 { 909, 350, 1334, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006108
	 { 1509, 350, 2373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006118
	 { 909, -410, 1334, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006128
	 { 1509, -410, 2373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006138
	 { 909, 350, 1334, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006148
	 { 1509, 350, 2373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006158
};

Gfx _ganontika_room_6_dlist_00006168[] =
{
	gsDPPipeSync(), // 0x00006168
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006170
	gsSPVertex(_ganontika_room_6_vertices_000060E8, 8, 0), // 0x00006178
	gsSPCullDisplayList(0, 7), // 0x00006180
	gsDPPipeSync(), // 0x00006188
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006190
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00006198
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000061A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000061A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000061B0
	gsDPLoadSync(), // 0x000061B8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000061C0
	gsDPPipeSync(), // 0x000061C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000061D0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000061D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000061E0
	gsDPTileSync(), // 0x000061E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000061F0
	gsDPLoadSync(), // 0x000061F8
	gsDPLoadTLUTCmd(7, 255), // 0x00006200
	gsDPPipeSync(), // 0x00006208
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006210
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006218
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00006220
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00006228
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006230
	gsSPVertex(_ganontika_room_6_vertices_00006018, 8, 0), // 0x00006238
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0), // 0x00006240
	gsSP2Triangles(2, 1, 4, 0, 5, 6, 2, 0), // 0x00006248
	gsSP2Triangles(3, 5, 2, 0, 6, 7, 2, 0), // 0x00006250
	gsSP1Triangle(7, 0, 2, 0), // 0x00006258
	gsDPPipeSync(), // 0x00006260
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000B500), // 0x00006268
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006270
	gsDPLoadSync(), // 0x00006278
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00006280
	gsDPPipeSync(), // 0x00006288
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006290
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006298
	gsSPVertex(_ganontika_room_6_vertices_00006098, 5, 0), // 0x000062A0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x000062A8
	gsSP1Triangle(4, 0, 2, 0), // 0x000062B0
	gsSPEndDisplayList(), // 0x000062B8
};

Vtx_t _ganontika_room_6_vertices_000062C0[25] = 
{
	 { 1674, 162, 2454, 0, 0, -285, 5, 5, 5, 255 }, // 0x000062C0
	 { 1561, 132, 2300, 0, -736, 1019, 69, 62, 48, 255 }, // 0x000062D0
	 { 1550, 145, 2306, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000062E0
	 { 1546, 163, 2309, 0, 848, 1018, 69, 62, 48, 255 }, // 0x000062F0
	 { 1550, 181, 2306, 0, 1580, 1004, 69, 62, 48, 255 }, // 0x00006300
	 { 1561, 194, 2300, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00006310
	 { 1577, 199, 2291, 0, 1997, 965, 69, 62, 48, 255 }, // 0x00006320
	 { 1592, 194, 2282, 0, 1570, 951, 69, 62, 48, 255 }, // 0x00006330
	 { 1604, 181, 2275, 0, 835, 947, 69, 62, 48, 255 }, // 0x00006340
	 { 1608, 163, 2273, 0, -13, 952, 69, 62, 48, 255 }, // 0x00006350
	 { 1674, 162, 2454, 0, 417, -324, 5, 5, 5, 255 }, // 0x00006360
	 { 1604, 145, 2275, 0, -745, 967, 69, 62, 48, 255 }, // 0x00006370
	 { 1592, 132, 2282, 0, -1166, 986, 69, 62, 48, 255 }, // 0x00006380
	 { 1674, 162, 2454, 0, -373, -314, 5, 5, 5, 255 }, // 0x00006390
	 { 1577, 127, 2291, 0, -1163, 1005, 69, 62, 48, 255 }, // 0x000063A0
	 { 1674, 162, 2454, 0, 290, -507, 5, 5, 5, 255 }, // 0x000063B0
	 { 1592, 132, 2282, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x000063C0
	 { 1596, 110, 2323, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000063D0
	 { 1577, 118, 2291, 0, 210, 112, 100, 89, 67, 255 }, // 0x000063E0
	 { 1596, 124, 2280, 0, 628, 132, 100, 89, 67, 255 }, // 0x000063F0
	 { 1557, 124, 2302, 0, 628, 132, 81, 72, 55, 255 }, // 0x00006400
	 { 1592, 132, 2282, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00006410
	 { 1596, 124, 2280, 0, -64, -57, 100, 89, 67, 255 }, // 0x00006420
	 { 1577, 118, 2291, 0, 576, -57, 100, 89, 67, 255 }, // 0x00006430
	 { 1577, 127, 2291, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00006440
};

Vtx_t _ganontika_room_6_vertices_00006450[8] = 
{
	 { 1608, 163, 2273, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00006450
	 { 1616, 163, 2268, 0, -64, -68, 115, 102, 78, 255 }, // 0x00006460
	 { 1611, 141, 2271, 0, 574, -68, 115, 102, 78, 255 }, // 0x00006470
	 { 1604, 145, 2275, 0, 510, 1024, 147, 131, 97, 255 }, // 0x00006480
	 { 1596, 124, 2280, 0, 576, -70, 100, 89, 67, 255 }, // 0x00006490
	 { 1592, 132, 2282, 0, 512, 1024, 147, 131, 97, 255 }, // 0x000064A0
	 { 1604, 145, 2275, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000064B0
	 { 1611, 141, 2271, 0, -64, -70, 115, 102, 78, 255 }, // 0x000064C0
};

Vtx_t _ganontika_room_6_vertices_000064D0[4] = 
{
	 { 1596, 210, 2293, 0, -168, 1650, 115, 102, 78, 255 }, // 0x000064D0
	 { 1596, 202, 2280, 0, 254, 1889, 158, 142, 111, 255 }, // 0x000064E0
	 { 1586, 205, 2285, 0, 127, 1457, 69, 62, 48, 255 }, // 0x000064F0
	 { 1584, 220, 2288, 0, -84, 1337, 169, 154, 126, 255 }, // 0x00006500
};

Vtx_t _ganontika_room_6_vertices_00006510[4] = 
{
	 { 1586, 205, 2285, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00006510
	 { 1577, 208, 2291, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x00006520
	 { 1578, 221, 2292, 0, 1024, 24, 169, 154, 126, 255 }, // 0x00006530
	 { 1584, 220, 2288, 0, 323, -39, 169, 154, 126, 255 }, // 0x00006540
};

Vtx_t _ganontika_room_6_vertices_00006550[3] = 
{
	 { 1596, 232, 2323, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00006550
	 { 1614, 225, 2300, 0, 41, 721, 69, 62, 48, 255 }, // 0x00006560
	 { 1596, 210, 2293, 0, 411, 176, 115, 102, 78, 255 }, // 0x00006570
};

Vtx_t _ganontika_room_6_vertices_00006580[8] = 
{
	 { 1596, 232, 2323, 0, -1045, 1024, 69, 62, 48, 255 }, // 0x00006580
	 { 1596, 210, 2293, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00006590
	 { 1584, 220, 2288, 0, -42, 1476, 169, 154, 126, 255 }, // 0x000065A0
	 { 1578, 221, 2292, 0, -22, 1697, 169, 154, 126, 255 }, // 0x000065B0
	 { 1596, 232, 2323, 0, -1045, 1929, 69, 62, 48, 255 }, // 0x000065C0
	 { 1621, 226, 2309, 0, -99, 713, 69, 62, 48, 255 }, // 0x000065D0
	 { 1636, 204, 2290, 0, 978, 1544, 115, 102, 78, 255 }, // 0x000065E0
	 { 1614, 225, 2300, 0, -274, 1117, 69, 62, 48, 255 }, // 0x000065F0
};

Vtx_t _ganontika_room_6_vertices_00006600[7] = 
{
	 { 1596, 232, 2323, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00006600
	 { 1621, 226, 2309, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00006610
	 { 1614, 225, 2300, 0, 41, 721, 69, 62, 48, 255 }, // 0x00006620
	 { 1611, 186, 2271, 0, -64, -70, 158, 142, 111, 255 }, // 0x00006630
	 { 1604, 181, 2275, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00006640
	 { 1592, 194, 2282, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00006650
	 { 1596, 202, 2280, 0, 576, -70, 158, 142, 111, 255 }, // 0x00006660
};

Vtx_t _ganontika_room_6_vertices_00006670[6] = 
{
	 { 1617, 209, 2293, 0, 495, 612, 169, 154, 126, 255 }, // 0x00006670
	 { 1614, 225, 2300, 0, -34, 217, 69, 62, 48, 255 }, // 0x00006680
	 { 1636, 204, 2290, 0, 1040, 389, 115, 102, 78, 255 }, // 0x00006690
	 { 1620, 193, 2285, 0, 1023, 1007, 69, 62, 48, 255 }, // 0x000066A0
	 { 1596, 210, 2293, 0, 0, 1024, 115, 102, 78, 255 }, // 0x000066B0
	 { 1617, 209, 2293, 0, 495, 612, 169, 154, 126, 255 }, // 0x000066C0
};

Vtx_t _ganontika_room_6_vertices_000066D0[4] = 
{
	 { 1596, 202, 2280, 0, 677, 1606, 158, 142, 111, 255 }, // 0x000066D0
	 { 1596, 210, 2293, 0, 812, 1150, 115, 102, 78, 255 }, // 0x000066E0
	 { 1620, 193, 2285, 0, -91, 1389, 69, 62, 48, 255 }, // 0x000066F0
	 { 1611, 186, 2271, 0, 45, 1935, 158, 142, 111, 255 }, // 0x00006700
};

Vtx_t _ganontika_room_6_vertices_00006710[7] = 
{
	 { 1611, 141, 2271, 0, 692, 118, 115, 102, 78, 255 }, // 0x00006710
	 { 1644, 177, 2295, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00006720
	 { 1633, 138, 2302, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00006730
	 { 1596, 124, 2280, 0, 628, 132, 100, 89, 67, 255 }, // 0x00006740
	 { 1611, 141, 2271, 0, 1024, 8, 115, 102, 78, 255 }, // 0x00006750
	 { 1596, 110, 2323, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00006760
	 { 1616, 163, 2268, 0, 33, 111, 115, 102, 78, 255 }, // 0x00006770
};

Vtx_t _ganontika_room_6_vertices_00006780[3] = 
{
	 { 1644, 177, 2295, 0, -2104, 1024, 69, 62, 48, 255 }, // 0x00006780
	 { 1616, 163, 2268, 0, -594, 1710, 115, 102, 78, 255 }, // 0x00006790
	 { 1611, 186, 2271, 0, 0, 1024, 158, 142, 111, 255 }, // 0x000067A0
};

Vtx_t _ganontika_room_6_vertices_000067B0[6] = 
{
	 { 1621, 226, 2309, 0, 1241, 226, 69, 62, 48, 255 }, // 0x000067B0
	 { 1665, 230, 2283, 0, 3838, 169, 52, 49, 38, 255 }, // 0x000067C0
	 { 1636, 204, 2290, 0, 2242, -488, 115, 102, 78, 255 }, // 0x000067D0
	 { 1636, 204, 2290, 0, 243, 574, 115, 102, 78, 255 }, // 0x000067E0
	 { 1665, 230, 2283, 0, 1369, 1186, 52, 49, 38, 255 }, // 0x000067F0
	 { 1644, 177, 2295, 0, -424, 1312, 69, 62, 48, 255 }, // 0x00006800
};

Vtx_t _ganontika_room_6_vertices_00006810[6] = 
{
	 { 1644, 177, 2295, 0, -527, 3062, 69, 62, 48, 255 }, // 0x00006810
	 { 1611, 186, 2271, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00006820
	 { 1620, 193, 2285, 0, -460, 1024, 69, 62, 48, 255 }, // 0x00006830
	 { 1644, 177, 2295, 0, 777, 2013, 69, 62, 48, 255 }, // 0x00006840
	 { 1620, 193, 2285, 0, -218, 1201, 69, 62, 48, 255 }, // 0x00006850
	 { 1636, 204, 2290, 0, 533, 824, 115, 102, 78, 255 }, // 0x00006860
};

Vtx_t _ganontika_room_6_vertices_00006870[20] = 
{
	 { 1604, 181, 2275, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00006870
	 { 1611, 186, 2271, 0, 576, -68, 158, 142, 111, 255 }, // 0x00006880
	 { 1616, 163, 2268, 0, -64, -68, 115, 102, 78, 255 }, // 0x00006890
	 { 1608, 163, 2273, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000068A0
	 { 1577, 199, 2291, 0, 512, 1024, 147, 131, 97, 255 }, // 0x000068B0
	 { 1577, 208, 2291, 0, 576, -57, 158, 142, 111, 255 }, // 0x000068C0
	 { 1596, 202, 2280, 0, -64, -57, 158, 142, 111, 255 }, // 0x000068D0
	 { 1592, 194, 2282, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000068E0
	 { 1550, 145, 2306, 0, 512, 1024, 147, 131, 97, 255 }, // 0x000068F0
	 { 1543, 141, 2310, 0, 576, -68, 81, 72, 55, 255 }, // 0x00006900
	 { 1538, 163, 2313, 0, -64, -68, 100, 89, 67, 255 }, // 0x00006910
	 { 1546, 163, 2309, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00006920
	 { 1543, 141, 2310, 0, -66, -70, 81, 72, 55, 255 }, // 0x00006930
	 { 1550, 145, 2306, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00006940
	 { 1561, 132, 2300, 0, 530, 1024, 147, 131, 97, 255 }, // 0x00006950
	 { 1557, 124, 2302, 0, 597, -70, 81, 72, 55, 255 }, // 0x00006960
	 { 1577, 127, 2291, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00006970
	 { 1577, 118, 2291, 0, 576, -57, 100, 89, 67, 255 }, // 0x00006980
	 { 1557, 124, 2302, 0, -64, -57, 81, 72, 55, 255 }, // 0x00006990
	 { 1561, 132, 2300, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000069A0
};

Vtx_t _ganontika_room_6_vertices_000069B0[4] = 
{
	 { 1567, 205, 2296, 0, 127, 1457, 69, 62, 48, 255 }, // 0x000069B0
	 { 1557, 202, 2302, 0, 254, 1889, 158, 142, 111, 255 }, // 0x000069C0
	 { 1569, 210, 2309, 0, -168, 1650, 115, 102, 78, 255 }, // 0x000069D0
	 { 1571, 220, 2296, 0, -84, 1337, 169, 154, 126, 255 }, // 0x000069E0
};

Vtx_t _ganontika_room_6_vertices_000069F0[4] = 
{
	 { 1571, 220, 2296, 0, 323, -39, 169, 154, 126, 255 }, // 0x000069F0
	 { 1578, 221, 2292, 0, 1024, 24, 169, 154, 126, 255 }, // 0x00006A00
	 { 1577, 208, 2291, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x00006A10
	 { 1567, 205, 2296, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00006A20
};

Vtx_t _ganontika_room_6_vertices_00006A30[3] = 
{
	 { 1569, 210, 2309, 0, 411, 176, 115, 102, 78, 255 }, // 0x00006A30
	 { 1566, 225, 2328, 0, 41, 721, 69, 62, 48, 255 }, // 0x00006A40
	 { 1596, 232, 2323, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00006A50
};

Vtx_t _ganontika_room_6_vertices_00006A60[9] = 
{
	 { 1571, 220, 2296, 0, 0, 1024, 169, 154, 126, 255 }, // 0x00006A60
	 { 1569, 210, 2309, 0, -148, 1454, 115, 102, 78, 255 }, // 0x00006A70
	 { 1596, 232, 2323, 0, -1100, 1024, 69, 62, 48, 255 }, // 0x00006A80
	 { 1571, 220, 2296, 0, -1100, 1024, 169, 154, 126, 255 }, // 0x00006A90
	 { 1596, 232, 2323, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00006AA0
	 { 1578, 221, 2292, 0, -1028, 1233, 169, 154, 126, 255 }, // 0x00006AB0
	 { 1566, 225, 2328, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00006AC0
	 { 1547, 204, 2342, 0, -104, 2342, 115, 102, 78, 255 }, // 0x00006AD0
	 { 1570, 226, 2338, 0, -441, 1024, 69, 62, 48, 255 }, // 0x00006AE0
};

Vtx_t _ganontika_room_6_vertices_00006AF0[7] = 
{
	 { 1566, 225, 2328, 0, 41, 721, 69, 62, 48, 255 }, // 0x00006AF0
	 { 1570, 226, 2338, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00006B00
	 { 1596, 232, 2323, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00006B10
	 { 1557, 202, 2302, 0, 576, -70, 158, 142, 111, 255 }, // 0x00006B20
	 { 1561, 194, 2300, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00006B30
	 { 1550, 181, 2306, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00006B40
	 { 1543, 186, 2310, 0, -64, -70, 100, 89, 67, 255 }, // 0x00006B50
};

Vtx_t _ganontika_room_6_vertices_00006B60[6] = 
{
	 { 1558, 209, 2327, 0, 495, 612, 169, 154, 126, 255 }, // 0x00006B60
	 { 1550, 193, 2326, 0, 1023, 1007, 69, 62, 48, 255 }, // 0x00006B70
	 { 1547, 204, 2342, 0, 1040, 389, 115, 102, 78, 255 }, // 0x00006B80
	 { 1566, 225, 2328, 0, -34, 217, 69, 62, 48, 255 }, // 0x00006B90
	 { 1558, 209, 2327, 0, 495, 612, 169, 154, 126, 255 }, // 0x00006BA0
	 { 1569, 210, 2309, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00006BB0
};

Vtx_t _ganontika_room_6_vertices_00006BC0[4] = 
{
	 { 1543, 186, 2310, 0, 45, 1935, 100, 89, 67, 255 }, // 0x00006BC0
	 { 1550, 193, 2326, 0, -91, 1389, 69, 62, 48, 255 }, // 0x00006BD0
	 { 1569, 210, 2309, 0, 812, 1150, 115, 102, 78, 255 }, // 0x00006BE0
	 { 1557, 202, 2302, 0, 677, 1606, 158, 142, 111, 255 }, // 0x00006BF0
};

Vtx_t _ganontika_room_6_vertices_00006C00[7] = 
{
	 { 1558, 138, 2345, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00006C00
	 { 1547, 177, 2351, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00006C10
	 { 1543, 141, 2310, 0, 692, 118, 81, 72, 55, 255 }, // 0x00006C20
	 { 1543, 141, 2310, 0, 1024, 8, 81, 72, 55, 255 }, // 0x00006C30
	 { 1557, 124, 2302, 0, 628, 132, 81, 72, 55, 255 }, // 0x00006C40
	 { 1596, 110, 2323, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00006C50
	 { 1538, 163, 2313, 0, 33, 111, 100, 89, 67, 255 }, // 0x00006C60
};

Vtx_t _ganontika_room_6_vertices_00006C70[3] = 
{
	 { 1543, 186, 2310, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00006C70
	 { 1538, 163, 2313, 0, -594, 1710, 100, 89, 67, 255 }, // 0x00006C80
	 { 1547, 177, 2351, 0, -2104, 1024, 69, 62, 48, 255 }, // 0x00006C90
};

Vtx_t _ganontika_room_6_vertices_00006CA0[6] = 
{
	 { 1547, 204, 2342, 0, 2242, -488, 115, 102, 78, 255 }, // 0x00006CA0
	 { 1526, 230, 2363, 0, 3838, 169, 52, 49, 38, 255 }, // 0x00006CB0
	 { 1570, 226, 2338, 0, 1241, 226, 69, 62, 48, 255 }, // 0x00006CC0
	 { 1547, 177, 2351, 0, -424, 1312, 69, 62, 48, 255 }, // 0x00006CD0
	 { 1526, 230, 2363, 0, 1369, 1186, 52, 49, 38, 255 }, // 0x00006CE0
	 { 1547, 204, 2342, 0, 243, 574, 115, 102, 78, 255 }, // 0x00006CF0
};

Vtx_t _ganontika_room_6_vertices_00006D00[6] = 
{
	 { 1550, 193, 2326, 0, -460, 1024, 69, 62, 48, 255 }, // 0x00006D00
	 { 1543, 186, 2310, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00006D10
	 { 1547, 177, 2351, 0, -527, 3062, 69, 62, 48, 255 }, // 0x00006D20
	 { 1547, 204, 2342, 0, 970, 1826, 115, 102, 78, 255 }, // 0x00006D30
	 { 1550, 193, 2326, 0, 409, 2452, 69, 62, 48, 255 }, // 0x00006D40
	 { 1547, 177, 2351, 0, -115, 1280, 69, 62, 48, 255 }, // 0x00006D50
};

Vtx_t _ganontika_room_6_vertices_00006D60[16] = 
{
	 { 1546, 163, 2309, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00006D60
	 { 1538, 163, 2313, 0, -64, -68, 100, 89, 67, 255 }, // 0x00006D70
	 { 1543, 186, 2310, 0, 576, -68, 100, 89, 67, 255 }, // 0x00006D80
	 { 1550, 181, 2306, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00006D90
	 { 1561, 194, 2300, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00006DA0
	 { 1557, 202, 2302, 0, -64, -57, 158, 142, 111, 255 }, // 0x00006DB0
	 { 1577, 208, 2291, 0, 576, -57, 158, 142, 111, 255 }, // 0x00006DC0
	 { 1577, 199, 2291, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00006DD0
	 { 1923, 199, 2091, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00006DE0
	 { 1923, 208, 2091, 0, 576, -57, 158, 142, 111, 255 }, // 0x00006DF0
	 { 1942, 202, 2080, 0, -64, -57, 134, 119, 89, 255 }, // 0x00006E00
	 { 1939, 194, 2082, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00006E10
	 { 1950, 181, 2075, 0, 512, 1024, 134, 119, 89, 255 }, // 0x00006E20
	 { 1957, 186, 2071, 0, 576, -68, 81, 72, 55, 255 }, // 0x00006E30
	 { 1962, 163, 2068, 0, -64, -68, 81, 72, 55, 255 }, // 0x00006E40
	 { 1954, 163, 2073, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00006E50
};

Vtx_t _ganontika_room_6_vertices_00006E60[6] = 
{
	 { 1990, 177, 2095, 0, -115, 1280, 69, 62, 48, 255 }, // 0x00006E60
	 { 1966, 193, 2085, 0, 409, 2452, 69, 62, 48, 255 }, // 0x00006E70
	 { 1982, 204, 2091, 0, 970, 1826, 115, 102, 78, 255 }, // 0x00006E80
	 { 1990, 177, 2095, 0, -527, 3062, 69, 62, 48, 255 }, // 0x00006E90
	 { 1957, 186, 2071, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00006EA0
	 { 1966, 193, 2085, 0, -460, 1024, 69, 62, 48, 255 }, // 0x00006EB0
};

Vtx_t _ganontika_room_6_vertices_00006EC0[6] = 
{
	 { 1982, 204, 2091, 0, 243, 574, 115, 102, 78, 255 }, // 0x00006EC0
	 { 2011, 230, 2083, 0, 1369, 1186, 52, 49, 38, 255 }, // 0x00006ED0
	 { 1990, 177, 2095, 0, -424, 1312, 69, 62, 48, 255 }, // 0x00006EE0
	 { 1967, 226, 2109, 0, 1241, 226, 69, 62, 48, 255 }, // 0x00006EF0
	 { 2011, 230, 2083, 0, 3838, 169, 52, 49, 38, 255 }, // 0x00006F00
	 { 1982, 204, 2091, 0, 2242, -488, 115, 102, 78, 255 }, // 0x00006F10
};

Vtx_t _ganontika_room_6_vertices_00006F20[3] = 
{
	 { 1990, 177, 2095, 0, -2104, 1024, 69, 62, 48, 255 }, // 0x00006F20
	 { 1962, 163, 2068, 0, -594, 1710, 81, 72, 55, 255 }, // 0x00006F30
	 { 1957, 186, 2071, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00006F40
};

Vtx_t _ganontika_room_6_vertices_00006F50[7] = 
{
	 { 1990, 177, 2095, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00006F50
	 { 1957, 141, 2071, 0, 692, 118, 81, 72, 55, 255 }, // 0x00006F60
	 { 1962, 163, 2068, 0, 33, 111, 81, 72, 55, 255 }, // 0x00006F70
	 { 1980, 138, 2102, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00006F80
	 { 1942, 110, 2123, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00006F90
	 { 1942, 124, 2080, 0, 628, 132, 81, 72, 55, 255 }, // 0x00006FA0
	 { 1957, 141, 2071, 0, 1024, 8, 81, 72, 55, 255 }, // 0x00006FB0
};

Vtx_t _ganontika_room_6_vertices_00006FC0[4] = 
{
	 { 1942, 202, 2080, 0, 677, 1606, 134, 119, 89, 255 }, // 0x00006FC0
	 { 1942, 210, 2093, 0, 812, 1150, 115, 102, 78, 255 }, // 0x00006FD0
	 { 1966, 193, 2085, 0, -91, 1389, 69, 62, 48, 255 }, // 0x00006FE0
	 { 1957, 186, 2071, 0, 45, 1935, 81, 72, 55, 255 }, // 0x00006FF0
};

Vtx_t _ganontika_room_6_vertices_00007000[6] = 
{
	 { 1942, 210, 2093, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00007000
	 { 1963, 209, 2093, 0, 495, 612, 169, 154, 126, 255 }, // 0x00007010
	 { 1966, 193, 2085, 0, 1023, 1007, 69, 62, 48, 255 }, // 0x00007020
	 { 1961, 225, 2101, 0, -34, 217, 69, 62, 48, 255 }, // 0x00007030
	 { 1982, 204, 2091, 0, 1040, 389, 115, 102, 78, 255 }, // 0x00007040
	 { 1963, 209, 2093, 0, 495, 612, 169, 154, 126, 255 }, // 0x00007050
};

Vtx_t _ganontika_room_6_vertices_00007060[7] = 
{
	 { 1957, 186, 2071, 0, -64, -70, 81, 72, 55, 255 }, // 0x00007060
	 { 1950, 181, 2075, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00007070
	 { 1939, 194, 2082, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00007080
	 { 1942, 202, 2080, 0, 576, -70, 134, 119, 89, 255 }, // 0x00007090
	 { 1942, 232, 2123, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x000070A0
	 { 1967, 226, 2109, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000070B0
	 { 1961, 225, 2101, 0, 41, 721, 69, 62, 48, 255 }, // 0x000070C0
};

Vtx_t _ganontika_room_6_vertices_000070D0[9] = 
{
	 { 1967, 226, 2109, 0, -441, 1024, 69, 62, 48, 255 }, // 0x000070D0
	 { 1982, 204, 2091, 0, -104, 2342, 115, 102, 78, 255 }, // 0x000070E0
	 { 1961, 225, 2101, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000070F0
	 { 1924, 221, 2093, 0, -1028, 1233, 169, 154, 126, 255 }, // 0x00007100
	 { 1942, 232, 2123, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00007110
	 { 1930, 220, 2088, 0, -1100, 1024, 169, 154, 126, 255 }, // 0x00007120
	 { 1942, 232, 2123, 0, -1100, 1024, 69, 62, 48, 255 }, // 0x00007130
	 { 1942, 210, 2093, 0, -148, 1454, 115, 102, 78, 255 }, // 0x00007140
	 { 1930, 220, 2088, 0, 0, 1024, 169, 154, 126, 255 }, // 0x00007150
};

Vtx_t _ganontika_room_6_vertices_00007160[3] = 
{
	 { 1942, 232, 2123, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00007160
	 { 1961, 225, 2101, 0, 41, 721, 69, 62, 48, 255 }, // 0x00007170
	 { 1942, 210, 2093, 0, 411, 176, 115, 102, 78, 255 }, // 0x00007180
};

Vtx_t _ganontika_room_6_vertices_00007190[4] = 
{
	 { 1933, 205, 2085, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00007190
	 { 1923, 208, 2091, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x000071A0
	 { 1924, 221, 2093, 0, 1024, 24, 169, 154, 126, 255 }, // 0x000071B0
	 { 1930, 220, 2088, 0, 323, -39, 169, 154, 126, 255 }, // 0x000071C0
};

Vtx_t _ganontika_room_6_vertices_000071D0[4] = 
{
	 { 1942, 210, 2093, 0, -168, 1650, 115, 102, 78, 255 }, // 0x000071D0
	 { 1933, 205, 2085, 0, 127, 1457, 69, 62, 48, 255 }, // 0x000071E0
	 { 1930, 220, 2088, 0, -84, 1337, 169, 154, 126, 255 }, // 0x000071F0
	 { 1942, 202, 2080, 0, 254, 1889, 134, 119, 89, 255 }, // 0x00007200
};

Vtx_t _ganontika_room_6_vertices_00007210[20] = 
{
	 { 1939, 132, 2082, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00007210
	 { 1942, 124, 2080, 0, -64, -57, 81, 72, 55, 255 }, // 0x00007220
	 { 1923, 118, 2091, 0, 576, -57, 81, 72, 55, 255 }, // 0x00007230
	 { 1923, 127, 2091, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00007240
	 { 1942, 124, 2080, 0, 597, -70, 81, 72, 55, 255 }, // 0x00007250
	 { 1939, 132, 2082, 0, 530, 1024, 134, 119, 89, 255 }, // 0x00007260
	 { 1950, 145, 2075, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00007270
	 { 1957, 141, 2071, 0, -66, -70, 81, 72, 55, 255 }, // 0x00007280
	 { 1954, 163, 2073, 0, 0, 1024, 134, 119, 89, 255 }, // 0x00007290
	 { 1962, 163, 2068, 0, -64, -68, 81, 72, 55, 255 }, // 0x000072A0
	 { 1957, 141, 2071, 0, 576, -68, 81, 72, 55, 255 }, // 0x000072B0
	 { 1950, 145, 2075, 0, 512, 1024, 134, 119, 89, 255 }, // 0x000072C0
	 { 1907, 194, 2100, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000072D0
	 { 1904, 202, 2102, 0, -64, -57, 158, 142, 111, 255 }, // 0x000072E0
	 { 1923, 208, 2091, 0, 576, -57, 158, 142, 111, 255 }, // 0x000072F0
	 { 1923, 199, 2091, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00007300
	 { 1892, 163, 2109, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00007310
	 { 1884, 163, 2113, 0, -64, -68, 158, 142, 111, 255 }, // 0x00007320
	 { 1889, 186, 2110, 0, 576, -68, 158, 142, 111, 255 }, // 0x00007330
	 { 1896, 181, 2107, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00007340
};

Vtx_t _ganontika_room_6_vertices_00007350[6] = 
{
	 { 1893, 204, 2142, 0, 533, 824, 115, 102, 78, 255 }, // 0x00007350
	 { 1896, 193, 2126, 0, -218, 1201, 69, 62, 48, 255 }, // 0x00007360
	 { 1893, 177, 2151, 0, 777, 2013, 69, 62, 48, 255 }, // 0x00007370
	 { 1896, 193, 2126, 0, -460, 1024, 69, 62, 48, 255 }, // 0x00007380
	 { 1889, 186, 2110, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00007390
	 { 1893, 177, 2151, 0, -527, 3062, 69, 62, 48, 255 }, // 0x000073A0
};

Vtx_t _ganontika_room_6_vertices_000073B0[6] = 
{
	 { 1893, 177, 2151, 0, -424, 1312, 69, 62, 48, 255 }, // 0x000073B0
	 { 1872, 230, 2163, 0, 1369, 1186, 52, 49, 38, 255 }, // 0x000073C0
	 { 1893, 204, 2142, 0, 243, 574, 115, 102, 78, 255 }, // 0x000073D0
	 { 1893, 204, 2142, 0, 2242, -488, 115, 102, 78, 255 }, // 0x000073E0
	 { 1872, 230, 2163, 0, 3838, 169, 52, 49, 38, 255 }, // 0x000073F0
	 { 1917, 226, 2138, 0, 1241, 226, 69, 62, 48, 255 }, // 0x00007400
};

Vtx_t _ganontika_room_6_vertices_00007410[3] = 
{
	 { 1889, 186, 2110, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00007410
	 { 1884, 163, 2113, 0, -594, 1710, 158, 142, 111, 255 }, // 0x00007420
	 { 1893, 177, 2151, 0, -2104, 1024, 69, 62, 48, 255 }, // 0x00007430
};

Vtx_t _ganontika_room_6_vertices_00007440[7] = 
{
	 { 1884, 163, 2113, 0, 33, 111, 158, 142, 111, 255 }, // 0x00007440
	 { 1889, 141, 2110, 0, 692, 118, 134, 119, 89, 255 }, // 0x00007450
	 { 1893, 177, 2151, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00007460
	 { 1904, 124, 2102, 0, 628, 132, 134, 119, 89, 255 }, // 0x00007470
	 { 1942, 110, 2123, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00007480
	 { 1904, 138, 2145, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00007490
	 { 1889, 141, 2110, 0, 1024, 8, 134, 119, 89, 255 }, // 0x000074A0
};

Vtx_t _ganontika_room_6_vertices_000074B0[4] = 
{
	 { 1889, 186, 2110, 0, 45, 1935, 158, 142, 111, 255 }, // 0x000074B0
	 { 1896, 193, 2126, 0, -91, 1389, 69, 62, 48, 255 }, // 0x000074C0
	 { 1915, 210, 2109, 0, 812, 1150, 115, 102, 78, 255 }, // 0x000074D0
	 { 1904, 202, 2102, 0, 677, 1606, 158, 142, 111, 255 }, // 0x000074E0
};

Vtx_t _ganontika_room_6_vertices_000074F0[6] = 
{
	 { 1896, 193, 2126, 0, 1023, 1007, 69, 62, 48, 255 }, // 0x000074F0
	 { 1904, 209, 2127, 0, 495, 612, 169, 154, 126, 255 }, // 0x00007500
	 { 1915, 210, 2109, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00007510
	 { 1913, 225, 2128, 0, -34, 217, 69, 62, 48, 255 }, // 0x00007520
	 { 1893, 204, 2142, 0, 1040, 389, 115, 102, 78, 255 }, // 0x00007530
	 { 1904, 209, 2127, 0, 495, 612, 169, 154, 126, 255 }, // 0x00007540
};

Vtx_t _ganontika_room_6_vertices_00007550[7] = 
{
	 { 1904, 202, 2102, 0, 576, -70, 158, 142, 111, 255 }, // 0x00007550
	 { 1907, 194, 2100, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00007560
	 { 1896, 181, 2107, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00007570
	 { 1889, 186, 2110, 0, -64, -70, 158, 142, 111, 255 }, // 0x00007580
	 { 1913, 225, 2128, 0, 41, 721, 69, 62, 48, 255 }, // 0x00007590
	 { 1917, 226, 2138, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000075A0
	 { 1942, 232, 2123, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x000075B0
};

Vtx_t _ganontika_room_6_vertices_000075C0[8] = 
{
	 { 1913, 225, 2128, 0, -274, 1117, 69, 62, 48, 255 }, // 0x000075C0
	 { 1893, 204, 2142, 0, 978, 1544, 115, 102, 78, 255 }, // 0x000075D0
	 { 1917, 226, 2138, 0, -99, 713, 69, 62, 48, 255 }, // 0x000075E0
	 { 1917, 220, 2096, 0, -42, 1476, 169, 154, 126, 255 }, // 0x000075F0
	 { 1942, 232, 2123, 0, -1045, 1929, 69, 62, 48, 255 }, // 0x00007600
	 { 1924, 221, 2093, 0, -22, 1697, 169, 154, 126, 255 }, // 0x00007610
	 { 1915, 210, 2109, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00007620
	 { 1942, 232, 2123, 0, -1045, 1024, 69, 62, 48, 255 }, // 0x00007630
};

Vtx_t _ganontika_room_6_vertices_00007640[3] = 
{
	 { 1915, 210, 2109, 0, 411, 176, 115, 102, 78, 255 }, // 0x00007640
	 { 1913, 225, 2128, 0, 41, 721, 69, 62, 48, 255 }, // 0x00007650
	 { 1942, 232, 2123, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00007660
};

Vtx_t _ganontika_room_6_vertices_00007670[4] = 
{
	 { 1917, 220, 2096, 0, 323, -39, 169, 154, 126, 255 }, // 0x00007670
	 { 1924, 221, 2093, 0, 1024, 24, 169, 154, 126, 255 }, // 0x00007680
	 { 1923, 208, 2091, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x00007690
	 { 1913, 205, 2097, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000076A0
};

Vtx_t _ganontika_room_6_vertices_000076B0[4] = 
{
	 { 1917, 220, 2096, 0, -84, 1337, 169, 154, 126, 255 }, // 0x000076B0
	 { 1913, 205, 2097, 0, 127, 1457, 69, 62, 48, 255 }, // 0x000076C0
	 { 1915, 210, 2109, 0, -168, 1650, 115, 102, 78, 255 }, // 0x000076D0
	 { 1904, 202, 2102, 0, 254, 1889, 158, 142, 111, 255 }, // 0x000076E0
};

Vtx_t _ganontika_room_6_vertices_000076F0[8] = 
{
	 { 1889, 141, 2110, 0, -64, -70, 134, 119, 89, 255 }, // 0x000076F0
	 { 1896, 145, 2107, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00007700
	 { 1907, 132, 2100, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00007710
	 { 1904, 124, 2102, 0, 576, -70, 134, 119, 89, 255 }, // 0x00007720
	 { 1896, 145, 2107, 0, 510, 1024, 147, 131, 97, 255 }, // 0x00007730
	 { 1889, 141, 2110, 0, 574, -68, 134, 119, 89, 255 }, // 0x00007740
	 { 1884, 163, 2113, 0, -64, -68, 158, 142, 111, 255 }, // 0x00007750
	 { 1892, 163, 2109, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00007760
};

Vtx_t _ganontika_room_6_vertices_00007770[25] = 
{
	 { 1923, 127, 2091, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00007770
	 { 1923, 118, 2091, 0, 576, -57, 81, 72, 55, 255 }, // 0x00007780
	 { 1904, 124, 2102, 0, -64, -57, 134, 119, 89, 255 }, // 0x00007790
	 { 1907, 132, 2100, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000077A0
	 { 1942, 110, 2123, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000077B0
	 { 1923, 118, 2091, 0, 210, 112, 81, 72, 55, 255 }, // 0x000077C0
	 { 1942, 124, 2080, 0, 628, 132, 81, 72, 55, 255 }, // 0x000077D0
	 { 1904, 124, 2102, 0, 628, 132, 134, 119, 89, 255 }, // 0x000077E0
	 { 1907, 132, 2100, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x000077F0
	 { 2016, 162, 2257, 0, 290, -507, 5, 5, 5, 255 }, // 0x00007800
	 { 1923, 127, 2091, 0, -1163, 1005, 69, 62, 48, 255 }, // 0x00007810
	 { 1939, 132, 2082, 0, -736, 1019, 69, 62, 48, 255 }, // 0x00007820
	 { 1892, 163, 2109, 0, -13, 952, 69, 62, 48, 255 }, // 0x00007830
	 { 2016, 162, 2257, 0, -373, -314, 5, 5, 5, 255 }, // 0x00007840
	 { 1896, 145, 2107, 0, -745, 967, 69, 62, 48, 255 }, // 0x00007850
	 { 1907, 132, 2100, 0, -1166, 986, 69, 62, 48, 255 }, // 0x00007860
	 { 1907, 194, 2100, 0, 1570, 951, 69, 62, 48, 255 }, // 0x00007870
	 { 2016, 162, 2257, 0, 417, -324, 5, 5, 5, 255 }, // 0x00007880
	 { 1896, 181, 2107, 0, 835, 947, 69, 62, 48, 255 }, // 0x00007890
	 { 1923, 199, 2091, 0, 1997, 965, 69, 62, 48, 255 }, // 0x000078A0
	 { 2016, 162, 2257, 0, 0, -285, 5, 5, 5, 255 }, // 0x000078B0
	 { 1939, 194, 2082, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x000078C0
	 { 1950, 181, 2075, 0, 1580, 1004, 69, 62, 48, 255 }, // 0x000078D0
	 { 1954, 163, 2073, 0, 848, 1018, 69, 62, 48, 255 }, // 0x000078E0
	 { 1950, 145, 2075, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000078F0
};

Vtx_t _ganontika_room_6_vertices_00007900[8] = 
{
	 { 1992, 110, 2051, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007900
	 { 2087, 110, 2215, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007910
	 { 1992, 232, 2051, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007920
	 { 2087, 232, 2215, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007930
	 { 1507, 110, 2331, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007940
	 { 1602, 110, 2495, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007950
	 { 1507, 232, 2331, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007960
	 { 1602, 232, 2495, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007970
};

Gfx _ganontika_room_6_dlist_00007980[] =
{
	gsDPPipeSync(), // 0x00007980
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007988
	gsSPVertex(_ganontika_room_6_vertices_00007900, 8, 0), // 0x00007990
	gsSPCullDisplayList(0, 7), // 0x00007998
	gsDPPipeSync(), // 0x000079A0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000079A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000079B0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000079B8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x000079C0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000079C8
	gsDPLoadSync(), // 0x000079D0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000079D8
	gsDPPipeSync(), // 0x000079E0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000079E8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000079F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000079F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00007A00
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007A08
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007A10
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007A18
	gsSPVertex(_ganontika_room_6_vertices_000062C0, 25, 0), // 0x00007A20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007A28
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00007A30
	gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0), // 0x00007A38
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 7, 0), // 0x00007A40
	gsSP2Triangles(11, 12, 13, 0, 11, 13, 9, 0), // 0x00007A48
	gsSP2Triangles(14, 1, 15, 0, 14, 15, 16, 0), // 0x00007A50
	gsSP2Triangles(17, 18, 19, 0, 20, 18, 17, 0), // 0x00007A58
	gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0), // 0x00007A60
	gsDPPipeSync(), // 0x00007A68
	gsSPTexture(0, 0, 0, 0, 0), // 0x00007A70
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00007A78
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007A80
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007A88
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00007A90
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007A98
	gsDPLoadSync(), // 0x00007AA0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007AA8
	gsDPPipeSync(), // 0x00007AB0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007AB8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007AC0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007AC8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00007AD0
	gsSPVertex(_ganontika_room_6_vertices_00006450, 8, 0), // 0x00007AD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007AE0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007AE8
	gsDPPipeSync(), // 0x00007AF0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00007AF8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007B00
	gsDPLoadSync(), // 0x00007B08
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007B10
	gsDPPipeSync(), // 0x00007B18
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007B20
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007B28
	gsSPVertex(_ganontika_room_6_vertices_000064D0, 4, 0), // 0x00007B30
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007B38
	gsDPPipeSync(), // 0x00007B40
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CB00), // 0x00007B48
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00007B50
	gsDPLoadSync(), // 0x00007B58
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007B60
	gsDPPipeSync(), // 0x00007B68
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00007B70
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007B78
	gsSPVertex(_ganontika_room_6_vertices_00006510, 4, 0), // 0x00007B80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007B88
	gsDPPipeSync(), // 0x00007B90
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00007B98
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007BA0
	gsDPLoadSync(), // 0x00007BA8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007BB0
	gsDPPipeSync(), // 0x00007BB8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007BC0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007BC8
	gsSPVertex(_ganontika_room_6_vertices_00006550, 3, 0), // 0x00007BD0
	gsSP1Triangle(0, 1, 2, 0), // 0x00007BD8
	gsDPPipeSync(), // 0x00007BE0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00007BE8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007BF0
	gsDPLoadSync(), // 0x00007BF8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007C00
	gsDPPipeSync(), // 0x00007C08
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007C10
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007C18
	gsSPVertex(_ganontika_room_6_vertices_00006580, 8, 0), // 0x00007C20
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00007C28
	gsSP1Triangle(5, 6, 7, 0), // 0x00007C30
	gsDPPipeSync(), // 0x00007C38
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00007C40
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007C48
	gsDPLoadSync(), // 0x00007C50
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007C58
	gsDPPipeSync(), // 0x00007C60
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007C68
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007C70
	gsSPVertex(_ganontika_room_6_vertices_00006600, 7, 0), // 0x00007C78
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00007C80
	gsSP1Triangle(3, 5, 6, 0), // 0x00007C88
	gsDPPipeSync(), // 0x00007C90
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CD00), // 0x00007C98
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00007CA0
	gsDPLoadSync(), // 0x00007CA8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007CB0
	gsDPPipeSync(), // 0x00007CB8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00007CC0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007CC8
	gsSPVertex(_ganontika_room_6_vertices_00006670, 6, 0), // 0x00007CD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007CD8
	gsSP2Triangles(4, 1, 5, 0, 4, 5, 3, 0), // 0x00007CE0
	gsDPPipeSync(), // 0x00007CE8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00007CF0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007CF8
	gsDPLoadSync(), // 0x00007D00
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007D08
	gsDPPipeSync(), // 0x00007D10
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007D18
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007D20
	gsSPVertex(_ganontika_room_6_vertices_000066D0, 4, 0), // 0x00007D28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007D30
	gsDPPipeSync(), // 0x00007D38
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00007D40
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007D48
	gsDPLoadSync(), // 0x00007D50
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007D58
	gsDPPipeSync(), // 0x00007D60
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007D68
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007D70
	gsSPVertex(_ganontika_room_6_vertices_00006710, 7, 0), // 0x00007D78
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00007D80
	gsSP2Triangles(2, 5, 3, 0, 1, 0, 6, 0), // 0x00007D88
	gsDPPipeSync(), // 0x00007D90
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00007D98
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007DA0
	gsDPLoadSync(), // 0x00007DA8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007DB0
	gsDPPipeSync(), // 0x00007DB8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007DC0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007DC8
	gsSPVertex(_ganontika_room_6_vertices_00006780, 3, 0), // 0x00007DD0
	gsSP1Triangle(0, 1, 2, 0), // 0x00007DD8
	gsDPPipeSync(), // 0x00007DE0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00007DE8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007DF0
	gsDPLoadSync(), // 0x00007DF8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007E00
	gsDPPipeSync(), // 0x00007E08
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007E10
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007E18
	gsSPVertex(_ganontika_room_6_vertices_000067B0, 6, 0), // 0x00007E20
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00007E28
	gsDPPipeSync(), // 0x00007E30
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00007E38
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007E40
	gsDPLoadSync(), // 0x00007E48
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007E50
	gsDPPipeSync(), // 0x00007E58
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007E60
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007E68
	gsSPVertex(_ganontika_room_6_vertices_00006810, 6, 0), // 0x00007E70
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00007E78
	gsDPPipeSync(), // 0x00007E80
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00007E88
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007E90
	gsDPLoadSync(), // 0x00007E98
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007EA0
	gsDPPipeSync(), // 0x00007EA8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007EB0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007EB8
	gsSPVertex(_ganontika_room_6_vertices_00006870, 20, 0), // 0x00007EC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007EC8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007ED0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00007ED8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00007EE0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00007EE8
	gsDPPipeSync(), // 0x00007EF0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00007EF8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007F00
	gsDPLoadSync(), // 0x00007F08
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007F10
	gsDPPipeSync(), // 0x00007F18
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007F20
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007F28
	gsSPVertex(_ganontika_room_6_vertices_000069B0, 4, 0), // 0x00007F30
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00007F38
	gsDPPipeSync(), // 0x00007F40
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CB00), // 0x00007F48
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00007F50
	gsDPLoadSync(), // 0x00007F58
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007F60
	gsDPPipeSync(), // 0x00007F68
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00007F70
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007F78
	gsSPVertex(_ganontika_room_6_vertices_000069F0, 4, 0), // 0x00007F80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007F88
	gsDPPipeSync(), // 0x00007F90
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00007F98
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007FA0
	gsDPLoadSync(), // 0x00007FA8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007FB0
	gsDPPipeSync(), // 0x00007FB8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007FC0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007FC8
	gsSPVertex(_ganontika_room_6_vertices_00006A30, 3, 0), // 0x00007FD0
	gsSP1Triangle(0, 1, 2, 0), // 0x00007FD8
	gsDPPipeSync(), // 0x00007FE0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00007FE8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007FF0
	gsDPLoadSync(), // 0x00007FF8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008000
	gsDPPipeSync(), // 0x00008008
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008010
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008018
	gsSPVertex(_ganontika_room_6_vertices_00006A60, 9, 0), // 0x00008020
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008028
	gsSP1Triangle(6, 7, 8, 0), // 0x00008030
	gsDPPipeSync(), // 0x00008038
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00008040
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008048
	gsDPLoadSync(), // 0x00008050
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008058
	gsDPPipeSync(), // 0x00008060
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008068
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008070
	gsSPVertex(_ganontika_room_6_vertices_00006AF0, 7, 0), // 0x00008078
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008080
	gsSP1Triangle(3, 5, 6, 0), // 0x00008088
	gsDPPipeSync(), // 0x00008090
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CD00), // 0x00008098
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x000080A0
	gsDPLoadSync(), // 0x000080A8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000080B0
	gsDPPipeSync(), // 0x000080B8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x000080C0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000080C8
	gsSPVertex(_ganontika_room_6_vertices_00006B60, 6, 0), // 0x000080D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000080D8
	gsSP2Triangles(4, 3, 5, 0, 1, 4, 5, 0), // 0x000080E0
	gsDPPipeSync(), // 0x000080E8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x000080F0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000080F8
	gsDPLoadSync(), // 0x00008100
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008108
	gsDPPipeSync(), // 0x00008110
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008118
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008120
	gsSPVertex(_ganontika_room_6_vertices_00006BC0, 4, 0), // 0x00008128
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008130
	gsDPPipeSync(), // 0x00008138
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00008140
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008148
	gsDPLoadSync(), // 0x00008150
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008158
	gsDPPipeSync(), // 0x00008160
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008168
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008170
	gsSPVertex(_ganontika_room_6_vertices_00006C00, 7, 0), // 0x00008178
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x00008180
	gsSP2Triangles(4, 5, 0, 0, 6, 2, 1, 0), // 0x00008188
	gsDPPipeSync(), // 0x00008190
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00008198
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000081A0
	gsDPLoadSync(), // 0x000081A8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000081B0
	gsDPPipeSync(), // 0x000081B8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000081C0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000081C8
	gsSPVertex(_ganontika_room_6_vertices_00006C70, 3, 0), // 0x000081D0
	gsSP1Triangle(0, 1, 2, 0), // 0x000081D8
	gsDPPipeSync(), // 0x000081E0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x000081E8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000081F0
	gsDPLoadSync(), // 0x000081F8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008200
	gsDPPipeSync(), // 0x00008208
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008210
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008218
	gsSPVertex(_ganontika_room_6_vertices_00006CA0, 6, 0), // 0x00008220
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008228
	gsDPPipeSync(), // 0x00008230
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00008238
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008240
	gsDPLoadSync(), // 0x00008248
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008250
	gsDPPipeSync(), // 0x00008258
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008260
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008268
	gsSPVertex(_ganontika_room_6_vertices_00006D00, 6, 0), // 0x00008270
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008278
	gsDPPipeSync(), // 0x00008280
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00008288
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008290
	gsDPLoadSync(), // 0x00008298
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000082A0
	gsDPPipeSync(), // 0x000082A8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000082B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000082B8
	gsSPVertex(_ganontika_room_6_vertices_00006D60, 16, 0), // 0x000082C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000082C8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000082D0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000082D8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000082E0
	gsDPPipeSync(), // 0x000082E8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x000082F0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000082F8
	gsDPLoadSync(), // 0x00008300
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008308
	gsDPPipeSync(), // 0x00008310
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008318
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008320
	gsSPVertex(_ganontika_room_6_vertices_00006E60, 6, 0), // 0x00008328
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008330
	gsDPPipeSync(), // 0x00008338
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00008340
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008348
	gsDPLoadSync(), // 0x00008350
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008358
	gsDPPipeSync(), // 0x00008360
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008368
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008370
	gsSPVertex(_ganontika_room_6_vertices_00006EC0, 6, 0), // 0x00008378
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008380
	gsDPPipeSync(), // 0x00008388
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00008390
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008398
	gsDPLoadSync(), // 0x000083A0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000083A8
	gsDPPipeSync(), // 0x000083B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000083B8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000083C0
	gsSPVertex(_ganontika_room_6_vertices_00006F20, 3, 0), // 0x000083C8
	gsSP1Triangle(0, 1, 2, 0), // 0x000083D0
	gsDPPipeSync(), // 0x000083D8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x000083E0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000083E8
	gsDPLoadSync(), // 0x000083F0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000083F8
	gsDPPipeSync(), // 0x00008400
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008408
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008410
	gsSPVertex(_ganontika_room_6_vertices_00006F50, 7, 0), // 0x00008418
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008420
	gsSP2Triangles(5, 6, 3, 0, 1, 0, 3, 0), // 0x00008428
	gsDPPipeSync(), // 0x00008430
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00008438
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008440
	gsDPLoadSync(), // 0x00008448
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008450
	gsDPPipeSync(), // 0x00008458
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008460
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008468
	gsSPVertex(_ganontika_room_6_vertices_00006FC0, 4, 0), // 0x00008470
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008478
	gsDPPipeSync(), // 0x00008480
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CD00), // 0x00008488
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00008490
	gsDPLoadSync(), // 0x00008498
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000084A0
	gsDPPipeSync(), // 0x000084A8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x000084B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000084B8
	gsSPVertex(_ganontika_room_6_vertices_00007000, 6, 0), // 0x000084C0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000084C8
	gsSP2Triangles(3, 4, 5, 0, 4, 2, 5, 0), // 0x000084D0
	gsDPPipeSync(), // 0x000084D8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x000084E0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000084E8
	gsDPLoadSync(), // 0x000084F0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000084F8
	gsDPPipeSync(), // 0x00008500
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008508
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008510
	gsSPVertex(_ganontika_room_6_vertices_00007060, 7, 0), // 0x00008518
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008520
	gsSP1Triangle(4, 5, 6, 0), // 0x00008528
	gsDPPipeSync(), // 0x00008530
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00008538
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008540
	gsDPLoadSync(), // 0x00008548
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008550
	gsDPPipeSync(), // 0x00008558
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008560
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008568
	gsSPVertex(_ganontika_room_6_vertices_000070D0, 9, 0), // 0x00008570
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008578
	gsSP1Triangle(6, 7, 8, 0), // 0x00008580
	gsDPPipeSync(), // 0x00008588
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00008590
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008598
	gsDPLoadSync(), // 0x000085A0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000085A8
	gsDPPipeSync(), // 0x000085B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000085B8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000085C0
	gsSPVertex(_ganontika_room_6_vertices_00007160, 3, 0), // 0x000085C8
	gsSP1Triangle(0, 1, 2, 0), // 0x000085D0
	gsDPPipeSync(), // 0x000085D8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CB00), // 0x000085E0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x000085E8
	gsDPLoadSync(), // 0x000085F0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000085F8
	gsDPPipeSync(), // 0x00008600
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00008608
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008610
	gsSPVertex(_ganontika_room_6_vertices_00007190, 4, 0), // 0x00008618
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008620
	gsDPPipeSync(), // 0x00008628
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00008630
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008638
	gsDPLoadSync(), // 0x00008640
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008648
	gsDPPipeSync(), // 0x00008650
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008658
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008660
	gsSPVertex(_ganontika_room_6_vertices_000071D0, 4, 0), // 0x00008668
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008670
	gsDPPipeSync(), // 0x00008678
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00008680
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008688
	gsDPLoadSync(), // 0x00008690
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008698
	gsDPPipeSync(), // 0x000086A0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000086A8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000086B0
	gsSPVertex(_ganontika_room_6_vertices_00007210, 20, 0), // 0x000086B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000086C0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000086C8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000086D0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000086D8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000086E0
	gsDPPipeSync(), // 0x000086E8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x000086F0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000086F8
	gsDPLoadSync(), // 0x00008700
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008708
	gsDPPipeSync(), // 0x00008710
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008718
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008720
	gsSPVertex(_ganontika_room_6_vertices_00007350, 6, 0), // 0x00008728
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008730
	gsDPPipeSync(), // 0x00008738
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00008740
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008748
	gsDPLoadSync(), // 0x00008750
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008758
	gsDPPipeSync(), // 0x00008760
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008768
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008770
	gsSPVertex(_ganontika_room_6_vertices_000073B0, 6, 0), // 0x00008778
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008780
	gsDPPipeSync(), // 0x00008788
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00008790
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008798
	gsDPLoadSync(), // 0x000087A0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000087A8
	gsDPPipeSync(), // 0x000087B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000087B8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000087C0
	gsSPVertex(_ganontika_room_6_vertices_00007410, 3, 0), // 0x000087C8
	gsSP1Triangle(0, 1, 2, 0), // 0x000087D0
	gsDPPipeSync(), // 0x000087D8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x000087E0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000087E8
	gsDPLoadSync(), // 0x000087F0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000087F8
	gsDPPipeSync(), // 0x00008800
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008808
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008810
	gsSPVertex(_ganontika_room_6_vertices_00007440, 7, 0), // 0x00008818
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008820
	gsSP2Triangles(5, 6, 3, 0, 5, 2, 1, 0), // 0x00008828
	gsDPPipeSync(), // 0x00008830
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00008838
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008840
	gsDPLoadSync(), // 0x00008848
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008850
	gsDPPipeSync(), // 0x00008858
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008860
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008868
	gsSPVertex(_ganontika_room_6_vertices_000074B0, 4, 0), // 0x00008870
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008878
	gsDPPipeSync(), // 0x00008880
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CD00), // 0x00008888
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00008890
	gsDPLoadSync(), // 0x00008898
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000088A0
	gsDPPipeSync(), // 0x000088A8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x000088B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000088B8
	gsSPVertex(_ganontika_room_6_vertices_000074F0, 6, 0), // 0x000088C0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000088C8
	gsSP2Triangles(0, 4, 5, 0, 4, 3, 5, 0), // 0x000088D0
	gsDPPipeSync(), // 0x000088D8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x000088E0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000088E8
	gsDPLoadSync(), // 0x000088F0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000088F8
	gsDPPipeSync(), // 0x00008900
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008908
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008910
	gsSPVertex(_ganontika_room_6_vertices_00007550, 7, 0), // 0x00008918
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008920
	gsSP1Triangle(4, 5, 6, 0), // 0x00008928
	gsDPPipeSync(), // 0x00008930
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00008938
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008940
	gsDPLoadSync(), // 0x00008948
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008950
	gsDPPipeSync(), // 0x00008958
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008960
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008968
	gsSPVertex(_ganontika_room_6_vertices_000075C0, 8, 0), // 0x00008970
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008978
	gsSP1Triangle(3, 6, 7, 0), // 0x00008980
	gsDPPipeSync(), // 0x00008988
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00008990
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008998
	gsDPLoadSync(), // 0x000089A0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000089A8
	gsDPPipeSync(), // 0x000089B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000089B8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000089C0
	gsSPVertex(_ganontika_room_6_vertices_00007640, 3, 0), // 0x000089C8
	gsSP1Triangle(0, 1, 2, 0), // 0x000089D0
	gsDPPipeSync(), // 0x000089D8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CB00), // 0x000089E0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x000089E8
	gsDPLoadSync(), // 0x000089F0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000089F8
	gsDPPipeSync(), // 0x00008A00
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00008A08
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008A10
	gsSPVertex(_ganontika_room_6_vertices_00007670, 4, 0), // 0x00008A18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008A20
	gsDPPipeSync(), // 0x00008A28
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x00008A30
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008A38
	gsDPLoadSync(), // 0x00008A40
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008A48
	gsDPPipeSync(), // 0x00008A50
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008A58
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008A60
	gsSPVertex(_ganontika_room_6_vertices_000076B0, 4, 0), // 0x00008A68
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00008A70
	gsDPPipeSync(), // 0x00008A78
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00008A80
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008A88
	gsDPLoadSync(), // 0x00008A90
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008A98
	gsDPPipeSync(), // 0x00008AA0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008AA8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008AB0
	gsSPVertex(_ganontika_room_6_vertices_000076F0, 8, 0), // 0x00008AB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008AC0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00008AC8
	gsDPPipeSync(), // 0x00008AD0
	gsSPTexture(0, 0, 0, 0, 0), // 0x00008AD8
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00008AE0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00008AE8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008AF0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x00008AF8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008B00
	gsDPLoadSync(), // 0x00008B08
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008B10
	gsDPPipeSync(), // 0x00008B18
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008B20
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008B28
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008B30
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00008B38
	gsSPVertex(_ganontika_room_6_vertices_00007770, 25, 0), // 0x00008B40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008B48
	gsSP2Triangles(4, 5, 6, 0, 7, 5, 4, 0), // 0x00008B50
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x00008B58
	gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0), // 0x00008B60
	gsSP2Triangles(16, 17, 18, 0, 17, 12, 18, 0), // 0x00008B68
	gsSP2Triangles(16, 19, 20, 0, 19, 21, 20, 0), // 0x00008B70
	gsSP2Triangles(21, 22, 20, 0, 22, 23, 20, 0), // 0x00008B78
	gsSP2Triangles(23, 24, 20, 0, 24, 11, 20, 0), // 0x00008B80
	gsSPEndDisplayList(), // 0x00008B88
};

Vtx_t _ganontika_room_6_vertices_00008B90[25] = 
{
	 { 987, 145, 1332, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00008B90
	 { 999, 132, 1326, 0, -736, 1019, 69, 62, 48, 255 }, // 0x00008BA0
	 { 921, 162, 1151, 0, 0, -285, 5, 5, 5, 255 }, // 0x00008BB0
	 { 983, 163, 1335, 0, 848, 1018, 69, 62, 48, 255 }, // 0x00008BC0
	 { 987, 181, 1332, 0, 1580, 1004, 69, 62, 48, 255 }, // 0x00008BD0
	 { 999, 194, 1326, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00008BE0
	 { 1014, 199, 1317, 0, 1997, 965, 69, 62, 48, 255 }, // 0x00008BF0
	 { 1030, 194, 1308, 0, 1570, 951, 69, 62, 48, 255 }, // 0x00008C00
	 { 921, 162, 1151, 0, 417, -324, 5, 5, 5, 255 }, // 0x00008C10
	 { 1045, 163, 1299, 0, -13, 952, 69, 62, 48, 255 }, // 0x00008C20
	 { 1041, 181, 1301, 0, 835, 947, 69, 62, 48, 255 }, // 0x00008C30
	 { 921, 162, 1151, 0, -373, -314, 5, 5, 5, 255 }, // 0x00008C40
	 { 1030, 132, 1308, 0, -1166, 986, 69, 62, 48, 255 }, // 0x00008C50
	 { 1041, 145, 1301, 0, -745, 967, 69, 62, 48, 255 }, // 0x00008C60
	 { 921, 162, 1151, 0, 290, -507, 5, 5, 5, 255 }, // 0x00008C70
	 { 1014, 127, 1317, 0, -1163, 1005, 69, 62, 48, 255 }, // 0x00008C80
	 { 1030, 132, 1308, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00008C90
	 { 1034, 124, 1305, 0, 628, 132, 100, 89, 67, 255 }, // 0x00008CA0
	 { 1014, 118, 1317, 0, 210, 112, 100, 89, 67, 255 }, // 0x00008CB0
	 { 996, 110, 1284, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00008CC0
	 { 995, 124, 1328, 0, 628, 132, 69, 62, 48, 255 }, // 0x00008CD0
	 { 1014, 127, 1317, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00008CE0
	 { 1014, 118, 1317, 0, 576, -57, 100, 89, 67, 255 }, // 0x00008CF0
	 { 1034, 124, 1305, 0, -64, -57, 100, 89, 67, 255 }, // 0x00008D00
	 { 1030, 132, 1308, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00008D10
};

Vtx_t _ganontika_room_6_vertices_00008D20[8] = 
{
	 { 1041, 145, 1301, 0, 510, 1024, 147, 131, 97, 255 }, // 0x00008D20
	 { 1048, 141, 1297, 0, 574, -68, 115, 102, 78, 255 }, // 0x00008D30
	 { 1053, 163, 1294, 0, -64, -68, 158, 142, 111, 255 }, // 0x00008D40
	 { 1045, 163, 1299, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00008D50
	 { 1048, 141, 1297, 0, -64, -70, 115, 102, 78, 255 }, // 0x00008D60
	 { 1041, 145, 1301, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00008D70
	 { 1030, 132, 1308, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00008D80
	 { 1034, 124, 1305, 0, 576, -70, 100, 89, 67, 255 }, // 0x00008D90
};

Vtx_t _ganontika_room_6_vertices_00008DA0[4] = 
{
	 { 1024, 205, 1311, 0, 127, 1457, 69, 62, 48, 255 }, // 0x00008DA0
	 { 1034, 202, 1305, 0, 254, 1889, 158, 142, 111, 255 }, // 0x00008DB0
	 { 1022, 210, 1299, 0, -168, 1650, 115, 102, 78, 255 }, // 0x00008DC0
	 { 1020, 220, 1312, 0, -84, 1337, 169, 154, 126, 255 }, // 0x00008DD0
};

Vtx_t _ganontika_room_6_vertices_00008DE0[4] = 
{
	 { 1020, 220, 1312, 0, 323, -39, 169, 154, 126, 255 }, // 0x00008DE0
	 { 1013, 221, 1315, 0, 1024, 24, 169, 154, 126, 255 }, // 0x00008DF0
	 { 1014, 208, 1317, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x00008E00
	 { 1024, 205, 1311, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00008E10
};

Vtx_t _ganontika_room_6_vertices_00008E20[3] = 
{
	 { 1022, 210, 1299, 0, 411, 176, 115, 102, 78, 255 }, // 0x00008E20
	 { 1025, 225, 1279, 0, 41, 721, 69, 62, 48, 255 }, // 0x00008E30
	 { 996, 232, 1284, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00008E40
};

Vtx_t _ganontika_room_6_vertices_00008E50[8] = 
{
	 { 1020, 220, 1312, 0, -42, 1476, 169, 154, 126, 255 }, // 0x00008E50
	 { 1022, 210, 1299, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00008E60
	 { 996, 232, 1284, 0, -1045, 1024, 69, 62, 48, 255 }, // 0x00008E70
	 { 996, 232, 1284, 0, -1045, 1929, 69, 62, 48, 255 }, // 0x00008E80
	 { 1013, 221, 1315, 0, -22, 1697, 169, 154, 126, 255 }, // 0x00008E90
	 { 1025, 225, 1279, 0, -274, 1117, 69, 62, 48, 255 }, // 0x00008EA0
	 { 1044, 204, 1265, 0, 978, 1544, 115, 102, 78, 255 }, // 0x00008EB0
	 { 1021, 226, 1270, 0, -99, 713, 81, 72, 55, 255 }, // 0x00008EC0
};

Vtx_t _ganontika_room_6_vertices_00008ED0[7] = 
{
	 { 1025, 225, 1279, 0, 41, 721, 69, 62, 48, 255 }, // 0x00008ED0
	 { 1021, 226, 1270, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00008EE0
	 { 996, 232, 1284, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00008EF0
	 { 1034, 202, 1305, 0, 576, -70, 158, 142, 111, 255 }, // 0x00008F00
	 { 1030, 194, 1308, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00008F10
	 { 1041, 181, 1301, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00008F20
	 { 1048, 186, 1297, 0, -64, -70, 158, 142, 111, 255 }, // 0x00008F30
};

Vtx_t _ganontika_room_6_vertices_00008F40[6] = 
{
	 { 1044, 204, 1265, 0, 1040, 389, 115, 102, 78, 255 }, // 0x00008F40
	 { 1025, 225, 1279, 0, -34, 217, 69, 62, 48, 255 }, // 0x00008F50
	 { 1033, 209, 1281, 0, 495, 612, 169, 154, 126, 255 }, // 0x00008F60
	 { 1041, 193, 1282, 0, 1023, 1007, 69, 62, 48, 255 }, // 0x00008F70
	 { 1033, 209, 1281, 0, 495, 612, 169, 154, 126, 255 }, // 0x00008F80
	 { 1022, 210, 1299, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00008F90
};

Vtx_t _ganontika_room_6_vertices_00008FA0[4] = 
{
	 { 1048, 186, 1297, 0, 45, 1935, 158, 142, 111, 255 }, // 0x00008FA0
	 { 1041, 193, 1282, 0, -91, 1389, 69, 62, 48, 255 }, // 0x00008FB0
	 { 1022, 210, 1299, 0, 812, 1150, 115, 102, 78, 255 }, // 0x00008FC0
	 { 1034, 202, 1305, 0, 677, 1606, 158, 142, 111, 255 }, // 0x00008FD0
};

Vtx_t _ganontika_room_6_vertices_00008FE0[7] = 
{
	 { 1033, 138, 1262, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00008FE0
	 { 1044, 177, 1256, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00008FF0
	 { 1048, 141, 1297, 0, 692, 118, 115, 102, 78, 255 }, // 0x00009000
	 { 1048, 141, 1297, 0, 1024, 8, 115, 102, 78, 255 }, // 0x00009010
	 { 1034, 124, 1305, 0, 628, 132, 100, 89, 67, 255 }, // 0x00009020
	 { 996, 110, 1284, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00009030
	 { 1053, 163, 1294, 0, 33, 111, 158, 142, 111, 255 }, // 0x00009040
};

Vtx_t _ganontika_room_6_vertices_00009050[3] = 
{
	 { 1048, 186, 1297, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00009050
	 { 1053, 163, 1294, 0, -594, 1710, 158, 142, 111, 255 }, // 0x00009060
	 { 1044, 177, 1256, 0, -2104, 1024, 81, 72, 55, 255 }, // 0x00009070
};

Vtx_t _ganontika_room_6_vertices_00009080[6] = 
{
	 { 1044, 204, 1265, 0, 2242, -488, 115, 102, 78, 255 }, // 0x00009080
	 { 1065, 230, 1244, 0, 3838, 169, 52, 49, 38, 255 }, // 0x00009090
	 { 1021, 226, 1270, 0, 1241, 226, 81, 72, 55, 255 }, // 0x000090A0
	 { 1044, 177, 1256, 0, -424, 1312, 81, 72, 55, 255 }, // 0x000090B0
	 { 1065, 230, 1244, 0, 1369, 1186, 52, 49, 38, 255 }, // 0x000090C0
	 { 1044, 204, 1265, 0, 243, 574, 115, 102, 78, 255 }, // 0x000090D0
};

Vtx_t _ganontika_room_6_vertices_000090E0[6] = 
{
	 { 1041, 193, 1282, 0, -460, 1024, 69, 62, 48, 255 }, // 0x000090E0
	 { 1048, 186, 1297, 0, 0, 1024, 158, 142, 111, 255 }, // 0x000090F0
	 { 1044, 177, 1256, 0, -527, 3062, 81, 72, 55, 255 }, // 0x00009100
	 { 1044, 204, 1265, 0, 533, 824, 115, 102, 78, 255 }, // 0x00009110
	 { 1041, 193, 1282, 0, -218, 1201, 69, 62, 48, 255 }, // 0x00009120
	 { 1044, 177, 1256, 0, 777, 2013, 81, 72, 55, 255 }, // 0x00009130
};

Vtx_t _ganontika_room_6_vertices_00009140[20] = 
{
	 { 1045, 163, 1299, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00009140
	 { 1053, 163, 1294, 0, -64, -68, 158, 142, 111, 255 }, // 0x00009150
	 { 1048, 186, 1297, 0, 576, -68, 158, 142, 111, 255 }, // 0x00009160
	 { 1041, 181, 1301, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00009170
	 { 1030, 194, 1308, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00009180
	 { 1034, 202, 1305, 0, -64, -57, 158, 142, 111, 255 }, // 0x00009190
	 { 1014, 208, 1317, 0, 576, -57, 158, 142, 111, 255 }, // 0x000091A0
	 { 1014, 199, 1317, 0, 512, 1024, 147, 131, 97, 255 }, // 0x000091B0
	 { 983, 163, 1335, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000091C0
	 { 975, 163, 1339, 0, -64, -68, 100, 89, 67, 255 }, // 0x000091D0
	 { 981, 141, 1336, 0, 576, -68, 69, 62, 48, 255 }, // 0x000091E0
	 { 987, 145, 1332, 0, 512, 1024, 147, 131, 97, 255 }, // 0x000091F0
	 { 995, 124, 1328, 0, 597, -70, 69, 62, 48, 255 }, // 0x00009200
	 { 999, 132, 1326, 0, 530, 1024, 147, 131, 97, 255 }, // 0x00009210
	 { 987, 145, 1332, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00009220
	 { 981, 141, 1336, 0, -66, -70, 69, 62, 48, 255 }, // 0x00009230
	 { 999, 132, 1326, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00009240
	 { 995, 124, 1328, 0, -64, -57, 69, 62, 48, 255 }, // 0x00009250
	 { 1014, 118, 1317, 0, 576, -57, 100, 89, 67, 255 }, // 0x00009260
	 { 1014, 127, 1317, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00009270
};

Vtx_t _ganontika_room_6_vertices_00009280[4] = 
{
	 { 995, 210, 1314, 0, -168, 1650, 115, 102, 78, 255 }, // 0x00009280
	 { 995, 202, 1328, 0, 254, 1889, 158, 142, 111, 255 }, // 0x00009290
	 { 1005, 205, 1322, 0, 127, 1457, 69, 62, 48, 255 }, // 0x000092A0
	 { 1007, 220, 1319, 0, -84, 1337, 169, 154, 126, 255 }, // 0x000092B0
};

Vtx_t _ganontika_room_6_vertices_000092C0[4] = 
{
	 { 1005, 205, 1322, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000092C0
	 { 1014, 208, 1317, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x000092D0
	 { 1013, 221, 1315, 0, 1024, 24, 169, 154, 126, 255 }, // 0x000092E0
	 { 1007, 220, 1319, 0, 323, -39, 169, 154, 126, 255 }, // 0x000092F0
};

Vtx_t _ganontika_room_6_vertices_00009300[3] = 
{
	 { 996, 232, 1284, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00009300
	 { 977, 225, 1307, 0, 41, 721, 81, 72, 55, 255 }, // 0x00009310
	 { 995, 210, 1314, 0, 411, 176, 115, 102, 78, 255 }, // 0x00009320
};

Vtx_t _ganontika_room_6_vertices_00009330[9] = 
{
	 { 996, 232, 1284, 0, -1100, 1024, 69, 62, 48, 255 }, // 0x00009330
	 { 995, 210, 1314, 0, -148, 1454, 115, 102, 78, 255 }, // 0x00009340
	 { 1007, 220, 1319, 0, 0, 1024, 169, 154, 126, 255 }, // 0x00009350
	 { 1013, 221, 1315, 0, -1028, 1233, 169, 154, 126, 255 }, // 0x00009360
	 { 996, 232, 1284, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00009370
	 { 1007, 220, 1319, 0, -1100, 1024, 169, 154, 126, 255 }, // 0x00009380
	 { 970, 226, 1299, 0, -441, 1024, 81, 72, 55, 255 }, // 0x00009390
	 { 955, 204, 1317, 0, -104, 2342, 115, 102, 78, 255 }, // 0x000093A0
	 { 977, 225, 1307, 0, 0, 1024, 81, 72, 55, 255 }, // 0x000093B0
};

Vtx_t _ganontika_room_6_vertices_000093C0[7] = 
{
	 { 996, 232, 1284, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x000093C0
	 { 970, 226, 1299, 0, 0, 1024, 81, 72, 55, 255 }, // 0x000093D0
	 { 977, 225, 1307, 0, 41, 721, 81, 72, 55, 255 }, // 0x000093E0
	 { 981, 186, 1336, 0, -64, -70, 100, 89, 67, 255 }, // 0x000093F0
	 { 987, 181, 1332, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00009400
	 { 999, 194, 1326, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00009410
	 { 995, 202, 1328, 0, 576, -70, 158, 142, 111, 255 }, // 0x00009420
};

Vtx_t _ganontika_room_6_vertices_00009430[6] = 
{
	 { 955, 204, 1317, 0, 1040, 389, 115, 102, 78, 255 }, // 0x00009430
	 { 971, 193, 1322, 0, 1023, 1007, 69, 62, 48, 255 }, // 0x00009440
	 { 974, 209, 1315, 0, 495, 612, 169, 154, 126, 255 }, // 0x00009450
	 { 977, 225, 1307, 0, -34, 217, 81, 72, 55, 255 }, // 0x00009460
	 { 995, 210, 1314, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00009470
	 { 974, 209, 1315, 0, 495, 612, 169, 154, 126, 255 }, // 0x00009480
};

Vtx_t _ganontika_room_6_vertices_00009490[4] = 
{
	 { 995, 202, 1328, 0, 677, 1606, 158, 142, 111, 255 }, // 0x00009490
	 { 995, 210, 1314, 0, 812, 1150, 115, 102, 78, 255 }, // 0x000094A0
	 { 971, 193, 1322, 0, -91, 1389, 69, 62, 48, 255 }, // 0x000094B0
	 { 981, 186, 1336, 0, 45, 1935, 100, 89, 67, 255 }, // 0x000094C0
};

Vtx_t _ganontika_room_6_vertices_000094D0[7] = 
{
	 { 981, 141, 1336, 0, 692, 118, 69, 62, 48, 255 }, // 0x000094D0
	 { 947, 177, 1312, 0, 0, 1024, 81, 72, 55, 255 }, // 0x000094E0
	 { 958, 138, 1306, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x000094F0
	 { 995, 124, 1328, 0, 628, 132, 69, 62, 48, 255 }, // 0x00009500
	 { 981, 141, 1336, 0, 1024, 8, 69, 62, 48, 255 }, // 0x00009510
	 { 996, 110, 1284, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00009520
	 { 975, 163, 1339, 0, 33, 111, 100, 89, 67, 255 }, // 0x00009530
};

Vtx_t _ganontika_room_6_vertices_00009540[3] = 
{
	 { 947, 177, 1312, 0, -2104, 1024, 81, 72, 55, 255 }, // 0x00009540
	 { 975, 163, 1339, 0, -594, 1710, 100, 89, 67, 255 }, // 0x00009550
	 { 981, 186, 1336, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00009560
};

Vtx_t _ganontika_room_6_vertices_00009570[6] = 
{
	 { 970, 226, 1299, 0, 1241, 226, 81, 72, 55, 255 }, // 0x00009570
	 { 926, 230, 1324, 0, 3838, 169, 52, 49, 38, 255 }, // 0x00009580
	 { 955, 204, 1317, 0, 2242, -488, 115, 102, 78, 255 }, // 0x00009590
	 { 955, 204, 1317, 0, 243, 574, 115, 102, 78, 255 }, // 0x000095A0
	 { 926, 230, 1324, 0, 1369, 1186, 52, 49, 38, 255 }, // 0x000095B0
	 { 947, 177, 1312, 0, -424, 1312, 81, 72, 55, 255 }, // 0x000095C0
};

Vtx_t _ganontika_room_6_vertices_000095D0[6] = 
{
	 { 947, 177, 1312, 0, -527, 3062, 81, 72, 55, 255 }, // 0x000095D0
	 { 981, 186, 1336, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000095E0
	 { 971, 193, 1322, 0, -460, 1024, 69, 62, 48, 255 }, // 0x000095F0
	 { 947, 177, 1312, 0, -115, 1280, 81, 72, 55, 255 }, // 0x00009600
	 { 971, 193, 1322, 0, 409, 2452, 69, 62, 48, 255 }, // 0x00009610
	 { 955, 204, 1317, 0, 970, 1826, 115, 102, 78, 255 }, // 0x00009620
};

Vtx_t _ganontika_room_6_vertices_00009630[16] = 
{
	 { 987, 181, 1332, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00009630
	 { 981, 186, 1336, 0, 576, -68, 100, 89, 67, 255 }, // 0x00009640
	 { 975, 163, 1339, 0, -64, -68, 100, 89, 67, 255 }, // 0x00009650
	 { 983, 163, 1335, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00009660
	 { 1014, 199, 1317, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00009670
	 { 1014, 208, 1317, 0, 576, -57, 158, 142, 111, 255 }, // 0x00009680
	 { 995, 202, 1328, 0, -64, -57, 158, 142, 111, 255 }, // 0x00009690
	 { 999, 194, 1326, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000096A0
	 { 1376, 194, 1108, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000096B0
	 { 1380, 202, 1105, 0, -64, -57, 158, 142, 111, 255 }, // 0x000096C0
	 { 1361, 208, 1117, 0, 576, -57, 158, 142, 111, 255 }, // 0x000096D0
	 { 1361, 199, 1117, 0, 512, 1024, 147, 131, 97, 255 }, // 0x000096E0
	 { 1392, 163, 1099, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000096F0
	 { 1399, 163, 1094, 0, -64, -68, 100, 89, 67, 255 }, // 0x00009700
	 { 1394, 186, 1097, 0, 576, -68, 100, 89, 67, 255 }, // 0x00009710
	 { 1388, 181, 1101, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00009720
};

Vtx_t _ganontika_room_6_vertices_00009730[6] = 
{
	 { 1390, 204, 1066, 0, 970, 1826, 115, 102, 78, 255 }, // 0x00009730
	 { 1387, 193, 1082, 0, 409, 2452, 69, 62, 48, 255 }, // 0x00009740
	 { 1390, 177, 1056, 0, -115, 1280, 69, 62, 48, 255 }, // 0x00009750
	 { 1387, 193, 1082, 0, -460, 1024, 69, 62, 48, 255 }, // 0x00009760
	 { 1394, 186, 1097, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00009770
	 { 1390, 177, 1056, 0, -527, 3062, 69, 62, 48, 255 }, // 0x00009780
};

Vtx_t _ganontika_room_6_vertices_00009790[6] = 
{
	 { 1390, 177, 1056, 0, -424, 1312, 69, 62, 48, 255 }, // 0x00009790
	 { 1411, 230, 1044, 0, 1369, 1186, 52, 49, 38, 255 }, // 0x000097A0
	 { 1390, 204, 1066, 0, 243, 574, 115, 102, 78, 255 }, // 0x000097B0
	 { 1390, 204, 1066, 0, 2242, -488, 115, 102, 78, 255 }, // 0x000097C0
	 { 1411, 230, 1044, 0, 3838, 169, 52, 49, 38, 255 }, // 0x000097D0
	 { 1367, 226, 1070, 0, 1241, 226, 69, 62, 48, 255 }, // 0x000097E0
};

Vtx_t _ganontika_room_6_vertices_000097F0[3] = 
{
	 { 1394, 186, 1097, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000097F0
	 { 1399, 163, 1094, 0, -594, 1710, 100, 89, 67, 255 }, // 0x00009800
	 { 1390, 177, 1056, 0, -2104, 1024, 69, 62, 48, 255 }, // 0x00009810
};

Vtx_t _ganontika_room_6_vertices_00009820[7] = 
{
	 { 1399, 163, 1094, 0, 33, 111, 100, 89, 67, 255 }, // 0x00009820
	 { 1394, 141, 1097, 0, 692, 118, 100, 89, 67, 255 }, // 0x00009830
	 { 1390, 177, 1056, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00009840
	 { 1380, 124, 1105, 0, 628, 132, 100, 89, 67, 255 }, // 0x00009850
	 { 1342, 110, 1084, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00009860
	 { 1380, 138, 1062, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00009870
	 { 1394, 141, 1097, 0, 1024, 8, 100, 89, 67, 255 }, // 0x00009880
};

Vtx_t _ganontika_room_6_vertices_00009890[4] = 
{
	 { 1394, 186, 1097, 0, 45, 1935, 100, 89, 67, 255 }, // 0x00009890
	 { 1387, 193, 1082, 0, -91, 1389, 69, 62, 48, 255 }, // 0x000098A0
	 { 1368, 210, 1099, 0, 812, 1150, 115, 102, 78, 255 }, // 0x000098B0
	 { 1380, 202, 1105, 0, 677, 1606, 158, 142, 111, 255 }, // 0x000098C0
};

Vtx_t _ganontika_room_6_vertices_000098D0[6] = 
{
	 { 1387, 193, 1082, 0, 1023, 1007, 69, 62, 48, 255 }, // 0x000098D0
	 { 1379, 209, 1081, 0, 495, 612, 169, 154, 126, 255 }, // 0x000098E0
	 { 1368, 210, 1099, 0, 0, 1024, 115, 102, 78, 255 }, // 0x000098F0
	 { 1371, 225, 1079, 0, -34, 217, 69, 62, 48, 255 }, // 0x00009900
	 { 1379, 209, 1081, 0, 495, 612, 169, 154, 126, 255 }, // 0x00009910
	 { 1390, 204, 1066, 0, 1040, 389, 115, 102, 78, 255 }, // 0x00009920
};

Vtx_t _ganontika_room_6_vertices_00009930[7] = 
{
	 { 1380, 202, 1105, 0, 576, -70, 158, 142, 111, 255 }, // 0x00009930
	 { 1376, 194, 1108, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00009940
	 { 1388, 181, 1101, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00009950
	 { 1394, 186, 1097, 0, -64, -70, 100, 89, 67, 255 }, // 0x00009960
	 { 1371, 225, 1079, 0, 41, 721, 69, 62, 48, 255 }, // 0x00009970
	 { 1367, 226, 1070, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00009980
	 { 1342, 232, 1084, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00009990
};

Vtx_t _ganontika_room_6_vertices_000099A0[9] = 
{
	 { 1371, 225, 1079, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000099A0
	 { 1390, 204, 1066, 0, -104, 2342, 115, 102, 78, 255 }, // 0x000099B0
	 { 1367, 226, 1070, 0, -441, 1024, 69, 62, 48, 255 }, // 0x000099C0
	 { 1367, 220, 1112, 0, -1100, 1024, 169, 154, 126, 255 }, // 0x000099D0
	 { 1342, 232, 1084, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000099E0
	 { 1360, 221, 1115, 0, -1028, 1233, 169, 154, 126, 255 }, // 0x000099F0
	 { 1367, 220, 1112, 0, 0, 1024, 169, 154, 126, 255 }, // 0x00009A00
	 { 1368, 210, 1099, 0, -148, 1454, 115, 102, 78, 255 }, // 0x00009A10
	 { 1342, 232, 1084, 0, -1100, 1024, 69, 62, 48, 255 }, // 0x00009A20
};

Vtx_t _ganontika_room_6_vertices_00009A30[3] = 
{
	 { 1368, 210, 1099, 0, 411, 176, 115, 102, 78, 255 }, // 0x00009A30
	 { 1371, 225, 1079, 0, 41, 721, 69, 62, 48, 255 }, // 0x00009A40
	 { 1342, 232, 1084, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00009A50
};

Vtx_t _ganontika_room_6_vertices_00009A60[4] = 
{
	 { 1367, 220, 1112, 0, 323, -39, 169, 154, 126, 255 }, // 0x00009A60
	 { 1360, 221, 1115, 0, 1024, 24, 169, 154, 126, 255 }, // 0x00009A70
	 { 1361, 208, 1117, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x00009A80
	 { 1370, 205, 1111, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00009A90
};

Vtx_t _ganontika_room_6_vertices_00009AA0[4] = 
{
	 { 1367, 220, 1112, 0, -84, 1337, 169, 154, 126, 255 }, // 0x00009AA0
	 { 1370, 205, 1111, 0, 127, 1457, 69, 62, 48, 255 }, // 0x00009AB0
	 { 1368, 210, 1099, 0, -168, 1650, 115, 102, 78, 255 }, // 0x00009AC0
	 { 1380, 202, 1105, 0, 254, 1889, 158, 142, 111, 255 }, // 0x00009AD0
};

Vtx_t _ganontika_room_6_vertices_00009AE0[20] = 
{
	 { 1361, 127, 1117, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00009AE0
	 { 1361, 118, 1117, 0, 576, -57, 100, 89, 67, 255 }, // 0x00009AF0
	 { 1380, 124, 1105, 0, -64, -57, 100, 89, 67, 255 }, // 0x00009B00
	 { 1376, 132, 1108, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00009B10
	 { 1394, 141, 1097, 0, -66, -70, 100, 89, 67, 255 }, // 0x00009B20
	 { 1388, 145, 1101, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00009B30
	 { 1376, 132, 1108, 0, 530, 1024, 147, 131, 97, 255 }, // 0x00009B40
	 { 1380, 124, 1105, 0, 597, -70, 100, 89, 67, 255 }, // 0x00009B50
	 { 1388, 145, 1101, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00009B60
	 { 1394, 141, 1097, 0, 576, -68, 100, 89, 67, 255 }, // 0x00009B70
	 { 1399, 163, 1094, 0, -64, -68, 100, 89, 67, 255 }, // 0x00009B80
	 { 1392, 163, 1099, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00009B90
	 { 1361, 199, 1117, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00009BA0
	 { 1361, 208, 1117, 0, 576, -57, 158, 142, 111, 255 }, // 0x00009BB0
	 { 1341, 202, 1128, 0, -64, -57, 158, 142, 111, 255 }, // 0x00009BC0
	 { 1345, 194, 1126, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00009BD0
	 { 1334, 181, 1132, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00009BE0
	 { 1327, 186, 1136, 0, 576, -68, 158, 142, 111, 255 }, // 0x00009BF0
	 { 1322, 163, 1139, 0, -64, -68, 158, 142, 111, 255 }, // 0x00009C00
	 { 1329, 163, 1135, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00009C10
};

Vtx_t _ganontika_room_6_vertices_00009C20[6] = 
{
	 { 1293, 177, 1112, 0, 777, 2013, 81, 72, 55, 255 }, // 0x00009C20
	 { 1317, 193, 1122, 0, -218, 1201, 69, 62, 48, 255 }, // 0x00009C30
	 { 1301, 204, 1117, 0, 533, 824, 115, 102, 78, 255 }, // 0x00009C40
	 { 1293, 177, 1112, 0, -527, 3062, 81, 72, 55, 255 }, // 0x00009C50
	 { 1327, 186, 1136, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00009C60
	 { 1317, 193, 1122, 0, -460, 1024, 69, 62, 48, 255 }, // 0x00009C70
};

Vtx_t _ganontika_room_6_vertices_00009C80[6] = 
{
	 { 1301, 204, 1117, 0, 243, 574, 115, 102, 78, 255 }, // 0x00009C80
	 { 1272, 230, 1124, 0, 1369, 1186, 52, 49, 38, 255 }, // 0x00009C90
	 { 1293, 177, 1112, 0, -424, 1312, 81, 72, 55, 255 }, // 0x00009CA0
	 { 1317, 226, 1099, 0, 1241, 226, 69, 62, 48, 255 }, // 0x00009CB0
	 { 1272, 230, 1124, 0, 3838, 169, 52, 49, 38, 255 }, // 0x00009CC0
	 { 1301, 204, 1117, 0, 2242, -488, 115, 102, 78, 255 }, // 0x00009CD0
};

Vtx_t _ganontika_room_6_vertices_00009CE0[3] = 
{
	 { 1293, 177, 1112, 0, -2104, 1024, 81, 72, 55, 255 }, // 0x00009CE0
	 { 1322, 163, 1139, 0, -594, 1710, 158, 142, 111, 255 }, // 0x00009CF0
	 { 1327, 186, 1136, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00009D00
};

Vtx_t _ganontika_room_6_vertices_00009D10[7] = 
{
	 { 1293, 177, 1112, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00009D10
	 { 1327, 141, 1136, 0, 692, 118, 100, 89, 67, 255 }, // 0x00009D20
	 { 1322, 163, 1139, 0, 33, 111, 158, 142, 111, 255 }, // 0x00009D30
	 { 1304, 138, 1106, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00009D40
	 { 1342, 110, 1084, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00009D50
	 { 1341, 124, 1128, 0, 628, 132, 100, 89, 67, 255 }, // 0x00009D60
	 { 1327, 141, 1136, 0, 1024, 8, 100, 89, 67, 255 }, // 0x00009D70
};

Vtx_t _ganontika_room_6_vertices_00009D80[4] = 
{
	 { 1341, 202, 1128, 0, 677, 1606, 158, 142, 111, 255 }, // 0x00009D80
	 { 1341, 210, 1114, 0, 812, 1150, 115, 102, 78, 255 }, // 0x00009D90
	 { 1317, 193, 1122, 0, -91, 1389, 69, 62, 48, 255 }, // 0x00009DA0
	 { 1327, 186, 1136, 0, 45, 1935, 158, 142, 111, 255 }, // 0x00009DB0
};

Vtx_t _ganontika_room_6_vertices_00009DC0[6] = 
{
	 { 1341, 210, 1114, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00009DC0
	 { 1320, 209, 1115, 0, 495, 612, 169, 154, 126, 255 }, // 0x00009DD0
	 { 1317, 193, 1122, 0, 1023, 1007, 69, 62, 48, 255 }, // 0x00009DE0
	 { 1323, 225, 1107, 0, -34, 217, 69, 62, 48, 255 }, // 0x00009DF0
	 { 1320, 209, 1115, 0, 495, 612, 169, 154, 126, 255 }, // 0x00009E00
	 { 1301, 204, 1117, 0, 1040, 389, 115, 102, 78, 255 }, // 0x00009E10
};

Vtx_t _ganontika_room_6_vertices_00009E20[7] = 
{
	 { 1327, 186, 1136, 0, -64, -70, 158, 142, 111, 255 }, // 0x00009E20
	 { 1334, 181, 1132, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00009E30
	 { 1345, 194, 1126, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00009E40
	 { 1341, 202, 1128, 0, 576, -70, 158, 142, 111, 255 }, // 0x00009E50
	 { 1342, 232, 1084, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00009E60
	 { 1317, 226, 1099, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00009E70
	 { 1323, 225, 1107, 0, 41, 721, 69, 62, 48, 255 }, // 0x00009E80
};

Vtx_t _ganontika_room_6_vertices_00009E90[8] = 
{
	 { 1317, 226, 1099, 0, -99, 713, 69, 62, 48, 255 }, // 0x00009E90
	 { 1301, 204, 1117, 0, 978, 1544, 115, 102, 78, 255 }, // 0x00009EA0
	 { 1323, 225, 1107, 0, -274, 1117, 69, 62, 48, 255 }, // 0x00009EB0
	 { 1360, 221, 1115, 0, -22, 1697, 169, 154, 126, 255 }, // 0x00009EC0
	 { 1342, 232, 1084, 0, -1045, 1929, 69, 62, 48, 255 }, // 0x00009ED0
	 { 1353, 220, 1120, 0, -42, 1476, 169, 154, 126, 255 }, // 0x00009EE0
	 { 1342, 232, 1084, 0, -1045, 1024, 69, 62, 48, 255 }, // 0x00009EF0
	 { 1341, 210, 1114, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00009F00
};

Vtx_t _ganontika_room_6_vertices_00009F10[3] = 
{
	 { 1342, 232, 1084, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00009F10
	 { 1323, 225, 1107, 0, 41, 721, 69, 62, 48, 255 }, // 0x00009F20
	 { 1341, 210, 1114, 0, 411, 176, 115, 102, 78, 255 }, // 0x00009F30
};

Vtx_t _ganontika_room_6_vertices_00009F40[4] = 
{
	 { 1351, 205, 1122, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00009F40
	 { 1361, 208, 1117, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x00009F50
	 { 1360, 221, 1115, 0, 1024, 24, 169, 154, 126, 255 }, // 0x00009F60
	 { 1353, 220, 1120, 0, 323, -39, 169, 154, 126, 255 }, // 0x00009F70
};

Vtx_t _ganontika_room_6_vertices_00009F80[4] = 
{
	 { 1341, 210, 1114, 0, -168, 1650, 115, 102, 78, 255 }, // 0x00009F80
	 { 1351, 205, 1122, 0, 127, 1457, 69, 62, 48, 255 }, // 0x00009F90
	 { 1353, 220, 1120, 0, -84, 1337, 169, 154, 126, 255 }, // 0x00009FA0
	 { 1341, 202, 1128, 0, 254, 1889, 158, 142, 111, 255 }, // 0x00009FB0
};

Vtx_t _ganontika_room_6_vertices_00009FC0[8] = 
{
	 { 1341, 124, 1128, 0, 576, -70, 100, 89, 67, 255 }, // 0x00009FC0
	 { 1345, 132, 1126, 0, 512, 1024, 147, 131, 97, 255 }, // 0x00009FD0
	 { 1334, 145, 1132, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00009FE0
	 { 1327, 141, 1136, 0, -64, -70, 100, 89, 67, 255 }, // 0x00009FF0
	 { 1329, 163, 1135, 0, 0, 1024, 147, 131, 97, 255 }, // 0x0000A000
	 { 1322, 163, 1139, 0, -64, -68, 158, 142, 111, 255 }, // 0x0000A010
	 { 1327, 141, 1136, 0, 574, -68, 100, 89, 67, 255 }, // 0x0000A020
	 { 1334, 145, 1132, 0, 510, 1024, 147, 131, 97, 255 }, // 0x0000A030
};

Vtx_t _ganontika_room_6_vertices_0000A040[25] = 
{
	 { 1345, 132, 1126, 0, 0, 1024, 147, 131, 97, 255 }, // 0x0000A040
	 { 1341, 124, 1128, 0, -64, -57, 100, 89, 67, 255 }, // 0x0000A050
	 { 1361, 118, 1117, 0, 576, -57, 100, 89, 67, 255 }, // 0x0000A060
	 { 1361, 127, 1117, 0, 512, 1024, 147, 131, 97, 255 }, // 0x0000A070
	 { 1380, 124, 1105, 0, 628, 132, 100, 89, 67, 255 }, // 0x0000A080
	 { 1361, 118, 1117, 0, 210, 112, 100, 89, 67, 255 }, // 0x0000A090
	 { 1342, 110, 1084, 0, 0, 1024, 69, 62, 48, 255 }, // 0x0000A0A0
	 { 1341, 124, 1128, 0, 628, 132, 100, 89, 67, 255 }, // 0x0000A0B0
	 { 1361, 127, 1117, 0, -1163, 1005, 69, 62, 48, 255 }, // 0x0000A0C0
	 { 1263, 162, 953, 0, 290, -507, 5, 5, 5, 255 }, // 0x0000A0D0
	 { 1345, 132, 1126, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x0000A0E0
	 { 1376, 132, 1108, 0, -736, 1019, 69, 62, 48, 255 }, // 0x0000A0F0
	 { 1334, 145, 1132, 0, -745, 967, 69, 62, 48, 255 }, // 0x0000A100
	 { 1263, 162, 953, 0, -373, -314, 5, 5, 5, 255 }, // 0x0000A110
	 { 1329, 163, 1135, 0, -13, 952, 69, 62, 48, 255 }, // 0x0000A120
	 { 1345, 132, 1126, 0, -1166, 986, 69, 62, 48, 255 }, // 0x0000A130
	 { 1334, 181, 1132, 0, 835, 947, 69, 62, 48, 255 }, // 0x0000A140
	 { 1263, 162, 953, 0, 417, -324, 5, 5, 5, 255 }, // 0x0000A150
	 { 1345, 194, 1126, 0, 1570, 951, 69, 62, 48, 255 }, // 0x0000A160
	 { 1263, 162, 953, 0, 0, -285, 5, 5, 5, 255 }, // 0x0000A170
	 { 1361, 199, 1117, 0, 1997, 965, 69, 62, 48, 255 }, // 0x0000A180
	 { 1376, 194, 1108, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x0000A190
	 { 1388, 181, 1101, 0, 1580, 1004, 69, 62, 48, 255 }, // 0x0000A1A0
	 { 1392, 163, 1099, 0, 848, 1018, 69, 62, 48, 255 }, // 0x0000A1B0
	 { 1388, 145, 1101, 0, 0, 1024, 69, 62, 48, 255 }, // 0x0000A1C0
};

Vtx_t _ganontika_room_6_vertices_0000A1D0[8] = 
{
	 { 1335, 110, 912, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A1D0
	 { 1430, 110, 1077, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A1E0
	 { 1335, 232, 912, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A1F0
	 { 1430, 232, 1077, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A200
	 { 850, 110, 1192, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A210
	 { 945, 110, 1357, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A220
	 { 850, 232, 1192, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A230
	 { 945, 232, 1357, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A240
};

Gfx _ganontika_room_6_dlist_0000A250[] =
{
	gsDPPipeSync(), // 0x0000A250
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000A258
	gsSPVertex(_ganontika_room_6_vertices_0000A1D0, 8, 0), // 0x0000A260
	gsSPCullDisplayList(0, 7), // 0x0000A268
	gsDPPipeSync(), // 0x0000A270
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000A278
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000A280
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000A288
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000A290
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A298
	gsDPLoadSync(), // 0x0000A2A0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A2A8
	gsDPPipeSync(), // 0x0000A2B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A2B8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A2C0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000A2C8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x0000A2D0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x0000A2D8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x0000A2E0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000A2E8
	gsSPVertex(_ganontika_room_6_vertices_00008B90, 25, 0), // 0x0000A2F0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x0000A2F8
	gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0), // 0x0000A300
	gsSP2Triangles(6, 5, 2, 0, 7, 6, 2, 0), // 0x0000A308
	gsSP2Triangles(8, 9, 10, 0, 7, 8, 10, 0), // 0x0000A310
	gsSP2Triangles(11, 12, 13, 0, 9, 11, 13, 0), // 0x0000A318
	gsSP2Triangles(14, 1, 15, 0, 16, 14, 15, 0), // 0x0000A320
	gsSP2Triangles(17, 18, 19, 0, 19, 18, 20, 0), // 0x0000A328
	gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0), // 0x0000A330
	gsDPPipeSync(), // 0x0000A338
	gsSPTexture(0, 0, 0, 0, 0), // 0x0000A340
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x0000A348
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x0000A350
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000A358
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000A360
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A368
	gsDPLoadSync(), // 0x0000A370
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A378
	gsDPPipeSync(), // 0x0000A380
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A388
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A390
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000A398
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x0000A3A0
	gsSPVertex(_ganontika_room_6_vertices_00008D20, 8, 0), // 0x0000A3A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A3B0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000A3B8
	gsDPPipeSync(), // 0x0000A3C0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000A3C8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A3D0
	gsDPLoadSync(), // 0x0000A3D8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A3E0
	gsDPPipeSync(), // 0x0000A3E8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A3F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A3F8
	gsSPVertex(_ganontika_room_6_vertices_00008DA0, 4, 0), // 0x0000A400
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x0000A408
	gsDPPipeSync(), // 0x0000A410
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CB00), // 0x0000A418
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x0000A420
	gsDPLoadSync(), // 0x0000A428
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A430
	gsDPPipeSync(), // 0x0000A438
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x0000A440
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A448
	gsSPVertex(_ganontika_room_6_vertices_00008DE0, 4, 0), // 0x0000A450
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A458
	gsDPPipeSync(), // 0x0000A460
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000A468
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A470
	gsDPLoadSync(), // 0x0000A478
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A480
	gsDPPipeSync(), // 0x0000A488
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A490
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A498
	gsSPVertex(_ganontika_room_6_vertices_00008E20, 3, 0), // 0x0000A4A0
	gsSP1Triangle(0, 1, 2, 0), // 0x0000A4A8
	gsDPPipeSync(), // 0x0000A4B0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000A4B8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A4C0
	gsDPLoadSync(), // 0x0000A4C8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A4D0
	gsDPPipeSync(), // 0x0000A4D8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A4E0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A4E8
	gsSPVertex(_ganontika_room_6_vertices_00008E50, 8, 0), // 0x0000A4F0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x0000A4F8
	gsSP1Triangle(5, 6, 7, 0), // 0x0000A500
	gsDPPipeSync(), // 0x0000A508
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000A510
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A518
	gsDPLoadSync(), // 0x0000A520
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A528
	gsDPPipeSync(), // 0x0000A530
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A538
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A540
	gsSPVertex(_ganontika_room_6_vertices_00008ED0, 7, 0), // 0x0000A548
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000A550
	gsSP1Triangle(3, 5, 6, 0), // 0x0000A558
	gsDPPipeSync(), // 0x0000A560
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CD00), // 0x0000A568
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x0000A570
	gsDPLoadSync(), // 0x0000A578
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A580
	gsDPPipeSync(), // 0x0000A588
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x0000A590
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A598
	gsSPVertex(_ganontika_room_6_vertices_00008F40, 6, 0), // 0x0000A5A0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x0000A5A8
	gsSP2Triangles(4, 1, 5, 0, 3, 4, 5, 0), // 0x0000A5B0
	gsDPPipeSync(), // 0x0000A5B8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000A5C0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A5C8
	gsDPLoadSync(), // 0x0000A5D0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A5D8
	gsDPPipeSync(), // 0x0000A5E0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A5E8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A5F0
	gsSPVertex(_ganontika_room_6_vertices_00008FA0, 4, 0), // 0x0000A5F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A600
	gsDPPipeSync(), // 0x0000A608
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000A610
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A618
	gsDPLoadSync(), // 0x0000A620
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A628
	gsDPPipeSync(), // 0x0000A630
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A638
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A640
	gsSPVertex(_ganontika_room_6_vertices_00008FE0, 7, 0), // 0x0000A648
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x0000A650
	gsSP2Triangles(4, 5, 0, 0, 6, 2, 1, 0), // 0x0000A658
	gsDPPipeSync(), // 0x0000A660
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000A668
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A670
	gsDPLoadSync(), // 0x0000A678
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A680
	gsDPPipeSync(), // 0x0000A688
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A690
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A698
	gsSPVertex(_ganontika_room_6_vertices_00009050, 3, 0), // 0x0000A6A0
	gsSP1Triangle(0, 1, 2, 0), // 0x0000A6A8
	gsDPPipeSync(), // 0x0000A6B0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000A6B8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A6C0
	gsDPLoadSync(), // 0x0000A6C8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A6D0
	gsDPPipeSync(), // 0x0000A6D8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A6E0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A6E8
	gsSPVertex(_ganontika_room_6_vertices_00009080, 6, 0), // 0x0000A6F0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000A6F8
	gsDPPipeSync(), // 0x0000A700
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000A708
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A710
	gsDPLoadSync(), // 0x0000A718
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A720
	gsDPPipeSync(), // 0x0000A728
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A730
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A738
	gsSPVertex(_ganontika_room_6_vertices_000090E0, 6, 0), // 0x0000A740
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000A748
	gsDPPipeSync(), // 0x0000A750
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000A758
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A760
	gsDPLoadSync(), // 0x0000A768
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A770
	gsDPPipeSync(), // 0x0000A778
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A780
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A788
	gsSPVertex(_ganontika_room_6_vertices_00009140, 20, 0), // 0x0000A790
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A798
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000A7A0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x0000A7A8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x0000A7B0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x0000A7B8
	gsDPPipeSync(), // 0x0000A7C0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000A7C8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A7D0
	gsDPLoadSync(), // 0x0000A7D8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A7E0
	gsDPPipeSync(), // 0x0000A7E8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A7F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A7F8
	gsSPVertex(_ganontika_room_6_vertices_00009280, 4, 0), // 0x0000A800
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A808
	gsDPPipeSync(), // 0x0000A810
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CB00), // 0x0000A818
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x0000A820
	gsDPLoadSync(), // 0x0000A828
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A830
	gsDPPipeSync(), // 0x0000A838
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x0000A840
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A848
	gsSPVertex(_ganontika_room_6_vertices_000092C0, 4, 0), // 0x0000A850
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A858
	gsDPPipeSync(), // 0x0000A860
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000A868
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A870
	gsDPLoadSync(), // 0x0000A878
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A880
	gsDPPipeSync(), // 0x0000A888
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A890
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A898
	gsSPVertex(_ganontika_room_6_vertices_00009300, 3, 0), // 0x0000A8A0
	gsSP1Triangle(0, 1, 2, 0), // 0x0000A8A8
	gsDPPipeSync(), // 0x0000A8B0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000A8B8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A8C0
	gsDPLoadSync(), // 0x0000A8C8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A8D0
	gsDPPipeSync(), // 0x0000A8D8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A8E0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A8E8
	gsSPVertex(_ganontika_room_6_vertices_00009330, 9, 0), // 0x0000A8F0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000A8F8
	gsSP1Triangle(6, 7, 8, 0), // 0x0000A900
	gsDPPipeSync(), // 0x0000A908
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000A910
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A918
	gsDPLoadSync(), // 0x0000A920
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A928
	gsDPPipeSync(), // 0x0000A930
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A938
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A940
	gsSPVertex(_ganontika_room_6_vertices_000093C0, 7, 0), // 0x0000A948
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000A950
	gsSP1Triangle(3, 5, 6, 0), // 0x0000A958
	gsDPPipeSync(), // 0x0000A960
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CD00), // 0x0000A968
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x0000A970
	gsDPLoadSync(), // 0x0000A978
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A980
	gsDPPipeSync(), // 0x0000A988
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x0000A990
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A998
	gsSPVertex(_ganontika_room_6_vertices_00009430, 6, 0), // 0x0000A9A0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x0000A9A8
	gsSP2Triangles(4, 3, 5, 0, 4, 5, 1, 0), // 0x0000A9B0
	gsDPPipeSync(), // 0x0000A9B8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000A9C0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A9C8
	gsDPLoadSync(), // 0x0000A9D0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A9D8
	gsDPPipeSync(), // 0x0000A9E0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A9E8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A9F0
	gsSPVertex(_ganontika_room_6_vertices_00009490, 4, 0), // 0x0000A9F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AA00
	gsDPPipeSync(), // 0x0000AA08
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000AA10
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AA18
	gsDPLoadSync(), // 0x0000AA20
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AA28
	gsDPPipeSync(), // 0x0000AA30
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AA38
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AA40
	gsSPVertex(_ganontika_room_6_vertices_000094D0, 7, 0), // 0x0000AA48
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x0000AA50
	gsSP2Triangles(2, 5, 3, 0, 1, 0, 6, 0), // 0x0000AA58
	gsDPPipeSync(), // 0x0000AA60
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000AA68
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AA70
	gsDPLoadSync(), // 0x0000AA78
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AA80
	gsDPPipeSync(), // 0x0000AA88
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AA90
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AA98
	gsSPVertex(_ganontika_room_6_vertices_00009540, 3, 0), // 0x0000AAA0
	gsSP1Triangle(0, 1, 2, 0), // 0x0000AAA8
	gsDPPipeSync(), // 0x0000AAB0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000AAB8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AAC0
	gsDPLoadSync(), // 0x0000AAC8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AAD0
	gsDPPipeSync(), // 0x0000AAD8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AAE0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AAE8
	gsSPVertex(_ganontika_room_6_vertices_00009570, 6, 0), // 0x0000AAF0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000AAF8
	gsDPPipeSync(), // 0x0000AB00
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000AB08
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AB10
	gsDPLoadSync(), // 0x0000AB18
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AB20
	gsDPPipeSync(), // 0x0000AB28
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AB30
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AB38
	gsSPVertex(_ganontika_room_6_vertices_000095D0, 6, 0), // 0x0000AB40
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000AB48
	gsDPPipeSync(), // 0x0000AB50
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000AB58
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AB60
	gsDPLoadSync(), // 0x0000AB68
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AB70
	gsDPPipeSync(), // 0x0000AB78
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AB80
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AB88
	gsSPVertex(_ganontika_room_6_vertices_00009630, 16, 0), // 0x0000AB90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AB98
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000ABA0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x0000ABA8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x0000ABB0
	gsDPPipeSync(), // 0x0000ABB8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000ABC0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000ABC8
	gsDPLoadSync(), // 0x0000ABD0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000ABD8
	gsDPPipeSync(), // 0x0000ABE0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000ABE8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000ABF0
	gsSPVertex(_ganontika_room_6_vertices_00009730, 6, 0), // 0x0000ABF8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000AC00
	gsDPPipeSync(), // 0x0000AC08
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000AC10
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AC18
	gsDPLoadSync(), // 0x0000AC20
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AC28
	gsDPPipeSync(), // 0x0000AC30
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AC38
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AC40
	gsSPVertex(_ganontika_room_6_vertices_00009790, 6, 0), // 0x0000AC48
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000AC50
	gsDPPipeSync(), // 0x0000AC58
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000AC60
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AC68
	gsDPLoadSync(), // 0x0000AC70
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AC78
	gsDPPipeSync(), // 0x0000AC80
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AC88
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AC90
	gsSPVertex(_ganontika_room_6_vertices_000097F0, 3, 0), // 0x0000AC98
	gsSP1Triangle(0, 1, 2, 0), // 0x0000ACA0
	gsDPPipeSync(), // 0x0000ACA8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000ACB0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000ACB8
	gsDPLoadSync(), // 0x0000ACC0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000ACC8
	gsDPPipeSync(), // 0x0000ACD0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000ACD8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000ACE0
	gsSPVertex(_ganontika_room_6_vertices_00009820, 7, 0), // 0x0000ACE8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000ACF0
	gsSP2Triangles(5, 6, 3, 0, 5, 2, 1, 0), // 0x0000ACF8
	gsDPPipeSync(), // 0x0000AD00
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000AD08
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AD10
	gsDPLoadSync(), // 0x0000AD18
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AD20
	gsDPPipeSync(), // 0x0000AD28
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AD30
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AD38
	gsSPVertex(_ganontika_room_6_vertices_00009890, 4, 0), // 0x0000AD40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AD48
	gsDPPipeSync(), // 0x0000AD50
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CD00), // 0x0000AD58
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x0000AD60
	gsDPLoadSync(), // 0x0000AD68
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AD70
	gsDPPipeSync(), // 0x0000AD78
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x0000AD80
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AD88
	gsSPVertex(_ganontika_room_6_vertices_000098D0, 6, 0), // 0x0000AD90
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x0000AD98
	gsSP2Triangles(4, 5, 3, 0, 4, 0, 5, 0), // 0x0000ADA0
	gsDPPipeSync(), // 0x0000ADA8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000ADB0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000ADB8
	gsDPLoadSync(), // 0x0000ADC0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000ADC8
	gsDPPipeSync(), // 0x0000ADD0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000ADD8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000ADE0
	gsSPVertex(_ganontika_room_6_vertices_00009930, 7, 0), // 0x0000ADE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000ADF0
	gsSP1Triangle(4, 5, 6, 0), // 0x0000ADF8
	gsDPPipeSync(), // 0x0000AE00
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000AE08
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AE10
	gsDPLoadSync(), // 0x0000AE18
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AE20
	gsDPPipeSync(), // 0x0000AE28
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AE30
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AE38
	gsSPVertex(_ganontika_room_6_vertices_000099A0, 9, 0), // 0x0000AE40
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000AE48
	gsSP1Triangle(6, 7, 8, 0), // 0x0000AE50
	gsDPPipeSync(), // 0x0000AE58
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000AE60
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AE68
	gsDPLoadSync(), // 0x0000AE70
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AE78
	gsDPPipeSync(), // 0x0000AE80
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AE88
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AE90
	gsSPVertex(_ganontika_room_6_vertices_00009A30, 3, 0), // 0x0000AE98
	gsSP1Triangle(0, 1, 2, 0), // 0x0000AEA0
	gsDPPipeSync(), // 0x0000AEA8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CB00), // 0x0000AEB0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x0000AEB8
	gsDPLoadSync(), // 0x0000AEC0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AEC8
	gsDPPipeSync(), // 0x0000AED0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x0000AED8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AEE0
	gsSPVertex(_ganontika_room_6_vertices_00009A60, 4, 0), // 0x0000AEE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AEF0
	gsDPPipeSync(), // 0x0000AEF8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000AF00
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AF08
	gsDPLoadSync(), // 0x0000AF10
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AF18
	gsDPPipeSync(), // 0x0000AF20
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AF28
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AF30
	gsSPVertex(_ganontika_room_6_vertices_00009AA0, 4, 0), // 0x0000AF38
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x0000AF40
	gsDPPipeSync(), // 0x0000AF48
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000AF50
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AF58
	gsDPLoadSync(), // 0x0000AF60
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AF68
	gsDPPipeSync(), // 0x0000AF70
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AF78
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AF80
	gsSPVertex(_ganontika_room_6_vertices_00009AE0, 20, 0), // 0x0000AF88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AF90
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000AF98
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x0000AFA0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x0000AFA8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x0000AFB0
	gsDPPipeSync(), // 0x0000AFB8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000AFC0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AFC8
	gsDPLoadSync(), // 0x0000AFD0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AFD8
	gsDPPipeSync(), // 0x0000AFE0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AFE8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AFF0
	gsSPVertex(_ganontika_room_6_vertices_00009C20, 6, 0), // 0x0000AFF8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000B000
	gsDPPipeSync(), // 0x0000B008
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000B010
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000B018
	gsDPLoadSync(), // 0x0000B020
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000B028
	gsDPPipeSync(), // 0x0000B030
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000B038
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B040
	gsSPVertex(_ganontika_room_6_vertices_00009C80, 6, 0), // 0x0000B048
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000B050
	gsDPPipeSync(), // 0x0000B058
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000B060
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000B068
	gsDPLoadSync(), // 0x0000B070
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000B078
	gsDPPipeSync(), // 0x0000B080
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000B088
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B090
	gsSPVertex(_ganontika_room_6_vertices_00009CE0, 3, 0), // 0x0000B098
	gsSP1Triangle(0, 1, 2, 0), // 0x0000B0A0
	gsDPPipeSync(), // 0x0000B0A8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000B0B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000B0B8
	gsDPLoadSync(), // 0x0000B0C0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000B0C8
	gsDPPipeSync(), // 0x0000B0D0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000B0D8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B0E0
	gsSPVertex(_ganontika_room_6_vertices_00009D10, 7, 0), // 0x0000B0E8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000B0F0
	gsSP2Triangles(5, 6, 3, 0, 1, 0, 3, 0), // 0x0000B0F8
	gsDPPipeSync(), // 0x0000B100
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000B108
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000B110
	gsDPLoadSync(), // 0x0000B118
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000B120
	gsDPPipeSync(), // 0x0000B128
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000B130
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B138
	gsSPVertex(_ganontika_room_6_vertices_00009D80, 4, 0), // 0x0000B140
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B148
	gsDPPipeSync(), // 0x0000B150
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CD00), // 0x0000B158
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x0000B160
	gsDPLoadSync(), // 0x0000B168
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000B170
	gsDPPipeSync(), // 0x0000B178
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x0000B180
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B188
	gsSPVertex(_ganontika_room_6_vertices_00009DC0, 6, 0), // 0x0000B190
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x0000B198
	gsSP2Triangles(4, 5, 2, 0, 4, 3, 5, 0), // 0x0000B1A0
	gsDPPipeSync(), // 0x0000B1A8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000B1B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000B1B8
	gsDPLoadSync(), // 0x0000B1C0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000B1C8
	gsDPPipeSync(), // 0x0000B1D0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000B1D8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B1E0
	gsSPVertex(_ganontika_room_6_vertices_00009E20, 7, 0), // 0x0000B1E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B1F0
	gsSP1Triangle(4, 5, 6, 0), // 0x0000B1F8
	gsDPPipeSync(), // 0x0000B200
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000B208
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000B210
	gsDPLoadSync(), // 0x0000B218
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000B220
	gsDPPipeSync(), // 0x0000B228
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000B230
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B238
	gsSPVertex(_ganontika_room_6_vertices_00009E90, 8, 0), // 0x0000B240
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000B248
	gsSP1Triangle(6, 7, 5, 0), // 0x0000B250
	gsDPPipeSync(), // 0x0000B258
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000B260
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000B268
	gsDPLoadSync(), // 0x0000B270
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000B278
	gsDPPipeSync(), // 0x0000B280
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000B288
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B290
	gsSPVertex(_ganontika_room_6_vertices_00009F10, 3, 0), // 0x0000B298
	gsSP1Triangle(0, 1, 2, 0), // 0x0000B2A0
	gsDPPipeSync(), // 0x0000B2A8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000CB00), // 0x0000B2B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x0000B2B8
	gsDPLoadSync(), // 0x0000B2C0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000B2C8
	gsDPPipeSync(), // 0x0000B2D0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x0000B2D8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B2E0
	gsSPVertex(_ganontika_room_6_vertices_00009F40, 4, 0), // 0x0000B2E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B2F0
	gsDPPipeSync(), // 0x0000B2F8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000C900), // 0x0000B300
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000B308
	gsDPLoadSync(), // 0x0000B310
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000B318
	gsDPPipeSync(), // 0x0000B320
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000B328
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B330
	gsSPVertex(_ganontika_room_6_vertices_00009F80, 4, 0), // 0x0000B338
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x0000B340
	gsDPPipeSync(), // 0x0000B348
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000B350
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000B358
	gsDPLoadSync(), // 0x0000B360
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000B368
	gsDPPipeSync(), // 0x0000B370
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000B378
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B380
	gsSPVertex(_ganontika_room_6_vertices_00009FC0, 8, 0), // 0x0000B388
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B390
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000B398
	gsDPPipeSync(), // 0x0000B3A0
	gsSPTexture(0, 0, 0, 0, 0), // 0x0000B3A8
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x0000B3B0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x0000B3B8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000B3C0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000D700), // 0x0000B3C8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000B3D0
	gsDPLoadSync(), // 0x0000B3D8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000B3E0
	gsDPPipeSync(), // 0x0000B3E8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000B3F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B3F8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000B400
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x0000B408
	gsSPVertex(_ganontika_room_6_vertices_0000A040, 25, 0), // 0x0000B410
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B418
	gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0), // 0x0000B420
	gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0), // 0x0000B428
	gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0), // 0x0000B430
	gsSP2Triangles(16, 17, 18, 0, 16, 14, 17, 0), // 0x0000B438
	gsSP2Triangles(19, 20, 18, 0, 19, 21, 20, 0), // 0x0000B440
	gsSP2Triangles(19, 22, 21, 0, 19, 23, 22, 0), // 0x0000B448
	gsSP2Triangles(19, 24, 23, 0, 19, 11, 24, 0), // 0x0000B450
	gsSPEndDisplayList(), // 0x0000B458
};

static u8 unaccountedB460[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x09, 0xE0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x15, 0xE0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x18, 0xF8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0x18, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x23, 0xA0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2C, 0x20, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x36, 0x40, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x43, 0x08, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4E, 0x30, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x58, 0x50, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x61, 0x68, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x79, 0x80, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA2, 0x50, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _ganontika_room_6_tex_0000B4E0[] = 
{
	0x00008C5FAD659CE3, 0x73992107398D4A0F, 0x6B5729495293C62D, 0xBDEB841D5AD50000,  // 0x0000B4E0 
};

u64 _ganontika_room_6_tex_0000B500[] = 
{
	0x2C2C09093B3B3B3B, 0x3B2C182516161675, 0x5B422025233B233B, 0x2323383B3B3B0938,  // 0x0000B500 
	0x000009003B3B233B, 0x3B0E061010101016, 0x0D0D0D103B003B3B, 0x0909093B0009093B,  // 0x0000B520 
	0x0C060C0606060606, 0x181818180C0C080C, 0x080C10063B180106, 0x0601060C06060601,  // 0x0000B540 
	0x252513251310100C, 0x08103B061010251A, 0x25420D0C230E0C13, 0x1025251313251313,  // 0x0000B560 
	0x1616422516202020, 0x20251806100C1B25, 0x420D3A0F00082520, 0x4220162016424220,  // 0x0000B580 
	0x200D422016202020, 0x0D200F06183B1806, 0x063B01060610160D, 0x200D162525252510,  // 0x0000B5A0 
	0x18060C06060C060C, 0x0C06180E00181016, 0x42063B3B0E18010E, 0x0618180606060C06,  // 0x0000B5C0 
	0x0610250825250C25, 0x250C251006061B20, 0x0D06060C06102506, 0x1610062510062525,  // 0x0000B5E0 
	0x10428B130D0D130D, 0x8B258B200C0C100D, 0x0D080F10100D0D10, 0x0D16100D2508578B,  // 0x0000B600 
	0x0C250D0825250820, 0x200816250601108B, 0x33010C1A0C252008, 0x25100C2525082020,  // 0x0000B620 
	0x1806100610100C25, 0x2008100C1801108B, 0x33060C0C180C0C18, 0x1006060C0C060F08,  // 0x0000B640 
	0x0909140900002309, 0x0000140900181033, 0xA301003B233B0900, 0x3B3B000923092300,  // 0x0000B660 
	0x0714496969496969, 0x4949494909060F8B, 0x3301070714146949, 0x4949694969491400,  // 0x0000B680 
	0x0756140007090914, 0x090914491406108B, 0x8B18140714070709, 0x0907091407141707,  // 0x0000B6A0 
	0x0303030300170000, 0x0300071469181B57, 0x0D00690700001703, 0x0702000303070244,  // 0x0000B6C0 
	0x0303170003030202, 0x0203000949001B20, 0x25010744021E0317, 0x0717020202140702,  // 0x0000B6E0 
	0x1417140300000203, 0x0303000769091020, 0x2518071700070707, 0x0756000007141414,  // 0x0000B700 
	0x1407170714140914, 0x1414141469140125, 0x0869691414070756, 0x1707070707071414,  // 0x0000B720 
	0x311E02070756037E, 0x1E1E1E0307093B0C, 0x3B00040417033185, 0x3D1E853D1E3D1E15,  // 0x0000B740 
	0x0402020209030703, 0x02021E0202140000, 0x0003173D1E561502, 0x0204020204010202,  // 0x0000B760 
	0x17027E02151E0304, 0x02041E0202000717, 0x0303031E44563104, 0x0203040203030303,  // 0x0000B780 
	0x02021E030231032E, 0x0244020203070709, 0x0044020202070402, 0x0303020303030302,  // 0x0000B7A0 
	0x02311E1E3D3D0715, 0x0203030300070907, 0x03021E1744143103, 0x0303030303030302,  // 0x0000B7C0 
	0x020204021E3D0704, 0x4403030303170003, 0x0202024407140402, 0x0303020303030302,  // 0x0000B7E0 
	0x02020204031E0704, 0x0303030303030003, 0x0202441717143D03, 0x0302030302031703,  // 0x0000B800 
	0x0404021E1E3D0703, 0x0003030303000303, 0x0202030407140403, 0x0203030203031703,  // 0x0000B820 
	0x7E04041E021E0702, 0x0003030303031703, 0x0202021707070203, 0x0303030303030707,  // 0x0000B840 
	0x04041E04041E0702, 0x0303030303000302, 0x4404031707070202, 0x0203020203000717,  // 0x0000B860 
	0x020203037E030702, 0x4403020002001700, 0x0303021703070403, 0x0203030203170707,  // 0x0000B880 
	0x0202031E04020902, 0x0302030203021717, 0x1717020303070203, 0x0203030203171402,  // 0x0000B8A0 
	0x030303027E030702, 0x4403020002001700, 0x0303021703070403, 0x0203030203170707,  // 0x0000B8C0 
	0x5656077D00071407, 0x0756560756071409, 0x0909070707140707, 0x0707070707091400,  // 0x0000B8E0 
};

u64 _ganontika_room_6_tex_0000B900[] = 
{
	0x201008160B40400D, 0x0B280B0D16080825, 0x280B0D0B0B0B0B0B, 0x0B200C0D20200D20,  // 0x0000B900 
	0x0B10080808161620, 0x0B13161310101016, 0x3E0B0B3E0D0D0D16, 0x0B3A400B20160D0D,  // 0x0000B920 
	0x2010080D13081320, 0x1316131020201040, 0x2A0B0D0D0B0B3A20, 0x0B0B402025132016,  // 0x0000B940 
	0x10080D0D0D080810, 0x130B2A2A5A5A0D10, 0x132A160B0B3E0B0D, 0x0B0B0C1313132513,  // 0x0000B960 
	0x0806101308081016, 0x400B5A5A5A2A2A25, 0x100B2A0B0B0B201D, 0x1D0B0C0610131310,  // 0x0000B980 
	0x060E060808133A2A, 0x0B0B0B2A28283E0B, 0x1010282A0B0B0B1D, 0x400C08080808080C,  // 0x0000B9A0 
	0x080C060C100D2A2A, 0x1D0D1D0B3A3E0B0D, 0x131013283A0B1D68, 0x060E080818060606,  // 0x0000B9C0 
	0x0D2A160E08200B0B, 0x0B3A283E28283E0B, 0x161008400B0B1306, 0x0E63434006180610,  // 0x0000B9E0 
	0x0D2A2A130610250D, 0x3E0B2A282A2A280D, 0x20080C0813130606, 0x162A1D0B40100813,  // 0x0000BA00 
	0x0D0B1D1D630E0813, 0x160D282A2A2A3E10, 0x1308180606060608, 0x1D1D0B0B1D680808,  // 0x0000BA20 
	0x0D3E3A1D0D100108, 0x10163E283E0D200B, 0x2A2A0B130E0E401D, 0x1D0B200B0B280813,  // 0x0000BA40 
	0x0D3E2020160B0D06, 0x0813160D16130B28, 0x2828280B10068E1D, 0x0B0B0D0B0D0B1008,  // 0x0000BA60 
	0x1616130D3E282A0D, 0x0C0C1013080B1D1D, 0x0B0B1D0D130E0B0B, 0x0D0B0D0D20161308,  // 0x0000BA80 
	0x25100D0B0B0B282A, 0x1618060610280B43, 0x0D3A0B0B16080B0B, 0x160B0B4013161306,  // 0x0000BAA0 
	0x16203E0B0D3E3A2A, 0x0B13060C0B430B0D, 0x3E282A0B0D250B0B, 0x0D680B0B130D100C,  // 0x0000BAC0 
	0x160B0B0B0D0D0D0D, 0x1D080C0B1D0B0B0D, 0x0B1D2A280B132F0B, 0x0B0B0B0B400D1308,  // 0x0000BAE0 
	0x130B0B0B0B0D0D0B, 0x0B06081D1D3E0D3E, 0x2A1D0B0B6808188E, 0x1D0D680D680B1310,  // 0x0000BB00 
	0x080B0D3E0B0B0D0B, 0x0B06202A283A3A3A, 0x2A2A0B2A0B0B0608, 0x1D0B0B0D0D161308,  // 0x0000BB20 
	0x080B0B200D0D0B0B, 0x10061D682828282A, 0x1D2A28282A0B0B08, 0x1643160B0D20130C,  // 0x0000BB40 
	0x130B0B0D160D0B0B, 0x08060B0B282A2A28, 0x0B282A28282A680D, 0x0C8E0B0B0B131008,  // 0x0000BB60 
	0x080B0D0D0B0B0B68, 0x080C0D0B28280B0D, 0x3A282A2A5A2A0B0B, 0x0C130B0D16401606,  // 0x0000BB80 
	0x08080D680B0B0B08, 0x0C0808200D282A3E, 0x1D1D282828280B0B, 0x1606160B68400808,  // 0x0000BBA0 
	0x130C06400B131020, 0x20161006160B0B0B, 0x0B0B0B0B0D0B0B1D, 0x1608080840080D0D,  // 0x0000BBC0 
	0x6813080E080D3A28, 0x3A0B0B1308130D16, 0x0B0D131613131316, 0x102501061316130D,  // 0x0000BBE0 
	0x161608180D2A8A28, 0x0B3E282813060608, 0x0C080D0D0B0B0B0B, 0x1D0B1608160D0D0D,  // 0x0000BC00 
	0x250B0C100B2A5A5A, 0x5A5A905A3A100E08, 0x08680B43430B0B1D, 0x1D1D1D131316160D,  // 0x0000BC20 
	0x0B1606130D1D2A2A, 0x8A8A8A8A5A2A1308, 0x160D0B0D2A1D1D1D, 0x5A5A1D0B0C130D0D,  // 0x0000BC40 
	0x0D1008160B2A2A2A, 0x2A5A5A5A9028130B, 0x0B0B0B1D0B0B5A8A, 0x5A8A901D130C130D,  // 0x0000BC60 
	0x0D080610285A8A5A, 0x2A3E2A1D1D0B161D, 0x0B0D1D1D431D8A5A, 0x2A1D1D0B3A08130D,  // 0x0000BC80 
	0x1308131D1D5A8A2A, 0x2A2A1D282A0B250B, 0x0B0B0B281D1D5A90, 0x1D1D1D432A3E1313,  // 0x0000BCA0 
	0x13100D281D2A5A2A, 0x2A1D2A8A1D200B0B, 0x0B43681D0B1D5A1D, 0x5A1D0B283E3E2508,  // 0x0000BCC0 
	0x1313201D1D5A2A2A, 0x3E8A2A0B0D13130B, 0x0B1D0B1D1D90901D, 0x901D1D0B8E130808,  // 0x0000BCE0 
	0x0D13161D1D1D5A2A, 0x1D2A280B0D100D1D, 0x1D0B681D1D901D1D, 0x1D2A1D8E36060820,  // 0x0000BD00 
	0x0B16131D2A2A2A2A, 0x280B0B1D0B100D1D, 0x1D0B0B1D2A1D1D1D, 0x1D5A1D0806130B28,  // 0x0000BD20 
	0x2813132A1D5A1D68, 0x430B1D431D250B0B, 0x1D1D0B0B1D0B1D1D, 0x2A1D36060608200B,  // 0x0000BD40 
	0x28130D1D0B1D1D0B, 0x0D1D2A1D28130B3A, 0x281D4343435A0B1D, 0x1D08061025081016,  // 0x0000BD60 
	0x1010160B0B1D0B0B, 0x1D1D1D1D0D131316, 0x0D0B430B282A1D1D, 0x4006100D43680C10,  // 0x0000BD80 
	0x0608250D202A0B0B, 0x1D1D1D3E10080808, 0x130D0B0D8E1D8E40, 0x06100B1D0D0B1308,  // 0x0000BDA0 
	0x06060820160B0D1D, 0x1D1D161008080601, 0x0C1620162508080C, 0x080B1D0B200B0B10,  // 0x0000BDC0 
	0x081313080813160D, 0x0D13130D1D5A430D, 0x08060810100E0C10, 0x0D430B20200B0B10,  // 0x0000BDE0 
	0x080D0B1606060808, 0x08160B9090901D90, 0x1D0C0E06060C100B, 0x1D0D202020680D08,  // 0x0000BE00 
	0x160B28280B131010, 0x0B1D0B1D1D0B1D1D, 0x1D1D100E0E130B1D, 0x0D0D201616400D08,  // 0x0000BE20 
	0x130D0B0B0B0D1316, 0x5A1D0B0B1D0B0B1D, 0x1D1D161306081D0D, 0x0B0D0D20160D0D08,  // 0x0000BE40 
	0x0D1D1D0B1D1D0B13, 0x0B0D680B0B0B0B1D, 0x0B901D1608100B0B, 0x0D200D0B680D1308,  // 0x0000BE60 
	0x0D3E0B1D1D1D5A13, 0x431D0B160B0D1D1D, 0x1D1D0B1D10080B68, 0x0D680B0D16201310,  // 0x0000BE80 
	0x0D3E0B2A2A1D1D13, 0x3A430B0B0D0D0B68, 0x1D1D1D0D16061D0D, 0x0D0D1616160D160C,  // 0x0000BEA0 
	0x133A4343282A1D0D, 0x13430B0B0B160D0B, 0x0B1D1D0D16081D0D, 0x0D0D160D0D0D2010,  // 0x0000BEC0 
	0x080B0D0B282A5A0B, 0x130B0B0B0B680D0D, 0x430B0B0D08161D68, 0x0D20160D0B0D2020,  // 0x0000BEE0 
	0x2013160D0B1D1D0B, 0x130D0B0B0B430B0D, 0x0B0B1D0B08430B40, 0x200B0D0D0D13160B,  // 0x0000BF00 
	0x28130D0B0D1D1D0B, 0x081668680B0B1D0D, 0x0D680B0D08134008, 0x0816130B0D681620,  // 0x0000BF20 
	0x0D080D0D200B0B0D, 0x1013160D1D0B0B0B, 0x0B0D0B1308080C08, 0x060610251616160D,  // 0x0000BF40 
	0x250C080B200B1613, 0x10131320680B0B3E, 0x0D16100608060E06, 0x060606060C081613,  // 0x0000BF60 
	0x2525080808101310, 0x1010131013161616, 0x08080E0C08080840, 0x0B1D1D8E360C1620,  // 0x0000BF80 
	0x0808080C0810130B, 0x282A0D1010130806, 0x0C0C1010130B0B0B, 0x1D430B1D1D1D0B16,  // 0x0000BFA0 
	0x06080C1016431D5A, 0x0B1D0B280D100E0E, 0x08160D13080B1D2A, 0x1D0B0D160B0B1308,  // 0x0000BFC0 
	0x060C1313680B0B0B, 0x0B2A2A283E0D0C13, 0x200B0B0D08131D0B, 0x0B0D20161620430B,  // 0x0000BFE0 
	0x0C10130B130D0B68, 0x2A2A2A3E280B100D, 0x0B0B0D0D08131D1D, 0x0D0D0D0D68203E0B,  // 0x0000C000 
	0x0825130D0B200B2A, 0x2A2A2A2820680C1D, 0x200D0B0B20080B2A, 0x430D0B200D200B0B,  // 0x0000C020 
	0x0C2520200D0B0D16, 0x0B3A2A2A0D40101D, 0x0D0D0B280B10160B, 0x2A0B0B2020160B0D,  // 0x0000C040 
	0x080D0D0B3E2A2828, 0x282A282A0D0B0828, 0x3E3A3A0D13080816, 0x1D1D0B1613251613,  // 0x0000C060 
	0x0C250D403E2A5A0B, 0x0B2A3A3E0D0B101D, 0x0B3E201313130813, 0x161D0D0D13201308,  // 0x0000C080 
	0x081016160B3E3E3E, 0x3E3E0B3A3E0B100B, 0x0B131368160B2010, 0x131D0B2008101010,  // 0x0000C0A0 
	0x101016160B0B0B0D, 0x0B2A2A0B3A0B0813, 0x13200B1D0B20280D, 0x1013401008131620,  // 0x0000C0C0 
	0x131313163E160D0B, 0x3E2A2A2828100810, 0x0D2A0B0D20201628, 0x2010101013160D0B,  // 0x0000C0E0 
};

u64 _ganontika_room_6_tex_0000C100[] = 
{
	0x1111589635AE1D96, 0x3535301105051111, 0x11050A0A050A0A0A, 0x0A0A0A0A0A0A0505,  // 0x0000C100 
	0x111111050A0A050A, 0x0A0A0A0A0A0A0A05, 0x1111051105111105, 0x1111111111111111,  // 0x0000C120 
	0x11583535583E678B, 0x353558050A0A0A11, 0x111111110A0A0A0A, 0x0A6F6F0A0A0A0A0A,  // 0x0000C140 
	0x0511111111050A0A, 0x0A0A0A6F6F0A0A05, 0x111111110511110A, 0x0505111111111111,  // 0x0000C160 
	0x11576A9658586D8A, 0x3E6B11050A0A0A0A, 0x0511111105050A0A, 0x0A0A0A0A0A0A0A0A,  // 0x0000C180 
	0x0A05051111110505, 0x0A0A0A0A0A050505, 0x050511110505050A, 0x050A050505050505,  // 0x0000C1A0 
	0x1157206A5858B0A1, 0x8A4235050A0A0A0A, 0x05050511110A0A0A, 0x6F6F0A1111110A0A,  // 0x0000C1C0 
	0x0A0A05050511110A, 0x0A6F6F6F0A0A0505, 0x0A05111111111105, 0x11050A0A0A0A0A0A,  // 0x0000C1E0 
	0x11587168116A96C0, 0xA15835050A0A0505, 0x05050505050A0A6F, 0x0A0A0A11110A0A0A,  // 0x0000C200 
	0x050505050505050A, 0x6F6F0A0A050A0A0A, 0x050A050505050511, 0x11050A0A0A0A0A0A,  // 0x0000C220 
	0x111157A63E579CAE, 0x5758110505050A0A, 0x0A0A0A0A050A0A0A, 0x0505050505050505,  // 0x0000C240 
	0x0A0A0A0A0A05050A, 0x0A0A050505050505, 0x0A0A0A0A05050505, 0x05050A0A050A0A05,  // 0x0000C260 
	0x111111419C9CA85A, 0x8A58350505050A0A, 0x0A0A05050A0A0A05, 0x050A050A0A0A0505,  // 0x0000C280 
	0x0A0A0A0A05050A0A, 0x0A05050A05050505, 0x050A0A0A0A050505, 0x05050A05050A0505,  // 0x0000C2A0 
	0x11115858ACAE9F46, 0x2AAB5811050A0A0A, 0x051105050A0A0505, 0x0A0A0A0A0A0A050A,  // 0x0000C2C0 
	0x0A0A051105050A0A, 0x05050A0A0A050511, 0x11050A0A0A0A0505, 0x050A0A05050A0505,  // 0x0000C2E0 
	0x11111157C14E5858, 0x587158056F0A0A05, 0x1111110505051111, 0x11050A0A0A6F6F0A,  // 0x0000C300 
	0x0A11111111050505, 0x111111050A0A0505, 0x05050A0A0A0A0A11, 0x0A0A050505050505,  // 0x0000C320 
	0x11585835ACAB5858, 0x586758056F0A0511, 0x050A0A0A11111111, 0x1111050A0A6F6F0A,  // 0x0000C340 
	0x0511050A0A0A1111, 0x1111111105050505, 0x0505050A0A0A050A, 0x0A05111105111105,  // 0x0000C360 
	0x11585889A19CB558, 0x9F7111050A0A0505, 0x0A0A0A0A05050505, 0x0505110A0A6F0A0A,  // 0x0000C380 
	0x05050A0A0A0A0505, 0x050505051105050A, 0x0A05050A0A0A0A0A, 0x0A0A051105051105,  // 0x0000C3A0 
	0x11112B0D96A89C4D, 0xA8A130110505050A, 0x05050505050A0A0A, 0x0A0A050A0A0A0505,  // 0x0000C3C0 
	0x0A0A05050505050A, 0x0A0A0A0A0511050A, 0x0A0A050A0A0A0A0A, 0x0A0A05050A05050A,  // 0x0000C3E0 
	0x116A0B6B1196EA9C, 0xA111051105050505, 0x0511110A0A0A0A0A, 0x0505050505050505,  // 0x0000C400 
	0x05050511110A0A0A, 0x0A0A050505050505, 0x0A0A0A05050A6F0A, 0x05050A6F0A0A6F0A,  // 0x0000C420 
	0x115A6A113535AA9C, 0x7111050505050505, 0x111111050A0A0A0A, 0x0511051111110505,  // 0x0000C440 
	0x0511111111110A0A, 0x0A0A051105050505, 0x0A0A0511050A0A11, 0x11056F0A0A6F0A0A,  // 0x0000C460 
	0x72675B1196359F71, 0xA66A110505050505, 0x05050505050A0A05, 0x1111111111110505,  // 0x0000C480 
	0x050505050505050A, 0x0A0511111105050A, 0x0505051105051111, 0x050A6F0A056F0A05,  // 0x0000C4A0 
	0x11414158585271D8, 0x9CA62B110A050A0A, 0x0A0A0A0A05050505, 0x1111110A0A050505,  // 0x0000C4C0 
	0x0A0A0A0A0A0A0505, 0x050511111111050A, 0x051111050511110A, 0x6F0A0A11110A1111,  // 0x0000C4E0 
	0x1158679558A89C9F, 0x8BAB5B05050A0A05, 0x050A0A0A05050505, 0x0505050A0A0A050A,  // 0x0000C500 
	0x0A05050A0A0A0505, 0x0505050505050505, 0x111111111111050A, 0x0A0A051111051111,  // 0x0000C520 
	0x113CC06D58A89F58, 0x113E3E1105050505, 0x05050A0A0A050505, 0x050A050A0A050505,  // 0x0000C540 
	0x050505050A0A0A05, 0x0505050A0505050A, 0x0511111111050A0A, 0x0A05111111111111,  // 0x0000C560 
	0x113E2AA641ACAA58, 0x58750B1111111105, 0x0505050A0A0A0A05, 0x1105050A05111111,  // 0x0000C580 
	0x11050505050A0A0A, 0x0A05110505050505, 0x05111111050A0A0A, 0x0511111105111105,  // 0x0000C5A0 
	0x11AB582AA6C1AA58, 0x112B2B110505050A, 0x05050505050A0A0A, 0x0511050A0A050511,  // 0x0000C5C0 
	0x050A050505050A0A, 0x0A05051105050511, 0x111111050A0A0A0A, 0x0511050511050511,  // 0x0000C5E0 
	0x112A11116DC19658, 0x11A1571105050A0A, 0x0A05050505050505, 0x0505050A0A0A0505,  // 0x0000C600 
	0x0A0A0A0505050505, 0x0505050505111111, 0x1111050A0A050505, 0x0505050511050511,  // 0x0000C620 
	0x110D111142AC4158, 0x57A158050A0A0A0A, 0x0A0505050505050A, 0x0A0A0505050A0A0A,  // 0x0000C640 
	0x0A0A0A0505050505, 0x050A0A0A05111111, 0x11050A0A0A051105, 0x0A0A050505050505,  // 0x0000C660 
	0x110D123546676D57, 0x7AB5580A0A0A0A0A, 0x050505111111050A, 0x0A0A1105050A6F0A,  // 0x0000C680 
	0x0A0A050505111111, 0x050A0A0A11111111, 0x050A0A0A05050511, 0x050A05050A05050A,  // 0x0000C6A0 
	0x11350596966A676D, 0x7A5811050A0A0A05, 0x0505111111111111, 0x111111110A0A0A0A,  // 0x0000C6C0 
	0x0505050511111111, 0x1111111111110505, 0x050A0A05110A0A05, 0x0505050A05050A05,  // 0x0000C6E0 
	0x1111352BB59F969C, 0x6D58350505050505, 0x0505111111111111, 0x1111110A0A0A0505,  // 0x0000C700 
	0x0505050511111111, 0x1111111111050505, 0x0A051111110A6F0A, 0x0A05050A0A050A0A,  // 0x0000C720 
	0x051167AE9F9F96C0, 0x673535050A050505, 0x05050A0A05050505, 0x1111110505050505,  // 0x0000C740 
	0x050505050A0A0505, 0x0505111111050505, 0x0505111105050505, 0x0A05110505110505,  // 0x0000C760 
	0x1135AC0B58589590, 0x905835050A050505, 0x05050A0A0A050505, 0x0505051111110505,  // 0x0000C780 
	0x050505050A0A0A05, 0x0505050505050505, 0x1111050505051111, 0x0505050511050511,  // 0x0000C7A0 
	0x11588A1158AA24A1, 0x5A1158110A050505, 0x05050A0A0A05050A, 0x0A0A051111050505,  // 0x0000C7C0 
	0x050505050A0A0A05, 0x050A0A0A05050505, 0x05050A050A051111, 0x11050A0A050A0A05,  // 0x0000C7E0 
	0x11115A759FD9A1AC, 0x285A11110A050A0A, 0x051111050A0A0A0A, 0x0505050A0A050505,  // 0x0000C800 
	0x0A0A111111050A0A, 0x0A0A0505050A0A0A, 0x0A0A0A0A0511050A, 0x1111050511050511,  // 0x0000C820 
	0x11110D5AAA33AE9F, 0x110B421105050505, 0x05050A0A0A050505, 0x0505051111110505,  // 0x0000C840 
	0x050505050A0A0A05, 0x050505050505050A, 0x0A0A0A0A0511050A, 0x0A05050505050505,  // 0x0000C860 
	0x113511AE9CA6A858, 0x58776A1105050505, 0x05050A0A0A05050A, 0x0A0A051111050505,  // 0x0000C880 
	0x050505050A0A0A05, 0x050A0A0A0A05110A, 0x0A050A0A11050A0A, 0x0A05110505110505,  // 0x0000C8A0 
	0x050558B66DD8A658, 0x58351A1105050A0A, 0x051111050A0A0A0A, 0x0505050A0A050505,  // 0x0000C8C0 
	0x0A0A111111050A0A, 0x0A0A05050A050A0A, 0x0A051105110A0A05, 0x0511111111111111,  // 0x0000C8E0 
};

u64 _ganontika_room_6_tex_0000C900[] = 
{
	0x98889AA989999988, 0x98889AA989999998, 0x9899999889A9AA87, 0x8899999889A9AA87,  // 0x0000C900 
	0x788999A98899A987, 0x788999A98899A988, 0x8799999A99A9A899, 0x8799999A99A9A899,  // 0x0000C920 
	0x989989A989999998, 0x989989A989999998, 0x99989A9999999879, 0x99989A9999999879,  // 0x0000C940 
	0x888899999AA99889, 0x888899999AA99889, 0x888998A9A9898789, 0x888998A9A9898789,  // 0x0000C960 
	0x9899A999A9899689, 0x9899A999A9899689, 0x8897988AAA988789, 0x8897988AAA988789,  // 0x0000C980 
	0x888878A999988888, 0x888878A999988888, 0x88888899A88988A8, 0x88888899A88988A8,  // 0x0000C9A0 
	0x88998999898989A9, 0x88998999898989A9, 0x97899A9897998AA9, 0x87899A9897998AA9,  // 0x0000C9C0 
	0x9889AA8899999999, 0x9889AA8899999999, 0x998A99A87999A998, 0x998A99A87999A998,  // 0x0000C9E0 
	0x998989988AA99999, 0x998989988AA99999, 0x98998989AA989998, 0x98998989AA989998,  // 0x0000CA00 
	0x998899999A989888, 0x898899999A989888, 0x8998999999A98898, 0x8998999999A98898,  // 0x0000CA20 
	0x98999989AA998998, 0x98999989AA998998, 0x9889998A99989A98, 0x9889998A99989A98,  // 0x0000CA40 
	0x8899999999999989, 0x8899999999999988, 0x889999A989999889, 0x889999A989999889,  // 0x0000CA60 
	0x8999879A989AA988, 0x8999879A989AA988, 0x9999998A99999888, 0x9999998A99999888,  // 0x0000CA80 
	0x89A989A889898899, 0x89A989A889898899, 0x89999A9899887999, 0x89999A9899887999,  // 0x0000CAA0 
	0x8999A989A9889999, 0x8999A989A9889999, 0x8999999AAA878998, 0x8999999AAA878998,  // 0x0000CAC0 
	0x8998999A99888987, 0x8998999A99888987, 0x9A99A99A99979888, 0x9A99A99A99979888,  // 0x0000CAE0 
};

u64 _ganontika_room_6_tex_0000CB00[] = 
{
	0x98889AA989999988, 0x98889AA979899988, 0x9899999889A9AA87, 0x889999988998A987,  // 0x0000CB00 
	0x788999998899A987, 0x7889999988889988, 0x8788888998798999, 0x8888888998788999,  // 0x0000CB20 
	0x98888899988999A9, 0x87888888877898A9, 0x99788999998898A9, 0x87777988887788A9,  // 0x0000CB40 
	0x8887999999999998, 0x8887888878889998, 0x88889999A9899888, 0x8887887787789888,  // 0x0000CB60 
	0x98999899A9899788, 0x7887777877788888, 0x8887888A99888788, 0x7877667777788887,  // 0x0000CB80 
	0x8888789999988877, 0x7776676677877887, 0x8888889998887797, 0x6766667666777897,  // 0x0000CBA0 
	0x8888889878887887, 0x6666656557788898, 0x8788998787887887, 0x6555432235788998,  // 0x0000CBC0 
	0x9888A98888877776, 0x7653222224778988, 0x8889888768878765, 0x6521211223789988,  // 0x0000CBE0 
	0x8878788778877655, 0x3221110124788889, 0x8788787788766653, 0x1111000124779998,  // 0x0000CC00 
	0x7777787777766542, 0x1000000124779888, 0x7777777777764321, 0x0000011235888898,  // 0x0000CC20 
	0x8677776777632221, 0x0000001337888998, 0x7667776765232100, 0x0000001348889988,  // 0x0000CC40 
	0x7676765533211001, 0x0000002369899988, 0x6676653222100000, 0x1100014588889889,  // 0x0000CC60 
	0x7776642311010000, 0x00000249889A9988, 0x8766753321111101, 0x1111137999999888,  // 0x0000CC80 
	0x7777773222111111, 0x1221179888898898, 0x7878785222221222, 0x2222699789887998,  // 0x0000CCA0 
	0x8888887653222223, 0x44679888A9889998, 0x8888988888767887, 0x78888899A9878998,  // 0x0000CCC0 
	0x8888998988888987, 0x7888899A99888988, 0x9989999998878877, 0x8988999999979888,  // 0x0000CCE0 
};

u64 _ganontika_room_6_tex_0000CD00[] = 
{
	0x98889AA989999988, 0x98889AA979899988, 0x9899999889A9AA87, 0x889999988998A987,  // 0x0000CD00 
	0x788999998899A987, 0x7889999988889988, 0x8788888998798999, 0x8888888998788999,  // 0x0000CD20 
	0x98888899988999A9, 0x87888888877898A9, 0x99788999998898A9, 0x87777988887788A9,  // 0x0000CD40 
	0x8887999999999998, 0x8887888878889998, 0x88889999A9899888, 0x8887887787789888,  // 0x0000CD60 
	0x98999899A9899788, 0x7887777877788888, 0x8887888A99888788, 0x7877667777788887,  // 0x0000CD80 
	0x8888789999988877, 0x7776676677877887, 0x8888889998887797, 0x6766667666777897,  // 0x0000CDA0 
	0x8888889878887887, 0x6666656557788898, 0x8788998787887887, 0x6555432235788998,  // 0x0000CDC0 
	0x9888A98888877776, 0x7653223324778988, 0x8889888768878765, 0x6522244433789988,  // 0x0000CDE0 
	0x8878788778877655, 0x3222345534788889, 0x8788787788766653, 0x1134445534779998,  // 0x0000CE00 
	0x7777787777766542, 0x2113455534779888, 0x7777777777765333, 0x3311565535888898,  // 0x0000CE20 
	0x8677776777633456, 0x5431365537888998, 0x7667776765345787, 0x7532166548889988,  // 0x0000CE40 
	0x7676765533468AA9, 0x8643156469899988, 0x667665323579BCBA, 0x9653245588889889,  // 0x0000CE60 
	0x77766423468ABBBA, 0x86532359889A9988, 0x876675345689A998, 0x7553237999999888,  // 0x0000CE80 
	0x7777773345677665, 0x4542179888898898, 0x7878785223444433, 0x3322699789887998,  // 0x0000CEA0 
	0x8888887653222223, 0x44679888A9889998, 0x8888988888767887, 0x78888899A9878998,  // 0x0000CEC0 
	0x8888998988888987, 0x7888899A99888988, 0x9989999998878877, 0x8988999999979888,  // 0x0000CEE0 
};

u64 _ganontika_room_6_tex_0000CF00[] = 
{
	0x0000000000000000, 0x0000000000000001, 0x1100000000000000, 0x0000000000000000,  // 0x0000CF00 
	0x0000000000000000, 0x0000000041184111, 0x1111111100000000, 0x0000000000000000,  // 0x0000CF20 
	0x0000000000000000, 0x0000084411448411, 0x1111322222100000, 0x0000000000000000,  // 0x0000CF40 
	0x0000000000000000, 0x0004148418411322, 0x2222233222223000, 0x0000000000000000,  // 0x0000CF60 
	0x0000000000000000, 0xAA81144114122222, 0x2BBBBB2231132230, 0x0000000000000000,  // 0x0000CF80 
	0x0000000000000007, 0xA84411132112B222, 0x22CBCBBBBB231131, 0x1000000000000000,  // 0x0000CFA0 
	0x000000000000086A, 0x4881322B21113233, 0x332BB2323CBBB232, 0x1300000000000000,  // 0x0000CFC0 
	0x00000000000086A4, 0x881122BCB2111322, 0x3223B22233BBCBB2, 0x2331000000000000,  // 0x0000CFE0 
	0x0000000000086A11, 0x1411112222223322, 0x223322223132BBBB, 0x2231300000000000,  // 0x0000D000 
	0x0000000000A67831, 0x1141441322BBB432, 0x232322222222BB23, 0xBB21130000000000,  // 0x0000D020 
	0x0000000006668122, 0x23114122BB21E132, 0x22222BBB222BC222, 0xBCB1133000000000,  // 0x0000D040 
	0x0000000059671122, 0x2141132BCD482223, 0x22323BCB222BBBB2, 0x3222121100000000,  // 0x0000D060 
	0x0000000656742233, 0x188832B144843233, 0x2233232D11132322, 0x312B222130000000,  // 0x0000D080 
	0x000000059AA12238, 0xA881BBB4A4A11133, 0x2223114433113222, 0x222BB22210000000,  // 0x0000D0A0 
	0x00000095AA813237, 0x841BBB24A8111113, 0x2344111132222231, 0x122CCBB233000000,  // 0x0000D0C0 
	0x0000075968443297, 0x412BB234A4113311, 0x1A84111132BBBB22, 0x132BBCB221100000,  // 0x0000D0E0 
	0x0000095764141897, 0x81BBB21881111111, 0x6A4111132BCBCB32, 0x3332CBCB22100000,  // 0x0000D100 
	0x00006566A1111566, 0x81BBB3181311111A, 0x681414112BBBBB22, 0x2331222B33110000,  // 0x0000D120 
	0x00005577A4111599, 0x82BBB114111111A9, 0x944448A84DDD3111, 0x1311222213214000,  // 0x0000D140 
	0x000759A848137999, 0x42BB214111111469, 0x68844A7777AA884A, 0x8143232311211000,  // 0x0000D160 
	0x0006564444436556, 0x83BB311111131969, 0x97A7666667766696, 0xAA13312223331000,  // 0x0000D180 
	0x0096561148415559, 0xA133111111114969, 0x6666666666666666, 0x6A13111332311800,  // 0x0000D1A0 
	0x0096564218415559, 0x711441144111A969, 0x6666699999996666, 0x6A81441333314400,  // 0x0000D1C0 
	0x0066964214419559, 0x6411131441116966, 0x6669999999999999, 0x9666A81111114400,  // 0x0000D1E0 
	0x05669A4121117559, 0x6813118412339966, 0x9999981111234469, 0x99969A1432211140,  // 0x0000D200 
	0x05996A1131117559, 0x9711141412319999, 0x996122B211322222, 0x4699644422231180,  // 0x0000D220 
	0x0595681111114559, 0x9674123112316999, 0x6122322231122232, 0x23A966A4B22214A0,  // 0x0000D240 
	0x05956A1111111959, 0x9664223112349667, 0x1123322231113222, 0x22216681CBBB1A70,  // 0x0000D260 
	0x05996A8411111A59, 0x966A113312319682, 0x1111111111111111, 0x132217A12BBC1880,  // 0x0000D280 
	0x0599A88841111175, 0x9966811113119832, 0x338941122BB21441, 0x1113236123234440,  // 0x0000D2A0 
	0x0599744841111319, 0x999674112232A112, 0x222A9641BBBBB181, 0x1113221321111440,  // 0x0000D2C0 
	0x5599641144111134, 0x9969678122123311, 0x3231697EBBBBBB21, 0x1333222331314884,  // 0x0000D2E0 
	0x5559781114114432, 0x1999666811223144, 0x1311196742BBBBB2, 0x1131322332218488,  // 0x0000D300 
	0x05597A8441444412, 0x21959966A812B211, 0x133111967E3BB222, 0x3111131322234470,  // 0x0000D320 
	0x0559A8AAA2444441, 0x1311999996A42B23, 0x1212117667E1BB22, 0x1111413333234870,  // 0x0000D340 
	0x05597888A3B48884, 0x111111A666667E12, 0x34231119667E2BB2, 0x1341111311118AA0,  // 0x0000D360 
	0x0555A84864BB1884, 0x1331111148A81222, 0x81B11136667A1BBB, 0x2111133333148A80,  // 0x0000D380 
	0x05596841AA2BB284, 0x1131133113111224, 0x1BBD1317966742BB, 0x211111322331AA70,  // 0x0000D3A0 
	0x05559A4169EBBB23, 0x3111322233211113, 0xBB281114966781BB, 0x3111131223186660,  // 0x0000D3C0 
	0x05559A118971BBBB, 0xB311322231311122, 0xB21A11149667812B, 0x11412213221A7680,  // 0x0000D3E0 
	0x0055564315943BBB, 0xBBBBBBB22221132B, 0xB348314496664133, 0x1411BB2122467A00,  // 0x0000D400 
	0x0055598329971222, 0x2B22B333223322BB, 0x2188223196668111, 0x1411B22321AA7800,  // 0x0000D420 
	0x005559611A59A412, 0x2BB222BBBBBBBBB2, 0x31A1131196667111, 0x181E332314A77800,  // 0x0000D440 
	0x0005559A11559A11, 0x2CBCBBBCBBBBBB23, 0x18A14888666667A8, 0xA41A11114A966000,  // 0x0000D460 
	0x00055596137559A8, 0x13322BBBBBBBBD11, 0x86431488976667AA, 0x6878144879997000,  // 0x0000D480 
	0x00055559A1195967, 0x81411BC22BB2344A, 0x6632B31A96666669, 0x9698111865960000,  // 0x0000D4A0 
	0x00005559681A5596, 0x68AA74D1484A7769, 0x6222BB2666696999, 0x9951148A59770000,  // 0x0000D4C0 
	0x000005559A416559, 0x9966667A8A999999, 0x2223333966666999, 0x9983187996600000,  // 0x0000D4E0 
	0x0000055556811155, 0x9999666999999991, 0x231113A969969955, 0x5932186999900000,  // 0x0000D500 
	0x00000055596A8449, 0x5555599555555911, 0x3313136796999555, 0x5123179695000000,  // 0x0000D520 
	0x0000005555968844, 0x7955555555598111, 0x11133A7A66999999, 0x4111A76955000000,  // 0x0000D540 
	0x0000000555597AA8, 0xAAA6995997411133, 0x111116A866999956, 0x488AA95550000000,  // 0x0000D560 
	0x0000000055559A84, 0x1441133111111112, 0x3131867799955984, 0x48A6555500000000,  // 0x0000D580 
	0x000000000555597A, 0x1114441111111113, 0x2218899995557844, 0x8A95555000000000,  // 0x0000D5A0 
	0x0000000000555559, 0xA444141111141111, 0x21A799555978114A, 0x9555950000000000,  // 0x0000D5C0 
	0x0000000000055555, 0x9784144448448441, 0x11A7AA8A84444879, 0x5555500000000000,  // 0x0000D5E0 
	0x0000000000005555, 0x596A48A848A88118, 0x4111113148A76995, 0x5555000000000000,  // 0x0000D600 
	0x0000000000000555, 0x55596A8488AA8818, 0x884114444A799555, 0x5550000000000000,  // 0x0000D620 
	0x0000000000000005, 0x55555996667777A8, 0xAAA844AA76955555, 0x5000000000000000,  // 0x0000D640 
	0x0000000000000000, 0x5555555999999996, 0x6666666955555555, 0x0000000000000000,  // 0x0000D660 
	0x0000000000000000, 0x0055555555595555, 0x5555555555555000, 0x0000000000000000,  // 0x0000D680 
	0x0000000000000000, 0x0000055555555555, 0x5555555555500000, 0x0000000000000000,  // 0x0000D6A0 
	0x0000000000000000, 0x0000000055555555, 0x5555555000000000, 0x0000000000000000,  // 0x0000D6C0 
	0x0000000000000000, 0x0000000000000055, 0x9000000000000000, 0x0000000000000000,  // 0x0000D6E0 
};

u64 _ganontika_room_6_tex_0000D700[] = 
{
	0x8888899879899988, 0x8888899879899988, 0x8888999889989987, 0x889899987999AA87,  // 0x0000D700 
	0x778989998898A977, 0x778989988898A978, 0x8788998998999888, 0x8798998998999888,  // 0x0000D720 
	0x8789889889988998, 0x8789889889998888, 0x8888999999998878, 0x88889A9899998879,  // 0x0000D740 
	0x788899899A988878, 0x888799989A998779, 0x88798899A9898778, 0x88799898A9898779,  // 0x0000D760 
	0x88999889A9888778, 0x88999888A9899679, 0x8887987A99888878, 0x888798799A888779,  // 0x0000D780 
	0x8778789999987877, 0x8788789899988878, 0x7888788998887898, 0x88888899A8888889,  // 0x0000D7A0 
	0x8889888978888998, 0x8888889888898989, 0x8789998888897A98, 0x8788998788998A89,  // 0x0000D7C0 
	0x9889A98989988998, 0x9888A98899988979, 0x898A888879988987, 0x8889889879999978,  // 0x0000D7E0 
	0x8989888879988988, 0x988989978AA99879, 0x8889897989987987, 0x879988889A989879,  // 0x0000D800 
	0x8888888989987987, 0x888888989A989868, 0x7888888989987898, 0x8898889899998869,  // 0x0000D820 
	0x8889987989886987, 0x9788988899987869, 0x8779987989887987, 0x9788989889889969,  // 0x0000D840 
	0x7889888979887987, 0x8788889889998869, 0x6889888878886888, 0x8789879889888859,  // 0x0000D860 
	0x6889778978887887, 0x8789869979998858, 0x6879887878786887, 0x8689879989998748,  // 0x0000D880 
	0x5779788868686787, 0x8589769878897649, 0x5779787867675787, 0x7589769768886748,  // 0x0000D8A0 
	0x4778776866575787, 0x7479758868787648, 0x4768666765574576, 0x6378648968876637,  // 0x0000D8C0 
	0x3657654753464465, 0x5368636946785637, 0x2434333532233333, 0x3234423524443324,  // 0x0000D8E0 
};

u64 _ganontika_room_6_tex_0000D900[] = 
{
	0x28C5398B4A0D5A91, 0x528F5A8F5A4F5A8F, 0x524F5A4F524F4A0B, 0x39CB41CD524F4A0D,  // 0x0000D900 
	0x41CD41CD39CB39CB, 0x314762D36291524F, 0x524F524F5251524F, 0x5251524F524F39CB,  // 0x0000D920 
	0x4A0D41CD31492905, 0x398B314931473147, 0x31493149398941CB, 0x39493189314739CB,  // 0x0000D940 
	0x5A8F4A0F420D420D, 0x420D4A0F524F524F, 0x524F524F524F524F, 0x420D420D420D41CD,  // 0x0000D960 
	0x2907420D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D41CD, 0x4A0D41CD524F4A0D,  // 0x0000D980 
	0x4A0D4A0D4A0D4A0D, 0x318962D141CD41CD, 0x4A0D4A0D41CD318B, 0x39CD4A0D41CD41CD,  // 0x0000D9A0 
	0x4A0D4A0D41CB41CB, 0x41CB420D4A0D4A0D, 0x4A0D4A0D4A0D4A4F, 0x314731474A0F524F,  // 0x0000D9C0 
	0x4A0F4A0F4A0D41CD, 0x39CB524F41CD4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x0000D9E0 
	0x29074A0D524F4A0D, 0x4A0D4A0D4A4D4A0D, 0x41CD41CD39CB41CD, 0x41CD41CD39CB41CD,  // 0x0000DA00 
	0x39CB41CD4A0D41CD, 0x29475A8F4A0D4A0D, 0x41CD41CD41CD31CB, 0x420D39CD39CD39CD,  // 0x0000DA20 
	0x420D39CD39CD41CD, 0x39CD39CB41CD41CD, 0x41CD41CD41CD418B, 0x2907524F524F524F,  // 0x0000DA40 
	0x41CD4A0D41CD41CD, 0x39CD39CD39CB4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x0000DA60 
	0x2105420D524F4A0F, 0x524F4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x0000DA80 
	0x4A0D39CB39CB39CB, 0x2907524F41CB318B, 0x318B39CB318B318B, 0x39CB4A0D524F4A0D,  // 0x0000DAA0 
	0x4A0D4A0D4A0D420D, 0x39CD39CD420D420D, 0x420D31CB31CB3989, 0x3149524F4A0D420D,  // 0x0000DAC0 
	0x41CB420D420D4A0F, 0x4A0F4A0F420F420D, 0x4A0F420D41C94A0D, 0x524F524F524F4A0D,  // 0x0000DAE0 
	0x29074A0D524F4A0D, 0x41CB418B4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x41CD41CD4A0D41CD,  // 0x0000DB00 
	0x4A0D4A0D4A0D41CD, 0x29475A8F49CB39CB, 0x41CD39CD39CD39CD, 0x39CD41CD41CD4A0D,  // 0x0000DB20 
	0x41CD41CD39CB41CD, 0x41CD39CB39CB4A0D, 0x4A0D4A0D4A0D418B, 0x3189528F41CB39CB,  // 0x0000DB40 
	0x39CD39CB39CB41CD, 0x39CD39CD39CD39CB, 0x41CD39CB398941CD, 0x39CB39CB39CB31CB,  // 0x0000DB60 
	0x31494A0F420B41CB, 0x39CB418B49CB4A0D, 0x4A0B4A0D4A0D4A0D, 0x4A0D41CD4A0D4A0D,  // 0x0000DB80 
	0x4A0D4A0D4A0D4A0D, 0x31475A8F41C939CB, 0x4A0D41CD39CD39CB, 0x39CB41CB420B4A0D,  // 0x0000DBA0 
	0x4A0D4A0D4A0D4A0D, 0x4A0D41CD4A0D4A0D, 0x4A0D4A0D4A0D41CB, 0x3189524F41C939CB,  // 0x0000DBC0 
	0x420D41CD39CB39CB, 0x39CB41CD41CD39CD, 0x318B318B418941CD, 0x39CD41CD4A0D41CD,  // 0x0000DBE0 
	0x3149524F41CB398B, 0x39CB41CB398B318B, 0x39CB41CD39CD41CD, 0x41CD41CD41CD41CD,  // 0x0000DC00 
	0x39CD39CD41CD41CB, 0x31495A9149C939CB, 0x39CB31CB31CB31CB, 0x31CB31CB39CB39CD,  // 0x0000DC20 
	0x41CD39CD39CB39CB, 0x39CD41CD41CD41CD, 0x41CD39CD4A0D3989, 0x3189528F41CB41CB,  // 0x0000DC40 
	0x39CB39CB39CB39CB, 0x39CB39CB39CB39CB, 0x39CB39CB39494A0D, 0x4A0D41CD41CD39CB,  // 0x0000DC60 
	0x31495A914A0D41CD, 0x420D41CB41CB41CB, 0x41CB41CB41CD41CD, 0x420D420F420D39CB,  // 0x0000DC80 
	0x39CB39CB41CD3189, 0x31494A0D49C941CD, 0x39CB39CD39CB39CB, 0x39CD41CB41CD41CB,  // 0x0000DCA0 
	0x420D420D39CD39CD, 0x39CD420D420D4A0D, 0x4A0D4A0D524F41CB, 0x2907524D418949C9,  // 0x0000DCC0 
	0x49CB4A0B49CB41CD, 0x41CD41CD49CB49CB, 0x418941894989520D, 0x524D49CB39CB39CB,  // 0x0000DCE0 
	0x31494A0D39CB420D, 0x4A0B4A0D41CB39CB, 0x39CB39CB39CB39CD, 0x39CB318B39CB39CB,  // 0x0000DD00 
	0x39CB318B4A0D41CB, 0x31494A0D51C949CB, 0x41C941C939893989, 0x39893989398939C9,  // 0x0000DD20 
	0x31CB39CD39CD39CD, 0x39CD39CD31CB31CB, 0x31CB39CB41CD3989, 0x31494A0D41CD41CB,  // 0x0000DD40 
	0x41CD41CD41CD49CD, 0x41CD41CD398B39CB, 0x318B398B398B41CD, 0x4A0D4A0D39CB39CB,  // 0x0000DD60 
	0x2907310731472907, 0x2907290729072907, 0x2907290531073107, 0x3149394939493949,  // 0x0000DD80 
	0x3149314931493107, 0x210539CB49C951CB, 0x51CB49CB39893989, 0x39893989318B39C9,  // 0x0000DDA0 
	0x39CB318B318B318B, 0x39CB318B39CB39CB, 0x39CB318B41CD3989, 0x31493107398B41CD,  // 0x0000DDC0 
	0x41CD41CD41CD41CD, 0x398B41CB39CB31CB, 0x39CD39CB31CB524F, 0x524F4A0D41CD318B,  // 0x0000DDE0 
	0x41CD41CD41CB39CB, 0x398B398929073949, 0x41CB49CB5A8F4A4D, 0x4A4D524F4A4F4A4D,  // 0x0000DE00 
	0x4A4D318B39CB3149, 0x31494A0D5A4B4209, 0x4209420941C939C9, 0x398739C942094209,  // 0x0000DE20 
	0x42094209420B420B, 0x420B4A0B41CD41CD, 0x39CB31CB41CD4A0D, 0x2907314931493149,  // 0x0000DE40 
	0x3149314931493147, 0x3149314931493149, 0x3147314729073147, 0x31473147318B318B,  // 0x0000DE60 
	0x4A0D4A0D4A0D39CD, 0x39CB39CB29073149, 0x5A8F4A0B4A0B41CD, 0x41CD41CD4A0D4A0D,  // 0x0000DE80 
	0x4A0D39CB41CD41CD, 0x3989290729072907, 0x20C518C318C32105, 0x3147318931473147,  // 0x0000DEA0 
	0x3107290529053107, 0x3147314931073107, 0x3149314931493189, 0x31473147524F520B,  // 0x0000DEC0 
	0x41CB4A0B4A0B41CB, 0x4A0B420B4A0B4A0B, 0x398B318B29054A0D, 0x5291524F524F4A0D,  // 0x0000DEE0 
	0x41CD41CD41CD39CB, 0x31CB314729073949, 0x524D4A0B4A0D41CD, 0x420D4A0D4A0D4A0D,  // 0x0000DF00 
	0x4A0D39CB4A0D4A0D, 0x4A0B41CD41CB49CD, 0x41CB41893147524F, 0x5A915A91524F524F,  // 0x0000DF20 
	0x4A0F4A0F4A0F39CB, 0x4A0D41CD41CD4A0D, 0x41CD41CD41CD41CD, 0x398931496AD1524B,  // 0x0000DF40 
	0x4A0D4A0D4A0D41CD, 0x4A0D4A0D4A0D4A0D, 0x41CD39CB3147524F, 0x49CD41CD41CD398B,  // 0x0000DF60 
	0x41CD41CD39CB318B, 0x39CD318B29053989, 0x49CB4A0D39CD39CD, 0x41CD4A0D4A0B4A0B,  // 0x0000DF80 
	0x4A0B41C94A0B520B, 0x520B49CB49CB520B, 0x39CB41CB3149524F, 0x5A4D4A0D420D420D,  // 0x0000DFA0 
	0x420D420D420D420B, 0x4A4B4A4B4A4B4A4B, 0x4A4B4A4B4A0D524F, 0x41CD31476AD1524B,  // 0x0000DFC0 
	0x4A0D4A0D41CD41CD, 0x4A0D4A0D4A0D41CD, 0x41CD39CD318B5A4F, 0x5A4F524F41CD39CD,  // 0x0000DFE0 
	0x39CD41CD39CB39CD, 0x39CD318B29054A0D, 0x49CB4A0D41CB41CD, 0x41C95A4D520D520D,  // 0x0000E000 
	0x4A0B49CB4A0B41C9, 0x520B4A0B4A0B41CD, 0x41CD41CD39CB3189, 0x524D41CD39CB41CD,  // 0x0000E020 
	0x39CB39CD39CB39CD, 0x39CB39CB39CB41CD, 0x39CB41CD4A0D4A0D, 0x41CB3149628F4A0B,  // 0x0000E040 
	0x41CD39CB39CD39CB, 0x39CB41CD39CB39CD, 0x39CB318B31475A4F, 0x524F4A0D41CB41CD,  // 0x0000E060 
	0x39CB41CD41CD41CD, 0x41CD318B29054A0D, 0x49CB520D51CB41C9, 0x41C9418941C94A0D,  // 0x0000E080 
	0x4A0D49CB4A0B4A0B, 0x51CB4A0D41CD41CD, 0x4A0D4A0D41CD3189, 0x520B41CD39CB4A0D,  // 0x0000E0A0 
	0x39CD39CD39CD39CD, 0x39CD39CB39CB39CB, 0x39CB39CB41CD4A0D, 0x41CB314939CB5207,  // 0x0000E0C0 
	0x520B4A0B4A094A09, 0x41C9520B41CD39CD, 0x39CB318B3147520B, 0x520D4A0D49CB49CB,  // 0x0000E0E0 
	0x41CD4A0D4A0D4A0D, 0x524F41CD314739CB, 0x41CD4A0F49CB39C9, 0x39C941CB39C931CB,  // 0x0000E100 
	0x420D39CD39CD39CD, 0x420D520B4A0B4A0B, 0x4A0D524F4A0D418B, 0x4A0D41C941CD39CD,  // 0x0000E120 
	0x39CD39CB39CB39CD, 0x41CD39CD31CB318B, 0x31CB31CB4A0D4A0D, 0x41CB31894A0D49CB,  // 0x0000E140 
	0x39CB39CB39CB39CB, 0x41CD39CB39CB39CB, 0x318B31472905524F, 0x49CD398B39CB41CD,  // 0x0000E160 
	0x3147314731473149, 0x31473147290539CB, 0x41CD4A0D4A0B4A0D, 0x4A0D39CB318B39CB,  // 0x0000E180 
	0x41CD39CD41CD41CD, 0x41CD41CD41CD39CB, 0x39CD41CD39CB3989, 0x4A0D49CB41CD39CB,  // 0x0000E1A0 
	0x39CB318B39CB39CB, 0x318B318B318B318B, 0x318B318B41CD41CD, 0x41CD314729073107,  // 0x0000E1C0 
	0x3107310731493107, 0x2907310731073149, 0x314921053147318B, 0x318B314731473147,  // 0x0000E1E0 
	0x39CB398B39CB318B, 0x39CD318B2905318B, 0x39CB39CD420D39CD, 0x420D31CB31CB31CB,  // 0x0000E200 
	0x318B318B318B31CB, 0x41CD39CD39CB31CB, 0x318B41CD39CB3147, 0x39CB318B41CD41CD,  // 0x0000E220 
	0x39CD39CB39CB39CB, 0x39CB39CB318B39CB, 0x318B318B39CD41CD, 0x39CB3149524F4A4F,  // 0x0000E240 
	0x4A4D4A0D4A0D4A0D, 0x4A0D4A0D420B41CB, 0x41CB418B39CB39CB, 0x39CB39CB39CB39CB,  // 0x0000E260 
	0x39CB39CB39CB39CB, 0x39CB39CB314739CB, 0x4A0B41CB41CB4A0B, 0x4A0B41CB39C931CB,  // 0x0000E280 
	0x39C941CB41CB41CB, 0x41C941C941CB39CB, 0x39CB41CD318B2905, 0x4A0D41CD39CD39CB,  // 0x0000E2A0 
	0x39CB318B318B318B, 0x318B318B318B318B, 0x39CB31CB39CD39CB, 0x39CB31495A9141CB,  // 0x0000E2C0 
	0x41C94A0B4A0B4A0B, 0x4A0B4A0B420B41CB, 0x39CB39CB39CB39CB, 0x39CB41CD4A0D39CB,  // 0x0000E2E0 
	0x39CB39CB39CB4A0D, 0x4A0D39CB31473147, 0x3989318931893107, 0x3147290529053147,  // 0x0000E300 
	0x29053147318B318B, 0x3147314931073107, 0x3107290720C520C5, 0x3107310731072905,  // 0x0000E320 
	0x2905290529052905, 0x2905290531493149, 0x3949394939493149, 0x2905290552514A0B,  // 0x0000E340 
	0x4A0B520B4A0B41CB, 0x41CB41C949CB4209, 0x420942094A0B4A0B, 0x4A0D41CB49CB39CB,  // 0x0000E360 
	0x39CB39CB4A0D4A0D, 0x4A0D39CB3147524F, 0x5A91524F5A91524F, 0x4A0D39895A915A91,  // 0x0000E380 
	0x5A4F5A4F5A4F628F, 0x5A4F524D41C949CB, 0x49CB49CB39CB39CB, 0x39CB41CD41CD4A0D,  // 0x0000E3A0 
	0x41CD314931074A0F, 0x525141CD4A0D4A4D, 0x4A0F318B318B41CD, 0x41CD31472905420D,  // 0x0000E3C0 
	0x318B39CB39CB39CB, 0x318B39CB39CB39CB, 0x39CB39CB41CB398B, 0x41CB39CB39CB39CB,  // 0x0000E3E0 
	0x39CB39CB39CB39CB, 0x39CB39CB31474A0D, 0x420D524F4A0D41CD, 0x524F418B62D331CD,  // 0x0000E400 
	0x420D39CD4A0B41CB, 0x4A4B4A0B4A0B524B, 0x524B524B41CD4A0D, 0x41CD41CD41CD4A0D,  // 0x0000E420 
	0x41CD39CB31076313, 0x4A0D4A0D4A0D4A0D, 0x4A0D41CB41CB3989, 0x398B314731475291,  // 0x0000E440 
	0x39CB41CD41CD41CD, 0x39CB39CB39CB39CB, 0x39CB39CB39CB39CB, 0x41CD39CB41CD4A0D,  // 0x0000E460 
	0x39CB39CB39CB39CB, 0x39CB39CD31474A4F, 0x39CD4A0D4A0D4A0D, 0x524F398962D3420D,  // 0x0000E480 
	0x39CD41CD39CB39CB, 0x420D420D420D420D, 0x420D420D420D420D, 0x4A0D4A0D4A0D4A0D,  // 0x0000E4A0 
	0x41CD39CB3149524F, 0x41CB41CB49CB420D, 0x41CD39CB39CB398B, 0x39CB314731475291,  // 0x0000E4C0 
	0x39CD420D420D420D, 0x420D39CD31CB31CB, 0x31CB420D420D420D, 0x420D4A0D4A0D41CD,  // 0x0000E4E0 
	0x3147314731492907, 0x2907290731473147, 0x3147314739CB3147, 0x314731475A9139CD,  // 0x0000E500 
	0x31CB41CD39CD41CD, 0x41CD39CB4A0D4A0D, 0x4A0D4A0D41CD41CD, 0x39CD39CB39CB39CB,  // 0x0000E520 
	0x4A0D41CD31496291, 0x49CB49CB49CB49CB, 0x49CB49CB41CB41C9, 0x39CB39CB3147420D,  // 0x0000E540 
	0x41CD41CD4A0D4A4D, 0x4A0D4A0D4A0D49CB, 0x4A0D4A0D524F524F, 0x524F524F4A0D3147,  // 0x0000E560 
	0x524F4A8F4A8F4A4D, 0x524D524D524D524D, 0x5A8F5A8F4A0B4A0B, 0x4A0D39C94A0F41CD,  // 0x0000E580 
	0x39CD39CD4A0D4A0D, 0x41CD39CD41CD39CD, 0x39CD39CB39CB318B, 0x41CD39CB39CB41CD,  // 0x0000E5A0 
	0x4A0D41CD314962D3, 0x41CB41CB420B41CD, 0x41CD39CD39CB39CB, 0x398B318B31472905,  // 0x0000E5C0 
	0x3189314731493989, 0x398B31893189418B, 0x3149290731493149, 0x3189398939C939CB,  // 0x0000E5E0 
	0x41CD39CB4A0B4209, 0x42094A0B42094209, 0x4A4B4A4B4A0D4A0D, 0x4A0B39C93147524F,  // 0x0000E600 
	0x39CD39CD39CD39CD, 0x39CB39CB41CD4A0D, 0x41CD39CD39CD39CB, 0x39CB39CB39CB41CD,  // 0x0000E620 
	0x524F524F3149524F, 0x41CB520B4A0B49CB, 0x49CB41C941C941CD, 0x39CB39CB41CD2905,  // 0x0000E640 
	0x41CB4A0F524F524F, 0x524F52514A0F524F, 0x4A0D318B5AD1524F, 0x5A4F4A0B41CB41CD,  // 0x0000E660 
	0x398B398B41CB41CB, 0x4A0D39CB42094A0B, 0x5A8D524B4A0D4A0D, 0x520B39C9318941CD,  // 0x0000E680 
	0x41CD520B520B520B, 0x520B520B520B49CB, 0x41CB41C939CB39CB, 0x39CB39CB39CB4A0D,  // 0x0000E6A0 
	0x41CD39CB2907524F, 0x4A0B41CD41CD39CB, 0x39CB39CB41CD41CD, 0x41CB524F39CB3147,  // 0x0000E6C0 
	0x4A0F41CD41CD39CB, 0x41CD41CD41CD41CD, 0x41CD39CB5A4F4A0D, 0x4A0B41CD39CB398B,  // 0x0000E6E0 
	0x39CD39CD39CD39CD, 0x4A0B4A0B4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x520B41CB3989524F,  // 0x0000E700 
	0x4A0D41CD4A0D39CB, 0x39CD4A0D41CD420B, 0x420B420B4A4B4A0B, 0x4A4B4A0D41CD4A0D,  // 0x0000E720 
	0x41CD41CD3189524F, 0x4A0B41CD4A0B4A0B, 0x4A0B4A0B41CD41CD, 0x41CB4A0D39CB318B,  // 0x0000E740 
	0x5A914A0D4A0D4A0D, 0x4A0D4A0D41CD4A0D, 0x41CD3147420D39CB, 0x39CB39CB39CB31CB,  // 0x0000E760 
	0x39CD39CD39CD4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x520B4A0B3989524F,  // 0x0000E780 
	0x4A0D4A0D41CD39CD, 0x41CD39CD39CD39CD, 0x39CB39CD39CD39CB, 0x39CD39CD39CD39CD,  // 0x0000E7A0 
	0x39CD39CB314941CD, 0x41CD41CD41CD39CD, 0x39CB39CB39CB41CD, 0x398B4A0D39CB3147,  // 0x0000E7C0 
	0x524F524F4A0D41CD, 0x41CD41CD41CD4A0D, 0x41CD318B4A0F39CD, 0x39CD39CD39CD39CD,  // 0x0000E7E0 
	0x41CD39CD41CD41CD, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A4D31894A0F,  // 0x0000E800 
	0x420D4A0F4A0F4A0F, 0x4A0F4A0F4A0F524F, 0x4A0F4A0F4A0F41CD, 0x39CB41CD41CD41CD,  // 0x0000E820 
	0x4A0D4A0D3189524F, 0x4A0D41CD4A0D41CD, 0x41CD41CD4A0D41CB, 0x39CB4A0D39CB2905,  // 0x0000E840 
	0x41CD524F4A0D4A0D, 0x41CD41CD41CD39CB, 0x318B3147524F420D, 0x420D420D420D420F,  // 0x0000E860 
	0x3147314731493189, 0x3189318B31893989, 0x41CD39CB39CB31CB, 0x31892949314718C3,  // 0x0000E880 
	0x18C3290531493149, 0x3949314931493149, 0x2907314929073989, 0x31CB314731473147,  // 0x0000E8A0 
	0x314718C32905524F, 0x39CB39CB39CB39CB, 0x39CB39CB41CB4A0D, 0x4A0D4A0D39CB2905,  // 0x0000E8C0 
	0x2905290529053147, 0x3147314731473147, 0x290518C329052905, 0x3147314731473147,  // 0x0000E8E0 
};

Vtx_t _ganontika_room_6_vertices_0000E900[27] = 
{
	 { 1829, 110, 2188, 0, 2048, 2048, 68, 74, 83, 255 }, // 0x0000E900
	 { 1805, 245, 2186, 0, 1463, 666, 156, 163, 174, 255 }, // 0x0000E910
	 { 1829, 280, 2188, 0, 2048, 307, 69, 62, 48, 255 }, // 0x0000E920
	 { 1811, 110, 2183, 0, 1658, 2048, 103, 111, 125, 255 }, // 0x0000E930
	 { 1799, 110, 2190, 0, 1268, 2048, 198, 202, 208, 255 }, // 0x0000E940
	 { 1796, 227, 2191, 0, 1170, 845, 198, 202, 208, 255 }, // 0x0000E950
	 { 1795, 110, 2208, 0, 878, 2048, 34, 36, 41, 255 }, // 0x0000E960
	 { 1795, 210, 2208, 0, 878, 1024, 34, 36, 41, 255 }, // 0x0000E970
	 { 1769, 210, 2223, 0, 0, 1024, 34, 36, 41, 255 }, // 0x0000E980
	 { 1762, 221, 2211, 0, 0, 910, 50, 75, 25, 255 }, // 0x0000E990
	 { 1796, 227, 2191, 0, 1170, 845, 198, 202, 208, 255 }, // 0x0000E9A0
	 { 1762, 266, 2211, 0, 0, 455, 5, 5, 5, 255 }, // 0x0000E9B0
	 { 1792, 295, 2194, 0, 1024, 154, 113, 124, 139, 255 }, // 0x0000E9C0
	 { 1762, 310, 2211, 0, 0, 0, 113, 124, 139, 255 }, // 0x0000E9D0
	 { 1769, 210, 2223, 0, 0, 1024, 34, 36, 41, 255 }, // 0x0000E9E0
	 { 1743, 210, 2238, 0, 878, 1024, 34, 36, 41, 255 }, // 0x0000E9F0
	 { 1727, 227, 2231, 0, 1170, 845, 198, 202, 208, 255 }, // 0x0000EA00
	 { 1762, 221, 2211, 0, 0, 910, 50, 75, 25, 255 }, // 0x0000EA10
	 { 1718, 245, 2236, 0, 1463, 666, 156, 163, 174, 255 }, // 0x0000EA20
	 { 1762, 266, 2211, 0, 0, 455, 5, 5, 5, 255 }, // 0x0000EA30
	 { 1731, 295, 2229, 0, 1024, 154, 113, 124, 139, 255 }, // 0x0000EA40
	 { 1762, 310, 2211, 0, 0, 0, 113, 124, 139, 255 }, // 0x0000EA50
	 { 1708, 280, 2258, 0, 2048, 307, 69, 62, 48, 255 }, // 0x0000EA60
	 { 1743, 110, 2238, 0, 878, 2048, 34, 36, 41, 255 }, // 0x0000EA70
	 { 1724, 110, 2233, 0, 1268, 2048, 198, 202, 208, 255 }, // 0x0000EA80
	 { 1713, 110, 2240, 0, 1658, 2048, 103, 111, 125, 255 }, // 0x0000EA90
	 { 1708, 110, 2258, 0, 2048, 2048, 68, 74, 83, 255 }, // 0x0000EAA0
};

Vtx_t _ganontika_room_6_vertices_0000EAB0[8] = 
{
	 { 1822, 110, 2176, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000EAB0
	 { 1829, 110, 2188, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000EAC0
	 { 1822, 310, 2176, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000EAD0
	 { 1829, 310, 2188, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000EAE0
	 { 1701, 110, 2246, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000EAF0
	 { 1708, 110, 2258, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000EB00
	 { 1701, 310, 2246, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000EB10
	 { 1708, 310, 2258, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000EB20
};

Gfx _ganontika_room_6_dlist_0000EB30[] =
{
	gsDPPipeSync(), // 0x0000EB30
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000EB38
	gsSPVertex(_ganontika_room_6_vertices_0000EAB0, 8, 0), // 0x0000EB40
	gsSPCullDisplayList(0, 7), // 0x0000EB48
	gsDPPipeSync(), // 0x0000EB50
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000EB58
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000EB60
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000EB68
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _ganontika_room_6_tex_0000EC58), // 0x0000EB70
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x0000EB78
	gsDPLoadSync(), // 0x0000EB80
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x0000EB88
	gsDPPipeSync(), // 0x0000EB90
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x0000EB98
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000EBA0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x0000EBA8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x0000EBB0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x0000EBB8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x0000EBC0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 254), // 0x0000EBC8
	gsSPVertex(_ganontika_room_6_vertices_0000E900, 27, 0), // 0x0000EBD0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x0000EBD8
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 1, 0), // 0x0000EBE0
	gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0), // 0x0000EBE8
	gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0), // 0x0000EBF0
	gsSP2Triangles(9, 11, 1, 0, 9, 1, 10, 0), // 0x0000EBF8
	gsSP2Triangles(11, 12, 1, 0, 11, 13, 12, 0), // 0x0000EC00
	gsSP2Triangles(12, 2, 1, 0, 14, 15, 16, 0), // 0x0000EC08
	gsSP2Triangles(14, 16, 17, 0, 16, 18, 19, 0), // 0x0000EC10
	gsSP2Triangles(16, 19, 17, 0, 18, 20, 19, 0), // 0x0000EC18
	gsSP2Triangles(20, 21, 19, 0, 18, 22, 20, 0), // 0x0000EC20
	gsSP2Triangles(15, 23, 16, 0, 23, 24, 16, 0), // 0x0000EC28
	gsSP2Triangles(24, 25, 18, 0, 24, 18, 16, 0), // 0x0000EC30
	gsSP2Triangles(25, 26, 18, 0, 26, 22, 18, 0), // 0x0000EC38
	gsSPEndDisplayList(), // 0x0000EC40
};

static u8 unaccountedEC48[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xEB, 0x30, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _ganontika_room_6_tex_0000EC58[] = 
{
	0x7F50404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x0000EC58 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x0000EC78 
	0x8F8F404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x0000EC98 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x0000ECB8 
	0x9F9F6F4040404040, 0x4040404040404040, 0x40406F6F40404040, 0x4040404040404040,  // 0x0000ECD8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x0000ECF8 
	0x8F9F9F5F40404040, 0x4040404040404040, 0x6FBFAF6F40404040, 0x4040404040404040,  // 0x0000ED18 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x0000ED38 
	0x8F8F8F7F5F4F6F6F, 0x6F40405050405F7F, 0x9F9F7F6F40404040, 0x4040404040404040,  // 0x0000ED58 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x0000ED78 
	0x8F7F6F5F7F9F8F8F, 0x9F9F9F8F8F7F5F8F, 0x7F8F6F5F40404040, 0x4040404040404040,  // 0x0000ED98 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x0000EDB8 
	0x6F6F6F7F8F8F8F8F, 0x9F8F7F7F8F7F4F5F, 0x6F6F5F6F8F6F5F50, 0x4040404040404040,  // 0x0000EDD8 
	0x5F4F404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x0000EDF8 
	0x4F4F5F5F6F6F6F6F, 0x6F6F5F5F6F5F3F3F, 0x3F4F7F7F7F7F7F7F, 0x7F6F50405F6F9F9F,  // 0x0000EE18 
	0x5F40404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040404040404040,  // 0x0000EE38 
	0x3F3F4F3F3F3F3F3F, 0x4F3F3F3F3F3F4F4F, 0x3F3F3F6F8F8F8F7F, 0x6F7F6F7F9F9F8F6F,  // 0x0000EE58 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404030, 0x303F404040404040,  // 0x0000EE78 
	0x4F4F4F3F3F3F3F3F, 0x4F4F4F4F4F3F4F3F, 0x4F3F4F4F3F3F6F7F, 0x7F5F6F8F7F7F5F40,  // 0x0000EE98 
	0x4040404040404040, 0x4040404040404040, 0x4040404040303030, 0x4F6F404040404040,  // 0x0000EEB8 
	0x3F4F4F3F3F3F3F4F, 0x3F4F3F3F3F3F3F4F, 0x3F4F3F3F3F3F3F3F, 0x4F5F6F6F5F6F7F50,  // 0x0000EED8 
	0x4040404040404040, 0x4040404040404040, 0x4040403030304F5F, 0x8F6F404040404040,  // 0x0000EEF8 
	0x4F4F3F3F3F3F3F4F, 0x4F4F4F4F4F3F4F4F, 0x3F3F3F3F3F4F3F4F, 0x3F3F5F7F8F7F9F8F,  // 0x0000EF18 
	0x5040404040404040, 0x4040404040404040, 0x303030304F5F7F9F, 0x7F4F304040404040,  // 0x0000EF38 
	0x3F3F3F3F3F3F4F3F, 0x3F4F3F4F4F3F4F4F, 0x3F4F3F3F3F3F4F4F, 0x3F3F4F8F8F7F7F9F,  // 0x0000EF58 
	0x8F50404040404040, 0x4040403030403030, 0x3F4F5F6F8F9F9F6F, 0x6F3F303040404040,  // 0x0000EF78 
	0x4F4F4F3F4F3F3F4F, 0x4F4F4F4F3F4F4F3F, 0x4F4F4F4F3F3F4F3F, 0x3F4F3F5F7F8F7F7F,  // 0x0000EF98 
	0x7F6F404040404030, 0x3030304F4F5F6F8F, 0x8F9F9FAF9F7F5F5F, 0x3F20304040404040,  // 0x0000EFB8 
	0x4F4F3F4F3F3F3F3F, 0x4F4F3F4F4F4F4F4F, 0x4F4F3F3F4F4F4F3F, 0x3F3F4F4F6F7F7F7F,  // 0x0000EFD8 
	0x6F6F4F404030203F, 0x3F4F6F8F8F9F8F8F, 0x8F8F7F7F7F6F5F3F, 0x3F30304040404040,  // 0x0000EFF8 
	0x3F3F4F3F3F3F3F3F, 0x3F3F4F4F3F4F4F3F, 0x3F4F4F3F3F4F3F4F, 0x3F4F4F4F3F4F5F7F,  // 0x0000F018 
	0x9FAF7F40303F4F7F, 0x7F9FAF9F9F9F8F6F, 0x7F7F6F6F6F5F3F3F, 0x2030404040404040,  // 0x0000F038 
	0x3F4F4F4F4F4F4F4F, 0x4F3F4F4F4F4F4F3F, 0x3F3F3F4F4F4F3F4F, 0x3F4F4F4F5F5F4F4F,  // 0x0000F058 
	0x6F6F6F303F4F7F7F, 0x8F7F7F7F8F6F7F6F, 0x6F6F6F6F4F3F3F20, 0x3040404040404040,  // 0x0000F078 
	0x3F3F4F4F3F4F4F3F, 0x4F4F3F4F4F3F3F4F, 0x4F3F3F3F4F3F3F4F, 0x4F3F3F4F7F7F7F7F,  // 0x0000F098 
	0x7F5F5F3F3F4F5F6F, 0x6F5F6F6F6F7F7F6F, 0x5F5F3F3F2F2F2030, 0x4040404040404040,  // 0x0000F0B8 
	0x3F3F3F3F4F4F4F3F, 0x4F4F3F3F4F4F3F3F, 0x3F4F4F4F4F4F4F3F, 0x4F4F5F6F7F7F7F7F,  // 0x0000F0D8 
	0x8F8F4F3F4F4F5F6F, 0x5F6F5F5F5F4F4F3F, 0x3F3F3F3F3F304040, 0x4040404040404040,  // 0x0000F0F8 
	0x3F4F4F3F3F3F3F4F, 0x3F3F3F4F4F4F3F4F, 0x4F3F3F4F4F3F4F4F, 0x4F4F6F8F7F7F7F7F,  // 0x0000F118 
	0x9F5F3F3F3F4F4F4F, 0x3F3F2F2F3F2F3F3F, 0x3F3F4F4F40404040, 0x4040404040404040,  // 0x0000F138 
	0x4F4F3F4F3F3F3F3F, 0x3F3F4F3F3F4F4F3F, 0x4F4F3F3F4F3F3F3F, 0x3F5F6F8F8F8F8F8F,  // 0x0000F158 
	0x7F4F2F2F5F5F4F2F, 0x2F3F4F4F3F3F3F4F, 0x7F8F9F6F40404040, 0x4040404040404040,  // 0x0000F178 
	0x4F4F3F3F4F3F4F4F, 0x3F4F4F3F3F3F4F3F, 0x3F3F4F4F4F4F5F4F, 0x5F7F6F5F5F4F7F5F,  // 0x0000F198 
	0x3F2F2F2F3F6F3F3F, 0x3F4F7F6F4F4F5F4F, 0x5F5F8F8F5F4F4040, 0x4040404040404040,  // 0x0000F1B8 
	0x4F4F4F4F4F3F3F3F, 0x3F4F3F3F4F4F3F3F, 0x3F4F4F5F7F6F7F8F, 0x6F5F5F9F9F6F4F3F,  // 0x0000F1D8 
	0x2F2F2F3F4F3F4F5F, 0x4F4F5F4F4F6F7F7F, 0x7F4F6F5F4F4F4F40, 0x4040404040404040,  // 0x0000F1F8 
	0x3F3F4F4F4F4F3F4F, 0x3F3F3F4F4F4F4F3F, 0x4F5F7F7F6F6F6F8F, 0x8F7F6F5F4F4F2F2F,  // 0x0000F218 
	0x2F2F3F4F4F4F4F7F, 0x7F5F4F4F6F8F8F8F, 0x9F6F4F4F5F7F6F5F, 0x4040404040404040,  // 0x0000F238 
	0x4F4F4F4F4F5F4F4F, 0x5F5F7F7F5F6F7F6F, 0x5F4F5F7F9F8F7F8F, 0x9F9F4F3F2F2F2F2F,  // 0x0000F258 
	0x2F3F4F6F6F6F8F9F, 0x8F6F6F6F7F8F8F9F, 0x9F8F6F6F8F9F7F6F, 0x4040404040404040,  // 0x0000F278 
	0x4F4F5F7F7F7F7F7F, 0x7F7F7F7F7F6F5F6F, 0x8F9F6F5F5F7F8F5F, 0x4F3F2F2F3F3F3F3F,  // 0x0000F298 
	0x3F4F4F4F5F6F6F7F, 0x8F8F8F8F8F8F8F9F, 0x9F8F8F9F8F7F6F4F, 0x4040404040404040,  // 0x0000F2B8 
	0x7F8F4F5F9F7F7F7F, 0x7F7F7F7F7F8F8F6F, 0x5F6F7F5F3F2F2F2F, 0x2F3F3F3F3F5F6F5F,  // 0x0000F2D8 
	0x4F4F4F4F4F4F4F6F, 0x7F6F6F7F8F8F8F9F, 0x9F9F9F8F7F4F4F4F, 0x6F5F3F3030404040,  // 0x0000F2F8 
	0x6F7F8F5F5F6F7F8F, 0x8F9F8F8F8F5F3F3F, 0x2F2F2F3F3F3F3F3F, 0x4F4F3F3F3F3F3F6F,  // 0x0000F318 
	0x8F8F9F7F4F5F4F4F, 0x4F4F4F6F6F6F8F7F, 0x6F5F4F4F4F6FAFBF, 0xAF7F4F3030404040,  // 0x0000F338 
	0x5F5F5F4F4F5F4F3F, 0x4F3F3F2F3F3F4F4F, 0x4F4F5F5F4F5F6F6F, 0x5F5F4F3F3F3F4F4F,  // 0x0000F358 
	0x5F4F6F7F7F9F9F7F, 0x7F4F4F4F5F4F4F4F, 0x4F5F7F8F9F9F7F6F, 0x7F4F3F3F40404040,  // 0x0000F378 
	0x5F4F7F6F6F6F6F4F, 0x3F3F5F7F7F7F8F8F, 0x7F7F8F7F7F7F8F7F, 0x6F5F5F3F4F5F7F7F,  // 0x0000F398 
	0x7F6F6F4F4F4F3F5F, 0x7F8F7F7F7F8F7F8F, 0x6F7F7F6F4F3F2F3F, 0x4F5F4F3F3F4F4040,  // 0x0000F3B8 
	0x7F7F7F7F8F5F3F3F, 0x6F7F6F7F8F8F7F7F, 0x7F8F7F7F7F7F7F7F, 0x7F6F3F3F4F5F6F7F,  // 0x0000F3D8 
	0x8FAF9F9F5F4F3F3F, 0x3F3F3F4F4F4F5F4F, 0x4F3F3F3F2F3F4F5F, 0x6F7F6F5F4F3F3F40,  // 0x0000F3F8 
	0x7F6F6F5F4F4F3F3F, 0x3F4F4F5F4F5F5F5F, 0x5F6F5F4F4F4F3F3F, 0x3F3F2F3F4F4F5F8F,  // 0x0000F418 
	0x8FBFBF9F7F7F4F3F, 0x3F4F6F6F8F8F9F8F, 0x6F6F3F3F3F4F6F8F, 0x8FAFBF9F7F5F3F3F,  // 0x0000F438 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4030303F3F4F5F6F,  // 0x0000F458 
	0x8F9FAFAF7F6F4F3F, 0x4F5F5F8F7F8FAFAF, 0x9F7F5F3F4F4F6F8F, 0x8FAF9FAF9F7F5F3F,  // 0x0000F478 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040303F4F5F6F,  // 0x0000F498 
	0x7F8F7FAF8F5F3F3F, 0x3F5F7F7F9F9FAFAF, 0x9F8F4F3F4F5F5F7F, 0x9F9F9FAF9F7F5F3F,  // 0x0000F4B8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x40404040304F6F5F,  // 0x0000F4D8 
	0x6F6F7F9F8F4F3F3F, 0x3F4F6F7F8F9F9FAF, 0x8F6F4F2F2F4F4F7F, 0x7FAF9F8F8F6F4F3F,  // 0x0000F4F8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404030305F,  // 0x0000F518 
	0x5F6F7F8F3F3F2F2F, 0x2F3F4F6F8F8F9F9F, 0x5F4F2F2F2F3F4F5F, 0x7F8F7F8F8F6F4F3F,  // 0x0000F538 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040303F,  // 0x0000F558 
	0x4F4F5F3F2F2F2F3F, 0x2F2F3F4F7F8F7F6F, 0x6F3F2F2F2F3F3F5F, 0x7F6F7F8F6F5F3F30,  // 0x0000F578 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x0000F598 
	0x3F2F1F2F2F3F3F3F, 0x3F3F3F3F6F5F7F3F, 0x2F2F2F2F2F2F2F3F, 0x4F6F6F6F4F3F3040,  // 0x0000F5B8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x0000F5D8 
	0x2F2F2F3F3F3F4F4F, 0x3F3F3F3F5F3F2F2F, 0x3F3F2F2F2F2F2F2F, 0x4F4F4F4F3F404040,  // 0x0000F5F8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x0000F618 
	0x2F3F3F3F3F4F4F4F, 0x4F4F4F3F3F3F4F4F, 0x4F4F3F3F3F3F2F2F, 0x2F4F3F3F40404040,  // 0x0000F638 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x0000F658 
	0x3F3F3F3F4F4F4F5F, 0x4F4F4F4F4F5F6F5F, 0x5F4F4F4F3F3F3F2F, 0x3F3F304040404040,  // 0x0000F678 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x0000F698 
	0x3F3F3F3F4F5F5F5F, 0x5F5F6F6F6F5F6F6F, 0x5F5F5F4F3F3F3F3F, 0x3F30404040404040,  // 0x0000F6B8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x0000F6D8 
	0x3F3F3F4F4F5F5F6F, 0x6F6F6F6F6F6F6F6F, 0x6F6F5F4F4F3F3F2F, 0x4040404040404040,  // 0x0000F6F8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x0000F718 
	0x3F4F4F4F5F5F6F6F, 0x7F7F6F6F7F6F7F7F, 0x6F6F5F4F4F3F2F2F, 0x4040404040404040,  // 0x0000F738 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x0000F758 
	0x3F3F3F4F5F5F6F7F, 0x7F7F8F7F6F7F8F7F, 0x7F6F6F5F4F3F3F3F, 0x4040404040404040,  // 0x0000F778 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x0000F798 
	0x4F4F4F4F5F6F7F7F, 0x7F8F7F7F6F7F7F7F, 0x7F6F5F5F5F4F3F3F, 0x4040404040404040,  // 0x0000F7B8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x0000F7D8 
	0x3F4F4F4F4F5F6F7F, 0x8F7F7F7F7F7F7F6F, 0x7F6F5F5F5F5F3F2F, 0x4040404040404040,  // 0x0000F7F8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x0000F818 
	0x4F4F4F4F5F5F6F7F, 0x6F7F8F7F6F7F7F7F, 0x7F7F5F5F5F3F4F3F, 0x4040404040404040,  // 0x0000F838 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x0000F858 
	0x3F3F4F4F5F5F5F6F, 0x7F6F6F7F7F7F7F7F, 0x7F6F6F4F4F4F3F3F, 0x4040404040404040,  // 0x0000F878 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x0000F898 
	0x3F3F4F4F5F6F7F8F, 0x7F7F7F7F7F7F7F6F, 0x6F6F5F5F5F4F4F3F, 0x4040404040404040,  // 0x0000F8B8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x0000F8D8 
	0x3F4F4F4F5F6F6F7F, 0x7F7F7F7F7F7F8F8F, 0x6F6F5F5F4F4F3F3F, 0x4040404040404040,  // 0x0000F8F8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x0000F918 
	0x4F3F4F4F5F5F6F7F, 0x7F6F7F7F7F7F7F7F, 0x7F6F6F5F4F4F3F3F, 0x4040404040404040,  // 0x0000F938 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x0000F958 
	0x3F4F4F4F4F5F5F7F, 0x7F7F7F7F7F7F7F7F, 0x7F6F6F5F5F4F3F3F, 0x4040404040404040,  // 0x0000F978 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x0000F998 
	0x3F3F4F4F5F5F7F7F, 0x7F6F8F7F7F7F7F7F, 0x7F7F6F4F4F4F3F2F, 0x4040404040404040,  // 0x0000F9B8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x0000F9D8 
	0x4F4F4F4F5F5F6F7F, 0x7F6F7F7F7F7F7F7F, 0x7F5F4F4F4F3F4F3F, 0x4040404040404040,  // 0x0000F9F8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x0000FA18 
	0x4F4F4F4F5F6F6F6F, 0x7F6F7F7F7F7F7F8F, 0x6F5F5F5F4F4F3F3F, 0x4040404040404040,  // 0x0000FA38 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040403F,  // 0x0000FA58 
	0x4F4F4F4F5F6F6F7F, 0x8F7F7F8F8F8F6F6F, 0x7F6F5F5F4F4F3F3F, 0x4040404040404040,  // 0x0000FA78 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x0000FA98 
	0x3F4F4F5F6F6F5F7F, 0x5F4F4F4F4F4F4F6F, 0x7F7F6F6F5F5F3F3F, 0x4040404040404040,  // 0x0000FAB8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x404040404040404F,  // 0x0000FAD8 
	0x3F3F3F4F5F5F5F5F, 0x6F8F8F8F8F9F8F6F, 0x5F4F4F6F5F4F3F3F, 0x4040404040404040,  // 0x0000FAF8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x40404040406F7F7F,  // 0x0000FB18 
	0x8F6F6F5F4F4F8F8F, 0x7F7F7F6F6F7F8F8F, 0x7F7F4F3F4F6F9F7F, 0x6F5F404040404040,  // 0x0000FB38 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x40404040404F6F6F,  // 0x0000FB58 
	0x8F9F9F7F4F4F4F4F, 0x3F5F4F5F6F5F5F4F, 0x4F3F3F7F9F9F9F9F, 0x7F5F404040404040,  // 0x0000FB78 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040405F4F5F6F5F,  // 0x0000FB98 
	0x4F5F5F5F5F4F3F3F, 0x4F7F9F9F9F8F6F3F, 0x3F4F6F5F5F5F5F6F, 0x6F6F5F5040404040,  // 0x0000FBB8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040406F8F8F9F8F,  // 0x0000FBD8 
	0x9F9F9F9F8F6F5F4F, 0x4F6F8F8F9F7F6F4F, 0x5F5F8FAFAF9F9FAF, 0xAF8F9F6F40404040,  // 0x0000FBF8 
	0x4040404040404040, 0x4040404040404040, 0x4040404040404040, 0x4040407F7F7F7F7F,  // 0x0000FC18 
	0x7F7F7F7F7F7F8F5F, 0x5F5F5F5F7F5F5F6F, 0x8F8F7F8F7F7F7F8F, 0x7F7F7F6F40404040,  // 0x0000FC38 
};

static u8 unaccountedFC58[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


