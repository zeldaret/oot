#include <ultra64.h>
#include <z64.h>
#include "spot08_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "spot08_scene.h"



SCmdAltHeaders _spot08_room_0_set0000_cmd00 = { 0x18, 0, (u32)&_spot08_room_0_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _spot08_room_0_set0000_cmd01 = { 0x16, 0, { 0 }, 0x0F }; // 0x0008
SCmdRoomBehavior _spot08_room_0_set0000_cmd02 = { 0x08, 0x00, 0x00000004 }; // 0x0010
SCmdSkyboxDisables _spot08_room_0_set0000_cmd03 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0018
SCmdTimeSettings _spot08_room_0_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0020
SCmdMesh _spot08_room_0_set0000_cmd05 = { 0x0A, 0, (u32)&_spot08_room_0_meshHeader_00000200 }; // 0x0028
SCmdObjectList _spot08_room_0_set0000_cmd06 = { 0x0B, 0x0A, (u32)_spot08_room_0_objectList_00000060 }; // 0x0030
SCmdActorList _spot08_room_0_set0000_cmd07 = { 0x01, 0x18, (u32)_spot08_room_0_actorList_00000074 }; // 0x0038
SCmdEndMarker _spot08_room_0_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _spot08_room_0_alternateHeaders_00000048[] = 
{
	(u32)&_spot08_room_0_set0700_cmd00,
	(u32)&_spot08_room_0_set0330_cmd00,
	0,
	(u32)&_spot08_room_0_set08E0_cmd00,
	(u32)&_spot08_room_0_set09A0_cmd00,
	(u32)&_spot08_room_0_set0AD0_cmd00,
};

s16 _spot08_room_0_objectList_00000060[] = 
{
	OBJECT_SPOT08_OBJ,
	OBJECT_JJ,
	OBJECT_KANBAN,
	OBJECT_TSUBO,
	OBJECT_SYOKUDAI,
	OBJECT_KIBAKO2,
	OBJECT_WOOD02,
	OBJECT_GS,
	OBJECT_BOMBIWA,
	OBJECT_ST,
};

ActorEntry _spot08_room_0_actorList_00000074[24] = 
{
	{ ACTOR_BG_SPOT08_ICEBLOCK, -1200, 0, 0, 0, 0, 0, 0x0214 }, //0x00000074 
	{ ACTOR_EN_A_OBJ, -2557, 3, 486, 0, -13653, 0, 0x0E0A }, //0x00000084 
	{ ACTOR_EN_JJ, -1445, 20, -48, 0, -16384, 0, 0xFFFF }, //0x00000094 
	{ ACTOR_OBJ_MURE, -441, -151, 2139, 0, 0, 0, 0xA322 }, //0x000000A4 
	{ ACTOR_OBJ_MURE, -1247, -173, 2406, 0, 0, 0, 0x5322 }, //0x000000B4 
	{ ACTOR_EN_ISHI, 316, 50, 2634, 0, 31676, 0, 0xFF21 }, //0x000000C4 
	{ ACTOR_EN_WOOD02, 551, 35, 2184, 0, 0, 0, 0xFF0B }, //0x000000D4 
	{ ACTOR_EN_WOOD02, 386, 43, 2265, 0, 0, 0, 0xFF0B }, //0x000000E4 
	{ ACTOR_EN_WOOD02, 544, 45, 2373, 0, 0, 0, 0xFF0B }, //0x000000F4 
	{ ACTOR_EN_WOOD02, 231, 52, 2406, 0, 0, 0, 0xFF0B }, //0x00000104 
	{ ACTOR_EN_WOOD02, 394, 55, 2510, 0, 0, 0, 0xFF0B }, //0x00000114 
	{ ACTOR_EN_WOOD02, 167, 56, 2514, 0, 0, 0, 0xFF0B }, //0x00000124 
	{ ACTOR_EN_KANBAN, -1900, 0, 208, 0, -16384, 0, 0x030F }, //0x00000134 
	{ ACTOR_EN_WOOD02, 186, 44, 2222, 0, 8192, 114, 0x8001 }, //0x00000144 
	{ ACTOR_OBJ_MURE, -1385, 169, 1460, 0, 0, 0, 0x2324 }, //0x00000154 
	{ ACTOR_BG_SPOT08_BAKUDANKABE, 316, 60, 2634, 0, 0, 0, 0x0003 }, //0x00000164 
	{ ACTOR_OBJ_BOMBIWA, 189, 35, 2586, 0, 0, 0, 0x0015 }, //0x00000174 
	{ ACTOR_OBJ_BOMBIWA, 317, 1, 2631, 0, 0, 0, 0x0016 }, //0x00000184 
	{ ACTOR_EN_GS, 505, 37, 2205, 0, -29127, 0, 0x3A01 }, //0x00000194 
	{ ACTOR_OBJ_TSUBO, -1630, 52, -260, 0, 0, 0, 0x7110 }, //0x000001A4 
	{ ACTOR_EN_GS, -1365, 10, -985, 0, -1820, 0, 0x3C02 }, //0x000001B4 
	{ ACTOR_OBJ_TSUBO, -1550, 52, -260, 0, 0, 0, 0x7310 }, //0x000001C4 
	{ ACTOR_OBJ_TSUBO, -1550, 52, 170, 0, 0, 0, 0x7710 }, //0x000001D4 
	{ ACTOR_OBJ_TSUBO, -1630, 52, 170, 0, 0, 0, 0x7B03 }, //0x000001E4 
};

static u32 pad1F4 = 0;
static u32 pad1F8 = 0;
static u32 pad1FC = 0;

MeshHeader2 _spot08_room_0_meshHeader_00000200 = { { 2 }, 0x12, (u32)&_spot08_room_0_meshDListEntry_0000020C, (u32)&(_spot08_room_0_meshDListEntry_0000020C) + sizeof(_spot08_room_0_meshDListEntry_0000020C) };

MeshEntry2 _spot08_room_0_meshDListEntry_0000020C[18] = 
{
	{ -776, 210, 627, 2703, (u32)_spot08_room_0_dlist_000051E8, 0 },
	{ 316, 176, 3146, 593, (u32)_spot08_room_0_dlist_00000DC0, (u32)_spot08_room_0_dlist_00007840 },
	{ -261, 213, -2233, 901, (u32)_spot08_room_0_dlist_00001068, (u32)_spot08_room_0_dlist_000079F0 },
	{ -2360, 136, 1108, 571, (u32)_spot08_room_0_dlist_000013B8, (u32)_spot08_room_0_dlist_00007BA0 },
	{ 503, 2546, 437, 4505, (u32)_spot08_room_0_dlist_00005B00, 0 },
	{ 910, 439, 1963, 1211, (u32)_spot08_room_0_dlist_00007478, 0 },
	{ -2298, 1280, -2664, 2319, (u32)_spot08_room_0_dlist_00001978, 0 },
	{ -1751, 1504, 3669, 2327, (u32)_spot08_room_0_dlist_00002120, 0 },
	{ 1990, 555, 44, 612, (u32)_spot08_room_0_dlist_00002538, 0 },
	{ -9, -716, -284, 1940, (u32)_spot08_room_0_dlist_00006120, 0 },
	{ -784, -200, 776, 2630, (u32)_spot08_room_0_dlist_000066F8, 0 },
	{ 379, 40, 2325, 479, (u32)_spot08_room_0_dlist_00006C48, 0 },
	{ -1599, 16, -49, 467, (u32)_spot08_room_0_dlist_00003048, 0 },
	{ -2098, 109, 94, 729, (u32)_spot08_room_0_dlist_000015F0, 0 },
	{ -3252, -20, 100, 457, 0, (u32)_spot08_room_0_dlist_00007D30 },
	{ -702, 20, 609, 3394, 0, (u32)_spot08_room_0_dlist_00007FE8 },
	{ -1043, 83, 1783, 977, (u32)_spot08_room_0_dlist_000048B0, 0 },
	{ -4386, 337, 492, 3585, (u32)_spot08_room_0_dlist_000069C0, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

SCmdEchoSettings _spot08_room_0_set0330_cmd00 = { 0x16, 0, { 0 }, 0x0F }; // 0x0330
SCmdRoomBehavior _spot08_room_0_set0330_cmd01 = { 0x08, 0x00, 0x00000001 }; // 0x0338
SCmdSkyboxDisables _spot08_room_0_set0330_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0340
SCmdTimeSettings _spot08_room_0_set0330_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0348
SCmdMesh _spot08_room_0_set0330_cmd04 = { 0x0A, 0, (u32)&_spot08_room_0_meshHeader_00000200 }; // 0x0350
SCmdObjectList _spot08_room_0_set0330_cmd05 = { 0x0B, 0x0A, (u32)_spot08_room_0_objectList_00000370 }; // 0x0358
SCmdActorList _spot08_room_0_set0330_cmd06 = { 0x01, 0x37, (u32)_spot08_room_0_actorList_00000384 }; // 0x0360
SCmdEndMarker _spot08_room_0_set0330_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0368
s16 _spot08_room_0_objectList_00000370[] = 
{
	OBJECT_SPOT08_OBJ,
	OBJECT_KANBAN,
	OBJECT_OKUTA,
	OBJECT_TITE,
	OBJECT_GOROIWA,
	OBJECT_GS,
	OBJECT_ST,
	OBJECT_KA,
	OBJECT_TSUBO,
	OBJECT_BOMBIWA,
};

ActorEntry _spot08_room_0_actorList_00000384[55] = 
{
	{ ACTOR_EN_ITEM00, 68, -1382, -166, 0, 0, 0, 0x2000 }, //0x00000384 
	{ ACTOR_EN_ITEM00, 172, -1380, -35, 0, 0, 0, 0x2100 }, //0x00000394 
	{ ACTOR_EN_ITEM00, 137, -1385, 130, 0, 0, 0, 0x2200 }, //0x000003A4 
	{ ACTOR_EN_ITEM00, -76, -1373, 172, 0, 0, 0, 0x2300 }, //0x000003B4 
	{ ACTOR_EN_ITEM00, -207, -1364, 47, 0, 0, 0, 0x2400 }, //0x000003C4 
	{ ACTOR_EN_ITEM00, -173, -1377, -132, 0, 0, 0, 0x2500 }, //0x000003D4 
	{ ACTOR_EN_ITEM00, 242, -1209, -576, 0, 0, 0, 0x2600 }, //0x000003E4 
	{ ACTOR_EN_ITEM00, 540, -1228, -124, 0, 0, 0, 0x2700 }, //0x000003F4 
	{ ACTOR_EN_ITEM00, 397, -1285, 318, 0, 0, 0, 0x2800 }, //0x00000404 
	{ ACTOR_EN_ITEM00, -166, -1265, 428, 0, 0, 0, 0x2900 }, //0x00000414 
	{ ACTOR_EN_ITEM00, -574, -1204, 163, 0, 0, 0, 0x2A00 }, //0x00000424 
	{ ACTOR_EN_ITEM00, -464, -1242, -389, 0, 0, 0, 0x2B00 }, //0x00000434 
	{ ACTOR_EN_ITEM00, 353, -1072, -934, 0, 0, 0, 0x2C00 }, //0x00000444 
	{ ACTOR_EN_ITEM00, 1032, -1025, -254, 0, 0, 0, 0x2D00 }, //0x00000454 
	{ ACTOR_EN_ITEM00, 603, -1206, 466, 0, 0, 0, 0x2E00 }, //0x00000464 
	{ ACTOR_EN_ITEM00, -227, -1163, 696, 0, 0, 0, 0x2F00 }, //0x00000474 
	{ ACTOR_EN_ITEM00, -847, -1095, 206, 0, 0, 0, 0x3000 }, //0x00000484 
	{ ACTOR_EN_ITEM00, -857, -1082, -654, 0, 0, 0, 0x3100 }, //0x00000494 
	{ ACTOR_EN_OKUTA, -473, 20, -441, 0, 8192, 0, 0xFF00 }, //0x000004A4 
	{ ACTOR_EN_OKUTA, 294, 20, -895, 0, 0, 0, 0xFF00 }, //0x000004B4 
	{ ACTOR_EN_OKUTA, 392, 20, 339, 0, 0, 0, 0xFF00 }, //0x000004C4 
	{ ACTOR_EN_OKUTA, 912, 20, -395, 0, 0, 0, 0xFF00 }, //0x000004D4 
	{ ACTOR_EN_GS, 505, 37, 2205, 0, -29127, 0, 0x3801 }, //0x000004E4 
	{ ACTOR_EN_GS, -1365, 10, -985, 0, -1820, 0, 0x3902 }, //0x000004F4 
	{ ACTOR_EN_ST, 843, 38, 2423, 0, -6918, 0, 0x0002 }, //0x00000504 
	{ ACTOR_EN_ST, 681, -28, 2433, 0, -8192, 0, 0x0002 }, //0x00000514 
	{ ACTOR_EN_ST, 1147, 188, 2177, 0, -8192, 0, 0x0002 }, //0x00000524 
	{ ACTOR_EN_ST, 927, 98, 2248, 0, -7464, 0, 0x0002 }, //0x00000534 
	{ ACTOR_EN_ST, 1209, 1118, 1682, 0, 0, 0, 0x0001 }, //0x00000544 
	{ ACTOR_BG_SPOT08_ICEBLOCK, -1200, 0, 0, 0, 0, 0, 0x0214 }, //0x00000554 
	{ ACTOR_BG_SPOT08_BAKUDANKABE, 316, 60, 2634, 0, 0, 0, 0x0003 }, //0x00000564 
	{ ACTOR_BG_SPOT08_ICEBLOCK, -185, 20, -32, 0, 16384, 0, 0x0001 }, //0x00000574 
	{ ACTOR_BG_SPOT08_ICEBLOCK, 974, 20, 90, 0, 0, 0, 0x0011 }, //0x00000584 
	{ ACTOR_BG_SPOT08_ICEBLOCK, -214, 20, -1393, 0, 0, 0, 0x0011 }, //0x00000594 
	{ ACTOR_BG_SPOT08_ICEBLOCK, 255, 20, -285, 0, 16384, 0, 0x0010 }, //0x000005A4 
	{ ACTOR_BG_SPOT08_ICEBLOCK, -253, 20, -834, 0, 0, 0, 0x0012 }, //0x000005B4 
	{ ACTOR_BG_SPOT08_ICEBLOCK, 35, 20, -1125, 0, 0, 0, 0x0012 }, //0x000005C4 
	{ ACTOR_BG_SPOT08_ICEBLOCK, 102, 20, -628, 0, 0, 0, 0x0012 }, //0x000005D4 
	{ ACTOR_BG_SPOT08_ICEBLOCK, -649, 20, -10, 0, 0, 0, 0x0020 }, //0x000005E4 
	{ ACTOR_BG_SPOT08_ICEBLOCK, 599, 20, -87, 0, 0, 0, 0x0023 }, //0x000005F4 
	{ ACTOR_EN_ITEM00, 974, 30, 90, 0, -19479, 0, 0x0106 }, //0x00000604 
	{ ACTOR_EN_ITEM00, -14, -1445, 4, 0, 0, 0, 0x1406 }, //0x00000614 
	{ ACTOR_OBJ_TSUBO, 430, -280, 2568, 0, 0, 0, 0x770E }, //0x00000624 
	{ ACTOR_OBJ_TSUBO, 385, -280, 2587, 0, 0, 0, 0x790E }, //0x00000634 
	{ ACTOR_OBJ_TSUBO, 418, -280, 2609, 0, 0, 0, 0x7B09 }, //0x00000644 
	{ ACTOR_EN_KAKASI2, -1036, 236, 1139, 0, 0, 20, 0x053A }, //0x00000654 
	{ ACTOR_EN_A_OBJ, -2557, 3, 486, 0, -13653, 0, 0x0E0A }, //0x00000664 
	{ ACTOR_EN_SW, 989, 1063, 1688, 16384, 22209, 0, 0xB220 }, //0x00000674 
	{ ACTOR_EN_ISHI, 316, 50, 2634, 0, 31676, 0, 0xFF21 }, //0x00000684 
	{ ACTOR_EN_WEATHER_TAG, 0, 0, 0, 0, 0, 0, 0x2802 }, //0x00000694 
	{ ACTOR_EN_TITE, 329, 20, 1920, 0, 0, 0, 0xFFFE }, //0x000006A4 
	{ ACTOR_OBJECT_KANKYO, -714, 20, 1464, 0, 0, 0, 0x0003 }, //0x000006B4 
	{ ACTOR_OBJ_BOMBIWA, 189, 35, 2586, 0, 0, 0, 0x0015 }, //0x000006C4 
	{ ACTOR_OBJ_BOMBIWA, 317, 1, 2631, 0, 0, 0, 0x0016 }, //0x000006D4 
	{ ACTOR_EN_WONDER_ITEM, -667, 320, 1053, 0, 0, 1, 0x12BF }, //0x000006E4 
};

static u32 pad6F4 = 0;
static u32 pad6F8 = 0;
static u32 pad6FC = 0;

SCmdEchoSettings _spot08_room_0_set0700_cmd00 = { 0x16, 0, { 0 }, 0x0F }; // 0x0700
SCmdRoomBehavior _spot08_room_0_set0700_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x0708
SCmdSkyboxDisables _spot08_room_0_set0700_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0710
SCmdTimeSettings _spot08_room_0_set0700_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0718
SCmdMesh _spot08_room_0_set0700_cmd04 = { 0x0A, 0, (u32)&_spot08_room_0_meshHeader_00000200 }; // 0x0720
SCmdObjectList _spot08_room_0_set0700_cmd05 = { 0x0B, 0x0B, (u32)_spot08_room_0_objectList_00000740 }; // 0x0728
SCmdActorList _spot08_room_0_set0700_cmd06 = { 0x01, 0x18, (u32)_spot08_room_0_actorList_00000758 }; // 0x0730
SCmdEndMarker _spot08_room_0_set0700_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0738
s16 _spot08_room_0_objectList_00000740[] = 
{
	OBJECT_SPOT08_OBJ,
	OBJECT_JJ,
	OBJECT_NIW,
	OBJECT_KANBAN,
	OBJECT_TSUBO,
	OBJECT_SYOKUDAI,
	OBJECT_KIBAKO2,
	OBJECT_WOOD02,
	OBJECT_GS,
	OBJECT_ST,
	OBJECT_BOMBIWA,
};

ActorEntry _spot08_room_0_actorList_00000758[24] = 
{
	{ ACTOR_BG_SPOT08_ICEBLOCK, -1200, 0, 0, 0, 0, 0, 0x0214 }, //0x00000758 
	{ ACTOR_EN_A_OBJ, -2557, 3, 486, 0, -13653, 0, 0x0E0A }, //0x00000768 
	{ ACTOR_EN_JJ, -1445, 20, -48, 0, -16384, 0, 0xFFFF }, //0x00000778 
	{ ACTOR_OBJ_MURE, -441, -151, 2139, 0, 0, 0, 0xA322 }, //0x00000788 
	{ ACTOR_OBJ_MURE, -1247, -173, 2406, 0, 0, 0, 0x5322 }, //0x00000798 
	{ ACTOR_EN_ISHI, 316, 50, 2634, 0, 31676, 0, 0xFF21 }, //0x000007A8 
	{ ACTOR_EN_WOOD02, 551, 35, 2184, 0, 0, 0, 0xFF0B }, //0x000007B8 
	{ ACTOR_EN_WOOD02, 386, 43, 2265, 0, 0, 0, 0xFF0B }, //0x000007C8 
	{ ACTOR_EN_WOOD02, 544, 45, 2373, 0, 0, 0, 0xFF0B }, //0x000007D8 
	{ ACTOR_EN_WOOD02, 231, 52, 2406, 0, 0, 0, 0xFF0B }, //0x000007E8 
	{ ACTOR_EN_WOOD02, 394, 55, 2510, 0, 0, 0, 0xFF0B }, //0x000007F8 
	{ ACTOR_EN_WOOD02, 167, 56, 2514, 0, 0, 0, 0xFF0B }, //0x00000808 
	{ ACTOR_EN_KANBAN, -1900, 0, 208, 0, -16384, 0, 0x030F }, //0x00000818 
	{ ACTOR_EN_WOOD02, 186, 44, 2222, 0, 8192, 114, 0x8001 }, //0x00000828 
	{ ACTOR_BG_SPOT08_BAKUDANKABE, 316, 60, 2634, 0, 0, 0, 0x0003 }, //0x00000838 
	{ ACTOR_EN_SW, -1891, 187, 1911, 16384, 18022, 0, 0xB204 }, //0x00000848 
	{ ACTOR_OBJ_BOMBIWA, 189, 35, 2586, 0, 0, 0, 0x0015 }, //0x00000858 
	{ ACTOR_OBJ_BOMBIWA, 317, 1, 2631, 0, 0, 0, 0x0016 }, //0x00000868 
	{ ACTOR_EN_GS, 505, 37, 2205, 0, -29127, 0, 0x3A01 }, //0x00000878 
	{ ACTOR_OBJ_TSUBO, -1630, 52, -260, 0, 0, 0, 0x7110 }, //0x00000888 
	{ ACTOR_EN_GS, -1365, 10, -985, 0, -1820, 0, 0x3C02 }, //0x00000898 
	{ ACTOR_OBJ_TSUBO, -1550, 52, -260, 0, 0, 0, 0x7310 }, //0x000008A8 
	{ ACTOR_OBJ_TSUBO, -1550, 52, 170, 0, 0, 0, 0x7710 }, //0x000008B8 
	{ ACTOR_OBJ_TSUBO, -1630, 52, 170, 0, 0, 0, 0x7B03 }, //0x000008C8 
};

static u32 pad8D8 = 0;
static u32 pad8DC = 0;

SCmdEchoSettings _spot08_room_0_set08E0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x08E0
SCmdRoomBehavior _spot08_room_0_set08E0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x08E8
SCmdSkyboxDisables _spot08_room_0_set08E0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x08F0
SCmdTimeSettings _spot08_room_0_set08E0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00 }; // 0x08F8
SCmdMesh _spot08_room_0_set08E0_cmd04 = { 0x0A, 0, (u32)&_spot08_room_0_meshHeader_00000200 }; // 0x0900
SCmdObjectList _spot08_room_0_set08E0_cmd05 = { 0x0B, 0x09, (u32)_spot08_room_0_objectList_00000920 }; // 0x0908
SCmdActorList _spot08_room_0_set08E0_cmd06 = { 0x01, 0x06, (u32)_spot08_room_0_actorList_00000934 }; // 0x0910
SCmdEndMarker _spot08_room_0_set08E0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0918
s16 _spot08_room_0_objectList_00000920[] = 
{
	OBJECT_JJ,
	OBJECT_BUBBLE,
	OBJECT_TITE,
	OBJECT_MJIN,
	OBJECT_MJIN_OKA,
	OBJECT_OKUTA,
	OBJECT_EFC_FLASH,
	OBJECT_GI_JEWEL,
	OBJECT_RU1,
};

ActorEntry _spot08_room_0_actorList_00000934[6] = 
{
	{ ACTOR_DEMO_EFFECT, -706, -113, 756, 0, 0, 0, 0x0015 }, //0x00000934 
	{ ACTOR_DEMO_EFFECT, -626, -335, 703, 0, 0, 0, 0x1012 }, //0x00000944 
	{ ACTOR_EN_RU1, -761, 185, 785, 0, 0, 0, 0x0001 }, //0x00000954 
	{ ACTOR_EN_JJ, -949, 69, -48, 0, -16384, 0, 0xFFFF }, //0x00000964 
	{ ACTOR_BG_SPOT08_BAKUDANKABE, 316, 60, 2634, 0, 0, 0, 0x00FF }, //0x00000974 
	{ ACTOR_EN_ISHI, 316, 60, 2634, 0, 31676, 0, 0xFF01 }, //0x00000984 
};

static u32 pad994 = 0;
static u32 pad998 = 0;
static u32 pad99C = 0;

SCmdEchoSettings _spot08_room_0_set09A0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x09A0
SCmdRoomBehavior _spot08_room_0_set09A0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x09A8
SCmdSkyboxDisables _spot08_room_0_set09A0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x09B0
SCmdTimeSettings _spot08_room_0_set09A0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x09B8
SCmdMesh _spot08_room_0_set09A0_cmd04 = { 0x0A, 0, (u32)&_spot08_room_0_meshHeader_00000200 }; // 0x09C0
SCmdObjectList _spot08_room_0_set09A0_cmd05 = { 0x0B, 0x07, (u32)_spot08_room_0_objectList_000009E0 }; // 0x09C8
SCmdActorList _spot08_room_0_set09A0_cmd06 = { 0x01, 0x0E, (u32)_spot08_room_0_actorList_000009F0 }; // 0x09D0
SCmdEndMarker _spot08_room_0_set09A0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x09D8
s16 _spot08_room_0_objectList_000009E0[] = 
{
	OBJECT_JJ,
	OBJECT_BUBBLE,
	OBJECT_TITE,
	OBJECT_MJIN,
	OBJECT_MJIN_OKA,
	OBJECT_OKUTA,
	OBJECT_TITE,
};

ActorEntry _spot08_room_0_actorList_000009F0[14] = 
{
	{ ACTOR_EN_FISH, 409, -224, 215, 0, 0, 0, 0xFFFF }, //0x000009F0 
	{ ACTOR_EN_FISH, 673, -136, -74, 0, 0, 0, 0xFFFF }, //0x00000A00 
	{ ACTOR_EN_FISH, 258, -224, -639, 0, 0, 0, 0xFFFF }, //0x00000A10 
	{ ACTOR_EN_FISH, -370, -124, -137, 0, 0, 0, 0xFFFF }, //0x00000A20 
	{ ACTOR_EN_FISH, -370, -237, 390, 0, 0, 0, 0xFFFF }, //0x00000A30 
	{ ACTOR_EN_FISH, 296, -199, 415, 0, 0, 0, 0xFFFF }, //0x00000A40 
	{ ACTOR_EN_JJ, -1050, 80, -28, 0, -16384, 0, 0xFFFF }, //0x00000A50 
	{ ACTOR_EN_TITE, 1101, -831, -273, 0, 0, 0, 0xFFFE }, //0x00000A60 
	{ ACTOR_EN_TITE, -692, 28, -580, 0, 0, 0, 0xFFFE }, //0x00000A70 
	{ ACTOR_EN_TITE, -920, 28, -225, 0, 0, 0, 0xFFFE }, //0x00000A80 
	{ ACTOR_EN_OKUTA, -441, -248, 594, 0, 0, 0, 0x0000 }, //0x00000A90 
	{ ACTOR_EN_OKUTA, 1313, -319, -251, 0, 8192, 0, 0x0000 }, //0x00000AA0 
	{ ACTOR_BG_MJIN, -1571, 52, -53, 0, 0, 0, 0x0000 }, //0x00000AB0 
	{ ACTOR_EN_JJ, -949, 69, -48, 0, -16384, 0, 0xFFFF }, //0x00000AC0 
};


SCmdEchoSettings _spot08_room_0_set0AD0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0AD0
SCmdRoomBehavior _spot08_room_0_set0AD0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0AD8
SCmdSkyboxDisables _spot08_room_0_set0AD0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0AE0
SCmdTimeSettings _spot08_room_0_set0AD0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x10, 0x15, 0x00 }; // 0x0AE8
SCmdMesh _spot08_room_0_set0AD0_cmd04 = { 0x0A, 0, (u32)&_spot08_room_0_meshHeader_00000200 }; // 0x0AF0
SCmdObjectList _spot08_room_0_set0AD0_cmd05 = { 0x0B, 0x07, (u32)_spot08_room_0_objectList_00000B10 }; // 0x0AF8
SCmdActorList _spot08_room_0_set0AD0_cmd06 = { 0x01, 0x0E, (u32)_spot08_room_0_actorList_00000B20 }; // 0x0B00
SCmdEndMarker _spot08_room_0_set0AD0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0B08
s16 _spot08_room_0_objectList_00000B10[] = 
{
	OBJECT_JJ,
	OBJECT_BUBBLE,
	OBJECT_TITE,
	OBJECT_MJIN,
	OBJECT_MJIN_OKA,
	OBJECT_OKUTA,
	OBJECT_TITE,
};

ActorEntry _spot08_room_0_actorList_00000B20[14] = 
{
	{ ACTOR_EN_FISH, 409, -224, 215, 0, 0, 0, 0xFFFF }, //0x00000B20 
	{ ACTOR_EN_FISH, 673, -136, -74, 0, 0, 0, 0xFFFF }, //0x00000B30 
	{ ACTOR_EN_FISH, 258, -224, -639, 0, 0, 0, 0xFFFF }, //0x00000B40 
	{ ACTOR_EN_FISH, -370, -124, -137, 0, 0, 0, 0xFFFF }, //0x00000B50 
	{ ACTOR_EN_FISH, -370, -237, 390, 0, 0, 0, 0xFFFF }, //0x00000B60 
	{ ACTOR_EN_FISH, 296, -199, 415, 0, 0, 0, 0xFFFF }, //0x00000B70 
	{ ACTOR_EN_JJ, -1050, 80, -28, 0, -16384, 0, 0xFFFF }, //0x00000B80 
	{ ACTOR_EN_TITE, 1101, -831, -273, 0, 0, 0, 0xFFFE }, //0x00000B90 
	{ ACTOR_EN_TITE, -692, 28, -580, 0, 0, 0, 0xFFFE }, //0x00000BA0 
	{ ACTOR_EN_TITE, -920, 28, -225, 0, 0, 0, 0xFFFE }, //0x00000BB0 
	{ ACTOR_EN_OKUTA, -441, -248, 594, 0, 0, 0, 0xFF00 }, //0x00000BC0 
	{ ACTOR_EN_OKUTA, 1313, -319, -251, 0, 8192, 0, 0xFF00 }, //0x00000BD0 
	{ ACTOR_EN_JJ, -949, 69, -48, 0, -16384, 0, 0xFFFF }, //0x00000BE0 
	{ ACTOR_BG_SPOT08_ICEBLOCK, -1200, 0, 0, 0, 0, 0, 0x0214 }, //0x00000BF0 
};


Vtx_t _spot08_room_0_vertices_00000C00[12] = 
{
	 { 87, 60, 2611, 0, -4544, 1024, 21, 91, 182, 255 }, // 0x00000C00
	 { 87, 209, 2611, 0, -4544, 688, 13, 29, 141, 255 }, // 0x00000C10
	 { 350, 60, 3682, 0, 2746, 1024, 0, 118, 239, 255 }, // 0x00000C20
	 { 87, 209, 2611, 0, -4544, 688, 47, 239, 148, 255 }, // 0x00000C30
	 { 347, 293, 2685, 0, -3655, -36, 243, 194, 155, 255 }, // 0x00000C40
	 { 350, 60, 3682, 0, 2746, 1024, 251, 98, 187, 255 }, // 0x00000C50
	 { 347, 293, 2685, 0, 427, -1, 243, 194, 155, 255 }, // 0x00000C60
	 { 545, 209, 2657, 0, 0, 628, 153, 226, 203, 255 }, // 0x00000C70
	 { 350, 60, 3682, 0, 6895, 1024, 251, 98, 187, 255 }, // 0x00000C80
	 { 545, 209, 2657, 0, 0, 628, 167, 11, 177, 255 }, // 0x00000C90
	 { 545, 60, 2657, 0, 0, 1024, 212, 95, 199, 255 }, // 0x00000CA0
	 { 350, 60, 3682, 0, 6895, 1024, 0, 118, 239, 255 }, // 0x00000CB0
};

Vtx_t _spot08_room_0_vertices_00000CC0[8] = 
{
	 { 350, 60, 3682, 0, 3449, -8704, 0, 118, 239, 255 }, // 0x00000CC0
	 { 339, 60, 2662, 0, 2429, -6643, 231, 96, 189, 255 }, // 0x00000CD0
	 { 287, 60, 2657, 0, 2583, -6545, 67, 96, 231, 255 }, // 0x00000CE0
	 { 87, 60, 2611, 0, 2906, -6254, 21, 91, 182, 255 }, // 0x00000CF0
	 { 350, 60, 3682, 0, 3463, -8719, 0, 118, 239, 255 }, // 0x00000D00
	 { 287, 60, 2657, 0, 2586, -6565, 67, 96, 231, 255 }, // 0x00000D10
	 { 545, 60, 2657, 0, 2015, -6818, 212, 95, 199, 255 }, // 0x00000D20
	 { 339, 60, 2662, 0, 2432, -6663, 231, 96, 189, 255 }, // 0x00000D30
};

Vtx_t _spot08_room_0_vertices_00000D40[8] = 
{
	 { 92, 60, 2577, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D40
	 { 545, 60, 2657, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D50
	 { 92, 293, 2577, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D60
	 { 545, 293, 2657, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D70
	 { -89, 60, 3605, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D80
	 { 364, 60, 3685, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D90
	 { -89, 293, 3605, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000DA0
	 { 364, 293, 3685, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000DB0
};

Gfx _spot08_room_0_dlist_00000DC0[] =
{
	gsDPPipeSync(), // 0x00000DC0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000DC8
	gsSPVertex(_spot08_room_0_vertices_00000D40, 8, 0), // 0x00000DD0
	gsSPCullDisplayList(0, 7), // 0x00000DD8
	gsDPPipeSync(), // 0x00000DE0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000DE8
	gsDPPipeSync(), // 0x00000DF0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000DF8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000E00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_000081A0), // 0x00000E08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 7, 0), // 0x00000E10
	gsDPLoadSync(), // 0x00000E18
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000E20
	gsDPPipeSync(), // 0x00000E28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 8, 0, 0, 0, 2, 5, 0, 0, 7, 0), // 0x00000E30
	gsDPSetTileSize(0, 0, 0, 508, 124), // 0x00000E38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004CC0), // 0x00000E40
	gsDPTileSync(), // 0x00000E48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000E50
	gsDPLoadSync(), // 0x00000E58
	gsDPLoadTLUTCmd(7, 15), // 0x00000E60
	gsDPPipeSync(), // 0x00000E68
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000E70
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000E78
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00000E80
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00000E88
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000E90
	gsSPVertex(_spot08_room_0_vertices_00000C00, 12, 0), // 0x00000E98
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000EA0
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00000EA8
	gsDPPipeSync(), // 0x00000EB0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000EB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_000069A0), // 0x00000EC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000EC8
	gsDPLoadSync(), // 0x00000ED0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000ED8
	gsDPPipeSync(), // 0x00000EE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000EE8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000EF0
	gsSPVertex(_spot08_room_0_vertices_00000CC0, 8, 0), // 0x00000EF8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000F00
	gsSP1Triangle(4, 6, 7, 0), // 0x00000F08
	gsSPEndDisplayList(), // 0x00000F10
};

Vtx_t _spot08_room_0_vertices_00000F18[3] = 
{
	 { 351, 92, -1656, 0, 292, 1035, 220, 8, 114, 255 }, // 0x00000F18
	 { 13, 235, -1645, 0, 158, 427, 227, 161, 67, 255 }, // 0x00000F28
	 { -364, 188, -2884, 0, 7165, 624, 14, 141, 28, 255 }, // 0x00000F38
};

Vtx_t _spot08_room_0_vertices_00000F48[4] = 
{
	 { 13, 235, -1645, 0, -3024, -140, 227, 161, 67, 255 }, // 0x00000F48
	 { -386, 335, -1624, 0, -2873, -1064, 4, 172, 85, 255 }, // 0x00000F58
	 { -364, 188, -2884, 0, 2911, -597, 14, 141, 28, 255 }, // 0x00000F68
	 { -686, 235, -1609, 0, -2730, -1756, 50, 174, 71, 255 }, // 0x00000F78
};

Vtx_t _spot08_room_0_vertices_00000F88[3] = 
{
	 { -686, 235, -1609, 0, -119, 427, 50, 174, 71, 255 }, // 0x00000F88
	 { -872, 92, -1581, 0, -193, 1035, 66, 22, 97, 255 }, // 0x00000F98
	 { -364, 188, -2884, 0, 7165, 624, 14, 141, 28, 255 }, // 0x00000FA8
};

Vtx_t _spot08_room_0_vertices_00000FB8[3] = 
{
	 { -872, 92, -1581, 0, 1481, 2879, 66, 22, 97, 255 }, // 0x00000FB8
	 { 351, 92, -1656, 0, -4096, 0, 220, 8, 114, 255 }, // 0x00000FC8
	 { -364, 188, -2884, 0, -4096, 7261, 14, 141, 28, 255 }, // 0x00000FD8
};

Vtx_t _spot08_room_0_vertices_00000FE8[8] = 
{
	 { -359, 92, -2887, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000FE8
	 { 351, 92, -1656, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000FF8
	 { -359, 335, -2887, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001008
	 { 351, 335, -1656, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001018
	 { -1309, 92, -2338, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001028
	 { -599, 92, -1108, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001038
	 { -1309, 335, -2338, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001048
	 { -599, 335, -1108, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001058
};

Gfx _spot08_room_0_dlist_00001068[] =
{
	gsDPPipeSync(), // 0x00001068
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001070
	gsSPVertex(_spot08_room_0_vertices_00000FE8, 8, 0), // 0x00001078
	gsSPCullDisplayList(0, 7), // 0x00001080
	gsDPPipeSync(), // 0x00001088
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001090
	gsDPPipeSync(), // 0x00001098
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000010A0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000010A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_000081A0), // 0x000010B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 7, 0), // 0x000010B8
	gsDPLoadSync(), // 0x000010C0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000010C8
	gsDPPipeSync(), // 0x000010D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 8, 0, 0, 0, 2, 5, 0, 0, 7, 0), // 0x000010D8
	gsDPSetTileSize(0, 0, 0, 508, 124), // 0x000010E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004CC0), // 0x000010E8
	gsDPTileSync(), // 0x000010F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000010F8
	gsDPLoadSync(), // 0x00001100
	gsDPLoadTLUTCmd(7, 15), // 0x00001108
	gsDPPipeSync(), // 0x00001110
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001118
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001120
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001128
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001130
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001138
	gsSPVertex(_spot08_room_0_vertices_00000F18, 3, 0), // 0x00001140
	gsSP1Triangle(0, 1, 2, 0), // 0x00001148
	gsDPPipeSync(), // 0x00001150
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001158
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004DA0), // 0x00001160
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001168
	gsDPLoadSync(), // 0x00001170
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001178
	gsDPPipeSync(), // 0x00001180
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001188
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001190
	gsSPVertex(_spot08_room_0_vertices_00000F48, 4, 0), // 0x00001198
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000011A0
	gsDPPipeSync(), // 0x000011A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000011B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_000081A0), // 0x000011B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 7, 0), // 0x000011C0
	gsDPLoadSync(), // 0x000011C8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000011D0
	gsDPPipeSync(), // 0x000011D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 8, 0, 0, 0, 2, 5, 0, 0, 7, 0), // 0x000011E0
	gsDPSetTileSize(0, 0, 0, 508, 124), // 0x000011E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004CC0), // 0x000011F0
	gsDPTileSync(), // 0x000011F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001200
	gsDPLoadSync(), // 0x00001208
	gsDPLoadTLUTCmd(7, 15), // 0x00001210
	gsDPPipeSync(), // 0x00001218
	gsSPVertex(_spot08_room_0_vertices_00000F88, 3, 0), // 0x00001220
	gsSP1Triangle(0, 1, 2, 0), // 0x00001228
	gsDPPipeSync(), // 0x00001230
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000B9A0), // 0x00001238
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001240
	gsDPLoadSync(), // 0x00001248
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001250
	gsDPPipeSync(), // 0x00001258
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001260
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001268
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D38), // 0x00001270
	gsDPTileSync(), // 0x00001278
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001280
	gsDPLoadSync(), // 0x00001288
	gsDPLoadTLUTCmd(7, 15), // 0x00001290
	gsDPPipeSync(), // 0x00001298
	gsSPVertex(_spot08_room_0_vertices_00000FB8, 3, 0), // 0x000012A0
	gsSP1Triangle(0, 1, 2, 0), // 0x000012A8
	gsSPEndDisplayList(), // 0x000012B0
};

Vtx_t _spot08_room_0_vertices_000012B8[8] = 
{
	 { -2535, 20, 577, 0, -4544, 1024, 55, 89, 198, 255 }, // 0x000012B8
	 { -2535, 169, 577, 0, -4544, 688, 81, 240, 170, 255 }, // 0x000012C8
	 { -2390, 20, 1640, 0, 2746, 1024, 250, 39, 143, 255 }, // 0x000012D8
	 { -2339, 253, 647, 0, -3655, -36, 4, 233, 139, 255 }, // 0x000012E8
	 { -2339, 253, 647, 0, 427, -1, 4, 233, 139, 255 }, // 0x000012F8
	 { -2184, 169, 617, 0, 0, 628, 184, 239, 162, 255 }, // 0x00001308
	 { -2390, 20, 1640, 0, 6895, 1024, 250, 39, 143, 255 }, // 0x00001318
	 { -2184, 20, 617, 0, 0, 1024, 211, 92, 195, 255 }, // 0x00001328
};

Vtx_t _spot08_room_0_vertices_00001338[8] = 
{
	 { -2532, 20, 555, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001338
	 { -2184, 20, 617, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001348
	 { -2532, 253, 555, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001358
	 { -2184, 253, 617, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001368
	 { -2713, 20, 1583, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001378
	 { -2365, 20, 1644, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001388
	 { -2713, 253, 1583, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001398
	 { -2365, 253, 1644, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013A8
};

Gfx _spot08_room_0_dlist_000013B8[] =
{
	gsDPPipeSync(), // 0x000013B8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000013C0
	gsSPVertex(_spot08_room_0_vertices_00001338, 8, 0), // 0x000013C8
	gsSPCullDisplayList(0, 7), // 0x000013D0
	gsDPPipeSync(), // 0x000013D8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000013E0
	gsDPPipeSync(), // 0x000013E8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000013F0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000013F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_000081A0), // 0x00001400
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 7, 0), // 0x00001408
	gsDPLoadSync(), // 0x00001410
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001418
	gsDPPipeSync(), // 0x00001420
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 8, 0, 0, 0, 2, 5, 0, 0, 7, 0), // 0x00001428
	gsDPSetTileSize(0, 0, 0, 508, 124), // 0x00001430
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004CC0), // 0x00001438
	gsDPTileSync(), // 0x00001440
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001448
	gsDPLoadSync(), // 0x00001450
	gsDPLoadTLUTCmd(7, 15), // 0x00001458
	gsDPPipeSync(), // 0x00001460
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001468
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001470
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001478
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001480
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001488
	gsSPVertex(_spot08_room_0_vertices_000012B8, 8, 0), // 0x00001490
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001498
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x000014A0
	gsSPEndDisplayList(), // 0x000014A8
};

Vtx_t _spot08_room_0_vertices_000014B0[12] = 
{
	 { -1597, 199, 244, 0, 0, 0, 0, 0, 120, 255 }, // 0x000014B0
	 { -1597, -1, 244, 0, 0, 4096, 0, 0, 120, 255 }, // 0x000014C0
	 { -1565, -1, 244, 0, 512, 4096, 0, 0, 120, 255 }, // 0x000014D0
	 { -1565, 199, 244, 0, 512, 0, 0, 0, 120, 255 }, // 0x000014E0
	 { -1584, 0, 232, 0, 2542, 4096, 139, 0, 24, 255 }, // 0x000014F0
	 { -1552, 220, 385, 0, 0, 0, 139, 0, 24, 255 }, // 0x00001500
	 { -1584, 200, 232, 0, 2542, 0, 139, 0, 24, 255 }, // 0x00001510
	 { -1552, 20, 385, 0, 0, 4096, 139, 0, 24, 255 }, // 0x00001520
	 { -2636, 200, 565, 0, -6692, 0, 119, 0, 255, 255 }, // 0x00001530
	 { -2636, 0, 565, 0, -6692, 4096, 119, 0, 255, 255 }, // 0x00001540
	 { -2644, 0, -377, 0, 6672, 4096, 119, 0, 255, 255 }, // 0x00001550
	 { -2644, 200, -377, 0, 6672, 0, 119, 0, 255, 255 }, // 0x00001560
};

Vtx_t _spot08_room_0_vertices_00001570[8] = 
{
	 { -2644, -1, -377, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001570
	 { -1552, -1, -377, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001580
	 { -2644, 220, -377, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001590
	 { -1552, 220, -377, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015A0
	 { -2644, -1, 565, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015B0
	 { -1552, -1, 565, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015C0
	 { -2644, 220, 565, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015D0
	 { -1552, 220, 565, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015E0
};

Gfx _spot08_room_0_dlist_000015F0[] =
{
	gsDPPipeSync(), // 0x000015F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000015F8
	gsSPVertex(_spot08_room_0_vertices_00001570, 8, 0), // 0x00001600
	gsSPCullDisplayList(0, 7), // 0x00001608
	gsDPPipeSync(), // 0x00001610
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001618
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001620
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001628
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_000091A0), // 0x00001630
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 7, 0, 0, 4, 0), // 0x00001638
	gsDPLoadSync(), // 0x00001640
	gsDPLoadBlock(7, 0, 0, 2047, 512), // 0x00001648
	gsDPPipeSync(), // 0x00001650
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 7, 0, 0, 4, 0), // 0x00001658
	gsDPSetTileSize(0, 0, 0, 60, 508), // 0x00001660
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001668
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001670
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x00001678
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001680
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001688
	gsSPVertex(_spot08_room_0_vertices_000014B0, 12, 0), // 0x00001690
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001698
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x000016A0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000016A8
	gsSPEndDisplayList(), // 0x000016B0
};

Vtx_t _spot08_room_0_vertices_000016B8[14] = 
{
	 { -928, 2179, -2780, 0, 0, 0, 100, 0, 66, 255 }, // 0x000016B8
	 { -928, 1779, -2780, 0, 0, 1752, 9, 77, 91, 255 }, // 0x000016C8
	 { -648, 1779, -3860, 0, 5530, 1752, 116, 0, 30, 255 }, // 0x000016D8
	 { -648, 2179, -3860, 0, 5530, 0, 116, 0, 30, 255 }, // 0x000016E8
	 { -928, 1779, -2780, 0, 6612, 1752, 9, 77, 91, 255 }, // 0x000016F8
	 { -928, 2179, -2780, 0, 6464, 256, 100, 0, 66, 255 }, // 0x00001708
	 { -2201, 1182, -1789, 0, -3537, 256, 48, 0, 110, 255 }, // 0x00001718
	 { -2201, 782, -1789, 0, -3389, 1752, 16, 74, 92, 255 }, // 0x00001728
	 { -2201, 782, -1789, 0, 5794, 1752, 16, 74, 92, 255 }, // 0x00001738
	 { -2201, 1182, -1789, 0, 5657, 17, 48, 0, 110, 255 }, // 0x00001748
	 { -3175, 827, -1631, 0, 651, 17, 224, 0, 115, 255 }, // 0x00001758
	 { -3175, 427, -1631, 0, 788, 1752, 224, 0, 115, 255 }, // 0x00001768
	 { -3972, 600, -2305, 0, -4356, 17, 179, 0, 91, 255 }, // 0x00001778
	 { -3972, 200, -2305, 0, -4219, 1752, 179, 0, 91, 255 }, // 0x00001788
};

Vtx_t _spot08_room_0_vertices_00001798[14] = 
{
	 { -2170, 963, -1768, 0, 3354, 1024, 49, 0, 109, 255 }, // 0x00001798
	 { -2170, 1363, -1768, 0, 3686, 5, 49, 0, 109, 255 }, // 0x000017A8
	 { -3183, 1008, -1571, 0, 1170, 5, 36, 0, 114, 255 }, // 0x000017B8
	 { -3183, 608, -1571, 0, 838, 1024, 36, 0, 114, 255 }, // 0x000017C8
	 { -3980, 781, -2245, 0, -1345, 5, 179, 0, 91, 255 }, // 0x000017D8
	 { -3980, 381, -2245, 0, -1677, 1024, 179, 0, 91, 255 }, // 0x000017E8
	 { -896, 1961, -2760, 0, 5183, 1024, 57, 0, 105, 255 }, // 0x000017F8
	 { -896, 2361, -2760, 0, 5809, 6, 57, 0, 105, 255 }, // 0x00001808
	 { -2170, 1363, -1768, 0, 121, 6, 49, 0, 109, 255 }, // 0x00001818
	 { -2170, 963, -1768, 0, -505, 1024, 49, 0, 109, 255 }, // 0x00001828
	 { -896, 2361, -2760, 0, 0, 0, 57, 0, 105, 255 }, // 0x00001838
	 { -896, 1961, -2760, 0, 0, 1024, 57, 0, 105, 255 }, // 0x00001848
	 { -616, 1961, -3840, 0, 5530, 1024, 116, 0, 30, 255 }, // 0x00001858
	 { -616, 2361, -3840, 0, 5530, 0, 116, 0, 30, 255 }, // 0x00001868
};

Vtx_t _spot08_room_0_vertices_00001878[8] = 
{
	 { -896, 2361, -2760, 0, 0, 0, 57, 0, 105, 255 }, // 0x00001878
	 { -896, 1961, -2760, 0, 0, 1024, 57, 0, 105, 255 }, // 0x00001888
	 { -812, 1961, -2702, 0, 512, 1024, 188, 0, 99, 255 }, // 0x00001898
	 { -812, 2361, -2702, 0, 512, 0, 188, 0, 99, 255 }, // 0x000018A8
	 { -3179, 1008, -1468, 0, 512, 0, 119, 0, 251, 255 }, // 0x000018B8
	 { -3179, 608, -1468, 0, 512, 1024, 119, 0, 251, 255 }, // 0x000018C8
	 { -3183, 608, -1571, 0, 0, 1024, 36, 0, 114, 255 }, // 0x000018D8
	 { -3183, 1008, -1571, 0, 0, 0, 36, 0, 114, 255 }, // 0x000018E8
};

Vtx_t _spot08_room_0_vertices_000018F8[8] = 
{
	 { -3972, 200, -2305, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018F8
	 { -3289, 200, -1122, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001908
	 { -562, 1633, -4274, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001918
	 { 121, 1633, -3091, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001928
	 { -4281, 1179, -2127, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001938
	 { -3598, 1179, -944, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001948
	 { -870, 2612, -4096, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001958
	 { -187, 2612, -2913, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001968
};

Gfx _spot08_room_0_dlist_00001978[] =
{
	gsDPPipeSync(), // 0x00001978
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001980
	gsSPVertex(_spot08_room_0_vertices_000018F8, 8, 0), // 0x00001988
	gsSPCullDisplayList(0, 7), // 0x00001990
	gsDPPipeSync(), // 0x00001998
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000019A0
	gsDPPipeSync(), // 0x000019A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000019B0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000019B8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000D1A0), // 0x000019C0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000019C8
	gsDPLoadSync(), // 0x000019D0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000019D8
	gsDPPipeSync(), // 0x000019E0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000019E8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000019F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000019F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001A00
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001A08
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001A10
	gsDPSetPrimColor(0, 0, 190, 174, 113, 255), // 0x00001A18
	gsSPVertex(_spot08_room_0_vertices_000016B8, 14, 0), // 0x00001A20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001A28
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001A30
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001A38
	gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0), // 0x00001A40
	gsDPPipeSync(), // 0x00001A48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000C1A0), // 0x00001A50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00001A58
	gsDPLoadSync(), // 0x00001A60
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001A68
	gsDPPipeSync(), // 0x00001A70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00001A78
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001A80
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001A88
	gsDPSetPrimColor(0, 0, 230, 250, 150, 255), // 0x00001A90
	gsSPVertex(_spot08_room_0_vertices_00001798, 14, 0), // 0x00001A98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001AA0
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00001AA8
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00001AB0
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00001AB8
	gsDPPipeSync(), // 0x00001AC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00010AA0), // 0x00001AC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x00001AD0
	gsDPLoadSync(), // 0x00001AD8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001AE0
	gsDPPipeSync(), // 0x00001AE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x00001AF0
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00001AF8
	gsSPVertex(_spot08_room_0_vertices_00001878, 8, 0), // 0x00001B00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B08
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001B10
	gsSPEndDisplayList(), // 0x00001B18
};

Vtx_t _spot08_room_0_vertices_00001B20[32] = 
{
	 { -3702, 494, 3779, 0, 6029, 1679, 154, 0, 195, 255 }, // 0x00001B20
	 { -3702, 894, 3779, 0, 6038, 1, 154, 0, 195, 255 }, // 0x00001B30
	 { -3102, 1014, 2779, 0, 9, 1, 197, 0, 152, 255 }, // 0x00001B40
	 { -3102, 614, 2779, 0, 0, 1679, 197, 0, 152, 255 }, // 0x00001B50
	 { -3102, 614, 2779, 0, 3132, 1679, 197, 0, 152, 255 }, // 0x00001B60
	 { -3102, 1014, 2779, 0, 3119, -3, 197, 0, 152, 255 }, // 0x00001B70
	 { -2502, 1184, 2779, 0, -13, -3, 70, 0, 159, 255 }, // 0x00001B80
	 { -2502, 784, 2779, 0, 0, 1679, 73, 56, 180, 255 }, // 0x00001B90
	 { -897, 2374, 3732, 0, 0, 9, 47, 0, 146, 255 }, // 0x00001BA0
	 { -897, 1974, 3732, 0, 0, 1679, 47, 0, 146, 255 }, // 0x00001BB0
	 { -2201, 1045, 3713, 0, 10010, 1679, 229, 35, 145, 255 }, // 0x00001BC0
	 { -2201, 1445, 3713, 0, 10010, 9, 2, 0, 137, 255 }, // 0x00001BD0
	 { -897, 1974, 3732, 0, 6479, 1679, 47, 0, 146, 255 }, // 0x00001BE0
	 { -897, 2374, 3732, 0, 6479, -9, 47, 0, 146, 255 }, // 0x00001BF0
	 { 33, 2374, 4673, 0, 0, -9, 85, 0, 172, 255 }, // 0x00001C00
	 { 33, 1974, 4673, 0, 0, 1679, 85, 0, 172, 255 }, // 0x00001C10
	 { -2412, 862, 3058, 0, 3436, 1806, 80, 53, 185, 255 }, // 0x00001C20
	 { -2412, 1262, 3058, 0, 3443, 0, 84, 0, 171, 255 }, // 0x00001C30
	 { -2001, 1043, 3187, 0, 7, 0, 10, 0, 137, 255 }, // 0x00001C40
	 { -2001, 643, 3187, 0, 0, 1806, 25, 55, 153, 255 }, // 0x00001C50
	 { -494, 828, 2972, 0, -5, 0, 255, 0, 137, 255 }, // 0x00001C60
	 { -494, 428, 2972, 0, 0, 1806, 254, 59, 152, 255 }, // 0x00001C70
	 { -2001, 643, 3187, 0, 8485, 1805, 25, 55, 153, 255 }, // 0x00001C80
	 { -2001, 1043, 3187, 0, 8480, -1, 10, 0, 137, 255 }, // 0x00001C90
	 { -494, 428, 2972, 0, 3837, 1806, 254, 59, 152, 255 }, // 0x00001CA0
	 { -494, 828, 2972, 0, 3836, 0, 255, 0, 137, 255 }, // 0x00001CB0
	 { 99, 1001, 3046, 0, -2, 0, 15, 0, 137, 255 }, // 0x00001CC0
	 { 99, 601, 3046, 0, 0, 1806, 210, 40, 153, 255 }, // 0x00001CD0
	 { -2502, 1184, 2779, 0, 5428, -14, 70, 0, 159, 255 }, // 0x00001CE0
	 { -2412, 1262, 3058, 0, 3807, -14, 84, 0, 171, 255 }, // 0x00001CF0
	 { -2412, 862, 3058, 0, 3804, 1679, 80, 53, 185, 255 }, // 0x00001D00
	 { -2502, 784, 2779, 0, 5425, 1679, 73, 56, 180, 255 }, // 0x00001D10
};

Vtx_t _spot08_room_0_vertices_00001D20[20] = 
{
	 { -3742, 701, 3779, 0, 4658, 1024, 152, 0, 196, 255 }, // 0x00001D20
	 { -3742, 1101, 3779, 0, 4660, 0, 152, 0, 196, 255 }, // 0x00001D30
	 { -3142, 1221, 2739, 0, 2, 0, 250, 0, 137, 255 }, // 0x00001D40
	 { -3142, 821, 2739, 0, 0, 1024, 250, 0, 137, 255 }, // 0x00001D50
	 { -857, 2581, 3692, 0, 6, 0, 2, 0, 137, 255 }, // 0x00001D60
	 { -857, 2181, 3692, 0, 0, 1024, 2, 0, 137, 255 }, // 0x00001D70
	 { -2161, 1252, 3673, 0, 7651, 1024, 71, 0, 160, 255 }, // 0x00001D80
	 { -2161, 1652, 3673, 0, 7657, 0, 71, 0, 160, 255 }, // 0x00001D90
	 { -3142, 821, 2739, 0, 2988, 1024, 250, 0, 137, 255 }, // 0x00001DA0
	 { -3142, 1221, 2739, 0, 2991, 0, 250, 0, 137, 255 }, // 0x00001DB0
	 { -2462, 1391, 2759, 0, 3, 0, 71, 0, 160, 255 }, // 0x00001DC0
	 { -2462, 991, 2759, 0, 0, 1024, 71, 0, 160, 255 }, // 0x00001DD0
	 { -2462, 1391, 2759, 0, 3934, 0, 71, 0, 160, 255 }, // 0x00001DE0
	 { -2161, 1652, 3673, 0, 1, 0, 71, 0, 160, 255 }, // 0x00001DF0
	 { -2161, 1252, 3673, 0, 0, 1024, 71, 0, 160, 255 }, // 0x00001E00
	 { -2462, 991, 2759, 0, 3933, 1024, 71, 0, 160, 255 }, // 0x00001E10
	 { -857, 2181, 3692, 0, 4887, 1024, 2, 0, 137, 255 }, // 0x00001E20
	 { -857, 2581, 3692, 0, 4886, 0, 2, 0, 137, 255 }, // 0x00001E30
	 { 73, 2581, 4633, 0, 0, 0, 85, 0, 172, 255 }, // 0x00001E40
	 { 73, 2181, 4633, 0, 0, 1024, 85, 0, 172, 255 }, // 0x00001E50
};

Vtx_t _spot08_room_0_vertices_00001E60[8] = 
{
	 { -3142, 1221, 2739, 0, 0, 0, 250, 0, 137, 255 }, // 0x00001E60
	 { -3142, 821, 2739, 0, 0, 1024, 250, 0, 137, 255 }, // 0x00001E70
	 { -3213, 821, 2665, 0, 512, 1024, 86, 0, 173, 255 }, // 0x00001E80
	 { -3213, 1221, 2665, 0, 512, 0, 86, 0, 173, 255 }, // 0x00001E90
	 { -782, 2581, 3622, 0, 512, 0, 174, 0, 169, 255 }, // 0x00001EA0
	 { -782, 2181, 3622, 0, 512, 1024, 174, 0, 169, 255 }, // 0x00001EB0
	 { -857, 2181, 3692, 0, 0, 1024, 2, 0, 137, 255 }, // 0x00001EC0
	 { -857, 2581, 3692, 0, 0, 0, 2, 0, 137, 255 }, // 0x00001ED0
};

Vtx_t _spot08_room_0_vertices_00001EE0[12] = 
{
	 { -456, 633, 2941, 0, 2048, 1024, 255, 0, 137, 255 }, // 0x00001EE0
	 { -456, 1033, 2941, 0, 2048, 0, 255, 0, 137, 255 }, // 0x00001EF0
	 { 137, 1206, 3015, 0, 0, 0, 12, 0, 137, 255 }, // 0x00001F00
	 { 137, 806, 3015, 0, 0, 1024, 12, 0, 137, 255 }, // 0x00001F10
	 { -456, 1033, 2941, 0, 2, 0, 255, 0, 137, 255 }, // 0x00001F20
	 { -456, 633, 2941, 0, 0, 1024, 255, 0, 137, 255 }, // 0x00001F30
	 { -1962, 848, 3156, 0, 6249, 1024, 10, 0, 137, 255 }, // 0x00001F40
	 { -1962, 1248, 3156, 0, 6251, 0, 10, 0, 137, 255 }, // 0x00001F50
	 { -2373, 1067, 3027, 0, 1556, 1024, 36, 0, 142, 255 }, // 0x00001F60
	 { -2373, 1467, 3027, 0, 1552, 0, 36, 0, 142, 255 }, // 0x00001F70
	 { -1962, 1248, 3156, 0, -4, 0, 10, 0, 137, 255 }, // 0x00001F80
	 { -1962, 848, 3156, 0, 0, 1024, 10, 0, 137, 255 }, // 0x00001F90
};

Vtx_t _spot08_room_0_vertices_00001FA0[4] = 
{
	 { 240, 1206, 3022, 0, 512, 0, 8, 0, 137, 255 }, // 0x00001FA0
	 { 240, 806, 3022, 0, 512, 1024, 8, 0, 137, 255 }, // 0x00001FB0
	 { 137, 806, 3015, 0, 0, 1024, 12, 0, 137, 255 }, // 0x00001FC0
	 { 137, 1206, 3015, 0, 0, 0, 12, 0, 137, 255 }, // 0x00001FD0
};

Vtx_t _spot08_room_0_vertices_00001FE0[12] = 
{
	 { -456, 920, 2941, 0, -30, 1000, 243, 70, 160, 255 }, // 0x00001FE0
	 { -267, 1269, 3143, 0, 1104, 1, 239, 66, 158, 255 }, // 0x00001FF0
	 { 137, 1150, 3015, 0, -1057, -5, 243, 65, 156, 255 }, // 0x00002000
	 { -456, 920, 2941, 0, 0, 1024, 243, 70, 160, 255 }, // 0x00002010
	 { -432, 1364, 3248, 0, -481, 0, 235, 68, 160, 255 }, // 0x00002020
	 { -267, 1269, 3143, 0, -2275, 0, 239, 66, 158, 255 }, // 0x00002030
	 { -456, 920, 2941, 0, 0, 1024, 243, 70, 160, 255 }, // 0x00002040
	 { -810, 1345, 3316, 0, 2701, -42, 246, 74, 163, 255 }, // 0x00002050
	 { -432, 1364, 3248, 0, 480, 100, 235, 68, 160, 255 }, // 0x00002060
	 { -456, 920, 2941, 0, 0, 1024, 243, 70, 160, 255 }, // 0x00002070
	 { -1962, 1192, 3156, 0, 2264, 0, 2, 80, 167, 255 }, // 0x00002080
	 { -810, 1345, 3316, 0, 543, 0, 246, 74, 163, 255 }, // 0x00002090
};

Vtx_t _spot08_room_0_vertices_000020A0[8] = 
{
	 { -3492, 428, 2364, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020A0
	 { 354, 428, 3042, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020B0
	 { -3492, 2581, 2364, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020C0
	 { 354, 2581, 3042, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020D0
	 { -3781, 428, 4001, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020E0
	 { 65, 428, 4679, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020F0
	 { -3781, 2581, 4001, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002100
	 { 65, 2581, 4679, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002110
};

Gfx _spot08_room_0_dlist_00002120[] =
{
	gsDPPipeSync(), // 0x00002120
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002128
	gsSPVertex(_spot08_room_0_vertices_000020A0, 8, 0), // 0x00002130
	gsSPCullDisplayList(0, 7), // 0x00002138
	gsDPPipeSync(), // 0x00002140
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002148
	gsDPPipeSync(), // 0x00002150
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002158
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002160
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000D1A0), // 0x00002168
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00002170
	gsDPLoadSync(), // 0x00002178
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00002180
	gsDPPipeSync(), // 0x00002188
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00002190
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00002198
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000021A0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000021A8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000021B0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000021B8
	gsDPSetPrimColor(0, 0, 190, 174, 113, 255), // 0x000021C0
	gsSPVertex(_spot08_room_0_vertices_00001B20, 32, 0), // 0x000021C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000021D0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000021D8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000021E0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000021E8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000021F0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000021F8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002200
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002208
	gsDPPipeSync(), // 0x00002210
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000C1A0), // 0x00002218
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00002220
	gsDPLoadSync(), // 0x00002228
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002230
	gsDPPipeSync(), // 0x00002238
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00002240
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002248
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002250
	gsDPSetPrimColor(0, 0, 230, 250, 150, 255), // 0x00002258
	gsSPVertex(_spot08_room_0_vertices_00001D20, 20, 0), // 0x00002260
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002268
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002270
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002278
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002280
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002288
	gsDPPipeSync(), // 0x00002290
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00010AA0), // 0x00002298
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x000022A0
	gsDPLoadSync(), // 0x000022A8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000022B0
	gsDPPipeSync(), // 0x000022B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x000022C0
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x000022C8
	gsSPVertex(_spot08_room_0_vertices_00001E60, 8, 0), // 0x000022D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000022D8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000022E0
	gsDPPipeSync(), // 0x000022E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000C1A0), // 0x000022F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x000022F8
	gsDPLoadSync(), // 0x00002300
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002308
	gsDPPipeSync(), // 0x00002310
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00002318
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002320
	gsSPVertex(_spot08_room_0_vertices_00001EE0, 12, 0), // 0x00002328
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002330
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002338
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002340
	gsDPPipeSync(), // 0x00002348
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00010AA0), // 0x00002350
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x00002358
	gsDPLoadSync(), // 0x00002360
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002368
	gsDPPipeSync(), // 0x00002370
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x00002378
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00002380
	gsSPVertex(_spot08_room_0_vertices_00001FA0, 4, 0), // 0x00002388
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002390
	gsDPPipeSync(), // 0x00002398
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000C1A0), // 0x000023A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x000023A8
	gsDPLoadSync(), // 0x000023B0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000023B8
	gsDPPipeSync(), // 0x000023C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x000023C8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000023D0
	gsSPVertex(_spot08_room_0_vertices_00001FE0, 12, 0), // 0x000023D8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000023E0
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x000023E8
	gsSPEndDisplayList(), // 0x000023F0
};

Vtx_t _spot08_room_0_vertices_000023F8[6] = 
{
	 { 2008, 145, 50, 0, 2414, 2048, 137, 1, 12, 255 }, // 0x000023F8
	 { 2049, 250, 448, 0, 4828, 2048, 137, 0, 12, 255 }, // 0x00002408
	 { 2052, 718, 488, 0, 4807, 0, 137, 0, 12, 255 }, // 0x00002418
	 { 2008, 614, 50, 0, 2393, 0, 137, 1, 12, 255 }, // 0x00002428
	 { 1969, 716, -382, 0, -20, 0, 137, 1, 13, 255 }, // 0x00002438
	 { 1967, 250, -348, 0, 0, 2048, 137, 1, 13, 255 }, // 0x00002448
};

Vtx_t _spot08_room_0_vertices_00002458[6] = 
{
	 { 1931, 961, -408, 0, 0, 12, 137, 2, 12, 255 }, // 0x00002458
	 { 1928, 565, -370, 0, 0, 1024, 137, 2, 12, 255 }, // 0x00002468
	 { 1968, 462, 50, 0, 1536, 1024, 137, 1, 12, 255 }, // 0x00002478
	 { 1968, 862, 50, 0, 1536, 12, 137, 1, 12, 255 }, // 0x00002488
	 { 2012, 566, 488, 0, 3072, 1024, 137, 0, 12, 255 }, // 0x00002498
	 { 2013, 966, 497, 0, 3072, 12, 137, 0, 12, 255 }, // 0x000024A8
};

Vtx_t _spot08_room_0_vertices_000024B8[8] = 
{
	 { 1964, 145, -414, 0, 0, 0, 0, 0, 0, 0 }, // 0x000024B8
	 { 2121, 145, 478, 0, 0, 0, 0, 0, 0, 0 }, // 0x000024C8
	 { 1964, 966, -414, 0, 0, 0, 0, 0, 0, 0 }, // 0x000024D8
	 { 2121, 966, 478, 0, 0, 0, 0, 0, 0, 0 }, // 0x000024E8
	 { 1856, 145, -395, 0, 0, 0, 0, 0, 0, 0 }, // 0x000024F8
	 { 2013, 145, 497, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002508
	 { 1856, 966, -395, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002518
	 { 2013, 966, 497, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002528
};

Gfx _spot08_room_0_dlist_00002538[] =
{
	gsDPPipeSync(), // 0x00002538
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002540
	gsSPVertex(_spot08_room_0_vertices_000024B8, 8, 0), // 0x00002548
	gsSPCullDisplayList(0, 7), // 0x00002550
	gsDPPipeSync(), // 0x00002558
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002560
	gsDPPipeSync(), // 0x00002568
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002570
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002578
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000D1A0), // 0x00002580
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00002588
	gsDPLoadSync(), // 0x00002590
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00002598
	gsDPPipeSync(), // 0x000025A0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000025A8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000025B0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000025B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000025C0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000025C8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000025D0
	gsDPSetPrimColor(0, 0, 190, 174, 113, 255), // 0x000025D8
	gsSPVertex(_spot08_room_0_vertices_000023F8, 6, 0), // 0x000025E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000025E8
	gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0), // 0x000025F0
	gsDPPipeSync(), // 0x000025F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000C1A0), // 0x00002600
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00002608
	gsDPLoadSync(), // 0x00002610
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002618
	gsDPPipeSync(), // 0x00002620
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00002628
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002630
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002638
	gsDPSetPrimColor(0, 0, 230, 250, 150, 255), // 0x00002640
	gsSPVertex(_spot08_room_0_vertices_00002458, 6, 0), // 0x00002648
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002650
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00002658
	gsSPEndDisplayList(), // 0x00002660
};

Vtx_t _spot08_room_0_vertices_00002668[4] = 
{
	 { -1429, 192, -348, 0, -1024, -1280, 186, 69, 187, 255 }, // 0x00002668
	 { -1429, 192, -268, 0, 0, -1280, 187, 69, 69, 255 }, // 0x00002678
	 { -1349, 192, -268, 0, 0, -2304, 69, 69, 68, 255 }, // 0x00002688
	 { -1349, 192, -348, 0, -1024, -2304, 68, 69, 186, 255 }, // 0x00002698
};

Vtx_t _spot08_room_0_vertices_000026A8[16] = 
{
	 { -1429, -240, -268, 0, 0, 5530, 172, 0, 84, 255 }, // 0x000026A8
	 { -1429, 192, -268, 0, 0, 0, 187, 69, 69, 255 }, // 0x000026B8
	 { -1429, 192, -348, 0, 2048, 0, 186, 69, 187, 255 }, // 0x000026C8
	 { -1429, -240, -348, 0, 2048, 5530, 171, 0, 172, 255 }, // 0x000026D8
	 { -1349, -240, -268, 0, 2048, 5530, 85, 0, 84, 255 }, // 0x000026E8
	 { -1349, 192, -268, 0, 2048, 0, 69, 69, 68, 255 }, // 0x000026F8
	 { -1429, 192, -268, 0, 0, 0, 187, 69, 69, 255 }, // 0x00002708
	 { -1429, -240, -268, 0, 0, 5530, 172, 0, 84, 255 }, // 0x00002718
	 { -1350, -240, -349, 0, 2048, 5530, 96, 71, 3, 255 }, // 0x00002728
	 { -1349, 192, -348, 0, 2048, 0, 68, 69, 186, 255 }, // 0x00002738
	 { -1349, 192, -268, 0, 0, 0, 69, 69, 68, 255 }, // 0x00002748
	 { -1349, -240, -268, 0, 0, 5530, 85, 0, 84, 255 }, // 0x00002758
	 { -1429, -240, -348, 0, 0, 5530, 171, 0, 172, 255 }, // 0x00002768
	 { -1429, 192, -348, 0, 0, 0, 186, 69, 187, 255 }, // 0x00002778
	 { -1349, 192, -348, 0, 2048, 0, 68, 69, 186, 255 }, // 0x00002788
	 { -1350, -240, -349, 0, 2048, 5530, 96, 71, 3, 255 }, // 0x00002798
};

Vtx_t _spot08_room_0_vertices_000027A8[4] = 
{
	 { -1769, 272, -348, 0, -1024, 3072, 187, 69, 187, 255 }, // 0x000027A8
	 { -1769, 272, -268, 0, 0, 3072, 187, 69, 69, 255 }, // 0x000027B8
	 { -1689, 272, -268, 0, 0, 2048, 69, 69, 69, 255 }, // 0x000027C8
	 { -1689, 272, -348, 0, -1024, 2048, 69, 69, 187, 255 }, // 0x000027D8
};

Vtx_t _spot08_room_0_vertices_000027E8[16] = 
{
	 { -1769, -80, -268, 0, 0, 4506, 172, 0, 84, 255 }, // 0x000027E8
	 { -1769, 272, -268, 0, 0, 0, 187, 69, 69, 255 }, // 0x000027F8
	 { -1769, 272, -348, 0, 2048, 0, 187, 69, 187, 255 }, // 0x00002808
	 { -1769, -80, -348, 0, 2048, 4506, 172, 0, 172, 255 }, // 0x00002818
	 { -1689, -80, -268, 0, 2048, 4506, 84, 0, 84, 255 }, // 0x00002828
	 { -1689, 272, -268, 0, 2048, 0, 69, 69, 69, 255 }, // 0x00002838
	 { -1769, 272, -268, 0, 0, 0, 187, 69, 69, 255 }, // 0x00002848
	 { -1769, -80, -268, 0, 0, 4506, 172, 0, 84, 255 }, // 0x00002858
	 { -1689, -80, -348, 0, 2048, 4506, 84, 0, 172, 255 }, // 0x00002868
	 { -1689, 272, -348, 0, 2048, 0, 69, 69, 187, 255 }, // 0x00002878
	 { -1689, 272, -268, 0, 0, 0, 69, 69, 69, 255 }, // 0x00002888
	 { -1689, -80, -268, 0, 0, 4506, 84, 0, 84, 255 }, // 0x00002898
	 { -1769, -80, -348, 0, 0, 4506, 172, 0, 172, 255 }, // 0x000028A8
	 { -1769, 272, -348, 0, 0, 0, 187, 69, 187, 255 }, // 0x000028B8
	 { -1689, 272, -348, 0, 2048, 0, 69, 69, 187, 255 }, // 0x000028C8
	 { -1689, -80, -348, 0, 2048, 4506, 84, 0, 172, 255 }, // 0x000028D8
};

Vtx_t _spot08_room_0_vertices_000028E8[4] = 
{
	 { -1429, 192, 172, 0, 5632, -1280, 187, 69, 187, 255 }, // 0x000028E8
	 { -1429, 192, 252, 0, 6656, -1280, 187, 69, 69, 255 }, // 0x000028F8
	 { -1349, 192, 252, 0, 6656, -2304, 69, 69, 69, 255 }, // 0x00002908
	 { -1349, 192, 172, 0, 5632, -2304, 69, 69, 187, 255 }, // 0x00002918
};

Vtx_t _spot08_room_0_vertices_00002928[16] = 
{
	 { -1429, -240, 252, 0, 0, 5530, 172, 0, 84, 255 }, // 0x00002928
	 { -1429, 192, 252, 0, 0, 0, 187, 69, 69, 255 }, // 0x00002938
	 { -1429, 192, 172, 0, 2048, 0, 187, 69, 187, 255 }, // 0x00002948
	 { -1429, -240, 172, 0, 2048, 5530, 172, 0, 172, 255 }, // 0x00002958
	 { -1349, -240, 252, 0, 2048, 5530, 91, 71, 224, 255 }, // 0x00002968
	 { -1349, 192, 252, 0, 2048, 0, 69, 69, 69, 255 }, // 0x00002978
	 { -1429, 192, 252, 0, 0, 0, 187, 69, 69, 255 }, // 0x00002988
	 { -1429, -240, 252, 0, 0, 5530, 172, 0, 84, 255 }, // 0x00002998
	 { -1349, -240, 172, 0, 2048, 5530, 84, 0, 172, 255 }, // 0x000029A8
	 { -1349, 192, 172, 0, 2048, 0, 69, 69, 187, 255 }, // 0x000029B8
	 { -1349, 192, 252, 0, 0, 0, 69, 69, 69, 255 }, // 0x000029C8
	 { -1349, -240, 252, 0, 0, 5530, 91, 71, 224, 255 }, // 0x000029D8
	 { -1429, -240, 172, 0, 0, 5530, 172, 0, 172, 255 }, // 0x000029E8
	 { -1429, 192, 172, 0, 0, 0, 187, 69, 187, 255 }, // 0x000029F8
	 { -1349, 192, 172, 0, 2048, 0, 69, 69, 187, 255 }, // 0x00002A08
	 { -1349, -240, 172, 0, 2048, 5530, 84, 0, 172, 255 }, // 0x00002A18
};

Vtx_t _spot08_room_0_vertices_00002A28[4] = 
{
	 { -1769, 272, 172, 0, 5632, 3072, 187, 69, 187, 255 }, // 0x00002A28
	 { -1769, 272, 252, 0, 6656, 3072, 187, 69, 69, 255 }, // 0x00002A38
	 { -1689, 272, 252, 0, 6656, 2048, 69, 69, 69, 255 }, // 0x00002A48
	 { -1689, 272, 172, 0, 5632, 2048, 69, 69, 187, 255 }, // 0x00002A58
};

Vtx_t _spot08_room_0_vertices_00002A68[16] = 
{
	 { -1769, -80, 252, 0, 0, 4506, 172, 0, 84, 255 }, // 0x00002A68
	 { -1769, 272, 252, 0, 0, 0, 187, 69, 69, 255 }, // 0x00002A78
	 { -1769, 272, 172, 0, 2048, 0, 187, 69, 187, 255 }, // 0x00002A88
	 { -1769, -80, 172, 0, 2048, 4506, 172, 0, 172, 255 }, // 0x00002A98
	 { -1689, -80, 252, 0, 2048, 4506, 84, 0, 84, 255 }, // 0x00002AA8
	 { -1689, 272, 252, 0, 2048, 0, 69, 69, 69, 255 }, // 0x00002AB8
	 { -1769, 272, 252, 0, 0, 0, 187, 69, 69, 255 }, // 0x00002AC8
	 { -1769, -80, 252, 0, 0, 4506, 172, 0, 84, 255 }, // 0x00002AD8
	 { -1689, -80, 172, 0, 2048, 4506, 84, 0, 172, 255 }, // 0x00002AE8
	 { -1689, 272, 172, 0, 2048, 0, 69, 69, 187, 255 }, // 0x00002AF8
	 { -1689, 272, 252, 0, 0, 0, 69, 69, 69, 255 }, // 0x00002B08
	 { -1689, -80, 252, 0, 0, 4506, 84, 0, 84, 255 }, // 0x00002B18
	 { -1769, -80, 172, 0, 0, 4506, 172, 0, 172, 255 }, // 0x00002B28
	 { -1769, 272, 172, 0, 0, 0, 187, 69, 187, 255 }, // 0x00002B38
	 { -1689, 272, 172, 0, 2048, 0, 69, 69, 187, 255 }, // 0x00002B48
	 { -1689, -80, 172, 0, 2048, 4506, 84, 0, 172, 255 }, // 0x00002B58
};

Vtx_t _spot08_room_0_vertices_00002B68[6] = 
{
	 { -1849, 0, 232, 0, 4096, 1024, 247, 119, 11, 255 }, // 0x00002B68
	 { -1769, 52, 232, 0, 4096, -1024, 235, 111, 39, 255 }, // 0x00002B78
	 { -1769, 52, -48, 0, 0, -1024, 222, 115, 0, 255 }, // 0x00002B88
	 { -1769, 52, -328, 0, -4096, -1024, 235, 111, 217, 255 }, // 0x00002B98
	 { -1849, 0, -328, 0, -4096, 1024, 246, 118, 238, 255 }, // 0x00002BA8
	 { -1849, 0, -48, 0, 0, 1024, 191, 100, 0, 255 }, // 0x00002BB8
};

Vtx_t _spot08_room_0_vertices_00002BC8[8] = 
{
	 { -1369, 0, 232, 0, 7168, 3277, 49, 158, 49, 255 }, // 0x00002BC8
	 { -1369, 52, 232, 0, 7168, 4096, 49, 98, 49, 255 }, // 0x00002BD8
	 { -1769, 52, 232, 0, -3072, 4096, 235, 111, 39, 255 }, // 0x00002BE8
	 { -1849, 0, 232, 0, -5120, 3277, 247, 119, 11, 255 }, // 0x00002BF8
	 { -1849, 0, -328, 0, -5120, 3277, 246, 118, 238, 255 }, // 0x00002C08
	 { -1769, 52, -328, 0, -3072, 4096, 235, 111, 217, 255 }, // 0x00002C18
	 { -1369, 52, -328, 0, 7168, 4096, 49, 98, 207, 255 }, // 0x00002C28
	 { -1369, 0, -328, 0, 7168, 3277, 49, 158, 207, 255 }, // 0x00002C38
};

Vtx_t _spot08_room_0_vertices_00002C48[14] = 
{
	 { -1369, 0, -328, 0, -4096, -3803, 49, 158, 207, 255 }, // 0x00002C48
	 { -1369, 0, -165, 0, -1718, -3803, 92, 197, 49, 255 }, // 0x00002C58
	 { -1449, 0, -111, 0, -925, -2633, 54, 153, 28, 255 }, // 0x00002C68
	 { -1369, 0, 70, 0, 1718, -3803, 92, 197, 207, 255 }, // 0x00002C78
	 { -1369, 0, 232, 0, 4096, -3803, 49, 158, 49, 255 }, // 0x00002C88
	 { -1449, 0, 15, 0, 925, -2633, 54, 153, 228, 255 }, // 0x00002C98
	 { -1769, 52, -328, 0, -4096, 2048, 235, 111, 217, 255 }, // 0x00002CA8
	 { -1449, 52, -111, 0, -925, -2633, 54, 103, 28, 255 }, // 0x00002CB8
	 { -1369, 52, -328, 0, -4096, -3803, 49, 98, 207, 255 }, // 0x00002CC8
	 { -1769, 52, 232, 0, 4096, 2048, 235, 111, 39, 255 }, // 0x00002CD8
	 { -1449, 52, 15, 0, 925, -2633, 54, 103, 228, 255 }, // 0x00002CE8
	 { -1369, 52, 232, 0, 4096, -3803, 49, 98, 49, 255 }, // 0x00002CF8
	 { -1369, 52, 70, 0, 1718, -3803, 92, 59, 207, 255 }, // 0x00002D08
	 { -1369, 52, -165, 0, -1718, -3803, 92, 59, 49, 255 }, // 0x00002D18
};

Vtx_t _spot08_room_0_vertices_00002D28[20] = 
{
	 { -1369, 0, -328, 0, 14308, 3277, 49, 158, 207, 255 }, // 0x00002D28
	 { -1369, 52, -328, 0, 14308, 4096, 49, 98, 207, 255 }, // 0x00002D38
	 { -1369, 52, -165, 0, 10154, 4096, 92, 59, 49, 255 }, // 0x00002D48
	 { -1369, 0, -165, 0, 10154, 3277, 92, 197, 49, 255 }, // 0x00002D58
	 { -1369, 52, 70, 0, 4154, 4096, 92, 59, 207, 255 }, // 0x00002D68
	 { -1369, 52, 232, 0, 0, 4096, 49, 98, 49, 255 }, // 0x00002D78
	 { -1369, 0, 232, 0, 0, 3277, 49, 158, 49, 255 }, // 0x00002D88
	 { -1369, 0, 70, 0, 4154, 3277, 92, 197, 207, 255 }, // 0x00002D98
	 { -1369, 0, 70, 0, 0, 3277, 92, 197, 207, 255 }, // 0x00002DA8
	 { -1449, 0, 15, 0, 2474, 3277, 54, 153, 228, 255 }, // 0x00002DB8
	 { -1449, 52, 15, 0, 2474, 4096, 54, 103, 228, 255 }, // 0x00002DC8
	 { -1369, 52, 70, 0, 0, 4096, 92, 59, 207, 255 }, // 0x00002DD8
	 { -1449, 52, 15, 0, -1189, 4096, 54, 103, 228, 255 }, // 0x00002DE8
	 { -1449, 0, 15, 0, -1189, 3277, 54, 153, 228, 255 }, // 0x00002DF8
	 { -1449, 0, -111, 0, 2048, 3277, 54, 153, 28, 255 }, // 0x00002E08
	 { -1449, 52, -111, 0, 2048, 4096, 54, 103, 28, 255 }, // 0x00002E18
	 { -1449, 52, -111, 0, -1450, 4096, 54, 103, 28, 255 }, // 0x00002E28
	 { -1449, 0, -111, 0, -1450, 3277, 54, 153, 28, 255 }, // 0x00002E38
	 { -1369, 0, -165, 0, 1024, 3277, 92, 197, 49, 255 }, // 0x00002E48
	 { -1369, 52, -165, 0, 1024, 4096, 92, 59, 49, 255 }, // 0x00002E58
};

Vtx_t _spot08_room_0_vertices_00002E68[6] = 
{
	 { -1609, 0, -328, 0, -4096, -286, 0, 136, 0, 255 }, // 0x00002E68
	 { -1369, 0, -328, 0, -4096, -3803, 49, 158, 207, 255 }, // 0x00002E78
	 { -1449, 0, -111, 0, -925, -2633, 54, 153, 28, 255 }, // 0x00002E88
	 { -1449, 0, 15, 0, 925, -2633, 54, 153, 228, 255 }, // 0x00002E98
	 { -1574, 0, 232, 0, 4096, -803, 115, 236, 230, 255 }, // 0x00002EA8
	 { -1369, 0, 232, 0, 4096, -3803, 49, 158, 49, 255 }, // 0x00002EB8
};

Vtx_t _spot08_room_0_vertices_00002EC8[16] = 
{
	 { -1689, 100, 217, 0, -1024, 0, 0, 0, 136, 255 }, // 0x00002EC8
	 { -1429, 100, 217, 0, 12288, 0, 0, 0, 136, 255 }, // 0x00002ED8
	 { -1429, 52, 217, 0, 12288, 2048, 0, 0, 136, 255 }, // 0x00002EE8
	 { -1689, 52, 217, 0, -1024, 2048, 0, 0, 136, 255 }, // 0x00002EF8
	 { -1689, 52, -313, 0, -1024, 2048, 0, 0, 120, 255 }, // 0x00002F08
	 { -1429, 52, -313, 0, 12288, 2048, 0, 0, 120, 255 }, // 0x00002F18
	 { -1429, 100, -313, 0, 12288, 0, 0, 0, 120, 255 }, // 0x00002F28
	 { -1689, 100, -313, 0, -1024, 0, 0, 0, 120, 255 }, // 0x00002F38
	 { -1382, 52, -268, 0, -1024, 2048, 136, 0, 0, 255 }, // 0x00002F48
	 { -1382, 52, -208, 0, 2063, 2048, 136, 0, 0, 255 }, // 0x00002F58
	 { -1382, 100, -208, 0, 2063, 0, 136, 0, 0, 255 }, // 0x00002F68
	 { -1382, 100, -268, 0, -1024, 0, 136, 0, 0, 255 }, // 0x00002F78
	 { -1382, 100, 172, 0, -1024, 0, 136, 0, 0, 255 }, // 0x00002F88
	 { -1382, 100, 111, 0, 2081, 0, 136, 0, 0, 255 }, // 0x00002F98
	 { -1382, 52, 111, 0, 2081, 2048, 136, 0, 0, 255 }, // 0x00002FA8
	 { -1382, 52, 172, 0, -1024, 2048, 136, 0, 0, 255 }, // 0x00002FB8
};

Vtx_t _spot08_room_0_vertices_00002FC8[8] = 
{
	 { -1849, -240, -349, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002FC8
	 { -1349, -240, -349, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002FD8
	 { -1849, 272, -349, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002FE8
	 { -1349, 272, -349, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002FF8
	 { -1849, -240, 252, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003008
	 { -1349, -240, 252, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003018
	 { -1849, 272, 252, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003028
	 { -1349, 272, 252, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003038
};

Gfx _spot08_room_0_dlist_00003048[] =
{
	gsDPPipeSync(), // 0x00003048
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003050
	gsSPVertex(_spot08_room_0_vertices_00002FC8, 8, 0), // 0x00003058
	gsSPCullDisplayList(0, 7), // 0x00003060
	gsDPPipeSync(), // 0x00003068
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003070
	gsDPPipeSync(), // 0x00003078
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003080
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003088
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000B1A0), // 0x00003090
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003098
	gsDPLoadSync(), // 0x000030A0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000030A8
	gsDPPipeSync(), // 0x000030B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000030B8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000030C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D10), // 0x000030C8
	gsDPTileSync(), // 0x000030D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000030D8
	gsDPLoadSync(), // 0x000030E0
	gsDPLoadTLUTCmd(7, 15), // 0x000030E8
	gsDPPipeSync(), // 0x000030F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000030F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003100
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00003108
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00003110
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003118
	gsSPVertex(_spot08_room_0_vertices_00002668, 4, 0), // 0x00003120
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003128
	gsDPPipeSync(), // 0x00003130
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000F1A0), // 0x00003138
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 1, 5, 0), // 0x00003140
	gsDPLoadSync(), // 0x00003148
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00003150
	gsDPPipeSync(), // 0x00003158
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 1, 5, 0), // 0x00003160
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x00003168
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D60), // 0x00003170
	gsDPTileSync(), // 0x00003178
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003180
	gsDPLoadSync(), // 0x00003188
	gsDPLoadTLUTCmd(7, 15), // 0x00003190
	gsDPPipeSync(), // 0x00003198
	gsSPVertex(_spot08_room_0_vertices_000026A8, 16, 0), // 0x000031A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000031A8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000031B0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000031B8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000031C0
	gsDPPipeSync(), // 0x000031C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000B1A0), // 0x000031D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000031D8
	gsDPLoadSync(), // 0x000031E0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000031E8
	gsDPPipeSync(), // 0x000031F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000031F8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003200
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D10), // 0x00003208
	gsDPTileSync(), // 0x00003210
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003218
	gsDPLoadSync(), // 0x00003220
	gsDPLoadTLUTCmd(7, 15), // 0x00003228
	gsDPPipeSync(), // 0x00003230
	gsSPVertex(_spot08_room_0_vertices_000027A8, 4, 0), // 0x00003238
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003240
	gsDPPipeSync(), // 0x00003248
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000F1A0), // 0x00003250
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 1, 5, 0), // 0x00003258
	gsDPLoadSync(), // 0x00003260
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00003268
	gsDPPipeSync(), // 0x00003270
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 1, 5, 0), // 0x00003278
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x00003280
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D60), // 0x00003288
	gsDPTileSync(), // 0x00003290
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003298
	gsDPLoadSync(), // 0x000032A0
	gsDPLoadTLUTCmd(7, 15), // 0x000032A8
	gsDPPipeSync(), // 0x000032B0
	gsSPVertex(_spot08_room_0_vertices_000027E8, 16, 0), // 0x000032B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000032C0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000032C8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000032D0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000032D8
	gsDPPipeSync(), // 0x000032E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000B1A0), // 0x000032E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000032F0
	gsDPLoadSync(), // 0x000032F8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003300
	gsDPPipeSync(), // 0x00003308
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003310
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003318
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D10), // 0x00003320
	gsDPTileSync(), // 0x00003328
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003330
	gsDPLoadSync(), // 0x00003338
	gsDPLoadTLUTCmd(7, 15), // 0x00003340
	gsDPPipeSync(), // 0x00003348
	gsSPVertex(_spot08_room_0_vertices_000028E8, 4, 0), // 0x00003350
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003358
	gsDPPipeSync(), // 0x00003360
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000F1A0), // 0x00003368
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 1, 5, 0), // 0x00003370
	gsDPLoadSync(), // 0x00003378
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00003380
	gsDPPipeSync(), // 0x00003388
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 1, 5, 0), // 0x00003390
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x00003398
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D60), // 0x000033A0
	gsDPTileSync(), // 0x000033A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000033B0
	gsDPLoadSync(), // 0x000033B8
	gsDPLoadTLUTCmd(7, 15), // 0x000033C0
	gsDPPipeSync(), // 0x000033C8
	gsSPVertex(_spot08_room_0_vertices_00002928, 16, 0), // 0x000033D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000033D8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000033E0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000033E8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000033F0
	gsDPPipeSync(), // 0x000033F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000B1A0), // 0x00003400
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003408
	gsDPLoadSync(), // 0x00003410
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003418
	gsDPPipeSync(), // 0x00003420
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003428
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003430
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D10), // 0x00003438
	gsDPTileSync(), // 0x00003440
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003448
	gsDPLoadSync(), // 0x00003450
	gsDPLoadTLUTCmd(7, 15), // 0x00003458
	gsDPPipeSync(), // 0x00003460
	gsSPVertex(_spot08_room_0_vertices_00002A28, 4, 0), // 0x00003468
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003470
	gsDPPipeSync(), // 0x00003478
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000F1A0), // 0x00003480
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 1, 5, 0), // 0x00003488
	gsDPLoadSync(), // 0x00003490
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00003498
	gsDPPipeSync(), // 0x000034A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 1, 5, 0), // 0x000034A8
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x000034B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D60), // 0x000034B8
	gsDPTileSync(), // 0x000034C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000034C8
	gsDPLoadSync(), // 0x000034D0
	gsDPLoadTLUTCmd(7, 15), // 0x000034D8
	gsDPPipeSync(), // 0x000034E0
	gsSPVertex(_spot08_room_0_vertices_00002A68, 16, 0), // 0x000034E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000034F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000034F8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003500
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003508
	gsDPPipeSync(), // 0x00003510
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000A1A0), // 0x00003518
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 7, 0), // 0x00003520
	gsDPLoadSync(), // 0x00003528
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003530
	gsDPPipeSync(), // 0x00003538
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 5, 0, 1, 7, 0), // 0x00003540
	gsDPSetTileSize(0, 0, 0, 508, 124), // 0x00003548
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004CE8), // 0x00003550
	gsDPTileSync(), // 0x00003558
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003560
	gsDPLoadSync(), // 0x00003568
	gsDPLoadTLUTCmd(7, 15), // 0x00003570
	gsDPPipeSync(), // 0x00003578
	gsSPVertex(_spot08_room_0_vertices_00002B68, 6, 0), // 0x00003580
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003588
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00003590
	gsDPPipeSync(), // 0x00003598
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000F1A0), // 0x000035A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 1, 5, 0), // 0x000035A8
	gsDPLoadSync(), // 0x000035B0
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x000035B8
	gsDPPipeSync(), // 0x000035C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 1, 5, 0), // 0x000035C8
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x000035D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D60), // 0x000035D8
	gsDPTileSync(), // 0x000035E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000035E8
	gsDPLoadSync(), // 0x000035F0
	gsDPLoadTLUTCmd(7, 15), // 0x000035F8
	gsDPPipeSync(), // 0x00003600
	gsSPVertex(_spot08_room_0_vertices_00002BC8, 8, 0), // 0x00003608
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003610
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003618
	gsDPPipeSync(), // 0x00003620
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000B1A0), // 0x00003628
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003630
	gsDPLoadSync(), // 0x00003638
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003640
	gsDPPipeSync(), // 0x00003648
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003650
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003658
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D10), // 0x00003660
	gsDPTileSync(), // 0x00003668
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003670
	gsDPLoadSync(), // 0x00003678
	gsDPLoadTLUTCmd(7, 15), // 0x00003680
	gsDPPipeSync(), // 0x00003688
	gsSPVertex(_spot08_room_0_vertices_00002C48, 14, 0), // 0x00003690
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003698
	gsSP2Triangles(6, 7, 8, 0, 6, 9, 10, 0), // 0x000036A0
	gsSP2Triangles(6, 10, 7, 0, 9, 11, 10, 0), // 0x000036A8
	gsSP2Triangles(11, 12, 10, 0, 13, 8, 7, 0), // 0x000036B0
	gsDPPipeSync(), // 0x000036B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000F1A0), // 0x000036C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 1, 5, 0), // 0x000036C8
	gsDPLoadSync(), // 0x000036D0
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x000036D8
	gsDPPipeSync(), // 0x000036E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 1, 5, 0), // 0x000036E8
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x000036F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D60), // 0x000036F8
	gsDPTileSync(), // 0x00003700
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003708
	gsDPLoadSync(), // 0x00003710
	gsDPLoadTLUTCmd(7, 15), // 0x00003718
	gsDPPipeSync(), // 0x00003720
	gsSPVertex(_spot08_room_0_vertices_00002D28, 20, 0), // 0x00003728
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003730
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003738
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003740
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003748
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003750
	gsDPPipeSync(), // 0x00003758
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000B1A0), // 0x00003760
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003768
	gsDPLoadSync(), // 0x00003770
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003778
	gsDPPipeSync(), // 0x00003780
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003788
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003790
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D10), // 0x00003798
	gsDPTileSync(), // 0x000037A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000037A8
	gsDPLoadSync(), // 0x000037B0
	gsDPLoadTLUTCmd(7, 15), // 0x000037B8
	gsDPPipeSync(), // 0x000037C0
	gsSPVertex(_spot08_room_0_vertices_00002E68, 6, 0), // 0x000037C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000037D0
	gsSP2Triangles(0, 3, 4, 0, 5, 4, 3, 0), // 0x000037D8
	gsDPPipeSync(), // 0x000037E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000037E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000E1A0), // 0x000037F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000037F8
	gsDPLoadSync(), // 0x00003800
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003808
	gsDPPipeSync(), // 0x00003810
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003818
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003820
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003828
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00003830
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00003838
	gsSPVertex(_spot08_room_0_vertices_00002EC8, 16, 0), // 0x00003840
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003848
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003850
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003858
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003860
	gsSPEndDisplayList(), // 0x00003868
};

Vtx_t _spot08_room_0_vertices_00003870[24] = 
{
	 { -1167, -418, 2311, 0, 1966, 2048, 102, 0, 63, 255 }, // 0x00003870
	 { -1211, -51, 2320, 0, 1814, -2084, 254, 1, 119, 255 }, // 0x00003880
	 { -1265, -419, 2308, 0, 867, 2048, 151, 3, 56, 255 }, // 0x00003890
	 { -1246, -51, 2253, 0, 971, -2084, 155, 9, 193, 255 }, // 0x000038A0
	 { -1214, -419, 2226, 0, 1888, 2048, 4, 255, 137, 255 }, // 0x000038B0
	 { -1171, -51, 2256, 0, 1734, -2564, 118, 2, 238, 255 }, // 0x000038C0
	 { -1167, -418, 2311, 0, 655, 2048, 102, 0, 63, 255 }, // 0x000038D0
	 { -1211, -51, 2320, 0, 788, -2564, 254, 1, 119, 255 }, // 0x000038E0
	 { -1265, -419, 2308, 0, 2048, 2048, 151, 3, 56, 255 }, // 0x000038F0
	 { -1246, -51, 2253, 0, 1871, -1907, 155, 9, 193, 255 }, // 0x00003900
	 { -1214, -419, 2226, 0, 0, 2048, 4, 255, 137, 255 }, // 0x00003910
	 { -1171, -51, 2256, 0, 299, -1907, 118, 2, 238, 255 }, // 0x00003920
	 { -1191, -51, 2288, 0, 3622, 6289, 71, 39, 88, 255 }, // 0x00003930
	 { -1171, -51, 2256, 0, 2067, 6289, 118, 2, 238, 255 }, // 0x00003940
	 { -1211, -51, 2320, 0, 4717, 6289, 254, 1, 119, 255 }, // 0x00003950
	 { -1200, 333, 2160, 0, 981, -6015, 77, 46, 79, 255 }, // 0x00003960
	 { -1246, -51, 2253, 0, 504, 2202, 155, 9, 193, 255 }, // 0x00003970
	 { -1191, -51, 2288, 0, 1052, 2214, 71, 39, 88, 255 }, // 0x00003980
	 { -1200, 333, 2160, 0, 491, -1150, 77, 46, 79, 255 }, // 0x00003990
	 { -1191, -51, 2288, 0, 1266, -2564, 71, 39, 88, 255 }, // 0x000039A0
	 { -1200, 333, 2160, 0, 2565, -7484, 77, 46, 79, 255 }, // 0x000039B0
	 { -1333, 441, 2392, 0, 1886, -7589, 107, 37, 37, 255 }, // 0x000039C0
	 { -1333, 441, 2392, 0, -804, -8820, 107, 37, 37, 255 }, // 0x000039D0
	 { -1333, 441, 2392, 0, 570, -1442, 107, 37, 37, 255 }, // 0x000039E0
};

Vtx_t _spot08_room_0_vertices_000039F0[42] = 
{
	 { -1082, 415, 2373, 0, 1024, -3905, 181, 28, 88, 255 }, // 0x000039F0
	 { -1239, 115, 2323, 0, 769, 1922, 151, 56, 249, 255 }, // 0x00003A00
	 { -1248, 100, 2342, 0, 1308, 2189, 151, 56, 249, 255 }, // 0x00003A10
	 { -1265, 437, 2201, 0, 2048, -4875, 59, 48, 92, 255 }, // 0x00003A20
	 { -1291, 205, 2326, 0, 1685, 1899, 221, 57, 99, 255 }, // 0x00003A30
	 { -1263, 197, 2340, 0, 2476, 2224, 221, 57, 99, 255 }, // 0x00003A40
	 { -1438, 233, 2428, 0, 1024, 7484, 21, 186, 95, 255 }, // 0x00003A50
	 { -1280, 139, 2307, 0, 1667, 1893, 229, 150, 47, 255 }, // 0x00003A60
	 { -1262, 153, 2350, 0, 455, 2186, 229, 150, 47, 255 }, // 0x00003A70
	 { -1372, 383, 2297, 0, 2048, -1680, 221, 218, 108, 255 }, // 0x00003A80
	 { -1283, 276, 2288, 0, 1648, 1896, 221, 218, 108, 255 }, // 0x00003A90
	 { -1263, 276, 2294, 0, 2510, 2223, 221, 218, 108, 255 }, // 0x00003AA0
	 { -1241, 418, 2416, 0, 2048, -4217, 153, 61, 7, 255 }, // 0x00003AB0
	 { -1300, 325, 2368, 0, 2275, 1944, 153, 61, 7, 255 }, // 0x00003AC0
	 { -1303, 319, 2374, 0, 1824, 2151, 153, 61, 7, 255 }, // 0x00003AD0
	 { -1179, 195, 2089, 0, 2362, -1714, 219, 162, 193, 255 }, // 0x00003AE0
	 { -1183, 111, 2215, 0, 1800, 2072, 219, 162, 193, 255 }, // 0x00003AF0
	 { -1224, 131, 2209, 0, 3236, 1932, 219, 162, 193, 255 }, // 0x00003B00
	 { -1218, 186, 2196, 0, 2308, 1800, 194, 155, 15, 255 }, // 0x00003B10
	 { -1196, 175, 2212, 0, 1766, 2316, 194, 155, 15, 255 }, // 0x00003B20
	 { -1339, 266, 2235, 0, 2048, -2039, 194, 155, 15, 255 }, // 0x00003B30
	 { -1117, 292, 2211, 0, 2048, -737, 210, 69, 170, 255 }, // 0x00003B40
	 { -1191, 215, 2189, 0, 1753, 2057, 210, 69, 170, 255 }, // 0x00003B50
	 { -1197, 220, 2197, 0, 2339, 2039, 210, 69, 170, 255 }, // 0x00003B60
	 { -1280, 400, 2173, 0, 2048, -152, 52, 167, 195, 255 }, // 0x00003B70
	 { -1264, 359, 2246, 0, 2347, 2030, 52, 167, 195, 255 }, // 0x00003B80
	 { -1275, 353, 2246, 0, 1746, 2066, 52, 167, 195, 255 }, // 0x00003B90
	 { -1165, 256, 2346, 0, 1702, 1953, 200, 193, 172, 255 }, // 0x00003BA0
	 { -1170, 247, 2356, 0, 2344, 2129, 200, 193, 172, 255 }, // 0x00003BB0
	 { -1217, 328, 2327, 0, 2048, -360, 200, 193, 172, 255 }, // 0x00003BC0
	 { -1127, 329, 2359, 0, 2169, 1973, 38, 148, 222, 255 }, // 0x00003BD0
	 { -1074, 350, 2351, 0, 2048, -928, 38, 148, 222, 255 }, // 0x00003BE0
	 { -1128, 327, 2364, 0, 1896, 2143, 38, 148, 222, 255 }, // 0x00003BF0
	 { -1082, 415, 2373, 0, 2048, -6766, 181, 28, 88, 255 }, // 0x00003C00
	 { -1245, 123, 2336, 0, 1631, 1834, 11, 235, 117, 255 }, // 0x00003C10
	 { -1239, 103, 2332, 0, 2409, 2233, 11, 235, 117, 255 }, // 0x00003C20
	 { -1269, 134, 2325, 0, 730, 1803, 60, 251, 103, 255 }, // 0x00003C30
	 { -1276, 165, 2331, 0, 1363, 2331, 60, 251, 103, 255 }, // 0x00003C40
	 { -1438, 233, 2428, 0, 1024, 7461, 21, 186, 95, 255 }, // 0x00003C50
	 { -1265, 437, 2201, 0, 2048, -4860, 59, 48, 92, 255 }, // 0x00003C60
	 { -1280, 217, 2337, 0, 2631, 1778, 116, 9, 27, 255 }, // 0x00003C70
	 { -1276, 185, 2328, 0, 1383, 2357, 116, 9, 27, 255 }, // 0x00003C80
};

Vtx_t _spot08_room_0_vertices_00003C90[33] = 
{
	 { -1369, 88, 1520, 0, 1563, 2048, 94, 16, 72, 255 }, // 0x00003C90
	 { -1085, -93, 1426, 0, 1348, -924, 230, 175, 172, 255 }, // 0x00003CA0
	 { -1401, 43, 1493, 0, 1040, 2048, 239, 143, 220, 255 }, // 0x00003CB0
	 { -1446, 41, 1542, 0, 2482, 2048, 13, 145, 43, 255 }, // 0x00003CC0
	 { -1085, -93, 1426, 0, 2048, -1519, 230, 175, 172, 255 }, // 0x00003CD0
	 { -1369, 88, 1520, 0, 1331, 2048, 94, 16, 72, 255 }, // 0x00003CE0
	 { -1401, 43, 1493, 0, 2366, 2048, 239, 143, 220, 255 }, // 0x00003CF0
	 { -1085, -93, 1426, 0, 2048, -1869, 230, 175, 172, 255 }, // 0x00003D00
	 { -1446, 41, 1542, 0, 1679, 2048, 13, 145, 43, 255 }, // 0x00003D10
	 { -1489, 99, 1657, 0, 2048, 2048, 87, 192, 52, 255 }, // 0x00003D20
	 { -1312, 253, 1632, 0, 1588, 317, 106, 6, 55, 255 }, // 0x00003D30
	 { -1341, 253, 1639, 0, 1359, 475, 224, 110, 33, 255 }, // 0x00003D40
	 { -1525, 133, 1679, 0, 1296, 2048, 64, 44, 91, 255 }, // 0x00003D50
	 { -1525, 133, 1679, 0, 2048, 2048, 64, 44, 91, 255 }, // 0x00003D60
	 { -1341, 253, 1639, 0, 1675, 60, 224, 110, 33, 255 }, // 0x00003D70
	 { -1494, 154, 1622, 0, 1190, 2048, 27, 116, 4, 255 }, // 0x00003D80
	 { -1330, 253, 1609, 0, 1260, 127, 20, 46, 148, 255 }, // 0x00003D90
	 { -1494, 154, 1622, 0, 2048, 2048, 27, 116, 4, 255 }, // 0x00003DA0
	 { -1330, 253, 1609, 0, 1426, -445, 20, 46, 148, 255 }, // 0x00003DB0
	 { -1489, 99, 1657, 0, 1144, 2048, 87, 192, 52, 255 }, // 0x00003DC0
	 { -1312, 253, 1632, 0, 1067, -701, 106, 6, 55, 255 }, // 0x00003DD0
	 { -1482, 43, 1513, 0, 2258, 2048, 1, 156, 191, 255 }, // 0x00003DE0
	 { -1434, -194, 1284, 0, 2048, -5808, 84, 52, 188, 255 }, // 0x00003DF0
	 { -1536, 85, 1552, 0, 1748, 2048, 170, 226, 178, 255 }, // 0x00003E00
	 { -1491, 54, 1587, 0, 2100, 2048, 25, 143, 29, 255 }, // 0x00003E10
	 { -1434, -194, 1284, 0, 998, -1054, 84, 52, 188, 255 }, // 0x00003E20
	 { -1482, 43, 1513, 0, 1053, 2048, 1, 156, 191, 255 }, // 0x00003E30
	 { -1536, 85, 1552, 0, 2479, 2048, 170, 226, 178, 255 }, // 0x00003E40
	 { -1434, -194, 1284, 0, 2048, -1304, 84, 52, 188, 255 }, // 0x00003E50
	 { -1491, 54, 1587, 0, 1710, 2048, 25, 143, 29, 255 }, // 0x00003E60
	 { -1312, 253, 1632, 0, 21563, 21228, 106, 6, 55, 255 }, // 0x00003E70
	 { -1330, 253, 1609, 0, 21647, 20550, 20, 46, 148, 255 }, // 0x00003E80
	 { -1341, 253, 1639, 0, 21168, 20852, 224, 110, 33, 255 }, // 0x00003E90
};

Vtx_t _spot08_room_0_vertices_00003EA0[5] = 
{
	 { -1779, -65, 1964, 0, 1747, 2012, 230, 209, 107, 255 }, // 0x00003EA0
	 { -1779, -7, 1962, 0, 2129, 754, 253, 38, 113, 255 }, // 0x00003EB0
	 { -1822, 9, 1923, 0, 995, -96, 175, 38, 80, 255 }, // 0x00003EC0
	 { -1821, -85, 1926, 0, 377, 1940, 169, 189, 47, 255 }, // 0x00003ED0
	 { -1848, -39, 1900, 0, -88, 637, 137, 15, 3, 255 }, // 0x00003EE0
};

Vtx_t _spot08_room_0_vertices_00003EF0[77] = 
{
	 { -1446, 41, 1542, 0, 2827, -1112, 13, 145, 43, 255 }, // 0x00003EF0
	 { -1489, 99, 1657, 0, 1953, -179, 87, 192, 52, 255 }, // 0x00003F00
	 { -1491, 54, 1587, 0, 2559, -482, 25, 143, 29, 255 }, // 0x00003F10
	 { -1446, 41, 1542, 0, 2827, -1112, 13, 145, 43, 255 }, // 0x00003F20
	 { -1369, 88, 1520, 0, 1856, -2196, 94, 16, 72, 255 }, // 0x00003F30
	 { -1401, 43, 1493, 0, 2966, -1804, 239, 143, 220, 255 }, // 0x00003F40
	 { -1446, 41, 1542, 0, 2827, -1112, 13, 145, 43, 255 }, // 0x00003F50
	 { -1482, 43, 1513, 0, 3173, -824, 1, 156, 191, 255 }, // 0x00003F60
	 { -1491, 54, 1587, 0, 2559, -482, 25, 143, 29, 255 }, // 0x00003F70
	 { -1444, 67, 1454, 0, 3544, -1639, 179, 201, 183, 255 }, // 0x00003F80
	 { -1444, 67, 1454, 0, 585, 3802, 179, 201, 183, 255 }, // 0x00003F90
	 { -1482, 43, 1513, 0, 205, 2662, 1, 156, 191, 255 }, // 0x00003FA0
	 { -1536, 85, 1552, 0, 966, 1644, 170, 226, 178, 255 }, // 0x00003FB0
	 { -1100, -98, 1138, 0, 1024, -6963, 77, 231, 168, 255 }, // 0x00003FC0
	 { -1393, 140, 1498, 0, 1087, -2266, 57, 105, 7, 255 }, // 0x00003FD0
	 { -1439, 127, 1457, 0, -55, -2109, 206, 81, 184, 255 }, // 0x00003FE0
	 { -1393, 140, 1498, 0, 1087, -2266, 57, 105, 7, 255 }, // 0x00003FF0
	 { -1444, 67, 1454, 0, -1128, -1810, 179, 201, 183, 255 }, // 0x00004000
	 { -1494, 154, 1622, 0, 1182, -644, 27, 116, 4, 255 }, // 0x00004010
	 { -1531, 159, 1671, 0, 1024, 0, 31, 105, 48, 255 }, // 0x00004020
	 { -1525, 133, 1679, 0, 1599, 134, 64, 44, 91, 255 }, // 0x00004030
	 { -1583, 157, 1628, 0, 211, 7, 197, 94, 211, 255 }, // 0x00004040
	 { -1531, 159, 1671, 0, 1024, 0, 31, 105, 48, 255 }, // 0x00004050
	 { -1444, 67, 1454, 0, -1128, -1810, 179, 201, 183, 255 }, // 0x00004060
	 { -1536, 85, 1552, 0, -1051, -495, 170, 226, 178, 255 }, // 0x00004070
	 { -1536, 85, 1552, 0, -1051, -495, 170, 226, 178, 255 }, // 0x00004080
	 { -1666, 23, 1765, 0, 3072, 2048, 13, 142, 222, 255 }, // 0x00004090
	 { -1491, 54, 1587, 0, 2559, -482, 25, 143, 29, 255 }, // 0x000040A0
	 { -1647, 36, 1825, 0, 1981, 2353, 90, 220, 70, 255 }, // 0x000040B0
	 { -1491, 54, 1587, 0, 2559, -482, 25, 143, 29, 255 }, // 0x000040C0
	 { -1647, 36, 1825, 0, 1981, 2353, 90, 220, 70, 255 }, // 0x000040D0
	 { -1821, -85, 1926, 0, 3109, 4587, 169, 189, 47, 255 }, // 0x000040E0
	 { -1666, 23, 1765, 0, 3072, 2048, 13, 142, 222, 255 }, // 0x000040F0
	 { -1779, -65, 1964, 0, 2027, 4573, 230, 209, 107, 255 }, // 0x00004100
	 { -1666, 23, 1765, 0, 3072, 2048, 13, 142, 222, 255 }, // 0x00004110
	 { -1647, 36, 1825, 0, 1981, 2353, 90, 220, 70, 255 }, // 0x00004120
	 { -1779, -65, 1964, 0, 2027, 4573, 230, 209, 107, 255 }, // 0x00004130
	 { -1722, 48, 1757, 0, -226, 1936, 176, 228, 172, 255 }, // 0x00004140
	 { -1536, 85, 1552, 0, -1051, -495, 170, 226, 178, 255 }, // 0x00004150
	 { -1666, 23, 1765, 0, -974, 2140, 13, 142, 222, 255 }, // 0x00004160
	 { -1536, 85, 1552, 0, 3216, -401, 170, 226, 178, 255 }, // 0x00004170
	 { -1491, 54, 1587, 0, 2559, -482, 25, 143, 29, 255 }, // 0x00004180
	 { -1666, 23, 1765, 0, 3072, 2048, 13, 142, 222, 255 }, // 0x00004190
	 { -1848, -39, 1900, 0, -92, 4447, 137, 15, 3, 255 }, // 0x000041A0
	 { -1722, 48, 1757, 0, -226, 1936, 176, 228, 172, 255 }, // 0x000041B0
	 { -1821, -85, 1926, 0, -791, 4675, 169, 189, 47, 255 }, // 0x000041C0
	 { -1666, 23, 1765, 0, -974, 2140, 13, 142, 222, 255 }, // 0x000041D0
	 { -1821, -85, 1926, 0, -791, 4675, 169, 189, 47, 255 }, // 0x000041E0
	 { -1583, 157, 1628, 0, 211, 7, 197, 94, 211, 255 }, // 0x000041F0
	 { -1536, 85, 1552, 0, -1051, -495, 170, 226, 178, 255 }, // 0x00004200
	 { -1722, 48, 1757, 0, -226, 1936, 176, 228, 172, 255 }, // 0x00004210
	 { -1702, 103, 1774, 0, 483, 2035, 189, 98, 249, 255 }, // 0x00004220
	 { -1722, 48, 1757, 0, -226, 1936, 176, 228, 172, 255 }, // 0x00004230
	 { -1822, 9, 1923, 0, 604, 4217, 175, 38, 80, 255 }, // 0x00004240
	 { -1848, -39, 1900, 0, -92, 4447, 137, 15, 3, 255 }, // 0x00004250
	 { -1722, 48, 1757, 0, -226, 1936, 176, 228, 172, 255 }, // 0x00004260
	 { -1848, -39, 1900, 0, -92, 4447, 137, 15, 3, 255 }, // 0x00004270
	 { -1531, 159, 1671, 0, 1024, 0, 31, 105, 48, 255 }, // 0x00004280
	 { -1702, 103, 1774, 0, 483, 2035, 189, 98, 249, 255 }, // 0x00004290
	 { -1655, 96, 1816, 0, 1292, 2070, 36, 83, 79, 255 }, // 0x000042A0
	 { -1531, 159, 1671, 0, 1024, 0, 31, 105, 48, 255 }, // 0x000042B0
	 { -1779, -7, 1962, 0, 1372, 4296, 253, 38, 113, 255 }, // 0x000042C0
	 { -1655, 96, 1816, 0, 1292, 2070, 36, 83, 79, 255 }, // 0x000042D0
	 { -1822, 9, 1923, 0, 604, 4217, 175, 38, 80, 255 }, // 0x000042E0
	 { -1655, 96, 1816, 0, 1292, 2070, 36, 83, 79, 255 }, // 0x000042F0
	 { -1702, 103, 1774, 0, 483, 2035, 189, 98, 249, 255 }, // 0x00004300
	 { -1822, 9, 1923, 0, 604, 4217, 175, 38, 80, 255 }, // 0x00004310
	 { -1647, 36, 1825, 0, 1981, 2353, 90, 220, 70, 255 }, // 0x00004320
	 { -1489, 99, 1657, 0, 1953, -179, 87, 192, 52, 255 }, // 0x00004330
	 { -1525, 133, 1679, 0, 1599, 134, 64, 44, 91, 255 }, // 0x00004340
	 { -1531, 159, 1671, 0, 1024, 0, 31, 105, 48, 255 }, // 0x00004350
	 { -1655, 96, 1816, 0, 1292, 2070, 36, 83, 79, 255 }, // 0x00004360
	 { -1647, 36, 1825, 0, 1981, 2353, 90, 220, 70, 255 }, // 0x00004370
	 { -1779, -65, 1964, 0, 2027, 4573, 230, 209, 107, 255 }, // 0x00004380
	 { -1779, -7, 1962, 0, 1372, 4296, 253, 38, 113, 255 }, // 0x00004390
	 { -1647, 36, 1825, 0, 1981, 2353, 90, 220, 70, 255 }, // 0x000043A0
	 { -1779, -7, 1962, 0, 1372, 4296, 253, 38, 113, 255 }, // 0x000043B0
};

Vtx_t _spot08_room_0_vertices_000043C0[5] = 
{
	 { -1779, -65, 1964, 0, 1747, 2012, 230, 209, 107, 255 }, // 0x000043C0
	 { -1779, -7, 1962, 0, 2129, 754, 253, 38, 113, 255 }, // 0x000043D0
	 { -1822, 9, 1923, 0, 995, -96, 175, 38, 80, 255 }, // 0x000043E0
	 { -1821, -85, 1926, 0, 377, 1940, 169, 189, 47, 255 }, // 0x000043F0
	 { -1848, -39, 1900, 0, -88, 637, 137, 15, 3, 255 }, // 0x00004400
};

Vtx_t _spot08_room_0_vertices_00004410[24] = 
{
	 { -555, -275, 2207, 0, 1966, 2048, 183, 6, 161, 255 }, // 0x00004410
	 { -487, 91, 2228, 0, 1814, -2084, 70, 6, 160, 255 }, // 0x00004420
	 { -439, -276, 2262, 0, 867, 2048, 118, 5, 241, 255 }, // 0x00004430
	 { -481, 91, 2303, 0, 971, -2084, 73, 12, 94, 255 }, // 0x00004440
	 { -516, -336, 2335, 0, 1888, 2048, 215, 4, 112, 255 }, // 0x00004450
	 { -549, 91, 2271, 0, 1734, -2564, 149, 6, 53, 255 }, // 0x00004460
	 { -555, -275, 2207, 0, 655, 2048, 183, 6, 161, 255 }, // 0x00004470
	 { -487, 91, 2228, 0, 788, -2564, 70, 6, 160, 255 }, // 0x00004480
	 { -439, -276, 2262, 0, 2048, 2048, 118, 5, 241, 255 }, // 0x00004490
	 { -481, 91, 2303, 0, 1871, -1907, 73, 12, 94, 255 }, // 0x000044A0
	 { -516, -336, 2335, 0, 0, 2048, 215, 4, 112, 255 }, // 0x000044B0
	 { -549, 91, 2271, 0, 299, -1907, 149, 6, 53, 255 }, // 0x000044C0
	 { -518, 91, 2250, 0, 3622, 6289, 170, 68, 208, 255 }, // 0x000044D0
	 { -549, 91, 2271, 0, 2067, 6289, 149, 6, 53, 255 }, // 0x000044E0
	 { -487, 91, 2228, 0, 4717, 6289, 70, 6, 160, 255 }, // 0x000044F0
	 { -562, 475, 2370, 0, 981, -6015, 216, 45, 153, 255 }, // 0x00004500
	 { -481, 91, 2303, 0, 504, 2202, 73, 12, 94, 255 }, // 0x00004510
	 { -518, 91, 2250, 0, 1052, 2214, 170, 68, 208, 255 }, // 0x00004520
	 { -562, 475, 2370, 0, 491, -1150, 216, 45, 153, 255 }, // 0x00004530
	 { -518, 91, 2250, 0, 1266, -2564, 170, 68, 208, 255 }, // 0x00004540
	 { -562, 475, 2370, 0, 2565, -7484, 216, 45, 153, 255 }, // 0x00004550
	 { -350, 585, 2207, 0, 1886, -7589, 171, 36, 180, 255 }, // 0x00004560
	 { -350, 585, 2207, 0, -804, -8820, 171, 36, 180, 255 }, // 0x00004570
	 { -350, 585, 2207, 0, 570, -1442, 171, 36, 180, 255 }, // 0x00004580
};

Vtx_t _spot08_room_0_vertices_00004590[42] = 
{
	 { -589, 556, 2128, 0, 1024, -3905, 104, 29, 204, 255 }, // 0x00004590
	 { -461, 258, 2236, 0, 769, 1922, 94, 57, 47, 255 }, // 0x000045A0
	 { -445, 243, 2222, 0, 1308, 2189, 94, 57, 47, 255 }, // 0x000045B0
	 { -487, 580, 2357, 0, 2048, -4875, 237, 47, 148, 255 }, // 0x000045C0
	 { -413, 348, 2253, 0, 1685, 1899, 70, 57, 178, 255 }, // 0x000045D0
	 { -434, 340, 2229, 0, 2476, 2224, 70, 57, 178, 255 }, // 0x000045E0
	 { -238, 377, 2216, 0, 1024, 7484, 19, 186, 161, 255 }, // 0x000045F0
	 { -430, 282, 2266, 0, 1667, 1893, 44, 150, 223, 255 }, // 0x00004600
	 { -430, 296, 2220, 0, 455, 2186, 44, 150, 223, 255 }, // 0x00004610
	 { -351, 527, 2311, 0, 2048, -1680, 74, 218, 170, 255 }, // 0x00004620
	 { -435, 419, 2285, 0, 1648, 1896, 74, 218, 170, 255 }, // 0x00004630
	 { -451, 419, 2271, 0, 2510, 2223, 74, 218, 170, 255 }, // 0x00004640
	 { -426, 561, 2150, 0, 2048, -4217, 97, 62, 33, 255 }, // 0x00004650
	 { -390, 468, 2217, 0, 2275, 1944, 97, 62, 33, 255 }, // 0x00004660
	 { -384, 462, 2213, 0, 1824, 2151, 97, 62, 33, 255 }, // 0x00004670
	 { -609, 337, 2428, 0, 2362, -1714, 10, 162, 73, 255 }, // 0x00004680
	 { -555, 253, 2313, 0, 1800, 2072, 10, 162, 73, 255 }, // 0x00004690
	 { -520, 274, 2335, 0, 3236, 1932, 10, 162, 73, 255 }, // 0x000046A0
	 { -531, 329, 2344, 0, 2308, 1800, 64, 156, 11, 255 }, // 0x000046B0
	 { -544, 318, 2321, 0, 1766, 2316, 64, 156, 11, 255 }, // 0x000046C0
	 { -405, 410, 2355, 0, 2048, -2039, 64, 156, 11, 255 }, // 0x000046D0
	 { -619, 433, 2290, 0, 2048, -737, 8, 69, 97, 255 }, // 0x000046E0
	 { -558, 357, 2340, 0, 1753, 2057, 8, 69, 97, 255 }, // 0x000046F0
	 { -550, 363, 2335, 0, 2339, 2039, 8, 69, 97, 255 }, // 0x00004700
	 { -485, 543, 2389, 0, 2048, -152, 186, 166, 36, 255 }, // 0x00004710
	 { -470, 502, 2315, 0, 2347, 2030, 186, 166, 36, 255 }, // 0x00004720
	 { -460, 496, 2320, 0, 1746, 2066, 186, 166, 36, 255 }, // 0x00004730
	 { -521, 398, 2185, 0, 1702, 1953, 19, 193, 100, 255 }, // 0x00004740
	 { -512, 390, 2178, 0, 2344, 2129, 19, 193, 100, 255 }, // 0x00004750
	 { -481, 470, 2222, 0, 2048, -360, 19, 193, 100, 255 }, // 0x00004760
	 { -553, 471, 2158, 0, 2169, 1973, 209, 147, 16, 255 }, // 0x00004770
	 { -604, 491, 2145, 0, 2048, -928, 209, 147, 16, 255 }, // 0x00004780
	 { -549, 469, 2154, 0, 1896, 2143, 209, 147, 16, 255 }, // 0x00004790
	 { -589, 556, 2128, 0, 2048, -6766, 104, 29, 204, 255 }, // 0x000047A0
	 { -451, 266, 2226, 0, 1631, 1834, 36, 235, 144, 255 }, // 0x000047B0
	 { -458, 245, 2227, 0, 2409, 2233, 36, 235, 144, 255 }, // 0x000047C0
	 { -433, 277, 2245, 0, 730, 1803, 241, 250, 138, 255 }, // 0x000047D0
	 { -425, 308, 2243, 0, 1363, 2331, 241, 250, 138, 255 }, // 0x000047E0
	 { -238, 377, 2216, 0, 1024, 7461, 19, 186, 161, 255 }, // 0x000047F0
	 { -487, 580, 2357, 0, 2048, -4860, 237, 47, 148, 255 }, // 0x00004800
	 { -419, 360, 2238, 0, 2631, 1778, 160, 8, 186, 255 }, // 0x00004810
	 { -426, 328, 2245, 0, 1383, 2357, 160, 8, 186, 255 }, // 0x00004820
};

Vtx_t _spot08_room_0_vertices_00004830[8] = 
{
	 { -1928, -455, 1698, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004830
	 { -974, -455, 2834, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004840
	 { -1105, -266, 1007, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004850
	 { -151, -266, 2143, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004860
	 { -2047, 433, 1798, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004870
	 { -1094, 433, 2934, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004880
	 { -1225, 622, 1108, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004890
	 { -271, 622, 2244, 0, 0, 0, 0, 0, 0, 0 }, // 0x000048A0
};

Gfx _spot08_room_0_dlist_000048B0[] =
{
	gsDPPipeSync(), // 0x000048B0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000048B8
	gsSPVertex(_spot08_room_0_vertices_00004830, 8, 0), // 0x000048C0
	gsSPCullDisplayList(0, 7), // 0x000048C8
	gsDPPipeSync(), // 0x000048D0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000048D8
	gsDPPipeSync(), // 0x000048E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000048E8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000048F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000F9A0), // 0x000048F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004900
	gsDPLoadSync(), // 0x00004908
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004910
	gsDPPipeSync(), // 0x00004918
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004920
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004928
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D80), // 0x00004930
	gsDPTileSync(), // 0x00004938
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004940
	gsDPLoadSync(), // 0x00004948
	gsDPLoadTLUTCmd(7, 15), // 0x00004950
	gsDPPipeSync(), // 0x00004958
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004960
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004968
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00004970
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00004978
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004980
	gsSPVertex(_spot08_room_0_vertices_00003870, 24, 0), // 0x00004988
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004990
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00004998
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x000049A0
	gsSP2Triangles(12, 13, 14, 0, 11, 9, 15, 0), // 0x000049A8
	gsSP2Triangles(16, 17, 18, 0, 19, 5, 20, 0), // 0x000049B0
	gsSP2Triangles(3, 1, 21, 0, 7, 19, 22, 0), // 0x000049B8
	gsSP1Triangle(17, 16, 23, 0), // 0x000049C0
	gsDPPipeSync(), // 0x000049C8
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000049D0
	gsSPVertex(_spot08_room_0_vertices_000039F0, 32, 0), // 0x000049D8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000049E0
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x000049E8
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0), // 0x000049F0
	gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0), // 0x000049F8
	gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0), // 0x00004A00
	gsSPVertex(_spot08_room_0_vertices_00003BD0, 12, 0), // 0x00004A08
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004A10
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00004A18
	gsDPPipeSync(), // 0x00004A20
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00004A28
	gsSPVertex(_spot08_room_0_vertices_00003C90, 32, 0), // 0x00004A30
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004A38
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00004A40
	gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0), // 0x00004A48
	gsSP2Triangles(14, 16, 15, 0, 17, 18, 19, 0), // 0x00004A50
	gsSP2Triangles(18, 20, 19, 0, 21, 22, 23, 0), // 0x00004A58
	gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0), // 0x00004A60
	gsSPVertex(_spot08_room_0_vertices_00003E70, 3, 0), // 0x00004A68
	gsSP1Triangle(0, 1, 2, 0), // 0x00004A70
	gsDPPipeSync(), // 0x00004A78
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004A80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_000089A0), // 0x00004A88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00004A90
	gsDPLoadSync(), // 0x00004A98
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004AA0
	gsDPPipeSync(), // 0x00004AA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00004AB0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004AB8
	gsSPVertex(_spot08_room_0_vertices_00003EA0, 5, 0), // 0x00004AC0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00004AC8
	gsSP1Triangle(3, 2, 4, 0), // 0x00004AD0
	gsDPPipeSync(), // 0x00004AD8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004AE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000F9A0), // 0x00004AE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004AF0
	gsDPLoadSync(), // 0x00004AF8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004B00
	gsDPPipeSync(), // 0x00004B08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004B10
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004B18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D80), // 0x00004B20
	gsDPTileSync(), // 0x00004B28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004B30
	gsDPLoadSync(), // 0x00004B38
	gsDPLoadTLUTCmd(7, 15), // 0x00004B40
	gsDPPipeSync(), // 0x00004B48
	gsSPVertex(_spot08_room_0_vertices_00003EF0, 32, 0), // 0x00004B50
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0), // 0x00004B58
	gsSP2Triangles(5, 6, 7, 0, 7, 6, 8, 0), // 0x00004B60
	gsSP2Triangles(9, 5, 7, 0, 10, 11, 12, 0), // 0x00004B68
	gsSP2Triangles(4, 5, 13, 0, 14, 4, 13, 0), // 0x00004B70
	gsSP2Triangles(15, 16, 13, 0, 17, 15, 13, 0), // 0x00004B78
	gsSP2Triangles(5, 9, 13, 0, 1, 4, 18, 0), // 0x00004B80
	gsSP2Triangles(4, 14, 18, 0, 18, 19, 20, 0), // 0x00004B88
	gsSP2Triangles(18, 16, 15, 0, 18, 15, 21, 0), // 0x00004B90
	gsSP2Triangles(22, 18, 21, 0, 15, 23, 24, 0), // 0x00004B98
	gsSP2Triangles(21, 15, 25, 0, 26, 27, 28, 0), // 0x00004BA0
	gsSP1Triangle(29, 1, 30, 0), // 0x00004BA8
	gsSPVertex(_spot08_room_0_vertices_000040E0, 32, 0), // 0x00004BB0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004BB8
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00004BC0
	gsSP2Triangles(12, 13, 14, 0, 13, 15, 16, 0), // 0x00004BC8
	gsSP2Triangles(17, 18, 19, 0, 20, 17, 21, 0), // 0x00004BD0
	gsSP2Triangles(22, 20, 23, 0, 20, 24, 25, 0), // 0x00004BD8
	gsSP2Triangles(26, 17, 27, 0, 28, 29, 20, 0), // 0x00004BE0
	gsSPVertex(_spot08_room_0_vertices_000042C0, 16, 0), // 0x00004BE8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004BF0
	gsSP2Triangles(6, 7, 8, 0, 8, 9, 10, 0), // 0x00004BF8
	gsSP2Triangles(11, 8, 1, 0, 12, 6, 13, 0), // 0x00004C00
	gsSP1Triangle(14, 1, 15, 0), // 0x00004C08
	gsDPPipeSync(), // 0x00004C10
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004C18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_000089A0), // 0x00004C20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00004C28
	gsDPLoadSync(), // 0x00004C30
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004C38
	gsDPPipeSync(), // 0x00004C40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00004C48
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004C50
	gsSPVertex(_spot08_room_0_vertices_000043C0, 5, 0), // 0x00004C58
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00004C60
	gsSP1Triangle(3, 2, 4, 0), // 0x00004C68
	gsDPPipeSync(), // 0x00004C70
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004C78
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000F9A0), // 0x00004C80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004C88
	gsDPLoadSync(), // 0x00004C90
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004C98
	gsDPPipeSync(), // 0x00004CA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004CA8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004CB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D80), // 0x00004CB8
	gsDPTileSync(), // 0x00004CC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004CC8
	gsDPLoadSync(), // 0x00004CD0
	gsDPLoadTLUTCmd(7, 15), // 0x00004CD8
	gsDPPipeSync(), // 0x00004CE0
	gsSPVertex(_spot08_room_0_vertices_00004410, 24, 0), // 0x00004CE8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004CF0
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00004CF8
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x00004D00
	gsSP2Triangles(12, 13, 14, 0, 11, 9, 15, 0), // 0x00004D08
	gsSP2Triangles(16, 17, 18, 0, 19, 5, 20, 0), // 0x00004D10
	gsSP2Triangles(3, 1, 21, 0, 7, 19, 22, 0), // 0x00004D18
	gsSP1Triangle(17, 16, 23, 0), // 0x00004D20
	gsDPPipeSync(), // 0x00004D28
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00004D30
	gsSPVertex(_spot08_room_0_vertices_00004590, 32, 0), // 0x00004D38
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004D40
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00004D48
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0), // 0x00004D50
	gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0), // 0x00004D58
	gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0), // 0x00004D60
	gsSPVertex(_spot08_room_0_vertices_00004770, 12, 0), // 0x00004D68
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004D70
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00004D78
	gsSPEndDisplayList(), // 0x00004D80
};

Vtx_t _spot08_room_0_vertices_00004D88[32] = 
{
	 { -2038, 200, 633, 0, 1823, -12, 65, 65, 180, 255 }, // 0x00004D88
	 { -2184, 169, 617, 0, 2323, 376, 184, 239, 162, 255 }, // 0x00004D98
	 { -2177, 249, 664, 0, 2291, -12, 17, 89, 178, 255 }, // 0x00004DA8
	 { -2535, 169, 577, 0, 3557, 376, 81, 240, 170, 255 }, // 0x00004DB8
	 { -2529, 238, 625, 0, 3514, -12, 1, 89, 177, 255 }, // 0x00004DC8
	 { -2339, 253, 647, 0, 2853, -12, 4, 233, 139, 255 }, // 0x00004DD8
	 { -3172, 200, 506, 0, 5744, -12, 6, 67, 157, 255 }, // 0x00004DE8
	 { -2184, 20, 617, 0, 2323, 994, 211, 92, 195, 255 }, // 0x00004DF8
	 { -2038, 20, 633, 0, 1823, 994, 39, 108, 221, 255 }, // 0x00004E08
	 { -2535, 20, 577, 0, 3557, 994, 55, 89, 198, 255 }, // 0x00004E18
	 { -3172, 20, 506, 0, 5744, 994, 10, 82, 170, 255 }, // 0x00004E28
	 { -514, 20, 1513, 0, 10685, 1028, 29, 85, 79, 255 }, // 0x00004E38
	 { -541, 212, 1427, 0, 10601, 77, 16, 93, 73, 255 }, // 0x00004E48
	 { -1133, 212, 1171, 0, 8399, 61, 205, 86, 66, 255 }, // 0x00004E58
	 { -1186, 20, 1217, 0, 8402, 1011, 192, 88, 48, 255 }, // 0x00004E68
	 { -138, 137, 1088, 0, 12416, 90, 87, 72, 218, 255 }, // 0x00004E78
	 { -1542, 220, 383, 0, 5370, 39, 190, 95, 227, 255 }, // 0x00004E88
	 { -1542, 20, 383, 0, 5342, 989, 29, 94, 189, 255 }, // 0x00004E98
	 { -138, 20, 1088, 0, 12480, 1040, 117, 0, 233, 255 }, // 0x00004EA8
	 { -138, 137, 1088, 0, 0, 0, 87, 72, 218, 255 }, // 0x00004EB8
	 { -138, 137, 1088, 0, 0, 0, 87, 72, 218, 255 }, // 0x00004EC8
	 { -138, 20, 1088, 0, 0, 938, 117, 0, 233, 255 }, // 0x00004ED8
	 { 87, 209, 2611, 0, 9990, 616, 13, 29, 141, 255 }, // 0x00004EE8
	 { 37, 20, 2601, 0, 10047, 993, 196, 85, 198, 255 }, // 0x00004EF8
	 { -513, 20, 2854, 0, 10779, 993, 237, 52, 150, 255 }, // 0x00004F08
	 { 87, 60, 2611, 0, 9990, 993, 21, 91, 182, 255 }, // 0x00004F18
	 { -482, 369, 2911, 0, 10842, 0, 244, 64, 156, 255 }, // 0x00004F28
	 { -1824, 20, 2751, 0, 13759, 993, 75, 63, 188, 255 }, // 0x00004F38
	 { -1864, 370, 2831, 0, 13678, 0, 63, 87, 205, 255 }, // 0x00004F48
	 { 347, 293, 2686, 0, 9298, 312, 254, 37, 142, 255 }, // 0x00004F58
	 { 563, 369, 2689, 0, 8653, 0, 163, 25, 185, 255 }, // 0x00004F68
	 { 545, 209, 2657, 0, 8614, 513, 167, 11, 177, 255 }, // 0x00004F78
};

Vtx_t _spot08_room_0_vertices_00004F88[30] = 
{
	 { -2038, 20, 633, 0, 18206, 993, 39, 108, 221, 255 }, // 0x00004F88
	 { -2038, 200, 633, 0, 18206, 0, 65, 65, 180, 255 }, // 0x00004F98
	 { -1871, 20, 1372, 0, 16247, 993, 97, 69, 255, 255 }, // 0x00004FA8
	 { -1864, 370, 2831, 0, 13678, 0, 63, 87, 205, 255 }, // 0x00004FB8
	 { -1824, 20, 2751, 0, 13759, 993, 75, 63, 188, 255 }, // 0x00004FC8
	 { -1848, 20, -485, 0, 7132, 993, 44, 83, 75, 255 }, // 0x00004FD8
	 { -1848, 200, -485, 0, 7132, 0, 48, 60, 91, 255 }, // 0x00004FE8
	 { -3172, 200, -305, 0, 9822, 0, 15, 43, 111, 255 }, // 0x00004FF8
	 { -3172, 20, -305, 0, 9822, 993, 12, 82, 86, 255 }, // 0x00005008
	 { -1212, 220, -1301, 0, 5037, 0, 88, 12, 80, 255 }, // 0x00005018
	 { -1212, 20, -1301, 0, 5037, 993, 79, 50, 74, 255 }, // 0x00005028
	 { -872, 92, -1581, 0, 3909, 0, 66, 22, 97, 255 }, // 0x00005038
	 { -855, 20, -1582, 0, 3885, 444, 35, 14, 113, 255 }, // 0x00005048
	 { 1516, 400, -380, 0, -2361, 0, 160, 25, 67, 255 }, // 0x00005058
	 { 1192, 244, -1227, 0, -476, 0, 171, 7, 84, 255 }, // 0x00005068
	 { 1186, 20, -1217, 0, -463, 993, 170, 28, 78, 255 }, // 0x00005078
	 { 1516, 20, -380, 0, -2361, 993, 141, 18, 25, 255 }, // 0x00005088
	 { 1563, 200, 18, 0, -3277, 0, 172, 84, 11, 255 }, // 0x00005098
	 { 1604, 20, 504, 0, -4348, 993, 152, 47, 220, 255 }, // 0x000050A8
	 { 1621, 400, 516, 0, -4383, 0, 171, 19, 174, 255 }, // 0x000050B8
	 { 1621, 400, 516, 0, 3629, 2, 171, 19, 174, 255 }, // 0x000050C8
	 { 1604, 20, 504, 0, 3588, 995, 152, 47, 220, 255 }, // 0x000050D8
	 { 898, 20, 1321, 0, 5757, 995, 206, 102, 218, 255 }, // 0x000050E8
	 { 913, 398, 1318, 0, 5794, 1, 149, 4, 204, 255 }, // 0x000050F8
	 { 351, 92, -1656, 0, 1490, 0, 220, 8, 114, 255 }, // 0x00005108
	 { 347, 20, -1656, 0, 1511, 443, 236, 30, 114, 255 }, // 0x00005118
	 { 721, 20, 1989, 0, 7186, 994, 177, 84, 224, 255 }, // 0x00005128
	 { 563, 369, 2689, 0, 8659, 0, 163, 25, 185, 255 }, // 0x00005138
	 { 545, 209, 2657, 0, 8617, 514, 167, 11, 177, 255 }, // 0x00005148
	 { 545, 60, 2657, 0, 8614, 993, 212, 95, 199, 255 }, // 0x00005158
};

Vtx_t _spot08_room_0_vertices_00005168[8] = 
{
	 { 500, 20, -2425, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005168
	 { 2731, 20, 1438, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005178
	 { 500, 400, -2425, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005188
	 { 2731, 400, 1438, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005198
	 { -3549, 20, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x000051A8
	 { -1319, 20, 3776, 0, 0, 0, 0, 0, 0, 0 }, // 0x000051B8
	 { -3549, 400, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x000051C8
	 { -1319, 400, 3776, 0, 0, 0, 0, 0, 0, 0 }, // 0x000051D8
};

Gfx _spot08_room_0_dlist_000051E8[] =
{
	gsDPPipeSync(), // 0x000051E8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000051F0
	gsSPVertex(_spot08_room_0_vertices_00005168, 8, 0), // 0x000051F8
	gsSPCullDisplayList(0, 7), // 0x00005200
	gsDPPipeSync(), // 0x00005208
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005210
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005218
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005220
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_000081A0), // 0x00005228
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 7, 0), // 0x00005230
	gsDPLoadSync(), // 0x00005238
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005240
	gsDPPipeSync(), // 0x00005248
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 8, 0, 0, 0, 2, 5, 0, 0, 7, 0), // 0x00005250
	gsDPSetTileSize(0, 0, 0, 508, 124), // 0x00005258
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004CC0), // 0x00005260
	gsDPTileSync(), // 0x00005268
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005270
	gsDPLoadSync(), // 0x00005278
	gsDPLoadTLUTCmd(7, 15), // 0x00005280
	gsDPPipeSync(), // 0x00005288
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005290
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005298
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000052A0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000052A8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000052B0
	gsSPVertex(_spot08_room_0_vertices_00004D88, 32, 0), // 0x000052B8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000052C0
	gsSP2Triangles(5, 2, 1, 0, 6, 4, 3, 0), // 0x000052C8
	gsSP2Triangles(0, 7, 1, 0, 0, 8, 7, 0), // 0x000052D0
	gsSP2Triangles(9, 6, 3, 0, 9, 10, 6, 0), // 0x000052D8
	gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0), // 0x000052E0
	gsSP2Triangles(15, 12, 11, 0, 14, 13, 16, 0), // 0x000052E8
	gsSP2Triangles(14, 16, 17, 0, 18, 15, 11, 0), // 0x000052F0
	gsSP2Triangles(17, 16, 19, 0, 17, 20, 21, 0), // 0x000052F8
	gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0), // 0x00005300
	gsSP2Triangles(22, 24, 26, 0, 27, 28, 26, 0), // 0x00005308
	gsSP2Triangles(27, 26, 24, 0, 29, 22, 26, 0), // 0x00005310
	gsSP2Triangles(30, 29, 26, 0, 30, 31, 29, 0), // 0x00005318
	gsSPVertex(_spot08_room_0_vertices_00004F88, 30, 0), // 0x00005320
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00005328
	gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0), // 0x00005330
	gsSP2Triangles(5, 7, 8, 0, 6, 5, 9, 0), // 0x00005338
	gsSP2Triangles(9, 5, 10, 0, 11, 9, 10, 0), // 0x00005340
	gsSP2Triangles(10, 12, 11, 0, 13, 14, 15, 0), // 0x00005348
	gsSP2Triangles(15, 16, 13, 0, 13, 16, 17, 0), // 0x00005350
	gsSP2Triangles(16, 18, 17, 0, 18, 19, 17, 0), // 0x00005358
	gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0), // 0x00005360
	gsSP2Triangles(15, 14, 24, 0, 15, 24, 25, 0), // 0x00005368
	gsSP2Triangles(24, 11, 12, 0, 25, 24, 12, 0), // 0x00005370
	gsSP2Triangles(22, 26, 23, 0, 26, 27, 23, 0), // 0x00005378
	gsSP2Triangles(26, 28, 27, 0, 26, 29, 28, 0), // 0x00005380
	gsSPEndDisplayList(), // 0x00005388
};

Vtx_t _spot08_room_0_vertices_00005390[32] = 
{
	 { 879, 906, 1527, 0, 519, 3236, 163, 48, 198, 255 }, // 0x00005390
	 { 933, 906, 1313, 0, 514, 3010, 210, 108, 232, 255 }, // 0x000053A0
	 { 913, 398, 1318, 0, -4, 2882, 149, 4, 204, 255 }, // 0x000053B0
	 { 563, 369, 2689, 0, 0, 4326, 163, 25, 185, 255 }, // 0x000053C0
	 { 1017, 3042, 1295, 0, 2726, 3558, 149, 22, 208, 255 }, // 0x000053D0
	 { 943, 1158, 1311, 0, 781, 3076, 209, 149, 231, 255 }, // 0x000053E0
	 { 887, 1158, 1527, 0, 786, 3304, 195, 210, 164, 255 }, // 0x000053F0
	 { 887, 1158, 1527, 0, 786, 3304, 195, 210, 164, 255 }, // 0x00005400
	 { 1621, 400, 516, 0, -5, 1788, 171, 19, 174, 255 }, // 0x00005410
	 { 1060, 906, 1169, 0, 514, 2813, 143, 33, 236, 255 }, // 0x00005420
	 { 1066, 1158, 1169, 0, 781, 2882, 151, 224, 210, 255 }, // 0x00005430
	 { 1066, 1158, 1169, 0, 781, 2882, 151, 224, 210, 255 }, // 0x00005440
	 { 1060, 906, 1169, 0, 514, 2813, 143, 33, 236, 255 }, // 0x00005450
	 { -1133, 212, 1171, 0, -33, 4200, 205, 86, 66, 255 }, // 0x00005460
	 { -541, 212, 1427, 0, -42, 5300, 16, 93, 73, 255 }, // 0x00005470
	 { -663, 324, 1043, 0, 950, 5034, 11, 119, 9, 255 }, // 0x00005480
	 { -138, 137, 1088, 0, -49, 6208, 87, 72, 218, 255 }, // 0x00005490
	 { -138, 137, 1088, 0, 0, 0, 87, 72, 218, 255 }, // 0x000054A0
	 { -1103, 324, 713, 0, 408, 1775, 7, 117, 230, 255 }, // 0x000054B0
	 { -663, 324, 1043, 0, 651, 851, 11, 119, 9, 255 }, // 0x000054C0
	 { -1542, 220, 383, 0, -21, 2685, 190, 95, 227, 255 }, // 0x000054D0
	 { -1103, 324, 713, 0, 641, 3531, 7, 117, 230, 255 }, // 0x000054E0
	 { -2201, 1045, 3713, 0, 394, 7499, 229, 35, 145, 255 }, // 0x000054F0
	 { -313, 1864, 3390, 0, 1448, 5886, 211, 46, 155, 255 }, // 0x00005500
	 { -459, 1248, 3214, 0, 838, 5775, 239, 36, 143, 255 }, // 0x00005510
	 { 99, 601, 3046, 0, 313, 4952, 210, 40, 153, 255 }, // 0x00005520
	 { 907, 2769, 2816, 0, 2551, 4893, 164, 63, 212, 255 }, // 0x00005530
	 { 1821, 2900, 556, 0, 2421, 2636, 216, 6, 144, 255 }, // 0x00005540
	 { 2021, 5000, 636, 0, 5660, 3753, 171, 37, 180, 255 }, // 0x00005550
	 { 1516, 400, -380, 0, 0, -1181, 160, 25, 67, 255 }, // 0x00005560
	 { 1288, 3599, -1376, 0, 3827, 765, 153, 37, 47, 255 }, // 0x00005570
	 { 1192, 244, -1227, 0, 0, -238, 171, 7, 84, 255 }, // 0x00005580
};

Vtx_t _spot08_room_0_vertices_00005590[32] = 
{
	 { 1516, 400, -380, 0, 0, -1181, 160, 25, 67, 255 }, // 0x00005590
	 { 1758, 3051, -620, 0, 3062, 91, 208, 11, 109, 255 }, // 0x000055A0
	 { 1288, 3599, -1376, 0, 3827, 765, 153, 37, 47, 255 }, // 0x000055B0
	 { 1916, 5000, -700, 0, 5145, 351, 166, 31, 72, 255 }, // 0x000055C0
	 { -872, 92, -1581, 0, 0, 1955, 66, 22, 97, 255 }, // 0x000055D0
	 { -1047, 953, -1756, 0, 751, 2380, 8, 60, 103, 255 }, // 0x000055E0
	 { -1212, 220, -1301, 0, 0, 2519, 88, 12, 80, 255 }, // 0x000055F0
	 { -1848, 200, -485, 0, 0, 3566, 48, 60, 91, 255 }, // 0x00005600
	 { 3740, 3800, -501, 0, 4112, -1017, 246, 7, 119, 255 }, // 0x00005610
	 { 4121, 180, -196, 0, 0, -3863, 252, 77, 91, 255 }, // 0x00005620
	 { 4179, 180, 302, 0, 0, -856, 252, 76, 164, 255 }, // 0x00005630
	 { 1821, 2900, 556, 0, 2421, 2636, 216, 6, 144, 255 }, // 0x00005640
	 { 3598, 3800, 438, 0, 3576, 2062, 246, 4, 137, 255 }, // 0x00005650
	 { 1621, 400, 516, 0, -5, 1788, 171, 19, 174, 255 }, // 0x00005660
	 { 2021, 5000, 636, 0, 5660, 3753, 171, 37, 180, 255 }, // 0x00005670
	 { 4179, 180, 302, 0, 2519, 2699, 252, 76, 164, 255 }, // 0x00005680
	 { 1563, 200, 18, 0, -5, 1234, 172, 84, 11, 255 }, // 0x00005690
	 { 4121, 180, -196, 0, 2393, 2269, 252, 77, 91, 255 }, // 0x000056A0
	 { 1516, 400, -380, 0, -4, 776, 160, 25, 67, 255 }, // 0x000056B0
	 { 563, 369, 2689, 0, 0, 4326, 163, 25, 185, 255 }, // 0x000056C0
	 { -482, 369, 2911, 0, 0, 5421, 244, 64, 156, 255 }, // 0x000056D0
	 { 99, 601, 3046, 0, 313, 4952, 210, 40, 153, 255 }, // 0x000056E0
	 { -494, 428, 2972, 0, 86, 5452, 254, 59, 152, 255 }, // 0x000056F0
	 { -1864, 370, 2831, 0, 0, 6839, 63, 87, 205, 255 }, // 0x00005700
	 { -2001, 643, 3187, 0, 445, 6711, 25, 55, 153, 255 }, // 0x00005710
	 { 563, 369, 2689, 0, 0, 4326, 163, 25, 185, 255 }, // 0x00005720
	 { 1017, 3042, 1295, 0, 2726, 3558, 149, 22, 208, 255 }, // 0x00005730
	 { 907, 2769, 2816, 0, 2551, 4893, 164, 63, 212, 255 }, // 0x00005740
	 { -2038, 200, 633, 0, 0, 9103, 65, 65, 180, 255 }, // 0x00005750
	 { -2201, 394, 1026, 0, 212, 8750, 51, 107, 241, 255 }, // 0x00005760
	 { -2687, 623, 2203, 0, 848, 7693, 19, 116, 236, 255 }, // 0x00005770
	 { -2502, 784, 2779, 0, 684, 7321, 73, 56, 180, 255 }, // 0x00005780
};

Vtx_t _spot08_room_0_vertices_00005790[32] = 
{
	 { -2502, 784, 2779, 0, 684, 7321, 73, 56, 180, 255 }, // 0x00005790
	 { -2412, 862, 3058, 0, 578, 7005, 80, 53, 185, 255 }, // 0x000057A0
	 { -1864, 370, 2831, 0, 0, 6839, 63, 87, 205, 255 }, // 0x000057B0
	 { -2412, 862, 3058, 0, 578, 7005, 80, 53, 185, 255 }, // 0x000057C0
	 { -2001, 643, 3187, 0, 445, 6711, 25, 55, 153, 255 }, // 0x000057D0
	 { -2201, 782, -1789, 0, 1114, 3605, 16, 74, 92, 255 }, // 0x000057E0
	 { -3172, 200, -305, 0, 0, 4911, 15, 43, 111, 255 }, // 0x000057F0
	 { -1848, 200, -485, 0, 0, 3566, 48, 60, 91, 255 }, // 0x00005800
	 { -1047, 953, -1756, 0, 751, 2380, 8, 60, 103, 255 }, // 0x00005810
	 { 2095, 4633, -2633, 0, 6720, 1282, 160, 71, 252, 255 }, // 0x00005820
	 { 1288, 3599, -1376, 0, 3827, 765, 153, 37, 47, 255 }, // 0x00005830
	 { 1916, 5000, -700, 0, 5145, 351, 166, 31, 72, 255 }, // 0x00005840
	 { 634, 3151, -2876, 0, 4146, 1923, 169, 76, 30, 255 }, // 0x00005850
	 { 447, 2379, -1836, 0, 2440, 1353, 205, 39, 100, 255 }, // 0x00005860
	 { -928, 1779, -2780, 0, 2395, 2799, 9, 77, 91, 255 }, // 0x00005870
	 { 472, 2949, 3751, 0, 2558, 5749, 186, 70, 189, 255 }, // 0x00005880
	 { -313, 1864, 3390, 0, 1448, 5886, 211, 46, 155, 255 }, // 0x00005890
	 { -2201, 1045, 3713, 0, 394, 7499, 229, 35, 145, 255 }, // 0x000058A0
	 { 2408, 4235, 2419, 0, 4521, 4819, 165, 78, 2, 255 }, // 0x000058B0
	 { 907, 2769, 2816, 0, 2551, 4893, 164, 63, 212, 255 }, // 0x000058C0
	 { 1017, 3042, 1295, 0, 2726, 3558, 149, 22, 208, 255 }, // 0x000058D0
	 { 2021, 5000, 636, 0, 5660, 3753, 171, 37, 180, 255 }, // 0x000058E0
	 { 1192, 244, -1227, 0, 0, -238, 171, 7, 84, 255 }, // 0x000058F0
	 { 351, 92, -1656, 0, 0, 745, 220, 8, 114, 255 }, // 0x00005900
	 { -386, 335, -1624, 0, 286, 1616, 4, 172, 85, 255 }, // 0x00005910
	 { -686, 235, -1609, 0, 163, 1843, 50, 174, 71, 255 }, // 0x00005920
	 { -386, 335, -1624, 0, 286, 1616, 4, 172, 85, 255 }, // 0x00005930
	 { 13, 235, -1645, 0, 168, 1161, 227, 161, 67, 255 }, // 0x00005940
	 { -872, 92, -1581, 0, 0, 1955, 66, 22, 97, 255 }, // 0x00005950
	 { -2529, 238, 625, 0, 8, 1757, 1, 89, 177, 255 }, // 0x00005960
	 { -3172, 200, 506, 0, 8, 2872, 6, 67, 157, 255 }, // 0x00005970
	 { -2555, 390, 888, 0, 846, 1755, 238, 110, 214, 255 }, // 0x00005980
};

Vtx_t _spot08_room_0_vertices_00005990[15] = 
{
	 { -3172, 200, 506, 0, 1139, 9588, 6, 67, 157, 255 }, // 0x00005990
	 { -2687, 623, 2203, 0, 848, 7693, 19, 116, 236, 255 }, // 0x000059A0
	 { -2555, 390, 888, 0, 716, 9113, 238, 110, 214, 255 }, // 0x000059B0
	 { -2038, 200, 633, 0, 0, 9103, 65, 65, 180, 255 }, // 0x000059C0
	 { -2262, 399, 921, 0, 333, 8950, 36, 110, 226, 255 }, // 0x000059D0
	 { -2201, 394, 1026, 0, 212, 8750, 51, 107, 241, 255 }, // 0x000059E0
	 { -2038, 200, 633, 0, 8, 911, 65, 65, 180, 255 }, // 0x000059F0
	 { -2177, 249, 664, 0, 8, 1146, 17, 89, 178, 255 }, // 0x00005A00
	 { -2262, 399, 921, 0, 867, 1249, 36, 110, 226, 255 }, // 0x00005A10
	 { -2339, 253, 647, 0, 8, 1426, 4, 233, 139, 255 }, // 0x00005A20
	 { -2397, 438, 907, 0, 924, 1485, 4, 109, 208, 255 }, // 0x00005A30
	 { -2397, 438, 907, 0, 525, 9031, 4, 109, 208, 255 }, // 0x00005A40
	 { -2262, 399, 921, 0, 333, 8950, 36, 110, 226, 255 }, // 0x00005A50
	 { -2529, 238, 625, 0, 8, 1757, 1, 89, 177, 255 }, // 0x00005A60
	 { -2555, 390, 888, 0, 846, 1755, 238, 110, 214, 255 }, // 0x00005A70
};

Vtx_t _spot08_room_0_vertices_00005A80[8] = 
{
	 { 736, 92, -4253, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A80
	 { 4712, 92, 486, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A90
	 { 736, 5000, -4253, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005AA0
	 { 4712, 5000, 486, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005AB0
	 { -4910, 92, 484, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005AC0
	 { -934, 92, 5224, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005AD0
	 { -4910, 5000, 484, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005AE0
	 { -934, 5000, 5224, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005AF0
};

Gfx _spot08_room_0_dlist_00005B00[] =
{
	gsDPPipeSync(), // 0x00005B00
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005B08
	gsSPVertex(_spot08_room_0_vertices_00005A80, 8, 0), // 0x00005B10
	gsSPCullDisplayList(0, 7), // 0x00005B18
	gsDPPipeSync(), // 0x00005B20
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005B28
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005B30
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005B38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot08_scene_tex_0000A9A0), // 0x00005B40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005B48
	gsDPLoadSync(), // 0x00005B50
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005B58
	gsDPPipeSync(), // 0x00005B60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005B68
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005B70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00004D38), // 0x00005B78
	gsDPTileSync(), // 0x00005B80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005B88
	gsDPLoadSync(), // 0x00005B90
	gsDPLoadTLUTCmd(7, 15), // 0x00005B98
	gsDPPipeSync(), // 0x00005BA0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005BA8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005BB0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00005BB8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00005BC0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005BC8
	gsSPVertex(_spot08_room_0_vertices_00005390, 32, 0), // 0x00005BD0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00005BD8
	gsSP2Triangles(4, 5, 6, 0, 3, 7, 0, 0), // 0x00005BE0
	gsSP2Triangles(3, 4, 7, 0, 8, 9, 10, 0), // 0x00005BE8
	gsSP2Triangles(4, 8, 11, 0, 2, 1, 12, 0), // 0x00005BF0
	gsSP2Triangles(2, 12, 8, 0, 5, 4, 10, 0), // 0x00005BF8
	gsSP2Triangles(13, 14, 15, 0, 14, 16, 15, 0), // 0x00005C00
	gsSP2Triangles(17, 18, 19, 0, 17, 20, 18, 0), // 0x00005C08
	gsSP2Triangles(20, 13, 21, 0, 13, 15, 21, 0), // 0x00005C10
	gsSP2Triangles(22, 23, 24, 0, 24, 23, 25, 0), // 0x00005C18
	gsSP2Triangles(23, 26, 25, 0, 4, 27, 8, 0), // 0x00005C20
	gsSP2Triangles(4, 28, 27, 0, 29, 30, 31, 0), // 0x00005C28
	gsSPVertex(_spot08_room_0_vertices_00005590, 32, 0), // 0x00005C30
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00005C38
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00005C40
	gsSP2Triangles(3, 1, 8, 0, 1, 9, 8, 0), // 0x00005C48
	gsSP2Triangles(1, 0, 9, 0, 10, 11, 12, 0), // 0x00005C50
	gsSP2Triangles(10, 13, 11, 0, 11, 14, 12, 0), // 0x00005C58
	gsSP2Triangles(15, 16, 13, 0, 15, 17, 16, 0), // 0x00005C60
	gsSP2Triangles(17, 18, 16, 0, 19, 20, 21, 0), // 0x00005C68
	gsSP2Triangles(20, 22, 21, 0, 22, 23, 24, 0), // 0x00005C70
	gsSP2Triangles(22, 20, 23, 0, 25, 21, 26, 0), // 0x00005C78
	gsSP2Triangles(21, 27, 26, 0, 28, 29, 23, 0), // 0x00005C80
	gsSP2Triangles(29, 30, 23, 0, 30, 31, 23, 0), // 0x00005C88
	gsSPVertex(_spot08_room_0_vertices_00005790, 32, 0), // 0x00005C90
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00005C98
	gsSP2Triangles(5, 6, 7, 0, 8, 5, 7, 0), // 0x00005CA0
	gsSP2Triangles(9, 10, 11, 0, 12, 10, 9, 0), // 0x00005CA8
	gsSP2Triangles(12, 13, 10, 0, 14, 13, 12, 0), // 0x00005CB0
	gsSP2Triangles(14, 8, 13, 0, 15, 16, 17, 0), // 0x00005CB8
	gsSP2Triangles(18, 19, 15, 0, 19, 16, 15, 0), // 0x00005CC0
	gsSP2Triangles(20, 19, 18, 0, 21, 20, 18, 0), // 0x00005CC8
	gsSP2Triangles(14, 5, 8, 0, 22, 13, 23, 0), // 0x00005CD0
	gsSP2Triangles(22, 10, 13, 0, 24, 8, 25, 0), // 0x00005CD8
	gsSP2Triangles(8, 26, 13, 0, 27, 13, 24, 0), // 0x00005CE0
	gsSP2Triangles(27, 23, 13, 0, 8, 28, 25, 0), // 0x00005CE8
	gsSP1Triangle(29, 30, 31, 0), // 0x00005CF0
	gsSPVertex(_spot08_room_0_vertices_00005990, 15, 0), // 0x00005CF8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00005D00
	gsSP2Triangles(6, 7, 8, 0, 4, 1, 5, 0), // 0x00005D08
	gsSP2Triangles(7, 9, 10, 0, 7, 10, 8, 0), // 0x00005D10
	gsSP2Triangles(11, 1, 12, 0, 13, 14, 10, 0), // 0x00005D18
	gsSP2Triangles(9, 13, 10, 0, 2, 1, 11, 0), // 0x00005D20
	gsSPEndDisplayList(), // 0x00005D28
};

Vtx_t _spot08_room_0_vertices_00005D30[32] = 
{
	 { -1542, 20, 383, 0, 3944, -42, 29, 94, 189, 255 }, // 0x00005D30
	 { -138, 20, 1088, 0, 1760, -3046, 117, 0, 233, 255 }, // 0x00005D40
	 { -138, -120, 1088, 0, 1640, -2952, 43, 78, 177, 255 }, // 0x00005D50
	 { -1004, -1029, 252, 0, 1905, 307, 86, 71, 213, 255 }, // 0x00005D60
	 { -138, -120, 1088, 0, 1661, -2929, 43, 78, 177, 255 }, // 0x00005D70
	 { -260, -1116, 815, 0, 957, -1609, 8, 73, 161, 255 }, // 0x00005D80
	 { -1349, -240, 252, 0, 3020, -159, 91, 71, 224, 255 }, // 0x00005D90
	 { -1349, -240, 252, 0, 3021, -158, 91, 71, 224, 255 }, // 0x00005DA0
	 { -1529, -160, 252, 0, 3389, 25, 86, 75, 220, 255 }, // 0x00005DB0
	 { -1542, 20, 383, 0, 3960, -25, 29, 94, 189, 255 }, // 0x00005DC0
	 { 1140, -980, -285, 0, -3037, -788, 171, 81, 22, 255 }, // 0x00005DD0
	 { 1186, 20, -1217, 0, -4084, 1073, 170, 28, 78, 255 }, // 0x00005DE0
	 { 385, -1040, -1013, 0, -2236, 1476, 231, 88, 77, 255 }, // 0x00005DF0
	 { 882, -103, 763, 0, -615, -3285, 221, 76, 170, 255 }, // 0x00005E00
	 { 690, -1184, 503, 0, -1308, -1942, 204, 83, 187, 255 }, // 0x00005E10
	 { -1004, -1029, 252, 0, 1905, 307, 86, 71, 213, 255 }, // 0x00005E20
	 { -954, -1040, -757, 0, 768, 2322, 73, 84, 44, 255 }, // 0x00005E30
	 { -1350, -240, -349, 0, 1998, 1893, 96, 71, 3, 255 }, // 0x00005E40
	 { -1256, 0, -1025, 0, 1113, 3179, 77, 85, 35, 255 }, // 0x00005E50
	 { -1621, 0, -516, 0, 2791, 2717, 42, 109, 23, 255 }, // 0x00005E60
	 { -1529, -160, -348, 0, 2365, 2073, 72, 93, 21, 255 }, // 0x00005E70
	 { -797, -287, -1530, 0, -344, 3745, 49, 62, 90, 255 }, // 0x00005E80
	 { -954, -1040, -757, 0, 768, 2322, 73, 84, 44, 255 }, // 0x00005E90
	 { 1140, -980, -285, 0, -3037, -788, 171, 81, 22, 255 }, // 0x00005EA0
	 { 690, -1184, 503, 0, -1308, -1942, 204, 83, 187, 255 }, // 0x00005EB0
	 { 1604, 20, 504, 0, -2359, -3494, 152, 47, 220, 255 }, // 0x00005EC0
	 { 1516, 20, -380, 0, -3904, -980, 141, 18, 25, 255 }, // 0x00005ED0
	 { 1186, 20, -1217, 0, -4084, 1073, 170, 28, 78, 255 }, // 0x00005EE0
	 { 347, 20, -1656, 0, -2816, 2831, 236, 30, 114, 255 }, // 0x00005EF0
	 { 1186, 20, -1217, 0, -4084, 1073, 170, 28, 78, 255 }, // 0x00005F00
	 { -1529, -160, 252, 0, 3389, 25, 86, 75, 220, 255 }, // 0x00005F10
	 { -1574, 0, 232, 0, 3871, 317, 115, 236, 230, 255 }, // 0x00005F20
};

Vtx_t _spot08_room_0_vertices_00005F30[23] = 
{
	 { -1529, -160, 252, 0, 3389, 25, 86, 75, 220, 255 }, // 0x00005F30
	 { -1349, -240, 252, 0, 3020, -159, 91, 71, 224, 255 }, // 0x00005F40
	 { -1350, -240, -349, 0, 1998, 1893, 96, 71, 3, 255 }, // 0x00005F50
	 { -1529, -160, -348, 0, 2365, 2073, 72, 93, 21, 255 }, // 0x00005F60
	 { -1004, -1029, 252, 0, 1905, 307, 86, 71, 213, 255 }, // 0x00005F70
	 { 1140, -980, -285, 0, -3037, -788, 171, 81, 22, 255 }, // 0x00005F80
	 { 385, -1040, -1013, 0, -2236, 1476, 231, 88, 77, 255 }, // 0x00005F90
	 { 0, -1451, 0, 0, -410, -205, 1, 119, 0, 255 }, // 0x00005FA0
	 { 690, -1184, 503, 0, -1308, -1942, 204, 83, 187, 255 }, // 0x00005FB0
	 { 0, -1451, 0, 0, -410, -205, 1, 119, 0, 255 }, // 0x00005FC0
	 { -954, -1040, -757, 0, 768, 2322, 73, 84, 44, 255 }, // 0x00005FD0
	 { -797, -287, -1530, 0, -344, 3745, 49, 62, 90, 255 }, // 0x00005FE0
	 { -954, -1040, -757, 0, 768, 2322, 73, 84, 44, 255 }, // 0x00005FF0
	 { -1004, -1029, 252, 0, 1905, 307, 86, 71, 213, 255 }, // 0x00006000
	 { 347, 20, -1656, 0, -2816, 2831, 236, 30, 114, 255 }, // 0x00006010
	 { -260, -1116, 815, 0, 957, -1609, 8, 73, 161, 255 }, // 0x00006020
	 { 690, -1184, 503, 0, -1308, -1942, 204, 83, 187, 255 }, // 0x00006030
	 { 882, -103, 763, 0, -615, -3285, 221, 76, 170, 255 }, // 0x00006040
	 { 1604, 20, 504, 0, -2359, -3494, 152, 47, 220, 255 }, // 0x00006050
	 { -138, -120, 1088, 0, 1661, -2929, 43, 78, 177, 255 }, // 0x00006060
	 { -1212, 20, -1301, 0, 536, 4110, 79, 50, 74, 255 }, // 0x00006070
	 { -855, 20, -1582, 0, -484, 4321, 35, 14, 113, 255 }, // 0x00006080
	 { -1256, 0, -1025, 0, 1113, 3179, 77, 85, 35, 255 }, // 0x00006090
};

Vtx_t _spot08_room_0_vertices_000060A0[8] = 
{
	 { 1239, -1451, -1952, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060A0
	 { 1717, -1451, 761, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060B0
	 { 1239, 20, -1952, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060C0
	 { 1717, 20, 761, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060D0
	 { -1862, -1451, -1405, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060E0
	 { -1384, -1451, 1308, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060F0
	 { -1862, 20, -1405, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006100
	 { -1384, 20, 1308, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006110
};

Gfx _spot08_room_0_dlist_00006120[] =
{
	gsDPPipeSync(), // 0x00006120
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006128
	gsSPVertex(_spot08_room_0_vertices_000060A0, 8, 0), // 0x00006130
	gsSPCullDisplayList(0, 7), // 0x00006138
	gsDPPipeSync(), // 0x00006140
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006148
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006150
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006158
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_000061A0), // 0x00006160
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 15, 0, 5, 15), // 0x00006168
	gsDPLoadSync(), // 0x00006170
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006178
	gsDPPipeSync(), // 0x00006180
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 15, 0, 5, 15), // 0x00006188
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006190
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_000069A0), // 0x00006198
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 0, 0, 5, 2), // 0x000061A0
	gsDPLoadSync(), // 0x000061A8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000061B0
	gsDPPipeSync(), // 0x000061B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 0, 0, 5, 2), // 0x000061C0
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x000061C8
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000061D0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000061D8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000061E0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000061E8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000061F0
	gsSPDisplayList(0x08000000), // 0x000061F8
	gsSPVertex(_spot08_room_0_vertices_00005D30, 32, 0), // 0x00006200
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00006208
	gsSP2Triangles(3, 6, 4, 0, 7, 0, 2, 0), // 0x00006210
	gsSP2Triangles(6, 8, 9, 0, 10, 11, 12, 0), // 0x00006218
	gsSP2Triangles(13, 14, 5, 0, 15, 16, 17, 0), // 0x00006220
	gsSP2Triangles(16, 18, 17, 0, 18, 19, 17, 0), // 0x00006228
	gsSP2Triangles(19, 20, 17, 0, 21, 18, 22, 0), // 0x00006230
	gsSP2Triangles(23, 24, 25, 0, 26, 23, 25, 0), // 0x00006238
	gsSP2Triangles(27, 23, 26, 0, 28, 12, 29, 0), // 0x00006240
	gsSP2Triangles(9, 30, 31, 0, 30, 20, 19, 0), // 0x00006248
	gsSP1Triangle(30, 19, 31, 0), // 0x00006250
	gsSPVertex(_spot08_room_0_vertices_00005F30, 23, 0), // 0x00006258
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006260
	gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0), // 0x00006268
	gsSP2Triangles(8, 5, 7, 0, 9, 6, 10, 0), // 0x00006270
	gsSP2Triangles(11, 12, 6, 0, 12, 13, 7, 0), // 0x00006278
	gsSP2Triangles(11, 6, 14, 0, 7, 15, 16, 0), // 0x00006280
	gsSP2Triangles(13, 15, 7, 0, 16, 17, 18, 0), // 0x00006288
	gsSP2Triangles(15, 19, 17, 0, 20, 11, 21, 0), // 0x00006290
	gsSP2Triangles(11, 20, 22, 0, 21, 11, 14, 0), // 0x00006298
	gsSPEndDisplayList(), // 0x000062A0
};

Vtx_t _spot08_room_0_vertices_000062A8[32] = 
{
	 { -2390, 20, 1640, 0, 3910, -709, 250, 39, 143, 255 }, // 0x000062A8
	 { -2360, 0, 597, 0, 2782, 1397, 1, 119, 247, 255 }, // 0x000062B8
	 { -2535, 20, 577, 0, 3122, 1617, 55, 89, 198, 255 }, // 0x000062C8
	 { -2184, 20, 617, 0, 2442, 1177, 211, 92, 195, 255 }, // 0x000062D8
	 { 721, 20, 1989, 0, 969, -5631, 177, 84, 224, 255 }, // 0x000062E8
	 { 898, 20, 1321, 0, -77, -4444, 206, 102, 218, 255 }, // 0x000062F8
	 { 322, 0, 1953, 0, 1867, -5109, 253, 119, 247, 255 }, // 0x00006308
	 { 206, 20, 2077, 0, 2255, -5242, 251, 116, 226, 255 }, // 0x00006318
	 { 44, 0, 1778, 0, 2139, -4503, 244, 118, 10, 255 }, // 0x00006328
	 { 194, 0, 1423, 0, 1469, -3933, 254, 119, 241, 255 }, // 0x00006338
	 { 1604, 20, 504, 0, -2359, -3494, 152, 47, 220, 255 }, // 0x00006348
	 { 882, -103, 763, 0, -615, -3285, 221, 76, 170, 255 }, // 0x00006358
	 { -138, -120, 1088, 0, 1661, -2929, 43, 78, 177, 255 }, // 0x00006368
	 { -138, 20, 1088, 0, 2047, -2868, 117, 0, 233, 255 }, // 0x00006378
	 { -514, 20, 1513, 0, 3011, -3391, 29, 85, 79, 255 }, // 0x00006388
	 { 44, 0, 1778, 0, 2139, -4503, 244, 118, 10, 255 }, // 0x00006398
	 { -454, -415, 2506, 0, 3905, -5487, 215, 112, 255, 255 }, // 0x000063A8
	 { 22, 0, 2019, 0, 2324, -4927, 208, 109, 247, 255 }, // 0x000063B8
	 { 37, 20, 2601, 0, 2996, -6184, 196, 85, 198, 255 }, // 0x000063C8
	 { 60, 20, 2080, 0, 2417, -5140, 224, 113, 237, 255 }, // 0x000063D8
	 { -413, -24, 1820, 0, 3119, -4123, 249, 113, 38, 255 }, // 0x000063E8
	 { -1186, 20, 1217, 0, 4084, -2097, 192, 88, 48, 255 }, // 0x000063F8
	 { -1333, -12, 1364, 0, 4536, -2247, 214, 104, 41, 255 }, // 0x00006408
	 { -513, 20, 2854, 0, 4383, -6140, 237, 52, 150, 255 }, // 0x00006418
	 { -1535, -420, 2287, 0, 5894, -3931, 40, 102, 209, 255 }, // 0x00006428
	 { -1451, -420, 1758, 0, 5182, -2933, 24, 111, 38, 255 }, // 0x00006438
	 { -1508, -40, 1049, 0, 4572, -1424, 247, 118, 18, 255 }, // 0x00006448
	 { -1542, 20, 383, 0, 3960, -25, 29, 94, 189, 255 }, // 0x00006458
	 { -1849, 0, 232, 0, 4433, 598, 247, 119, 11, 255 }, // 0x00006468
	 { -1574, 0, 232, 0, 3871, 317, 115, 236, 230, 255 }, // 0x00006478
	 { -1790, -4, 508, 0, 4596, -26, 2, 119, 4, 255 }, // 0x00006488
	 { -2038, 20, 633, 0, 5233, -28, 39, 108, 221, 255 }, // 0x00006498
};

Vtx_t _spot08_room_0_vertices_000064A8[29] = 
{
	 { -3160, 0, 82, 0, 6966, 2249, 4, 119, 254, 255 }, // 0x000064A8
	 { -1849, 0, 232, 0, 4433, 598, 247, 119, 11, 255 }, // 0x000064B8
	 { -1849, 0, -328, 0, 3450, 2565, 246, 118, 238, 255 }, // 0x000064C8
	 { -1848, 20, -485, 0, 3288, 2886, 44, 83, 75, 255 }, // 0x000064D8
	 { -3172, 20, -305, 0, 6594, 3054, 12, 82, 86, 255 }, // 0x000064E8
	 { -1621, 0, -516, 0, 2791, 2717, 42, 109, 23, 255 }, // 0x000064F8
	 { -1609, 0, -328, 0, 2960, 2319, 0, 120, 0, 255 }, // 0x00006508
	 { -1256, 0, -1025, 0, 1113, 3179, 77, 85, 35, 255 }, // 0x00006518
	 { -1212, 20, -1301, 0, 536, 4110, 79, 50, 74, 255 }, // 0x00006528
	 { -1535, -420, 2287, 0, 5894, -3931, 40, 102, 209, 255 }, // 0x00006538
	 { -1824, 20, 2751, 0, 6963, -4584, 75, 63, 188, 255 }, // 0x00006548
	 { -513, 20, 2854, 0, 4383, -6140, 237, 52, 150, 255 }, // 0x00006558
	 { -1451, -420, 1758, 0, 5182, -2933, 24, 111, 38, 255 }, // 0x00006568
	 { -1871, 20, 1372, 0, 5647, -1712, 97, 69, 255, 255 }, // 0x00006578
	 { -1508, -40, 1049, 0, 4572, -1424, 247, 118, 18, 255 }, // 0x00006588
	 { -2038, 20, 633, 0, 5233, -28, 39, 108, 221, 255 }, // 0x00006598
	 { -1542, 20, 383, 0, 3960, -25, 29, 94, 189, 255 }, // 0x000065A8
	 { -1790, -4, 508, 0, 4596, -26, 2, 119, 4, 255 }, // 0x000065B8
	 { -2184, 20, 617, 0, 5514, 155, 211, 92, 195, 255 }, // 0x000065C8
	 { -3172, 20, 506, 0, 7424, 1394, 10, 82, 170, 255 }, // 0x000065D8
	 { -2535, 20, 577, 0, 6193, 595, 55, 89, 198, 255 }, // 0x000065E8
	 { -2360, 0, 597, 0, 5853, 375, 1, 119, 247, 255 }, // 0x000065F8
	 { 44, 0, 1778, 0, 2139, -4503, 244, 118, 10, 255 }, // 0x00006608
	 { 22, 0, 2019, 0, 2324, -4927, 208, 109, 247, 255 }, // 0x00006618
	 { 152, 0, 1978, 0, 2217, -4996, 253, 119, 243, 255 }, // 0x00006628
	 { 60, 20, 2080, 0, 2417, -5140, 224, 113, 237, 255 }, // 0x00006638
	 { 206, 20, 2077, 0, 2255, -5242, 251, 116, 226, 255 }, // 0x00006648
	 { 898, 20, 1321, 0, -77, -4444, 206, 102, 218, 255 }, // 0x00006658
	 { 322, 0, 1953, 0, 1867, -5109, 253, 119, 247, 255 }, // 0x00006668
};

Vtx_t _spot08_room_0_vertices_00006678[8] = 
{
	 { 60, -420, -2171, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006678
	 { 2120, -420, 1399, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006688
	 { 60, 20, -2171, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006698
	 { 2120, 20, 1399, 0, 0, 0, 0, 0, 0, 0 }, // 0x000066A8
	 { -3523, -420, -102, 0, 0, 0, 0, 0, 0, 0 }, // 0x000066B8
	 { -1462, -420, 3467, 0, 0, 0, 0, 0, 0, 0 }, // 0x000066C8
	 { -3523, 20, -102, 0, 0, 0, 0, 0, 0, 0 }, // 0x000066D8
	 { -1462, 20, 3467, 0, 0, 0, 0, 0, 0, 0 }, // 0x000066E8
};

Gfx _spot08_room_0_dlist_000066F8[] =
{
	gsDPPipeSync(), // 0x000066F8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006700
	gsSPVertex(_spot08_room_0_vertices_00006678, 8, 0), // 0x00006708
	gsSPCullDisplayList(0, 7), // 0x00006710
	gsDPPipeSync(), // 0x00006718
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006720
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006728
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006730
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00010EA0), // 0x00006738
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 15, 0, 5, 15), // 0x00006740
	gsDPLoadSync(), // 0x00006748
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006750
	gsDPPipeSync(), // 0x00006758
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 15, 0, 5, 15), // 0x00006760
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006768
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_000069A0), // 0x00006770
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006778
	gsDPLoadSync(), // 0x00006780
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006788
	gsDPPipeSync(), // 0x00006790
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 0, 0, 5, 0), // 0x00006798
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x000067A0
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000067A8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000067B0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000067B8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000067C0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000067C8
	gsSPDisplayList(0x08000000), // 0x000067D0
	gsSPVertex(_spot08_room_0_vertices_000062A8, 32, 0), // 0x000067D8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000067E0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000067E8
	gsSP2Triangles(8, 5, 9, 0, 10, 11, 5, 0), // 0x000067F0
	gsSP2Triangles(11, 12, 5, 0, 12, 9, 5, 0), // 0x000067F8
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0), // 0x00006800
	gsSP2Triangles(16, 18, 17, 0, 18, 19, 17, 0), // 0x00006808
	gsSP2Triangles(14, 20, 8, 0, 14, 8, 9, 0), // 0x00006810
	gsSP2Triangles(21, 22, 20, 0, 21, 20, 14, 0), // 0x00006818
	gsSP2Triangles(20, 16, 15, 0, 22, 16, 20, 0), // 0x00006820
	gsSP2Triangles(16, 23, 18, 0, 24, 23, 16, 0), // 0x00006828
	gsSP2Triangles(24, 16, 25, 0, 22, 25, 16, 0), // 0x00006830
	gsSP2Triangles(22, 26, 25, 0, 26, 22, 21, 0), // 0x00006838
	gsSP2Triangles(27, 26, 21, 0, 12, 14, 9, 0), // 0x00006840
	gsSP2Triangles(28, 27, 29, 0, 27, 28, 30, 0), // 0x00006848
	gsSP1Triangle(28, 31, 30, 0), // 0x00006850
	gsSPVertex(_spot08_room_0_vertices_000064A8, 29, 0), // 0x00006858
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x00006860
	gsSP2Triangles(4, 0, 3, 0, 3, 2, 5, 0), // 0x00006868
	gsSP2Triangles(5, 2, 6, 0, 5, 7, 8, 0), // 0x00006870
	gsSP2Triangles(5, 8, 3, 0, 9, 10, 11, 0), // 0x00006878
	gsSP2Triangles(12, 10, 9, 0, 12, 13, 10, 0), // 0x00006880
	gsSP2Triangles(13, 12, 14, 0, 15, 13, 14, 0), // 0x00006888
	gsSP2Triangles(16, 17, 14, 0, 17, 15, 14, 0), // 0x00006890
	gsSP2Triangles(18, 15, 1, 0, 0, 19, 20, 0), // 0x00006898
	gsSP2Triangles(1, 21, 18, 0, 1, 0, 21, 0), // 0x000068A0
	gsSP2Triangles(0, 20, 21, 0, 22, 23, 24, 0), // 0x000068A8
	gsSP2Triangles(23, 25, 26, 0, 23, 26, 24, 0), // 0x000068B0
	gsSP2Triangles(27, 22, 28, 0, 22, 24, 28, 0), // 0x000068B8
	gsSP1Triangle(24, 26, 28, 0), // 0x000068C0
	gsSPEndDisplayList(), // 0x000068C8
};

Vtx_t _spot08_room_0_vertices_000068D0[7] = 
{
	 { -3600, 1396, 3826, 0, 63, -20, 102, 0, 193, 255 }, // 0x000068D0
	 { -3600, 365, 3826, 0, 63, 502, 102, 0, 193, 255 }, // 0x000068E0
	 { -5172, -722, 1295, 0, 3024, 1024, 115, 0, 223, 255 }, // 0x000068F0
	 { -5172, 800, 1295, 0, 3024, 204, 115, 0, 223, 255 }, // 0x00006900
	 { -5172, -722, -1905, 0, 5984, 1024, 105, 0, 58, 255 }, // 0x00006910
	 { -5172, 903, -1905, 0, 5984, 136, 105, 0, 58, 255 }, // 0x00006920
	 { -3674, 416, -2842, 0, 8086, 573, 63, 0, 101, 255 }, // 0x00006930
};

Vtx_t _spot08_room_0_vertices_00006940[8] = 
{
	 { -5172, -722, -2842, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006940
	 { -3600, -722, -2842, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006950
	 { -5172, 1396, -2842, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006960
	 { -3600, 1396, -2842, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006970
	 { -5172, -722, 3826, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006980
	 { -3600, -722, 3826, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006990
	 { -5172, 1396, 3826, 0, 0, 0, 0, 0, 0, 0 }, // 0x000069A0
	 { -3600, 1396, 3826, 0, 0, 0, 0, 0, 0, 0 }, // 0x000069B0
};

Gfx _spot08_room_0_dlist_000069C0[] =
{
	gsDPPipeSync(), // 0x000069C0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000069C8
	gsSPVertex(_spot08_room_0_vertices_00006940, 8, 0), // 0x000069D0
	gsSPCullDisplayList(0, 7), // 0x000069D8
	gsDPPipeSync(), // 0x000069E0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000069E8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000069F0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000069F8
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot08_scene_tex_000071A0), // 0x00006A00
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 8, 0), // 0x00006A08
	gsDPLoadSync(), // 0x00006A10
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00006A18
	gsDPPipeSync(), // 0x00006A20
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_4b, 16, 0, 0, 0, 2, 5, 0, 0, 8, 0), // 0x00006A28
	gsDPSetTileSize(0, 0, 0, 1020, 124), // 0x00006A30
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006A38
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00006A40
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00006A48
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00006A50
	gsDPSetPrimColor(0, 0, 225, 235, 225, 255), // 0x00006A58
	gsSPVertex(_spot08_room_0_vertices_000068D0, 7, 0), // 0x00006A60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006A68
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00006A70
	gsSP1Triangle(4, 6, 5, 0), // 0x00006A78
	gsSPEndDisplayList(), // 0x00006A80
};

Vtx_t _spot08_room_0_vertices_00006A88[20] = 
{
	 { 37, 20, 2601, 0, 2996, -6184, 196, 85, 198, 255 }, // 0x00006A88
	 { 91, 40, 2138, 0, 2472, -5264, 227, 115, 244, 255 }, // 0x00006A98
	 { 60, 20, 2080, 0, 2417, -5140, 224, 113, 237, 255 }, // 0x00006AA8
	 { 87, 60, 2611, 0, 2906, -6254, 21, 91, 182, 255 }, // 0x00006AB8
	 { 240, 40, 2135, 0, 2231, -5400, 0, 118, 240, 255 }, // 0x00006AC8
	 { 206, 20, 2077, 0, 2255, -5242, 251, 116, 226, 255 }, // 0x00006AD8
	 { 545, 60, 2657, 0, 2015, -6818, 212, 95, 199, 255 }, // 0x00006AE8
	 { 721, 20, 1989, 0, 969, -5631, 177, 84, 224, 255 }, // 0x00006AF8
	 { 545, 60, 2657, 0, 2014, -6819, 212, 95, 199, 255 }, // 0x00006B08
	 { 344, 60, 2610, 0, 2340, -6509, 189, 97, 23, 255 }, // 0x00006B18
	 { 339, 60, 2662, 0, 2429, -6666, 231, 96, 189, 255 }, // 0x00006B28
	 { 292, 60, 2605, 0, 2506, -6402, 21, 106, 52, 255 }, // 0x00006B38
	 { 240, 40, 2135, 0, 2233, -5399, 0, 118, 240, 255 }, // 0x00006B48
	 { 292, 60, 2605, 0, 2504, -6403, 21, 106, 52, 255 }, // 0x00006B58
	 { 344, 60, 2610, 0, 2347, -6503, 189, 97, 23, 255 }, // 0x00006B68
	 { 87, 60, 2611, 0, 2907, -6253, 21, 91, 182, 255 }, // 0x00006B78
	 { 287, 60, 2657, 0, 2587, -6566, 67, 96, 231, 255 }, // 0x00006B88
	 { 292, 60, 2605, 0, 2495, -6408, 21, 106, 52, 255 }, // 0x00006B98
	 { 292, 60, 2605, 0, 2493, -6408, 21, 106, 52, 255 }, // 0x00006BA8
	 { 344, 60, 2610, 0, 2344, -6505, 189, 97, 23, 255 }, // 0x00006BB8
};

Vtx_t _spot08_room_0_vertices_00006BC8[8] = 
{
	 { 37, 20, 1989, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006BC8
	 { 721, 20, 1989, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006BD8
	 { 37, 60, 1989, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006BE8
	 { 721, 60, 1989, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006BF8
	 { 37, 20, 2662, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006C08
	 { 721, 20, 2662, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006C18
	 { 37, 60, 2662, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006C28
	 { 721, 60, 2662, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006C38
};

Gfx _spot08_room_0_dlist_00006C48[] =
{
	gsDPPipeSync(), // 0x00006C48
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006C50
	gsSPVertex(_spot08_room_0_vertices_00006BC8, 8, 0), // 0x00006C58
	gsSPCullDisplayList(0, 7), // 0x00006C60
	gsDPPipeSync(), // 0x00006C68
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006C70
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006C78
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006C80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_000069A0), // 0x00006C88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006C90
	gsDPLoadSync(), // 0x00006C98
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006CA0
	gsDPPipeSync(), // 0x00006CA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006CB0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006CB8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006CC0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006CC8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00006CD0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00006CD8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006CE0
	gsSPVertex(_spot08_room_0_vertices_00006A88, 20, 0), // 0x00006CE8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00006CF0
	gsSP2Triangles(4, 5, 2, 0, 4, 2, 1, 0), // 0x00006CF8
	gsSP2Triangles(6, 7, 4, 0, 7, 5, 4, 0), // 0x00006D00
	gsSP2Triangles(8, 9, 10, 0, 4, 1, 11, 0), // 0x00006D08
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0), // 0x00006D10
	gsSP2Triangles(3, 18, 1, 0, 6, 4, 19, 0), // 0x00006D18
	gsSPEndDisplayList(), // 0x00006D20
};

Vtx_t _spot08_room_0_vertices_00006D28[32] = 
{
	 { 575, -80, 2758, 0, 2665, 3310, 243, 163, 181, 255 }, // 0x00006D28
	 { 575, -280, 2758, 0, 3576, 3310, 220, 107, 218, 255 }, // 0x00006D38
	 { 343, -280, 2757, 0, 3576, 2462, 45, 58, 162, 255 }, // 0x00006D48
	 { 343, -80, 2757, 0, 2665, 2462, 35, 167, 184, 255 }, // 0x00006D58
	 { 287, -280, 2657, 0, 3576, 2048, 101, 57, 226, 255 }, // 0x00006D68
	 { 287, -80, 2657, 0, 2665, 2048, 100, 235, 194, 255 }, // 0x00006D78
	 { 292, -80, 2605, 0, 2665, 1755, 89, 232, 76, 255 }, // 0x00006D88
	 { 292, -280, 2605, 0, 3576, 1755, 71, 90, 34, 255 }, // 0x00006D98
	 { 480, -280, 2507, 0, 3576, 963, 48, 53, 96, 255 }, // 0x00006DA8
	 { 480, -80, 2507, 0, 2665, 963, 47, 152, 35, 255 }, // 0x00006DB8
	 { 1333, 96, 2113, 0, 1864, 6949, 168, 67, 212, 255 }, // 0x00006DC8
	 { 1333, 296, 2113, 0, 952, 6949, 156, 228, 197, 255 }, // 0x00006DD8
	 { 1133, 296, 1913, 0, 952, -2265, 88, 234, 78, 255 }, // 0x00006DE8
	 { 1133, 96, 1913, 0, 1864, -2265, 1, 96, 72, 255 }, // 0x00006DF8
	 { 1133, 96, 1913, 0, -2407, 535, 1, 96, 72, 255 }, // 0x00006E08
	 { 480, -280, 2507, 0, 1100, 436, 48, 53, 96, 255 }, // 0x00006E18
	 { 575, -280, 2758, 0, 1405, -497, 220, 107, 218, 255 }, // 0x00006E28
	 { 1133, 96, 1913, 0, -2407, 535, 1, 96, 72, 255 }, // 0x00006E38
	 { 1333, 96, 2113, 0, -2484, -497, 168, 67, 212, 255 }, // 0x00006E48
	 { 344, 60, 2610, 0, 1432, 2633, 189, 97, 23, 255 }, // 0x00006E58
	 { 344, -80, 2610, 0, 2665, 2633, 218, 160, 60, 255 }, // 0x00006E68
	 { 339, -80, 2662, 0, 2665, 2341, 196, 160, 218, 255 }, // 0x00006E78
	 { 339, 60, 2662, 0, 1432, 2341, 231, 96, 189, 255 }, // 0x00006E88
	 { 287, 60, 2657, 0, 1432, 2048, 67, 96, 231, 255 }, // 0x00006E98
	 { 292, 60, 2605, 0, 1432, 1755, 21, 106, 52, 255 }, // 0x00006EA8
	 { 344, -80, 2610, 0, 2665, 1463, 218, 160, 60, 255 }, // 0x00006EB8
	 { 344, 60, 2610, 0, 1432, 1463, 189, 97, 23, 255 }, // 0x00006EC8
	 { 292, -280, 2605, 0, 1859, 661, 71, 90, 34, 255 }, // 0x00006ED8
	 { 287, -280, 2657, 0, 2065, 453, 101, 57, 226, 255 }, // 0x00006EE8
	 { 343, -280, 2757, 0, 2063, 39, 45, 58, 162, 255 }, // 0x00006EF8
	 { 343, -280, 2757, 0, 2063, 39, 45, 58, 162, 255 }, // 0x00006F08
	 { 575, -280, 2758, 0, 1405, -497, 220, 107, 218, 255 }, // 0x00006F18
};

Vtx_t _spot08_room_0_vertices_00006F28[72] = 
{
	 { 292, -280, 2605, 0, 1859, 661, 71, 90, 34, 255 }, // 0x00006F28
	 { 575, -280, 2758, 0, 1405, -497, 220, 107, 218, 255 }, // 0x00006F38
	 { 480, -280, 2507, 0, 1100, 436, 48, 53, 96, 255 }, // 0x00006F48
	 { 344, -80, 2610, 0, 1574, 2084, 218, 160, 60, 255 }, // 0x00006F58
	 { 480, -80, 2507, 0, 1024, 2048, 47, 152, 35, 255 }, // 0x00006F68
	 { 575, -80, 2758, 0, 1357, 1125, 243, 163, 181, 255 }, // 0x00006F78
	 { 339, -80, 2662, 0, 1786, 1882, 196, 160, 218, 255 }, // 0x00006F88
	 { 339, -80, 2662, 0, 1786, 1882, 196, 160, 218, 255 }, // 0x00006F98
	 { 343, -80, 2757, 0, 1998, 1680, 35, 167, 184, 255 }, // 0x00006FA8
	 { 287, -80, 2657, 0, 2665, 2048, 100, 235, 194, 255 }, // 0x00006FB8
	 { 287, -280, 2657, 0, 3576, 2048, 101, 57, 226, 255 }, // 0x00006FC8
	 { 292, -280, 2605, 0, 3576, 1755, 71, 90, 34, 255 }, // 0x00006FD8
	 { 292, -80, 2605, 0, 2665, 1755, 89, 232, 76, 255 }, // 0x00006FE8
	 { 292, -80, 2605, 0, 1776, 2296, 89, 232, 76, 255 }, // 0x00006FF8
	 { 480, -80, 2507, 0, 1024, 2048, 47, 152, 35, 255 }, // 0x00007008
	 { 339, -80, 2662, 0, 1786, 1882, 196, 160, 218, 255 }, // 0x00007018
	 { 343, -80, 2757, 0, 1998, 1680, 35, 167, 184, 255 }, // 0x00007028
	 { 287, -80, 2657, 0, 1988, 2094, 100, 235, 194, 255 }, // 0x00007038
	 { 1333, 906, 1913, 0, -1800, 1097, 148, 49, 246, 255 }, // 0x00007048
	 { 1333, 96, 1913, 0, 1864, 1097, 192, 32, 96, 255 }, // 0x00007058
	 { 1333, 296, 2113, 0, 952, -227, 156, 228, 197, 255 }, // 0x00007068
	 { 1333, 1158, 2113, 0, -2978, -227, 187, 187, 187, 255 }, // 0x00007078
	 { 1333, 96, 2113, 0, 1864, -227, 168, 67, 212, 255 }, // 0x00007088
	 { 1133, 906, 1913, 0, -1800, -2265, 103, 55, 26, 255 }, // 0x00007098
	 { 1133, 296, 1913, 0, 952, -2265, 88, 234, 78, 255 }, // 0x000070A8
	 { 1333, 96, 1913, 0, 1864, -2996, 192, 32, 96, 255 }, // 0x000070B8
	 { 1333, 906, 1913, 0, -1800, -2996, 148, 49, 246, 255 }, // 0x000070C8
	 { 1133, 96, 1913, 0, 1864, -2265, 1, 96, 72, 255 }, // 0x000070D8
	 { 1333, 96, 2113, 0, -2484, -497, 168, 67, 212, 255 }, // 0x000070E8
	 { 1333, 96, 1913, 0, -2961, 58, 192, 32, 96, 255 }, // 0x000070F8
	 { 1133, 96, 1913, 0, -2407, 535, 1, 96, 72, 255 }, // 0x00007108
	 { 1133, 241, 2113, 0, -1954, 1507, 54, 179, 182, 255 }, // 0x00007118
	 { 575, -80, 2758, 0, 1357, 1125, 243, 163, 181, 255 }, // 0x00007128
	 { 480, -80, 2507, 0, 1024, 2048, 47, 152, 35, 255 }, // 0x00007138
	 { 1133, 296, 1913, 0, -2484, 2048, 88, 234, 78, 255 }, // 0x00007148
	 { 1133, 241, 2113, 0, -1954, 1507, 54, 179, 182, 255 }, // 0x00007158
	 { 575, -80, 2758, 0, 1357, 1125, 243, 163, 181, 255 }, // 0x00007168
	 { 1333, 296, 2113, 0, -2531, 1016, 156, 228, 197, 255 }, // 0x00007178
	 { 1333, 1158, 2113, 0, -2978, -802, 187, 187, 187, 255 }, // 0x00007188
	 { 1333, 296, 2113, 0, 952, -802, 156, 228, 197, 255 }, // 0x00007198
	 { 1133, 241, 2113, 0, 1200, -1533, 54, 179, 182, 255 }, // 0x000071A8
	 { 1133, 1158, 2113, 0, -2978, -1533, 108, 220, 220, 255 }, // 0x000071B8
	 { 1133, 296, 1913, 0, 952, -2265, 88, 234, 78, 255 }, // 0x000071C8
	 { 1133, 906, 1913, 0, -1800, -2265, 103, 55, 26, 255 }, // 0x000071D8
	 { 1533, 1158, 1713, 0, -2978, 964, 157, 189, 252, 255 }, // 0x000071E8
	 { 1066, 1158, 1169, 0, -2978, 3585, 151, 224, 210, 255 }, // 0x000071F8
	 { 1060, 906, 1169, 0, -1800, 3600, 143, 33, 236, 255 }, // 0x00007208
	 { 1533, 906, 1713, 0, -1800, 964, 185, 96, 254, 255 }, // 0x00007218
	 { 1333, 906, 1913, 0, -1800, -70, 148, 49, 246, 255 }, // 0x00007228
	 { 1333, 1158, 1913, 0, -2978, -70, 198, 154, 232, 255 }, // 0x00007238
	 { 1333, 1158, 2113, 0, -2978, -227, 187, 187, 187, 255 }, // 0x00007248
	 { 1333, 1158, 1913, 0, -2978, 1097, 198, 154, 232, 255 }, // 0x00007258
	 { 1333, 906, 1913, 0, -1800, 1097, 148, 49, 246, 255 }, // 0x00007268
	 { 1133, 1158, 1913, 0, -2978, -2265, 50, 148, 242, 255 }, // 0x00007278
	 { 887, 1158, 1527, 0, -2978, -3940, 195, 210, 164, 255 }, // 0x00007288
	 { 879, 906, 1527, 0, -1800, -3957, 163, 48, 198, 255 }, // 0x00007298
	 { 1133, 1158, 1913, 0, 618, 1633, 50, 148, 242, 255 }, // 0x000072A8
	 { 887, 1158, 1527, 0, -1057, 1595, 195, 210, 164, 255 }, // 0x000072B8
	 { 943, 1158, 1311, 0, -1599, 988, 209, 149, 231, 255 }, // 0x000072C8
	 { 1333, 1158, 1913, 0, 1024, 1024, 198, 154, 232, 255 }, // 0x000072D8
	 { 1533, 1158, 1713, 0, 821, 10, 157, 189, 252, 255 }, // 0x000072E8
	 { 1066, 1158, 1169, 0, -1781, 326, 151, 224, 210, 255 }, // 0x000072F8
	 { 1333, 1158, 2113, 0, 1633, 1430, 187, 187, 187, 255 }, // 0x00007308
	 { 1133, 1158, 2113, 0, 1227, 2038, 108, 220, 220, 255 }, // 0x00007318
	 { 1133, 1158, 1913, 0, 618, 1633, 50, 148, 242, 255 }, // 0x00007328
	 { 1333, 1158, 1913, 0, 1024, 1024, 198, 154, 232, 255 }, // 0x00007338
	 { 933, 906, 1313, 0, -1613, 1024, 210, 108, 232, 255 }, // 0x00007348
	 { 879, 906, 1527, 0, -1074, 1621, 163, 48, 198, 255 }, // 0x00007358
	 { 1133, 906, 1913, 0, 618, 1633, 103, 55, 26, 255 }, // 0x00007368
	 { 1333, 906, 1913, 0, 1024, 1024, 148, 49, 246, 255 }, // 0x00007378
	 { 1533, 906, 1713, 0, 821, 10, 185, 96, 254, 255 }, // 0x00007388
	 { 1060, 906, 1169, 0, -1793, 344, 143, 33, 236, 255 }, // 0x00007398
};

Vtx_t _spot08_room_0_vertices_000073A8[5] = 
{
	 { 1173, 906, 1917, 0, 0, -27136, 0, 0, 120, 255 }, // 0x000073A8
	 { 1293, 96, 1917, 0, 2048, 512, 0, 0, 120, 255 }, // 0x000073B8
	 { 1293, 906, 1917, 0, 2048, -27136, 0, 0, 120, 255 }, // 0x000073C8
	 { 1173, 96, 1917, 0, 0, 512, 0, 0, 120, 255 }, // 0x000073D8
	 { 1233, 96, 1917, 0, 1024, 512, 0, 0, 120, 255 }, // 0x000073E8
};

Vtx_t _spot08_room_0_vertices_000073F8[8] = 
{
	 { 427, -728, 2189, 0, 0, 0, 0, 0, 0, 0 }, // 0x000073F8
	 { 1074, -728, 2562, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007408
	 { 1140, 971, 954, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007418
	 { 1787, 971, 1327, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007428
	 { 86, -155, 2781, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007438
	 { 732, -155, 3154, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007448
	 { 799, 1544, 1546, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007458
	 { 1445, 1544, 1919, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007468
};

Gfx _spot08_room_0_dlist_00007478[] =
{
	gsDPPipeSync(), // 0x00007478
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007480
	gsSPVertex(_spot08_room_0_vertices_000073F8, 8, 0), // 0x00007488
	gsSPCullDisplayList(0, 7), // 0x00007490
	gsDPPipeSync(), // 0x00007498
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000074A0
	gsDPPipeSync(), // 0x000074A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000074B0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000074B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_000069A0), // 0x000074C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000074C8
	gsDPLoadSync(), // 0x000074D0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000074D8
	gsDPPipeSync(), // 0x000074E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000074E8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000074F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000074F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007500
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00007508
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00007510
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007518
	gsSPVertex(_spot08_room_0_vertices_00006D28, 32, 0), // 0x00007520
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007528
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00007530
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00007538
	gsSP2Triangles(10, 1, 0, 0, 10, 0, 11, 0), // 0x00007540
	gsSP2Triangles(12, 9, 8, 0, 12, 8, 13, 0), // 0x00007548
	gsSP2Triangles(14, 15, 16, 0, 17, 16, 18, 0), // 0x00007550
	gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0), // 0x00007558
	gsSP2Triangles(22, 21, 5, 0, 22, 5, 23, 0), // 0x00007560
	gsSP2Triangles(23, 5, 6, 0, 23, 6, 24, 0), // 0x00007568
	gsSP2Triangles(24, 6, 25, 0, 24, 25, 26, 0), // 0x00007570
	gsSP2Triangles(27, 28, 29, 0, 27, 30, 31, 0), // 0x00007578
	gsSPVertex(_spot08_room_0_vertices_00006F28, 32, 0), // 0x00007580
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00007588
	gsSP2Triangles(5, 6, 3, 0, 7, 5, 8, 0), // 0x00007590
	gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0), // 0x00007598
	gsSP2Triangles(13, 14, 3, 0, 15, 16, 17, 0), // 0x000075A0
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x000075A8
	gsSP2Triangles(19, 22, 20, 0, 23, 24, 25, 0), // 0x000075B0
	gsSP2Triangles(23, 25, 26, 0, 24, 27, 25, 0), // 0x000075B8
	gsSP1Triangle(28, 29, 30, 0), // 0x000075C0
	gsSPVertex(_spot08_room_0_vertices_00007118, 32, 0), // 0x000075C8
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0), // 0x000075D0
	gsSP2Triangles(5, 0, 6, 0, 7, 8, 9, 0), // 0x000075D8
	gsSP2Triangles(7, 9, 10, 0, 10, 9, 11, 0), // 0x000075E0
	gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0), // 0x000075E8
	gsSP2Triangles(16, 13, 15, 0, 17, 18, 13, 0), // 0x000075F0
	gsSP2Triangles(17, 13, 16, 0, 19, 20, 21, 0), // 0x000075F8
	gsSP2Triangles(12, 22, 10, 0, 23, 22, 12, 0), // 0x00007600
	gsSP2Triangles(24, 23, 12, 0, 25, 26, 27, 0), // 0x00007608
	gsSP2Triangles(27, 28, 25, 0, 27, 29, 28, 0), // 0x00007610
	gsSP1Triangle(30, 29, 27, 0), // 0x00007618
	gsSPVertex(_spot08_room_0_vertices_00007308, 10, 0), // 0x00007620
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007628
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007630
	gsSP2Triangles(4, 7, 8, 0, 9, 4, 8, 0), // 0x00007638
	gsDPPipeSync(), // 0x00007640
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00005DA0), // 0x00007648
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 1, 5, 0), // 0x00007650
	gsDPLoadSync(), // 0x00007658
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00007660
	gsDPPipeSync(), // 0x00007668
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 4, 0, 1, 5, 0), // 0x00007670
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00007678
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007680
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00007688
	gsSPVertex(_spot08_room_0_vertices_000073A8, 5, 0), // 0x00007690
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x00007698
	gsSP1Triangle(0, 4, 1, 0), // 0x000076A0
	gsSPEndDisplayList(), // 0x000076A8
};

static u8 unaccounted76B0[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0x68, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0xB8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x15, 0xF0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x19, 0x78, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x21, 0x20, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x25, 0x38, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x30, 0x48, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x48, 0xB0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x51, 0xE8, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5B, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x61, 0x20, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x66, 0xF8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x69, 0xC0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x6C, 0x48, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x74, 0x78, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

Vtx_t _spot08_room_0_vertices_00007740[8] = 
{
	 { 545, 209, 2657, 0, 535, 507, 153, 226, 203, 255 }, // 0x00007740
	 { 545, 60, 2657, 0, 535, 507, 187, 96, 237, 255 }, // 0x00007750
	 { 350, 74, 3442, 0, -183, 329, 251, 186, 159, 255 }, // 0x00007760
	 { 347, 293, 2685, 0, 509, 326, 243, 194, 155, 255 }, // 0x00007770
	 { 87, 209, 2611, 0, 577, 88, 47, 239, 148, 255 }, // 0x00007780
	 { 87, 60, 2611, 0, 577, 88, 41, 103, 212, 255 }, // 0x00007790
	 { 100, 61, 2652, 0, 540, 100, 0, 119, 254, 255 }, // 0x000077A0
	 { 535, 61, 2696, 0, 499, 498, 0, 119, 254, 255 }, // 0x000077B0
};

Vtx_t _spot08_room_0_vertices_000077C0[8] = 
{
	 { 92, 60, 2577, 0, 0, 0, 0, 0, 0, 0 }, // 0x000077C0
	 { 545, 60, 2657, 0, 0, 0, 0, 0, 0, 0 }, // 0x000077D0
	 { 92, 293, 2577, 0, 0, 0, 0, 0, 0, 0 }, // 0x000077E0
	 { 545, 293, 2657, 0, 0, 0, 0, 0, 0, 0 }, // 0x000077F0
	 { -48, 60, 3372, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007800
	 { 405, 60, 3452, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007810
	 { -48, 293, 3372, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007820
	 { 405, 293, 3452, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007830
};

Gfx _spot08_room_0_dlist_00007840[] =
{
	gsDPPipeSync(), // 0x00007840
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007848
	gsSPVertex(_spot08_room_0_vertices_000077C0, 8, 0), // 0x00007850
	gsSPCullDisplayList(0, 7), // 0x00007858
	gsDPPipeSync(), // 0x00007860
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007868
	gsDPPipeSync(), // 0x00007870
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007878
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007880
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot08_scene_tex_000109A0), // 0x00007888
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 4, 0), // 0x00007890
	gsDPLoadSync(), // 0x00007898
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x000078A0
	gsDPPipeSync(), // 0x000078A8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 4, 0, 2, 4, 0), // 0x000078B0
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x000078B8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000078C0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x000078C8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000078D0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000078D8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000078E0
	gsSPVertex(_spot08_room_0_vertices_00007740, 8, 0), // 0x000078E8
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x000078F0
	gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0), // 0x000078F8
	gsSP1Triangle(6, 2, 7, 0), // 0x00007900
	gsSPEndDisplayList(), // 0x00007908
};

Vtx_t _spot08_room_0_vertices_00007910[6] = 
{
	 { -872, 92, -1581, 0, 589, 612, 66, 22, 97, 255 }, // 0x00007910
	 { 351, 92, -1656, 0, 531, -507, 220, 8, 114, 255 }, // 0x00007920
	 { -364, 188, -2684, 0, -402, 146, 14, 142, 33, 255 }, // 0x00007930
	 { -686, 235, -1609, 0, 581, 440, 50, 174, 71, 255 }, // 0x00007940
	 { -386, 335, -1624, 0, 566, 166, 4, 172, 85, 255 }, // 0x00007950
	 { 13, 235, -1645, 0, 547, -199, 227, 161, 67, 255 }, // 0x00007960
};

Vtx_t _spot08_room_0_vertices_00007970[8] = 
{
	 { -872, 92, -2684, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007970
	 { 351, 92, -2684, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007980
	 { -872, 335, -2684, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007990
	 { 351, 335, -2684, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079A0
	 { -872, 92, -1581, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079B0
	 { 351, 92, -1581, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079C0
	 { -872, 335, -1581, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079D0
	 { 351, 335, -1581, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079E0
};

Gfx _spot08_room_0_dlist_000079F0[] =
{
	gsDPPipeSync(), // 0x000079F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000079F8
	gsSPVertex(_spot08_room_0_vertices_00007970, 8, 0), // 0x00007A00
	gsSPCullDisplayList(0, 7), // 0x00007A08
	gsDPPipeSync(), // 0x00007A10
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007A18
	gsDPPipeSync(), // 0x00007A20
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007A28
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007A30
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot08_scene_tex_000109A0), // 0x00007A38
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 4, 0), // 0x00007A40
	gsDPLoadSync(), // 0x00007A48
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00007A50
	gsDPPipeSync(), // 0x00007A58
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 4, 0, 2, 4, 0), // 0x00007A60
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00007A68
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007A70
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00007A78
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00007A80
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00007A88
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007A90
	gsSPVertex(_spot08_room_0_vertices_00007910, 6, 0), // 0x00007A98
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00007AA0
	gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0), // 0x00007AA8
	gsSP1Triangle(1, 5, 2, 0), // 0x00007AB0
	gsSPEndDisplayList(), // 0x00007AB8
};

Vtx_t _spot08_room_0_vertices_00007AC0[6] = 
{
	 { -2387, 42, 1469, 0, -384, 355, 252, 180, 163, 255 }, // 0x00007AC0
	 { -2184, 20, 617, 0, 512, 512, 211, 92, 195, 255 }, // 0x00007AD0
	 { -2535, 20, 577, 0, 512, 59, 55, 89, 198, 255 }, // 0x00007AE0
	 { -2535, 169, 577, 0, 501, 59, 81, 240, 170, 255 }, // 0x00007AF0
	 { -2339, 253, 647, 0, 429, 320, 4, 233, 139, 255 }, // 0x00007B00
	 { -2184, 169, 617, 0, 501, 512, 184, 239, 162, 255 }, // 0x00007B10
};

Vtx_t _spot08_room_0_vertices_00007B20[8] = 
{
	 { -2532, 20, 555, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007B20
	 { -2184, 20, 617, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007B30
	 { -2532, 253, 555, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007B40
	 { -2184, 253, 617, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007B50
	 { -2683, 20, 1417, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007B60
	 { -2336, 20, 1478, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007B70
	 { -2683, 253, 1417, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007B80
	 { -2336, 253, 1478, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007B90
};

Gfx _spot08_room_0_dlist_00007BA0[] =
{
	gsDPPipeSync(), // 0x00007BA0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007BA8
	gsSPVertex(_spot08_room_0_vertices_00007B20, 8, 0), // 0x00007BB0
	gsSPCullDisplayList(0, 7), // 0x00007BB8
	gsDPPipeSync(), // 0x00007BC0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007BC8
	gsDPPipeSync(), // 0x00007BD0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007BD8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007BE0
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot08_scene_tex_000109A0), // 0x00007BE8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 4, 0), // 0x00007BF0
	gsDPLoadSync(), // 0x00007BF8
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00007C00
	gsDPPipeSync(), // 0x00007C08
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 4, 0, 2, 4, 0), // 0x00007C10
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00007C18
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007C20
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00007C28
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00007C30
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00007C38
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007C40
	gsSPVertex(_spot08_room_0_vertices_00007AC0, 6, 0), // 0x00007C48
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x00007C50
	gsSP2Triangles(3, 4, 0, 0, 4, 5, 0, 0), // 0x00007C58
	gsSP1Triangle(5, 1, 0, 0), // 0x00007C60
	gsSPEndDisplayList(), // 0x00007C68
};

Vtx_t _spot08_room_0_vertices_00007C70[4] = 
{
	 { -3172, 40, 546, 0, 2048, 2048, 184, 96, 0, 255 }, // 0x00007C70
	 { -3172, 40, -345, 0, 0, 2048, 184, 96, 0, 255 }, // 0x00007C80
	 { -3332, -80, -345, 0, 0, 1506, 184, 96, 0, 255 }, // 0x00007C90
	 { -3332, -80, 546, 0, 2048, 1506, 184, 96, 0, 255 }, // 0x00007CA0
};

Vtx_t _spot08_room_0_vertices_00007CB0[8] = 
{
	 { -3332, -80, -345, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007CB0
	 { -3172, -80, -345, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007CC0
	 { -3332, 40, -345, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007CD0
	 { -3172, 40, -345, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007CE0
	 { -3332, -80, 546, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007CF0
	 { -3172, -80, 546, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007D00
	 { -3332, 40, 546, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007D10
	 { -3172, 40, 546, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007D20
};

Gfx _spot08_room_0_dlist_00007D30[] =
{
	gsDPPipeSync(), // 0x00007D30
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007D38
	gsSPVertex(_spot08_room_0_vertices_00007CB0, 8, 0), // 0x00007D40
	gsSPCullDisplayList(0, 7), // 0x00007D48
	gsDPPipeSync(), // 0x00007D50
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007D58
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007D60
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007D68
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot08_scene_tex_000101A0), // 0x00007D70
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 2, 6, 0), // 0x00007D78
	gsDPLoadSync(), // 0x00007D80
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00007D88
	gsDPPipeSync(), // 0x00007D90
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 2, 6, 0), // 0x00007D98
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00007DA0
	gsDPTileSync(), // 0x00007DA8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 1, 0, 0, 6, 15, 2, 6, 0), // 0x00007DB0
	gsDPSetTileSize(1, 0, 0, 252, 252), // 0x00007DB8
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, K5, SHADE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00007DC0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00007DC8
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x00007DD0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007DD8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007DE0
	gsSPDisplayList(0x09000000), // 0x00007DE8
	gsSPVertex(_spot08_room_0_vertices_00007C70, 4, 0), // 0x00007DF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007DF8
	gsSPEndDisplayList(), // 0x00007E00
};

Vtx_t _spot08_room_0_vertices_00007E08[9] = 
{
	 { -3172, 20, 688, 0, 1951, 5177, 0, 120, 0, 255 }, // 0x00007E08
	 { -2213, 20, 688, 0, 1387, 3848, 0, 120, 0, 255 }, // 0x00007E18
	 { -1813, 20, -523, 0, -527, 4005, 0, 120, 0, 255 }, // 0x00007E28
	 { -3172, 20, -523, 0, 273, 5890, 0, 120, 0, 255 }, // 0x00007E38
	 { -127, 20, 572, 0, 0, 1024, 0, 120, 0, 255 }, // 0x00007E48
	 { -2023, 20, 2864, 0, 4291, 2304, 0, 120, 0, 255 }, // 0x00007E58
	 { -976, 20, -1719, 0, -2677, 3548, 0, 120, 0, 255 }, // 0x00007E68
	 { 1769, 20, -1719, 0, -4291, -256, 0, 120, 0, 255 }, // 0x00007E78
	 { 1769, 20, 540, 0, -1161, -1585, 0, 120, 0, 255 }, // 0x00007E88
};

Vtx_t _spot08_room_0_vertices_00007E98[3] = 
{
	 { -3172, 20, 688, 0, 1951, 5177, 0, 120, 0, 255 }, // 0x00007E98
	 { -2023, 20, 2864, 0, 4291, 2304, 0, 120, 0, 255 }, // 0x00007EA8
	 { -2213, 20, 688, 0, 1387, 3848, 0, 120, 0, 255 }, // 0x00007EB8
};

Vtx_t _spot08_room_0_vertices_00007EC8[10] = 
{
	 { 1769, 20, 540, 0, -1161, -1585, 0, 120, 0, 255 }, // 0x00007EC8
	 { -127, 20, 572, 0, 0, 1024, 0, 120, 0, 255 }, // 0x00007ED8
	 { 1003, 20, 1326, 0, 379, -986, 0, 120, 0, 255 }, // 0x00007EE8
	 { 743, 20, 2029, 0, 1507, -1040, 0, 120, 0, 255 }, // 0x00007EF8
	 { 1003, 20, 1326, 0, 379, -986, 0, 120, 0, 255 }, // 0x00007F08
	 { 308, 20, 2161, 0, 1946, -513, 0, 120, 0, 255 }, // 0x00007F18
	 { 743, 20, 2029, 0, 1507, -1040, 0, 120, 0, 255 }, // 0x00007F28
	 { -2023, 20, 2864, 0, 4291, 2304, 0, 120, 0, 255 }, // 0x00007F38
	 { -545, 20, 2937, 0, 3523, 213, 0, 120, 0, 255 }, // 0x00007F48
	 { 26, 20, 2694, 0, 2850, -436, 0, 120, 0, 255 }, // 0x00007F58
};

Vtx_t _spot08_room_0_vertices_00007F68[8] = 
{
	 { -3172, 20, -1719, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F68
	 { 1769, 20, -1719, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F78
	 { -3172, 20, -1719, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F88
	 { 1769, 20, -1719, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F98
	 { -3172, 20, 2937, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FA8
	 { 1769, 20, 2937, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FB8
	 { -3172, 20, 2937, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FC8
	 { 1769, 20, 2937, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FD8
};

Gfx _spot08_room_0_dlist_00007FE8[] =
{
	gsDPPipeSync(), // 0x00007FE8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007FF0
	gsSPVertex(_spot08_room_0_vertices_00007F68, 8, 0), // 0x00007FF8
	gsSPCullDisplayList(0, 7), // 0x00008000
	gsDPPipeSync(), // 0x00008008
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008010
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008018
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008020
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot08_scene_tex_00010EA0), // 0x00008028
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 14, 0, 5, 15), // 0x00008030
	gsDPLoadSync(), // 0x00008038
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008040
	gsDPPipeSync(), // 0x00008048
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 14, 0, 5, 15), // 0x00008050
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008058
	gsDPTileSync(), // 0x00008060
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 1, 0, 0, 5, 15, 0, 5, 14), // 0x00008068
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00008070
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, COMBINED, 0, PRIMITIVE, 0), // 0x00008078
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00008080
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x00008088
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008090
	gsDPSetPrimColor(0, 0, 255, 255, 255, 127), // 0x00008098
	gsSPDisplayList(0x0A000000), // 0x000080A0
	gsSPVertex(_spot08_room_0_vertices_00007E08, 9, 0), // 0x000080A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000080B0
	gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0), // 0x000080B8
	gsSP2Triangles(4, 6, 2, 0, 4, 7, 6, 0), // 0x000080C0
	gsSP1Triangle(8, 7, 4, 0), // 0x000080C8
	gsDPPipeSync(), // 0x000080D0
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x000080D8
	gsSPVertex(_spot08_room_0_vertices_00007E98, 3, 0), // 0x000080E0
	gsSP1Triangle(0, 1, 2, 0), // 0x000080E8
	gsDPPipeSync(), // 0x000080F0
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000080F8
	gsSPVertex(_spot08_room_0_vertices_00007EC8, 10, 0), // 0x00008100
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0), // 0x00008108
	gsSP2Triangles(1, 5, 6, 0, 7, 8, 1, 0), // 0x00008110
	gsSP2Triangles(8, 9, 1, 0, 9, 5, 1, 0), // 0x00008118
	gsSPEndDisplayList(), // 0x00008120
};

static u8 unaccounted8128[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x78, 0x40, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x79, 0xF0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x7B, 0xA0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x7D, 0x30, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x7F, 0xE8, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


