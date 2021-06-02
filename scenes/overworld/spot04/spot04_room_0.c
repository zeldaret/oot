#include <ultra64.h>
#include <z64.h>
#include "spot04_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "spot04_scene.h"



SCmdAltHeaders _spot04_room_0_set0000_cmd00 = { 0x18, 0, (u32)&_spot04_room_0_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _spot04_room_0_set0000_cmd01 = { 0x16, 0, { 0 }, 0x01 }; // 0x0008
SCmdRoomBehavior _spot04_room_0_set0000_cmd02 = { 0x08, 0x00, 0x00000000 }; // 0x0010
SCmdSkyboxDisables _spot04_room_0_set0000_cmd03 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0018
SCmdTimeSettings _spot04_room_0_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0020
SCmdMesh _spot04_room_0_set0000_cmd05 = { 0x0A, 0, (u32)&_spot04_room_0_meshHeader_00000580 }; // 0x0028
SCmdObjectList _spot04_room_0_set0000_cmd06 = { 0x0B, 0x0B, (u32)_spot04_room_0_objectList_0000007C }; // 0x0030
SCmdActorList _spot04_room_0_set0000_cmd07 = { 0x01, 0x4E, (u32)_spot04_room_0_actorList_00000094 }; // 0x0038
SCmdEndMarker _spot04_room_0_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _spot04_room_0_alternateHeaders_00000048[] = 
{
	0,
	(u32)&_spot04_room_0_set06B0_cmd00,
	(u32)&_spot04_room_0_set0940_cmd00,
	(u32)&_spot04_room_0_set0BA0_cmd00,
	(u32)&_spot04_room_0_set0BD0_cmd00,
	(u32)&_spot04_room_0_set0C00_cmd00,
	(u32)&_spot04_room_0_set0C30_cmd00,
	(u32)&_spot04_room_0_set0E60_cmd00,
	(u32)&_spot04_room_0_set0ED0_cmd00,
	(u32)&_spot04_room_0_set0F40_cmd00,
	(u32)&_spot04_room_0_set0F80_cmd00,
	(u32)&_spot04_room_0_set11F0_cmd00,
	(u32)&_spot04_room_0_set1240_cmd00,
};

s16 _spot04_room_0_objectList_0000007C[] = 
{
	OBJECT_KANBAN,
	OBJECT_GS,
	OBJECT_MAMENOKI,
	OBJECT_KM1,
	OBJECT_KW1,
	OBJECT_OS_ANIME,
	OBJECT_MD,
	OBJECT_SA,
	OBJECT_GI_HEART,
	OBJECT_ST,
	OBJECT_FA,
};

ActorEntry _spot04_room_0_actorList_00000094[78] = 
{
	{ ACTOR_EN_RIVER_SOUND, 398, -29, -483, 0, 0, 0, 0x0001 }, //0x00000094 
	{ ACTOR_EN_ITEM00, -537, 1, 194, 0, 0, 182, 0x2400 }, //0x000000A4 
	{ ACTOR_EN_ITEM00, -459, 1, 181, 0, 0, 0, 0x2700 }, //0x000000B4 
	{ ACTOR_EN_ITEM00, 35, 1, -418, 0, 0, 0, 0x2500 }, //0x000000C4 
	{ ACTOR_EN_ITEM00, 107, 1, -418, 0, 0, 0, 0x2600 }, //0x000000D4 
	{ ACTOR_EN_ITEM00, -364, 53, -783, 0, 0, 0, 0x1201 }, //0x000000E4 
	{ ACTOR_EN_ITEM00, 2, 180, -45, 0, 0, 0, 0x1101 }, //0x000000F4 
	{ ACTOR_OBJECT_KANKYO, 355, 1, -150, 0, 0, 0, 0x0000 }, //0x00000104 
	{ ACTOR_EN_KO, -292, 0, -430, 0, 0, 0, 0xFF00 }, //0x00000114 
	{ ACTOR_EN_KO, 45, 0, -272, 0, 0, 0, 0xFF01 }, //0x00000124 
	{ ACTOR_EN_KO, -608, 120, 1022, 0, -24576, 0, 0xFF02 }, //0x00000134 
	{ ACTOR_EN_KO, -1472, -80, -294, 0, 16384, 0, 0x0003 }, //0x00000144 
	{ ACTOR_EN_KO, 669, 0, 521, 0, -30948, 0, 0xFF04 }, //0x00000154 
	{ ACTOR_EN_KO, 853, 100, -311, 0, 0, 0, 0xFF05 }, //0x00000164 
	{ ACTOR_EN_KO, -678, 1, -179, 0, 14199, 0, 0xFF06 }, //0x00000174 
	{ ACTOR_EN_GS, -622, 380, -1223, 0, 16384, 0, 0x381E }, //0x00000184 
	{ ACTOR_EN_KO, -10, 180, -22, 0, 12379, 0, 0xFF0C }, //0x00000194 
	{ ACTOR_EN_MD, 1522, 0, 105, 0, -17476, 0, 0x0100 }, //0x000001A4 
	{ ACTOR_DOOR_ANA, -512, 380, -1224, 0, 16384, 0, 0x012C }, //0x000001B4 
	{ ACTOR_EN_ITEM00, 451, 200, 810, 0, 0, 0, 0x1C03 }, //0x000001C4 
	{ ACTOR_EN_ITEM00, 509, 205, 725, 0, 0, 0, 0x1E03 }, //0x000001D4 
	{ ACTOR_EN_ITEM00, 567, 212, 819, 0, 0, 0, 0x1D03 }, //0x000001E4 
	{ ACTOR_EN_A_OBJ, -1008, 120, 479, 0, 23666, 0, 0x3D0A }, //0x000001F4 
	{ ACTOR_EN_A_OBJ, -924, 120, 928, 0, 13471, 0, 0x430A }, //0x00000204 
	{ ACTOR_EN_A_OBJ, -779, 121, 424, 0, -13653, 0, 0x100A }, //0x00000214 
	{ ACTOR_EN_A_OBJ, -512, 0, -459, 0, 6736, 0, 0x3C0A }, //0x00000224 
	{ ACTOR_EN_A_OBJ, -170, 380, -1335, 0, 27489, 0, 0x140A }, //0x00000234 
	{ ACTOR_EN_A_OBJ, 436, 0, 601, 0, -9648, 0, 0x3F0A }, //0x00000244 
	{ ACTOR_EN_A_OBJ, 728, 0, -195, 0, 7282, 0, 0x1E0A }, //0x00000254 
	{ ACTOR_EN_A_OBJ, 1089, 0, 473, 0, -21845, 0, 0x3E0A }, //0x00000264 
	{ ACTOR_EN_SW, -1307, 153, 401, 0, -12925, 0, 0xAD02 }, //0x00000274 
	{ ACTOR_OBJ_MAKEKINSUTA, 1190, 0, -480, 0, 0, 0, 0x4D01 }, //0x00000284 
	{ ACTOR_EN_WONDER_ITEM, -488, 140, 600, 0, -19843, 0, 0x1A53 }, //0x00000294 
	{ ACTOR_EN_WONDER_ITEM, 1074, 0, 178, 0, 0, 2, 0x2A63 }, //0x000002A4 
	{ ACTOR_EN_WONDER_ITEM, 1069, 0, 406, 0, 0, 0, 0x37E3 }, //0x000002B4 
	{ ACTOR_EN_WONDER_ITEM, 1074, 0, -80, 0, 0, 1, 0x37E3 }, //0x000002C4 
	{ ACTOR_EN_WONDER_ITEM, 188, 3, -198, 0, 0, 1, 0x0FE0 }, //0x000002D4 
	{ ACTOR_EN_WONDER_ITEM, 548, 3, -158, 0, 0, 0, 0x0FE0 }, //0x000002E4 
	{ ACTOR_EN_WONDER_ITEM, 364, 0, 28, 0, 0, 2, 0x0260 }, //0x000002F4 
	{ ACTOR_EN_WONDER_ITEM, -747, 165, 951, 0, 0, 1, 0x1214 }, //0x00000304 
	{ ACTOR_EN_WONDER_ITEM, -698, 166, 830, 0, 0, 1, 0x1215 }, //0x00000314 
	{ ACTOR_EN_WONDER_ITEM, -677, 166, 899, 0, 0, 1, 0x1256 }, //0x00000324 
	{ ACTOR_OBJ_HANA, -915, 120, 872, 0, 0, 0, 0x0001 }, //0x00000334 
	{ ACTOR_OBJ_HANA, -896, 120, 826, 0, 0, 0, 0x0001 }, //0x00000344 
	{ ACTOR_OBJ_HANA, -584, 120, 963, 0, 0, 0, 0x0001 }, //0x00000354 
	{ ACTOR_OBJ_HANA, -292, 0, -415, 0, 0, 0, 0x0001 }, //0x00000364 
	{ ACTOR_EN_ISHI, -1361, 120, 145, 0, 0, 0, 0x0200 }, //0x00000374 
	{ ACTOR_EN_ISHI, -672, 0, -623, 0, 0, 0, 0x0200 }, //0x00000384 
	{ ACTOR_EN_ISHI, 248, 0, 601, 0, 0, 0, 0x0200 }, //0x00000394 
	{ ACTOR_EN_ISHI, 726, 0, 961, 0, 0, 0, 0x0200 }, //0x000003A4 
	{ ACTOR_OBJ_MURE2, -292, 0, -430, 0, 0, 0, 0x0202 }, //0x000003B4 
	{ ACTOR_EN_KANBAN, -1432, -66, -426, 0, 16384, 0, 0x0320 }, //0x000003C4 
	{ ACTOR_EN_KANBAN, -845, 120, 1018, 0, -32768, 0, 0x0337 }, //0x000003D4 
	{ ACTOR_EN_KANBAN, -784, 120, 1675, 0, -32768, 0, 0x0340 }, //0x000003E4 
	{ ACTOR_EN_KANBAN, -538, 120, 718, 0, -19661, 0, 0x0338 }, //0x000003F4 
	{ ACTOR_EN_KANBAN, -494, 120, 598, 0, -19479, 0, 0x0336 }, //0x00000404 
	{ ACTOR_EN_KANBAN, 49, -80, 967, 0, -32768, 0, 0x031F }, //0x00000414 
	{ ACTOR_EN_KANBAN, 607, 0, -80, 0, 12379, 0, 0x0341 }, //0x00000424 
	{ ACTOR_EN_KANBAN, 871, 0, 311, 0, -14564, 0, 0x0312 }, //0x00000434 
	{ ACTOR_OBJ_HANA, 668, 0, 500, 0, 1820, 0, 0x0002 }, //0x00000444 
	{ ACTOR_EN_KUSA, -835, 120, 605, 0, 0, 0, 0x0200 }, //0x00000454 
	{ ACTOR_EN_KUSA, -823, 120, 666, 0, 0, 0, 0x0200 }, //0x00000464 
	{ ACTOR_EN_KUSA, -757, 120, 708, 0, 0, 0, 0x0200 }, //0x00000474 
	{ ACTOR_EN_KUSA, -748, 120, 632, 0, 0, 0, 0x0200 }, //0x00000484 
	{ ACTOR_EN_KUSA, -671, 120, 671, 0, 0, 0, 0x0200 }, //0x00000494 
	{ ACTOR_EN_KUSA, -612, 120, 737, 0, 0, 0, 0x0200 }, //0x000004A4 
	{ ACTOR_EN_KUSA, -523, 120, 771, 0, 0, 0, 0x0200 }, //0x000004B4 
	{ ACTOR_EN_KUSA, -498, 120, 696, 0, 0, 0, 0x0200 }, //0x000004C4 
	{ ACTOR_EN_KUSA, 385, 0, 643, 0, 0, 0, 0x0200 }, //0x000004D4 
	{ ACTOR_EN_KUSA, 572, 0, 603, 0, 0, 0, 0x0200 }, //0x000004E4 
	{ ACTOR_EN_KUSA, 594, 0, 542, 0, 0, 0, 0x0200 }, //0x000004F4 
	{ ACTOR_EN_KUSA, 678, 0, 596, 0, 0, 0, 0x0200 }, //0x00000504 
	{ ACTOR_EN_SA, 18, -80, 873, 0, -7282, 0, 0x0000 }, //0x00000514 
	{ ACTOR_OBJ_BEAN, 1190, 0, -480, 0, 0, 0, 0x1F09 }, //0x00000524 
	{ ACTOR_EN_WONDER_TALK2, 861, 34, -340, 0, 0, 3, 0x461F }, //0x00000534 
	{ ACTOR_EN_WONDER_TALK2, -915, 130, 872, 0, 11833, 0, 0xFFFF }, //0x00000544 
	{ ACTOR_EN_WONDER_TALK2, -896, 130, 826, 0, 11833, 0, 0xFFFF }, //0x00000554 
	{ ACTOR_EN_WONDER_TALK2, -584, 130, 963, 0, -20025, 40, 0xFFFF }, //0x00000564 
};

static u32 pad574 = 0;
static u32 pad578 = 0;
static u32 pad57C = 0;

MeshHeader2 _spot04_room_0_meshHeader_00000580 = { { 2 }, 0x12, (u32)&_spot04_room_0_meshDListEntry_0000058C, (u32)&(_spot04_room_0_meshDListEntry_0000058C) + sizeof(_spot04_room_0_meshDListEntry_0000058C) };

MeshEntry2 _spot04_room_0_meshDListEntry_0000058C[18] = 
{
	{ 1134, 174, 603, 307, (u32)_spot04_room_0_dlist_00008ED8, 0 },
	{ -29, 60, 296, 1207, 0, (u32)_spot04_room_0_dlist_000187F0 },
	{ -11, 137, 1274, 420, (u32)_spot04_room_0_dlist_00007A20, (u32)_spot04_room_0_dlist_00018490 },
	{ -450, 149, -663, 217, (u32)_spot04_room_0_dlist_00008638, 0 },
	{ -1132, 237, 729, 755, (u32)_spot04_room_0_dlist_0000A080, 0 },
	{ 747, 131, -60, 831, 0, (u32)_spot04_room_0_dlist_00017BD0 },
	{ 704, 306, 175, 2570, (u32)_spot04_room_0_dlist_00004860, (u32)_spot04_room_0_dlist_00018048 },
	{ 615, 692, -632, 3590, (u32)_spot04_room_0_dlist_0000AE90, 0 },
	{ 677, 255, 135, 2381, (u32)_spot04_room_0_dlist_00002A10, 0 },
	{ -151, 14, -117, 577, (u32)_spot04_room_0_dlist_00005A80, 0 },
	{ -604, 180, 803, 446, (u32)_spot04_room_0_dlist_0000B280, 0 },
	{ -80, 205, -149, 1378, (u32)_spot04_room_0_dlist_0000B8F8, (u32)_spot04_room_0_dlist_000189A8 },
	{ 2026, 140, -193, 675, (u32)_spot04_room_0_dlist_0000BD98, 0 },
	{ -1265, 250, -1226, 1459, (u32)_spot04_room_0_dlist_00006280, 0 },
	{ 276, 58, -39, 358, (u32)_spot04_room_0_dlist_00006C10, 0 },
	{ 503, 145, 784, 283, (u32)_spot04_room_0_dlist_00009740, 0 },
	{ 817, 92, -503, 421, (u32)_spot04_room_0_dlist_0000A808, 0 },
	{ 3963, 1191, -1473, 1796, (u32)_spot04_room_0_dlist_000055C0, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

SCmdEchoSettings _spot04_room_0_set06B0_cmd00 = { 0x16, 0, { 0 }, 0x01 }; // 0x06B0
SCmdRoomBehavior _spot04_room_0_set06B0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x06B8
SCmdSkyboxDisables _spot04_room_0_set06B0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x06C0
SCmdTimeSettings _spot04_room_0_set06B0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x06C8
SCmdMesh _spot04_room_0_set06B0_cmd04 = { 0x0A, 0, (u32)&_spot04_room_0_meshHeader_00000580 }; // 0x06D0
SCmdObjectList _spot04_room_0_set06B0_cmd05 = { 0x0B, 0x07, (u32)_spot04_room_0_objectList_000006F0 }; // 0x06D8
SCmdActorList _spot04_room_0_set06B0_cmd06 = { 0x01, 0x24, (u32)_spot04_room_0_actorList_00000700 }; // 0x06E0
SCmdEndMarker _spot04_room_0_set06B0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x06E8
s16 _spot04_room_0_objectList_000006F0[] = 
{
	OBJECT_DEKUBABA,
	OBJECT_GS,
	OBJECT_KANBAN,
	OBJECT_ST,
	OBJECT_OKUTA,
	OBJECT_DEKUNUTS,
	OBJECT_MAMENOKI,
};

ActorEntry _spot04_room_0_actorList_00000700[36] = 
{
	{ ACTOR_OBJECT_KANKYO, 355, 1, -150, 0, 0, 0, 0x0000 }, //0x00000700 
	{ ACTOR_EN_OKUTA, 383, -12, -315, 0, 0, 0, 0xFF00 }, //0x00000710 
	{ ACTOR_EN_OKUTA, 968, -12, 72, 0, 0, 0, 0xFF00 }, //0x00000720 
	{ ACTOR_EN_ST, 1836, 105, 135, 0, -16384, 0, 0x0001 }, //0x00000730 
	{ ACTOR_EN_DEKUNUTS, -619, 1, -200, 0, 0, 0, 0xFF00 }, //0x00000740 
	{ ACTOR_EN_DEKUNUTS, 62, 1, 258, 0, 0, 0, 0xFF00 }, //0x00000750 
	{ ACTOR_EN_DEKUNUTS, 370, 320, -832, 0, 0, 0, 0xFF00 }, //0x00000760 
	{ ACTOR_EN_DEKUBABA, -1164, -47, -119, 0, 0, 0, 0x0001 }, //0x00000770 
	{ ACTOR_EN_DEKUBABA, -756, 120, 522, 0, 0, 0, 0x0001 }, //0x00000780 
	{ ACTOR_EN_DEKUBABA, -154, -80, 852, 0, 0, 0, 0x0001 }, //0x00000790 
	{ ACTOR_EN_DEKUBABA, 1427, 0, 94, 0, 0, 0, 0x0001 }, //0x000007A0 
	{ ACTOR_OBJ_MURE3, 1304, 240, -548, 0, 0, 0, 0x40FF }, //0x000007B0 
	{ ACTOR_OBJ_BEAN, 1190, 0, -480, 0, 0, 1, 0x0009 }, //0x000007C0 
	{ ACTOR_DOOR_ANA, -512, 380, -1224, 0, 16384, 0, 0x012C }, //0x000007D0 
	{ ACTOR_OBJ_MURE2, -292, 0, -430, 0, 0, 0, 0x0702 }, //0x000007E0 
	{ ACTOR_EN_KUSA, -867, 120, 674, 0, 0, 0, 0x0700 }, //0x000007F0 
	{ ACTOR_EN_KUSA, -842, 120, 601, 0, 0, 0, 0x0700 }, //0x00000800 
	{ ACTOR_EN_KUSA, -822, 120, 644, 0, 0, 0, 0x0700 }, //0x00000810 
	{ ACTOR_EN_KUSA, -805, 120, 691, 0, 0, 0, 0x0700 }, //0x00000820 
	{ ACTOR_EN_KUSA, -785, 120, 611, 0, 0, 0, 0x0700 }, //0x00000830 
	{ ACTOR_EN_KUSA, -772, 120, 654, 0, 0, 0, 0x0700 }, //0x00000840 
	{ ACTOR_EN_KUSA, -523, 120, 771, 0, 0, 0, 0x0700 }, //0x00000850 
	{ ACTOR_EN_KUSA, -498, 120, 696, 0, 0, 0, 0x0700 }, //0x00000860 
	{ ACTOR_OBJ_MURE2, 797, 0, 643, 0, 0, 0, 0x0701 }, //0x00000870 
	{ ACTOR_EN_GS, -622, 380, -1223, 0, 16384, 0, 0x381E }, //0x00000880 
	{ ACTOR_EN_SW, 1153, 251, 625, 16384, -5825, 0, 0xAD04 }, //0x00000890 
	{ ACTOR_EN_KANBAN, 871, 0, 311, 0, -14564, 0, 0x0312 }, //0x000008A0 
	{ ACTOR_EN_A_OBJ, 728, 0, -195, 0, 7282, 0, 0x1E0A }, //0x000008B0 
	{ ACTOR_EN_KANBAN, 49, -80, 967, 0, -32768, 0, 0x031F }, //0x000008C0 
	{ ACTOR_EN_KANBAN, -1432, -66, -426, 0, 16384, 0, 0x0320 }, //0x000008D0 
	{ ACTOR_EN_A_OBJ, -512, 0, -459, 0, 6736, 0, 0x3C0A }, //0x000008E0 
	{ ACTOR_EN_A_OBJ, -1008, 120, 479, 0, 23666, 0, 0x3D0A }, //0x000008F0 
	{ ACTOR_EN_A_OBJ, 1089, 0, 473, 0, -21845, 0, 0x3E0A }, //0x00000900 
	{ ACTOR_EN_A_OBJ, 436, 0, 601, 0, -9648, 0, 0x3F0A }, //0x00000910 
	{ ACTOR_EN_KANBAN, 607, 0, -80, 0, 12379, 0, 0x0341 }, //0x00000920 
	{ ACTOR_EN_RIVER_SOUND, 398, -29, -483, 0, 0, 0, 0x0001 }, //0x00000930 
};


SCmdEchoSettings _spot04_room_0_set0940_cmd00 = { 0x16, 0, { 0 }, 0x01 }; // 0x0940
SCmdRoomBehavior _spot04_room_0_set0940_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0948
SCmdSkyboxDisables _spot04_room_0_set0940_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0950
SCmdTimeSettings _spot04_room_0_set0940_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0958
SCmdMesh _spot04_room_0_set0940_cmd04 = { 0x0A, 0, (u32)&_spot04_room_0_meshHeader_00000580 }; // 0x0960
SCmdObjectList _spot04_room_0_set0940_cmd05 = { 0x0B, 0x07, (u32)_spot04_room_0_objectList_00000980 }; // 0x0968
SCmdActorList _spot04_room_0_set0940_cmd06 = { 0x01, 0x21, (u32)_spot04_room_0_actorList_00000990 }; // 0x0970
SCmdEndMarker _spot04_room_0_set0940_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0978
s16 _spot04_room_0_objectList_00000980[] = 
{
	OBJECT_GS,
	OBJECT_KANBAN,
	OBJECT_MAMENOKI,
	OBJECT_KM1,
	OBJECT_KW1,
	OBJECT_OS_ANIME,
	OBJECT_ST,
};

ActorEntry _spot04_room_0_actorList_00000990[33] = 
{
	{ ACTOR_OBJECT_KANKYO, 355, 1, -150, 0, 0, 0, 0x0000 }, //0x00000990 
	{ ACTOR_EN_KO, -292, 0, -430, 0, 0, 0, 0xFF00 }, //0x000009A0 
	{ ACTOR_EN_KO, 45, 0, -272, 0, 0, 0, 0xFF01 }, //0x000009B0 
	{ ACTOR_EN_KO, -608, 120, 1022, 0, -24576, 0, 0xFF02 }, //0x000009C0 
	{ ACTOR_EN_KO, -1415, -74, -108, 0, 16384, 0, 0xFF03 }, //0x000009D0 
	{ ACTOR_EN_KO, 669, 0, 521, 0, -30948, 0, 0xFF04 }, //0x000009E0 
	{ ACTOR_EN_KO, 853, 100, -311, 0, 0, 0, 0xFF05 }, //0x000009F0 
	{ ACTOR_EN_KO, -678, 1, -179, 0, 14199, 0, 0xFF06 }, //0x00000A00 
	{ ACTOR_EN_GS, -622, 380, -1223, 0, 16384, 0, 0x381E }, //0x00000A10 
	{ ACTOR_OBJ_MURE3, 1304, 240, -548, 0, 0, 0, 0x40FF }, //0x00000A20 
	{ ACTOR_DOOR_ANA, -512, 380, -1224, 0, 16384, 0, 0x012C }, //0x00000A30 
	{ ACTOR_EN_A_OBJ, 728, 0, -195, 0, 7282, 0, 0x1E0A }, //0x00000A40 
	{ ACTOR_EN_A_OBJ, -512, 0, -459, 0, 6736, 0, 0x3C0A }, //0x00000A50 
	{ ACTOR_EN_A_OBJ, -1008, 120, 479, 0, 23666, 0, 0x3D0A }, //0x00000A60 
	{ ACTOR_EN_A_OBJ, 1089, 0, 473, 0, -21845, 0, 0x3E0A }, //0x00000A70 
	{ ACTOR_EN_A_OBJ, 436, 0, 601, 0, -9648, 0, 0x3F0A }, //0x00000A80 
	{ ACTOR_EN_SW, 1153, 251, 625, 16384, -5825, 0, 0xAD04 }, //0x00000A90 
	{ ACTOR_OBJ_MURE2, -292, 0, -430, 0, 0, 0, 0x0702 }, //0x00000AA0 
	{ ACTOR_EN_KANBAN, 871, 0, 311, 0, -14564, 0, 0x0312 }, //0x00000AB0 
	{ ACTOR_EN_KANBAN, 49, -80, 967, 0, -32768, 0, 0x031F }, //0x00000AC0 
	{ ACTOR_EN_KANBAN, -1432, -66, -426, 0, 16384, 0, 0x0320 }, //0x00000AD0 
	{ ACTOR_EN_KANBAN, 607, 0, -80, 0, 12379, 0, 0x0341 }, //0x00000AE0 
	{ ACTOR_EN_KUSA, -498, 120, 696, 0, 0, 0, 0x0700 }, //0x00000AF0 
	{ ACTOR_EN_KUSA, -523, 120, 771, 0, 0, 0, 0x0700 }, //0x00000B00 
	{ ACTOR_EN_KUSA, -772, 120, 654, 0, 0, 0, 0x0700 }, //0x00000B10 
	{ ACTOR_EN_KUSA, -785, 120, 611, 0, 0, 0, 0x0700 }, //0x00000B20 
	{ ACTOR_EN_KUSA, -805, 120, 691, 0, 0, 0, 0x0700 }, //0x00000B30 
	{ ACTOR_EN_KUSA, -822, 120, 644, 0, 0, 0, 0x0700 }, //0x00000B40 
	{ ACTOR_EN_KUSA, -842, 120, 601, 0, 0, 0, 0x0700 }, //0x00000B50 
	{ ACTOR_EN_KUSA, -867, 120, 674, 0, 0, 0, 0x0700 }, //0x00000B60 
	{ ACTOR_OBJ_MURE2, 797, 0, 643, 0, 0, 0, 0x0701 }, //0x00000B70 
	{ ACTOR_OBJ_BEAN, 1190, 0, -480, 0, 0, 1, 0x0009 }, //0x00000B80 
	{ ACTOR_EN_RIVER_SOUND, 398, -29, -483, 0, 0, 0, 0x0001 }, //0x00000B90 
};


SCmdEchoSettings _spot04_room_0_set0BA0_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0BA0
SCmdRoomBehavior _spot04_room_0_set0BA0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0BA8
SCmdSkyboxDisables _spot04_room_0_set0BA0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0BB0
SCmdTimeSettings _spot04_room_0_set0BA0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00 }; // 0x0BB8
SCmdMesh _spot04_room_0_set0BA0_cmd04 = { 0x0A, 0, (u32)&_spot04_room_0_meshHeader_00000580 }; // 0x0BC0
SCmdEndMarker _spot04_room_0_set0BA0_cmd05 = { 0x14, 0x00, 0x00 }; // 0x0BC8
SCmdEchoSettings _spot04_room_0_set0BD0_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0BD0
SCmdRoomBehavior _spot04_room_0_set0BD0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0BD8
SCmdSkyboxDisables _spot04_room_0_set0BD0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0BE0
SCmdTimeSettings _spot04_room_0_set0BD0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00 }; // 0x0BE8
SCmdMesh _spot04_room_0_set0BD0_cmd04 = { 0x0A, 0, (u32)&_spot04_room_0_meshHeader_00000580 }; // 0x0BF0
SCmdEndMarker _spot04_room_0_set0BD0_cmd05 = { 0x14, 0x00, 0x00 }; // 0x0BF8
SCmdEchoSettings _spot04_room_0_set0C00_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0C00
SCmdRoomBehavior _spot04_room_0_set0C00_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0C08
SCmdSkyboxDisables _spot04_room_0_set0C00_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0C10
SCmdTimeSettings _spot04_room_0_set0C00_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00 }; // 0x0C18
SCmdMesh _spot04_room_0_set0C00_cmd04 = { 0x0A, 0, (u32)&_spot04_room_0_meshHeader_00000580 }; // 0x0C20
SCmdEndMarker _spot04_room_0_set0C00_cmd05 = { 0x14, 0x00, 0x00 }; // 0x0C28
SCmdEchoSettings _spot04_room_0_set0C30_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0C30
SCmdRoomBehavior _spot04_room_0_set0C30_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0C38
SCmdSkyboxDisables _spot04_room_0_set0C30_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0C40
SCmdTimeSettings _spot04_room_0_set0C30_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00 }; // 0x0C48
SCmdMesh _spot04_room_0_set0C30_cmd04 = { 0x0A, 0, (u32)&_spot04_room_0_meshHeader_00000580 }; // 0x0C50
SCmdObjectList _spot04_room_0_set0C30_cmd05 = { 0x0B, 0x06, (u32)_spot04_room_0_objectList_00000C70 }; // 0x0C58
SCmdActorList _spot04_room_0_set0C30_cmd06 = { 0x01, 0x1E, (u32)_spot04_room_0_actorList_00000C7C }; // 0x0C60
SCmdEndMarker _spot04_room_0_set0C30_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0C68
s16 _spot04_room_0_objectList_00000C70[] = 
{
	OBJECT_SA,
	OBJECT_KM1,
	OBJECT_KW1,
	OBJECT_MD,
	OBJECT_OS_ANIME,
	OBJECT_KANBAN,
};

ActorEntry _spot04_room_0_actorList_00000C7C[30] = 
{
	{ ACTOR_OBJECT_KANKYO, 355, 1, -150, 0, 0, 0, 0x0000 }, //0x00000C7C 
	{ ACTOR_EN_KO, -340, 0, -414, 0, 0, 0, 0xFF00 }, //0x00000C8C 
	{ ACTOR_EN_KO, 62, 0, -258, 0, 1638, 0, 0xFF01 }, //0x00000C9C 
	{ ACTOR_EN_KO, -641, 120, 454, 0, 29855, 0, 0xFF02 }, //0x00000CAC 
	{ ACTOR_EN_KO, -1472, -80, -294, 0, 16384, 0, 0x0003 }, //0x00000CBC 
	{ ACTOR_EN_KO, 669, 0, 521, 0, -30948, 0, 0xFF04 }, //0x00000CCC 
	{ ACTOR_EN_KO, 853, 102, -311, 0, 0, 0, 0xFF05 }, //0x00000CDC 
	{ ACTOR_EN_KO, -638, 1, -165, 0, 25304, 0, 0xFF06 }, //0x00000CEC 
	{ ACTOR_EN_MD, 1522, 0, 105, 0, -17476, 0, 0x0100 }, //0x00000CFC 
	{ ACTOR_OBJ_MURE2, -340, 0, -414, 0, 0, 0, 0xFF02 }, //0x00000D0C 
	{ ACTOR_EN_KANBAN, -423, 380, -1354, 0, 0, 0, 0x0310 }, //0x00000D1C 
	{ ACTOR_EN_KANBAN, -713, 121, 262, 0, 30401, 0, 0x0310 }, //0x00000D2C 
	{ ACTOR_EN_KANBAN, -809, 120, 647, 0, 13471, 0, 0x0311 }, //0x00000D3C 
	{ ACTOR_EN_KANBAN, 857, 0, 282, 0, -14564, 0, 0x0312 }, //0x00000D4C 
	{ ACTOR_EN_KANBAN, 949, 0, -223, 0, -6736, 0, 0x031E }, //0x00000D5C 
	{ ACTOR_EN_KANBAN, 49, -80, 967, 0, -32768, 0, 0x031F }, //0x00000D6C 
	{ ACTOR_EN_KANBAN, -1432, -66, -426, 0, 16384, 0, 0x0320 }, //0x00000D7C 
	{ ACTOR_EN_KANBAN, -494, 120, 598, 0, -19479, 0, 0x0336 }, //0x00000D8C 
	{ ACTOR_EN_KANBAN, -748, 120, 903, 0, 28945, 0, 0x0338 }, //0x00000D9C 
	{ ACTOR_EN_KANBAN, -520, 0, -476, 0, 0, 0, 0x033C }, //0x00000DAC 
	{ ACTOR_EN_KANBAN, -1008, 120, 479, 0, 23666, 0, 0x033D }, //0x00000DBC 
	{ ACTOR_EN_KANBAN, 1070, 0, 402, 0, -21845, 0, 0x033E }, //0x00000DCC 
	{ ACTOR_EN_KANBAN, 439, 0, 564, 0, -32768, 0, 0x033F }, //0x00000DDC 
	{ ACTOR_EN_KANBAN, 670, 0, -158, 0, 0, 0, 0x0341 }, //0x00000DEC 
	{ ACTOR_OBJ_MURE2, 797, 0, 643, 0, 0, 0, 0xFF01 }, //0x00000DFC 
	{ ACTOR_OBJ_MURE2, -761, 120, 947, 0, 0, 0, 0xFF00 }, //0x00000E0C 
	{ ACTOR_OBJ_BEAN, 1186, 0, -471, 0, 0, 0, 0x1F09 }, //0x00000E1C 
	{ ACTOR_ITEM_SHIELD, -450, 215, -555, 0, 364, 0, 0x0000 }, //0x00000E2C 
	{ ACTOR_OBJ_HANA, -340, 0, -403, 0, 0, 0, 0x0001 }, //0x00000E3C 
	{ ACTOR_EN_RIVER_SOUND, 402, -12, -491, 0, 0, 0, 0x0001 }, //0x00000E4C 
};

static u32 padE5C = 0;

SCmdEchoSettings _spot04_room_0_set0E60_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0E60
SCmdRoomBehavior _spot04_room_0_set0E60_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0E68
SCmdSkyboxDisables _spot04_room_0_set0E60_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0E70
SCmdTimeSettings _spot04_room_0_set0E60_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF }; // 0x0E78
SCmdMesh _spot04_room_0_set0E60_cmd04 = { 0x0A, 0, (u32)&_spot04_room_0_meshHeader_00000580 }; // 0x0E80
SCmdObjectList _spot04_room_0_set0E60_cmd05 = { 0x0B, 0x09, (u32)_spot04_room_0_objectList_00000EA0 }; // 0x0E88
SCmdActorList _spot04_room_0_set0E60_cmd06 = { 0x01, 0x01, (u32)_spot04_room_0_actorList_00000EB4 }; // 0x0E90
SCmdEndMarker _spot04_room_0_set0E60_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0E98
s16 _spot04_room_0_objectList_00000EA0[] = 
{
	OBJECT_SPOT04_OBJECTS,
	OBJECT_GI_JEWEL,
	OBJECT_MJIN,
	OBJECT_MJIN_OKA,
	OBJECT_SA,
	OBJECT_KM1,
	OBJECT_KW1,
	OBJECT_MD,
	OBJECT_OS_ANIME,
};

ActorEntry _spot04_room_0_actorList_00000EB4[1] = 
{
	{ ACTOR_BG_TREEMOUTH, 3882, -171, -1161, 0, 0, 0, 0xFFFF }, //0x00000EB4 
};

static u32 padEC4 = 0;
static u32 padEC8 = 0;
static u32 padECC = 0;

SCmdEchoSettings _spot04_room_0_set0ED0_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0ED0
SCmdRoomBehavior _spot04_room_0_set0ED0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0ED8
SCmdSkyboxDisables _spot04_room_0_set0ED0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0EE0
SCmdTimeSettings _spot04_room_0_set0ED0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF }; // 0x0EE8
SCmdMesh _spot04_room_0_set0ED0_cmd04 = { 0x0A, 0, (u32)&_spot04_room_0_meshHeader_00000580 }; // 0x0EF0
SCmdObjectList _spot04_room_0_set0ED0_cmd05 = { 0x0B, 0x09, (u32)_spot04_room_0_objectList_00000F10 }; // 0x0EF8
SCmdActorList _spot04_room_0_set0ED0_cmd06 = { 0x01, 0x01, (u32)_spot04_room_0_actorList_00000F24 }; // 0x0F00
SCmdEndMarker _spot04_room_0_set0ED0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0F08
s16 _spot04_room_0_objectList_00000F10[] = 
{
	OBJECT_SPOT04_OBJECTS,
	OBJECT_GI_JEWEL,
	OBJECT_MJIN,
	OBJECT_MJIN_OKA,
	OBJECT_SA,
	OBJECT_KM1,
	OBJECT_KW1,
	OBJECT_MD,
	OBJECT_OS_ANIME,
};

ActorEntry _spot04_room_0_actorList_00000F24[1] = 
{
	{ ACTOR_BG_TREEMOUTH, 3882, -171, -1161, 0, 0, 0, 0xFFFF }, //0x00000F24 
};

static u32 padF34 = 0;
static u32 padF38 = 0;
static u32 padF3C = 0;

SCmdEchoSettings _spot04_room_0_set0F40_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0F40
SCmdRoomBehavior _spot04_room_0_set0F40_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0F48
SCmdSkyboxDisables _spot04_room_0_set0F40_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0F50
SCmdTimeSettings _spot04_room_0_set0F40_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF }; // 0x0F58
SCmdMesh _spot04_room_0_set0F40_cmd04 = { 0x0A, 0, (u32)&_spot04_room_0_meshHeader_00000580 }; // 0x0F60
SCmdObjectList _spot04_room_0_set0F40_cmd05 = { 0x0B, 0x01, (u32)_spot04_room_0_objectList_00000F78 }; // 0x0F68
SCmdEndMarker _spot04_room_0_set0F40_cmd06 = { 0x14, 0x00, 0x00 }; // 0x0F70
s16 _spot04_room_0_objectList_00000F78[] = 
{
	OBJECT_SPOT04_OBJECTS,
};

static u8 unaccounted0F7C[] = 
{
	0x00, 0x00, 0x00, 0x00, 
};

SCmdEchoSettings _spot04_room_0_set0F80_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0F80
SCmdRoomBehavior _spot04_room_0_set0F80_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0F88
SCmdSkyboxDisables _spot04_room_0_set0F80_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0F90
SCmdTimeSettings _spot04_room_0_set0F80_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF }; // 0x0F98
SCmdMesh _spot04_room_0_set0F80_cmd04 = { 0x0A, 0, (u32)&_spot04_room_0_meshHeader_00000580 }; // 0x0FA0
SCmdObjectList _spot04_room_0_set0F80_cmd05 = { 0x0B, 0x03, (u32)_spot04_room_0_objectList_00000FC0 }; // 0x0FA8
SCmdActorList _spot04_room_0_set0F80_cmd06 = { 0x01, 0x22, (u32)_spot04_room_0_actorList_00000FC8 }; // 0x0FB0
SCmdEndMarker _spot04_room_0_set0F80_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0FB8
s16 _spot04_room_0_objectList_00000FC0[] = 
{
	OBJECT_SPOT04_OBJECTS,
	OBJECT_WOOD02,
	OBJECT_KANBAN,
};

ActorEntry _spot04_room_0_actorList_00000FC8[34] = 
{
	{ ACTOR_OBJECT_KANKYO, -29, 1, 216, 0, 0, 0, 0x0000 }, //0x00000FC8 
	{ ACTOR_EN_ISHI, -542, 126, 466, 0, 0, 0, 0x0700 }, //0x00000FD8 
	{ ACTOR_EN_ISHI, 974, 0, 513, 0, 0, 0, 0x0700 }, //0x00000FE8 
	{ ACTOR_EN_ISHI, 950, 0, 465, 0, 0, 0, 0x0700 }, //0x00000FF8 
	{ ACTOR_EN_ISHI, 926, 0, 418, 0, 0, 0, 0x0700 }, //0x00001008 
	{ ACTOR_EN_ISHI, 1048, 0, 476, 0, 0, 0, 0x0700 }, //0x00001018 
	{ ACTOR_EN_ISHI, 1029, 0, 430, 0, 0, 0, 0x0700 }, //0x00001028 
	{ ACTOR_EN_ISHI, 1008, 0, 389, 0, 0, 0, 0x0700 }, //0x00001038 
	{ ACTOR_OBJ_MURE2, 862, 0, 677, 0, 0, 0, 0x0702 }, //0x00001048 
	{ ACTOR_OBJ_MURE2, 646, 6, 53, 0, 0, 0, 0x0702 }, //0x00001058 
	{ ACTOR_OBJ_MURE2, 1249, 0, 442, 0, 0, 0, 0x0702 }, //0x00001068 
	{ ACTOR_OBJ_MURE2, 1074, 0, 865, 0, 0, 0, 0x0702 }, //0x00001078 
	{ ACTOR_OBJ_MURE2, 1298, 0, 711, 0, 0, 0, 0x0702 }, //0x00001088 
	{ ACTOR_EN_KANBAN, -193, 380, -1307, 0, 0, 0, 0x0310 }, //0x00001098 
	{ ACTOR_EN_KANBAN, -617, 0, -349, 0, -10377, 0, 0x0311 }, //0x000010A8 
	{ ACTOR_EN_KANBAN, -424, 120, 534, 0, -31312, 0, 0x0311 }, //0x000010B8 
	{ ACTOR_EN_KANBAN, -977, 120, 319, 0, 12743, 0, 0x0311 }, //0x000010C8 
	{ ACTOR_EN_KANBAN, 1420, 0, 21, 0, -12743, 0, 0x0312 }, //0x000010D8 
	{ ACTOR_EN_KANBAN, 661, 0, -101, 0, 0, 0, 0x031E }, //0x000010E8 
	{ ACTOR_EN_KANBAN, 112, -80, 780, 0, -21845, 0, 0x031F }, //0x000010F8 
	{ ACTOR_EN_KANBAN, -1432, -66, -426, 0, 16384, 0, 0x0320 }, //0x00001108 
	{ ACTOR_EN_KUSA, -1020, 120, 455, 0, 0, 0, 0x0700 }, //0x00001118 
	{ ACTOR_EN_KUSA, 450, 0, 617, 0, 0, 0, 0x0700 }, //0x00001128 
	{ ACTOR_EN_KUSA, 563, 0, 612, 0, 0, 0, 0x0700 }, //0x00001138 
	{ ACTOR_EN_KUSA, 393, 0, 593, 0, 0, 0, 0x0700 }, //0x00001148 
	{ ACTOR_EN_KUSA, 603, 0, 559, 0, 0, 0, 0x0700 }, //0x00001158 
	{ ACTOR_OBJ_MURE2, 1123, 0, -345, 0, 0, 0, 0x0701 }, //0x00001168 
	{ ACTOR_OBJ_MURE2, -220, 0, -526, 0, 0, 0, 0x0701 }, //0x00001178 
	{ ACTOR_OBJ_MURE2, 265, 0, 735, 0, 0, 0, 0x0701 }, //0x00001188 
	{ ACTOR_OBJ_MURE2, -291, -80, 1163, 0, 0, 0, 0x0701 }, //0x00001198 
	{ ACTOR_OBJ_MURE2, 369, 0, 983, 0, 0, 0, 0x0701 }, //0x000011A8 
	{ ACTOR_OBJ_MURE2, 679, 0, 980, 0, 0, 0, 0x0701 }, //0x000011B8 
	{ ACTOR_OBJ_MURE2, 736, 0, 711, 0, 0, 0, 0x0701 }, //0x000011C8 
	{ ACTOR_OBJ_MURE2, 444, 320, -925, 0, 0, 0, 0x0701 }, //0x000011D8 
};

static u32 pad11E8 = 0;
static u32 pad11EC = 0;

SCmdEchoSettings _spot04_room_0_set11F0_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x11F0
SCmdRoomBehavior _spot04_room_0_set11F0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x11F8
SCmdSkyboxDisables _spot04_room_0_set11F0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x1200
SCmdTimeSettings _spot04_room_0_set11F0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00 }; // 0x1208
SCmdMesh _spot04_room_0_set11F0_cmd04 = { 0x0A, 0, (u32)&_spot04_room_0_meshHeader_00000580 }; // 0x1210
SCmdObjectList _spot04_room_0_set11F0_cmd05 = { 0x0B, 0x05, (u32)_spot04_room_0_objectList_00001228 }; // 0x1218
SCmdEndMarker _spot04_room_0_set11F0_cmd06 = { 0x14, 0x00, 0x00 }; // 0x1220
s16 _spot04_room_0_objectList_00001228[] = 
{
	OBJECT_SPOT04_OBJECTS,
	OBJECT_OS_ANIME,
	OBJECT_KM1,
	OBJECT_KW1,
	OBJECT_KANBAN,
};

static u8 unaccounted1234[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SCmdEchoSettings _spot04_room_0_set1240_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x1240
SCmdRoomBehavior _spot04_room_0_set1240_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x1248
SCmdSkyboxDisables _spot04_room_0_set1240_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x1250
SCmdTimeSettings _spot04_room_0_set1240_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF }; // 0x1258
SCmdMesh _spot04_room_0_set1240_cmd04 = { 0x0A, 0, (u32)&_spot04_room_0_meshHeader_00000580 }; // 0x1260
SCmdEndMarker _spot04_room_0_set1240_cmd05 = { 0x14, 0x00, 0x00 }; // 0x1268
Vtx_t _spot04_room_0_vertices_00001270[12] = 
{
	 { 320, 0, 1240, 0, 8192, 1024, 170, 34, 180, 255 }, // 0x00001270
	 { 320, 200, 1240, 0, 8192, 0, 234, 110, 216, 255 }, // 0x00001280
	 { 1392, 200, 876, 0, 0, 0, 214, 112, 254, 255 }, // 0x00001290
	 { 1392, 0, 876, 0, 0, 1024, 234, 116, 240, 255 }, // 0x000012A0
	 { -40, -80, 1520, 0, 3072, 1024, 6, 66, 157, 255 }, // 0x000012B0
	 { -40, 200, 1520, 0, 3072, 0, 14, 71, 161, 255 }, // 0x000012C0
	 { 320, 0, 1240, 0, 0, 731, 170, 34, 180, 255 }, // 0x000012D0
	 { 320, -80, 1240, 0, 0, 1024, 158, 62, 226, 255 }, // 0x000012E0
	 { -400, -80, 1160, 0, 3072, 1024, 100, 63, 240, 255 }, // 0x000012F0
	 { -400, 120, 1160, 0, 3072, 455, 81, 63, 195, 255 }, // 0x00001300
	 { -40, 200, 1520, 0, 0, 0, 14, 71, 161, 255 }, // 0x00001310
	 { -40, -80, 1520, 0, 0, 1024, 6, 66, 157, 255 }, // 0x00001320
};

Vtx_t _spot04_room_0_vertices_00001330[23] = 
{
	 { -200, -80, 760, 0, 2048, 512, 80, 83, 31, 255 }, // 0x00001330
	 { -200, 120, 760, 0, 2048, 0, 70, 96, 11, 255 }, // 0x00001340
	 { -400, 120, 1160, 0, 0, 0, 81, 63, 195, 255 }, // 0x00001350
	 { -400, -80, 1160, 0, 0, 512, 100, 63, 240, 255 }, // 0x00001360
	 { -200, 0, 500, 0, 2048, 512, 85, 77, 224, 255 }, // 0x00001370
	 { -200, 120, 760, 0, 0, 0, 70, 96, 11, 255 }, // 0x00001380
	 { -200, -80, 760, 0, 0, 512, 80, 83, 31, 255 }, // 0x00001390
	 { 320, -80, 1240, 0, 5120, 512, 158, 62, 226, 255 }, // 0x000013A0
	 { 320, 0, 1240, 0, 5120, 0, 170, 34, 180, 255 }, // 0x000013B0
	 { 160, 0, 760, 0, -1356, 0, 173, 85, 13, 255 }, // 0x000013C0
	 { 160, -80, 760, 0, -1356, 512, 174, 83, 26, 255 }, // 0x000013D0
	 { 160, 0, 500, 0, -4514, 0, 236, 118, 6, 255 }, // 0x000013E0
	 { -200, 120, 500, 0, 2048, 0, 95, 58, 212, 255 }, // 0x000013F0
	 { -560, 120, 200, 0, 4096, 0, 42, 107, 224, 255 }, // 0x00001400
	 { -200, 120, 500, 0, 0, 0, 95, 58, 212, 255 }, // 0x00001410
	 { -200, 0, 500, 0, 0, 512, 85, 77, 224, 255 }, // 0x00001420
	 { -1472, -80, -6, 0, 1024, 512, 94, 60, 214, 255 }, // 0x00001430
	 { -1472, 120, -6, 0, 1024, 0, 86, 79, 230, 255 }, // 0x00001440
	 { -775, 120, 173, 0, -2663, 0, 2, 117, 231, 255 }, // 0x00001450
	 { -560, 0, 200, 0, 4096, 512, 73, 90, 227, 255 }, // 0x00001460
	 { -560, 120, 200, 0, 0, 0, 42, 107, 224, 255 }, // 0x00001470
	 { -560, 0, 200, 0, 0, 512, 73, 90, 227, 255 }, // 0x00001480
	 { -520, 0, -117, 0, 3072, 0, 14, 118, 248, 255 }, // 0x00001490
};

Vtx_t _spot04_room_0_vertices_000014A0[23] = 
{
	 { -400, 120, 1160, 0, 3072, 455, 81, 63, 195, 255 }, // 0x000014A0
	 { -400, 280, 1160, 0, 3072, 0, 46, 92, 195, 255 }, // 0x000014B0
	 { -40, 200, 1520, 0, 0, 0, 14, 71, 161, 255 }, // 0x000014C0
	 { 320, 200, 1240, 0, 0, 0, 234, 110, 216, 255 }, // 0x000014D0
	 { 320, 0, 1240, 0, 0, 731, 170, 34, 180, 255 }, // 0x000014E0
	 { -40, 200, 1520, 0, 3072, 0, 14, 71, 161, 255 }, // 0x000014F0
	 { -1473, 50, -184, 0, 860, 691, 118, 3, 16, 255 }, // 0x00001500
	 { -1472, -80, -6, 0, 0, 1024, 94, 60, 214, 255 }, // 0x00001510
	 { -1473, -22, -188, 0, 879, 876, 119, 0, 0, 255 }, // 0x00001520
	 { -1473, -80, -216, 0, 1024, 1024, 119, 0, 0, 255 }, // 0x00001530
	 { -1473, 48, -405, 0, 1992, 696, 118, 5, 240, 255 }, // 0x00001540
	 { -1473, -29, -402, 0, 1973, 894, 119, 0, 0, 255 }, // 0x00001550
	 { -1472, 0, -850, 0, 3072, 1024, 93, 65, 38, 255 }, // 0x00001560
	 { -1473, -80, -368, 0, 1804, 1024, 59, 104, 5, 255 }, // 0x00001570
	 { -1472, 0, -850, 0, 3072, 1024, 93, 65, 38, 255 }, // 0x00001580
	 { -1472, 60, -850, 0, 3072, 512, 78, 24, 88, 255 }, // 0x00001590
	 { -1472, 459, -850, 0, 3072, 0, 98, 19, 66, 255 }, // 0x000015A0
	 { -1638, 356, -305, 0, 1536, 0, 106, 55, 245, 255 }, // 0x000015B0
	 { -1500, 130, -296, 0, 1433, 487, 60, 103, 247, 255 }, // 0x000015C0
	 { -1505, 100, -368, 0, 1802, 562, 81, 84, 231, 255 }, // 0x000015D0
	 { -1472, 120, -6, 0, 0, 512, 86, 79, 230, 255 }, // 0x000015E0
	 { -1490, 107, -229, 0, 1092, 545, 85, 83, 15, 255 }, // 0x000015F0
	 { -1472, 368, -6, 0, 0, 0, 117, 14, 235, 255 }, // 0x00001600
};

Vtx_t _spot04_room_0_vertices_00001610[4] = 
{
	 { -1472, 280, 850, 0, 0, 0, 86, 68, 208, 255 }, // 0x00001610
	 { -1472, 120, 850, 0, 0, 512, 61, 93, 212, 255 }, // 0x00001620
	 { -1472, 120, -6, 0, 4096, 512, 86, 79, 230, 255 }, // 0x00001630
	 { -1472, 368, -6, 0, 4119, 0, 117, 14, 235, 255 }, // 0x00001640
};

Vtx_t _spot04_room_0_vertices_00001650[3] = 
{
	 { -1472, 120, -6, 0, 0, 512, 86, 79, 230, 255 }, // 0x00001650
	 { -1473, 50, -184, 0, 860, 691, 118, 3, 16, 255 }, // 0x00001660
	 { -1472, 368, -6, 0, 0, 0, 117, 14, 235, 255 }, // 0x00001670
};

Vtx_t _spot04_room_0_vertices_00001680[10] = 
{
	 { -821, 280, 1059, 0, 2778, 0, 4, 94, 182, 255 }, // 0x00001680
	 { -821, 120, 1059, 0, 2778, 512, 6, 94, 182, 255 }, // 0x00001690
	 { -1472, 120, 850, 0, 7168, 512, 61, 93, 212, 255 }, // 0x000016A0
	 { -1472, 280, 850, 0, 7168, 0, 86, 68, 208, 255 }, // 0x000016B0
	 { -805, 155, 1059, 0, 2679, 401, 0, 0, 136, 255 }, // 0x000016C0
	 { -749, 280, 1059, 0, 2334, 0, 8, 72, 161, 255 }, // 0x000016D0
	 { -765, 159, 1059, 0, 2433, 387, 0, 0, 136, 255 }, // 0x000016E0
	 { -749, 120, 1059, 0, 2334, 512, 5, 94, 182, 255 }, // 0x000016F0
	 { -400, 120, 1160, 0, 0, 512, 81, 63, 195, 255 }, // 0x00001700
	 { -400, 280, 1160, 0, 0, 0, 46, 92, 195, 255 }, // 0x00001710
};

Vtx_t _spot04_room_0_vertices_00001720[10] = 
{
	 { 399, 274, -564, 0, 586, 134, 2, 4, 119, 255 }, // 0x00001720
	 { 420, 268, -525, 0, 670, 166, 231, 31, 113, 255 }, // 0x00001730
	 { 420, 288, -525, 0, 670, 102, 223, 221, 109, 255 }, // 0x00001740
	 { 380, 268, -524, 0, 503, 166, 28, 31, 112, 255 }, // 0x00001750
	 { 380, 288, -524, 0, 503, 102, 36, 221, 108, 255 }, // 0x00001760
	 { 504, 320, -528, 0, 1024, 0, 20, 57, 103, 255 }, // 0x00001770
	 { 420, 268, -525, 0, 670, 166, 231, 31, 113, 255 }, // 0x00001780
	 { 504, 0, -528, 0, 1024, 1024, 12, 72, 95, 255 }, // 0x00001790
	 { 259, 320, -524, 0, 0, 0, 228, 69, 93, 255 }, // 0x000017A0
	 { 259, 0, -524, 0, 0, 1024, 17, 71, 95, 255 }, // 0x000017B0
};

Vtx_t _spot04_room_0_vertices_000017C0[8] = 
{
	 { -525, 200, -935, 0, 1024, 0, 189, 90, 42, 255 }, // 0x000017C0
	 { -525, 60, -935, 0, 1024, 512, 188, 89, 41, 255 }, // 0x000017D0
	 { -269, 51, -775, 0, 0, 512, 232, 87, 78, 255 }, // 0x000017E0
	 { -269, 191, -775, 0, 0, 0, 235, 86, 80, 255 }, // 0x000017F0
	 { -284, 0, -636, 0, -1024, 512, 238, 107, 50, 255 }, // 0x00001800
	 { 118, 0, -483, 0, 2048, 512, 253, 101, 64, 255 }, // 0x00001810
	 { 118, 60, -483, 0, 2048, 0, 253, 87, 82, 255 }, // 0x00001820
	 { -284, 60, -636, 0, -1024, 0, 232, 100, 61, 255 }, // 0x00001830
};

Vtx_t _spot04_room_0_vertices_00001840[13] = 
{
	 { -204, 431, -1409, 0, 876, 388, 0, 0, 120, 255 }, // 0x00001840
	 { -237, 380, -1409, 0, 763, 512, 0, 0, 120, 255 }, // 0x00001850
	 { -160, 380, -1409, 0, 1024, 512, 253, 84, 85, 255 }, // 0x00001860
	 { -200, 508, -1409, 0, 888, 200, 32, 1, 115, 255 }, // 0x00001870
	 { -160, 590, -1409, 0, 1024, 0, 240, 23, 116, 255 }, // 0x00001880
	 { -237, 560, -1409, 0, 762, 72, 51, 65, 86, 255 }, // 0x00001890
	 { -309, 590, -1409, 0, 517, 1, 2, 82, 87, 255 }, // 0x000018A0
	 { -461, 590, -1409, 0, 0, 0, 17, 0, 118, 255 }, // 0x000018B0
	 { -376, 567, -1409, 0, 291, 56, 208, 68, 86, 255 }, // 0x000018C0
	 { -421, 510, -1409, 0, 136, 195, 232, 1, 117, 255 }, // 0x000018D0
	 { -461, 380, -1409, 0, 0, 512, 15, 55, 105, 255 }, // 0x000018E0
	 { -417, 438, -1409, 0, 149, 371, 0, 0, 120, 255 }, // 0x000018F0
	 { -389, 380, -1409, 0, 245, 512, 0, 0, 120, 255 }, // 0x00001900
};

Vtx_t _spot04_room_0_vertices_00001910[5] = 
{
	 { 1154, 400, -675, 0, 2499, 0, 227, 73, 90, 255 }, // 0x00001910
	 { 735, 480, -715, 0, 0, 0, 200, 63, 85, 255 }, // 0x00001920
	 { 735, 320, -715, 0, 0, 341, 243, 27, 116, 255 }, // 0x00001930
	 { 1154, 0, -675, 0, 2499, 1024, 207, 77, 78, 255 }, // 0x00001940
	 { 735, 0, -715, 0, 0, 1024, 18, 102, 60, 255 }, // 0x00001950
};

Vtx_t _spot04_room_0_vertices_00001960[8] = 
{
	 { 259, 60, -524, 0, 0, 0, 213, 42, 103, 255 }, // 0x00001960
	 { 118, 60, -483, 0, 1024, 0, 253, 87, 82, 255 }, // 0x00001970
	 { 118, 0, -483, 0, 1024, 512, 253, 101, 64, 255 }, // 0x00001980
	 { 259, 0, -524, 0, 0, 512, 17, 71, 95, 255 }, // 0x00001990
	 { -1472, 60, -850, 0, 0, 0, 78, 24, 88, 255 }, // 0x000019A0
	 { -1472, 0, -850, 0, 0, 512, 93, 65, 38, 255 }, // 0x000019B0
	 { -801, 0, -814, 0, 8192, 512, 240, 85, 83, 255 }, // 0x000019C0
	 { -801, 60, -814, 0, 8192, 0, 243, 100, 65, 255 }, // 0x000019D0
};

Vtx_t _spot04_room_0_vertices_000019E0[5] = 
{
	 { -836, 380, -1164, 0, 0, 341, 27, 14, 116, 255 }, // 0x000019E0
	 { -836, 580, -1164, 0, 0, 0, 59, 0, 104, 255 }, // 0x000019F0
	 { -1472, 459, -850, 0, 1024, 0, 98, 19, 66, 255 }, // 0x00001A00
	 { -1472, 60, -850, 0, 1024, 1024, 78, 24, 88, 255 }, // 0x00001A10
	 { -836, 60, -1164, 0, 0, 1024, 10, 39, 113, 255 }, // 0x00001A20
};

Vtx_t _spot04_room_0_vertices_00001A30[8] = 
{
	 { -836, 580, -1164, 0, 0, 0, 59, 0, 104, 255 }, // 0x00001A30
	 { -836, 380, -1164, 0, 0, 512, 27, 14, 116, 255 }, // 0x00001A40
	 { -461, 380, -1409, 0, 1024, 512, 15, 55, 105, 255 }, // 0x00001A50
	 { -461, 590, -1409, 0, 1024, 0, 17, 0, 118, 255 }, // 0x00001A60
	 { 500, 320, -1087, 0, 4096, 512, 206, 96, 50, 255 }, // 0x00001A70
	 { 500, 540, -1087, 0, 4096, 0, 212, 83, 74, 255 }, // 0x00001A80
	 { -160, 590, -1409, 0, 0, 0, 240, 23, 116, 255 }, // 0x00001A90
	 { -160, 380, -1409, 0, 0, 512, 253, 84, 85, 255 }, // 0x00001AA0
};

Vtx_t _spot04_room_0_vertices_00001AB0[9] = 
{
	 { 735, 480, -715, 0, 4096, 0, 200, 63, 85, 255 }, // 0x00001AB0
	 { 500, 540, -1087, 0, -3072, 0, 212, 83, 74, 255 }, // 0x00001AC0
	 { 500, 320, -1087, 0, -3072, 512, 206, 96, 50, 255 }, // 0x00001AD0
	 { 735, 320, -715, 0, 4096, 1024, 243, 27, 116, 255 }, // 0x00001AE0
	 { -539, 200, -1137, 0, 1024, 512, 225, 16, 114, 255 }, // 0x00001AF0
	 { -836, 380, -1164, 0, 0, 0, 27, 14, 116, 255 }, // 0x00001B00
	 { -836, 60, -1164, 0, 0, 1024, 10, 39, 113, 255 }, // 0x00001B10
	 { -539, 380, -1137, 0, 1024, 0, 235, 72, 93, 255 }, // 0x00001B20
	 { -539, 60, -1137, 0, 1024, 1024, 201, 46, 96, 255 }, // 0x00001B30
};

Vtx_t _spot04_room_0_vertices_00001B40[7] = 
{
	 { -539, 380, -1137, 0, 0, 0, 235, 72, 93, 255 }, // 0x00001B40
	 { -539, 200, -1137, 0, 0, 512, 225, 16, 114, 255 }, // 0x00001B50
	 { -88, 191, -966, 0, 3072, 341, 230, 92, 72, 255 }, // 0x00001B60
	 { -88, 380, -966, 0, 3072, 0, 1, 86, 83, 255 }, // 0x00001B70
	 { -88, 380, -966, 0, 1024, 0, 1, 86, 83, 255 }, // 0x00001B80
	 { -88, 191, -966, 0, 1024, 512, 230, 92, 72, 255 }, // 0x00001B90
	 { 120, 320, -988, 0, 0, 256, 241, 114, 34, 255 }, // 0x00001BA0
};

Vtx_t _spot04_room_0_vertices_00001BB0[8] = 
{
	 { -525, 60, -935, 0, 2048, 512, 188, 89, 41, 255 }, // 0x00001BB0
	 { -525, 200, -935, 0, 2048, 0, 189, 90, 42, 255 }, // 0x00001BC0
	 { -539, 200, -1137, 0, 0, 0, 225, 16, 114, 255 }, // 0x00001BD0
	 { -539, 60, -1137, 0, 0, 512, 201, 46, 96, 255 }, // 0x00001BE0
	 { -269, 191, -775, 0, 0, 0, 235, 86, 80, 255 }, // 0x00001BF0
	 { -269, 51, -775, 0, 0, 512, 232, 87, 78, 255 }, // 0x00001C00
	 { -32, 60, -778, 0, 2048, 512, 233, 102, 58, 255 }, // 0x00001C10
	 { -32, 191, -778, 0, 2048, 0, 195, 71, 74, 255 }, // 0x00001C20
};

Vtx_t _spot04_room_0_vertices_00001C30[8] = 
{
	 { 259, 60, -524, 0, 3072, 1024, 213, 42, 103, 255 }, // 0x00001C30
	 { 259, 320, -524, 0, 3072, 0, 228, 69, 93, 255 }, // 0x00001C40
	 { -32, 191, -778, 0, 0, 512, 195, 71, 74, 255 }, // 0x00001C50
	 { -32, 60, -778, 0, 0, 1024, 233, 102, 58, 255 }, // 0x00001C60
	 { 504, 320, -528, 0, 0, 0, 20, 57, 103, 255 }, // 0x00001C70
	 { 504, 0, -528, 0, 0, 1024, 12, 72, 95, 255 }, // 0x00001C80
	 { 735, 0, -715, 0, 2048, 1024, 18, 102, 60, 255 }, // 0x00001C90
	 { 735, 320, -715, 0, 2048, 0, 243, 27, 116, 255 }, // 0x00001CA0
};

Vtx_t _spot04_room_0_vertices_00001CB0[32] = 
{
	 { -284, 0, -636, 0, 4096, 512, 238, 107, 50, 255 }, // 0x00001CB0
	 { -284, 60, -636, 0, 4096, 0, 232, 100, 61, 255 }, // 0x00001CC0
	 { -801, 60, -814, 0, 0, 0, 243, 100, 65, 255 }, // 0x00001CD0
	 { -801, 0, -814, 0, 0, 512, 240, 85, 83, 255 }, // 0x00001CE0
	 { 1053, 0, -101, 0, 0, 0, 187, 69, 187, 255 }, // 0x00001CF0
	 { 1053, -40, -101, 0, 0, 384, 13, 117, 22, 255 }, // 0x00001D00
	 { 1053, -60, -61, 0, 1024, 512, 19, 108, 48, 255 }, // 0x00001D10
	 { 1053, 0, -61, 0, 1024, 0, 187, 69, 69, 255 }, // 0x00001D20
	 { 1053, 0, -61, 0, 0, 0, 187, 69, 69, 255 }, // 0x00001D30
	 { 1053, -60, -61, 0, 0, 410, 19, 108, 48, 255 }, // 0x00001D40
	 { 1093, -60, -61, 0, 1024, 512, 43, 103, 43, 255 }, // 0x00001D50
	 { 1093, 0, -61, 0, 1024, 0, 69, 69, 69, 255 }, // 0x00001D60
	 { 1093, 0, -101, 0, 0, 0, 69, 69, 187, 255 }, // 0x00001D70
	 { 1093, -60, -101, 0, 0, 512, 59, 103, 15, 255 }, // 0x00001D80
	 { 1053, -40, -101, 0, 1024, 384, 13, 117, 22, 255 }, // 0x00001D90
	 { 1053, 0, -101, 0, 1024, 0, 187, 69, 187, 255 }, // 0x00001DA0
	 { 1093, -60, -101, 0, 1024, 410, 59, 103, 15, 255 }, // 0x00001DB0
	 { 1093, 0, -101, 0, 1024, 0, 69, 69, 187, 255 }, // 0x00001DC0
	 { 1093, 0, -61, 0, 0, 0, 69, 69, 69, 255 }, // 0x00001DD0
	 { 1093, -60, -61, 0, 0, 512, 43, 103, 43, 255 }, // 0x00001DE0
	 { 1173, -60, 39, 0, 1024, 512, 50, 104, 227, 255 }, // 0x00001DF0
	 { 1173, 0, 39, 0, 1024, 0, 69, 69, 187, 255 }, // 0x00001E00
	 { 1173, 0, 119, 0, 0, 0, 60, 101, 22, 255 }, // 0x00001E10
	 { 1173, -60, 119, 0, 0, 512, 83, 84, 20, 255 }, // 0x00001E20
	 { 1173, 0, 39, 0, 0, 0, 69, 69, 187, 255 }, // 0x00001E30
	 { 1173, -60, 39, 0, 0, 512, 50, 104, 227, 255 }, // 0x00001E40
	 { 1053, -60, 39, 0, 1024, 256, 0, 115, 222, 255 }, // 0x00001E50
	 { 1053, 0, 39, 0, 1024, 0, 187, 69, 187, 255 }, // 0x00001E60
	 { 1053, 0, 39, 0, 0, 0, 187, 69, 187, 255 }, // 0x00001E70
	 { 1053, -60, 39, 0, 0, 256, 0, 115, 222, 255 }, // 0x00001E80
	 { 1053, -60, 119, 0, 1024, 341, 218, 111, 234, 255 }, // 0x00001E90
	 { 1053, 0, 119, 0, 1024, 0, 183, 88, 222, 255 }, // 0x00001EA0
};

Vtx_t _spot04_room_0_vertices_00001EB0[56] = 
{
	 { 1123, 0, 179, 0, 0, 0, 77, 87, 28, 255 }, // 0x00001EB0
	 { 1123, -60, 179, 0, 0, 341, 74, 94, 252, 255 }, // 0x00001EC0
	 { 1173, -60, 119, 0, 1024, 512, 83, 84, 20, 255 }, // 0x00001ED0
	 { 1173, 0, 119, 0, 1024, 0, 60, 101, 22, 255 }, // 0x00001EE0
	 { 983, 0, 179, 0, 0, 0, 200, 102, 230, 255 }, // 0x00001EF0
	 { 983, -50, 179, 0, 0, 410, 193, 95, 221, 255 }, // 0x00001F00
	 { 983, -60, 279, 0, 1024, 410, 241, 118, 9, 255 }, // 0x00001F10
	 { 983, 0, 279, 0, 1024, 0, 187, 69, 69, 255 }, // 0x00001F20
	 { 983, 0, 279, 0, 0, 0, 187, 69, 69, 255 }, // 0x00001F30
	 { 983, -60, 279, 0, 0, 410, 241, 118, 9, 255 }, // 0x00001F40
	 { 1123, -60, 279, 0, 1024, 410, 41, 112, 7, 255 }, // 0x00001F50
	 { 1123, 0, 279, 0, 1024, 0, 69, 69, 69, 255 }, // 0x00001F60
	 { 1053, 0, 119, 0, 0, 0, 183, 88, 222, 255 }, // 0x00001F70
	 { 1053, -60, 119, 0, 0, 512, 218, 111, 234, 255 }, // 0x00001F80
	 { 983, -50, 179, 0, 1024, 410, 193, 95, 221, 255 }, // 0x00001F90
	 { 983, 0, 179, 0, 1024, 0, 200, 102, 230, 255 }, // 0x00001FA0
	 { 1123, -60, 179, 0, 1024, 427, 74, 94, 252, 255 }, // 0x00001FB0
	 { 1123, 0, 179, 0, 1024, 0, 77, 87, 28, 255 }, // 0x00001FC0
	 { 1123, 0, 279, 0, 0, 0, 69, 69, 69, 255 }, // 0x00001FD0
	 { 1123, -60, 279, 0, 0, 341, 41, 112, 7, 255 }, // 0x00001FE0
	 { 923, -40, 189, 0, 1024, 512, 59, 101, 229, 255 }, // 0x00001FF0
	 { 923, 0, 189, 0, 1024, 0, 69, 69, 187, 255 }, // 0x00002000
	 { 923, 0, 269, 0, 0, 0, 69, 69, 69, 255 }, // 0x00002010
	 { 923, -40, 269, 0, 0, 512, 68, 98, 3, 255 }, // 0x00002020
	 { 923, 0, 189, 0, 0, 0, 69, 69, 187, 255 }, // 0x00002030
	 { 923, -40, 189, 0, 0, 512, 59, 101, 229, 255 }, // 0x00002040
	 { 873, 0, 189, 0, 1024, 0, 14, 114, 225, 255 }, // 0x00002050
	 { 873, 0, 269, 0, 0, 0, 19, 116, 22, 255 }, // 0x00002060
	 { 923, -40, 269, 0, 1024, 512, 68, 98, 3, 255 }, // 0x00002070
	 { 923, 0, 269, 0, 1024, 0, 69, 69, 69, 255 }, // 0x00002080
	 { 1151, 0, -240, 0, -1070, 0, 28, 105, 50, 255 }, // 0x00002090
	 { 1392, -60, -283, 0, 1024, 512, 246, 98, 67, 255 }, // 0x000020A0
	 { 1392, 0, -283, 0, 1024, 0, 159, 45, 54, 255 }, // 0x000020B0
	 { 1392, 0, -283, 0, 0, 0, 159, 45, 54, 255 }, // 0x000020C0
	 { 1392, -60, -283, 0, 0, 512, 246, 98, 67, 255 }, // 0x000020D0
	 { 1293, -60, -21, 0, 2044, 512, 217, 110, 233, 255 }, // 0x000020E0
	 { 1293, 0, -21, 0, 2044, 0, 205, 102, 222, 255 }, // 0x000020F0
	 { 1293, 0, -21, 0, 0, 0, 205, 102, 222, 255 }, // 0x00002100
	 { 1293, -60, -21, 0, 0, 512, 217, 110, 233, 255 }, // 0x00002110
	 { 1233, -60, -1, 0, 512, 512, 213, 109, 233, 255 }, // 0x00002120
	 { 1233, -24, -1, 0, 512, 26, 162, 52, 203, 255 }, // 0x00002130
	 { 1233, -24, -1, 0, 512, 0, 162, 52, 203, 255 }, // 0x00002140
	 { 1233, -60, -1, 0, 512, 512, 213, 109, 233, 255 }, // 0x00002150
	 { 1233, -60, 179, 0, 2560, 512, 215, 111, 14, 255 }, // 0x00002160
	 { 1233, -24, 179, 0, 2560, 0, 172, 76, 38, 255 }, // 0x00002170
	 { 1233, -24, 179, 0, 512, 0, 172, 76, 38, 255 }, // 0x00002180
	 { 1233, -60, 179, 0, 512, 512, 215, 111, 14, 255 }, // 0x00002190
	 { 1306, -60, 212, 0, 1024, 512, 233, 111, 37, 255 }, // 0x000021A0
	 { 1306, 0, 212, 0, 1024, 0, 212, 96, 56, 255 }, // 0x000021B0
	 { 1392, 0, 283, 0, 0, 0, 142, 35, 0, 255 }, // 0x000021C0
	 { 1392, -60, 283, 0, 0, 512, 204, 108, 251, 255 }, // 0x000021D0
	 { 1392, 0, 445, 0, 1382, 0, 219, 102, 207, 255 }, // 0x000021E0
	 { 1306, 0, 212, 0, 3577, 0, 212, 96, 56, 255 }, // 0x000021F0
	 { 1306, -60, 212, 0, 3577, 512, 233, 111, 37, 255 }, // 0x00002200
	 { 1392, -60, 283, 0, 4096, 512, 204, 108, 251, 255 }, // 0x00002210
	 { 1392, 0, 283, 0, 4096, 0, 142, 35, 0, 255 }, // 0x00002220
};

Vtx_t _spot04_room_0_vertices_00002230[63] = 
{
	 { 1216, 360, -573, 0, 536, 0, 245, 59, 103, 255 }, // 0x00002230
	 { 1154, 400, -675, 0, 0, 0, 227, 73, 90, 255 }, // 0x00002240
	 { 1216, 240, -573, 0, 536, 341, 182, 36, 87, 255 }, // 0x00002250
	 { 1154, 0, -675, 0, 0, 1024, 207, 77, 78, 255 }, // 0x00002260
	 { 1392, 0, -283, 0, 2048, 1024, 159, 45, 54, 255 }, // 0x00002270
	 { 1278, 240, -470, 0, 1072, 341, 145, 36, 25, 255 }, // 0x00002280
	 { 1278, 240, -470, 0, 1072, 341, 145, 36, 25, 255 }, // 0x00002290
	 { 1392, 346, -283, 0, 2048, 0, 176, 77, 45, 255 }, // 0x000022A0
	 { 1278, 360, -470, 0, 1072, 0, 161, 70, 236, 255 }, // 0x000022B0
	 { 1216, 360, -573, 0, 0, 0, 245, 59, 103, 255 }, // 0x000022C0
	 { 1216, 240, -573, 0, 0, 1024, 182, 36, 87, 255 }, // 0x000022D0
	 { 1319, 240, -635, 0, 1024, 1024, 233, 69, 95, 255 }, // 0x000022E0
	 { 1319, 360, -635, 0, 1024, 0, 251, 92, 75, 255 }, // 0x000022F0
	 { 1319, 360, -635, 0, 0, 0, 251, 92, 75, 255 }, // 0x00002300
	 { 1319, 240, -635, 0, 0, 1024, 233, 69, 95, 255 }, // 0x00002310
	 { 1381, 240, -532, 0, 1024, 1024, 161, 69, 233, 255 }, // 0x00002320
	 { 1381, 360, -532, 0, 1024, 0, 205, 108, 249, 255 }, // 0x00002330
	 { 1381, 360, -532, 0, 0, 0, 205, 108, 249, 255 }, // 0x00002340
	 { 1381, 240, -532, 0, 0, 1024, 161, 69, 233, 255 }, // 0x00002350
	 { 1278, 240, -470, 0, 1024, 1024, 145, 36, 25, 255 }, // 0x00002360
	 { 1278, 360, -470, 0, 1024, 0, 161, 70, 236, 255 }, // 0x00002370
	 { 2054, -1, -416, 0, -265, 1024, 80, 70, 54, 255 }, // 0x00002380
	 { 2294, 103, -616, 0, 1930, 492, 43, 230, 109, 255 }, // 0x00002390
	 { 2054, 203, -416, 0, -265, 0, 88, 31, 74, 255 }, // 0x000023A0
	 { 2054, 239, 64, 0, -1504, 0, 52, 79, 73, 255 }, // 0x000023B0
	 { 2054, -1, 64, 0, -1504, 1024, 36, 108, 36, 255 }, // 0x000023C0
	 { 1392, 200, 283, 0, 1705, 0, 159, 49, 207, 255 }, // 0x000023D0
	 { 1472, 220, 186, 0, 0, 0, 162, 28, 188, 255 }, // 0x000023E0
	 { 1516, 120, 183, 0, 0, 512, 221, 219, 148, 255 }, // 0x000023F0
	 { 1392, 0, 283, 0, 1705, 1024, 142, 35, 0, 255 }, // 0x00002400
	 { 1516, 0, 183, 0, 0, 1024, 245, 98, 188, 255 }, // 0x00002410
	 { 1516, 0, 23, 0, 3072, 1024, 228, 100, 59, 255 }, // 0x00002420
	 { 1516, 120, 23, 0, 3072, 512, 186, 225, 92, 255 }, // 0x00002430
	 { 1392, 0, -283, 0, 0, 1024, 159, 45, 54, 255 }, // 0x00002440
	 { 1392, 346, -283, 0, 0, 0, 176, 77, 45, 255 }, // 0x00002450
	 { 1392, 0, 876, 0, 4096, 1024, 234, 116, 240, 255 }, // 0x00002460
	 { 1392, 200, 876, 0, 4096, 0, 214, 112, 254, 255 }, // 0x00002470
	 { 1392, 200, 283, 0, 0, 0, 159, 49, 207, 255 }, // 0x00002480
	 { 1392, 0, 283, 0, 0, 1024, 142, 35, 0, 255 }, // 0x00002490
	 { 1522, 145, 41, 0, 415, 350, 196, 169, 56, 255 }, // 0x000024A0
	 { 1484, 220, 26, 0, 0, 0, 154, 30, 55, 255 }, // 0x000024B0
	 { 1516, 120, 23, 0, 0, 512, 186, 225, 92, 255 }, // 0x000024C0
	 { 1520, 145, 163, 0, 1860, 323, 191, 171, 202, 255 }, // 0x000024D0
	 { 1516, 120, 183, 0, 2048, 512, 221, 219, 148, 255 }, // 0x000024E0
	 { 1472, 220, 186, 0, 2048, 0, 162, 28, 188, 255 }, // 0x000024F0
	 { 1503, 220, 144, 0, 1536, 0, 154, 50, 218, 255 }, // 0x00002500
	 { 1507, 220, 88, 0, 1024, 0, 148, 51, 11, 255 }, // 0x00002510
	 { 1484, 220, 26, 0, 3072, 0, 154, 30, 55, 255 }, // 0x00002520
	 { 1916, 0, 63, 0, 1024, 1024, 252, 85, 84, 255 }, // 0x00002530
	 { 1916, 120, 63, 0, 1024, 512, 17, 236, 117, 255 }, // 0x00002540
	 { 1516, 0, 23, 0, 0, 1024, 228, 100, 59, 255 }, // 0x00002550
	 { 1911, 145, 82, 0, 1147, 350, 82, 182, 44, 255 }, // 0x00002560
	 { 1909, 145, 204, 0, 2537, 295, 84, 181, 215, 255 }, // 0x00002570
	 { 1916, 120, 223, 0, 3072, 512, 20, 234, 140, 255 }, // 0x00002580
	 { 1916, 0, 223, 0, 3072, 1024, 255, 100, 190, 255 }, // 0x00002590
	 { 1516, 0, 183, 0, 2048, 1024, 245, 98, 188, 255 }, // 0x000025A0
	 { 1943, 224, 60, 0, 1024, 0, 80, 53, 71, 255 }, // 0x000025B0
	 { 1927, 204, 129, 0, 2048, 0, 118, 15, 5, 255 }, // 0x000025C0
	 { 1940, 224, 220, 0, 3072, 0, 90, 10, 178, 255 }, // 0x000025D0
	 { 2054, 239, 64, 0, 1024, 0, 52, 79, 73, 255 }, // 0x000025E0
	 { 1943, 224, 60, 0, 0, 0, 80, 53, 71, 255 }, // 0x000025F0
	 { 1916, 120, 63, 0, 0, 512, 17, 236, 117, 255 }, // 0x00002600
	 { 2054, -1, 64, 0, 1024, 1024, 36, 108, 36, 255 }, // 0x00002610
};

Vtx_t _spot04_room_0_vertices_00002620[33] = 
{
	 { 2054, -1, 64, 0, 1024, 1024, 36, 108, 36, 255 }, // 0x00002620
	 { 1916, 120, 63, 0, 0, 512, 17, 236, 117, 255 }, // 0x00002630
	 { 1916, 0, 63, 0, 0, 1024, 252, 85, 84, 255 }, // 0x00002640
	 { 2993, 210, -359, 0, 0, 0, 70, 40, 168, 255 }, // 0x00002650
	 { 2993, -1, -359, 0, 0, 1024, 30, 109, 217, 255 }, // 0x00002660
	 { 2534, -1, -416, 0, 2048, 1024, 5, 85, 172, 255 }, // 0x00002670
	 { 2534, 199, -416, 0, 2048, 0, 4, 70, 159, 255 }, // 0x00002680
	 { 2760, -1, -803, 0, 6600, 1024, 63, 101, 15, 255 }, // 0x00002690
	 { 2760, 210, -803, 0, 6600, 0, 117, 254, 26, 255 }, // 0x000026A0
	 { 2534, 103, -616, 0, 4747, 492, 44, 218, 105, 255 }, // 0x000026B0
	 { 2534, -1, -616, 0, 4747, 1024, 22, 101, 60, 255 }, // 0x000026C0
	 { 2581, 199, -518, 0, 4747, 0, 31, 31, 111, 255 }, // 0x000026D0
	 { 2294, 199, -416, 0, 0, 0, 204, 86, 191, 255 }, // 0x000026E0
	 { 2294, -1, -416, 0, 0, 1024, 221, 107, 217, 255 }, // 0x000026F0
	 { 2231, -1, 182, 0, 2048, 1024, 203, 94, 204, 255 }, // 0x00002700
	 { 2231, 240, 182, 0, 2048, 0, 194, 42, 163, 255 }, // 0x00002710
	 { 2534, 199, -416, 0, 0, 0, 4, 70, 159, 255 }, // 0x00002720
	 { 2534, -1, -416, 0, 0, 1024, 5, 85, 172, 255 }, // 0x00002730
	 { 2294, -1, -416, 0, 2048, 1024, 221, 107, 217, 255 }, // 0x00002740
	 { 2294, 199, -416, 0, 2048, 0, 204, 86, 191, 255 }, // 0x00002750
	 { 2231, 240, 182, 0, 0, 0, 194, 42, 163, 255 }, // 0x00002760
	 { 2231, -1, 182, 0, 0, 1024, 203, 94, 204, 255 }, // 0x00002770
	 { 1916, 0, 223, 0, 1024, 1024, 255, 100, 190, 255 }, // 0x00002780
	 { 1916, 120, 223, 0, 1024, 512, 20, 234, 140, 255 }, // 0x00002790
	 { 1940, 224, 220, 0, 1024, 0, 90, 10, 178, 255 }, // 0x000027A0
	 { 2294, -1, -616, 0, 1930, 1024, 28, 87, 77, 255 }, // 0x000027B0
	 { 2294, 103, -616, 0, 1930, 492, 43, 230, 109, 255 }, // 0x000027C0
	 { 2054, -1, -416, 0, -265, 1024, 80, 70, 54, 255 }, // 0x000027D0
	 { 2366, 199, -572, 0, 1930, 0, 28, 52, 104, 255 }, // 0x000027E0
	 { 2054, 203, -416, 0, -265, 0, 88, 31, 74, 255 }, // 0x000027F0
	 { 1911, 145, 82, 0, 1147, 350, 82, 182, 44, 255 }, // 0x00002800
	 { 1927, 204, 129, 0, 2048, 0, 118, 15, 5, 255 }, // 0x00002810
	 { 1909, 145, 204, 0, 2537, 295, 84, 181, 215, 255 }, // 0x00002820
};

Vtx_t _spot04_room_0_vertices_00002830[10] = 
{
	 { 1023, 0, 379, 0, 0, 0, 187, 69, 187, 255 }, // 0x00002830
	 { 1023, -40, 379, 0, 0, 512, 253, 97, 186, 255 }, // 0x00002840
	 { 1023, 0, 419, 0, 512, 0, 231, 115, 234, 255 }, // 0x00002850
	 { 1123, 0, 379, 0, 0, 0, 69, 69, 187, 255 }, // 0x00002860
	 { 1123, -40, 379, 0, 0, 512, 27, 99, 194, 255 }, // 0x00002870
	 { 1023, -40, 379, 0, 1024, 512, 253, 97, 186, 255 }, // 0x00002880
	 { 1023, 0, 379, 0, 1024, 0, 187, 69, 187, 255 }, // 0x00002890
	 { 1123, 0, 419, 0, 512, 0, 33, 113, 234, 255 }, // 0x000028A0
	 { 1123, -40, 379, 0, 1024, 512, 27, 99, 194, 255 }, // 0x000028B0
	 { 1123, 0, 379, 0, 1024, 0, 69, 69, 187, 255 }, // 0x000028C0
};

Vtx_t _spot04_room_0_vertices_000028D0[12] = 
{
	 { -735, 120, 1679, 0, 1024, 1024, 158, 49, 207, 255 }, // 0x000028D0
	 { -735, 240, 1679, 0, 1024, 0, 203, 0, 149, 255 }, // 0x000028E0
	 { -735, 240, 1579, 0, 0, 0, 140, 0, 227, 255 }, // 0x000028F0
	 { -735, 120, 1579, 0, 0, 1024, 233, 117, 244, 255 }, // 0x00002900
	 { -735, 240, 1679, 0, 0, 0, 203, 0, 149, 255 }, // 0x00002910
	 { -735, 120, 1679, 0, 0, 1024, 158, 49, 207, 255 }, // 0x00002920
	 { -835, 120, 1679, 0, 1024, 1024, 40, 80, 176, 255 }, // 0x00002930
	 { -835, 240, 1679, 0, 1024, 0, 107, 0, 203, 255 }, // 0x00002940
	 { -835, 120, 1579, 0, 1024, 1024, 64, 96, 224, 255 }, // 0x00002950
	 { -835, 240, 1579, 0, 1024, 0, 107, 0, 203, 255 }, // 0x00002960
	 { -835, 240, 1679, 0, 0, 0, 107, 0, 203, 255 }, // 0x00002970
	 { -835, 120, 1679, 0, 0, 1024, 40, 80, 176, 255 }, // 0x00002980
};

Vtx_t _spot04_room_0_vertices_00002990[8] = 
{
	 { 1682, -80, -2671, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002990
	 { 3145, -80, -136, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029A0
	 { 1682, 590, -2671, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029B0
	 { 3145, 590, -136, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029C0
	 { -2208, -80, -425, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029D0
	 { -745, -80, 2110, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029E0
	 { -2208, 590, -425, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029F0
	 { -745, 590, 2110, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A00
};

Gfx _spot04_room_0_dlist_00002A10[] =
{
	gsDPPipeSync(), // 0x00002A10
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002A18
	gsSPVertex(_spot04_room_0_vertices_00002990, 8, 0), // 0x00002A20
	gsSPCullDisplayList(0, 7), // 0x00002A28
	gsDPPipeSync(), // 0x00002A30
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002A38
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002A40
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002A48
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000FA18), // 0x00002A50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002A58
	gsDPLoadSync(), // 0x00002A60
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002A68
	gsDPPipeSync(), // 0x00002A70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002A78
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002A80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000E010), // 0x00002A88
	gsDPTileSync(), // 0x00002A90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002A98
	gsDPLoadSync(), // 0x00002AA0
	gsDPLoadTLUTCmd(7, 255), // 0x00002AA8
	gsDPPipeSync(), // 0x00002AB0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002AB8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002AC0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00002AC8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00002AD0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002AD8
	gsSPVertex(_spot04_room_0_vertices_00001270, 12, 0), // 0x00002AE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002AE8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002AF0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002AF8
	gsDPPipeSync(), // 0x00002B00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013108), // 0x00002B08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00002B10
	gsDPLoadSync(), // 0x00002B18
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00002B20
	gsDPPipeSync(), // 0x00002B28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x00002B30
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00002B38
	gsSPVertex(_spot04_room_0_vertices_00001330, 23, 0), // 0x00002B40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002B48
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00002B50
	gsSP2Triangles(7, 9, 10, 0, 10, 9, 11, 0), // 0x00002B58
	gsSP2Triangles(4, 12, 5, 0, 13, 14, 15, 0), // 0x00002B60
	gsSP2Triangles(16, 17, 18, 0, 15, 19, 13, 0), // 0x00002B68
	gsSP1Triangle(20, 21, 22, 0), // 0x00002B70
	gsDPPipeSync(), // 0x00002B78
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000FA18), // 0x00002B80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002B88
	gsDPLoadSync(), // 0x00002B90
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002B98
	gsDPPipeSync(), // 0x00002BA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002BA8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002BB0
	gsSPVertex(_spot04_room_0_vertices_000014A0, 23, 0), // 0x00002BB8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00002BC0
	gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0), // 0x00002BC8
	gsSP2Triangles(10, 11, 12, 0, 11, 13, 14, 0), // 0x00002BD0
	gsSP2Triangles(10, 12, 15, 0, 10, 15, 16, 0), // 0x00002BD8
	gsSP2Triangles(17, 18, 19, 0, 6, 20, 7, 0), // 0x00002BE0
	gsSP2Triangles(21, 18, 17, 0, 6, 21, 22, 0), // 0x00002BE8
	gsSP2Triangles(21, 17, 22, 0, 10, 16, 19, 0), // 0x00002BF0
	gsSP1Triangle(19, 16, 17, 0), // 0x00002BF8
	gsDPPipeSync(), // 0x00002C00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00012F08), // 0x00002C08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00002C10
	gsDPLoadSync(), // 0x00002C18
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00002C20
	gsDPPipeSync(), // 0x00002C28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x00002C30
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00002C38
	gsSPVertex(_spot04_room_0_vertices_00001610, 4, 0), // 0x00002C40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002C48
	gsDPPipeSync(), // 0x00002C50
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000FA18), // 0x00002C58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002C60
	gsDPLoadSync(), // 0x00002C68
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002C70
	gsDPPipeSync(), // 0x00002C78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002C80
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002C88
	gsSPVertex(_spot04_room_0_vertices_00001650, 3, 0), // 0x00002C90
	gsSP1Triangle(0, 1, 2, 0), // 0x00002C98
	gsDPPipeSync(), // 0x00002CA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00012F08), // 0x00002CA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00002CB0
	gsDPLoadSync(), // 0x00002CB8
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00002CC0
	gsDPPipeSync(), // 0x00002CC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x00002CD0
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00002CD8
	gsSPVertex(_spot04_room_0_vertices_00001680, 10, 0), // 0x00002CE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002CE8
	gsSP2Triangles(0, 4, 1, 0, 5, 6, 4, 0), // 0x00002CF0
	gsSP2Triangles(5, 4, 0, 0, 5, 7, 6, 0), // 0x00002CF8
	gsSP2Triangles(8, 7, 5, 0, 8, 5, 9, 0), // 0x00002D00
	gsDPPipeSync(), // 0x00002D08
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000FA18), // 0x00002D10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002D18
	gsDPLoadSync(), // 0x00002D20
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002D28
	gsDPPipeSync(), // 0x00002D30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002D38
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002D40
	gsSPVertex(_spot04_room_0_vertices_00001720, 10, 0), // 0x00002D48
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002D50
	gsSP2Triangles(4, 3, 0, 0, 4, 0, 2, 0), // 0x00002D58
	gsSP2Triangles(5, 6, 7, 0, 2, 6, 5, 0), // 0x00002D60
	gsSP2Triangles(4, 2, 5, 0, 4, 5, 8, 0), // 0x00002D68
	gsSP2Triangles(9, 3, 8, 0, 3, 4, 8, 0), // 0x00002D70
	gsSP2Triangles(7, 6, 3, 0, 7, 3, 9, 0), // 0x00002D78
	gsDPPipeSync(), // 0x00002D80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013108), // 0x00002D88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00002D90
	gsDPLoadSync(), // 0x00002D98
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00002DA0
	gsDPPipeSync(), // 0x00002DA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x00002DB0
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00002DB8
	gsSPVertex(_spot04_room_0_vertices_000017C0, 8, 0), // 0x00002DC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002DC8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002DD0
	gsDPPipeSync(), // 0x00002DD8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00012F08), // 0x00002DE0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00002DE8
	gsDPLoadSync(), // 0x00002DF0
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00002DF8
	gsDPPipeSync(), // 0x00002E00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x00002E08
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00002E10
	gsSPVertex(_spot04_room_0_vertices_00001840, 13, 0), // 0x00002E18
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00002E20
	gsSP2Triangles(4, 3, 2, 0, 4, 5, 3, 0), // 0x00002E28
	gsSP2Triangles(5, 4, 6, 0, 7, 8, 6, 0), // 0x00002E30
	gsSP2Triangles(7, 9, 8, 0, 10, 9, 7, 0), // 0x00002E38
	gsSP2Triangles(10, 11, 9, 0, 12, 11, 10, 0), // 0x00002E40
	gsDPPipeSync(), // 0x00002E48
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000FA18), // 0x00002E50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002E58
	gsDPLoadSync(), // 0x00002E60
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002E68
	gsDPPipeSync(), // 0x00002E70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002E78
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002E80
	gsSPVertex(_spot04_room_0_vertices_00001910, 5, 0), // 0x00002E88
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00002E90
	gsSP1Triangle(4, 3, 2, 0), // 0x00002E98
	gsDPPipeSync(), // 0x00002EA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013108), // 0x00002EA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00002EB0
	gsDPLoadSync(), // 0x00002EB8
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00002EC0
	gsDPPipeSync(), // 0x00002EC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x00002ED0
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00002ED8
	gsSPVertex(_spot04_room_0_vertices_00001960, 8, 0), // 0x00002EE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002EE8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002EF0
	gsDPPipeSync(), // 0x00002EF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000FA18), // 0x00002F00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002F08
	gsDPLoadSync(), // 0x00002F10
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002F18
	gsDPPipeSync(), // 0x00002F20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002F28
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002F30
	gsSPVertex(_spot04_room_0_vertices_000019E0, 5, 0), // 0x00002F38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002F40
	gsSP1Triangle(4, 0, 3, 0), // 0x00002F48
	gsDPPipeSync(), // 0x00002F50
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00012F08), // 0x00002F58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00002F60
	gsDPLoadSync(), // 0x00002F68
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00002F70
	gsDPPipeSync(), // 0x00002F78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x00002F80
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00002F88
	gsSPVertex(_spot04_room_0_vertices_00001A30, 8, 0), // 0x00002F90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002F98
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002FA0
	gsDPPipeSync(), // 0x00002FA8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000FA18), // 0x00002FB0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002FB8
	gsDPLoadSync(), // 0x00002FC0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002FC8
	gsDPPipeSync(), // 0x00002FD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002FD8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002FE0
	gsSPVertex(_spot04_room_0_vertices_00001AB0, 9, 0), // 0x00002FE8
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00002FF0
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00002FF8
	gsSP1Triangle(8, 4, 6, 0), // 0x00003000
	gsDPPipeSync(), // 0x00003008
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00012F08), // 0x00003010
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00003018
	gsDPLoadSync(), // 0x00003020
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00003028
	gsDPPipeSync(), // 0x00003030
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x00003038
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00003040
	gsSPVertex(_spot04_room_0_vertices_00001B40, 7, 0), // 0x00003048
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x00003050
	gsSP1Triangle(4, 5, 6, 0), // 0x00003058
	gsDPPipeSync(), // 0x00003060
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013108), // 0x00003068
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00003070
	gsDPLoadSync(), // 0x00003078
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00003080
	gsDPPipeSync(), // 0x00003088
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x00003090
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00003098
	gsSPVertex(_spot04_room_0_vertices_00001BB0, 8, 0), // 0x000030A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000030A8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000030B0
	gsDPPipeSync(), // 0x000030B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000FA18), // 0x000030C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000030C8
	gsDPLoadSync(), // 0x000030D0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000030D8
	gsDPPipeSync(), // 0x000030E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000030E8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000030F0
	gsSPVertex(_spot04_room_0_vertices_00001C30, 8, 0), // 0x000030F8
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x00003100
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003108
	gsDPPipeSync(), // 0x00003110
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013108), // 0x00003118
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00003120
	gsDPLoadSync(), // 0x00003128
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00003130
	gsDPPipeSync(), // 0x00003138
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x00003140
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00003148
	gsSPVertex(_spot04_room_0_vertices_00001CB0, 32, 0), // 0x00003150
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003158
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003160
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003168
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003170
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003178
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00003180
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00003188
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00003190
	gsSPVertex(_spot04_room_0_vertices_00001EB0, 32, 0), // 0x00003198
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000031A0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000031A8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000031B0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000031B8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000031C0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000031C8
	gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0), // 0x000031D0
	gsSPVertex(_spot04_room_0_vertices_00002090, 26, 0), // 0x000031D8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000031E0
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x000031E8
	gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0), // 0x000031F0
	gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0), // 0x000031F8
	gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0), // 0x00003200
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x00003208
	gsDPPipeSync(), // 0x00003210
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000FA18), // 0x00003218
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003220
	gsDPLoadSync(), // 0x00003228
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003230
	gsDPPipeSync(), // 0x00003238
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003240
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003248
	gsSPVertex(_spot04_room_0_vertices_00002230, 32, 0), // 0x00003250
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00003258
	gsSP2Triangles(2, 3, 4, 0, 2, 4, 5, 0), // 0x00003260
	gsSP2Triangles(6, 4, 7, 0, 7, 8, 6, 0), // 0x00003268
	gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0), // 0x00003270
	gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0), // 0x00003278
	gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0), // 0x00003280
	gsSP2Triangles(21, 22, 23, 0, 24, 25, 21, 0), // 0x00003288
	gsSP2Triangles(24, 21, 23, 0, 26, 27, 28, 0), // 0x00003290
	gsSP2Triangles(29, 26, 28, 0, 29, 28, 30, 0), // 0x00003298
	gsSPVertex(_spot04_room_0_vertices_00002420, 32, 0), // 0x000032A0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000032A8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000032B0
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0), // 0x000032B8
	gsSP2Triangles(11, 13, 14, 0, 8, 15, 9, 0), // 0x000032C0
	gsSP2Triangles(3, 1, 16, 0, 11, 14, 15, 0), // 0x000032C8
	gsSP2Triangles(11, 15, 8, 0, 17, 18, 10, 0), // 0x000032D0
	gsSP2Triangles(17, 10, 19, 0, 18, 20, 8, 0), // 0x000032D8
	gsSP2Triangles(18, 8, 10, 0, 20, 21, 11, 0), // 0x000032E0
	gsSP2Triangles(20, 11, 8, 0, 21, 22, 12, 0), // 0x000032E8
	gsSP2Triangles(21, 12, 11, 0, 22, 23, 24, 0), // 0x000032F0
	gsSP2Triangles(22, 24, 12, 0, 20, 25, 26, 0), // 0x000032F8
	gsSP2Triangles(21, 26, 27, 0, 18, 25, 20, 0), // 0x00003300
	gsSP2Triangles(27, 22, 21, 0, 28, 29, 30, 0), // 0x00003308
	gsSP1Triangle(31, 28, 30, 0), // 0x00003310
	gsSPVertex(_spot04_room_0_vertices_00002620, 32, 0), // 0x00003318
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003320
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x00003328
	gsSP2Triangles(7, 9, 10, 0, 8, 11, 9, 0), // 0x00003330
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003338
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003340
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00003348
	gsSP2Triangles(23, 24, 20, 0, 25, 26, 27, 0), // 0x00003350
	gsSP2Triangles(10, 9, 26, 0, 10, 26, 25, 0), // 0x00003358
	gsSP2Triangles(26, 28, 29, 0, 26, 9, 11, 0), // 0x00003360
	gsSP1Triangle(26, 11, 28, 0), // 0x00003368
	gsSPVertex(_spot04_room_0_vertices_00002800, 3, 0), // 0x00003370
	gsSP1Triangle(0, 1, 2, 0), // 0x00003378
	gsDPPipeSync(), // 0x00003380
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013108), // 0x00003388
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00003390
	gsDPLoadSync(), // 0x00003398
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x000033A0
	gsDPPipeSync(), // 0x000033A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x000033B0
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x000033B8
	gsSPVertex(_spot04_room_0_vertices_00002830, 10, 0), // 0x000033C0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000033C8
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x000033D0
	gsDPPipeSync(), // 0x000033D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000FA18), // 0x000033E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000033E8
	gsDPLoadSync(), // 0x000033F0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000033F8
	gsDPPipeSync(), // 0x00003400
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003408
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003410
	gsSPVertex(_spot04_room_0_vertices_000028D0, 12, 0), // 0x00003418
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003420
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003428
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003430
	gsSPEndDisplayList(), // 0x00003438
};

Vtx_t _spot04_room_0_vertices_00003440[63] = 
{
	 { 1146, 660, -1447, 0, -4374, -1267, 5, 114, 36, 255 }, // 0x00003440
	 { 296, 693, -1449, 0, -8726, -1276, 249, 108, 50, 255 }, // 0x00003450
	 { 500, 540, -1087, 0, -7681, 578, 212, 83, 74, 255 }, // 0x00003460
	 { -160, 590, -1409, 0, -11059, -1071, 240, 23, 116, 255 }, // 0x00003470
	 { -269, 51, -775, 0, -11619, 2177, 232, 87, 78, 255 }, // 0x00003480
	 { -525, 60, -935, 0, -12930, 1354, 188, 89, 41, 255 }, // 0x00003490
	 { -801, 60, -814, 0, -14339, 1975, 243, 100, 65, 255 }, // 0x000034A0
	 { -284, 60, -636, 0, -11692, 2890, 232, 100, 61, 255 }, // 0x000034B0
	 { 120, 320, -988, 0, -9624, 1085, 241, 114, 34, 255 }, // 0x000034C0
	 { 500, 320, -1087, 0, -7681, 578, 206, 96, 50, 255 }, // 0x000034D0
	 { -160, 380, -1409, 0, -11059, -1071, 253, 84, 85, 255 }, // 0x000034E0
	 { -88, 380, -966, 0, -10693, 1197, 1, 86, 83, 255 }, // 0x000034F0
	 { -539, 380, -1137, 0, -12999, 322, 235, 72, 93, 255 }, // 0x00003500
	 { -461, 380, -1409, 0, -12601, -1071, 15, 55, 105, 255 }, // 0x00003510
	 { -836, 380, -1164, 0, -14520, 184, 27, 14, 116, 255 }, // 0x00003520
	 { 118, 60, -483, 0, -9638, 3669, 253, 87, 82, 255 }, // 0x00003530
	 { -32, 60, -778, 0, -10403, 2162, 233, 102, 58, 255 }, // 0x00003540
	 { -284, 60, -636, 0, -11692, 2890, 232, 100, 61, 255 }, // 0x00003550
	 { 259, 60, -524, 0, -8912, 3459, 213, 42, 103, 255 }, // 0x00003560
	 { -88, 191, -966, 0, -10693, 1197, 230, 92, 72, 255 }, // 0x00003570
	 { -32, 191, -778, 0, -10403, 2162, 195, 71, 74, 255 }, // 0x00003580
	 { 259, 320, -524, 0, -8912, 3459, 228, 69, 93, 255 }, // 0x00003590
	 { 735, 480, -715, 0, -6479, 2485, 200, 63, 85, 255 }, // 0x000035A0
	 { 1154, 400, -675, 0, -4334, 2688, 227, 73, 90, 255 }, // 0x000035B0
	 { -539, 60, -1137, 0, -12999, 322, 201, 46, 96, 255 }, // 0x000035C0
	 { -836, 60, -1164, 0, -14520, 184, 10, 39, 113, 255 }, // 0x000035D0
	 { -1472, 60, -850, 0, -17778, 1792, 78, 24, 88, 255 }, // 0x000035E0
	 { -701, 0, -301, 0, -13829, 4601, 251, 119, 2, 255 }, // 0x000035F0
	 { -801, 0, -814, 0, -14339, 1975, 240, 85, 83, 255 }, // 0x00003600
	 { -1472, 0, -850, 0, -17778, 1792, 93, 65, 38, 255 }, // 0x00003610
	 { -284, 0, -636, 0, -11692, 2890, 238, 107, 50, 255 }, // 0x00003620
	 { 110, 0, -243, 0, -9675, 4900, 11, 119, 4, 255 }, // 0x00003630
	 { 118, 0, -483, 0, -9638, 3669, 253, 101, 64, 255 }, // 0x00003640
	 { -284, 0, -636, 0, -11692, 2890, 238, 107, 50, 255 }, // 0x00003650
	 { 222, 0, -399, 0, -9105, 4101, 24, 117, 7, 255 }, // 0x00003660
	 { 259, 0, -524, 0, -8912, 3459, 17, 71, 95, 255 }, // 0x00003670
	 { 1154, 0, -675, 0, -4334, 2688, 207, 77, 78, 255 }, // 0x00003680
	 { 735, 0, -715, 0, -6479, 2485, 18, 102, 60, 255 }, // 0x00003690
	 { 691, 0, -247, 0, -6703, 4880, 244, 119, 254, 255 }, // 0x000036A0
	 { 618, 0, -421, 0, -7078, 3988, 238, 117, 15, 255 }, // 0x000036B0
	 { 504, 0, -528, 0, -7659, 3442, 12, 72, 95, 255 }, // 0x000036C0
	 { 321, -28, -485, 0, -8599, 3660, 21, 113, 34, 255 }, // 0x000036D0
	 { 443, -28, -487, 0, -7972, 3651, 242, 111, 43, 255 }, // 0x000036E0
	 { 320, -80, 1240, 0, -8602, 12493, 158, 62, 226, 255 }, // 0x000036F0
	 { 160, -80, 760, 0, -9421, 10035, 174, 83, 26, 255 }, // 0x00003700
	 { -200, -80, 760, 0, -11264, 10035, 80, 83, 31, 255 }, // 0x00003710
	 { -400, -80, 1160, 0, -12288, 12083, 100, 63, 240, 255 }, // 0x00003720
	 { -40, -80, 1520, 0, -10445, 13926, 6, 66, 157, 255 }, // 0x00003730
	 { -525, 120, 979, 0, -12929, 11157, 0, 120, 0, 255 }, // 0x00003740
	 { -775, 120, 173, 0, -14206, 7028, 2, 117, 231, 255 }, // 0x00003750
	 { -1185, 120, 819, 0, -16308, 10338, 0, 120, 0, 255 }, // 0x00003760
	 { -560, 120, 200, 0, -13107, 7168, 42, 107, 224, 255 }, // 0x00003770
	 { -200, 120, 760, 0, -11264, 10035, 70, 96, 11, 255 }, // 0x00003780
	 { -200, 120, 500, 0, -11264, 8704, 95, 58, 212, 255 }, // 0x00003790
	 { -1472, 120, -6, 0, -17778, 6114, 86, 79, 230, 255 }, // 0x000037A0
	 { 160, 0, 500, 0, -9421, 8704, 236, 118, 6, 255 }, // 0x000037B0
	 { -200, 0, 500, 0, -11264, 8704, 85, 77, 224, 255 }, // 0x000037C0
	 { -520, 0, -117, 0, -12900, 5543, 14, 118, 248, 255 }, // 0x000037D0
	 { -734, 0, -145, 0, -13999, 5403, 250, 118, 239, 255 }, // 0x000037E0
	 { -775, 120, 173, 0, -14206, 7028, 2, 117, 231, 255 }, // 0x000037F0
	 { -701, 0, -301, 0, -13829, 4601, 251, 119, 2, 255 }, // 0x00003800
	 { 103, 0, -54, 0, -9714, 5868, 7, 119, 251, 255 }, // 0x00003810
	 { -560, 0, 200, 0, -13107, 7168, 73, 90, 227, 255 }, // 0x00003820
};

Vtx_t _spot04_room_0_vertices_00003830[63] = 
{
	 { 103, 0, -54, 0, -9714, 5868, 7, 119, 251, 255 }, // 0x00003830
	 { 160, 0, 500, 0, -9421, 8704, 236, 118, 6, 255 }, // 0x00003840
	 { 302, 0, 62, 0, -8692, 6461, 5, 118, 237, 255 }, // 0x00003850
	 { 1392, 0, 876, 0, -3112, 10628, 234, 116, 240, 255 }, // 0x00003860
	 { 160, 0, 760, 0, -9421, 10035, 173, 85, 13, 255 }, // 0x00003870
	 { 320, 0, 1240, 0, -8602, 12493, 170, 34, 180, 255 }, // 0x00003880
	 { 565, 0, -53, 0, -7347, 5873, 241, 118, 11, 255 }, // 0x00003890
	 { 691, 0, -247, 0, -6703, 4880, 244, 119, 254, 255 }, // 0x000038A0
	 { 345, -60, -92, 0, -8476, 5671, 253, 118, 239, 255 }, // 0x000038B0
	 { 454, -10, 22, 0, -7918, 6255, 2, 117, 231, 255 }, // 0x000038C0
	 { 110, 0, -243, 0, -9675, 4900, 11, 119, 4, 255 }, // 0x000038D0
	 { 379, -60, -219, 0, -8299, 5021, 9, 119, 4, 255 }, // 0x000038E0
	 { 401, -60, -400, 0, -8188, 4098, 255, 118, 16, 255 }, // 0x000038F0
	 { 222, 0, -399, 0, -9105, 4101, 24, 117, 7, 255 }, // 0x00003900
	 { 321, -28, -485, 0, -8599, 3660, 21, 113, 34, 255 }, // 0x00003910
	 { 618, 0, -421, 0, -7078, 3988, 238, 117, 15, 255 }, // 0x00003920
	 { 443, -28, -487, 0, -7972, 3651, 242, 111, 43, 255 }, // 0x00003930
	 { 504, 0, -528, 0, -7659, 3442, 12, 72, 95, 255 }, // 0x00003940
	 { 259, 0, -524, 0, -8912, 3459, 17, 71, 95, 255 }, // 0x00003950
	 { 1756, 367, -246, 0, -1250, 4884, 8, 117, 23, 255 }, // 0x00003960
	 { 1392, 346, -283, 0, -3112, 4693, 176, 77, 45, 255 }, // 0x00003970
	 { 1484, 220, 26, 0, -2642, 6277, 154, 30, 55, 255 }, // 0x00003980
	 { 1472, 220, 186, 0, -2705, 7097, 162, 28, 188, 255 }, // 0x00003990
	 { 1392, 200, 283, 0, -3112, 7595, 159, 49, 207, 255 }, // 0x000039A0
	 { 1756, 338, 188, 0, -1250, 7105, 18, 118, 2, 255 }, // 0x000039B0
	 { 1756, 385, -716, 0, -1250, 2480, 26, 115, 19, 255 }, // 0x000039C0
	 { 1146, 660, -1447, 0, -4374, -1267, 5, 114, 36, 255 }, // 0x000039D0
	 { 1154, 400, -675, 0, -4334, 2688, 227, 73, 90, 255 }, // 0x000039E0
	 { -1472, -80, -6, 0, -17778, 6114, 94, 60, 214, 255 }, // 0x000039F0
	 { -775, 120, 173, 0, -14206, 7028, 2, 117, 231, 255 }, // 0x00003A00
	 { -734, 0, -145, 0, -13999, 5403, 250, 118, 239, 255 }, // 0x00003A10
	 { -1473, -80, -368, 0, -17780, 4257, 59, 104, 5, 255 }, // 0x00003A20
	 { -701, 0, -301, 0, -13829, 4601, 251, 119, 2, 255 }, // 0x00003A30
	 { -1472, 0, -850, 0, -17778, 1792, 93, 65, 38, 255 }, // 0x00003A40
	 { 1507, 220, 88, 0, -2525, 6596, 148, 51, 11, 255 }, // 0x00003A50
	 { 1503, 220, 144, 0, -2546, 6882, 154, 50, 218, 255 }, // 0x00003A60
	 { 1756, 338, 188, 0, -1250, 7105, 18, 118, 2, 255 }, // 0x00003A70
	 { 1472, 220, 186, 0, -2705, 7097, 162, 28, 188, 255 }, // 0x00003A80
	 { 1756, 385, -716, 0, -1250, 2480, 26, 115, 19, 255 }, // 0x00003A90
	 { 1392, 346, -283, 0, -3112, 4693, 176, 77, 45, 255 }, // 0x00003AA0
	 { 1756, 367, -246, 0, -1250, 4884, 8, 117, 23, 255 }, // 0x00003AB0
	 { 1392, 200, 283, 0, -3112, 7595, 159, 49, 207, 255 }, // 0x00003AC0
	 { 1392, 200, 876, 0, -3112, 10628, 214, 112, 254, 255 }, // 0x00003AD0
	 { -88, 380, -966, 0, -10693, 1197, 1, 86, 83, 255 }, // 0x00003AE0
	 { -160, 380, -1409, 0, -11059, -1071, 253, 84, 85, 255 }, // 0x00003AF0
	 { -539, 380, -1137, 0, -12999, 322, 235, 72, 93, 255 }, // 0x00003B00
	 { -525, 200, -935, 0, -12930, 1354, 189, 90, 42, 255 }, // 0x00003B10
	 { -88, 191, -966, 0, -10693, 1197, 230, 92, 72, 255 }, // 0x00003B20
	 { -539, 200, -1137, 0, -12999, 322, 225, 16, 114, 255 }, // 0x00003B30
	 { -269, 191, -775, 0, -11619, 2177, 235, 86, 80, 255 }, // 0x00003B40
	 { -32, 191, -778, 0, -10403, 2162, 195, 71, 74, 255 }, // 0x00003B50
	 { 1484, 220, 26, 0, -2642, 6277, 154, 30, 55, 255 }, // 0x00003B60
	 { 1916, 0, 223, 0, -431, 7284, 255, 100, 190, 255 }, // 0x00003B70
	 { 2054, -1, 64, 0, 277, 6471, 36, 108, 36, 255 }, // 0x00003B80
	 { 1916, 0, 63, 0, -431, 6465, 252, 85, 84, 255 }, // 0x00003B90
	 { 2231, -1, 182, 0, 1183, 7077, 203, 94, 204, 255 }, // 0x00003BA0
	 { 2294, -1, -616, 0, 1506, 2990, 28, 87, 77, 255 }, // 0x00003BB0
	 { 2054, -1, -416, 0, 277, 4014, 80, 70, 54, 255 }, // 0x00003BC0
	 { 2294, -1, -416, 0, 1506, 4014, 221, 107, 217, 255 }, // 0x00003BD0
	 { 2534, -1, -616, 0, 2734, 2990, 22, 101, 60, 255 }, // 0x00003BE0
	 { 2534, -1, -416, 0, 2734, 4014, 5, 85, 172, 255 }, // 0x00003BF0
	 { 2993, -1, -359, 0, 5083, 4306, 30, 109, 217, 255 }, // 0x00003C00
	 { 2760, -1, -803, 0, 3892, 2032, 63, 101, 15, 255 }, // 0x00003C10
};

Vtx_t _spot04_room_0_vertices_00003C20[32] = 
{
	 { 120, 320, -988, 0, -9624, 1085, 241, 114, 34, 255 }, // 0x00003C20
	 { 259, 320, -524, 0, -8912, 3459, 228, 69, 93, 255 }, // 0x00003C30
	 { 500, 320, -1087, 0, -7681, 578, 206, 96, 50, 255 }, // 0x00003C40
	 { 504, 320, -528, 0, -7659, 3442, 20, 57, 103, 255 }, // 0x00003C50
	 { 735, 320, -715, 0, -6479, 2485, 243, 27, 116, 255 }, // 0x00003C60
	 { 1916, 0, 223, 0, -431, 7284, 255, 100, 190, 255 }, // 0x00003C70
	 { 1916, 0, 63, 0, -431, 6465, 252, 85, 84, 255 }, // 0x00003C80
	 { 1516, 0, 23, 0, -2479, 6260, 228, 100, 59, 255 }, // 0x00003C90
	 { 1516, 0, 183, 0, -2479, 7079, 245, 98, 188, 255 }, // 0x00003CA0
	 { 2054, -1, 64, 0, 277, 6471, 36, 108, 36, 255 }, // 0x00003CB0
	 { 2231, -1, 182, 0, 1183, 7077, 203, 94, 204, 255 }, // 0x00003CC0
	 { 2294, -1, -416, 0, 1506, 4014, 221, 107, 217, 255 }, // 0x00003CD0
	 { 2054, -1, -416, 0, 277, 4014, 80, 70, 54, 255 }, // 0x00003CE0
	 { -734, 0, -145, 0, -13999, 5403, 250, 118, 239, 255 }, // 0x00003CF0
	 { -1473, -80, -368, 0, -17780, 4257, 59, 104, 5, 255 }, // 0x00003D00
	 { -1472, -80, -6, 0, -17778, 6114, 94, 60, 214, 255 }, // 0x00003D10
	 { -701, 0, -301, 0, -13829, 4601, 251, 119, 2, 255 }, // 0x00003D20
	 { 2366, 199, -572, 0, 1876, 3214, 28, 52, 104, 255 }, // 0x00003D30
	 { 2581, 199, -518, 0, 2973, 3491, 31, 31, 111, 255 }, // 0x00003D40
	 { 2358, 330, -1308, 0, 1833, -553, 22, 116, 16, 255 }, // 0x00003D50
	 { 1756, 385, -716, 0, -1250, 2480, 26, 115, 19, 255 }, // 0x00003D60
	 { 2054, 203, -416, 0, 277, 4014, 88, 31, 74, 255 }, // 0x00003D70
	 { 2054, 239, 64, 0, 277, 6471, 52, 79, 73, 255 }, // 0x00003D80
	 { 1756, 367, -246, 0, -1250, 4884, 8, 117, 23, 255 }, // 0x00003D90
	 { 2294, 199, -416, 0, 1506, 4014, 204, 86, 191, 255 }, // 0x00003DA0
	 { 2231, 240, 182, 0, 1183, 7077, 194, 42, 163, 255 }, // 0x00003DB0
	 { 2680, 304, -48, 0, 3480, 5900, 248, 117, 233, 255 }, // 0x00003DC0
	 { 2534, 199, -416, 0, 2734, 4014, 4, 70, 159, 255 }, // 0x00003DD0
	 { 1943, 224, 60, 0, -291, 6450, 80, 53, 71, 255 }, // 0x00003DE0
	 { 1756, 338, 188, 0, -1250, 7105, 18, 118, 2, 255 }, // 0x00003DF0
	 { 1927, 204, 129, 0, -372, 6803, 118, 15, 5, 255 }, // 0x00003E00
	 { 1940, 224, 220, 0, -305, 7271, 90, 10, 178, 255 }, // 0x00003E10
};

Vtx_t _spot04_room_0_vertices_00003E20[32] = 
{
	 { 1381, 360, -532, 0, -3170, 3418, 205, 108, 249, 255 }, // 0x00003E20
	 { 1278, 360, -470, 0, -3694, 3737, 161, 70, 236, 255 }, // 0x00003E30
	 { 1392, 346, -283, 0, -3112, 4693, 176, 77, 45, 255 }, // 0x00003E40
	 { 1756, 385, -716, 0, -1250, 2480, 26, 115, 19, 255 }, // 0x00003E50
	 { 1154, 400, -675, 0, -4334, 2688, 227, 73, 90, 255 }, // 0x00003E60
	 { 1319, 360, -635, 0, -3489, 2893, 251, 92, 75, 255 }, // 0x00003E70
	 { 1216, 360, -573, 0, -4014, 3213, 245, 59, 103, 255 }, // 0x00003E80
	 { 1216, 240, -573, 0, -4014, 3213, 182, 36, 87, 255 }, // 0x00003E90
	 { 1278, 240, -470, 0, -3694, 3737, 145, 36, 25, 255 }, // 0x00003EA0
	 { 1381, 240, -532, 0, -3170, 3418, 161, 69, 233, 255 }, // 0x00003EB0
	 { 1319, 240, -635, 0, -3489, 2893, 233, 69, 95, 255 }, // 0x00003EC0
	 { -139, 160, 1799, 0, -10950, 15354, 3, 117, 23, 255 }, // 0x00003ED0
	 { -40, 200, 1520, 0, -10445, 13926, 14, 71, 161, 255 }, // 0x00003EE0
	 { -400, 280, 1160, 0, -12288, 12083, 46, 92, 195, 255 }, // 0x00003EF0
	 { 320, 200, 1240, 0, -8602, 12493, 234, 110, 216, 255 }, // 0x00003F00
	 { 3042, 144, 687, 0, 5333, 9659, 8, 114, 34, 255 }, // 0x00003F10
	 { 1756, 338, 188, 0, -1250, 7105, 18, 118, 2, 255 }, // 0x00003F20
	 { 1392, 200, 876, 0, -3112, 10628, 214, 112, 254, 255 }, // 0x00003F30
	 { 1461, 80, 1199, 0, -2758, 12282, 12, 114, 33, 255 }, // 0x00003F40
	 { 860, -20, 14, 0, -5838, 6214, 22, 117, 14, 255 }, // 0x00003F50
	 { 1053, -60, 39, 0, -4851, 6346, 0, 115, 222, 255 }, // 0x00003F60
	 { 1053, -60, -61, 0, -4851, 5834, 19, 108, 48, 255 }, // 0x00003F70
	 { 914, 0, -37, 0, -5560, 5956, 24, 111, 37, 255 }, // 0x00003F80
	 { 565, 0, -53, 0, -7347, 5873, 241, 118, 11, 255 }, // 0x00003F90
	 { 677, -10, 12, 0, -6774, 6205, 251, 116, 30, 255 }, // 0x00003FA0
	 { 691, 0, -247, 0, -6703, 4880, 244, 119, 254, 255 }, // 0x00003FB0
	 { 859, -10, 80, 0, -5844, 6554, 27, 116, 246, 255 }, // 0x00003FC0
	 { 509, -20, -16, 0, -7633, 6064, 244, 119, 4, 255 }, // 0x00003FD0
	 { 345, -60, -92, 0, -8476, 5671, 253, 118, 239, 255 }, // 0x00003FE0
	 { 454, -10, 22, 0, -7918, 6255, 2, 117, 231, 255 }, // 0x00003FF0
	 { 302, 0, 62, 0, -8692, 6461, 5, 118, 237, 255 }, // 0x00004000
	 { 666, 0, 255, 0, -6831, 7447, 1, 119, 254, 255 }, // 0x00004010
};

Vtx_t _spot04_room_0_vertices_00004020[32] = 
{
	 { 661, -10, 88, 0, -6857, 6596, 2, 118, 239, 255 }, // 0x00004020
	 { 454, -10, 22, 0, -7918, 6255, 2, 117, 231, 255 }, // 0x00004030
	 { 666, 0, 255, 0, -6831, 7447, 1, 119, 254, 255 }, // 0x00004040
	 { 873, 0, 189, 0, -5772, 7114, 14, 114, 225, 255 }, // 0x00004050
	 { 859, -10, 80, 0, -5844, 6554, 27, 116, 246, 255 }, // 0x00004060
	 { 860, -20, 14, 0, -5838, 6214, 22, 117, 14, 255 }, // 0x00004070
	 { 914, 0, -37, 0, -5560, 5956, 24, 111, 37, 255 }, // 0x00004080
	 { 677, -10, 12, 0, -6774, 6205, 251, 116, 30, 255 }, // 0x00004090
	 { 669, -20, 50, 0, -6816, 6400, 2, 119, 252, 255 }, // 0x000040A0
	 { 565, 0, -53, 0, -7347, 5873, 241, 118, 11, 255 }, // 0x000040B0
	 { 509, -20, -16, 0, -7633, 6064, 244, 119, 4, 255 }, // 0x000040C0
	 { 923, -40, 189, 0, -5516, 7114, 59, 101, 229, 255 }, // 0x000040D0
	 { 1053, -60, 119, 0, -4851, 6755, 218, 111, 234, 255 }, // 0x000040E0
	 { 983, -50, 179, 0, -5209, 7063, 193, 95, 221, 255 }, // 0x000040F0
	 { 1173, 0, 119, 0, -4236, 6755, 60, 101, 22, 255 }, // 0x00004100
	 { 983, 0, 179, 0, -5209, 7063, 200, 102, 230, 255 }, // 0x00004110
	 { 1123, 0, 179, 0, -4492, 7063, 77, 87, 28, 255 }, // 0x00004120
	 { 1053, 0, 119, 0, -4851, 6755, 183, 88, 222, 255 }, // 0x00004130
	 { 923, -40, 269, 0, -5516, 7523, 68, 98, 3, 255 }, // 0x00004140
	 { 983, -60, 279, 0, -5209, 7575, 241, 118, 9, 255 }, // 0x00004150
	 { 1306, -60, 212, 0, -3555, 7227, 233, 111, 37, 255 }, // 0x00004160
	 { 1123, -60, 279, 0, -4492, 7575, 41, 112, 7, 255 }, // 0x00004170
	 { 1392, -60, 283, 0, -3112, 7595, 204, 108, 251, 255 }, // 0x00004180
	 { 1123, -60, 179, 0, -4492, 7063, 74, 94, 252, 255 }, // 0x00004190
	 { 1233, -60, 179, 0, -3929, 7063, 215, 111, 14, 255 }, // 0x000041A0
	 { 1173, -60, 119, 0, -4236, 6755, 83, 84, 20, 255 }, // 0x000041B0
	 { 1293, -60, -21, 0, -3622, 6039, 217, 110, 233, 255 }, // 0x000041C0
	 { 1093, -60, -61, 0, -4646, 5834, 43, 103, 43, 255 }, // 0x000041D0
	 { 1233, -60, -1, 0, -3929, 6141, 213, 109, 233, 255 }, // 0x000041E0
	 { 1173, -60, 39, 0, -4236, 6346, 50, 104, 227, 255 }, // 0x000041F0
	 { 1093, -60, -101, 0, -4646, 5629, 59, 103, 15, 255 }, // 0x00004200
	 { 1392, -60, -283, 0, -3112, 4693, 246, 98, 67, 255 }, // 0x00004210
};

Vtx_t _spot04_room_0_vertices_00004220[62] = 
{
	 { 1093, -60, -101, 0, -4646, 5629, 59, 103, 15, 255 }, // 0x00004220
	 { 1392, -60, -283, 0, -3112, 4693, 246, 98, 67, 255 }, // 0x00004230
	 { 1151, 0, -240, 0, -4348, 4915, 28, 105, 50, 255 }, // 0x00004240
	 { 1053, -40, -101, 0, -4851, 5629, 13, 117, 22, 255 }, // 0x00004250
	 { 914, 0, -37, 0, -5560, 5956, 24, 111, 37, 255 }, // 0x00004260
	 { 1053, -60, -61, 0, -4851, 5834, 19, 108, 48, 255 }, // 0x00004270
	 { 1053, -60, 119, 0, -4851, 6755, 218, 111, 234, 255 }, // 0x00004280
	 { 1053, -60, 39, 0, -4851, 6346, 0, 115, 222, 255 }, // 0x00004290
	 { 859, -10, 80, 0, -5844, 6554, 27, 116, 246, 255 }, // 0x000042A0
	 { 1173, -60, 39, 0, -4236, 6346, 50, 104, 227, 255 }, // 0x000042B0
	 { 1093, -60, -61, 0, -4646, 5834, 43, 103, 43, 255 }, // 0x000042C0
	 { 1173, -60, 119, 0, -4236, 6755, 83, 84, 20, 255 }, // 0x000042D0
	 { 1233, -60, 179, 0, -3929, 7063, 215, 111, 14, 255 }, // 0x000042E0
	 { 1233, -60, -1, 0, -3929, 6141, 213, 109, 233, 255 }, // 0x000042F0
	 { 923, -40, 269, 0, -5516, 7523, 68, 98, 3, 255 }, // 0x00004300
	 { 873, 0, 269, 0, -5772, 7523, 19, 116, 22, 255 }, // 0x00004310
	 { 931, 0, 394, 0, -5472, 8163, 24, 114, 229, 255 }, // 0x00004320
	 { 923, -40, 189, 0, -5516, 7114, 59, 101, 229, 255 }, // 0x00004330
	 { 873, 0, 189, 0, -5772, 7114, 14, 114, 225, 255 }, // 0x00004340
	 { 666, 0, 255, 0, -6831, 7447, 1, 119, 254, 255 }, // 0x00004350
	 { 1053, 0, -101, 0, -4851, 5629, 187, 69, 187, 255 }, // 0x00004360
	 { 1053, 0, -61, 0, -4851, 5834, 187, 69, 69, 255 }, // 0x00004370
	 { 1093, 0, -61, 0, -4646, 5834, 69, 69, 69, 255 }, // 0x00004380
	 { 1093, 0, -101, 0, -4646, 5629, 69, 69, 187, 255 }, // 0x00004390
	 { 1053, 0, 39, 0, -4851, 6346, 187, 69, 187, 255 }, // 0x000043A0
	 { 1053, 0, 119, 0, -4851, 6755, 183, 88, 222, 255 }, // 0x000043B0
	 { 1173, 0, 119, 0, -4236, 6755, 60, 101, 22, 255 }, // 0x000043C0
	 { 1173, 0, 39, 0, -4236, 6346, 69, 69, 187, 255 }, // 0x000043D0
	 { 923, 0, 269, 0, -5516, 7523, 69, 69, 69, 255 }, // 0x000043E0
	 { 923, 0, 189, 0, -5516, 7114, 69, 69, 187, 255 }, // 0x000043F0
	 { 983, 0, 179, 0, -5209, 7063, 200, 102, 230, 255 }, // 0x00004400
	 { 983, 0, 279, 0, -5209, 7575, 187, 69, 69, 255 }, // 0x00004410
	 { 1123, 0, 279, 0, -4492, 7575, 69, 69, 69, 255 }, // 0x00004420
	 { 1123, 0, 179, 0, -4492, 7063, 77, 87, 28, 255 }, // 0x00004430
	 { 1233, -24, -1, 0, -3929, 6141, 162, 52, 203, 255 }, // 0x00004440
	 { 1233, -24, 179, 0, -3929, 7063, 172, 76, 38, 255 }, // 0x00004450
	 { 1293, 0, -21, 0, -3622, 6039, 205, 102, 222, 255 }, // 0x00004460
	 { 1306, 0, 212, 0, -3555, 7227, 212, 96, 56, 255 }, // 0x00004470
	 { 666, 0, 255, 0, -6831, 7447, 1, 119, 254, 255 }, // 0x00004480
	 { 302, 0, 62, 0, -8692, 6461, 5, 118, 237, 255 }, // 0x00004490
	 { 160, 0, 500, 0, -9421, 8704, 236, 118, 6, 255 }, // 0x000044A0
	 { 1392, 0, 876, 0, -3112, 10628, 234, 116, 240, 255 }, // 0x000044B0
	 { 931, 0, 394, 0, -5472, 8163, 24, 114, 229, 255 }, // 0x000044C0
	 { 691, 0, -247, 0, -6703, 4880, 244, 119, 254, 255 }, // 0x000044D0
	 { 914, 0, -37, 0, -5560, 5956, 24, 111, 37, 255 }, // 0x000044E0
	 { 1151, 0, -240, 0, -4348, 4915, 28, 105, 50, 255 }, // 0x000044F0
	 { 1154, 0, -675, 0, -4334, 2688, 207, 77, 78, 255 }, // 0x00004500
	 { 1392, 0, -283, 0, -3112, 4693, 159, 45, 54, 255 }, // 0x00004510
	 { 1516, 0, 23, 0, -2479, 6260, 228, 100, 59, 255 }, // 0x00004520
	 { 1516, 0, 183, 0, -2479, 7079, 245, 98, 188, 255 }, // 0x00004530
	 { 1392, 0, 283, 0, -3112, 7595, 142, 35, 0, 255 }, // 0x00004540
	 { 1123, 0, 379, 0, -4492, 8087, 69, 69, 187, 255 }, // 0x00004550
	 { 1023, 0, 379, 0, -5004, 8087, 187, 69, 187, 255 }, // 0x00004560
	 { 1023, 0, 419, 0, -5004, 8291, 231, 115, 234, 255 }, // 0x00004570
	 { 1123, 0, 419, 0, -4492, 8291, 33, 113, 234, 255 }, // 0x00004580
	 { 1392, 0, 445, 0, -3112, 8424, 219, 102, 207, 255 }, // 0x00004590
	 { 1392, -60, 283, 0, -3112, 7595, 204, 108, 251, 255 }, // 0x000045A0
	 { 1123, -40, 379, 0, -4492, 8087, 27, 99, 194, 255 }, // 0x000045B0
	 { 1023, -40, 379, 0, -5004, 8087, 253, 97, 186, 255 }, // 0x000045C0
	 { 983, -60, 279, 0, -5209, 7575, 241, 118, 9, 255 }, // 0x000045D0
	 { 1123, -60, 279, 0, -4492, 7575, 41, 112, 7, 255 }, // 0x000045E0
	 { 923, -40, 269, 0, -5516, 7523, 68, 98, 3, 255 }, // 0x000045F0
};

Vtx_t _spot04_room_0_vertices_00004600[30] = 
{
	 { -139, 160, 1799, 0, -10950, 15354, 3, 117, 23, 255 }, // 0x00004600
	 { -400, 280, 1160, 0, -12288, 12083, 46, 92, 195, 255 }, // 0x00004610
	 { -749, 280, 1059, 0, -14075, 11566, 8, 72, 161, 255 }, // 0x00004620
	 { -821, 280, 1059, 0, -14444, 11566, 4, 94, 182, 255 }, // 0x00004630
	 { -1634, 160, 1233, 0, -18607, 12455, 245, 115, 30, 255 }, // 0x00004640
	 { -1472, 280, 850, 0, -17778, 10496, 86, 68, 208, 255 }, // 0x00004650
	 { -1472, 120, -6, 0, -17778, 6114, 86, 79, 230, 255 }, // 0x00004660
	 { -1472, 120, 850, 0, -17778, 10496, 61, 93, 212, 255 }, // 0x00004670
	 { -1185, 120, 819, 0, -16308, 10338, 0, 120, 0, 255 }, // 0x00004680
	 { -821, 120, 1059, 0, -14444, 11566, 6, 94, 182, 255 }, // 0x00004690
	 { -200, 120, 760, 0, -11264, 10035, 70, 96, 11, 255 }, // 0x000046A0
	 { -525, 120, 979, 0, -12929, 11157, 0, 120, 0, 255 }, // 0x000046B0
	 { -400, 120, 1160, 0, -12288, 12083, 81, 63, 195, 255 }, // 0x000046C0
	 { -749, 120, 1059, 0, -14075, 11566, 5, 94, 182, 255 }, // 0x000046D0
	 { -785, 120, 1019, 0, -14260, 11362, 0, 120, 0, 255 }, // 0x000046E0
	 { -805, 120, 1059, 0, -14362, 11566, 23, 115, 232, 255 }, // 0x000046F0
	 { -765, 120, 1059, 0, -14157, 11566, 233, 115, 232, 255 }, // 0x00004700
	 { -735, 120, 1579, 0, -14004, 14229, 233, 117, 244, 255 }, // 0x00004710
	 { -735, 120, 1479, 0, -14004, 13717, 239, 117, 17, 255 }, // 0x00004720
	 { -835, 120, 1479, 0, -14516, 13717, 13, 118, 13, 255 }, // 0x00004730
	 { -635, 120, 1579, 0, -13492, 14229, 12, 108, 207, 255 }, // 0x00004740
	 { -835, 120, 1479, 0, -14516, 13717, 13, 118, 13, 255 }, // 0x00004750
	 { -735, 120, 1479, 0, -14004, 13717, 239, 117, 17, 255 }, // 0x00004760
	 { -835, 120, 1379, 0, -14516, 13205, 49, 98, 49, 255 }, // 0x00004770
	 { -735, 120, 1379, 0, -14004, 13205, 207, 98, 49, 255 }, // 0x00004780
	 { -835, 120, 1579, 0, -14516, 14229, 64, 96, 224, 255 }, // 0x00004790
	 { -1035, 120, 1579, 0, -15540, 14229, 36, 108, 220, 255 }, // 0x000047A0
	 { -735, 120, 1579, 0, -14004, 14229, 233, 117, 244, 255 }, // 0x000047B0
	 { -835, 120, 1679, 0, -14516, 14741, 40, 80, 176, 255 }, // 0x000047C0
	 { -735, 120, 1679, 0, -14004, 14741, 158, 49, 207, 255 }, // 0x000047D0
};

Vtx_t _spot04_room_0_vertices_000047E0[8] = 
{
	 { -1634, -448, 1692, 0, 0, 0, 0, 0, 0, 0 }, // 0x000047E0
	 { 3042, -448, 1692, 0, 0, 0, 0, 0, 0, 0 }, // 0x000047F0
	 { -1634, 123, -1550, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004800
	 { 3042, 123, -1550, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004810
	 { -1634, 167, 1800, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004820
	 { 3042, 167, 1800, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004830
	 { -1634, 739, -1441, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004840
	 { 3042, 739, -1441, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004850
};

Gfx _spot04_room_0_dlist_00004860[] =
{
	gsDPPipeSync(), // 0x00004860
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004868
	gsSPVertex(_spot04_room_0_vertices_000047E0, 8, 0), // 0x00004870
	gsSPCullDisplayList(0, 7), // 0x00004878
	gsDPPipeSync(), // 0x00004880
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004888
	gsDPPipeSync(), // 0x00004890
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004898
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000048A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_scene_tex_00010618), // 0x000048A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 1, 0, 5, 1), // 0x000048B0
	gsDPLoadSync(), // 0x000048B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000048C0
	gsDPPipeSync(), // 0x000048C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 1, 0, 5, 1), // 0x000048D0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000048D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000FE18), // 0x000048E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 14, 0, 5, 14), // 0x000048E8
	gsDPLoadSync(), // 0x000048F0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000048F8
	gsDPPipeSync(), // 0x00004900
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 14, 0, 5, 14), // 0x00004908
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00004910
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004918
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004920
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00004928
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00004930
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004938
	gsSPVertex(_spot04_room_0_vertices_00003440, 32, 0), // 0x00004940
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004948
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004950
	gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0), // 0x00004958
	gsSP2Triangles(12, 10, 13, 0, 14, 12, 13, 0), // 0x00004960
	gsSP2Triangles(15, 16, 17, 0, 15, 18, 16, 0), // 0x00004968
	gsSP2Triangles(16, 4, 17, 0, 19, 20, 8, 0), // 0x00004970
	gsSP2Triangles(20, 21, 8, 0, 2, 22, 0, 0), // 0x00004978
	gsSP2Triangles(22, 23, 0, 0, 24, 25, 6, 0), // 0x00004980
	gsSP2Triangles(24, 6, 5, 0, 25, 26, 6, 0), // 0x00004988
	gsSP2Triangles(27, 28, 29, 0, 28, 27, 30, 0), // 0x00004990
	gsSPVertex(_spot04_room_0_vertices_00003630, 32, 0), // 0x00004998
	gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0), // 0x000049A0
	gsSP2Triangles(1, 3, 4, 0, 5, 6, 7, 0), // 0x000049A8
	gsSP2Triangles(6, 8, 7, 0, 8, 6, 9, 0), // 0x000049B0
	gsSP2Triangles(4, 10, 11, 0, 4, 11, 9, 0), // 0x000049B8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000049C0
	gsSP2Triangles(12, 15, 16, 0, 17, 18, 19, 0), // 0x000049C8
	gsSP2Triangles(17, 20, 18, 0, 17, 21, 20, 0), // 0x000049D0
	gsSP2Triangles(21, 22, 20, 0, 18, 23, 19, 0), // 0x000049D8
	gsSP2Triangles(13, 24, 25, 0, 13, 25, 14, 0), // 0x000049E0
	gsSP2Triangles(26, 27, 28, 0, 26, 28, 20, 0), // 0x000049E8
	gsSP2Triangles(29, 27, 26, 0, 29, 26, 2, 0), // 0x000049F0
	gsSP2Triangles(2, 26, 0, 0, 30, 0, 26, 0), // 0x000049F8
	gsSP2Triangles(26, 31, 30, 0, 31, 25, 30, 0), // 0x00004A00
	gsSP1Triangle(30, 25, 24, 0), // 0x00004A08
	gsSPVertex(_spot04_room_0_vertices_00003830, 32, 0), // 0x00004A10
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0), // 0x00004A18
	gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0), // 0x00004A20
	gsSP2Triangles(2, 9, 8, 0, 0, 2, 8, 0), // 0x00004A28
	gsSP2Triangles(10, 0, 8, 0, 11, 10, 8, 0), // 0x00004A30
	gsSP2Triangles(7, 11, 8, 0, 11, 7, 12, 0), // 0x00004A38
	gsSP2Triangles(13, 10, 11, 0, 13, 11, 12, 0), // 0x00004A40
	gsSP2Triangles(13, 12, 14, 0, 7, 15, 12, 0), // 0x00004A48
	gsSP2Triangles(12, 15, 16, 0, 15, 17, 16, 0), // 0x00004A50
	gsSP2Triangles(12, 16, 14, 0, 18, 13, 14, 0), // 0x00004A58
	gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0), // 0x00004A60
	gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0), // 0x00004A68
	gsSPVertex(_spot04_room_0_vertices_00003A20, 32, 0), // 0x00004A70
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004A78
	gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0), // 0x00004A80
	gsSP2Triangles(5, 10, 11, 0, 12, 13, 14, 0), // 0x00004A88
	gsSP2Triangles(15, 16, 17, 0, 15, 18, 16, 0), // 0x00004A90
	gsSP2Triangles(18, 19, 16, 0, 9, 20, 3, 0), // 0x00004A98
	gsSP2Triangles(9, 3, 5, 0, 21, 22, 23, 0), // 0x00004AA0
	gsSP2Triangles(21, 24, 22, 0, 25, 26, 27, 0), // 0x00004AA8
	gsSP2Triangles(28, 25, 27, 0, 28, 27, 29, 0), // 0x00004AB0
	gsSP2Triangles(28, 29, 30, 0, 30, 31, 28, 0), // 0x00004AB8
	gsSPVertex(_spot04_room_0_vertices_00003C20, 32, 0), // 0x00004AC0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004AC8
	gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0), // 0x00004AD0
	gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0), // 0x00004AD8
	gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0), // 0x00004AE0
	gsSP2Triangles(13, 16, 14, 0, 17, 18, 19, 0), // 0x00004AE8
	gsSP2Triangles(17, 19, 20, 0, 17, 20, 21, 0), // 0x00004AF0
	gsSP2Triangles(20, 22, 21, 0, 20, 23, 22, 0), // 0x00004AF8
	gsSP2Triangles(24, 25, 26, 0, 27, 24, 26, 0), // 0x00004B00
	gsSP2Triangles(22, 23, 28, 0, 28, 23, 29, 0), // 0x00004B08
	gsSP2Triangles(30, 28, 29, 0, 29, 31, 30, 0), // 0x00004B10
	gsSPVertex(_spot04_room_0_vertices_00003E20, 32, 0), // 0x00004B18
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00004B20
	gsSP2Triangles(4, 5, 3, 0, 4, 6, 5, 0), // 0x00004B28
	gsSP2Triangles(3, 5, 0, 0, 7, 8, 9, 0), // 0x00004B30
	gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0), // 0x00004B38
	gsSP2Triangles(11, 14, 12, 0, 15, 16, 17, 0), // 0x00004B40
	gsSP2Triangles(14, 11, 18, 0, 18, 17, 14, 0), // 0x00004B48
	gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0), // 0x00004B50
	gsSP2Triangles(22, 19, 21, 0, 23, 24, 22, 0), // 0x00004B58
	gsSP2Triangles(25, 23, 22, 0, 19, 26, 20, 0), // 0x00004B60
	gsSP2Triangles(27, 23, 28, 0, 29, 27, 28, 0), // 0x00004B68
	gsSP1Triangle(29, 30, 31, 0), // 0x00004B70
	gsSPVertex(_spot04_room_0_vertices_00004020, 32, 0), // 0x00004B78
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004B80
	gsSP2Triangles(4, 0, 3, 0, 5, 6, 7, 0), // 0x00004B88
	gsSP2Triangles(5, 7, 8, 0, 0, 4, 5, 0), // 0x00004B90
	gsSP2Triangles(0, 5, 8, 0, 7, 9, 10, 0), // 0x00004B98
	gsSP2Triangles(8, 7, 10, 0, 1, 0, 8, 0), // 0x00004BA0
	gsSP2Triangles(1, 8, 10, 0, 4, 11, 12, 0), // 0x00004BA8
	gsSP2Triangles(12, 11, 13, 0, 14, 15, 16, 0), // 0x00004BB0
	gsSP2Triangles(15, 14, 17, 0, 13, 11, 18, 0), // 0x00004BB8
	gsSP2Triangles(13, 18, 19, 0, 20, 21, 22, 0), // 0x00004BC0
	gsSP2Triangles(20, 23, 21, 0, 24, 23, 20, 0), // 0x00004BC8
	gsSP2Triangles(24, 25, 23, 0, 26, 27, 28, 0), // 0x00004BD0
	gsSP2Triangles(27, 29, 28, 0, 30, 27, 26, 0), // 0x00004BD8
	gsSP1Triangle(30, 26, 31, 0), // 0x00004BE0
	gsSPVertex(_spot04_room_0_vertices_00004220, 32, 0), // 0x00004BE8
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00004BF0
	gsSP2Triangles(4, 3, 2, 0, 5, 3, 4, 0), // 0x00004BF8
	gsSP2Triangles(6, 7, 8, 0, 5, 7, 9, 0), // 0x00004C00
	gsSP2Triangles(9, 10, 5, 0, 11, 12, 13, 0), // 0x00004C08
	gsSP2Triangles(11, 13, 9, 0, 14, 15, 16, 0), // 0x00004C10
	gsSP2Triangles(17, 8, 18, 0, 15, 18, 19, 0), // 0x00004C18
	gsSP2Triangles(16, 15, 19, 0, 20, 21, 22, 0), // 0x00004C20
	gsSP2Triangles(20, 22, 23, 0, 24, 25, 26, 0), // 0x00004C28
	gsSP2Triangles(24, 26, 27, 0, 18, 15, 28, 0), // 0x00004C30
	gsSP1Triangle(18, 28, 29, 0), // 0x00004C38
	gsSPVertex(_spot04_room_0_vertices_00004400, 32, 0), // 0x00004C40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004C48
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00004C50
	gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0), // 0x00004C58
	gsSP2Triangles(12, 8, 11, 0, 13, 14, 15, 0), // 0x00004C60
	gsSP2Triangles(13, 15, 16, 0, 16, 15, 17, 0), // 0x00004C68
	gsSP2Triangles(17, 6, 18, 0, 6, 7, 19, 0), // 0x00004C70
	gsSP2Triangles(6, 19, 18, 0, 7, 20, 19, 0), // 0x00004C78
	gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0), // 0x00004C80
	gsSP2Triangles(25, 26, 27, 0, 25, 27, 24, 0), // 0x00004C88
	gsSP2Triangles(12, 23, 28, 0, 29, 28, 27, 0), // 0x00004C90
	gsSP2Triangles(27, 26, 30, 0, 27, 30, 29, 0), // 0x00004C98
	gsSP2Triangles(23, 12, 11, 0, 24, 23, 11, 0), // 0x00004CA0
	gsSP2Triangles(11, 25, 24, 0, 29, 31, 28, 0), // 0x00004CA8
	gsSP1Triangle(31, 12, 28, 0), // 0x00004CB0
	gsSPVertex(_spot04_room_0_vertices_00004600, 30, 0), // 0x00004CB8
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x00004CC0
	gsSP2Triangles(0, 3, 4, 0, 5, 4, 3, 0), // 0x00004CC8
	gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0), // 0x00004CD0
	gsSP2Triangles(10, 11, 12, 0, 12, 11, 13, 0), // 0x00004CD8
	gsSP2Triangles(8, 9, 14, 0, 14, 13, 11, 0), // 0x00004CE0
	gsSP2Triangles(14, 11, 8, 0, 9, 15, 14, 0), // 0x00004CE8
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 13, 0), // 0x00004CF0
	gsSP2Triangles(17, 18, 19, 0, 17, 20, 18, 0), // 0x00004CF8
	gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0), // 0x00004D00
	gsSP2Triangles(25, 21, 26, 0, 21, 25, 27, 0), // 0x00004D08
	gsSP2Triangles(28, 27, 25, 0, 28, 29, 27, 0), // 0x00004D10
	gsSPEndDisplayList(), // 0x00004D18
};

Vtx_t _spot04_room_0_vertices_00004D20[25] = 
{
	 { 4075, 490, -1475, 0, 8422, 205, 138, 17, 3, 255 }, // 0x00004D20
	 { 4242, 490, -1186, 0, 9618, 205, 194, 17, 101, 255 }, // 0x00004D30
	 { 4330, 1071, -1232, 0, 9829, -1283, 194, 17, 101, 255 }, // 0x00004D40
	 { 4159, 1071, -1530, 0, 8203, -1283, 138, 17, 3, 255 }, // 0x00004D50
	 { 4330, 1071, -1232, 0, 1506, -1283, 194, 17, 101, 255 }, // 0x00004D60
	 { 4242, 490, -1186, 0, 1294, 205, 194, 17, 101, 255 }, // 0x00004D70
	 { 4682, 439, -1156, 0, 2845, 335, 249, 10, 119, 255 }, // 0x00004D80
	 { 4560, 1071, -1197, 0, 2516, -1283, 249, 10, 119, 255 }, // 0x00004D90
	 { 4244, 1071, -1745, 0, 7196, -1283, 149, 10, 203, 255 }, // 0x00004DA0
	 { 4268, 439, -1872, 0, 6866, 335, 149, 10, 203, 255 }, // 0x00004DB0
	 { 3903, 917, -1652, 0, 7975, -890, 228, 0, 116, 255 }, // 0x00004DC0
	 { 3909, 982, -1650, 0, 7974, -1055, 228, 0, 116, 255 }, // 0x00004DD0
	 { 3402, 1020, -1771, 0, 7993, -1151, 228, 0, 116, 255 }, // 0x00004DE0
	 { 4152, 753, -1593, 0, 7943, -469, 228, 0, 116, 255 }, // 0x00004DF0
	 { 4170, 920, -1588, 0, 7938, -896, 228, 0, 116, 255 }, // 0x00004E00
	 { 4574, 942, -1195, 0, 2566, -951, 138, 0, 19, 255 }, // 0x00004E10
	 { 4576, 734, -1185, 0, 2557, -421, 138, 0, 19, 255 }, // 0x00004E20
	 { 4612, 891, -957, 0, 2449, -823, 138, 0, 19, 255 }, // 0x00004E30
	 { 4611, 998, -963, 0, 2450, -1095, 138, 0, 19, 255 }, // 0x00004E40
	 { 4695, 1038, -426, 0, 2371, -1197, 138, 0, 19, 255 }, // 0x00004E50
	 { 4290, 682, -1836, 0, 6856, -287, 153, 0, 60, 255 }, // 0x00004E60
	 { 4307, 860, -1806, 0, 6848, -744, 153, 0, 60, 255 }, // 0x00004E70
	 { 4199, 932, -1992, 0, 6882, -927, 153, 0, 60, 255 }, // 0x00004E80
	 { 4195, 838, -2000, 0, 6883, -686, 153, 0, 60, 255 }, // 0x00004E90
	 { 3895, 968, -2519, 0, 6910, -1018, 153, 0, 60, 255 }, // 0x00004EA0
};

Vtx_t _spot04_room_0_vertices_00004EB0[32] = 
{
	 { 4731, 1050, -299, 0, 256, 758, 14, 145, 42, 255 }, // 0x00004EB0
	 { 4731, 735, -299, 0, 256, 1024, 167, 0, 176, 255 }, // 0x00004EC0
	 { 4289, 903, -413, 0, 176, 1024, 11, 0, 137, 255 }, // 0x00004ED0
	 { 4289, 1008, -413, 0, 176, 793, 248, 137, 250, 255 }, // 0x00004EE0
	 { 5210, 885, -880, 0, 362, 1024, 177, 0, 166, 255 }, // 0x00004EF0
	 { 4731, 735, -299, 0, 389, 1024, 167, 0, 176, 255 }, // 0x00004F00
	 { 4731, 1050, -299, 0, 389, 758, 14, 145, 42, 255 }, // 0x00004F10
	 { 5210, 990, -880, 0, 362, 808, 254, 137, 247, 255 }, // 0x00004F20
	 { 3470, 834, -2213, 0, 197, 1024, 86, 0, 83, 255 }, // 0x00004F30
	 { 3800, 659, -2663, 0, 334, 1024, 50, 0, 108, 255 }, // 0x00004F40
	 { 3800, 974, -2663, 0, 334, 821, 50, 164, 197, 255 }, // 0x00004F50
	 { 3470, 939, -2213, 0, 197, 850, 3, 137, 14, 255 }, // 0x00004F60
	 { 3800, 974, -2663, 0, 326, 821, 50, 164, 197, 255 }, // 0x00004F70
	 { 3800, 659, -2663, 0, 326, 1024, 50, 0, 108, 255 }, // 0x00004F80
	 { 4340, 857, -2624, 0, 188, 1024, 7, 0, 119, 255 }, // 0x00004F90
	 { 4340, 963, -2624, 0, 188, 830, 18, 138, 10, 255 }, // 0x00004FA0
	 { 4289, 903, -413, 0, 274, 1024, 11, 0, 137, 255 }, // 0x00004FB0
	 { 3750, 840, -374, 0, 262, 1024, 70, 0, 159, 255 }, // 0x00004FC0
	 { 3750, 1155, -374, 0, 262, 672, 231, 147, 43, 255 }, // 0x00004FD0
	 { 4289, 1008, -413, 0, 274, 793, 248, 137, 250, 255 }, // 0x00004FE0
	 { 3548, 864, -1148, 0, 652, 1024, 108, 0, 205, 255 }, // 0x00004FF0
	 { 3025, 727, -1868, 0, 338, 1024, 118, 0, 17, 255 }, // 0x00005000
	 { 3025, 1042, -1868, 0, 338, 765, 215, 144, 255, 255 }, // 0x00005010
	 { 3548, 970, -1148, 0, 652, 825, 16, 138, 9, 255 }, // 0x00005020
	 { 3750, 1155, -374, 0, 342, 672, 231, 147, 43, 255 }, // 0x00005030
	 { 3750, 840, -374, 0, 342, 1024, 70, 0, 159, 255 }, // 0x00005040
	 { 3548, 864, -1148, 0, 525, 1024, 108, 0, 205, 255 }, // 0x00005050
	 { 3548, 970, -1148, 0, 525, 825, 16, 138, 9, 255 }, // 0x00005060
	 { 3025, 1042, -1868, 0, 243, 765, 215, 144, 255, 255 }, // 0x00005070
	 { 3025, 727, -1868, 0, 243, 1024, 118, 0, 17, 255 }, // 0x00005080
	 { 3470, 834, -2213, 0, 318, 1024, 86, 0, 83, 255 }, // 0x00005090
	 { 3470, 939, -2213, 0, 318, 850, 3, 137, 14, 255 }, // 0x000050A0
};

Vtx_t _spot04_room_0_vertices_000050B0[32] = 
{
	 { 3025, 1042, -1868, 0, 338, 765, 215, 144, 255, 255 }, // 0x000050B0
	 { 3073, 1741, -2073, 0, 338, 0, 197, 230, 155, 255 }, // 0x000050C0
	 { 3417, 1879, -2304, 0, 1024, 0, 170, 239, 175, 255 }, // 0x000050D0
	 { 3470, 939, -2213, 0, 1024, 850, 3, 137, 14, 255 }, // 0x000050E0
	 { 3470, 939, -2213, 0, 1024, 850, 3, 137, 14, 255 }, // 0x000050F0
	 { 3417, 1879, -2304, 0, 1024, 0, 170, 239, 175, 255 }, // 0x00005100
	 { 3609, 1673, -2575, 0, 326, 0, 148, 235, 210, 255 }, // 0x00005110
	 { 3800, 974, -2663, 0, 326, 821, 50, 164, 197, 255 }, // 0x00005120
	 { 4731, 1050, -299, 0, 389, 758, 14, 145, 42, 255 }, // 0x00005130
	 { 4529, 1749, -241, 0, 389, 0, 206, 233, 106, 255 }, // 0x00005140
	 { 4250, 1936, -269, 0, 1024, 0, 246, 239, 118, 255 }, // 0x00005150
	 { 4289, 1008, -413, 0, 1024, 793, 248, 137, 250, 255 }, // 0x00005160
	 { 4289, 1008, -413, 0, 1024, 793, 248, 137, 250, 255 }, // 0x00005170
	 { 4250, 1936, -269, 0, 1024, 0, 246, 239, 118, 255 }, // 0x00005180
	 { 3934, 1854, -273, 0, 342, 0, 29, 232, 113, 255 }, // 0x00005190
	 { 3750, 1155, -374, 0, 342, 672, 231, 147, 43, 255 }, // 0x000051A0
	 { 3750, 1155, -374, 0, 262, 672, 231, 147, 43, 255 }, // 0x000051B0
	 { 3566, 1854, -476, 0, 262, 0, 142, 229, 22, 255 }, // 0x000051C0
	 { 3457, 1944, -1095, 0, 1024, 0, 154, 237, 59, 255 }, // 0x000051D0
	 { 3548, 970, -1148, 0, 1024, 825, 16, 138, 9, 255 }, // 0x000051E0
	 { 3548, 970, -1148, 0, 1024, 825, 16, 138, 9, 255 }, // 0x000051F0
	 { 2977, 1741, -1663, 0, 243, 0, 169, 235, 79, 255 }, // 0x00005200
	 { 3025, 1042, -1868, 0, 243, 765, 215, 144, 255, 255 }, // 0x00005210
	 { 3548, 970, -1148, 0, 758, 687, 16, 138, 9, 255 }, // 0x00005220
	 { 3025, 1042, -1868, 0, 513, 398, 215, 144, 255, 255 }, // 0x00005230
	 { 4451, 1050, -1521, 0, 512, 1024, 1, 137, 3, 255 }, // 0x00005240
	 { 3750, 1155, -374, 0, 338, 478, 231, 147, 43, 255 }, // 0x00005250
	 { 3548, 970, -1148, 0, 175, 778, 16, 138, 9, 255 }, // 0x00005260
	 { 4451, 1050, -1521, 0, 512, 1024, 1, 137, 3, 255 }, // 0x00005270
	 { 4289, 1008, -413, 0, 557, 548, 248, 137, 250, 255 }, // 0x00005280
	 { 4731, 1050, -299, 0, 752, 546, 14, 145, 42, 255 }, // 0x00005290
	 { 5210, 990, -880, 0, 892, 835, 254, 137, 247, 255 }, // 0x000052A0
};

Vtx_t _spot04_room_0_vertices_000052B0[32] = 
{
	 { 4451, 1050, -1521, 0, 512, 1024, 1, 137, 3, 255 }, // 0x000052B0
	 { 3025, 1042, -1868, 0, 513, 398, 215, 144, 255, 255 }, // 0x000052C0
	 { 3470, 939, -2213, 0, 324, 547, 3, 137, 14, 255 }, // 0x000052D0
	 { 3800, 974, -2663, 0, 104, 638, 50, 164, 197, 255 }, // 0x000052E0
	 { 4451, 1050, -1521, 0, 512, 1024, 1, 137, 3, 255 }, // 0x000052F0
	 { 3800, 974, -2663, 0, 898, 616, 50, 164, 197, 255 }, // 0x00005300
	 { 4340, 963, -2624, 0, 670, 578, 18, 138, 10, 255 }, // 0x00005310
	 { 4731, 1050, -299, 0, 389, 758, 14, 145, 42, 255 }, // 0x00005320
	 { 4731, 735, -299, 0, 389, 1024, 167, 0, 176, 255 }, // 0x00005330
	 { 4819, 735, 4, 0, 0, 1024, 141, 0, 33, 255 }, // 0x00005340
	 { 4529, 1749, -241, 0, 389, 0, 206, 233, 106, 255 }, // 0x00005350
	 { 4819, 1749, 4, 0, 0, 0, 97, 218, 59, 255 }, // 0x00005360
	 { 4819, 1749, 4, 0, 0, 0, 141, 0, 33, 255 }, // 0x00005370
	 { 3597, 1854, -98, 0, 0, 0, 203, 207, 95, 255 }, // 0x00005380
	 { 3750, 1155, -374, 0, 342, 672, 231, 147, 43, 255 }, // 0x00005390
	 { 3934, 1854, -273, 0, 342, 0, 29, 232, 113, 255 }, // 0x000053A0
	 { 3597, 840, -98, 0, 0, 1024, 105, 0, 58, 255 }, // 0x000053B0
	 { 3566, 1854, -476, 0, 262, 0, 142, 229, 22, 255 }, // 0x000053C0
	 { 3750, 1155, -374, 0, 262, 672, 231, 147, 43, 255 }, // 0x000053D0
	 { 3597, 1854, -98, 0, 0, 0, 203, 207, 95, 255 }, // 0x000053E0
	 { 3597, 840, -98, 0, 0, 1024, 151, 0, 198, 255 }, // 0x000053F0
	 { 3750, 840, -374, 0, 342, 1024, 70, 0, 159, 255 }, // 0x00005400
	 { 3750, 840, -374, 0, 262, 1024, 70, 0, 159, 255 }, // 0x00005410
	 { 3669, 659, -2950, 0, 0, 1024, 147, 0, 50, 255 }, // 0x00005420
	 { 3800, 659, -2663, 0, 326, 1024, 50, 0, 108, 255 }, // 0x00005430
	 { 3800, 974, -2663, 0, 326, 821, 147, 0, 50, 255 }, // 0x00005440
	 { 3669, 1673, -2950, 0, 0, 0, 151, 218, 213, 255 }, // 0x00005450
	 { 3800, 974, -2663, 0, 326, 821, 50, 164, 197, 255 }, // 0x00005460
	 { 3609, 1673, -2575, 0, 326, 0, 148, 235, 210, 255 }, // 0x00005470
	 { 3025, 727, -1868, 0, 243, 1024, 118, 0, 17, 255 }, // 0x00005480
	 { 3025, 1042, -1868, 0, 243, 765, 215, 144, 255, 255 }, // 0x00005490
	 { 2717, 727, -1940, 0, 0, 1024, 229, 0, 116, 255 }, // 0x000054A0
};

Vtx_t _spot04_room_0_vertices_000054B0[9] = 
{
	 { 2717, 727, -1940, 0, 0, 1024, 27, 0, 140, 255 }, // 0x000054B0
	 { 3025, 1042, -1868, 0, 338, 765, 215, 144, 255, 255 }, // 0x000054C0
	 { 3025, 727, -1868, 0, 338, 1024, 118, 0, 17, 255 }, // 0x000054D0
	 { 2717, 1741, -1940, 0, 0, 0, 150, 207, 231, 255 }, // 0x000054E0
	 { 3025, 1042, -1868, 0, 243, 765, 215, 144, 255, 255 }, // 0x000054F0
	 { 2977, 1741, -1663, 0, 243, 0, 169, 235, 79, 255 }, // 0x00005500
	 { 2717, 727, -1940, 0, 0, 1024, 229, 0, 116, 255 }, // 0x00005510
	 { 3073, 1741, -2073, 0, 338, 0, 197, 230, 155, 255 }, // 0x00005520
	 { 2717, 1741, -1940, 0, 0, 0, 150, 207, 231, 255 }, // 0x00005530
};

Vtx_t _spot04_room_0_vertices_00005540[8] = 
{
	 { 3955, 364, -3115, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005540
	 { 5522, 364, -402, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005550
	 { 4158, 1689, -3232, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005560
	 { 5724, 1689, -519, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005570
	 { 2207, 720, -2106, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005580
	 { 3774, 720, 607, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005590
	 { 2409, 2045, -2223, 0, 0, 0, 0, 0, 0, 0 }, // 0x000055A0
	 { 3976, 2045, 490, 0, 0, 0, 0, 0, 0, 0 }, // 0x000055B0
};

Gfx _spot04_room_0_dlist_000055C0[] =
{
	gsDPPipeSync(), // 0x000055C0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000055C8
	gsSPVertex(_spot04_room_0_vertices_00005540, 8, 0), // 0x000055D0
	gsSPCullDisplayList(0, 7), // 0x000055D8
	gsDPPipeSync(), // 0x000055E0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000055E8
	gsDPPipeSync(), // 0x000055F0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000055F8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005600
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000C708), // 0x00005608
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 1, 0, 5, 0), // 0x00005610
	gsDPLoadSync(), // 0x00005618
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00005620
	gsDPPipeSync(), // 0x00005628
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 4, 1, 0, 5, 0), // 0x00005630
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00005638
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000CB08), // 0x00005640
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00005648
	gsDPLoadSync(), // 0x00005650
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00005658
	gsDPPipeSync(), // 0x00005660
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 4, 0, 0, 5, 0), // 0x00005668
	gsDPSetTileSize(1, 0, 0, 124, 60), // 0x00005670
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005678
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005680
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00005688
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00005690
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005698
	gsSPDisplayList(0x0B000000), // 0x000056A0
	gsSPVertex(_spot04_room_0_vertices_00004D20, 25, 0), // 0x000056A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000056B0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000056B8
	gsSP2Triangles(8, 9, 0, 0, 8, 0, 3, 0), // 0x000056C0
	gsSP2Triangles(10, 11, 12, 0, 13, 14, 11, 0), // 0x000056C8
	gsSP2Triangles(13, 11, 10, 0, 15, 16, 17, 0), // 0x000056D0
	gsSP2Triangles(15, 17, 18, 0, 18, 17, 19, 0), // 0x000056D8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000056E0
	gsSP1Triangle(24, 23, 22, 0), // 0x000056E8
	gsDPPipeSync(), // 0x000056F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013708), // 0x000056F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00005700
	gsDPLoadSync(), // 0x00005708
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005710
	gsDPPipeSync(), // 0x00005718
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00005720
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005728
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00014308), // 0x00005730
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00005738
	gsDPLoadSync(), // 0x00005740
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005748
	gsDPPipeSync(), // 0x00005750
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 2, 5, 0, 2, 5, 0), // 0x00005758
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00005760
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, K5, SHADE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00005768
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00005770
	gsSPVertex(_spot04_room_0_vertices_00004EB0, 32, 0), // 0x00005778
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005780
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005788
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00005790
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00005798
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000057A0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000057A8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x000057B0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000057B8
	gsSPVertex(_spot04_room_0_vertices_000050B0, 32, 0), // 0x000057C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000057C8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000057D0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000057D8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000057E0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000057E8
	gsSP2Triangles(20, 18, 21, 0, 20, 21, 22, 0), // 0x000057F0
	gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0), // 0x000057F8
	gsSP2Triangles(29, 26, 28, 0, 30, 29, 28, 0), // 0x00005800
	gsSP1Triangle(31, 30, 28, 0), // 0x00005808
	gsSPVertex(_spot04_room_0_vertices_000052B0, 32, 0), // 0x00005810
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005818
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00005820
	gsSP2Triangles(10, 7, 11, 0, 7, 9, 12, 0), // 0x00005828
	gsSP2Triangles(13, 14, 15, 0, 13, 16, 14, 0), // 0x00005830
	gsSP2Triangles(17, 18, 19, 0, 18, 20, 19, 0), // 0x00005838
	gsSP2Triangles(16, 21, 14, 0, 18, 22, 20, 0), // 0x00005840
	gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0), // 0x00005848
	gsSP2Triangles(26, 23, 25, 0, 29, 30, 31, 0), // 0x00005850
	gsSPVertex(_spot04_room_0_vertices_000054B0, 9, 0), // 0x00005858
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00005860
	gsSP2Triangles(3, 6, 4, 0, 7, 1, 8, 0), // 0x00005868
	gsSP1Triangle(1, 0, 8, 0), // 0x00005870
	gsDPPipeSync(), // 0x00005878
	gsDPSetEnvColor(0, 0, 0, 128), // 0x00005880
	gsSPEndDisplayList(), // 0x00005888
};

Vtx_t _spot04_room_0_vertices_00005890[14] = 
{
	 { -55, 28, -549, 0, 0, 0, 173, 84, 16, 255 }, // 0x00005890
	 { -55, 0, -549, 0, 0, 512, 139, 0, 23, 255 }, // 0x000058A0
	 { -16, 0, -349, 0, 2731, 512, 185, 0, 96, 255 }, // 0x000058B0
	 { -16, 28, -349, 0, 2731, 0, 214, 96, 57, 255 }, // 0x000058C0
	 { 161, 0, -368, 0, 5461, 512, 63, 0, 101, 255 }, // 0x000058D0
	 { 161, 28, -368, 0, 5461, 0, 42, 89, 68, 255 }, // 0x000058E0
	 { 259, 0, -524, 0, 8192, 512, 101, 0, 64, 255 }, // 0x000058F0
	 { 259, 28, -524, 0, 8192, 0, 71, 84, 45, 255 }, // 0x00005900
	 { -422, 0, 315, 0, 146, 512, 117, 0, 23, 255 }, // 0x00005910
	 { -386, 0, 125, 0, 2731, 512, 102, 0, 193, 255 }, // 0x00005920
	 { -386, 28, 125, 0, 2731, 0, 60, 96, 219, 255 }, // 0x00005930
	 { -422, 28, 315, 0, 146, 0, 83, 84, 16, 255 }, // 0x00005940
	 { -545, 0, 80, 0, 5271, 512, 32, 0, 141, 255 }, // 0x00005950
	 { -545, 28, 80, 0, 5271, 0, 23, 84, 175, 255 }, // 0x00005960
};

Vtx_t _spot04_room_0_vertices_00005970[9] = 
{
	 { -16, 28, -349, 0, -966, 1225, 214, 96, 57, 255 }, // 0x00005970
	 { 118, 28, -483, 0, 746, -501, 0, 120, 0, 255 }, // 0x00005980
	 { -55, 28, -549, 0, -1466, -1340, 173, 84, 16, 255 }, // 0x00005990
	 { 161, 28, -368, 0, 1297, 978, 42, 89, 68, 255 }, // 0x000059A0
	 { 259, 28, -524, 0, 2560, -1024, 71, 84, 45, 255 }, // 0x000059B0
	 { -386, 28, 125, 0, -966, 1225, 60, 96, 219, 255 }, // 0x000059C0
	 { -560, 28, 200, 0, 746, -501, 0, 120, 0, 255 }, // 0x000059D0
	 { -422, 28, 315, 0, -1439, -1203, 83, 84, 16, 255 }, // 0x000059E0
	 { -545, 28, 80, 0, 1139, 995, 23, 84, 175, 255 }, // 0x000059F0
};

Vtx_t _spot04_room_0_vertices_00005A00[8] = 
{
	 { 63, 0, -689, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A00
	 { 279, 0, -508, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A10
	 { 63, 28, -689, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A20
	 { 279, 28, -508, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A30
	 { -633, 0, 139, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A40
	 { -417, 0, 320, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A50
	 { -633, 28, 139, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A60
	 { -417, 28, 320, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A70
};

Gfx _spot04_room_0_dlist_00005A80[] =
{
	gsDPPipeSync(), // 0x00005A80
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005A88
	gsSPVertex(_spot04_room_0_vertices_00005A00, 8, 0), // 0x00005A90
	gsSPCullDisplayList(0, 7), // 0x00005A98
	gsDPPipeSync(), // 0x00005AA0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005AA8
	gsDPPipeSync(), // 0x00005AB0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005AB8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005AC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00015308), // 0x00005AC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00005AD0
	gsDPLoadSync(), // 0x00005AD8
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00005AE0
	gsDPPipeSync(), // 0x00005AE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00005AF0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00005AF8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005B00
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005B08
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00005B10
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00005B18
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005B20
	gsSPVertex(_spot04_room_0_vertices_00005890, 14, 0), // 0x00005B28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005B30
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00005B38
	gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0), // 0x00005B40
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00005B48
	gsSP2Triangles(9, 12, 13, 0, 9, 13, 10, 0), // 0x00005B50
	gsDPPipeSync(), // 0x00005B58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00014B08), // 0x00005B60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005B68
	gsDPLoadSync(), // 0x00005B70
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005B78
	gsDPPipeSync(), // 0x00005B80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005B88
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005B90
	gsDPTileSync(), // 0x00005B98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 1, 0, 0, 5, 15, 0, 5, 15), // 0x00005BA0
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00005BA8
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005BB0
	gsSPVertex(_spot04_room_0_vertices_00005970, 9, 0), // 0x00005BB8
	gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0), // 0x00005BC0
	gsSP2Triangles(1, 3, 4, 0, 5, 6, 7, 0), // 0x00005BC8
	gsSP1Triangle(6, 5, 8, 0), // 0x00005BD0
	gsSPEndDisplayList(), // 0x00005BD8
};

Vtx_t _spot04_room_0_vertices_00005BE0[32] = 
{
	 { -1473, -29, -402, 0, 2047, 897, 119, 0, 0, 255 }, // 0x00005BE0
	 { -1473, -22, -381, 0, 1850, 931, 68, 32, 93, 255 }, // 0x00005BF0
	 { -1473, -80, -343, 0, 1738, 1411, 55, 94, 49, 255 }, // 0x00005C00
	 { -1473, -80, -368, 0, 1908, 1496, 59, 104, 5, 255 }, // 0x00005C10
	 { -1473, -80, -216, 0, 906, 2027, 119, 0, 0, 255 }, // 0x00005C20
	 { -1473, -80, -240, 0, 926, 1841, 50, 91, 197, 255 }, // 0x00005C30
	 { -1473, -16, -208, 0, 475, 1644, 64, 22, 157, 255 }, // 0x00005C40
	 { -1473, -22, -188, 0, 348, 1783, 119, 0, 0, 255 }, // 0x00005C50
	 { -1473, 43, -205, 0, 202, 1207, 80, 201, 186, 255 }, // 0x00005C60
	 { -1473, 50, -184, 0, 11, 1244, 118, 3, 16, 255 }, // 0x00005C70
	 { -1424, 89, -242, 0, 257, 695, 54, 157, 217, 255 }, // 0x00005C80
	 { -1422, 107, -229, 0, 79, 612, 84, 33, 78, 255 }, // 0x00005C90
	 { -1405, 107, -295, 0, 612, 299, 75, 163, 7, 255 }, // 0x00005CA0
	 { -1402, 130, -296, 0, 517, 122, 97, 70, 4, 255 }, // 0x00005CB0
	 { -1417, 84, -354, 0, 1169, 224, 55, 158, 41, 255 }, // 0x00005CC0
	 { -1415, 100, -368, 0, 1205, 30, 84, 30, 176, 255 }, // 0x00005CD0
	 { -1617, 104, -286, 0, 1010, 168, 16, 138, 255, 255 }, // 0x00005CE0
	 { -1617, 28, -388, 0, 1875, 818, 12, 223, 114, 255 }, // 0x00005CF0
	 { -1417, 84, -354, 0, 1587, 344, 55, 158, 41, 255 }, // 0x00005D00
	 { -1617, -84, -219, 0, 441, 1779, 253, 81, 168, 255 }, // 0x00005D10
	 { -1617, 35, -202, 0, 292, 759, 9, 215, 144, 255 }, // 0x00005D20
	 { -1473, -16, -208, 0, 342, 1194, 64, 22, 157, 255 }, // 0x00005D30
	 { -1473, -22, -381, 0, 1815, 1245, 68, 32, 93, 255 }, // 0x00005D40
	 { -1617, -90, -343, 0, 1491, 1827, 1, 93, 75, 255 }, // 0x00005D50
	 { -1424, 89, -242, 0, 634, 298, 54, 157, 217, 255 }, // 0x00005D60
	 { -1473, 43, -205, 0, 315, 692, 80, 201, 186, 255 }, // 0x00005D70
	 { -1473, -80, -240, 0, 615, 1742, 50, 91, 197, 255 }, // 0x00005D80
	 { -1473, -80, -343, 0, 1495, 1742, 55, 94, 49, 255 }, // 0x00005D90
	 { -1473, 40, -385, 0, 1852, 716, 78, 200, 70, 255 }, // 0x00005DA0
	 { -1405, 107, -295, 0, 1089, 142, 75, 163, 7, 255 }, // 0x00005DB0
	 { -2330, -90, -288, 0, 1024, 1024, 116, 248, 229, 255 }, // 0x00005DC0
	 { -1473, 40, -385, 0, 1676, 500, 78, 200, 70, 255 }, // 0x00005DD0
};

Vtx_t _spot04_room_0_vertices_00005DE0[11] = 
{
	 { -1473, 40, -385, 0, 1676, 500, 78, 200, 70, 255 }, // 0x00005DE0
	 { -1473, -29, -402, 0, 2047, 897, 119, 0, 0, 255 }, // 0x00005DF0
	 { -1473, 48, -405, 0, 1834, 378, 118, 5, 240, 255 }, // 0x00005E00
	 { -1415, 100, -368, 0, 1205, 30, 84, 30, 176, 255 }, // 0x00005E10
	 { -1417, 84, -354, 0, 1169, 224, 55, 158, 41, 255 }, // 0x00005E20
	 { -1473, 40, -385, 0, 1615, 442, 78, 200, 70, 255 }, // 0x00005E30
	 { -1473, 48, -405, 0, 1736, 290, 118, 5, 240, 255 }, // 0x00005E40
	 { -1473, -80, -343, 0, 1495, 1742, 55, 94, 49, 255 }, // 0x00005E50
	 { -1617, -90, -343, 0, 1491, 1827, 1, 93, 75, 255 }, // 0x00005E60
	 { -1617, -84, -219, 0, 441, 1779, 253, 81, 168, 255 }, // 0x00005E70
	 { -1473, -80, -240, 0, 615, 1742, 50, 91, 197, 255 }, // 0x00005E80
};

Vtx_t _spot04_room_0_vertices_00005E90[16] = 
{
	 { -1473, 50, -184, 0, 1086, 1583, 118, 3, 16, 255 }, // 0x00005E90
	 { -1422, 107, -229, 0, 1448, 1619, 84, 33, 78, 255 }, // 0x00005EA0
	 { -1490, 107, -229, 0, 1450, 1291, 85, 83, 15, 255 }, // 0x00005EB0
	 { -1402, 130, -296, 0, 1801, 1676, 97, 70, 4, 255 }, // 0x00005EC0
	 { -1500, 130, -296, 0, 1815, 1236, 60, 103, 247, 255 }, // 0x00005ED0
	 { -1415, 100, -368, 0, 2196, 1662, 84, 30, 176, 255 }, // 0x00005EE0
	 { -1505, 100, -368, 0, 2199, 1253, 81, 84, 231, 255 }, // 0x00005EF0
	 { -1473, 48, -405, 0, 2511, 1567, 118, 5, 240, 255 }, // 0x00005F00
	 { -237, 560, -1351, 0, 2196, 1662, 84, 39, 76, 255 }, // 0x00005F10
	 { -200, 508, -1409, 0, 2511, 1567, 32, 1, 115, 255 }, // 0x00005F20
	 { -237, 560, -1409, 0, 2198, 1399, 51, 65, 86, 255 }, // 0x00005F30
	 { -309, 590, -1338, 0, 1801, 1676, 1, 73, 95, 255 }, // 0x00005F40
	 { -309, 590, -1409, 0, 1811, 1358, 2, 82, 87, 255 }, // 0x00005F50
	 { -376, 567, -1358, 0, 1448, 1619, 182, 37, 87, 255 }, // 0x00005F60
	 { -376, 567, -1409, 0, 1450, 1373, 208, 68, 86, 255 }, // 0x00005F70
	 { -421, 510, -1409, 0, 1086, 1583, 232, 1, 117, 255 }, // 0x00005F80
};

Vtx_t _spot04_room_0_vertices_00005F90[39] = 
{
	 { -262, 380, -1409, 0, 1495, 1742, 208, 94, 56, 255 }, // 0x00005F90
	 { -263, 370, -1554, 0, 1491, 1827, 181, 93, 2, 255 }, // 0x00005FA0
	 { -386, 376, -1554, 0, 441, 1779, 88, 81, 254, 255 }, // 0x00005FB0
	 { -365, 380, -1409, 0, 615, 1742, 59, 90, 52, 255 }, // 0x00005FC0
	 { -237, 560, -1351, 0, 1205, 30, 84, 39, 76, 255 }, // 0x00005FD0
	 { -251, 544, -1354, 0, 1169, 224, 220, 159, 60, 255 }, // 0x00005FE0
	 { -220, 500, -1409, 0, 1615, 442, 191, 203, 85, 255 }, // 0x00005FF0
	 { -200, 508, -1409, 0, 1736, 290, 32, 1, 115, 255 }, // 0x00006000
	 { -220, 500, -1409, 0, 1676, 500, 191, 203, 85, 255 }, // 0x00006010
	 { -225, 438, -1409, 0, 1850, 931, 163, 32, 68, 255 }, // 0x00006020
	 { -204, 431, -1409, 0, 2047, 897, 0, 0, 120, 255 }, // 0x00006030
	 { -200, 508, -1409, 0, 1834, 378, 32, 1, 115, 255 }, // 0x00006040
	 { -403, 495, -1554, 0, 292, 759, 112, 215, 9, 255 }, // 0x00006050
	 { -317, 370, -2267, 0, 1024, 1024, 27, 248, 116, 255 }, // 0x00006060
	 { -319, 564, -1554, 0, 1010, 168, 1, 138, 16, 255 }, // 0x00006070
	 { -218, 488, -1554, 0, 1875, 818, 142, 223, 12, 255 }, // 0x00006080
	 { -310, 567, -1341, 0, 1089, 142, 253, 165, 78, 255 }, // 0x00006090
	 { -363, 549, -1361, 0, 634, 298, 41, 159, 57, 255 }, // 0x000060A0
	 { -251, 544, -1354, 0, 1587, 344, 220, 159, 60, 255 }, // 0x000060B0
	 { -220, 500, -1409, 0, 1852, 716, 191, 203, 85, 255 }, // 0x000060C0
	 { -225, 438, -1409, 0, 1815, 1245, 163, 32, 68, 255 }, // 0x000060D0
	 { -397, 444, -1409, 0, 342, 1194, 99, 22, 64, 255 }, // 0x000060E0
	 { -400, 503, -1409, 0, 315, 692, 71, 204, 81, 255 }, // 0x000060F0
	 { -309, 590, -1338, 0, 517, 122, 1, 73, 95, 255 }, // 0x00006100
	 { -310, 567, -1341, 0, 612, 299, 253, 165, 78, 255 }, // 0x00006110
	 { -376, 567, -1358, 0, 79, 612, 182, 37, 87, 255 }, // 0x00006120
	 { -363, 549, -1361, 0, 257, 695, 41, 159, 57, 255 }, // 0x00006130
	 { -421, 510, -1409, 0, 11, 1244, 232, 1, 117, 255 }, // 0x00006140
	 { -400, 503, -1409, 0, 202, 1207, 71, 204, 81, 255 }, // 0x00006150
	 { -417, 438, -1409, 0, 348, 1783, 0, 0, 120, 255 }, // 0x00006160
	 { -397, 444, -1409, 0, 475, 1644, 99, 22, 64, 255 }, // 0x00006170
	 { -389, 380, -1409, 0, 906, 2027, 0, 0, 120, 255 }, // 0x00006180
	 { -365, 380, -1409, 0, 926, 1841, 59, 90, 52, 255 }, // 0x00006190
	 { -397, 444, -1409, 0, 475, 1644, 99, 22, 64, 255 }, // 0x000061A0
	 { -417, 438, -1409, 0, 348, 1783, 0, 0, 120, 255 }, // 0x000061B0
	 { -204, 431, -1409, 0, 2047, 897, 0, 0, 120, 255 }, // 0x000061C0
	 { -225, 438, -1409, 0, 1850, 931, 163, 32, 68, 255 }, // 0x000061D0
	 { -262, 380, -1409, 0, 1738, 1411, 208, 94, 56, 255 }, // 0x000061E0
	 { -237, 380, -1409, 0, 1908, 1496, 0, 0, 120, 255 }, // 0x000061F0
};

Vtx_t _spot04_room_0_vertices_00006200[8] = 
{
	 { -2458, -202, -471, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006200
	 { -1910, -202, 183, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006210
	 { -307, 294, -2275, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006220
	 { 241, 294, -1622, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006230
	 { -2511, 189, -426, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006240
	 { -1962, 189, 227, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006250
	 { -360, 684, -2231, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006260
	 { 188, 684, -1578, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006270
};

Gfx _spot04_room_0_dlist_00006280[] =
{
	gsDPPipeSync(), // 0x00006280
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006288
	gsSPVertex(_spot04_room_0_vertices_00006200, 8, 0), // 0x00006290
	gsSPCullDisplayList(0, 7), // 0x00006298
	gsDPPipeSync(), // 0x000062A0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000062A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000062B0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000062B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000CF08), // 0x000062C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x000062C8
	gsDPLoadSync(), // 0x000062D0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000062D8
	gsDPPipeSync(), // 0x000062E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x000062E8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000062F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000E010), // 0x000062F8
	gsDPTileSync(), // 0x00006300
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00006308
	gsDPLoadSync(), // 0x00006310
	gsDPLoadTLUTCmd(7, 255), // 0x00006318
	gsDPPipeSync(), // 0x00006320
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006328
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006330
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00006338
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00006340
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006348
	gsSPVertex(_spot04_room_0_vertices_00005BE0, 32, 0), // 0x00006350
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006358
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006360
	gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0), // 0x00006368
	gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0), // 0x00006370
	gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0), // 0x00006378
	gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0), // 0x00006380
	gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0), // 0x00006388
	gsSP2Triangles(22, 17, 23, 0, 20, 16, 24, 0), // 0x00006390
	gsSP2Triangles(25, 21, 20, 0, 24, 25, 20, 0), // 0x00006398
	gsSP2Triangles(19, 21, 26, 0, 27, 22, 23, 0), // 0x000063A0
	gsSP2Triangles(22, 28, 17, 0, 28, 18, 17, 0), // 0x000063A8
	gsSP2Triangles(18, 29, 16, 0, 16, 29, 24, 0), // 0x000063B0
	gsSP2Triangles(30, 17, 16, 0, 23, 17, 30, 0), // 0x000063B8
	gsSP2Triangles(19, 23, 30, 0, 20, 19, 30, 0), // 0x000063C0
	gsSP2Triangles(20, 30, 16, 0, 31, 1, 0, 0), // 0x000063C8
	gsSPVertex(_spot04_room_0_vertices_00005DE0, 11, 0), // 0x000063D0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000063D8
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x000063E0
	gsSP1Triangle(7, 9, 10, 0), // 0x000063E8
	gsDPPipeSync(), // 0x000063F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013F08), // 0x000063F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006400
	gsDPLoadSync(), // 0x00006408
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00006410
	gsDPPipeSync(), // 0x00006418
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006420
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006428
	gsSPVertex(_spot04_room_0_vertices_00005E90, 16, 0), // 0x00006430
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0), // 0x00006438
	gsSP2Triangles(1, 4, 2, 0, 3, 5, 6, 0), // 0x00006440
	gsSP2Triangles(3, 6, 4, 0, 5, 7, 6, 0), // 0x00006448
	gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0), // 0x00006450
	gsSP2Triangles(11, 10, 12, 0, 13, 11, 12, 0), // 0x00006458
	gsSP2Triangles(13, 12, 14, 0, 15, 13, 14, 0), // 0x00006460
	gsDPPipeSync(), // 0x00006468
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000CF08), // 0x00006470
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00006478
	gsDPLoadSync(), // 0x00006480
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00006488
	gsDPPipeSync(), // 0x00006490
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00006498
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000064A0
	gsSPVertex(_spot04_room_0_vertices_00005F90, 32, 0), // 0x000064A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000064B0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000064B8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000064C0
	gsSP2Triangles(12, 13, 14, 0, 12, 2, 13, 0), // 0x000064C8
	gsSP2Triangles(2, 1, 13, 0, 1, 15, 13, 0), // 0x000064D0
	gsSP2Triangles(13, 15, 14, 0, 14, 16, 17, 0), // 0x000064D8
	gsSP2Triangles(18, 16, 14, 0, 19, 18, 15, 0), // 0x000064E0
	gsSP2Triangles(20, 19, 15, 0, 0, 20, 1, 0), // 0x000064E8
	gsSP2Triangles(2, 21, 3, 0, 17, 22, 12, 0), // 0x000064F0
	gsSP2Triangles(22, 21, 12, 0, 12, 14, 17, 0), // 0x000064F8
	gsSP2Triangles(20, 15, 1, 0, 2, 12, 21, 0), // 0x00006500
	gsSP2Triangles(14, 15, 18, 0, 23, 24, 5, 0), // 0x00006508
	gsSP2Triangles(23, 5, 4, 0, 25, 26, 24, 0), // 0x00006510
	gsSP2Triangles(25, 24, 23, 0, 27, 28, 26, 0), // 0x00006518
	gsSP2Triangles(27, 26, 25, 0, 29, 30, 28, 0), // 0x00006520
	gsSP1Triangle(29, 28, 27, 0), // 0x00006528
	gsSPVertex(_spot04_room_0_vertices_00006180, 8, 0), // 0x00006530
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006538
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006540
	gsSPEndDisplayList(), // 0x00006548
};

Vtx_t _spot04_room_0_vertices_00006550[12] = 
{
	 { 588, 3, -118, 0, 512, 512, 0, 120, 0, 255 }, // 0x00006550
	 { 588, 3, -198, 0, 512, -512, 0, 120, 0, 255 }, // 0x00006560
	 { 508, 3, -198, 0, -512, -512, 0, 120, 0, 255 }, // 0x00006570
	 { 508, 3, -118, 0, -512, 512, 0, 120, 0, 255 }, // 0x00006580
	 { 428, 3, -118, 0, 512, 512, 0, 120, 0, 255 }, // 0x00006590
	 { 428, 3, -238, 0, 512, -512, 0, 120, 0, 255 }, // 0x000065A0
	 { 308, 3, -238, 0, -512, -512, 0, 120, 0, 255 }, // 0x000065B0
	 { 308, 3, -118, 0, -512, 512, 0, 120, 0, 255 }, // 0x000065C0
	 { 228, 3, -158, 0, 512, 512, 0, 120, 0, 255 }, // 0x000065D0
	 { 228, 3, -238, 0, 512, -512, 0, 120, 0, 255 }, // 0x000065E0
	 { 148, 3, -238, 0, -512, -512, 0, 120, 0, 255 }, // 0x000065F0
	 { 148, 3, -158, 0, -512, 512, 0, 120, 0, 255 }, // 0x00006600
};

Vtx_t _spot04_room_0_vertices_00006610[32] = 
{
	 { 148, -13, -158, 0, -512, 100, 0, 0, 120, 255 }, // 0x00006610
	 { 228, -33, -158, 0, 512, 229, 0, 0, 120, 255 }, // 0x00006620
	 { 228, 3, -158, 0, 512, 0, 0, 0, 120, 255 }, // 0x00006630
	 { 148, 3, -158, 0, -512, 0, 0, 0, 120, 255 }, // 0x00006640
	 { 428, 3, -118, 0, 512, 0, 0, 0, 120, 255 }, // 0x00006650
	 { 308, 3, -118, 0, -512, 0, 0, 0, 120, 255 }, // 0x00006660
	 { 308, -63, -118, 0, -512, 421, 0, 0, 120, 255 }, // 0x00006670
	 { 428, -63, -118, 0, 512, 421, 0, 0, 120, 255 }, // 0x00006680
	 { 508, -27, -118, 0, -512, 189, 0, 0, 120, 255 }, // 0x00006690
	 { 588, -7, -118, 0, 512, 62, 0, 0, 120, 255 }, // 0x000066A0
	 { 588, 3, -118, 0, 512, 0, 0, 0, 120, 255 }, // 0x000066B0
	 { 508, 3, -118, 0, -512, 0, 0, 0, 120, 255 }, // 0x000066C0
	 { 588, -19, -198, 0, -512, 142, 0, 0, 136, 255 }, // 0x000066D0
	 { 508, -36, -198, 0, 512, 249, 0, 0, 136, 255 }, // 0x000066E0
	 { 508, 3, -198, 0, 512, 0, 0, 0, 136, 255 }, // 0x000066F0
	 { 588, 3, -198, 0, -512, 0, 0, 0, 136, 255 }, // 0x00006700
	 { 308, 3, -238, 0, 512, 0, 0, 0, 136, 255 }, // 0x00006710
	 { 428, 3, -238, 0, -512, 0, 0, 0, 136, 255 }, // 0x00006720
	 { 428, -64, -238, 0, -512, 428, 0, 0, 136, 255 }, // 0x00006730
	 { 308, -64, -238, 0, 512, 428, 0, 0, 136, 255 }, // 0x00006740
	 { 148, 3, -238, 0, 512, 0, 0, 0, 136, 255 }, // 0x00006750
	 { 228, 3, -238, 0, -512, 0, 0, 0, 136, 255 }, // 0x00006760
	 { 228, -28, -238, 0, -512, 200, 0, 0, 136, 255 }, // 0x00006770
	 { 148, -11, -238, 0, 512, 92, 0, 0, 136, 255 }, // 0x00006780
	 { 148, -13, -158, 0, 512, 100, 136, 0, 0, 255 }, // 0x00006790
	 { 148, 3, -158, 0, 512, 0, 136, 0, 0, 255 }, // 0x000067A0
	 { 148, 3, -238, 0, -512, 0, 136, 0, 0, 255 }, // 0x000067B0
	 { 148, -11, -238, 0, -512, 92, 136, 0, 0, 255 }, // 0x000067C0
	 { 308, 3, -238, 0, -512, 0, 136, 0, 0, 255 }, // 0x000067D0
	 { 308, -64, -238, 0, -512, 428, 136, 0, 0, 255 }, // 0x000067E0
	 { 308, -63, -118, 0, 512, 421, 136, 0, 0, 255 }, // 0x000067F0
	 { 308, 3, -118, 0, 512, 0, 136, 0, 0, 255 }, // 0x00006800
};

Vtx_t _spot04_room_0_vertices_00006810[16] = 
{
	 { 508, 3, -198, 0, -512, 0, 136, 0, 0, 255 }, // 0x00006810
	 { 508, -36, -198, 0, -512, 249, 136, 0, 0, 255 }, // 0x00006820
	 { 508, -27, -118, 0, 512, 189, 136, 0, 0, 255 }, // 0x00006830
	 { 508, 3, -118, 0, 512, 0, 136, 0, 0, 255 }, // 0x00006840
	 { 228, 3, -158, 0, -512, 0, 120, 0, 0, 255 }, // 0x00006850
	 { 228, -33, -158, 0, -512, 229, 120, 0, 0, 255 }, // 0x00006860
	 { 228, -28, -238, 0, 512, 200, 120, 0, 0, 255 }, // 0x00006870
	 { 228, 3, -238, 0, 512, 0, 120, 0, 0, 255 }, // 0x00006880
	 { 428, 3, -118, 0, -512, 0, 120, 0, 0, 255 }, // 0x00006890
	 { 428, -63, -118, 0, -512, 421, 120, 0, 0, 255 }, // 0x000068A0
	 { 428, -64, -238, 0, 512, 428, 120, 0, 0, 255 }, // 0x000068B0
	 { 428, 3, -238, 0, 512, 0, 120, 0, 0, 255 }, // 0x000068C0
	 { 588, 3, -118, 0, -512, 0, 120, 0, 0, 255 }, // 0x000068D0
	 { 588, -7, -118, 0, -512, 62, 120, 0, 0, 255 }, // 0x000068E0
	 { 588, -19, -198, 0, 512, 142, 120, 0, 0, 255 }, // 0x000068F0
	 { 588, 3, -198, 0, 512, 0, 120, 0, 0, 255 }, // 0x00006900
};

Vtx_t _spot04_room_0_vertices_00006910[8] = 
{
	 { 448, 120, 63, 0, 171, 341, 207, 69, 172, 255 }, // 0x00006910
	 { 427, 120, 140, 0, 171, 1707, 172, 69, 49, 255 }, // 0x00006920
	 { 505, 120, 161, 0, 853, 1707, 49, 69, 84, 255 }, // 0x00006930
	 { 525, 120, 84, 0, 853, 341, 84, 69, 207, 255 }, // 0x00006940
	 { -16, 180, -61, 0, 171, 341, 207, 69, 172, 255 }, // 0x00006950
	 { -36, 180, 16, 0, 171, 1707, 172, 69, 49, 255 }, // 0x00006960
	 { 41, 180, 37, 0, 853, 1707, 49, 69, 84, 255 }, // 0x00006970
	 { 62, 180, -40, 0, 853, 341, 84, 69, 207, 255 }, // 0x00006980
};

Vtx_t _spot04_room_0_vertices_00006990[32] = 
{
	 { 427, 120, 140, 0, 0, 0, 172, 69, 49, 255 }, // 0x00006990
	 { 427, 0, 140, 0, 0, 2048, 153, 0, 60, 255 }, // 0x000069A0
	 { 505, 0, 161, 0, 1024, 2048, 60, 0, 103, 255 }, // 0x000069B0
	 { 505, 120, 161, 0, 1024, 0, 49, 69, 84, 255 }, // 0x000069C0
	 { 505, 120, 161, 0, 0, 0, 49, 69, 84, 255 }, // 0x000069D0
	 { 505, 0, 161, 0, 0, 2048, 60, 0, 103, 255 }, // 0x000069E0
	 { 525, 0, 84, 0, 1024, 2048, 103, 0, 196, 255 }, // 0x000069F0
	 { 525, 120, 84, 0, 1024, 0, 84, 69, 207, 255 }, // 0x00006A00
	 { 525, 120, 84, 0, 0, 0, 84, 69, 207, 255 }, // 0x00006A10
	 { 525, 0, 84, 0, 0, 2048, 103, 0, 196, 255 }, // 0x00006A20
	 { 448, 0, 63, 0, 1024, 2048, 196, 0, 153, 255 }, // 0x00006A30
	 { 448, 120, 63, 0, 1024, 0, 207, 69, 172, 255 }, // 0x00006A40
	 { 427, 0, 140, 0, 1024, 2048, 153, 0, 60, 255 }, // 0x00006A50
	 { 427, 120, 140, 0, 1024, 0, 172, 69, 49, 255 }, // 0x00006A60
	 { 448, 120, 63, 0, 0, 0, 207, 69, 172, 255 }, // 0x00006A70
	 { 448, 0, 63, 0, 0, 2048, 196, 0, 153, 255 }, // 0x00006A80
	 { -36, 0, 16, 0, 1024, 2048, 153, 0, 60, 255 }, // 0x00006A90
	 { -36, 180, 16, 0, 1024, 0, 172, 69, 49, 255 }, // 0x00006AA0
	 { -16, 180, -61, 0, 0, 0, 207, 69, 172, 255 }, // 0x00006AB0
	 { -16, 0, -61, 0, 0, 2048, 196, 0, 153, 255 }, // 0x00006AC0
	 { 41, 0, 37, 0, 1024, 2048, 60, 0, 103, 255 }, // 0x00006AD0
	 { 41, 180, 37, 0, 1024, 0, 49, 69, 84, 255 }, // 0x00006AE0
	 { -36, 180, 16, 0, 0, 0, 172, 69, 49, 255 }, // 0x00006AF0
	 { -36, 0, 16, 0, 0, 2048, 153, 0, 60, 255 }, // 0x00006B00
	 { 41, 180, 37, 0, 0, 0, 49, 69, 84, 255 }, // 0x00006B10
	 { 41, 0, 37, 0, 0, 2048, 60, 0, 103, 255 }, // 0x00006B20
	 { 62, 0, -40, 0, 1024, 2048, 103, 0, 196, 255 }, // 0x00006B30
	 { 62, 180, -40, 0, 1024, 0, 84, 69, 207, 255 }, // 0x00006B40
	 { 62, 180, -40, 0, 0, 0, 84, 69, 207, 255 }, // 0x00006B50
	 { 62, 0, -40, 0, 0, 2048, 103, 0, 196, 255 }, // 0x00006B60
	 { -16, 0, -61, 0, 1024, 2048, 196, 0, 153, 255 }, // 0x00006B70
	 { -16, 180, -61, 0, 1024, 0, 207, 69, 172, 255 }, // 0x00006B80
};

Vtx_t _spot04_room_0_vertices_00006B90[8] = 
{
	 { 85, -136, -336, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006B90
	 { 615, -136, -143, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006BA0
	 { 108, 51, -400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006BB0
	 { 639, 51, -207, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006BC0
	 { -63, 21, 68, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006BD0
	 { 468, 21, 261, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006BE0
	 { -39, 208, 4, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006BF0
	 { 491, 208, 197, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006C00
};

Gfx _spot04_room_0_dlist_00006C10[] =
{
	gsDPPipeSync(), // 0x00006C10
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006C18
	gsSPVertex(_spot04_room_0_vertices_00006B90, 8, 0), // 0x00006C20
	gsSPCullDisplayList(0, 7), // 0x00006C28
	gsDPPipeSync(), // 0x00006C30
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006C38
	gsDPPipeSync(), // 0x00006C40
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00006C48
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006C50
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000D408), // 0x00006C58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 4, 0, 1, 4, 0), // 0x00006C60
	gsDPLoadSync(), // 0x00006C68
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00006C70
	gsDPPipeSync(), // 0x00006C78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 4, 0, 1, 4, 0), // 0x00006C80
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00006C88
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000E010), // 0x00006C90
	gsDPTileSync(), // 0x00006C98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00006CA0
	gsDPLoadSync(), // 0x00006CA8
	gsDPLoadTLUTCmd(7, 255), // 0x00006CB0
	gsDPPipeSync(), // 0x00006CB8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006CC0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006CC8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00006CD0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00006CD8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006CE0
	gsSPVertex(_spot04_room_0_vertices_00006550, 12, 0), // 0x00006CE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006CF0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006CF8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00006D00
	gsDPPipeSync(), // 0x00006D08
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000D308), // 0x00006D10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 1, 4, 0), // 0x00006D18
	gsDPLoadSync(), // 0x00006D20
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00006D28
	gsDPPipeSync(), // 0x00006D30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 4, 0, 1, 4, 0), // 0x00006D38
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00006D40
	gsSPVertex(_spot04_room_0_vertices_00006610, 32, 0), // 0x00006D48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006D50
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006D58
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00006D60
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00006D68
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00006D70
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00006D78
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00006D80
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00006D88
	gsSPVertex(_spot04_room_0_vertices_00006810, 16, 0), // 0x00006D90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006D98
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006DA0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00006DA8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00006DB0
	gsDPPipeSync(), // 0x00006DB8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00015B08), // 0x00006DC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 4, 0), // 0x00006DC8
	gsDPLoadSync(), // 0x00006DD0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00006DD8
	gsDPPipeSync(), // 0x00006DE0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 5, 0, 1, 4, 0), // 0x00006DE8
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00006DF0
	gsSPVertex(_spot04_room_0_vertices_00006910, 8, 0), // 0x00006DF8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006E00
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006E08
	gsDPPipeSync(), // 0x00006E10
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00015D08), // 0x00006E18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 4, 0), // 0x00006E20
	gsDPLoadSync(), // 0x00006E28
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x00006E30
	gsDPPipeSync(), // 0x00006E38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 6, 0, 1, 4, 0), // 0x00006E40
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x00006E48
	gsSPVertex(_spot04_room_0_vertices_00006990, 32, 0), // 0x00006E50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006E58
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006E60
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00006E68
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00006E70
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00006E78
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00006E80
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00006E88
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00006E90
	gsSPEndDisplayList(), // 0x00006E98
};

Vtx_t _spot04_room_0_vertices_00006EA0[32] = 
{
	 { -294, -80, 1325, 0, 7475, 1440, 181, 90, 25, 255 }, // 0x00006EA0
	 { -179, 25, 1289, 0, 7448, 768, 162, 61, 41, 255 }, // 0x00006EB0
	 { -185, -80, 1188, 0, 6736, 1440, 156, 53, 218, 255 }, // 0x00006EC0
	 { -121, 7, 1121, 0, 6101, 882, 209, 66, 168, 255 }, // 0x00006ED0
	 { -249, -80, 1004, 0, 6214, 1440, 227, 106, 209, 255 }, // 0x00006EE0
	 { 0, -80, 1554, 0, 1888, 1440, 3, 103, 60, 255 }, // 0x00006EF0
	 { -15, 12, 1396, 0, 1871, 849, 1, 66, 100, 255 }, // 0x00006F00
	 { -119, -80, 1375, 0, 1052, 1440, 194, 49, 90, 255 }, // 0x00006F10
	 { -179, 25, 1289, 0, 280, 768, 162, 61, 41, 255 }, // 0x00006F20
	 { -294, -80, 1325, 0, 307, 1440, 181, 90, 25, 255 }, // 0x00006F30
	 { 272, -80, 1339, 0, 3257, 1440, 54, 105, 20, 255 }, // 0x00006F40
	 { 116, 9, 1293, 0, 3254, 869, 94, 68, 28, 255 }, // 0x00006F50
	 { 80, -80, 1379, 0, 2579, 1440, 66, 55, 83, 255 }, // 0x00006F60
	 { 174, -80, 994, 0, 4622, 1440, 29, 104, 205, 255 }, // 0x00006F70
	 { 95, -14, 1086, 0, 4658, 1015, 39, 95, 195, 255 }, // 0x00006F80
	 { 133, -80, 1188, 0, 4019, 1440, 100, 58, 224, 255 }, // 0x00006F90
	 { 55, 48, 1132, 0, 4700, 623, 51, 61, 167, 255 }, // 0x00006FA0
	 { -33, 285, 1151, 0, 5457, -896, 3, 15, 138, 255 }, // 0x00006FB0
	 { 22, 299, 1165, 0, 4802, -987, 57, 14, 152, 255 }, // 0x00006FC0
	 { -2, 200, 1144, 0, 5126, -352, 9, 238, 138, 255 }, // 0x00006FD0
	 { 58, 100, 1169, 0, 4468, 288, 78, 10, 166, 255 }, // 0x00006FE0
	 { -122, 100, 1166, 0, 6347, 288, 185, 9, 161, 255 }, // 0x00006FF0
	 { -89, 285, 1160, 0, 6076, -893, 205, 12, 149, 255 }, // 0x00007000
	 { -62, 200, 1143, 0, 5747, -352, 253, 237, 138, 255 }, // 0x00007010
	 { -142, 265, 1205, 0, 6740, -769, 156, 10, 191, 255 }, // 0x00007020
	 { 70, 275, 1209, 0, 4055, -833, 103, 12, 196, 255 }, // 0x00007030
	 { 36, -80, 1070, 0, 5000, 1440, 229, 58, 155, 255 }, // 0x00007040
	 { -2, 100, 1128, 0, 5155, 288, 201, 17, 151, 255 }, // 0x00007050
	 { -115, -80, 1066, 0, 5888, 1440, 23, 63, 157, 255 }, // 0x00007060
	 { -61, 100, 1127, 0, 5699, 288, 58, 17, 153, 255 }, // 0x00007070
	 { -31, -80, 1068, 0, 5407, 1440, 1, 45, 145, 255 }, // 0x00007080
	 { -2, 90, 1128, 0, 5155, 352, 31, 49, 151, 255 }, // 0x00007090
};

Vtx_t _spot04_room_0_vertices_000070A0[32] = 
{
	 { -31, -80, 1068, 0, 5407, 1440, 1, 45, 145, 255 }, // 0x000070A0
	 { -61, 90, 1127, 0, 5699, 352, 225, 42, 148, 255 }, // 0x000070B0
	 { -2, 90, 1128, 0, 5155, 352, 31, 49, 151, 255 }, // 0x000070C0
	 { -121, 7, 1121, 0, 6101, 882, 209, 66, 168, 255 }, // 0x000070D0
	 { -115, -80, 1066, 0, 5888, 1440, 23, 63, 157, 255 }, // 0x000070E0
	 { 58, 100, 1169, 0, 4468, 288, 78, 10, 166, 255 }, // 0x000070F0
	 { 70, 275, 1209, 0, 4055, -833, 103, 12, 196, 255 }, // 0x00007100
	 { 88, 100, 1203, 0, 4039, 288, 105, 17, 202, 255 }, // 0x00007110
	 { 133, -80, 1188, 0, 4019, 1440, 100, 58, 224, 255 }, // 0x00007120
	 { 58, 90, 1169, 0, 4468, 352, 85, 35, 180, 255 }, // 0x00007130
	 { 76, 288, 1275, 0, 3319, -916, 116, 13, 26, 255 }, // 0x00007140
	 { 92, 100, 1284, 0, 3272, 288, 114, 20, 29, 255 }, // 0x00007150
	 { 116, 9, 1293, 0, 3254, 869, 94, 68, 28, 255 }, // 0x00007160
	 { 40, 287, 1332, 0, 2573, -906, 76, 16, 91, 255 }, // 0x00007170
	 { 56, 100, 1351, 0, 2570, 288, 74, 20, 92, 255 }, // 0x00007180
	 { 80, -80, 1379, 0, 2579, 1440, 66, 55, 83, 255 }, // 0x00007190
	 { -18, 260, 1359, 0, 1873, -738, 1, 14, 119, 255 }, // 0x000071A0
	 { -17, 100, 1375, 0, 1866, 288, 0, 20, 118, 255 }, // 0x000071B0
	 { -15, 12, 1396, 0, 1871, 849, 1, 66, 100, 255 }, // 0x000071C0
	 { -91, 286, 1341, 0, 1077, -902, 188, 10, 98, 255 }, // 0x000071D0
	 { -98, 100, 1350, 0, 1069, 288, 189, 17, 98, 255 }, // 0x000071E0
	 { -119, -80, 1375, 0, 1052, 1440, 194, 49, 90, 255 }, // 0x000071F0
	 { -143, 287, 1279, 0, 262, -908, 142, 6, 36, 255 }, // 0x00007200
	 { -150, 100, 1282, 0, 277, 288, 147, 20, 44, 255 }, // 0x00007210
	 { -179, 25, 1289, 0, 280, 768, 162, 61, 41, 255 }, // 0x00007220
	 { -142, 265, 1205, 0, 6740, -769, 156, 10, 191, 255 }, // 0x00007230
	 { -158, 100, 1198, 0, 6736, 288, 153, 17, 198, 255 }, // 0x00007240
	 { -150, 100, 1282, 0, 7445, 288, 147, 20, 44, 255 }, // 0x00007250
	 { -143, 287, 1279, 0, 7430, -908, 142, 6, 36, 255 }, // 0x00007260
	 { -185, -80, 1188, 0, 6736, 1440, 156, 53, 218, 255 }, // 0x00007270
	 { -179, 25, 1289, 0, 7448, 768, 162, 61, 41, 255 }, // 0x00007280
	 { -122, 100, 1166, 0, 6347, 288, 185, 9, 161, 255 }, // 0x00007290
};

Vtx_t _spot04_room_0_vertices_000072A0[10] = 
{
	 { -122, 100, 1166, 0, 6347, 288, 185, 9, 161, 255 }, // 0x000072A0
	 { -122, 90, 1166, 0, 6347, 352, 175, 25, 172, 255 }, // 0x000072B0
	 { -158, 100, 1198, 0, 6736, 288, 153, 17, 198, 255 }, // 0x000072C0
	 { -185, -80, 1188, 0, 6736, 1440, 156, 53, 218, 255 }, // 0x000072D0
	 { 133, -80, 1188, 0, 4019, 1440, 100, 58, 224, 255 }, // 0x000072E0
	 { 55, 48, 1132, 0, 4700, 623, 51, 61, 167, 255 }, // 0x000072F0
	 { 58, 90, 1169, 0, 4468, 352, 85, 35, 180, 255 }, // 0x00007300
	 { -2, 90, 1128, 0, 5155, 352, 31, 49, 151, 255 }, // 0x00007310
	 { -121, 7, 1121, 0, 6101, 882, 209, 66, 168, 255 }, // 0x00007320
	 { -61, 90, 1127, 0, 5699, 352, 225, 42, 148, 255 }, // 0x00007330
};

Vtx_t _spot04_room_0_vertices_00007340[8] = 
{
	 { -63, 100, 1195, 0, 512, 1024, 86, 0, 173, 255 }, // 0x00007340
	 { -63, 200, 1195, 0, 392, 0, 70, 187, 188, 255 }, // 0x00007350
	 { -3, 200, 1196, 0, 392, 0, 188, 187, 186, 255 }, // 0x00007360
	 { -3, 100, 1196, 0, 512, 1024, 173, 0, 170, 255 }, // 0x00007370
	 { -2, 200, 1144, 0, 0, 0, 9, 238, 138, 255 }, // 0x00007380
	 { -2, 100, 1128, 0, 0, 1024, 201, 17, 151, 255 }, // 0x00007390
	 { -62, 200, 1143, 0, 0, 0, 253, 237, 138, 255 }, // 0x000073A0
	 { -61, 100, 1127, 0, 0, 1024, 58, 17, 153, 255 }, // 0x000073B0
};

Vtx_t _spot04_room_0_vertices_000073C0[8] = 
{
	 { -62, 120, 1155, 0, 1024, 2048, 2, 0, 137, 255 }, // 0x000073C0
	 { -62, 160, 1155, 0, 1024, 1024, 2, 244, 137, 255 }, // 0x000073D0
	 { -42, 160, 1156, 0, 683, 1024, 2, 240, 138, 255 }, // 0x000073E0
	 { -42, 120, 1156, 0, 683, 2048, 2, 0, 137, 255 }, // 0x000073F0
	 { -62, 200, 1147, 0, 1024, 0, 2, 233, 139, 255 }, // 0x00007400
	 { -2, 200, 1148, 0, 0, 0, 2, 233, 139, 255 }, // 0x00007410
	 { -42, 160, 1156, 0, 683, 1024, 2, 240, 138, 255 }, // 0x00007420
	 { -2, 160, 1156, 0, 0, 1024, 2, 233, 139, 255 }, // 0x00007430
};

Vtx_t _spot04_room_0_vertices_00007440[4] = 
{
	 { -3, 100, 1196, 0, -341, -1115, 0, 120, 0, 255 }, // 0x00007440
	 { -2, 100, 1128, 0, -341, -341, 0, 120, 0, 255 }, // 0x00007450
	 { -61, 100, 1127, 0, 341, -341, 0, 120, 0, 255 }, // 0x00007460
	 { -63, 100, 1195, 0, 341, -1115, 0, 120, 0, 255 }, // 0x00007470
};

Vtx_t _spot04_room_0_vertices_00007480[14] = 
{
	 { -28, 355, 1253, 0, 523, 1000, 0, 119, 255, 255 }, // 0x00007480
	 { 76, 288, 1275, 0, 773, 140, 63, 101, 7, 255 }, // 0x00007490
	 { 70, 275, 1209, 0, 512, -30, 67, 96, 232, 255 }, // 0x000074A0
	 { 40, 287, 1332, 0, 1008, 617, 27, 99, 62, 255 }, // 0x000074B0
	 { 76, 288, 1275, 0, 840, 225, 63, 101, 7, 255 }, // 0x000074C0
	 { -28, 355, 1253, 0, 523, 1000, 0, 119, 255, 255 }, // 0x000074D0
	 { -33, 285, 1151, 0, 10, 750, 246, 98, 189, 255 }, // 0x000074E0
	 { -89, 285, 1160, 0, 0, 1230, 217, 101, 205, 255 }, // 0x000074F0
	 { 22, 299, 1165, 0, 207, 167, 32, 105, 208, 255 }, // 0x00007500
	 { -33, 285, 1151, 0, 54, 525, 246, 98, 189, 255 }, // 0x00007510
	 { -18, 260, 1359, 0, 1017, 1225, 5, 89, 79, 255 }, // 0x00007520
	 { -91, 286, 1341, 0, 838, 1832, 237, 99, 64, 255 }, // 0x00007530
	 { -142, 265, 1205, 0, 185, 1846, 193, 97, 225, 255 }, // 0x00007540
	 { -143, 287, 1279, 0, 507, 2091, 197, 103, 7, 255 }, // 0x00007550
};

Vtx_t _spot04_room_0_vertices_00007560[6] = 
{
	 { -2, 100, 1128, 0, -341, -341, 0, 120, 0, 255 }, // 0x00007560
	 { 58, 100, 1169, 0, -1024, -796, 0, 120, 0, 255 }, // 0x00007570
	 { 61, 100, 1010, 0, -1024, 1024, 0, 120, 0, 255 }, // 0x00007580
	 { -119, 100, 1006, 0, 1024, 1024, 0, 120, 0, 255 }, // 0x00007590
	 { -122, 100, 1166, 0, 1024, -796, 0, 120, 0, 255 }, // 0x000075A0
	 { -61, 100, 1127, 0, 341, -341, 0, 120, 0, 255 }, // 0x000075B0
};

Vtx_t _spot04_room_0_vertices_000075C0[8] = 
{
	 { 58, 90, 1169, 0, -2048, 256, 119, 0, 2, 255 }, // 0x000075C0
	 { 61, 90, 1010, 0, 512, 256, 119, 0, 2, 255 }, // 0x000075D0
	 { 61, 100, 1010, 0, 512, 0, 119, 0, 2, 255 }, // 0x000075E0
	 { 58, 100, 1169, 0, -2048, 0, 119, 0, 2, 255 }, // 0x000075F0
	 { -119, 90, 1006, 0, 1024, 256, 137, 0, 254, 255 }, // 0x00007600
	 { -122, 90, 1166, 0, 3584, 256, 137, 0, 254, 255 }, // 0x00007610
	 { -122, 100, 1166, 0, 3584, 0, 137, 0, 254, 255 }, // 0x00007620
	 { -119, 100, 1006, 0, 1024, 0, 137, 0, 254, 255 }, // 0x00007630
};

Vtx_t _spot04_room_0_vertices_00007640[6] = 
{
	 { -2, 90, 1128, 0, 614, 1024, 0, 136, 0, 255 }, // 0x00007640
	 { 61, 90, 1010, 0, 0, 410, 0, 136, 0, 255 }, // 0x00007650
	 { 58, 90, 1169, 0, 1024, 410, 0, 136, 0, 255 }, // 0x00007660
	 { -61, 90, 1127, 0, 614, 1638, 0, 136, 0, 255 }, // 0x00007670
	 { -119, 90, 1006, 0, 0, 2253, 0, 136, 0, 255 }, // 0x00007680
	 { -122, 90, 1166, 0, 1024, 2253, 0, 136, 0, 255 }, // 0x00007690
};

Vtx_t _spot04_room_0_vertices_000076A0[4] = 
{
	 { -79, 90, 1007, 0, 0, 256, 2, 0, 137, 255 }, // 0x000076A0
	 { -79, 20, 1007, 0, 0, 2048, 2, 0, 137, 255 }, // 0x000076B0
	 { -119, 20, 1006, 0, 1024, 2048, 2, 0, 137, 255 }, // 0x000076C0
	 { -119, 100, 1006, 0, 1024, 0, 2, 0, 137, 255 }, // 0x000076D0
};

Vtx_t _spot04_room_0_vertices_000076E0[4] = 
{
	 { 61, 100, 1010, 0, -1536, 0, 2, 0, 137, 255 }, // 0x000076E0
	 { 61, 90, 1010, 0, -1536, 256, 2, 0, 137, 255 }, // 0x000076F0
	 { -79, 90, 1007, 0, 2048, 256, 2, 0, 137, 255 }, // 0x00007700
	 { -119, 100, 1006, 0, 3072, 0, 2, 0, 137, 255 }, // 0x00007710
};

Vtx_t _spot04_room_0_vertices_00007720[4] = 
{
	 { -119, 100, 1006, 0, 1024, 1024, 0, 120, 0, 255 }, // 0x00007720
	 { -61, 100, 1127, 0, 341, -341, 0, 120, 0, 255 }, // 0x00007730
	 { -2, 100, 1128, 0, -341, -341, 0, 120, 0, 255 }, // 0x00007740
	 { 61, 100, 1010, 0, -1024, 1024, 0, 120, 0, 255 }, // 0x00007750
};

Vtx_t _spot04_room_0_vertices_00007760[16] = 
{
	 { -119, 100, 1006, 0, 3072, 1024, 119, 0, 2, 255 }, // 0x00007760
	 { -119, 120, 1006, 0, 3072, 0, 119, 0, 2, 255 }, // 0x00007770
	 { -122, 120, 1166, 0, -2048, 0, 119, 0, 2, 255 }, // 0x00007780
	 { -122, 100, 1166, 0, -2048, 1024, 119, 0, 2, 255 }, // 0x00007790
	 { 58, 100, 1169, 0, -2048, 1024, 137, 0, 254, 255 }, // 0x000077A0
	 { 58, 120, 1169, 0, -2048, 0, 137, 0, 254, 255 }, // 0x000077B0
	 { 61, 120, 1010, 0, 3072, 0, 137, 0, 254, 255 }, // 0x000077C0
	 { 61, 100, 1010, 0, 3072, 1024, 137, 0, 254, 255 }, // 0x000077D0
	 { -13, 100, 1008, 0, 4096, 1024, 2, 0, 137, 255 }, // 0x000077E0
	 { -13, 120, 1008, 0, 4096, 0, 2, 0, 137, 255 }, // 0x000077F0
	 { 61, 120, 1010, 0, 0, 0, 2, 0, 137, 255 }, // 0x00007800
	 { 61, 100, 1010, 0, 0, 1024, 2, 0, 137, 255 }, // 0x00007810
	 { -119, 100, 1006, 0, 0, 1024, 2, 0, 137, 255 }, // 0x00007820
	 { -119, 120, 1006, 0, 0, 0, 2, 0, 137, 255 }, // 0x00007830
	 { -45, 120, 1008, 0, 4096, 0, 2, 0, 137, 255 }, // 0x00007840
	 { -45, 100, 1008, 0, 4096, 1024, 2, 0, 137, 255 }, // 0x00007850
};

Vtx_t _spot04_room_0_vertices_00007860[6] = 
{
	 { -13, 100, 1004, 0, 0, -5120, 2, 0, 137, 255 }, // 0x00007860
	 { -13, -80, 1004, 0, 0, 7100, 2, 0, 137, 255 }, // 0x00007870
	 { -45, -80, 1004, 0, 2048, 7100, 2, 0, 137, 255 }, // 0x00007880
	 { -45, 100, 1004, 0, 2048, -5120, 2, 0, 137, 255 }, // 0x00007890
	 { -13, 115, 1004, 0, 0, -5632, 2, 0, 137, 255 }, // 0x000078A0
	 { -45, 115, 1004, 0, 2048, -5632, 2, 0, 137, 255 }, // 0x000078B0
};

Vtx_t _spot04_room_0_vertices_000078C0[6] = 
{
	 { -13, 100, 1006, 0, 0, -5120, 2, 0, 137, 255 }, // 0x000078C0
	 { -13, -80, 1006, 0, 0, 7100, 2, 0, 137, 255 }, // 0x000078D0
	 { -45, -80, 1006, 0, 2048, 7100, 2, 0, 137, 255 }, // 0x000078E0
	 { -45, 100, 1006, 0, 2048, -5120, 2, 0, 137, 255 }, // 0x000078F0
	 { -13, 115, 1006, 0, 0, -5632, 2, 0, 137, 255 }, // 0x00007900
	 { -45, 115, 1006, 0, 2048, -5632, 2, 0, 137, 255 }, // 0x00007910
};

Vtx_t _spot04_room_0_vertices_00007920[8] = 
{
	 { 53, 100, 1148, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00007920
	 { 43, 100, 1154, 0, 1024, 1024, 255, 255, 255, 255 }, // 0x00007930
	 { 42, 112, 1155, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00007940
	 { 52, 112, 1148, 0, 0, 0, 255, 255, 255, 255 }, // 0x00007950
	 { 55, 99, 1139, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00007960
	 { 41, 101, 1147, 0, 1024, 1024, 255, 255, 255, 255 }, // 0x00007970
	 { 43, 117, 1146, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00007980
	 { 56, 115, 1138, 0, 0, 0, 255, 255, 255, 255 }, // 0x00007990
};

Vtx_t _spot04_room_0_vertices_000079A0[8] = 
{
	 { -294, -80, 994, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079A0
	 { 272, -80, 994, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079B0
	 { -294, 355, 994, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079C0
	 { 272, 355, 994, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079D0
	 { -294, -80, 1554, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079E0
	 { 272, -80, 1554, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079F0
	 { -294, 355, 1554, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007A00
	 { 272, 355, 1554, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007A10
};

Gfx _spot04_room_0_dlist_00007A20[] =
{
	gsDPPipeSync(), // 0x00007A20
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007A28
	gsSPVertex(_spot04_room_0_vertices_000079A0, 8, 0), // 0x00007A30
	gsSPCullDisplayList(0, 7), // 0x00007A38
	gsDPPipeSync(), // 0x00007A40
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007A48
	gsDPPipeSync(), // 0x00007A50
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00007A58
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007A60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013F08), // 0x00007A68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007A70
	gsDPLoadSync(), // 0x00007A78
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007A80
	gsDPPipeSync(), // 0x00007A88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007A90
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007A98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000E010), // 0x00007AA0
	gsDPTileSync(), // 0x00007AA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00007AB0
	gsDPLoadSync(), // 0x00007AB8
	gsDPLoadTLUTCmd(7, 255), // 0x00007AC0
	gsDPPipeSync(), // 0x00007AC8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007AD0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007AD8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00007AE0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00007AE8
	gsDPSetPrimColor(0, 0, 185, 175, 154, 255), // 0x00007AF0
	gsSPVertex(_spot04_room_0_vertices_00006EA0, 32, 0), // 0x00007AF8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00007B00
	gsSP2Triangles(5, 6, 7, 0, 8, 9, 7, 0), // 0x00007B08
	gsSP2Triangles(10, 11, 12, 0, 6, 5, 12, 0), // 0x00007B10
	gsSP2Triangles(13, 14, 15, 0, 14, 16, 15, 0), // 0x00007B18
	gsSP2Triangles(11, 10, 15, 0, 17, 18, 19, 0), // 0x00007B20
	gsSP2Triangles(18, 20, 19, 0, 21, 22, 23, 0), // 0x00007B28
	gsSP2Triangles(22, 17, 23, 0, 24, 22, 21, 0), // 0x00007B30
	gsSP2Triangles(20, 18, 25, 0, 16, 14, 26, 0), // 0x00007B38
	gsSP2Triangles(14, 13, 26, 0, 20, 27, 19, 0), // 0x00007B40
	gsSP2Triangles(4, 3, 28, 0, 29, 21, 23, 0), // 0x00007B48
	gsSP2Triangles(23, 17, 19, 0, 16, 30, 31, 0), // 0x00007B50
	gsSP1Triangle(16, 26, 30, 0), // 0x00007B58
	gsSPVertex(_spot04_room_0_vertices_000070A0, 32, 0), // 0x00007B60
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00007B68
	gsSP2Triangles(0, 4, 3, 0, 5, 6, 7, 0), // 0x00007B70
	gsSP2Triangles(8, 9, 7, 0, 9, 5, 7, 0), // 0x00007B78
	gsSP2Triangles(7, 6, 10, 0, 7, 10, 11, 0), // 0x00007B80
	gsSP2Triangles(12, 8, 7, 0, 12, 7, 11, 0), // 0x00007B88
	gsSP2Triangles(13, 14, 11, 0, 13, 11, 10, 0), // 0x00007B90
	gsSP2Triangles(14, 15, 12, 0, 14, 12, 11, 0), // 0x00007B98
	gsSP2Triangles(14, 13, 16, 0, 14, 16, 17, 0), // 0x00007BA0
	gsSP2Triangles(18, 15, 14, 0, 18, 14, 17, 0), // 0x00007BA8
	gsSP2Triangles(19, 20, 17, 0, 19, 17, 16, 0), // 0x00007BB0
	gsSP2Triangles(20, 21, 18, 0, 20, 18, 17, 0), // 0x00007BB8
	gsSP2Triangles(19, 22, 23, 0, 19, 23, 20, 0), // 0x00007BC0
	gsSP2Triangles(23, 24, 21, 0, 23, 21, 20, 0), // 0x00007BC8
	gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0), // 0x00007BD0
	gsSP2Triangles(26, 29, 30, 0, 26, 30, 27, 0), // 0x00007BD8
	gsSP1Triangle(31, 26, 25, 0), // 0x00007BE0
	gsSPVertex(_spot04_room_0_vertices_000072A0, 10, 0), // 0x00007BE8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00007BF0
	gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0), // 0x00007BF8
	gsSP2Triangles(8, 1, 9, 0, 1, 8, 3, 0), // 0x00007C00
	gsDPPipeSync(), // 0x00007C08
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00011D08), // 0x00007C10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x00007C18
	gsDPLoadSync(), // 0x00007C20
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007C28
	gsDPPipeSync(), // 0x00007C30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x00007C38
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00007C40
	gsSPVertex(_spot04_room_0_vertices_00007340, 8, 0), // 0x00007C48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007C50
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00007C58
	gsSP2Triangles(1, 6, 4, 0, 1, 4, 2, 0), // 0x00007C60
	gsSP2Triangles(0, 7, 6, 0, 0, 6, 1, 0), // 0x00007C68
	gsDPPipeSync(), // 0x00007C70
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007C78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000FD08), // 0x00007C80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 5, 0), // 0x00007C88
	gsDPLoadSync(), // 0x00007C90
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00007C98
	gsDPPipeSync(), // 0x00007CA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 2, 5, 0), // 0x00007CA8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00007CB0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007CB8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00007CC0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007CC8
	gsSPVertex(_spot04_room_0_vertices_000073C0, 8, 0), // 0x00007CD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007CD8
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 6, 0), // 0x00007CE0
	gsSP1Triangle(5, 7, 6, 0), // 0x00007CE8
	gsDPPipeSync(), // 0x00007CF0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000F508), // 0x00007CF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00007D00
	gsDPLoadSync(), // 0x00007D08
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00007D10
	gsDPPipeSync(), // 0x00007D18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00007D20
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007D28
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007D30
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007D38
	gsSPVertex(_spot04_room_0_vertices_00007440, 4, 0), // 0x00007D40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007D48
	gsDPPipeSync(), // 0x00007D50
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00007D58
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00015B08), // 0x00007D60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 4, 0), // 0x00007D68
	gsDPLoadSync(), // 0x00007D70
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007D78
	gsDPPipeSync(), // 0x00007D80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 5, 0, 1, 4, 0), // 0x00007D88
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00007D90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000E010), // 0x00007D98
	gsDPTileSync(), // 0x00007DA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00007DA8
	gsDPLoadSync(), // 0x00007DB0
	gsDPLoadTLUTCmd(7, 255), // 0x00007DB8
	gsDPPipeSync(), // 0x00007DC0
	gsSPVertex(_spot04_room_0_vertices_00007480, 14, 0), // 0x00007DC8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x00007DD0
	gsSP2Triangles(5, 6, 7, 0, 5, 8, 9, 0), // 0x00007DD8
	gsSP2Triangles(0, 2, 8, 0, 0, 10, 3, 0), // 0x00007DE0
	gsSP2Triangles(11, 10, 0, 0, 5, 7, 12, 0), // 0x00007DE8
	gsSP2Triangles(5, 12, 13, 0, 11, 5, 13, 0), // 0x00007DF0
	gsDPPipeSync(), // 0x00007DF8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007E00
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000F508), // 0x00007E08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00007E10
	gsDPLoadSync(), // 0x00007E18
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00007E20
	gsDPPipeSync(), // 0x00007E28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00007E30
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007E38
	gsSPVertex(_spot04_room_0_vertices_00007560, 6, 0), // 0x00007E40
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00007E48
	gsDPPipeSync(), // 0x00007E50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000F108), // 0x00007E58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 3, 0, 0, 6, 0), // 0x00007E60
	gsDPLoadSync(), // 0x00007E68
	gsDPLoadBlock(7, 0, 0, 511, 128), // 0x00007E70
	gsDPPipeSync(), // 0x00007E78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 3, 0, 0, 6, 0), // 0x00007E80
	gsDPSetTileSize(0, 0, 0, 252, 28), // 0x00007E88
	gsSPVertex(_spot04_room_0_vertices_000075C0, 8, 0), // 0x00007E90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007E98
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007EA0
	gsDPPipeSync(), // 0x00007EA8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00007EB0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013F08), // 0x00007EB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007EC0
	gsDPLoadSync(), // 0x00007EC8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007ED0
	gsDPPipeSync(), // 0x00007ED8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007EE0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007EE8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000E010), // 0x00007EF0
	gsDPTileSync(), // 0x00007EF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00007F00
	gsDPLoadSync(), // 0x00007F08
	gsDPLoadTLUTCmd(7, 255), // 0x00007F10
	gsDPPipeSync(), // 0x00007F18
	gsDPSetPrimColor(0, 0, 120, 120, 90, 255), // 0x00007F20
	gsSPVertex(_spot04_room_0_vertices_00007640, 6, 0), // 0x00007F28
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x00007F30
	gsSP2Triangles(0, 4, 1, 0, 3, 5, 4, 0), // 0x00007F38
	gsDPPipeSync(), // 0x00007F40
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007F48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00010D08), // 0x00007F50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00007F58
	gsDPLoadSync(), // 0x00007F60
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00007F68
	gsDPPipeSync(), // 0x00007F70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00007F78
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00007F80
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007F88
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00007F90
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007F98
	gsSPVertex(_spot04_room_0_vertices_000076A0, 4, 0), // 0x00007FA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007FA8
	gsDPPipeSync(), // 0x00007FB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000F108), // 0x00007FB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 3, 0, 0, 6, 0), // 0x00007FC0
	gsDPLoadSync(), // 0x00007FC8
	gsDPLoadBlock(7, 0, 0, 511, 128), // 0x00007FD0
	gsDPPipeSync(), // 0x00007FD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 3, 0, 0, 6, 0), // 0x00007FE0
	gsDPSetTileSize(0, 0, 0, 252, 28), // 0x00007FE8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007FF0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007FF8
	gsSPVertex(_spot04_room_0_vertices_000076E0, 4, 0), // 0x00008000
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008008
	gsDPPipeSync(), // 0x00008010
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000F508), // 0x00008018
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x00008020
	gsDPLoadSync(), // 0x00008028
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008030
	gsDPPipeSync(), // 0x00008038
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x00008040
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008048
	gsSPVertex(_spot04_room_0_vertices_00007720, 4, 0), // 0x00008050
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008058
	gsDPPipeSync(), // 0x00008060
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000E108), // 0x00008068
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x00008070
	gsDPLoadSync(), // 0x00008078
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008080
	gsDPPipeSync(), // 0x00008088
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x00008090
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008098
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000080A0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000080A8
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000080B0
	gsSPVertex(_spot04_room_0_vertices_00007760, 16, 0), // 0x000080B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000080C0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000080C8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000080D0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000080D8
	gsDPPipeSync(), // 0x000080E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000BF08), // 0x000080E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 5, 0), // 0x000080F0
	gsDPLoadSync(), // 0x000080F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008100
	gsDPPipeSync(), // 0x00008108
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 1, 5, 0), // 0x00008110
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008118
	gsSPVertex(_spot04_room_0_vertices_00007860, 6, 0), // 0x00008120
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008128
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00008130
	gsDPPipeSync(), // 0x00008138
	gsDPSetPrimColor(0, 0, 0, 0, 0, 255), // 0x00008140
	gsSPVertex(_spot04_room_0_vertices_000078C0, 6, 0), // 0x00008148
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008150
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00008158
	gsDPPipeSync(), // 0x00008160
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000E908), // 0x00008168
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00008170
	gsDPLoadSync(), // 0x00008178
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008180
	gsDPPipeSync(), // 0x00008188
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00008190
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008198
	gsSPGeometryMode(0xFF020000, 0x00000000), // 0x000081A0
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x000081A8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000081B0
	gsSPVertex(_spot04_room_0_vertices_00007920, 8, 0), // 0x000081B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000081C0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000081C8
	gsSPEndDisplayList(), // 0x000081D0
};

Vtx_t _spot04_room_0_vertices_000081D8[8] = 
{
	 { -483, 100, -602, 0, 392, 0, 71, 187, 66, 255 }, // 0x000081D8
	 { -480, 100, -522, 0, 0, 0, 32, 228, 112, 255 }, // 0x000081E8
	 { -480, 0, -522, 0, 0, 1024, 87, 0, 81, 255 }, // 0x000081F8
	 { -483, 0, -602, 0, 512, 1024, 87, 0, 81, 255 }, // 0x00008208
	 { -423, 100, -604, 0, 392, 0, 190, 187, 71, 255 }, // 0x00008218
	 { -420, 100, -524, 0, 0, 0, 232, 228, 114, 255 }, // 0x00008228
	 { -423, 0, -604, 0, 512, 1024, 175, 0, 87, 255 }, // 0x00008238
	 { -420, 0, -524, 0, 0, 1024, 175, 0, 87, 255 }, // 0x00008248
};

Vtx_t _spot04_room_0_vertices_00008258[20] = 
{
	 { -318, 207, -722, 0, 2982, 122, 82, 74, 210, 255 }, // 0x00008258
	 { -318, 185, -594, 0, 2260, 324, 94, 66, 33, 255 }, // 0x00008268
	 { -318, 0, -594, 0, 2260, 2048, 113, 0, 39, 255 }, // 0x00008278
	 { -318, 0, -722, 0, 2982, 2048, 104, 0, 198, 255 }, // 0x00008288
	 { -454, 0, -805, 0, 3851, 2048, 251, 0, 137, 255 }, // 0x00008298
	 { -454, 180, -805, 0, 3851, 368, 252, 69, 159, 255 }, // 0x000082A8
	 { -581, 0, -713, 0, 4727, 2048, 148, 0, 206, 255 }, // 0x000082B8
	 { -581, 208, -713, 0, 4727, 110, 171, 73, 214, 255 }, // 0x000082C8
	 { -420, 0, -524, 0, 1489, 2048, 175, 0, 87, 255 }, // 0x000082D8
	 { -371, 0, -526, 0, 1764, 2048, 37, 0, 114, 255 }, // 0x000082E8
	 { -420, 100, -524, 0, 1489, 1117, 232, 228, 114, 255 }, // 0x000082F8
	 { -371, 201, -526, 0, 1764, 181, 42, 57, 96, 255 }, // 0x00008308
	 { -521, 0, -521, 0, 866, 2048, 223, 0, 115, 255 }, // 0x00008318
	 { -480, 100, -522, 0, 1097, 1117, 32, 228, 112, 255 }, // 0x00008328
	 { -521, 201, -521, 0, 866, 181, 221, 59, 98, 255 }, // 0x00008338
	 { -480, 0, -522, 0, 1097, 2048, 87, 0, 81, 255 }, // 0x00008348
	 { -572, 195, -594, 0, 328, 231, 161, 65, 31, 255 }, // 0x00008358
	 { -572, 0, -594, 0, 328, 2048, 143, 0, 40, 255 }, // 0x00008368
	 { -572, 195, -594, 0, 5448, 231, 161, 65, 31, 255 }, // 0x00008378
	 { -572, 0, -594, 0, 5448, 2048, 143, 0, 40, 255 }, // 0x00008388
};

Vtx_t _spot04_room_0_vertices_00008398[34] = 
{
	 { -456, 235, -648, 0, 523, 1000, 224, 114, 15, 255 }, // 0x00008398
	 { -581, 208, -713, 0, 773, 140, 224, 114, 15, 255 }, // 0x000083A8
	 { -572, 195, -594, 0, 512, -30, 223, 114, 15, 255 }, // 0x000083B8
	 { -456, 235, -648, 0, 523, 1000, 223, 114, 13, 255 }, // 0x000083C8
	 { -572, 195, -594, 0, 512, -30, 223, 114, 13, 255 }, // 0x000083D8
	 { -480, 219, -564, 0, 313, 444, 223, 114, 13, 255 }, // 0x000083E8
	 { -521, 201, -521, 0, 207, 167, 222, 114, 15, 255 }, // 0x000083F8
	 { -480, 219, -564, 0, 313, 444, 222, 114, 15, 255 }, // 0x00008408
	 { -456, 235, -648, 0, 523, 1000, 39, 113, 5, 255 }, // 0x00008418
	 { -419, 219, -566, 0, 175, 1153, 39, 113, 5, 255 }, // 0x00008428
	 { -318, 185, -594, 0, 185, 1846, 39, 113, 5, 255 }, // 0x00008438
	 { -371, 201, -526, 0, 0, 1230, 39, 113, 5, 255 }, // 0x00008448
	 { -456, 235, -648, 0, 523, 1000, 33, 113, 19, 255 }, // 0x00008458
	 { -318, 185, -594, 0, 185, 1846, 33, 113, 19, 255 }, // 0x00008468
	 { -318, 207, -722, 0, 507, 2091, 33, 113, 19, 255 }, // 0x00008478
	 { -581, 208, -713, 0, 840, 225, 252, 113, 217, 255 }, // 0x00008488
	 { -456, 235, -648, 0, 523, 1000, 252, 113, 217, 255 }, // 0x00008498
	 { -454, 180, -805, 0, 1017, 1225, 252, 113, 217, 255 }, // 0x000084A8
	 { -454, 180, -805, 0, 1017, 1225, 2, 113, 217, 255 }, // 0x000084B8
	 { -456, 235, -648, 0, 523, 1000, 2, 113, 217, 255 }, // 0x000084C8
	 { -318, 207, -722, 0, 507, 2091, 2, 113, 217, 255 }, // 0x000084D8
	 { -480, 219, -564, 0, 313, 444, 2, 110, 47, 255 }, // 0x000084E8
	 { -521, 201, -521, 0, 207, 167, 2, 110, 47, 255 }, // 0x000084F8
	 { -371, 201, -526, 0, 0, 1230, 2, 110, 47, 255 }, // 0x00008508
	 { -419, 219, -566, 0, 175, 1153, 2, 110, 47, 255 }, // 0x00008518
	 { -480, 219, -564, 0, 313, 444, 171, 33, 77, 255 }, // 0x00008528
	 { -419, 219, -566, 0, 175, 1153, 92, 34, 68, 255 }, // 0x00008538
	 { -450, 299, -565, 0, 277, 823, 0, 97, 69, 255 }, // 0x00008548
	 { -456, 235, -648, 0, 523, 1000, 146, 41, 233, 255 }, // 0x00008558
	 { -480, 219, -564, 0, 313, 444, 146, 41, 233, 255 }, // 0x00008568
	 { -450, 299, -565, 0, 277, 823, 146, 41, 233, 255 }, // 0x00008578
	 { -450, 299, -565, 0, 277, 823, 106, 40, 217, 255 }, // 0x00008588
	 { -419, 219, -566, 0, 175, 1153, 106, 40, 217, 255 }, // 0x00008598
	 { -456, 235, -648, 0, 523, 1000, 106, 40, 217, 255 }, // 0x000085A8
};

Vtx_t _spot04_room_0_vertices_000085B8[8] = 
{
	 { -581, 0, -805, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085B8
	 { -318, 0, -805, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085C8
	 { -581, 299, -805, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085D8
	 { -318, 299, -805, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085E8
	 { -581, 0, -521, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085F8
	 { -318, 0, -521, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008608
	 { -581, 299, -521, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008618
	 { -318, 299, -521, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008628
};

Gfx _spot04_room_0_dlist_00008638[] =
{
	gsDPPipeSync(), // 0x00008638
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00008640
	gsSPVertex(_spot04_room_0_vertices_000085B8, 8, 0), // 0x00008648
	gsSPCullDisplayList(0, 7), // 0x00008650
	gsDPPipeSync(), // 0x00008658
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008660
	gsDPPipeSync(), // 0x00008668
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00008670
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008678
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00011D08), // 0x00008680
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x00008688
	gsDPLoadSync(), // 0x00008690
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00008698
	gsDPPipeSync(), // 0x000086A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x000086A8
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x000086B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000E010), // 0x000086B8
	gsDPTileSync(), // 0x000086C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000086C8
	gsDPLoadSync(), // 0x000086D0
	gsDPLoadTLUTCmd(7, 255), // 0x000086D8
	gsDPPipeSync(), // 0x000086E0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000086E8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000086F0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000086F8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00008700
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00008708
	gsSPVertex(_spot04_room_0_vertices_000081D8, 8, 0), // 0x00008710
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008718
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0), // 0x00008720
	gsSP2Triangles(6, 4, 0, 0, 6, 0, 3, 0), // 0x00008728
	gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0), // 0x00008730
	gsDPPipeSync(), // 0x00008738
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00016908), // 0x00008740
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 4, 0), // 0x00008748
	gsDPLoadSync(), // 0x00008750
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x00008758
	gsDPPipeSync(), // 0x00008760
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 6, 0, 0, 4, 0), // 0x00008768
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x00008770
	gsSPVertex(_spot04_room_0_vertices_00008258, 20, 0), // 0x00008778
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008780
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00008788
	gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0), // 0x00008790
	gsSP2Triangles(8, 9, 10, 0, 9, 2, 1, 0), // 0x00008798
	gsSP2Triangles(9, 1, 11, 0, 10, 9, 11, 0), // 0x000087A0
	gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0), // 0x000087A8
	gsSP2Triangles(14, 16, 17, 0, 14, 17, 12, 0), // 0x000087B0
	gsSP2Triangles(18, 7, 6, 0, 18, 6, 19, 0), // 0x000087B8
	gsSP2Triangles(14, 13, 10, 0, 14, 10, 11, 0), // 0x000087C0
	gsDPPipeSync(), // 0x000087C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00015B08), // 0x000087D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 4, 0), // 0x000087D8
	gsDPLoadSync(), // 0x000087E0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000087E8
	gsDPPipeSync(), // 0x000087F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 5, 0, 1, 4, 0), // 0x000087F8
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00008800
	gsSPVertex(_spot04_room_0_vertices_00008398, 32, 0), // 0x00008808
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008810
	gsSP2Triangles(2, 6, 7, 0, 8, 9, 10, 0), // 0x00008818
	gsSP2Triangles(9, 11, 10, 0, 12, 13, 14, 0), // 0x00008820
	gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0), // 0x00008828
	gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0), // 0x00008830
	gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0), // 0x00008838
	gsSPVertex(_spot04_room_0_vertices_00008588, 3, 0), // 0x00008840
	gsSP1Triangle(0, 1, 2, 0), // 0x00008848
	gsSPEndDisplayList(), // 0x00008850
};

Vtx_t _spot04_room_0_vertices_00008858[19] = 
{
	 { 956, 0, 783, 0, 7091, 1823, 213, 92, 63, 255 }, // 0x00008858
	 { 1020, 79, 713, 0, 7135, 1143, 183, 7, 94, 255 }, // 0x00008868
	 { 992, 0, 646, 0, 6181, 1699, 141, 32, 2, 255 }, // 0x00008878
	 { 1032, 100, 579, 0, 5322, 826, 214, 245, 145, 255 }, // 0x00008888
	 { 925, 0, 564, 0, 5514, 1475, 213, 95, 199, 255 }, // 0x00008898
	 { 1068, 0, 723, 0, 7539, 1847, 23, 16, 116, 255 }, // 0x000088A8
	 { 1344, 0, 569, 0, 2443, 1899, 64, 101, 254, 255 }, // 0x000088B8
	 { 1213, 84, 599, 0, 2416, 1125, 118, 12, 241, 255 }, // 0x000088C8
	 { 1197, 0, 650, 0, 1934, 1870, 90, 17, 77, 255 }, // 0x000088D8
	 { 1146, 0, 423, 0, 4109, 1497, 220, 95, 194, 255 }, // 0x000088E8
	 { 1084, 100, 549, 0, 4358, 835, 178, 249, 166, 255 }, // 0x000088F8
	 { 1174, 0, 536, 0, 3386, 1724, 53, 41, 157, 255 }, // 0x00008908
	 { 972, 149, 627, 0, 6196, 422, 159, 17, 188, 255 }, // 0x00008918
	 { 1059, 146, 565, 0, 4856, 452, 204, 58, 166, 255 }, // 0x00008928
	 { 972, 180, 723, 0, 7064, 276, 177, 233, 87, 255 }, // 0x00008938
	 { 1068, 149, 723, 0, 7817, 608, 47, 35, 104, 255 }, // 0x00008948
	 { 1245, 180, 567, 0, 2472, 322, 114, 233, 231, 255 }, // 0x00008958
	 { 1197, 149, 650, 0, 1697, 630, 68, 34, 92, 255 }, // 0x00008968
	 { 1162, 149, 519, 0, 3351, 455, 245, 20, 139, 255 }, // 0x00008978
};

Vtx_t _spot04_room_0_vertices_00008988[8] = 
{
	 { 1078, 0, 658, 0, 512, 1024, 31, 0, 141, 255 }, // 0x00008988
	 { 1078, 100, 658, 0, 392, 0, 25, 187, 162, 255 }, // 0x00008998
	 { 1130, 100, 628, 0, 392, 0, 162, 187, 231, 255 }, // 0x000089A8
	 { 1130, 0, 628, 0, 512, 1024, 141, 0, 225, 255 }, // 0x000089B8
	 { 1084, 100, 549, 0, 0, 0, 178, 249, 166, 255 }, // 0x000089C8
	 { 1076, 0, 535, 0, 0, 1024, 138, 7, 20, 255 }, // 0x000089D8
	 { 1032, 100, 579, 0, 0, 0, 214, 245, 145, 255 }, // 0x000089E8
	 { 1024, 0, 565, 0, 0, 1024, 74, 7, 162, 255 }, // 0x000089F8
};

Vtx_t _spot04_room_0_vertices_00008A08[32] = 
{
	 { 1084, 100, 549, 0, 4358, 835, 178, 249, 166, 255 }, // 0x00008A08
	 { 1146, 0, 423, 0, 4109, 1497, 220, 95, 194, 255 }, // 0x00008A18
	 { 1076, 0, 535, 0, 4493, 1643, 138, 7, 20, 255 }, // 0x00008A28
	 { 1032, 100, 579, 0, 5322, 826, 214, 245, 145, 255 }, // 0x00008A38
	 { 1024, 0, 565, 0, 5190, 1634, 74, 7, 162, 255 }, // 0x00008A48
	 { 925, 0, 564, 0, 5514, 1475, 213, 95, 199, 255 }, // 0x00008A58
	 { 1245, 309, 567, 0, 2312, -752, 115, 0, 225, 255 }, // 0x00008A68
	 { 1245, 180, 567, 0, 2472, 322, 114, 233, 231, 255 }, // 0x00008A78
	 { 1162, 149, 519, 0, 3351, 455, 245, 20, 139, 255 }, // 0x00008A88
	 { 1162, 309, 519, 0, 3071, -873, 225, 0, 141, 255 }, // 0x00008A98
	 { 1114, 189, 602, 0, 2524, -155, 151, 51, 25, 255 }, // 0x00008AA8
	 { 1114, 309, 602, 0, 1999, -819, 141, 0, 31, 255 }, // 0x00008AB8
	 { 1197, 309, 650, 0, 1523, -698, 31, 0, 115, 255 }, // 0x00008AC8
	 { 1197, 149, 650, 0, 1697, 630, 68, 34, 92, 255 }, // 0x00008AD8
	 { 972, 269, 723, 0, 7182, -467, 172, 0, 84, 255 }, // 0x00008AE8
	 { 972, 180, 723, 0, 7064, 276, 177, 233, 87, 255 }, // 0x00008AF8
	 { 1068, 149, 723, 0, 7817, 608, 47, 35, 104, 255 }, // 0x00008B08
	 { 1068, 269, 723, 0, 7990, -388, 84, 0, 84, 255 }, // 0x00008B18
	 { 1068, 189, 627, 0, 6988, -164, 74, 51, 178, 255 }, // 0x00008B28
	 { 1068, 269, 627, 0, 7310, -496, 84, 0, 172, 255 }, // 0x00008B38
	 { 972, 269, 627, 0, 6385, -574, 172, 0, 172, 255 }, // 0x00008B48
	 { 972, 149, 627, 0, 6196, 422, 159, 17, 188, 255 }, // 0x00008B58
	 { 1091, 170, 614, 0, 7403, 0, 248, 119, 244, 255 }, // 0x00008B68
	 { 1150, 139, 696, 0, 9003, 732, 49, 72, 82, 255 }, // 0x00008B78
	 { 1091, 170, 614, 0, 8410, 0, 248, 119, 244, 255 }, // 0x00008B88
	 { 1091, 170, 614, 0, 2110, 0, 248, 119, 244, 255 }, // 0x00008B98
	 { 1197, 149, 650, 0, 1697, 630, 68, 34, 92, 255 }, // 0x00008BA8
	 { 1091, 170, 614, 0, 1254, 0, 248, 119, 244, 255 }, // 0x00008BB8
	 { 1150, 139, 696, 0, 811, 732, 49, 72, 82, 255 }, // 0x00008BC8
	 { 1059, 146, 565, 0, 4856, 452, 204, 58, 166, 255 }, // 0x00008BD8
	 { 1091, 170, 614, 0, 2938, 0, 248, 119, 244, 255 }, // 0x00008BE8
	 { 1091, 170, 614, 0, 4104, 0, 248, 119, 244, 255 }, // 0x00008BF8
};

Vtx_t _spot04_room_0_vertices_00008C08[13] = 
{
	 { 1068, 189, 627, 0, 6988, -164, 74, 51, 178, 255 }, // 0x00008C08
	 { 1091, 170, 614, 0, 6592, 0, 248, 119, 244, 255 }, // 0x00008C18
	 { 972, 149, 627, 0, 6196, 422, 159, 17, 188, 255 }, // 0x00008C28
	 { 1091, 170, 614, 0, 5526, 0, 248, 119, 244, 255 }, // 0x00008C38
	 { 1059, 146, 565, 0, 4856, 452, 204, 58, 166, 255 }, // 0x00008C48
	 { 1068, 149, 723, 0, 7817, 608, 47, 35, 104, 255 }, // 0x00008C58
	 { 1068, 0, 723, 0, 7539, 1847, 23, 16, 116, 255 }, // 0x00008C68
	 { 1150, 0, 696, 0, 9003, 1884, 63, 0, 102, 255 }, // 0x00008C78
	 { 1150, 139, 696, 0, 9003, 732, 49, 72, 82, 255 }, // 0x00008C88
	 { 1150, 0, 696, 0, 811, 1884, 63, 0, 102, 255 }, // 0x00008C98
	 { 1197, 0, 650, 0, 1934, 1870, 90, 17, 77, 255 }, // 0x00008CA8
	 { 1197, 149, 650, 0, 1697, 630, 68, 34, 92, 255 }, // 0x00008CB8
	 { 1150, 139, 696, 0, 811, 732, 49, 72, 82, 255 }, // 0x00008CC8
};

Vtx_t _spot04_room_0_vertices_00008CD8[24] = 
{
	 { 972, 269, 627, 0, 922, 1843, 179, 92, 0, 255 }, // 0x00008CD8
	 { 972, 269, 723, 0, 922, 205, 179, 92, 0, 255 }, // 0x00008CE8
	 { 1020, 309, 675, 0, 512, 1024, 179, 92, 0, 255 }, // 0x00008CF8
	 { 972, 269, 723, 0, 922, 205, 0, 92, 77, 255 }, // 0x00008D08
	 { 1068, 269, 723, 0, 102, 205, 0, 92, 77, 255 }, // 0x00008D18
	 { 1020, 309, 675, 0, 512, 1024, 0, 92, 77, 255 }, // 0x00008D28
	 { 1020, 309, 675, 0, 512, 1024, 77, 92, 0, 255 }, // 0x00008D38
	 { 1068, 269, 723, 0, 102, 205, 77, 92, 0, 255 }, // 0x00008D48
	 { 1068, 269, 627, 0, 102, 1843, 77, 92, 0, 255 }, // 0x00008D58
	 { 972, 269, 627, 0, 922, 1843, 0, 92, 179, 255 }, // 0x00008D68
	 { 1020, 309, 675, 0, 512, 1024, 0, 92, 179, 255 }, // 0x00008D78
	 { 1068, 269, 627, 0, 102, 1843, 0, 92, 179, 255 }, // 0x00008D88
	 { 1197, 309, 650, 0, 922, 205, 66, 92, 38, 255 }, // 0x00008D98
	 { 1245, 309, 567, 0, 102, 205, 66, 92, 38, 255 }, // 0x00008DA8
	 { 1179, 349, 584, 0, 512, 1024, 66, 92, 38, 255 }, // 0x00008DB8
	 { 1114, 309, 602, 0, 922, 1843, 218, 92, 66, 255 }, // 0x00008DC8
	 { 1197, 309, 650, 0, 922, 205, 218, 92, 66, 255 }, // 0x00008DD8
	 { 1179, 349, 584, 0, 512, 1024, 218, 92, 66, 255 }, // 0x00008DE8
	 { 1162, 309, 519, 0, 102, 1843, 38, 92, 190, 255 }, // 0x00008DF8
	 { 1179, 349, 584, 0, 512, 1024, 38, 92, 190, 255 }, // 0x00008E08
	 { 1245, 309, 567, 0, 102, 205, 38, 92, 190, 255 }, // 0x00008E18
	 { 1162, 309, 519, 0, 102, 1843, 190, 92, 218, 255 }, // 0x00008E28
	 { 1114, 309, 602, 0, 922, 1843, 190, 92, 218, 255 }, // 0x00008E38
	 { 1179, 349, 584, 0, 512, 1024, 190, 92, 218, 255 }, // 0x00008E48
};

Vtx_t _spot04_room_0_vertices_00008E58[8] = 
{
	 { 1231, 0, 373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008E58
	 { 1350, 0, 581, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008E68
	 { 1231, 349, 373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008E78
	 { 1350, 349, 581, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008E88
	 { 847, 0, 595, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008E98
	 { 967, 0, 802, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008EA8
	 { 847, 349, 595, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008EB8
	 { 967, 349, 802, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008EC8
};

Gfx _spot04_room_0_dlist_00008ED8[] =
{
	gsDPPipeSync(), // 0x00008ED8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00008EE0
	gsSPVertex(_spot04_room_0_vertices_00008E58, 8, 0), // 0x00008EE8
	gsSPCullDisplayList(0, 7), // 0x00008EF0
	gsDPPipeSync(), // 0x00008EF8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008F00
	gsDPPipeSync(), // 0x00008F08
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00008F10
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008F18
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013F08), // 0x00008F20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008F28
	gsDPLoadSync(), // 0x00008F30
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008F38
	gsDPPipeSync(), // 0x00008F40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008F48
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008F50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000E010), // 0x00008F58
	gsDPTileSync(), // 0x00008F60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00008F68
	gsDPLoadSync(), // 0x00008F70
	gsDPLoadTLUTCmd(7, 255), // 0x00008F78
	gsDPPipeSync(), // 0x00008F80
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008F88
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00008F90
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00008F98
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00008FA0
	gsDPSetPrimColor(0, 0, 185, 175, 154, 255), // 0x00008FA8
	gsSPVertex(_spot04_room_0_vertices_00008858, 19, 0), // 0x00008FB0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00008FB8
	gsSP2Triangles(1, 0, 5, 0, 6, 7, 8, 0), // 0x00008FC0
	gsSP2Triangles(9, 10, 11, 0, 7, 6, 11, 0), // 0x00008FC8
	gsSP2Triangles(12, 13, 3, 0, 1, 14, 12, 0), // 0x00008FD0
	gsSP2Triangles(15, 14, 1, 0, 7, 16, 17, 0), // 0x00008FD8
	gsSP2Triangles(18, 16, 7, 0, 7, 11, 18, 0), // 0x00008FE0
	gsSP2Triangles(11, 10, 18, 0, 3, 2, 12, 0), // 0x00008FE8
	gsSP2Triangles(2, 1, 12, 0, 1, 5, 15, 0), // 0x00008FF0
	gsSP2Triangles(8, 7, 17, 0, 3, 13, 10, 0), // 0x00008FF8
	gsDPPipeSync(), // 0x00009000
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00011D08), // 0x00009008
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x00009010
	gsDPLoadSync(), // 0x00009018
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00009020
	gsDPPipeSync(), // 0x00009028
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x00009030
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00009038
	gsSPVertex(_spot04_room_0_vertices_00008988, 8, 0), // 0x00009040
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009048
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00009050
	gsSP2Triangles(1, 6, 4, 0, 1, 4, 2, 0), // 0x00009058
	gsSP2Triangles(0, 7, 6, 0, 0, 6, 1, 0), // 0x00009060
	gsDPPipeSync(), // 0x00009068
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013F08), // 0x00009070
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00009078
	gsDPLoadSync(), // 0x00009080
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00009088
	gsDPPipeSync(), // 0x00009090
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00009098
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000090A0
	gsSPVertex(_spot04_room_0_vertices_00008A08, 32, 0), // 0x000090A8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000090B0
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x000090B8
	gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0), // 0x000090C0
	gsSP2Triangles(12, 13, 7, 0, 12, 7, 6, 0), // 0x000090C8
	gsSP2Triangles(11, 10, 13, 0, 11, 13, 12, 0), // 0x000090D0
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x000090D8
	gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0), // 0x000090E0
	gsSP2Triangles(20, 21, 15, 0, 20, 15, 14, 0), // 0x000090E8
	gsSP2Triangles(18, 21, 20, 0, 18, 20, 19, 0), // 0x000090F0
	gsSP2Triangles(18, 16, 22, 0, 16, 23, 24, 0), // 0x000090F8
	gsSP2Triangles(10, 25, 26, 0, 27, 28, 26, 0), // 0x00009100
	gsSP2Triangles(8, 0, 29, 0, 10, 8, 30, 0), // 0x00009108
	gsSP1Triangle(8, 29, 31, 0), // 0x00009110
	gsSPVertex(_spot04_room_0_vertices_00008C08, 13, 0), // 0x00009118
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00009120
	gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0), // 0x00009128
	gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0), // 0x00009130
	gsDPPipeSync(), // 0x00009138
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00015B08), // 0x00009140
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 4, 0), // 0x00009148
	gsDPLoadSync(), // 0x00009150
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00009158
	gsDPPipeSync(), // 0x00009160
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 5, 0, 1, 4, 0), // 0x00009168
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00009170
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00009178
	gsSPVertex(_spot04_room_0_vertices_00008CD8, 24, 0), // 0x00009180
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00009188
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00009190
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0), // 0x00009198
	gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0), // 0x000091A0
	gsSPEndDisplayList(), // 0x000091A8
};

Vtx_t _spot04_room_0_vertices_000091B0[8] = 
{
	 { 547, 100, 752, 0, 392, 0, 187, 187, 187, 255 }, // 0x000091B0
	 { 547, 100, 644, 0, 0, 0, 247, 246, 137, 255 }, // 0x000091C0
	 { 547, 0, 644, 0, 0, 1024, 213, 14, 146, 255 }, // 0x000091D0
	 { 547, 0, 752, 0, 512, 1024, 172, 0, 172, 255 }, // 0x000091E0
	 { 487, 0, 752, 0, 512, 1024, 84, 0, 172, 255 }, // 0x000091F0
	 { 487, 100, 752, 0, 392, 0, 69, 187, 187, 255 }, // 0x00009200
	 { 487, 0, 644, 0, 0, 1024, 76, 0, 164, 255 }, // 0x00009210
	 { 487, 100, 644, 0, 0, 0, 23, 251, 139, 255 }, // 0x00009220
};

Vtx_t _spot04_room_0_vertices_00009230[32] = 
{
	 { 601, 0, 637, 0, 5529, 521, 43, 33, 149, 255 }, // 0x00009230
	 { 589, 92, 661, 0, 5527, -97, 60, 27, 156, 255 }, // 0x00009240
	 { 664, 24, 726, 0, 4642, 361, 108, 28, 213, 255 }, // 0x00009250
	 { 579, 179, 687, 0, 5497, -676, 38, 44, 152, 255 }, // 0x00009260
	 { 547, 100, 644, 0, 5929, -147, 247, 246, 137, 255 }, // 0x00009270
	 { 411, 165, 659, 0, 7069, -578, 215, 27, 147, 255 }, // 0x00009280
	 { 487, 100, 644, 0, 6461, -147, 23, 251, 139, 255 }, // 0x00009290
	 { 441, 160, 909, 0, 9456, -548, 202, 19, 105, 255 }, // 0x000092A0
	 { 358, 160, 785, 0, 8155, -548, 139, 23, 253, 255 }, // 0x000092B0
	 { 358, 100, 785, 0, 8155, -147, 149, 11, 52, 255 }, // 0x000092C0
	 { 609, 180, 885, 0, 2996, -681, 59, 24, 101, 255 }, // 0x000092D0
	 { 441, 160, 909, 0, 1264, -548, 202, 19, 105, 255 }, // 0x000092E0
	 { 441, 100, 909, 0, 1264, -147, 240, 27, 115, 255 }, // 0x000092F0
	 { 635, 165, 737, 0, 4668, -583, 113, 28, 230, 255 }, // 0x00009300
	 { 360, 100, 702, 0, 7555, -147, 190, 13, 157, 255 }, // 0x00009310
	 { 441, 100, 909, 0, 9456, -147, 240, 27, 115, 255 }, // 0x00009320
	 { 609, 60, 885, 0, 2996, 120, 94, 23, 70, 255 }, // 0x00009330
	 { 547, 0, 644, 0, 5929, 521, 213, 14, 146, 255 }, // 0x00009340
	 { 724, 24, 728, 0, 4483, 361, 119, 0, 245, 255 }, // 0x00009350
	 { 724, 0, 728, 0, 4483, 521, 119, 0, 245, 255 }, // 0x00009360
	 { 637, 0, 589, 0, 5469, 521, 101, 0, 192, 255 }, // 0x00009370
	 { 645, 60, 933, 0, 2961, 120, 75, 0, 93, 255 }, // 0x00009380
	 { 645, 0, 933, 0, 2961, 521, 75, 0, 93, 255 }, // 0x00009390
	 { 402, 100, 979, 0, 1305, -147, 220, 0, 114, 255 }, // 0x000093A0
	 { 402, 0, 979, 0, 1305, 521, 220, 0, 114, 255 }, // 0x000093B0
	 { 284, 100, 831, 0, 227, -147, 153, 0, 60, 255 }, // 0x000093C0
	 { 284, 0, 831, 0, 227, 521, 153, 0, 60, 255 }, // 0x000093D0
	 { 411, 0, 659, 0, 7069, 521, 216, 0, 143, 255 }, // 0x000093E0
	 { 360, 0, 702, 0, 7555, 521, 242, 0, 137, 255 }, // 0x000093F0
	 { 282, 0, 681, 0, 7644, 521, 196, 0, 153, 255 }, // 0x00009400
	 { 282, 100, 681, 0, 7644, -147, 196, 0, 153, 255 }, // 0x00009410
	 { 487, 0, 644, 0, 6461, 521, 76, 0, 164, 255 }, // 0x00009420
};

Vtx_t _spot04_room_0_vertices_00009430[4] = 
{
	 { 282, 100, 681, 0, 7644, -147, 196, 0, 153, 255 }, // 0x00009430
	 { 282, 0, 681, 0, 7644, 521, 196, 0, 153, 255 }, // 0x00009440
	 { 284, 0, 831, 0, 8419, 521, 153, 0, 60, 255 }, // 0x00009450
	 { 284, 100, 831, 0, 8419, -147, 153, 0, 60, 255 }, // 0x00009460
};

Vtx_t _spot04_room_0_vertices_00009470[37] = 
{
	 { 523, 235, 789, 0, 523, 1000, 59, 103, 246, 255 }, // 0x00009470
	 { 635, 165, 737, 0, 512, -30, 65, 99, 245, 255 }, // 0x00009480
	 { 579, 179, 687, 0, 207, 167, 65, 99, 245, 255 }, // 0x00009490
	 { 523, 235, 789, 0, 523, 1000, 200, 104, 237, 255 }, // 0x000094A0
	 { 411, 165, 659, 0, 0, 1230, 194, 100, 235, 255 }, // 0x000094B0
	 { 358, 160, 785, 0, 185, 1846, 194, 100, 235, 255 }, // 0x000094C0
	 { 513, 215, 799, 0, 874, 998, 173, 21, 83, 255 }, // 0x000094D0
	 { 533, 215, 799, 0, 512, 998, 83, 21, 83, 255 }, // 0x000094E0
	 { 523, 291, 789, 0, 512, 154, 0, 120, 0, 255 }, // 0x000094F0
	 { 533, 215, 779, 0, 150, 998, 83, 21, 173, 255 }, // 0x00009500
	 { 513, 215, 779, 0, 512, 998, 173, 21, 173, 255 }, // 0x00009510
	 { 635, 165, 737, 0, 512, -30, 58, 101, 227, 255 }, // 0x00009520
	 { 523, 235, 789, 0, 523, 1000, 43, 108, 29, 255 }, // 0x00009530
	 { 609, 180, 885, 0, 1008, 617, 48, 105, 32, 255 }, // 0x00009540
	 { 523, 235, 789, 0, 523, 1000, 19, 97, 67, 255 }, // 0x00009550
	 { 441, 160, 909, 0, 838, 1832, 21, 92, 73, 255 }, // 0x00009560
	 { 609, 180, 885, 0, 1008, 617, 245, 92, 76, 255 }, // 0x00009570
	 { 523, 235, 789, 0, 523, 1000, 205, 104, 225, 255 }, // 0x00009580
	 { 358, 160, 785, 0, 185, 1846, 200, 100, 222, 255 }, // 0x00009590
	 { 441, 160, 909, 0, 838, 1832, 214, 105, 38, 255 }, // 0x000095A0
	 { 402, 100, 979, 0, 305, 1772, 232, 89, 76, 255 }, // 0x000095B0
	 { 441, 100, 909, 0, 371, 1497, 243, 98, 67, 255 }, // 0x000095C0
	 { 284, 100, 831, 0, 104, 1190, 203, 100, 39, 255 }, // 0x000095D0
	 { 358, 100, 785, 0, 230, 1006, 196, 102, 13, 255 }, // 0x000095E0
	 { 645, 60, 933, 0, 719, 1590, 57, 89, 55, 255 }, // 0x000095F0
	 { 609, 60, 885, 0, 657, 1401, 70, 86, 44, 255 }, // 0x00009600
	 { 724, 24, 728, 0, 855, 782, 75, 88, 226, 255 }, // 0x00009610
	 { 664, 24, 726, 0, 753, 777, 68, 85, 206, 255 }, // 0x00009620
	 { 637, 0, 589, 0, 706, 237, 40, 80, 176, 255 }, // 0x00009630
	 { 601, 0, 637, 0, 644, 426, 247, 67, 158, 255 }, // 0x00009640
	 { 523, 235, 789, 0, 523, 1000, 241, 107, 205, 255 }, // 0x00009650
	 { 579, 179, 687, 0, 207, 167, 239, 103, 199, 255 }, // 0x00009660
	 { 411, 165, 659, 0, 0, 1230, 244, 104, 198, 255 }, // 0x00009670
	 { 284, 100, 831, 0, 104, 1190, 203, 100, 39, 255 }, // 0x00009680
	 { 358, 100, 785, 0, 230, 1006, 196, 102, 13, 255 }, // 0x00009690
	 { 360, 100, 702, 0, 233, 681, 190, 53, 172, 255 }, // 0x000096A0
	 { 282, 100, 681, 0, 101, 599, 207, 69, 172, 255 }, // 0x000096B0
};

Vtx_t _spot04_room_0_vertices_000096C0[8] = 
{
	 { 698, 0, 579, 0, 0, 0, 0, 0, 0, 0 }, // 0x000096C0
	 { 758, 0, 916, 0, 0, 0, 0, 0, 0, 0 }, // 0x000096D0
	 { 698, 291, 579, 0, 0, 0, 0, 0, 0, 0 }, // 0x000096E0
	 { 758, 291, 916, 0, 0, 0, 0, 0, 0, 0 }, // 0x000096F0
	 { 253, 0, 657, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009700
	 { 313, 0, 995, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009710
	 { 253, 291, 657, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009720
	 { 313, 291, 995, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009730
};

Gfx _spot04_room_0_dlist_00009740[] =
{
	gsDPPipeSync(), // 0x00009740
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00009748
	gsSPVertex(_spot04_room_0_vertices_000096C0, 8, 0), // 0x00009750
	gsSPCullDisplayList(0, 7), // 0x00009758
	gsDPPipeSync(), // 0x00009760
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00009768
	gsDPPipeSync(), // 0x00009770
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00009778
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00009780
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00011D08), // 0x00009788
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x00009790
	gsDPLoadSync(), // 0x00009798
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000097A0
	gsDPPipeSync(), // 0x000097A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x000097B0
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x000097B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000E010), // 0x000097C0
	gsDPTileSync(), // 0x000097C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000097D0
	gsDPLoadSync(), // 0x000097D8
	gsDPLoadTLUTCmd(7, 255), // 0x000097E0
	gsDPPipeSync(), // 0x000097E8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000097F0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000097F8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00009800
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00009808
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00009810
	gsSPVertex(_spot04_room_0_vertices_000091B0, 8, 0), // 0x00009818
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009820
	gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0), // 0x00009828
	gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0), // 0x00009830
	gsSP2Triangles(5, 7, 1, 0, 5, 1, 0, 0), // 0x00009838
	gsDPPipeSync(), // 0x00009840
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00016508), // 0x00009848
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00009850
	gsDPLoadSync(), // 0x00009858
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00009860
	gsDPPipeSync(), // 0x00009868
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00009870
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00009878
	gsSPVertex(_spot04_room_0_vertices_00009230, 32, 0), // 0x00009880
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0), // 0x00009888
	gsSP2Triangles(5, 3, 6, 0, 7, 8, 9, 0), // 0x00009890
	gsSP2Triangles(10, 11, 12, 0, 1, 3, 13, 0), // 0x00009898
	gsSP2Triangles(2, 1, 13, 0, 14, 9, 8, 0), // 0x000098A0
	gsSP2Triangles(9, 15, 7, 0, 12, 16, 10, 0), // 0x000098A8
	gsSP2Triangles(1, 17, 4, 0, 6, 3, 4, 0), // 0x000098B0
	gsSP2Triangles(17, 1, 0, 0, 18, 19, 20, 0), // 0x000098B8
	gsSP2Triangles(21, 22, 19, 0, 21, 19, 18, 0), // 0x000098C0
	gsSP2Triangles(23, 24, 22, 0, 23, 22, 21, 0), // 0x000098C8
	gsSP2Triangles(25, 26, 24, 0, 25, 24, 23, 0), // 0x000098D0
	gsSP2Triangles(27, 28, 14, 0, 14, 28, 29, 0), // 0x000098D8
	gsSP2Triangles(14, 29, 30, 0, 8, 5, 14, 0), // 0x000098E0
	gsSP2Triangles(31, 27, 6, 0, 27, 14, 5, 0), // 0x000098E8
	gsSP2Triangles(6, 27, 5, 0, 16, 2, 10, 0), // 0x000098F0
	gsSP1Triangle(2, 13, 10, 0), // 0x000098F8
	gsSPVertex(_spot04_room_0_vertices_00009430, 4, 0), // 0x00009900
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009908
	gsDPPipeSync(), // 0x00009910
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00015B08), // 0x00009918
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 4, 0), // 0x00009920
	gsDPLoadSync(), // 0x00009928
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00009930
	gsDPPipeSync(), // 0x00009938
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 5, 0, 1, 4, 0), // 0x00009940
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00009948
	gsSPVertex(_spot04_room_0_vertices_00009470, 32, 0), // 0x00009950
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00009958
	gsSP2Triangles(6, 7, 8, 0, 8, 9, 10, 0), // 0x00009960
	gsSP2Triangles(10, 6, 8, 0, 7, 9, 8, 0), // 0x00009968
	gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0), // 0x00009970
	gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0), // 0x00009978
	gsSP2Triangles(21, 23, 22, 0, 21, 20, 24, 0), // 0x00009980
	gsSP2Triangles(21, 24, 25, 0, 26, 27, 25, 0), // 0x00009988
	gsSP2Triangles(26, 25, 24, 0, 27, 26, 28, 0), // 0x00009990
	gsSP1Triangle(27, 28, 29, 0), // 0x00009998
	gsSPVertex(_spot04_room_0_vertices_00009650, 7, 0), // 0x000099A0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000099A8
	gsSP1Triangle(3, 5, 6, 0), // 0x000099B0
	gsSPEndDisplayList(), // 0x000099B8
};

Vtx_t _spot04_room_0_vertices_000099C0[32] = 
{
	 { -1204, 120, 80, 0, 1437, -1239, 251, 92, 180, 255 }, // 0x000099C0
	 { -1197, 241, 228, 0, 1475, -538, 247, 35, 142, 255 }, // 0x000099D0
	 { -1111, 120, 241, 0, 2159, -1239, 65, 42, 165, 255 }, // 0x000099E0
	 { -1082, 230, 314, 0, 2750, -701, 112, 42, 0, 255 }, // 0x000099F0
	 { -900, 120, 254, 0, 2615, -1239, 61, 103, 252, 255 }, // 0x00009A00
	 { -1515, 120, 306, 0, 135, -1239, 207, 109, 251, 255 }, // 0x00009A10
	 { -1312, 212, 337, 0, 0, -538, 145, 42, 238, 255 }, // 0x00009A20
	 { -1282, 120, 256, 0, 708, -1239, 180, 43, 175, 255 }, // 0x00009A30
	 { -1365, 120, 635, 0, 4631, -1239, 231, 109, 41, 255 }, // 0x00009A40
	 { -1256, 209, 462, 0, 4536, -403, 204, 44, 98, 255 }, // 0x00009A50
	 { -1317, 120, 413, 0, 5020, -1239, 157, 50, 45, 255 }, // 0x00009A60
	 { -1312, 212, 337, 0, 5499, -538, 145, 42, 238, 255 }, // 0x00009A70
	 { -1515, 120, 306, 0, 5634, -1239, 207, 109, 251, 255 }, // 0x00009A80
	 { -973, 120, 587, 0, 3573, -1239, 51, 107, 20, 255 }, // 0x00009A90
	 { -1110, 212, 436, 0, 3595, -538, 98, 44, 52, 255 }, // 0x00009AA0
	 { -1175, 120, 486, 0, 4062, -1239, 16, 50, 107, 255 }, // 0x00009AB0
	 { -1099, 265, 376, 0, 3172, -356, 102, 58, 22, 255 }, // 0x00009AC0
	 { -1126, 299, 425, 0, 3595, -248, 79, 63, 63, 255 }, // 0x00009AD0
	 { -1100, 220, 407, 0, 3383, -447, 118, 241, 14, 255 }, // 0x00009AE0
	 { -1094, 265, 319, 0, 2750, -463, 101, 61, 237, 255 }, // 0x00009AF0
	 { -1084, 220, 349, 0, 2961, -528, 109, 240, 45, 255 }, // 0x00009B00
	 { -1125, 265, 257, 0, 2112, -420, 68, 51, 172, 255 }, // 0x00009B10
	 { -1195, 287, 238, 0, 1475, -376, 1, 73, 162, 255 }, // 0x00009B20
	 { -1269, 286, 273, 0, 737, -312, 174, 50, 185, 255 }, // 0x00009B30
	 { -1195, 287, 238, 0, 1475, -376, 1, 73, 162, 255 }, // 0x00009B40
	 { -1293, 300, 330, 0, 0, -248, 155, 61, 239, 255 }, // 0x00009B50
	 { -1271, 327, 383, 0, 5018, -179, 155, 51, 39, 255 }, // 0x00009B60
	 { -1293, 300, 330, 0, 5499, -248, 155, 61, 239, 255 }, // 0x00009B70
	 { -1225, 328, 432, 0, 4536, -110, 217, 72, 87, 255 }, // 0x00009B80
	 { -1170, 315, 451, 0, 4065, -179, 18, 51, 107, 255 }, // 0x00009B90
	 { -1084, 120, 412, 0, 3352, -935, 103, 26, 201, 255 }, // 0x00009BA0
	 { -1069, 120, 354, 0, 2932, -937, 62, 26, 99, 255 }, // 0x00009BB0
};

Vtx_t _spot04_room_0_vertices_00009BC0[8] = 
{
	 { -1173, 120, 326, 0, 512, 1024, 60, 0, 103, 255 }, // 0x00009BC0
	 { -1173, 220, 326, 0, 392, 0, 49, 187, 84, 255 }, // 0x00009BD0
	 { -1188, 220, 384, 0, 392, 0, 84, 187, 207, 255 }, // 0x00009BE0
	 { -1188, 120, 384, 0, 512, 1024, 103, 0, 196, 255 }, // 0x00009BF0
	 { -1100, 220, 407, 0, 0, 0, 118, 241, 14, 255 }, // 0x00009C00
	 { -1084, 120, 412, 0, 0, 1024, 103, 26, 201, 255 }, // 0x00009C10
	 { -1084, 220, 349, 0, 0, 0, 109, 240, 45, 255 }, // 0x00009C20
	 { -1069, 120, 354, 0, 0, 1024, 62, 26, 99, 255 }, // 0x00009C30
};

Vtx_t _spot04_room_0_vertices_00009C40[6] = 
{
	 { -1084, 120, 412, 0, 3352, -935, 103, 26, 201, 255 }, // 0x00009C40
	 { -1110, 212, 436, 0, 3595, -538, 98, 44, 52, 255 }, // 0x00009C50
	 { -973, 120, 587, 0, 3573, -1239, 51, 107, 20, 255 }, // 0x00009C60
	 { -1082, 230, 314, 0, 2750, -701, 112, 42, 0, 255 }, // 0x00009C70
	 { -1069, 120, 354, 0, 2932, -937, 62, 26, 99, 255 }, // 0x00009C80
	 { -900, 120, 254, 0, 2615, -1239, 61, 103, 252, 255 }, // 0x00009C90
};

Vtx_t _spot04_room_0_vertices_00009CA0[30] = 
{
	 { -1179, 355, 336, 0, 523, 1000, 12, 104, 57, 255 }, // 0x00009CA0
	 { -1225, 328, 432, 0, 773, 140, 12, 104, 57, 255 }, // 0x00009CB0
	 { -1170, 315, 451, 0, 512, -30, 12, 104, 57, 255 }, // 0x00009CC0
	 { -1179, 355, 336, 0, 523, 1000, 217, 108, 34, 255 }, // 0x00009CD0
	 { -1271, 327, 383, 0, 1008, 617, 217, 108, 34, 255 }, // 0x00009CE0
	 { -1225, 328, 432, 0, 840, 225, 217, 108, 34, 255 }, // 0x00009CF0
	 { -1179, 355, 336, 0, 523, 1000, 53, 107, 3, 255 }, // 0x00009D00
	 { -1099, 265, 376, 0, 10, 750, 53, 107, 3, 255 }, // 0x00009D10
	 { -1094, 265, 319, 0, 0, 1230, 53, 107, 3, 255 }, // 0x00009D20
	 { -1179, 355, 336, 0, 523, 1000, 54, 107, 254, 255 }, // 0x00009D30
	 { -1126, 299, 425, 0, 207, 167, 54, 107, 254, 255 }, // 0x00009D40
	 { -1099, 265, 376, 0, 54, 525, 54, 107, 254, 255 }, // 0x00009D50
	 { -1179, 355, 336, 0, 523, 1000, 250, 103, 60, 255 }, // 0x00009D60
	 { -1170, 315, 451, 0, 512, -30, 250, 103, 60, 255 }, // 0x00009D70
	 { -1126, 299, 425, 0, 207, 167, 250, 103, 60, 255 }, // 0x00009D80
	 { -1179, 355, 336, 0, 523, 1000, 192, 97, 228, 255 }, // 0x00009D90
	 { -1293, 300, 330, 0, 1017, 1225, 192, 97, 228, 255 }, // 0x00009DA0
	 { -1271, 327, 383, 0, 1008, 617, 192, 97, 228, 255 }, // 0x00009DB0
	 { -1269, 286, 273, 0, 838, 1832, 187, 97, 1, 255 }, // 0x00009DC0
	 { -1293, 300, 330, 0, 1017, 1225, 187, 97, 1, 255 }, // 0x00009DD0
	 { -1179, 355, 336, 0, 523, 1000, 187, 97, 1, 255 }, // 0x00009DE0
	 { -1179, 355, 336, 0, 523, 1000, 33, 104, 207, 255 }, // 0x00009DF0
	 { -1094, 265, 319, 0, 0, 1230, 33, 104, 207, 255 }, // 0x00009E00
	 { -1125, 265, 257, 0, 185, 1846, 33, 104, 207, 255 }, // 0x00009E10
	 { -1179, 355, 336, 0, 523, 1000, 43, 104, 215, 255 }, // 0x00009E20
	 { -1125, 265, 257, 0, 185, 1846, 43, 104, 215, 255 }, // 0x00009E30
	 { -1195, 287, 238, 0, 507, 2091, 43, 104, 215, 255 }, // 0x00009E40
	 { -1269, 286, 273, 0, 838, 1832, 233, 108, 211, 255 }, // 0x00009E50
	 { -1179, 355, 336, 0, 523, 1000, 233, 108, 211, 255 }, // 0x00009E60
	 { -1195, 287, 238, 0, 507, 2091, 233, 108, 211, 255 }, // 0x00009E70
};

Vtx_t _spot04_room_0_vertices_00009E80[8] = 
{
	 { -805, 120, 1059, 0, 796, 1024, 37, 106, 216, 255 }, // 0x00009E80
	 { -821, 120, 1059, 0, 1024, 1024, 9, 85, 172, 255 }, // 0x00009E90
	 { -799, 145, 1059, 0, 683, 482, 50, 195, 166, 255 }, // 0x00009EA0
	 { -805, 155, 1059, 0, 796, 2, 0, 0, 136, 255 }, // 0x00009EB0
	 { -765, 159, 1059, 0, 228, 2, 0, 0, 136, 255 }, // 0x00009EC0
	 { -770, 147, 1059, 0, 331, 374, 218, 195, 160, 255 }, // 0x00009ED0
	 { -749, 120, 1059, 0, 0, 1024, 8, 85, 172, 255 }, // 0x00009EE0
	 { -765, 120, 1059, 0, 228, 1024, 218, 106, 217, 255 }, // 0x00009EF0
};

Vtx_t _spot04_room_0_vertices_00009F00[16] = 
{
	 { -765, 120, 1059, 0, 85, 1024, 218, 106, 217, 255 }, // 0x00009F00
	 { -805, 120, 1059, 0, 939, 1024, 37, 106, 216, 255 }, // 0x00009F10
	 { -805, 120, 1379, 0, 939, 563, 74, 51, 79, 255 }, // 0x00009F20
	 { -765, 120, 1379, 0, 85, 563, 183, 55, 77, 255 }, // 0x00009F30
	 { -765, 120, 1379, 0, 960, 614, 183, 55, 77, 255 }, // 0x00009F40
	 { -770, 147, 1379, 0, 768, 614, 218, 195, 96, 255 }, // 0x00009F50
	 { -770, 147, 1059, 0, 768, 1024, 218, 195, 160, 255 }, // 0x00009F60
	 { -765, 120, 1059, 0, 960, 1024, 218, 106, 217, 255 }, // 0x00009F70
	 { -770, 147, 1059, 0, 768, 1024, 218, 195, 160, 255 }, // 0x00009F80
	 { -770, 147, 1379, 0, 768, 614, 218, 195, 96, 255 }, // 0x00009F90
	 { -799, 145, 1379, 0, 256, 614, 50, 195, 90, 255 }, // 0x00009FA0
	 { -799, 145, 1059, 0, 256, 1024, 50, 195, 166, 255 }, // 0x00009FB0
	 { -805, 120, 1059, 0, 78, 1024, 37, 106, 216, 255 }, // 0x00009FC0
	 { -799, 145, 1059, 0, 256, 1024, 50, 195, 166, 255 }, // 0x00009FD0
	 { -799, 145, 1379, 0, 256, 614, 50, 195, 90, 255 }, // 0x00009FE0
	 { -805, 120, 1379, 0, 78, 614, 74, 51, 79, 255 }, // 0x00009FF0
};

Vtx_t _spot04_room_0_vertices_0000A000[8] = 
{
	 { -1051, 120, -8, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A000
	 { -379, 120, 1156, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A010
	 { -1051, 355, -8, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A020
	 { -379, 355, 1156, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A030
	 { -1565, 120, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A040
	 { -893, 120, 1453, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A050
	 { -1565, 355, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A060
	 { -893, 355, 1453, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A070
};

Gfx _spot04_room_0_dlist_0000A080[] =
{
	gsDPPipeSync(), // 0x0000A080
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000A088
	gsSPVertex(_spot04_room_0_vertices_0000A000, 8, 0), // 0x0000A090
	gsSPCullDisplayList(0, 7), // 0x0000A098
	gsDPPipeSync(), // 0x0000A0A0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000A0A8
	gsDPPipeSync(), // 0x0000A0B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x0000A0B8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000A0C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013F08), // 0x0000A0C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A0D0
	gsDPLoadSync(), // 0x0000A0D8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000A0E0
	gsDPPipeSync(), // 0x0000A0E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A0F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A0F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000E010), // 0x0000A100
	gsDPTileSync(), // 0x0000A108
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A110
	gsDPLoadSync(), // 0x0000A118
	gsDPLoadTLUTCmd(7, 255), // 0x0000A120
	gsDPPipeSync(), // 0x0000A128
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000A130
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x0000A138
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x0000A140
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x0000A148
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000A150
	gsSPVertex(_spot04_room_0_vertices_000099C0, 32, 0), // 0x0000A158
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x0000A160
	gsSP2Triangles(5, 6, 7, 0, 1, 0, 7, 0), // 0x0000A168
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 10, 0), // 0x0000A170
	gsSP2Triangles(13, 14, 15, 0, 9, 8, 15, 0), // 0x0000A178
	gsSP2Triangles(16, 17, 18, 0, 17, 14, 18, 0), // 0x0000A180
	gsSP2Triangles(3, 19, 20, 0, 19, 16, 20, 0), // 0x0000A188
	gsSP2Triangles(21, 19, 3, 0, 1, 22, 21, 0), // 0x0000A190
	gsSP2Triangles(23, 24, 1, 0, 6, 25, 23, 0), // 0x0000A198
	gsSP2Triangles(26, 27, 11, 0, 9, 28, 26, 0), // 0x0000A1A0
	gsSP2Triangles(14, 17, 29, 0, 29, 28, 9, 0), // 0x0000A1A8
	gsSP2Triangles(9, 15, 29, 0, 15, 14, 29, 0), // 0x0000A1B0
	gsSP2Triangles(3, 2, 21, 0, 2, 1, 21, 0), // 0x0000A1B8
	gsSP2Triangles(1, 7, 23, 0, 7, 6, 23, 0), // 0x0000A1C0
	gsSP2Triangles(11, 10, 26, 0, 10, 9, 26, 0), // 0x0000A1C8
	gsSP2Triangles(14, 30, 18, 0, 31, 3, 20, 0), // 0x0000A1D0
	gsSP1Triangle(20, 16, 18, 0), // 0x0000A1D8
	gsDPPipeSync(), // 0x0000A1E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00011D08), // 0x0000A1E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x0000A1F0
	gsDPLoadSync(), // 0x0000A1F8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A200
	gsDPPipeSync(), // 0x0000A208
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x0000A210
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x0000A218
	gsSPVertex(_spot04_room_0_vertices_00009BC0, 8, 0), // 0x0000A220
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A228
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x0000A230
	gsSP2Triangles(1, 6, 4, 0, 1, 4, 2, 0), // 0x0000A238
	gsSP2Triangles(0, 7, 6, 0, 0, 6, 1, 0), // 0x0000A240
	gsDPPipeSync(), // 0x0000A248
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013F08), // 0x0000A250
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000A258
	gsDPLoadSync(), // 0x0000A260
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000A268
	gsDPPipeSync(), // 0x0000A270
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000A278
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000A280
	gsSPVertex(_spot04_room_0_vertices_00009C40, 6, 0), // 0x0000A288
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000A290
	gsDPPipeSync(), // 0x0000A298
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00015B08), // 0x0000A2A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 4, 0), // 0x0000A2A8
	gsDPLoadSync(), // 0x0000A2B0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A2B8
	gsDPPipeSync(), // 0x0000A2C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 5, 0, 1, 4, 0), // 0x0000A2C8
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x0000A2D0
	gsSPVertex(_spot04_room_0_vertices_00009CA0, 30, 0), // 0x0000A2D8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000A2E0
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x0000A2E8
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0), // 0x0000A2F0
	gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0), // 0x0000A2F8
	gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0), // 0x0000A300
	gsSPVertex(_spot04_room_0_vertices_00009E80, 8, 0), // 0x0000A308
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x0000A310
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 2, 0), // 0x0000A318
	gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0), // 0x0000A320
	gsDPPipeSync(), // 0x0000A328
	gsDPSetPrimColor(0, 0, 88, 88, 88, 255), // 0x0000A330
	gsSPVertex(_spot04_room_0_vertices_00009F00, 16, 0), // 0x0000A338
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A340
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000A348
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x0000A350
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x0000A358
	gsSPEndDisplayList(), // 0x0000A360
};

Vtx_t _spot04_room_0_vertices_0000A368[30] = 
{
	 { 1160, 0, -570, 0, 5579, 2048, 79, 86, 229, 255 }, // 0x0000A368
	 { 993, 121, -517, 0, 5532, 705, 109, 30, 218, 255 }, // 0x0000A378
	 { 1005, 0, -414, 0, 4491, 2048, 107, 36, 40, 255 }, // 0x0000A388
	 { 929, 110, -357, 0, 3544, 833, 29, 36, 110, 255 }, // 0x0000A398
	 { 1055, 0, -167, 0, 3523, 2048, 22, 98, 65, 255 }, // 0x0000A3A8
	 { 805, 0, -857, 0, 7853, 2048, 247, 105, 200, 255 }, // 0x0000A3B8
	 { 832, 92, -615, 0, 7842, 1025, 244, 36, 143, 255 }, // 0x0000A3C8
	 { 935, 0, -605, 0, 6675, 2048, 60, 37, 159, 255 }, // 0x0000A3D8
	 { 474, 0, -584, 0, 9792, 2048, 203, 106, 240, 255 }, // 0x0000A3E8
	 { 706, 89, -512, 0, 9862, 1060, 145, 38, 231, 255 }, // 0x0000A3F8
	 { 743, 0, -597, 0, 8844, 2048, 185, 44, 170, 255 }, // 0x0000A408
	 { 649, 0, -149, 0, 1685, 2048, 249, 102, 61, 255 }, // 0x0000A418
	 { 781, 92, -352, 0, 1789, 1025, 231, 38, 111, 255 }, // 0x0000A428
	 { 704, 0, -412, 0, 721, 2048, 154, 43, 44, 255 }, // 0x0000A438
	 { 704, 0, -412, 0, 10961, 2048, 154, 43, 44, 255 }, // 0x0000A448
	 { 854, 185, -358, 0, 2666, 0, 5, 50, 108, 255 }, // 0x0000A458
	 { 789, 185, -374, 0, 1752, 0, 214, 56, 97, 255 }, // 0x0000A468
	 { 823, 100, -346, 0, 2280, 941, 17, 241, 117, 255 }, // 0x0000A478
	 { 921, 185, -370, 0, 3545, 0, 47, 53, 96, 255 }, // 0x0000A488
	 { 883, 100, -346, 0, 3004, 941, 241, 240, 117, 255 }, // 0x0000A498
	 { 982, 185, -424, 0, 4501, 0, 102, 44, 45, 255 }, // 0x0000A4A8
	 { 983, 185, -512, 0, 5503, 0, 97, 65, 231, 255 }, // 0x0000A4B8
	 { 919, 185, -585, 0, 6696, 0, 49, 44, 156, 255 }, // 0x0000A4C8
	 { 832, 185, -604, 0, 7861, 0, 246, 54, 150, 255 }, // 0x0000A4D8
	 { 763, 185, -571, 0, 8871, 0, 191, 44, 166, 255 }, // 0x0000A4E8
	 { 721, 185, -503, 0, 9928, 0, 156, 64, 240, 255 }, // 0x0000A4F8
	 { 730, 185, -425, 0, 715, 0, 155, 44, 46, 255 }, // 0x0000A508
	 { 730, 185, -425, 0, 10955, 0, 155, 44, 46, 255 }, // 0x0000A518
	 { 823, 0, -330, 0, 2310, 2048, 80, 26, 85, 255 }, // 0x0000A528
	 { 883, 0, -330, 0, 2958, 2048, 177, 26, 86, 255 }, // 0x0000A538
};

Vtx_t _spot04_room_0_vertices_0000A548[8] = 
{
	 { 883, 0, -438, 0, 512, 1024, 172, 0, 84, 255 }, // 0x0000A548
	 { 888, 100, -451, 0, 392, 0, 183, 195, 73, 255 }, // 0x0000A558
	 { 817, 100, -451, 0, 392, 0, 73, 195, 73, 255 }, // 0x0000A568
	 { 823, 0, -438, 0, 512, 1024, 84, 0, 84, 255 }, // 0x0000A578
	 { 823, 100, -346, 0, 0, 0, 17, 241, 117, 255 }, // 0x0000A588
	 { 823, 0, -330, 0, 0, 1024, 80, 26, 85, 255 }, // 0x0000A598
	 { 883, 100, -346, 0, 0, 0, 241, 240, 117, 255 }, // 0x0000A5A8
	 { 883, 0, -330, 0, 0, 1024, 177, 26, 86, 255 }, // 0x0000A5B8
};

Vtx_t _spot04_room_0_vertices_0000A5C8[6] = 
{
	 { 1055, 0, -167, 0, 3523, 2048, 22, 98, 65, 255 }, // 0x0000A5C8
	 { 929, 110, -357, 0, 3544, 833, 29, 36, 110, 255 }, // 0x0000A5D8
	 { 883, 0, -330, 0, 2958, 2048, 177, 26, 86, 255 }, // 0x0000A5E8
	 { 781, 92, -352, 0, 1789, 1025, 231, 38, 111, 255 }, // 0x0000A5F8
	 { 649, 0, -149, 0, 1685, 2048, 249, 102, 61, 255 }, // 0x0000A608
	 { 823, 0, -330, 0, 2310, 2048, 80, 26, 85, 255 }, // 0x0000A618
};

Vtx_t _spot04_room_0_vertices_0000A628[14] = 
{
	 { 846, 185, -479, 0, 523, 1000, 0, 120, 0, 255 }, // 0x0000A628
	 { 721, 185, -503, 0, 773, 140, 0, 120, 0, 255 }, // 0x0000A638
	 { 730, 185, -425, 0, 512, -30, 0, 120, 0, 255 }, // 0x0000A648
	 { 763, 185, -571, 0, 1008, 617, 0, 120, 0, 255 }, // 0x0000A658
	 { 721, 185, -503, 0, 840, 225, 0, 120, 0, 255 }, // 0x0000A668
	 { 846, 185, -479, 0, 523, 1000, 0, 120, 0, 255 }, // 0x0000A678
	 { 854, 185, -358, 0, 10, 750, 0, 120, 0, 255 }, // 0x0000A688
	 { 921, 185, -370, 0, 0, 1230, 0, 120, 0, 255 }, // 0x0000A698
	 { 789, 185, -374, 0, 207, 167, 0, 120, 0, 255 }, // 0x0000A6A8
	 { 854, 185, -358, 0, 54, 525, 0, 120, 0, 255 }, // 0x0000A6B8
	 { 832, 185, -604, 0, 1017, 1225, 0, 120, 0, 255 }, // 0x0000A6C8
	 { 919, 185, -585, 0, 838, 1832, 0, 120, 0, 255 }, // 0x0000A6D8
	 { 982, 185, -424, 0, 185, 1846, 0, 120, 0, 255 }, // 0x0000A6E8
	 { 983, 185, -512, 0, 507, 2091, 0, 120, 0, 255 }, // 0x0000A6F8
};

Vtx_t _spot04_room_0_vertices_0000A708[8] = 
{
	 { 883, 100, -346, 0, 2560, 0, 0, 120, 0, 255 }, // 0x0000A708
	 { 823, 100, -346, 0, 0, 0, 0, 120, 0, 255 }, // 0x0000A718
	 { 823, 100, -306, 0, 0, 768, 0, 120, 0, 255 }, // 0x0000A728
	 { 883, 100, -306, 0, 2560, 768, 0, 120, 0, 255 }, // 0x0000A738
	 { 823, 88, -306, 0, 0, 1024, 0, 120, 0, 255 }, // 0x0000A748
	 { 883, 88, -306, 0, 2560, 1024, 0, 120, 0, 255 }, // 0x0000A758
	 { 883, 100, -306, 0, 2560, 768, 0, 120, 0, 255 }, // 0x0000A768
	 { 823, 100, -306, 0, 0, 768, 0, 120, 0, 255 }, // 0x0000A778
};

Vtx_t _spot04_room_0_vertices_0000A788[8] = 
{
	 { 870, 0, -916, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A788
	 { 1315, 0, -386, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A798
	 { 870, 185, -916, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A7A8
	 { 1315, 185, -386, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A7B8
	 { 363, 0, -490, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A7C8
	 { 808, 0, 40, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A7D8
	 { 363, 185, -490, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A7E8
	 { 808, 185, 40, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A7F8
};

Gfx _spot04_room_0_dlist_0000A808[] =
{
	gsDPPipeSync(), // 0x0000A808
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000A810
	gsSPVertex(_spot04_room_0_vertices_0000A788, 8, 0), // 0x0000A818
	gsSPCullDisplayList(0, 7), // 0x0000A820
	gsDPPipeSync(), // 0x0000A828
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000A830
	gsDPPipeSync(), // 0x0000A838
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x0000A840
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000A848
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00016108), // 0x0000A850
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 4, 0), // 0x0000A858
	gsDPLoadSync(), // 0x0000A860
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x0000A868
	gsDPPipeSync(), // 0x0000A870
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 6, 0, 0, 4, 0), // 0x0000A878
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x0000A880
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000E010), // 0x0000A888
	gsDPTileSync(), // 0x0000A890
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A898
	gsDPLoadSync(), // 0x0000A8A0
	gsDPLoadTLUTCmd(7, 255), // 0x0000A8A8
	gsDPPipeSync(), // 0x0000A8B0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000A8B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x0000A8C0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x0000A8C8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x0000A8D0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000A8D8
	gsSPVertex(_spot04_room_0_vertices_0000A368, 30, 0), // 0x0000A8E0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x0000A8E8
	gsSP2Triangles(5, 6, 7, 0, 1, 0, 7, 0), // 0x0000A8F0
	gsSP2Triangles(8, 9, 10, 0, 6, 5, 10, 0), // 0x0000A8F8
	gsSP2Triangles(11, 12, 13, 0, 9, 8, 14, 0), // 0x0000A900
	gsSP2Triangles(15, 16, 17, 0, 16, 12, 17, 0), // 0x0000A908
	gsSP2Triangles(3, 18, 19, 0, 18, 15, 19, 0), // 0x0000A910
	gsSP2Triangles(20, 18, 3, 0, 1, 21, 20, 0), // 0x0000A918
	gsSP2Triangles(22, 21, 1, 0, 6, 23, 22, 0), // 0x0000A920
	gsSP2Triangles(24, 23, 6, 0, 9, 25, 24, 0), // 0x0000A928
	gsSP2Triangles(12, 16, 26, 0, 27, 25, 9, 0), // 0x0000A930
	gsSP2Triangles(9, 14, 27, 0, 13, 12, 26, 0), // 0x0000A938
	gsSP2Triangles(3, 2, 20, 0, 2, 1, 20, 0), // 0x0000A940
	gsSP2Triangles(1, 7, 22, 0, 7, 6, 22, 0), // 0x0000A948
	gsSP2Triangles(6, 10, 24, 0, 10, 9, 24, 0), // 0x0000A950
	gsSP2Triangles(12, 28, 17, 0, 29, 3, 19, 0), // 0x0000A958
	gsSP1Triangle(19, 15, 17, 0), // 0x0000A960
	gsDPPipeSync(), // 0x0000A968
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00011D08), // 0x0000A970
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x0000A978
	gsDPLoadSync(), // 0x0000A980
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000A988
	gsDPPipeSync(), // 0x0000A990
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x0000A998
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x0000A9A0
	gsSPVertex(_spot04_room_0_vertices_0000A548, 8, 0), // 0x0000A9A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A9B0
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x0000A9B8
	gsSP2Triangles(1, 6, 4, 0, 1, 4, 2, 0), // 0x0000A9C0
	gsSP2Triangles(0, 7, 6, 0, 0, 6, 1, 0), // 0x0000A9C8
	gsDPPipeSync(), // 0x0000A9D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00016108), // 0x0000A9D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 4, 0), // 0x0000A9E0
	gsDPLoadSync(), // 0x0000A9E8
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x0000A9F0
	gsDPPipeSync(), // 0x0000A9F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 6, 0, 0, 4, 0), // 0x0000AA00
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x0000AA08
	gsSPVertex(_spot04_room_0_vertices_0000A5C8, 6, 0), // 0x0000AA10
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000AA18
	gsDPPipeSync(), // 0x0000AA20
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00015B08), // 0x0000AA28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 4, 0), // 0x0000AA30
	gsDPLoadSync(), // 0x0000AA38
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x0000AA40
	gsDPPipeSync(), // 0x0000AA48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 5, 0, 1, 4, 0), // 0x0000AA50
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x0000AA58
	gsSPVertex(_spot04_room_0_vertices_0000A628, 14, 0), // 0x0000AA60
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x0000AA68
	gsSP2Triangles(5, 6, 7, 0, 5, 8, 9, 0), // 0x0000AA70
	gsSP2Triangles(0, 2, 8, 0, 0, 10, 3, 0), // 0x0000AA78
	gsSP2Triangles(11, 10, 0, 0, 5, 7, 12, 0), // 0x0000AA80
	gsSP2Triangles(5, 12, 13, 0, 11, 5, 13, 0), // 0x0000AA88
	gsDPPipeSync(), // 0x0000AA90
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000AA98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000D508), // 0x0000AAA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 4, 0), // 0x0000AAA8
	gsDPLoadSync(), // 0x0000AAB0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000AAB8
	gsDPPipeSync(), // 0x0000AAC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 5, 0, 0, 4, 0), // 0x0000AAC8
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x0000AAD0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000AAD8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x0000AAE0
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x0000AAE8
	gsSPVertex(_spot04_room_0_vertices_0000A708, 8, 0), // 0x0000AAF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AAF8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000AB00
	gsSPEndDisplayList(), // 0x0000AB08
};

Vtx_t _spot04_room_0_vertices_0000AB10[22] = 
{
	 { -1394, 546, -1647, 0, -8192, 2048, 72, 0, 95, 255 }, // 0x0000AB10
	 { 1320, 575, -1876, 0, 8192, 2048, 44, 0, 111, 255 }, // 0x0000AB20
	 { 1320, 1047, -1876, 0, 8192, 0, 44, 0, 111, 255 }, // 0x0000AB30
	 { -1394, 1018, -1647, 0, -8192, 0, 72, 0, 95, 255 }, // 0x0000AB40
	 { -1394, 546, -1647, 0, 8192, 2048, 72, 0, 95, 255 }, // 0x0000AB50
	 { -1394, 1018, -1647, 0, 8192, 0, 72, 0, 95, 255 }, // 0x0000AB60
	 { -1994, 649, -167, 0, 1024, 0, 119, 0, 10, 255 }, // 0x0000AB70
	 { -1994, 249, -167, 0, 1024, 2048, 119, 0, 10, 255 }, // 0x0000AB80
	 { -1634, 560, 1233, 0, -6144, 0, 90, 0, 177, 255 }, // 0x0000AB90
	 { -1634, 160, 1233, 0, -6144, 2048, 90, 0, 177, 255 }, // 0x0000ABA0
	 { -1634, 560, 1233, 0, 10240, 0, 90, 0, 177, 255 }, // 0x0000ABB0
	 { -139, 560, 1799, 0, 2048, 0, 253, 0, 137, 255 }, // 0x0000ABC0
	 { -139, 160, 1799, 0, 2048, 2048, 253, 0, 137, 255 }, // 0x0000ABD0
	 { -1634, 160, 1233, 0, 10240, 2048, 90, 0, 177, 255 }, // 0x0000ABE0
	 { 1461, 560, 1199, 0, -6144, 0, 214, 0, 144, 255 }, // 0x0000ABF0
	 { 1461, 80, 1199, 0, -6144, 2048, 214, 0, 144, 255 }, // 0x0000AC00
	 { 1461, 560, 1199, 0, 10240, 0, 214, 0, 144, 255 }, // 0x0000AC10
	 { 3042, 144, 687, 0, -6144, 0, 215, 0, 144, 255 }, // 0x0000AC20
	 { 1461, 80, 1199, 0, 10240, 2048, 214, 0, 144, 255 }, // 0x0000AC30
	 { 1320, 575, -1876, 0, -8192, 2048, 44, 0, 111, 255 }, // 0x0000AC40
	 { 3225, 275, -3062, 0, 8192, 0, 73, 0, 95, 255 }, // 0x0000AC50
	 { 1320, 1047, -1876, 0, -8192, 0, 44, 0, 111, 255 }, // 0x0000AC60
};

Vtx_t _spot04_room_0_vertices_0000AC70[26] = 
{
	 { -1594, 899, 1203, 0, 3072, 0, 91, 0, 179, 255 }, // 0x0000AC70
	 { -154, 819, 1763, 0, 1024, 0, 0, 0, 137, 255 }, // 0x0000AC80
	 { -154, 422, 1763, 0, 1024, 1024, 0, 0, 137, 255 }, // 0x0000AC90
	 { -1594, 382, 1203, 0, 3072, 1024, 91, 0, 179, 255 }, // 0x0000ACA0
	 { -154, 819, 1763, 0, 2048, 0, 0, 0, 137, 255 }, // 0x0000ACB0
	 { 1486, 802, 1163, 0, 0, 0, 213, 0, 145, 255 }, // 0x0000ACC0
	 { 1486, 382, 1163, 0, 0, 1024, 213, 0, 145, 255 }, // 0x0000ACD0
	 { -154, 422, 1763, 0, 2048, 1024, 0, 0, 137, 255 }, // 0x0000ACE0
	 { -1377, 840, -1616, 0, 3072, 1024, 72, 0, 96, 255 }, // 0x0000ACF0
	 { -1377, 1305, -1616, 0, 3072, 0, 72, 0, 96, 255 }, // 0x0000AD00
	 { -1938, 928, -155, 0, 1024, 0, 119, 0, 11, 255 }, // 0x0000AD10
	 { -1938, 462, -155, 0, 1024, 1024, 119, 0, 11, 255 }, // 0x0000AD20
	 { -1938, 928, -155, 0, 2048, 0, 119, 0, 11, 255 }, // 0x0000AD30
	 { -1594, 899, 1203, 0, 0, 0, 91, 0, 179, 255 }, // 0x0000AD40
	 { -1594, 382, 1203, 0, 0, 1024, 91, 0, 179, 255 }, // 0x0000AD50
	 { -1938, 462, -155, 0, 2048, 1024, 119, 0, 11, 255 }, // 0x0000AD60
	 { -1377, 840, -1616, 0, 0, 1024, 72, 0, 96, 255 }, // 0x0000AD70
	 { 1289, 910, -1810, 0, 4096, 1024, 42, 0, 112, 255 }, // 0x0000AD80
	 { 1289, 1290, -1810, 0, 4096, 0, 42, 0, 112, 255 }, // 0x0000AD90
	 { -1377, 1305, -1616, 0, 0, 0, 72, 0, 96, 255 }, // 0x0000ADA0
	 { 1289, 910, -1810, 0, 0, 1024, 42, 0, 112, 255 }, // 0x0000ADB0
	 { 3225, 275, -3062, 0, 2048, 0, 70, 0, 97, 255 }, // 0x0000ADC0
	 { 1289, 1290, -1810, 0, 0, 0, 42, 0, 112, 255 }, // 0x0000ADD0
	 { 1486, 802, 1163, 0, 2048, 0, 213, 0, 145, 255 }, // 0x0000ADE0
	 { 3042, 144, 687, 0, 0, 0, 210, 0, 146, 255 }, // 0x0000ADF0
	 { 1486, 382, 1163, 0, 2048, 1024, 213, 0, 145, 255 }, // 0x0000AE00
};

Vtx_t _spot04_room_0_vertices_0000AE10[8] = 
{
	 { 3139, 80, -3297, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AE10
	 { 4408, 80, 189, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AE20
	 { 3139, 1305, -3297, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AE30
	 { 4408, 1305, 189, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AE40
	 { -2532, 80, -1233, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AE50
	 { -1263, 80, 2253, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AE60
	 { -2532, 1305, -1233, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AE70
	 { -1263, 1305, 2253, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AE80
};

Gfx _spot04_room_0_dlist_0000AE90[] =
{
	gsDPPipeSync(), // 0x0000AE90
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000AE98
	gsSPVertex(_spot04_room_0_vertices_0000AE10, 8, 0), // 0x0000AEA0
	gsSPCullDisplayList(0, 7), // 0x0000AEA8
	gsDPPipeSync(), // 0x0000AEB0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000AEB8
	gsDPPipeSync(), // 0x0000AEC0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000AEC8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000AED0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000EA18), // 0x0000AED8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 6, 0), // 0x0000AEE0
	gsDPLoadSync(), // 0x0000AEE8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000AEF0
	gsDPPipeSync(), // 0x0000AEF8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 0, 6, 0), // 0x0000AF00
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000AF08
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000AF10
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x0000AF18
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x0000AF20
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x0000AF28
	gsDPSetPrimColor(0, 0, 193, 175, 90, 255), // 0x0000AF30
	gsSPVertex(_spot04_room_0_vertices_0000AB10, 22, 0), // 0x0000AF38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AF40
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000AF48
	gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0), // 0x0000AF50
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x0000AF58
	gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0), // 0x0000AF60
	gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0), // 0x0000AF68
	gsDPPipeSync(), // 0x0000AF70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000E218), // 0x0000AF78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x0000AF80
	gsDPLoadSync(), // 0x0000AF88
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000AF90
	gsDPPipeSync(), // 0x0000AF98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x0000AFA0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AFA8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000AFB0
	gsDPSetPrimColor(0, 0, 230, 250, 156, 255), // 0x0000AFB8
	gsSPVertex(_spot04_room_0_vertices_0000AC70, 26, 0), // 0x0000AFC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AFC8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000AFD0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x0000AFD8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x0000AFE0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x0000AFE8
	gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0), // 0x0000AFF0
	gsSPEndDisplayList(), // 0x0000AFF8
};

Vtx_t _spot04_room_0_vertices_0000B000[28] = 
{
	 { -720, 120, 755, 0, 4096, 1024, 33, 0, 141, 255 }, // 0x0000B000
	 { -720, 160, 755, 0, 4096, 0, 15, 107, 205, 255 }, // 0x0000B010
	 { -489, 160, 822, 0, -2048, 0, 15, 107, 205, 255 }, // 0x0000B020
	 { -489, 120, 822, 0, -2048, 1024, 33, 0, 141, 255 }, // 0x0000B030
	 { -796, 160, 733, 0, -1024, 0, 15, 107, 205, 255 }, // 0x0000B040
	 { -796, 120, 733, 0, -1024, 1024, 33, 0, 141, 255 }, // 0x0000B050
	 { -912, 120, 700, 0, 3072, 1024, 33, 0, 141, 255 }, // 0x0000B060
	 { -912, 160, 700, 0, 3072, 0, 15, 107, 205, 255 }, // 0x0000B070
	 { -840, 160, 450, 0, -7168, 0, 175, 84, 233, 255 }, // 0x0000B080
	 { -840, 120, 450, 0, -7168, 1024, 141, 0, 223, 255 }, // 0x0000B090
	 { -999, 120, 1003, 0, 7168, 1024, 141, 0, 223, 255 }, // 0x0000B0A0
	 { -999, 160, 1003, 0, 7168, 0, 175, 84, 233, 255 }, // 0x0000B0B0
	 { -572, 160, 1110, 0, -7168, 0, 81, 84, 23, 255 }, // 0x0000B0C0
	 { -572, 120, 1110, 0, -7168, 1024, 115, 0, 33, 255 }, // 0x0000B0D0
	 { -417, 120, 572, 0, 7168, 1024, 105, 0, 198, 255 }, // 0x0000B0E0
	 { -417, 160, 572, 0, 7168, 0, 85, 69, 209, 255 }, // 0x0000B0F0
	 { -686, 120, 494, 0, 4096, 1024, 33, 0, 141, 255 }, // 0x0000B100
	 { -686, 160, 494, 0, 4096, 0, 23, 84, 175, 255 }, // 0x0000B110
	 { -417, 160, 572, 0, -3072, 0, 85, 69, 209, 255 }, // 0x0000B120
	 { -417, 120, 572, 0, -3072, 1024, 105, 0, 198, 255 }, // 0x0000B130
	 { -521, 120, 646, 0, 1024, 1024, 33, 0, 141, 255 }, // 0x0000B140
	 { -521, 160, 646, 0, 1024, 0, 15, 107, 205, 255 }, // 0x0000B150
	 { -445, 160, 668, 0, -1024, 0, 15, 107, 205, 255 }, // 0x0000B160
	 { -445, 120, 668, 0, -1024, 1024, 33, 0, 141, 255 }, // 0x0000B170
	 { -867, 120, 546, 0, 4096, 1024, 33, 0, 141, 255 }, // 0x0000B180
	 { -867, 160, 546, 0, 4096, 0, 15, 107, 205, 255 }, // 0x0000B190
	 { -598, 160, 624, 0, -3072, 0, 15, 107, 205, 255 }, // 0x0000B1A0
	 { -598, 120, 624, 0, -3072, 1024, 33, 0, 141, 255 }, // 0x0000B1B0
};

Vtx_t _spot04_room_0_vertices_0000B1C0[4] = 
{
	 { -209, 120, 756, 0, 4096, 2048, 111, 43, 10, 255 }, // 0x0000B1C0
	 { -209, 240, 756, 0, 4096, 0, 109, 49, 0, 255 }, // 0x0000B1D0
	 { -409, 240, 1156, 0, -3536, 0, 115, 0, 224, 255 }, // 0x0000B1E0
	 { -409, 120, 1156, 0, -3536, 2048, 97, 66, 233, 255 }, // 0x0000B1F0
};

Vtx_t _spot04_room_0_vertices_0000B200[8] = 
{
	 { -829, 120, 422, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B200
	 { -174, 120, 660, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B210
	 { -829, 240, 422, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B220
	 { -174, 240, 660, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B230
	 { -1036, 120, 990, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B240
	 { -381, 120, 1228, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B250
	 { -1036, 240, 990, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B260
	 { -381, 240, 1228, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B270
};

Gfx _spot04_room_0_dlist_0000B280[] =
{
	gsDPPipeSync(), // 0x0000B280
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000B288
	gsSPVertex(_spot04_room_0_vertices_0000B200, 8, 0), // 0x0000B290
	gsSPCullDisplayList(0, 7), // 0x0000B298
	gsDPPipeSync(), // 0x0000B2A0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000B2A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000B2B0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000B2B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00017108), // 0x0000B2C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x0000B2C8
	gsDPLoadSync(), // 0x0000B2D0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000B2D8
	gsDPPipeSync(), // 0x0000B2E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x0000B2E8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B2F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000B2F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x0000B300
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x0000B308
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000B310
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000B318
	gsSPVertex(_spot04_room_0_vertices_0000B000, 28, 0), // 0x0000B320
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B328
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000B330
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x0000B338
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x0000B340
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x0000B348
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x0000B350
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x0000B358
	gsDPPipeSync(), // 0x0000B360
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0000D908), // 0x0000B368
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 4, 0), // 0x0000B370
	gsDPLoadSync(), // 0x0000B378
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000B380
	gsDPPipeSync(), // 0x0000B388
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 6, 0, 0, 4, 0), // 0x0000B390
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x0000B398
	gsSPVertex(_spot04_room_0_vertices_0000B1C0, 4, 0), // 0x0000B3A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B3A8
	gsSPEndDisplayList(), // 0x0000B3B0
};

Vtx_t _spot04_room_0_vertices_0000B3B8[12] = 
{
	 { 335, 85, 561, 0, 0, -2304, 191, 157, 244, 255 }, // 0x0000B3B8
	 { 340, 100, 697, 0, 2048, -5632, 30, 163, 68, 255 }, // 0x0000B3C8
	 { 302, 100, 687, 0, 0, -5632, 173, 190, 54, 255 }, // 0x0000B3D8
	 { 374, 85, 571, 0, 2048, -2304, 65, 157, 16, 255 }, // 0x0000B3E8
	 { 211, 130, 20, 0, 2048, 1024, 253, 159, 186, 255 }, // 0x0000B3F8
	 { 443, 120, 82, 0, 2048, -5120, 57, 157, 220, 255 }, // 0x0000B408
	 { 201, 130, 59, 0, 0, 1024, 226, 158, 61, 255 }, // 0x0000B418
	 { 432, 120, 121, 0, 0, -5120, 47, 186, 85, 255 }, // 0x0000B428
	 { 46, 180, 18, 0, 0, 5120, 176, 171, 25, 255 }, // 0x0000B438
	 { 56, 180, -21, 0, 2048, 5120, 193, 196, 174, 255 }, // 0x0000B448
	 { 447, 120, 146, 0, 0, 8704, 224, 161, 190, 255 }, // 0x0000B458
	 { 485, 120, 156, 0, 2048, 8704, 84, 189, 203, 255 }, // 0x0000B468
};

Vtx_t _spot04_room_0_vertices_0000B478[12] = 
{
	 { 335, 85, 561, 0, 0, -2304, 191, 99, 240, 255 }, // 0x0000B478
	 { 485, 120, 156, 0, 2048, 8704, 59, 100, 228, 255 }, // 0x0000B488
	 { 447, 120, 146, 0, 0, 8704, 204, 71, 175, 255 }, // 0x0000B498
	 { 374, 85, 571, 0, 2048, -2304, 65, 99, 12, 255 }, // 0x0000B4A8
	 { 302, 100, 687, 0, 0, -5632, 197, 101, 25, 255 }, // 0x0000B4B8
	 { 340, 100, 697, 0, 2048, -5632, 53, 71, 80, 255 }, // 0x0000B4C8
	 { 56, 180, -21, 0, 2048, 5120, 249, 104, 198, 255 }, // 0x0000B4D8
	 { 46, 180, 18, 0, 0, 5120, 184, 74, 60, 255 }, // 0x0000B4E8
	 { 201, 130, 59, 0, 0, 1024, 3, 97, 70, 255 }, // 0x0000B4F8
	 { 211, 130, 20, 0, 2048, 1024, 30, 98, 195, 255 }, // 0x0000B508
	 { 432, 120, 121, 0, 0, -5120, 38, 96, 60, 255 }, // 0x0000B518
	 { 443, 120, 82, 0, 2048, -5120, 86, 68, 209, 255 }, // 0x0000B528
};

Vtx_t _spot04_room_0_vertices_0000B538[12] = 
{
	 { 912, 345, 682, 0, 622, 465, 202, 166, 58, 255 }, // 0x0000B538
	 { 972, 345, 578, 0, -110, 465, 24, 166, 180, 255 }, // 0x0000B548
	 { 1020, 309, 675, 0, 256, -233, 64, 162, 37, 255 }, // 0x0000B558
	 { 864, 345, 585, 0, 256, 1164, 179, 176, 212, 255 }, // 0x0000B568
	 { 433, 311, 729, 0, -110, 465, 248, 165, 179, 255 }, // 0x0000B578
	 { 433, 311, 849, 0, 622, 465, 248, 165, 77, 255 }, // 0x0000B588
	 { 343, 311, 789, 0, 256, 1164, 167, 176, 0, 255 }, // 0x0000B598
	 { 523, 275, 789, 0, 256, -233, 82, 169, 0, 255 }, // 0x0000B5A8
	 { 613, 311, 729, 0, 622, 465, 8, 165, 179, 255 }, // 0x0000B5B8
	 { 613, 311, 849, 0, -110, 465, 8, 165, 77, 255 }, // 0x0000B5C8
	 { 523, 275, 789, 0, 256, -233, 174, 169, 0, 255 }, // 0x0000B5D8
	 { 703, 311, 789, 0, 256, 1164, 89, 176, 0, 255 }, // 0x0000B5E8
};

Vtx_t _spot04_room_0_vertices_0000B5F8[16] = 
{
	 { 294, 100, 831, 0, 3840, 1024, 137, 0, 1, 255 }, // 0x0000B5F8
	 { 294, 140, 831, 0, 3840, 0, 137, 0, 1, 255 }, // 0x0000B608
	 { 292, 140, 684, 0, 0, 0, 137, 0, 1, 255 }, // 0x0000B618
	 { 292, 100, 684, 0, 0, 1024, 137, 0, 1, 255 }, // 0x0000B628
	 { 156, 0, 179, 0, 2048, 1024, 234, 0, 117, 255 }, // 0x0000B638
	 { 156, 40, 179, 0, 2048, 0, 240, 85, 83, 255 }, // 0x0000B648
	 { 1, 40, 140, 0, -2048, 0, 236, 84, 82, 255 }, // 0x0000B658
	 { 1, 0, 140, 0, -2048, 1024, 227, 0, 116, 255 }, // 0x0000B668
	 { 315, 0, 199, 0, 4096, 1024, 241, 0, 119, 255 }, // 0x0000B678
	 { 315, 40, 199, 0, 4096, 0, 245, 84, 84, 255 }, // 0x0000B688
	 { 156, 40, 179, 0, 0, 0, 240, 85, 83, 255 }, // 0x0000B698
	 { 156, 0, 179, 0, 0, 1024, 234, 0, 117, 255 }, // 0x0000B6A8
	 { 570, 1, -61, 0, 2048, 1024, 60, 0, 153, 255 }, // 0x0000B6B8
	 { 570, 41, -61, 0, 2048, 0, 60, 0, 153, 255 }, // 0x0000B6C8
	 { 682, 31, 3, 0, -1024, 0, 60, 0, 153, 255 }, // 0x0000B6D8
	 { 682, -9, 3, 0, -1024, 1024, 60, 0, 153, 255 }, // 0x0000B6E8
};

Vtx_t _spot04_room_0_vertices_0000B6F8[4] = 
{
	 { -1157, 391, 230, 0, 622, 465, 214, 166, 189, 255 }, // 0x0000B6F8
	 { -1073, 391, 315, 0, -110, 465, 67, 166, 42, 255 }, // 0x0000B708
	 { -1179, 355, 336, 0, 256, -233, 203, 162, 53, 255 }, // 0x0000B718
	 { -1051, 391, 209, 0, 256, 1164, 63, 176, 193, 255 }, // 0x0000B728
};

Vtx_t _spot04_room_0_vertices_0000B738[16] = 
{
	 { 259, 320, -534, 0, 5120, 1024, 215, 0, 112, 255 }, // 0x0000B738
	 { 259, 360, -534, 0, 5120, 0, 211, 82, 75, 255 }, // 0x0000B748
	 { -32, 231, -787, 0, -4096, 0, 211, 82, 75, 255 }, // 0x0000B758
	 { -32, 191, -787, 0, -4096, 1024, 215, 0, 112, 255 }, // 0x0000B768
	 { 504, 320, -537, 0, 3072, 1024, 2, 0, 119, 255 }, // 0x0000B778
	 { 504, 360, -537, 0, 3072, 0, 1, 84, 84, 255 }, // 0x0000B788
	 { 259, 360, -534, 0, -3072, 0, 211, 82, 75, 255 }, // 0x0000B798
	 { 259, 320, -534, 0, -3072, 1024, 215, 0, 112, 255 }, // 0x0000B7A8
	 { -32, 191, -787, 0, 3072, 1024, 215, 0, 112, 255 }, // 0x0000B7B8
	 { -32, 231, -787, 0, 3072, 0, 211, 82, 75, 255 }, // 0x0000B7C8
	 { -269, 231, -785, 0, -3072, 0, 1, 84, 84, 255 }, // 0x0000B7D8
	 { -269, 191, -785, 0, -3072, 1024, 1, 0, 119, 255 }, // 0x0000B7E8
	 { -535, 420, -1146, 0, -5120, 0, 226, 84, 79, 255 }, // 0x0000B7F8
	 { -535, 380, -1146, 0, -5120, 1024, 214, 0, 112, 255 }, // 0x0000B808
	 { -86, 380, -976, 0, 7168, 1024, 214, 0, 112, 255 }, // 0x0000B818
	 { -86, 420, -976, 0, 7168, 0, 226, 84, 79, 255 }, // 0x0000B828
};

Vtx_t _spot04_room_0_vertices_0000B838[4] = 
{
	 { -402, 335, -468, 0, -110, 465, 232, 166, 76, 255 }, // 0x0000B838
	 { -342, 335, -572, 0, 622, 465, 54, 166, 198, 255 }, // 0x0000B848
	 { -294, 335, -475, 0, 256, 1164, 77, 176, 44, 255 }, // 0x0000B858
	 { -450, 299, -565, 0, 256, -233, 192, 162, 219, 255 }, // 0x0000B868
};

Vtx_t _spot04_room_0_vertices_0000B878[8] = 
{
	 { -642, -9, -1185, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B878
	 { 1424, -9, -433, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B888
	 { -642, 420, -1185, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B898
	 { 1424, 420, -433, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B8A8
	 { -1194, -9, 330, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B8B8
	 { 872, -9, 1082, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B8C8
	 { -1194, 420, 330, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B8D8
	 { 872, 420, 1082, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B8E8
};

Gfx _spot04_room_0_dlist_0000B8F8[] =
{
	gsDPPipeSync(), // 0x0000B8F8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000B900
	gsSPVertex(_spot04_room_0_vertices_0000B878, 8, 0), // 0x0000B908
	gsSPCullDisplayList(0, 7), // 0x0000B910
	gsDPPipeSync(), // 0x0000B918
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000B920
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000B928
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000B930
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00016D08), // 0x0000B938
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 1, 5, 0), // 0x0000B940
	gsDPLoadSync(), // 0x0000B948
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x0000B950
	gsDPPipeSync(), // 0x0000B958
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 4, 0, 1, 5, 0), // 0x0000B960
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x0000B968
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000B970
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x0000B978
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x0000B980
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x0000B988
	gsDPSetPrimColor(0, 0, 154, 154, 154, 255), // 0x0000B990
	gsSPVertex(_spot04_room_0_vertices_0000B3B8, 12, 0), // 0x0000B998
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x0000B9A0
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x0000B9A8
	gsSP2Triangles(4, 8, 9, 0, 4, 6, 8, 0), // 0x0000B9B0
	gsSP2Triangles(0, 10, 3, 0, 10, 11, 3, 0), // 0x0000B9B8
	gsDPPipeSync(), // 0x0000B9C0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000B9C8
	gsSPVertex(_spot04_room_0_vertices_0000B478, 12, 0), // 0x0000B9D0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x0000B9D8
	gsSP2Triangles(4, 5, 3, 0, 4, 3, 0, 0), // 0x0000B9E0
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x0000B9E8
	gsSP2Triangles(10, 11, 9, 0, 8, 10, 9, 0), // 0x0000B9F0
	gsDPPipeSync(), // 0x0000B9F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013308), // 0x0000BA00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x0000BA08
	gsDPLoadSync(), // 0x0000BA10
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000BA18
	gsDPPipeSync(), // 0x0000BA20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x0000BA28
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x0000BA30
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x0000BA38
	gsSPVertex(_spot04_room_0_vertices_0000B538, 12, 0), // 0x0000BA40
	gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0), // 0x0000BA48
	gsSP2Triangles(4, 5, 6, 0, 5, 4, 7, 0), // 0x0000BA50
	gsSP2Triangles(8, 9, 10, 0, 9, 8, 11, 0), // 0x0000BA58
	gsDPPipeSync(), // 0x0000BA60
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00017108), // 0x0000BA68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x0000BA70
	gsDPLoadSync(), // 0x0000BA78
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000BA80
	gsDPPipeSync(), // 0x0000BA88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x0000BA90
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000BA98
	gsSPVertex(_spot04_room_0_vertices_0000B5F8, 16, 0), // 0x0000BAA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000BAA8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000BAB0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x0000BAB8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x0000BAC0
	gsDPPipeSync(), // 0x0000BAC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013308), // 0x0000BAD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x0000BAD8
	gsDPLoadSync(), // 0x0000BAE0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000BAE8
	gsDPPipeSync(), // 0x0000BAF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x0000BAF8
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x0000BB00
	gsSPVertex(_spot04_room_0_vertices_0000B6F8, 4, 0), // 0x0000BB08
	gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0), // 0x0000BB10
	gsDPPipeSync(), // 0x0000BB18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00017108), // 0x0000BB20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x0000BB28
	gsDPLoadSync(), // 0x0000BB30
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000BB38
	gsDPPipeSync(), // 0x0000BB40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x0000BB48
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000BB50
	gsSPVertex(_spot04_room_0_vertices_0000B738, 16, 0), // 0x0000BB58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000BB60
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000BB68
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x0000BB70
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x0000BB78
	gsDPPipeSync(), // 0x0000BB80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00013308), // 0x0000BB88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 4, 0), // 0x0000BB90
	gsDPLoadSync(), // 0x0000BB98
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000BBA0
	gsDPPipeSync(), // 0x0000BBA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 5, 0, 2, 4, 0), // 0x0000BBB0
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x0000BBB8
	gsSPVertex(_spot04_room_0_vertices_0000B838, 4, 0), // 0x0000BBC0
	gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0), // 0x0000BBC8
	gsSPEndDisplayList(), // 0x0000BBD0
};

Vtx_t _spot04_room_0_vertices_0000BBD8[20] = 
{
	 { 1503, 145, 144, 0, 1536, 1024, 144, 0, 214, 255 }, // 0x0000BBD8
	 { 1472, 160, 186, 0, 2048, 1024, 160, 0, 185, 255 }, // 0x0000BBE8
	 { 1472, 220, 186, 0, 2048, 0, 161, 22, 187, 255 }, // 0x0000BBF8
	 { 1503, 220, 144, 0, 1536, 0, 148, 31, 216, 255 }, // 0x0000BC08
	 { 1507, 135, 88, 0, 1024, 1024, 138, 0, 17, 255 }, // 0x0000BC18
	 { 1507, 220, 88, 0, 1024, 0, 143, 36, 13, 255 }, // 0x0000BC28
	 { 1484, 220, 26, 0, 0, 0, 151, 24, 52, 255 }, // 0x0000BC38
	 { 1484, 184, 26, 0, 0, 1024, 144, 0, 41, 255 }, // 0x0000BC48
	 { 2054, 203, -416, 0, 0, 0, 83, 26, 82, 255 }, // 0x0000BC58
	 { 2054, 103, -416, 0, 0, 1024, 53, 0, 107, 255 }, // 0x0000BC68
	 { 2219, 61, -498, 0, 1024, 1024, 53, 0, 107, 255 }, // 0x0000BC78
	 { 2219, 201, -498, 0, 1024, 0, 53, 0, 107, 255 }, // 0x0000BC88
	 { 2366, 199, -572, 0, 2048, 0, 27, 40, 109, 255 }, // 0x0000BC98
	 { 2366, 119, -572, 0, 2048, 1024, 2, 0, 119, 255 }, // 0x0000BCA8
	 { 2470, 199, -565, 0, 1024, 0, 219, 22, 111, 255 }, // 0x0000BCB8
	 { 2366, 199, -572, 0, 0, 0, 27, 40, 109, 255 }, // 0x0000BCC8
	 { 2366, 119, -572, 0, 0, 1024, 2, 0, 119, 255 }, // 0x0000BCD8
	 { 2470, 99, -525, 0, 1024, 1024, 219, 22, 111, 255 }, // 0x0000BCE8
	 { 2581, 139, -518, 0, 2048, 1024, 233, 44, 109, 255 }, // 0x0000BCF8
	 { 2581, 199, -518, 0, 2048, 0, 21, 34, 112, 255 }, // 0x0000BD08
};

Vtx_t _spot04_room_0_vertices_0000BD18[8] = 
{
	 { 2493, 61, -670, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000BD18
	 { 2608, 61, -470, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000BD28
	 { 2493, 220, -670, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000BD38
	 { 2608, 220, -470, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000BD48
	 { 1356, 61, -13, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000BD58
	 { 1472, 61, 186, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000BD68
	 { 1356, 220, -13, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000BD78
	 { 1472, 220, 186, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000BD88
};

Gfx _spot04_room_0_dlist_0000BD98[] =
{
	gsDPPipeSync(), // 0x0000BD98
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000BDA0
	gsSPVertex(_spot04_room_0_vertices_0000BD18, 8, 0), // 0x0000BDA8
	gsSPCullDisplayList(0, 7), // 0x0000BDB0
	gsDPPipeSync(), // 0x0000BDB8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000BDC0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000BDC8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000BDD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00011F08), // 0x0000BDD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x0000BDE0
	gsDPLoadSync(), // 0x0000BDE8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x0000BDF0
	gsDPPipeSync(), // 0x0000BDF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x0000BE00
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000BE08
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000BE10
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x0000BE18
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x0000BE20
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000BE28
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000BE30
	gsSPVertex(_spot04_room_0_vertices_0000BBD8, 20, 0), // 0x0000BE38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000BE40
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x0000BE48
	gsSP2Triangles(6, 7, 4, 0, 6, 4, 5, 0), // 0x0000BE50
	gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0), // 0x0000BE58
	gsSP2Triangles(12, 11, 10, 0, 13, 12, 10, 0), // 0x0000BE60
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x0000BE68
	gsSP2Triangles(18, 19, 14, 0, 18, 14, 17, 0), // 0x0000BE70
	gsSPEndDisplayList(), // 0x0000BE78
};

static u8 unaccountedBE80[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2A, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x48, 0x60, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x55, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5A, 0x80, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x62, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x6C, 0x10, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x7A, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x86, 0x38, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x8E, 0xD8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x97, 0x40, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA0, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA8, 0x08, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xAE, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xB2, 0x80, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xB8, 0xF8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xBD, 0x98, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 _spot04_room_0_tex_0000BF08[] = 
{
	0x9C5983D583D3BD61, 0xDEAB9459730F9417, 0x9C599457A49BEEED, 0xBDA38C1794599457,  // 0x0000BF08 
	0x8C158BD58BD59417, 0x94599C9B9C9B9457, 0xA49BB51FB51F9417, 0x8BD583D583D38BD5,  // 0x0000BF28 
	0x7B5152495A8962CB, 0xA4DDCE27735141C3, 0x41C54A07CE27B51F, 0x314149C5418341C5,  // 0x0000BF48 
	0x41C541C339833141, 0x398341C541C54A07, 0x5249524952495249, 0x49C552075A896B0D,  // 0x0000BF68 
	0x8C175A8B5A8B49C5, 0x5A89B561C5A362CB, 0x5A8BBD61DEAB2901, 0x20C141C552075207,  // 0x0000BF88 
	0x49C5314129013141, 0x41834A054A0549C5, 0x520752494A055247, 0x52495A495A8B628B,  // 0x0000BFA8 
	0x735162CB62CD6ACD, 0x52495A8BA49B9C9B, 0xACDDF7714A073141, 0x524952074A075247,  // 0x0000BFC8 
	0x49C5418329013141, 0x4A0749C552075207, 0x5A495A4952495A49, 0x52475A8B62CD6ACD,  // 0x0000BFE8 
	0x7B5152495A8B62CD, 0x5A8B41C54A07CDE5, 0xEF2F62CB20C15A49, 0x4A074A0749C54A07,  // 0x0000C008 
	0x52495247314141C5, 0x41C349C541C35247, 0x52495A4952495A89, 0x524952475A8B62CD,  // 0x0000C028 
	0x734F4A074A075247, 0x4A074A0783D5DE69, 0x94597B9141C53983, 0x52474A074A074A07,  // 0x0000C048 
	0x41C54A0741C341C5, 0x41C54183398341C3, 0x49C54A0552474A07, 0x4A074A074A075247,  // 0x0000C068 
	0x7B914A0549C541C5, 0x4A056B0FCE276B0D, 0x1881734F94594A07, 0x41C352474A074A05,  // 0x0000C088 
	0x418339834A054A05, 0x41C54183398341C3, 0x49C54A0552474A07, 0x4A074A074A075247,  // 0x0000C0A8 
	0x6B0F524952495249, 0x7B51CE2773512901, 0x39414A077B939417, 0x3983394149C541C5,  // 0x0000C0C8 
	0x41C5398349C541C5, 0x41C5398331413141, 0x3983398341C55207, 0x4A05418341C34183,  // 0x0000C0E8 
	0x314331433985520B, 0xB5277359104120C3, 0x2903394131037355, 0x5A8F20C129033143,  // 0x0000C108 
	0x290128C129033143, 0x290128C118411841, 0x1041188118813941, 0x310120C120C12903,  // 0x0000C128 
	0x5248418241C47B51, 0x730F080108010801, 0x0801080110412085, 0x730F20C039823982,  // 0x0000C148 
	0x3140290020C01880, 0x188020C0188020C0, 0x2900290031403140, 0x31402900208020C0,  // 0x0000C168 
	0x62CC524852485A48, 0x3941100118811841, 0x1001104110411041, 0x3982398231402900,  // 0x0000C188 
	0x20C01880208020C0, 0x28C0290020C02900, 0x3100398241C44A04, 0x4A0649C441823940,  // 0x0000C1A8 
	0x52484A064A067350, 0x314128C120C120C1, 0x1881188128C11001, 0x418241C439823940,  // 0x0000C1C8 
	0x290028C028C03140, 0x3140418239823982, 0x41C439825A485A48, 0x5A8A5A4839823140,  // 0x0000C1E8 
	0x41C439824A067350, 0x4A0720C120C11881, 0x208120C120811001, 0x4A0641C431403140,  // 0x0000C208 
	0x31403140314041C4, 0x41C44A064A063982, 0x41C4398252485A8A, 0x5A8A62CC4A0641C4,  // 0x0000C228 
	0x3140314052487B92, 0x62CB310120C11881, 0x28C128C129011881, 0x4A0641C431403140,  // 0x0000C248 
	0x3140314041C441C4, 0x41C44A0639823982, 0x3982398241C44A06, 0x41C44A0639823982,  // 0x0000C268 
	0x314039825A8A7B90, 0x5A49314129012901, 0x2901314131411041, 0x41C4398231403140,  // 0x0000C288 
	0x3140314039823982, 0x398241C439823982, 0x3982314031403982, 0x398241C439823982,  // 0x0000C2A8 
	0x314039827B929456, 0x6B0F314129012901, 0x314141C331411041, 0x398241C4398241C4,  // 0x0000C2C8 
	0x3140314031403140, 0x3140314031403140, 0x3140314031403982, 0x3140314031403140,  // 0x0000C2E8 
	0x3140398252487B92, 0x6ACD41C539815207, 0x41C5398339811881, 0x3940398239824A06,  // 0x0000C308 
	0x3140314031403140, 0x3140314031403140, 0x3982398239823982, 0x3140314031403140,  // 0x0000C328 
	0x31404A06B5608C16, 0x6ACD41C341C55A49, 0x524741C539831041, 0x3140398239824A06,  // 0x0000C348 
	0x3140314031403140, 0x3140314031403140, 0x39823982398241C4, 0x3140314031403140,  // 0x0000C368 
	0x314039826B0E9458, 0x6B0F4A054A075249, 0x524941C331410801, 0x3140398239824A06,  // 0x0000C388 
	0x3982398239823982, 0x3140314031403140, 0x39823982398241C4, 0x3140314031403140,  // 0x0000C3A8 
	0x314041C48C167B92, 0x83935A8B52475A49, 0x4A07398331410001, 0x39803982398241C4,  // 0x0000C3C8 
	0x3982398239823982, 0x3140314031403140, 0x39823982398241C4, 0x3140314031403140,  // 0x0000C3E8 
	0x314039828C1683D4, 0x83D562CB52495207, 0x4A07418339831041, 0x49C44A0639823982,  // 0x0000C408 
	0x3982398239823982, 0x3140314031403140, 0x3140314031403982, 0x3140314031403140,  // 0x0000C428 
	0x314041C483D49C9A, 0x8BD56B0F5A8B5A8B, 0x4A0541C541C51881, 0x4A064A0639823982,  // 0x0000C448 
	0x3982398239823982, 0x3140314031403140, 0x3140314031403140, 0x3140314031403140,  // 0x0000C468 
	0x314041C47350C5E4, 0x94177B91628B5A89, 0x52074A0541C51881, 0x52064A0639823982,  // 0x0000C488 
	0x3140314031403140, 0x3140314031403140, 0x3140314031403982, 0x3140314031403140,  // 0x0000C4A8 
	0x31405248735083D4, 0x8C17735162CB62CD, 0x5A8B4A0749C51881, 0x520641C431403140,  // 0x0000C4C8 
	0x3140314031403140, 0x3140314031403140, 0x3140314031403982, 0x3140314031403140,  // 0x0000C4E8 
	0x31404A066B0E9C9A, 0x8BD56B0D628B6ACD, 0x62CD524739831881, 0x41C4398239823982,  // 0x0000C508 
	0x3140314031403140, 0x3140314031403140, 0x3140314031403982, 0x3140314031403140,  // 0x0000C528 
	0x31404A0694587B92, 0x83D35A895A8B62CD, 0x5A8B4A07398120C1, 0x3982398239823982,  // 0x0000C548 
	0x3140314031403140, 0x3140314031403140, 0x31403140314041C4, 0x3140314031403140,  // 0x0000C568 
	0x314052486B0E6B0E, 0x83D5520752495A8B, 0x52474A07394120C1, 0x41C241C441C441C4,  // 0x0000C588 
	0x3140314031403140, 0x3140314031403140, 0x31403982398241C4, 0x3140314031403140,  // 0x0000C5A8 
	0x314039824A067350, 0x83D549C549C55247, 0x52494A0739832901, 0x49C44A0641C441C4,  // 0x0000C5C8 
	0x3140314031403140, 0x3140314031403140, 0x3140398239824A06, 0x3140314031403140,  // 0x0000C5E8 
	0x31403982398262CC, 0x6B0F41C541C54A05, 0x524741C5314128C1, 0x4A0441C439823982,  // 0x0000C608 
	0x3140314031403140, 0x3140314031403140, 0x3140398239824A06, 0x3140314031403140,  // 0x0000C628 
	0x31403982314041C4, 0x5A49398331413101, 0x3141398331412901, 0x524641C439823982,  // 0x0000C648 
	0x3140314031403140, 0x3140314031403140, 0x3140314031403140, 0x3140314031403140,  // 0x0000C668 
	0x314041C241C23980, 0x4A073141290120C1, 0x3141394131412901, 0x41C4398029003982,  // 0x0000C688 
	0x4A064A0641C45A8A, 0x5248735052485A8A, 0x41C43982314041C4, 0x41C4314039823140,  // 0x0000C6A8 
	0x39825A885A48D627, 0x8BD52901290120C1, 0x290131013141628D, 0x9C9B52065A4862CA,  // 0x0000C6C8 
	0x8C16735094589C9A, 0xA4DCA4DC94589C9A, 0xCE26BDA28C167350, 0x5A8A6B0E73508C16,  // 0x0000C6E8 
};

u64 _spot04_room_0_tex_0000C708[] = 
{
	0x7B4F839183D38C13, 0x8391524752075A89, 0x5A8B838F6B0B4205, 0x524562C96B09730F,  // 0x0000C708 
	0x5A897B9394159455, 0x94579C579C576B09, 0x6B0B7B4F838F6ACF, 0x62CD6B0B62CB6B0F,  // 0x0000C728 
	0x8C138C139C99730D, 0x6B0D6B0D734D734D, 0x734D7B4B5A475247, 0x62896B0B834F5A49,  // 0x0000C748 
	0x62C96B0D94579C97, 0x94578BD562C7734B, 0x838D7B8F734D5A49, 0x7B8D7B916B0F8C15,  // 0x0000C768 
	0x9455A4DB9C997B8F, 0x734D838F83D19453, 0x83CF5A8762876B0B, 0x7B8F8BD38BD35A49,  // 0x0000C788 
	0x734B730D6ACB5A89, 0x524962C9734B838F, 0x838F7B8D41C79413, 0x83D17B8F5A8B8C15,  // 0x0000C7A8 
	0x9C97A4975A497B8F, 0x7B8F8BD18C139455, 0x6B096AC97B4F7B8F, 0x9413941394136ACB,  // 0x0000C7C8 
	0x6B0962C752034A05, 0x734F7B8F83D183D1, 0x83CF62C95A8B7B91, 0x83D183D1734D3983,  // 0x0000C7E8 
	0x4A055A895A8962C9, 0x94138C139C959493, 0x62C77B8D838F9413, 0x9455A4D7A4D76B09,  // 0x0000C808 
	0x7347628762C75A45, 0x8C1383D18BD18BD1, 0x6B0B62CB734D734F, 0x8C1183D17B8F3141,  // 0x0000C828 
	0x5A896ACB734F5A8B, 0x9C97A4D983CF5201, 0x62C98BD194139C55, 0x9C559C97730B7BCD,  // 0x0000C848 
	0x7B8B628962C962C9, 0x7B4F945394539453, 0x41C16B0B6B0D734F, 0x8C1194538C115205,  // 0x0000C868 
	0x62C97B8F8BD3734F, 0x730B6AC962C75A83, 0x734D8C13A4979C97, 0xA4D9734D734D7B8D,  // 0x0000C888 
	0x83CF738B6B0B5289, 0x5A895A875A874A03, 0x41C3734F7B918C11, 0x8C119453945362CB,  // 0x0000C8A8 
	0x62C983D18C138BD3, 0x7B917B4F7B4D5A83, 0x62C983D1A4999453, 0x734B7B4D7B8D83CF,  // 0x0000C8C8 
	0x8BD183CF4A455247, 0x5A896B0B730D62CB, 0x52475A4983D39451, 0x94539C5552435A87,  // 0x0000C8E8 
	0x6B0B83D18C138C13, 0x8C1383D17B8F730D, 0x5A475A4752454A03, 0x7309734D8BD19453,  // 0x0000C908 
	0x8C118BD14A455ACB, 0x6B0D838F7B8F7B4F, 0x734F62CB628B9453, 0xA4D56287734B6289,  // 0x0000C928 
	0x6B0B734F8C118C13, 0x94538C1394558C13, 0x5A4962875A875A45, 0x52455A8762877BCF,  // 0x0000C948 
	0x9C9794554A037351, 0x7B8F83CF83D183D1, 0x83D1734F628B9C53, 0x6B096B0B7B8F7B91,  // 0x0000C968 
	0x83D3734F6B0B8BD3, 0x9C559C97A4D9730D, 0x62CB6B0B6B0B6AC9, 0x62C96AC962C95A87,  // 0x0000C988 
	0x62C9734D41C15247, 0x83D39C559C559455, 0x8C1383914A076285, 0x734D7B9183D18C13,  // 0x0000C9A8 
	0x94557B9152455247, 0x9C579C979C555209, 0x6ACD734F734F7B4D, 0x6ACB730D7B4D6ACB,  // 0x0000C9C8 
	0x734D6B0B49C34A05, 0x52455A896B0D8C13, 0x83CF524539C55A45, 0x838F8BD18C139455,  // 0x0000C9E8 
	0x8C1383D149C541C3, 0xA4999C55838F4185, 0x6B0F8BD383918391, 0x838F838F83D18BD3,  // 0x0000CA08 
	0x7B8F4A05524762CB, 0x6B0B5A895A475205, 0x418141C34A055A45, 0x94138C1394559455,  // 0x0000CA28 
	0x8393524752475A49, 0x6B0B6AC9734D4183, 0x524994579C579C57, 0x8BD38BD18BD38BD3,  // 0x0000CA48 
	0x734F4A09734D734D, 0x734D7B4F7B4D72CB, 0x730B5A475A876AC9, 0xA4979C97945583D1,  // 0x0000CA68 
	0x524562C962C9734D, 0x6B0D7B4D62876289, 0x62CD83D19C999C97, 0x94559C97941383D1,  // 0x0000CA88 
	0x49C352478C138C13, 0x8BD383918BD18BD1, 0x7B8F5A8762C97B4D, 0xA4D99C97734D4A05,  // 0x0000CAA8 
	0x6B0B734F734F7B4F, 0x7B8F7B8F52035245, 0x5249838F734D6B0B, 0x5A87ACDD9C577B51,  // 0x0000CAC8 
	0x5A896B118C159455, 0x945594159C559413, 0x6AC96B0B734D7B4D, 0x7B8FA4DB4A0562C9,  // 0x0000CAE8 
};

u64 _spot04_room_0_tex_0000CB08[] = 
{
	0x52D7421139CF4211, 0x42134A954A53298B, 0x2109421142532107, 0x2949631B6B5D5297,  // 0x0000CB08 
	0x298B108531CD2949, 0x210739CF4A954A53, 0x425142534A533A0F, 0x4A534A53210918C7,  // 0x0000CB28 
	0x4A95421139CF4A55, 0x42534A534253298B, 0x18C742114A532149, 0x298B631B631B4211,  // 0x0000CB48 
	0x2949084331CD2949, 0x18C731CD4A534251, 0x39CF318D318D31CD, 0x42114253298B2107,  // 0x0000CB68 
	0x3A114253294B4253, 0x42534A534251318B, 0x18C739CF42112107, 0x318B4A954253420F,  // 0x0000CB88 
	0x31CD108331CD294B, 0x18C731CD4A954251, 0x318B2949214B39CF, 0x4A954A55318D18C5,  // 0x0000CBA8 
	0x31CD4251210939CF, 0x4A954A953A0F39CF, 0x190939CD318B2107, 0x4A515297318D39CD,  // 0x0000CBC8 
	0x31CD298B318B31CD, 0x294B421152D74251, 0x2949214921095293, 0x52D74A5531CD18C5,  // 0x0000CBE8 
	0x318B3A112107294B, 0x52D75295420F3A0F, 0x294931CD298918C7, 0x52D55AD72147318B,  // 0x0000CC08 
	0x39CD318B318B39CF, 0x18C742515AD7420F, 0x2949214918C94A53, 0x52D742113A0F2109,  // 0x0000CC28 
	0x318B3A0F21072109, 0x5AD95AD73A0F39CD, 0x318B2949318B2109, 0x52D552D71905424F,  // 0x0000CC48 
	0x3A0F318B318D39CF, 0x18C942115AD74211, 0x2949214910C74A53, 0x52D5420F420F298B,  // 0x0000CC68 
	0x318D3A1121072109, 0x5AD95B193A0F31CD, 0x318B318B31CD2149, 0x52D54A931081420F,  // 0x0000CC88 
	0x420F298B318D318D, 0x21093A0F4A53318D, 0x29492949108752D5, 0x4A933A0F420F31CD,  // 0x0000CCA8 
	0x31CD42112149294B, 0x5AD7631939CD31CB, 0x294939CF39CD2109, 0x4A93425110833A0F,  // 0x0000CCC8 
	0x425142112109298D, 0x421142113A0F31CD, 0x318D294B10855AD7, 0x4A533A0F3A0F4211,  // 0x0000CCE8 
	0x294B421121091909, 0x4A555B1939CD318B, 0x29493A0F420F2949, 0x420F3A0F210731CD,  // 0x0000CD08 
	0x4A533A0F190739D1, 0x42134A5339CD39CF, 0x39CF294B108552D5, 0x42113A0F4A953A0F,  // 0x0000CD28 
	0x18C74A9519071907, 0x42535B1939CD298B, 0x2109420F420F298B, 0x31CD39CF318B31CD,  // 0x0000CD48 
	0x425339CF2107298D, 0x42534A95318D3A0F, 0x3A0F294910C74A53, 0x425142534A9531CD,  // 0x0000CD68 
	0x18C74A9521072109, 0x42535B193A0F294B, 0x18C7425142512949, 0x318B42134A534211,  // 0x0000CD88 
	0x318D3A0F29491909, 0x4A534A53318D4251, 0x4211318B21093A0F, 0x425352D74A95318D,  // 0x0000CDA8 
	0x108542532107294B, 0x42115AD73A0F2149, 0x18C7421142512107, 0x318B4A9552D74211,  // 0x0000CDC8 
	0x210739CF318D210B, 0x3A0F425131CD4251, 0x4A53298B190739CD, 0x4A555AD94A95318B,  // 0x0000CDE8 
	0x2949318D2149298B, 0x42534A9542112107, 0x18C739CF4211294B, 0x294952975AD94211,  // 0x0000CE08 
	0x18C7318D298B318D, 0x3A0F421139CF4A53, 0x4A93318B1907318B, 0x4A955AD942532949,  // 0x0000CE28 
	0x318D318D21492109, 0x421142513A112107, 0x18C7298D3A0F31CD, 0x294952D75AD94A53,  // 0x0000CE48 
	0x21072109298B318D, 0x31CD420F420F4A53, 0x4A953A0F19072949, 0x529552D739CF2949,  // 0x0000CE68 
	0x318D318D294B318D, 0x3A0F425142512149, 0x18C7294D31CD298B, 0x298952D75B195297,  // 0x0000CE88 
	0x210718C7298B31CD, 0x39CD3A0F42114A53, 0x4A9552D739CF318D, 0x52D75295294B2107,  // 0x0000CEA8 
	0x3A1131CD39CF31CD, 0x421152D74A532949, 0x18C939CF420F2107, 0x294952D7635B4A95,  // 0x0000CEC8 
	0x2149084339CF31CD, 0x298B31CD3A0F4A93, 0x4A9552D75297298B, 0x4A9552D7214918C5,  // 0x0000CEE8 
};

u64 _spot04_room_0_tex_0000CF08[] = 
{
	0x039A10999A369A03, 0x03991040DA1D1D40, 0x364DA84003400303, 0x034103039A101010,  // 0x0000CF08 
	0x033640409A031D1D, 0x03101D1D4103031D, 0x1D031DDA4D031D1D, 0x039A031D93141402,  // 0x0000CF28 
	0x101099409A030336, 0x9A034B4D401DDA41, 0x03031D031D991D15, 0x02242C090F040411,  // 0x0000CF48 
	0x104010031D1D4003, 0x1D1D40031D033603, 0x1D1D40036F530908, 0x87873D112F09092F,  // 0x0000CF68 
	0x103603030336401D, 0x4136034D9A030303, 0x034193713C088708, 0x111E1E2C2F240F1E,  // 0x0000CF88 
	0x10999A3699031D03, 0x1099039903030303, 0x1D4B543D2C112C04, 0x04042C1104111304,  // 0x0000CFA8 
	0x3603101040DA0310, 0x034136030303032D, 0x110411110904113B, 0x1B11043D3C2C11BF,  // 0x0000CFC8 
	0x031010361D03101D, 0x1D031D4040535113, 0x38131108081B0813, 0x13922B11AE6E1304,  // 0x0000CFE8 
	0x1D40360303100303, 0x030336991D241311, 0x113D087011040804, 0x049111083D04117E,  // 0x0000D008 
	0x4041034D109A0340, 0x0310104B2C092C2B, 0x3D11043D116E0811, 0x56562C570F0F5791,  // 0x0000D028 
	0x0399401099033640, 0x03109354541E2B3D, 0x7E112B13111E2F2B, 0x550F7A570F57570F,  // 0x0000D048 
	0x03361003DA409903, 0x104B2C540904AE2C, 0x17045454112B5C0F, 0x112B0F232F19D63F,  // 0x0000D068 
	0x361099DA4D991036, 0x9309540C2F130409, 0x04112B1313572F57, 0x56D67AD60E9D2A0D,  // 0x0000D088 
	0x47109A4D10101010, 0x0C38BF51AE13652C, 0x54171304562F3A57, 0xD64A3E9D2A0A0D0D,  // 0x0000D0A8 
	0x364003031010104B, 0x542C17111E0F1E7E, 0x91131E7E56C8D64A, 0x222A0A0A160D1616,  // 0x0000D0C8 
	0x1010361010102D13, 0x3D2C873D557E7E0F, 0x3D50BF0F563A199D, 0x0D060B0016270027,  // 0x0000D0E8 
	0x1003994010031E54, 0xC92C542F1E1E1E04, 0x0F2F2F5656142A0D, 0x0027160027002727,  // 0x0000D108 
	0x364D1036100C3D09, 0x2F1E0F1E1E2F2C0F, 0x0F57CA2A3E9D0A06, 0x0627160027002727,  // 0x0000D128 
	0x0336361063AE1E2F, 0x1E1E0F0F2F115614, 0x0F191ACA160D160B, 0x0000000000000000,  // 0x0000D148 
	0x1010031002C92F51, 0x2C2F1E24090FD63A, 0x56CA144A06272700, 0x0000000000000000,  // 0x0000D168 
	0x101036A809C94B2F, 0xC9727E1E117AD60F, 0x569D9D2706000000, 0x0000000000000000,  // 0x0000D188 
	0x361010931E51310F, 0x2F2B2C0457195756, 0x223E161627000000, 0x0000000000000000,  // 0x0000D1A8 
	0x10400358342F0972, 0x0F0F0C0F0F194A1A, 0x3E3E160000000000, 0x0000000000000027,  // 0x0000D1C8 
	0x1010931111242424, 0x39BF4F020255562A, 0x06000D2700000000, 0x0000000000000000,  // 0x0000D1E8 
	0x1010719E0C2B24C3, 0x1E2F111ACE19192A, 0x2A16000000000000, 0x0000002700000000,  // 0x0000D208 
	0x0336315D02185124, 0x2F312FCA4A2F3E16, 0x1600000000000000, 0x0027000000000000,  // 0x0000D228 
	0x10539C2461113424, 0x51AB0CCECA3E0E0D, 0x1600270000000000, 0x0000000000000000,  // 0x0000D248 
	0x10CC6A2C17091709, 0x1ECE0E3F3A140D16, 0x1627000000000000, 0x0000000000000000,  // 0x0000D268 
	0x40071111340C172C, 0x0F020214149D160A, 0x2727000000000000, 0x0000000000000000,  // 0x0000D288 
	0x102D0C0C61AB7211, 0x240C2FCA3E0E0622, 0x2A0B270027000000, 0x2700000000000000,  // 0x0000D2A8 
	0x40022B096511090F, 0xCECE19193E0D0D0D, 0x2A16000000000000, 0x0000000000000000,  // 0x0000D2C8 
	0x400709112B2C1E72, 0x2F3ACAD63E2A2A0D, 0x06160B2700000000, 0x0000000000000000,  // 0x0000D2E8 
};

u64 _spot04_room_0_tex_0000D308[] = 
{
	0x3545353535288A28, 0x35353535352828CB, 0x113D3838380411AE, 0x818A1F382835B86B,  // 0x0000D308 
	0x1313137008080808, 0x893C8908B93535ED, 0x08080808B93B3B1B, 0x1B1B1B1BB9873D1C,  // 0x0000D328 
	0x0808088908B9B908, 0xB93B3C3DAE2B1C1C, 0x11113D3D113D3D3D, 0x040404BC3B3B1BBC,  // 0x0000D348 
	0x3B3B1B1B1B1B1B1B, 0x1B1B1B1B1B1B1BBC, 0x0808080808080808, 0x080808B93B1B1BA3,  // 0x0000D368 
	0x0404040404040404, 0x04048713897070B9, 0x0F0F0F0F0F0F0F0F, 0x0F0F0F0F917E7E54,  // 0x0000D388 
	0x7A7A7A7A7A7A7A7A, 0x7A7A56230F0F7E1C, 0x0F23232323230F0F, 0x0F0F2357567AC8C8,  // 0x0000D3A8 
	0x565656565656C856, 0x7A7A7A7A7A7A7AC8, 0x5656565656565656, 0x567A7A567A7AC856,  // 0x0000D3C8 
	0x5656565656567A7A, 0xD6D6D6D6D6D67A56, 0x7AD6D6D6D6D6D6D6, 0x4A4A1F1F1F1F4AD6,  // 0x0000D3E8 
};

u64 _spot04_room_0_tex_0000D408[] = 
{
	0x1B3BB908873D89D8, 0xD8BCBCA31B3B3528, 0x3BB90808043D895A, 0x5AD8BCA31B3B35CB,  // 0x0000D408 
	0x3B0889890411895A, 0x5ABCA3A33B083528, 0xB90889133D2B895A, 0x5ABC1B1BB9133528,  // 0x0000D428 
	0x1387043D117E895A, 0xD8A31B3B08353528, 0x043D11542B7E895A, 0x5ABC1B08B8C6C635,  // 0x0000D448 
	0x898989898989895A, 0x5AA31B89B8EDC628, 0x5AD85A5A5A5A5A5A, 0xD8A33B87EDB8C628,  // 0x0000D468 
	0xBCBCD8D8D8D85AD8, 0xA31B1311B86B35CB, 0xA3A3BCBCBCBCBCA3, 0xB9B9047EB8EDC6CB,  // 0x0000D488 
	0x1BA3A3A3A3A31B08, 0x3C112C0F0FB8B8CB, 0x1B1B3B3B3B08873D, 0x112B1E0F57ED6B28,  // 0x0000D4A8 
	0x3B8208130411542B, 0xEDEDB823EDB83528, 0x6E6E356BB8B82C6B, 0x6B6B6BB8B8C635CB,  // 0x0000D4C8 
	0x28282835356B3535, 0x35353535353535CB, 0x28CB282828352828, 0xCBCBCB2828CBCBCB,  // 0x0000D4E8 
};

u64 _spot04_room_0_tex_0000D508[] = 
{
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000D508 
	0x0801080110010801, 0x1001180108010801, 0x1801000110011801, 0x0801000100010001,  // 0x0000D528 
	0x4001480130013801, 0x4801500140014801, 0x4041500148413801, 0x2001380138013801,  // 0x0000D548 
	0x4801480140414881, 0x5001500148015081, 0x4881508150814801, 0x3001504150415041,  // 0x0000D568 
	0x590161C159415981, 0x61C161C159015941, 0x58C1590158C158C1, 0x480161C161815941,  // 0x0000D588 
	0x598161C162016241, 0x61C161C161816201, 0x6181598159015901, 0x50016241624161C1,  // 0x0000D5A8 
	0x6A816AC16AC16AC1, 0x6AC16AC16A816AC1, 0x6A8162016AC16201, 0x59016AC16AC16AC1,  // 0x0000D5C8 
	0x6AC16AC16AC16AC1, 0x6AC16AC16AC16AC1, 0x6AC16AC16AC16241, 0x59416AC16AC16AC1,  // 0x0000D5E8 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000D608 
	0x1801100120011001, 0x0801080100010001, 0x1001000100010801, 0x1801080110011001,  // 0x0000D628 
	0x4801300140013001, 0x3001300130012801, 0x2801300130413001, 0x3841384150C14801,  // 0x0000D648 
	0x5001400150014841, 0x4881488148814881, 0x488148C148C14881, 0x4841480150015041,  // 0x0000D668 
	0x5841480158415901, 0x5941594159415941, 0x5981598161815941, 0x590158C159015881,  // 0x0000D688 
	0x58815001590161C1, 0x61C161C1618161C1, 0x61C161C161C161C1, 0x6181590159015881,  // 0x0000D6A8 
	0x5881588161C161C1, 0x61C161C161C161C1, 0x61C161C161C161C1, 0x61C1590159015881,  // 0x0000D6C8 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000D6E8 
	0x0801000108010801, 0x0001080100010001, 0x0001000100010001, 0x0001000100011001,  // 0x0000D708 
	0x3001300130013001, 0x2801584128014801, 0x2801500140011801, 0x1801200128013041,  // 0x0000D728 
	0x48C1510151015101, 0x4881590148C15941, 0x5101594159413801, 0x40C1404140814941,  // 0x0000D748 
	0x594161C159815981, 0x50C1590159415941, 0x5981594159013801, 0x5141514159815A01,  // 0x0000D768 
	0x61C161C161C161C1, 0x618161C161C161C1, 0x61C1624161C14001, 0x61C1620162416241,  // 0x0000D788 
	0x61C161C161C161C1, 0x61C161C161C161C1, 0x61C161C161C15001, 0x61C161C161C16201,  // 0x0000D7A8 
	0x61C161C161C161C1, 0x61C161C161C161C1, 0x61C161C161C15841, 0x61C161C161C161C1,  // 0x0000D7C8 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000D7E8 
	0x1801000100010001, 0x0001000100010001, 0x0801000100010001, 0x0001100108011801,  // 0x0000D808 
	0x4801480118011001, 0x2001300128013001, 0x3001300130013801, 0x4001384130013801,  // 0x0000D828 
	0x4801480150014041, 0x3841404130014001, 0x3801380148014001, 0x4001484148814841,  // 0x0000D848 
	0x58C1590159015941, 0x50C1504148015041, 0x4881488150C150C1, 0x58C1590159015901,  // 0x0000D868 
	0x5900594159015901, 0x5901590159005840, 0x504058C159015901, 0x5901590159005900,  // 0x0000D888 
	0x5940594059015901, 0x5901590059005840, 0x590061C061C161C1, 0x61C161C061C06180,  // 0x0000D8A8 
	0x61C061C061C061C0, 0x5940590059005900, 0x594061C061C061C0, 0x61C061C061C061C0,  // 0x0000D8C8 
	0x61C061C061C061C0, 0x61C061C061C061C0, 0x61C061C061C061C0, 0x61C061C061C061C0,  // 0x0000D8E8 
};

u64 _spot04_room_0_tex_0000D908[] = 
{
	0x3140314031404A04, 0x62CA4A065A8862CA, 0x41C4398631442900, 0x41C441C239823980,  // 0x0000D908 
	0x3982398239825248, 0x6B0C6B0C7B929459, 0x6B0F5A8B524A3984, 0x4A0641C439803140,  // 0x0000D928 
	0x39823982524662CC, 0x6B0E734E94597B93, 0x52494A0752495248, 0x524841C44A0441C4,  // 0x0000D948 
	0x41C441C45A8A6B0E, 0x6B0E6B0E8C1583D3, 0x5A8B4A074A075248, 0x524841C452884A06,  // 0x0000D968 
	0x39824A06630C7B90, 0x73507B92AD1F7391, 0x73514A0739834A04, 0x62CC62CA52483982,  // 0x0000D988 
	0x5A886B0E7B9283D2, 0x6B0E5ACA9C9983D3, 0x62CD41C531414A06, 0x62CC735083D47390,  // 0x0000D9A8 
	0x7B9273507BD283D4, 0x7B925ACA62CD5A8B, 0x524741C541C583D4, 0xB55E8C1683D47B92,  // 0x0000D9C8 
	0x8C1594578C158C15, 0x8C17B5A1A4DD8415, 0x8C159C9BC5E59459, 0x73518C5794579457,  // 0x0000D9E8 
	0x630D73517B936B0F, 0x6B0D7B91A4DD83D5, 0x7351C5E383D54A09, 0x735173516B4F6B0F,  // 0x0000DA08 
	0x73916B0F734F6B0F, 0x6B0F62CB6B0DB55F, 0xD669945741C55ACB, 0x6B0D6B0F83D37B93,  // 0x0000DA28 
	0x734F7351734F6B0F, 0x630D62CD83D3B55F, 0x83D77B915A8B5ACB, 0x62CD6B0F62CD62CB,  // 0x0000DA48 
	0x4A474A074A073141, 0x524973518C195A8B, 0x3143630D73535249, 0x4A0739C34A054A07,  // 0x0000DA68 
	0x3140314029002900, 0x398462D0398920C5, 0x2905290339873984, 0x31423140398241C4,  // 0x0000DA88 
	0x398239C2630C5A88, 0x4A06314218812905, 0x310920C520C33142, 0x314031404A064A06,  // 0x0000DAA8 
	0x398239C2630C5A88, 0x4A06314218812905, 0x310920C520C33142, 0x314031404A064A06,  // 0x0000DAC8 
	0x41C439845A884A04, 0x4A0431404A09524D, 0x41C920C3188141C4, 0x398231405A8A5A8A,  // 0x0000DAE8 
	0x4A06420441C441C2, 0x528839826B0F6B11, 0x4A09290118815248, 0x41C4398252885288,  // 0x0000DB08 
	0x4A06420441C441C2, 0x528839826B0F6B11, 0x4A09290118815248, 0x41C4398252885288,  // 0x0000DB28 
	0x3180318039825248, 0x62CC39C283D362CD, 0x5249318118814A06, 0x4A06398231423982,  // 0x0000DB48 
	0x3982398239825A8A, 0x6B0C52467BD36B0D, 0x5A8B398329014A06, 0x4A0641C431403982,  // 0x0000DB68 
	0x398239C239825A8A, 0x5A8852486B0D6B0D, 0x6B0F41C5314341C6, 0x4A0641C431402900,  // 0x0000DB88 
	0x41C44A4639C24A06, 0x52485A886B0F4A47, 0x4A054A0739854A08, 0x5246398239823982,  // 0x0000DBA8 
	0x73917B9383D383D5, 0x8C15B561A4DB7BD3, 0x7B918C15B5618C17, 0x7B93735173917B93,  // 0x0000DBC8 
	0x62CD62CB62CD630D, 0x5A89734FA4DD83D3, 0x62CBBDA17B9341C7, 0x524962CB52895249,  // 0x0000DBE8 
	0x62CD5A8B52495A89, 0x5A8B4A055A8B9C99, 0xB5A17BD329014205, 0x4A05630D6B0D62CD,  // 0x0000DC08 
	0x52895A894A074A09, 0x4A054A05734F9CDB, 0x6B11630D398341C3, 0x4A075A8B5A8B4A07,  // 0x0000DC28 
	0x41C5398341C33985, 0x41C5735183D75249, 0x29015A8B6B0F3141, 0x39833181398341C3,  // 0x0000DC48 
	0x2940290039823982, 0x5A8C7B9441CD1883, 0x1883290329033984, 0x20C2290020C02900,  // 0x0000DC68 
	0x7350739062CC7350, 0x7B92524839833183, 0x1881188120C14A46, 0x41C462CC5A8A62CC,  // 0x0000DC88 
	0x7350739062CC7350, 0x7B92524839833183, 0x1881188120C14A46, 0x41C462CC5A8A62CC,  // 0x0000DCA8 
	0x73907B927BD283D2, 0x83D4630C5A8B41C5, 0x3183188120C18C14, 0x7B92735073907B92,  // 0x0000DCC8 
	0x5A8862CA62CC6B0C, 0x6B4E7B906B0F5249, 0x4A0720C118813984, 0x5A8A6B0C524841C4,  // 0x0000DCE8 
	0x62CC5248528862CC, 0x6B0C734E7B936B0D, 0x52492101084141C4, 0x5A8A5ACA52485248,  // 0x0000DD08 
	0x5248524639C24A06, 0x62CC6B0E8C177351, 0x5249290108013982, 0x52484A0641C23982,  // 0x0000DD28 
	0x4A0641C441C23142, 0x62CE6B1073536B11, 0x4A09290120C13140, 0x4A064A4652465246,  // 0x0000DD48 
	0x3140314039823140, 0x62CE5ACE6B115ACF, 0x41C73985290320C0, 0x188020C020C02900,  // 0x0000DD68 
	0x3140290039823982, 0x290020C04A0B41C9, 0x2905290318813142, 0x294020C041C23980,  // 0x0000DD88 
	0x73917B9383D383D5, 0x8C15B561A4DB7BD3, 0x7B918C15B5618C17, 0x7B93735173917B93,  // 0x0000DDA8 
	0x4A0752475ACB6B0F, 0x5A89734FA4DD83D3, 0x62CBBDA17B934A07, 0x5A8952894A0741C5,  // 0x0000DDC8 
	0x4A4752474A475249, 0x5A8B4A055A8B9C99, 0xB5A17BD3314139C3, 0x4A074A074A0741C5,  // 0x0000DDE8 
	0x4A054A0739C33985, 0x41C34A05734F9CDB, 0x6B11630D4A0741C5, 0x41C54A0541C541C5,  // 0x0000DE08 
	0x3983398339812941, 0x41C5735183D75249, 0x29015A896B0F3141, 0x3983318131413141,  // 0x0000DE28 
	0x3140314039823140, 0x5A8C7B9441CD1883, 0x1883290329033142, 0x188020C020C02900,  // 0x0000DE48 
	0x42044A0631405A88, 0x6B0E52884A0741C3, 0x2901188120C141C6, 0x41C239824A044A06,  // 0x0000DE68 
	0x42044A0631405A88, 0x6B0E52884A0741C3, 0x2901188120C141C6, 0x41C239824A044A06,  // 0x0000DE88 
	0x42044A0631405A88, 0x6B0E52884A0741C3, 0x2901188120C141C6, 0x41C239824A044A06,  // 0x0000DEA8 
	0x4A064A0631405A8A, 0x5A8A524652473983, 0x31412901290141C4, 0x39C231804A065246,  // 0x0000DEC8 
	0x4A064A0439805246, 0x52464A044A054A07, 0x3141290129013142, 0x398239804A044A06,  // 0x0000DEE8 
	0x420441C431805248, 0x4A0641C441C562CB, 0x4A05290129013142, 0x398239824A064A06,  // 0x0000DF08 
	0x4A06398431403980, 0x41C44A0452495A89, 0x39C3290129013982, 0x41C441C24A064A06,  // 0x0000DF28 
	0x5ACA5A8841C441C2, 0x398241C44A0541C5, 0x3141290129013982, 0x3982398241C45248,  // 0x0000DF48 
	0x62CC62CC62CC4A04, 0x5248528841C33141, 0x20C1290131414A46, 0x41C441C44A065A8A,  // 0x0000DF68 
	0x6B0D630D6B0D5A8B, 0x62CD7B919CDB62CD, 0x524794599C994A09, 0x524952895A8B62CD,  // 0x0000DF88 
	0x41C34A054A075249, 0x5A89524783D39459, 0x9459B5614A073181, 0x41C3314131813983,  // 0x0000DFA8 
	0x3981398131814A05, 0x420552475A8BB55F, 0xBDA362CD398341C3, 0x210120C131413983,  // 0x0000DFC8 
	0x3141290131413141, 0x39834A078C577B93, 0x20C173516B0F41C5, 0x3141290131413141,  // 0x0000DFE8 
	0x1041080110411881, 0x2901524B5A8D20C1, 0x20C131414A0920C1, 0x20C118C118811881,  // 0x0000E008 
	0x18801880290020C0, 0x29005A8C188120C1, 0x1041000118813140, 0x188020C020C01880,  // 0x0000E028 
	0x2900398241C43140, 0x4A0420C029013983, 0x20C1104110413984, 0x31423140318041C2,  // 0x0000E048 
	0x39804A0452884204, 0x398220C031414A07, 0x2901104110413142, 0x3980314039824A04,  // 0x0000E068 
	0x398241C439823980, 0x2900314031414A07, 0x2901104110413142, 0x3982314039824A04,  // 0x0000E088 
	0x3982398229003140, 0x3140314039834A07, 0x2101104118813142, 0x39803140398241C2,  // 0x0000E0A8 
	0x3982398231403140, 0x3982318039833983, 0x20C1104118813140, 0x398241C239C23982,  // 0x0000E0C8 
	0x39823982290041C4, 0x52483140314120C1, 0x1041080110412900, 0x398041C439C23982,  // 0x0000E0E8 
};

u64 _spot04_room_0_tex_0000E108[] = 
{
	0x848184C18D018D01, 0x8D018D0195419541, 0x95819D819DC1A5C1, 0x848184C184C19541,  // 0x0000E108 
	0x9541954195419541, 0xB681AE41AE41A601, 0x9DC19D8195419D81, 0xA5C1A5C1A601A601,  // 0x0000E128 
	0x740174417C417C41, 0x74417C417C8184C1, 0x84C18D0163816381, 0x6BC16BC16BC16BC1,  // 0x0000E148 
	0x6BC16BC16C017401, 0x74014AC18D018D01, 0x8CC18481848184C1, 0x8CC18D018D017401,  // 0x0000E168 
	0x6BC16BC16BC16BC1, 0x63C16BC16C016BC1, 0x31C1320131C15B41, 0x5B415B415B015301,  // 0x0000E188 
	0x63816BC16BC16BC1, 0x3A01320142417C81, 0x7C41740174017401, 0x7441744100010001,  // 0x0000E1A8 
	0x000100016BC16381, 0x63C16BC16BC13A01, 0x3A013A013A013A01, 0x5B41638163816381,  // 0x0000E1C8 
	0x6381638108414AC1, 0x42813A413A413A01, 0x6BC16BC163810001, 0x0001000100010001,  // 0x0000E1E8 
	0x1083104108010001, 0x0001428142814241, 0x4281428142814281, 0x42816C016C016BC1,  // 0x0000E208 
	0x6BC1084118C30841, 0x52C152C153014AC1, 0x4281000108411083, 0x18C318C318831083,  // 0x0000E228 
	0x2945210520C31883, 0x104108015B415B01, 0x5B415B415B415B01, 0x5301530153011083,  // 0x0000E248 
	0x290539C74A093147, 0x18C35B015B415301, 0x0001084118832105, 0x2105290529452945,  // 0x0000E268 
	0x2104210420C21882, 0x104008006C006BC1, 0x63816BC16BC163C1, 0x6381740074001082,  // 0x0000E288 
	0x290439C64A083146, 0x18C2638163415B41, 0x0001000100010001, 0x0001000129442944,  // 0x0000E2A8 
	0x2104210420C21882, 0x104008006C006C00, 0x6C016C0174017400, 0x7400740074001082,  // 0x0000E2C8 
	0x290439C64A083146, 0x18C2638063814A82, 0x1081318308410001, 0x0001000100002944,  // 0x0000E2E8 
	0x2104210420C21882, 0x104008006C006C00, 0x6C00740074007400, 0x7400740074001082,  // 0x0000E308 
	0x290439C64A083146, 0x18C2638063803984, 0x314339C521030841, 0x0001084108400840,  // 0x0000E328 
	0x2944294429442944, 0x294429446C006C00, 0x6C00740074007400, 0x7400740074001082,  // 0x0000E348 
	0x290439C64A083146, 0x18C26380734E4A46, 0x318339C529430841, 0x0001084108400840,  // 0x0000E368 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E388 
	0x2944294429442944, 0x734E734E734E734F, 0x3183318329431081, 0x0001104110401040,  // 0x0000E3A8 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E3C8 
	0x2944294429442944, 0x734C734C734C734D, 0x8C55210121011041, 0x0001084108400840,  // 0x0000E3E8 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E408 
	0x2944294429442944, 0x738E738E738E738F, 0x73D1634D10810841, 0x0001084108400840,  // 0x0000E428 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E448 
	0x2944294429442944, 0x5A865A865A865A87, 0x738F630B31830001, 0x0001084108400840,  // 0x0000E468 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E488 
	0x2944294429442944, 0x2900290029002900, 0x4A47630B39C52943, 0x0001108110801080,  // 0x0000E4A8 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E4C8 
	0x2944294429442944, 0x1880188018801880, 0x1881528939C52943, 0x18C3000100001040,  // 0x0000E4E8 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E508 
	0x2944294429442944, 0x1880188018801880, 0x1881104139C33183, 0x2103188131840000,  // 0x0000E528 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E548 
	0x2944294429442944, 0x20C220C220C220C2, 0x20C320C110412943, 0x2101188331853184,  // 0x0000E568 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E588 
	0x2944294429442944, 0x2902290229022902, 0x2903398118410001, 0x18C1210319011900,  // 0x0000E5A8 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E5C8 
	0x2944294429442944, 0x2902290229022902, 0x2903398120810001, 0x18C3314708410840,  // 0x0000E5E8 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E608 
	0x2944294429442944, 0x2900290029002900, 0x2901398120C31041, 0x39C720C308410840,  // 0x0000E628 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E648 
	0x2944294429442944, 0x2900290029002900, 0x2901314131435ACD, 0x2903108300010000,  // 0x0000E668 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E688 
	0x2944294429442944, 0x20C020C020C020C0, 0x20C13101734F4A09, 0x20C3084108000800,  // 0x0000E6A8 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E6C8 
	0x2944294429442944, 0x2900290029002900, 0x29018C135A893185, 0x1083000100000000,  // 0x0000E6E8 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E708 
	0x2944294429442944, 0x83D283D283D283D2, 0x83D3730D5A893985, 0x1043000100000000,  // 0x0000E728 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E748 
	0x2944294429442944, 0x7350735073507351, 0x83D16ACB39C71083, 0x0841084108400840,  // 0x0000E768 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E788 
	0x2944294429442944, 0x6B4E6B4E6B4E6B4F, 0x734F4A0500010001, 0x0841084108400840,  // 0x0000E7A8 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E7C8 
	0x2944294429442944, 0x62CC62CC62CC62CD, 0x4A07084100010841, 0x0841080108000800,  // 0x0000E7E8 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E808 
	0x2944294429442944, 0x2102210221022102, 0x2103188108410841, 0x0001000100000000,  // 0x0000E828 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E848 
	0x2944294429442944, 0x2102210221022102, 0x210318C35B415B41, 0x0001000100000000,  // 0x0000E868 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E888 
	0x2944294429442944, 0x210221026BC06BC0, 0x6BC16BC153014281, 0x5301530153015300,  // 0x0000E8A8 
	0x2944294429442944, 0x2944294429442944, 0x2944294429442944, 0x2944294429442944,  // 0x0000E8C8 
	0x2944294429442944, 0x210221026BC03A01, 0x3A013A013A013A01, 0x3A013A013A013A01,  // 0x0000E8E8 
};

u64 _spot04_room_0_tex_0000E908[] = 
{
	0x3082518651865186, 0x5186518651865186, 0x5186518651865186, 0x518661C6598661C6,  // 0x0000E908 
	0x6A06518449043082, 0x0000080210001000, 0x1000100010001000, 0x0800080010001000,  // 0x0000E928 
	0x28C428C451865186, 0x5186518651865186, 0x5186518651865186, 0x518661C67A487A48,  // 0x0000E948 
	0x724661C659865986, 0x4944288410001000, 0x1000100010001000, 0x1000100010001000,  // 0x0000E968 
	0x28C428C428C43904, 0x3904494649464106, 0x49464946518661C6, 0x7A4882888AC98AC9,  // 0x0000E988 
	0x8AC97A8959865986, 0x59C6410430C42882, 0x1802100010001000, 0x1000100010001000,  // 0x0000E9A8 
	0x28C428C428C428C4, 0x3904390449464106, 0x5188494659867208, 0x82898ACB92CB92C9,  // 0x0000E9C8 
	0x8ACB82CB7A8B8289, 0x7A8A59C6410438C4, 0x2042204220021802, 0x1802100010001000,  // 0x0000E9E8 
	0x28C428C428C43904, 0x28C4390441064106, 0x518861C872497A8B, 0x82CB8ACB930B930B,  // 0x0000EA08 
	0x8ACB82CB728B6A49, 0x7249728859C638C4, 0x30C2308228421802, 0x1000100010001000,  // 0x0000EA28 
	0x28C428C428C43904, 0x28C43904494659C8, 0x6A087A8B82CB8B0D, 0x934D934B930B934D,  // 0x0000EA48 
	0x8B0D82CD7A8B6209, 0x620962077A896186, 0x3082284220021802, 0x1000100010001800,  // 0x0000EA68 
	0x28C428C428C428C4, 0x28C43904494651C8, 0x62097A8B82CD934D, 0x930D8B0B8B0B934F,  // 0x0000EA88 
	0x8B4F8B0D728B59C9, 0x59C759C751C76A47, 0x598638C428422042, 0x1802180210021000,  // 0x0000EAA8 
	0x28C428C428C430C4, 0x31043904518759C9, 0x620B728D8B0D8B0D, 0x82C982878B0B934D,  // 0x0000EAC8 
	0x8B0D830D6A4B51C9, 0x4947518749474145, 0x4145414541042882, 0x2042180210001000,  // 0x0000EAE8 
	0x3104310431043904, 0x414649875A096209, 0x6A4B7ACD830D830B, 0x7287724582C98B0D,  // 0x0000EB08 
	0x8B0D8B0D7ACD6A4B, 0x59C9498749873907, 0x39053905390530C5, 0x2042180210001000,  // 0x0000EB28 
	0x2082310431044147, 0x518759C959C96209, 0x728B82C97AC97287, 0x6A03724582C9830D,  // 0x0000EB48 
	0x8B0D82CF724B6A09, 0x59C9518749474947, 0x3907288530C530C3, 0x2043100010001000,  // 0x0000EB68 
	0x2042390449875185, 0x5A0951C759C96A49, 0x728972897B0B6A43, 0x61C1724582C98B0D,  // 0x0000EB88 
	0x7ACB6A4D49455185, 0x59C7518751874947, 0x30C5204318031843, 0x1803100110001000,  // 0x0000EBA8 
	0x2882414439015185, 0x518551C762496A49, 0x6A477AC96A4561C1, 0x598172857A87830B,  // 0x0000EBC8 
	0x728B59CB38C328C3, 0x4145518749473907, 0x30C5208500010803, 0x1803100110011000,  // 0x0000EBE8 
	0x1002390539034143, 0x51C75A0762096247, 0x7AC97AC96A0361C1, 0x620172456A037AC9,  // 0x0000EC08 
	0x6A49498728812083, 0x3105494741073907, 0x390730C718450001, 0x0001080310050002,  // 0x0000EC28 
	0x0000208320833945, 0x4987498751C76247, 0x72896A0562036203, 0x6A456A4559C372C7,  // 0x0000EC48 
	0x6247498718411843, 0x28C5414741074107, 0x390730C728871845, 0x0001000100030000,  // 0x0000EC68 
	0x00001803104328C5, 0x31053105498759C7, 0x51C7620561C36A45, 0x72876A4762056207,  // 0x0000EC88 
	0x51C5414318010801, 0x208330C749474947, 0x410730C728871845, 0x0003000100010000,  // 0x0000ECA8 
	0x0000000100011043, 0x188328C539054147, 0x518759C559C37247, 0x728951C751854985,  // 0x0000ECC8 
	0x4145310118011001, 0x1803288530C73907, 0x30C7208518050001, 0x0003000100000000,  // 0x0000ECE8 
	0x1000000000010001, 0x0843188320C530C5, 0x498759C762056A47, 0x59C730C530853905,  // 0x0000ED08 
	0x3945390318412041, 0x1801184508031803, 0x1805180500010001, 0x0001000000001000,  // 0x0000ED28 
	0x1000100000000000, 0x0000000308431043, 0x30C5414559C76207, 0x5187414539053085,  // 0x0000ED48 
	0x494530C310010001, 0x0801000300010001, 0x0001000300010001, 0x0000000000000002,  // 0x0000ED68 
	0x1000100010000804, 0x0002000200000000, 0x00000002288530C5, 0x3905410720850001,  // 0x0000ED88 
	0x0001000118031003, 0x1005000500020000, 0x0000000000000000, 0x0000000010001000,  // 0x0000EDA8 
	0x4A064A064A064A06, 0x41C8398631442944, 0x3986420A420A3986, 0x2102000108410841,  // 0x0000EDC8 
	0x0001000100010800, 0x2902318441C841C6, 0x41C6398431023144, 0x41C439844A064A06,  // 0x0000EDE8 
	0x4A064A064A064A06, 0x4208420831863144, 0x39C8420A31462904, 0x18C2108118C31081,  // 0x0000EE08 
	0x0001000100011082, 0x2102294441C841C8, 0x4A0849C639443144, 0x41C439844A064A06,  // 0x0000EE28 
	0x4A064A064A064A06, 0x4A064A0839863186, 0x41C84A4A41C83986, 0x39862945294518C3,  // 0x0000EE48 
	0x10410001000118C2, 0x2944314441C641C6, 0x41C841C641843984, 0x41C44A064A064A06,  // 0x0000EE68 
	0x4A064A064A064A06, 0x4A064A0639C63186, 0x41C85A8C528C4A4A, 0x524B41C939872905,  // 0x0000EE88 
	0x20C3084100010841, 0x2102314441C64A08, 0x4A084A0841C64A06, 0x4A064A064A064A06,  // 0x0000EEA8 
	0x4A064A064A064A06, 0x4A064A064A063184, 0x41C65A8A630E62CE, 0x62CF5ACD4A4B3187,  // 0x0000EEC8 
	0x2903108100010001, 0x210231844A085A4A, 0x524A4A084A084A06, 0x4A064A064A064A06,  // 0x0000EEE8 
	0x4A064A064A064A06, 0x4A064A064A065248, 0x4A064A06734E7B90, 0x73516B4F62CD4209,  // 0x0000EF08 
	0x2945108108010001, 0x2902318441C64A08, 0x524A5A8A4A064A06, 0x4A064A064A064A06,  // 0x0000EF28 
	0x4A064A064A064A06, 0x4A064A064A065A88, 0x62CA5A887B4E83D0, 0x83D373916B4F4A49,  // 0x0000EF48 
	0x3145188110410841, 0x290241C641C64A06, 0x52484A084A064A06, 0x4A064A064A064A06,  // 0x0000EF68 
	0x4A064A064A064A06, 0x4A064A064A066B0A, 0x734C734C838E838E, 0x9453841373515A8B,  // 0x0000EF88 
	0x3185210318831881, 0x41C44A064A065248, 0x5A884A064A064A06, 0x4A064A064A065204,  // 0x0000EFA8 
	0x4A064A064A064A06, 0x4A064A0662887B8C, 0x83CE83CE83CE83CE, 0x94538C5573915ACD,  // 0x0000EFC8 
	0x39C7314518C320C3, 0x39844A0652465246, 0x4A464A064A064A06, 0x4A064A064A064A06,  // 0x0000EFE8 
	0x5208520652065206, 0x4A064A065A88734C, 0x7BCE83CE83CE83CE, 0x945194557BD1630D,  // 0x0000F008 
	0x4A09398720C320C3, 0x39844A0652465246, 0x52464A064A064A06, 0x4A064A064A064A06,  // 0x0000F028 
	0x520852064A064A06, 0x4A064A064A064A48, 0x738C83CE83CE7B8E, 0x83CF8C117BD16B0D,  // 0x0000F048 
	0x524B41C7290520C3, 0x39844A0652464A06, 0x4A064A064A064A06, 0x4A064A064A064A06,  // 0x0000F068 
	0x4A064A064A064A06, 0x4A064A064A065288, 0x738C83CE83CE738C, 0x734B838F83D1734F,  // 0x0000F088 
	0x4A09398729052902, 0x41C44A064A0649C4, 0x4A064A064A064A06, 0x4A064A064A064A06,  // 0x0000F0A8 
	0x4A064A064A064A06, 0x520652065A8C5ACC, 0x62CA4A066B0A5288, 0x5A886ACB6ACB6ACB,  // 0x0000F0C8 
	0x5A8B398729022942, 0x3142398441C64A06, 0x4A064A064A064A06, 0x4A064A064A064A06,  // 0x0000F0E8 
};

u64 _spot04_room_0_tex_0000F108[] = 
{
	0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01,  // 0x0000F108 
	0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01,  // 0x0000F128 
	0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01,  // 0x0000F148 
	0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01,  // 0x0000F168 
	0x4A854A854A854A85, 0x4A854A854A854A85, 0x4A854A854A850001, 0x00014A854A854243,  // 0x0000F188 
	0x424342413A413A41, 0x3A413A4142414243, 0x424142834A834A85, 0x4A854A854A854A85,  // 0x0000F1A8 
	0x4A854A854A854A85, 0x4A854A854A854A85, 0x4A85000100010001, 0x00014A854A854243,  // 0x0000F1C8 
	0x4241424142413A41, 0x3A41424142414A83, 0x4A854A854A854A85, 0x4A854A854A854A85,  // 0x0000F1E8 
	0x0081004100410041, 0x004100415B075B07, 0x5B07000100010001, 0x0001000100014A85,  // 0x0000F208 
	0x4A834A8342414243, 0x4241424142834A83, 0x4A8352C552C552C5, 0x5B075B0700010081,  // 0x0000F228 
	0x0081004100410041, 0x5B075B075B070001, 0x0001000100010001, 0x000100014A854A85,  // 0x0000F248 
	0x4A834A8342834241, 0x42834A834A834A85, 0x4A85000108415B07, 0x5B07000100010081,  // 0x0000F268 
	0x0001000100010001, 0x0001000100410041, 0x0001000100010001, 0x0001000100010001,  // 0x0000F288 
	0x00014A834A854A83, 0x428342414A834AC5, 0x52C5530753075B07, 0x0001000100010001,  // 0x0000F2A8 
	0x0001000100010001, 0x0041004100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000F2C8 
	0x000142834AC54283, 0x4AC552C75B070001, 0x0001000100010001, 0x0001000100010001,  // 0x0000F2E8 
	0x0001104108010001, 0x0001000100410001, 0x0001000100010001, 0x0001000100010001,  // 0x0000F308 
	0x000100414A854A85, 0x4A8542834A8352C5, 0x52C552C700010001, 0x0001000100010001,  // 0x0000F328 
	0x0001104108010001, 0x0001000100410001, 0x0001000100010001, 0x0001000100010001,  // 0x0000F348 
	0x0001000152C752C7, 0x52C552C700010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000F368 
	0x0001188108010001, 0x0001108300010041, 0x000110C100010001, 0x0081000100410041,  // 0x0000F388 
	0x0041000108414A85, 0x4A854A8352C552C5, 0x52C7000100010001, 0x0001008100011081,  // 0x0000F3A8 
	0x0001188108010001, 0x0001108300010041, 0x000110C100010001, 0x0041000100010001,  // 0x0000F3C8 
	0x0001000100410041, 0x0001000100010001, 0x0001004100010001, 0x0001008100011081,  // 0x0000F3E8 
	0x000128C110010001, 0x0001108108410001, 0x0001000100010001, 0x0001000108410001,  // 0x0000F408 
	0x0001000100010841, 0x4AC54AC552C552C7, 0x0001000100010841, 0x0881004108810841,  // 0x0000F428 
	0x000128C110010001, 0x0001108108410001, 0x0001000100010001, 0x0041000100010001,  // 0x0000F448 
	0x0001108118C10841, 0x0001000100010001, 0x00010841084118C1, 0x0881004108810841,  // 0x0000F468 
	0x0001314108010001, 0x0001000100010841, 0x0001000110C10001, 0x000118C318C30001,  // 0x0000F488 
	0x0001000100010841, 0x0881088108410001, 0x00010841084118C1, 0x0841000111010001,  // 0x0000F4A8 
	0x0001314108010001, 0x0001000100010841, 0x0001000110C10001, 0x0001084310C10001,  // 0x0000F4C8 
	0x00010881188320C3, 0x1081088100010001, 0x000110C1108118C1, 0x0841000111010001,  // 0x0000F4E8 
};

u64 _spot04_room_0_tex_0000F508[] = 
{
	0x1081108108410001, 0x0001080100011881, 0x1881188118810841, 0x1881108110810841,  // 0x0000F508 
	0x0001000118811881, 0x1881188108411881, 0x1081108110816303, 0x52C14A813A413A01,  // 0x0000F528 
	0x1041104110811081, 0x1041084108011041, 0x1041104110411081, 0x1081104110411081,  // 0x0000F548 
	0x1081104110416303, 0x63036B4310811081, 0x1041188118C16303, 0x5AC1528142413A01,  // 0x0000F568 
	0x1041108110410841, 0x10411081104120C1, 0x18C118C108410841, 0x0841104110811041,  // 0x0000F588 
	0x0841104152815281, 0x3A015AC15AC10841, 0x104120C118816303, 0x52C14A8142413A01,  // 0x0000F5A8 
	0x108120C118811041, 0x1081108110412943, 0x2943084108410841, 0x0841108120C11881,  // 0x0000F5C8 
	0x1041108152815281, 0x3A013A0163030841, 0x1081290152815AC1, 0x52C142413A013A01,  // 0x0000F5E8 
	0x20C118C118C118C1, 0x0001000110411081, 0x1881000100010001, 0x0001000100010001,  // 0x0000F608 
	0x0001000100015281, 0x424142415AC10001, 0x0001084152816303, 0x6303424142413A01,  // 0x0000F628 
	0x2943294308410001, 0x00010001210118C1, 0x1881000100010001, 0x0841084108410841,  // 0x0000F648 
	0x0841084110410001, 0x5281528100010001, 0x0001084108415AC1, 0x5AC1424142413A01,  // 0x0000F668 
	0x0841004100010001, 0x0001188118811881, 0x1881188100010841, 0x0841188118811881,  // 0x0000F688 
	0x1881104110411881, 0x0801000100010001, 0x0001084108415281, 0x5281528152813A01,  // 0x0000F6A8 
	0x0001000100010841, 0x0841104100010841, 0x0001000100010841, 0x1081108110815281,  // 0x0000F6C8 
	0x5281528108410841, 0x1081000100010001, 0x0001084108411041, 0x42413A0142413A01,  // 0x0000F6E8 
	0x0001084118810841, 0x0841188100010001, 0x1081188100010841, 0x108110815AC15281,  // 0x0000F708 
	0x5AC152815AC11881, 0x20C1188108410001, 0x0001084110415281, 0x52813A0142413A01,  // 0x0000F728 
	0x0841084110410841, 0x0841084118810801, 0x1881084108410841, 0x1081108152815281,  // 0x0000F748 
	0x4241630352815281, 0x2901290110810841, 0x00015AC152815281, 0x5281424142413A01,  // 0x0000F768 
	0x0841188118C120C1, 0x42415AC142414241, 0x4241084108411081, 0x108110815AC15281,  // 0x0000F788 
	0x528152815AC15281, 0x2901290110810841, 0x63035AC152815AC1, 0x5AC1528142413A01,  // 0x0000F7A8 
	0x1081314118815281, 0x42413A0142415281, 0x42414241104120C1, 0x1881528163035281,  // 0x0000F7C8 
	0x528152815AC15281, 0x2901188108016303, 0x6B4352815B016303, 0x5AC15AC152813A01,  // 0x0000F7E8 
	0x20C1290118C15AC1, 0x3A013A013A013A01, 0x5281528110812901, 0x20C1528152815AC1,  // 0x0000F808 
	0x5AC15AC15AC10841, 0x104118C110416303, 0x63035AC173837B83, 0x73835AC152813A01,  // 0x0000F828 
	0x290120C118815281, 0x5AC1424142415281, 0x5AC1290129013981, 0x3141290152815281,  // 0x0000F848 
	0x5AC1290118C11081, 0x1881188100011041, 0x63036B43840383C3, 0x7383630342413A01,  // 0x0000F868 
	0x3141314110815281, 0x5AC1528152815AC1, 0x52812901294120C1, 0x2901314139832901,  // 0x0000F888 
	0x20C120C1108120C1, 0x0801000100011041, 0x63036B4384038403, 0x7BC363033A013A01,  // 0x0000F8A8 
	0x2941310129012901, 0x5281528152815281, 0x318120C129412901, 0x18811081290120C1,  // 0x0000F8C8 
	0x20C1290120C11881, 0x1841080120C16303, 0x6B43630373836B43, 0x6B435AC142413A01,  // 0x0000F8E8 
	0x2941290129012901, 0x28C1208120C11881, 0x0801080120C12901, 0x18C1188118811881,  // 0x0000F908 
	0x20C1188118812901, 0x63036303630352C1, 0x7383738352C352C3, 0x6B435AC142413A01,  // 0x0000F928 
	0x3143294363036303, 0x5AC120C120C11881, 0x104128C108011881, 0x31415B0163036B43,  // 0x0000F948 
	0x20C120C121015B01, 0x63036B4352C17383, 0x6B436B435B035B03, 0x52C363033A013A01,  // 0x0000F968 
	0x28C15AC163035AC1, 0x5281528129012941, 0x294120C1108120C1, 0x6303630363436303,  // 0x0000F988 
	0x5AC129035AC16303, 0x5B015B0152C152C1, 0x4A8152C163436343, 0x6B4352813A013A01,  // 0x0000F9A8 
	0x29015AC15AC15281, 0x6303528120C120C1, 0x20C11041188120C1, 0x63035B015B015AC1,  // 0x0000F9C8 
	0x5AC12101630152C1, 0x5AC16B43630352C1, 0x4A815B037BC36303, 0x6B435AC13A013A01,  // 0x0000F9E8 
	0x20C15AC15AC16303, 0x5281424118811081, 0x1881104108011081, 0x6303528152814A81,  // 0x0000FA08 
	0x424142414A816301, 0x63035AC17B837B83, 0x6B437B837B836B43, 0x6B435AC13A013A01,  // 0x0000FA28 
	0x184120C15AC15281, 0x5281294529436303, 0x5AC1188120C16303, 0x630352C15AC152C1,  // 0x0000FA48 
	0x42413A0152815AC1, 0x5AC152C163037BC3, 0x83C37B837B836B43, 0x7B8352813A013A01,  // 0x0000FA68 
	0x20C11881188118C1, 0x2901630363035AC1, 0x6303528118C36B43, 0x634363015B035B03,  // 0x0000FA88 
	0x5AC1424152815AC1, 0x3A417BC37BC36B43, 0x840383C383C38C05, 0x5281528142413A01,  // 0x0000FAA8 
	0x290163037B835281, 0x5AC15AC152815AC1, 0x5AC1630352817BC3, 0x73836B4363436343,  // 0x0000FAC8 
	0x63434A813A014241, 0x6B4383C373837BC3, 0x7383738373837B83, 0x6303424142413A01,  // 0x0000FAE8 
	0x6B4363035AC15281, 0x5281528152815AC1, 0x6B4363037B835B01, 0x73836B4363436303,  // 0x0000FB08 
	0x6303424142414A81, 0x6343738373837383, 0x7383738383C36303, 0x5AC1424152813A01,  // 0x0000FB28 
	0x63035B015AC16303, 0x5AC15AC14A817383, 0x7BC37BC37B836B43, 0x6B435AC163036343,  // 0x0000FB48 
	0x73834A4132014A81, 0x6303738373837383, 0x7383738384036303, 0x52C15AC142413A01,  // 0x0000FB68 
	0x5B015B015B015AC1, 0x5AC14A814A817383, 0x7B837BC37B836B43, 0x6B437BC36B436B43,  // 0x0000FB88 
	0x5AC352C14A8131C1, 0x4A817BC373837383, 0x6B4373837BC37BC3, 0x52C15AC13A013A01,  // 0x0000FBA8 
	0x5B015B015B015AC1, 0x5AC14A814A815281, 0x6B4373836B434A81, 0x3A013A414A815B03,  // 0x0000FBC8 
	0x42414A8152C16B43, 0x52C14A816B437383, 0x6B43738384056343, 0x6B4342413A013A01,  // 0x0000FBE8 
	0x52C15AC152C13A01, 0x5AC15AC14A813A41, 0x4A816B434A814A81, 0x42413A414A8152C1,  // 0x0000FC08 
	0x52C152C163036B43, 0x63034A8142416B43, 0x7BC37BC363436303, 0x5AC142413A013A01,  // 0x0000FC28 
	0x5281528142413A01, 0x3A01528152814241, 0x424129C13A014241, 0x4A8142414A814A81,  // 0x0000FC48 
	0x630352C15AC15281, 0x52813A013A013A01, 0x320152C152815281, 0x528142413A013A01,  // 0x0000FC68 
	0x528152813A013A01, 0x3A013A013A013A01, 0x29C129C129C129C1, 0x29C1424142415AC1,  // 0x0000FC88 
	0x5AC1528152814241, 0x3A0142413A013A01, 0x4241424152815281, 0x42413A013A013A01,  // 0x0000FCA8 
	0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01,  // 0x0000FCC8 
	0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01,  // 0x0000FCE8 
};

u64 _spot04_room_0_tex_0000FD08[] = 
{
	0x0001000100010001, 0x0001080100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000FD08 
	0x0001104100010001, 0x0001000100010841, 0x1081000110811041, 0x000120C3524C2944,  // 0x0000FD28 
	0x0001000100010001, 0x0001080100010001, 0x0001000100010001, 0x0001000108010801,  // 0x0000FD48 
	0x0841108108410001, 0x0001000100010841, 0x1041108118C11081, 0x08412945528E20C2,  // 0x0000FD68 
	0x1081080108011041, 0x0841084108410801, 0x0801000100010801, 0x108118C120C118C1,  // 0x0000FD88 
	0x20C1188118C118C1, 0x1881188120C120C1, 0x188120C120C120C1, 0x18C129056B1262D0,  // 0x0000FDA8 
	0x528E2903210320C1, 0x18C1188118811881, 0x188118C120C32103, 0x2903314539873987,  // 0x0000FDC8 
	0x3987398731452945, 0x2945314531873187, 0x3145294531453987, 0x294529455A8EA4E0,  // 0x0000FDE8 
	0x7354314531872945, 0x2103210329032903, 0x3145314731873187, 0x39C941C94A0B4A4D,  // 0x0000FE08 
	0x4A0B41C941C939C9, 0x39C941C9524D4A4D, 0x41C939C9420B528F, 0x4A0D41CB524E9CE0,  // 0x0000FE28 
	0x945C4A4C4A0D41CB, 0x39C941C941CB41CB, 0x41C9420B420B4A0D, 0x420B524D5A8F62D1,  // 0x0000FE48 
	0x62D1524F4A4D4A4D, 0x4A4D528F62D16B13, 0x62D14A4D5A8F6B55, 0x5AD15A8F62D0A4E0,  // 0x0000FE68 
	0x9C9E524C4A0B41CB, 0x41C941CB420B420B, 0x4A0D528F528F524F, 0x4A0D4A4D5AD16B13,  // 0x0000FE88 
	0x739762D1528F524D, 0x528F5AD173557B97, 0x6B555A8F5A8F7355, 0x5A8F524D7354A4E2,  // 0x0000FEA8 
	0xA4E04A0A420A41CB, 0x41C9420B4A4D524F, 0x5AD16B136B555AD1, 0x4A4D5AD163137397,  // 0x0000FEC8 
	0x8C1B63135A8F4A4D, 0x528F6B137BD983D9, 0x739762D1528F7355, 0x4A4D524C945CA4E0,  // 0x0000FEE8 
	0xB5AC739C398839C9, 0x41C9420B4A4D5A91, 0x63136B557B976B55, 0x528F63136B557B97,  // 0x0000FF08 
	0x945D73975AD1524D, 0x524D631383D9841B, 0x73575AD1528F7B97, 0x5A8F5AD09C9EA4E0,  // 0x0000FF28 
	0xB5AC84204A0A39C8, 0x41C9420B524F5AD1, 0x63136B557BD983DB, 0x5A9163136B557BD9,  // 0x0000FF48 
	0x8C5D8C1B6313524F, 0x4A4D6B1383D9841B, 0x73555AD1528F7BD9, 0x62D163129C9EAD22,  // 0x0000FF68 
	0xB5AC94A452944A0C, 0x39C9420B528F5AD1, 0x63136B5583D98C1B, 0x63135AD16B557BD9,  // 0x0000FF88 
	0x8C5D949F6B55528F, 0x524D63138C1B83D9, 0x7355528F528F7BD9, 0x5A8F62D0949EB564,  // 0x0000FFA8 
	0xB5ACA528739C4A0A, 0x420A4A0D528F62D1, 0x63136B5583D98C5D, 0x7397631363137397,  // 0x0000FFC8 
	0x841B9CA173575AD1, 0x4A4D5AD17BD9841B, 0x7357528F4A4D7B97, 0x5A8F5AD08C5CB564,  // 0x0000FFE8 
	0xB5ACB5AC94A46316, 0x4A4C4A4D5A8F62D3, 0x63136B557B998C1B, 0x8C1B6B555AD16B55,  // 0x00010008 
	0x841B949F841B6313, 0x4A4D4A4D6B558C5D, 0x7B97528F420B7BD9, 0x62D1524E83D8AD24,  // 0x00010028 
	0xB5ACB5ACA52894A4, 0x6312420A524F5A91, 0x63136B157397841B, 0x8C5D7BD95AD16B55,  // 0x00010048 
	0x7BD98C5D945D6313, 0x4A4F420B6313945D, 0x8C1B5AD1420D7BD9, 0x6B13524C6B549CE0,  // 0x00010068 
	0xB5ACB5ACB5ACA528, 0x7354420A420B524F, 0x5AD16B136B557BD9, 0x8C1B841B631362D1,  // 0x00010088 
	0x6B157B999C9F6B55, 0x528F41CB528F841B, 0x9C9F5AD14A4D7B97, 0x6B55528E62D083D8,  // 0x000100A8 
	0xAD22B5ACB5ACB5AC, 0x9CE662D239C8420B, 0x5A916B136B137397, 0x83D98C1D83D95A8F,  // 0x000100C8 
	0x5AD16B55945D841B, 0x62D139C94A4D7BD9, 0x9CE15A8F4A4D6B55, 0x73555A8F5AD07BD8,  // 0x000100E8 
	0xAD22B5ACB5ACB5AC, 0xB5AC945C39863186, 0x4A4D5A8F63136B55, 0x73977BD983DB6313,  // 0x00010108 
	0x528F5AD17B998C5D, 0x62D339C9420B7397, 0x9C9F5AD139C9528F, 0x841B62D163127B98,  // 0x00010128 
	0xAD22B5ACB5AAB5AA, 0xB5ACB5A852921040, 0x39C84A4D524F62D3, 0x6313735783DB7355,  // 0x00010148 
	0x4A4D4A4D62D1841B, 0x6B1539C939C95AD1, 0x949F6B13294539C9, 0x83D963136B547396,  // 0x00010168 
	0xB564B5ACB5ACB5AC, 0xB5ACB5AC94A46316, 0x3186318639C9524F, 0x5AD1528F73577BD9,  // 0x00010188 
	0x528F41CB528F7357, 0x73974A4D39C9528F, 0x8C5D739731472945, 0x7B9763136B127396,  // 0x000101A8 
	0xB5A8B5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0x8C5C39C83986420B, 0x524F528F5AD16B55,  // 0x000101C8 
	0x5A9141CB4A4D5AD1, 0x6B555AD1420B420B, 0x841B83D931872945, 0x6B555AD1528E6312,  // 0x000101E8 
	0xB564B5ACB5ACB5AC, 0xB5ACB5ACB5AAB5AC, 0xB5AA739862D2524E, 0x5A8F62D162D15AD1,  // 0x00010208 
	0x6B55420B420B524F, 0x62D16B13528F39C9, 0x735583D931472103, 0x5A8F4A4D4A4C5AD0,  // 0x00010228 
	0x945CB5AAB5ACB5AC, 0xB5ACB5ACB5AAB5AC, 0xB5ACA526841C7356, 0x5AD063136B556313,  // 0x00010248 
	0x62D3631339C9420B, 0x528F6B55528F39C9, 0x528F739739C92905, 0x41C94A4D420C4A4C,  // 0x00010268 
	0x7396B564B5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACA5268C1E, 0x73986B5473577BD9,  // 0x00010288 
	0x735563134A4D420B, 0x4A4D631362D139C9, 0x39C973555AD12945, 0x2905420B39C8420C,  // 0x000102A8 
	0x6312AD22B5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AA, 0x8C5E5AD2528F7B97,  // 0x000102C8 
	0x841B7BD96B155AD1, 0x4A4D524D6B13420B, 0x3147420B63132945, 0x318731873186420A,  // 0x000102E8 
	0x528EA4E0B5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0x8C625290420C5A91,  // 0x00010308 
	0x7BD98C1B8C1B83D9, 0x5AD1420B39C94A0D, 0x3187294539C939C9, 0x39C939C9318839C8,  // 0x00010328 
	0x4A4CB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5A85AD2420C524F,  // 0x00010348 
	0x73558C1B841B8C1B, 0x8C5D62D3420B4A4D, 0x4A4D21031881420B, 0x29453187528E3186,  // 0x00010368 
	0x5AD0B5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5A88C5C4A4E420C,  // 0x00010388 
	0x4A4D62D3739783D9, 0x8C1B8C1B73975A91, 0x4A4D2945108118C1, 0x29053147528E2946,  // 0x000103A8 
	0x8C1CB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xA52894A47BDC5290,  // 0x000103C8 
	0x41CA4A4D62D16B13, 0x7397841B83D97B99, 0x4A4D39C921031881, 0x2103210329452944,  // 0x000103E8 
	0x945EB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xAD6AA528B5AC8C62,  // 0x00010408 
	0x5AD0524E5A8F5A8F, 0x62D37397739783DB, 0x83DB39C9108118C1, 0x2105210331872986,  // 0x00010428 
	0xB564B5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010448 
	0xA5288C1C6312524F, 0x4A0B5AD16B156B13, 0x528F4A4D4A4D1081, 0x18C118C12945528E,  // 0x00010468 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010488 
	0xB5ACB5AC94A27B98, 0x528E4A4D4A4D528F, 0x420B39C9420D6313, 0x2987294529457396,  // 0x000104A8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x000104C8 
	0xB5ACB5ACB5ACAD66, 0x83D86B544A0C39C9, 0x39C9420B420D5291, 0x5AD321052944B5AC,  // 0x000104E8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010508 
	0xB5ACB5ACB5ACB5AC, 0xAD6A9CE6841E5290, 0x4A0A6B557355AD69, 0x9CE7841D7396AD6A,  // 0x00010528 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010548 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACAD6A8C62, 0x8C5EA522B565AD65, 0x8C1B73577357AD22,  // 0x00010568 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010588 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5AAB5AC, 0xB5ACAD66AD65949F, 0x524D39C9420BA526,  // 0x000105A8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x000105C8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5AAB5AC, 0xB5A8A4E28C5D528F, 0x18C3528F5291AD24,  // 0x000105E8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010608 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xA4E28C5C8C5D7B97, 0x420B39C941C9AD6A,  // 0x00010628 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010648 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACAD6A, 0xAD64A5227BD97355, 0x4A4D18C131878C1A,  // 0x00010668 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010688 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACAD6A, 0xAD68B5A6AD223187, 0x18C3000139C8AD64,  // 0x000106A8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x000106C8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xA5289CE48C5D524F, 0x3187084139C9A4E0,  // 0x000106E8 
	0xB5AAB5ACB5ACB5AC, 0xB5ACB5ACB5AAB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010708 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AA, 0x9CE67BDC6B55528F, 0x420B10814A4D83D8,  // 0x00010728 
	0xB5A8B5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010748 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACAD6A, 0x8C625AD04A4D6B55, 0x5AD131875AD16B14,  // 0x00010768 
	0xB5A6B5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010788 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5AC9CE6, 0x5AD641C862D17BD9, 0x5AD1420B62D16B54,  // 0x000107A8 
	0xB564B5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x000107C8 
	0xB5ACB5ACB5ACB5AC, 0xAD6AAD6AAD6A94A4, 0x39CE398783D97BD9, 0x420B5AD14A4D6312,  // 0x000107E8 
	0xAD64B5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010808 
	0xB5ACB5ACB5ACB5AC, 0xAD6AAD6AAD6A8C62, 0x420E524D8C5D83DB, 0x528F739739C96312,  // 0x00010828 
	0xAD24B5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010848 
	0xB5ACB5ACB5ACB5AC, 0xAD6AAD6AA5286B5A, 0x318A62D1A4E18C5D, 0x5A9183D929456312,  // 0x00010868 
	0xAD22B5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AA, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010888 
	0xB5ACB5ACB5ACB5AC, 0xB5ACAD6AAD6A4A52, 0x210873559C9F83DB, 0x63139C9F31876312,  // 0x000108A8 
	0xAD22B5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AA, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x000108C8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACAD6AAD6A4210, 0x318A8C5D945D7397, 0x9CE59CA139C96312,  // 0x000108E8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010908 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5AC318C, 0x29489C9F841B83DB, 0xA4E1841B318762D2,  // 0x00010928 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010948 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5AC294A, 0x2948A5237397B5A7, 0x9CE16313318962D2,  // 0x00010968 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010988 
	0xB5AAB5ACB5ACB5AC, 0xB5ACB5ACB5AC294A, 0x294A949F7397AD65, 0x83D94A4D39C96312,  // 0x000109A8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x000109C8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5AC318C, 0x2102841BAD659C9F, 0x7397420B39C96312,  // 0x000109E8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5AAB5AAB5AC, 0xB5ACB5AAB5AAB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010A08 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5AC5AD4, 0x524C8C1BAD69945F, 0x6B55318731876B54,  // 0x00010A28 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5AAB5AAB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010A48 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5AC7BDC, 0x7354A523A5238C5D, 0x6313294531877356,  // 0x00010A68 
	0xB5ACB5ACB5ACB5AA, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AA,  // 0x00010A88 
	0xB5AAB5ACB5ACB5AC, 0xB5ACB5ACB5AC8420, 0x83D8A5239CA18C1D, 0x5AD1290539C97BD8,  // 0x00010AA8 
	0xB5ACB5ACB5ACB5AA, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010AC8 
	0xB5ACB5ACB5ACB5AC, 0xB5AAB5AC9CE6739A, 0x6B139C9F949F841B, 0x528F29453989841A,  // 0x00010AE8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010B08 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5AC739C5AD0, 0x83DB8C5D8C5D7BD9, 0x4A0D318739C98C1A,  // 0x00010B28 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010B48 
	0xB5AAB5ACB5ACB5AC, 0xB5ACB5AC63186316, 0x945D841B841B7397, 0x420B420B4A4D8C1A,  // 0x00010B68 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5AAB5AA, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010B88 
	0xB5AAB5ACB5ACB5AC, 0xB5ACB5AC739C7356, 0x949F841B841B7357, 0x420B420B4A0D7BD8,  // 0x00010BA8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5AAB5AA, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010BC8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACA52863187396, 0x9CA1945F7BD97355, 0x4A4D4A4D4A4D841A,  // 0x00010BE8 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010C08 
	0xB5ACB5ACB5ACB5AC, 0xB5AC9CE663187BDE, 0x945F83D973977357, 0x5A915AD15AD19CE0,  // 0x00010C28 
	0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010C48 
	0xB5ACB5ACB5ACB5AC, 0xB5AC9CE67BDE8420, 0x8C5D6B5563136B55, 0x63135AD162D3AD22,  // 0x00010C68 
	0xB5AAB5A8B5A6AD22, 0xA4E0AD22AD22B564, 0xB5AAB5ACB5ACB5AC, 0xB5ACB5ACB5ACB5AC,  // 0x00010C88 
	0xB5ACB5ACB5ACB5AC, 0xB5ACA5289CE69CE6, 0x94A483D873557397, 0x7BD96B557B98B5A8,  // 0x00010CA8 
	0xAD64A4E0949E8C5C, 0x8C5C8C5C945C9CA0, 0xA4E0B5A8B5AAB5A8, 0xB5A8B5A8B5A8B5AC,  // 0x00010CC8 
	0xB5ACB5ACB5ACB5AC, 0xB5AAB5AAB5AAB5AA, 0xA528A5289CA0949E, 0xA4E0949EB5AAB5A8,  // 0x00010CE8 
};

u64 _spot04_room_0_tex_00010D08[] = 
{
	0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01,  // 0x00010D08 
	0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01, 0x3A013A013A013A01,  // 0x00010D28 
	0x4A854A854A854A85, 0x4A854A854A854A85, 0x4A854A854A850001, 0x0001000100414A85,  // 0x00010D48 
	0x4A854A8552C54283, 0x424142414A834A85, 0x4A854A854A854A85, 0x4A854A854A854A85,  // 0x00010D68 
	0x0081004100410041, 0x004100415B075B07, 0x5B07000100010001, 0x0001000100010001,  // 0x00010D88 
	0x0001000142834A85, 0x4A834AC55B075B07, 0x0001000108415B07, 0x5B07000100010081,  // 0x00010DA8 
	0x0001000100010001, 0x0001000100410041, 0x0001000100010001, 0x0001000100010001,  // 0x00010DC8 
	0x00010001000152C7, 0x52C752C552C70001, 0x0001000100010001, 0x0001000100010001,  // 0x00010DE8 
	0x0001104108010001, 0x0001000100410001, 0x0001000100010001, 0x0001000100010001,  // 0x00010E08 
	0x0001000100010041, 0x0041000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x00010E28 
	0x0001188108010001, 0x0001108300010041, 0x000110C100010001, 0x0081000100410001,  // 0x00010E48 
	0x0001000108410001, 0x0001000100010001, 0x0001004100010001, 0x0001008100011081,  // 0x00010E68 
	0x000128C110010001, 0x0001108108410001, 0x0001000100010001, 0x0001000108810001,  // 0x00010E88 
	0x0001088118C10841, 0x0001000100010001, 0x00010841084118C1, 0x0881004108810841,  // 0x00010EA8 
	0x0001314108010001, 0x0001000100010841, 0x0001000110C10001, 0x0001298529450001,  // 0x00010EC8 
	0x0001000118831881, 0x0001004100010001, 0x000110C1108118C1, 0x0841000111010001,  // 0x00010EE8 
	0x0000188008000000, 0x0000000008401903, 0x0001000110C10881, 0x0041214218C00001,  // 0x00010F08 
	0x0001000110801882, 0x1081088100010001, 0x0841210020C22143, 0x0881000021800880,  // 0x00010F28 
	0x0000080008000000, 0x0000084010804206, 0x1081004100002985, 0x2945000100010001,  // 0x00010F48 
	0x0001104018823188, 0x3A0918C129401901, 0x18C1214021023187, 0x18C1000032021100,  // 0x00010F68 
	0x0000208000001880, 0x0000084010C0420A, 0x2105000100003988, 0x2985000100010041,  // 0x00010F88 
	0x108120C218804A4E, 0x52CF004139843A09, 0x18C1294239C84A8D, 0x3187004042841980,  // 0x00010FA8 
	0x0000394000002900, 0x00001040190041CA, 0x3187000118405A8E, 0x318700415BD24A4D,  // 0x00010FC8 
	0x190120C218805250, 0x5AD100012100420B, 0x0001528C7B966311, 0x3A09084053062200,  // 0x00010FE8 
	0x0000310020C041C4, 0x08401880190041CC, 0x420B000120C4524E, 0x10C108416C965AD1,  // 0x00011008 
	0x210320C020C0420C, 0x4A8D00012942424B, 0x08816492438B438B, 0x3A0918C15B062180,  // 0x00011028 
	0x0000290049C26288, 0x108018C02100398C, 0x420B00011000420B, 0x0881000174D86313,  // 0x00011048 
	0x190120C0290041CC, 0x4A4D000131845AD1, 0x00014BCD1A833B48, 0x3A0919015B082940,  // 0x00011068 
	0x000020C049C2730C, 0x18C0290031844A50, 0x4A4D000118802985, 0x190110407D1A6353,  // 0x00011088 
	0x18C12900290039CA, 0x39C9000131845AD1, 0x00012AC51A412AC4, 0x31C7210352C82940,  // 0x000110A8 
	0x0840188041C283D0, 0x290041C041C65A94, 0x52CF000131C02143, 0x18C110407D186353,  // 0x000110C8 
	0x190139C231423186, 0x2143000131843A09, 0x18C11A4112404A02, 0x2143190152C82940,  // 0x000110E8 
	0x1080188020C08BD2, 0x290031423986420E, 0x52CF190131802103, 0x08810001851A6353,  // 0x00011108 
	0x18C122C52B073986, 0x18C1000129823187, 0x1901294029403140, 0x18C11241124018C0,  // 0x00011128 
	0x1080188000009414, 0x314018C02904398C, 0x5B112103000110C1, 0x08810881959E6353,  // 0x00011148 
	0x10C10A010A011A41, 0x1201088021402143, 0x190118C1210018C0, 0x18C1124112410840,  // 0x00011168 
	0x108010800000730C, 0x41C018C029043188, 0x5AD1190100013980, 0x10C12143AEA65B11,  // 0x00011188 
	0x18C101C001010101, 0x01C110C021403186, 0x214318C118800840, 0x18C118C14A461040,  // 0x000111A8 
	0x1080104000005246, 0x5A4220C052904BCD, 0x4BCD298500010881, 0x63426B4A959E4A4D,  // 0x000111C8 
	0x18C1298008810001, 0x014108802140634E, 0x31C718C108400000, 0x18C110C142041080,  // 0x000111E8 
	0x1040104000004184, 0x52004A08540F2283, 0x438B3B4810C110C1, 0x738A7BCE6412420B,  // 0x00011208 
	0x3185294018C11081, 0x108008802982638E, 0x3A0918C118800000, 0x18C1084121000840,  // 0x00011228 
	0x1040108008002902, 0x520252482AC52282, 0x438A3B4810C13140, 0x841243CD2B0722C5,  // 0x00011248 
	0x190110C139C23182, 0x210010804246638E, 0x39C918C120C018C1, 0x0881000100000000,  // 0x00011268 
	0x1880188008003144, 0x3940398220C02948, 0x62CE190100413982, 0x33092AC71A0309C0,  // 0x00011288 
	0x214319015246528A, 0x424818C24248428C, 0x39C918C120C010C1, 0x0001000100001080,  // 0x000112A8 
	0x18C018C010003986, 0x28C041C22102318A, 0x424B0841000139C4, 0x33071A4509835244,  // 0x000112C8 
	0x3187210322C53349, 0x438B31CA52CC31CC, 0x424B18C121001081, 0x00010000104018C0,  // 0x000112E8 
	0x18C020C020803146, 0x188039824A4A420E, 0x29450001000018C2, 0x120301800180630A,  // 0x00011308 
	0x420B18C10A000181, 0x09C122C54A88318C, 0x420B18C120C00000, 0x0000000021002100,  // 0x00011328 
	0x20C0210031002904, 0x08004A0473944A52, 0x1901084100000000, 0x2100528610805B0A,  // 0x00011348 
	0x424B18C1318001C0, 0x010001412982294A, 0x3A0918C121000800, 0x1040210029402100,  // 0x00011368 
	0x20C0290031001882, 0x1880528E949C4A8D, 0x10C1108100000000, 0x18C05AC85ACA630C,  // 0x00011388 
	0x420B18C139C239C2, 0x2940210031C42108, 0x424B18C1210018C0, 0x20C02100210018C0,  // 0x000113A8 
	0x18C0294031001040, 0x39887D9A5C510A01, 0x0001000000000840, 0x29488412AD585ACC,  // 0x000113C8 
	0x318710C142023A02, 0x318029424C0F4C0F, 0x3A091241124101C1, 0x10801900210018C0,  // 0x000113E8 
	0x20C02940290020C2, 0x5A8C3B4B09C100C1, 0x00010000000018C6, 0x529243CD33492283,  // 0x00011408 
	0x190110C118C139C0, 0x318029004BCD3B8B, 0x2945120101810041, 0x0081210029402100,  // 0x00011428 
	0x20C0290029002104, 0x6B0E124101000001, 0x088118C2108439CE, 0x43CD2B0700C10080,  // 0x00011448 
	0x5284190118C13180, 0x2940210029402144, 0x294518C101000000, 0x0081298229402100,  // 0x00011468 
	0x20C0290020C01880, 0x5244000000000041, 0x29453186210639CC, 0x2B07014100402100,  // 0x00011488 
	0x3A022143214339C4, 0x42083184294031C6, 0x420B294518C00880, 0x190039C4294020C0,  // 0x000114A8 
	0x20C0290020C01880, 0x5282000000002945, 0x4A8D41C620C21084, 0x0000000000002940,  // 0x000114C8 
	0x3182294533074BCD, 0x540F4C0F3184424A, 0x4A8D294529803180, 0x29803A06294018C0,  // 0x000114E8 
	0x18C020C018801080, 0x420018801082528D, 0x5C9312400A000840, 0x000018C0000018C0,  // 0x00011508 
	0x318429452B072B07, 0x2B0733492AC54A8A, 0x4A8D294529402980, 0x29C03A06294018C0,  // 0x00011528 
	0x18C020C010800840, 0x39C2318642103B4B, 0x1241018001C010C0, 0x10C110C000000000,  // 0x00011548 
	0x39864209108100C1, 0x00810141124152CC, 0x528F214329402980, 0x29C03A06214018C0,  // 0x00011568 
	0x18C018C010400840, 0x3182420843CD1203, 0x00C100010A0010C1, 0x10C110C000000000,  // 0x00011588 
	0x4A485AD121430840, 0x0100010001C1528C, 0x4A8D190119002140, 0x29C23A08190018C0,  // 0x000115A8 
	0x18C0188008400000, 0x298242082B070181, 0x0100084118C118C1, 0x18C0190010820000,  // 0x000115C8 
	0x5AC85B1121430000, 0x084018C018C039C6, 0x3A09124101410181, 0x1100318410C018C0,  // 0x000115E8 
	0x18C0188010400800, 0x2140294208000040, 0x088018C018C018C0, 0x2102298418C40800,  // 0x00011608 
	0x5A88528F19010840, 0x20C4318439824A48, 0x39C9124109810101, 0x00C1214210C029C0,  // 0x00011628 
	0x2100188018800840, 0x18C0294008001880, 0x73CA6B5418C018C0, 0x5ACA735239CC20C4,  // 0x00011648 
	0x4A46420B18C11880, 0x3188528E4A485A8C, 0x420B2103018000C0, 0x01413A0821003A82,  // 0x00011668 
	0x214018C018801040, 0x1080294010800840, 0x6B4A84143184528C, 0x64924BCD3B492AC5,  // 0x00011688 
	0x424B4A4D19012946, 0x5C935C5141C65248, 0x420B214319001080, 0x10804A8C21402A84,  // 0x000116A8 
	0x2180190018801080, 0x0000318021000000, 0x630A9CD852886C14, 0x4BCF2B091A8501C1,  // 0x000116C8 
	0x4A4D214329453B49, 0x33492AC51A412282, 0x31C7294518C118C0, 0x00404A8C21001A46,  // 0x000116E8 
	0x2182190018C01880, 0x0000318029000840, 0x5B4A64505410434D, 0x32CB224711C30180,  // 0x00011708 
	0x528F19014A4622C4, 0x120309C301C11200, 0x3187318718C118C0, 0x0840420A21001982,  // 0x00011728 
	0x2182210018C01880, 0x0000318029401080, 0x5C0E5C0E438C2247, 0x1143088101404A8C,  // 0x00011748 
	0x5B11214342040000, 0x01C0018001810A00, 0x524A420B18C118C0, 0x108039C8210010C0,  // 0x00011768 
	0x21002100210020C0, 0x0000318231801880, 0x5B8C4BCC4BCC3307, 0x01C0018022C47BD7,  // 0x00011788 
	0x424B21434A460000, 0x1080188020C23102, 0x62CA420B08811040, 0x084031C621421080,  // 0x000117A8 
	0x188020C029002100, 0x0000318439C01880, 0x2940630A52C65244, 0x314031407BD07395,  // 0x000117C8 
	0x3A0920C052860000, 0x188029006B1064D5, 0x4C0F4A4D00010000, 0x108239C829421040,  // 0x000117E8 
	0x188020C020C018C0, 0x000029423A0220C0, 0x2940420052424A02, 0x314039C083CA6B55,  // 0x00011808 
	0x29452944630C1880, 0x20C039844BCD3307, 0x540F4A8D000109C1, 0x1A85228521020840,  // 0x00011828 
	0x108018C018C01080, 0x000021003A0220C0, 0x31404A404A004200, 0x31404A006B066313,  // 0x00011848 
	0x438B4C0F3B8B2AC4, 0x22821A401A831240, 0x5A4C424B00411A82, 0x22C51A4112410840,  // 0x00011868 
	0x18C0188010800840, 0x0000188042022902, 0x314041C04A404A40, 0x29404A005A846353,  // 0x00011888 
	0x2B0722832AC53349, 0x3307228212401080, 0x4A0A39C900013140, 0x22C4124012411040,  // 0x000118A8 
	0x18C0108008400840, 0x0800084042043142, 0x2940314052825282, 0x31424A024A046313,  // 0x000118C8 
	0x10C101C001C11201, 0x1A411A4112401880, 0x41CA214300013140, 0x314218C010C01080,  // 0x000118E8 
	0x1880084008400840, 0x1080108042043982, 0x29404A0052824A42, 0x41C6524641C26311,  // 0x00011908 
	0x10C1108001800081, 0x00C109C112001880, 0x420A214300013940, 0x398018C0108018C0,  // 0x00011928 
	0x1080084008401080, 0x18C0108039C439C2, 0x3140630252C2534A, 0x534E62CC01C11A07,  // 0x00011948 
	0x004120C01A400100, 0x00C001C10A001880, 0x420A3187084149C0, 0x41C018C0108018C0,  // 0x00011968 
	0x0840000008401040, 0x18C008404A864A02, 0x39805AC273CA3B0B, 0x1A051A4100C11145,  // 0x00011988 
	0x084118C029041040, 0x0000000008401080, 0x4A0A420B10C13140, 0x3980210018C018C0,  // 0x000119A8 
	0x0000000000001040, 0x18C0000063065AC6, 0x6B8C6410330B1A05, 0x1183008101405B11,  // 0x000119C8 
	0x190118C118801080, 0x0000084008401080, 0x420A420B18C120C0, 0x31402940210018C0,  // 0x000119E8 
	0x10801040188018C0, 0x18C0084042066308, 0x634A3B0619C30941, 0x00C1008012405AD1,  // 0x00011A08 
	0x39C918C118801080, 0x0840084010801080, 0x41C8318718C118C0, 0x2900294031802900,  // 0x00011A28 
	0x20C020C029002900, 0x188018C029466B48, 0x4282324212010080, 0x00C00A0029004A08,  // 0x00011A48 
	0x39C718C118C00840, 0x08401080188020C2, 0x4A0A214318C118C0, 0x21024A4652863982,  // 0x00011A68 
	0x2900290029002900, 0x108018C020C25AC6, 0x5AC45AC452822100, 0x20C03140290041C6,  // 0x00011A88 
	0x318718C118C11040, 0x0840188018C062D0, 0x33090A0110832102, 0x39C66B4E630A3180,  // 0x00011AA8 
	0x3140314029002100, 0x108020C018803184, 0x62C87BC86B463140, 0x3980314041C25248,  // 0x00011AC8 
	0x4A0618C118C11080, 0x108018C031842B07, 0x1203010108432987, 0x528A738E52883140,  // 0x00011AE8 
	0x29002900210018C0, 0x108018C0294020C2, 0x39C442044A443140, 0x3980524A73506B0E,  // 0x00011B08 
	0x5ACA2143108118C0, 0x18C020C031420A01, 0x0100000110852149, 0x330D2AC931822940,  // 0x00011B28 
	0x20C018C018C01080, 0x104018C039C20840, 0x1080108020C03140, 0x39C873967C195B11,  // 0x00011B48 
	0x7B8E31C710C118C0, 0x29003100290018C0, 0x1040188019051A46, 0x19C70983104018C0,  // 0x00011B68 
	0x3140314039803140, 0x29002100318018C0, 0x18C029404A004A02, 0x4A8C6B9529856B0E,  // 0x00011B88 
	0x9C9639C910810880, 0x3140398031802940, 0x31804A0052821A42, 0x0180014101412900,  // 0x00011BA8 
	0x42004A0052405240, 0x41C0290029402940, 0x210041C06B025A82, 0x31C64A4D18C17BD8,  // 0x00011BC8 
	0x7397318718C10880, 0x41C041C039C03980, 0x4A0062C06B006300, 0x5240018001814A00,  // 0x00011BE8 
	0x3980398039803980, 0x31402100290020C0, 0x18C0294041C03180, 0x2102298539C9528F,  // 0x00011C08 
	0x4A4D214318C018C0, 0x3140314029002100, 0x314041C042004200, 0x42003180318039C0,  // 0x00011C28 
	0x2900290029002900, 0x20C020C029001880, 0x1080188018801080, 0x1080190021032985,  // 0x00011C48 
	0x214310C018C018C0, 0x20C0188010801080, 0x188020C029002900, 0x3140294021002140,  // 0x00011C68 
	0x290020C018801880, 0x18C0210029401940, 0x194010C010400840, 0x0840084018C01900,  // 0x00011C88 
	0x2102190020C02900, 0x20C0188018801880, 0x18801880188020C0, 0x20C020C010C018C0,  // 0x00011CA8 
	0x310020C010401040, 0x1880210029802240, 0x1A40110008400800, 0x0800084000000000,  // 0x00011CC8 
	0x08401080188020C0, 0x20C01880188020C0, 0x1880104010401840, 0x1880104000001040,  // 0x00011CE8 
};

u64 _spot04_room_0_tex_00011D08[] = 
{
	0x639B270000000000, 0x0027000000000000, 0x9FA800000B0B0B27, 0x2700000000000000,  // 0x00011D08 
	0x8B0B00000B0B0B27, 0x0000000000000000, 0x070E0000160B0B27, 0x0000000000000000,  // 0x00011D28 
	0x330E000000160B27, 0x0000000000000000, 0x70CA3E00000B0B0B, 0x0B00000000000000,  // 0x00011D48 
	0x70910F00061669D2, 0x0B000B0000000000, 0x123B040600009B69, 0x69D2D20000000000,  // 0x00011D68 
	0x701B0442000B3669, 0x69D2D20000000000, 0x1B1B040A00000669, 0x69D2D22700000000,  // 0x00011D88 
	0x1B3C25001F000669, 0x6969D22700000000, 0x3B1101BB3E000636, 0x1669D22700000000,  // 0x00011DA8 
	0x553A07080A27039B, 0x0B16D22700000000, 0x3131A33F0D00009B, 0x0BD2D22700000000,  // 0x00011DC8 
	0x0F706C0700220003, 0x00000B0B00000000, 0x11702B613F060006, 0xD2000B0B00000000,  // 0x00011DE8 
	0x13762B7561050000, 0x6900000B0B000000, 0x380413112E050000, 0x0000000B0B000000,  // 0x00011E08 
	0x38B0046312250000, 0x0000000B0B000000, 0x04682E0232840600, 0x0000000027000000,  // 0x00011E28 
	0x12689407D3630E00, 0x003600000B000000, 0x1268AC4384250600, 0x00000B0027000000,  // 0x00011E48 
	0x12758B8B15840500, 0x000016000B000000, 0x0475AC62047F3F16, 0x000016000B000000,  // 0x00011E68 
	0x526E528C8C091A4F, 0x0000000000000000, 0x8F21318C65171420, 0x0000000000002700,  // 0x00011E88 
	0xA43A43120917CECD, 0x030000D200000000, 0x52B66846072424CD, 0x42000000000B0000,  // 0x00011EA8 
	0x4C083B043A096015, 0x0B00000000000B00, 0x4C3B12043165947C, 0x0727000000000000,  // 0x00011EC8 
	0x7011763B0904212E, 0x150B000000000000, 0x62210F3804B00875, 0x3A0E0B0000000000,  // 0x00011EE8 
};

u64 _spot04_room_0_tex_00011F08[] = 
{
	0x1181118111811181, 0x1181118111811181, 0x1181118111811181, 0x1181118111811181,  // 0x00011F08 
	0x118111C119C11A41, 0x1A811A411A0111C1, 0x11C1118111811181, 0x118111C111C11201,  // 0x00011F28 
	0x1201120112011241, 0x1241120112011201, 0x11C11181118111C1, 0x118111C112011241,  // 0x00011F48 
	0x12411241120111C1, 0x11C1118111811181, 0x1181118111811181, 0x1181118111811181,  // 0x00011F68 
	0x0001000100011181, 0x1181118111810101, 0x0101000108410041, 0x0841000100010001,  // 0x00011F88 
	0x0001118119C10981, 0x1181094109410101, 0x0941080100010001, 0x0001000100411241,  // 0x00011FA8 
	0x124111C1118111C1, 0x118111C112011201, 0x11C1000111810001, 0x0001118111811181,  // 0x00011FC8 
	0x1181118111810001, 0x0001080100010801, 0x0001000108010841, 0x0801000100010001,  // 0x00011FE8 
	0x1081110100410001, 0x1181118101010941, 0x0001184108811081, 0x18C1080108410841,  // 0x00012008 
	0x0001000100010001, 0x1181118109410001, 0x0001104100010001, 0x0001080108010801,  // 0x00012028 
	0x0041120111C11181, 0x11C111C111C10001, 0x0001080100010841, 0x0001100100011181,  // 0x00012048 
	0x1181000100410001, 0x0041000100010001, 0x0001000108010841, 0x1881084100010001,  // 0x00012068 
	0x00004B8119410001, 0x0001000100011041, 0x0801080110411080, 0x210118C120C11881,  // 0x00012088 
	0x1081188118810841, 0x0001084110010001, 0x20C3188318830800, 0x0800080008010001,  // 0x000120A8 
	0x0001000100001082, 0x1082108218850001, 0x1043084108430841, 0x0881104110410001,  // 0x000120C8 
	0x0001000100010001, 0x0000000000010001, 0x0001080110013980, 0x3141104100010001,  // 0x000120E8 
	0x1100644032030001, 0x0881080129000801, 0x08411041188018C0, 0x2141318118C11080,  // 0x00012108 
	0x1041188129013981, 0x2941104131010801, 0x1041104118832905, 0x1882104010400841,  // 0x00012128 
	0x1041188210402144, 0x41CA314931491001, 0x1000100110411041, 0x0001104010411941,  // 0x00012148 
	0x2141108108410001, 0x0841104100010801, 0x0001100108011001, 0x080128C100010000,  // 0x00012168 
	0x22005BC053070041, 0x084120C110800001, 0x0001080118C01080, 0x2101298118C11080,  // 0x00012188 
	0x104118C1210018C1, 0x31C1084120811881, 0x1040084118812903, 0x20C318C118C01881,  // 0x000121A8 
	0x2945420C3ACB428B, 0x2945290320C120C0, 0x20C0208110411041, 0x088139C1318110C1,  // 0x000121C8 
	0x1041084119001881, 0x1041000100010801, 0x2900000100011001, 0x3941108100010000,  // 0x000121E8 
	0x29404AC05B090841, 0x10C1210110812901, 0x0801000118C00801, 0x1081108110810000,  // 0x00012208 
	0x108118C120C02100, 0x31C1214110811041, 0x1041104129012900, 0x20C0210120C12903,  // 0x00012228 
	0x290318C132872A05, 0x20C1294029422900, 0x20C01881104139C1, 0x424141C718830001,  // 0x00012248 
	0x0801084121002901, 0x18C01081108120C1, 0x6288184149C34183, 0x2901108100010840,  // 0x00012268 
	0x294031C052C91901, 0x2101210129413981, 0x41C1420129412101, 0x1081084110812100,  // 0x00012288 
	0x188110C121002140, 0x29812943108118C1, 0x18C118C129412940, 0x3180290029002101,  // 0x000122A8 
	0x210121003AC92183, 0x2900314231422902, 0x20C018804A815281, 0x3145188100010001,  // 0x000122C8 
	0x00010841290041C1, 0x3980290129012901, 0x83D16ACB41C32901, 0x1881000008410880,  // 0x000122E8 
	0x0840188052892983, 0x2101210121001881, 0x18C118C1210139C1, 0x3A01424321402140,  // 0x00012308 
	0x0001008121402140, 0x2141190118C12100, 0x21002901318139C1, 0x3180318029402941,  // 0x00012328 
	0x294129403AC92181, 0x3182398231423982, 0x4A425281318120C1, 0x31412101104118C3,  // 0x00012348 
	0x0801108118801881, 0x188020C131415A87, 0x9415418100011841, 0x18810800108110C0,  // 0x00012368 
	0x108020C0424539C5, 0x2101210008400840, 0x0001210008401041, 0x2101420952C94247,  // 0x00012388 
	0x4247088121402140, 0x190110C121002940, 0x3140314029412101, 0x298139C031803182,  // 0x000123A8 
	0x318331802A472181, 0x5242528263425AC4, 0x39C3314129013183, 0x2940290021012945,  // 0x000123C8 
	0x0841108110801881, 0x20C031415A42838F, 0x52473100000120C1, 0x10411040108110C0,  // 0x000123E8 
	0x20C0314031804207, 0x2941210010801080, 0x0841290020C00001, 0x004110C129814247,  // 0x00012408 
	0x424742473A062980, 0x1081108121002100, 0x3140318039802101, 0x210139C14A4039C2,  // 0x00012428 
	0x398339C221C32141, 0x4A424200528539C5, 0x31413143318218C1, 0x108018C0290141C9,  // 0x00012448 
	0x0841108120C02900, 0x39804A0349C13101, 0x2903290108014A01, 0x1081104018C11900,  // 0x00012468 
	0x18C04180314039C5, 0x2101210021002900, 0x1081294021001081, 0x18C110C129802980,  // 0x00012488 
	0x004132033A074A49, 0x0841088131802940, 0x2940318039804202, 0x4201214142415AC2,  // 0x000124A8 
	0x4A024A42194118C1, 0x2940398339C53143, 0x3142290010800881, 0x08401080318239C7,  // 0x000124C8 
	0x084118C121003140, 0x41C2394128C12080, 0x398720C110015B01, 0x18C1104018C118C0,  // 0x000124E8 
	0x21002900294039C5, 0x2941214021002940, 0x18C1298021002941, 0x29812981218029C0,  // 0x00012508 
	0x00010001294131C3, 0x4207108139C039C2, 0x39C2318039C239C2, 0x4A4231C121013181,  // 0x00012528 
	0x3180210018C33187, 0x5A89318321010880, 0x0840080000002981, 0x108020C0318239C7,  // 0x00012548 
	0x0001210121002940, 0x3141000108001880, 0x2905104131005281, 0x2101108020C12100,  // 0x00012568 
	0x20C018C0294039C5, 0x2983214029402980, 0x190129C021002940, 0x2941294129402980,  // 0x00012588 
	0x0841004129402941, 0x2941318139C139C1, 0x3A02420242024A42, 0x5282420021011081,  // 0x000125A8 
	0x2983738B738B5AC5, 0x3A03210108400840, 0x0000000000003201, 0x0840108031823185,  // 0x000125C8 
	0x0841210029402901, 0x00010000188020C1, 0x10410001310052C1, 0x2941188018C11900,  // 0x000125E8 
	0x21002900294039C5, 0x31852140294029C0, 0x2981298029402940, 0x2981298129402980,  // 0x00012608 
	0x10C118C121002100, 0x2101290129413181, 0x318139C33A034203, 0x4203528552856309,  // 0x00012628 
	0x6B8B4A83318118C1, 0x0840084008400840, 0x00000000000029C1, 0x1080210031822103,  // 0x00012648 
	0x1081210031410841, 0x1040188031402901, 0x10811081290052C1, 0x2901188020C02100,  // 0x00012668 
	0x18C020C0294031C5, 0x3A072140298029C0, 0x3181318029802980, 0x2981294129402180,  // 0x00012688 
	0x19012941210018C0, 0x20C0104129002101, 0x210118C108412101, 0x2101294129412941,  // 0x000126A8 
	0x2941210100000001, 0x1080084000000000, 0x0000084010804A81, 0x2900314031401041,  // 0x000126C8 
	0x0843420510410000, 0x080039C052823181, 0x1881108020C04AC1, 0x290120C020C02100,  // 0x000126E8 
	0x18C018C029403183, 0x3A09214029C029C0, 0x2981298029402140, 0x2141214121002140,  // 0x00012708 
	0x2101294129402940, 0x2100084118C02900, 0x3140188118C13140, 0x3180318020C01081,  // 0x00012728 
	0x0001000100010841, 0x294018C008400840, 0x108018C020C052C1, 0x3140318018801041,  // 0x00012748 
	0x2107420500011040, 0x18C039C031811081, 0x0841000010802941, 0x20C120C018C01900,  // 0x00012768 
	0x2100294029402983, 0x4A8D214029C22980, 0x210018C021002140, 0x2141214129002140,  // 0x00012788 
	0x2941294129403140, 0x2100108108400000, 0x0000290021013140, 0x3140314039803141,  // 0x000127A8 
	0x0001000108411081, 0x294039C018801080, 0x20C0290020C04240, 0x2900318218C05ACF,  // 0x000127C8 
	0x524B210110801080, 0x210039C029410841, 0x0001084008402140, 0x188018C018C018C0,  // 0x000127E8 
	0x3A82324221402943, 0x4A8D210021402100, 0x2100188021002100, 0x2141294131402940,  // 0x00012808 
	0x29403141294018C0, 0x18C020C110801080, 0x1080210031412940, 0x2940210031803143,  // 0x00012828 
	0x0801104108410841, 0x29013A0031C02940, 0x18C018C018C02940, 0x6B54739273CB4207,  // 0x00012848 
	0x18810000080018C0, 0x294031C118C10801, 0x0841108018802980, 0x188018C021002940,  // 0x00012868 
	0x1A46224421002101, 0x4A8D190000400040, 0x18C018C021002100, 0x2141294131803140,  // 0x00012888 
	0x3140314121001080, 0x1040108108400840, 0x0840188039C320C0, 0x210020C029003143,  // 0x000128A8 
	0x210018C131411081, 0x108129413A002980, 0x2100294239C27392, 0x949694D5630B0801,  // 0x000128C8 
	0x000120C021003180, 0x3180214100010840, 0x10811080188020C0, 0x19001900218029C2,  // 0x000128E8 
	0x10C0110021001901, 0x39C9190010800840, 0x18C0290021002100, 0x2941294029003140,  // 0x00012908 
	0x290020C018C01880, 0x1880108008400840, 0x00001880424520C0, 0x20C0188021003183,  // 0x00012928 
	0x20C0314152413181, 0x2100210129013141, 0x39C052825AC68C51, 0x9CD3738D29400001,  // 0x00012948 
	0x10813140294039C0, 0x3180294500010840, 0x1881104018C02142, 0x21002140218229C2,  // 0x00012968 
	0x1040084021001900, 0x294518C008400840, 0x18C0210021002940, 0x2941294041803980,  // 0x00012988 
	0x2900188020C02900, 0x290028C018800840, 0x0000108052871880, 0x18C018C0290039C3,  // 0x000129A8 
	0x20C0314062C16B41, 0x3140290031403983, 0x524563095A8573CB, 0x39C0318029402907,  // 0x000129C8 
	0x1881314039C039C2, 0x31850841000118C0, 0x2101294029002900, 0x20C018C018801080,  // 0x000129E8 
	0x0840000018C018C0, 0x210318C010801880, 0x20C0294029402940, 0x2941314028C00800,  // 0x00012A08 
	0x1040188020C020C0, 0x2900310031003100, 0x20C010805ACB39C6, 0x18C0188018C03183,  // 0x00012A28 
	0x20C0290052417381, 0x4A013140314039C0, 0x420042004A004A40, 0x4A4041C031403989,  // 0x00012A48 
	0x20C131803A0239C4, 0x2101000100000840, 0x1081108018C018C0, 0x18C018C010801040,  // 0x00012A68 
	0x1080084010C010C0, 0x18C118C029003140, 0x3980314029403140, 0x31402940108020C0,  // 0x00012A88 
	0x18801080188018C0, 0x20C0290031404140, 0x394010805ACD2942, 0x188018C029003A03,  // 0x00012AA8 
	0x20C0314039807341, 0x41C1314129403980, 0x52826342528241C0, 0x31403180294041CB,  // 0x00012AC8 
	0x314339C042043185, 0x0841080108000840, 0x0841084008400840, 0x108018C018C02100,  // 0x00012AE8 
	0x18C018C010801080, 0x18C020C041C05240, 0x49C0398031403140, 0x2940210018C018C0,  // 0x00012B08 
	0x1880108010400840, 0x108018C018C018C0, 0x2900108031441080, 0x188020C021004205,  // 0x00012B28 
	0x20C0398029006301, 0x3141290129013142, 0x42024A4252C25AC2, 0x63027BC231403182,  // 0x00012B48 
	0x39C34A4439C45287, 0x1081104018C01080, 0x1081108008400840, 0x08400840108018C0,  // 0x00012B68 
	0x18C0210021002100, 0x2940314031402940, 0x20C0210029402900, 0x210020C018C01080,  // 0x00012B88 
	0x1080108008400840, 0x0840084008400840, 0x1880188018801880, 0x20C0290021005AC7,  // 0x00012BA8 
	0x2900290029005281, 0x3140314129013141, 0x4A04420252824A42, 0x52C24A4242024202,  // 0x00012BC8 
	0x52845284630739C7, 0x0001210018C020C0, 0x1041084000000000, 0x0000000000000840,  // 0x00012BE8 
	0x3140318039C041C0, 0x3180210018C018C0, 0x18C020C020C020C0, 0x20C0290020C018C0,  // 0x00012C08 
	0x18801080188018C0, 0x1080084008400840, 0x084020C020C020C0, 0x28C021002900630B,  // 0x00012C28 
	0x2900210021005AC1, 0x3140314029013141, 0x630D734F5AC65282, 0x4A424A425A846307,  // 0x00012C48 
	0x7BCD5ACB29470001, 0x18C01080188020C0, 0x29003140290020C0, 0x20C018C020C02900,  // 0x00012C68 
	0x29402940318039C0, 0x3180318029402100, 0x18C0108010801040, 0x188020C020C02900,  // 0x00012C88 
	0x20C018C020C02900, 0x18C0108010801080, 0x1080188020C020C0, 0x290029002940738B,  // 0x00012CA8 
	0x2940398031404A81, 0x3140314039803981, 0x41C34A057BCB8C8B, 0x7BC96B4962C96309,  // 0x00012CC8 
	0x3185084118812100, 0x20C01080108020C0, 0x2100290029003140, 0x3140314031403140,  // 0x00012CE8 
	0x2100210021002900, 0x2900294029402940, 0x2940318029402100, 0x2900294029002900,  // 0x00012D08 
	0x2900210029003940, 0x3100290029002900, 0x290020C029003140, 0x4180418039C06305,  // 0x00012D28 
	0x31402100210031C1, 0x2900314039403940, 0x2900290120C131C1, 0x1081084110810841,  // 0x00012D48 
	0x0841318039C22900, 0x18C0108010401040, 0x108018C018C020C0, 0x18C018C020C02100,  // 0x00012D68 
	0x52805A8052805240, 0x52405A805A8062C0, 0x62C062C063006B00, 0x62C05A804A003980,  // 0x00012D88 
	0x3980318039C04A00, 0x41C041C041C04A00, 0x4A00524052405A80, 0x6280524041C03980,  // 0x00012DA8 
	0x3140294031804A40, 0x41C03980398041C0, 0x524062C062C04A41, 0x41C0318021002940,  // 0x00012DC8 
	0x2940290029402100, 0x2900314041C04A40, 0x5240524052405240, 0x4A0039C04A005280,  // 0x00012DE8 
	0x2140210021402940, 0x2940314031403140, 0x2900290029002900, 0x20C018C018801080,  // 0x00012E08 
	0x1080108010801080, 0x188018C020C02900, 0x29003140290018C0, 0x1880108008400840,  // 0x00012E28 
	0x0000000008000840, 0x0840108010801080, 0x10801080188039C1, 0x1880108010801080,  // 0x00012E48 
	0x1880290029002900, 0x20C018C020C02900, 0x2900290029002900, 0x2900290029002940,  // 0x00012E68 
	0x1040000000000840, 0x1040184018802080, 0x1840100010401040, 0x10401040188018C0,  // 0x00012E88 
	0x20C020C018801880, 0x188018C020C02900, 0x20C020C018801080, 0x1080108008400840,  // 0x00012EA8 
	0x0000000000000840, 0x0840084008000800, 0x0800080008400880, 0x110011C01A402AC0,  // 0x00012EC8 
	0x22402A0029802140, 0x2100210018801040, 0x1040104010401040, 0x20C03940310020C0,  // 0x00012EE8 
};

u64 _spot04_room_0_tex_00012F08[] = 
{
	0x814A451F1F8A3E81, 0x4A451FC81F358A3E, 0x814A451F1F8A3E81, 0x4A451FC81F358A3E,  // 0x00012F08 
	0x064E00356B22004E, 0x814E0035352A4E4E, 0x8A6B0D270D67001F, 0xD70A00678177BB6D,  // 0x00012F28 
	0x00000000000000BE, 0x004E0027D74E2A22, 0x000D272716674E67, 0xBE270B27060B0600,  // 0x00012F48 
	0x0B0027160B000027, 0x00000B160027270B, 0x0B160B16160B0B0B, 0x0B270000000B0B00,  // 0x00012F68 
	0x1606060D060D060B, 0x1669690B0B0B6906, 0x0B06060606060616, 0x1606696969166969,  // 0x00012F88 
	0x0D060D440D160D44, 0x9B36360A0D0A420A, 0x0D440A060D0D0A0A, 0x0A44449B36060669,  // 0x00012FA8 
	0x0A449B442A160D0A, 0x06060B0A440D2A0D, 0x0A0616169B0A0A44, 0x444442440D06440A,  // 0x00012FC8 
	0x42422A0A0D0B060D, 0x060B164442440D06, 0x0B0A1616440A0A0A, 0x060B0A9B160A4242,  // 0x00012FE8 
	0x0A4222229B060606, 0x0D0D0A4442420A06, 0x062A06060A0A0606, 0x060D4D420D42420A,  // 0x00013008 
	0x2A42420A0B0B0D0A, 0x0A0A0A2A4D42420D, 0x0D440A060A0A0A0D, 0x2A44414D0A0D0D2A,  // 0x00013028 
	0x0E0E220E0A2A0D22, 0x0E162A05410A220A, 0x160A0E2222060D0D, 0x2A220E412A060D9D,  // 0x00013048 
	0x050E0E0E0D060E0E, 0x050A0E0E0E0E222A, 0x420D0D220E2A220D, 0x060E0522220A220E,  // 0x00013068 
	0x05052D412A0E050E, 0x41412A2241220E22, 0x0E05410141229D0A, 0x03220E030A062205,  // 0x00013088 
	0x011402676DB105B1, 0xBE016D6D014E6DBB, 0x4E0D024B0567810E, 0x056D2DB1052A0614,  // 0x000130A8 
	0x056D6706B1670067, 0x22220B060D3EA56D, 0x4EBB6B0A16B16D28, 0x45C6350B22282801,  // 0x000130C8 
	0xC81F358A3E814A45, 0x1F1F8A3E814A451F, 0xC81F358A3E814A45, 0x1F1F8A3E814A451F,  // 0x000130E8 
};

u64 _spot04_room_0_tex_00013108[] = 
{
	0xC81F358A3E814A45, 0x1F1F8A3E814A451F, 0xC81F358A3E814A45, 0x1F1F8A3E814A451F,  // 0x00013108 
	0x024E006D6D22004E, 0x814E00226B2A4E4E, 0x6D2845C635670028, 0x280A01678177016D,  // 0x00013128 
	0x14014B072D0E1471, 0x0C4E016FD74E0222, 0x054B070205674E67, 0xBE01011402070505,  // 0x00013148 
	0x020718020522052D, 0x074B01050C18156F, 0x150C0107050E4B14, 0x2D017171140E9D05,  // 0x00013168 
	0x0718070714140207, 0x14026F02CC4F1871, 0x07026F0541010114, 0x0207151514010105,  // 0x00013188 
	0x4F4FD34F4F159C18, 0x0202074F7C18180C, 0x012D076F07020102, 0x71187C1814050514,  // 0x000131A8 
	0x1834348D7CD34F15, 0x714B02CC8D7C1807, 0x0707151871024B02, 0x02187C1807012D07,  // 0x000131C8 
	0x15183407024F3407, 0x01016F51180C0105, 0x0502070215150114, 0x074F9C9C15070218,  // 0x000131E8 
	0x159C1807159C1502, 0x02010C7C7C710122, 0x410502159C8D0201, 0x189C7C8D186F0515,  // 0x00013208 
	0x2D078DD3CC710707, 0x15156F020102024D, 0x2201517C347C0105, 0x01076F02154B054B,  // 0x00013228 
	0x01147115022D052D, 0x0202050D064D534D, 0x2D4B0702024B020E, 0x22220E0715075353,  // 0x00013248 
	0x9B4241030E2A0D0A, 0x229D2A0606060D44, 0x4D0E220D2A220306, 0x0A0A0E4D6301409B,  // 0x00013268 
	0x00060D160B0B0B06, 0x16060B0016160000, 0x00160B0B0000160B, 0x160016000B060000,  // 0x00013288 
	0x000000676DB100B1, 0xBE006D6D004E6DBB, 0x4E0D000067678100, 0x006DBEB105BE0600,  // 0x000132A8 
	0x6B6D6706B12845C6, 0x35220B28283EA56D, 0x4EBB2A6B16B16D9F, 0x2845C635221F2828,  // 0x000132C8 
	0x451F1F8A3E814A45, 0x1FC81F358A3E814A, 0x451F1F8A3E814A45, 0x1FC81F358A3E814A,  // 0x000132E8 
};

u64 _spot04_room_0_tex_00013308[] = 
{
	0xDE12DE12DE12DE12, 0x9482530032401981, 0x19812A0032005300, 0xDE12DE12DE12DE12,  // 0x00013308 
	0xDE12DE12DE12BD48, 0x94C4844374032A41, 0x2A418C878CC78442, 0xAD46D5D0DE12DE12,  // 0x00013328 
	0xDE12DE12DE12BD8C, 0xBDCDB58B8C875341, 0x5341AD8DB58F9D0B, 0x9D489482CDCEDE12,  // 0x00013348 
	0xDE12DE12BD8CD651, 0xCE11B58FA54B5B81, 0x5B81B58FCE11CE53, 0xC611C610C5CEDE12,  // 0x00013368 
	0xDE12DE14DE54EED9, 0xDE97C611A5495B81, 0x5B81C60DCE11D695, 0xDE97DE56E656DE12,  // 0x00013388 
	0xDE12E656EED8DE97, 0xDE55D653C60F7403, 0x74038485CE11CE11, 0xE697EED8EEDADE12,  // 0x000133A8 
	0xDE12EE96E695F71F, 0xF71FCE118CC75381, 0x5381AD4DBDCDBDCD, 0xE6D5F759F718DE12,  // 0x000133C8 
	0xDE12E6D4E695FF65, 0xFFA7A549C61163C1, 0x63C1D657AD4BEEDD, 0xE6DBF71FF71AEE58,  // 0x000133E8 
	0xDE12E694EF1BFFEB, 0xFFABDE97DED77443, 0x7443EF1FEF1FD657, 0xF721FFE9FF60FF5E,  // 0x00013408 
	0xDE12E6D4EF1BFFA9, 0xCE53DE97BDCF8CC7, 0x8CC7D695EF1FEF1F, 0xEEDDEF1DEF1AF718,  // 0x00013428 
	0xE694EED7DE93DE93, 0xCE4FD653B58F7C41, 0x7C419505D691E715, 0xEF17F759F759F716,  // 0x00013448 
	0xF716E6D5DE91CE4F, 0xDE53D6518CC35BC1, 0x5BC1B5D19D4BAD8D, 0xF757EF55EF53E6CE,  // 0x00013468 
	0xF75ADE93DE93E695, 0xE6979D07AD477445, 0x7445BDCFDE97D653, 0xBDCDD651DE91DECE,  // 0x00013488 
	0xE6D2D651D64FB589, 0xAD49AD4BB58B6C01, 0x6C01B58DB58FCE0F, 0xCE0FD651D64DD68C,  // 0x000134A8 
	0xD64EB58BB549BD8D, 0xB54BB54DAD497401, 0x7401BDCDC60DA507, 0xC5CDB58BA503AD84,  // 0x000134C8 
	0xB58CB54BAD49AD4B, 0x9D07A50B8C854B01, 0x4B018441B58BAD47, 0xAD479D019CC194C0,  // 0x000134E8 
	0x84409CC194819481, 0x84437401530142C1, 0x42C16BC18C81AD49, 0x9CC394C18C416BC0,  // 0x00013508 
	0x94C4948384417C01, 0x74016C0163C13281, 0x32815BC163C18C87, 0x7C018C837C017C00,  // 0x00013528 
	0xA5066BC073C17C03, 0x7401740374013281, 0x32814B8163C16BC1, 0x7C017C017C008C80,  // 0x00013548 
	0xCDCE5B4073C173C1, 0x73C16BC163C13A81, 0x3A81538163816B81, 0x6B816B816B808C80,  // 0x00013568 
	0xBD4E844053015B41, 0x63815B413A810941, 0x094132814B016341, 0x5B015B0163409CC0,  // 0x00013588 
	0xAD0A7C0063415B01, 0x5B415B41530100C1, 0x00C142C153416341, 0x5B015B414A808C80,  // 0x000135A8 
	0xCDCE8C8053004AC1, 0x4AC14B013A410901, 0x09012A014AC13A81, 0x53015B005B40C5CA,  // 0x000135C8 
	0xD6109CC032404AC1, 0x4AC1424109010941, 0x094111413A814281, 0x428121C08440C588,  // 0x000135E8 
	0xD610B54432803A80, 0x4AC13A4132410081, 0x0081094132413241, 0x53011A007400C588,  // 0x00013608 
	0xDE12BD86A5043280, 0x29814AC12A410101, 0x01012A4121C13A81, 0x19C00A00BD88D610,  // 0x00013628 
	0xDE12D610DE128442, 0x22003201220100C1, 0x00C119C12A011141, 0x0140B58EDE12DE12,  // 0x00013648 
	0xDE12DE12DE12CDD0, 0x6BC211802A010141, 0x014119C1004100C0, 0x3240D612DE12DE12,  // 0x00013668 
	0xDE12DE12DE12DE12, 0xC58C114011800101, 0x01010101004042C0, 0xD5D0DE12DE12DE12,  // 0x00013688 
	0xDE12DE12DE12DE12, 0xDE12BCC62A000141, 0x0141114021C0CD0A, 0xDE12DE12DE12DE12,  // 0x000136A8 
	0xDE12DE12DE12DE12, 0xDE12D54A3A402A00, 0x114121804240D54C, 0xDE12DE12DE12DE12,  // 0x000136C8 
	0xDE12DE12DE12DE12, 0xDE12DE12DE124A80, 0x4AC0DE12BD4CDE12, 0xDE12DE12DE12DE12,  // 0x000136E8 
};

u64 _spot04_room_0_tex_00013708[] = 
{
	0x2B482B462B462304, 0x2B442B86338833C8, 0x2B862B862B442B44, 0x3384338433843344,  // 0x00013708 
	0x338633882B463348, 0x33882AC62B062B46, 0x228422C42B062AC6, 0x2AC622862AC62B48,  // 0x00013728 
	0x3388338833C83406, 0x4486448844894D0B, 0x448B3C493C084448, 0x444844083BC73C09,  // 0x00013748 
	0x4409448B444A4448, 0x444833463B863B86, 0x3386338633463BC8, 0x3348334933893389,  // 0x00013768 
	0x3C084C8A448844C8, 0x4CCA3C09450B55CD, 0x4D0B448B44493C09, 0x3C08444944493C09,  // 0x00013788 
	0x440944094CCB550B, 0x4C8A44484C484C48, 0x44074C4944493BC9, 0x3BC93BC94449448B,  // 0x000137A8 
	0x448844884D085588, 0x4CC94D095E0D664D, 0x558D448944493BC7, 0x4C894C8B4C894C8B,  // 0x000137C8 
	0x4CCB550B5D8B550B, 0x4C89550B550B5509, 0x54C95D4B5D4B4CC9, 0x4449444B4CCB4D0B,  // 0x000137E8 
	0x3C063C0455485D89, 0x5DC9660D5DCB5E0D, 0x4D0B3C4933C74489, 0x4CC944894CCB4CCB,  // 0x00013808 
	0x554B5D8B554B5549, 0x5D8B5D8D554B54C9, 0x5D8B5D4B54CB550B, 0x4C894C8B4D0B4CCB,  // 0x00013828 
	0x3C46440455065D89, 0x6E4B660B5D8B5D8B, 0x550B44C944893C89, 0x3C074D0B4D0B554B,  // 0x00013848 
	0x558B550955095549, 0x5D8B4D49554B5D8B, 0x4CCB54CB550B550B, 0x55094CCB44C94489,  // 0x00013868 
	0x4CC84CC855495D8B, 0x5D8B5DCB5DCB554B, 0x558D4D0B44CB3C49, 0x3C4944894489554B,  // 0x00013888 
	0x4CC955494C874CC9, 0x4CC9444744894489, 0x4CC94C8B554B5D8B, 0x4CC94CCB44894489,  // 0x000138A8 
	0x4CC8554A554B5D4B, 0x5DCB5D4B554B554D, 0x4D0B4D0B4D4B4D0B, 0x3C493C4944894CC9,  // 0x000138C8 
	0x558B5D8B558B4D09, 0x3C45448744894447, 0x4C8B4CCB554B4489, 0x44494CC94CCB4CCB,  // 0x000138E8 
	0x4CC8554A550B554B, 0x554B4CC94CC94D4B, 0x554B4D0B4D094CCB, 0x448934073C874447,  // 0x00013908 
	0x4CC9554B558B4D49, 0x4487448744C94CC9, 0x44894CCB44894489, 0x44894CC9554B4489,  // 0x00013928 
	0x4CC85508550B550B, 0x4CC94C894D094487, 0x448744C73C073C09, 0x3C4934053C8744C9,  // 0x00013948 
	0x550955494CC74D07, 0x4D0944C94CC94489, 0x444944893C493C49, 0x4489448944894489,  // 0x00013968 
	0x3C4644864CC94CC9, 0x4CC94C874C874485, 0x3C053BC53BC733C7, 0x3BC7444744874487,  // 0x00013988 
	0x4CC94D094D094CC7, 0x4CC74CC94D0B4C89, 0x3C093C093C493C89, 0x44C9448944493C07,  // 0x000139A8 
	0x3C043C4644474487, 0x44494C8744454405, 0x3BC533853BC74409, 0x44493C473C074489,  // 0x000139C8 
	0x4CC94C8944874487, 0x44875509550B4CC9, 0x3C0723052B873C47, 0x448944893C473385,  // 0x000139E8 
	0x3C043C0444474407, 0x44074C474C474405, 0x44073BC53C074449, 0x3BC7448944894489,  // 0x00013A08 
	0x4489448944894447, 0x4CC944894CC94489, 0x2B0522C52B873387, 0x3C0744893C073405,  // 0x00013A28 
	0x33C43C0744093BC9, 0x33453BC744894447, 0x3C07444944074409, 0x3BC733873C093C09,  // 0x00013A48 
	0x3C093BC744493C07, 0x3BC73C093C072B05, 0x228522C5230533C7, 0x3C4944493C493C07,  // 0x00013A68 
	0x3BC63387334722C5, 0x228533453BC73387, 0x3BC7440944093345, 0x33873BC733873C09,  // 0x00013A88 
	0x3C493C0933873345, 0x2B0533452B4522C5, 0x1AC322C52B473C49, 0x448B4CCB44493BC7,  // 0x00013AA8 
	0x33442B052AC52AC5, 0x2283228533873347, 0x2AC7228522852285, 0x2AC52B0533872B47,  // 0x00013AC8 
	0x2AC52B072B073347, 0x2B052B05230522C3, 0x22C52B473BC9444B, 0x4C89448944494447,  // 0x00013AE8 
	0x33443347228522C3, 0x22432B0533472AC5, 0x22451A051A031A03, 0x1A4522C52AC522C5,  // 0x00013B08 
	0x22C51A4522852AC5, 0x2B053C072B032303, 0x2B05338733893347, 0x2B4733473C072B05,  // 0x00013B28 
	0x2B043305334522C5, 0x2B0533872AC72285, 0x1A451A031A031A43, 0x224522C522C51A45,  // 0x00013B48 
	0x1A431A051A052285, 0x3347334533432B05, 0x22C5228522852285, 0x22C522C52B052AC5,  // 0x00013B68 
	0x2284228533873387, 0x33872B072AC72285, 0x1A031A031A032285, 0x2AC5228522831A43,  // 0x00013B88 
	0x1A031A051A051A45, 0x2AC533052B0522C3, 0x22431A451A451A45, 0x1A031A4522452AC5,  // 0x00013BA8 
	0x228422C533472B47, 0x2B052B0522C52245, 0x22851A431A8322C5, 0x22C522831A431A03,  // 0x00013BC8 
	0x1A031A031A031A45, 0x22852B0722831A43, 0x1A031A0311C311C3, 0x1203224522451A45,  // 0x00013BE8 
	0x1A442244228522C5, 0x2B472B0522C52285, 0x22451A43228322C5, 0x1A831A431A431A03,  // 0x00013C08 
	0x1A031A031A032245, 0x228522851A431A03, 0x120311C311C311C3, 0x1A031A4322851A45,  // 0x00013C28 
	0x1A021A021A452285, 0x2B0522C522852B07, 0x2B052B05228522C5, 0x22C31A4312011203,  // 0x00013C48 
	0x1A43224322851A45, 0x22C522C522851A43, 0x1A03120311C31203, 0x1A03228522851A45,  // 0x00013C68 
	0x1A0211C21A031A43, 0x1A43228322832B05, 0x33C92B0722C522C5, 0x120311C111C111C1,  // 0x00013C88 
	0x1A031A031A452B07, 0x230522C51A431A43, 0x1A0311C311C31203, 0x22C5334722851A03,  // 0x00013CA8 
	0x12021A021A021A03, 0x120312031A0322C5, 0x22C522851A451A43, 0x120109C109C111C1,  // 0x00013CC8 
	0x120312031A4522C5, 0x1A431243120311C3, 0x11C311C311C31A03, 0x22C522C51A451A43,  // 0x00013CE8 
	0x1A041A441A441203, 0x11C311C311C31A03, 0x1A451A451A451203, 0x120311C311C311C3,  // 0x00013D08 
	0x11C3120312031A43, 0x11C311C111C311C3, 0x11C311C311C31203, 0x1A451A851A451203,  // 0x00013D28 
	0x1A441A441A441A45, 0x1203120312031203, 0x120311C312031243, 0x12031203120311C3,  // 0x00013D48 
	0x11C311C311C31203, 0x11C311C311C311C3, 0x11C311C311C311C3, 0x12031A0512031A05,  // 0x00013D68 
	0x1A441A4422861A85, 0x120312031A051203, 0x11C311C311C311C3, 0x120312031A051203,  // 0x00013D88 
	0x12031203098111C3, 0x11C312031A451203, 0x11C311C311C311C3, 0x11C3120311C31205,  // 0x00013DA8 
	0x1A041A4412021202, 0x120312031A451205, 0x11C311C311C311C3, 0x11C311C311C311C3,  // 0x00013DC8 
	0x11C311C312031203, 0x12031A031A451203, 0x11C311C311C311C3, 0x11C3120511C311C3,  // 0x00013DE8 
	0x11C2120211C211C2, 0x11C212031A451A05, 0x120311C311C31205, 0x11C311C311C311C3,  // 0x00013E08 
	0x11C311C311C311C3, 0x1A05120311C311C3, 0x11C309C1098111C1, 0x11C311C311C311C3,  // 0x00013E28 
	0x11C21A0411C211C2, 0x11C211C21A051A45, 0x1A45120312031A45, 0x1A0511C311C311C2,  // 0x00013E48 
	0x11C311C311C31203, 0x1203120311C311C3, 0x11C209C109C111C3, 0x120311C311C311C3,  // 0x00013E68 
	0x1A0411C211C21202, 0x11C211C211C21202, 0x11C211C3120311C3, 0x11C311C211C211C2,  // 0x00013E88 
	0x11C211C311C311C3, 0x11C311C311C211C2, 0x11C211C211C311C3, 0x11C311C311C311C3,  // 0x00013EA8 
	0x1182118211821182, 0x1182118211821182, 0x1182118211821182, 0x1182118211821182,  // 0x00013EC8 
	0x1182118211821182, 0x1182118211821182, 0x1182118211821182, 0x1182118211821182,  // 0x00013EE8 
};

u64 _spot04_room_0_tex_00013F08[] = 
{
	0x64213A012BB05C8F, 0x573F726E4F97688F, 0x7429290447535C1C, 0x302B4703BA762529,  // 0x00013F08 
	0x9F21297864044338, 0xB6530C795898E78C, 0x774C531174251B38, 0x302C5F2D43B32564,  // 0x00013F28 
	0x8B310225645F3138, 0x6407076A3930A204, 0x77594C0978D78F08, 0xE711031D64775276,  // 0x00013F48 
	0x070225255F787F04, 0x299F022BC7A2CD4C, 0x77433A0FAE31B204, 0x85092D7859A52938,  // 0x00013F68 
	0x33020229252591D4, 0x2547BF0934123059, 0x77430F0F201E0946, 0x376856A859532538,  // 0x00013F88 
	0x705509477F291E90, 0x6F5FC92D7912303A, 0xD7ABAC17A7241104, 0x79791903254CA538,  // 0x00013FA8 
	0x709138783A400CC5, 0x5307112D3C945877, 0xD7AB610CAA17B004, 0x0C1146A8A8292974,  // 0x00013FC8 
	0x123B1B4731473F37, 0x7C2B6ECF97940129, 0x39310FAAC3A23704, 0x3A24092647B2A5B2,  // 0x00013FE8 
	0x701BA1470F010788, 0x513C1504822B51AB, 0xC514757666BDC711, 0x1C59550731D7B2D7,  // 0x00014008 
	0x1B1B1E5F110209D4, 0xC351029526AA9537, 0x2D020468AF664F09, 0x0F573F013AD7B247,  // 0x00014028 
	0x1B3C257404013446, 0x2F1D326802AA7931, 0x530C173B761A2452, 0x0F57231959B2B204,  // 0x00014048 
	0x3B11017F08021721, 0x095F60394723A30C, 0x0266BFAE1C773A38, 0x5CB391565FB6B6A4,  // 0x00014068 
	0x553A0708020C6A46, 0x33478218531E6E2F, 0x01C39E3457BA290F, 0x761C1919A8A5A4A4,  // 0x00014088 
	0x3131A33F3F095D21, 0x462D30533F3C4692, 0x470C58884396BA3A, 0x501C1C1925A10496,  // 0x000140A8 
	0x0F706C07195D310C, 0x95C746473FA76809, 0xCFC38D901CBA6478, 0x1A3F1C1518B76B0F,  // 0x000140C8 
	0x11702B613198091D, 0x0C686E7709A73902, 0x1D26C90411910147, 0x3A3F292930041C5C,  // 0x000140E8 
	0x13762B75126E03CF, 0x66A25D4368986A14, 0x1D92DD3704247414, 0x0F0F4C0798040F38,  // 0x00014108 
	0x38041311526E5FCF, 0x26601133BF686E02, 0x14A73C882B0FD729, 0x570F1A59E0A13838,  // 0x00014128 
	0x38B0046368945F19, 0x2426040F19906517, 0xC93C1746973A7743, 0x1A5C765768463876,  // 0x00014148 
	0x04682E02DB2E5F74, 0x0C3C460F02461188, 0x24566ED45D1D013F, 0x4C7504040968918F,  // 0x00014168 
	0x1268940746847453, 0x1468123A2F2004A2, 0x02561B215D2EA814, 0x2933390F57466EA4,  // 0x00014188 
	0x1268AC4384258417, 0x0C51125224461788, 0x07BF6E975C2E7214, 0x5C52253175212112,  // 0x000141A8 
	0x12758B8B15253A82, 0x3009B7092B1BAA5D, 0x140F943B5C3A333F, 0x0F072955529721B7,  // 0x000141C8 
	0x0475AC62047F2420, 0x985890B7681EDD6A, 0xAC72D4D443593355, 0x4C592F7704970497,  // 0x000141E8 
	0x526E528C8C090F98, 0x9837394630AADDA1, 0x5D113C3143B65755, 0x4C295275255C5C5C,  // 0x00014208 
	0x8F21318C65171430, 0x30CDC55DCDDDF013, 0x0404C91E5CBA5031, 0x763A31B647D75C43,  // 0x00014228 
	0xA43A43120917CEDF, 0x30303A9E07661787, 0x1338546AA4640FAF, 0x3A577447477425BA,  // 0x00014248 
	0x52B66846072424DF, 0x303734141409C992, 0x1E123C92219143F7, 0x1C0F787429505725,  // 0x00014268 
	0x4C083B043A0968DF, 0x2165511D65170C11, 0x24682692B752B396, 0x290F254C910F57A5,  // 0x00014288 
	0x4C3B12043165E030, 0x6204022937042F3A, 0x0CC1C1DBCC521C1A, 0x3F3A259150500FA5,  // 0x000142A8 
	0x7011763B090468A4, 0x629F4B82373C1307, 0x070279DB0262AF57, 0x6B822B5750B34377,  // 0x000142C8 
	0x62210F3804B03B6E, 0x9F020C823426A48F, 0x783F3C04773A761C, 0xAFA309741A64B629,  // 0x000142E8 
};

u64 _spot04_room_0_tex_00014308[] = 
{
	0x49CA49C841C84186, 0x49C649C8520A520A, 0x49C849C849884986, 0x4986498849884186,  // 0x00014308 
	0x49C851CA49C849CA, 0x49CA418841884988, 0x3946398641884188, 0x41C8398841C849CA,  // 0x00014328 
	0x4A0A520A520A5208, 0x620A624A628D6A8D, 0x6A8D624D5A0A5A0A, 0x5A0A5A0A51C95A0B,  // 0x00014348 
	0x5A0B624D5A4C5A0A, 0x5A0A498849884988, 0x4988498849C8520A, 0x49CA49CB520B4A0B,  // 0x00014368 
	0x5A4C624C624A6A4A, 0x6A8C5A0B6A8D7B11, 0x72CF628D5A4B5A0B, 0x5A0A620D5A0B5A0B,  // 0x00014388 
	0x5A0B5A0B6A4D728D, 0x624C620A59CA59CA, 0x59CB59CB59CB51CB, 0x51CB520B5A4D624D,  // 0x000143A8 
	0x624C624C6A4A7A8C, 0x6A4B724D830F8B11, 0x7ACF624D624B51C9, 0x624D624D624D624D,  // 0x000143C8 
	0x6A4D6A4D7A8F724D, 0x624D6A4D6A4D6A4D, 0x6A0B724D724D6A4D, 0x620B624D6A8D6A8D,  // 0x000143E8 
	0x5A0859C8724C7A4D, 0x7A8D82CF82CF82CF, 0x6A8D5A0B51C9620B, 0x6A4D624D6A8D6A8D,  // 0x00014408 
	0x728D7A8F728F724D, 0x7A8F7ACF728F6A4D, 0x7A8F724D6A4D6A4D, 0x624D624D6A8D6A4D,  // 0x00014428 
	0x5A0A59886A0A7A4D, 0x8ACF82CF7A8F7A8F, 0x728D6A4D624B624B, 0x5A0B728D6A8D728D,  // 0x00014448 
	0x7A8F6A4D724D724D, 0x7A8F724D728D7A8F, 0x6A4D6A4D724D724D, 0x6A4D6A4D6A4D620B,  // 0x00014468 
	0x6A4A6A4A724D7A4D, 0x7A8F7A8F7ACF728F, 0x7ACF6A8F6A8D5A0B, 0x5A4B624D624D728D,  // 0x00014488 
	0x6A4B724D620B6A4D, 0x6A4B59C9620B620B, 0x6A4D624D728F7A8F, 0x6A4D6A4D624D624B,  // 0x000144A8 
	0x6A4C728C728D728F, 0x7ACF728F728F72CF, 0x728D728F72CF6A8D, 0x5A4B5A0B620B6A0B,  // 0x000144C8 
	0x7A8D7A8F7A8D6A4D, 0x59C9620B620B5A0B, 0x624D6A8D728F620B, 0x5A0B6A4D6A8D6A8D,  // 0x000144E8 
	0x6A4C728E6A4D728F, 0x728F6A4D6A4D728D, 0x728F6A8D6A8D6A8D, 0x624B51C9620B620B,  // 0x00014508 
	0x6A4B728D7A8D724B, 0x620B620B6A4B6A4D, 0x624D6A8D624B624B, 0x624B6A4D72CF624D,  // 0x00014528 
	0x6A4C724C6A4D728D, 0x6A4D620B6A4D620B, 0x6209620B5A0B5A0B, 0x5A0B59C962096A4B,  // 0x00014548 
	0x724D724D6A0B6A4B, 0x6A4B6A4B6A4D624B, 0x624B624B5A4B5A0B, 0x624B624D624D624D,  // 0x00014568 
	0x5A08620A6A4B6A4D, 0x6A4B61C961C959C9, 0x5187518951C951C9, 0x51C95A096209620B,  // 0x00014588 
	0x6A4B6A4D6A4B6A0B, 0x6A4B6A4B6A4D624D, 0x5A0B5A4B5A4B624B, 0x6A4B624D620B59C9,  // 0x000145A8 
	0x51C659C8620B620B, 0x5A0B61C959895989, 0x5187498751C959CB, 0x5A0B59C959C9624B,  // 0x000145C8 
	0x6A4D620B620B6209, 0x620B6A4D728D6A4D, 0x5A09418749C9620B, 0x624B624D59C94987,  // 0x000145E8 
	0x51C659C85A0B59CB, 0x59C959CB59C95989, 0x59C9518951C95A0B, 0x51C9620B624B620B,  // 0x00014608 
	0x624D620B624B620B, 0x6A4B624B6A4D620B, 0x4187398749C949C9, 0x5A0B624B59C951C9,  // 0x00014628 
	0x518859C95A0B51CB, 0x41475189620B59C9, 0x51C959CB59C959CB, 0x51C949895A0B5A0B,  // 0x00014648 
	0x520B51C95A0B51C9, 0x51C95A0B51C94187, 0x39473987418751C9, 0x624B624B5A0B59C9,  // 0x00014668 
	0x51C849C949893947, 0x3945498751C949C9, 0x51CB59CB59CB4147, 0x498951C949C9520B,  // 0x00014688 
	0x5A0B520B49C94987, 0x4187498749873987, 0x394539474989624B, 0x624D6A8F5A0B51C9,  // 0x000146A8 
	0x4986414739473905, 0x3105394549C94989, 0x3987394731053105, 0x3947418749C94189,  // 0x000146C8 
	0x3987418941894989, 0x4147414741473945, 0x39474989520B624D, 0x624D620B5A0B5A0B,  // 0x000146E8 
	0x4186498939473945, 0x3105414749C93947, 0x3145290529052905, 0x3145394739473987,  // 0x00014708 
	0x3947310539473947, 0x418751C941454145, 0x418749C951CB4989, 0x418949895A0B4147,  // 0x00014728 
	0x4146418749873947, 0x418749C941873947, 0x3105290529053105, 0x3105394739473145,  // 0x00014748 
	0x3105290529053947, 0x4989414749454147, 0x3947394739473947, 0x3947398741473947,  // 0x00014768 
	0x3946394749C949C9, 0x49C9418739873947, 0x2905290529053145, 0x3947314531053105,  // 0x00014788 
	0x2905290529053105, 0x3947414741473945, 0x3105310531053105, 0x2905314531053947,  // 0x000147A8 
	0x3146394749C94989, 0x4187418739473145, 0x3145310531053947, 0x3947394531032905,  // 0x000147C8 
	0x2905290529053105, 0x3947418739053105, 0x2905290529052905, 0x2905314531453145,  // 0x000147E8 
	0x3104314639473947, 0x4989418739473147, 0x3105310531453947, 0x3145310531052905,  // 0x00014808 
	0x2905290529053147, 0x3947314731052905, 0x2905290529052905, 0x2905310531473105,  // 0x00014828 
	0x2904290431053945, 0x4187394731454189, 0x4187418739453945, 0x3945310328C328C3,  // 0x00014848 
	0x3105310531473105, 0x3987394731453105, 0x2905290529032905, 0x2905314739473105,  // 0x00014868 
	0x2904290429053105, 0x3105394539454187, 0x520B418739473947, 0x290328C320C328C3,  // 0x00014888 
	0x2905290531474189, 0x4187394531053105, 0x2905290529052905, 0x394749C931452905,  // 0x000148A8 
	0x2904290429042905, 0x2903290329033947, 0x4187394731453105, 0x28C320C320C328C3,  // 0x000148C8 
	0x2905290531453987, 0x31053103290328C3, 0x2905290529052905, 0x3987398731453105,  // 0x000148E8 
	0x2904314631442905, 0x28C328C328C32905, 0x3145314531052905, 0x290328C320C320C3,  // 0x00014908 
	0x2905290529053105, 0x290320C320C32105, 0x2105210521052905, 0x3145314731452905,  // 0x00014928 
	0x3146314631463145, 0x2905290529052905, 0x2905290529053105, 0x2905290529052905,  // 0x00014948 
	0x2905290529032903, 0x290320C320C32905, 0x2105210521052905, 0x2905290529052905,  // 0x00014968 
	0x3146314639863147, 0x2905290529052905, 0x290520C320C32903, 0x2905290529052905,  // 0x00014988 
	0x29052903208120C3, 0x2903290531452905, 0x2905210521052105, 0x2905290529052905,  // 0x000149A8 
	0x2904314629042904, 0x2905290531452905, 0x290520C320C320C3, 0x2905290521052105,  // 0x000149C8 
	0x2905290529052905, 0x2905290531452905, 0x290520C320C320C3, 0x2905290529052905,  // 0x000149E8 
	0x29042904290420C4, 0x2904290531472905, 0x2905290529052905, 0x2905290521052105,  // 0x00014A08 
	0x2105210529052905, 0x29052905290520C3, 0x20C320C320C320C3, 0x2905290529052905,  // 0x00014A28 
	0x2904290429042104, 0x2104290429053147, 0x3145290529053145, 0x2905290521052104,  // 0x00014A48 
	0x2105210529052905, 0x29052905290520C3, 0x20C220C320C32903, 0x2905290529052905,  // 0x00014A68 
	0x2904290429042904, 0x2904290429042904, 0x2904290529032905, 0x290520C220C22104,  // 0x00014A88 
	0x2104290529052105, 0x21052105290420C2, 0x20C220C221052105, 0x2105290529052905,  // 0x00014AA8 
	0x20C220C220C220C2, 0x20C220C220C220C2, 0x20C220C220C220C2, 0x20C220C220C220C2,  // 0x00014AC8 
	0x20C220C220C220C2, 0x20C220C220C220C2, 0x20C220C220C220C2, 0x20C220C220C220C2,  // 0x00014AE8 
};

u64 _spot04_room_0_tex_00014B08[] = 
{
	0x4B0B4B4D328D4B4D, 0x4B4D4B4D3A4B3ACD, 0x4B4B5BCD6C0F6C0F, 0x6C4F63CB63CB42C3,  // 0x00014B08 
	0x2A0142C919C9324D, 0x324D744F84D384D3, 0x324919453A89428B, 0x218B218B21CB29C9,  // 0x00014B28 
	0x42CD4B0F5BCF4B4D, 0x4B4D4B8F5C117D15, 0x5C134B4B5B8D5B8D, 0x5B8D638B42833243,  // 0x00014B48 
	0x534D5BD15391534F, 0x538F3AC96C116411, 0x74914B0D11451105, 0x2A4D2A0B3249324B,  // 0x00014B68 
	0x640F8D119D95534D, 0x3A8B430D64518D97, 0x6C9332433A853247, 0x4289530953075309,  // 0x00014B88 
	0x534F530F6C117453, 0x63D1955584D3744F, 0x5BCB2A07218729C7, 0x42CD3A8D3A896C0F,  // 0x00014BA8 
	0x84D38D118D139553, 0x320729858D9595D9, 0x85555BCF430B3A89, 0x298542C963D16411,  // 0x00014BC8 
	0x6C5174518D137C91, 0x641174517CD563CB, 0x5B894309530B3A89, 0x4B0B21C74B4D84D3,  // 0x00014BE8 
	0x84D384D38D5584D3, 0x7C91534995939597, 0x6C514B4D3A8B538D, 0x64515B8F5B8B42C9,  // 0x00014C08 
	0x4B0B5BCD640D6C0F, 0x8D138D5584D363CD, 0x4B035B8774517451, 0x42CB32497C9184D3,  // 0x00014C28 
	0x7CD384D37CD36C11, 0x74914B476C4F8513, 0x7493640F538D538F, 0x63CB5B894AC73249,  // 0x00014C48 
	0x324943074B4B5B8D, 0x5B8D749174D14303, 0x2A4174517C917C91, 0x32093A8B7C937CD3,  // 0x00014C68 
	0x74917C916C4F640D, 0x744F32435B8D84D3, 0x7D156C536411638B, 0x5B49428908C50905,  // 0x00014C88 
	0x11452A074B09534B, 0x4B4D530B32831981, 0x6411641184D38D13, 0x4B4F3209640F7491,  // 0x00014CA8 
	0x6C0F6C0F6C4F63CB, 0x63CB4B0784D37CD5, 0x74936C93530B5B4D, 0x42892187A511BDD5,  // 0x00014CC8 
	0x5B4D4ACB42CB534D, 0x4ACD32091981538D, 0x641164117CD363CD, 0x538D42C94B0B5BCD,  // 0x00014CE8 
	0x5B8D5B8D5B8D638B, 0x5B49641164117491, 0x7CD36C5163CD2A07, 0x19851145A4D1A513,  // 0x00014D08 
	0xA5537C0F6BCF29C9, 0x1945194532076C51, 0x5BCF6C515BCD538F, 0x538F430921C94B4B,  // 0x00014D28 
	0x534B4B4D530B5B4D, 0x5B4B640D744F5BCB, 0x5B8B640D63CB5B89, 0x08C5114519455309,  // 0x00014D48 
	0x73CF6BCF3A4B1947, 0x1945110311455BCF, 0x538F53CF4B8D4B4D, 0x5BCF640F5BCB4B09,  // 0x00014D68 
	0x4B4B5BCD6C0F6C0F, 0x6C4F6C0D63CB5B89, 0x4AC742C932492187, 0x844F638D634D5B0B,  // 0x00014D88 
	0x740F74118C918CD3, 0x194508C519453A8B, 0x4B4D434F4B4F538D, 0x640F63CF538D4B0B,  // 0x00014DA8 
	0xA5D595933AC9534B, 0x5B8D530B638B5309, 0x42873247634D8C91, 0x9CD3A513A553AD55,  // 0x00014DC8 
	0x94D3844F6BCB6B8B, 0x2187A5116C513A8B, 0x4B4D19C92A4B538D, 0x538D640F534B8D11,  // 0x00014DE8 
	0x8D139553955584D3, 0x32093A49638B4B0B, 0x534B42C95B0B8C91, 0x7C4FA5559CD394D3,  // 0x00014E08 
	0x8CD573CB6B897C4F, 0x94CFA4D1640F2A49, 0x21C719873249328B, 0x4B4B4AC719878D11,  // 0x00014E28 
	0x42C984D384D35BCF, 0x428B194508C34ACB, 0x4B0B534D5B0B5B0D, 0x638D8CD37C117411,  // 0x00014E48 
	0x8C916B4963098C91, 0x8C914B0D3A8B21C7, 0x8D11A5D595933A8B, 0x4B07008311451145,  // 0x00014E68 
	0x3AC96C1164117491, 0x5BCD42C908C52187, 0x430D534D634D3A09, 0x42494ACB7C0F7C0F,  // 0x00014E88 
	0x6B4D6B4B74113209, 0x29C932076C4F84CF, 0x8D118D1395534ACD, 0x08C17449A5D59593,  // 0x00014EA8 
	0x955584D3744F5BCB, 0x5B8B6C0D8D11A5D5, 0x7CD311471107A5D5, 0x95938D1385137493,  // 0x00014EC8 
	0x640F538D2A092A0B, 0x218921877C917C91, 0x84D38D5584D37C91, 0x534953458D139553,  // 0x00014EE8 
	0x84D37CD563CB5B89, 0x6C4F84CF8D118D13, 0x5B8B00858D118D13, 0x9553955584D37D15,  // 0x00014F08 
	0x6C5364114B4D1947, 0x21C764117CD37451, 0x84D37CD36C117491, 0x640D53478D5584D3,  // 0x00014F28 
	0x641174913A073A47, 0x7C917C9184D35B89, 0x4AC77C9184D38D55, 0x84D384D37CD57493,  // 0x00014F48 
	0x6C9374936C534B4F, 0x320B640F74917451, 0x7C916C4F640D744F, 0x5B8D5B8D7CD36C11,  // 0x00014F68 
	0x428B4ACB18C56411, 0x7CD374515B494B09, 0x7CD3745184D37CD3, 0x6C11641174917CD3,  // 0x00014F88 
	0x6C516C5164115BCF, 0x430B4B4B5BCD6C0F, 0x6C0F6C4F534942C7, 0x5B897C915BCD6C0F,  // 0x00014FA8 
	0x7C9121470003640F, 0x7CD35B4D42894AC9, 0x749174517C916C4F, 0x640D744F53494B49,  // 0x00014FC8 
	0x640D4B4B4B0D4B4D, 0x430929C94B4B5B8D, 0x5B8D5B8D42C54285, 0x64117CD374517C91,  // 0x00014FE8 
	0x6C4F640D19073209, 0x5B8B42C921874B4B, 0x5BCD6C0F6C0F6C4F, 0x63CB63CB53073A85,  // 0x00015008 
	0x42C942CB3A8B42CB, 0x538B5BCB4B09534B, 0x4B4D530B320731C7, 0x640F749174517C91,  // 0x00015028 
	0x6C4F63CB63CB4AC9, 0x4AC7198711054307, 0x4B4B5B8D5B8D5B8D, 0x638B5B4953094287,  // 0x00015048 
	0x3247428B4B0D534F, 0x534B4B0B21C921C9, 0x4ACD320921870045, 0x2A095BCD6C0F6C0F,  // 0x00015068 
	0x5B8D638B5B495309, 0x00831145114542C9, 0x4B09534B4B4D530B, 0x5B4D5B4B5309534B,  // 0x00015088 
	0x42C94B0B5B4F4ACD, 0x534D428B3A49AD53, 0xB595AD53428B0045, 0x08C54B4B5B8D5B8D,  // 0x000150A8 
	0x530B5B4D5B4B5309, 0x8D11A5D595933AC9, 0x534B534D4ACD3209, 0x42C95B8D534B4B0B,  // 0x000150C8 
	0x534D530B530D4ACB, 0x42CB634B94CFA4D1, 0xA513A553AD5594D3, 0x11474B09534B4B4D,  // 0x000150E8 
	0x95935B894AC71987, 0x8D118D1395539555, 0x84D3320919451945, 0x320742CB3A8B8D11,  // 0x00015108 
	0xA5D5959332093A49, 0x4ACB8C918C919CD3, 0xA5559D137C0F94D3, 0x08C509078D11A5D5,  // 0x00015128 
	0x73CB5B8900831145, 0x114542C984D384D3, 0x7CD5218719451103, 0x11456C4F744D7C8D,  // 0x00015148 
	0x8D139553955584D3, 0x73CF94D38C5194D3, 0x320952CB5B4D8CD3, 0x7C4F94CF8D1163CB,  // 0x00015168 
	0x4ACD32098D11A5D5, 0x95933AC96C116411, 0x74917CD3194508C5, 0x08C163CB63CB748F,  // 0x00015188 
	0x84D184D384D37CD5, 0x5B8D5B0B9CD394D3, 0x8CD552CB4A8B5B0D, 0x8C918C91534D00C5,  // 0x000151A8 
	0x7C917C9184D38D13, 0x9553955584D3744F, 0x5BCB5B8B19878D11, 0xA5D595935B8B640D,  // 0x000151C8 
	0x6C4F6C1164117491, 0x7CD32A073AC97C11, 0x7411638D4ACB1945, 0x7CD3745129C921C9,  // 0x000151E8 
	0x534D74916C4F8D55, 0x84D384D37CD563CB, 0x5B896C4F84CF8D11, 0x8D13955395556C0D,  // 0x00015208 
	0x5349538B744F5BCB, 0x63CD42C97C0DAD55, 0x94D3844F4B0B3A89, 0x198774514B0D324B,  // 0x00015228 
	0x4B0B5B8D5B8D7CD3, 0x6C11641174915B49, 0x53097C917C9184D3, 0x8D5584D384D37CD5,  // 0x00015248 
	0x53874AC563CB5B89, 0x744F7CD1A5539CD3, 0x94D38CD563CB5B89, 0x6C4F6C0F5B8D5B89,  // 0x00015268 
	0x5B4B84D17C915BCD, 0x6C0F6C0F5B4D5B4B, 0x64117CD3745184D3, 0x7CD36C1164117491,  // 0x00015288 
	0x5BCB42C54AC55309, 0x534D7C91740F7CD3, 0x6C11641174915B49, 0x53095B8D5B8D428B,  // 0x000152A8 
	0x63CD5B8B5B8D5B8D, 0x74515B8F3A493187, 0x640F749174517C91, 0x6C4F640D744F5BCB,  // 0x000152C8 
	0x3AC5530942855309, 0x3A094AC784D17C91, 0x42CB42CB5B8D5B4D, 0x4B09534B324B42CB,  // 0x000152E8 
};

u64 _spot04_room_0_tex_00015308[] = 
{
	0x4AC94B4F5B8F748F, 0x748F538D5BCD3ACB, 0x4B0B5B8D6C4F8D93, 0x748F6BCB63CD63C9,  // 0x00015308 
	0x4B074AC9324B748F, 0x5B8D6C0F6C11534D, 0x8515534F6C0F84D1, 0x534F748F748F744F,  // 0x00015328 
	0x6C4F3ACF748F5BCF, 0x538D748F5B8D3ACD, 0x4B0B42C919855B8D, 0x748F6BCB42C93207,  // 0x00015348 
	0x5B4963CB748F748F, 0x3A8D3A898D138513, 0x851529C732094B0B, 0x21CB748F748F748F,  // 0x00015368 
	0x5B8F3ACD430D4B4B, 0x5BCD5C0F64116C93, 0x6453534B7CD19DD7, 0x7CD16BCB63895B49,  // 0x00015388 
	0x749185555B8F5B8F, 0x5B8F42C974516C51, 0x7CD17CD384CF534B, 0x324D4B0D5BCD6C0F,  // 0x000153A8 
	0x6C0F84D19551A5D7, 0x9D9542CB4B4D6C91, 0x855774D3534963CD, 0x5B8D6BCB63895B49,  // 0x000153C8 
	0x534D64115B8F5B8F, 0x5B8F5B8D74516C51, 0x7CD16C4F4B0B42CB, 0x324B324B748F3A8B,  // 0x000153E8 
	0x84D19551A5D7748F, 0x42CB4B4D6C918557, 0x4B0D5349748F7491, 0x744F3A07638B5B49,  // 0x00015408 
	0x9599749342CB7C91, 0x6C1195955B4F748F, 0x63CD5BCB5B8B744F, 0x5B8F5B8D534D748F,  // 0x00015428 
	0x5B4D8D138D119553, 0x95934B0D3A496C0F, 0x9DDB5BCF640F534D, 0x534B638D638B5B49,  // 0x00015448 
	0x5B4F534F6C517C91, 0x6C1195538D13748F, 0x63CD534B4ACB6C0D, 0x4B0D748F42C9748F,  // 0x00015468 
	0x8D138D1195539593, 0x4B0D3A4995979DDB, 0x8555324B5BCF4B0D, 0x3A494AC93A4B428B,  // 0x00015488 
	0x74517C91ADDB84D1, 0x428B530B85156C0B, 0x63C9744F744D7451, 0x6C112A09538D6C0F,  // 0x000154A8 
	0x9DD98D138D136BCF, 0x634D84D184D16C0D, 0x6C4F7491538D4B0D, 0x5B8D4AC964116C11,  // 0x000154C8 
	0x74517C919553530B, 0x6C115B8D85156C0B, 0x63C94AC984CF744F, 0x64112A09538D8511,  // 0x000154E8 
	0x8D138D136BCF8D13, 0x84D15B4DAE1D9597, 0x7491538D42CB3207, 0x85955B8B63CB4B09,  // 0x00015508 
	0x4B0B6C4F6C0D6BCD, 0x63CD8D5585134ACB, 0x638D5B4B74916C0F, 0x4ACD3A49744F534D,  // 0x00015528 
	0x5B4D5B4D31C79DD9, 0x74517C917CD19593, 0x638D7CD33A895BCD, 0x85955BCF5BCB4AC9,  // 0x00015548 
	0x1987538B640D5B0B, 0x95536C0F744F7C8F, 0x95535B4B74917C91, 0x4ACD748F7CD18513,  // 0x00015568 
	0x84D385137C917451, 0x7C91959795938D53, 0x7CD36C4F640D84CF, 0x6C0B53097C8F63CD,  // 0x00015588 
	0x7CD15B8963CD5B8B, 0x744F6C0F3ACD430D, 0x4B4B5BCD5C0F6411, 0x6C936453534B7CD1,  // 0x000155A8 
	0x5B4D851329878D55, 0x7C917CD153878D8F, 0x5BCB4B493B075C0B, 0x6C4742C3324100C1,  // 0x000155C8 
	0x114742C74B09534B, 0x74CF638D5B8D8511, 0x6C0F32077C91744F, 0x21873A8B7C9184D3,  // 0x000155E8 
	0x5BCB63CB4B054B47, 0x42C53A8342C56C4D, 0x5BCB43054B0742C3, 0x2A0132438D8F640B,  // 0x00015608 
	0x640B324132855349, 0x748F8D119551A5D7, 0x748F42CB4B4D6C91, 0x85574B0D53495B49,  // 0x00015628 
	0x53893AC32A414305, 0x53473A8519814B05, 0x43052A832A4129C1, 0x2181194100010041,  // 0x00015648 
	0x00813A8742876C4F, 0x428931C53A893247, 0x3205194142875347, 0x328929C963CF7C91,  // 0x00015668 
	0x4305090100810901, 0x110142C753094AC9, 0x3A451981320529C3, 0x194163C9744F744D,  // 0x00015688 
	0x7451534B3247538D, 0x8D138D138D119553, 0x95934B0D63CF8D97, 0x9DDB21C100010901,  // 0x000156A8 
	0x21C1194111014B47, 0x1981008129C13243, 0x3243328521832141, 0x10C1000129C34243,  // 0x000156C8 
	0x1941008129C32183, 0x19431101110108C1, 0x00010001000108C1, 0x21835BCD4309538D,  // 0x000156E8 
	0x2101190121412985, 0x000118C121052985, 0x2145210308810001, 0x29835B0B5B4B7491,  // 0x00015708 
	0x6C0F5B8F4B0B744F, 0x18C100018D13638D, 0x5B8D31C700010881, 0x0001000100010881,  // 0x00015728 
	0x0001000110410841, 0x2943190100011081, 0x1041000118C10001, 0x29430001528F2147,  // 0x00015748 
	0x31C9294963110001, 0x000121453A0B2987, 0x2987298721430841, 0x000110C100012101,  // 0x00015768 
	0x39893A0B5B117C15, 0x1907528F31894A8D, 0x3A0B298500011085, 0x2985084100012985,  // 0x00015788 
	0x638F428B08810001, 0x2143000100411903, 0x108310854A4F1085, 0x424D52CF1085424D,  // 0x000157A8 
	0x2989214718816B91, 0x0001424B52CF5B11, 0x52CF214731CB1907, 0x52CF08C32147528D,  // 0x000157C8 
	0x3A0D1907635118C7, 0x73D531C939CB2989, 0x5B114A8D6B9331C9, 0x1081214318C14209,  // 0x000157E8 
	0x31894A4D420B7395, 0x528F73D52147420D, 0x73D573D519070001, 0x6B51214300011903,  // 0x00015808 
	0x0001108100010001, 0x10C10001298573D3, 0x084119075B1139C9, 0x84575B11190773D5,  // 0x00015828 
	0x8457635321036B51, 0x000110C54A8F6353, 0x1907190721491907, 0x63531907528F528F,  // 0x00015848 
	0x6B9319076B938457, 0x635118C53A0D1907, 0x73D529896B937393, 0x7C156B5339C931C9,  // 0x00015868 
	0x524D528D39C92107, 0x528F845719071907, 0x63538457000139C9, 0x73D500012143424D,  // 0x00015888 
	0x0001424B39C90001, 0x21453A094A4D8C99, 0x1085190773D52941, 0x10834A4F10838C99,  // 0x000158A8 
	0x6353190729475B11, 0x108539CB0043528F, 0x190719074A4F1907, 0x635339CD19071907,  // 0x000158C8 
	0x52CF19077C153A0B, 0x18C731CB4A4F73D5, 0x5ACF000139CD2107, 0x5B116B9319072107,  // 0x000158E8 
	0x21074A4D39C91905, 0x1907635321072107, 0x1907528F10C15B0F, 0x6B93298931C94A8D,  // 0x00015908 
	0x00013A0921071907, 0x29853A0B1085528F, 0x19071907528F0001, 0x0001528F0001528F,  // 0x00015928 
	0x1907190718C13A0D, 0x190739C900012987, 0x10831907528F2147, 0x52D1294921473189,  // 0x00015948 
	0x631131C94A8F2949, 0x29492949420D420D, 0x1907108539CD2107, 0x2949528F190739C9,  // 0x00015968 
	0x2147420B39C90881, 0x1907528F18C52149, 0x2107294500012945, 0x4249084110C131C9,  // 0x00015988 
	0x10C16B4F18C32105, 0x084110C510C5424D, 0x084118C329451083, 0x0001000100012103,  // 0x000159A8 
	0x108318C30001420B, 0x0001190308410841, 0x000118C331872949, 0x4A4D4A4D420B18C1,  // 0x000159C8 
	0x528D084110813189, 0x3189004121450841, 0x21053187420B2989, 0x39C94A8D18C518C5,  // 0x000159E8 
	0x6B87194100010001, 0x4A4B4A415A817341, 0x52C1088100014A41, 0x4A413181000110C1,  // 0x00015A08 
	0x18C3210100016B87, 0x0001000100010001, 0x08415A81734152C1, 0x0001294739C94A41,  // 0x00015A28 
	0x6B87000100010001, 0x10C14A415A817341, 0x52C1000100014A41, 0x4A41318131870001,  // 0x00015A48 
	0x0001000108416B87, 0x2147000100410001, 0x10835A81734152C1, 0x21072947528D4A41,  // 0x00015A68 
	0x52413A013A013A01, 0x3181318139C15241, 0x3A014A453A015283, 0x3A013181318139C1,  // 0x00015A88 
	0x52413A013A013A01, 0x3181318139C15241, 0x3A014A453A015283, 0x3A013181318139C1,  // 0x00015AA8 
	0x52413A013A013A01, 0x3181318139C15241, 0x3A014A453A015283, 0x3A01318131813141,  // 0x00015AC8 
	0x52413A0129813A01, 0x3181318139C15241, 0x3A014A453A015283, 0x3A013181318139C1,  // 0x00015AE8 
};

u64 _spot04_room_0_tex_00015B08[] = 
{
	0x03109A9A0310DA1D, 0x36A8030303039A10, 0x03409A1D031D4103, 0x1D1D4D1D03039314,  // 0x00015B08 
	0x10999A039A4B40DA, 0x031D1D1D022C0F04, 0x10101D401D401D36, 0x1D406F09873D2F09,  // 0x00015B28 
	0x1003034041039A03, 0x03933C87111E2F0F, 0x109A991D10030303, 0x1D542C2C042C0413,  // 0x00015B48 
	0x3610400303360303, 0x111109111B043C11, 0x03101D101D1D4051, 0x38110808132BAE13,  // 0x00015B68 
	0x1D36030303361D13, 0x1108110870133D04, 0x4003100303102C2C, 0x3D04110813041308,  // 0x00015B88 
	0x034099360393542B, 0x7E2B130408130838, 0x0310DA99102C09AE, 0x1704871B1B04043C,  // 0x00015BA8 
	0x36994D1093542F04, 0x042B132C08138704, 0x479A10100CBFAE65, 0x54133D2C702BAE2C,  // 0x00015BC8 
	0x3603101054171E1E, 0x91543D0404047004, 0x1036102D3D87557E, 0x3DBF0404043D8717,  // 0x00015BE8 
	0x1099101EC9541E1E, 0x092B54042C87113D, 0x3610103D2F0F1E2C, 0x092CAE043C707E17,  // 0x00015C08 
	0x0336631E1E0F2F0F, 0x872B3A8704382B13, 0x1003022F2C1E0911, 0x1111091E133D0911,  // 0x00015C28 
	0x1036094BC97E1111, 0x1E09113113041113, 0x36101E312F2C1138, 0x21111161702B0887,  // 0x00015C48 
	0x100334090F0C2C1E, 0x0404080404973B11, 0x10931124394F9C09, 0x720411A16E8E3D3D,  // 0x00015C68 
	0x10710C241E11092C, 0x722C1113113D113D, 0x033102512F2F2B04, 0x5411043B54040F87,  // 0x00015C88 
	0x109C613451171704, 0x173D08112C70097E, 0x106A17171E90042C, 0x09116A131111543D,  // 0x00015CA8 
	0x401134170F586517, 0x24113C0404110454, 0x100C61722458C911, 0x1179790465118911,  // 0x00015CC8 
	0x402B6509CE172C2B, 0x11170411929E3D3D, 0x40092B1E0917112C, 0x11546E04132B113D,  // 0x00015CE8 
};

u64 _spot04_room_0_tex_00015D08[] = 
{
	0x6517091E17170909, 0x2B6E040404111154, 0x3E9D3E9D0D229D9D, 0x3E0A3E1F3E3E0D0A,  // 0x00015D08 
	0x4C310CAA020756CE, 0x5607CE550F57073A, 0x4C781E241E1E2411, 0x11242C04043D2B54,  // 0x00015D28 
	0x52A810241E1E2411, 0x11245404043D2B54, 0xA43A254B2C1E047E, 0x2B133D04892B3D54,  // 0x00015D48 
	0x8F21310347091E54, 0x1104041313131387, 0x526E523A6363039B, 0x043D046E13131387,  // 0x00015D68 
	0x0475AC338B6F1D4B, 0x53A803053C3D0411, 0x12758B5275011402, 0x936371B74A0E0D9D,  // 0x00015D88 
	0x1268AC8B1501CE09, 0x0763B70902053605, 0x1268940746847451, 0x9368120C02204DC5,  // 0x00015DA8 
	0x04682E02DB2E5F63, 0x4B3C090C02460F88, 0x38B0046368945F14, 0x0C09090F19906517,  // 0x00015DC8 
	0x38041311526E5FCF, 0x0C24340FBF686E02, 0x13762B75126E03CF, 0xC3C5753168986A14,  // 0x00015DE8 
	0x11702B6131980971, 0x4B68187709A77151, 0x0F706C07195D3134, 0x34C7CC7102CC0709,  // 0x00015E08 
	0x3131A33F3F095D21, 0x8DCC185363634692, 0x553A0708020C6A46, 0x33711818031E6E2F,  // 0x00015E28 
	0x3B11017F08021721, 0x095F60394723A30C, 0x1B3C257404013446, 0x2F1D326802AA7931,  // 0x00015E48 
	0x1B1B1E5F110209D4, 0xC351029526AA9537, 0x701BA1470F010788, 0x513C1504822B51AB,  // 0x00015E68 
	0x123B1BA831473F37, 0x7C2B6ECF97942929, 0x709138783A400CC5, 0x5307112D3CD37F77,  // 0x00015E88 
	0x705509787F291E90, 0x155FC92D397C303A, 0x3302020125639175, 0xAC02BF4F34463059,  // 0x00015EA8 
	0x9F022577A8845953, 0x849F0217C721CD4C, 0x9F31292584153A33, 0x6407076A9E5DA204,  // 0x00015EC8 
	0x9F39297864044338, 0xB6530C79AB751252, 0x7F72026139B05C8F, 0x570772AB4FB3215C,  // 0x00015EE8 
	0x013F6104333A761C, 0x1C3A0F181AB31129, 0x4C0265DB0262AF57, 0x5061315750B304A5,  // 0x00015F08 
	0x0C9EC1DBCC521C1A, 0x57729F91501C55A5, 0x24882692B752B396, 0x5704844C91913AA5,  // 0x00015F28 
	0x1E123C92219143F7, 0x13D8777429074C25, 0x1338546AA4640F11, 0x8C127447477825BA,  // 0x00015F48 
	0x0404C91E5CBA508C, 0x769731B647D75C43, 0x5D113C3143B62B09, 0x4C755275255C5C5C,  // 0x00015F68 
	0xAC72D4D443595D55, 0x4C090F3AB0970497, 0x140F943B5C39183F, 0x07073A09A19721B7,  // 0x00015F88 
	0x07BF6E975C127261, 0x3A3A313375212112, 0x02561B21398DA801, 0x313A335257466EA4,  // 0x00015FA8 
	0x24566ED45D6F013F, 0x07318C8C0968918F, 0xC93C1746123A7757, 0x595C099121683876,  // 0x00015FC8 
	0x14A73C886E0FD729, 0x573333AB68D83838, 0x1D92DD373B247414, 0x0F0FAB21E7040F38,  // 0x00015FE8 
	0x1D26C982D8910147, 0x3A3FAC32E7041C5C, 0xCFC38DB73BBA6478, 0x1A3F1C1272A16B0F,  // 0x00016008 
	0x470C58682E96BA3A, 0x501C8F1925A12B96, 0x01C39E3457BA290F, 0x761C1919A875112E,  // 0x00016028 
	0x0266BFAE1C773A38, 0x5CB391565FB6B675, 0x530C173B761A2452, 0x0F57231959B2B28B,  // 0x00016048 
	0x14020468AF2F5809, 0x115707013AD7B27F, 0x4F147576660F9E08, 0x8F7F7F7F31D7B277,  // 0x00016068 
	0x61180FAA24C95D82, 0x2F314F787425A577, 0x1572612F4F09370F, 0x31399E1853252977,  // 0x00016088 
	0x7761315158019F9F, 0x723958930E4DA507, 0x6D053A5593072505, 0x07373793B142259F,  // 0x000160A8 
	0x6BBB3F4D4753670A, 0x22CA2D4EBB064D9F, 0x6B6B220A69BE67BB, 0x00B8B1BB67060667,  // 0x000160C8 
	0x356B6BB8000000BB, 0x35355667008A6B35, 0x6B35B835282845C6, 0x353535282845C635,  // 0x000160E8 
};

u64 _spot04_room_0_tex_00016108[] = 
{
	0xEFFAEFEAEFEAE9EA, 0xFFEAE9EAF6E9E9F6, 0xDEDEDEDEDEE1F3F3, 0xDEE1E17D7DE1DE7D,  // 0x00016108 
	0x7D7D7D7D7DDEE8E8, 0xDEE8DE7D7DDE7D7D, 0x05000A7D7D7D7D7D, 0x7D7D7D7D7D00033E,  // 0x00016128 
	0x1F0E0600BE7D7D7D, 0x7D7D7D002700000A, 0x5055CE0000067D7D, 0x7D7D0D001600C7CA,  // 0x00016148 
	0x509138BB22272A41, 0x00000A2A3A7C589F, 0x5D3B1B473F000E18, 0x0ECA3ACF97940161,  // 0x00016168 
	0x111BA1150F420788, 0x51344F17A117098B, 0x046E2B18630209D4, 0x583434395D176A39,  // 0x00016188 
	0x11B918159F3A3458, 0x729CD36E61116A79, 0x1111313109721758, 0x7C7C396E6F172B2B,  // 0x000161A8 
	0x0F3A31610234C56E, 0x8D189037186A2C0F, 0x3131A3AB3F095D5D, 0xAB4F886361654692,  // 0x000161C8 
	0x0F706C07195D3934, 0x953C46AC31A76809, 0x11702B6131B7580C, 0x34373339373C3902,  // 0x000161E8 
	0x13762B7512118D71, 0x4FA22E4368C16A14, 0x38041311526E7C1D, 0x66601133BF686E02,  // 0x00016208 
	0x38B0043168320719, 0x2426040F19906517, 0x04682E02DB396374, 0x0C3C460F2F881188,  // 0x00016228 
	0x126894937C15634B, 0x073212612437175D, 0x33758D6307079315, 0x9CC7328D58514B8D,  // 0x00016248 
	0x1B98303082A36820, 0x1B2020A3A3A3A31B, 0x30203068308295A3, 0x8217C5901B953782,  // 0x00016268 
	0x2020202068307937, 0xC93CA7A73CA33730, 0x2020A346466820C9, 0x17A737373C3C3068,  // 0x00016288 
	0x20A3A3461B3717A3, 0x79373737792082A3, 0x20A3209537BD6A37, 0x203C3C3C20953737,  // 0x000162A8 
	0x7912A31B173C3C37, 0xA7A320201B37A7A7, 0x0917172C92921E1E, 0x7E7E23177E0F3D2C,  // 0x000162C8 
	0x4D44060B160A4E1F, 0x424D0341DA05CACA, 0x4D010E420E227743, 0x77535302CC7C611A,  // 0x000162E8 
	0x050105BE0E05250F, 0x5C0763155890A22B, 0x050A25BBBE695975, 0x1551189E3260955C,  // 0x00016308 
	0x2205250E00255975, 0x339F0C9EC537207F, 0x3A02290A74843A75, 0x8484024F5839C129,  // 0x00016328 
	0x31023A222559316E, 0x01A8514F3412374C, 0x705509477F291E90, 0x6FDA09247912393A,  // 0x00016348 
	0x709155533A400CC5, 0x15724F023C32D38B, 0x2E3B112531473F60, 0x9E9E65CF6E2E1572,  // 0x00016368 
	0x7097A11507010788, 0x9E3C15797965515D, 0x1B1B0407610209D4, 0xC3510237896A886A,  // 0x00016388 
	0x6AA1118404013446, 0x2F1D326809651711, 0x1311313A08021721, 0x095F60399323370C,  // 0x000163A8 
	0x553A0704090C6A46, 0x33478218021E370F, 0x092B040955556E58, 0x462D301593798292,  // 0x000163C8 
	0x0F70130F0F17AB4F, 0x95C7397C02A76809, 0x11702B61314617CC, 0xBDA7322E2FA73902,  // 0x000163E8 
	0x13762B754621589E, 0x90375D4368986A14, 0x3804131197795871, 0x26600433BF686E02,  // 0x00016408 
	0x38B00463685D150C, 0x243C6A0F19906517, 0x04682E0246D31507, 0x096E210F02461188,  // 0x00016428 
	0x1268948B7C325D39, 0x9037123A2F2004A2, 0x1268AC439F183988, 0x3037125224461788,  // 0x00016448 
	0x12758B8B15253746, 0x9809B7092B1BAA5D, 0x0475AC62047F2420, 0x985890B7681EDD6A,  // 0x00016468 
	0x526E528C8C090F98, 0x9837394630AADDA1, 0x8F21318C65172430, 0x30CDC55DCDDDF013,  // 0x00016488 
	0xA43A431209374FE0, 0x12203A9E07661787, 0x52B66846072432A2, 0x1B3734141409C992,  // 0x000164A8 
	0x4C083B043A096830, 0xA265511D65170C11, 0x4C3B12043165E098, 0x466A022937042F3A,  // 0x000164C8 
	0x7011763B090468A4, 0x629F4F82373C1307, 0x62210F3804B03B6E, 0x9F020C823426A48F,  // 0x000164E8 
};

u64 _spot04_room_0_tex_00016508[] = 
{
	0x9F9F074C31B05C8F, 0x573F726E4F97688F, 0x7429290447535C1C, 0x302B4703BA767729,  // 0x00016508 
	0x9F6129783A044338, 0xB6630C795898E78C, 0x774C531174251B38, 0x302C5F2D43B32564,  // 0x00016528 
	0x8B0C022564153138, 0x6484076A3930A204, 0x77594C0978D78F08, 0xE711031D64775276,  // 0x00016548 
	0x070225257F073A04, 0x7F63022B9E68CD4C, 0x77433A0FAE31B204, 0x85092D7859A52938,  // 0x00016568 
	0x3302025525930F6E, 0x2978BF093420CD59, 0x77430F0F201E0946, 0x376856A859532538,  // 0x00016588 
	0x70552B477F291E90, 0x6F5FC92D7912C73A, 0xD7ABAC17A7241104, 0x79791903254CA53A,  // 0x000165A8 
	0x709138783A400C32, 0x5307112D3C945877, 0xD7AB610CAA17B004, 0x0C1146A8A8292974,  // 0x000165C8 
	0x123B1B4731473F37, 0x7C2B6ECF97940129, 0x39310FAAC3A23704, 0x3A24092647B2A5B2,  // 0x000165E8 
	0x701BA1470F010788, 0x513C1504822B51AB, 0xC514757666BDC711, 0x1C59550731D7B2D7,  // 0x00016608 
	0x1B1B1E5F110209D4, 0xC351029526AA9537, 0x2D020468AF664F09, 0x0F573F013AD7B247,  // 0x00016628 
	0x1B3C257404013446, 0x2F1D326802AA7931, 0x530C173B761A2452, 0x0F57231959B2B204,  // 0x00016648 
	0x3B11017F08021721, 0x095F60394723A30C, 0x0266BFAE1C773A38, 0x5CB391565FB6B6A4,  // 0x00016668 
	0x553A0708020C6A46, 0x33478218531E6E24, 0x01C39E3457BA290F, 0x761C1919A8A5A4A4,  // 0x00016688 
	0x3131A33F3FAB5D21, 0x462D30533F3C3724, 0x470C58884396BA3A, 0x501C1C1925A10496,  // 0x000166A8 
	0x0F706C07192B340C, 0x95C746473FA7902F, 0xCFC38D901CBA6453, 0x1A3F1C1518B76B0F,  // 0x000166C8 
	0x11702B613146091D, 0x0C686E779FA7394F, 0xCFC3C90411914C25, 0x3A3F292930041C5C,  // 0x000166E8 
	0x13762B75326E03CF, 0x66A25D9F8D6ED331, 0x4B26DD370424253A, 0x0F0F4C0798040F38,  // 0x00016708 
	0x38041311326E5FCF, 0x26603933E68583DC, 0x808383852B0F0729, 0x570F1A59E0A13838,  // 0x00016728 
	0x38B004316894DACE, 0x2490A680838383E6, 0x80A6E6E5A6735943, 0x1A5C765768463876,  // 0x00016748 
	0x04122E31DB320732, 0x98A6E580ADE58385, 0x80F4A685A6959520, 0x4C8C8C520968918F,  // 0x00016768 
	0x12B79433602E30FB, 0x8583E5DC80E5A685, 0x73F4E5F2AD959520, 0x95E2390F0F466EA4,  // 0x00016788 
	0x12463275307380AD, 0x8380E5E28085E285, 0x7380A6F27373C120, 0xE2E2958075212112,  // 0x000167A8 
	0xB032307398738398, 0x8580E5E2838580A6, 0x9580E5F2DC737373, 0x8020958083A62194,  // 0x000167C8 
	0xF183ADF1A673DCE0, 0xDFE6A6E5858080E2, 0x80E685F2DC7380DC, 0x7373DC95ADA6F1F2,  // 0x000167E8 
	0xE2A683F1F1ADADDF, 0xDFA6A685E073240F, 0x0911A6803020DC80, 0x202080E27330E280,  // 0x00016808 
	0xA6858083A680ADDF, 0xDFA6A6ADCE662409, 0x553CC9BF8020E380, 0xF520807395208030,  // 0x00016828 
	0xA6309883E2E6AD85, 0xE0AD715124BF6611, 0x090854092EA5E3F5, 0x80DC95A295DCCD20,  // 0x00016848 
	0xE220E0A67380AD98, 0x6134932F3424BF92, 0x24A33C9204B6966D, 0x80DC73CD95E3DCCD,  // 0x00016868 
	0x98A6A6A673DC8DCD, 0x8C65075165170C2C, 0x24682692C543B3A5, 0x7A72CD2073E3DC20,  // 0x00016888 
	0xE7F2DFE21872D412, 0x620402613C042F3A, 0x0CC1C1DBCC521CBA, 0x56791529DCE3E320,  // 0x000168A8 
	0x68F14C31752E68A4, 0x629F4B82373C1307, 0x070279DB0262AF57, 0x23827C3A817730A3,  // 0x000168C8 
	0x6D9F4C7231B03B6E, 0x9F020C823426A48F, 0x783F3C04773A761C, 0x6BA33A051F64D74D,  // 0x000168E8 
};

u64 _spot04_room_0_tex_00016908[] = 
{
	0x64213A012BB05C8F, 0x573F726E4F97688F, 0x9F21297864044338, 0xB6530C795898E78C,  // 0x00016908 
	0x8B310225645F3138, 0x6407076A3930A204, 0x070225255F787F04, 0x299F022BC7A2CD4C,  // 0x00016928 
	0x33020229252591D4, 0x2547BF0934123059, 0x705509477F291E90, 0x6F5FC92D7912303A,  // 0x00016948 
	0x709138783A400CC5, 0x5307112D3C945877, 0x123B1B4731473F37, 0x7C2B6ECF97940129,  // 0x00016968 
	0x701BA1470F010788, 0x513C1504822B51AB, 0x1B1B1E5F110209D4, 0xC351029526AA9537,  // 0x00016988 
	0x1B3C257404013446, 0x2F1D326802AA7931, 0x3B11017F08021721, 0x095F60394723A30C,  // 0x000169A8 
	0x553A0708020C6A46, 0x33478218531E6E2F, 0x3131A33F3F095D21, 0x462D30533F3C4692,  // 0x000169C8 
	0x0F706C07195D310C, 0x95C746473FA76809, 0x11702B613198091D, 0x0C686E7709A73902,  // 0x000169E8 
	0x13762B75126E03CF, 0x66A25D4368986A14, 0x38041311526E5FCF, 0x26601133BF686E02,  // 0x00016A08 
	0x38B0046368945F19, 0x2426040F19906517, 0x04682E02DB2E5F74, 0x0C3C460F02461188,  // 0x00016A28 
	0x1268940746847453, 0x1468123A2F2004A2, 0x1268AC4384258417, 0x0C51125224461788,  // 0x00016A48 
	0x12758B8B15253A82, 0x3009B7092B1BAA5D, 0x0475AC62047F2420, 0x985890B7681EDD6A,  // 0x00016A68 
	0x526E528C8C090F98, 0x9837394630AADDA1, 0x8F18335C2B173A30, 0x30CDC55DCDDDF013,  // 0x00016A88 
	0x527F3197092419F9, 0x122058589C4AAA7E, 0x84157507020C05F8, 0x37D3519353031423,  // 0x00016AA8 
	0x386C4849C0C0ECEC, 0xC0C0494948133838, 0x1313C24848494949, 0x494848C213C2C2C2,  // 0x00016AC8 
	0xC2C2484848484848, 0x386C6CC2484848C2, 0x484849494848486C, 0x6C6C6CC248484848,  // 0x00016AE8 
	0xC04949494848C26C, 0x6C6C6CC2C2484849, 0x4949C0484848C26C, 0x386C386C48484849,  // 0x00016B08 
	0x4849494848484838, 0xAE38386C48484848, 0x76386CAEAE386C76, 0x1C91504848484876,  // 0x00016B28 
	0x2902022925250505, 0x0E0AFE49C06B4078, 0x025509937F293F05, 0x420F48496B250125,  // 0x00016B48 
	0x312B383A9F639307, 0xAE878791CA8B5115, 0x113C1B5831078448, 0x6C4976DA0772348B,  // 0x00016B68 
	0x111BA1180F3A1189, 0x486BA8DA310F9EAB, 0x081B11710FC24848, 0x5663070972C33737,  // 0x00016B88 
	0x083C51243849480F, 0x5371156E240C799E, 0xB9090F386C6C1953, 0x07188D3963098834,  // 0x00016BA8 
	0x1109484848C80A1D, 0x7CC7371802176E51, 0x9148494828630E4B, 0x582030532F928D07,  // 0x00016BC8 
	0x4849493553156F9C, 0x9E904625CE4F0C01, 0x49C06B6307D3026F, 0xC9686E29AA0C3AC0,  // 0x00016BE8 
	0xEE6B29631839474B, 0x92A25D29C351496C, 0xEDCA07937C04471D, 0x26C51129BFBC4948,  // 0x00016C08 
	0x077F55155D2E0314, 0x24243A1AC08E4876, 0x11943218DB7C532D, 0x142F1E4949EE6C41,  // 0x00016C28 
	0x4668948B46632505, 0x020F49E4C0EC0514, 0x6868AC438425840C, 0x1E49E4C0AF0EAA15,  // 0x00016C48 
	0x12758B8B8B017F55, 0xBCEBE4484D0CC334, 0x0475AC5231CACAEC, 0xE3EB26050224666A,  // 0x00016C68 
	0x576E528C0707ECEB, 0xEB3D4D180CCEDD04, 0x8F21318C0FC0FDEB, 0x87052D02CC4A861C,  // 0x00016C88 
	0xA4295C76C0E4FDC0, 0x050114140141197E, 0x52B65248ECC0485F, 0x3F054B411414C992,  // 0x00016CA8 
	0xC876ECE44938054D, 0x843F4D410C050C11, 0x1CC0E4C0AF0363CA, 0x0E5605141414023A,  // 0x00016CC8 
	0xE4EEC0484D057F59, 0x4E254D14050E14CA, 0xEEE46C0E05BA776D, 0xB106424D41AACAFC,  // 0x00016CE8 
};

u64 _spot04_room_0_tex_00016D08[] = 
{
	0x73145AD24A4E39CA, 0x7B938C177B553147, 0x10011001B49A83D6, 0x83D88C188C188C18,  // 0x00016D08 
	0x8C188C187B948396, 0x7B947B9483D66AD2, 0x7B967B947B948C18, 0x945873147B948418,  // 0x00016D28 
	0x735473546311949D, 0x94158B91418D6311, 0x7355735584198C19, 0x8C198C198C198C19,  // 0x00016D48 
	0x8C1994998C199499, 0x8C597B9563115AD1, 0x62D173156B137355, 0x73557B958C199459,  // 0x00016D68 
	0x841A945A9C9AA4DD, 0x8BD37B1141CD9D1D, 0x9D1D9D1DAD5FB5E5, 0xBDA5B5E7B5E7BE29,  // 0x00016D88 
	0xBE29C66BBE29BE29, 0xC669B5E7B5E5A4DD, 0xA4DDA4DDAD1FB5A3, 0xAD1FA4DFB5A3A51F,  // 0x00016DA8 
	0xA4DCA4DDAD61B5A1, 0x7B51B55F7B95B561, 0xBDE3BDE3B5A3A51F, 0xB5E5BE27BE27C669,  // 0x00016DC8 
	0xC669C6ABBDE5B5A1, 0xAD1FA4DDB563BDE5, 0xBDE3BDE3BDA1B5A1, 0xBDE3BDE3BDE5AD5F,  // 0x00016DE8 
	0x528C52CF9CDDA51D, 0x8BD59BD5734F398B, 0x9D1D9D1DB5A3B5A3, 0x9CDBA4DDA4DDA4DD,  // 0x00016E08 
	0xAD1FB5A3A4DDB5A1, 0x9499B5A3B5A3B5A1, 0xA4DDB5A18C59A4DD, 0xA4DDA4DDAD5FA4DD,  // 0x00016E28 
	0xA51C4A0F83D7A51F, 0x941793D56ACF314B, 0xA51FA51FB5A3AD61, 0x841783D983D99C9B,  // 0x00016E48 
	0x9C9BAD5FB5A3B5A3, 0xA4DDB5A19459AD5F, 0x8C59B5A3A51F9459, 0x945BA51FAD618C9B,  // 0x00016E68 
	0xA51E5AD09499A4DD, 0x9C59AC5749CB398B, 0xA51FA51F9C9BA51F, 0xA4DDA51FA51F9CDB,  // 0x00016E88 
	0xA4DDAD1F9C9B8419, 0x9C9B8397A51D9CDB, 0x7B959C9B8C198C59, 0x9C9B9C9B8C5994DB,  // 0x00016EA8 
	0x631083D78C598C19, 0x7B959C179C1B3149, 0x9C9B8C598C19945B, 0x949BA51DA51DAD1F,  // 0x00016EC8 
	0x9D1D94997BD79C9B, 0x84198C598C599C9B, 0x7B958C197B957B95, 0x5AD1841963116B53,  // 0x00016EE8 
	0x84187B957B958419, 0x739593D5A49F41C9, 0xA521A521949D949B, 0x9CDDA4DDA4DD9C9B,  // 0x00016F08 
	0x9C9B83D79C9B9499, 0x83D783D77B95945B, 0x7B97739573956311, 0x841B841B7B957355,  // 0x00016F28 
	0xC668A5218C5D9CDD, 0x9CDD6ACF7B554A0D, 0x9CDF9CDF945B8419, 0x841984198419945B,  // 0x00016F48 
	0x949D845B8C5D841B, 0x7C198C5D7C197BD9, 0x7BD773977BD77397, 0x7399739963134A4F,  // 0x00016F68 
	0x739673957BD7841B, 0x84196B1183978397, 0x5AD3949D94DF83D7, 0x84198C5B8419841B,  // 0x00016F88 
	0x8C5D841B7BD77395, 0x739573976B536B55, 0x6B5562D36B536B53, 0x6B5373976B576B55,  // 0x00016FA8 
	0x4A4E5AD3841B7B97, 0x84196B5573158397, 0x524F945B8C5D841B, 0x7BD77BD97BD97C19,  // 0x00016FC8 
	0x7BD77BD96B537397, 0x73997395739762D3, 0x52CF62D362D36313, 0x5AD3631363155AD3,  // 0x00016FE8 
	0x318A529173957B95, 0x841B8C9D5A8F941D, 0x524F4A0B845D7BD7, 0x7C1973D973D97397,  // 0x00017008 
	0x73D9739773976B53, 0x6B556B5552CF6B53, 0x5AD15A8F63155AD3, 0x631563575B155B15,  // 0x00017028 
	0x398A7BD6318A41CD, 0x39CB39CB4A4D4A0D, 0x41CB524D5A4F420D, 0x39CB318B318B420D,  // 0x00017048 
	0x3989420D3989420D, 0x318B398931493149, 0x318B29492907318B, 0x318B318B318B2907,  // 0x00017068 
	0x318A39CC6B566356, 0x62D46B1418812947, 0x20C308013988420C, 0x420C314831482106,  // 0x00017088 
	0x2946314839CA2106, 0x18C6210621062906, 0x2106210629062906, 0x2946294618C42946,  // 0x000170A8 
	0xC77C7BD8420E318A, 0x73525A4D62CD3989, 0x18C11881318A318A, 0x318A39883988420C,  // 0x000170C8 
	0x420C314821062946, 0x314839CA210618C6, 0x2106210629062106, 0x2106290629062946,  // 0x000170E8 
};

u64 _spot04_room_0_tex_00017108[] = 
{
	0xE724E724E724E724, 0xE724E724E724E724, 0xE724E724E724E724, 0xE724E724E724E724,  // 0x00017108 
	0xE724E724E720E722, 0xE724E724E724E724, 0xE724E724E724E724, 0xE724E724E724E724,  // 0x00017128 
	0x8CC38CC38CC38CC3, 0x8CC38CC38CC38CC3, 0x8CC38CC38CC38CC3, 0x8CC38CC38CC38CC3,  // 0x00017148 
	0x8CC384836BC18441, 0x8CC38CC38CC38CC3, 0x8CC38CC38CC38CC3, 0x8CC38CC38CC38C83,  // 0x00017168 
	0x7C417C017C017C01, 0x7C0173C173C17C41, 0x7C01740174017C01, 0x7401740174017401,  // 0x00017188 
	0x73C173C139C15281, 0x5AC16B4173C17C01, 0x84417C417C017C41, 0x7C017C017C017401,  // 0x000171A8 
	0x7C018C459CD37C01, 0x7C0173818C058C45, 0x8C8984457C018445, 0x7C037C4584494A81,  // 0x000171C8 
	0x73C18C8F39C14A41, 0x4A815AC16B817C01, 0x8C858C8B84438443, 0x73C17C03848994D1,  // 0x000171E8 
	0x94919489A4D18C45, 0x8C4784059CD19CD3, 0xA5158C8B844594D1, 0x948D8C8B9D197C01,  // 0x00017208 
	0x84499CD731814A41, 0x52815B0184037C01, 0x8C45A5138C8B8445, 0x73C17C058C8BA519,  // 0x00017228 
	0xB5A1A4D5A4CF9447, 0xA4CFA513AD5DAD5D, 0xAD5D94D194CDA559, 0x9D15A519AD5F4A81,  // 0x00017248 
	0xA519AD5F39C15281, 0x5AC173439C87948B, 0xA511B59DAD5B9CD3, 0x7C098C4D94D1AD5D,  // 0x00017268 
	0xAD5FAD5FB5A1B5A1, 0xA515A511B59FB5A1, 0xADA1A55BA55BADA1, 0xAD61AD5FA51DADA1,  // 0x00017288 
	0xBDE1A51D31815241, 0x63058C0DB59FB5E1, 0xB5E1B5A1B5A1B5A1, 0xB5A1AD61AD5DADA1,  // 0x000172A8 
	0x7C15841584558C57, 0x8C57845784578C57, 0x8C578C578C578C57, 0x8C57841584577C15,  // 0x000172C8 
	0x8415739139C152CD, 0x6B5184158C978C57, 0x8415841584158415, 0x8415841584157C15,  // 0x000172E8 
	0x8414841484148414, 0x8414841484148414, 0x8414841484146B4A, 0x2900188129012901,  // 0x00017308 
	0x31412901290118C1, 0x18806B4E84148414, 0x8414841484148414, 0x8414841484148414,  // 0x00017328 
	0x0840084008400840, 0x0840084008400840, 0x108218C429482948, 0x734A418141C34A01,  // 0x00017348 
	0x39414A054A052901, 0x524A18C410841084, 0x1082084008400840, 0x0840084008400840,  // 0x00017368 
	0x0842084208420840, 0x0840084008400840, 0x108221062948318A, 0x83D05A434A054181,  // 0x00017388 
	0x5A87524752473143, 0x524A18C410820842, 0x0840084008400842, 0x0842084208420842,  // 0x000173A8 
	0x8418845884188418, 0x8418841884188418, 0x8418949A949C9CDE, 0x8BD273035A875245,  // 0x000173C8 
	0x734D628B5A893985, 0x42087C1684188418, 0x8418841884188418, 0x8418841884588418,  // 0x000173E8 
	0x8414841484148414, 0x8414841484148414, 0x8414841484148414, 0x730E6AC162CB7B91,  // 0x00017408 
	0x83D16B0D6ACB3143, 0x18C46B4E84148414, 0x8414841484148414, 0x8414841484148414,  // 0x00017428 
	0x0840084008400840, 0x0840084008400840, 0x084218C418C43188, 0x730C7B8F7B8F8BD3,  // 0x00017448 
	0x8C157B4F6B0D41C9, 0x39C8210621082106, 0x18C4108408420842, 0x0842108208420840,  // 0x00017468 
	0x0840084008400840, 0x0840084008400840, 0x084218C4294839CA, 0x941483D1839183D1,  // 0x00017488 
	0x8C138C15734D4A0B, 0x41C818C418C418C4, 0x1084084208400840, 0x0840084008400840,  // 0x000174A8 
	0x0840084008400840, 0x0840084008400840, 0x108218C429482948, 0x9414941583917B8F,  // 0x000174C8 
	0x8BD383D1734D5A8D, 0x524A18C410841084, 0x1082084008400840, 0x0840084008400840,  // 0x000174E8 
	0x0842084208420840, 0x0840084008400840, 0x108221062948318A, 0x9C568C158391734D,  // 0x00017508 
	0x83D17B4B6B095A8D, 0x524A18C410820842, 0x0840084008400842, 0x0842084208420842,  // 0x00017528 
	0x8418734473446B44, 0x8418841884188418, 0x8418949A949C9CDE, 0x8BD494157B916B09,  // 0x00017548 
	0x734973495A4141C1, 0x42087C1684188418, 0x8418841884188418, 0x8418841884588418,  // 0x00017568 
	0x7BC17BC17BC17BC1, 0x73C1738173817381, 0x7BC17C0173C16B81, 0x6B416B415AC1BDE7,  // 0x00017588 
	0xBDE7B5DD9D0B8CC3, 0x8C83844184418481, 0x8C81844D8C818443, 0x84437C0384417C01,  // 0x000175A8 
	0x73C37BC384038C49, 0x7BC573836B416B41, 0x7C0984097C0583C5, 0x7B8552814A419CDB,  // 0x000175C8 
	0x845594998C55840D, 0x6B816B816BC173C1, 0x73C17BC574017B83, 0x73836B4373856B43,  // 0x000175E8 
	0x84098C8BA4D39CD1, 0x8C4B948D83C5948F, 0xA519A5178C499491, 0x83C573874A81AD5F,  // 0x00017608 
	0x8C594A498C999CDB, 0x844F9493A55D7401, 0x6B8173C38C0583C5, 0x840D840D844F7385,  // 0x00017628 
	0x9491AD5BAD5BAD5B, 0xA4D3A515A5158C45, 0xAD5DA55B948F9CD5, 0x83C57BCB4A419CDB,  // 0x00017648 
	0x94999D1B9CDBA51D, 0x9CD79CD7A51BB5A1, 0x8C917BC394479447, 0x94D594959CD78C4F,  // 0x00017668 
	0xA559BDE3BDE3BDE1, 0xB5E1BDE1BDE1A513, 0xB5A1AD5DA519A51D, 0x9CDB84117343AD5F,  // 0x00017688 
	0x8C594A498C999CDB, 0x9CD9A51DA55DAD5F, 0xAD5F9D17A4D3B59F, 0xB5A1A51BB5A1AD5D,  // 0x000176A8 
	0xB5A1B5A1B5E1BDE1, 0xB5A1B5E1B5E1B5A1, 0xB59FAD5DA51DA51B, 0x94D994996B439CDB,  // 0x000176C8 
	0x94999D1B9CDBA51D, 0xA55DAD5FAD5FB5A1, 0xAD9FAD9FAD9FB5A1, 0xB5A1AD5FB5A1AD9F,  // 0x000176E8 
	0x841584158C578455, 0x8455841584558415, 0x841584157BD57C15, 0x7BD36B4F5ACD8C97,  // 0x00017708 
	0x739373D37BD37BD3, 0x73917BD37BD37BD3, 0x7BD37BD37C157C15, 0x7C157BD37BD38415,  // 0x00017728 
	0x8414841484148414, 0x8414841484148414, 0x84147BD473D273D2, 0x41C8080118832905,  // 0x00017748 
	0x3187314521030841, 0x39C8841484148414, 0x8414841484148414, 0x8414841484148414,  // 0x00017768 
	0x0840084008400840, 0x0840084008400840, 0x1084294839CA318A, 0xB51818832905528D,  // 0x00017788 
	0x5A8D41C741C718C1, 0x5A8C318A318A318A, 0x294818C410840842, 0x0842084008400840,  // 0x000177A8 
	0x0840084008400840, 0x0840084008400840, 0x10822106318A420E, 0xB518314341C75A8D,  // 0x000177C8 
	0x5A8D420941C72903, 0x5A8C318A318A2106, 0x2948108410820842, 0x0840084008400840,  // 0x000177E8 
	0x0840084008400840, 0x0840084008400840, 0x1084210639CA4A4E, 0xB518318342074A07,  // 0x00017808 
	0x5A8B41C731452903, 0x5A8C210621062106, 0x1084084208400840, 0x0840084008400840,  // 0x00017828 
	0x0840084008400840, 0x0840084008400840, 0x108218C42948318A, 0x734C3181294131C5,  // 0x00017848 
	0x3983290318C318C1, 0x5A8C108410821082, 0x0840084008400840, 0x0840084008400840,  // 0x00017868 
	0x0840084008400840, 0x0840084008400840, 0x0840108218C42106, 0xACD852C152C12141,  // 0x00017888 
	0x73C5210310814201, 0x5A8C084208420840, 0x0840084008400840, 0x0840084008400840,  // 0x000178A8 
	0x0840084008400840, 0x0840084008400840, 0x0840084008400840, 0x73806B8752C173C5,  // 0x000178C8 
	0x5AC14A414A413181, 0x39C0084008400840, 0x0840084008400840, 0x0840084008400840,  // 0x000178E8 
};

static u8 unaccounted17908[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx_t _spot04_room_0_vertices_00017910[7] = 
{
	 { 420, -12, -497, 0, 512, 1024, 2, 10, 119, 255 }, // 0x00017910
	 { 420, 270, -518, 0, 512, 155, 1, 83, 86, 255 }, // 0x00017920
	 { 380, 270, -517, 0, 0, 155, 1, 83, 86, 255 }, // 0x00017930
	 { 380, -12, -496, 0, 0, 1024, 2, 10, 119, 255 }, // 0x00017940
	 { 420, 270, -518, 0, 512, 155, 1, 83, 86, 255 }, // 0x00017950
	 { 419, 274, -565, 0, 512, -127, 0, 119, 14, 255 }, // 0x00017960
	 { 379, 274, -564, 0, 0, -127, 0, 119, 14, 255 }, // 0x00017970
};

Vtx_t _spot04_room_0_vertices_00017980[29] = 
{
	 { 1151, -12, -240, 0, 2653, 810, 0, 120, 0, 255 }, // 0x00017980
	 { 1293, -12, -1, 0, 1657, 2287, 0, 120, 0, 255 }, // 0x00017990
	 { 1392, -12, -283, 0, 3566, 2088, 0, 120, 0, 255 }, // 0x000179A0
	 { 914, -12, -37, 0, 1024, 0, 0, 120, 0, 255 }, // 0x000179B0
	 { 859, -12, 80, 0, 0, 0, 0, 120, 0, 255 }, // 0x000179C0
	 { 1306, -12, 212, 0, 467, 2946, 0, 120, 0, 255 }, // 0x000179D0
	 { 873, -12, 179, 0, -536, 353, 0, 120, 0, 255 }, // 0x000179E0
	 { 873, -12, 259, 0, -883, 518, 0, 120, 0, 255 }, // 0x000179F0
	 { 931, -12, 394, 0, -1271, 1117, 0, 120, 0, 255 }, // 0x00017A00
	 { 1392, -12, 445, 0, -644, 4093, 0, 120, 0, 255 }, // 0x00017A10
	 { 1392, -12, 283, 0, 289, 3643, 0, 120, 0, 255 }, // 0x00017A20
	 { 677, -12, 12, 0, 768, 0, 0, 120, 0, 255 }, // 0x00017A30
	 { 661, -12, 88, 0, 256, 0, 0, 120, 0, 255 }, // 0x00017A40
	 { 859, -12, 80, 0, 0, 1024, 0, 120, 0, 255 }, // 0x00017A50
	 { 914, -12, -37, 0, 1024, 1024, 0, 120, 0, 255 }, // 0x00017A60
	 { 565, -12, -53, 0, 1024, 0, 0, 120, 0, 255 }, // 0x00017A70
	 { 454, -12, 22, 0, 0, 0, 0, 120, 0, 255 }, // 0x00017A80
	 { 661, -12, 88, 0, 256, 1024, 0, 120, 0, 255 }, // 0x00017A90
	 { 677, -12, 12, 0, 768, 1024, 0, 120, 0, 255 }, // 0x00017AA0
	 { 222, -12, -399, 0, -1228, -1667, 0, 120, 0, 255 }, // 0x00017AB0
	 { 504, -12, -528, 0, 580, -2491, 0, 120, 0, 255 }, // 0x00017AC0
	 { 259, -12, -524, 0, -986, -2470, 0, 120, 0, 255 }, // 0x00017AD0
	 { 618, -12, -421, 0, 1306, -1809, 0, 120, 0, 255 }, // 0x00017AE0
	 { 691, -12, -247, 0, 1775, -694, 0, 120, 0, 255 }, // 0x00017AF0
	 { 110, -12, -243, 0, -1940, -670, 0, 120, 0, 255 }, // 0x00017B00
	 { 565, -12, -53, 0, 1024, 1024, 0, 120, 0, 255 }, // 0x00017B10
	 { 454, -12, 22, 0, 0, 1024, 0, 120, 0, 255 }, // 0x00017B20
	 { 302, -12, 62, 0, -967, 1283, 0, 120, 0, 255 }, // 0x00017B30
	 { 103, -12, -54, 0, -1989, 541, 0, 120, 0, 255 }, // 0x00017B40
};

Vtx_t _spot04_room_0_vertices_00017B50[8] = 
{
	 { 273, -12, -691, 0, 0, 0, 0, 0, 0, 0 }, // 0x00017B50
	 { 1626, -12, -198, 0, 0, 0, 0, 0, 0, 0 }, // 0x00017B60
	 { 273, 274, -691, 0, 0, 0, 0, 0, 0, 0 }, // 0x00017B70
	 { 1626, 274, -198, 0, 0, 0, 0, 0, 0, 0 }, // 0x00017B80
	 { 2, -12, 56, 0, 0, 0, 0, 0, 0, 0 }, // 0x00017B90
	 { 1355, -12, 548, 0, 0, 0, 0, 0, 0, 0 }, // 0x00017BA0
	 { 2, 274, 56, 0, 0, 0, 0, 0, 0, 0 }, // 0x00017BB0
	 { 1355, 274, 548, 0, 0, 0, 0, 0, 0, 0 }, // 0x00017BC0
};

Gfx _spot04_room_0_dlist_00017BD0[] =
{
	gsDPPipeSync(), // 0x00017BD0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00017BD8
	gsSPVertex(_spot04_room_0_vertices_00017B50, 8, 0), // 0x00017BE0
	gsSPCullDisplayList(0, 7), // 0x00017BE8
	gsDPPipeSync(), // 0x00017BF0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00017BF8
	gsDPPipeSync(), // 0x00017C00
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00017C08
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00017C10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00018A90), // 0x00017C18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 15, 0, 5, 14), // 0x00017C20
	gsDPLoadSync(), // 0x00017C28
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00017C30
	gsDPPipeSync(), // 0x00017C38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 15, 0, 5, 14), // 0x00017C40
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00017C48
	gsDPTileSync(), // 0x00017C50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 1, 0, 0, 5, 14, 0, 5, 15), // 0x00017C58
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00017C60
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, COMBINED, 0, PRIMITIVE, 0), // 0x00017C68
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00017C70
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x00017C78
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00017C80
	gsDPSetPrimColor(0, 0, 255, 255, 255, 99), // 0x00017C88
	gsSPDisplayList(0x08000000), // 0x00017C90
	gsSPVertex(_spot04_room_0_vertices_00017910, 7, 0), // 0x00017C98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00017CA0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 2, 0), // 0x00017CA8
	gsDPPipeSync(), // 0x00017CB0
	gsSPDisplayList(0x09000000), // 0x00017CB8
	gsSPVertex(_spot04_room_0_vertices_00017980, 29, 0), // 0x00017CC0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00017CC8
	gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0), // 0x00017CD0
	gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0), // 0x00017CD8
	gsSP2Triangles(7, 8, 5, 0, 8, 9, 5, 0), // 0x00017CE0
	gsSP2Triangles(9, 10, 5, 0, 11, 12, 13, 0), // 0x00017CE8
	gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0), // 0x00017CF0
	gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0), // 0x00017CF8
	gsSP2Triangles(19, 22, 20, 0, 19, 23, 22, 0), // 0x00017D00
	gsSP2Triangles(19, 24, 23, 0, 24, 25, 23, 0), // 0x00017D08
	gsSP2Triangles(24, 26, 25, 0, 24, 27, 26, 0), // 0x00017D10
	gsSP1Triangle(24, 28, 27, 0), // 0x00017D18
	gsSPEndDisplayList(), // 0x00017D20
};

Vtx_t _spot04_room_0_vertices_00017D28[4] = 
{
	 { 51, -80, 920, 0, 2048, 0, 0, 120, 0, 255 }, // 0x00017D28
	 { 51, -80, 760, 0, 2048, 2048, 0, 118, 18, 255 }, // 0x00017D38
	 { -109, -80, 760, 0, 0, 2048, 0, 118, 18, 255 }, // 0x00017D48
	 { -109, -80, 920, 0, 0, 0, 0, 120, 0, 255 }, // 0x00017D58
};

Vtx_t _spot04_room_0_vertices_00017D68[6] = 
{
	 { 51, -80, 760, 0, 2048, 4096, 0, 118, 18, 255 }, // 0x00017D68
	 { 72, 0, 500, 0, 2048, 1024, 0, 118, 18, 255 }, // 0x00017D78
	 { -97, 0, 500, 0, 0, 1024, 0, 118, 18, 255 }, // 0x00017D88
	 { -109, -80, 760, 0, 0, 4096, 0, 118, 18, 255 }, // 0x00017D98
	 { 114, 0, 349, 0, 2048, -2048, 0, 120, 0, 255 }, // 0x00017DA8
	 { -46, 0, 309, 0, 0, -2048, 0, 120, 0, 255 }, // 0x00017DB8
};

Vtx_t _spot04_room_0_vertices_00017DC8[4] = 
{
	 { 114, 0, 349, 0, 2048, 0, 0, 120, 0, 255 }, // 0x00017DC8
	 { 154, 0, 189, 0, 0, 0, 0, 120, 0, 255 }, // 0x00017DD8
	 { -6, 0, 149, 0, 0, 2048, 0, 120, 0, 255 }, // 0x00017DE8
	 { -46, 0, 309, 0, 2048, 2048, 0, 120, 0, 255 }, // 0x00017DF8
};

Vtx_t _spot04_room_0_vertices_00017E08[8] = 
{
	 { -46, 0, 309, 0, 2048, -2048, 0, 120, 0, 255 }, // 0x00017E08
	 { -6, 0, 149, 0, 0, -2048, 0, 120, 0, 255 }, // 0x00017E18
	 { -487, 0, -249, 0, 0, 10240, 0, 120, 0, 255 }, // 0x00017E28
	 { -520, 0, -117, 0, 2048, 10240, 14, 118, 248, 255 }, // 0x00017E38
	 { 707, 0, 399, 0, 2048, -2048, 0, 120, 0, 255 }, // 0x00017E48
	 { 666, 0, 255, 0, 0, -2048, 1, 119, 254, 255 }, // 0x00017E58
	 { 154, 0, 189, 0, 0, 4096, 0, 120, 0, 255 }, // 0x00017E68
	 { 114, 0, 349, 0, 2048, 4096, 0, 120, 0, 255 }, // 0x00017E78
};

Vtx_t _spot04_room_0_vertices_00017E88[4] = 
{
	 { 666, 0, 255, 0, 0, 2048, 1, 119, 254, 255 }, // 0x00017E88
	 { 707, 0, 399, 0, 2048, 2048, 0, 120, 0, 255 }, // 0x00017E98
	 { 851, 0, 370, 0, 2048, 0, 0, 120, 0, 255 }, // 0x00017EA8
	 { 814, 0, 223, 0, 0, 0, 0, 120, 0, 255 }, // 0x00017EB8
};

Vtx_t _spot04_room_0_vertices_00017EC8[4] = 
{
	 { -520, 0, -117, 0, 2048, 0, 14, 118, 248, 255 }, // 0x00017EC8
	 { -487, 0, -249, 0, 0, 0, 0, 120, 0, 255 }, // 0x00017ED8
	 { -701, 0, -301, 0, 0, 2048, 251, 119, 2, 255 }, // 0x00017EE8
	 { -734, 0, -145, 0, 2048, 2048, 250, 118, 239, 255 }, // 0x00017EF8
};

Vtx_t _spot04_room_0_vertices_00017F08[4] = 
{
	 { -734, 0, -145, 0, 0, 0, 250, 118, 239, 255 }, // 0x00017F08
	 { -752, 120, 176, 0, 0, 4096, 3, 118, 235, 255 }, // 0x00017F18
	 { -592, 120, 196, 0, 2048, 4096, 3, 118, 235, 255 }, // 0x00017F28
	 { -520, 0, -117, 0, 2048, 0, 14, 118, 248, 255 }, // 0x00017F38
};

Vtx_t _spot04_room_0_vertices_00017F48[8] = 
{
	 { -752, 120, 176, 0, 0, 2048, 3, 118, 235, 255 }, // 0x00017F48
	 { -785, 120, 332, 0, 0, 0, 0, 120, 0, 255 }, // 0x00017F58
	 { -626, 120, 352, 0, 2048, 0, 0, 120, 0, 255 }, // 0x00017F68
	 { -592, 120, 196, 0, 2048, 2048, 3, 118, 235, 255 }, // 0x00017F78
	 { -734, 0, -145, 0, 2048, 2048, 250, 118, 239, 255 }, // 0x00017F88
	 { -701, 0, -301, 0, 0, 2048, 251, 119, 2, 255 }, // 0x00017F98
	 { -873, -18, -319, 0, 0, 0, 244, 119, 253, 255 }, // 0x00017FA8
	 { -890, -16, -163, 0, 2048, 0, 244, 119, 253, 255 }, // 0x00017FB8
};

Vtx_t _spot04_room_0_vertices_00017FC8[8] = 
{
	 { -850, -80, -383, 0, 0, 0, 0, 0, 0, 0 }, // 0x00017FC8
	 { 894, -80, 252, 0, 0, 0, 0, 0, 0, 0 }, // 0x00017FD8
	 { -850, 120, -383, 0, 0, 0, 0, 0, 0, 0 }, // 0x00017FE8
	 { 894, 120, 252, 0, 0, 0, 0, 0, 0, 0 }, // 0x00017FF8
	 { -1182, -80, 530, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018008
	 { 562, -80, 1164, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018018
	 { -1182, 120, 530, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018028
	 { 562, 120, 1164, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018038
};

Gfx _spot04_room_0_dlist_00018048[] =
{
	gsDPPipeSync(), // 0x00018048
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00018050
	gsSPVertex(_spot04_room_0_vertices_00017FC8, 8, 0), // 0x00018058
	gsSPCullDisplayList(0, 7), // 0x00018060
	gsDPPipeSync(), // 0x00018068
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00018070
	gsDPPipeSync(), // 0x00018078
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00018080
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00018088
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00019A90), // 0x00018090
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00018098
	gsDPLoadSync(), // 0x000180A0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000180A8
	gsDPPipeSync(), // 0x000180B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x000180B8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000180C0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x000180C8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104F50), // 0x000180D0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000180D8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000180E0
	gsDPSetPrimColor(0, 0, 155, 140, 52, 179), // 0x000180E8
	gsSPVertex(_spot04_room_0_vertices_00017D28, 4, 0), // 0x000180F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000180F8
	gsDPPipeSync(), // 0x00018100
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000F218), // 0x00018108
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 2, 6, 0), // 0x00018110
	gsDPLoadSync(), // 0x00018118
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00018120
	gsDPPipeSync(), // 0x00018128
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 2, 6, 0), // 0x00018130
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00018138
	gsSPVertex(_spot04_room_0_vertices_00017D68, 6, 0), // 0x00018140
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00018148
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00018150
	gsDPPipeSync(), // 0x00018158
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00019290), // 0x00018160
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 2, 6, 0), // 0x00018168
	gsDPLoadSync(), // 0x00018170
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00018178
	gsDPPipeSync(), // 0x00018180
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 2, 6, 0), // 0x00018188
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00018190
	gsSPVertex(_spot04_room_0_vertices_00017DC8, 4, 0), // 0x00018198
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000181A0
	gsDPPipeSync(), // 0x000181A8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000F218), // 0x000181B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 2, 6, 0), // 0x000181B8
	gsDPLoadSync(), // 0x000181C0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000181C8
	gsDPPipeSync(), // 0x000181D0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 2, 6, 0), // 0x000181D8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000181E0
	gsSPVertex(_spot04_room_0_vertices_00017E08, 8, 0), // 0x000181E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000181F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000181F8
	gsDPPipeSync(), // 0x00018200
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00019A90), // 0x00018208
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00018210
	gsDPLoadSync(), // 0x00018218
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00018220
	gsDPPipeSync(), // 0x00018228
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00018230
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00018238
	gsSPVertex(_spot04_room_0_vertices_00017E88, 4, 0), // 0x00018240
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00018248
	gsDPPipeSync(), // 0x00018250
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00019290), // 0x00018258
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 2, 6, 0), // 0x00018260
	gsDPLoadSync(), // 0x00018268
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00018270
	gsDPPipeSync(), // 0x00018278
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 2, 6, 0), // 0x00018280
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00018288
	gsSPVertex(_spot04_room_0_vertices_00017EC8, 4, 0), // 0x00018290
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00018298
	gsDPPipeSync(), // 0x000182A0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot04_scene_tex_0000F218), // 0x000182A8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 2, 6, 0), // 0x000182B0
	gsDPLoadSync(), // 0x000182B8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000182C0
	gsDPPipeSync(), // 0x000182C8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 2, 6, 0), // 0x000182D0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000182D8
	gsSPVertex(_spot04_room_0_vertices_00017F08, 4, 0), // 0x000182E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000182E8
	gsDPPipeSync(), // 0x000182F0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot04_room_0_tex_00019A90), // 0x000182F8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00018300
	gsDPLoadSync(), // 0x00018308
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00018310
	gsDPPipeSync(), // 0x00018318
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00018320
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00018328
	gsSPVertex(_spot04_room_0_vertices_00017F48, 8, 0), // 0x00018330
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00018338
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00018340
	gsSPEndDisplayList(), // 0x00018348
};

Vtx_t _spot04_room_0_vertices_00018350[4] = 
{
	 { 76, -76, 1050, 0, 0, 2048, 207, 64, 167, 255 }, // 0x00018350
	 { 41, -76, 1069, 0, 2048, 2048, 207, 64, 167, 255 }, // 0x00018360
	 { 51, -42, 1088, 0, 2048, 0, 207, 64, 167, 255 }, // 0x00018370
	 { 86, -42, 1069, 0, 0, 0, 207, 64, 167, 255 }, // 0x00018380
};

Vtx_t _spot04_room_0_vertices_00018390[4] = 
{
	 { 93, -76, 1040, 0, 0, 1024, 207, 64, 167, 255 }, // 0x00018390
	 { 76, -76, 1050, 0, 1024, 1024, 207, 64, 167, 255 }, // 0x000183A0
	 { 81, -59, 1059, 0, 1024, 0, 207, 64, 167, 255 }, // 0x000183B0
	 { 98, -59, 1050, 0, 0, 0, 207, 64, 167, 255 }, // 0x000183C0
};

Vtx_t _spot04_room_0_vertices_000183D0[4] = 
{
	 { 109, -46, 1053, 0, 0, 1024, 207, 64, 167, 255 }, // 0x000183D0
	 { 92, -46, 1063, 0, 1024, 1024, 207, 64, 167, 255 }, // 0x000183E0
	 { 97, -29, 1072, 0, 1024, 0, 207, 64, 167, 255 }, // 0x000183F0
	 { 115, -29, 1063, 0, 0, 0, 207, 64, 167, 255 }, // 0x00018400
};

Vtx_t _spot04_room_0_vertices_00018410[8] = 
{
	 { 99, -76, 1035, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018410
	 { 115, -76, 1063, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018420
	 { 99, -29, 1035, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018430
	 { 115, -29, 1063, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018440
	 { 40, -76, 1069, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018450
	 { 56, -76, 1097, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018460
	 { 40, -29, 1069, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018470
	 { 56, -29, 1097, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018480
};

Gfx _spot04_room_0_dlist_00018490[] =
{
	gsDPPipeSync(), // 0x00018490
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00018498
	gsSPVertex(_spot04_room_0_vertices_00018410, 8, 0), // 0x000184A0
	gsSPCullDisplayList(0, 7), // 0x000184A8
	gsDPPipeSync(), // 0x000184B0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000184B8
	gsDPPipeSync(), // 0x000184C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000184C8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000184D0
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0001A490), // 0x000184D8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x000184E0
	gsDPLoadSync(), // 0x000184E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000184F0
	gsDPPipeSync(), // 0x000184F8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00018500
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00018508
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00018510
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104B50), // 0x00018518
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00018520
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00018528
	gsDPSetPrimColor(0, 0, 225, 228, 156, 191), // 0x00018530
	gsSPVertex(_spot04_room_0_vertices_00018350, 4, 0), // 0x00018538
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00018540
	gsDPPipeSync(), // 0x00018548
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0001AE90), // 0x00018550
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00018558
	gsDPLoadSync(), // 0x00018560
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00018568
	gsDPPipeSync(), // 0x00018570
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00018578
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00018580
	gsSPVertex(_spot04_room_0_vertices_00018390, 4, 0), // 0x00018588
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00018590
	gsDPPipeSync(), // 0x00018598
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0001AC90), // 0x000185A0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x000185A8
	gsDPLoadSync(), // 0x000185B0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000185B8
	gsDPPipeSync(), // 0x000185C0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x000185C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000185D0
	gsSPVertex(_spot04_room_0_vertices_000183D0, 4, 0), // 0x000185D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000185E0
	gsSPEndDisplayList(), // 0x000185E8
};

Vtx_t _spot04_room_0_vertices_000185F0[20] = 
{
	 { 1024, 0, 565, 0, 512, 1024, 0, 120, 0, 255 }, // 0x000185F0
	 { 1078, 0, 658, 0, 512, 0, 0, 120, 0, 255 }, // 0x00018600
	 { 1130, 0, 628, 0, 0, 0, 0, 120, 0, 255 }, // 0x00018610
	 { 1076, 0, 535, 0, 0, 1024, 0, 120, 0, 255 }, // 0x00018620
	 { -420, 0, -524, 0, 512, 1024, 0, 120, 0, 255 }, // 0x00018630
	 { -423, 0, -604, 0, 512, 0, 0, 120, 0, 255 }, // 0x00018640
	 { -483, 0, -602, 0, 0, 0, 0, 120, 0, 255 }, // 0x00018650
	 { -480, 0, -522, 0, 0, 1024, 0, 120, 0, 255 }, // 0x00018660
	 { 487, 0, 644, 0, 512, 1024, 0, 120, 0, 255 }, // 0x00018670
	 { 487, 0, 752, 0, 512, 0, 0, 120, 0, 255 }, // 0x00018680
	 { 547, 0, 752, 0, 0, 0, 0, 120, 0, 255 }, // 0x00018690
	 { 547, 0, 644, 0, 0, 1024, 0, 120, 0, 255 }, // 0x000186A0
	 { -1069, 120, 354, 0, 512, 1024, 0, 120, 0, 255 }, // 0x000186B0
	 { -1173, 120, 326, 0, 512, 0, 0, 120, 0, 255 }, // 0x000186C0
	 { -1188, 120, 384, 0, 0, 0, 0, 120, 0, 255 }, // 0x000186D0
	 { -1084, 120, 412, 0, 0, 1024, 0, 120, 0, 255 }, // 0x000186E0
	 { 883, 0, -330, 0, 512, 1024, 0, 120, 0, 255 }, // 0x000186F0
	 { 883, 0, -438, 0, 512, 0, 0, 120, 0, 255 }, // 0x00018700
	 { 823, 0, -438, 0, 0, 0, 0, 120, 0, 255 }, // 0x00018710
	 { 823, 0, -330, 0, 0, 1024, 0, 120, 0, 255 }, // 0x00018720
};

Vtx_t _spot04_room_0_vertices_00018730[4] = 
{
	 { -3, 100, 1196, 0, 0, 0, 0, 120, 0, 255 }, // 0x00018730
	 { -2, 100, 1128, 0, 0, 1024, 0, 120, 0, 255 }, // 0x00018740
	 { -61, 100, 1127, 0, 512, 1024, 0, 120, 0, 255 }, // 0x00018750
	 { -63, 100, 1195, 0, 512, 0, 0, 120, 0, 255 }, // 0x00018760
};

Vtx_t _spot04_room_0_vertices_00018770[8] = 
{
	 { 1, 0, -1178, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018770
	 { 1553, 0, 124, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018780
	 { 1, 120, -1178, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018790
	 { 1553, 120, 124, 0, 0, 0, 0, 0, 0, 0 }, // 0x000187A0
	 { -1260, 0, 324, 0, 0, 0, 0, 0, 0, 0 }, // 0x000187B0
	 { 293, 0, 1626, 0, 0, 0, 0, 0, 0, 0 }, // 0x000187C0
	 { -1260, 120, 324, 0, 0, 0, 0, 0, 0, 0 }, // 0x000187D0
	 { 293, 120, 1626, 0, 0, 0, 0, 0, 0, 0 }, // 0x000187E0
};

Gfx _spot04_room_0_dlist_000187F0[] =
{
	gsDPPipeSync(), // 0x000187F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000187F8
	gsSPVertex(_spot04_room_0_vertices_00018770, 8, 0), // 0x00018800
	gsSPCullDisplayList(0, 7), // 0x00018808
	gsDPPipeSync(), // 0x00018810
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00018818
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00018820
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00018828
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0001A290), // 0x00018830
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 4, 0), // 0x00018838
	gsDPLoadSync(), // 0x00018840
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00018848
	gsDPPipeSync(), // 0x00018850
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 5, 0, 0, 4, 0), // 0x00018858
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00018860
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00018868
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104F50), // 0x00018870
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00018878
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00018880
	gsDPSetPrimColor(0, 0, 0, 0, 0, 255), // 0x00018888
	gsSPVertex(_spot04_room_0_vertices_000185F0, 20, 0), // 0x00018890
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00018898
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000188A0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000188A8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000188B0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000188B8
	gsDPPipeSync(), // 0x000188C0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000188C8
	gsSPVertex(_spot04_room_0_vertices_00018730, 4, 0), // 0x000188D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000188D8
	gsSPEndDisplayList(), // 0x000188E0
};

Vtx_t _spot04_room_0_vertices_000188E8[4] = 
{
	 { -529, 60, -935, 0, 1305, 1734, 188, 89, 41, 255 }, // 0x000188E8
	 { -529, 200, -935, 0, 1509, -70, 189, 90, 42, 255 }, // 0x000188F8
	 { -543, 200, -1137, 0, -822, -752, 213, 27, 108, 255 }, // 0x00018908
	 { -543, 60, -1137, 0, -1026, 1052, 185, 66, 70, 255 }, // 0x00018918
};

Vtx_t _spot04_room_0_vertices_00018928[8] = 
{
	 { -543, 60, -1137, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018928
	 { -529, 60, -1137, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018938
	 { -543, 200, -1137, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018948
	 { -529, 200, -1137, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018958
	 { -543, 60, -935, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018968
	 { -529, 60, -935, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018978
	 { -543, 200, -935, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018988
	 { -529, 200, -935, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018998
};

Gfx _spot04_room_0_dlist_000189A8[] =
{
	gsDPPipeSync(), // 0x000189A8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000189B0
	gsSPVertex(_spot04_room_0_vertices_00018928, 8, 0), // 0x000189B8
	gsSPCullDisplayList(0, 7), // 0x000189C0
	gsDPPipeSync(), // 0x000189C8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000189D0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000189D8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000189E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot04_room_0_tex_0001B090), // 0x000189E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x000189F0
	gsDPLoadSync(), // 0x000189F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00018A00
	gsDPPipeSync(), // 0x00018A08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00018A10
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00018A18
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00018A20
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104B50), // 0x00018A28
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00018A30
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00018A38
	gsDPSetPrimColor(0, 0, 255, 255, 255, 169), // 0x00018A40
	gsSPVertex(_spot04_room_0_vertices_000188E8, 4, 0), // 0x00018A48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00018A50
	gsSPEndDisplayList(), // 0x00018A58
};

static u8 unaccounted18A60[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x7B, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x80, 0x48, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x84, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x87, 0xF0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x89, 0xA8, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _spot04_room_0_tex_00018A90[] = 
{
	0x3359125312951253, 0x12554B9F335B0A95, 0x12D7541F7CE53B9D, 0x33191AD72B19335B,  // 0x00018A90 
	0x3BDD5C614C214BDF, 0x1AD72B191A972B19, 0x2B1922D722D722D7, 0x2B19439D439F6461,  // 0x00018AB0 
	0x22D7125512950A95, 0x3B9F4C212B192B5B, 0x856BB66F7461335B, 0x12D51AD7335B4BDD,  // 0x00018AD0 
	0x43DF339B43DF5461, 0x2B1B335B2319335B, 0x22D70A512B192B19, 0x12952B192B19541F,  // 0x00018AF0 
	0x3B592B1B2B192AD9, 0x2B5B2B5B3BE18DAB, 0xA671952795AB84E5, 0x74A184E584E574E3,  // 0x00018B10 
	0x64614C1F439D2B5B, 0x2AD92297331B4BDF, 0x33192B193B5B335B, 0x1A971255021122D5,  // 0x00018B30 
	0x2B5B439D4C2143DF, 0x2B5B2B5F95ED9569, 0x7CA553DF6CA55C21, 0x53DD3B9B33593319,  // 0x00018B50 
	0x4BDD5C5F541F439D, 0x2B190A5512553319, 0x3319335D2B191A95, 0x12530A5512951255,  // 0x00018B70 
	0x2B5B4C218D69856B, 0x74E9A67184A32B19, 0x1AD7335B5C21541F, 0x3B9D335B12951295,  // 0x00018B90 
	0x335B2B5B3B5B439B, 0x335B23171AD72297, 0x1A972AD933190A51, 0x01D1021312972B19,  // 0x00018BB0 
	0x4C23B6B3A671AEF9, 0xD7777461339D3B9D, 0x2AD92B5933194BDD, 0x4BDF335B0A551AD5,  // 0x00018BD0 
	0x2B19335D22D71A95, 0x22D7335B3B5B2AD7, 0x22951A9723190A53, 0x0A130A5512951297,  // 0x00018BF0 
	0x8D276C61641F641F, 0x9D696C6154214B9F, 0x33192B59335B339D, 0x339B335B2B193B5B,  // 0x00018C10 
	0x439D2B591AD70A53, 0x02130A551A971295, 0x1A951AD71AD71255, 0x12552B192B5B3B9F,  // 0x00018C30 
	0x3B59335D2B5B2B5B, 0x2319335B53DF439D, 0x3B5B339D3B9B439D, 0x53DF54214BDD4BDF,  // 0x00018C50 
	0x5BDD3B5B1AD501D1, 0x02110A1312950A53, 0x1A971AD71AD70A55, 0x2B193B9D5C636C61,  // 0x00018C70 
	0x2B192B172B5B3BDF, 0x439B22D73B9D4BDD, 0x4C21852785276C61, 0x6C615C1F4BDD3B9D,  // 0x00018C90 
	0x64616C61335B1A95, 0x0A550213018D0213, 0x1AD72B192AD5335B, 0x43DF54212B1722D7,  // 0x00018CB0 
	0x2319129522D72B5B, 0x2B5B231B6CA574E5, 0x5C615C1F6C616461, 0x3B9B3B9D43DF4BDD,  // 0x00018CD0 
	0x43E1A5ED7CA36461, 0x1AD7021302130213, 0x339F64633B59335B, 0x439D33170A5322D9,  // 0x00018CF0 
	0x1A9722D722D722D7, 0x1AD73BA16463335B, 0x2AD72B19335B439D, 0x3B9D3B9D3B5B4BDF,  // 0x00018D10 
	0x64E7646143DF74A3, 0x4B9D33192B192B5B, 0x84E76CA35C636461, 0x33171A950A530A55,  // 0x00018D30 
	0x0A531A952AD712D7, 0x339D4BDD23191AD9, 0x2B1B2B5B2B172B17, 0x335B2B193B9D4C21,  // 0x00018D50 
	0x74E52B1912953B9B, 0x53DD646395ABA62D, 0x74A1439D8DAD8CE5, 0x2B171A970A530A13,  // 0x00018D70 
	0x02110A9522D95463, 0x4BDD12552B192B19, 0x335B2B5B4BDD6461, 0x645F5BDD7CA38D69,  // 0x00018D90 
	0x852533190A530A53, 0x129522D96C634BDD, 0x331954218D273B5B, 0x339D2B5B1A971295,  // 0x00018DB0 
	0x4BDF64638D694BDD, 0x12950A532B5B4BDF, 0x5C21439B2B17541F, 0x541F439B4B9D541F,  // 0x00018DD0 
	0x53DD541F3B9B22D7, 0x2B5B43DD53DD4BDD, 0x4BDD8D275C61335B, 0x2B19339F3BDF43DF,  // 0x00018DF0 
	0x6CA5646133191A97, 0x12552B1B43DF4BDD, 0x43DF3B9B3B9D439B, 0x2AD733192AD53B5B,  // 0x00018E10 
	0x1AD723194BDD5421, 0x4BDF2AD533595463, 0x7CE5956954633B5B, 0x2AD72B5922D943DF,  // 0x00018E30 
	0x33192B172AD92297, 0x2B1B3B9D43DF335B, 0x3B9D4BDF4B9D22D5, 0x2B1733192B173B5B,  // 0x00018E50 
	0x2B5B335B64636CA5, 0x541F4BDD541F5C63, 0x95696C635C613B9B, 0x2B191AD722D92B19,  // 0x00018E70 
	0x33192AD9335B2B19, 0x335B3359335B4BDD, 0x541F6C6374A36C61, 0x3B9B3B9F6CE56C5F,  // 0x00018E90 
	0x54A5856995ED6463, 0x4C1F541F4C1F95AB, 0xA5ED64614C614C21, 0x439B33592B5B2319,  // 0x00018EB0 
	0x539B2B592B5922D7, 0x2B1923194BDF7CA5, 0x7CA59569BE719DAB, 0x856BAE71B67174E3,  // 0x00018ED0 
	0x856B852795A984E7, 0x74A364A38D69BEB3, 0x7CA344214BDF3B9D, 0x335B2B1922D72B5B,  // 0x00018EF0 
	0x3B592AD522D51AD7, 0x2B9D74E5AE2F7CA1, 0x6CA36C1F53595BDF, 0x74E58D27641F3B9D,  // 0x00018F10 
	0x852774E78D6974A5, 0x84E78529A62F84E3, 0x335D3BDF3B9D2B5B, 0x231922D71AD7439D,  // 0x00018F30 
	0x5461439B5C1F9569, 0x956984A3641F4BDD, 0x53DD3317129712D7, 0x23192B5B3B9D335B,  // 0x00018F50 
	0x5C1F5463AE71ADED, 0x74E774E785693B9B, 0x335D43DF3B9D1AD7, 0x1AD51AD7335D541F,  // 0x00018F70 
	0x6CA33B174B9B5399, 0x2AD52B59439B4359, 0x4B9B1A9512930A55, 0x1A953319335B3B9D,  // 0x00018F90 
	0x43DF5463852B84A3, 0x339D2B9D85254BDD, 0x4BDB2B5B4BDF335B, 0x12D7129774A37CA3,  // 0x00018FB0 
	0x22D522D722D51AD7, 0x2B174BDF33191A97, 0x2B171AD51A971295, 0x0A951A9722D7339B,  // 0x00018FD0 
	0x439D3B9D335B231B, 0x442164E9C6F5AE2D, 0x9DAB84E56C614BDD, 0x5C638D274B9922D5,  // 0x00018FF0 
	0x1A97231922D72319, 0x339D4BDD43593359, 0x12510A5312951A95, 0x0A530A5312D72B19,  // 0x00019010 
	0x339D339D3B9D5423, 0x7D29A673CF37AEB5, 0xBF37AEB1B6B1BEF5, 0xCF356C613B9D1AD5,  // 0x00019030 
	0x439D33191A971295, 0x2B593B5933572AD7, 0x1A95125312D71295, 0x12952B192B592B5B,  // 0x00019050 
	0x3B9F4C215CA595AB, 0x95AD85275CA57527, 0x7CE764A34C1F6CE7, 0xA62D74A34C1F2B19,  // 0x00019070 
	0x33192B17331B2B1B, 0x1AD73359335922D7, 0x1A951AD71AD51A95, 0x2B193B9D2B5B339D,  // 0x00019090 
	0x542164639DAD84E7, 0x5C61339D3BDF5C63, 0x74A36CA564A58569, 0x8D27856974A153DB,  // 0x000190B0 
	0x53DB331923192319, 0x2B192B5B2AD52317, 0x2B17125322D72B19, 0x335B335B339D5C21,  // 0x000190D0 
	0x7CE7AE2F84E55421, 0x54612B5B335B43DD, 0x541F74A56CE58569, 0x8527542154638569,  // 0x000190F0 
	0x84E553DB1B193B9B, 0x53DF74A53B9D2B59, 0x2AD72B1912971AD7, 0x43DF3BE14C2374A5,  // 0x00019110 
	0x9DAB74A55CA3335B, 0x2319335B339D2B19, 0x3B9B74E55C636C61, 0x95695C213B9D4C21,  // 0x00019130 
	0x6CE9A62F9DA9B671, 0x952553DF439D53DF, 0x335B3B5B12971AD7, 0x2B1D7D298D277CA3,  // 0x00019150 
	0x5C214BDD43DF3B9D, 0x2319335B339D4C21, 0x74E5A631BEB5B62D, 0x74A1439B54615423,  // 0x00019170 
	0x64E56CA595AD84E5, 0x435922D52B19331B, 0x335D6CA3439D5463, 0x8D6B7CA5435B3B9D,  // 0x00019190 
	0x339B439B3B5B3B9D, 0x335B1A95335D8D69, 0x7CA35C2164637CA5, 0x6CA16C6185278527,  // 0x000191B0 
	0x539D4BDF43DF2B1B, 0x3B9B12532B19435D, 0x331B3B9F5CA59DEF, 0x7461335B2B1B2319,  // 0x000191D0 
	0x956B95AB641F335B, 0x3B9F4C217CA32295, 0x12552B5B3B5D4BDF, 0x4BDF4B9B7CA38D27,  // 0x000191F0 
	0x3B594BDF3B9D22D7, 0x22D7231922D71A97, 0x331B4BDF54657CA5, 0x331B2B1B2B19335B,  // 0x00019210 
	0xAE73A631B671A5EF, 0xE7BB9D6922950213, 0x12952B19335B3319, 0x335B1A975C636CA3,  // 0x00019230 
	0x2B191A951AD71295, 0x09D1439D2AD71255, 0x1295231B7D275C21, 0x439F1AD72B192B5B,  // 0x00019250 
	0x5CA57D2974A56CA3, 0x6C1F43591A9522D7, 0x2B192B192B1722D7, 0x23192B1B54216CA5,  // 0x00019270 
};

u64 _spot04_room_0_tex_00019290[] = 
{
	0x00037ABCDDDDEEEE, 0xEEEEFFEDDEFFFFFF, 0xFFFEEEEEEEDBBBBB, 0xBBB988778CDC8200,  // 0x00019290 
	0x000158BCDDDCDDEE, 0xEEEFFFEDEEEEFFFF, 0xFEEEEEEEEDDCBBBB, 0xBBA988777CDC6000,  // 0x000192B0 
	0x000017BCCCCCCDEE, 0xEEEEFEEEEEEEEEEE, 0xEEEEEEFFEDDCCBBB, 0xBB9888889BDDC202,  // 0x000192D0 
	0x0000028BCCCCCCDE, 0xEEEEEEFEEDEEEEEE, 0xEEEEEEEEEDDCCCCC, 0xBB998888BCCCCC68,  // 0x000192F0 
	0x0000017BCCCBCCCD, 0xDDEEEEFEDDDEEEEE, 0xEEEEEEEEEDDDDDDD, 0xCCB99988BCCCCDCC,  // 0x00019310 
	0x0000037ABBCCCCCC, 0xDEEEEEFEDDDEEEEE, 0xEEEEEEEEEDDDEEEE, 0xDCBA99879BBCBDDD,  // 0x00019330 
	0x0000169ABBBBCCCD, 0xDDEEFEEEEEEEDEEE, 0xEEEEEEEDDDDEEEEE, 0xEDBAA87689A9BBCC,  // 0x00019350 
	0x00007A9AABBBCCDD, 0xDDEEFFEDEEFEDEDD, 0xDEEEEEDDDDDEEEEE, 0xEECBA8778888A978,  // 0x00019370 
	0x0079AAAAAABCCDDD, 0xDDEEFFEDFFFFEEED, 0xDDDDDDDDDEEEEEEE, 0xEECB9A8876788877,  // 0x00019390 
	0x079ABBAAAABCCDEE, 0xEEEEFEDEEFFFFEEE, 0xEDEEECDDEEFEEEEE, 0xEDCBABA888888877,  // 0x000193B0 
	0x089ABCAAAAABCCDE, 0xEEEEEEEEFFFFEFEE, 0xEEEEFEDEEFFEEEEE, 0xDCCCBBBA99998888,  // 0x000193D0 
	0x079ABBAA99BACDEE, 0xEEEEEEEEFFFFFEEE, 0xEEEEEEEEEFFEEEFE, 0xDDCCCCCBAA998888,  // 0x000193F0 
	0x0079AA9989AABCDE, 0xEEEEDEEEFFFFFEEE, 0xFEEEEEEEEFFEEEFD, 0xDDDDCCCCBAA99899,  // 0x00019410 
	0x0009999899ABBCCE, 0xEEDDEEEFFFFFFEEF, 0xEEEEEEEEEFFEEEFD, 0xDDEDDDCDCBBB99AB,  // 0x00019430 
	0x00088887789ABCCD, 0xDEEEEEEFFFFFFFFE, 0xEEEEEEEEEEFEEFED, 0xDDEEDDDEEDCCBBBB,  // 0x00019450 
	0x000388677789ABCD, 0xDEFFFEDEFFFFEEEE, 0xEEEEDEEFEEFEEEDD, 0xDEEEEEEEEEDCBBBB,  // 0x00019470 
	0x000077455789AACD, 0xEFEFFEEDFFFEEEEE, 0xEEEDDDEEEEEEEDDD, 0xEEEEEEEEEEEDCBBB,  // 0x00019490 
	0x000056334689ABBD, 0xEEFFFEFEDFEEEEEE, 0xEEEEDEEEEEEEDDDE, 0xEEEEEEEEEEEDCBBB,  // 0x000194B0 
	0x0001552256899BBC, 0xDEEFFFEEDDEEEEEE, 0xEEEFFFEDDEEDDDDE, 0xEEEEEEEEEEEDCBBB,  // 0x000194D0 
	0x0003764247999BCD, 0xDEEEFEEDDDEFFEEF, 0xFEFFFFEEDEEEDDEE, 0xEEEEEEEEEEEDCCBB,  // 0x000194F0 
	0x0007985456899BCD, 0xDDDEEEEDCDFFFFFF, 0xFFFFFFFEEEEEDEEE, 0xEEEEEEEEEEDDCCCB,  // 0x00019510 
	0x00089A7457889ABD, 0xDDDDEEEEDEFFFFFF, 0xFFFFFFEEDDEEEEEE, 0xEEEFFFFEDDDDDDDD,  // 0x00019530 
	0x00189A96578779AC, 0xDDDDEEEDEEFFFFFF, 0xFFFFFFFEEDDEEDEE, 0xEEFFFFEEDDDDDDDE,  // 0x00019550 
	0x0018AAA8788889BC, 0xDEEEEEEEEEFFFFFF, 0xFFFFFFFEEDDEDDDD, 0xEEFFFEEDDDEEEEEE,  // 0x00019570 
	0x00079AAA989999CD, 0xDDEEEEEEEEEFFFFF, 0xFFFFFFFEEDDDDDDD, 0xDEEFEEDDDDEEEFEE,  // 0x00019590 
	0x00028AAA999A9BCD, 0xDDDDEEEEEEEFFFFF, 0xFFFFFFFFEDDDDDDC, 0xDDEEEEDDDEEEEFEE,  // 0x000195B0 
	0x00006899899BABCD, 0xDDEEEFFFFFEFFFFF, 0xFFFFFFFEEEDCCEED, 0xDDDEEECDEEEEEEEE,  // 0x000195D0 
	0x00005678889BBCCD, 0xDDEFFFFFFFEEEFFF, 0xFFFFFFFEEEEDDEDD, 0xDDDEEFEDEEEEEEEE,  // 0x000195F0 
	0x00001468789BBDCD, 0xCDEFFFFFFFFEEFFF, 0xFFFFFFEEEEEDDDDE, 0xEEEEEEEDEEEEEEEE,  // 0x00019610 
	0x00000056789BCDDC, 0xCDEFFFFFFFFEEFFF, 0xFFFFFFEEEEEDDDDE, 0xEEEEEEEDEEEEEEEF,  // 0x00019630 
	0x0000006678BCDDCC, 0xDEFFFFFFFFFEEFFF, 0xFFFFFEFEEEEDDEEE, 0xEEEEEEDDEEEEEEEF,  // 0x00019650 
	0x000000777ABCDDDD, 0xEEFFFFFEEFFEEFFF, 0xFFFFFFFFEEDDEEEE, 0xEEEEEEEDDEEEEEFF,  // 0x00019670 
	0x000002878BCCCDDD, 0xEEFFEEEEEFFEEFFF, 0xFFFFFFFFEDDDEEEE, 0xEEEEEEEDDEEEEEFF,  // 0x00019690 
	0x000008889ABCCDDD, 0xEFFFFEEEEFFEEFFF, 0xFFFFFFFFEDCCEEEE, 0xEEFEEEEEDEEEEEFF,  // 0x000196B0 
	0x000038899ABBCDDD, 0xEFFFFEEEEFFFEFFF, 0xFFFFEEEEEDCDDEEE, 0xEFFFFFEEEEEEEEFF,  // 0x000196D0 
	0x0001899A9BBCDDDE, 0xEEFFEEEEEEFFEFFF, 0xFFFFEEEDDEDDDEEE, 0xFFFFFFFEDDEEEEFF,  // 0x000196F0 
	0x0001899ABBBDEEED, 0xEEEEEEEEEEFFEEEE, 0xFEEEEEEEEEEEDEEE, 0xEFFFFFFFEEEEEEEF,  // 0x00019710 
	0x000299ABCDDDEEDD, 0xDDEEEEEEEEEEEEEE, 0xEEEFFEEEEEEEDDEE, 0xEFFFFFFFFEDDEEEF,  // 0x00019730 
	0x00028AABCDEEEEED, 0xDDDEEEEEEEEEEEFE, 0xFFFFFEEFEFFEDDDD, 0xEEFFFFFFEEDDDEEE,  // 0x00019750 
	0x0003899ACDEEEEDD, 0xCCDDDEEEEDDEEEFF, 0xFFFFEEEEEEEEEDDD, 0xEEFFFFEFEEDDEEED,  // 0x00019770 
	0x0005989ABDDEDDDD, 0xDDDDDDEEDDDEEFFF, 0xFFFFEFEEEEEEEDCC, 0xDEFFEEEDDEEEEEDD,  // 0x00019790 
	0x00068989BCDDDDCC, 0xCDDDDDDEEDDEEFFF, 0xFFFEEEEEEEEEDDDC, 0xCDEEEEDEEEFFFEEE,  // 0x000197B0 
	0x0005899ABDDDDCCC, 0xCDDDDDDEEEDDEEFF, 0xFFFFEEEEEEEDDDCC, 0xCCDEEEEFFEEEEEFF,  // 0x000197D0 
	0x000489ABBCDDCCCC, 0xCDDEDDEEEEEEEEEF, 0xFFFFEEEFFEEEDDDC, 0xCCDEEEFFFFEEEFFF,  // 0x000197F0 
	0x00039ABBBCCCCCCC, 0xCDDEEEEFEEEEEEEE, 0xFFFFFFFFEEDDDDDD, 0xCCCEEEEEEEEEEEFE,  // 0x00019810 
	0x00019ABBBBBCCCCC, 0xDDEEEFFFFFFFEEEE, 0xEFFFFFEEEEDDDDDC, 0xBCDEEEEEEEEEEEEE,  // 0x00019830 
	0x00006AABAACCCBCC, 0xDDEEFFFFFFFFFFEE, 0xEEEEEEEEEEDDDDCC, 0xCCDEEEEDDDEDEEEE,  // 0x00019850 
	0x000029AAAACCCCCD, 0xDEFFFFFFFFFFFFFE, 0xEEDEEEEEEEDDDCCC, 0xCCDDEEEDDDDDEEEE,  // 0x00019870 
	0x000003AAABCCCCCD, 0xDFFFFFFFEFFFFFFE, 0xEEEEEEEEEDDCCBBB, 0xBCCDDEEDDDCDEEEE,  // 0x00019890 
	0x0000009ABBCCCCDE, 0xEFFFFFFFFFFFFFFE, 0xEDDDEEDDDDCCCBBC, 0xCBCCCDEDDCCCDEEE,  // 0x000198B0 
	0x0000008ABBCCCCDE, 0xEEFFFFFFFFFFFFEE, 0xDDDDDDDDCCCCCCCC, 0xCBBCCCDDCCCCCDDE,  // 0x000198D0 
	0x0000003ABBBBCCDE, 0xFFEFFFFFEFFFFEED, 0xDEEEEEDCCCCDDDDD, 0xCCBBCCCCCCCCCCDE,  // 0x000198F0 
	0x0000001AABBBCDDE, 0xFEEDFFFFEEFFEEEE, 0xEEEEEEEDCDDEEEED, 0xDCBBBCCCBBCBCCCD,  // 0x00019910 
	0x0000001ABBBBCDDE, 0xEEDEEEFFFFFEEEEE, 0xFFFFEEEDDDDEEEED, 0xDCBBBBBBBBCCCCDD,  // 0x00019930 
	0x0000009BBBCCDDCD, 0xEEDEEEFFEEEEEEFF, 0xFFFEEEEEDDDEEEED, 0xDCCBBBBBBBCCCCDD,  // 0x00019950 
	0x000003BCCCCDDDDD, 0xDEEEEFEEEEEEEFFF, 0xFFFFEEEEDDDEEEEE, 0xDDCBAABBBBBCCCDD,  // 0x00019970 
	0x000009BCCCCDEEEE, 0xDEEEEFEEEEEEEFFF, 0xFFFFEEEEDDDDEEEE, 0xDCBBBAAABBBBCCCC,  // 0x00019990 
	0x00002ABCCDEDEEDE, 0xEDEEEFEEEEEEFFFF, 0xFFFFEEEEDDDDEEEE, 0xDBBBBA9AAABBCCBB,  // 0x000199B0 
	0x00007ACCDEEEEEEE, 0xEDDEEEEDEEFFFFFF, 0xFFFFEEEEDDDDEEEE, 0xCBBBBA89AAABBCBA,  // 0x000199D0 
	0x00008BCDDEEEEEEE, 0xEDDEEEEDEEFFFFFF, 0xFFFFEEEEECCDEEED, 0xBBBBA758999ABB97,  // 0x000199F0 
	0x00029BCDDEEEEEFF, 0xEEDDEEEDEEFFFFFF, 0xFFFEEEEEEDCCDEEC, 0xBBBA99689AAAA913,  // 0x00019A10 
	0x0005ABCDDEEEEFFF, 0xFEEEEDDDEEFFFFFF, 0xFFFEEEEEEDCCCDCC, 0xBBA987669AAA8000,  // 0x00019A30 
	0x00069BCDDEEEFFFF, 0xEEEEEDDDEEFFFFFF, 0xFFFEEEEEEECBCCCC, 0xBBA987779BBBA500,  // 0x00019A50 
	0x00059BCCCDEEFFFF, 0xEEEEFEDDEEFFFFFF, 0xFFEEEEEEEDCBBBBB, 0xBBA988779ACCA500,  // 0x00019A70 
};

u64 _spot04_room_0_tex_00019A90[] = 
{
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00019A90 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00019AB0 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00019AD0 
	0x0000000000000000, 0x0000000000000000, 0x1000000000000000, 0x0000000000000000,  // 0x00019AF0 
	0x0000000000000000, 0x0000000000000026, 0x7743100000000000, 0x0000000000000000,  // 0x00019B10 
	0x0000000000000000, 0x000000000000007A, 0xA987741000000000, 0x0000000000000000,  // 0x00019B30 
	0x0000000000000000, 0x00000000000008CC, 0xDCBBBA7400000000, 0x0000000000000000,  // 0x00019B50 
	0x0000000000000000, 0x0000000000005ACC, 0xDCCCBBBA95001371, 0x1000000000000000,  // 0x00019B70 
	0x0000000000005687, 0x0000000000017CCC, 0xDCDCCCBBA88ABCC9, 0x3221000000000000,  // 0x00019B90 
	0x0000000000068BBB, 0xA100000000058CCC, 0xCCBBBBBBBAABCCCC, 0xEC94000000000000,  // 0x00019BB0 
	0x00000487578BBCCC, 0xB40000000018ACBC, 0xCCBB999AAAAAAAAB, 0xBCA7300000000000,  // 0x00019BD0 
	0x000008A889ABBBCB, 0xBA2000000049CCBC, 0xCBCA986899999988, 0x9BAB710000000000,  // 0x00019BF0 
	0x000079889ABABABB, 0xB9200000024ADCCB, 0xCDCAA98899998888, 0x89BB610000000000,  // 0x00019C10 
	0x0006888799AAAAAA, 0x98100000025BCCCB, 0xDDBAA998BAAA8789, 0x9AA9600000000000,  // 0x00019C30 
	0x00088777899999AA, 0x87500000018CCCBB, 0xCBBBABBCBABCA99A, 0xBAAA500000000000,  // 0x00019C50 
	0x00037768989AAA99, 0x99600000259CCBBC, 0xACCAABBCCCCBB9AB, 0xBAA8200000000000,  // 0x00019C70 
	0x000078788ABBBAA9, 0xA970000049CCBBAC, 0xCDCCABACCBCCBAAB, 0xAA94000021000000,  // 0x00019C90 
	0x000057899BCCCA99, 0x986000002ACCBBBC, 0xEDDDBACCCCCBCBBA, 0xA841000478000000,  // 0x00019CB0 
	0x00003799ABCCCA88, 0x8730000028BCCCCE, 0xDDDCCBBCCBBBCCBA, 0x85000168AA700000,  // 0x00019CD0 
	0x000036999CDBAB97, 0x8600000028BBBCDB, 0xCDDCBBBCDBBBBA97, 0x2000059ABB800000,  // 0x00019CF0 
	0x000017ACCBCEBAA7, 0x6300000018ABBCCC, 0xCCBDBABCCBBA9863, 0x000019ABBB810000,  // 0x00019D10 
	0x00000ABCCCCDBBA8, 0x610000000999CCDD, 0xCCDDCCCBAA988741, 0x000049BBBB920000,  // 0x00019D30 
	0x000005CCCCCCB987, 0x2000000006ABBCDD, 0xCCDDDDCBA9866410, 0x000269ABBA830000,  // 0x00019D50 
	0x0000007CCCCCA333, 0x00000000018ABBBC, 0xCCDDCBBB97741000, 0x00047ABBAA850000,  // 0x00019D70 
	0x00000008CCCA7000, 0x000000000035AA9B, 0xBBCA9A9986400000, 0x00058AAAA9850000,  // 0x00019D90 
	0x0000000058870000, 0x0000001000003797, 0x9976544653200000, 0x000489AA99940000,  // 0x00019DB0 
	0x0000000000000000, 0x0001267420000054, 0x2112100000000000, 0x0005789998851000,  // 0x00019DD0 
	0x0000000000000000, 0x000299A873000000, 0x0000000000000000, 0x0002578897831000,  // 0x00019DF0 
	0x0000000000000000, 0x002BBBBB98400000, 0x0000000000000000, 0x0000036886410000,  // 0x00019E10 
	0x0000000000000000, 0x00ABCDCDB9860000, 0x0000000000000000, 0x0000004544000000,  // 0x00019E30 
	0x0000000000000000, 0x09BCDDDEDBA87100, 0x0000000002366656, 0x6410000001000000,  // 0x00019E50 
	0x0000000000000003, 0x8ABDDDDDDDC98720, 0x0000000234999999, 0x9862000000000000,  // 0x00019E70 
	0x0000000000000069, 0x9ACCCBBCCCCB9870, 0x000001257ABBBABA, 0x9887410000000000,  // 0x00019E90 
	0x0000000000026789, 0xABBBBA9BBBCCCAA9, 0x856657899BBBBBBA, 0x9898860000000000,  // 0x00019EB0 
	0x000000002377799A, 0xAAA99BAABBCCCCCC, 0xCBBBBAABBCCBBBA9, 0x9999876000000000,  // 0x00019ED0 
	0x0000000689999999, 0xA9999A9BCDCDDDDD, 0xDDDDCBBCCCCBBB99, 0x9999987210000000,  // 0x00019EF0 
	0x0000005899999999, 0x9998999ABDEDDDDD, 0xDDDDDCCCCCCBBBBA, 0xAAA9987532000000,  // 0x00019F10 
	0x0000168999999999, 0x9988888AACDDDDDD, 0xDDCDCCCCCCBBBAAB, 0xAAAA997640000000,  // 0x00019F30 
	0x0000578999999999, 0x88877679BACCDDDD, 0xDDCDCCCCCBCB99A9, 0xA99AA97652451100,  // 0x00019F50 
	0x0001678999999998, 0x766666789ABCDEDD, 0xCCCDCDCBCCBA9888, 0x8999AA8655784000,  // 0x00019F70 
	0x00047788AAAAA997, 0x65555556589ACDED, 0xCCDDDDCCBCB99767, 0x7899AA9766797000,  // 0x00019F90 
	0x000588778AAAA987, 0x554343123578BCDE, 0xDDDDDDBAABB98876, 0x779ABA9867899000,  // 0x00019FB0 
	0x000589878AAA9987, 0x6432200024568BDE, 0xEDDEDCBAAA9A9877, 0x789AAAA988999800,  // 0x00019FD0 
	0x0004899A999A8875, 0x3210000034356ADE, 0xEEEDCCCAAAAA9997, 0x8A9AABAA9889A900,  // 0x00019FF0 
	0x00039AAA99876732, 0x0000000012358ADE, 0xEEEDDCBCBCBAAA99, 0xAAAAAAAA98899A70,  // 0x0001A010 
	0x00019ABA97654310, 0x0000000001458BDE, 0xDDDDDDBCDCBBBAAA, 0xBABAAAAA99899A80,  // 0x0001A030 
	0x00006AA987543200, 0x000000000126BCEE, 0xDCBCBCCBDCBBABBB, 0xBBBBAAA999899A80,  // 0x0001A050 
	0x0000299976533210, 0x000000000237BCEE, 0xDCBBBABCBBBAABBC, 0xBBBAAAA999999B70,  // 0x0001A070 
	0x0000039987642100, 0x000000000369ADEE, 0xEDBBBBBABBBAABBB, 0xBBBAAA98999AAA60,  // 0x0001A090 
	0x0000009988864331, 0x00000000256ADEEE, 0xEDCBCBBABAABBBBC, 0xCBBAA999899AA840,  // 0x0001A0B0 
	0x0000008AA9996443, 0x21112331489BEEEE, 0xDDDDDBBBAABCCCCC, 0xCBBA9999879A9600,  // 0x0001A0D0 
	0x0000003AABAA9765, 0x6455775779BDEEDD, 0xDEEEEDCBBBCDDDDD, 0xCCBBA88877998300,  // 0x0001A0F0 
	0x0000001AABBAAA99, 0x88A8ABA99BDEDDEE, 0xEEEEEEDCCDDEEEED, 0xDCBB987767885000,  // 0x0001A110 
	0x0000001ABBBBBAAA, 0x9AACDDCBCDEDEEEE, 0xFFFFEEEDDDDEEEED, 0xDCBBA86765761000,  // 0x0001A130 
	0x0000009BBBCCCBAA, 0xAABCDDDDDDEEEEFF, 0xFFFEEEEEDDDEEEED, 0xDCCBA87564730000,  // 0x0001A150 
	0x000003BCCCCDDCBB, 0xBBCDDDDDEEEEEFFF, 0xFFFFEEEEDDDEEEEE, 0xDDCBA78654820000,  // 0x0001A170 
	0x000009BCCCCDEDDD, 0xCDDDEEDEEEEEEFFF, 0xFFFFEEEEDDDDEEEE, 0xDCBBA98535950000,  // 0x0001A190 
	0x00002ABCCDEDEEDD, 0xDDEEEEEEEEEEFFFF, 0xFFFFEEEEDDDDEEEE, 0xDBBBBA9325AA1000,  // 0x0001A1B0 
	0x00007ACCDEEEEEEE, 0xEDDEEEEDEEFFFFFF, 0xFFFFEEEEDDDDEEEE, 0xCBBBAA8334AB6000,  // 0x0001A1D0 
	0x00008BCDDEEEEEEE, 0xEDDEEEEDEEFFFFFF, 0xFFFFEEEEECCDEEED, 0xBBBBA98349ABA100,  // 0x0001A1F0 
	0x00029BCDDEEEEEFF, 0xEEDDEEEDEEFFFFFF, 0xFFFEEEEEEDCCDEEC, 0xBBBA99657AABA500,  // 0x0001A210 
	0x0005ABCDDEEEEFFF, 0xFEEEEDDDEEFFFFFF, 0xFFFEEEEEEDCCCDCC, 0xBBA987669ABBA600,  // 0x0001A230 
	0x00069BCDDEEEFFFF, 0xEEEEEDDDEEFFFFFF, 0xFFFEEEEEEECBCCCC, 0xBBA987779BBBA500,  // 0x0001A250 
	0x00059BCCCDEEFFFF, 0xEEEEFEDDEEFFFFFF, 0xFFEEEEEEEDCBBBBB, 0xBBA988779ACCA500,  // 0x0001A270 
};

u64 _spot04_room_0_tex_0001A290[] = 
{
	0x0F0F0F0F0F0F0F0F, 0x0F0F0F0F0F0F0F0F, 0x0F0F0F0F0F0F0F0F, 0x0F0F0F0F0F0F0F0F,  // 0x0001A290 
	0x0F0F0F0F0F0F0F0F, 0x0F0F0F0F0F0F0F0F, 0x0F0F0F0F0F0F0F0F, 0x0F0F0F0F0F0F0F0F,  // 0x0001A2B0 
	0x0F0F0F0F0F0F0F0F, 0x0F0F0F0F0F0F0F0F, 0x0E0E0E0E0E0E0E0E, 0x0E0E0E0E0E0E0E0E,  // 0x0001A2D0 
	0x0E0E0E0E0E0E0E0E, 0x0E0E0E0E0E0E0E0E, 0x0D0D0D0D0D0D0D0D, 0x0D0D0D0D0D0D0D0D,  // 0x0001A2F0 
	0x0C0C0C0C0C0C0C0C, 0x0C0C0C0C0C0C0C0C, 0x0C0C0C0C0C0C0C0C, 0x0C0C0C0C0C0C0C0C,  // 0x0001A310 
	0x0B0B0B0B0B0B0B0B, 0x0B0B0B0B0B0B0B0B, 0x0A0A0A0A0A0A0A0A, 0x0A0A0A0A0A0A0A0A,  // 0x0001A330 
	0x0A0A0A0A0A0A0A0A, 0x0A0A0A0A0A0A0A0A, 0x0909090909090909, 0x0909090909090909,  // 0x0001A350 
	0x0808080808080808, 0x0808080808080808, 0x0808080808080808, 0x0808080808080808,  // 0x0001A370 
	0x0707070707070707, 0x0707070707070707, 0x0707070707070707, 0x0707070707070707,  // 0x0001A390 
	0x0606060606060606, 0x0606060606060606, 0x0505050505050505, 0x0505050505050505,  // 0x0001A3B0 
	0x0505050505050505, 0x0505050505050505, 0x0404040404040404, 0x0404040404040404,  // 0x0001A3D0 
	0x0303030303030303, 0x0303030303030303, 0x0303030303030303, 0x0303030303030303,  // 0x0001A3F0 
	0x0202020202020202, 0x0202020202020202, 0x0202020202020202, 0x0202020202020202,  // 0x0001A410 
	0x0101010101010101, 0x0101010101010101, 0x0101010101010101, 0x0101010101010101,  // 0x0001A430 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0001A450 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0001A470 
};

u64 _spot04_room_0_tex_0001A490[] = 
{
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A490 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A4B0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A4D0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A4F0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A510 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A530 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A550 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEFFEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A570 
	0xEEEEEEEEEEEEEEEE, 0xEEFFFFFFEFFFEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A590 
	0xEEEEEEEEEEEEEEFF, 0xFFEEEEEEEEEEFFEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A5B0 
	0xEEEEEEEEEEEEFFEE, 0xEEEEEEEEFFEEEFEF, 0xFEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A5D0 
	0xEEEEEEEEEEEEFEEE, 0xEEEEEEEFFFEEEEEE, 0xFFEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A5F0 
	0xEEEEEEEEEEEEEFFE, 0xEEEEEEEFFFEEEEEE, 0xEFFFEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A610 
	0xEEEEEEEEEEEEEEFF, 0xFEEEEEEEFFEEEEEE, 0xEFEEFFEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A630 
	0xEEEEEEEEEEEEEFEF, 0xEEFFEEEEEEEEEEEE, 0xEFFEEEEEFEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A650 
	0xEEEEEEEEEEEEEFFE, 0xEEEEFFEEEEEEEEEE, 0xEEFEEEEEEFEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A670 
	0xEEEEEEEEEEEEEFEE, 0xEEEEEFEEEEEEEEEE, 0xEEFFEEEEFEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A690 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEFEEEEEEEEEE, 0xEEEFEEFFEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A6B0 
	0xEEEEEEEEEEEEEEEE, 0xEEFEEEEEEEEEEEEE, 0xEEEFFFFEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A6D0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEFEFEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A6F0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEFFFEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A710 
	0xEEEEEEEEEEEEEEEF, 0xFEEEEEEEEEEEEEEE, 0xEEEEFFEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A730 
	0xEEEEFEEEEEEEEFFF, 0xEEEEEEEEEEEEFEEE, 0xFEFEFFEEFFFEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A750 
	0xEEEEEEEEEEEEEFFE, 0xEEEEEEEEEEEEEEEE, 0xEEFFFFEEEEEFEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A770 
	0xEEEEEEEEEEEEEEEF, 0xFFFFEEFEEEFEFEEE, 0xFFEFEEEEEEEEFEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A790 
	0xEEEEEEEEEEEEEEEE, 0xEEEFFFFEEEEEEEEE, 0xFEFEEEFEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A7B0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEFFEEEEEEEE, 0xEFEEEEEEEEEFEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A7D0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEFEEEEEEE, 0xEFEEEEEFEEFEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A7F0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEFFEEEEEE, 0xEEEEEEEEFEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A810 
	0xEEEEEEEEEEFFFFEE, 0xEEEEEEEEEFEEEEEE, 0xEEEEEFEEFEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A830 
	0xEEEEEEEEEFEEEEFF, 0xEEEFFFFFEEEEEEEE, 0xEEEEFFFFFFFFFFEF, 0xEEEEEEEEEEEEEEEE,  // 0x0001A850 
	0xEEEEEEEEEFEEEEEF, 0xFFFEEEEEEEEEEEEE, 0xEEEFEEEFFEEEEEEF, 0xEEEEEEEEEEEEEEEE,  // 0x0001A870 
	0xEEEEEEEEEFEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEFFFFEFEFEEFEEEF, 0xEEEEEEEEEEEEEEEE,  // 0x0001A890 
	0xEEEEEEEEEEFFEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEFEEEFEEFEEEEFE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A8B0 
	0xEEEEEEEEEEEFEEEE, 0xEEEEEEEEEEFEEEEE, 0xEEEFFEEEEEEEEEFE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A8D0 
	0xEEEEEEEEEEEFEEEE, 0xEEEEEEEEEFFFEEEE, 0xEEEEEEEEEEEEEFEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A8F0 
	0xEEEEEEEEEEFEEEEE, 0xEEEEEEEFFEEEFEEE, 0xEEEEEEEEEEEFEFEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A910 
	0xEEEEEEEEEEEEEEEE, 0xEEEEFFFEEEEEFEEE, 0xEEEEEEEEEEEFFEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A930 
	0xEEEEEEEEEEFFFFFE, 0xEEEFFEEEFEEEEFEE, 0xEEEEEEEEEEEEFEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A950 
	0xEEEEEEEEEEEEEEFE, 0xEEFEEEEEFEEFFFEE, 0xEEEEEEEEEEEEFEFF, 0xFFEEEEEEEEEEEEEE,  // 0x0001A970 
	0xEEEEEEEEEEEEEEFE, 0xEFEEEEEEFEEEEFEE, 0xEEEEEEEEEFEEFEEE, 0xEFFEEEEEEEEEEEEE,  // 0x0001A990 
	0xEEEEEEEEEEEEEEFF, 0xFEEEEEEEEEEEEFEE, 0xEEEEEFEEFEEEFFEE, 0xEEFEEEEEEEEEEEEE,  // 0x0001A9B0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEFEEEFEE, 0xEEEEFEFFEEEEEFEE, 0xEEFEEEEEEEEEEEEE,  // 0x0001A9D0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEFEEEFEE, 0xEEEEFEEFEFEFEEFE, 0xEEEEEEEEEEEEEEEE,  // 0x0001A9F0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEFEEEFEE, 0xEEEEEFFFFFFFEEFE, 0xEFEEEEEEEEEEEEEE,  // 0x0001AA10 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEFEEEFEE, 0xEEEEEEEEEEEEEEEF, 0xFEEEEEEEEEEEEEEE,  // 0x0001AA30 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEFEE, 0xEEEEEEEEEEEEEEEF, 0xFEEEEEEEEEEEEEEE,  // 0x0001AA50 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEFFFEEE, 0xEEEEEEEEEEEEEEEF, 0xEEEEEEEEEEEEEEEE,  // 0x0001AA70 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEFFEEE, 0xEEEFEEEEEEEEEEEE, 0xEFEEEEEEEEEEEEEE,  // 0x0001AA90 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEFEEEEE, 0xEEEFFEEEEEEEEEEF, 0xEFEEEEEEEEEEEEEE,  // 0x0001AAB0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEFEFEEEEEEEEEE, 0xEEFEEEEEEEEEEEEE,  // 0x0001AAD0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEFEFFEEEEEEEEE, 0xEEEFEEEEEEEEEEEE,  // 0x0001AAF0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEFFFEEEEEEE, 0xEEEFEEFFEEEEEEEE, 0xEEEEFEEEEEEEEEEE,  // 0x0001AB10 
	0xEEEEEEEEEEEEEEEE, 0xEFFFFFFEEEEEEEEE, 0xEEEFEEEFFEEEEEEE, 0xEEEEEFEEEEEEEEEE,  // 0x0001AB30 
	0xEEEEEEEEEEEEEEEE, 0xFEEEEEEEEEEEEEEE, 0xEEEEFEEEFFEEEEEE, 0xEEEEEEFFEEEEEEEE,  // 0x0001AB50 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEFEEEEEFEEEEE, 0xEEEEEEEFFEEEEEEE,  // 0x0001AB70 
	0xEEEEEEEEEEEEEEEE, 0xFEEEFFFEEEEEEEEE, 0xEEEFEEEEEEEEFEEE, 0xEEEEEEEEEFFEEEEE,  // 0x0001AB90 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEFEEEEEEEEE, 0xEEFFEEEEEEEEEFEE, 0xEEEEEEEEEEFFEEEE,  // 0x0001ABB0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEFEEEEEEEEEEEEF, 0xFEEEEEEEEEEFFEEE,  // 0x0001ABD0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEFFEEEEEEFFEE, 0xEFEEEEEEEEEEEEEE, 0xEFFEEEEEEEEEFFEE,  // 0x0001ABF0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEFEEEFEFEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEFFEEEEEEFFE,  // 0x0001AC10 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEFEEE, 0xFEEEEEEEEEEEEEEE, 0xEEEEEEFFFFFFFFFE,  // 0x0001AC30 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEFFF, 0xFEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001AC50 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001AC70 
};

u64 _spot04_room_0_tex_0001AC90[] = 
{
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001AC90 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001ACB0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001ACD0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001ACF0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001AD10 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEFE, 0xFEEEEEEEEEEEEEEE,  // 0x0001AD30 
	0xEEEEEEEEEEEEFFEE, 0xEFEEEEEEEEEEEEEE, 0xEEEEEEEEEEEFEFFF, 0xFFFEEEEEEEEEEEEE,  // 0x0001AD50 
	0xEEEEEEEEEEEFEFEE, 0xEFFFEEEEEEEEEEEE, 0xEEEEEEEEEEFEFEEE, 0xEFEFEEEEEEEEEEEE,  // 0x0001AD70 
	0xEEEEEEEEEEEEFEEE, 0xEFEFEEEEEEEEEEEE, 0xEEEEEEEEEEEFFEEF, 0xFFFFEEEEEEEEEEEE,  // 0x0001AD90 
	0xEEEEEEEEEEEFEFFF, 0xFEEFEEEEEEEEEEEE, 0xEEEEEEEEEEEEFFEE, 0xEEEFEEEEEEEEEEEE,  // 0x0001ADB0 
	0xEEEEEEEEEEEEFFFE, 0xFFFEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001ADD0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001ADF0 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001AE10 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001AE30 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001AE50 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001AE70 
};

u64 _spot04_room_0_tex_0001AE90[] = 
{
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001AE90 
	0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEFEEEEE,  // 0x0001AEB0 
	0xEEEEEEEEEEEEEEEE, 0xEEFFEEEEEEFEEEEE, 0xEEEEEEEEEEEEEFFE, 0xEFFFEEEEEEEEEEEE,  // 0x0001AED0 
	0xEEEEEEEEEEEEEFEE, 0xEEEEEEEEEEFEEEEE, 0xEEEEEEEEEEEEEFEE, 0xEEEEEEEEEEFEEEEE,  // 0x0001AEF0 
	0xEEEEEEEEEEEEEFEE, 0xEEEFEEEEEEEEEEEE, 0xEEEEEEEEEEEEEFEE, 0xEEEFEEEEEEEFEEEE,  // 0x0001AF10 
	0xEEEEEEEEEEEEEEFF, 0xFFFEEEEEEEEFEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEFFEEEEE,  // 0x0001AF30 
	0xEEEEEFFEEEEEEEEE, 0xEEEEEEEEEFEEEEEE, 0xEEEEEEEEFEEEEFFF, 0xEFFFEEEFEEEEEEEE,  // 0x0001AF50 
	0xEEEEEEEEEFFEFEEE, 0xFFFFEEFEEEEEEEEE, 0xEEEFEEEFEEFFFEEE, 0xEEEEFFEEEEEEEEEE,  // 0x0001AF70 
	0xEEEFEFFFEEEFFEEE, 0xEEEEFEEEEEEEEEEE, 0xEEFEEEFEEEFEFEEE, 0xEEEEFEEEEEEEEEEE,  // 0x0001AF90 
	0xEEFEEEFEEFFEFEEE, 0xEEEEEFEEEEEEEEEE, 0xEEEEEFFEEFEEFEEE, 0xFFFFEFEEEEEEEEEE,  // 0x0001AFB0 
	0xEEEEEFEEEFEEFEEE, 0xEEEEEEFEEEEEEEEE, 0xEEEEEEEEEFEFFEFE, 0xEEEEEEFEEEEEEEEE,  // 0x0001AFD0 
	0xEEEEEEFFFEEEFEEE, 0xEEEFFEFEEEEEEEEE, 0xEEEEEEEEFEEEFEEE, 0xEEEFFEEEEEEEEEEE,  // 0x0001AFF0 
	0xEEEEEEEEEEEEEEFE, 0xEEEFEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001B010 
	0xEEEEEEEEEEEEEEEE, 0xEEEFEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEFEEEEEEEEEEEE,  // 0x0001B030 
	0xEEEEEEEEEEEEEEEE, 0xEEEFEEEEEEEEEEEE, 0xEEEEEEEEEEEEEFEE, 0xEEEFEEEEEEEEEEEE,  // 0x0001B050 
	0xEEEEEEEEEEEEEEEE, 0xEEEFEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE, 0xEEEEEEEEEEEEEEEE,  // 0x0001B070 
};

u64 _spot04_room_0_tex_0001B090[] = 
{
	0x944F39C318810001, 0x414041C15A8341C1, 0x1081000100012941, 0x5A411881000120C1,  // 0x0001B090 
	0x83895AC76B560000, 0x2880394210411041, 0x10014A0194458BCB, 0x31C1080131003101,  // 0x0001B0B0 
	0x734973434A090000, 0x3101318173C99C0D, 0xCDD3C59183853181, 0x0001000118812941,  // 0x0001B0D0 
	0x4A015A8362810001, 0x108141C162C14A41, 0x41C1294118810001, 0x0001314118C12941,  // 0x0001B0F0 
	0x000110017307BD57, 0x9C0B310139830800, 0x2040208018410001, 0x520849C5190139C1,  // 0x0001B110 
	0x2080208018410001, 0x9C09944D52411041, 0x0000288128C10840, 0x520542417B891901,  // 0x0001B130 
	0x000120C118810001, 0x080193C19C4F28C1, 0x18016A4162CF3981, 0x73079C4F4A410001,  // 0x0001B150 
	0x2081418118C12081, 0x00006281A48F31C1, 0x31016AC331437A81, 0xB45162415A8D0000,  // 0x0001B170 
	0x30C0524152434144, 0x2880390193CB5201, 0x520818403981BCD5, 0x61C152055A480800,  // 0x0001B190 
	0x30C05A812943628C, 0x10004985940D3981, 0x4184000039419BCB, 0x39416B106B104140,  // 0x0001B1B0 
	0x5A455A81290162D2, 0x000052019C4F1001, 0x1840000062017B07, 0x20C130C0418238C0,  // 0x0001B1D0 
	0x3941398100010841, 0x59C193899C070001, 0x00002081498149C3, 0x314131013902520B,  // 0x0001B1F0 
	0x3981288000018283, 0xDDD593435A410001, 0x2901398110012081, 0x18014941520328C1,  // 0x0001B210 
	0x000100013141DDD7, 0x8B41294100010801, 0x5A4193CB8BC91081, 0x000118015A0149C1,  // 0x0001B230 
	0x00010801ACCF7343, 0x0001000129C17355, 0x62856B01ACCF6B43, 0x20C1000139010001,  // 0x0001B250 
	0x00015203A4D12941, 0x0000000153037352, 0x5A48390162C1B513, 0x520118C030C10001,  // 0x0001B270 
	0x4A057B81A4911101, 0x000019034AC56B12, 0x5A48308210417B47, 0xC58B314120800000,  // 0x0001B290 
	0x000193C18C4D2941, 0x30C231C34A836B12, 0x49C65208000062C7, 0xACD149C100400001,  // 0x0001B2B0 
	0x000139418C0F4AC3, 0x414200004A434A03, 0x3942520A00004983, 0x9BC34181000120C1,  // 0x0001B2D0 
	0x000108417B8B3A01, 0x3183180118013141, 0x18C152084A416B01, 0x72C7000100010001,  // 0x0001B2F0 
	0x30C031016B075281, 0x3143394118C11081, 0x18C152817B878B8D, 0x0001000100011001,  // 0x0001B310 
	0x41843989520141C0, 0x290049C108410001, 0x3181630531811041, 0x0001000120811801,  // 0x0001B330 
	0x5A8C188149413100, 0x3100410020C12101, 0x2901314108810000, 0x000039835A833101,  // 0x0001B350 
	0x1881000139002080, 0x20C039418BC5AD13, 0x9C4BAD119C4F39C1, 0x5A8E51C273031881,  // 0x0001B370 
	0x000118017AC36AC1, 0x830173016A8149C1, 0x424142018341940D, 0x29016B1752410001,  // 0x0001B390 
	0x2901520149014201, 0x3983000100010001, 0x520429415241A48F, 0x5AC1104108010001,  // 0x0001B3B0 
	0x7B07410131010001, 0x0001000141400800, 0x394041C000018409, 0x3101000100010001,  // 0x0001B3D0 
	0x8BCB498128800000, 0x294331014A0B0000, 0x28C3418100014981, 0x18810001000151C1,  // 0x0001B3F0 
	0x5A41080100003102, 0x5A905A8339831000, 0x4A4328C120C14181, 0x000100013981A40B,  // 0x0001B410 
	0x00010000288049C4, 0x6B12524131011801, 0x3141000141840001, 0x000139818C0D6A81,  // 0x0001B430 
	0x0001088128C01041, 0x4A036AC15A813981, 0x18C1204018400000, 0x31019BC562411841,  // 0x0001B450 
	0x4A41218100014981, 0x62436AC352033101, 0x3900180000013181, 0x00018B8100010001,  // 0x0001B470 
};


