#include <ultra64.h>
#include <z64.h>
#include "spot16_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "spot16_scene.h"



SCmdAltHeaders _spot16_room_0_set0000_cmd00 = { 0x18, 0, (u32)&_spot16_room_0_alternateHeaders_00000050}; // 0x0000
SCmdEchoSettings _spot16_room_0_set0000_cmd01 = { 0x16, 0, { 0 }, 0x0A }; // 0x0008
SCmdRoomBehavior _spot16_room_0_set0000_cmd02 = { 0x08, 0x00, 0x00000000 }; // 0x0010
SCmdSkyboxDisables _spot16_room_0_set0000_cmd03 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0018
SCmdTimeSettings _spot16_room_0_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x0A }; // 0x0020
SCmdWindSettings _spot16_room_0_set0000_cmd05 = { 0x05, 0x00, 0x00, 0x00, 0x9C, 0xFF, 0x14, 0x82}; // 0x0028
SCmdMesh _spot16_room_0_set0000_cmd06 = { 0x0A, 0, (u32)&_spot16_room_0_meshHeader_000003D0 }; // 0x0030
SCmdObjectList _spot16_room_0_set0000_cmd07 = { 0x0B, 0x0E, (u32)_spot16_room_0_objectList_00000070 }; // 0x0038
SCmdActorList _spot16_room_0_set0000_cmd08 = { 0x01, 0x34, (u32)_spot16_room_0_actorList_0000008C }; // 0x0040
SCmdEndMarker _spot16_room_0_set0000_cmd09 = { 0x14, 0x00, 0x00 }; // 0x0048
u32 _spot16_room_0_alternateHeaders_00000050[] = 
{
	0,
	(u32)&_spot16_room_0_set0470_cmd00,
	0,
	(u32)&_spot16_room_0_set0940_cmd00,
	(u32)&_spot16_room_0_set09B0_cmd00,
	(u32)&_spot16_room_0_set0A90_cmd00,
	(u32)&_spot16_room_0_set0B70_cmd00,
	(u32)&_spot16_room_0_set0C00_cmd00,
};

s16 _spot16_room_0_objectList_00000070[] = 
{
	OBJECT_SPOT16_OBJ,
	OBJECT_EFC_DOUGHNUT,
	OBJECT_OF1D_MAP,
	OBJECT_BOMBF,
	OBJECT_TITE,
	OBJECT_HATA,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_MAMENOKI,
	OBJECT_KANBAN,
	OBJECT_OWL,
	OBJECT_BOMBIWA,
	OBJECT_GS,
	OBJECT_ST,
	OBJECT_BOX,
};

ActorEntry _spot16_room_0_actorList_0000008C[52] = 
{
	{ ACTOR_EN_RIVER_SOUND, -688, 1946, -285, 0, 0, 0, 0x0015 }, //0x0000008C 
	{ ACTOR_EN_ITEM00, -625, 1794, -55, 0, 0, 0, 0x0A02 }, //0x0000009C 
	{ ACTOR_EN_ITEM00, -1060, 1694, -51, 0, 0, 0, 0x0701 }, //0x000000AC 
	{ ACTOR_EN_OWL, -42, 3347, -4409, 0, 2731, 0, 0x0213 }, //0x000000BC 
	{ ACTOR_EN_GS, 40, 2872, -3935, 0, 0, 0, 0x3804 }, //0x000000CC 
	{ ACTOR_EN_GO2, -1235, 1159, 892, 0, 0, 0, 0xFFEC }, //0x000000DC 
	{ ACTOR_EN_SW, 62, 2619, -3983, 16384, 0, 0, 0x0000 }, //0x000000EC 
	{ ACTOR_EN_SW, -157, 2784, -3983, 16384, 0, 0, 0x0000 }, //0x000000FC 
	{ ACTOR_EN_SW, 15, 3040, -3981, 16384, 0, 0, 0x0000 }, //0x0000010C 
	{ ACTOR_EN_TITE, -2012, 258, 1953, 0, 6007, 0, 0xFFFF }, //0x0000011C 
	{ ACTOR_EN_TITE, -1996, 414, 683, 0, 2913, 0, 0xFFFF }, //0x0000012C 
	{ ACTOR_EN_TITE, -1918, 357, 1085, 0, -3277, 0, 0xFFFF }, //0x0000013C 
	{ ACTOR_EN_TITE, -1776, 790, -19, 0, -9102, 0, 0xFFFF }, //0x0000014C 
	{ ACTOR_EN_ITEM00, -1500, 1031, -1100, 0, 0, 0, 0x1E06 }, //0x0000015C 
	{ ACTOR_BG_BOMBWALL, -1825, 340, 1189, 0, -16384, 0, 0x8001 }, //0x0000016C 
	{ ACTOR_BG_BOMBWALL, -540, 1448, -81, 0, 12743, 0, 0x8002 }, //0x0000017C 
	{ ACTOR_BG_BOMBWALL, -245, 3305, -4480, 0, 4733, 0, 0x8003 }, //0x0000018C 
	{ ACTOR_DOOR_ANA, -688, 1946, -285, 0, -32768, 13, 0x00F8 }, //0x0000019C 
	{ ACTOR_DOOR_ANA, -383, 1386, -1206, 0, -32768, 0, 0x0157 }, //0x000001AC 
	{ ACTOR_EN_A_OBJ, -1300, 120, 2155, 0, -10012, 0, 0x050A }, //0x000001BC 
	{ ACTOR_EN_A_OBJ, -735, 1241, 595, 0, 6554, 0, 0x210A }, //0x000001CC 
	{ ACTOR_EN_A_OBJ, -40, 3299, -4410, 0, 4915, 0, 0x230A }, //0x000001DC 
	{ ACTOR_EN_A_OBJ, -1127, 1662, 44, 0, 8556, 0, 0x2D0A }, //0x000001EC 
	{ ACTOR_EN_HATA, -746, 1273, 515, 0, -5461, 0, 0xFFFF }, //0x000001FC 
	{ ACTOR_EN_SW, -1653, 478, 1194, 16384, -16384, 0, 0x9004 }, //0x0000020C 
	{ ACTOR_OBJ_MAKEKINSUTA, -1610, 677, -735, 0, 0, 0, 0x5002 }, //0x0000021C 
	{ ACTOR_EN_GO2, -1278, 1411, -552, 0, 15656, 0, 0x1404 }, //0x0000022C 
	{ ACTOR_EN_ISHI, -1816, 681, -513, 0, 0, 0, 0x0B00 }, //0x0000023C 
	{ ACTOR_EN_ISHI, -1831, 681, -614, 0, 0, 0, 0x0B00 }, //0x0000024C 
	{ ACTOR_EN_ISHI, -1857, 681, -536, 0, 0, 0, 0x0B00 }, //0x0000025C 
	{ ACTOR_EN_ISHI, -1878, 681, -465, 0, 0, 0, 0x0B00 }, //0x0000026C 
	{ ACTOR_EN_ISHI, -1787, 681, -550, 0, 0, 0, 0x0B00 }, //0x0000027C 
	{ ACTOR_EN_ISHI, -327, 3280, -4286, 0, 0, 0, 0x0210 }, //0x0000028C 
	{ ACTOR_OBJ_MURE2, -383, 1386, -1206, 0, 0, 0, 0x0B02 }, //0x0000029C 
	{ ACTOR_EN_KANBAN, -1260, 1409, 540, 0, 0, 0, 0x0309 }, //0x000002AC 
	{ ACTOR_EN_KANBAN, -1834, 681, -571, 0, 0, 0, 0x030A }, //0x000002BC 
	{ ACTOR_EN_KANBAN, -299, 1209, -1787, 0, 0, 0, 0x030B }, //0x000002CC 
	{ ACTOR_EN_KANBAN, -1300, 1413, -496, 0, 15110, 0, 0x0322 }, //0x000002DC 
	{ ACTOR_SHOT_SUN, -730, 1347, 464, 0, 0, 0, 0xFF40 }, //0x000002EC 
	{ ACTOR_EN_ENCOUNT2, -199, 2032, -3060, 0, 0, 0, 0x0005 }, //0x000002FC 
	{ ACTOR_EN_GO2, -311, 1500, -393, 0, -4915, 0, 0xFC25 }, //0x0000030C 
	{ ACTOR_BG_SPOT16_DOUGHNUT, 102, 5583, -6518, 0, 0, 0, 0xFFFF }, //0x0000031C 
	{ ACTOR_BG_SPOT16_BOMBSTONE, -1679, 684, -690, 0, 0, 0, 0x04FF }, //0x0000032C 
	{ ACTOR_OBJ_BEAN, -1610, 677, -735, 0, 0, 0, 0x1F06 }, //0x0000033C 
	{ ACTOR_EN_WONDER_TALK2, -237, 3370, -4462, 0, 4733, 41, 0x8EC3 }, //0x0000034C 
	{ ACTOR_EN_GO2, -1602, 702, -475, 0, 0, 0, 0xFFE6 }, //0x0000035C 
	{ ACTOR_EN_BOMBF, -1397, 1408, -646, 0, 0, 0, 0xFFFF }, //0x0000036C 
	{ ACTOR_OBJ_BOMBIWA, -1060, 1694, -51, 0, 2367, 0, 0x0007 }, //0x0000037C 
	{ ACTOR_OBJ_BOMBIWA, -808, 1754, -59, 0, -16566, 0, 0x0008 }, //0x0000038C 
	{ ACTOR_OBJ_BOMBIWA, -625, 1794, -55, 0, 0, 0, 0x000A }, //0x0000039C 
	{ ACTOR_OBJ_BOMBIWA, -688, 1946, -285, 0, 0, 0, 0x801F }, //0x000003AC 
	{ ACTOR_EN_BOX, -623, 1454, -115, 0, -20025, 0, 0x5AA1 }, //0x000003BC 
};

static u32 pad3CC = 0;

MeshHeader2 _spot16_room_0_meshHeader_000003D0 = { { 2 }, 0x09, (u32)&_spot16_room_0_meshDListEntry_000003DC, (u32)&(_spot16_room_0_meshDListEntry_000003DC) + sizeof(_spot16_room_0_meshDListEntry_000003DC) };

MeshEntry2 _spot16_room_0_meshDListEntry_000003DC[9] = 
{
	{ -1776, 712, 648, 3621, (u32)_spot16_room_0_dlist_00002A78, (u32)_spot16_room_0_dlist_0000A5A8 },
	{ -665, 953, 522, 2579, (u32)_spot16_room_0_dlist_00004788, (u32)_spot16_room_0_dlist_0000A6F8 },
	{ 39, 1368, -630, 5694, (u32)_spot16_room_0_dlist_00005B98, 0 },
	{ -218, 3303, -5492, 5809, (u32)_spot16_room_0_dlist_00009BD0, 0 },
	{ -795, 1436, -1611, 1673, (u32)_spot16_room_0_dlist_00007200, (u32)_spot16_room_0_dlist_0000A8E8 },
	{ -3739, -342, 5258, 2914, (u32)_spot16_room_0_dlist_000060E0, 0 },
	{ -256, 175, 2999, 1111, (u32)_spot16_room_0_dlist_0000A240, (u32)_spot16_room_0_dlist_0000ABC8 },
	{ 573, 234, 3811, 7328, (u32)_spot16_room_0_dlist_000066D0, 0 },
	{ -1345, 1454, -692, 307, (u32)_spot16_room_0_dlist_00007C78, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

SCmdEchoSettings _spot16_room_0_set0470_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0470
SCmdRoomBehavior _spot16_room_0_set0470_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0478
SCmdSkyboxDisables _spot16_room_0_set0470_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0480
SCmdTimeSettings _spot16_room_0_set0470_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x0A }; // 0x0488
SCmdWindSettings _spot16_room_0_set0470_cmd04 = { 0x05, 0x00, 0x00, 0x00, 0x9C, 0xFF, 0x14, 0x82}; // 0x0490
SCmdMesh _spot16_room_0_set0470_cmd05 = { 0x0A, 0, (u32)&_spot16_room_0_meshHeader_000003D0 }; // 0x0498
SCmdObjectList _spot16_room_0_set0470_cmd06 = { 0x0B, 0x0E, (u32)_spot16_room_0_objectList_000004B8 }; // 0x04A0
SCmdActorList _spot16_room_0_set0470_cmd07 = { 0x01, 0x36, (u32)_spot16_room_0_actorList_000004D4 }; // 0x04A8
SCmdEndMarker _spot16_room_0_set0470_cmd08 = { 0x14, 0x00, 0x00 }; // 0x04B0
s16 _spot16_room_0_objectList_000004B8[] = 
{
	OBJECT_SPOT16_OBJ,
	OBJECT_EFC_DOUGHNUT,
	OBJECT_OF1D_MAP,
	OBJECT_BOMBF,
	OBJECT_TITE,
	OBJECT_HATA,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_MAMENOKI,
	OBJECT_KANBAN,
	OBJECT_GOROIWA,
	OBJECT_BOMBIWA,
	OBJECT_GS,
	OBJECT_ST,
	OBJECT_BOX,
};

ActorEntry _spot16_room_0_actorList_000004D4[70] = 
{
	{ ACTOR_EN_RIVER_SOUND, -688, 1946, -285, 0, 0, 0, 0x0015 }, //0x000004D4 
	{ ACTOR_EN_GS, 40, 2872, -3935, 0, 0, 0, 0x3804 }, //0x000004E4 
	{ ACTOR_EN_SW, 64, 2609, -3982, 16384, 0, 0, 0x0000 }, //0x000004F4 
	{ ACTOR_EN_SW, -176, 2753, -3981, 16384, 0, 0, 0x0000 }, //0x00000504 
	{ ACTOR_EN_SW, -90, 2925, -3982, 16384, 0, 0, 0x0000 }, //0x00000514 
	{ ACTOR_EN_GO2, 820, 3090, -3900, 0, -23666, 0, 0xFFE2 }, //0x00000524 
	{ ACTOR_EN_TITE, -1993, 368, 1012, 0, 0, 0, 0xFFFF }, //0x00000534 
	{ ACTOR_EN_TITE, -1798, 245, 1922, 0, 3277, 0, 0xFFFF }, //0x00000544 
	{ ACTOR_EN_TITE, 52, 2874, -3919, 0, -16384, 0, 0xFFFF }, //0x00000554 
	{ ACTOR_EN_ITEM00, -1500, 1031, -1100, 0, 0, 0, 0x1E06 }, //0x00000564 
	{ ACTOR_OBJ_HAMISHI, -1175, 1417, -803, 0, 0, 0, 0x0009 }, //0x00000574 
	{ ACTOR_OBJ_HAMISHI, -1948, 282, 1706, 0, 0, 0, 0x0014 }, //0x00000584 
	{ ACTOR_OBJ_HAMISHI, -2019, 336, 1101, 0, 0, 0, 0x0015 }, //0x00000594 
	{ ACTOR_OBJ_HAMISHI, -1658, 710, -88, 0, 0, 0, 0x0016 }, //0x000005A4 
	{ ACTOR_OBJ_HAMISHI, -1753, 913, 445, 0, 0, 0, 0x0017 }, //0x000005B4 
	{ ACTOR_OBJ_HAMISHI, -1018, 1089, 1283, 0, 0, 0, 0x0018 }, //0x000005C4 
	{ ACTOR_OBJ_HAMISHI, -1986, 392, 727, 0, 0, 0, 0x0019 }, //0x000005D4 
	{ ACTOR_OBJ_HAMISHI, -23, 2082, -3196, 0, 0, 0, 0x001A }, //0x000005E4 
	{ ACTOR_OBJ_HAMISHI, -343, 1926, -2794, 0, 0, 0, 0x001B }, //0x000005F4 
	{ ACTOR_OBJ_HAMISHI, -154, 1827, -2484, 0, 0, 0, 0x001C }, //0x00000604 
	{ ACTOR_OBJ_HAMISHI, -1590, 693, -402, 0, 0, 0, 0x001D }, //0x00000614 
	{ ACTOR_BG_BOMBWALL, -1825, 340, 1189, 0, -16384, 0, 0x8001 }, //0x00000624 
	{ ACTOR_BG_BOMBWALL, -540, 1448, -81, 0, 12743, 0, 0x8002 }, //0x00000634 
	{ ACTOR_BG_BOMBWALL, -245, 3305, -4480, 0, 4733, 0, 0x8003 }, //0x00000644 
	{ ACTOR_DOOR_ANA, -688, 1946, -285, 0, -32768, 13, 0x00F8 }, //0x00000654 
	{ ACTOR_DOOR_ANA, -383, 1386, -1206, 0, -32768, 0, 0x0157 }, //0x00000664 
	{ ACTOR_EN_A_OBJ, -1300, 120, 2155, 0, -10012, 0, 0x050A }, //0x00000674 
	{ ACTOR_EN_A_OBJ, -735, 1241, 595, 0, 6554, 0, 0x210A }, //0x00000684 
	{ ACTOR_EN_A_OBJ, -40, 3299, -4410, 0, 4915, 0, 0x230A }, //0x00000694 
	{ ACTOR_EN_A_OBJ, -1127, 1662, 44, 0, 8556, 0, 0x2D0A }, //0x000006A4 
	{ ACTOR_EN_A_OBJ, -299, 1209, -1787, 0, 22756, 0, 0x0B0A }, //0x000006B4 
	{ ACTOR_EN_HATA, -746, 1273, 515, 0, -5461, 0, 0xFFFF }, //0x000006C4 
	{ ACTOR_EN_SW, -1653, 478, 1194, 16384, -16384, 0, 0x9004 }, //0x000006D4 
	{ ACTOR_EN_SW, -1166, 1465, -812, 16384, -11469, 0, 0xB008 }, //0x000006E4 
	{ ACTOR_EN_SW, 0, 2123, -3196, 16384, -18204, 0, 0xB010 }, //0x000006F4 
	{ ACTOR_EN_ISHI, -1816, 681, -513, 0, 0, 0, 0x0B00 }, //0x00000704 
	{ ACTOR_EN_ISHI, -1831, 681, -614, 0, 0, 0, 0x0B00 }, //0x00000714 
	{ ACTOR_EN_ISHI, -1857, 681, -536, 0, 0, 0, 0x0B00 }, //0x00000724 
	{ ACTOR_EN_ISHI, -1878, 681, -465, 0, 0, 0, 0x0B00 }, //0x00000734 
	{ ACTOR_EN_ISHI, -1787, 681, -550, 0, 0, 0, 0x0B00 }, //0x00000744 
	{ ACTOR_OBJ_MURE2, -383, 1386, -1206, 0, 0, 0, 0x0B02 }, //0x00000754 
	{ ACTOR_EN_KANBAN, -1260, 1409, 540, 0, 0, 0, 0x0309 }, //0x00000764 
	{ ACTOR_EN_KANBAN, -1834, 681, -571, 0, 0, 0, 0x030A }, //0x00000774 
	{ ACTOR_SHOT_SUN, -730, 1347, 464, 0, 0, 0, 0xFF40 }, //0x00000784 
	{ ACTOR_EN_ENCOUNT2, -199, 2032, -3060, 0, 0, 0, 0x0005 }, //0x00000794 
	{ ACTOR_BG_SPOT16_DOUGHNUT, 102, 5583, -6518, 0, 0, 0, 0xFFFF }, //0x000007A4 
	{ ACTOR_OBJ_BEAN, -1610, 677, -737, 0, 0, 2, 0x0006 }, //0x000007B4 
	{ ACTOR_EN_WONDER_TALK2, -237, 3370, -4462, 0, 4733, 41, 0x8EC3 }, //0x000007C4 
	{ ACTOR_OBJ_BOMBIWA, -808, 1754, -59, 0, -16566, 0, 0x0008 }, //0x000007D4 
	{ ACTOR_OBJ_BOMBIWA, -625, 1794, -55, 0, 0, 0, 0x000A }, //0x000007E4 
	{ ACTOR_OBJ_BOMBIWA, -688, 1946, -285, 0, 0, 0, 0x801F }, //0x000007F4 
	{ ACTOR_EN_GOROIWA, -1444, 1506, -1627, 0, -1820, 1, 0x0D01 }, //0x00000804 
	{ ACTOR_EN_GOROIWA, -1145, 2177, -370, 0, 1820, 1, 0x0C02 }, //0x00000814 
	{ ACTOR_EN_BOX, -607, 1454, -112, 0, -20025, 0, 0x5AA1 }, //0x00000824 
	{ ACTOR_PLAYER, 0, 0, 0, 0, 0, 5632, 0x0000 }, //0x00000834 
	{ ACTOR_PLAYER, 11, 2048, 0, 0, 0, 4608, 0x0000 }, //0x00000844 
	{ ACTOR_PLAYER, 0, 4096, 0, 5120, 0, 1280, 0x0000 }, //0x00000854 
	{ 0x5A00, -5, 2560, 0, 768, 976, 2821, 0x0000 }, //0x00000864 
	{ 0x0300, 2184, 266, 0, 768, 2196, 5120, 0x0000 }, //0x00000874 
	{ ACTOR_PLAYER, 0, 41, 52, 49, 22, 56, 0x0000 }, //0x00000884 
	{ ACTOR_EN_TITE, -1942, 361, 1052, 0, 0, 0, 0xFFFF }, //0x00000894 
	{ ACTOR_EN_A_OBJ, -1774, 686, -590, 0, 3641, 0, 0x110A }, //0x000008A4 
	{ ACTOR_EN_BOMBF, -570, 1489, -458, 0, 0, 0, 0xFFFF }, //0x000008B4 
	{ ACTOR_EN_A_OBJ, -850, 1206, 741, 0, 16384, 0, 0x120A }, //0x000008C4 
	{ ACTOR_EN_TITE, -1886, 401, 736, 0, 0, 0, 0xFFFF }, //0x000008D4 
	{ ACTOR_EN_TITE, -1928, 494, 409, 0, 0, 0, 0xFFFF }, //0x000008E4 
	{ ACTOR_EN_TITE, -1101, 1162, 978, 0, -8192, 0, 0xFFFF }, //0x000008F4 
	{ ACTOR_EN_HATA, -1038, 2208, -274, 0, 0, 0, 0xFFFF }, //0x00000904 
	{ ACTOR_EN_HATA, -824, 1210, 1143, 0, -32768, 0, 0xFFFF }, //0x00000914 
	{ ACTOR_BG_SPOT16_BOMBSTONE, -1679, 684, -690, 0, 0, 0, 0xFFFF }, //0x00000924 
};

static u32 pad934 = 0;
static u32 pad938 = 0;
static u32 pad93C = 0;

SCmdEchoSettings _spot16_room_0_set0940_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0940
SCmdRoomBehavior _spot16_room_0_set0940_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0948
SCmdSkyboxDisables _spot16_room_0_set0940_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0950
SCmdTimeSettings _spot16_room_0_set0940_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0D, 0x1C, 0x00 }; // 0x0958
SCmdMesh _spot16_room_0_set0940_cmd04 = { 0x0A, 0, (u32)&_spot16_room_0_meshHeader_000003D0 }; // 0x0960
SCmdObjectList _spot16_room_0_set0940_cmd05 = { 0x0B, 0x02, (u32)_spot16_room_0_objectList_00000980 }; // 0x0968
SCmdActorList _spot16_room_0_set0940_cmd06 = { 0x01, 0x02, (u32)_spot16_room_0_actorList_00000984 }; // 0x0970
SCmdEndMarker _spot16_room_0_set0940_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0978
s16 _spot16_room_0_objectList_00000980[] = 
{
	OBJECT_GOD_LGT,
	OBJECT_LIGHT_RING,
};

ActorEntry _spot16_room_0_actorList_00000984[2] = 
{
	{ ACTOR_DEMO_EFFECT, -230, 2262, -2544, 0, 0, 0, 0xFF05 }, //0x00000984 
	{ ACTOR_BG_SPOT16_DOUGHNUT, 102, 5583, -6518, 0, 0, 0, 0xFFFF }, //0x00000994 
};

static u32 pad9A4 = 0;
static u32 pad9A8 = 0;
static u32 pad9AC = 0;

SCmdEchoSettings _spot16_room_0_set09B0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x09B0
SCmdRoomBehavior _spot16_room_0_set09B0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x09B8
SCmdSkyboxDisables _spot16_room_0_set09B0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x09C0
SCmdTimeSettings _spot16_room_0_set09B0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00 }; // 0x09C8
SCmdMesh _spot16_room_0_set09B0_cmd04 = { 0x0A, 0, (u32)&_spot16_room_0_meshHeader_000003D0 }; // 0x09D0
SCmdObjectList _spot16_room_0_set09B0_cmd05 = { 0x0B, 0x08, (u32)_spot16_room_0_objectList_000009F0 }; // 0x09D8
SCmdActorList _spot16_room_0_set09B0_cmd06 = { 0x01, 0x09, (u32)_spot16_room_0_actorList_00000A00 }; // 0x09E0
SCmdEndMarker _spot16_room_0_set09B0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x09E8
s16 _spot16_room_0_objectList_000009F0[] = 
{
	OBJECT_O_ANIME,
	OBJECT_OE_ANIME,
	OBJECT_OF1D_MAP,
	OBJECT_DU,
	OBJECT_GI_JEWEL,
	OBJECT_EFC_FLASH,
	OBJECT_WARP1,
	OBJECT_EFC_DOUGHNUT,
};

ActorEntry _spot16_room_0_actorList_00000A00[9] = 
{
	{ ACTOR_DEMO_GO, -1808, 684, -544, 0, 0, 0, 0x0000 }, //0x00000A00 
	{ ACTOR_DEMO_GO, -1707, 693, -544, 0, 0, 0, 0x0001 }, //0x00000A10 
	{ ACTOR_DEMO_GO, -1631, 696, -523, 0, 0, 0, 0x0002 }, //0x00000A20 
	{ ACTOR_DEMO_DU, -1799, 705, -466, 0, 0, 0, 0x0001 }, //0x00000A30 
	{ ACTOR_DEMO_EFFECT, -1715, 694, -490, 0, 0, 0, 0x0012 }, //0x00000A40 
	{ ACTOR_DEMO_EFFECT, -1714, 705, -319, 0, 0, 0, 0x0014 }, //0x00000A50 
	{ ACTOR_BG_SPOT16_BOMBSTONE, -1679, 684, -690, 0, 0, 0, 0xFFFF }, //0x00000A60 
	{ ACTOR_BG_SPOT16_DOUGHNUT, 102, 5583, -6518, 0, 0, 0, 0xFFFF }, //0x00000A70 
	{ ACTOR_DOOR_WARP1, -1656, 695, -519, 0, 0, 0, 0x0006 }, //0x00000A80 
};


SCmdEchoSettings _spot16_room_0_set0A90_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0A90
SCmdRoomBehavior _spot16_room_0_set0A90_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0A98
SCmdSkyboxDisables _spot16_room_0_set0A90_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0AA0
SCmdTimeSettings _spot16_room_0_set0A90_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00 }; // 0x0AA8
SCmdMesh _spot16_room_0_set0A90_cmd04 = { 0x0A, 0, (u32)&_spot16_room_0_meshHeader_000003D0 }; // 0x0AB0
SCmdObjectList _spot16_room_0_set0A90_cmd05 = { 0x0B, 0x08, (u32)_spot16_room_0_objectList_00000AD0 }; // 0x0AB8
SCmdActorList _spot16_room_0_set0A90_cmd06 = { 0x01, 0x09, (u32)_spot16_room_0_actorList_00000AE0 }; // 0x0AC0
SCmdEndMarker _spot16_room_0_set0A90_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0AC8
s16 _spot16_room_0_objectList_00000AD0[] = 
{
	OBJECT_O_ANIME,
	OBJECT_OE_ANIME,
	OBJECT_OF1D_MAP,
	OBJECT_DU,
	OBJECT_GI_JEWEL,
	OBJECT_EFC_FLASH,
	OBJECT_WARP1,
	OBJECT_EFC_DOUGHNUT,
};

ActorEntry _spot16_room_0_actorList_00000AE0[9] = 
{
	{ ACTOR_DEMO_GO, -1808, 684, -544, 0, 0, 0, 0x0000 }, //0x00000AE0 
	{ ACTOR_DEMO_GO, -1707, 693, -544, 0, 0, 0, 0x0001 }, //0x00000AF0 
	{ ACTOR_DEMO_GO, -1631, 696, -523, 0, 0, 0, 0x0002 }, //0x00000B00 
	{ ACTOR_DEMO_DU, -1799, 705, -466, 0, 0, 0, 0x0001 }, //0x00000B10 
	{ ACTOR_DEMO_EFFECT, -1715, 694, -490, 0, 0, 0, 0x0012 }, //0x00000B20 
	{ ACTOR_DEMO_EFFECT, -1714, 705, -319, 0, 0, 0, 0x0014 }, //0x00000B30 
	{ ACTOR_BG_SPOT16_BOMBSTONE, -1679, 684, -690, 0, 0, 0, 0xFFFF }, //0x00000B40 
	{ ACTOR_BG_SPOT16_DOUGHNUT, 102, 5583, -6518, 0, 0, 0, 0xFFFF }, //0x00000B50 
	{ ACTOR_DOOR_WARP1, -1656, 695, -519, 0, 0, 0, 0x0006 }, //0x00000B60 
};


SCmdEchoSettings _spot16_room_0_set0B70_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0B70
SCmdRoomBehavior _spot16_room_0_set0B70_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0B78
SCmdSkyboxDisables _spot16_room_0_set0B70_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0B80
SCmdTimeSettings _spot16_room_0_set0B70_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0xFF }; // 0x0B88
SCmdMesh _spot16_room_0_set0B70_cmd04 = { 0x0A, 0, (u32)&_spot16_room_0_meshHeader_000003D0 }; // 0x0B90
SCmdObjectList _spot16_room_0_set0B70_cmd05 = { 0x0B, 0x0F, (u32)_spot16_room_0_objectList_00000BB0 }; // 0x0B98
SCmdActorList _spot16_room_0_set0B70_cmd06 = { 0x01, 0x03, (u32)_spot16_room_0_actorList_00000BD0 }; // 0x0BA0
SCmdEndMarker _spot16_room_0_set0B70_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0BA8
s16 _spot16_room_0_objectList_00000BB0[] = 
{
	OBJECT_SPOT16_OBJ,
	OBJECT_EFC_DOUGHNUT,
	OBJECT_OF1D_MAP,
	OBJECT_BOMBF,
	OBJECT_TITE,
	OBJECT_HATA,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_MAMENOKI,
	OBJECT_KANBAN,
	OBJECT_OWL,
	OBJECT_BOMBIWA,
	OBJECT_GS,
	OBJECT_ST,
	OBJECT_COW,
	OBJECT_BOX,
};

ActorEntry _spot16_room_0_actorList_00000BD0[3] = 
{
	{ ACTOR_BG_SPOT16_BOMBSTONE, -1679, 684, -690, 0, 0, 0, 0xFFFF }, //0x00000BD0 
	{ ACTOR_BG_SPOT16_DOUGHNUT, 102, 5583, -6518, 0, 0, 0, 0xFFFF }, //0x00000BE0 
	{ ACTOR_OBJ_MURE2, -383, 1386, -1206, 0, 0, 0, 0xFF02 }, //0x00000BF0 
};


SCmdEchoSettings _spot16_room_0_set0C00_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0C00
SCmdRoomBehavior _spot16_room_0_set0C00_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0C08
SCmdSkyboxDisables _spot16_room_0_set0C00_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0C10
SCmdTimeSettings _spot16_room_0_set0C00_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14 }; // 0x0C18
SCmdWindSettings _spot16_room_0_set0C00_cmd04 = { 0x05, 0x00, 0x00, 0x00, 0x5A, 0x00, 0xFF, 0xFB}; // 0x0C20
SCmdMesh _spot16_room_0_set0C00_cmd05 = { 0x0A, 0, (u32)&_spot16_room_0_meshHeader_000003D0 }; // 0x0C28
SCmdObjectList _spot16_room_0_set0C00_cmd06 = { 0x0B, 0x06, (u32)_spot16_room_0_objectList_00000C48 }; // 0x0C30
SCmdActorList _spot16_room_0_set0C00_cmd07 = { 0x01, 0x0C, (u32)_spot16_room_0_actorList_00000C54 }; // 0x0C38
SCmdEndMarker _spot16_room_0_set0C00_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0C40
s16 _spot16_room_0_objectList_00000C48[] = 
{
	OBJECT_IM,
	OBJECT_RU2,
	OBJECT_NB,
	OBJECT_SA,
	OBJECT_DU,
	OBJECT_EFC_FLASH,
};

ActorEntry _spot16_room_0_actorList_00000C54[12] = 
{
	{ ACTOR_DEMO_6K, -1778, 685, -467, 0, 0, 0, 0x000E }, //0x00000C54 
	{ ACTOR_DEMO_6K, -1714, 691, -451, 0, 0, 0, 0x000F }, //0x00000C64 
	{ ACTOR_DEMO_6K, -1602, 701, -435, 0, 0, 0, 0x0010 }, //0x00000C74 
	{ ACTOR_DEMO_6K, -1666, 687, -515, 0, 0, 0, 0x0011 }, //0x00000C84 
	{ ACTOR_DEMO_6K, -1586, 693, -515, 0, 0, 0, 0x0012 }, //0x00000C94 
	{ ACTOR_DEMO_6K, -1714, 681, -547, 0, 0, 0, 0x0013 }, //0x00000CA4 
	{ ACTOR_DEMO_SA, -1794, 681, -531, 0, 0, 0, 0x0004 }, //0x00000CB4 
	{ ACTOR_DEMO_DU, -1650, 704, -371, 0, 0, 0, 0x0003 }, //0x00000CC4 
	{ ACTOR_EN_RU2, -1714, 682, -531, 0, 0, 0, 0x0003 }, //0x00000CD4 
	{ ACTOR_EN_NB, -1730, 687, -483, 0, 0, 0, 0x0005 }, //0x00000CE4 
	{ ACTOR_DEMO_IM, -1890, 688, -371, 0, 0, 0, 0x0006 }, //0x00000CF4 
	{ ACTOR_BG_SPOT16_DOUGHNUT, 102, 5583, -6518, 0, 0, 0, 0xFFFF }, //0x00000D04 
};

static u32 padD14 = 0;
static u32 padD18 = 0;
static u32 padD1C = 0;

Vtx_t _spot16_room_0_vertices_00000D20[4] = 
{
	 { -1119, 618, 2002, 0, 0, 512, 176, 37, 81, 255 }, // 0x00000D20
	 { -820, -570, 3897, 0, 3351, 512, 143, 23, 32, 255 }, // 0x00000D30
	 { -1109, 724, 1963, 0, 0, 0, 176, 37, 81, 255 }, // 0x00000D40
	 { -1779, 825, 1763, 0, -3351, 512, 223, 31, 110, 255 }, // 0x00000D50
};

Vtx_t _spot16_room_0_vertices_00000D60[12] = 
{
	 { -1279, 750, 1913, 0, 1278, 811, 225, 20, 114, 255 }, // 0x00000D60
	 { -1324, 974, 1829, 0, 1106, -230, 238, 74, 92, 255 }, // 0x00000D70
	 { -1757, 966, 1744, 0, 121, -58, 199, 64, 83, 255 }, // 0x00000D80
	 { -1779, 825, 1763, 0, 104, 584, 223, 31, 110, 255 }, // 0x00000D90
	 { -1036, 288, 2529, 0, 3948, 1302, 137, 8, 1, 255 }, // 0x00000DA0
	 { -1119, 618, 2002, 0, 2716, -427, 176, 37, 81, 255 }, // 0x00000DB0
	 { -1171, 88, 2193, 0, 3062, 2194, 198, 72, 75, 255 }, // 0x00000DC0
	 { -1171, 88, 2193, 0, 3062, 2194, 198, 72, 75, 255 }, // 0x00000DD0
	 { -1119, 618, 2002, 0, 2716, -427, 176, 37, 81, 255 }, // 0x00000DE0
	 { -1779, 825, 1763, 0, 965, -565, 223, 31, 110, 255 }, // 0x00000DF0
	 { -1171, 88, 2193, 0, 3062, 2194, 198, 72, 75, 255 }, // 0x00000E00
	 { -1863, 264, 1837, 0, 1150, 2153, 189, 96, 25, 255 }, // 0x00000E10
};

Vtx_t _spot16_room_0_vertices_00000E20[3] = 
{
	 { -1029, 17, 2494, 0, 0, 214, 184, 95, 255, 255 }, // 0x00000E20
	 { -1250, 17, 2485, 0, 2048, 1499, 77, 85, 33, 255 }, // 0x00000E30
	 { -1404, -77, 2895, 0, 0, -2593, 7, 119, 254, 255 }, // 0x00000E40
};

Vtx_t _spot16_room_0_vertices_00000E50[11] = 
{
	 { -1595, 75, 3157, 0, 5410, 2203, 18, 106, 203, 255 }, // 0x00000E50
	 { -1036, 288, 2529, 0, 3948, 1302, 137, 8, 1, 255 }, // 0x00000E60
	 { -1029, 17, 2494, 0, 3854, 2595, 184, 95, 255, 255 }, // 0x00000E70
	 { -1404, -77, 2895, 0, 4975, 3092, 7, 119, 254, 255 }, // 0x00000E80
	 { -1595, 75, 3157, 0, 5410, 2203, 18, 106, 203, 255 }, // 0x00000E90
	 { -1029, 17, 2494, 0, 3854, 2595, 184, 95, 255, 255 }, // 0x00000EA0
	 { -1036, 288, 2529, 0, 3948, 1302, 137, 8, 1, 255 }, // 0x00000EB0
	 { -1171, 88, 2193, 0, 3062, 2194, 198, 72, 75, 255 }, // 0x00000EC0
	 { -1323, 88, 2347, 0, 1043, 1173, 57, 103, 236, 255 }, // 0x00000ED0
	 { -1373, 378, 2372, 0, 848, -116, 87, 29, 179, 255 }, // 0x00000EE0
	 { -1250, 17, 2485, 0, 698, 1440, 77, 85, 33, 255 }, // 0x00000EF0
};

Vtx_t _spot16_room_0_vertices_00000F00[4] = 
{
	 { -1171, 88, 2193, 0, 0, -29139, 198, 72, 75, 255 }, // 0x00000F00
	 { -1323, 88, 2347, 0, 2048, -29323, 57, 103, 236, 255 }, // 0x00000F10
	 { -1029, 17, 2494, 0, 0, -32554, 184, 95, 255, 255 }, // 0x00000F20
	 { -1250, 17, 2485, 0, 2048, -31269, 77, 85, 33, 255 }, // 0x00000F30
};

Vtx_t _spot16_room_0_vertices_00000F40[6] = 
{
	 { -1250, 17, 2485, 0, 3854, 2595, 77, 85, 33, 255 }, // 0x00000F40
	 { -1595, 75, 3157, 0, 5410, 2203, 18, 106, 203, 255 }, // 0x00000F50
	 { -1404, -77, 2895, 0, 4975, 3092, 7, 119, 254, 255 }, // 0x00000F60
	 { -1250, 17, 2485, 0, 3854, 2595, 77, 85, 33, 255 }, // 0x00000F70
	 { -1373, 378, 2372, 0, 3948, 1302, 87, 29, 179, 255 }, // 0x00000F80
	 { -1595, 75, 3157, 0, 5410, 2203, 18, 106, 203, 255 }, // 0x00000F90
};

Gfx _spot16_room_0_dlist_00000FA0[] =
{
	gsDPPipeSync(), // 0x00000FA0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000FA8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000FB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00019698), // 0x00000FB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00000FC0
	gsDPLoadSync(), // 0x00000FC8
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00000FD0
	gsDPPipeSync(), // 0x00000FD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00000FE0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00000FE8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000FF0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000FF8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001000
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001008
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001010
	gsSPVertex(_spot16_room_0_vertices_00000D20, 4, 0), // 0x00001018
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00001020
	gsDPPipeSync(), // 0x00001028
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00001030
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001038
	gsDPLoadSync(), // 0x00001040
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001048
	gsDPPipeSync(), // 0x00001050
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001058
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001060
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001068
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00001070
	gsSPVertex(_spot16_room_0_vertices_00000D60, 12, 0), // 0x00001078
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001080
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00001088
	gsSP1Triangle(10, 9, 11, 0), // 0x00001090
	gsDPPipeSync(), // 0x00001098
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00008198), // 0x000010A0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000010A8
	gsDPLoadSync(), // 0x000010B0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000010B8
	gsDPPipeSync(), // 0x000010C0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000010C8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000010D0
	gsDPSetPrimColor(0, 0, 150, 132, 98, 255), // 0x000010D8
	gsSPVertex(_spot16_room_0_vertices_00000E20, 3, 0), // 0x000010E0
	gsSP1Triangle(0, 1, 2, 0), // 0x000010E8
	gsDPPipeSync(), // 0x000010F0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x000010F8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001100
	gsDPLoadSync(), // 0x00001108
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001110
	gsDPPipeSync(), // 0x00001118
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001120
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001128
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00001130
	gsSPVertex(_spot16_room_0_vertices_00000E50, 11, 0), // 0x00001138
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00001140
	gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0), // 0x00001148
	gsDPPipeSync(), // 0x00001150
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00008198), // 0x00001158
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001160
	gsDPLoadSync(), // 0x00001168
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001170
	gsDPPipeSync(), // 0x00001178
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001180
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001188
	gsDPSetPrimColor(0, 0, 150, 132, 98, 255), // 0x00001190
	gsSPVertex(_spot16_room_0_vertices_00000F00, 4, 0), // 0x00001198
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000011A0
	gsDPPipeSync(), // 0x000011A8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x000011B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000011B8
	gsDPLoadSync(), // 0x000011C0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000011C8
	gsDPPipeSync(), // 0x000011D0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000011D8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000011E0
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x000011E8
	gsSPVertex(_spot16_room_0_vertices_00000F40, 6, 0), // 0x000011F0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000011F8
	gsSPEndDisplayList(), // 0x00001200
};

Vtx_t _spot16_room_0_vertices_00001208[1] = 
{
	 { -1342, 202, 2821, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001208
};

Gfx _spot16_room_0_dlist_00001218[] =
{
	gsSPVertex(_spot16_room_0_vertices_00001208, 1, 0), // 0x00001218
	gsSPBranchLessZraw(_spot16_room_0_dlist_00000FA0, 0x00, 0x640), // 0x00001228
	gsSPEndDisplayList(), // 0x00001230
};

Vtx_t _spot16_room_0_vertices_00001238[32] = 
{
	 { -1545, 1048, 1161, 0, 2048, 20480, 219, 112, 18, 255 }, // 0x00001238
	 { -1600, 892, 271, 0, 2048, 11413, 189, 92, 220, 255 }, // 0x00001248
	 { -1810, 892, 271, 0, 0, 11362, 171, 80, 230, 255 }, // 0x00001258
	 { -1816, 1016, 1057, 0, 0, 19425, 157, 66, 244, 255 }, // 0x00001268
	 { -1578, 718, -96, 0, 2048, 7429, 207, 107, 237, 255 }, // 0x00001278
	 { -1803, 727, -92, 0, 0, 7538, 236, 118, 252, 255 }, // 0x00001288
	 { -2098, 637, 126, 0, 2048, -3687, 28, 112, 30, 255 }, // 0x00001298
	 { -1824, 637, 126, 0, 0, -3687, 204, 97, 47, 255 }, // 0x000012A8
	 { -1803, 727, -92, 0, 0, -647, 236, 118, 252, 255 }, // 0x000012B8
	 { -2055, 513, 344, 0, 2048, -6338, 42, 104, 40, 255 }, // 0x000012C8
	 { -1801, 513, 344, 0, 0, -6338, 185, 89, 37, 255 }, // 0x000012D8
	 { -2059, 402, 725, 0, 2048, -10928, 70, 95, 21, 255 }, // 0x000012E8
	 { -1847, 402, 725, 0, 0, -10928, 165, 75, 17, 255 }, // 0x000012F8
	 { -1706, 724, -171, 0, 771, -10506, 255, 119, 250, 255 }, // 0x00001308
	 { -1498, 718, -340, 0, 0, -8757, 192, 100, 247, 255 }, // 0x00001318
	 { -1928, 681, -409, 0, 2048, -8051, 13, 119, 2, 255 }, // 0x00001328
	 { -1844, 712, -196, 0, 1429, -10244, 234, 117, 248, 255 }, // 0x00001338
	 { -1706, 724, -171, 0, 1140, -86, 255, 119, 250, 255 }, // 0x00001348
	 { -1844, 712, -196, 0, 1140, 1350, 234, 117, 248, 255 }, // 0x00001358
	 { -1803, 727, -92, 0, 2114, 730, 236, 118, 252, 255 }, // 0x00001368
	 { -2165, 254, 1924, 0, 2048, -21609, 65, 100, 244, 255 }, // 0x00001378
	 { -2070, 254, 2056, 0, 2048, -22720, 26, 106, 207, 255 }, // 0x00001388
	 { -1863, 264, 1837, 0, 0, -22528, 189, 96, 25, 255 }, // 0x00001398
	 { -1909, 264, 2088, 0, 2048, -23778, 32, 68, 163, 255 }, // 0x000013A8
	 { -1323, 88, 2347, 0, 2048, -29323, 57, 103, 236, 255 }, // 0x000013B8
	 { -1171, 88, 2193, 0, 0, -29139, 198, 72, 75, 255 }, // 0x000013C8
	 { -1703, 1048, 1381, 0, 0, 21367, 80, 73, 206, 255 }, // 0x000013D8
	 { -1780, 677, -704, 0, 1871, -5038, 51, 105, 25, 255 }, // 0x000013E8
	 { -1843, 681, -675, 0, 2075, -5323, 53, 95, 50, 255 }, // 0x000013F8
	 { -1522, 681, -666, 0, -47, -5424, 216, 110, 22, 255 }, // 0x00001408
	 { -1561, 677, -699, 0, 376, -5012, 198, 103, 18, 255 }, // 0x00001418
	 { -1522, 681, -666, 0, 0, -5422, 216, 110, 22, 255 }, // 0x00001428
};

Vtx_t _spot16_room_0_vertices_00001438[17] = 
{
	 { -1522, 681, -666, 0, 0, -5422, 216, 110, 22, 255 }, // 0x00001438
	 { -1843, 681, -675, 0, 2048, -5325, 53, 95, 50, 255 }, // 0x00001448
	 { -1928, 681, -409, 0, 2048, -8051, 13, 119, 2, 255 }, // 0x00001458
	 { -2098, 637, 126, 0, 2048, -3687, 28, 112, 30, 255 }, // 0x00001468
	 { -1803, 727, -92, 0, 0, -647, 236, 118, 252, 255 }, // 0x00001478
	 { -1844, 712, -196, 0, 672, 479, 234, 117, 248, 255 }, // 0x00001488
	 { -1928, 681, -409, 0, 2048, 2784, 13, 119, 2, 255 }, // 0x00001498
	 { -2059, 402, 725, 0, 2048, -10928, 70, 95, 21, 255 }, // 0x000014A8
	 { -1853, 353, 1122, 0, 0, -15069, 196, 95, 41, 255 }, // 0x000014B8
	 { -1847, 402, 725, 0, 0, -10928, 165, 75, 17, 255 }, // 0x000014C8
	 { -2165, 254, 1924, 0, 2048, -21609, 65, 100, 244, 255 }, // 0x000014D8
	 { -1863, 264, 1837, 0, 0, -22528, 189, 96, 25, 255 }, // 0x000014E8
	 { -1854, 338, 1241, 0, 0, -16312, 196, 102, 237, 255 }, // 0x000014F8
	 { -1578, 718, -96, 0, 2048, 7429, 207, 107, 237, 255 }, // 0x00001508
	 { -1498, 718, -340, 0, 2048, 3949, 192, 100, 247, 255 }, // 0x00001518
	 { -1706, 724, -171, 0, 647, 6404, 255, 119, 250, 255 }, // 0x00001528
	 { -1803, 727, -92, 0, 0, 7538, 236, 118, 252, 255 }, // 0x00001538
};

Gfx _spot16_room_0_dlist_00001548[] =
{
	gsDPPipeSync(), // 0x00001548
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00008198), // 0x00001550
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001558
	gsDPLoadSync(), // 0x00001560
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001568
	gsDPPipeSync(), // 0x00001570
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001578
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001580
	gsDPSetPrimColor(0, 0, 150, 132, 98, 255), // 0x00001588
	gsSPVertex(_spot16_room_0_vertices_00001238, 32, 0), // 0x00001590
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001598
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x000015A0
	gsSP2Triangles(6, 7, 8, 0, 6, 9, 10, 0), // 0x000015A8
	gsSP2Triangles(6, 10, 7, 0, 9, 11, 12, 0), // 0x000015B0
	gsSP2Triangles(9, 12, 10, 0, 13, 14, 15, 0), // 0x000015B8
	gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0), // 0x000015C0
	gsSP2Triangles(20, 21, 22, 0, 22, 21, 23, 0), // 0x000015C8
	gsSP2Triangles(23, 24, 25, 0, 23, 25, 22, 0), // 0x000015D0
	gsSP2Triangles(3, 26, 0, 0, 27, 28, 29, 0), // 0x000015D8
	gsSP2Triangles(27, 29, 30, 0, 14, 31, 15, 0), // 0x000015E0
	gsSPVertex(_spot16_room_0_vertices_00001438, 17, 0), // 0x000015E8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000015F0
	gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0), // 0x000015F8
	gsSP2Triangles(10, 11, 12, 0, 7, 10, 12, 0), // 0x00001600
	gsSP2Triangles(7, 12, 8, 0, 13, 14, 15, 0), // 0x00001608
	gsSP1Triangle(13, 15, 16, 0), // 0x00001610
	gsSPEndDisplayList(), // 0x00001618
};

Vtx_t _spot16_room_0_vertices_00001620[28] = 
{
	 { -1600, 892, 271, 0, 2048, 11413, 189, 92, 220, 255 }, // 0x00001620
	 { -1578, 718, -96, 0, 2048, 7429, 207, 107, 237, 255 }, // 0x00001630
	 { -1803, 727, -92, 0, 0, 7538, 236, 118, 252, 255 }, // 0x00001640
	 { -1810, 892, 271, 0, 0, 11362, 171, 80, 230, 255 }, // 0x00001650
	 { -2098, 637, 126, 0, 2048, -3687, 28, 112, 30, 255 }, // 0x00001660
	 { -1824, 637, 126, 0, 0, -3687, 204, 97, 47, 255 }, // 0x00001670
	 { -1803, 727, -92, 0, 0, -647, 236, 118, 252, 255 }, // 0x00001680
	 { -2055, 513, 344, 0, 2048, -6338, 42, 104, 40, 255 }, // 0x00001690
	 { -1801, 513, 344, 0, 0, -6338, 185, 89, 37, 255 }, // 0x000016A0
	 { -2059, 402, 725, 0, 2048, -10928, 70, 95, 21, 255 }, // 0x000016B0
	 { -1847, 402, 725, 0, 0, -10928, 165, 75, 17, 255 }, // 0x000016C0
	 { -1706, 724, -171, 0, 771, -10506, 255, 119, 250, 255 }, // 0x000016D0
	 { -1498, 718, -340, 0, 0, -8757, 192, 100, 247, 255 }, // 0x000016E0
	 { -1928, 681, -409, 0, 2048, -8051, 13, 119, 2, 255 }, // 0x000016F0
	 { -1844, 712, -196, 0, 1429, -10244, 234, 117, 248, 255 }, // 0x00001700
	 { -1706, 724, -171, 0, 1140, -86, 255, 119, 250, 255 }, // 0x00001710
	 { -1844, 712, -196, 0, 1140, 1350, 234, 117, 248, 255 }, // 0x00001720
	 { -1803, 727, -92, 0, 2114, 730, 236, 118, 252, 255 }, // 0x00001730
	 { -1522, 681, -666, 0, 0, -5422, 216, 110, 22, 255 }, // 0x00001740
	 { -1843, 681, -675, 0, 2048, -5325, 53, 95, 50, 255 }, // 0x00001750
	 { -1780, 677, -704, 0, 1871, -5038, 51, 105, 25, 255 }, // 0x00001760
	 { -1843, 681, -675, 0, 2075, -5323, 53, 95, 50, 255 }, // 0x00001770
	 { -1522, 681, -666, 0, -47, -5424, 216, 110, 22, 255 }, // 0x00001780
	 { -1561, 677, -699, 0, 376, -5012, 198, 103, 18, 255 }, // 0x00001790
	 { -1844, 712, -196, 0, 672, 479, 234, 117, 248, 255 }, // 0x000017A0
	 { -1928, 681, -409, 0, 2048, 2784, 13, 119, 2, 255 }, // 0x000017B0
	 { -1498, 718, -340, 0, 2048, 3949, 192, 100, 247, 255 }, // 0x000017C0
	 { -1706, 724, -171, 0, 647, 6404, 255, 119, 250, 255 }, // 0x000017D0
};

Gfx _spot16_room_0_dlist_000017E0[] =
{
	gsDPPipeSync(), // 0x000017E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000017E8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000017F0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00008198), // 0x000017F8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001800
	gsDPLoadSync(), // 0x00001808
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001810
	gsDPPipeSync(), // 0x00001818
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001820
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001828
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001830
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001838
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001840
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001848
	gsDPSetPrimColor(0, 0, 150, 132, 98, 255), // 0x00001850
	gsSPVertex(_spot16_room_0_vertices_00001620, 28, 0), // 0x00001858
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001860
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 8, 0), // 0x00001868
	gsSP2Triangles(4, 8, 5, 0, 7, 9, 10, 0), // 0x00001870
	gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0), // 0x00001878
	gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0), // 0x00001880
	gsSP2Triangles(12, 18, 13, 0, 18, 19, 13, 0), // 0x00001888
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00001890
	gsSP2Triangles(4, 6, 24, 0, 25, 4, 24, 0), // 0x00001898
	gsSP2Triangles(1, 26, 27, 0, 1, 27, 2, 0), // 0x000018A0
	gsSPEndDisplayList(), // 0x000018A8
};

Vtx_t _spot16_room_0_vertices_000018B0[1] = 
{
	 { -1668, 648, 800, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018B0
};

Vtx_t _spot16_room_0_vertices_000018C0[1] = 
{
	 { -1668, 648, 800, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018C0
};

Gfx _spot16_room_0_dlist_000018D0[] =
{
	gsSPVertex(_spot16_room_0_vertices_000018B0, 1, 0), // 0x000018D0
	gsSPBranchLessZraw(_spot16_room_0_dlist_00001548, 0x00, 0x960), // 0x000018E0
	gsSPVertex(_spot16_room_0_vertices_000018C0, 1, 0), // 0x000018E8
	gsSPBranchLessZraw(_spot16_room_0_dlist_000017E0, 0x00, 0x17D78400), // 0x000018F8
	gsSPEndDisplayList(), // 0x00001900
};

Vtx_t _spot16_room_0_vertices_00001908[6] = 
{
	 { -1787, 677, -1336, 0, 2048, 1442, 0, 120, 0, 255 }, // 0x00001908
	 { -1780, 677, -704, 0, 2048, -5029, 51, 105, 25, 255 }, // 0x00001918
	 { -1561, 677, -699, 0, 0, -5029, 198, 103, 18, 255 }, // 0x00001928
	 { -1528, 677, -1331, 0, 0, 1389, 0, 120, 0, 255 }, // 0x00001938
	 { -1740, 677, -2599, 0, 2048, 14381, 115, 31, 3, 255 }, // 0x00001948
	 { -1520, 677, -2595, 0, 0, 14336, 160, 71, 255, 255 }, // 0x00001958
};

Vtx_t _spot16_room_0_vertices_00001968[10] = 
{
	 { -1758, 793, -703, 0, -5120, 0, 69, 216, 89, 255 }, // 0x00001968
	 { -1778, 729, -704, 0, -5120, 1024, 91, 239, 76, 255 }, // 0x00001978
	 { -1691, 777, -2598, 0, 18432, 0, 78, 165, 4, 255 }, // 0x00001988
	 { -1740, 677, -2599, 0, 18432, 2048, 115, 31, 3, 255 }, // 0x00001998
	 { -1780, 677, -704, 0, -5120, 2048, 51, 105, 25, 255 }, // 0x000019A8
	 { -1593, 778, -2596, 0, 14336, 0, 190, 157, 2, 255 }, // 0x000019B8
	 { -1520, 677, -2595, 0, 14336, 2048, 160, 71, 255, 255 }, // 0x000019C8
	 { -1566, 753, -699, 0, -9216, 700, 159, 233, 65, 255 }, // 0x000019D8
	 { -1561, 677, -699, 0, -9216, 2048, 198, 103, 18, 255 }, // 0x000019E8
	 { -1586, 809, -700, 0, -9216, 0, 189, 206, 85, 255 }, // 0x000019F8
};

Vtx_t _spot16_room_0_vertices_00001A08[7] = 
{
	 { -1586, 809, -700, 0, 0, 2731, 189, 206, 85, 255 }, // 0x00001A08
	 { -1626, 837, -700, 0, 512, 2731, 220, 206, 103, 255 }, // 0x00001A18
	 { -1593, 778, -2596, 0, 0, -11605, 190, 157, 2, 255 }, // 0x00001A28
	 { -1670, 845, -701, 0, 1024, 2731, 1, 183, 94, 255 }, // 0x00001A38
	 { -1691, 777, -2598, 0, 2048, -11605, 78, 165, 4, 255 }, // 0x00001A48
	 { -1726, 829, -702, 0, 1536, 2731, 39, 213, 104, 255 }, // 0x00001A58
	 { -1758, 793, -703, 0, 2048, 2731, 69, 216, 89, 255 }, // 0x00001A68
};

Vtx_t _spot16_room_0_vertices_00001A78[3] = 
{
	 { -1802, 677, -2601, 0, 0, 1024, 254, 0, 119, 255 }, // 0x00001A78
	 { -1442, 677, -2593, 0, 3686, 1024, 254, 0, 119, 255 }, // 0x00001A88
	 { -1642, 877, -2597, 0, 1638, -1024, 254, 0, 119, 255 }, // 0x00001A98
};

Gfx _spot16_room_0_dlist_00001AA8[] =
{
	gsDPPipeSync(), // 0x00001AA8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001AB0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001AB8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00008198), // 0x00001AC0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001AC8
	gsDPLoadSync(), // 0x00001AD0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001AD8
	gsDPPipeSync(), // 0x00001AE0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001AE8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001AF0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001AF8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001B00
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001B08
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001B10
	gsDPSetPrimColor(0, 0, 150, 132, 98, 255), // 0x00001B18
	gsSPVertex(_spot16_room_0_vertices_00001908, 6, 0), // 0x00001B20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B28
	gsSP2Triangles(4, 0, 5, 0, 0, 3, 5, 0), // 0x00001B30
	gsDPPipeSync(), // 0x00001B38
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000AD98), // 0x00001B40
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001B48
	gsDPLoadSync(), // 0x00001B50
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001B58
	gsDPPipeSync(), // 0x00001B60
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001B68
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001B70
	gsSPVertex(_spot16_room_0_vertices_00001968, 10, 0), // 0x00001B78
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001B80
	gsSP2Triangles(1, 4, 3, 0, 5, 6, 7, 0), // 0x00001B88
	gsSP2Triangles(6, 8, 7, 0, 5, 7, 9, 0), // 0x00001B90
	gsDPPipeSync(), // 0x00001B98
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009D98), // 0x00001BA0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001BA8
	gsDPLoadSync(), // 0x00001BB0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001BB8
	gsDPPipeSync(), // 0x00001BC0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001BC8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001BD0
	gsSPVertex(_spot16_room_0_vertices_00001A08, 7, 0), // 0x00001BD8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001BE0
	gsSP2Triangles(3, 4, 2, 0, 3, 5, 4, 0), // 0x00001BE8
	gsSP1Triangle(5, 6, 4, 0), // 0x00001BF0
	gsDPPipeSync(), // 0x00001BF8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000BD98), // 0x00001C00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001C08
	gsDPLoadSync(), // 0x00001C10
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001C18
	gsDPPipeSync(), // 0x00001C20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001C28
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001C30
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001C38
	gsDPSetPrimColor(0, 0, 0, 0, 0, 255), // 0x00001C40
	gsSPVertex(_spot16_room_0_vertices_00001A78, 3, 0), // 0x00001C48
	gsSP1Triangle(0, 1, 2, 0), // 0x00001C50
	gsSPEndDisplayList(), // 0x00001C58
};

Vtx_t _spot16_room_0_vertices_00001C60[1] = 
{
	 { -1668, 844, -700, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001C60
};

Gfx _spot16_room_0_dlist_00001C70[] =
{
	gsSPVertex(_spot16_room_0_vertices_00001C60, 1, 0), // 0x00001C70
	gsSPBranchLessZraw(_spot16_room_0_dlist_00001AA8, 0x00, 0x960), // 0x00001C80
	gsSPEndDisplayList(), // 0x00001C88
};

Vtx_t _spot16_room_0_vertices_00001C90[20] = 
{
	 { -1653, 353, 1122, 0, -1853, 4656, 187, 60, 77, 255 }, // 0x00001C90
	 { -1653, 338, 1241, 0, -1010, 4656, 187, 77, 196, 255 }, // 0x00001CA0
	 { -1653, 496, 1261, 0, -1010, 3531, 187, 196, 179, 255 }, // 0x00001CB0
	 { -1653, 510, 1142, 0, -1853, 3531, 187, 179, 60, 255 }, // 0x00001CC0
	 { -1854, 338, 1241, 0, 0, 6126, 196, 102, 237, 255 }, // 0x00001CD0
	 { -1653, 338, 1241, 0, -1406, 6126, 187, 77, 196, 255 }, // 0x00001CE0
	 { -1653, 353, 1122, 0, -1406, 6969, 187, 60, 77, 255 }, // 0x00001CF0
	 { -1853, 353, 1122, 0, 0, 6969, 196, 95, 41, 255 }, // 0x00001D00
	 { -1833, 496, 1261, 0, 0, 4643, 141, 246, 224, 255 }, // 0x00001D10
	 { -1653, 496, 1261, 0, -1406, 4643, 187, 196, 179, 255 }, // 0x00001D20
	 { -1653, 338, 1241, 0, -1406, 5768, 187, 77, 196, 255 }, // 0x00001D30
	 { -1854, 338, 1241, 0, 0, 5768, 196, 102, 237, 255 }, // 0x00001D40
	 { -1832, 510, 1142, 0, 0, 3531, 141, 239, 25, 255 }, // 0x00001D50
	 { -1653, 510, 1142, 0, -1406, 3531, 187, 179, 60, 255 }, // 0x00001D60
	 { -1653, 496, 1261, 0, -1406, 4374, 187, 196, 179, 255 }, // 0x00001D70
	 { -1833, 496, 1261, 0, 0, 4374, 141, 246, 224, 255 }, // 0x00001D80
	 { -1853, 353, 1122, 0, 0, 2048, 196, 95, 41, 255 }, // 0x00001D90
	 { -1653, 353, 1122, 0, -1406, 2048, 187, 60, 77, 255 }, // 0x00001DA0
	 { -1653, 510, 1142, 0, -1406, 3173, 187, 179, 60, 255 }, // 0x00001DB0
	 { -1832, 510, 1142, 0, 0, 3173, 141, 239, 25, 255 }, // 0x00001DC0
};

Gfx _spot16_room_0_dlist_00001DD0[] =
{
	gsDPPipeSync(), // 0x00001DD0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001DD8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001DE0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00001DE8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001DF0
	gsDPLoadSync(), // 0x00001DF8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001E00
	gsDPPipeSync(), // 0x00001E08
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001E10
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001E18
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001E20
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001E28
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001E30
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001E38
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00001E40
	gsSPVertex(_spot16_room_0_vertices_00001C90, 20, 0), // 0x00001E48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001E50
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001E58
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001E60
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001E68
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00001E70
	gsSPEndDisplayList(), // 0x00001E78
};

Vtx_t _spot16_room_0_vertices_00001E80[4] = 
{
	 { -1853, 353, 1122, 0, 1706, 2311, 196, 95, 41, 255 }, // 0x00001E80
	 { -1854, 338, 1241, 0, 2090, 2311, 196, 102, 237, 255 }, // 0x00001E90
	 { -1833, 496, 1261, 0, 2090, 1799, 141, 246, 224, 255 }, // 0x00001EA0
	 { -1832, 510, 1142, 0, 1706, 1799, 141, 239, 25, 255 }, // 0x00001EB0
};

Gfx _spot16_room_0_dlist_00001EC0[] =
{
	gsDPPipeSync(), // 0x00001EC0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001EC8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001ED0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00016E98), // 0x00001ED8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 7, 0), // 0x00001EE0
	gsDPLoadSync(), // 0x00001EE8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001EF0
	gsDPPipeSync(), // 0x00001EF8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 6, 0, 0, 7, 0), // 0x00001F00
	gsDPSetTileSize(0, 0, 0, 508, 252), // 0x00001F08
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001F10
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001F18
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001F20
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001F28
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00001F30
	gsSPVertex(_spot16_room_0_vertices_00001E80, 4, 0), // 0x00001F38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001F40
	gsSPEndDisplayList(), // 0x00001F48
};

Vtx_t _spot16_room_0_vertices_00001F50[1] = 
{
	 { -1752, 424, 1188, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F50
};

Vtx_t _spot16_room_0_vertices_00001F60[1] = 
{
	 { -1752, 424, 1188, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F60
};

Gfx _spot16_room_0_dlist_00001F70[] =
{
	gsSPVertex(_spot16_room_0_vertices_00001F50, 1, 0), // 0x00001F70
	gsSPBranchLessZraw(_spot16_room_0_dlist_00001DD0, 0x00, 0x4B0), // 0x00001F80
	gsSPVertex(_spot16_room_0_vertices_00001F60, 1, 0), // 0x00001F88
	gsSPBranchLessZraw(_spot16_room_0_dlist_00001EC0, 0x00, 0xFA0), // 0x00001F98
	gsSPEndDisplayList(), // 0x00001FA0
};

Vtx_t _spot16_room_0_vertices_00001FA8[7] = 
{
	 { -1373, 378, 2372, 0, -1024, 0, 87, 29, 179, 255 }, // 0x00001FA8
	 { -1839, 519, 2117, 0, 2048, 512, 12, 20, 139, 255 }, // 0x00001FB8
	 { -1821, 582, 2125, 0, 2048, 0, 7, 52, 149, 255 }, // 0x00001FC8
	 { -2186, 509, 2206, 0, 4096, 512, 54, 76, 182, 255 }, // 0x00001FD8
	 { -2194, 551, 2237, 0, 4096, 0, 61, 86, 199, 255 }, // 0x00001FE8
	 { -2449, 792, 1953, 0, 6963, 512, 90, 78, 3, 255 }, // 0x00001FF8
	 { -2363, 706, 2171, 0, 5530, 0, 80, 89, 3, 255 }, // 0x00002008
};

Vtx_t _spot16_room_0_vertices_00002018[5] = 
{
	 { -1373, 378, 2372, 0, 0, 1301, 87, 29, 179, 255 }, // 0x00002018
	 { -1821, 582, 2125, 0, 512, 0, 7, 52, 149, 255 }, // 0x00002028
	 { -1816, 652, 2190, 0, 0, 0, 21, 80, 170, 255 }, // 0x00002038
	 { -1816, 652, 2190, 0, 0, 0, 21, 80, 170, 255 }, // 0x00002048
	 { -2731, 506, 2399, 0, 512, -1225, 224, 80, 173, 255 }, // 0x00002058
};

Vtx_t _spot16_room_0_vertices_00002068[14] = 
{
	 { -1909, 264, 2088, 0, 2420, 239, 32, 68, 163, 255 }, // 0x00002068
	 { -1373, 378, 2372, 0, 848, -116, 87, 29, 179, 255 }, // 0x00002078
	 { -1323, 88, 2347, 0, 1043, 1173, 57, 103, 236, 255 }, // 0x00002088
	 { -1839, 519, 2117, 0, 1999, -855, 12, 20, 139, 255 }, // 0x00002098
	 { -2130, 374, 2103, 0, 2838, -316, 55, 56, 166, 255 }, // 0x000020A8
	 { -1839, 519, 2117, 0, 1999, -855, 12, 20, 139, 255 }, // 0x000020B8
	 { -1909, 264, 2088, 0, 2420, 239, 32, 68, 163, 255 }, // 0x000020C8
	 { -2186, 509, 2206, 0, 2835, -1062, 54, 76, 182, 255 }, // 0x000020D8
	 { -1839, 519, 2117, 0, 1999, -855, 12, 20, 139, 255 }, // 0x000020E8
	 { -2191, 407, 1964, 0, 3307, -360, 110, 45, 247, 255 }, // 0x000020F8
	 { -2186, 509, 2206, 0, 2835, -1062, 54, 76, 182, 255 }, // 0x00002108
	 { -2070, 254, 2056, 0, 2906, 140, 26, 106, 207, 255 }, // 0x00002118
	 { -2165, 254, 1924, 0, 3254, 140, 65, 100, 244, 255 }, // 0x00002128
	 { -2165, 254, 1924, 0, 3254, 140, 65, 100, 244, 255 }, // 0x00002138
};

Vtx_t _spot16_room_0_vertices_00002148[32] = 
{
	 { -1867, 1025, -710, 0, 8197, 1441, 67, 29, 94, 255 }, // 0x00002148
	 { -1418, 1115, -1474, 0, 10588, 1431, 242, 96, 69, 255 }, // 0x00002158
	 { -1708, 1520, -1284, 0, 10283, 213, 73, 80, 50, 255 }, // 0x00002168
	 { -1867, 1025, -710, 0, 8194, 1448, 67, 29, 94, 255 }, // 0x00002178
	 { -1708, 1520, -1284, 0, 10277, 215, 73, 80, 50, 255 }, // 0x00002188
	 { -2000, 1614, -733, 0, 8747, 199, 66, 96, 29, 255 }, // 0x00002198
	 { -2034, 998, -400, 0, 7241, 1461, 108, 24, 44, 255 }, // 0x000021A8
	 { -1843, 681, -675, 0, 7986, 2692, 53, 95, 50, 255 }, // 0x000021B8
	 { -1928, 681, -409, 0, 7133, 2692, 13, 119, 2, 255 }, // 0x000021C8
	 { -1867, 1025, -710, 0, 8197, 1441, 67, 29, 94, 255 }, // 0x000021D8
	 { -2000, 1614, -733, 0, 8747, 199, 66, 96, 29, 255 }, // 0x000021E8
	 { -2575, 1714, 159, 0, 5995, -620, 48, 106, 26, 255 }, // 0x000021F8
	 { -2226, 1593, 122, 0, 6218, 210, 105, 45, 35, 255 }, // 0x00002208
	 { -2034, 998, -400, 0, 7241, 1461, 108, 24, 44, 255 }, // 0x00002218
	 { -2226, 1593, 122, 0, 6218, 210, 105, 45, 35, 255 }, // 0x00002228
	 { -2263, 887, 199, 0, 5445, 1427, 115, 29, 17, 255 }, // 0x00002238
	 { -2208, 807, 491, 0, 4529, 1454, 111, 43, 8, 255 }, // 0x00002248
	 { -2263, 887, 199, 0, 5445, 1427, 115, 29, 17, 255 }, // 0x00002258
	 { -2098, 637, 126, 0, 5350, 2701, 28, 112, 30, 255 }, // 0x00002268
	 { -2055, 513, 344, 0, 4901, 2693, 42, 104, 40, 255 }, // 0x00002278
	 { -2098, 637, 126, 0, 5350, 2701, 28, 112, 30, 255 }, // 0x00002288
	 { -2470, 1143, 908, 0, 3537, 221, 92, 69, 32, 255 }, // 0x00002298
	 { -2655, 1322, 1148, 0, 2980, -620, 97, 64, 26, 255 }, // 0x000022A8
	 { -2172, 718, 763, 0, 3777, 1447, 106, 54, 10, 255 }, // 0x000022B8
	 { -2059, 402, 725, 0, 3776, 2692, 70, 95, 21, 255 }, // 0x000022C8
	 { -2059, 402, 725, 0, 3776, 2692, 70, 95, 21, 255 }, // 0x000022D8
	 { -2191, 407, 1964, 0, 300, 1467, 110, 45, 247, 255 }, // 0x000022E8
	 { -2165, 254, 1924, 0, 306, 2692, 65, 100, 244, 255 }, // 0x000022F8
	 { -2191, 407, 1964, 0, 300, 1467, 110, 45, 247, 255 }, // 0x00002308
	 { -2354, 697, 1971, 0, 412, 211, 95, 72, 9, 255 }, // 0x00002318
	 { -2186, 509, 2206, 0, -445, 1449, 54, 76, 182, 255 }, // 0x00002328
	 { -2470, 1143, 908, 0, 3537, 221, 92, 69, 32, 255 }, // 0x00002338
};

Vtx_t _spot16_room_0_vertices_00002348[5] = 
{
	 { -2354, 697, 1971, 0, 412, 211, 95, 72, 9, 255 }, // 0x00002348
	 { -2470, 1143, 908, 0, 3537, 221, 92, 69, 32, 255 }, // 0x00002358
	 { -2449, 792, 1953, 0, 466, -216, 90, 78, 3, 255 }, // 0x00002368
	 { -2655, 1322, 1148, 0, 2980, -620, 97, 64, 26, 255 }, // 0x00002378
	 { -2186, 509, 2206, 0, -445, 1449, 54, 76, 182, 255 }, // 0x00002388
};

Vtx_t _spot16_room_0_vertices_00002398[20] = 
{
	 { -1803, 727, -92, 0, -1391, 2176, 236, 118, 252, 255 }, // 0x00002398
	 { -1824, 637, 126, 0, -461, 2313, 204, 97, 47, 255 }, // 0x000023A8
	 { -1810, 892, 271, 0, -21, 978, 171, 80, 230, 255 }, // 0x000023B8
	 { -1810, 892, 271, 0, -21, 978, 171, 80, 230, 255 }, // 0x000023C8
	 { -1801, 513, 344, 0, 552, 2449, 185, 89, 37, 255 }, // 0x000023D8
	 { -1816, 1016, 1057, 0, 3171, 402, 157, 66, 244, 255 }, // 0x000023E8
	 { -1801, 513, 344, 0, 552, 2449, 185, 89, 37, 255 }, // 0x000023F8
	 { -1847, 402, 725, 0, 2242, 2449, 165, 75, 17, 255 }, // 0x00002408
	 { -1816, 1016, 1057, 0, 3171, 402, 157, 66, 244, 255 }, // 0x00002418
	 { -1752, 1108, 1571, 0, 5283, 129, 146, 40, 24, 255 }, // 0x00002428
	 { -1685, 1231, 1422, 0, 4522, -144, 56, 79, 186, 255 }, // 0x00002438
	 { -1813, 1074, 1081, 0, 3227, 191, 6, 93, 182, 255 }, // 0x00002448
	 { -1853, 353, 1122, 0, 3931, 2449, 196, 95, 41, 255 }, // 0x00002458
	 { -1832, 510, 1142, 0, 3893, 1904, 141, 239, 25, 255 }, // 0x00002468
	 { -1757, 966, 1744, 0, 6043, 402, 199, 64, 83, 255 }, // 0x00002478
	 { -1863, 264, 1837, 0, 6972, 2449, 189, 96, 25, 255 }, // 0x00002488
	 { -1832, 510, 1142, 0, 3893, 1904, 141, 239, 25, 255 }, // 0x00002498
	 { -1833, 496, 1261, 0, 4399, 1881, 141, 246, 224, 255 }, // 0x000024A8
	 { -1854, 338, 1241, 0, 4438, 2449, 196, 102, 237, 255 }, // 0x000024B8
	 { -1863, 264, 1837, 0, 6972, 2449, 189, 96, 25, 255 }, // 0x000024C8
};

Vtx_t _spot16_room_0_vertices_000024D8[16] = 
{
	 { -1627, 920, -717, 0, 1176, 921, 236, 71, 94, 255 }, // 0x000024D8
	 { -1418, 1115, -1474, 0, 1592, 3251, 242, 96, 69, 255 }, // 0x000024E8
	 { -1736, 929, -720, 0, 866, 943, 21, 63, 100, 255 }, // 0x000024F8
	 { -1867, 1025, -710, 0, 493, 1188, 67, 29, 94, 255 }, // 0x00002508
	 { -1491, 994, -693, 0, 1567, 1108, 167, 43, 68, 255 }, // 0x00002518
	 { -1726, 829, -702, 0, 897, 691, 39, 213, 104, 255 }, // 0x00002528
	 { -1843, 681, -675, 0, 564, 305, 53, 95, 50, 255 }, // 0x00002538
	 { -1778, 729, -704, 0, 714, 437, 91, 239, 76, 255 }, // 0x00002548
	 { -1758, 793, -703, 0, 783, 599, 69, 216, 89, 255 }, // 0x00002558
	 { -1626, 837, -700, 0, 1182, 711, 220, 206, 103, 255 }, // 0x00002568
	 { -1670, 845, -701, 0, 1057, 732, 1, 183, 94, 255 }, // 0x00002578
	 { -1586, 809, -700, 0, 1296, 640, 189, 206, 85, 255 }, // 0x00002588
	 { -1566, 753, -699, 0, 1353, 498, 159, 233, 65, 255 }, // 0x00002598
	 { -1522, 681, -666, 0, 1481, 314, 216, 110, 22, 255 }, // 0x000025A8
	 { -1561, 677, -699, 0, 1425, 305, 198, 103, 18, 255 }, // 0x000025B8
	 { -1780, 677, -704, 0, 685, 305, 51, 105, 25, 255 }, // 0x000025C8
};

Vtx_t _spot16_room_0_vertices_000025D8[4] = 
{
	 { -1365, 1450, -304, 0, 16, 1565, 204, 65, 170, 255 }, // 0x000025D8
	 { -1365, 1410, -304, 0, -39, 2027, 1, 71, 160, 255 }, // 0x000025E8
	 { -1460, 1409, -410, 0, 1626, 2227, 170, 77, 225, 255 }, // 0x000025F8
	 { -1460, 1449, -410, 0, 1681, 1765, 234, 90, 180, 255 }, // 0x00002608
};

Vtx_t _spot16_room_0_vertices_00002618[19] = 
{
	 { -1545, 1048, 1161, 0, 6637, 1537, 219, 112, 18, 255 }, // 0x00002618
	 { -1545, 1205, 1154, 0, 6615, 1058, 31, 38, 109, 255 }, // 0x00002628
	 { -1633, 1571, 704, 0, 5246, -65, 152, 52, 28, 255 }, // 0x00002638
	 { -1600, 892, 271, 0, 3898, 2016, 189, 92, 220, 255 }, // 0x00002648
	 { -1498, 718, -340, 0, 1984, 2548, 192, 100, 247, 255 }, // 0x00002658
	 { -1460, 1192, -410, 0, 1757, 1096, 139, 4, 233, 255 }, // 0x00002668
	 { -1439, 1230, -692, 0, 879, 979, 138, 14, 241, 255 }, // 0x00002678
	 { -1460, 1409, -410, 0, 1757, 433, 170, 77, 225, 255 }, // 0x00002688
	 { -1439, 1407, -692, 0, 879, 438, 150, 55, 0, 255 }, // 0x00002698
	 { -1491, 994, -693, 0, 890, 1703, 167, 43, 68, 255 }, // 0x000026A8
	 { -1522, 681, -666, 0, 983, 2661, 216, 110, 22, 255 }, // 0x000026B8
	 { -1337, 1425, -1411, 0, -1389, 371, 191, 95, 31, 255 }, // 0x000026C8
	 { -1708, 1520, -1284, 0, -2083, 256, 73, 80, 50, 255 }, // 0x000026D8
	 { -1418, 1115, -1474, 0, -1546, 1331, 242, 96, 69, 255 }, // 0x000026E8
	 { -1337, 1425, -1411, 0, -1369, 382, 191, 95, 31, 255 }, // 0x000026F8
	 { -1268, 1432, -1030, 0, -210, 361, 145, 43, 11, 255 }, // 0x00002708
	 { -1238, 1502, -990, 0, -94, 148, 146, 43, 14, 255 }, // 0x00002718
	 { -1268, 1255, -1030, 0, -210, 902, 140, 28, 245, 255 }, // 0x00002728
	 { -1418, 1115, -1474, 0, -1543, 1331, 242, 96, 69, 255 }, // 0x00002738
};

Vtx_t _spot16_room_0_vertices_00002748[27] = 
{
	 { -1431, 1994, 66, 0, 788, 1106, 201, 103, 26, 255 }, // 0x00002748
	 { -1487, 1528, -74, 0, 881, 2688, 143, 11, 218, 255 }, // 0x00002758
	 { -1633, 1571, 704, 0, 2830, 2611, 152, 52, 28, 255 }, // 0x00002768
	 { -1374, 1514, -301, 0, 232, 2714, 166, 239, 179, 255 }, // 0x00002778
	 { -1216, 1843, -648, 0, -968, 1531, 169, 41, 185, 255 }, // 0x00002788
	 { -1268, 1432, -1030, 0, -4322, 381, 145, 43, 11, 255 }, // 0x00002798
	 { -1119, 1412, -691, 0, -1053, 1222, 232, 112, 36, 255 }, // 0x000027A8
	 { -1238, 1502, -990, 0, -3743, -166, 146, 43, 14, 255 }, // 0x000027B8
	 { -1119, 1412, -691, 0, -1053, 1222, 232, 112, 36, 255 }, // 0x000027C8
	 { -1071, 1562, -667, 0, -317, 150, 255, 205, 108, 255 }, // 0x000027D8
	 { -1071, 1562, -667, 0, -317, 150, 255, 205, 108, 255 }, // 0x000027E8
	 { -1147, 1687, -572, 0, 452, -1276, 222, 141, 253, 255 }, // 0x000027F8
	 { -1147, 1687, -572, 0, 452, -1276, 222, 141, 253, 255 }, // 0x00002808
	 { -1216, 1843, -648, 0, -164, -2903, 169, 41, 185, 255 }, // 0x00002818
	 { -1147, 1687, -572, 0, 452, -1276, 222, 141, 253, 255 }, // 0x00002828
	 { -1187, 1587, -451, 0, 1796, -582, 244, 195, 154, 255 }, // 0x00002838
	 { -1374, 1514, -301, 0, 4123, -1010, 166, 239, 179, 255 }, // 0x00002848
	 { -1187, 1587, -451, 0, 1796, -582, 244, 195, 154, 255 }, // 0x00002858
	 { -1250, 1419, -411, 0, 3125, 497, 204, 68, 173, 255 }, // 0x00002868
	 { -1374, 1514, -301, 0, 4123, -1010, 166, 239, 179, 255 }, // 0x00002878
	 { -1374, 1514, -301, 0, 4123, -1010, 166, 239, 179, 255 }, // 0x00002888
	 { -1216, 1843, -648, 0, -164, -2903, 169, 41, 185, 255 }, // 0x00002898
	 { -1147, 1687, -572, 0, 452, -1276, 222, 141, 253, 255 }, // 0x000028A8
	 { -1250, 1419, -411, 0, 3125, 497, 204, 68, 173, 255 }, // 0x000028B8
	 { -1365, 1450, -304, 0, 4590, -388, 204, 65, 170, 255 }, // 0x000028C8
	 { -1374, 1514, -301, 0, 4123, -1010, 166, 239, 179, 255 }, // 0x000028D8
	 { -1365, 1410, -304, 0, 5057, 233, 1, 71, 160, 255 }, // 0x000028E8
};

Vtx_t _spot16_room_0_vertices_000028F8[16] = 
{
	 { -1374, 1514, -301, 0, 2060, 109, 166, 239, 179, 255 }, // 0x000028F8
	 { -1365, 1450, -304, 0, 1858, 325, 204, 65, 170, 255 }, // 0x00002908
	 { -1482, 1449, -85, 0, 2845, 342, 147, 50, 1, 255 }, // 0x00002918
	 { -1487, 1528, -74, 0, 2856, 66, 143, 11, 218, 255 }, // 0x00002928
	 { -1460, 1449, -410, 0, 1858, 325, 234, 90, 180, 255 }, // 0x00002938
	 { -1460, 1409, -410, 0, 1757, 433, 170, 77, 225, 255 }, // 0x00002948
	 { -1484, 1449, -275, 0, 2187, 331, 184, 88, 219, 255 }, // 0x00002958
	 { -1460, 1192, -410, 0, 1757, 1096, 139, 4, 233, 255 }, // 0x00002968
	 { -1547, 1101, -186, 0, 2637, 1442, 137, 253, 245, 255 }, // 0x00002978
	 { -1594, 1449, -246, 0, 2351, 333, 163, 56, 206, 255 }, // 0x00002988
	 { -1576, 1449, -188, 0, 2516, 336, 181, 83, 43, 255 }, // 0x00002998
	 { -1498, 718, -340, 0, 1984, 2548, 192, 100, 247, 255 }, // 0x000029A8
	 { -1578, 718, -96, 0, 2757, 2548, 207, 107, 237, 255 }, // 0x000029B8
	 { -1547, 1101, -186, 0, 2637, 1442, 137, 253, 245, 255 }, // 0x000029C8
	 { -1600, 892, 271, 0, 3898, 2016, 189, 92, 220, 255 }, // 0x000029D8
	 { -1633, 1571, 704, 0, 5246, -65, 152, 52, 28, 255 }, // 0x000029E8
};

Vtx_t _spot16_room_0_vertices_000029F8[8] = 
{
	 { -2731, -570, 3897, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029F8
	 { -820, -570, 3897, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A08
	 { -2731, 585, -2649, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A18
	 { -820, 585, -2649, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A28
	 { -2731, 1261, 4220, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A38
	 { -820, 1261, 4220, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A48
	 { -2731, 2415, -2326, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A58
	 { -820, 2415, -2326, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A68
};

Gfx _spot16_room_0_dlist_00002A78[] =
{
	gsDPPipeSync(), // 0x00002A78
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002A80
	gsSPVertex(_spot16_room_0_vertices_000029F8, 8, 0), // 0x00002A88
	gsSPCullDisplayList(0, 7), // 0x00002A90
	gsDPPipeSync(), // 0x00002A98
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002AA0
	gsSPDisplayList(_spot16_room_0_dlist_00001218), // 0x00002AA8
	gsDPPipeSync(), // 0x00002AB0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002AB8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002AC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00019698), // 0x00002AC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00002AD0
	gsDPLoadSync(), // 0x00002AD8
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00002AE0
	gsDPPipeSync(), // 0x00002AE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00002AF0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002AF8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002B00
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002B08
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00002B10
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00002B18
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002B20
	gsSPVertex(_spot16_room_0_vertices_00001FA8, 7, 0), // 0x00002B28
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x00002B30
	gsSP2Triangles(2, 3, 4, 0, 3, 5, 4, 0), // 0x00002B38
	gsSP1Triangle(4, 5, 6, 0), // 0x00002B40
	gsDPPipeSync(), // 0x00002B48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000CD98), // 0x00002B50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00002B58
	gsDPLoadSync(), // 0x00002B60
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00002B68
	gsDPPipeSync(), // 0x00002B70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x00002B78
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00002B80
	gsSPVertex(_spot16_room_0_vertices_00002018, 5, 0), // 0x00002B88
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0), // 0x00002B90
	gsDPPipeSync(), // 0x00002B98
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00002BA0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00002BA8
	gsDPLoadSync(), // 0x00002BB0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002BB8
	gsDPPipeSync(), // 0x00002BC0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00002BC8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00002BD0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00002BD8
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00002BE0
	gsSPVertex(_spot16_room_0_vertices_00002068, 14, 0), // 0x00002BE8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002BF0
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 8, 0), // 0x00002BF8
	gsSP2Triangles(9, 10, 4, 0, 6, 11, 4, 0), // 0x00002C00
	gsSP2Triangles(4, 12, 9, 0, 4, 11, 13, 0), // 0x00002C08
	gsDPPipeSync(), // 0x00002C10
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00016E98), // 0x00002C18
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 7, 0), // 0x00002C20
	gsDPLoadSync(), // 0x00002C28
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00002C30
	gsDPPipeSync(), // 0x00002C38
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 6, 0, 0, 7, 0), // 0x00002C40
	gsDPSetTileSize(0, 0, 0, 508, 252), // 0x00002C48
	gsSPVertex(_spot16_room_0_vertices_00002148, 32, 0), // 0x00002C50
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00002C58
	gsSP2Triangles(6, 7, 0, 0, 6, 8, 7, 0), // 0x00002C60
	gsSP2Triangles(9, 10, 6, 0, 10, 11, 12, 0), // 0x00002C68
	gsSP2Triangles(13, 10, 14, 0, 15, 14, 16, 0), // 0x00002C70
	gsSP2Triangles(14, 15, 13, 0, 17, 18, 6, 0), // 0x00002C78
	gsSP2Triangles(18, 8, 6, 0, 16, 18, 15, 0), // 0x00002C80
	gsSP2Triangles(16, 19, 20, 0, 21, 11, 22, 0), // 0x00002C88
	gsSP2Triangles(21, 14, 11, 0, 16, 14, 21, 0), // 0x00002C90
	gsSP2Triangles(23, 16, 21, 0, 23, 24, 16, 0), // 0x00002C98
	gsSP2Triangles(25, 19, 16, 0, 26, 24, 23, 0), // 0x00002CA0
	gsSP2Triangles(26, 27, 25, 0, 28, 29, 30, 0), // 0x00002CA8
	gsSP2Triangles(29, 23, 31, 0, 29, 26, 23, 0), // 0x00002CB0
	gsSPVertex(_spot16_room_0_vertices_00002348, 5, 0), // 0x00002CB8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002CC0
	gsSP1Triangle(4, 0, 2, 0), // 0x00002CC8
	gsSPVertex(_spot16_room_0_vertices_00002398, 20, 0), // 0x00002CD0
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0), // 0x00002CD8
	gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0), // 0x00002CE0
	gsSP2Triangles(9, 10, 11, 0, 8, 9, 11, 0), // 0x00002CE8
	gsSP2Triangles(7, 12, 13, 0, 13, 9, 7, 0), // 0x00002CF0
	gsSP2Triangles(8, 7, 9, 0, 14, 9, 15, 0), // 0x00002CF8
	gsSP2Triangles(9, 16, 17, 0, 18, 19, 17, 0), // 0x00002D00
	gsSP1Triangle(19, 9, 17, 0), // 0x00002D08
	gsDPPipeSync(), // 0x00002D10
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00002D18
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00002D20
	gsDPLoadSync(), // 0x00002D28
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002D30
	gsDPPipeSync(), // 0x00002D38
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00002D40
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00002D48
	gsSPVertex(_spot16_room_0_vertices_000024D8, 16, 0), // 0x00002D50
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0), // 0x00002D58
	gsSP2Triangles(4, 1, 0, 0, 5, 2, 3, 0), // 0x00002D60
	gsSP2Triangles(6, 7, 3, 0, 7, 8, 3, 0), // 0x00002D68
	gsSP2Triangles(8, 5, 3, 0, 9, 0, 10, 0), // 0x00002D70
	gsSP2Triangles(10, 2, 5, 0, 10, 0, 2, 0), // 0x00002D78
	gsSP2Triangles(4, 0, 9, 0, 11, 4, 9, 0), // 0x00002D80
	gsSP2Triangles(4, 11, 12, 0, 13, 4, 12, 0), // 0x00002D88
	gsSP2Triangles(14, 13, 12, 0, 6, 15, 7, 0), // 0x00002D90
	gsSPVertex(_spot16_room_0_vertices_000025D8, 4, 0), // 0x00002D98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002DA0
	gsDPPipeSync(), // 0x00002DA8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00016E98), // 0x00002DB0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 7, 0), // 0x00002DB8
	gsDPLoadSync(), // 0x00002DC0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00002DC8
	gsDPPipeSync(), // 0x00002DD0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 6, 0, 0, 7, 0), // 0x00002DD8
	gsDPSetTileSize(0, 0, 0, 508, 252), // 0x00002DE0
	gsSPVertex(_spot16_room_0_vertices_00002618, 19, 0), // 0x00002DE8
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0), // 0x00002DF0
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 8, 0), // 0x00002DF8
	gsSP2Triangles(5, 8, 6, 0, 9, 10, 4, 0), // 0x00002E00
	gsSP2Triangles(6, 9, 4, 0, 11, 12, 13, 0), // 0x00002E08
	gsSP2Triangles(14, 15, 16, 0, 9, 17, 18, 0), // 0x00002E10
	gsSP2Triangles(17, 14, 18, 0, 17, 15, 14, 0), // 0x00002E18
	gsSP2Triangles(9, 6, 17, 0, 6, 8, 15, 0), // 0x00002E20
	gsSP1Triangle(6, 15, 17, 0), // 0x00002E28
	gsDPPipeSync(), // 0x00002E30
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00002E38
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00002E40
	gsDPLoadSync(), // 0x00002E48
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002E50
	gsDPPipeSync(), // 0x00002E58
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00002E60
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00002E68
	gsSPVertex(_spot16_room_0_vertices_00002748, 27, 0), // 0x00002E70
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002E78
	gsSP2Triangles(4, 3, 0, 0, 5, 6, 7, 0), // 0x00002E80
	gsSP2Triangles(8, 9, 7, 0, 7, 10, 11, 0), // 0x00002E88
	gsSP2Triangles(12, 13, 7, 0, 14, 15, 16, 0), // 0x00002E90
	gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0), // 0x00002E98
	gsSP2Triangles(23, 24, 25, 0, 23, 26, 24, 0), // 0x00002EA0
	gsDPPipeSync(), // 0x00002EA8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00016E98), // 0x00002EB0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 7, 0), // 0x00002EB8
	gsDPLoadSync(), // 0x00002EC0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00002EC8
	gsDPPipeSync(), // 0x00002ED0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 6, 0, 0, 7, 0), // 0x00002ED8
	gsDPSetTileSize(0, 0, 0, 508, 252), // 0x00002EE0
	gsSPVertex(_spot16_room_0_vertices_000028F8, 16, 0), // 0x00002EE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002EF0
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00002EF8
	gsSP2Triangles(7, 8, 6, 0, 8, 9, 6, 0), // 0x00002F00
	gsSP2Triangles(8, 10, 9, 0, 7, 11, 12, 0), // 0x00002F08
	gsSP2Triangles(7, 12, 8, 0, 12, 2, 13, 0), // 0x00002F10
	gsSP2Triangles(2, 10, 13, 0, 12, 14, 15, 0), // 0x00002F18
	gsSP2Triangles(12, 15, 2, 0, 15, 3, 2, 0), // 0x00002F20
	gsSPDisplayList(_spot16_room_0_dlist_000018D0), // 0x00002F28
	gsSPDisplayList(_spot16_room_0_dlist_00001C70), // 0x00002F30
	gsSPDisplayList(_spot16_room_0_dlist_00001F70), // 0x00002F38
	gsSPEndDisplayList(), // 0x00002F40
};

Vtx_t _spot16_room_0_vertices_00002F48[11] = 
{
	 { -1324, 974, 1829, 0, 667, 867, 238, 74, 92, 255 }, // 0x00002F48
	 { -833, 969, 1854, 0, 1922, 933, 46, 91, 62, 255 }, // 0x00002F58
	 { -673, 1097, 1420, 0, 2333, -179, 59, 95, 42, 255 }, // 0x00002F68
	 { -898, 1176, 1393, 0, 1694, -227, 185, 88, 218, 255 }, // 0x00002F78
	 { -1184, 1187, 1490, 0, 1024, 0, 225, 110, 221, 255 }, // 0x00002F88
	 { -841, 1234, 1118, 0, 1803, -802, 214, 111, 244, 255 }, // 0x00002F98
	 { -690, 1236, 1004, 0, 2156, -1062, 8, 99, 189, 255 }, // 0x00002FA8
	 { -1757, 966, 1744, 0, -444, 652, 199, 64, 83, 255 }, // 0x00002FB8
	 { -1514, 1207, 1539, 0, 180, 126, 244, 114, 222, 255 }, // 0x00002FC8
	 { -1752, 1108, 1571, 0, -429, 209, 146, 40, 24, 255 }, // 0x00002FD8
	 { -1685, 1231, 1422, 0, -260, -174, 56, 79, 186, 255 }, // 0x00002FE8
};

Vtx_t _spot16_room_0_vertices_00002FF8[4] = 
{
	 { -667, 970, 1359, 0, -1169, 105, 116, 23, 17, 255 }, // 0x00002FF8
	 { -673, 1097, 1420, 0, -1292, -335, 59, 95, 42, 255 }, // 0x00003008
	 { -833, 969, 1854, 0, -2807, -190, 46, 91, 62, 255 }, // 0x00003018
	 { -745, 805, 1911, 0, -3042, 316, 111, 28, 33, 255 }, // 0x00003028
};

Vtx_t _spot16_room_0_vertices_00003038[14] = 
{
	 { -1572, 1048, 1491, 0, 4689, 3033, 33, 80, 174, 255 }, // 0x00003038
	 { -1685, 1231, 1422, 0, 6015, 2245, 56, 79, 186, 255 }, // 0x00003048
	 { -1514, 1207, 1539, 0, 4648, 1834, 244, 114, 222, 255 }, // 0x00003058
	 { -1703, 1048, 1381, 0, 5756, 3503, 80, 73, 206, 255 }, // 0x00003068
	 { -1813, 1074, 1081, 0, 7804, 4272, 6, 93, 182, 255 }, // 0x00003078
	 { -1816, 1016, 1057, 0, 7781, 4703, 157, 66, 244, 255 }, // 0x00003088
	 { -1162, 1083, 1455, 0, 2048, 2048, 232, 101, 197, 255 }, // 0x00003098
	 { -1184, 1187, 1490, 0, 2412, 1383, 225, 110, 221, 255 }, // 0x000030A8
	 { -898, 1176, 1393, 0, 378, 1025, 185, 88, 218, 255 }, // 0x000030B8
	 { -902, 1084, 1352, 0, 178, 1680, 184, 85, 213, 255 }, // 0x000030C8
	 { -841, 1234, 1118, 0, -1566, 818, 214, 111, 244, 255 }, // 0x000030D8
	 { -866, 1143, 1084, 0, -1703, 1486, 189, 92, 220, 255 }, // 0x000030E8
	 { -690, 1236, 1004, 0, -2829, 548, 8, 99, 189, 255 }, // 0x000030F8
	 { -657, 1122, 959, 0, -3357, 1242, 70, 97, 1, 255 }, // 0x00003108
};

Vtx_t _spot16_room_0_vertices_00003118[4] = 
{
	 { -657, 1122, 959, 0, 183, -157, 70, 97, 1, 255 }, // 0x00003118
	 { -690, 1236, 1004, 0, 91, -552, 8, 99, 189, 255 }, // 0x00003128
	 { -673, 1097, 1420, 0, -1292, -335, 59, 95, 42, 255 }, // 0x00003138
	 { -667, 970, 1359, 0, -1169, 105, 116, 23, 17, 255 }, // 0x00003148
};

Gfx _spot16_room_0_dlist_00003158[] =
{
	gsDPPipeSync(), // 0x00003158
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003160
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003168
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000BD98), // 0x00003170
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003178
	gsDPLoadSync(), // 0x00003180
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003188
	gsDPPipeSync(), // 0x00003190
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003198
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000031A0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000031A8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000031B0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000031B8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000031C0
	gsDPSetPrimColor(0, 0, 180, 171, 159, 255), // 0x000031C8
	gsSPVertex(_spot16_room_0_vertices_00002F48, 11, 0), // 0x000031D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000031D8
	gsSP2Triangles(0, 3, 4, 0, 3, 2, 5, 0), // 0x000031E0
	gsSP2Triangles(2, 6, 5, 0, 7, 0, 4, 0), // 0x000031E8
	gsSP2Triangles(7, 4, 8, 0, 7, 8, 9, 0), // 0x000031F0
	gsSP1Triangle(9, 8, 10, 0), // 0x000031F8
	gsDPPipeSync(), // 0x00003200
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00016E98), // 0x00003208
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 7, 0), // 0x00003210
	gsDPLoadSync(), // 0x00003218
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003220
	gsDPPipeSync(), // 0x00003228
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 6, 0, 0, 7, 0), // 0x00003230
	gsDPSetTileSize(0, 0, 0, 508, 252), // 0x00003238
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00003240
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00003248
	gsSPVertex(_spot16_room_0_vertices_00002FF8, 4, 0), // 0x00003250
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003258
	gsDPPipeSync(), // 0x00003260
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00003268
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003270
	gsDPLoadSync(), // 0x00003278
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003280
	gsDPPipeSync(), // 0x00003288
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003290
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003298
	gsSPVertex(_spot16_room_0_vertices_00003038, 14, 0), // 0x000032A0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000032A8
	gsSP2Triangles(4, 1, 3, 0, 5, 4, 3, 0), // 0x000032B0
	gsSP2Triangles(6, 2, 7, 0, 0, 2, 6, 0), // 0x000032B8
	gsSP2Triangles(6, 8, 9, 0, 6, 7, 8, 0), // 0x000032C0
	gsSP2Triangles(10, 11, 8, 0, 12, 11, 10, 0), // 0x000032C8
	gsSP2Triangles(11, 9, 8, 0, 11, 12, 13, 0), // 0x000032D0
	gsDPPipeSync(), // 0x000032D8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00016E98), // 0x000032E0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 7, 0), // 0x000032E8
	gsDPLoadSync(), // 0x000032F0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000032F8
	gsDPPipeSync(), // 0x00003300
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 6, 0, 0, 7, 0), // 0x00003308
	gsDPSetTileSize(0, 0, 0, 508, 252), // 0x00003310
	gsSPVertex(_spot16_room_0_vertices_00003118, 4, 0), // 0x00003318
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003320
	gsSPEndDisplayList(), // 0x00003328
};

Vtx_t _spot16_room_0_vertices_00003330[1] = 
{
	 { -1237, 1021, 1435, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003330
};

Gfx _spot16_room_0_dlist_00003340[] =
{
	gsSPVertex(_spot16_room_0_vertices_00003330, 1, 0), // 0x00003340
	gsSPBranchLessZraw(_spot16_room_0_dlist_00003158, 0x00, 0xAF0), // 0x00003350
	gsSPEndDisplayList(), // 0x00003358
};

Vtx_t _spot16_room_0_vertices_00003360[28] = 
{
	 { -1104, 1694, -98, 0, 2048, -3476, 57, 36, 99, 255 }, // 0x00003360
	 { -1161, 1694, -18, 0, 0, -4399, 83, 26, 82, 255 }, // 0x00003370
	 { -965, 1694, -18, 0, 0, -736, 241, 64, 100, 255 }, // 0x00003380
	 { -962, 1694, -97, 0, 2048, -1151, 237, 81, 86, 255 }, // 0x00003390
	 { -845, 1754, -18, 0, 0, 1213, 241, 64, 100, 255 }, // 0x000033A0
	 { -765, 1754, -18, 0, 0, 2885, 64, 78, 65, 255 }, // 0x000033B0
	 { -765, 1754, -98, 0, 2048, 2463, 35, 42, 106, 255 }, // 0x000033C0
	 { -845, 1754, -98, 0, 2048, 656, 241, 63, 100, 255 }, // 0x000033D0
	 { -655, 1794, -18, 0, 0, 4473, 187, 69, 69, 255 }, // 0x000033E0
	 { -581, 1794, -18, 0, 0, 5646, 57, 74, 74, 255 }, // 0x000033F0
	 { -562, 1794, -99, 0, 2048, 5971, 93, 45, 60, 255 }, // 0x00003400
	 { -655, 1794, -98, 0, 2048, 4287, 220, 36, 108, 255 }, // 0x00003410
	 { -717, 1888, -178, 0, 2048, 1365, 32, 84, 79, 255 }, // 0x00003420
	 { -807, 1906, -97, 0, 0, -202, 27, 68, 94, 255 }, // 0x00003430
	 { -659, 1854, -98, 0, 0, 2401, 18, 102, 60, 255 }, // 0x00003440
	 { -625, 1854, -182, 0, 2048, 2981, 16, 62, 101, 255 }, // 0x00003450
	 { -533, 1854, -186, 0, 2048, 4561, 84, 55, 64, 255 }, // 0x00003460
	 { -571, 1854, -99, 0, 0, 3910, 54, 68, 82, 255 }, // 0x00003470
	 { -747, 1662, -98, 0, 2048, 2048, 64, 78, 65, 255 }, // 0x00003480
	 { -747, 1662, -18, 0, 74, 2048, 30, 98, 61, 255 }, // 0x00003490
	 { -655, 1662, -18, 0, 74, 872, 220, 108, 36, 255 }, // 0x000034A0
	 { -655, 1662, -98, 0, 2048, 872, 187, 69, 69, 255 }, // 0x000034B0
	 { -1165, 1662, -18, 0, 79, 2048, 54, 55, 92, 255 }, // 0x000034C0
	 { -1232, 1662, 105, 0, 2048, 2691, 91, 18, 76, 255 }, // 0x000034D0
	 { -589, 1662, 62, 0, 2048, -5365, 33, 104, 49, 255 }, // 0x000034E0
	 { -747, 1662, -18, 0, 79, -3288, 30, 98, 61, 255 }, // 0x000034F0
	 { -551, 1662, -18, 0, 79, -5790, 101, 30, 57, 255 }, // 0x00003500
	 { -655, 1662, -18, 0, 79, -4586, 220, 108, 36, 255 }, // 0x00003510
};

Gfx _spot16_room_0_dlist_00003520[] =
{
	gsDPPipeSync(), // 0x00003520
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00008198), // 0x00003528
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003530
	gsDPLoadSync(), // 0x00003538
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003540
	gsDPPipeSync(), // 0x00003548
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003550
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003558
	gsSPVertex(_spot16_room_0_vertices_00003360, 28, 0), // 0x00003560
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003568
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003570
	gsSP2Triangles(2, 4, 7, 0, 2, 7, 3, 0), // 0x00003578
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003580
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003588
	gsSP2Triangles(14, 16, 15, 0, 14, 17, 16, 0), // 0x00003590
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x00003598
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x000035A0
	gsSP2Triangles(24, 26, 27, 0, 24, 27, 25, 0), // 0x000035A8
	gsSPEndDisplayList(), // 0x000035B0
};

Vtx_t _spot16_room_0_vertices_000035B8[1] = 
{
	 { -883, 1778, -41, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035B8
};

Gfx _spot16_room_0_dlist_000035C8[] =
{
	gsSPVertex(_spot16_room_0_vertices_000035B8, 1, 0), // 0x000035C8
	gsSPBranchLessZraw(_spot16_room_0_dlist_00003520, 0x00, 0x320), // 0x000035D8
	gsSPEndDisplayList(), // 0x000035E0
};

Vtx_t _spot16_room_0_vertices_000035E8[21] = 
{
	 { -1162, 1083, 1455, 0, 2031, 2194, 232, 101, 197, 255 }, // 0x000035E8
	 { -902, 1084, 1352, 0, 2816, 1215, 184, 85, 213, 255 }, // 0x000035F8
	 { -866, 1143, 1084, 0, 2337, 67, 189, 92, 220, 255 }, // 0x00003608
	 { -1162, 1083, 1455, 0, 3277, 2344, 232, 101, 197, 255 }, // 0x00003618
	 { -866, 1143, 1084, 0, 2894, -156, 189, 92, 220, 255 }, // 0x00003628
	 { -1445, 1146, 950, 0, -108, 871, 58, 93, 47, 255 }, // 0x00003638
	 { -1162, 1083, 1455, 0, 3277, 2344, 232, 101, 197, 255 }, // 0x00003648
	 { -1445, 1146, 950, 0, -108, 871, 58, 93, 47, 255 }, // 0x00003658
	 { -1545, 1048, 1161, 0, 410, 2196, 219, 112, 18, 255 }, // 0x00003668
	 { -1572, 1048, 1491, 0, 1769, 3709, 33, 80, 174, 255 }, // 0x00003678
	 { -1162, 1083, 1455, 0, 3277, 2344, 232, 101, 197, 255 }, // 0x00003688
	 { -1545, 1048, 1161, 0, 410, 2196, 219, 112, 18, 255 }, // 0x00003698
	 { -1572, 1048, 1491, 0, 1769, 3709, 33, 80, 174, 255 }, // 0x000036A8
	 { -1545, 1048, 1161, 0, 410, 2196, 219, 112, 18, 255 }, // 0x000036B8
	 { -1703, 1048, 1381, 0, 750, 3619, 80, 73, 206, 255 }, // 0x000036C8
	 { -1238, 1617, 105, 0, -3563, -3995, 63, 53, 86, 255 }, // 0x000036D8
	 { -743, 1250, 566, 0, 1067, -2886, 23, 102, 58, 255 }, // 0x000036E8
	 { -589, 1618, 62, 0, -1084, -6055, 91, 26, 73, 255 }, // 0x000036F8
	 { -1392, 1409, 616, 0, -1834, -1106, 104, 42, 42, 255 }, // 0x00003708
	 { -657, 1122, 959, 0, 3229, -1305, 70, 97, 1, 255 }, // 0x00003718
	 { -657, 1122, 959, 0, 3229, -1305, 70, 97, 1, 255 }, // 0x00003728
};

Vtx_t _spot16_room_0_vertices_00003738[21] = 
{
	 { -1545, 1205, 1154, 0, -3351, -2538, 31, 38, 109, 255 }, // 0x00003738
	 { -1424, 1403, 987, 0, -2161, -986, 91, 48, 61, 255 }, // 0x00003748
	 { -1633, 1571, 704, 0, 477, -1356, 152, 52, 28, 255 }, // 0x00003758
	 { -1424, 1403, 987, 0, -2161, -986, 91, 48, 61, 255 }, // 0x00003768
	 { -1405, 1553, 711, 0, -261, 21, 87, 67, 48, 255 }, // 0x00003778
	 { -1633, 1571, 704, 0, 477, -1356, 152, 52, 28, 255 }, // 0x00003788
	 { -1431, 1994, 66, 0, 4673, 2048, 201, 103, 26, 255 }, // 0x00003798
	 { -1633, 1571, 704, 0, 477, -1356, 152, 52, 28, 255 }, // 0x000037A8
	 { -1405, 1553, 711, 0, -261, 21, 87, 67, 48, 255 }, // 0x000037B8
	 { -1431, 1994, 66, 0, 4673, 2048, 201, 103, 26, 255 }, // 0x000037C8
	 { -1405, 1553, 711, 0, -261, 21, 87, 67, 48, 255 }, // 0x000037D8
	 { -1334, 1697, 290, 0, 2048, 2048, 101, 26, 58, 255 }, // 0x000037E8
	 { -1445, 1146, 950, 0, -3569, 2971, 58, 93, 47, 255 }, // 0x000037F8
	 { -1545, 1205, 1154, 0, -5062, 2391, 31, 38, 109, 255 }, // 0x00003808
	 { -1545, 1048, 1161, 0, -5233, 3447, 219, 112, 18, 255 }, // 0x00003818
	 { -1424, 1403, 987, 0, -3515, 1194, 91, 48, 61, 255 }, // 0x00003828
	 { -1238, 1617, 105, 0, 2838, 831, 63, 53, 86, 255 }, // 0x00003838
	 { -1334, 1697, 290, 0, 1553, 13, 101, 26, 58, 255 }, // 0x00003848
	 { -1392, 1409, 616, 0, -1002, 1577, 104, 42, 42, 255 }, // 0x00003858
	 { -1405, 1553, 711, 0, -1482, 495, 87, 67, 48, 255 }, // 0x00003868
	 { -1232, 1662, 105, 0, 2921, 539, 91, 18, 76, 255 }, // 0x00003878
};

Vtx_t _spot16_room_0_vertices_00003888[21] = 
{
	 { -543, 1946, -186, 0, 4, -805, 39, 45, 103, 255 }, // 0x00003888
	 { -533, 1854, -186, 0, 75, -413, 84, 55, 64, 255 }, // 0x00003898
	 { -432, 1946, -374, 0, 1446, -1019, 70, 97, 6, 255 }, // 0x000038A8
	 { -562, 1794, -99, 0, -490, 61, 93, 45, 60, 255 }, // 0x000038B8
	 { -571, 1854, -99, 0, -563, -331, 54, 68, 82, 255 }, // 0x000038C8
	 { -551, 1662, -18, 0, -832, 1315, 101, 30, 57, 255 }, // 0x000038D8
	 { -581, 1794, -18, 0, -1053, 138, 57, 74, 74, 255 }, // 0x000038E8
	 { -589, 1618, 62, 0, -1385, 1688, 91, 26, 73, 255 }, // 0x000038F8
	 { -589, 1662, 62, 0, -1424, 1390, 33, 104, 49, 255 }, // 0x00003908
	 { -600, 1412, 216, 0, -2213, 3227, 66, 88, 48, 255 }, // 0x00003918
	 { -543, 1446, -21, 0, -601, 2768, 54, 106, 13, 255 }, // 0x00003928
	 { -743, 1250, 566, 0, -4618, 4650, 23, 102, 58, 255 }, // 0x00003938
	 { -549, 1608, -18, 0, -774, 1678, 114, 222, 12, 255 }, // 0x00003948
	 { -402, 1699, -444, 0, 2189, 657, 117, 244, 23, 255 }, // 0x00003958
	 { -501, 1462, -133, 0, 196, 2552, 12, 104, 57, 255 }, // 0x00003968
	 { -402, 1500, -394, 0, 2048, 2048, 62, 88, 204, 255 }, // 0x00003978
	 { -506, 1605, -131, 0, 40, 1589, 97, 234, 66, 255 }, // 0x00003988
	 { -129, 1780, -1290, 0, 8132, -693, 43, 84, 73, 255 }, // 0x00003998
	 { -389, 1872, -488, 0, 2078, -497, 86, 83, 4, 255 }, // 0x000039A8
	 { -376, 1719, -545, 0, 2876, 429, 57, 152, 12, 255 }, // 0x000039B8
	 { -134, 1672, -1276, 0, 8127, 50, 32, 174, 81, 255 }, // 0x000039C8
};

Vtx_t _spot16_room_0_vertices_000039D8[4] = 
{
	 { 487, 1425, -1734, 0, 9360, 521, 48, 84, 70, 255 }, // 0x000039D8
	 { -129, 1780, -1290, 0, 7890, -941, 43, 84, 73, 255 }, // 0x000039E8
	 { -134, 1672, -1276, 0, 7781, -606, 32, 174, 81, 255 }, // 0x000039F8
	 { -93, 1888, -1326, 0, 8080, -1262, 19, 98, 66, 255 }, // 0x00003A08
};

Vtx_t _spot16_room_0_vertices_00003A18[8] = 
{
	 { -655, 1662, -18, 0, 2048, 2048, 220, 108, 36, 255 }, // 0x00003A18
	 { -655, 1794, -18, 0, 2048, 0, 187, 69, 69, 255 }, // 0x00003A28
	 { -655, 1794, -98, 0, 990, 0, 220, 36, 108, 255 }, // 0x00003A38
	 { -655, 1662, -98, 0, 990, 2048, 187, 69, 69, 255 }, // 0x00003A48
	 { -765, 1754, -98, 0, -154, 1296, 35, 42, 106, 255 }, // 0x00003A58
	 { -747, 1662, -98, 0, 37, 2048, 64, 78, 65, 255 }, // 0x00003A68
	 { -655, 1662, -98, 0, 1104, 2048, 187, 69, 69, 255 }, // 0x00003A78
	 { -655, 1794, -98, 0, 1104, 806, 220, 36, 108, 255 }, // 0x00003A88
};

Vtx_t _spot16_room_0_vertices_00003A98[4] = 
{
	 { -765, 1754, -18, 0, 0, 0, 64, 78, 65, 255 }, // 0x00003A98
	 { -747, 1662, -18, 0, 0, 1024, 30, 98, 61, 255 }, // 0x00003AA8
	 { -747, 1662, -98, 0, 992, 1024, 64, 78, 65, 255 }, // 0x00003AB8
	 { -765, 1754, -98, 0, 992, 0, 35, 42, 106, 255 }, // 0x00003AC8
};

Vtx_t _spot16_room_0_vertices_00003AD8[4] = 
{
	 { -589, 1618, 62, 0, 4096, 70, 91, 26, 73, 255 }, // 0x00003AD8
	 { -589, 1662, 62, 0, 4096, -520, 33, 104, 49, 255 }, // 0x00003AE8
	 { -1232, 1662, 105, 0, -3615, -520, 91, 18, 76, 255 }, // 0x00003AF8
	 { -1238, 1617, 105, 0, -3686, 72, 63, 53, 86, 255 }, // 0x00003B08
};

Vtx_t _spot16_room_0_vertices_00003B18[8] = 
{
	 { -717, 1946, -178, 0, 105, 0, 255, 85, 84, 255 }, // 0x00003B18
	 { -625, 1854, -182, 0, 1024, 1024, 16, 62, 101, 255 }, // 0x00003B28
	 { -543, 1946, -186, 0, 2048, 0, 39, 45, 103, 255 }, // 0x00003B38
	 { -717, 1888, -178, 0, 0, 1024, 32, 84, 79, 255 }, // 0x00003B48
	 { -533, 1854, -186, 0, 2048, 1024, 84, 55, 64, 255 }, // 0x00003B58
	 { -717, 1888, -178, 0, 2048, 1024, 32, 84, 79, 255 }, // 0x00003B68
	 { -717, 1946, -178, 0, 2048, 0, 255, 85, 84, 255 }, // 0x00003B78
	 { -830, 1946, -190, 0, 0, 0, 14, 113, 37, 255 }, // 0x00003B88
};

Vtx_t _spot16_room_0_vertices_00003B98[4] = 
{
	 { -965, 1662, -18, 0, 3437, 512, 0, 0, 120, 255 }, // 0x00003B98
	 { -965, 1694, -18, 0, 3437, -1, 241, 64, 100, 255 }, // 0x00003BA8
	 { -1161, 1694, -18, 0, 53, -1, 83, 26, 82, 255 }, // 0x00003BB8
	 { -1165, 1662, -18, 0, 0, 512, 54, 55, 92, 255 }, // 0x00003BC8
};

Vtx_t _spot16_room_0_vertices_00003BD8[21] = 
{
	 { -930, 1946, -97, 0, 1544, 0, 8, 78, 90, 255 }, // 0x00003BD8
	 { -1068, 1946, -96, 0, -367, -19, 55, 41, 98, 255 }, // 0x00003BE8
	 { -1104, 1694, -98, 0, -504, 2048, 57, 36, 99, 255 }, // 0x00003BF8
	 { -962, 1694, -97, 0, 1545, 2048, 237, 81, 86, 255 }, // 0x00003C08
	 { -765, 1754, -98, 0, 2048, 2048, 35, 42, 106, 255 }, // 0x00003C18
	 { -807, 1906, -97, 0, 1028, -12, 27, 68, 94, 255 }, // 0x00003C28
	 { -845, 1754, -98, 0, 1025, 2048, 241, 63, 100, 255 }, // 0x00003C38
	 { -807, 1906, -97, 0, 1029, -12, 27, 68, 94, 255 }, // 0x00003C48
	 { -930, 1946, -97, 0, -492, -25, 8, 78, 90, 255 }, // 0x00003C58
	 { -845, 1754, -98, 0, 1025, 2048, 241, 63, 100, 255 }, // 0x00003C68
	 { -962, 1694, -97, 0, -499, 2048, 237, 81, 86, 255 }, // 0x00003C78
	 { -562, 1794, -99, 0, 1980, 806, 93, 45, 60, 255 }, // 0x00003C88
	 { -571, 1854, -99, 0, 1882, 3, 54, 68, 82, 255 }, // 0x00003C98
	 { -659, 1854, -98, 0, 956, 3, 18, 102, 60, 255 }, // 0x00003CA8
	 { -655, 1794, -98, 0, 1104, 806, 220, 36, 108, 255 }, // 0x00003CB8
	 { -807, 1906, -97, 0, -592, 3, 27, 68, 94, 255 }, // 0x00003CC8
	 { -765, 1754, -98, 0, -154, 1296, 35, 42, 106, 255 }, // 0x00003CD8
	 { -655, 1662, -18, 0, 2048, 2048, 220, 108, 36, 255 }, // 0x00003CE8
	 { -551, 1662, -18, 0, 3351, 2048, 101, 30, 57, 255 }, // 0x00003CF8
	 { -581, 1794, -18, 0, 2932, 0, 57, 74, 74, 255 }, // 0x00003D08
	 { -655, 1794, -18, 0, 2048, 0, 187, 69, 69, 255 }, // 0x00003D18
};

Vtx_t _spot16_room_0_vertices_00003D28[6] = 
{
	 { -747, 1662, -18, 0, 2048, 1024, 30, 98, 61, 255 }, // 0x00003D28
	 { -845, 1754, -18, 0, 420, 0, 241, 64, 100, 255 }, // 0x00003D38
	 { -929, 1662, -18, 0, -959, 1024, 0, 0, 120, 255 }, // 0x00003D48
	 { -765, 1754, -18, 0, 2048, 0, 64, 78, 65, 255 }, // 0x00003D58
	 { -965, 1694, -18, 0, -1552, 0, 241, 64, 100, 255 }, // 0x00003D68
	 { -965, 1662, -18, 0, -1561, 1024, 0, 0, 120, 255 }, // 0x00003D78
};

Vtx_t _spot16_room_0_vertices_00003D88[3] = 
{
	 { -667, 970, 1359, 0, -1169, 105, 116, 23, 17, 255 }, // 0x00003D88
	 { -657, 1002, 959, 0, 115, 226, 117, 6, 22, 255 }, // 0x00003D98
	 { -657, 1122, 959, 0, 183, -157, 70, 97, 1, 255 }, // 0x00003DA8
};

Vtx_t _spot16_room_0_vertices_00003DB8[4] = 
{
	 { -533, 1250, 597, 0, 2048, 1365, 86, 60, 57, 255 }, // 0x00003DB8
	 { -400, 1396, 264, 0, 2048, -2048, 75, 77, 52, 255 }, // 0x00003DC8
	 { -600, 1412, 216, 0, 0, -2048, 66, 88, 48, 255 }, // 0x00003DD8
	 { -743, 1250, 566, 0, 0, 1365, 23, 102, 58, 255 }, // 0x00003DE8
};

Vtx_t _spot16_room_0_vertices_00003DF8[3] = 
{
	 { -533, 1250, 597, 0, 2066, -3353, 86, 60, 57, 255 }, // 0x00003DF8
	 { -743, 1250, 566, 0, 1067, -2886, 23, 102, 58, 255 }, // 0x00003E08
	 { -657, 1122, 959, 0, 3229, -1305, 70, 97, 1, 255 }, // 0x00003E18
};

Vtx_t _spot16_room_0_vertices_00003E28[6] = 
{
	 { -533, 1113, 597, 0, 1375, 87, 112, 1, 42, 255 }, // 0x00003E28
	 { -533, 1250, 597, 0, 1453, -350, 86, 60, 57, 255 }, // 0x00003E38
	 { -657, 1122, 959, 0, 183, -157, 70, 97, 1, 255 }, // 0x00003E48
	 { -657, 1002, 959, 0, 115, 226, 117, 6, 22, 255 }, // 0x00003E58
	 { -400, 1276, 264, 0, 2578, -228, 111, 1, 44, 255 }, // 0x00003E68
	 { -400, 1396, 264, 0, 2646, -611, 75, 77, 52, 255 }, // 0x00003E78
};

Vtx_t _spot16_room_0_vertices_00003E88[5] = 
{
	 { -400, 1396, 264, 0, 2048, -2048, 75, 77, 52, 255 }, // 0x00003E88
	 { -311, 1427, 39, 0, 2048, -4779, 80, 79, 41, 255 }, // 0x00003E98
	 { -543, 1446, -21, 0, 0, -4779, 54, 106, 13, 255 }, // 0x00003EA8
	 { -600, 1412, 216, 0, 0, -2048, 66, 88, 48, 255 }, // 0x00003EB8
	 { -288, 1481, -111, 0, 2048, -6827, 55, 98, 40, 255 }, // 0x00003EC8
};

Vtx_t _spot16_room_0_vertices_00003ED8[11] = 
{
	 { -311, 1381, 39, 0, 3387, -427, 116, 2, 30, 255 }, // 0x00003ED8
	 { -311, 1427, 39, 0, 3413, -576, 80, 79, 41, 255 }, // 0x00003EE8
	 { -400, 1396, 264, 0, 2646, -611, 75, 77, 52, 255 }, // 0x00003EF8
	 { -400, 1276, 264, 0, 2578, -228, 111, 1, 44, 255 }, // 0x00003F08
	 { -288, 1386, -109, 0, 3865, -359, 113, 254, 38, 255 }, // 0x00003F18
	 { -288, 1481, -111, 0, 3927, -661, 55, 98, 40, 255 }, // 0x00003F28
	 { -123, 1460, -405, 0, 4915, -410, 114, 1, 37, 255 }, // 0x00003F38
	 { -123, 1500, -405, 0, 4937, -537, 77, 88, 24, 255 }, // 0x00003F48
	 { 4, 1329, -1286, 0, 7679, 512, 29, 113, 25, 255 }, // 0x00003F58
	 { 487, 1425, -1734, 0, 9360, 521, 48, 84, 70, 255 }, // 0x00003F68
	 { -134, 1672, -1276, 0, 7781, -606, 32, 174, 81, 255 }, // 0x00003F78
};

Vtx_t _spot16_room_0_vertices_00003F88[5] = 
{
	 { -288, 1481, -111, 0, 2048, -6827, 55, 98, 40, 255 }, // 0x00003F88
	 { -123, 1500, -405, 0, 2048, -10923, 77, 88, 24, 255 }, // 0x00003F98
	 { -402, 1500, -394, 0, 0, -10923, 62, 88, 204, 255 }, // 0x00003FA8
	 { -501, 1462, -133, 0, 0, -6626, 12, 104, 57, 255 }, // 0x00003FB8
	 { -543, 1446, -21, 0, 0, -4779, 54, 106, 13, 255 }, // 0x00003FC8
};

Vtx_t _spot16_room_0_vertices_00003FD8[19] = 
{
	 { -809, 1946, -385, 0, 7699, -655, 68, 91, 36, 255 }, // 0x00003FD8
	 { -766, 1873, -498, 0, 8192, 0, 85, 84, 0, 255 }, // 0x00003FE8
	 { -794, 2052, -446, 0, 8192, -1252, 57, 104, 244, 255 }, // 0x00003FF8
	 { -453, 1585, -1734, 0, -3189, 2912, 93, 69, 225, 255 }, // 0x00004008
	 { -382, 1940, -1290, 0, -5990, 181, 112, 41, 3, 255 }, // 0x00004018
	 { -382, 1780, -1290, 0, -6104, 1267, 52, 105, 235, 255 }, // 0x00004028
	 { -530, 1798, -1734, 0, -2880, 1395, 7, 117, 232, 255 }, // 0x00004038
	 { -794, 2052, -446, 0, -12288, -1252, 57, 104, 244, 255 }, // 0x00004048
	 { -766, 1873, -498, 0, -12288, 0, 85, 84, 0, 255 }, // 0x00004058
	 { -996, 2180, -235, 0, 6373, -2445, 56, 86, 61, 255 }, // 0x00004068
	 { -1132, 2087, -38, 0, 4656, -2073, 82, 25, 84, 255 }, // 0x00004078
	 { -1161, 1694, -18, 0, 3962, 347, 83, 26, 82, 255 }, // 0x00004088
	 { -1104, 1694, -98, 0, 4602, 474, 57, 36, 99, 255 }, // 0x00004098
	 { -1068, 1946, -96, 0, 5079, -1085, 55, 41, 98, 255 }, // 0x000040A8
	 { -984, 1946, -207, 0, 6010, -900, 50, 100, 43, 255 }, // 0x000040B8
	 { -1068, 1946, -96, 0, 5079, -1085, 55, 41, 98, 255 }, // 0x000040C8
	 { -1165, 1662, -18, 0, 3852, 729, 54, 55, 92, 255 }, // 0x000040D8
	 { -1232, 1662, 105, 0, 2921, 539, 91, 18, 76, 255 }, // 0x000040E8
	 { -1334, 1697, 290, 0, 1553, 13, 101, 26, 58, 255 }, // 0x000040F8
};

Vtx_t _spot16_room_0_vertices_00004108[16] = 
{
	 { 54, 656, -979, 0, 5848, 2478, 93, 39, 64, 255 }, // 0x00004108
	 { 4, 1329, -1286, 0, 7679, 512, 29, 113, 25, 255 }, // 0x00004118
	 { -123, 1460, -405, 0, 4915, -410, 114, 1, 37, 255 }, // 0x00004128
	 { -510, 295, 580, 0, 977, 2707, 112, 32, 28, 255 }, // 0x00004138
	 { -234, 539, -190, 0, 3667, 2394, 111, 18, 42, 255 }, // 0x00004148
	 { -311, 1381, 39, 0, 3387, -427, 116, 2, 30, 255 }, // 0x00004158
	 { -400, 1276, 264, 0, 2578, -228, 111, 1, 44, 255 }, // 0x00004168
	 { -288, 1386, -109, 0, 3865, -359, 113, 254, 38, 255 }, // 0x00004178
	 { -533, 1113, 597, 0, 1375, 87, 112, 1, 42, 255 }, // 0x00004188
	 { -657, 1002, 959, 0, 115, 226, 117, 6, 22, 255 }, // 0x00004198
	 { -667, 970, 1359, 0, -1169, 105, 116, 23, 17, 255 }, // 0x000041A8
	 { -596, 40, 1391, 0, -1765, 3062, 117, 7, 22, 255 }, // 0x000041B8
	 { -758, 680, 2000, 0, -3398, 663, 117, 5, 26, 255 }, // 0x000041C8
	 { -775, -213, 2197, 0, -4532, 3400, 116, 4, 27, 255 }, // 0x000041D8
	 { -745, 805, 1911, 0, -3042, 316, 111, 28, 33, 255 }, // 0x000041E8
	 { 487, 1425, -1734, 0, 9360, 521, 48, 84, 70, 255 }, // 0x000041F8
};

Vtx_t _spot16_room_0_vertices_00004208[13] = 
{
	 { -291, 295, 580, 0, 5379, 2889, 143, 39, 7, 255 }, // 0x00004208
	 { -207, 1046, 1343, 0, 8468, -190, 174, 79, 36, 255 }, // 0x00004218
	 { -350, 1393, 559, 0, 5314, -849, 169, 75, 32, 255 }, // 0x00004228
	 { 12, 1941, -190, 0, 2137, -2188, 174, 84, 233, 255 }, // 0x00004238
	 { 253, 656, -979, 0, -544, 2719, 142, 35, 5, 255 }, // 0x00004248
	 { 187, 1895, -577, 0, 498, -1758, 171, 63, 201, 255 }, // 0x00004258
	 { -267, 40, 1391, 0, 8684, 3209, 139, 5, 22, 255 }, // 0x00004268
	 { -107, 925, 1911, 0, 10754, -156, 155, 56, 32, 255 }, // 0x00004278
	 { -92, 800, 2000, 0, 11111, 210, 140, 3, 30, 255 }, // 0x00004288
	 { -43, -213, 2197, 0, 11898, 3538, 141, 1, 32, 255 }, // 0x00004298
	 { 328, 1455, -1279, 0, -2414, 228, 193, 95, 220, 255 }, // 0x000042A8
	 { 192, 1614, -733, 0, -141, -694, 168, 59, 201, 255 }, // 0x000042B8
	 { 487, 1425, -1734, 0, -4325, 649, 48, 84, 70, 255 }, // 0x000042C8
};

Vtx_t _spot16_room_0_vertices_000042D8[3] = 
{
	 { 487, 1425, -1734, 0, 3193, -7019, 48, 84, 70, 255 }, // 0x000042D8
	 { 54, 656, -979, 0, -439, -1081, 93, 39, 64, 255 }, // 0x000042E8
	 { 253, 656, -979, 0, 195, -390, 142, 35, 5, 255 }, // 0x000042F8
};

Vtx_t _spot16_room_0_vertices_00004308[26] = 
{
	 { -432, 1946, -374, 0, 2048, 4580, 70, 97, 6, 255 }, // 0x00004308
	 { -766, 1873, -498, 0, 0, 4176, 85, 84, 0, 255 }, // 0x00004318
	 { -809, 1946, -385, 0, 0, 4984, 68, 91, 36, 255 }, // 0x00004328
	 { -389, 1872, -488, 0, 2048, 3772, 86, 83, 4, 255 }, // 0x00004338
	 { -766, 1873, -498, 0, 0, 4176, 85, 84, 0, 255 }, // 0x00004348
	 { -382, 1780, -1290, 0, 0, -1886, 52, 105, 235, 255 }, // 0x00004358
	 { -766, 1873, -498, 0, 0, 4176, 85, 84, 0, 255 }, // 0x00004368
	 { -809, 1946, -385, 0, 0, 4984, 68, 91, 36, 255 }, // 0x00004378
	 { -717, 1946, -178, 0, 1024, 6197, 255, 85, 84, 255 }, // 0x00004388
	 { -432, 1946, -374, 0, 2048, 4580, 70, 97, 6, 255 }, // 0x00004398
	 { -543, 1946, -186, 0, 2048, 5927, 39, 45, 103, 255 }, // 0x000043A8
	 { -432, 1946, -374, 0, 2048, 4580, 70, 97, 6, 255 }, // 0x000043B8
	 { -129, 1780, -1290, 0, 2048, -2155, 43, 84, 73, 255 }, // 0x000043C8
	 { -200, 1585, -1734, 0, 2048, -5254, 182, 94, 247, 255 }, // 0x000043D8
	 { -382, 1780, -1290, 0, 0, -1886, 52, 105, 235, 255 }, // 0x000043E8
	 { -453, 1585, -1734, 0, 0, -4984, 93, 69, 225, 255 }, // 0x000043F8
	 { -382, 1780, -1290, 0, 0, -1886, 52, 105, 235, 255 }, // 0x00004408
	 { -984, 1946, -207, 0, 0, 6331, 50, 100, 43, 255 }, // 0x00004418
	 { -930, 1946, -97, 0, 483, 6949, 8, 78, 90, 255 }, // 0x00004428
	 { -830, 1946, -190, 0, 648, 6246, 14, 113, 37, 255 }, // 0x00004438
	 { -1068, 1946, -96, 0, 0, 7140, 55, 41, 98, 255 }, // 0x00004448
	 { -930, 1946, -97, 0, 0, -2417, 8, 78, 90, 255 }, // 0x00004458
	 { -807, 1906, -97, 0, 0, -202, 27, 68, 94, 255 }, // 0x00004468
	 { -830, 1946, -190, 0, 2048, -788, 14, 113, 37, 255 }, // 0x00004478
	 { -717, 1888, -178, 0, 2048, 1365, 32, 84, 79, 255 }, // 0x00004488
	 { -809, 1946, -385, 0, 0, 4984, 68, 91, 36, 255 }, // 0x00004498
};

Vtx_t _spot16_room_0_vertices_000044A8[8] = 
{
	 { -999, 69, 2770, 0, 230, 1964, 43, 109, 24, 255 }, // 0x000044A8
	 { -469, 191, 1215, 0, -792, -3673, 77, 91, 4, 255 }, // 0x000044B8
	 { -510, 295, 580, 0, -1514, -5343, 112, 32, 28, 255 }, // 0x000044C8
	 { -375, 128, 1313, 0, -551, -3116, 247, 118, 13, 255 }, // 0x000044D8
	 { -417, -273, 2778, 0, 1375, 1336, 5, 115, 32, 255 }, // 0x000044E8
	 { 158, 29, 2652, 0, 2521, 709, 214, 109, 25, 255 }, // 0x000044F8
	 { -375, 128, 1313, 0, -551, -3116, 247, 118, 13, 255 }, // 0x00004508
	 { -291, 295, 580, 0, -453, -3805, 143, 39, 7, 255 }, // 0x00004518
};

Vtx_t _spot16_room_0_vertices_00004528[10] = 
{
	 { -291, 295, 580, 0, 1163, 101, 143, 39, 7, 255 }, // 0x00004528
	 { -6, 240, -562, 0, 1865, 1024, 2, 106, 54, 255 }, // 0x00004538
	 { -384, 36, 380, 0, 0, 1024, 62, 95, 38, 255 }, // 0x00004548
	 { -234, 539, -190, 0, 936, 56, 111, 18, 42, 255 }, // 0x00004558
	 { -510, 295, 580, 0, -589, 137, 112, 32, 28, 255 }, // 0x00004568
	 { -469, 191, 1215, 0, -1412, 210, 77, 91, 4, 255 }, // 0x00004578
	 { -375, 128, 1313, 0, -1686, 235, 247, 118, 13, 255 }, // 0x00004588
	 { -291, 295, 580, 0, -974, 201, 143, 39, 7, 255 }, // 0x00004598
	 { 253, 656, -979, 0, 2884, 199, 142, 35, 5, 255 }, // 0x000045A8
	 { 54, 656, -979, 0, 2697, 162, 93, 39, 64, 255 }, // 0x000045B8
};

Vtx_t _spot16_room_0_vertices_000045C8[8] = 
{
	 { -694, 1601, -78, 0, -691, 1669, 91, 188, 218, 255 }, // 0x000045C8
	 { -694, 1446, -78, 0, -552, 2714, 90, 72, 223, 255 }, // 0x000045D8
	 { -651, 1462, -190, 0, 245, 2498, 35, 65, 94, 255 }, // 0x000045E8
	 { -651, 1601, -190, 0, 120, 1563, 42, 188, 89, 255 }, // 0x000045F8
	 { -543, 1446, -21, 0, 1100, 2159, 54, 106, 13, 255 }, // 0x00004608
	 { -694, 1446, -78, 0, 0, 2159, 90, 72, 223, 255 }, // 0x00004618
	 { -694, 1601, -78, 0, 0, 1104, 91, 188, 218, 255 }, // 0x00004628
	 { -549, 1608, -18, 0, 1070, 1056, 114, 222, 12, 255 }, // 0x00004638
};

Vtx_t _spot16_room_0_vertices_00004648[4] = 
{
	 { -501, 1462, -133, 0, 1536, 512, 12, 104, 57, 255 }, // 0x00004648
	 { -651, 1462, -190, 0, 1536, -1551, 35, 65, 94, 255 }, // 0x00004658
	 { -694, 1446, -78, 0, -14, -1551, 90, 72, 223, 255 }, // 0x00004668
	 { -543, 1446, -21, 0, -14, 512, 54, 106, 13, 255 }, // 0x00004678
};

Vtx_t _spot16_room_0_vertices_00004688[8] = 
{
	 { -506, 1605, -131, 0, 1071, 1074, 97, 234, 66, 255 }, // 0x00004688
	 { -651, 1601, -190, 0, 0, 1104, 42, 188, 89, 255 }, // 0x00004698
	 { -651, 1462, -190, 0, 0, 2048, 35, 65, 94, 255 }, // 0x000046A8
	 { -501, 1462, -133, 0, 1100, 2048, 12, 104, 57, 255 }, // 0x000046B8
	 { -549, 1608, -18, 0, 2077, 1071, 114, 222, 12, 255 }, // 0x000046C8
	 { -694, 1601, -78, 0, 2048, 0, 91, 188, 218, 255 }, // 0x000046D8
	 { -651, 1601, -190, 0, 1229, 0, 42, 188, 89, 255 }, // 0x000046E8
	 { -506, 1605, -131, 0, 1257, 1071, 97, 234, 66, 255 }, // 0x000046F8
};

Vtx_t _spot16_room_0_vertices_00004708[8] = 
{
	 { -1816, -1335, 2165, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004708
	 { 487, -1335, 2165, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004718
	 { -1816, 1137, -2116, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004728
	 { 487, 1137, -2116, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004738
	 { -1816, 300, 3109, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004748
	 { 487, 300, 3109, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004758
	 { -1816, 2772, -1172, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004768
	 { 487, 2772, -1172, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004778
};

Gfx _spot16_room_0_dlist_00004788[] =
{
	gsDPPipeSync(), // 0x00004788
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004790
	gsSPVertex(_spot16_room_0_vertices_00004708, 8, 0), // 0x00004798
	gsSPCullDisplayList(0, 7), // 0x000047A0
	gsDPPipeSync(), // 0x000047A8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000047B0
	gsSPDisplayList(_spot16_room_0_dlist_00003340), // 0x000047B8
	gsDPPipeSync(), // 0x000047C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000047C8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000047D0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0001D698), // 0x000047D8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000047E0
	gsDPLoadSync(), // 0x000047E8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000047F0
	gsDPPipeSync(), // 0x000047F8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004800
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004808
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004810
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004818
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00004820
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00004828
	gsDPSetPrimColor(0, 0, 150, 132, 98, 255), // 0x00004830
	gsSPVertex(_spot16_room_0_vertices_000035E8, 21, 0), // 0x00004838
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004840
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00004848
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0), // 0x00004850
	gsSP2Triangles(18, 16, 15, 0, 16, 18, 5, 0), // 0x00004858
	gsSP2Triangles(16, 5, 19, 0, 4, 20, 5, 0), // 0x00004860
	gsDPPipeSync(), // 0x00004868
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00004870
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004878
	gsDPLoadSync(), // 0x00004880
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004888
	gsDPPipeSync(), // 0x00004890
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004898
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000048A0
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x000048A8
	gsSPVertex(_spot16_room_0_vertices_00003738, 21, 0), // 0x000048B0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000048B8
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x000048C0
	gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0), // 0x000048C8
	gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0), // 0x000048D0
	gsSP2Triangles(18, 15, 12, 0, 18, 19, 15, 0), // 0x000048D8
	gsSP1Triangle(17, 16, 20, 0), // 0x000048E0
	gsSPVertex(_spot16_room_0_vertices_00003888, 21, 0), // 0x000048E8
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0), // 0x000048F0
	gsSP2Triangles(5, 3, 6, 0, 7, 5, 8, 0), // 0x000048F8
	gsSP2Triangles(9, 10, 7, 0, 7, 11, 9, 0), // 0x00004900
	gsSP2Triangles(7, 12, 5, 0, 7, 10, 12, 0), // 0x00004908
	gsSP2Triangles(13, 2, 1, 0, 1, 3, 13, 0), // 0x00004910
	gsSP2Triangles(3, 5, 13, 0, 14, 15, 16, 0), // 0x00004918
	gsSP2Triangles(15, 13, 16, 0, 12, 16, 5, 0), // 0x00004920
	gsSP2Triangles(16, 13, 5, 0, 17, 18, 19, 0), // 0x00004928
	gsSP2Triangles(18, 13, 19, 0, 2, 13, 18, 0), // 0x00004930
	gsSP1Triangle(20, 17, 19, 0), // 0x00004938
	gsDPPipeSync(), // 0x00004940
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00016E98), // 0x00004948
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 7, 0), // 0x00004950
	gsDPLoadSync(), // 0x00004958
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004960
	gsDPPipeSync(), // 0x00004968
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 6, 0, 0, 7, 0), // 0x00004970
	gsDPSetTileSize(0, 0, 0, 508, 252), // 0x00004978
	gsSPVertex(_spot16_room_0_vertices_000039D8, 4, 0), // 0x00004980
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00004988
	gsDPPipeSync(), // 0x00004990
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000AD98), // 0x00004998
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000049A0
	gsDPLoadSync(), // 0x000049A8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000049B0
	gsDPPipeSync(), // 0x000049B8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000049C0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000049C8
	gsDPSetPrimColor(0, 0, 150, 132, 98, 255), // 0x000049D0
	gsSPVertex(_spot16_room_0_vertices_00003A18, 8, 0), // 0x000049D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000049E0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000049E8
	gsDPPipeSync(), // 0x000049F0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009198), // 0x000049F8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004A00
	gsDPLoadSync(), // 0x00004A08
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004A10
	gsDPPipeSync(), // 0x00004A18
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004A20
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004A28
	gsSPVertex(_spot16_room_0_vertices_00003A98, 4, 0), // 0x00004A30
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004A38
	gsDPPipeSync(), // 0x00004A40
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009998), // 0x00004A48
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 6, 0), // 0x00004A50
	gsDPLoadSync(), // 0x00004A58
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00004A60
	gsDPPipeSync(), // 0x00004A68
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 4, 0, 0, 6, 0), // 0x00004A70
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00004A78
	gsSPVertex(_spot16_room_0_vertices_00003AD8, 4, 0), // 0x00004A80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004A88
	gsDPPipeSync(), // 0x00004A90
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009198), // 0x00004A98
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004AA0
	gsDPLoadSync(), // 0x00004AA8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004AB0
	gsDPPipeSync(), // 0x00004AB8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004AC0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004AC8
	gsSPVertex(_spot16_room_0_vertices_00003B18, 8, 0), // 0x00004AD0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00004AD8
	gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0), // 0x00004AE0
	gsDPPipeSync(), // 0x00004AE8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009998), // 0x00004AF0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 6, 0), // 0x00004AF8
	gsDPLoadSync(), // 0x00004B00
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00004B08
	gsDPPipeSync(), // 0x00004B10
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 4, 0, 0, 6, 0), // 0x00004B18
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00004B20
	gsSPVertex(_spot16_room_0_vertices_00003B98, 4, 0), // 0x00004B28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004B30
	gsDPPipeSync(), // 0x00004B38
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000AD98), // 0x00004B40
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004B48
	gsDPLoadSync(), // 0x00004B50
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004B58
	gsDPPipeSync(), // 0x00004B60
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004B68
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004B70
	gsSPVertex(_spot16_room_0_vertices_00003BD8, 21, 0), // 0x00004B78
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004B80
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00004B88
	gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0), // 0x00004B90
	gsSP2Triangles(11, 13, 14, 0, 13, 15, 16, 0), // 0x00004B98
	gsSP2Triangles(13, 16, 14, 0, 17, 18, 19, 0), // 0x00004BA0
	gsSP1Triangle(17, 19, 20, 0), // 0x00004BA8
	gsDPPipeSync(), // 0x00004BB0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009198), // 0x00004BB8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004BC0
	gsDPLoadSync(), // 0x00004BC8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004BD0
	gsDPPipeSync(), // 0x00004BD8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004BE0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004BE8
	gsSPVertex(_spot16_room_0_vertices_00003D28, 6, 0), // 0x00004BF0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00004BF8
	gsSP2Triangles(1, 4, 2, 0, 4, 5, 2, 0), // 0x00004C00
	gsSPDisplayList(_spot16_room_0_dlist_000035C8), // 0x00004C08
	gsDPPipeSync(), // 0x00004C10
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004C18
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004C20
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00016E98), // 0x00004C28
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 7, 0), // 0x00004C30
	gsDPLoadSync(), // 0x00004C38
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004C40
	gsDPPipeSync(), // 0x00004C48
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 6, 0, 0, 7, 0), // 0x00004C50
	gsDPSetTileSize(0, 0, 0, 508, 252), // 0x00004C58
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004C60
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004C68
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00004C70
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00004C78
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00004C80
	gsSPVertex(_spot16_room_0_vertices_00003D88, 3, 0), // 0x00004C88
	gsSP1Triangle(0, 1, 2, 0), // 0x00004C90
	gsDPPipeSync(), // 0x00004C98
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00008198), // 0x00004CA0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004CA8
	gsDPLoadSync(), // 0x00004CB0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004CB8
	gsDPPipeSync(), // 0x00004CC0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004CC8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004CD0
	gsDPSetPrimColor(0, 0, 150, 132, 98, 255), // 0x00004CD8
	gsSPVertex(_spot16_room_0_vertices_00003DB8, 4, 0), // 0x00004CE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004CE8
	gsDPPipeSync(), // 0x00004CF0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0001D698), // 0x00004CF8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004D00
	gsDPLoadSync(), // 0x00004D08
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004D10
	gsDPPipeSync(), // 0x00004D18
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004D20
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004D28
	gsSPVertex(_spot16_room_0_vertices_00003DF8, 3, 0), // 0x00004D30
	gsSP1Triangle(0, 1, 2, 0), // 0x00004D38
	gsDPPipeSync(), // 0x00004D40
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00016E98), // 0x00004D48
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 7, 0), // 0x00004D50
	gsDPLoadSync(), // 0x00004D58
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004D60
	gsDPPipeSync(), // 0x00004D68
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 6, 0, 0, 7, 0), // 0x00004D70
	gsDPSetTileSize(0, 0, 0, 508, 252), // 0x00004D78
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00004D80
	gsSPVertex(_spot16_room_0_vertices_00003E28, 6, 0), // 0x00004D88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004D90
	gsSP2Triangles(4, 5, 1, 0, 1, 0, 4, 0), // 0x00004D98
	gsDPPipeSync(), // 0x00004DA0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00008198), // 0x00004DA8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004DB0
	gsDPLoadSync(), // 0x00004DB8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004DC0
	gsDPPipeSync(), // 0x00004DC8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004DD0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004DD8
	gsDPSetPrimColor(0, 0, 150, 132, 98, 255), // 0x00004DE0
	gsSPVertex(_spot16_room_0_vertices_00003E88, 5, 0), // 0x00004DE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004DF0
	gsSP1Triangle(1, 4, 2, 0), // 0x00004DF8
	gsDPPipeSync(), // 0x00004E00
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00016E98), // 0x00004E08
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 7, 0), // 0x00004E10
	gsDPLoadSync(), // 0x00004E18
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004E20
	gsDPPipeSync(), // 0x00004E28
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 6, 0, 0, 7, 0), // 0x00004E30
	gsDPSetTileSize(0, 0, 0, 508, 252), // 0x00004E38
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00004E40
	gsSPVertex(_spot16_room_0_vertices_00003ED8, 11, 0), // 0x00004E48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004E50
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0), // 0x00004E58
	gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0), // 0x00004E60
	gsSP2Triangles(8, 9, 10, 0, 8, 7, 6, 0), // 0x00004E68
	gsDPPipeSync(), // 0x00004E70
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00008198), // 0x00004E78
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004E80
	gsDPLoadSync(), // 0x00004E88
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004E90
	gsDPPipeSync(), // 0x00004E98
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004EA0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004EA8
	gsDPSetPrimColor(0, 0, 150, 132, 98, 255), // 0x00004EB0
	gsSPVertex(_spot16_room_0_vertices_00003F88, 5, 0), // 0x00004EB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004EC0
	gsSP1Triangle(0, 3, 4, 0), // 0x00004EC8
	gsDPPipeSync(), // 0x00004ED0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00004ED8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004EE0
	gsDPLoadSync(), // 0x00004EE8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004EF0
	gsDPPipeSync(), // 0x00004EF8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004F00
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004F08
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00004F10
	gsSPVertex(_spot16_room_0_vertices_00003FD8, 19, 0), // 0x00004F18
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004F20
	gsSP2Triangles(3, 6, 4, 0, 7, 8, 4, 0), // 0x00004F28
	gsSP2Triangles(8, 5, 4, 0, 9, 0, 2, 0), // 0x00004F30
	gsSP2Triangles(10, 11, 12, 0, 9, 10, 0, 0), // 0x00004F38
	gsSP2Triangles(10, 13, 14, 0, 10, 14, 0, 0), // 0x00004F40
	gsSP2Triangles(15, 10, 12, 0, 16, 11, 17, 0), // 0x00004F48
	gsSP2Triangles(11, 10, 17, 0, 18, 17, 10, 0), // 0x00004F50
	gsDPPipeSync(), // 0x00004F58
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00016E98), // 0x00004F60
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 7, 0), // 0x00004F68
	gsDPLoadSync(), // 0x00004F70
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004F78
	gsDPPipeSync(), // 0x00004F80
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 6, 0, 0, 7, 0), // 0x00004F88
	gsDPSetTileSize(0, 0, 0, 508, 252), // 0x00004F90
	gsSPVertex(_spot16_room_0_vertices_00004108, 16, 0), // 0x00004F98
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004FA0
	gsSP2Triangles(3, 5, 6, 0, 0, 7, 5, 0), // 0x00004FA8
	gsSP2Triangles(0, 5, 4, 0, 7, 0, 2, 0), // 0x00004FB0
	gsSP2Triangles(3, 8, 9, 0, 8, 3, 6, 0), // 0x00004FB8
	gsSP2Triangles(10, 3, 9, 0, 10, 11, 3, 0), // 0x00004FC0
	gsSP2Triangles(12, 13, 11, 0, 14, 12, 11, 0), // 0x00004FC8
	gsSP2Triangles(10, 14, 11, 0, 1, 0, 15, 0), // 0x00004FD0
	gsSPVertex(_spot16_room_0_vertices_00004208, 13, 0), // 0x00004FD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004FE0
	gsSP2Triangles(3, 4, 0, 0, 4, 3, 5, 0), // 0x00004FE8
	gsSP2Triangles(6, 7, 1, 0, 6, 8, 7, 0), // 0x00004FF0
	gsSP2Triangles(6, 9, 8, 0, 0, 6, 1, 0), // 0x00004FF8
	gsSP2Triangles(10, 4, 11, 0, 12, 4, 10, 0), // 0x00005000
	gsSP1Triangle(4, 5, 11, 0), // 0x00005008
	gsDPPipeSync(), // 0x00005010
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00005018
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005020
	gsDPLoadSync(), // 0x00005028
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005030
	gsDPPipeSync(), // 0x00005038
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005040
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005048
	gsSPVertex(_spot16_room_0_vertices_000042D8, 3, 0), // 0x00005050
	gsSP1Triangle(0, 1, 2, 0), // 0x00005058
	gsDPPipeSync(), // 0x00005060
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00008198), // 0x00005068
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005070
	gsDPLoadSync(), // 0x00005078
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00005080
	gsDPPipeSync(), // 0x00005088
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005090
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005098
	gsSPVertex(_spot16_room_0_vertices_00004308, 26, 0), // 0x000050A0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x000050A8
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x000050B0
	gsSP2Triangles(8, 10, 11, 0, 12, 13, 14, 0), // 0x000050B8
	gsSP2Triangles(13, 15, 14, 0, 3, 12, 16, 0), // 0x000050C0
	gsSP2Triangles(17, 18, 19, 0, 17, 20, 18, 0), // 0x000050C8
	gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0), // 0x000050D0
	gsSP2Triangles(17, 19, 25, 0, 19, 8, 25, 0), // 0x000050D8
	gsDPPipeSync(), // 0x000050E0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0001D698), // 0x000050E8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000050F0
	gsDPLoadSync(), // 0x000050F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005100
	gsDPPipeSync(), // 0x00005108
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005110
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005118
	gsSPVertex(_spot16_room_0_vertices_000044A8, 8, 0), // 0x00005120
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005128
	gsSP2Triangles(0, 4, 3, 0, 4, 5, 6, 0), // 0x00005130
	gsSP1Triangle(6, 5, 7, 0), // 0x00005138
	gsSPVertex(_spot16_room_0_vertices_00004528, 10, 0), // 0x00005140
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00005148
	gsSP2Triangles(4, 5, 2, 0, 5, 6, 2, 0), // 0x00005150
	gsSP2Triangles(6, 7, 2, 0, 0, 8, 1, 0), // 0x00005158
	gsSP2Triangles(8, 9, 1, 0, 9, 3, 1, 0), // 0x00005160
	gsSP1Triangle(3, 2, 1, 0), // 0x00005168
	gsDPPipeSync(), // 0x00005170
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00005178
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005180
	gsDPLoadSync(), // 0x00005188
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005190
	gsDPPipeSync(), // 0x00005198
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000051A0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000051A8
	gsSPVertex(_spot16_room_0_vertices_000045C8, 8, 0), // 0x000051B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000051B8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000051C0
	gsDPPipeSync(), // 0x000051C8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0001D698), // 0x000051D0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000051D8
	gsDPLoadSync(), // 0x000051E0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000051E8
	gsDPPipeSync(), // 0x000051F0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000051F8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005200
	gsSPVertex(_spot16_room_0_vertices_00004648, 4, 0), // 0x00005208
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005210
	gsDPPipeSync(), // 0x00005218
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00005220
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005228
	gsDPLoadSync(), // 0x00005230
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005238
	gsDPPipeSync(), // 0x00005240
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005248
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005250
	gsSPVertex(_spot16_room_0_vertices_00004688, 8, 0), // 0x00005258
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005260
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005268
	gsSPEndDisplayList(), // 0x00005270
};

Vtx_t _spot16_room_0_vertices_00005278[12] = 
{
	 { -1036, 2209, -275, 0, -382, 194, 253, 118, 239, 255 }, // 0x00005278
	 { -1216, 1843, -648, 0, -968, 1531, 169, 41, 185, 255 }, // 0x00005288
	 { -1431, 1994, 66, 0, 788, 1106, 201, 103, 26, 255 }, // 0x00005298
	 { -1431, 1994, 66, 0, 4673, 2048, 201, 103, 26, 255 }, // 0x000052A8
	 { -1334, 1697, 290, 0, 2048, 2048, 101, 26, 58, 255 }, // 0x000052B8
	 { -1132, 2087, -38, 0, 5059, 4264, 82, 25, 84, 255 }, // 0x000052C8
	 { -996, 2180, -235, 0, 6290, 5519, 56, 86, 61, 255 }, // 0x000052D8
	 { -1431, 1994, 66, 0, 4673, 2048, 201, 103, 26, 255 }, // 0x000052E8
	 { -1036, 2209, -275, 0, 6685, 5337, 253, 118, 239, 255 }, // 0x000052F8
	 { -996, 2180, -235, 0, 6290, 5519, 56, 86, 61, 255 }, // 0x00005308
	 { -794, 2052, -446, 0, 6861, 7618, 57, 104, 244, 255 }, // 0x00005318
	 { -1036, 2209, -275, 0, 6685, 5337, 253, 118, 239, 255 }, // 0x00005328
};

Vtx_t _spot16_room_0_vertices_00005338[11] = 
{
	 { -530, 1798, -1734, 0, -921, 341, 7, 117, 232, 255 }, // 0x00005338
	 { -1337, 1425, -1411, 0, -816, 1631, 191, 95, 31, 255 }, // 0x00005348
	 { -1238, 1502, -990, 0, 443, 1554, 146, 43, 14, 255 }, // 0x00005358
	 { -794, 2052, -446, 0, 1365, 341, 57, 104, 244, 255 }, // 0x00005368
	 { -382, 1940, -1290, 0, -196, -33, 112, 41, 3, 255 }, // 0x00005378
	 { -794, 2052, -446, 0, 0, -1024, 57, 104, 244, 255 }, // 0x00005388
	 { -1238, 1502, -990, 0, 0, 1262, 146, 43, 14, 255 }, // 0x00005398
	 { -1216, 1843, -648, 0, 566, 160, 169, 41, 185, 255 }, // 0x000053A8
	 { -1216, 1843, -648, 0, 298, 1532, 169, 41, 185, 255 }, // 0x000053B8
	 { -1036, 2209, -275, 0, 423, 153, 253, 118, 239, 255 }, // 0x000053C8
	 { -794, 2052, -446, 0, -298, 517, 57, 104, 244, 255 }, // 0x000053D8
};

Vtx_t _spot16_room_0_vertices_000053E8[4] = 
{
	 { -3345, 2383, -4205, 0, 9, 1646, 36, 113, 15, 255 }, // 0x000053E8
	 { -2000, 1983, -3723, 0, 99, 741, 255, 108, 50, 255 }, // 0x000053F8
	 { -2000, 2583, -4523, 0, 583, 974, 214, 85, 72, 255 }, // 0x00005408
	 { -1224, 2583, -3924, 0, 634, 456, 214, 70, 88, 255 }, // 0x00005418
};

Vtx_t _spot16_room_0_vertices_00005428[28] = 
{
	 { -1337, 1425, -1411, 0, -66, 809, 191, 95, 31, 255 }, // 0x00005428
	 { -2000, 1425, -1734, 0, 559, 272, 35, 114, 255, 255 }, // 0x00005438
	 { -1708, 1520, -1284, 0, 56, 383, 73, 80, 50, 255 }, // 0x00005448
	 { -2000, 1614, -733, 0, -238, -158, 66, 96, 29, 255 }, // 0x00005458
	 { -1635, 1583, -2523, 0, 1143, 1044, 25, 112, 33, 255 }, // 0x00005468
	 { -4274, 1593, -134, 0, -2140, 569, 11, 97, 69, 255 }, // 0x00005478
	 { -3682, 2273, -1177, 0, -489, 77, 22, 95, 70, 255 }, // 0x00005488
	 { -5121, 2273, -1073, 0, -1469, -946, 6, 89, 79, 255 }, // 0x00005498
	 { -2000, 1614, -733, 0, -102, 2073, 66, 96, 29, 255 }, // 0x000054A8
	 { -2940, 2273, -1676, 0, 512, 512, 64, 96, 31, 255 }, // 0x000054B8
	 { -1635, 1583, -2523, 0, 2103, 1994, 25, 112, 33, 255 }, // 0x000054C8
	 { -2000, 1425, -1734, 0, 975, 2058, 35, 114, 255, 255 }, // 0x000054D8
	 { -2696, 2273, -2917, 0, 2040, 428, 59, 104, 1, 255 }, // 0x000054E8
	 { -2000, 1983, -3723, 0, 3298, 1064, 255, 108, 50, 255 }, // 0x000054F8
	 { -3345, 2383, -4205, 0, 3105, -428, 36, 113, 15, 255 }, // 0x00005508
	 { -3754, 2953, -1862, 0, 363, -821, 36, 104, 46, 255 }, // 0x00005518
	 { -4726, 2953, -1769, 0, -324, -1508, 4, 110, 47, 255 }, // 0x00005528
	 { -3937, 2953, -3161, 0, 1699, -1227, 41, 112, 246, 255 }, // 0x00005538
	 { -2575, 1714, 159, 0, -1421, 1739, 48, 106, 26, 255 }, // 0x00005548
	 { -3275, 1602, -397, 0, -1244, 1230, 250, 118, 239, 255 }, // 0x00005558
	 { -2000, 1983, -3723, 0, 2577, 1296, 255, 108, 50, 255 }, // 0x00005568
	 { -801, 1983, -3193, 0, 1495, 2292, 212, 98, 52, 255 }, // 0x00005578
	 { -1169, 1596, -2544, 0, 929, 1540, 215, 109, 25, 255 }, // 0x00005588
	 { -725, 1937, -2229, 0, 583, 1916, 40, 111, 19, 255 }, // 0x00005598
	 { -380, 2240, -3132, 0, 1345, 2747, 28, 93, 70, 255 }, // 0x000055A8
	 { -1169, 1596, -2544, 0, 929, 1540, 215, 109, 25, 255 }, // 0x000055B8
	 { -530, 1798, -1734, 0, -20, 1864, 7, 117, 232, 255 }, // 0x000055C8
	 { -1337, 1425, -1411, 0, -66, 809, 191, 95, 31, 255 }, // 0x000055D8
};

Vtx_t _spot16_room_0_vertices_000055E8[6] = 
{
	 { 2000, 1983, -3723, 0, 330, -1587, 11, 109, 48, 255 }, // 0x000055E8
	 { 1299, 2904, -4075, 0, 795, -1160, 40, 104, 42, 255 }, // 0x000055F8
	 { 1342, 2904, -3759, 0, 664, -1121, 47, 106, 29, 255 }, // 0x00005608
	 { 2000, 2583, -4523, 0, 853, -1742, 50, 81, 73, 255 }, // 0x00005618
	 { 2980, 2383, -4702, 0, 891, -2130, 251, 115, 31, 255 }, // 0x00005628
	 { 3200, 2818, -3334, 0, 420, -2492, 214, 112, 3, 255 }, // 0x00005638
};

Vtx_t _spot16_room_0_vertices_00005648[32] = 
{
	 { 3200, 2818, -3334, 0, -1374, 456, 214, 112, 3, 255 }, // 0x00005648
	 { 4000, 2818, -2534, 0, -96, 205, 240, 114, 32, 255 }, // 0x00005658
	 { 4800, 3080, -3243, 0, -803, -223, 243, 118, 10, 255 }, // 0x00005668
	 { 4800, 2818, -2534, 0, 182, -90, 0, 114, 37, 255 }, // 0x00005678
	 { 2000, 1983, -3723, 0, -1957, 1174, 11, 109, 48, 255 }, // 0x00005688
	 { 2000, 1425, -1734, 0, 739, 1483, 224, 114, 17, 255 }, // 0x00005698
	 { 2800, 2138, -1334, 0, 1244, 957, 192, 92, 41, 255 }, // 0x000056A8
	 { 3600, 1425, 266, 0, 3793, 1004, 208, 76, 79, 255 }, // 0x000056B8
	 { 3600, 2138, -534, 0, 2521, 707, 221, 100, 55, 255 }, // 0x000056C8
	 { 4800, 2138, -134, 0, 3439, 286, 241, 103, 59, 255 }, // 0x000056D8
	 { 4990, 1222, 822, 0, 5050, 594, 216, 28, 109, 255 }, // 0x000056E8
	 { 5200, -342, 403, 0, 5199, 1047, 209, 222, 104, 255 }, // 0x000056F8
	 { 2000, 1931, -650, 0, -311, -229, 253, 110, 210, 255 }, // 0x00005708
	 { 2000, 1614, -733, 0, -235, 466, 253, 105, 198, 255 }, // 0x00005718
	 { 192, 1614, -733, 0, 3729, 78, 168, 59, 201, 255 }, // 0x00005728
	 { 187, 1895, -577, 0, 3672, -628, 171, 63, 201, 255 }, // 0x00005738
	 { 2000, 1614, -733, 0, -2286, 3988, 253, 105, 198, 255 }, // 0x00005748
	 { 328, 1455, -1279, 0, -1021, 2480, 193, 95, 220, 255 }, // 0x00005758
	 { 192, 1614, -733, 0, -1360, 2114, 168, 59, 201, 255 }, // 0x00005768
	 { 2000, 1425, -1734, 0, -1489, 4419, 224, 114, 17, 255 }, // 0x00005778
	 { 487, 1425, -1734, 0, -714, 2850, 48, 84, 70, 255 }, // 0x00005788
	 { 2000, 1983, -3723, 0, 529, 5443, 11, 109, 48, 255 }, // 0x00005798
	 { 853, 2177, -3216, 0, 722, 3967, 32, 83, 80, 255 }, // 0x000057A8
	 { 853, 2177, -3216, 0, 722, 3967, 32, 83, 80, 255 }, // 0x000057B8
	 { -21, 2115, -2657, 0, 683, 2877, 170, 82, 17, 255 }, // 0x000057C8
	 { -200, 1877, -1734, 0, -152, 2220, 177, 88, 15, 255 }, // 0x000057D8
	 { -93, 1888, -1326, 0, -562, 2144, 19, 98, 66, 255 }, // 0x000057E8
	 { 28, 2215, -3126, 0, 1146, 3105, 177, 75, 48, 255 }, // 0x000057F8
	 { 2000, 1393, 559, 0, 3615, 1624, 5, 111, 45, 255 }, // 0x00005808
	 { 2000, 1393, 559, 0, 1937, -2261, 5, 111, 45, 255 }, // 0x00005818
	 { 2000, -344, 3443, 0, 1937, -6490, 29, 99, 60, 255 }, // 0x00005828
	 { 5200, 537, 403, 0, 6033, -2447, 29, 99, 60, 255 }, // 0x00005838
};

Vtx_t _spot16_room_0_vertices_00005848[12] = 
{
	 { 2000, 925, 1911, 0, -1460, 3907, 254, 115, 32, 255 }, // 0x00005848
	 { -207, 1046, 1343, 0, -2371, 1310, 174, 79, 36, 255 }, // 0x00005858
	 { -107, 925, 1911, 0, -3025, 1844, 155, 56, 32, 255 }, // 0x00005868
	 { 2000, 1393, 559, 0, 367, 2987, 5, 111, 45, 255 }, // 0x00005878
	 { -350, 1393, 559, 0, -1379, 685, 169, 75, 32, 255 }, // 0x00005888
	 { 2000, 1941, -190, 0, 1528, 2663, 0, 114, 36, 255 }, // 0x00005898
	 { 12, 1941, -190, 0, 51, 716, 174, 84, 233, 255 }, // 0x000058A8
	 { 2000, 1931, -650, 0, 2063, 2241, 253, 110, 210, 255 }, // 0x000058B8
	 { 187, 1895, -577, 0, 612, 508, 171, 63, 201, 255 }, // 0x000058C8
	 { 2980, 2383, -4702, 0, 453, 1553, 251, 115, 31, 255 }, // 0x000058D8
	 { 3200, 2818, -3334, 0, 1483, 724, 214, 112, 3, 255 }, // 0x000058E8
	 { 4800, 3080, -3243, 0, 874, -625, 243, 118, 10, 255 }, // 0x000058F8
};

Vtx_t _spot16_room_0_vertices_00005908[22] = 
{
	 { -343, 2070, -3173, 0, 7468, 1841, 71, 84, 47, 255 }, // 0x00005908
	 { -351, 2668, -3768, 0, 12613, -782, 89, 36, 71, 255 }, // 0x00005918
	 { -380, 2240, -3132, 0, 7473, 620, 28, 93, 70, 255 }, // 0x00005928
	 { -293, 2387, -3904, 0, 12860, 1020, 60, 15, 102, 255 }, // 0x00005938
	 { 246, 2587, -3871, 0, -5969, 638, 151, 4, 57, 255 }, // 0x00005948
	 { 162, 2427, -3983, 0, -6101, 2085, 211, 60, 94, 255 }, // 0x00005958
	 { -17, 2073, -3182, 0, 0, 2048, 174, 84, 21, 255 }, // 0x00005968
	 { 28, 2215, -3126, 0, -105, 968, 177, 75, 48, 255 }, // 0x00005978
	 { -18, 1911, -2700, 0, 3444, 1613, 189, 96, 26, 255 }, // 0x00005988
	 { -200, 1585, -1734, 0, 10454, 695, 182, 94, 247, 255 }, // 0x00005998
	 { -21, 2115, -2657, 0, 3102, 225, 170, 82, 17, 255 }, // 0x000059A8
	 { -200, 1877, -1734, 0, 9585, -1101, 177, 88, 15, 255 }, // 0x000059B8
	 { -129, 1780, -1290, 0, 12638, -1841, 43, 84, 73, 255 }, // 0x000059C8
	 { -200, 1877, -1734, 0, 9585, -1101, 177, 88, 15, 255 }, // 0x000059D8
	 { -200, 1585, -1734, 0, 10454, 695, 182, 94, 247, 255 }, // 0x000059E8
	 { -129, 1780, -1290, 0, 12638, -1841, 43, 84, 73, 255 }, // 0x000059F8
	 { -93, 1888, -1326, 0, 12120, -2476, 19, 98, 66, 255 }, // 0x00005A08
	 { -668, 1746, -2211, 0, 458, 2097, 54, 102, 31, 255 }, // 0x00005A18
	 { -725, 1937, -2229, 0, 821, 776, 40, 111, 19, 255 }, // 0x00005A28
	 { -530, 1798, -1734, 0, -2880, 1395, 7, 117, 232, 255 }, // 0x00005A38
	 { -453, 1585, -1734, 0, -3189, 2912, 93, 69, 225, 255 }, // 0x00005A48
	 { -668, 1746, -2211, 0, 458, 2097, 54, 102, 31, 255 }, // 0x00005A58
};

Vtx_t _spot16_room_0_vertices_00005A68[11] = 
{
	 { -18, 1911, -2700, 0, 2048, 4066, 189, 96, 26, 255 }, // 0x00005A68
	 { -17, 2073, -3182, 0, 2048, 7434, 174, 84, 21, 255 }, // 0x00005A78
	 { -343, 2070, -3173, 0, 4096, 7030, 71, 84, 47, 255 }, // 0x00005A88
	 { -668, 1746, -2211, 0, 4096, -110, 54, 102, 31, 255 }, // 0x00005A98
	 { -200, 1585, -1734, 0, 2048, -2938, 182, 94, 247, 255 }, // 0x00005AA8
	 { -668, 1746, -2211, 0, 4096, -110, 54, 102, 31, 255 }, // 0x00005AB8
	 { -453, 1585, -1734, 0, 4096, -3208, 93, 69, 225, 255 }, // 0x00005AC8
	 { 162, 2427, -3983, 0, 2048, 13496, 211, 60, 94, 255 }, // 0x00005AD8
	 { -4, 2390, -3903, 0, 2723, 12709, 45, 88, 67, 255 }, // 0x00005AE8
	 { -293, 2387, -3904, 0, 4096, 12357, 60, 15, 102, 255 }, // 0x00005AF8
	 { -1, 2424, -3983, 0, 2792, 13300, 54, 64, 85, 255 }, // 0x00005B08
};

Vtx_t _spot16_room_0_vertices_00005B18[8] = 
{
	 { -5121, -1825, 2588, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005B18
	 { 5200, -1825, 2588, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005B28
	 { -5121, 2383, -4702, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005B38
	 { 5200, 2383, -4702, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005B48
	 { -5121, -28, 3625, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005B58
	 { 5200, -28, 3625, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005B68
	 { -5121, 4180, -3664, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005B78
	 { 5200, 4180, -3664, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005B88
};

Gfx _spot16_room_0_dlist_00005B98[] =
{
	gsDPPipeSync(), // 0x00005B98
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005BA0
	gsSPVertex(_spot16_room_0_vertices_00005B18, 8, 0), // 0x00005BA8
	gsSPCullDisplayList(0, 7), // 0x00005BB0
	gsDPPipeSync(), // 0x00005BB8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005BC0
	gsDPPipeSync(), // 0x00005BC8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005BD0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005BD8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00005BE0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005BE8
	gsDPLoadSync(), // 0x00005BF0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005BF8
	gsDPPipeSync(), // 0x00005C00
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005C08
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005C10
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005C18
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00005C20
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00005C28
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00005C30
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00005C38
	gsSPVertex(_spot16_room_0_vertices_00005278, 12, 0), // 0x00005C40
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00005C48
	gsSP2Triangles(6, 7, 5, 0, 3, 6, 8, 0), // 0x00005C50
	gsSP1Triangle(9, 10, 11, 0), // 0x00005C58
	gsDPPipeSync(), // 0x00005C60
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000BD98), // 0x00005C68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005C70
	gsDPLoadSync(), // 0x00005C78
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005C80
	gsDPPipeSync(), // 0x00005C88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005C90
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005C98
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005CA0
	gsDPSetPrimColor(0, 0, 180, 171, 159, 255), // 0x00005CA8
	gsSPVertex(_spot16_room_0_vertices_00005338, 11, 0), // 0x00005CB0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0), // 0x00005CB8
	gsSP2Triangles(3, 0, 2, 0, 5, 6, 7, 0), // 0x00005CC0
	gsSP1Triangle(8, 9, 10, 0), // 0x00005CC8
	gsDPPipeSync(), // 0x00005CD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0001DE98), // 0x00005CD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005CE0
	gsDPLoadSync(), // 0x00005CE8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005CF0
	gsDPPipeSync(), // 0x00005CF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005D00
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005D08
	gsDPSetPrimColor(0, 0, 242, 227, 180, 255), // 0x00005D10
	gsSPVertex(_spot16_room_0_vertices_000053E8, 4, 0), // 0x00005D18
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00005D20
	gsDPPipeSync(), // 0x00005D28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000BD98), // 0x00005D30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005D38
	gsDPLoadSync(), // 0x00005D40
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005D48
	gsDPPipeSync(), // 0x00005D50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005D58
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005D60
	gsDPSetPrimColor(0, 0, 180, 171, 159, 255), // 0x00005D68
	gsSPVertex(_spot16_room_0_vertices_00005428, 28, 0), // 0x00005D70
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00005D78
	gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0), // 0x00005D80
	gsSP2Triangles(8, 6, 5, 0, 9, 6, 8, 0), // 0x00005D88
	gsSP2Triangles(10, 9, 11, 0, 9, 8, 11, 0), // 0x00005D90
	gsSP2Triangles(10, 12, 9, 0, 13, 12, 10, 0), // 0x00005D98
	gsSP2Triangles(14, 12, 13, 0, 6, 15, 7, 0), // 0x00005DA0
	gsSP2Triangles(15, 16, 7, 0, 9, 15, 6, 0), // 0x00005DA8
	gsSP2Triangles(12, 15, 9, 0, 12, 17, 15, 0), // 0x00005DB0
	gsSP2Triangles(14, 17, 12, 0, 16, 15, 17, 0), // 0x00005DB8
	gsSP2Triangles(18, 8, 19, 0, 20, 4, 21, 0), // 0x00005DC0
	gsSP2Triangles(22, 21, 4, 0, 23, 24, 21, 0), // 0x00005DC8
	gsSP2Triangles(21, 25, 23, 0, 26, 23, 0, 0), // 0x00005DD0
	gsSP2Triangles(23, 22, 27, 0, 25, 4, 0, 0), // 0x00005DD8
	gsDPPipeSync(), // 0x00005DE0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0001DE98), // 0x00005DE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005DF0
	gsDPLoadSync(), // 0x00005DF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005E00
	gsDPPipeSync(), // 0x00005E08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005E10
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005E18
	gsDPSetPrimColor(0, 0, 242, 227, 180, 255), // 0x00005E20
	gsSPVertex(_spot16_room_0_vertices_000055E8, 6, 0), // 0x00005E28
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005E30
	gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0), // 0x00005E38
	gsDPPipeSync(), // 0x00005E40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000BD98), // 0x00005E48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005E50
	gsDPLoadSync(), // 0x00005E58
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005E60
	gsDPPipeSync(), // 0x00005E68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005E70
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005E78
	gsDPSetPrimColor(0, 0, 180, 171, 159, 255), // 0x00005E80
	gsSPVertex(_spot16_room_0_vertices_00005648, 32, 0), // 0x00005E88
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00005E90
	gsSP2Triangles(4, 5, 6, 0, 6, 7, 8, 0), // 0x00005E98
	gsSP2Triangles(6, 5, 7, 0, 8, 7, 9, 0), // 0x00005EA0
	gsSP2Triangles(7, 10, 9, 0, 6, 0, 4, 0), // 0x00005EA8
	gsSP2Triangles(6, 1, 0, 0, 8, 1, 6, 0), // 0x00005EB0
	gsSP2Triangles(9, 1, 8, 0, 9, 3, 1, 0), // 0x00005EB8
	gsSP2Triangles(11, 10, 7, 0, 12, 13, 14, 0), // 0x00005EC0
	gsSP2Triangles(12, 14, 15, 0, 16, 17, 18, 0), // 0x00005EC8
	gsSP2Triangles(16, 19, 17, 0, 19, 20, 17, 0), // 0x00005ED0
	gsSP2Triangles(19, 21, 20, 0, 21, 22, 20, 0), // 0x00005ED8
	gsSP2Triangles(23, 24, 20, 0, 20, 24, 25, 0), // 0x00005EE0
	gsSP2Triangles(20, 25, 26, 0, 23, 27, 24, 0), // 0x00005EE8
	gsSP2Triangles(28, 7, 5, 0, 29, 30, 31, 0), // 0x00005EF0
	gsSPVertex(_spot16_room_0_vertices_00005848, 12, 0), // 0x00005EF8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005F00
	gsSP2Triangles(3, 4, 1, 0, 3, 5, 6, 0), // 0x00005F08
	gsSP2Triangles(3, 6, 4, 0, 5, 7, 6, 0), // 0x00005F10
	gsSP2Triangles(7, 8, 6, 0, 9, 10, 11, 0), // 0x00005F18
	gsDPPipeSync(), // 0x00005F20
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00005F28
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005F30
	gsDPLoadSync(), // 0x00005F38
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005F40
	gsDPPipeSync(), // 0x00005F48
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005F50
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005F58
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00005F60
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00005F68
	gsSPVertex(_spot16_room_0_vertices_00005908, 22, 0), // 0x00005F70
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005F78
	gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0), // 0x00005F80
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x00005F88
	gsSP2Triangles(6, 10, 7, 0, 6, 8, 10, 0), // 0x00005F90
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 13, 0), // 0x00005F98
	gsSP2Triangles(17, 0, 18, 0, 0, 2, 18, 0), // 0x00005FA0
	gsSP2Triangles(19, 20, 18, 0, 20, 21, 18, 0), // 0x00005FA8
	gsDPPipeSync(), // 0x00005FB0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00008198), // 0x00005FB8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005FC0
	gsDPLoadSync(), // 0x00005FC8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00005FD0
	gsDPPipeSync(), // 0x00005FD8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005FE0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005FE8
	gsSPVertex(_spot16_room_0_vertices_00005A68, 11, 0), // 0x00005FF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005FF8
	gsSP2Triangles(4, 0, 3, 0, 4, 5, 6, 0), // 0x00006000
	gsSP2Triangles(7, 8, 1, 0, 2, 1, 8, 0), // 0x00006008
	gsSP2Triangles(9, 2, 8, 0, 7, 10, 8, 0), // 0x00006010
	gsSPEndDisplayList(), // 0x00006018
};

Vtx_t _spot16_room_0_vertices_00006020[4] = 
{
	 { -4283, -342, 3592, 0, 2816, 2816, 0, 120, 0, 255 }, // 0x00006020
	 { -6130, -342, 6924, 0, 3840, -256, 0, 120, 0, 255 }, // 0x00006030
	 { -2034, -342, 6924, 0, -1403, -256, 0, 120, 0, 255 }, // 0x00006040
	 { -1347, -342, 4172, 0, -2703, 3630, 0, 120, 0, 255 }, // 0x00006050
};

Vtx_t _spot16_room_0_vertices_00006060[8] = 
{
	 { -5504, -342, 3376, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006060
	 { -1337, -342, 4111, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006070
	 { -5504, -342, 3376, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006080
	 { -1337, -342, 4111, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006090
	 { -6130, -342, 6924, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060A0
	 { -1962, -342, 7659, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060B0
	 { -6130, -342, 6924, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060C0
	 { -1962, -342, 7659, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060D0
};

Gfx _spot16_room_0_dlist_000060E0[] =
{
	gsDPPipeSync(), // 0x000060E0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000060E8
	gsSPVertex(_spot16_room_0_vertices_00006060, 8, 0), // 0x000060F0
	gsSPCullDisplayList(0, 7), // 0x000060F8
	gsDPPipeSync(), // 0x00006100
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006108
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006110
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006118
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00017E98), // 0x00006120
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 3, 0, 5, 3), // 0x00006128
	gsDPLoadSync(), // 0x00006130
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006138
	gsDPPipeSync(), // 0x00006140
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 3, 0, 5, 3), // 0x00006148
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006150
	gsDPTileSync(), // 0x00006158
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 1, 0, 0, 5, 0, 0, 5, 0), // 0x00006160
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00006168
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006170
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006178
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00006180
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00006188
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006190
	gsSPVertex(_spot16_room_0_vertices_00006020, 4, 0), // 0x00006198
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000061A0
	gsSPEndDisplayList(), // 0x000061A8
};

Vtx_t _spot16_room_0_vertices_000061B0[70] = 
{
	 { 6501, 404, 6155, 0, 2048, 0, 244, 51, 148, 255 }, // 0x000061B0
	 { 7183, -955, 5517, 0, -63, 2111, 245, 46, 146, 255 }, // 0x000061C0
	 { 4388, 176, 6280, 0, 5599, 2131, 251, 53, 149, 255 }, // 0x000061D0
	 { -3956, -342, 5012, 0, 256, 2048, 112, 34, 26, 255 }, // 0x000061E0
	 { -4172, 627, 4688, 0, 1068, 937, 100, 58, 32, 255 }, // 0x000061F0
	 { -4356, -342, 5812, 0, -2048, 2048, 90, 51, 59, 255 }, // 0x00006200
	 { -4172, 627, 4688, 0, 1068, 937, 100, 58, 32, 255 }, // 0x00006210
	 { -4724, 627, 5337, 0, -768, 512, 74, 70, 63, 255 }, // 0x00006220
	 { -4656, 1124, 4596, 0, 1280, 0, 77, 82, 39, 255 }, // 0x00006230
	 { -4724, 627, 5337, 0, -768, 512, 74, 70, 63, 255 }, // 0x00006240
	 { -3956, -342, 3812, 0, 3328, 2048, 111, 37, 23, 255 }, // 0x00006250
	 { -3956, -342, 5012, 0, 256, 2048, 112, 34, 26, 255 }, // 0x00006260
	 { -3956, -342, 3812, 0, 3328, 2048, 111, 37, 23, 255 }, // 0x00006270
	 { -4437, 1124, 3615, 0, 3840, 0, 104, 56, 20, 255 }, // 0x00006280
	 { -4172, 627, 4688, 0, 1068, 937, 100, 58, 32, 255 }, // 0x00006290
	 { -3556, -342, 3012, 0, 5632, 2048, 115, 33, 249, 255 }, // 0x000062A0
	 { -4079, 1250, 2798, 0, 6144, 0, 113, 38, 12, 255 }, // 0x000062B0
	 { -3956, -342, 3812, 0, 3328, 2048, 111, 37, 23, 255 }, // 0x000062C0
	 { -4079, 1250, 2798, 0, 6144, 0, 113, 38, 12, 255 }, // 0x000062D0
	 { -4085, 565, 2008, 0, 8222, 1109, 107, 25, 208, 255 }, // 0x000062E0
	 { -4249, 1140, 1994, 0, 8192, 0, 105, 29, 207, 255 }, // 0x000062F0
	 { -3556, -342, 3012, 0, 5632, 2048, 115, 33, 249, 255 }, // 0x00006300
	 { -3928, -149, 2072, 0, 8137, 2048, 101, 16, 195, 255 }, // 0x00006310
	 { -3928, -149, 2072, 0, 8137, 2048, 101, 16, 195, 255 }, // 0x00006320
	 { -4736, 638, 1130, 0, 11008, 0, 95, 17, 186, 255 }, // 0x00006330
	 { -4085, 565, 2008, 0, 8222, 1109, 107, 25, 208, 255 }, // 0x00006340
	 { -3928, -149, 2072, 0, 8137, 2048, 101, 16, 195, 255 }, // 0x00006350
	 { -4628, -75, 1167, 0, 11008, 2048, 95, 11, 184, 255 }, // 0x00006360
	 { -4249, 1140, 1994, 0, 8192, 0, 105, 29, 207, 255 }, // 0x00006370
	 { -4085, 565, 2008, 0, 8222, 1109, 107, 25, 208, 255 }, // 0x00006380
	 { -1885, -342, 4232, 0, 7987, 2048, 202, 58, 166, 255 }, // 0x00006390
	 { -1293, 1124, 4824, 0, 7754, 0, 191, 65, 180, 255 }, // 0x000063A0
	 { -678, 1124, 4424, 0, 5461, 0, 218, 65, 163, 255 }, // 0x000063B0
	 { -643, -123, 3575, 0, 5530, 2048, 213, 62, 163, 255 }, // 0x000063C0
	 { -101, -134, 3404, 0, 3482, 2048, 246, 70, 160, 255 }, // 0x000063D0
	 { 138, 1124, 4353, 0, 3406, 0, 255, 68, 158, 255 }, // 0x000063E0
	 { 4966, 1338, 701, 0, -8602, 0, 140, 6, 228, 255 }, // 0x000063F0
	 { 4910, 258, 698, 0, -8192, 2048, 153, 31, 203, 255 }, // 0x00006400
	 { 4706, 1423, 1789, 0, -6554, 0, 161, 40, 196, 255 }, // 0x00006410
	 { -2484, 517, 6049, 0, 11674, 819, 163, 74, 245, 255 }, // 0x00006420
	 { -1892, 973, 5839, 0, 10530, 0, 203, 89, 197, 255 }, // 0x00006430
	 { -2426, 517, 5562, 0, 10650, 819, 168, 75, 227, 255 }, // 0x00006440
	 { -2880, -342, 5911, 0, 12493, 2048, 149, 51, 243, 255 }, // 0x00006450
	 { -2776, -342, 5041, 0, 10650, 2048, 159, 60, 222, 255 }, // 0x00006460
	 { -1585, 1124, 5429, 0, 9011, 0, 181, 83, 215, 255 }, // 0x00006470
	 { -2434, -342, 4507, 0, 9216, 2048, 184, 71, 192, 255 }, // 0x00006480
	 { -2434, -342, 4507, 0, 9216, 2048, 184, 71, 192, 255 }, // 0x00006490
	 { -1885, -342, 4232, 0, 7987, 2048, 202, 58, 166, 255 }, // 0x000064A0
	 { 2234, 1099, 4267, 0, 11, 0, 212, 60, 163, 255 }, // 0x000064B0
	 { 2000, -342, 3443, 0, 205, 2048, 215, 64, 164, 255 }, // 0x000064C0
	 { 2000, -342, 3443, 0, 205, 2048, 215, 64, 164, 255 }, // 0x000064D0
	 { 4706, 1423, 1789, 0, -6554, 0, 161, 40, 196, 255 }, // 0x000064E0
	 { 2000, -342, 3443, 0, 205, 2048, 215, 64, 164, 255 }, // 0x000064F0
	 { 2000, -342, 3443, 0, 205, 2048, 215, 64, 164, 255 }, // 0x00006500
	 { -2352, -126, 5511, 0, 13568, 1024, 13, 42, 145, 255 }, // 0x00006510
	 { -1892, 973, 5839, 0, 12544, 0, 203, 89, 197, 255 }, // 0x00006520
	 { 4320, 1176, 6815, 0, 4096, 0, 5, 47, 146, 255 }, // 0x00006530
	 { 4388, 176, 6280, 0, 4096, 1024, 251, 53, 149, 255 }, // 0x00006540
	 { -4079, 1250, 2798, 0, 6144, 0, 113, 38, 12, 255 }, // 0x00006550
	 { -4437, 1124, 3615, 0, 3840, 0, 104, 56, 20, 255 }, // 0x00006560
	 { -3956, -342, 3812, 0, 3328, 2048, 111, 37, 23, 255 }, // 0x00006570
	 { -5198, 1144, 3889, 0, -2560, 0, 119, 4, 246, 255 }, // 0x00006580
	 { -5296, 94, 5154, 0, -5621, 1746, 119, 247, 2, 255 }, // 0x00006590
	 { -5254, 186, 2834, 0, 0, 1024, 117, 4, 233, 255 }, // 0x000065A0
	 { -5417, 1367, 2854, 0, 0, 0, 116, 16, 231, 255 }, // 0x000065B0
	 { -5859, 1280, 1063, 0, 4352, 0, 114, 5, 220, 255 }, // 0x000065C0
	 { -5884, -250, 1229, 0, 4352, 1024, 112, 250, 214, 255 }, // 0x000065D0
	 { 6501, 404, 6155, 0, 246, 47, 244, 51, 148, 255 }, // 0x000065E0
	 { 4388, 176, 6280, 0, 7463, 2048, 251, 53, 149, 255 }, // 0x000065F0
	 { 4320, 1176, 6815, 0, 7508, 18, 5, 47, 146, 255 }, // 0x00006600
};

Vtx_t _spot16_room_0_vertices_00006610[4] = 
{
	 { -3636, -342, 6924, 0, 2504, 1024, 0, 0, 136, 255 }, // 0x00006610
	 { -6036, -342, 6924, 0, 6600, 1024, 0, 0, 136, 255 }, // 0x00006620
	 { -6036, 458, 6924, 0, 6600, 0, 0, 0, 136, 255 }, // 0x00006630
	 { -3915, 206, 6924, 0, 3201, 0, 0, 0, 136, 255 }, // 0x00006640
};

Vtx_t _spot16_room_0_vertices_00006650[8] = 
{
	 { -6036, -955, 698, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006650
	 { 7183, -955, 698, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006660
	 { -6036, 1423, 698, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006670
	 { 7183, 1423, 698, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006680
	 { -6036, -955, 6924, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006690
	 { 7183, -955, 6924, 0, 0, 0, 0, 0, 0, 0 }, // 0x000066A0
	 { -6036, 1423, 6924, 0, 0, 0, 0, 0, 0, 0 }, // 0x000066B0
	 { 7183, 1423, 6924, 0, 0, 0, 0, 0, 0, 0 }, // 0x000066C0
};

Gfx _spot16_room_0_dlist_000066D0[] =
{
	gsDPPipeSync(), // 0x000066D0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000066D8
	gsSPVertex(_spot16_room_0_vertices_00006650, 8, 0), // 0x000066E0
	gsSPCullDisplayList(0, 7), // 0x000066E8
	gsDPPipeSync(), // 0x000066F0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000066F8
	gsDPPipeSync(), // 0x00006700
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00006708
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006710
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000D798), // 0x00006718
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 6, 0), // 0x00006720
	gsDPLoadSync(), // 0x00006728
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006730
	gsDPPipeSync(), // 0x00006738
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 0, 6, 0), // 0x00006740
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00006748
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00008170), // 0x00006750
	gsDPTileSync(), // 0x00006758
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00006760
	gsDPLoadSync(), // 0x00006768
	gsDPLoadTLUTCmd(7, 15), // 0x00006770
	gsDPPipeSync(), // 0x00006778
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006780
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00006788
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00006790
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00006798
	gsDPSetPrimColor(0, 0, 157, 167, 187, 255), // 0x000067A0
	gsSPVertex(_spot16_room_0_vertices_000061B0, 32, 0), // 0x000067A8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000067B0
	gsSP2Triangles(6, 7, 5, 0, 4, 8, 9, 0), // 0x000067B8
	gsSP2Triangles(10, 4, 11, 0, 12, 13, 14, 0), // 0x000067C0
	gsSP2Triangles(13, 8, 4, 0, 15, 16, 17, 0), // 0x000067C8
	gsSP2Triangles(18, 19, 20, 0, 16, 21, 19, 0), // 0x000067D0
	gsSP2Triangles(21, 22, 19, 0, 23, 24, 25, 0), // 0x000067D8
	gsSP2Triangles(26, 27, 24, 0, 24, 28, 29, 0), // 0x000067E0
	gsSPVertex(_spot16_room_0_vertices_00006390, 32, 0), // 0x000067E8
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x000067F0
	gsSP2Triangles(4, 3, 2, 0, 4, 2, 5, 0), // 0x000067F8
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00006800
	gsSP2Triangles(12, 9, 11, 0, 12, 11, 13, 0), // 0x00006808
	gsSP2Triangles(11, 10, 14, 0, 11, 14, 15, 0), // 0x00006810
	gsSP2Triangles(13, 11, 15, 0, 16, 14, 1, 0), // 0x00006818
	gsSP2Triangles(16, 1, 17, 0, 5, 18, 19, 0), // 0x00006820
	gsSP2Triangles(4, 5, 20, 0, 21, 7, 22, 0), // 0x00006828
	gsSP2Triangles(21, 23, 18, 0, 24, 25, 26, 0), // 0x00006830
	gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0), // 0x00006838
	gsSPVertex(_spot16_room_0_vertices_00006580, 9, 0), // 0x00006840
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00006848
	gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0), // 0x00006850
	gsSP1Triangle(6, 7, 8, 0), // 0x00006858
	gsDPPipeSync(), // 0x00006860
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006868
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015E98), // 0x00006870
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 7, 0), // 0x00006878
	gsDPLoadSync(), // 0x00006880
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00006888
	gsDPPipeSync(), // 0x00006890
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 16, 0, 0, 0, 2, 5, 0, 0, 7, 0), // 0x00006898
	gsDPSetTileSize(0, 0, 0, 508, 124), // 0x000068A0
	gsSPVertex(_spot16_room_0_vertices_00006610, 4, 0), // 0x000068A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000068B0
	gsSPEndDisplayList(), // 0x000068B8
};

Vtx_t _spot16_room_0_vertices_000068C0[8] = 
{
	 { -673, 1561, -1280, 0, 8192, 0, 66, 164, 39, 255 }, // 0x000068C0
	 { -786, 1331, -1280, 0, 8192, 2048, 109, 47, 14, 255 }, // 0x000068D0
	 { -608, 1233, -1824, 0, 0, 2048, 102, 23, 57, 255 }, // 0x000068E0
	 { -520, 1402, -1899, 0, 0, 0, 94, 206, 54, 255 }, // 0x000068F0
	 { -300, 1402, -1899, 0, 0, 0, 165, 204, 58, 255 }, // 0x00006900
	 { -217, 1256, -1827, 0, 0, 2048, 154, 14, 60, 255 }, // 0x00006910
	 { 4, 1329, -1286, 0, 8192, 2048, 29, 113, 25, 255 }, // 0x00006920
	 { -134, 1672, -1276, 0, 8192, 0, 32, 174, 81, 255 }, // 0x00006930
};

Vtx_t _spot16_room_0_vertices_00006940[7] = 
{
	 { -1071, 1562, -667, 0, -36, 17, 255, 205, 108, 255 }, // 0x00006940
	 { -824, 1557, -821, 0, 3721, 1074, 88, 236, 79, 255 }, // 0x00006950
	 { -768, 1704, -774, 0, 3710, 55, 66, 177, 61, 255 }, // 0x00006960
	 { -1119, 1412, -691, 0, -15, 2055, 232, 112, 36, 255 }, // 0x00006970
	 { -801, 1410, -788, 0, 3731, 2093, 40, 112, 12, 255 }, // 0x00006980
	 { -786, 1331, -1280, 0, 8126, 2138, 109, 47, 14, 255 }, // 0x00006990
	 { -673, 1561, -1280, 0, 8105, 99, 66, 164, 39, 255 }, // 0x000069A0
};

Vtx_t _spot16_room_0_vertices_000069B0[15] = 
{
	 { -1071, 1562, -667, 0, 2048, 2048, 255, 205, 108, 255 }, // 0x000069B0
	 { -768, 1704, -774, 0, 2048, -2558, 66, 177, 61, 255 }, // 0x000069C0
	 { -1147, 1687, -572, 0, 1024, 2048, 222, 141, 253, 255 }, // 0x000069D0
	 { -688, 1771, -577, 0, 1084, -2558, 15, 137, 3, 255 }, // 0x000069E0
	 { -721, 1732, -385, 0, 0, -1286, 3, 176, 167, 255 }, // 0x000069F0
	 { -1187, 1587, -451, 0, 0, 2048, 244, 195, 154, 255 }, // 0x00006A00
	 { -673, 1561, -1280, 0, 2048, -9785, 66, 164, 39, 255 }, // 0x00006A10
	 { -420, 1672, -1267, 0, 1024, -9785, 28, 146, 37, 255 }, // 0x00006A20
	 { -419, 1731, -1088, 0, 683, -8192, 1, 138, 18, 255 }, // 0x00006A30
	 { -134, 1672, -1276, 0, 0, -9785, 32, 174, 81, 255 }, // 0x00006A40
	 { -376, 1719, -545, 0, 0, -3247, 57, 152, 12, 255 }, // 0x00006A50
	 { -520, 1402, -1899, 0, 2048, -15701, 94, 206, 54, 255 }, // 0x00006A60
	 { -414, 1442, -1906, 0, 1024, -15701, 10, 138, 19, 255 }, // 0x00006A70
	 { -300, 1402, -1899, 0, 0, -15701, 165, 204, 58, 255 }, // 0x00006A80
	 { -508, 1724, -458, 0, 0, -2558, 237, 170, 176, 255 }, // 0x00006A90
};

Vtx_t _spot16_room_0_vertices_00006AA0[10] = 
{
	 { -748, 1520, -314, 0, 2475, 2048, 241, 63, 156, 255 }, // 0x00006AA0
	 { -1250, 1419, -411, 0, 9216, 2048, 204, 68, 173, 255 }, // 0x00006AB0
	 { -1187, 1587, -451, 0, 8192, 0, 244, 195, 154, 255 }, // 0x00006AC0
	 { -721, 1732, -385, 0, 1810, 0, 3, 176, 167, 255 }, // 0x00006AD0
	 { -561, 1503, -386, 0, -205, 2048, 242, 92, 182, 255 }, // 0x00006AE0
	 { -508, 1724, -458, 0, -1024, 0, 237, 170, 176, 255 }, // 0x00006AF0
	 { -402, 1500, -394, 0, -2740, 2048, 62, 88, 204, 255 }, // 0x00006B00
	 { -402, 1699, -444, 0, -3086, 644, 117, 244, 23, 255 }, // 0x00006B10
	 { -402, 1500, -394, 0, -2754, 1932, 62, 88, 204, 255 }, // 0x00006B20
	 { -376, 1719, -545, 0, -3252, 0, 57, 152, 12, 255 }, // 0x00006B30
};

Vtx_t _spot16_room_0_vertices_00006B40[31] = 
{
	 { -1482, 1449, -85, 0, 1690, -1077, 147, 50, 1, 255 }, // 0x00006B40
	 { -1365, 1450, -304, 0, 177, 15, 204, 65, 170, 255 }, // 0x00006B50
	 { -1484, 1449, -275, 0, 983, 301, 184, 88, 219, 255 }, // 0x00006B60
	 { -1576, 1449, -188, 0, 1792, -76, 181, 83, 43, 255 }, // 0x00006B70
	 { -1594, 1449, -246, 0, 1702, 405, 163, 56, 206, 255 }, // 0x00006B80
	 { -1460, 1449, -410, 0, 301, 1179, 234, 90, 180, 255 }, // 0x00006B90
	 { 4, 1329, -1286, 0, 767, -2125, 29, 113, 25, 255 }, // 0x00006BA0
	 { -300, 1182, -1899, 0, 536, 2069, 178, 81, 39, 255 }, // 0x00006BB0
	 { -520, 1182, -1899, 0, 2099, 2830, 71, 90, 33, 255 }, // 0x00006BC0
	 { -786, 1331, -1280, 0, 5101, -15, 109, 47, 14, 255 }, // 0x00006BD0
	 { -217, 1256, -1827, 0, 15, 1815, 154, 14, 60, 255 }, // 0x00006BE0
	 { -608, 1233, -1824, 0, 2446, 2999, 102, 23, 57, 255 }, // 0x00006BF0
	 { -786, 1331, -1280, 0, 5101, -15, 109, 47, 14, 255 }, // 0x00006C00
	 { -801, 1410, -788, 0, 6536, -2703, 40, 112, 12, 255 }, // 0x00006C10
	 { 4, 1329, -1286, 0, 767, -2125, 29, 113, 25, 255 }, // 0x00006C20
	 { -402, 1500, -394, 0, 5448, -5990, 62, 88, 204, 255 }, // 0x00006C30
	 { -123, 1500, -405, 0, 3897, -6687, 77, 88, 24, 255 }, // 0x00006C40
	 { -561, 1503, -386, 0, 6339, -5604, 242, 92, 182, 255 }, // 0x00006C50
	 { -561, 1503, -386, 0, 6339, -5604, 242, 92, 182, 255 }, // 0x00006C60
	 { -801, 1410, -788, 0, 6536, -2703, 40, 112, 12, 255 }, // 0x00006C70
	 { -1119, 1412, -691, 0, 8537, -2358, 232, 112, 36, 255 }, // 0x00006C80
	 { -748, 1520, -314, 0, 7564, -5503, 241, 63, 156, 255 }, // 0x00006C90
	 { -1119, 1412, -691, 0, 8537, -2358, 232, 112, 36, 255 }, // 0x00006CA0
	 { -1250, 1419, -411, 0, 10039, -3504, 204, 68, 173, 255 }, // 0x00006CB0
	 { -1439, 1407, -692, 0, 10264, -1447, 150, 55, 0, 255 }, // 0x00006CC0
	 { -1460, 1409, -410, 0, 11173, -2915, 170, 77, 225, 255 }, // 0x00006CD0
	 { -1268, 1432, -1030, 0, 8378, -99, 145, 43, 11, 255 }, // 0x00006CE0
	 { -561, 1503, -386, 0, 6339, -5604, 242, 92, 182, 255 }, // 0x00006CF0
	 { -1250, 1419, -411, 0, 7989, -2492, 204, 68, 173, 255 }, // 0x00006D00
	 { -1460, 1409, -410, 0, 9106, -1882, 170, 77, 225, 255 }, // 0x00006D10
	 { -1365, 1410, -304, 0, 9015, -2773, 1, 71, 160, 255 }, // 0x00006D20
};

Vtx_t _spot16_room_0_vertices_00006D30[4] = 
{
	 { -286, 1386, -1106, 0, 2678, -79, 69, 69, 69, 255 }, // 0x00006D30
	 { -286, 1386, -1306, 0, 1103, -2442, 69, 69, 187, 255 }, // 0x00006D40
	 { -486, 1386, -1306, 0, -1260, -866, 187, 69, 187, 255 }, // 0x00006D50
	 { -486, 1386, -1106, 0, 315, 1497, 187, 69, 69, 255 }, // 0x00006D60
};

Vtx_t _spot16_room_0_vertices_00006D70[13] = 
{
	 { -486, 1386, -1306, 0, 205, 808, 187, 69, 187, 255 }, // 0x00006D70
	 { -486, 1325, -1306, 0, 205, 1302, 171, 255, 172, 255 }, // 0x00006D80
	 { -486, 1359, -1106, 0, 2251, 1040, 172, 0, 84, 255 }, // 0x00006D90
	 { -486, 1386, -1106, 0, 2253, 819, 187, 69, 69, 255 }, // 0x00006DA0
	 { -486, 1386, -1106, 0, 2253, 819, 187, 69, 69, 255 }, // 0x00006DB0
	 { -486, 1359, -1106, 0, 2251, 1040, 172, 0, 84, 255 }, // 0x00006DC0
	 { -286, 1358, -1106, 0, 4299, 1053, 84, 0, 84, 255 }, // 0x00006DD0
	 { -286, 1386, -1106, 0, 4301, 830, 69, 69, 69, 255 }, // 0x00006DE0
	 { -286, 1386, -1306, 0, -1843, 808, 69, 69, 187, 255 }, // 0x00006DF0
	 { -286, 1325, -1306, 0, -1843, 1303, 84, 255, 171, 255 }, // 0x00006E00
	 { -486, 1386, -1306, 0, 205, 808, 187, 69, 187, 255 }, // 0x00006E10
	 { -286, 1386, -1106, 0, -3891, 818, 69, 69, 69, 255 }, // 0x00006E20
	 { -286, 1358, -1106, 0, -3889, 1041, 84, 0, 84, 255 }, // 0x00006E30
};

Vtx_t _spot16_room_0_vertices_00006E40[8] = 
{
	 { -300, 1348, -1899, 0, 2070, 2048, 0, 0, 120, 255 }, // 0x00006E40
	 { -300, 1402, -1899, 0, 2070, 0, 165, 204, 58, 255 }, // 0x00006E50
	 { -388, 1378, -1899, 0, 193, 0, 0, 0, 120, 255 }, // 0x00006E60
	 { -379, 1324, -1899, 0, 193, 2048, 0, 0, 120, 255 }, // 0x00006E70
	 { -432, 1378, -1899, 0, -1215, 0, 0, 0, 120, 255 }, // 0x00006E80
	 { -442, 1324, -1899, 0, -1215, 2048, 0, 0, 120, 255 }, // 0x00006E90
	 { -520, 1402, -1899, 0, -3092, 0, 94, 206, 54, 255 }, // 0x00006EA0
	 { -520, 1348, -1899, 0, -3092, 2048, 0, 0, 120, 255 }, // 0x00006EB0
};

Vtx_t _spot16_room_0_vertices_00006EC0[8] = 
{
	 { -518, 1370, -1939, 0, 512, 0, 119, 0, 10, 255 }, // 0x00006EC0
	 { -518, 1202, -1939, 0, 512, 4096, 119, 0, 10, 255 }, // 0x00006ED0
	 { -509, 1216, -2049, 0, -2048, 3768, 119, 0, 10, 255 }, // 0x00006EE0
	 { -509, 1370, -2049, 0, -2048, 0, 119, 0, 10, 255 }, // 0x00006EF0
	 { -312, 1370, -2049, 0, -2048, 0, 137, 0, 10, 255 }, // 0x00006F00
	 { -312, 1216, -2049, 0, -2048, 3768, 137, 0, 10, 255 }, // 0x00006F10
	 { -302, 1202, -1939, 0, 512, 4096, 137, 0, 10, 255 }, // 0x00006F20
	 { -302, 1370, -1939, 0, 512, 0, 137, 0, 10, 255 }, // 0x00006F30
};

Vtx_t _spot16_room_0_vertices_00006F40[17] = 
{
	 { -520, 1402, -1899, 0, 205, 0, 94, 206, 54, 255 }, // 0x00006F40
	 { -608, 1233, -1824, 0, -386, 867, 102, 23, 57, 255 }, // 0x00006F50
	 { -520, 1182, -1899, 0, 205, 1126, 71, 90, 33, 255 }, // 0x00006F60
	 { -520, 1402, -1899, 0, 205, 0, 94, 206, 54, 255 }, // 0x00006F70
	 { -520, 1182, -1899, 0, 205, 1126, 71, 90, 33, 255 }, // 0x00006F80
	 { -520, 1202, -1939, 0, 410, 1024, 86, 81, 19, 255 }, // 0x00006F90
	 { -520, 1202, -2339, 0, 2458, 1024, 84, 85, 5, 255 }, // 0x00006FA0
	 { -520, 1402, -2339, 0, 2458, 0, 77, 169, 28, 255 }, // 0x00006FB0
	 { -410, 1102, -3136, 0, 6758, 819, 0, 13, 119, 255 }, // 0x00006FC0
	 { -300, 1402, -2339, 0, 2458, 0, 180, 168, 28, 255 }, // 0x00006FD0
	 { -300, 1202, -2339, 0, 2458, 1024, 172, 85, 5, 255 }, // 0x00006FE0
	 { -300, 1202, -1939, 0, 410, 1024, 170, 81, 19, 255 }, // 0x00006FF0
	 { -300, 1402, -1899, 0, 205, 0, 165, 204, 58, 255 }, // 0x00007000
	 { -300, 1182, -1899, 0, 205, 1126, 178, 81, 39, 255 }, // 0x00007010
	 { -300, 1182, -1899, 0, 205, 1126, 178, 81, 39, 255 }, // 0x00007020
	 { -217, 1256, -1827, 0, -386, 867, 154, 14, 60, 255 }, // 0x00007030
	 { -300, 1402, -1899, 0, 205, 0, 165, 204, 58, 255 }, // 0x00007040
};

Vtx_t _spot16_room_0_vertices_00007050[8] = 
{
	 { -520, 1402, -1899, 0, 2048, -410, 94, 206, 54, 255 }, // 0x00007050
	 { -520, 1402, -2339, 0, 2048, 1625, 77, 169, 28, 255 }, // 0x00007060
	 { -414, 1442, -1906, 0, 922, -410, 10, 138, 19, 255 }, // 0x00007070
	 { -520, 1402, -2339, 0, 2048, 4096, 77, 169, 28, 255 }, // 0x00007080
	 { -300, 1402, -2339, 0, -205, 4096, 180, 168, 28, 255 }, // 0x00007090
	 { -300, 1402, -2339, 0, -205, 1625, 180, 168, 28, 255 }, // 0x000070A0
	 { -300, 1402, -1899, 0, -205, -410, 165, 204, 58, 255 }, // 0x000070B0
	 { -410, 1102, -3136, 0, 922, 12257, 0, 13, 119, 255 }, // 0x000070C0
};

Vtx_t _spot16_room_0_vertices_000070D0[4] = 
{
	 { -300, 1202, -1939, 0, 1876, 1579, 170, 81, 19, 255 }, // 0x000070D0
	 { -300, 1202, -2339, 0, 1339, -2796, 172, 85, 5, 255 }, // 0x000070E0
	 { -520, 1202, -2339, 0, -3071, -2661, 84, 85, 5, 255 }, // 0x000070F0
	 { -520, 1202, -1939, 0, -2534, 1714, 86, 81, 19, 255 }, // 0x00007100
};

Vtx_t _spot16_room_0_vertices_00007110[4] = 
{
	 { -520, 1182, -1899, 0, 0, 1024, 71, 90, 33, 255 }, // 0x00007110
	 { -300, 1182, -1899, 0, 1024, 1024, 178, 81, 39, 255 }, // 0x00007120
	 { -300, 1202, -1939, 0, 1024, 2, 170, 81, 19, 255 }, // 0x00007130
	 { -520, 1202, -1939, 0, 0, 2, 86, 81, 19, 255 }, // 0x00007140
};

Vtx_t _spot16_room_0_vertices_00007150[3] = 
{
	 { -410, 1102, -3136, 0, -1854, -10778, 0, 13, 119, 255 }, // 0x00007150
	 { -520, 1202, -2339, 0, -3071, -2661, 84, 85, 5, 255 }, // 0x00007160
	 { -300, 1202, -2339, 0, 1339, -2796, 172, 85, 5, 255 }, // 0x00007170
};

Vtx_t _spot16_room_0_vertices_00007180[8] = 
{
	 { -546, 885, -3145, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007180
	 { 708, 885, -2688, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007190
	 { -516, 1383, -3227, 0, 0, 0, 0, 0, 0, 0 }, // 0x000071A0
	 { 738, 1383, -2771, 0, 0, 0, 0, 0, 0, 0 }, // 0x000071B0
	 { -1639, 1449, -142, 0, 0, 0, 0, 0, 0, 0 }, // 0x000071C0
	 { -385, 1449, 315, 0, 0, 0, 0, 0, 0, 0 }, // 0x000071D0
	 { -1609, 1946, -224, 0, 0, 0, 0, 0, 0, 0 }, // 0x000071E0
	 { -355, 1946, 232, 0, 0, 0, 0, 0, 0, 0 }, // 0x000071F0
};

Gfx _spot16_room_0_dlist_00007200[] =
{
	gsDPPipeSync(), // 0x00007200
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007208
	gsSPVertex(_spot16_room_0_vertices_00007180, 8, 0), // 0x00007210
	gsSPCullDisplayList(0, 7), // 0x00007218
	gsDPPipeSync(), // 0x00007220
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007228
	gsDPPipeSync(), // 0x00007230
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007238
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007240
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000AD98), // 0x00007248
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00007250
	gsDPLoadSync(), // 0x00007258
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00007260
	gsDPPipeSync(), // 0x00007268
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00007270
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00007278
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007280
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00007288
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00007290
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00007298
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x000072A0
	gsSPVertex(_spot16_room_0_vertices_000068C0, 8, 0), // 0x000072A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000072B0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000072B8
	gsDPPipeSync(), // 0x000072C0
	gsDPSetPrimColor(0, 0, 150, 132, 98, 255), // 0x000072C8
	gsSPVertex(_spot16_room_0_vertices_00006940, 7, 0), // 0x000072D0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000072D8
	gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0), // 0x000072E0
	gsSP2Triangles(5, 2, 1, 0, 5, 6, 2, 0), // 0x000072E8
	gsDPPipeSync(), // 0x000072F0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009D98), // 0x000072F8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00007300
	gsDPLoadSync(), // 0x00007308
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00007310
	gsDPPipeSync(), // 0x00007318
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00007320
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00007328
	gsSPVertex(_spot16_room_0_vertices_000069B0, 15, 0), // 0x00007330
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00007338
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 2, 0), // 0x00007340
	gsSP2Triangles(1, 6, 3, 0, 6, 7, 3, 0), // 0x00007348
	gsSP2Triangles(7, 8, 3, 0, 7, 9, 8, 0), // 0x00007350
	gsSP2Triangles(9, 10, 8, 0, 6, 11, 12, 0), // 0x00007358
	gsSP2Triangles(6, 12, 7, 0, 12, 13, 9, 0), // 0x00007360
	gsSP2Triangles(12, 9, 7, 0, 10, 14, 3, 0), // 0x00007368
	gsSP2Triangles(8, 10, 3, 0, 3, 14, 4, 0), // 0x00007370
	gsDPPipeSync(), // 0x00007378
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000AD98), // 0x00007380
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00007388
	gsDPLoadSync(), // 0x00007390
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00007398
	gsDPPipeSync(), // 0x000073A0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000073A8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000073B0
	gsSPVertex(_spot16_room_0_vertices_00006AA0, 10, 0), // 0x000073B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000073C0
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x000073C8
	gsSP2Triangles(6, 4, 5, 0, 5, 7, 8, 0), // 0x000073D0
	gsSP1Triangle(5, 9, 7, 0), // 0x000073D8
	gsDPPipeSync(), // 0x000073E0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0001D698), // 0x000073E8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000073F0
	gsDPLoadSync(), // 0x000073F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00007400
	gsDPPipeSync(), // 0x00007408
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007410
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007418
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00007420
	gsSPVertex(_spot16_room_0_vertices_00006B40, 31, 0), // 0x00007428
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00007430
	gsSP2Triangles(3, 2, 4, 0, 1, 5, 2, 0), // 0x00007438
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00007440
	gsSP2Triangles(6, 10, 7, 0, 8, 11, 9, 0), // 0x00007448
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 14, 0), // 0x00007450
	gsSP2Triangles(14, 17, 15, 0, 18, 19, 20, 0), // 0x00007458
	gsSP2Triangles(21, 18, 22, 0, 23, 21, 22, 0), // 0x00007460
	gsSP2Triangles(22, 24, 25, 0, 26, 24, 22, 0), // 0x00007468
	gsSP2Triangles(25, 23, 22, 0, 19, 27, 14, 0), // 0x00007470
	gsSP1Triangle(28, 29, 30, 0), // 0x00007478
	gsDPPipeSync(), // 0x00007480
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00012798), // 0x00007488
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00007490
	gsDPLoadSync(), // 0x00007498
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000074A0
	gsDPPipeSync(), // 0x000074A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000074B0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000074B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000074C0
	gsDPSetPrimColor(0, 0, 189, 188, 184, 255), // 0x000074C8
	gsSPVertex(_spot16_room_0_vertices_00006D30, 4, 0), // 0x000074D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000074D8
	gsDPPipeSync(), // 0x000074E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00011798), // 0x000074E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000074F0
	gsDPLoadSync(), // 0x000074F8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007500
	gsDPPipeSync(), // 0x00007508
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007510
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007518
	gsSPVertex(_spot16_room_0_vertices_00006D70, 13, 0), // 0x00007520
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007528
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007530
	gsSP2Triangles(8, 9, 1, 0, 8, 1, 10, 0), // 0x00007538
	gsSP2Triangles(11, 12, 9, 0, 11, 9, 8, 0), // 0x00007540
	gsDPPipeSync(), // 0x00007548
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00010198), // 0x00007550
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00007558
	gsDPLoadSync(), // 0x00007560
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00007568
	gsDPPipeSync(), // 0x00007570
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00007578
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00007580
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007588
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00007590
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00007598
	gsDPSetPrimColor(0, 0, 170, 170, 170, 255), // 0x000075A0
	gsSPVertex(_spot16_room_0_vertices_00006E40, 8, 0), // 0x000075A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000075B0
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0), // 0x000075B8
	gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0), // 0x000075C0
	gsDPPipeSync(), // 0x000075C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000F198), // 0x000075D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 7, 0, 0, 4, 0), // 0x000075D8
	gsDPLoadSync(), // 0x000075E0
	gsDPLoadBlock(7, 0, 0, 2047, 512), // 0x000075E8
	gsDPPipeSync(), // 0x000075F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 7, 0, 0, 4, 0), // 0x000075F8
	gsDPSetTileSize(0, 0, 0, 60, 508), // 0x00007600
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00007608
	gsDPSetPrimColor(0, 0, 111, 121, 131, 255), // 0x00007610
	gsSPVertex(_spot16_room_0_vertices_00006EC0, 8, 0), // 0x00007618
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007620
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007628
	gsDPPipeSync(), // 0x00007630
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00011798), // 0x00007638
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00007640
	gsDPLoadSync(), // 0x00007648
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007650
	gsDPPipeSync(), // 0x00007658
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007660
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007668
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007670
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007678
	gsDPSetPrimColor(0, 0, 189, 188, 184, 255), // 0x00007680
	gsSPVertex(_spot16_room_0_vertices_00006F40, 17, 0), // 0x00007688
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00007690
	gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0), // 0x00007698
	gsSP2Triangles(6, 8, 7, 0, 9, 8, 10, 0), // 0x000076A0
	gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0), // 0x000076A8
	gsSP2Triangles(11, 13, 12, 0, 14, 15, 16, 0), // 0x000076B0
	gsDPPipeSync(), // 0x000076B8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009D98), // 0x000076C0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000076C8
	gsDPLoadSync(), // 0x000076D0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000076D8
	gsDPPipeSync(), // 0x000076E0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000076E8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000076F0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000076F8
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00007700
	gsSPVertex(_spot16_room_0_vertices_00007050, 8, 0), // 0x00007708
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00007710
	gsSP2Triangles(5, 6, 2, 0, 7, 4, 3, 0), // 0x00007718
	gsDPPipeSync(), // 0x00007720
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00012798), // 0x00007728
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00007730
	gsDPLoadSync(), // 0x00007738
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007740
	gsDPPipeSync(), // 0x00007748
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007750
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007758
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007760
	gsDPSetPrimColor(0, 0, 189, 188, 184, 255), // 0x00007768
	gsSPVertex(_spot16_room_0_vertices_000070D0, 4, 0), // 0x00007770
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007778
	gsDPPipeSync(), // 0x00007780
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00011198), // 0x00007788
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 4, 0), // 0x00007790
	gsDPLoadSync(), // 0x00007798
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000077A0
	gsDPPipeSync(), // 0x000077A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 1, 4, 0), // 0x000077B0
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x000077B8
	gsSPVertex(_spot16_room_0_vertices_00007110, 4, 0), // 0x000077C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000077C8
	gsDPPipeSync(), // 0x000077D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00012798), // 0x000077D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000077E0
	gsDPLoadSync(), // 0x000077E8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000077F0
	gsDPPipeSync(), // 0x000077F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007800
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007808
	gsSPVertex(_spot16_room_0_vertices_00007150, 3, 0), // 0x00007810
	gsSP1Triangle(0, 1, 2, 0), // 0x00007818
	gsSPEndDisplayList(), // 0x00007820
};

Vtx_t _spot16_room_0_vertices_00007828[11] = 
{
	 { -1445, 1479, -613, 0, 3311, -91, 178, 255, 166, 255 }, // 0x00007828
	 { -1445, 1407, -612, 0, 3324, 2039, 153, 0, 195, 255 }, // 0x00007838
	 { -1460, 1409, -410, 0, 9505, 2050, 170, 77, 225, 255 }, // 0x00007848
	 { -1460, 1480, -410, 0, 9491, -81, 137, 0, 247, 255 }, // 0x00007858
	 { -1313, 1425, -940, 0, -7833, 2021, 175, 0, 168, 255 }, // 0x00007868
	 { -1439, 1407, -692, 0, 832, 2035, 150, 55, 0, 255 }, // 0x00007878
	 { -1439, 1478, -692, 0, 832, -95, 152, 0, 59, 255 }, // 0x00007888
	 { -1313, 1497, -940, 0, -7831, -109, 175, 0, 168, 255 }, // 0x00007898
	 { -1230, 1431, -973, 0, -10638, 2016, 211, 0, 145, 255 }, // 0x000078A8
	 { -1313, 1497, -940, 0, -7831, -109, 175, 0, 168, 255 }, // 0x000078B8
	 { -1235, 1502, -972, 0, -10479, -114, 211, 0, 145, 255 }, // 0x000078C8
};

Vtx_t _spot16_room_0_vertices_000078D8[4] = 
{
	 { -1442, 1449, -613, 0, -257, 512, 0, 119, 0, 255 }, // 0x000078D8
	 { -1436, 1449, -693, 0, 2241, 512, 0, 119, 0, 255 }, // 0x000078E8
	 { -1444, 1449, -693, 0, 2241, -218, 0, 119, 0, 255 }, // 0x000078F8
	 { -1450, 1449, -614, 0, -257, -218, 0, 119, 0, 255 }, // 0x00007908
};

Vtx_t _spot16_room_0_vertices_00007918[20] = 
{
	 { -1439, 1478, -692, 0, 1024, -36, 152, 0, 59, 255 }, // 0x00007918
	 { -1439, 1407, -692, 0, 1024, 2048, 150, 55, 0, 255 }, // 0x00007928
	 { -1299, 1409, -682, 0, -3456, 2048, 247, 0, 119, 255 }, // 0x00007938
	 { -1313, 1480, -683, 0, -3004, -36, 247, 0, 119, 255 }, // 0x00007948
	 { -1319, 1481, -603, 0, -3004, -36, 9, 255, 137, 255 }, // 0x00007958
	 { -1305, 1410, -602, 0, -3456, 2048, 9, 255, 137, 255 }, // 0x00007968
	 { -1445, 1407, -612, 0, 1024, 2048, 153, 0, 195, 255 }, // 0x00007978
	 { -1445, 1479, -613, 0, 1024, -36, 178, 255, 166, 255 }, // 0x00007988
	 { -1328, 1480, -690, 0, 769, -36, 137, 0, 250, 255 }, // 0x00007998
	 { -1328, 1409, -690, 0, 769, 2048, 137, 0, 250, 255 }, // 0x000079A8
	 { -1329, 1409, -678, 0, 269, 2048, 137, 0, 250, 255 }, // 0x000079B8
	 { -1329, 1480, -678, 0, 269, -36, 137, 0, 250, 255 }, // 0x000079C8
	 { -1331, 1481, -610, 0, 769, -36, 137, 0, 250, 255 }, // 0x000079D8
	 { -1332, 1409, -610, 0, 769, 2048, 137, 0, 250, 255 }, // 0x000079E8
	 { -1332, 1409, -598, 0, 269, 2048, 137, 0, 250, 255 }, // 0x000079F8
	 { -1332, 1481, -598, 0, 269, -36, 137, 0, 250, 255 }, // 0x00007A08
	 { -1439, 1449, -692, 0, 832, 784, 137, 0, 247, 255 }, // 0x00007A18
	 { -1439, 1407, -692, 0, 832, 2035, 150, 55, 0, 255 }, // 0x00007A28
	 { -1445, 1407, -612, 0, 3324, 2039, 153, 0, 195, 255 }, // 0x00007A38
	 { -1445, 1449, -613, 0, 3316, 803, 137, 0, 247, 255 }, // 0x00007A48
};

Gfx _spot16_room_0_dlist_00007A58[] =
{
	gsDPPipeSync(), // 0x00007A58
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007A60
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007A68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00013D98), // 0x00007A70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00007A78
	gsDPLoadSync(), // 0x00007A80
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00007A88
	gsDPPipeSync(), // 0x00007A90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00007A98
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00007AA0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007AA8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00007AB0
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x00007AB8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007AC0
	gsDPSetPrimColor(0, 0, 179, 176, 170, 255), // 0x00007AC8
	gsSPVertex(_spot16_room_0_vertices_00007828, 11, 0), // 0x00007AD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007AD8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007AE0
	gsSP2Triangles(8, 4, 9, 0, 8, 9, 10, 0), // 0x00007AE8
	gsDPPipeSync(), // 0x00007AF0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00013998), // 0x00007AF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 5, 0), // 0x00007B00
	gsDPLoadSync(), // 0x00007B08
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00007B10
	gsDPPipeSync(), // 0x00007B18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 0, 5, 0), // 0x00007B20
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00007B28
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00007B30
	gsSPVertex(_spot16_room_0_vertices_000078D8, 4, 0), // 0x00007B38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007B40
	gsDPPipeSync(), // 0x00007B48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00013D98), // 0x00007B50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00007B58
	gsDPLoadSync(), // 0x00007B60
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00007B68
	gsDPPipeSync(), // 0x00007B70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00007B78
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00007B80
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00007B88
	gsSPVertex(_spot16_room_0_vertices_00007918, 20, 0), // 0x00007B90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007B98
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007BA0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00007BA8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00007BB0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00007BB8
	gsSPEndDisplayList(), // 0x00007BC0
};

Vtx_t _spot16_room_0_vertices_00007BC8[1] = 
{
	 { -1345, 1510, -640, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007BC8
};

Gfx _spot16_room_0_dlist_00007BD8[] =
{
	gsSPVertex(_spot16_room_0_vertices_00007BC8, 1, 0), // 0x00007BD8
	gsSPBranchLessZraw(_spot16_room_0_dlist_00007A58, 0x00, 0x7D0), // 0x00007BE8
	gsSPEndDisplayList(), // 0x00007BF0
};

Vtx_t _spot16_room_0_vertices_00007BF8[8] = 
{
	 { -1389, 1407, -1002, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007BF8
	 { -1230, 1407, -973, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007C08
	 { -1389, 1502, -1002, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007C18
	 { -1230, 1502, -973, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007C28
	 { -1493, 1407, -416, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007C38
	 { -1333, 1407, -388, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007C48
	 { -1493, 1502, -416, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007C58
	 { -1333, 1502, -388, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007C68
};

Gfx _spot16_room_0_dlist_00007C78[] =
{
	gsDPPipeSync(), // 0x00007C78
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007C80
	gsSPVertex(_spot16_room_0_vertices_00007BF8, 8, 0), // 0x00007C88
	gsSPCullDisplayList(0, 7), // 0x00007C90
	gsDPPipeSync(), // 0x00007C98
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007CA0
	gsSPDisplayList(_spot16_room_0_dlist_00007BD8), // 0x00007CA8
	gsSPEndDisplayList(), // 0x00007CB0
};

Vtx_t _spot16_room_0_vertices_00007CB8[6] = 
{
	 { -133, 3194, -3983, 0, -424, 3788, 35, 111, 26, 255 }, // 0x00007CB8
	 { 771, 3309, -4388, 0, 7921, 2220, 254, 116, 28, 255 }, // 0x00007CC8
	 { 313, 3327, -4511, 0, 4368, 296, 218, 95, 62, 255 }, // 0x00007CD8
	 { 139, 3198, -3983, 0, 1831, 4328, 161, 45, 56, 255 }, // 0x00007CE8
	 { -461, 3303, -4336, 0, -2407, 210, 94, 62, 39, 255 }, // 0x00007CF8
	 { -260, 3193, -3983, 0, -1473, 3537, 38, 66, 163, 255 }, // 0x00007D08
};

Vtx_t _spot16_room_0_vertices_00007D18[8] = 
{
	 { -262, 2586, -3983, 0, 0, 2560, 44, 53, 98, 255 }, // 0x00007D18
	 { -296, 2603, -3875, 0, 2048, 3193, 83, 53, 67, 255 }, // 0x00007D28
	 { -38, 2586, -3983, 0, 0, -512, 56, 58, 88, 255 }, // 0x00007D38
	 { -83, 2596, -3869, 0, 2048, 121, 47, 89, 64, 255 }, // 0x00007D48
	 { -39, 2867, -3983, 0, 0, -1336, 208, 12, 109, 255 }, // 0x00007D58
	 { -21, 2878, -3854, 0, 2048, -1536, 186, 65, 72, 255 }, // 0x00007D68
	 { 107, 2881, -3850, 0, 2048, -3072, 195, 20, 101, 255 }, // 0x00007D78
	 { 111, 2867, -3983, 0, 0, -3072, 186, 75, 61, 255 }, // 0x00007D88
};

Vtx_t _spot16_room_0_vertices_00007D98[8] = 
{
	 { -133, 3194, -3983, 0, -424, 3788, 35, 111, 26, 255 }, // 0x00007D98
	 { -285, 3311, -4431, 0, -757, -232, 59, 89, 53, 255 }, // 0x00007DA8
	 { -461, 3303, -4336, 0, -2407, 210, 94, 62, 39, 255 }, // 0x00007DB8
	 { -180, 3316, -4488, 0, 232, -497, 1, 97, 69, 255 }, // 0x00007DC8
	 { 313, 3327, -4511, 0, 4368, 296, 218, 95, 62, 255 }, // 0x00007DD8
	 { 313, 3327, -4511, 0, 3344, -1848, 218, 95, 62, 255 }, // 0x00007DE8
	 { 65, 3327, -4600, 0, 1475, -3050, 50, 70, 83, 255 }, // 0x00007DF8
	 { -180, 3316, -4488, 0, -723, -2229, 1, 97, 69, 255 }, // 0x00007E08
};

Gfx _spot16_room_0_dlist_00007E18[] =
{
	gsDPPipeSync(), // 0x00007E18
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0001D698), // 0x00007E20
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00007E28
	gsDPLoadSync(), // 0x00007E30
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00007E38
	gsDPPipeSync(), // 0x00007E40
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007E48
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007E50
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007E58
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00007E60
	gsDPSetPrimColor(0, 0, 150, 132, 98, 255), // 0x00007E68
	gsSPVertex(_spot16_room_0_vertices_00007CB8, 6, 0), // 0x00007E70
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00007E78
	gsSP1Triangle(4, 5, 0, 0), // 0x00007E80
	gsDPPipeSync(), // 0x00007E88
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00008198), // 0x00007E90
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00007E98
	gsDPLoadSync(), // 0x00007EA0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00007EA8
	gsDPPipeSync(), // 0x00007EB0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00007EB8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00007EC0
	gsSPVertex(_spot16_room_0_vertices_00007D18, 8, 0), // 0x00007EC8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00007ED0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007ED8
	gsDPPipeSync(), // 0x00007EE0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0001D698), // 0x00007EE8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00007EF0
	gsDPLoadSync(), // 0x00007EF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00007F00
	gsDPPipeSync(), // 0x00007F08
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007F10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007F18
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00007F20
	gsSPVertex(_spot16_room_0_vertices_00007D98, 8, 0), // 0x00007F28
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00007F30
	gsSP2Triangles(0, 4, 3, 0, 5, 6, 7, 0), // 0x00007F38
	gsSPEndDisplayList(), // 0x00007F40
};

Vtx_t _spot16_room_0_vertices_00007F48[1] = 
{
	 { 155, 2956, -4225, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F48
};

Gfx _spot16_room_0_dlist_00007F58[] =
{
	gsSPVertex(_spot16_room_0_vertices_00007F48, 1, 0), // 0x00007F58
	gsSPBranchLessZraw(_spot16_room_0_dlist_00007E18, 0x00, 0x960), // 0x00007F68
	gsSPEndDisplayList(), // 0x00007F70
};

Vtx_t _spot16_room_0_vertices_00007F78[4] = 
{
	 { -285, 3311, -4431, 0, 0, 1024, 59, 89, 53, 255 }, // 0x00007F78
	 { -336, 3311, -4524, 0, 1036, 1024, 78, 86, 227, 255 }, // 0x00007F88
	 { -336, 3463, -4524, 0, 1117, 0, 79, 172, 226, 255 }, // 0x00007F98
	 { -285, 3463, -4431, 0, 80, 0, 79, 215, 80, 255 }, // 0x00007FA8
};

Vtx_t _spot16_room_0_vertices_00007FB8[4] = 
{
	 { -180, 3316, -4488, 0, 232, -497, 1, 97, 69, 255 }, // 0x00007FB8
	 { -230, 3316, -4581, 0, 0, -1365, 186, 82, 51, 255 }, // 0x00007FC8
	 { -336, 3311, -4524, 0, -990, -1100, 78, 86, 227, 255 }, // 0x00007FD8
	 { -285, 3311, -4431, 0, -757, -232, 59, 89, 53, 255 }, // 0x00007FE8
};

Vtx_t _spot16_room_0_vertices_00007FF8[4] = 
{
	 { -180, 3463, -4488, 0, 20, 0, 33, 229, 112, 255 }, // 0x00007FF8
	 { -230, 3463, -4581, 0, 1088, 0, 187, 172, 50, 255 }, // 0x00008008
	 { -230, 3316, -4581, 0, 1068, 1024, 186, 82, 51, 255 }, // 0x00008018
	 { -180, 3316, -4488, 0, 0, 1024, 1, 97, 69, 255 }, // 0x00008028
};

Vtx_t _spot16_room_0_vertices_00008038[4] = 
{
	 { -285, 3463, -4431, 0, 2048, 2048, 79, 215, 80, 255 }, // 0x00008038
	 { -336, 3463, -4524, 0, 2048, 969, 79, 172, 226, 255 }, // 0x00008048
	 { -230, 3463, -4581, 0, 0, 969, 187, 172, 50, 255 }, // 0x00008058
	 { -180, 3463, -4488, 0, 0, 2048, 33, 229, 112, 255 }, // 0x00008068
};

Vtx_t _spot16_room_0_vertices_00008078[3] = 
{
	 { -336, 3463, -4524, 0, 1117, 0, 79, 172, 226, 255 }, // 0x00008078
	 { -336, 3311, -4524, 0, 1036, 1024, 78, 86, 227, 255 }, // 0x00008088
	 { -520, 3389, -4990, 0, 6007, 504, 49, 0, 109, 255 }, // 0x00008098
};

Vtx_t _spot16_room_0_vertices_000080A8[3] = 
{
	 { -336, 3311, -4524, 0, -990, -1100, 78, 86, 227, 255 }, // 0x000080A8
	 { -230, 3316, -4581, 0, 0, -1365, 186, 82, 51, 255 }, // 0x000080B8
	 { -520, 3389, -4990, 0, -1568, -5334, 49, 0, 109, 255 }, // 0x000080C8
};

Vtx_t _spot16_room_0_vertices_000080D8[3] = 
{
	 { -230, 3316, -4581, 0, 1068, 1024, 186, 82, 51, 255 }, // 0x000080D8
	 { -230, 3463, -4581, 0, 1088, 0, 187, 172, 50, 255 }, // 0x000080E8
	 { -520, 3389, -4990, 0, 6160, 520, 49, 0, 109, 255 }, // 0x000080F8
};

Vtx_t _spot16_room_0_vertices_00008108[3] = 
{
	 { -230, 3463, -4581, 0, 0, 969, 187, 172, 50, 255 }, // 0x00008108
	 { -336, 3463, -4524, 0, 2048, 969, 79, 172, 226, 255 }, // 0x00008118
	 { -520, 3389, -4990, 0, 1024, -4183, 49, 0, 109, 255 }, // 0x00008128
};

Vtx_t _spot16_room_0_vertices_00008138[5] = 
{
	 { -457, 3389, -4874, 0, -508, 243, 51, 0, 108, 255 }, // 0x00008138
	 { -334, 3461, -4525, 0, 512, 384, 86, 174, 243, 255 }, // 0x00008148
	 { -334, 3313, -4524, 0, 512, 384, 85, 83, 244, 255 }, // 0x00008158
	 { -232, 3461, -4580, 0, 512, 102, 198, 174, 65, 255 }, // 0x00008168
	 { -232, 3318, -4580, 0, 512, 102, 196, 80, 65, 255 }, // 0x00008178
};

Gfx _spot16_room_0_dlist_00008188[] =
{
	gsDPPipeSync(), // 0x00008188
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008190
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008198
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009198), // 0x000081A0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000081A8
	gsDPLoadSync(), // 0x000081B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000081B8
	gsDPPipeSync(), // 0x000081C0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000081C8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000081D0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000081D8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000081E0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000081E8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000081F0
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x000081F8
	gsSPVertex(_spot16_room_0_vertices_00007F78, 4, 0), // 0x00008200
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008208
	gsDPPipeSync(), // 0x00008210
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0001D698), // 0x00008218
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00008220
	gsDPLoadSync(), // 0x00008228
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008230
	gsDPPipeSync(), // 0x00008238
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00008240
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00008248
	gsSPVertex(_spot16_room_0_vertices_00007FB8, 4, 0), // 0x00008250
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008258
	gsDPPipeSync(), // 0x00008260
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009198), // 0x00008268
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00008270
	gsDPLoadSync(), // 0x00008278
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008280
	gsDPPipeSync(), // 0x00008288
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00008290
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00008298
	gsSPVertex(_spot16_room_0_vertices_00007FF8, 4, 0), // 0x000082A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000082A8
	gsDPPipeSync(), // 0x000082B0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009D98), // 0x000082B8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000082C0
	gsDPLoadSync(), // 0x000082C8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000082D0
	gsDPPipeSync(), // 0x000082D8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000082E0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000082E8
	gsSPVertex(_spot16_room_0_vertices_00008038, 4, 0), // 0x000082F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000082F8
	gsDPPipeSync(), // 0x00008300
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009198), // 0x00008308
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00008310
	gsDPLoadSync(), // 0x00008318
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008320
	gsDPPipeSync(), // 0x00008328
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00008330
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00008338
	gsSPVertex(_spot16_room_0_vertices_00008078, 3, 0), // 0x00008340
	gsSP1Triangle(0, 1, 2, 0), // 0x00008348
	gsDPPipeSync(), // 0x00008350
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0001D698), // 0x00008358
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00008360
	gsDPLoadSync(), // 0x00008368
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008370
	gsDPPipeSync(), // 0x00008378
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00008380
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00008388
	gsSPVertex(_spot16_room_0_vertices_000080A8, 3, 0), // 0x00008390
	gsSP1Triangle(0, 1, 2, 0), // 0x00008398
	gsDPPipeSync(), // 0x000083A0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009198), // 0x000083A8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000083B0
	gsDPLoadSync(), // 0x000083B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000083C0
	gsDPPipeSync(), // 0x000083C8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000083D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000083D8
	gsSPVertex(_spot16_room_0_vertices_000080D8, 3, 0), // 0x000083E0
	gsSP1Triangle(0, 1, 2, 0), // 0x000083E8
	gsDPPipeSync(), // 0x000083F0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009D98), // 0x000083F8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00008400
	gsDPLoadSync(), // 0x00008408
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00008410
	gsDPPipeSync(), // 0x00008418
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00008420
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00008428
	gsSPVertex(_spot16_room_0_vertices_00008108, 3, 0), // 0x00008430
	gsSP1Triangle(0, 1, 2, 0), // 0x00008438
	gsDPPipeSync(), // 0x00008440
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015D98), // 0x00008448
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 4, 0), // 0x00008450
	gsDPLoadSync(), // 0x00008458
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00008460
	gsDPPipeSync(), // 0x00008468
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 4, 0, 2, 4, 0), // 0x00008470
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00008478
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008480
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00008488
	gsSPVertex(_spot16_room_0_vertices_00008138, 5, 0), // 0x00008490
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008498
	gsSP2Triangles(0, 4, 3, 0, 0, 2, 4, 0), // 0x000084A0
	gsSPEndDisplayList(), // 0x000084A8
};

Vtx_t _spot16_room_0_vertices_000084B0[4] = 
{
	 { -285, 3311, -4431, 0, 21, 2111, 59, 89, 53, 255 }, // 0x000084B0
	 { -180, 3316, -4488, 0, 1407, 2094, 1, 97, 69, 255 }, // 0x000084C0
	 { -180, 3463, -4488, 0, 1453, 391, 33, 229, 112, 255 }, // 0x000084D0
	 { -285, 3463, -4431, 0, 68, 354, 79, 215, 80, 255 }, // 0x000084E0
};

Gfx _spot16_room_0_dlist_000084F0[] =
{
	gsDPPipeSync(), // 0x000084F0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000084F8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008500
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00008508
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00008510
	gsDPLoadSync(), // 0x00008518
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008520
	gsDPPipeSync(), // 0x00008528
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00008530
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00008538
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008540
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00008548
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00008550
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00008558
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00008560
	gsSPVertex(_spot16_room_0_vertices_000084B0, 4, 0), // 0x00008568
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008570
	gsSPEndDisplayList(), // 0x00008578
};

Vtx_t _spot16_room_0_vertices_00008580[1] = 
{
	 { -280, 3388, -4548, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008580
};

Vtx_t _spot16_room_0_vertices_00008590[1] = 
{
	 { -280, 3388, -4548, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008590
};

Gfx _spot16_room_0_dlist_000085A0[] =
{
	gsSPVertex(_spot16_room_0_vertices_00008580, 1, 0), // 0x000085A0
	gsSPBranchLessZraw(_spot16_room_0_dlist_00008188, 0x00, 0x4B0), // 0x000085B0
	gsSPVertex(_spot16_room_0_vertices_00008590, 1, 0), // 0x000085B8
	gsSPBranchLessZraw(_spot16_room_0_dlist_000084F0, 0x00, 0x17D78400), // 0x000085C8
	gsSPEndDisplayList(), // 0x000085D0
};

Vtx_t _spot16_room_0_vertices_000085D8[4] = 
{
	 { 313, 3327, -4511, 0, 0, -6179, 218, 95, 62, 255 }, // 0x000085D8
	 { 508, 3023, -5054, 0, 0, 3473, 151, 31, 209, 255 }, // 0x000085E8
	 { 260, 3023, -5143, 0, 1024, 3473, 104, 54, 22, 255 }, // 0x000085F8
	 { 65, 3327, -4600, 0, 1024, -6179, 50, 70, 83, 255 }, // 0x00008608
};

Vtx_t _spot16_room_0_vertices_00008618[6] = 
{
	 { 377, 3233, -5101, 0, 0, 1024, 244, 145, 43, 255 }, // 0x00008618
	 { 272, 3484, -4537, 0, -3026, 0, 174, 233, 84, 255 }, // 0x00008628
	 { 239, 3525, -4551, 0, -3026, 683, 203, 234, 105, 255 }, // 0x00008638
	 { 477, 3203, -5065, 0, 0, 0, 177, 167, 247, 255 }, // 0x00008648
	 { 179, 3536, -4564, 0, -3026, 1024, 225, 217, 109, 255 }, // 0x00008658
	 { 239, 3525, -4551, 0, -3026, 683, 203, 234, 105, 255 }, // 0x00008668
};

Vtx_t _spot16_room_0_vertices_00008678[8] = 
{
	 { 272, 3484, -4537, 0, -3505, 0, 174, 233, 84, 255 }, // 0x00008678
	 { 508, 3023, -5054, 0, 0, 2048, 151, 31, 209, 255 }, // 0x00008688
	 { 313, 3327, -4511, 0, -3505, 2048, 218, 95, 62, 255 }, // 0x00008698
	 { 477, 3203, -5065, 0, 0, 0, 177, 167, 247, 255 }, // 0x000086A8
	 { 65, 3327, -4600, 0, -3505, 2048, 50, 70, 83, 255 }, // 0x000086B8
	 { 260, 3023, -5143, 0, 0, 2048, 104, 54, 22, 255 }, // 0x000086C8
	 { 102, 3457, -4641, 0, -3505, 0, 53, 224, 102, 255 }, // 0x000086D8
	 { 278, 3190, -5137, 0, 0, 0, 85, 185, 44, 255 }, // 0x000086E8
};

Vtx_t _spot16_room_0_vertices_000086F8[5] = 
{
	 { 377, 3233, -5101, 0, 0, 1024, 244, 145, 43, 255 }, // 0x000086F8
	 { 179, 3536, -4564, 0, -3026, 1024, 225, 217, 109, 255 }, // 0x00008708
	 { 133, 3517, -4605, 0, -3026, 1365, 235, 201, 104, 255 }, // 0x00008718
	 { 102, 3457, -4641, 0, -3026, 2048, 53, 224, 102, 255 }, // 0x00008728
	 { 278, 3190, -5137, 0, 0, 2048, 85, 185, 44, 255 }, // 0x00008738
};

Vtx_t _spot16_room_0_vertices_00008748[4] = 
{
	 { 409, 3170, -5546, 0, 2018, 0, 89, 182, 32, 255 }, // 0x00008748
	 { 278, 3190, -5137, 0, 0, 0, 85, 185, 44, 255 }, // 0x00008758
	 { 397, 2992, -5543, 0, 2018, 512, 106, 46, 31, 255 }, // 0x00008768
	 { 260, 3023, -5143, 0, 0, 512, 104, 54, 22, 255 }, // 0x00008778
};

Vtx_t _spot16_room_0_vertices_00008788[6] = 
{
	 { 515, 3205, -5509, 0, 2018, 256, 2, 137, 8, 255 }, // 0x00008788
	 { 278, 3190, -5137, 0, 0, 512, 85, 185, 44, 255 }, // 0x00008798
	 { 409, 3170, -5546, 0, 2018, 512, 89, 182, 32, 255 }, // 0x000087A8
	 { 377, 3233, -5101, 0, 0, 256, 244, 145, 43, 255 }, // 0x000087B8
	 { 621, 3176, -5470, 0, 2018, 0, 159, 194, 225, 255 }, // 0x000087C8
	 { 477, 3203, -5065, 0, 0, 0, 177, 167, 247, 255 }, // 0x000087D8
};

Vtx_t _spot16_room_0_vertices_000087E8[4] = 
{
	 { 653, 2992, -5451, 0, 2018, 512, 171, 76, 219, 255 }, // 0x000087E8
	 { 508, 3023, -5054, 0, 0, 512, 151, 31, 209, 255 }, // 0x000087F8
	 { 621, 3176, -5470, 0, 2018, 0, 159, 194, 225, 255 }, // 0x00008808
	 { 477, 3203, -5065, 0, 0, 0, 177, 167, 247, 255 }, // 0x00008818
};

Vtx_t _spot16_room_0_vertices_00008828[4] = 
{
	 { 397, 2992, -5543, 0, 2048, 512, 106, 46, 31, 255 }, // 0x00008828
	 { 260, 3023, -5143, 0, 0, 512, 104, 54, 22, 255 }, // 0x00008838
	 { 508, 3023, -5054, 0, 0, 15, 151, 31, 209, 255 }, // 0x00008848
	 { 653, 2992, -5451, 0, 2048, 0, 171, 76, 219, 255 }, // 0x00008858
};

Vtx_t _spot16_room_0_vertices_00008868[4] = 
{
	 { 397, 2992, -5543, 0, -278, 1025, 0, 0, 0, 255 }, // 0x00008868
	 { 466, 2977, -5733, 0, 181, 1024, 38, 38, 38, 255 }, // 0x00008878
	 { 478, 3155, -5736, 0, 167, -25, 38, 38, 38, 255 }, // 0x00008888
	 { 409, 3170, -5546, 0, -292, -25, 0, 0, 0, 255 }, // 0x00008898
};

Vtx_t _spot16_room_0_vertices_000088A8[5] = 
{
	 { 409, 3170, -5546, 0, -87, 843, 0, 0, 0, 255 }, // 0x000088A8
	 { 478, 3155, -5736, 0, 922, 307, 38, 38, 38, 255 }, // 0x000088B8
	 { 515, 3205, -5509, 0, -427, 291, 0, 0, 0, 255 }, // 0x000088C8
	 { 621, 3176, -5470, 0, -696, -296, 0, 0, 0, 255 }, // 0x000088D8
	 { 690, 3161, -5660, 0, 313, -832, 38, 38, 38, 255 }, // 0x000088E8
};

Vtx_t _spot16_room_0_vertices_000088F8[7] = 
{
	 { 722, 2977, -5641, 0, 175, 936, 38, 38, 38, 255 }, // 0x000088F8
	 { 653, 2992, -5451, 0, -284, 936, 0, 0, 0, 255 }, // 0x00008908
	 { 621, 3176, -5470, 0, -298, -135, 0, 0, 0, 255 }, // 0x00008918
	 { 690, 3161, -5660, 0, 161, -135, 38, 38, 38, 255 }, // 0x00008928
	 { 478, 3155, -5736, 0, 167, -25, 38, 38, 38, 255 }, // 0x00008938
	 { 466, 2977, -5733, 0, 181, 1024, 38, 38, 38, 255 }, // 0x00008948
	 { 768, 2909, -6601, 0, 2270, 1024, 191, 191, 191, 255 }, // 0x00008958
};

Vtx_t _spot16_room_0_vertices_00008968[6] = 
{
	 { 768, 2909, -6601, 0, 2610, -574, 191, 191, 191, 255 }, // 0x00008968
	 { 466, 2977, -5733, 0, 24, -261, 38, 38, 38, 255 }, // 0x00008978
	 { 722, 2977, -5641, 0, 109, 503, 38, 38, 38, 255 }, // 0x00008988
	 { 1032, 2909, -6506, 0, 2697, 212, 191, 191, 191, 255 }, // 0x00008998
	 { 653, 2992, -5451, 0, -461, 566, 0, 0, 0, 255 }, // 0x000089A8
	 { 397, 2992, -5543, 0, -546, -198, 0, 0, 0, 255 }, // 0x000089B8
};

Vtx_t _spot16_room_0_vertices_000089C8[3] = 
{
	 { 1032, 2909, -6506, 0, 2264, 933, 191, 191, 191, 255 }, // 0x000089C8
	 { 722, 2977, -5641, 0, 175, 936, 38, 38, 38, 255 }, // 0x000089D8
	 { 690, 3161, -5660, 0, 161, -135, 38, 38, 38, 255 }, // 0x000089E8
};

Vtx_t _spot16_room_0_vertices_000089F8[4] = 
{
	 { 690, 3161, -5660, 0, 313, -832, 38, 38, 38, 255 }, // 0x000089F8
	 { 478, 3155, -5736, 0, 922, 307, 38, 38, 38, 255 }, // 0x00008A08
	 { 768, 2909, -6601, 0, 5758, -2110, 191, 191, 191, 255 }, // 0x00008A18
	 { 1032, 2909, -6506, 0, 5012, -3529, 191, 191, 191, 255 }, // 0x00008A28
};

Gfx _spot16_room_0_dlist_00008A38[] =
{
	gsDPPipeSync(), // 0x00008A38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00011198), // 0x00008A40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 4, 0), // 0x00008A48
	gsDPLoadSync(), // 0x00008A50
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008A58
	gsDPPipeSync(), // 0x00008A60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 1, 4, 0), // 0x00008A68
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00008A70
	gsDPSetPrimColor(0, 0, 170, 180, 220, 255), // 0x00008A78
	gsSPVertex(_spot16_room_0_vertices_000085D8, 4, 0), // 0x00008A80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008A88
	gsDPPipeSync(), // 0x00008A90
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009D98), // 0x00008A98
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00008AA0
	gsDPLoadSync(), // 0x00008AA8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00008AB0
	gsDPPipeSync(), // 0x00008AB8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00008AC0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00008AC8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00008AD0
	gsDPSetPrimColor(0, 0, 93, 89, 67, 255), // 0x00008AD8
	gsSPVertex(_spot16_room_0_vertices_00008618, 6, 0), // 0x00008AE0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008AE8
	gsSP1Triangle(4, 0, 5, 0), // 0x00008AF0
	gsDPPipeSync(), // 0x00008AF8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000AD98), // 0x00008B00
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00008B08
	gsDPLoadSync(), // 0x00008B10
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00008B18
	gsDPPipeSync(), // 0x00008B20
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00008B28
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00008B30
	gsSPVertex(_spot16_room_0_vertices_00008678, 8, 0), // 0x00008B38
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008B40
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00008B48
	gsDPPipeSync(), // 0x00008B50
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00009D98), // 0x00008B58
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00008B60
	gsDPLoadSync(), // 0x00008B68
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00008B70
	gsDPPipeSync(), // 0x00008B78
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00008B80
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00008B88
	gsSPVertex(_spot16_room_0_vertices_000086F8, 5, 0), // 0x00008B90
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00008B98
	gsSP1Triangle(3, 4, 0, 0), // 0x00008BA0
	gsDPPipeSync(), // 0x00008BA8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00011598), // 0x00008BB0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 1, 6, 0), // 0x00008BB8
	gsDPLoadSync(), // 0x00008BC0
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00008BC8
	gsDPPipeSync(), // 0x00008BD0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 4, 0, 1, 6, 0), // 0x00008BD8
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00008BE0
	gsSPVertex(_spot16_room_0_vertices_00008748, 4, 0), // 0x00008BE8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00008BF0
	gsDPPipeSync(), // 0x00008BF8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00013798), // 0x00008C00
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 1, 6, 0), // 0x00008C08
	gsDPLoadSync(), // 0x00008C10
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00008C18
	gsDPPipeSync(), // 0x00008C20
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 4, 0, 1, 6, 0), // 0x00008C28
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00008C30
	gsSPVertex(_spot16_room_0_vertices_00008788, 6, 0), // 0x00008C38
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008C40
	gsSP2Triangles(4, 5, 0, 0, 5, 3, 0, 0), // 0x00008C48
	gsDPPipeSync(), // 0x00008C50
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00011598), // 0x00008C58
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 1, 6, 0), // 0x00008C60
	gsDPLoadSync(), // 0x00008C68
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00008C70
	gsDPPipeSync(), // 0x00008C78
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 4, 0, 1, 6, 0), // 0x00008C80
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00008C88
	gsSPVertex(_spot16_room_0_vertices_000087E8, 4, 0), // 0x00008C90
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00008C98
	gsDPPipeSync(), // 0x00008CA0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000DF98), // 0x00008CA8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 6, 0), // 0x00008CB0
	gsDPLoadSync(), // 0x00008CB8
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00008CC0
	gsDPPipeSync(), // 0x00008CC8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 4, 0, 2, 6, 0), // 0x00008CD0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00008CD8
	gsSPVertex(_spot16_room_0_vertices_00008828, 4, 0), // 0x00008CE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008CE8
	gsDPPipeSync(), // 0x00008CF0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000D398), // 0x00008CF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x00008D00
	gsDPLoadSync(), // 0x00008D08
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008D10
	gsDPPipeSync(), // 0x00008D18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00008D20
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00008D28
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00008D30
	gsSPGeometryMode(0xFF020000, 0x00000000), // 0x00008D38
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00008D40
	gsSPVertex(_spot16_room_0_vertices_00008868, 4, 0), // 0x00008D48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008D50
	gsDPPipeSync(), // 0x00008D58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000CF98), // 0x00008D60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00008D68
	gsDPLoadSync(), // 0x00008D70
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00008D78
	gsDPPipeSync(), // 0x00008D80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x00008D88
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00008D90
	gsSPVertex(_spot16_room_0_vertices_000088A8, 5, 0), // 0x00008D98
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0), // 0x00008DA0
	gsSP1Triangle(2, 1, 4, 0), // 0x00008DA8
	gsDPPipeSync(), // 0x00008DB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000D398), // 0x00008DB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x00008DC0
	gsDPLoadSync(), // 0x00008DC8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008DD0
	gsDPPipeSync(), // 0x00008DD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00008DE0
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00008DE8
	gsSPVertex(_spot16_room_0_vertices_000088F8, 7, 0), // 0x00008DF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008DF8
	gsSP1Triangle(4, 5, 6, 0), // 0x00008E00
	gsDPPipeSync(), // 0x00008E08
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000CF98), // 0x00008E10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00008E18
	gsDPLoadSync(), // 0x00008E20
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00008E28
	gsDPPipeSync(), // 0x00008E30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x00008E38
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00008E40
	gsSPVertex(_spot16_room_0_vertices_00008968, 6, 0), // 0x00008E48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008E50
	gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0), // 0x00008E58
	gsDPPipeSync(), // 0x00008E60
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000D398), // 0x00008E68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x00008E70
	gsDPLoadSync(), // 0x00008E78
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008E80
	gsDPPipeSync(), // 0x00008E88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00008E90
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00008E98
	gsSPVertex(_spot16_room_0_vertices_000089C8, 3, 0), // 0x00008EA0
	gsSP1Triangle(0, 1, 2, 0), // 0x00008EA8
	gsDPPipeSync(), // 0x00008EB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000CF98), // 0x00008EB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00008EC0
	gsDPLoadSync(), // 0x00008EC8
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00008ED0
	gsDPPipeSync(), // 0x00008ED8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x00008EE0
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00008EE8
	gsSPVertex(_spot16_room_0_vertices_000089F8, 4, 0), // 0x00008EF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008EF8
	gsSPEndDisplayList(), // 0x00008F00
};

Vtx_t _spot16_room_0_vertices_00008F08[7] = 
{
	 { 133, 3517, -4605, 0, 441, 2333, 235, 201, 104, 255 }, // 0x00008F08
	 { 102, 3457, -4641, 0, 0, 2048, 53, 224, 102, 255 }, // 0x00008F18
	 { 65, 3327, -4600, 0, -1164, 2048, 50, 70, 83, 255 }, // 0x00008F28
	 { 313, 3327, -4511, 0, -842, 4200, 218, 95, 62, 255 }, // 0x00008F38
	 { 272, 3484, -4537, 0, 328, 3631, 174, 233, 84, 255 }, // 0x00008F48
	 { 239, 3525, -4551, 0, 595, 3290, 203, 234, 105, 255 }, // 0x00008F58
	 { 179, 3536, -4564, 0, 586, 2787, 225, 217, 109, 255 }, // 0x00008F68
};

Gfx _spot16_room_0_dlist_00008F78[] =
{
	gsDPPipeSync(), // 0x00008F78
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008F80
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008F88
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00008F90
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00008F98
	gsDPLoadSync(), // 0x00008FA0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008FA8
	gsDPPipeSync(), // 0x00008FB0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00008FB8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00008FC0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008FC8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00008FD0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00008FD8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00008FE0
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00008FE8
	gsSPVertex(_spot16_room_0_vertices_00008F08, 7, 0), // 0x00008FF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008FF8
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00009000
	gsSP1Triangle(0, 5, 6, 0), // 0x00009008
	gsSPEndDisplayList(), // 0x00009010
};

Vtx_t _spot16_room_0_vertices_00009018[1] = 
{
	 { 188, 3432, -4576, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009018
};

Vtx_t _spot16_room_0_vertices_00009028[1] = 
{
	 { 188, 3432, -4576, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009028
};

Gfx _spot16_room_0_dlist_00009038[] =
{
	gsSPVertex(_spot16_room_0_vertices_00009018, 1, 0), // 0x00009038
	gsSPBranchLessZraw(_spot16_room_0_dlist_00008A38, 0x00, 0x4B0), // 0x00009048
	gsSPVertex(_spot16_room_0_vertices_00009028, 1, 0), // 0x00009050
	gsSPBranchLessZraw(_spot16_room_0_dlist_00008F78, 0x00, 0x17D78400), // 0x00009060
	gsSPEndDisplayList(), // 0x00009068
};

Vtx_t _spot16_room_0_vertices_00009070[27] = 
{
	 { 107, 2881, -3850, 0, 985, -393, 195, 20, 101, 255 }, // 0x00009070
	 { -21, 2858, -3855, 0, 975, -272, 189, 197, 79, 255 }, // 0x00009080
	 { 84, 2810, -3854, 0, 895, -357, 211, 198, 94, 255 }, // 0x00009090
	 { 194, 3313, -3830, 0, 1356, -429, 207, 92, 58, 255 }, // 0x000090A0
	 { 452, 3259, -3642, 0, 880, -680, 216, 89, 69, 255 }, // 0x000090B0
	 { 580, 2904, -4147, 0, 1066, -697, 46, 110, 11, 255 }, // 0x000090C0
	 { -188, 3044, -3848, 0, 1147, -289, 53, 189, 83, 255 }, // 0x000090D0
	 { -129, 3152, -3854, 0, 1338, -322, 90, 255, 78, 255 }, // 0x000090E0
	 { -321, 2999, -3854, 0, 1081, -209, 36, 246, 114, 255 }, // 0x000090F0
	 { -158, 3257, -3839, 0, 1337, -272, 59, 51, 90, 255 }, // 0x00009100
	 { -250, 3305, -3837, 0, 1335, -222, 6, 85, 84, 255 }, // 0x00009110
	 { 84, 2810, -3854, 0, 896, -394, 211, 198, 94, 255 }, // 0x00009120
	 { 246, 2587, -3871, 0, 719, -392, 151, 4, 57, 255 }, // 0x00009130
	 { 959, 2904, -4226, 0, 1094, -982, 245, 71, 95, 255 }, // 0x00009140
	 { 1299, 2904, -4075, 0, 795, -1160, 40, 104, 42, 255 }, // 0x00009150
	 { 1342, 2904, -3759, 0, 664, -1121, 47, 106, 29, 255 }, // 0x00009160
	 { 1048, 2904, -3513, 0, 648, -959, 41, 95, 61, 255 }, // 0x00009170
	 { 749, 3094, -3455, 0, 634, -820, 42, 101, 48, 255 }, // 0x00009180
	 { 853, 2177, -3216, 0, 266, -940, 32, 83, 80, 255 }, // 0x00009190
	 { 2000, 1983, -3723, 0, 330, -1587, 11, 109, 48, 255 }, // 0x000091A0
	 { 28, 2215, -3126, 0, 211, -381, 177, 75, 48, 255 }, // 0x000091B0
	 { -1224, 2583, -3924, 0, 634, 456, 214, 70, 88, 255 }, // 0x000091C0
	 { -351, 2668, -3768, 0, 699, -190, 89, 36, 71, 255 }, // 0x000091D0
	 { -460, 3418, -4300, 0, 1310, 36, 19, 81, 85, 255 }, // 0x000091E0
	 { -380, 2240, -3132, 0, 189, -164, 28, 93, 70, 255 }, // 0x000091F0
	 { -801, 1983, -3193, 0, 164, 94, 212, 98, 52, 255 }, // 0x00009200
	 { -2000, 1983, -3723, 0, 99, 741, 255, 108, 50, 255 }, // 0x00009210
};

Vtx_t _spot16_room_0_vertices_00009220[23] = 
{
	 { -460, 3418, -4300, 0, 1437, 30, 19, 81, 85, 255 }, // 0x00009220
	 { 11, 3983, -4786, 0, 2227, -267, 249, 78, 91, 255 }, // 0x00009230
	 { -671, 3983, -5013, 0, 2163, 379, 202, 77, 74, 255 }, // 0x00009240
	 { 35, 3735, -4553, 0, 1855, -317, 13, 253, 119, 255 }, // 0x00009250
	 { 435, 3733, -4566, 0, 1883, -636, 248, 51, 108, 255 }, // 0x00009260
	 { 954, 3983, -4997, 0, 2317, -1172, 49, 72, 82, 255 }, // 0x00009270
	 { 773, 3423, -4353, 0, 1540, -1004, 21, 77, 89, 255 }, // 0x00009280
	 { -2000, 2583, -4523, 0, 583, 974, 214, 85, 72, 255 }, // 0x00009290
	 { -1224, 2583, -3924, 0, 634, 456, 214, 70, 88, 255 }, // 0x000092A0
	 { -460, 3418, -4300, 0, 1310, 36, 19, 81, 85, 255 }, // 0x000092B0
	 { -1257, 4023, -5723, 0, 2085, 1155, 197, 79, 67, 255 }, // 0x000092C0
	 { -1632, 3535, -5375, 0, 1697, 1239, 219, 83, 77, 255 }, // 0x000092D0
	 { -1632, 3535, -5375, 0, 1309, 1323, 219, 83, 77, 255 }, // 0x000092E0
	 { -3007, 2283, -4667, 0, 532, 1491, 220, 83, 78, 255 }, // 0x000092F0
	 { 959, 2904, -4226, 0, 1094, -982, 245, 71, 95, 255 }, // 0x00009300
	 { 773, 3423, -4353, 0, 1412, -998, 21, 77, 89, 255 }, // 0x00009310
	 { 580, 2904, -4147, 0, 1066, -697, 46, 110, 11, 255 }, // 0x00009320
	 { 194, 3313, -3830, 0, 1356, -429, 207, 92, 58, 255 }, // 0x00009330
	 { 1299, 2904, -4075, 0, 795, -1160, 40, 104, 42, 255 }, // 0x00009340
	 { 2000, 2583, -4523, 0, 853, -1742, 50, 81, 73, 255 }, // 0x00009350
	 { 1554, 4093, -5723, 0, 2394, -1948, 52, 73, 79, 255 }, // 0x00009360
	 { 2020, 3303, -5118, 0, 1643, -2039, 20, 75, 91, 255 }, // 0x00009370
	 { 2980, 2383, -4702, 0, 891, -2130, 251, 115, 31, 255 }, // 0x00009380
};

Vtx_t _spot16_room_0_vertices_00009390[10] = 
{
	 { 954, 3983, -4997, 0, 2317, -1172, 49, 72, 82, 255 }, // 0x00009390
	 { 304, 4623, -5171, 0, 2762, -551, 13, 64, 100, 255 }, // 0x000093A0
	 { 11, 3983, -4786, 0, 2227, -267, 249, 78, 91, 255 }, // 0x000093B0
	 { 772, 4623, -5376, 0, 2826, -1198, 57, 65, 82, 255 }, // 0x000093C0
	 { -690, 4623, -5722, 0, 2621, 871, 185, 70, 65, 255 }, // 0x000093D0
	 { -1257, 4023, -5723, 0, 2085, 1155, 197, 79, 67, 255 }, // 0x000093E0
	 { -671, 3983, -5013, 0, 2163, 379, 202, 77, 74, 255 }, // 0x000093F0
	 { -325, 4623, -5346, 0, 2672, 354, 213, 70, 87, 255 }, // 0x00009400
	 { 1554, 4093, -5723, 0, 2394, -1948, 52, 73, 79, 255 }, // 0x00009410
	 { 1110, 4623, -5722, 0, 2877, -1715, 73, 62, 71, 255 }, // 0x00009420
};

Vtx_t _spot16_room_0_vertices_00009430[32] = 
{
	 { 65, 3327, -4600, 0, 708, -17, 50, 70, 83, 255 }, // 0x00009430
	 { -180, 3463, -4488, 0, -1074, -1215, 33, 229, 112, 255 }, // 0x00009440
	 { -180, 3316, -4488, 0, -1216, -217, 1, 97, 69, 255 }, // 0x00009450
	 { 102, 3457, -4641, 0, 1084, -859, 53, 224, 102, 255 }, // 0x00009460
	 { -180, 3463, -4488, 0, -1074, -1215, 33, 229, 112, 255 }, // 0x00009470
	 { -285, 3311, -4431, 0, -2066, -307, 59, 89, 53, 255 }, // 0x00009480
	 { -285, 3463, -4431, 0, -1885, -1331, 79, 215, 80, 255 }, // 0x00009490
	 { -461, 3303, -4336, 0, -3420, -494, 94, 62, 39, 255 }, // 0x000094A0
	 { -461, 3303, -4336, 0, -3420, -494, 94, 62, 39, 255 }, // 0x000094B0
	 { -460, 3418, -4300, 0, -3406, -1313, 19, 81, 85, 255 }, // 0x000094C0
	 { -133, 3194, -3983, 0, -6872, -467, 35, 111, 26, 255 }, // 0x000094D0
	 { -260, 3193, -3983, 0, -6066, -630, 38, 66, 163, 255 }, // 0x000094E0
	 { -165, 3279, -3963, 0, -6472, -1015, 51, 72, 175, 255 }, // 0x000094F0
	 { -259, 3307, -3957, 0, -6072, -1563, 77, 69, 197, 255 }, // 0x00009500
	 { 773, 3423, -4353, 0, 5647, -1691, 21, 77, 89, 255 }, // 0x00009510
	 { 609, 3394, -4240, 0, 6147, -529, 181, 91, 237, 255 }, // 0x00009520
	 { 194, 3313, -3830, 0, 10019, 1644, 207, 92, 58, 255 }, // 0x00009530
	 { 272, 3484, -4537, 0, 2373, -1187, 174, 233, 84, 255 }, // 0x00009540
	 { 313, 3327, -4511, 0, 2649, -96, 218, 95, 62, 255 }, // 0x00009550
	 { 579, 3376, -4446, 0, 4531, -368, 167, 10, 80, 255 }, // 0x00009560
	 { 569, 3317, -4442, 0, 4457, 38, 174, 18, 85, 255 }, // 0x00009570
	 { 611, 3443, -4413, 0, 4830, -835, 200, 51, 93, 255 }, // 0x00009580
	 { 579, 3376, -4446, 0, 4531, -368, 167, 10, 80, 255 }, // 0x00009590
	 { 608, 3280, -4284, 0, 5503, 494, 139, 20, 239, 255 }, // 0x000095A0
	 { 611, 3443, -4413, 0, 4830, -835, 200, 51, 93, 255 }, // 0x000095B0
	 { 152, 3313, -3924, 0, 9193, 1816, 164, 75, 242, 255 }, // 0x000095C0
	 { 139, 3198, -3983, 0, 8741, 2578, 161, 45, 56, 255 }, // 0x000095D0
	 { 435, 3733, -4566, 0, 3409, -2939, 248, 51, 108, 255 }, // 0x000095E0
	 { 272, 3484, -4537, 0, 2373, -1187, 174, 233, 84, 255 }, // 0x000095F0
	 { 435, 3733, -4566, 0, 3409, -2939, 248, 51, 108, 255 }, // 0x00009600
	 { 179, 3536, -4564, 0, 1710, -1540, 225, 217, 109, 255 }, // 0x00009610
	 { 239, 3525, -4551, 0, 2042, -1363, 203, 234, 105, 255 }, // 0x00009620
};

Vtx_t _spot16_room_0_vertices_00009630[32] = 
{
	 { 179, 3536, -4564, 0, 1710, -1540, 225, 217, 109, 255 }, // 0x00009630
	 { 435, 3733, -4566, 0, 3409, -2939, 248, 51, 108, 255 }, // 0x00009640
	 { 35, 3735, -4553, 0, 679, -2860, 13, 253, 119, 255 }, // 0x00009650
	 { -180, 3463, -4488, 0, -1074, -1215, 33, 229, 112, 255 }, // 0x00009660
	 { 102, 3457, -4641, 0, 1084, -859, 53, 224, 102, 255 }, // 0x00009670
	 { -285, 3463, -4431, 0, -1885, -1331, 79, 215, 80, 255 }, // 0x00009680
	 { -180, 3463, -4488, 0, -1074, -1215, 33, 229, 112, 255 }, // 0x00009690
	 { -460, 3418, -4300, 0, -3406, -1313, 19, 81, 85, 255 }, // 0x000096A0
	 { 35, 3735, -4553, 0, 679, -2860, 13, 253, 119, 255 }, // 0x000096B0
	 { 102, 3457, -4641, 0, 1084, -859, 53, 224, 102, 255 }, // 0x000096C0
	 { 133, 3517, -4605, 0, 1397, -1200, 235, 201, 104, 255 }, // 0x000096D0
	 { 179, 3536, -4564, 0, 1710, -1540, 225, 217, 109, 255 }, // 0x000096E0
	 { -250, 3305, -3837, 0, -7486, -2321, 6, 85, 84, 255 }, // 0x000096F0
	 { -259, 3307, -3957, 0, -6072, -1563, 77, 69, 197, 255 }, // 0x00009700
	 { -260, 3193, -3983, 0, -6066, -630, 38, 66, 163, 255 }, // 0x00009710
	 { -461, 3303, -4336, 0, -3420, -494, 94, 62, 39, 255 }, // 0x00009720
	 { -259, 3307, -3957, 0, -6072, -1563, 77, 69, 197, 255 }, // 0x00009730
	 { -460, 3418, -4300, 0, -3406, -1313, 19, 81, 85, 255 }, // 0x00009740
	 { 609, 3394, -4240, 0, 6147, -529, 181, 91, 237, 255 }, // 0x00009750
	 { 773, 3423, -4353, 0, 5647, -1691, 21, 77, 89, 255 }, // 0x00009760
	 { 611, 3443, -4413, 0, 4830, -835, 200, 51, 93, 255 }, // 0x00009770
	 { 127, 2728, -3983, 0, -7436, 502, 201, 199, 89, 255 }, // 0x00009780
	 { 162, 2427, -3983, 0, -6101, 2085, 211, 60, 94, 255 }, // 0x00009790
	 { 246, 2587, -3871, 0, -5969, 638, 151, 4, 57, 255 }, // 0x000097A0
	 { 84, 2810, -3854, 0, -7406, -580, 211, 198, 94, 255 }, // 0x000097B0
	 { -21, 2858, -3855, 0, -8095, -961, 189, 197, 79, 255 }, // 0x000097C0
	 { 20, 2771, -3983, 0, -8129, 132, 227, 223, 111, 255 }, // 0x000097D0
	 { -39, 2867, -3983, 0, -8728, -343, 208, 12, 109, 255 }, // 0x000097E0
	 { -21, 2878, -3854, 0, -8191, -1056, 186, 65, 72, 255 }, // 0x000097F0
	 { 139, 3198, -3983, 0, 8741, 2578, 161, 45, 56, 255 }, // 0x00009800
	 { 107, 2881, -3850, 0, 9425, 4833, 195, 20, 101, 255 }, // 0x00009810
	 { 194, 3313, -3830, 0, 10019, 1644, 207, 92, 58, 255 }, // 0x00009820
};

Vtx_t _spot16_room_0_vertices_00009830[30] = 
{
	 { 139, 3198, -3983, 0, 8741, 2578, 161, 45, 56, 255 }, // 0x00009830
	 { 111, 2867, -3983, 0, 8513, 4833, 186, 75, 61, 255 }, // 0x00009840
	 { 107, 2881, -3850, 0, 9425, 4833, 195, 20, 101, 255 }, // 0x00009850
	 { 139, 3198, -3983, 0, 8741, 2578, 161, 45, 56, 255 }, // 0x00009860
	 { 194, 3313, -3830, 0, 10019, 1644, 207, 92, 58, 255 }, // 0x00009870
	 { 152, 3313, -3924, 0, 9193, 1816, 164, 75, 242, 255 }, // 0x00009880
	 { -125, 3030, -3983, 0, -7225, 596, 61, 226, 98, 255 }, // 0x00009890
	 { -133, 3194, -3983, 0, -6872, -467, 35, 111, 26, 255 }, // 0x000098A0
	 { -129, 3152, -3854, 0, -7797, -470, 90, 255, 78, 255 }, // 0x000098B0
	 { -188, 3044, -3848, 0, -8192, 273, 53, 189, 83, 255 }, // 0x000098C0
	 { -317, 2901, -3983, 0, -8192, 1911, 63, 225, 97, 255 }, // 0x000098D0
	 { -317, 2901, -3983, 0, 14336, -2185, 63, 225, 97, 255 }, // 0x000098E0
	 { -188, 3044, -3848, 0, 14336, -3823, 53, 189, 83, 255 }, // 0x000098F0
	 { -321, 2999, -3854, 0, 13707, -3098, 36, 246, 114, 255 }, // 0x00009900
	 { -296, 2603, -3875, 0, 13129, -446, 83, 53, 67, 255 }, // 0x00009910
	 { -262, 2586, -3983, 0, 13800, -182, 44, 53, 98, 255 }, // 0x00009920
	 { -351, 2668, -3768, 0, 12613, -782, 89, 36, 71, 255 }, // 0x00009930
	 { -293, 2387, -3904, 0, 12860, 1020, 60, 15, 102, 255 }, // 0x00009940
	 { -38, 2586, -3983, 0, 15598, -26, 56, 58, 88, 255 }, // 0x00009950
	 { -46, 2507, -3847, 0, 14706, 509, 52, 11, 107, 255 }, // 0x00009960
	 { -4, 2390, -3903, 0, 14790, 1433, 45, 88, 67, 255 }, // 0x00009970
	 { -1, 2424, -3983, 0, 16032, 1024, 54, 64, 85, 255 }, // 0x00009980
	 { -83, 2596, -3869, 0, 14559, -155, 47, 89, 64, 255 }, // 0x00009990
	 { -21, 2858, -3855, 0, -8095, -961, 189, 197, 79, 255 }, // 0x000099A0
	 { 107, 2881, -3850, 0, -7589, -1691, 195, 20, 101, 255 }, // 0x000099B0
	 { -21, 2878, -3854, 0, -8191, -1056, 186, 65, 72, 255 }, // 0x000099C0
	 { -165, 3279, -3963, 0, -6472, -1015, 51, 72, 175, 255 }, // 0x000099D0
	 { -158, 3257, -3839, 0, -7642, -1395, 59, 51, 90, 255 }, // 0x000099E0
	 { -259, 3307, -3957, 0, -6072, -1563, 77, 69, 197, 255 }, // 0x000099F0
	 { -250, 3305, -3837, 0, -7486, -2321, 6, 85, 84, 255 }, // 0x00009A00
};

Vtx_t _spot16_room_0_vertices_00009A10[12] = 
{
	 { -317, 2901, -3983, 0, -4728, -60, 63, 225, 97, 255 }, // 0x00009A10
	 { -39, 2867, -3983, 0, 21, 529, 208, 12, 109, 255 }, // 0x00009A20
	 { -125, 3030, -3983, 0, -1450, -2275, 61, 226, 98, 255 }, // 0x00009A30
	 { 20, 2771, -3983, 0, 1024, 2161, 227, 223, 111, 255 }, // 0x00009A40
	 { -262, 2586, -3983, 0, -3788, 5335, 44, 53, 98, 255 }, // 0x00009A50
	 { -38, 2586, -3983, 0, 34, 5328, 56, 58, 88, 255 }, // 0x00009A60
	 { 127, 2728, -3983, 0, 2845, 2902, 201, 199, 89, 255 }, // 0x00009A70
	 { 162, 2427, -3983, 0, 3450, 8057, 211, 60, 94, 255 }, // 0x00009A80
	 { -1, 2424, -3983, 0, 661, 8105, 54, 64, 85, 255 }, // 0x00009A90
	 { 111, 2867, -3983, 0, 2566, 525, 186, 75, 61, 255 }, // 0x00009AA0
	 { 139, 3198, -3983, 0, 3043, -5139, 161, 45, 56, 255 }, // 0x00009AB0
	 { -133, 3194, -3983, 0, -1596, -5082, 35, 111, 26, 255 }, // 0x00009AC0
};

Vtx_t _spot16_room_0_vertices_00009AD0[8] = 
{
	 { -5940, 2367, -5124, 0, 2760, 1024, 74, 220, 87, 255 }, // 0x00009AD0
	 { -2751, 2367, -7857, 0, -1767, 1024, 74, 220, 87, 255 }, // 0x00009AE0
	 { -2556, 3321, -7630, 0, -1767, 0, 74, 220, 87, 255 }, // 0x00009AF0
	 { -5745, 3321, -4897, 0, 2760, 0, 74, 220, 87, 255 }, // 0x00009B00
	 { 2162, 3383, -6574, 0, -2393, 0, 212, 0, 111, 255 }, // 0x00009B10
	 { 2162, 2383, -6574, 0, -2393, 1024, 212, 0, 111, 255 }, // 0x00009B20
	 { 5505, 2383, -5237, 0, 2523, 1024, 212, 0, 111, 255 }, // 0x00009B30
	 { 5505, 3383, -5237, 0, 2523, 0, 212, 0, 111, 255 }, // 0x00009B40
};

Vtx_t _spot16_room_0_vertices_00009B50[8] = 
{
	 { -5940, 1654, -5124, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009B50
	 { 4130, 1654, -1459, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009B60
	 { -4467, 2413, -9169, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009B70
	 { 5602, 2413, -5504, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009B80
	 { -6091, 4170, -4708, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009B90
	 { 3978, 4170, -1043, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009BA0
	 { -4619, 4928, -8752, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009BB0
	 { 5450, 4928, -5087, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009BC0
};

Gfx _spot16_room_0_dlist_00009BD0[] =
{
	gsDPPipeSync(), // 0x00009BD0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00009BD8
	gsSPVertex(_spot16_room_0_vertices_00009B50, 8, 0), // 0x00009BE0
	gsSPCullDisplayList(0, 7), // 0x00009BE8
	gsDPPipeSync(), // 0x00009BF0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00009BF8
	gsDPPipeSync(), // 0x00009C00
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00009C08
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00009C10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00018E98), // 0x00009C18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00009C20
	gsDPLoadSync(), // 0x00009C28
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00009C30
	gsDPPipeSync(), // 0x00009C38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00009C40
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00009C48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00018698), // 0x00009C50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 14, 0, 5, 14), // 0x00009C58
	gsDPLoadSync(), // 0x00009C60
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00009C68
	gsDPPipeSync(), // 0x00009C70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 14, 0, 5, 14), // 0x00009C78
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00009C80
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00009C88
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00009C90
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00009C98
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00009CA0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00009CA8
	gsDPSetEnvColor(0, 0, 0, 88), // 0x00009CB0
	gsSPVertex(_spot16_room_0_vertices_00009070, 27, 0), // 0x00009CB8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00009CC0
	gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0), // 0x00009CC8
	gsSP2Triangles(9, 10, 8, 0, 0, 11, 12, 0), // 0x00009CD0
	gsSP2Triangles(13, 5, 14, 0, 5, 15, 14, 0), // 0x00009CD8
	gsSP2Triangles(5, 16, 15, 0, 5, 17, 16, 0), // 0x00009CE0
	gsSP2Triangles(5, 4, 17, 0, 18, 19, 15, 0), // 0x00009CE8
	gsSP2Triangles(18, 15, 16, 0, 20, 18, 16, 0), // 0x00009CF0
	gsSP2Triangles(20, 16, 17, 0, 4, 20, 17, 0), // 0x00009CF8
	gsSP2Triangles(4, 12, 20, 0, 4, 0, 12, 0), // 0x00009D00
	gsSP2Triangles(3, 0, 4, 0, 21, 22, 8, 0), // 0x00009D08
	gsSP2Triangles(21, 8, 10, 0, 21, 10, 23, 0), // 0x00009D10
	gsSP2Triangles(22, 21, 24, 0, 25, 24, 21, 0), // 0x00009D18
	gsSP1Triangle(26, 25, 21, 0), // 0x00009D20
	gsSPDisplayList(_spot16_room_0_dlist_00007F58), // 0x00009D28
	gsSPDisplayList(_spot16_room_0_dlist_000085A0), // 0x00009D30
	gsDPPipeSync(), // 0x00009D38
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00009D40
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00009D48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0001DE98), // 0x00009D50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00009D58
	gsDPLoadSync(), // 0x00009D60
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00009D68
	gsDPPipeSync(), // 0x00009D70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00009D78
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00009D80
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00009D88
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00009D90
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00009D98
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00009DA0
	gsDPSetPrimColor(0, 0, 242, 227, 180, 255), // 0x00009DA8
	gsSPVertex(_spot16_room_0_vertices_00009220, 23, 0), // 0x00009DB0
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0), // 0x00009DB8
	gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0), // 0x00009DC0
	gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0), // 0x00009DC8
	gsSP2Triangles(7, 0, 2, 0, 2, 10, 7, 0), // 0x00009DD0
	gsSP2Triangles(10, 11, 7, 0, 12, 13, 7, 0), // 0x00009DD8
	gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0), // 0x00009DE0
	gsSP2Triangles(15, 18, 19, 0, 15, 14, 18, 0), // 0x00009DE8
	gsSP2Triangles(19, 5, 6, 0, 19, 20, 5, 0), // 0x00009DF0
	gsSP2Triangles(20, 19, 21, 0, 19, 22, 21, 0), // 0x00009DF8
	gsDPPipeSync(), // 0x00009E00
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00014D98), // 0x00009E08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00009E10
	gsDPLoadSync(), // 0x00009E18
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00009E20
	gsDPPipeSync(), // 0x00009E28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00009E30
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00009E38
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00009E40
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00009E48
	gsSPVertex(_spot16_room_0_vertices_00009390, 10, 0), // 0x00009E50
	gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0), // 0x00009E58
	gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0), // 0x00009E60
	gsSP2Triangles(6, 2, 7, 0, 2, 1, 7, 0), // 0x00009E68
	gsSP2Triangles(0, 8, 9, 0, 0, 9, 3, 0), // 0x00009E70
	gsDPPipeSync(), // 0x00009E78
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x00009E80
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00009E88
	gsDPLoadSync(), // 0x00009E90
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00009E98
	gsDPPipeSync(), // 0x00009EA0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00009EA8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00009EB0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00009EB8
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x00009EC0
	gsSPVertex(_spot16_room_0_vertices_00009430, 32, 0), // 0x00009EC8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x00009ED0
	gsSP2Triangles(5, 6, 7, 0, 8, 6, 9, 0), // 0x00009ED8
	gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0), // 0x00009EE0
	gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0), // 0x00009EE8
	gsSP2Triangles(18, 20, 19, 0, 21, 17, 22, 0), // 0x00009EF0
	gsSP2Triangles(22, 20, 23, 0, 22, 23, 15, 0), // 0x00009EF8
	gsSP2Triangles(24, 22, 15, 0, 25, 16, 15, 0), // 0x00009F00
	gsSP2Triangles(23, 26, 15, 0, 26, 25, 15, 0), // 0x00009F08
	gsSP2Triangles(27, 28, 24, 0, 14, 29, 24, 0), // 0x00009F10
	gsSP2Triangles(30, 31, 29, 0, 31, 17, 29, 0), // 0x00009F18
	gsSPVertex(_spot16_room_0_vertices_00009630, 32, 0), // 0x00009F20
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00009F28
	gsSP2Triangles(5, 6, 2, 0, 7, 5, 8, 0), // 0x00009F30
	gsSP2Triangles(9, 10, 2, 0, 10, 11, 2, 0), // 0x00009F38
	gsSP2Triangles(7, 12, 13, 0, 14, 15, 16, 0), // 0x00009F40
	gsSP2Triangles(15, 17, 16, 0, 18, 19, 20, 0), // 0x00009F48
	gsSP2Triangles(21, 22, 23, 0, 23, 24, 21, 0), // 0x00009F50
	gsSP2Triangles(21, 24, 25, 0, 26, 21, 25, 0), // 0x00009F58
	gsSP2Triangles(27, 26, 25, 0, 27, 25, 28, 0), // 0x00009F60
	gsSP1Triangle(29, 30, 31, 0), // 0x00009F68
	gsSPVertex(_spot16_room_0_vertices_00009830, 30, 0), // 0x00009F70
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00009F78
	gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0), // 0x00009F80
	gsSP2Triangles(10, 6, 9, 0, 11, 12, 13, 0), // 0x00009F88
	gsSP2Triangles(14, 15, 11, 0, 14, 11, 13, 0), // 0x00009F90
	gsSP2Triangles(13, 16, 14, 0, 14, 16, 17, 0), // 0x00009F98
	gsSP2Triangles(18, 19, 20, 0, 20, 21, 18, 0), // 0x00009FA0
	gsSP2Triangles(18, 22, 19, 0, 17, 20, 19, 0), // 0x00009FA8
	gsSP2Triangles(19, 22, 14, 0, 14, 17, 19, 0), // 0x00009FB0
	gsSP2Triangles(23, 24, 25, 0, 7, 26, 27, 0), // 0x00009FB8
	gsSP2Triangles(7, 27, 8, 0, 26, 28, 29, 0), // 0x00009FC0
	gsSP1Triangle(26, 29, 27, 0), // 0x00009FC8
	gsDPPipeSync(), // 0x00009FD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0000E198), // 0x00009FD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00009FE0
	gsDPLoadSync(), // 0x00009FE8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00009FF0
	gsDPPipeSync(), // 0x00009FF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000A000
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000A008
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x0000A010
	gsDPSetPrimColor(0, 0, 124, 127, 133, 255), // 0x0000A018
	gsSPVertex(_spot16_room_0_vertices_00009A10, 12, 0), // 0x0000A020
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x0000A028
	gsSP2Triangles(0, 4, 3, 0, 5, 3, 4, 0), // 0x0000A030
	gsSP2Triangles(5, 6, 3, 0, 7, 5, 8, 0), // 0x0000A038
	gsSP2Triangles(5, 7, 6, 0, 1, 9, 10, 0), // 0x0000A040
	gsSP2Triangles(2, 1, 10, 0, 2, 10, 11, 0), // 0x0000A048
	gsSPDisplayList(_spot16_room_0_dlist_00009038), // 0x0000A050
	gsDPPipeSync(), // 0x0000A058
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000A060
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000A068
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015E98), // 0x0000A070
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 7, 0), // 0x0000A078
	gsDPLoadSync(), // 0x0000A080
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x0000A088
	gsDPPipeSync(), // 0x0000A090
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 16, 0, 0, 0, 2, 5, 0, 0, 7, 0), // 0x0000A098
	gsDPSetTileSize(0, 0, 0, 508, 124), // 0x0000A0A0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000A0A8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x0000A0B0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x0000A0B8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x0000A0C0
	gsDPSetPrimColor(0, 0, 242, 227, 180, 255), // 0x0000A0C8
	gsSPVertex(_spot16_room_0_vertices_00009AD0, 8, 0), // 0x0000A0D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A0D8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000A0E0
	gsSPEndDisplayList(), // 0x0000A0E8
};

Vtx_t _spot16_room_0_vertices_0000A0F0[13] = 
{
	 { -649, -282, 2807, 0, -1200, 1261, 56, 81, 188, 255 }, // 0x0000A0F0
	 { -725, 379, 2816, 0, 75, 1261, 79, 71, 54, 255 }, // 0x0000A100
	 { -492, -157, 2962, 0, -943, 835, 254, 117, 232, 255 }, // 0x0000A110
	 { -1015, -162, 2332, 0, -1230, 2048, 79, 80, 215, 255 }, // 0x0000A120
	 { -1015, 638, 2332, 0, 355, 2048, 64, 88, 50, 255 }, // 0x0000A130
	 { -725, 379, 2816, 0, 83, 1034, 79, 71, 54, 255 }, // 0x0000A140
	 { -649, -282, 2807, 0, -1191, 1034, 56, 81, 188, 255 }, // 0x0000A150
	 { -277, -268, 2761, 0, 356, 4011, 185, 95, 15, 255 }, // 0x0000A160
	 { -77, 44, 2761, 0, -661, 3657, 165, 77, 0, 255 }, // 0x0000A170
	 { 157, -129, 2260, 0, -1163, 5266, 196, 98, 223, 255 }, // 0x0000A180
	 { 357, 437, 2761, 0, 480, 3123, 176, 89, 0, 255 }, // 0x0000A190
	 { 157, 271, 2260, 0, 0, 2048, 186, 77, 197, 255 }, // 0x0000A1A0
	 { 157, -129, 2260, 0, -1163, 2048, 196, 98, 223, 255 }, // 0x0000A1B0
};

Vtx_t _spot16_room_0_vertices_0000A1C0[8] = 
{
	 { 92, -431, 2137, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A1C0
	 { 216, -431, 2837, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A1D0
	 { 243, 437, 2110, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A1E0
	 { 366, 437, 2811, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A1F0
	 { -1162, -207, 2358, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A200
	 { -1038, -207, 3058, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A210
	 { -1011, 661, 2331, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A220
	 { -888, 661, 3032, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A230
};

Gfx _spot16_room_0_dlist_0000A240[] =
{
	gsDPPipeSync(), // 0x0000A240
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000A248
	gsSPVertex(_spot16_room_0_vertices_0000A1C0, 8, 0), // 0x0000A250
	gsSPCullDisplayList(0, 7), // 0x0000A258
	gsDPPipeSync(), // 0x0000A260
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000A268
	gsDPPipeSync(), // 0x0000A270
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000A278
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000A280
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015598), // 0x0000A288
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x0000A290
	gsDPLoadSync(), // 0x0000A298
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A2A0
	gsDPPipeSync(), // 0x0000A2A8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x0000A2B0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000A2B8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000A2C0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x0000A2C8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x0000A2D0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x0000A2D8
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x0000A2E0
	gsSPVertex(_spot16_room_0_vertices_0000A0F0, 13, 0), // 0x0000A2E8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000A2F0
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x0000A2F8
	gsSP2Triangles(8, 10, 11, 0, 8, 11, 12, 0), // 0x0000A300
	gsSPEndDisplayList(), // 0x0000A308
};

static u8 unaccountedA310[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2A, 0x78, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x47, 0x88, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5B, 0x98, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x60, 0xE0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x66, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x72, 0x00, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x7C, 0x78, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x9B, 0xD0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA2, 0x40, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

Vtx_t _spot16_room_0_vertices_0000A360[15] = 
{
	 { -1730, 684, -2599, 0, 0, 512, 101, 64, 4, 255 }, // 0x0000A360
	 { -1773, 677, -1336, 0, 512, 512, 98, 68, 5, 255 }, // 0x0000A370
	 { -1541, 691, -2595, 0, 0, 0, 195, 103, 1, 255 }, // 0x0000A380
	 { -1538, 677, -1331, 0, 512, 0, 137, 253, 1, 255 }, // 0x0000A390
	 { -1541, 691, -2595, 0, 0, 512, 195, 103, 1, 255 }, // 0x0000A3A0
	 { -1538, 677, -1331, 0, 512, 512, 137, 253, 1, 255 }, // 0x0000A3B0
	 { -1602, 769, -2597, 0, 0, 0, 182, 163, 1, 255 }, // 0x0000A3C0
	 { -1595, 798, -1344, 0, 512, 0, 196, 153, 2, 255 }, // 0x0000A3D0
	 { -1602, 769, -2597, 0, 0, 0, 182, 163, 1, 255 }, // 0x0000A3E0
	 { -1740, 788, -1347, 0, 512, 512, 75, 163, 5, 255 }, // 0x0000A3F0
	 { -1686, 770, -2597, 0, 0, 512, 89, 176, 4, 255 }, // 0x0000A400
	 { -1686, 770, -2597, 0, 0, 0, 89, 176, 4, 255 }, // 0x0000A410
	 { -1773, 677, -1336, 0, 512, 512, 98, 68, 5, 255 }, // 0x0000A420
	 { -1730, 684, -2599, 0, 0, 512, 101, 64, 4, 255 }, // 0x0000A430
	 { -1740, 788, -1347, 0, 512, 0, 75, 163, 5, 255 }, // 0x0000A440
};

Gfx _spot16_room_0_dlist_0000A450[] =
{
	gsDPPipeSync(), // 0x0000A450
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000A458
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000A460
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015D98), // 0x0000A468
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 4, 0), // 0x0000A470
	gsDPLoadSync(), // 0x0000A478
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x0000A480
	gsDPPipeSync(), // 0x0000A488
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 4, 0, 2, 4, 0), // 0x0000A490
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x0000A498
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000A4A0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x0000A4A8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x0000A4B0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x0000A4B8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000A4C0
	gsSPVertex(_spot16_room_0_vertices_0000A360, 15, 0), // 0x0000A4C8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x0000A4D0
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x0000A4D8
	gsSP2Triangles(8, 7, 9, 0, 8, 9, 10, 0), // 0x0000A4E0
	gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0), // 0x0000A4E8
	gsSPEndDisplayList(), // 0x0000A4F0
};

Vtx_t _spot16_room_0_vertices_0000A4F8[1] = 
{
	 { -1668, 844, -700, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A4F8
};

Gfx _spot16_room_0_dlist_0000A508[] =
{
	gsSPVertex(_spot16_room_0_vertices_0000A4F8, 1, 0), // 0x0000A508
	gsSPBranchLessZraw(_spot16_room_0_dlist_0000A450, 0x00, 0x960), // 0x0000A518
	gsSPEndDisplayList(), // 0x0000A520
};

Vtx_t _spot16_room_0_vertices_0000A528[8] = 
{
	 { -1773, 677, -2599, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A528
	 { -1538, 677, -2599, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A538
	 { -1773, 798, -2599, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A548
	 { -1538, 798, -2599, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A558
	 { -1773, 677, -1331, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A568
	 { -1538, 677, -1331, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A578
	 { -1773, 798, -1331, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A588
	 { -1538, 798, -1331, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A598
};

Gfx _spot16_room_0_dlist_0000A5A8[] =
{
	gsDPPipeSync(), // 0x0000A5A8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000A5B0
	gsSPVertex(_spot16_room_0_vertices_0000A528, 8, 0), // 0x0000A5B8
	gsSPCullDisplayList(0, 7), // 0x0000A5C0
	gsDPPipeSync(), // 0x0000A5C8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000A5D0
	gsSPDisplayList(_spot16_room_0_dlist_0000A508), // 0x0000A5D8
	gsSPEndDisplayList(), // 0x0000A5E0
};

Vtx_t _spot16_room_0_vertices_0000A5E8[9] = 
{
	 { -291, 295, 580, 0, 463, 582, 143, 39, 7, 255 }, // 0x0000A5E8
	 { -6, 240, -562, 0, 18, 932, 2, 106, 54, 255 }, // 0x0000A5F8
	 { -384, 36, 380, 0, 18, 0, 62, 95, 38, 255 }, // 0x0000A608
	 { -234, 539, -190, 0, 485, 468, 111, 18, 42, 255 }, // 0x0000A618
	 { -510, 295, 580, 0, 446, -295, 112, 32, 28, 255 }, // 0x0000A628
	 { -469, 191, 1215, 0, 399, -843, 77, 91, 4, 255 }, // 0x0000A638
	 { -375, 128, 1313, 0, 431, -131, 247, 118, 13, 255 }, // 0x0000A648
	 { 253, 656, -979, 0, 416, 1442, 142, 35, 5, 255 }, // 0x0000A658
	 { 54, 656, -979, 0, 434, 1349, 93, 39, 64, 255 }, // 0x0000A668
};

Vtx_t _spot16_room_0_vertices_0000A678[8] = 
{
	 { -719, -111, 1142, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A678
	 { -360, -111, 1273, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A688
	 { 97, 310, -1101, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A698
	 { 456, 310, -970, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A6A8
	 { -742, 277, 1207, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A6B8
	 { -384, 277, 1337, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A6C8
	 { 74, 698, -1037, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A6D8
	 { 433, 698, -906, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A6E8
};

Gfx _spot16_room_0_dlist_0000A6F8[] =
{
	gsDPPipeSync(), // 0x0000A6F8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000A700
	gsSPVertex(_spot16_room_0_vertices_0000A678, 8, 0), // 0x0000A708
	gsSPCullDisplayList(0, 7), // 0x0000A710
	gsDPPipeSync(), // 0x0000A718
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000A720
	gsDPPipeSync(), // 0x0000A728
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000A730
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000A738
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015D98), // 0x0000A740
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 4, 0), // 0x0000A748
	gsDPLoadSync(), // 0x0000A750
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x0000A758
	gsDPPipeSync(), // 0x0000A760
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 4, 0, 2, 4, 0), // 0x0000A768
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x0000A770
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000A778
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104DD8), // 0x0000A780
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x0000A788
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x0000A790
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x0000A798
	gsSPVertex(_spot16_room_0_vertices_0000A5E8, 9, 0), // 0x0000A7A0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x0000A7A8
	gsSP2Triangles(4, 5, 2, 0, 5, 6, 2, 0), // 0x0000A7B0
	gsSP2Triangles(6, 0, 2, 0, 0, 7, 1, 0), // 0x0000A7B8
	gsSP2Triangles(7, 8, 1, 0, 8, 3, 1, 0), // 0x0000A7C0
	gsSP1Triangle(3, 2, 1, 0), // 0x0000A7C8
	gsSPEndDisplayList(), // 0x0000A7D0
};

Vtx_t _spot16_room_0_vertices_0000A7D8[4] = 
{
	 { -133, 1500, -406, 0, 12699, 2048, 138, 0, 239, 255 }, // 0x0000A7D8
	 { -132, 1559, -417, 0, 12357, 0, 138, 0, 239, 255 }, // 0x0000A7E8
	 { -4, 1388, -1297, 0, -18549, 0, 138, 0, 239, 255 }, // 0x0000A7F8
	 { -7, 1331, -1276, 0, -17867, 2048, 138, 0, 239, 255 }, // 0x0000A808
};

Vtx_t _spot16_room_0_vertices_0000A818[5] = 
{
	 { -410, 1173, -2836, 0, -508, 243, 0, 14, 119, 255 }, // 0x0000A818
	 { -520, 1202, -2339, 0, 512, 384, 84, 85, 5, 255 }, // 0x0000A828
	 { -300, 1202, -2339, 0, 512, 102, 172, 85, 5, 255 }, // 0x0000A838
	 { -300, 1402, -2339, 0, 512, 102, 180, 168, 28, 255 }, // 0x0000A848
	 { -520, 1402, -2339, 0, 512, 384, 77, 169, 28, 255 }, // 0x0000A858
};

Vtx_t _spot16_room_0_vertices_0000A868[8] = 
{
	 { -420, 1096, -2834, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A868
	 { 4, 1096, -430, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A878
	 { -256, 1384, -2863, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A888
	 { 168, 1384, -459, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A898
	 { -718, 1270, -2782, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A8A8
	 { -294, 1270, -378, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A8B8
	 { -554, 1559, -2811, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A8C8
	 { -130, 1559, -407, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A8D8
};

Gfx _spot16_room_0_dlist_0000A8E8[] =
{
	gsDPPipeSync(), // 0x0000A8E8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000A8F0
	gsSPVertex(_spot16_room_0_vertices_0000A868, 8, 0), // 0x0000A8F8
	gsSPCullDisplayList(0, 7), // 0x0000A900
	gsDPPipeSync(), // 0x0000A908
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000A910
	gsDPPipeSync(), // 0x0000A918
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000A920
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000A928
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0001B698), // 0x0000A930
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 6, 0), // 0x0000A938
	gsDPLoadSync(), // 0x0000A940
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x0000A948
	gsDPPipeSync(), // 0x0000A950
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 6, 0, 0, 6, 0), // 0x0000A958
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x0000A960
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000A968
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x0000A970
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x0000A978
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000A980
	gsDPSetPrimColor(0, 0, 140, 127, 97, 255), // 0x0000A988
	gsSPVertex(_spot16_room_0_vertices_0000A7D8, 4, 0), // 0x0000A990
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A998
	gsDPPipeSync(), // 0x0000A9A0
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00015D98), // 0x0000A9A8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 4, 0), // 0x0000A9B0
	gsDPLoadSync(), // 0x0000A9B8
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x0000A9C0
	gsDPPipeSync(), // 0x0000A9C8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 4, 0, 2, 4, 0), // 0x0000A9D0
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x0000A9D8
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x0000A9E0
	gsSPVertex(_spot16_room_0_vertices_0000A818, 5, 0), // 0x0000A9E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A9F0
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 1, 0), // 0x0000A9F8
	gsSPEndDisplayList(), // 0x0000AA00
};

static u8 unaccountedAA08[] = 
{
	0xFF, 0xD6, 0xFF, 0x43, 0x0B, 0x8C, 0x00, 0x00, 0x01, 0x47, 0x06, 0xED, 0xF0, 0xA0, 0x35, 0xFF, 
	0xFD, 0xB1, 0xFF, 0x38, 0x0B, 0xF1, 0x00, 0x00, 0x07, 0xD7, 0x06, 0x91, 0xF0, 0xA0, 0x35, 0xFF, 
	0xFE, 0x1E, 0xFF, 0xC2, 0x0D, 0x93, 0x00, 0x00, 0x07, 0x67, 0x02, 0x02, 0xF0, 0xA0, 0x35, 0xFF, 
	0x00, 0x44, 0xFF, 0xCD, 0x0D, 0x2D, 0x00, 0x00, 0x00, 0xD7, 0x02, 0x5E, 0xF0, 0xA0, 0x35, 0xFF, 
	0xE7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFD, 0x90, 0x00, 0x00, 0x02, 0x01, 0xAE, 0x98, 
	0xF5, 0x90, 0x00, 0x00, 0x07, 0x09, 0x82, 0x60, 0xE6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0xF3, 0x00, 0x00, 0x00, 0x07, 0x3F, 0xF2, 0x00, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0xF5, 0x80, 0x08, 0x00, 0x00, 0x09, 0x82, 0x60, 0xF2, 0x00, 0x00, 0x00, 0x00, 0x0F, 0xC0, 0xFC, 
	0xFC, 0x12, 0x18, 0x03, 0xFF, 0x0F, 0xFF, 0xFF, 0xE2, 0x00, 0x00, 0x1C, 0x0C, 0x18, 0x49, 0xD8, 
	0xD9, 0xFC, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x40, 0x08, 0x03, 0x00, 0xAA, 0x08, 
	0x06, 0x00, 0x02, 0x04, 0x00, 0x00, 0x04, 0x06, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

Vtx_t _spot16_room_0_vertices_0000AAB8[4] = 
{
	 { 504, 32, 3532, 0, 0, 0, 247, 114, 221, 255 }, // 0x0000AAB8
	 { 284, -246, 2692, 0, 0, 2048, 247, 114, 221, 255 }, // 0x0000AAC8
	 { -230, -266, 2755, 0, 1024, 2048, 247, 114, 221, 255 }, // 0x0000AAD8
	 { -55, 21, 3635, 0, 1024, 0, 247, 114, 221, 255 }, // 0x0000AAE8
};

Vtx_t _spot16_room_0_vertices_0000AAF8[5] = 
{
	 { -230, -266, 2755, 0, 0, 2048, 247, 114, 221, 255 }, // 0x0000AAF8
	 { -772, -287, 2822, 0, 1024, 2048, 247, 114, 221, 255 }, // 0x0000AB08
	 { -615, 10, 3739, 0, 1024, 0, 247, 114, 221, 255 }, // 0x0000AB18
	 { -55, 21, 3635, 0, 0, 0, 247, 114, 221, 255 }, // 0x0000AB28
	 { -1009, -69, 3582, 0, 666, 512, 247, 114, 221, 255 }, // 0x0000AB38
};

Vtx_t _spot16_room_0_vertices_0000AB48[8] = 
{
	 { -1009, -376, 2739, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AB48
	 { 504, -376, 2739, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AB58
	 { -1009, -246, 2692, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AB68
	 { 504, -246, 2692, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AB78
	 { -1009, -9, 3746, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AB88
	 { 504, -9, 3746, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AB98
	 { -1009, 120, 3699, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000ABA8
	 { 504, 120, 3699, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000ABB8
};

Gfx _spot16_room_0_dlist_0000ABC8[] =
{
	gsDPPipeSync(), // 0x0000ABC8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000ABD0
	gsSPVertex(_spot16_room_0_vertices_0000AB48, 8, 0), // 0x0000ABD8
	gsSPCullDisplayList(0, 7), // 0x0000ABE0
	gsDPPipeSync(), // 0x0000ABE8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000ABF0
	gsDPPipeSync(), // 0x0000ABF8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000AC00
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000AC08
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_00019E98), // 0x0000AC10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 5, 0), // 0x0000AC18
	gsDPLoadSync(), // 0x0000AC20
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x0000AC28
	gsDPPipeSync(), // 0x0000AC30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 2, 5, 0), // 0x0000AC38
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x0000AC40
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x0000AC48
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x0000AC50
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x0000AC58
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x0000AC60
	gsDPSetPrimColor(0, 0, 255, 255, 255, 254), // 0x0000AC68
	gsSPVertex(_spot16_room_0_vertices_0000AAB8, 4, 0), // 0x0000AC70
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AC78
	gsDPPipeSync(), // 0x0000AC80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot16_scene_tex_0001C698), // 0x0000AC88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 5, 0), // 0x0000AC90
	gsDPLoadSync(), // 0x0000AC98
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x0000ACA0
	gsDPPipeSync(), // 0x0000ACA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 2, 5, 0), // 0x0000ACB0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x0000ACB8
	gsSPVertex(_spot16_room_0_vertices_0000AAF8, 5, 0), // 0x0000ACC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000ACC8
	gsSP1Triangle(2, 1, 4, 0), // 0x0000ACD0
	gsSPDisplayList(0x08000000), // 0x0000ACD8
	gsSPEndDisplayList(), // 0x0000ACE0
};

static u8 unaccountedACE8[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA5, 0xA8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA6, 0xF8, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA8, 0xE8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xAB, 0xC8, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


