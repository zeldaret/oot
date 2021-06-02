#include <ultra64.h>
#include <z64.h>
#include "spot18_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "spot18_scene.h"



SCmdAltHeaders _spot18_room_0_set0000_cmd00 = { 0x18, 0, (u32)&_spot18_room_0_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _spot18_room_0_set0000_cmd01 = { 0x16, 0, { 0 }, 0x0A }; // 0x0008
SCmdRoomBehavior _spot18_room_0_set0000_cmd02 = { 0x08, 0x00, 0x00000004 }; // 0x0010
SCmdSkyboxDisables _spot18_room_0_set0000_cmd03 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0018
SCmdTimeSettings _spot18_room_0_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0020
SCmdMesh _spot18_room_0_set0000_cmd05 = { 0x0A, 0, (u32)&_spot18_room_0_meshHeader_00000390 }; // 0x0028
SCmdObjectList _spot18_room_0_set0000_cmd06 = { 0x0B, 0x07, (u32)_spot18_room_0_objectList_0000005C }; // 0x0030
SCmdActorList _spot18_room_0_set0000_cmd07 = { 0x01, 0x32, (u32)_spot18_room_0_actorList_0000006C }; // 0x0038
SCmdEndMarker _spot18_room_0_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _spot18_room_0_alternateHeaders_00000048[] = 
{
	0,
	(u32)&_spot18_room_0_set03C0_cmd00,
	0,
	(u32)&_spot18_room_0_set0730_cmd00,
	(u32)&_spot18_room_0_set0D10_cmd00,
};

s16 _spot18_room_0_objectList_0000005C[] = 
{
	OBJECT_SPOT18_OBJ,
	OBJECT_BOMBF,
	OBJECT_BOMBIWA,
	OBJECT_GS,
	OBJECT_BOX,
	OBJECT_KIBAKO2,
	OBJECT_ST,
};

ActorEntry _spot18_room_0_actorList_0000006C[50] = 
{
	{ ACTOR_EN_ISHI, -1479, 541, -794, 0, 0, 0, 0xFF01 }, //0x0000006C 
	{ ACTOR_EN_ISHI, -1478, 530, -855, 0, 0, 0, 0xFF01 }, //0x0000007C 
	{ ACTOR_EN_ISHI, -1474, 571, -624, 0, 0, 0, 0xFF01 }, //0x0000008C 
	{ ACTOR_EN_ISHI, -1471, 520, -993, 0, 0, 0, 0xFF01 }, //0x0000009C 
	{ ACTOR_EN_ISHI, -1467, 520, -1064, 0, 0, 0, 0xFF01 }, //0x000000AC 
	{ ACTOR_EN_ISHI, -1460, 520, -1121, 0, 0, 0, 0xFF01 }, //0x000000BC 
	{ ACTOR_EN_ISHI, -1451, 582, -567, 0, 0, 0, 0xFF01 }, //0x000000CC 
	{ ACTOR_EN_ISHI, -1448, 561, -672, 0, 0, 0, 0xFF01 }, //0x000000DC 
	{ ACTOR_EN_ISHI, -1440, 520, -1174, 0, 0, 0, 0xFF01 }, //0x000000EC 
	{ ACTOR_EN_ISHI, -1437, 520, -1342, 0, 0, 0, 0xFF01 }, //0x000000FC 
	{ ACTOR_EN_ISHI, -1424, 520, -1245, 0, 0, 0, 0xFF01 }, //0x0000010C 
	{ ACTOR_EN_ISHI, -1424, 574, -609, 0, 0, 0, 0xFF01 }, //0x0000011C 
	{ ACTOR_EN_ISHI, -1399, 520, -1300, 0, 0, 0, 0xFF01 }, //0x0000012C 
	{ ACTOR_EN_ISHI, -1394, 566, -654, 0, 0, 0, 0xFF01 }, //0x0000013C 
	{ ACTOR_EN_ISHI, -1343, 558, -698, 0, 0, 0, 0xFF01 }, //0x0000014C 
	{ ACTOR_EN_ISHI, -1319, 520, -1086, 0, 0, 0, 0xFF01 }, //0x0000015C 
	{ ACTOR_EN_ISHI, -1312, 520, -1039, 0, 0, 0, 0xFF01 }, //0x0000016C 
	{ ACTOR_EN_ISHI, -1306, 534, -837, 0, 0, 0, 0xFF01 }, //0x0000017C 
	{ ACTOR_EN_ISHI, -1279, 566, -656, 0, 0, 0, 0xFF01 }, //0x0000018C 
	{ ACTOR_EN_ISHI, -1255, 533, -840, 0, 0, 0, 0xFF01 }, //0x0000019C 
	{ ACTOR_EN_ISHI, -1246, 520, -1075, 0, 0, 0, 0xFF01 }, //0x000001AC 
	{ ACTOR_EN_ISHI, -1244, 576, -589, 0, 0, 0, 0xFF01 }, //0x000001BC 
	{ ACTOR_EN_ISHI, -1210, 531, -852, 0, 0, 0, 0xFF01 }, //0x000001CC 
	{ ACTOR_EN_ISHI, -1206, 571, -627, 0, 0, 0, 0xFF01 }, //0x000001DC 
	{ ACTOR_EN_ISHI, -1187, 523, -896, 0, 0, 0, 0xFF01 }, //0x000001EC 
	{ ACTOR_EN_ISHI, -1157, 520, -954, 0, 0, 0, 0xFF01 }, //0x000001FC 
	{ ACTOR_EN_ISHI, -1130, 520, -1137, 0, 0, 0, 0xFF01 }, //0x0000020C 
	{ ACTOR_EN_ISHI, -1120, 520, -1001, 0, 0, 0, 0xFF01 }, //0x0000021C 
	{ ACTOR_EN_BOX, -1508, 520, -1278, 0, -32768, 0, 0x5AC0 }, //0x0000022C 
	{ ACTOR_EN_BOX, -1197, 520, -1269, 0, -32768, 0, 0x5AA1 }, //0x0000023C 
	{ ACTOR_EN_BOX, -1310, 520, -1267, 0, -32768, 0, 0x5AA2 }, //0x0000024C 
	{ ACTOR_OBJ_BOMBIWA, -1342, 571, -628, 0, 0, 0, 0x0020 }, //0x0000025C 
	{ ACTOR_OBJ_BOMBIWA, -1456, 593, -501, 0, 0, 0, 0x0021 }, //0x0000026C 
	{ ACTOR_OBJ_BOMBIWA, -1233, 590, -511, 0, 0, 0, 0x0022 }, //0x0000027C 
	{ ACTOR_OBJ_BOMBIWA, -1137, 566, -657, 0, 0, 0, 0x0023 }, //0x0000028C 
	{ ACTOR_OBJ_BOMBIWA, -1124, 520, -913, 0, 0, 0, 0x0024 }, //0x0000029C 
	{ ACTOR_OBJ_BOMBIWA, -1326, 545, -771, 0, 0, 0, 0x0025 }, //0x000002AC 
	{ ACTOR_OBJ_BOMBIWA, -1469, 551, -737, 0, 0, 0, 0x0026 }, //0x000002BC 
	{ ACTOR_OBJ_BOMBIWA, -1476, 520, -921, 0, 0, 0, 0x0027 }, //0x000002CC 
	{ ACTOR_OBJ_BOMBIWA, -1391, 520, -1087, 0, 0, 0, 0x0028 }, //0x000002DC 
	{ ACTOR_OBJ_BOMBIWA, -1222, 520, -997, 0, 0, 0, 0x0029 }, //0x000002EC 
	{ ACTOR_OBJ_HAMISHI, -1541, 570, -631, 0, 0, 0, 0x002A }, //0x000002FC 
	{ ACTOR_OBJ_HAMISHI, -1536, 529, -861, 0, 0, 0, 0x002B }, //0x0000030C 
	{ ACTOR_OBJ_HAMISHI, -1536, 520, -1102, 0, 0, 0, 0x002C }, //0x0000031C 
	{ ACTOR_EN_ISHI, -1179, 520, -1098, 0, 0, 0, 0xFF01 }, //0x0000032C 
	{ ACTOR_OBJ_HAMISHI, -1534, 549, -752, 0, 0, 0, 0x002F }, //0x0000033C 
	{ ACTOR_OBJ_HAMISHI, -1536, 520, -991, 0, 0, 0, 0x0030 }, //0x0000034C 
	{ ACTOR_EN_ISHI, -1197, 520, -1329, 0, 0, 0, 0x0B10 }, //0x0000035C 
	{ ACTOR_EN_GS, -1253, 520, -1265, 0, 0, 0, 0x3815 }, //0x0000036C 
	{ ACTOR_OBJ_KIBAKO2, -1124, 520, -1339, 0, 0, 0, 0x7040 }, //0x0000037C 
};

static u32 pad38C = 0;

MeshHeader2 _spot18_room_0_meshHeader_00000390 = { { 2 }, 0x02, (u32)&_spot18_room_0_meshDListEntry_0000039C, (u32)&(_spot18_room_0_meshDListEntry_0000039C) + sizeof(_spot18_room_0_meshDListEntry_0000039C) };

MeshEntry2 _spot18_room_0_meshDListEntry_0000039C[2] = 
{
	{ 147, 598, 170, 1123, (u32)_spot18_room_0_dlist_00003238, (u32)_spot18_room_0_dlist_0000DC80 },
	{ -1187, 670, -702, 780, (u32)_spot18_room_0_dlist_000013E0, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

SCmdEchoSettings _spot18_room_0_set03C0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x03C0
SCmdRoomBehavior _spot18_room_0_set03C0_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x03C8
SCmdSkyboxDisables _spot18_room_0_set03C0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x03D0
SCmdTimeSettings _spot18_room_0_set03C0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x03D8
SCmdMesh _spot18_room_0_set03C0_cmd04 = { 0x0A, 0, (u32)&_spot18_room_0_meshHeader_00000390 }; // 0x03E0
SCmdObjectList _spot18_room_0_set03C0_cmd05 = { 0x0B, 0x06, (u32)_spot18_room_0_objectList_00000400 }; // 0x03E8
SCmdActorList _spot18_room_0_set03C0_cmd06 = { 0x01, 0x32, (u32)_spot18_room_0_actorList_0000040C }; // 0x03F0
SCmdEndMarker _spot18_room_0_set03C0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x03F8
s16 _spot18_room_0_objectList_00000400[] = 
{
	OBJECT_SPOT18_OBJ,
	OBJECT_BOMBF,
	OBJECT_BOMBIWA,
	OBJECT_GS,
	OBJECT_BOX,
	OBJECT_KIBAKO2,
};

ActorEntry _spot18_room_0_actorList_0000040C[50] = 
{
	{ ACTOR_EN_GS, -1253, 520, -1265, 0, 0, 0, 0x3815 }, //0x0000040C 
	{ ACTOR_OBJ_HAMISHI, -1541, 570, -631, 0, 0, 0, 0x002A }, //0x0000041C 
	{ ACTOR_OBJ_HAMISHI, -1536, 529, -861, 0, 0, 0, 0x002B }, //0x0000042C 
	{ ACTOR_OBJ_HAMISHI, -1536, 520, -1102, 0, 0, 0, 0x002C }, //0x0000043C 
	{ ACTOR_OBJ_HAMISHI, -1534, 549, -752, 0, 0, 0, 0x002F }, //0x0000044C 
	{ ACTOR_OBJ_HAMISHI, -1536, 520, -991, 0, 0, 0, 0x0030 }, //0x0000045C 
	{ ACTOR_EN_ISHI, -1479, 541, -794, 0, 0, 0, 0xFF01 }, //0x0000046C 
	{ ACTOR_EN_ISHI, -1478, 530, -855, 0, 0, 0, 0xFF01 }, //0x0000047C 
	{ ACTOR_EN_ISHI, -1474, 571, -624, 0, 0, 0, 0xFF01 }, //0x0000048C 
	{ ACTOR_EN_ISHI, -1471, 520, -993, 0, 0, 0, 0xFF01 }, //0x0000049C 
	{ ACTOR_EN_ISHI, -1467, 520, -1064, 0, 0, 0, 0xFF01 }, //0x000004AC 
	{ ACTOR_EN_ISHI, -1460, 520, -1121, 0, 0, 0, 0xFF01 }, //0x000004BC 
	{ ACTOR_EN_ISHI, -1451, 582, -567, 0, 0, 0, 0xFF01 }, //0x000004CC 
	{ ACTOR_EN_ISHI, -1448, 561, -672, 0, 0, 0, 0xFF01 }, //0x000004DC 
	{ ACTOR_EN_ISHI, -1440, 520, -1174, 0, 0, 0, 0xFF01 }, //0x000004EC 
	{ ACTOR_EN_ISHI, -1437, 520, -1342, 0, 0, 0, 0xFF01 }, //0x000004FC 
	{ ACTOR_EN_ISHI, -1424, 520, -1245, 0, 0, 0, 0xFF01 }, //0x0000050C 
	{ ACTOR_EN_ISHI, -1424, 574, -609, 0, 0, 0, 0xFF01 }, //0x0000051C 
	{ ACTOR_EN_ISHI, -1399, 520, -1300, 0, 0, 0, 0xFF01 }, //0x0000052C 
	{ ACTOR_EN_ISHI, -1394, 566, -654, 0, 0, 0, 0xFF01 }, //0x0000053C 
	{ ACTOR_EN_ISHI, -1343, 558, -698, 0, 0, 0, 0xFF01 }, //0x0000054C 
	{ ACTOR_EN_ISHI, -1319, 520, -1086, 0, 0, 0, 0xFF01 }, //0x0000055C 
	{ ACTOR_EN_ISHI, -1312, 520, -1039, 0, 0, 0, 0xFF01 }, //0x0000056C 
	{ ACTOR_EN_ISHI, -1306, 534, -837, 0, 0, 0, 0xFF01 }, //0x0000057C 
	{ ACTOR_EN_ISHI, -1279, 566, -656, 0, 0, 0, 0xFF01 }, //0x0000058C 
	{ ACTOR_EN_ISHI, -1255, 533, -840, 0, 0, 0, 0xFF01 }, //0x0000059C 
	{ ACTOR_EN_ISHI, -1246, 520, -1075, 0, 0, 0, 0xFF01 }, //0x000005AC 
	{ ACTOR_EN_ISHI, -1244, 576, -589, 0, 0, 0, 0xFF01 }, //0x000005BC 
	{ ACTOR_EN_ISHI, -1210, 531, -852, 0, 0, 0, 0xFF01 }, //0x000005CC 
	{ ACTOR_EN_ISHI, -1206, 571, -627, 0, 0, 0, 0xFF01 }, //0x000005DC 
	{ ACTOR_EN_ISHI, -1187, 523, -896, 0, 0, 0, 0xFF01 }, //0x000005EC 
	{ ACTOR_EN_ISHI, -1157, 520, -954, 0, 0, 0, 0xFF01 }, //0x000005FC 
	{ ACTOR_EN_ISHI, -1130, 520, -1137, 0, 0, 0, 0xFF01 }, //0x0000060C 
	{ ACTOR_EN_ISHI, -1120, 520, -1001, 0, 0, 0, 0xFF01 }, //0x0000061C 
	{ ACTOR_EN_ISHI, -1179, 520, -1098, 0, 0, 0, 0xFF01 }, //0x0000062C 
	{ ACTOR_EN_ISHI, -1197, 520, -1329, 0, 0, 0, 0x0B10 }, //0x0000063C 
	{ ACTOR_OBJ_BOMBIWA, -1342, 571, -628, 0, 0, 0, 0x0020 }, //0x0000064C 
	{ ACTOR_OBJ_BOMBIWA, -1456, 593, -501, 0, 0, 0, 0x0021 }, //0x0000065C 
	{ ACTOR_OBJ_BOMBIWA, -1233, 590, -511, 0, 0, 0, 0x0022 }, //0x0000066C 
	{ ACTOR_OBJ_BOMBIWA, -1137, 566, -657, 0, 0, 0, 0x0023 }, //0x0000067C 
	{ ACTOR_OBJ_BOMBIWA, -1124, 520, -913, 0, 0, 0, 0x0024 }, //0x0000068C 
	{ ACTOR_OBJ_BOMBIWA, -1326, 545, -771, 0, 0, 0, 0x0025 }, //0x0000069C 
	{ ACTOR_OBJ_BOMBIWA, -1469, 551, -737, 0, 0, 0, 0x0026 }, //0x000006AC 
	{ ACTOR_OBJ_BOMBIWA, -1476, 520, -921, 0, 0, 0, 0x0027 }, //0x000006BC 
	{ ACTOR_OBJ_BOMBIWA, -1391, 520, -1087, 0, 0, 0, 0x0028 }, //0x000006CC 
	{ ACTOR_OBJ_BOMBIWA, -1222, 520, -997, 0, 0, 0, 0x0029 }, //0x000006DC 
	{ ACTOR_OBJ_KIBAKO2, -1124, 520, -1339, 0, 0, 0, 0xFFFF }, //0x000006EC 
	{ ACTOR_EN_BOX, -1508, 520, -1278, 0, -32768, 0, 0x5AC0 }, //0x000006FC 
	{ ACTOR_EN_BOX, -1197, 520, -1269, 0, -32768, 0, 0x5AA1 }, //0x0000070C 
	{ ACTOR_EN_BOX, -1310, 520, -1267, 0, -32768, 0, 0x5AA2 }, //0x0000071C 
};

static u32 pad72C = 0;

SCmdEchoSettings _spot18_room_0_set0730_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0730
SCmdRoomBehavior _spot18_room_0_set0730_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x0738
SCmdSkyboxDisables _spot18_room_0_set0730_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0740
SCmdTimeSettings _spot18_room_0_set0730_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF }; // 0x0748
SCmdMesh _spot18_room_0_set0730_cmd04 = { 0x0A, 0, (u32)&_spot18_room_0_meshHeader_00000390 }; // 0x0750
SCmdObjectList _spot18_room_0_set0730_cmd05 = { 0x0B, 0x08, (u32)_spot18_room_0_objectList_00000770 }; // 0x0758
SCmdActorList _spot18_room_0_set0730_cmd06 = { 0x01, 0x59, (u32)_spot18_room_0_actorList_00000780 }; // 0x0760
SCmdEndMarker _spot18_room_0_set0730_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0768
s16 _spot18_room_0_objectList_00000770[] = 
{
	OBJECT_SPOT18_OBJ,
	OBJECT_DU,
	OBJECT_GM,
	OBJECT_OF1D_MAP,
	OBJECT_MAMENOKI,
	OBJECT_TSUBO,
	OBJECT_BOX,
	OBJECT_DDAN_OBJECTS,
};

ActorEntry _spot18_room_0_actorList_00000780[89] = 
{
	{ ACTOR_OBJ_BOMBIWA, -1393, 520, -1238, 0, -16566, 0, 0x00FF }, //0x00000780 
	{ ACTOR_OBJ_BOMBIWA, -1399, 520, -916, 0, -20025, 0, 0x00FF }, //0x00000790 
	{ ACTOR_OBJ_BOMBIWA, -1533, 534, -833, 0, -32768, 0, 0x00FF }, //0x000007A0 
	{ ACTOR_OBJ_BOMBIWA, -1309, 520, -971, 0, -4733, 0, 0x00FF }, //0x000007B0 
	{ ACTOR_OBJ_BOMBIWA, -1320, 520, -1123, 0, -2913, 0, 0x00FF }, //0x000007C0 
	{ ACTOR_OBJ_BOMBIWA, -1132, 520, -1164, 0, 14564, 0, 0x00FF }, //0x000007D0 
	{ ACTOR_OBJ_BOMBIWA, -1364, 520, -1177, 0, 0, 0, 0x00FF }, //0x000007E0 
	{ ACTOR_OBJ_BOMBIWA, -1169, 520, -1045, 0, -32586, 0, 0x00FF }, //0x000007F0 
	{ ACTOR_OBJ_BOMBIWA, -1194, 520, -1104, 0, 0, 0, 0x00FF }, //0x00000800 
	{ ACTOR_OBJ_BOMBIWA, -1547, 520, -1132, 0, -7646, 0, 0x00FF }, //0x00000810 
	{ ACTOR_OBJ_BOMBIWA, -1261, 520, -1201, 0, 4369, 0, 0x00FF }, //0x00000820 
	{ ACTOR_OBJ_BOMBIWA, -1307, 520, -1246, 0, 23848, 0, 0x00FF }, //0x00000830 
	{ ACTOR_OBJ_BOMBIWA, -1353, 520, -1279, 0, 3641, 0, 0x00FF }, //0x00000840 
	{ ACTOR_OBJ_BOMBIWA, -1168, 520, -1202, 0, -4915, 0, 0x00FF }, //0x00000850 
	{ ACTOR_OBJ_BOMBIWA, -1207, 520, -1195, 0, 7646, 0, 0x00FF }, //0x00000860 
	{ ACTOR_OBJ_BOMBIWA, -1152, 520, -1087, 0, -4551, 0, 0x00FF }, //0x00000870 
	{ ACTOR_OBJ_BOMBIWA, -1251, 520, -1113, 0, -22209, 0, 0x00FF }, //0x00000880 
	{ ACTOR_OBJ_BOMBIWA, -1470, 541, -795, 0, -3095, 0, 0x00FF }, //0x00000890 
	{ ACTOR_OBJ_BOMBIWA, -1466, 520, -974, 0, 20753, 0, 0x00FF }, //0x000008A0 
	{ ACTOR_OBJ_BOMBIWA, -1160, 534, -836, 0, -27489, 0, 0x00FF }, //0x000008B0 
	{ ACTOR_OBJ_BOMBIWA, -1393, 520, -981, 0, -29673, 0, 0x00FF }, //0x000008C0 
	{ ACTOR_OBJ_BOMBIWA, -1233, 520, -943, 0, 5643, 0, 0x00FF }, //0x000008D0 
	{ ACTOR_OBJ_BOMBIWA, -1155, 524, -892, 0, -24212, 0, 0x00FF }, //0x000008E0 
	{ ACTOR_OBJ_BOMBIWA, -1540, 520, -964, 0, -8556, 0, 0x00FF }, //0x000008F0 
	{ ACTOR_OBJ_BOMBIWA, -1487, 520, -1199, 0, 16020, 0, 0x00FF }, //0x00000900 
	{ ACTOR_OBJ_BOMBIWA, -1268, 520, -1042, 0, 10741, 0, 0x00FF }, //0x00000910 
	{ ACTOR_OBJ_BOMBIWA, -1529, 524, -892, 0, 0, 0, 0x00FF }, //0x00000920 
	{ ACTOR_OBJ_BOMBIWA, -1475, 520, -1079, 0, 0, 0, 0x00FF }, //0x00000930 
	{ ACTOR_OBJ_BOMBIWA, -1427, 520, -1198, 0, 0, 0, 0x00FF }, //0x00000940 
	{ ACTOR_OBJ_BOMBIWA, -1325, 520, -1328, 0, 0, 0, 0x00FF }, //0x00000950 
	{ ACTOR_OBJ_BOMBIWA, -1443, 531, -853, 0, 0, 0, 0x00FF }, //0x00000960 
	{ ACTOR_OBJ_BOMBIWA, -1450, 520, -1136, 0, 0, 0, 0x00FF }, //0x00000970 
	{ ACTOR_OBJ_BOMBIWA, -1211, 524, -889, 0, 0, 0, 0x00FF }, //0x00000980 
	{ ACTOR_OBJ_BOMBIWA, -1233, 534, -833, 0, 0, 0, 0x00FF }, //0x00000990 
	{ ACTOR_OBJ_BOMBIWA, -1361, 532, -847, 0, 0, 0, 0x00FF }, //0x000009A0 
	{ ACTOR_OBJ_BOMBIWA, -1303, 528, -866, 0, 0, 0, 0x00FF }, //0x000009B0 
	{ ACTOR_OBJ_BOMBIWA, -1376, 520, -1119, 0, 22391, 0, 0x00FF }, //0x000009C0 
	{ ACTOR_OBJ_BOMBIWA, -1329, 520, -912, 0, 0, 0, 0x00FF }, //0x000009D0 
	{ ACTOR_OBJ_BOMBIWA, -1394, 520, -1036, 0, -6736, 0, 0x00FF }, //0x000009E0 
	{ ACTOR_OBJ_BOMBIWA, -1439, 520, -1021, 0, 6554, 0, 0x00FF }, //0x000009F0 
	{ ACTOR_OBJ_BOMBIWA, -1474, 521, -906, 0, -3823, 0, 0x00FF }, //0x00000A00 
	{ ACTOR_OBJ_BOMBIWA, -1321, 520, -1048, 0, 7464, 0, 0x00FF }, //0x00000A10 
	{ ACTOR_OBJ_BOMBIWA, -1268, 523, -897, 0, 0, 0, 0x00FF }, //0x00000A20 
	{ ACTOR_OBJ_BOMBIWA, -1144, 520, -979, 0, -5461, 0, 0x00FF }, //0x00000A30 
	{ ACTOR_OBJ_BOMBIWA, -1220, 520, -1028, 0, -32768, 0, 0x00FF }, //0x00000A40 
	{ ACTOR_OBJ_BOMBIWA, -1551, 520, -1194, 0, -4733, 0, 0x00FF }, //0x00000A50 
	{ ACTOR_OBJ_BOMBIWA, -1549, 520, -1061, 0, -8738, 0, 0x00FF }, //0x00000A60 
	{ ACTOR_OBJ_BOMBIWA, -1494, 520, -1038, 0, 6918, 0, 0x00FF }, //0x00000A70 
	{ ACTOR_OBJ_BOMBIWA, -1407, 537, -816, 0, -11287, 0, 0x00FF }, //0x00000A80 
	{ ACTOR_OBJ_BOMBIWA, -1540, 546, -769, 0, -32768, 0, 0x00FF }, //0x00000A90 
	{ ACTOR_OBJ_BOMBIWA, -1127, 545, -774, 0, -11833, 0, 0x00FF }, //0x00000AA0 
	{ ACTOR_OBJ_BOMBIWA, -1199, 541, -795, 0, -12015, 0, 0x00FF }, //0x00000AB0 
	{ ACTOR_OBJ_BOMBIWA, -1283, 538, -811, 0, 14382, 0, 0x00FF }, //0x00000AC0 
	{ ACTOR_OBJ_BOMBIWA, -1339, 542, -788, 0, -3823, 0, 0x00FF }, //0x00000AD0 
	{ ACTOR_OBJ_BOMBIWA, -1435, 546, -769, 0, 8738, 0, 0x00FF }, //0x00000AE0 
	{ ACTOR_OBJ_BOMBIWA, -1386, 551, -741, 0, -9102, 0, 0x00FF }, //0x00000AF0 
	{ ACTOR_OBJ_BOMBIWA, -1498, 553, -730, 0, 3823, 0, 0x00FF }, //0x00000B00 
	{ ACTOR_OBJ_BOMBIWA, -1540, 560, -690, 0, 14928, 0, 0x00FF }, //0x00000B10 
	{ ACTOR_OBJ_BOMBIWA, -1164, 551, -741, 0, -5825, 0, 0x00FF }, //0x00000B20 
	{ ACTOR_OBJ_BOMBIWA, -1230, 550, -744, 0, 3641, 0, 0x00FF }, //0x00000B30 
	{ ACTOR_OBJ_BOMBIWA, -1304, 551, -741, 0, 0, 0, 0x00FF }, //0x00000B40 
	{ ACTOR_OBJ_BOMBIWA, -1447, 556, -711, 0, -3095, 0, 0x00FF }, //0x00000B50 
	{ ACTOR_OBJ_BOMBIWA, -1269, 559, -695, 0, -20025, 0, 0x00FF }, //0x00000B60 
	{ ACTOR_OBJ_BOMBIWA, -1344, 559, -692, 0, 3459, 0, 0x00FF }, //0x00000B70 
	{ ACTOR_OBJ_BOMBIWA, -1402, 563, -669, 0, 26032, 0, 0x00FF }, //0x00000B80 
	{ ACTOR_OBJ_BOMBIWA, -1489, 566, -657, 0, 4733, 0, 0x00FF }, //0x00000B90 
	{ ACTOR_OBJ_BOMBIWA, -1533, 575, -606, 0, -2913, 0, 0x00FF }, //0x00000BA0 
	{ ACTOR_OBJ_BOMBIWA, -1449, 572, -622, 0, 9466, 0, 0x00FF }, //0x00000BB0 
	{ ACTOR_OBJ_BOMBIWA, -1307, 566, -655, 0, -3459, 0, 0x00FF }, //0x00000BC0 
	{ ACTOR_OBJ_BOMBIWA, -1204, 561, -681, 0, 0, 0, 0x00FF }, //0x00000BD0 
	{ ACTOR_OBJ_BOMBIWA, -1134, 561, -683, 0, 6007, 0, 0x00FF }, //0x00000BE0 
	{ ACTOR_OBJ_BOMBIWA, -1162, 571, -625, 0, -7464, 0, 0x00FF }, //0x00000BF0 
	{ ACTOR_OBJ_BOMBIWA, -1232, 569, -639, 0, 7100, 0, 0x00FF }, //0x00000C00 
	{ ACTOR_OBJ_BOMBIWA, -1351, 572, -622, 0, 3277, 0, 0x00FF }, //0x00000C10 
	{ ACTOR_OBJ_BOMBIWA, -1402, 579, -583, 0, -7828, 0, 0x00FF }, //0x00000C20 
	{ ACTOR_OBJ_BOMBIWA, -1491, 580, -576, 0, -5461, 0, 0x00FF }, //0x00000C30 
	{ ACTOR_OBJ_BOMBIWA, -1531, 592, -510, 0, 0, 0, 0x00FF }, //0x00000C40 
	{ ACTOR_OBJ_BOMBIWA, -1433, 586, -543, 0, -4187, 0, 0x00FF }, //0x00000C50 
	{ ACTOR_OBJ_BOMBIWA, -1132, 583, -557, 0, -5279, 0, 0x00FF }, //0x00000C60 
	{ ACTOR_OBJ_BOMBIWA, -1199, 581, -571, 0, -5825, 0, 0x00FF }, //0x00000C70 
	{ ACTOR_OBJ_BOMBIWA, -1265, 577, -594, 0, 4005, 0, 0x00FF }, //0x00000C80 
	{ ACTOR_OBJ_BOMBIWA, -1316, 582, -562, 0, 10741, 0, 0x00FF }, //0x00000C90 
	{ ACTOR_OBJ_BOMBIWA, -1241, 587, -534, 0, -4187, 0, 0x00FF }, //0x00000CA0 
	{ ACTOR_OBJ_BOMBIWA, -1176, 593, -501, 0, -5279, 0, 0x00FF }, //0x00000CB0 
	{ ACTOR_OBJ_BOMBIWA, -1465, 594, -496, 0, 6736, 0, 0x00FF }, //0x00000CC0 
	{ ACTOR_OBJ_BOMBIWA, -1374, 591, -513, 0, 3641, 0, 0x00FF }, //0x00000CD0 
	{ ACTOR_OBJ_BOMBIWA, -1293, 594, -494, 0, 0, 0, 0x00FF }, //0x00000CE0 
	{ ACTOR_EN_BOX, -1476, 520, -1290, 0, -32768, 0, 0x0020 }, //0x00000CF0 
	{ ACTOR_EN_BOX, -1191, 520, -1290, 0, -32768, 0, 0x0021 }, //0x00000D00 
};


SCmdEchoSettings _spot18_room_0_set0D10_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0D10
SCmdRoomBehavior _spot18_room_0_set0D10_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x0D18
SCmdSkyboxDisables _spot18_room_0_set0D10_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0D20
SCmdTimeSettings _spot18_room_0_set0D10_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0D28
SCmdMesh _spot18_room_0_set0D10_cmd04 = { 0x0A, 0, (u32)&_spot18_room_0_meshHeader_00000390 }; // 0x0D30
SCmdEndMarker _spot18_room_0_set0D10_cmd05 = { 0x14, 0x00, 0x00 }; // 0x0D38
Vtx_t _spot18_room_0_vertices_00000D40[4] = 
{
	 { -800, 760, -161, 0, 10363, 0, 165, 165, 165, 255 }, // 0x00000D40
	 { -1200, 760, -161, 0, 8298, 0, 12, 12, 12, 255 }, // 0x00000D50
	 { -1200, 600, -161, 0, 8298, 2048, 51, 51, 51, 255 }, // 0x00000D60
	 { -800, 600, -161, 0, 10363, 2048, 242, 242, 242, 255 }, // 0x00000D70
};

Vtx_t _spot18_room_0_vertices_00000D80[4] = 
{
	 { -800, 760, -41, 0, 5197, -1337, 165, 165, 165, 255 }, // 0x00000D80
	 { -1214, 760, -41, 0, 3052, -2895, 12, 12, 12, 255 }, // 0x00000D90
	 { -1200, 760, -161, 0, 2674, -2220, 12, 12, 12, 255 }, // 0x00000DA0
	 { -800, 760, -161, 0, 4745, -715, 165, 165, 165, 255 }, // 0x00000DB0
};

Vtx_t _spot18_room_0_vertices_00000DC0[4] = 
{
	 { -800, 600, -41, 0, -11627, 2048, 229, 229, 229, 255 }, // 0x00000DC0
	 { -1214, 600, -41, 0, -9558, 2048, 51, 51, 51, 255 }, // 0x00000DD0
	 { -1214, 760, -41, 0, -9558, 0, 12, 12, 12, 255 }, // 0x00000DE0
	 { -800, 760, -41, 0, -11627, 0, 165, 165, 165, 255 }, // 0x00000DF0
};

Vtx_t _spot18_room_0_vertices_00000E00[4] = 
{
	 { -800, 600, -161, 0, 9149, 3192, 242, 242, 242, 255 }, // 0x00000E00
	 { -1200, 600, -161, 0, 5688, 2097, 51, 51, 51, 255 }, // 0x00000E10
	 { -1214, 600, -41, 0, 5030, 2616, 51, 51, 51, 255 }, // 0x00000E20
	 { -800, 600, -41, 0, 8492, 3711, 242, 242, 242, 255 }, // 0x00000E30
};

Vtx_t _spot18_room_0_vertices_00000E40[8] = 
{
	 { -1394, 760, -463, 0, 536, -1391, 63, 63, 63, 255 }, // 0x00000E40
	 { -1274, 760, -463, 0, 1157, -939, 63, 63, 63, 255 }, // 0x00000E50
	 { -1274, 760, -235, 0, 2011, -2115, 37, 37, 38, 255 }, // 0x00000E60
	 { -1394, 760, -207, 0, 1497, -2713, 37, 37, 38, 255 }, // 0x00000E70
	 { -1249, 760, -186, 0, 2325, -2278, 25, 25, 25, 255 }, // 0x00000E80
	 { -1339, 760, -97, 0, 2199, -3078, 37, 37, 38, 255 }, // 0x00000E90
	 { -1200, 760, -161, 0, 2674, -2220, 12, 12, 12, 255 }, // 0x00000EA0
	 { -1214, 760, -41, 0, 3052, -2895, 12, 12, 12, 255 }, // 0x00000EB0
};

Vtx_t _spot18_room_0_vertices_00000EC0[8] = 
{
	 { -1200, 600, -161, 0, 8298, 2048, 51, 51, 51, 255 }, // 0x00000EC0
	 { -1200, 760, -161, 0, 8298, 0, 12, 12, 12, 255 }, // 0x00000ED0
	 { -1249, 760, -186, 0, 7999, 0, 25, 25, 25, 255 }, // 0x00000EE0
	 { -1249, 600, -186, 0, 7999, 2048, 63, 63, 63, 255 }, // 0x00000EF0
	 { -1339, 600, -97, 0, -8904, 2048, 102, 102, 102, 255 }, // 0x00000F00
	 { -1339, 760, -97, 0, -8904, 0, 37, 37, 38, 255 }, // 0x00000F10
	 { -1214, 760, -41, 0, -9558, 0, 12, 12, 12, 255 }, // 0x00000F20
	 { -1214, 600, -41, 0, -9558, 2048, 51, 51, 51, 255 }, // 0x00000F30
};

Vtx_t _spot18_room_0_vertices_00000F40[4] = 
{
	 { -1214, 600, -41, 0, 3870, 2249, 51, 51, 51, 255 }, // 0x00000F40
	 { -1200, 600, -161, 0, 4282, 1652, 51, 51, 51, 255 }, // 0x00000F50
	 { -1249, 600, -186, 0, 3803, 1500, 63, 63, 63, 255 }, // 0x00000F60
	 { -1339, 600, -97, 0, 2800, 1910, 102, 102, 102, 255 }, // 0x00000F70
};

Vtx_t _spot18_room_0_vertices_00000F80[8] = 
{
	 { -1249, 600, -186, 0, 7999, 2048, 63, 63, 63, 255 }, // 0x00000F80
	 { -1249, 760, -186, 0, 7999, 0, 25, 25, 25, 255 }, // 0x00000F90
	 { -1274, 760, -235, 0, 7716, 0, 37, 37, 38, 255 }, // 0x00000FA0
	 { -1274, 600, -235, 0, 7716, 2048, 102, 102, 102, 255 }, // 0x00000FB0
	 { -1394, 600, -207, 0, -8271, 2048, 102, 102, 102, 255 }, // 0x00000FC0
	 { -1394, 760, -207, 0, -8271, 0, 37, 37, 38, 255 }, // 0x00000FD0
	 { -1339, 760, -97, 0, -8904, 0, 37, 37, 38, 255 }, // 0x00000FE0
	 { -1339, 600, -97, 0, -8904, 2048, 102, 102, 102, 255 }, // 0x00000FF0
};

Vtx_t _spot18_room_0_vertices_00001000[4] = 
{
	 { -1339, 600, -97, 0, 2800, 1910, 102, 102, 102, 255 }, // 0x00001000
	 { -1249, 600, -186, 0, 3111, 1281, 63, 63, 63, 255 }, // 0x00001010
	 { -1274, 600, -235, 0, 2633, 1130, 102, 102, 102, 255 }, // 0x00001020
	 { -1394, 600, -207, 0, 1731, 1572, 102, 102, 102, 255 }, // 0x00001030
};

Vtx_t _spot18_room_0_vertices_00001040[8] = 
{
	 { -1274, 600, -235, 0, 7716, 2048, 102, 102, 102, 255 }, // 0x00001040
	 { -1274, 760, -235, 0, 7716, 0, 37, 37, 38, 255 }, // 0x00001050
	 { -1274, 760, -463, 0, 6554, 0, 63, 63, 63, 255 }, // 0x00001060
	 { -1274, 600, -463, 0, 6554, 2048, 76, 76, 76, 255 }, // 0x00001070
	 { -1394, 600, -463, 0, -6963, 2048, 76, 76, 76, 255 }, // 0x00001080
	 { -1394, 760, -463, 0, -6963, 0, 63, 63, 63, 255 }, // 0x00001090
	 { -1394, 760, -207, 0, -8271, 0, 37, 37, 38, 255 }, // 0x000010A0
	 { -1394, 600, -207, 0, -8271, 2048, 102, 102, 102, 255 }, // 0x000010B0
};

Vtx_t _spot18_room_0_vertices_000010C0[4] = 
{
	 { -1394, 600, -207, 0, 1731, 1572, 102, 102, 102, 255 }, // 0x000010C0
	 { -1274, 600, -235, 0, 2143, 975, 102, 102, 102, 255 }, // 0x000010D0
	 { -1274, 600, -463, 0, 177, 353, 76, 76, 76, 255 }, // 0x000010E0
	 { -1394, 600, -463, 0, -480, 872, 76, 76, 76, 255 }, // 0x000010F0
};

Vtx_t _spot18_room_0_vertices_00001100[12] = 
{
	 { -1094, 520, -913, 0, 3328, 2048, 165, 165, 165, 255 }, // 0x00001100
	 { -1094, 720, -913, 0, 3328, 0, 76, 76, 76, 255 }, // 0x00001110
	 { -1094, 520, -1363, 0, 1024, 2048, 89, 89, 89, 255 }, // 0x00001120
	 { -1094, 720, -1363, 0, 1024, 0, 37, 37, 38, 255 }, // 0x00001130
	 { -1094, 600, -463, 0, 5632, 2048, 89, 89, 89, 255 }, // 0x00001140
	 { -1094, 720, -463, 0, 5632, 0, 37, 37, 38, 255 }, // 0x00001150
	 { -1574, 720, -1363, 0, -1434, 0, 37, 37, 38, 255 }, // 0x00001160
	 { -1574, 520, -1363, 0, -1434, 2048, 89, 89, 89, 255 }, // 0x00001170
	 { -1574, 520, -913, 0, -3738, 2048, 165, 165, 165, 255 }, // 0x00001180
	 { -1574, 720, -913, 0, -3738, 0, 76, 76, 76, 255 }, // 0x00001190
	 { -1574, 720, -463, 0, -6042, 0, 37, 37, 38, 255 }, // 0x000011A0
	 { -1574, 600, -463, 0, -6042, 2048, 89, 89, 89, 255 }, // 0x000011B0
};

Vtx_t _spot18_room_0_vertices_000011C0[8] = 
{
	 { -1574, 520, -913, 0, -5359, 419, 165, 165, 165, 255 }, // 0x000011C0
	 { -1094, 520, -913, 0, -2730, -1658, 165, 165, 165, 255 }, // 0x000011D0
	 { -1094, 520, -1363, 0, -6624, -2890, 89, 89, 89, 255 }, // 0x000011E0
	 { -1574, 520, -1363, 0, -9253, -813, 89, 89, 89, 255 }, // 0x000011F0
	 { -1394, 600, -463, 0, -480, 872, 76, 76, 76, 255 }, // 0x00001200
	 { -1274, 600, -463, 0, 177, 353, 76, 76, 76, 255 }, // 0x00001210
	 { -1574, 600, -463, 0, -1465, 1651, 89, 89, 89, 255 }, // 0x00001220
	 { -1094, 600, -463, 0, 1163, -426, 89, 89, 89, 255 }, // 0x00001230
};

Vtx_t _spot18_room_0_vertices_00001240[10] = 
{
	 { -1574, 720, -913, 0, -2089, 262, 76, 76, 76, 255 }, // 0x00001240
	 { -1334, 820, -1138, 0, -1693, 2330, 25, 25, 25, 255 }, // 0x00001250
	 { -1334, 820, -688, 0, 0, 0, 25, 25, 25, 255 }, // 0x00001260
	 { -1094, 720, -913, 0, 396, 2068, 76, 76, 76, 255 }, // 0x00001270
	 { -1094, 720, -463, 0, 2089, -262, 37, 37, 38, 255 }, // 0x00001280
	 { -1274, 760, -463, 0, 1157, -939, 63, 63, 63, 255 }, // 0x00001290
	 { -1394, 760, -463, 0, 536, -1391, 63, 63, 63, 255 }, // 0x000012A0
	 { -1574, 720, -463, 0, -396, -2068, 37, 37, 38, 255 }, // 0x000012B0
	 { -1574, 720, -1363, 0, -3782, 2592, 37, 37, 38, 255 }, // 0x000012C0
	 { -1094, 720, -1363, 0, -1297, 4398, 37, 37, 38, 255 }, // 0x000012D0
};

Vtx_t _spot18_room_0_vertices_000012E0[8] = 
{
	 { -1394, 760, -463, 0, -6963, 0, 63, 63, 63, 255 }, // 0x000012E0
	 { -1574, 600, -463, 0, -6042, 2048, 89, 89, 89, 255 }, // 0x000012F0
	 { -1574, 720, -463, 0, -6042, 0, 37, 37, 38, 255 }, // 0x00001300
	 { -1394, 600, -463, 0, -6963, 2048, 76, 76, 76, 255 }, // 0x00001310
	 { -1094, 720, -463, 0, 5632, 0, 37, 37, 38, 255 }, // 0x00001320
	 { -1094, 600, -463, 0, 5632, 2048, 89, 89, 89, 255 }, // 0x00001330
	 { -1274, 760, -463, 0, 6554, 0, 63, 63, 63, 255 }, // 0x00001340
	 { -1274, 600, -463, 0, 6554, 2048, 76, 76, 76, 255 }, // 0x00001350
};

Vtx_t _spot18_room_0_vertices_00001360[8] = 
{
	 { -1029, 520, -1459, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001360
	 { -779, 520, -45, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001370
	 { -1029, 820, -1459, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001380
	 { -779, 820, -45, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001390
	 { -1728, 520, -1335, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013A0
	 { -1479, 520, 78, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013B0
	 { -1728, 820, -1335, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013C0
	 { -1479, 820, 78, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013D0
};

Gfx _spot18_room_0_dlist_000013E0[] =
{
	gsDPPipeSync(), // 0x000013E0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000013E8
	gsSPVertex(_spot18_room_0_vertices_00001360, 8, 0), // 0x000013F0
	gsSPCullDisplayList(0, 7), // 0x000013F8
	gsDPPipeSync(), // 0x00001400
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001408
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001410
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001418
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00001420
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001428
	gsDPLoadSync(), // 0x00001430
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001438
	gsDPPipeSync(), // 0x00001440
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001448
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001450
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x00001458
	gsDPTileSync(), // 0x00001460
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001468
	gsDPLoadSync(), // 0x00001470
	gsDPLoadTLUTCmd(7, 255), // 0x00001478
	gsDPPipeSync(), // 0x00001480
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001488
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001490
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001498
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000014A0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000014A8
	gsSPVertex(_spot18_room_0_vertices_00000D40, 4, 0), // 0x000014B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000014B8
	gsDPPipeSync(), // 0x000014C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x000014C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000014D0
	gsDPLoadSync(), // 0x000014D8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000014E0
	gsDPPipeSync(), // 0x000014E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000014F0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000014F8
	gsSPVertex(_spot18_room_0_vertices_00000D80, 4, 0), // 0x00001500
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001508
	gsDPPipeSync(), // 0x00001510
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00001518
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001520
	gsDPLoadSync(), // 0x00001528
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001530
	gsDPPipeSync(), // 0x00001538
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001540
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001548
	gsSPVertex(_spot18_room_0_vertices_00000DC0, 4, 0), // 0x00001550
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001558
	gsDPPipeSync(), // 0x00001560
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00001568
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001570
	gsDPLoadSync(), // 0x00001578
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001580
	gsDPPipeSync(), // 0x00001588
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001590
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001598
	gsSPVertex(_spot18_room_0_vertices_00000E00, 4, 0), // 0x000015A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000015A8
	gsDPPipeSync(), // 0x000015B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x000015B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000015C0
	gsDPLoadSync(), // 0x000015C8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000015D0
	gsDPPipeSync(), // 0x000015D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000015E0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000015E8
	gsSPVertex(_spot18_room_0_vertices_00000E40, 8, 0), // 0x000015F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000015F8
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0), // 0x00001600
	gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0), // 0x00001608
	gsDPPipeSync(), // 0x00001610
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00001618
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001620
	gsDPLoadSync(), // 0x00001628
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001630
	gsDPPipeSync(), // 0x00001638
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001640
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001648
	gsSPVertex(_spot18_room_0_vertices_00000EC0, 8, 0), // 0x00001650
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001658
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001660
	gsDPPipeSync(), // 0x00001668
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00001670
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001678
	gsDPLoadSync(), // 0x00001680
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001688
	gsDPPipeSync(), // 0x00001690
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001698
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000016A0
	gsSPVertex(_spot18_room_0_vertices_00000F40, 4, 0), // 0x000016A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000016B0
	gsDPPipeSync(), // 0x000016B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x000016C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000016C8
	gsDPLoadSync(), // 0x000016D0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000016D8
	gsDPPipeSync(), // 0x000016E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000016E8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000016F0
	gsSPVertex(_spot18_room_0_vertices_00000F80, 8, 0), // 0x000016F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001700
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001708
	gsDPPipeSync(), // 0x00001710
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00001718
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001720
	gsDPLoadSync(), // 0x00001728
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001730
	gsDPPipeSync(), // 0x00001738
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001740
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001748
	gsSPVertex(_spot18_room_0_vertices_00001000, 4, 0), // 0x00001750
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001758
	gsDPPipeSync(), // 0x00001760
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00001768
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001770
	gsDPLoadSync(), // 0x00001778
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001780
	gsDPPipeSync(), // 0x00001788
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001790
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001798
	gsSPVertex(_spot18_room_0_vertices_00001040, 8, 0), // 0x000017A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000017A8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000017B0
	gsDPPipeSync(), // 0x000017B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x000017C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000017C8
	gsDPLoadSync(), // 0x000017D0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000017D8
	gsDPPipeSync(), // 0x000017E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000017E8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000017F0
	gsSPVertex(_spot18_room_0_vertices_000010C0, 4, 0), // 0x000017F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001800
	gsDPPipeSync(), // 0x00001808
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00001810
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001818
	gsDPLoadSync(), // 0x00001820
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001828
	gsDPPipeSync(), // 0x00001830
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001838
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001840
	gsSPVertex(_spot18_room_0_vertices_00001100, 12, 0), // 0x00001848
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001850
	gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0), // 0x00001858
	gsSP2Triangles(2, 3, 6, 0, 2, 6, 7, 0), // 0x00001860
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001868
	gsSP2Triangles(8, 7, 9, 0, 7, 6, 9, 0), // 0x00001870
	gsDPPipeSync(), // 0x00001878
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00001880
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001888
	gsDPLoadSync(), // 0x00001890
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001898
	gsDPPipeSync(), // 0x000018A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000018A8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000018B0
	gsSPVertex(_spot18_room_0_vertices_000011C0, 8, 0), // 0x000018B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000018C0
	gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0), // 0x000018C8
	gsSP2Triangles(0, 6, 4, 0, 5, 7, 1, 0), // 0x000018D0
	gsDPPipeSync(), // 0x000018D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x000018E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000018E8
	gsDPLoadSync(), // 0x000018F0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000018F8
	gsDPPipeSync(), // 0x00001900
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001908
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001910
	gsSPVertex(_spot18_room_0_vertices_00001240, 10, 0), // 0x00001918
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001920
	gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0), // 0x00001928
	gsSP2Triangles(5, 6, 2, 0, 6, 7, 2, 0), // 0x00001930
	gsSP2Triangles(7, 0, 2, 0, 0, 8, 1, 0), // 0x00001938
	gsSP2Triangles(8, 9, 1, 0, 9, 3, 1, 0), // 0x00001940
	gsDPPipeSync(), // 0x00001948
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00001950
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001958
	gsDPLoadSync(), // 0x00001960
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001968
	gsDPPipeSync(), // 0x00001970
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001978
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001980
	gsSPVertex(_spot18_room_0_vertices_000012E0, 8, 0), // 0x00001988
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001990
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00001998
	gsSPEndDisplayList(), // 0x000019A0
};

Vtx_t _spot18_room_0_vertices_000019A8[4] = 
{
	 { 198, 346, -275, 0, 0, 0, 127, 127, 127, 255 }, // 0x000019A8
	 { 198, 296, -275, 0, 0, 1024, 114, 114, 114, 255 }, // 0x000019B8
	 { 262, 296, -206, 0, 1024, 1024, 114, 114, 114, 255 }, // 0x000019C8
	 { 256, 346, -213, 0, 1024, 0, 127, 127, 127, 255 }, // 0x000019D8
};

Vtx_t _spot18_room_0_vertices_000019E8[3] = 
{
	 { 105, 397, -385, 0, -7485, 0, 127, 127, 127, 255 }, // 0x000019E8
	 { 105, 197, -385, 0, -7485, 2048, 51, 51, 51, 255 }, // 0x000019F8
	 { 431, 196, -28, 0, -5011, 2048, 153, 153, 153, 255 }, // 0x00001A08
};

Vtx_t _spot18_room_0_vertices_00001A18[10] = 
{
	 { 800, 800, 263, 0, -5142, 0, 127, 127, 127, 255 }, // 0x00001A18
	 { 595, 800, 23, 0, -6759, 0, 127, 127, 127, 255 }, // 0x00001A28
	 { 595, 600, 23, 0, -6759, 2048, 140, 140, 140, 255 }, // 0x00001A38
	 { 800, 600, 263, 0, -5142, 2048, 242, 242, 242, 255 }, // 0x00001A48
	 { 658, 600, 816, 0, -2184, 2048, 242, 242, 242, 255 }, // 0x00001A58
	 { 658, 800, 816, 0, -2184, 0, 127, 127, 127, 255 }, // 0x00001A68
	 { 800, 800, 423, 0, -4323, 0, 140, 140, 140, 255 }, // 0x00001A78
	 { 800, 600, 423, 0, -4323, 2048, 242, 242, 242, 255 }, // 0x00001A88
	 { 800, 760, 263, 0, -5142, 410, 165, 165, 165, 255 }, // 0x00001A98
	 { 800, 760, 423, 0, -4323, 410, 165, 165, 165, 255 }, // 0x00001AA8
};

Vtx_t _spot18_room_0_vertices_00001AB8[4] = 
{
	 { -130, 800, -386, 0, 0, 0, 127, 127, 127, 255 }, // 0x00001AB8
	 { -130, 600, -386, 0, 0, 2048, 165, 165, 165, 255 }, // 0x00001AC8
	 { 595, 600, 23, 0, 4258, 2048, 140, 140, 140, 255 }, // 0x00001AD8
	 { 595, 800, 23, 0, 4258, 0, 127, 127, 127, 255 }, // 0x00001AE8
};

Vtx_t _spot18_room_0_vertices_00001AF8[6] = 
{
	 { 541, 600, 664, 0, -3157, 2048, 140, 140, 140, 255 }, // 0x00001AF8
	 { 658, 600, 816, 0, -2434, 0, 242, 242, 242, 255 }, // 0x00001B08
	 { 581, 600, 183, 0, -5630, 2048, 140, 140, 140, 255 }, // 0x00001B18
	 { 800, 600, 423, 0, -4499, 0, 242, 242, 242, 255 }, // 0x00001B28
	 { 800, 600, 263, 0, -5315, 0, 229, 229, 229, 255 }, // 0x00001B38
	 { 595, 600, 23, 0, -6451, 2048, 140, 140, 140, 255 }, // 0x00001B48
};

Vtx_t _spot18_room_0_vertices_00001B58[4] = 
{
	 { 477, 397, -400, 0, 4828, 2048, 127, 127, 127, 255 }, // 0x00001B58
	 { 595, 400, 23, 0, 7073, 2048, 204, 204, 204, 255 }, // 0x00001B68
	 { 595, 600, 23, 0, 7081, 0, 140, 140, 140, 255 }, // 0x00001B78
	 { 477, 599, -400, 0, 4830, 0, 114, 114, 114, 255 }, // 0x00001B88
};

Vtx_t _spot18_room_0_vertices_00001B98[4] = 
{
	 { 581, 400, 183, 0, -5630, 2048, 204, 204, 204, 255 }, // 0x00001B98
	 { 541, 400, 664, 0, -3157, 2048, 204, 204, 204, 255 }, // 0x00001BA8
	 { 541, 600, 664, 0, -3157, 0, 140, 140, 140, 255 }, // 0x00001BB8
	 { 581, 600, 183, 0, -5630, 0, 140, 140, 140, 255 }, // 0x00001BC8
};

Vtx_t _spot18_room_0_vertices_00001BD8[4] = 
{
	 { 595, 600, 23, 0, -6451, 0, 140, 140, 140, 255 }, // 0x00001BD8
	 { 595, 563, 23, 0, -6451, 382, 140, 140, 140, 255 }, // 0x00001BE8
	 { 581, 563, 183, 0, -5630, 384, 140, 140, 140, 255 }, // 0x00001BF8
	 { 581, 600, 183, 0, -5630, 0, 140, 140, 140, 255 }, // 0x00001C08
};

Vtx_t _spot18_room_0_vertices_00001C18[4] = 
{
	 { 431, 396, -28, 0, -5011, 2048, 102, 102, 102, 255 }, // 0x00001C18
	 { 477, 397, -400, 0, -6255, 0, 127, 127, 127, 255 }, // 0x00001C28
	 { 105, 397, -385, 0, -7485, 2048, 114, 114, 114, 255 }, // 0x00001C38
	 { 595, 400, 23, 0, -4253, 0, 204, 204, 204, 255 }, // 0x00001C48
};

Vtx_t _spot18_room_0_vertices_00001C58[3] = 
{
	 { 105, 397, -385, 0, -7485, 0, 127, 127, 127, 255 }, // 0x00001C58
	 { 431, 196, -28, 0, -5011, 2048, 153, 153, 153, 255 }, // 0x00001C68
	 { 431, 396, -28, 0, -5011, 0, 102, 102, 102, 255 }, // 0x00001C78
};

Vtx_t _spot18_room_0_vertices_00001C88[4] = 
{
	 { 431, 396, -28, 0, -5011, 0, 102, 102, 102, 255 }, // 0x00001C88
	 { 431, 196, -28, 0, -5011, 2048, 153, 153, 153, 255 }, // 0x00001C98
	 { 363, 196, 491, 0, -2329, 2048, 153, 153, 153, 255 }, // 0x00001CA8
	 { 363, 396, 491, 0, -2329, 0, 102, 102, 102, 255 }, // 0x00001CB8
};

Vtx_t _spot18_room_0_vertices_00001CC8[4] = 
{
	 { 368, 356, 511, 0, -1039, 0, 114, 114, 114, 255 }, // 0x00001CC8
	 { 368, 316, 511, 0, -1052, 2048, 127, 127, 127, 255 }, // 0x00001CD8
	 { 213, 316, 549, 0, 4115, 2048, 127, 127, 127, 255 }, // 0x00001CE8
	 { 213, 356, 549, 0, 4127, 0, 114, 114, 114, 255 }, // 0x00001CF8
};

Vtx_t _spot18_room_0_vertices_00001D08[4] = 
{
	 { 160, 800, 1000, 0, 534, 0, 140, 140, 140, 255 }, // 0x00001D08
	 { 658, 800, 816, 0, -2184, 0, 127, 127, 127, 255 }, // 0x00001D18
	 { 658, 600, 816, 0, -2184, 2048, 242, 242, 242, 255 }, // 0x00001D28
	 { 160, 600, 1000, 0, 534, 2048, 242, 242, 242, 255 }, // 0x00001D38
};

Vtx_t _spot18_room_0_vertices_00001D48[4] = 
{
	 { 168, 600, 795, 0, -1135, 2048, 140, 140, 140, 255 }, // 0x00001D48
	 { 658, 600, 816, 0, -3465, 0, 242, 242, 242, 255 }, // 0x00001D58
	 { 541, 600, 664, 0, -3157, 2048, 140, 140, 140, 255 }, // 0x00001D68
	 { 160, 600, 1000, 0, -748, 0, 242, 242, 242, 255 }, // 0x00001D78
};

Vtx_t _spot18_room_0_vertices_00001D88[6] = 
{
	 { 541, 600, 664, 0, -3157, 0, 140, 140, 140, 255 }, // 0x00001D88
	 { 541, 400, 664, 0, -3157, 2048, 204, 204, 204, 255 }, // 0x00001D98
	 { 168, 400, 795, 0, -1135, 2048, 204, 204, 204, 255 }, // 0x00001DA8
	 { 168, 600, 795, 0, -1135, 0, 140, 140, 140, 255 }, // 0x00001DB8
	 { -251, 400, 749, 0, 1024, 2048, 204, 204, 204, 255 }, // 0x00001DC8
	 { -251, 600, 749, 0, 1024, 0, 140, 140, 140, 255 }, // 0x00001DD8
};

Vtx_t _spot18_room_0_vertices_00001DE8[5] = 
{
	 { -78, 396, 601, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00001DE8
	 { 168, 400, 795, 0, -982, 0, 204, 204, 204, 255 }, // 0x00001DF8
	 { 208, 396, 530, 0, -1510, 2048, 114, 114, 114, 255 }, // 0x00001E08
	 { 363, 396, 491, 0, -2329, 2048, 102, 102, 102, 255 }, // 0x00001E18
	 { 541, 400, 664, 0, -2995, 0, 204, 204, 204, 255 }, // 0x00001E28
};

Vtx_t _spot18_room_0_vertices_00001E38[7] = 
{
	 { 208, 196, 530, 0, -1510, 2048, 153, 153, 153, 255 }, // 0x00001E38
	 { -78, 197, 601, 0, 0, 2048, 153, 153, 153, 255 }, // 0x00001E48
	 { -78, 396, 601, 0, 0, 0, 102, 102, 102, 255 }, // 0x00001E58
	 { 208, 396, 530, 0, -1510, 0, 114, 114, 114, 255 }, // 0x00001E68
	 { 208, 356, 530, 0, -1510, 410, 102, 102, 102, 255 }, // 0x00001E78
	 { 363, 396, 491, 0, -2329, 0, 102, 102, 102, 255 }, // 0x00001E88
	 { 363, 356, 491, 0, -2329, 410, 102, 102, 102, 255 }, // 0x00001E98
};

Vtx_t _spot18_room_0_vertices_00001EA8[4] = 
{
	 { -6, 579, 632, 0, 1010, 966, 178, 178, 178, 255 }, // 0x00001EA8
	 { -7, 599, 615, 0, 1010, 47, 153, 153, 153, 255 }, // 0x00001EB8
	 { 33, 599, 614, 0, 55, 47, 153, 153, 153, 255 }, // 0x00001EC8
	 { 34, 579, 630, 0, 55, 966, 178, 178, 178, 255 }, // 0x00001ED8
};

Vtx_t _spot18_room_0_vertices_00001EE8[16] = 
{
	 { -6, 579, 632, 0, -497, 1696, 178, 178, 178, 255 }, // 0x00001EE8
	 { 20, 558, 779, 0, -1055, 0, 178, 178, 178, 255 }, // 0x00001EF8
	 { 0, 600, 777, 0, 0, 0, 153, 153, 153, 255 }, // 0x00001F08
	 { -7, 599, 615, 0, 0, 2041, 153, 153, 153, 255 }, // 0x00001F18
	 { 0, 600, 777, 0, 0, 0, 153, 153, 153, 255 }, // 0x00001F28
	 { 41, 600, 781, 0, -1024, 0, 153, 153, 153, 255 }, // 0x00001F38
	 { 33, 599, 614, 0, -1024, 1707, 153, 153, 153, 255 }, // 0x00001F48
	 { -7, 599, 615, 0, 0, 1707, 153, 153, 153, 255 }, // 0x00001F58
	 { 93, 396, 559, 0, 0, 0, 114, 114, 114, 255 }, // 0x00001F68
	 { 132, 396, 549, 0, -1024, 0, 114, 114, 114, 255 }, // 0x00001F78
	 { 103, 396, 432, 0, -1024, 1707, 114, 114, 114, 255 }, // 0x00001F88
	 { 64, 396, 442, 0, 0, 1707, 114, 114, 114, 255 }, // 0x00001F98
	 { 68, 376, 459, 0, -497, 1696, 153, 153, 153, 255 }, // 0x00001FA8
	 { 93, 396, 559, 0, 0, 0, 114, 114, 114, 255 }, // 0x00001FB8
	 { 64, 396, 442, 0, 0, 2041, 114, 114, 114, 255 }, // 0x00001FC8
	 { 113, 354, 554, 0, -1055, 0, 140, 140, 140, 255 }, // 0x00001FD8
};

Vtx_t _spot18_room_0_vertices_00001FE8[4] = 
{
	 { 68, 376, 459, 0, 1010, 966, 153, 153, 153, 255 }, // 0x00001FE8
	 { 64, 396, 442, 0, 1010, 47, 114, 114, 114, 255 }, // 0x00001FF8
	 { 103, 396, 432, 0, 55, 47, 114, 114, 114, 255 }, // 0x00002008
	 { 107, 376, 449, 0, 55, 966, 153, 153, 153, 255 }, // 0x00002018
};

Vtx_t _spot18_room_0_vertices_00002028[3] = 
{
	 { 153, 780, 825, 0, 0, 1418, 216, 216, 216, 255 }, // 0x00002028
	 { 190, 780, 812, 0, -1024, 1418, 216, 216, 216, 255 }, // 0x00002038
	 { 229, 758, 974, 0, -512, 0, 216, 216, 216, 255 }, // 0x00002048
};

Vtx_t _spot18_room_0_vertices_00002058[4] = 
{
	 { 153, 780, 825, 0, 1010, 966, 216, 216, 216, 255 }, // 0x00002058
	 { 147, 800, 810, 0, 1010, 47, 178, 178, 178, 255 }, // 0x00002068
	 { 184, 800, 796, 0, 55, 47, 178, 178, 178, 255 }, // 0x00002078
	 { 190, 780, 812, 0, 55, 966, 216, 216, 216, 255 }, // 0x00002088
};

Vtx_t _spot18_room_0_vertices_00002098[8] = 
{
	 { 153, 780, 825, 0, -497, 1696, 216, 216, 216, 255 }, // 0x00002098
	 { 229, 758, 974, 0, -1055, 0, 216, 216, 216, 255 }, // 0x000020A8
	 { 211, 800, 981, 0, 0, 0, 178, 178, 178, 255 }, // 0x000020B8
	 { 147, 800, 810, 0, 0, 2041, 178, 178, 178, 255 }, // 0x000020C8
	 { 211, 800, 981, 0, 0, 0, 178, 178, 178, 255 }, // 0x000020D8
	 { 248, 800, 967, 0, -1024, 0, 178, 178, 178, 255 }, // 0x000020E8
	 { 184, 800, 796, 0, -1024, 1707, 178, 178, 178, 255 }, // 0x000020F8
	 { 147, 800, 810, 0, 0, 1707, 178, 178, 178, 255 }, // 0x00002108
};

Vtx_t _spot18_room_0_vertices_00002118[4] = 
{
	 { -826, 760, -41, 0, -1042, 0, 165, 165, 165, 255 }, // 0x00002118
	 { -826, 720, -41, 0, -1052, 2048, 165, 165, 165, 255 }, // 0x00002128
	 { -826, 720, -161, 0, 3072, 2048, 165, 165, 165, 255 }, // 0x00002138
	 { -826, 760, -161, 0, 3082, 0, 165, 165, 165, 255 }, // 0x00002148
};

Vtx_t _spot18_room_0_vertices_00002158[7] = 
{
	 { -574, 600, 167, 0, 4877, 2048, 153, 153, 153, 255 }, // 0x00002158
	 { -583, 600, 7, 0, 5697, 2048, 153, 153, 153, 255 }, // 0x00002168
	 { -800, 600, -41, 0, 6004, 0, 229, 229, 229, 255 }, // 0x00002178
	 { -800, 600, -161, 0, 6617, 0, 229, 229, 229, 255 }, // 0x00002188
	 { -742, 600, -265, 0, 7132, 569, 229, 229, 229, 255 }, // 0x00002198
	 { -607, 600, -435, 0, 7964, 2048, 153, 153, 153, 255 }, // 0x000021A8
	 { -800, 600, 580, 0, 2829, 0, 229, 229, 229, 255 }, // 0x000021B8
};

Vtx_t _spot18_room_0_vertices_000021C8[15] = 
{
	 { 0, 1000, 0, 0, 0, 1024, 12, 12, 12, 255 }, // 0x000021C8
	 { -40, 800, 1000, 0, 5120, 878, 140, 140, 140, 255 }, // 0x000021D8
	 { -593, 800, 873, 0, 4468, -1144, 127, 127, 127, 255 }, // 0x000021E8
	 { 160, 800, 1000, 0, 5120, 1609, 140, 140, 140, 255 }, // 0x000021F8
	 { 658, 800, 816, 0, 4176, 3429, 127, 127, 127, 255 }, // 0x00002208
	 { 595, 800, 23, 0, 117, 3199, 127, 127, 127, 255 }, // 0x00002218
	 { -130, 800, -386, 0, -1976, 550, 127, 127, 127, 255 }, // 0x00002228
	 { -607, 800, -435, 0, -2228, -1195, 127, 127, 127, 255 }, // 0x00002238
	 { -742, 800, -265, 0, -1821, -1902, 127, 127, 127, 255 }, // 0x00002248
	 { 800, 800, 263, 0, 1346, 3950, 127, 127, 127, 255 }, // 0x00002258
	 { 800, 800, 423, 0, 2165, 3950, 140, 140, 140, 255 }, // 0x00002268
	 { -800, 800, -161, 0, -826, -1902, 140, 140, 140, 255 }, // 0x00002278
	 { -800, 800, -41, 0, -211, -1902, 140, 140, 140, 255 }, // 0x00002288
	 { -800, 800, 580, 0, 2967, -1902, 140, 140, 140, 255 }, // 0x00002298
	 { -800, 800, 740, 0, 3788, -1902, 140, 140, 140, 255 }, // 0x000022A8
};

Vtx_t _spot18_room_0_vertices_000022B8[8] = 
{
	 { 797, 560, 22, 0, 273, 410, 63, 63, 63, 255 }, // 0x000022B8
	 { 595, 563, 23, 0, -1024, 410, 140, 140, 140, 255 }, // 0x000022C8
	 { 595, 400, 23, 0, -1024, 2048, 204, 204, 204, 255 }, // 0x000022D8
	 { 797, 400, 22, 0, 273, 2048, 114, 114, 114, 255 }, // 0x000022E8
	 { 797, 400, 182, 0, 1024, 2048, 127, 127, 127, 255 }, // 0x000022F8
	 { 581, 400, 183, 0, 2407, 2048, 204, 204, 204, 255 }, // 0x00002308
	 { 581, 563, 183, 0, 2407, 410, 140, 140, 140, 255 }, // 0x00002318
	 { 797, 560, 182, 0, 1024, 410, 63, 63, 63, 255 }, // 0x00002328
};

Vtx_t _spot18_room_0_vertices_00002338[4] = 
{
	 { 797, 400, 22, 0, 564, 69, 114, 114, 114, 255 }, // 0x00002338
	 { 595, 400, 23, 0, 1288, -1140, 204, 204, 204, 255 }, // 0x00002348
	 { 581, 400, 183, 0, 3303, -946, 204, 204, 204, 255 }, // 0x00002358
	 { 797, 400, 182, 0, 2533, 342, 127, 127, 127, 255 }, // 0x00002368
};

Vtx_t _spot18_room_0_vertices_00002378[8] = 
{
	 { 1120, 680, 263, 0, 517, 410, 51, 51, 51, 255 }, // 0x00002378
	 { 1120, 520, 263, 0, 517, 2048, 114, 114, 114, 255 }, // 0x00002388
	 { 1120, 520, 423, 0, 1541, 2048, 114, 114, 114, 255 }, // 0x00002398
	 { 1120, 680, 423, 0, 1541, 410, 51, 51, 51, 255 }, // 0x000023A8
	 { 800, 760, 423, 0, 3589, 410, 165, 165, 165, 255 }, // 0x000023B8
	 { 960, 680, 423, 0, 2565, 410, 63, 63, 63, 255 }, // 0x000023C8
	 { 960, 520, 423, 0, 2565, 2048, 114, 114, 114, 255 }, // 0x000023D8
	 { 800, 600, 423, 0, 3589, 2048, 242, 242, 242, 255 }, // 0x000023E8
};

Vtx_t _spot18_room_0_vertices_000023F8[4] = 
{
	 { 800, 760, 263, 0, 2782, 480, 165, 165, 165, 255 }, // 0x000023F8
	 { 960, 680, 263, 0, 2500, 1464, 63, 63, 63, 255 }, // 0x00002408
	 { 960, 680, 423, 0, 3485, 1746, 63, 63, 63, 255 }, // 0x00002418
	 { 800, 760, 423, 0, 3767, 762, 165, 165, 165, 255 }, // 0x00002428
};

Vtx_t _spot18_room_0_vertices_00002438[4] = 
{
	 { 960, 680, 423, 0, 2565, 410, 63, 63, 63, 255 }, // 0x00002438
	 { 1120, 680, 423, 0, 1541, 410, 51, 51, 51, 255 }, // 0x00002448
	 { 1120, 520, 423, 0, 1541, 2048, 114, 114, 114, 255 }, // 0x00002458
	 { 960, 520, 423, 0, 2565, 2048, 114, 114, 114, 255 }, // 0x00002468
};

Vtx_t _spot18_room_0_vertices_00002478[4] = 
{
	 { 960, 680, 263, 0, 2500, 1464, 63, 63, 63, 255 }, // 0x00002478
	 { 1120, 680, 263, 0, 2219, 2449, 51, 51, 51, 255 }, // 0x00002488
	 { 1120, 680, 423, 0, 3203, 2731, 51, 51, 51, 255 }, // 0x00002498
	 { 960, 680, 423, 0, 3485, 1746, 63, 63, 63, 255 }, // 0x000024A8
};

Vtx_t _spot18_room_0_vertices_000024B8[8] = 
{
	 { 797, 560, 182, 0, 1024, 410, 63, 63, 63, 255 }, // 0x000024B8
	 { 957, 640, 182, 0, 0, 410, 76, 76, 76, 255 }, // 0x000024C8
	 { 957, 480, 182, 0, 0, 2048, 165, 165, 165, 255 }, // 0x000024D8
	 { 797, 400, 182, 0, 1024, 2048, 127, 127, 127, 255 }, // 0x000024E8
	 { 1120, 680, 263, 0, 517, 410, 51, 51, 51, 255 }, // 0x000024F8
	 { 1117, 640, 182, 0, 0, 410, 63, 63, 63, 255 }, // 0x00002508
	 { 1117, 480, 182, 0, 0, 2048, 63, 63, 63, 255 }, // 0x00002518
	 { 1120, 520, 263, 0, 517, 2048, 114, 114, 114, 255 }, // 0x00002528
};

Vtx_t _spot18_room_0_vertices_00002538[4] = 
{
	 { 960, 680, 263, 0, 2500, 1464, 63, 63, 63, 255 }, // 0x00002538
	 { 957, 640, 182, 0, 2008, 1306, 76, 76, 76, 255 }, // 0x00002548
	 { 1117, 640, 182, 0, 1727, 2290, 63, 63, 63, 255 }, // 0x00002558
	 { 1120, 680, 263, 0, 2219, 2449, 51, 51, 51, 255 }, // 0x00002568
};

Vtx_t _spot18_room_0_vertices_00002578[4] = 
{
	 { 797, 560, 22, 0, 273, 410, 63, 63, 63, 255 }, // 0x00002578
	 { 797, 400, 22, 0, 273, 2048, 114, 114, 114, 255 }, // 0x00002588
	 { 957, 480, 22, 0, 1297, 2048, 37, 37, 38, 255 }, // 0x00002598
	 { 957, 640, 22, 0, 1297, 410, 37, 37, 38, 255 }, // 0x000025A8
};

Vtx_t _spot18_room_0_vertices_000025B8[4] = 
{
	 { 960, 520, 423, 0, 4922, 1725, 114, 114, 114, 255 }, // 0x000025B8
	 { 1120, 520, 423, 0, 4358, 2680, 114, 114, 114, 255 }, // 0x000025C8
	 { 1120, 520, 263, 0, 2389, 2406, 114, 114, 114, 255 }, // 0x000025D8
	 { 960, 520, 263, 0, 2953, 1451, 165, 165, 165, 255 }, // 0x000025E8
};

Vtx_t _spot18_room_0_vertices_000025F8[4] = 
{
	 { 1117, 640, 182, 0, 0, 410, 63, 63, 63, 255 }, // 0x000025F8
	 { 1117, 640, 22, 0, -1024, 410, 37, 37, 38, 255 }, // 0x00002608
	 { 1117, 480, 22, 0, -1024, 2048, 37, 37, 38, 255 }, // 0x00002618
	 { 1117, 480, 182, 0, 0, 2048, 63, 63, 63, 255 }, // 0x00002628
};

Vtx_t _spot18_room_0_vertices_00002638[4] = 
{
	 { 1117, 480, 182, 0, 1405, 2252, 63, 63, 63, 255 }, // 0x00002638
	 { 1117, 480, 22, 0, -564, 1979, 37, 37, 38, 255 }, // 0x00002648
	 { 957, 480, 22, 0, 0, 1024, 37, 37, 38, 255 }, // 0x00002658
	 { 957, 480, 182, 0, 1969, 1297, 165, 165, 165, 255 }, // 0x00002668
};

Vtx_t _spot18_room_0_vertices_00002678[8] = 
{
	 { 957, 480, 22, 0, 2048, 0, 37, 37, 38, 255 }, // 0x00002678
	 { 797, 400, 22, 0, 2048, 4096, 114, 114, 114, 255 }, // 0x00002688
	 { 797, 400, 182, 0, 0, 4096, 127, 127, 127, 255 }, // 0x00002698
	 { 957, 480, 182, 0, 0, 0, 165, 165, 165, 255 }, // 0x000026A8
	 { 960, 520, 263, 0, 0, 0, 165, 165, 165, 255 }, // 0x000026B8
	 { 1120, 520, 263, 0, 2048, 0, 114, 114, 114, 255 }, // 0x000026C8
	 { 1117, 480, 182, 0, 2014, 2066, 63, 63, 63, 255 }, // 0x000026D8
	 { 957, 480, 182, 0, -34, 2066, 165, 165, 165, 255 }, // 0x000026E8
};

Vtx_t _spot18_room_0_vertices_000026F8[4] = 
{
	 { -607, 800, -435, 0, -1432, 0, 127, 127, 127, 255 }, // 0x000026F8
	 { -607, 600, -435, 0, -1432, 2048, 140, 140, 140, 255 }, // 0x00002708
	 { -130, 600, -386, 0, 1024, 2048, 165, 165, 165, 255 }, // 0x00002718
	 { -130, 800, -386, 0, 1024, 0, 127, 127, 127, 255 }, // 0x00002728
};

Vtx_t _spot18_room_0_vertices_00002738[4] = 
{
	 { -263, 398, -588, 0, 2048, 2048, 102, 102, 102, 255 }, // 0x00002738
	 { -130, 397, -386, 0, 3288, 2048, 102, 102, 102, 255 }, // 0x00002748
	 { -130, 600, -386, 0, 3280, 0, 165, 165, 165, 255 }, // 0x00002758
	 { -263, 599, -588, 0, 2043, 0, 63, 63, 63, 255 }, // 0x00002768
};

Vtx_t _spot18_room_0_vertices_00002778[4] = 
{
	 { 415, 398, -659, 0, 0, -2047, 63, 63, 63, 255 }, // 0x00002778
	 { 210, 396, -555, 0, 2048, -3049, 63, 63, 63, 255 }, // 0x00002788
	 { 477, 397, -400, 0, 0, -3011, 127, 127, 127, 255 }, // 0x00002798
	 { 105, 397, -385, 0, 2048, -4074, 114, 114, 114, 255 }, // 0x000027A8
};

Vtx_t _spot18_room_0_vertices_000027B8[8] = 
{
	 { 413, 604, -658, 0, 3456, 0, 51, 51, 51, 255 }, // 0x000027B8
	 { 415, 398, -659, 0, 3462, 2048, 63, 63, 63, 255 }, // 0x000027C8
	 { 477, 397, -400, 0, 4828, 2048, 127, 127, 127, 255 }, // 0x000027D8
	 { 477, 599, -400, 0, 4830, 0, 114, 114, 114, 255 }, // 0x000027E8
	 { 363, 196, 491, 0, 0, 2048, 153, 153, 153, 255 }, // 0x000027F8
	 { 414, 196, 691, 0, 1059, 2048, 153, 153, 153, 255 }, // 0x00002808
	 { 414, 356, 691, 0, 1059, 410, 63, 63, 63, 255 }, // 0x00002818
	 { 363, 356, 491, 0, 0, 410, 102, 102, 102, 255 }, // 0x00002828
};

Vtx_t _spot18_room_0_vertices_00002838[4] = 
{
	 { 595, 400, 23, 0, -4859, 0, 204, 204, 204, 255 }, // 0x00002838
	 { 431, 396, -28, 0, -5011, 2048, 102, 102, 102, 255 }, // 0x00002848
	 { 363, 396, 491, 0, -2329, 2048, 102, 102, 102, 255 }, // 0x00002858
	 { 541, 400, 664, 0, -1569, 0, 204, 204, 204, 255 }, // 0x00002868
};

Vtx_t _spot18_room_0_vertices_00002878[4] = 
{
	 { 371, 456, 498, 0, 10240, 0, 212, 171, 123, 255 }, // 0x00002878
	 { 371, 396, 498, 0, 10240, 2048, 117, 100, 70, 255 }, // 0x00002888
	 { 441, 397, -31, 0, -7637, 2048, 117, 100, 70, 255 }, // 0x00002898
	 { 441, 457, -31, 0, -7637, 0, 212, 171, 123, 255 }, // 0x000028A8
};

Vtx_t _spot18_room_0_vertices_000028B8[8] = 
{
	 { 441, 457, -31, 0, 0, 0, 212, 171, 123, 255 }, // 0x000028B8
	 { 441, 397, -31, 0, 0, 2048, 117, 100, 70, 255 }, // 0x000028C8
	 { 317, 396, -168, 0, 6144, 2048, 117, 100, 70, 255 }, // 0x000028D8
	 { 317, 456, -168, 0, 6144, 0, 212, 171, 123, 255 }, // 0x000028E8
	 { 250, 456, 530, 0, -2048, 0, 212, 171, 123, 255 }, // 0x000028F8
	 { 250, 396, 530, 0, -2048, 2048, 117, 100, 70, 255 }, // 0x00002908
	 { 371, 396, 498, 0, 2048, 2048, 117, 100, 70, 255 }, // 0x00002918
	 { 371, 456, 498, 0, 2048, 0, 212, 171, 123, 255 }, // 0x00002928
};

Vtx_t _spot18_room_0_vertices_00002938[6] = 
{
	 { -130, 397, -386, 0, -363, -2048, 102, 102, 102, 255 }, // 0x00002938
	 { -130, 197, -386, 0, -363, 0, 51, 51, 51, 255 }, // 0x00002948
	 { 105, 197, -385, 0, 1263, 0, 51, 51, 51, 255 }, // 0x00002958
	 { 105, 397, -385, 0, 1263, -2048, 127, 127, 127, 255 }, // 0x00002968
	 { -130, 600, -386, 0, -363, -4132, 165, 165, 165, 255 }, // 0x00002978
	 { 105, 597, -385, 0, 1263, -4096, 114, 114, 114, 255 }, // 0x00002988
};

Vtx_t _spot18_room_0_vertices_00002998[4] = 
{
	 { 595, 400, 23, 0, -4859, 0, 204, 204, 204, 255 }, // 0x00002998
	 { 431, 396, -28, 0, -5011, 2048, 102, 102, 102, 255 }, // 0x000029A8
	 { 363, 396, 491, 0, -2329, 2048, 102, 102, 102, 255 }, // 0x000029B8
	 { 541, 400, 664, 0, -1569, 0, 204, 204, 204, 255 }, // 0x000029C8
};

Vtx_t _spot18_room_0_vertices_000029D8[21] = 
{
	 { -64, 518, 204, 0, 5672, 0, 51, 51, 51, 255 }, // 0x000029D8
	 { -299, 556, 63, 0, -4424, 0, 51, 51, 51, 255 }, // 0x000029E8
	 { -311, 561, 66, 0, -4790, 449, 216, 216, 216, 255 }, // 0x000029F8
	 { -302, 564, 76, 0, -4282, 1024, 242, 242, 242, 255 }, // 0x00002A08
	 { -70, 527, 217, 0, 5579, 1024, 242, 242, 242, 255 }, // 0x00002A18
	 { -299, 556, 63, 0, 3710, 0, 51, 51, 51, 255 }, // 0x00002A28
	 { -577, 596, 118, 0, -8085, 0, 51, 51, 51, 255 }, // 0x00002A38
	 { -576, 604, 131, 0, -8190, 1024, 242, 242, 242, 255 }, // 0x00002A48
	 { -302, 564, 76, 0, 3995, 1024, 242, 242, 242, 255 }, // 0x00002A58
	 { -299, 556, 63, 0, 7099, 0, 51, 51, 51, 255 }, // 0x00002A68
	 { -600, 596, -312, 0, -12800, 0, 51, 51, 51, 255 }, // 0x00002A78
	 { -599, 604, -292, 0, -12134, 1024, 242, 242, 242, 255 }, // 0x00002A88
	 { -302, 564, 76, 0, 6856, 1024, 242, 242, 242, 255 }, // 0x00002A98
	 { 9, 595, 615, 0, 10527, 1024, 51, 51, 51, 255 }, // 0x00002AA8
	 { 21, 603, 614, 0, 10602, 11, 242, 242, 242, 255 }, // 0x00002AB8
	 { 15, 527, 313, 0, -5524, 11, 242, 242, 242, 255 }, // 0x00002AC8
	 { 0, 518, 313, 0, -5600, 1024, 51, 51, 51, 255 }, // 0x00002AD8
	 { 588, 604, 105, 0, -13976, 1024, 242, 242, 242, 255 }, // 0x00002AE8
	 { 72, 527, 210, 0, 9121, 1024, 242, 242, 242, 255 }, // 0x00002AF8
	 { 81, 518, 223, 0, 8927, 0, 51, 51, 51, 255 }, // 0x00002B08
	 { 587, 596, 117, 0, -13820, 0, 51, 51, 51, 255 }, // 0x00002B18
};

Vtx_t _spot18_room_0_vertices_00002B28[21] = 
{
	 { 9, 603, 615, 0, 10527, 1024, 242, 242, 242, 255 }, // 0x00002B28
	 { 21, 595, 614, 0, 10602, 11, 51, 51, 51, 255 }, // 0x00002B38
	 { 15, 518, 313, 0, -5524, 11, 51, 51, 51, 255 }, // 0x00002B48
	 { 0, 527, 313, 0, -5600, 1024, 242, 242, 242, 255 }, // 0x00002B58
	 { -299, 564, 63, 0, 7099, 0, 242, 242, 242, 255 }, // 0x00002B68
	 { -600, 604, -312, 0, -12800, 0, 242, 242, 242, 255 }, // 0x00002B78
	 { -599, 596, -292, 0, -12134, 1024, 51, 51, 51, 255 }, // 0x00002B88
	 { -302, 556, 76, 0, 6856, 1024, 51, 51, 51, 255 }, // 0x00002B98
	 { -299, 564, 63, 0, 3710, 0, 242, 242, 242, 255 }, // 0x00002BA8
	 { -577, 604, 118, 0, -8085, 0, 242, 242, 242, 255 }, // 0x00002BB8
	 { -576, 596, 131, 0, -8190, 1024, 51, 51, 51, 255 }, // 0x00002BC8
	 { -302, 556, 76, 0, 3995, 1024, 51, 51, 51, 255 }, // 0x00002BD8
	 { -64, 527, 204, 0, 5672, 0, 242, 242, 242, 255 }, // 0x00002BE8
	 { -299, 564, 63, 0, -4424, 0, 242, 242, 242, 255 }, // 0x00002BF8
	 { -311, 561, 66, 0, -4790, 449, 216, 216, 216, 255 }, // 0x00002C08
	 { -302, 556, 76, 0, -4282, 1024, 51, 51, 51, 255 }, // 0x00002C18
	 { -70, 518, 217, 0, 5579, 1024, 51, 51, 51, 255 }, // 0x00002C28
	 { 588, 596, 105, 0, -13976, 1024, 51, 51, 51, 255 }, // 0x00002C38
	 { 72, 518, 210, 0, 9121, 1024, 51, 51, 51, 255 }, // 0x00002C48
	 { 81, 527, 223, 0, 8927, 0, 242, 242, 242, 255 }, // 0x00002C58
	 { 587, 604, 117, 0, -13820, 0, 242, 242, 242, 255 }, // 0x00002C68
};

Vtx_t _spot18_room_0_vertices_00002C78[6] = 
{
	 { 88, 522, 235, 0, 246, 918, 153, 153, 153, 255 }, // 0x00002C78
	 { 42, 522, 162, 0, 30, 473, 178, 178, 178, 255 }, // 0x00002C88
	 { -44, 522, 166, 0, 283, 51, 178, 178, 178, 255 }, // 0x00002C98
	 { -84, 522, 243, 0, 754, 74, 153, 153, 153, 255 }, // 0x00002CA8
	 { -37, 522, 315, 0, 970, 520, 153, 153, 153, 255 }, // 0x00002CB8
	 { 49, 522, 311, 0, 716, 942, 153, 153, 153, 255 }, // 0x00002CC8
};

Vtx_t _spot18_room_0_vertices_00002CD8[18] = 
{
	 { 42, 522, 162, 0, 3650, 0, 178, 178, 178, 255 }, // 0x00002CD8
	 { 63, 475, 200, 0, 3209, 569, 76, 76, 76, 255 }, // 0x00002CE8
	 { -1, 475, 167, 0, 4092, 569, 76, 76, 76, 255 }, // 0x00002CF8
	 { -44, 522, 166, 0, 4523, 0, 178, 178, 178, 255 }, // 0x00002D08
	 { -61, 475, 206, 0, 4954, 569, 76, 76, 76, 255 }, // 0x00002D18
	 { -84, 522, 243, 0, 5392, 0, 153, 153, 153, 255 }, // 0x00002D28
	 { -84, 522, 243, 0, 18, 0, 153, 153, 153, 255 }, // 0x00002D38
	 { -58, 475, 277, 0, 453, 569, 76, 76, 76, 255 }, // 0x00002D48
	 { -37, 522, 315, 0, 907, 0, 153, 153, 153, 255 }, // 0x00002D58
	 { -58, 475, 277, 0, 5827, 569, 76, 76, 76, 255 }, // 0x00002D68
	 { 6, 475, 310, 0, 1360, 569, 76, 76, 76, 255 }, // 0x00002D78
	 { 88, 522, 235, 0, 2750, 0, 153, 153, 153, 255 }, // 0x00002D88
	 { 28, 544, 167, 0, 2808, 512, 204, 204, 204, 255 }, // 0x00002D98
	 { 28, 544, 185, 0, 2808, 0, 204, 204, 204, 255 }, // 0x00002DA8
	 { 35, 522, 184, 0, 2340, 0, 178, 178, 178, 255 }, // 0x00002DB8
	 { 35, 522, 166, 0, 2340, 512, 178, 178, 178, 255 }, // 0x00002DC8
	 { 10, 557, 168, 0, 3276, 512, 229, 229, 229, 255 }, // 0x00002DD8
	 { 11, 557, 186, 0, 3276, 0, 229, 229, 229, 255 }, // 0x00002DE8
};

Vtx_t _spot18_room_0_vertices_00002DF8[4] = 
{
	 { -12, 557, 169, 0, 0, 0, 229, 229, 229, 255 }, // 0x00002DF8
	 { -12, 557, 187, 0, 0, 1024, 229, 229, 229, 255 }, // 0x00002E08
	 { 11, 557, 186, 0, 1024, 1024, 229, 229, 229, 255 }, // 0x00002E18
	 { 10, 557, 168, 0, 1024, 0, 229, 229, 229, 255 }, // 0x00002E28
};

Vtx_t _spot18_room_0_vertices_00002E38[6] = 
{
	 { -30, 544, 169, 0, 4213, 512, 204, 204, 204, 255 }, // 0x00002E38
	 { -30, 544, 187, 0, 4213, 0, 204, 204, 204, 255 }, // 0x00002E48
	 { -12, 557, 187, 0, 3744, 0, 229, 229, 229, 255 }, // 0x00002E58
	 { -12, 557, 169, 0, 3744, 512, 229, 229, 229, 255 }, // 0x00002E68
	 { -37, 522, 170, 0, 4681, 512, 178, 178, 178, 255 }, // 0x00002E78
	 { -36, 522, 188, 0, 4681, 0, 178, 178, 178, 255 }, // 0x00002E88
};

Vtx_t _spot18_room_0_vertices_00002E98[18] = 
{
	 { 35, 522, 184, 0, 506, 978, 178, 178, 178, 255 }, // 0x00002E98
	 { 28, 544, 185, 0, 772, 890, 204, 204, 204, 255 }, // 0x00002EA8
	 { 11, 557, 186, 0, 936, 662, 229, 229, 229, 255 }, // 0x00002EB8
	 { -12, 557, 187, 0, 936, 379, 229, 229, 229, 255 }, // 0x00002EC8
	 { -30, 544, 187, 0, 772, 151, 204, 204, 204, 255 }, // 0x00002ED8
	 { -36, 522, 188, 0, 506, 63, 178, 178, 178, 255 }, // 0x00002EE8
	 { -37, 522, 170, 0, 506, 63, 178, 178, 178, 255 }, // 0x00002EF8
	 { -30, 544, 169, 0, 772, 151, 204, 204, 204, 255 }, // 0x00002F08
	 { -12, 557, 169, 0, 936, 379, 229, 229, 229, 255 }, // 0x00002F18
	 { 10, 557, 168, 0, 936, 662, 229, 229, 229, 255 }, // 0x00002F28
	 { 28, 544, 167, 0, 772, 890, 204, 204, 204, 255 }, // 0x00002F38
	 { 35, 522, 166, 0, 506, 978, 178, 178, 178, 255 }, // 0x00002F48
	 { 6, 475, 310, 0, 926, 520, 76, 76, 76, 255 }, // 0x00002F58
	 { -58, 475, 277, 0, 730, 140, 76, 76, 76, 255 }, // 0x00002F68
	 { 2, 436, 239, 0, 499, 500, 51, 51, 51, 255 }, // 0x00002F78
	 { -61, 475, 206, 0, 303, 120, 76, 76, 76, 255 }, // 0x00002F88
	 { -1, 475, 167, 0, 72, 480, 76, 76, 76, 255 }, // 0x00002F98
	 { 63, 475, 200, 0, 268, 860, 76, 76, 76, 255 }, // 0x00002FA8
};

Vtx_t _spot18_room_0_vertices_00002FB8[3] = 
{
	 { 800, 680, 263, 0, -180, 884, 191, 191, 191, 255 }, // 0x00002FB8
	 { 808, 680, 277, 0, 1226, 884, 191, 191, 191, 255 }, // 0x00002FC8
	 { 816, 680, 263, 0, 523, -207, 191, 191, 191, 255 }, // 0x00002FD8
};

Vtx_t _spot18_room_0_vertices_00002FE8[5] = 
{
	 { 800, 680, 263, 0, 211, 0, 191, 191, 191, 255 }, // 0x00002FE8
	 { 800, 592, 272, 0, 403, 1024, 191, 191, 191, 255 }, // 0x00002FF8
	 { 808, 680, 277, 0, 593, 0, 191, 191, 191, 255 }, // 0x00003008
	 { 808, 592, 258, 0, 19, 1024, 191, 191, 191, 255 }, // 0x00003018
	 { 816, 592, 272, 0, 785, 1024, 191, 191, 191, 255 }, // 0x00003028
};

Vtx_t _spot18_room_0_vertices_00003038[3] = 
{
	 { 816, 680, 423, 0, -180, 884, 191, 191, 191, 255 }, // 0x00003038
	 { 808, 680, 409, 0, 1226, 884, 191, 191, 191, 255 }, // 0x00003048
	 { 800, 680, 423, 0, 523, -207, 191, 191, 191, 255 }, // 0x00003058
};

Vtx_t _spot18_room_0_vertices_00003068[5] = 
{
	 { 808, 680, 409, 0, 593, 0, 191, 191, 191, 255 }, // 0x00003068
	 { 816, 592, 414, 0, 403, 1024, 191, 191, 191, 255 }, // 0x00003078
	 { 800, 592, 414, 0, 785, 1024, 191, 191, 191, 255 }, // 0x00003088
	 { 800, 680, 423, 0, 975, 0, 191, 191, 191, 255 }, // 0x00003098
	 { 808, 592, 428, 0, 1165, 1024, 191, 191, 191, 255 }, // 0x000030A8
};

Vtx_t _spot18_room_0_vertices_000030B8[3] = 
{
	 { 597, 480, 183, 0, -180, 884, 178, 178, 178, 255 }, // 0x000030B8
	 { 589, 480, 169, 0, 1226, 884, 178, 178, 178, 255 }, // 0x000030C8
	 { 581, 480, 183, 0, 523, -207, 178, 178, 178, 255 }, // 0x000030D8
};

Vtx_t _spot18_room_0_vertices_000030E8[5] = 
{
	 { 589, 480, 169, 0, 593, 0, 178, 178, 178, 255 }, // 0x000030E8
	 { 597, 400, 174, 0, 403, 1024, 165, 165, 165, 255 }, // 0x000030F8
	 { 581, 400, 174, 0, 785, 1024, 165, 165, 165, 255 }, // 0x00003108
	 { 581, 480, 183, 0, 975, 0, 178, 178, 178, 255 }, // 0x00003118
	 { 589, 400, 188, 0, 1165, 1024, 165, 165, 165, 255 }, // 0x00003128
};

Vtx_t _spot18_room_0_vertices_00003138[3] = 
{
	 { 595, 480, 23, 0, -180, 884, 178, 178, 178, 255 }, // 0x00003138
	 { 603, 480, 37, 0, 1226, 884, 178, 178, 178, 255 }, // 0x00003148
	 { 611, 480, 23, 0, 523, -207, 178, 178, 178, 255 }, // 0x00003158
};

Vtx_t _spot18_room_0_vertices_00003168[5] = 
{
	 { 595, 480, 23, 0, 211, 0, 178, 178, 178, 255 }, // 0x00003168
	 { 595, 400, 32, 0, 403, 1024, 165, 165, 165, 255 }, // 0x00003178
	 { 603, 480, 37, 0, 593, 0, 178, 178, 178, 255 }, // 0x00003188
	 { 603, 400, 18, 0, 19, 1024, 165, 165, 165, 255 }, // 0x00003198
	 { 611, 400, 32, 0, 785, 1024, 165, 165, 165, 255 }, // 0x000031A8
};

Vtx_t _spot18_room_0_vertices_000031B8[8] = 
{
	 { -826, 196, -659, 0, 0, 0, 0, 0, 0, 0 }, // 0x000031B8
	 { 1120, 196, -659, 0, 0, 0, 0, 0, 0, 0 }, // 0x000031C8
	 { -826, 1000, -659, 0, 0, 0, 0, 0, 0, 0 }, // 0x000031D8
	 { 1120, 1000, -659, 0, 0, 0, 0, 0, 0, 0 }, // 0x000031E8
	 { -826, 196, 1000, 0, 0, 0, 0, 0, 0, 0 }, // 0x000031F8
	 { 1120, 196, 1000, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003208
	 { -826, 1000, 1000, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003218
	 { 1120, 1000, 1000, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003228
};

Gfx _spot18_room_0_dlist_00003238[] =
{
	gsDPPipeSync(), // 0x00003238
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003240
	gsSPVertex(_spot18_room_0_vertices_000031B8, 8, 0), // 0x00003248
	gsSPCullDisplayList(0, 7), // 0x00003250
	gsDPPipeSync(), // 0x00003258
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003260
	gsDPPipeSync(), // 0x00003268
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003270
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003278
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00009960), // 0x00003280
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00003288
	gsDPLoadSync(), // 0x00003290
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003298
	gsDPPipeSync(), // 0x000032A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x000032A8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000032B0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000032B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000032C0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000032C8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000032D0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000032D8
	gsSPVertex(_spot18_room_0_vertices_000019A8, 4, 0), // 0x000032E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000032E8
	gsDPPipeSync(), // 0x000032F0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000032F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000C160), // 0x00003300
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003308
	gsDPLoadSync(), // 0x00003310
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003318
	gsDPPipeSync(), // 0x00003320
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003328
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003330
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x00003338
	gsDPTileSync(), // 0x00003340
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003348
	gsDPLoadSync(), // 0x00003350
	gsDPLoadTLUTCmd(7, 255), // 0x00003358
	gsDPPipeSync(), // 0x00003360
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003368
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003370
	gsSPVertex(_spot18_room_0_vertices_000019E8, 3, 0), // 0x00003378
	gsSP1Triangle(0, 1, 2, 0), // 0x00003380
	gsDPPipeSync(), // 0x00003388
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00003390
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003398
	gsDPLoadSync(), // 0x000033A0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000033A8
	gsDPPipeSync(), // 0x000033B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000033B8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000033C0
	gsSPVertex(_spot18_room_0_vertices_00001A18, 10, 0), // 0x000033C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000033D0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000033D8
	gsSP2Triangles(6, 0, 8, 0, 6, 8, 9, 0), // 0x000033E0
	gsDPPipeSync(), // 0x000033E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00009160), // 0x000033F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000033F8
	gsDPLoadSync(), // 0x00003400
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003408
	gsDPPipeSync(), // 0x00003410
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003418
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003420
	gsSPVertex(_spot18_room_0_vertices_00001AB8, 4, 0), // 0x00003428
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003430
	gsDPPipeSync(), // 0x00003438
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000B960), // 0x00003440
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003448
	gsDPLoadSync(), // 0x00003450
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003458
	gsDPPipeSync(), // 0x00003460
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003468
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003470
	gsSPVertex(_spot18_room_0_vertices_00001AF8, 6, 0), // 0x00003478
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00003480
	gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0), // 0x00003488
	gsDPPipeSync(), // 0x00003490
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00003498
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000034A0
	gsDPLoadSync(), // 0x000034A8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000034B0
	gsDPPipeSync(), // 0x000034B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000034C0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000034C8
	gsSPVertex(_spot18_room_0_vertices_00001B58, 4, 0), // 0x000034D0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x000034D8
	gsDPPipeSync(), // 0x000034E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00006960), // 0x000034E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000034F0
	gsDPLoadSync(), // 0x000034F8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003500
	gsDPPipeSync(), // 0x00003508
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003510
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003518
	gsSPVertex(_spot18_room_0_vertices_00001B98, 4, 0), // 0x00003520
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003528
	gsDPPipeSync(), // 0x00003530
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000C160), // 0x00003538
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003540
	gsDPLoadSync(), // 0x00003548
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003550
	gsDPPipeSync(), // 0x00003558
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003560
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003568
	gsSPVertex(_spot18_room_0_vertices_00001BD8, 4, 0), // 0x00003570
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003578
	gsDPPipeSync(), // 0x00003580
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000B960), // 0x00003588
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003590
	gsDPLoadSync(), // 0x00003598
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000035A0
	gsDPPipeSync(), // 0x000035A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000035B0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000035B8
	gsSPVertex(_spot18_room_0_vertices_00001C18, 4, 0), // 0x000035C0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000035C8
	gsDPPipeSync(), // 0x000035D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00008960), // 0x000035D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000035E0
	gsDPLoadSync(), // 0x000035E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000035F0
	gsDPPipeSync(), // 0x000035F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003600
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003608
	gsSPVertex(_spot18_room_0_vertices_00001C58, 3, 0), // 0x00003610
	gsSP1Triangle(0, 1, 2, 0), // 0x00003618
	gsDPPipeSync(), // 0x00003620
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000C160), // 0x00003628
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003630
	gsDPLoadSync(), // 0x00003638
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003640
	gsDPPipeSync(), // 0x00003648
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003650
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003658
	gsSPVertex(_spot18_room_0_vertices_00001C88, 4, 0), // 0x00003660
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003668
	gsDPPipeSync(), // 0x00003670
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003678
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00005960), // 0x00003680
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003688
	gsDPLoadSync(), // 0x00003690
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003698
	gsDPPipeSync(), // 0x000036A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000036A8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000036B0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000036B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000036C0
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000036C8
	gsSPVertex(_spot18_room_0_vertices_00001CC8, 4, 0), // 0x000036D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000036D8
	gsDPPipeSync(), // 0x000036E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000036E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x000036F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000036F8
	gsDPLoadSync(), // 0x00003700
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003708
	gsDPPipeSync(), // 0x00003710
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003718
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003720
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x00003728
	gsDPTileSync(), // 0x00003730
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003738
	gsDPLoadSync(), // 0x00003740
	gsDPLoadTLUTCmd(7, 255), // 0x00003748
	gsDPPipeSync(), // 0x00003750
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003758
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003760
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00003768
	gsSPVertex(_spot18_room_0_vertices_00001D08, 4, 0), // 0x00003770
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003778
	gsDPPipeSync(), // 0x00003780
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000B960), // 0x00003788
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003790
	gsDPLoadSync(), // 0x00003798
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000037A0
	gsDPPipeSync(), // 0x000037A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000037B0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000037B8
	gsSPVertex(_spot18_room_0_vertices_00001D48, 4, 0), // 0x000037C0
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0), // 0x000037C8
	gsDPPipeSync(), // 0x000037D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00006960), // 0x000037D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000037E0
	gsDPLoadSync(), // 0x000037E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000037F0
	gsDPPipeSync(), // 0x000037F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003800
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003808
	gsSPVertex(_spot18_room_0_vertices_00001D88, 6, 0), // 0x00003810
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003818
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0), // 0x00003820
	gsDPPipeSync(), // 0x00003828
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000B160), // 0x00003830
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003838
	gsDPLoadSync(), // 0x00003840
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003848
	gsDPPipeSync(), // 0x00003850
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003858
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003860
	gsSPVertex(_spot18_room_0_vertices_00001DE8, 5, 0), // 0x00003868
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00003870
	gsSP1Triangle(4, 3, 1, 0), // 0x00003878
	gsDPPipeSync(), // 0x00003880
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000C160), // 0x00003888
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003890
	gsDPLoadSync(), // 0x00003898
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000038A0
	gsDPPipeSync(), // 0x000038A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000038B0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000038B8
	gsSPVertex(_spot18_room_0_vertices_00001E38, 7, 0), // 0x000038C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000038C8
	gsSP2Triangles(4, 3, 5, 0, 4, 5, 6, 0), // 0x000038D0
	gsDPPipeSync(), // 0x000038D8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000038E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00007960), // 0x000038E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x000038F0
	gsDPLoadSync(), // 0x000038F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003900
	gsDPPipeSync(), // 0x00003908
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00003910
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003918
	gsSPVertex(_spot18_room_0_vertices_00001EA8, 4, 0), // 0x00003920
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003928
	gsDPPipeSync(), // 0x00003930
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00008160), // 0x00003938
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003940
	gsDPLoadSync(), // 0x00003948
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003950
	gsDPPipeSync(), // 0x00003958
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003960
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003968
	gsSPVertex(_spot18_room_0_vertices_00001EE8, 16, 0), // 0x00003970
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003978
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003980
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003988
	gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0), // 0x00003990
	gsDPPipeSync(), // 0x00003998
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00007960), // 0x000039A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x000039A8
	gsDPLoadSync(), // 0x000039B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000039B8
	gsDPPipeSync(), // 0x000039C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x000039C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000039D0
	gsSPVertex(_spot18_room_0_vertices_00001FE8, 4, 0), // 0x000039D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000039E0
	gsDPPipeSync(), // 0x000039E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00008160), // 0x000039F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000039F8
	gsDPLoadSync(), // 0x00003A00
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003A08
	gsDPPipeSync(), // 0x00003A10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003A18
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003A20
	gsSPVertex(_spot18_room_0_vertices_00002028, 3, 0), // 0x00003A28
	gsSP1Triangle(0, 1, 2, 0), // 0x00003A30
	gsDPPipeSync(), // 0x00003A38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00007960), // 0x00003A40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00003A48
	gsDPLoadSync(), // 0x00003A50
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003A58
	gsDPPipeSync(), // 0x00003A60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00003A68
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003A70
	gsSPVertex(_spot18_room_0_vertices_00002058, 4, 0), // 0x00003A78
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003A80
	gsDPPipeSync(), // 0x00003A88
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00008160), // 0x00003A90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003A98
	gsDPLoadSync(), // 0x00003AA0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003AA8
	gsDPPipeSync(), // 0x00003AB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003AB8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003AC0
	gsSPVertex(_spot18_room_0_vertices_00002098, 8, 0), // 0x00003AC8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003AD0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003AD8
	gsDPPipeSync(), // 0x00003AE0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00005960), // 0x00003AE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003AF0
	gsDPLoadSync(), // 0x00003AF8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003B00
	gsDPPipeSync(), // 0x00003B08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003B10
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003B18
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003B20
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00003B28
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00003B30
	gsSPVertex(_spot18_room_0_vertices_00002118, 4, 0), // 0x00003B38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003B40
	gsDPPipeSync(), // 0x00003B48
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003B50
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000B960), // 0x00003B58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003B60
	gsDPLoadSync(), // 0x00003B68
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003B70
	gsDPPipeSync(), // 0x00003B78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003B80
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003B88
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x00003B90
	gsDPTileSync(), // 0x00003B98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003BA0
	gsDPLoadSync(), // 0x00003BA8
	gsDPLoadTLUTCmd(7, 255), // 0x00003BB0
	gsDPPipeSync(), // 0x00003BB8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003BC0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003BC8
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00003BD0
	gsSPVertex(_spot18_room_0_vertices_00002158, 7, 0), // 0x00003BD8
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x00003BE0
	gsSP2Triangles(4, 1, 5, 0, 0, 2, 6, 0), // 0x00003BE8
	gsSP1Triangle(1, 4, 3, 0), // 0x00003BF0
	gsDPPipeSync(), // 0x00003BF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00003C00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003C08
	gsDPLoadSync(), // 0x00003C10
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003C18
	gsDPPipeSync(), // 0x00003C20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003C28
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003C30
	gsSPVertex(_spot18_room_0_vertices_000021C8, 15, 0), // 0x00003C38
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00003C40
	gsSP2Triangles(0, 4, 3, 0, 5, 0, 6, 0), // 0x00003C48
	gsSP2Triangles(7, 6, 0, 0, 7, 0, 8, 0), // 0x00003C50
	gsSP2Triangles(0, 5, 9, 0, 0, 10, 4, 0), // 0x00003C58
	gsSP2Triangles(0, 9, 10, 0, 0, 11, 8, 0), // 0x00003C60
	gsSP2Triangles(0, 12, 11, 0, 0, 13, 12, 0), // 0x00003C68
	gsSP2Triangles(0, 14, 13, 0, 0, 2, 14, 0), // 0x00003C70
	gsDPPipeSync(), // 0x00003C78
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00003C80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003C88
	gsDPLoadSync(), // 0x00003C90
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003C98
	gsDPPipeSync(), // 0x00003CA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003CA8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003CB0
	gsSPVertex(_spot18_room_0_vertices_000022B8, 8, 0), // 0x00003CB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003CC0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003CC8
	gsDPPipeSync(), // 0x00003CD0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00003CD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003CE0
	gsDPLoadSync(), // 0x00003CE8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003CF0
	gsDPPipeSync(), // 0x00003CF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003D00
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003D08
	gsSPVertex(_spot18_room_0_vertices_00002338, 4, 0), // 0x00003D10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003D18
	gsDPPipeSync(), // 0x00003D20
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00003D28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003D30
	gsDPLoadSync(), // 0x00003D38
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003D40
	gsDPPipeSync(), // 0x00003D48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003D50
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003D58
	gsSPVertex(_spot18_room_0_vertices_00002378, 8, 0), // 0x00003D60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003D68
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003D70
	gsDPPipeSync(), // 0x00003D78
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00003D80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003D88
	gsDPLoadSync(), // 0x00003D90
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003D98
	gsDPPipeSync(), // 0x00003DA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003DA8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003DB0
	gsSPVertex(_spot18_room_0_vertices_000023F8, 4, 0), // 0x00003DB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003DC0
	gsDPPipeSync(), // 0x00003DC8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00003DD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003DD8
	gsDPLoadSync(), // 0x00003DE0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003DE8
	gsDPPipeSync(), // 0x00003DF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003DF8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003E00
	gsSPVertex(_spot18_room_0_vertices_00002438, 4, 0), // 0x00003E08
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003E10
	gsDPPipeSync(), // 0x00003E18
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00003E20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003E28
	gsDPLoadSync(), // 0x00003E30
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003E38
	gsDPPipeSync(), // 0x00003E40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003E48
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003E50
	gsSPVertex(_spot18_room_0_vertices_00002478, 4, 0), // 0x00003E58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003E60
	gsDPPipeSync(), // 0x00003E68
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00003E70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003E78
	gsDPLoadSync(), // 0x00003E80
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003E88
	gsDPPipeSync(), // 0x00003E90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003E98
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003EA0
	gsSPVertex(_spot18_room_0_vertices_000024B8, 8, 0), // 0x00003EA8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003EB0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003EB8
	gsDPPipeSync(), // 0x00003EC0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00003EC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003ED0
	gsDPLoadSync(), // 0x00003ED8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003EE0
	gsDPPipeSync(), // 0x00003EE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003EF0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003EF8
	gsSPVertex(_spot18_room_0_vertices_00002538, 4, 0), // 0x00003F00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003F08
	gsDPPipeSync(), // 0x00003F10
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00003F18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003F20
	gsDPLoadSync(), // 0x00003F28
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003F30
	gsDPPipeSync(), // 0x00003F38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003F40
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003F48
	gsSPVertex(_spot18_room_0_vertices_00002578, 4, 0), // 0x00003F50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003F58
	gsDPPipeSync(), // 0x00003F60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00003F68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003F70
	gsDPLoadSync(), // 0x00003F78
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003F80
	gsDPPipeSync(), // 0x00003F88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003F90
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003F98
	gsSPVertex(_spot18_room_0_vertices_000025B8, 4, 0), // 0x00003FA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003FA8
	gsDPPipeSync(), // 0x00003FB0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00003FB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003FC0
	gsDPLoadSync(), // 0x00003FC8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003FD0
	gsDPPipeSync(), // 0x00003FD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003FE0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003FE8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00003FF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003FF8
	gsDPLoadSync(), // 0x00004000
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004008
	gsDPPipeSync(), // 0x00004010
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00004018
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004020
	gsSPVertex(_spot18_room_0_vertices_000025F8, 4, 0), // 0x00004028
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004030
	gsDPPipeSync(), // 0x00004038
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00004040
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004048
	gsDPLoadSync(), // 0x00004050
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004058
	gsDPPipeSync(), // 0x00004060
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004068
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004070
	gsSPVertex(_spot18_room_0_vertices_00002638, 4, 0), // 0x00004078
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004080
	gsDPPipeSync(), // 0x00004088
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A160), // 0x00004090
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004098
	gsDPLoadSync(), // 0x000040A0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000040A8
	gsDPPipeSync(), // 0x000040B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000040B8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000040C0
	gsSPVertex(_spot18_room_0_vertices_00002678, 8, 0), // 0x000040C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000040D0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000040D8
	gsDPPipeSync(), // 0x000040E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00009160), // 0x000040E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000040F0
	gsDPLoadSync(), // 0x000040F8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004100
	gsDPPipeSync(), // 0x00004108
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004110
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004118
	gsSPVertex(_spot18_room_0_vertices_000026F8, 4, 0), // 0x00004120
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004128
	gsDPPipeSync(), // 0x00004130
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x00004138
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00004140
	gsDPLoadSync(), // 0x00004148
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004150
	gsDPPipeSync(), // 0x00004158
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00004160
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004168
	gsSPVertex(_spot18_room_0_vertices_00002738, 4, 0), // 0x00004170
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004178
	gsDPPipeSync(), // 0x00004180
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00004188
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004190
	gsDPLoadSync(), // 0x00004198
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000041A0
	gsDPPipeSync(), // 0x000041A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000041B0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000041B8
	gsSPVertex(_spot18_room_0_vertices_00002778, 4, 0), // 0x000041C0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000041C8
	gsDPPipeSync(), // 0x000041D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000A960), // 0x000041D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000041E0
	gsDPLoadSync(), // 0x000041E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000041F0
	gsDPPipeSync(), // 0x000041F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00004200
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004208
	gsSPVertex(_spot18_room_0_vertices_000027B8, 8, 0), // 0x00004210
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004218
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004220
	gsDPPipeSync(), // 0x00004228
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000B160), // 0x00004230
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00004238
	gsDPLoadSync(), // 0x00004240
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004248
	gsDPPipeSync(), // 0x00004250
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00004258
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004260
	gsSPVertex(_spot18_room_0_vertices_00002838, 4, 0), // 0x00004268
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004270
	gsDPPipeSync(), // 0x00004278
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004280
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000C960), // 0x00004288
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 6, 0), // 0x00004290
	gsDPLoadSync(), // 0x00004298
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000042A0
	gsDPPipeSync(), // 0x000042A8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 6, 0, 0, 6, 0), // 0x000042B0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000042B8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000042C0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000042C8
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000042D0
	gsSPVertex(_spot18_room_0_vertices_00002878, 4, 0), // 0x000042D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000042E0
	gsDPPipeSync(), // 0x000042E8
	gsDPSetCombineLERP(TEXEL0, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x000042F0
	gsSPVertex(_spot18_room_0_vertices_000028B8, 8, 0), // 0x000042F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004300
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004308
	gsDPPipeSync(), // 0x00004310
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004318
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00009160), // 0x00004320
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004328
	gsDPLoadSync(), // 0x00004330
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004338
	gsDPPipeSync(), // 0x00004340
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004348
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004350
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x00004358
	gsDPTileSync(), // 0x00004360
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004368
	gsDPLoadSync(), // 0x00004370
	gsDPLoadTLUTCmd(7, 255), // 0x00004378
	gsDPPipeSync(), // 0x00004380
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004388
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004390
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00004398
	gsSPVertex(_spot18_room_0_vertices_00002938, 6, 0), // 0x000043A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000043A8
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x000043B0
	gsDPPipeSync(), // 0x000043B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000B160), // 0x000043C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000043C8
	gsDPLoadSync(), // 0x000043D0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000043D8
	gsDPPipeSync(), // 0x000043E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000043E8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000043F0
	gsSPVertex(_spot18_room_0_vertices_00002998, 4, 0), // 0x000043F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004400
	gsDPPipeSync(), // 0x00004408
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004410
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00007160), // 0x00004418
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x00004420
	gsDPLoadSync(), // 0x00004428
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004430
	gsDPPipeSync(), // 0x00004438
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x00004440
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004448
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004450
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004458
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00004460
	gsSPVertex(_spot18_room_0_vertices_000029D8, 21, 0), // 0x00004468
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004470
	gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0), // 0x00004478
	gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0), // 0x00004480
	gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0), // 0x00004488
	gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0), // 0x00004490
	gsSP1Triangle(17, 19, 20, 0), // 0x00004498
	gsSPVertex(_spot18_room_0_vertices_00002B28, 21, 0), // 0x000044A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000044A8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000044B0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000044B8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000044C0
	gsSP2Triangles(12, 15, 16, 0, 17, 18, 19, 0), // 0x000044C8
	gsSP1Triangle(17, 19, 20, 0), // 0x000044D0
	gsDPPipeSync(), // 0x000044D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x000044E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000044E8
	gsDPLoadSync(), // 0x000044F0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000044F8
	gsDPPipeSync(), // 0x00004500
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004508
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004510
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004518
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004520
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00004528
	gsSPVertex(_spot18_room_0_vertices_00002C78, 6, 0), // 0x00004530
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004538
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00004540
	gsDPPipeSync(), // 0x00004548
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00008160), // 0x00004550
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004558
	gsDPLoadSync(), // 0x00004560
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004568
	gsDPPipeSync(), // 0x00004570
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004578
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004580
	gsSPVertex(_spot18_room_0_vertices_00002CD8, 18, 0), // 0x00004588
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004590
	gsSP2Triangles(2, 4, 3, 0, 3, 4, 5, 0), // 0x00004598
	gsSP2Triangles(6, 7, 8, 0, 5, 4, 9, 0), // 0x000045A0
	gsSP2Triangles(8, 7, 10, 0, 11, 1, 0, 0), // 0x000045A8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000045B0
	gsSP2Triangles(16, 17, 13, 0, 16, 13, 12, 0), // 0x000045B8
	gsDPPipeSync(), // 0x000045C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00004960), // 0x000045C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000045D0
	gsDPLoadSync(), // 0x000045D8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000045E0
	gsDPPipeSync(), // 0x000045E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000045F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000045F8
	gsSPVertex(_spot18_room_0_vertices_00002DF8, 4, 0), // 0x00004600
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004608
	gsDPPipeSync(), // 0x00004610
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00008160), // 0x00004618
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004620
	gsDPLoadSync(), // 0x00004628
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004630
	gsDPPipeSync(), // 0x00004638
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004640
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004648
	gsSPVertex(_spot18_room_0_vertices_00002E38, 6, 0), // 0x00004650
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004658
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0), // 0x00004660
	gsDPPipeSync(), // 0x00004668
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x00004670
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004678
	gsDPLoadSync(), // 0x00004680
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004688
	gsDPPipeSync(), // 0x00004690
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004698
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000046A0
	gsSPVertex(_spot18_room_0_vertices_00002E98, 18, 0), // 0x000046A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000046B0
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x000046B8
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x000046C0
	gsSP2Triangles(6, 9, 10, 0, 6, 10, 11, 0), // 0x000046C8
	gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0), // 0x000046D0
	gsSP2Triangles(15, 16, 14, 0, 16, 17, 14, 0), // 0x000046D8
	gsSPVertex(_spot18_room_0_vertices_00002FB8, 3, 0), // 0x000046E0
	gsSP1Triangle(0, 1, 2, 0), // 0x000046E8
	gsDPPipeSync(), // 0x000046F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00005560), // 0x000046F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x00004700
	gsDPLoadSync(), // 0x00004708
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004710
	gsDPPipeSync(), // 0x00004718
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00004720
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00004728
	gsSPVertex(_spot18_room_0_vertices_00002FE8, 5, 0), // 0x00004730
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00004738
	gsSP1Triangle(2, 1, 4, 0), // 0x00004740
	gsDPPipeSync(), // 0x00004748
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x00004750
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004758
	gsDPLoadSync(), // 0x00004760
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004768
	gsDPPipeSync(), // 0x00004770
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004778
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004780
	gsSPVertex(_spot18_room_0_vertices_00003038, 3, 0), // 0x00004788
	gsSP1Triangle(0, 1, 2, 0), // 0x00004790
	gsDPPipeSync(), // 0x00004798
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00005560), // 0x000047A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x000047A8
	gsDPLoadSync(), // 0x000047B0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000047B8
	gsDPPipeSync(), // 0x000047C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x000047C8
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x000047D0
	gsSPVertex(_spot18_room_0_vertices_00003068, 5, 0), // 0x000047D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000047E0
	gsSP1Triangle(2, 4, 3, 0), // 0x000047E8
	gsDPPipeSync(), // 0x000047F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x000047F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004800
	gsDPLoadSync(), // 0x00004808
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004810
	gsDPPipeSync(), // 0x00004818
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004820
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004828
	gsSPVertex(_spot18_room_0_vertices_000030B8, 3, 0), // 0x00004830
	gsSP1Triangle(0, 1, 2, 0), // 0x00004838
	gsDPPipeSync(), // 0x00004840
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00005160), // 0x00004848
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x00004850
	gsDPLoadSync(), // 0x00004858
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004860
	gsDPPipeSync(), // 0x00004868
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00004870
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00004878
	gsSPVertex(_spot18_room_0_vertices_000030E8, 5, 0), // 0x00004880
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004888
	gsSP1Triangle(2, 4, 3, 0), // 0x00004890
	gsDPPipeSync(), // 0x00004898
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x000048A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000048A8
	gsDPLoadSync(), // 0x000048B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000048B8
	gsDPPipeSync(), // 0x000048C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000048C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000048D0
	gsSPVertex(_spot18_room_0_vertices_00003138, 3, 0), // 0x000048D8
	gsSP1Triangle(0, 1, 2, 0), // 0x000048E0
	gsDPPipeSync(), // 0x000048E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_00005160), // 0x000048F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x000048F8
	gsDPLoadSync(), // 0x00004900
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004908
	gsDPPipeSync(), // 0x00004910
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00004918
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00004920
	gsSPVertex(_spot18_room_0_vertices_00003168, 5, 0), // 0x00004928
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00004930
	gsSP1Triangle(2, 1, 4, 0), // 0x00004938
	gsSPEndDisplayList(), // 0x00004940
};

static u8 unaccounted4948[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x32, 0x38, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 _spot18_room_0_tex_00004960[] = 
{
	0x520B5A4B628D628D, 0x72D15A4D73115A4D, 0x520B520B628D6ACF, 0x5A4D6ACF7B115A4D,  // 0x00004960 
	0x5A4D6A8F628F72CF, 0x7B116A8D83517B51, 0x8BD7839583537B11, 0x6ACF72CF93D56ACF,  // 0x00004980 
	0x4A0B5A4D72CF5A4D, 0x7B1172CF6A8F5A4D, 0x5A4D520B6A8F6ACF, 0x5A4D6A8D8B936A8F,  // 0x000049A0 
	0x5A4D624D624D8393, 0x8351624D6A8D72D1, 0x8BD5839583957B11, 0x6A8F7B538B936A8F,  // 0x000049C0 
	0x49CB624D72D16ACF, 0x7B1173115A0D5A4D, 0x5A4D520B5A4D6ACF, 0x628D72CF8B936ACF,  // 0x000049E0 
	0x520B6A8F520B6ACF, 0x83535A4D5A0D6A8F, 0x7B517B1183538353, 0x72D17B1173116ACF,  // 0x00004A00 
	0x520B6ACF72CF6ACF, 0x83537B515A4B5A4D, 0x5A0B5A0B624D5A4D, 0x6A8F72D17B116ACF,  // 0x00004A20 
	0x5A4D72CF72CF628D, 0x72CF6A8F520B5A4D, 0x7B5183537B117B11, 0x6ACF6A8F8B936ACF,  // 0x00004A40 
	0x5A4D731172CF72CF, 0x83538353624D5A0D, 0x49CB520B5A4D5A4D, 0x839572D17B116A8D,  // 0x00004A60 
	0x5A4D73117B116A8F, 0x7B11628D5A0B624D, 0x7B117B1172D16A8F, 0x628D7B1194178351,  // 0x00004A80 
	0x5A4D7B1172CF8353, 0x839383536ACF628D, 0x520B520B6ACF6ACF, 0x7B116ACF8B936A8F,  // 0x00004AA0 
	0x6A8D7B1173116A8F, 0x94157B11628D628D, 0x73117B1172D1624D, 0x6A8F73118BD57311,  // 0x00004AC0 
	0x5A4D6ACF6A8F628D, 0x7B517B115A4D6A8F, 0x520B5A0B72CF7311, 0x7311839593D56ACF,  // 0x00004AE0 
	0x6A8D7B118BD56ACF, 0x94178B936A8D6A8D, 0x6ACF7B5172CF628F, 0x6A8F835193D58353,  // 0x00004B00 
	0x5A4D7B516ACF730F, 0x9C1793D76ACF6A8F, 0x5A0D6A8D6ACF7B53, 0x520BAD1BA499A499,  // 0x00004B20 
	0x9C156A8F49CB7B11, 0x9C178353624D5A4D, 0x7B1183538B936ACF, 0x628D835194158BD5,  // 0x00004B40 
	0x520B72CF5A4D7B51, 0x93D594177B11628D, 0x5A4D6A8F8353A499, 0x9C59A499A4997B11,  // 0x00004B60 
	0x8B9593D5731193D5, 0x31478353628D628F, 0x7B518B9394197B51, 0x6ACF835194158BD5,  // 0x00004B80 
	0x520B6A8F5A4D6ACF, 0x93D79417730F628F, 0x5A4D731193D5ACDB, 0xACDBB563B563ACDB,  // 0x00004BA0 
	0x7B539C15628FA499, 0x93D749CB730F628F, 0x7B118BD394178B93, 0x6ACF8B958B958BD5,  // 0x00004BC0 
	0x5A4D6A8F72CF8353, 0x8BD594177311628D, 0x6ACFA4597B53ACDB, 0x93D5B563B563B563,  // 0x00004BE0 
	0xAD1BB56393D78B95, 0x9C179419520D5A4B, 0x628D93D593D78351, 0x6A8F8BD58BD593D5,  // 0x00004C00 
	0x5A4D72CF7B118395, 0x8351941772CF6ACF, 0xB563B5639C59B563, 0xB55FB563A49BACDB,  // 0x00004C20 
	0xA499A49D9C178353, 0x8B939C599C59520B, 0x7B1193D593D572CF, 0x6A8F8C178BD593D5,  // 0x00004C40 
	0x5A4D6A8F6A8F8BD5, 0x8B958393628D8395, 0xB51FB55F9C15ACDB, 0xACDBACDFAC9BA499,  // 0x00004C60 
	0x8B95A49B9C177B53, 0x8B9594198BD541C9, 0x520B8B938B937B11, 0x628D8BD58BD59417,  // 0x00004C80 
	0x5A4D624D6ACF7B51, 0x6A8F8353624DAD1B, 0xAD1BB55F93D59C17, 0xA459A49B94198BD5,  // 0x00004CA0 
	0x8B95941783957B53, 0x83939C5794199417, 0x520B8B957B5193D5, 0x628F8BD58BD59C57,  // 0x00004CC0 
	0x6A8F6A8D520B7B53, 0x628F7B116ACFB563, 0xB563A499ACDBACDB, 0xA49BA459941793D7,  // 0x00004CE0 
	0xA4599C178B958395, 0x9415ACDB8BD56ACF, 0x6A8D8B9372D19417, 0x5A4D8B958BD993D7,  // 0x00004D00 
	0x7B11624D5A4D72CF, 0x628F5A4D7311A499, 0xB55FB563B51FACDD, 0xA49BAC9B9417ACDB,  // 0x00004D20 
	0xA49993D794178BD5, 0x8BD58B9583936A8F, 0x520B7B117B539C57, 0x62CF83518BD58BD7,  // 0x00004D40 
	0x628D5A4D520B6ACF, 0x5A4D7B117B11A499, 0xAD1BB51FB55FAD1B, 0xACDBA4DD8BD5A499,  // 0x00004D60 
	0xAD1B8B9594178BD5, 0x8353628D9C599417, 0x5A0B6A8F7B51A457, 0x839383518BD98395,  // 0x00004D80 
	0x520B624D520B6A8F, 0x520B731183519C15, 0xA459ACDB9C159C57, 0x9C17B5639C598B95,  // 0x00004DA0 
	0xAD1BACDF9C598BD5, 0xA49D72CFAC9D8393, 0x5A0B628F7B11A459, 0x8C1783958BD58353,  // 0x00004DC0 
	0x520B7B115A4D5A8D, 0x4A0B73117B11624D, 0xACDBAD1B83539C17, 0xA459ACDD9C599C59,  // 0x00004DE0 
	0xACDBA459A4DD9417, 0xA4597B5393D56A8F, 0x624D83538353A499, 0x941772CF8BD58351,  // 0x00004E00 
	0x628D7B51624D624D, 0x520B628D7B117B11, 0x93D58B959C599C15, 0xA459ACDB8B959C17,  // 0x00004E20 
	0xA45993D5AC9DA459, 0x83537B538B955A4D, 0x731172CF8B939C17, 0x9C5772CF8BD58351,  // 0x00004E40 
	0x8353839572D1628D, 0x49CB520D7B117311, 0x6ACFA499A4599C15, 0xAD21AC9D9417ACDB,  // 0x00004E60 
	0xA4997B5393D5A499, 0x8B9372CF72CF49CB, 0x7B1172CF835393D5, 0x9C17624D8B958B93,  // 0x00004E80 
	0x83957B117B116A8F, 0x41C95A4D6ACF8351, 0x83537311A49BA459, 0xA459B51F9417A499,  // 0x00004EA0 
	0xAD1B8B9572CFA459, 0xACDB41C9624D6A8D, 0x7B117B51835193D5, 0x9C15628D94158351,  // 0x00004EC0 
	0x839573115A0B72D1, 0x51CB628F73118BD7, 0x7B117B11624DB563, 0x9C59ACDFA49B8BD5,  // 0x00004EE0 
	0xAD1BB5637B537B11, 0x51CB7B5372CF8353, 0x83518351835193D5, 0x941573118BD593D5,  // 0x00004F00 
	0x8BD572D1628D72CF, 0x520B5A4D83538BD5, 0x6A8D72CF6A8D5A4D, 0x8351A4DFA45B9C59,  // 0x00004F20 
	0xACDBA49941C98B95, 0x7B53839383938351, 0x7B1183516A8D8393, 0x835183938BD58B95,  // 0x00004F40 
	0x731172CF5A4D5A4D, 0x520D624D83937B11, 0x624B6A8D624D5A0D, 0x7B117B1183519417,  // 0x00004F60 
	0x8353520B520B8B93, 0x6ACF73118B956ACF, 0x83518B9572CF6ACF, 0x72D18B958B958B93,  // 0x00004F80 
	0x628D5A4D5A0B624D, 0x5A4D7B537B117B11, 0x5A4D624D520B5A0B, 0x93D57B1183539415,  // 0x00004FA0 
	0x7B51628D5A0B8BD5, 0x5A4D628F8B957311, 0x83517B5172CF628D, 0x8B938BD98BD57311,  // 0x00004FC0 
	0x628D5A4D49CB524D, 0x520B73116A8F72CF, 0x5A4D520B5A4D6A8F, 0xA4597B5193D78B93,  // 0x00004FE0 
	0x6ACF6ACF72CF8BD5, 0x5A4D731193D78BD5, 0x7B516A8D624D6A8F, 0x8B958BD78B938B93,  // 0x00005000 
	0x5A4D5A0B41C9628D, 0x5A4D628D6A8F72CF, 0x5A0B5A4B72CF8353, 0x94177B118BD58393,  // 0x00005020 
	0x73116ACF72CF6A8F, 0x6ACF6A8F83938B95, 0x83535A4B624D628D, 0x9C17839383518B93,  // 0x00005040 
	0x5A0D524D49CB6A8F, 0x6A8F6ACF73115A4D, 0x520B6A8D72CF7B11, 0x7B11839383518B95,  // 0x00005060 
	0x6A8F5A4D5A4D5A4D, 0x83537B538BD57B11, 0x624D5A4D6A8D6A8F, 0xA49B7B118B958353,  // 0x00005080 
	0x5A4D524B520B7B11, 0x73117B117B115A4B, 0x5A0B6A8D7B116ACF, 0x7B11839583518B95,  // 0x000050A0 
	0x520B5A4B628D624D, 0x7B5372CF8BD56ACF, 0x730F6A8F6A8D628D, 0x93D57B5383958353,  // 0x000050C0 
	0x72CF524B49CB72CF, 0x73116ACF624D520B, 0x520B628D72CF624D, 0x8B937B537B516ACF,  // 0x000050E0 
	0x4A0B5A4D520B6A8D, 0x7B11731183D76A8F, 0x83538B938B936A8D, 0x8BD583537B516A8F,  // 0x00005100 
	0x624D520B520B7B11, 0x628D6ACF49CB520B, 0x520B624D8BD56A8D, 0x6ACF7B536A8F628D,  // 0x00005120 
	0x628D5A4D5A4D7B11, 0x6ACF7B517B538353, 0x7B0F7B116ACF628D, 0x8B957B537B115A4B,  // 0x00005140 
};

u64 _spot18_room_0_tex_00005160[] = 
{
	0x520B628D72D17311, 0x520B628D5A4D7B11, 0x5A4D628F7B118351, 0x8BD783536ACF93D5,  // 0x00005160 
	0x4A0B72CF7B116A8F, 0x5A4D6A8F5A4D8B93, 0x5A4D624D83516A8D, 0x8BD583956A8F8B93,  // 0x00005180 
	0x41C972D17B115A0D, 0x5A4D5A4D628D8B93, 0x520B520B83535A0D, 0x7B51835372D17311,  // 0x000051A0 
	0x224D19CB19891A0B, 0x224D19CB1A0B22CF, 0x228D1A0B1A0B1A0B, 0x1A0B1A0B224D19C9,  // 0x000051C0 
	0x2B112B112B112B11, 0x2B112B112B112B11, 0x2B112B112B112B11, 0x2B112B112B112B11,  // 0x000051E0 
	0x2B112B1122CF2B11, 0x2B112B112B112B11, 0x2B112B112B512B11, 0x2B112ACF2ACF22CF,  // 0x00005200 
	0x1A0B1A0B224D1A0B, 0x1A0B198919C91189, 0x1189198919CB1A0B, 0x1A0B19CB1A0B19CB,  // 0x00005220 
	0x5A4D6ACF9C176ACF, 0x5A0D6ACF8B958B93, 0x624D7B519C17624D, 0x72CF8B935A4D9415,  // 0x00005240 
	0x520B5A4D93D57B11, 0x5A4D835383958B95, 0x6A8F6ACF9415628D, 0x7B5194196ACF9415,  // 0x00005260 
	0x520B5A4D93D7730F, 0x5A4D93D583558353, 0x73116A8F93D7730F, 0x7B1194176ACF8B95,  // 0x00005280 
	0x520B628D8BD57311, 0x6ACF9C577B118353, 0x6ACF7B118BD5730F, 0x5A0B93D76A8F7B53,  // 0x000052A0 
	0x1A0B228D1A0B1189, 0x224D1A0B1A0B1A0B, 0x1A0B19CB1989224D, 0x1A0B19C911891A0B,  // 0x000052C0 
	0x2B112B112B112B11, 0x2B1122CF2B112B11, 0x2B112B112B112B11, 0x2B112B112B112B11,  // 0x000052E0 
	0x2B112B112B112B11, 0x2B112B112B112B11, 0x2B112B112B112B11, 0x2B112B112B112B11,  // 0x00005300 
	0x1A0B1A0B224D19CB, 0x19C91A0B19CB224D, 0x198919CB1A0B19CB, 0x224D1A0B224D224D,  // 0x00005320 
	0x7B115A4D628F7311, 0x8B9393D55A4D5A4D, 0x7B1172CF72CF5A4D, 0x6A8F7B5362CF8BD5,  // 0x00005340 
	0x628D520B5A4D7B11, 0x7B517B515A4B6A8F, 0x7B515A4D8395624D, 0x7B0F7B5183938BD9,  // 0x00005360 
	0x520B520B520B8351, 0x93D56A8D5A4D624D, 0x6ACF624D8395628F, 0x7B0F7B118C178BD5,  // 0x00005380 
	0x520B5A4D4A0B7B11, 0x7B5173116A8F72D1, 0x6A8F6A8F73116A8F, 0x624D835394178BD5,  // 0x000053A0 
	0x628D624D520B7B11, 0x83516A8F72CF624D, 0x83536A8F5A0D6A8F, 0x5A4B8B939C578BD5,  // 0x000053C0 
	0x835372D149CB7B11, 0x6ACF6ACF72CF6A8F, 0x83537B53624D6A8F, 0x5A4B83539C178B95,  // 0x000053E0 
	0x83957B1141C96ACF, 0x8353628D72CF7B51, 0x7B518355624D624D, 0x51CB83519C159415,  // 0x00005400 
	0x83955A0B51CB7311, 0x7B11624D73118B95, 0x7B5172CF6ACF72CF, 0x5A4B835194158BD5,  // 0x00005420 
	0x8BD5628D520B8353, 0x6A8D6A8D83518B95, 0x72D15A0B7B538393, 0x6A8D6A8D83518BD5,  // 0x00005440 
	0x73115A4D520D8393, 0x624B624D7B118351, 0x8353520B6ACF8393, 0x835172CF72D18B95,  // 0x00005460 
	0x628D5A0B5A4D7B11, 0x5A4D520B93D58353, 0x7B515A0B5A4D8B95, 0x835172CF8B938BD5,  // 0x00005480 
	0x628D49CB520B6A8F, 0x5A4D5A4DA45993D7, 0x6ACF72CF5A4D93D7, 0x7B51624D8B958B93,  // 0x000054A0 
	0x5A4D41C95A4D6A8F, 0x5A0B72CF94178BD5, 0x731172CF6ACF8393, 0x8353624D9C178351,  // 0x000054C0 
	0x5A0D49CB6A8F7311, 0x520B72CF7B118351, 0x6A8F5A4D83538BD5, 0x624D6A8DA49B8B95,  // 0x000054E0 
	0x5A4D520B73117B11, 0x5A0B7B117B118351, 0x520B628D7B538BD5, 0x730F6A8D93D58395,  // 0x00005500 
	0x72CF49CB7311624D, 0x520B72CF8B937B51, 0x4A0B520B7B1183D7, 0x83538B938BD57B51,  // 0x00005520 
	0x624D520B628D49CB, 0x520B8BD56ACF6A8F, 0x628D5A4D6ACF7B53, 0x7B0F6ACF8B957B11,  // 0x00005540 
};

u64 _spot18_room_0_tex_00005560[] = 
{
	0x520B628D72D17311, 0x520B628D5A4D7B11, 0x5A4D628F7B118351, 0x8BD783536ACF93D5,  // 0x00005560 
	0x4A0B72CF7B116A8F, 0x5A4D6A8F5A4D8B93, 0x5A4D624D83516A8D, 0x8BD583956A8F8B93,  // 0x00005580 
	0x41C972D17B115A0D, 0x5A4D5A4D628D8B93, 0x520B520B83535A0D, 0x7B51835372D17311,  // 0x000055A0 
	0x19931951110F1951, 0x19931951195321D7, 0x1995195119511953, 0x195119511993110F,  // 0x000055C0 
	0x2219221922192219, 0x221B221922192219, 0x2219221922192219, 0x2219221922192219,  // 0x000055E0 
	0x2219221921D72219, 0x221B221B221B221B, 0x221B22192A1B221B, 0x221921D921D921D7,  // 0x00005600 
	0x1951195319931953, 0x1953110F110F110D, 0x110D110F19511951, 0x1951195119511951,  // 0x00005620 
	0x5A4D6ACF9C176ACF, 0x5A0D6ACF8B958B93, 0x624D7B519C17624D, 0x72CF8B935A4D9415,  // 0x00005640 
	0x520B5A4D93D57B11, 0x5A4D835383958B95, 0x6A8F6ACF9415628D, 0x7B5194196ACF9415,  // 0x00005660 
	0x520B5A4D93D7730F, 0x5A4D93D583558353, 0x73116A8F93D7730F, 0x7B1194176ACF8B95,  // 0x00005680 
	0x520B628D8BD57311, 0x6ACF9C577B118353, 0x6ACF7B118BD5730F, 0x5A0B93D76A8F7B53,  // 0x000056A0 
	0x195319951951110D, 0x1993195319531953, 0x19531951110F1993, 0x1951110F110D1951,  // 0x000056C0 
	0x2219221922192219, 0x221921D722192219, 0x2219221922192219, 0x2219221922192219,  // 0x000056E0 
	0x221B221B221B221B, 0x221B221B2219221B, 0x221B221B22192219, 0x2219221B221B221B,  // 0x00005700 
	0x1953195119931951, 0x110F195319511993, 0x110F195119511951, 0x1993195319931993,  // 0x00005720 
	0x7B115A4D628F7311, 0x8B9393D55A4D5A4D, 0x7B1172CF72CF5A4D, 0x6A8F7B5362CF8BD5,  // 0x00005740 
	0x628D520B5A4D7B11, 0x7B517B515A4B6A8F, 0x7B515A4D8395624D, 0x7B0F7B5183938BD9,  // 0x00005760 
	0x520B520B520B8351, 0x93D56A8D5A4D624D, 0x6ACF624D8395628F, 0x7B0F7B118C178BD5,  // 0x00005780 
	0x520B5A4D4A0B7B11, 0x7B5173116A8F72D1, 0x6A8F6A8F73116A8F, 0x624D835394178BD5,  // 0x000057A0 
	0x628D624D520B7B11, 0x83516A8F72CF624D, 0x83536A8F5A0D6A8F, 0x5A4B8B939C578BD5,  // 0x000057C0 
	0x835372D149CB7B11, 0x6ACF6ACF72CF6A8F, 0x83537B53624D6A8F, 0x5A4B83539C178B95,  // 0x000057E0 
	0x83957B1141C96ACF, 0x8353628D72CF7B51, 0x7B518355624D624D, 0x51CB83519C159415,  // 0x00005800 
	0x83955A0B51CB7311, 0x7B11624D73118B95, 0x7B5172CF6ACF72CF, 0x5A4B835194158BD5,  // 0x00005820 
	0x8BD5628D520B8353, 0x6A8D6A8D83518B95, 0x72D15A0B7B538393, 0x6A8D6A8D83518BD5,  // 0x00005840 
	0x73115A4D520D8393, 0x624B624D7B118351, 0x8353520B6ACF8393, 0x835172CF72D18B95,  // 0x00005860 
	0x628D5A0B5A4D7B11, 0x5A4D520B93D58353, 0x7B515A0B5A4D8B95, 0x835172CF8B938BD5,  // 0x00005880 
	0x628D49CB520B6A8F, 0x5A4D5A4DA45993D7, 0x6ACF72CF5A4D93D7, 0x7B51624D8B958B93,  // 0x000058A0 
	0x5A4D41C95A4D6A8F, 0x5A0B72CF94178BD5, 0x731172CF6ACF8393, 0x8353624D9C178351,  // 0x000058C0 
	0x5A0D49CB6A8F7311, 0x520B72CF7B118351, 0x6A8F5A4D83538BD5, 0x624D6A8DA49B8B95,  // 0x000058E0 
	0x5A4D520B73117B11, 0x5A0B7B117B118351, 0x520B628D7B538BD5, 0x730F6A8D93D58395,  // 0x00005900 
	0x72CF49CB7311624D, 0x520B72CF8B937B51, 0x4A0B520B7B1183D7, 0x83538B938BD57B51,  // 0x00005920 
	0x624D520B628D49CB, 0x520B8BD56ACF6A8F, 0x628D5A4D6ACF7B53, 0x7B0F6ACF8B957B11,  // 0x00005940 
};

u64 _spot18_room_0_tex_00005960[] = 
{
	0xEF30EF30EF30F730, 0xEF30EF30EF30EF30, 0xEF30EF30EF30F730, 0xF732F732F732F772,  // 0x00005960 
	0xF772F772F772F772, 0xF732F730F730F732, 0xF730F730F730F730, 0xEF306B146B146B14,  // 0x00005980 
	0xEF30EF30EF30F730, 0xF730F730EF30EF30, 0xEF30EF30EF30EF30, 0xEF30EF30F730F730,  // 0x000059A0 
	0xF730F730F730F730, 0xF730F730F730F730, 0xF730F730F730F730, 0xF730F730F730F730,  // 0x000059C0 
	0xF737EF32EF30EF30, 0xEF30EF30EF30EF30, 0xEF30EF30EF30EF30, 0xEF30EF30F730F730,  // 0x000059E0 
	0xF732F732F730F730, 0xF730F730F730F730, 0xF730F730F730F730, 0xF730F730F730F730,  // 0x00005A00 
	0xDE67EEA9E669E6ED, 0xEF30EF30EF33EF33, 0xEF31EF30EF30EF30, 0xEF30EF30EF30EF30,  // 0x00005A20 
	0xEF30EF30F730F730, 0xF730F730F730F730, 0xF730F730F730F732, 0xE6EFDEADE6ADEF6F,  // 0x00005A40 
	0xACDBAC9BC5A1D625, 0xDE67EEA9E6A9DE67, 0xDE27E6EDEEEFE6AB, 0xE6A9DE69EEEEEF30,  // 0x00005A60 
	0xEEEDEEA9E6A9E669, 0xEF31E6A9E6A7E667, 0xDE69E6F3DEAFDE27, 0xCDA1C5A1CDE3DE29,  // 0x00005A80 
	0xA4DF83D9ACDDC55F, 0xACDD941BA459AC9B, 0xB521CDE5D625CDA1, 0xBD1FBDA3C5A3DE25,  // 0x00005AA0 
	0xCDE3B4DDAD1FBDA1, 0xDE25C5A1BD5FBD61, 0xCDA1DE63CDA3C5A1, 0xBD61B51FBD1FD5E5,  // 0x00005AC0 
	0xC5E7BD63AD21B51F, 0xBD1FACDF8BD9BD1F, 0xC5A1C5A3BD1FA49B, 0xB4DFBD5FA49DBD61,  // 0x00005AE0 
	0xBD1FA49BACDDACDD, 0xCDA1B4DDA45BA49B, 0xBD1FDE25B51FA49B, 0xC5A1CDE1C5A1D625,  // 0x00005B00 
	0xA523D66BD6ABB563, 0x94199C19ACDDAC9B, 0xBDA3BDA5B563ACDF, 0x9419ACDDACE1A4DF,  // 0x00005B20 
	0xB51FCDA1CDA39C9F, 0x9C9F9C5BB51DD625, 0xDEA9BDA58BD99C1B, 0xA49BACDDBD61D665,  // 0x00005B40 
	0xA523E72BD669D66B, 0xE6EFDEAD9C5DCDE7, 0xD629D669CE29C5E7, 0xCE29C5E7CE29BDA7,  // 0x00005B60 
	0xB563B561B563A523, 0xC5A5AD1FCDE5DEAB, 0xD66BDEADA49FB521, 0xC5E7D6ADD6ADE6A9,  // 0x00005B80 
	0xB5A3DEABD6ABDEAB, 0xEF2FF72DD521BD63, 0xCE29D669D669D669, 0xDEA9CEA9CEA9BDE7,  // 0x00005BA0 
	0xBDA7BDA7BDA7CEA9, 0xC5E7DE6BDE6BD669, 0xD669D66BE6ADD66B, 0xCE29CE6BCE2BD5E5,  // 0x00005BC0 
	0xA4DFCE29DEADEEED, 0xF731F773EF31CDE7, 0xE72BE72BE729E72B, 0xEF31E729D669D669,  // 0x00005BE0 
	0xD669D66BE6ADE6AD, 0xE6ADE6ADDE6BDE6B, 0xE6ADE6EDEF6DCE27, 0xD66BCE6BC629D627,  // 0x00005C00 
	0x9C9FBDA9D669EEED, 0xF773F777EF31E6ED, 0xE6ADE6ADD66BCE29, 0xDEEDD669DEEDD6AB,  // 0x00005C20 
	0xDE6BE6ADE6EDEF6D, 0xF7B1DEABD669DE6B, 0xE6EFEF31E6ADCE69, 0xCE69C629B5A5A4DD,  // 0x00005C40 
	0x9C9F8C1DC5E7E6AD, 0xEF31F773E6ADE6AD, 0xCE29D66BD66BC5A5, 0xB563C5E9C5E7B5A3,  // 0x00005C60 
	0xC5E7D669DE6BF771, 0xE6EDD66BDEABDEAB, 0xD66BDEADD669CE29, 0xCE69B5A5949F8C59,  // 0x00005C80 
	0xA5237399BDA7D629, 0xD6ABF771DEADC5E7, 0xC5E7D6A9DEA9CE29, 0xB5A7BE27B5A3AD23,  // 0x00005CA0 
	0xBDA7D66BE6EFEF31, 0xE6EDEEEDEF2FDEAD, 0xCE29C627BDA5B563, 0xC5A5AD638C5D941B,  // 0x00005CC0 
	0xA52383D9B565CE29, 0xD66DFFB3F7B1DEE9, 0xC627D66BE6EBDEE9, 0xCE29B563BDA79CDF,  // 0x00005CE0 
	0xAD61D6A7E6EBE6AD, 0xF7B1FFB3F773DEAF, 0xCE29C5E79C9DAD21, 0xC5A5B565949F9C9B,  // 0x00005D00 
	0xA52383D9B565C627, 0xD6A9F771F773DEAD, 0xCE29D66BDEEBE6EB, 0xDEADD669CE69A4DF,  // 0x00005D20 
	0xB5A5D6ADD66BE6AD, 0xF7B1F773E6F1D66B, 0xC627B5E57BD99CDF, 0xBDA5B565AD23CDA5,  // 0x00005D40 
	0xB567945DB523B5A3, 0xADA3BE27DEADC627, 0xC627CE27CE29DEAB, 0xEF31DEADB5A7945F,  // 0x00005D60 
	0xA4E1CE29E6ADE6AD, 0xF773EF35D6AFC627, 0xB5A3945D841B945D, 0xA4E19CE19C9FBD65,  // 0x00005D80 
	0xB563AD23B563B565, 0xAD63B5A3BDA3BDA5, 0xB563C5E7CE29DEAD, 0xF775EF319C9F9C9F,  // 0x00005DA0 
	0xA4E1AD21B565E6AD, 0xEF35E6F1D66BBDE5, 0x9C9F8C1D8C1DA4E1, 0xA4E1945F9C9FBDE5,  // 0x00005DC0 
	0xA523BDA5BDA5BDA5, 0xBDA5B565AD25CE2B, 0xC5A7CE69DEEDE6EF, 0xEF33B565AD21C5A5,  // 0x00005DE0 
	0xA49F8C1BC5E7F771, 0xEF77E6EFCE29B563, 0x9C9F8C5F94A1BDA5, 0xB5639CE19C9FA49D,  // 0x00005E00 
	0xB563CE69C627CE29, 0xCE29BDA5B523CDE7, 0xD629CE29D66BE6EF, 0xE6F17357B565DE6B,  // 0x00005E20 
	0xD629BD63BDA7EF31, 0xEF33DEAFBDE7AD63, 0xB563AD63B563CDE7, 0xB565A5219CDF9C1B,  // 0x00005E40 
	0xA51FCE29B565C5E9, 0xD66BBDA5945FBDE3, 0xC627C5E7CDE7D66B, 0xE6EFC5A7C563D5A5,  // 0x00005E60 
	0xDE29C5A7945DCE29, 0xD66DCE27BDA3AD23, 0x9CE1AD23BDA5C5E7, 0xAD61A51FA49D9C1B,  // 0x00005E80 
	0x8C1BCEABAD63AD23, 0xC5E5BDA58C1D9461, 0xAD23B5A3AD63B565, 0xBDA5C565CD63BC9F,  // 0x00005EA0 
	0xC523D5E7B5218C1B, 0xBDA7B563AD21A49F, 0x945DAD23B5A3BDA3, 0xA4E1949F9C5D9C1B,  // 0x00005EC0 
	0x8C1BD66BA4E1945F, 0xB565BDA58C1B8C19, 0xA4E19C9FA4DFA521, 0x8C1DCD63B4DFD563,  // 0x00005EE0 
	0xCD63B521BD637355, 0x8C1BA521AD61AD63, 0xBDA5C5E7BDA5B563, 0xAD23A5239CA18C1B,  // 0x00005F00 
	0x9C9FD66BCE29C5E7, 0xD669E6ADAD21ACE1, 0xAD21A4E1AD23B563, 0x9CDDBCDFB4E1DDE9,  // 0x00005F20 
	0xE5E7CD63BD219C1B, 0x6B158C1BAD21B5A3, 0xBDE5CE2BEEEDD66B, 0xAD239CE1A4E19C1B,  // 0x00005F40 
	0xA523BDE9C5E7C5E7, 0xD66BE6EFC5E7AD21, 0xACE1AD21A4DFA4DF, 0xBD639C5DDDE7EE6D,  // 0x00005F60 
	0xDDA5B41B9B97AC5D, 0x93D98C1D9CE1B563, 0xBDA5CE29C5E7CE69, 0xAD639CE1A4E19C1B,  // 0x00005F80 
	0x8C1BAD21B563B563, 0xC5E7DEADC5E7A4DF, 0x945F8C1D8C5BA4DD, 0xC523CD63D5A5E627,  // 0x00005FA0 
	0xCD61B45BB49FB49B, 0x9C1B73558C1BB565, 0xD669DEEBCE27A4E1, 0x8C5D945D9C5F9C5D,  // 0x00005FC0 
	0xB5A3B5A5AD61A51F, 0xBDA5DE6BC5E7BDA5, 0xAD216B157355BD63, 0xD625CD61D563DE27,  // 0x00005FE0 
	0xCDA3B49DA41BAC5D, 0xB5617B97945DBDA5, 0xCE2BD66BCE698C5B, 0x8C1D9C9F9C9F9C9D,  // 0x00006000 
	0xC5E7C627BDA7AD63, 0xB5A3DEADE6ADD629, 0xBDE3949D841B9C9F, 0xCDE9AC9FB49BB4DD,  // 0x00006020 
	0xB49FB49DBC9FBD23, 0xACE1941B7357945D, 0xDEADE6EFCEAB9C9F, 0x945DAD23BDA5B521,  // 0x00006040 
	0xE6ADA4E1B563B565, 0xB563C5E7DEAFC629, 0xBDE3949D8C9DAD21, 0xC563D5E7D5A5DDE7,  // 0x00006060 
	0xDE29D629DE29D62B, 0xBD63B5637BD983DB, 0xCE29BDA5C5E9949F, 0x9C9DA4E1ACE1AC5B,  // 0x00006080 
	0xC5E783DBAD25B567, 0xAD23BDA5DE6DB563, 0x631552515A9362D3, 0x7B979C9D8C1B6B55,  // 0x000060A0 
	0x62D362D172D15291, 0x520D73556B155251, 0x6B15B563B5A3945D, 0x945BA4DFAD21941B,  // 0x000060C0 
	0xB567841DAD23BDA5, 0xB523B565E6EFAD23, 0x62D362D37B9783D9, 0x945FDE6BD669C5E7,  // 0x000060E0 
	0xD66BDEADC5E7BDA5, 0xAD23BDA5B563A4DF, 0xA51FCE69B5639C9F, 0x9C9FB565C5E9B521,  // 0x00006100 
	0xC5E7945DB563BDA5, 0xAD63B565DE697B97, 0x83996B137355A4DF, 0xB5638C5DB563BDA7,  // 0x00006120 
	0xCE2BCE2BB565A4E1, 0x7BD7B563B563AD21, 0xB565C5E7B567AD23, 0xAD23BDA7C5E7B561,  // 0x00006140 
	0xB5A3945DC5E7BDA5, 0x9CA1A4E3A4E18C1D, 0x945D941B8B977355, 0x7397C5E76B558419,  // 0x00006160 
	0xBDA5CDE9A4E18419, 0xC5E5A4DFC5E5DE6B, 0xC5A5945DA4DFBDA5, 0xBDA5C5A7BDA7AD21,  // 0x00006180 
	0x9C9FB523CDE7B565, 0x949F8C1D7B559C9F, 0xA45DA41DA41B9BD9, 0x941BDEADAD2383D9,  // 0x000061A0 
	0x9C9FAD2383D9BDA5, 0xDEABD66BE6ABE6A9, 0xAD235251A49FCDE7, 0xBD63A4DF9C9FA49F,  // 0x000061C0 
	0xB563C5A5D66BC5E7, 0x9C9F83D97B97B49F, 0xB49FA41BA41BBCDF, 0xCDE383DBC5E9BDA7,  // 0x000061E0 
	0xAD23A4E1A4E1D6A7, 0x949DC521DDA1D5A3, 0xACE14A0FBDA5C5E7, 0xB5659C9F945B9C9D,  // 0x00006200 
	0xC5E7DEE9F771DEAD, 0xBDA5A4E1945DC563, 0xB4DFB45FB45DBC5B, 0xD4DD83998C1BC5E7,  // 0x00006220 
	0xA4E18419B5A38C5F, 0xB563C4DFC4DDAC5B, 0x8B979C9BA4E1D66B, 0xD66BAD217B966B14,  // 0x00006240 
	0xBDA7D66AEEEDDEAB, 0xC5E7A4E19BD9B4E1, 0xBCDFBCE1BCE1C521, 0xCDA3CDA39C5DAD21,  // 0x00006260 
	0xAD23841D5A935293, 0xCD21C49DBC9DBC9D, 0xC45BD5218C1BCE29, 0xD66BA4DF6B146B14,  // 0x00006280 
	0xCE29C5E6DEA9EF2F, 0xCE299C9FA4A19C1B, 0xA419B45DBD25CDEB, 0xDE27DE65ACDF93DB,  // 0x000062A0 
	0x9C5DACDF9C1DAC9F, 0xD563B45DAC5DB4DF, 0xC561DE29D66F9C9F, 0xBDA5A4E173546B14,  // 0x000062C0 
	0xCDE6CDE6E6EDEF31, 0xC5A58B55AC5B9C5B, 0x9C5DACA1C523D565, 0xEE69DDA5D5E7B521,  // 0x000062E0 
	0x9C5B8BD78357C5A5, 0xA4198B559397AC5D, 0xBD63F6EBE5A5ACE1, 0xC5E7B56383D86B14,  // 0x00006300 
	0xC5E6CE26EEEFEF2F, 0xD66BBD23ACE1A45F, 0x941DA49FBCE3D565, 0xE629F6EDE627DE29,  // 0x00006320 
	0x9C1B8313C561ACDD, 0xBC9B9B959B97A419, 0xB49DF66BE629A49F, 0xC5E7BD6383D86B14,  // 0x00006340 
	0xC5E6CE28E6ABBDA5, 0x8C1D8C1B9CDD6313, 0x62918B99B49FC563, 0xE6EBCD63CDE5C563,  // 0x00006360 
	0xA49D9C5BA49F8397, 0x83DB731583559B97, 0xA419E627D5639C5D, 0xC5E7BDA78C1A6B14,  // 0x00006380 
	0xC5E6DEACD66BC627, 0xC627D669D6279CA1, 0x8C5D83D983D99C9D, 0xC5E5B5A373974A4F,  // 0x000063A0 
	0x39CD41CD420D41CD, 0x41CD7B9983DB7B97, 0x735773978C1D945B, 0xAD21A4E083D86B14,  // 0x000063C0 
	0xC5E6EEEED669CE29, 0xDEABEEEDD66BAD21, 0xA4DF9C9FAD21CE29, 0xEF31DEADBDA79CA1,  // 0x000063E0 
	0x83DB7BD98C1B9CA1, 0x9CA1C5E7D669D669, 0xD66BD66BD629A4E1, 0xAD219C9E7B986B14,  // 0x00006400 
	0xC5E6D66DC5E7CE29, 0xE6EFEF2FDEABAD21, 0xB5A1A4E1AD25DE6B, 0xF72FCE29C5E5B5A3,  // 0x00006420 
	0x9D1F8C5D949DBDE3, 0xC5E7DEABEEEFEF31, 0xEF31DEADCEA9BDE5, 0xC5E7A4E073566B14,  // 0x00006440 
	0xC5E6C627BDA5C5E7, 0xD66BDEADD66BB5A3, 0xBDE5A4DFAD23DEAB, 0xE6EDCEABC5E7AD23,  // 0x00006460 
	0x945F83DB945DBDA5, 0xCE29E72DEF2DEF2F, 0xEF2FDEA9C5E7AD23, 0xC5E9A4E06B147354,  // 0x00006480 
	0xC5E6B5E5AD21BDA5, 0xD66BE6ADDEADCE29, 0xB563A51FB5A3DEE9, 0xE6ABB567C5E9A4E3,  // 0x000064A0 
	0x945F8C1D945DBDA5, 0xE6ADEF6DE72DDEAB, 0xD669CE29B563B563, 0x945D7B987B9683D8,  // 0x000064C0 
	0xC5E6A4E1BD65CE29, 0xD6A9E6EBE6ADEF2F, 0xC5E7AD23B565C5E7, 0xD66BC5E7D66BB565,  // 0x000064E0 
	0xACE1A4E19C9FBDA7, 0xE6F1EF31DEADCE29, 0xCDE7D66ABD63C5E5, 0x945D73567B9683D8,  // 0x00006500 
	0xCDE69C9DD66BD66B, 0xC5E9E6EDEF6DEF6F, 0xD6ABC627AD63A521, 0xD669EF2FDEADBDA5,  // 0x00006520 
	0xBDA5B5A5AD23CE2B, 0xE6EFF771E6ADCE29, 0xC5E7CE28CE28C5E7, 0xBDA7945F7B96945E,  // 0x00006540 
	0xC5E69C9FDE6DE6EF, 0xDEABEF2FEF31EF31, 0xCE29CE27B523945D, 0xC5E7EF33EF31CE29,  // 0x00006560 
	0xC5E9C5E9BDA7DE6D, 0xF773FF71EF2FD6AB, 0xC5E7C629C5E6CE29, 0xC5A5AD219C9E9C9E,  // 0x00006580 
	0xC5E6D628DEABDEEB, 0xEF2DF771EF2DDEAD, 0xD62BCE29AD238C1D, 0xAD23F773E6EFCE27,  // 0x000065A0 
	0xC5E7C5E9CE29E6EF, 0xF773E6EFDE6BC5A7, 0xAD23C5E7C627DEAB, 0xC5E7A49F9C9EC5E8,  // 0x000065C0 
	0xC5E6CDE6D66BD629, 0xD6ABF7AFDEE9C627, 0xDEADDEADBDA79C9F, 0xA4DFF773C5E7B565,  // 0x000065E0 
	0xAD63B5A5CE29EF31, 0xE6EDD66BC627B563, 0xA4E1C627C5E7E6EF, 0xD6ABA5219C9ED66A,  // 0x00006600 
	0xCDE6CE28DEA9D6A9, 0xD6ABE6ADDEADBDA3, 0xE6ABE6EBD6A9C5E7, 0xB563DEAFBDE7AD63,  // 0x00006620 
	0xA521AD21CE27E6ED, 0xDEADD6ABC629BDA7, 0xB565C5E7DEAFE6EF, 0xD66BBD65B522CE2A,  // 0x00006640 
	0xCDE6CDE6D66BD66B, 0xD66BDEADE6EFC5E7, 0xE6ABEF2FE6EDCE29, 0xC627BDA4B565A4E1,  // 0x00006660 
	0xA4E1B563CE27DEAD, 0xF773EF30DEEDC629, 0xBDA7CDE6CDE6EEF1, 0xD66BBD64B522BDA4,  // 0x00006680 
	0xC5E6C5E6C5E6CE29, 0xCE29CE69DEAEBDA7, 0xD66BE6EFEEEFD66B, 0xBDA7AD22AD23A4E1,  // 0x000066A0 
	0x9C9FAD23CE27D669, 0xD66BCE28C5E7C5E7, 0xCE29C5E6CDE6E6EB, 0xD66BB562945C9C9E,  // 0x000066C0 
	0xC5E6C5E6C5E6C5E6, 0xBDA5B562CE28CE27, 0xC5E7D62BD6ABCE69, 0xCDE9BDA4A4E0AD23,  // 0x000066E0 
	0xAD23B523BDA7C5E5, 0xC626CE28C5E7D669, 0xDEEBC5E6C5E6D629, 0xD66BC5E6AD22AD22,  // 0x00006700 
	0xC5E6C5E6C5E6CDE6, 0xCE28CE28CE28C5E6, 0xCE29D66BCE29C5E7, 0xC5E6C5E6B562B565,  // 0x00006720 
	0xC5E9CE29C5E6CE28, 0xD628CE28CDE6D629, 0xDE6BCDE6CDE6C5E6, 0xCE26BDA4B562B562,  // 0x00006740 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6D629D629C5E6, 0xC5E6C5E6C5E4CE29,  // 0x00006760 
	0xD66BD66BC5E6C5E6, 0xC5E6C5E6C5E6D66B, 0xE6EDCE28CDE6CDE6, 0xCE28CE26C5A6B562,  // 0x00006780 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6,  // 0x000067A0 
	0xBDA7BDA7C5E6C5E6, 0xC5E6CDE6CE28CE28, 0xCE26CE28CE26CDE6, 0xCDE6CE28C5E6B522,  // 0x000067C0 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6,  // 0x000067E0 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6CE28CE28C5E6, 0xC5E6BDA4A4E0941A,  // 0x00006800 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6,  // 0x00006820 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xB5629C9E83D86B14,  // 0x00006840 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6,  // 0x00006860 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5A4B562, 0x945C8C1A945C7B96,  // 0x00006880 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6,  // 0x000068A0 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5A4B52283DA, 0x8C1A8C1A83DA83DA,  // 0x000068C0 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6,  // 0x000068E0 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xB5629C9C73566B14, 0x6B146B146B146B14,  // 0x00006900 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6,  // 0x00006920 
	0xC5E6C5E6C5E6C5E6, 0xCDE6CE28CE28C5E6, 0xB5629C5C73567354, 0x6B146B14735483D8,  // 0x00006940 
};

u64 _spot18_room_0_tex_00006960[] = 
{
	0x0802052405D80805, 0x05174531700C0A0A, 0x0C02050505020424, 0x0401050505020505,  // 0x00006960 
	0x1510242452371024, 0x2438092424607710, 0x05600D0810850508, 0x6023240816868508,  // 0x00006980 
	0x2A15242460061008, 0x241F282424600F2A, 0x086C3724100C0824, 0x080A0505200D3705,  // 0x000069A0 
	0x2A10242405371005, 0x242A082424600410, 0x08851924100C3231, 0x2A01600801866008,  // 0x000069C0 
	0x2A10242405061524, 0x2415083131600910, 0x0804AF24010C2132, 0x841960080D860F05,  // 0x000069E0 
	0x2A77242405191524, 0x2415083131322810, 0x08040A240CAF1708, 0x34C8020589500F02,  // 0x00006A00 
	0x2A86242405191008, 0x2415603115052805, 0x05021C0805043308, 0x34C8020505010105,  // 0x00006A20 
	0x1070052405191024, 0x2410093110021709, 0x08041C0505044508, 0x080C02051C0C3702,  // 0x00006A40 
	0x0504052405375208, 0x2409103115050560, 0x08041C0505043308, 0x080C04080A0C0405,  // 0x00006A60 
	0x080C0824020D6005, 0x2410153131050405, 0x08020A0505041008, 0x080C0A08020C0204,  // 0x00006A80 
	0x050A0824050D6005, 0x0815523131050405, 0x08041C0205021508, 0x08010C080C0C0205,  // 0x00006AA0 
	0x040508241C101905, 0x6015083131080C05, 0x08041C0404021015, 0x08C80C050A0C0505,  // 0x00006AC0 
	0x3901602A62480433, 0x091045316C191905, 0x76020B284559021F, 0x21880C5239013C10,  // 0x00006AE0 
	0x1F3932151989047E, 0x0B451A0860013708, 0x08190B0217100552, 0x10880F600F011F02,  // 0x00006B00 
	0x0D5B3B1059190406, 0x0B1904325201AF08, 0x08045301281F5952, 0x026248520D0F0223,  // 0x00006B20 
	0x0D1E2615850C5C16, 0x0D09063C15297019, 0x101A200109281752, 0x45010A524E0F0402,  // 0x00006B40 
	0x4E4C090204040C71, 0x1C042384051E0110, 0x28281E060C010932, 0x020C0C050F060A01,  // 0x00006B60 
	0x061A0602010F1629, 0x1E23280505060D17, 0x1A450C0F5E0C0259, 0x021A0C15015E220D,  // 0x00006B80 
	0x9C065F19060D161E, 0x6809091F09060406, 0x4505010C4C6B0445, 0x044C4505011C0D0C,  // 0x00006BA0 
	0x38161E0A0A0A220D, 0x0F1906101F0123B9, 0xD615020C0B1E0F05, 0x040C1933E2515B02,  // 0x00006BC0 
	0x1A0B04010B0201F8, 0xF08F6A08525C0C6B, 0x3608175C045B0F09, 0x010F59155F6D0A02,  // 0x00006BE0 
	0x4C0C106201052B2B, 0x66A50F31150F0B3B, 0x6108286704220B36, 0x730C760945220423,  // 0x00006C00 
	0x500B1A4304155043, 0x8619622A335C169C, 0x5732091676820A36, 0x377EA545050C3706,  // 0x00006C20 
	0x0626040C288C0112, 0x0B020234760C160A, 0x2632095E33200C06, 0x4CA533D8080C503B,  // 0x00006C40 
	0x4361390F1915093A, 0x51190208450C5B4E, 0x1A3102015900235C, 0x481959331F5C8601,  // 0x00006C60 
	0x01175F0A1A050466, 0x6D1923051F37160A, 0x097A192332938806, 0x0C02601019200C09,  // 0x00006C80 
	0x011706480117361C, 0x2B193959598F4E4E, 0x57523728054A0D5F, 0x0428D949011E0176,  // 0x00006CA0 
	0x39170F060C39470B, 0x390473CF59280A0A, 0x3905014525460D43, 0x0473598426AF041F,  // 0x00006CC0 
	0x0123861A370F5150, 0x5F39730659450A06, 0x01CC010225510D36, 0x261F1F08395F193C,  // 0x00006CE0 
	0x3B735E09623BA650, 0x8F0C5C5F591F225E, 0x43190102448D0F36, 0x7E3159525C0F7610,  // 0x00006D00 
	0x0F19061AA70D7986, 0x761E5CD905172E0B, 0x36048F02284E5C06, 0x7E2A3C59205C3C32,  // 0x00006D20 
	0x5BCC0C093C0F631C, 0x01715005171F2E29, 0x9C0C881745AF5C5C, 0x196C703C8750171F,  // 0x00006D40 
	0x6D045C04320BAC87, 0x0C77E53860155B1E, 0x030C0409050B5006, 0xB959281F200F1702,  // 0x00006D60 
	0x1C33A70231F8F082, 0xE2C0425C5F6022B7, 0x0E5C09766C375F12, 0x5008440977502809,  // 0x00006D80 
	0xE0155F452A2B662E, 0x8850870C88D6823B, 0x065E1F5908190C1A, 0x0431331A160A1904,  // 0x00006DA0 
	0x5F054C32BC43890A, 0x8F0C1E370559205F, 0x0637D610D61A375E, 0x5F2432016A0F1904,  // 0x00006DC0 
	0x5F760F3231120B0A, 0x04376B8F08760023, 0x060C76338F265C0B, 0x09A31F260A0C0904,  // 0x00006DE0 
	0x5F881F32443A1E50, 0x7E260B0231389319, 0x06DE761537160C0C, 0x02311F2B0F010404,  // 0x00006E00 
	0x0159152A2B82225C, 0x620C5E15241A4AB7, 0x5E62D9325F5B2862, 0x05A3080E0A060101,  // 0x00006E20 
	0x4C3C1534F6205F06, 0x067E01082A2B7F77, 0x0A48020539011943, 0x082A153A290F4C0C,  // 0x00006E40 
	0x0A04442A39002306, 0x0C3923597A02938D, 0x502645334C191937, 0x08081722676D5E0F,  // 0x00006E60 
	0x0B8F25241F931906, 0x37731A1F0821B07D, 0x166221280119A573, 0x3108121E2E42294E,  // 0x00006E80 
	0x06101524624AB75E, 0x37A743CF31387153, 0x370926010C264537, 0x2A522D1E29295067,  // 0x00006EA0 
	0x01101534067F770A, 0x481C0CCF311A68B7, 0xDE4E01390F232537, 0xA3289B5642F56B53,  // 0x00006EC0 
	0x1A02083401938D50, 0x261C373231257F42, 0x4ED021855E021F1A, 0x082BAA581DE56B97,  // 0x00006EE0 
	0x010915345EB07D16, 0x620C59052A087CC3, 0x48373C1948CC4509, 0x080C7FB1C0895CC0,  // 0x00006F00 
	0x7009BA2A21715337, 0x092332342A316829, 0x060145045B882537, 0x0832E998C0F53A22,  // 0x00006F20 
	0x280215E41768B7DE, 0x4E17F3197A2A2577, 0x508F19621E010573, 0x3157719322A71D51,  // 0x00006F40 
	0x1928152A257F424E, 0x0F451F092A31E080, 0x0A0404011C6A7E37, 0x2A1A7C4A204E874A,  // 0x00006F60 
	0x0C0432A3157CC30F, 0x0A283C10BC1582AC, 0xA15C19371C5C0C37, 0x24731E03C356299B,  // 0x00006F80 
	0x400132A31568290F, 0x06021F1531314780, 0x29012F0A0D161A1A, 0x316148161C4A4203,  // 0x00006FA0 
	0x7202252415252F27, 0x010549084F72D071, 0x4804740C480A6033, 0xBA57F251469777A9,  // 0x00006FC0 
	0x353C05E4102F3D2B, 0x1752080841155193, 0x475A5A06045EF38A, 0x6F3DB18751772BCE,  // 0x00006FE0 
	0x7509252A91926E2C, 0x1059315D2A35A87C, 0x72D169485F068A34, 0x4F3D206B42128A18,  // 0x00007000 
	0x183C5ACAEE3E2E55, 0x6109EE2ACEBDEBAD, 0x8A81621643572549, 0x1A0A718247CE1222,  // 0x00007020 
	0x6815722A1B4A2F33, 0x604D6F72CDE52B92, 0xBD1A044E748ABD61, 0x76424A3EBA382E3E,  // 0x00007040 
	0x2174D708A21A4515, 0x1F6F57443303BA2D, 0x043CA54D4F4B352A, 0x1AA622BA27AC8151,  // 0x00007060 
	0x38E75A2557055932, 0xCE84442A0272727C, 0x1376747275F6AE31, 0x62B02FDF20BD3A94,  // 0x00007080 
	0x6F4F441545763344, 0xD72F25E4255A462B, 0x024F92782C2F3131, 0xEF4792E62C7E5C1C,  // 0x000070A0 
	0x1B165A0848CC05E7, 0x11A9241572810045, 0x3D92693B3D1F246C, 0x307475461912295A,  // 0x000070C0 
	0x4A815908624DD73A, 0x051549251A104F21, 0x8A0006552845313D, 0xEE031E07047E72DF,  // 0x000070E0 
	0x810C61283D6F3506, 0x095A6F4421272117, 0x276626351A453DCE, 0x1D202C0F73D1DF46,  // 0x00007100 
	0x1130112CED6FBD22, 0x47A9A9111409253C, 0x112C166B26351492, 0x90BD0F1F40DF0013,  // 0x00007120 
	0x40133007C13E0707, 0x1814110E303F0711, 0x124B073E3E181800, 0x00008111001411C7,  // 0x00007140 
};

u64 _spot18_room_0_tex_00007160[] = 
{
	0xD48ED48ED48ED48E, 0xD48ED48ED48ED48E, 0xD48ED48CD48ED48E, 0xD48ED48ED48ED48C,  // 0x00007160 
	0xD48ED48ED48CD48C, 0xD48ED48CD48ED48C, 0xD48CD48CD48ED48E, 0xD48ED48CD48CD48C,  // 0x00007180 
	0xD48ED48ED48ED48C, 0xD48ECC8CCC8CCC8C, 0xCC8CCC8CCC8ECC8E, 0xC450CC50CC8ECC8C,  // 0x000071A0 
	0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8C,  // 0x000071C0 
	0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8E, 0xCC50C452F5DFF5E1, 0xF5DFF5E1F5E1F5E1,  // 0x000071E0 
	0xF5DFF5E1F5E1F5E1, 0xC450C44EC44CCC4C, 0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8C,  // 0x00007200 
	0xCC4CCC8CCC8CCC4C, 0xCC8CC44ECC50F5DF, 0xFE1FFE1FFE1FFE1D, 0xF5DDFE1FFE1FFE1D,  // 0x00007220 
	0xFE1DFE1DF5DDEDDF, 0xED9FDD5DE55FC450, 0xC44ECC4ECC4CCC4C, 0xCC4CCC4CCC4CCC4C,  // 0x00007240 
	0xCC4CC44CC44CCC4C, 0xC450FDE1FE1FFE1D, 0xFE1BFE1BFE1DFE1D, 0xFE1DFE1DFE1DF5DD,  // 0x00007260 
	0xF61DFE1FEDDFF5DD, 0xED9BDD59E59FEDDF, 0xEDDFC450C450C44E, 0xC44EC44CC44CC44C,  // 0x00007280 
	0xC44CC44CBC10C452, 0xFE1FFE1DF5DBED9B, 0xED9BEDDDFDDDFE1D, 0xFE1FFE5DFE5DFE5F,  // 0x000072A0 
	0xFE1FEDDFDD5BED9B, 0xED9DEDDDE59DDD1B, 0xDD5DE5A1C450C44E, 0xC44EC44EC44EC44C,  // 0x000072C0 
	0xC44CC450FE1FFE1F, 0xFE1DFE1DED9DE55B, 0xED9BF5DDF5DDFE1F, 0xFE5FFE1FF5DFED9D,  // 0x000072E0 
	0xE559ED9BDD17D517, 0xE55BDD5BDD19CCD7, 0xD4D7E55BE59FE5A1, 0xBC10BC10C40CC40C,  // 0x00007300 
	0xC40EFE1FFE1FFE1D, 0xF5DDED9DDD59DD59, 0xE559E59BEDDFE55B, 0xD519DD19DD19DD19,  // 0x00007320 
	0xDD59DD19CCD5D4D5, 0xE559E59BE55BDD5B, 0xDD19ED9DF5DDE59F, 0xE59FE5A1BC10BC0E,  // 0x00007340 
	0xFE1FFE1FFDDDDD15, 0xD4D5DD17ED9DE59D, 0xCCD7CC97CCD7CC95, 0xC453C495CCD7CCD7,  // 0x00007360 
	0xCCD5BC53C495DD59, 0xDD5BE55BE55BDD59, 0xDD5BED9BE55BDD59, 0xE559E59DEDA1EDA3,  // 0x00007380 
	0xFE5BF5DBE55BDD19, 0xDD19DD5BE59DDD19, 0xC495BC53C495CC95, 0xC455CC97CCD9C497,  // 0x000073A0 
	0xC497BC53BC53DD5B, 0xD519D519DD19D519, 0xDD59E55BDD19DD59, 0xED9DF5DDFE5BFE5D,  // 0x000073C0 
	0xFDDDED9DED9DE59D, 0xE59FD51BBC55C495, 0xD519C495C495C495, 0xC495C497B453BC55,  // 0x000073E0 
	0xC497BC55C497CD19, 0xCCD9D519D519D4D9, 0xD4D7DD19DD19E55B, 0xF5DDFE1BFE5BFE5B,  // 0x00007400 
	0xE55BF59FE55DCCD9, 0xD4D7C493B411BC53, 0xCCD7BC55ABD1B453, 0xB413AC13A3D1B413,  // 0x00007420 
	0xBC55B413C4D9CCDB, 0xCCDBCCD9CCD9CCD9, 0xCC97CCD7D4D7DD59, 0xF5D9F5D9F5DBFE1D,  // 0x00007440 
	0xE559DD59D51BC497, 0xCCD7D4D9C495B413, 0xAC11AC13ABD3B415, 0xB413B413BC55BC97,  // 0x00007460 
	0xC497CCD9C499CCD9, 0xCCD7C497CCD9CC97, 0xBC53C455CC95ED59, 0xFDDBFE1BFE1DFE1D,  // 0x00007480 
	0xF5DFE55DCC95AB8F, 0xA38FAC13ABD3ABD1, 0xB413BC97C497B455, 0xABD3AC13BC55B457,  // 0x000074A0 
	0xB415B455BC57BC97, 0xBC97C497D51BCCD7, 0xCC95D4D5DD17E559, 0xED9BE55BDD59EDDF,  // 0x000074C0 
	0xED9DED9FD519BC55, 0xBC55C495C495BC55, 0xB455B455B457A3D3, 0xA3D3A3D3A3D39BD3,  // 0x000074E0 
	0x93939353A3D5BC57, 0xD519DD5BD519C495, 0xCC93CC95CC95DD17, 0xED59ED9BFE1FFE9F,  // 0x00007500 
	0xE55DE55DD519C497, 0xBC55B453BC55B415, 0xA3D5A3D39BD39B93, 0x939393538B518311,  // 0x00007520 
	0x9B93AC15C499DD1B, 0xE59BE55BDD59D4D5, 0xCC95CC93D4D5E59B, 0xEDDDFE1FFE1FFE1F,  // 0x00007540 
	0xE55BD517CCD9BC55, 0xA3919B93A3D39B93, 0x9353935193538B51, 0x83117AD19351B455,  // 0x00007560 
	0xD519E59BEDDDF5DD, 0xEDDBED9BEDDBE559, 0xDCD5D493DD17FE1F, 0xF5DFED9DE59BDD17,  // 0x00007580 
	0xCCD9C497BC55ABD3, 0x93518B0F93519393, 0x8B518B118B518B11, 0x8B51A3D3CCD7ED9B,  // 0x000075A0 
	0xFDDDFE1DF5DBFE1D, 0xFE1DE559DD17DD17, 0xD4D3D4D5D4D7ED9F, 0xDD5BD4D5D517D519,  // 0x000075C0 
	0xB415AC15A3D39B93, 0x8B11830F8B519353, 0x8B518B1193519393, 0xB455E559FE1DF5DD,  // 0x000075E0 
	0xED9BED9BED9BE559, 0xDD17B411B3D1C455, 0xC453DD19CCD7C451, 0xCC95C493C495BC97,  // 0x00007600 
	0xABD59B9393538B11, 0x83118B118B518B51, 0x8B518B119351BC57, 0xDD19EDDBFE1DF5DD,  // 0x00007620 
	0xED99ED9BED99DD17, 0xCC93C453BC11CC97, 0xCC97C497B413ABD1, 0xB413AC13A3D39B93,  // 0x00007640 
	0xA3D3935393538B51, 0x8B118B118B118B11, 0x8B519B93B415C495, 0xD4D5DD17DD59DD17,  // 0x00007660 
	0xD4D5D4D5D4D5DD19, 0xE559D519CC95CC97, 0xCC95BC11C453BC13, 0xB413B453B415A3D3,  // 0x00007680 
	0x9B958B518B518B11, 0x8B118B118B118B11, 0x9353A3D3BC55C455, 0xC453D4D7D517B411,  // 0x000076A0 
	0xB3D1C493CC95CC95, 0xD519DD1BD51BCC97, 0xBC55B413C499C497, 0xABD19B939B939353,  // 0x000076C0 
	0x93958B538B538B53, 0x93538B538B539393, 0xA3D5B457C497CCD9, 0xBC55CCD7D55BC497,  // 0x000076E0 
	0xB413C495CCD7B413, 0xB413C4D9C499AC13, 0xABD3B415AC179B93, 0x935193538B538B53,  // 0x00007700 
	0x9353939593959353, 0x939593539353A3D5, 0xB459B457C4D9D51B, 0xCCD9CD1BCD19CCD9,  // 0x00007720 
	0xCCD9CCD9CCD9BC55, 0xA3D1A391ABD39B91, 0x9B91A3D59B93830F, 0x8B539B9593939395,  // 0x00007740 
	0x9397935393539353, 0x8B538B5393959BD5, 0xA415AC15BC55C4D9, 0xC4D9BC55AC13A3D1,  // 0x00007760 
	0xAC13AC13AC13BC55, 0xABD39B91A3D1A3D1, 0x935193919B959353, 0x8B5193959B979BD9,  // 0x00007780 
	0x9B99939993959353, 0x8B538B5393959395, 0x9BD3A3D3B415B457, 0xB455B413B413A3D3,  // 0x000077A0 
	0x9B8F9B4F9B4F9B91, 0xAC15A3D39B919B91, 0x8B1183118B539353, 0x93979BD76A487A46,  // 0x000077C0 
	0x724A9BD99BD99395, 0x9393935393539395, 0x9BD59B93AC15AC55, 0xAC15A3D3AC13ABD3,  // 0x000077E0 
	0x934F8B0F934FA3D3, 0xAC179B9393539353, 0x82CF830F93939BD7, 0x9BD772487A487A86,  // 0x00007800 
	0x7A46724A6A4A9BD9, 0x9B97939793959393, 0x939593939BD5A3D5, 0xA3D59B9393518B0F,  // 0x00007820 
	0x830F8B0F8B0F9351, 0x9393935383118311, 0x8B1193959BD76A08, 0x72487A467A867A86,  // 0x00007840 
	0x7A46724872486A4A, 0x9BD99BD99B979397, 0x93979B9793959B91, 0x9B91934F8B4F8B0F,  // 0x00007860 
	0x8B11939593559355, 0x939593558B539395, 0x9BD99BD76A0A7248, 0x7246724672467246,  // 0x00007880 
	0x7246724672467248, 0x72486A4A9BD99B97, 0x9B979B979B979B99, 0x9B99939793979399,  // 0x000078A0 
	0x9B999B999B979B97, 0x9B979B9793979BD7, 0x6A086A0872067246, 0x7244724472467244,  // 0x000078C0 
	0x7244724672067244, 0x724672486A066A08, 0x6A086A086A0A6A08, 0x6A086A086A086A0A,  // 0x000078E0 
	0x620A6A0A620A620A, 0x6A086A086A066A48, 0x6A066A066A066A06, 0x6A046A046A046A04,  // 0x00007900 
	0x6A046A046A046A04, 0x6A046A046A066A46, 0x6A066A066A086A08, 0x6A086A086A086A08,  // 0x00007920 
	0x6A086A066A066A04, 0x6A046A046A046A04, 0x62046A066A066A04, 0x6204620462046A04,  // 0x00007940 
};

u64 _spot18_room_0_tex_00007960[] = 
{
	0xB561AD1BB563A49B, 0xB51FB51F9C15A499, 0x9C17A499A499B563, 0xB563B563B563B563,  // 0x00007960 
	0xB563B563B51FB563, 0xB563B563B563B51F, 0xB563ACDBACDDAD1B, 0xB51FB563B5639C15,  // 0x00007980 
	0xB5639C158BD3730F, 0x8BD37B53520D7B11, 0x8BD5730F72CF8351, 0x7B539415520B9C17,  // 0x000079A0 
	0xACDBACDB7B53B563, 0xAD1B8BD5ACDDA499, 0xA49BA49B9C15A499, 0xA49BA4999C158BD3,  // 0x000079C0 
	0xAC9D941783938BD3, 0x9C157B11520B730F, 0x7B536A8D628D730F, 0x94157B53A49B9C17,  // 0x000079E0 
	0xA4999415520BB51F, 0xA49B628D83939C15, 0x9C157B117B537B53, 0x7B537B5372CF624D,  // 0x00007A00 
	0xB51F94179415A499, 0xAC9D8B936A8D8351, 0x9C156A8D6ACF7B11, 0x8BD56A8D730F7B53,  // 0x00007A20 
	0x8351730F628DB561, 0xB51F628D8BD37B53, 0x839394176A8D628D, 0x8BD39C158BD372CF,  // 0x00007A40 
	0xB5639C1594178BD5, 0x8BD37B53628D730F, 0x9C156A8D624D730F, 0x7B11624D624D730F,  // 0x00007A60 
	0x6ACF51CB520BAD1B, 0xA499520D83938BD3, 0x83937B53624D624D, 0x8393A49B8BD3520D,  // 0x00007A80 
	0xB51FA49983939415, 0x8351730F624D624D, 0x8351624D520D6A8D, 0x520D624D6A8D7B53,  // 0x00007AA0 
	0x8351520B51CBAC9D, 0x730F41C96ACF7B53, 0x72CF520D624D8393, 0x72CF7B539C15520D,  // 0x00007AC0 
	0xAD1B9C1594158B93, 0x8BD56A8D520D6A8D, 0x7B536A8D628D624D, 0x6ACF8351730F520B,  // 0x00007AE0 
	0x6A8D398931477B11, 0x41C931477B5372CF, 0x624D6A8D628D9417, 0x8BD583939C17520D,  // 0x00007B00 
	0xA49B94177B538BD3, 0x7B53520D520B624D, 0x6A8D624D624D624D, 0x730F628D624D520B,  // 0x00007B20 
	0x520B41C931474A0B, 0x41C931478BD56A8D, 0x41C9628D628D7B53, 0x9C15839372CF520D,  // 0x00007B40 
	0xB5636A8D6ACF8393, 0x628D6A8D628D7B11, 0x83516A8D51CB520B, 0x628D520BAD1BA499,  // 0x00007B60 
	0xA4999C156A8F51CB, 0x51CB3147628D520B, 0x41C951CB624D8393, 0x730F7B5341C97B53,  // 0x00007B80 
	0xB5639C156A8DA499, 0x8351730F628D6ACF, 0x8351628D520D51CB, 0xA4999C59A499A499,  // 0x00007BA0 
	0x7B118B9593D57B11, 0x9C153147520D6A8D, 0x520B3147624D7B53, 0x628D83937B538351,  // 0x00007BC0 
	0xB563A49B7B118BD5, 0x9C15628D624D6ACF, 0x6ACF624D624D93D5, 0xACDBACDBB563B563,  // 0x00007BE0 
	0xACDB7B539C156A8F, 0xAD1BA45951CB72CF, 0x51CB3147628D72CF, 0x72CF6A8D520D7B11,  // 0x00007C00 
	0xB563A49B9C159C15, 0x6ACF520D624D7B11, 0x624D624DA4597B53, 0xACDB93D5B563B563,  // 0x00007C20 
	0xB563AD1BB5638B95, 0x7B53A459A49B520D, 0x624D41C9624D8351, 0x8393520D9C598BD5,  // 0x00007C40 
	0xB563A49983939C17, 0x8B93730F624D7B11, 0x7B11B563B5639C59, 0xB563B55FB563A49B,  // 0x00007C60 
	0xAD1BA499A49B93D5, 0x72CF9C15ACDBACDB, 0x520B41C9624D520D, 0x624D72CF6A8D628D,  // 0x00007C80 
	0xB5637B537B536ACF, 0x6A8D520D624D8393, 0x730FB51FB55F9C15, 0xACDBACDBB563ACDB,  // 0x00007CA0 
	0xACDB8B959C598B95, 0x628D72CFA49BA459, 0x41C93989628D520D, 0x624D628D730F520B,  // 0x00007CC0 
	0xB563520D7B116A8D, 0x520D520B520B8351, 0xAD1BAD1BB55F93D5, 0x9C17A459B56349C9,  // 0x00007CE0 
	0x49C93147A49B7B11, 0x524D6A8FA459A49B, 0xA45951CB520B51CB, 0x624D6A8D624D520D,  // 0x00007D00 
	0xB563624D7B11624D, 0x6A8D628D624D628D, 0xB563B563A499ACDB, 0xACDBA459628D4A0B,  // 0x00007D20 
	0x3147314749C97B11, 0x520B8B95ACDB93D5, 0x7B113989520B520B, 0x730F6A8D730F41C9,  // 0x00007D40 
	0xB5637B537B11624D, 0x6ACF624D624D6A8D, 0xA499B55FB563B51F, 0xB51FA499520B3147,  // 0x00007D60 
	0x3147314731477B11, 0x628D8B958B958B95, 0x72CF3147628D628D, 0x8393520B51CB3147,  // 0x00007D80 
	0xB5638BD3730F628D, 0x7B11730F628D624D, 0xA499AD1BB51FB55F, 0xAD1BACDB628D3989,  // 0x00007DA0 
	0x4A0B314731478B95, 0x6A8F7B11628D9C59, 0xA4596A8D624D520B, 0x839351CB730F624D,  // 0x00007DC0 
	0xB56394157B538393, 0x8B936ACF624D624D, 0x9C15A459ACDB9C15, 0xA4599C15A4993147,  // 0x00007DE0 
	0x314731478B95AD1B, 0x6A8F9C1572CFAC9D, 0x8B95628D730F41C9, 0x8351520B624D730F,  // 0x00007E00 
	0xB5637B538B938351, 0x7B11520D624D51CB, 0x51CBACDBAD1B7B53, 0x9C15A459ACDB7B11,  // 0x00007E20 
	0x7B538B9593D5B55F, 0x7B119C597B5393D5, 0x6ACF6A8D624D51CB, 0x7B53624D730F730F,  // 0x00007E40 
	0xB5636A8D7B53628D, 0x7B116ACF7B53730F, 0x520B93D58B959C59, 0x9C15A459ACDB8351,  // 0x00007E60 
	0x9C15A4599C15B563, 0xA45972CF7B538B95, 0x624D730F6A8D628D, 0x730F624D730F624D,  // 0x00007E80 
	0xB5636A8D7B538393, 0x7B116ACF6ACF624D, 0x51CB51CBA499A459, 0x9C15B563B51F8B95,  // 0x00007EA0 
	0xAD1BA4997B5393D5, 0xA4998B9372CF72CF, 0x7B11730F7B537B11, 0x624D4A0B7B113989,  // 0x00007EC0 
	0xB51F6A8D730F730F, 0x7B537B116A8D624D, 0x624D730F520DA49B, 0xA459A49BB55F8B95,  // 0x00007EE0 
	0xA499AD1B8B9572CF, 0xA459ACDB41C97B11, 0x6A8D730F7B116A8D, 0x624D520D520B3147,  // 0x00007F00 
	0xB561628D7B53628D, 0x7B116A8D6A8D628D, 0x8351730F520B624D, 0xB5639C59B5639C59,  // 0x00007F20 
	0x8B95AD1BB5637B53, 0x7B1151CB6A8D7B53, 0x7B1183517B536A8D, 0x6A8D624D624D3147,  // 0x00007F40 
	0xAC9D730F730F6A8D, 0x628D730F628D624D, 0x7B117B11628D730F, 0x624D41C9B5639C59,  // 0x00007F60 
	0x9C59ACDBA49941C9, 0x520D624D628D7B11, 0x6A8D7B536A8D7B11, 0x624D520B4A0B3147,  // 0x00007F80 
	0xB51F520D7B117B53, 0x7B11624D6A8D624D, 0x628D6A8D628D7B11, 0x6A8D520B730F41C9,  // 0x00007FA0 
	0x6ACF520B41C94A0B, 0x6A8D624D7B116A8D, 0x628D730F7B116A8D, 0x624D41C951CB3147,  // 0x00007FC0 
	0x9C17A499730F7B11, 0x6A8D624D6ACF6ACF, 0x6A8D624D520D7B11, 0x624D624D7B117B11,  // 0x00007FE0 
	0x730F520B628D624D, 0x624D628D6ACF6A8D, 0x520D83517B536A8D, 0x6A8D4A0B628D520B,  // 0x00008000 
	0xA499A49983517B53, 0x6A8D6A8D6A8D730F, 0x83516ACF624D628D, 0x624D624D624D628D,  // 0x00008020 
	0x624D624D624D624D, 0x520B7B11624D628D, 0x628D7B537B537B53, 0x83513989624D41C9,  // 0x00008040 
	0xACDDA49B72CF7B53, 0x7B1183517B537B11, 0x7B118351624D6A8D, 0x624D730F624D624D,  // 0x00008060 
	0x730F624D624D624D, 0x624D6A8D624D730F, 0x6ACF41C9520B624D, 0x51CB41C941C9624D,  // 0x00008080 
	0xB55F9417628D628D, 0x6A8D7B118351730F, 0x628D6A8D6A8D6ACF, 0x730F7B117B117B11,  // 0x000080A0 
	0x72CF6ACF6ACF624D, 0x520B4A0B520D520B, 0x624D520B520D6A8D, 0x624D520B520B3147,  // 0x000080C0 
	0xA49B628D7B119415, 0x8B93628D6A8D628D, 0x9C15A49B94158351, 0x8351A4999C156A8F,  // 0x000080E0 
	0x3989314731476ACF, 0x624D6A8D83518351, 0x7B53624D83518BD5, 0x9C17624D398941C9,  // 0x00008100 
	0xB563520D520D51CB, 0x4A0B51CB31473147, 0x3147520B520B3147, 0x520B72CF9C177B11,  // 0x00008120 
	0x6ACF624D520B6A8D, 0x31473989628D41C9, 0x3989520B72CF730F, 0x8351314731473147,  // 0x00008140 
};

u64 _spot18_room_0_tex_00008160[] = 
{
	0x520B5A4B628D628D, 0x72D15A4D73115A4D, 0x520B520B628D6ACF, 0x5A4D6ACF7B115A4D,  // 0x00008160 
	0x5A4D6A8F628F72CF, 0x7B116A8D83517B51, 0x8BD7839583537B11, 0x6ACF72CF93D56ACF,  // 0x00008180 
	0x4A0B5A4D72CF5A4D, 0x7B1172CF6A8F5A4D, 0x5A4D520B6A8F6ACF, 0x5A4D6A8D8B936A8F,  // 0x000081A0 
	0x5A4D624D624D8393, 0x8351624D6A8D72D1, 0x8BD5839583957B11, 0x6A8F7B538B936A8F,  // 0x000081C0 
	0x49CB624D72D16ACF, 0x7B1173115A0D5A4D, 0x5A4D520B5A4D6ACF, 0x628D72CF8B936ACF,  // 0x000081E0 
	0x520B6A8F520B6ACF, 0x83535A4D5A0D6A8F, 0x7B517B1183538353, 0x72D17B1173116ACF,  // 0x00008200 
	0x520B6ACF72CF6ACF, 0x83537B515A4B5A4D, 0x5A0B5A0B624D5A4D, 0x6A8F72D17B116ACF,  // 0x00008220 
	0x5A4D72CF72CF628D, 0x72CF6A8F520B5A4D, 0x7B5183537B117B11, 0x6ACF6A8F8B936ACF,  // 0x00008240 
	0x5A4D731172CF72CF, 0x83538353624D5A0D, 0x49CB520B5A4D5A4D, 0x839572D17B116A8D,  // 0x00008260 
	0x5A4D73117B116A8F, 0x7B11628D5A0B624D, 0x7B117B1172D16A8F, 0x628D7B1194178351,  // 0x00008280 
	0x5A4D7B1172CF8353, 0x839383536ACF628D, 0x520B520B6ACF6ACF, 0x7B116ACF8B936A8F,  // 0x000082A0 
	0x6A8D7B1173116A8F, 0x94157B11628D628D, 0x73117B1172D1624D, 0x6A8F73118BD57311,  // 0x000082C0 
	0x5A4D6ACF6A8F628D, 0x7B517B115A4D6A8F, 0x520B5A0B72CF7311, 0x7311839593D56ACF,  // 0x000082E0 
	0x6A8D7B118BD56ACF, 0x94178B936A8D6A8D, 0x6ACF7B5172CF628F, 0x6A8F835193D58353,  // 0x00008300 
	0x5A4D7B516ACF730F, 0x9C1793D76ACF6A8F, 0x5A0D6A8D6ACF7B53, 0x8B958BD58B9372CF,  // 0x00008320 
	0x624D73117B517B11, 0x9C178353624D5A4D, 0x7B1183538B936ACF, 0x628D835194158BD5,  // 0x00008340 
	0x520B72CF5A4D7B51, 0x93D594177B11628D, 0x5A4D6A8F83538BD7, 0x83958BD58B958353,  // 0x00008360 
	0x6A8F72CF6ACF8393, 0x94158353628D628F, 0x7B518B9394197B51, 0x6ACF835194158BD5,  // 0x00008380 
	0x520B6A8F5A4D6ACF, 0x93D79417730F628F, 0x5A4D731193D58BD5, 0x835572CF83538B93,  // 0x000083A0 
	0x73116ACF6A8F8395, 0x93D78393730F628F, 0x7B118BD394178B93, 0x6ACF8B958B958BD5,  // 0x000083C0 
	0x5A4D6A8F72CF8353, 0x8BD594177311628D, 0x6ACF93D59C5793D5, 0x7B116A8F83538B93,  // 0x000083E0 
	0x6ACF72D17B118397, 0x8BD58BD5730F5A4B, 0x628D93D593D78351, 0x6A8F8BD58BD593D5,  // 0x00008400 
	0x5A4D72CF7B118395, 0x8351941772CF6ACF, 0x6ACF93D77B518B95, 0x7B536ACF83937B51,  // 0x00008420 
	0x72CF72CF7B118BD7, 0x941794175A4D520D, 0x7B1193D593D572CF, 0x5A4D8C178BD593D5,  // 0x00008440 
	0x5A4D6A8F6A8F8BD5, 0x8B958393628D8395, 0x6A8F8B9393D77B11, 0x624D6A8D7B518B93,  // 0x00008460 
	0x8353628D72CF8B95, 0x8B958BD35A4D5A0D, 0x6A8F8B938B937B11, 0x628D8BD58BD59417,  // 0x00008480 
	0x5A4D624D6ACF7B51, 0x6A8F8353624D7B51, 0x7B518B938B938B93, 0x5A4D72CF7B537B11,  // 0x000084A0 
	0x8353628F6ACF8B93, 0x7B137B11624D624D, 0x6ACF8B957B5193D5, 0x628F8BD58BD59C57,  // 0x000084C0 
	0x6A8F6A8D520B7B53, 0x628F7B116ACF8353, 0x83938BD594178353, 0x5A4D6ACF6ACF72D1,  // 0x000084E0 
	0x624D628F7B119419, 0x73118B93624D5A4D, 0x6A8D8B9372D19417, 0x5A4D8B958BD993D7,  // 0x00008500 
	0x7B11624D5A4D72CF, 0x628F5A4D73118B95, 0x8B93835393D58B93, 0x5A4D628D5A4D7311,  // 0x00008520 
	0x7B118B9372CF8B93, 0x72CF72CF5A4D624D, 0x6A8F7B117B539C57, 0x62CF83518BD58BD7,  // 0x00008540 
	0x628D5A4D520B6ACF, 0x5A4D7B117B118393, 0x7B5172CF7B518B93, 0x5A4B5A4D6A8F6ACF,  // 0x00008560 
	0x7B517B115A4D8BD5, 0x83958BD5624D72CF, 0x7B0F5A4D7B51A457, 0x839383518BD98395,  // 0x00008580 
	0x520B624D520B6A8F, 0x520B731183517B11, 0x93D56A8F6A8D8B93, 0x5A4D5A4D624D624D,  // 0x000085A0 
	0x6ACF6A8D624D8353, 0x83958351628F7B11, 0x7B0F49CB7B11A459, 0x8C1783958BD58353,  // 0x000085C0 
	0x520B7B115A4D5A8D, 0x4A0B73117B11624D, 0x7B51730F73118B95, 0x6A8F624D72D18351,  // 0x000085E0 
	0x6A8F72CF6A8F72CF, 0x73117B516A8F6A8F, 0x624D5A4D8353A499, 0x941772CF8BD58351,  // 0x00008600 
	0x628D7B51624D624D, 0x520B628D7B117B11, 0x83518B956A8F7B11, 0x72CF5A4D624D8BD5,  // 0x00008620 
	0x835372D16A8F6ACF, 0x5A0D628D6A8F5A0D, 0x5A4B624D8B939C17, 0x9C5772CF8BD58351,  // 0x00008640 
	0x8353839572D1628D, 0x49CB520D7B117311, 0x6ACF7B116ACF72CF, 0x72CF5A4D6A8F9417,  // 0x00008660 
	0x835372D17B538353, 0x624D7B536A8F5A4D, 0x5A4B72CF835393D5, 0x9C17624D8B958B93,  // 0x00008680 
	0x83957B117B116A8F, 0x41C95A4D6ACF8351, 0x83537311628D628D, 0x72CF72CF7B518351,  // 0x000086A0 
	0x7B518355835593D5, 0x624D6ACF624D6A8D, 0x51CB72D1835193D5, 0x9C15628D94158351,  // 0x000086C0 
	0x839573115A0B72D1, 0x51CB628F73118BD7, 0x7B117B11624D6A8D, 0x73117B118B958393,  // 0x000086E0 
	0x7B51835172CF8B95, 0x6ACF7B5372CF72D1, 0x5A4B7B11835193D5, 0x941573118BD593D5,  // 0x00008700 
	0x8BD572D1628D72CF, 0x520B5A4D83538BD5, 0x6A8D72CF6A8D5A4D, 0x83516ACF8B9593D5,  // 0x00008720 
	0x72D16A8F5A0B8B95, 0x7B53839383937B11, 0x6A8D83516A8D8393, 0x835183938BD58B95,  // 0x00008740 
	0x731172CF5A4D5A4D, 0x520D624D83937B11, 0x624B6A8D624D5A0D, 0x7B117B1183519417,  // 0x00008760 
	0x8353520B520B8B93, 0x6ACF731183936ACF, 0x83518B9572CF6ACF, 0x72D18B958B958B93,  // 0x00008780 
	0x628D5A4D5A0B624D, 0x5A4D7B537B117B11, 0x5A4D624D520B5A0B, 0x93D57B1183539415,  // 0x000087A0 
	0x7B51628D5A0B8BD5, 0x5A4D628F8B957311, 0x83517B5172CF628D, 0x8B938BD98BD57311,  // 0x000087C0 
	0x628D5A4D49CB524D, 0x520B73116A8F72CF, 0x5A4D520B5A4D6A8F, 0xA4597B5193D78B93,  // 0x000087E0 
	0x6ACF6ACF72CF8BD5, 0x5A4D731193D78BD5, 0x7B516A8D624D6A8F, 0x8B958BD78B938B93,  // 0x00008800 
	0x5A4D5A0B41C9628D, 0x5A4D628D6A8F72CF, 0x5A0B5A4B72CF8353, 0x94177B118BD58393,  // 0x00008820 
	0x73116ACF72CF6A8F, 0x6ACF6A8F83938B95, 0x83535A4B624D628D, 0x9C17839383518B93,  // 0x00008840 
	0x5A0D524D49CB6A8F, 0x6A8F6ACF73115A4D, 0x520B6A8D72CF7B11, 0x7B11839383518B95,  // 0x00008860 
	0x6A8F5A4D5A4D5A4D, 0x83537B538BD57B11, 0x624D5A4D6A8D6A8F, 0xA49B7B118B958353,  // 0x00008880 
	0x5A4D524B520B7B11, 0x73117B117B115A4B, 0x5A0B6A8D7B116ACF, 0x7B11839583518B95,  // 0x000088A0 
	0x520B5A4B628D624D, 0x7B5372CF8BD56ACF, 0x730F6A8F6A8D628D, 0x93D57B5383958353,  // 0x000088C0 
	0x72CF524B49CB72CF, 0x73116ACF624D520B, 0x520B628D72CF624D, 0x8B937B537B516ACF,  // 0x000088E0 
	0x4A0B5A4D520B6A8D, 0x7B11731183D76A8F, 0x83538B938B936A8D, 0x8BD583537B516A8F,  // 0x00008900 
	0x624D520B520B7B11, 0x628D6ACF49CB520B, 0x520B624D8BD56A8D, 0x6ACF7B536A8F628D,  // 0x00008920 
	0x628D5A4D5A4D7B11, 0x6ACF7B517B538353, 0x7B0F7B116ACF628D, 0x8B957B537B115A4B,  // 0x00008940 
};

u64 _spot18_room_0_tex_00008960[] = 
{
	0x0802052405D80805, 0x05174531700C0A0A, 0x0C02050505020424, 0x0401050505020505,  // 0x00008960 
	0x1510242452371024, 0x2438092424607710, 0x05600D0810850508, 0x6023240816868508,  // 0x00008980 
	0x2A15242460061008, 0x241F282424600F2A, 0x086C3724100C0824, 0x080A0505200D3705,  // 0x000089A0 
	0x2A10242405371005, 0x242A082424600410, 0x08851924100C3231, 0x2A01600801866008,  // 0x000089C0 
	0x2A10242405061524, 0x2415083131600910, 0x0804AF24010C2132, 0x841960080D860F05,  // 0x000089E0 
	0x2A77242405191524, 0x2415083131322810, 0x08040A240CAF1708, 0x34C8020589500F02,  // 0x00008A00 
	0x2A86242405191008, 0x2415603115052805, 0x05021C0805043308, 0x34C8020505010105,  // 0x00008A20 
	0x1070052405191024, 0x2410093110021709, 0x08041C0505044508, 0x080C02051C0C3702,  // 0x00008A40 
	0x0504052405375208, 0x2409103115050560, 0x08041C0505043308, 0x080C04080A0C0405,  // 0x00008A60 
	0x080C0824020D6005, 0x2410153131050405, 0x08020A0505041008, 0x080C0A08020C0204,  // 0x00008A80 
	0x050A0824050D6005, 0x0815523131050405, 0x08041C0205021508, 0x08010C080C0C0205,  // 0x00008AA0 
	0x040508241C101905, 0x6015083131080C05, 0x08041C0404021015, 0x08C80C050A0C0505,  // 0x00008AC0 
	0x3901602A62480433, 0x091045316C191905, 0x76020B284559021F, 0x21880C5239013C10,  // 0x00008AE0 
	0x1F3932151989047E, 0x0B451A0860013708, 0x08190B0217100552, 0x10880F600F011F02,  // 0x00008B00 
	0x0D5B3B1059190406, 0x0B1904325201AF08, 0x08045301281F5952, 0x026248520D0F0223,  // 0x00008B20 
	0x0D1E2615850C5C16, 0x0D09063C15297019, 0x101A200109281752, 0x45010A524E0F0402,  // 0x00008B40 
	0x4E4C090204040C71, 0x1C042384051E0110, 0x28281E060C010932, 0x020C0C050F060A01,  // 0x00008B60 
	0x061A0602010F1629, 0x1E23280505060D17, 0x1A450C0F5E0C0259, 0x021A0C15015E220D,  // 0x00008B80 
	0x9C065F19060D161E, 0x6809091F0901443C, 0x158C390C4C6B0445, 0x044C4505011C0D0C,  // 0x00008BA0 
	0x38161E0A0A0A220D, 0x0F19061010445AAE, 0x085D49170A1E0F05, 0x040C1933E2515B02,  // 0x00008BC0 
	0x1A0B04010B0201F8, 0xF08F6A2A5DE3E3BF, 0xE3FECB3CBA575E09, 0x010F59155F6D0A02,  // 0x00008BE0 
	0x4C0C106201052B2B, 0x66A506E76CA4A491, 0xABFE96BFCF3D4F27, 0x730C760945220423,  // 0x00008C00 
	0x500B1A4304155043, 0x8619622ACBE3BF3C, 0x9ACBC2BF96F44F4F, 0x377EA545050C3706,  // 0x00008C20 
	0x0626040C288C0112, 0x0B021034764CBFA4, 0xF7CB96857A273C9C, 0x701084D8080C503B,  // 0x00008C40 
	0x4361390F1915093A, 0x5119845DCF4C48A4, 0xC2FC849F84472304, 0x3C1508331F5C8601,  // 0x00008C60 
	0x01175F0A1A050466, 0x2E455A6C96C2BFA4, 0xC2FE9A9ACA385A4F, 0x3C5A321019200C09,  // 0x00008C80 
	0x0117064801253D09, 0xDF151FFDFD96A4A4, 0xC2CBC296CBF4BFF7, 0xF75AD949011E0176,  // 0x00008CA0 
	0x39172144CD9F57FB, 0xCFC2C296FDCFA4A4, 0xC2FDF796CBF41C7E, 0x0244598426AF041F,  // 0x00008CC0 
	0x0128175A33FBF4E3, 0xF7C2C2E359454CE3, 0xC296620232290D36, 0x261F1F08395F193C,  // 0x00008CE0 
	0x3B73063C334F13F7, 0xC2E3E3E3591FBFE3, 0xE396C285448D0F06, 0x703159525C0F7610,  // 0x00008D00 
	0x0F19061AA7166E23, 0x330DA7FDCB96F4A4, 0xFB9A154910267043, 0x7E2A3C59205C3C32,  // 0x00008D20 
	0x5BCC0C093C0F631C, 0x016D01CB9696BFBF, 0x3C1F880245015C5C, 0x196C703C8750171F,  // 0x00008D40 
	0x6D045C04320BAC87, 0x0C770272FDCBBF1C, 0x4D040409050B5006, 0xB959281F200F1702,  // 0x00008D60 
	0x1C33A70231F8F082, 0xE2C0423C3CFDBF48, 0x276209766C375F12, 0x5008440977502809,  // 0x00008D80 
	0xE0155F452A2B662E, 0x8850870C25CBF4A4, 0x6144105908190C1A, 0x0431331A160A1904,  // 0x00008DA0 
	0x5F054C32BC43890A, 0x8F0C1E371534F4F7, 0xFB250810D61A375E, 0x5F2432016A0F1904,  // 0x00008DC0 
	0x5F760F3231120B0A, 0x04376B8F0808BFC2, 0xE3F76C3428265C0B, 0x09A31F260A0C0904,  // 0x00008DE0 
	0x5F881F32443A1E50, 0x7E260B022A33F9C2, 0xFBC2967A25275F0C, 0x02311F2B0F010404,  // 0x00008E00 
	0x0159152A2B82225C, 0x620C5E159D3CF4BF, 0xE3C2FDFE10611062, 0x05A3080E0A060101,  // 0x00008E20 
	0x4C3C1534F6205F06, 0x067E01089D61F4BF, 0x2B0284CA17731943, 0x082A153A290F4C0C,  // 0x00008E40 
	0x0A04442A39002306, 0x0C3923324196F426, 0x505733334C191937, 0x08081722676D5E0F,  // 0x00008E60 
	0x0B8F25241F931906, 0x37731A84415A2F66, 0x0B6221280119A573, 0x3108121E2E42294E,  // 0x00008E80 
	0x06101524624AB75E, 0x37A75F49414F6D53, 0x370926010C264537, 0x2A522D1E29295067,  // 0x00008EA0 
	0x01101534067F770A, 0x481C0C1F311A68B7, 0xDE4E01390F232537, 0xA3289B5642F56B53,  // 0x00008EC0 
	0x1A02083401938D50, 0x261C373231257F42, 0x4ED021855E021F1A, 0x082BAA581DE56B97,  // 0x00008EE0 
	0x010915345EB07D16, 0x620C59052A087CC3, 0x48373C1948CC4509, 0x080C7FB1C0895CC0,  // 0x00008F00 
	0x7009BA2A21715337, 0x092332342A316829, 0x060145045B882537, 0x0832E998C0F53A22,  // 0x00008F20 
	0x280215E41768B7DE, 0x4E17F3197A2A2577, 0x508F19621E010573, 0x3157719322A71D51,  // 0x00008F40 
	0x1928152A257F424E, 0x0F451F092A31E080, 0x0A0404011C6A7E37, 0x2A1A7C4A204E874A,  // 0x00008F60 
	0x0C0432A3157CC30F, 0x0A283C10BC1582AC, 0xA15C19371C5C0C37, 0x24731E03C356299B,  // 0x00008F80 
	0xA10132A31568290F, 0x06021F1531314780, 0x29012F0A0D161A1A, 0x316148161C4A4222,  // 0x00008FA0 
	0x0B02252415257716, 0x01054908312AD071, 0x48042F0C480A6033, 0x0510F2514697770A,  // 0x00008FC0 
	0x6A3C05E410E0565E, 0x1752086CA3C85193, 0x671A8806045EF302, 0x7010B18751770B06,  // 0x00008FE0 
	0x3A09252A26828D21, 0x105931082A67A87C, 0x3F2804485F064C45, 0x1A25206B420B4C06,  // 0x00009000 
	0x0B3C5A313A1D0A09, 0x61093252DD6BEB7F, 0x0C19621643AF5C08, 0x3C1C71828D0F2306,  // 0x00009020 
	0x5E15157A7B0D0433, 0x6001056C05E593AC, 0x4319044E9C12192A, 0xA5634A6E890F2350,  // 0x00009040 
	0x2115156C0E0F4515, 0x1F707A2A3C3A7763, 0x043CA50B1C37522A, 0x06A6710F285C5E51,  // 0x00009060 
	0x458C15083C105932, 0x09592A2A09AC516E, 0x091936350C707A31, 0x62B0AC3B602B3A94,  // 0x00009080 
	0x0949490845763305, 0x102A2A24E293C389, 0x39266B6A09373131, 0xEF9BB5EF027E5C1C,  // 0x000090A0 
	0x4A49086C48CC0532, 0x592424D935475023, 0x0273540B1902246C, 0xB6B093291912290F,  // 0x000090C0 
	0x462B590862361F1F, 0x0515050A0F176121, 0x101A4E3604453109, 0x0D0D6A6B047E0D6D,  // 0x000090E0 
	0x430C61280C093906, 0x090202040C172123, 0x60390D351A452806, 0x065F010F73230F22,  // 0x00009100 
	0x1130112C0E443822, 0x0A07545643041004, 0x331A166B26350056, 0x09010F1F40074013,  // 0x00009120 
	0x40133007C13E0707, 0x1814110E303F0711, 0x124B073E3E181800, 0x00008111001411C7,  // 0x00009140 
};

u64 _spot18_room_0_tex_00009160[] = 
{
	0x2828010202280A06, 0x06011F26060B291C, 0x26024C0B0F040F67, 0xB723330D1E6D820A,  // 0x00009160 
	0x0202392810284E0C, 0x0F1A171A0B0A0D0D, 0x26194C0A0D090A0D, 0x89731F066A5B2004,  // 0x00009180 
	0x17021A21151F4E01, 0x0F28260B5B5C501C, 0x06090C5B1C02010A, 0x0D011F199C0B2E1A,  // 0x000091A0 
	0x19020419151F4801, 0x0A230A5E5B010426, 0x0B06390A160B0D16, 0xB90417230B1E2001,  // 0x000091C0 
	0x09170102521F0B16, 0x0B1A0A0667260901, 0x0A39260A0B0D1E5B, 0x160261230D1C221A,  // 0x000091E0 
	0x02451A3352330A06, 0x0A1A261651060901, 0x062606390A0B2916, 0x6A1721230F296D04,  // 0x00009200 
	0x02281A0832100606, 0x6706161E1E2B7043, 0x0F4301190A161E1E, 0x483C02230F292001,  // 0x00009220 
	0x21191A5215100639, 0x0D266DD051261A01, 0x5B431A1A16060D46, 0x0910230B5B1EB59C,  // 0x00009240 
	0x37191A3232330606, 0x1C43200A94062623, 0x5B48230C0D061E53, 0x1F59045B0B205687,  // 0x00009260 
	0x0209213252330106, 0x0B390B82972B3909, 0x5B0A02015B390D0D, 0x33597E16481C2251,  // 0x00009280 
	0x04040D1F10050223, 0x0A390D298D061A28, 0x161610040B39160D, 0x0510040A221C228D,  // 0x000092A0 
	0x0104162310150219, 0x01020D375F012626, 0x220B33095B231653, 0x1010021A0D1C1E42,  // 0x000092C0 
	0x015C164C44493C09, 0x0402220D2309260A, 0x6D6A59090B040D53, 0x0510025F0D1C1C6D,  // 0x000092E0 
	0x094C220F3384051A, 0x06231620A519090A, 0x201E1F090F011651, 0x5210025E160B4E20,  // 0x00009300 
	0x1A011E0632494909, 0x0B045B6D1919020A, 0x6D2202214C0C0B4E, 0x101238350D0A0AAC,  // 0x00009320 
	0x0A0C6A1A32154917, 0x0F010B0D23370406, 0x6D0D020904010B29, 0x21090D677B0A6A1E,  // 0x00009340 
	0x0D0C01041F331528, 0x4C0C0A4809041004, 0x200B091A16485C50, 0x04280D1C1E0A0F0B,  // 0x00009360 
	0x0D0F1A011F08081A, 0x04010A4E10023C01, 0x6D0B0904166A5C50, 0x2302864E2036060C,  // 0x00009380 
	0x220C190417080504, 0x16480C4805593206, 0x1E220202700C500B, 0x09020A1E77060F0C,  // 0x000093A0 
	0x1606280933080523, 0x166A4C0F1032D801, 0x1E163C21040C5C0A, 0x091F361E5E76040C,  // 0x000093C0 
	0x0B01090932341521, 0x700C5C0F1F051939, 0x205B171A060CA74C, 0x2833061E0A1A374E,  // 0x000093E0 
	0x01371909D86C2523, 0x040C5C0F10251F0F, 0x820D09260B0F5E5E, 0x17445E0B5B435F5B,  // 0x00009400 
	0x7004020252154436, 0x060CA74C25D11523, 0x715B041A3723190C, 0x3C32040B500F010D,  // 0x00009420 
	0x6201021F32083326, 0x0B0F5E5E33493C09, 0x6D67232819153737, 0x1F15020A0106010D,  // 0x00009440 
	0x5F4C021715342523, 0x3723190C32490206, 0x200D232833320F37, 0x17521F160B1A014E,  // 0x00009460 
	0x0106191759492519, 0x1A091A192852190D, 0x716B390115450F4C, 0x1F08100F0F09390A,  // 0x00009480 
	0x0A0C171F1F152801, 0x391A28020208190A, 0x6D53010632880C26, 0x1F08100637023916,  // 0x000094A0 
	0x0B0617173208040A, 0x5F387301448C230F, 0x6D517301D8885C21, 0x091533010417010A,  // 0x000094C0 
	0x4301451705BA1906, 0x50015F0C4508090B, 0x6D0D060C52284802, 0x2F3205381928044E,  // 0x000094E0 
	0x6B0F021705174E1C, 0x6A010A0F2315090F, 0x6D22160F05194C48, 0x1052250445191916,  // 0x00009500 
	0x0B4E19173219375F, 0x0A73015B0231010D, 0x82710A0133044C4C, 0x332510431019044C,  // 0x00009520 
	0x0D16190215023701, 0x0F5F0C061F310C22, 0xB029011A09044806, 0x1025331A1F8F0401,  // 0x00009540 
	0x161A450215100123, 0x480A0F011F315F2B, 0x8D0B163745044C9C, 0x1025100402041904,  // 0x00009560 
	0x1604103C5245430F, 0x0C0A0104027A0616, 0x670A06881F064C06, 0x1059190973060A0B,  // 0x00009580 
	0x2204103C08190C16, 0x011A260419089C5B, 0x04060A431F62014C, 0x3225042516485E01,  // 0x000095A0 
	0x2E09100208190D22, 0x0104260919520B48, 0x010B1606841F4C06, 0x1525023C16011A23,  // 0x000095C0 
	0x0B09331F52092967, 0x4323284510080B1E, 0x064E0A5E3C025F0B, 0x6C1502850A060A0D,  // 0x000095E0 
	0x4C19101708020B67, 0x0B09330210086B2E, 0x1A504E0F17040401, 0x6C15174C4E0F5B29,  // 0x00009600 
	0x0128103C5D5A0C1E, 0x0F1A1502176C202E, 0x1F0F164E1F062109, 0x6C2510166D0B0D06,  // 0x00009620 
	0x4C28331034520951, 0x50090817336C6768, 0x050A2E0B02734504, 0x32326C6A511C2239,  // 0x00009640 
	0x2E1F3310088C446D, 0x061A081005150C48, 0x1F0D1E0B19736004, 0x05DB080F1E1C7701,  // 0x00009660 
	0x4C0210100808051E, 0x26272A1F05250104, 0x050606160D0D3C1F, 0x5ACD10012E296D01,  // 0x00009680 
	0x012310336C7A1567, 0x061A412833253719, 0x02060A16770B2815, 0x10250876290B0B0C,  // 0x000096A0 
	0x4C231010088C0867, 0x0638490910320C37, 0x17010F060F501908, 0x1025451F0D1C2920,  // 0x000096C0 
	0x7E092819498C6C22, 0x2609150402440601, 0x251A060FA70C6208, 0x313425090D0B1E16,  // 0x000096E0 
	0x261945025208325B, 0x2309340102250C5C, 0x05090116361A7017, 0x3115020B4222160D,  // 0x00009700 
	0x09021F2805150929, 0x01213C0176330A22, 0x332804166A390121, 0x8433280A20510A28,  // 0x00009720 
	0x1F1F102815DB0A1E, 0x0C1A150123171C29, 0x1F1F020A5001041A, 0x5205590A2E510A09,  // 0x00009740 
	0x101033282A59670D, 0x360152090621060F, 0x1F02020616390404, 0x1532327B20060621,  // 0x00009760 
	0x23101009151F1F3B, 0x06388C440F1A0C5E, 0x330202010D040904, 0x1515154E510B6823,  // 0x00009780 
	0x103C3C0932020122, 0x0C3C080506360D48, 0x10022801295C230A, 0x235A451F0D0B6801,  // 0x000097A0 
	0x1F171F095209060D, 0x01447A150616510B, 0x17021906501C0116, 0x151525090D4E1E26,  // 0x000097C0 
	0x0145102152010616, 0x01178C080A227151, 0x1F38040C0B5B045E, 0x3115020B420D1E01,  // 0x000097E0 
	0x17021F1715280B0B, 0x16178C080A687153, 0x171A0A4C0B1C0104, 0x2A08280A20160B04,  // 0x00009800 
	0x051F3C020919091E, 0x160915190A0D2053, 0x05020B48060D0215, 0x3410590A2E160A02,  // 0x00009820 
	0x320217021A3C091E, 0x16090802160D0A2E, 0x05190B0F22291708, 0x081F327B200C0D28,  // 0x00009840 
	0x2501280923102322, 0x0A1A52097B060671, 0x59040B0A0A0B1A33, 0x0876151C220A0B02,  // 0x00009860 
	0x4904191A0905230A, 0x6238DD2320060120, 0x3201166A0F0B0410, 0x081F061C220B0619,  // 0x00009880 
	0x2570190902051A06, 0x0C1A5A011E5B430A, 0x051906060F4E4C17, 0x7A081F1C1E0A0B09,  // 0x000098A0 
	0x10CF041759100601, 0x1A091006290D010C, 0x0502060A0F0B0F1A, 0x1F08281C1C010621,  // 0x000098C0 
	0x102301250510010D, 0x0B1A02061E06530B, 0x1704060D4C283501, 0x2319320B4E09481F,  // 0x000098E0 
	0x0204391025174806, 0x50393C0F2E0D5367, 0x0201060D06280F23, 0x0219150A0A010B01,  // 0x00009900 
	0x7309014510170F0C, 0x5C1A1A068216511C, 0x171A01500F041C09, 0x2119050D6D0B0F0A,  // 0x00009920 
	0x3909261710020B36, 0x0601610F1E0B4E9C, 0x1719010B0D090404, 0x2110250D6D670D16,  // 0x00009940 
};

u64 _spot18_room_0_tex_00009960[] = 
{
	0x93CE838E838C93D0, 0x7B0A834C9C10C55A, 0xA452A454BD19C519, 0x72CB5A076ACB8B8F,  // 0x00009960 
	0x72CB8B8D9C137B4D, 0x834DBCD7C5599411, 0x628862888B8E9C10, 0x9C108B8E6AC86A8A,  // 0x00009980 
	0x8B90628872C893CE, 0x834C8B8C9C10C518, 0x93D1A413BD19CD5B, 0x6ACB52076A897B0D,  // 0x000099A0 
	0x730D7B4D9C119C11, 0x7B0B8B8FB4959C0F, 0x6AC972CA93D093D0, 0x93D093D06ACA730C,  // 0x000099C0 
	0x834C5A066AC88B8E, 0x834A72CA72CB8BD1, 0x8B8FAC55A4559C15, 0x834D624B628B628B,  // 0x000099E0 
	0x628B6A8B72CD730D, 0x6ACB628B9C139C11, 0x72CB6A89834D834E, 0x93D093D072CC7B0C,  // 0x00009A00 
	0x834C7B0A9C10BCD6, 0x93CE72C96A8972CB, 0x93D193D1834F628B, 0x624B624B5A4B49C9,  // 0x00009A20 
	0x398749C95A4B624B, 0x5A095A49628B8B8F, 0x72CB6A897B0D834F, 0x9C1093D0834C834E,  // 0x00009A40 
	0x6AC88B8CB4D6C55A, 0xA4117B0B834D93D1, 0x834F730D5A4B5A4B, 0x41C9314720C51083,  // 0x00009A60 
	0x108320C328C53145, 0x398752095A495209, 0x624B72CB72CD8B8F, 0x941193D093CE834E,  // 0x00009A80 
	0x5A0693D0C518B4D7, 0xAC9593D193D1834F, 0x5A4B4A0931471083, 0x18C3108310430841,  // 0x00009AA0 
	0x0841084110831043, 0x1041188321054187, 0x51C9624B6ACB7B0F, 0x9C11A412A41093D0,  // 0x00009AC0 
	0x72CAA454BCD99C53, 0xC51BAC557B0F5A4B, 0x41C7290510430801, 0x0001084108410841,  // 0x00009AE0 
	0x0841084108410841, 0x08010841104118C3, 0x398749C96ACD7B4F, 0xA455AC559C12A452,  // 0x00009B00 
	0x8B8EA452B497A453, 0x8BD3628B52094187, 0x20C5084308410841, 0x0841084110411041,  // 0x00009B20 
	0x0001080100010001, 0x0001000108011041, 0x20C339875A4B7B0F, 0xA453A453A413A454,  // 0x00009B40 
	0x834CA411A453A413, 0x7B4F5A4B398720C5, 0x0841080108410841, 0x0841104110831083,  // 0x00009B60 
	0x0841080100010001, 0x0001000100010841, 0x1041290541C76ACD, 0x93D1A453B4D7AC94,  // 0x00009B80 
	0x8B8EAC53A4138B91, 0x5A4B49C929051043, 0x0841084108411041, 0x1041108310831883,  // 0x00009BA0 
	0x1043000100010001, 0x0001080108410841, 0x0841188331475A4B, 0x834FA453AC958B8F,  // 0x00009BC0 
	0xA455AC5393D1730F, 0x5209314510430841, 0x0841084108411041, 0x0841084108410841,  // 0x00009BE0 
	0x0841000100010001, 0x0001080100010001, 0x0841084120C34A09, 0x730F94138B8F72CB,  // 0x00009C00 
	0xA495A41393D1624B, 0x3987084108410001, 0x0801000100010841, 0x0841084100010001,  // 0x00009C20 
	0x0841084108410841, 0x0001000100010001, 0x0801080118833987, 0x730D8B9172CB72CB,  // 0x00009C40 
	0x8B8F9C137B0F5A4B, 0x0041080108410801, 0x0841000108011083, 0x1883084108410841,  // 0x00009C60 
	0x0841084108410841, 0x0841000100010001, 0x0001000110832905, 0x628B834D628972CB,  // 0x00009C80 
	0x834D9C136ACD5A4B, 0x0001104310830841, 0x08410841104118C3, 0x18C318C310811041,  // 0x00009CA0 
	0x1883108118831883, 0x1083084108410841, 0x0001000110432905, 0x6ACD6ACB6A8B7B0D,  // 0x00009CC0 
	0x8B8D8B91624B5209, 0x1041188308410841, 0x1083104118C33145, 0x20C3314520C31081,  // 0x00009CE0 
	0x18C320C320C32905, 0x1883188318C31041, 0x0001000108413107, 0x93D3730B6A8B72C9,  // 0x00009D00 
	0x8B8F93D15A4B3987, 0x1041108308431043, 0x20C318C329033985, 0x4187290320C31883,  // 0x00009D20 
	0x290520C3290520C3, 0x20C3290529051883, 0x00010001084141C9, 0xAC95730B62896287,  // 0x00009D40 
	0x8B8F9C1352093987, 0x1083290518832905, 0x2905290339853987, 0x41C7310529052905,  // 0x00009D60 
	0x39872905290320C3, 0x29053105314520C3, 0x104300010841BCD9, 0x8B8F730B62495204,  // 0x00009D80 
	0x8B8F9BD14A093987, 0x1883314721053947, 0x3987398541875209, 0x4A09314531453145,  // 0x00009DA0 
	0x3987314520C320C3, 0x3105314531452905, 0x20C30841628DCD5B, 0x834D730D62496248,  // 0x00009DC0 
	0x834D8B8F5A4B3987, 0x210541C941C7520B, 0x49C7314541C549C7, 0x4A09394531453145,  // 0x00009DE0 
	0x4187314520C32903, 0x3145398531853145, 0x29052905CD5BBD19, 0x8B8F6AC95A477B0A,  // 0x00009E00 
	0x7B0B834D52073987, 0x2905398741C749C9, 0x418531454A0949C7, 0x5209394539454185,  // 0x00009E20 
	0x49C7314529052905, 0x3987398539874187, 0x3145628DCD5BB4D7, 0x7B4D72C95A467B0A,  // 0x00009E40 
	0x834D7B0D520741C7, 0x188320C329053145, 0x3987398749C749C7, 0x49C73145314549C7,  // 0x00009E60 
	0x4A09314531453145, 0x3987398541C73987, 0x628DC559C5199BCF, 0x7B0B730B5A466288,  // 0x00009E80 
	0x8B8F7B0D62897B4F, 0x290520C329053145, 0x3987418749C94A09, 0x41C7314541C549C7,  // 0x00009EA0 
	0x4A09394531453145, 0x418741C749C74187, 0xAC97C519ACD79C11, 0x834D730A52065206,  // 0x00009EC0 
	0x8B8E730D72CB8B8F, 0x93D1290520C53145, 0x398741C752095209, 0x41C731454A0949C7,  // 0x00009EE0 
	0x5209394539453985, 0x41C749C941C7730F, 0xBCD9B4D7AC979C11, 0x8B8D7B0C5A465206,  // 0x00009F00 
	0x834C72CB62879BD1, 0x9C1341C721052905, 0x394741C752095209, 0x49C9314541C749C7,  // 0x00009F20 
	0x49C7314531454187, 0x41C74A095209C519, 0xB4979BD1B4979C11, 0x834C834C62885204,  // 0x00009F40 
	0x8B907B0D7B4D7B0D, 0xA413A45539473947, 0x314749C95249524B, 0x49C92903314549C9,  // 0x00009F60 
	0x4A09310331053945, 0x4A095A4BB4D7C519, 0x9BD1938FAC95938F, 0x72CA834C6AC849C4,  // 0x00009F80 
	0x7B4C72CA8B8F7B4D, 0x7B0DA413B49741C7, 0x314541C952095249, 0x4A073945398549C7,  // 0x00009FA0 
	0x524B3145314549C7, 0x4A099413C51993D1, 0x6A8993D19C13834C, 0x7B0C8B907B0A49C4,  // 0x00009FC0 
	0x834C834E7B0C830B, 0x730993D1B4D7AC95, 0x398741C949C95A49, 0x5A4941C741C749C7,  // 0x00009FE0 
	0x52093945520941C7, 0x9C13CD5BBCD76247, 0x628993D19C128BCE, 0x8B8E93D0830C51C4,  // 0x0000A000 
	0x8BCE9C12838C834A, 0x7B09834DAC95B497, 0xB49752095A4B4A09, 0x5A49628B5A4B5A49,  // 0x0000A020 
	0x624B52094A09B497, 0xC519BD19AC955A47, 0x5A078BCEA454A410, 0x8B8E8B8C830C5206,  // 0x0000A040 
	0x8BCEA45293D0834C, 0x72CA834DA413AC95, 0xAC95BCD7A4555A8B, 0x5A8D520949C94A09,  // 0x0000A060 
	0x93D3B497B4D7C519, 0xB495938F7B0B730D, 0x730C93D0A454A452, 0x93CE8B4C7B0C5204,  // 0x0000A080 
	0x8B8E9C108B8E7B4C, 0x72CA834CA4539C13, 0x93D1A455B4D7BD19, 0xBCD9C51BB4D79C13,  // 0x0000A0A0 
	0xA413BD19C55993CF, 0x8B8F93D17B0B7B0C, 0x834C9C1093D09C10, 0x93D08B8E834C6286,  // 0x0000A0C0 
	0x834C938E7B0A6ACA, 0x6288730A9C10A453, 0x628972CDA4559C11, 0xA453AC95B4D7A455,  // 0x0000A0E0 
	0x93D1B495B495B4D7, 0xAC9593CF6A887B0C, 0x730A834C834C8B8E, 0x93D08B8E834C72CA,  // 0x0000A100 
	0x7B0A838C6A885A06, 0x6A88834CA452AC94, 0x93D193D193D18B8F, 0xAC958BCF9C517B4D,  // 0x0000A120 
	0x838FA4539C13AC97, 0xB4D89BD0624672CA, 0x6288730A93CE93CE, 0x9C129BCE8B8E834C,  // 0x0000A140 
};

u64 _spot18_room_0_tex_0000A160[] = 
{
	0x553E6E3F3F093133, 0x2791274DA04D2B55, 0x5557701717211A2B, 0x474646822E464646,  // 0x0000A160 
	0x46466D2E46468246, 0x2222836E03354D4D, 0x3DC9573D57279292, 0x4F3D2B3E4DBEA01A,  // 0x0000A180 
	0x27BB6E2D1D02312A, 0x1525445755352B12, 0x1A4F17091A263516, 0x3A222E2E2E2E2E2E,  // 0x0000A1A0 
	0x46B6461D1D1E222E, 0x22207D07004D0E40, 0x124D3D27574F9A72, 0x2532612D2C113038,  // 0x0000A1C0 
	0x2F696E7C47109D24, 0x3449154457555557, 0x55571A26262B0A0A, 0x1616222E2E2E220A,  // 0x0000A1E0 
	0x2E6D2E1E2E6D4656, 0x5653566E30400347, 0x3F4755274425497A, 0x497A091D2D3E3F55,  // 0x0000A200 
	0x2B691D0A09052441, 0x2A7A8425443C4F61, 0x21571A2F26262B2B, 0x2B2B351666470A35,  // 0x0000A220 
	0x1622942E2E223516, 0x2E221D1D470E3535, 0x1255917249345D34, 0x344157D2D269A038,  // 0x0000A240 
	0x4DD2474027159D41, 0x4134083225252544, 0x444F095738383838, 0x1A3939264E2B0106,  // 0x0000A260 
	0x2B360A16352B2B2F, 0x262B435555575744, 0x5A15494934952A5D, 0x4164571D351D3F40,  // 0x0000A280 
	0x2B8E6E3E4F5A649D, 0x412A347A49498415, 0x2525441717173C17, 0x2117023809021909,  // 0x0000A2A0 
	0x0909090921612161, 0x6117102525255A84, 0x490808345D5D2A2A, 0x4164213516B6D20E,  // 0x0000A2C0 
	0x0E8E8E3074499D9D, 0x9D4141DA5D5D5D7A, 0x498415846C151515, 0x15086C6C08080852,  // 0x0000A2E0 
	0x526C6C087A7A3434, 0x347A343434345D5D, 0x2A2ADA4141E8419D, 0x649D6130A1462D35,  // 0x0000A300 
	0x0790B369729A9D9D, 0x6441646441414134, 0x343434343434347A, 0x313131FC2AFC2A2A,  // 0x0000A320 
	0x2A2A2A2A5D95952A, 0x34345D5D2A5D2A2A, 0x4141416464649D9D, 0x9D643D2D6ED29447,  // 0x0000A340 
	0x8180B369A9252464, 0x4141416441414141, 0x2A5D343495343495, 0x953495955D952A34,  // 0x0000A360 
	0x7A34343434E18449, 0x5A5A6F5D5D5D5D5D, 0x414141414141419D, 0x9D64576ED2D21D1D,  // 0x0000A380 
	0x65B4B33FBB084141, 0x4141414141414141, 0x415D5D5D346F6F6F, 0x6F346F6F5D5D345A,  // 0x0000A3A0 
	0xAB49494949495A49, 0x49496F5D6F6F5D5D, 0xB241E7644141649D, 0x9D243D30B48E2D2B,  // 0x0000A3C0 
	0x757C8E3E2B7A4141, 0x415DB2B25DB25D5D, 0x5D5D5D346F8A5A5A, 0x49AB49ABAB9A7274,  // 0x0000A3E0 
	0x255A258A8A9A5A5A, 0xAB8A496FE16F6F6F, 0x5DB25DB24141E864, 0x9D2A923F6E693074,  // 0x0000A400 
	0x4030691861FC4141, 0x5D5D5D5D6F6F6F8A, 0x4949ABAB5AF17272, 0x9F9F724444443D55,  // 0x0000A420 
	0x614F449F9F259F44, 0x255A5A5AAB8A8A49, 0x6F6F6F6F5D5D5D41, 0x415D743F3E3EA06F,  // 0x0000A440 
	0x723F69407A41E82A, 0x34498A8A8AF1F15A, 0x7274AEAEAE3D5791, 0x573D3D575757551B,  // 0x0000A460 
	0x1A21615561913857, 0xC9914FAE74447272, 0x725A8AAB8A8AE1CA, 0x2A5D4F4003BEA94F,  // 0x0000A480 
	0x26303E4D27244134, 0x8A5A72729F744F4F, 0x9127272F4D401257, 0x274D5555124D5536,  // 0x0000A4A0 
	0x2B552B4D612B2B12, 0x4D5538573DC93D27, 0x91AE74749F9F725A, 0x34349A141440A074,  // 0x0000A4C0 
	0x2B6930553C244149, 0x7244747491C9C9C9, 0x5740471D2D004D1A, 0x214D12173D273816,  // 0x0000A4E0 
	0x0A2F552604222B12, 0x2F4F3C27A9912F55, 0x27C93D9191919274, 0x4934490E033F3F57,  // 0x0000A500 
	0x4D2D115715343472, 0x74929155403F2F4D, 0x47566D461E2B571A, 0x21382F575539040B,  // 0x0000A520 
	0x2B0A4E2E514A2236, 0x211A2F1BA07474A9, 0xADBB14A0554D1B91, 0xF18A9A40473F302B,  // 0x0000A540 
	0x2B3040275A3D91A0, 0x27A0BB2D692C2CBE, 0x79D579AAB5E9D2A8, 0xA8EBD579E9AA79AA,  // 0x0000A560 
	0xAA79AAD5D5D579A8, 0xD5A6D2B3693E8E80, 0x69B479B47C562D1B, 0x92923D123E4D3F44,  // 0x0000A580 
	0x273FBE2715250825, 0x3D91274D123D1340, 0x032D7D4A6801472E, 0x16222E1D2D465646,  // 0x0000A5A0 
	0x466D464646462E2E, 0x2E2243401BC927A9, 0xC935B61D2B264D92, 0x498AF11BADC9A06F,  // 0x0000A5C0 
	0x3D3E1D4D17153434, 0x444F5557273F404D, 0x4D3E2E353A225646, 0x475446562D1D5646,  // 0x0000A5E0 
	0x56561D1D2E464646, 0x2E4736124D27270E, 0x3F3530557474725A, 0x6F5D4F91A04DA074,  // 0x0000A600 
	0xBB30304040342A2A, 0x34498A449F1B273D, 0x3F1D3F351D2D461D, 0x471D462D473B1D1D,  // 0x0000A620 
	0x46352B2B40473B35, 0x3B1A063555404057, 0x124D1B57447272D1, 0x5DB2024DA0BBA09F,  // 0x0000A640 
	0x0E303E3E4D7A4141, 0x5DD16F6FAB727474, 0xA91B55122F4D4022, 0x2B552B2B389C4047,  // 0x0000A660 
	0x35402B264D402B47, 0x354D2B2B40401B12, 0x4D559174725A8A6F, 0x41414447403FBB91,  // 0x0000A680 
	0x038E1D3F91844141, 0xD7CA5D6FD16F6F8A, 0x5A7474749F915755, 0x573D613857385555,  // 0x0000A6A0 
	0x4D405555552F1212, 0x125555552F552757, 0x91AE9F5A5AAB496F, 0x41B24FA9401D3E12,  // 0x0000A6C0 
	0x352D304038154141, 0x41B25D5D5D5D5D6F, 0x49ABAB8A5A5A729F, 0x44449F444F4F4F4F,  // 0x0000A6E0 
	0x573D3D3D613D3D4F, 0xAE74449F9F727272, 0x9A5A496F6F34CA5D, 0x415D84A047303055,  // 0x0000A700 
	0x123E2C1D121541E7, 0x646464E741B25D5D, 0x5D6F6F6F6F6F4984, 0x5A5A5A9A25259A72,  // 0x0000A720 
	0x9A9A2572259A5A84, 0xAB84494949E16F6F, 0x6F34345DD7B24141, 0x4141571D1D303027,  // 0x0000A740 
	0x2B40BB1D2B9A6464, 0x6464646464414141, 0x5D5D5D5D5D5D5D34, 0x3434959534343434,  // 0x0000A760 
	0x5D5D2A2A95955D5D, 0x5D2A2A5DDA5D4141, 0xB241414164646464, 0x644155A035303F3D,  // 0x0000A780 
	0x553E3F3061FC9D64, 0x6464646464646464, 0x6464646464644141, 0x41414141414141DA,  // 0x0000A7A0 
	0x2A2A2A41DA414141, 0xDADA41414141E8E8, 0x416464649D9D6464, 0x644157BB403F3061,  // 0x0000A7C0 
	0x4F696E7C61416441, 0xB2B2416464414141, 0xE841DA414195087A, 0x3495953434343434,  // 0x0000A7E0 
	0x34497A7A349534E1, 0x7A343495955D2ADA, 0x4141414141414164, 0x64645A403547BE08,  // 0x0000A800 
	0x74BE69353DE85D5D, 0x5D955D5D5D34346F, 0x6F4934495A25AE3C, 0xAE4F3C3C613C3C3C,  // 0x0000A820 
	0x44443C4F61176161, 0x442525845A1549E1, 0x3434952A2A2A2A2A, 0xE76495A0300EBE49,  // 0x0000A840 
	0x72308E304D9A49E1, 0x4949E15A72449F44, 0x44443C4F211A2626, 0x2B2B2B0A352B360A,  // 0x0000A860 
	0x362B35362B471D47, 0x122F551A38174444, 0x4425251549490834, 0x41647ABE14BBC549,  // 0x0000A880 
	0x742D30301415AB5A, 0x9A5A253D551B4D4D, 0x2B2B35B90A161616, 0x1622223A2E471D1D,  // 0x0000A8A0 
	0x1D1D1D352E568335, 0x402D46470E4D4D55, 0x4D38213C449A4934, 0xB22AFCBE74C9BB5A,  // 0x0000A8C0 
	0x4D944013721525AE, 0xAE743DA91B0E3F47, 0x472D160B1E1E2016, 0x2B2E2E352E564647,  // 0x0000A8E0 
	0x4756473B1D542E47, 0x46661D4747223512, 0x0335554D27445A49, 0x8A84A355AEA0AD5A,  // 0x0000A900 
	0x91403F1DA9576157, 0x27403E81B390E6B3, 0xA8E9B5EB79D5D579, 0xB5D579E9AAAAAAB5,  // 0x0000A920 
	0xD5D5A879AAAAA8D5, 0x6EB4B479D5AAB390, 0xFF8E2C652C11BBC4, 0xAD44324F3D57AD72,  // 0x0000A940 
};

u64 _spot18_room_0_tex_0000A960[] = 
{
	0x010102390106011F, 0x0928378797535B8D, 0x4816F65E201E670B, 0x0D200A87821E0104,  // 0x0000A960 
	0x1E0B0206060A4301, 0x2828018787821E1C, 0x7E4E5B2801016A6B, 0x220D53875346290F,  // 0x0000A980 
	0x1E06023616160B4E, 0x1A040C296767460B, 0x090A16040437375F, 0x0A0D6D9B0D2E1C06,  // 0x0000A9A0 
	0x0B06390A160B7B1E, 0x06010A29201C2E0B, 0x0406160F010F5C0A, 0x0A1651DC0D0D9C26,  // 0x0000A9C0 
	0x0A39260A0B0D205B, 0x1616220D675B0D5B, 0x0C06160B1A0B1E16, 0x0A1651DC82824301,  // 0x0000A9E0 
	0x062606390A0B2916, 0x1E461E0D161E820F, 0x040A2E0B431E0D7E, 0x040B5B4A9B974C01,  // 0x0000AA00 
	0x0F4301190A161E1E, 0x20510D160B51970B, 0x0906770B091E0A09, 0x0D7720204AB54843,  // 0x0000AA20 
	0x06231A1A16060D46, 0x420F0D0D6B1EB542, 0x01060D0F0C6D0410, 0x0D0A6DD051565B01,  // 0x0000AA40 
	0x061A230C0D061E53, 0x1C01162929205687, 0x37066B0B060D0201, 0x670A200A94976723,  // 0x0000AA60 
	0x060602015B390D0D, 0x0B621E0D0C1C2251, 0x02010B292B222326, 0x0B390B82979B5B09,  // 0x0000AA80 
	0x262B10040B39160D, 0x0F0F1E290A1C228D, 0x23040D1604674802, 0x0A390D298D4A1C28,  // 0x0000AAA0 
	0x1A0633095B231653, 0x0A0B1E510F1C1E42, 0x098F161C0B6D1A02, 0x01020D375F711E61,  // 0x0000AAC0 
	0x441F59090B040D53, 0x5F5E6D8D0B1C1C6D, 0x020C168920461709, 0x0402220D23012E1A,  // 0x0000AAE0 
	0x57021F090F011651, 0x09011E675B0B4E20, 0x5901220D771E177E, 0x06231620A5624E01,  // 0x0000AB00 
	0x210902214C0C0B4E, 0x3C041C510D0A0AAC, 0x1F011E1E0B0D2109, 0x0B045B6D19620C04,  // 0x0000AB20 
	0x0902020904010B29, 0x21090D0D160A6A1E, 0x025E0D0D5F4E1F21, 0x0F010B0D23370419,  // 0x0000AB40 
	0x0902091A16485C50, 0x04280D480F0A0F0B, 0x280B0D0D1F7E4509, 0x4C0C0A4809041076,  // 0x0000AB60 
	0x26020904166A5C50, 0x230286480B36060C, 0x380B2929337E231A, 0x04010A4E10023C09,  // 0x0000AB80 
	0x0AB90202700C500B, 0x09020A890B060F0C, 0x190F1C1C1F012319, 0x16480C4805593219,  // 0x0000ABA0 
	0x160A3C21040C5C0A, 0x091F36290676040C, 0x234E5B5B17192823, 0x166A4C0F3232D81F,  // 0x0000ABC0 
	0x670A171A060CA74C, 0x2833060B0F1A374E, 0x0A43290B33591909, 0x700C5C0F25101928,  // 0x0000ABE0 
	0x205B09260B0F5E5E, 0x17445E0B06435F5B, 0x010C1C5B17052828, 0x040C5C0F25101F04,  // 0x0000AC00 
	0x715B041A3723190C, 0x3C320406370F010D, 0x700C0B0D23050219, 0x060CA74C08DD1523,  // 0x0000AC20 
	0x6D67232819153737, 0x1F15020C0606010D, 0x625C0A0B37600402, 0x0B0F5E5E32493C09,  // 0x0000AC40 
	0x200D232833320F37, 0x17521F0F0A1A014E, 0x060F0A4E04604821, 0x3723190C32490206,  // 0x0000AC60 
	0x716B390115450F4C, 0x1F08100F0F09390A, 0x060B1C1C19600C19, 0x1A091A1F1052190D,  // 0x0000AC80 
	0x6D53010632880C26, 0x1F08100637023916, 0x350B480B17523762, 0x391A28055208190A,  // 0x0000ACA0 
	0x6D517301D8885C21, 0x091533010417010A, 0x0B0B0C1C09087350, 0x5F382815498C230F,  // 0x0000ACC0 
	0x6D0D060C52284802, 0x2F3205381928044E, 0x0D0F0C0A02BA5E16, 0x500101D85208090B,  // 0x0000ACE0 
	0x6D22160F05194C48, 0x1052250445191916, 0x6B0B0F4E19174E1C, 0x6A0106321015090F,  // 0x0000AD00 
	0x82710A0133044C4C, 0x332510431019044C, 0x0B291C290419375F, 0x0A73015B0231C30D,  // 0x0000AD20 
	0xB029011A09044806, 0x1025331A1F8F0401, 0x0D160B1E17023701, 0x0F5F0C061F312922,  // 0x0000AD40 
	0x8D37043745044C9C, 0x1025100402041904, 0x161C891E15100123, 0x480A0F011F310D2B,  // 0x0000AD60 
	0x670145881F064C06, 0x1059190973060A0B, 0x16890B1C5245430F, 0x0C0A0104027A6716,  // 0x0000AD80 
	0x040423431F62014C, 0x3225042516485E01, 0x220D36866C190C16, 0x011A260419080D5B,  // 0x0000ADA0 
	0x015F2606841F4C06, 0x1525023C16011A23, 0x2E1C5F0C08190D22, 0x0104260919520B48,  // 0x0000ADC0 
	0x0648375E3C025F0B, 0x6C1502850A060A0D, 0x0B4E010652092967, 0x4323284510080B1E,  // 0x0000ADE0 
	0x1A4C370F17040401, 0x6C15174C4E0F5B29, 0x4C4806B908020B67, 0x0B09330210086B2E,  // 0x0000AE00 
	0x1F19014E1F062109, 0x6C2510166D0B0D06, 0x010F480A5D5A0C1E, 0x0F1A1502176C202E,  // 0x0000AE20 
	0x0504430B02734504, 0x32326C6A511C2239, 0x4C06065E34520951, 0x50090817336C6768,  // 0x0000AE40 
	0x1F060F0B19736004, 0x05DB080F1E1C7701, 0x2E040A0B088C446D, 0x061A081005150C48,  // 0x0000AE60 
	0x05060B160D0D3C1F, 0x5ACD10012E296D01, 0x4C04220D0808051E, 0x26272A1F05250104,  // 0x0000AE80 
	0x02481616770B2815, 0x10250876290B0B0C, 0x010F1E0A6C7A1567, 0x061A412833253719,  // 0x0000AEA0 
	0x170106060F501908, 0x1025451F0D1C2920, 0x4C5E0B6A088C0867, 0x0638490910320C37,  // 0x0000AEC0 
	0x2538010FA70C6208, 0x313425090D0B2053, 0x7E060C4E498C6C22, 0x2609150402440601,  // 0x0000AEE0 
	0x05022816360A5005, 0x3115020B422287AC, 0x260F010F5208325B, 0x2309340102250C5C,  // 0x0000AF00 
	0x334517166A6A1C23, 0x8433280A20515142, 0x096A0A0D05150929, 0x01213C0176330A22,  // 0x0000AF20 
	0x1F02170A50160A43, 0x5205590A2E510620, 0x1F0D0D0D15DB0A1E, 0x061A150123171C29,  // 0x0000AF40 
	0x1F091706160D0119, 0x1532327B20010971, 0x10290D5B2A596706, 0x0A0152090621060F,  // 0x0000AF60 
	0x332145010D480904, 0x1515154E51282387, 0x21485B0DA31F514C, 0x0D388C440F1A0C5E,  // 0x0000AF80 
	0x10020201295C230A, 0x235A10061E28239B, 0x05060D67311F1E4C, 0x0A3C080506360D48,  // 0x0000AFA0 
	0x171F0206501C0116, 0x1515100D51060C4A, 0x0501221E2A02160A, 0x06447A150616510B,  // 0x0000AFC0 
	0x1F38040C0B5B045E, 0x3115100F0C0A0B20, 0x10026D1E2A280F6A, 0x06178C0804437151,  // 0x0000AFE0 
	0x171A0A4C0B1C0104, 0x2A081706A7060F22, 0x1002202E2A280D0A, 0x3B178C0823067153,  // 0x0000B000 
	0x05020B48060D0215, 0x34100B5B22015022, 0x0501462E17190916, 0x3B17050401012053,  // 0x0000B020 
	0x05190B0F22291708, 0x081F16500DCF5C0D, 0x32232E2219310967, 0x0A216C8F06430A2E,  // 0x0000B040 
	0x59040B0F4E0A172A, 0x08760B0F16450F29, 0x2521221E06522367, 0x2B23250606010671,  // 0x0000B060 
	0x32010A0FA7621F2A, 0x081F062E8237D071, 0x081A0A2E3810170A, 0x6209252B06010120,  // 0x0000B080 
	0x05197304040C8531, 0x7A081F7B20060D82, 0x1521436D1A022306, 0x0C09440B0A01430A,  // 0x0000B0A0 
	0x05230C01190F7631, 0x6C0828681E0D8246, 0x2506066709190D01, 0x1A09170F066B010C,  // 0x0000B0C0 
	0x09041A020545592A, 0x0852391620672E20, 0x8626090F0409061E, 0x0101320A170F6215,  // 0x0000B0E0 
	0x030A061F19730625, 0x134F1422208D0D3F, 0x120010162B1A6A01, 0x3314253921011227,  // 0x0000B100 
	0x210E4345260614C7, 0xC4C614110E062613, 0x3F183D0F204E162B, 0x141327094D031313,  // 0x0000B120 
	0x7500002C13401413, 0x81141B271B111411, 0x073527690E120314, 0x0E1403112C2F1226,  // 0x0000B140 
};

u64 _spot18_room_0_tex_0000B160[] = 
{
	0x3A00000003031303, 0x3014114D133D401B, 0x4B7C001D4700D427, 0x13C614121311003F,  // 0x0000B160 
	0x03188B124B300000, 0x0713131314130311, 0x570E0000400314C7, 0xC4C6141114141313,  // 0x0000B180 
	0x073527690E120314, 0x0E1403112C2F1226, 0x7500002C13401413, 0x81141B271B111411,  // 0x0000B1A0 
	0x14553D5721142B3E, 0x1413121300121212, 0x5721211B27C4AD1B, 0xA20011142C301107,  // 0x0000B1C0 
	0x030E0E001B1B6907, 0x11000707001B1200, 0x00001311141B1413, 0x2C3E071100001D03,  // 0x0000B1E0 
	0x0603032CB83E1813, 0x3E00301D4B304065, 0x1465551413111440, 0x300713133F180707,  // 0x0000B200 
	0x042F3E1207181127, 0xBE186E07031D3E11, 0x111413AD1B001300, 0x031B1214114D271D,  // 0x0000B220 
	0x070707001869003B, 0x182D547C90303F13, 0x11148B2C110E033F, 0x1300001800131B1D,  // 0x0000B240 
	0x1100110000004769, 0x0058182D213E3503, 0x1712B82F1E352E3A, 0x140314131400112D,  // 0x0000B260 
	0xC403182D54030E2D, 0x1D00076592031314, 0x00131B400D685403, 0x1D163B3F65008B13,  // 0x0000B280 
	0x10271B273D610003, 0x11111303122F1114, 0x2F143D5AAE74CD44, 0x4F3D8ADF5A101411,  // 0x0000B2A0 
	0x611B030E12001818, 0x0E111B2F3955215F, 0x163D0E4FA20E2761, 0x49EE72CA3343120E,  // 0x0000B2C0 
	0x1A3803030365073E, 0x00110E0313071307, 0x663838127F6E5336, 0x0215615536070754,  // 0x0000B2E0 
	0x11D32C07001D1412, 0x07381B12542D5658, 0x663521170A54220A, 0x123D25382B664656,  // 0x0000B300 
	0x2C400E03003F1203, 0x0003030E00071856, 0x6B472B101755264C, 0x363849210A16547D,  // 0x0000B320 
	0x1314550E472B3B22, 0x6B1B2C130E2F3A0A, 0x11131314140A4336, 0x68164F14472D5422,  // 0x0000B340 
	0x032B61353B0B2C03, 0x1D0003470078351D, 0x561600033B3B0B3B, 0x6B540E12034B6640,  // 0x0000B360 
	0x2C400E3B4D2B548E, 0x130E40133007C13E, 0x4A3A06233B4D3668, 0x54302F6E071D471D,  // 0x0000B380 
	0x001202260B121100, 0x0003130312126E35, 0x2B35091F260B2F36, 0x681661271257362E,  // 0x0000B3A0 
	0x2B021F033F2C133F, 0x0E3826040616462B, 0x2F2B023C0A0D3B2F, 0x2626170609356866,  // 0x0000B3C0 
	0x262857033A6B382F, 0x1225231001B90A26, 0x2B2609553B166B38, 0x1B2610091F484703,  // 0x0000B3E0 
	0x38042F6B3B163B03, 0x0EDB251532051525, 0x2F1335003A3B163B, 0x032F2515326114FA,  // 0x0000B400 
	0x2F21231A0210121B, 0x558C1510213B2B3D, 0x00003E1800032F81, 0x2C0E1327400E3A12,  // 0x0000B420 
	0x47212574552B362F, 0x4FDD32023A202E00, 0x543B1814A9001307, 0x573F303F9E30222E,  // 0x0000B440 
	0x982621662D475E2F, 0x123823052E531E2D, 0x807807180711032C, 0x0E12180000303E3A,  // 0x0000B460 
	0x58353658661D3A14, 0x003A1227120E0D16, 0x2E83353B47000E4B, 0x0E3F076530000707,  // 0x0000B480 
	0x2E3536661818400E, 0x27110E14122D6E2E, 0x2E7B36031D008B03, 0x000707B40378072D,  // 0x0000B4A0 
	0x221D363A000E2F02, 0x2F0E00403A2EB57C, 0x2E22223607751407, 0x0727000E03030066,  // 0x0000B4C0 
	0x7F2D1702030E4055, 0x39091B1A0A2E2E00, 0x553E3F1807120738, 0x213D0E0E143E0018,  // 0x0000B4E0 
	0x461D3D09471D0A2F, 0x2B4343041D463F14, 0x1807470712120E26, 0x4FA238392646003A,  // 0x0000B500 
	0x2E06682E22B4802D, 0x462E351A1EB51D07, 0x2700000714271180, 0x307F221201536E22,  // 0x0000B520 
	0x06023699787C0756, 0x538394172EA80E03, 0x0047001212120078, 0x78DC83B928834B12,  // 0x0000B540 
	0x0123251A2235121B, 0x0E2E2B106E4B0769, 0x2D47351B3D1B5422, 0x2D1E221A61994726,  // 0x0000B560 
	0x3621250203001413, 0x4D0307170E350E2B, 0x04662B14142F0A43, 0x5E167C36171D3A35,  // 0x0000B580 
	0x4F5A1A542D40110E, 0x0000184D388E073E, 0x3E404F28220E5422, 0x3B7B801D25613B3B,  // 0x0000B5A0 
	0x6F492B2D7854001B, 0x36221307030E1203, 0x4B03122F77680730, 0x1D16479234343D1B,  // 0x0000B5C0 
	0x174925271B123F0E, 0x1392921227000311, 0x00001827914F1744, 0x572F384F8C251B1B,  // 0x0000B5E0 
	0x3C12584B00142149, 0xD15A6F491A0E0300, 0x54614949924D3D4F, 0xCE443D172543402B,  // 0x0000B600 
	0x094F033A78530A02, 0x348C61263A2D001E, 0x4602055754002E36, 0x8508153D36540754,  // 0x0000B620 
	0x3538440F1D543B0E, 0x271B122B665456B4, 0x7B353D4443274D2F, 0x2FA25A382B661856,  // 0x0000B640 
	0x003A030018000312, 0x1B36472D4B074A56, 0x6B3A360000A2ED27, 0x122F49020A47544A,  // 0x0000B660 
	0x07540E2D1D0E121B, 0x0E072F473A2D543B, 0x471D2B0303032F27, 0x432F251A3A182E3B,  // 0x0000B680 
	0x75030E2D1D071203, 0x1D07002D031D0E58, 0x2D2D1B12030E1236, 0x351617030E14122B,  // 0x0000B6A0 
	0x03120E031207363A, 0x1B0E1D0E1D03473A, 0x2D16011B3512033A, 0x3B580E1B27141B12,  // 0x0000B6C0 
	0x1B12070E270E0E0E, 0x2F00072F0200544B, 0x473509211B852703, 0x0303030E2B0E3B3A,  // 0x0000B6E0 
	0x1218070E3B3B0312, 0x120E551B034B660E, 0x1B2B1702362F0E2D, 0x1D1D0E1B27121D66,  // 0x0000B700 
	0x2628470E36470312, 0x2F2F0E27030A430E, 0x2B39282627275803, 0x1D031B0E1B1B0E0E,  // 0x0000B720 
	0x0923350003121B4D, 0x0E030E0E3F212515, 0x4F0904120E0E0203, 0x1D0E121B1B03140E,  // 0x0000B740 
	0x2F21030300187800, 0x0300430012540A21, 0x1B2F21362F4DB43A, 0x1D0E1B4B4D12140E,  // 0x0000B760 
	0x22382F4700003503, 0x2F2121233A202E54, 0x660336000E0E0909, 0x1212552F3A03072D,  // 0x0000B780 
	0x581238782D470621, 0x2826361222531E2D, 0x80564312542D3A36, 0x3B120E352618662D,  // 0x0000B7A0 
	0x7C353658662E3672, 0x436E3A03467C0D16, 0x22665478542E472B, 0x38360717266E6654,  // 0x0000B7C0 
	0x2E3536984678384B, 0x03225447464A6E2E, 0x2E2E0E354A467838, 0x154D54232B536E18,  // 0x0000B7E0 
	0x221D06362B09610E, 0x2E890D543A2E7D75, 0x2E221D2B362B213C, 0x85212F192B164678,  // 0x0000B800 
	0x7F2D1F021721431D, 0x800D0D16221D5483, 0x681E200A04170902, 0x1A39851726472E98,  // 0x0000B820 
	0x46220368450D1E7C, 0x7D200B0F1E666B56, 0x581E0D160A0A6B0A, 0x26360639266E2E0D,  // 0x0000B840 
	0x1E060D7760772080, 0x20631C20290D2220, 0x2042422963200D4A, 0x2D56542B39538316,  // 0x0000B860 
	0x56421C4204424279, 0x1C631C201E56164A, 0x4A42290C42531E7F, 0x1C534A2B2899B41A,  // 0x0000B880 
	0x202063200C29290F, 0x85867D204A0D421C, 0x1C0D20051C292942, 0xD0290BA879834726,  // 0x0000B8A0 
	0x0D0D974202632905, 0x085C63294229631C, 0x1C1C0D2A04294229, 0x086386A84A7D5619,  // 0x0000B8C0 
	0x291C427904422924, 0x2A1C63290404EC0B, 0x0B0F292A084A421C, 0x050F19020C634A45,  // 0x0000B8E0 
	0x0B1C4202050C0C24, 0x2A0C63290502421C, 0x1E1E090805634A05, 0x051C0208020B2005,  // 0x0000B900 
	0x1C0C1C0505050508, 0x08231C0F050A1C20, 0x0F052408240A1C24, 0x051C080504020502,  // 0x0000B920 
	0x0802052405020805, 0x05730C31700C0A0A, 0x0C02050505020424, 0x040A050505020505,  // 0x0000B940 
};

u64 _spot18_room_0_tex_0000B960[] = 
{
	0x1200000003031303, 0x3014114D133D401B, 0x4B7C001D4700D427, 0x13C614121311003F,  // 0x0000B960 
	0x3F188B124B300000, 0x0713131314131313, 0x210E0000400314C7, 0xC4C6141114141313,  // 0x0000B980 
	0x073527690E120314, 0x0E1403112C2F1226, 0x7500002C13401413, 0x81141B271B111411,  // 0x0000B9A0 
	0x14553D5721142B3E, 0x1413121300121212, 0x5721211B27C4AD1B, 0xA20011142C301107,  // 0x0000B9C0 
	0x030E0E001B1B6907, 0x11000707001B1200, 0x00001311141B1413, 0x2C3E071100111311,  // 0x0000B9E0 
	0x112C032CB83E1813, 0x3E00301D4B304065, 0x14651B14143F1414, 0x1107131303180707,  // 0x0000BA00 
	0x3007651207181127, 0xBE186E07031D0711, 0x111413AD1B001300, 0x031B1214114D2707,  // 0x0000BA20 
	0x6E0707001818D300, 0x6E1D1D7590303F13, 0x11142C078B13033F, 0x1300001800131B2D,  // 0x0000BA40 
	0x1100110000000369, 0x300018754B690365, 0x9E12B82F142C3F13, 0x14031413402C1118,  // 0x0000BA60 
	0x070018181814128E, 0x3E006618901D0314, 0x2C130081142C2C03, 0x3E11110065008B30,  // 0x0000BA80 
	0x1403032F38210011, 0x650011694B000014, 0x1B110E3F3FE60003, 0x0011113E13301130,  // 0x0000BAA0 
	0x131B030E12001818, 0x0E113F03034D1B13, 0x00003E071D300014, 0x142C2C07039E142C,  // 0x0000BAC0 
	0x4D69309E0365073E, 0x00110E0313070E07, 0x030730181818BD13, 0x11143E111411112C,  // 0x0000BAE0 
	0x1107D31800071414, 0x1800400E3E030047, 0x0069B3BD182C132C, 0x14302C1114031400,  // 0x0000BB00 
	0x2C400E1100031403, 0x073E031300070707, 0x2C4011074D1BED2C, 0x141111131111EA00,  // 0x0000BB20 
	0x1314032C3E2C0713, 0x11B83E130E2F031B, 0x1113111313AD1312, 0x11138B1313131B00,  // 0x0000BB40 
	0x032C0707004B0703, 0x1D00113011072C14, 0x031200183E114D03, 0x07073E2F40002D90,  // 0x0000BB60 
	0x2C4007000000078E, 0x130E40133007C13E, 0x07071814110E303F, 0x0711124B073E3E18,  // 0x0000BB80 
	0x3E03031B11031100, 0x00031303120E6E6E, 0x07131300132C1BC1, 0x13301327211B0018,  // 0x0000BBA0 
	0x03000711132C1303, 0x032CBB8B00181807, 0x651114030011070E, 0x27300E0012120000,  // 0x0000BBC0 
	0x000013112CEA0000, 0x039E0714654B1803, 0x3007000014120012, 0x3F268B13303F188B,  // 0x0000BBE0 
	0x4B07180013139014, 0x000311112C4B4B30, 0x1811307581180000, 0x111800141B073527,  // 0x0000BC00 
	0x1D070703002C1B03, 0x301103C513181400, 0x2D07187518070E4B, 0x2C0E13130714553D,  // 0x0000BC20 
	0x30112C181314149E, 0x783F2CC52C132107, 0x070718184B651307, 0x2703000303030E0E,  // 0x0000BC40 
	0x1813111111114D00, 0x030313273D440E03, 0x652D65180711032C, 0x0E12182C00112C03,  // 0x0000BC60 
	0x3E00032C188B7507, 0x30403F1B1B120718, 0x0018033F03001475, 0x0E3F07182C300765,  // 0x0000BC80 
	0x00403F3F18181213, 0x27110E1412001330, 0x1830350303118B03, 0x000707E6036E0707,  // 0x0000BCA0 
	0x810011031B27C53D, 0x3F112C113F004014, 0x07300E3F07751407, 0x18273E3F30110011,  // 0x0000BCC0 
	0x00003D1B2C12033D, 0x1411142C2CD4141B, 0x3D2C3F18182B6507, 0x113D030314070018,  // 0x0000BCE0 
	0x2D11134011002C11, 0x11009E11032C131B, 0x182C111812110707, 0x1303180E1B140303,  // 0x0000BD00 
	0x14270E4D111414EA, 0x2C270E8111B80307, 0x27002C0730071412, 0x3E3E187511131B03,  // 0x0000BD20 
	0x9E003E120713C513, 0x1BED141411903500, 0x070007122F3F1300, 0x00D3180E004D6930,  // 0x0000BD40 
	0x031311650E14D41B, 0x27030E1B0E7C0769, 0x6E004B8E12030303, 0x3F3F0E07271107D3,  // 0x0000BD60 
	0x2C14031200183E11, 0x4D0307073E2F4000, 0x2D90039E65818111, 0x40074013112C400E,  // 0x0000BD80 
	0xC13E07071814110E, 0x303F0711124B073E, 0x3E18180000008111, 0x001411C713131403,  // 0x0000BDA0 
	0x580E032D581D1D27, 0x12031D2D030E1203, 0x581D1D5858031D27, 0x031B032D03031D58,  // 0x0000BDC0 
	0x1D1D581D2D2D2D03, 0x58551B03122D032D, 0x2D1D990358580E1D, 0x270E1D2D2D2D2D2D,  // 0x0000BDE0 
	0x580E58581D2D121B, 0x0E582D12120E1D2D, 0x582D582D1D030E58, 0x1DA8991D2D2D5803,  // 0x0000BE00 
	0x032D580E58122D03, 0x27021212031D031D, 0x03A858992D120358, 0x2D58581D1D2D1D1D,  // 0x0000BE20 
	0x1D032D0358581D0E, 0x271B0E0358031D2D, 0x1D2D58031D030E27, 0x12990E581D58581D,  // 0x0000BE40 
	0x2D581D2D581D0312, 0x1B0E1D2D582D0358, 0x58580E2D2D120E03, 0x1B12032D0E2D0E58,  // 0x0000BE60 
	0x2D2D0E2D1D0E121B, 0x0E580E1D0E2D2D2D, 0x122D0E1D0303271B, 0x1B1B0E2D03581D0E,  // 0x0000BE80 
	0x99030E2D1D2D1203, 0x1D2D1D2D031D0E58, 0x2D2D1B12030E1B12, 0x030E03030E1B1212,  // 0x0000BEA0 
	0x03120E03122D1203, 0x1B0E1D0E1D03030E, 0x031B031B0E120303, 0x0E580E1B271B2727,  // 0x0000BEC0 
	0x27122D0E270E0E0E, 0x271D2D27021D1D58, 0x5812121B1B022703, 0x0303030E120E0303,  // 0x0000BEE0 
	0x1258580E0E0E0312, 0x120E271B03582D0E, 0x1B271B1B1B270E2D, 0x1D1D0E1B27121D2D,  // 0x0000BF00 
	0x1D2D1D0E12030312, 0x270E031B1D1D0E0E, 0x031B0E0E27275803, 0x1D031B0E1B1B0E03,  // 0x0000BF20 
	0x2D2D031D03121B1B, 0x0E030E0E2D1B581D, 0x030E0E120E0E0203, 0x1D0E121B1B031B0E,  // 0x0000BF40 
	0x1D4B033A1D58581D, 0x3A1D2B2D352D2B35, 0x2B2B3B542F12B43A, 0x1D0E4D4B4D274D2B,  // 0x0000BF60 
	0x3B123A0707660758, 0x543B36361B2F0936, 0x543B0E070E0E0909, 0x12122F2F3A361D47,  // 0x0000BF80 
	0x1D0418227C562E2D, 0x2F47033A0354036E, 0x1854542D1B543A36, 0x3A2B0E47543A3A36,  // 0x0000BFA0 
	0x2F163A22467B1603, 0x36783A0007661D54, 0x3A2E7B583A2E0E2B, 0x163A4716663B3B1D,  // 0x0000BFC0 
	0x2F1D7C4620562099, 0x3A0D543A1D12001D, 0x1B565354542E3A16, 0x061D3B3B0E36162F,  // 0x0000BFE0 
	0x2B3B0022F24A2000, 0x7B891E7B1D00072E, 0x54564A4A3A683A0B, 0x0B3B160B7B4B3A12,  // 0x0000C000 
	0x3A163B7B0F1C4678, 0xA8292916221D5453, 0x181E4229200D3A0D, 0x202020F20D3B161E,  // 0x0000C020 
	0x2D7B1D20051C2E7C, 0x7D421C861E545456, 0x58772929420F0B1C, 0x42634242421E8920,  // 0x0000C040 
	0x58200D7705292080, 0x20631C42290D2242, 0x2042422963421C42, 0x2963634A4A291C1C,  // 0x0000C060 
	0x56421C4204424279, 0x1C631C422904294A, 0x4A42290C42422942, 0x1C1C1C796329290C,  // 0x0000C080 
	0x424263420C29290F, 0x020F63424A1C421C, 0x1C2942051C292942, 0x0F290F797942291C,  // 0x0000C0A0 
	0x29294A4202632905, 0x080C63294229631C, 0x1C1C292A04294229, 0x08630F7963634A02,  // 0x0000C0C0 
	0x291C427904422924, 0x2A1C63290404631C, 0x0B0F292A084A421C, 0x050F02020C634A05,  // 0x0000C0E0 
	0x1C1C4202050C0C24, 0x2A0C63290502421C, 0x1E1E090805634A05, 0x051C0208021C4205,  // 0x0000C100 
	0x1C0C1C0505050508, 0x08231C0F050A1C20, 0x0F052408240A1C24, 0x051C080504020502,  // 0x0000C120 
	0x0802052405020805, 0x05730C31700C0A0A, 0x0C02050505020424, 0x040A050505020505,  // 0x0000C140 
};

u64 _spot18_room_0_tex_0000C160[] = 
{
	0x0802052405D80805, 0x05174531700C0A0A, 0x0C02050505020424, 0x0401050505020505,  // 0x0000C160 
	0x1510242452371024, 0x2438092424607710, 0x05600D0810850508, 0x6023240816868508,  // 0x0000C180 
	0x2A15242460061008, 0x241F282424600F2A, 0x086C3724100C0824, 0x080A0505200D3705,  // 0x0000C1A0 
	0x2A10242405371005, 0x242A082424600410, 0x08851924100C3231, 0x2A01600801866008,  // 0x0000C1C0 
	0x2A10242405061524, 0x2415083131600910, 0x0804AF24010C2132, 0x841960080D860F05,  // 0x0000C1E0 
	0x2A77242405191524, 0x2415083131322810, 0x08040A240CAF1708, 0x34C8020589500F02,  // 0x0000C200 
	0x2A86242405191008, 0x2415603115052805, 0x05021C0805043308, 0x34C8020505010105,  // 0x0000C220 
	0x1070052405191024, 0x2410093110021709, 0x08041C0505044508, 0x080C02051C0C3702,  // 0x0000C240 
	0x0504052405375208, 0x2409103115050560, 0x08041C0505043308, 0x080C04080A0C0405,  // 0x0000C260 
	0x080C0824020D6005, 0x2410153131050405, 0x08020A0505041008, 0x080C0A08020C0204,  // 0x0000C280 
	0x050A0824050D6005, 0x0815523131050405, 0x08041C0205021508, 0x08010C080C0C0205,  // 0x0000C2A0 
	0x040508241C101905, 0x6015083131080C05, 0x08041C0404021015, 0x08C80C050A0C0505,  // 0x0000C2C0 
	0x3901602A62480433, 0x091045316C191905, 0x76020B284559021F, 0x21880C5239013C10,  // 0x0000C2E0 
	0x1F3932151989047E, 0x0B451A0860013708, 0x08190B0217100552, 0x10880F600F011F02,  // 0x0000C300 
	0x0D5B3B1059190406, 0x0B1904325201AF08, 0x08045301281F5952, 0x026248520D0F0223,  // 0x0000C320 
	0x0D1E2615850C5C16, 0x0D09063C15297019, 0x101A200109281752, 0x45010A524E0F0402,  // 0x0000C340 
	0x4E4C090204040C71, 0x1C042384051E0110, 0x28281E060C010932, 0x020C0C050F060A01,  // 0x0000C360 
	0x061A0602010F1629, 0x1E23280505060D17, 0x1A450C0F5E0C0259, 0x021A0C15015E220D,  // 0x0000C380 
	0x9C065F19060D161E, 0x6809091F09060406, 0x4505010C4C6B0445, 0x044C4505011C0D0C,  // 0x0000C3A0 
	0x38161E0A0A0A220D, 0x0F1906101F0123B9, 0xD615020C0B1E0F05, 0x040C1933E2515B02,  // 0x0000C3C0 
	0x1A0B04010B0201F8, 0xF08F6A08525C0C6B, 0x3608175C045B0F09, 0x010F59155F6D0A02,  // 0x0000C3E0 
	0x4C0C106201052B2B, 0x66A50F31150F0B3B, 0x6108286704220B36, 0x730C760945220423,  // 0x0000C400 
	0x500B1A4304155043, 0x8619622A335C169C, 0x5732091676820A36, 0x377EA545050C3706,  // 0x0000C420 
	0x0626040C288C0112, 0x0B020234760C160A, 0x2632095E33200C06, 0x4CA533D8080C503B,  // 0x0000C440 
	0x4361390F1915093A, 0x51190208450C5B4E, 0x1A3102015900235C, 0x481959331F5C8601,  // 0x0000C460 
	0x01175F0A1A050466, 0x6D1923051F37160A, 0x097A192332938806, 0x0C02601019200C09,  // 0x0000C480 
	0x011706480117361C, 0x2B193959598F4E4E, 0x57523728054A0D5F, 0x0428D949011E0176,  // 0x0000C4A0 
	0x39170F060C39470B, 0x390473CF59280A0A, 0x3905014525460D43, 0x0473598426AF041F,  // 0x0000C4C0 
	0x0123861A370F5150, 0x5F39730659450A06, 0x01CC010225510D36, 0x261F1F08395F193C,  // 0x0000C4E0 
	0x3B735E09623BA650, 0x8F0C5C5F591F225E, 0x43190102448D0F36, 0x7E3159525C0F7610,  // 0x0000C500 
	0x0F19061AA70D7986, 0x761E5CD905172E0B, 0x36048F02284E5C06, 0x7E2A3C59205C3C32,  // 0x0000C520 
	0x5BCC0C093C0F631C, 0x01715005171F2E29, 0x9C0C881745AF5C5C, 0x196C703C8750171F,  // 0x0000C540 
	0x6D045C04320BAC87, 0x0C77E53860155B1E, 0x030C0409050B5006, 0xB959281F200F1702,  // 0x0000C560 
	0x1C33A70231F8F082, 0xE2C0425C5F6022B7, 0x0E5C09766C375F12, 0x5008440977502809,  // 0x0000C580 
	0xE0155F452A2B662E, 0x8850870C88D6823B, 0x065E1F5908190C1A, 0x0431331A160A1904,  // 0x0000C5A0 
	0x5F054C32BC43890A, 0x8F0C1E370559205F, 0x0637D610D61A375E, 0x5F2432016A0F1904,  // 0x0000C5C0 
	0x5F760F3231120B0A, 0x04376B8F08760023, 0x060C76338F265C0B, 0x09A31F260A0C0904,  // 0x0000C5E0 
	0x5F881F32443A1E50, 0x7E260B0231389319, 0x06DE761537160C0C, 0x02311F2B0F010404,  // 0x0000C600 
	0x0159152A2B82225C, 0x620C5E15241A4AB7, 0x5E62D9325F5B2862, 0x05A3080E0A060101,  // 0x0000C620 
	0x4C3C1534F6205F06, 0x067E01082A2B7F77, 0x0A48020539011943, 0x082A153A290F4C0C,  // 0x0000C640 
	0x0A04442A39002306, 0x0C3923597A02938D, 0x502645334C191937, 0x08081722676D5E0F,  // 0x0000C660 
	0x0B8F25241F931906, 0x37731A1F0821B07D, 0x166221280119A573, 0x3108121E2E42294E,  // 0x0000C680 
	0x06101524624AB75E, 0x37A743CF31387153, 0x370926010C264537, 0x2A522D1E29295067,  // 0x0000C6A0 
	0x01101534067F770A, 0x481C0CCF311A68B7, 0xDE4E01390F232537, 0xA3289B5642F56B53,  // 0x0000C6C0 
	0x1A02083401938D50, 0x261C373231257F42, 0x4ED021855E021F1A, 0x082BAA581DE56B97,  // 0x0000C6E0 
	0x010915345EB07D16, 0x620C59052A087CC3, 0x48373C1948CC4509, 0x080C7FB1C0895CC0,  // 0x0000C700 
	0x7009BA2A21715337, 0x092332342A316829, 0x060145045B882537, 0x0832E998C0F53A22,  // 0x0000C720 
	0x280215E41768B7DE, 0x4E17F3197A2A2577, 0x508F19621E010573, 0x3157719322A71D51,  // 0x0000C740 
	0x1928152A257F424E, 0x0F451F092A31E080, 0x0A0404011C6A7E37, 0x2A1A7C4A204E874A,  // 0x0000C760 
	0x0C0432A3157CC30F, 0x0A283C10BC1582AC, 0xA15C19371C5C0C37, 0x24731E03C356299B,  // 0x0000C780 
	0xA10132A31568290F, 0x06021F1531314780, 0x29012F0A0D161A1A, 0x316148161C4A4222,  // 0x0000C7A0 
	0x0B02252415257716, 0x01054908312AD071, 0x48042F0C480A6033, 0x0510F2514697770A,  // 0x0000C7C0 
	0x6A3C05E410E0565E, 0x1752086CA3C85193, 0x671A8806045EF302, 0x7010B18751770B06,  // 0x0000C7E0 
	0x3A09252A26828D21, 0x105931082A67A87C, 0x3F2804485F064C45, 0x1A25206B420B4C06,  // 0x0000C800 
	0x0B3C5A313A1D0A09, 0x61093252DD6BEB7F, 0x0C19621643AF5C08, 0x3C1C71828D0F2306,  // 0x0000C820 
	0x5E15157A7B0D0433, 0x6001056C05E593AC, 0x4319044E9C12192A, 0xA5634A6E890F2350,  // 0x0000C840 
	0x2115156C0E0F4515, 0x1F707A2A3C3A7763, 0x043CA50B1C37522A, 0x06A6710F285C5E51,  // 0x0000C860 
	0x458C15083C105932, 0x09592A2A09AC516E, 0x091936350C707A31, 0x62B0AC3B602B3A94,  // 0x0000C880 
	0x0949490845763305, 0x102A2A24E293C389, 0x39266B6A09373131, 0xEF9BB5EF027E5C1C,  // 0x0000C8A0 
	0x4A49086C48CC0532, 0x592424D935475023, 0x0273540B1902246C, 0xB6B093291912290F,  // 0x0000C8C0 
	0x462B590862361F1F, 0x0515050A0F176121, 0x101A4E3604453109, 0x0D0D6A6B047E0D6D,  // 0x0000C8E0 
	0x430C61280C093906, 0x090202040C172123, 0x60390D351A452806, 0x065F010F73230F22,  // 0x0000C900 
	0x1130112C0E443822, 0x0A07545643041004, 0x331A166B26350056, 0x09010F1F40074013,  // 0x0000C920 
	0x40133007C13E0707, 0x1814110E303F0711, 0x124B073E3E181800, 0x00008111001411C7,  // 0x0000C940 
};

u64 _spot18_room_0_tex_0000C960[] = 
{
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000C960 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000C980 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000C9A0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F010301030, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000C9C0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F6F0F0F0F0F0F0,  // 0x0000C9E0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F030303030, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000CA00 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F07060, 0x726CF0F0F0F0F0F0,  // 0x0000CA20 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F03030321F3F, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000CA40 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030606B, 0x6E6DF0F0F0F0F0F0,  // 0x0000CA60 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F03030443F3F, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000CA80 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F060605050, 0x60606070F0F0504E, 0x7F6F70A070F0F0F0,  // 0x0000CAA0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F020303F3F3F, 0x1030F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000CAC0 
	0x5050403040505040, 0x4050607070605040, 0x505040B0F0F0C23F, 0x6F6F608080808080,  // 0x0000CAE0 
	0x7070808060808080, 0x70F0F0E0303F3F4F, 0x603060F0F0F0F0F0, 0xF0F0F0F0F0507060,  // 0x0000CB00 
	0x5050602030305020, 0x1010102020206F6F, 0x5F5F6F6F6F7FFFFF, 0x5F4F5AAF7F605060,  // 0x0000CB20 
	0x6060607060706050, 0x70C0F0F0B02F3F3F, 0x5260605040303040, 0x5060304050405050,  // 0x0000CB40 
	0x7F6F5F5F4F3F4F5F, 0x5F4F4F5F6F7F7F6F, 0x5F4F5F5F4FBFFFFF, 0xCFEFBF7F6F8F8F8F,  // 0x0000CB60 
	0x5F8F8F6F8F8F8F7F, 0x7F7F7FFFFFEF3F3F, 0xDFAF6F5640506080, 0x806030505032545F,  // 0x0000CB80 
	0x5F5F5F5F6F2F3F3F, 0x5F2F1F1F1F2F2F2F, 0x3F2F2F2F1F2FBFEF, 0xFFBF8F6F5F2F5F6F,  // 0x0000CBA0 
	0x5F6F7F6F7F6F5F6F, 0x6F6F7FCFFFFFBFDF, 0xBF7F5F6F6F5F4F3F, 0x3F7F5F6F3F4F5F4F,  // 0x0000CBC0 
	0x5F5F6F6F7F7F6F6F, 0x6F7F7F7F7F7F6F5F, 0x5F4F2F2F1F1FEF6F, 0x8FCF9F1F1F2F3F2F,  // 0x0000CBE0 
	0x1F1F2F5F2F2F2F1F, 0x2F3F5F5FAFEFEFAF, 0x8F6F3F4F5F5F4F5F, 0x6F4F6F6F3F5F5F3F,  // 0x0000CC00 
	0x1F1F1F2F2F2F2F2F, 0x1F1F2F3F3F2F2F2F, 0x2F2F2F1F1FFFFFDF, 0x6F6F7F6F1F1F1F1F,  // 0x0000CC20 
	0x5F6F5F5F5F5F6F8F, 0x7F8F5F4FFFFFBF7F, 0x6F3F3F3F4F3F3F2F, 0x2F2F3F1F2F2F2F2F,  // 0x0000CC40 
	0x1F1F2F2F2F607070, 0x6060607070707070, 0x6050504022DFCF8F, 0x4F6F6F6F9B10142B,  // 0x0000CC60 
	0x3F2F1F1F1F1F1F2F, 0x2F2F1FEFFFDF7F5F, 0x7F6F2F2F2F2F2F1F, 0x1F1F2F2F2F2F1F1F,  // 0x0000CC80 
	0x2020101010202020, 0x2020101020303020, 0x2020202020227F2F, 0x3F2F6F6F72601212,  // 0x0000CCA0 
	0x2F2F1F1F1F1F2F2F, 0x2F2F2FDFCF7F1F5F, 0x6F6F693936344230, 0x3020202030102020,  // 0x0000CCC0 
	0x1010101020202020, 0x1010203030202020, 0x202020101050342F, 0x2F2F486260601010,  // 0x0000CCE0 
	0x5060505050506030, 0x202020266F2F2F5F, 0x6F6F786422202020, 0x2010101020202020,  // 0x0000CD00 
	0x1010202020F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F050502F, 0x3F1F32206060F0F0,  // 0x0000CD20 
	0x3020101010101020, 0x20202010142F1F2F, 0x2F54606020202010, 0x1010202020201010,  // 0x0000CD40 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F03050325F, 0x3F2F2020F0F0F0F0,  // 0x0000CD60 
	0x2020101010102020, 0x20202010102F1F2F, 0x2F526060F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000CD80 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F04040385F, 0x5F2F3010F0F0F0F0,  // 0x0000CDA0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F020101F1F2F, 0x2F2220F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000CDC0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F060503F5F, 0x3F1F3020F0F0F0F0,  // 0x0000CDE0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F020101F1F2F, 0x1F2420F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000CE00 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F050504F4F, 0x3F1F5020F0F0F0F0,  // 0x0000CE20 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0102F1F2F, 0x1F2F20F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000CE40 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F05060506F5F, 0x3F2F3010F0F0F0F0,  // 0x0000CE60 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0102F1F3F, 0x1F2F10F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000CE80 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F06060525F5F, 0x2F2F3010F0F0F0F0,  // 0x0000CEA0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F010281F2F, 0x1F3F1020F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000CEC0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0A0605F6F5F, 0x2F593020F0F0F0F0,  // 0x0000CEE0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F010241F3F, 0x1F2F1020F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000CF00 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xA0E0F0F0C86F6F5F, 0x2F5C2220F0F0F0F0,  // 0x0000CF20 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0C41F2F, 0x2F3F823080F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000CF40 
	0x5040504060708060, 0x7060808070709080, 0x7070B2FFFFAF6F4F, 0xDFBF7F5050505050,  // 0x0000CF60 
	0xF0F0F0F0F0F0F0F0, 0xF0F0A0D0F0F61F2F, 0x2F1F2F6460608070, 0x6050504060706040,  // 0x0000CF80 
	0x3030604050503030, 0x3050505050504040, 0x40F4AFEFFFFFCFDF, 0xAF7F5F1420202020,  // 0x0000CFA0 
	0x6070806070608070, 0x808090A0B4FFFFCF, 0x2F1FDFBF8F425040, 0x4050305050406050,  // 0x0000CFC0 
	0x6F4F5F4F5F4F6F7F, 0x8F6F7F6F8F8F7F7F, 0x9F8F7F7FBFDFEFCF, 0x8F6F5F4F5F5F5F5F,  // 0x0000CFE0 
	0x6462323030505060, 0x606060F2AFDFFFFF, 0xDFDFBF7F6F6F2C3F, 0x8F5F3F5F5F4F6F7F,  // 0x0000D000 
	0x6F5F3F3F6F4F5F5F, 0x3F3F3F5F5F5F5F5F, 0x4F4F4FFF6F7F9FBF, 0x7F2F3F2F2F1F2F2F,  // 0x0000D020 
	0x6F7F8F6F7F6F8F8F, 0x7F7F8F8F9FAFBFFF, 0xEFBF7F6F6F3F3F4F, 0x5F7F6F5F3F5F5F4F,  // 0x0000D040 
	0x2F2F2F2F2F2F2F2F, 0x2F2F2F2F1F2F2F2F, 0x2F2FEFFFDFBF6F6F, 0x6F6F2F2F2F2F2F2F,  // 0x0000D060 
	0x5F5F3F3F3F5F5F5F, 0x6F6F6F6F6FFFFFFF, 0xCF7F6F5F5F2F1F2F, 0x2F2F2F2F2F2F2F2F,  // 0x0000D080 
	0x5040605030306040, 0x5050303030505050, 0x5060CFBF7F5F3F5F, 0x5F6F782030202418,  // 0x0000D0A0 
	0x2F2F2F2F2F2F1F2F, 0x1F2F2F2FFFFFEFAF, 0x6F6F6F6F6F2F2F20, 0x2040607060503050,  // 0x0000D0C0 
	0x2020202020202020, 0x2020202020201020, 0x30607B7F5F3F3F1F, 0x5F6F626020202020,  // 0x0000D0E0 
	0x3080607060808050, 0x50606060DFBF8F2F, 0x2F6F6F6F6F505020, 0x1030202020202020,  // 0x0000D100 
	0x2020202020202020, 0x2020202010202020, 0x5060586F6F3F3F2F, 0x3F5C506020202020,  // 0x0000D120 
	0x5030303050505010, 0x10101020106F2F2F, 0x2F2F6F6F5F606020, 0x2020202020202020,  // 0x0000D140 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0x20403F6F7F3F2F2F, 0x3E145060F0F0F0F0,  // 0x0000D160 
	0x1020202020102010, 0x10202020F0302F2F, 0x2F2F2F2F60606020, 0x20F0F0F0F0F0F0F0,  // 0x0000D180 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0405F6F5F5F3F1F, 0x3E22F0F0F0F0F0F0,  // 0x0000D1A0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0D0301F2F, 0x2F2F2F2F606050F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D1C0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0602F4F4F6F3F2F, 0x2D20F0F0F0F0F0F0,  // 0x0000D1E0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030303F, 0x2F2F1F1F2020F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D200 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF020494F3F6F3F2F, 0x3610F0F0F0F0F0F0,  // 0x0000D220 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030303F, 0x2F2F1F1F2020F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D240 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF020446F4F1F3F2F, 0x3220F0F0F0F0F0F0,  // 0x0000D260 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030303F, 0x3F2F2F1F1010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D280 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF050602F4F2F3F2F, 0x3220F0F0F0F0F0F0,  // 0x0000D2A0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030303F, 0x3F3F1F1F1010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D2C0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF050602F4F2F3F1F, 0x3820F0F0F0F0F0F0,  // 0x0000D2E0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030303F, 0x3F2F1F1F2010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D300 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0605F6F2F3F1F, 0x3C20F0F0F0F0F0F0,  // 0x0000D320 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020303F, 0x3F3F2F3B1010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D340 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0605F6F1F3F1F, 0x3C10F0F0F0F0F0F0,  // 0x0000D360 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020303F, 0x3F3F2F281010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D380 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F060296F1F2F1F, 0x2F10F0F0F0F0F0F0,  // 0x0000D3A0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020302F, 0x3F3F2F3620F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D3C0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020266F1F2F2F, 0x2F10F0F0F0F0F0F0,  // 0x0000D3E0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030202F, 0x3F3F2F3220F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D400 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020306F2F2F2F, 0x2F1020F0F0F0F0F0,  // 0x0000D420 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030202F, 0x3F3F2F3020F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D440 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020502F2F3F3F, 0x3F2020F0F0F0F0F0,  // 0x0000D460 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030203F, 0x2F3F1F3020F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D480 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0502F3F2F3F, 0x3F2020F0F0F0F0F0,  // 0x0000D4A0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020203F, 0x2F2F1F3020F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D4C0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0302F5F2F3F, 0x2F3030F0F0F0F0F0,  // 0x0000D4E0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030203F, 0x2F2F1F3010F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D500 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F020185F2F3F, 0x2F3030F0F0F0F0F0,  // 0x0000D520 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020302F, 0x2F2F2F2010F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D540 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F020143F2F2F, 0x2F3020F0F0F0F0F0,  // 0x0000D560 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020303F, 0x2F2F2F2210F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D580 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F010102F1F3F, 0x1F3020F0F0F0F0F0,  // 0x0000D5A0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010302F, 0x3F3F2F2620F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D5C0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F020102F1F5F, 0x1F2020F0F0F0F0F0,  // 0x0000D5E0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010302F, 0x3F3F2F2820F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D600 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F030201F1F4F, 0x1F3010F0F0F0F0F0,  // 0x0000D620 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010301F, 0x3F2F2F3A20F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D640 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F030202F1F5F, 0x1F5010F0F0F0F0F0,  // 0x0000D660 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020201F, 0x3F2F2F3B20F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D680 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F030203F2F3F, 0x1F4010F0F0F0F0F0,  // 0x0000D6A0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020201F, 0x3F2F2F2B20F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D6C0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F01030323F2F2F, 0x2F5010F0F0F0F0F0,  // 0x0000D6E0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020202F, 0x2F2F2F1F20F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D700 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F01030363F2F2F, 0x2F3010F0F0F0F0F0,  // 0x0000D720 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020202F, 0x2F2F2F1F20F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D740 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F010301F3F3F3F, 0x2F2020F0F0F0F0F0,  // 0x0000D760 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020202F, 0x2F2F2F1F2010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D780 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020201F3F3F5F, 0x2F2020F0F0F0F0F0,  // 0x0000D7A0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010202F, 0x2F2F2F2F2010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D7C0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020201F3F2F3F, 0x2F3020F0F0F0F0F0,  // 0x0000D7E0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010202F, 0x2F2F1F2F2010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D800 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020202F2F2F2F, 0x1F5020F0F0F0F0F0,  // 0x0000D820 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010201F, 0x2F2F1F2F2020F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D840 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020102F2F2F2F, 0x1F3020F0F0F0F0F0,  // 0x0000D860 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020201F, 0x2F1F1F1F1020F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D880 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020102F2F2F1F, 0x2F2010F0F0F0F0F0,  // 0x0000D8A0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010201F, 0x2F1F1F1F1020F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D8C0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F02F1F1F1F, 0x1F2010F0F0F0F0F0,  // 0x0000D8E0 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010201F, 0x2F2F2F1F1010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D900 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F02F1F1F1F, 0x1F1020F0F0F0F0F0,  // 0x0000D920 
	0xF0F0F0F0F0F0F0F0, 0xF0F010201010201F, 0x1F2F1F1FF0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x0000D940 
};

Vtx_t _spot18_room_0_vertices_0000D960[8] = 
{
	 { 515, 569, -244, 0, 70, 0, 127, 127, 127, 255 }, // 0x0000D960
	 { 515, 503, -244, 0, 70, 1024, 140, 140, 140, 255 }, // 0x0000D970
	 { 546, 512, -133, 0, 1817, 1024, 140, 140, 140, 255 }, // 0x0000D980
	 { 546, 569, -133, 0, 1817, 0, 127, 127, 127, 255 }, // 0x0000D990
	 { 569, 549, 260, 0, 1812, 0, 153, 153, 153, 255 }, // 0x0000D9A0
	 { 569, 418, 261, 0, 1812, 1024, 191, 191, 191, 255 }, // 0x0000D9B0
	 { 547, 443, 520, 0, 0, 1024, 191, 191, 191, 255 }, // 0x0000D9C0
	 { 549, 563, 491, 0, 0, 0, 153, 153, 153, 255 }, // 0x0000D9D0
};

Vtx_t _spot18_room_0_vertices_0000D9E0[8] = 
{
	 { 406, 517, 706, 0, 0, 0, 178, 178, 178, 255 }, // 0x0000D9E0
	 { 388, 440, 712, 0, 0, 1024, 191, 191, 191, 255 }, // 0x0000D9F0
	 { 334, 440, 731, 0, 1024, 1024, 191, 191, 191, 255 }, // 0x0000DA00
	 { 334, 497, 731, 0, 1024, 0, 178, 178, 178, 255 }, // 0x0000DA10
	 { 154, 297, 538, 0, 0, 0, 140, 140, 140, 255 }, // 0x0000DA20
	 { 154, 236, 538, 0, 0, 1024, 140, 140, 140, 255 }, // 0x0000DA30
	 { 94, 236, 553, 0, 1024, 1024, 140, 140, 140, 255 }, // 0x0000DA40
	 { 94, 297, 553, 0, 1024, 0, 140, 140, 140, 255 }, // 0x0000DA50
};

Vtx_t _spot18_room_0_vertices_0000DA60[6] = 
{
	 { -132, 600, -377, 0, -166, 1024, 191, 191, 191, 255 }, // 0x0000DA60
	 { 592, 600, 31, 0, 2093, 1024, 191, 191, 191, 255 }, // 0x0000DA70
	 { 592, 800, 31, 0, 2093, 435, 127, 127, 127, 255 }, // 0x0000DA80
	 { -132, 800, -377, 0, -166, 435, 127, 127, 127, 255 }, // 0x0000DA90
	 { -59, 908, -161, 0, 150, -61, 63, 63, 63, 255 }, // 0x0000DAA0
	 { 314, 891, 20, 0, 1299, 20, 63, 63, 63, 255 }, // 0x0000DAB0
};

Vtx_t _spot18_room_0_vertices_0000DAC0[4] = 
{
	 { -607, 800, -427, 0, -27, 0, 127, 127, 127, 255 }, // 0x0000DAC0
	 { -607, 600, -427, 0, -27, 1024, 140, 140, 140, 255 }, // 0x0000DAD0
	 { -130, 600, -378, 0, 2047, 1024, 165, 165, 165, 255 }, // 0x0000DAE0
	 { -130, 800, -378, 0, 2047, 0, 127, 127, 127, 255 }, // 0x0000DAF0
};

Vtx_t _spot18_room_0_vertices_0000DB00[4] = 
{
	 { -238, 529, -545, 0, 1024, 0, 127, 127, 127, 255 }, // 0x0000DB00
	 { -238, 478, -545, 0, 1024, 1024, 127, 127, 127, 255 }, // 0x0000DB10
	 { -199, 478, -487, 0, 0, 1024, 127, 127, 127, 255 }, // 0x0000DB20
	 { -199, 529, -487, 0, 0, 0, 127, 127, 127, 255 }, // 0x0000DB30
};

Vtx_t _spot18_room_0_vertices_0000DB40[4] = 
{
	 { 427, 362, -28, 0, -1024, 0, 102, 102, 102, 255 }, // 0x0000DB40
	 { 427, 196, -28, 0, -1024, 2048, 153, 153, 153, 255 }, // 0x0000DB50
	 { 359, 196, 491, 0, 4103, 2048, 153, 153, 153, 255 }, // 0x0000DB60
	 { 359, 362, 491, 0, 4103, 0, 102, 102, 102, 255 }, // 0x0000DB70
};

Vtx_t _spot18_room_0_vertices_0000DB80[4] = 
{
	 { -99, 512, -381, 0, 1818, 0, 127, 127, 127, 255 }, // 0x0000DB80
	 { -99, 440, -381, 0, 1818, 1024, 127, 127, 127, 255 }, // 0x0000DB90
	 { 58, 440, -380, 0, 81, 1024, 127, 127, 127, 255 }, // 0x0000DBA0
	 { 58, 552, -380, 0, 81, 0, 127, 127, 127, 255 }, // 0x0000DBB0
};

Vtx_t _spot18_room_0_vertices_0000DBC0[4] = 
{
	 { -17, 523, 189, 0, 0, 1024, 229, 229, 229, 127 }, // 0x0000DBC0
	 { 15, 523, 187, 0, 1024, 1024, 229, 229, 229, 127 }, // 0x0000DBD0
	 { 15, 555, 187, 0, 1024, 0, 229, 229, 229, 127 }, // 0x0000DBE0
	 { -17, 555, 189, 0, 0, 0, 229, 229, 229, 127 }, // 0x0000DBF0
};

Vtx_t _spot18_room_0_vertices_0000DC00[8] = 
{
	 { -93, 102, -859, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000DC00
	 { 883, 102, 305, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000DC10
	 { 4, 824, -940, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000DC20
	 { 981, 824, 223, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000DC30
	 { -686, 238, -361, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000DC40
	 { 290, 238, 803, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000DC50
	 { -589, 960, -443, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000DC60
	 { 388, 960, 721, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000DC70
};

Gfx _spot18_room_0_dlist_0000DC80[] =
{
	gsDPPipeSync(), // 0x0000DC80
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000DC88
	gsSPVertex(_spot18_room_0_vertices_0000DC00, 8, 0), // 0x0000DC90
	gsSPCullDisplayList(0, 7), // 0x0000DC98
	gsDPPipeSync(), // 0x0000DCA0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000DCA8
	gsDPPipeSync(), // 0x0000DCB0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000DCB8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000DCC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000EFC8), // 0x0000DCC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x0000DCD0
	gsDPLoadSync(), // 0x0000DCD8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x0000DCE0
	gsDPPipeSync(), // 0x0000DCE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x0000DCF0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000DCF8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x0000DD00
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104B50), // 0x0000DD08
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x0000DD10
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x0000DD18
	gsDPSetPrimColor(0, 0, 255, 255, 255, 249), // 0x0000DD20
	gsSPVertex(_spot18_room_0_vertices_0000D960, 8, 0), // 0x0000DD28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000DD30
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000DD38
	gsDPPipeSync(), // 0x0000DD40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000FFC8), // 0x0000DD48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x0000DD50
	gsDPLoadSync(), // 0x0000DD58
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000DD60
	gsDPPipeSync(), // 0x0000DD68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x0000DD70
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000DD78
	gsSPVertex(_spot18_room_0_vertices_0000D9E0, 8, 0), // 0x0000DD80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000DD88
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000DD90
	gsDPPipeSync(), // 0x0000DD98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_000117C8), // 0x0000DDA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x0000DDA8
	gsDPLoadSync(), // 0x0000DDB0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x0000DDB8
	gsDPPipeSync(), // 0x0000DDC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x0000DDC8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000DDD0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 127), // 0x0000DDD8
	gsSPVertex(_spot18_room_0_vertices_0000DA60, 6, 0), // 0x0000DDE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000DDE8
	gsSP2Triangles(4, 3, 2, 0, 4, 2, 5, 0), // 0x0000DDF0
	gsDPPipeSync(), // 0x0000DDF8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_000107C8), // 0x0000DE00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x0000DE08
	gsDPLoadSync(), // 0x0000DE10
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x0000DE18
	gsDPPipeSync(), // 0x0000DE20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x0000DE28
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000DE30
	gsSPVertex(_spot18_room_0_vertices_0000DAC0, 4, 0), // 0x0000DE38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000DE40
	gsDPPipeSync(), // 0x0000DE48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000FFC8), // 0x0000DE50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x0000DE58
	gsDPLoadSync(), // 0x0000DE60
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000DE68
	gsDPPipeSync(), // 0x0000DE70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x0000DE78
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000DE80
	gsDPSetPrimColor(0, 0, 255, 255, 255, 249), // 0x0000DE88
	gsSPVertex(_spot18_room_0_vertices_0000DB00, 4, 0), // 0x0000DE90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000DE98
	gsDPPipeSync(), // 0x0000DEA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000DFC8), // 0x0000DEA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x0000DEB0
	gsDPLoadSync(), // 0x0000DEB8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x0000DEC0
	gsDPPipeSync(), // 0x0000DEC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x0000DED0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x0000DED8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 127), // 0x0000DEE0
	gsSPVertex(_spot18_room_0_vertices_0000DB40, 4, 0), // 0x0000DEE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000DEF0
	gsDPPipeSync(), // 0x0000DEF8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_0_tex_0000EFC8), // 0x0000DF00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x0000DF08
	gsDPLoadSync(), // 0x0000DF10
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x0000DF18
	gsDPPipeSync(), // 0x0000DF20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x0000DF28
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000DF30
	gsDPSetPrimColor(0, 0, 255, 255, 255, 249), // 0x0000DF38
	gsSPVertex(_spot18_room_0_vertices_0000DB80, 4, 0), // 0x0000DF40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000DF48
	gsDPPipeSync(), // 0x0000DF50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009848), // 0x0000DF58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 4, 0), // 0x0000DF60
	gsDPLoadSync(), // 0x0000DF68
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000DF70
	gsDPPipeSync(), // 0x0000DF78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 1, 4, 0), // 0x0000DF80
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x0000DF88
	gsDPSetCombineLERP(TEXEL0, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, K5, K5, 0, COMBINED, TEXEL1, 0, 1, COMBINED), // 0x0000DF90
	gsDPSetPrimColor(0, 0, 229, 229, 229, 127), // 0x0000DF98
	gsSPVertex(_spot18_room_0_vertices_0000DBC0, 4, 0), // 0x0000DFA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000DFA8
	gsSPEndDisplayList(), // 0x0000DFB0
};

static u8 unaccountedDFB8[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xDC, 0x80, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _spot18_room_0_tex_0000DFC8[] = 
{
	0x0000000000000000, 0x0000000000000000, 0x0000000000017B07, 0x0001000000000000,  // 0x0000DFC8 
	0x0000000000000000, 0x0001CD877B077B07, 0x7B07000100000000, 0x0000000000000000,  // 0x0000DFE8 
	0x0000000000000000, 0x0000000000000000, 0x000000017B07CD87, 0x7B07000100000000,  // 0x0000E008 
	0x0000000000000000, 0x0001CD87CD87CD87, 0xCD87000100000000, 0x0000000000000000,  // 0x0000E028 
	0x0000000000000000, 0x0000000000000000, 0x00017B07CD87CD87, 0x7B07000100000000,  // 0x0000E048 
	0x0000000000000000, 0x00017B07CD87CD87, 0xCD87000100000000, 0x0000000000000000,  // 0x0000E068 
	0x0000000000000000, 0x0000000000000000, 0x0001CD87CD87CD87, 0x7B07000100000000,  // 0x0000E088 
	0x0000000000000000, 0x00017B07CD87CD87, 0xCD877B0700010000, 0x0000000000000000,  // 0x0000E0A8 
	0x0000000000000000, 0x0000000000000000, 0x00017B077B07CD87, 0x7B07000100000000,  // 0x0000E0C8 
	0x0000000000000000, 0x00017B07CD87CD87, 0xCD87000100000000, 0x0000000000000000,  // 0x0000E0E8 
	0x0000000000000000, 0x0000000000000000, 0x00017B07CD87CD87, 0x0001000000000000,  // 0x0000E108 
	0x0000000000000000, 0x00000001CD87CD87, 0xCD87000100000000, 0x0000000000000000,  // 0x0000E128 
	0x0000000000000000, 0x0000000000000000, 0x0001CD87CD87CD87, 0x0001000000000000,  // 0x0000E148 
	0x0000000000000000, 0x0000000000017B07, 0x7B07000100000000, 0x0000000000000000,  // 0x0000E168 
	0x0000000000000000, 0x0000000000000000, 0x0001CD877B070001, 0x0000000000000000,  // 0x0000E188 
	0x0000000000000000, 0x0000000000000001, 0x7B07000100000000, 0x0000000000000000,  // 0x0000E1A8 
	0x0000000000000000, 0x0000000000000000, 0x00017B077B070001, 0x0000000000010001,  // 0x0000E1C8 
	0x0001000000000000, 0x0000000000000000, 0x0001CD8700000000, 0x0000000000000000,  // 0x0000E1E8 
	0x0000000000000000, 0x0000000000000001, 0x7B077B0700010000, 0x00000001CD87CD87,  // 0x0000E208 
	0xCD86000000000000, 0x0000000000000000, 0x00017B0700007B06, 0x0000000000000000,  // 0x0000E228 
	0x0000000000000000, 0x000000000001CD87, 0x7B077B0700010001, 0x0001CD87CD87CD87,  // 0x0000E248 
	0xCD87CD8600000000, 0x0000000000000000, 0x000000017B070000, 0x0000000000000000,  // 0x0000E268 
	0x0000000000000000, 0x0000000100017B07, 0x7B07CD877B07CD87, 0xCD87CD87CD87CD86,  // 0x0000E288 
	0xCD86CD86CD86CD87, 0x0001000000000000, 0x000000017B07CD87, 0x0000000000000000,  // 0x0000E2A8 
	0x0000000000000000, 0x0001CD87CD877B07, 0x7B077B07CD87CD87, 0xCD87CD87CD87CD86,  // 0x0000E2C8 
	0xCD87CD87CD87CD87, 0xCD87000100000000, 0x0000000000017B07, 0xCD87000100000000,  // 0x0000E2E8 
	0x0000000000000000, 0x0001CD877B077B07, 0x7B077B07CD87CD87, 0xCD87CD87CD87CD87,  // 0x0000E308 
	0xCD87CD87CD87CD87, 0x0001000100010000, 0x0000000000017B07, 0xCD87CD8700010000,  // 0x0000E328 
	0x0000000000000001, 0xCD87CD877B077B07, 0x7B07CD87CD87CD87, 0x00010001CD87CD87,  // 0x0000E348 
	0xCD87CD87CD87CD87, 0xCD87CD87CD870001, 0x0000000000000001, 0xCD87CD8700010000,  // 0x0000E368 
	0x000000000001CD87, 0xCD877B077B077B07, 0x7B07CD87CD870001, 0x0001CD87CD87CD87,  // 0x0000E388 
	0xCD87CD87CD87CD87, 0xCD870001CD87CD87, 0x0001000000017B07, 0xCD877B0700010000,  // 0x0000E3A8 
	0x000000017B07CD87, 0x7B077B067B067B07, 0x7B07CD87CD87CD87, 0xCD870001CD87CD87,  // 0x0000E3C8 
	0xCD87CD87CD87CD87, 0x000113D90001CD87, 0x7B07000100017B07, 0xCD877B0700010000,  // 0x0000E3E8 
	0x00000001CD87CD87, 0x7B077B067B06CD86, 0xCD87CD87CD87CD87, 0x000113D90001CD87,  // 0x0000E408 
	0xCD87CD87CD87CD87, 0x000113D90001CD87, 0x7B0700017B07CD87, 0xCD877B0700010000,  // 0x0000E428 
	0x00017B07CD87CD87, 0x7B07CD867B06CD86, 0xCD87CD87CD87CD87, 0x000113D90001CD87,  // 0x0000E448 
	0xCD877B070001CD87, 0xCD870001CD87CD87, 0xCD877B077B07CD87, 0x7B07000100000000,  // 0x0000E468 
	0x00017B07CD87CD87, 0x7B077B067B06CD86, 0xCD86CD87CD87CD87, 0xCD870001CD87CD87,  // 0x0000E488 
	0x0001CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD877B077B07CD87, 0x7B07000100000000,  // 0x0000E4A8 
	0x7B077B07CD87CD87, 0x7B077B067B06CD86, 0xCD86CD877B077B07, 0xCD87CD87CD87CD87,  // 0x0000E4C8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD877B07CD877B07, 0x0001000000000000,  // 0x0000E4E8 
	0x00017B07CD87CD87, 0xCD877B077B07CD86, 0xCD86CD867B077B07, 0xCD87CD87CD87CD87,  // 0x0000E508 
	0xCD87CD8700010001, 0x00010001CD87CD87, 0xCD877B07CD870001, 0x0000000000000000,  // 0x0000E528 
	0x00017B07CD87CD87, 0xCD877B077B07CD86, 0xCD86CD867B067B07, 0x7B07000100010001,  // 0x0000E548 
	0x00010001CD87CD87, 0xCD87CD87CD87CD87, 0xCD877B077B070001, 0x0000000000000000,  // 0x0000E568 
	0x00000001CD87CD87, 0xCD87CD877B07CD87, 0xCD86CD867B06CD86, 0x7B07CD87CD87CD87,  // 0x0000E588 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD8700010000, 0x0000000000000000,  // 0x0000E5A8 
	0x00000001CD87CD87, 0xCD87CD87CD87CD87, 0xCD86CD86CD86CD86, 0xCD87CD87CD87CD87,  // 0x0000E5C8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD8700010000, 0x0000000000000000,  // 0x0000E5E8 
	0x000000017B07CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD86CD87, 0xCD87CD87CD87CD87,  // 0x0000E608 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD877B0700010000, 0x0000000000000000,  // 0x0000E628 
	0x000000000001CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87,  // 0x0000E648 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87000100000000, 0x0000000000000000,  // 0x0000E668 
	0x0000000000017B07, 0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87,  // 0x0000E688 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87000100000000, 0x0000000000000000,  // 0x0000E6A8 
	0x0000000000017B07, 0x7B07CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD86CD86CD86,  // 0x0000E6C8 
	0xCD86CD86CD86CD87, 0xCD87CD87CD87CD87, 0xCD87CD877B070001, 0x0000000000000000,  // 0x0000E6E8 
	0x0000000000017B07, 0x7B077B077B07CD87, 0x7B07CD87CD87CD86, 0xCD86CD86CD87CD87,  // 0x0000E708 
	0xCD87CD87CD86CD86, 0xCD87CD87CD87CD87, 0xCD87CD87CD870001, 0x0000000000000000,  // 0x0000E728 
	0x0000000000000001, 0x7B077B067B067B06, 0x7B06CD87CD86CD86, 0xCD86CD87CD87CD87,  // 0x0000E748 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD867B06, 0x0000000000000000,  // 0x0000E768 
	0x0000000000000001, 0x7B077B067B067B06, 0x7B06CD86CD86CD86, 0xCD87CD87CD87CD87,  // 0x0000E788 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD86CD867B06, 0x0000000000000000,  // 0x0000E7A8 
	0x0000000000000001, 0x7B077B077B067B06, 0x7B06CD86CD86CD87, 0xCD87CD87CD87CD87,  // 0x0000E7C8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD86CD867B06, 0x0000000000000000,  // 0x0000E7E8 
	0x0000000000017B07, 0x7B077B067B067B06, 0x7B06CD86CD86CD86, 0xCD86CD87CD87CD87,  // 0x0000E808 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD86, 0xCD86CD86CD867B07, 0x0001000000000000,  // 0x0000E828 
	0x0000000000017B07, 0x7B077B077B077B06, 0x7B06CD87CD87CD87, 0xCD87CD87CD87CD87,  // 0x0000E848 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD877B07, 0x0001000000000000,  // 0x0000E868 
	0x0000000000017B07, 0x7B077B077B077B07, 0x7B07CD87CD87CD87, 0xCD87CD87CD87CD87,  // 0x0000E888 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD877B07, 0x0001000000000000,  // 0x0000E8A8 
	0x0000000000017B07, 0x7B077B077B077B07, 0x7B07CD87CD87CD86, 0xCD86CD86CD87CD87,  // 0x0000E8C8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD867B067B07, 0x0001000000000000,  // 0x0000E8E8 
	0x0000000000007B06, 0x7B077B077B077B07, 0x7B06CD86CD87CD86, 0xCD86CD87CD87CD87,  // 0x0000E908 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD877B07, 0x0001000000000000,  // 0x0000E928 
	0x0000000000000000, 0x7B077B077B077B06, 0x7B067B06CD86CD87, 0xCD87CD87CD87CD87,  // 0x0000E948 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD870001, 0x0000000000000000,  // 0x0000E968 
	0x0000000000000000, 0x7B067B077B077B07, 0x7B077B06CD86CD86, 0xCD87CD87CD87CD87,  // 0x0000E988 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD870000, 0x0000000000000000,  // 0x0000E9A8 
	0x0000000000000000, 0x7B067B067B067B06, 0x7B067B067B06CD87, 0xCD87CD87CD87CD87,  // 0x0000E9C8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0x7B077B067B060000, 0x0000000000000000,  // 0x0000E9E8 
	0x0000000000000000, 0x7B067B067B067B06, 0x7B077B077B077B07, 0xCD87CD87CD87CD87,  // 0x0000EA08 
	0xCD8700010001CD87, 0xCD87CD87CD87CD86, 0x7B067B067B060000, 0x0000000000000000,  // 0x0000EA28 
	0x0000000000000000, 0x00007B067B067B06, 0x7B077B077B07CD87, 0xCD87CD87CD87CD87,  // 0x0000EA48 
	0xCD87CD870001CD87, 0xCD87CD87CD867B06, 0x7B067B0600010000, 0x0000000000000000,  // 0x0000EA68 
	0x0000000000000000, 0x00007B067B067B06, 0x7B077B077B077B07, 0xCD87CD87CD87CD87,  // 0x0000EA88 
	0xCD87CD87CD87CD87, 0xCD87CD87CD867B07, 0x7B07000100000000, 0x0000000000000000,  // 0x0000EAA8 
	0x0000000000000000, 0x000000007B067B06, 0x7B077B077B077B07, 0x7B077B07CD87CD87,  // 0x0000EAC8 
	0xCD87CD87CD87CD87, 0xCD87CD877B077B07, 0x7B07000100000000, 0x0000000000000000,  // 0x0000EAE8 
	0x0000000000000000, 0x0000000000007B07, 0x7B077B077B077B07, 0x7B077B07CD87CD87,  // 0x0000EB08 
	0xCD877B077B077B07, 0x7B077B077B077B07, 0x0001000000000000, 0x0001000100000000,  // 0x0000EB28 
	0x0000000000000000, 0x0000000000000001, 0x7B077B077B077B07, 0x7B077B077B077B07,  // 0x0000EB48 
	0x7B077B077B077B07, 0x7B077B077B077B07, 0x0001000000000001, 0xCD877B0700010000,  // 0x0000EB68 
	0x0000000000000000, 0x0000000000000000, 0x000100017B077B07, 0x7B067B077B077B07,  // 0x0000EB88 
	0x7B077B077B077B07, 0x7B077B07CD87CD87, 0x0001000000000001, 0xCD877B0700010000,  // 0x0000EBA8 
	0x0000000000000000, 0x0000000000000000, 0x000000017B077B07, 0x7B067B067B077B07,  // 0x0000EBC8 
	0x000100017B077B07, 0x7B077B07CD87CD87, 0xCD8700010001CD87, 0xCD877B0700010000,  // 0x0000EBE8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000017B06, 0x7B067B067B067B07,  // 0x0000EC08 
	0x0001000000010001, 0x7B077B077B07CD87, 0xCD87CD87CD87CD87, 0xCD877B0700010000,  // 0x0000EC28 
	0x0000000000000000, 0x0000000000000000, 0x0000000000007B06, 0x7B067B07CD870001,  // 0x0000EC48 
	0x0000000000000001, 0x7B077B077B077B07, 0xCD87CD87CD87CD87, 0xCD877B0700010000,  // 0x0000EC68 
	0x0000000000000000, 0x0000000000000000, 0x0000000000007B06, 0x7B077B07CD870001,  // 0x0000EC88 
	0x0000000000000000, 0x0001000100017B07, 0x7B077B07CD87CD87, 0x7B07000100000000,  // 0x0000ECA8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000017B07, 0x7B077B077B070001,  // 0x0000ECC8 
	0x0000000000000000, 0x0000000000000001, 0x7B077B07CD87CD87, 0x7B07000100000000,  // 0x0000ECE8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000017B07, 0x7B07CD877B070001,  // 0x0000ED08 
	0x0000000000000000, 0x0000000000000001, 0x7B077B07CD877B07, 0x0001000000000000,  // 0x0000ED28 
	0x0000000000000000, 0x0000000000000000, 0x0000000000017B07, 0x7B07CD8700010000,  // 0x0000ED48 
	0x0000000000000000, 0x0000000000000000, 0x0001CD87CD870001, 0x0000000000000000,  // 0x0000ED68 
	0x0000000000000000, 0x0000000000000000, 0x0000000000017B07, 0xCD877B0700010000,  // 0x0000ED88 
	0x0000000000000000, 0x0000000000000000, 0x000000017B070001, 0x0000000000000000,  // 0x0000EDA8 
	0x0000000000000000, 0x0000000000000000, 0x000000017B077B07, 0xCD87000100000000,  // 0x0000EDC8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000010000, 0x0000000000000000,  // 0x0000EDE8 
	0x0000000000000000, 0x0000000000000000, 0x000000017B077B07, 0xCD87000100000000,  // 0x0000EE08 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000EE28 
	0x0000000000000000, 0x0000000000000000, 0x000000017B077B07, 0x7B07CD8700010000,  // 0x0000EE48 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000EE68 
	0x0000000000000000, 0x0000000000000000, 0x0000000000017B07, 0x7B07CD877B070001,  // 0x0000EE88 
	0x0001000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000EEA8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000001, 0x7B077B07CD87CD87,  // 0x0000EEC8 
	0xCD87000100000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000EEE8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00017B07CD87CD87,  // 0x0000EF08 
	0x0001000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000EF28 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000100010001,  // 0x0000EF48 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000EF68 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000EF88 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000EFA8 
};

u64 _spot18_room_0_tex_0000EFC8[] = 
{
	0x7AC8834E8B8E834C, 0x9C107B0C49C472CA, 0x7B0C72CAA454A454, 0xAC96B497AC9793CF,  // 0x0000EFC8 
	0x7B4D834FAC558B8F, 0x8BCF8B8F62896A89, 0x730D834F8B8D834D, 0x93CF93CE838C8B8C,  // 0x0000EFE8 
	0x834E834C62885A48, 0x834C93CE9C10A453, 0xB495AC53730B6A89, 0x7B0B72CA7B4C93D0,  // 0x0000F008 
	0x7B0A93D072CA6A88, 0x830CA4548BD093CE, 0x834C72CA8BCE9C10, 0x7B4C8B8EB496BD18,  // 0x0000F028 
	0x6A887B0A730A72CA, 0x9C107B0C49C472CA, 0x730A6A8AA412A455, 0xA455A453BCD793D1,  // 0x0000F048 
	0x834D7B4F834F72CB, 0x730D7B0D6A896ACD, 0x6ACB834F9C139C13, 0x8B8F93CF7B0D7B0A,  // 0x0000F068 
	0x7B4C7B0C5A465A06, 0x834C93D1AC95A413, 0xAC95AC958B91834F, 0x8B8F7B4D8B8F8B8F,  // 0x0000F088 
	0x7B0B8B8E62486AC8, 0x834C9C1093D093D0, 0x8B8E8B4C93CE8B8E, 0x6ACA7B0CA454A492,  // 0x0000F0A8 
	0x8B8E9C107B0A6246, 0x838E7B4E39425206, 0x62886ACA834F834D, 0x834B838D93D1730D,  // 0x0000F0C8 
	0x5A49520952095249, 0x5A4B5A4B49C75209, 0x628B628B6ACD62CB, 0x7B4F94119411AC55,  // 0x0000F0E8 
	0x9412838E5A065A47, 0x8B8F93D19C119C13, 0xB4D7B4D5AC959C11, 0x834D6A8972CB8B8F,  // 0x0000F108 
	0x834D93CF62476246, 0x834EAC94A45493CE, 0xA452B4D6A41093D0, 0x7B0C9C12A454C518,  // 0x0000F128 
	0x93D09BD06A885A06, 0x8B8E7B0E290249C6, 0x6A8A6ACB834D7B0B, 0x72CB72CB6ACD5A4B,  // 0x0000F148 
	0x520952095A4B5A49, 0x5209520941C74187, 0x524952495A8B5A49, 0x5A4B7B0D93D19C13,  // 0x0000F168 
	0x9413834D62476249, 0x834F93D19C119C11, 0xA455A4139C138BD1, 0x7B0D6A896ACB834D,  // 0x0000F188 
	0x834D938F7B4D72CB, 0x8B4EB494A41293D0, 0xAC54A4129BD09C12, 0x830CA454A454C51A,  // 0x0000F1A8 
	0x834E7B0A628872CA, 0x838E7B0C41845A46, 0x72CB6A8B730B730B, 0x62895A49628B5A4B,  // 0x0000F1C8 
	0x520949C74A0941C7, 0x3945314529052905, 0x418741C75A4B5249, 0x5A49524972CD8B8F,  // 0x0000F1E8 
	0x93D1838F62896289, 0x8B4F7B0D72CB730D, 0x6A8B6A8B52095209, 0x52095A496A8B6ACB,  // 0x0000F208 
	0x7B4D834F93D1838F, 0x8B8EAC549C1293D0, 0xAC529BD0938E9BD0, 0x8B4CA412A454B4D6,  // 0x0000F228 
	0x7B0C938EA452A454, 0x72CA730E39426A89, 0x7B0B72CB6AC96249, 0x49C752495A4B524B,  // 0x0000F248 
	0x398720C308410001, 0x0001000108410841, 0x104318C3314749C9, 0x524952095A4B5A4B,  // 0x0000F268 
	0x730D730B62896289, 0x72CB6289628B5A49, 0x5209520939874187, 0x41874A095A4B5A4B,  // 0x0000F288 
	0x62497B4D730B7B0B, 0x7B4DA45493D093D0, 0xAC96A45493D0834A, 0x8B8C8B8E9C12AC52,  // 0x0000F2A8 
	0x7B0A838EA454AC96, 0x7B0C7B0C498472CB, 0x72CB730B5A4949C7, 0x49C7520952092905,  // 0x0000F2C8 
	0x0841000100010001, 0x0001000100010001, 0x0001000100011081, 0x39454A0952495209,  // 0x0000F2E8 
	0x5209628B62495A49, 0x520752095A4B5249, 0x4187398720C320C3, 0x2905394741C94A09,  // 0x0000F308 
	0x41C75A8B7B0D7B0D, 0x834D94108B8E938E, 0xA4529C1093D093CE, 0x8BCC9C109C12AC54,  // 0x0000F328 
	0x72CA834CAC54B496, 0x8B908BD0498372C9, 0x834D6ACB4A075207, 0x520741C729050001,  // 0x0000F348 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001290541C741C7,  // 0x0000F368 
	0x41C749C749C74187, 0x418749C741872905, 0x1083080100010001, 0x0001080118C33987,  // 0x0000F388 
	0x39874A096ACB7B0D, 0x834F93D1834C8B8E, 0xA4529C109410A454, 0x93CE93CE938E9BD0,  // 0x0000F3A8 
	0x730CA452B4D8AC96, 0xAC949C1352478BCF, 0x834D5A49520749C7, 0x3145290500010001,  // 0x0000F3C8 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100011083,  // 0x0000F3E8 
	0x2103314539453145, 0x2905290510830001, 0x0001000100010001, 0x00010001000120C3,  // 0x0000F408 
	0x314541C75A49730D, 0x8B8F8BD17B4C8BD0, 0x9C10938E7B0A7B0C, 0x93CE8B8C9BCEA452,  // 0x0000F428 
	0x7B0CAC96B4D6A412, 0x9C12834F52078BD1, 0x72CD520939852905, 0x1883000100010001,  // 0x0000F448 
	0x0001000100010001, 0x0001000100010001, 0x0841084100010001, 0x0001000100010001,  // 0x0000F468 
	0x0001000108411041, 0x1083108308410001, 0x0001000100010001, 0x0001000100011043,  // 0x0000F488 
	0x20C3314549C75A8B, 0x834F8B8F628872CA, 0x834C8B4C834A834C, 0x938E9BCE9BCC9C10,  // 0x0000F4A8 
	0x834EAC96B4D6A452, 0x8BD0834F628993D1, 0x628B5209398520C3, 0x0001000100010001,  // 0x0000F4C8 
	0x0001000108010001, 0x0841084108010801, 0x0801080108010001, 0x0001000100010001,  // 0x0000F4E8 
	0x0001000100010801, 0x0841104310430801, 0x0801084108410001, 0x0801084110431083,  // 0x0000F508 
	0x1083290541874A07, 0x8B8F8B8F5A467B0C, 0x834C834C93CE8BCE, 0x8B8C938C938C8B8E,  // 0x0000F528 
	0x8B8E93D0A454B4D8, 0x9C1293D16247730B, 0x4A074A0731451083, 0x0841000108430841,  // 0x0000F548 
	0x0001000100010001, 0x1041084108410001, 0x0001000108410841, 0x1083084108410001,  // 0x0000F568 
	0x0001000100010001, 0x0001084108410801, 0x0001084108010801, 0x0841108318831883,  // 0x0000F588 
	0x108318C331455209, 0xA45593D17B0B838E, 0x834E8B8E93D093D0, 0x93D07B4C834C93CE,  // 0x0000F5A8 
	0x9C1293D0AC94B4D8, 0x9C158B916A896289, 0x5209398529031041, 0x1043108308410841,  // 0x0000F5C8 
	0x0001080100010001, 0x0841084108410001, 0x0001084108410841, 0x0841084108410841,  // 0x0000F5E8 
	0x0841084108410841, 0x0841084108410841, 0x0841084108410841, 0x0841108310431041,  // 0x0000F608 
	0x0841188329055209, 0x9C1393D17B0D72CA, 0x6A8862887B0A834C, 0x7B0C6288730A8B8C,  // 0x0000F628 
	0xA4529C10B4D6BCD8, 0x94158B9172CB6249, 0x4A07290310810841, 0x1043104108410841,  // 0x0000F648 
	0x0801084100010801, 0x1083188308410841, 0x0841084108410841, 0x0841104110831083,  // 0x0000F668 
	0x1041084108410841, 0x0841104110410841, 0x0841084108410841, 0x1041104108411043,  // 0x0000F688 
	0x0841104129055A4B, 0x9C137B4D834D72CA, 0x62886288730A72CA, 0x520662888B4A834A,  // 0x0000F6A8 
	0x8B90AC96BCD8AC54, 0x9C13AC957B4F5A49, 0x4A07314510831041, 0x1041108310831083,  // 0x0000F6C8 
	0x0841084108411041, 0x18C318C318C31081, 0x1041188310811883, 0x188320C320C31883,  // 0x0000F6E8 
	0x1041104110811041, 0x188318C320C320C3, 0x18C3104108411081, 0x18831083188320C5,  // 0x0000F708 
	0x18C320C33145628B, 0x8B8F6A8B7B0D7B0C, 0x6A886A887B0A5206, 0x6A887B0A9410938E,  // 0x0000F728 
	0x93D0AC96BD18AC96, 0xAC55B4D9838F5A4B, 0x5207314518830841, 0x1041108318830841,  // 0x0000F748 
	0x08411083104118C3, 0x314520C3314520C3, 0x108118C320C320C3, 0x3145290521052105,  // 0x0000F768 
	0x20C320C329053145, 0x2905314531452905, 0x20C320C320C31881, 0x2905394739473147,  // 0x0000F788 
	0x2905314541878BD1, 0x7B4F62897B4D7B0C, 0x6ACA6AC87B0C5204, 0x7B0A7B0A938E8B8E,  // 0x0000F7A8 
	0x9C108B8E9C108B8E, 0xB4D9BD198B915209, 0x628B41C721031081, 0x1083104110830843,  // 0x0000F7C8 
	0x104320C318C32903, 0x39854187290320C3, 0x1883290520C32905, 0x2905294531473147,  // 0x0000F7E8 
	0x290541C77B0D730D, 0x6ACB49C931472905, 0x31473947314520C3, 0x3145398741893147,  // 0x0000F808 
	0x39473987628B9C13, 0x8BD16A8972CB730A, 0x62485204628851C4, 0x7B0A938C93CE730A,  // 0x0000F828 
	0x93D093D0A4529BD0, 0xBD1BBD1993D35209, 0x6289520929051041, 0x1883108329051883,  // 0x0000F848 
	0x2905290529033985, 0x398741C731052905, 0x2905398729053145, 0x3145314539875209,  // 0x0000F868 
	0x5209834F834F6A89, 0x6ACB6ACB4A093147, 0x39874A09314520C1, 0x52094A09524B49C9,  // 0x0000F888 
	0x41C941878391A455, 0x8BD15A497B0B7B0C, 0x628849C26A8851C4, 0x72C8938E9BCE72CA,  // 0x0000F8A8 
	0x8B8E9410A452AC94, 0xB4D7B4D79C135209, 0x5A495A4B29051041, 0x1883188331472105,  // 0x0000F8C8 
	0x3947398739854187, 0x52094A0931453145, 0x3145398731454187, 0x41C7398752095209,  // 0x0000F8E8 
	0x94138B9183917B4D, 0x730B6A8B628B5A49, 0x314749C931052081, 0x5209520B6ACD628B,  // 0x0000F908 
	0x52097B4FA455A453, 0x8B8F6249730A7B0C, 0x6ACA4984834A5206, 0x730A834C938E938E,  // 0x0000F928 
	0x830CA412AC94AC96, 0x8BCE9C539C135249, 0x5A49628B39451081, 0x20C5210541C941C7,  // 0x0000F948 
	0x520B49C7314541C5, 0x49C74A0939453145, 0x31454187418749C7, 0x418749C752097B0F,  // 0x0000F968 
	0x834F9C1372CB834F, 0x730D730D7B4D834F, 0x730B3147394520C1, 0x5A8B520B6ACD5209,  // 0x0000F988 
	0x83519C139C139C13, 0x834D62897B0A730A, 0x72CA52068B4C6248, 0x830C8BCE8B8E938C,  // 0x0000F9A8 
	0x8B4E93D0B496AC96, 0x834A834D8B8F5209, 0x5209628941C71881, 0x290539894A0949C9,  // 0x0000F9C8 
	0x4A09418531454A09, 0x49C7520939453945, 0x418541C7520941C7, 0x418752095A8B9413,  // 0x0000F9E8 
	0x9C13A4557B0D7B0D, 0x72CB93D393D193D1, 0x834D72CB5A493943, 0x6ACD5A8B5A8B9413,  // 0x0000FA08 
	0xA455A45593D18BCF, 0x7B4D72CB7B0A7B0A, 0x834C62867B087B0A, 0x834A8B8C93CE93D0,  // 0x0000FA28 
	0x834C72CA93D0A452, 0x834A7B0A730B8391, 0x4A095209520720C3, 0x49C949C941874A07,  // 0x0000FA48 
	0x52094A09314541C7, 0x49C749C731453145, 0x418741C74A094A09, 0x5A8B5A8B9C55A455,  // 0x0000FA68 
	0x93D1A4558B8F7B0B, 0x7B0B9C139C139C13, 0x8B91730D72CB5A47, 0x8B9193D393D1A455,  // 0x0000FA88 
	0xA4558B916ACB72CB, 0x834D834C730A72CA, 0x7B0A72C8830A6288, 0x8BCE9C128B8C93D0,  // 0x0000FAA8 
	0x6AC86ACA8B8EA450, 0x7B0872CA6AC9834F, 0x94135A4B6A8B3945, 0x5A4B49C949C75249,  // 0x0000FAC8 
	0x5A4B49C929033145, 0x49C94A0931033105, 0x394549C75209624B, 0x5A8B9C13B4D9A455,  // 0x0000FAE8 
	0x8BD1AC5593D17B0B, 0x8B8F93CF838F9C13, 0xAC9593D3838F7B0D, 0x941393D39413A455,  // 0x0000FB08 
	0x8BCF5A4951C75A47, 0x6ACA7B0A7B4C730A, 0x834C830C8B4C6A88, 0x834C93CE8B8E938E,  // 0x0000FB28 
	0x62866AC8834CA410, 0x6A88730A730A6ACB, 0x8BD1838F7B0D72CB, 0x41C74A095A4B5A49,  // 0x0000FB48 
	0x52094A0939453985, 0x49C7524B31453145, 0x41875A4B5A8B5A8B, 0xA455B4D7AC9793D1,  // 0x0000FB68 
	0x9C139C128B8E7B0A, 0x8B8E93CF8B8F93D1, 0xA4559C139C1393D1, 0xAC95A455A455AC55,  // 0x0000FB88 
	0x93CF5A495A075A46, 0x62487B0A834C72C8, 0x834C938E8B4C51C4, 0x5A467B4C8B8E7B0A,  // 0x0000FBA8 
	0x94108BD07B4C7B0A, 0x6A886248730A7B0D, 0x730D8B8F72CD730D, 0x8B915A4B5A496A8B,  // 0x0000FBC8 
	0x628B5A4B418741C7, 0x49C7520939453985, 0x52095A8B5A8BAC95, 0xBCD9B4D7834F8B8D,  // 0x0000FBE8 
	0x8BCE834C8B8E7B0C, 0x834E8B8E93D19C13, 0x9C1372CB8B8F7B0D, 0x838F93D193D1AC55,  // 0x0000FC08 
	0x938F5A4862885A46, 0x5A4672C87B0C6A88, 0x72CA7B0A62466A88, 0x72CA72C88B8CA452,  // 0x0000FC28 
	0x93CE94107B0A7B08, 0x6288628872CA7B0C, 0x5A477B4D7B4F730D, 0x941393D172CD5A8B,  // 0x0000FC48 
	0x6ACD730D6ACB5A4B, 0x5A49624B52095A8B, 0x5A8B5A8BB4D9B4D7, 0xB4D793D15A49834C,  // 0x0000FC68 
	0x8B8E938E8B8E730A, 0x7B0A8B8E8B8E93D0, 0x8B915A477B4D6ACB, 0x7B0B8B8F8B8FA412,  // 0x0000FC88 
	0x838E6ACA6AC85A48, 0x5A466A8872CA6A88, 0x72CA834C6AC86A88, 0x834C8B8C834C8B8E,  // 0x0000FCA8 
	0x9410A4926A8A5A06, 0x5A0662887B0C7B0C, 0x5204730B7B0D7B4F, 0xAC97A4558B91838F,  // 0x0000FCC8 
	0x5A8B5A8B5A8B5A8B, 0x5A8B5A8B52095A8B, 0x8BD1B4D7B4D7B4D7, 0xAC958B8F5A48834C,  // 0x0000FCE8 
	0x8B8E93D0834C7B0C, 0x730A93CE8B8E93D0, 0x834C5A46834D6AC9, 0x72C993D0838E93D0,  // 0x0000FD08 
	0x8B8E834E72CA5A46, 0x5A466A887B0C72CA, 0x6A887B0A6A886288, 0x8BD09C12730A7B0A,  // 0x0000FD28 
	0x6A886ACA5A466AC8, 0x5A046A8893D0834E, 0x52066A888B8F8BD1, 0x9C13A4539C53AC97,  // 0x0000FD48 
	0xA4559C13838F9411, 0x9411AC95A455B4D7, 0xB4D79C13938FAC95, 0xAC957B0D62487B0C,  // 0x0000FD68 
	0x9C128B4E7B0C7B4C, 0x730C9C108B8E93D0, 0x7B0C834C834E6AC8, 0x62467B0A8BCEA452,  // 0x0000FD88 
	0xA410938E7B0A6288, 0x5A046A88834C8B8E, 0x834C93CE940E72CA, 0x838C7B4A6246834A,  // 0x0000FDA8 
	0x93D072CA52046246, 0x5A466288834E7B0C, 0x418251C4938E93D1, 0x8B8F93D19C13A455,  // 0x0000FDC8 
	0x9C13AC95B4D7AC97, 0xA455A455B4D7A455, 0x838F7B0D8B8FA455, 0xAC957B0C5206730A,  // 0x0000FDE8 
	0x8BCE834C8B8E730A, 0x72CA93D08B8E93D0, 0x72CA8B8E6ACA72CA, 0x834E834C8B8E9C12,  // 0x0000FE08 
	0xA41093CE8B8C6A88, 0x5A0662467B0C8B8E, 0x8B8E9C1093D0834C, 0x93D08B8C5A46834A,  // 0x0000FE28 
	0xAC968B4C52066288, 0x5A465206834C7B0C, 0x3942418293D0A454, 0x9C12A452938F834D,  // 0x0000FE48 
	0x6A8B730D7B0D8B91, 0x9C1393D193D17B4D, 0x72CB72CB834F9C11, 0xAC547B4C5206834C,  // 0x0000FE68 
	0x834C8B8E8B8E6A88, 0x6A8893CE93D0A452, 0x834C93CE72CA72CA, 0x834C834C8B8E8B8E,  // 0x0000FE88 
	0x9C1094108B8E730A, 0x628852066ACA838E, 0x93CEAC52938EAC92, 0xA4549C12628A6248,  // 0x0000FEA8 
	0xAC949C1252046246, 0x6A886A88938E7B0C, 0x39424182834C7B0C, 0x93CEAC527B4C834C,  // 0x0000FEC8 
	0x7B0A6ACB6A89834F, 0x8B8F6A89730B6A89, 0x5A4762898B8C93CE, 0xB4969C1293D08B8E,  // 0x0000FEE8 
	0x834C9410730A838E, 0x6AC8838E9C1293D0, 0x8BD0A41262886288, 0x834C6288838E93CE,  // 0x0000FF08 
	0x93D09C10938E8B8C, 0x6A8849C462887B4C, 0x8B8C9C12AC929C0E, 0x9C1093CE72C849C4,  // 0x0000FF28 
	0xAC52A4545A066A88, 0x6AC862888B8C834C, 0x418241828B8E72CA, 0x938EA412834E8B8E,  // 0x0000FF48 
	0x6A8872C86A886246, 0x72CA6A8872C85A06, 0x624672CA93D09C10, 0xBD1893D09BD093CE,  // 0x0000FF68 
	0x830C93D07B4C834C, 0x7ACA9C129C1293D0, 0x9C129C1272C86288, 0x834E6A888B8E8B8E,  // 0x0000FF88 
	0x93D093D0938E8B8C, 0x6A8849C451C472CA, 0x838E94109C108B4C, 0x938E93CE834A49C2,  // 0x0000FFA8 
};

u64 _spot18_room_0_tex_0000FFC8[] = 
{
	0x93CE838E838C93D0, 0x7B0A834C9C10C55A, 0xA452A454BD19C519, 0x72CB5A076ACB8B8F,  // 0x0000FFC8 
	0x72CB8B8D9C137B4D, 0x834DBCD7C5599411, 0x628862888B8E9C10, 0x9C108B8E6AC86A8A,  // 0x0000FFE8 
	0x8B90628872C893CE, 0x834C8B8C9C10C518, 0x93D1A413BD19CD5B, 0x6ACB52076A897B0D,  // 0x00010008 
	0x730D7B4D9C119C11, 0x7B0B8B8FB4959C0F, 0x6AC972CA93D093D0, 0x93D093D06ACA730C,  // 0x00010028 
	0x834C5A066AC88B8E, 0x834A72CA72CB8BD1, 0x8B8FAC55A4559C15, 0x834D624B628B628B,  // 0x00010048 
	0x628B6A8B72CD730D, 0x6ACB628B9C139C11, 0x72CB6A89834D834E, 0x93D093D072CC7B0C,  // 0x00010068 
	0x834C7B0A9C10BCD6, 0x93CE72C96A8972CB, 0x93D193D1834F628B, 0x624B624B5A4B49C9,  // 0x00010088 
	0x398749C95A4B624B, 0x5A095A49628B8B8F, 0x72CB6A897B0D834F, 0x9C1093D0834C834E,  // 0x000100A8 
	0x6AC88B8CB4D6C55A, 0xA4117B0B834D93D1, 0x834F730D5A4B5A4B, 0x41C9314720C51083,  // 0x000100C8 
	0x108320C328C53145, 0x398752095A495209, 0x624B72CB72CD8B8F, 0x941193D093CE834E,  // 0x000100E8 
	0x5A0693D0C518B4D7, 0xAC9593D193D1834F, 0x5A4B4A0931471083, 0x18C3108310430841,  // 0x00010108 
	0x0841084110831043, 0x1041188321054187, 0x51C9624B6ACB7B0F, 0x9C11A412A41093D0,  // 0x00010128 
	0x72CAA454BCD99C53, 0xC51BAC557B0F5A4B, 0x41C7290510430801, 0x0001084108410841,  // 0x00010148 
	0x0841084108410841, 0x08010841104118C3, 0x398749C96ACD7B4F, 0xA455AC559C12A452,  // 0x00010168 
	0x8B8EA452B497A453, 0x8BD3628B52094187, 0x20C5084308410841, 0x0841084110411041,  // 0x00010188 
	0x0001080100010001, 0x0001000108011041, 0x20C339875A4B7B0F, 0xA453A453A413A454,  // 0x000101A8 
	0x834CA411A453A413, 0x7B4F5A4B398720C5, 0x0841080108410841, 0x0841104110831083,  // 0x000101C8 
	0x0841080100010001, 0x0001000100010841, 0x1041290541C76ACD, 0x93D1A453B4D7AC94,  // 0x000101E8 
	0x8B8EAC53A4138B91, 0x5A4B49C929051043, 0x0841084108411041, 0x1041108310831883,  // 0x00010208 
	0x1043000100010001, 0x0001080108410841, 0x0841188331475A4B, 0x834FA453AC958B8F,  // 0x00010228 
	0xA455AC5393D1730F, 0x5209314510430841, 0x0841084108411041, 0x0841084108410841,  // 0x00010248 
	0x0841000100010001, 0x0001080100010001, 0x0841084120C34A09, 0x730F94138B8F72CB,  // 0x00010268 
	0xA495A41393D1624B, 0x3987084108410001, 0x0801000100010841, 0x0841084100010001,  // 0x00010288 
	0x0841084108410841, 0x0001000100010001, 0x0801080118833987, 0x730D8B9172CB72CB,  // 0x000102A8 
	0x8B8F9C137B0F5A4B, 0x0041080108410801, 0x0841000108011083, 0x1883084108410841,  // 0x000102C8 
	0x0841084108410841, 0x0841000100010001, 0x0001000110832905, 0x628B834D628972CB,  // 0x000102E8 
	0x834D9C136ACD5A4B, 0x0001104310830841, 0x08410841104118C3, 0x18C318C310811041,  // 0x00010308 
	0x1883108118831883, 0x1083084108410841, 0x0001000110432905, 0x6ACD6ACB6A8B7B0D,  // 0x00010328 
	0x8B8D8B91624B5209, 0x1041188308410841, 0x1083104118C33145, 0x20C3314520C31081,  // 0x00010348 
	0x18C320C320C32905, 0x1883188318C31041, 0x0001000108413107, 0x93D3730B6A8B72C9,  // 0x00010368 
	0x8B8F93D15A4B3987, 0x1041108308431043, 0x20C318C329033985, 0x4187290320C31883,  // 0x00010388 
	0x290520C3290520C3, 0x20C3290529051883, 0x00010001084141C9, 0xAC95730B62896287,  // 0x000103A8 
	0x8B8F9C1352093987, 0x1083290518832905, 0x2905290339853987, 0x41C7310529052905,  // 0x000103C8 
	0x39872905290320C3, 0x29053105314520C3, 0x104300010841BCD9, 0x8B8F730B62495204,  // 0x000103E8 
	0x8B8F9BD14A093987, 0x1883314721053947, 0x3987398541875209, 0x4A09314531453145,  // 0x00010408 
	0x3987314520C320C3, 0x3105314531452905, 0x20C30841628DCD5B, 0x834D730D62496248,  // 0x00010428 
	0x834D8B8F5A4B3987, 0x210541C941C7520B, 0x49C7314541C549C7, 0x4A09394531453145,  // 0x00010448 
	0x4187314520C32903, 0x3145398531853145, 0x29052905CD5BBD19, 0x8B8F6AC95A477B0A,  // 0x00010468 
	0x7B0B834D52073987, 0x2905398741C749C9, 0x418531454A0949C7, 0x5209394539454185,  // 0x00010488 
	0x49C7314529052905, 0x3987398539874187, 0x3145628DCD5BB4D7, 0x7B4D72C95A467B0A,  // 0x000104A8 
	0x834D7B0D520741C7, 0x188320C329053145, 0x3987398749C749C7, 0x49C73145314549C7,  // 0x000104C8 
	0x4A09314531453145, 0x3987398541C73987, 0x628DC559C5199BCF, 0x7B0B730B5A466288,  // 0x000104E8 
	0x8B8F7B0D62897B4F, 0x290520C329053145, 0x3987418749C94A09, 0x41C7314541C549C7,  // 0x00010508 
	0x4A09394531453145, 0x418741C749C74187, 0xAC97C519ACD79C11, 0x834D730A52065206,  // 0x00010528 
	0x8B8E730D72CB8B8F, 0x93D1290520C53145, 0x398741C752095209, 0x41C731454A0949C7,  // 0x00010548 
	0x5209394539453985, 0x41C749C941C7730F, 0xBCD9B4D7AC979C11, 0x8B8D7B0C5A465206,  // 0x00010568 
	0x834C72CB62879BD1, 0x9C1341C721052905, 0x394741C752095209, 0x49C9314541C749C7,  // 0x00010588 
	0x49C7314531454187, 0x41C74A095209C519, 0xB4979BD1B4979C11, 0x834C834C62885204,  // 0x000105A8 
	0x8B907B0D7B4D7B0D, 0xA413A45539473947, 0x314749C95249524B, 0x49C92903314549C9,  // 0x000105C8 
	0x4A09310331053945, 0x4A095A4BB4D7C519, 0x9BD1938FAC95938F, 0x72CA834C6AC849C4,  // 0x000105E8 
	0x7B4C72CA8B8F7B4D, 0x7B0DA413B49741C7, 0x314541C952095249, 0x4A073945398549C7,  // 0x00010608 
	0x524B3145314549C7, 0x4A099413C51993D1, 0x6A8993D19C13834C, 0x7B0C8B907B0A49C4,  // 0x00010628 
	0x834C834E7B0C830B, 0x730993D1B4D7AC95, 0x398741C949C95A49, 0x5A4941C741C749C7,  // 0x00010648 
	0x52093945520941C7, 0x9C13CD5BBCD76247, 0x628993D19C128BCE, 0x8B8E93D0830C51C4,  // 0x00010668 
	0x8BCE9C12838C834A, 0x7B09834DAC95B497, 0xB49752095A4B4A09, 0x5A49628B5A4B5A49,  // 0x00010688 
	0x624B52094A09B497, 0xC519BD19AC955A47, 0x5A078BCEA454A410, 0x8B8E8B8C830C5206,  // 0x000106A8 
	0x8BCEA45293D0834C, 0x72CA834DA413AC95, 0xAC95BCD7A4555A8B, 0x5A8D520949C94A09,  // 0x000106C8 
	0x93D3B497B4D7C519, 0xB495938F7B0B730D, 0x730C93D0A454A452, 0x93CE8B4C7B0C5204,  // 0x000106E8 
	0x8B8E9C108B8E7B4C, 0x72CA834CA4539C13, 0x93D1A455B4D7BD19, 0xBCD9C51BB4D79C13,  // 0x00010708 
	0xA413BD19C55993CF, 0x8B8F93D17B0B7B0C, 0x834C9C1093D09C10, 0x93D08B8E834C6286,  // 0x00010728 
	0x834C938E7B0A6ACA, 0x6288730A9C10A453, 0x628972CDA4559C11, 0xA453AC95B4D7A455,  // 0x00010748 
	0x93D1B495B495B4D7, 0xAC9593CF6A887B0C, 0x730A834C834C8B8E, 0x93D08B8E834C72CA,  // 0x00010768 
	0x7B0A838C6A885A06, 0x6A88834CA452AC94, 0x93D193D193D18B8F, 0xAC958BCF9C517B4D,  // 0x00010788 
	0x838FA4539C13AC97, 0xB4D89BD0624672CA, 0x6288730A93CE93CE, 0x9C129BCE8B8E834C,  // 0x000107A8 
};

u64 _spot18_room_0_tex_000107C8[] = 
{
	0x9190894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000107C8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000107E8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010808 
	0x894E894E894E0843, 0x084308430843894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010828 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010848 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010868 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010888 
	0x0843084308430843, 0x618D08431842894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000108A8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000108C8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000108E8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E084208420843,  // 0x00010908 
	0x698D894F894F718D, 0x0843494A894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010928 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010948 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010968 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E0843, 0x08430843718C894F,  // 0x00010988 
	0x894F894F894F0843, 0x8A14894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000109A8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000109C8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000109E8 
	0x894E894E894E894E, 0x894E08430843894E, 0x894E894E0842698D, 0x894F894F894E894F,  // 0x00010A08 
	0x894F894F698D0843, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010A28 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010A48 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010A68 
	0x894E894E894E4210, 0x0843814F0843894E, 0x894E0842814E894E, 0x894E894E894E894F,  // 0x00010A88 
	0x894F894F10438A14, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010AA8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010AC8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010AE8 
	0x894E894E894E0843, 0x28C7894F0843894E, 0x894E0842894E894E, 0x894F894F894F894F,  // 0x00010B08 
	0x894F894F410961D0, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010B28 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010B48 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010B68 
	0x894E894E0843894F, 0x894F798F0843894E, 0x894E0842894E894F, 0x894F894F894F894F,  // 0x00010B88 
	0x894F894F894F0842, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010BA8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010BC8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010BE8 
	0x894E0842698D894F, 0x894F1885894E894E, 0x894E08420843894F, 0x894F894F894F894F,  // 0x00010C08 
	0x894F894F894E0842, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010C28 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010C48 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E0843,  // 0x00010C68 
	0x0842894E894F894F, 0x894F0843894E894E, 0x894E894E08430843, 0x894F894E894E894F,  // 0x00010C88 
	0x894F894F894F894F, 0x08438214894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010CA8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010CC8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E52940843,  // 0x00010CE8 
	0x718C894E894F894F, 0x894F0843894E894E, 0x894E894E894E0843, 0x0843894E894E894E,  // 0x00010D08 
	0x894E894F894F894F, 0x084308430843494B, 0x8A14921292129212, 0x9212894E894E894E,  // 0x00010D28 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010D48 
	0x894E894E894E894E, 0x084308430843894E, 0x894E894E894E894E, 0x894E894E0843894F,  // 0x00010D68 
	0x894E894E894F894F, 0x894F08430842894E, 0x894E894E894E894E, 0x108508430843814F,  // 0x00010D88 
	0x894E894F894F894F, 0x894F894F894F698D, 0x28C7104310431043, 0x0843084308430843,  // 0x00010DA8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010DC8 
	0x894E894E08430842, 0x894E0842894E894E, 0x894E894E894E894E, 0x894E0843798F894F,  // 0x00010DE8 
	0x894F894E894F894F, 0x894F894F814E0842, 0x08430843894E894E, 0x894E894E894E0843,  // 0x00010E08 
	0x0843084308430843, 0x0843084308431043, 0x1043104308430843, 0x084308430843894E,  // 0x00010E28 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010E48 
	0x894E0842698C894E, 0x894E0843894E894E, 0x894E894E894E894E, 0x894E0843894F894F,  // 0x00010E68 
	0x894F894F894F894F, 0x894F894E894E894E, 0x618C084208420842, 0x0843084308435294,  // 0x00010E88 
	0x894E894E894E894E, 0x2109084308430843, 0x0843084308432108, 0x894E894E894E894E,  // 0x00010EA8 
	0x894E894E894E894E, 0x894E0843894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00010EC8 
	0x0843894F894F894E, 0x894F08434210894E, 0x894E894E894E894E, 0x894E084308434109,  // 0x00010EE8 
	0x4109698D698D4109, 0x4109104310420843, 0x0843084308430842, 0x0842084208420843,  // 0x00010F08 
	0x894E894E894E894E, 0x894E894E894E894E, 0x0843084308430843, 0x894E894E894E894E,  // 0x00010F28 
	0x894E894E894E894E, 0x08430843894E894E, 0x894E894E894E894E, 0x894E894E894E0843,  // 0x00010F48 
	0x814F894F894F894F, 0x894F894F08432109, 0x894E894E894E894E, 0x894E894E08430843,  // 0x00010F68 
	0x0843084308430843, 0x0843084308430843, 0x0843084321084210, 0x894E894E894E894E,  // 0x00010F88 
	0x894E894E894E894E, 0x894E084308430843, 0x0843410908430843, 0x894E894E894E894E,  // 0x00010FA8 
	0x894E894E42100843, 0x0843894E894E894E, 0x894E894E894E894E, 0x894E894E894E0843,  // 0x00010FC8 
	0x1043894E894E894E, 0x894E894E894E1043, 0x084308431085894E, 0x894E894E894E894E,  // 0x00010FE8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011008 
	0x894E084308430843, 0x1885718D894F894F, 0x894F08430843894E, 0x894E894E894E894E,  // 0x00011028 
	0x894E10850843814F, 0x0843894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011048 
	0x0842084210424109, 0x894F894F894E894F, 0x894F390808430842, 0x0842084308435294,  // 0x00011068 
	0x894E894E894E894E, 0x894E894E894E894E, 0x210908430843894E, 0x894E894E894E0843,  // 0x00011088 
	0x08430843618D894F, 0x894F894F894F894F, 0x08430843894E894E, 0x894E894E894E894E,  // 0x000110A8 
	0x52940843894F894F, 0x0843894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000110C8 
	0x894E894E894E5294, 0x0843084308420843, 0x0842084208420842, 0x084308432108894E,  // 0x000110E8 
	0x894E894E894E894E, 0x894E108508430843, 0x494B08430843894E, 0x894E08430843894F,  // 0x00011108 
	0x894F894F894F894F, 0x894F894F28C70843, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011128 
	0x0843894F894F894E, 0x0842894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011148 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011168 
	0x894E894E894E0843, 0x08430842494A894F, 0x08420843894E894E, 0x08430843894F894F,  // 0x00011188 
	0x894F894F894F894F, 0x814F08430843894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000111A8 
	0x0843894F894F894E, 0x894E084308430843, 0x0843084308420843, 0x0843084308430842,  // 0x000111C8 
	0x084208420842894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000111E8 
	0x894E08430843494B, 0x894F894F41080842, 0x894E894E894E894E, 0x0843894F894F894F,  // 0x00011208 
	0x894F894F894F798F, 0x0843894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011228 
	0x8A14084308421042, 0x1043718D894E894E, 0x894F894F894E894F, 0x894F798F18850842,  // 0x00011248 
	0x08420843894E894E, 0x894E894E318C0843, 0x08432109894E894E, 0x894E894E894E0843,  // 0x00011268 
	0x0843798F894F894F, 0x894F08420842894E, 0x894E894E894E0843, 0x894F894F894F894F,  // 0x00011288 
	0x894F894F894F0843, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000112A8 
	0x894E8A1408420843, 0x08420842894F894E, 0x894F594C08420843, 0x0843084308430843,  // 0x000112C8 
	0x894E894E894E894E, 0x894E084208430843, 0x0843894E894E894E, 0x894E894E08421043,  // 0x000112E8 
	0x894F894F894F894F, 0x18850843894E894E, 0x894E894E894E0843, 0x894F894F894E894E,  // 0x00011308 
	0x894E894F894F0843, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011328 
	0x894E30C60843594D, 0x894F494B08430842, 0x08422108894E894E, 0x894E894E894E894E,  // 0x00011348 
	0x894E894E08430843, 0x0843698C08430843, 0x894E894E894E894E, 0x08430842894E894F,  // 0x00011368 
	0x894F894F894F0843, 0x0843894E894E894E, 0x894E894E894E0843, 0x894E894E894E894E,  // 0x00011388 
	0x894F894F894F698D, 0x08434210894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000113A8 
	0x894E084328C7894F, 0x084308430843894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000113C8 
	0x084308420842814E, 0x494B08435294894E, 0x894E894E894E0843, 0x0842894E894E894E,  // 0x000113E8 
	0x894F894F894F0843, 0x894E894E894E894E, 0x894E894E894E0843, 0x1884894E894E894E,  // 0x00011408 
	0x894E894E894F894F, 0x084308420842894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011428 
	0x0843814F894F698D, 0x0843894E894E894E, 0x894E894E894E894E, 0x894E421008430842,  // 0x00011448 
	0x618C894F894F0843, 0x0843894E894E894E, 0x894E894E318D1885, 0x894E894E894E894F,  // 0x00011468 
	0x894E894F894F0843, 0x08432109894E894E, 0x894E894E894E894E, 0x08420842894E894F,  // 0x00011488 
	0x894F894F894F894F, 0x894F894E894E28C7, 0x0843084308430842, 0x0842894E894E894E,  // 0x000114A8 
	0x0843894F894F718C, 0x0842894E894E894E, 0x894E894E894E894E, 0x08430843594D894F,  // 0x000114C8 
	0x894F894F08430843, 0x894E894E894E894E, 0x894E894E0843494B, 0x894F894F894E894E,  // 0x000114E8 
	0x894E894F894F894F, 0x4109084308430843, 0x894E894E894E894E, 0x894E08430843814F,  // 0x00011508 
	0x894F894F894F894F, 0x894E894E894E894F, 0x894F698D18850843, 0x0843894E894E894E,  // 0x00011528 
	0x0843894F894E894E, 0x0842894E894E894E, 0x894E894E894E0843, 0x0843894F894F894F,  // 0x00011548 
	0x894F814F0843894E, 0x894E894E894E894E, 0x894E894E894E0843, 0x0843084308430842,  // 0x00011568 
	0x0842084208430843, 0x0843084308430843, 0x894E894E894E894E, 0x894E894E894E0843,  // 0x00011588 
	0x0843084308430843, 0x0842084308430843, 0x08431085894E894E, 0x894E894E894E894E,  // 0x000115A8 
	0x894E0843594D894F, 0x894F08430843894E, 0x894E894E08430843, 0x894F894F894F894E,  // 0x000115C8 
	0x894E894E0842894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000115E8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011608 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011628 
	0x894E084208430843, 0x0843084308430843, 0x894E894E08430843, 0x894F894F894F894E,  // 0x00011648 
	0x894F894F08430843, 0x0843894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011668 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011688 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000116A8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E0843, 0x084308434109698D,  // 0x000116C8 
	0x698D894F894F894F, 0x798F08430843894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000116E8 
	0x894E894E894E894E, 0x894E914E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011708 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011728 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x4210084308430843,  // 0x00011748 
	0x0843084308430843, 0x084308430843894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011768 
	0x894E894E894E914E, 0x914E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x00011788 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x000117A8 
};

u64 _spot18_room_0_tex_000117C8[] = 
{
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x000117C8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025400010001,  // 0x000117E8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011808 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011828 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011848 
	0x0254025402540254, 0x0254025402540000, 0x0252025402540254, 0x0254000151052881,  // 0x00011868 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011888 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x000118A8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x000118C8 
	0x0254025402540254, 0x0254025400016906, 0x0001025402540254, 0x1294100069065104,  // 0x000118E8 
	0x0254025402540254, 0x0254025408810001, 0x0254025402540254, 0x0254025402540254,  // 0x00011908 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011928 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011948 
	0x0254025400010254, 0x0254025400016906, 0x6906025202540254, 0x0001690769076906,  // 0x00011968 
	0x0254025402540252, 0x0000000069070001, 0x0254025402540254, 0x0254025402540254,  // 0x00011988 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x000119A8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x000119C8 
	0x0254000169070001, 0x0254000169066906, 0x6907000102540001, 0x6907690769066906,  // 0x000119E8 
	0x0254025400006906, 0x6907690700010254, 0x0254025402540254, 0x0254025402540254,  // 0x00011A08 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011A28 
	0x0000000000000001, 0x3A4E025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011A48 
	0x0254000169070001, 0x0254000169076907, 0x690738C302540001, 0x0001490569075105,  // 0x00011A68 
	0x0254025400016906, 0x6906610702540254, 0x0254025400010001, 0x0254025402540254,  // 0x00011A88 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402520254,  // 0x00011AA8 
	0x0000690769066906, 0x6906000000000254, 0x0254025402540254, 0x0254025402540254,  // 0x00011AC8 
	0x0001690769072881, 0x0254000100010001, 0x0001000102540254, 0x0254025402540254,  // 0x00011AE8 
	0x0254025412940001, 0x6907000102540001, 0x0001590769070001, 0x0254025402540254,  // 0x00011B08 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011B28 
	0x0252204169076907, 0x6906690669061000, 0x0001025402540254, 0x0254025402540254,  // 0x00011B48 
	0x0001000100010001, 0x0254025402542145, 0x0001000100010001, 0x0001021102110211,  // 0x00011B68 
	0x1105000100010254, 0x2145025400016907, 0x6907690700010254, 0x0254025402540254,  // 0x00011B88 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011BA8 
	0x0254000169076907, 0x6907690669066906, 0x6906000102540254, 0x0254025402540254,  // 0x00011BC8 
	0x0254025402540001, 0x0001000102530255, 0x0255025502550255, 0x0255025502550255,  // 0x00011BE8 
	0x0255025502551105, 0x0001025400010001, 0x6907690700010254, 0x0254025402540254,  // 0x00011C08 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011C28 
	0x0254025400016907, 0x6907690769066906, 0x6907690728810254, 0x0254025402542144,  // 0x00011C48 
	0x0000000102550255, 0x0255025502550255, 0x0255025502550255, 0x0255025502550255,  // 0x00011C68 
	0x0255025502550255, 0x0255025500010254, 0x025431CB02540254, 0x0254025402540254,  // 0x00011C88 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011CA8 
	0x0254025402540001, 0x6907690769076907, 0x6907690700010254, 0x0254000000010255,  // 0x00011CC8 
	0x0255025402540254, 0x0254025502550255, 0x0255025502550255, 0x0255025502550255,  // 0x00011CE8 
	0x0255025502550255, 0x0255025502550001, 0x0881025402540254, 0x0254025402540254,  // 0x00011D08 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011D28 
	0x0254025402540254, 0x0001690769076907, 0x6907000102541294, 0x0001025402540255,  // 0x00011D48 
	0x0255025502550255, 0x0254025502550255, 0x0255025502550255, 0x0255025502550255,  // 0x00011D68 
	0x0255025502540254, 0x0255025502550255, 0x0253000102540254, 0x0254025402540254,  // 0x00011D88 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011DA8 
	0x0254025402540254, 0x025431CA00010001, 0x0001025400010253, 0x0255025500010001,  // 0x00011DC8 
	0x0001021102550255, 0x0255025502550255, 0x0255025502550255, 0x0255025402550255,  // 0x00011DE8 
	0x0255025502550255, 0x0255025502550255, 0x0255025500012AD4, 0x0254025402540254,  // 0x00011E08 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011E28 
	0x0254025402540254, 0x0254025402540254, 0x000109CD02550255, 0x0255025500016907,  // 0x00011E48 
	0x6907000102550255, 0x0255025502550255, 0x0255025502550255, 0x0255025502550255,  // 0x00011E68 
	0x0255025502550255, 0x0254025502550255, 0x02550255025509CD, 0x0001025402540254,  // 0x00011E88 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011EA8 
	0x0254025402540254, 0x0254025400010255, 0x0254025502550255, 0x0255025500010001,  // 0x00011EC8 
	0x0001021102550255, 0x0255025500010001, 0x0001025502550255, 0x0255025502550255,  // 0x00011EE8 
	0x0254025502550254, 0x0254025502550255, 0x0255025502550255, 0x0255000102520254,  // 0x00011F08 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011F28 
	0x0254025402540254, 0x0254000002550255, 0x0254025402540255, 0x0255025502550255,  // 0x00011F48 
	0x0255025502550255, 0x0255000102540001, 0x0000000102550255, 0x0255025502550255,  // 0x00011F68 
	0x0255025502540254, 0x02540001000109CD, 0x0255025502550255, 0x0255025500010001,  // 0x00011F88 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00011FA8 
	0x0254025402540254, 0x0000025402540255, 0x0255025502540255, 0x0255025502550255,  // 0x00011FC8 
	0x0255025502550255, 0x0001025400010255, 0x0254025209CD0255, 0x0255025502540255,  // 0x00011FE8 
	0x0254025402540001, 0x31CB025202940254, 0x0001025502550255, 0x0255025502550253,  // 0x00012008 
	0x0001025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00012028 
	0x0254025402543A4F, 0x020F025402540254, 0x0255025502550254, 0x0255025502550255,  // 0x00012048 
	0x0255025502550255, 0x3293000102550255, 0x0254000000010255, 0x0255025502540254,  // 0x00012068 
	0x0254025400010254, 0x0001025302550001, 0x0881000102550255, 0x0255025502540254,  // 0x00012088 
	0x0254000102940254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540294,  // 0x000120A8 
	0x0254025402540000, 0x0255025502540254, 0x0255025509CC0000, 0x0000000100010255,  // 0x000120C8 
	0x0255025502550001, 0x31CB025502550255, 0x0255000100010255, 0x0255025502550254,  // 0x000120E8 
	0x0254025400010001, 0x0255025502550255, 0x0001000102550255, 0x0255025402540254,  // 0x00012108 
	0x0255025402540001, 0x0254025402540254, 0x0254025202540252, 0x0252025202540254,  // 0x00012128 
	0x0254025402540000, 0x0000000000010000, 0x0001329202540254, 0x0254029400010255,  // 0x00012148 
	0x0255025402540001, 0x0001025502550255, 0x0255000100010254, 0x0254025502540254,  // 0x00012168 
	0x0254025500010001, 0x0255025502550255, 0x0001000102550255, 0x0255025402540254,  // 0x00012188 
	0x0254025402540254, 0x0000000002540254, 0x0254025402540254, 0x0254025402540254,  // 0x000121A8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0000021102550255,  // 0x000121C8 
	0x0255025402540294, 0x0001025502550255, 0x0255000132920254, 0x0254025402550255,  // 0x000121E8 
	0x0254025500000254, 0x0253025502550255, 0x0001000102550255, 0x0255025502550255,  // 0x00012208 
	0x0254025402540254, 0x0255025400003292, 0x0254025402540254, 0x0254025402540254,  // 0x00012228 
	0x0254025402540254, 0x0254025402540254, 0x0254000100010211, 0x0255025402550255,  // 0x00012248 
	0x0255025502540254, 0x118B025502550255, 0x0255000102540254, 0x0254025402540255,  // 0x00012268 
	0x0255025500000254, 0x0081025502550255, 0x31CB000102550255, 0x0255025502550254,  // 0x00012288 
	0x0254025402540254, 0x0254025402550253, 0x0001029402540254, 0x0254025402540254,  // 0x000122A8 
	0x0254025402540254, 0x0254025400010001, 0x020E025502550255, 0x0255025402540255,  // 0x000122C8 
	0x0255025502530294, 0x0255025502550255, 0x0255118B02540211, 0x0254025402540255,  // 0x000122E8 
	0x0255025500010254, 0x0001025502550255, 0x0001000102550255, 0x0255025502550255,  // 0x00012308 
	0x0255025402550255, 0x0255025502550255, 0x0255025300010001, 0x0254025402540254,  // 0x00012328 
	0x0254025402540254, 0x0254000102550255, 0x0255025402540254, 0x0254025402540254,  // 0x00012348 
	0x0255025500010001, 0x0255025502550255, 0x02550211025409CD, 0x0255025402550255,  // 0x00012368 
	0x02550255020F0254, 0x0001025502550255, 0x118B31CB08810001, 0x0081025502550255,  // 0x00012388 
	0x0255025502550255, 0x0255025502550255, 0x0255025502550255, 0x025511CD00010000,  // 0x000123A8 
	0x0254025402540254, 0x0254025431CA0001, 0x000100010000118A, 0x118A000000010000,  // 0x000123C8 
	0x0001000102540001, 0x0255025502550255, 0x025502110254118B, 0x0255025402540255,  // 0x000123E8 
	0x0255025502100254, 0x0001025502540254, 0x0254021100013A4E, 0x0254000100010001,  // 0x00012408 
	0x0211025502550255, 0x0255025502550255, 0x0255021111050001, 0x0001000100010000,  // 0x00012428 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00012448 
	0x0254025400010255, 0x0255025502550255, 0x0255021102540001, 0x0001025302550255,  // 0x00012468 
	0x0255025400000254, 0x0001025502540255, 0x0255025402540255, 0x0001000102520254,  // 0x00012488 
	0x0254029412943292, 0x3292329232920294, 0x0254025402540254, 0x0254025402540254,  // 0x000124A8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025408810000,  // 0x000124C8 
	0x000111CD02550255, 0x0255025502550255, 0x0255118B02540254, 0x0254025208810001,  // 0x000124E8 
	0x0001029402540254, 0x0001025502550255, 0x0255025502550255, 0x0255025511CD0001,  // 0x00012508 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00012528 
	0x0254025402540254, 0x0254025402540254, 0x0254025400010001, 0x0255025502550254,  // 0x00012548 
	0x0255025502550255, 0x0255025502550255, 0x0255000102540254, 0x0254025402540254,  // 0x00012568 
	0x0254025402540254, 0x0001025502540255, 0x0255025502550254, 0x0255025502550254,  // 0x00012588 
	0x0000025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x000125A8 
	0x0254025402540254, 0x0254025402540254, 0x0254000102550254, 0x0255025502550254,  // 0x000125C8 
	0x0255025502550255, 0x0255025502550255, 0x0255000102540254, 0x0254025402540254,  // 0x000125E8 
	0x0254025402540254, 0x1294025402540254, 0x0254025402540254, 0x0255025502540254,  // 0x00012608 
	0x0001025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00012628 
	0x0254025402540254, 0x0254025402540254, 0x0254000102550254, 0x0255025502550254,  // 0x00012648 
	0x0255025502550255, 0x0254025402550255, 0x0255000102540254, 0x0254025402540254,  // 0x00012668 
	0x0254025402540254, 0x0254000002540254, 0x0254025402550255, 0x0255025502110001,  // 0x00012688 
	0x3292025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x000126A8 
	0x0254025402540254, 0x0254025402540254, 0x0254025200010255, 0x0255025502550255,  // 0x000126C8 
	0x0255025502550255, 0x0254025402540252, 0x0001025402540254, 0x0254025402540254,  // 0x000126E8 
	0x0254025402540254, 0x0254025402543292, 0x0000000100010001, 0x00012AD402540254,  // 0x00012708 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00012728 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540001, 0x0001000100010001,  // 0x00012748 
	0x0001000100010001, 0x0000000008800254, 0x0254025402540254, 0x0254025402540254,  // 0x00012768 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x00012788 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x000127A8 
};

static u8 unaccounted127C8[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


