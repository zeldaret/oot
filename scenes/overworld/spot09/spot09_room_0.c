#include <ultra64.h>
#include <z64.h>
#include "spot09_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "spot09_scene.h"



SCmdAltHeaders _spot09_room_0_set0000_cmd00 = { 0x18, 0, (u32)&_spot09_room_0_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _spot09_room_0_set0000_cmd01 = { 0x16, 0, { 0 }, 0x0A }; // 0x0008
SCmdRoomBehavior _spot09_room_0_set0000_cmd02 = { 0x08, 0x00, 0x00000004 }; // 0x0010
SCmdSkyboxDisables _spot09_room_0_set0000_cmd03 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0018
SCmdTimeSettings _spot09_room_0_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x0A }; // 0x0020
SCmdMesh _spot09_room_0_set0000_cmd05 = { 0x0A, 0, (u32)&_spot09_room_0_meshHeader_000002F0 }; // 0x0028
SCmdObjectList _spot09_room_0_set0000_cmd06 = { 0x0B, 0x0D, (u32)_spot09_room_0_objectList_00000060 }; // 0x0030
SCmdActorList _spot09_room_0_set0000_cmd07 = { 0x01, 0x27, (u32)_spot09_room_0_actorList_0000007C }; // 0x0038
SCmdEndMarker _spot09_room_0_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _spot09_room_0_alternateHeaders_00000048[] = 
{
	0,
	(u32)&_spot09_room_0_set0500_cmd00,
	0,
	(u32)&_spot09_room_0_set0890_cmd00,
	(u32)&_spot09_room_0_set0960_cmd00,
	(u32)&_spot09_room_0_set0A80_cmd00,
};

s16 _spot09_room_0_objectList_00000060[] = 
{
	OBJECT_SPOT09_OBJ,
	OBJECT_NIW,
	OBJECT_GE1,
	OBJECT_UMAJUMP,
	OBJECT_MAMENOKI,
	OBJECT_SYOKUDAI,
	OBJECT_KIBAKO2,
	OBJECT_GLA,
	OBJECT_KANBAN,
	OBJECT_GS,
	OBJECT_ST,
	OBJECT_BOMBIWA,
	OBJECT_COW,
};

ActorEntry _spot09_room_0_actorList_0000007C[39] = 
{
	{ ACTOR_EN_RIVER_SOUND, 138, -2528, -2396, 0, 0, 0, 0x0003 }, //0x0000007C 
	{ ACTOR_EN_RIVER_SOUND, 527, -3123, 3582, 0, 0, 0, 0x0000 }, //0x0000008C 
	{ ACTOR_EN_RIVER_SOUND, 1687, -138, -220, 0, 0, 0, 0x0001 }, //0x0000009C 
	{ ACTOR_BG_SPOT09_OBJ, -1105, 15, -747, 0, 3277, 0, 0x0003 }, //0x000000AC 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0002 }, //0x000000BC 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0001 }, //0x000000CC 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0000 }, //0x000000DC 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0004 }, //0x000000EC 
	{ ACTOR_EN_GS, -510, -2025, -2340, 0, 0, 0, 0x3811 }, //0x000000FC 
	{ ACTOR_EN_ITEM00, 35, -1630, -2780, 0, 0, 0, 0x0106 }, //0x0000010C 
	{ ACTOR_EN_ITEM00, -350, -555, 1480, 0, 0, 0, 0x0206 }, //0x0000011C 
	{ ACTOR_DOOR_ANA, 280, -555, 1470, 0, -32768, 6, 0x00F2 }, //0x0000012C 
	{ ACTOR_EN_A_OBJ, 2778, -264, 593, 0, -13289, 0, 0x010A }, //0x0000013C 
	{ ACTOR_EN_COW, -449, -2051, 28, 0, -32768, 0, 0x0000 }, //0x0000014C 
	{ ACTOR_OBJ_MURE, 1658, -179, -118, 0, 0, 0, 0x5322 }, //0x0000015C 
	{ ACTOR_EN_GE1, -308, -77, -122, 0, 16930, 0, 0x0000 }, //0x0000016C 
	{ ACTOR_EN_SW, 1707, 95, -227, 18386, -6372, 0, 0xB402 }, //0x0000017C 
	{ ACTOR_OBJ_MAKEKINSUTA, -515, -2051, 110, 0, 0, 0, 0x5401 }, //0x0000018C 
	{ ACTOR_EN_ISHI, 280, -555, 1470, 0, 0, 0, 0xFF01 }, //0x0000019C 
	{ ACTOR_EN_NIW, 733, 34, -36, 0, 0, 0, 0x0008 }, //0x000001AC 
	{ ACTOR_EN_GE2, -581, 31, -331, 0, -32768, 0, 0x0500 }, //0x000001BC 
	{ ACTOR_EN_GE2, -540, 27, 98, 0, 0, 0, 0x0500 }, //0x000001CC 
	{ ACTOR_OBJ_SYOKUDAI, -588, 29, 220, 0, 0, 0, 0x2400 }, //0x000001DC 
	{ ACTOR_EN_ISHI, 2738, -235, 297, 0, 0, 0, 0x0200 }, //0x000001EC 
	{ ACTOR_EN_ISHI, 2715, -235, 316, 0, 0, 0, 0x0200 }, //0x000001FC 
	{ ACTOR_EN_ISHI, 1559, -202, -63, 0, 0, 0, 0x0200 }, //0x0000020C 
	{ ACTOR_EN_ISHI, 1605, -202, 26, 0, 0, 0, 0x0200 }, //0x0000021C 
	{ ACTOR_EN_ISHI, 1686, -202, -33, 0, 0, 0, 0x0200 }, //0x0000022C 
	{ ACTOR_EN_ISHI, 2699, -226, 275, 0, 0, 0, 0x0210 }, //0x0000023C 
	{ ACTOR_EN_KANBAN, 359, 25, 254, 0, 16384, 0, 0x0342 }, //0x0000024C 
	{ ACTOR_EN_GE1, -503, -2051, 34, 0, 28035, 0, 0x0005 }, //0x0000025C 
	{ ACTOR_OBJ_BEAN, -515, -2051, 110, 0, 0, 0, 0x1F03 }, //0x0000026C 
	{ ACTOR_BG_UMAJUMP, -391, -70, -98, 0, 16384, 0, 0x0000 }, //0x0000027C 
	{ ACTOR_OBJ_KIBAKO2, -860, 20, -90, 0, 0, 0, 0xFFFF }, //0x0000028C 
	{ ACTOR_OBJ_KIBAKO2, -860, 68, -125, 0, 0, 0, 0xFFFF }, //0x0000029C 
	{ ACTOR_OBJ_KIBAKO2, -860, 20, -150, 0, 0, 0, 0xFFFF }, //0x000002AC 
	{ ACTOR_OBJ_KIBAKO2, -764, 34, 148, 0, 0, 0, 0xFFFF }, //0x000002BC 
	{ ACTOR_OBJ_KIBAKO2, -449, -2051, 123, 0, 0, 0, 0xFFFF }, //0x000002CC 
	{ ACTOR_OBJ_KIBAKO2, -350, -555, 1480, 0, 0, 0, 0xFFFF }, //0x000002DC 
};

static u32 pad2EC = 0;

MeshHeader2 _spot09_room_0_meshHeader_000002F0 = { { 2 }, 0x20, (u32)&_spot09_room_0_meshDListEntry_000002FC, (u32)&(_spot09_room_0_meshDListEntry_000002FC) + sizeof(_spot09_room_0_meshDListEntry_000002FC) };

MeshEntry2 _spot09_room_0_meshDListEntry_000002FC[32] = 
{
	{ 1693, 136, -256, 248, 0, (u32)_spot09_room_0_dlist_000084C0 },
	{ -1683, 375, 274, 548, (u32)_spot09_room_0_dlist_00002158, 0 },
	{ -2610, 910, -336, 1091, (u32)_spot09_room_0_dlist_00002698, 0 },
	{ 1716, -166, -206, 150, 0, (u32)_spot09_room_0_dlist_00008108 },
	{ 838, 47, -72, 971, (u32)_spot09_room_0_dlist_00002A70, 0 },
	{ -3717, 390, -741, 1722, (u32)_spot09_room_0_dlist_00002DA8, 0 },
	{ 1995, -96, 29, 817, (u32)_spot09_room_0_dlist_000030D0, 0 },
	{ -497, -2072, -1174, 1528, (u32)_spot09_room_0_dlist_00001550, 0 },
	{ 2945, -301, 1139, 892, (u32)_spot09_room_0_dlist_00003308, 0 },
	{ -1371, 37, -146, 1348, (u32)_spot09_room_0_dlist_00003630, 0 },
	{ 36, -1930, -2691, 315, (u32)_spot09_room_0_dlist_000017A0, 0 },
	{ 32, -1570, -2765, 110, (u32)_spot09_room_0_dlist_00001A40, 0 },
	{ 1673, -40, 0, 459, (u32)_spot09_room_0_dlist_00006F88, 0 },
	{ -27, -715, 1109, 653, (u32)_spot09_room_0_dlist_00001E98, 0 },
	{ 889, -2400, -337, 4916, (u32)_spot09_room_0_dlist_00001330, 0 },
	{ 151, -2115, -428, 2745, 0, (u32)_spot09_room_0_dlist_00007FF8 },
	{ 1701, -166, -23, 446, 0, (u32)_spot09_room_0_dlist_00008318 },
	{ 592, -160, -3669, 1875, (u32)_spot09_room_0_dlist_00005C68, 0 },
	{ 365, -1300, 2579, 2337, (u32)_spot09_room_0_dlist_00005E80, 0 },
	{ 1182, -1254, 3206, 3199, (u32)_spot09_room_0_dlist_000060C8, 0 },
	{ 386, -257, -544, 2318, (u32)_spot09_room_0_dlist_00006360, 0 },
	{ 506, -1862, -450, 2457, (u32)_spot09_room_0_dlist_000065C0, 0 },
	{ -461, -160, -348, 2538, (u32)_spot09_room_0_dlist_00006888, 0 },
	{ -17, -1920, -348, 2550, (u32)_spot09_room_0_dlist_00006C40, 0 },
	{ 889, -2172, -337, 4857, 0, (u32)_spot09_room_0_dlist_00007530 },
	{ 1711, -39, -238, 133, 0, (u32)_spot09_room_0_dlist_00008698 },
	{ 2128, 457, -995, 3288, (u32)_spot09_room_0_dlist_00003C98, 0 },
	{ 1723, 393, 1613, 1756, (u32)_spot09_room_0_dlist_00004540, 0 },
	{ -1595, 983, -2529, 2477, (u32)_spot09_room_0_dlist_00004C00, 0 },
	{ -1504, 449, 1033, 1509, (u32)_spot09_room_0_dlist_00005128, 0 },
	{ -3912, 852, -1069, 1459, (u32)_spot09_room_0_dlist_00005598, 0 },
	{ -3400, 618, -490, 1447, (u32)_spot09_room_0_dlist_00005A08, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

SCmdEchoSettings _spot09_room_0_set0500_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0500
SCmdRoomBehavior _spot09_room_0_set0500_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x0508
SCmdSkyboxDisables _spot09_room_0_set0500_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0510
SCmdTimeSettings _spot09_room_0_set0500_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x0A }; // 0x0518
SCmdMesh _spot09_room_0_set0500_cmd04 = { 0x0A, 0, (u32)&_spot09_room_0_meshHeader_000002F0 }; // 0x0520
SCmdObjectList _spot09_room_0_set0500_cmd05 = { 0x0B, 0x0C, (u32)_spot09_room_0_objectList_00000540 }; // 0x0528
SCmdActorList _spot09_room_0_set0500_cmd06 = { 0x01, 0x33, (u32)_spot09_room_0_actorList_00000558 }; // 0x0530
SCmdEndMarker _spot09_room_0_set0500_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0538
s16 _spot09_room_0_objectList_00000540[] = 
{
	OBJECT_SPOT09_OBJ,
	OBJECT_MAMENOKI,
	OBJECT_TORYO,
	OBJECT_HORSE,
	OBJECT_GOROIWA,
	OBJECT_OKUTA,
	OBJECT_KANBAN,
	OBJECT_GS,
	OBJECT_ST,
	OBJECT_BOMBIWA,
	OBJECT_BOX,
	OBJECT_KIBAKO2,
};

ActorEntry _spot09_room_0_actorList_00000558[51] = 
{
	{ ACTOR_EN_RIVER_SOUND, 138, -2528, -2396, 0, 0, 0, 0x0003 }, //0x00000558 
	{ ACTOR_EN_RIVER_SOUND, 527, -3123, 3582, 0, 0, 0, 0x0000 }, //0x00000568 
	{ ACTOR_EN_RIVER_SOUND, 1687, -138, -220, 0, 0, 0, 0x0001 }, //0x00000578 
	{ ACTOR_EN_OKUTA, -169, -2800, 797, 0, 0, 0, 0xFF00 }, //0x00000588 
	{ ACTOR_EN_OKUTA, -70, -2200, -1436, 0, 0, 0, 0xFF00 }, //0x00000598 
	{ ACTOR_EN_OKUTA, -59, -2800, 1603, 0, 0, 0, 0xFF00 }, //0x000005A8 
	{ ACTOR_EN_OKUTA, -48, -2200, -498, 0, 0, 0, 0xFF00 }, //0x000005B8 
	{ ACTOR_EN_OKUTA, -37, -2200, -1072, 0, 0, 0, 0xFF00 }, //0x000005C8 
	{ ACTOR_BG_SPOT09_OBJ, -1105, 15, -747, 0, 3277, 0, 0x0003 }, //0x000005D8 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0002 }, //0x000005E8 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0001 }, //0x000005F8 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0000 }, //0x00000608 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0004 }, //0x00000618 
	{ ACTOR_EN_ITEM00, 35, -1630, -2780, 0, 0, 0, 0x0106 }, //0x00000628 
	{ ACTOR_EN_ITEM00, -350, -555, 1480, 0, 0, 0, 0x0206 }, //0x00000638 
	{ ACTOR_OBJ_HAMISHI, -1352, 69, 767, 0, 0, 0, 0x000B }, //0x00000648 
	{ ACTOR_OBJ_HAMISHI, 861, 81, -778, 0, 0, 0, 0x0004 }, //0x00000658 
	{ ACTOR_OBJ_HAMISHI, 735, 5, 375, 0, 0, 0, 0x0005 }, //0x00000668 
	{ ACTOR_OBJ_HAMISHI, -1695, 70, -350, 0, 0, 0, 0x0006 }, //0x00000678 
	{ ACTOR_OBJ_HAMISHI, -1001, 52, 637, 0, 0, 0, 0x0007 }, //0x00000688 
	{ ACTOR_OBJ_HAMISHI, -1291, 65, 787, 0, 0, 0, 0x0009 }, //0x00000698 
	{ ACTOR_OBJ_HAMISHI, -1416, 59, 778, 0, 0, 0, 0x000D }, //0x000006A8 
	{ ACTOR_OBJ_HAMISHI, -1256, 55, 856, 0, 0, 0, 0x0010 }, //0x000006B8 
	{ ACTOR_DOOR_ANA, 280, -555, 1470, 0, -32768, 6, 0x00F2 }, //0x000006C8 
	{ ACTOR_DOOR_ANA, -1323, 15, -969, 0, -27307, 10, 0x01F0 }, //0x000006D8 
	{ ACTOR_EN_ISHI, 280, -555, 1470, 0, 0, 0, 0xFF01 }, //0x000006E8 
	{ ACTOR_EN_TORYO, -855, 15, -391, 0, 0, 0, 0xFFFF }, //0x000006F8 
	{ ACTOR_OBJ_BOMBIWA, 545, 27, -510, 0, 0, 0, 0x000A }, //0x00000708 
	{ ACTOR_OBJ_BOMBIWA, -954, 35, 577, 0, 0, 0, 0x000C }, //0x00000718 
	{ ACTOR_OBJ_BOMBIWA, 751, -20, 569, 0, 0, 0, 0x000F }, //0x00000728 
	{ ACTOR_OBJ_KIBAKO2, -350, -555, 1480, 0, 0, 0, 0xFFFF }, //0x00000738 
	{ ACTOR_OBJ_BEAN, -515, -2051, 110, 0, -16384, 2, 0x0103 }, //0x00000748 
	{ ACTOR_EN_GOROIWA, 314, -1015, -2804, 0, 0, 1, 0x0C02 }, //0x00000758 
	{ ACTOR_EN_ISHI, 1559, -202, -63, 0, 0, 0, 0x0700 }, //0x00000768 
	{ ACTOR_EN_ISHI, 1605, -202, 26, 0, 0, 0, 0x0700 }, //0x00000778 
	{ ACTOR_EN_ISHI, 1686, -202, -33, 0, 0, 0, 0x0700 }, //0x00000788 
	{ ACTOR_EN_ISHI, -666, 12, -899, 0, 0, 0, 0x0700 }, //0x00000798 
	{ ACTOR_EN_ISHI, -526, 10, -890, 0, 0, 0, 0x0700 }, //0x000007A8 
	{ ACTOR_EN_ISHI, -607, 16, -791, 0, 0, 0, 0x0700 }, //0x000007B8 
	{ ACTOR_EN_ISHI, -458, 14, -782, 0, 0, 0, 0x0700 }, //0x000007C8 
	{ ACTOR_EN_WONDER_ITEM, -45, -2365, -298, 0, 0, 1, 0x12BF }, //0x000007D8 
	{ ACTOR_EN_WONDER_ITEM, 47, -1794, -2620, 0, 0, 1, 0x12BF }, //0x000007E8 
	{ ACTOR_EN_ISHI, 2738, -235, 297, 0, 0, 0, 0x0B00 }, //0x000007F8 
	{ ACTOR_EN_ISHI, 2715, -235, 316, 0, 0, 0, 0x0B00 }, //0x00000808 
	{ ACTOR_EN_ISHI, 2699, -226, 275, 0, 0, 0, 0x0B00 }, //0x00000818 
	{ ACTOR_EN_GS, -510, -2025, -2340, 0, 0, 0, 0x3811 }, //0x00000828 
	{ ACTOR_EN_SW, -1329, 360, 309, 12743, -6918, 0, 0xB404 }, //0x00000838 
	{ ACTOR_EN_SW, -1171, 160, -1225, 16384, 0, 0, 0xB408 }, //0x00000848 
	{ ACTOR_EN_BOX, -1341, 76, 858, 0, -7464, 0, 0x5AA0 }, //0x00000858 
	{ ACTOR_EN_A_OBJ, 2778, -264, 593, 0, -13289, 0, 0x010A }, //0x00000868 
	{ ACTOR_EN_KANBAN, 359, 25, 254, 0, 16384, 0, 0x0342 }, //0x00000878 
};

static u32 pad888 = 0;
static u32 pad88C = 0;

SCmdEchoSettings _spot09_room_0_set0890_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0890
SCmdRoomBehavior _spot09_room_0_set0890_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0898
SCmdSkyboxDisables _spot09_room_0_set0890_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x08A0
SCmdTimeSettings _spot09_room_0_set0890_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x08A8
SCmdMesh _spot09_room_0_set0890_cmd04 = { 0x0A, 0, (u32)&_spot09_room_0_meshHeader_000002F0 }; // 0x08B0
SCmdObjectList _spot09_room_0_set0890_cmd05 = { 0x0B, 0x01, (u32)_spot09_room_0_objectList_000008D0 }; // 0x08B8
SCmdActorList _spot09_room_0_set0890_cmd06 = { 0x01, 0x08, (u32)_spot09_room_0_actorList_000008D4 }; // 0x08C0
SCmdEndMarker _spot09_room_0_set0890_cmd07 = { 0x14, 0x00, 0x00 }; // 0x08C8
s16 _spot09_room_0_objectList_000008D0[] = 
{
	OBJECT_SPOT09_OBJ,
};

ActorEntry _spot09_room_0_actorList_000008D4[8] = 
{
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0001 }, //0x000008D4 
	{ ACTOR_BG_SPOT09_OBJ, -1219, 0, -832, 0, 0, 0, 0x0003 }, //0x000008E4 
	{ ACTOR_EN_RIVER_SOUND, 137, -2790, -2459, 0, 0, 0, 0x0003 }, //0x000008F4 
	{ ACTOR_EN_RIVER_SOUND, 527, -3123, 3582, 0, 0, 0, 0x0000 }, //0x00000904 
	{ ACTOR_BG_SPOT09_OBJ, -1105, 15, -747, 0, 3277, 0, 0x0003 }, //0x00000914 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0000 }, //0x00000924 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0002 }, //0x00000934 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0004 }, //0x00000944 
};

static u32 pad954 = 0;
static u32 pad958 = 0;
static u32 pad95C = 0;

SCmdEchoSettings _spot09_room_0_set0960_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0960
SCmdRoomBehavior _spot09_room_0_set0960_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0968
SCmdSkyboxDisables _spot09_room_0_set0960_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0970
SCmdTimeSettings _spot09_room_0_set0960_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0978
SCmdMesh _spot09_room_0_set0960_cmd04 = { 0x0A, 0, (u32)&_spot09_room_0_meshHeader_000002F0 }; // 0x0980
SCmdObjectList _spot09_room_0_set0960_cmd05 = { 0x0B, 0x02, (u32)_spot09_room_0_objectList_000009A0 }; // 0x0988
SCmdActorList _spot09_room_0_set0960_cmd06 = { 0x01, 0x0D, (u32)_spot09_room_0_actorList_000009A4 }; // 0x0990
SCmdEndMarker _spot09_room_0_set0960_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0998
s16 _spot09_room_0_objectList_000009A0[] = 
{
	OBJECT_SPOT09_OBJ,
	OBJECT_EFC_STAR_FIELD,
};

ActorEntry _spot09_room_0_actorList_000009A4[13] = 
{
	{ ACTOR_DEMO_KANKYO, 7833, 2106, -4252, 0, 0, 0, 0x0002 }, //0x000009A4 
	{ ACTOR_DEMO_KANKYO, 7548, 2003, -4109, 0, 0, 0, 0x0003 }, //0x000009B4 
	{ ACTOR_DEMO_KANKYO, 7477, 2003, -3931, 0, 0, 0, 0x0004 }, //0x000009C4 
	{ ACTOR_DEMO_KANKYO, 7406, 1932, -4074, 0, 0, 0, 0x0005 }, //0x000009D4 
	{ ACTOR_DEMO_KANKYO, 7406, 1932, -4074, 0, 0, 0, 0x0006 }, //0x000009E4 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0001 }, //0x000009F4 
	{ ACTOR_BG_SPOT09_OBJ, -1219, 0, -832, 0, 0, 0, 0x0003 }, //0x00000A04 
	{ ACTOR_EN_RIVER_SOUND, 137, -2790, -2459, 0, 0, 0, 0x0003 }, //0x00000A14 
	{ ACTOR_EN_RIVER_SOUND, 527, -3123, 3582, 0, 0, 0, 0x0000 }, //0x00000A24 
	{ ACTOR_BG_SPOT09_OBJ, -1105, 15, -747, 0, 3277, 0, 0x0003 }, //0x00000A34 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0000 }, //0x00000A44 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0002 }, //0x00000A54 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0004 }, //0x00000A64 
};

static u32 padA74 = 0;
static u32 padA78 = 0;
static u32 padA7C = 0;

SCmdEchoSettings _spot09_room_0_set0A80_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0A80
SCmdRoomBehavior _spot09_room_0_set0A80_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x0A88
SCmdSkyboxDisables _spot09_room_0_set0A80_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0A90
SCmdTimeSettings _spot09_room_0_set0A80_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x04, 0x25, 0x02 }; // 0x0A98
SCmdWindSettings _spot09_room_0_set0A80_cmd04 = { 0x05, 0x00, 0x00, 0x00, 0xF6, 0x00, 0x00, 0x05}; // 0x0AA0
SCmdMesh _spot09_room_0_set0A80_cmd05 = { 0x0A, 0, (u32)&_spot09_room_0_meshHeader_000002F0 }; // 0x0AA8
SCmdObjectList _spot09_room_0_set0A80_cmd06 = { 0x0B, 0x06, (u32)_spot09_room_0_objectList_00000AC8 }; // 0x0AB0
SCmdActorList _spot09_room_0_set0A80_cmd07 = { 0x01, 0x08, (u32)_spot09_room_0_actorList_00000AD4 }; // 0x0AB8
SCmdEndMarker _spot09_room_0_set0A80_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0AC0
s16 _spot09_room_0_objectList_00000AC8[] = 
{
	OBJECT_SPOT09_OBJ,
	OBJECT_NIW,
	OBJECT_GE1,
	OBJECT_UMAJUMP,
	OBJECT_MAMENOKI,
	OBJECT_OWL,
};

ActorEntry _spot09_room_0_actorList_00000AD4[8] = 
{
	{ ACTOR_OBJ_BEAN, 270, -555, 1460, 0, -16384, 0, 0x1F03 }, //0x00000AD4 
	{ ACTOR_BG_UMAJUMP, -391, -70, -98, 0, 16384, 0, 0x0000 }, //0x00000AE4 
	{ ACTOR_BG_SPOT09_OBJ, -1105, 15, -747, 0, 3277, 0, 0x0003 }, //0x00000AF4 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0000 }, //0x00000B04 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0002 }, //0x00000B14 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0001 }, //0x00000B24 
	{ ACTOR_BG_SPOT09_OBJ, 0, 0, 0, 0, 0, 0, 0x0004 }, //0x00000B34 
	{ ACTOR_EN_OWL, 14, 242, -264, 0, 0, 0, 0x003F }, //0x00000B44 
};

static u32 padB54 = 0;
static u32 padB58 = 0;
static u32 padB5C = 0;

Vtx_t _spot09_room_0_vertices_00000B60[32] = 
{
	 { -272, -2800, -380, 0, -227, 4361, 57, 35, 99, 255 }, // 0x00000B60
	 { -269, -2909, -317, 0, 19, 4100, 60, 86, 57, 255 }, // 0x00000B70
	 { 291, -2909, -311, 0, 1024, 4083, 185, 68, 68, 255 }, // 0x00000B80
	 { 288, -2800, -380, 0, 1201, 4311, 171, 21, 81, 255 }, // 0x00000B90
	 { -423, -3200, 1786, 0, -456, -423, 96, 40, 59, 255 }, // 0x00000BA0
	 { -372, -3435, 1960, 0, 0, -789, 40, 111, 19, 255 }, // 0x00000BB0
	 { 394, -3435, 1980, 0, 1024, -520, 218, 87, 73, 255 }, // 0x00000BC0
	 { 340, -3200, 1795, 0, 1285, -135, 170, 19, 81, 255 }, // 0x00000BD0
	 { -400, -2200, -2695, 0, -613, 1616, 86, 26, 78, 255 }, // 0x00000BE0
	 { 464, -2441, -2695, 0, 1024, 1330, 229, 59, 100, 255 }, // 0x00000BF0
	 { 688, -2200, -2695, 0, 1488, 1608, 205, 21, 106, 255 }, // 0x00000C00
	 { -161, -2441, -2695, 0, 0, 1251, 24, 88, 77, 255 }, // 0x00000C10
	 { 358, -2520, -1278, 0, 1024, -1137, 194, 99, 232, 255 }, // 0x00000C20
	 { 358, -2200, -1278, 0, 1559, -1234, 138, 251, 238, 255 }, // 0x00000C30
	 { 725, -2200, -2400, 0, 1748, 887, 139, 18, 240, 255 }, // 0x00000C40
	 { 324, -3000, 551, 0, 1024, 2911, 188, 98, 7, 255 }, // 0x00000C50
	 { 324, -2800, 803, 0, 1383, 2507, 137, 255, 3, 255 }, // 0x00000C60
	 { 288, -2248, -380, 0, 1024, -3072, 141, 28, 19, 255 }, // 0x00000C70
	 { -414, -2800, 316, 0, -547, 3411, 117, 3, 22, 255 }, // 0x00000C80
	 { -414, -3000, 316, 0, 0, 3315, 66, 100, 7, 255 }, // 0x00000C90
	 { 340, -2848, 1795, 0, 1024, 1080, 155, 52, 36, 255 }, // 0x00000CA0
	 { -420, -2848, 1795, 0, 0, 420, 117, 22, 6, 255 }, // 0x00000CB0
	 { 711, -3400, 2934, 0, 1024, -2550, 179, 85, 34, 255 }, // 0x00000CC0
	 { 711, -3200, 2934, 0, 1360, -2512, 145, 1, 44, 255 }, // 0x00000CD0
	 { -89, -3200, 2934, 0, -483, -2260, 110, 0, 209, 255 }, // 0x00000CE0
	 { -89, -3400, 2934, 0, 0, -2176, 93, 66, 220, 255 }, // 0x00000CF0
	 { 1154, -3400, 3688, 0, 1004, -4001, 217, 106, 38, 255 }, // 0x00000D00
	 { 1154, -3200, 3688, 0, 1335, -3915, 177, 0, 90, 255 }, // 0x00000D10
	 { 673, -3225, 4264, 0, -562, -4992, 46, 0, 146, 255 }, // 0x00000D20
	 { 673, -3425, 4264, 0, 0, -4721, 56, 90, 202, 255 }, // 0x00000D30
	 { 2202, -3200, 4225, 0, -484, -7054, 253, 0, 137, 255 }, // 0x00000D40
	 { 2202, -3680, 4225, 0, 7, -6514, 251, 39, 143, 255 }, // 0x00000D50
};

Vtx_t _spot09_room_0_vertices_00000D60[32] = 
{
	 { 673, -3225, 4264, 0, -562, -4992, 46, 0, 146, 255 }, // 0x00000D60
	 { 2202, -3680, 4225, 0, 7, -6514, 251, 39, 143, 255 }, // 0x00000D70
	 { 673, -3425, 4264, 0, 0, -4721, 56, 90, 202, 255 }, // 0x00000D80
	 { 800, -1119, -4000, 0, 1537, 4386, 144, 29, 228, 255 }, // 0x00000D90
	 { 667, -1359, -4000, 0, 1081, 4494, 228, 114, 237, 255 }, // 0x00000DA0
	 { 474, -1119, -2695, 0, 1024, 2229, 140, 15, 25, 255 }, // 0x00000DB0
	 { 0, -1119, -4000, 0, -347, 4491, 84, 18, 84, 255 }, // 0x00000DC0
	 { 85, -1359, -4000, 0, 0, 4494, 56, 99, 36, 255 }, // 0x00000DD0
	 { 1469, -1359, -4769, 0, 0, 6542, 47, 74, 82, 255 }, // 0x00000DE0
	 { 1585, -1119, -4938, 0, -442, 6528, 60, 20, 101, 255 }, // 0x00000DF0
	 { -326, -1119, -2695, 0, 0, 2229, 101, 23, 59, 255 }, // 0x00000E00
	 { -272, -2520, -1198, 0, 0, -1352, 101, 63, 245, 255 }, // 0x00000E10
	 { -272, -2200, -786, 0, -274, -2211, 120, 0, 0, 255 }, // 0x00000E20
	 { -272, -2248, -380, 0, 0, -3138, 108, 43, 27, 255 }, // 0x00000E30
	 { -272, -2200, -1618, 0, -728, -791, 119, 251, 249, 255 }, // 0x00000E40
	 { -272, -2200, -786, 0, -274, -2211, 120, 0, 0, 255 }, // 0x00000E50
	 { -400, -2200, -2695, 0, -613, 1616, 86, 26, 78, 255 }, // 0x00000E60
	 { -179, -2553, -2446, 0, 0, 783, 40, 111, 20, 255 }, // 0x00000E70
	 { -161, -2441, -2695, 0, 0, 1251, 24, 88, 77, 255 }, // 0x00000E80
	 { 446, -2553, -2446, 0, 1024, 863, 203, 105, 22, 255 }, // 0x00000E90
	 { 358, -2520, -1278, 0, 1024, -1137, 194, 99, 232, 255 }, // 0x00000EA0
	 { 725, -2200, -2400, 0, 1748, 887, 139, 18, 240, 255 }, // 0x00000EB0
	 { 464, -2441, -2695, 0, 1024, 1330, 229, 59, 100, 255 }, // 0x00000EC0
	 { 688, -2200, -2695, 0, 1488, 1608, 205, 21, 106, 255 }, // 0x00000ED0
	 { 1154, -3400, 3688, 0, 1004, -4001, 217, 106, 38, 255 }, // 0x00000EE0
	 { -89, -3400, 2934, 0, 0, -2176, 93, 66, 220, 255 }, // 0x00000EF0
	 { 711, -3400, 2934, 0, 1024, -2550, 179, 85, 34, 255 }, // 0x00000F00
	 { -372, -3435, 1960, 0, 0, -789, 40, 111, 19, 255 }, // 0x00000F10
	 { 394, -3435, 1980, 0, 1024, -520, 218, 87, 73, 255 }, // 0x00000F20
	 { -414, -3000, 316, 0, 0, 3315, 66, 100, 7, 255 }, // 0x00000F30
	 { 340, -2848, 1795, 0, 1024, 1080, 155, 52, 36, 255 }, // 0x00000F40
	 { 324, -3000, 551, 0, 1024, 2911, 188, 98, 7, 255 }, // 0x00000F50
};

Vtx_t _spot09_room_0_vertices_00000F60[21] = 
{
	 { -414, -3000, 316, 0, 0, 3315, 66, 100, 7, 255 }, // 0x00000F60
	 { -420, -2848, 1795, 0, 0, 420, 117, 22, 6, 255 }, // 0x00000F70
	 { 340, -2848, 1795, 0, 1024, 1080, 155, 52, 36, 255 }, // 0x00000F80
	 { -269, -2909, -317, 0, 19, 4100, 60, 86, 57, 255 }, // 0x00000F90
	 { 324, -3000, 551, 0, 1024, 2911, 188, 98, 7, 255 }, // 0x00000FA0
	 { 324, -3000, 551, 0, 1024, 2911, 188, 98, 7, 255 }, // 0x00000FB0
	 { 291, -2909, -311, 0, 1024, 4083, 185, 68, 68, 255 }, // 0x00000FC0
	 { -272, -2248, -380, 0, 0, -3138, 108, 43, 27, 255 }, // 0x00000FD0
	 { 288, -2248, -380, 0, 1024, -3072, 141, 28, 19, 255 }, // 0x00000FE0
	 { 358, -2520, -1278, 0, 1024, -1137, 194, 99, 232, 255 }, // 0x00000FF0
	 { -272, -2520, -1198, 0, 0, -1352, 101, 63, 245, 255 }, // 0x00001000
	 { 1469, -1359, -4769, 0, 0, 6542, 47, 74, 82, 255 }, // 0x00001010
	 { 85, -1359, -4000, 0, 0, 4494, 56, 99, 36, 255 }, // 0x00001020
	 { 667, -1359, -4000, 0, 1081, 4494, 228, 114, 237, 255 }, // 0x00001030
	 { -326, -1119, -2695, 0, 0, 2229, 101, 23, 59, 255 }, // 0x00001040
	 { 474, -1119, -2695, 0, 1024, 2229, 140, 15, 25, 255 }, // 0x00001050
	 { -161, -2441, -2695, 0, 0, 1251, 24, 88, 77, 255 }, // 0x00001060
	 { -179, -2553, -2446, 0, 0, 783, 40, 111, 20, 255 }, // 0x00001070
	 { 446, -2553, -2446, 0, 1024, 863, 203, 105, 22, 255 }, // 0x00001080
	 { 464, -2441, -2695, 0, 1024, 1330, 229, 59, 100, 255 }, // 0x00001090
	 { 358, -2520, -1278, 0, 1024, -1137, 194, 99, 232, 255 }, // 0x000010A0
};

Gfx _spot09_room_0_dlist_000010B0[] =
{
	gsDPPipeSync(), // 0x000010B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000010B8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000010C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000A160), // 0x000010C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000010D0
	gsDPLoadSync(), // 0x000010D8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000010E0
	gsDPPipeSync(), // 0x000010E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000010F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000010F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000E160), // 0x00001100
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 0, 0, 5, 15), // 0x00001108
	gsDPLoadSync(), // 0x00001110
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001118
	gsDPPipeSync(), // 0x00001120
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 0, 0, 5, 15), // 0x00001128
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00001130
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001138
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001140
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001148
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001150
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001158
	gsDPSetEnvColor(0, 0, 0, 90), // 0x00001160
	gsSPDisplayList(0x0B000000), // 0x00001168
	gsSPVertex(_spot09_room_0_vertices_00000B60, 32, 0), // 0x00001170
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001178
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001180
	gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0), // 0x00001188
	gsSP2Triangles(12, 13, 14, 0, 2, 15, 16, 0), // 0x00001190
	gsSP2Triangles(2, 16, 3, 0, 12, 17, 13, 0), // 0x00001198
	gsSP2Triangles(18, 19, 1, 0, 0, 18, 1, 0), // 0x000011A0
	gsSP2Triangles(15, 20, 16, 0, 18, 21, 19, 0), // 0x000011A8
	gsSP2Triangles(22, 23, 7, 0, 6, 22, 7, 0), // 0x000011B0
	gsSP2Triangles(4, 24, 25, 0, 4, 25, 5, 0), // 0x000011B8
	gsSP2Triangles(22, 26, 27, 0, 22, 27, 23, 0), // 0x000011C0
	gsSP2Triangles(24, 28, 29, 0, 24, 29, 25, 0), // 0x000011C8
	gsSP1Triangle(28, 30, 31, 0), // 0x000011D0
	gsSPVertex(_spot09_room_0_vertices_00000D60, 32, 0), // 0x000011D8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000011E0
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x000011E8
	gsSP2Triangles(7, 6, 10, 0, 11, 12, 13, 0), // 0x000011F0
	gsSP2Triangles(11, 14, 15, 0, 11, 16, 14, 0), // 0x000011F8
	gsSP2Triangles(16, 17, 18, 0, 16, 11, 17, 0), // 0x00001200
	gsSP2Triangles(19, 20, 21, 0, 22, 19, 23, 0), // 0x00001208
	gsSP2Triangles(19, 21, 23, 0, 2, 1, 24, 0), // 0x00001210
	gsSP2Triangles(25, 2, 26, 0, 2, 24, 26, 0), // 0x00001218
	gsSP2Triangles(27, 26, 28, 0, 27, 25, 26, 0), // 0x00001220
	gsSP1Triangle(29, 30, 31, 0), // 0x00001228
	gsSPVertex(_spot09_room_0_vertices_00000F60, 21, 0), // 0x00001230
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0), // 0x00001238
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x00001240
	gsSP2Triangles(10, 7, 9, 0, 11, 12, 13, 0), // 0x00001248
	gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0), // 0x00001250
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00001258
	gsSP2Triangles(17, 10, 20, 0, 17, 9, 18, 0), // 0x00001260
	gsDPPipeSync(), // 0x00001268
	gsDPSetEnvColor(0, 0, 0, 128), // 0x00001270
	gsSPEndDisplayList(), // 0x00001278
};

Vtx_t _spot09_room_0_vertices_00001280[1] = 
{
	 { 0, -3280, 0, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001280
};

Gfx _spot09_room_0_dlist_00001290[] =
{
	gsSPVertex(_spot09_room_0_vertices_00001280, 1, 0), // 0x00001290
	gsSPBranchLessZraw(_spot09_room_0_dlist_000010B0, 0x00, 0xE88), // 0x000012A0
	gsSPEndDisplayList(), // 0x000012A8
};

Vtx_t _spot09_room_0_vertices_000012B0[8] = 
{
	 { -423, -3830, 4199, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012B0
	 { 2202, -3830, 4199, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012C0
	 { -423, -2186, -5126, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012D0
	 { 2202, -2186, -5126, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012E0
	 { -423, -2380, 4454, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012F0
	 { 2202, -2380, 4454, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001300
	 { -423, -736, -4871, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001310
	 { 2202, -736, -4871, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001320
};

Gfx _spot09_room_0_dlist_00001330[] =
{
	gsDPPipeSync(), // 0x00001330
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001338
	gsSPVertex(_spot09_room_0_vertices_000012B0, 8, 0), // 0x00001340
	gsSPCullDisplayList(0, 7), // 0x00001348
	gsDPPipeSync(), // 0x00001350
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001358
	gsSPDisplayList(_spot09_room_0_dlist_00001290), // 0x00001360
	gsSPEndDisplayList(), // 0x00001368
};

Vtx_t _spot09_room_0_vertices_00001370[9] = 
{
	 { -716, -2051, 25, 0, -3715, -261, 75, 86, 220, 255 }, // 0x00001370
	 { -414, -2051, 347, 0, -5309, 1173, 116, 30, 253, 255 }, // 0x00001380
	 { -272, -2051, -380, 0, -28, 1173, 69, 97, 251, 255 }, // 0x00001390
	 { -721, -2156, -1006, 0, 5414, -670, 99, 67, 255, 255 }, // 0x000013A0
	 { -272, -2185, -786, 0, 4229, 1173, 90, 78, 245, 255 }, // 0x000013B0
	 { -272, -2185, -1618, 0, 8487, 1173, 73, 94, 7, 255 }, // 0x000013C0
	 { -400, -1958, -2695, 0, 12744, 1173, 22, 22, 115, 255 }, // 0x000013D0
	 { -532, -1963, -2695, 0, 12744, 764, 56, 81, 68, 255 }, // 0x000013E0
	 { -272, -2185, -1618, 0, 8487, 1173, 73, 94, 7, 255 }, // 0x000013F0
};

Gfx _spot09_room_0_dlist_00001400[] =
{
	gsDPPipeSync(), // 0x00001400
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001408
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001410
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000C160), // 0x00001418
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001420
	gsDPLoadSync(), // 0x00001428
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001430
	gsDPPipeSync(), // 0x00001438
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001440
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001448
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001450
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001458
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001460
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001468
	gsDPSetPrimColor(0, 0, 200, 170, 150, 255), // 0x00001470
	gsSPVertex(_spot09_room_0_vertices_00001370, 9, 0), // 0x00001478
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00001480
	gsSP2Triangles(3, 2, 4, 0, 3, 0, 2, 0), // 0x00001488
	gsSP2Triangles(6, 7, 8, 0, 7, 3, 8, 0), // 0x00001490
	gsSPEndDisplayList(), // 0x00001498
};

Vtx_t _spot09_room_0_vertices_000014A0[1] = 
{
	 { 0, -3280, 0, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014A0
};

Gfx _spot09_room_0_dlist_000014B0[] =
{
	gsSPVertex(_spot09_room_0_vertices_000014A0, 1, 0), // 0x000014B0
	gsSPBranchLessZraw(_spot09_room_0_dlist_00001400, 0x00, 0xE88), // 0x000014C0
	gsSPEndDisplayList(), // 0x000014C8
};

Vtx_t _spot09_room_0_vertices_000014D0[8] = 
{
	 { -721, -2185, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014D0
	 { -272, -2185, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014E0
	 { -721, -1958, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014F0
	 { -272, -1958, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001500
	 { -721, -2185, 347, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001510
	 { -272, -2185, 347, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001520
	 { -721, -1958, 347, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001530
	 { -272, -1958, 347, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001540
};

Gfx _spot09_room_0_dlist_00001550[] =
{
	gsDPPipeSync(), // 0x00001550
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001558
	gsSPVertex(_spot09_room_0_vertices_000014D0, 8, 0), // 0x00001560
	gsSPCullDisplayList(0, 7), // 0x00001568
	gsDPPipeSync(), // 0x00001570
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001578
	gsSPDisplayList(_spot09_room_0_dlist_000014B0), // 0x00001580
	gsSPEndDisplayList(), // 0x00001588
};

Vtx_t _spot09_room_0_vertices_00001590[4] = 
{
	 { 22, -2245, -2691, 0, 0, 16384, 0, 0, 120, 255 }, // 0x00001590
	 { 50, -2245, -2691, 0, 2048, 16384, 0, 0, 120, 255 }, // 0x000015A0
	 { 50, -1630, -2691, 0, 2048, -25600, 0, 0, 120, 255 }, // 0x000015B0
	 { 22, -1630, -2691, 0, 0, -25600, 0, 0, 120, 255 }, // 0x000015C0
};

Vtx_t _spot09_room_0_vertices_000015D0[4] = 
{
	 { 22, -1630, -2691, 0, 0, 1024, 0, 0, 120, 255 }, // 0x000015D0
	 { 50, -1630, -2691, 0, 2048, 1024, 0, 0, 120, 255 }, // 0x000015E0
	 { 50, -1615, -2691, 0, 2048, 0, 0, 0, 120, 255 }, // 0x000015F0
	 { 22, -1615, -2691, 0, 0, 0, 0, 0, 120, 255 }, // 0x00001600
};

Gfx _spot09_room_0_dlist_00001610[] =
{
	gsDPPipeSync(), // 0x00001610
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001618
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001620
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00005C60), // 0x00001628
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 5, 0), // 0x00001630
	gsDPLoadSync(), // 0x00001638
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001640
	gsDPPipeSync(), // 0x00001648
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 1, 5, 0), // 0x00001650
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001658
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001660
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001668
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x00001670
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001678
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001680
	gsSPVertex(_spot09_room_0_vertices_00001590, 4, 0), // 0x00001688
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001690
	gsDPPipeSync(), // 0x00001698
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00006460), // 0x000016A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 5, 0), // 0x000016A8
	gsDPLoadSync(), // 0x000016B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000016B8
	gsDPPipeSync(), // 0x000016C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 1, 5, 0), // 0x000016C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000016D0
	gsSPVertex(_spot09_room_0_vertices_000015D0, 4, 0), // 0x000016D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000016E0
	gsSPEndDisplayList(), // 0x000016E8
};

Vtx_t _spot09_room_0_vertices_000016F0[1] = 
{
	 { 0, -3280, 0, 0, 0, 0, 0, 0, 0, 0 }, // 0x000016F0
};

Gfx _spot09_room_0_dlist_00001700[] =
{
	gsSPVertex(_spot09_room_0_vertices_000016F0, 1, 0), // 0x00001700
	gsSPBranchLessZraw(_spot09_room_0_dlist_00001610, 0x00, 0xE88), // 0x00001710
	gsSPEndDisplayList(), // 0x00001718
};

Vtx_t _spot09_room_0_vertices_00001720[8] = 
{
	 { 22, -2245, -2691, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001720
	 { 50, -2245, -2691, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001730
	 { 22, -1615, -2691, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001740
	 { 50, -1615, -2691, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001750
	 { 22, -2245, -2691, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001760
	 { 50, -2245, -2691, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001770
	 { 22, -1615, -2691, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001780
	 { 50, -1615, -2691, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001790
};

Gfx _spot09_room_0_dlist_000017A0[] =
{
	gsDPPipeSync(), // 0x000017A0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000017A8
	gsSPVertex(_spot09_room_0_vertices_00001720, 8, 0), // 0x000017B0
	gsSPCullDisplayList(0, 7), // 0x000017B8
	gsDPPipeSync(), // 0x000017C0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000017C8
	gsSPDisplayList(_spot09_room_0_dlist_00001700), // 0x000017D0
	gsSPEndDisplayList(), // 0x000017D8
};

Vtx_t _spot09_room_0_vertices_000017E0[16] = 
{
	 { 92, -1630, -2835, 0, 2048, 1024, 187, 69, 69, 255 }, // 0x000017E0
	 { 92, -1630, -2695, 0, 3072, 1024, 220, 36, 108, 255 }, // 0x000017F0
	 { 92, -1510, -2695, 0, 3072, 0, 220, 220, 108, 255 }, // 0x00001800
	 { 92, -1510, -2835, 0, 2048, 0, 187, 187, 69, 255 }, // 0x00001810
	 { -28, -1630, -2835, 0, 1024, 1024, 69, 69, 69, 255 }, // 0x00001820
	 { -28, -1510, -2835, 0, 1024, 0, 69, 187, 69, 255 }, // 0x00001830
	 { -28, -1630, -2695, 0, 0, 1024, 36, 36, 108, 255 }, // 0x00001840
	 { -28, -1510, -2695, 0, 0, 0, 36, 220, 108, 255 }, // 0x00001850
	 { -28, -1510, -2695, 0, 1024, -171, 36, 220, 108, 255 }, // 0x00001860
	 { -28, -1510, -2835, 0, 1024, 1024, 69, 187, 69, 255 }, // 0x00001870
	 { 92, -1510, -2835, 0, 2048, 1024, 187, 187, 69, 255 }, // 0x00001880
	 { 92, -1510, -2695, 0, 2048, -171, 220, 220, 108, 255 }, // 0x00001890
	 { 92, -1630, -2695, 0, 1024, 1195, 220, 36, 108, 255 }, // 0x000018A0
	 { 92, -1630, -2835, 0, 1024, 0, 187, 69, 69, 255 }, // 0x000018B0
	 { -28, -1630, -2835, 0, 0, 0, 69, 69, 69, 255 }, // 0x000018C0
	 { -28, -1630, -2695, 0, 0, 1195, 36, 36, 108, 255 }, // 0x000018D0
};

Gfx _spot09_room_0_dlist_000018E0[] =
{
	gsDPPipeSync(), // 0x000018E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000018E8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000018F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000C160), // 0x000018F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001900
	gsDPLoadSync(), // 0x00001908
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001910
	gsDPPipeSync(), // 0x00001918
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001920
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001928
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001930
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001938
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001940
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001948
	gsDPSetPrimColor(0, 0, 200, 170, 150, 255), // 0x00001950
	gsSPVertex(_spot09_room_0_vertices_000017E0, 16, 0), // 0x00001958
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001960
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00001968
	gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0), // 0x00001970
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001978
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001980
	gsSPEndDisplayList(), // 0x00001988
};

Vtx_t _spot09_room_0_vertices_00001990[1] = 
{
	 { 0, -3280, 0, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001990
};

Gfx _spot09_room_0_dlist_000019A0[] =
{
	gsSPVertex(_spot09_room_0_vertices_00001990, 1, 0), // 0x000019A0
	gsSPBranchLessZraw(_spot09_room_0_dlist_000018E0, 0x00, 0xE88), // 0x000019B0
	gsSPEndDisplayList(), // 0x000019B8
};

Vtx_t _spot09_room_0_vertices_000019C0[8] = 
{
	 { -28, -1630, -2835, 0, 0, 0, 0, 0, 0, 0 }, // 0x000019C0
	 { 92, -1630, -2835, 0, 0, 0, 0, 0, 0, 0 }, // 0x000019D0
	 { -28, -1510, -2835, 0, 0, 0, 0, 0, 0, 0 }, // 0x000019E0
	 { 92, -1510, -2835, 0, 0, 0, 0, 0, 0, 0 }, // 0x000019F0
	 { -28, -1630, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A00
	 { 92, -1630, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A10
	 { -28, -1510, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A20
	 { 92, -1510, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A30
};

Gfx _spot09_room_0_dlist_00001A40[] =
{
	gsDPPipeSync(), // 0x00001A40
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001A48
	gsSPVertex(_spot09_room_0_vertices_000019C0, 8, 0), // 0x00001A50
	gsSPCullDisplayList(0, 7), // 0x00001A58
	gsDPPipeSync(), // 0x00001A60
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001A68
	gsSPDisplayList(_spot09_room_0_dlist_000019A0), // 0x00001A70
	gsSPEndDisplayList(), // 0x00001A78
};

Vtx_t _spot09_room_0_vertices_00001A80[5] = 
{
	 { -400, -555, 1608, 0, -445, 1024, 117, 14, 18, 255 }, // 0x00001A80
	 { -276, -555, 1528, 0, 0, 1024, 84, 71, 46, 255 }, // 0x00001A90
	 { -405, -555, 1452, 0, 276, 421, 0, 120, 0, 255 }, // 0x00001AA0
	 { -276, -555, 1368, 0, 546, 1024, 82, 72, 207, 255 }, // 0x00001AB0
	 { -410, -555, 1295, 0, 1016, 1024, 116, 11, 230, 255 }, // 0x00001AC0
};

Vtx_t _spot09_room_0_vertices_00001AD0[15] = 
{
	 { -418, -869, 1454, 0, 273, 1180, 114, 221, 251, 255 }, // 0x00001AD0
	 { -410, -555, 1295, 0, 1016, 0, 116, 11, 230, 255 }, // 0x00001AE0
	 { -276, -555, 1368, 0, 546, 0, 82, 72, 207, 255 }, // 0x00001AF0
	 { -276, -555, 1528, 0, 0, 0, 84, 71, 46, 255 }, // 0x00001B00
	 { -400, -555, 1608, 0, -445, 0, 117, 14, 18, 255 }, // 0x00001B10
	 { 204, -555, 1528, 0, 1959, 0, 178, 76, 49, 255 }, // 0x00001B20
	 { 324, -875, 1470, 0, 1848, 987, 139, 240, 19, 255 }, // 0x00001B30
	 { 364, -555, 1608, 0, 2412, 0, 143, 22, 33, 255 }, // 0x00001B40
	 { 204, -555, 1368, 0, 1554, 0, 159, 67, 235, 255 }, // 0x00001B50
	 { 304, -555, 1156, 0, 958, 0, 149, 52, 243, 255 }, // 0x00001B60
	 { 324, -875, 648, 0, -337, 940, 137, 255, 243, 255 }, // 0x00001B70
	 { 304, -555, 1156, 0, 958, 0, 149, 52, 243, 255 }, // 0x00001B80
	 { 284, -555, 688, 0, -225, 0, 179, 86, 225, 255 }, // 0x00001B90
	 { 364, -555, 611, 0, -506, 0, 144, 38, 236, 255 }, // 0x00001BA0
	 { 284, -555, 688, 0, -225, 0, 179, 86, 225, 255 }, // 0x00001BB0
};

Vtx_t _spot09_room_0_vertices_00001BC0[11] = 
{
	 { 204, -555, 1528, 0, 1959, 1024, 178, 76, 49, 255 }, // 0x00001BC0
	 { 364, -555, 1358, 0, 1593, 173, 0, 120, 0, 255 }, // 0x00001BD0
	 { 204, -555, 1368, 0, 1554, 1024, 159, 67, 235, 255 }, // 0x00001BE0
	 { 304, -555, 1156, 0, 958, 1024, 149, 52, 243, 255 }, // 0x00001BF0
	 { 204, -555, 1368, 0, 1554, 1024, 159, 67, 235, 255 }, // 0x00001C00
	 { 284, -555, 688, 0, -225, 1024, 179, 86, 225, 255 }, // 0x00001C10
	 { 304, -555, 1156, 0, 958, 1024, 149, 52, 243, 255 }, // 0x00001C20
	 { 364, -555, 1358, 0, 1593, 173, 0, 120, 0, 255 }, // 0x00001C30
	 { 364, -555, 611, 0, -506, 1024, 144, 38, 236, 255 }, // 0x00001C40
	 { 284, -555, 688, 0, -225, 1024, 179, 86, 225, 255 }, // 0x00001C50
	 { 364, -555, 1608, 0, 2412, 1024, 143, 22, 33, 255 }, // 0x00001C60
};

Gfx _spot09_room_0_dlist_00001C70[] =
{
	gsDPPipeSync(), // 0x00001C70
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001C78
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001C80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00007160), // 0x00001C88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00001C90
	gsDPLoadSync(), // 0x00001C98
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001CA0
	gsDPPipeSync(), // 0x00001CA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00001CB0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001CB8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001CC0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001CC8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001CD0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001CD8
	gsDPSetPrimColor(0, 0, 255, 223, 200, 255), // 0x00001CE0
	gsSPVertex(_spot09_room_0_vertices_00001A80, 5, 0), // 0x00001CE8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001CF0
	gsSP1Triangle(3, 4, 2, 0), // 0x00001CF8
	gsDPPipeSync(), // 0x00001D00
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00008160), // 0x00001D08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00001D10
	gsDPLoadSync(), // 0x00001D18
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001D20
	gsDPPipeSync(), // 0x00001D28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00001D30
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001D38
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x00001D40
	gsSPVertex(_spot09_room_0_vertices_00001AD0, 15, 0), // 0x00001D48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001D50
	gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0), // 0x00001D58
	gsSP2Triangles(8, 6, 5, 0, 9, 6, 8, 0), // 0x00001D60
	gsSP2Triangles(10, 6, 11, 0, 12, 10, 9, 0), // 0x00001D68
	gsSP1Triangle(13, 10, 14, 0), // 0x00001D70
	gsDPPipeSync(), // 0x00001D78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00007160), // 0x00001D80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00001D88
	gsDPLoadSync(), // 0x00001D90
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001D98
	gsDPPipeSync(), // 0x00001DA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00001DA8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001DB0
	gsDPSetPrimColor(0, 0, 255, 223, 200, 255), // 0x00001DB8
	gsSPVertex(_spot09_room_0_vertices_00001BC0, 11, 0), // 0x00001DC0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0), // 0x00001DC8
	gsSP2Triangles(1, 5, 6, 0, 7, 8, 9, 0), // 0x00001DD0
	gsSP1Triangle(0, 10, 1, 0), // 0x00001DD8
	gsSPEndDisplayList(), // 0x00001DE0
};

Vtx_t _spot09_room_0_vertices_00001DE8[1] = 
{
	 { 0, -3280, 0, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DE8
};

Gfx _spot09_room_0_dlist_00001DF8[] =
{
	gsSPVertex(_spot09_room_0_vertices_00001DE8, 1, 0), // 0x00001DF8
	gsSPBranchLessZraw(_spot09_room_0_dlist_00001C70, 0x00, 0xE88), // 0x00001E08
	gsSPEndDisplayList(), // 0x00001E10
};

Vtx_t _spot09_room_0_vertices_00001E18[8] = 
{
	 { -418, -875, 611, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E18
	 { 364, -875, 611, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E28
	 { -418, -555, 611, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E38
	 { 364, -555, 611, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E48
	 { -418, -875, 1608, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E58
	 { 364, -875, 1608, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E68
	 { -418, -555, 1608, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E78
	 { 364, -555, 1608, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E88
};

Gfx _spot09_room_0_dlist_00001E98[] =
{
	gsDPPipeSync(), // 0x00001E98
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001EA0
	gsSPVertex(_spot09_room_0_vertices_00001E18, 8, 0), // 0x00001EA8
	gsSPCullDisplayList(0, 7), // 0x00001EB0
	gsDPPipeSync(), // 0x00001EB8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001EC0
	gsSPDisplayList(_spot09_room_0_dlist_00001DF8), // 0x00001EC8
	gsSPEndDisplayList(), // 0x00001ED0
};

Vtx_t _spot09_room_0_vertices_00001ED8[32] = 
{
	 { -1243, 552, 349, 0, -297, 1140, 70, 17, 95, 255 }, // 0x00001ED8
	 { -2122, 472, 482, 0, 1024, 2048, 62, 102, 3, 255 }, // 0x00001EE8
	 { -1759, 363, 426, 0, 617, 1436, 118, 245, 241, 255 }, // 0x00001EF8
	 { -1879, 401, 66, 0, 957, 773, 52, 192, 169, 255 }, // 0x00001F08
	 { -1879, 721, 66, 0, 957, 122, 7, 25, 139, 255 }, // 0x00001F18
	 { -1243, 552, 149, 0, -138, 466, 61, 15, 154, 255 }, // 0x00001F28
	 { -1879, 721, 66, 0, 957, 122, 7, 25, 139, 255 }, // 0x00001F38
	 { -1302, 642, 221, 0, -68, 214, 73, 93, 241, 255 }, // 0x00001F48
	 { -1243, 552, 349, 0, -346, 143, 70, 17, 95, 255 }, // 0x00001F58
	 { -1243, 552, 149, 0, -138, 466, 61, 15, 154, 255 }, // 0x00001F68
	 { -1302, 642, 221, 0, -68, 214, 73, 93, 241, 255 }, // 0x00001F78
	 { -1243, 552, 349, 0, -346, 143, 70, 17, 95, 255 }, // 0x00001F88
	 { -1345, 649, 272, 0, -78, 79, 61, 95, 38, 255 }, // 0x00001F98
	 { -1759, 363, 426, 0, 617, 1436, 118, 245, 241, 255 }, // 0x00001FA8
	 { -1879, 401, 66, 0, 957, 773, 52, 192, 169, 255 }, // 0x00001FB8
	 { -1395, 380, 236, 0, 87, 890, 180, 166, 236, 255 }, // 0x00001FC8
	 { -1879, 121, 66, 0, 1024, 2048, 43, 107, 226, 255 }, // 0x00001FD8
	 { -1879, 401, 66, 0, 995, 1332, 52, 192, 169, 255 }, // 0x00001FE8
	 { -1759, 363, 426, 0, 401, 1278, 118, 245, 241, 255 }, // 0x00001FF8
	 { -1759, 61, 426, 0, 368, 2048, 78, 83, 219, 255 }, // 0x00002008
	 { -1395, 380, 236, 0, -379, 1223, 180, 166, 236, 255 }, // 0x00002018
	 { -1394, 40, 326, 0, -262, 2048, 219, 102, 51, 255 }, // 0x00002028
	 { -1243, 552, 349, 0, -113, 700, 70, 17, 95, 255 }, // 0x00002038
	 { -1257, 30, 257, 0, 0, 2048, 62, 102, 251, 255 }, // 0x00002048
	 { -1243, 552, 149, 0, 183, 749, 61, 15, 154, 255 }, // 0x00002058
	 { -1382, 55, 173, 0, 260, 2048, 238, 108, 208, 255 }, // 0x00002068
	 { -1395, 380, 236, 0, 412, 1221, 180, 166, 236, 255 }, // 0x00002078
	 { -1394, 40, 326, 0, 523, 2048, 219, 102, 51, 255 }, // 0x00002088
	 { -1243, 552, 149, 0, -138, 466, 61, 15, 154, 255 }, // 0x00002098
	 { -1395, 380, 236, 0, 87, 890, 180, 166, 236, 255 }, // 0x000020A8
	 { -1395, 380, 236, 0, 87, 890, 180, 166, 236, 255 }, // 0x000020B8
	 { -1759, 363, 426, 0, 617, 1436, 118, 245, 241, 255 }, // 0x000020C8
};

Vtx_t _spot09_room_0_vertices_000020D8[8] = 
{
	 { -1319, -30, -33, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020D8
	 { -1251, -30, 350, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020E8
	 { -1207, 617, -52, 0, 0, 0, 0, 0, 0, 0 }, // 0x000020F8
	 { -1139, 617, 330, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002108
	 { -2244, 136, 131, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002118
	 { -2177, 136, 513, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002128
	 { -2132, 783, 111, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002138
	 { -2064, 783, 494, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002148
};

Gfx _spot09_room_0_dlist_00002158[] =
{
	gsDPPipeSync(), // 0x00002158
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002160
	gsSPVertex(_spot09_room_0_vertices_000020D8, 8, 0), // 0x00002168
	gsSPCullDisplayList(0, 7), // 0x00002170
	gsDPPipeSync(), // 0x00002178
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002180
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002188
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002190
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x00002198
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000021A0
	gsDPLoadSync(), // 0x000021A8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000021B0
	gsDPPipeSync(), // 0x000021B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000021C0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000021C8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000021D0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000021D8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000021E0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000021E8
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x000021F0
	gsSPVertex(_spot09_room_0_vertices_00001ED8, 32, 0), // 0x000021F8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00002200
	gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0), // 0x00002208
	gsSP2Triangles(11, 10, 12, 0, 13, 14, 15, 0), // 0x00002210
	gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0), // 0x00002218
	gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0), // 0x00002220
	gsSP2Triangles(22, 23, 24, 0, 24, 25, 26, 0), // 0x00002228
	gsSP2Triangles(24, 23, 25, 0, 26, 25, 27, 0), // 0x00002230
	gsSP2Triangles(28, 29, 14, 0, 30, 0, 31, 0), // 0x00002238
	gsSPEndDisplayList(), // 0x00002240
};

Vtx_t _spot09_room_0_vertices_00002248[55] = 
{
	 { -2706, 1051, -279, 0, 1340, -921, 158, 67, 10, 255 }, // 0x00002248
	 { -2716, 952, -579, 0, 2014, -826, 142, 220, 255, 255 }, // 0x00002258
	 { -2714, 947, -299, 0, 1314, -665, 145, 236, 218, 255 }, // 0x00002268
	 { -2706, 1051, -279, 0, 1340, -921, 158, 67, 10, 255 }, // 0x00002278
	 { -2742, 1246, -846, 0, 2235, -1710, 200, 99, 36, 255 }, // 0x00002288
	 { -2716, 952, -579, 0, 2014, -826, 142, 220, 255, 255 }, // 0x00002298
	 { -2497, 910, -307, 0, 1192, 140, 105, 206, 230, 255 }, // 0x000022A8
	 { -2476, 880, -634, 0, 2159, 0, 101, 1, 64, 255 }, // 0x000022B8
	 { -2497, 1066, -287, 0, 1173, 543, 80, 87, 20, 255 }, // 0x000022C8
	 { -2476, 880, -634, 0, 2159, 0, 101, 1, 64, 255 }, // 0x000022D8
	 { -2565, 1283, -962, 0, 2932, 716, 77, 89, 21, 255 }, // 0x000022E8
	 { -2497, 1066, -287, 0, 1173, 543, 80, 87, 20, 255 }, // 0x000022F8
	 { -2497, 1066, -287, 0, 1173, 543, 80, 87, 20, 255 }, // 0x00002308
	 { -2742, 1246, -846, 0, 2571, 1381, 200, 99, 36, 255 }, // 0x00002318
	 { -2706, 1051, -279, 0, 1039, 1265, 158, 67, 10, 255 }, // 0x00002328
	 { -2497, 1066, -287, 0, 1173, 543, 80, 87, 20, 255 }, // 0x00002338
	 { -2742, 1246, -846, 0, 2571, 1381, 200, 99, 36, 255 }, // 0x00002348
	 { -2714, 947, -299, 0, 1314, -665, 145, 236, 218, 255 }, // 0x00002358
	 { -2628, 811, -292, 0, 1219, -261, 248, 146, 209, 255 }, // 0x00002368
	 { -2716, 952, -579, 0, 2014, -826, 142, 220, 255, 255 }, // 0x00002378
	 { -2588, 797, -597, 0, 2006, -334, 243, 137, 4, 255 }, // 0x00002388
	 { -2628, 811, -292, 0, 1219, -261, 248, 146, 209, 255 }, // 0x00002398
	 { -2628, 811, -292, 0, 1219, -261, 248, 146, 209, 255 }, // 0x000023A8
	 { -2476, 880, -634, 0, 2159, 0, 101, 1, 64, 255 }, // 0x000023B8
	 { -2497, 910, -307, 0, 1192, 140, 105, 206, 230, 255 }, // 0x000023C8
	 { -2628, 811, -292, 0, 1219, -261, 248, 146, 209, 255 }, // 0x000023D8
	 { -2588, 797, -597, 0, 2006, -334, 243, 137, 4, 255 }, // 0x000023E8
	 { -2476, 880, -634, 0, 2159, 0, 101, 1, 64, 255 }, // 0x000023F8
	 { -2579, 538, 77, 0, 23, -586, 11, 161, 184, 255 }, // 0x00002408
	 { -2628, 811, -292, 0, 1219, -261, 248, 146, 209, 255 }, // 0x00002418
	 { -2335, 624, 128, 0, -5, -1, 96, 216, 197, 255 }, // 0x00002428
	 { -2628, 811, -292, 0, 1219, -261, 248, 146, 209, 255 }, // 0x00002438
	 { -2497, 910, -307, 0, 1192, 140, 105, 206, 230, 255 }, // 0x00002448
	 { -2335, 624, 128, 0, -5, -2, 96, 216, 197, 255 }, // 0x00002458
	 { -2855, 636, 33, 0, 106, -1048, 179, 200, 183, 255 }, // 0x00002468
	 { -2628, 811, -292, 0, 1219, -261, 248, 146, 209, 255 }, // 0x00002478
	 { -2579, 538, 77, 0, 23, -586, 11, 161, 184, 255 }, // 0x00002488
	 { -2855, 636, 33, 0, 106, -1048, 179, 200, 183, 255 }, // 0x00002498
	 { -2714, 947, -299, 0, 1314, -665, 145, 236, 218, 255 }, // 0x000024A8
	 { -2884, 918, 78, 0, 120, -1496, 224, 72, 166, 255 }, // 0x000024B8
	 { -2714, 947, -299, 0, 1314, -665, 145, 236, 218, 255 }, // 0x000024C8
	 { -2855, 636, 33, 0, 106, -1048, 179, 200, 183, 255 }, // 0x000024D8
	 { -2884, 918, 78, 0, 120, -1496, 224, 72, 166, 255 }, // 0x000024E8
	 { -2706, 1051, -279, 0, 1340, -921, 158, 67, 10, 255 }, // 0x000024F8
	 { -2497, 1066, -287, 0, 1173, 543, 80, 87, 20, 255 }, // 0x00002508
	 { -2706, 1051, -279, 0, 1039, 1265, 158, 67, 10, 255 }, // 0x00002518
	 { -2884, 918, 78, 0, 35, 1382, 224, 72, 166, 255 }, // 0x00002528
	 { -2335, 624, 128, 0, 0, 0, 96, 216, 197, 255 }, // 0x00002538
	 { -2497, 1066, -287, 0, 1173, 543, 80, 87, 20, 255 }, // 0x00002548
	 { -2382, 848, 149, 0, 2, 498, 52, 66, 171, 255 }, // 0x00002558
	 { -2335, 624, 128, 0, 0, 0, 96, 216, 197, 255 }, // 0x00002568
	 { -2497, 910, -307, 0, 1192, 140, 105, 206, 230, 255 }, // 0x00002578
	 { -2382, 848, 149, 0, 2, 498, 52, 66, 171, 255 }, // 0x00002588
	 { -2497, 1066, -287, 0, 1173, 543, 80, 87, 20, 255 }, // 0x00002598
	 { -2884, 918, 78, 0, 35, 1382, 224, 72, 166, 255 }, // 0x000025A8
};

Vtx_t _spot09_room_0_vertices_000025B8[6] = 
{
	 { -2564, 1172, -262, 0, 407, 0, 119, 0, 245, 255 }, // 0x000025B8
	 { -2570, 1058, -285, 0, 407, 512, 119, 0, 245, 255 }, // 0x000025C8
	 { -2617, 1317, -1232, 0, 2389, 512, 119, 3, 250, 255 }, // 0x000025D8
	 { -2617, 1519, -1154, 0, 2389, 0, 67, 80, 58, 255 }, // 0x000025E8
	 { -2481, 754, 561, 0, -915, 0, 118, 253, 241, 255 }, // 0x000025F8
	 { -2481, 301, 561, 0, -915, 512, 118, 253, 241, 255 }, // 0x00002608
};

Vtx_t _spot09_room_0_vertices_00002618[8] = 
{
	 { -2963, 187, 410, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002618
	 { -2402, 187, 508, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002628
	 { -2655, 1213, -1340, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002638
	 { -2094, 1213, -1241, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002648
	 { -3009, 641, 668, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002658
	 { -2448, 641, 767, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002668
	 { -2700, 1667, -1082, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002678
	 { -2139, 1667, -983, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002688
};

Gfx _spot09_room_0_dlist_00002698[] =
{
	gsDPPipeSync(), // 0x00002698
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000026A0
	gsSPVertex(_spot09_room_0_vertices_00002618, 8, 0), // 0x000026A8
	gsSPCullDisplayList(0, 7), // 0x000026B0
	gsDPPipeSync(), // 0x000026B8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000026C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000026C8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000026D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x000026D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000026E0
	gsDPLoadSync(), // 0x000026E8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000026F0
	gsDPPipeSync(), // 0x000026F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002700
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002708
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002710
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002718
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00002720
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00002728
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x00002730
	gsSPVertex(_spot09_room_0_vertices_00002248, 32, 0), // 0x00002738
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00002740
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00002748
	gsSP2Triangles(12, 13, 14, 0, 15, 10, 16, 0), // 0x00002750
	gsSP2Triangles(17, 1, 18, 0, 19, 20, 21, 0), // 0x00002758
	gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0), // 0x00002760
	gsSP1Triangle(28, 29, 30, 0), // 0x00002768
	gsSPVertex(_spot09_room_0_vertices_00002438, 24, 0), // 0x00002770
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00002778
	gsSP2Triangles(6, 7, 4, 0, 8, 9, 10, 0), // 0x00002780
	gsSP2Triangles(11, 12, 9, 0, 13, 14, 15, 0), // 0x00002788
	gsSP2Triangles(16, 17, 18, 0, 19, 20, 17, 0), // 0x00002790
	gsSP1Triangle(21, 22, 23, 0), // 0x00002798
	gsDPPipeSync(), // 0x000027A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000D160), // 0x000027A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 7, 0), // 0x000027B0
	gsDPLoadSync(), // 0x000027B8
	gsDPLoadBlock(7, 0, 0, 2047, 64), // 0x000027C0
	gsDPPipeSync(), // 0x000027C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, 2, 4, 0, 0, 7, 0), // 0x000027D0
	gsDPSetTileSize(0, 0, 0, 508, 60), // 0x000027D8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000027E0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000027E8
	gsSPVertex(_spot09_room_0_vertices_000025B8, 6, 0), // 0x000027F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000027F8
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0), // 0x00002800
	gsSPEndDisplayList(), // 0x00002808
};

Vtx_t _spot09_room_0_vertices_00002810[6] = 
{
	 { 588, 36, 140, 0, 1825, -3, 0, 119, 6, 255 }, // 0x00002810
	 { 305, 36, 140, 0, 1956, 1024, 169, 82, 10, 255 }, // 0x00002820
	 { 400, -26, 792, 0, 0, 1024, 149, 40, 222, 255 }, // 0x00002830
	 { 383, 16, -920, 0, 0, 1024, 158, 62, 27, 255 }, // 0x00002840
	 { 305, 36, -380, 0, 1956, 1024, 169, 82, 248, 255 }, // 0x00002850
	 { 588, 36, -380, 0, 1825, -3, 253, 119, 1, 255 }, // 0x00002860
};

Vtx_t _spot09_room_0_vertices_00002870[9] = 
{
	 { 383, 16, -920, 0, -1163, 3302, 158, 62, 27, 255 }, // 0x00002870
	 { 588, 36, -380, 0, 105, 2475, 253, 119, 1, 255 }, // 0x00002880
	 { 689, 57, -599, 0, -425, 2090, 246, 119, 9, 255 }, // 0x00002890
	 { 1019, 120, -936, 0, -1240, 832, 208, 85, 69, 255 }, // 0x000028A0
	 { 400, -26, 792, 0, 2959, 3189, 149, 40, 222, 255 }, // 0x000028B0
	 { 893, 0, 683, 0, 2677, 1314, 218, 105, 215, 255 }, // 0x000028C0
	 { 588, 36, 140, 0, 1363, 2475, 0, 119, 6, 255 }, // 0x000028D0
	 { 1161, 29, -16, 0, 986, 293, 0, 119, 3, 255 }, // 0x000028E0
	 { 1292, 41, -446, 0, -54, -206, 255, 119, 11, 255 }, // 0x000028F0
};

Vtx_t _spot09_room_0_vertices_00002900[4] = 
{
	 { 1161, 29, -16, 0, 84, 505, 0, 119, 3, 255 }, // 0x00002900
	 { 1226, 29, 26, 0, 0, 1024, 20, 73, 163, 255 }, // 0x00002910
	 { 1372, 43, -453, 0, 2048, 1024, 228, 81, 84, 255 }, // 0x00002920
	 { 1292, 41, -446, 0, 1923, 505, 255, 119, 11, 255 }, // 0x00002930
};

Vtx_t _spot09_room_0_vertices_00002940[11] = 
{
	 { 1226, 29, 26, 0, 1086, 45, 20, 73, 163, 255 }, // 0x00002940
	 { 1161, 29, -16, 0, 986, 293, 0, 119, 3, 255 }, // 0x00002950
	 { 893, 0, 683, 0, 2677, 1314, 218, 105, 215, 255 }, // 0x00002960
	 { 588, 36, 140, 0, 1363, 2475, 0, 119, 6, 255 }, // 0x00002970
	 { 689, 57, -599, 0, -425, 2090, 246, 119, 9, 255 }, // 0x00002980
	 { 1292, 41, -446, 0, -54, -206, 255, 119, 11, 255 }, // 0x00002990
	 { 1019, 120, -936, 0, -1240, 832, 208, 85, 69, 255 }, // 0x000029A0
	 { 588, 36, -380, 0, 105, 2475, 253, 119, 1, 255 }, // 0x000029B0
	 { 1372, 43, -453, 0, -72, -510, 228, 81, 84, 255 }, // 0x000029C0
	 { 588, 36, -207, 0, 524, 2475, 253, 119, 1, 255 }, // 0x000029D0
	 { 588, 36, -33, 0, 943, 2475, 253, 119, 1, 255 }, // 0x000029E0
};

Vtx_t _spot09_room_0_vertices_000029F0[8] = 
{
	 { 305, -26, -936, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029F0
	 { 1372, -26, -936, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A00
	 { 305, 120, -936, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A10
	 { 1372, 120, -936, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A20
	 { 305, -26, 792, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A30
	 { 1372, -26, 792, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A40
	 { 305, 120, 792, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A50
	 { 1372, 120, 792, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A60
};

Gfx _spot09_room_0_dlist_00002A70[] =
{
	gsDPPipeSync(), // 0x00002A70
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002A78
	gsSPVertex(_spot09_room_0_vertices_000029F0, 8, 0), // 0x00002A80
	gsSPCullDisplayList(0, 7), // 0x00002A88
	gsDPPipeSync(), // 0x00002A90
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002A98
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002AA0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002AA8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00007160), // 0x00002AB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00002AB8
	gsDPLoadSync(), // 0x00002AC0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002AC8
	gsDPPipeSync(), // 0x00002AD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00002AD8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002AE0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002AE8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002AF0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00002AF8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00002B00
	gsDPSetPrimColor(0, 0, 255, 223, 200, 255), // 0x00002B08
	gsSPVertex(_spot09_room_0_vertices_00002810, 6, 0), // 0x00002B10
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00002B18
	gsDPPipeSync(), // 0x00002B20
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000A960), // 0x00002B28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002B30
	gsDPLoadSync(), // 0x00002B38
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00002B40
	gsDPPipeSync(), // 0x00002B48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002B50
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002B58
	gsSPVertex(_spot09_room_0_vertices_00002870, 9, 0), // 0x00002B60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002B68
	gsSP2Triangles(4, 5, 6, 0, 1, 7, 8, 0), // 0x00002B70
	gsDPPipeSync(), // 0x00002B78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00007160), // 0x00002B80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00002B88
	gsDPLoadSync(), // 0x00002B90
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002B98
	gsDPPipeSync(), // 0x00002BA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00002BA8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002BB0
	gsSPVertex(_spot09_room_0_vertices_00002900, 4, 0), // 0x00002BB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002BC0
	gsDPPipeSync(), // 0x00002BC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000A960), // 0x00002BD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002BD8
	gsDPLoadSync(), // 0x00002BE0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00002BE8
	gsDPPipeSync(), // 0x00002BF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002BF8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002C00
	gsSPVertex(_spot09_room_0_vertices_00002940, 11, 0), // 0x00002C08
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002C10
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00002C18
	gsSP2Triangles(5, 8, 6, 0, 1, 7, 9, 0), // 0x00002C20
	gsSP2Triangles(1, 9, 10, 0, 1, 10, 3, 0), // 0x00002C28
	gsSPEndDisplayList(), // 0x00002C30
};

Vtx_t _spot09_room_0_vertices_00002C38[3] = 
{
	 { -5206, 680, -1017, 0, 2976, -5567, 84, 72, 46, 255 }, // 0x00002C38
	 { -4566, 401, -1163, 0, 3401, -4632, 17, 102, 196, 255 }, // 0x00002C48
	 { -4686, 401, -1523, 0, 4454, -4807, 53, 55, 92, 255 }, // 0x00002C58
};

Vtx_t _spot09_room_0_vertices_00002C68[8] = 
{
	 { -2436, 124, -554, 0, 741, -3168, 37, 78, 82, 255 }, // 0x00002C68
	 { -2860, 186, -554, 0, 741, -4580, 226, 89, 74, 255 }, // 0x00002C78
	 { -3179, 218, -115, 0, -110, -5643, 65, 74, 189, 255 }, // 0x00002C88
	 { -2228, 100, 76, 0, -481, -2474, 7, 62, 154, 255 }, // 0x00002C98
	 { -3180, 266, -994, 0, 1594, -5647, 183, 56, 76, 255 }, // 0x00002CA8
	 { -3537, 266, -835, 0, 1285, -6837, 67, 93, 222, 255 }, // 0x00002CB8
	 { -3896, 359, -1195, 0, 1983, -8035, 46, 68, 169, 255 }, // 0x00002CC8
	 { -3850, 401, -1557, 0, 2681, -8036, 238, 86, 82, 255 }, // 0x00002CD8
};

Vtx_t _spot09_room_0_vertices_00002CE8[4] = 
{
	 { -3850, 401, -1557, 0, 4549, -3653, 238, 86, 82, 255 }, // 0x00002CE8
	 { -4686, 401, -1523, 0, 4454, -4807, 53, 55, 92, 255 }, // 0x00002CF8
	 { -4566, 401, -1163, 0, 3401, -4632, 17, 102, 196, 255 }, // 0x00002D08
	 { -3896, 359, -1195, 0, 3495, -3652, 46, 68, 169, 255 }, // 0x00002D18
};

Vtx_t _spot09_room_0_vertices_00002D28[8] = 
{
	 { -2588, 25, -1892, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002D28
	 { -2241, 25, 78, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002D38
	 { -2559, 193, -1898, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002D48
	 { -2211, 193, 73, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002D58
	 { -5306, 512, -1413, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002D68
	 { -4958, 512, 558, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002D78
	 { -5276, 680, -1418, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002D88
	 { -4929, 680, 552, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002D98
};

Gfx _spot09_room_0_dlist_00002DA8[] =
{
	gsDPPipeSync(), // 0x00002DA8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002DB0
	gsSPVertex(_spot09_room_0_vertices_00002D28, 8, 0), // 0x00002DB8
	gsSPCullDisplayList(0, 7), // 0x00002DC0
	gsDPPipeSync(), // 0x00002DC8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002DD0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002DD8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002DE0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00004460), // 0x00002DE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002DF0
	gsDPLoadSync(), // 0x00002DF8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002E00
	gsDPPipeSync(), // 0x00002E08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002E10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002E18
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002E20
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002E28
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00002E30
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00002E38
	gsDPSetPrimColor(0, 0, 255, 236, 224, 255), // 0x00002E40
	gsSPVertex(_spot09_room_0_vertices_00002C38, 3, 0), // 0x00002E48
	gsSP1Triangle(0, 1, 2, 0), // 0x00002E50
	gsDPPipeSync(), // 0x00002E58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000A960), // 0x00002E60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002E68
	gsDPLoadSync(), // 0x00002E70
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00002E78
	gsDPPipeSync(), // 0x00002E80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002E88
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002E90
	gsDPSetPrimColor(0, 0, 255, 223, 200, 255), // 0x00002E98
	gsSPVertex(_spot09_room_0_vertices_00002C68, 8, 0), // 0x00002EA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002EA8
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00002EB0
	gsSP2Triangles(4, 6, 5, 0, 4, 7, 6, 0), // 0x00002EB8
	gsDPPipeSync(), // 0x00002EC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00004460), // 0x00002EC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002ED0
	gsDPLoadSync(), // 0x00002ED8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002EE0
	gsDPPipeSync(), // 0x00002EE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002EF0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002EF8
	gsDPSetPrimColor(0, 0, 255, 236, 224, 255), // 0x00002F00
	gsSPVertex(_spot09_room_0_vertices_00002CE8, 4, 0), // 0x00002F08
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002F10
	gsSPEndDisplayList(), // 0x00002F18
};

Vtx_t _spot09_room_0_vertices_00002F20[4] = 
{
	 { 1226, 29, 26, 0, 0, 0, 20, 73, 163, 255 }, // 0x00002F20
	 { 1335, -202, 77, 0, -71, 844, 54, 103, 230, 255 }, // 0x00002F30
	 { 1473, -202, -351, 0, 1768, 889, 17, 108, 47, 255 }, // 0x00002F40
	 { 1372, 43, -453, 0, 2048, 0, 228, 81, 84, 255 }, // 0x00002F50
};

Vtx_t _spot09_room_0_vertices_00002F60[15] = 
{
	 { 1942, -116, 94, 0, 826, -1418, 20, 0, 138, 255 }, // 0x00002F60
	 { 1893, -202, 16, 0, 647, -1223, 233, 107, 209, 255 }, // 0x00002F70
	 { 1888, -122, 106, 0, 855, -1204, 149, 3, 203, 255 }, // 0x00002F80
	 { 1817, -202, 157, 0, 975, -920, 207, 109, 10, 255 }, // 0x00002F90
	 { 1913, -117, 150, 0, 957, -1304, 178, 252, 91, 255 }, // 0x00002FA0
	 { 2089, -117, 154, 0, 966, -2008, 54, 99, 217, 255 }, // 0x00002FB0
	 { 2051, -117, 224, 0, 1130, -1856, 5, 96, 70, 255 }, // 0x00002FC0
	 { 2176, -115, -7, 0, 592, -2353, 217, 93, 64, 255 }, // 0x00002FD0
	 { 1952, -202, -112, 0, 348, -1459, 203, 65, 85, 255 }, // 0x00002FE0
	 { 1966, -119, 382, 0, 1497, -1517, 36, 74, 169, 255 }, // 0x00002FF0
	 { 1733, -202, 274, 0, 1247, -586, 35, 64, 161, 255 }, // 0x00003000
	 { 1335, -202, 77, 0, 787, 1003, 54, 103, 230, 255 }, // 0x00003010
	 { 1473, -202, -351, 0, -207, 450, 17, 108, 47, 255 }, // 0x00003020
	 { 2451, -234, 512, 0, 1801, -3453, 60, 94, 214, 255 }, // 0x00003030
	 { 2764, -234, 268, 0, 1233, -4700, 203, 93, 53, 255 }, // 0x00003040
};

Vtx_t _spot09_room_0_vertices_00003050[8] = 
{
	 { 1408, -234, -515, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003050
	 { 2764, -234, 268, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003060
	 { 1408, 43, -515, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003070
	 { 2764, 43, 268, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003080
	 { 1129, -234, -31, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003090
	 { 2485, -234, 752, 0, 0, 0, 0, 0, 0, 0 }, // 0x000030A0
	 { 1129, 43, -31, 0, 0, 0, 0, 0, 0, 0 }, // 0x000030B0
	 { 2485, 43, 752, 0, 0, 0, 0, 0, 0, 0 }, // 0x000030C0
};

Gfx _spot09_room_0_dlist_000030D0[] =
{
	gsDPPipeSync(), // 0x000030D0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000030D8
	gsSPVertex(_spot09_room_0_vertices_00003050, 8, 0), // 0x000030E0
	gsSPCullDisplayList(0, 7), // 0x000030E8
	gsDPPipeSync(), // 0x000030F0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000030F8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003100
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003108
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00008160), // 0x00003110
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00003118
	gsDPLoadSync(), // 0x00003120
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003128
	gsDPPipeSync(), // 0x00003130
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00003138
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003140
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003148
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003150
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00003158
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00003160
	gsDPSetPrimColor(0, 0, 255, 223, 200, 255), // 0x00003168
	gsSPVertex(_spot09_room_0_vertices_00002F20, 4, 0), // 0x00003170
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003178
	gsDPPipeSync(), // 0x00003180
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000A960), // 0x00003188
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003190
	gsDPLoadSync(), // 0x00003198
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000031A0
	gsDPPipeSync(), // 0x000031A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000031B0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000031B8
	gsSPVertex(_spot09_room_0_vertices_00002F60, 15, 0), // 0x000031C0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000031C8
	gsSP2Triangles(3, 4, 2, 0, 5, 1, 0, 0), // 0x000031D0
	gsSP2Triangles(4, 3, 6, 0, 5, 7, 8, 0), // 0x000031D8
	gsSP2Triangles(5, 8, 1, 0, 9, 6, 3, 0), // 0x000031E0
	gsSP2Triangles(9, 3, 10, 0, 10, 3, 11, 0), // 0x000031E8
	gsSP2Triangles(1, 8, 12, 0, 1, 12, 11, 0), // 0x000031F0
	gsSP2Triangles(1, 11, 3, 0, 6, 9, 13, 0), // 0x000031F8
	gsSP2Triangles(5, 14, 7, 0, 5, 6, 13, 0), // 0x00003200
	gsSP1Triangle(5, 13, 14, 0), // 0x00003208
	gsSPEndDisplayList(), // 0x00003210
};

Vtx_t _spot09_room_0_vertices_00003218[7] = 
{
	 { 2451, -234, 512, 0, 1801, -3453, 60, 94, 214, 255 }, // 0x00003218
	 { 2855, -284, 756, 0, 2369, -5064, 213, 103, 44, 255 }, // 0x00003228
	 { 2764, -234, 268, 0, 1233, -4700, 203, 93, 53, 255 }, // 0x00003238
	 { 2582, -281, 1092, 0, 3150, -3974, 57, 101, 228, 255 }, // 0x00003248
	 { 3440, -368, 1104, 0, 3178, -7401, 180, 87, 31, 255 }, // 0x00003258
	 { 3047, -368, 1291, 0, 3613, -5829, 46, 83, 184, 255 }, // 0x00003268
	 { 2967, -368, 2011, 0, 5289, -5510, 181, 84, 217, 255 }, // 0x00003278
};

Vtx_t _spot09_room_0_vertices_00003288[8] = 
{
	 { 3093, -368, 149, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003288
	 { 3677, -368, 1753, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003298
	 { 3093, -234, 149, 0, 0, 0, 0, 0, 0, 0 }, // 0x000032A8
	 { 3677, -234, 1753, 0, 0, 0, 0, 0, 0, 0 }, // 0x000032B8
	 { 2339, -368, 423, 0, 0, 0, 0, 0, 0, 0 }, // 0x000032C8
	 { 2922, -368, 2027, 0, 0, 0, 0, 0, 0, 0 }, // 0x000032D8
	 { 2339, -234, 423, 0, 0, 0, 0, 0, 0, 0 }, // 0x000032E8
	 { 2922, -234, 2027, 0, 0, 0, 0, 0, 0, 0 }, // 0x000032F8
};

Gfx _spot09_room_0_dlist_00003308[] =
{
	gsDPPipeSync(), // 0x00003308
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003310
	gsSPVertex(_spot09_room_0_vertices_00003288, 8, 0), // 0x00003318
	gsSPCullDisplayList(0, 7), // 0x00003320
	gsDPPipeSync(), // 0x00003328
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003330
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003338
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003340
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000A960), // 0x00003348
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003350
	gsDPLoadSync(), // 0x00003358
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003360
	gsDPPipeSync(), // 0x00003368
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003370
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003378
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003380
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003388
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00003390
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00003398
	gsDPSetPrimColor(0, 0, 255, 223, 200, 255), // 0x000033A0
	gsSPVertex(_spot09_room_0_vertices_00003218, 7, 0), // 0x000033A8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000033B0
	gsSP2Triangles(3, 4, 1, 0, 3, 5, 4, 0), // 0x000033B8
	gsSP1Triangle(5, 6, 4, 0), // 0x000033C0
	gsSPEndDisplayList(), // 0x000033C8
};

Vtx_t _spot09_room_0_vertices_000033D0[6] = 
{
	 { -400, -50, 785, 0, 0, 1024, 107, 43, 226, 255 }, // 0x000033D0
	 { -305, 36, 140, 0, 1956, 1024, 87, 81, 11, 255 }, // 0x000033E0
	 { -588, 36, 140, 0, 1825, -3, 0, 119, 4, 255 }, // 0x000033F0
	 { -588, 36, -380, 0, 1825, -3, 1, 119, 252, 255 }, // 0x00003400
	 { -305, 36, -380, 0, 1956, 1024, 87, 82, 248, 255 }, // 0x00003410
	 { -396, 0, -1052, 0, 0, 1024, 100, 48, 44, 255 }, // 0x00003420
};

Vtx_t _spot09_room_0_vertices_00003430[24] = 
{
	 { -1360, 80, 920, 0, -2117, 418, 27, 97, 192, 255 }, // 0x00003430
	 { -588, 36, 140, 0, -605, 2992, 0, 119, 4, 255 }, // 0x00003440
	 { -1257, 30, 257, 0, -831, 761, 62, 102, 251, 255 }, // 0x00003450
	 { -400, -50, 785, 0, -1885, 3617, 107, 43, 226, 255 }, // 0x00003460
	 { -1556, 0, -1212, 0, 2016, -235, 30, 91, 71, 255 }, // 0x00003470
	 { -1879, 121, 66, 0, -462, -1311, 43, 107, 226, 255 }, // 0x00003480
	 { -1382, 55, 173, 0, -669, 344, 238, 108, 208, 255 }, // 0x00003490
	 { -2036, 81, -852, 0, 1318, -1835, 55, 90, 57, 255 }, // 0x000034A0
	 { -2436, 124, -554, 0, 741, -3168, 37, 78, 82, 255 }, // 0x000034B0
	 { -2228, 100, 76, 0, -481, -2474, 7, 62, 154, 255 }, // 0x000034C0
	 { -396, 0, -1052, 0, 1706, 3631, 100, 48, 44, 255 }, // 0x000034D0
	 { -836, 0, -1212, 0, 2016, 2165, 242, 90, 78, 255 }, // 0x000034E0
	 { -588, 36, -380, 0, 403, 2992, 1, 119, 252, 255 }, // 0x000034F0
	 { -1759, 61, 426, 0, -1160, -911, 78, 83, 219, 255 }, // 0x00003500
	 { -1394, 40, 326, 0, -966, 305, 219, 102, 51, 255 }, // 0x00003510
	 { -1312, 15, -308, 0, 264, 577, 5, 119, 253, 255 }, // 0x00003520
	 { -1382, 15, -1021, 0, 1647, 345, 254, 119, 252, 255 }, // 0x00003530
	 { -891, 15, -1051, 0, 1704, 1980, 7, 119, 252, 255 }, // 0x00003540
	 { -1312, 15, -308, 0, 264, 577, 5, 119, 253, 255 }, // 0x00003550
	 { -762, 15, -363, 0, 370, 2412, 2, 119, 254, 255 }, // 0x00003560
	 { -891, 15, -1051, 0, 1704, 1980, 7, 119, 252, 255 }, // 0x00003570
	 { -836, 0, -1212, 0, 2016, 2165, 242, 90, 78, 255 }, // 0x00003580
	 { -588, 36, -207, 0, 67, 2992, 0, 119, 4, 255 }, // 0x00003590
	 { -588, 36, -33, 0, -269, 2992, 0, 119, 4, 255 }, // 0x000035A0
};

Vtx_t _spot09_room_0_vertices_000035B0[8] = 
{
	 { -458, -50, -1405, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035B0
	 { -82, -50, 729, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035C0
	 { -458, 124, -1405, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035D0
	 { -82, 124, 729, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035E0
	 { -2522, -50, -1041, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035F0
	 { -2146, -50, 1093, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003600
	 { -2522, 124, -1041, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003610
	 { -2146, 124, 1093, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003620
};

Gfx _spot09_room_0_dlist_00003630[] =
{
	gsDPPipeSync(), // 0x00003630
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003638
	gsSPVertex(_spot09_room_0_vertices_000035B0, 8, 0), // 0x00003640
	gsSPCullDisplayList(0, 7), // 0x00003648
	gsDPPipeSync(), // 0x00003650
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003658
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003660
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003668
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00007160), // 0x00003670
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00003678
	gsDPLoadSync(), // 0x00003680
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003688
	gsDPPipeSync(), // 0x00003690
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00003698
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000036A0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000036A8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000036B0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000036B8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000036C0
	gsDPSetPrimColor(0, 0, 255, 223, 200, 255), // 0x000036C8
	gsSPVertex(_spot09_room_0_vertices_000033D0, 6, 0), // 0x000036D0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000036D8
	gsDPPipeSync(), // 0x000036E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000A960), // 0x000036E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000036F0
	gsDPLoadSync(), // 0x000036F8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003700
	gsDPPipeSync(), // 0x00003708
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003710
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003718
	gsSPVertex(_spot09_room_0_vertices_00003430, 24, 0), // 0x00003720
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00003728
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00003730
	gsSP2Triangles(7, 8, 5, 0, 8, 9, 5, 0), // 0x00003738
	gsSP2Triangles(10, 11, 12, 0, 5, 13, 14, 0), // 0x00003740
	gsSP2Triangles(5, 14, 6, 0, 13, 0, 14, 0), // 0x00003748
	gsSP2Triangles(0, 2, 14, 0, 15, 16, 4, 0), // 0x00003750
	gsSP2Triangles(15, 4, 6, 0, 17, 16, 18, 0), // 0x00003758
	gsSP2Triangles(17, 18, 19, 0, 4, 16, 20, 0), // 0x00003760
	gsSP2Triangles(4, 20, 21, 0, 17, 19, 12, 0), // 0x00003768
	gsSP2Triangles(17, 12, 21, 0, 19, 15, 2, 0), // 0x00003770
	gsSP2Triangles(19, 2, 1, 0, 15, 6, 2, 0), // 0x00003778
	gsSP2Triangles(19, 22, 12, 0, 19, 1, 23, 0), // 0x00003780
	gsSP1Triangle(19, 23, 22, 0), // 0x00003788
	gsSPEndDisplayList(), // 0x00003790
};

Vtx_t _spot09_room_0_vertices_00003798[22] = 
{
	 { 948, 870, -1922, 0, 4096, 512, 157, 54, 41, 255 }, // 0x00003798
	 { 1186, 1283, -2008, 0, 4096, 0, 157, 54, 41, 255 }, // 0x000037A8
	 { 983, 1062, -3648, 0, 1109, -4, 144, 43, 2, 255 }, // 0x000037B8
	 { 800, 606, -4000, 0, 912, 512, 145, 41, 237, 255 }, // 0x000037C8
	 { 3621, 737, -429, 0, 3384, 512, 174, 71, 50, 255 }, // 0x000037D8
	 { 3874, 1114, -463, 0, 3384, 0, 174, 71, 50, 255 }, // 0x000037E8
	 { 3148, 1137, -931, 0, 2528, 12, 215, 50, 101, 255 }, // 0x000037F8
	 { 3021, 737, -749, 0, 2465, 512, 215, 50, 101, 255 }, // 0x00003808
	 { 1787, 1277, -1317, 0, 1061, 4, 202, 51, 93, 255 }, // 0x00003818
	 { 1680, 877, -1194, 0, 1061, 516, 202, 51, 93, 255 }, // 0x00003828
	 { 3021, 737, -749, 0, 2514, 516, 215, 50, 101, 255 }, // 0x00003838
	 { 3148, 1137, -931, 0, 2514, 4, 215, 50, 101, 255 }, // 0x00003848
	 { 1186, 1283, -2008, 0, 1937, 0, 157, 54, 41, 255 }, // 0x00003858
	 { 948, 870, -1922, 0, 1937, 512, 157, 54, 41, 255 }, // 0x00003868
	 { 1680, 877, -1194, 0, 4096, 512, 202, 51, 93, 255 }, // 0x00003878
	 { 1787, 1277, -1317, 0, 4096, 0, 202, 51, 93, 255 }, // 0x00003888
	 { 3440, 325, 1104, 0, 4852, 512, 145, 31, 30, 255 }, // 0x00003898
	 { 3714, 904, 339, 0, 4096, 0, 161, 71, 9, 255 }, // 0x000038A8
	 { 3298, 330, 485, 0, 4096, 512, 161, 71, 9, 255 }, // 0x000038B8
	 { 3874, 1114, -463, 0, 1820, 0, 174, 71, 50, 255 }, // 0x000038C8
	 { 3621, 737, -429, 0, 2075, 521, 174, 71, 50, 255 }, // 0x000038D8
	 { 3298, 330, 485, 0, 4096, 512, 161, 71, 9, 255 }, // 0x000038E8
};

Vtx_t _spot09_room_0_vertices_000038F8[4] = 
{
	 { 3440, 325, 1104, 0, 4106, 280, 145, 31, 30, 255 }, // 0x000038F8
	 { 3440, -368, 1104, 0, 4173, 2048, 180, 87, 31, 255 }, // 0x00003908
	 { 2967, 32, 2011, 0, 5919, 1024, 150, 0, 201, 255 }, // 0x00003918
	 { 2967, -368, 2011, 0, 5919, 2048, 181, 84, 217, 255 }, // 0x00003928
};

Vtx_t _spot09_room_0_vertices_00003938[4] = 
{
	 { 2946, 373, 89, 0, 3683, 890, 190, 84, 53, 255 }, // 0x00003938
	 { 3444, 773, -212, 0, 3446, 2302, 197, 98, 33, 255 }, // 0x00003948
	 { 2844, 773, -532, 0, 2259, 2001, 238, 97, 68, 255 }, // 0x00003958
	 { 2303, 335, -75, 0, 2393, 231, 220, 54, 100, 255 }, // 0x00003968
};

Vtx_t _spot09_room_0_vertices_00003978[6] = 
{
	 { 3440, -368, 1104, 0, 4173, 2048, 180, 87, 31, 255 }, // 0x00003978
	 { 2855, 328, 756, 0, 2888, 486, 152, 30, 51, 255 }, // 0x00003988
	 { 2855, -284, 756, 0, 3002, 2048, 213, 103, 44, 255 }, // 0x00003998
	 { 3440, 325, 1104, 0, 4106, 280, 145, 31, 30, 255 }, // 0x000039A8
	 { 2764, -234, 268, 0, 2150, 2048, 203, 93, 53, 255 }, // 0x000039B8
	 { 2946, 373, 89, 0, 1932, 421, 190, 84, 53, 255 }, // 0x000039C8
};

Vtx_t _spot09_room_0_vertices_000039D8[3] = 
{
	 { 2946, 373, 89, 0, 3683, 890, 190, 84, 53, 255 }, // 0x000039D8
	 { 2855, 328, 756, 0, 5122, 630, 152, 30, 51, 255 }, // 0x000039E8
	 { 3444, 773, -212, 0, 3446, 2302, 197, 98, 33, 255 }, // 0x000039F8
};

Vtx_t _spot09_room_0_vertices_00003A08[4] = 
{
	 { 2764, -234, 268, 0, 2150, 2048, 203, 93, 53, 255 }, // 0x00003A08
	 { 2303, 335, -75, 0, 1158, 829, 220, 54, 100, 255 }, // 0x00003A18
	 { 2176, -115, -7, 0, 1024, 2048, 217, 93, 64, 255 }, // 0x00003A28
	 { 2946, 373, 89, 0, 1932, 421, 190, 84, 53, 255 }, // 0x00003A38
};

Vtx_t _spot09_room_0_vertices_00003A48[8] = 
{
	 { 1409, 604, -445, 0, 226, 45, 199, 55, 90, 255 }, // 0x00003A48
	 { 2844, 773, -532, 0, 2259, 2001, 238, 97, 68, 255 }, // 0x00003A58
	 { 1645, 885, -908, 0, -226, 1277, 228, 105, 49, 255 }, // 0x00003A68
	 { 2303, 335, -75, 0, 2393, 231, 220, 54, 100, 255 }, // 0x00003A78
	 { 1004, 692, -998, 0, -1239, -264, 206, 73, 81, 255 }, // 0x00003A88
	 { 770, 906, -1704, 0, -2835, 477, 197, 102, 22, 255 }, // 0x00003A98
	 { 1004, 692, -998, 0, -1239, -264, 206, 73, 81, 255 }, // 0x00003AA8
	 { 1409, 604, -445, 0, 226, 45, 199, 55, 90, 255 }, // 0x00003AB8
};

Vtx_t _spot09_room_0_vertices_00003AC8[4] = 
{
	 { 1372, 43, -453, 0, -1355, 2048, 228, 81, 84, 255 }, // 0x00003AC8
	 { 1409, 604, -445, 0, -1430, 612, 199, 55, 90, 255 }, // 0x00003AD8
	 { 1019, 120, -936, 0, -2384, 2048, 208, 85, 69, 255 }, // 0x00003AE8
	 { 1004, 692, -998, 0, -2369, 597, 206, 73, 81, 255 }, // 0x00003AF8
};

Vtx_t _spot09_room_0_vertices_00003B08[3] = 
{
	 { 471, 518, -1141, 0, -2256, -1024, 173, 73, 46, 255 }, // 0x00003B08
	 { 1004, 692, -998, 0, -1239, -264, 206, 73, 81, 255 }, // 0x00003B18
	 { 770, 906, -1704, 0, -2835, 477, 197, 102, 22, 255 }, // 0x00003B28
};

Vtx_t _spot09_room_0_vertices_00003B38[4] = 
{
	 { 1019, 120, -936, 0, -2384, 2048, 208, 85, 69, 255 }, // 0x00003B38
	 { 1004, 692, -998, 0, -2369, 597, 206, 73, 81, 255 }, // 0x00003B48
	 { 383, 16, -920, 0, -3485, 2048, 158, 62, 27, 255 }, // 0x00003B58
	 { 471, 518, -1141, 0, -3236, 676, 173, 73, 46, 255 }, // 0x00003B68
};

Vtx_t _spot09_room_0_vertices_00003B78[4] = 
{
	 { 770, 906, -1704, 0, -2835, 477, 197, 102, 22, 255 }, // 0x00003B78
	 { 400, 606, -2400, 0, -4956, -566, 146, 46, 250, 255 }, // 0x00003B88
	 { 471, 518, -1141, 0, -2256, -1024, 173, 73, 46, 255 }, // 0x00003B98
	 { 800, 606, -4000, 0, -8298, 734, 145, 41, 237, 255 }, // 0x00003BA8
};

Vtx_t _spot09_room_0_vertices_00003BB8[6] = 
{
	 { 2303, 335, -75, 0, 1158, 829, 220, 54, 100, 255 }, // 0x00003BB8
	 { 1952, -202, -112, 0, 576, 2048, 203, 65, 85, 255 }, // 0x00003BC8
	 { 2176, -115, -7, 0, 1024, 2048, 217, 93, 64, 255 }, // 0x00003BD8
	 { 1473, -202, -351, 0, -336, 2048, 17, 108, 47, 255 }, // 0x00003BE8
	 { 1372, 43, -453, 0, -568, 1410, 228, 81, 84, 255 }, // 0x00003BF8
	 { 1409, 604, -445, 0, -507, 93, 199, 55, 90, 255 }, // 0x00003C08
};

Vtx_t _spot09_room_0_vertices_00003C18[8] = 
{
	 { -558, -881, -2860, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C18
	 { 3297, -881, 1734, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C28
	 { 1028, 856, -4191, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C38
	 { 4883, 856, 403, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C48
	 { -1186, 95, -2333, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C58
	 { 2669, 95, 2261, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C68
	 { 400, 1833, -3664, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C78
	 { 4255, 1833, 930, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C88
};

Gfx _spot09_room_0_dlist_00003C98[] =
{
	gsDPPipeSync(), // 0x00003C98
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003CA0
	gsSPVertex(_spot09_room_0_vertices_00003C18, 8, 0), // 0x00003CA8
	gsSPCullDisplayList(0, 7), // 0x00003CB0
	gsDPPipeSync(), // 0x00003CB8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003CC0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003CC8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003CD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000D160), // 0x00003CD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 7, 0), // 0x00003CE0
	gsDPLoadSync(), // 0x00003CE8
	gsDPLoadBlock(7, 0, 0, 2047, 64), // 0x00003CF0
	gsDPPipeSync(), // 0x00003CF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, 2, 4, 0, 0, 7, 0), // 0x00003D00
	gsDPSetTileSize(0, 0, 0, 508, 60), // 0x00003D08
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003D10
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00003D18
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00003D20
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00003D28
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x00003D30
	gsSPVertex(_spot09_room_0_vertices_00003798, 22, 0), // 0x00003D38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003D40
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003D48
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003D50
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003D58
	gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0), // 0x00003D60
	gsSP1Triangle(19, 21, 17, 0), // 0x00003D68
	gsDPPipeSync(), // 0x00003D70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x00003D78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003D80
	gsDPLoadSync(), // 0x00003D88
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003D90
	gsDPPipeSync(), // 0x00003D98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003DA0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003DA8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003DB0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003DB8
	gsSPVertex(_spot09_room_0_vertices_000038F8, 4, 0), // 0x00003DC0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00003DC8
	gsDPPipeSync(), // 0x00003DD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00003DD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003DE0
	gsDPLoadSync(), // 0x00003DE8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003DF0
	gsDPPipeSync(), // 0x00003DF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003E00
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003E08
	gsSPVertex(_spot09_room_0_vertices_00003938, 4, 0), // 0x00003E10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003E18
	gsDPPipeSync(), // 0x00003E20
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x00003E28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003E30
	gsDPLoadSync(), // 0x00003E38
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003E40
	gsDPPipeSync(), // 0x00003E48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003E50
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003E58
	gsSPVertex(_spot09_room_0_vertices_00003978, 6, 0), // 0x00003E60
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00003E68
	gsSP2Triangles(2, 1, 4, 0, 1, 5, 4, 0), // 0x00003E70
	gsDPPipeSync(), // 0x00003E78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00003E80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003E88
	gsDPLoadSync(), // 0x00003E90
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003E98
	gsDPPipeSync(), // 0x00003EA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003EA8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003EB0
	gsSPVertex(_spot09_room_0_vertices_000039D8, 3, 0), // 0x00003EB8
	gsSP1Triangle(0, 1, 2, 0), // 0x00003EC0
	gsDPPipeSync(), // 0x00003EC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x00003ED0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003ED8
	gsDPLoadSync(), // 0x00003EE0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003EE8
	gsDPPipeSync(), // 0x00003EF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003EF8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003F00
	gsSPVertex(_spot09_room_0_vertices_00003A08, 4, 0), // 0x00003F08
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00003F10
	gsDPPipeSync(), // 0x00003F18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00003F20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003F28
	gsDPLoadSync(), // 0x00003F30
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003F38
	gsDPPipeSync(), // 0x00003F40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003F48
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003F50
	gsSPVertex(_spot09_room_0_vertices_00003A48, 8, 0), // 0x00003F58
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00003F60
	gsSP2Triangles(4, 2, 5, 0, 6, 7, 2, 0), // 0x00003F68
	gsDPPipeSync(), // 0x00003F70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x00003F78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003F80
	gsDPLoadSync(), // 0x00003F88
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003F90
	gsDPPipeSync(), // 0x00003F98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003FA0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003FA8
	gsSPVertex(_spot09_room_0_vertices_00003AC8, 4, 0), // 0x00003FB0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00003FB8
	gsDPPipeSync(), // 0x00003FC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00003FC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003FD0
	gsDPLoadSync(), // 0x00003FD8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003FE0
	gsDPPipeSync(), // 0x00003FE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003FF0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003FF8
	gsSPVertex(_spot09_room_0_vertices_00003B08, 3, 0), // 0x00004000
	gsSP1Triangle(0, 1, 2, 0), // 0x00004008
	gsDPPipeSync(), // 0x00004010
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x00004018
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00004020
	gsDPLoadSync(), // 0x00004028
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004030
	gsDPPipeSync(), // 0x00004038
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00004040
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004048
	gsSPVertex(_spot09_room_0_vertices_00003B38, 4, 0), // 0x00004050
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004058
	gsDPPipeSync(), // 0x00004060
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00004068
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004070
	gsDPLoadSync(), // 0x00004078
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004080
	gsDPPipeSync(), // 0x00004088
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004090
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004098
	gsSPVertex(_spot09_room_0_vertices_00003B78, 4, 0), // 0x000040A0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000040A8
	gsDPPipeSync(), // 0x000040B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x000040B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000040C0
	gsDPLoadSync(), // 0x000040C8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000040D0
	gsDPPipeSync(), // 0x000040D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000040E0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000040E8
	gsSPVertex(_spot09_room_0_vertices_00003BB8, 6, 0), // 0x000040F0
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0), // 0x000040F8
	gsSP2Triangles(5, 1, 0, 0, 4, 1, 5, 0), // 0x00004100
	gsSPEndDisplayList(), // 0x00004108
};

Vtx_t _spot09_room_0_vertices_00004110[15] = 
{
	 { 1000, 606, 3200, 0, 5071, 512, 145, 44, 10, 255 }, // 0x00004110
	 { 1159, 1006, 3135, 0, 5071, 0, 145, 44, 10, 255 }, // 0x00004120
	 { 1124, 1155, 2154, 0, 2036, -8, 148, 51, 245, 255 }, // 0x00004130
	 { 954, 761, 1990, 0, 1937, 512, 148, 51, 245, 255 }, // 0x00004140
	 { 1323, 1151, 1010, 0, 1934, 0, 193, 62, 175, 255 }, // 0x00004150
	 { 1332, 819, 882, 0, 1937, 512, 172, 50, 186, 255 }, // 0x00004160
	 { 954, 761, 1990, 0, 4096, 512, 148, 51, 245, 255 }, // 0x00004170
	 { 1124, 1155, 2154, 0, 4096, 0, 148, 51, 245, 255 }, // 0x00004180
	 { 1740, 1139, 922, 0, 3002, -17, 35, 76, 171, 255 }, // 0x00004190
	 { 1772, 787, 621, 0, 3016, 495, 31, 67, 162, 255 }, // 0x000041A0
	 { 1323, 1151, 1010, 0, 4096, 0, 193, 62, 175, 255 }, // 0x000041B0
	 { 1332, 819, 882, 0, 4096, 512, 172, 50, 186, 255 }, // 0x000041C0
	 { 2908, 12, 1323, 0, 2994, 512, 81, 61, 193, 255 }, // 0x000041D0
	 { 1772, 787, 621, 0, 4096, 512, 31, 67, 162, 255 }, // 0x000041E0
	 { 1740, 1139, 922, 0, 4096, 0, 35, 76, 171, 255 }, // 0x000041F0
};

Vtx_t _spot09_room_0_vertices_00004200[5] = 
{
	 { 400, -26, 792, 0, 3935, 2048, 149, 40, 222, 255 }, // 0x00004200
	 { 400, 512, 960, 0, 3964, 605, 184, 83, 209, 255 }, // 0x00004210
	 { 522, 479, 881, 0, 3724, 735, 218, 72, 168, 255 }, // 0x00004220
	 { 888, 520, 757, 0, 3108, 706, 189, 54, 173, 255 }, // 0x00004230
	 { 893, 0, 683, 0, 3072, 2048, 218, 105, 215, 255 }, // 0x00004240
};

Vtx_t _spot09_room_0_vertices_00004250[8] = 
{
	 { 908, 831, 1360, 0, 4575, 1363, 208, 103, 219, 255 }, // 0x00004250
	 { 522, 479, 881, 0, 4569, -3, 218, 72, 168, 255 }, // 0x00004260
	 { 400, 512, 960, 0, 4883, 88, 184, 83, 209, 255 }, // 0x00004270
	 { 908, 831, 1360, 0, 4575, 1363, 208, 103, 219, 255 }, // 0x00004280
	 { 888, 520, 757, 0, 3720, 63, 189, 54, 173, 255 }, // 0x00004290
	 { 400, 600, 1600, 0, 6257, 621, 149, 53, 5, 255 }, // 0x000042A0
	 { 400, 600, 1600, 0, 6257, 621, 149, 53, 5, 255 }, // 0x000042B0
	 { 711, 600, 2934, 0, 8532, 1205, 146, 21, 40, 255 }, // 0x000042C0
};

Vtx_t _spot09_room_0_vertices_000042D0[10] = 
{
	 { 1733, -202, 274, 0, 265, 2048, 35, 64, 161, 255 }, // 0x000042D0
	 { 1335, -202, 77, 0, 1024, 2048, 54, 103, 230, 255 }, // 0x000042E0
	 { 1226, 29, 26, 0, 1229, 1456, 20, 73, 163, 255 }, // 0x000042F0
	 { 893, 0, 683, 0, 3072, 2048, 218, 105, 215, 255 }, // 0x00004300
	 { 888, 520, 757, 0, 3108, 706, 189, 54, 173, 255 }, // 0x00004310
	 { 1226, 29, 26, 0, 1813, 2048, 20, 73, 163, 255 }, // 0x00004320
	 { 1290, 525, 217, 0, 2004, 708, 238, 76, 165, 255 }, // 0x00004330
	 { 1966, -119, 382, 0, -196, 2048, 36, 74, 169, 255 }, // 0x00004340
	 { 1882, 538, 514, 0, -41, 448, 51, 41, 156, 255 }, // 0x00004350
	 { 1290, 525, 217, 0, 724, 314, 238, 76, 165, 255 }, // 0x00004360
};

Vtx_t _spot09_room_0_vertices_00004370[8] = 
{
	 { 1290, 525, 217, 0, 2081, -57, 238, 76, 165, 255 }, // 0x00004370
	 { 908, 831, 1360, 0, 4575, 1363, 208, 103, 219, 255 }, // 0x00004380
	 { 1447, 815, 498, 0, 2173, 1189, 238, 87, 176, 255 }, // 0x00004390
	 { 888, 520, 757, 0, 3720, 63, 189, 54, 173, 255 }, // 0x000043A0
	 { 1882, 538, 514, 0, 608, 247, 51, 41, 156, 255 }, // 0x000043B0
	 { 1290, 525, 217, 0, 2707, -57, 238, 76, 165, 255 }, // 0x000043C0
	 { 1772, 787, 621, 0, 985, 867, 31, 67, 162, 255 }, // 0x000043D0
	 { 1772, 787, 621, 0, 757, 867, 31, 67, 162, 255 }, // 0x000043E0
};

Vtx_t _spot09_room_0_vertices_000043F0[4] = 
{
	 { 1882, 538, 514, 0, -41, 448, 51, 41, 156, 255 }, // 0x000043F0
	 { 2451, -234, 512, 0, -1075, 2048, 60, 94, 214, 255 }, // 0x00004400
	 { 1966, -119, 382, 0, -196, 2048, 36, 74, 169, 255 }, // 0x00004410
	 { 2319, 329, 616, 0, -893, 603, 75, 34, 170, 255 }, // 0x00004420
};

Vtx_t _spot09_room_0_vertices_00004430[3] = 
{
	 { 1772, 787, 621, 0, 985, 867, 31, 67, 162, 255 }, // 0x00004430
	 { 2523, 260, 965, 0, -1778, 619, 88, 18, 177, 255 }, // 0x00004440
	 { 1882, 538, 514, 0, 608, 247, 51, 41, 156, 255 }, // 0x00004450
};

Vtx_t _spot09_room_0_vertices_00004460[6] = 
{
	 { 2451, -234, 512, 0, -1075, 2048, 60, 94, 214, 255 }, // 0x00004460
	 { 2523, 260, 965, 0, -1773, 702, 88, 18, 177, 255 }, // 0x00004470
	 { 2582, -281, 1092, 0, -2092, 2048, 57, 101, 228, 255 }, // 0x00004480
	 { 2319, 329, 616, 0, -893, 603, 75, 34, 170, 255 }, // 0x00004490
	 { 3047, -368, 1291, 0, -2968, 2048, 46, 83, 184, 255 }, // 0x000044A0
	 { 3047, 319, 1291, 0, -2785, 312, 63, 0, 155, 255 }, // 0x000044B0
};

Vtx_t _spot09_room_0_vertices_000044C0[8] = 
{
	 { 1687, -371, -361, 0, 0, 0, 0, 0, 0, 0 }, // 0x000044C0
	 { 3190, -371, 1431, 0, 0, 0, 0, 0, 0, 0 }, // 0x000044D0
	 { 1867, 960, -512, 0, 0, 0, 0, 0, 0, 0 }, // 0x000044E0
	 { 3370, 960, 1280, 0, 0, 0, 0, 0, 0, 0 }, // 0x000044F0
	 { -569, 148, 1532, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004500
	 { 934, 148, 3324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004510
	 { -389, 1479, 1381, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004520
	 { 1114, 1479, 3173, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004530
};

Gfx _spot09_room_0_dlist_00004540[] =
{
	gsDPPipeSync(), // 0x00004540
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004548
	gsSPVertex(_spot09_room_0_vertices_000044C0, 8, 0), // 0x00004550
	gsSPCullDisplayList(0, 7), // 0x00004558
	gsDPPipeSync(), // 0x00004560
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004568
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004570
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004578
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000D160), // 0x00004580
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 7, 0), // 0x00004588
	gsDPLoadSync(), // 0x00004590
	gsDPLoadBlock(7, 0, 0, 2047, 64), // 0x00004598
	gsDPPipeSync(), // 0x000045A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, 2, 4, 0, 0, 7, 0), // 0x000045A8
	gsDPSetTileSize(0, 0, 0, 508, 60), // 0x000045B0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000045B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000045C0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000045C8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000045D0
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x000045D8
	gsSPVertex(_spot09_room_0_vertices_00004110, 15, 0), // 0x000045E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000045E8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000045F0
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x000045F8
	gsSP1Triangle(12, 13, 14, 0), // 0x00004600
	gsDPPipeSync(), // 0x00004608
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x00004610
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00004618
	gsDPLoadSync(), // 0x00004620
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004628
	gsDPPipeSync(), // 0x00004630
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00004638
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004640
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004648
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004650
	gsSPVertex(_spot09_room_0_vertices_00004200, 5, 0), // 0x00004658
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x00004660
	gsSP1Triangle(0, 2, 3, 0), // 0x00004668
	gsDPPipeSync(), // 0x00004670
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00004678
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004680
	gsDPLoadSync(), // 0x00004688
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004690
	gsDPPipeSync(), // 0x00004698
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000046A0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000046A8
	gsSPVertex(_spot09_room_0_vertices_00004250, 8, 0), // 0x000046B0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0), // 0x000046B8
	gsSP2Triangles(2, 5, 3, 0, 6, 7, 3, 0), // 0x000046C0
	gsDPPipeSync(), // 0x000046C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x000046D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000046D8
	gsDPLoadSync(), // 0x000046E0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000046E8
	gsDPPipeSync(), // 0x000046F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000046F8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004700
	gsSPVertex(_spot09_room_0_vertices_000042D0, 10, 0), // 0x00004708
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004710
	gsSP2Triangles(4, 6, 5, 0, 2, 7, 0, 0), // 0x00004718
	gsSP2Triangles(2, 8, 7, 0, 2, 9, 8, 0), // 0x00004720
	gsDPPipeSync(), // 0x00004728
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00004730
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004738
	gsDPLoadSync(), // 0x00004740
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004748
	gsDPPipeSync(), // 0x00004750
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004758
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004760
	gsSPVertex(_spot09_room_0_vertices_00004370, 8, 0), // 0x00004768
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00004770
	gsSP2Triangles(4, 5, 6, 0, 0, 2, 7, 0), // 0x00004778
	gsDPPipeSync(), // 0x00004780
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x00004788
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00004790
	gsDPLoadSync(), // 0x00004798
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000047A0
	gsDPPipeSync(), // 0x000047A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000047B0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000047B8
	gsSPVertex(_spot09_room_0_vertices_000043F0, 4, 0), // 0x000047C0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000047C8
	gsDPPipeSync(), // 0x000047D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x000047D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000047E0
	gsDPLoadSync(), // 0x000047E8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000047F0
	gsDPPipeSync(), // 0x000047F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004800
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004808
	gsSPVertex(_spot09_room_0_vertices_00004430, 3, 0), // 0x00004810
	gsSP1Triangle(0, 1, 2, 0), // 0x00004818
	gsDPPipeSync(), // 0x00004820
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x00004828
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00004830
	gsDPLoadSync(), // 0x00004838
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004840
	gsDPPipeSync(), // 0x00004848
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00004850
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004858
	gsSPVertex(_spot09_room_0_vertices_00004460, 6, 0), // 0x00004860
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00004868
	gsSP2Triangles(2, 1, 4, 0, 1, 5, 4, 0), // 0x00004870
	gsSPEndDisplayList(), // 0x00004878
};

Vtx_t _spot09_room_0_vertices_00004880[15] = 
{
	 { -2682, 1966, -1661, 0, 4096, 0, 112, 241, 38, 255 }, // 0x00004880
	 { -2617, 1519, -1154, 0, 2754, 334, 67, 80, 58, 255 }, // 0x00004890
	 { -2748, 1574, -1619, 0, 4096, 512, 112, 241, 38, 255 }, // 0x000048A0
	 { -2748, 1574, -1619, 0, 24, 512, 112, 241, 38, 255 }, // 0x000048B0
	 { -1889, 1333, -2253, 0, 1946, 512, 51, 3, 108, 255 }, // 0x000048C0
	 { -1814, 1780, -2302, 0, 1946, 0, 51, 3, 108, 255 }, // 0x000048D0
	 { -2682, 1966, -1661, 0, 24, 0, 112, 241, 38, 255 }, // 0x000048E0
	 { -1814, 1780, -2302, 0, 205, 11, 51, 3, 108, 255 }, // 0x000048F0
	 { -1889, 1333, -2253, 0, 410, 512, 51, 3, 108, 255 }, // 0x00004900
	 { -446, 800, -2595, 0, 4636, 512, 30, 7, 115, 255 }, // 0x00004910
	 { -831, 1389, -2505, 0, 3075, 0, 30, 7, 115, 255 }, // 0x00004920
	 { -330, 800, -4504, 0, 4437, 512, 118, 251, 18, 255 }, // 0x00004930
	 { -417, 1200, -3911, 0, 3413, 0, 118, 251, 18, 255 }, // 0x00004940
	 { -708, 1200, -1932, 0, 0, 0, 118, 251, 18, 255 }, // 0x00004950
	 { -788, 731, -1551, 0, -683, 512, 118, 251, 18, 255 }, // 0x00004960
};

Vtx_t _spot09_room_0_vertices_00004970[4] = 
{
	 { -2436, 124, -554, 0, 2779, 2048, 37, 78, 82, 255 }, // 0x00004970
	 { -2860, 986, -554, 0, 1850, 327, 219, 39, 107, 255 }, // 0x00004980
	 { -2860, 186, -554, 0, 2048, 2048, 226, 89, 74, 255 }, // 0x00004990
	 { -2476, 880, -634, 0, 2617, 409, 101, 1, 64, 255 }, // 0x000049A0
};

Vtx_t _spot09_room_0_vertices_000049B0[5] = 
{
	 { -2617, 1519, -1154, 0, 6195, 618, 67, 80, 58, 255 }, // 0x000049B0
	 { -2860, 986, -554, 0, 5427, 307, 219, 39, 107, 255 }, // 0x000049C0
	 { -2476, 880, -634, 0, 5427, 1229, 101, 1, 64, 255 }, // 0x000049D0
	 { -2036, 676, -963, 0, 5888, 1997, 67, 40, 91, 255 }, // 0x000049E0
	 { -1834, 1388, -2065, 0, 7251, 2260, 40, 97, 57, 255 }, // 0x000049F0
};

Vtx_t _spot09_room_0_vertices_00004A00[6] = 
{
	 { -2036, 81, -852, 0, 3633, 2048, 55, 90, 57, 255 }, // 0x00004A00
	 { -2036, 676, -963, 0, 3635, 733, 67, 40, 91, 255 }, // 0x00004A10
	 { -2436, 124, -554, 0, 2779, 2048, 37, 78, 82, 255 }, // 0x00004A20
	 { -2476, 880, -634, 0, 2617, 409, 101, 1, 64, 255 }, // 0x00004A30
	 { -1556, 0, -1212, 0, 4666, 2048, 30, 91, 71, 255 }, // 0x00004A40
	 { -1598, 840, -1254, 0, 4529, 227, 26, 61, 99, 255 }, // 0x00004A50
};

Vtx_t _spot09_room_0_vertices_00004A60[8] = 
{
	 { -1598, 840, -1254, 0, 6349, 2611, 26, 61, 99, 255 }, // 0x00004A60
	 { -1834, 1388, -2065, 0, 7251, 2260, 40, 97, 57, 255 }, // 0x00004A70
	 { -2036, 676, -963, 0, 5888, 1997, 67, 40, 91, 255 }, // 0x00004A80
	 { -946, 753, -1281, 0, 6349, 3533, 17, 82, 86, 255 }, // 0x00004A90
	 { -946, 753, -1281, 0, 29424, 934, 17, 82, 86, 255 }, // 0x00004AA0
	 { -352, 627, -1527, 0, 28780, 1149, 97, 67, 22, 255 }, // 0x00004AB0
	 { -400, 800, -2400, 0, 27829, 853, 96, 68, 22, 255 }, // 0x00004AC0
	 { -400, 800, -2400, 0, 7680, 4096, 96, 68, 22, 255 }, // 0x00004AD0
};

Vtx_t _spot09_room_0_vertices_00004AE0[7] = 
{
	 { -396, 0, -1052, 0, 6694, 2048, 100, 48, 44, 255 }, // 0x00004AE0
	 { -450, 497, -1121, 0, 6571, 961, 71, 50, 82, 255 }, // 0x00004AF0
	 { -616, 654, -1163, 0, 6276, 624, 1, 59, 104, 255 }, // 0x00004B00
	 { -836, 0, -1212, 0, 5895, 2048, 242, 90, 78, 255 }, // 0x00004B10
	 { -946, 753, -1281, 0, 5698, 407, 17, 82, 86, 255 }, // 0x00004B20
	 { -1556, 0, -1212, 0, 4666, 2048, 30, 91, 71, 255 }, // 0x00004B30
	 { -1598, 840, -1254, 0, 4529, 227, 26, 61, 99, 255 }, // 0x00004B40
};

Vtx_t _spot09_room_0_vertices_00004B50[3] = 
{
	 { -946, 753, -1281, 0, 7912, 1085, 17, 82, 86, 255 }, // 0x00004B50
	 { -616, 654, -1163, 0, 8470, 602, 1, 59, 104, 255 }, // 0x00004B60
	 { -352, 627, -1527, 0, 9569, 649, 97, 67, 22, 255 }, // 0x00004B70
};

Vtx_t _spot09_room_0_vertices_00004B80[8] = 
{
	 { -2860, -109, -595, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B80
	 { -330, -109, -595, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B90
	 { -2860, 587, -4542, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BA0
	 { -330, 587, -4542, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BB0
	 { -2860, 1721, -272, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BC0
	 { -330, 1721, -272, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BD0
	 { -2860, 2417, -4219, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BE0
	 { -330, 2417, -4219, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BF0
};

Gfx _spot09_room_0_dlist_00004C00[] =
{
	gsDPPipeSync(), // 0x00004C00
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004C08
	gsSPVertex(_spot09_room_0_vertices_00004B80, 8, 0), // 0x00004C10
	gsSPCullDisplayList(0, 7), // 0x00004C18
	gsDPPipeSync(), // 0x00004C20
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004C28
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004C30
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004C38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000D160), // 0x00004C40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 7, 0), // 0x00004C48
	gsDPLoadSync(), // 0x00004C50
	gsDPLoadBlock(7, 0, 0, 2047, 64), // 0x00004C58
	gsDPPipeSync(), // 0x00004C60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, 2, 4, 0, 0, 7, 0), // 0x00004C68
	gsDPSetTileSize(0, 0, 0, 508, 60), // 0x00004C70
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004C78
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004C80
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00004C88
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00004C90
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x00004C98
	gsSPVertex(_spot09_room_0_vertices_00004880, 15, 0), // 0x00004CA0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004CA8
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x00004CB0
	gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0), // 0x00004CB8
	gsSP1Triangle(11, 13, 14, 0), // 0x00004CC0
	gsDPPipeSync(), // 0x00004CC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x00004CD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00004CD8
	gsDPLoadSync(), // 0x00004CE0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004CE8
	gsDPPipeSync(), // 0x00004CF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00004CF8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004D00
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004D08
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004D10
	gsSPVertex(_spot09_room_0_vertices_00004970, 4, 0), // 0x00004D18
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00004D20
	gsDPPipeSync(), // 0x00004D28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00004D30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004D38
	gsDPLoadSync(), // 0x00004D40
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004D48
	gsDPPipeSync(), // 0x00004D50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004D58
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004D60
	gsSPVertex(_spot09_room_0_vertices_000049B0, 5, 0), // 0x00004D68
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004D70
	gsSP1Triangle(0, 3, 4, 0), // 0x00004D78
	gsDPPipeSync(), // 0x00004D80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x00004D88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00004D90
	gsDPLoadSync(), // 0x00004D98
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004DA0
	gsDPPipeSync(), // 0x00004DA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00004DB0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004DB8
	gsSPVertex(_spot09_room_0_vertices_00004A00, 6, 0), // 0x00004DC0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004DC8
	gsSP2Triangles(4, 1, 0, 0, 4, 5, 1, 0), // 0x00004DD0
	gsDPPipeSync(), // 0x00004DD8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00004DE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004DE8
	gsDPLoadSync(), // 0x00004DF0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004DF8
	gsDPPipeSync(), // 0x00004E00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004E08
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004E10
	gsSPVertex(_spot09_room_0_vertices_00004A60, 8, 0), // 0x00004E18
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0), // 0x00004E20
	gsSP2Triangles(4, 5, 6, 0, 3, 7, 1, 0), // 0x00004E28
	gsDPPipeSync(), // 0x00004E30
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x00004E38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00004E40
	gsDPLoadSync(), // 0x00004E48
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004E50
	gsDPPipeSync(), // 0x00004E58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00004E60
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004E68
	gsSPVertex(_spot09_room_0_vertices_00004AE0, 7, 0), // 0x00004E70
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004E78
	gsSP2Triangles(2, 4, 3, 0, 3, 4, 5, 0), // 0x00004E80
	gsSP1Triangle(4, 6, 5, 0), // 0x00004E88
	gsDPPipeSync(), // 0x00004E90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00004E98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004EA0
	gsDPLoadSync(), // 0x00004EA8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004EB0
	gsDPPipeSync(), // 0x00004EB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004EC0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004EC8
	gsSPVertex(_spot09_room_0_vertices_00004B50, 3, 0), // 0x00004ED0
	gsSP1Triangle(0, 1, 2, 0), // 0x00004ED8
	gsSPEndDisplayList(), // 0x00004EE0
};

Vtx_t _spot09_room_0_vertices_00004EE8[6] = 
{
	 { -1432, 627, 1362, 0, 0, 0, 63, 0, 154, 255 }, // 0x00004EE8
	 { -1432, 427, 1362, 0, 0, 512, 63, 0, 154, 255 }, // 0x00004EF8
	 { -2075, 688, 966, 0, 2048, 512, 77, 0, 165, 255 }, // 0x00004F08
	 { -2075, 888, 966, 0, 2048, 0, 77, 0, 165, 255 }, // 0x00004F18
	 { -2607, 421, 356, 0, 4096, 512, 90, 0, 177, 255 }, // 0x00004F28
	 { -2607, 621, 356, 0, 4096, 0, 90, 0, 177, 255 }, // 0x00004F38
};

Vtx_t _spot09_room_0_vertices_00004F48[4] = 
{
	 { -1483, 546, 1109, 0, 1984, 1188, 23, 84, 174, 255 }, // 0x00004F48
	 { -2122, 472, 482, 0, 3846, 1179, 62, 102, 3, 255 }, // 0x00004F58
	 { -1915, 746, 926, 0, 2794, 1750, 63, 70, 183, 255 }, // 0x00004F68
	 { -1759, 363, 426, 0, 3458, 460, 118, 245, 241, 255 }, // 0x00004F78
};

Vtx_t _spot09_room_0_vertices_00004F88[7] = 
{
	 { -1360, 80, 920, 0, -715, 2048, 27, 97, 192, 255 }, // 0x00004F88
	 { -1759, 363, 426, 0, 401, 1278, 118, 245, 241, 255 }, // 0x00004F98
	 { -1483, 546, 1109, 0, -609, 805, 23, 84, 174, 255 }, // 0x00004FA8
	 { -1759, 61, 426, 0, 368, 2048, 78, 83, 219, 255 }, // 0x00004FB8
	 { -626, 822, 846, 0, -1794, -87, 26, 73, 165, 255 }, // 0x00004FC8
	 { -400, -50, 785, 0, -2385, 2048, 107, 43, 226, 255 }, // 0x00004FD8
	 { -400, 500, 954, 0, -2331, 578, 116, 19, 233, 255 }, // 0x00004FE8
};

Vtx_t _spot09_room_0_vertices_00004FF8[4] = 
{
	 { -400, 500, 954, 0, -526, 143, 116, 19, 233, 255 }, // 0x00004FF8
	 { -626, 822, 846, 0, -343, 994, 26, 73, 165, 255 }, // 0x00005008
	 { -400, 800, 2000, 0, -2812, 550, 97, 68, 237, 255 }, // 0x00005018
	 { -905, 949, 1209, 0, -344, 1756, 253, 112, 214, 255 }, // 0x00005028
};

Vtx_t _spot09_room_0_vertices_00005038[4] = 
{
	 { -2228, 100, 76, 0, 1621, 2048, 7, 62, 154, 255 }, // 0x00005038
	 { -1879, 721, 66, 0, 962, 515, 7, 25, 139, 255 }, // 0x00005048
	 { -1879, 121, 66, 0, 1024, 2048, 43, 107, 226, 255 }, // 0x00005058
	 { -2382, 848, 149, 0, 1912, 138, 52, 66, 171, 255 }, // 0x00005068
};

Vtx_t _spot09_room_0_vertices_00005078[3] = 
{
	 { -626, 822, 846, 0, -343, 994, 26, 73, 165, 255 }, // 0x00005078
	 { -1483, 546, 1109, 0, 1984, 1188, 23, 84, 174, 255 }, // 0x00005088
	 { -905, 949, 1209, 0, -344, 1756, 253, 112, 214, 255 }, // 0x00005098
};

Vtx_t _spot09_room_0_vertices_000050A8[8] = 
{
	 { -2693, -209, 505, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050A8
	 { -326, -209, 1871, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050B8
	 { -2232, -47, -294, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050C8
	 { 135, -47, 1073, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050D8
	 { -2788, 870, 669, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050E8
	 { -421, 870, 2036, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050F8
	 { -2327, 1033, -129, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005108
	 { 40, 1033, 1238, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005118
};

Gfx _spot09_room_0_dlist_00005128[] =
{
	gsDPPipeSync(), // 0x00005128
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005130
	gsSPVertex(_spot09_room_0_vertices_000050A8, 8, 0), // 0x00005138
	gsSPCullDisplayList(0, 7), // 0x00005140
	gsDPPipeSync(), // 0x00005148
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005150
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005158
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005160
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000D160), // 0x00005168
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 7, 0), // 0x00005170
	gsDPLoadSync(), // 0x00005178
	gsDPLoadBlock(7, 0, 0, 2047, 64), // 0x00005180
	gsDPPipeSync(), // 0x00005188
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, 2, 4, 0, 0, 7, 0), // 0x00005190
	gsDPSetTileSize(0, 0, 0, 508, 60), // 0x00005198
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000051A0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000051A8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000051B0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000051B8
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x000051C0
	gsSPVertex(_spot09_room_0_vertices_00004EE8, 6, 0), // 0x000051C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000051D0
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x000051D8
	gsDPPipeSync(), // 0x000051E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x000051E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000051F0
	gsDPLoadSync(), // 0x000051F8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005200
	gsDPPipeSync(), // 0x00005208
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005210
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005218
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005220
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005228
	gsSPVertex(_spot09_room_0_vertices_00004F48, 4, 0), // 0x00005230
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0), // 0x00005238
	gsDPPipeSync(), // 0x00005240
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x00005248
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005250
	gsDPLoadSync(), // 0x00005258
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00005260
	gsDPPipeSync(), // 0x00005268
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005270
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005278
	gsSPVertex(_spot09_room_0_vertices_00004F88, 7, 0), // 0x00005280
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005288
	gsSP2Triangles(0, 4, 5, 0, 0, 2, 4, 0), // 0x00005290
	gsSP1Triangle(4, 6, 5, 0), // 0x00005298
	gsDPPipeSync(), // 0x000052A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x000052A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000052B0
	gsDPLoadSync(), // 0x000052B8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000052C0
	gsDPPipeSync(), // 0x000052C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000052D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000052D8
	gsSPVertex(_spot09_room_0_vertices_00004FF8, 4, 0), // 0x000052E0
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x000052E8
	gsDPPipeSync(), // 0x000052F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x000052F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005300
	gsDPLoadSync(), // 0x00005308
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00005310
	gsDPPipeSync(), // 0x00005318
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005320
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005328
	gsSPVertex(_spot09_room_0_vertices_00005038, 4, 0), // 0x00005330
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005338
	gsDPPipeSync(), // 0x00005340
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00005348
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005350
	gsDPLoadSync(), // 0x00005358
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005360
	gsDPPipeSync(), // 0x00005368
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005370
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005378
	gsSPVertex(_spot09_room_0_vertices_00005078, 3, 0), // 0x00005380
	gsSP1Triangle(0, 1, 2, 0), // 0x00005388
	gsSPEndDisplayList(), // 0x00005390
};

Vtx_t _spot09_room_0_vertices_00005398[6] = 
{
	 { -3180, 266, -994, 0, 1110, 2048, 183, 56, 76, 255 }, // 0x00005398
	 { -3850, 1130, -1557, 0, -561, 318, 204, 29, 103, 255 }, // 0x000053A8
	 { -3850, 401, -1557, 0, -461, 2048, 238, 86, 82, 255 }, // 0x000053B8
	 { -3140, 1184, -1034, 0, 878, 71, 183, 55, 77, 255 }, // 0x000053C8
	 { -2860, 186, -554, 0, 2048, 2048, 226, 89, 74, 255 }, // 0x000053D8
	 { -2860, 986, -554, 0, 1850, 327, 219, 39, 107, 255 }, // 0x000053E8
};

Vtx_t _spot09_room_0_vertices_000053F8[3] = 
{
	 { -2617, 1519, -1154, 0, 6195, 618, 67, 80, 58, 255 }, // 0x000053F8
	 { -3850, 1130, -1557, 0, 6714, -765, 204, 29, 103, 255 }, // 0x00005408
	 { -3140, 1184, -1034, 0, 6071, -229, 183, 55, 77, 255 }, // 0x00005418
};

Vtx_t _spot09_room_0_vertices_00005428[4] = 
{
	 { -4686, 401, -1523, 0, -1809, 4096, 53, 55, 92, 255 }, // 0x00005428
	 { -5206, 1090, -1017, 0, -3112, 1820, 83, 0, 86, 255 }, // 0x00005438
	 { -5206, 680, -1017, 0, -3134, 4096, 84, 72, 46, 255 }, // 0x00005448
	 { -4686, 1085, -1523, 0, -2054, 734, 49, 0, 109, 255 }, // 0x00005458
};

Vtx_t _spot09_room_0_vertices_00005468[3] = 
{
	 { -2617, 1519, -1154, 0, 6195, 618, 67, 80, 58, 255 }, // 0x00005468
	 { -3140, 1184, -1034, 0, 6071, -229, 183, 55, 77, 255 }, // 0x00005478
	 { -2860, 986, -554, 0, 5427, 307, 219, 39, 107, 255 }, // 0x00005488
};

Vtx_t _spot09_room_0_vertices_00005498[4] = 
{
	 { -3874, 401, -1559, 0, -461, 4096, 5, 4, 119, 255 }, // 0x00005498
	 { -3869, 1130, -1584, 0, -561, 637, 7, 2, 119, 255 }, // 0x000054A8
	 { -4686, 401, -1523, 0, -1809, 4096, 53, 55, 92, 255 }, // 0x000054B8
	 { -4686, 1085, -1523, 0, -2054, 734, 49, 0, 109, 255 }, // 0x000054C8
};

Vtx_t _spot09_room_0_vertices_000054D8[4] = 
{
	 { -4196, 401, -1519, 0, -1179, 2048, 13, 0, 119, 255 }, // 0x000054D8
	 { -3850, 401, -1557, 0, -461, 2048, 238, 86, 82, 255 }, // 0x000054E8
	 { -3850, 1130, -1557, 0, -561, 318, 204, 29, 103, 255 }, // 0x000054F8
	 { -4196, 1085, -1519, 0, -1356, 344, 13, 0, 119, 255 }, // 0x00005508
};

Vtx_t _spot09_room_0_vertices_00005518[8] = 
{
	 { -5068, 186, -1795, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005518
	 { -2581, 186, -1357, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005528
	 { -5068, 1519, -1795, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005538
	 { -2581, 1519, -1357, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005548
	 { -5214, 186, -969, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005558
	 { -2727, 186, -531, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005568
	 { -5214, 1519, -969, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005578
	 { -2727, 1519, -531, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005588
};

Gfx _spot09_room_0_dlist_00005598[] =
{
	gsDPPipeSync(), // 0x00005598
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000055A0
	gsSPVertex(_spot09_room_0_vertices_00005518, 8, 0), // 0x000055A8
	gsSPCullDisplayList(0, 7), // 0x000055B0
	gsDPPipeSync(), // 0x000055B8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000055C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000055C8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000055D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x000055D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000055E0
	gsDPLoadSync(), // 0x000055E8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000055F0
	gsDPPipeSync(), // 0x000055F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005600
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005608
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005610
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005618
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00005620
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00005628
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x00005630
	gsSPVertex(_spot09_room_0_vertices_00005398, 6, 0), // 0x00005638
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005640
	gsSP2Triangles(4, 5, 0, 0, 5, 3, 0, 0), // 0x00005648
	gsDPPipeSync(), // 0x00005650
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00005658
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005660
	gsDPLoadSync(), // 0x00005668
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005670
	gsDPPipeSync(), // 0x00005678
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005680
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005688
	gsSPVertex(_spot09_room_0_vertices_000053F8, 3, 0), // 0x00005690
	gsSP1Triangle(0, 1, 2, 0), // 0x00005698
	gsDPPipeSync(), // 0x000056A0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000056A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot09_scene_tex_00005460), // 0x000056B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 0, 5, 0), // 0x000056B8
	gsDPLoadSync(), // 0x000056C0
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x000056C8
	gsDPPipeSync(), // 0x000056D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 0, 5, 0), // 0x000056D8
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x000056E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00003440), // 0x000056E8
	gsDPTileSync(), // 0x000056F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000056F8
	gsDPLoadSync(), // 0x00005700
	gsDPLoadTLUTCmd(7, 15), // 0x00005708
	gsDPPipeSync(), // 0x00005710
	gsSPVertex(_spot09_room_0_vertices_00005428, 4, 0), // 0x00005718
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005720
	gsDPPipeSync(), // 0x00005728
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005730
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00005738
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005740
	gsDPLoadSync(), // 0x00005748
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005750
	gsDPPipeSync(), // 0x00005758
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005760
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005768
	gsSPVertex(_spot09_room_0_vertices_00005468, 3, 0), // 0x00005770
	gsSP1Triangle(0, 1, 2, 0), // 0x00005778
	gsDPPipeSync(), // 0x00005780
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005788
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot09_scene_tex_00005460), // 0x00005790
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 0, 5, 0), // 0x00005798
	gsDPLoadSync(), // 0x000057A0
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x000057A8
	gsDPPipeSync(), // 0x000057B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 0, 5, 0), // 0x000057B8
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x000057C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00003440), // 0x000057C8
	gsDPTileSync(), // 0x000057D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000057D8
	gsDPLoadSync(), // 0x000057E0
	gsDPLoadTLUTCmd(7, 15), // 0x000057E8
	gsDPPipeSync(), // 0x000057F0
	gsSPVertex(_spot09_room_0_vertices_00005498, 4, 0), // 0x000057F8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00005800
	gsDPPipeSync(), // 0x00005808
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005810
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00003460), // 0x00005818
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005820
	gsDPLoadSync(), // 0x00005828
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00005830
	gsDPPipeSync(), // 0x00005838
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005840
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005848
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005850
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00005858
	gsSPVertex(_spot09_room_0_vertices_000054D8, 4, 0), // 0x00005860
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005868
	gsSPEndDisplayList(), // 0x00005870
};

Vtx_t _spot09_room_0_vertices_00005878[6] = 
{
	 { -3615, 723, -755, 0, 2492, 512, 96, 49, 205, 255 }, // 0x00005878
	 { -3960, 1015, -1131, 0, 4506, 512, 75, 45, 174, 255 }, // 0x00005888
	 { -3748, 871, -673, 0, 2492, 0, 80, 85, 231, 255 }, // 0x00005898
	 { -2907, 823, 215, 0, -2544, 512, 55, 59, 168, 255 }, // 0x000058A8
	 { -3385, 730, -148, 0, -530, 512, 76, 54, 181, 255 }, // 0x000058B8
	 { -3478, 878, -106, 0, -530, 0, 67, 75, 192, 255 }, // 0x000058C8
};

Vtx_t _spot09_room_0_vertices_000058D8[11] = 
{
	 { -2884, 918, 78, 0, 2880, 140, 224, 72, 166, 255 }, // 0x000058D8
	 { -2382, 848, 149, 0, 1912, 138, 52, 66, 171, 255 }, // 0x000058E8
	 { -2228, 100, 76, 0, 1621, 2048, 7, 62, 154, 255 }, // 0x000058F8
	 { -3179, 218, -115, 0, 3289, 2048, 65, 74, 189, 255 }, // 0x00005908
	 { -3385, 730, -148, 0, 3653, 755, 76, 54, 181, 255 }, // 0x00005918
	 { -3537, 266, -835, 0, 4663, 2048, 67, 93, 222, 255 }, // 0x00005928
	 { -3615, 723, -755, 0, 4725, 852, 96, 49, 205, 255 }, // 0x00005938
	 { -3896, 359, -1195, 0, 5546, 2048, 46, 68, 169, 255 }, // 0x00005948
	 { -3960, 1015, -1131, 0, 5737, 380, 75, 45, 174, 255 }, // 0x00005958
	 { -4566, 401, -1163, 0, 6692, 2048, 17, 102, 196, 255 }, // 0x00005968
	 { -4572, 1137, -1163, 0, 6780, 169, 1, 6, 137, 255 }, // 0x00005978
};

Vtx_t _spot09_room_0_vertices_00005988[8] = 
{
	 { -4542, 10, -1198, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005988
	 { -2556, 10, 468, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005998
	 { -4213, 100, -1590, 0, 0, 0, 0, 0, 0, 0 }, // 0x000059A8
	 { -2228, 100, 76, 0, 0, 0, 0, 0, 0, 0 }, // 0x000059B8
	 { -4667, 1111, -1050, 0, 0, 0, 0, 0, 0, 0 }, // 0x000059C8
	 { -2681, 1111, 616, 0, 0, 0, 0, 0, 0, 0 }, // 0x000059D8
	 { -4338, 1201, -1441, 0, 0, 0, 0, 0, 0, 0 }, // 0x000059E8
	 { -2353, 1201, 225, 0, 0, 0, 0, 0, 0, 0 }, // 0x000059F8
};

Gfx _spot09_room_0_dlist_00005A08[] =
{
	gsDPPipeSync(), // 0x00005A08
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005A10
	gsSPVertex(_spot09_room_0_vertices_00005988, 8, 0), // 0x00005A18
	gsSPCullDisplayList(0, 7), // 0x00005A20
	gsDPPipeSync(), // 0x00005A28
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005A30
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005A38
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005A40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000D160), // 0x00005A48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 7, 0), // 0x00005A50
	gsDPLoadSync(), // 0x00005A58
	gsDPLoadBlock(7, 0, 0, 2047, 64), // 0x00005A60
	gsDPPipeSync(), // 0x00005A68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, 2, 4, 0, 0, 7, 0), // 0x00005A70
	gsDPSetTileSize(0, 0, 0, 508, 60), // 0x00005A78
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005A80
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00005A88
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00005A90
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00005A98
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x00005AA0
	gsSPVertex(_spot09_room_0_vertices_00005878, 6, 0), // 0x00005AA8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00005AB0
	gsSP2Triangles(4, 0, 2, 0, 4, 2, 5, 0), // 0x00005AB8
	gsDPPipeSync(), // 0x00005AC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00009160), // 0x00005AC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005AD0
	gsDPLoadSync(), // 0x00005AD8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00005AE0
	gsDPPipeSync(), // 0x00005AE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005AF0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005AF8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005B00
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005B08
	gsSPVertex(_spot09_room_0_vertices_000058D8, 11, 0), // 0x00005B10
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00005B18
	gsSP2Triangles(3, 4, 0, 0, 5, 6, 3, 0), // 0x00005B20
	gsSP2Triangles(6, 4, 3, 0, 7, 6, 5, 0), // 0x00005B28
	gsSP2Triangles(7, 8, 6, 0, 9, 10, 7, 0), // 0x00005B30
	gsSP1Triangle(10, 8, 7, 0), // 0x00005B38
	gsSPEndDisplayList(), // 0x00005B40
};

Vtx_t _spot09_room_0_vertices_00005B48[10] = 
{
	 { 474, -1119, -2695, 0, 669, 104, 140, 15, 25, 255 }, // 0x00005B48
	 { 800, 606, -4000, 0, 3974, 2303, 145, 41, 237, 255 }, // 0x00005B58
	 { 800, -1119, -4000, 0, 2876, -233, 144, 29, 228, 255 }, // 0x00005B68
	 { 400, 606, -2400, 0, 1268, 2715, 146, 46, 250, 255 }, // 0x00005B78
	 { 1585, -1119, -4938, 0, -3146, 468, 60, 20, 101, 255 }, // 0x00005B88
	 { 1585, 800, -4938, 0, -2147, 3315, 61, 0, 103, 255 }, // 0x00005B98
	 { 0, -1119, -4000, 0, -49, 197, 84, 18, 84, 255 }, // 0x00005BA8
	 { 0, 800, -4000, 0, 822, 2982, 105, 0, 58, 255 }, // 0x00005BB8
	 { -400, 800, -2400, 0, 3412, 2859, 96, 68, 22, 255 }, // 0x00005BC8
	 { -326, -1119, -2695, 0, 2140, -6, 101, 23, 59, 255 }, // 0x00005BD8
};

Vtx_t _spot09_room_0_vertices_00005BE8[8] = 
{
	 { 487, -1119, -5338, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005BE8
	 { 1585, -1119, -4938, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005BF8
	 { 487, 800, -5338, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005C08
	 { 1585, 800, -4938, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005C18
	 { -561, -1119, -2459, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005C28
	 { 537, -1119, -2059, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005C38
	 { -561, 800, -2459, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005C48
	 { 537, 800, -2059, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005C58
};

Gfx _spot09_room_0_dlist_00005C68[] =
{
	gsDPPipeSync(), // 0x00005C68
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005C70
	gsSPVertex(_spot09_room_0_vertices_00005BE8, 8, 0), // 0x00005C78
	gsSPCullDisplayList(0, 7), // 0x00005C80
	gsDPPipeSync(), // 0x00005C88
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005C90
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005C98
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005CA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00005CA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005CB0
	gsDPLoadSync(), // 0x00005CB8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005CC0
	gsDPPipeSync(), // 0x00005CC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005CD0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005CD8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005CE0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005CE8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00005CF0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00005CF8
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x00005D00
	gsSPVertex(_spot09_room_0_vertices_00005B48, 10, 0), // 0x00005D08
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005D10
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00005D18
	gsSP2Triangles(8, 9, 7, 0, 9, 6, 7, 0), // 0x00005D20
	gsSPEndDisplayList(), // 0x00005D28
};

Vtx_t _spot09_room_0_vertices_00005D30[13] = 
{
	 { -420, -2848, 1795, 0, 9603, -3320, 117, 22, 6, 255 }, // 0x00005D30
	 { -423, -3200, 1786, 0, 9373, -3902, 96, 40, 59, 255 }, // 0x00005D40
	 { 340, -3200, 1795, 0, 7994, -3737, 170, 19, 81, 255 }, // 0x00005D50
	 { 340, -2848, 1795, 0, 8226, -3146, 155, 52, 36, 255 }, // 0x00005D60
	 { 1154, -3200, 3688, 0, -11804, -1977, 177, 0, 90, 255 }, // 0x00005D70
	 { 711, 600, 2934, 0, -8352, 3529, 146, 21, 40, 255 }, // 0x00005D80
	 { 711, -3200, 2934, 0, -10336, -2107, 145, 1, 44, 255 }, // 0x00005D90
	 { 1154, 600, 3688, 0, -9817, 3659, 194, 0, 102, 255 }, // 0x00005DA0
	 { 324, -875, 1470, 0, -6575, 1114, 139, 240, 19, 255 }, // 0x00005DB0
	 { 364, -555, 1608, 0, -6357, 1796, 143, 22, 33, 255 }, // 0x00005DC0
	 { 400, 600, 1600, 0, -5571, 3561, 149, 53, 5, 255 }, // 0x00005DD0
	 { 340, -2848, 1795, 0, -7804, -1721, 155, 52, 36, 255 }, // 0x00005DE0
	 { 340, -3200, 1795, 0, -8013, -2315, 170, 19, 81, 255 }, // 0x00005DF0
};

Vtx_t _spot09_room_0_vertices_00005E00[8] = 
{
	 { 171, -3200, 1288, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E00
	 { 1759, -3200, 3180, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E10
	 { 171, 600, 1288, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E20
	 { 1759, 600, 3180, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E30
	 { -435, -3200, 1796, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E40
	 { 1154, -3200, 3688, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E50
	 { -435, 600, 1796, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E60
	 { 1154, 600, 3688, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005E70
};

Gfx _spot09_room_0_dlist_00005E80[] =
{
	gsDPPipeSync(), // 0x00005E80
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005E88
	gsSPVertex(_spot09_room_0_vertices_00005E00, 8, 0), // 0x00005E90
	gsSPCullDisplayList(0, 7), // 0x00005E98
	gsDPPipeSync(), // 0x00005EA0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005EA8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005EB0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005EB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00005EC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005EC8
	gsDPLoadSync(), // 0x00005ED0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005ED8
	gsDPPipeSync(), // 0x00005EE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005EE8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005EF0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005EF8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005F00
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00005F08
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00005F10
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x00005F18
	gsSPVertex(_spot09_room_0_vertices_00005D30, 13, 0), // 0x00005F20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005F28
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00005F30
	gsSP2Triangles(5, 8, 6, 0, 5, 9, 8, 0), // 0x00005F38
	gsSP2Triangles(5, 10, 9, 0, 8, 11, 6, 0), // 0x00005F40
	gsSP1Triangle(11, 12, 6, 0), // 0x00005F48
	gsSPEndDisplayList(), // 0x00005F50
};

Vtx_t _spot09_room_0_vertices_00005F58[15] = 
{
	 { 3114, -3680, 3992, 0, 17494, -5424, 226, 0, 140, 255 }, // 0x00005F58
	 { 2202, -3680, 4225, 0, 15916, -5272, 251, 39, 143, 255 }, // 0x00005F68
	 { 2202, 725, 4225, 0, 18277, 1248, 239, 28, 141, 255 }, // 0x00005F78
	 { 673, -3225, 4264, 0, 13594, -4358, 46, 0, 146, 255 }, // 0x00005F88
	 { 673, 460, 4264, 0, 15571, 1103, 54, 37, 156, 255 }, // 0x00005F98
	 { 2202, -3200, 4225, 0, 16171, -4568, 253, 0, 137, 255 }, // 0x00005FA8
	 { -423, -3200, 1786, 0, 9373, -3902, 96, 40, 59, 255 }, // 0x00005FB8
	 { -420, -2848, 1795, 0, 9603, -3320, 117, 22, 6, 255 }, // 0x00005FC8
	 { -89, -3200, 2934, 0, 11039, -4072, 110, 0, 209, 255 }, // 0x00005FD8
	 { -400, -1000, 2000, 0, 10568, -654, 118, 253, 237, 255 }, // 0x00005FE8
	 { -400, 800, 2000, 0, 11535, 2013, 97, 68, 237, 255 }, // 0x00005FF8
	 { -89, 800, 2934, 0, 13185, 1854, 104, 43, 216, 255 }, // 0x00006008
	 { 377, 860, 4667, 0, 15803, 1952, 29, 98, 194, 255 }, // 0x00006018
	 { -371, 1172, 3706, 0, 14585, 2712, 45, 108, 232, 255 }, // 0x00006028
	 { -749, 724, 1745, 0, 11022, 2405, 249, 117, 231, 255 }, // 0x00006038
};

Vtx_t _spot09_room_0_vertices_00006048[8] = 
{
	 { -1317, -3970, 2422, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006048
	 { 2056, -3970, 5253, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006058
	 { -224, -3670, 1119, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006068
	 { 3149, -3670, 3949, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006078
	 { -1890, 1081, 3105, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006088
	 { 1483, 1081, 5935, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006098
	 { -796, 1381, 1801, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060A8
	 { 2577, 1381, 4632, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060B8
};

Gfx _spot09_room_0_dlist_000060C8[] =
{
	gsDPPipeSync(), // 0x000060C8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000060D0
	gsSPVertex(_spot09_room_0_vertices_00006048, 8, 0), // 0x000060D8
	gsSPCullDisplayList(0, 7), // 0x000060E0
	gsDPPipeSync(), // 0x000060E8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000060F0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000060F8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006100
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00006108
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006110
	gsDPLoadSync(), // 0x00006118
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00006120
	gsDPPipeSync(), // 0x00006128
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006130
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006138
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006140
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006148
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00006150
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00006158
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x00006160
	gsSPVertex(_spot09_room_0_vertices_00005F58, 15, 0), // 0x00006168
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00006170
	gsSP2Triangles(4, 2, 5, 0, 6, 7, 8, 0), // 0x00006178
	gsSP2Triangles(7, 9, 8, 0, 10, 11, 9, 0), // 0x00006180
	gsSP2Triangles(11, 8, 9, 0, 8, 4, 3, 0), // 0x00006188
	gsSP2Triangles(8, 11, 4, 0, 4, 12, 2, 0), // 0x00006190
	gsSP2Triangles(11, 13, 12, 0, 11, 12, 4, 0), // 0x00006198
	gsSP2Triangles(11, 10, 13, 0, 10, 14, 13, 0), // 0x000061A0
	gsSPEndDisplayList(), // 0x000061A8
};

Vtx_t _spot09_room_0_vertices_000061B0[6] = 
{
	 { 305, -137, -33, 0, 2465, 1183, 137, 252, 7, 255 }, // 0x000061B0
	 { 400, -26, 792, 0, 0, 0, 149, 40, 222, 255 }, // 0x000061C0
	 { 305, 36, 140, 0, 1936, 0, 169, 82, 10, 255 }, // 0x000061D0
	 { 305, 36, -380, 0, 1936, 0, 169, 82, 248, 255 }, // 0x000061E0
	 { 383, 16, -920, 0, 0, 0, 158, 62, 27, 255 }, // 0x000061F0
	 { 305, -137, -207, 0, 2465, 1183, 137, 252, 249, 255 }, // 0x00006200
};

Vtx_t _spot09_room_0_vertices_00006210[13] = 
{
	 { 383, 16, -920, 0, -1536, 2207, 158, 62, 27, 255 }, // 0x00006210
	 { 471, 518, -1141, 0, -855, 2905, 173, 73, 46, 255 }, // 0x00006220
	 { 400, 606, -2400, 0, 1268, 2715, 146, 46, 250, 255 }, // 0x00006230
	 { 400, 600, 1600, 0, -5571, 3561, 149, 53, 5, 255 }, // 0x00006240
	 { 400, -26, 792, 0, -4391, 2567, 149, 40, 222, 255 }, // 0x00006250
	 { 364, -555, 1608, 0, -6357, 1796, 143, 22, 33, 255 }, // 0x00006260
	 { 400, 512, 960, 0, -4334, 3399, 184, 83, 209, 255 }, // 0x00006270
	 { 298, -1069, -101, 0, -3663, 769, 137, 3, 255, 255 }, // 0x00006280
	 { 474, -1119, -2695, 0, 669, 104, 140, 15, 25, 255 }, // 0x00006290
	 { 364, -555, 611, 0, -4424, 1744, 144, 38, 236, 255 }, // 0x000062A0
	 { 324, -875, 648, 0, -4854, 1183, 137, 255, 243, 255 }, // 0x000062B0
	 { 305, -137, -33, 0, -3096, 2200, 137, 252, 7, 255 }, // 0x000062C0
	 { 305, -137, -207, 0, -2812, 2158, 137, 252, 249, 255 }, // 0x000062D0
};

Vtx_t _spot09_room_0_vertices_000062E0[8] = 
{
	 { 298, -1119, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x000062E0
	 { 474, -1119, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x000062F0
	 { 298, 606, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006300
	 { 474, 606, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006310
	 { 298, -1119, 1608, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006320
	 { 474, -1119, 1608, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006330
	 { 298, 606, 1608, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006340
	 { 474, 606, 1608, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006350
};

Gfx _spot09_room_0_dlist_00006360[] =
{
	gsDPPipeSync(), // 0x00006360
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006368
	gsSPVertex(_spot09_room_0_vertices_000062E0, 8, 0), // 0x00006370
	gsSPCullDisplayList(0, 7), // 0x00006378
	gsDPPipeSync(), // 0x00006380
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006388
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006390
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006398
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00008160), // 0x000063A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x000063A8
	gsDPLoadSync(), // 0x000063B0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000063B8
	gsDPPipeSync(), // 0x000063C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x000063C8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000063D0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000063D8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000063E0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000063E8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000063F0
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x000063F8
	gsSPVertex(_spot09_room_0_vertices_000061B0, 6, 0), // 0x00006400
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00006408
	gsDPPipeSync(), // 0x00006410
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00006418
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006420
	gsDPLoadSync(), // 0x00006428
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00006430
	gsDPPipeSync(), // 0x00006438
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006440
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006448
	gsSPVertex(_spot09_room_0_vertices_00006210, 13, 0), // 0x00006450
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00006458
	gsSP2Triangles(3, 6, 4, 0, 7, 0, 8, 0), // 0x00006460
	gsSP2Triangles(0, 2, 8, 0, 5, 4, 9, 0), // 0x00006468
	gsSP2Triangles(4, 7, 9, 0, 7, 10, 9, 0), // 0x00006470
	gsSP2Triangles(11, 7, 4, 0, 11, 12, 7, 0), // 0x00006478
	gsSP1Triangle(0, 7, 12, 0), // 0x00006480
	gsSPEndDisplayList(), // 0x00006488
};

Vtx_t _spot09_room_0_vertices_00006490[11] = 
{
	 { 340, -2848, 1795, 0, -7804, -1721, 155, 52, 36, 255 }, // 0x00006490
	 { 324, -875, 1470, 0, -6575, 1114, 139, 240, 19, 255 }, // 0x000064A0
	 { 324, -2800, 803, 0, -6391, -1775, 137, 255, 3, 255 }, // 0x000064B0
	 { 324, -875, 648, 0, -4854, 1183, 137, 255, 243, 255 }, // 0x000064C0
	 { 298, -1069, -101, 0, -3663, 769, 137, 3, 255, 255 }, // 0x000064D0
	 { 288, -2248, -380, 0, -4469, -1098, 141, 28, 19, 255 }, // 0x000064E0
	 { 358, -2200, -1278, 0, -2543, -1218, 138, 251, 238, 255 }, // 0x000064F0
	 { 288, -2800, -380, 0, -4782, -1988, 171, 21, 81, 255 }, // 0x00006500
	 { 474, -1119, -2695, 0, 669, 104, 140, 15, 25, 255 }, // 0x00006510
	 { 725, -2200, -2400, 0, -740, -1425, 139, 18, 240, 255 }, // 0x00006520
	 { 688, -2200, -2695, 0, -254, -1468, 205, 21, 106, 255 }, // 0x00006530
};

Vtx_t _spot09_room_0_vertices_00006540[8] = 
{
	 { 288, -2848, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006540
	 { 725, -2848, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006550
	 { 288, -875, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006560
	 { 725, -875, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006570
	 { 288, -2848, 1795, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006580
	 { 725, -2848, 1795, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006590
	 { 288, -875, 1795, 0, 0, 0, 0, 0, 0, 0 }, // 0x000065A0
	 { 725, -875, 1795, 0, 0, 0, 0, 0, 0, 0 }, // 0x000065B0
};

Gfx _spot09_room_0_dlist_000065C0[] =
{
	gsDPPipeSync(), // 0x000065C0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000065C8
	gsSPVertex(_spot09_room_0_vertices_00006540, 8, 0), // 0x000065D0
	gsSPCullDisplayList(0, 7), // 0x000065D8
	gsDPPipeSync(), // 0x000065E0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000065E8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000065F0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000065F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00006600
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006608
	gsDPLoadSync(), // 0x00006610
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00006618
	gsDPPipeSync(), // 0x00006620
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006628
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006630
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006638
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006640
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00006648
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00006650
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x00006658
	gsSPVertex(_spot09_room_0_vertices_00006490, 11, 0), // 0x00006660
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x00006668
	gsSP2Triangles(2, 3, 4, 0, 2, 4, 5, 0), // 0x00006670
	gsSP2Triangles(6, 5, 4, 0, 7, 2, 5, 0), // 0x00006678
	gsSP2Triangles(6, 4, 8, 0, 6, 8, 9, 0), // 0x00006680
	gsSP1Triangle(10, 9, 8, 0), // 0x00006688
	gsSPEndDisplayList(), // 0x00006690
};

Vtx_t _spot09_room_0_vertices_00006698[6] = 
{
	 { -305, 36, 140, 0, 1936, 0, 87, 81, 11, 255 }, // 0x00006698
	 { -400, -50, 785, 0, 0, 0, 107, 43, 226, 255 }, // 0x000066A8
	 { -305, -139, -33, 0, 2465, 1183, 118, 240, 8, 255 }, // 0x000066B8
	 { -305, -139, -207, 0, 2465, 1183, 119, 243, 252, 255 }, // 0x000066C8
	 { -396, 0, -1052, 0, 0, 0, 100, 48, 44, 255 }, // 0x000066D8
	 { -305, 36, -380, 0, 1936, 0, 87, 82, 248, 255 }, // 0x000066E8
};

Vtx_t _spot09_room_0_vertices_000066F8[17] = 
{
	 { -352, 627, -1527, 0, 4855, 2592, 97, 67, 22, 255 }, // 0x000066F8
	 { -450, 497, -1121, 0, 5530, 2402, 71, 50, 82, 255 }, // 0x00006708
	 { -396, 0, -1052, 0, 5668, 1636, 100, 48, 44, 255 }, // 0x00006718
	 { -616, 654, -1163, 0, 5646, 2746, 1, 59, 104, 255 }, // 0x00006728
	 { -400, 500, 954, 0, 9621, 1739, 116, 19, 233, 255 }, // 0x00006738
	 { -400, 800, 2000, 0, 11535, 2013, 97, 68, 237, 255 }, // 0x00006748
	 { -400, -555, 1608, 0, 10152, 69, 117, 14, 18, 255 }, // 0x00006758
	 { -400, -1000, 2000, 0, 10568, -654, 118, 253, 237, 255 }, // 0x00006768
	 { -522, -1048, 383, 0, 7822, -471, 119, 243, 249, 255 }, // 0x00006778
	 { -418, -869, 1454, 0, 9723, -371, 114, 221, 251, 255 }, // 0x00006788
	 { -410, -555, 1295, 0, 9625, 120, 116, 11, 230, 255 }, // 0x00006798
	 { -400, -50, 785, 0, 9102, 914, 107, 43, 226, 255 }, // 0x000067A8
	 { -326, -1119, -2695, 0, 2140, -6, 101, 23, 59, 255 }, // 0x000067B8
	 { -400, 800, -2400, 0, 3412, 2859, 96, 68, 22, 255 }, // 0x000067C8
	 { -406, -991, -1176, 0, 5187, 185, 118, 239, 4, 255 }, // 0x000067D8
	 { -305, -139, -33, 0, 7855, 1029, 118, 240, 8, 255 }, // 0x000067E8
	 { -305, -139, -207, 0, 7578, 1089, 119, 243, 252, 255 }, // 0x000067F8
};

Vtx_t _spot09_room_0_vertices_00006808[8] = 
{
	 { -616, -1119, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006808
	 { -305, -1119, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006818
	 { -616, 800, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006828
	 { -305, 800, -2695, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006838
	 { -616, -1119, 2000, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006848
	 { -305, -1119, 2000, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006858
	 { -616, 800, 2000, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006868
	 { -305, 800, 2000, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006878
};

Gfx _spot09_room_0_dlist_00006888[] =
{
	gsDPPipeSync(), // 0x00006888
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006890
	gsSPVertex(_spot09_room_0_vertices_00006808, 8, 0), // 0x00006898
	gsSPCullDisplayList(0, 7), // 0x000068A0
	gsDPPipeSync(), // 0x000068A8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000068B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000068B8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000068C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00008160), // 0x000068C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x000068D0
	gsDPLoadSync(), // 0x000068D8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000068E0
	gsDPPipeSync(), // 0x000068E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x000068F0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000068F8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006900
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006908
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00006910
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00006918
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x00006920
	gsSPVertex(_spot09_room_0_vertices_00006698, 6, 0), // 0x00006928
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00006930
	gsDPPipeSync(), // 0x00006938
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00006940
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006948
	gsDPLoadSync(), // 0x00006950
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00006958
	gsDPPipeSync(), // 0x00006960
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006968
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006970
	gsSPVertex(_spot09_room_0_vertices_000066F8, 17, 0), // 0x00006978
	gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0), // 0x00006980
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00006988
	gsSP2Triangles(8, 9, 7, 0, 8, 10, 9, 0), // 0x00006990
	gsSP2Triangles(8, 11, 10, 0, 11, 4, 10, 0), // 0x00006998
	gsSP2Triangles(4, 6, 10, 0, 6, 7, 9, 0), // 0x000069A0
	gsSP2Triangles(12, 13, 0, 0, 12, 0, 2, 0), // 0x000069A8
	gsSP2Triangles(12, 2, 14, 0, 15, 8, 16, 0), // 0x000069B0
	gsSP2Triangles(11, 8, 15, 0, 8, 14, 16, 0), // 0x000069B8
	gsSP1Triangle(14, 2, 16, 0), // 0x000069C0
	gsSPEndDisplayList(), // 0x000069C8
};

Vtx_t _spot09_room_0_vertices_000069D0[31] = 
{
	 { -272, -2248, -380, 0, -3527, -1181, 108, 43, 27, 255 }, // 0x000069D0
	 { -272, -2800, -380, 0, -3840, -2071, 57, 35, 99, 255 }, // 0x000069E0
	 { 288, -2800, -380, 0, -4782, -1988, 171, 21, 81, 255 }, // 0x000069F0
	 { 288, -2248, -380, 0, -4469, -1098, 141, 28, 19, 255 }, // 0x00006A00
	 { -522, -1048, 383, 0, 7822, -471, 119, 243, 249, 255 }, // 0x00006A10
	 { -400, -1000, 2000, 0, 10568, -654, 118, 253, 237, 255 }, // 0x00006A20
	 { -420, -2848, 1795, 0, 9603, -3320, 117, 22, 6, 255 }, // 0x00006A30
	 { -400, -1958, -2695, 0, 1701, -1269, 22, 22, 115, 255 }, // 0x00006A40
	 { -326, -1119, -2695, 0, 2140, -6, 101, 23, 59, 255 }, // 0x00006A50
	 { -532, -1963, -2695, 0, 1921, -1296, 56, 81, 68, 255 }, // 0x00006A60
	 { 688, -2200, -2695, 0, -254, -1468, 205, 21, 106, 255 }, // 0x00006A70
	 { 474, -1119, -2695, 0, 669, 104, 140, 15, 25, 255 }, // 0x00006A80
	 { 92, -1630, -2695, 0, 1044, -710, 220, 36, 108, 255 }, // 0x00006A90
	 { -28, -1630, -2695, 0, 1245, -728, 36, 36, 108, 255 }, // 0x00006AA0
	 { -400, -2200, -2695, 0, 1575, -1628, 86, 26, 78, 255 }, // 0x00006AB0
	 { 92, -1510, -2695, 0, 1106, -532, 220, 220, 108, 255 }, // 0x00006AC0
	 { -721, -2156, -1006, 0, 4770, -1620, 99, 67, 255, 255 }, // 0x00006AD0
	 { -406, -991, -1176, 0, 5187, 185, 118, 239, 4, 255 }, // 0x00006AE0
	 { -716, -2051, 25, 0, 6518, -1773, 75, 86, 220, 255 }, // 0x00006AF0
	 { -522, -1048, 383, 0, 7822, -471, 119, 243, 249, 255 }, // 0x00006B00
	 { -414, -2051, 347, 0, 7235, -1903, 116, 30, 253, 255 }, // 0x00006B10
	 { -420, -2848, 1795, 0, 9603, -3320, 117, 22, 6, 255 }, // 0x00006B20
	 { -272, -2051, -380, 0, 6287, -1820, 69, 97, 251, 255 }, // 0x00006B30
	 { -272, -2248, -380, 0, 6190, -2097, 108, 43, 27, 255 }, // 0x00006B40
	 { -414, -2800, 316, 0, 6774, -3066, 117, 3, 22, 255 }, // 0x00006B50
	 { -272, -2800, -380, 0, 5878, -2987, 57, 35, 99, 255 }, // 0x00006B60
	 { -28, -1510, -2695, 0, 1308, -550, 36, 220, 108, 255 }, // 0x00006B70
	 { -272, -2200, -786, 0, 4796, -1911, 120, 0, 0, 255 }, // 0x00006B80
	 { -272, -2185, -786, 0, 4804, -1888, 90, 78, 245, 255 }, // 0x00006B90
	 { -272, -2200, -1618, 0, 3397, -1788, 119, 251, 249, 255 }, // 0x00006BA0
	 { -272, -2185, -1618, 0, 3405, -1766, 73, 94, 7, 255 }, // 0x00006BB0
};

Vtx_t _spot09_room_0_vertices_00006BC0[8] = 
{
	 { -496, -2848, -2903, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006BC0
	 { 696, -2848, -2693, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006BD0
	 { -496, -991, -2903, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006BE0
	 { 696, -991, -2693, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006BF0
	 { -1331, -2848, 1836, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006C00
	 { -139, -2848, 2046, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006C10
	 { -1331, -991, 1836, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006C20
	 { -139, -991, 2046, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006C30
};

Gfx _spot09_room_0_dlist_00006C40[] =
{
	gsDPPipeSync(), // 0x00006C40
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006C48
	gsSPVertex(_spot09_room_0_vertices_00006BC0, 8, 0), // 0x00006C50
	gsSPCullDisplayList(0, 7), // 0x00006C58
	gsDPPipeSync(), // 0x00006C60
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006C68
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006C70
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006C78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F960), // 0x00006C80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006C88
	gsDPLoadSync(), // 0x00006C90
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00006C98
	gsDPPipeSync(), // 0x00006CA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006CA8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006CB0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006CB8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006CC0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00006CC8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00006CD0
	gsDPSetPrimColor(0, 0, 255, 218, 193, 255), // 0x00006CD8
	gsSPVertex(_spot09_room_0_vertices_000069D0, 31, 0), // 0x00006CE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006CE8
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00006CF0
	gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0), // 0x00006CF8
	gsSP2Triangles(7, 10, 13, 0, 7, 14, 10, 0), // 0x00006D00
	gsSP2Triangles(15, 12, 11, 0, 16, 8, 17, 0), // 0x00006D08
	gsSP2Triangles(18, 16, 19, 0, 16, 17, 19, 0), // 0x00006D10
	gsSP2Triangles(18, 19, 20, 0, 20, 19, 21, 0), // 0x00006D18
	gsSP2Triangles(22, 20, 23, 0, 20, 24, 23, 0), // 0x00006D20
	gsSP2Triangles(24, 25, 23, 0, 24, 20, 21, 0), // 0x00006D28
	gsSP2Triangles(15, 8, 26, 0, 15, 11, 8, 0), // 0x00006D30
	gsSP2Triangles(7, 26, 8, 0, 13, 26, 7, 0), // 0x00006D38
	gsSP2Triangles(8, 16, 9, 0, 22, 23, 27, 0), // 0x00006D40
	gsSP2Triangles(22, 27, 28, 0, 27, 29, 30, 0), // 0x00006D48
	gsSP2Triangles(27, 30, 28, 0, 29, 14, 7, 0), // 0x00006D50
	gsSP1Triangle(29, 7, 30, 0), // 0x00006D58
	gsSPEndDisplayList(), // 0x00006D60
};

Vtx_t _spot09_room_0_vertices_00006D68[7] = 
{
	 { 1257, 40, -147, 0, 0, -3044, 155, 45, 46, 255 }, // 0x00006D68
	 { 2051, -108, 224, 0, 0, 2048, 45, 30, 106, 255 }, // 0x00006D78
	 { 2089, -107, 154, 0, 1024, 2048, 110, 37, 228, 255 }, // 0x00006D88
	 { 1280, 43, -223, 0, 1024, -3043, 215, 57, 160, 255 }, // 0x00006D98
	 { 2051, -108, 224, 0, 0, 2047, 45, 30, 106, 255 }, // 0x00006DA8
	 { 2051, -117, 224, 0, 49, 2095, 5, 96, 70, 255 }, // 0x00006DB8
	 { 2089, -117, 154, 0, 976, 2095, 54, 99, 217, 255 }, // 0x00006DC8
};

Vtx_t _spot09_room_0_vertices_00006DD8[15] = 
{
	 { 1277, 15, -213, 0, 6124, 4106, 23, 175, 171, 255 }, // 0x00006DD8
	 { 1942, -116, 94, 0, 6124, -3146, 20, 0, 138, 255 }, // 0x00006DE8
	 { 1888, -122, 106, 0, 5421, -2341, 149, 3, 203, 255 }, // 0x00006DF8
	 { 1269, 2, -187, 0, 5421, 4110, 237, 138, 246, 255 }, // 0x00006E08
	 { 1888, -122, 106, 0, 5421, -2341, 149, 3, 203, 255 }, // 0x00006E18
	 { 1913, -117, 150, 0, 4717, -3163, 178, 252, 91, 255 }, // 0x00006E28
	 { 1261, 13, -160, 0, 4717, 4107, 207, 170, 68, 255 }, // 0x00006E38
	 { 2051, -117, 224, 0, 4245, -4386, 5, 96, 70, 255 }, // 0x00006E48
	 { 2051, -108, 224, 0, 4014, -4389, 45, 30, 106, 255 }, // 0x00006E58
	 { 1257, 40, -147, 0, 4014, 4096, 155, 45, 46, 255 }, // 0x00006E68
	 { 1280, 43, -223, 0, 1200, 4096, 215, 57, 160, 255 }, // 0x00006E78
	 { 2089, -107, 154, 0, 1200, -4390, 110, 37, 228, 255 }, // 0x00006E88
	 { 2089, -117, 154, 0, 973, -4386, 54, 99, 217, 255 }, // 0x00006E98
	 { 1942, -116, 94, 0, 497, -3146, 20, 0, 138, 255 }, // 0x00006EA8
	 { 1277, 15, -213, 0, 497, 4106, 23, 175, 171, 255 }, // 0x00006EB8
};

Vtx_t _spot09_room_0_vertices_00006EC8[4] = 
{
	 { 1258, 34, -150, 0, 36, -3078, 142, 0, 221, 255 }, // 0x00006EC8
	 { 1257, 40, -147, 0, 0, -3044, 155, 45, 46, 255 }, // 0x00006ED8
	 { 1280, 43, -223, 0, 1024, -3043, 215, 57, 160, 255 }, // 0x00006EE8
	 { 1280, 36, -221, 0, 988, -3078, 142, 0, 221, 255 }, // 0x00006EF8
};

Vtx_t _spot09_room_0_vertices_00006F08[8] = 
{
	 { 1288, -153, -236, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F08
	 { 2060, -153, 210, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F18
	 { 1325, -111, -300, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F28
	 { 2097, -111, 146, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F38
	 { 1234, 32, -143, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F48
	 { 2006, 32, 303, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F58
	 { 1271, 74, -207, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F68
	 { 2043, 74, 238, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F78
};

Gfx _spot09_room_0_dlist_00006F88[] =
{
	gsDPPipeSync(), // 0x00006F88
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006F90
	gsSPVertex(_spot09_room_0_vertices_00006F08, 8, 0), // 0x00006F98
	gsSPCullDisplayList(0, 7), // 0x00006FA0
	gsDPPipeSync(), // 0x00006FA8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006FB0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006FB8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006FC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000B960), // 0x00006FC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 5, 0), // 0x00006FD0
	gsDPLoadSync(), // 0x00006FD8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006FE0
	gsDPPipeSync(), // 0x00006FE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 2, 5, 0), // 0x00006FF0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006FF8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007000
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007008
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00007010
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00007018
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007020
	gsSPVertex(_spot09_room_0_vertices_00006D68, 7, 0), // 0x00007028
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007030
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 6, 0), // 0x00007038
	gsDPPipeSync(), // 0x00007040
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00010960), // 0x00007048
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007050
	gsDPLoadSync(), // 0x00007058
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00007060
	gsDPPipeSync(), // 0x00007068
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007070
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007078
	gsSPVertex(_spot09_room_0_vertices_00006DD8, 15, 0), // 0x00007080
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007088
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 6, 0), // 0x00007090
	gsSP2Triangles(6, 5, 7, 0, 6, 7, 8, 0), // 0x00007098
	gsSP2Triangles(6, 8, 9, 0, 10, 11, 12, 0), // 0x000070A0
	gsSP2Triangles(10, 12, 13, 0, 10, 13, 14, 0), // 0x000070A8
	gsDPPipeSync(), // 0x000070B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000B960), // 0x000070B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 5, 0), // 0x000070C0
	gsDPLoadSync(), // 0x000070C8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000070D0
	gsDPPipeSync(), // 0x000070D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 2, 5, 0), // 0x000070E0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000070E8
	gsSPVertex(_spot09_room_0_vertices_00006EC8, 4, 0), // 0x000070F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000070F8
	gsSPEndDisplayList(), // 0x00007100
};

Gfx _spot09_room_0_dlist_00007108[] =
{
	gsSPDisplayList(_spot09_room_0_dlist_00001330), // 0x00007108
	gsSPDisplayList(_spot09_room_0_dlist_00001550), // 0x00007110
	gsSPDisplayList(_spot09_room_0_dlist_000017A0), // 0x00007118
	gsSPDisplayList(_spot09_room_0_dlist_00001A40), // 0x00007120
	gsSPDisplayList(_spot09_room_0_dlist_00001E98), // 0x00007128
	gsSPDisplayList(_spot09_room_0_dlist_00002158), // 0x00007130
	gsSPDisplayList(_spot09_room_0_dlist_00002698), // 0x00007138
	gsSPDisplayList(_spot09_room_0_dlist_00002A70), // 0x00007140
	gsSPDisplayList(_spot09_room_0_dlist_00002DA8), // 0x00007148
	gsSPDisplayList(_spot09_room_0_dlist_000030D0), // 0x00007150
	gsSPDisplayList(_spot09_room_0_dlist_00003308), // 0x00007158
	gsSPDisplayList(_spot09_room_0_dlist_00003630), // 0x00007160
	gsSPDisplayList(_spot09_room_0_dlist_00003C98), // 0x00007168
	gsSPDisplayList(_spot09_room_0_dlist_00004540), // 0x00007170
	gsSPDisplayList(_spot09_room_0_dlist_00004C00), // 0x00007178
	gsSPDisplayList(_spot09_room_0_dlist_00005128), // 0x00007180
	gsSPDisplayList(_spot09_room_0_dlist_00005598), // 0x00007188
	gsSPDisplayList(_spot09_room_0_dlist_00005A08), // 0x00007190
	gsSPDisplayList(_spot09_room_0_dlist_00005C68), // 0x00007198
	gsSPDisplayList(_spot09_room_0_dlist_00005E80), // 0x000071A0
	gsSPDisplayList(_spot09_room_0_dlist_000060C8), // 0x000071A8
	gsSPDisplayList(_spot09_room_0_dlist_00006360), // 0x000071B0
	gsSPDisplayList(_spot09_room_0_dlist_000065C0), // 0x000071B8
	gsSPDisplayList(_spot09_room_0_dlist_00006888), // 0x000071C0
	gsSPDisplayList(_spot09_room_0_dlist_00006C40), // 0x000071C8
	gsSPDisplayList(_spot09_room_0_dlist_00006F88), // 0x000071D0
	gsSPEndDisplayList(), // 0x000071D8
};

Vtx_t _spot09_room_0_vertices_000071E0[27] = 
{
	 { 673, -3225, 4264, 0, -1638, 5494, 42, 51, 156, 255 }, // 0x000071E0
	 { 2202, -3200, 4225, 0, -1638, 6689, 253, 38, 143, 255 }, // 0x000071F0
	 { 2202, -3200, 3734, 0, -819, 6518, 251, 83, 86, 255 }, // 0x00007200
	 { 1154, -3200, 3688, 0, -819, 5494, 182, 41, 84, 255 }, // 0x00007210
	 { -89, -3200, 2934, 0, -1638, 4879, 107, 29, 211, 255 }, // 0x00007220
	 { 711, -3200, 2934, 0, -819, 5050, 151, 39, 42, 255 }, // 0x00007230
	 { -423, -3200, 1786, 0, -1638, 3850, 85, 65, 53, 255 }, // 0x00007240
	 { 340, -3200, 1795, 0, -819, 3755, 176, 45, 76, 255 }, // 0x00007250
	 { -414, -2800, 316, 0, -1638, 3072, 110, 41, 21, 255 }, // 0x00007260
	 { -420, -2800, 1795, 0, -1638, 3850, 112, 40, 6, 255 }, // 0x00007270
	 { 340, -2800, 1795, 0, -819, 3755, 165, 70, 32, 255 }, // 0x00007280
	 { 324, -2800, 803, 0, -819, 3072, 144, 41, 3, 255 }, // 0x00007290
	 { -272, -2800, -380, 0, -1638, 2389, 46, 77, 79, 255 }, // 0x000072A0
	 { 288, -2800, -380, 0, -819, 2389, 180, 56, 73, 255 }, // 0x000072B0
	 { -272, -2200, -1198, 0, -1638, 1707, 0, 120, 0, 255 }, // 0x000072C0
	 { 358, -2200, -1278, 0, -819, 1707, 153, 59, 240, 255 }, // 0x000072D0
	 { 725, -2200, -2400, 0, -819, 887, 164, 75, 243, 255 }, // 0x000072E0
	 { -400, -2200, -2695, 0, -1638, 683, 74, 65, 67, 255 }, // 0x000072F0
	 { 688, -2200, -2695, 0, -819, 683, 207, 39, 102, 255 }, // 0x00007300
	 { 0, -1119, -4000, 0, 0, 171, 75, 55, 75, 255 }, // 0x00007310
	 { -326, -1119, -2695, 0, 0, 1365, 98, 35, 58, 255 }, // 0x00007320
	 { 474, -1119, -2695, 0, 819, 1365, 143, 30, 25, 255 }, // 0x00007330
	 { 800, -1119, -4000, 0, 819, 171, 186, 95, 238, 255 }, // 0x00007340
	 { 1585, -1119, -4938, 0, 0, -1195, 50, 68, 85, 255 }, // 0x00007350
	 { -272, -2200, -380, 0, -1638, 2389, 91, 74, 22, 255 }, // 0x00007360
	 { 358, -2200, -1278, 0, -819, 1707, 153, 59, 240, 255 }, // 0x00007370
	 { 288, -2200, -373, 0, -819, 2389, 150, 52, 18, 255 }, // 0x00007380
};

Gfx _spot09_room_0_dlist_00007390[] =
{
	gsDPPipeSync(), // 0x00007390
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007398
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000073A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000E160), // 0x000073A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 14, 0, 5, 15), // 0x000073B0
	gsDPLoadSync(), // 0x000073B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000073C0
	gsDPPipeSync(), // 0x000073C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 14, 0, 5, 15), // 0x000073D0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000073D8
	gsDPTileSync(), // 0x000073E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 1, 0, 0, 5, 15, 0, 5, 14), // 0x000073E8
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x000073F0
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, COMBINED, 0, PRIMITIVE, 0), // 0x000073F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00007400
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x00007408
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007410
	gsDPSetPrimColor(0, 0, 255, 255, 255, 140), // 0x00007418
	gsSPDisplayList(0x0A000000), // 0x00007420
	gsSPVertex(_spot09_room_0_vertices_000071E0, 27, 0), // 0x00007428
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007430
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00007438
	gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0), // 0x00007440
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00007448
	gsSP2Triangles(12, 11, 13, 0, 12, 8, 11, 0), // 0x00007450
	gsSP2Triangles(14, 15, 16, 0, 17, 14, 16, 0), // 0x00007458
	gsSP2Triangles(17, 16, 18, 0, 19, 20, 21, 0), // 0x00007460
	gsSP2Triangles(19, 21, 22, 0, 23, 19, 22, 0), // 0x00007468
	gsSP2Triangles(14, 24, 25, 0, 24, 26, 25, 0), // 0x00007470
	gsSPEndDisplayList(), // 0x00007478
};

Vtx_t _spot09_room_0_vertices_00007480[1] = 
{
	 { 0, -3280, 0, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007480
};

Gfx _spot09_room_0_dlist_00007490[] =
{
	gsSPVertex(_spot09_room_0_vertices_00007480, 1, 0), // 0x00007490
	gsSPBranchLessZraw(_spot09_room_0_dlist_00007390, 0x00, 0xE88), // 0x000074A0
	gsSPEndDisplayList(), // 0x000074A8
};

Vtx_t _spot09_room_0_vertices_000074B0[8] = 
{
	 { -423, -3624, 4193, 0, 0, 0, 0, 0, 0, 0 }, // 0x000074B0
	 { 2202, -3624, 4193, 0, 0, 0, 0, 0, 0, 0 }, // 0x000074C0
	 { -423, -1987, -5091, 0, 0, 0, 0, 0, 0, 0 }, // 0x000074D0
	 { 2202, -1987, -5091, 0, 0, 0, 0, 0, 0, 0 }, // 0x000074E0
	 { -423, -2373, 4414, 0, 0, 0, 0, 0, 0, 0 }, // 0x000074F0
	 { 2202, -2373, 4414, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007500
	 { -423, -736, -4871, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007510
	 { 2202, -736, -4871, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007520
};

Gfx _spot09_room_0_dlist_00007530[] =
{
	gsDPPipeSync(), // 0x00007530
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007538
	gsSPVertex(_spot09_room_0_vertices_000074B0, 8, 0), // 0x00007540
	gsSPCullDisplayList(0, 7), // 0x00007548
	gsDPPipeSync(), // 0x00007550
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007558
	gsSPDisplayList(_spot09_room_0_dlist_00007490), // 0x00007560
	gsSPEndDisplayList(), // 0x00007568
};

Vtx_t _spot09_room_0_vertices_00007570[11] = 
{
	 { 386, -3045, 1894, 0, 1024, 2414, 56, 20, 104, 255 }, // 0x00007570
	 { 379, -2902, 1869, 0, 1024, 1840, 54, 37, 100, 255 }, // 0x00007580
	 { -422, -2902, 1868, 0, 0, 1840, 54, 37, 100, 255 }, // 0x00007590
	 { -414, -3045, 1894, 0, 0, 2414, 56, 20, 104, 255 }, // 0x000075A0
	 { 363, -2785, 1817, 0, 1024, 1460, 30, 101, 56, 255 }, // 0x000075B0
	 { -437, -2785, 1813, 0, 0, 1460, 30, 101, 56, 255 }, // 0x000075C0
	 { 364, -2785, 1712, 0, 1024, 553, 0, 120, 0, 0 }, // 0x000075D0
	 { -441, -2785, 1714, 0, 0, 553, 0, 120, 0, 0 }, // 0x000075E0
	 { -437, -2785, 1813, 0, 0, 1460, 30, 101, 56, 255 }, // 0x000075F0
	 { 392, -3200, 1916, 0, 1024, 2766, 56, 17, 104, 255 }, // 0x00007600
	 { -406, -3200, 1916, 0, 0, 2766, 56, 17, 104, 255 }, // 0x00007610
};

Vtx_t _spot09_room_0_vertices_00007620[4] = 
{
	 { -420, -2800, 1795, 0, -1638, 2389, 93, 21, 183, 126 }, // 0x00007620
	 { 340, -2800, 1795, 0, -819, 2389, 151, 19, 202, 126 }, // 0x00007630
	 { 340, -2848, 1795, 0, -819, 2353, 151, 19, 202, 126 }, // 0x00007640
	 { -420, -2848, 1795, 0, -1638, 2349, 1, 0, 137, 126 }, // 0x00007650
};

Vtx_t _spot09_room_0_vertices_00007660[11] = 
{
	 { 318, -2800, -265, 0, 1024, 3219, 0, 25, 117, 255 }, // 0x00007660
	 { 318, -2445, -302, 0, 1024, 2414, 0, 28, 116, 255 }, // 0x00007670
	 { -306, -2445, -303, 0, 0, 2414, 0, 28, 116, 255 }, // 0x00007680
	 { -306, -2800, -266, 0, 0, 3219, 0, 25, 117, 255 }, // 0x00007690
	 { 318, -2302, -321, 0, 1024, 1840, 255, 52, 107, 255 }, // 0x000076A0
	 { -302, -2302, -322, 0, 0, 1840, 255, 52, 107, 255 }, // 0x000076B0
	 { 318, -2185, -353, 0, 1024, 1460, 255, 102, 62, 255 }, // 0x000076C0
	 { -306, -2185, -360, 0, 0, 1460, 255, 102, 62, 255 }, // 0x000076D0
	 { 313, -2185, -451, 0, 1024, 553, 0, 120, 0, 0 }, // 0x000076E0
	 { -305, -2185, -450, 0, 0, 553, 0, 120, 0, 0 }, // 0x000076F0
	 { -306, -2185, -360, 0, 0, 1460, 255, 102, 62, 255 }, // 0x00007700
};

Vtx_t _spot09_room_0_vertices_00007710[4] = 
{
	 { -272, -2200, -380, 0, -1638, 2389, 93, 21, 183, 126 }, // 0x00007710
	 { 288, -2200, -373, 0, -819, 2389, 151, 19, 202, 126 }, // 0x00007720
	 { 288, -2248, -380, 0, -819, 2353, 151, 19, 202, 126 }, // 0x00007730
	 { -272, -2248, -380, 0, -1638, 2349, 1, 0, 137, 126 }, // 0x00007740
};

Vtx_t _spot09_room_0_vertices_00007750[13] = 
{
	 { -388, -2200, -2426, 0, 0, 4096, 0, 22, 117, 255 }, // 0x00007750
	 { 644, -2200, -2426, 0, 1024, 4096, 0, 22, 117, 255 }, // 0x00007760
	 { 592, -1628, -2532, 0, 1024, 3219, 0, 22, 117, 255 }, // 0x00007770
	 { -368, -1628, -2534, 0, 0, 3219, 0, 22, 117, 255 }, // 0x00007780
	 { 546, -1342, -2586, 0, 1024, 2414, 0, 22, 117, 255 }, // 0x00007790
	 { -373, -1342, -2588, 0, 0, 2414, 0, 22, 117, 255 }, // 0x000077A0
	 { 533, -1199, -2612, 0, 1024, 1840, 0, 49, 109, 255 }, // 0x000077B0
	 { -368, -1199, -2615, 0, 0, 1840, 0, 49, 109, 255 }, // 0x000077C0
	 { 535, -1083, -2673, 0, 1024, 1460, 0, 101, 64, 255 }, // 0x000077D0
	 { -373, -1083, -2673, 0, 0, 1460, 0, 101, 64, 255 }, // 0x000077E0
	 { 577, -1030, -2903, 0, 1024, 553, 0, 117, 26, 0 }, // 0x000077F0
	 { -331, -1030, -2903, 0, 0, 553, 0, 117, 26, 0 }, // 0x00007800
	 { -373, -1083, -2673, 0, 0, 1460, 0, 101, 64, 255 }, // 0x00007810
};

Vtx_t _spot09_room_0_vertices_00007820[4] = 
{
	 { 333, -3182, 1922, 0, 4710, 0, 222, 69, 92, 255 }, // 0x00007820
	 { 348, -3092, 1909, 0, 4710, 1024, 234, 37, 112, 0 }, // 0x00007830
	 { -353, -3092, 1910, 0, 0, 1024, 106, 14, 52, 0 }, // 0x00007840
	 { -308, -3179, 1922, 0, 0, 0, 102, 53, 32, 255 }, // 0x00007850
};

Vtx_t _spot09_room_0_vertices_00007860[8] = 
{
	 { 333, -3182, 1922, 0, 4710, 0, 222, 69, 92, 255 }, // 0x00007860
	 { 397, -3194, 2048, 0, 4710, 1024, 214, 91, 65, 0 }, // 0x00007870
	 { 395, -3121, 1983, 0, 5734, 1024, 172, 42, 74, 0 }, // 0x00007880
	 { 348, -3092, 1909, 0, 4710, 1024, 234, 37, 112, 0 }, // 0x00007890
	 { -356, -3121, 1984, 0, -1024, 1024, 117, 19, 242, 0 }, // 0x000078A0
	 { -327, -3194, 2042, 0, 0, 1024, 83, 86, 5, 0 }, // 0x000078B0
	 { -308, -3179, 1922, 0, 0, 0, 102, 53, 32, 255 }, // 0x000078C0
	 { -353, -3092, 1910, 0, 0, 1024, 106, 14, 52, 0 }, // 0x000078D0
};

Vtx_t _spot09_room_0_vertices_000078E0[8] = 
{
	 { 397, -3194, 2048, 0, 4710, 1024, 214, 91, 65, 0 }, // 0x000078E0
	 { 333, -3182, 1922, 0, 4710, 0, 222, 69, 92, 255 }, // 0x000078F0
	 { -308, -3179, 1922, 0, 0, 0, 102, 53, 32, 255 }, // 0x00007900
	 { -327, -3194, 2042, 0, 0, 1024, 83, 86, 5, 0 }, // 0x00007910
	 { 248, -2780, -266, 0, 4710, 0, 170, 66, 50, 255 }, // 0x00007920
	 { 288, -2661, -265, 0, 4710, 1024, 168, 29, 75, 0 }, // 0x00007930
	 { -272, -2661, -265, 0, 0, 1024, 81, 1, 88, 0 }, // 0x00007940
	 { -271, -2780, -266, 0, 0, 0, 87, 46, 68, 255 }, // 0x00007950
};

Vtx_t _spot09_room_0_vertices_00007960[8] = 
{
	 { 248, -2780, -266, 0, 4710, 0, 170, 66, 50, 255 }, // 0x00007960
	 { 288, -2796, -175, 0, 4710, 1024, 181, 90, 24, 0 }, // 0x00007970
	 { 288, -2700, -204, 0, 5734, 1024, 141, 27, 19, 0 }, // 0x00007980
	 { 288, -2661, -265, 0, 4710, 1024, 168, 29, 75, 0 }, // 0x00007990
	 { -311, -2700, -204, 0, -1024, 1024, 113, 253, 39, 0 }, // 0x000079A0
	 { -339, -2796, -175, 0, 0, 1024, 78, 83, 36, 0 }, // 0x000079B0
	 { -271, -2780, -266, 0, 0, 0, 87, 46, 68, 255 }, // 0x000079C0
	 { -272, -2661, -265, 0, 0, 1024, 81, 1, 88, 0 }, // 0x000079D0
};

Vtx_t _spot09_room_0_vertices_000079E0[13] = 
{
	 { 288, -2796, -175, 0, 4710, 1024, 181, 90, 24, 0 }, // 0x000079E0
	 { 248, -2780, -266, 0, 4710, 0, 170, 66, 50, 255 }, // 0x000079F0
	 { -271, -2780, -266, 0, 0, 0, 87, 46, 68, 255 }, // 0x00007A00
	 { -339, -2796, -175, 0, 0, 1024, 78, 83, 36, 0 }, // 0x00007A10
	 { -285, -2179, -2427, 0, 0, 0, 57, 86, 61, 255 }, // 0x00007A20
	 { 104, -2188, -2104, 0, 2355, 1024, 0, 119, 5, 0 }, // 0x00007A30
	 { 644, -2179, -2427, 0, 4710, 0, 199, 86, 61, 255 }, // 0x00007A40
	 { 644, -2188, -2224, 0, 4710, 1024, 203, 107, 5, 0 }, // 0x00007A50
	 { -306, -2188, -2224, 0, 0, 1024, 53, 107, 5, 0 }, // 0x00007A60
	 { 764, -2179, -2427, 0, 5734, 1024, 0, 82, 86, 0 }, // 0x00007A70
	 { -461, -2179, -2427, 0, -1024, 1024, 0, 82, 86, 0 }, // 0x00007A80
	 { -306, -1971, -2426, 0, 0, 1024, 53, 0, 107, 0 }, // 0x00007A90
	 { 644, -1971, -2426, 0, 4710, 1024, 203, 0, 107, 0 }, // 0x00007AA0
};

Vtx_t _spot09_room_0_vertices_00007AB0[8] = 
{
	 { 644, -2179, -2427, 0, 4710, 0, 199, 86, 61, 255 }, // 0x00007AB0
	 { 644, -2188, -2224, 0, 4710, 1024, 203, 107, 5, 0 }, // 0x00007AC0
	 { 644, -2033, -2289, 0, 5734, 1024, 137, 0, 0, 0 }, // 0x00007AD0
	 { 644, -1971, -2426, 0, 4710, 1024, 203, 0, 107, 0 }, // 0x00007AE0
	 { -351, -2033, -2289, 0, -1024, 1024, 119, 0, 0, 0 }, // 0x00007AF0
	 { -306, -2188, -2224, 0, 0, 1024, 53, 107, 5, 0 }, // 0x00007B00
	 { -285, -2179, -2427, 0, 0, 0, 57, 86, 61, 255 }, // 0x00007B10
	 { -306, -1971, -2426, 0, 0, 1024, 53, 0, 107, 0 }, // 0x00007B20
};

Gfx _spot09_room_0_dlist_00007B30[] =
{
	gsDPPipeSync(), // 0x00007B30
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007B38
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007B40
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F160), // 0x00007B48
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 7, 2, 2, 5, 0), // 0x00007B50
	gsDPLoadSync(), // 0x00007B58
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00007B60
	gsDPPipeSync(), // 0x00007B68
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 7, 2, 2, 5, 0), // 0x00007B70
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x00007B78
	gsDPTileSync(), // 0x00007B80
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 1, 0, 0, 7, 1, 2, 5, 0), // 0x00007B88
	gsDPSetTileSize(1, 0, 0, 124, 508), // 0x00007B90
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, K5, SHADE, COMBINED_ALPHA, COMBINED, 0, SHADE, 0), // 0x00007B98
	gsSPSetOtherMode(0xE2, 3, 29, 0x0C1849D8), // 0x00007BA0
	gsSPGeometryMode(0xFF0D0400, 0x00000000), // 0x00007BA8
	gsSPGeometryMode(0xFF000000, 0x00020000), // 0x00007BB0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007BB8
	gsSPDisplayList(0x08000000), // 0x00007BC0
	gsSPVertex(_spot09_room_0_vertices_00007570, 11, 0), // 0x00007BC8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007BD0
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00007BD8
	gsSP2Triangles(4, 6, 7, 0, 4, 7, 8, 0), // 0x00007BE0
	gsSP2Triangles(9, 0, 3, 0, 9, 3, 10, 0), // 0x00007BE8
	gsDPPipeSync(), // 0x00007BF0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000E160), // 0x00007BF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007C00
	gsDPLoadSync(), // 0x00007C08
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00007C10
	gsDPPipeSync(), // 0x00007C18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007C20
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007C28
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, SHADE, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007C30
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00007C38
	gsSPVertex(_spot09_room_0_vertices_00007620, 4, 0), // 0x00007C40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007C48
	gsDPPipeSync(), // 0x00007C50
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F160), // 0x00007C58
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 7, 2, 2, 5, 0), // 0x00007C60
	gsDPLoadSync(), // 0x00007C68
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00007C70
	gsDPPipeSync(), // 0x00007C78
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 7, 2, 2, 5, 0), // 0x00007C80
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x00007C88
	gsDPTileSync(), // 0x00007C90
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 1, 0, 0, 7, 1, 2, 5, 0), // 0x00007C98
	gsDPSetTileSize(1, 0, 0, 124, 508), // 0x00007CA0
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, K5, SHADE, COMBINED_ALPHA, COMBINED, 0, SHADE, 0), // 0x00007CA8
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00007CB0
	gsSPDisplayList(0x08000000), // 0x00007CB8
	gsSPVertex(_spot09_room_0_vertices_00007660, 11, 0), // 0x00007CC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007CC8
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00007CD0
	gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0), // 0x00007CD8
	gsSP2Triangles(6, 8, 9, 0, 6, 9, 10, 0), // 0x00007CE0
	gsDPPipeSync(), // 0x00007CE8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000E160), // 0x00007CF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007CF8
	gsDPLoadSync(), // 0x00007D00
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00007D08
	gsDPPipeSync(), // 0x00007D10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007D18
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007D20
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, SHADE, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007D28
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00007D30
	gsSPVertex(_spot09_room_0_vertices_00007710, 4, 0), // 0x00007D38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007D40
	gsDPPipeSync(), // 0x00007D48
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F160), // 0x00007D50
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 7, 2, 2, 5, 0), // 0x00007D58
	gsDPLoadSync(), // 0x00007D60
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00007D68
	gsDPPipeSync(), // 0x00007D70
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 7, 2, 2, 5, 0), // 0x00007D78
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x00007D80
	gsDPTileSync(), // 0x00007D88
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 1, 0, 0, 7, 1, 2, 5, 0), // 0x00007D90
	gsDPSetTileSize(1, 0, 0, 124, 508), // 0x00007D98
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, K5, SHADE, COMBINED_ALPHA, COMBINED, 0, SHADE, 0), // 0x00007DA0
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00007DA8
	gsSPDisplayList(0x08000000), // 0x00007DB0
	gsSPVertex(_spot09_room_0_vertices_00007750, 13, 0), // 0x00007DB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007DC0
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00007DC8
	gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0), // 0x00007DD0
	gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0), // 0x00007DD8
	gsSP2Triangles(8, 10, 11, 0, 8, 11, 12, 0), // 0x00007DE0
	gsDPPipeSync(), // 0x00007DE8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000E960), // 0x00007DF0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 2, 0, 6, 1), // 0x00007DF8
	gsDPLoadSync(), // 0x00007E00
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00007E08
	gsDPPipeSync(), // 0x00007E10
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 2, 0, 6, 1), // 0x00007E18
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00007E20
	gsDPTileSync(), // 0x00007E28
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 1, 0, 0, 6, 1, 0, 6, 2), // 0x00007E30
	gsDPSetTileSize(1, 0, 0, 252, 252), // 0x00007E38
	gsSPDisplayList(0x09000000), // 0x00007E40
	gsSPVertex(_spot09_room_0_vertices_00007820, 4, 0), // 0x00007E48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007E50
	gsDPPipeSync(), // 0x00007E58
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00007E60
	gsSPVertex(_spot09_room_0_vertices_00007860, 8, 0), // 0x00007E68
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x00007E70
	gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0), // 0x00007E78
	gsDPPipeSync(), // 0x00007E80
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00007E88
	gsSPVertex(_spot09_room_0_vertices_000078E0, 8, 0), // 0x00007E90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007E98
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007EA0
	gsDPPipeSync(), // 0x00007EA8
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00007EB0
	gsSPVertex(_spot09_room_0_vertices_00007960, 8, 0), // 0x00007EB8
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x00007EC0
	gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0), // 0x00007EC8
	gsDPPipeSync(), // 0x00007ED0
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00007ED8
	gsSPVertex(_spot09_room_0_vertices_000079E0, 13, 0), // 0x00007EE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007EE8
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00007EF0
	gsSP2Triangles(4, 8, 5, 0, 6, 7, 9, 0), // 0x00007EF8
	gsSP2Triangles(10, 8, 4, 0, 4, 11, 10, 0), // 0x00007F00
	gsSP2Triangles(9, 12, 6, 0, 6, 12, 11, 0), // 0x00007F08
	gsSP1Triangle(6, 11, 4, 0), // 0x00007F10
	gsDPPipeSync(), // 0x00007F18
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00007F20
	gsSPVertex(_spot09_room_0_vertices_00007AB0, 8, 0), // 0x00007F28
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x00007F30
	gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0), // 0x00007F38
	gsSPEndDisplayList(), // 0x00007F40
};

Vtx_t _spot09_room_0_vertices_00007F48[1] = 
{
	 { 0, -3280, 0, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F48
};

Gfx _spot09_room_0_dlist_00007F58[] =
{
	gsSPVertex(_spot09_room_0_vertices_00007F48, 1, 0), // 0x00007F58
	gsSPBranchLessZraw(_spot09_room_0_dlist_00007B30, 0x00, 0xE88), // 0x00007F68
	gsSPEndDisplayList(), // 0x00007F70
};

Vtx_t _spot09_room_0_vertices_00007F78[8] = 
{
	 { -461, -3754, 1844, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F78
	 { 764, -3754, 1844, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F88
	 { -461, -1910, -3223, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F98
	 { 764, -1910, -3223, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FA8
	 { -461, -2847, 2174, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FB8
	 { 764, -2847, 2174, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FC8
	 { -461, -1003, -2893, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FD8
	 { 764, -1003, -2893, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FE8
};

Gfx _spot09_room_0_dlist_00007FF8[] =
{
	gsDPPipeSync(), // 0x00007FF8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00008000
	gsSPVertex(_spot09_room_0_vertices_00007F78, 8, 0), // 0x00008008
	gsSPCullDisplayList(0, 7), // 0x00008010
	gsDPPipeSync(), // 0x00008018
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008020
	gsSPDisplayList(_spot09_room_0_dlist_00007F58), // 0x00008028
	gsSPEndDisplayList(), // 0x00008030
};

Vtx_t _spot09_room_0_vertices_00008038[5] = 
{
	 { 1599, -166, -182, 0, 0, 512, 0, 120, 0, 0 }, // 0x00008038
	 { 1743, -166, -112, 0, 512, 512, 0, 120, 0, 0 }, // 0x00008048
	 { 1720, -166, -239, 0, 256, -4, 0, 120, 0, 255 }, // 0x00008058
	 { 1598, -166, -299, 0, 512, 512, 0, 120, 0, 0 }, // 0x00008068
	 { 1835, -166, -183, 0, 0, 512, 0, 120, 0, 0 }, // 0x00008078
};

Vtx_t _spot09_room_0_vertices_00008088[8] = 
{
	 { 1607, -166, -314, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008088
	 { 1835, -166, -183, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008098
	 { 1607, -166, -314, 0, 0, 0, 0, 0, 0, 0 }, // 0x000080A8
	 { 1835, -166, -183, 0, 0, 0, 0, 0, 0, 0 }, // 0x000080B8
	 { 1548, -166, -212, 0, 0, 0, 0, 0, 0, 0 }, // 0x000080C8
	 { 1776, -166, -80, 0, 0, 0, 0, 0, 0, 0 }, // 0x000080D8
	 { 1548, -166, -212, 0, 0, 0, 0, 0, 0, 0 }, // 0x000080E8
	 { 1776, -166, -80, 0, 0, 0, 0, 0, 0, 0 }, // 0x000080F8
};

Gfx _spot09_room_0_dlist_00008108[] =
{
	gsDPPipeSync(), // 0x00008108
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00008110
	gsSPVertex(_spot09_room_0_vertices_00008088, 8, 0), // 0x00008118
	gsSPCullDisplayList(0, 7), // 0x00008120
	gsDPPipeSync(), // 0x00008128
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008130
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008138
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008140
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot09_scene_tex_00006C60), // 0x00008148
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 15), // 0x00008150
	gsDPLoadSync(), // 0x00008158
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00008160
	gsDPPipeSync(), // 0x00008168
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 2, 0, 0, 0, 0, 4, 0, 0, 4, 15), // 0x00008170
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00008178
	gsDPTileSync(), // 0x00008180
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 2, 0, 1, 0, 0, 4, 15, 0, 4, 0), // 0x00008188
	gsDPSetTileSize(1, 0, 0, 60, 60), // 0x00008190
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, K5, SHADE, COMBINED_ALPHA, COMBINED, 0, SHADE, 0), // 0x00008198
	gsSPSetOtherMode(0xE2, 3, 29, 0x0C1849D8), // 0x000081A0
	gsSPGeometryMode(0xFF0D0000, 0x00000000), // 0x000081A8
	gsSPGeometryMode(0xFF000000, 0x00020400), // 0x000081B0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000081B8
	gsSPDisplayList(0x0D000000), // 0x000081C0
	gsSPVertex(_spot09_room_0_vertices_00008038, 5, 0), // 0x000081C8
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x000081D0
	gsSP1Triangle(2, 1, 4, 0), // 0x000081D8
	gsSPEndDisplayList(), // 0x000081E0
};

Vtx_t _spot09_room_0_vertices_000081E8[11] = 
{
	 { 1603, -166, 215, 0, 883, 609, 0, 120, 0, 255 }, // 0x000081E8
	 { 1726, -166, -246, 0, 512, -481, 0, 120, 0, 255 }, // 0x000081F8
	 { 1309, -166, 73, 0, 140, 613, 0, 120, 0, 255 }, // 0x00008208
	 { 1603, -166, 215, 0, 883, 609, 0, 120, 0, 255 }, // 0x00008218
	 { 1862, -166, 340, 0, 314, 1000, 0, 120, 0, 255 }, // 0x00008228
	 { 1932, -166, 217, 0, 95, 746, 0, 120, 0, 255 }, // 0x00008238
	 { 1388, -166, -223, 0, 729, 157, 0, 120, 0, 255 }, // 0x00008248
	 { 1441, -166, -386, 0, 318, 89, 0, 120, 0, 255 }, // 0x00008258
	 { 1309, -166, 73, 0, 140, 613, 0, 120, 0, 255 }, // 0x00008268
	 { 2093, -166, -66, 0, 865, 556, 0, 120, 0, 255 }, // 0x00008278
	 { 1932, -166, 217, 0, 95, 746, 0, 120, 0, 255 }, // 0x00008288
};

Vtx_t _spot09_room_0_vertices_00008298[8] = 
{
	 { 1466, -166, -429, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008298
	 { 2096, -166, -65, 0, 0, 0, 0, 0, 0, 0 }, // 0x000082A8
	 { 1466, -166, -429, 0, 0, 0, 0, 0, 0, 0 }, // 0x000082B8
	 { 2096, -166, -65, 0, 0, 0, 0, 0, 0, 0 }, // 0x000082C8
	 { 1209, -166, 16, 0, 0, 0, 0, 0, 0, 0 }, // 0x000082D8
	 { 1839, -166, 380, 0, 0, 0, 0, 0, 0, 0 }, // 0x000082E8
	 { 1209, -166, 16, 0, 0, 0, 0, 0, 0, 0 }, // 0x000082F8
	 { 1839, -166, 380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008308
};

Gfx _spot09_room_0_dlist_00008318[] =
{
	gsDPPipeSync(), // 0x00008318
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00008320
	gsSPVertex(_spot09_room_0_vertices_00008298, 8, 0), // 0x00008328
	gsSPCullDisplayList(0, 7), // 0x00008330
	gsDPPipeSync(), // 0x00008338
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008340
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008348
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008350
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000E160), // 0x00008358
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 14, 0, 5, 15), // 0x00008360
	gsDPLoadSync(), // 0x00008368
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008370
	gsDPPipeSync(), // 0x00008378
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 14, 0, 5, 15), // 0x00008380
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008388
	gsDPTileSync(), // 0x00008390
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 1, 0, 0, 5, 15, 0, 5, 15), // 0x00008398
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x000083A0
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, COMBINED, 0, PRIMITIVE, 0), // 0x000083A8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x000083B0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000083B8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000083C0
	gsDPSetPrimColor(0, 0, 150, 200, 185, 100), // 0x000083C8
	gsSPDisplayList(0x0C000000), // 0x000083D0
	gsSPVertex(_spot09_room_0_vertices_000081E8, 11, 0), // 0x000083D8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0), // 0x000083E0
	gsSP2Triangles(1, 4, 5, 0, 6, 1, 7, 0), // 0x000083E8
	gsSP2Triangles(1, 6, 8, 0, 9, 1, 10, 0), // 0x000083F0
	gsSPEndDisplayList(), // 0x000083F8
};

Vtx_t _spot09_room_0_vertices_00008400[4] = 
{
	 { 1598, 317, -320, 0, 0, 0, 206, 11, 108, 255 }, // 0x00008400
	 { 1841, -44, -170, 0, 512, 1024, 206, 11, 108, 255 }, // 0x00008410
	 { 1798, 307, -246, 0, 512, 0, 216, 19, 111, 255 }, // 0x00008420
	 { 1545, -32, -342, 0, 0, 1024, 196, 2, 103, 255 }, // 0x00008430
};

Vtx_t _spot09_room_0_vertices_00008440[8] = 
{
	 { 1567, -44, -379, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008440
	 { 1863, -44, -208, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008450
	 { 1567, 317, -379, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008460
	 { 1863, 317, -208, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008470
	 { 1545, -44, -342, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008480
	 { 1841, -44, -170, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008490
	 { 1545, 317, -342, 0, 0, 0, 0, 0, 0, 0 }, // 0x000084A0
	 { 1841, 317, -170, 0, 0, 0, 0, 0, 0, 0 }, // 0x000084B0
};

Gfx _spot09_room_0_dlist_000084C0[] =
{
	gsDPPipeSync(), // 0x000084C0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000084C8
	gsSPVertex(_spot09_room_0_vertices_00008440, 8, 0), // 0x000084D0
	gsSPCullDisplayList(0, 7), // 0x000084D8
	gsDPPipeSync(), // 0x000084E0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000084E8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000084F0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000084F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot09_scene_tex_00006D60), // 0x00008500
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x00008508
	gsDPLoadSync(), // 0x00008510
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008518
	gsDPPipeSync(), // 0x00008520
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x00008528
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00008530
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00008538
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00008540
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00008548
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00008550
	gsDPSetPrimColor(0, 0, 255, 218, 193, 249), // 0x00008558
	gsSPVertex(_spot09_room_0_vertices_00008400, 4, 0), // 0x00008560
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008568
	gsSPEndDisplayList(), // 0x00008570
};

Vtx_t _spot09_room_0_vertices_00008578[10] = 
{
	 { 1691, 89, -264, 0, 0, -1063, 205, 25, 105, 0 }, // 0x00008578
	 { 1685, 55, -247, 0, 0, 159, 205, 25, 105, 126 }, // 0x00008588
	 { 1736, 55, -222, 0, 1024, 159, 204, 15, 107, 126 }, // 0x00008598
	 { 1740, 89, -235, 0, 1024, -1063, 205, 25, 105, 0 }, // 0x000085A8
	 { 1685, 55, -247, 0, 0, 159, 205, 25, 105, 126 }, // 0x000085B8
	 { 1681, 12, -239, 0, 0, 1144, 204, 15, 107, 248 }, // 0x000085C8
	 { 1735, 12, -213, 0, 1024, 1144, 204, 15, 107, 248 }, // 0x000085D8
	 { 1736, 55, -222, 0, 1024, 159, 204, 15, 107, 126 }, // 0x000085E8
	 { 1681, -166, -241, 0, 0, 4096, 204, 5, 107, 248 }, // 0x000085F8
	 { 1741, -166, -211, 0, 1024, 4096, 204, 5, 107, 248 }, // 0x00008608
};

Vtx_t _spot09_room_0_vertices_00008618[8] = 
{
	 { 1691, -166, -264, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008618
	 { 1751, -166, -229, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008628
	 { 1691, 89, -264, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008638
	 { 1751, 89, -229, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008648
	 { 1678, -166, -241, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008658
	 { 1738, -166, -206, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008668
	 { 1678, 89, -241, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008678
	 { 1738, 89, -206, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008688
};

Gfx _spot09_room_0_dlist_00008698[] =
{
	gsDPPipeSync(), // 0x00008698
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000086A0
	gsSPVertex(_spot09_room_0_vertices_00008618, 8, 0), // 0x000086A8
	gsSPCullDisplayList(0, 7), // 0x000086B0
	gsDPPipeSync(), // 0x000086B8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000086C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000086C8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000086D0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot09_scene_tex_0000F160), // 0x000086D8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 7, 2, 2, 5, 0), // 0x000086E0
	gsDPLoadSync(), // 0x000086E8
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x000086F0
	gsDPPipeSync(), // 0x000086F8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 7, 2, 2, 5, 0), // 0x00008700
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x00008708
	gsDPTileSync(), // 0x00008710
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 1, 0, 0, 7, 1, 2, 5, 0), // 0x00008718
	gsDPSetTileSize(1, 0, 0, 124, 508), // 0x00008720
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, K5, SHADE, COMBINED_ALPHA, COMBINED, 0, SHADE, 0), // 0x00008728
	gsSPSetOtherMode(0xE2, 3, 29, 0x0C1849D8), // 0x00008730
	gsSPGeometryMode(0xFF0D0000, 0x00000000), // 0x00008738
	gsSPGeometryMode(0xFF000000, 0x00020400), // 0x00008740
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00008748
	gsSPDisplayList(0x08000000), // 0x00008750
	gsSPVertex(_spot09_room_0_vertices_00008578, 10, 0), // 0x00008758
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008760
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00008768
	gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0), // 0x00008770
	gsSPEndDisplayList(), // 0x00008778
};

Gfx _spot09_room_0_dlist_00008780[] =
{
	gsSPDisplayList(_spot09_room_0_dlist_00007530), // 0x00008780
	gsSPDisplayList(_spot09_room_0_dlist_00007FF8), // 0x00008788
	gsSPDisplayList(_spot09_room_0_dlist_00008108), // 0x00008790
	gsSPDisplayList(_spot09_room_0_dlist_00008318), // 0x00008798
	gsSPDisplayList(_spot09_room_0_dlist_000084C0), // 0x000087A0
	gsSPDisplayList(_spot09_room_0_dlist_00008698), // 0x000087A8
	gsSPEndDisplayList(), // 0x000087B0
};

static u8 unaccounted87B8[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


