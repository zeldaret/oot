#include <ultra64.h>
#include <z64.h>
#include "spot12_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "spot12_scene.h"



SCmdAltHeaders _spot12_room_0_set0000_cmd00 = { 0x18, 0, (u32)&_spot12_room_0_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _spot12_room_0_set0000_cmd01 = { 0x16, 0, { 0 }, 0x0A }; // 0x0008
SCmdRoomBehavior _spot12_room_0_set0000_cmd02 = { 0x08, 0x00, 0x00000002 }; // 0x0010
SCmdSkyboxDisables _spot12_room_0_set0000_cmd03 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0018
SCmdTimeSettings _spot12_room_0_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0020
SCmdMesh _spot12_room_0_set0000_cmd05 = { 0x0A, 0, (u32)&_spot12_room_0_meshHeader_000001D0 }; // 0x0028
SCmdObjectList _spot12_room_0_set0000_cmd06 = { 0x0B, 0x08, (u32)_spot12_room_0_objectList_00000060 }; // 0x0030
SCmdActorList _spot12_room_0_set0000_cmd07 = { 0x01, 0x16, (u32)_spot12_room_0_actorList_00000070 }; // 0x0038
SCmdEndMarker _spot12_room_0_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _spot12_room_0_alternateHeaders_00000048[] = 
{
	0,
	(u32)&_spot12_room_0_set0300_cmd00,
	(u32)&_spot12_room_0_set0540_cmd00,
	(u32)&_spot12_room_0_set0790_cmd00,
	(u32)&_spot12_room_0_set0860_cmd00,
	(u32)&_spot12_room_0_set08C0_cmd00,
};

s16 _spot12_room_0_objectList_00000060[] = 
{
	OBJECT_SPOT12_OBJ,
	OBJECT_BOX,
	OBJECT_HATA,
	OBJECT_HORSE,
	OBJECT_HNI,
	OBJECT_KIBAKO2,
	OBJECT_GLA,
	OBJECT_GE1,
};

ActorEntry _spot12_room_0_actorList_00000070[22] = 
{
	{ ACTOR_EN_ITEM00, 200, 1113, -2725, 0, 0, 0, 0x0106 }, //0x00000070 
	{ ACTOR_EN_A_OBJ, -730, 2, -70, 0, -22027, 0, 0x190A }, //0x00000080 
	{ ACTOR_EN_HATA, -4228, -18, -3363, 0, -16384, 0, 0xFFFF }, //0x00000090 
	{ ACTOR_EN_HATA, -4221, -18, -3246, 0, -16384, 0, 0xFFFF }, //0x000000A0 
	{ ACTOR_EN_HATA, -1666, 13, -3422, 0, -16384, 0, 0xFFFF }, //0x000000B0 
	{ ACTOR_EN_HATA, -382, 480, -2237, 0, 0, 0, 0xFFFF }, //0x000000C0 
	{ ACTOR_EN_GE1, -1224, 93, -3160, 0, -23120, 0, 0x0000 }, //0x000000D0 
	{ ACTOR_EN_WONDER_ITEM, 1094, 876, -412, 0, 0, 6, 0x1ABF }, //0x000000E0 
	{ ACTOR_EN_WONDER_ITEM, -814, 245, -810, 0, 0, 6, 0x1ABF }, //0x000000F0 
	{ ACTOR_EN_KANBAN, 980, 654, -480, 0, -16384, 0, 0x031A }, //0x00000100 
	{ ACTOR_EN_KANBAN, 14, 333, -1159, 0, -16384, 0, 0x031B }, //0x00000110 
	{ ACTOR_EN_KANBAN, -1850, 9, -3250, 0, 16384, 0, 0x031C }, //0x00000120 
	{ ACTOR_BG_SPOT12_GATE, -1134, 112, -3075, 0, 9284, 0, 0x0003 }, //0x00000130 
	{ ACTOR_BG_SPOT12_SAKU, 86, 337, -1035, 0, -16384, 0, 0x0002 }, //0x00000140 
	{ ACTOR_OBJ_KIBAKO2, -120, 333, -2210, 0, 0, 0, 0xFFFF }, //0x00000150 
	{ ACTOR_OBJ_KIBAKO2, -60, 333, -2210, 0, 0, 0, 0xFFFF }, //0x00000160 
	{ ACTOR_OBJ_KIBAKO2, 310, 333, -1830, 0, -16384, 0, 0xFFFF }, //0x00000170 
	{ ACTOR_OBJ_KIBAKO2, 310, 333, -1770, 0, -16384, 0, 0xFFFF }, //0x00000180 
	{ ACTOR_OBJ_KIBAKO2, -4571, -20, -3429, 0, 0, 0, 0xFFFF }, //0x00000190 
	{ ACTOR_OBJ_KIBAKO2, 315, 333, -1594, 0, 16384, 0, 0xFFFF }, //0x000001A0 
	{ ACTOR_OBJ_KIBAKO2, 315, 333, -1534, 0, 16384, 0, 0xFFFF }, //0x000001B0 
	{ ACTOR_EN_BOX, 926, 1042, -2512, 0, -16384, 0, 0x03E0 }, //0x000001C0 
};


MeshHeader2 _spot12_room_0_meshHeader_000001D0 = { { 2 }, 0x12, (u32)&_spot12_room_0_meshDListEntry_000001DC, (u32)&(_spot12_room_0_meshDListEntry_000001DC) + sizeof(_spot12_room_0_meshDListEntry_000001DC) };

MeshEntry2 _spot12_room_0_meshDListEntry_000001DC[18] = 
{
	{ 483, 1333, -1798, 1785, (u32)_spot12_room_0_dlist_000048A8, 0 },
	{ -1316, 896, 62, 1772, (u32)_spot12_room_0_dlist_000050F0, 0 },
	{ 761, 1093, -481, 1622, (u32)_spot12_room_0_dlist_000055D0, 0 },
	{ -727, 304, -1637, 1018, (u32)_spot12_room_0_dlist_00005B48, 0 },
	{ -1835, 291, -3263, 1427, (u32)_spot12_room_0_dlist_000065C8, 0 },
	{ -167, 373, -1742, 1257, (u32)_spot12_room_0_dlist_00006F10, 0 },
	{ -518, 333, -1327, 661, 0, (u32)_spot12_room_0_dlist_0000FA10 },
	{ -2193, 958, -4514, 3062, (u32)_spot12_room_0_dlist_00004CC8, 0 },
	{ -1103, 423, -3116, 457, (u32)_spot12_room_0_dlist_00008000, (u32)_spot12_room_0_dlist_0000F740 },
	{ -6439, 183, -2192, 447, (u32)_spot12_room_0_dlist_00001F40, 0 },
	{ -827, 336, -814, 190, (u32)_spot12_room_0_dlist_00001AE0, 0 },
	{ 1095, 926, -427, 150, (u32)_spot12_room_0_dlist_00001D30, 0 },
	{ 498, 1122, -2834, 540, (u32)_spot12_room_0_dlist_000014F0, 0 },
	{ 897, 709, -1676, 1359, (u32)_spot12_room_0_dlist_00003970, (u32)_spot12_room_0_dlist_0000F430 },
	{ 182, 913, -2915, 288, (u32)_spot12_room_0_dlist_00008620, 0 },
	{ -3741, 140, -1948, 6173, (u32)_spot12_room_0_dlist_00000B60, 0 },
	{ 86, 428, -1057, 123, (u32)_spot12_room_0_dlist_000088C8, (u32)_spot12_room_0_dlist_0000FC80 },
	{ 3633, 1718, -648, 2134, (u32)_spot12_room_0_dlist_00007640, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

SCmdEchoSettings _spot12_room_0_set0300_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0300
SCmdRoomBehavior _spot12_room_0_set0300_cmd01 = { 0x08, 0x00, 0x00000002 }; // 0x0308
SCmdSkyboxDisables _spot12_room_0_set0300_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0310
SCmdTimeSettings _spot12_room_0_set0300_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0318
SCmdWindSettings _spot12_room_0_set0300_cmd04 = { 0x05, 0x00, 0x00, 0x00, 0x00, 0x04, 0x0A, 0x50}; // 0x0320
SCmdMesh _spot12_room_0_set0300_cmd05 = { 0x0A, 0, (u32)&_spot12_room_0_meshHeader_000001D0 }; // 0x0328
SCmdObjectList _spot12_room_0_set0300_cmd06 = { 0x0B, 0x0A, (u32)_spot12_room_0_objectList_00000348 }; // 0x0330
SCmdActorList _spot12_room_0_set0300_cmd07 = { 0x01, 0x1E, (u32)_spot12_room_0_actorList_0000035C }; // 0x0338
SCmdEndMarker _spot12_room_0_set0300_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0340
s16 _spot12_room_0_objectList_00000348[] = 
{
	OBJECT_GE1,
	OBJECT_KIBAKO2,
	OBJECT_HORSE,
	OBJECT_HNI,
	OBJECT_SPOT12_OBJ,
	OBJECT_BOX,
	OBJECT_HATA,
	OBJECT_GLA,
	OBJECT_KANBAN,
	OBJECT_KA,
};

ActorEntry _spot12_room_0_actorList_0000035C[30] = 
{
	{ ACTOR_EN_A_OBJ, -730, 2, -70, 0, -22027, 0, 0x190A }, //0x0000035C 
	{ ACTOR_EN_HATA, -3720, -18, -3363, 0, -16384, 0, 0xFFFF }, //0x0000036C 
	{ ACTOR_EN_HATA, -3720, -18, -3246, 0, -16384, 0, 0xFFFF }, //0x0000037C 
	{ ACTOR_EN_HATA, -1666, 13, -3422, 0, -16384, 0, 0xFFFF }, //0x0000038C 
	{ ACTOR_EN_HATA, -382, 480, -2237, 0, -16384, 0, 0xFFFF }, //0x0000039C 
	{ ACTOR_EN_WONDER_ITEM, -814, 245, -810, 0, 0, 6, 0x1ABF }, //0x000003AC 
	{ ACTOR_EN_WONDER_ITEM, 1094, 876, -412, 0, 0, 6, 0x1ABF }, //0x000003BC 
	{ ACTOR_EN_KANBAN, 14, 333, -1159, 0, -16384, 0, 0x031B }, //0x000003CC 
	{ ACTOR_EN_KANBAN, -1850, 9, -3250, 0, 16384, 0, 0x031C }, //0x000003DC 
	{ ACTOR_EN_GE1, -857, 112, -3123, 0, -4005, 0, 0x0004 }, //0x000003EC 
	{ ACTOR_EN_GE1, 682, 602, -307, 0, -32768, 0, 0x0004 }, //0x000003FC 
	{ ACTOR_OBJ_KIBAKO2, -4051, -20, -3429, -1, 0, 0, 0xFFFF }, //0x0000040C 
	{ ACTOR_OBJ_KIBAKO2, -120, 333, -2210, -1, 0, 0, 0xFFFF }, //0x0000041C 
	{ ACTOR_OBJ_KIBAKO2, -60, 333, -2210, -1, 0, 0, 0xFFFF }, //0x0000042C 
	{ ACTOR_OBJ_KIBAKO2, 310, 333, -1842, -1, -16384, 0, 0xFFFF }, //0x0000043C 
	{ ACTOR_OBJ_KIBAKO2, 310, 333, -1782, -1, -16384, 0, 0xFFFF }, //0x0000044C 
	{ ACTOR_OBJ_KIBAKO2, 315, 333, -1594, -1, 16384, 0, 0xFFFF }, //0x0000045C 
	{ ACTOR_OBJ_KIBAKO2, 315, 333, -1534, -1, 16384, 0, 0xFFFF }, //0x0000046C 
	{ ACTOR_OBJ_KIBAKO2, 51, 1113, -2997, 20, 910, 31, 0xFFFF }, //0x0000047C 
	{ ACTOR_DOOR_ANA, 376, 333, -1564, 0, 16384, 0, 0x11FF }, //0x0000048C 
	{ ACTOR_EN_BOX, 926, 1042, -2512, 0, -16384, 0, 0x07C0 }, //0x0000049C 
	{ ACTOR_EN_GE1, -950, 622, -3253, 0, 0, 0, 0x0301 }, //0x000004AC 
	{ ACTOR_BG_SPOT12_GATE, -1134, 112, -3075, 0, 9284, 0, 0x0003 }, //0x000004BC 
	{ ACTOR_EN_GE2, 56, 333, -2238, 0, 0, 2, 0x0500 }, //0x000004CC 
	{ ACTOR_EN_GE2, 237, 572, -949, 0, 0, 2, 0x0500 }, //0x000004DC 
	{ ACTOR_EN_GE2, -452, 333, -1868, 0, 16384, 2, 0x0A00 }, //0x000004EC 
	{ ACTOR_EN_GE2, 60, 333, -1428, 0, -16384, 2, 0x0A00 }, //0x000004FC 
	{ ACTOR_EN_KAKASI2, 1298, 1042, -2279, 0, 0, 20, 0x0538 }, //0x0000050C 
	{ ACTOR_EN_GE1, 38, 333, -1097, 0, -16384, 0, 0x3A46 }, //0x0000051C 
	{ ACTOR_BG_SPOT12_SAKU, 86, 337, -1035, 0, -16384, 0, 0x003A }, //0x0000052C 
};

static u32 pad53C = 0;

SCmdEchoSettings _spot12_room_0_set0540_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0540
SCmdRoomBehavior _spot12_room_0_set0540_cmd01 = { 0x08, 0x00, 0x00000002 }; // 0x0548
SCmdSkyboxDisables _spot12_room_0_set0540_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0550
SCmdTimeSettings _spot12_room_0_set0540_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0558
SCmdWindSettings _spot12_room_0_set0540_cmd04 = { 0x05, 0x00, 0x00, 0x00, 0x00, 0x04, 0x28, 0x8C}; // 0x0560
SCmdMesh _spot12_room_0_set0540_cmd05 = { 0x0A, 0, (u32)&_spot12_room_0_meshHeader_000001D0 }; // 0x0568
SCmdObjectList _spot12_room_0_set0540_cmd06 = { 0x0B, 0x0A, (u32)_spot12_room_0_objectList_00000588 }; // 0x0570
SCmdActorList _spot12_room_0_set0540_cmd07 = { 0x01, 0x1F, (u32)_spot12_room_0_actorList_0000059C }; // 0x0578
SCmdEndMarker _spot12_room_0_set0540_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0580
s16 _spot12_room_0_objectList_00000588[] = 
{
	OBJECT_GE1,
	OBJECT_KIBAKO2,
	OBJECT_HORSE,
	OBJECT_SPOT12_OBJ,
	OBJECT_BOX,
	OBJECT_HATA,
	OBJECT_GLA,
	OBJECT_KANBAN,
	OBJECT_KA,
	OBJECT_ST,
};

ActorEntry _spot12_room_0_actorList_0000059C[31] = 
{
	{ ACTOR_EN_A_OBJ, -730, 2, -70, 0, -22027, 0, 0x190A }, //0x0000059C 
	{ ACTOR_EN_HATA, -3720, -18, -3363, 0, -16384, 0, 0xFFFF }, //0x000005AC 
	{ ACTOR_EN_HATA, -3720, -18, -3246, 0, -16384, 0, 0xFFFF }, //0x000005BC 
	{ ACTOR_EN_HATA, -1666, 13, -3422, 0, -16384, 0, 0xFFFF }, //0x000005CC 
	{ ACTOR_EN_HATA, -382, 480, -2237, 0, -16384, 0, 0xFFFF }, //0x000005DC 
	{ ACTOR_EN_WONDER_ITEM, -814, 245, -810, 0, 0, 6, 0x1ABF }, //0x000005EC 
	{ ACTOR_EN_WONDER_ITEM, 1094, 876, -412, 0, 0, 6, 0x1ABF }, //0x000005FC 
	{ ACTOR_EN_KANBAN, 14, 333, -1159, 0, -16384, 0, 0x031B }, //0x0000060C 
	{ ACTOR_EN_KANBAN, -1850, 9, -3250, 0, 16384, 0, 0x031C }, //0x0000061C 
	{ ACTOR_EN_GE1, -857, 112, -3123, 0, -4005, 0, 0x0004 }, //0x0000062C 
	{ ACTOR_EN_GE1, 682, 602, -307, 0, -32768, 0, 0x0004 }, //0x0000063C 
	{ ACTOR_OBJ_KIBAKO2, -4051, -20, -3429, -1, 0, 0, 0xFFFF }, //0x0000064C 
	{ ACTOR_OBJ_KIBAKO2, -120, 333, -2210, -1, 0, 0, 0xFFFF }, //0x0000065C 
	{ ACTOR_OBJ_KIBAKO2, -60, 333, -2210, -1, 0, 0, 0xFFFF }, //0x0000066C 
	{ ACTOR_OBJ_KIBAKO2, 310, 333, -1842, -1, -16384, 0, 0xFFFF }, //0x0000067C 
	{ ACTOR_OBJ_KIBAKO2, 310, 333, -1782, -1, -16384, 0, 0xFFFF }, //0x0000068C 
	{ ACTOR_OBJ_KIBAKO2, 315, 333, -1594, -1, 16384, 0, 0xFFFF }, //0x0000069C 
	{ ACTOR_OBJ_KIBAKO2, 315, 333, -1534, -1, 16384, 0, 0xFFFF }, //0x000006AC 
	{ ACTOR_OBJ_KIBAKO2, 51, 1113, -2997, 20, 910, 31, 0xFFFF }, //0x000006BC 
	{ ACTOR_DOOR_ANA, 376, 333, -1564, 0, 16384, 0, 0x11FF }, //0x000006CC 
	{ ACTOR_EN_BOX, 926, 1042, -2512, 0, -16384, 0, 0x07C0 }, //0x000006DC 
	{ ACTOR_EN_SW, 1598, 999, -2008, 16384, -16384, 0, 0xB502 }, //0x000006EC 
	{ ACTOR_EN_GE1, -950, 622, -3253, 0, 0, 0, 0x0301 }, //0x000006FC 
	{ ACTOR_BG_SPOT12_GATE, -1134, 112, -3075, 0, 9284, 0, 0x0003 }, //0x0000070C 
	{ ACTOR_EN_GE2, 56, 333, -2238, 0, 0, 2, 0x0500 }, //0x0000071C 
	{ ACTOR_EN_GE2, 237, 572, -949, 0, 0, 2, 0x0500 }, //0x0000072C 
	{ ACTOR_EN_GE2, -452, 333, -1868, 0, 16384, 2, 0x0A00 }, //0x0000073C 
	{ ACTOR_EN_GE2, 60, 333, -1428, 0, -16384, 2, 0x0A00 }, //0x0000074C 
	{ ACTOR_EN_KAKASI2, 1298, 1042, -2279, 0, 0, 20, 0x0538 }, //0x0000075C 
	{ ACTOR_EN_GE1, 38, 333, -1097, 0, -16384, 0, 0x3A46 }, //0x0000076C 
	{ ACTOR_BG_SPOT12_SAKU, 86, 337, -1035, 0, -16384, 0, 0x003A }, //0x0000077C 
};

static u32 pad78C = 0;

SCmdEchoSettings _spot12_room_0_set0790_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0790
SCmdRoomBehavior _spot12_room_0_set0790_cmd01 = { 0x08, 0x00, 0x00000002 }; // 0x0798
SCmdSkyboxDisables _spot12_room_0_set0790_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x07A0
SCmdTimeSettings _spot12_room_0_set0790_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x07A8
SCmdMesh _spot12_room_0_set0790_cmd04 = { 0x0A, 0, (u32)&_spot12_room_0_meshHeader_000001D0 }; // 0x07B0
SCmdObjectList _spot12_room_0_set0790_cmd05 = { 0x0B, 0x0C, (u32)_spot12_room_0_objectList_000007D0 }; // 0x07B8
SCmdActorList _spot12_room_0_set0790_cmd06 = { 0x01, 0x07, (u32)_spot12_room_0_actorList_000007E8 }; // 0x07C0
SCmdEndMarker _spot12_room_0_set0790_cmd07 = { 0x14, 0x00, 0x00 }; // 0x07C8
s16 _spot12_room_0_objectList_000007D0[] = 
{
	OBJECT_BOX,
	OBJECT_O_ANIME,
	OBJECT_OE_ANIME,
	OBJECT_HATA,
	OBJECT_HORSE,
	OBJECT_GI_HEARTS,
	OBJECT_HORSE_NORMAL,
	OBJECT_HNI,
	OBJECT_YABUSAME_POINT,
	OBJECT_KIBAKO2,
	OBJECT_GE1,
	OBJECT_TSUBO,
};

ActorEntry _spot12_room_0_actorList_000007E8[7] = 
{
	{ ACTOR_OBJ_KIBAKO2, -120, 333, -2210, 0, 0, 0, 0xFFFF }, //0x000007E8 
	{ ACTOR_OBJ_KIBAKO2, -60, 333, -2210, 0, 0, 0, 0xFFFF }, //0x000007F8 
	{ ACTOR_OBJ_KIBAKO2, 310, 333, -1830, 0, -16384, 0, 0xFFFF }, //0x00000808 
	{ ACTOR_OBJ_KIBAKO2, 310, 333, -1770, 0, -16384, 0, 0xFFFF }, //0x00000818 
	{ ACTOR_OBJ_KIBAKO2, -4571, -20, -3429, 0, 0, 0, 0xFFFF }, //0x00000828 
	{ ACTOR_OBJ_KIBAKO2, 315, 333, -1594, 0, 16384, 0, 0xFFFF }, //0x00000838 
	{ ACTOR_OBJ_KIBAKO2, 315, 333, -1534, 0, 16384, 0, 0xFFFF }, //0x00000848 
};

static u32 pad858 = 0;
static u32 pad85C = 0;

SCmdEchoSettings _spot12_room_0_set0860_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0860
SCmdRoomBehavior _spot12_room_0_set0860_cmd01 = { 0x08, 0x00, 0x00000002 }; // 0x0868
SCmdSkyboxDisables _spot12_room_0_set0860_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0870
SCmdTimeSettings _spot12_room_0_set0860_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0878
SCmdMesh _spot12_room_0_set0860_cmd04 = { 0x0A, 0, (u32)&_spot12_room_0_meshHeader_000001D0 }; // 0x0880
SCmdObjectList _spot12_room_0_set0860_cmd05 = { 0x0B, 0x08, (u32)_spot12_room_0_objectList_000008A0 }; // 0x0888
SCmdActorList _spot12_room_0_set0860_cmd06 = { 0x01, 0x01, (u32)_spot12_room_0_actorList_000008B0 }; // 0x0890
SCmdEndMarker _spot12_room_0_set0860_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0898
s16 _spot12_room_0_objectList_000008A0[] = 
{
	OBJECT_BOX,
	OBJECT_O_ANIME,
	OBJECT_OE_ANIME,
	OBJECT_HATA,
	OBJECT_HORSE,
	OBJECT_GI_HEARTS,
	OBJECT_HORSE_NORMAL,
	OBJECT_YABUSAME_POINT,
};

ActorEntry _spot12_room_0_actorList_000008B0[1] = 
{
	{ ACTOR_BG_SPOT12_SAKU, 86, 337, -1035, 0, -16384, 0, 0x00FF }, //0x000008B0 
};


SCmdEchoSettings _spot12_room_0_set08C0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x08C0
SCmdRoomBehavior _spot12_room_0_set08C0_cmd01 = { 0x08, 0x00, 0x00000002 }; // 0x08C8
SCmdSkyboxDisables _spot12_room_0_set08C0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x08D0
SCmdTimeSettings _spot12_room_0_set08C0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x08D8
SCmdMesh _spot12_room_0_set08C0_cmd04 = { 0x0A, 0, (u32)&_spot12_room_0_meshHeader_000001D0 }; // 0x08E0
SCmdObjectList _spot12_room_0_set08C0_cmd05 = { 0x0B, 0x08, (u32)_spot12_room_0_objectList_00000900 }; // 0x08E8
SCmdActorList _spot12_room_0_set08C0_cmd06 = { 0x01, 0x05, (u32)_spot12_room_0_actorList_00000910 }; // 0x08F0
SCmdEndMarker _spot12_room_0_set08C0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x08F8
s16 _spot12_room_0_objectList_00000900[] = 
{
	OBJECT_BOX,
	OBJECT_HATA,
	OBJECT_HORSE,
	OBJECT_HORSE_NORMAL,
	OBJECT_NIW,
	OBJECT_UMAJUMP,
	OBJECT_GE1,
	OBJECT_TSUBO,
};

ActorEntry _spot12_room_0_actorList_00000910[5] = 
{
	{ ACTOR_EN_HATA, -1696, 13, -3424, 0, -16384, 0, 0xFFFF }, //0x00000910 
	{ ACTOR_EN_HATA, -4228, -18, -3363, 0, -16384, 0, 0xFFFF }, //0x00000920 
	{ ACTOR_EN_HATA, -4221, -18, -3246, 0, -16384, 0, 0xFFFF }, //0x00000930 
	{ ACTOR_BG_SPOT12_SAKU, 86, 337, -1035, 0, -16384, 0, 0x00FF }, //0x00000940 
	{ ACTOR_BG_SPOT12_GATE, -1134, 112, -3075, 0, 9284, 0, 0x00FF }, //0x00000950 
};


Vtx_t _spot12_room_0_vertices_00000960[24] = 
{
	 { -1817, 11, -5044, 0, -7757, -1936, 213, 100, 49, 255 }, // 0x00000960
	 { -1896, 12, -3813, 0, -4284, -3171, 0, 119, 0, 255 }, // 0x00000970
	 { -1295, 14, -3965, 0, -5138, -4510, 207, 108, 16, 255 }, // 0x00000980
	 { -6540, -17, -2929, 0, 1600, 7404, 255, 119, 0, 255 }, // 0x00000990
	 { -6140, -17, -29, 0, 8714, 5047, 255, 119, 0, 255 }, // 0x000009A0
	 { -2830, 15, -2538, 0, 1598, -1707, 241, 116, 231, 255 }, // 0x000009B0
	 { -3057, 16, -3948, 0, -4105, 98, 254, 118, 17, 255 }, // 0x000009C0
	 { -3257, 23, -5584, 0, -8207, 2859, 215, 82, 77, 255 }, // 0x000009D0
	 { -2700, -17, 471, 0, 11315, -3080, 239, 117, 236, 255 }, // 0x000009E0
	 { -1930, 5, -3062, 0, -488, -4338, 231, 105, 205, 255 }, // 0x000009F0
	 { -4766, -17, 3750, 0, 18486, 1811, 0, 119, 1, 255 }, // 0x00000A00
	 { -6140, -17, -5829, 0, -5514, 9760, 255, 119, 255, 255 }, // 0x00000A10
	 { -4349, -17, -6387, 0, -9274, 6866, 226, 109, 38, 255 }, // 0x00000A20
	 { -5111, -17, -7966, 0, -11278, 11669, 0, 120, 0, 255 }, // 0x00000A30
	 { -1740, 23, -329, 0, 7519, -5878, 196, 90, 206, 255 }, // 0x00000A40
	 { -2090, 14, -3837, 0, -3388, -2956, 0, 119, 1, 255 }, // 0x00000A50
	 { -2080, 7, -2974, 0, -1301, -3674, 0, 119, 1, 255 }, // 0x00000A60
	 { -1205, 237, -743, 0, 6084, -6845, 215, 89, 187, 255 }, // 0x00000A70
	 { -1016, 237, -740, 0, 5939, -7307, 204, 82, 187, 255 }, // 0x00000A80
	 { -1210, 5, -2822, 0, -485, -6280, 4, 119, 243, 255 }, // 0x00000A90
	 { -1345, 10, -3627, 0, -4277, -4661, 239, 118, 255, 255 }, // 0x00000AA0
	 { -1061, 106, -3232, 0, -3545, -5668, 222, 115, 252, 255 }, // 0x00000AB0
	 { -941, 298, -3416, 0, -4089, -5811, 222, 115, 252, 255 }, // 0x00000AC0
	 { -3900, -17, 4071, 0, 20593, 47, 0, 120, 0, 255 }, // 0x00000AD0
};

Vtx_t _spot12_room_0_vertices_00000AE0[8] = 
{
	 { -6540, -17, -7966, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AE0
	 { -941, -17, -7966, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AF0
	 { -6540, 298, -7966, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B00
	 { -941, 298, -7966, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B10
	 { -6540, -17, 4071, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B20
	 { -941, -17, 4071, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B30
	 { -6540, 298, 4071, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B40
	 { -941, 298, 4071, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B50
};

Gfx _spot12_room_0_dlist_00000B60[] =
{
	gsDPPipeSync(), // 0x00000B60
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000B68
	gsSPVertex(_spot12_room_0_vertices_00000AE0, 8, 0), // 0x00000B70
	gsSPCullDisplayList(0, 7), // 0x00000B78
	gsDPPipeSync(), // 0x00000B80
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000B88
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000B90
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000B98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000D678), // 0x00000BA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 1, 0, 5, 1), // 0x00000BA8
	gsDPLoadSync(), // 0x00000BB0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000BB8
	gsDPPipeSync(), // 0x00000BC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 1, 0, 5, 1), // 0x00000BC8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000BD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00008678), // 0x00000BD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 15, 0, 5, 15), // 0x00000BE0
	gsDPLoadSync(), // 0x00000BE8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000BF0
	gsDPPipeSync(), // 0x00000BF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 15, 0, 5, 15), // 0x00000C00
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00000C08
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000C10
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000C18
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00000C20
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00000C28
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000C30
	gsSPVertex(_spot12_room_0_vertices_00000960, 24, 0), // 0x00000C38
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000C40
	gsSP2Triangles(1, 0, 6, 0, 6, 0, 7, 0), // 0x00000C48
	gsSP2Triangles(5, 8, 9, 0, 10, 8, 5, 0), // 0x00000C50
	gsSP2Triangles(4, 10, 5, 0, 11, 3, 6, 0), // 0x00000C58
	gsSP2Triangles(3, 5, 6, 0, 11, 6, 7, 0), // 0x00000C60
	gsSP2Triangles(11, 7, 12, 0, 13, 11, 12, 0), // 0x00000C68
	gsSP2Triangles(8, 14, 9, 0, 15, 6, 16, 0), // 0x00000C70
	gsSP2Triangles(6, 5, 16, 0, 14, 17, 9, 0), // 0x00000C78
	gsSP2Triangles(9, 17, 18, 0, 9, 18, 19, 0), // 0x00000C80
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 2, 0), // 0x00000C88
	gsSP2Triangles(2, 1, 20, 0, 10, 23, 8, 0), // 0x00000C90
	gsSPEndDisplayList(), // 0x00000C98
};

Vtx_t _spot12_room_0_vertices_00000CA0[3] = 
{
	 { 20, 1093, -2761, 0, 690, 643, 248, 147, 49, 255 }, // 0x00000CA0
	 { 18, 952, -2721, 0, 1027, 1745, 24, 36, 111, 255 }, // 0x00000CB0
	 { 13, 952, -2788, 0, 453, 1745, 106, 19, 203, 255 }, // 0x00000CC0
};

Vtx_t _spot12_room_0_vertices_00000CD0[12] = 
{
	 { 148, 1059, -2714, 0, 2105, 0, 5, 152, 58, 255 }, // 0x00000CD0
	 { 23, 1059, -2704, 0, 3277, 0, 5, 152, 58, 255 }, // 0x00000CE0
	 { 19, 1080, -2780, 0, 3277, 1024, 248, 197, 152, 255 }, // 0x00000CF0
	 { 148, 1081, -2791, 0, 2061, 1024, 248, 197, 152, 255 }, // 0x00000D00
	 { 19, 1080, -2780, 0, 3277, 1024, 248, 197, 152, 255 }, // 0x00000D10
	 { 19, 1090, -2778, 0, 3277, 922, 246, 32, 141, 255 }, // 0x00000D20
	 { 148, 1091, -2788, 0, 2062, 922, 246, 32, 141, 255 }, // 0x00000D30
	 { 148, 1081, -2791, 0, 2061, 1024, 248, 197, 152, 255 }, // 0x00000D40
	 { 148, 1069, -2711, 0, 1866, 128, 10, 224, 115, 255 }, // 0x00000D50
	 { 24, 1068, -2701, 0, 3328, 128, 10, 224, 115, 255 }, // 0x00000D60
	 { 23, 1059, -2704, 0, 3328, 0, 5, 152, 58, 255 }, // 0x00000D70
	 { 148, 1059, -2714, 0, 1864, 0, 5, 152, 58, 255 }, // 0x00000D80
};

Vtx_t _spot12_room_0_vertices_00000D90[8] = 
{
	 { 13, 952, -2788, 0, 606, 1962, 106, 19, 203, 255 }, // 0x00000D90
	 { 18, 952, -2721, 0, 606, 1463, 24, 36, 111, 255 }, // 0x00000DA0
	 { 148, 952, -2732, 0, -187, 1463, 227, 26, 113, 255 }, // 0x00000DB0
	 { 148, 952, -2799, 0, -221, 1962, 232, 14, 140, 255 }, // 0x00000DC0
	 { 148, 952, -2799, 0, 458, 1991, 232, 14, 140, 255 }, // 0x00000DD0
	 { 148, 952, -2732, 0, 1034, 1991, 227, 26, 113, 255 }, // 0x00000DE0
	 { 148, 1093, -2732, 0, 1034, 814, 222, 155, 54, 255 }, // 0x00000DF0
	 { 148, 1093, -2799, 0, 458, 814, 231, 148, 213, 255 }, // 0x00000E00
};

Vtx_t _spot12_room_0_vertices_00000E10[32] = 
{
	 { 133, 1093, -2850, 0, 2230, -320, 18, 140, 235, 255 }, // 0x00000E10
	 { 133, 1113, -2850, 0, 2230, -491, 45, 98, 203, 255 }, // 0x00000E20
	 { 253, 1113, -2860, 0, 1206, -491, 217, 108, 223, 255 }, // 0x00000E30
	 { 253, 1093, -2860, 0, 1206, -320, 226, 143, 230, 255 }, // 0x00000E40
	 { 253, 1093, -2860, 0, 1377, -491, 226, 143, 230, 255 }, // 0x00000E50
	 { 243, 1113, -2980, 0, 1206, 533, 223, 108, 39, 255 }, // 0x00000E60
	 { 243, 1093, -2980, 0, 1377, 533, 230, 143, 30, 255 }, // 0x00000E70
	 { 243, 1093, -2980, 0, 1206, 363, 230, 143, 30, 255 }, // 0x00000E80
	 { 123, 1113, -2970, 0, 2230, 533, 53, 98, 45, 255 }, // 0x00000E90
	 { 123, 1093, -2970, 0, 2230, 363, 30, 143, 26, 255 }, // 0x00000EA0
	 { 123, 1093, -2970, 0, 2060, 533, 30, 143, 26, 255 }, // 0x00000EB0
	 { 133, 1093, -2850, 0, 2060, -491, 18, 140, 235, 255 }, // 0x00000EC0
	 { 40, 1205, -2762, 0, 853, 232, 95, 218, 61, 255 }, // 0x00000ED0
	 { 20, 1205, -2761, 0, 1024, 232, 204, 205, 95, 255 }, // 0x00000EE0
	 { 20, 1152, -2761, 0, 1024, 685, 193, 69, 74, 255 }, // 0x00000EF0
	 { 40, 1152, -2762, 0, 853, 685, 101, 49, 41, 255 }, // 0x00000F00
	 { 40, 1152, -2762, 0, 2048, 1024, 101, 49, 41, 255 }, // 0x00000F10
	 { 20, 1152, -2761, 0, 2048, 795, 193, 69, 74, 255 }, // 0x00000F20
	 { 32, 1152, -2619, 0, -384, 795, 163, 49, 57, 255 }, // 0x00000F30
	 { 52, 1152, -2620, 0, -384, 1024, 74, 69, 63, 255 }, // 0x00000F40
	 { 20, 1205, -2761, 0, -149, 239, 204, 205, 95, 255 }, // 0x00000F50
	 { 32, 1293, -2619, 0, -1365, -512, 204, 205, 95, 255 }, // 0x00000F60
	 { 20, 1293, -2761, 0, -149, -512, 193, 229, 98, 255 }, // 0x00000F70
	 { 32, 1152, -2619, 0, -1365, 692, 163, 49, 57, 255 }, // 0x00000F80
	 { 20, 1093, -2761, 0, -149, 1195, 248, 147, 49, 255 }, // 0x00000F90
	 { 32, 1093, -2619, 0, -1365, 1195, 223, 176, 83, 255 }, // 0x00000FA0
	 { 20, 1152, -2761, 0, -149, 692, 193, 69, 74, 255 }, // 0x00000FB0
	 { 52, 1273, -2620, 0, -1365, -341, 52, 171, 66, 255 }, // 0x00000FC0
	 { 40, 1205, -2762, 0, -149, 239, 95, 218, 61, 255 }, // 0x00000FD0
	 { 19, 1273, -3019, 0, 2048, -341, 101, 207, 41, 255 }, // 0x00000FE0
	 { 40, 1152, -2762, 0, -149, 692, 101, 49, 41, 255 }, // 0x00000FF0
	 { 19, 1113, -3019, 0, 2048, 1024, 83, 80, 33, 255 }, // 0x00001000
};

Vtx_t _spot12_room_0_vertices_00001010[30] = 
{
	 { 52, 1152, -2620, 0, -1365, 692, 74, 69, 63, 255 }, // 0x00001010
	 { 52, 1113, -2620, 0, -1365, 1024, 46, 80, 76, 255 }, // 0x00001020
	 { 19, 1113, -3019, 0, 2048, 1024, 83, 80, 33, 255 }, // 0x00001030
	 { 40, 1152, -2762, 0, -149, 692, 101, 49, 41, 255 }, // 0x00001040
	 { 20, 1093, -2761, 0, 3254, -1173, 248, 147, 49, 255 }, // 0x00001050
	 { 148, 1093, -2732, 0, 2188, -1511, 222, 155, 54, 255 }, // 0x00001060
	 { 32, 1093, -2619, 0, 3254, -2389, 223, 176, 83, 255 }, // 0x00001070
	 { 432, 1093, -2652, 0, -171, -2389, 4, 217, 113, 255 }, // 0x00001080
	 { 432, 1093, -2652, 0, -171, -2448, 4, 217, 113, 255 }, // 0x00001090
	 { 412, 1113, -2650, 0, 0, -2389, 223, 80, 83, 255 }, // 0x000010A0
	 { 52, 1113, -2620, 0, 3084, -2389, 46, 80, 76, 255 }, // 0x000010B0
	 { 32, 1093, -2619, 0, 3254, -2448, 223, 176, 83, 255 }, // 0x000010C0
	 { 412, 1113, -2650, 0, 1877, 853, 223, 80, 83, 255 }, // 0x000010D0
	 { 432, 1093, -2652, 0, 2048, 1024, 4, 217, 113, 255 }, // 0x000010E0
	 { 432, 1293, -2652, 0, 2048, -683, 255, 228, 116, 255 }, // 0x000010F0
	 { 412, 1273, -2650, 0, 1877, -512, 215, 207, 101, 255 }, // 0x00001100
	 { 32, 1293, -2619, 0, -1377, -683, 204, 205, 95, 255 }, // 0x00001110
	 { 52, 1273, -2620, 0, -1206, -512, 52, 171, 66, 255 }, // 0x00001120
	 { 379, 1273, -3049, 0, 2048, 3072, 238, 175, 86, 255 }, // 0x00001130
	 { 412, 1273, -2650, 0, 2048, -341, 215, 207, 101, 255 }, // 0x00001140
	 { 52, 1273, -2620, 0, -1036, -341, 52, 171, 66, 255 }, // 0x00001150
	 { 19, 1273, -3019, 0, -1036, 3072, 101, 207, 41, 255 }, // 0x00001160
	 { 19, 1273, -3019, 0, 0, -341, 101, 207, 41, 255 }, // 0x00001170
	 { 19, 1113, -3019, 0, 0, 1024, 83, 80, 33, 255 }, // 0x00001180
	 { 379, 1113, -3049, 0, 3084, 1024, 7, 99, 66, 255 }, // 0x00001190
	 { 379, 1273, -3049, 0, 3084, -341, 238, 175, 86, 255 }, // 0x000011A0
	 { 389, 1113, -2929, 0, -341, 1024, 230, 114, 230, 255 }, // 0x000011B0
	 { 412, 1113, -2650, 0, 2048, 1024, 223, 80, 83, 255 }, // 0x000011C0
	 { 412, 1273, -2650, 0, 2048, -341, 215, 207, 101, 255 }, // 0x000011D0
	 { 389, 1273, -2929, 0, -341, -341, 164, 202, 203, 255 }, // 0x000011E0
};

Vtx_t _spot12_room_0_vertices_000011F0[4] = 
{
	 { 411, 1145, -2658, 0, 0, 506, 246, 0, 137, 255 }, // 0x000011F0
	 { 411, 1113, -2658, 0, 0, 2048, 246, 0, 137, 255 }, // 0x00001200
	 { 51, 1113, -2628, 0, 17410, 2048, 246, 0, 137, 255 }, // 0x00001210
	 { 51, 1145, -2628, 0, 17410, 506, 246, 0, 137, 255 }, // 0x00001220
};

Vtx_t _spot12_room_0_vertices_00001230[12] = 
{
	 { 379, 1113, -3049, 0, 0, 0, 7, 99, 66, 255 }, // 0x00001230
	 { 389, 1113, -2929, 0, 0, 1024, 230, 114, 230, 255 }, // 0x00001240
	 { 983, 993, -3001, 0, 6441, 836, 138, 21, 6, 255 }, // 0x00001250
	 { 389, 1113, -2929, 0, 0, 1024, 230, 114, 230, 255 }, // 0x00001260
	 { 389, 1273, -2929, 0, 0, 0, 164, 202, 203, 255 }, // 0x00001270
	 { 983, 993, -3001, 0, 6389, 512, 138, 21, 6, 255 }, // 0x00001280
	 { 389, 1273, -2929, 0, 0, 0, 164, 202, 203, 255 }, // 0x00001290
	 { 379, 1273, -3049, 0, 0, 1024, 238, 175, 86, 255 }, // 0x000012A0
	 { 983, 993, -3001, 0, 6441, 188, 138, 21, 6, 255 }, // 0x000012B0
	 { 379, 1273, -3049, 0, 0, 0, 238, 175, 86, 255 }, // 0x000012C0
	 { 379, 1113, -3049, 0, 0, 1024, 7, 99, 66, 255 }, // 0x000012D0
	 { 983, 993, -3001, 0, 6470, 512, 138, 21, 6, 255 }, // 0x000012E0
};

Vtx_t _spot12_room_0_vertices_000012F0[8] = 
{
	 { 32, 1152, -2619, 0, -1377, 521, 163, 49, 57, 255 }, // 0x000012F0
	 { 32, 1093, -2619, 0, -1377, 1024, 223, 176, 83, 255 }, // 0x00001300
	 { 52, 1113, -2620, 0, -1206, 853, 46, 80, 76, 255 }, // 0x00001310
	 { 52, 1152, -2620, 0, -1206, 521, 74, 69, 63, 255 }, // 0x00001320
	 { 52, 1273, -2620, 0, 585, 1024, 52, 171, 66, 255 }, // 0x00001330
	 { 32, 1293, -2619, 0, 438, 795, 204, 205, 95, 255 }, // 0x00001340
	 { 20, 1205, -2761, 0, 3280, 795, 204, 205, 95, 255 }, // 0x00001350
	 { 40, 1205, -2762, 0, 3280, 1024, 95, 218, 61, 255 }, // 0x00001360
};

Vtx_t _spot12_room_0_vertices_00001370[4] = 
{
	 { 46, 1168, -2620, 0, 0, 506, 119, 0, 246, 255 }, // 0x00001370
	 { 46, 1152, -2620, 0, 0, 1109, 119, 0, 246, 255 }, // 0x00001380
	 { 34, 1152, -2762, 0, 6865, 1109, 119, 0, 246, 255 }, // 0x00001390
	 { 34, 1168, -2762, 0, 6865, 506, 119, 0, 246, 255 }, // 0x000013A0
};

Vtx_t _spot12_room_0_vertices_000013B0[12] = 
{
	 { 19, 1113, -3019, 0, 3084, 1024, 83, 80, 33, 255 }, // 0x000013B0
	 { 123, 1113, -2970, 0, 2230, 533, 53, 98, 45, 255 }, // 0x000013C0
	 { 243, 1113, -2980, 0, 1206, 533, 223, 108, 39, 255 }, // 0x000013D0
	 { 379, 1113, -3049, 0, 0, 1024, 7, 99, 66, 255 }, // 0x000013E0
	 { 389, 1113, -2929, 0, 0, 0, 230, 114, 230, 255 }, // 0x000013F0
	 { 253, 1113, -2860, 0, 1206, -491, 217, 108, 223, 255 }, // 0x00001400
	 { 412, 1113, -2650, 0, 0, -2389, 223, 80, 83, 255 }, // 0x00001410
	 { 52, 1113, -2620, 0, 3084, -2389, 46, 80, 76, 255 }, // 0x00001420
	 { 133, 1113, -2850, 0, 2230, -491, 45, 98, 203, 255 }, // 0x00001430
	 { 20, 1093, -2761, 0, 3254, -1173, 248, 147, 49, 255 }, // 0x00001440
	 { 148, 1093, -2799, 0, 2140, -936, 231, 148, 213, 255 }, // 0x00001450
	 { 148, 1093, -2732, 0, 2188, -1511, 222, 155, 54, 255 }, // 0x00001460
};

Vtx_t _spot12_room_0_vertices_00001470[8] = 
{
	 { 13, 952, -3049, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001470
	 { 983, 952, -3049, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001480
	 { 13, 1293, -3049, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001490
	 { 983, 1293, -3049, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014A0
	 { 13, 952, -2619, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014B0
	 { 983, 952, -2619, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014C0
	 { 13, 1293, -2619, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014D0
	 { 983, 1293, -2619, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014E0
};

Gfx _spot12_room_0_dlist_000014F0[] =
{
	gsDPPipeSync(), // 0x000014F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000014F8
	gsSPVertex(_spot12_room_0_vertices_00001470, 8, 0), // 0x00001500
	gsSPCullDisplayList(0, 7), // 0x00001508
	gsDPPipeSync(), // 0x00001510
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001518
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001520
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001528
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00006678), // 0x00001530
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00001538
	gsDPLoadSync(), // 0x00001540
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001548
	gsDPPipeSync(), // 0x00001550
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00001558
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001560
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001568
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001570
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001578
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001580
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001588
	gsSPVertex(_spot12_room_0_vertices_00000CA0, 3, 0), // 0x00001590
	gsSP1Triangle(0, 1, 2, 0), // 0x00001598
	gsDPPipeSync(), // 0x000015A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000BEB0), // 0x000015A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000015B0
	gsDPLoadSync(), // 0x000015B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000015C0
	gsDPPipeSync(), // 0x000015C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000015D0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000015D8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000015E0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000015E8
	gsSPVertex(_spot12_room_0_vertices_00000CD0, 12, 0), // 0x000015F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000015F8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001600
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001608
	gsDPPipeSync(), // 0x00001610
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00006678), // 0x00001618
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00001620
	gsDPLoadSync(), // 0x00001628
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001630
	gsDPPipeSync(), // 0x00001638
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00001640
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001648
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001650
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001658
	gsSPVertex(_spot12_room_0_vertices_00000D90, 8, 0), // 0x00001660
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001668
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001670
	gsDPPipeSync(), // 0x00001678
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000DE78), // 0x00001680
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001688
	gsDPLoadSync(), // 0x00001690
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001698
	gsDPPipeSync(), // 0x000016A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000016A8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000016B0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000016B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000016C0
	gsDPSetPrimColor(0, 0, 210, 200, 175, 255), // 0x000016C8
	gsSPVertex(_spot12_room_0_vertices_00000E10, 32, 0), // 0x000016D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000016D8
	gsSP2Triangles(4, 2, 5, 0, 4, 5, 6, 0), // 0x000016E0
	gsSP2Triangles(7, 5, 8, 0, 7, 8, 9, 0), // 0x000016E8
	gsSP2Triangles(10, 8, 1, 0, 10, 1, 11, 0), // 0x000016F0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000016F8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00001700
	gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0), // 0x00001708
	gsSP2Triangles(26, 24, 23, 0, 27, 28, 29, 0), // 0x00001710
	gsSP2Triangles(28, 30, 31, 0, 28, 31, 29, 0), // 0x00001718
	gsSPVertex(_spot12_room_0_vertices_00001010, 30, 0), // 0x00001720
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001728
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00001730
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001738
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001740
	gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0), // 0x00001748
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x00001750
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x00001758
	gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0), // 0x00001760
	gsDPPipeSync(), // 0x00001768
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000CAB0), // 0x00001770
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 4, 0), // 0x00001778
	gsDPLoadSync(), // 0x00001780
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001788
	gsDPPipeSync(), // 0x00001790
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 6, 0, 0, 4, 0), // 0x00001798
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x000017A0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000017A8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000017B0
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000017B8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000017C0
	gsSPVertex(_spot12_room_0_vertices_000011F0, 4, 0), // 0x000017C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000017D0
	gsDPPipeSync(), // 0x000017D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000D2B0), // 0x000017E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x000017E8
	gsDPLoadSync(), // 0x000017F0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000017F8
	gsDPPipeSync(), // 0x00001800
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00001808
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001810
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001818
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001820
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00001828
	gsDPSetPrimColor(0, 0, 210, 200, 175, 255), // 0x00001830
	gsSPVertex(_spot12_room_0_vertices_00001230, 12, 0), // 0x00001838
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00001840
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00001848
	gsDPPipeSync(), // 0x00001850
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000DE78), // 0x00001858
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001860
	gsDPLoadSync(), // 0x00001868
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001870
	gsDPPipeSync(), // 0x00001878
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001880
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001888
	gsSPVertex(_spot12_room_0_vertices_000012F0, 8, 0), // 0x00001890
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001898
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000018A0
	gsDPPipeSync(), // 0x000018A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000CAB0), // 0x000018B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 4, 0), // 0x000018B8
	gsDPLoadSync(), // 0x000018C0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000018C8
	gsDPPipeSync(), // 0x000018D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 6, 0, 0, 4, 0), // 0x000018D8
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x000018E0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000018E8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000018F0
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000018F8
	gsSPVertex(_spot12_room_0_vertices_00001370, 4, 0), // 0x00001900
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001908
	gsDPPipeSync(), // 0x00001910
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000DE78), // 0x00001918
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001920
	gsDPLoadSync(), // 0x00001928
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001930
	gsDPPipeSync(), // 0x00001938
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001940
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001948
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001950
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001958
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00001960
	gsSPVertex(_spot12_room_0_vertices_000013B0, 12, 0), // 0x00001968
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001970
	gsSP2Triangles(2, 4, 3, 0, 4, 2, 5, 0), // 0x00001978
	gsSP2Triangles(5, 6, 4, 0, 1, 0, 7, 0), // 0x00001980
	gsSP2Triangles(1, 7, 8, 0, 8, 7, 6, 0), // 0x00001988
	gsSP2Triangles(8, 6, 5, 0, 9, 10, 11, 0), // 0x00001990
	gsSPEndDisplayList(), // 0x00001998
};

Vtx_t _spot12_room_0_vertices_000019A0[4] = 
{
	 { -854, 306, -814, 0, 1024, 0, 0, 0, 120, 255 }, // 0x000019A0
	 { -854, 246, -814, 0, 1024, 1024, 0, 0, 120, 255 }, // 0x000019B0
	 { -769, 246, -814, 0, 0, 1024, 0, 0, 120, 255 }, // 0x000019C0
	 { -769, 306, -814, 0, 0, 0, 0, 0, 120, 255 }, // 0x000019D0
};

Vtx_t _spot12_room_0_vertices_000019E0[8] = 
{
	 { -854, 326, -814, 0, 0, 0, 0, 0, 120, 255 }, // 0x000019E0
	 { -854, 306, -814, 0, 0, 512, 0, 0, 120, 255 }, // 0x000019F0
	 { -658, 313, -814, 0, 2048, 512, 0, 0, 120, 255 }, // 0x00001A00
	 { -658, 333, -814, 0, 2048, 0, 0, 0, 120, 255 }, // 0x00001A10
	 { -995, 426, -814, 0, 0, 0, 0, 0, 120, 255 }, // 0x00001A20
	 { -995, 406, -814, 0, 0, 512, 0, 0, 120, 255 }, // 0x00001A30
	 { -854, 306, -814, 0, 2048, 512, 0, 0, 120, 255 }, // 0x00001A40
	 { -854, 326, -814, 0, 2048, 0, 0, 0, 120, 255 }, // 0x00001A50
};

Vtx_t _spot12_room_0_vertices_00001A60[8] = 
{
	 { -995, 246, -814, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A60
	 { -658, 246, -814, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A70
	 { -995, 426, -814, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A80
	 { -658, 426, -814, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A90
	 { -995, 246, -814, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AA0
	 { -658, 246, -814, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AB0
	 { -995, 426, -814, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AC0
	 { -658, 426, -814, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AD0
};

Gfx _spot12_room_0_dlist_00001AE0[] =
{
	gsDPPipeSync(), // 0x00001AE0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001AE8
	gsSPVertex(_spot12_room_0_vertices_00001A60, 8, 0), // 0x00001AF0
	gsSPCullDisplayList(0, 7), // 0x00001AF8
	gsDPPipeSync(), // 0x00001B00
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001B08
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001B10
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001B18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000B678), // 0x00001B20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00001B28
	gsDPLoadSync(), // 0x00001B30
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001B38
	gsDPPipeSync(), // 0x00001B40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00001B48
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001B50
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001B58
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001B60
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x00001B68
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001B70
	gsDPSetPrimColor(0, 0, 192, 154, 123, 255), // 0x00001B78
	gsSPVertex(_spot12_room_0_vertices_000019A0, 4, 0), // 0x00001B80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B88
	gsDPPipeSync(), // 0x00001B90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000BE78), // 0x00001B98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00001BA0
	gsDPLoadSync(), // 0x00001BA8
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00001BB0
	gsDPPipeSync(), // 0x00001BB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00001BC0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00001BC8
	gsSPVertex(_spot12_room_0_vertices_000019E0, 8, 0), // 0x00001BD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001BD8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001BE0
	gsSPEndDisplayList(), // 0x00001BE8
};

Vtx_t _spot12_room_0_vertices_00001BF0[4] = 
{
	 { 1095, 932, -379, 0, 1024, 0, 120, 0, 0, 255 }, // 0x00001BF0
	 { 1095, 872, -379, 0, 1024, 1024, 120, 0, 0, 255 }, // 0x00001C00
	 { 1095, 872, -463, 0, 0, 1024, 120, 0, 0, 255 }, // 0x00001C10
	 { 1095, 932, -463, 0, 0, 0, 120, 0, 0, 255 }, // 0x00001C20
};

Vtx_t _spot12_room_0_vertices_00001C30[8] = 
{
	 { 1095, 942, -421, 0, 0, 0, 120, 0, 0, 255 }, // 0x00001C30
	 { 1095, 920, -419, 0, 0, 512, 120, 0, 0, 255 }, // 0x00001C40
	 { 1095, 951, -568, 0, 1594, 512, 120, 0, 0, 255 }, // 0x00001C50
	 { 1095, 972, -568, 0, 1613, 0, 120, 0, 0, 255 }, // 0x00001C60
	 { 1095, 962, -286, 0, 292, 512, 120, 0, 0, 255 }, // 0x00001C70
	 { 1095, 920, -419, 0, 2048, 512, 120, 0, 0, 255 }, // 0x00001C80
	 { 1095, 942, -421, 0, 2048, 0, 120, 0, 0, 255 }, // 0x00001C90
	 { 1095, 981, -287, 0, 339, 0, 120, 0, 0, 255 }, // 0x00001CA0
};

Vtx_t _spot12_room_0_vertices_00001CB0[8] = 
{
	 { 1095, 872, -568, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CB0
	 { 1095, 872, -568, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CC0
	 { 1095, 981, -568, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CD0
	 { 1095, 981, -568, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CE0
	 { 1095, 872, -286, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CF0
	 { 1095, 872, -286, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D00
	 { 1095, 981, -286, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D10
	 { 1095, 981, -286, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D20
};

Gfx _spot12_room_0_dlist_00001D30[] =
{
	gsDPPipeSync(), // 0x00001D30
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001D38
	gsSPVertex(_spot12_room_0_vertices_00001CB0, 8, 0), // 0x00001D40
	gsSPCullDisplayList(0, 7), // 0x00001D48
	gsDPPipeSync(), // 0x00001D50
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001D58
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001D60
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001D68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000B678), // 0x00001D70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00001D78
	gsDPLoadSync(), // 0x00001D80
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001D88
	gsDPPipeSync(), // 0x00001D90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00001D98
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001DA0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001DA8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001DB0
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x00001DB8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001DC0
	gsDPSetPrimColor(0, 0, 192, 154, 123, 255), // 0x00001DC8
	gsSPVertex(_spot12_room_0_vertices_00001BF0, 4, 0), // 0x00001DD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001DD8
	gsDPPipeSync(), // 0x00001DE0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000BE78), // 0x00001DE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 6, 0), // 0x00001DF0
	gsDPLoadSync(), // 0x00001DF8
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00001E00
	gsDPPipeSync(), // 0x00001E08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 4, 0, 0, 6, 0), // 0x00001E10
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00001E18
	gsSPVertex(_spot12_room_0_vertices_00001C30, 8, 0), // 0x00001E20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001E28
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001E30
	gsSPEndDisplayList(), // 0x00001E38
};

Vtx_t _spot12_room_0_vertices_00001E40[8] = 
{
	 { -6384, 208, -1796, 0, 0, 0, 118, 0, 240, 255 }, // 0x00001E40
	 { -6384, -17, -1796, 0, 0, 1024, 118, 0, 240, 255 }, // 0x00001E50
	 { -6414, -17, -2018, 0, 1024, 1024, 118, 0, 240, 255 }, // 0x00001E60
	 { -6414, 208, -2018, 0, 1024, 0, 118, 0, 240, 255 }, // 0x00001E70
	 { -6438, 383, -2192, 0, 0, 0, 118, 0, 240, 255 }, // 0x00001E80
	 { -6438, -17, -2192, 0, 0, 1024, 118, 0, 240, 255 }, // 0x00001E90
	 { -6493, -17, -2588, 0, 1024, 1024, 118, 0, 240, 255 }, // 0x00001EA0
	 { -6493, 383, -2588, 0, 1024, 0, 118, 0, 240, 255 }, // 0x00001EB0
};

Vtx_t _spot12_room_0_vertices_00001EC0[8] = 
{
	 { -6493, -17, -2588, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001EC0
	 { -6354, -17, -1801, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001ED0
	 { -6493, 383, -2588, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001EE0
	 { -6354, 383, -1801, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001EF0
	 { -6522, -17, -2583, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F00
	 { -6384, -17, -1796, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F10
	 { -6522, 383, -2583, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F20
	 { -6384, 383, -1796, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001F30
};

Gfx _spot12_room_0_dlist_00001F40[] =
{
	gsDPPipeSync(), // 0x00001F40
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001F48
	gsSPVertex(_spot12_room_0_vertices_00001EC0, 8, 0), // 0x00001F50
	gsSPCullDisplayList(0, 7), // 0x00001F58
	gsDPPipeSync(), // 0x00001F60
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001F68
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001F70
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001F78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000C678), // 0x00001F80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00001F88
	gsDPLoadSync(), // 0x00001F90
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001F98
	gsDPPipeSync(), // 0x00001FA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00001FA8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001FB0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001FB8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001FC0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00001FC8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00001FD0
	gsDPSetPrimColor(0, 0, 192, 154, 123, 255), // 0x00001FD8
	gsSPVertex(_spot12_room_0_vertices_00001E40, 8, 0), // 0x00001FE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001FE8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001FF0
	gsSPEndDisplayList(), // 0x00001FF8
};

Vtx_t _spot12_room_0_vertices_00002000[60] = 
{
	 { 1317, 1042, -2542, 0, -3054, -4151, 221, 106, 42, 255 }, // 0x00002000
	 { 1135, 1042, -2398, 0, -2235, -3118, 216, 80, 80, 255 }, // 0x00002010
	 { 1135, 1042, -2135, 0, -738, -3118, 176, 80, 40, 255 }, // 0x00002020
	 { 1599, 1042, -2135, 0, -738, -5759, 149, 10, 51, 255 }, // 0x00002030
	 { 824, 1042, -2398, 0, -2235, -1348, 176, 80, 40, 255 }, // 0x00002040
	 { 824, 1042, -2766, 0, -4330, -1348, 199, 9, 104, 255 }, // 0x00002050
	 { 1599, 834, -2135, 0, -738, -5759, 187, 69, 69, 255 }, // 0x00002060
	 { 1299, 834, -2135, 0, -738, -4049, 207, 49, 98, 255 }, // 0x00002070
	 { 1299, 834, -1872, 0, 758, -4049, 169, 58, 198, 255 }, // 0x00002080
	 { 1599, 834, -1872, 0, 758, -5759, 158, 49, 207, 255 }, // 0x00002090
	 { 1299, 1085, -1632, 0, 2549, -4094, 172, 84, 0, 255 }, // 0x000020A0
	 { 1599, 1085, -1632, 0, 2549, -5804, 187, 97, 250, 255 }, // 0x000020B0
	 { 1599, 1085, -1872, 0, 1187, -5804, 146, 39, 229, 255 }, // 0x000020C0
	 { 1299, 1085, -1135, 0, 5377, -4094, 234, 109, 212, 255 }, // 0x000020D0
	 { 1507, 1085, -1135, 0, 5377, -5278, 157, 58, 221, 255 }, // 0x000020E0
	 { 1299, 1085, -1872, 0, 1187, -4094, 158, 49, 207, 255 }, // 0x000020F0
	 { 1425, 1085, -980, 0, 6260, -4815, 199, 79, 187, 255 }, // 0x00002100
	 { 697, 1085, -767, 0, 7472, -674, 191, 25, 159, 255 }, // 0x00002110
	 { 697, 1085, -1135, 0, 5377, -674, 220, 36, 148, 255 }, // 0x00002120
	 { 1299, 913, -1714, 0, 1656, -4049, 160, 48, 204, 255 }, // 0x00002130
	 { 998, 913, -1714, 0, 1656, -2339, 160, 48, 204, 255 }, // 0x00002140
	 { 998, 954, -1135, 0, 4948, -2339, 193, 31, 159, 255 }, // 0x00002150
	 { 1299, 954, -1135, 0, 4948, -4049, 189, 67, 184, 255 }, // 0x00002160
	 { 998, 834, -1872, 0, 758, -2339, 158, 49, 207, 255 }, // 0x00002170
	 { 998, 834, -1714, 0, 1656, -2339, 143, 28, 228, 255 }, // 0x00002180
	 { 1299, 834, -1714, 0, 1656, -4049, 249, 84, 172, 255 }, // 0x00002190
	 { 998, 653, -1872, 0, 758, -2339, 148, 36, 220, 255 }, // 0x000021A0
	 { 1299, 653, -1872, 0, 758, -4049, 187, 69, 187, 255 }, // 0x000021B0
	 { 1299, 653, -2135, 0, -738, -4049, 172, 84, 7, 255 }, // 0x000021C0
	 { 998, 653, -2135, 0, -738, -2339, 220, 36, 108, 255 }, // 0x000021D0
	 { 277, 834, -2398, 0, -2235, 1766, 187, 69, 187, 255 }, // 0x000021E0
	 { 277, 834, -2135, 0, -738, 1766, 207, 49, 98, 255 }, // 0x000021F0
	 { 1135, 834, -2135, 0, -738, -3118, 237, 19, 116, 255 }, // 0x00002200
	 { 1135, 834, -2398, 0, -2235, -3118, 158, 49, 49, 255 }, // 0x00002210
	 { 277, 640, -2727, 0, -4106, 1766, 191, 58, 82, 255 }, // 0x00002220
	 { 824, 640, -2398, 0, -2235, -1348, 176, 80, 216, 255 }, // 0x00002230
	 { 824, 640, -2766, 0, -4330, -1348, 189, 21, 97, 255 }, // 0x00002240
	 { 277, 640, -2398, 0, -2235, 1766, 148, 36, 220, 255 }, // 0x00002250
	 { 998, 533, -2135, 0, -768, -2339, 187, 69, 69, 255 }, // 0x00002260
	 { 277, 533, -2135, 0, -768, 1766, 152, 42, 42, 255 }, // 0x00002270
	 { 697, 533, -1872, 0, 728, -628, 207, 98, 49, 255 }, // 0x00002280
	 { 277, 533, -1872, 0, 728, 1766, 207, 49, 98, 255 }, // 0x00002290
	 { 998, 533, -1561, 0, 2494, -2339, 152, 52, 230, 255 }, // 0x000022A0
	 { 697, 533, -1561, 0, 2494, -628, 140, 29, 0, 255 }, // 0x000022B0
	 { 998, 733, -1561, 0, 2525, -2339, 148, 36, 220, 255 }, // 0x000022C0
	 { 697, 733, -1561, 0, 2525, -628, 158, 49, 207, 255 }, // 0x000022D0
	 { 697, 733, -1135, 0, 4948, -628, 0, 53, 149, 255 }, // 0x000022E0
	 { 998, 733, -1135, 0, 4948, -2339, 157, 66, 250, 255 }, // 0x000022F0
	 { 291, 533, -1453, 0, 3139, 2025, 158, 49, 207, 255 }, // 0x00002300
	 { 291, 533, -1135, 0, 4948, 2025, 149, 53, 0, 255 }, // 0x00002310
	 { 697, 533, -1135, 0, 4948, -287, 0, 120, 0, 255 }, // 0x00002320
	 { 697, 533, -1453, 0, 3139, -287, 149, 53, 0, 255 }, // 0x00002330
	 { 397, 863, -1261, 0, 4363, 1013, 187, 69, 187, 255 }, // 0x00002340
	 { 397, 863, -629, 0, 7956, 1013, 184, 41, 86, 255 }, // 0x00002350
	 { 837, 863, -707, 0, 7512, -1495, 15, 83, 84, 255 }, // 0x00002360
	 { 837, 863, -1261, 0, 4363, -1495, 49, 49, 158, 255 }, // 0x00002370
	 { 397, 572, -1135, 0, 4805, 1082, 246, 119, 0, 255 }, // 0x00002380
	 { 96, 572, -1135, 0, 4805, 2792, 176, 80, 216, 255 }, // 0x00002390
	 { 96, 572, -586, 0, 7928, 2792, 218, 112, 239, 255 }, // 0x000023A0
	 { 397, 572, -639, 0, 7630, 1082, 229, 110, 39, 255 }, // 0x000023B0
};

Vtx_t _spot12_room_0_vertices_000023C0[62] = 
{
	 { 1299, 834, -1872, 0, 4719, -2057, 169, 58, 198, 255 }, // 0x000023C0
	 { 1299, 1085, -1872, 0, 4719, -3341, 158, 49, 207, 255 }, // 0x000023D0
	 { 1599, 1085, -1872, 0, 6258, -3341, 146, 39, 229, 255 }, // 0x000023E0
	 { 1599, 834, -1872, 0, 6258, -2057, 158, 49, 207, 255 }, // 0x000023F0
	 { 1135, 834, -2135, 0, 4073, -1891, 237, 19, 116, 255 }, // 0x00002400
	 { 1599, 834, -2135, 0, 6450, -1891, 187, 69, 69, 255 }, // 0x00002410
	 { 1599, 1042, -2135, 0, 6450, -3103, 149, 10, 51, 255 }, // 0x00002420
	 { 1135, 1042, -2135, 0, 4073, -3103, 176, 80, 40, 255 }, // 0x00002430
	 { 824, 640, -2398, 0, 3091, -759, 176, 80, 216, 255 }, // 0x00002440
	 { 277, 640, -2398, 0, 288, -759, 148, 36, 220, 255 }, // 0x00002450
	 { 277, 834, -2398, 0, 288, -1891, 187, 69, 187, 255 }, // 0x00002460
	 { 824, 834, -2398, 0, 3091, -1891, 0, 0, 136, 255 }, // 0x00002470
	 { 824, 834, -2398, 0, 2391, -1891, 0, 0, 120, 255 }, // 0x00002480
	 { 1135, 1042, -2398, 0, 3984, -3103, 216, 80, 80, 255 }, // 0x00002490
	 { 824, 1042, -2398, 0, 2391, -3103, 176, 80, 40, 255 }, // 0x000024A0
	 { 1135, 834, -2398, 0, 3984, -1891, 158, 49, 49, 255 }, // 0x000024B0
	 { 277, 533, -2135, 0, -323, -140, 152, 42, 42, 255 }, // 0x000024C0
	 { 627, 653, -2135, 0, 1472, -839, 33, 224, 110, 255 }, // 0x000024D0
	 { 277, 834, -2135, 0, -323, -1891, 207, 49, 98, 255 }, // 0x000024E0
	 { 727, 653, -2135, 0, 1984, -839, 230, 231, 114, 255 }, // 0x000024F0
	 { 998, 653, -2135, 0, 3371, -839, 220, 36, 108, 255 }, // 0x00002500
	 { 627, 533, -2135, 0, 1472, -140, 65, 65, 77, 255 }, // 0x00002510
	 { 998, 834, -1714, 0, 3283, -1891, 143, 28, 228, 255 }, // 0x00002520
	 { 998, 913, -1714, 0, 3283, -2350, 160, 48, 204, 255 }, // 0x00002530
	 { 1299, 913, -1714, 0, 4822, -2350, 160, 48, 204, 255 }, // 0x00002540
	 { 1299, 834, -1714, 0, 4822, -1891, 249, 84, 172, 255 }, // 0x00002550
	 { 998, 653, -1872, 0, 3283, -839, 148, 36, 220, 255 }, // 0x00002560
	 { 998, 834, -1872, 0, 3283, -1891, 158, 49, 207, 255 }, // 0x00002570
	 { 1299, 834, -1872, 0, 4822, -1891, 169, 58, 198, 255 }, // 0x00002580
	 { 1299, 653, -1872, 0, 4822, -839, 187, 69, 187, 255 }, // 0x00002590
	 { 1299, 1085, -1135, 0, 4577, -2856, 234, 109, 212, 255 }, // 0x000025A0
	 { 998, 954, -1135, 0, 3136, -2095, 193, 31, 159, 255 }, // 0x000025B0
	 { 697, 1085, -1135, 0, 1694, -2856, 220, 36, 148, 255 }, // 0x000025C0
	 { 998, 853, -1135, 0, 3136, -1508, 195, 196, 172, 255 }, // 0x000025D0
	 { 898, 853, -1135, 0, 2656, -1508, 33, 224, 146, 255 }, // 0x000025E0
	 { 898, 733, -1135, 0, 2656, -810, 65, 65, 179, 255 }, // 0x000025F0
	 { 697, 733, -1135, 0, 1694, -810, 0, 53, 149, 255 }, // 0x00002600
	 { 1299, 954, -1135, 0, 4577, -2095, 189, 67, 184, 255 }, // 0x00002610
	 { 397, 572, -1135, 0, 336, -362, 246, 119, 0, 255 }, // 0x00002620
	 { 397, 333, -1135, 0, 336, 1024, 0, 0, 136, 255 }, // 0x00002630
	 { 96, 333, -1135, 0, -1203, 1024, 172, 0, 172, 255 }, // 0x00002640
	 { 96, 572, -1135, 0, -1203, -362, 176, 80, 216, 255 }, // 0x00002650
	 { 277, 333, -1872, 0, -192, 1024, 220, 108, 36, 255 }, // 0x00002660
	 { 357, 453, -1872, 0, 220, 325, 33, 224, 110, 255 }, // 0x00002670
	 { 277, 533, -1872, 0, -192, -140, 207, 49, 98, 255 }, // 0x00002680
	 { 357, 333, -1872, 0, 220, 1024, 65, 65, 77, 255 }, // 0x00002690
	 { 457, 453, -1872, 0, 732, 325, 223, 224, 110, 255 }, // 0x000026A0
	 { 697, 533, -1872, 0, 1963, -140, 207, 98, 49, 255 }, // 0x000026B0
	 { 457, 333, -1872, 0, 732, 1024, 191, 65, 77, 255 }, // 0x000026C0
	 { 697, 333, -1872, 0, 1963, 1024, 187, 69, 69, 255 }, // 0x000026D0
	 { 291, 333, -1453, 0, 208, 1024, 204, 104, 230, 255 }, // 0x000026E0
	 { 291, 533, -1453, 0, 208, -140, 158, 49, 207, 255 }, // 0x000026F0
	 { 697, 533, -1453, 0, 2290, -140, 149, 53, 0, 255 }, // 0x00002700
	 { 697, 333, -1453, 0, 2290, 1024, 158, 49, 207, 255 }, // 0x00002710
	 { 697, 533, -1561, 0, 3059, -140, 140, 29, 0, 255 }, // 0x00002720
	 { 697, 733, -1561, 0, 3059, -1304, 158, 49, 207, 255 }, // 0x00002730
	 { 998, 733, -1561, 0, 4598, -1304, 148, 36, 220, 255 }, // 0x00002740
	 { 998, 533, -1561, 0, 4598, -140, 152, 52, 230, 255 }, // 0x00002750
	 { 837, 863, -1261, 0, -1079, -2002, 49, 49, 158, 255 }, // 0x00002760
	 { 837, 863, -1135, 0, -1723, -2002, 120, 0, 0, 255 }, // 0x00002770
	 { 837, 733, -1135, 0, -1723, -1338, 120, 0, 0, 255 }, // 0x00002780
	 { 837, 733, -1261, 0, -1079, -1338, 84, 0, 172, 255 }, // 0x00002790
};

Vtx_t _spot12_room_0_vertices_000027A0[32] = 
{
	 { 837, 733, -1261, 0, 2056, -1304, 84, 0, 172, 255 }, // 0x000027A0
	 { 697, 733, -1261, 0, 1441, -1304, 203, 0, 149, 255 }, // 0x000027B0
	 { 837, 863, -1261, 0, 2056, -2059, 49, 49, 158, 255 }, // 0x000027C0
	 { 397, 863, -1261, 0, -98, -2059, 187, 69, 187, 255 }, // 0x000027D0
	 { 397, 533, -1261, 0, -98, -140, 172, 0, 172, 255 }, // 0x000027E0
	 { 697, 533, -1261, 0, 1441, -140, 149, 0, 203, 255 }, // 0x000027F0
	 { 998, 653, -2135, 0, 3371, -839, 220, 36, 108, 255 }, // 0x00002800
	 { 727, 653, -2135, 0, 1984, -839, 230, 231, 114, 255 }, // 0x00002810
	 { 998, 533, -2135, 0, 3371, -140, 187, 69, 69, 255 }, // 0x00002820
	 { 727, 533, -2135, 0, 1984, -140, 191, 65, 77, 255 }, // 0x00002830
	 { 1135, 834, -2135, 0, 4073, -1891, 237, 19, 116, 255 }, // 0x00002840
	 { 1199, 773, -2135, 0, 4398, -1537, 33, 224, 110, 255 }, // 0x00002850
	 { 1299, 834, -2135, 0, 4910, -1891, 207, 49, 98, 255 }, // 0x00002860
	 { 1299, 773, -2135, 0, 4910, -1537, 195, 196, 84, 255 }, // 0x00002870
	 { 1199, 653, -2135, 0, 4398, -839, 46, 46, 100, 255 }, // 0x00002880
	 { 1299, 834, -1872, 0, 453, -1540, 169, 58, 198, 255 }, // 0x00002890
	 { 1299, 954, -1814, 0, 749, -2155, 146, 224, 33, 255 }, // 0x000028A0
	 { 1299, 1085, -1872, 0, 453, -2824, 158, 49, 207, 255 }, // 0x000028B0
	 { 1299, 834, -1814, 0, 749, -1540, 179, 65, 65, 255 }, // 0x000028C0
	 { 1299, 954, -1714, 0, 1261, -2155, 153, 214, 213, 255 }, // 0x000028D0
	 { 1299, 1085, -1632, 0, 1678, -2824, 172, 84, 0, 255 }, // 0x000028E0
	 { 1135, 1042, -2398, 0, -2694, -3103, 216, 80, 80, 255 }, // 0x000028F0
	 { 1135, 834, -2398, 0, -2694, -1891, 158, 49, 49, 255 }, // 0x00002900
	 { 1135, 1042, -2135, 0, -1347, -3103, 176, 80, 40, 255 }, // 0x00002910
	 { 1299, 834, -2135, 0, -1347, -1891, 207, 49, 98, 255 }, // 0x00002920
	 { 1299, 653, -2135, 0, -1347, -839, 172, 84, 7, 255 }, // 0x00002930
	 { 1299, 653, -1872, 0, 0, -839, 187, 69, 187, 255 }, // 0x00002940
	 { 1299, 834, -1872, 0, 0, -1891, 169, 58, 198, 255 }, // 0x00002950
	 { 824, 640, -2766, 0, -4463, -759, 189, 21, 97, 255 }, // 0x00002960
	 { 824, 760, -2708, 0, -4176, -1458, 146, 224, 33, 255 }, // 0x00002970
	 { 824, 1042, -2766, 0, -4463, -3103, 199, 9, 104, 255 }, // 0x00002980
	 { 824, 640, -2708, 0, -4176, -759, 179, 65, 65, 255 }, // 0x00002990
};

Vtx_t _spot12_room_0_vertices_000029A0[32] = 
{
	 { 824, 1042, -2766, 0, -4463, -3103, 199, 9, 104, 255 }, // 0x000029A0
	 { 824, 760, -2708, 0, -4176, -1458, 146, 224, 33, 255 }, // 0x000029B0
	 { 824, 760, -2608, 0, -3679, -1458, 146, 224, 223, 255 }, // 0x000029C0
	 { 824, 1042, -2398, 0, -2634, -3103, 176, 80, 40, 255 }, // 0x000029D0
	 { 824, 640, -2608, 0, -3679, -759, 179, 65, 191, 255 }, // 0x000029E0
	 { 824, 640, -2398, 0, -2634, -759, 176, 80, 216, 255 }, // 0x000029F0
	 { 277, 533, -2135, 0, -1000, -140, 152, 42, 42, 255 }, // 0x00002A00
	 { 277, 834, -2135, 0, -1000, -1891, 207, 49, 98, 255 }, // 0x00002A10
	 { 277, 834, -2398, 0, -2299, -1891, 187, 69, 187, 255 }, // 0x00002A20
	 { 277, 640, -2398, 0, -2299, -759, 148, 36, 220, 255 }, // 0x00002A30
	 { 277, 333, -2766, 0, -4118, 1024, 173, 39, 77, 255 }, // 0x00002A40
	 { 277, 453, -2604, 0, -3316, 325, 146, 224, 33, 255 }, // 0x00002A50
	 { 277, 640, -2727, 0, -3924, -759, 191, 58, 82, 255 }, // 0x00002A60
	 { 277, 333, -2604, 0, -3316, 1024, 179, 65, 65, 255 }, // 0x00002A70
	 { 277, 453, -2504, 0, -2822, 325, 146, 224, 223, 255 }, // 0x00002A80
	 { 277, 333, -2504, 0, -2822, 1024, 156, 46, 210, 255 }, // 0x00002A90
	 { 998, 733, -1561, 0, 866, -1304, 148, 36, 220, 255 }, // 0x00002AA0
	 { 998, 853, -1451, 0, 1432, -2003, 142, 231, 26, 255 }, // 0x00002AB0
	 { 998, 834, -1714, 0, 85, -1891, 143, 28, 228, 255 }, // 0x00002AC0
	 { 998, 913, -1714, 0, 85, -2350, 160, 48, 204, 255 }, // 0x00002AD0
	 { 998, 733, -1451, 0, 1432, -1304, 179, 65, 65, 255 }, // 0x00002AE0
	 { 998, 853, -1351, 0, 1944, -2003, 146, 224, 223, 255 }, // 0x00002AF0
	 { 998, 954, -1135, 0, 3048, -2590, 193, 31, 159, 255 }, // 0x00002B00
	 { 998, 733, -1351, 0, 1944, -1304, 179, 65, 191, 255 }, // 0x00002B10
	 { 998, 733, -1135, 0, 3048, -1304, 157, 66, 250, 255 }, // 0x00002B20
	 { 998, 653, -1872, 0, -723, -839, 148, 36, 220, 255 }, // 0x00002B30
	 { 998, 533, -1561, 0, 866, -140, 152, 52, 230, 255 }, // 0x00002B40
	 { 998, 834, -1872, 0, -723, -1891, 158, 49, 207, 255 }, // 0x00002B50
	 { 1299, 913, -1714, 0, 1261, -1943, 160, 48, 204, 255 }, // 0x00002B60
	 { 1299, 954, -1135, 0, 4224, -2155, 189, 67, 184, 255 }, // 0x00002B70
	 { 1299, 1085, -1135, 0, 4224, -2824, 234, 109, 212, 255 }, // 0x00002B80
	 { 1299, 1085, -1632, 0, 1678, -2824, 172, 84, 0, 255 }, // 0x00002B90
};

Vtx_t _spot12_room_0_vertices_00002BA0[63] = 
{
	 { 697, 863, -1135, 0, 3771, -2059, 136, 0, 0, 255 }, // 0x00002BA0
	 { 697, 863, -685, 0, 6075, -2059, 158, 226, 61, 255 }, // 0x00002BB0
	 { 697, 1085, -767, 0, 5657, -3351, 191, 25, 159, 255 }, // 0x00002BC0
	 { 697, 1085, -1135, 0, 3771, -3351, 220, 36, 148, 255 }, // 0x00002BD0
	 { 998, 853, -1351, 0, 1944, -2003, 146, 224, 223, 255 }, // 0x00002BE0
	 { 998, 733, -1135, 0, 3048, -1304, 157, 66, 250, 255 }, // 0x00002BF0
	 { 998, 954, -1135, 0, 3048, -2590, 193, 31, 159, 255 }, // 0x00002C00
	 { 397, 533, -1261, 0, 176, -141, 172, 0, 172, 255 }, // 0x00002C10
	 { 397, 533, -1135, 0, 820, -141, 136, 0, 0, 255 }, // 0x00002C20
	 { 397, 692, -1135, 0, 820, -1061, 146, 224, 33, 255 }, // 0x00002C30
	 { 277, 333, -1872, 0, 300, 1024, 220, 108, 36, 255 }, // 0x00002C40
	 { 277, 533, -1872, 0, 300, -140, 207, 49, 98, 255 }, // 0x00002C50
	 { 277, 533, -2135, 0, -1000, -140, 152, 42, 42, 255 }, // 0x00002C60
	 { 277, 333, -2504, 0, -2822, 1024, 156, 46, 210, 255 }, // 0x00002C70
	 { 1135, 834, -2398, 0, -2694, -1891, 158, 49, 49, 255 }, // 0x00002C80
	 { 1135, 834, -2135, 0, -1347, -1891, 237, 19, 116, 255 }, // 0x00002C90
	 { 1135, 1042, -2135, 0, -1347, -3103, 176, 80, 40, 255 }, // 0x00002CA0
	 { 397, 863, -1261, 0, 176, -2060, 187, 69, 187, 255 }, // 0x00002CB0
	 { 397, 692, -1035, 0, 1332, -1061, 146, 224, 223, 255 }, // 0x00002CC0
	 { 397, 863, -629, 0, 3410, -2060, 184, 41, 86, 255 }, // 0x00002CD0
	 { 397, 572, -1035, 0, 1332, -363, 179, 65, 191, 255 }, // 0x00002CE0
	 { 397, 572, -639, 0, 3362, -363, 229, 110, 39, 255 }, // 0x00002CF0
	 { 697, 333, -1872, 0, 282, 1024, 187, 69, 69, 255 }, // 0x00002D00
	 { 697, 453, -1769, 0, 807, 325, 146, 224, 33, 255 }, // 0x00002D10
	 { 697, 533, -1872, 0, 282, -140, 207, 98, 49, 255 }, // 0x00002D20
	 { 697, 333, -1769, 0, 807, 1024, 179, 65, 65, 255 }, // 0x00002D30
	 { 697, 453, -1669, 0, 1319, 325, 142, 231, 230, 255 }, // 0x00002D40
	 { 697, 533, -1561, 0, 1872, -140, 140, 29, 0, 255 }, // 0x00002D50
	 { 697, 333, -1669, 0, 1319, 1024, 179, 65, 191, 255 }, // 0x00002D60
	 { 697, 333, -1453, 0, 2425, 1024, 158, 49, 207, 255 }, // 0x00002D70
	 { 697, 533, -1453, 0, 2425, -140, 149, 53, 0, 255 }, // 0x00002D80
	 { 291, 333, -1453, 0, 2143, 1024, 204, 104, 230, 255 }, // 0x00002D90
	 { 291, 453, -1395, 0, 2439, 325, 146, 224, 33, 255 }, // 0x00002DA0
	 { 291, 533, -1453, 0, 2143, -140, 158, 49, 207, 255 }, // 0x00002DB0
	 { 291, 333, -1395, 0, 2439, 1024, 179, 65, 65, 255 }, // 0x00002DC0
	 { 291, 453, -1295, 0, 2951, 325, 146, 224, 223, 255 }, // 0x00002DD0
	 { 291, 533, -1135, 0, 3771, -140, 149, 53, 0, 255 }, // 0x00002DE0
	 { 291, 333, -1295, 0, 2951, 1024, 179, 65, 191, 255 }, // 0x00002DF0
	 { 291, 333, -1135, 0, 3771, 1024, 172, 84, 0, 255 }, // 0x00002E00
	 { 697, 533, -1561, 0, 1872, -140, 140, 29, 0, 255 }, // 0x00002E10
	 { 697, 653, -1451, 0, 2437, -839, 146, 224, 33, 255 }, // 0x00002E20
	 { 697, 733, -1561, 0, 1872, -1304, 158, 49, 207, 255 }, // 0x00002E30
	 { 697, 533, -1451, 0, 2437, -140, 200, 47, 95, 255 }, // 0x00002E40
	 { 697, 653, -1353, 0, 2937, -839, 136, 0, 0, 255 }, // 0x00002E50
	 { 697, 733, -1261, 0, 3409, -1304, 203, 0, 149, 255 }, // 0x00002E60
	 { 697, 533, -1353, 0, 2937, -140, 136, 0, 0, 255 }, // 0x00002E70
	 { 697, 533, -1261, 0, 3409, -140, 149, 0, 203, 255 }, // 0x00002E80
	 { 96, 333, -1135, 0, 2468, 1022, 172, 0, 172, 255 }, // 0x00002E90
	 { 96, 453, -1069, 0, 2808, 322, 146, 224, 33, 255 }, // 0x00002EA0
	 { 96, 572, -1135, 0, 2468, -366, 176, 80, 216, 255 }, // 0x00002EB0
	 { 96, 333, -1069, 0, 2808, 1022, 229, 114, 23, 255 }, // 0x00002EC0
	 { 96, 453, -969, 0, 3320, 322, 153, 214, 213, 255 }, // 0x00002ED0
	 { 96, 572, -586, 0, 5278, -366, 218, 112, 239, 255 }, // 0x00002EE0
	 { 96, 333, -969, 0, 3320, 1022, 236, 101, 196, 255 }, // 0x00002EF0
	 { 998, 533, -1561, 0, 866, -140, 152, 52, 230, 255 }, // 0x00002F00
	 { 998, 834, -1714, 0, 85, -1891, 143, 28, 228, 255 }, // 0x00002F10
	 { 998, 834, -1872, 0, -723, -1891, 158, 49, 207, 255 }, // 0x00002F20
	 { 1299, 954, -1714, 0, 1261, -2155, 153, 214, 213, 255 }, // 0x00002F30
	 { 1299, 913, -1714, 0, 1261, -1943, 160, 48, 204, 255 }, // 0x00002F40
	 { 1299, 1085, -1632, 0, 1678, -2824, 172, 84, 0, 255 }, // 0x00002F50
	 { 998, 653, -2135, 0, -2070, -839, 220, 36, 108, 255 }, // 0x00002F60
	 { 998, 533, -2135, 0, -2070, -140, 187, 69, 69, 255 }, // 0x00002F70
	 { 998, 653, -1872, 0, -723, -839, 148, 36, 220, 255 }, // 0x00002F80
};

Vtx_t _spot12_room_0_vertices_00002F90[7] = 
{
	 { 998, 834, -1714, 0, 85, -1891, 143, 28, 228, 255 }, // 0x00002F90
	 { 998, 533, -1561, 0, 866, -140, 152, 52, 230, 255 }, // 0x00002FA0
	 { 998, 733, -1561, 0, 866, -1304, 148, 36, 220, 255 }, // 0x00002FB0
	 { 397, 572, -639, 0, 204, 579, 229, 110, 39, 255 }, // 0x00002FC0
	 { 680, 696, -685, 0, 1656, -58, 231, 31, 113, 255 }, // 0x00002FD0
	 { 837, 863, -707, 0, 2461, -914, 15, 83, 84, 255 }, // 0x00002FE0
	 { 397, 863, -629, 0, 204, -914, 184, 41, 86, 255 }, // 0x00002FF0
};

Vtx_t _spot12_room_0_vertices_00003000[3] = 
{
	 { 1299, 834, -1814, 0, 0, 1024, 179, 65, 65, 255 }, // 0x00003000
	 { 1299, 834, -1714, 0, 853, 1024, 249, 84, 172, 255 }, // 0x00003010
	 { 1699, 854, -1764, 0, 427, -2394, 137, 6, 0, 255 }, // 0x00003020
};

Vtx_t _spot12_room_0_vertices_00003030[16] = 
{
	 { 1299, 834, -1714, 0, 0, 1024, 249, 84, 172, 255 }, // 0x00003030
	 { 1299, 954, -1714, 0, 0, 0, 153, 214, 213, 255 }, // 0x00003040
	 { 1699, 854, -1764, 0, 6880, 853, 137, 6, 0, 255 }, // 0x00003050
	 { 1299, 954, -1714, 0, 0, 0, 153, 214, 213, 255 }, // 0x00003060
	 { 1299, 954, -1814, 0, 0, 1024, 146, 224, 33, 255 }, // 0x00003070
	 { 1699, 854, -1764, 0, 7037, 512, 137, 6, 0, 255 }, // 0x00003080
	 { 1299, 954, -1814, 0, 0, 0, 146, 224, 33, 255 }, // 0x00003090
	 { 1299, 834, -1814, 0, 0, 1024, 179, 65, 65, 255 }, // 0x000030A0
	 { 998, 853, -1451, 0, 0, 0, 142, 231, 26, 255 }, // 0x000030B0
	 { 998, 733, -1451, 0, 0, 1024, 179, 65, 65, 255 }, // 0x000030C0
	 { 1398, 753, -1401, 0, 6880, 853, 137, 6, 0, 255 }, // 0x000030D0
	 { 998, 853, -1351, 0, 0, 0, 146, 224, 223, 255 }, // 0x000030E0
	 { 998, 853, -1451, 0, 0, 1024, 142, 231, 26, 255 }, // 0x000030F0
	 { 1398, 753, -1401, 0, 7037, 512, 137, 6, 0, 255 }, // 0x00003100
	 { 998, 733, -1351, 0, 0, 1024, 179, 65, 191, 255 }, // 0x00003110
	 { 998, 853, -1351, 0, 0, 0, 146, 224, 223, 255 }, // 0x00003120
};

Vtx_t _spot12_room_0_vertices_00003130[6] = 
{
	 { 998, 733, -1451, 0, -341, 1024, 179, 65, 65, 255 }, // 0x00003130
	 { 998, 733, -1351, 0, 512, 1024, 179, 65, 191, 255 }, // 0x00003140
	 { 1398, 753, -1401, 0, 85, -2394, 137, 6, 0, 255 }, // 0x00003150
	 { 697, 533, -1451, 0, 341, 1024, 200, 47, 95, 255 }, // 0x00003160
	 { 697, 533, -1351, 0, 1195, 1024, 241, 84, 172, 255 }, // 0x00003170
	 { 1097, 553, -1401, 0, 768, -2394, 137, 6, 0, 255 }, // 0x00003180
};

Vtx_t _spot12_room_0_vertices_00003190[16] = 
{
	 { 697, 533, -1351, 0, 0, 1024, 241, 84, 172, 255 }, // 0x00003190
	 { 697, 653, -1351, 0, 0, 0, 225, 175, 173, 255 }, // 0x000031A0
	 { 1097, 553, -1401, 0, 6880, 853, 137, 6, 0, 255 }, // 0x000031B0
	 { 697, 653, -1351, 0, 0, 0, 225, 175, 173, 255 }, // 0x000031C0
	 { 697, 653, -1451, 0, 0, 1024, 146, 224, 33, 255 }, // 0x000031D0
	 { 1097, 553, -1401, 0, 7037, 512, 137, 6, 0, 255 }, // 0x000031E0
	 { 697, 653, -1451, 0, 0, 0, 146, 224, 33, 255 }, // 0x000031F0
	 { 697, 533, -1451, 0, 0, 1024, 200, 47, 95, 255 }, // 0x00003200
	 { 697, 453, -1769, 0, 0, 0, 146, 224, 33, 255 }, // 0x00003210
	 { 697, 333, -1769, 0, 0, 1024, 179, 65, 65, 255 }, // 0x00003220
	 { 1097, 353, -1719, 0, 6880, 853, 137, 6, 0, 255 }, // 0x00003230
	 { 697, 453, -1669, 0, 0, 0, 142, 231, 230, 255 }, // 0x00003240
	 { 697, 453, -1769, 0, 0, 1024, 146, 224, 33, 255 }, // 0x00003250
	 { 1097, 353, -1719, 0, 7037, 512, 137, 6, 0, 255 }, // 0x00003260
	 { 697, 333, -1669, 0, 0, 1024, 179, 65, 191, 255 }, // 0x00003270
	 { 697, 453, -1669, 0, 0, 0, 142, 231, 230, 255 }, // 0x00003280
};

Vtx_t _spot12_room_0_vertices_00003290[6] = 
{
	 { 697, 333, -1769, 0, 0, 512, 179, 65, 65, 255 }, // 0x00003290
	 { 697, 333, -1669, 0, 0, 85, 179, 65, 191, 255 }, // 0x000032A0
	 { 1097, 353, -1719, 0, 3418, 299, 137, 6, 0, 255 }, // 0x000032B0
	 { 291, 333, -1395, 0, 0, 512, 179, 65, 65, 255 }, // 0x000032C0
	 { 291, 333, -1295, 0, 0, 85, 179, 65, 191, 255 }, // 0x000032D0
	 { 691, 353, -1345, 0, 3418, 299, 137, 6, 0, 255 }, // 0x000032E0
};

Vtx_t _spot12_room_0_vertices_000032F0[16] = 
{
	 { 291, 333, -1295, 0, 0, 1024, 179, 65, 191, 255 }, // 0x000032F0
	 { 291, 453, -1295, 0, 0, 0, 146, 224, 223, 255 }, // 0x00003300
	 { 691, 353, -1345, 0, 6880, 853, 137, 6, 0, 255 }, // 0x00003310
	 { 291, 453, -1295, 0, 0, 0, 146, 224, 223, 255 }, // 0x00003320
	 { 291, 453, -1395, 0, 0, 1024, 146, 224, 33, 255 }, // 0x00003330
	 { 691, 353, -1345, 0, 7037, 512, 137, 6, 0, 255 }, // 0x00003340
	 { 291, 453, -1395, 0, 0, 0, 146, 224, 33, 255 }, // 0x00003350
	 { 291, 333, -1395, 0, 0, 1024, 179, 65, 65, 255 }, // 0x00003360
	 { 96, 453, -1069, 0, 0, 0, 146, 224, 33, 255 }, // 0x00003370
	 { 96, 333, -1069, 0, 0, 1024, 229, 114, 23, 255 }, // 0x00003380
	 { 496, 353, -1019, 0, 6880, 853, 137, 6, 0, 255 }, // 0x00003390
	 { 96, 453, -969, 0, 0, 0, 153, 214, 213, 255 }, // 0x000033A0
	 { 96, 453, -1069, 0, 0, 1024, 146, 224, 33, 255 }, // 0x000033B0
	 { 496, 353, -1019, 0, 7037, 512, 137, 6, 0, 255 }, // 0x000033C0
	 { 96, 333, -969, 0, 0, 1024, 236, 101, 196, 255 }, // 0x000033D0
	 { 96, 453, -969, 0, 0, 0, 153, 214, 213, 255 }, // 0x000033E0
};

Vtx_t _spot12_room_0_vertices_000033F0[3] = 
{
	 { 96, 333, -1069, 0, 0, 512, 229, 114, 23, 255 }, // 0x000033F0
	 { 96, 333, -969, 0, 0, 85, 236, 101, 196, 255 }, // 0x00003400
	 { 496, 353, -1019, 0, 3418, 299, 137, 6, 0, 255 }, // 0x00003410
};

Vtx_t _spot12_room_0_vertices_00003420[3] = 
{
	 { 397, 572, -1135, 0, 341, 1024, 246, 119, 0, 255 }, // 0x00003420
	 { 397, 572, -1035, 0, 1195, 1024, 179, 65, 191, 255 }, // 0x00003430
	 { 797, 592, -1085, 0, 768, -2394, 137, 6, 0, 255 }, // 0x00003440
};

Vtx_t _spot12_room_0_vertices_00003450[16] = 
{
	 { 397, 572, -1035, 0, 0, 1024, 179, 65, 191, 255 }, // 0x00003450
	 { 397, 692, -1035, 0, 0, 0, 146, 224, 223, 255 }, // 0x00003460
	 { 797, 592, -1085, 0, 6880, 853, 137, 6, 0, 255 }, // 0x00003470
	 { 397, 692, -1035, 0, 0, 0, 146, 224, 223, 255 }, // 0x00003480
	 { 397, 692, -1135, 0, 0, 1024, 146, 224, 33, 255 }, // 0x00003490
	 { 797, 592, -1085, 0, 7037, 512, 137, 6, 0, 255 }, // 0x000034A0
	 { 397, 692, -1135, 0, 0, 0, 146, 224, 33, 255 }, // 0x000034B0
	 { 397, 572, -1135, 0, 0, 1024, 246, 119, 0, 255 }, // 0x000034C0
	 { 824, 760, -2708, 0, 0, 0, 146, 224, 33, 255 }, // 0x000034D0
	 { 824, 640, -2708, 0, 0, 1024, 179, 65, 65, 255 }, // 0x000034E0
	 { 1224, 660, -2658, 0, 6880, 853, 137, 6, 0, 255 }, // 0x000034F0
	 { 824, 760, -2608, 0, 0, 0, 146, 224, 223, 255 }, // 0x00003500
	 { 824, 760, -2708, 0, 0, 1024, 146, 224, 33, 255 }, // 0x00003510
	 { 1224, 660, -2658, 0, 7037, 512, 137, 6, 0, 255 }, // 0x00003520
	 { 824, 640, -2608, 0, 0, 1024, 179, 65, 191, 255 }, // 0x00003530
	 { 824, 760, -2608, 0, 0, 0, 146, 224, 223, 255 }, // 0x00003540
};

Vtx_t _spot12_room_0_vertices_00003550[3] = 
{
	 { 824, 640, -2708, 0, 0, 1024, 179, 65, 65, 255 }, // 0x00003550
	 { 824, 640, -2608, 0, 853, 1024, 179, 65, 191, 255 }, // 0x00003560
	 { 1224, 660, -2658, 0, 427, -2394, 137, 6, 0, 255 }, // 0x00003570
};

Vtx_t _spot12_room_0_vertices_00003580[3] = 
{
	 { 277, 333, -2604, 0, 0, 512, 179, 65, 65, 255 }, // 0x00003580
	 { 277, 333, -2504, 0, 0, 85, 156, 46, 210, 255 }, // 0x00003590
	 { 677, 353, -2554, 0, 3418, 299, 137, 6, 0, 255 }, // 0x000035A0
};

Vtx_t _spot12_room_0_vertices_000035B0[16] = 
{
	 { 277, 333, -2504, 0, 0, 1024, 156, 46, 210, 255 }, // 0x000035B0
	 { 277, 453, -2504, 0, 0, 0, 146, 224, 223, 255 }, // 0x000035C0
	 { 677, 353, -2554, 0, 6880, 853, 137, 6, 0, 255 }, // 0x000035D0
	 { 277, 453, -2504, 0, 0, 0, 146, 224, 223, 255 }, // 0x000035E0
	 { 277, 453, -2604, 0, 0, 1024, 146, 224, 33, 255 }, // 0x000035F0
	 { 677, 353, -2554, 0, 7037, 512, 137, 6, 0, 255 }, // 0x00003600
	 { 277, 453, -2604, 0, 0, 0, 146, 224, 33, 255 }, // 0x00003610
	 { 277, 333, -2604, 0, 0, 1024, 179, 65, 65, 255 }, // 0x00003620
	 { 627, 653, -2135, 0, 0, 0, 33, 224, 110, 255 }, // 0x00003630
	 { 627, 533, -2135, 0, 0, 1024, 65, 65, 77, 255 }, // 0x00003640
	 { 677, 553, -2535, 0, 6880, 853, 0, 6, 119, 255 }, // 0x00003650
	 { 727, 653, -2135, 0, 0, 0, 230, 231, 114, 255 }, // 0x00003660
	 { 627, 653, -2135, 0, 0, 1024, 33, 224, 110, 255 }, // 0x00003670
	 { 677, 553, -2535, 0, 7037, 512, 0, 6, 119, 255 }, // 0x00003680
	 { 727, 533, -2135, 0, 0, 1024, 191, 65, 77, 255 }, // 0x00003690
	 { 727, 653, -2135, 0, 0, 0, 230, 231, 114, 255 }, // 0x000036A0
};

Vtx_t _spot12_room_0_vertices_000036B0[3] = 
{
	 { 627, 533, -2135, 0, 341, 1024, 65, 65, 77, 255 }, // 0x000036B0
	 { 727, 533, -2135, 0, 1195, 1024, 191, 65, 77, 255 }, // 0x000036C0
	 { 677, 553, -2535, 0, 768, -2394, 0, 6, 119, 255 }, // 0x000036D0
};

Vtx_t _spot12_room_0_vertices_000036E0[3] = 
{
	 { 357, 333, -1872, 0, 0, 512, 65, 65, 77, 255 }, // 0x000036E0
	 { 457, 333, -1872, 0, 0, 85, 191, 65, 77, 255 }, // 0x000036F0
	 { 407, 353, -2272, 0, 3418, 299, 0, 6, 119, 255 }, // 0x00003700
};

Vtx_t _spot12_room_0_vertices_00003710[16] = 
{
	 { 457, 333, -1872, 0, 0, 1024, 191, 65, 77, 255 }, // 0x00003710
	 { 457, 453, -1872, 0, 0, 0, 223, 224, 110, 255 }, // 0x00003720
	 { 407, 353, -2272, 0, 6880, 853, 0, 6, 119, 255 }, // 0x00003730
	 { 457, 453, -1872, 0, 0, 0, 223, 224, 110, 255 }, // 0x00003740
	 { 357, 453, -1872, 0, 0, 1024, 33, 224, 110, 255 }, // 0x00003750
	 { 407, 353, -2272, 0, 7037, 512, 0, 6, 119, 255 }, // 0x00003760
	 { 357, 453, -1872, 0, 0, 0, 33, 224, 110, 255 }, // 0x00003770
	 { 357, 333, -1872, 0, 0, 1024, 65, 65, 77, 255 }, // 0x00003780
	 { 1199, 773, -2135, 0, 0, 0, 33, 224, 110, 255 }, // 0x00003790
	 { 1199, 653, -2135, 0, 0, 1024, 46, 46, 100, 255 }, // 0x000037A0
	 { 1249, 673, -2535, 0, 6880, 853, 0, 6, 119, 255 }, // 0x000037B0
	 { 1299, 773, -2135, 0, 0, 0, 195, 196, 84, 255 }, // 0x000037C0
	 { 1199, 773, -2135, 0, 0, 1024, 33, 224, 110, 255 }, // 0x000037D0
	 { 1249, 673, -2535, 0, 7037, 512, 0, 6, 119, 255 }, // 0x000037E0
	 { 1299, 653, -2135, 0, 0, 1024, 172, 84, 7, 255 }, // 0x000037F0
	 { 1299, 773, -2135, 0, 0, 0, 195, 196, 84, 255 }, // 0x00003800
};

Vtx_t _spot12_room_0_vertices_00003810[3] = 
{
	 { 1199, 653, -2135, 0, 683, 1024, 46, 46, 100, 255 }, // 0x00003810
	 { 1299, 653, -2135, 0, 1536, 1024, 172, 84, 7, 255 }, // 0x00003820
	 { 1249, 673, -2535, 0, 1109, -2394, 0, 6, 119, 255 }, // 0x00003830
};

Vtx_t _spot12_room_0_vertices_00003840[3] = 
{
	 { 998, 733, -1135, 0, -341, 1024, 157, 66, 250, 255 }, // 0x00003840
	 { 898, 733, -1135, 0, 512, 1024, 65, 65, 179, 255 }, // 0x00003850
	 { 948, 753, -735, 0, 85, -2394, 0, 6, 137, 255 }, // 0x00003860
};

Vtx_t _spot12_room_0_vertices_00003870[8] = 
{
	 { 898, 733, -1135, 0, 0, 1024, 65, 65, 179, 255 }, // 0x00003870
	 { 898, 853, -1135, 0, 0, 0, 33, 224, 146, 255 }, // 0x00003880
	 { 948, 753, -735, 0, 6880, 853, 0, 6, 137, 255 }, // 0x00003890
	 { 898, 853, -1135, 0, 0, 0, 33, 224, 146, 255 }, // 0x000038A0
	 { 998, 853, -1135, 0, 0, 1024, 195, 196, 172, 255 }, // 0x000038B0
	 { 948, 753, -735, 0, 7037, 512, 0, 6, 137, 255 }, // 0x000038C0
	 { 998, 853, -1135, 0, 0, 0, 195, 196, 172, 255 }, // 0x000038D0
	 { 998, 733, -1135, 0, 0, 1024, 157, 66, 250, 255 }, // 0x000038E0
};

Vtx_t _spot12_room_0_vertices_000038F0[8] = 
{
	 { 96, 333, -2766, 0, 0, 0, 0, 0, 0, 0 }, // 0x000038F0
	 { 1699, 333, -2766, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003900
	 { 96, 1085, -2766, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003910
	 { 1699, 1085, -2766, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003920
	 { 96, 333, -586, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003930
	 { 1699, 333, -586, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003940
	 { 96, 1085, -586, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003950
	 { 1699, 1085, -586, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003960
};

Gfx _spot12_room_0_dlist_00003970[] =
{
	gsDPPipeSync(), // 0x00003970
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003978
	gsSPVertex(_spot12_room_0_vertices_000038F0, 8, 0), // 0x00003980
	gsSPCullDisplayList(0, 7), // 0x00003988
	gsDPPipeSync(), // 0x00003990
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003998
	gsDPPipeSync(), // 0x000039A0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000039A8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000039B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000CE78), // 0x000039B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000039C0
	gsDPLoadSync(), // 0x000039C8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000039D0
	gsDPPipeSync(), // 0x000039D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000039E0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000039E8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000039F0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000039F8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00003A00
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00003A08
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003A10
	gsSPVertex(_spot12_room_0_vertices_00002000, 32, 0), // 0x00003A18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003A20
	gsSP2Triangles(4, 1, 0, 0, 5, 4, 0, 0), // 0x00003A28
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00003A30
	gsSP2Triangles(10, 11, 12, 0, 11, 10, 13, 0), // 0x00003A38
	gsSP2Triangles(13, 14, 11, 0, 15, 10, 12, 0), // 0x00003A40
	gsSP2Triangles(13, 16, 14, 0, 17, 16, 13, 0), // 0x00003A48
	gsSP2Triangles(18, 17, 13, 0, 19, 20, 21, 0), // 0x00003A50
	gsSP2Triangles(19, 21, 22, 0, 8, 23, 24, 0), // 0x00003A58
	gsSP2Triangles(8, 24, 25, 0, 26, 27, 28, 0), // 0x00003A60
	gsSP1Triangle(26, 28, 29, 0), // 0x00003A68
	gsSPVertex(_spot12_room_0_vertices_000021E0, 30, 0), // 0x00003A70
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003A78
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00003A80
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x00003A88
	gsSP2Triangles(10, 12, 8, 0, 10, 13, 12, 0), // 0x00003A90
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x00003A98
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x00003AA0
	gsSP2Triangles(22, 23, 24, 0, 24, 25, 22, 0), // 0x00003AA8
	gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0), // 0x00003AB0
	gsDPPipeSync(), // 0x00003AB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000A678), // 0x00003AC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003AC8
	gsDPLoadSync(), // 0x00003AD0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003AD8
	gsDPPipeSync(), // 0x00003AE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003AE8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003AF0
	gsDPSetPrimColor(0, 0, 210, 200, 175, 255), // 0x00003AF8
	gsSPVertex(_spot12_room_0_vertices_000023C0, 32, 0), // 0x00003B00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003B08
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003B10
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003B18
	gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0), // 0x00003B20
	gsSP2Triangles(16, 17, 18, 0, 18, 17, 19, 0), // 0x00003B28
	gsSP2Triangles(18, 19, 4, 0, 4, 19, 20, 0), // 0x00003B30
	gsSP2Triangles(17, 16, 21, 0, 22, 23, 24, 0), // 0x00003B38
	gsSP2Triangles(22, 24, 25, 0, 26, 27, 28, 0), // 0x00003B40
	gsSP1Triangle(26, 28, 29, 0), // 0x00003B48
	gsSPVertex(_spot12_room_0_vertices_000025A0, 32, 0), // 0x00003B50
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0), // 0x00003B58
	gsSP2Triangles(1, 4, 2, 0, 4, 5, 6, 0), // 0x00003B60
	gsSP2Triangles(2, 4, 6, 0, 0, 7, 1, 0), // 0x00003B68
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003B70
	gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0), // 0x00003B78
	gsSP2Triangles(14, 13, 16, 0, 14, 16, 17, 0), // 0x00003B80
	gsSP2Triangles(18, 19, 16, 0, 19, 17, 16, 0), // 0x00003B88
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00003B90
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00003B98
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00003BA0
	gsSPVertex(_spot12_room_0_vertices_000027A0, 32, 0), // 0x00003BA8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00003BB0
	gsSP2Triangles(1, 4, 3, 0, 1, 5, 4, 0), // 0x00003BB8
	gsSP2Triangles(6, 7, 8, 0, 9, 8, 7, 0), // 0x00003BC0
	gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0), // 0x00003BC8
	gsSP2Triangles(14, 11, 10, 0, 10, 6, 14, 0), // 0x00003BD0
	gsSP2Triangles(15, 16, 17, 0, 15, 18, 16, 0), // 0x00003BD8
	gsSP2Triangles(17, 16, 19, 0, 17, 19, 20, 0), // 0x00003BE0
	gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0), // 0x00003BE8
	gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0), // 0x00003BF0
	gsSP1Triangle(28, 31, 29, 0), // 0x00003BF8
	gsSPVertex(_spot12_room_0_vertices_000029A0, 32, 0), // 0x00003C00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003C08
	gsSP2Triangles(4, 5, 2, 0, 2, 5, 3, 0), // 0x00003C10
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00003C18
	gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0), // 0x00003C20
	gsSP2Triangles(12, 11, 14, 0, 12, 14, 9, 0), // 0x00003C28
	gsSP2Triangles(15, 6, 14, 0, 6, 9, 14, 0), // 0x00003C30
	gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0), // 0x00003C38
	gsSP2Triangles(16, 20, 17, 0, 19, 17, 21, 0), // 0x00003C40
	gsSP2Triangles(19, 21, 22, 0, 23, 24, 21, 0), // 0x00003C48
	gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0), // 0x00003C50
	gsSP1Triangle(28, 30, 31, 0), // 0x00003C58
	gsSPVertex(_spot12_room_0_vertices_00002BA0, 32, 0), // 0x00003C60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003C68
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00003C70
	gsSP2Triangles(10, 11, 12, 0, 12, 13, 10, 0), // 0x00003C78
	gsSP2Triangles(14, 15, 16, 0, 7, 9, 17, 0), // 0x00003C80
	gsSP2Triangles(17, 9, 18, 0, 17, 18, 19, 0), // 0x00003C88
	gsSP2Triangles(20, 21, 18, 0, 21, 19, 18, 0), // 0x00003C90
	gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0), // 0x00003C98
	gsSP2Triangles(24, 23, 26, 0, 24, 26, 27, 0), // 0x00003CA0
	gsSP2Triangles(28, 29, 26, 0, 29, 30, 26, 0), // 0x00003CA8
	gsSP1Triangle(30, 27, 26, 0), // 0x00003CB0
	gsSPVertex(_spot12_room_0_vertices_00002D90, 32, 0), // 0x00003CB8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00003CC0
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x00003CC8
	gsSP2Triangles(6, 7, 4, 0, 7, 5, 4, 0), // 0x00003CD0
	gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0), // 0x00003CD8
	gsSP2Triangles(10, 9, 12, 0, 10, 12, 13, 0), // 0x00003CE0
	gsSP2Triangles(14, 15, 12, 0, 15, 13, 12, 0), // 0x00003CE8
	gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0), // 0x00003CF0
	gsSP2Triangles(18, 17, 20, 0, 18, 20, 21, 0), // 0x00003CF8
	gsSP2Triangles(22, 21, 20, 0, 23, 24, 25, 0), // 0x00003D00
	gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0), // 0x00003D08
	gsSP1Triangle(23, 31, 30, 0), // 0x00003D10
	gsSPVertex(_spot12_room_0_vertices_00002F90, 7, 0), // 0x00003D18
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003D20
	gsSP1Triangle(3, 5, 6, 0), // 0x00003D28
	gsDPPipeSync(), // 0x00003D30
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000E2B0), // 0x00003D38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x00003D40
	gsDPLoadSync(), // 0x00003D48
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003D50
	gsDPPipeSync(), // 0x00003D58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x00003D60
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003D68
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003D70
	gsSPVertex(_spot12_room_0_vertices_00003000, 3, 0), // 0x00003D78
	gsSP1Triangle(0, 1, 2, 0), // 0x00003D80
	gsDPPipeSync(), // 0x00003D88
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000D2B0), // 0x00003D90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00003D98
	gsDPLoadSync(), // 0x00003DA0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003DA8
	gsDPPipeSync(), // 0x00003DB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00003DB8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003DC0
	gsDPSetPrimColor(0, 0, 210, 200, 175, 255), // 0x00003DC8
	gsSPVertex(_spot12_room_0_vertices_00003030, 16, 0), // 0x00003DD0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003DD8
	gsSP2Triangles(6, 7, 2, 0, 8, 9, 10, 0), // 0x00003DE0
	gsSP2Triangles(11, 12, 13, 0, 14, 15, 10, 0), // 0x00003DE8
	gsDPPipeSync(), // 0x00003DF0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000E2B0), // 0x00003DF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x00003E00
	gsDPLoadSync(), // 0x00003E08
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003E10
	gsDPPipeSync(), // 0x00003E18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x00003E20
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003E28
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003E30
	gsSPVertex(_spot12_room_0_vertices_00003130, 6, 0), // 0x00003E38
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003E40
	gsDPPipeSync(), // 0x00003E48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000D2B0), // 0x00003E50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00003E58
	gsDPLoadSync(), // 0x00003E60
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003E68
	gsDPPipeSync(), // 0x00003E70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00003E78
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003E80
	gsDPSetPrimColor(0, 0, 210, 200, 175, 255), // 0x00003E88
	gsSPVertex(_spot12_room_0_vertices_00003190, 16, 0), // 0x00003E90
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003E98
	gsSP2Triangles(6, 7, 2, 0, 8, 9, 10, 0), // 0x00003EA0
	gsSP2Triangles(11, 12, 13, 0, 14, 15, 10, 0), // 0x00003EA8
	gsDPPipeSync(), // 0x00003EB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_000092B0), // 0x00003EB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 2, 5, 0), // 0x00003EC0
	gsDPLoadSync(), // 0x00003EC8
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00003ED0
	gsDPPipeSync(), // 0x00003ED8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 4, 0, 2, 5, 0), // 0x00003EE0
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00003EE8
	gsSPVertex(_spot12_room_0_vertices_00003290, 6, 0), // 0x00003EF0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003EF8
	gsDPPipeSync(), // 0x00003F00
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000D2B0), // 0x00003F08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00003F10
	gsDPLoadSync(), // 0x00003F18
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003F20
	gsDPPipeSync(), // 0x00003F28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00003F30
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003F38
	gsSPVertex(_spot12_room_0_vertices_000032F0, 16, 0), // 0x00003F40
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003F48
	gsSP2Triangles(6, 7, 2, 0, 8, 9, 10, 0), // 0x00003F50
	gsSP2Triangles(11, 12, 13, 0, 14, 15, 10, 0), // 0x00003F58
	gsDPPipeSync(), // 0x00003F60
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_000092B0), // 0x00003F68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 2, 5, 0), // 0x00003F70
	gsDPLoadSync(), // 0x00003F78
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00003F80
	gsDPPipeSync(), // 0x00003F88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 4, 0, 2, 5, 0), // 0x00003F90
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00003F98
	gsSPVertex(_spot12_room_0_vertices_000033F0, 3, 0), // 0x00003FA0
	gsSP1Triangle(0, 1, 2, 0), // 0x00003FA8
	gsDPPipeSync(), // 0x00003FB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000E2B0), // 0x00003FB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x00003FC0
	gsDPLoadSync(), // 0x00003FC8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003FD0
	gsDPPipeSync(), // 0x00003FD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x00003FE0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003FE8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003FF0
	gsSPVertex(_spot12_room_0_vertices_00003420, 3, 0), // 0x00003FF8
	gsSP1Triangle(0, 1, 2, 0), // 0x00004000
	gsDPPipeSync(), // 0x00004008
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000D2B0), // 0x00004010
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00004018
	gsDPLoadSync(), // 0x00004020
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004028
	gsDPPipeSync(), // 0x00004030
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00004038
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004040
	gsDPSetPrimColor(0, 0, 210, 200, 175, 255), // 0x00004048
	gsSPVertex(_spot12_room_0_vertices_00003450, 16, 0), // 0x00004050
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004058
	gsSP2Triangles(6, 7, 2, 0, 8, 9, 10, 0), // 0x00004060
	gsSP2Triangles(11, 12, 13, 0, 14, 15, 10, 0), // 0x00004068
	gsDPPipeSync(), // 0x00004070
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000E2B0), // 0x00004078
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x00004080
	gsDPLoadSync(), // 0x00004088
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004090
	gsDPPipeSync(), // 0x00004098
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x000040A0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000040A8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000040B0
	gsSPVertex(_spot12_room_0_vertices_00003550, 3, 0), // 0x000040B8
	gsSP1Triangle(0, 1, 2, 0), // 0x000040C0
	gsDPPipeSync(), // 0x000040C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_000092B0), // 0x000040D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 2, 5, 0), // 0x000040D8
	gsDPLoadSync(), // 0x000040E0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x000040E8
	gsDPPipeSync(), // 0x000040F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 4, 0, 2, 5, 0), // 0x000040F8
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00004100
	gsDPSetPrimColor(0, 0, 210, 200, 175, 255), // 0x00004108
	gsSPVertex(_spot12_room_0_vertices_00003580, 3, 0), // 0x00004110
	gsSP1Triangle(0, 1, 2, 0), // 0x00004118
	gsDPPipeSync(), // 0x00004120
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000D2B0), // 0x00004128
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00004130
	gsDPLoadSync(), // 0x00004138
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004140
	gsDPPipeSync(), // 0x00004148
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00004150
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004158
	gsSPVertex(_spot12_room_0_vertices_000035B0, 16, 0), // 0x00004160
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004168
	gsSP2Triangles(6, 7, 2, 0, 8, 9, 10, 0), // 0x00004170
	gsSP2Triangles(11, 12, 13, 0, 14, 15, 10, 0), // 0x00004178
	gsDPPipeSync(), // 0x00004180
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000E2B0), // 0x00004188
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x00004190
	gsDPLoadSync(), // 0x00004198
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000041A0
	gsDPPipeSync(), // 0x000041A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x000041B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000041B8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000041C0
	gsSPVertex(_spot12_room_0_vertices_000036B0, 3, 0), // 0x000041C8
	gsSP1Triangle(0, 1, 2, 0), // 0x000041D0
	gsDPPipeSync(), // 0x000041D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_000092B0), // 0x000041E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 2, 5, 0), // 0x000041E8
	gsDPLoadSync(), // 0x000041F0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x000041F8
	gsDPPipeSync(), // 0x00004200
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 4, 0, 2, 5, 0), // 0x00004208
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00004210
	gsDPSetPrimColor(0, 0, 210, 200, 175, 255), // 0x00004218
	gsSPVertex(_spot12_room_0_vertices_000036E0, 3, 0), // 0x00004220
	gsSP1Triangle(0, 1, 2, 0), // 0x00004228
	gsDPPipeSync(), // 0x00004230
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000D2B0), // 0x00004238
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00004240
	gsDPLoadSync(), // 0x00004248
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004250
	gsDPPipeSync(), // 0x00004258
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00004260
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004268
	gsSPVertex(_spot12_room_0_vertices_00003710, 16, 0), // 0x00004270
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004278
	gsSP2Triangles(6, 7, 2, 0, 8, 9, 10, 0), // 0x00004280
	gsSP2Triangles(11, 12, 13, 0, 14, 15, 10, 0), // 0x00004288
	gsDPPipeSync(), // 0x00004290
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000E2B0), // 0x00004298
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x000042A0
	gsDPLoadSync(), // 0x000042A8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000042B0
	gsDPPipeSync(), // 0x000042B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x000042C0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000042C8
	gsSPVertex(_spot12_room_0_vertices_00003810, 3, 0), // 0x000042D0
	gsSP1Triangle(0, 1, 2, 0), // 0x000042D8
	gsDPPipeSync(), // 0x000042E0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000042E8
	gsSPVertex(_spot12_room_0_vertices_00003840, 3, 0), // 0x000042F0
	gsSP1Triangle(0, 1, 2, 0), // 0x000042F8
	gsDPPipeSync(), // 0x00004300
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000D2B0), // 0x00004308
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00004310
	gsDPLoadSync(), // 0x00004318
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00004320
	gsDPPipeSync(), // 0x00004328
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00004330
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004338
	gsDPSetPrimColor(0, 0, 210, 200, 175, 255), // 0x00004340
	gsSPVertex(_spot12_room_0_vertices_00003870, 8, 0), // 0x00004348
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004350
	gsSP1Triangle(6, 7, 2, 0), // 0x00004358
	gsSPEndDisplayList(), // 0x00004360
};

Vtx_t _spot12_room_0_vertices_00004368[19] = 
{
	 { 367, 952, -2750, 0, 1167, 2217, 245, 237, 118, 255 }, // 0x00004368
	 { 432, 1093, -2652, 0, 1335, 1788, 4, 217, 113, 255 }, // 0x00004378
	 { 148, 1093, -2732, 0, 552, 1788, 222, 155, 54, 255 }, // 0x00004388
	 { 148, 952, -2732, 0, 576, 2217, 227, 26, 113, 255 }, // 0x00004398
	 { -633, 477, -2898, 0, -759, 3660, 202, 107, 2, 255 }, // 0x000043A8
	 { -466, 511, -2824, 0, -530, 3558, 215, 91, 67, 255 }, // 0x000043B8
	 { -315, 1001, -2936, 0, -630, 2069, 167, 30, 74, 255 }, // 0x000043C8
	 { 20, 1093, -2761, 0, 205, 1788, 248, 147, 49, 255 }, // 0x000043D8
	 { 20, 1293, -2761, 0, 170, 1181, 193, 229, 98, 255 }, // 0x000043E8
	 { -37, 1933, -2570, 0, 4, -763, 183, 236, 93, 255 }, // 0x000043F8
	 { 824, 640, -2766, 0, 2455, 3166, 189, 21, 97, 255 }, // 0x00004408
	 { 824, 1042, -2766, 0, 2458, 1943, 199, 9, 104, 255 }, // 0x00004418
	 { 432, 1293, -2652, 0, 1339, 1181, 255, 228, 116, 255 }, // 0x00004428
	 { 159, 1533, -2609, 0, 560, 452, 216, 202, 99, 255 }, // 0x00004438
	 { -64, 333, -2759, 0, 364, 4096, 243, 88, 80, 255 }, // 0x00004448
	 { 277, 333, -2766, 0, 1069, 4096, 173, 39, 77, 255 }, // 0x00004458
	 { -22, 548, -2785, 0, 313, 3444, 249, 12, 119, 255 }, // 0x00004468
	 { 18, 952, -2721, 0, 234, 2217, 24, 36, 111, 255 }, // 0x00004478
	 { 277, 640, -2727, 0, 976, 3166, 191, 58, 82, 255 }, // 0x00004488
};

Vtx_t _spot12_room_0_vertices_00004498[32] = 
{
	 { 15, 1933, -1137, 0, -692, 809, 158, 235, 191, 255 }, // 0x00004498
	 { -10, 1853, -665, 0, -486, -190, 139, 232, 10, 255 }, // 0x000044A8
	 { 15, 2133, -1137, 0, -1012, 898, 154, 0, 194, 255 }, // 0x000044B8
	 { 951, 1307, -919, 0, 2168, 439, 225, 185, 165, 255 }, // 0x000044C8
	 { 697, 1085, -767, 0, 2076, -64, 191, 25, 159, 255 }, // 0x000044D8
	 { 371, 1301, -659, 0, 1132, -306, 194, 177, 65, 255 }, // 0x000044E8
	 { 201, 1533, -1063, 0, 324, 549, 205, 168, 193, 255 }, // 0x000044F8
	 { 95, 1509, -685, 0, 261, -264, 181, 183, 59, 255 }, // 0x00004508
	 { 697, 863, -685, 0, 2452, -328, 158, 226, 61, 255 }, // 0x00004518
	 { 1599, 1042, -2135, 0, 3774, 206, 149, 10, 51, 255 }, // 0x00004528
	 { 1545, 1333, -2144, 0, 3087, 129, 158, 195, 30, 255 }, // 0x00004538
	 { 1252, 1233, -2551, 0, 2481, 1091, 202, 194, 87, 255 }, // 0x00004548
	 { 1317, 1042, -2542, 0, 2993, 1114, 221, 106, 42, 255 }, // 0x00004558
	 { 824, 1042, -2766, 0, 1881, 1863, 199, 9, 104, 255 }, // 0x00004568
	 { 749, 1733, -2078, 0, 722, 421, 189, 169, 47, 255 }, // 0x00004578
	 { 159, 1533, -2609, 0, -350, 1860, 216, 202, 99, 255 }, // 0x00004588
	 { 432, 1293, -2652, 0, 652, 1842, 255, 228, 116, 255 }, // 0x00004598
	 { 1148, 1533, -2100, 0, 1912, 255, 206, 151, 28, 255 }, // 0x000045A8
	 { 1545, 1333, -2144, 0, 3236, 1183, 158, 195, 30, 255 }, // 0x000045B8
	 { 1599, 1042, -2135, 0, 3910, 1166, 149, 10, 51, 255 }, // 0x000045C8
	 { 1599, 1085, -1872, 0, 3816, 651, 146, 39, 229, 255 }, // 0x000045D8
	 { 1599, 834, -1872, 0, 4311, 651, 158, 49, 207, 255 }, // 0x000045E8
	 { 1599, 834, -2135, 0, 4320, 1166, 187, 69, 69, 255 }, // 0x000045F8
	 { 1545, 1333, -1383, 0, 3206, -305, 151, 202, 240, 255 }, // 0x00004608
	 { 1599, 1085, -1632, 0, 3807, 184, 187, 97, 250, 255 }, // 0x00004618
	 { 1507, 1085, -1135, 0, 3616, -789, 157, 58, 221, 255 }, // 0x00004628
	 { 1545, 1333, -1383, 0, 3145, 1609, 151, 202, 240, 255 }, // 0x00004638
	 { 1507, 1085, -1135, 0, 3536, 984, 157, 58, 221, 255 }, // 0x00004648
	 { 1425, 1320, -1049, 0, 3026, 885, 196, 185, 181, 255 }, // 0x00004658
	 { 1425, 1085, -980, 0, 3421, 640, 199, 79, 187, 255 }, // 0x00004668
	 { 1146, 1533, -1416, 0, 2049, 1616, 212, 150, 222, 255 }, // 0x00004678
	 { 747, 1733, -1433, 0, 957, 1589, 187, 176, 200, 255 }, // 0x00004688
};

Vtx_t _spot12_room_0_vertices_00004698[25] = 
{
	 { 747, 1733, -1433, 0, 957, 1589, 187, 176, 200, 255 }, // 0x00004698
	 { 15, 1933, -1137, 0, -692, 809, 158, 235, 191, 255 }, // 0x000046A8
	 { 547, 2133, -1449, 0, -71, 1727, 157, 228, 194, 255 }, // 0x000046B8
	 { 15, 2133, -1137, 0, -1012, 898, 154, 0, 194, 255 }, // 0x000046C8
	 { 547, 2333, -1449, 0, -390, 1817, 152, 0, 196, 255 }, // 0x000046D8
	 { 550, 2133, -2056, 0, -199, 1004, 151, 229, 51, 255 }, // 0x000046E8
	 { 547, 2133, -1449, 0, -227, -182, 157, 228, 194, 255 }, // 0x000046F8
	 { 547, 2333, -1449, 0, -621, -182, 152, 0, 196, 255 }, // 0x00004708
	 { 550, 2333, -2056, 0, -593, 1004, 147, 0, 49, 255 }, // 0x00004718
	 { 749, 1733, -2078, 0, 961, 1049, 189, 169, 47, 255 }, // 0x00004728
	 { 747, 1733, -1433, 0, 932, -213, 187, 176, 200, 255 }, // 0x00004738
	 { 1148, 1533, -2100, 0, 2099, 1094, 206, 151, 28, 255 }, // 0x00004748
	 { 1146, 1533, -1416, 0, 2070, -243, 212, 150, 222, 255 }, // 0x00004758
	 { 1545, 1333, -2144, 0, 3236, 1183, 158, 195, 30, 255 }, // 0x00004768
	 { 1545, 1333, -1383, 0, 3206, -305, 151, 202, 240, 255 }, // 0x00004778
	 { -37, 1933, -2570, 0, -1514, 1755, 183, 236, 93, 255 }, // 0x00004788
	 { 550, 2133, -2056, 0, -456, 347, 151, 229, 51, 255 }, // 0x00004798
	 { 550, 2333, -2056, 0, -849, 255, 147, 0, 49, 255 }, // 0x000047A8
	 { 159, 1533, -2609, 0, -350, 1860, 216, 202, 99, 255 }, // 0x000047B8
	 { 749, 1733, -2078, 0, 722, 421, 189, 169, 47, 255 }, // 0x000047C8
	 { 1252, 1233, -2551, 0, 2481, 1091, 202, 194, 87, 255 }, // 0x000047D8
	 { 1545, 1333, -2144, 0, 3087, 129, 158, 195, 30, 255 }, // 0x000047E8
	 { 1148, 1533, -2100, 0, 1912, 255, 206, 151, 28, 255 }, // 0x000047F8
	 { 824, 1042, -2766, 0, 1881, 1863, 199, 9, 104, 255 }, // 0x00004808
	 { 432, 1293, -2652, 0, 652, 1842, 255, 228, 116, 255 }, // 0x00004818
};

Vtx_t _spot12_room_0_vertices_00004828[8] = 
{
	 { -404, 26, -3091, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004828
	 { 1391, 26, -951, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004838
	 { 496, 1011, -3846, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004848
	 { 2291, 1011, -1706, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004858
	 { -1494, 1723, -2175, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004868
	 { 301, 1723, -36, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004878
	 { -595, 2708, -2930, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004888
	 { 1200, 2708, -791, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004898
};

Gfx _spot12_room_0_dlist_000048A8[] =
{
	gsDPPipeSync(), // 0x000048A8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000048B0
	gsSPVertex(_spot12_room_0_vertices_00004828, 8, 0), // 0x000048B8
	gsSPCullDisplayList(0, 7), // 0x000048C0
	gsDPPipeSync(), // 0x000048C8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000048D0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000048D8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000048E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot12_scene_tex_00008E78), // 0x000048E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 0, 5, 0), // 0x000048F0
	gsDPLoadSync(), // 0x000048F8
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00004900
	gsDPPipeSync(), // 0x00004908
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 0, 5, 0), // 0x00004910
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x00004918
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00006650), // 0x00004920
	gsDPTileSync(), // 0x00004928
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004930
	gsDPLoadSync(), // 0x00004938
	gsDPLoadTLUTCmd(7, 15), // 0x00004940
	gsDPPipeSync(), // 0x00004948
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004950
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004958
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00004960
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00004968
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004970
	gsSPVertex(_spot12_room_0_vertices_00004368, 19, 0), // 0x00004978
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00004980
	gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0), // 0x00004988
	gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0), // 0x00004990
	gsSP2Triangles(1, 10, 11, 0, 12, 1, 11, 0), // 0x00004998
	gsSP2Triangles(8, 12, 13, 0, 9, 8, 13, 0), // 0x000049A0
	gsSP2Triangles(14, 15, 16, 0, 5, 17, 7, 0), // 0x000049A8
	gsSP2Triangles(0, 10, 1, 0, 5, 16, 17, 0), // 0x000049B0
	gsSP2Triangles(16, 18, 0, 0, 16, 15, 18, 0), // 0x000049B8
	gsSP2Triangles(10, 0, 18, 0, 16, 0, 3, 0), // 0x000049C0
	gsSP1Triangle(17, 16, 3, 0), // 0x000049C8
	gsDPPipeSync(), // 0x000049D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000C6B0), // 0x000049D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000049E0
	gsDPLoadSync(), // 0x000049E8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000049F0
	gsDPPipeSync(), // 0x000049F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004A00
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004A08
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_00008A90), // 0x00004A10
	gsDPTileSync(), // 0x00004A18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004A20
	gsDPLoadSync(), // 0x00004A28
	gsDPLoadTLUTCmd(7, 15), // 0x00004A30
	gsDPPipeSync(), // 0x00004A38
	gsSPVertex(_spot12_room_0_vertices_00004498, 32, 0), // 0x00004A40
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004A48
	gsSP2Triangles(3, 5, 6, 0, 5, 7, 6, 0), // 0x00004A50
	gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0), // 0x00004A58
	gsSP2Triangles(4, 8, 5, 0, 9, 10, 11, 0), // 0x00004A60
	gsSP2Triangles(11, 12, 9, 0, 13, 12, 11, 0), // 0x00004A68
	gsSP2Triangles(11, 14, 15, 0, 16, 11, 15, 0), // 0x00004A70
	gsSP2Triangles(14, 11, 17, 0, 18, 19, 20, 0), // 0x00004A78
	gsSP2Triangles(21, 20, 19, 0, 22, 21, 19, 0), // 0x00004A80
	gsSP2Triangles(23, 18, 20, 0, 20, 24, 23, 0), // 0x00004A88
	gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0), // 0x00004A90
	gsSP2Triangles(28, 27, 29, 0, 28, 29, 4, 0), // 0x00004A98
	gsSP2Triangles(4, 3, 28, 0, 28, 3, 6, 0), // 0x00004AA0
	gsSP2Triangles(28, 6, 30, 0, 26, 28, 30, 0), // 0x00004AA8
	gsSP2Triangles(30, 6, 31, 0, 31, 6, 0, 0), // 0x00004AB0
	gsSPVertex(_spot12_room_0_vertices_00004698, 25, 0), // 0x00004AB8
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x00004AC0
	gsSP2Triangles(2, 3, 4, 0, 5, 6, 7, 0), // 0x00004AC8
	gsSP2Triangles(5, 7, 8, 0, 9, 10, 6, 0), // 0x00004AD0
	gsSP2Triangles(9, 6, 5, 0, 11, 12, 10, 0), // 0x00004AD8
	gsSP2Triangles(11, 10, 9, 0, 13, 14, 12, 0), // 0x00004AE0
	gsSP2Triangles(13, 12, 11, 0, 15, 16, 17, 0), // 0x00004AE8
	gsSP2Triangles(18, 19, 16, 0, 18, 16, 15, 0), // 0x00004AF0
	gsSP2Triangles(20, 21, 22, 0, 23, 20, 24, 0), // 0x00004AF8
	gsSPEndDisplayList(), // 0x00004B00
};

Vtx_t _spot12_room_0_vertices_00004B08[20] = 
{
	 { -657, 1694, -4624, 0, 4042, -1259, 157, 32, 59, 255 }, // 0x00004B08
	 { -777, 1032, -4464, 0, 3294, -1171, 161, 50, 52, 255 }, // 0x00004B18
	 { -315, 1001, -2936, 0, 3546, 483, 167, 30, 74, 255 }, // 0x00004B28
	 { -37, 1933, -2570, 0, 4980, 735, 183, 236, 93, 255 }, // 0x00004B38
	 { -1577, 1032, -5224, 0, 2731, -2367, 202, 29, 103, 255 }, // 0x00004B48
	 { -777, 1032, -4464, 0, 3294, -1171, 161, 50, 52, 255 }, // 0x00004B58
	 { -1457, 1620, -5384, 0, 3479, -2455, 203, 38, 100, 255 }, // 0x00004B68
	 { -1817, 11, -5044, 0, 1456, -2281, 213, 100, 49, 255 }, // 0x00004B78
	 { -1295, 14, -3965, 0, 2048, -1024, 207, 108, 16, 255 }, // 0x00004B88
	 { -3257, 23, -5584, 0, 735, -3815, 215, 82, 77, 255 }, // 0x00004B98
	 { -3107, 922, -5624, 0, 1981, -3962, 199, 22, 102, 255 }, // 0x00004BA8
	 { -2916, 1553, -5654, 0, 2728, -4050, 212, 26, 108, 255 }, // 0x00004BB8
	 { -4199, 722, -6427, 0, 1060, -5164, 184, 25, 92, 255 }, // 0x00004BC8
	 { -4349, -17, -6387, 0, 79, -5164, 226, 109, 38, 255 }, // 0x00004BD8
	 { -4199, 722, -6427, 0, 1060, -5164, 184, 25, 92, 255 }, // 0x00004BE8
	 { -4007, 1153, -6457, 0, 1688, -5089, 183, 32, 88, 255 }, // 0x00004BF8
	 { -839, 380, -3257, 0, 2517, -27, 173, 77, 40, 255 }, // 0x00004C08
	 { -1295, 14, -3965, 0, 2048, -1024, 207, 108, 16, 255 }, // 0x00004C18
	 { -612, 433, -3081, 0, 2611, 172, 192, 100, 6, 255 }, // 0x00004C28
	 { -633, 477, -2898, 0, 2705, 371, 202, 107, 2, 255 }, // 0x00004C38
};

Vtx_t _spot12_room_0_vertices_00004C48[8] = 
{
	 { -3849, -154, -6983, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004C48
	 { 561, -154, -3283, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004C58
	 { -3637, 1711, -7235, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004C68
	 { 773, 1711, -3534, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004C78
	 { -4658, 68, -6018, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004C88
	 { -248, 68, -2318, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004C98
	 { -4447, 1933, -6270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004CA8
	 { -37, 1933, -2570, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004CB8
};

Gfx _spot12_room_0_dlist_00004CC8[] =
{
	gsDPPipeSync(), // 0x00004CC8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004CD0
	gsSPVertex(_spot12_room_0_vertices_00004C48, 8, 0), // 0x00004CD8
	gsSPCullDisplayList(0, 7), // 0x00004CE0
	gsDPPipeSync(), // 0x00004CE8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004CF0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004CF8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004D00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000C6B0), // 0x00004D08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004D10
	gsDPLoadSync(), // 0x00004D18
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004D20
	gsDPPipeSync(), // 0x00004D28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004D30
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004D38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_00008A90), // 0x00004D40
	gsDPTileSync(), // 0x00004D48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004D50
	gsDPLoadSync(), // 0x00004D58
	gsDPLoadTLUTCmd(7, 15), // 0x00004D60
	gsDPPipeSync(), // 0x00004D68
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004D70
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004D78
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00004D80
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00004D88
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004D90
	gsSPVertex(_spot12_room_0_vertices_00004B08, 20, 0), // 0x00004D98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004DA0
	gsSP2Triangles(4, 5, 0, 0, 6, 4, 0, 0), // 0x00004DA8
	gsSP2Triangles(4, 7, 1, 0, 7, 8, 1, 0), // 0x00004DB0
	gsSP2Triangles(9, 7, 4, 0, 9, 4, 10, 0), // 0x00004DB8
	gsSP2Triangles(4, 6, 11, 0, 4, 11, 10, 0), // 0x00004DC0
	gsSP2Triangles(12, 13, 9, 0, 14, 9, 10, 0), // 0x00004DC8
	gsSP2Triangles(15, 12, 10, 0, 15, 10, 11, 0), // 0x00004DD0
	gsSP2Triangles(1, 16, 2, 0, 1, 17, 16, 0), // 0x00004DD8
	gsSP2Triangles(16, 18, 2, 0, 18, 19, 2, 0), // 0x00004DE0
	gsSPEndDisplayList(), // 0x00004DE8
};

Vtx_t _spot12_room_0_vertices_00004DF0[9] = 
{
	 { -999, 24, -739, 0, -7569, -10407, 111, 44, 6, 255 }, // 0x00004DF0
	 { -1020, 0, 0, 0, -11268, -9595, 95, 72, 248, 255 }, // 0x00004E00
	 { -660, 0, 0, 0, -10822, -7808, 157, 66, 2, 255 }, // 0x00004E10
	 { -659, 23, -681, 0, -7438, -8645, 171, 84, 3, 255 }, // 0x00004E20
	 { -1020, 0, 0, 0, -11268, -9595, 95, 72, 248, 255 }, // 0x00004E30
	 { -652, -8, 362, 0, -12609, -7321, 186, 81, 53, 255 }, // 0x00004E40
	 { -879, -8, 581, 0, -13981, -8174, 58, 90, 204, 255 }, // 0x00004E50
	 { -21, -8, 867, 0, -14339, -3558, 33, 54, 155, 255 }, // 0x00004E60
	 { 68, -8, 602, 0, -12909, -3447, 229, 84, 80, 255 }, // 0x00004E70
};

Vtx_t _spot12_room_0_vertices_00004E80[21] = 
{
	 { -660, 0, 0, 0, 7655, 4096, 157, 66, 2, 255 }, // 0x00004E80
	 { -660, 333, 16, 0, 7968, 2586, 137, 4, 255, 255 }, // 0x00004E90
	 { -659, 333, -681, 0, 6109, 2690, 158, 66, 240, 255 }, // 0x00004EA0
	 { -660, 0, 0, 0, 7655, 4096, 157, 66, 2, 255 }, // 0x00004EB0
	 { -659, 23, -681, 0, 5863, 4096, 171, 84, 3, 255 }, // 0x00004EC0
	 { -514, 1809, -315, 0, 8274, -4079, 229, 254, 140, 255 }, // 0x00004ED0
	 { -652, -8, 362, 0, 8607, 4096, 186, 81, 53, 255 }, // 0x00004EE0
	 { -652, 824, 362, 0, 9305, 332, 144, 4, 43, 255 }, // 0x00004EF0
	 { -652, -8, 362, 0, 8607, 4096, 186, 81, 53, 255 }, // 0x00004F00
	 { 68, 595, 602, 0, 11131, 1366, 218, 0, 113, 255 }, // 0x00004F10
	 { 68, -8, 602, 0, 10603, 4096, 229, 84, 80, 255 }, // 0x00004F20
	 { -1020, 0, 0, 0, 2822, 4096, 95, 72, 248, 255 }, // 0x00004F30
	 { -999, 24, -739, 0, 4717, 4096, 111, 44, 6, 255 }, // 0x00004F40
	 { -999, 585, -739, 0, 4284, 1532, 119, 7, 252, 255 }, // 0x00004F50
	 { -1020, 1000, 0, 0, 2030, -474, 118, 14, 243, 255 }, // 0x00004F60
	 { -1055, 1024, -374, 0, 3001, -547, 7, 74, 162, 255 }, // 0x00004F70
	 { -1076, 1407, 162, 0, 1298, -2382, 56, 87, 197, 255 }, // 0x00004F80
	 { -879, 824, 595, 0, 571, 294, 97, 6, 186, 255 }, // 0x00004F90
	 { -879, -8, 581, 0, 1291, 4096, 58, 90, 204, 255 }, // 0x00004FA0
	 { -21, -8, 867, 0, -1024, 4096, 33, 54, 155, 255 }, // 0x00004FB0
	 { -21, 595, 867, 0, -1539, 1339, 36, 0, 142, 255 }, // 0x00004FC0
};

Vtx_t _spot12_room_0_vertices_00004FD0[10] = 
{
	 { -1055, 1024, -374, 0, 1860, 228, 7, 74, 162, 255 }, // 0x00004FD0
	 { -1205, 237, -743, 0, 685, 82, 215, 89, 187, 255 }, // 0x00004FE0
	 { -1407, 1023, -159, 0, 1712, 985, 195, 65, 176, 255 }, // 0x00004FF0
	 { -1740, 23, -329, 0, 0, 1024, 196, 90, 206, 255 }, // 0x00005000
	 { -1016, 237, -740, 0, 856, -154, 204, 82, 187, 255 }, // 0x00005010
	 { -999, 585, -739, 0, 1027, -389, 119, 7, 252, 255 }, // 0x00005020
	 { -2251, 1023, 471, 0, 1471, 2939, 194, 67, 179, 255 }, // 0x00005030
	 { -1536, 1352, 471, 0, 2603, 1997, 212, 95, 198, 255 }, // 0x00005040
	 { -1076, 1407, 162, 0, 2835, 985, 56, 87, 197, 255 }, // 0x00005050
	 { -2700, -17, 471, 0, -238, 3336, 239, 117, 236, 255 }, // 0x00005060
};

Vtx_t _spot12_room_0_vertices_00005070[8] = 
{
	 { -2442, -17, -995, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005070
	 { 265, -17, -518, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005080
	 { -2442, 1809, -995, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005090
	 { 265, 1809, -518, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050A0
	 { -2700, -17, 471, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050B0
	 { 7, -17, 948, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050C0
	 { -2700, 1809, 471, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050D0
	 { 7, 1809, 948, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050E0
};

Gfx _spot12_room_0_dlist_000050F0[] =
{
	gsDPPipeSync(), // 0x000050F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000050F8
	gsSPVertex(_spot12_room_0_vertices_00005070, 8, 0), // 0x00005100
	gsSPCullDisplayList(0, 7), // 0x00005108
	gsDPPipeSync(), // 0x00005110
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005118
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005120
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005128
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000EE78), // 0x00005130
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005138
	gsDPLoadSync(), // 0x00005140
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005148
	gsDPPipeSync(), // 0x00005150
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005158
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005160
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005168
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005170
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00005178
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00005180
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005188
	gsSPVertex(_spot12_room_0_vertices_00004DF0, 9, 0), // 0x00005190
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005198
	gsSP2Triangles(2, 4, 5, 0, 4, 6, 5, 0), // 0x000051A0
	gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0), // 0x000051A8
	gsDPPipeSync(), // 0x000051B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000051B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot12_scene_tex_00008E78), // 0x000051C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 0, 5, 0), // 0x000051C8
	gsDPLoadSync(), // 0x000051D0
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x000051D8
	gsDPPipeSync(), // 0x000051E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 0, 5, 0), // 0x000051E8
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x000051F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00006650), // 0x000051F8
	gsDPTileSync(), // 0x00005200
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005208
	gsDPLoadSync(), // 0x00005210
	gsDPLoadTLUTCmd(7, 15), // 0x00005218
	gsDPPipeSync(), // 0x00005220
	gsSPVertex(_spot12_room_0_vertices_00004E80, 21, 0), // 0x00005228
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0), // 0x00005230
	gsSP2Triangles(2, 1, 5, 0, 6, 7, 1, 0), // 0x00005238
	gsSP2Triangles(8, 1, 3, 0, 9, 7, 8, 0), // 0x00005240
	gsSP2Triangles(10, 9, 8, 0, 1, 7, 5, 0), // 0x00005248
	gsSP2Triangles(11, 12, 13, 0, 14, 13, 15, 0), // 0x00005250
	gsSP2Triangles(14, 11, 13, 0, 16, 17, 14, 0), // 0x00005258
	gsSP2Triangles(18, 17, 19, 0, 17, 20, 19, 0), // 0x00005260
	gsSP2Triangles(11, 17, 18, 0, 11, 14, 17, 0), // 0x00005268
	gsSP1Triangle(15, 16, 14, 0), // 0x00005270
	gsDPPipeSync(), // 0x00005278
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000C6B0), // 0x00005280
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005288
	gsDPLoadSync(), // 0x00005290
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005298
	gsDPPipeSync(), // 0x000052A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000052A8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000052B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_00008A90), // 0x000052B8
	gsDPTileSync(), // 0x000052C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000052C8
	gsDPLoadSync(), // 0x000052D0
	gsDPLoadTLUTCmd(7, 15), // 0x000052D8
	gsDPPipeSync(), // 0x000052E0
	gsSPVertex(_spot12_room_0_vertices_00004FD0, 10, 0), // 0x000052E8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000052F0
	gsSP2Triangles(0, 4, 1, 0, 0, 5, 4, 0), // 0x000052F8
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 2, 0), // 0x00005300
	gsSP2Triangles(2, 8, 0, 0, 2, 3, 9, 0), // 0x00005308
	gsSP1Triangle(2, 9, 6, 0), // 0x00005310
	gsSPEndDisplayList(), // 0x00005318
};

Vtx_t _spot12_room_0_vertices_00005320[9] = 
{
	 { 96, 572, -586, 0, -6973, -4778, 218, 112, 239, 255 }, // 0x00005320
	 { -68, 572, -149, 0, -9348, -5052, 0, 96, 185, 255 }, // 0x00005330
	 { 397, 572, -639, 0, -6341, -3349, 229, 110, 39, 255 }, // 0x00005340
	 { -487, 373, -813, 0, -6570, -7953, 245, 112, 216, 255 }, // 0x00005350
	 { -101, 495, -663, 0, -6838, -5851, 226, 113, 232, 255 }, // 0x00005360
	 { 865, 613, -297, 0, -7460, -599, 239, 67, 158, 255 }, // 0x00005370
	 { 847, 613, -566, 0, -6144, -1024, 204, 54, 93, 255 }, // 0x00005380
	 { 2181, 1037, -329, 0, -5670, 5898, 229, 84, 176, 255 }, // 0x00005390
	 { 2131, 1037, -594, 0, -4415, 5319, 246, 63, 101, 255 }, // 0x000053A0
};

Vtx_t _spot12_room_0_vertices_000053B0[26] = 
{
	 { 473, 1634, -405, 0, -2001, -2366, 208, 147, 14, 255 }, // 0x000053B0
	 { 48, 1430, -274, 0, -2734, -1070, 244, 228, 140, 255 }, // 0x000053C0
	 { 137, 1763, -405, 0, -2871, -3269, 199, 169, 198, 255 }, // 0x000053D0
	 { 371, 1301, -659, 0, -2217, -848, 194, 177, 65, 255 }, // 0x000053E0
	 { 473, 1634, -405, 0, -2363, -2795, 208, 147, 14, 255 }, // 0x000053F0
	 { 95, 1509, -685, 0, -2933, -1300, 181, 183, 59, 255 }, // 0x00005400
	 { 137, 1763, -405, 0, -2990, -3273, 199, 169, 198, 255 }, // 0x00005410
	 { -10, 1853, -665, 0, -3711, -3456, 139, 232, 10, 255 }, // 0x00005420
	 { -68, 572, -149, 0, -2432, 4096, 0, 96, 185, 255 }, // 0x00005430
	 { -514, 1809, -315, 0, -4408, -4186, 229, 254, 140, 255 }, // 0x00005440
	 { -487, 373, -813, 0, -4240, 4096, 245, 112, 216, 255 }, // 0x00005450
	 { -659, 333, -681, 0, -4733, 4096, 158, 66, 240, 255 }, // 0x00005460
	 { 847, 613, -566, 0, -1028, 4096, 204, 54, 93, 255 }, // 0x00005470
	 { 860, 1402, -545, 0, -1116, -443, 243, 185, 95, 255 }, // 0x00005480
	 { 678, 1047, -599, 0, -1623, 1624, 198, 231, 102, 255 }, // 0x00005490
	 { 697, 863, -685, 0, -1546, 2660, 158, 226, 61, 255 }, // 0x000054A0
	 { 2131, 1037, -594, 0, 1994, 4096, 246, 63, 101, 255 }, // 0x000054B0
	 { 1966, 1602, -570, 0, 1638, 540, 70, 208, 84, 255 }, // 0x000054C0
	 { 680, 696, -685, 0, -1586, 3354, 231, 31, 113, 255 }, // 0x000054D0
	 { 397, 572, -639, 0, -2051, 4096, 229, 110, 39, 255 }, // 0x000054E0
	 { 865, 613, -297, 0, -319, 4096, 239, 67, 158, 255 }, // 0x000054F0
	 { 873, 1402, -339, 0, -717, -610, 241, 181, 164, 255 }, // 0x00005500
	 { 2016, 1602, -304, 0, 2418, 553, 45, 220, 151, 255 }, // 0x00005510
	 { 2181, 1037, -329, 0, 2771, 4096, 229, 84, 176, 255 }, // 0x00005520
	 { 860, 1402, -545, 0, -693, -1762, 243, 185, 95, 255 }, // 0x00005530
	 { 1966, 1602, -570, 0, 1968, -805, 70, 208, 84, 255 }, // 0x00005540
};

Vtx_t _spot12_room_0_vertices_00005550[8] = 
{
	 { -659, 333, -813, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005550
	 { 2181, 333, -813, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005560
	 { -659, 1853, -813, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005570
	 { 2181, 1853, -813, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005580
	 { -659, 333, -149, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005590
	 { 2181, 333, -149, 0, 0, 0, 0, 0, 0, 0 }, // 0x000055A0
	 { -659, 1853, -149, 0, 0, 0, 0, 0, 0, 0 }, // 0x000055B0
	 { 2181, 1853, -149, 0, 0, 0, 0, 0, 0, 0 }, // 0x000055C0
};

Gfx _spot12_room_0_dlist_000055D0[] =
{
	gsDPPipeSync(), // 0x000055D0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000055D8
	gsSPVertex(_spot12_room_0_vertices_00005550, 8, 0), // 0x000055E0
	gsSPCullDisplayList(0, 7), // 0x000055E8
	gsDPPipeSync(), // 0x000055F0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000055F8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005600
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005608
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000EE78), // 0x00005610
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005618
	gsDPLoadSync(), // 0x00005620
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005628
	gsDPPipeSync(), // 0x00005630
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005638
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005640
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005648
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005650
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00005658
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00005660
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005668
	gsSPVertex(_spot12_room_0_vertices_00005320, 9, 0), // 0x00005670
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0), // 0x00005678
	gsSP2Triangles(4, 1, 0, 0, 2, 5, 6, 0), // 0x00005680
	gsSP2Triangles(1, 5, 2, 0, 6, 5, 7, 0), // 0x00005688
	gsSP1Triangle(6, 7, 8, 0), // 0x00005690
	gsDPPipeSync(), // 0x00005698
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000056A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot12_scene_tex_00008E78), // 0x000056A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 0, 5, 0), // 0x000056B0
	gsDPLoadSync(), // 0x000056B8
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x000056C0
	gsDPPipeSync(), // 0x000056C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 0, 5, 0), // 0x000056D0
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x000056D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00006650), // 0x000056E0
	gsDPTileSync(), // 0x000056E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000056F0
	gsDPLoadSync(), // 0x000056F8
	gsDPLoadTLUTCmd(7, 15), // 0x00005700
	gsDPPipeSync(), // 0x00005708
	gsSPVertex(_spot12_room_0_vertices_000053B0, 26, 0), // 0x00005710
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00005718
	gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0), // 0x00005720
	gsSP2Triangles(8, 9, 1, 0, 10, 11, 9, 0), // 0x00005728
	gsSP2Triangles(10, 9, 8, 0, 1, 9, 2, 0), // 0x00005730
	gsSP2Triangles(12, 13, 14, 0, 13, 3, 14, 0), // 0x00005738
	gsSP2Triangles(3, 15, 14, 0, 15, 12, 14, 0), // 0x00005740
	gsSP2Triangles(16, 17, 13, 0, 16, 13, 12, 0), // 0x00005748
	gsSP2Triangles(15, 18, 12, 0, 18, 19, 12, 0), // 0x00005750
	gsSP2Triangles(3, 13, 4, 0, 20, 8, 1, 0), // 0x00005758
	gsSP2Triangles(21, 1, 0, 0, 20, 1, 21, 0), // 0x00005760
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00005768
	gsSP2Triangles(0, 24, 21, 0, 22, 21, 24, 0), // 0x00005770
	gsSP1Triangle(25, 22, 24, 0), // 0x00005778
	gsSPEndDisplayList(), // 0x00005780
};

Vtx_t _spot12_room_0_vertices_00005788[12] = 
{
	 { -656, 333, -1783, 0, 4026, 2822, 191, 99, 17, 255 }, // 0x00005788
	 { -656, 65, -1960, 0, 3021, 4096, 156, 65, 1, 255 }, // 0x00005798
	 { -657, 58, -1744, 0, 3692, 4096, 162, 31, 66, 255 }, // 0x000057A8
	 { -656, 333, -1966, 0, 3002, 2759, 173, 86, 3, 255 }, // 0x000057B8
	 { -656, 65, -1960, 0, 3021, 4096, 156, 65, 1, 255 }, // 0x000057C8
	 { -377, 333, -1743, 0, 4908, 4096, 238, 116, 25, 255 }, // 0x000057D8
	 { -618, 333, -1743, 0, 4147, 2997, 237, 109, 45, 255 }, // 0x000057E8
	 { -523, 413, -2353, 0, 1616, 2870, 170, 68, 208, 255 }, // 0x000057F8
	 { -552, 174, -2394, 0, 1598, 4096, 184, 90, 225, 255 }, // 0x00005808
	 { -656, 65, -1960, 0, 3021, 4096, 156, 65, 1, 255 }, // 0x00005818
	 { -552, 174, -2394, 0, 1598, 4096, 184, 90, 225, 255 }, // 0x00005828
	 { -620, 413, -2002, 0, 2610, 2406, 208, 103, 38, 255 }, // 0x00005838
};

Vtx_t _spot12_room_0_vertices_00005848[4] = 
{
	 { -1031, 174, -2592, 0, 1595, -12860, 27, 114, 235, 255 }, // 0x00005848
	 { -940, 65, -2033, 0, -1069, -11717, 106, 54, 6, 255 }, // 0x00005858
	 { -552, 174, -2394, 0, 1203, -10235, 184, 90, 225, 255 }, // 0x00005868
	 { -656, 65, -1960, 0, -1080, -10217, 156, 65, 1, 255 }, // 0x00005878
};

Vtx_t _spot12_room_0_vertices_00005888[8] = 
{
	 { -980, 527, -2030, 0, 1503, 278, 1, 119, 2, 255 }, // 0x00005888
	 { -940, 527, -2033, 0, 1528, 95, 1, 119, 2, 255 }, // 0x00005898
	 { -1039, 550, -2569, 0, -1401, 95, 249, 119, 245, 255 }, // 0x000058A8
	 { -1076, 549, -2551, 0, -1343, 278, 249, 119, 245, 255 }, // 0x000058B8
	 { -940, 561, -2033, 0, -4605, 0, 119, 0, 252, 255 }, // 0x000058C8
	 { -940, 65, -2033, 0, -4605, 2048, 106, 54, 6, 255 }, // 0x000058D8
	 { -1039, 577, -2567, 0, -7557, 0, 114, 2, 219, 255 }, // 0x000058E8
	 { -1031, 174, -2592, 0, -7557, 2048, 27, 114, 235, 255 }, // 0x000058F8
};

Vtx_t _spot12_room_0_vertices_00005908[4] = 
{
	 { -656, 65, -1960, 0, -1080, -10217, 156, 65, 1, 255 }, // 0x00005908
	 { -940, 65, -2033, 0, -1069, -11717, 106, 54, 6, 255 }, // 0x00005918
	 { -999, 24, -739, 0, -7569, -10407, 111, 44, 6, 255 }, // 0x00005928
	 { -659, 23, -681, 0, -7438, -8645, 171, 84, 3, 255 }, // 0x00005938
};

Vtx_t _spot12_room_0_vertices_00005948[6] = 
{
	 { -659, 333, -681, 0, 6109, 2690, 158, 66, 240, 255 }, // 0x00005948
	 { -657, 333, -1464, 0, 3633, 3005, 218, 112, 241, 255 }, // 0x00005958
	 { -657, 50, -1504, 0, 3699, 4096, 150, 24, 206, 255 }, // 0x00005968
	 { -659, 23, -681, 0, 5863, 4096, 171, 84, 3, 255 }, // 0x00005978
	 { -622, 333, -1503, 0, 3510, 3142, 236, 109, 212, 255 }, // 0x00005988
	 { -377, 333, -1503, 0, 2652, 4096, 246, 118, 243, 255 }, // 0x00005998
};

Vtx_t _spot12_room_0_vertices_000059A8[4] = 
{
	 { -657, 58, -1744, 0, 0, 693, 162, 31, 66, 255 }, // 0x000059A8
	 { -657, 50, -1504, 0, 2048, 827, 150, 24, 206, 255 }, // 0x000059B8
	 { -377, 333, -1503, 0, 2048, -8692, 246, 118, 243, 255 }, // 0x000059C8
	 { -377, 333, -1743, 0, 0, -8692, 238, 116, 25, 255 }, // 0x000059D8
};

Vtx_t _spot12_room_0_vertices_000059E8[7] = 
{
	 { -1034, 543, -841, 0, 2048, 262, 0, 119, 254, 255 }, // 0x000059E8
	 { -994, 543, -840, 0, 2048, 91, 0, 119, 254, 255 }, // 0x000059F8
	 { -940, 527, -2033, 0, -4069, 91, 1, 119, 2, 255 }, // 0x00005A08
	 { -980, 527, -2030, 0, -4046, 262, 1, 119, 2, 255 }, // 0x00005A18
	 { -940, 65, -2033, 0, -4605, 2048, 106, 54, 6, 255 }, // 0x00005A28
	 { -940, 561, -2033, 0, -4605, 0, 119, 0, 252, 255 }, // 0x00005A38
	 { -990, 581, -935, 0, 1024, 0, 119, 0, 5, 255 }, // 0x00005A48
};

Vtx_t _spot12_room_0_vertices_00005A58[4] = 
{
	 { -999, 24, -739, 0, 1024, 2048, 111, 44, 6, 255 }, // 0x00005A58
	 { -990, 581, -935, 0, 0, 0, 119, 0, 5, 255 }, // 0x00005A68
	 { -999, 585, -739, 0, 1024, 0, 119, 7, 252, 255 }, // 0x00005A78
	 { -990, 30, -937, 0, 0, 2048, 119, 0, 5, 255 }, // 0x00005A88
};

Vtx_t _spot12_room_0_vertices_00005A98[3] = 
{
	 { -990, 30, -937, 0, 1024, 2048, 119, 0, 5, 255 }, // 0x00005A98
	 { -940, 65, -2033, 0, -4605, 2048, 106, 54, 6, 255 }, // 0x00005AA8
	 { -990, 581, -935, 0, 1024, 0, 119, 0, 5, 255 }, // 0x00005AB8
};

Vtx_t _spot12_room_0_vertices_00005AC8[8] = 
{
	 { -1076, 23, -2592, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005AC8
	 { -377, 23, -2592, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005AD8
	 { -1076, 585, -2592, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005AE8
	 { -377, 585, -2592, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005AF8
	 { -1076, 23, -681, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005B08
	 { -377, 23, -681, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005B18
	 { -1076, 585, -681, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005B28
	 { -377, 585, -681, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005B38
};

Gfx _spot12_room_0_dlist_00005B48[] =
{
	gsDPPipeSync(), // 0x00005B48
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005B50
	gsSPVertex(_spot12_room_0_vertices_00005AC8, 8, 0), // 0x00005B58
	gsSPCullDisplayList(0, 7), // 0x00005B60
	gsDPPipeSync(), // 0x00005B68
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005B70
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005B78
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005B80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot12_scene_tex_00008E78), // 0x00005B88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 0, 5, 0), // 0x00005B90
	gsDPLoadSync(), // 0x00005B98
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00005BA0
	gsDPPipeSync(), // 0x00005BA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 0, 5, 0), // 0x00005BB0
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x00005BB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00006650), // 0x00005BC0
	gsDPTileSync(), // 0x00005BC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005BD0
	gsDPLoadSync(), // 0x00005BD8
	gsDPLoadTLUTCmd(7, 15), // 0x00005BE0
	gsDPPipeSync(), // 0x00005BE8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005BF0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005BF8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00005C00
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00005C08
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005C10
	gsSPVertex(_spot12_room_0_vertices_00005788, 12, 0), // 0x00005C18
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x00005C20
	gsSP2Triangles(2, 5, 6, 0, 2, 6, 0, 0), // 0x00005C28
	gsSP2Triangles(3, 7, 8, 0, 9, 3, 10, 0), // 0x00005C30
	gsSP1Triangle(3, 11, 7, 0), // 0x00005C38
	gsDPPipeSync(), // 0x00005C40
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005C48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000EE78), // 0x00005C50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005C58
	gsDPLoadSync(), // 0x00005C60
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005C68
	gsDPPipeSync(), // 0x00005C70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005C78
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005C80
	gsSPVertex(_spot12_room_0_vertices_00005848, 4, 0), // 0x00005C88
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00005C90
	gsDPPipeSync(), // 0x00005C98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00007678), // 0x00005CA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005CA8
	gsDPLoadSync(), // 0x00005CB0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00005CB8
	gsDPPipeSync(), // 0x00005CC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005CC8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005CD0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005CD8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00005CE0
	gsSPVertex(_spot12_room_0_vertices_00005888, 8, 0), // 0x00005CE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005CF0
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00005CF8
	gsDPPipeSync(), // 0x00005D00
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000EE78), // 0x00005D08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005D10
	gsDPLoadSync(), // 0x00005D18
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00005D20
	gsDPPipeSync(), // 0x00005D28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005D30
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005D38
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005D40
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005D48
	gsSPVertex(_spot12_room_0_vertices_00005908, 4, 0), // 0x00005D50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005D58
	gsDPPipeSync(), // 0x00005D60
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005D68
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot12_scene_tex_00008E78), // 0x00005D70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 0, 5, 0), // 0x00005D78
	gsDPLoadSync(), // 0x00005D80
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00005D88
	gsDPPipeSync(), // 0x00005D90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 0, 5, 0), // 0x00005D98
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x00005DA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00006650), // 0x00005DA8
	gsDPTileSync(), // 0x00005DB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005DB8
	gsDPLoadSync(), // 0x00005DC0
	gsDPLoadTLUTCmd(7, 15), // 0x00005DC8
	gsDPPipeSync(), // 0x00005DD0
	gsSPVertex(_spot12_room_0_vertices_00005948, 6, 0), // 0x00005DD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005DE0
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x00005DE8
	gsDPPipeSync(), // 0x00005DF0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005DF8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000EAB0), // 0x00005E00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 5, 0), // 0x00005E08
	gsDPLoadSync(), // 0x00005E10
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005E18
	gsDPPipeSync(), // 0x00005E20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 1, 5, 0), // 0x00005E28
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005E30
	gsDPSetPrimColor(0, 0, 215, 225, 255, 255), // 0x00005E38
	gsSPVertex(_spot12_room_0_vertices_000059A8, 4, 0), // 0x00005E40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005E48
	gsDPPipeSync(), // 0x00005E50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00007678), // 0x00005E58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005E60
	gsDPLoadSync(), // 0x00005E68
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00005E70
	gsDPPipeSync(), // 0x00005E78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005E80
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005E88
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005E90
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00005E98
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005EA0
	gsSPVertex(_spot12_room_0_vertices_000059E8, 7, 0), // 0x00005EA8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005EB0
	gsSP1Triangle(4, 5, 6, 0), // 0x00005EB8
	gsDPPipeSync(), // 0x00005EC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00006678), // 0x00005EC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00005ED0
	gsDPLoadSync(), // 0x00005ED8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00005EE0
	gsDPPipeSync(), // 0x00005EE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00005EF0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005EF8
	gsSPVertex(_spot12_room_0_vertices_00005A58, 4, 0), // 0x00005F00
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005F08
	gsDPPipeSync(), // 0x00005F10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00007678), // 0x00005F18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005F20
	gsDPLoadSync(), // 0x00005F28
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00005F30
	gsDPPipeSync(), // 0x00005F38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005F40
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005F48
	gsSPVertex(_spot12_room_0_vertices_00005A98, 3, 0), // 0x00005F50
	gsSP1Triangle(0, 1, 2, 0), // 0x00005F58
	gsSPEndDisplayList(), // 0x00005F60
};

Vtx_t _spot12_room_0_vertices_00005F68[8] = 
{
	 { -3054, 203, -3987, 0, 5157, 253, 242, 119, 254, 255 }, // 0x00005F68
	 { -3058, 203, -3947, 0, 5157, 111, 242, 119, 254, 255 }, // 0x00005F78
	 { -1896, 338, -3815, 0, -871, 111, 243, 119, 255, 255 }, // 0x00005F88
	 { -1888, 338, -3854, 0, -891, 253, 243, 119, 255, 255 }, // 0x00005F98
	 { -1896, 14, -3815, 0, -9481, 2048, 232, 53, 104, 255 }, // 0x00005FA8
	 { -3058, 224, -3947, 0, -15471, 0, 242, 0, 119, 255 }, // 0x00005FB8
	 { -3057, 16, -3948, 0, -15462, 2048, 254, 118, 17, 255 }, // 0x00005FC8
	 { -1896, 357, -3815, 0, -9481, 0, 230, 0, 117, 255 }, // 0x00005FD8
};

Vtx_t _spot12_room_0_vertices_00005FE8[8] = 
{
	 { -1645, 12, -3141, 0, 3563, -16594, 7, 82, 170, 255 }, // 0x00005FE8
	 { -1344, 12, -3628, 0, 6354, -15702, 205, 99, 43, 255 }, // 0x00005FF8
	 { -1896, 14, -3815, 0, 6597, -18674, 232, 53, 104, 255 }, // 0x00006008
	 { -1930, 5, -3062, 0, 2816, -17908, 231, 105, 205, 255 }, // 0x00006018
	 { -1344, 12, -3628, 0, 6354, -15702, 205, 99, 43, 255 }, // 0x00006028
	 { -1645, 12, -3141, 0, 3563, -16594, 7, 82, 170, 255 }, // 0x00006038
	 { -1316, 98, -3004, 0, 3412, -14734, 222, 93, 190, 255 }, // 0x00006048
	 { -1060, 112, -3233, 0, 4746, -13798, 173, 64, 57, 255 }, // 0x00006058
};

Vtx_t _spot12_room_0_vertices_00006068[12] = 
{
	 { -1343, 395, -3636, 0, 286, 269, 250, 119, 1, 255 }, // 0x00006068
	 { -1368, 394, -3602, 0, 220, 128, 250, 119, 1, 255 }, // 0x00006078
	 { -1060, 384, -3233, 0, -2288, 128, 0, 119, 4, 255 }, // 0x00006088
	 { -1027, 384, -3257, 0, -2288, 270, 0, 119, 4, 255 }, // 0x00006098
	 { -1888, 338, -3854, 0, 164, 246, 243, 119, 255, 255 }, // 0x000060A8
	 { -1896, 338, -3815, 0, 140, 105, 243, 119, 255, 255 }, // 0x000060B8
	 { -1368, 394, -3602, 0, -2837, 105, 250, 119, 1, 255 }, // 0x000060C8
	 { -1343, 395, -3636, 0, -2901, 246, 250, 119, 1, 255 }, // 0x000060D8
	 { -1344, 12, -3628, 0, -6499, 2048, 205, 99, 43, 255 }, // 0x000060E8
	 { -1348, 412, -3629, 0, -6499, 0, 185, 0, 96, 255 }, // 0x000060F8
	 { -1896, 14, -3815, 0, -9481, 2048, 232, 53, 104, 255 }, // 0x00006108
	 { -1896, 357, -3815, 0, -9481, 0, 230, 0, 117, 255 }, // 0x00006118
};

Vtx_t _spot12_room_0_vertices_00006128[4] = 
{
	 { -1060, 112, -3233, 0, -3955, 2048, 173, 64, 57, 255 }, // 0x00006128
	 { -1348, 412, -3629, 0, -6499, 0, 185, 0, 96, 255 }, // 0x00006138
	 { -1344, 12, -3628, 0, -6499, 2048, 205, 99, 43, 255 }, // 0x00006148
	 { -1060, 402, -3233, 0, -3955, 0, 159, 0, 70, 255 }, // 0x00006158
};

Vtx_t _spot12_room_0_vertices_00006168[12] = 
{
	 { -1031, 174, -2592, 0, 1595, -12860, 27, 114, 235, 255 }, // 0x00006168
	 { -694, 112, -3108, 0, 4676, -11767, 167, 76, 23, 255 }, // 0x00006178
	 { -937, 112, -3135, 0, 4409, -13068, 255, 115, 31, 255 }, // 0x00006188
	 { -839, 112, -3257, 0, 5139, -12731, 4, 72, 95, 255 }, // 0x00006198
	 { -677, 175, -2874, 0, 3434, -11450, 194, 98, 28, 255 }, // 0x000061A8
	 { -1190, 124, -2903, 0, 3050, -13989, 42, 110, 238, 255 }, // 0x000061B8
	 { -937, 112, -3135, 0, 4409, -13068, 255, 115, 31, 255 }, // 0x000061C8
	 { -1060, 112, -3233, 0, 4746, -13798, 173, 64, 57, 255 }, // 0x000061D8
	 { -1316, 98, -3004, 0, 3412, -14734, 222, 93, 190, 255 }, // 0x000061E8
	 { -1031, 174, -2592, 0, 1595, -12860, 27, 114, 235, 255 }, // 0x000061F8
	 { -1190, 124, -2903, 0, 3050, -13989, 42, 110, 238, 255 }, // 0x00006208
	 { -1230, 126, -2867, 0, 2837, -14133, 62, 84, 199, 255 }, // 0x00006218
};

Vtx_t _spot12_room_0_vertices_00006228[25] = 
{
	 { -612, 433, -3081, 0, 1502, 243, 192, 100, 6, 255 }, // 0x00006228
	 { -654, 429, -3066, 0, 1397, 107, 245, 117, 232, 255 }, // 0x00006238
	 { -677, 481, -2874, 0, 192, 107, 249, 115, 224, 255 }, // 0x00006248
	 { -633, 477, -2898, 0, 369, 242, 202, 107, 2, 255 }, // 0x00006258
	 { -839, 380, -3257, 0, 799, 99, 173, 77, 40, 255 }, // 0x00006268
	 { -654, 429, -3066, 0, -587, 99, 245, 117, 232, 255 }, // 0x00006278
	 { -612, 433, -3081, 0, -684, 236, 192, 100, 6, 255 }, // 0x00006288
	 { -1076, 549, -2551, 0, 580, 276, 249, 119, 245, 255 }, // 0x00006298
	 { -1039, 550, -2569, 0, 607, 95, 249, 119, 245, 255 }, // 0x000062A8
	 { -1236, 457, -2860, 0, -984, 96, 240, 115, 230, 255 }, // 0x000062B8
	 { -1262, 460, -2827, 0, -927, 273, 240, 115, 230, 255 }, // 0x000062C8
	 { -1333, 414, -2994, 0, 300, 99, 250, 119, 254, 255 }, // 0x000062D8
	 { -1652, 400, -3144, 0, -1845, 100, 241, 118, 3, 255 }, // 0x000062E8
	 { -1654, 400, -3101, 0, -1744, 253, 241, 118, 3, 255 }, // 0x000062F8
	 { -1357, 417, -2964, 0, 243, 247, 250, 119, 254, 255 }, // 0x00006308
	 { -694, 112, -3108, 0, -3041, 2048, 167, 76, 23, 255 }, // 0x00006318
	 { -677, 175, -2874, 0, -1212, 2048, 194, 98, 28, 255 }, // 0x00006328
	 { -677, 497, -2874, 0, -1212, 0, 156, 5, 65, 255 }, // 0x00006338
	 { -651, 462, -3060, 0, -2583, 0, 142, 9, 35, 255 }, // 0x00006348
	 { -839, 406, -3257, 0, -3955, 0, 170, 0, 83, 255 }, // 0x00006358
	 { -839, 112, -3257, 0, -3955, 2048, 4, 72, 95, 255 }, // 0x00006368
	 { -1039, 577, -2567, 0, -7557, 0, 114, 2, 219, 255 }, // 0x00006378
	 { -1031, 174, -2592, 0, -7557, 2048, 27, 114, 235, 255 }, // 0x00006388
	 { -1230, 126, -2867, 0, -9347, 2048, 62, 84, 199, 255 }, // 0x00006398
	 { -1237, 478, -2858, 0, -9142, 0, 98, 4, 188, 255 }, // 0x000063A8
};

Vtx_t _spot12_room_0_vertices_000063B8[4] = 
{
	 { -1345, 96, -2979, 0, -10223, 2048, 234, 53, 151, 255 }, // 0x000063B8
	 { -1645, 12, -3141, 0, -12068, 2048, 7, 82, 170, 255 }, // 0x000063C8
	 { -1332, 432, -2995, 0, -9903, 0, 55, 252, 150, 255 }, // 0x000063D8
	 { -1652, 424, -3145, 0, -12068, 0, 250, 255, 137, 255 }, // 0x000063E8
};

Vtx_t _spot12_room_0_vertices_000063F8[4] = 
{
	 { -1896, 14, -3815, 0, 4227, 1045, 232, 53, 104, 255 }, // 0x000063F8
	 { -2090, 14, -3837, 0, 4269, 22, 0, 119, 1, 255 }, // 0x00006408
	 { -2080, 7, -2974, 0, 36, 5, 0, 119, 1, 255 }, // 0x00006418
	 { -1930, 5, -3062, 0, 550, 1020, 231, 105, 205, 255 }, // 0x00006428
};

Vtx_t _spot12_room_0_vertices_00006438[8] = 
{
	 { -1917, 336, -3024, 0, 1745, 259, 238, 118, 7, 255 }, // 0x00006438
	 { -1930, 336, -3062, 0, 1788, 117, 238, 118, 7, 255 }, // 0x00006448
	 { -2848, 214, -2573, 0, -3572, 117, 244, 119, 7, 255 }, // 0x00006458
	 { -2828, 214, -2539, 0, -3572, 262, 244, 119, 7, 255 }, // 0x00006468
	 { -1654, 400, -3101, 0, 1173, 275, 241, 118, 3, 255 }, // 0x00006478
	 { -1652, 400, -3144, 0, 1243, 125, 241, 118, 3, 255 }, // 0x00006488
	 { -1930, 336, -3062, 0, -276, 125, 238, 118, 7, 255 }, // 0x00006498
	 { -1917, 336, -3024, 0, -270, 271, 238, 118, 7, 255 }, // 0x000064A8
};

Vtx_t _spot12_room_0_vertices_000064B8[6] = 
{
	 { -1930, 5, -3062, 0, -13581, 2048, 231, 105, 205, 255 }, // 0x000064B8
	 { -1652, 424, -3145, 0, -12068, 0, 250, 255, 137, 255 }, // 0x000064C8
	 { -1645, 12, -3141, 0, -12068, 2048, 7, 82, 170, 255 }, // 0x000064D8
	 { -1930, 349, -3062, 0, -13581, 0, 204, 0, 148, 255 }, // 0x000064E8
	 { -2830, 15, -2538, 0, -18914, 2048, 241, 116, 231, 255 }, // 0x000064F8
	 { -2828, 224, -2539, 0, -18914, 0, 196, 0, 153, 255 }, // 0x00006508
};

Vtx_t _spot12_room_0_vertices_00006518[3] = 
{
	 { -1645, 12, -3141, 0, 3563, -16594, 7, 82, 170, 255 }, // 0x00006518
	 { -1345, 96, -2979, 0, 3262, -14839, 234, 53, 151, 255 }, // 0x00006528
	 { -1316, 98, -3004, 0, 3412, -14734, 222, 93, 190, 255 }, // 0x00006538
};

Vtx_t _spot12_room_0_vertices_00006548[8] = 
{
	 { -3058, 5, -3987, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006548
	 { -612, 5, -3987, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006558
	 { -3058, 577, -3987, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006568
	 { -612, 577, -3987, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006578
	 { -3058, 5, -2538, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006588
	 { -612, 5, -2538, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006598
	 { -3058, 577, -2538, 0, 0, 0, 0, 0, 0, 0 }, // 0x000065A8
	 { -612, 577, -2538, 0, 0, 0, 0, 0, 0, 0 }, // 0x000065B8
};

Gfx _spot12_room_0_dlist_000065C8[] =
{
	gsDPPipeSync(), // 0x000065C8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000065D0
	gsSPVertex(_spot12_room_0_vertices_00006548, 8, 0), // 0x000065D8
	gsSPCullDisplayList(0, 7), // 0x000065E0
	gsDPPipeSync(), // 0x000065E8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000065F0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000065F8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006600
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00007678), // 0x00006608
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00006610
	gsDPLoadSync(), // 0x00006618
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00006620
	gsDPPipeSync(), // 0x00006628
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00006630
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006638
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006640
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00006648
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00006650
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00006658
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006660
	gsSPVertex(_spot12_room_0_vertices_00005F68, 8, 0), // 0x00006668
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006670
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00006678
	gsDPPipeSync(), // 0x00006680
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000EE78), // 0x00006688
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006690
	gsDPLoadSync(), // 0x00006698
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000066A0
	gsDPPipeSync(), // 0x000066A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000066B0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000066B8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000066C0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000066C8
	gsSPVertex(_spot12_room_0_vertices_00005FE8, 8, 0), // 0x000066D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000066D8
	gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0), // 0x000066E0
	gsDPPipeSync(), // 0x000066E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00007678), // 0x000066F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000066F8
	gsDPLoadSync(), // 0x00006700
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00006708
	gsDPPipeSync(), // 0x00006710
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00006718
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006720
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006728
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00006730
	gsSPVertex(_spot12_room_0_vertices_00006068, 12, 0), // 0x00006738
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006740
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006748
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x00006750
	gsDPPipeSync(), // 0x00006758
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00006760
	gsSPVertex(_spot12_room_0_vertices_00006128, 4, 0), // 0x00006768
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00006770
	gsDPPipeSync(), // 0x00006778
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000EE78), // 0x00006780
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006788
	gsDPLoadSync(), // 0x00006790
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00006798
	gsDPPipeSync(), // 0x000067A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000067A8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000067B0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000067B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000067C0
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x000067C8
	gsSPVertex(_spot12_room_0_vertices_00006168, 12, 0), // 0x000067D0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000067D8
	gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0), // 0x000067E0
	gsSP2Triangles(5, 7, 8, 0, 9, 6, 10, 0), // 0x000067E8
	gsSP1Triangle(11, 9, 10, 0), // 0x000067F0
	gsDPPipeSync(), // 0x000067F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00007678), // 0x00006800
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00006808
	gsDPLoadSync(), // 0x00006810
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00006818
	gsDPPipeSync(), // 0x00006820
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00006828
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006830
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006838
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00006840
	gsSPVertex(_spot12_room_0_vertices_00006228, 25, 0), // 0x00006848
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006850
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00006858
	gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0), // 0x00006860
	gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0), // 0x00006868
	gsSP2Triangles(17, 18, 15, 0, 18, 19, 15, 0), // 0x00006870
	gsSP2Triangles(19, 20, 15, 0, 21, 22, 23, 0), // 0x00006878
	gsSP1Triangle(21, 23, 24, 0), // 0x00006880
	gsDPPipeSync(), // 0x00006888
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00006890
	gsSPVertex(_spot12_room_0_vertices_000063B8, 4, 0), // 0x00006898
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000068A0
	gsDPPipeSync(), // 0x000068A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000A6B0), // 0x000068B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 6, 0), // 0x000068B8
	gsDPLoadSync(), // 0x000068C0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000068C8
	gsDPPipeSync(), // 0x000068D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 0, 6, 0), // 0x000068D8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000068E0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000068E8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000068F0
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x000068F8
	gsSPVertex(_spot12_room_0_vertices_000063F8, 4, 0), // 0x00006900
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006908
	gsDPPipeSync(), // 0x00006910
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00007678), // 0x00006918
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00006920
	gsDPLoadSync(), // 0x00006928
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00006930
	gsDPPipeSync(), // 0x00006938
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00006940
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006948
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006950
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00006958
	gsSPVertex(_spot12_room_0_vertices_00006438, 8, 0), // 0x00006960
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006968
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006970
	gsDPPipeSync(), // 0x00006978
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00006980
	gsSPVertex(_spot12_room_0_vertices_000064B8, 6, 0), // 0x00006988
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00006990
	gsSP2Triangles(4, 3, 0, 0, 4, 5, 3, 0), // 0x00006998
	gsDPPipeSync(), // 0x000069A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000EE78), // 0x000069A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000069B0
	gsDPLoadSync(), // 0x000069B8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000069C0
	gsDPPipeSync(), // 0x000069C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000069D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000069D8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000069E0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000069E8
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x000069F0
	gsSPVertex(_spot12_room_0_vertices_00006518, 3, 0), // 0x000069F8
	gsSP1Triangle(0, 1, 2, 0), // 0x00006A00
	gsSPEndDisplayList(), // 0x00006A08
};

Vtx_t _spot12_room_0_vertices_00006A10[19] = 
{
	 { -391, 232, -2504, 0, 1952, -9573, 212, 93, 195, 255 }, // 0x00006A10
	 { -457, 232, -2784, 0, 3261, -10248, 213, 60, 94, 255 }, // 0x00006A20
	 { -677, 175, -2874, 0, 3434, -11450, 194, 98, 28, 255 }, // 0x00006A30
	 { -552, 174, -2394, 0, 1203, -10235, 184, 90, 225, 255 }, // 0x00006A40
	 { -64, 333, -2479, 0, 2232, -7919, 17, 111, 215, 255 }, // 0x00006A50
	 { -64, 333, -2759, 0, 3623, -8266, 243, 88, 80, 255 }, // 0x00006A60
	 { -377, 333, -1503, 0, -3005, -8264, 246, 118, 243, 255 }, // 0x00006A70
	 { 291, 333, -1135, 0, -4005, -4490, 172, 84, 0, 255 }, // 0x00006A80
	 { 291, 333, -1453, 0, -2425, -4884, 204, 104, 230, 255 }, // 0x00006A90
	 { 277, 333, -1872, 0, -364, -5474, 220, 108, 36, 255 }, // 0x00006AA0
	 { -377, 333, -1743, 0, -1812, -8559, 238, 116, 25, 255 }, // 0x00006AB0
	 { 697, 333, -1872, 0, 157, -3383, 187, 69, 69, 255 }, // 0x00006AC0
	 { 697, 333, -1453, 0, -1922, -2865, 158, 49, 207, 255 }, // 0x00006AD0
	 { -1031, 174, -2592, 0, 1595, -12860, 27, 114, 235, 255 }, // 0x00006AE0
	 { 277, 333, -2766, 0, 4079, -6582, 173, 39, 77, 255 }, // 0x00006AF0
	 { -268, 333, -2017, 0, -315, -8357, 20, 115, 27, 255 }, // 0x00006B00
	 { -656, 333, -1966, 0, -1050, -10224, 173, 86, 3, 255 }, // 0x00006B10
	 { -656, 333, -1783, 0, -1959, -9999, 191, 99, 17, 255 }, // 0x00006B20
	 { -618, 333, -1743, 0, -2109, -9759, 237, 109, 45, 255 }, // 0x00006B30
};

Vtx_t _spot12_room_0_vertices_00006B40[4] = 
{
	 { -466, 511, -2824, 0, 38, 258, 215, 91, 67, 255 }, // 0x00006B40
	 { -633, 477, -2898, 0, 943, 279, 202, 107, 2, 255 }, // 0x00006B50
	 { -677, 481, -2874, 0, 1090, 138, 249, 115, 224, 255 }, // 0x00006B60
	 { -457, 522, -2784, 0, -86, 138, 248, 115, 226, 255 }, // 0x00006B70
};

Vtx_t _spot12_room_0_vertices_00006B80[3] = 
{
	 { -22, 548, -2785, 0, 1588, 1024, 249, 12, 119, 255 }, // 0x00006B80
	 { -466, 511, -2824, 0, -34, 878, 215, 91, 67, 255 }, // 0x00006B90
	 { -457, 522, -2784, 0, 0, 1024, 248, 115, 226, 255 }, // 0x00006BA0
};

Vtx_t _spot12_room_0_vertices_00006BB0[4] = 
{
	 { -457, 232, -2784, 0, 5, 2048, 213, 60, 94, 255 }, // 0x00006BB0
	 { -677, 497, -2874, 0, -1212, 0, 156, 5, 65, 255 }, // 0x00006BC0
	 { -677, 175, -2874, 0, -1212, 2048, 194, 98, 28, 255 }, // 0x00006BD0
	 { -457, 544, -2784, 0, 5, 0, 238, 2, 118, 255 }, // 0x00006BE0
};

Vtx_t _spot12_room_0_vertices_00006BF0[3] = 
{
	 { -22, 548, -2785, 0, 1024, 0, 249, 12, 119, 255 }, // 0x00006BF0
	 { -231, 559, -2784, 0, 0, 0, 0, 5, 119, 255 }, // 0x00006C00
	 { -273, 280, -2773, 0, 0, 2048, 251, 7, 119, 255 }, // 0x00006C10
};

Vtx_t _spot12_room_0_vertices_00006C20[4] = 
{
	 { -231, 559, -2784, 0, 1024, 0, 0, 5, 119, 255 }, // 0x00006C20
	 { -457, 544, -2784, 0, 5, 0, 238, 2, 118, 255 }, // 0x00006C30
	 { -273, 280, -2773, 0, 1024, 2048, 251, 7, 119, 255 }, // 0x00006C40
	 { -457, 232, -2784, 0, 5, 2048, 213, 60, 94, 255 }, // 0x00006C50
};

Vtx_t _spot12_room_0_vertices_00006C60[3] = 
{
	 { -64, 333, -2759, 0, 1024, 2048, 243, 88, 80, 255 }, // 0x00006C60
	 { -22, 548, -2785, 0, 1024, 0, 249, 12, 119, 255 }, // 0x00006C70
	 { -273, 280, -2773, 0, 0, 2048, 251, 7, 119, 255 }, // 0x00006C80
};

Vtx_t _spot12_room_0_vertices_00006C90[18] = 
{
	 { -552, 174, -2394, 0, 1598, 4096, 184, 90, 225, 255 }, // 0x00006C90
	 { -523, 413, -2353, 0, 1616, 2870, 170, 68, 208, 255 }, // 0x00006CA0
	 { -401, 413, -2450, 0, 1024, 3145, 222, 66, 162, 255 }, // 0x00006CB0
	 { -391, 232, -2504, 0, 967, 4096, 212, 93, 195, 255 }, // 0x00006CC0
	 { -391, 232, -2504, 0, 967, 4096, 212, 93, 195, 255 }, // 0x00006CD0
	 { -64, 333, -2479, 0, -95, 4096, 17, 111, 215, 255 }, // 0x00006CE0
	 { -105, 413, -2448, 0, -144, 3640, 53, 103, 226, 255 }, // 0x00006CF0
	 { -64, 333, -2479, 0, -95, 4096, 17, 111, 215, 255 }, // 0x00006D00
	 { -268, 333, -2017, 0, -1658, 4096, 20, 115, 27, 255 }, // 0x00006D10
	 { -282, 413, -2047, 0, -1642, 3662, 50, 87, 65, 255 }, // 0x00006D20
	 { -620, 413, -2002, 0, -2745, 3657, 208, 103, 38, 255 }, // 0x00006D30
	 { -656, 333, -1966, 0, -2872, 4096, 173, 86, 3, 255 }, // 0x00006D40
	 { -64, 333, -2479, 0, -95, 4096, 17, 111, 215, 255 }, // 0x00006D50
	 { -268, 333, -2017, 0, -1658, 4096, 20, 115, 27, 255 }, // 0x00006D60
	 { -382, 493, -2237, 0, 1082, 1972, 250, 119, 250, 255 }, // 0x00006D70
	 { -620, 413, -2002, 0, 2610, 2406, 208, 103, 38, 255 }, // 0x00006D80
	 { -620, 413, -2002, 0, -2745, 3657, 208, 103, 38, 255 }, // 0x00006D90
	 { -382, 493, -2237, 0, -1551, 2629, 250, 119, 250, 255 }, // 0x00006DA0
};

Vtx_t _spot12_room_0_vertices_00006DB0[14] = 
{
	 { -377, 333, -1503, 0, -3005, -8264, 246, 118, 243, 255 }, // 0x00006DB0
	 { 96, 333, -1069, 0, -4577, -5375, 229, 114, 23, 255 }, // 0x00006DC0
	 { 291, 333, -1135, 0, -4005, -4490, 172, 84, 0, 255 }, // 0x00006DD0
	 { -659, 333, -681, 0, -7438, -8645, 158, 66, 240, 255 }, // 0x00006DE0
	 { -487, 373, -813, 0, -6570, -7953, 245, 112, 216, 255 }, // 0x00006DF0
	 { -495, 333, -1078, 0, -5261, -8322, 244, 119, 248, 255 }, // 0x00006E00
	 { -266, 333, -1211, 0, -4318, -7351, 254, 118, 239, 255 }, // 0x00006E10
	 { -105, 413, -937, 0, -5481, -6211, 250, 112, 214, 255 }, // 0x00006E20
	 { -4, 333, -1003, 0, -5029, -5793, 18, 113, 222, 255 }, // 0x00006E30
	 { 96, 333, -969, 0, -5073, -5252, 236, 101, 196, 255 }, // 0x00006E40
	 { -101, 495, -663, 0, -6838, -5851, 226, 113, 232, 255 }, // 0x00006E50
	 { 96, 572, -586, 0, -6973, -4778, 218, 112, 239, 255 }, // 0x00006E60
	 { -657, 333, -1464, 0, -3545, -9607, 218, 112, 241, 255 }, // 0x00006E70
	 { -622, 333, -1503, 0, -3306, -9481, 236, 109, 212, 255 }, // 0x00006E80
};

Vtx_t _spot12_room_0_vertices_00006E90[8] = 
{
	 { -1051, 59, -2824, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006E90
	 { -634, 59, -458, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006EA0
	 { 482, 333, -3095, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006EB0
	 { 899, 333, -728, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006EC0
	 { -1116, 431, -2813, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006ED0
	 { -698, 431, -446, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006EE0
	 { 417, 705, -3083, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006EF0
	 { 835, 705, -716, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F00
};

Gfx _spot12_room_0_dlist_00006F10[] =
{
	gsDPPipeSync(), // 0x00006F10
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006F18
	gsSPVertex(_spot12_room_0_vertices_00006E90, 8, 0), // 0x00006F20
	gsSPCullDisplayList(0, 7), // 0x00006F28
	gsDPPipeSync(), // 0x00006F30
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006F38
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006F40
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006F48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000EE78), // 0x00006F50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006F58
	gsDPLoadSync(), // 0x00006F60
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00006F68
	gsDPPipeSync(), // 0x00006F70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006F78
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006F80
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006F88
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006F90
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00006F98
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00006FA0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006FA8
	gsSPVertex(_spot12_room_0_vertices_00006A10, 19, 0), // 0x00006FB0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006FB8
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0), // 0x00006FC0
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 6, 0), // 0x00006FC8
	gsSP2Triangles(6, 8, 9, 0, 11, 8, 12, 0), // 0x00006FD0
	gsSP2Triangles(11, 9, 8, 0, 13, 3, 2, 0), // 0x00006FD8
	gsSP2Triangles(9, 14, 5, 0, 9, 5, 4, 0), // 0x00006FE0
	gsSP2Triangles(9, 4, 15, 0, 10, 9, 15, 0), // 0x00006FE8
	gsSP2Triangles(16, 17, 15, 0, 17, 18, 15, 0), // 0x00006FF0
	gsSP1Triangle(18, 10, 15, 0), // 0x00006FF8
	gsDPPipeSync(), // 0x00007000
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00007678), // 0x00007008
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00007010
	gsDPLoadSync(), // 0x00007018
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00007020
	gsDPPipeSync(), // 0x00007028
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00007030
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00007038
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007040
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00007048
	gsSPVertex(_spot12_room_0_vertices_00006B40, 4, 0), // 0x00007050
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00007058
	gsDPPipeSync(), // 0x00007060
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000DE78), // 0x00007068
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00007070
	gsDPLoadSync(), // 0x00007078
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007080
	gsDPPipeSync(), // 0x00007088
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007090
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007098
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000070A0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000070A8
	gsSPVertex(_spot12_room_0_vertices_00006B80, 3, 0), // 0x000070B0
	gsSP1Triangle(0, 1, 2, 0), // 0x000070B8
	gsDPPipeSync(), // 0x000070C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00007678), // 0x000070C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000070D0
	gsDPLoadSync(), // 0x000070D8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000070E0
	gsDPPipeSync(), // 0x000070E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000070F0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000070F8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007100
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00007108
	gsSPVertex(_spot12_room_0_vertices_00006BB0, 4, 0), // 0x00007110
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00007118
	gsDPPipeSync(), // 0x00007120
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00006678), // 0x00007128
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00007130
	gsDPLoadSync(), // 0x00007138
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00007140
	gsDPPipeSync(), // 0x00007148
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00007150
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00007158
	gsSPVertex(_spot12_room_0_vertices_00006BF0, 3, 0), // 0x00007160
	gsSP1Triangle(0, 1, 2, 0), // 0x00007168
	gsDPPipeSync(), // 0x00007170
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00007678), // 0x00007178
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00007180
	gsDPLoadSync(), // 0x00007188
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00007190
	gsDPPipeSync(), // 0x00007198
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000071A0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000071A8
	gsSPVertex(_spot12_room_0_vertices_00006C20, 4, 0), // 0x000071B0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000071B8
	gsDPPipeSync(), // 0x000071C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00006678), // 0x000071C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x000071D0
	gsDPLoadSync(), // 0x000071D8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000071E0
	gsDPPipeSync(), // 0x000071E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x000071F0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000071F8
	gsSPVertex(_spot12_room_0_vertices_00006C60, 3, 0), // 0x00007200
	gsSP1Triangle(0, 1, 2, 0), // 0x00007208
	gsDPPipeSync(), // 0x00007210
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00007218
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot12_scene_tex_00008E78), // 0x00007220
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 0, 5, 0), // 0x00007228
	gsDPLoadSync(), // 0x00007230
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00007238
	gsDPPipeSync(), // 0x00007240
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 0, 5, 0), // 0x00007248
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x00007250
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00006650), // 0x00007258
	gsDPTileSync(), // 0x00007260
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00007268
	gsDPLoadSync(), // 0x00007270
	gsDPLoadTLUTCmd(7, 15), // 0x00007278
	gsDPPipeSync(), // 0x00007280
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007288
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007290
	gsSPVertex(_spot12_room_0_vertices_00006C90, 18, 0), // 0x00007298
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000072A0
	gsSP2Triangles(4, 2, 5, 0, 2, 6, 7, 0), // 0x000072A8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000072B0
	gsSP2Triangles(12, 6, 9, 0, 12, 9, 13, 0), // 0x000072B8
	gsSP2Triangles(6, 2, 14, 0, 2, 1, 14, 0), // 0x000072C0
	gsSP2Triangles(1, 15, 14, 0, 16, 9, 17, 0), // 0x000072C8
	gsSP1Triangle(9, 6, 17, 0), // 0x000072D0
	gsDPPipeSync(), // 0x000072D8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000072E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000EE78), // 0x000072E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000072F0
	gsDPLoadSync(), // 0x000072F8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007300
	gsDPPipeSync(), // 0x00007308
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007310
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007318
	gsSPVertex(_spot12_room_0_vertices_00006DB0, 14, 0), // 0x00007320
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00007328
	gsSP2Triangles(4, 6, 5, 0, 4, 7, 6, 0), // 0x00007330
	gsSP2Triangles(7, 8, 6, 0, 8, 1, 6, 0), // 0x00007338
	gsSP2Triangles(9, 8, 7, 0, 9, 1, 8, 0), // 0x00007340
	gsSP2Triangles(7, 4, 10, 0, 11, 9, 7, 0), // 0x00007348
	gsSP2Triangles(7, 10, 11, 0, 12, 5, 13, 0), // 0x00007350
	gsSP2Triangles(5, 0, 13, 0, 5, 6, 0, 0), // 0x00007358
	gsSP2Triangles(1, 0, 6, 0, 12, 3, 5, 0), // 0x00007360
	gsSPEndDisplayList(), // 0x00007368
};

Vtx_t _spot12_room_0_vertices_00007370[12] = 
{
	 { 1966, 1602, -570, 0, 1968, -805, 70, 208, 84, 255 }, // 0x00007370
	 { 2131, 1901, -422, 0, 2599, -1290, 119, 15, 253, 255 }, // 0x00007380
	 { 2016, 1602, -304, 0, 2418, 553, 45, 220, 151, 255 }, // 0x00007390
	 { 2781, 1370, -209, 0, 4328, 4096, 244, 80, 168, 255 }, // 0x000073A0
	 { 2181, 1037, -329, 0, 2771, 4096, 229, 84, 176, 255 }, // 0x000073B0
	 { 2131, 1037, -594, 0, 1994, 4096, 246, 63, 101, 255 }, // 0x000073C0
	 { 2784, 1370, -899, 0, 3769, 4096, 15, 75, 91, 255 }, // 0x000073D0
	 { 1966, 1602, -570, 0, 1638, 540, 70, 208, 84, 255 }, // 0x000073E0
	 { 2475, 1829, -18, 0, 3747, 575, 60, 75, 185, 255 }, // 0x000073F0
	 { 2131, 1901, -422, 0, 1784, -1444, 119, 15, 253, 255 }, // 0x00007400
	 { 2631, 2013, -965, 0, 3489, 143, 84, 31, 79, 255 }, // 0x00007410
	 { 2931, 1413, -970, 0, 4145, 4096, 24, 109, 42, 255 }, // 0x00007420
};

Vtx_t _spot12_room_0_vertices_00007430[6] = 
{
	 { 2781, 1370, -209, 0, 9343, 1884, 244, 80, 168, 255 }, // 0x00007430
	 { 2916, 1413, -194, 0, 9383, 1188, 4, 117, 231, 255 }, // 0x00007440
	 { 2931, 1413, -970, 0, 5413, 1290, 24, 109, 42, 255 }, // 0x00007450
	 { 2784, 1370, -899, 0, 5811, 2023, 15, 75, 91, 255 }, // 0x00007460
	 { 2131, 1037, -594, 0, 7539, 5296, 246, 63, 101, 255 }, // 0x00007470
	 { 2181, 1037, -329, 0, 8884, 4978, 229, 84, 176, 255 }, // 0x00007480
};

Vtx_t _spot12_room_0_vertices_00007490[19] = 
{
	 { 3999, 2013, -531, 0, 6015, 2048, 190, 91, 215, 255 }, // 0x00007490
	 { 3771, 1413, -713, 0, 5723, 4096, 203, 99, 216, 255 }, // 0x000074A0
	 { 3771, 1413, -303, 0, 6423, 4096, 165, 73, 26, 255 }, // 0x000074B0
	 { 4757, 2047, -703, 0, 4631, 2376, 181, 88, 225, 255 }, // 0x000074C0
	 { 4421, 1413, -903, 0, 4778, 4096, 199, 73, 181, 255 }, // 0x000074D0
	 { 5301, 2333, -351, 0, 4865, 0, 221, 112, 232, 255 }, // 0x000074E0
	 { 4379, 2013, 498, 0, 7950, 2436, 160, 70, 15, 255 }, // 0x000074F0
	 { 4171, 1413, 497, 0, 7950, 4096, 161, 70, 18, 255 }, // 0x00007500
	 { 5083, 2399, 500, 0, 7492, 0, 211, 111, 0, 255 }, // 0x00007510
	 { 4870, 2140, -1417, 0, 3530, 1882, 189, 99, 2, 255 }, // 0x00007520
	 { 4757, 2047, -1311, 0, 3645, 2224, 164, 76, 0, 255 }, // 0x00007530
	 { 5301, 2394, -1795, 0, 2755, 0, 198, 104, 4, 255 }, // 0x00007540
	 { 4697, 1934, -1239, 0, 3805, 2683, 150, 56, 0, 255 }, // 0x00007550
	 { 4757, 2047, -1311, 0, 3645, 2224, 164, 76, 0, 255 }, // 0x00007560
	 { 2475, 1829, -18, 0, 3747, 575, 60, 75, 185, 255 }, // 0x00007570
	 { 2787, 1621, -128, 0, 4197, 2335, 51, 72, 176, 255 }, // 0x00007580
	 { 2016, 1602, -304, 0, 2418, 553, 45, 220, 151, 255 }, // 0x00007590
	 { 2781, 1370, -209, 0, 4328, 4096, 244, 80, 168, 255 }, // 0x000075A0
	 { 2916, 1413, -194, 0, 4648, 4096, 4, 117, 231, 255 }, // 0x000075B0
};

Vtx_t _spot12_room_0_vertices_000075C0[8] = 
{
	 { 1962, 996, -1207, 0, 0, 0, 0, 0, 0, 0 }, // 0x000075C0
	 { 2348, 996, 983, 0, 0, 0, 0, 0, 0, 0 }, // 0x000075D0
	 { 5435, 1618, -1819, 0, 0, 0, 0, 0, 0, 0 }, // 0x000075E0
	 { 5821, 1618, 370, 0, 0, 0, 0, 0, 0, 0 }, // 0x000075F0
	 { 1808, 1882, -1179, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007600
	 { 2194, 1882, 1010, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007610
	 { 5282, 2504, -1792, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007620
	 { 5668, 2504, 397, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007630
};

Gfx _spot12_room_0_dlist_00007640[] =
{
	gsDPPipeSync(), // 0x00007640
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007648
	gsSPVertex(_spot12_room_0_vertices_000075C0, 8, 0), // 0x00007650
	gsSPCullDisplayList(0, 7), // 0x00007658
	gsDPPipeSync(), // 0x00007660
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007668
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00007670
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007678
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot12_scene_tex_00008E78), // 0x00007680
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 0, 5, 0), // 0x00007688
	gsDPLoadSync(), // 0x00007690
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00007698
	gsDPPipeSync(), // 0x000076A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 0, 5, 0), // 0x000076A8
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x000076B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00006650), // 0x000076B8
	gsDPTileSync(), // 0x000076C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000076C8
	gsDPLoadSync(), // 0x000076D0
	gsDPLoadTLUTCmd(7, 15), // 0x000076D8
	gsDPPipeSync(), // 0x000076E0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000076E8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000076F0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000076F8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00007700
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007708
	gsSPVertex(_spot12_room_0_vertices_00007370, 12, 0), // 0x00007710
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00007718
	gsSP2Triangles(5, 6, 7, 0, 8, 2, 1, 0), // 0x00007720
	gsSP2Triangles(9, 7, 10, 0, 6, 11, 10, 0), // 0x00007728
	gsSP1Triangle(6, 10, 7, 0), // 0x00007730
	gsDPPipeSync(), // 0x00007738
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007740
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000EE78), // 0x00007748
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00007750
	gsDPLoadSync(), // 0x00007758
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007760
	gsDPPipeSync(), // 0x00007768
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00007770
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007778
	gsSPVertex(_spot12_room_0_vertices_00007430, 6, 0), // 0x00007780
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007788
	gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0), // 0x00007790
	gsDPPipeSync(), // 0x00007798
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000077A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot12_scene_tex_00008E78), // 0x000077A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 0, 5, 0), // 0x000077B0
	gsDPLoadSync(), // 0x000077B8
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x000077C0
	gsDPPipeSync(), // 0x000077C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 0, 5, 0), // 0x000077D0
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x000077D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00006650), // 0x000077E0
	gsDPTileSync(), // 0x000077E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000077F0
	gsDPLoadSync(), // 0x000077F8
	gsDPLoadTLUTCmd(7, 15), // 0x00007800
	gsDPPipeSync(), // 0x00007808
	gsSPVertex(_spot12_room_0_vertices_00007490, 19, 0), // 0x00007810
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x00007818
	gsSP2Triangles(1, 0, 4, 0, 0, 5, 3, 0), // 0x00007820
	gsSP2Triangles(6, 0, 2, 0, 7, 6, 2, 0), // 0x00007828
	gsSP2Triangles(0, 8, 5, 0, 6, 8, 0, 0), // 0x00007830
	gsSP2Triangles(3, 9, 10, 0, 3, 5, 11, 0), // 0x00007838
	gsSP2Triangles(3, 11, 9, 0, 4, 3, 12, 0), // 0x00007840
	gsSP2Triangles(3, 13, 12, 0, 14, 15, 16, 0), // 0x00007848
	gsSP2Triangles(15, 17, 16, 0, 15, 18, 17, 0), // 0x00007850
	gsSPEndDisplayList(), // 0x00007858
};

Vtx_t _spot12_room_0_vertices_00007860[20] = 
{
	 { -1266, 689, -2821, 0, 0, 47, 66, 84, 53, 255 }, // 0x00007860
	 { -1196, 689, -2908, 0, 0, 403, 97, 69, 245, 255 }, // 0x00007870
	 { -1321, 689, -3008, 0, 1024, 403, 217, 47, 154, 255 }, // 0x00007880
	 { -1391, 689, -2922, 0, 1024, 47, 173, 53, 189, 255 }, // 0x00007890
	 { -1190, 124, -2903, 0, 0, 1024, 42, 110, 238, 255 }, // 0x000078A0
	 { -1196, 689, -2908, 0, 5, -617, 97, 69, 245, 255 }, // 0x000078B0
	 { -1266, 689, -2821, 0, -944, -617, 66, 84, 53, 255 }, // 0x000078C0
	 { -1266, 112, -2822, 0, -949, 1024, 93, 0, 75, 255 }, // 0x000078D0
	 { -1316, 98, -3004, 0, 1024, 992, 222, 93, 190, 255 }, // 0x000078E0
	 { -1321, 689, -3008, 0, 1028, -773, 217, 47, 154, 255 }, // 0x000078F0
	 { -1196, 689, -2908, 0, 4, -619, 97, 69, 245, 255 }, // 0x00007900
	 { -1190, 124, -2903, 0, 0, 1024, 42, 110, 238, 255 }, // 0x00007910
	 { -1316, 98, -3004, 0, 1, 1000, 222, 93, 190, 255 }, // 0x00007920
	 { -1345, 96, -2979, 0, 314, 1001, 234, 53, 151, 255 }, // 0x00007930
	 { -1333, 407, -2993, 0, 146, 50, 168, 0, 175, 255 }, // 0x00007940
	 { -1321, 689, -3008, 0, -1, -783, 217, 47, 154, 255 }, // 0x00007950
	 { -1391, 689, -2922, 0, 949, -782, 173, 53, 189, 255 }, // 0x00007960
	 { -1333, 407, -2993, 0, 146, 47, 168, 0, 175, 255 }, // 0x00007970
	 { -1391, 420, -2922, 0, 949, 49, 163, 0, 181, 255 }, // 0x00007980
	 { -1333, 407, -2993, 0, 146, 47, 168, 0, 175, 255 }, // 0x00007990
};

Vtx_t _spot12_room_0_vertices_000079A0[4] = 
{
	 { -962, 622, -3104, 0, 61, 1798, 234, 30, 114, 255 }, // 0x000079A0
	 { -814, 622, -3288, 0, 1783, 1798, 203, 84, 66, 255 }, // 0x000079B0
	 { -967, 622, -3411, 0, 1783, 363, 142, 30, 234, 255 }, // 0x000079C0
	 { -1115, 622, -3227, 0, 61, 363, 137, 5, 13, 255 }, // 0x000079D0
};

Vtx_t _spot12_room_0_vertices_000079E0[18] = 
{
	 { -937, 544, -3135, 0, 1024, -531, 16, 237, 117, 255 }, // 0x000079E0
	 { -962, 622, -3104, 0, 1024, -810, 234, 30, 114, 255 }, // 0x000079F0
	 { -1115, 622, -3227, 0, -256, -810, 137, 5, 13, 255 }, // 0x00007A00
	 { -1060, 544, -3233, 0, 0, -531, 143, 218, 12, 255 }, // 0x00007A10
	 { -937, 112, -3135, 0, 1024, 1004, 255, 115, 31, 255 }, // 0x00007A20
	 { -1060, 112, -3233, 0, 0, 1004, 173, 64, 57, 255 }, // 0x00007A30
	 { -1060, 544, -3233, 0, 1024, -520, 143, 218, 12, 255 }, // 0x00007A40
	 { -1115, 622, -3227, 0, 1280, -797, 137, 5, 13, 255 }, // 0x00007A50
	 { -967, 622, -3411, 0, -256, -797, 142, 30, 234, 255 }, // 0x00007A60
	 { -961, 544, -3356, 0, 0, -520, 165, 229, 183, 255 }, // 0x00007A70
	 { -839, 544, -3257, 0, 1024, -521, 93, 0, 75, 255 }, // 0x00007A80
	 { -814, 622, -3288, 0, 1280, -799, 203, 84, 66, 255 }, // 0x00007A90
	 { -962, 622, -3104, 0, -256, -799, 234, 30, 114, 255 }, // 0x00007AA0
	 { -937, 544, -3135, 0, 0, -521, 16, 237, 117, 255 }, // 0x00007AB0
	 { -839, 112, -3257, 0, 1024, 1004, 4, 72, 95, 255 }, // 0x00007AC0
	 { -937, 112, -3135, 0, 0, 1004, 255, 115, 31, 255 }, // 0x00007AD0
	 { -1060, 355, -3233, 0, 1024, 147, 163, 0, 181, 255 }, // 0x00007AE0
	 { -961, 355, -3356, 0, 0, 147, 163, 0, 181, 255 }, // 0x00007AF0
};

Vtx_t _spot12_room_0_vertices_00007B00[24] = 
{
	 { -1004, 563, -3199, 0, 0, 987, 94, 183, 246, 255 }, // 0x00007B00
	 { -1043, 563, -3150, 0, 0, 1860, 35, 172, 77, 255 }, // 0x00007B10
	 { -1092, 563, -3190, 0, 1024, 1860, 174, 171, 238, 255 }, // 0x00007B20
	 { -1053, 563, -3238, 0, 1024, 987, 246, 183, 162, 255 }, // 0x00007B30
	 { -1065, 751, -3248, 0, 0, 265, 245, 65, 156, 255 }, // 0x00007B40
	 { -1053, 563, -3238, 0, 0, 1846, 246, 183, 162, 255 }, // 0x00007B50
	 { -1092, 563, -3190, 0, 1024, 1846, 174, 171, 238, 255 }, // 0x00007B60
	 { -1104, 751, -3199, 0, 1024, 265, 156, 65, 11, 255 }, // 0x00007B70
	 { -1104, 751, -3199, 0, -256, 259, 156, 65, 11, 255 }, // 0x00007B80
	 { -1092, 563, -3190, 0, 0, 1960, 174, 171, 238, 255 }, // 0x00007B90
	 { -1043, 563, -3150, 0, 1024, 1960, 35, 172, 77, 255 }, // 0x00007BA0
	 { -1031, 751, -3140, 0, 1280, 259, 11, 65, 100, 255 }, // 0x00007BB0
	 { -1031, 751, -3140, 0, 0, 252, 11, 65, 100, 255 }, // 0x00007BC0
	 { -1043, 563, -3150, 0, 0, 1960, 35, 172, 77, 255 }, // 0x00007BD0
	 { -1004, 563, -3199, 0, 1024, 1960, 94, 183, 246, 255 }, // 0x00007BE0
	 { -992, 751, -3189, 0, 1024, 252, 100, 65, 245, 255 }, // 0x00007BF0
	 { -992, 751, -3189, 0, -256, 271, 100, 65, 245, 255 }, // 0x00007C00
	 { -1004, 563, -3199, 0, 0, 1920, 94, 183, 246, 255 }, // 0x00007C10
	 { -1053, 563, -3238, 0, 1024, 1920, 246, 183, 162, 255 }, // 0x00007C20
	 { -1065, 751, -3248, 0, 1280, 271, 245, 65, 156, 255 }, // 0x00007C30
	 { -1065, 751, -3248, 0, 1024, 1644, 245, 65, 156, 255 }, // 0x00007C40
	 { -1104, 751, -3199, 0, 1024, 1149, 156, 65, 11, 255 }, // 0x00007C50
	 { -1031, 751, -3140, 0, 0, 1149, 11, 65, 100, 255 }, // 0x00007C60
	 { -992, 751, -3189, 0, 0, 1644, 100, 65, 245, 255 }, // 0x00007C70
};

Vtx_t _spot12_room_0_vertices_00007C80[8] = 
{
	 { -1232, 625, -2927, 0, 2998, 1581, 81, 59, 65, 255 }, // 0x00007C80
	 { -1059, 624, -3181, 0, 2586, -83, 5, 119, 249, 255 }, // 0x00007C90
	 { -1270, 625, -2957, 0, 2174, 1581, 175, 59, 191, 255 }, // 0x00007CA0
	 { -1078, 579, -3195, 0, 1712, -92, 175, 197, 191, 255 }, // 0x00007CB0
	 { -1251, 580, -2942, 0, 1300, 1573, 251, 137, 7, 255 }, // 0x00007CC0
	 { -1041, 579, -3166, 0, 888, -92, 81, 197, 65, 255 }, // 0x00007CD0
	 { -1232, 625, -2927, 0, 426, 1581, 81, 59, 65, 255 }, // 0x00007CE0
	 { -1059, 624, -3181, 0, 14, -83, 5, 119, 249, 255 }, // 0x00007CF0
};

Vtx_t _spot12_room_0_vertices_00007D00[24] = 
{
	 { -1115, 622, -3227, 0, 0, 2048, 137, 5, 13, 255 }, // 0x00007D00
	 { -1115, 714, -3227, 0, 0, 512, 137, 0, 13, 255 }, // 0x00007D10
	 { -967, 714, -3411, 0, 6031, 512, 137, 0, 13, 255 }, // 0x00007D20
	 { -967, 622, -3411, 0, 6031, 2048, 142, 30, 234, 255 }, // 0x00007D30
	 { -814, 622, -3288, 0, 5026, 2048, 203, 84, 66, 255 }, // 0x00007D40
	 { -814, 714, -3288, 0, 5026, 512, 137, 0, 13, 255 }, // 0x00007D50
	 { -967, 714, -3411, 0, 0, 512, 137, 0, 13, 255 }, // 0x00007D60
	 { -967, 622, -3411, 0, 0, 2048, 142, 30, 234, 255 }, // 0x00007D70
	 { -962, 622, -3104, 0, 2556, 2048, 163, 0, 181, 255 }, // 0x00007D80
	 { -962, 675, -3104, 0, 2556, 1164, 163, 0, 181, 255 }, // 0x00007D90
	 { -906, 675, -3174, 0, 0, 1164, 163, 0, 181, 255 }, // 0x00007DA0
	 { -906, 622, -3174, 0, 0, 2048, 163, 0, 181, 255 }, // 0x00007DB0
	 { -889, 714, -3195, 0, 3043, 512, 163, 0, 181, 255 }, // 0x00007DC0
	 { -814, 714, -3288, 0, 0, 512, 137, 0, 13, 255 }, // 0x00007DD0
	 { -814, 622, -3288, 0, 0, 2048, 203, 84, 66, 255 }, // 0x00007DE0
	 { -889, 622, -3195, 0, 3043, 2048, 163, 0, 181, 255 }, // 0x00007DF0
	 { -962, 714, -3104, 0, 0, 512, 181, 0, 93, 255 }, // 0x00007E00
	 { -1032, 714, -3161, 0, 2295, 512, 181, 0, 93, 255 }, // 0x00007E10
	 { -1032, 622, -3161, 0, 2295, 2048, 181, 0, 93, 255 }, // 0x00007E20
	 { -962, 622, -3104, 0, 0, 2048, 234, 30, 114, 255 }, // 0x00007E30
	 { -1085, 714, -3203, 0, 36, 512, 181, 0, 93, 255 }, // 0x00007E40
	 { -1115, 714, -3227, 0, 1024, 512, 137, 0, 13, 255 }, // 0x00007E50
	 { -1115, 622, -3227, 0, 1024, 2048, 137, 5, 13, 255 }, // 0x00007E60
	 { -1085, 622, -3203, 0, 36, 2048, 181, 0, 93, 255 }, // 0x00007E70
};

Vtx_t _spot12_room_0_vertices_00007E80[8] = 
{
	 { -900, 637, -3169, 0, 0, 30093, 93, 0, 75, 255 }, // 0x00007E80
	 { -900, 622, -3169, 0, 0, 30665, 93, 0, 75, 255 }, // 0x00007E90
	 { -883, 622, -3190, 0, 2048, 30665, 93, 0, 75, 255 }, // 0x00007EA0
	 { -883, 637, -3190, 0, 2048, 30093, 93, 0, 75, 255 }, // 0x00007EB0
	 { -900, 112, -3169, 0, 0, 4096, 93, 0, 75, 255 }, // 0x00007EC0
	 { -883, 112, -3190, 0, 2048, 4096, 93, 0, 75, 255 }, // 0x00007ED0
	 { -883, 622, -3190, 0, 2048, -30720, 93, 0, 75, 255 }, // 0x00007EE0
	 { -900, 622, -3169, 0, 0, -30720, 93, 0, 75, 255 }, // 0x00007EF0
};

Vtx_t _spot12_room_0_vertices_00007F00[8] = 
{
	 { -1207, 583, -2996, 0, 9877, 30, 93, 0, 75, 255 }, // 0x00007F00
	 { -1207, 347, -2996, 0, 0, 30, 93, 0, 75, 255 }, // 0x00007F10
	 { -1197, 347, -3008, 0, 0, 1024, 93, 0, 75, 255 }, // 0x00007F20
	 { -1197, 583, -3008, 0, 9877, 1024, 93, 0, 75, 255 }, // 0x00007F30
	 { -1086, 583, -3148, 0, 9877, 30, 93, 0, 75, 255 }, // 0x00007F40
	 { -1086, 347, -3148, 0, 0, 30, 93, 0, 75, 255 }, // 0x00007F50
	 { -1076, 347, -3160, 0, 0, 1024, 93, 0, 75, 255 }, // 0x00007F60
	 { -1076, 583, -3160, 0, 9877, 1024, 93, 0, 75, 255 }, // 0x00007F70
};

Vtx_t _spot12_room_0_vertices_00007F80[8] = 
{
	 { -974, 96, -3422, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F80
	 { -806, 96, -3281, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F90
	 { -974, 751, -3422, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FA0
	 { -806, 751, -3281, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FB0
	 { -1393, 96, -2923, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FC0
	 { -1224, 96, -2782, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FD0
	 { -1393, 751, -2923, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FE0
	 { -1224, 751, -2782, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FF0
};

Gfx _spot12_room_0_dlist_00008000[] =
{
	gsDPPipeSync(), // 0x00008000
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00008008
	gsSPVertex(_spot12_room_0_vertices_00007F80, 8, 0), // 0x00008010
	gsSPCullDisplayList(0, 7), // 0x00008018
	gsDPPipeSync(), // 0x00008020
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008028
	gsDPPipeSync(), // 0x00008030
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008038
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008040
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_00008AB0), // 0x00008048
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00008050
	gsDPLoadSync(), // 0x00008058
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008060
	gsDPPipeSync(), // 0x00008068
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 0, 5, 0), // 0x00008070
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008078
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008080
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00008088
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00008090
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00008098
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000080A0
	gsSPVertex(_spot12_room_0_vertices_00007860, 20, 0), // 0x000080A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000080B0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000080B8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000080C0
	gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0), // 0x000080C8
	gsSP2Triangles(16, 15, 17, 0, 18, 16, 19, 0), // 0x000080D0
	gsDPPipeSync(), // 0x000080D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00007678), // 0x000080E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000080E8
	gsDPLoadSync(), // 0x000080F0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000080F8
	gsDPPipeSync(), // 0x00008100
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008108
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008110
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008118
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00008120
	gsSPVertex(_spot12_room_0_vertices_000079A0, 4, 0), // 0x00008128
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008130
	gsDPPipeSync(), // 0x00008138
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_00008AB0), // 0x00008140
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00008148
	gsDPLoadSync(), // 0x00008150
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008158
	gsDPPipeSync(), // 0x00008160
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 0, 5, 0), // 0x00008168
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008170
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008178
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00008180
	gsSPVertex(_spot12_room_0_vertices_000079E0, 18, 0), // 0x00008188
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008190
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00008198
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x000081A0
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x000081A8
	gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0), // 0x000081B0
	gsSP2Triangles(16, 6, 9, 0, 16, 9, 17, 0), // 0x000081B8
	gsDPPipeSync(), // 0x000081C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00007678), // 0x000081C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000081D0
	gsDPLoadSync(), // 0x000081D8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000081E0
	gsDPPipeSync(), // 0x000081E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000081F0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000081F8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008200
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00008208
	gsSPVertex(_spot12_room_0_vertices_00007B00, 24, 0), // 0x00008210
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008218
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00008220
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00008228
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00008230
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00008238
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00008240
	gsDPPipeSync(), // 0x00008248
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_000096B0), // 0x00008250
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008258
	gsDPLoadSync(), // 0x00008260
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008268
	gsDPPipeSync(), // 0x00008270
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008278
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008280
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008288
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00008290
	gsSPVertex(_spot12_room_0_vertices_00007C80, 8, 0), // 0x00008298
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000082A0
	gsSP2Triangles(3, 4, 2, 0, 3, 5, 4, 0), // 0x000082A8
	gsSP2Triangles(5, 6, 4, 0, 5, 7, 6, 0), // 0x000082B0
	gsDPPipeSync(), // 0x000082B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000CAB0), // 0x000082C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 4, 0), // 0x000082C8
	gsDPLoadSync(), // 0x000082D0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000082D8
	gsDPPipeSync(), // 0x000082E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 6, 0, 0, 4, 0), // 0x000082E8
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x000082F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000082F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00008300
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00008308
	gsSPVertex(_spot12_room_0_vertices_00007D00, 24, 0), // 0x00008310
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008318
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00008320
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00008328
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00008330
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00008338
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00008340
	gsDPPipeSync(), // 0x00008348
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000B6B0), // 0x00008350
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 5, 0), // 0x00008358
	gsDPLoadSync(), // 0x00008360
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008368
	gsDPPipeSync(), // 0x00008370
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 1, 5, 0), // 0x00008378
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008380
	gsSPVertex(_spot12_room_0_vertices_00007E80, 8, 0), // 0x00008388
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008390
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00008398
	gsDPPipeSync(), // 0x000083A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_00009EB0), // 0x000083A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x000083B0
	gsDPLoadSync(), // 0x000083B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000083C0
	gsDPPipeSync(), // 0x000083C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x000083D0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000083D8
	gsSPVertex(_spot12_room_0_vertices_00007F00, 8, 0), // 0x000083E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000083E8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000083F0
	gsSPEndDisplayList(), // 0x000083F8
};

Vtx_t _spot12_room_0_vertices_00008400[26] = 
{
	 { 346, 1093, -3069, 0, 267, 1216, 211, 158, 53, 255 }, // 0x00008400
	 { 243, 1093, -2980, 0, 1206, 533, 230, 143, 30, 255 }, // 0x00008410
	 { 123, 1093, -2970, 0, 2230, 533, 30, 143, 26, 255 }, // 0x00008420
	 { -3, 1093, -3040, 0, 3254, 1216, 82, 175, 33, 255 }, // 0x00008430
	 { 133, 1093, -2850, 0, 2230, -491, 18, 140, 235, 255 }, // 0x00008440
	 { 20, 1093, -2761, 0, 3254, -1173, 248, 147, 49, 255 }, // 0x00008450
	 { 367, 1093, -2817, 0, 267, -936, 210, 176, 180, 255 }, // 0x00008460
	 { 253, 1093, -2860, 0, 1206, -491, 226, 143, 230, 255 }, // 0x00008470
	 { -3, 733, -3040, 0, 2241, 1105, 74, 69, 63, 255 }, // 0x00008480
	 { 18, 733, -2788, 0, 2241, -512, 41, 49, 155, 255 }, // 0x00008490
	 { 367, 733, -2817, 0, 0, -512, 199, 49, 163, 255 }, // 0x000084A0
	 { 346, 733, -3069, 0, 0, 1105, 193, 69, 74, 255 }, // 0x000084B0
	 { 148, 1093, -2799, 0, 2140, -936, 231, 148, 213, 255 }, // 0x000084C0
	 { 367, 733, -2817, 0, 5485, 1024, 199, 49, 163, 255 }, // 0x000084D0
	 { 367, 1093, -2817, 0, 5481, -2389, 210, 176, 180, 255 }, // 0x000084E0
	 { 346, 1093, -3069, 0, 3329, -2389, 211, 158, 53, 255 }, // 0x000084F0
	 { 346, 733, -3069, 0, 3329, 1024, 193, 69, 74, 255 }, // 0x00008500
	 { -3, 733, -3040, 0, 341, 1024, 74, 69, 63, 255 }, // 0x00008510
	 { -3, 1093, -3040, 0, 341, -2389, 82, 175, 33, 255 }, // 0x00008520
	 { 13, 952, -2788, 0, -1811, -1184, 106, 19, 203, 255 }, // 0x00008530
	 { 18, 733, -2788, 0, -1815, 1024, 41, 49, 155, 255 }, // 0x00008540
	 { 20, 1093, -2761, 0, -2048, -2389, 248, 147, 49, 255 }, // 0x00008550
	 { 18, 733, -2788, 0, 8472, 1023, 41, 49, 155, 255 }, // 0x00008560
	 { 13, 952, -2788, 0, 8517, -1187, 106, 19, 203, 255 }, // 0x00008570
	 { 148, 952, -2799, 0, 7356, -1186, 232, 14, 140, 255 }, // 0x00008580
	 { 148, 1093, -2799, 0, 7354, -2391, 231, 148, 213, 255 }, // 0x00008590
};

Vtx_t _spot12_room_0_vertices_000085A0[8] = 
{
	 { 341, 733, -3100, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085A0
	 { 390, 733, -2821, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085B0
	 { 341, 1093, -3100, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085C0
	 { 390, 1093, -2821, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085D0
	 { -31, 733, -3035, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085E0
	 { 18, 733, -2755, 0, 0, 0, 0, 0, 0, 0 }, // 0x000085F0
	 { -31, 1093, -3035, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008600
	 { 18, 1093, -2755, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008610
};

Gfx _spot12_room_0_dlist_00008620[] =
{
	gsDPPipeSync(), // 0x00008620
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00008628
	gsSPVertex(_spot12_room_0_vertices_000085A0, 8, 0), // 0x00008630
	gsSPCullDisplayList(0, 7), // 0x00008638
	gsDPPipeSync(), // 0x00008640
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008648
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008650
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008658
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, 0x08000000), // 0x00008660
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00008668
	gsDPLoadSync(), // 0x00008670
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00008678
	gsDPPipeSync(), // 0x00008680
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00008688
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00008690
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008698
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000086A0
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x000086A8
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x000086B0
	gsDPSetPrimColor(0, 0, 210, 200, 175, 255), // 0x000086B8
	gsSPVertex(_spot12_room_0_vertices_00008400, 26, 0), // 0x000086C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000086C8
	gsSP2Triangles(4, 5, 3, 0, 4, 3, 2, 0), // 0x000086D0
	gsSP2Triangles(0, 6, 7, 0, 0, 7, 1, 0), // 0x000086D8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000086E0
	gsSP2Triangles(12, 5, 4, 0, 7, 6, 12, 0), // 0x000086E8
	gsSP2Triangles(7, 12, 4, 0, 13, 14, 15, 0), // 0x000086F0
	gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0), // 0x000086F8
	gsSP2Triangles(17, 19, 20, 0, 21, 19, 18, 0), // 0x00008700
	gsSP2Triangles(16, 15, 18, 0, 16, 18, 17, 0), // 0x00008708
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 13, 0), // 0x00008710
	gsSP2Triangles(24, 14, 13, 0, 25, 14, 24, 0), // 0x00008718
	gsSPEndDisplayList(), // 0x00008720
};

Vtx_t _spot12_room_0_vertices_00008728[14] = 
{
	 { 76, 453, -1135, 0, 0, 93, 187, 69, 187, 255 }, // 0x00008728
	 { 76, 453, -1095, 0, 683, 93, 187, 69, 69, 255 }, // 0x00008738
	 { 96, 453, -1095, 0, 683, 7, 0, 84, 84, 255 }, // 0x00008748
	 { 96, 453, -1135, 0, 0, 7, 0, 84, 172, 255 }, // 0x00008758
	 { 76, 333, -1095, 0, 683, 999, 172, 0, 84, 255 }, // 0x00008768
	 { 76, 453, -1095, 0, 683, 15, 187, 69, 69, 255 }, // 0x00008778
	 { 76, 453, -1135, 0, 0, 15, 187, 69, 187, 255 }, // 0x00008788
	 { 76, 333, -1135, 0, 0, 999, 172, 0, 172, 255 }, // 0x00008798
	 { 96, 333, -1095, 0, 1024, 999, 0, 0, 120, 255 }, // 0x000087A8
	 { 96, 453, -1095, 0, 1024, 15, 0, 84, 84, 255 }, // 0x000087B8
	 { 76, 333, -1135, 0, 0, 999, 172, 0, 172, 255 }, // 0x000087C8
	 { 76, 453, -1135, 0, 0, 15, 187, 69, 187, 255 }, // 0x000087D8
	 { 96, 453, -1135, 0, 341, 15, 0, 84, 172, 255 }, // 0x000087E8
	 { 96, 333, -1135, 0, 341, 999, 172, 0, 172, 255 }, // 0x000087F8
};

Vtx_t _spot12_room_0_vertices_00008808[4] = 
{
	 { 88, 523, -1059, 0, 0, 54, 187, 69, 187, 255 }, // 0x00008808
	 { 88, 473, -1059, 0, 0, 1024, 187, 187, 187, 255 }, // 0x00008818
	 { 88, 473, -979, 0, 1024, 1024, 187, 187, 69, 255 }, // 0x00008828
	 { 88, 523, -979, 0, 1024, 54, 187, 69, 69, 255 }, // 0x00008838
};

Vtx_t _spot12_room_0_vertices_00008848[8] = 
{
	 { 76, 314, -1112, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008848
	 { 96, 314, -1112, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008858
	 { 76, 383, -1194, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008868
	 { 96, 383, -1194, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008878
	 { 76, 502, -954, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008888
	 { 96, 502, -954, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008898
	 { 76, 572, -1036, 0, 0, 0, 0, 0, 0, 0 }, // 0x000088A8
	 { 96, 572, -1036, 0, 0, 0, 0, 0, 0, 0 }, // 0x000088B8
};

Gfx _spot12_room_0_dlist_000088C8[] =
{
	gsDPPipeSync(), // 0x000088C8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000088D0
	gsSPVertex(_spot12_room_0_vertices_00008848, 8, 0), // 0x000088D8
	gsSPCullDisplayList(0, 7), // 0x000088E0
	gsDPPipeSync(), // 0x000088E8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000088F0
	gsDPPipeSync(), // 0x000088F8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008900
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008908
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_00008AB0), // 0x00008910
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00008918
	gsDPLoadSync(), // 0x00008920
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008928
	gsDPPipeSync(), // 0x00008930
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 0, 5, 0), // 0x00008938
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008940
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008948
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00008950
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x00008958
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x00008960
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00008968
	gsSPVertex(_spot12_room_0_vertices_00008728, 14, 0), // 0x00008970
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008978
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00008980
	gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0), // 0x00008988
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00008990
	gsDPPipeSync(), // 0x00008998
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_0000B678), // 0x000089A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x000089A8
	gsDPLoadSync(), // 0x000089B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000089B8
	gsDPPipeSync(), // 0x000089C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x000089C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000089D0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000089D8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000089E0
	gsSPVertex(_spot12_room_0_vertices_00008808, 4, 0), // 0x000089E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000089F0
	gsSPEndDisplayList(), // 0x000089F8
};

static u8 unaccounted8A00[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0xF0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0x30, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1F, 0x40, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x39, 0x70, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x48, 0xA8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4C, 0xC8, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x50, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x55, 0xD0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5B, 0x48, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x65, 0xC8, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x6F, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x76, 0x40, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x80, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x86, 0x20, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x88, 0xC8, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _spot12_room_0_tex_00008A90[] = 
{
	0x6A4F620D498B8311, 0xB453ABD393517ACF, 0x314941499391728F, 0x9B917AD100010000,  // 0x00008A90 
};

u64 _spot12_room_0_tex_00008AB0[] = 
{
	0x41CD318B41CD39CD, 0x398B398B29492107, 0x314939CD318B2949, 0x21072949398B3149,  // 0x00008AB0 
	0x39CD41CD39CD398B, 0x398B294921073149, 0x39CD318B29492107, 0x2949398B314939CD,  // 0x00008AD0 
	0x4A0D52515A9162D3, 0x6AD56B157B5783DB, 0x8C1D8BD983976291, 0x8399318B29493149,  // 0x00008AF0 
	0x41CD4A0F52515A91, 0x5A91629362D37315, 0x6B1583997B997357, 0x7B57398B314941CD,  // 0x00008B10 
	0x4A0F41CD41CD41CD, 0x524F4A0D520F41CD, 0x41CD318B49CD6A8F, 0x524F294918C718C7,  // 0x00008B30 
	0x18C72907398B4A0D, 0x4A0F4A0F524F7357, 0x7B9783997B976B15, 0x62D329492107398B,  // 0x00008B50 
	0x2907294929493149, 0x318B29072909314B, 0x314918C518C52107, 0x294918C5188518C5,  // 0x00008B70 
	0x18C5108518C520C7, 0x20C7290729492107, 0x21072107290920C7, 0x18C518C5188518C7,  // 0x00008B90 
	0xB525945D731539CD, 0x420D7B978399A4A1, 0x83DB7B9973557B55, 0xA4A18C1B941D945F,  // 0x00008BB0 
	0x4A0F210741CD5A91, 0x62D362D36AD56B15, 0x62935A935A9362D3, 0x41CD2107398B8399,  // 0x00008BD0 
	0x8BDB62D56AD3398B, 0x398B4A0F62D35A91, 0x524F524F524F5A91, 0x5A9362D35AD3524F,  // 0x00008BF0 
	0x314921073989398B, 0x398B41CD4A0F5A91, 0x524F420D39CD41CD, 0x2907108510833149,  // 0x00008C10 
	0x318B2907290920C7, 0x20C7290720C72107, 0x398B398B39CB398B, 0x4A0F420D3189318B,  // 0x00008C30 
	0x41CB290720C72107, 0x210729072107398B, 0x29093149314B3149, 0x2949290721073149,  // 0x00008C50 
	0x52512949398B5A93, 0x7B997B997B995A93, 0x83D983997B578397, 0xB4E1BD2162D35A93,  // 0x00008C70 
	0x41CD39CD41CD4A0F, 0x62D36AD56B157357, 0x8C1D83DB7B578399, 0x7B998BDB73577B57,  // 0x00008C90 
	0x398B524F39CD2107, 0x31494A0F4A0F2949, 0x398B4A0F524F4A4F, 0x5A9173157B978B97,  // 0x00008CB0 
	0x398B2107210720C7, 0x3149398B41CD41CD, 0x5A935A915A915A91, 0x524F52515251524F,  // 0x00008CD0 
	0x4A0D6B1373577B99, 0x6B156B1573577315, 0x5A93525141CD420D, 0x525152514A0F4A0D,  // 0x00008CF0 
	0x41CD4A0F62D362D5, 0x62D562D35A935A91, 0x5A915A935A934A0F, 0x4A0D628F62916291,  // 0x00008D10 
	0x73158399839983DB, 0x9C5F941D83DB7315, 0x62D35A914A0D524F, 0x52914A0F290920C7,  // 0x00008D30 
	0x420D5A917B998399, 0x83DB62D383DB7B57, 0x4A0F52515A915A4F, 0x731172D16A8F5A4D,  // 0x00008D50 
	0x5A4D5A4F418B3189, 0x39CB4A0F5251524F, 0x6AD36AD172D37315, 0x5A934A51318B318B,  // 0x00008D70 
	0x29092107318B41CD, 0x31892909398B41CD, 0x20C72949520F41CB, 0x3149398B398B520D,  // 0x00008D90 
	0x83138B977B5562D3, 0x62D362D36B155251, 0x525162D373157315, 0x5A915A516B156B15,  // 0x00008DB0 
	0x5A514A0F52515A93, 0x62D35A9362D37355, 0x5A9152915A937317, 0x39CB29494A0D5A91,  // 0x00008DD0 
	0x6AD362D373556B15, 0x62D34A0F525162D3, 0x4A0F41CD524F4A0F, 0x5A914A0F524F4A0F,  // 0x00008DF0 
	0x41CB49CD4A0D524F, 0x5A91629362D36B15, 0x83DB83DB7B9962D3, 0x420D21074A0D5A93,  // 0x00008E10 
	0x41CD39CD398B398B, 0x29492107314939CD, 0x318B294921072949, 0x41CD4A0F41CD41CD,  // 0x00008E30 
	0x524F624F6A8F5A4F, 0x41CB41CD524F62D3, 0x4A0F39CD318B314B, 0x2949210721072907,  // 0x00008E50 
	0x735762D35A91524F, 0x5A4F5A4F624F6B13, 0x7B57735773577315, 0x524F73136B155A93,  // 0x00008E70 
	0x6B1773576B157B57, 0x839983D983DB6B15, 0x4A0F314939CB4A0F, 0x524F5A935A9162D3,  // 0x00008E90 
	0x5A9141CD524F5A4F, 0x6A8F628F524D5A4F, 0x524F628F8353624F, 0x2907398B398D420D,  // 0x00008EB0 
	0x41CD5A915A9362D3, 0x6AD562D352514A0F, 0x39CD20C721073149, 0x398B41CD41CD4A4F,  // 0x00008ED0 
	0x31494A0F4A0D4A0D, 0x4A0D4A0D524F5A51, 0x5A4F524F5A4F41CB, 0x398B398B41CD3149,  // 0x00008EF0 
	0x420F4A4F5A935A93, 0x525139CD398B420D, 0x4A0F4A0F39CD41CD, 0x4A4F420D4A0D4A0F,  // 0x00008F10 
	0x8B956AD3629362D3, 0x6AD56B156B156293, 0x5A9152915A93420D, 0x4A0F524F62D3524F,  // 0x00008F30 
	0x7B999C5F9C5F945D, 0x941D7B9741CD4A0F, 0x8BDB9C9F945F83DB, 0x7B997B577B558397,  // 0x00008F50 
	0x62D162D173136291, 0x41CD41CD52514A0F, 0x41CD420F4A1139CD, 0x314929073149398B,  // 0x00008F70 
	0x4A0D62D36B156B15, 0x6B155A93398B3149, 0x210741CD4A0F41CD, 0x41CD4A0D525162D5,  // 0x00008F90 
	0x62D35A9141CD398B, 0x41CD41CF41CF4A11, 0x5A515A4F6AD36AD3, 0x6B156B17524F420D,  // 0x00008FB0 
	0x318B41CD398B41CD, 0x398B398B31492909, 0x2909210721072949, 0x318B398B398B318B,  // 0x00008FD0 
	0x52515A9162935A91, 0x6AD57B5573577357, 0x7B977B577B578399, 0x7B576AD56B15318B,  // 0x00008FF0 
	0x2949398B4A0F62D3, 0x398B5A937B997B57, 0x7357525162D37357, 0x62D352515A915A91,  // 0x00009010 
	0x3149314941CD524F, 0x524F20C718C52909, 0x398B398B39CB41CD, 0x398B39CB524F2949,  // 0x00009030 
	0x294921072107520F, 0x525152514A0F41CD, 0x39CB21073149318B, 0x41CD41CD41CD398B,  // 0x00009050 
	0x5A9173577B997B99, 0x7357731552517B99, 0x945DA4E3AD259C5F, 0x62D3420D4A0D62D3,  // 0x00009070 
	0x4A4F73996B177359, 0x83D9941D945F945D, 0x945D8C1B7B996B15, 0x5A9141CD39CD398B,  // 0x00009090 
	0x839983997B997B57, 0x524F5A5141CD62D3, 0x83998BDB83D98BDB, 0x7B994A0D3147398B,  // 0x000090B0 
	0x62D37B5773577357, 0x6B1562D36B158BDB, 0x7B57839983DB7357, 0x629141CD39CB6B15,  // 0x000090D0 
	0x6AD36AD35A935A91, 0x318B294929473149, 0x41CB4A0F52514A0F, 0x4A0F3149398B20C7,  // 0x000090F0 
	0x2107294731493189, 0x398B418931492949, 0x39CB398B52516291, 0x62917B15731562D3,  // 0x00009110 
	0x73156B155A915A4F, 0x4A0F5A9362D36B15, 0x735773577B995A51, 0x6B156B156B1741CD,  // 0x00009130 
	0x39CD41CD524F5251, 0x4A0F839783D983D9, 0x8BDB735773154A0F, 0x5A917B5773158357,  // 0x00009150 
	0x398B4A0F524F6291, 0x7313835573137B57, 0x7B5783977B55524F, 0x83DB735741CD398B,  // 0x00009170 
	0x294939CB524F4A0F, 0x525173556B155A93, 0x398B524F52515251, 0x41CD39CB398B3149,  // 0x00009190 
	0x524F7B139B9541CD, 0x524F52515A9162D3, 0x7B556291524F524F, 0x2949294929492107,  // 0x000091B0 
	0x2107210731894A0F, 0x39CD318B29492107, 0x3149398B39CD318B, 0x294921072107398B,  // 0x000091D0 
	0x9C1B83997B558397, 0x8397731573557315, 0x4A0D7B137B137B13, 0x314941CD4A0F524F,  // 0x000091F0 
	0x62D362D3524F5A91, 0x5A93629362916AD1, 0x6AD162D383997355, 0x73578BD98BD98BD7,  // 0x00009210 
	0x628F4A0F420D4A0F, 0x41CD41CD4A0D5251, 0x2907314929092949, 0x2107294929072909,  // 0x00009230 
	0x420D524F41CD318B, 0x3149398B398B398B, 0x318B4A0D49CB4189, 0x5A0B730F72D16AD1,  // 0x00009250 
	0x93D39C158B9172CB, 0x8B519C15730D8351, 0x93D593D58B938B93, 0x8B918B93A49993D5,  // 0x00009270 
	0x9C178B9172CB8B51, 0x9C15730D835193D5, 0x93D58B938B938B91, 0x8B939C1794158BD3,  // 0x00009290 
};

u64 _spot12_room_0_tex_000092B0[] = 
{
	0xACDDA499C5A1A459, 0x9417ACDD94178BD5, 0x731183D773538395, 0x6B117B955A4D524D,  // 0x000092B0 
	0x4A0B41CB41C939C9, 0x39893147210720C5, 0x1883108310431043, 0x0841084100010001,  // 0x000092D0 
	0xACDBB51D9C59AC99, 0x9C5994179C579417, 0x94178BD773537B53, 0x7B53628F6B13524D,  // 0x000092F0 
	0x5A8F524D41CB4A0D, 0x39893149290720C5, 0x18C3108310830843, 0x0843084100010001,  // 0x00009310 
	0xB4DB94158BD5ACDB, 0xA4DBBD5F9C599417, 0x94177B9383957B53, 0x6B1149C962CF5A8D,  // 0x00009330 
	0x5A8F41CB39893989, 0x41CD294729472107, 0x18C5108310831043, 0x0843084100010001,  // 0x00009350 
	0xC5A1A49B9415A499, 0x9C598BD594158BD5, 0x941794198BD77B95, 0x628D524B62CF628F,  // 0x00009370 
	0x41CB41CB41CB39CB, 0x3147318929472105, 0x18C518C510831083, 0x0843084100010001,  // 0x00009390 
	0xBD5F9457A49B7B0F, 0x94159C578B939417, 0x8BD58BD77B517311, 0x73115A8F49CB524B,  // 0x000093B0 
	0x520D4A0B41CB41CB, 0x39893989290720C5, 0x18C5108310831043, 0x0843084100010001,  // 0x000093D0 
	0x9C59A49B94159417, 0xAC9B93D5941793D5, 0x8395735383957B53, 0x5A8D524D524D520B,  // 0x000093F0 
	0x520D4A0B41CB41CB, 0x3147294729072107, 0x1883108310430843, 0x0843084100010001,  // 0x00009410 
	0x9417A49BA499A4DB, 0xB51D8BD59415A49B, 0x735173517B537353, 0x628F628F524D5A8D,  // 0x00009430 
	0x4A0B41CB39C93989, 0x3147294720C52107, 0x18C5188310831043, 0x0841000100010001,  // 0x00009450 
	0xAC999C179C578393, 0x941794178BD58393, 0x7B51941773117353, 0x6B115A4D5A8F41C9,  // 0x00009470 
	0x41C9520D4A0B3989, 0x2947210520C518C5, 0x18C518C510830843, 0x0841000100010001,  // 0x00009490 
	0xA499A499A4599C57, 0x8BD7941783957311, 0x9C597B517B957351, 0x5A4D524D4A094A0B,  // 0x000094B0 
	0x4A0B420B4A0D3989, 0x39892947210520C5, 0x1083188510830843, 0x0841084100010001,  // 0x000094D0 
	0xBD5FA499AC9B9C57, 0x9C598BD58BD57B53, 0x94177B9383938C19, 0x73137353524D4A0B,  // 0x000094F0 
	0x41C9314729053147, 0x29472905290718C5, 0x1083108110430841, 0x0841084100010001,  // 0x00009510 
	0x93D5A45994179C59, 0x9417941783D56ACD, 0x52097B5183958395, 0x62CF62D14A0B5A4D,  // 0x00009530 
	0x4A0B41CB318741CB, 0x39893147314920C5, 0x1883108310830843, 0x0843084100010001,  // 0x00009550 
	0xA499A4998BD39417, 0xACDB8BD58BD57B51, 0x83D57B537B537311, 0x6ACF62CF62CF7355,  // 0x00009570 
	0x5A8F4A0D4A0B39CB, 0x39893147318920C5, 0x18C5188510831043, 0x0841084100010001,  // 0x00009590 
	0xA459A499A4998391, 0x83936ACD8BD58BD5, 0x735162CF7B538395, 0x628D6AD141C9524D,  // 0x000095B0 
	0x524D524D4A0D3147, 0x39893149318920C5, 0x18C5188510831043, 0x0843084108010001,  // 0x000095D0 
	0x9415ACDB73518393, 0x83938BD56B0F9459, 0x6B0F83D57B537B93, 0x7311524B628F6B13,  // 0x000095F0 
	0x4A0B41CB398741CB, 0x31472947290718C5, 0x20C518C510831043, 0x0841084100010001,  // 0x00009610 
	0x9C578BD39415ACDB, 0x83937B5183D5730F, 0x9C598BD77B538395, 0x6ACF628F524D5A8D,  // 0x00009630 
	0x4A0B4A0D41CB3147, 0x3989290529072105, 0x20C518C518850843, 0x0841084100010001,  // 0x00009650 
	0x93D5AC9BA499AC9B, 0x8393839383958395, 0x9C5983958BD57353, 0x6B115A8F4A0B41C9,  // 0x00009670 
	0x41CB41CB41CB41CB, 0x31493147210520C5, 0x18C5188510830843, 0x0843084100010001,  // 0x00009690 
};

u64 _spot12_room_0_tex_000096B0[] = 
{
	0x314B294B294B394B, 0x51CD7B138BD78C17, 0x8C178C1783D78395, 0x731572D583958BD5,  // 0x000096B0 
	0x93D7839572D38395, 0xAC9F941983938BD5, 0x839372D37B958395, 0x839572CF7313628D,  // 0x000096D0 
	0x8B15C457ED9FFE21, 0xDD5FC49DD51FDD61, 0xFF29FFEBFF29EDA1, 0xA3D7B459FE23FF69,  // 0x000096F0 
	0xFF6BFE23D49DB3D9, 0xFE21FF69FF69FEA3, 0xB419BC5DEDA3FEA3, 0xFEA1FDDDE55DB415,  // 0x00009710 
	0xFD99FE1DFE9FFEE1, 0xFF65FF25FEE3ED9F, 0xE55FFEA1FF25FF65, 0xFEE3EDA1D51FFEA3,  // 0x00009730 
	0xFFE3FFE5FF65FEE3, 0xFEA3FFE9FFE5FFE3, 0xFF21FEE1FEDFFEE1, 0xFD99C457ABD5E517,  // 0x00009750 
	0x9315D497FDD9FE9F, 0xFE1FFDDDFE1FFE1F, 0xFE9FE599DD59DD59, 0xE599EDDDDD99C497,  // 0x00009770 
	0xA3D3B455D519EDDD, 0xBC558B8F8B13AC15, 0xBC57AC158B8F72CF, 0x624F7A8F8B13AB95,  // 0x00009790 
	0x7A93724F724D830F, 0xBC97AC578B957AD3, 0x7B138313B459AC17, 0x8313624F72939393,  // 0x000097B0 
	0x728F72CF628F5A4F, 0x831383139393B415, 0xC497D519D519E59D, 0xFE1FFE9FFE1DE517,  // 0x000097D0 
	0x9393B413C495C497, 0xBC57ABD7ABD7BC59, 0xDD5DE59DD519A3D5, 0x8B157AD3628F51CD,  // 0x000097F0 
	0x498B498B51CD5A4D, 0xA3D5C51DE5DFFDE1, 0xE59DD55DA39582D3, 0x9315B415ED99E557,  // 0x00009810 
	0x498B398D5A4B628D, 0x51CB398B398B314B, 0x5A4D72CF83137ACF, 0x5A4B524B624B8B93,  // 0x00009830 
	0xA415AC158B937ACD, 0x624B7ACD8B9372CF, 0x624D624D728D724D, 0x7ACD8B0D728D624F,  // 0x00009850 
	0x18C718C718C718C7, 0x20C7290729073147, 0x2907290731073147, 0x39473947498B4987,  // 0x00009870 
	0x3947314731473147, 0x3947394731473947, 0x2907290720C720C7, 0x20C720C718C718C7,  // 0x00009890 
	0x294B294B294B398B, 0x51CB520B5A4B520B, 0x49CB51CB72CF7B0F, 0x5A8B7315524D524D,  // 0x000098B0 
	0x498B498B51CB51CD, 0x7ACF628F7B1562CF, 0x5A4D49CD498B51CB, 0x49CB394B314B294B,  // 0x000098D0 
	0x314B294B294B394B, 0x6ACD628D628D524D, 0x49CD51CD51CB51CD, 0x83D58BD783D57313,  // 0x000098F0 
	0x49CD520D624D51CB, 0x83938395AD217B93, 0x83D783D572CD524B, 0x72D36ACD518B314B,  // 0x00009910 
	0x294B314B39CB41CB, 0x4A495A8D524D41CB, 0x418B5A4B8393728D, 0x72CD8BD97B13730F,  // 0x00009930 
	0x728D5A4D6A4D728D, 0x728F7B937B958C19, 0x730F730F6AD15A4D, 0x728F620B5A4F4A0D,  // 0x00009950 
	0x398D418D628F628D, 0x730F7355630F5A8F, 0x49CD5A4D624D7ACF, 0x628D72D183157AD3,  // 0x00009970 
	0x5A4D59CD5A4D7B95, 0x730F72CD728D7B0F, 0x941794178B958351, 0x7B13839573535A8F,  // 0x00009990 
	0x498D51CD6ACF730F, 0x73137B955A8D524D, 0x49CD5A4D5A8D7313, 0x628F73137B1372CD,  // 0x000099B0 
	0x51CD624D628D72CF, 0x72CD728D51CB5A4D, 0x83958BD58BD58BD5, 0x72CF731373137311,  // 0x000099D0 
	0x49CD524D628F72CF, 0x7B1383D55A8F5A8D, 0x39CD39CD524D5A8D, 0x8BD77B137B13628D,  // 0x000099F0 
	0x524D628D7B0D72CD, 0x72CF5A8D524D5A8F, 0x83938BD372CD72CD, 0x72CF83D59C5B8395,  // 0x00009A10 
	0x49CD5A8F628D7B93, 0x83957B1362D362CF, 0x49CD51CD628F7B13, 0x7B957B1383D57313,  // 0x00009A30 
	0x5A4D72CD7B137B0F, 0x8C177313628F628D, 0x8393838F72CD728D, 0x72CF83D58C178395,  // 0x00009A50 
	0x5A4F72CF72CD7B13, 0x93D98C197B1372CF, 0x51CD59CD628D83D7, 0x9419945D839372CF,  // 0x00009A70 
	0x524D628D83938BD5, 0x8C197B93624B5A4F, 0x8393839383937B13, 0x72CF8393945D945D,  // 0x00009A90 
	0x398D51CD524D7B13, 0x94598C198BD77B13, 0x59CD5A4D8395A459, 0x945D8C198BD58BD5,  // 0x00009AB0 
	0x628D59CD72CF8C17, 0x94597B137B137ACF, 0x839383D5A49F8BD5, 0x83138BD7A45D945D,  // 0x00009AD0 
	0x51CD49CD72D583D7, 0x8BD78C1783D5730F, 0x73138BD7A45D9459, 0x7B15624F83158393,  // 0x00009AF0 
	0x628D628D83959459, 0x8BD57B937B0F5A4D, 0x7ACF8BD78C178393, 0x7B139459945993D9,  // 0x00009B10 
	0x5A4D524F73138C19, 0x8C1783D583958395, 0x7B0F83D583D58395, 0x8393728F83958393,  // 0x00009B30 
	0x7B0F5A4D730F9459, 0xA45D8BD572CF5A4D, 0x7B0F8393839372CF, 0x7B13AC9F945DA45D,  // 0x00009B50 
	0x524D524F628D7B95, 0x7B957B13728D7B13, 0x8393839383D78395, 0x628D724D830F7ACF,  // 0x00009B70 
	0x830F51CD62CD8C15, 0x8BD7730F62CD5A4D, 0x83138BD37B9383D5, 0x7B139419945D945D,  // 0x00009B90 
	0x7313524F49CD628F, 0x7B9362CF7B138C17, 0x8BD78BD78C197B93, 0x728D628F72CF72CF,  // 0x00009BB0 
	0x72CF7ACF7ACF8BD5, 0x8BD5839372CD5A4D, 0x628F830F7B0F8BD7, 0x7B139417ACA1945D,  // 0x00009BD0 
	0x731549CD39CD524D, 0x72CF72CF83139419, 0x7B1383957B957B93, 0x628D524D628D7B0F,  // 0x00009BF0 
	0x83937B0D628D7B93, 0x941783D7628F6293, 0x628D728D7B0F9417, 0x8BD78BD7AD21A49F,  // 0x00009C10 
	0x524D62D3524F524D, 0x51CD72CF83957B0F, 0x8BD77B957B13730F, 0x51CD49CD5A8D72CF,  // 0x00009C30 
	0x72CF728F628D730F, 0x8C177B93628D7B13, 0x628D628D8BD79417, 0x9419839594198BD9,  // 0x00009C50 
	0x5A4F73135A9349CD, 0x524D72CF83958395, 0x7B9383D772CF628D, 0x5A4D49CD5A8F83D7,  // 0x00009C70 
	0x839572CF728D624D, 0x72CF7B1372CF62CF, 0x49CD628D8BD59417, 0x8BD77ACF941D8395,  // 0x00009C90 
	0x8C1994198395628F, 0x398D5A4D7B137B13, 0x7B957B93628F5A4D, 0x49CD5A4F628D8BD7,  // 0x00009CB0 
	0x8BD583938B958B93, 0x72CF839562CD5A4D, 0x5A8F730F83D59417, 0x8313628F8BD78393,  // 0x00009CD0 
	0x8C197B9362CF5A8D, 0x49CD72CF7B938C19, 0x83957B93524D51CD, 0x5A4F7B138BD583D5,  // 0x00009CF0 
	0x83958B9383938B93, 0x7B138BD57ACF7B0F, 0x524D7B1383938BD7, 0x83937B13A45D8BD5,  // 0x00009D10 
	0x945D7B93730F628D, 0x4A4B628D7B958BD9, 0x730F72CF5A8D5A4D, 0x5A4F72CF83958BD7,  // 0x00009D30 
	0x7B0F72CF628D8313, 0x8BD594598BD57B93, 0x7B0F8393624D8BD5, 0x72CF941794598B95,  // 0x00009D50 
	0x72CD5A4D628D49CD, 0x628D839583D583D5, 0x5A4D5A4D49CD524D, 0x7B13839383D5945D,  // 0x00009D70 
	0x7B95524D628D8395, 0x72CF839394197B95, 0x8393838F728D628D, 0x7B95A49FA45D82CD,  // 0x00009D90 
	0x628D5A4D524D39CD, 0x524B7B9562CF62CF, 0x51CD49CD49CD628F, 0x94158393945983D7,  // 0x00009DB0 
	0x730F72CF83938BD5, 0x628D839394599459, 0x7B0F728D59CD628D, 0x83D5A49D8BD57B93,  // 0x00009DD0 
	0x524D49CD4A4D524D, 0x72CF7B137B9362CF, 0x398D524D628D7B13, 0x7B0F945D8C198BD7,  // 0x00009DF0 
	0x730F5A4D728D51CD, 0x8BD58BD5A45D8C17, 0x5A4D498D5A4D728F, 0xA49D8BD794198393,  // 0x00009E10 
	0x5A8F498D498D628F, 0x83937B9383D762CF, 0x51CD5A8D7ACF7ACF, 0x7ACF945F83D58C19,  // 0x00009E30 
	0x51CD51CD5A8D5A4D, 0x8B957B13A49F8395, 0x7313628F628D628D, 0x94198BD78BD78B93,  // 0x00009E50 
	0x72D349CD524D628D, 0x72CD72CD5A4D49CD, 0x49CD628D7B1372CF, 0x7B938BD77B13628D,  // 0x00009E70 
	0x624D59CD728D728D, 0x7ACF8395A45D83D7, 0x83D583D372CF72D3, 0x8BD78B957B1351CD,  // 0x00009E90 
};

u64 _spot12_room_0_tex_00009EB0[] = 
{
	0xD48ED48ED48ED48E, 0xD48ED48ED48ED48E, 0xD48ED48CD48ED48E, 0xD48ED48ED48ED48C,  // 0x00009EB0 
	0xD48ED48ED48CD48C, 0xD48ED48CD48ED48C, 0xD48CD48CD48ED48E, 0xD48ED48CD48CD48C,  // 0x00009ED0 
	0xD48ED48ED48ED48C, 0xD48ECC8CCC8CCC8C, 0xCC8CCC8CCC8ECC8E, 0xC450CC50CC8ECC8C,  // 0x00009EF0 
	0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8C,  // 0x00009F10 
	0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8E, 0xCC50C452F5DFF5E1, 0xF5DFF5E1F5E1F5E1,  // 0x00009F30 
	0xF5DFF5E1F5E1F5E1, 0xC450C44EC44CCC4C, 0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8C,  // 0x00009F50 
	0xCC4CCC8CCC8CCC4C, 0xCC8CC44ECC50F5DF, 0xFE1FFE1FFE1FFE1D, 0xF5DDFE1FFE1FFE1D,  // 0x00009F70 
	0xFE1DFE1DF5DDEDDF, 0xED9FDD5DE55FC450, 0xC44ECC4ECC4CCC4C, 0xCC4CCC4CCC4CCC4C,  // 0x00009F90 
	0xCC4CC44CC44CCC4C, 0xC450FDE1FE1FFE1D, 0xFE1BFE1BFE1DFE1D, 0xFE1DFE1DFE1DF5DD,  // 0x00009FB0 
	0xF61DFE1FEDDFF5DD, 0xED9BDD59E59FEDDF, 0xEDDFC450C450C44E, 0xC44EC44CC44CC44C,  // 0x00009FD0 
	0xC44CC44CBC10C452, 0xFE1FFE1DF5DBED9B, 0xED9BEDDDFDDDFE1D, 0xFE1FFE5DFE5DFE5F,  // 0x00009FF0 
	0xFE1FEDDFDD5BED9B, 0xED9DEDDDE59DDD1B, 0xDD5DE5A1C450C44E, 0xC44EC44EC44EC44C,  // 0x0000A010 
	0xC44CC450FE1FFE1F, 0xFE1DFE1DED9DE55B, 0xED9BF5DDF5DDFE1F, 0xFE5FFE1FF5DFED9D,  // 0x0000A030 
	0xE559ED9BDD17D517, 0xE55BDD5BDD19CCD7, 0xD4D7E55BE59FE5A1, 0xBC10BC10C40CC40C,  // 0x0000A050 
	0xC40EFE1FFE1FFE1D, 0xF5DDED9DDD59DD59, 0xE559E59BEDDFE55B, 0xD519DD19DD19DD19,  // 0x0000A070 
	0xDD59DD19CCD5D4D5, 0xE559E59BE55BDD5B, 0xDD19ED9DF5DDE59F, 0xE59FE5A1BC10BC0E,  // 0x0000A090 
	0xFE1FFE1FFDDDDD15, 0xD4D5DD17ED9DE59D, 0xCCD7CC97CCD7CC95, 0xC453C495CCD7CCD7,  // 0x0000A0B0 
	0xCCD5BC53C495DD59, 0xDD5BE55BE55BDD59, 0xDD5BED9BE55BDD59, 0xE559E59DEDA1EDA3,  // 0x0000A0D0 
	0xFE5BF5DBE55BDD19, 0xDD19DD5BE59DDD19, 0xC495BC53C495CC95, 0xC455CC97CCD9C497,  // 0x0000A0F0 
	0xC497BC53BC53DD5B, 0xD519D519DD19D519, 0xDD59E55BDD19DD59, 0xED9DF5DDFE5BFE5D,  // 0x0000A110 
	0xFDDDED9DED9DE59D, 0xE59FD51BBC55C495, 0xD519C495C495C495, 0xC495C497B453BC55,  // 0x0000A130 
	0xC497BC55C497CD19, 0xCCD9D519D519D4D9, 0xD4D7DD19DD19E55B, 0xF5DDFE1BFE5BFE5B,  // 0x0000A150 
	0xE55BF59FE55DCCD9, 0xD4D7C493B411BC53, 0xCCD7BC55ABD1B453, 0xB413AC13A3D1B413,  // 0x0000A170 
	0xBC55B413C4D9CCDB, 0xCCDBCCD9CCD9CCD9, 0xCC97CCD7D4D7DD59, 0xF5D9F5D9F5DBFE1D,  // 0x0000A190 
	0xE559DD59D51BC497, 0xCCD7D4D9C495B413, 0xAC11AC13ABD3B415, 0xB413B413BC55BC97,  // 0x0000A1B0 
	0xC497CCD9C499CCD9, 0xCCD7C497CCD9CC97, 0xBC53C455CC95ED59, 0xFDDBFE1BFE1DFE1D,  // 0x0000A1D0 
	0xF5DFE55DCC95AB8F, 0xA38FAC13ABD3ABD1, 0xB413BC97C497B455, 0xABD3AC13BC55B457,  // 0x0000A1F0 
	0xB415B455BC57BC97, 0xBC97C497D51BCCD7, 0xCC95D4D5DD17E559, 0xED9BE55BDD59EDDF,  // 0x0000A210 
	0xED9DED9FD519BC55, 0xBC55C495C495BC55, 0xB455B455B457A3D3, 0xA3D3A3D3A3D39BD3,  // 0x0000A230 
	0x93939353A3D5BC57, 0xD519DD5BD519C495, 0xCC93CC95CC95DD17, 0xED59ED9BFE1FFE9F,  // 0x0000A250 
	0xE55DE55DD519C497, 0xBC55B453BC55B415, 0xA3D5A3D39BD39B93, 0x939393538B518311,  // 0x0000A270 
	0x9B93AC15C499DD1B, 0xE59BE55BDD59D4D5, 0xCC95CC93D4D5E59B, 0xEDDDFE1FFE1FFE1F,  // 0x0000A290 
	0xE55BD517CCD9BC55, 0xA3919B93A3D39B93, 0x9353935193538B51, 0x83117AD19351B455,  // 0x0000A2B0 
	0xD519E59BEDDDF5DD, 0xEDDBED9BEDDBE559, 0xDCD5D493DD17FE1F, 0xF5DFED9DE59BDD17,  // 0x0000A2D0 
	0xCCD9C497BC55ABD3, 0x93518B0F93519393, 0x8B518B118B518B11, 0x8B51A3D3CCD7ED9B,  // 0x0000A2F0 
	0xFDDDFE1DF5DBFE1D, 0xFE1DE559DD17DD17, 0xD4D3D4D5D4D7ED9F, 0xDD5BD4D5D517D519,  // 0x0000A310 
	0xB415AC15A3D39B93, 0x8B11830F8B519353, 0x8B518B1193519393, 0xB455E559FE1DF5DD,  // 0x0000A330 
	0xED9BED9BED9BE559, 0xDD17B411B3D1C455, 0xC453DD19CCD7C451, 0xCC95C493C495BC97,  // 0x0000A350 
	0xABD59B9393538B11, 0x83118B118B518B51, 0x8B518B119351BC57, 0xDD19EDDBFE1DF5DD,  // 0x0000A370 
	0xED99ED9BED99DD17, 0xCC93C453BC11CC97, 0xCC97C497B413ABD1, 0xB413AC13A3D39B93,  // 0x0000A390 
	0xA3D3935393538B51, 0x8B118B118B118B11, 0x8B519B93B415C495, 0xD4D5DD17DD59DD17,  // 0x0000A3B0 
	0xD4D5D4D5D4D5DD19, 0xE559D519CC95CC97, 0xCC95BC11C453BC13, 0xB413B453B415A3D3,  // 0x0000A3D0 
	0x9B958B518B518B11, 0x8B118B118B118B11, 0x9353A3D3BC55C455, 0xC453D4D7D517B411,  // 0x0000A3F0 
	0xB3D1C493CC95CC95, 0xD519DD1BD51BCC97, 0xBC55B413C499C497, 0xABD19B939B939353,  // 0x0000A410 
	0x93958B538B538B53, 0x93538B538B539393, 0xA3D5B457C497CCD9, 0xBC55CCD7D55BC497,  // 0x0000A430 
	0xB413C495CCD7B413, 0xB413C4D9C499AC13, 0xABD3B415AC179B93, 0x935193538B538B53,  // 0x0000A450 
	0x9353939593959353, 0x939593539353A3D5, 0xB459B457C4D9D51B, 0xCCD9CD1BCD19CCD9,  // 0x0000A470 
	0xCCD9CCD9CCD9BC55, 0xA3D1A391ABD39B91, 0x9B91A3D59B93830F, 0x8B539B9593939395,  // 0x0000A490 
	0x9397935393539353, 0x8B538B5393959BD5, 0xA415AC15BC55C4D9, 0xC4D9BC55AC13A3D1,  // 0x0000A4B0 
	0xAC13AC13AC13BC55, 0xABD39B91A3D1A3D1, 0x935193919B959353, 0x8B5193959B979BD9,  // 0x0000A4D0 
	0x9B99939993959353, 0x8B538B5393959395, 0x9BD3A3D3B415B457, 0xB455B413B413A3D3,  // 0x0000A4F0 
	0x9B8F9B4F9B4F9B91, 0xAC15A3D39B919B91, 0x8B1183118B539353, 0x93979BD76A487A46,  // 0x0000A510 
	0x724A9BD99BD99395, 0x9393935393539395, 0x9BD59B93AC15AC55, 0xAC15A3D3AC13ABD3,  // 0x0000A530 
	0x934F8B0F934FA3D3, 0xAC179B9393539353, 0x82CF830F93939BD7, 0x9BD772487A487A86,  // 0x0000A550 
	0x7A46724A6A4A9BD9, 0x9B97939793959393, 0x939593939BD5A3D5, 0xA3D59B9393518B0F,  // 0x0000A570 
	0x830F8B0F8B0F9351, 0x9393935383118311, 0x8B1193959BD76A08, 0x72487A467A867A86,  // 0x0000A590 
	0x7A46724872486A4A, 0x9BD99BD99B979397, 0x93979B9793959B91, 0x9B91934F8B4F8B0F,  // 0x0000A5B0 
	0x8B11939593559355, 0x939593558B539395, 0x9BD99BD76A0A7248, 0x7246724672467246,  // 0x0000A5D0 
	0x7246724672467248, 0x72486A4A9BD99B97, 0x9B979B979B979B99, 0x9B99939793979399,  // 0x0000A5F0 
	0x9B999B999B979B97, 0x9B979B9793979BD7, 0x6A086A0872067246, 0x7244724472467244,  // 0x0000A610 
	0x7244724672067244, 0x724672486A066A08, 0x6A086A086A0A6A08, 0x6A086A086A086A0A,  // 0x0000A630 
	0x620A6A0A620A620A, 0x6A086A086A066A48, 0x6A066A066A066A06, 0x6A046A046A046A04,  // 0x0000A650 
	0x6A046A046A046A04, 0x6A046A046A066A46, 0x6A066A066A086A08, 0x6A086A086A086A08,  // 0x0000A670 
	0x6A086A066A066A04, 0x6A046A046A046A04, 0x62046A066A066A04, 0x6204620462046A04,  // 0x0000A690 
};

u64 _spot12_room_0_tex_0000A6B0[] = 
{
	0xCD19CD19CD19CD19, 0xD51BD51BD51BD51B, 0xD55BCD19CD19CD19, 0xCD19D51BD51BD519,  // 0x0000A6B0 
	0xD519CD19CCD9CCD9, 0xC4D7C4D7C497CCD9, 0xCD19D519D519D51B, 0xCD19CD19CD19CD19,  // 0x0000A6D0 
	0xC4D9C4D7C4D7C4D9, 0xC4D9D51BD51BD51B, 0xD51BCD19CD19CD19, 0xCD19D51BD51BD519,  // 0x0000A6F0 
	0xD519CD19CCD9CCD9, 0xC4D7C4D7C497CCD9, 0xCD19D519D519D51B, 0xCD19CD19CD19CD19,  // 0x0000A710 
	0xEDE1EDE1EE21E5DF, 0xDD9DDD5DE5E1E5E1, 0xDD5DDD5DD51BD51B, 0xD51BD55BDD5BD51B,  // 0x0000A730 
	0xD519D519CCD9CCD9, 0xC4D7C4D7C497CCD9, 0xCD19D519D519D51B, 0xD51BD519D51BDD9F,  // 0x0000A750 
	0xEDE1EDE1C4D7CCD9, 0xCCD9D51BD55DDD5D, 0xD55DD55BD51BD51B, 0xD51BD55BDD5BD51B,  // 0x0000A770 
	0xD519D519CCD9CCD9, 0xC4D7C4D7C497CCD9, 0xCD19D519D519D51B, 0xD51BD519D51BDD9F,  // 0x0000A790 
	0xEDE1EE23AC177B11, 0xCD9FF623F623F623, 0xEDE1E5E1E59FE59D, 0xDD5DDD5BD55BD519,  // 0x0000A7B0 
	0xCD19CD19CCD9CCD9, 0xC4D7C4D9CCD9BCD9, 0xA455AC97C51BBCDB, 0xBCDBE59DE5DFE5E1,  // 0x0000A7D0 
	0xE59FE5E1CD1BCD1B, 0xCD1BDD5DDD9DE59F, 0xE59FE59FE59FE59D, 0xDD5DDD5BD55BD519,  // 0x0000A7F0 
	0xCD19CD19CCD9CCD9, 0xC4D7C4D9CCD9BCD9, 0xA455AC97C51BBCDB, 0xBCDBE59DE5DFE5E1,  // 0x0000A810 
	0xEE21F6239C1772D1, 0x7B11F665EDE1E5DF, 0xEE21E5DFDD9DDD9D, 0xDD5BD55BD519D519,  // 0x0000A830 
	0xC4D9C4D7C4D7C4D9, 0xC4D9C4D9CD1993D5, 0x72CFA4178B95A45B, 0xB4DDE5DFE5DFE5E1,  // 0x0000A850 
	0xE5E1DD9FD55DCD1B, 0xCD1BCD1BD55DDD9D, 0xDD5DDD9FDD9DDD9D, 0xDD5BD55BD519D519,  // 0x0000A870 
	0xC4D9C4D7C4D7C4D9, 0xC4D9C4D9CD198B93, 0x72CFA4178B95A45B, 0xB4DDE5DFE5DFE5E1,  // 0x0000A890 
	0xEE23EDE19C179393, 0x72CF8311E5E1E59D, 0xE59FDD9DD55BD59F, 0xAC57AC57B499CCD9,  // 0x0000A8B0 
	0xC4D7C4D7C4D7CCD9, 0xCCD9CD19CD197B53, 0x7B0F83538B539BD5, 0x9BD5A3D5EDE1EE23,  // 0x0000A8D0 
	0xE5A1DD5FCD1BBC97, 0xC4D9C4D9CD1BD55B, 0xD55DD55BD55BC51D, 0x83517B118351BC97,  // 0x0000A8F0 
	0xC4D7C4D7C4D7CCD9, 0xCCD9CD19C4D97B11, 0x7B0F83538B539BD5, 0x9BD5AC15EDE1EE23,  // 0x0000A910 
	0xEE23E59F93D3624B, 0x6A8B4987D55DDD5D, 0xDD5DD55BD5197B53, 0x7B0F835172CFA413,  // 0x0000A930 
	0xC4D7C4D9C4D9CCD9, 0xCD19D519E5E1DD9F, 0xD55D8B9172CD7ACF, 0x72CF72CFDDA1EE23,  // 0x0000A950 
	0xD55DCD1BC4D9BC99, 0xBCD7BC97C4D9D55B, 0xDD5DC4D9D5197311, 0x72CF7B1172CF8B51,  // 0x0000A970 
	0xC4D7C4D9C4D9CCD9, 0xCD19D519C4D98351, 0xA457835172CD7B0F, 0x7B0F7ACFF623F665,  // 0x0000A990 
	0xEDE1E59FB4576A8D, 0x7ACD624BBC99BCD9, 0xD55BC51B7ACF7B11, 0xA457835172CD72CF,  // 0x0000A9B0 
	0x9393CCD9CD19CD19, 0xD51BD519E5A1DD5F, 0xCD1BBC978B938B91, 0x93D36ACFA417EE23,  // 0x0000A9D0 
	0xE5E1CD1BBC99A415, 0x7B0F830F9BD5B499, 0xD55BAC997ACF7B11, 0xA457835172CDDD9D,  // 0x0000A9F0 
	0xE59FE59FE59FCD19, 0xD51BD519A4157B0F, 0x9C157B0F8B938B51, 0x7B0F8351F623F625,  // 0x0000AA10 
	0xE5E1E59FDD9F7B0F, 0x834F9C15D55B6A8D, 0x930F83539C177B0F, 0x9C157B0F8B938353,  // 0x0000AA30 
	0x6A8D8351C4D9D51B, 0xD55BCD198B53A457, 0x93D59C1593D593D5, 0x7ACF6ACFAC59EDE1,  // 0x0000AA50 
	0xCD1BCD1BC4DB7B0F, 0x72CF9393C4D96A8D, 0x930F83539C177B0F, 0x9C157B0FCD1BD55D,  // 0x0000AA70 
	0xDD9DDD5DDD9FD51B, 0xD55BCD197B0FA457, 0x9BD58B937B117B11, 0x72CF8B93F625EE23,  // 0x0000AA90 
	0xE59FDD5DDD5DA3D3, 0xA3D38B91BC998B93, 0xA3D3AC59B49BAC99, 0x9BD59C1593D593D5,  // 0x0000AAB0 
	0x83516A8D9BD3D55B, 0xD51B9B938B938351, 0x8B518351AC57BCDB, 0x83117B117B11E5E1,  // 0x0000AAD0 
	0xDD5FC4D9DD5DA3D3, 0x9BD38311BC998B93, 0x9B93AC59B49BAC99, 0x9BD59C15C4D9CD1B,  // 0x0000AAF0 
	0xD55B6A8D9BD3D55B, 0xD51B939183518B93, 0x831172CF8B93BCDB, 0x831193D5EE23E5E1,  // 0x0000AB10 
	0xDD9DD55BD51BCD19, 0xD51B830FAC9B9C17, 0x9BD5A457AC59A417, 0x8B51B4DB9C179C17,  // 0x0000AB30 
	0x8B9393D58B51C4D9, 0xBCD972CF93D372CF, 0x7ACF8B93DD5DDD5D, 0x8B5193D58B938B93,  // 0x0000AB50 
	0xDD9DD55BD51BCD19, 0xD51B7ACF9C178B93, 0x8B939C17AC59A417, 0x8B51B4DB9C179C17,  // 0x0000AB70 
	0x8B9393956A8FCD1B, 0xCD1B72CF8B9372CF, 0x72CF7B11DD5DDD5D, 0x8B51A417EDE1E59F,  // 0x0000AB90 
	0xBC99A3D5A415A415, 0x8B0F72D17B11BCD9, 0xBCD99C17AC59A459, 0x8B93A4576A8D8B93,  // 0x0000ABB0 
	0x93939393830F9393, 0xCD1B730F835172CF, 0xA415AC57DD5DD55B, 0x9BD59C1593937B0F,  // 0x0000ABD0 
	0x9BD59BD39B93A415, 0x8B0F72D18351AC57, 0x83517B11AC59A459, 0x8B93A4576A8D8B93,  // 0x0000ABF0 
	0x9393939372CF72CF, 0xCD1B730F72CF6ACF, 0xA415B499DD5DD55B, 0x9BD59C15AC17A3D3,  // 0x0000AC10 
	0x7B117B1172CF6A8D, 0x839583517B11D55B, 0xD55B93D5A4599C17, 0x8B9372CD8B957B0F,  // 0x0000AC30 
	0x93D58B517B1172CF, 0xBCD993D37B0F7B11, 0xBC99DD5DDD5DD55B, 0xA45993D37B0F72CD,  // 0x0000AC50 
	0x72CF72D172CF6A8D, 0x835383519393BC97, 0xAC557B11939593D7, 0x8B9372CD8B957B0F,  // 0x0000AC70 
	0x93D58B517B116A8F, 0xAC1793D37B0F72CF, 0xDD5DDD5DDD5DD55B, 0xA45993D37B0F72CD,  // 0x0000AC90 
	0xA45972CD6A8B8B93, 0x8B9394158351D51B, 0xD51BB4D99C17A417, 0x8B938B939393A459,  // 0x0000ACB0 
	0x9C17A41793D58B95, 0xA4159C1593937B11, 0xCD1BAC15AC15AC15, 0x9C179BD5835172CD,  // 0x0000ACD0 
	0xA45972CD6A8B8B93, 0x8B9394158B93D51B, 0xD51BA4177B11A417, 0x8B938B939393A459,  // 0x0000ACF0 
	0x9C17A41793D58B95, 0xA4159C1583517B11, 0xCD1BAC15AC15AC15, 0x9C179BD5835172CD,  // 0x0000AD10 
	0x62497B0F93D58393, 0x9BD772CD6A8DC4D9, 0xD51BD55B93D58B93, 0x72CD9C1593D5A459,  // 0x0000AD30 
	0x8B938B939C179C17, 0x9C17A45993D58B93, 0xDD9D7B0F6A8D93D5, 0x8B919BD57B0F7B0F,  // 0x0000AD50 
	0x62497B0F93D58393, 0x9BD772CD6A8DD51B, 0xD51BD55B8B938351, 0x72CD9C1593D5A459,  // 0x0000AD70 
	0x8B938B939C179C17, 0x9C17A45983538351, 0xDD9D7B0F6A8D93D5, 0x8B919BD57B0F7B0F,  // 0x0000AD90 
	0x7B0F7B0F9BD593D5, 0x93D593D572CF6A4D, 0x9393B45593D58B91, 0x9BD572CD8B959C15,  // 0x0000ADB0 
	0xA457A45972CD8B93, 0x8B9393D58B938311, 0xAC977B0F8B937B0D, 0x93D58B9393D58B93,  // 0x0000ADD0 
	0x7B0F7B0F9BD593D5, 0x93D593D572CF6A4D, 0x9393B45593D58B91, 0x9BD572CD8B959C15,  // 0x0000ADF0 
	0xA457A45972CD8B93, 0x8B9393D583538351, 0xAC977B0F8B937B0D, 0x93D58B9393D58B93,  // 0x0000AE10 
	0x93D58B939C178351, 0x7B0F93D58B518353, 0x8B538B537B0D8B93, 0x8B937B118B938351,  // 0x0000AE30 
	0x72CD62497B0F7B0F, 0x7B0D730F8B938B93, 0x93D39C1593D5AC59, 0x9C1583517B0FA417,  // 0x0000AE50 
	0x93D58B939C178351, 0x7B0F93D58B518353, 0x8B538B537B0D8B93, 0x8B937B118B938351,  // 0x0000AE70 
	0x72CD62497B0F7B0F, 0x7B0D730F8B958B93, 0x93D39C1593D5AC59, 0x9C1583517B0FA417,  // 0x0000AE90 
	0x8B939C158B517B11, 0xA417A45793958B93, 0x93D593D3AC599C15, 0x835172CD93D58B91,  // 0x0000AEB0 
	0x9BD57B0F7B0F8B93, 0x93D37B0F83538B93, 0x9393B4DB9C178B51, 0x8B938353A4178351,  // 0x0000AED0 
	0x8B939C158B517B11, 0xA417A45793958B93, 0x93D593D3AC599C15, 0x835172CD93D58B91,  // 0x0000AEF0 
	0x9BD57B0F7B0F8B93, 0x93D37B0F83538B93, 0x8353AC999C178B51, 0x8B938353A4178351,  // 0x0000AF10 
	0x8351A417DD5D9C17, 0x9C17AC998351830F, 0x9BD593D38B518B93, 0x8353A417835172CD,  // 0x0000AF30 
	0xA459B4DDB4DD93D5, 0x83536A8D7B1172CF, 0x835193D5624B9393, 0x9BD593D38B9393D3,  // 0x0000AF50 
	0x8351A417DD5D9C17, 0x9C17AC998351830F, 0x9BD593D38B518B93, 0x8353A417835172CD,  // 0x0000AF70 
	0xA459B4DDB4DD9C15, 0x8B956A8D72CF72CF, 0x7B118B93624B8B91, 0x9BD593D38B9393D3,  // 0x0000AF90 
	0x7B119393E59FD59F, 0x93938B9372CD8B93, 0x93D59C1593939BD5, 0x93D38B9393D38B91,  // 0x0000AFB0 
	0x72CD8B959C157B11, 0x7B118353C51DD59F, 0xCD1BBC99BC978B93, 0xA457A45972CD6A8B,  // 0x0000AFD0 
	0x7B119393E59FD59F, 0x93938B9372CD8B93, 0x93D59C1593939BD5, 0x93D38B9393D38B91,  // 0x0000AFF0 
	0x72CD8B959C158B93, 0x7B118353BCDBC51B, 0xCD1BBC99BC978B93, 0xA457A45972CD6A8B,  // 0x0000B010 
	0x7B0F6A8DC51BEE21, 0x7ACD8B9372CD6249, 0x7B0F93D5AC5993D5, 0x83939BD77B0F8353,  // 0x0000B030 
	0x8B5393D57B0F72CF, 0x93D3C497DD9DE5DF, 0xDD9DDD5BC4D9C4D7, 0x624962497B0F93D5,  // 0x0000B050 
	0x7B0F6A8DC51BEE21, 0x7ACD8B9372CD6249, 0x7B0F93D5AC5993D5, 0x83939BD77B0F8353,  // 0x0000B070 
	0x8B5393D58B517ACF, 0x8B91B457CD1BE5DF, 0xDD9DDD5BC4D9C4D7, 0x624962497B0F93D5,  // 0x0000B090 
	0x8B5383517ACF9BD5, 0x6A8D8B919BD57B0F, 0x7B0F9BD593D59393, 0x93D593D5A4578351,  // 0x0000B0B0 
	0x72CD93D57B11AC57, 0xCD19CD19CD19CD19, 0xDD5BB457628D72CF, 0x93D393D57B119395,  // 0x0000B0D0 
	0x8B5383517ACF9BD5, 0x6A8D8B919BD57B0F, 0x7B0F9BD59C159393, 0x93D58B93A4578351,  // 0x0000B0F0 
	0x72CD93D58B519393, 0xCD19CD19CD19CD19, 0xDD5BB457628D72CF, 0x93D393D57B119395,  // 0x0000B110 
	0x93D58B93730F8351, 0x7B0F93D58B9393D5, 0x8B93A4598BD58B93, 0x83516A8D8B9372CF,  // 0x0000B130 
	0x8B937B0D8BD37B11, 0x8B93A4159BD57B51, 0x72CDA45993D59C15, 0x93D59C178B938B93,  // 0x0000B150 
	0x93D58B93730F8351, 0x7B0F93D58B9393D5, 0x8B93A45994158B53, 0x7B0F6A8D7B5172CF,  // 0x0000B170 
	0x835172CD8BD37B11, 0x8B93A4159BD57B51, 0x72CDA45993D59C15, 0x93D59C178B938B93,  // 0x0000B190 
	0x93D583518B9393D5, 0x8B919C1583517B0F, 0xA4178B9172CD8B93, 0x6ACF6A8F83118311,  // 0x0000B1B0 
	0x9353CD1B9C158351, 0x7B0FA4178B9172CD, 0xA4598B517B0F93D3, 0x83518B5183519393,  // 0x0000B1D0 
	0x93D583518B9393D5, 0x8B919C1583517B0F, 0xA4178B9172CD7B0F, 0x6A8F6A8F83118311,  // 0x0000B1F0 
	0x8B51C4D99C158351, 0x7B0FA4178B9172CD, 0xA4598B517B0F93D3, 0x83518B5183519393,  // 0x0000B210 
	0x8B939393A45993D5, 0x8B939393A4599C17, 0xA41793D593D57B0F, 0x8353BC97CD19CD19,  // 0x0000B230 
	0xD51BD51B7B118353, 0xA417835172CD6A4B, 0x6A8B62498351834F, 0x9C1783518B93834F,  // 0x0000B250 
	0x8B939393A45993D5, 0x8B939393A4599C17, 0xA41793D58B9372CF, 0x7B11C4D9CD19CD19,  // 0x0000B270 
	0xD51BD51B7B118353, 0xA417835172CD6A4B, 0x6A8B62498351834F, 0x9C1783518B93834F,  // 0x0000B290 
	0x9C1593D5A4579C17, 0x9C1593D5A4598B93, 0x8B939C1793938351, 0x7B11B455D51BD51B,  // 0x0000B2B0 
	0xDD5B83518B9393D3, 0x8B9393D38B918B91, 0x93D57B0F7B0FAC59, 0xA45793D59C15A417,  // 0x0000B2D0 
	0x9C1593D5A4579C17, 0x9C1593D5A4598B93, 0x8B939C1793938311, 0x7B53BC97D51BD51B,  // 0x0000B2F0 
	0xDD5B83518B9393D3, 0x8B9393D38B918B91, 0x93D57B0F7B0FAC59, 0xA45793D59C15A417,  // 0x0000B310 
	0x72CD8B959C178B93, 0x72CD8B959C15A457, 0xA45972CD6A8B8B51, 0x8B9383536A8F6A8D,  // 0x0000B330 
	0x835383519BD5A459, 0x72CD6A8B9BD59C15, 0x9BD593D3B4DDAC9B, 0x7ACD835183518351,  // 0x0000B350 
	0x72CD8B959C178B93, 0x72CD8B959C15A457, 0xA45972CD6A8B8B93, 0x8B9383536A8F6A8D,  // 0x0000B370 
	0x835383519BD5A459, 0x72CD6A8B9BD59C15, 0x9BD593D3B4DDAC9B, 0x7ACD835183518351,  // 0x0000B390 
	0x8B5393D57B0F8353, 0x8B5393D58B9372CD, 0x62497B0F93D58393, 0x9BD77B0F7B118B53,  // 0x0000B3B0 
	0x93D58B9372CD6249, 0x7B0F93D5AC59AC59, 0xA459A45793D38351, 0x7B0F72CD7ACF8353,  // 0x0000B3D0 
	0x8B5393D57B0F8353, 0x8B5393D58B9372CD, 0x62497B0F93D58393, 0x9BD77B0F7B118B53,  // 0x0000B3F0 
	0x93D58B9372CD6249, 0x7B0F93D5AC59AC59, 0xA459A45793D38351, 0x7B0F72CD7ACF8353,  // 0x0000B410 
	0x72CD93D5A4578351, 0x72CD93D58B919BD5, 0x7B0F7B0F9BD593D5, 0x93D5A457835172CD,  // 0x0000B430 
	0x93D58B919BD57B0F, 0x7B0F9BD59C159C15, 0x93D393938B9393D3, 0x93D57B1193958B95,  // 0x0000B450 
	0x72CD93D5A4578351, 0x72CD93D58B919BD5, 0x7B0F7B0F9BD593D5, 0x93D5A457835172CD,  // 0x0000B470 
	0x93D58B919BD57B0F, 0x7B0F9BD59C159C15, 0x93D393938B9393D3, 0x93D57B1193958B95,  // 0x0000B490 
	0x8B937B0D9C157B0F, 0x8B937B0D93D58B93, 0x93D58B93A4598351, 0x7B0F9C157B0F8B93,  // 0x0000B4B0 
	0x7B0D93D58B9393D5, 0x8B93A4599415830F, 0xB49B93D59C1593D5, 0x9C178B938B938351,  // 0x0000B4D0 
	0x8B937B0D9C157B0F, 0x8B937B0D93D58B93, 0x93D58B93A4598351, 0x7B0F9C157B0F8B93,  // 0x0000B4F0 
	0x7B0D93D58B9393D5, 0x8B93A4599415830F, 0xB49B93D59C1593D5, 0x9C178B938B938351,  // 0x0000B510 
	0x93D5AC599BD59C15, 0x93D5AC599C158351, 0x7B0FA4178B91AC9B, 0xAC999BD59C1593D5,  // 0x0000B530 
	0xAC599C1583517B0F, 0xA4178B9172CDA459, 0x8B517B0F93D38351, 0x8B518351939372CF,  // 0x0000B550 
	0x93D5AC599BD59C15, 0x93D5AC599C158351, 0x7B0FA4178B91AC9B, 0xAC999BD59C1593D5,  // 0x0000B570 
	0xAC599C1583517B0F, 0xA4178B9172CDA459, 0x8B517B0F93D38351, 0x8B518351939372CF,  // 0x0000B590 
	0x9C178B518B51B4DB, 0x9C178B518B938353, 0xA417835172CDAC59, 0xA4178B51B4DB9C17,  // 0x0000B5B0 
	0x8B518B938353A417, 0x835172CD6A4B6A8B, 0x62498351834F9C17, 0x83518B93834F72CF,  // 0x0000B5D0 
	0x9C178B518B51B4DB, 0x9C178B518B938353, 0xA417835172CDAC59, 0xA4178B51B4DB9C17,  // 0x0000B5F0 
	0x8B518B938353A417, 0x835172CD6A4B6A8B, 0x62498351834F9C17, 0x83518B93834F72CF,  // 0x0000B610 
	0xB49BA4598B93A457, 0x6A8D93939BD593D3, 0x8B9393D38B91B49B, 0xA4598B93A4576A8D,  // 0x0000B630 
	0x93939BD593D38B93, 0x93D38B918B9193D5, 0x7B0F7B0FAC59A457, 0x93D59C15A41772CF,  // 0x0000B650 
	0xB49BA4598B93A457, 0x6A8D93939BD593D3, 0x8B9393D38B91B49B, 0xA4598B93A4576A8D,  // 0x0000B670 
	0x93939BD593D38B93, 0x93D38B918B9193D5, 0x7B0F7B0FAC59A457, 0x93D59C15A41772CF,  // 0x0000B690 
};

u64 _spot12_room_0_tex_0000B6B0[] = 
{
	0xAE736B5B7B575AD7, 0x6BDB6B5B4AD77C63, 0x9D6F9D6F9CE79CE3, 0x8BDBACE38BD79C5B,  // 0x0000B6B0 
	0xAD67AD679CE3DF7B, 0xBE6FADEBBE739DF3, 0xBEFFAEF7DFFF7CE7, 0xEFFF8CE7BEF3FFFF,  // 0x0000B6D0 
	0x9D6F7BDF7B5B7C63, 0x7BE37BE36AD38C63, 0x7BDF5AD77BDBCDEF, 0x6B57FF77AC63BD6B,  // 0x0000B6F0 
	0xADEF9D679D6B9DEF, 0x7C5F6BDB9D67BE73, 0xADEBBE6FAD6BAD6B, 0xBDF38C638C5FADEB,  // 0x0000B710 
	0xAD678CE78CE76BE3, 0x6BDF5B5B5AD76AD3, 0x7BDF8C636B578BDF, 0x7CE77C635AD74AD3,  // 0x0000B730 
	0x6B5B6BE36C636C63, 0x5B5B5AD75B576B57, 0x6B575AD37C675B5F, 0x7C634A535AD35AD3,  // 0x0000B750 
	0xAE6F9D676BDF4A53, 0x3A5339CF4AD7294B, 0x29CB4A573A533A53, 0x4AD729CF3A534AD7,  // 0x0000B770 
	0x4A53194F3A573A53, 0x5ACF49CB49CF4A4F, 0x39CB39CB39CF3A53, 0x39CF39CF29CF294B,  // 0x0000B790 
	0xAE739C5FACE34A4F, 0x4A5339CF29CF294B, 0x294B294B29CF29CF, 0x29CF29CF39CF29CF,  // 0x0000B7B0 
	0x294F294F294B194B, 0x39CB2947394B3947, 0x294739CF294729CF, 0x39CF294B194B29CF,  // 0x0000B7D0 
	0x8D6F9D6B9D6B5AD7, 0x49CB394B28C7194B, 0x18C7294B294718C7, 0x294B294B294B294B,  // 0x0000B7F0 
	0x29CF294B29CF29CF, 0x294B294B194B294F, 0x39CF294B2947394B, 0x28C728C7294B18C7,  // 0x0000B810 
	0x7C6BAE778CE75A53, 0x4A4F394B2947294F, 0x6BDE5B5A5AD66AD2, 0x7BDE8C626B568BDE,  // 0x0000B830 
	0x7CE67C625AD64AD2, 0x6B5A6BE26C626C62, 0x5B5A5AD65B566B56, 0x6B565AD27C665B5E,  // 0x0000B850 
	0x8D6F8CE7BD6B5AD3, 0x39CB2947394B194B, 0x3A5239CE4AD6294A, 0x29CA4A563A523A52,  // 0x0000B870 
	0x4AD629CE3A524AD6, 0x4A52194E3A563A52, 0x5ACE49CA49CE4A4E, 0x39CA39CA39CE3A52,  // 0x0000B890 
	0xADF36BDF6B5B6AD7, 0x39CB28C7394B18CB, 0x4A5239CE29CE294A, 0x294A294A29CE29CE,  // 0x0000B8B0 
	0x29CE29CE39CE29CE, 0x294E294E294A194A, 0x39CA2946394A3946, 0x294639CE294629CE,  // 0x0000B8D0 
	0xBE779D6B7C5F6B5B, 0x4A53294B18C729CF, 0x49CA394A28C6194A, 0x18C6294A294618C6,  // 0x0000B8F0 
	0x294A294A294A294A, 0x29CE294A29CE29CE, 0x294A294A194A294E, 0x39CE294A2946394A,  // 0x0000B910 
	0x8D6B7CE78CE34AD7, 0x4A4F394B28C729CF, 0x4A4E394A2946294E, 0xFFFEFFFEFFFEFFFE,  // 0x0000B930 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000B950 
	0x9D6F8D6F8CEB4AD3, 0x39CF294718C729CF, 0x39CA2946394A194A, 0xFFFEFFFEFFFEFFFE,  // 0x0000B970 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000B990 
	0x8CE77CE77C675B5B, 0x5B5718C718C7294B, 0x39CA28C6394A18CA, 0xFFFEFFFEFFFEFFFE,  // 0x0000B9B0 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000B9D0 
	0xACE39CE76BDB3A4F, 0x4A5339CB28C7294B, 0x4A52294A18C629CE, 0xFFFEFFFEFFFEFFFE,  // 0x0000B9F0 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BA10 
	0xBC5F8C5F5AD74A53, 0x4A534A4F394728C7, 0x4A4E394A28C629CE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BA30 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BA50 
	0xDD638C5F7C5F4AD7, 0x4AD739CB394B49CB, 0x39CE294618C629CE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BA70 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BA90 
	0xACE38BDB7BDB6BDF, 0x39D329CF394B18C7, 0x5B5618C618C6294A, 0xFFFEFFFEFFFEFFFE,  // 0x0000BAB0 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BAD0 
	0xBDEB8BDB7BDB7BDF, 0x4AD7194B294B39CB, 0x4A5239CA28C6294A, 0xFFFEFFFEFFFEFFFE,  // 0x0000BAF0 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BB10 
	0xCDEB8C637BD76BDF, 0x3A5729CF29472947, 0x4A524A4E394628C6, 0xFFFEFFFEFFFEFFFE,  // 0x0000BB30 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BB50 
	0xADEB9DF37BDF4ADB, 0x3A5739CF294B294B, 0x4AD639CA394A49CA, 0xFFFEFFFEFFFEFFFE,  // 0x0000BB70 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BB90 
	0xBE6F6C637BE35ADB, 0x294B29CF294B294B, 0x39D229CE394A18C6, 0xFFFEFFFEFFFEFFFE,  // 0x0000BBB0 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BBD0 
	0xADEB8CEB6B574AD7, 0x294B294B294B1947, 0x4AD6194A294A39CA, 0xFFFEFFFEFFFEFFFE,  // 0x0000BBF0 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BC10 
	0xAE736B5B6B574A53, 0x29CF294B28C729CF, 0x3A5629CE29462946, 0xFFFEFFFEFFFEFFFE,  // 0x0000BC30 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BC50 
	0x9D6F7B5B8B576B5B, 0x5B5B39D3294B29CF, 0x3A5639CE294A294A, 0xFFFEFFFEFFFEFFFE,  // 0x0000BC70 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BC90 
	0x8C639D6B8C634AD7, 0x5ADB39D3294B29CB, 0x294A29CE294A294A, 0xFFFEFFFEFFFEFFFE,  // 0x0000BCB0 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BCD0 
	0xAE6F9D6B7C634AD7, 0x4A5339CF294B294B, 0x294A294A294A1946, 0xFFFEFFFEFFFEFFFE,  // 0x0000BCF0 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BD10 
	0xAE738C635B574A53, 0x4AD74A4F394B29CF, 0x29CE294A28C629CE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BD30 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BD50 
	0x7CEBBDEB7B5B7B5B, 0x49CF294B2947194B, 0x5B5A39D2294A29CE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BD70 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BD90 
	0x7C6BAE779D6B4A4F, 0x49CF394B2947294F, 0x5ADA39D2294A29CA, 0xFFFEFFFEFFFEFFFE,  // 0x0000BDB0 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BDD0 
	0x9DF39D6BAD675A4F, 0x4A4F3947294729CF, 0x4A5239CE294A294A, 0xFFFEFFFEFFFEFFFE,  // 0x0000BDF0 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BE10 
	0x9DF36BDF7BDB6AD7, 0x2947394B394B194B, 0x4AD64A4E394A29CE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BE30 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BE50 
	0xBE777C636B575AD7, 0x49CF394B28C7294F, 0x49CE294A2946194A, 0xFFFEFFFEFFFEFFFE,  // 0x0000BE70 
	0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE, 0xFFFEFFFEFFFEFFFE,  // 0x0000BE90 
};

u64 _spot12_room_0_tex_0000BEB0[] = 
{
	0x59C97ACD82CD82CB, 0x59C782CB7A8B7249, 0x10418ACD59855185, 0x934D49856A496A07,  // 0x0000BEB0 
	0x61C76A0751857249, 0x7A8B724B724B7249, 0x828B6A097A8B7249, 0x69C77A098ACB7A49,  // 0x0000BED0 
	0x6A0B6A4B724B8B0F, 0x728D8B0F82CD934F, 0x9B91934F28C182CD, 0x620961C928C13903,  // 0x0000BEF0 
	0x4145390351856209, 0x51C7620959C961C7, 0x5187414559875987, 0x7249828B828B82CB,  // 0x0000BF10 
	0x9B4F9B918ACD82CD, 0xA391ABD1A393A38F, 0xABD1B415ABD1B455, 0xB413B413A34DABD1,  // 0x0000BF30 
	0xA38FA38F930D8ACB, 0x828B8B0D9B4FA391, 0x9B4FABD3A3D19B8F, 0x8ACB8ACB8ACB8ACB,  // 0x0000BF50 
	0xA3D3AC179B51B415, 0xB417AB91B3D3BC57, 0xABD1B413A34FBC55, 0xA391BC15BC57B3D1,  // 0x0000BF70 
	0xA38FA34FABD3AB91, 0xB3D1B3D1B3D1B3D3, 0xB3D1ABD1B3CFA38F, 0xA30DAB8FB3D1AB8D,  // 0x0000BF90 
	0x9B51A3D1934F830D, 0x92CBB415ABD192CB, 0xB413930DB3D3B413, 0xABD1930BBC13B413,  // 0x0000BFB0 
	0xABD1B3D1AB8FABCF, 0xA38F6A07A34DA30B, 0xABD1ABD15945A38D, 0x5983930B9B0D9B0B,  // 0x0000BFD0 
	0xA391ABD1A391B3D3, 0xB3D1A34D9B0DA34D, 0xA34F8ACB9B8FA38F, 0xBC97ABD1BC15BC55,  // 0x0000BFF0 
	0x9B0DB413930BAB8F, 0x8ACD8ACBBC5569C7, 0x9B4DA38DB3D1A38D, 0xA34DB3CFB3CFB38F,  // 0x0000C010 
	0x930D8B0F7A8B8B0D, 0x934D9B8FABD1ABD1, 0xABD19B8F9B8FB415, 0xBC57BCDDB4137A49,  // 0x0000C030 
	0xB411B411AB8DB3CF, 0x9B0D9B4D9B4D8ACB, 0x82C99B0D7A499B0B, 0x9B4B9B0BAB8FAB8F,  // 0x0000C050 
	0x828B930D8ACB828B, 0x930DABD1ABD1BC13, 0xB413BC99BC55BC97, 0xBC13B413B413AB8F,  // 0x0000C070 
	0x9B4FA38F9B4FAB8F, 0xA34D9B4D930BABD1, 0xA34DA38DB411A34D, 0xB3D1BC55B411B411,  // 0x0000C090 
	0x9B4DA34DA34DB455, 0xBC99ABD1A34DA38F, 0xBD5FBDE5B3CFAB8F, 0xBCDBBD61BD1DBD1D,  // 0x0000C0B0 
	0xBD61AC138289BC0F, 0x8247BC13BC97BDE5, 0xBDE3BDA1BD5DB413, 0xBCD9BD5FBD61BD61,  // 0x0000C0D0 
	0x61C7720930C33101, 0x598728C128C13903, 0x390328C139035185, 0x28C169C769C769C5,  // 0x0000C0F0 
	0x69C59B0BBC955985, 0x390169C551438A89, 0x8A898A8992898247, 0x39015943930B69C5,  // 0x0000C110 
	0x8B0D59C959C782CD, 0x82CB930BA34F7A49, 0x7A4959857A076A07, 0x724959857A498A89,  // 0x0000C130 
	0x7A47824982478247, 0x7207598549435143, 0x4101410161855983, 0x4143514341015983,  // 0x0000C150 
	0xBC97BC99AC13BC55, 0xBCD9BC55BC11BDA1, 0xBD1BBCD9BD1BBD5F, 0xBCD9B3D1BC55BCD9,  // 0x0000C170 
	0xBCD9BBCFBC11BC53, 0xBC11B3CF9ACBBC11, 0x9B0BBC11BC97BC95, 0xBC95BBCFB3CFBC51,  // 0x0000C190 
	0xBC97BCDBBCDBBCD9, 0xBC97B38FBC55BD1D, 0xBC97BC97B3CFBC97, 0xBCD9BCD9B3D1BC97,  // 0x0000C1B0 
	0xBD1DBC53BC13BC97, 0xB3D1B40FBBCFAB8D, 0xBC13BC95BCD7AB8D, 0xBC53BC95B38DBC11,  // 0x0000C1D0 
	0xBC55BC97BC57BC55, 0xB415BC997A47BC53, 0xABCFBC53BC51B411, 0xBC53BC55BC95B3CF,  // 0x0000C1F0 
	0x9309BC95B3CFBC11, 0xBC53AB8D7A07BC53, 0xBC51BCD7BC118A89, 0x9B4DAB8DAB8DAB8D,  // 0x0000C210 
	0xBC53BCD7BCD9B411, 0xBC97B3CFBC55BC95, 0xB413BC53BC95930B, 0xB3CFBC538ACBAB8D,  // 0x0000C230 
	0xBC0FBC53BC95BC11, 0xBC11BC0F92C9BC95, 0xBC93BC95BC93BC93, 0xBC93BD9FBC51BC95,  // 0x0000C250 
	0xBC97BC97BC55BC97, 0xBC55B3D1BCD7B413, 0xBC53BC97BC53BCD9, 0xBD1BBD1B92C9BC53,  // 0x0000C270 
	0xBC55BCD7BC93BC95, 0xBC53B40FB3CFB40F, 0xBCD7BC53BC53B3CF, 0xB411BC95BC55BD5B,  // 0x0000C290 
	0x8ACBBC57BC99A38F, 0xBC55BC97BC55BC95, 0xBC95BC55B411BC97, 0xB413BCD9B3CFBD19,  // 0x0000C2B0 
	0xBD1BBCD7BC13B3D1, 0xBC93BC95B38DBC95, 0xBCD7BCD5BC95BC11, 0xBCD7BC95BD19BCD9,  // 0x0000C2D0 
	0x61C751457A49930B, 0x8A898ACB92CBAB4D, 0xA34DA34DAB8FAB8F, 0x92CB92C9B3CFAB4B,  // 0x0000C2F0 
	0xAB4D9B0B92898A89, 0x7A07928972077A07, 0x7A077A057A078247, 0x82077A079B0BBC11,  // 0x0000C310 
	0xA391A38FABD1930D, 0x930D8B0DA38FABD1, 0x9B0D934FABD39B4F, 0xA38FAB4D28C1A38D,  // 0x0000C330 
	0xB3CFB38DB38DA34D, 0xB38FA38DA38DAB4D, 0x8A898ACBA34D930B, 0x8ACBA34DA38DA38F,  // 0x0000C350 
	0x930BAB8F8A898ACB, 0x828BB3D18ACB9B0B, 0x8A89930D92C9A38D, 0x8A89BC55ABCF9B0B,  // 0x0000C370 
	0x82478249B38D9B09, 0x9B0B82478A878A89, 0x8A877A05A34D8A89, 0x7A497A498289A34D,  // 0x0000C390 
	0x8ACBB413BC55ABD3, 0xB3D3ABD1A38FA38D, 0x8A8992CB9B4D9B4D, 0x9B0B9B0BAB4DABCF,  // 0x0000C3B0 
	0x38C17A078A898A89, 0x82498A8992CB8247, 0x71C56185720769C7, 0x7A079B0B92CB930B,  // 0x0000C3D0 
	0x828B934F930F930F, 0xA34FABD1B3D3ABD1, 0xABCFABD1B413B411, 0xB3D1B3CFAB8FA34B,  // 0x0000C3F0 
	0x514371C5B3CDAB8D, 0xB3CFB3CDBC51BC51, 0xB411ABCF930BA34D, 0xA34DAB8DB3CFA34D,  // 0x0000C410 
	0x930DABD18ACD8289, 0x9B4F9B4DB415A391, 0x9B8FA38FAC15B415, 0xABD1BC13B413ABCF,  // 0x0000C430 
	0xB3D1B411A34B8247, 0x92CB92CBA34DABD1, 0xA38D930D7A497207, 0x82497A497A478289,  // 0x0000C450 
	0x61C761C761C76A07, 0x728B7A898B0B8ACB, 0x7A496A0772497209, 0x72477A897A895985,  // 0x0000C470 
	0x51455143828969C7, 0x61C5618559852081, 0x5985598759855185, 0x5185514551855145,  // 0x0000C490 
	0xBC99BC15B3D1BBD1, 0xBC15BC55B4138AC9, 0xBC99BCD9BD1BBD1B, 0xBC95A34DA34FA34F,  // 0x0000C4B0 
	0x8249B3D1BC97BCD7, 0xBC95BC97A30BAB8D, 0xBD5FBD1DB457ABD1, 0xBC97BD1BBCD9BC99,  // 0x0000C4D0 
	0xBC13A30DBC97BC97, 0xB38FAB8DA34BBC53, 0xAB8F8247B411BD19, 0xBC95BC53BC518A47,  // 0x0000C4F0 
	0xB3CFB3CF8A89A34B, 0x20C392C97A47BC53, 0x51437A47BC95BC53, 0x930B92CB8A898249,  // 0x0000C510 
	0xBC13B3CF8A898A89, 0xAB8FBC11A30BA34D, 0xBC53BC55BC1192C9, 0x92CDB3D1AB8F79C3,  // 0x0000C530 
	0xAB8DBC11BC95B38F, 0x9B4DABCFB3CF9B0B, 0x7A07B411B413ABCF, 0xBC53AB8DA34B9B0B,  // 0x0000C550 
	0xBC53B3CF8A898247, 0x82897A078247A309, 0x92877A059B09A309, 0xBC93BC51A38D8A47,  // 0x0000C570 
	0x9B4DAB8FB411ABCF, 0xAB8D8A8792C9B453, 0xBC11BC53AB8DA34B, 0xB3CFAB8FAB8D9B0B,  // 0x0000C590 
	0xBCD9B455B411ABCF, 0xBC53BCD7BC53BD19, 0xBC55B3CFBC97BCDB, 0xB497B453B411B3D1,  // 0x0000C5B0 
	0xBCD7B40FBC13A34D, 0xBCD7BC95AB8FB40F, 0xBC53930BBC11BC53, 0xBC11B3D1BC53930B,  // 0x0000C5D0 
	0x51878ACB930D9B4D, 0x7A8961C572078289, 0x69C7618551437A07, 0x9AC992C97A057A47,  // 0x0000C5F0 
	0x7207414359856185, 0x598761C7930D930B, 0x82898ACB92CBBC53, 0x310372098B0D930D,  // 0x0000C610 
	0x61C75145390361C7, 0x8A8B828971C57A07, 0x618539036A0769C7, 0x69C769C730C13901,  // 0x0000C630 
	0x59C528C17A07930D, 0x72079B8F494582CB, 0x59857A4972093903, 0x4945598759856A09,  // 0x0000C650 
	0x518559877A0961C5, 0x51854945598759C7, 0x4985494359856185, 0x7A495987518561C7,  // 0x0000C670 
	0x9B4D7A498ACBA38F, 0x3103390349457209, 0x8ACB934F9B4F934F, 0x59C9620951454945,  // 0x0000C690 
};

u64 _spot12_room_0_tex_0000C6B0[] = 
{
	0x9929220012110107, 0x5544477753354465, 0x6303563007707764, 0x5677771222770019,  // 0x0000C6B0 
	0x7022111101737366, 0x5655721656066567, 0x1701220011812156, 0x3700112360000035,  // 0x0000C6D0 
	0x1363763076663670, 0x6600776556367701, 0x1203367771222201, 0x2111298170771106,  // 0x0000C6F0 
	0x7333633633370307, 0x6366354507337333, 0x0000335666019992, 0x2220112101117364,  // 0x0000C710 
	0x0711633635312007, 0x3711356711016073, 0x3037763100670011, 0x2222228107126303,  // 0x0000C730 
	0x1107377301220070, 0x2066610236337122, 0x2922212012210111, 0x1220111912222210,  // 0x0000C750 
	0x1730211222022211, 0x21445356BB773712, 0x9888822222120822, 0x1221207288229822,  // 0x0000C770 
	0x7122111212102192, 0x203475331B3A3337, 0x7777630210008192, 0x1102281292170198,  // 0x0000C790 
	0x7076633677702110, 0x0103351830136AA6, 0x337B1030001007B6, 0xD373736112B07019,  // 0x0000C7B0 
	0x2203366300071289, 0x8982221012228112, 0x1111292982221776, 0x6AAC663363660322,  // 0x0000C7D0 
	0x2913660122122018, 0x8282298888888222, 0x9120022221129211, 0x637736C363370100,  // 0x0000C7F0 
	0x1221228888911353, 0x1033106122282118, 0x8222128822898881, 0x2881610077028270,  // 0x0000C810 
	0x0000021111637010, 0x0310265600056371, 0x2001811120117288, 0x8822282889888882,  // 0x0000C830 
	0x0757377000137007, 0x7703645466773330, 0x0007070100116703, 0x0121881821375065,  // 0x0000C850 
	0x5116550010060777, 0x3707644465460733, 0x0373330030171201, 0x6373022063566763,  // 0x0000C870 
	0x1764556677167112, 0x7363545635007100, 0x0733300703703037, 0x0706074556536401,  // 0x0000C890 
	0x0364545546120012, 0x2100666321221211, 0x6331003177344444, 0x3716665465564431,  // 0x0000C8B0 
	0x5754533607112718, 0x2228213121022911, 0x5437665563644444, 0x5005553311055530,  // 0x0000C8D0 
	0x1135631021220228, 0x2213445544561210, 0x4560654601345466, 0x3775302166565300,  // 0x0000C8F0 
	0x36635073010B0270, 0x0605565455556544, 0x4457544543347391, 0x0003710344445377,  // 0x0000C910 
	0x6607676312333337, 0x6365445463656454, 0x4545444554444306, 0x6282921210122101,  // 0x0000C930 
	0x4607444606566367, 0x1754665675545555, 0x6545656654445633, 0x6373377288827366,  // 0x0000C950 
	0x4563289261111176, 0x0289161300544450, 0x3306550175545621, 0x75444454303A5444,  // 0x0000C970 
	0x0065011222212981, 0x7333012137445603, 0x306A3300007B6302, 0x6644445444554444,  // 0x0000C990 
	0x5737136504302888, 0x65444436543A6566, 0x6000337077765430, 0x34446B556365A555,  // 0x0000C9B0 
	0x503120445577227B, 0x5555454563656454, 0x4545444565444456, 0x7289161011105335,  // 0x0000C9D0 
	0x433555560005C545, 0x63744460A5545555, 0x6545656654444006, 0x5012228211122044,  // 0x0000C9F0 
	0x6360636555454444, 0x743182261007A550, 0x33B555A103555573, 0x70655A1063655544,  // 0x0000CA10 
	0x0635444444445444, 0x888292222921103A, 0x4444543331235503, 0x12744567123556AA,  // 0x0000CA30 
	0x3645573771222370, 0x1212212929223A44, 0x4443334454444433, 0x5555311056445407,  // 0x0000CA50 
	0x1553701112760000, 0x11100B0B73365444, 0x4337034544444636, 0x0636555454444501,  // 0x0000CA70 
	0x2012111298070770, 0x612210222133057B, 0x3534445444466063, 0x5444444444444312,  // 0x0000CA90 
};

u64 _spot12_room_0_tex_0000CAB0[] = 
{
	0x1084108410841084, 0x108418C6294A5294, 0x8C628C625294318C, 0x1084108410841084,  // 0x0000CAB0 
	0x1084108410841084, 0x18C639CE6B5AA528, 0x9CE794A45AD64A52, 0x2108108410841084,  // 0x0000CAD0 
	0x1084108410841084, 0x294A7BDEA528F7BD, 0xAD6BA52994A47BDE, 0x529418C610841084,  // 0x0000CAF0 
	0x108410841084294A, 0x5294739CD6B5F7BD, 0xA529AD6BB5AD8C62, 0x7BDE18C610841084,  // 0x0000CB10 
	0x1084108418C64A52, 0x739C9CE6C631E739, 0x94A5AD6BAD6B8C62, 0x1084108410841084,  // 0x0000CB30 
	0x1084108410842108, 0x6B5AA528B5ADAD6B, 0x39CF8C639CE7BDEE, 0x1084108410841084,  // 0x0000CB50 
	0x108410841084294A, 0x739CAD6AA52939CF, 0x318D4A538C63BDEE, 0x6318631821081084,  // 0x0000CB70 
	0x108410841084294A, 0x63189CE68C6339CF, 0x318D318D6B5B9CE6, 0x6B5A6B5A421018C6,  // 0x0000CB90 
	0x1084108410842108, 0x42108C62842139CF, 0x39CF39CF5295739C, 0x5294529439CE2108,  // 0x0000CBB0 
	0x1084108410841084, 0x18C67BDE8C6339CF, 0x39CF39CF52956B5A, 0x2108210818C61084,  // 0x0000CBD0 
	0x1084108410841084, 0x18C67BDE8C634211, 0x421139CF5AD76318, 0x18C618C610841084,  // 0x0000CBF0 
	0x1084108410841084, 0x10847BDE94A54211, 0x421142115AD76B5A, 0x18C618C610841084,  // 0x0000CC10 
	0x1084108410841084, 0x18C6631884214211, 0x4A53421152954A52, 0x18C6108410841084,  // 0x0000CC30 
	0x10841084108439CE, 0x63186B5A842139CF, 0x421139CF4A538C62, 0x5294210810841084,  // 0x0000CC50 
	0x18C618C6294A5AD6, 0x5AD694A4739D318D, 0x39CF294B4A537BDE, 0x4A524A5221082108,  // 0x0000CC70 
	0x294A294A529494A4, 0x94A4A5295AD7318D, 0x318D318D42114A53, 0x52945294318C318C,  // 0x0000CC90 
	0x6B5B63196AD76A95, 0x52955AD76B5B6319, 0x6B5B63196B5B7BDF, 0x8421739D63196319,  // 0x0000CCB0 
	0x318D318D318D39CF, 0x318D4211318D318D, 0x318D294B318D318D, 0x294B294B318D39CF,  // 0x0000CCD0 
	0x39CF39CF39CF39CF, 0x39CF318D318DBDEF, 0x8421294B2109294B, 0x39CF318D318D39CF,  // 0x0000CCF0 
	0x39CF39CF421139CF, 0x4211398D294B6319, 0x39CF1085294B318D, 0x39CF318D318D39CF,  // 0x0000CD10 
	0x514B498D398D39CF, 0x598D51CF4211318D, 0x2109294B39CF39CF, 0x421139CF318D318D,  // 0x0000CD30 
	0x2109210921092109, 0x294B39CF39CF294B, 0x294B39CF294B294B, 0x294B210921092109,  // 0x0000CD50 
	0x318C39CE2108318C, 0x294A108408430001, 0x000110851085318C, 0x294A18C6210818C6,  // 0x0000CD70 
	0x4A524A52294A39CE, 0x39CE2108294B18C7, 0x21092109108539CE, 0x39CE294A318C294A,  // 0x0000CD90 
	0x52945AD639CE4A52, 0x4A5239CE4A53294B, 0x318D39CF21094A52, 0x4A5239CE4A5239CE,  // 0x0000CDB0 
	0x5AD6631842105294, 0x529442105AD739CF, 0x42114211318D5294, 0x4A5239CE529439CE,  // 0x0000CDD0 
	0x5AD6631842105AD6, 0x5AD64A5263194211, 0x42114A5339CF5AD6, 0x529442105AD64210,  // 0x0000CDF0 
	0x5AD6631842105AD6, 0x5AD64A5263194211, 0x4A53529542115AD6, 0x529442105AD64210,  // 0x0000CE10 
	0x5AD6631842105AD6, 0x5AD64A5263194211, 0x4A53529542115AD6, 0x4A5239CE5AD64210,  // 0x0000CE30 
	0x5AD6631842105AD6, 0x52944210631939CF, 0x4A53529542115294, 0x421039CE5AD64210,  // 0x0000CE50 
	0x5AD65AD642105294, 0x52944210631939CF, 0x4A53529542115294, 0x421039CE52944210,  // 0x0000CE70 
	0x5AD65AD642105294, 0x529442105AD739CF, 0x4A53529542115294, 0x39CE39CE52944210,  // 0x0000CE90 
	0x5AD65AD64A525294, 0x529442105AD739CF, 0x4A53529542115294, 0x39CE39CE52944210,  // 0x0000CEB0 
	0x52945AD64A525294, 0x529442105AD739CF, 0x4A53529542115294, 0x39CE421052944210,  // 0x0000CED0 
	0x5AD65AD64A525294, 0x52944A525AD74211, 0x4A53529542115294, 0x39CE421052944210,  // 0x0000CEF0 
	0x5AD65AD64A525294, 0x52944A525AD74211, 0x5295529542115294, 0x39CE421052944210,  // 0x0000CF10 
	0x63196319739D8421, 0x7BDF6B5B6B5B6319, 0x6B5B63195AD75295, 0x6A956AD763196B5B,  // 0x0000CF30 
	0x39CF318D294B294B, 0x318D318D318D318D, 0x318D294B4211318D, 0x39CF318D318D318D,  // 0x0000CF50 
	0x39CF318D318D39CF, 0x39CF318D318DBDEF, 0x8421294B2109294B, 0x39CF39CF39CF39CF,  // 0x0000CF70 
	0x39CF318D318D39CF, 0x4211398D294B6319, 0x39CF1085294B318D, 0x39CF421139CF39CF,  // 0x0000CF90 
	0x318D318D39CF4211, 0x39CF39CF4211318D, 0x2109294B51CF598D, 0x39CF398D498D514B,  // 0x0000CFB0 
	0x210921092109294B, 0x294B294B39CF294B, 0x294B39CF39CF294B, 0x2109210921092109,  // 0x0000CFD0 
	0x529463184A525AD6, 0x5294421010850001, 0x0001000108434A52, 0x4210529452944210,  // 0x0000CFF0 
	0x529463184A525AD6, 0x52944210294B0843, 0x0843084308434A52, 0x4A52529452944210,  // 0x0000D010 
	0x52946B5A4A525294, 0x52944A524A5318C7, 0x18C7108510854A52, 0x42105AD652944210,  // 0x0000D030 
	0x5AD66B5A4A525294, 0x4A525AD65AD7294B, 0x2109318D21094A52, 0x42105AD652944210,  // 0x0000D050 
	0x5AD66B5A4A525294, 0x4A5252945AD7318D, 0x39CF39CF294B4210, 0x42105AD652944A52,  // 0x0000D070 
	0x5AD66B5A42105294, 0x4A525AD66B5B39CF, 0x42114A53318D4210, 0x42105AD652944A52,  // 0x0000D090 
	0x5AD66B5A42105AD6, 0x4A525AD66B5B4211, 0x42114A5339CF4210, 0x4A525AD652944A52,  // 0x0000D0B0 
	0x5AD66B5A4A526318, 0x4A525AD66B5B4211, 0x4A53529542114210, 0x4A525AD65AD64A52,  // 0x0000D0D0 
	0x5AD66B5A4A526318, 0x4A525AD66B5B4211, 0x4A5352954A534210, 0x52945AD65AD64A52,  // 0x0000D0F0 
	0x5AD66B5A4A526318, 0x4A525AD66B5B4211, 0x52955AD74A534A52, 0x52945AD65AD64A52,  // 0x0000D110 
	0x52946B5A52946318, 0x42105AD66B5B4211, 0x52955AD752954A52, 0x4A525AD65AD64210,  // 0x0000D130 
	0x4A526B5A52946318, 0x421052946B5B4A53, 0x52955AD752954210, 0x4A525AD65AD64210,  // 0x0000D150 
	0x42106B5A52945AD6, 0x421052946B5B4A53, 0x52955AD74A534210, 0x4A525AD65AD64210,  // 0x0000D170 
	0x5AD66B5A52946318, 0x421052946B5B4A53, 0x529563194A534210, 0x52945AD6529439CE,  // 0x0000D190 
	0x5AD66B5A52946318, 0x421052946B5B4A53, 0x529563194A534A52, 0x52945AD6529439CE,  // 0x0000D1B0 
	0x5AD66B5A52946318, 0x4A5252946B5B4A53, 0x529563194A534A52, 0x52945294529439CE,  // 0x0000D1D0 
	0x6B5B63196AD76A95, 0x52955AD76B5B6319, 0x6B5B63196B5B7BDF, 0x8421739D63196319,  // 0x0000D1F0 
	0x318D318D318D39CF, 0x318D4211318D318D, 0x318D294B318D318D, 0x294B294B318D39CF,  // 0x0000D210 
	0x39CF39CF39CF39CF, 0x39CF318D318DBDEF, 0x8421294B2109294B, 0x39CF318D318D39CF,  // 0x0000D230 
	0x39CF39CF421139CF, 0x4211398D294B6319, 0x39CF1085294B318D, 0x39CF318D318D39CF,  // 0x0000D250 
	0x514B498D398D39CF, 0x598D51CF4211318D, 0x2109294B39CF39CF, 0x421139CF318D318D,  // 0x0000D270 
	0x2109210921092109, 0x294B39CF39CF294B, 0x294B39CF294B294B, 0x294B210921092109,  // 0x0000D290 
};

u64 _spot12_room_0_tex_0000D2B0[] = 
{
	0x73575A9162D35A93, 0x6B15524F4A0F7315, 0x7B998C1D945F7B99, 0x4A0D398B41CD62D3,  // 0x0000D2B0 
	0x629362D35251420F, 0x4A5141CD41CB41CD, 0x4A0F41CD398D314B, 0x398B318B3149398B,  // 0x0000D2D0 
	0x314B290729092107, 0x294920C718C52909, 0x2949314B314B2909, 0x1085104310831885,  // 0x0000D2F0 
	0x1085108510851085, 0x1043084308430001, 0x0001000100010001, 0x0001000100010001,  // 0x0000D310 
	0x62D362935A915A91, 0x5251420D41CD7315, 0x8C1D83DB83997B57, 0x5A913149318B5A91,  // 0x0000D330 
	0x6B1573576B175A93, 0x4A4F4A0D520D524F, 0x5A4D4A0D318B318B, 0x318B3149314B3149,  // 0x0000D350 
	0x2949290921072107, 0x210718C518C52909, 0x318B294929092107, 0x18C5084310431085,  // 0x0000D370 
	0x188518C510851085, 0x0843084308430841, 0x0001000100010001, 0x0001000100010001,  // 0x0000D390 
	0x5A935A915A91524F, 0x62D34A0F524F6B15, 0x7B977B5773577357, 0x6B1541CD41CD5A91,  // 0x0000D3B0 
	0x62D36B1562D35291, 0x52914A4F41CD4A0B, 0x3947418941CB3149, 0x318B318B318B318B,  // 0x0000D3D0 
	0x29092907210720C7, 0x290718C518C52907, 0x2949290921071885, 0x1085108510851085,  // 0x0000D3F0 
	0x1085108510831043, 0x1043084308430841, 0x0001000100010001, 0x0001000100010001,  // 0x0000D410 
	0x5A935A91525141CD, 0x524F31494A0D5A91, 0x7355731573577357, 0x731539CB41CD524F,  // 0x0000D430 
	0x4A0F4A4F52514A0F, 0x52514A0F4A0F3989, 0x2907290731472107, 0x2107210721072907,  // 0x0000D450 
	0x29092107210718C5, 0x20C7108518C520C7, 0x210718C710851885, 0x1085108510851085,  // 0x0000D470 
	0x0843084308430843, 0x0843084308430001, 0x0001000100010001, 0x0001000100010001,  // 0x0000D490 
	0x524F524F41CD39CD, 0x39CD318B398B398B, 0x525162D35A9362D3, 0x524F318B398B39CD,  // 0x0000D4B0 
	0x2949398B398B3149, 0x29493149398B39CD, 0x318B398B39893989, 0x290720C721072949,  // 0x0000D4D0 
	0x2107210718C518C5, 0x18C5188510851085, 0x1085108510851085, 0x1085108310830843,  // 0x0000D4F0 
	0x0843084308430841, 0x0801000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000D510 
	0x398B39CD41CD3149, 0x294939CD4A0F4A0F, 0x524F5A91524F41CD, 0x41CD290931493149,  // 0x0000D530 
	0x2107294931492949, 0x290729493149398B, 0x39CD39CD318B41CB, 0x3989210718C520C7,  // 0x0000D550 
	0x18851885188518C5, 0x18C718C718C718C5, 0x10851085188518C5, 0x18C5084308430843,  // 0x0000D570 
	0x0841084308430843, 0x0841000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000D590 
	0x4A0D2949314B398B, 0x31492949398B398B, 0x398B294929493149, 0x290918C5188518C5,  // 0x0000D5B0 
	0x18C5188518C52949, 0x31492949210718C5, 0x2107398B318B20C5, 0x1885188518C518C7,  // 0x0000D5D0 
	0x20C720C729092949, 0x2949210918C718C7, 0x210718C718C718C7, 0x1885108510850841,  // 0x0000D5F0 
	0x0801084308430843, 0x0843084100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000D610 
	0x6B1562D35A936B15, 0x6B1562D36B155A93, 0x525141CD41CD3149, 0x294939CB31493149,  // 0x0000D630 
	0x3149290729072949, 0x3149294929492907, 0x2907294929092107, 0x29092949314B3149,  // 0x0000D650 
	0x398B418B398B2909, 0x210718C5188518C7, 0x21072109210918C7, 0x18C718C718851083,  // 0x0000D670 
	0x0843084308431083, 0x1085084308010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000D690 
	0xAD259C5F8C1D7B57, 0x7B997B9983DB6B15, 0x731573155A912907, 0x4A0F6B156B156B15,  // 0x0000D6B0 
	0x6AD54A0F5A9162D5, 0x5A914A0F420D420D, 0x398B3149318B3149, 0x2949318B318B3149,  // 0x0000D6D0 
	0x318B294921072949, 0x2907290929092107, 0x20C718C720C718C7, 0x18C71085108518C5,  // 0x0000D6F0 
	0x1885108510851085, 0x1083084100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000D710 
	0x735762D34A0F4A0F, 0x524F524F52514A4F, 0x420D39CB29492107, 0x31494A0F4A0D4A0F,  // 0x0000D730 
	0x525131492909314B, 0x41CD420D420D41CD, 0x294920C731492907, 0x2909314B39CB398B,  // 0x0000D750 
	0x318B294931492107, 0x20C720C720C718C5, 0x18C5188518851885, 0x18C7188510851085,  // 0x0000D770 
	0x1085084310431043, 0x0843084108010801, 0x0001000100010001, 0x0001000100010001,  // 0x0000D790 
	0x2949318B525162D3, 0x6B1573576B156B15, 0x62D362D34A0F420D, 0x4A0D41CD318B2909,  // 0x0000D7B0 
	0x21071085188518C5, 0x20C7210720C718C5, 0x108520C73149398B, 0x318B318B398B3149,  // 0x0000D7D0 
	0x290718C521072909, 0x2909294929092107, 0x210720C7210718C5, 0x1085108510850843,  // 0x0000D7F0 
	0x0841000100010841, 0x0843084308430801, 0x0001000100010001, 0x0001000100010001,  // 0x0000D810 
	0x4A0F5A915A915A91, 0x52514A0F4A0F4A0F, 0x4A0D41CD41CD524F, 0x4A0F398B318B318B,  // 0x0000D830 
	0x2949188520C72107, 0x29492949290920C7, 0x20C718C518852107, 0x3149294920C718C7,  // 0x0000D850 
	0x2107290721072107, 0x20C718C518C518C5, 0x18C5188518851085, 0x1085104310831083,  // 0x0000D870 
	0x0843084108430843, 0x0843084308410001, 0x0001000100010001, 0x0001000100010001,  // 0x0000D890 
	0x6AD3524F524F5251, 0x41CD398B398B41CB, 0x49CB49CB41CB398B, 0x318B398B29492907,  // 0x0000D8B0 
	0x2907210720C72107, 0x2909210721072107, 0x21072107210720C7, 0x20C720C718C520C7,  // 0x0000D8D0 
	0x2949210720C72107, 0x18C5108510851083, 0x0843104308430843, 0x1085108510851083,  // 0x0000D8F0 
	0x1083108510830843, 0x0843080100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000D910 
	0x5A915A9162D35A91, 0x4A0F520D628F5A51, 0x5A916A916AD162D3, 0x6B1573576B156B15,  // 0x0000D930 
	0x6B1562D35A914A0F, 0x41CD2949290718C5, 0x2909314941CD41CD, 0x41CD398B318B2949,  // 0x0000D950 
	0x2909210729092107, 0x20C720C720C718C5, 0x1085188518C51085, 0x1085108310851085,  // 0x0000D970 
	0x1083104308430843, 0x0841000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000D990 
	0x524F4A0F41CD398B, 0x5A4F72D17B117311, 0x628F41CB5A917B99, 0x83DB7B997B997357,  // 0x0000D9B0 
	0x735762D35A914A0D, 0x3149210720C73149, 0x398B4A0F41CD41CD, 0x420F398B4A0F41CD,  // 0x0000D9D0 
	0x2107210720C72107, 0x210720C718C518C7, 0x18C7188518C718C5, 0x1085108510851085,  // 0x0000D9F0 
	0x1085108310830843, 0x0801000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000DA10 
	0x41CD4A0D5A9162D1, 0x520D6AD15A4D520B, 0x418931494A4F5A93, 0x5A916293735762D3,  // 0x0000DA30 
	0x52915AD362D3524F, 0x398B290720C741CD, 0x420D4A0F4A0F4A0F, 0x41CD2949398B3149,  // 0x0000DA50 
	0x20C72107290720C7, 0x20C720C7210718C7, 0x1885188510851085, 0x1085188518C51085,  // 0x0000DA70 
	0x1083108510850843, 0x0841000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000DA90 
	0x398B4A0F41CD4A0D, 0x73137B137313520F, 0x294929494A0D4A0F, 0x4A0D41CD4A0F4A0F,  // 0x0000DAB0 
	0x52515AD34A0F41CD, 0x4A0F398B314941CB, 0x39CB39CB41CD398B, 0x3149294929492949,  // 0x0000DAD0 
	0x20C720C520C518C5, 0x18C520C7210718C5, 0x1885108510851085, 0x1885108508430843,  // 0x0000DAF0 
	0x1083108508430843, 0x0843000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000DB10 
	0x1885294941CD6291, 0x62914A0D49CD418B, 0x418B398949CB418B, 0x2907210739CB4A4F,  // 0x0000DB30 
	0x5A914A0F41CD4A0F, 0x520D398B39CD398B, 0x3149314931493149, 0x290918C520C720C7,  // 0x0000DB50 
	0x1085188518851085, 0x18C5210718C520C5, 0x20C720C718C71885, 0x1085108510831083,  // 0x0000DB70 
	0x1083104308430843, 0x0841000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000DB90 
	0x20C7188520C7398B, 0x290720C729073149, 0x49CD520B49CB520D, 0x3989290729072949,  // 0x0000DBB0 
	0x2949294939CD41CD, 0x418B4A0D4A0D398B, 0x3149398B314B2949, 0x294918C720C72109,  // 0x0000DBD0 
	0x210718C710852107, 0x20C7188518851885, 0x18C520C718C51885, 0x1083104310850843,  // 0x0000DBF0 
	0x0843084308430843, 0x0801000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000DC10 
	0x398B314929493149, 0x39CB21073149314B, 0x398B5A0D6A8F72D1, 0x49CB210718C72107,  // 0x0000DC30 
	0x290720C7290741CD, 0x41CD41CD41CB41CB, 0x418B398B4A0F41CD, 0x398B29493149314B,  // 0x0000DC50 
	0x294920C7108518C5, 0x18C718C518C518C5, 0x18C518C510851043, 0x0843104310430843,  // 0x0000DC70 
	0x0843084308430843, 0x0843084100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000DC90 
	0x83D973576B177357, 0x8BDB420D21074A0D, 0x529162D36AD37313, 0x6B156B156B1562D3,  // 0x0000DCB0 
	0x62D352514A0F3189, 0x41CB4A0F4A0D520F, 0x4A0F41CD41CD3149, 0x2907210729492949,  // 0x0000DCD0 
	0x3149314929493149, 0x314B18C5104318C5, 0x18C720C720C720C7, 0x20C718C718C51085,  // 0x0000DCF0 
	0x1085108308430843, 0x0801084108010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000DD10 
	0x83DB7B997B997357, 0x5251398B2107524F, 0x6B1562D352515A93, 0x5251524F4A4F524F,  // 0x0000DD30 
	0x525152514A0F2909, 0x290741CD41CB41CB, 0x398921072949318B, 0x398B314929093149,  // 0x0000DD50 
	0x398B318B318B3149, 0x21071085104318C5, 0x210720C718C518C5, 0x1885108510851085,  // 0x0000DD70 
	0x1085108310430843, 0x0801084100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000DD90 
	0x41CD41CD41CD39CB, 0x398B314918C52107, 0x2949294929093149, 0x31492949318B2907,  // 0x0000DDB0 
	0x3149210710831083, 0x1083108518851083, 0x084318C521073989, 0x3949314931493149,  // 0x0000DDD0 
	0x18C518C518C518C5, 0x18C518C5188518C5, 0x18C518C518C71085, 0x0843084308430843,  // 0x0000DDF0 
	0x0843084100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000DE10 
	0x8BDB8C1B8BDB7B57, 0x62D3420D20C73149, 0x398B420D39CD4A0D, 0x629352514A0F2107,  // 0x0000DE30 
	0x2949398B398B398B, 0x29492909210718C7, 0x18C520C729492949, 0x31493989418B3149,  // 0x0000DE50 
	0x318B318B31493189, 0x314920C520C52107, 0x1885108510851085, 0x18C5188510850843,  // 0x0000DE70 
	0x0843084308430843, 0x0841000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000DE90 
	0x73156AD3524F398B, 0x398B314921072909, 0x2949398B318B398B, 0x398B318B294918C5,  // 0x0000DEB0 
	0x2107314B314B2949, 0x210718C510831085, 0x0843084321073147, 0x29073149418941CB,  // 0x0000DED0 
	0x418B394929492907, 0x20C718C520C520C7, 0x18C5108510831083, 0x1083104308430801,  // 0x0000DEF0 
	0x0841084308430841, 0x0801000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000DF10 
	0x5A91294929492949, 0x210720C718C518C5, 0x18C52949398B3149, 0x29072107188518C5,  // 0x0000DF30 
	0x20C72107210718C7, 0x18C51085108320C5, 0x31492949418B51CB, 0x41CB314939893147,  // 0x0000DF50 
	0x2107210731492107, 0x18C518C520C520C7, 0x20C7108310830843, 0x0843084308430843,  // 0x0000DF70 
	0x0843084308430841, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000DF90 
	0x83D9318B2949398B, 0x39CD4A0F5A914A0F, 0x4A0F5A9162D35A91, 0x4A0D3149398B3989,  // 0x0000DFB0 
	0x3989524F5A915251, 0x4A0F39CD41CD4A0D, 0x398B41CB5A0D520D, 0x41CB398B41CB3149,  // 0x0000DFD0 
	0x3149314929072907, 0x2907314729072907, 0x20C718C520C718C5, 0x1085108310851083,  // 0x0000DFF0 
	0x1083104310430843, 0x0843084100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000E010 
	0x7357398B314939CB, 0x4A0F4A0F524F5A91, 0x5A9141CD4A0F4A0F, 0x4A0F4A0D520D4A0D,  // 0x0000E030 
	0x4A0D4A0D5A914A4F, 0x4A0F52515A51524F, 0x520D524F4A0D41CB, 0x4A0D41CB398B398B,  // 0x0000E050 
	0x3149210720C53149, 0x3107290729072907, 0x20C7188518C51885, 0x1885108310431043,  // 0x0000E070 
	0x0843104310831043, 0x1043084308010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000E090 
	0x5251294920C7398B, 0x41CD39CB398B398B, 0x41CD52514A0F420D, 0x524D5A4F72CF6A8F,  // 0x0000E0B0 
	0x520B4A0D4A0F41CD, 0x41CD524F6ACF5A4D, 0x398D41CD4A0D41CD, 0x41CD39CD318B2949,  // 0x0000E0D0 
	0x2107188520C52907, 0x31472907290718C5, 0x188518C518C51085, 0x1085108310430843,  // 0x0000E0F0 
	0x0843084308430843, 0x0841084108410001, 0x0001000100010001, 0x0001000100010001,  // 0x0000E110 
	0x6B1521073149398B, 0x398B2107314B4A0D, 0x5A91420D41CD39CD, 0x41CB398951C95A0B,  // 0x0000E130 
	0x41CB398B41CB41CB, 0x49CB5A0B520B624B, 0x5A4D4A0D398B2107, 0x2107210720C72907,  // 0x0000E150 
	0x29491083188518C5, 0x18C51885108518C5, 0x20C7188510851083, 0x1083108308430843,  // 0x0000E170 
	0x0843084308430843, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000E190 
	0x525120C721072909, 0x21072107398B39CB, 0x420D398B29492909, 0x2949294929072907,  // 0x0000E1B0 
	0x2107394931472907, 0x394749CB49CB41CB, 0x41CB398929072107, 0x290920C720C720C7,  // 0x0000E1D0 
	0x2107084310431083, 0x1043104310851085, 0x1885108308430843, 0x0843084308010001,  // 0x0000E1F0 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000E210 
	0x294918C5188518C7, 0x2907290921072909, 0x2909210729072909, 0x290720C720C72907,  // 0x0000E230 
	0x20C7314931493989, 0x41CB314918831085, 0x1083108310831085, 0x10831083188518C5,  // 0x0000E250 
	0x1085084308430843, 0x1043108308431043, 0x1043084308430843, 0x0843084100010001,  // 0x0000E270 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000E290 
};

u64 _spot12_room_0_tex_0000E2B0[] = 
{
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000E2B0 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000E2D0 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000E2F0 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000E310 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000E330 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000E350 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000E370 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100010001,  // 0x0000E390 
	0x0843084108410841, 0x0801084108410801, 0x0001080108410841, 0x0841084108410841,  // 0x0000E3B0 
	0x0801084108410841, 0x0841084108410801, 0x0841084108430843, 0x0801000108410843,  // 0x0000E3D0 
	0x1043104310431043, 0x0843084308430841, 0x0841084310430843, 0x1043104308431043,  // 0x0000E3F0 
	0x1043104310431043, 0x0843084308430843, 0x0843084310431043, 0x0843084308430843,  // 0x0000E410 
	0x1083108510831083, 0x1083108308430843, 0x0843108310831083, 0x1083108510831083,  // 0x0000E430 
	0x1083108310831083, 0x1085108310831083, 0x1083108310851083, 0x1043104310831083,  // 0x0000E450 
	0x18C518C518851885, 0x1085108310831083, 0x0843108318C51885, 0x18C518C5188518C5,  // 0x0000E470 
	0x188518C518C518C5, 0x18C518C518C518C5, 0x1885188518851885, 0x1085188518851885,  // 0x0000E490 
	0x1083108510851083, 0x1083104308430843, 0x0843188520C520C5, 0x20C520C520C52107,  // 0x0000E4B0 
	0x21072107210720C7, 0x210720C7210720C7, 0x18C520C518C518C5, 0x18C518C518C518C5,  // 0x0000E4D0 
	0x18C520C718C518C5, 0x18C518C518851885, 0x188518C521072907, 0x2907290729072907,  // 0x0000E4F0 
	0x2907290729072107, 0x29072907210720C7, 0x20C5210718C518C5, 0x20C520C520C520C5,  // 0x0000E510 
	0x2107290720C72107, 0x20C520C720C518C5, 0x18C520C721072907, 0x2907314929072907,  // 0x0000E530 
	0x2907290729072907, 0x2107210729072907, 0x2907290729072907, 0x2947290729072907,  // 0x0000E550 
	0x3149294729072907, 0x2107290729072907, 0x210720C729073149, 0x2907294729072907,  // 0x0000E570 
	0x2107210729492947, 0x2907294731493149, 0x2907314931492947, 0x3149314929072907,  // 0x0000E590 
	0x2907314921072907, 0x2107314931492907, 0x2107210729073147, 0x3989398931493189,  // 0x0000E5B0 
	0x3149314931493149, 0x3189398B39893149, 0x3149318931493149, 0x3147314929492907,  // 0x0000E5D0 
	0x398B294729472907, 0x2907210721072107, 0x2107290721073147, 0x3989398939893149,  // 0x0000E5F0 
	0x31493949398B398B, 0x3149398939893189, 0x398B318931493189, 0x3149314931892907,  // 0x0000E610 
	0x41CB314931493189, 0x31493149398B2907, 0x2907314929072907, 0x21073149398B398B,  // 0x0000E630 
	0x2947398931493149, 0x3149398939893149, 0x3989398B31493189, 0x3989398939892949,  // 0x0000E650 
	0x41CB4A0D398B41CD, 0x398B3149314939CB, 0x290720C718C72907, 0x2107314920C720C7,  // 0x0000E670 
	0x3149188529072907, 0x290720C721073149, 0x3989398929493149, 0x3989398931492907,  // 0x0000E690 
	0x524F520D520D41CD, 0x41CB41CB41CB49CD, 0x18C731494A0D4A0D, 0x4A0D4A0D4A0D41CB,  // 0x0000E6B0 
	0x2107314939893149, 0x41CB398B3989398B, 0x420D398B41CD398B, 0x4A0D4A0D41CB20C7,  // 0x0000E6D0 
	0x524F524F4A0D49CD, 0x41CB41CB520D520D, 0x398B524F4A0D520D, 0x4A0D4A0D41CB3149,  // 0x0000E6F0 
	0x20C7210739893989, 0x41CD4A0D398B41CB, 0x4A0D4A0D41CB4A0D, 0x524F524F520F3149,  // 0x0000E710 
	0x520D4A0D5A4F520D, 0x398B520D629162D3, 0x41CB4A0D5A4F5A4F, 0x524F524F524F318B,  // 0x0000E730 
	0x20C731494A0D5A4F, 0x520D5A4F524F4A0D, 0x420D41CD41CD41CD, 0x4A0D4A0D4A0D3149,  // 0x0000E750 
	0x520D5A4F4A0D5A4F, 0x5A4F5A4F62916AD3, 0x39894A0D62916291, 0x5A8F5A91524F4A0D,  // 0x0000E770 
	0x290741CD524D520D, 0x5A8F5A915A915A4F, 0x520D524F4A0D4A0D, 0x5A8F5A4F5A9141CB,  // 0x0000E790 
	0x4A0D5A4F5A4F5A8F, 0x520D524D6AD36AD3, 0x418B524F62916291, 0x524F5A4F62915A8F,  // 0x0000E7B0 
	0x41CB524F5A916291, 0x6AD362915A8F5A8F, 0x520D524F5A91524F, 0x524D62915A4F398B,  // 0x0000E7D0 
	0x4A0F5A4F62D15A4F, 0x4A0D520F62915A4F, 0x41CB520F524F628F, 0x62915A8F62916291,  // 0x0000E7F0 
	0x41CB5A4F5A8F6291, 0x6AD3731362915A4F, 0x5A8F5A9162916291, 0x62D16AD3629141CD,  // 0x0000E810 
	0x398B4A0D5A8F4A0D, 0x524D4A0D4A0D4A0D, 0x31494A0D520F6AD1, 0x6B136AD162916291,  // 0x0000E830 
	0x4A0D62917B556B13, 0x5A8F5A8F5A8F5A8F, 0x5A4F62D1629162D1, 0x62D162D1731341CD,  // 0x0000E850 
	0x21092949398B524F, 0x3149314939CB41CB, 0x41CB31493149520F, 0x5A915A914A0D318B,  // 0x0000E870 
	0x41CD629173557313, 0x628F5A8F5A8F5A4F, 0x5A915A8F5A8F5A8F, 0x62916AD173133149,  // 0x0000E890 
	0x735562D16AD37355, 0x62D36AD14A0D5A8F, 0x5A4F4A0D41CD5A4F, 0x62916AD373136AD3,  // 0x0000E8B0 
	0x318B6AD16AD362D1, 0x629162D15A916291, 0x524F5A91520F5A8F, 0x5A4F629162D15A4F,  // 0x0000E8D0 
	0x7B9783D97B558BD9, 0x73136AD1524F5A91, 0x6AD373135A4F6B13, 0x7313731383977B55,  // 0x0000E8F0 
	0x524F6AD162915A8F, 0x62D162D15A8F6AD1, 0x6AD36AD373136AD3, 0x73137B5583556291,  // 0x0000E910 
	0x8BD98BD78BD98397, 0x6AD162917B556B15, 0x73137B5573136AD1, 0x7313731373557B97,  // 0x0000E930 
	0x4A0D6AD36AD36AD3, 0x731383557B557313, 0x7313629172D37B53, 0x8B977B557B557B55,  // 0x0000E950 
	0x941B93D9941B8BD9, 0x7B55731373557B55, 0x7313731373137313, 0x73137B5583978397,  // 0x0000E970 
	0x62D173137B557355, 0x73137B5573136AD3, 0x731373157B557B53, 0x7B558BD793D97313,  // 0x0000E990 
	0x8BD98355A49D9419, 0x93D98BD762D16AD3, 0x8395839583977B57, 0x83977B557B558355,  // 0x0000E9B0 
	0x524F7B558BD78BD7, 0x83978BD983978397, 0x93D99C5B9C5B93D9, 0x83979C5B93D99C1B,  // 0x0000E9D0 
	0x83978395A49DA49F, 0x9C5B941983978397, 0x941993D9941B93D9, 0x93D98BD993D78B97,  // 0x0000E9F0 
	0x4A0F5A916AD17B55, 0x7B95839783978397, 0x8BD993D993D993D7, 0xA45B9C1BA45DA49D,  // 0x0000EA10 
	0x6AD383959C5D9C5D, 0x9419839773137313, 0x7B5583978BD78395, 0x8BD7839783978397,  // 0x0000EA30 
	0x629162D15A8F5A4F, 0x6AD373138B978BD7, 0x8C198BD9AC9F9C19, 0xA45BAC9DA45BA45B,  // 0x0000EA50 
	0x420D4A0F6AD35A91, 0x5A91524F41CD4A0F, 0x524F41CD5A914A0F, 0x62915A8F4A0F5A4F,  // 0x0000EA70 
	0x62914A0D524F39CD, 0x4A0D41CD4A0F5A91, 0x62D16AD36B135A91, 0x731583977B554A0F,  // 0x0000EA90 
};

u64 _spot12_room_0_tex_0000EAB0[] = 
{
	0x8351AC99BD1D9C17, 0x9C157B0D41836249, 0x7B0F6ACD7B118353, 0x83518B918B937B4F,  // 0x0000EAB0 
	0x7B4F7B0F7B0D6ACB, 0x628B730D834F93D1, 0xA455BCD9BCD9C51B, 0xB4D9BCD9BCD9B4D9,  // 0x0000EAD0 
	0x7B0F8B95BCDDAC9B, 0xAC596A8B41833941, 0x51C75A495A49730F, 0x7B4F93D58BD38B93,  // 0x0000EAF0 
	0x7B4F6A8B6A8B730D, 0x7B4F8B9193D3A455, 0xA455AC97AC97B4D7, 0xB4D9B4D9AC97B499,  // 0x0000EB10 
	0x8351B4DBBCDBBD1F, 0xA457624920813101, 0x394349C55207628B, 0x730D7B4F7B4F7B0F,  // 0x0000EB30 
	0x7B4F7B0F7B4F834F, 0x8B9193D193D39C13, 0xA415A415AC97B4D9, 0xB4D9B4D9A4559C13,  // 0x0000EB50 
	0x8BD3B4DBA45793D3, 0x7ACD5A0731013101, 0x3943418549C55A49, 0x6249628B6A8B6ACD,  // 0x0000EB70 
	0x72CD730D7B0F834F, 0x8B918B918B918BD1, 0x93D393D19C13A455, 0xB4DBA4559C139C13,  // 0x0000EB90 
	0x8B91B4DB9C1793D5, 0x7B11520728C128C1, 0x3103414349855207, 0x52075A495A496249,  // 0x0000EBB0 
	0x624B6A8B730D7B0D, 0x7B0F7B0F7B0D7B0F, 0x7B4F834F834F8B91, 0x9C1393D1834F8B91,  // 0x0000EBD0 
	0x93D3BD1DBCDDAC9B, 0x6ACD51C728C128C1, 0x28C3394339434185, 0x498549C749C751C7,  // 0x0000EBF0 
	0x5A095A49628B6ACB, 0x6A8B6ACB628B6ACB, 0x72CD6A896A8B7B0D, 0x730D72CB730B7B0D,  // 0x0000EC10 
	0x93D5BD1DBCDD9C17, 0x628B498528C12081, 0x28C128C331033103, 0x3103390339434185,  // 0x0000EC30 
	0x49C749C751C749C5, 0x49C551C551C551C5, 0x51C549C549C549C5, 0x4983498349C351C5,  // 0x0000EC50 
	0xAC9BCD61C51FB4DD, 0x5A09520728C128C1, 0x28C128C128C128C1, 0x30C3310331033943,  // 0x0000EC70 
	0x3945414541854143, 0x4183418541854183, 0x4143418341433943, 0x3943394339433901,  // 0x0000EC90 
	0xACDDCDA3C561AC9B, 0x72CF5A0728C128C1, 0x28C130C328C128C1, 0x28C3310331033103,  // 0x0000ECB0 
	0x3103394341454145, 0x3945414541453943, 0x3943394539453943, 0x3945394339434185,  // 0x0000ECD0 
	0xAC9BC561C51F93D7, 0x8B93498530C128C1, 0x31033103310328C3, 0x28C328C3310328C3,  // 0x0000ECF0 
	0x3103310339053945, 0x3945418541874185, 0x4145394541854187, 0x39453945414551C7,  // 0x0000ED10 
	0xC561BD1FBD1DAC59, 0x9393498531013101, 0x3103310331033103, 0x3103310331033945,  // 0x0000ED30 
	0x3945394539453945, 0x418749C749C951C9, 0x49C749C749C749C7, 0x49C752095A49628B,  // 0x0000ED50 
	0x93D59C19B4DDB4DD, 0x6ACD394330C13103, 0x3103394539453945, 0x4185394541874987,  // 0x0000ED70 
	0x4187498749C949C7, 0x49C952095A0B5A49, 0x5A4B5A4B5A095A4B, 0x624B628B72CF8351,  // 0x0000ED90 
	0x520B9BD7AC9B93D5, 0x4185310128C13103, 0x4145418749C749C9, 0x49C9520952095209,  // 0x0000EDB0 
	0x5A4B624B628D6A8D, 0x628B72CD730F6ACD, 0x7B0F72CD72CD730F, 0x730F730F7B518351,  // 0x0000EDD0 
	0x8391A419A4998391, 0x7B1128C131013945, 0x49C752095A4B520B, 0x5A4B628D6A8D6A8D,  // 0x0000EDF0 
	0x6ACD7B0F7B0F8351, 0x8B938BD38B93730F, 0x7B4F835183517B51, 0x8B9383917B4F93D3,  // 0x0000EE10 
	0x8BD3B4DB9C577B51, 0x628928C131014185, 0x52095A4B5A4B624B, 0x6ACD730F7B0F7B0F,  // 0x0000EE30 
	0x730F93D59C15AC99, 0xB4DBA4578391834F, 0x72CD8B918B91628B, 0x72CF7B0F7B0FA453,  // 0x0000EE50 
	0x8391AC999C17730F, 0x51C7414341855209, 0x628B6A8D6ACF7B51, 0x8B939C1583518393,  // 0x0000EE70 
	0xA457BD1DB4D9B4D9, 0xAC978BD3730D830F, 0x72CD7B0D83517B0D, 0x7B4F834F7B0D9C13,  // 0x0000EE90 
	0x93D3A4578BD57B11, 0x520772CF72CF8351, 0x7B117B518393AC9B, 0xB4DBA4599C598BD5,  // 0x0000EEB0 
	0xDE25F6E9E661F6A5, 0xD59FCD5FBCDBDDE3, 0xD5A3DDA1FF2BE623, 0xC55FEE65E623E623,  // 0x0000EED0 
	0x7B519C1793D57B11, 0x51C7520941855A09, 0x730F6ACD7B0F8B91, 0x8B936ACF93D58BD5,  // 0x0000EEF0 
	0x9C57B4DBCD9DCD9D, 0xAC978B8F9C55B4D9, 0xA455AC97B4D9AC97, 0xB4D9BD1BBD1BBD1B,  // 0x0000EF10 
	0x730FAC59A4598393, 0x6A8B49C539454185, 0x628B628B7B51730F, 0x7B519C178BD58393,  // 0x0000EF30 
	0x8393A499ACD99413, 0xA457AC97BD1DBCDB, 0xA455AC99B4DBBD1B, 0xB4D9A497C55DBD1B,  // 0x0000EF50 
	0x8B939C17A41993D5, 0x93D3418331433943, 0x418549C749C75A4B, 0x5A4B83537B5172CF,  // 0x0000EF70 
	0x9C17A4999C159C15, 0xAC99B4D9B4DBAC97, 0xA455AC99B4DBB4DB, 0xA4579C15A457AC97,  // 0x0000EF90 
	0x9415A459AC59AC9B, 0x8391418531013101, 0x3945418739454185, 0x49C75209624D5A4B,  // 0x0000EFB0 
	0x730F83937B518B91, 0x8351835193D3A457, 0x8B917B4F8BD38BD3, 0x7B4F8B9193D39C55,  // 0x0000EFD0 
	0x9C17BCDDA4599C17, 0x6ACD49C731013101, 0x3103394539453945, 0x4187418741874187,  // 0x0000EFF0 
	0x49C9628D628D628B, 0x5A4B6ACD730F7B4F, 0x7B0F72CD6ACD7B0F, 0x72CD7B0F7B4F7B51,  // 0x0000F010 
	0x9415AC9BA41993D5, 0x7B0F520731013101, 0x2901310339453105, 0x3105390539454187,  // 0x0000F030 
	0x418749C949C74987, 0x51C951C95A095A49, 0x624B624B5A4B624B, 0x6A8D6A8D6A8D6A8B,  // 0x0000F050 
	0x8BD3AC99A459AC59, 0x8B935207310128C1, 0x28C128C128C328C3, 0x3103310339053945,  // 0x0000F070 
	0x3945414741874185, 0x4145414549C749C7, 0x5207520951C75209, 0x5A095A095A095A09,  // 0x0000F090 
	0x8BD393D58B93AC59, 0x8B91520720812081, 0x2081208120812081, 0x28C328C328C330C3,  // 0x0000F0B0 
	0x3103390331033103, 0x3103390339454145, 0x4185414539433945, 0x4145414541454145,  // 0x0000F0D0 
	0x7B51AC9993D7A459, 0x72CD3941188120C1, 0x28C328C3208128C1, 0x28C128C128C32081,  // 0x0000F0F0 
	0x28C128C128C128C1, 0x28C128C130C13103, 0x310328C130C130C1, 0x3101310131013103,  // 0x0000F110 
	0x6A8DB49BB4DDC55F, 0x72CD310120C12903, 0x310330C328C328C3, 0x28C33103310328C3,  // 0x0000F130 
	0x28C130C331033103, 0x3103394349854185, 0x4145414539454145, 0x3943414541454145,  // 0x0000F150 
	0x5A4B93D7B4DB93D5, 0x72CD28C339033945, 0x3945394539033945, 0x3945394541854185,  // 0x0000F170 
	0x4185418741854987, 0x51C75A096A8B628B, 0x6A8B6A8B628B628B, 0x6ACD628B628B628B,  // 0x0000F190 
	0x520BA459BD1DA459, 0x8393520749C74185, 0x4987498741855209, 0x5A49624B5A4B624B,  // 0x0000F1B0 
	0x628B628B628B6A8B, 0x72CD834F834F8B91, 0x8B9193D18BD193D3, 0x9C1593D393D393D3,  // 0x0000F1D0 
	0x628DAC99A4579C57, 0x8B9351C749C75209, 0x520952095A0972CF, 0x7B51835183918B93,  // 0x0000F1F0 
	0x8BD393D39C1393D3, 0x9C13A455A4559C15, 0xA455A455A497A457, 0xB499A457A457AC97,  // 0x0000F210 
	0x8B51AC998BD593D7, 0x5A4B51C75A09628B, 0x628D624B72CF730F, 0x835393D594159C15,  // 0x0000F230 
	0xA457B4DBA455A413, 0xAC97B497BD19A455, 0x93D1B497AC979415, 0xAC99BD5DB4DB9C57,  // 0x0000F250 
	0x72CD93D59C17A459, 0x72D17B0F72CD730F, 0x7B118B95A49BB4DF, 0xC561D5E5DE25C561,  // 0x0000F270 
	0xDDE5C51FD59FE5DF, 0xEE23FEE7EEA7DE21, 0xCD5DF6A5E623C55D, 0xEE23EE65EE25CD9F,  // 0x0000F290 
};

Vtx_t _spot12_room_0_vertices_0000F2B0[16] = 
{
	 { 958, 733, -1567, 0, 1045, -2090, 0, 84, 172, 255 }, // 0x0000F2B0
	 { 838, 733, -1567, 0, 3063, -2090, 0, 84, 172, 255 }, // 0x0000F2C0
	 { 838, 733, -1561, 0, 3063, -2203, 0, 120, 0, 255 }, // 0x0000F2D0
	 { 958, 733, -1561, 0, 1045, -2203, 0, 120, 0, 255 }, // 0x0000F2E0
	 { 958, 533, -1567, 0, 1045, 1682, 0, 0, 136, 176 }, // 0x0000F2F0
	 { 838, 533, -1567, 0, 3063, 1682, 0, 0, 136, 176 }, // 0x0000F300
	 { 691, 863, -1081, 0, 1043, 1277, 136, 0, 0, 50 }, // 0x0000F310
	 { 691, 863, -881, 0, 4095, 1277, 136, 0, 0, 50 }, // 0x0000F320
	 { 691, 1085, -881, 0, 4095, -3296, 172, 84, 0, 204 }, // 0x0000F330
	 { 691, 1085, -1081, 0, 1043, -3296, 172, 84, 0, 204 }, // 0x0000F340
	 { 697, 1085, -881, 0, 4095, -3420, 0, 120, 0, 255 }, // 0x0000F350
	 { 697, 1085, -1081, 0, 1043, -3420, 0, 120, 0, 255 }, // 0x0000F360
	 { 685, 863, -1059, 0, 1035, 431, 136, 0, 0, 50 }, // 0x0000F370
	 { 685, 863, -994, 0, 2033, 431, 136, 0, 0, 50 }, // 0x0000F380
	 { 685, 1085, -994, 0, 2033, -4142, 172, 84, 0, 204 }, // 0x0000F390
	 { 685, 1085, -1059, 0, 1035, -4142, 172, 84, 0, 204 }, // 0x0000F3A0
};

Vtx_t _spot12_room_0_vertices_0000F3B0[8] = 
{
	 { 838, 462, -1567, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F3B0
	 { 946, 462, -1528, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F3C0
	 { 887, 711, -1702, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F3D0
	 { 995, 711, -1663, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F3E0
	 { 568, 919, -824, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F3F0
	 { 675, 919, -785, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F400
	 { 617, 1167, -959, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F410
	 { 725, 1167, -920, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F420
};

Gfx _spot12_room_0_dlist_0000F430[] =
{
	gsDPPipeSync(), // 0x0000F430
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000F438
	gsSPVertex(_spot12_room_0_vertices_0000F3B0, 8, 0), // 0x0000F440
	gsSPCullDisplayList(0, 7), // 0x0000F448
	gsDPPipeSync(), // 0x0000F450
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000F458
	gsDPPipeSync(), // 0x0000F460
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000F468
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000F470
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_000105B8), // 0x0000F478
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x0000F480
	gsDPLoadSync(), // 0x0000F488
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x0000F490
	gsDPPipeSync(), // 0x0000F498
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x0000F4A0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x0000F4A8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x0000F4B0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x0000F4B8
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x0000F4C0
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x0000F4C8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 249), // 0x0000F4D0
	gsSPVertex(_spot12_room_0_vertices_0000F2B0, 16, 0), // 0x0000F4D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000F4E0
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0), // 0x0000F4E8
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x0000F4F0
	gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0), // 0x0000F4F8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x0000F500
	gsSPEndDisplayList(), // 0x0000F508
};

Vtx_t _spot12_room_0_vertices_0000F510[12] = 
{
	 { -1221, 563, -2928, 0, 148, 1856, 61, 166, 49, 50 }, // 0x0000F510
	 { -1043, 563, -3150, 0, 3959, 1859, 35, 172, 77, 50 }, // 0x0000F520
	 { -1039, 627, -3147, 0, 3959, 499, 92, 239, 74, 50 }, // 0x0000F530
	 { -1214, 627, -2923, 0, 148, 496, 92, 239, 74, 50 }, // 0x0000F540
	 { -1270, 563, -2968, 0, 185, 1139, 196, 166, 206, 50 }, // 0x0000F550
	 { -1092, 563, -3190, 0, 3939, 1143, 174, 171, 238, 50 }, // 0x0000F560
	 { -1043, 563, -3150, 0, 3939, 2051, 35, 172, 77, 50 }, // 0x0000F570
	 { -1221, 563, -2928, 0, 185, 2047, 61, 166, 49, 50 }, // 0x0000F580
	 { -1278, 627, -2973, 0, 148, 496, 165, 239, 181, 64 }, // 0x0000F590
	 { -1096, 627, -3193, 0, 3959, 499, 165, 239, 181, 64 }, // 0x0000F5A0
	 { -1092, 563, -3190, 0, 3959, 1859, 174, 171, 238, 50 }, // 0x0000F5B0
	 { -1270, 563, -2968, 0, 148, 1856, 196, 166, 206, 50 }, // 0x0000F5C0
};

Vtx_t _spot12_room_0_vertices_0000F5D0[15] = 
{
	 { -1027, 693, -3218, 0, 34, 19, 75, 0, 163, 255 }, // 0x0000F5D0
	 { -1027, 683, -3218, 0, 128, 476, 75, 0, 163, 255 }, // 0x0000F5E0
	 { -1034, 686, -3224, 0, 222, 19, 75, 0, 163, 255 }, // 0x0000F5F0
	 { -1027, 683, -3218, 0, 128, 476, 75, 0, 163, 255 }, // 0x0000F600
	 { -1031, 675, -3222, 0, 222, 19, 75, 0, 163, 255 }, // 0x0000F610
	 { -1034, 686, -3224, 0, 34, 19, 75, 0, 163, 255 }, // 0x0000F620
	 { -1027, 683, -3218, 0, 128, 476, 75, 0, 163, 255 }, // 0x0000F630
	 { -1022, 675, -3215, 0, 34, 19, 75, 0, 163, 255 }, // 0x0000F640
	 { -1031, 675, -3222, 0, 222, 19, 75, 0, 163, 255 }, // 0x0000F650
	 { -1027, 693, -3218, 0, 222, 19, 75, 0, 163, 255 }, // 0x0000F660
	 { -1019, 686, -3212, 0, 34, 19, 75, 0, 163, 255 }, // 0x0000F670
	 { -1027, 683, -3218, 0, 128, 476, 75, 0, 163, 255 }, // 0x0000F680
	 { -1019, 686, -3212, 0, 256, 24, 75, 0, 163, 255 }, // 0x0000F690
	 { -1022, 675, -3215, 0, 68, 24, 75, 0, 163, 255 }, // 0x0000F6A0
	 { -1027, 683, -3218, 0, 162, 481, 75, 0, 163, 255 }, // 0x0000F6B0
};

Vtx_t _spot12_room_0_vertices_0000F6C0[8] = 
{
	 { -1274, 514, -2982, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F6C0
	 { -1210, 514, -2928, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F6D0
	 { -1042, 577, -3258, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F6E0
	 { -978, 577, -3204, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F6F0
	 { -1287, 629, -2966, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F700
	 { -1223, 629, -2912, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F710
	 { -1055, 693, -3242, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F720
	 { -991, 693, -3188, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F730
};

Gfx _spot12_room_0_dlist_0000F740[] =
{
	gsDPPipeSync(), // 0x0000F740
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000F748
	gsSPVertex(_spot12_room_0_vertices_0000F6C0, 8, 0), // 0x0000F750
	gsSPCullDisplayList(0, 7), // 0x0000F758
	gsDPPipeSync(), // 0x0000F760
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000F768
	gsDPPipeSync(), // 0x0000F770
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000F778
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000F780
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000FDB8), // 0x0000F788
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 4, 0), // 0x0000F790
	gsDPLoadSync(), // 0x0000F798
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000F7A0
	gsDPPipeSync(), // 0x0000F7A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 2, 6, 0, 0, 4, 0), // 0x0000F7B0
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x0000F7B8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000F7C0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x0000F7C8
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x0000F7D0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000F7D8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000F7E0
	gsSPVertex(_spot12_room_0_vertices_0000F510, 12, 0), // 0x0000F7E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000F7F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000F7F8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x0000F800
	gsDPPipeSync(), // 0x0000F808
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000FD78), // 0x0000F810
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 3, 0, 0, 3, 0), // 0x0000F818
	gsDPLoadSync(), // 0x0000F820
	gsDPLoadBlock(7, 0, 0, 31, 2048), // 0x0000F828
	gsDPPipeSync(), // 0x0000F830
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 1, 0, 0, 0, 2, 3, 0, 0, 3, 0), // 0x0000F838
	gsDPSetTileSize(0, 0, 0, 28, 28), // 0x0000F840
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x0000F848
	gsDPSetPrimColor(0, 0, 0, 0, 0, 255), // 0x0000F850
	gsSPVertex(_spot12_room_0_vertices_0000F5D0, 15, 0), // 0x0000F858
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000F860
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x0000F868
	gsSP1Triangle(12, 13, 14, 0), // 0x0000F870
	gsSPEndDisplayList(), // 0x0000F878
};

Vtx_t _spot12_room_0_vertices_0000F880[17] = 
{
	 { -595, 333, -1820, 0, 3783, 3130, 0, 120, 0, 0 }, // 0x0000F880
	 { -656, 333, -1966, 0, 3002, 2759, 173, 86, 3, 255 }, // 0x0000F890
	 { -656, 333, -1783, 0, 4026, 2822, 191, 99, 17, 255 }, // 0x0000F8A0
	 { -613, 333, -1972, 0, 3006, 3082, 0, 120, 0, 0 }, // 0x0000F8B0
	 { -556, 333, -1792, 0, 4040, 3256, 0, 120, 0, 0 }, // 0x0000F8C0
	 { -618, 333, -1743, 0, 4147, 2997, 237, 109, 45, 255 }, // 0x0000F8D0
	 { -377, 333, -1743, 0, 4908, 4096, 238, 116, 25, 255 }, // 0x0000F8E0
	 { -432, 333, -1795, 0, 4622, 4096, 0, 120, 0, 0 }, // 0x0000F8F0
	 { -595, 333, -1820, 0, 3783, 3130, 0, 120, 0, 0 }, // 0x0000F900
	 { -393, 333, -1447, 0, 2844, 4096, 0, 120, 0, 0 }, // 0x0000F910
	 { -377, 333, -1503, 0, 2652, 4096, 246, 118, 243, 255 }, // 0x0000F920
	 { -622, 333, -1503, 0, 3510, 3142, 236, 109, 212, 255 }, // 0x0000F930
	 { -593, 333, -1407, 0, 3544, 3317, 0, 120, 0, 0 }, // 0x0000F940
	 { -657, 333, -1464, 0, 3633, 3005, 218, 112, 241, 255 }, // 0x0000F950
	 { -611, 333, -1355, 0, 3930, 3250, 0, 120, 0, 0 }, // 0x0000F960
	 { -659, 333, -681, 0, 6109, 2690, 158, 66, 240, 255 }, // 0x0000F970
	 { -617, 333, -782, 0, 5666, 2948, 0, 120, 0, 0 }, // 0x0000F980
};

Vtx_t _spot12_room_0_vertices_0000F990[8] = 
{
	 { -659, 333, -1972, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F990
	 { -377, 333, -1972, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F9A0
	 { -659, 333, -1972, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F9B0
	 { -377, 333, -1972, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F9C0
	 { -659, 333, -681, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F9D0
	 { -377, 333, -681, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F9E0
	 { -659, 333, -681, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000F9F0
	 { -377, 333, -681, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000FA00
};

Gfx _spot12_room_0_dlist_0000FA10[] =
{
	gsDPPipeSync(), // 0x0000FA10
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000FA18
	gsSPVertex(_spot12_room_0_vertices_0000F990, 8, 0), // 0x0000FA20
	gsSPCullDisplayList(0, 7), // 0x0000FA28
	gsDPPipeSync(), // 0x0000FA30
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000FA38
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x0000FA40
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000FA48
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot12_scene_tex_00008E78), // 0x0000FA50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 0, 5, 0), // 0x0000FA58
	gsDPLoadSync(), // 0x0000FA60
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x0000FA68
	gsDPPipeSync(), // 0x0000FA70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, 0, 0, 1, 7, 0, 0, 5, 0), // 0x0000FA78
	gsDPSetTileSize(0, 0, 0, 124, 508), // 0x0000FA80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot12_scene_tex_00006650), // 0x0000FA88
	gsDPTileSync(), // 0x0000FA90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000FA98
	gsDPLoadSync(), // 0x0000FAA0
	gsDPLoadTLUTCmd(7, 15), // 0x0000FAA8
	gsDPPipeSync(), // 0x0000FAB0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, SHADE, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000FAB8
	gsSPSetOtherMode(0xE2, 3, 29, 0x0C184DD8), // 0x0000FAC0
	gsSPGeometryMode(0xFF0D0000, 0x00000000), // 0x0000FAC8
	gsSPGeometryMode(0xFF000000, 0x00020400), // 0x0000FAD0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000FAD8
	gsSPVertex(_spot12_room_0_vertices_0000F880, 17, 0), // 0x0000FAE0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x0000FAE8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000FAF0
	gsSP2Triangles(2, 5, 4, 0, 2, 4, 8, 0), // 0x0000FAF8
	gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0), // 0x0000FB00
	gsSP2Triangles(12, 11, 13, 0, 12, 13, 14, 0), // 0x0000FB08
	gsSP2Triangles(13, 15, 16, 0, 13, 16, 14, 0), // 0x0000FB10
	gsSPEndDisplayList(), // 0x0000FB18
};

Vtx_t _spot12_room_0_vertices_0000FB20[14] = 
{
	 { 86, 437, -1094, 0, -1536, 498, 0, 0, 120, 255 }, // 0x0000FB20
	 { 86, 341, -1094, 0, 1536, 498, 0, 0, 120, 255 }, // 0x0000FB30
	 { 94, 333, -1094, 0, 1792, -23, 0, 0, 120, 255 }, // 0x0000FB40
	 { 94, 445, -1094, 0, -1792, -23, 0, 0, 120, 255 }, // 0x0000FB50
	 { 78, 445, -1094, 0, 439, -23, 0, 0, 120, 255 }, // 0x0000FB60
	 { 78, 333, -1094, 0, -73, -23, 0, 0, 120, 255 }, // 0x0000FB70
	 { 86, 341, -1094, 0, -37, 498, 0, 0, 120, 255 }, // 0x0000FB80
	 { 86, 437, -1094, 0, 402, 498, 0, 0, 120, 255 }, // 0x0000FB90
	 { 78, 445, -1094, 0, 0, -23, 0, 0, 120, 255 }, // 0x0000FBA0
	 { 86, 437, -1094, 0, 256, 498, 0, 0, 120, 255 }, // 0x0000FBB0
	 { 94, 445, -1094, 0, 512, -23, 0, 0, 120, 255 }, // 0x0000FBC0
	 { 86, 341, -1094, 0, 0, 498, 0, 0, 120, 255 }, // 0x0000FBD0
	 { 78, 333, -1094, 0, -256, -23, 0, 0, 120, 255 }, // 0x0000FBE0
	 { 94, 333, -1094, 0, 256, -23, 0, 0, 120, 255 }, // 0x0000FBF0
};

Vtx_t _spot12_room_0_vertices_0000FC00[8] = 
{
	 { 78, 333, -1094, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000FC00
	 { 94, 333, -1094, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000FC10
	 { 78, 445, -1094, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000FC20
	 { 94, 445, -1094, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000FC30
	 { 78, 333, -1094, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000FC40
	 { 94, 333, -1094, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000FC50
	 { 78, 445, -1094, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000FC60
	 { 94, 445, -1094, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000FC70
};

Gfx _spot12_room_0_dlist_0000FC80[] =
{
	gsDPPipeSync(), // 0x0000FC80
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000FC88
	gsSPVertex(_spot12_room_0_vertices_0000FC00, 8, 0), // 0x0000FC90
	gsSPCullDisplayList(0, 7), // 0x0000FC98
	gsDPPipeSync(), // 0x0000FCA0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000FCA8
	gsDPPipeSync(), // 0x0000FCB0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000FCB8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000FCC0
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot12_room_0_tex_0000FD78), // 0x0000FCC8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 3, 0, 0, 3, 0), // 0x0000FCD0
	gsDPLoadSync(), // 0x0000FCD8
	gsDPLoadBlock(7, 0, 0, 31, 2048), // 0x0000FCE0
	gsDPPipeSync(), // 0x0000FCE8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 1, 0, 0, 0, 2, 3, 0, 0, 3, 0), // 0x0000FCF0
	gsDPSetTileSize(0, 0, 0, 28, 28), // 0x0000FCF8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000FD00
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x0000FD08
	gsSPGeometryMode(0xFF0C0000, 0x00000000), // 0x0000FD10
	gsSPGeometryMode(0xFF000000, 0x00030400), // 0x0000FD18
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000FD20
	gsSPVertex(_spot12_room_0_vertices_0000FB20, 14, 0), // 0x0000FD28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000FD30
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000FD38
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0), // 0x0000FD40
	gsSPEndDisplayList(), // 0x0000FD48
};

static u8 unaccountedFD50[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xF4, 0x30, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xF7, 0x40, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xFA, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xFC, 0x80, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 _spot12_room_0_tex_0000FD78[] = 
{
	0x0000000000000000, 0x0202020202020202, 0x0404040404040404, 0x0606060606060606,  // 0x0000FD78 
	0x0909090909090909, 0x0B0B0B0B0B0B0B0B, 0x0D0D0D0D0D0D0D0D, 0x0F0F0F0F0F0F0F0F,  // 0x0000FD98 
};

u64 _spot12_room_0_tex_0000FDB8[] = 
{
	0x1084108410841084, 0x108418C6294A5294, 0x8C628C625294318C, 0x1084108410841084,  // 0x0000FDB8 
	0x1084108410841084, 0x18C639CE6B5AA528, 0x9CE794A45AD64A52, 0x2108108410841084,  // 0x0000FDD8 
	0x1084108410841084, 0x294A7BDEA528F7BD, 0xAD6BA52994A47BDE, 0x529418C610841084,  // 0x0000FDF8 
	0x108410841084294A, 0x5294739CD6B5F7BD, 0xA529AD6BB5AD8C62, 0x7BDE18C610841084,  // 0x0000FE18 
	0x1084108418C64A52, 0x739C9CE6C631E739, 0x94A5AD6BAD6B8C62, 0x1084108410841084,  // 0x0000FE38 
	0x1084108410842108, 0x6B5AA528B5ADAD6B, 0x39CF8C639CE7BDEE, 0x1084108410841084,  // 0x0000FE58 
	0x108410841084294A, 0x739CAD6AA52939CF, 0x318D4A538C63BDEE, 0x6318631821081084,  // 0x0000FE78 
	0x108410841084294A, 0x63189CE68C6339CF, 0x318D318D6B5B9CE6, 0x6B5A6B5A421018C6,  // 0x0000FE98 
	0x1084108410842108, 0x42108C62842139CF, 0x39CF39CF5295739C, 0x5294529439CE2108,  // 0x0000FEB8 
	0x1084108410841084, 0x18C67BDE8C6339CF, 0x39CF39CF52956B5A, 0x2108210818C61084,  // 0x0000FED8 
	0x1084108410841084, 0x18C67BDE8C634211, 0x421139CF5AD76318, 0x18C618C610841084,  // 0x0000FEF8 
	0x1084108410841084, 0x10847BDE94A54211, 0x421142115AD76B5A, 0x18C618C610841084,  // 0x0000FF18 
	0x1084108410841084, 0x18C6631884214211, 0x4A53421152954A52, 0x18C6108410841084,  // 0x0000FF38 
	0x10841084108439CE, 0x63186B5A842139CF, 0x421139CF4A538C62, 0x5294210810841084,  // 0x0000FF58 
	0x18C618C6294A5AD6, 0x5AD694A4739D318D, 0x39CF294B4A537BDE, 0x4A524A5221082108,  // 0x0000FF78 
	0x294A294A529494A4, 0x94A4A5295AD7318D, 0x318D318D42114A53, 0x52945294318C318C,  // 0x0000FF98 
	0x6B5B63196AD76A95, 0x52955AD76B5B6319, 0x6B5B63196B5B7BDF, 0x8421739D63196319,  // 0x0000FFB8 
	0x318D318D318D39CF, 0x318D4211318D318D, 0x318D294B318D318D, 0x294B294B318D39CF,  // 0x0000FFD8 
	0x39CF39CF39CF39CF, 0x39CF318D318DBDEF, 0x8421294B2109294B, 0x39CF318D318D39CF,  // 0x0000FFF8 
	0x39CF39CF421139CF, 0x4211398D294B6319, 0x39CF1085294B318D, 0x39CF318D318D39CF,  // 0x00010018 
	0x514B498D398D39CF, 0x598D51CF4211318D, 0x2109294B39CF39CF, 0x421139CF318D318D,  // 0x00010038 
	0x2109210921092109, 0x294B39CF39CF294B, 0x294B39CF294B294B, 0x294B210921092109,  // 0x00010058 
	0x318C39CE2108318C, 0x294A108408430001, 0x000110851085318C, 0x294A18C6210818C6,  // 0x00010078 
	0x4A524A52294A39CE, 0x39CE2108294B18C7, 0x21092109108539CE, 0x39CE294A318C294A,  // 0x00010098 
	0x52945AD639CE4A52, 0x4A5239CE4A53294B, 0x318D39CF21094A52, 0x4A5239CE4A5239CE,  // 0x000100B8 
	0x5AD6631842105294, 0x529442105AD739CF, 0x42114211318D5294, 0x4A5239CE529439CE,  // 0x000100D8 
	0x5AD6631842105AD6, 0x5AD64A5263194211, 0x42114A5339CF5AD6, 0x529442105AD64210,  // 0x000100F8 
	0x5AD6631842105AD6, 0x5AD64A5263194211, 0x4A53529542115AD6, 0x529442105AD64210,  // 0x00010118 
	0x5AD6631842105AD6, 0x5AD64A5263194211, 0x4A53529542115AD6, 0x4A5239CE5AD64210,  // 0x00010138 
	0x5AD6631842105AD6, 0x52944210631939CF, 0x4A53529542115294, 0x421039CE5AD64210,  // 0x00010158 
	0x5AD65AD642105294, 0x52944210631939CF, 0x4A53529542115294, 0x421039CE52944210,  // 0x00010178 
	0x5AD65AD642105294, 0x529442105AD739CF, 0x4A53529542115294, 0x39CE39CE52944210,  // 0x00010198 
	0x5AD65AD64A525294, 0x529442105AD739CF, 0x4A53529542115294, 0x39CE39CE52944210,  // 0x000101B8 
	0x52945AD64A525294, 0x529442105AD739CF, 0x4A53529542115294, 0x39CE421052944210,  // 0x000101D8 
	0x5AD65AD64A525294, 0x52944A525AD74211, 0x4A53529542115294, 0x39CE421052944210,  // 0x000101F8 
	0x5AD65AD64A525294, 0x52944A525AD74211, 0x5295529542115294, 0x39CE421052944210,  // 0x00010218 
	0x63196319739D8421, 0x7BDF6B5B6B5B6319, 0x6B5B63195AD75295, 0x6A956AD763196B5B,  // 0x00010238 
	0x39CF318D294B294B, 0x318D318D318D318D, 0x318D294B4211318D, 0x39CF318D318D318D,  // 0x00010258 
	0x39CF318D318D39CF, 0x39CF318D318DBDEF, 0x8421294B2109294B, 0x39CF39CF39CF39CF,  // 0x00010278 
	0x39CF318D318D39CF, 0x4211398D294B6319, 0x39CF1085294B318D, 0x39CF421139CF39CF,  // 0x00010298 
	0x318D318D39CF4211, 0x39CF39CF4211318D, 0x2109294B51CF598D, 0x39CF398D498D514B,  // 0x000102B8 
	0x210921092109294B, 0x294B294B39CF294B, 0x294B39CF39CF294B, 0x2109210921092109,  // 0x000102D8 
	0x529463184A525AD6, 0x5294421010850001, 0x0001000108434A52, 0x4210529452944210,  // 0x000102F8 
	0x529463184A525AD6, 0x52944210294B0843, 0x0843084308434A52, 0x4A52529452944210,  // 0x00010318 
	0x52946B5A4A525294, 0x52944A524A5318C7, 0x18C7108510854A52, 0x42105AD652944210,  // 0x00010338 
	0x5AD66B5A4A525294, 0x4A525AD65AD7294B, 0x2109318D21094A52, 0x42105AD652944210,  // 0x00010358 
	0x5AD66B5A4A525294, 0x4A5252945AD7318D, 0x39CF39CF294B4210, 0x42105AD652944A52,  // 0x00010378 
	0x5AD66B5A42105294, 0x4A525AD66B5B39CF, 0x42114A53318D4210, 0x42105AD652944A52,  // 0x00010398 
	0x5AD66B5A42105AD6, 0x4A525AD66B5B4211, 0x42114A5339CF4210, 0x4A525AD652944A52,  // 0x000103B8 
	0x5AD66B5A4A526318, 0x4A525AD66B5B4211, 0x4A53529542114210, 0x4A525AD65AD64A52,  // 0x000103D8 
	0x5AD66B5A4A526318, 0x4A525AD66B5B4211, 0x4A5352954A534210, 0x52945AD65AD64A52,  // 0x000103F8 
	0x5AD66B5A4A526318, 0x4A525AD66B5B4211, 0x52955AD74A534A52, 0x52945AD65AD64A52,  // 0x00010418 
	0x52946B5A52946318, 0x42105AD66B5B4211, 0x52955AD752954A52, 0x4A525AD65AD64210,  // 0x00010438 
	0x4A526B5A52946318, 0x421052946B5B4A53, 0x52955AD752954210, 0x4A525AD65AD64210,  // 0x00010458 
	0x42106B5A52945AD6, 0x421052946B5B4A53, 0x52955AD74A534210, 0x4A525AD65AD64210,  // 0x00010478 
	0x5AD66B5A52946318, 0x421052946B5B4A53, 0x529563194A534210, 0x52945AD6529439CE,  // 0x00010498 
	0x5AD66B5A52946318, 0x421052946B5B4A53, 0x529563194A534A52, 0x52945AD6529439CE,  // 0x000104B8 
	0x5AD66B5A52946318, 0x4A5252946B5B4A53, 0x529563194A534A52, 0x52945294529439CE,  // 0x000104D8 
	0x6B5B63196AD76A95, 0x52955AD76B5B6319, 0x6B5B63196B5B7BDF, 0x8421739D63196319,  // 0x000104F8 
	0x318D318D318D39CF, 0x318D4211318D318D, 0x318D294B318D318D, 0x294B294B318D39CF,  // 0x00010518 
	0x39CF39CF39CF39CF, 0x39CF318D318DBDEF, 0x8421294B2109294B, 0x39CF318D318D39CF,  // 0x00010538 
	0x39CF39CF421139CF, 0x4211398D294B6319, 0x39CF1085294B318D, 0x39CF318D318D39CF,  // 0x00010558 
	0x514B498D398D39CF, 0x598D51CF4211318D, 0x2109294B39CF39CF, 0x421139CF318D318D,  // 0x00010578 
	0x2109210921092109, 0x294B39CF39CF294B, 0x294B39CF294B294B, 0x294B210921092109,  // 0x00010598 
};

u64 _spot12_room_0_tex_000105B8[] = 
{
	0x62C662C662C662C6, 0x62C662C662C662C6, 0x7B8D7B8D5A455A87, 0x6ACB62C662C662C6,  // 0x000105B8 
	0x62C662C662C67349, 0x6B0962C783C97B87, 0x7B8D62C662C662C6, 0x62C662C662C662C6,  // 0x000105D8 
	0x62C662C662C662C6, 0x62C662C662C662C6, 0x62C662C65A4562C6, 0x62C662C662C662C6,  // 0x000105F8 
	0x62C663066B0662C6, 0x62C76B07940B8BC9, 0x73495A4762C662C6, 0x62C662C662C662C6,  // 0x00010618 
	0x62C662C662C662C6, 0x62C662C662C662C6, 0x734B62C65A4562C6, 0x62C66306630662C6,  // 0x00010638 
	0x62C662C662C66287, 0x6AC78349A44B9C0B, 0x520541C3520362C6, 0x62C662C662C662C6,  // 0x00010658 
	0x62C662C662C662C6, 0x62C662C673497307, 0x6B076B077B477B07, 0x72C56B066B067349,  // 0x00010678 
	0x62C662C6734762C7, 0x730793C9AC4D7285, 0x39435205628572C5, 0x834B62C662C662C6,  // 0x00010698 
	0x62C662C662C662C6, 0x62C662C673497307, 0x73077B497B478B89, 0x93C98B878B878B89,  // 0x000106B8 
	0x83477B477B4762C7, 0x62879BCBAC0D6A8B, 0x39835A4572C78B49, 0x830762C662C662C6,  // 0x000106D8 
	0x62C662C662C662C6, 0x62C662C662C662C6, 0x62C66A8562457287, 0x72C772C77AC78349,  // 0x000106F8 
	0x93C98B897B0762C7, 0x41C38307938D62C6, 0x41C3628783899C0B, 0x9BC99BCD62C662C6,  // 0x00010718 
	0x62C662C662C662C6, 0x62C662C662C66B06, 0x7B4B728551837287, 0x7287728772877287,  // 0x00010738 
	0x7AC76A8562856AC7, 0x5245520341833943, 0x3983520583C9A48B, 0xAC8D9389838B62C6,  // 0x00010758 
	0x62C662C662C662C6, 0x62C662C662C66B08, 0x838D628749C54145, 0x72877A877A877287,  // 0x00010778 
	0x5A0362C662C65203, 0x49C3418349C341C3, 0x5205418552056285, 0x72C77B8B734962C6,  // 0x00010798 
	0x62C662C662C662C6, 0x62C662C662C662C6, 0x4AC93A473A873145, 0x39435A476A876245,  // 0x000107B8 
	0x5A0562C662C63903, 0x28C15A454A055245, 0x62C56ACB62C662C6, 0x62C662C662C662C6,  // 0x000107D8 
	0x62C662C663066B06, 0x6B06630662C64285, 0x428742874A874A89, 0x42C932053A474983,  // 0x000107F8 
	0x51C3498131014141, 0x5A0573494A056AC7, 0x7307730962C662C6, 0x62C662C662C662C6,  // 0x00010818 
	0x62C663066B067348, 0x83CB6B066B0662C6, 0x5245420752C95289, 0x3A473A877BCF7A85,  // 0x00010838 
	0x7285620549C34983, 0x7285734962858389, 0x8BC97B4762C662C6, 0x62C662C662C662C6,  // 0x00010858 
	0x62C66B0673068BC9, 0x940B8BC99C4FA495, 0x62874A474A474A87, 0x31C54A897B4B8347,  // 0x00010878 
	0x7AC7624562456245, 0x51C36AC76AC79C0B, 0x9C0962C662C662C6, 0x62C662C662C662C6,  // 0x00010898 
	0x6B08838B7B077B49, 0x7B49838B9C0D9C11, 0x7B89734952073145, 0x28C1310139433985,  // 0x000108B8 
	0x3143728582C76205, 0x310339038B89AC4D, 0x82C562C662C662C6, 0x62C662C662C662C6,  // 0x000108D8 
	0x6B0662C67B4B49C5, 0x5245524562477309, 0x7B897B4772C75A45, 0x414341835A455A45,  // 0x000108F8 
	0x49C572C772C782C9, 0x62C628C372C7A3CB, 0x620762C662C662C6, 0x62C662C662C662C6,  // 0x00010918 
	0x62C662C6730962C7, 0x73496B4973496287, 0x83C97B4983498B89, 0x72C76B077B897B49,  // 0x00010938 
	0x7B497B49734993CD, 0x62C662C95A056A43, 0x62C662C662C662C6, 0x62C662C662C662C6,  // 0x00010958 
	0x62C67B4773076B07, 0x62C75AC773495A47, 0x734983C983899389, 0x9BCB8BC97B897B49,  // 0x00010978 
	0x8B8993897B477B8D, 0x62C67347628751C3, 0x4143624762C662C6, 0x62C662C662C662C6,  // 0x00010998 
	0x7B477B47730762C7, 0x5A85528539435205, 0x7349944B940B9C0B, 0xA3CB9BCB83C97307,  // 0x000109B8 
	0x8B899BC993896B07, 0x73897BC96B095A45, 0x59C35A037B4D62C6, 0x62C662C662C662C6,  // 0x000109D8 
	0x62C66B096AC75A85, 0x5A85394339436287, 0x62C77BCB8BCBAC8D, 0xAC4DAC0D93896AC7,  // 0x000109F8 
	0x8B89A40BA3CB9389, 0x7B497B897B897349, 0x72C783077B496B07, 0x7B4962C662C662C6,  // 0x00010A18 
	0x62C662C66B06624B, 0x51C941456B077349, 0x524549C57B898BC9, 0x83096A476A855245,  // 0x00010A38 
	0x62879389AC0D9C0B, 0x7B897B8973496B49, 0x7B4983C983C97B49, 0x7B477B4762C662C6,  // 0x00010A58 
	0x62C662C662C662C6, 0x62C662C65A857B89, 0x7B89310320813103, 0x2901290139435A47,  // 0x00010A78 
	0x5A8772C772877307, 0x7B897349630762C7, 0x62C783CB83CB7B89, 0x83498B8993C962C6,  // 0x00010A98 
	0x62C662C662C662C6, 0x62C662C55A8583C9, 0x840B520728C32901, 0x2901394162C662C6,  // 0x00010AB8 
	0x62C662C67B078389, 0x730762C75A875245, 0x4A0552078C4B8C0B, 0x940B9C0B934762C6,  // 0x00010AD8 
	0x62C662C662C662C6, 0x62C66AC57307940B, 0x940B628741433943, 0x41C35203624762C6,  // 0x00010AF8 
	0x62C6834B8B878349, 0x730762C7524541C5, 0x5245520752455205, 0x72C7AC8DA40BA3CB,  // 0x00010B18 
	0x62C662C662C662C6, 0x62C652077B47A44B, 0xA44B51C5418341C3, 0x62456AC57B0962C6,  // 0x00010B38 
	0x62C662C6418149C3, 0x5A45498331034183, 0x6B0762C762C67B4D, 0x6B076A858B07934B,  // 0x00010B58 
	0x62C662C662C662C6, 0x62C662C68B87B48D, 0x938B31035A095205, 0x834793898B8D62C6,  // 0x00010B78 
	0x62C662C639833101, 0x390128C128C15A87, 0x62C76B4762C662C6, 0x62C662C662C662C6,  // 0x00010B98 
	0x62C662C662C662C6, 0x62C662C67287AC4F, 0x6A4B208162C662C6, 0x8B47AC4D5A050041,  // 0x00010BB8 
	0x008110C3418551C3, 0x62055183310362C7, 0x52857B896B0562C6, 0x62C662C662C662C6,  // 0x00010BD8 
	0x62C662C662C662C6, 0x6B086B087B4B6A47, 0x390338C162C662C6, 0x9BC982C7288130C1,  // 0x00010BF8 
	0x390318C331457287, 0x7AC7414329036B07, 0x6AC78C0B734762C6, 0x62C662C662C662C6,  // 0x00010C18 
	0x62C662C662C662C6, 0x62C662C66AC95183, 0x414351C551C36247, 0x8B0938C130814903,  // 0x00010C38 
	0x61855A0729455207, 0x6A470881290362C7, 0x7B47A44B94095A49, 0x62C662C662C662C6,  // 0x00010C58 
	0x62C662C662C662C6, 0x62C67AC941833943, 0x3943498349C55205, 0x520530C130814903,  // 0x00010C78 
	0x61C57A496A473145, 0x498710C321036287, 0x93C9AC8D83090841, 0x62C662C662C662C6,  // 0x00010C98 
	0x62C662C662C662C6, 0x62C662874A0549C5, 0x3983414341C55205, 0x520749C541434103,  // 0x00010CB8 
	0x514369C5724759C5, 0x20C3210319036287, 0x9BCBAC4D51C70881, 0x398362C662C662C6,  // 0x00010CD8 
	0x62C662C662C662C6, 0x62C652054A034A05, 0x4A07394341834185, 0x49C5418539833983,  // 0x00010CF8 
	0x41C541C7394541C9, 0x31C7318729452905, 0x8B49830918C33145, 0x4A0462C662C662C6,  // 0x00010D18 
	0x62C662C662C662C6, 0x62C662C662C662C6, 0x4A07524752074983, 0x390318C118C12943,  // 0x00010D38 
	0x32053A473A073A07, 0x3A07424942093105, 0x414339015A865246, 0x62C662C662C662C6,  // 0x00010D58 
	0x62C662C662C662C6, 0x62C662C662C662C6, 0x4A03628773095207, 0x3985214321032985,  // 0x00010D78 
	0x42874AC94AC94287, 0x4249424942494A09, 0x184149C55AC65AC6, 0x62C662C662C662C6,  // 0x00010D98 
	0x62C662C662C662C6, 0x62C662C662C662C6, 0x31836AC96AC93185, 0x31C541C731C52903,  // 0x00010DB8 
	0x210339C54AC93185, 0x3A07428B428B520B, 0x208162C75AC662C6, 0x62C662C662C662C6,  // 0x00010DD8 
	0x62C662C662C662C6, 0x62C6630662C662C6, 0x298362874A072183, 0x32474A87634B7B8D,  // 0x00010DF8 
	0x62C662C662C61903, 0x3A094A8B42493945, 0x524562C762C662C6, 0x62C662C662C662C6,  // 0x00010E18 
	0x62C662C662C662C6, 0x62C66B0862C64B49, 0x4B094A8932053185, 0x42475B096B496B89,  // 0x00010E38 
	0x62C662C662C63985, 0x3A094A8B318728C1, 0x31416B0662C662C6, 0x62C662C662C662C6,  // 0x00010E58 
	0x62C662C662C662C6, 0x62C66306738B734D, 0x62C662C6310328C3, 0x398552C763097389,  // 0x00010E78 
	0x5B4962C67B897B89, 0x6B0B420949C57347, 0x6B07838B62C662C6, 0x62C662C662C662C6,  // 0x00010E98 
	0x62C662C662C662C6, 0x62C662C66306734B, 0x6B0662C64A0549C5, 0x29033185294552C9,  // 0x00010EB8 
	0x528762C77B497349, 0x7349520773898389, 0x7B497B07730662C6, 0x62C662C662C662C6,  // 0x00010ED8 
	0x62C662C662C66306, 0x630662C662C67349, 0x83CF7BCB7BC97BC9, 0x6B4952874A475AC9,  // 0x00010EF8 
	0x72C77B8973496307, 0x6B077349840B83C9, 0x7B4983498B897306, 0x62C662C662C662C6,  // 0x00010F18 
	0x62C662C663066B06, 0x630662C662C66B09, 0x6B0963075AC75AC7, 0x5AC752876B078B89,  // 0x00010F38 
	0x73076B0762C75A87, 0x52455A47840B8C0B, 0x8C0B93C993899389, 0x6B0662C662C662C6,  // 0x00010F58 
	0x62C662C66B067349, 0x6B89634D62C6838F, 0x528552854A054A45, 0x4205524583498B89,  // 0x00010F78 
	0x7B0762C54A054203, 0x418339434A0562C7, 0x944BA48DA40B9B89, 0x93CD62C662C662C6,  // 0x00010F98 
	0x62C662C663066347, 0x5B0742455287730D, 0x630B52855A875AC7, 0x5AC749C549C34985,  // 0x00010FB8 
	0x51C75A0739453945, 0x520562C75A875205, 0x734972C793899389, 0x730962C662C662C6,  // 0x00010FD8 
	0x62C663066B495307, 0x4A8742454A47630B, 0x83D15ACB4A473983, 0x314320C162C662C6,  // 0x00010FF8 
	0x62C662C662C662C6, 0x62C66B477BC94183, 0x28C16AC96B0B62C6, 0x62C662C662C662C6,  // 0x00011018 
	0x630663085B0752C7, 0x4A45424552874A89, 0x7B4F5A8B294520C3, 0x41C762C662C662C6,  // 0x00011038 
	0x62C662C662C662C6, 0x52436307840B6AC7, 0x000162C662C662C6, 0x62C662C662C662C6,  // 0x00011058 
	0x630663494AC54A45, 0x42454A4552C752CB, 0x424952895AC74205, 0x290362C662C662C6,  // 0x00011078 
	0x62C662C662C68BCF, 0x5A857349840B7B89, 0x20C162C662C662C6, 0x62C662C662C662C6,  // 0x00011098 
	0x630842854A454245, 0x4A4552C74A874207, 0x5B0D6BC96B8973C9, 0x6B4910C110C162C6,  // 0x000110B8 
	0x62C662C662C67B8B, 0x738973C973C973C9, 0x524562C662C662C6, 0x62C662C662C662C6,  // 0x000110D8 
	0x6B8D2983318339C5, 0x39C53A0518C12985, 0x740D7C0B73C97BCB, 0x840B4A0562C662C6,  // 0x000110F8 
	0x62C662C662C67BCD, 0x63076B496B896B49, 0x6B49634962C662C6, 0x62C662C662C662C6,  // 0x00011118 
	0x62C662C662C61901, 0x10C110C108C13A07, 0x740D740B7BC98C0B, 0x9C8D62C662C662C6,  // 0x00011138 
	0x62C662C662C66B4B, 0x5285524552454A05, 0x4A0542054A4562C6, 0x62C662C662C662C6,  // 0x00011158 
	0x62C662C662C62983, 0x4A07524931C56349, 0x73C97389738973C9, 0x9C4F62C67BCB52C5,  // 0x00011178 
	0x3A033A0762C662C6, 0x52455A855A875A87, 0x5A8752854A436B0D, 0x62C662C662C662C6,  // 0x00011198 
	0x62C662C652C96B09, 0x7B897B896B496349, 0x73497B497B497349, 0x6B496B8763894AC7,  // 0x000111B8 
	0x42453A0562C662C6, 0x52455AC75AC74A43, 0x314139C362C662C6, 0x62C662C662C662C6,  // 0x000111D8 
	0x62C66B068C0F8389, 0x734973496AC75AC7, 0x7BC983897B498349, 0x6B49528753074A45,  // 0x000111F8 
	0x42454A8752CB62C6, 0x528B3185398762C6, 0x62C662C662C662C6, 0x62C662C662C662C6,  // 0x00011218 
	0x6306838B7B877349, 0x6B4963074A0528C1, 0x840B83C97B498B89, 0x63493A054A874245,  // 0x00011238 
	0x424552C752C93A07, 0x52894A8762C662C6, 0x62C662C662C662C6, 0x62C662C662C662C6,  // 0x00011258 
	0x6B0683897B476AC7, 0x62C74A0539832903, 0x62C78C4B940B8BC9, 0x4A8731434A454245,  // 0x00011278 
	0x42434A855B0D4249, 0x63496B895B0562C6, 0x62C662C662C662C6, 0x62C662C662C662C6,  // 0x00011298 
	0x83498B897B476AC7, 0x52053983520541C5, 0x52456B49944B7BC9, 0x2943210331833145,  // 0x000112B8 
	0x520962C662C64A87, 0x7C0B73C97BC96B45, 0x62C662C662C662C6, 0x62C662C662C662C6,  // 0x000112D8 
	0x52C7528541C33943, 0x394339435A456B07, 0x5245310362C741C5, 0x394349C3414162C6,  // 0x000112F8 
	0x62C662C662C652C7, 0x6B897BC98C0B8BC7, 0x62C662C662C662C6, 0x62C662C662C662C6,  // 0x00011318 
	0x428531C318C11081, 0x108141836B077349, 0x7BC93143208149C5, 0x624962C662C662C6,  // 0x00011338 
	0x62C662C662C652C7, 0x73C983C99C4B9409, 0x62C662C662C662C6, 0x62C662C662C662C6,  // 0x00011358 
	0x31C1318141C762C6, 0x62C66AC952856B07, 0x83C96B0928C162C6, 0x62C662C662C662C6,  // 0x00011378 
	0x310151C36A894A07, 0x63077B899C0962C6, 0x6B08630662C662C6, 0x62C662C662C662C6,  // 0x00011398 
	0x62C662C662C662C6, 0x62C6734B5A857B89, 0x8C0B7B4952035A47, 0x62C662C628C128C1,  // 0x000113B8 
	0x5A0572C773076287, 0x418552059C0B940D, 0x838B734B62C662C6, 0x62C662C662C662C6,  // 0x000113D8 
	0x62C662C662C662C6, 0x6B08730B5A458BC9, 0x9C4B8389520362C6, 0x62C651C75A076A47,  // 0x000113F8 
	0x72C77B497B897B89, 0x62C7390341836AC7, 0x73076AC562C662C6, 0x62C662C662C662C6,  // 0x00011418 
	0x62C662C662C662C6, 0x630662C662459C0B, 0xA44B6A455A0362C6, 0x62C662C662C672D1,  // 0x00011438 
	0x7B49838973496B49, 0x6B4962C76B097B49, 0x7B498349834762C6, 0x62C662C662C662C6,  // 0x00011458 
	0x62C662C662C662C6, 0x62C662C672C98B07, 0x93494143620559C7, 0x20C1394341C351C7,  // 0x00011478 
	0x4985520549C541C5, 0x49C5524573898C0B, 0x83C9838993898B47, 0x62C662C662C662C6,  // 0x00011498 
	0x62C662C662C662C6, 0x62C6630663067285, 0x4143208162054143, 0x2081290162877309,  // 0x000114B8 
	0x6287498331033103, 0x41C54A0541C383CB, 0x83CB940B9C0B9BC9, 0xA40F62C662C662C6,  // 0x000114D8 
	0x62C662C662C662C6, 0x63066306734B6A49, 0x4185310118813101, 0x3103624D6B096B09,  // 0x000114F8 
	0x7B497309524562C7, 0x62875A8549C55205, 0x7349948DAC8BA40B, 0x9BC962C662C662C6,  // 0x00011518 
	0x62C662C662C662C6, 0x62C662C663086B08, 0x628B3103108120C1, 0x41835AC662C662C6,  // 0x00011538 
	0x62C662C672CB49C3, 0x6287734773496B09, 0x49C75A478B8B7289, 0x830D62C662C662C6,  // 0x00011558 
	0x62C662C662C662C6, 0x62C662C662C662C6, 0x6309624B20C13943, 0x418162C662C662C6,  // 0x00011578 
	0x62C662C662C662C6, 0x62875AC77B897B89, 0x6A8F49C762C662C6, 0x62C662C662C662C6,  // 0x00011598 
};

static u8 unaccounted115B8[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


