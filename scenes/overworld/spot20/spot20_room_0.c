#include <ultra64.h>
#include <z64.h>
#include "spot20_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "spot20_scene.h"



SCmdAltHeaders _spot20_room_0_set0000_cmd00 = { 0x18, 0, (u32)&_spot20_room_0_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _spot20_room_0_set0000_cmd01 = { 0x16, 0, { 0 }, 0x0A }; // 0x0008
SCmdRoomBehavior _spot20_room_0_set0000_cmd02 = { 0x08, 0x00, 0x00000004 }; // 0x0010
SCmdSkyboxDisables _spot20_room_0_set0000_cmd03 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0018
SCmdTimeSettings _spot20_room_0_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0020
SCmdMesh _spot20_room_0_set0000_cmd05 = { 0x0A, 0, (u32)&_spot20_room_0_meshHeader_00000220 }; // 0x0028
SCmdObjectList _spot20_room_0_set0000_cmd06 = { 0x0B, 0x08, (u32)_spot20_room_0_objectList_00000074 }; // 0x0030
SCmdActorList _spot20_room_0_set0000_cmd07 = { 0x01, 0x19, (u32)_spot20_room_0_actorList_00000084 }; // 0x0038
SCmdEndMarker _spot20_room_0_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _spot20_room_0_alternateHeaders_00000048[] = 
{
	(u32)&_spot20_room_0_set0630_cmd00,
	(u32)&_spot20_room_0_set02F0_cmd00,
	(u32)&_spot20_room_0_set0500_cmd00,
	(u32)&_spot20_room_0_set0860_cmd00,
	(u32)&_spot20_room_0_set0980_cmd00,
	(u32)&_spot20_room_0_set0AA0_cmd00,
	(u32)&_spot20_room_0_set0C60_cmd00,
	(u32)&_spot20_room_0_set0E50_cmd00,
	(u32)&_spot20_room_0_set1040_cmd00,
	(u32)&_spot20_room_0_set1170_cmd00,
	(u32)&_spot20_room_0_set13A0_cmd00,
};

s16 _spot20_room_0_objectList_00000074[] = 
{
	OBJECT_HORSE_NORMAL,
	OBJECT_HORSE_LINK_CHILD,
	OBJECT_MA1,
	OBJECT_IN,
	OBJECT_TSUBO,
	OBJECT_KIBAKO2,
	OBJECT_WOOD02,
	OBJECT_ST,
};

ActorEntry _spot20_room_0_actorList_00000084[25] = 
{
	{ ACTOR_EN_RIVER_SOUND, -1817, 0, 1466, 0, 0, 0, 0x0015 }, //0x00000084 
	{ ACTOR_EN_RIVER_SOUND, 73, 46, -2644, 0, 0, 0, 0x0015 }, //0x00000094 
	{ ACTOR_EN_IN, 670, 0, -1976, 0, 22574, 1, 0xFFFF }, //0x000000A4 
	{ ACTOR_OBJ_TSUBO, 667, 0, -3186, 0, 0, 0, 0x4500 }, //0x000000B4 
	{ ACTOR_OBJ_TSUBO, 667, 0, -3122, 0, 0, 0, 0x4700 }, //0x000000C4 
	{ ACTOR_OBJ_TSUBO, 667, 0, -3218, 0, 0, 0, 0x4103 }, //0x000000D4 
	{ ACTOR_OBJ_TSUBO, 667, 0, -3154, 0, 0, 0, 0x4303 }, //0x000000E4 
	{ ACTOR_OBJ_TSUBO, 852, 0, 172, 0, 0, 0, 0x4D03 }, //0x000000F4 
	{ ACTOR_OBJ_TSUBO, 872, 0, 219, 0, 0, 0, 0x4F03 }, //0x00000104 
	{ ACTOR_OBJ_TSUBO, 840, 0, 212, 0, 0, 0, 0x5103 }, //0x00000114 
	{ ACTOR_EN_HORSE_NORMAL, 736, 1, 429, 0, -16384, 3, 0x0010 }, //0x00000124 
	{ ACTOR_EN_HORSE_NORMAL, 736, 1, 429, 0, -16384, 1, 0x0010 }, //0x00000134 
	{ ACTOR_DOOR_ANA, 1800, 0, 1500, 0, -21845, 4, 0x00FC }, //0x00000144 
	{ ACTOR_EN_HORSE_LINK_CHILD, -4, 0, -572, 0, 16384, 3, 0xFFFF }, //0x00000154 
	{ ACTOR_EN_MA1, 64, 0, -567, 0, -32768, 3, 0xFFFF }, //0x00000164 
	{ ACTOR_EN_WOOD02, 1309, 0, -2241, 0, -7282, 108, 0x0801 }, //0x00000174 
	{ ACTOR_EN_HORSE_NORMAL, 124, 0, -1343, 0, -9466, 1, 0x000F }, //0x00000184 
	{ ACTOR_EN_HORSE_NORMAL, 1257, 0, -735, 0, -16566, 1, 0x000F }, //0x00000194 
	{ ACTOR_EN_HORSE_NORMAL, -1316, 0, -557, 0, 7100, 1, 0x000F }, //0x000001A4 
	{ ACTOR_EN_HORSE_NORMAL, -730, 0, -1100, 0, -10923, 1, 0x000F }, //0x000001B4 
	{ ACTOR_EN_HORSE_NORMAL, 880, 0, -1170, 0, 3641, 1, 0x000F }, //0x000001C4 
	{ ACTOR_EN_HORSE_NORMAL, -780, 0, -1175, 0, 22391, 3, 0x000F }, //0x000001D4 
	{ ACTOR_EN_HORSE_NORMAL, 750, 0, -1076, 0, 12379, 3, 0x000F }, //0x000001E4 
	{ ACTOR_EN_HORSE_NORMAL, 821, 0, -283, 0, -10012, 3, 0x000F }, //0x000001F4 
	{ ACTOR_OBJ_KIBAKO2, 1160, 0, -2376, 0, 0, 0, 0xFFFF }, //0x00000204 
};

static u32 pad214 = 0;
static u32 pad218 = 0;
static u32 pad21C = 0;

MeshHeader2 _spot20_room_0_meshHeader_00000220 = { { 2 }, 0x0C, (u32)&_spot20_room_0_meshDListEntry_0000022C, (u32)&(_spot20_room_0_meshDListEntry_0000022C) + sizeof(_spot20_room_0_meshDListEntry_0000022C) };

MeshEntry2 _spot20_room_0_meshDListEntry_0000022C[12] = 
{
	{ -100, -120, -922, 3879, (u32)_spot20_room_0_dlist_00001880, 0 },
	{ 900, 130, -2410, 164, (u32)_spot20_room_0_dlist_000056B8, 0 },
	{ -222, 96, -1514, 138, (u32)_spot20_room_0_dlist_00005C48, 0 },
	{ 1163, 165, -2661, 340, (u32)_spot20_room_0_dlist_00003CA0, 0 },
	{ 1177, 220, -2900, 590, (u32)_spot20_room_0_dlist_000033B8, 0 },
	{ 500, 120, -2795, 763, (u32)_spot20_room_0_dlist_00004460, (u32)_spot20_room_0_dlist_000065E8 },
	{ 743, 80, 234, 200, (u32)_spot20_room_0_dlist_00004C38, 0 },
	{ -1720, 460, 1540, 532, (u32)_spot20_room_0_dlist_00005140, 0 },
	{ -100, 182, 100, 2923, (u32)_spot20_room_0_dlist_00001FB8, 0 },
	{ 936, 44, -3109, 1353, (u32)_spot20_room_0_dlist_00002730, 0 },
	{ 0, 0, -644, 1844, 0, (u32)_spot20_room_0_dlist_000062D0 },
	{ 0, 50, -600, 1561, (u32)_spot20_room_0_dlist_00002C00, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

SCmdEchoSettings _spot20_room_0_set02F0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x02F0
SCmdRoomBehavior _spot20_room_0_set02F0_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x02F8
SCmdSkyboxDisables _spot20_room_0_set02F0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0300
SCmdTimeSettings _spot20_room_0_set02F0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0308
SCmdMesh _spot20_room_0_set02F0_cmd04 = { 0x0A, 0, (u32)&_spot20_room_0_meshHeader_00000220 }; // 0x0310
SCmdObjectList _spot20_room_0_set02F0_cmd05 = { 0x0B, 0x08, (u32)_spot20_room_0_objectList_00000330 }; // 0x0318
SCmdActorList _spot20_room_0_set02F0_cmd06 = { 0x01, 0x1C, (u32)_spot20_room_0_actorList_00000340 }; // 0x0320
SCmdEndMarker _spot20_room_0_set02F0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0328
s16 _spot20_room_0_objectList_00000330[] = 
{
	OBJECT_HORSE_NORMAL,
	OBJECT_IN,
	OBJECT_UMAJUMP,
	OBJECT_HORSE,
	OBJECT_NIW,
	OBJECT_HNI,
	OBJECT_INGATE,
	OBJECT_MA2,
};

ActorEntry _spot20_room_0_actorList_00000340[28] = 
{
	{ ACTOR_EN_IN, 854, 0, -2429, 0, 28035, 7, 0xFFFF }, //0x00000340 
	{ ACTOR_EN_HORSE, -297, 0, -1288, 0, -182, 5, 0xFFFF }, //0x00000350 
	{ ACTOR_EN_MA3, -158, 0, -1596, 0, 24030, 0, 0xFFFF }, //0x00000360 
	{ ACTOR_EN_NIW, 1180, 0, -2338, 0, 0, 0, 0xFFFF }, //0x00000370 
	{ ACTOR_EN_NIW, 1299, 0, -2310, 0, -14928, 0, 0xFFFF }, //0x00000380 
	{ ACTOR_EN_NIW, 1272, 0, -2200, 0, -27307, 0, 0xFFFF }, //0x00000390 
	{ ACTOR_EN_NIW, 1106, 0, -2209, 0, 26761, 0, 0xFFFF }, //0x000003A0 
	{ ACTOR_EN_NIW, 1207, 0, -2264, 0, -21299, 0, 0xFFFF }, //0x000003B0 
	{ ACTOR_BG_UMAJUMP, -444, 0, -312, 0, 16384, 0, 0x0000 }, //0x000003C0 
	{ ACTOR_BG_UMAJUMP, 295, -27, -989, 0, 16384, 0, 0x0000 }, //0x000003D0 
	{ ACTOR_EN_HORSE_NORMAL, -1316, 0, -557, 0, 7100, 5, 0x000F }, //0x000003E0 
	{ ACTOR_EN_HORSE_NORMAL, 124, 0, -1343, 0, -9466, 5, 0x000F }, //0x000003F0 
	{ ACTOR_EN_HORSE_NORMAL, 1257, 0, -735, 0, -16566, 7, 0x000F }, //0x00000400 
	{ ACTOR_EN_HORSE_NORMAL, -278, 0, -1282, 0, 16020, 7, 0x000F }, //0x00000410 
	{ ACTOR_EN_HORSE_NORMAL, -1056, 0, -266, 0, -32586, 7, 0x000F }, //0x00000420 
	{ ACTOR_EN_HORSE_NORMAL, 453, 0, -75, 0, -12743, 7, 0x000F }, //0x00000430 
	{ ACTOR_BG_INGATE, -302, 0, -1504, 0, 0, 0, 0x0000 }, //0x00000440 
	{ ACTOR_BG_INGATE, -142, 0, -1504, 0, -32768, 0, 0x0000 }, //0x00000450 
	{ ACTOR_BG_INGATE, 820, -40, -2420, 0, 16384, 0, 0x0001 }, //0x00000460 
	{ ACTOR_EN_IN, -158, 0, -1596, 0, 24030, 5, 0x0002 }, //0x00000470 
	{ ACTOR_EN_WEATHER_TAG, 1185, -1, -3760, 0, 0, 0, 0x0201 }, //0x00000480 
	{ ACTOR_EN_IN, -154, 0, -1439, 0, 7282, 5, 0x0003 }, //0x00000490 
	{ ACTOR_BG_INGATE, 980, -40, -2420, 0, 16384, 0, 0x0003 }, //0x000004A0 
	{ ACTOR_EN_IN, 899, 0, -2536, 0, 0, 5, 0x0004 }, //0x000004B0 
	{ ACTOR_EN_WONDER_ITEM, 295, 123, -979, 0, 0, 1, 0x1278 }, //0x000004C0 
	{ ACTOR_EN_WONDER_ITEM, -443, 119, -311, 0, 0, 1, 0x1279 }, //0x000004D0 
	{ ACTOR_EN_RIVER_SOUND, -1817, 0, 1466, 0, 0, 0, 0x0015 }, //0x000004E0 
	{ ACTOR_EN_RIVER_SOUND, 73, 46, -2644, 0, 0, 0, 0x0015 }, //0x000004F0 
};


SCmdEchoSettings _spot20_room_0_set0500_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0500
SCmdRoomBehavior _spot20_room_0_set0500_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x0508
SCmdSkyboxDisables _spot20_room_0_set0500_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0510
SCmdTimeSettings _spot20_room_0_set0500_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0518
SCmdMesh _spot20_room_0_set0500_cmd04 = { 0x0A, 0, (u32)&_spot20_room_0_meshHeader_00000220 }; // 0x0520
SCmdObjectList _spot20_room_0_set0500_cmd05 = { 0x0B, 0x06, (u32)_spot20_room_0_objectList_00000540 }; // 0x0528
SCmdActorList _spot20_room_0_set0500_cmd06 = { 0x01, 0x0E, (u32)_spot20_room_0_actorList_0000054C }; // 0x0530
SCmdEndMarker _spot20_room_0_set0500_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0538
s16 _spot20_room_0_objectList_00000540[] = 
{
	OBJECT_UMAJUMP,
	OBJECT_HORSE,
	OBJECT_MA2,
	OBJECT_TA,
	OBJECT_INGATE,
	OBJECT_ST,
};

ActorEntry _spot20_room_0_actorList_0000054C[14] = 
{
	{ ACTOR_EN_RIVER_SOUND, -1817, 0, 1466, 0, 0, 0, 0x0015 }, //0x0000054C 
	{ ACTOR_EN_RIVER_SOUND, 73, 46, -2644, 0, 0, 0, 0x0015 }, //0x0000055C 
	{ ACTOR_EN_WEATHER_TAG, 1185, 0, -3770, 0, 0, 0, 0x0201 }, //0x0000056C 
	{ ACTOR_BG_INGATE, 820, -40, -2420, 0, 16384, 0, 0x0000 }, //0x0000057C 
	{ ACTOR_BG_INGATE, 980, -40, -2420, 0, 16384, 0, 0x0000 }, //0x0000058C 
	{ ACTOR_BG_INGATE, -302, 0, -1504, 0, -16384, 0, 0x0000 }, //0x0000059C 
	{ ACTOR_BG_INGATE, -142, 0, -1504, 0, -16384, 0, 0x0000 }, //0x000005AC 
	{ ACTOR_EN_TA, -4, 0, -1534, 0, -32768, 0, 0x0002 }, //0x000005BC 
	{ ACTOR_EN_WONDER_ITEM, 295, 123, -979, 0, 0, 1, 0x1278 }, //0x000005CC 
	{ ACTOR_EN_WONDER_ITEM, -443, 119, -311, 0, 0, 1, 0x1279 }, //0x000005DC 
	{ ACTOR_EN_MA2, 66, 0, -402, 0, 0, 6, 0xFFFF }, //0x000005EC 
	{ ACTOR_EN_MA2, 66, 0, -402, 0, 0, 8, 0xFFFF }, //0x000005FC 
	{ ACTOR_BG_UMAJUMP, -444, 0, -312, 0, 16384, 0, 0x0000 }, //0x0000060C 
	{ ACTOR_BG_UMAJUMP, 295, -27, -989, 0, 16384, 0, 0x0000 }, //0x0000061C 
};

static u32 pad62C = 0;

SCmdEchoSettings _spot20_room_0_set0630_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0630
SCmdRoomBehavior _spot20_room_0_set0630_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x0638
SCmdSkyboxDisables _spot20_room_0_set0630_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0640
SCmdTimeSettings _spot20_room_0_set0630_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0648
SCmdMesh _spot20_room_0_set0630_cmd04 = { 0x0A, 0, (u32)&_spot20_room_0_meshHeader_00000220 }; // 0x0650
SCmdObjectList _spot20_room_0_set0630_cmd05 = { 0x0B, 0x05, (u32)_spot20_room_0_objectList_00000670 }; // 0x0658
SCmdActorList _spot20_room_0_set0630_cmd06 = { 0x01, 0x1E, (u32)_spot20_room_0_actorList_0000067C }; // 0x0660
SCmdEndMarker _spot20_room_0_set0630_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0668
s16 _spot20_room_0_objectList_00000670[] = 
{
	OBJECT_CROW,
	OBJECT_ST,
	OBJECT_KIBAKO2,
	OBJECT_TSUBO,
	OBJECT_WOOD02,
};

ActorEntry _spot20_room_0_actorList_0000067C[30] = 
{
	{ ACTOR_EN_RIVER_SOUND, -1817, 0, 1466, 0, 0, 0, 0x0015 }, //0x0000067C 
	{ ACTOR_EN_RIVER_SOUND, 73, 46, -2644, 0, 0, 0, 0x0015 }, //0x0000068C 
	{ ACTOR_OBJ_TSUBO, 667, 0, -3186, 0, 0, 0, 0x4500 }, //0x0000069C 
	{ ACTOR_OBJ_TSUBO, 667, 0, -3122, 0, 0, 0, 0x4700 }, //0x000006AC 
	{ ACTOR_OBJ_TSUBO, 667, 0, -3218, 0, 0, 0, 0x4103 }, //0x000006BC 
	{ ACTOR_OBJ_TSUBO, 667, 0, -3154, 0, 0, 0, 0x4303 }, //0x000006CC 
	{ ACTOR_OBJ_TSUBO, 852, 0, 172, 0, 0, 0, 0x4D03 }, //0x000006DC 
	{ ACTOR_OBJ_TSUBO, 872, 0, 219, 0, 0, 0, 0x4F03 }, //0x000006EC 
	{ ACTOR_OBJ_TSUBO, 840, 0, 212, 0, 0, 0, 0x5103 }, //0x000006FC 
	{ ACTOR_DOOR_ANA, 1800, 0, 1500, 0, -21845, 4, 0x00FC }, //0x0000070C 
	{ ACTOR_EN_CROW, -1056, 294, 962, 0, -6918, 0, 0x0000 }, //0x0000071C 
	{ ACTOR_EN_CROW, -587, 340, 1203, 0, -1820, 0, 0x0000 }, //0x0000072C 
	{ ACTOR_EN_CROW, -727, 259, 789, 0, -5461, 0, 0x0000 }, //0x0000073C 
	{ ACTOR_EN_CROW, -1318, 438, 554, 0, 3277, 0, 0x0000 }, //0x0000074C 
	{ ACTOR_EN_CROW, -1865, 306, 687, 0, 5643, 0, 0x0000 }, //0x0000075C 
	{ ACTOR_EN_CROW, -70, 355, -2055, 0, 13289, 0, 0x0000 }, //0x0000076C 
	{ ACTOR_EN_CROW, -341, 327, -1892, 0, 14928, 0, 0x0000 }, //0x0000077C 
	{ ACTOR_EN_CROW, -708, 348, -2159, 0, 15292, 0, 0x0000 }, //0x0000078C 
	{ ACTOR_EN_CROW, -1108, 375, -884, 0, 20571, 0, 0x0000 }, //0x0000079C 
	{ ACTOR_EN_CROW, -1337, 367, -602, 0, 21117, 0, 0x0000 }, //0x000007AC 
	{ ACTOR_EN_CROW, 1841, 359, 273, 0, -17840, 0, 0x0000 }, //0x000007BC 
	{ ACTOR_EN_CROW, 1752, 296, 718, 0, -21117, 0, 0x0000 }, //0x000007CC 
	{ ACTOR_EN_CROW, 1645, 400, 1207, 0, 22209, 0, 0x0000 }, //0x000007DC 
	{ ACTOR_EN_CROW, 1343, 321, 1133, 0, 22209, 0, 0x0000 }, //0x000007EC 
	{ ACTOR_EN_CROW, -243, 302, 1670, 0, -14017, 0, 0x0000 }, //0x000007FC 
	{ ACTOR_EN_SW, -2344, 180, 672, 16384, 22938, 0, 0x8C01 }, //0x0000080C 
	{ ACTOR_EN_SW, 808, 48, 326, 16384, 0, 0, 0x8C02 }, //0x0000081C 
	{ ACTOR_EN_SW, 997, 286, -2698, 16384, -16384, 0, 0x8C04 }, //0x0000082C 
	{ ACTOR_EN_WOOD02, 1309, 0, -2241, 0, -7282, 108, 0x0801 }, //0x0000083C 
	{ ACTOR_OBJ_KIBAKO2, 1160, 0, -2376, 0, 0, 0, 0xFFFF }, //0x0000084C 
};

static u32 pad85C = 0;

SCmdEchoSettings _spot20_room_0_set0860_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0860
SCmdRoomBehavior _spot20_room_0_set0860_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x0868
SCmdSkyboxDisables _spot20_room_0_set0860_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0870
SCmdTimeSettings _spot20_room_0_set0860_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0878
SCmdMesh _spot20_room_0_set0860_cmd04 = { 0x0A, 0, (u32)&_spot20_room_0_meshHeader_00000220 }; // 0x0880
SCmdObjectList _spot20_room_0_set0860_cmd05 = { 0x0B, 0x05, (u32)_spot20_room_0_objectList_000008A0 }; // 0x0888
SCmdActorList _spot20_room_0_set0860_cmd06 = { 0x01, 0x0D, (u32)_spot20_room_0_actorList_000008AC }; // 0x0890
SCmdEndMarker _spot20_room_0_set0860_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0898
s16 _spot20_room_0_objectList_000008A0[] = 
{
	OBJECT_IN,
	OBJECT_UMAJUMP,
	OBJECT_HORSE,
	OBJECT_HNI,
	OBJECT_INGATE,
};

ActorEntry _spot20_room_0_actorList_000008AC[13] = 
{
	{ ACTOR_EN_HORSE_GAME_CHECK, 600, 0, 375, 0, -16384, 0, 0x0001 }, //0x000008AC 
	{ ACTOR_BG_INGATE, -302, 0, -1504, 0, 0, 0, 0x0000 }, //0x000008BC 
	{ ACTOR_BG_INGATE, 820, -40, -2420, 0, 0, 0, 0x0000 }, //0x000008CC 
	{ ACTOR_BG_INGATE, 980, -40, -2420, 0, -32768, 0, 0x0000 }, //0x000008DC 
	{ ACTOR_BG_INGATE, -142, 0, -1504, 0, -32768, 0, 0x0000 }, //0x000008EC 
	{ ACTOR_BG_UMAJUMP, 1497, -21, -1198, 0, 8374, 0, 0x0001 }, //0x000008FC 
	{ ACTOR_BG_UMAJUMP, 820, -44, -1655, 0, -16384, 0, 0x0001 }, //0x0000090C 
	{ ACTOR_BG_UMAJUMP, 1655, -44, -396, 0, 0, 0, 0x0001 }, //0x0000091C 
	{ ACTOR_BG_UMAJUMP, 1291, -44, 205, 0, -8192, 0, 0x0001 }, //0x0000092C 
	{ ACTOR_BG_UMAJUMP, 379, -21, 455, 0, 16384, 0, 0x0001 }, //0x0000093C 
	{ ACTOR_BG_UMAJUMP, -939, 1, 455, 0, 16384, 0, 0x0001 }, //0x0000094C 
	{ ACTOR_BG_UMAJUMP, -1644, -21, -1035, 0, -4187, 0, 0x0001 }, //0x0000095C 
	{ ACTOR_BG_UMAJUMP, -95, -21, 455, 0, 16384, 0, 0x0001 }, //0x0000096C 
};

static u32 pad97C = 0;

SCmdEchoSettings _spot20_room_0_set0980_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0980
SCmdRoomBehavior _spot20_room_0_set0980_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x0988
SCmdSkyboxDisables _spot20_room_0_set0980_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0990
SCmdTimeSettings _spot20_room_0_set0980_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0998
SCmdMesh _spot20_room_0_set0980_cmd04 = { 0x0A, 0, (u32)&_spot20_room_0_meshHeader_00000220 }; // 0x09A0
SCmdObjectList _spot20_room_0_set0980_cmd05 = { 0x0B, 0x05, (u32)_spot20_room_0_objectList_000009C0 }; // 0x09A8
SCmdActorList _spot20_room_0_set0980_cmd06 = { 0x01, 0x0D, (u32)_spot20_room_0_actorList_000009CC }; // 0x09B0
SCmdEndMarker _spot20_room_0_set0980_cmd07 = { 0x14, 0x00, 0x00 }; // 0x09B8
s16 _spot20_room_0_objectList_000009C0[] = 
{
	OBJECT_HORSE_NORMAL,
	OBJECT_HORSE_LINK_CHILD,
	OBJECT_NIW,
	OBJECT_MA1,
	OBJECT_OWL,
};

ActorEntry _spot20_room_0_actorList_000009CC[13] = 
{
	{ ACTOR_EN_HORSE_NORMAL, 124, 0, -1343, 0, -9466, 1, 0xFFFF }, //0x000009CC 
	{ ACTOR_EN_HORSE_NORMAL, 1257, 0, -735, 0, -16566, 1, 0xFFFF }, //0x000009DC 
	{ ACTOR_EN_HORSE_NORMAL, -1316, 0, -557, 0, 7100, 1, 0xFFFF }, //0x000009EC 
	{ ACTOR_EN_HORSE_NORMAL, -9, 0, 111, 0, 16384, 1, 0xFFFF }, //0x000009FC 
	{ ACTOR_EN_HORSE_NORMAL, -730, 0, -1100, 0, -10923, 1, 0xFFFF }, //0x00000A0C 
	{ ACTOR_EN_HORSE_NORMAL, 880, 0, -1170, 0, 3641, 1, 0xFFFF }, //0x00000A1C 
	{ ACTOR_EN_HORSE_LINK_CHILD, -4, 0, -572, 0, 16384, 3, 0xFFFF }, //0x00000A2C 
	{ ACTOR_EN_MA1, 61, 0, -567, 0, -32768, 3, 0xFFFF }, //0x00000A3C 
	{ ACTOR_EN_HORSE_NORMAL, -780, 0, -1175, 0, 22391, 3, 0xFFFF }, //0x00000A4C 
	{ ACTOR_EN_HORSE_NORMAL, 750, 0, -1076, 0, 12379, 3, 0xFFFF }, //0x00000A5C 
	{ ACTOR_EN_HORSE_NORMAL, 821, 0, -283, 0, -10012, 3, 0xFFFF }, //0x00000A6C 
	{ ACTOR_EN_HORSE_NORMAL, -723, 0, -141, 0, -24212, 3, 0xFFFF }, //0x00000A7C 
	{ ACTOR_EN_OWL, 76, 0, -664, 0, 0, 0, 0x003F }, //0x00000A8C 
};

static u32 padA9C = 0;

SCmdEchoSettings _spot20_room_0_set0AA0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0AA0
SCmdRoomBehavior _spot20_room_0_set0AA0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0AA8
SCmdSkyboxDisables _spot20_room_0_set0AA0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0AB0
SCmdTimeSettings _spot20_room_0_set0AA0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x12, 0x1E, 0x00 }; // 0x0AB8
SCmdMesh _spot20_room_0_set0AA0_cmd04 = { 0x0A, 0, (u32)&_spot20_room_0_meshHeader_00000220 }; // 0x0AC0
SCmdObjectList _spot20_room_0_set0AA0_cmd05 = { 0x0B, 0x07, (u32)_spot20_room_0_objectList_00000AE0 }; // 0x0AC8
SCmdActorList _spot20_room_0_set0AA0_cmd06 = { 0x01, 0x17, (u32)_spot20_room_0_actorList_00000AF0 }; // 0x0AD0
SCmdEndMarker _spot20_room_0_set0AA0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0AD8
s16 _spot20_room_0_objectList_00000AE0[] = 
{
	OBJECT_IN,
	OBJECT_TA,
	OBJECT_EC,
	OBJECT_KM1,
	OBJECT_KW1,
	OBJECT_ZO,
	OBJECT_GE1,
};

ActorEntry _spot20_room_0_actorList_00000AF0[23] = 
{
	{ ACTOR_EN_LIGHT, 0, 0, -588, 0, 0, 0, 0x03F4 }, //0x00000AF0 
	{ ACTOR_EN_LIGHT, -86, 0, -627, 0, 0, 0, 0x03F5 }, //0x00000B00 
	{ ACTOR_EN_LIGHT, -72, 0, -512, 0, 0, 0, 0x03F6 }, //0x00000B10 
	{ ACTOR_EN_LIGHT, -53, 0, -672, 0, 0, 0, 0x03F7 }, //0x00000B20 
	{ ACTOR_EN_LIGHT, -93, 0, -572, 0, 0, 0, 0x03F8 }, //0x00000B30 
	{ ACTOR_EN_LIGHT, -25, 0, -486, 0, 0, 0, 0x03F9 }, //0x00000B40 
	{ ACTOR_EN_LIGHT, 2, 0, -693, 0, 0, 0, 0x03FA }, //0x00000B50 
	{ ACTOR_EN_LIGHT, 55, 0, -673, 0, 0, 0, 0x03FB }, //0x00000B60 
	{ ACTOR_EN_LIGHT, 88, 0, -631, 0, 0, 0, 0x03FC }, //0x00000B70 
	{ ACTOR_EN_LIGHT, 98, 0, -574, 0, 0, 0, 0x03FD }, //0x00000B80 
	{ ACTOR_EN_LIGHT, 26, 0, -487, 0, 0, 0, 0x03FE }, //0x00000B90 
	{ ACTOR_EN_LIGHT, 76, 0, -515, 0, 0, 0, 0x03FF }, //0x00000BA0 
	{ ACTOR_EN_LIGHT, -71, 0, -651, 0, 0, 0, 0x03F5 }, //0x00000BB0 
	{ ACTOR_EN_LIGHT, -87, 0, -539, 0, 0, 0, 0x03F6 }, //0x00000BC0 
	{ ACTOR_EN_LIGHT, -22, 0, -684, 0, 0, 0, 0x03F7 }, //0x00000BD0 
	{ ACTOR_EN_LIGHT, -91, 0, -601, 0, 0, 0, 0x03F8 }, //0x00000BE0 
	{ ACTOR_EN_LIGHT, -51, 0, -495, 0, 0, 0, 0x03F9 }, //0x00000BF0 
	{ ACTOR_EN_LIGHT, 32, 0, -682, 0, 0, 0, 0x03FA }, //0x00000C00 
	{ ACTOR_EN_LIGHT, 74, 0, -654, 0, 0, 0, 0x03FB }, //0x00000C10 
	{ ACTOR_EN_LIGHT, 100, 0, -602, 0, 0, 0, 0x03FC }, //0x00000C20 
	{ ACTOR_EN_LIGHT, 93, 0, -543, 0, 0, 0, 0x03FD }, //0x00000C30 
	{ ACTOR_EN_LIGHT, 1, 0, -480, 0, 0, 0, 0x03FE }, //0x00000C40 
	{ ACTOR_EN_LIGHT, 51, 0, -495, 0, 0, 0, 0x03FF }, //0x00000C50 
};


SCmdEchoSettings _spot20_room_0_set0C60_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0C60
SCmdRoomBehavior _spot20_room_0_set0C60_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0C68
SCmdSkyboxDisables _spot20_room_0_set0C60_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0C70
SCmdTimeSettings _spot20_room_0_set0C60_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x12, 0x24, 0x00 }; // 0x0C78
SCmdMesh _spot20_room_0_set0C60_cmd04 = { 0x0A, 0, (u32)&_spot20_room_0_meshHeader_00000220 }; // 0x0C80
SCmdObjectList _spot20_room_0_set0C60_cmd05 = { 0x0B, 0x07, (u32)_spot20_room_0_objectList_00000CA0 }; // 0x0C88
SCmdActorList _spot20_room_0_set0C60_cmd06 = { 0x01, 0x1A, (u32)_spot20_room_0_actorList_00000CB0 }; // 0x0C90
SCmdEndMarker _spot20_room_0_set0C60_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0C98
s16 _spot20_room_0_objectList_00000CA0[] = 
{
	OBJECT_IN,
	OBJECT_TA,
	OBJECT_EC,
	OBJECT_KM1,
	OBJECT_KW1,
	OBJECT_ZO,
	OBJECT_OF1D_MAP,
};

ActorEntry _spot20_room_0_actorList_00000CB0[26] = 
{
	{ ACTOR_DEMO_EC, -1, 0, -280, 0, -32222, 0, 0x0000 }, //0x00000CB0 
	{ ACTOR_DEMO_EC, -1, 0, -280, 0, -32222, 0, 0x0001 }, //0x00000CC0 
	{ ACTOR_DEMO_EC, -129, 0, -166, 0, 29673, 0, 0x0013 }, //0x00000CD0 
	{ ACTOR_DEMO_EC, -89, 0, -295, 0, 28399, 0, 0x000F }, //0x00000CE0 
	{ ACTOR_DEMO_EC, 40, 0, -263, 0, -29127, 0, 0x0013 }, //0x00000CF0 
	{ ACTOR_DEMO_EC, 8, 0, -174, 0, -32040, 0, 0x000F }, //0x00000D00 
	{ ACTOR_DEMO_EC, -33, 0, -336, 0, 30219, 0, 0x001F }, //0x00000D10 
	{ ACTOR_DEMO_EC, -85, 0, -379, 0, 26032, 0, 0x001F }, //0x00000D20 
	{ ACTOR_DEMO_EC, 140, 0, -370, 0, -26032, 0, 0x001E }, //0x00000D30 
	{ ACTOR_DEMO_EC, -81, 0, -82, 0, -32586, 0, 0x001E }, //0x00000D40 
	{ ACTOR_DEMO_EC, -151, 0, -112, 0, 29127, 0, 0x001E }, //0x00000D50 
	{ ACTOR_DEMO_EC, 124, 0, -242, 0, -27125, 0, 0x001E }, //0x00000D60 
	{ ACTOR_DEMO_EC, -170, 0, -197, 0, 26943, 0, 0x000E }, //0x00000D70 
	{ ACTOR_DEMO_EC, -79, 0, -158, 0, -32586, 0, 0x000F }, //0x00000D80 
	{ ACTOR_DEMO_EC, 85, 0, -170, 0, -27853, 0, 0x0013 }, //0x00000D90 
	{ ACTOR_EN_LIGHT, -82, 0, -515, 0, 0, 0, 0x03F5 }, //0x00000DA0 
	{ ACTOR_EN_LIGHT, -60, 0, -445, 0, 0, 0, 0x03F6 }, //0x00000DB0 
	{ ACTOR_EN_LIGHT, -73, 0, -548, 0, 0, 0, 0x03F7 }, //0x00000DC0 
	{ ACTOR_EN_LIGHT, -79, 0, -482, 0, 0, 0, 0x03F8 }, //0x00000DD0 
	{ ACTOR_EN_LIGHT, -27, 0, -427, 0, 0, 0, 0x03F9 }, //0x00000DE0 
	{ ACTOR_EN_LIGHT, 84, 0, -556, 0, 0, 0, 0x03FA }, //0x00000DF0 
	{ ACTOR_EN_LIGHT, 96, 0, -520, 0, 0, 0, 0x03FB }, //0x00000E00 
	{ ACTOR_EN_LIGHT, 99, 0, -489, 0, 0, 0, 0x03FC }, //0x00000E10 
	{ ACTOR_EN_LIGHT, 79, 0, -452, 0, 0, 0, 0x03FD }, //0x00000E20 
	{ ACTOR_EN_LIGHT, 15, 0, -416, 0, 0, 0, 0x03FE }, //0x00000E30 
	{ ACTOR_EN_LIGHT, 45, 0, -429, 0, 0, 0, 0x03FF }, //0x00000E40 
};


SCmdEchoSettings _spot20_room_0_set0E50_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0E50
SCmdRoomBehavior _spot20_room_0_set0E50_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0E58
SCmdSkyboxDisables _spot20_room_0_set0E50_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0E60
SCmdTimeSettings _spot20_room_0_set0E50_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x12, 0x1E, 0x00 }; // 0x0E68
SCmdMesh _spot20_room_0_set0E50_cmd04 = { 0x0A, 0, (u32)&_spot20_room_0_meshHeader_00000220 }; // 0x0E70
SCmdObjectList _spot20_room_0_set0E50_cmd05 = { 0x0B, 0x0E, (u32)_spot20_room_0_objectList_00000E90 }; // 0x0E78
SCmdActorList _spot20_room_0_set0E50_cmd06 = { 0x01, 0x19, (u32)_spot20_room_0_actorList_00000EAC }; // 0x0E80
SCmdEndMarker _spot20_room_0_set0E50_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0E88
s16 _spot20_room_0_objectList_00000E90[] = 
{
	OBJECT_EC,
	OBJECT_KM1,
	OBJECT_KW1,
	OBJECT_FU,
	OBJECT_MS,
	OBJECT_JS,
	OBJECT_MK,
	OBJECT_DS,
	OBJECT_BG,
	OBJECT_SPOT15_OBJ,
	OBJECT_OS_ANIME,
	OBJECT_BOJ,
	OBJECT_MU,
	OBJECT_MM,
};

ActorEntry _spot20_room_0_actorList_00000EAC[25] = 
{
	{ ACTOR_EN_LIGHT, -57, 0, -445, 0, 0, 0, 0x03F5 }, //0x00000EAC 
	{ ACTOR_EN_LIGHT, -54, 0, -412, 0, 0, 0, 0x03F6 }, //0x00000EBC 
	{ ACTOR_EN_LIGHT, -62, 0, -474, 0, 0, 0, 0x03F7 }, //0x00000ECC 
	{ ACTOR_EN_LIGHT, -76, 0, -498, 0, 0, 0, 0x03F8 }, //0x00000EDC 
	{ ACTOR_DEMO_EC, 228, 7, -197, 0, 24030, 0, 0x0002 }, //0x00000EEC 
	{ ACTOR_DEMO_EC, 248, 0, -195, 0, 2549, 0, 0x0003 }, //0x00000EFC 
	{ ACTOR_DEMO_EC, 258, 0, -226, 0, 24758, 0, 0x0004 }, //0x00000F0C 
	{ ACTOR_DEMO_EC, 229, 0, -215, 0, -19115, 0, 0x0004 }, //0x00000F1C 
	{ ACTOR_EN_MS, 464, 16, -265, 0, -21117, 0, 0xFFFF }, //0x00000F2C 
	{ ACTOR_EN_JS, 474, 8, -327, 0, -8920, 0, 0x0000 }, //0x00000F3C 
	{ ACTOR_EN_MK, 422, 19, -339, 0, 0, 0, 0x0000 }, //0x00000F4C 
	{ ACTOR_EN_DS, 639, 10, -397, 0, -10559, 0, 0x0000 }, //0x00000F5C 
	{ ACTOR_EN_BOM_BOWL_MAN, 634, 8, -359, 0, -14928, 0, 0xFFFF }, //0x00000F6C 
	{ ACTOR_BG_SPOT15_RRBOX, 589, 0, -362, 0, 0, 0, 0x00FF }, //0x00000F7C 
	{ ACTOR_BG_SPOT15_RRBOX, 557, 0, -422, 0, 0, 0, 0x00FF }, //0x00000F8C 
	{ ACTOR_BG_SPOT15_RRBOX, 585, 0, -496, 0, 6190, 0, 0x00FF }, //0x00000F9C 
	{ ACTOR_EN_HY, 114, 0, -203, 0, 18386, 0, 0x0789 }, //0x00000FAC 
	{ ACTOR_EN_HY, 196, 0, -394, 0, -17476, 0, 0x0785 }, //0x00000FBC 
	{ ACTOR_EN_HY, 265, 0, -491, 0, -13289, 0, 0x0790 }, //0x00000FCC 
	{ ACTOR_EN_HY, 253, 0, -449, 0, -14382, 0, 0x078A }, //0x00000FDC 
	{ ACTOR_EN_HY, 112, 0, -299, 0, 29491, 0, 0x0003 }, //0x00000FEC 
	{ ACTOR_EN_MU, 120, 0, -545, 0, -19115, 0, 0x0000 }, //0x00000FFC 
	{ ACTOR_EN_MU, 10, 0, -351, 0, -16566, 0, 0x0001 }, //0x0000100C 
	{ ACTOR_EN_MU, -42, 0, -172, 0, -18386, 0, 0x0000 }, //0x0000101C 
	{ ACTOR_EN_MM, 318, 0, -201, 0, 0, 0, 0xFF01 }, //0x0000102C 
};

static u32 pad103C = 0;

SCmdEchoSettings _spot20_room_0_set1040_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x1040
SCmdRoomBehavior _spot20_room_0_set1040_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x1048
SCmdSkyboxDisables _spot20_room_0_set1040_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x1050
SCmdTimeSettings _spot20_room_0_set1040_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x12, 0x24, 0x00 }; // 0x1058
SCmdMesh _spot20_room_0_set1040_cmd04 = { 0x0A, 0, (u32)&_spot20_room_0_meshHeader_00000220 }; // 0x1060
SCmdObjectList _spot20_room_0_set1040_cmd05 = { 0x0B, 0x08, (u32)_spot20_room_0_objectList_00001080 }; // 0x1068
SCmdActorList _spot20_room_0_set1040_cmd06 = { 0x01, 0x0E, (u32)_spot20_room_0_actorList_00001090 }; // 0x1070
SCmdEndMarker _spot20_room_0_set1040_cmd07 = { 0x14, 0x00, 0x00 }; // 0x1078
s16 _spot20_room_0_objectList_00001080[] = 
{
	OBJECT_EC,
	OBJECT_TORYO,
	OBJECT_DAIKU,
	OBJECT_MA2,
	OBJECT_HNI,
	OBJECT_HORSE,
	OBJECT_HORSE_NORMAL,
	OBJECT_COW,
};

ActorEntry _spot20_room_0_actorList_00001090[14] = 
{
	{ ACTOR_EN_LIGHT, 208, 0, 15, 0, 0, 0, 0x03F5 }, //0x00001090 
	{ ACTOR_DEMO_EC, -213, 0, -702, 0, 11651, 0, 0x0009 }, //0x000010A0 
	{ ACTOR_DEMO_EC, -252, 0, -590, 0, 15292, 0, 0x000A }, //0x000010B0 
	{ ACTOR_DEMO_EC, -238, 0, -650, 0, 12561, 0, 0x000B }, //0x000010C0 
	{ ACTOR_DEMO_EC, -184, 0, -748, 0, 8920, 0, 0x000C }, //0x000010D0 
	{ ACTOR_DEMO_EC, -166, 0, -765, 0, 6007, 0, 0x000D }, //0x000010E0 
	{ ACTOR_DEMO_EC, 10, 0, -400, 0, 21299, 0, 0x0022 }, //0x000010F0 
	{ ACTOR_EN_HORSE, -238, 0, -536, 0, 23484, 5, 0xFFFF }, //0x00001100 
	{ ACTOR_DEMO_EC, -245, 0, -623, 0, 14199, 0, 0x000A }, //0x00001110 
	{ ACTOR_DEMO_EC, -200, 0, -724, 0, 9830, 0, 0x000B }, //0x00001120 
	{ ACTOR_DEMO_EC, -144, 0, -780, 0, 4733, 0, 0x000C }, //0x00001130 
	{ ACTOR_DEMO_EC, -227, 0, -675, 0, 10923, 0, 0x000D }, //0x00001140 
	{ ACTOR_EN_COW, -147, 0, -191, 0, 25668, 0, 0x0000 }, //0x00001150 
	{ ACTOR_EN_COW, -427, 0, -19, 0, -4915, 0, 0x0000 }, //0x00001160 
};


SCmdEchoSettings _spot20_room_0_set1170_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x1170
SCmdRoomBehavior _spot20_room_0_set1170_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x1178
SCmdSkyboxDisables _spot20_room_0_set1170_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x1180
SCmdTimeSettings _spot20_room_0_set1170_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00 }; // 0x1188
SCmdMesh _spot20_room_0_set1170_cmd04 = { 0x0A, 0, (u32)&_spot20_room_0_meshHeader_00000220 }; // 0x1190
SCmdObjectList _spot20_room_0_set1170_cmd05 = { 0x0B, 0x0A, (u32)_spot20_room_0_objectList_000011B0 }; // 0x1198
SCmdActorList _spot20_room_0_set1170_cmd06 = { 0x01, 0x1D, (u32)_spot20_room_0_actorList_000011C4 }; // 0x11A0
SCmdEndMarker _spot20_room_0_set1170_cmd07 = { 0x14, 0x00, 0x00 }; // 0x11A8
s16 _spot20_room_0_objectList_000011B0[] = 
{
	OBJECT_EC,
	OBJECT_KM1,
	OBJECT_KW1,
	OBJECT_ZO,
	OBJECT_GE1,
	OBJECT_MD,
	OBJECT_KZ,
	OBJECT_EFC_FLASH,
	OBJECT_MU,
	OBJECT_OF1D_MAP,
};

ActorEntry _spot20_room_0_actorList_000011C4[29] = 
{
	{ ACTOR_DEMO_EC, -164, 0, -1378, 0, 0, 0, 0x0014 }, //0x000011C4 
	{ ACTOR_DEMO_EC, -100, 0, -1378, 0, 0, 0, 0x0015 }, //0x000011D4 
	{ ACTOR_DEMO_6K, -151, 0, 0, 0, 0, 0, 0x0013 }, //0x000011E4 
	{ ACTOR_DEMO_6K, -100, 0, 0, 0, 0, 0, 0x000E }, //0x000011F4 
	{ ACTOR_DEMO_6K, -43, 0, 0, 0, 0, 0, 0x0011 }, //0x00001204 
	{ ACTOR_DEMO_6K, -11, 0, 0, 0, 0, 0, 0x000F }, //0x00001214 
	{ ACTOR_DEMO_6K, 46, 0, 0, 0, 0, 0, 0x0012 }, //0x00001224 
	{ ACTOR_EN_LIGHT, -131, -249, -1348, 0, 0, 0, 0x03F5 }, //0x00001234 
	{ ACTOR_DEMO_EC, -359, 0, -688, 0, 2002, 0, 0x0010 }, //0x00001244 
	{ ACTOR_DEMO_EC, -323, 0, -707, 0, -1456, 0, 0x0010 }, //0x00001254 
	{ ACTOR_DEMO_EC, -395, 0, -751, 0, 3641, 0, 0x0010 }, //0x00001264 
	{ ACTOR_DEMO_EC, -407, 0, -704, 0, 6190, 0, 0x000E }, //0x00001274 
	{ ACTOR_DEMO_EC, -364, 0, -717, 0, 2913, 0, 0x000F }, //0x00001284 
	{ ACTOR_EN_LIGHT, -585, 0, -297, 0, 0, 0, 0x03F5 }, //0x00001294 
	{ ACTOR_EN_LIGHT, -466, 0, -545, 0, 0, 0, 0x03F7 }, //0x000012A4 
	{ ACTOR_EN_LIGHT, -373, 0, -621, 0, 0, 0, 0x03FA }, //0x000012B4 
	{ ACTOR_EN_LIGHT, -404, 0, -606, 0, 0, 0, 0x03FB }, //0x000012C4 
	{ ACTOR_EN_LIGHT, -532, 0, -444, 0, 0, 0, 0x03FC }, //0x000012D4 
	{ ACTOR_DEMO_EC, -466, 0, -678, 0, 8556, 0, 0x0013 }, //0x000012E4 
	{ ACTOR_EN_LIGHT, -338, 0, -631, 0, 0, 0, 0x03F9 }, //0x000012F4 
	{ ACTOR_EN_LIGHT, -314, 0, -621, 0, 0, 0, 0x03FD }, //0x00001304 
	{ ACTOR_EN_LIGHT, -279, 0, -599, 0, 0, 0, 0x03F4 }, //0x00001314 
	{ ACTOR_EN_LIGHT, -248, 0, -546, 0, 0, 0, 0x03F4 }, //0x00001324 
	{ ACTOR_EN_LIGHT, -219, 0, -469, 0, 0, 0, 0x03F5 }, //0x00001334 
	{ ACTOR_EN_LIGHT, -202, 0, -371, 0, 0, 0, 0x03F6 }, //0x00001344 
	{ ACTOR_EN_MU, -226, 0, -653, 0, -7828, 0, 0x0000 }, //0x00001354 
	{ ACTOR_EN_MU, -166, 0, -447, 0, -15474, 0, 0x0001 }, //0x00001364 
	{ ACTOR_DEMO_EC, -100, 0, -538, 0, -11469, 0, 0x001E }, //0x00001374 
	{ ACTOR_DEMO_EC, 42, 0, -362, 0, -11287, 0, 0x001E }, //0x00001384 
};

static u32 pad1394 = 0;
static u32 pad1398 = 0;
static u32 pad139C = 0;

SCmdEchoSettings _spot20_room_0_set13A0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x13A0
SCmdRoomBehavior _spot20_room_0_set13A0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x13A8
SCmdSkyboxDisables _spot20_room_0_set13A0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x13B0
SCmdTimeSettings _spot20_room_0_set13A0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x12, 0x1E, 0x05 }; // 0x13B8
SCmdMesh _spot20_room_0_set13A0_cmd04 = { 0x0A, 0, (u32)&_spot20_room_0_meshHeader_00000220 }; // 0x13C0
SCmdObjectList _spot20_room_0_set13A0_cmd05 = { 0x0B, 0x0B, (u32)_spot20_room_0_objectList_000013E0 }; // 0x13C8
SCmdActorList _spot20_room_0_set13A0_cmd06 = { 0x01, 0x19, (u32)_spot20_room_0_actorList_000013F8 }; // 0x13D0
SCmdEndMarker _spot20_room_0_set13A0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x13D8
s16 _spot20_room_0_objectList_000013E0[] = 
{
	OBJECT_EC,
	OBJECT_NIW,
	OBJECT_ANE,
	OBJECT_OF1D_MAP,
	OBJECT_GM,
	OBJECT_DS2,
	OBJECT_OS,
	OBJECT_FISH,
	OBJECT_RS,
	OBJECT_GE1,
	OBJECT_MU,
};

ActorEntry _spot20_room_0_actorList_000013F8[25] = 
{
	{ ACTOR_EN_LIGHT, -59, -603, -660, 0, 0, 0, 0x03F4 }, //0x000013F8 
	{ ACTOR_EN_LIGHT, 323, 0, -462, 0, -22756, 0, 0x03F5 }, //0x00001408 
	{ ACTOR_EN_LIGHT, 339, 0, -492, 0, -22756, 0, 0x03F7 }, //0x00001418 
	{ ACTOR_EN_LIGHT, 299, 0, -434, 0, -22756, 0, 0x03F8 }, //0x00001428 
	{ ACTOR_DEMO_EC, 244, 0, -942, 0, 3095, 0, 0x0021 }, //0x00001438 
	{ ACTOR_DEMO_EC, 1229, 0, -65, 0, -23484, 0, 0x0020 }, //0x00001448 
	{ ACTOR_DEMO_EC, 441, 0, -390, 0, -25850, 0, 0x001F }, //0x00001458 
	{ ACTOR_DEMO_EC, 493, 0, -446, 0, -22391, 0, 0x001E }, //0x00001468 
	{ ACTOR_DEMO_EC, -153, 0, -444, 0, 26761, 0, 0x001D }, //0x00001478 
	{ ACTOR_DEMO_EC, -177, 0, -459, 0, 26761, 0, 0x001C }, //0x00001488 
	{ ACTOR_DEMO_EC, -206, 0, -477, 0, 26761, 0, 0x001B }, //0x00001498 
	{ ACTOR_DEMO_EC, -231, 0, -493, 0, 26761, 0, 0x001A }, //0x000014A8 
	{ ACTOR_DEMO_EC, 326, 0, -644, 0, -19115, 0, 0x0019 }, //0x000014B8 
	{ ACTOR_DEMO_EC, 326, 0, -644, 0, -19115, 0, 0x0016 }, //0x000014C8 
	{ ACTOR_DEMO_EC, 326, 0, -644, 0, -19115, 0, 0x0017 }, //0x000014D8 
	{ ACTOR_DEMO_EC, 326, 0, -644, 0, -19115, 0, 0x0018 }, //0x000014E8 
	{ ACTOR_DEMO_EC, 874, 0, -251, 0, -22938, 0, 0x001E }, //0x000014F8 
	{ ACTOR_DEMO_EC, 966, 0, -372, 0, -22938, 0, 0x001E }, //0x00001508 
	{ ACTOR_DEMO_EC, 600, 0, -135, 0, -27307, 0, 0x0010 }, //0x00001518 
	{ ACTOR_DEMO_EC, 560, 0, -114, 0, -27307, 0, 0x0011 }, //0x00001528 
	{ ACTOR_DEMO_EC, 528, 0, -88, 0, -27307, 0, 0x0012 }, //0x00001538 
	{ ACTOR_DEMO_EC, 643, 0, -151, 0, -27307, 0, 0x0012 }, //0x00001548 
	{ ACTOR_DEMO_EC, 495, 0, -63, 0, -27307, 0, 0x0010 }, //0x00001558 
	{ ACTOR_EN_TG, 567, 0, -270, 0, -27125, 0, 0x0000 }, //0x00001568 
	{ ACTOR_DEMO_EC, 464, 0, -44, 0, -27307, 0, 0x0011 }, //0x00001578 
};

static u32 pad1588 = 0;
static u32 pad158C = 0;

Vtx_t _spot20_room_0_vertices_00001590[32] = 
{
	 { -2400, 0, -2400, 0, -12288, -11264, 0, 120, 0, 255 }, // 0x00001590
	 { -2400, 0, 0, 0, -12288, 9216, 0, 120, 0, 255 }, // 0x000015A0
	 { 0, 0, 0, 0, 8192, 9216, 0, 120, 0, 255 }, // 0x000015B0
	 { 0, 0, -2400, 0, 8192, -11264, 0, 120, 0, 255 }, // 0x000015C0
	 { 800, 0, -3400, 0, -1365, -3413, 0, 120, 0, 255 }, // 0x000015D0
	 { 1000, 0, -3400, 0, 341, -3413, 0, 120, 0, 255 }, // 0x000015E0
	 { 1000, 0, -3626, 0, 341, -5341, 0, 120, 0, 255 }, // 0x000015F0
	 { 800, 0, -3722, 0, -1365, -6159, 0, 120, 0, 255 }, // 0x00001600
	 { 1182, 0, -3676, 0, 1898, -5765, 0, 120, 0, 255 }, // 0x00001610
	 { 1182, 0, -3876, 0, 1898, -7472, 0, 120, 0, 255 }, // 0x00001620
	 { 1591, -120, -3657, 0, 5381, -5605, 0, 120, 0, 255 }, // 0x00001630
	 { 800, 0, -2880, 0, -1365, 1024, 0, 120, 0, 255 }, // 0x00001640
	 { 640, 0, -3360, 0, -2731, -3072, 0, 120, 0, 255 }, // 0x00001650
	 { 640, 0, -2880, 0, -2731, 1024, 0, 120, 0, 255 }, // 0x00001660
	 { 1000, 0, -2400, 0, 341, 5120, 0, 120, 0, 255 }, // 0x00001670
	 { 800, 0, -2400, 0, -1365, 5120, 0, 120, 0, 255 }, // 0x00001680
	 { 1000, 0, -2400, 0, 341, -11264, 0, 120, 0, 255 }, // 0x00001690
	 { 800, 0, -2400, 0, -1365, -11264, 0, 120, 0, 255 }, // 0x000016A0
	 { 1066, 0, -1724, 0, 900, -5494, 0, 120, 0, 255 }, // 0x000016B0
	 { 0, 0, 0, 0, -8192, 9216, 0, 120, 0, 255 }, // 0x000016C0
	 { 2200, 0, -1000, 0, 10581, 683, 0, 120, 0, 255 }, // 0x000016D0
	 { 0, 0, -2400, 0, -8192, -11264, 0, 120, 0, 255 }, // 0x000016E0
	 { -2400, 0, 0, 0, -12288, -7168, 0, 120, 0, 255 }, // 0x000016F0
	 { -2400, 0, 2200, 0, -12288, 11605, 0, 120, 0, 255 }, // 0x00001700
	 { 0, 0, 2200, 0, 8192, 11605, 0, 120, 0, 255 }, // 0x00001710
	 { 0, 0, 0, 0, 8192, -7168, 0, 120, 0, 255 }, // 0x00001720
	 { 1400, 0, -2400, 0, 3755, -11264, 0, 120, 0, 255 }, // 0x00001730
	 { 1552, 0, -2173, 0, 5050, -9326, 0, 120, 0, 255 }, // 0x00001740
	 { 0, 0, 0, 0, -8192, -7168, 0, 120, 0, 255 }, // 0x00001750
	 { 0, 0, 2200, 0, -8192, 11605, 0, 120, 0, 255 }, // 0x00001760
	 { 2200, 0, 2200, 0, 10581, 11605, 0, 120, 0, 255 }, // 0x00001770
	 { 2200, 0, 0, 0, 10581, -7168, 0, 120, 0, 255 }, // 0x00001780
};

Vtx_t _spot20_room_0_vertices_00001790[7] = 
{
	 { 0, 0, 0, 0, -8192, 9216, 0, 120, 0, 255 }, // 0x00001790
	 { 2200, 0, 0, 0, 10581, 9216, 0, 120, 0, 255 }, // 0x000017A0
	 { 2200, 0, -1000, 0, 10581, 683, 0, 120, 0, 255 }, // 0x000017B0
	 { 1566, -120, -3849, 0, 5172, -7243, 0, 120, 0, 255 }, // 0x000017C0
	 { 1182, 0, -3876, 0, 1898, -7472, 0, 120, 0, 255 }, // 0x000017D0
	 { 1591, -120, -3657, 0, 5381, -5605, 0, 120, 0, 255 }, // 0x000017E0
	 { 1873, -240, -4044, 0, 7795, -8908, 0, 120, 0, 255 }, // 0x000017F0
};

Vtx_t _spot20_room_0_vertices_00001800[8] = 
{
	 { -2400, -240, -4044, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001800
	 { 2200, -240, -4044, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001810
	 { -2400, 0, -4044, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001820
	 { 2200, 0, -4044, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001830
	 { -2400, -240, 2200, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001840
	 { 2200, -240, 2200, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001850
	 { -2400, 0, 2200, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001860
	 { 2200, 0, 2200, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001870
};

Gfx _spot20_room_0_dlist_00001880[] =
{
	gsDPPipeSync(), // 0x00001880
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001888
	gsSPVertex(_spot20_room_0_vertices_00001800, 8, 0), // 0x00001890
	gsSPCullDisplayList(0, 7), // 0x00001898
	gsDPPipeSync(), // 0x000018A0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000018A8
	gsDPPipeSync(), // 0x000018B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000018B8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000018C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000D9E0), // 0x000018C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 3, 0, 5, 3), // 0x000018D0
	gsDPLoadSync(), // 0x000018D8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000018E0
	gsDPPipeSync(), // 0x000018E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 3, 0, 5, 3), // 0x000018F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000018F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000D1E0), // 0x00001900
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 15, 0, 5, 15), // 0x00001908
	gsDPLoadSync(), // 0x00001910
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001918
	gsDPPipeSync(), // 0x00001920
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 15, 0, 5, 15), // 0x00001928
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00001930
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001938
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001940
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001948
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001950
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001958
	gsSPVertex(_spot20_room_0_vertices_00001590, 32, 0), // 0x00001960
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001968
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001970
	gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0), // 0x00001978
	gsSP2Triangles(9, 8, 10, 0, 11, 5, 4, 0), // 0x00001980
	gsSP2Triangles(4, 12, 11, 0, 12, 13, 11, 0), // 0x00001988
	gsSP2Triangles(11, 14, 5, 0, 11, 15, 14, 0), // 0x00001990
	gsSP2Triangles(16, 17, 18, 0, 19, 20, 18, 0), // 0x00001998
	gsSP2Triangles(17, 21, 18, 0, 19, 18, 21, 0), // 0x000019A0
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x000019A8
	gsSP2Triangles(26, 16, 27, 0, 27, 16, 18, 0), // 0x000019B0
	gsSP2Triangles(27, 18, 20, 0, 28, 29, 30, 0), // 0x000019B8
	gsSP1Triangle(28, 30, 31, 0), // 0x000019C0
	gsSPVertex(_spot20_room_0_vertices_00001790, 7, 0), // 0x000019C8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000019D0
	gsSP1Triangle(3, 5, 6, 0), // 0x000019D8
	gsSPEndDisplayList(), // 0x000019E0
};

Vtx_t _spot20_room_0_vertices_000019E8[32] = 
{
	 { -1400, 200, -2000, 0, 1229, 1024, 68, 16, 97, 255 }, // 0x000019E8
	 { -1400, 0, -2000, 0, 1229, 2048, 69, 0, 98, 255 }, // 0x000019F8
	 { 0, 0, -2400, 0, 8192, 2048, 95, 0, 72, 255 }, // 0x00001A08
	 { 0, 268, -2400, 0, 8192, 0, 75, 12, 93, 255 }, // 0x00001A18
	 { -2400, 205, -600, 0, -7168, 0, 75, 12, 92, 255 }, // 0x00001A28
	 { -2400, 0, -600, 0, -7168, 2048, 93, 0, 75, 255 }, // 0x00001A38
	 { -1800, 263, 1360, 0, 0, -228, 96, 0, 184, 255 }, // 0x00001A48
	 { -1800, 0, 1360, 0, 0, 2048, 96, 0, 184, 255 }, // 0x00001A58
	 { -2400, 0, 600, 0, 8192, 2048, 91, 0, 178, 255 }, // 0x00001A68
	 { -2400, 226, 600, 0, 8192, 0, 57, 0, 151, 255 }, // 0x00001A78
	 { -800, 227, 2200, 0, 765, 0, 108, 0, 204, 255 }, // 0x00001A88
	 { -800, 0, 2200, 0, 765, 2048, 80, 0, 168, 255 }, // 0x00001A98
	 { -1520, 0, 1600, 0, 6548, 2048, 74, 0, 162, 255 }, // 0x00001AA8
	 { -1520, 231, 1600, 0, 6548, 0, 74, 0, 162, 255 }, // 0x00001AB8
	 { 1600, 200, 1800, 0, 6550, 1024, 198, 25, 155, 255 }, // 0x00001AC8
	 { 1600, 0, 1800, 0, 6550, 2048, 196, 0, 153, 255 }, // 0x00001AD8
	 { 1000, 0, 2200, 0, 10115, 2048, 179, 0, 165, 255 }, // 0x00001AE8
	 { 1000, 219, 2200, 0, 10115, 0, 163, 18, 183, 255 }, // 0x00001AF8
	 { 2000, 200, 1600, 0, 4431, 1024, 164, 23, 183, 255 }, // 0x00001B08
	 { 2000, 0, 1600, 0, 4431, 2048, 163, 0, 181, 255 }, // 0x00001B18
	 { 2200, 240, 800, 0, 674, 0, 162, 14, 184, 255 }, // 0x00001B28
	 { 2200, 0, 800, 0, 674, 2048, 155, 0, 192, 255 }, // 0x00001B38
	 { 1552, 0, -2173, 0, 0, 2048, 154, 0, 62, 255 }, // 0x00001B48
	 { 1552, 247, -2173, 0, 0, 0, 146, 0, 47, 255 }, // 0x00001B58
	 { 1400, 200, -2400, 0, -2048, 0, 157, 0, 66, 255 }, // 0x00001B68
	 { 1400, 0, -2400, 0, -2048, 2048, 157, 0, 66, 255 }, // 0x00001B78
	 { 2200, 0, -1000, 0, 10240, 2048, 162, 0, 74, 255 }, // 0x00001B88
	 { 2200, 156, -1000, 0, 10240, 1024, 184, 0, 95, 255 }, // 0x00001B98
	 { 1552, 247, -2173, 0, 0, 0, 146, 0, 47, 255 }, // 0x00001BA8
	 { 1552, 0, -2173, 0, 0, 2048, 154, 0, 62, 255 }, // 0x00001BB8
	 { 1876, 307, -1586, 0, 5120, 0, 151, 0, 58, 255 }, // 0x00001BC8
	 { 2200, 240, -1000, 0, 10240, 0, 195, 0, 103, 255 }, // 0x00001BD8
};

Vtx_t _spot20_room_0_vertices_00001BE8[18] = 
{
	 { 2200, 0, 800, 0, 14336, 2048, 155, 0, 192, 255 }, // 0x00001BE8
	 { 2200, 90, 800, 0, 14336, 512, 136, 0, 0, 255 }, // 0x00001BF8
	 { 2200, 120, 0, 0, 683, 0, 136, 0, 0, 255 }, // 0x00001C08
	 { 2200, 0, 0, 0, 683, 2048, 136, 0, 0, 255 }, // 0x00001C18
	 { 2200, 120, -1000, 0, -16384, 0, 136, 0, 0, 255 }, // 0x00001C28
	 { 2200, 0, -1000, 0, -16384, 2048, 162, 0, 74, 255 }, // 0x00001C38
	 { -2400, 0, 0, 0, 512, 2048, 120, 0, 0, 255 }, // 0x00001C48
	 { -2400, 0, -600, 0, 10752, 2048, 93, 0, 75, 255 }, // 0x00001C58
	 { -2400, 120, -600, 0, 10752, 0, 120, 0, 0, 255 }, // 0x00001C68
	 { -2400, 120, 0, 0, 512, 0, 120, 0, 0, 255 }, // 0x00001C78
	 { -2400, 90, 600, 0, -9728, 512, 120, 0, 0, 255 }, // 0x00001C88
	 { -2400, 0, 600, 0, -9728, 2048, 91, 0, 178, 255 }, // 0x00001C98
	 { 0, 120, 2200, 0, 683, 0, 0, 0, 136, 255 }, // 0x00001CA8
	 { 1000, 90, 2200, 0, -16384, 512, 0, 0, 136, 255 }, // 0x00001CB8
	 { 1000, 0, 2200, 0, -16384, 2048, 179, 0, 165, 255 }, // 0x00001CC8
	 { 0, 0, 2200, 0, 683, 2048, 0, 0, 136, 255 }, // 0x00001CD8
	 { -800, 0, 2200, 0, 14336, 2048, 80, 0, 168, 255 }, // 0x00001CE8
	 { -800, 120, 2200, 0, 14336, 0, 0, 0, 136, 255 }, // 0x00001CF8
};

Vtx_t _spot20_room_0_vertices_00001D08[35] = 
{
	 { 2200, 156, -1000, 0, 14336, 1024, 184, 0, 95, 255 }, // 0x00001D08
	 { 2200, 0, -1000, 0, 14336, 2048, 162, 0, 74, 255 }, // 0x00001D18
	 { 2600, -37, -1000, 0, 16384, 0, 0, 0, 120, 255 }, // 0x00001D28
	 { 2200, 240, -1000, 0, 14336, 0, 195, 0, 103, 255 }, // 0x00001D38
	 { -2400, 0, -600, 0, 3075, 2048, 93, 0, 75, 255 }, // 0x00001D48
	 { -2400, 205, -600, 0, 3075, 0, 75, 12, 92, 255 }, // 0x00001D58
	 { -2800, -34, -541, 0, 1027, 0, 17, 0, 118, 255 }, // 0x00001D68
	 { -2800, -34, 572, 0, 2048, 0, 8, 0, 137, 255 }, // 0x00001D78
	 { -2400, 226, 600, 0, 0, 0, 57, 0, 151, 255 }, // 0x00001D88
	 { -2400, 0, 600, 0, 0, 2048, 91, 0, 178, 255 }, // 0x00001D98
	 { -800, -27, 2600, 0, -1476, 0, 120, 0, 0, 255 }, // 0x00001DA8
	 { -800, 0, 2200, 0, 765, 2048, 80, 0, 168, 255 }, // 0x00001DB8
	 { -800, 227, 2200, 0, 765, 0, 108, 0, 204, 255 }, // 0x00001DC8
	 { 1000, 219, 2200, 0, 10115, 0, 163, 18, 183, 255 }, // 0x00001DD8
	 { 1000, 0, 2200, 0, 10115, 2048, 179, 0, 165, 255 }, // 0x00001DE8
	 { 1000, -46, 2600, 0, 11862, 0, 136, 0, 0, 255 }, // 0x00001DF8
	 { 2600, -30, 800, 0, -1009, 0, 0, 0, 136, 255 }, // 0x00001E08
	 { 2200, 0, 800, 0, 674, 2048, 155, 0, 192, 255 }, // 0x00001E18
	 { 2200, 240, 800, 0, 674, 0, 162, 14, 184, 255 }, // 0x00001E28
	 { 2000, 200, 1600, 0, 4431, 1024, 164, 23, 183, 255 }, // 0x00001E38
	 { 2040, 360, 1640, 0, 4431, 0, 169, 45, 188, 255 }, // 0x00001E48
	 { 1640, 400, 1880, 0, 6550, 0, 202, 49, 161, 255 }, // 0x00001E58
	 { 1600, 200, 1800, 0, 6550, 1024, 198, 25, 155, 255 }, // 0x00001E68
	 { -2266, 201, 1042, 0, 6144, 0, 92, 0, 179, 255 }, // 0x00001E78
	 { -2153, 367, 1441, 0, 2048, 0, 92, 0, 179, 255 }, // 0x00001E88
	 { -1920, 191, 1720, 0, -2048, 2048, 78, 0, 165, 255 }, // 0x00001E98
	 { -1920, 411, 1720, 0, -2048, 0, 78, 0, 165, 255 }, // 0x00001EA8
	 { -1920, 191, 1720, 0, 8192, 2048, 78, 0, 165, 255 }, // 0x00001EB8
	 { -1920, 411, 1720, 0, 8192, 0, 78, 0, 165, 255 }, // 0x00001EC8
	 { -1483, 363, 1982, 0, 4096, 0, 61, 0, 154, 255 }, // 0x00001ED8
	 { -926, 192, 2124, 0, 0, 0, 61, 0, 154, 255 }, // 0x00001EE8
	 { -2400, 205, -600, 0, -7168, 0, 75, 12, 92, 255 }, // 0x00001EF8
	 { -1400, 200, -2000, 0, 1229, 1024, 68, 16, 97, 255 }, // 0x00001F08
	 { -1440, 400, -2040, 0, 1229, 0, 66, 32, 95, 255 }, // 0x00001F18
	 { 0, 268, -2400, 0, 8192, 0, 75, 12, 93, 255 }, // 0x00001F28
};

Vtx_t _spot20_room_0_vertices_00001F38[8] = 
{
	 { 419, -46, -3600, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F38
	 { 3712, -46, 325, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F48
	 { 419, 411, -3600, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F58
	 { 3712, 411, 325, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F68
	 { -3573, -46, -250, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F78
	 { -280, -46, 3674, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F88
	 { -3573, 411, -250, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F98
	 { -280, 411, 3674, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001FA8
};

Gfx _spot20_room_0_dlist_00001FB8[] =
{
	gsDPPipeSync(), // 0x00001FB8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001FC0
	gsSPVertex(_spot20_room_0_vertices_00001F38, 8, 0), // 0x00001FC8
	gsSPCullDisplayList(0, 7), // 0x00001FD0
	gsDPPipeSync(), // 0x00001FD8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001FE0
	gsDPPipeSync(), // 0x00001FE8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001FF0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001FF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000C1E0), // 0x00002000
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 6, 0), // 0x00002008
	gsDPLoadSync(), // 0x00002010
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002018
	gsDPPipeSync(), // 0x00002020
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 0, 6, 0), // 0x00002028
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00002030
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_00005FB8), // 0x00002038
	gsDPTileSync(), // 0x00002040
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002048
	gsDPLoadSync(), // 0x00002050
	gsDPLoadTLUTCmd(7, 15), // 0x00002058
	gsDPPipeSync(), // 0x00002060
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002068
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00002070
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00002078
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00002080
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002088
	gsSPVertex(_spot20_room_0_vertices_000019E8, 32, 0), // 0x00002090
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002098
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0), // 0x000020A0
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x000020A8
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x000020B0
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x000020B8
	gsSP2Triangles(18, 19, 15, 0, 18, 15, 14, 0), // 0x000020C0
	gsSP2Triangles(20, 21, 19, 0, 20, 19, 18, 0), // 0x000020C8
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x000020D0
	gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0), // 0x000020D8
	gsSP2Triangles(27, 30, 28, 0, 27, 31, 30, 0), // 0x000020E0
	gsDPPipeSync(), // 0x000020E8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000020F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_000093E0), // 0x000020F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 4, 0), // 0x00002100
	gsDPLoadSync(), // 0x00002108
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002110
	gsDPPipeSync(), // 0x00002118
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 6, 0, 0, 4, 0), // 0x00002120
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x00002128
	gsSPVertex(_spot20_room_0_vertices_00001BE8, 18, 0), // 0x00002130
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002138
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0), // 0x00002140
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00002148
	gsSP2Triangles(10, 11, 6, 0, 10, 6, 9, 0), // 0x00002150
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002158
	gsSP2Triangles(15, 16, 17, 0, 15, 17, 12, 0), // 0x00002160
	gsDPPipeSync(), // 0x00002168
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002170
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000C1E0), // 0x00002178
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 6, 0), // 0x00002180
	gsDPLoadSync(), // 0x00002188
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002190
	gsDPPipeSync(), // 0x00002198
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 0, 6, 0), // 0x000021A0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000021A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_00005FB8), // 0x000021B0
	gsDPTileSync(), // 0x000021B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000021C0
	gsDPLoadSync(), // 0x000021C8
	gsDPLoadTLUTCmd(7, 15), // 0x000021D0
	gsDPPipeSync(), // 0x000021D8
	gsSPVertex(_spot20_room_0_vertices_00001D08, 32, 0), // 0x000021E0
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x000021E8
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x000021F0
	gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0), // 0x000021F8
	gsSP2Triangles(16, 17, 18, 0, 18, 19, 20, 0), // 0x00002200
	gsSP2Triangles(21, 20, 19, 0, 21, 19, 22, 0), // 0x00002208
	gsSP2Triangles(21, 22, 13, 0, 23, 24, 25, 0), // 0x00002210
	gsSP2Triangles(24, 26, 25, 0, 27, 28, 29, 0), // 0x00002218
	gsSP1Triangle(27, 29, 30, 0), // 0x00002220
	gsSPVertex(_spot20_room_0_vertices_00001EF8, 4, 0), // 0x00002228
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x00002230
	gsSPEndDisplayList(), // 0x00002238
};

Vtx_t _spot20_room_0_vertices_00002240[32] = 
{
	 { 640, 0, -3360, 0, 4096, 2048, 21, 0, 118, 255 }, // 0x00002240
	 { 640, 236, -3360, 0, 4096, 0, 33, 17, 114, 255 }, // 0x00002250
	 { 0, 328, -3285, 0, -2048, 0, 89, 0, 79, 255 }, // 0x00002260
	 { 0, 0, -3285, 0, -2048, 2048, 89, 0, 79, 255 }, // 0x00002270
	 { 0, 0, -3285, 0, 6144, 2048, 89, 0, 79, 255 }, // 0x00002280
	 { 0, 328, -3285, 0, 6144, 0, 89, 0, 79, 255 }, // 0x00002290
	 { 0, 268, -2400, 0, -4096, 0, 75, 12, 93, 255 }, // 0x000022A0
	 { 0, 0, -2400, 0, -4096, 2048, 95, 0, 72, 255 }, // 0x000022B0
	 { 1552, 247, -2173, 0, 0, 0, 146, 0, 47, 255 }, // 0x000022C0
	 { 1552, 309, -2413, 0, -2048, 0, 137, 0, 15, 255 }, // 0x000022D0
	 { 1552, 141, -2413, 0, -2048, 2048, 137, 0, 15, 255 }, // 0x000022E0
	 { 1552, 141, -2413, 0, 0, 2048, 137, 0, 15, 255 }, // 0x000022F0
	 { 1552, 309, -2413, 0, 0, 0, 137, 0, 15, 255 }, // 0x00002300
	 { 1400, 320, -3000, 0, -2048, 0, 140, 0, 30, 255 }, // 0x00002310
	 { 1400, 120, -3000, 0, -2048, 2048, 140, 0, 30, 255 }, // 0x00002320
	 { 800, 140, -3400, 0, 6144, 819, 97, 25, 65, 255 }, // 0x00002330
	 { 776, 220, -3427, 0, 6144, 0, 95, 47, 54, 255 }, // 0x00002340
	 { 776, 220, -3427, 0, 0, 0, 95, 47, 54, 255 }, // 0x00002350
	 { 800, 140, -3400, 0, 0, 819, 97, 25, 65, 255 }, // 0x00002360
	 { 800, 120, -3722, 0, 2048, 819, 98, 19, 66, 255 }, // 0x00002370
	 { 776, 213, -3738, 0, 2048, 0, 94, 38, 63, 255 }, // 0x00002380
	 { 776, 213, -3738, 0, 0, 0, 94, 38, 63, 255 }, // 0x00002390
	 { 800, 120, -3722, 0, 0, 819, 98, 19, 66, 255 }, // 0x000023A0
	 { 1182, 120, -3876, 0, 4096, 819, 21, 19, 116, 255 }, // 0x000023B0
	 { 1182, 200, -3906, 0, 4096, 0, 23, 37, 111, 255 }, // 0x000023C0
	 { 1182, 200, -3650, 0, 0, 0, 247, 34, 142, 255 }, // 0x000023D0
	 { 1182, 120, -3676, 0, 0, 819, 245, 17, 138, 255 }, // 0x000023E0
	 { 1000, 120, -3626, 0, 2048, 819, 171, 31, 178, 255 }, // 0x000023F0
	 { 1059, 200, -3620, 0, 2048, 0, 186, 58, 178, 255 }, // 0x00002400
	 { 1059, 200, -3620, 0, 0, 0, 186, 58, 178, 255 }, // 0x00002410
	 { 1000, 120, -3626, 0, 0, 819, 171, 31, 178, 255 }, // 0x00002420
	 { 1000, 200, -3400, 0, 2048, 0, 143, 37, 243, 255 }, // 0x00002430
};

Vtx_t _spot20_room_0_vertices_00002440[32] = 
{
	 { 1182, 120, -3876, 0, 0, 819, 21, 19, 116, 255 }, // 0x00002440
	 { 1566, 57, -3849, 0, 4096, 1024, 251, 22, 117, 255 }, // 0x00002450
	 { 1568, 176, -3882, 0, 4096, 0, 255, 43, 112, 255 }, // 0x00002460
	 { 1182, 200, -3906, 0, 0, 0, 23, 37, 111, 255 }, // 0x00002470
	 { 1182, 120, -3676, 0, 4096, 819, 245, 17, 138, 255 }, // 0x00002480
	 { 1182, 200, -3650, 0, 4096, 0, 247, 34, 142, 255 }, // 0x00002490
	 { 1589, 118, -3628, 0, 0, 0, 209, 32, 151, 255 }, // 0x000024A0
	 { 1591, 27, -3657, 0, 0, 1024, 206, 16, 149, 255 }, // 0x000024B0
	 { 1591, -120, -3657, 0, 4096, 2048, 204, 0, 148, 255 }, // 0x000024C0
	 { 1591, 27, -3657, 0, 4096, 1024, 206, 16, 149, 255 }, // 0x000024D0
	 { 1873, 30, -4044, 0, 0, 0, 160, 10, 186, 255 }, // 0x000024E0
	 { 1873, -240, -4044, 0, 0, 2048, 160, 0, 185, 255 }, // 0x000024F0
	 { 1589, 118, -3628, 0, 4096, 0, 209, 32, 151, 255 }, // 0x00002500
	 { 1000, 120, -3626, 0, 0, 819, 171, 31, 178, 255 }, // 0x00002510
	 { 1000, 0, -3626, 0, 0, 2048, 161, 0, 183, 255 }, // 0x00002520
	 { 1000, 0, -3400, 0, 2048, 2048, 136, 0, 0, 255 }, // 0x00002530
	 { 1000, 200, -3400, 0, 2048, 0, 143, 37, 243, 255 }, // 0x00002540
	 { 1182, 120, -3676, 0, 0, 819, 245, 17, 138, 255 }, // 0x00002550
	 { 1182, 0, -3676, 0, 0, 2048, 243, 0, 137, 255 }, // 0x00002560
	 { 1000, 0, -3626, 0, 2048, 2048, 161, 0, 183, 255 }, // 0x00002570
	 { 1000, 120, -3626, 0, 2048, 819, 171, 31, 178, 255 }, // 0x00002580
	 { 1591, -120, -3657, 0, 0, 2048, 204, 0, 148, 255 }, // 0x00002590
	 { 1182, 0, -3676, 0, 4096, 2048, 243, 0, 137, 255 }, // 0x000025A0
	 { 1182, 0, -3876, 0, 0, 2048, 19, 0, 118, 255 }, // 0x000025B0
	 { 1566, -120, -3849, 0, 4096, 2048, 248, 0, 119, 255 }, // 0x000025C0
	 { 800, 120, -3722, 0, 0, 819, 98, 19, 66, 255 }, // 0x000025D0
	 { 800, 0, -3722, 0, 0, 2048, 99, 0, 67, 255 }, // 0x000025E0
	 { 1182, 0, -3876, 0, 4096, 2048, 19, 0, 118, 255 }, // 0x000025F0
	 { 1182, 120, -3876, 0, 4096, 819, 21, 19, 116, 255 }, // 0x00002600
	 { 800, 140, -3400, 0, 0, 819, 97, 25, 65, 255 }, // 0x00002610
	 { 800, 0, -3400, 0, 0, 2048, 94, 0, 74, 255 }, // 0x00002620
	 { 800, 0, -3722, 0, 2048, 2048, 99, 0, 67, 255 }, // 0x00002630
};

Vtx_t _spot20_room_0_vertices_00002640[7] = 
{
	 { 800, 140, -3400, 0, 0, 819, 97, 25, 65, 255 }, // 0x00002640
	 { 800, 0, -3722, 0, 2048, 2048, 99, 0, 67, 255 }, // 0x00002650
	 { 800, 120, -3722, 0, 2048, 819, 98, 19, 66, 255 }, // 0x00002660
	 { 800, 0, -3400, 0, 6144, 2048, 94, 0, 74, 255 }, // 0x00002670
	 { 800, 140, -3400, 0, 6144, 819, 97, 25, 65, 255 }, // 0x00002680
	 { 640, 236, -3360, 0, 4096, 0, 33, 17, 114, 255 }, // 0x00002690
	 { 640, 0, -3360, 0, 4096, 2048, 21, 0, 118, 255 }, // 0x000026A0
};

Vtx_t _spot20_room_0_vertices_000026B0[8] = 
{
	 { 183, -340, -4324, 0, 0, 0, 0, 0, 0, 0 }, // 0x000026B0
	 { 1878, -340, -4025, 0, 0, 0, 0, 0, 0, 0 }, // 0x000026C0
	 { 198, 143, -4408, 0, 0, 0, 0, 0, 0, 0 }, // 0x000026D0
	 { 1893, 143, -4109, 0, 0, 0, 0, 0, 0, 0 }, // 0x000026E0
	 { -159, 8, -2381, 0, 0, 0, 0, 0, 0, 0 }, // 0x000026F0
	 { 1536, 8, -2083, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002700
	 { -145, 491, -2465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002710
	 { 1551, 491, -2166, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002720
};

Gfx _spot20_room_0_dlist_00002730[] =
{
	gsDPPipeSync(), // 0x00002730
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002738
	gsSPVertex(_spot20_room_0_vertices_000026B0, 8, 0), // 0x00002740
	gsSPCullDisplayList(0, 7), // 0x00002748
	gsDPPipeSync(), // 0x00002750
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002758
	gsDPPipeSync(), // 0x00002760
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002768
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002770
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000C1E0), // 0x00002778
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 6, 0), // 0x00002780
	gsDPLoadSync(), // 0x00002788
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002790
	gsDPPipeSync(), // 0x00002798
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 0, 6, 0), // 0x000027A0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000027A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_00005FB8), // 0x000027B0
	gsDPTileSync(), // 0x000027B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000027C0
	gsDPLoadSync(), // 0x000027C8
	gsDPLoadTLUTCmd(7, 15), // 0x000027D0
	gsDPPipeSync(), // 0x000027D8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000027E0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000027E8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000027F0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000027F8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002800
	gsSPVertex(_spot20_room_0_vertices_00002240, 32, 0), // 0x00002808
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002810
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002818
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0), // 0x00002820
	gsSP2Triangles(11, 13, 14, 0, 15, 16, 1, 0), // 0x00002828
	gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0), // 0x00002830
	gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0), // 0x00002838
	gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0), // 0x00002840
	gsSP1Triangle(29, 30, 31, 0), // 0x00002848
	gsSPVertex(_spot20_room_0_vertices_00002440, 32, 0), // 0x00002850
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002858
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002860
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002868
	gsSP2Triangles(9, 12, 10, 0, 13, 14, 15, 0), // 0x00002870
	gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0), // 0x00002878
	gsSP2Triangles(17, 19, 20, 0, 7, 21, 22, 0), // 0x00002880
	gsSP2Triangles(7, 22, 4, 0, 0, 23, 24, 0), // 0x00002888
	gsSP2Triangles(0, 24, 1, 0, 25, 26, 27, 0), // 0x00002890
	gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0), // 0x00002898
	gsSPVertex(_spot20_room_0_vertices_00002640, 7, 0), // 0x000028A0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000028A8
	gsSP1Triangle(3, 5, 6, 0), // 0x000028B0
	gsSPEndDisplayList(), // 0x000028B8
};

Vtx_t _spot20_room_0_vertices_000028C0[32] = 
{
	 { 1514, 100, -221, 0, -16384, 683, 110, 0, 46, 255 }, // 0x000028C0
	 { 1514, 0, -221, 0, -16384, 4096, 110, 0, 46, 255 }, // 0x000028D0
	 { 1514, 0, -979, 0, 16384, 4096, 110, 0, 210, 255 }, // 0x000028E0
	 { 1514, 100, -979, 0, 16384, 683, 110, 0, 210, 255 }, // 0x000028F0
	 { 979, 100, 314, 0, -16384, 683, 46, 0, 110, 255 }, // 0x00002900
	 { 979, 0, 314, 0, -16384, 4096, 46, 0, 110, 255 }, // 0x00002910
	 { 1514, 0, -221, 0, 16384, 4096, 110, 0, 46, 255 }, // 0x00002920
	 { 1514, 100, -221, 0, 16384, 683, 110, 0, 46, 255 }, // 0x00002930
	 { -979, 100, 314, 0, -16384, 683, 210, 0, 110, 255 }, // 0x00002940
	 { -979, 0, 314, 0, -16384, 4096, 210, 0, 110, 255 }, // 0x00002950
	 { 0, 0, 314, 0, 16384, 4096, 0, 0, 120, 255 }, // 0x00002960
	 { 0, 100, 314, 0, 16384, 683, 0, 0, 120, 255 }, // 0x00002970
	 { -1514, 100, -221, 0, -16384, 683, 146, 0, 46, 255 }, // 0x00002980
	 { -1514, 0, -221, 0, -16384, 4096, 146, 0, 46, 255 }, // 0x00002990
	 { -979, 0, 314, 0, 16384, 4096, 210, 0, 110, 255 }, // 0x000029A0
	 { -979, 100, 314, 0, 16384, 683, 210, 0, 110, 255 }, // 0x000029B0
	 { -1514, 100, -979, 0, -16384, 683, 146, 0, 210, 255 }, // 0x000029C0
	 { -1514, 0, -979, 0, -16384, 4096, 146, 0, 210, 255 }, // 0x000029D0
	 { -1514, 0, -221, 0, 16384, 4096, 146, 0, 46, 255 }, // 0x000029E0
	 { -1514, 100, -221, 0, 16384, 683, 146, 0, 46, 255 }, // 0x000029F0
	 { -979, 100, -1514, 0, -16384, 683, 210, 0, 146, 255 }, // 0x00002A00
	 { -979, 0, -1514, 0, -16384, 4096, 210, 0, 146, 255 }, // 0x00002A10
	 { -1514, 0, -979, 0, 16384, 4096, 146, 0, 210, 255 }, // 0x00002A20
	 { -1514, 100, -979, 0, 16384, 683, 146, 0, 210, 255 }, // 0x00002A30
	 { -322, 100, -1514, 0, -5015, 683, 0, 0, 136, 255 }, // 0x00002A40
	 { -322, 0, -1514, 0, -5015, 4096, 0, 0, 136, 255 }, // 0x00002A50
	 { -979, 0, -1514, 0, 16384, 4096, 210, 0, 146, 255 }, // 0x00002A60
	 { -979, 100, -1514, 0, 16384, 683, 210, 0, 146, 255 }, // 0x00002A70
	 { 1514, 100, -979, 0, -16384, 683, 110, 0, 210, 255 }, // 0x00002A80
	 { 1514, 0, -979, 0, -16384, 4096, 110, 0, 210, 255 }, // 0x00002A90
	 { 979, 0, -1514, 0, 16384, 4096, 46, 0, 146, 255 }, // 0x00002AA0
	 { 979, 100, -1514, 0, 16384, 683, 46, 0, 146, 255 }, // 0x00002AB0
};

Vtx_t _spot20_room_0_vertices_00002AC0[12] = 
{
	 { 979, 100, -1514, 0, -16384, 683, 46, 0, 146, 255 }, // 0x00002AC0
	 { 979, 0, -1514, 0, -16384, 4096, 46, 0, 146, 255 }, // 0x00002AD0
	 { -122, 0, -1514, 0, 20456, 4096, 0, 0, 136, 255 }, // 0x00002AE0
	 { -122, 100, -1514, 0, 20456, 683, 0, 0, 136, 255 }, // 0x00002AF0
	 { 903, 0, 314, 0, 13716, 4096, 0, 0, 120, 255 }, // 0x00002B00
	 { 979, 0, 314, 0, 16384, 4096, 46, 0, 110, 255 }, // 0x00002B10
	 { 979, 100, 314, 0, 16384, 683, 46, 0, 110, 255 }, // 0x00002B20
	 { 903, 100, 314, 0, 13716, 683, 0, 0, 120, 255 }, // 0x00002B30
	 { 0, 100, 314, 0, -16384, 683, 0, 0, 120, 255 }, // 0x00002B40
	 { 0, 0, 314, 0, -16384, 4096, 0, 0, 120, 255 }, // 0x00002B50
	 { 583, 0, 314, 0, 771, 4096, 0, 0, 120, 255 }, // 0x00002B60
	 { 583, 100, 314, 0, 771, 683, 0, 0, 120, 255 }, // 0x00002B70
};

Vtx_t _spot20_room_0_vertices_00002B80[8] = 
{
	 { -1514, 0, -1514, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002B80
	 { 1514, 0, -1514, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002B90
	 { -1514, 100, -1514, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BA0
	 { 1514, 100, -1514, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BB0
	 { -1514, 0, 314, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BC0
	 { 1514, 0, 314, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BD0
	 { -1514, 100, 314, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BE0
	 { 1514, 100, 314, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BF0
};

Gfx _spot20_room_0_dlist_00002C00[] =
{
	gsDPPipeSync(), // 0x00002C00
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002C08
	gsSPVertex(_spot20_room_0_vertices_00002B80, 8, 0), // 0x00002C10
	gsSPCullDisplayList(0, 7), // 0x00002C18
	gsDPPipeSync(), // 0x00002C20
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002C28
	gsDPPipeSync(), // 0x00002C30
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002C38
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002C40
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot20_scene_tex_00010E20), // 0x00002C48
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 6, 0), // 0x00002C50
	gsDPLoadSync(), // 0x00002C58
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00002C60
	gsDPPipeSync(), // 0x00002C68
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0, 0, 0, 1, 6, 0, 0, 6, 0), // 0x00002C70
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00002C78
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002C80
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00002C88
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x00002C90
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002C98
	gsDPSetPrimColor(0, 0, 220, 220, 145, 255), // 0x00002CA0
	gsSPVertex(_spot20_room_0_vertices_000028C0, 32, 0), // 0x00002CA8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002CB0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002CB8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002CC0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002CC8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002CD0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002CD8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002CE0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002CE8
	gsSPVertex(_spot20_room_0_vertices_00002AC0, 12, 0), // 0x00002CF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002CF8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002D00
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002D08
	gsSPEndDisplayList(), // 0x00002D10
};

Vtx_t _spot20_room_0_vertices_00002D18[4] = 
{
	 { 1000, 200, -2400, 0, -1024, 0, 0, 0, 120, 255 }, // 0x00002D18
	 { 1000, 0, -2400, 0, -1024, 2048, 0, 0, 120, 255 }, // 0x00002D28
	 { 1400, 0, -2400, 0, 3072, 2048, 0, 0, 120, 255 }, // 0x00002D38
	 { 1400, 200, -2400, 0, 3072, 0, 0, 0, 120, 255 }, // 0x00002D48
};

Vtx_t _spot20_room_0_vertices_00002D58[5] = 
{
	 { 1200, 200, -2400, 0, 0, 512, 0, 0, 120, 255 }, // 0x00002D58
	 { 1400, 200, -2400, 0, 1024, 512, 0, 0, 120, 255 }, // 0x00002D68
	 { 1200, 320, -2400, 0, 0, 0, 0, 0, 120, 255 }, // 0x00002D78
	 { 1000, 200, -2400, 0, 1024, 512, 0, 0, 120, 255 }, // 0x00002D88
	 { 1200, 200, -2400, 0, 0, 512, 0, 0, 120, 255 }, // 0x00002D98
};

Vtx_t _spot20_room_0_vertices_00002DA8[4] = 
{
	 { 1400, 200, -2600, 0, -3072, 2048, 104, 59, 0, 255 }, // 0x00002DA8
	 { 1400, 200, -3000, 0, -7168, 2048, 104, 59, 0, 255 }, // 0x00002DB8
	 { 1400, 320, -3000, 0, -7168, 0, 120, 0, 0, 255 }, // 0x00002DC8
	 { 1400, 320, -2600, 0, -3072, 0, 120, 0, 0, 255 }, // 0x00002DD8
};

Vtx_t _spot20_room_0_vertices_00002DE8[4] = 
{
	 { 1400, 440, -2800, 0, 0, 0, 120, 0, 0, 255 }, // 0x00002DE8
	 { 1400, 320, -2800, 0, 0, 512, 120, 0, 0, 255 }, // 0x00002DF8
	 { 1400, 320, -3000, 0, 1024, 512, 120, 0, 0, 255 }, // 0x00002E08
	 { 1400, 320, -2600, 0, 1024, 512, 120, 0, 0, 255 }, // 0x00002E18
};

Vtx_t _spot20_room_0_vertices_00002E28[4] = 
{
	 { 1000, 200, -2600, 0, 0, 1194, 152, 59, 0, 255 }, // 0x00002E28
	 { 1000, 200, -2400, 0, 1024, 1194, 143, 39, 0, 255 }, // 0x00002E38
	 { 1200, 320, -2400, 0, 1024, 0, 0, 120, 0, 255 }, // 0x00002E48
	 { 1200, 320, -2600, 0, 0, 0, 0, 120, 0, 255 }, // 0x00002E58
};

Vtx_t _spot20_room_0_vertices_00002E68[5] = 
{
	 { 1000, 320, -2600, 0, -1024, 0, 0, 59, 104, 255 }, // 0x00002E68
	 { 1000, 200, -2600, 0, -1024, 2048, 0, 0, 120, 255 }, // 0x00002E78
	 { 1200, 320, -2600, 0, 1024, 0, 0, 0, 120, 255 }, // 0x00002E88
	 { 1400, 200, -2600, 0, 3072, 2048, 0, 0, 120, 255 }, // 0x00002E98
	 { 1400, 320, -2600, 0, 3072, 0, 0, 59, 104, 255 }, // 0x00002EA8
};

Vtx_t _spot20_room_0_vertices_00002EB8[4] = 
{
	 { 1400, 200, -2400, 0, 1024, 1194, 61, 102, 0, 255 }, // 0x00002EB8
	 { 1400, 200, -2600, 0, 0, 1194, 104, 59, 0, 255 }, // 0x00002EC8
	 { 1200, 320, -2600, 0, 0, 0, 0, 120, 0, 255 }, // 0x00002ED8
	 { 1200, 320, -2400, 0, 1024, 0, 0, 120, 0, 255 }, // 0x00002EE8
};

Vtx_t _spot20_room_0_vertices_00002EF8[4] = 
{
	 { 1000, 320, -2600, 0, -3072, 0, 136, 0, 0, 255 }, // 0x00002EF8
	 { 1000, 320, -3000, 0, -7168, 0, 136, 0, 0, 255 }, // 0x00002F08
	 { 1000, 200, -3000, 0, -7168, 2048, 140, 28, 0, 255 }, // 0x00002F18
	 { 1000, 200, -2600, 0, -3072, 2048, 152, 59, 0, 255 }, // 0x00002F28
};

Vtx_t _spot20_room_0_vertices_00002F38[4] = 
{
	 { 1000, 440, -2800, 0, 0, 0, 136, 0, 0, 255 }, // 0x00002F38
	 { 1000, 320, -2800, 0, 0, 512, 136, 0, 0, 255 }, // 0x00002F48
	 { 1000, 320, -2600, 0, 1024, 512, 136, 0, 0, 255 }, // 0x00002F58
	 { 1000, 320, -3000, 0, 1024, 512, 136, 0, 0, 255 }, // 0x00002F68
};

Vtx_t _spot20_room_0_vertices_00002F78[6] = 
{
	 { 1000, 440, -2800, 0, 1024, 0, 0, 120, 0, 255 }, // 0x00002F78
	 { 1000, 320, -2600, 0, 1024, 1194, 0, 59, 104, 255 }, // 0x00002F88
	 { 1400, 320, -2600, 0, -1024, 1194, 0, 59, 104, 255 }, // 0x00002F98
	 { 1400, 440, -2800, 0, -1024, 0, 0, 120, 0, 255 }, // 0x00002FA8
	 { 1000, 320, -3000, 0, 1024, 1194, 0, 59, 152, 255 }, // 0x00002FB8
	 { 1400, 320, -3000, 0, -1024, 1194, 0, 59, 152, 255 }, // 0x00002FC8
};

Vtx_t _spot20_room_0_vertices_00002FD8[5] = 
{
	 { 1200, 320, -3000, 0, 1024, 0, 0, 0, 136, 255 }, // 0x00002FD8
	 { 1400, 320, -3000, 0, 3072, 0, 0, 59, 152, 255 }, // 0x00002FE8
	 { 1400, 200, -3000, 0, 3072, 2048, 0, 0, 136, 255 }, // 0x00002FF8
	 { 1000, 200, -3000, 0, -1024, 2048, 0, 0, 136, 255 }, // 0x00003008
	 { 1000, 320, -3000, 0, -1024, 0, 0, 59, 152, 255 }, // 0x00003018
};

Vtx_t _spot20_room_0_vertices_00003028[4] = 
{
	 { 1400, 200, -3400, 0, 1024, 512, 0, 0, 136, 255 }, // 0x00003028
	 { 1200, 200, -3400, 0, 0, 512, 0, 0, 136, 255 }, // 0x00003038
	 { 1200, 320, -3400, 0, 0, 0, 0, 0, 136, 255 }, // 0x00003048
	 { 1000, 200, -3400, 0, 1024, 512, 0, 0, 136, 255 }, // 0x00003058
};

Vtx_t _spot20_room_0_vertices_00003068[6] = 
{
	 { 1200, 320, -3400, 0, -1024, 0, 0, 120, 0, 255 }, // 0x00003068
	 { 1000, 200, -3400, 0, -1024, 1194, 143, 39, 0, 255 }, // 0x00003078
	 { 1000, 200, -3000, 0, 1024, 1194, 140, 28, 0, 255 }, // 0x00003088
	 { 1200, 320, -3000, 0, 1024, 0, 0, 120, 0, 255 }, // 0x00003098
	 { 1400, 200, -3000, 0, 1024, 1194, 104, 59, 0, 255 }, // 0x000030A8
	 { 1400, 200, -3400, 0, -1024, 1194, 61, 102, 0, 255 }, // 0x000030B8
};

Vtx_t _spot20_room_0_vertices_000030C8[4] = 
{
	 { 1100, 0, -3070, 0, -2048, 1024, 136, 0, 0, 255 }, // 0x000030C8
	 { 1100, 100, -3070, 0, -2048, 0, 136, 0, 0, 255 }, // 0x000030D8
	 { 1100, 100, -3130, 0, -2048, 0, 136, 0, 0, 255 }, // 0x000030E8
	 { 1100, 0, -3130, 0, -2048, 1024, 136, 0, 0, 255 }, // 0x000030F8
};

Vtx_t _spot20_room_0_vertices_00003108[6] = 
{
	 { 1000, 100, -3130, 0, -6451, 1024, 136, 0, 0, 255 }, // 0x00003108
	 { 1000, 200, -3000, 0, -5120, 0, 140, 28, 0, 255 }, // 0x00003118
	 { 1000, 200, -3400, 0, -9216, 0, 143, 39, 0, 255 }, // 0x00003128
	 { 1000, 100, -3070, 0, -5837, 1024, 136, 0, 0, 255 }, // 0x00003138
	 { 1000, 0, -3400, 0, -9216, 2048, 136, 0, 0, 255 }, // 0x00003148
	 { 1000, 0, -3130, 0, -6451, 2048, 136, 0, 0, 255 }, // 0x00003158
};

Vtx_t _spot20_room_0_vertices_00003168[12] = 
{
	 { 1000, 0, -3130, 0, 512, 1024, 0, 0, 120, 255 }, // 0x00003168
	 { 1100, 0, -3130, 0, -2048, 1024, 0, 0, 120, 255 }, // 0x00003178
	 { 1100, 100, -3130, 0, -2048, 0, 0, 0, 120, 255 }, // 0x00003188
	 { 1000, 100, -3130, 0, 512, 0, 0, 0, 120, 255 }, // 0x00003198
	 { 1000, 100, -3130, 0, 512, 0, 0, 136, 0, 255 }, // 0x000031A8
	 { 1100, 100, -3130, 0, -2048, 0, 0, 136, 0, 255 }, // 0x000031B8
	 { 1100, 100, -3070, 0, -2048, 0, 0, 136, 0, 255 }, // 0x000031C8
	 { 1000, 100, -3070, 0, 512, 0, 0, 136, 0, 255 }, // 0x000031D8
	 { 1000, 100, -3070, 0, 512, 0, 0, 0, 136, 255 }, // 0x000031E8
	 { 1100, 100, -3070, 0, -2048, 0, 0, 0, 136, 255 }, // 0x000031F8
	 { 1100, 0, -3070, 0, -2048, 1024, 0, 0, 136, 255 }, // 0x00003208
	 { 1000, 0, -3070, 0, 512, 1024, 0, 0, 136, 255 }, // 0x00003218
};

Vtx_t _spot20_room_0_vertices_00003228[5] = 
{
	 { 1000, 0, -2400, 0, 1024, 2048, 136, 0, 0, 255 }, // 0x00003228
	 { 1000, 100, -3070, 0, -5837, 1024, 136, 0, 0, 255 }, // 0x00003238
	 { 1000, 0, -3070, 0, -5837, 2048, 136, 0, 0, 255 }, // 0x00003248
	 { 1000, 200, -2400, 0, 1024, 0, 143, 39, 0, 255 }, // 0x00003258
	 { 1000, 200, -3000, 0, -5120, 0, 140, 28, 0, 255 }, // 0x00003268
};

Vtx_t _spot20_room_0_vertices_00003278[4] = 
{
	 { 1000, 0, -3130, 0, 512, 1024, 0, 120, 0, 255 }, // 0x00003278
	 { 1000, 0, -3070, 0, 512, 1024, 0, 120, 0, 255 }, // 0x00003288
	 { 1100, 0, -3070, 0, -2048, 1024, 0, 120, 0, 255 }, // 0x00003298
	 { 1100, 0, -3130, 0, -2048, 1024, 0, 120, 0, 255 }, // 0x000032A8
};

Vtx_t _spot20_room_0_vertices_000032B8[8] = 
{
	 { 955, 100, -3070, 0, 0, 1024, 0, 0, 120, 255 }, // 0x000032B8
	 { 1000, 100, -3070, 0, 2304, 1024, 0, 0, 120, 255 }, // 0x000032C8
	 { 1000, 130, -3070, 0, 2304, 0, 0, 0, 120, 255 }, // 0x000032D8
	 { 955, 130, -3070, 0, 0, 0, 0, 0, 120, 255 }, // 0x000032E8
	 { 1000, 100, -3070, 0, -256, 1024, 0, 0, 136, 255 }, // 0x000032F8
	 { 955, 100, -3070, 0, 2048, 1024, 0, 0, 136, 255 }, // 0x00003308
	 { 955, 130, -3070, 0, 2048, 0, 0, 0, 136, 255 }, // 0x00003318
	 { 1000, 130, -3070, 0, -256, 0, 0, 0, 136, 255 }, // 0x00003328
};

Vtx_t _spot20_room_0_vertices_00003338[8] = 
{
	 { 955, 0, -3400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003338
	 { 1400, 0, -3400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003348
	 { 955, 440, -3400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003358
	 { 1400, 440, -3400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003368
	 { 955, 0, -2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003378
	 { 1400, 0, -2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003388
	 { 955, 440, -2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003398
	 { 1400, 440, -2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x000033A8
};

Gfx _spot20_room_0_dlist_000033B8[] =
{
	gsDPPipeSync(), // 0x000033B8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000033C0
	gsSPVertex(_spot20_room_0_vertices_00003338, 8, 0), // 0x000033C8
	gsSPCullDisplayList(0, 7), // 0x000033D0
	gsDPPipeSync(), // 0x000033D8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000033E0
	gsDPPipeSync(), // 0x000033E8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000033F0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000033F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000C9E0), // 0x00003400
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00003408
	gsDPLoadSync(), // 0x00003410
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003418
	gsDPPipeSync(), // 0x00003420
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00003428
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003430
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_00005DB0), // 0x00003438
	gsDPTileSync(), // 0x00003440
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003448
	gsDPLoadSync(), // 0x00003450
	gsDPLoadTLUTCmd(7, 255), // 0x00003458
	gsDPPipeSync(), // 0x00003460
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003468
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003470
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00003478
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00003480
	gsDPSetPrimColor(0, 0, 214, 200, 130, 255), // 0x00003488
	gsSPVertex(_spot20_room_0_vertices_00002D18, 4, 0), // 0x00003490
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003498
	gsDPPipeSync(), // 0x000034A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000BBE0), // 0x000034A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x000034B0
	gsDPLoadSync(), // 0x000034B8
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x000034C0
	gsDPPipeSync(), // 0x000034C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x000034D0
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x000034D8
	gsSPVertex(_spot20_room_0_vertices_00002D58, 5, 0), // 0x000034E0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x000034E8
	gsDPPipeSync(), // 0x000034F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000C9E0), // 0x000034F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00003500
	gsDPLoadSync(), // 0x00003508
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003510
	gsDPPipeSync(), // 0x00003518
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00003520
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003528
	gsSPVertex(_spot20_room_0_vertices_00002DA8, 4, 0), // 0x00003530
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003538
	gsDPPipeSync(), // 0x00003540
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000BBE0), // 0x00003548
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x00003550
	gsDPLoadSync(), // 0x00003558
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00003560
	gsDPPipeSync(), // 0x00003568
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x00003570
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00003578
	gsSPVertex(_spot20_room_0_vertices_00002DE8, 4, 0), // 0x00003580
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0), // 0x00003588
	gsDPPipeSync(), // 0x00003590
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000BDE0), // 0x00003598
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000035A0
	gsDPLoadSync(), // 0x000035A8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000035B0
	gsDPPipeSync(), // 0x000035B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000035C0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000035C8
	gsSPVertex(_spot20_room_0_vertices_00002E28, 4, 0), // 0x000035D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000035D8
	gsDPPipeSync(), // 0x000035E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000C9E0), // 0x000035E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x000035F0
	gsDPLoadSync(), // 0x000035F8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003600
	gsDPPipeSync(), // 0x00003608
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00003610
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003618
	gsSPVertex(_spot20_room_0_vertices_00002E68, 5, 0), // 0x00003620
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00003628
	gsDPPipeSync(), // 0x00003630
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000BDE0), // 0x00003638
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003640
	gsDPLoadSync(), // 0x00003648
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003650
	gsDPPipeSync(), // 0x00003658
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003660
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003668
	gsSPVertex(_spot20_room_0_vertices_00002EB8, 4, 0), // 0x00003670
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003678
	gsDPPipeSync(), // 0x00003680
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000C9E0), // 0x00003688
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00003690
	gsDPLoadSync(), // 0x00003698
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000036A0
	gsDPPipeSync(), // 0x000036A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x000036B0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000036B8
	gsSPVertex(_spot20_room_0_vertices_00002EF8, 4, 0), // 0x000036C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000036C8
	gsDPPipeSync(), // 0x000036D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000BBE0), // 0x000036D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x000036E0
	gsDPLoadSync(), // 0x000036E8
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x000036F0
	gsDPPipeSync(), // 0x000036F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x00003700
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00003708
	gsSPVertex(_spot20_room_0_vertices_00002F38, 4, 0), // 0x00003710
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0), // 0x00003718
	gsDPPipeSync(), // 0x00003720
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000BDE0), // 0x00003728
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003730
	gsDPLoadSync(), // 0x00003738
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003740
	gsDPPipeSync(), // 0x00003748
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003750
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003758
	gsSPVertex(_spot20_room_0_vertices_00002F78, 6, 0), // 0x00003760
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003768
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00003770
	gsDPPipeSync(), // 0x00003778
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000C9E0), // 0x00003780
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00003788
	gsDPLoadSync(), // 0x00003790
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003798
	gsDPPipeSync(), // 0x000037A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x000037A8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000037B0
	gsSPVertex(_spot20_room_0_vertices_00002FD8, 5, 0), // 0x000037B8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x000037C0
	gsDPPipeSync(), // 0x000037C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000BBE0), // 0x000037D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x000037D8
	gsDPLoadSync(), // 0x000037E0
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x000037E8
	gsDPPipeSync(), // 0x000037F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x000037F8
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00003800
	gsSPVertex(_spot20_room_0_vertices_00003028, 4, 0), // 0x00003808
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x00003810
	gsDPPipeSync(), // 0x00003818
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000BDE0), // 0x00003820
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003828
	gsDPLoadSync(), // 0x00003830
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003838
	gsDPPipeSync(), // 0x00003840
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003848
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003850
	gsSPVertex(_spot20_room_0_vertices_00003068, 6, 0), // 0x00003858
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003860
	gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0), // 0x00003868
	gsDPPipeSync(), // 0x00003870
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_000091E0), // 0x00003878
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x00003880
	gsDPLoadSync(), // 0x00003888
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00003890
	gsDPPipeSync(), // 0x00003898
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x000038A0
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x000038A8
	gsSPVertex(_spot20_room_0_vertices_000030C8, 4, 0), // 0x000038B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000038B8
	gsDPPipeSync(), // 0x000038C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000C9E0), // 0x000038C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x000038D0
	gsDPLoadSync(), // 0x000038D8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000038E0
	gsDPPipeSync(), // 0x000038E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x000038F0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000038F8
	gsSPVertex(_spot20_room_0_vertices_00003108, 6, 0), // 0x00003900
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00003908
	gsSP2Triangles(4, 5, 0, 0, 4, 0, 2, 0), // 0x00003910
	gsDPPipeSync(), // 0x00003918
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_000091E0), // 0x00003920
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x00003928
	gsDPLoadSync(), // 0x00003930
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00003938
	gsDPPipeSync(), // 0x00003940
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x00003948
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00003950
	gsSPVertex(_spot20_room_0_vertices_00003168, 12, 0), // 0x00003958
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003960
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003968
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003970
	gsDPPipeSync(), // 0x00003978
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000C9E0), // 0x00003980
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00003988
	gsDPLoadSync(), // 0x00003990
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003998
	gsDPPipeSync(), // 0x000039A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x000039A8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000039B0
	gsSPVertex(_spot20_room_0_vertices_00003228, 5, 0), // 0x000039B8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000039C0
	gsSP1Triangle(3, 4, 1, 0), // 0x000039C8
	gsDPPipeSync(), // 0x000039D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_000091E0), // 0x000039D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x000039E0
	gsDPLoadSync(), // 0x000039E8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000039F0
	gsDPPipeSync(), // 0x000039F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x00003A00
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00003A08
	gsSPVertex(_spot20_room_0_vertices_00003278, 4, 0), // 0x00003A10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003A18
	gsDPPipeSync(), // 0x00003A20
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003A28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_000071E0), // 0x00003A30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00003A38
	gsDPLoadSync(), // 0x00003A40
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003A48
	gsDPPipeSync(), // 0x00003A50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00003A58
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003A60
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003A68
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00003A70
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003A78
	gsSPVertex(_spot20_room_0_vertices_000032B8, 8, 0), // 0x00003A80
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00003A88
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003A90
	gsSPEndDisplayList(), // 0x00003A98
};

Vtx_t _spot20_room_0_vertices_00003AA0[24] = 
{
	 { 996, 230, -2670, 0, 2048, 2048, 102, 102, 102, 255 }, // 0x00003AA0
	 { 996, 290, -2670, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003AB0
	 { 996, 290, -2730, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003AC0
	 { 996, 230, -2730, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00003AD0
	 { 996, 230, -2870, 0, 2048, 2048, 102, 102, 102, 255 }, // 0x00003AE0
	 { 996, 290, -2870, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003AF0
	 { 996, 290, -2930, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003B00
	 { 996, 230, -2930, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00003B10
	 { 996, 40, -2470, 0, 2048, 2048, 102, 102, 102, 255 }, // 0x00003B20
	 { 996, 100, -2470, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003B30
	 { 996, 100, -2530, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003B40
	 { 996, 40, -2530, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00003B50
	 { 996, 40, -2670, 0, 2048, 2048, 102, 102, 102, 255 }, // 0x00003B60
	 { 996, 100, -2670, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003B70
	 { 996, 100, -2730, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003B80
	 { 996, 40, -2730, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00003B90
	 { 1130, 40, -2392, 0, 2048, 2048, 102, 102, 102, 255 }, // 0x00003BA0
	 { 1130, 100, -2392, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003BB0
	 { 1070, 100, -2392, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003BC0
	 { 1070, 40, -2392, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00003BD0
	 { 1330, 40, -2392, 0, 2048, 2048, 102, 102, 102, 255 }, // 0x00003BE0
	 { 1330, 100, -2392, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003BF0
	 { 1270, 100, -2392, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003C00
	 { 1270, 40, -2392, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00003C10
};

Vtx_t _spot20_room_0_vertices_00003C20[8] = 
{
	 { 1014, 40, -2940, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C20
	 { 1330, 40, -2392, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C30
	 { 1014, 290, -2940, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C40
	 { 1330, 290, -2392, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C50
	 { 797, 40, -2815, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C60
	 { 1113, 40, -2267, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C70
	 { 797, 290, -2815, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C80
	 { 1113, 290, -2267, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C90
};

Gfx _spot20_room_0_dlist_00003CA0[] =
{
	gsDPPipeSync(), // 0x00003CA0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003CA8
	gsSPVertex(_spot20_room_0_vertices_00003C20, 8, 0), // 0x00003CB0
	gsSPCullDisplayList(0, 7), // 0x00003CB8
	gsDPPipeSync(), // 0x00003CC0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003CC8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003CD0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003CD8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, 0x08000000), // 0x00003CE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00003CE8
	gsDPLoadSync(), // 0x00003CF0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003CF8
	gsDPPipeSync(), // 0x00003D00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00003D08
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003D10
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, SHADE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00003D18
	gsSPSetOtherMode(0xE2, 3, 29, 0x0C193078), // 0x00003D20
	gsSPGeometryMode(0xFF0F0000, 0x00000000), // 0x00003D28
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00003D30
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003D38
	gsSPVertex(_spot20_room_0_vertices_00003AA0, 24, 0), // 0x00003D40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003D48
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003D50
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003D58
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003D60
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003D68
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00003D70
	gsSPEndDisplayList(), // 0x00003D78
};

Vtx_t _spot20_room_0_vertices_00003D80[16] = 
{
	 { 760, 0, -2780, 0, -2048, 1024, 136, 0, 0, 255 }, // 0x00003D80
	 { 760, 100, -2780, 0, -2048, 0, 136, 0, 0, 255 }, // 0x00003D90
	 { 760, 100, -2880, 0, 512, 0, 136, 0, 0, 255 }, // 0x00003DA0
	 { 760, 0, -2880, 0, 512, 1024, 136, 0, 0, 255 }, // 0x00003DB0
	 { 700, 0, -2880, 0, 512, 1024, 120, 0, 0, 255 }, // 0x00003DC0
	 { 700, 100, -2880, 0, 512, 0, 120, 0, 0, 255 }, // 0x00003DD0
	 { 700, 100, -2780, 0, -2048, 0, 120, 0, 0, 255 }, // 0x00003DE0
	 { 700, 0, -2780, 0, -2048, 1024, 120, 0, 0, 255 }, // 0x00003DF0
	 { 760, 100, -2780, 0, -2048, 0, 0, 0, 136, 255 }, // 0x00003E00
	 { 760, 0, -2780, 0, -2048, 1024, 0, 0, 136, 255 }, // 0x00003E10
	 { 700, 0, -2780, 0, -2048, 1024, 0, 0, 136, 255 }, // 0x00003E20
	 { 700, 100, -2780, 0, -2048, 0, 0, 0, 136, 255 }, // 0x00003E30
	 { 760, 100, -2880, 0, 512, 0, 0, 136, 0, 255 }, // 0x00003E40
	 { 760, 100, -2780, 0, -2048, 0, 0, 136, 0, 255 }, // 0x00003E50
	 { 700, 100, -2780, 0, -2048, 0, 0, 136, 0, 255 }, // 0x00003E60
	 { 700, 100, -2880, 0, 512, 0, 0, 136, 0, 255 }, // 0x00003E70
};

Vtx_t _spot20_room_0_vertices_00003E80[12] = 
{
	 { 480, 0, -2390, 0, 1024, 2048, 0, 0, 120, 255 }, // 0x00003E80
	 { 480, 140, -2390, 0, 1024, 0, 0, 0, 120, 255 }, // 0x00003E90
	 { 320, 140, -2390, 0, -1024, 0, 0, 0, 120, 255 }, // 0x00003EA0
	 { 320, 0, -2390, 0, -1024, 2048, 0, 0, 120, 255 }, // 0x00003EB0
	 { 480, 0, -2400, 0, 1024, 2048, 120, 0, 0, 255 }, // 0x00003EC0
	 { 480, 140, -2400, 0, 1024, 0, 120, 0, 0, 255 }, // 0x00003ED0
	 { 480, 140, -2390, 0, 1024, 0, 120, 0, 0, 255 }, // 0x00003EE0
	 { 480, 0, -2390, 0, 1024, 2048, 120, 0, 0, 255 }, // 0x00003EF0
	 { 320, 0, -2390, 0, -1024, 2048, 136, 0, 0, 255 }, // 0x00003F00
	 { 320, 140, -2390, 0, -1024, 0, 136, 0, 0, 255 }, // 0x00003F10
	 { 320, 140, -2400, 0, -1024, 0, 136, 0, 0, 255 }, // 0x00003F20
	 { 320, 0, -2400, 0, -1024, 2048, 136, 0, 0, 255 }, // 0x00003F30
};

Vtx_t _spot20_room_0_vertices_00003F40[24] = 
{
	 { 320, 160, -2400, 0, -4992, -293, 0, 0, 120, 255 }, // 0x00003F40
	 { 0, 160, -2400, 0, -9216, -293, 0, 0, 120, 255 }, // 0x00003F50
	 { 0, 0, -2400, 0, -9216, 2048, 0, 0, 120, 255 }, // 0x00003F60
	 { 320, 0, -2400, 0, -4992, 2048, 0, 0, 120, 255 }, // 0x00003F70
	 { 800, 0, -2400, 0, 1024, 2048, 0, 0, 120, 255 }, // 0x00003F80
	 { 800, 160, -2400, 0, 1024, -293, 0, 0, 120, 255 }, // 0x00003F90
	 { 480, 160, -2400, 0, -3200, -293, 0, 0, 120, 255 }, // 0x00003FA0
	 { 480, 0, -2400, 0, -3200, 2048, 0, 0, 120, 255 }, // 0x00003FB0
	 { 800, 0, -2880, 0, -1024, 2048, 0, 0, 136, 255 }, // 0x00003FC0
	 { 760, 0, -2880, 0, -512, 2048, 0, 0, 136, 255 }, // 0x00003FD0
	 { 760, 100, -2880, 0, -512, 585, 0, 0, 136, 255 }, // 0x00003FE0
	 { 800, 160, -2880, 0, -1024, -293, 0, 0, 136, 255 }, // 0x00003FF0
	 { 700, 100, -2880, 0, 256, 585, 0, 0, 136, 255 }, // 0x00004000
	 { 640, 160, -2880, 0, 1024, -293, 0, 0, 136, 255 }, // 0x00004010
	 { 700, 0, -2880, 0, 256, 2048, 0, 0, 136, 255 }, // 0x00004020
	 { 640, 0, -2880, 0, 1024, 2048, 0, 0, 136, 255 }, // 0x00004030
	 { 800, 0, -2880, 0, 5120, 2048, 120, 0, 0, 255 }, // 0x00004040
	 { 800, 160, -2880, 0, 5120, -293, 120, 0, 0, 255 }, // 0x00004050
	 { 800, 160, -2400, 0, -1024, -293, 120, 0, 0, 255 }, // 0x00004060
	 { 800, 0, -2400, 0, -1024, 2048, 120, 0, 0, 255 }, // 0x00004070
	 { 640, 0, -3360, 0, 5120, 2048, 120, 0, 0, 255 }, // 0x00004080
	 { 640, 160, -3360, 0, 5120, -293, 120, 0, 0, 255 }, // 0x00004090
	 { 640, 160, -2880, 0, -1024, -293, 120, 0, 0, 255 }, // 0x000040A0
	 { 640, 0, -2880, 0, -1024, 2048, 120, 0, 0, 255 }, // 0x000040B0
};

Vtx_t _spot20_room_0_vertices_000040C0[40] = 
{
	 { 0, 240, -2560, 0, -14336, 1024, 0, 118, 16, 255 }, // 0x000040C0
	 { 0, 160, -2380, 0, -14336, 0, 0, 109, 49, 255 }, // 0x000040D0
	 { 640, 240, -2560, 0, 2048, 1024, 10, 117, 20, 255 }, // 0x000040E0
	 { 820, 160, -2380, 0, 6144, 0, 34, 113, 17, 255 }, // 0x000040F0
	 { 640, 240, -2720, 0, -2048, 1024, 20, 116, 236, 255 }, // 0x00004100
	 { 820, 160, -2900, 0, -6144, 0, 25, 114, 231, 255 }, // 0x00004110
	 { 820, 160, -2900, 0, -4096, 0, 25, 114, 231, 255 }, // 0x00004120
	 { 660, 160, -2900, 0, 0, 0, 25, 114, 231, 255 }, // 0x00004130
	 { 640, 240, -2720, 0, 0, 1024, 20, 116, 236, 255 }, // 0x00004140
	 { 480, 240, -2720, 0, 4096, 1024, 8, 119, 248, 255 }, // 0x00004150
	 { 480, 240, -2720, 0, 2048, 1024, 8, 119, 248, 255 }, // 0x00004160
	 { 660, 160, -2900, 0, -2048, 0, 25, 114, 231, 255 }, // 0x00004170
	 { 480, 240, -3360, 0, -14336, 1024, 33, 115, 0, 255 }, // 0x00004180
	 { 660, 160, -3360, 0, -14336, 0, 49, 109, 0, 255 }, // 0x00004190
	 { 640, 240, -2560, 0, 4096, 1024, 10, 117, 20, 255 }, // 0x000041A0
	 { 480, 240, -2720, 0, 0, 2048, 8, 119, 248, 255 }, // 0x000041B0
	 { 0, 240, -2560, 0, -12288, 1024, 0, 118, 16, 255 }, // 0x000041C0
	 { 640, 240, -2720, 0, 4096, 2048, 20, 116, 236, 255 }, // 0x000041D0
	 { 0, 240, -3360, 0, -14336, 4096, 0, 120, 0, 255 }, // 0x000041E0
	 { 0, 240, -2560, 0, 6144, 4096, 0, 118, 16, 255 }, // 0x000041F0
	 { 0, 240, -2560, 0, 6144, 4096, 0, 138, 240, 255 }, // 0x00004200
	 { 480, 240, -3360, 0, -14336, 1024, 240, 138, 0, 255 }, // 0x00004210
	 { 480, 240, -2720, 0, 2048, 1024, 239, 139, 17, 255 }, // 0x00004220
	 { 0, 240, -3360, 0, -14336, 4096, 0, 136, 0, 255 }, // 0x00004230
	 { 660, 160, -3360, 0, -14336, 0, 207, 147, 0, 255 }, // 0x00004240
	 { 660, 160, -2900, 0, -2048, 0, 231, 142, 25, 255 }, // 0x00004250
	 { 0, 240, -2560, 0, -12288, 1024, 0, 138, 240, 255 }, // 0x00004260
	 { 640, 240, -2720, 0, 4096, 2048, 243, 138, 13, 255 }, // 0x00004270
	 { 640, 240, -2560, 0, 4096, 1024, 231, 140, 243, 255 }, // 0x00004280
	 { 480, 240, -2720, 0, 0, 2048, 239, 139, 17, 255 }, // 0x00004290
	 { 640, 240, -2720, 0, 0, 1024, 243, 138, 13, 255 }, // 0x000042A0
	 { 480, 240, -2720, 0, 4096, 1024, 239, 139, 17, 255 }, // 0x000042B0
	 { 820, 160, -2900, 0, -4096, 0, 231, 142, 25, 255 }, // 0x000042C0
	 { 660, 160, -2900, 0, 0, 0, 231, 142, 25, 255 }, // 0x000042D0
	 { 640, 240, -2720, 0, -2048, 1024, 243, 138, 13, 255 }, // 0x000042E0
	 { 820, 160, -2900, 0, -6144, 0, 231, 142, 25, 255 }, // 0x000042F0
	 { 640, 240, -2560, 0, 2048, 1024, 231, 140, 243, 255 }, // 0x00004300
	 { 820, 160, -2380, 0, 6144, 0, 239, 143, 222, 255 }, // 0x00004310
	 { 0, 240, -2560, 0, -14336, 1024, 0, 138, 240, 255 }, // 0x00004320
	 { 0, 160, -2380, 0, -14336, 0, 0, 147, 207, 255 }, // 0x00004330
};

Vtx_t _spot20_room_0_vertices_00004340[4] = 
{
	 { 760, 0, -2880, 0, 512, 1024, 0, 120, 0, 255 }, // 0x00004340
	 { 700, 0, -2880, 0, 512, 1024, 0, 120, 0, 255 }, // 0x00004350
	 { 700, 0, -2780, 0, -2048, 1024, 0, 120, 0, 255 }, // 0x00004360
	 { 760, 0, -2780, 0, -2048, 1024, 0, 120, 0, 255 }, // 0x00004370
};

Vtx_t _spot20_room_0_vertices_00004380[6] = 
{
	 { 0, 110, -3360, 0, 0, 1024, 0, 120, 0, 255 }, // 0x00004380
	 { 630, 110, -2870, 0, 0, 1024, 0, 120, 0, 255 }, // 0x00004390
	 { 630, 110, -3360, 0, 0, 1024, 0, 120, 0, 255 }, // 0x000043A0
	 { 0, 110, -2410, 0, 0, 1024, 0, 120, 0, 255 }, // 0x000043B0
	 { 790, 110, -2410, 0, 0, 1024, 0, 120, 0, 255 }, // 0x000043C0
	 { 790, 110, -2870, 0, 0, 1024, 0, 120, 0, 255 }, // 0x000043D0
};

Vtx_t _spot20_room_0_vertices_000043E0[8] = 
{
	 { 0, 0, -3360, 0, 0, 0, 0, 0, 0, 0 }, // 0x000043E0
	 { 820, 0, -3360, 0, 0, 0, 0, 0, 0, 0 }, // 0x000043F0
	 { 0, 240, -3360, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004400
	 { 820, 240, -3360, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004410
	 { 0, 0, -2380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004420
	 { 820, 0, -2380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004430
	 { 0, 240, -2380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004440
	 { 820, 240, -2380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004450
};

Gfx _spot20_room_0_dlist_00004460[] =
{
	gsDPPipeSync(), // 0x00004460
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004468
	gsSPVertex(_spot20_room_0_vertices_000043E0, 8, 0), // 0x00004470
	gsSPCullDisplayList(0, 7), // 0x00004478
	gsDPPipeSync(), // 0x00004480
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004488
	gsDPPipeSync(), // 0x00004490
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004498
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000044A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_000091E0), // 0x000044A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x000044B0
	gsDPLoadSync(), // 0x000044B8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000044C0
	gsDPPipeSync(), // 0x000044C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x000044D0
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x000044D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_00005DB0), // 0x000044E0
	gsDPTileSync(), // 0x000044E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000044F0
	gsDPLoadSync(), // 0x000044F8
	gsDPLoadTLUTCmd(7, 255), // 0x00004500
	gsDPPipeSync(), // 0x00004508
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004510
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004518
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00004520
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00004528
	gsDPSetPrimColor(0, 0, 214, 200, 130, 255), // 0x00004530
	gsSPVertex(_spot20_room_0_vertices_00003D80, 16, 0), // 0x00004538
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004540
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004548
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004550
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00004558
	gsDPPipeSync(), // 0x00004560
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_00005FE0), // 0x00004568
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00004570
	gsDPLoadSync(), // 0x00004578
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004580
	gsDPPipeSync(), // 0x00004588
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00004590
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004598
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000045A0
	gsSPVertex(_spot20_room_0_vertices_00003E80, 12, 0), // 0x000045A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000045B0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000045B8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000045C0
	gsDPPipeSync(), // 0x000045C8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000045D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000ABE0), // 0x000045D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x000045E0
	gsDPLoadSync(), // 0x000045E8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000045F0
	gsDPPipeSync(), // 0x000045F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00004600
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004608
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004610
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004618
	gsSPVertex(_spot20_room_0_vertices_00003F40, 24, 0), // 0x00004620
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004628
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004630
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004638
	gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0), // 0x00004640
	gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0), // 0x00004648
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00004650
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00004658
	gsDPPipeSync(), // 0x00004660
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_00009BE0), // 0x00004668
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00004670
	gsDPLoadSync(), // 0x00004678
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004680
	gsDPPipeSync(), // 0x00004688
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00004690
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004698
	gsSPVertex(_spot20_room_0_vertices_000040C0, 32, 0), // 0x000046A0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000046A8
	gsSP2Triangles(2, 3, 4, 0, 3, 5, 4, 0), // 0x000046B0
	gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0), // 0x000046B8
	gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0), // 0x000046C0
	gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0), // 0x000046C8
	gsSP2Triangles(10, 18, 19, 0, 10, 12, 18, 0), // 0x000046D0
	gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0), // 0x000046D8
	gsSP2Triangles(21, 24, 22, 0, 24, 25, 22, 0), // 0x000046E0
	gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0), // 0x000046E8
	gsSPVertex(_spot20_room_0_vertices_000042A0, 10, 0), // 0x000046F0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000046F8
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00004700
	gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0), // 0x00004708
	gsDPPipeSync(), // 0x00004710
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004718
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_000091E0), // 0x00004720
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x00004728
	gsDPLoadSync(), // 0x00004730
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00004738
	gsDPPipeSync(), // 0x00004740
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x00004748
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00004750
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_00005DB0), // 0x00004758
	gsDPTileSync(), // 0x00004760
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004768
	gsDPLoadSync(), // 0x00004770
	gsDPLoadTLUTCmd(7, 255), // 0x00004778
	gsDPPipeSync(), // 0x00004780
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004788
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004790
	gsDPSetPrimColor(0, 0, 214, 200, 130, 255), // 0x00004798
	gsSPVertex(_spot20_room_0_vertices_00004340, 4, 0), // 0x000047A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000047A8
	gsDPPipeSync(), // 0x000047B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000047B8
	gsSPTexture(0, 0, 0, 0, 0), // 0x000047C0
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x000047C8
	gsDPSetPrimColor(0, 0, 0, 0, 0, 255), // 0x000047D0
	gsSPVertex(_spot20_room_0_vertices_00004380, 6, 0), // 0x000047D8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000047E0
	gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0), // 0x000047E8
	gsSPEndDisplayList(), // 0x000047F0
};

Vtx_t _spot20_room_0_vertices_000047F8[8] = 
{
	 { 903, 140, 304, 0, 1024, -282, 0, 0, 136, 255 }, // 0x000047F8
	 { 903, 0, 304, 0, 1024, 2048, 0, 0, 136, 255 }, // 0x00004808
	 { 583, 0, 304, 0, -3072, 2048, 0, 0, 136, 255 }, // 0x00004818
	 { 583, 140, 304, 0, -3072, -282, 0, 0, 136, 255 }, // 0x00004828
	 { 583, 140, 324, 0, -3072, -282, 0, 80, 89, 255 }, // 0x00004838
	 { 583, 0, 324, 0, -3072, 2048, 0, 0, 120, 255 }, // 0x00004848
	 { 903, 0, 324, 0, 1024, 2048, 0, 0, 120, 255 }, // 0x00004858
	 { 903, 140, 324, 0, 1024, -282, 0, 102, 63, 255 }, // 0x00004868
};

Vtx_t _spot20_room_0_vertices_00004878[8] = 
{
	 { 583, 160, 144, 0, 8192, 0, 0, 119, 13, 255 }, // 0x00004878
	 { 903, 140, 324, 0, 0, 1024, 0, 102, 63, 255 }, // 0x00004888
	 { 903, 160, 144, 0, 0, 0, 0, 119, 13, 255 }, // 0x00004898
	 { 583, 140, 324, 0, 8192, 1024, 0, 80, 89, 255 }, // 0x000048A8
	 { 903, 160, 144, 0, 0, 0, 0, 137, 243, 255 }, // 0x000048B8
	 { 583, 140, 324, 0, 8192, 1024, 0, 137, 243, 255 }, // 0x000048C8
	 { 583, 160, 144, 0, 8192, 0, 0, 137, 243, 255 }, // 0x000048D8
	 { 903, 140, 324, 0, 0, 1024, 0, 137, 243, 255 }, // 0x000048E8
};

Vtx_t _spot20_room_0_vertices_000048F8[32] = 
{
	 { 583, 140, 304, 0, 1088, 256, 136, 0, 0, 255 }, // 0x000048F8
	 { 583, 0, 304, 0, 1088, 2048, 136, 0, 0, 255 }, // 0x00004908
	 { 583, 0, 324, 0, 960, 2048, 136, 0, 0, 255 }, // 0x00004918
	 { 583, 140, 324, 0, 960, 256, 136, 0, 0, 255 }, // 0x00004928
	 { 603, 156, 184, 0, 960, 0, 172, 0, 84, 255 }, // 0x00004938
	 { 603, 156, 164, 0, 1088, 0, 172, 0, 172, 255 }, // 0x00004948
	 { 883, 156, 164, 0, 1088, 2048, 172, 0, 172, 255 }, // 0x00004958
	 { 883, 156, 184, 0, 960, 2048, 172, 0, 84, 255 }, // 0x00004968
	 { 903, 140, 324, 0, 1088, 256, 120, 0, 0, 255 }, // 0x00004978
	 { 903, 0, 324, 0, 1088, 2048, 120, 0, 0, 255 }, // 0x00004988
	 { 903, 0, 304, 0, 960, 2048, 120, 0, 0, 255 }, // 0x00004998
	 { 903, 140, 304, 0, 960, 256, 120, 0, 0, 255 }, // 0x000049A8
	 { 883, 158, 164, 0, 1088, 28, 172, 0, 172, 255 }, // 0x000049B8
	 { 883, 0, 164, 0, 1088, 2048, 172, 0, 172, 255 }, // 0x000049C8
	 { 883, 0, 184, 0, 960, 2048, 172, 0, 84, 255 }, // 0x000049D8
	 { 883, 156, 184, 0, 960, 57, 172, 0, 84, 255 }, // 0x000049E8
	 { 883, 156, 184, 0, 1088, 57, 172, 0, 84, 255 }, // 0x000049F8
	 { 883, 0, 184, 0, 1088, 2048, 172, 0, 84, 255 }, // 0x00004A08
	 { 903, 0, 184, 0, 960, 2048, 84, 0, 84, 255 }, // 0x00004A18
	 { 903, 156, 184, 0, 960, 57, 84, 0, 84, 255 }, // 0x00004A28
	 { 903, 158, 164, 0, 1088, 28, 84, 0, 172, 255 }, // 0x00004A38
	 { 903, 0, 164, 0, 1088, 2048, 84, 0, 172, 255 }, // 0x00004A48
	 { 883, 0, 164, 0, 960, 2048, 172, 0, 172, 255 }, // 0x00004A58
	 { 883, 158, 164, 0, 960, 28, 172, 0, 172, 255 }, // 0x00004A68
	 { 903, 156, 184, 0, 1088, 57, 84, 0, 84, 255 }, // 0x00004A78
	 { 903, 0, 184, 0, 1088, 2048, 84, 0, 84, 255 }, // 0x00004A88
	 { 903, 0, 164, 0, 960, 2048, 84, 0, 172, 255 }, // 0x00004A98
	 { 903, 158, 164, 0, 960, 28, 84, 0, 172, 255 }, // 0x00004AA8
	 { 603, 156, 184, 0, 1088, 57, 84, 0, 84, 255 }, // 0x00004AB8
	 { 603, 0, 184, 0, 1088, 2048, 84, 0, 84, 255 }, // 0x00004AC8
	 { 603, 0, 164, 0, 960, 2048, 84, 0, 172, 255 }, // 0x00004AD8
	 { 603, 158, 164, 0, 960, 28, 84, 0, 172, 255 }, // 0x00004AE8
};

Vtx_t _spot20_room_0_vertices_00004AF8[12] = 
{
	 { 603, 158, 164, 0, 1088, 28, 84, 0, 172, 255 }, // 0x00004AF8
	 { 603, 0, 164, 0, 1088, 2048, 84, 0, 172, 255 }, // 0x00004B08
	 { 583, 0, 164, 0, 960, 2048, 172, 0, 172, 255 }, // 0x00004B18
	 { 583, 158, 164, 0, 960, 28, 172, 0, 172, 255 }, // 0x00004B28
	 { 583, 156, 184, 0, 1088, 57, 172, 0, 84, 255 }, // 0x00004B38
	 { 583, 0, 184, 0, 1088, 2048, 172, 0, 84, 255 }, // 0x00004B48
	 { 603, 0, 184, 0, 960, 2048, 84, 0, 84, 255 }, // 0x00004B58
	 { 603, 156, 184, 0, 960, 57, 84, 0, 84, 255 }, // 0x00004B68
	 { 583, 158, 164, 0, 1088, 28, 172, 0, 172, 255 }, // 0x00004B78
	 { 583, 0, 164, 0, 1088, 2048, 172, 0, 172, 255 }, // 0x00004B88
	 { 583, 0, 184, 0, 960, 2048, 172, 0, 84, 255 }, // 0x00004B98
	 { 583, 156, 184, 0, 960, 57, 172, 0, 84, 255 }, // 0x00004BA8
};

Vtx_t _spot20_room_0_vertices_00004BB8[8] = 
{
	 { 583, 0, 144, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BB8
	 { 903, 0, 144, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BC8
	 { 583, 160, 144, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BD8
	 { 903, 160, 144, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BE8
	 { 583, 0, 324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BF8
	 { 903, 0, 324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004C08
	 { 583, 160, 324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004C18
	 { 903, 160, 324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004C28
};

Gfx _spot20_room_0_dlist_00004C38[] =
{
	gsDPPipeSync(), // 0x00004C38
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004C40
	gsSPVertex(_spot20_room_0_vertices_00004BB8, 8, 0), // 0x00004C48
	gsSPCullDisplayList(0, 7), // 0x00004C50
	gsDPPipeSync(), // 0x00004C58
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004C60
	gsDPPipeSync(), // 0x00004C68
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004C70
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004C78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000ABE0), // 0x00004C80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00004C88
	gsDPLoadSync(), // 0x00004C90
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004C98
	gsDPPipeSync(), // 0x00004CA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00004CA8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004CB0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004CB8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004CC0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00004CC8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00004CD0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004CD8
	gsSPVertex(_spot20_room_0_vertices_000047F8, 8, 0), // 0x00004CE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004CE8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004CF0
	gsDPPipeSync(), // 0x00004CF8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_00009BE0), // 0x00004D00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x00004D08
	gsDPLoadSync(), // 0x00004D10
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004D18
	gsDPPipeSync(), // 0x00004D20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x00004D28
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004D30
	gsSPVertex(_spot20_room_0_vertices_00004878, 8, 0), // 0x00004D38
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00004D40
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00004D48
	gsDPPipeSync(), // 0x00004D50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000ABE0), // 0x00004D58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00004D60
	gsDPLoadSync(), // 0x00004D68
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004D70
	gsDPPipeSync(), // 0x00004D78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00004D80
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004D88
	gsSPVertex(_spot20_room_0_vertices_000048F8, 32, 0), // 0x00004D90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004D98
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004DA0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004DA8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00004DB0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00004DB8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00004DC0
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00004DC8
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00004DD0
	gsSPVertex(_spot20_room_0_vertices_00004AF8, 12, 0), // 0x00004DD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004DE0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004DE8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004DF0
	gsSPEndDisplayList(), // 0x00004DF8
};

Vtx_t _spot20_room_0_vertices_00004E00[20] = 
{
	 { -1520, 0, 1360, 0, 0, 2048, 0, 0, 136, 255 }, // 0x00004E00
	 { -1800, 0, 1360, 0, 2048, 2048, 0, 0, 136, 255 }, // 0x00004E10
	 { -1800, 200, 1360, 0, 2048, 0, 0, 0, 136, 255 }, // 0x00004E20
	 { -1520, 200, 1360, 0, 0, 0, 0, 2, 137, 255 }, // 0x00004E30
	 { -1520, 200, 1360, 0, 55, 1930, 0, 2, 137, 255 }, // 0x00004E40
	 { -1920, 200, 1360, 0, 2053, 1935, 0, 4, 137, 255 }, // 0x00004E50
	 { -1900, 920, 1380, 0, 1948, 0, 0, 86, 173, 255 }, // 0x00004E60
	 { -1540, 920, 1380, 0, 150, -4, 0, 86, 173, 255 }, // 0x00004E70
	 { -1520, 200, 1360, 0, 61, 1930, 119, 1, 0, 255 }, // 0x00004E80
	 { -1540, 920, 1380, 0, 166, -4, 83, 86, 0, 255 }, // 0x00004E90
	 { -1540, 920, 1700, 0, 1937, 0, 83, 86, 0, 255 }, // 0x00004EA0
	 { -1520, 200, 1720, 0, 2053, 1935, 119, 4, 0, 255 }, // 0x00004EB0
	 { -1900, 920, 1380, 0, 1934, 0, 173, 86, 0, 255 }, // 0x00004EC0
	 { -1920, 200, 1360, 0, 2053, 1935, 137, 2, 0, 255 }, // 0x00004ED0
	 { -1920, 200, 1720, 0, 5, 1930, 137, 2, 0, 255 }, // 0x00004EE0
	 { -1900, 920, 1700, 0, 114, -5, 173, 86, 0, 255 }, // 0x00004EF0
	 { -1920, 200, 1720, 0, 5, 1930, 0, 4, 119, 255 }, // 0x00004F00
	 { -1520, 200, 1720, 0, 2053, 1935, 0, 4, 119, 255 }, // 0x00004F10
	 { -1540, 920, 1700, 0, 1946, 0, 0, 86, 83, 255 }, // 0x00004F20
	 { -1900, 920, 1700, 0, 103, -5, 0, 86, 83, 255 }, // 0x00004F30
};

Vtx_t _spot20_room_0_vertices_00004F40[4] = 
{
	 { -1620, 0, 1460, 0, -768, 1024, 69, 69, 69, 255 }, // 0x00004F40
	 { -1620, 100, 1460, 0, -768, 0, 69, 187, 69, 255 }, // 0x00004F50
	 { -1620, 100, 1520, 0, -768, 0, 69, 187, 187, 255 }, // 0x00004F60
	 { -1620, 0, 1520, 0, -768, 1024, 69, 69, 187, 255 }, // 0x00004F70
};

Vtx_t _spot20_room_0_vertices_00004F80[8] = 
{
	 { -1520, 100, 1520, 0, 683, 1024, 120, 0, 0, 255 }, // 0x00004F80
	 { -1520, 100, 1460, 0, 1195, 1024, 120, 0, 0, 255 }, // 0x00004F90
	 { -1520, 200, 1360, 0, 2048, 0, 119, 1, 0, 255 }, // 0x00004FA0
	 { -1520, 200, 1600, 0, 0, 0, 120, 0, 0, 255 }, // 0x00004FB0
	 { -1520, 0, 1600, 0, 0, 2048, 120, 0, 0, 255 }, // 0x00004FC0
	 { -1520, 0, 1520, 0, 683, 2048, 120, 0, 0, 255 }, // 0x00004FD0
	 { -1520, 0, 1360, 0, 2048, 2048, 120, 0, 0, 255 }, // 0x00004FE0
	 { -1520, 0, 1460, 0, 1195, 2048, 120, 0, 0, 255 }, // 0x00004FF0
};

Vtx_t _spot20_room_0_vertices_00005000[8] = 
{
	 { -1520, 100, 1520, 0, 512, 0, 108, 220, 220, 255 }, // 0x00005000
	 { -1520, 0, 1520, 0, 512, 1024, 69, 69, 187, 255 }, // 0x00005010
	 { -1620, 0, 1520, 0, -768, 1024, 69, 69, 187, 255 }, // 0x00005020
	 { -1620, 100, 1520, 0, -768, 0, 69, 187, 187, 255 }, // 0x00005030
	 { -1620, 0, 1460, 0, -768, 1024, 69, 69, 69, 255 }, // 0x00005040
	 { -1520, 0, 1460, 0, 512, 1024, 69, 69, 69, 255 }, // 0x00005050
	 { -1520, 100, 1460, 0, 512, 0, 108, 220, 36, 255 }, // 0x00005060
	 { -1620, 100, 1460, 0, -768, 0, 69, 187, 69, 255 }, // 0x00005070
};

Vtx_t _spot20_room_0_vertices_00005080[4] = 
{
	 { -1620, 0, 1520, 0, -768, 1024, 69, 69, 187, 255 }, // 0x00005080
	 { -1520, 0, 1520, 0, 512, 1024, 69, 69, 187, 255 }, // 0x00005090
	 { -1520, 0, 1460, 0, 512, 1024, 69, 69, 69, 255 }, // 0x000050A0
	 { -1620, 0, 1460, 0, -768, 1024, 69, 69, 69, 255 }, // 0x000050B0
};

Vtx_t _spot20_room_0_vertices_000050C0[8] = 
{
	 { -1920, 0, 1360, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050C0
	 { -1520, 0, 1360, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050D0
	 { -1920, 920, 1360, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050E0
	 { -1520, 920, 1360, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050F0
	 { -1920, 0, 1720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005100
	 { -1520, 0, 1720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005110
	 { -1920, 920, 1720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005120
	 { -1520, 920, 1720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005130
};

Gfx _spot20_room_0_dlist_00005140[] =
{
	gsDPPipeSync(), // 0x00005140
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005148
	gsSPVertex(_spot20_room_0_vertices_000050C0, 8, 0), // 0x00005150
	gsSPCullDisplayList(0, 7), // 0x00005158
	gsDPPipeSync(), // 0x00005160
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005168
	gsDPPipeSync(), // 0x00005170
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005178
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005180
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000E1E0), // 0x00005188
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 6, 0), // 0x00005190
	gsDPLoadSync(), // 0x00005198
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000051A0
	gsDPPipeSync(), // 0x000051A8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 0, 6, 0), // 0x000051B0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000051B8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000051C0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000051C8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000051D0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000051D8
	gsDPSetPrimColor(0, 0, 214, 200, 154, 255), // 0x000051E0
	gsSPVertex(_spot20_room_0_vertices_00004E00, 20, 0), // 0x000051E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000051F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000051F8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00005200
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00005208
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00005210
	gsDPPipeSync(), // 0x00005218
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005220
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_000091E0), // 0x00005228
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x00005230
	gsDPLoadSync(), // 0x00005238
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00005240
	gsDPPipeSync(), // 0x00005248
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x00005250
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00005258
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_00005DB0), // 0x00005260
	gsDPTileSync(), // 0x00005268
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005270
	gsDPLoadSync(), // 0x00005278
	gsDPLoadTLUTCmd(7, 255), // 0x00005280
	gsDPPipeSync(), // 0x00005288
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005290
	gsDPSetPrimColor(0, 0, 100, 95, 75, 255), // 0x00005298
	gsSPVertex(_spot20_room_0_vertices_00004F40, 4, 0), // 0x000052A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000052A8
	gsDPPipeSync(), // 0x000052B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000052B8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000E1E0), // 0x000052C0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 6, 0), // 0x000052C8
	gsDPLoadSync(), // 0x000052D0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000052D8
	gsDPPipeSync(), // 0x000052E0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 0, 6, 0), // 0x000052E8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000052F0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000052F8
	gsDPSetPrimColor(0, 0, 214, 200, 154, 255), // 0x00005300
	gsSPVertex(_spot20_room_0_vertices_00004F80, 8, 0), // 0x00005308
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005310
	gsSP2Triangles(4, 0, 3, 0, 4, 5, 0, 0), // 0x00005318
	gsSP2Triangles(6, 2, 1, 0, 1, 7, 6, 0), // 0x00005320
	gsDPPipeSync(), // 0x00005328
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005330
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_000091E0), // 0x00005338
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x00005340
	gsDPLoadSync(), // 0x00005348
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00005350
	gsDPPipeSync(), // 0x00005358
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x00005360
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00005368
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_00005DB0), // 0x00005370
	gsDPTileSync(), // 0x00005378
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005380
	gsDPLoadSync(), // 0x00005388
	gsDPLoadTLUTCmd(7, 255), // 0x00005390
	gsDPPipeSync(), // 0x00005398
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000053A0
	gsDPSetPrimColor(0, 0, 100, 95, 75, 255), // 0x000053A8
	gsSPVertex(_spot20_room_0_vertices_00005000, 8, 0), // 0x000053B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000053B8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000053C0
	gsSP2Triangles(0, 3, 7, 0, 0, 7, 6, 0), // 0x000053C8
	gsDPPipeSync(), // 0x000053D0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112D58), // 0x000053D8
	gsSPVertex(_spot20_room_0_vertices_00005080, 4, 0), // 0x000053E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000053E8
	gsSPEndDisplayList(), // 0x000053F0
};

Vtx_t _spot20_room_0_vertices_000053F8[12] = 
{
	 { 980, 212, -2400, 0, 2048, 1024, 0, 0, 120, 255 }, // 0x000053F8
	 { 980, 260, -2400, 0, 2048, 0, 0, 0, 120, 255 }, // 0x00005408
	 { 820, 260, -2400, 0, 0, 0, 0, 0, 120, 255 }, // 0x00005418
	 { 820, 212, -2400, 0, 0, 1024, 0, 0, 120, 255 }, // 0x00005428
	 { 980, 212, -2420, 0, 0, 1024, 0, 136, 0, 255 }, // 0x00005438
	 { 980, 212, -2400, 0, 0, 1126, 0, 136, 0, 255 }, // 0x00005448
	 { 820, 212, -2400, 0, 2048, 1126, 0, 136, 0, 255 }, // 0x00005458
	 { 820, 212, -2420, 0, 2048, 1024, 0, 136, 0, 255 }, // 0x00005468
	 { 820, 212, -2420, 0, 2048, 1024, 0, 0, 136, 255 }, // 0x00005478
	 { 820, 260, -2420, 0, 2048, 0, 0, 0, 136, 255 }, // 0x00005488
	 { 980, 260, -2420, 0, 0, 0, 0, 0, 136, 255 }, // 0x00005498
	 { 980, 212, -2420, 0, 0, 1024, 0, 0, 136, 255 }, // 0x000054A8
};

Vtx_t _spot20_room_0_vertices_000054B8[24] = 
{
	 { 980, 0, -2420, 0, 0, 1024, 172, 0, 172, 255 }, // 0x000054B8
	 { 980, 0, -2400, 0, 512, 1024, 172, 0, 84, 255 }, // 0x000054C8
	 { 980, 212, -2400, 0, 512, -153, 136, 0, 0, 255 }, // 0x000054D8
	 { 980, 212, -2420, 0, 0, -153, 136, 0, 0, 255 }, // 0x000054E8
	 { 820, 0, -2400, 0, 0, 1024, 84, 0, 84, 255 }, // 0x000054F8
	 { 820, 0, -2420, 0, 512, 1024, 84, 0, 172, 255 }, // 0x00005508
	 { 820, 212, -2420, 0, 512, -153, 120, 0, 0, 255 }, // 0x00005518
	 { 820, 212, -2400, 0, 0, -153, 120, 0, 0, 255 }, // 0x00005528
	 { 800, 0, -2420, 0, 512, 1024, 0, 0, 136, 255 }, // 0x00005538
	 { 800, 260, -2420, 0, 512, -768, 0, 0, 136, 255 }, // 0x00005548
	 { 820, 260, -2420, 0, 0, -768, 0, 0, 136, 255 }, // 0x00005558
	 { 820, 0, -2420, 0, 0, 1024, 84, 0, 172, 255 }, // 0x00005568
	 { 820, 0, -2400, 0, 512, 1024, 84, 0, 84, 255 }, // 0x00005578
	 { 820, 260, -2400, 0, 512, -768, 0, 0, 120, 255 }, // 0x00005588
	 { 800, 260, -2400, 0, 0, -768, 0, 0, 120, 255 }, // 0x00005598
	 { 800, 0, -2400, 0, 0, 1024, 0, 0, 120, 255 }, // 0x000055A8
	 { 1000, 0, -2400, 0, 512, 1024, 0, 0, 120, 255 }, // 0x000055B8
	 { 1000, 260, -2400, 0, 512, -768, 0, 0, 120, 255 }, // 0x000055C8
	 { 980, 260, -2400, 0, 0, -768, 0, 0, 120, 255 }, // 0x000055D8
	 { 980, 0, -2400, 0, 0, 1024, 172, 0, 84, 255 }, // 0x000055E8
	 { 980, 0, -2420, 0, 512, 1024, 172, 0, 172, 255 }, // 0x000055F8
	 { 980, 260, -2420, 0, 512, -768, 0, 0, 136, 255 }, // 0x00005608
	 { 1000, 260, -2420, 0, 0, -768, 0, 0, 136, 255 }, // 0x00005618
	 { 1000, 0, -2420, 0, 0, 1024, 0, 0, 136, 255 }, // 0x00005628
};

Vtx_t _spot20_room_0_vertices_00005638[8] = 
{
	 { 800, 0, -2420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005638
	 { 1000, 0, -2420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005648
	 { 800, 260, -2420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005658
	 { 1000, 260, -2420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005668
	 { 800, 0, -2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005678
	 { 1000, 0, -2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005688
	 { 800, 260, -2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005698
	 { 1000, 260, -2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x000056A8
};

Gfx _spot20_room_0_dlist_000056B8[] =
{
	gsDPPipeSync(), // 0x000056B8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000056C0
	gsSPVertex(_spot20_room_0_vertices_00005638, 8, 0), // 0x000056C8
	gsSPCullDisplayList(0, 7), // 0x000056D0
	gsDPPipeSync(), // 0x000056D8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000056E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000056E8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000056F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_000069E0), // 0x000056F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005700
	gsDPLoadSync(), // 0x00005708
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005710
	gsDPPipeSync(), // 0x00005718
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005720
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005728
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_00005DB0), // 0x00005730
	gsDPTileSync(), // 0x00005738
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005740
	gsDPLoadSync(), // 0x00005748
	gsDPLoadTLUTCmd(7, 255), // 0x00005750
	gsDPPipeSync(), // 0x00005758
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005760
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005768
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00005770
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00005778
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005780
	gsSPVertex(_spot20_room_0_vertices_000053F8, 12, 0), // 0x00005788
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005790
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005798
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000057A0
	gsDPPipeSync(), // 0x000057A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_000067E0), // 0x000057B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x000057B8
	gsDPLoadSync(), // 0x000057C0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000057C8
	gsDPPipeSync(), // 0x000057D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x000057D8
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x000057E0
	gsSPVertex(_spot20_room_0_vertices_000054B8, 24, 0), // 0x000057E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000057F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000057F8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00005800
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00005808
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00005810
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00005818
	gsSPEndDisplayList(), // 0x00005820
};

Vtx_t _spot20_room_0_vertices_00005828[9] = 
{
	 { -142, 120, -1524, 0, 0, 1024, 207, 207, 158, 255 }, // 0x00005828
	 { -142, 120, -1504, 0, 0, 1126, 237, 237, 116, 255 }, // 0x00005838
	 { -302, 120, -1504, 0, 2048, 1126, 49, 207, 98, 255 }, // 0x00005848
	 { -302, 120, -1524, 0, 2048, 1024, 19, 237, 140, 255 }, // 0x00005858
	 { -322, 160, -1524, 0, 2048, 0, 190, 40, 165, 255 }, // 0x00005868
	 { -280, 182, -1524, 0, 1536, 0, 229, 80, 171, 255 }, // 0x00005878
	 { -222, 192, -1524, 0, 1024, 0, 0, 84, 171, 255 }, // 0x00005888
	 { -164, 182, -1524, 0, 512, 0, 27, 80, 171, 255 }, // 0x00005898
	 { -122, 160, -1524, 0, 0, 0, 51, 31, 152, 255 }, // 0x000058A8
};

Vtx_t _spot20_room_0_vertices_000058B8[32] = 
{
	 { -122, 0, -1504, 0, 0, 2048, 49, 98, 49, 255 }, // 0x000058B8
	 { -122, 0, -1524, 0, 512, 2048, 49, 98, 207, 255 }, // 0x000058C8
	 { -122, 160, -1524, 0, 512, -683, 51, 31, 152, 255 }, // 0x000058D8
	 { -122, 160, -1504, 0, 0, -683, 66, 40, 91, 255 }, // 0x000058E8
	 { -322, 0, -1524, 0, 0, 2048, 207, 98, 207, 255 }, // 0x000058F8
	 { -322, 0, -1504, 0, 512, 2048, 207, 98, 49, 255 }, // 0x00005908
	 { -322, 160, -1504, 0, 512, -683, 205, 31, 104, 255 }, // 0x00005918
	 { -322, 160, -1524, 0, 0, -683, 190, 40, 165, 255 }, // 0x00005928
	 { -142, 0, -1524, 0, 512, 2048, 207, 98, 207, 255 }, // 0x00005938
	 { -142, 120, -1524, 0, 512, 0, 207, 207, 158, 255 }, // 0x00005948
	 { -122, 0, -1524, 0, 0, 2048, 49, 98, 207, 255 }, // 0x00005958
	 { -122, 160, -1524, 0, 0, -683, 51, 31, 152, 255 }, // 0x00005968
	 { -122, 0, -1504, 0, 512, 2048, 49, 98, 49, 255 }, // 0x00005978
	 { -142, 120, -1504, 0, 0, 0, 237, 237, 116, 255 }, // 0x00005988
	 { -142, 0, -1504, 0, 0, 2048, 207, 98, 49, 255 }, // 0x00005998
	 { -122, 160, -1504, 0, 512, -683, 66, 40, 91, 255 }, // 0x000059A8
	 { -142, 0, -1524, 0, 0, 2048, 207, 98, 207, 255 }, // 0x000059B8
	 { -142, 0, -1504, 0, 512, 2048, 207, 98, 49, 255 }, // 0x000059C8
	 { -142, 120, -1504, 0, 512, 0, 237, 237, 116, 255 }, // 0x000059D8
	 { -142, 120, -1524, 0, 0, 0, 207, 207, 158, 255 }, // 0x000059E8
	 { -302, 0, -1504, 0, 0, 2048, 49, 98, 49, 255 }, // 0x000059F8
	 { -302, 0, -1524, 0, 512, 2048, 49, 98, 207, 255 }, // 0x00005A08
	 { -302, 120, -1524, 0, 512, 0, 19, 237, 140, 255 }, // 0x00005A18
	 { -302, 120, -1504, 0, 0, 0, 49, 207, 98, 255 }, // 0x00005A28
	 { -302, 0, -1504, 0, 512, 2048, 49, 98, 49, 255 }, // 0x00005A38
	 { -302, 120, -1504, 0, 512, 0, 49, 207, 98, 255 }, // 0x00005A48
	 { -322, 0, -1504, 0, 0, 2048, 207, 98, 49, 255 }, // 0x00005A58
	 { -322, 160, -1504, 0, 0, -683, 205, 31, 104, 255 }, // 0x00005A68
	 { -322, 0, -1524, 0, 512, 2048, 207, 98, 207, 255 }, // 0x00005A78
	 { -302, 120, -1524, 0, 0, 0, 19, 237, 140, 255 }, // 0x00005A88
	 { -302, 0, -1524, 0, 0, 2048, 49, 98, 207, 255 }, // 0x00005A98
	 { -322, 160, -1524, 0, 512, -683, 190, 40, 165, 255 }, // 0x00005AA8
};

Vtx_t _spot20_room_0_vertices_00005AB8[17] = 
{
	 { -142, 120, -1504, 0, 2048, 1024, 237, 237, 116, 255 }, // 0x00005AB8
	 { -322, 160, -1504, 0, 0, 0, 205, 31, 104, 255 }, // 0x00005AC8
	 { -302, 120, -1504, 0, 0, 1024, 49, 207, 98, 255 }, // 0x00005AD8
	 { -280, 182, -1504, 0, 512, 0, 229, 80, 85, 255 }, // 0x00005AE8
	 { -222, 192, -1504, 0, 1024, 0, 0, 84, 85, 255 }, // 0x00005AF8
	 { -164, 182, -1504, 0, 1536, 0, 27, 80, 85, 255 }, // 0x00005B08
	 { -122, 160, -1504, 0, 2048, 0, 66, 40, 91, 255 }, // 0x00005B18
	 { -122, 160, -1504, 0, 0, 893, 66, 40, 91, 255 }, // 0x00005B28
	 { -122, 160, -1524, 0, 0, 945, 51, 31, 152, 255 }, // 0x00005B38
	 { -164, 182, -1524, 0, 430, 945, 27, 80, 171, 255 }, // 0x00005B48
	 { -164, 182, -1504, 0, 430, 893, 27, 80, 85, 255 }, // 0x00005B58
	 { -222, 192, -1524, 0, 1024, 945, 0, 84, 171, 255 }, // 0x00005B68
	 { -222, 192, -1504, 0, 1024, 893, 0, 84, 85, 255 }, // 0x00005B78
	 { -280, 182, -1524, 0, 1618, 945, 229, 80, 171, 255 }, // 0x00005B88
	 { -280, 182, -1504, 0, 1618, 893, 229, 80, 85, 255 }, // 0x00005B98
	 { -322, 160, -1524, 0, 2048, 945, 190, 40, 165, 255 }, // 0x00005BA8
	 { -322, 160, -1504, 0, 2048, 893, 205, 31, 104, 255 }, // 0x00005BB8
};

Vtx_t _spot20_room_0_vertices_00005BC8[8] = 
{
	 { -322, 0, -1524, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005BC8
	 { -122, 0, -1524, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005BD8
	 { -322, 192, -1524, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005BE8
	 { -122, 192, -1524, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005BF8
	 { -322, 0, -1504, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005C08
	 { -122, 0, -1504, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005C18
	 { -322, 192, -1504, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005C28
	 { -122, 192, -1504, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005C38
};

Gfx _spot20_room_0_dlist_00005C48[] =
{
	gsDPPipeSync(), // 0x00005C48
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005C50
	gsSPVertex(_spot20_room_0_vertices_00005BC8, 8, 0), // 0x00005C58
	gsSPCullDisplayList(0, 7), // 0x00005C60
	gsDPPipeSync(), // 0x00005C68
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005C70
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005C78
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005C80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_000069E0), // 0x00005C88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005C90
	gsDPLoadSync(), // 0x00005C98
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005CA0
	gsDPPipeSync(), // 0x00005CA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005CB0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005CB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot20_scene_tex_00005DB0), // 0x00005CC0
	gsDPTileSync(), // 0x00005CC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005CD0
	gsDPLoadSync(), // 0x00005CD8
	gsDPLoadTLUTCmd(7, 255), // 0x00005CE0
	gsDPPipeSync(), // 0x00005CE8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005CF0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005CF8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00005D00
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00005D08
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005D10
	gsSPVertex(_spot20_room_0_vertices_00005828, 9, 0), // 0x00005D18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005D20
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 6, 0), // 0x00005D28
	gsSP2Triangles(3, 6, 7, 0, 3, 7, 8, 0), // 0x00005D30
	gsSP1Triangle(3, 8, 0, 0), // 0x00005D38
	gsDPPipeSync(), // 0x00005D40
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000F9E0), // 0x00005D48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 3, 0), // 0x00005D50
	gsDPLoadSync(), // 0x00005D58
	gsDPLoadBlock(7, 0, 0, 255, 2048), // 0x00005D60
	gsDPPipeSync(), // 0x00005D68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 1, 0, 0, 0, 2, 6, 0, 1, 3, 0), // 0x00005D70
	gsDPSetTileSize(0, 0, 0, 28, 252), // 0x00005D78
	gsSPVertex(_spot20_room_0_vertices_000058B8, 32, 0), // 0x00005D80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005D88
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005D90
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x00005D98
	gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0), // 0x00005DA0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00005DA8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00005DB0
	gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0), // 0x00005DB8
	gsSP2Triangles(28, 29, 30, 0, 28, 31, 29, 0), // 0x00005DC0
	gsDPPipeSync(), // 0x00005DC8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot20_scene_tex_000069E0), // 0x00005DD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005DD8
	gsDPLoadSync(), // 0x00005DE0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005DE8
	gsDPPipeSync(), // 0x00005DF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005DF8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005E00
	gsSPVertex(_spot20_room_0_vertices_00005AB8, 17, 0), // 0x00005E08
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005E10
	gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0), // 0x00005E18
	gsSP2Triangles(0, 6, 5, 0, 7, 8, 9, 0), // 0x00005E20
	gsSP2Triangles(7, 9, 10, 0, 10, 9, 11, 0), // 0x00005E28
	gsSP2Triangles(10, 11, 12, 0, 12, 11, 13, 0), // 0x00005E30
	gsSP2Triangles(12, 13, 14, 0, 14, 13, 15, 0), // 0x00005E38
	gsSP1Triangle(14, 15, 16, 0), // 0x00005E40
	gsSPEndDisplayList(), // 0x00005E48
};

Gfx _spot20_room_0_dlist_00005E50[] =
{
	gsSPDisplayList(_spot20_room_0_dlist_00001880), // 0x00005E50
	gsSPDisplayList(_spot20_room_0_dlist_00001FB8), // 0x00005E58
	gsSPDisplayList(_spot20_room_0_dlist_00002730), // 0x00005E60
	gsSPDisplayList(_spot20_room_0_dlist_00002C00), // 0x00005E68
	gsSPDisplayList(_spot20_room_0_dlist_000033B8), // 0x00005E70
	gsSPDisplayList(_spot20_room_0_dlist_00003CA0), // 0x00005E78
	gsSPDisplayList(_spot20_room_0_dlist_00004460), // 0x00005E80
	gsSPDisplayList(_spot20_room_0_dlist_00004C38), // 0x00005E88
	gsSPDisplayList(_spot20_room_0_dlist_00005140), // 0x00005E90
	gsSPDisplayList(_spot20_room_0_dlist_000056B8), // 0x00005E98
	gsSPDisplayList(_spot20_room_0_dlist_00005C48), // 0x00005EA0
	gsSPEndDisplayList(), // 0x00005EA8
};

Vtx_t _spot20_room_0_vertices_00005EB0[46] = 
{
	 { -983, 0, -1524, 0, 2048, 1871, 0, 120, 0, 255 }, // 0x00005EB0
	 { -400, 0, -1524, 0, 2048, -4096, 0, 120, 0, 255 }, // 0x00005EC0
	 { -400, 0, -1724, 0, 0, -4096, 0, 120, 0, 255 }, // 0x00005ED0
	 { -1066, 0, -1724, 0, 0, 1871, 0, 120, 0, 255 }, // 0x00005EE0
	 { -1524, 0, -983, 0, 2048, 4096, 0, 120, 0, 255 }, // 0x00005EF0
	 { -1480, 0, -1480, 0, 0, 0, 0, 120, 0, 255 }, // 0x00005F00
	 { -1761, 0, -1081, 0, 0, 4096, 0, 120, 0, 255 }, // 0x00005F10
	 { -983, 0, -1524, 0, 2048, -4096, 0, 120, 0, 255 }, // 0x00005F20
	 { -1066, 0, -1724, 0, 0, -4096, 0, 120, 0, 255 }, // 0x00005F30
	 { -1524, 0, -217, 0, 2048, 4096, 0, 120, 0, 255 }, // 0x00005F40
	 { -1844, 0, -600, 0, 0, 0, 0, 120, 0, 255 }, // 0x00005F50
	 { -1761, 0, -119, 0, 0, 4096, 0, 120, 0, 255 }, // 0x00005F60
	 { -1524, 0, -983, 0, 2048, -4096, 0, 120, 0, 255 }, // 0x00005F70
	 { -1761, 0, -1081, 0, 0, -4096, 0, 120, 0, 255 }, // 0x00005F80
	 { -983, 0, 324, 0, 2048, 4096, 0, 120, 0, 255 }, // 0x00005F90
	 { -1480, 0, 280, 0, 0, 0, 0, 120, 0, 255 }, // 0x00005FA0
	 { -1066, 0, 524, 0, 0, 4096, 0, 120, 0, 255 }, // 0x00005FB0
	 { -1524, 0, -217, 0, 2048, -4096, 0, 120, 0, 255 }, // 0x00005FC0
	 { -1761, 0, -119, 0, 0, -4096, 0, 120, 0, 255 }, // 0x00005FD0
	 { 0, 0, 324, 0, 2048, 6144, 0, 120, 0, 255 }, // 0x00005FE0
	 { -983, 0, 324, 0, 2048, -4096, 0, 120, 0, 255 }, // 0x00005FF0
	 { -1066, 0, 524, 0, 0, -4096, 0, 120, 0, 255 }, // 0x00006000
	 { 0, 0, 524, 0, 0, 6144, 0, 120, 0, 255 }, // 0x00006010
	 { 983, 0, 324, 0, 2048, 6144, 0, 120, 0, 255 }, // 0x00006020
	 { 0, 0, 324, 0, 2048, -4096, 0, 120, 0, 255 }, // 0x00006030
	 { 0, 0, 524, 0, 0, -4096, 0, 120, 0, 255 }, // 0x00006040
	 { 1066, 0, 524, 0, 0, 6144, 0, 120, 0, 255 }, // 0x00006050
	 { 0, 0, -1524, 0, 2048, 6144, 0, 120, 0, 255 }, // 0x00006060
	 { 983, 0, -1524, 0, 2048, -4096, 0, 120, 0, 255 }, // 0x00006070
	 { 1066, 0, -1724, 0, 0, -4096, 0, 120, 0, 255 }, // 0x00006080
	 { 0, 0, -1724, 0, 0, 6144, 0, 120, 0, 255 }, // 0x00006090
	 { 983, 0, 324, 0, 2048, -4096, 0, 120, 0, 255 }, // 0x000060A0
	 { 1066, 0, 524, 0, 0, -4096, 0, 120, 0, 255 }, // 0x000060B0
	 { 1480, 0, 280, 0, 0, 0, 0, 120, 0, 255 }, // 0x000060C0
	 { 1524, 0, -217, 0, 2048, 4096, 0, 120, 0, 255 }, // 0x000060D0
	 { 1761, 0, -119, 0, 0, 4096, 0, 120, 0, 255 }, // 0x000060E0
	 { 1524, 0, -217, 0, 2048, -4096, 0, 120, 0, 255 }, // 0x000060F0
	 { 1761, 0, -119, 0, 0, -4096, 0, 120, 0, 255 }, // 0x00006100
	 { 1844, 0, -600, 0, 0, 0, 0, 120, 0, 255 }, // 0x00006110
	 { 1524, 0, -983, 0, 2048, 4096, 0, 120, 0, 255 }, // 0x00006120
	 { 1761, 0, -1081, 0, 0, 4096, 0, 120, 0, 255 }, // 0x00006130
	 { 1524, 0, -983, 0, 2048, -4096, 0, 120, 0, 255 }, // 0x00006140
	 { 1761, 0, -1081, 0, 0, -4096, 0, 120, 0, 255 }, // 0x00006150
	 { 1480, 0, -1480, 0, 0, 0, 0, 120, 0, 255 }, // 0x00006160
	 { 983, 0, -1524, 0, 2048, 4096, 0, 120, 0, 255 }, // 0x00006170
	 { 1066, 0, -1724, 0, 0, 4096, 0, 120, 0, 255 }, // 0x00006180
};

Vtx_t _spot20_room_0_vertices_00006190[8] = 
{
	 { -400, 0, -1724, 0, 0, 2048, 0, 120, 0, 255 }, // 0x00006190
	 { -400, 0, -1524, 0, 2048, 2048, 0, 120, 0, 255 }, // 0x000061A0
	 { -216, 0, -1524, 0, 2048, 0, 0, 120, 0, 255 }, // 0x000061B0
	 { -216, 0, -1724, 0, 0, 0, 0, 120, 0, 255 }, // 0x000061C0
	 { -184, 0, -1724, 0, 0, 0, 0, 120, 0, 255 }, // 0x000061D0
	 { -184, 0, -1524, 0, 2048, 0, 0, 120, 0, 255 }, // 0x000061E0
	 { 0, 0, -1524, 0, 2048, 2048, 0, 120, 0, 255 }, // 0x000061F0
	 { 0, 0, -1724, 0, 0, 2048, 0, 120, 0, 255 }, // 0x00006200
};

Vtx_t _spot20_room_0_vertices_00006210[4] = 
{
	 { -184, 0, -1508, 0, 0, 576, 0, 120, 0, 255 }, // 0x00006210
	 { -184, 0, -1812, 0, 2048, 576, 0, 120, 0, 255 }, // 0x00006220
	 { -216, 0, -1812, 0, 2048, 0, 0, 120, 0, 255 }, // 0x00006230
	 { -216, 0, -1508, 0, 0, 0, 0, 120, 0, 255 }, // 0x00006240
};

Vtx_t _spot20_room_0_vertices_00006250[8] = 
{
	 { -1844, 0, -1812, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006250
	 { 1844, 0, -1812, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006260
	 { -1844, 0, -1812, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006270
	 { 1844, 0, -1812, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006280
	 { -1844, 0, 524, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006290
	 { 1844, 0, 524, 0, 0, 0, 0, 0, 0, 0 }, // 0x000062A0
	 { -1844, 0, 524, 0, 0, 0, 0, 0, 0, 0 }, // 0x000062B0
	 { 1844, 0, 524, 0, 0, 0, 0, 0, 0, 0 }, // 0x000062C0
};

Gfx _spot20_room_0_dlist_000062D0[] =
{
	gsDPPipeSync(), // 0x000062D0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000062D8
	gsSPVertex(_spot20_room_0_vertices_00006250, 8, 0), // 0x000062E0
	gsSPCullDisplayList(0, 7), // 0x000062E8
	gsDPPipeSync(), // 0x000062F0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000062F8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006300
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006308
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000F1E0), // 0x00006310
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 2, 6, 0), // 0x00006318
	gsDPLoadSync(), // 0x00006320
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006328
	gsDPPipeSync(), // 0x00006330
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 2, 6, 0), // 0x00006338
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00006340
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006348
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104F50), // 0x00006350
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00006358
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00006360
	gsDPSetPrimColor(0, 0, 214, 200, 130, 255), // 0x00006368
	gsSPVertex(_spot20_room_0_vertices_00005EB0, 32, 0), // 0x00006370
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006378
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00006380
	gsSP2Triangles(7, 8, 5, 0, 9, 10, 11, 0), // 0x00006388
	gsSP2Triangles(9, 12, 10, 0, 12, 13, 10, 0), // 0x00006390
	gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0), // 0x00006398
	gsSP2Triangles(17, 18, 15, 0, 19, 20, 21, 0), // 0x000063A0
	gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0), // 0x000063A8
	gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0), // 0x000063B0
	gsSP1Triangle(27, 29, 30, 0), // 0x000063B8
	gsSPVertex(_spot20_room_0_vertices_000060A0, 15, 0), // 0x000063C0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x000063C8
	gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0), // 0x000063D0
	gsSP2Triangles(8, 5, 7, 0, 8, 7, 9, 0), // 0x000063D8
	gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0), // 0x000063E0
	gsSP1Triangle(13, 12, 14, 0), // 0x000063E8
	gsDPPipeSync(), // 0x000063F0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000E9E0), // 0x000063F8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00006400
	gsDPLoadSync(), // 0x00006408
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006410
	gsDPPipeSync(), // 0x00006418
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00006420
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00006428
	gsSPVertex(_spot20_room_0_vertices_00006190, 8, 0), // 0x00006430
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006438
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006440
	gsDPPipeSync(), // 0x00006448
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot20_scene_tex_00010BE0), // 0x00006450
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00006458
	gsDPLoadSync(), // 0x00006460
	gsDPLoadBlock(7, 0, 0, 287, 512), // 0x00006468
	gsDPPipeSync(), // 0x00006470
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00006478
	gsDPSetTileSize(0, 0, 0, 252, 68), // 0x00006480
	gsDPSetPrimColor(0, 0, 255, 255, 200, 255), // 0x00006488
	gsSPVertex(_spot20_room_0_vertices_00006210, 4, 0), // 0x00006490
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006498
	gsSPEndDisplayList(), // 0x000064A0
};

Vtx_t _spot20_room_0_vertices_000064A8[12] = 
{
	 { 800, 0, -3040, 0, 2048, 0, 0, 120, 0, 255 }, // 0x000064A8
	 { 640, 0, -3040, 0, 0, 0, 0, 120, 0, 255 }, // 0x000064B8
	 { 640, 0, -2880, 0, 0, 2048, 0, 120, 0, 255 }, // 0x000064C8
	 { 800, 0, -2880, 0, 2048, 2048, 0, 120, 0, 255 }, // 0x000064D8
	 { 320, 0, -2390, 0, 2048, 2048, 0, 120, 0, 255 }, // 0x000064E8
	 { 320, 0, -2230, 0, 2048, 0, 0, 120, 0, 255 }, // 0x000064F8
	 { 480, 0, -2230, 0, 0, 0, 0, 120, 0, 255 }, // 0x00006508
	 { 480, 0, -2390, 0, 0, 2048, 0, 120, 0, 255 }, // 0x00006518
	 { 840, 0, -3180, 0, 2048, 0, 0, 120, 0, 255 }, // 0x00006528
	 { 840, 0, -3020, 0, 0, 0, 0, 120, 0, 255 }, // 0x00006538
	 { 1000, 0, -3020, 0, 0, 2048, 0, 120, 0, 255 }, // 0x00006548
	 { 1000, 0, -3180, 0, 2048, 2048, 0, 120, 0, 255 }, // 0x00006558
};

Vtx_t _spot20_room_0_vertices_00006568[8] = 
{
	 { 791, 0, -3301, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006568
	 { 1069, 0, -3140, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006578
	 { 791, 0, -3301, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006588
	 { 1069, 0, -3140, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006598
	 { 209, 0, -2294, 0, 0, 0, 0, 0, 0, 0 }, // 0x000065A8
	 { 488, 0, -2133, 0, 0, 0, 0, 0, 0, 0 }, // 0x000065B8
	 { 209, 0, -2294, 0, 0, 0, 0, 0, 0, 0 }, // 0x000065C8
	 { 488, 0, -2133, 0, 0, 0, 0, 0, 0, 0 }, // 0x000065D8
};

Gfx _spot20_room_0_dlist_000065E8[] =
{
	gsDPPipeSync(), // 0x000065E8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000065F0
	gsSPVertex(_spot20_room_0_vertices_00006568, 8, 0), // 0x000065F8
	gsSPCullDisplayList(0, 7), // 0x00006600
	gsDPPipeSync(), // 0x00006608
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006610
	gsDPPipeSync(), // 0x00006618
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006620
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006628
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot20_scene_tex_0000E9E0), // 0x00006630
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00006638
	gsDPLoadSync(), // 0x00006640
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006648
	gsDPPipeSync(), // 0x00006650
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00006658
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00006660
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006668
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104F50), // 0x00006670
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00006678
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00006680
	gsDPSetPrimColor(0, 0, 214, 200, 130, 255), // 0x00006688
	gsSPVertex(_spot20_room_0_vertices_000064A8, 12, 0), // 0x00006690
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006698
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000066A0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000066A8
	gsSPEndDisplayList(), // 0x000066B0
};

Gfx _spot20_room_0_dlist_000066B8[] =
{
	gsSPDisplayList(_spot20_room_0_dlist_000062D0), // 0x000066B8
	gsSPDisplayList(_spot20_room_0_dlist_000065E8), // 0x000066C0
	gsSPEndDisplayList(), // 0x000066C8
};


