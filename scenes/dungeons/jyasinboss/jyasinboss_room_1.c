#include <ultra64.h>
#include <z64.h>
#include "jyasinboss_room_1.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "jyasinboss_scene.h"



SCmdAltHeaders _jyasinboss_room_1_set0000_cmd00 = { 0x18, 0, (u32)&_jyasinboss_room_1_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _jyasinboss_room_1_set0000_cmd01 = { 0x16, 0, { 0 }, 0x07 }; // 0x0008
SCmdRoomBehavior _jyasinboss_room_1_set0000_cmd02 = { 0x08, 0x01, 0x00000000 }; // 0x0010
SCmdSkyboxDisables _jyasinboss_room_1_set0000_cmd03 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0018
SCmdTimeSettings _jyasinboss_room_1_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0020
SCmdMesh _jyasinboss_room_1_set0000_cmd05 = { 0x0A, 0, (u32)&_jyasinboss_room_1_meshHeader_00000190 }; // 0x0028
SCmdObjectList _jyasinboss_room_1_set0000_cmd06 = { 0x0B, 0x07, (u32)_jyasinboss_room_1_objectList_00000060 }; // 0x0030
SCmdActorList _jyasinboss_room_1_set0000_cmd07 = { 0x01, 0x12, (u32)_jyasinboss_room_1_actorList_00000070 }; // 0x0038
SCmdEndMarker _jyasinboss_room_1_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _jyasinboss_room_1_alternateHeaders_00000048[] = 
{
	0,
	0,
	0,
	(u32)&_jyasinboss_room_1_set01B0_cmd00,
	(u32)&_jyasinboss_room_1_set0320_cmd00,
	(u32)&_jyasinboss_room_1_set0490_cmd00,
};

s16 _jyasinboss_room_1_objectList_00000060[] = 
{
	OBJECT_JYA_DOOR,
	OBJECT_BDOOR,
	OBJECT_TR,
	OBJECT_EFC_FLASH,
	OBJECT_IK,
	OBJECT_NB,
	OBJECT_JYA_IRON,
};

ActorEntry _jyasinboss_room_1_actorList_00000070[18] = 
{
	{ ACTOR_EN_IK, -1235, 0, 1268, 0, 0, 0, 0x0500 }, //0x00000070 
	{ ACTOR_DEMO_IK, -1235, 0, 1268, 0, 0, 0, 0x0004 }, //0x00000080 
	{ ACTOR_DEMO_IK, -1235, 0, 1268, 0, 0, 0, 0x0003 }, //0x00000090 
	{ ACTOR_DEMO_IK, -1235, 0, 1268, 0, 0, 0, 0x0006 }, //0x000000A0 
	{ ACTOR_DEMO_IK, -1235, 0, 1268, 0, 0, 0, 0x0005 }, //0x000000B0 
	{ ACTOR_DEMO_IK, -1240, 0, 1248, 0, -8192, 0, 0x0001 }, //0x000000C0 
	{ ACTOR_DEMO_IK, -1213, 0, 1267, 0, -8192, 0, 0x0002 }, //0x000000D0 
	{ ACTOR_EN_NB, -1212, 16, 1210, 0, -8192, 0, 0x0004 }, //0x000000E0 
	{ ACTOR_BG_JYA_IRONOBJ, -1206, -5, 1206, 0, -24576, 0, 0x0001 }, //0x000000F0 
	{ ACTOR_BG_JYA_IRONOBJ, -1482, 0, 1652, 0, -8374, 0, 0x0000 }, //0x00000100 
	{ ACTOR_BG_JYA_IRONOBJ, -1652, 0, 1482, 0, -8010, 0, 0x0000 }, //0x00000110 
	{ ACTOR_BG_JYA_IRONOBJ, -1340, 0, 1510, 0, -8010, 0, 0x0000 }, //0x00000120 
	{ ACTOR_BG_JYA_IRONOBJ, -1510, 0, 1340, 0, -8374, 0, 0x0000 }, //0x00000130 
	{ ACTOR_BG_JYA_IRONOBJ, -1370, 0, 1031, 0, -8010, 0, 0x0000 }, //0x00000140 
	{ ACTOR_BG_JYA_IRONOBJ, -1031, 0, 1370, 0, -8374, 0, 0x0000 }, //0x00000150 
	{ ACTOR_DEMO_IK, -1256, 0, 1210, 0, -8192, 0, 0x0000 }, //0x00000160 
	{ ACTOR_EN_TR, -1303, 0, 1136, 0, -8192, 0, 0x0000 }, //0x00000170 
	{ ACTOR_EN_TR, -1125, 0, 1301, 0, -8192, 0, 0x0001 }, //0x00000180 
};


MeshHeader0 _jyasinboss_room_1_meshHeader_00000190 = { { 0 }, 0x01, (u32)&_jyasinboss_room_1_meshDListEntry_0000019C, (u32)&(_jyasinboss_room_1_meshDListEntry_0000019C) + sizeof(_jyasinboss_room_1_meshDListEntry_0000019C) };

MeshEntry0 _jyasinboss_room_1_meshDListEntry_0000019C[1] = 
{
	{ (u32)_jyasinboss_room_1_dlist_00002DD0, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.
static u32 pad1A8 = 0;
static u32 pad1AC = 0;

SCmdEchoSettings _jyasinboss_room_1_set01B0_cmd00 = { 0x16, 0, { 0 }, 0x07 }; // 0x01B0
SCmdRoomBehavior _jyasinboss_room_1_set01B0_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x01B8
SCmdSkyboxDisables _jyasinboss_room_1_set01B0_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x01C0
SCmdTimeSettings _jyasinboss_room_1_set01B0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x01C8
SCmdMesh _jyasinboss_room_1_set01B0_cmd04 = { 0x0A, 0, (u32)&_jyasinboss_room_1_meshHeader_00000190 }; // 0x01D0
SCmdObjectList _jyasinboss_room_1_set01B0_cmd05 = { 0x0B, 0x06, (u32)_jyasinboss_room_1_objectList_000001F0 }; // 0x01D8
SCmdActorList _jyasinboss_room_1_set01B0_cmd06 = { 0x01, 0x12, (u32)_jyasinboss_room_1_actorList_000001FC }; // 0x01E0
SCmdEndMarker _jyasinboss_room_1_set01B0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x01E8
s16 _jyasinboss_room_1_objectList_000001F0[] = 
{
	OBJECT_JYA_DOOR,
	OBJECT_TR,
	OBJECT_EFC_FLASH,
	OBJECT_IK,
	OBJECT_NB,
	OBJECT_JYA_IRON,
};

ActorEntry _jyasinboss_room_1_actorList_000001FC[18] = 
{
	{ ACTOR_BG_JYA_IRONOBJ, -1482, 0, 1652, 0, -8374, 0, 0x0000 }, //0x000001FC 
	{ ACTOR_BG_JYA_IRONOBJ, -1652, 0, 1482, 0, -8010, 0, 0x0000 }, //0x0000020C 
	{ ACTOR_BG_JYA_IRONOBJ, -1340, 0, 1510, 0, -8010, 0, 0x0000 }, //0x0000021C 
	{ ACTOR_BG_JYA_IRONOBJ, -1510, 0, 1340, 0, -8374, 0, 0x0000 }, //0x0000022C 
	{ ACTOR_BG_JYA_IRONOBJ, -1370, 0, 1031, 0, -8010, 0, 0x0000 }, //0x0000023C 
	{ ACTOR_BG_JYA_IRONOBJ, -1031, 0, 1370, 0, -8374, 0, 0x0000 }, //0x0000024C 
	{ ACTOR_BG_JYA_IRONOBJ, -1206, -5, 1206, 0, -24576, 0, 0x0001 }, //0x0000025C 
	{ ACTOR_EN_IK, -1235, 0, 1268, 0, 0, 0, 0x0000 }, //0x0000026C 
	{ ACTOR_DEMO_IK, -1235, 0, 1268, 0, 0, 0, 0x0004 }, //0x0000027C 
	{ ACTOR_DEMO_IK, -1235, 0, 1268, 0, 0, 0, 0x0003 }, //0x0000028C 
	{ ACTOR_DEMO_IK, -1235, 0, 1268, 0, 0, 0, 0x0006 }, //0x0000029C 
	{ ACTOR_DEMO_IK, -1235, 0, 1268, 0, 0, 0, 0x0005 }, //0x000002AC 
	{ ACTOR_DEMO_IK, -1240, 0, 1248, 0, -8192, 0, 0x0001 }, //0x000002BC 
	{ ACTOR_DEMO_IK, -1213, 0, 1267, 0, -8192, 0, 0x0002 }, //0x000002CC 
	{ ACTOR_EN_NB, -1212, 16, 1210, 0, -8192, 0, 0x0004 }, //0x000002DC 
	{ ACTOR_DEMO_IK, -1256, 0, 1210, 0, -8192, 0, 0x0000 }, //0x000002EC 
	{ ACTOR_EN_TR, -1303, 0, 1136, 0, -8192, 0, 0x0000 }, //0x000002FC 
	{ ACTOR_EN_TR, -1125, 0, 1301, 0, -8192, 0, 0x0001 }, //0x0000030C 
};

static u32 pad31C = 0;

SCmdEchoSettings _jyasinboss_room_1_set0320_cmd00 = { 0x16, 0, { 0 }, 0x07 }; // 0x0320
SCmdRoomBehavior _jyasinboss_room_1_set0320_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0328
SCmdSkyboxDisables _jyasinboss_room_1_set0320_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0330
SCmdTimeSettings _jyasinboss_room_1_set0320_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0338
SCmdMesh _jyasinboss_room_1_set0320_cmd04 = { 0x0A, 0, (u32)&_jyasinboss_room_1_meshHeader_00000190 }; // 0x0340
SCmdObjectList _jyasinboss_room_1_set0320_cmd05 = { 0x0B, 0x06, (u32)_jyasinboss_room_1_objectList_00000360 }; // 0x0348
SCmdActorList _jyasinboss_room_1_set0320_cmd06 = { 0x01, 0x12, (u32)_jyasinboss_room_1_actorList_0000036C }; // 0x0350
SCmdEndMarker _jyasinboss_room_1_set0320_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0358
s16 _jyasinboss_room_1_objectList_00000360[] = 
{
	OBJECT_JYA_DOOR,
	OBJECT_TR,
	OBJECT_EFC_FLASH,
	OBJECT_IK,
	OBJECT_NB,
	OBJECT_JYA_IRON,
};

ActorEntry _jyasinboss_room_1_actorList_0000036C[18] = 
{
	{ ACTOR_BG_JYA_IRONOBJ, -1482, 0, 1652, 0, -8374, 0, 0x0000 }, //0x0000036C 
	{ ACTOR_BG_JYA_IRONOBJ, -1652, 0, 1482, 0, -8010, 0, 0x0000 }, //0x0000037C 
	{ ACTOR_BG_JYA_IRONOBJ, -1340, 0, 1510, 0, -8010, 0, 0x0000 }, //0x0000038C 
	{ ACTOR_BG_JYA_IRONOBJ, -1510, 0, 1340, 0, -8374, 0, 0x0000 }, //0x0000039C 
	{ ACTOR_BG_JYA_IRONOBJ, -1370, 0, 1031, 0, -8010, 0, 0x0000 }, //0x000003AC 
	{ ACTOR_BG_JYA_IRONOBJ, -1031, 0, 1370, 0, -8374, 0, 0x0000 }, //0x000003BC 
	{ ACTOR_BG_JYA_IRONOBJ, -1206, -5, 1206, 0, -24576, 0, 0x0001 }, //0x000003CC 
	{ ACTOR_EN_IK, -1235, 0, 1268, 0, 0, 0, 0x0000 }, //0x000003DC 
	{ ACTOR_DEMO_IK, -1235, 0, 1268, 0, 0, 0, 0x0004 }, //0x000003EC 
	{ ACTOR_DEMO_IK, -1235, 0, 1268, 0, 0, 0, 0x0003 }, //0x000003FC 
	{ ACTOR_DEMO_IK, -1235, 0, 1268, 0, 0, 0, 0x0006 }, //0x0000040C 
	{ ACTOR_DEMO_IK, -1235, 0, 1268, 0, 0, 0, 0x0005 }, //0x0000041C 
	{ ACTOR_DEMO_IK, -1240, 0, 1248, 0, -8192, 0, 0x0001 }, //0x0000042C 
	{ ACTOR_DEMO_IK, -1213, 0, 1267, 0, -8192, 0, 0x0002 }, //0x0000043C 
	{ ACTOR_EN_NB, -1212, 16, 1210, 0, -8192, 0, 0x0004 }, //0x0000044C 
	{ ACTOR_DEMO_IK, -1256, 0, 1210, 0, -8192, 0, 0x0000 }, //0x0000045C 
	{ ACTOR_EN_TR, -1303, 0, 1136, 0, -8192, 0, 0x0000 }, //0x0000046C 
	{ ACTOR_EN_TR, -1125, 0, 1301, 0, -8192, 0, 0x0001 }, //0x0000047C 
};

static u32 pad48C = 0;

SCmdEchoSettings _jyasinboss_room_1_set0490_cmd00 = { 0x16, 0, { 0 }, 0x07 }; // 0x0490
SCmdRoomBehavior _jyasinboss_room_1_set0490_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0498
SCmdSkyboxDisables _jyasinboss_room_1_set0490_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x04A0
SCmdTimeSettings _jyasinboss_room_1_set0490_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x04A8
SCmdMesh _jyasinboss_room_1_set0490_cmd04 = { 0x0A, 0, (u32)&_jyasinboss_room_1_meshHeader_00000190 }; // 0x04B0
SCmdObjectList _jyasinboss_room_1_set0490_cmd05 = { 0x0B, 0x06, (u32)_jyasinboss_room_1_objectList_000004D0 }; // 0x04B8
SCmdActorList _jyasinboss_room_1_set0490_cmd06 = { 0x01, 0x0A, (u32)_jyasinboss_room_1_actorList_000004DC }; // 0x04C0
SCmdEndMarker _jyasinboss_room_1_set0490_cmd07 = { 0x14, 0x00, 0x00 }; // 0x04C8
s16 _jyasinboss_room_1_objectList_000004D0[] = 
{
	OBJECT_JYA_DOOR,
	OBJECT_BDOOR,
	OBJECT_TR,
	OBJECT_EFC_FLASH,
	OBJECT_NB,
	OBJECT_JYA_IRON,
};

ActorEntry _jyasinboss_room_1_actorList_000004DC[10] = 
{
	{ ACTOR_EN_NB, -1212, 16, 1210, 0, -8192, 0, 0x0004 }, //0x000004DC 
	{ ACTOR_EN_TR, -1303, 0, 1136, 0, -8192, 0, 0x0000 }, //0x000004EC 
	{ ACTOR_EN_TR, -1125, 0, 1301, 0, -8192, 0, 0x0001 }, //0x000004FC 
	{ ACTOR_BG_JYA_IRONOBJ, -1482, 0, 1652, 0, -8374, 0, 0x0000 }, //0x0000050C 
	{ ACTOR_BG_JYA_IRONOBJ, -1652, 0, 1482, 0, -8010, 0, 0x0000 }, //0x0000051C 
	{ ACTOR_BG_JYA_IRONOBJ, -1340, 0, 1510, 0, -8010, 0, 0x0000 }, //0x0000052C 
	{ ACTOR_BG_JYA_IRONOBJ, -1510, 0, 1340, 0, -8374, 0, 0x0000 }, //0x0000053C 
	{ ACTOR_BG_JYA_IRONOBJ, -1370, 0, 1031, 0, -8010, 0, 0x0000 }, //0x0000054C 
	{ ACTOR_BG_JYA_IRONOBJ, -1031, 0, 1370, 0, -8374, 0, 0x0000 }, //0x0000055C 
	{ ACTOR_BG_JYA_IRONOBJ, -1210, 0, 1210, 0, 8192, 0, 0x0001 }, //0x0000056C 
};

static u32 pad57C = 0;

Vtx_t _jyasinboss_room_1_vertices_00000580[10] = 
{
	 { -831, 30, 1397, 0, 12288, 0, 52, 49, 38, 255 }, // 0x00000580
	 { -831, 0, 1397, 0, 12288, 512, 52, 49, 38, 255 }, // 0x00000590
	 { -959, 0, 1524, 0, 8875, 512, 100, 89, 67, 255 }, // 0x000005A0
	 { -959, 30, 1524, 0, 8875, 0, 100, 89, 67, 255 }, // 0x000005B0
	 { -1086, 0, 1652, 0, 5461, 512, 52, 49, 38, 255 }, // 0x000005C0
	 { -1086, 30, 1652, 0, 5461, 0, 52, 49, 38, 255 }, // 0x000005D0
	 { -1171, 0, 1567, 0, 5461, 512, 81, 72, 55, 255 }, // 0x000005E0
	 { -1482, 0, 1878, 0, -1365, 512, 52, 49, 38, 255 }, // 0x000005F0
	 { -1482, 30, 1878, 0, -1365, 0, 69, 62, 48, 255 }, // 0x00000600
	 { -1171, 30, 1567, 0, 5461, 0, 81, 72, 55, 255 }, // 0x00000610
};

Vtx_t _jyasinboss_room_1_vertices_00000620[21] = 
{
	 { -831, 240, 1397, 0, 13653, -1024, 35, 31, 25, 255 }, // 0x00000620
	 { -959, 30, 1524, 0, 10240, 768, 100, 89, 67, 255 }, // 0x00000630
	 { -1086, 240, 1652, 0, 6827, -1024, 35, 31, 25, 255 }, // 0x00000640
	 { -831, 30, 1397, 0, 13653, 768, 52, 49, 38, 255 }, // 0x00000650
	 { -1086, 30, 1652, 0, 6827, 768, 52, 49, 38, 255 }, // 0x00000660
	 { -1171, 30, 1567, 0, 6827, 768, 81, 72, 55, 255 }, // 0x00000670
	 { -1482, 30, 1878, 0, 0, 768, 69, 62, 48, 255 }, // 0x00000680
	 { -1482, 240, 1878, 0, 0, -1024, 81, 72, 55, 255 }, // 0x00000690
	 { -1171, 240, 1567, 0, 6827, -1024, 100, 89, 67, 255 }, // 0x000006A0
	 { -1652, 160, 1736, 0, 2048, -341, 69, 62, 48, 255 }, // 0x000006B0
	 { -1637, 160, 1722, 0, 2389, -341, 69, 62, 48, 255 }, // 0x000006C0
	 { -1637, 0, 1722, 0, 2389, 1024, 52, 49, 38, 255 }, // 0x000006D0
	 { -1652, 0, 1736, 0, 2048, 1024, 52, 49, 38, 255 }, // 0x000006E0
	 { -1736, 160, 1652, 0, 2458, 0, 69, 62, 48, 255 }, // 0x000006F0
	 { -1722, 160, 1637, 0, 2458, 205, 69, 62, 48, 255 }, // 0x00000700
	 { -1637, 160, 1722, 0, 0, 205, 69, 62, 48, 255 }, // 0x00000710
	 { -1652, 160, 1736, 0, 0, 0, 69, 62, 48, 255 }, // 0x00000720
	 { -1736, 0, 1652, 0, 341, 1024, 52, 49, 38, 255 }, // 0x00000730
	 { -1722, 0, 1637, 0, 0, 1024, 52, 49, 38, 255 }, // 0x00000740
	 { -1722, 160, 1637, 0, 0, -341, 69, 62, 48, 255 }, // 0x00000750
	 { -1736, 160, 1652, 0, 341, -341, 69, 62, 48, 255 }, // 0x00000760
};

Vtx_t _jyasinboss_room_1_vertices_00000770[8] = 
{
	 { -858, 0, 1323, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000770
	 { -753, 0, 1612, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000780
	 { -858, 240, 1323, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000790
	 { -753, 240, 1612, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007A0
	 { -1739, 0, 1644, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007B0
	 { -1634, 0, 1933, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007C0
	 { -1739, 240, 1644, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007D0
	 { -1634, 240, 1933, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007E0
};

Gfx _jyasinboss_room_1_dlist_000007F0[] =
{
	gsDPPipeSync(), // 0x000007F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000007F8
	gsSPVertex(_jyasinboss_room_1_vertices_00000770, 8, 0), // 0x00000800
	gsSPCullDisplayList(0, 7), // 0x00000808
	gsDPPipeSync(), // 0x00000810
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000818
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000820
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000828
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00006638), // 0x00000830
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 4, 0, 1, 6, 0), // 0x00000838
	gsDPLoadSync(), // 0x00000840
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00000848
	gsDPPipeSync(), // 0x00000850
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 4, 0, 1, 6, 0), // 0x00000858
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00000860
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000868
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000870
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000878
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000880
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000888
	gsSPVertex(_jyasinboss_room_1_vertices_00000580, 10, 0), // 0x00000890
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000898
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x000008A0
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x000008A8
	gsDPPipeSync(), // 0x000008B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_scene_tex_00007CF0), // 0x000008B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000008C0
	gsDPLoadSync(), // 0x000008C8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000008D0
	gsDPPipeSync(), // 0x000008D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000008E0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000008E8
	gsSPVertex(_jyasinboss_room_1_vertices_00000620, 21, 0), // 0x000008F0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000008F8
	gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0), // 0x00000900
	gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0), // 0x00000908
	gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0), // 0x00000910
	gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0), // 0x00000918
	gsSP1Triangle(17, 19, 20, 0), // 0x00000920
	gsSPEndDisplayList(), // 0x00000928
};

Vtx_t _jyasinboss_room_1_vertices_00000930[6] = 
{
	 { -1482, 0, 1878, 0, -6080, 2560, 52, 49, 38, 255 }, // 0x00000930
	 { -1427, 0, 1540, 0, -2528, 0, 169, 154, 126, 255 }, // 0x00000940
	 { -1623, 0, 1736, 0, -6080, 0, 52, 49, 38, 255 }, // 0x00000950
	 { -831, 0, 1397, 0, 4160, 4096, 52, 49, 38, 255 }, // 0x00000960
	 { -1029, 0, 1199, 0, 4160, 512, 52, 49, 38, 255 }, // 0x00000970
	 { -1202, 0, 1372, 0, 1024, 512, 169, 154, 126, 255 }, // 0x00000980
};

Vtx_t _jyasinboss_room_1_vertices_00000990[6] = 
{
	 { -1637, 0, 1751, 0, 0, 8064, 52, 49, 38, 255 }, // 0x00000990
	 { -1427, 0, 1540, 0, 0, 960, 169, 154, 126, 255 }, // 0x000009A0
	 { -1540, 0, 1427, 0, 4096, 960, 169, 154, 126, 255 }, // 0x000009B0
	 { -1750, 0, 1637, 0, 4096, 8064, 52, 49, 38, 255 }, // 0x000009C0
	 { -1231, 0, 1344, 0, 0, -6144, 169, 154, 126, 255 }, // 0x000009D0
	 { -1344, 0, 1231, 0, 4096, -6144, 169, 154, 126, 255 }, // 0x000009E0
};

Vtx_t _jyasinboss_room_1_vertices_000009F0[9] = 
{
	 { -1202, 0, 1372, 0, 0, -2048, 169, 154, 126, 255 }, // 0x000009F0
	 { -1202, 0, 1202, 0, 2048, 0, 169, 154, 126, 255 }, // 0x00000A00
	 { -1372, 0, 1202, 0, 0, 2048, 169, 154, 126, 255 }, // 0x00000A10
	 { -1202, 0, 1202, 0, 2048, 2133, 169, 154, 126, 255 }, // 0x00000A20
	 { -1185, 0, 1015, 0, 0, 0, 52, 49, 38, 255 }, // 0x00000A30
	 { -1372, 0, 1202, 0, 0, 4181, 169, 154, 126, 255 }, // 0x00000A40
	 { -1100, 0, 1100, 0, 2048, 0, 52, 49, 38, 255 }, // 0x00000A50
	 { -1202, 0, 1372, 0, 0, 4181, 169, 154, 126, 255 }, // 0x00000A60
	 { -1015, 0, 1185, 0, 0, 0, 52, 49, 38, 255 }, // 0x00000A70
};

Vtx_t _jyasinboss_room_1_vertices_00000A80[16] = 
{
	 { -1736, 0, 1623, 0, -6080, -2048, 52, 49, 38, 255 }, // 0x00000A80
	 { -1540, 0, 1427, 0, -2528, -2048, 169, 154, 126, 255 }, // 0x00000A90
	 { -1878, 0, 1482, 0, -6080, -4608, 52, 49, 38, 255 }, // 0x00000AA0
	 { -1372, 0, 1202, 0, 1024, -2560, 169, 154, 126, 255 }, // 0x00000AB0
	 { -1199, 0, 1029, 0, 4160, -2560, 52, 49, 38, 255 }, // 0x00000AC0
	 { -1397, 0, 831, 0, 4160, -6144, 35, 31, 25, 255 }, // 0x00000AD0
	 { -1567, 0, 1171, 0, -448, -4608, 81, 72, 55, 255 }, // 0x00000AE0
	 { -1652, 0, 1086, 0, -448, -6144, 52, 49, 38, 255 }, // 0x00000AF0
	 { -1171, 0, 1567, 0, -448, 2560, 81, 72, 55, 255 }, // 0x00000B00
	 { -1086, 0, 1652, 0, -448, 4096, 52, 49, 38, 255 }, // 0x00000B10
	 { -1202, 0, 1372, 0, 1024, 512, 169, 154, 126, 255 }, // 0x00000B20
	 { -831, 0, 1397, 0, 4160, 4096, 52, 49, 38, 255 }, // 0x00000B30
	 { -1427, 0, 1540, 0, -2528, 0, 169, 154, 126, 255 }, // 0x00000B40
	 { -1231, 0, 1344, 0, 1024, 0, 169, 154, 126, 255 }, // 0x00000B50
	 { -1482, 0, 1878, 0, -6080, 2560, 52, 49, 38, 255 }, // 0x00000B60
	 { -1344, 0, 1231, 0, 1024, -2048, 169, 154, 126, 255 }, // 0x00000B70
};

Vtx_t _jyasinboss_room_1_vertices_00000B80[8] = 
{
	 { -1421, 0, 811, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B80
	 { -786, 0, 1344, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B90
	 { -1421, 0, 811, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000BA0
	 { -786, 0, 1344, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000BB0
	 { -1973, 0, 1469, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000BC0
	 { -1338, 0, 2001, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000BD0
	 { -1973, 0, 1469, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000BE0
	 { -1338, 0, 2001, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000BF0
};

Gfx _jyasinboss_room_1_dlist_00000C00[] =
{
	gsDPPipeSync(), // 0x00000C00
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000C08
	gsSPVertex(_jyasinboss_room_1_vertices_00000B80, 8, 0), // 0x00000C10
	gsSPCullDisplayList(0, 7), // 0x00000C18
	gsDPPipeSync(), // 0x00000C20
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000C28
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000C30
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000C38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00007638), // 0x00000C40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000C48
	gsDPLoadSync(), // 0x00000C50
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000C58
	gsDPPipeSync(), // 0x00000C60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000C68
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000C70
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000C78
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000C80
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000C88
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000C90
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000C98
	gsSPVertex(_jyasinboss_room_1_vertices_00000930, 6, 0), // 0x00000CA0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000CA8
	gsDPPipeSync(), // 0x00000CB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_scene_tex_00006CF0), // 0x00000CB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x00000CC0
	gsDPLoadSync(), // 0x00000CC8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00000CD0
	gsDPPipeSync(), // 0x00000CD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x00000CE0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000CE8
	gsSPVertex(_jyasinboss_room_1_vertices_00000990, 6, 0), // 0x00000CF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000CF8
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00000D00
	gsDPPipeSync(), // 0x00000D08
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00002E38), // 0x00000D10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x00000D18
	gsDPLoadSync(), // 0x00000D20
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00000D28
	gsDPPipeSync(), // 0x00000D30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x00000D38
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000D40
	gsSPVertex(_jyasinboss_room_1_vertices_000009F0, 9, 0), // 0x00000D48
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000D50
	gsSP2Triangles(3, 6, 4, 0, 7, 8, 3, 0), // 0x00000D58
	gsSP1Triangle(8, 6, 3, 0), // 0x00000D60
	gsDPPipeSync(), // 0x00000D68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00007638), // 0x00000D70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000D78
	gsDPLoadSync(), // 0x00000D80
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000D88
	gsDPPipeSync(), // 0x00000D90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000D98
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000DA0
	gsSPVertex(_jyasinboss_room_1_vertices_00000A80, 16, 0), // 0x00000DA8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000DB0
	gsSP2Triangles(6, 3, 7, 0, 3, 5, 7, 0), // 0x00000DB8
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x00000DC0
	gsSP2Triangles(10, 12, 8, 0, 10, 13, 12, 0), // 0x00000DC8
	gsSP2Triangles(12, 14, 8, 0, 15, 3, 1, 0), // 0x00000DD0
	gsSP2Triangles(3, 6, 1, 0, 6, 2, 1, 0), // 0x00000DD8
	gsSPEndDisplayList(), // 0x00000DE0
};

Vtx_t _jyasinboss_room_1_vertices_00000DE8[12] = 
{
	 { -1157, 0, 1072, 0, 273, 3141, 52, 49, 38, 255 }, // 0x00000DE8
	 { -1142, 0, 1058, 0, 0, 3141, 52, 49, 38, 255 }, // 0x00000DF8
	 { -1142, 170, 1058, 0, 0, -1229, 102, 82, 24, 255 }, // 0x00000E08
	 { -1157, 170, 1072, 0, 273, -1229, 102, 82, 24, 255 }, // 0x00000E18
	 { -1157, 170, 1072, 0, 546, -1229, 102, 82, 24, 255 }, // 0x00000E28
	 { -1142, 170, 1058, 0, 819, -1229, 102, 82, 24, 255 }, // 0x00000E38
	 { -1058, 170, 1142, 0, 819, 2048, 102, 82, 24, 255 }, // 0x00000E48
	 { -1072, 170, 1157, 0, 546, 2048, 102, 82, 24, 255 }, // 0x00000E58
	 { -1072, 170, 1157, 0, 546, -683, 102, 82, 24, 255 }, // 0x00000E68
	 { -1058, 170, 1142, 0, 819, -683, 102, 82, 24, 255 }, // 0x00000E78
	 { -1058, 0, 1142, 0, 819, 3686, 52, 49, 38, 255 }, // 0x00000E88
	 { -1072, 0, 1157, 0, 546, 3686, 52, 49, 38, 255 }, // 0x00000E98
};

Vtx_t _jyasinboss_room_1_vertices_00000EA8[8] = 
{
	 { -1072, 160, 1157, 0, 7851, -85, 147, 131, 97, 255 }, // 0x00000EA8
	 { -831, 240, 1397, 0, 13653, -768, 35, 31, 25, 255 }, // 0x00000EB8
	 { -864, 381, 1365, 0, 12871, -1972, 35, 31, 25, 255 }, // 0x00000EC8
	 { -977, 468, 1251, 0, 10140, -2716, 35, 31, 25, 255 }, // 0x00000ED8
	 { -1280, 468, 949, 0, 2830, -2716, 35, 31, 25, 255 }, // 0x00000EE8
	 { -1157, 160, 1072, 0, 5803, -85, 147, 131, 97, 255 }, // 0x00000EF8
	 { -1365, 381, 864, 0, 782, -1972, 35, 31, 25, 255 }, // 0x00000F08
	 { -1397, 240, 831, 0, 0, -768, 35, 31, 25, 255 }, // 0x00000F18
};

Vtx_t _jyasinboss_room_1_vertices_00000F28[10] = 
{
	 { -1878, 30, 1482, 0, -1365, 0, 69, 62, 48, 255 }, // 0x00000F28
	 { -1878, 0, 1482, 0, -1365, 512, 52, 49, 38, 255 }, // 0x00000F38
	 { -1567, 0, 1171, 0, 5461, 512, 81, 72, 55, 255 }, // 0x00000F48
	 { -1567, 30, 1171, 0, 5461, 0, 81, 72, 55, 255 }, // 0x00000F58
	 { -1652, 0, 1086, 0, 5461, 512, 52, 49, 38, 255 }, // 0x00000F68
	 { -1524, 0, 959, 0, 8875, 512, 100, 89, 67, 255 }, // 0x00000F78
	 { -1524, 30, 959, 0, 8875, 0, 100, 89, 67, 255 }, // 0x00000F88
	 { -1652, 30, 1086, 0, 5461, 0, 52, 49, 38, 255 }, // 0x00000F98
	 { -1397, 0, 831, 0, 12288, 512, 35, 31, 25, 255 }, // 0x00000FA8
	 { -1397, 30, 831, 0, 12288, 0, 35, 31, 25, 255 }, // 0x00000FB8
};

Vtx_t _jyasinboss_room_1_vertices_00000FC8[59] = 
{
	 { -1397, 30, 831, 0, 0, 1024, 35, 31, 25, 255 }, // 0x00000FC8
	 { -1263, 30, 966, 0, 3243, 1024, 100, 89, 67, 255 }, // 0x00000FD8
	 { -1397, 240, 831, 0, 0, -768, 35, 31, 25, 255 }, // 0x00000FE8
	 { -1157, 160, 1072, 0, 5803, -85, 147, 131, 97, 255 }, // 0x00000FF8
	 { -1157, 30, 1072, 0, 5803, 1024, 52, 49, 38, 255 }, // 0x00001008
	 { -1072, 160, 1157, 0, 7851, -85, 147, 131, 97, 255 }, // 0x00001018
	 { -951, 30, 1277, 0, 10752, 1024, 115, 102, 78, 255 }, // 0x00001028
	 { -831, 240, 1397, 0, 13653, -768, 35, 31, 25, 255 }, // 0x00001038
	 { -1072, 30, 1157, 0, 7851, 1024, 52, 49, 38, 255 }, // 0x00001048
	 { -831, 30, 1397, 0, 13653, 1024, 81, 72, 55, 255 }, // 0x00001058
	 { -831, 240, 1397, 0, 20480, 1024, 35, 31, 25, 255 }, // 0x00001068
	 { -1086, 240, 1652, 0, 12288, 1024, 35, 31, 25, 255 }, // 0x00001078
	 { -1118, 381, 1619, 0, 12288, -242, 35, 31, 25, 255 }, // 0x00001088
	 { -864, 381, 1365, 0, 20480, -242, 35, 31, 25, 255 }, // 0x00001098
	 { -1171, 240, 1567, 0, 12288, 1024, 100, 89, 67, 255 }, // 0x000010A8
	 { -1482, 240, 1878, 0, 4096, 1024, 81, 72, 55, 255 }, // 0x000010B8
	 { -1514, 381, 1845, 0, 4096, -242, 81, 72, 55, 255 }, // 0x000010C8
	 { -1203, 381, 1534, 0, 12288, -242, 52, 49, 38, 255 }, // 0x000010D8
	 { -864, 381, 1365, 0, 20480, 1024, 35, 31, 25, 255 }, // 0x000010E8
	 { -1118, 381, 1619, 0, 12288, 1024, 35, 31, 25, 255 }, // 0x000010F8
	 { -1203, 468, 1534, 0, 12288, -242, 35, 31, 25, 255 }, // 0x00001108
	 { -977, 468, 1251, 0, 20480, -242, 35, 31, 25, 255 }, // 0x00001118
	 { -1203, 381, 1534, 0, 12288, 1024, 52, 49, 38, 255 }, // 0x00001128
	 { -1514, 381, 1845, 0, 4096, 1024, 81, 72, 55, 255 }, // 0x00001138
	 { -1599, 468, 1761, 0, 4096, -242, 35, 31, 25, 255 }, // 0x00001148
	 { -1288, 468, 1449, 0, 12288, -242, 52, 49, 38, 255 }, // 0x00001158
	 { -977, 468, 1251, 0, 2048, -2290, 35, 31, 25, 255 }, // 0x00001168
	 { -1203, 468, 1534, 0, -4096, -2290, 35, 31, 25, 255 }, // 0x00001178
	 { -1534, 468, 1203, 0, -4096, 1024, 35, 31, 25, 255 }, // 0x00001188
	 { -1280, 468, 949, 0, 2048, 1024, 35, 31, 25, 255 }, // 0x00001198
	 { -1288, 468, 1449, 0, 12288, 1024, 52, 49, 38, 255 }, // 0x000011A8
	 { -1599, 468, 1761, 0, 4096, 1024, 35, 31, 25, 255 }, // 0x000011B8
	 { -1761, 468, 1599, 0, 4096, -242, 35, 31, 25, 255 }, // 0x000011C8
	 { -1449, 468, 1288, 0, 12288, -242, 52, 49, 38, 255 }, // 0x000011D8
	 { -1280, 468, 949, 0, 4096, -242, 35, 31, 25, 255 }, // 0x000011E8
	 { -1534, 468, 1203, 0, 12288, -242, 35, 31, 25, 255 }, // 0x000011F8
	 { -1619, 381, 1118, 0, 12288, 1024, 35, 31, 25, 255 }, // 0x00001208
	 { -1365, 381, 864, 0, 4096, 1024, 35, 31, 25, 255 }, // 0x00001218
	 { -1449, 468, 1288, 0, 12288, -242, 52, 49, 38, 255 }, // 0x00001228
	 { -1761, 468, 1599, 0, 20480, -242, 35, 31, 25, 255 }, // 0x00001238
	 { -1845, 381, 1514, 0, 20480, 1024, 81, 72, 55, 255 }, // 0x00001248
	 { -1534, 381, 1203, 0, 12288, 1024, 52, 49, 38, 255 }, // 0x00001258
	 { -1365, 381, 864, 0, 4096, -242, 35, 31, 25, 255 }, // 0x00001268
	 { -1619, 381, 1118, 0, 12288, -242, 35, 31, 25, 255 }, // 0x00001278
	 { -1652, 240, 1086, 0, 12288, 1024, 35, 31, 25, 255 }, // 0x00001288
	 { -1397, 240, 831, 0, 4096, 1024, 35, 31, 25, 255 }, // 0x00001298
	 { -1534, 381, 1203, 0, 12288, -242, 52, 49, 38, 255 }, // 0x000012A8
	 { -1845, 381, 1514, 0, 20480, -242, 81, 72, 55, 255 }, // 0x000012B8
	 { -1878, 240, 1482, 0, 20480, 1024, 81, 72, 55, 255 }, // 0x000012C8
	 { -1567, 240, 1171, 0, 12288, 1024, 100, 89, 67, 255 }, // 0x000012D8
	 { -1652, 30, 1086, 0, 6827, 768, 52, 49, 38, 255 }, // 0x000012E8
	 { -1524, 30, 959, 0, 10240, 768, 100, 89, 67, 255 }, // 0x000012F8
	 { -1652, 240, 1086, 0, 6827, -1024, 35, 31, 25, 255 }, // 0x00001308
	 { -1397, 240, 831, 0, 13653, -1024, 35, 31, 25, 255 }, // 0x00001318
	 { -1397, 30, 831, 0, 13653, 768, 35, 31, 25, 255 }, // 0x00001328
	 { -1878, 30, 1482, 0, 0, 768, 69, 62, 48, 255 }, // 0x00001338
	 { -1567, 30, 1171, 0, 6827, 768, 81, 72, 55, 255 }, // 0x00001348
	 { -1567, 240, 1171, 0, 6827, -1024, 100, 89, 67, 255 }, // 0x00001358
	 { -1878, 240, 1482, 0, 0, -1024, 81, 72, 55, 255 }, // 0x00001368
};

Vtx_t _jyasinboss_room_1_vertices_00001378[12] = 
{
	 { -1397, 0, 831, 0, -1024, 512, 35, 31, 25, 255 }, // 0x00001378
	 { -1263, 0, 966, 0, 512, 512, 100, 89, 67, 255 }, // 0x00001388
	 { -1263, 30, 966, 0, 512, 0, 100, 89, 67, 255 }, // 0x00001398
	 { -1397, 30, 831, 0, -1024, 0, 35, 31, 25, 255 }, // 0x000013A8
	 { -1157, 0, 1072, 0, 2048, 512, 52, 49, 38, 255 }, // 0x000013B8
	 { -1157, 30, 1072, 0, 2048, 0, 52, 49, 38, 255 }, // 0x000013C8
	 { -1072, 30, 1157, 0, -1024, 0, 52, 49, 38, 255 }, // 0x000013D8
	 { -1072, 0, 1157, 0, -1024, 512, 52, 49, 38, 255 }, // 0x000013E8
	 { -951, 0, 1277, 0, 512, 512, 115, 102, 78, 255 }, // 0x000013F8
	 { -951, 30, 1277, 0, 512, 0, 115, 102, 78, 255 }, // 0x00001408
	 { -831, 0, 1397, 0, 2048, 512, 81, 72, 55, 255 }, // 0x00001418
	 { -831, 30, 1397, 0, 2048, 0, 81, 72, 55, 255 }, // 0x00001428
};

Vtx_t _jyasinboss_room_1_vertices_00001438[8] = 
{
	 { -1421, 0, 811, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001438
	 { -786, 0, 1344, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001448
	 { -1421, 468, 811, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001458
	 { -786, 468, 1344, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001468
	 { -1971, 0, 1467, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001478
	 { -1337, 0, 1999, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001488
	 { -1971, 468, 1467, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001498
	 { -1337, 468, 1999, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014A8
};

Gfx _jyasinboss_room_1_dlist_000014B8[] =
{
	gsDPPipeSync(), // 0x000014B8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000014C0
	gsSPVertex(_jyasinboss_room_1_vertices_00001438, 8, 0), // 0x000014C8
	gsSPCullDisplayList(0, 7), // 0x000014D0
	gsDPPipeSync(), // 0x000014D8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000014E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000014E8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000014F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00006E38), // 0x000014F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001500
	gsDPLoadSync(), // 0x00001508
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001510
	gsDPPipeSync(), // 0x00001518
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001520
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001528
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00002E18), // 0x00001530
	gsDPTileSync(), // 0x00001538
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001540
	gsDPLoadSync(), // 0x00001548
	gsDPLoadTLUTCmd(7, 15), // 0x00001550
	gsDPPipeSync(), // 0x00001558
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001560
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001568
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001570
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001578
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001580
	gsSPVertex(_jyasinboss_room_1_vertices_00000DE8, 12, 0), // 0x00001588
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001590
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001598
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000015A0
	gsDPPipeSync(), // 0x000015A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000015B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_scene_tex_00007CF0), // 0x000015B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000015C0
	gsDPLoadSync(), // 0x000015C8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000015D0
	gsDPPipeSync(), // 0x000015D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000015E0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000015E8
	gsSPVertex(_jyasinboss_room_1_vertices_00000EA8, 8, 0), // 0x000015F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000015F8
	gsSP2Triangles(0, 3, 4, 0, 5, 4, 6, 0), // 0x00001600
	gsSP2Triangles(5, 6, 7, 0, 0, 4, 5, 0), // 0x00001608
	gsDPPipeSync(), // 0x00001610
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00006638), // 0x00001618
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 4, 0, 1, 6, 0), // 0x00001620
	gsDPLoadSync(), // 0x00001628
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00001630
	gsDPPipeSync(), // 0x00001638
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 4, 0, 1, 6, 0), // 0x00001640
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00001648
	gsSPVertex(_jyasinboss_room_1_vertices_00000F28, 10, 0), // 0x00001650
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001658
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001660
	gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0), // 0x00001668
	gsDPPipeSync(), // 0x00001670
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_scene_tex_00007CF0), // 0x00001678
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001680
	gsDPLoadSync(), // 0x00001688
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001690
	gsDPPipeSync(), // 0x00001698
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000016A0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000016A8
	gsSPVertex(_jyasinboss_room_1_vertices_00000FC8, 32, 0), // 0x000016B0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000016B8
	gsSP2Triangles(1, 4, 3, 0, 5, 6, 7, 0), // 0x000016C0
	gsSP2Triangles(5, 8, 6, 0, 6, 9, 7, 0), // 0x000016C8
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x000016D0
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x000016D8
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x000016E0
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x000016E8
	gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0), // 0x000016F0
	gsSPVertex(_jyasinboss_room_1_vertices_000011A8, 29, 0), // 0x000016F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001700
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001708
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001710
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001718
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00001720
	gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0), // 0x00001728
	gsSP2Triangles(21, 24, 23, 0, 25, 26, 27, 0), // 0x00001730
	gsSP1Triangle(25, 27, 28, 0), // 0x00001738
	gsDPPipeSync(), // 0x00001740
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00006638), // 0x00001748
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 4, 0, 1, 6, 0), // 0x00001750
	gsDPLoadSync(), // 0x00001758
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00001760
	gsDPPipeSync(), // 0x00001768
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 4, 0, 1, 6, 0), // 0x00001770
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00001778
	gsSPVertex(_jyasinboss_room_1_vertices_00001378, 12, 0), // 0x00001780
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001788
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00001790
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00001798
	gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0), // 0x000017A0
	gsSPEndDisplayList(), // 0x000017A8
};

Vtx_t _jyasinboss_room_1_vertices_000017B0[8] = 
{
	 { -982, 55, 1252, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x000017B0
	 { -959, 83, 1275, 0, 2048, -341, 203, 195, 178, 255 }, // 0x000017C0
	 { -1017, 179, 1217, 0, 0, -341, 218, 211, 199, 255 }, // 0x000017D0
	 { -1041, 151, 1193, 0, 0, 1024, 218, 211, 199, 255 }, // 0x000017E0
	 { -1016, 83, 1223, 0, 2048, -341, 218, 211, 199, 255 }, // 0x000017F0
	 { -993, 55, 1247, 0, 2048, 1024, 213, 206, 192, 255 }, // 0x00001800
	 { -934, 151, 1305, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00001810
	 { -958, 179, 1282, 0, 0, -341, 177, 164, 138, 255 }, // 0x00001820
};

Vtx_t _jyasinboss_room_1_vertices_00001830[8] = 
{
	 { -1033, 55, 1187, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001830
	 { -934, 55, 1305, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001840
	 { -1033, 179, 1187, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001850
	 { -934, 179, 1305, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001860
	 { -1041, 55, 1194, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001870
	 { -942, 55, 1312, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001880
	 { -1041, 179, 1194, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001890
	 { -942, 179, 1312, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018A0
};

Gfx _jyasinboss_room_1_dlist_000018B0[] =
{
	gsDPPipeSync(), // 0x000018B0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000018B8
	gsSPVertex(_jyasinboss_room_1_vertices_00001830, 8, 0), // 0x000018C0
	gsSPCullDisplayList(0, 7), // 0x000018C8
	gsDPPipeSync(), // 0x000018D0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000018D8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000018E0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000018E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00005638), // 0x000018F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x000018F8
	gsDPLoadSync(), // 0x00001900
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001908
	gsDPPipeSync(), // 0x00001910
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x00001918
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001920
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001928
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001930
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001938
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001940
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001948
	gsSPVertex(_jyasinboss_room_1_vertices_000017B0, 8, 0), // 0x00001950
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001958
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001960
	gsSPEndDisplayList(), // 0x00001968
};

Vtx_t _jyasinboss_room_1_vertices_00001970[8] = 
{
	 { -1193, 151, 1041, 0, 0, 1024, 218, 211, 199, 255 }, // 0x00001970
	 { -1217, 179, 1017, 0, 0, -341, 218, 211, 199, 255 }, // 0x00001980
	 { -1275, 83, 959, 0, 2048, -341, 203, 195, 178, 255 }, // 0x00001990
	 { -1252, 55, 982, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x000019A0
	 { -1282, 179, 958, 0, 0, -341, 177, 164, 138, 255 }, // 0x000019B0
	 { -1305, 151, 934, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000019C0
	 { -1247, 55, 993, 0, 2048, 1024, 213, 206, 192, 255 }, // 0x000019D0
	 { -1223, 83, 1016, 0, 2048, -341, 218, 211, 199, 255 }, // 0x000019E0
};

Vtx_t _jyasinboss_room_1_vertices_000019F0[8] = 
{
	 { -1305, 55, 934, 0, 0, 0, 0, 0, 0, 0 }, // 0x000019F0
	 { -1187, 55, 1033, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A00
	 { -1305, 179, 934, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A10
	 { -1187, 179, 1033, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A20
	 { -1312, 55, 942, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A30
	 { -1194, 55, 1041, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A40
	 { -1312, 179, 942, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A50
	 { -1194, 179, 1041, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A60
};

Gfx _jyasinboss_room_1_dlist_00001A70[] =
{
	gsDPPipeSync(), // 0x00001A70
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001A78
	gsSPVertex(_jyasinboss_room_1_vertices_000019F0, 8, 0), // 0x00001A80
	gsSPCullDisplayList(0, 7), // 0x00001A88
	gsDPPipeSync(), // 0x00001A90
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001A98
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001AA0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001AA8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00005638), // 0x00001AB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x00001AB8
	gsDPLoadSync(), // 0x00001AC0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001AC8
	gsDPPipeSync(), // 0x00001AD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x00001AD8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001AE0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001AE8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001AF0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001AF8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001B00
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001B08
	gsSPVertex(_jyasinboss_room_1_vertices_00001970, 8, 0), // 0x00001B10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B18
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001B20
	gsSPEndDisplayList(), // 0x00001B28
};

Vtx_t _jyasinboss_room_1_vertices_00001B30[32] = 
{
	 { -1050, 100, 1178, 0, 1307, -1210, 81, 72, 55, 255 }, // 0x00001B30
	 { -1071, 91, 1192, 0, 1779, -908, 115, 102, 78, 255 }, // 0x00001B40
	 { -1073, 0, 1190, 0, 1923, 1075, 115, 102, 78, 255 }, // 0x00001B50
	 { -1050, 0, 1178, 0, 1149, 1075, 52, 49, 38, 255 }, // 0x00001B60
	 { -1064, 187, 1164, 0, 1273, -3370, 69, 62, 48, 255 }, // 0x00001B70
	 { -1075, 187, 1174, 0, 1536, -3370, 100, 89, 67, 255 }, // 0x00001B80
	 { -1091, 158, 1173, 0, 1892, -2756, 169, 154, 126, 255 }, // 0x00001B90
	 { -1070, 162, 1159, 0, 1180, -2756, 52, 49, 38, 255 }, // 0x00001BA0
	 { -1065, 230, 1164, 0, 1303, -4248, 147, 131, 97, 255 }, // 0x00001BB0
	 { -1085, 198, 1164, 0, 1536, -3575, 177, 164, 138, 255 }, // 0x00001BC0
	 { -1095, 179, 1155, 0, 3072, -3171, 100, 89, 67, 255 }, // 0x00001BD0
	 { -1101, 178, 1163, 0, 2477, -3171, 177, 164, 138, 255 }, // 0x00001BE0
	 { -1084, 179, 1144, 0, 595, -3171, 81, 72, 55, 255 }, // 0x00001BF0
	 { -1075, 198, 1154, 0, 1064, -3575, 81, 72, 55, 255 }, // 0x00001C00
	 { -1098, 148, 1165, 0, 2618, -2341, 100, 89, 67, 255 }, // 0x00001C10
	 { -1101, 160, 1162, 0, 2612, -2738, 115, 102, 78, 255 }, // 0x00001C20
	 { -1096, 159, 1153, 0, 3072, -2738, 100, 89, 67, 255 }, // 0x00001C30
	 { -1093, 145, 1157, 0, 3072, -2341, 100, 89, 67, 255 }, // 0x00001C40
	 { -1101, 178, 1163, 0, 2477, -3171, 177, 164, 138, 255 }, // 0x00001C50
	 { -1047, 115, 1181, 0, 1347, -1535, 81, 72, 55, 255 }, // 0x00001C60
	 { -1062, 118, 1189, 0, 1536, -1586, 169, 154, 126, 255 }, // 0x00001C70
	 { -1043, 140, 1185, 0, 1380, -2090, 81, 72, 55, 255 }, // 0x00001C80
	 { -1062, 118, 1189, 0, 1536, -1586, 169, 154, 126, 255 }, // 0x00001C90
	 { -1051, 131, 1177, 0, 1330, -1922, 81, 72, 55, 255 }, // 0x00001CA0
	 { -1072, 119, 1180, 0, 1799, -1513, 69, 62, 48, 255 }, // 0x00001CB0
	 { -1060, 130, 1168, 0, 1255, -1983, 69, 62, 48, 255 }, // 0x00001CC0
	 { -1071, 91, 1192, 0, 1779, -908, 169, 154, 126, 255 }, // 0x00001CD0
	 { -1072, 115, 1190, 0, 1789, -1210, 169, 154, 126, 255 }, // 0x00001CE0
	 { -1084, 103, 1176, 0, 2053, -1412, 169, 154, 126, 255 }, // 0x00001CF0
	 { -1080, 108, 1169, 0, 1926, -1462, 69, 62, 48, 255 }, // 0x00001D00
	 { -1072, 100, 1157, 0, 1989, -1437, 35, 31, 25, 255 }, // 0x00001D10
	 { -1062, 118, 1189, 0, 1668, -1549, 169, 154, 126, 255 }, // 0x00001D20
};

Vtx_t _jyasinboss_room_1_vertices_00001D30[11] = 
{
	 { -1072, 119, 1180, 0, 1799, -1513, 100, 89, 67, 255 }, // 0x00001D30
	 { -1091, 158, 1173, 0, 1892, -2756, 169, 154, 126, 255 }, // 0x00001D40
	 { -1098, 148, 1165, 0, 2618, -2341, 100, 89, 67, 255 }, // 0x00001D50
	 { -1080, 108, 1169, 0, 2307, -1312, 69, 62, 48, 255 }, // 0x00001D60
	 { -1086, 0, 1183, 0, 2685, 973, 115, 102, 78, 255 }, // 0x00001D70
	 { -1071, 91, 1192, 0, 1779, -908, 169, 154, 126, 255 }, // 0x00001D80
	 { -1084, 103, 1176, 0, 2307, -1312, 169, 154, 126, 255 }, // 0x00001D90
	 { -1073, 0, 1190, 0, 1923, 1075, 115, 102, 78, 255 }, // 0x00001DA0
	 { -1072, 100, 1157, 0, 3837, -1312, 35, 31, 25, 255 }, // 0x00001DB0
	 { -1072, 0, 1157, 0, 3459, 973, 52, 49, 38, 255 }, // 0x00001DC0
	 { -1084, 142, 1144, 0, 3526, -2341, 81, 72, 55, 255 }, // 0x00001DD0
};

Vtx_t _jyasinboss_room_1_vertices_00001DE0[32] = 
{
	 { -1178, 0, 1050, 0, 1149, 1075, 52, 49, 38, 255 }, // 0x00001DE0
	 { -1190, 0, 1073, 0, 1923, 1075, 115, 102, 78, 255 }, // 0x00001DF0
	 { -1192, 91, 1071, 0, 1779, -908, 115, 102, 78, 255 }, // 0x00001E00
	 { -1178, 100, 1050, 0, 1307, -1210, 81, 72, 55, 255 }, // 0x00001E10
	 { -1159, 162, 1070, 0, 1180, -2756, 52, 49, 38, 255 }, // 0x00001E20
	 { -1173, 158, 1091, 0, 1892, -2756, 169, 154, 126, 255 }, // 0x00001E30
	 { -1174, 187, 1075, 0, 1536, -3370, 100, 89, 67, 255 }, // 0x00001E40
	 { -1164, 187, 1064, 0, 1273, -3370, 69, 62, 48, 255 }, // 0x00001E50
	 { -1164, 230, 1065, 0, 1303, -4248, 147, 131, 97, 255 }, // 0x00001E60
	 { -1163, 178, 1101, 0, 2477, -3171, 177, 164, 138, 255 }, // 0x00001E70
	 { -1155, 179, 1095, 0, 3072, -3171, 100, 89, 67, 255 }, // 0x00001E80
	 { -1164, 198, 1085, 0, 1536, -3575, 177, 164, 138, 255 }, // 0x00001E90
	 { -1144, 179, 1084, 0, 595, -3171, 81, 72, 55, 255 }, // 0x00001EA0
	 { -1154, 198, 1075, 0, 1064, -3575, 81, 72, 55, 255 }, // 0x00001EB0
	 { -1157, 145, 1093, 0, 3072, -2341, 100, 89, 67, 255 }, // 0x00001EC0
	 { -1153, 159, 1096, 0, 3072, -2738, 100, 89, 67, 255 }, // 0x00001ED0
	 { -1162, 160, 1101, 0, 2612, -2738, 115, 102, 78, 255 }, // 0x00001EE0
	 { -1165, 148, 1098, 0, 2618, -2341, 100, 89, 67, 255 }, // 0x00001EF0
	 { -1163, 178, 1101, 0, 2477, -3171, 177, 164, 138, 255 }, // 0x00001F00
	 { -1181, 115, 1047, 0, 1347, -1535, 81, 72, 55, 255 }, // 0x00001F10
	 { -1189, 118, 1062, 0, 1536, -1586, 169, 154, 126, 255 }, // 0x00001F20
	 { -1185, 140, 1043, 0, 1380, -2090, 81, 72, 55, 255 }, // 0x00001F30
	 { -1180, 119, 1072, 0, 1799, -1513, 69, 62, 48, 255 }, // 0x00001F40
	 { -1177, 131, 1051, 0, 1330, -1922, 81, 72, 55, 255 }, // 0x00001F50
	 { -1189, 118, 1062, 0, 1536, -1586, 169, 154, 126, 255 }, // 0x00001F60
	 { -1168, 130, 1060, 0, 1255, -1983, 69, 62, 48, 255 }, // 0x00001F70
	 { -1176, 103, 1084, 0, 2053, -1412, 169, 154, 126, 255 }, // 0x00001F80
	 { -1190, 115, 1072, 0, 1789, -1210, 169, 154, 126, 255 }, // 0x00001F90
	 { -1192, 91, 1071, 0, 1779, -908, 169, 154, 126, 255 }, // 0x00001FA0
	 { -1169, 108, 1080, 0, 1926, -1462, 69, 62, 48, 255 }, // 0x00001FB0
	 { -1157, 100, 1072, 0, 1989, -1437, 35, 31, 25, 255 }, // 0x00001FC0
	 { -1189, 118, 1062, 0, 1668, -1549, 169, 154, 126, 255 }, // 0x00001FD0
};

Vtx_t _jyasinboss_room_1_vertices_00001FE0[11] = 
{
	 { -1169, 108, 1080, 0, 2307, -1312, 69, 62, 48, 255 }, // 0x00001FE0
	 { -1165, 148, 1098, 0, 2618, -2341, 100, 89, 67, 255 }, // 0x00001FF0
	 { -1173, 158, 1091, 0, 1892, -2756, 169, 154, 126, 255 }, // 0x00002000
	 { -1180, 119, 1072, 0, 1799, -1513, 100, 89, 67, 255 }, // 0x00002010
	 { -1176, 103, 1084, 0, 2307, -1312, 169, 154, 126, 255 }, // 0x00002020
	 { -1192, 91, 1071, 0, 1779, -908, 169, 154, 126, 255 }, // 0x00002030
	 { -1183, 0, 1086, 0, 2685, 973, 115, 102, 78, 255 }, // 0x00002040
	 { -1190, 0, 1073, 0, 1923, 1075, 115, 102, 78, 255 }, // 0x00002050
	 { -1157, 0, 1072, 0, 3459, 973, 52, 49, 38, 255 }, // 0x00002060
	 { -1157, 100, 1072, 0, 3837, -1312, 35, 31, 25, 255 }, // 0x00002070
	 { -1144, 142, 1084, 0, 3526, -2341, 81, 72, 55, 255 }, // 0x00002080
};

Vtx_t _jyasinboss_room_1_vertices_00002090[10] = 
{
	 { -1072, 100, 1157, 0, -1229, 2662, 69, 62, 48, 255 }, // 0x00002090
	 { -1084, 142, 1144, 0, -1303, 1614, 100, 89, 67, 255 }, // 0x000020A0
	 { -1072, 170, 1157, 0, -1946, 1229, 52, 49, 38, 255 }, // 0x000020B0
	 { -1114, 160, 1114, 0, -614, 819, 52, 49, 38, 255 }, // 0x000020C0
	 { -1114, 170, 1114, 0, -717, 614, 52, 49, 38, 255 }, // 0x000020D0
	 { -1157, 170, 1072, 0, 512, 0, 52, 49, 38, 255 }, // 0x000020E0
	 { -1114, 170, 1114, 0, -717, 614, 52, 49, 38, 255 }, // 0x000020F0
	 { -1114, 160, 1114, 0, -614, 819, 52, 49, 38, 255 }, // 0x00002100
	 { -1144, 142, 1084, 0, 434, 745, 100, 89, 67, 255 }, // 0x00002110
	 { -1157, 100, 1072, 0, 1229, 1434, 69, 62, 48, 255 }, // 0x00002120
};

Vtx_t _jyasinboss_room_1_vertices_00002130[23] = 
{
	 { -1084, 179, 1144, 0, 113, 257, 81, 72, 55, 255 }, // 0x00002130
	 { -1096, 179, 1132, 0, 470, 247, 100, 89, 67, 255 }, // 0x00002140
	 { -1106, 179, 1143, 0, 470, 247, 169, 154, 126, 255 }, // 0x00002150
	 { -1095, 179, 1155, 0, 113, 257, 100, 89, 67, 255 }, // 0x00002160
	 { -1096, 159, 1153, 0, 167, 674, 100, 89, 67, 255 }, // 0x00002170
	 { -1125, 160, 1125, 0, 1024, 662, 189, 178, 157, 255 }, // 0x00002180
	 { -1093, 145, 1157, 0, 64, 992, 100, 89, 67, 255 }, // 0x00002190
	 { -1125, 160, 1125, 0, 1024, 662, 69, 62, 48, 255 }, // 0x000021A0
	 { -1114, 160, 1114, 0, 1024, 662, 52, 49, 38, 255 }, // 0x000021B0
	 { -1084, 142, 1144, 0, 119, 1041, 81, 72, 55, 255 }, // 0x000021C0
	 { -1143, 205, 1106, 0, 1578, -309, 189, 178, 157, 255 }, // 0x000021D0
	 { -1132, 205, 1096, 0, 1578, -309, 100, 89, 67, 255 }, // 0x000021E0
	 { -1132, 179, 1096, 0, 1578, 247, 100, 89, 67, 255 }, // 0x000021F0
	 { -1143, 179, 1106, 0, 1578, 247, 169, 154, 126, 255 }, // 0x00002200
	 { -1125, 220, 1125, 0, 1024, -633, 189, 178, 157, 255 }, // 0x00002210
	 { -1114, 220, 1114, 0, 1024, -633, 100, 89, 67, 255 }, // 0x00002220
	 { -1106, 205, 1143, 0, 470, -309, 189, 178, 157, 255 }, // 0x00002230
	 { -1096, 205, 1132, 0, 470, -309, 100, 89, 67, 255 }, // 0x00002240
	 { -1157, 145, 1093, 0, 1984, 992, 100, 89, 67, 255 }, // 0x00002250
	 { -1144, 142, 1084, 0, 1929, 1041, 81, 72, 55, 255 }, // 0x00002260
	 { -1155, 179, 1095, 0, 1935, 257, 100, 89, 67, 255 }, // 0x00002270
	 { -1153, 159, 1096, 0, 1881, 674, 100, 89, 67, 255 }, // 0x00002280
	 { -1144, 179, 1084, 0, 1935, 257, 81, 72, 55, 255 }, // 0x00002290
};

Vtx_t _jyasinboss_room_1_vertices_000022A0[8] = 
{
	 { -1185, 0, 1043, 0, 0, 0, 0, 0, 0, 0 }, // 0x000022A0
	 { -1032, 0, 1171, 0, 0, 0, 0, 0, 0, 0 }, // 0x000022B0
	 { -1185, 230, 1043, 0, 0, 0, 0, 0, 0, 0 }, // 0x000022C0
	 { -1032, 230, 1171, 0, 0, 0, 0, 0, 0, 0 }, // 0x000022D0
	 { -1213, 0, 1077, 0, 0, 0, 0, 0, 0, 0 }, // 0x000022E0
	 { -1060, 0, 1205, 0, 0, 0, 0, 0, 0, 0 }, // 0x000022F0
	 { -1213, 230, 1077, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002300
	 { -1060, 230, 1205, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002310
};

Gfx _jyasinboss_room_1_dlist_00002320[] =
{
	gsDPPipeSync(), // 0x00002320
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002328
	gsSPVertex(_jyasinboss_room_1_vertices_000022A0, 8, 0), // 0x00002330
	gsSPCullDisplayList(0, 7), // 0x00002338
	gsDPPipeSync(), // 0x00002340
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002348
	gsDPPipeSync(), // 0x00002350
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002358
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002360
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00004E38), // 0x00002368
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002370
	gsDPLoadSync(), // 0x00002378
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002380
	gsDPPipeSync(), // 0x00002388
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002390
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002398
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000023A0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000023A8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000023B0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000023B8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000023C0
	gsSPVertex(_jyasinboss_room_1_vertices_00001B30, 32, 0), // 0x000023C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000023D0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000023D8
	gsSP2Triangles(4, 8, 5, 0, 9, 10, 11, 0), // 0x000023E0
	gsSP2Triangles(9, 12, 10, 0, 9, 13, 12, 0), // 0x000023E8
	gsSP2Triangles(9, 8, 13, 0, 14, 15, 16, 0), // 0x000023F0
	gsSP2Triangles(14, 16, 17, 0, 15, 18, 10, 0), // 0x000023F8
	gsSP2Triangles(15, 10, 16, 0, 15, 6, 18, 0), // 0x00002400
	gsSP2Triangles(15, 14, 6, 0, 6, 5, 9, 0), // 0x00002408
	gsSP2Triangles(6, 9, 11, 0, 5, 8, 9, 0), // 0x00002410
	gsSP2Triangles(19, 1, 0, 0, 19, 20, 1, 0), // 0x00002418
	gsSP2Triangles(19, 21, 20, 0, 22, 23, 24, 0), // 0x00002420
	gsSP2Triangles(23, 25, 24, 0, 22, 21, 23, 0), // 0x00002428
	gsSP2Triangles(25, 7, 6, 0, 25, 6, 24, 0), // 0x00002430
	gsSP2Triangles(26, 27, 28, 0, 27, 24, 29, 0), // 0x00002438
	gsSP2Triangles(27, 29, 28, 0, 29, 30, 28, 0), // 0x00002440
	gsSP2Triangles(27, 31, 24, 0, 27, 26, 31, 0), // 0x00002448
	gsSPVertex(_jyasinboss_room_1_vertices_00001D30, 11, 0), // 0x00002450
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002458
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00002460
	gsSP2Triangles(6, 8, 9, 0, 6, 9, 4, 0), // 0x00002468
	gsSP2Triangles(2, 10, 8, 0, 2, 8, 3, 0), // 0x00002470
	gsSPVertex(_jyasinboss_room_1_vertices_00001DE0, 32, 0), // 0x00002478
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002480
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002488
	gsSP2Triangles(6, 8, 7, 0, 9, 10, 11, 0), // 0x00002490
	gsSP2Triangles(10, 12, 11, 0, 12, 13, 11, 0), // 0x00002498
	gsSP2Triangles(13, 8, 11, 0, 14, 15, 16, 0), // 0x000024A0
	gsSP2Triangles(14, 16, 17, 0, 15, 10, 18, 0), // 0x000024A8
	gsSP2Triangles(15, 18, 16, 0, 18, 5, 16, 0), // 0x000024B0
	gsSP2Triangles(5, 17, 16, 0, 9, 11, 6, 0), // 0x000024B8
	gsSP2Triangles(9, 6, 5, 0, 11, 8, 6, 0), // 0x000024C0
	gsSP2Triangles(3, 2, 19, 0, 2, 20, 19, 0), // 0x000024C8
	gsSP2Triangles(20, 21, 19, 0, 22, 23, 24, 0), // 0x000024D0
	gsSP2Triangles(22, 25, 23, 0, 23, 21, 24, 0), // 0x000024D8
	gsSP2Triangles(22, 5, 4, 0, 22, 4, 25, 0), // 0x000024E0
	gsSP2Triangles(26, 27, 28, 0, 26, 29, 22, 0), // 0x000024E8
	gsSP2Triangles(26, 22, 27, 0, 26, 30, 29, 0), // 0x000024F0
	gsSP2Triangles(22, 31, 27, 0, 31, 28, 27, 0), // 0x000024F8
	gsSPVertex(_jyasinboss_room_1_vertices_00001FE0, 11, 0), // 0x00002500
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002508
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00002510
	gsSP2Triangles(6, 8, 9, 0, 6, 9, 4, 0), // 0x00002518
	gsSP2Triangles(0, 9, 10, 0, 0, 10, 1, 0), // 0x00002520
	gsSPVertex(_jyasinboss_room_1_vertices_00002090, 10, 0), // 0x00002528
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002530
	gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0), // 0x00002538
	gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0), // 0x00002540
	gsDPPipeSync(), // 0x00002548
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00003E38), // 0x00002550
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x00002558
	gsDPLoadSync(), // 0x00002560
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002568
	gsDPPipeSync(), // 0x00002570
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x00002578
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002580
	gsSPVertex(_jyasinboss_room_1_vertices_00002130, 23, 0), // 0x00002588
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002590
	gsSP2Triangles(4, 5, 6, 0, 4, 3, 5, 0), // 0x00002598
	gsSP2Triangles(3, 2, 5, 0, 7, 8, 9, 0), // 0x000025A0
	gsSP2Triangles(7, 9, 6, 0, 10, 11, 12, 0), // 0x000025A8
	gsSP2Triangles(10, 12, 13, 0, 14, 15, 11, 0), // 0x000025B0
	gsSP2Triangles(14, 11, 10, 0, 16, 17, 15, 0), // 0x000025B8
	gsSP2Triangles(16, 15, 14, 0, 2, 1, 17, 0), // 0x000025C0
	gsSP2Triangles(2, 17, 16, 0, 5, 2, 16, 0), // 0x000025C8
	gsSP2Triangles(5, 16, 14, 0, 5, 14, 10, 0), // 0x000025D0
	gsSP2Triangles(5, 10, 13, 0, 18, 19, 8, 0), // 0x000025D8
	gsSP2Triangles(18, 8, 7, 0, 5, 13, 20, 0), // 0x000025E0
	gsSP2Triangles(5, 20, 21, 0, 18, 5, 21, 0), // 0x000025E8
	gsSP2Triangles(20, 13, 12, 0, 20, 12, 22, 0), // 0x000025F0
	gsSPEndDisplayList(), // 0x000025F8
};

Vtx_t _jyasinboss_room_1_vertices_00002600[10] = 
{
	 { -1878, 240, 1482, 0, 9557, -768, 81, 72, 55, 255 }, // 0x00002600
	 { -1845, 381, 1514, 0, 8775, -1972, 81, 72, 55, 255 }, // 0x00002610
	 { -1722, 160, 1637, 0, 5803, -85, 158, 142, 111, 255 }, // 0x00002620
	 { -1761, 468, 1599, 0, 6727, -2716, 35, 31, 25, 255 }, // 0x00002630
	 { -1637, 160, 1722, 0, 3755, -85, 158, 142, 111, 255 }, // 0x00002640
	 { -1599, 468, 1761, 0, 2830, -2716, 35, 31, 25, 255 }, // 0x00002650
	 { -1514, 381, 1845, 0, 782, -1972, 81, 72, 55, 255 }, // 0x00002660
	 { -1482, 240, 1878, 0, 0, -768, 81, 72, 55, 255 }, // 0x00002670
	 { -1482, 30, 1878, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00002680
	 { -1637, 30, 1722, 0, 3755, 1024, 115, 102, 78, 255 }, // 0x00002690
};

Vtx_t _jyasinboss_room_1_vertices_000026A0[7] = 
{
	 { -1482, 30, 1878, 0, 2048, 0, 81, 72, 55, 255 }, // 0x000026A0
	 { -1482, 0, 1878, 0, 2048, 512, 52, 49, 38, 255 }, // 0x000026B0
	 { -1637, 30, 1722, 0, -1024, 0, 115, 102, 78, 255 }, // 0x000026C0
	 { -1637, 0, 1722, 0, -1024, 512, 52, 49, 38, 255 }, // 0x000026D0
	 { -1878, 0, 1482, 0, -1024, 512, 52, 49, 38, 255 }, // 0x000026E0
	 { -1878, 30, 1482, 0, -1024, 0, 69, 62, 48, 255 }, // 0x000026F0
	 { -1722, 30, 1637, 0, 2048, 0, 115, 102, 78, 255 }, // 0x00002700
};

Vtx_t _jyasinboss_room_1_vertices_00002710[4] = 
{
	 { -1878, 240, 1482, 0, 9557, -768, 81, 72, 55, 255 }, // 0x00002710
	 { -1722, 160, 1637, 0, 5803, -85, 158, 142, 111, 255 }, // 0x00002720
	 { -1722, 30, 1637, 0, 5803, 1024, 115, 102, 78, 255 }, // 0x00002730
	 { -1878, 30, 1482, 0, 9557, 1024, 69, 62, 48, 255 }, // 0x00002740
};

Vtx_t _jyasinboss_room_1_vertices_00002750[3] = 
{
	 { -1722, 0, 1637, 0, 2048, 512, 52, 49, 38, 255 }, // 0x00002750
	 { -1878, 0, 1482, 0, -1024, 512, 52, 49, 38, 255 }, // 0x00002760
	 { -1722, 30, 1637, 0, 2048, 0, 115, 102, 78, 255 }, // 0x00002770
};

Vtx_t _jyasinboss_room_1_vertices_00002780[8] = 
{
	 { -1878, 0, 1482, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002780
	 { -1450, 0, 1840, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002790
	 { -1878, 468, 1482, 0, 0, 0, 0, 0, 0, 0 }, // 0x000027A0
	 { -1450, 468, 1840, 0, 0, 0, 0, 0, 0, 0 }, // 0x000027B0
	 { -1909, 0, 1519, 0, 0, 0, 0, 0, 0, 0 }, // 0x000027C0
	 { -1482, 0, 1878, 0, 0, 0, 0, 0, 0, 0 }, // 0x000027D0
	 { -1909, 468, 1519, 0, 0, 0, 0, 0, 0, 0 }, // 0x000027E0
	 { -1482, 468, 1878, 0, 0, 0, 0, 0, 0, 0 }, // 0x000027F0
};

Gfx _jyasinboss_room_1_dlist_00002800[] =
{
	gsDPPipeSync(), // 0x00002800
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002808
	gsSPVertex(_jyasinboss_room_1_vertices_00002780, 8, 0), // 0x00002810
	gsSPCullDisplayList(0, 7), // 0x00002818
	gsDPPipeSync(), // 0x00002820
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002828
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002830
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002838
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_scene_tex_00007CF0), // 0x00002840
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002848
	gsDPLoadSync(), // 0x00002850
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002858
	gsDPPipeSync(), // 0x00002860
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002868
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002870
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002878
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002880
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002888
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002890
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002898
	gsSPVertex(_jyasinboss_room_1_vertices_00002600, 10, 0), // 0x000028A0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000028A8
	gsSP2Triangles(2, 3, 4, 0, 3, 5, 4, 0), // 0x000028B0
	gsSP2Triangles(5, 6, 4, 0, 6, 7, 4, 0), // 0x000028B8
	gsSP2Triangles(7, 8, 9, 0, 7, 9, 4, 0), // 0x000028C0
	gsDPPipeSync(), // 0x000028C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00006638), // 0x000028D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 4, 0, 1, 6, 0), // 0x000028D8
	gsDPLoadSync(), // 0x000028E0
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x000028E8
	gsDPPipeSync(), // 0x000028F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 4, 0, 1, 6, 0), // 0x000028F8
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002900
	gsSPVertex(_jyasinboss_room_1_vertices_000026A0, 7, 0), // 0x00002908
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002910
	gsSP1Triangle(4, 5, 6, 0), // 0x00002918
	gsDPPipeSync(), // 0x00002920
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_scene_tex_00007CF0), // 0x00002928
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002930
	gsDPLoadSync(), // 0x00002938
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002940
	gsDPPipeSync(), // 0x00002948
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002950
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002958
	gsSPVertex(_jyasinboss_room_1_vertices_00002710, 4, 0), // 0x00002960
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002968
	gsDPPipeSync(), // 0x00002970
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00006638), // 0x00002978
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 4, 0, 1, 6, 0), // 0x00002980
	gsDPLoadSync(), // 0x00002988
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00002990
	gsDPPipeSync(), // 0x00002998
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 4, 0, 1, 6, 0), // 0x000029A0
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x000029A8
	gsSPVertex(_jyasinboss_room_1_vertices_00002750, 3, 0), // 0x000029B0
	gsSP1Triangle(0, 1, 2, 0), // 0x000029B8
	gsSPEndDisplayList(), // 0x000029C0
};

Vtx_t _jyasinboss_room_1_vertices_000029C8[4] = 
{
	 { -1567, 0, 1171, 0, 2048, 512, 81, 72, 55, 255 }, // 0x000029C8
	 { -1652, 0, 1086, 0, -1024, 512, 52, 49, 38, 255 }, // 0x000029D8
	 { -1567, 30, 1171, 0, 2048, 0, 81, 72, 55, 255 }, // 0x000029E8
	 { -1652, 30, 1086, 0, -1024, 0, 52, 49, 38, 255 }, // 0x000029F8
};

Vtx_t _jyasinboss_room_1_vertices_00002A08[10] = 
{
	 { -1652, 240, 1086, 0, 12288, -768, 35, 31, 25, 255 }, // 0x00002A08
	 { -1567, 240, 1171, 0, 10240, -768, 69, 62, 48, 255 }, // 0x00002A18
	 { -1567, 30, 1171, 0, 10240, 1024, 81, 72, 55, 255 }, // 0x00002A28
	 { -1652, 30, 1086, 0, 12288, 1024, 52, 49, 38, 255 }, // 0x00002A38
	 { -1619, 381, 1118, 0, 11506, -1972, 35, 31, 25, 255 }, // 0x00002A48
	 { -1118, 381, 1619, 0, 782, -1972, 35, 31, 25, 255 }, // 0x00002A58
	 { -1086, 240, 1652, 0, 0, -768, 35, 31, 25, 255 }, // 0x00002A68
	 { -1171, 240, 1567, 0, 2048, -768, 69, 62, 48, 255 }, // 0x00002A78
	 { -1086, 30, 1652, 0, 0, 1024, 52, 49, 38, 255 }, // 0x00002A88
	 { -1171, 30, 1567, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x00002A98
};

Vtx_t _jyasinboss_room_1_vertices_00002AA8[4] = 
{
	 { -1086, 30, 1652, 0, 2048, 0, 52, 49, 38, 255 }, // 0x00002AA8
	 { -1086, 0, 1652, 0, 2048, 512, 52, 49, 38, 255 }, // 0x00002AB8
	 { -1171, 30, 1567, 0, -1024, 0, 81, 72, 55, 255 }, // 0x00002AC8
	 { -1171, 0, 1567, 0, -1024, 512, 81, 72, 55, 255 }, // 0x00002AD8
};

Vtx_t _jyasinboss_room_1_vertices_00002AE8[10] = 
{
	 { -1203, 381, 1534, 0, 2830, -1972, 52, 49, 38, 255 }, // 0x00002AE8
	 { -1288, 468, 1449, 0, 4878, -2716, 52, 49, 38, 255 }, // 0x00002AF8
	 { -1203, 468, 1534, 0, 2830, -2716, 35, 31, 25, 255 }, // 0x00002B08
	 { -1449, 468, 1288, 0, 7410, -2716, 52, 49, 38, 255 }, // 0x00002B18
	 { -1534, 381, 1203, 0, 9458, -1972, 52, 49, 38, 255 }, // 0x00002B28
	 { -1534, 468, 1203, 0, 9458, -2716, 35, 31, 25, 255 }, // 0x00002B38
	 { -1171, 240, 1567, 0, 2048, -768, 69, 62, 48, 255 }, // 0x00002B48
	 { -1118, 381, 1619, 0, 782, -1972, 35, 31, 25, 255 }, // 0x00002B58
	 { -1567, 240, 1171, 0, 10240, -768, 69, 62, 48, 255 }, // 0x00002B68
	 { -1619, 381, 1118, 0, 11506, -1972, 35, 31, 25, 255 }, // 0x00002B78
};

Vtx_t _jyasinboss_room_1_vertices_00002B88[8] = 
{
	 { -1652, 0, 1086, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002B88
	 { -1041, 0, 1598, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002B98
	 { -1652, 468, 1086, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BA8
	 { -1041, 468, 1598, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BB8
	 { -1696, 0, 1139, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BC8
	 { -1086, 0, 1652, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BD8
	 { -1696, 468, 1139, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BE8
	 { -1086, 468, 1652, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002BF8
};

Gfx _jyasinboss_room_1_dlist_00002C08[] =
{
	gsDPPipeSync(), // 0x00002C08
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002C10
	gsSPVertex(_jyasinboss_room_1_vertices_00002B88, 8, 0), // 0x00002C18
	gsSPCullDisplayList(0, 7), // 0x00002C20
	gsDPPipeSync(), // 0x00002C28
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002C30
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002C38
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002C40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00006638), // 0x00002C48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 4, 0, 1, 6, 0), // 0x00002C50
	gsDPLoadSync(), // 0x00002C58
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00002C60
	gsDPPipeSync(), // 0x00002C68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 4, 0, 1, 6, 0), // 0x00002C70
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002C78
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002C80
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002C88
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002C90
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002C98
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002CA0
	gsSPVertex(_jyasinboss_room_1_vertices_000029C8, 4, 0), // 0x00002CA8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002CB0
	gsDPPipeSync(), // 0x00002CB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_scene_tex_00007CF0), // 0x00002CC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002CC8
	gsDPLoadSync(), // 0x00002CD0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002CD8
	gsDPPipeSync(), // 0x00002CE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002CE8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002CF0
	gsSPVertex(_jyasinboss_room_1_vertices_00002A08, 10, 0), // 0x00002CF8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002D00
	gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0), // 0x00002D08
	gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0), // 0x00002D10
	gsDPPipeSync(), // 0x00002D18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_room_1_tex_00006638), // 0x00002D20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 4, 0, 1, 6, 0), // 0x00002D28
	gsDPLoadSync(), // 0x00002D30
	gsDPLoadBlock(7, 0, 0, 1023, 128), // 0x00002D38
	gsDPPipeSync(), // 0x00002D40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 4, 0, 1, 6, 0), // 0x00002D48
	gsDPSetTileSize(0, 0, 0, 252, 60), // 0x00002D50
	gsSPVertex(_jyasinboss_room_1_vertices_00002AA8, 4, 0), // 0x00002D58
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002D60
	gsDPPipeSync(), // 0x00002D68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinboss_scene_tex_00007CF0), // 0x00002D70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002D78
	gsDPLoadSync(), // 0x00002D80
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002D88
	gsDPPipeSync(), // 0x00002D90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002D98
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002DA0
	gsSPVertex(_jyasinboss_room_1_vertices_00002AE8, 10, 0), // 0x00002DA8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00002DB0
	gsSP2Triangles(6, 0, 7, 0, 0, 2, 7, 0), // 0x00002DB8
	gsSP2Triangles(8, 9, 4, 0, 9, 5, 4, 0), // 0x00002DC0
	gsSPEndDisplayList(), // 0x00002DC8
};

Gfx _jyasinboss_room_1_dlist_00002DD0[] =
{
	gsSPDisplayList(_jyasinboss_room_1_dlist_000007F0), // 0x00002DD0
	gsSPDisplayList(_jyasinboss_room_1_dlist_00000C00), // 0x00002DD8
	gsSPDisplayList(_jyasinboss_room_1_dlist_000014B8), // 0x00002DE0
	gsSPDisplayList(_jyasinboss_room_1_dlist_000018B0), // 0x00002DE8
	gsSPDisplayList(_jyasinboss_room_1_dlist_00001A70), // 0x00002DF0
	gsSPDisplayList(_jyasinboss_room_1_dlist_00002320), // 0x00002DF8
	gsSPDisplayList(_jyasinboss_room_1_dlist_00002800), // 0x00002E00
	gsSPDisplayList(_jyasinboss_room_1_dlist_00002C08), // 0x00002E08
	gsSPEndDisplayList(), // 0x00002E10
};

u64 _jyasinboss_room_1_tex_00002E18[] = 
{
	0x6147698751055947, 0x388540C5284371C9, 0x79C982098A0B2043, 0x1843184108430000,  // 0x00002E18 
};

u64 _jyasinboss_room_1_tex_00002E38[] = 
{
	0x698581C5998788C5, 0x88C599879987DC93, 0xE495E495998770C3, 0x70C37943794370C3,  // 0x00002E38 
	0x88C588C5794388C5, 0x88C5794379437943, 0x794388C588C588C5, 0x9987794388C588C5,  // 0x00002E58 
	0x998788C599879987, 0x88C588C570C368C3, 0x88C5794399879987, 0x794388C579437943,  // 0x00002E78 
	0x794370C368C39987, 0x998788C5998788C5, 0xB20988C59987B209, 0x9987998799874881,  // 0x00002E98 
	0x81C581C599878105, 0x914791459145BB0D, 0xE495E495998780C5, 0x70C3794389457903,  // 0x00002EB8 
	0x78C578C581058105, 0x88C5794379438105, 0x79439147914788C5, 0x9145794391478105,  // 0x00002ED8 
	0x9145914799879145, 0x810588C5894568C3, 0x78C5794391459987, 0x99C778C581058105,  // 0x00002EF8 
	0x710370C378C59145, 0x91459147998788C5, 0x9947810589459185, 0x99879987894568C5,  // 0x00002F18 
	0x69859207A1C78105, 0x9987910589059987, 0xD411E49599879107, 0x78C3790391478985,  // 0x00002F38 
	0x78C3810591058145, 0x88C5794389859947, 0x8145998799879947, 0x9105810591478105,  // 0x00002F58 
	0x91059987914788C5, 0x8985910599877945, 0x78C3790381059147, 0xA187810588C580C5,  // 0x00002F78 
	0x60C370C388C588C5, 0x8105998799879105, 0x9105810581458105, 0x8945894579439105,  // 0x00002F98 
	0xAA89AA09B20988C5, 0x9987998791478905, 0xBACBE4959987A1C7, 0x80C570C38905AA09,  // 0x00002FB8 
	0x88C5998799879987, 0x89058143AA09AA09, 0x998799879987AA09, 0x998788C5890588C5,  // 0x00002FD8 
	0x9987998788C58905, 0xAA0991859987AA09, 0x88C578C379438905, 0x88C5998788C568C3,  // 0x00002FF8 
	0x68C3794388C58905, 0x7943918599879987, 0x99878905998788C5, 0x70C378C379439987,  // 0x00003018 
	0x81C59987B20988C5, 0x89058905914788C5, 0xA1C7CBD1A2499987, 0x810570C399879987,  // 0x00003038 
	0x88C5890589059987, 0x9987918589079987, 0x9987998789059987, 0x998788C5998788C5,  // 0x00003058 
	0x8905890578C39987, 0x9987794389059987, 0x78C388C589057943, 0x88C5998770C368C3,  // 0x00003078 
	0x88C5890578C37943, 0x8905794389058905, 0x89059987998788C5, 0x70C388C579439987,  // 0x00003098 
	0x6985A247A1C788C5, 0x88C578C3890580C5, 0x9987B2CDBB0D9185, 0x810578C391058105,  // 0x000030B8 
	0x88C5914788C58145, 0x9105998788C59105, 0x8145910581058105, 0x81059147910588C5,  // 0x000030D8 
	0x88C578C380C59105, 0x9105794381058145, 0x80C5914778C378C3, 0x8105910579038945,  // 0x000030F8 
	0x88C588C589458105, 0x810578C378C388C5, 0x88C59105910588C5, 0x790388C578C38145,  // 0x00003118 
	0x81C5AA8999879145, 0x88C5810578C378C3, 0x910599C9D413A1C7, 0x810580C580C58105,  // 0x00003138 
	0x9145A1C791457903, 0x8105998781059145, 0x894588C5894580C5, 0x7903998788C588C5,  // 0x00003158 
	0x88C5810591459145, 0x88C5918579437103, 0x9145894570C38105, 0x8945810579439147,  // 0x00003178 
	0x80C588C591479145, 0x894580C570C380C5, 0x88C588C588C58105, 0x810588C581057903,  // 0x00003198 
	0x81C5A24999879147, 0x8905914770C370C3, 0x88C59105E495C2CD, 0x9105914778C39147,  // 0x000031B8 
	0x9987A1C9914778C3, 0x7903918579439987, 0x9987890591478905, 0x8103914788C58905,  // 0x000031D8 
	0x8905998791479185, 0x8905A1C9814570C3, 0x894570C379039987, 0x9147810381458905,  // 0x000031F8 
	0x78C380C588C59147, 0x9147890570C370C3, 0x80C5890589058103, 0x88C588C5914770C3,  // 0x00003218 
	0x69859987998788C5, 0x794388C570C370C3, 0x88C59985E495E495, 0x9987AA0988C588C5,  // 0x00003238 
	0x998788C588C588C5, 0x68C3794379439987, 0x9987998788C59987, 0x88C588C588C59987,  // 0x00003258 
	0x7943998788C57943, 0x998788C599877943, 0x60C370C399879987, 0x88C588C599879987,  // 0x00003278 
	0x88C570C388C588C5, 0x88C5794370C370C3, 0x70C39987794388C5, 0x88C588C588C560C3,  // 0x00003298 
	0x6985AA0989C59187, 0x918578C389459987, 0x81058105D413E495, 0xC34FA1C7918788C5,  // 0x000032B8 
	0x890588C588C59187, 0x7903794389059987, 0x8905814391878905, 0x7903918779038905,  // 0x000032D8 
	0x918578C378C38905, 0x890588C589057943, 0x68C37903998778C3, 0x78C388C599879987,  // 0x000032F8 
	0x9187914588C588C5, 0x88C5918570C37903, 0x914578C370C39187, 0x918788C568C360C3,  // 0x00003318 
	0x6985AA4991C58945, 0x810580C589459987, 0x814578C3D413E495, 0xD4139987998778C5,  // 0x00003338 
	0x8105914791478945, 0x894599C781059105, 0x88C5894599879147, 0x8105998781058105,  // 0x00003358 
	0x810580C580C588C5, 0x9147914788C57103, 0x71038945810580C5, 0x80C588C589458945,  // 0x00003378 
	0x8945998788C570C3, 0x78C5910579037943, 0x810570C370C38945, 0x9105914771038145,  // 0x00003398 
	0x6985A207A1C77943, 0x70C388C581459147, 0x894578C3DC53DC95, 0xC3919187998770C3,  // 0x000033B8 
	0x9185998791478145, 0x9987A187790380C5, 0x88C5998789859147, 0x88C5914791057943,  // 0x000033D8 
	0x70C388C588C59105, 0x9987914781057905, 0x8145914778C59105, 0x88C5810579438105,  // 0x000033F8 
	0x8105914791057905, 0x70C380C581058105, 0x70C370C381058145, 0x80C5894591859147,  // 0x00003418 
	0x69859987AA097943, 0x70C38905810580C5, 0x91458105E495D413, 0xAA4B9145998778C3,  // 0x00003438 
	0xA9C9998789059185, 0x9187890570C370C3, 0x89059187794388C5, 0x88C588C591857943,  // 0x00003458 
	0x70C3890588C59987, 0x9187890579439987, 0x918788C588C59987, 0x89057943790388C5,  // 0x00003478 
	0x890588C591879185, 0x70C378C3890588C5, 0x68C3790399879145, 0x68C370C3A9C98905,  // 0x00003498 
	0x6985AA0981C57943, 0x9187794380C578C3, 0x80C59145E495BB4F, 0x890780C599879187,  // 0x000034B8 
	0x8905AA0999877943, 0x8905794370C37943, 0x9987890588C588C5, 0x88C588C579437943,  // 0x000034D8 
	0x9187794388C59987, 0x890599877943AA09, 0x890588C588C59987, 0x998788C570C388C5,  // 0x000034F8 
	0x998788C589057943, 0x88C588C5998788C5, 0x7943AA09998768C3, 0x60C3794389059987,  // 0x00003518 
	0x6985920791879185, 0x9987918578C380C5, 0x78C38905E49589C7, 0x88C578C389059987,  // 0x00003538 
	0x8103A1C799879185, 0x914791858945A1C7, 0x998788C588C588C5, 0x914778C381059185,  // 0x00003558 
	0x99879185A1C78905, 0x88C5998781058105, 0x914788C581038145, 0x814588C580C588C5,  // 0x00003578 
	0x9987914791477943, 0x91479147890588C5, 0xA1C7898571037103, 0x80C5A1C788C58905,  // 0x00003598 
	0x6985924781859147, 0x9147914778C588C5, 0x8105AA4BCB8F9185, 0x8105810588C58905,  // 0x000035B8 
	0x8945998799878945, 0x8905998799879987, 0x99878105810588C5, 0x9147790380C59147,  // 0x000035D8 
	0x91479147A1C79147, 0x88C5890588C570C3, 0x8945810581058105, 0x790388C5914788C5,  // 0x000035F8 
	0x9147914791478105, 0x9987914791479147, 0xA1C7790371037943, 0x9987A1C788C588C5,  // 0x00003618 
	0x6985AA8971C58105, 0x80C5810589058905, 0x99C7D413B249A1C7, 0x8145914580C578C3,  // 0x00003638 
	0x9987914791478145, 0x81039185914780C5, 0x91478103814580C5, 0x80C5814570C38105,  // 0x00003658 
	0x80C5810591479185, 0x810570C388C578C3, 0x81458145890588C5, 0x78C3810591858905,  // 0x00003678 
	0x810588C588C58105, 0x9147890599879147, 0x894570C381038145, 0xAA099147810580C5,  // 0x00003698 
	0x6985A28981C57943, 0x70C3794391479147, 0xBB0DE49599479147, 0x99C7910570C388C5,  // 0x000036B8 
	0x998788C588C59987, 0x9987794388C570C3, 0x88C588C5998770C3, 0x68C3998779437943,  // 0x000036D8 
	0x70C3794389057943, 0x794378C388C588C5, 0x9987998799878905, 0x88C5794379439987,  // 0x000036F8 
	0x794388C588C57943, 0x88C59987998788C5, 0x70C370C389059987, 0x99878905794370C3,  // 0x00003718 
	0x69858A0791879185, 0x790379439147AA4B, 0xCBD1E495890580C5, 0x9987890588C588C5,  // 0x00003738 
	0x890578C379439987, 0x99879185794388C5, 0x88C588C581439145, 0x7903814391859185,  // 0x00003758 
	0x7903794391878905, 0x8905918578C37943, 0x8905998781439187, 0x88C5890570C38905,  // 0x00003778 
	0x918588C588C59185, 0x88C59987998778C3, 0x70C370C391879987, 0x8905918791857903,  // 0x00003798 
	0x81C581C589C59987, 0x810589859105C34F, 0xDC95E495890580C5, 0x9107890591479147,  // 0x000037B8 
	0x88C5790389859105, 0x9987A9C7898588C5, 0x9147914779439105, 0x8985794381459987,  // 0x000037D8 
	0x81058985910588C5, 0x88C5998789457943, 0x88C5910579038145, 0x88C588C580C588C5,  // 0x000037F8 
	0x910588C591479987, 0xA1879987814580C5, 0x894580C591059105, 0x8105998781457103,  // 0x00003818 
	0x6985920781C59147, 0x88C599879145D413, 0xE495E49591458945, 0x88C5914599879147,  // 0x00003838 
	0x81057903914788C5, 0x9987A1C7914788C5, 0x9147914789458105, 0x9987894579039147,  // 0x00003858 
	0x88C59987810588C5, 0x8105914791478945, 0x80C580C579038945, 0x8105910588C580C5,  // 0x00003878 
	0x80C59105A1C79987, 0xA187894579038105, 0x9987910580C58105, 0x89458945710378C3,  // 0x00003898 
	0x81C5AA4981C580C5, 0x890591879145CBD1, 0xE495E49599879987, 0x8905998791878905,  // 0x000038B8 
	0x790370C388C588C5, 0x9187918788C588C5, 0x8905890591878143, 0x9987918770C380C5,  // 0x000038D8 
	0x8905998781438905, 0x8145890588C59187, 0x70C370C381439187, 0x81439987890578C3,  // 0x000038F8 
	0x78C39987AA099187, 0x88C570C378C38143, 0x9145918778C37903, 0x91857903710388C5,  // 0x00003918 
	0x81C5B20981C570C3, 0x794388C5890589C5, 0xE495E49599879987, 0x9185998788C59987,  // 0x00003938 
	0x68C370C388C588C5, 0x88C588C588C588C5, 0x7943794388C59987, 0x998788C570C370C3,  // 0x00003958 
	0x7943998799879987, 0xAA09998788C588C5, 0x68C37943998788C5, 0x99879987998788C5,  // 0x00003978 
	0x99879987998788C5, 0x88C570C388C59987, 0x70C388C5998788C5, 0x794388C5AA0988C5,  // 0x00003998 
	0x81C599C791879145, 0x890578C388C57903, 0xBB0DE49591459145, 0x9987810591479987,  // 0x000039B8 
	0xA1C7914588C59147, 0x88C5914788C59147, 0x9185918588C59987, 0x8905914780C59145,  // 0x000039D8 
	0x8905790399879987, 0x9147890588C578C3, 0x80C59185814588C5, 0x99878905998788C5,  // 0x000039F8 
	0x99879987814588C5, 0x78C39145A1C99987, 0x68C370C381459147, 0x7943810399C788C5,  // 0x00003A18 
	0x81C5A20799879145, 0x88C5894588C58103, 0x99C7D45399C98905, 0x914580C591459987,  // 0x00003A38 
	0xA1C7914588C58105, 0x88C5914581059145, 0x8945894591479145, 0x88C5914591479145,  // 0x00003A58 
	0x88C580C589459987, 0x88C5914788C58945, 0x88C59145810588C5, 0x810588C591459147,  // 0x00003A78 
	0x99879987810588C5, 0x8945998799879145, 0x8105810579439987, 0x89458945914588C5,  // 0x00003A98 
	0x6985AA8999878105, 0x9105918589058945, 0x8105C34FB2CD9107, 0x810580C588C59185,  // 0x00003AB8 
	0x91479105810570C3, 0x80C588C5794380C5, 0x79438145998788C5, 0x91059105998788C5,  // 0x00003AD8 
	0x9105810581459147, 0x88C5998791059987, 0x88C588C588C588C5, 0x78C380C591058945,  // 0x00003AF8 
	0x9185914788C588C5, 0x9987918588C58105, 0x9147A1C781459185, 0x8945914788C588C5,  // 0x00003B18 
	0x81C5AA8999877943, 0x9987794391059145, 0x8105A24BD41399C9, 0x70C380C588C57943,  // 0x00003B38 
	0x89059987794370C3, 0x78C38905794378C3, 0x7943998799878905, 0x9987998799878905,  // 0x00003B58 
	0x99877943998788C5, 0x88C5918591859185, 0x88C588C588C58905, 0x794370C3918578C3,  // 0x00003B78 
	0x794388C588C58905, 0x9185794389057943, 0x8905AA0999877943, 0x78C3890589058907,  // 0x00003B98 
	0x6985B20999879185, 0x9987918599878905, 0x91859107E495B30D, 0x78C370C388C58905,  // 0x00003BB8 
	0x9987890589057943, 0x88C57943918588C5, 0x9185998789059987, 0x8905890589059987,  // 0x00003BD8 
	0x99879185890578C3, 0x88C5814381438143, 0x88C588C578C39987, 0x91857943814388C5,  // 0x00003BF8 
	0x890588C578C37943, 0x8143794379438905, 0x9987814399879185, 0x88C599879987AA09,  // 0x00003C18 
	0x81C5AA49A2078145, 0x81059105998788C5, 0x99879145E495D413, 0x998770C388C578C3,  // 0x00003C38 
	0x998788C591477943, 0x8105918591059147, 0x9987910591478145, 0x91479147A1878145,  // 0x00003C58 
	0x8105910588C57903, 0x88C5810579038105, 0x88C5914780C59105, 0x91059185794378C3,  // 0x00003C78 
	0x88C588C589457943, 0x8105790379439147, 0x9987794381459105, 0x88C5814599879947,  // 0x00003C98 
	0x81C5AA89AA898105, 0x70C388C591479105, 0x91478945E495E495, 0xBACD78C3810568C3,  // 0x00003CB8 
	0x914780C589457943, 0x7943894591459147, 0x914788C589458945, 0x91479987B2098105,  // 0x00003CD8 
	0x70C388C581058945, 0x914588C578C588C5, 0x8105998791458105, 0x88C59987894570C3,  // 0x00003CF8 
	0x8105810599877903, 0x80C5810581059987, 0x8145810581059145, 0x91458945914780C5,  // 0x00003D18 
	0x6985AA89A24980C5, 0x70C388C589059145, 0x89058145E495E495, 0xD4118905814368C3,  // 0x00003D38 
	0x890578C381038143, 0x8103810399878905, 0x8905890579439185, 0x89059987A9C980C5,  // 0x00003D58 
	0x70C388C581039185, 0x914788C588C58905, 0x7943914791858103, 0x89059147914778C3,  // 0x00003D78 
	0x79438103998770C3, 0x78C3998789059185, 0x70C3890588C59147, 0x9185998788C570C3,  // 0x00003D98 
	0x6985AA89998770C3, 0x70C388C588C59145, 0x88C58105E495E495, 0xCBD19147998788C5,  // 0x00003DB8 
	0x998788C588C59987, 0x88C588C599879987, 0x9987998779437943, 0x9987998788C570C3,  // 0x00003DD8 
	0x70C388C588C57943, 0x88C588C588C57943, 0x794388C5794388C5, 0x794388C588C588C5,  // 0x00003DF8 
	0x794388C5998770C3, 0x88C5998799877943, 0x7943998788C588C5, 0x7943998788C570C3,  // 0x00003E18 
};

u64 _jyasinboss_room_1_tex_00003E38[] = 
{
	0x498B498B498B498B, 0x4149498B518B498B, 0x498B498B498B498B, 0x498B498B59CD518B,  // 0x00003E38 
	0x59CBB4199B9538C7, 0x30C73907BD6BC5A9, 0xCDEBBD6B39075A0F, 0xBD25C5ABD631D631,  // 0x00003E58 
	0xCDEFAD27CDEDB527, 0x49CD418BB569CE2F, 0xD673BDAD31074107, 0x28858B13ABD759CD,  // 0x00003E78 
	0x518B59CB498B4149, 0x498B4149498B498B, 0x4149498B41494149, 0x4149390741494149,  // 0x00003E98 
	0x498B498B518B498B, 0x518B518B518B59CD, 0x59CD5A0B5A0B5A0B, 0x620D620D624F620D,  // 0x00003EB8 
	0x624FCC9DABD74149, 0x310730415183AC9D, 0xAC9D49013041B4E1, 0xB49F304140C54107,  // 0x00003ED8 
	0x4107410751CBAC9D, 0xC56340C53041AC9D, 0xAC9D304141054949, 0x30C7B419BC9B620D,  // 0x00003EF8 
	0x51CB620D620D59CB, 0x59CB518B498B498B, 0x498B498B51CB5A0D, 0x51CB51CB5A0D620D,  // 0x00003F18 
	0x51CB51CB518B518B, 0x59CD5A0B59CD51CB, 0x518B5A0B59CD51CB, 0x498B498B498B51CB,  // 0x00003F38 
	0x59CBBC5BABD73907, 0x4149304130414901, 0x38813041BCE1A45B, 0x308130418B53CDA5,  // 0x00003F58 
	0xC56359C949474985, 0xB4DFB4DF304140C5, 0x40C5410741493907, 0x20839B55BC595A0D,  // 0x00003F78 
	0x498B518B51CB498B, 0x518B498B498B498B, 0x498B498B4149498B, 0x41494149498B4149,  // 0x00003F98 
	0x51CB51CB5A0B5A0B, 0x51CB498B5A0B51CB, 0x518B51CB5A0D59CD, 0x518B51CB59CD59CD,  // 0x00003FB8 
	0x620DBC5B9BD74149, 0x494930418311B49F, 0xB4DFB49FB4DF3081, 0x40C18B53CDA5D5E7,  // 0x00003FD8 
	0xCDA7BCDF8B9338C3, 0x41059C19B4DFB49F, 0xC5638B5331073107, 0x28C57AD1ABD75A0D,  // 0x00003FF8 
	0x498B51CB518B518B, 0x4149498B51CB498B, 0x518B498B498B51CB, 0x59CD59CD518B518B,  // 0x00004018 
	0x498B59CD5A0B59CD, 0x518B518B51CB59CD, 0x5A0B51CB518B498B, 0x518B518B51CB59CD,  // 0x00004038 
	0x620DB4199B5530C5, 0x4949410530418311, 0xAC9D724B38C140C1, 0x7ACDC563CDA5D5E7,  // 0x00004058 
	0xC565BCDFB49DAC9D, 0x410541058B53B49F, 0x8B53390739073907, 0x28C57AD19B95620F,  // 0x00004078 
	0x518B620D59CD498B, 0x498B59CD498B518B, 0x498B518B51CB518B, 0x51CB59CD59CD59CD,  // 0x00004098 
	0x418B518B518B51CB, 0x51CB518B51CB518B, 0x518B51CB498B498B, 0x4149498B51CB51CB,  // 0x000040B8 
	0x5A4FABD77B133107, 0x3907494740C540C5, 0x304140C151839395, 0xC563CDA5C563D5E7,  // 0x000040D8 
	0xC565BD21B49DAC9D, 0x728B490541053083, 0x4107414931073107, 0x288572918B13620D,  // 0x000040F8 
	0x518B59CB518B518B, 0x498B5A0B498B518B, 0x5A0B51CB59CD5A0B, 0x59CD59CD518B51CB,  // 0x00004118 
	0x4149498B4149498B, 0x518B518B518B498B, 0x51CB498B51CB59CD, 0x498B41494149498B,  // 0x00004138 
	0x59CD7AD16A4F30C7, 0x418B414938C54907, 0x40C54101830FAC9D, 0xAC9DC563C563D5E7,  // 0x00004158 
	0xC565BCDFB49DAC9D, 0xA459598739054107, 0x494930C5288530C5, 0x30856A8F620D4149,  // 0x00004178 
	0x498B51CB4149498B, 0x498B724D620D7ACF, 0x7AD17ACF7ACF9353, 0x6A4F61C9518B498B,  // 0x00004198 
	0x4149498B518B620D, 0x6A4F5A0D518B518B, 0x59CD498B4149498B, 0x498B390728C53907,  // 0x000041B8 
	0x498D5A4F83138B13, 0x9397390738C54949, 0x4949494749474943, 0x9395C563C563CDA5,  // 0x000041D8 
	0xC565B49F9BD76207, 0x490140C338C54149, 0x414930C7518B8B57, 0x9C1D9C1D93DD6251,  // 0x000041F8 
	0x4149498B3107498B, 0x620D8B139353B419, 0xBC9BBC5BBC5BB419, 0x9B555A0B498B498B,  // 0x00004218 
	0x59CD518B9BD7ABD7, 0xA3D57AD16A4F6A4F, 0x620D51CB518B498B, 0x4149498B28C559CD,  // 0x00004238 
	0xC565CDA5CDA5CDA5, 0xC5637B1541094107, 0x518B4947494738C5, 0x30418B53AC9DC563,  // 0x00004258 
	0xC563AC9D830F3881, 0x40C5410541494149, 0x3907498DACA1D5E9, 0xD5EBD5E9D5E9CDA9,  // 0x00004278 
	0x9421394941494149, 0x724D8B139B55ABD7, 0xABD7ABD7B419B419, 0x7AD15A0B51CB498B,  // 0x00004298 
	0x4149498B6A4F9B55, 0xBC5BCC9DBC5B8B13, 0x7AD193537B137AD1, 0x6A4F59CD59CDC523,  // 0x000042B8 
	0xCDA5CDA7B4E159CD, 0x28C7310741494949, 0x518B494740C54947, 0x38C530419BD7AC9D,  // 0x000042D8 
	0xBD219BD740C140C5, 0x4107494941494949, 0x28C528C528C728C7, 0x418BAC9FCDA9CDE9,  // 0x000042F8 
	0xA45F6A4F5A0D6A4F, 0x6A4F6A4F7AD16A4F, 0x7291ABD7B419ABD7, 0x9BD77AD159CD4149,  // 0x00004318 
	0x498B414951CB59CD, 0x6A4F9395B419CC9D, 0xBC5BB419ABD77AD1, 0x6A4F59CD3949BCE3,  // 0x00004338 
	0xC56593DB28C76A4F, 0x6A4F59CB414730C7, 0x4949514949474949, 0x494738C561C793D5,  // 0x00004358 
	0x9BD76A4930814105, 0x40C54149414928C7, 0x28C730C7620D6A4F, 0x620D31077B59ACE3,  // 0x00004378 
	0xACA3498B620D6A4F, 0x7AD1ABD7B419BC5B, 0xBC9BB41993956A91, 0x59CD51CB414959CD,  // 0x00004398 
	0x59CD498B4149498B, 0x6A4F620D6A4F9B55, 0xB419BC9BBC5BABD7, 0x8B137AD1494930C5,  // 0x000043B8 
	0x8BDB418B7AD1B353, 0xCCD79AD16A0B4989, 0x3107390949494947, 0x518B410730C33905,  // 0x000043D8 
	0x414730C538C54907, 0x4109390928C728C7, 0x31077ACF9AD1CC9D, 0xA3D57AD1498B5211,  // 0x000043F8 
	0x3107498B8B138B13, 0xABD7BC5BBC5BB419, 0x9B556A4F620D6A4F, 0x498B4149498B59CD,  // 0x00004418 
	0x4149498B518B498B, 0x6A4F8B136A4F620D, 0x7AD1ABD7B419BC5B, 0xB4199B557AD1620D,  // 0x00004438 
	0x30C541497B137B13, 0xB419B419BC5B724D, 0x51CB498B31074949, 0x4949494940C538C5,  // 0x00004458 
	0x308330C541054149, 0x390930C7310759CD, 0x7ACFBC5BB419ABD7, 0x8B137B1341493907,  // 0x00004478 
	0x620D8B139B55B419, 0xBC5BB419ABD77B13, 0x620D6A4F7B136A4F, 0x518B51CB518B498B,  // 0x00004498 
	0x4149498B498B498B, 0x498B72918B137AD1, 0x5A0D51CB9B55ABD7, 0xB419BC5BBC5B8B13,  // 0x000044B8 
	0x6A4F414931074149, 0x41496A4FB419D4DD, 0xB35361CB598B28C7, 0x4149410938C538C7,  // 0x000044D8 
	0x4107410741493907, 0x28C7498B724DB353, 0xD4DDB4197AD14149, 0x3107310741496A4F,  // 0x000044F8 
	0x8B13BC5BB419B419, 0xABD79B5559CD5A0D, 0x7B138B137291498B, 0x498B518B518B498B,  // 0x00004518 
	0x518B51CB5A0B59CD, 0x51CB5A4F7B139B55, 0x8B135A0D414959CD, 0x620D9B55ABD7B419,  // 0x00004538 
	0xB4197ACF6A4F4149, 0x41493107498B7AD1, 0xD4DDCCD77A4B620D, 0x30C728C741497B17,  // 0x00004558 
	0x6293494928852885, 0x620D824BBC5BCC9D, 0x7B13498B31073907, 0x41497ACF7ACFB419,  // 0x00004578 
	0xB4199BD79B556A4F, 0x5A0D41495A0D9353, 0x93957AD16A4F51CB, 0x59CD5A0B59CD59CD,  // 0x00004598 
	0x498B59CD518B59CD, 0x620D498B6A4F7B13, 0x9B557B1351CB30C7, 0x28C5310772919B55,  // 0x000045B8 
	0x8B13A3D59B559353, 0x620D59CD4149418B, 0x5A4F9B55D4DD9AD1, 0x518B418B410793DB,  // 0x000045D8 
	0xACA14989418B518B, 0x9AD1CC9D9B555A4F, 0x418B3107620D620D, 0x93539B559B558B13,  // 0x000045F8 
	0x9B557AD1390728C5, 0x28C751CB8B139B55, 0x7B136A4F498B620D, 0x59CD518B59CD51CB,  // 0x00004618 
	0x51CB498B59CD51CB, 0x620D414941496A4F, 0x72917B136A4F498B, 0x59CD518B28C728C7,  // 0x00004638 
	0x498B7AD17291ABD7, 0xABD7ABD7620D518B, 0x498B498B7AD1CC9D, 0xD4DD9AD16A4DBD67,  // 0x00004658 
	0xBD27728D824DD4DD, 0xBC5B7B13498B418B, 0x518B6A4FABD7ABD7, 0x9BD77AD17291498B,  // 0x00004678 
	0x28C528C559CD620D, 0x41496A4F7B136A4F, 0x6A4F498B4149620D, 0x51CB59CD518B59CD,  // 0x00004698 
	0x498B51CB59CD51CB, 0x59CD620D518B3907, 0x72918B137B13620D, 0x51CB8B137AD159CD,  // 0x000046B8 
	0x31074149498B7291, 0x72919BD7ABD7ABD7, 0x7291418B418B5A0D, 0x7AD17AD19BD7CDE9,  // 0x000046D8 
	0xCDAB9BD77AD17AD1, 0x5A0D4149498B7AD1, 0xA3D5ABD79BD77291, 0x729151CB414930C7,  // 0x000046F8 
	0x620D7AD18B1359CD, 0x620D7B138B137291, 0x3907498B620D620D, 0x51CB59CD59CD518B,  // 0x00004718 
	0x498B498B498B518B, 0x620DABD77AD1498B, 0x4149729193537291, 0x498B498B72918B13,  // 0x00004738 
	0x6A4F390728853107, 0x498B72916A4F9B55, 0x93958B1359CD3107, 0x418B418B941DCDE9,  // 0x00004758 
	0xCDE9941D59CD4149, 0x310759CD8B139395, 0x9B5572916A4F498B, 0x3107288539076A4F,  // 0x00004778 
	0x8B137291498B498B, 0x7AD193537291418B, 0x41498B139BD76A4F, 0x51CB498B498B498B,  // 0x00004798 
	0x4149498B518B51CB, 0x6A4F8B13ABD7620D, 0x498B518B7AD17291, 0x5A0D4149498B4149,  // 0x000047B8 
	0x59CD518B414928C5, 0x2885310741496A4F, 0x620D935393537AD1, 0x498B28C77317BD69,  // 0x000047D8 
	0xC567731728C7498B, 0x7AD18B1393536A4F, 0x6A4F418B28C72885, 0x28C5414951CB51CB,  // 0x000047F8 
	0x418B414941495A0D, 0x7291729159CD498B, 0x620DABD78B136A4F, 0x59CD498B498B4149,  // 0x00004818 
	0x498B41494149498B, 0x620D6A4F93958B13, 0x414928C551CB498B, 0x51CB5A0D59CD5A0B,  // 0x00004838 
	0x620D6A0B61C95A0B, 0x59CD498B31073107, 0x28C7390759CD7B13, 0x620D310759CD945F,  // 0x00004858 
	0xA45F521131075A0D, 0x7B135A0D390728C7, 0x28C73107518B59CD, 0x5A0B61C96A0B620D,  // 0x00004878 
	0x5A0B620D5A0D59CD, 0x498B51CB28C53907, 0x8B1393956A4F620D, 0x498B41494149498B,  // 0x00004898 
	0x4149518B498B59CD, 0x51CB51CB6A4F5A0D, 0x41493107498B59CD, 0x6A4F93537AD19353,  // 0x000048B8 
	0x9B55A3D59B559B55, 0x935393537B136A4F, 0x59CD414928C72885, 0x390728C528C54149,  // 0x000048D8 
	0x414928C528C53107, 0x288528C541495A0D, 0x6A4F8B1393539353, 0x9B559B559BD79B55,  // 0x000048F8 
	0x93537AD18B136A4F, 0x59CD518B39074149, 0x59CD729159CD51CB, 0x59CD498B518B498B,  // 0x00004918 
	0x518B5A0B51CB518B, 0x498B51CB498B4149, 0x30C7498B6A4F9B55, 0x9353A3D59BD79B55,  // 0x00004938 
	0x93538B137AD17AD1, 0x72917AD17B138B13, 0x9B557AD1620D498B, 0x4149390728C528C7,  // 0x00004958 
	0x28C528C531074149, 0x498B620D7AD19B55, 0x93537B137B137291, 0x7AD17AD18B139353,  // 0x00004978 
	0x9B559BD79BD79353, 0x93536A4F498B3107, 0x4149498B51CB498B, 0x51CB51CB51CB518B,  // 0x00004998 
	0x4149498B518B51CB, 0x518B4149310730C7, 0x6A4F93539B559B55, 0x9B558B138B137AD1,  // 0x000049B8 
	0x7AD17291620D51CB, 0x4149498B498B498B, 0x498B620D7AD18B13, 0x8B13518B41493907,  // 0x000049D8 
	0x39074149498B8B11, 0x8B137AD16A4F498B, 0x498B498B498B4149, 0x518B5A0D72917AD1,  // 0x000049F8 
	0x7AD18B1393539B55, 0x9B559B558B11620D, 0x39073907414959CD, 0x51CB518B498B498B,  // 0x00004A18 
	0x518B51CB518B51CB, 0x498B5A0B620D7ACF, 0x9B5593538B138B13, 0x7AD17AD16A4F5A0D,  // 0x00004A38 
	0x498B414939074149, 0x498B414941494149, 0x4149414939074149, 0x620D59CD414951CB,  // 0x00004A58 
	0x51CB414959CD620D, 0x418B390741494149, 0x414941494149498B, 0x4149390741494149,  // 0x00004A78 
	0x5A0D6A4F7AD17AD1, 0x8B1393539B559B55, 0x7ACF620D5A0D518B, 0x51CB518B51CB51CB,  // 0x00004A98 
	0x4149518B518B51CB, 0x5A0B620D9B559B55, 0x93958B137B137291, 0x5A0D498B41494149,  // 0x00004AB8 
	0x498B498B498B498B, 0x498B498B4149498B, 0x4149498B498B4149, 0x4149414941493107,  // 0x00004AD8 
	0x3107414941494149, 0x498B498B498B4149, 0x498B4149498B498B, 0x498B498B498B418B,  // 0x00004AF8 
	0x41494149498B5A0D, 0x72917B138B139395, 0x9B559B55620D59CD, 0x51CB518B518B4149,  // 0x00004B18 
	0x498B5A0B51CB498B, 0x59CD729172916A4F, 0x6A4F6A4F6A4F51CB, 0x418B41494149498B,  // 0x00004B38 
	0x498B498B498B498B, 0x498B41494149498B, 0x4149498B518B498B, 0x498B414939073907,  // 0x00004B58 
	0x390739074149518B, 0x518B498B498B4149, 0x498B41494149498B, 0x498B498B498B498B,  // 0x00004B78 
	0x498B41494149418B, 0x498B6A4F6A916A4F, 0x6A4F6A4F6A4F59CD, 0x498B51CB5A0B518B,  // 0x00004B98 
	0x4149498B498B498B, 0x414959CD5A0D5A0D, 0x59CD59CD4149418B, 0x498B498B498B498B,  // 0x00004BB8 
	0x498B498B498B498B, 0x498B498B41494149, 0x498B518B518B518B, 0x51CB51CB498B4149,  // 0x00004BD8 
	0x4149498B51CB51CB, 0x518B518B518B498B, 0x498B4149498B498B, 0x498B498B498B498B,  // 0x00004BF8 
	0x498B498B498B498B, 0x418B414959CD59CD, 0x59CD5A0D59CD4149, 0x498B498B498B4149,  // 0x00004C18 
	0x498B41494149418B, 0x41494149418B4149, 0x414941494149498B, 0x498B498B498B498B,  // 0x00004C38 
	0x498B498B498B4149, 0x4149498B498B498B, 0x51CB498B51CB518B, 0x51CB518B59CD5A0B,  // 0x00004C58 
	0x5A0B59CD518B51CB, 0x518B51CB498B51CB, 0x498B498B498B4149, 0x4149498B498B498B,  // 0x00004C78 
	0x498B498B498B498B, 0x498B414941494149, 0x4149498B41494149, 0x498B414941494149,  // 0x00004C98 
	0x4149414941494149, 0x3907414941494149, 0x498B498B498B51CB, 0x498B498B498B498B,  // 0x00004CB8 
	0x498B498B498B498B, 0x518B498B498B498B, 0x498B518B518B51CB, 0x498B498B51CB518B,  // 0x00004CD8 
	0x498B51CB498B498B, 0x51CB518B498B518B, 0x498B498B498B518B, 0x498B498B498B498B,  // 0x00004CF8 
	0x498B498B498B498B, 0x51CB498B498B498B, 0x4149414941493907, 0x4149414941494149,  // 0x00004D18 
	0x498B498B498B4149, 0x4149414941494149, 0x4149498B498B51CB, 0x51CB518B518B51CB,  // 0x00004D38 
	0x51CB518B498B51CB, 0x498B498B498B498B, 0x498B51CB498B518B, 0x498B498B518B498B,  // 0x00004D58 
	0x498B518B498B498B, 0x518B498B51CB498B, 0x498B498B498B498B, 0x51CB498B518B51CB,  // 0x00004D78 
	0x51CB518B518B51CB, 0x51CB498B498B4149, 0x4149414941494149, 0x4149498B498B498B,  // 0x00004D98 
	0x498B498B498B4149, 0x4149498B4149498B, 0x4149498B498B498B, 0x51CB518B498B51CB,  // 0x00004DB8 
	0x498B498B518B498B, 0x498B498B498B498B, 0x498B498B518B498B, 0x498B518B51CB498B,  // 0x00004DD8 
	0x498B51CB518B498B, 0x498B498B498B498B, 0x498B498B498B498B, 0x498B518B498B498B,  // 0x00004DF8 
	0x51CB498B518B51CB, 0x498B498B498B4149, 0x498B4149498B4149, 0x4149498B498B498B,  // 0x00004E18 
};

u64 _jyasinboss_room_1_tex_00004E38[] = 
{
	0x6A4D620D518B518B, 0x518B6A4D6A4D724D, 0x61CB620B620B620B, 0x620B6A4D6A0D620D,  // 0x00004E38 
	0x61CD6A0D724D6A4D, 0x724D6A4D728D6A4D, 0x6A4D6A0D728D7ACF, 0x728F6A0D7A8F6A4F,  // 0x00004E58 
	0x59CB620D59CB6A0D, 0x82CF830F8B117ACF, 0x7ACF728D728D728D, 0x7ACF724D6A4D728D,  // 0x00004E78 
	0x728D7A8D7A8D82CF, 0x7ACF934F7ACD7ACF, 0x7ACF82D182CF82CF, 0x7A8F82D182D1724F,  // 0x00004E98 
	0x728F82D182D19351, 0x9B93A393ABD3ABD3, 0x9B9393517ACF7ACF, 0x83118B518B118B11,  // 0x00004EB8 
	0x8B118B5193519351, 0x9B93935193519B93, 0x9B939B938B117A8F, 0x82D18B1182D18B13,  // 0x00004ED8 
	0x8B538B1193539B93, 0x9B93A395ABD5ABD5, 0xABD79B958B539395, 0x8B51935393938B51,  // 0x00004EF8 
	0x935193519B939B93, 0x9353935393539B93, 0x9B939B938B118B11, 0x82D182D182D19353,  // 0x00004F18 
	0x83118B138B1182D1, 0x93538B11A395A3D5, 0xA3D79B9593959B95, 0x9353935393939353,  // 0x00004F38 
	0x8B118B1393539353, 0x9353935393539B93, 0x9B959B959B959353, 0x82D17AD182D182D1,  // 0x00004F58 
	0x82D183118B139353, 0x8B13935393539B95, 0x9B939B9593539395, 0x939393938B138B11,  // 0x00004F78 
	0x8B118B118B539353, 0x93538B1393539B53, 0x9B539B9393539353, 0x9353831182D182D1,  // 0x00004F98 
	0x7AD183138B138313, 0x831393538B138B53, 0x8B118B1193539353, 0x8B138B137ACF7AD1,  // 0x00004FB8 
	0x831183118B539353, 0x93538B118B139353, 0x9B959B958B538B13, 0x8B138B1383118311,  // 0x00004FD8 
	0x831183118B139353, 0x8B1393538B1182D1, 0x82D182D18B138B11, 0x93538B117AD17A8F,  // 0x00004FF8 
	0x83118B118B138B13, 0x8B138B117A8F82D1, 0x9B53935393538B53, 0x8B118B118B118B13,  // 0x00005018 
	0x7AD182D18B538B13, 0x7AD17AD182D17AD1, 0x82D1831183118311, 0x83118B1382D17A91,  // 0x00005038 
	0x82D18B118B138B13, 0x8B1382D1728F7A8F, 0x8B117AD18B118311, 0x8B118B138B138B13,  // 0x00005058 
	0x7AD18311831182D1, 0x728F724F728F82D1, 0x82D182D17AD182D1, 0x82D182D183117AD1,  // 0x00005078 
	0x82D18B138B138B13, 0x8B13728F728F7A8F, 0x7A8F6A4F728F620D, 0x82D182D1728F728F,  // 0x00005098 
	0x7AD1620D624D6A4F, 0x6A4D724F7A8F7A91, 0x728F728F6A4F7AD1, 0x82D182D1831182D1,  // 0x000050B8 
	0x7AD18B139B958B11, 0x82D17A8F728F6A0D, 0x724D620D620D6A0D, 0x7A8F620D59CD5A0D,  // 0x000050D8 
	0x624D51CB5A0D59CD, 0x59CD620D6A4F6A4F, 0x620D6A4F6A4D6A4D, 0x7A8F724F82D18B11,  // 0x000050F8 
	0x82D18B1393538B11, 0x83117A8F6A4D620B, 0x620D620D61CD59CB, 0x620D59CB518B59CD,  // 0x00005118 
	0x6A4F518B518B59CB, 0x59CB518B518B59CB, 0x598B6A0D59CB6A0D, 0x724F724F7AD18B13,  // 0x00005138 
	0x93538B1393539353, 0x8B1382D1620D518B, 0x59CB59CB59CB4949, 0x498B4149414959CD,  // 0x00005158 
	0x59CD5A0D59CB59CB, 0x59CB518B518B518B, 0x59CB61CD61CD6A0D, 0x724F6A4D728F82D1,  // 0x00005178 
	0x935393539B959B95, 0x8B1382D1724F514B, 0x518B518B49494949, 0x4949494B51CB59CD,  // 0x00005198 
	0x59CD59CB59CB61CB, 0x620D620B620B61CB, 0x620D598B61CD6A4D, 0x6A0D6A0D6A4D728F,  // 0x000051B8 
	0x7A919353A3959353, 0x93537A916A0D518B, 0x59CD59CD61CD59CB, 0x6A4D59CB59CD620D,  // 0x000051D8 
	0x728F6A4D7A8F728F, 0x728F728F6A4D6A4D, 0x620D59CB61CB6A0D, 0x724F6A4D6A4D724D,  // 0x000051F8 
	0x7A8F82D19B959353, 0x82D182D16A0F620D, 0x620D6A4F6A0D7A8F, 0x7ACF83117AD1728F,  // 0x00005218 
	0x82D17AD17A8F7ACF, 0x7ACF830F830F728D, 0x6A4D6A4D620B620B, 0x620D620B728F6A4D,  // 0x00005238 
	0x724D82CF9B939353, 0x7A917A8F728F724F, 0x724F7ACF830F8311, 0x83118B118B118311,  // 0x00005258 
	0x8B1182D182D18B11, 0x93518B118B519B93, 0x9351830F728D7ACD, 0x6A4D728D728D724D,  // 0x00005278 
	0x6A4D7A8F8B117ACF, 0x7A8F7ACF728F728F, 0x82D183119B919B91, 0x8B11935193518B11,  // 0x00005298 
	0x8B118B118B119353, 0x9B93A393ABD3A393, 0x9B919B93831182CF, 0x7A8F728F7A8F7ACF,  // 0x000052B8 
	0x7A8F7ACF82D182CF, 0x7ACF82CF7ACF82D1, 0x83119B93A3D3A3D3, 0x9B93935193518B51,  // 0x000052D8 
	0x8B118B118B118B53, 0x9353A395ABD5A395, 0xA3D59B9593538B53, 0x8B1183117ACF7ACF,  // 0x000052F8 
	0x7ACF83118B118311, 0x8B1183117ACF8311, 0x9B93A3D5A3D39B93, 0x9B9393538B518B11,  // 0x00005318 
	0x7AD182D18B138B13, 0x8B138B11A3959B95, 0xA3D593538B539353, 0x9353935393537AD1,  // 0x00005338 
	0x82D182CF93538B51, 0x8B118B1183118B11, 0xA3D59B9393539B93, 0x93538B118B118B11,  // 0x00005358 
	0x83117AD183118B13, 0x8B13935393539353, 0x9B95935393539353, 0x93939B9593938B11,  // 0x00005378 
	0x83117AD183119353, 0x8B538B118B139353, 0xA3D593538B118B11, 0x82D183118B118B11,  // 0x00005398 
	0x8B11831183138313, 0x83118B538B538311, 0x9353831183118B11, 0x8B538B5393539353,  // 0x000053B8 
	0x83117AD182D18B11, 0x8B118B118B119B53, 0xA3D59353831182D1, 0x7AD18B138B118B11,  // 0x000053D8 
	0x831182D183118B13, 0x7AD18B538B137AD1, 0x8B1382D182D182D1, 0x82D17AD183118B53,  // 0x000053F8 
	0x82D182D17AD18311, 0x83117AD182D19311, 0x9353831182D182D1, 0x7AD18B5383118311,  // 0x00005418 
	0x82D17AD1831182D1, 0x7AD17AD18AD182D1, 0x7A8F7AD17AD182D1, 0x82D182D17AD182D1,  // 0x00005438 
	0x728F7AD17AD17A8F, 0x82D17ACF7A8F828F, 0x82D16A8F7AD17A91, 0x7A8F8B138B1382D1,  // 0x00005458 
	0x7AD182D182D1728F, 0x6A4F728F724F728F, 0x7AD17A8F7A8F82D1, 0x82D17A8F82D1724F,  // 0x00005478 
	0x724F7A91728F7A8F, 0x7A8F7A8F7A8F6A4D, 0x7A8F6A4D6A4F724F, 0x724F8311728F728F,  // 0x00005498 
	0x620D7AD17AD1728F, 0x620D620D6A0D620D, 0x728F728F728F6A4D, 0x7A8F6A4D7A8F61CD,  // 0x000054B8 
	0x6A0F6A4F6A4D728F, 0x724F6A0D728F6A4D, 0x724D6A4D620D61CD, 0x620D724F59CD5A0D,  // 0x000054D8 
	0x59CD620D6A4F620D, 0x61CD61CD59CB620D, 0x728F6A4D6A0D620D, 0x724D620D724F598B,  // 0x000054F8 
	0x620D6A0D620D728F, 0x728F6A4D6A4D61CB, 0x620B6A4D620D59CB, 0x59CB7A8F6A0D59CD,  // 0x00005518 
	0x620D51CB59CB620D, 0x59CD518B59CB61CD, 0x59CD59CB598B61CB, 0x6A0D598B620D598B,  // 0x00005538 
	0x61CD620D61CD728F, 0x6A4F724F61CB59CB, 0x59CB620D620D620D, 0x59CB620D620D728F,  // 0x00005558 
	0x620D51CB51CB59CD, 0x518B518B410959CB, 0x518B518B518B598B, 0x61CD598B620D61CD,  // 0x00005578 
	0x518B598B620D6A0D, 0x6A0D6A4D620D518B, 0x518B59CB59CB620D, 0x59CB59CB6A4D728F,  // 0x00005598 
	0x620D620D59CD59CD, 0x518B494B4109494B, 0x494B514B514B514B, 0x598B598B61CD518B,  // 0x000055B8 
	0x518B598D61CD61CD, 0x61CD61CD61CD598B, 0x518B59CB518B59CB, 0x59CB59CB620D728F,  // 0x000055D8 
	0x6A4F59CB51CB494B, 0x498B494B49494949, 0x514B518B518B518B, 0x514B514B514B494B,  // 0x000055F8 
	0x61CD59CB61CD61CD, 0x620D620D620D59CB, 0x59CB59CB6A0D6A4D, 0x6A4D620D620D728F,  // 0x00005618 
};

u64 _jyasinboss_room_1_tex_00005638[] = 
{
	0x9C5F83D983977B97, 0x83977B5531474A0D, 0x5A4F62916AD16B13, 0x7313731373137313,  // 0x00005638 
	0x73136B1362916B13, 0x73137B5573137B55, 0x7355731573157313, 0x6B136AD373137313,  // 0x00005658 
	0x73137B5573137355, 0x73137313731362D1, 0x7B55735573137313, 0x73136B136AD16291,  // 0x00005678 
	0x5A8F3989318B398D, 0x398D398D398D398D, 0x398D398D398D398D, 0x398D398D398D318B,  // 0x00005698 
	0x0842084283997B57, 0x5A8F5A4F20C53989, 0x3989398939893989, 0x3989398939893989,  // 0x000056B8 
	0x3989398939893989, 0x3989398939893989, 0x3989398939893989, 0x3989398939893989,  // 0x000056D8 
	0x3989398939893989, 0x3989398939893989, 0x3989398939893989, 0x3989398939893989,  // 0x000056F8 
	0x39893149318B314B, 0x2949294B294B294B, 0x2949290929092949, 0x2909290929092109,  // 0x00005718 
	0x0842084208420842, 0x520F398908420842, 0x0842084208420842, 0x0843084308430843,  // 0x00005738 
	0x0843084308430843, 0x0843084308430842, 0x0842084208420842, 0x0842084208420842,  // 0x00005758 
	0x0842084208420842, 0x0842084208420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005778 
	0x0842084229492109, 0x2107210721072109, 0x2109210921092109, 0x210921092109294B,  // 0x00005798 
	0x0842084208420842, 0x1082104208420842, 0x0842084208420842, 0x108318C520C520C5,  // 0x000057B8 
	0x20C520C518851885, 0x1885108310430842, 0x0842084208420842, 0x0842084208420842,  // 0x000057D8 
	0x0842084208420842, 0x0842084208420842, 0x0842084208420842, 0x0842084208420842,  // 0x000057F8 
	0x08420842294B20C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005818 
	0x0842084208420842, 0x0842084208420842, 0x0842084208420842, 0x18C520C520C720C7,  // 0x00005838 
	0x20C720C720C520C5, 0x18C5188310830842, 0x0842084208420842, 0x0842084208420842,  // 0x00005858 
	0x0842084208420842, 0x0842084208420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005878 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005898 
	0x0842084208420842, 0x0842084208420842, 0x0842084208420842, 0x290720C521072907,  // 0x000058B8 
	0x21072107210720C5, 0x20C5210720C50842, 0x0842084208420842, 0x0842084208420842,  // 0x000058D8 
	0x0842084208420842, 0x0842084208420842, 0x0842084208420842, 0x0842084208420842,  // 0x000058F8 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005918 
	0x0842084208420842, 0x0842084208420842, 0x08420842084220C6, 0x2907210729072907,  // 0x00005938 
	0x2907290729072107, 0x20C52907210718C4, 0x0842084208420842, 0x0842084208420842,  // 0x00005958 
	0x0842084208420842, 0x0842084208420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005978 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005998 
	0x0842084208420842, 0x0842084208420842, 0x0842084208422907, 0x2947290729072907,  // 0x000059B8 
	0x2907290729072907, 0x29072947290720C5, 0x0842084208420842, 0x0842084208420842,  // 0x000059D8 
	0x0842084208420842, 0x0842084208420842, 0x0842084208420842, 0x0842084208420842,  // 0x000059F8 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005A18 
	0x0842084208420842, 0x0842084208420842, 0x0842084208423149, 0x2949290729072907,  // 0x00005A38 
	0x2907290729072947, 0x3147398929472907, 0x1882084208420842, 0x0842084208420842,  // 0x00005A58 
	0x0842084208420842, 0x0842084208420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005A78 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005A98 
	0x0842084208420842, 0x0842084208420842, 0x0842084229063149, 0x2949314931492949,  // 0x00005AB8 
	0x2907290729072907, 0x3149294731493189, 0x3148084208420842, 0x0842084208420842,  // 0x00005AD8 
	0x0842084208420842, 0x0842084208420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005AF8 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005B18 
	0x0842084208420842, 0x0842084208420842, 0x084220C4418B3149, 0x3149314931493149,  // 0x00005B38 
	0x2949294929072907, 0x31493149398B3989, 0x418B084208420842, 0x0842084208420842,  // 0x00005B58 
	0x0842084208420842, 0x0842084208420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005B78 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005B98 
	0x0842084208420842, 0x0842084208420842, 0x084220C431493189, 0x3949398931493149,  // 0x00005BB8 
	0x3149314931493149, 0x3149398B41CD39CB, 0x41CB20C408420842, 0x0842084208420842,  // 0x00005BD8 
	0x0842084208420842, 0x0842084208420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005BF8 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005C18 
	0x0842084208420842, 0x0842084208420842, 0x1882418B39893989, 0x39CB398B39893149,  // 0x00005C38 
	0x3149314931493149, 0x3149398B41CB41CB, 0x41CB418B39482906, 0x1082084208420842,  // 0x00005C58 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005C78 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005C98 
	0x0842084208420842, 0x08420842084220C4, 0x290639CB398B398B, 0x41CD418B398B3989,  // 0x00005CB8 
	0x39493149398B398B, 0x398B41CD41CD41CD, 0x49CD49CD4A0C41CA, 0x1882084208420842,  // 0x00005CD8 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005CF8 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005D18 
	0x0842084208420842, 0x0842084208423148, 0x418B4A0D41CB41CB, 0x49CD41CD418B398B,  // 0x00005D38 
	0x39893989398B41CB, 0x41CB41CB49CD4A0D, 0x4A0D520D418B3188, 0x0842084208420842,  // 0x00005D58 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005D78 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005D98 
	0x0842084208420842, 0x0842084229064A0C, 0x524D4A0D4A0D524D, 0x4A0D4A0D41CB41CD,  // 0x00005DB8 
	0x398B41CB41CD520F, 0x4A0D4A0D520D4A0D, 0x520F5A4F62D16290, 0x2906084208420842,  // 0x00005DD8 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005DF8 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005E18 
	0x0842084208420842, 0x0842084241CA5A8F, 0x5A91524F520D524F, 0x524F524F41CB520D,  // 0x00005E38 
	0x41CB41CB41CB520D, 0x5A8F49CD520D5A4F, 0x5A8F62916AD16AD3, 0x49CC084208420842,  // 0x00005E58 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005E78 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005E98 
	0x0842084208420842, 0x084241CA62916291, 0x5A8F524F5A8F6291, 0x5A8F524F520D49CB,  // 0x00005EB8 
	0x4A0D520D49CD49CD, 0x524F4A0D524D62D1, 0x62916B1373137B55, 0x7313084208420842,  // 0x00005ED8 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005EF8 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005F18 
	0x0842084208420842, 0x398A7B5573156B13, 0x5A915A8F62916291, 0x6AD35A4F520F524F,  // 0x00005F38 
	0x520F524F4A0D520F, 0x5A4F62915A8F6291, 0x6AD36AD37B557B55, 0x7B55629108420842,  // 0x00005F58 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005F78 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00005F98 
	0x0842084208420842, 0x7355839783977355, 0x62D16AD16AD36291, 0x62D15A915A91524F,  // 0x00005FB8 
	0x5A915A8F520D524F, 0x5A4F5A9162D16AD3, 0x731373137B557B55, 0x7B557B977B570842,  // 0x00005FD8 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x00005FF8 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006018 
	0x0842084208426B15, 0x8C1B941B83D78397, 0x7B5573556AD36AD3, 0x6AD362D16B135A8F,  // 0x00006038 
	0x62915A8F524F6291, 0x7313731373137315, 0x73157B557B557B55, 0x7B5783978BD96B13,  // 0x00006058 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x00006078 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006098 
	0x0842084208425A90, 0xA4A1A4E18BD98397, 0x839783977B977B55, 0x6B136B13731362D1,  // 0x000060B8 
	0x62916AD162D162D1, 0x62D16AD173136AD3, 0x73137B557B557B57, 0x83D98C19941B7354,  // 0x000060D8 
	0x524E084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x000060F8 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006118 
	0x0842084208420842, 0x0842ACE59C5D8BD9, 0x8BD98BD983977B97, 0x7B5573157B557315,  // 0x00006138 
	0x6AD36AD373557355, 0x731362D16AD37B55, 0x7B557B577B578397, 0x941B941B945B7354,  // 0x00006158 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x00006178 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006198 
	0x0842084208420842, 0x08421082AD25941D, 0x94198BD983977B55, 0x7B557B557B557B55,  // 0x000061B8 
	0x735573137B557355, 0x731573156AD37B55, 0x839783D983978BD9, 0x945B9C9F73540842,  // 0x000061D8 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x000061F8 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006218 
	0x0842084208420842, 0x084208423988AD25, 0x941B941B93D98BD9, 0x8BD98BD983978397,  // 0x00006238 
	0x83977B957B557B55, 0x7B557B557B557315, 0x7B9783978BD98C19, 0x8C1B7B9841CA0842,  // 0x00006258 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x00006278 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006298 
	0x0842084208420842, 0x0842084208425A4E, 0xA5259C9F941B941B, 0x941B941B8C198C19,  // 0x000062B8 
	0x8BD983D783977B97, 0x7B977B977B978397, 0x83D78BD98BD9941B, 0x9CA0084208420842,  // 0x000062D8 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x000062F8 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006318 
	0x0842084208420842, 0x0842084208421042, 0x1042A4E39C9F9C9F, 0x9C5D945D9C5D945B,  // 0x00006338 
	0x941B8C198BD783D7, 0x8397839783978BD7, 0x8BD9941B941BA4E2, 0x1042084208420842,  // 0x00006358 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x00006378 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006398 
	0x0842084208420842, 0x0842084208420842, 0x084231489C5FA461, 0xA4E19C9F9C5D945D,  // 0x000063B8 
	0x8BD98BD98BD98BD9, 0x8BD98BD98BD98BD9, 0x8C19A4E3945E3148, 0x0842084208420842,  // 0x000063D8 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x000063F8 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006418 
	0x0842084208420842, 0x0842084208420842, 0x0842084208427B56, 0x9C9FA4E39CDF9C9F,  // 0x00006438 
	0x9C5D9C5D9C5D9C5D, 0x9C5D9C5D945D9CA1, 0x9CA0524E08420842, 0x0842084208420842,  // 0x00006458 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x00006478 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006498 
	0x0842084208420842, 0x0842084208420842, 0x0842084208420842, 0x08420842AD25A4E3,  // 0x000064B8 
	0xA4E3A4E3A4E3A4E3, 0xA4E3A4E308420842, 0x0842084208420842, 0x0842084208420842,  // 0x000064D8 
	0x0842084208420842, 0x20C620C608420842, 0x0842084208420842, 0x0842084208420842,  // 0x000064F8 
	0x0842084220C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006518 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006538 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006558 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006578 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006598 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x000065B8 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x000065D8 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x000065F8 
	0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6, 0x20C620C620C620C6,  // 0x00006618 
};

u64 _jyasinboss_room_1_tex_00006638[] = 
{
	0x620B6A4B6A4D6A4B, 0x6A4B724D724D6209, 0x6209728B830D8B0B, 0x8B0B82C972497289,  // 0x00006638 
	0x7ACB7ACB728B6249, 0x51C96249728B7ACB, 0x7ACB728B6A896A49, 0x6A4951C751C76209,  // 0x00006658 
	0x62096A496A8B728B, 0x7ACB7ACB7ACB72CB, 0x7ACB7ACB830B728B, 0x6A897ACB834D830D,  // 0x00006678 
	0x8B4D934D934D934D, 0x8B0D7ACB6A4B728B, 0x728B7A8B8ACF830F, 0x82CF728D6A0B620B,  // 0x00006698 
	0x724D6A4D724D6A4D, 0x724D728D724B6209, 0x6A4B82CD82CD8B0D, 0x934D8B0B82CB82CB,  // 0x000066B8 
	0x8B0D8B0B7ACD6A8B, 0x5A09728B82CD8B0D, 0x8B0D82CD7ACB728B, 0x728B620959C76249,  // 0x000066D8 
	0x6A096A4B7A8B7ACB, 0x82CB830D830D82CD, 0x830D830D8B0D7ACB, 0x728B830D8B4D8B4F,  // 0x000066F8 
	0x934F934F9B4D9B4F, 0x930D7ACD728B728B, 0x6A49728B82CF830F, 0x7ACF728D728D6A4D,  // 0x00006718 
	0x724D724D7A8D724D, 0x728D7ACF7A8D7ACD, 0x8B0F8B0F82CB934D, 0xA3D1A38F9B4FA38F,  // 0x00006738 
	0xA3D19B8F934F8B4F, 0x7B0F830F9B919B8F, 0x9B8F934F8B4F8B4F, 0x830D724B6A096A49,  // 0x00006758 
	0x72897A8B830D8B0F, 0x934F934F934F8B0F, 0x934F934F930F8B0D, 0x8B0D934F9B919B91,  // 0x00006778 
	0x9B919B8FA38FA38F, 0x934D830D7ACD7A8B, 0x6A49724B7A8D82CF, 0x82CF7A8D724D728D,  // 0x00006798 
	0x7ACF7ACF7ACD82CF, 0x82CF830F8B0F8B11, 0x8B51930F82CD8B0D, 0xA3D3A3939B91A391,  // 0x000067B8 
	0xA3D39B9193518B51, 0x8B518B518B51A3D3, 0xA3D39B919B919391, 0x830F7ACD724B6A49,  // 0x000067D8 
	0x72897A8B830F8B0F, 0x8B0F9B519B519351, 0x93518B0F8B0F934F, 0x930F93519B519B91,  // 0x000067F8 
	0x9B519B519B919B91, 0x934F8B0D82CD82CD, 0x82CD7A8D7A8D82CF, 0x7A8D7ACF82CF7A8D,  // 0x00006818 
	0x728D7A8D7ACF7ACF, 0x728D7ACF7A8D7ACF, 0x8B0F8B0F82CD8B0F, 0x9B519B939B91A393,  // 0x00006838 
	0x9B939B518B51830F, 0x82CF8B519B939B93, 0xA3D39B919B519351, 0x82CF7ACF6A4B5A09,  // 0x00006858 
	0x5A0962097ACD7ACF, 0x82CF8B1193519351, 0x93518B118B519351, 0x934F93519B519B91,  // 0x00006878 
	0x9B939B9193519351, 0x8B0F8B0F830F82CF, 0x7A8D7A8D728D7ACF, 0x82CF728D6A4D7ACF,  // 0x00006898 
	0x728D7ACF7ACF728D, 0x82CF82CF8B11830F, 0x82CF8B0F8B0F8B0F, 0x8B0F935193519B91,  // 0x000068B8 
	0x93518B0F82CF6A4B, 0x720B82CF8B519351, 0x9B91930F8B0F82CF, 0x7A8D7A8D6A4B59C9,  // 0x000068D8 
	0x414751896A0B6A4D, 0x728D7ACD8B0F8B51, 0x9351935193519351, 0x8B0F930F9B0FA391,  // 0x000068F8 
	0x9B939B918B0F8B0F, 0x82CF7ACF82CF7ACF, 0x724B728D7ACF82CF, 0x82CF728D7A8D728D,  // 0x00006918 
	0x7ACF7ACF7ACF7ACF, 0x82CF830F7ACF82CF, 0x82CF8B0F8B0F7ACD, 0x830F830F830F830F,  // 0x00006938 
	0x82CF82CD7A8D620B, 0x7A8D8ACF8B0F7ACD, 0x7A8D7ACD82CF7ACF, 0x82CD7A8D728D6A4B,  // 0x00006958 
	0x4987518959C9620B, 0x51C9728D8ACF830F, 0x8B0F93518ACF728D, 0x724B82CD9B51A391,  // 0x00006978 
	0xA3939B918B0F830F, 0x7ACD82CF7ACF7ACF, 0x728D728D82CF728D, 0x82CF728D7ACF82CF,  // 0x00006998 
	0x830F830F7ACF7ACF, 0x82CF8B0F8B1182CF, 0x82CF8B0F8B1182CF, 0x82CF82CF7ACF7ACF,  // 0x000069B8 
	0x82CD82CD7A8D5A0B, 0x724D7A8D8B0F82CF, 0x7A8D7A8D7A8D7A8D, 0x7ACD7ACD7ACD620B,  // 0x000069D8 
	0x518959C959C959CB, 0x4989620B728D7ACF, 0x82CF82CF7A8D6A4B, 0x620B724D828D8B0F,  // 0x000069F8 
	0x93118B0F7ACD7A8D, 0x7A8D7ACD7A8F7A8D, 0x7A8D7ACF830F82CF, 0x7ACF7ACF830F830F,  // 0x00006A18 
	0x82CF830F7A8F728D, 0x830F7ACF82CF830F, 0x728D728D728D7A8D, 0x82CF7ACF7ACF82CF,  // 0x00006A38 
	0x7ACD82CF728D59CB, 0x61CB724B82CF8B0F, 0x82CF7A8D728D7A8D, 0x7A8D82CF7A8D59C9,  // 0x00006A58 
	0x61CB620B59CB59C9, 0x518959C96209724D, 0x82CF728D724B724B, 0x624B6A0B620B724D,  // 0x00006A78 
	0x7A8F728D624B6A8D, 0x728D7ACD728D728D, 0x7A8D830F82CF7A8D, 0x830F82CF830F8B11,  // 0x00006A98 
	0x7ACF7A8F7ACF728D, 0x7ACF728D7A8D6A4D, 0x620B620B724D728D, 0x7A8D7A8D82CF82CF,  // 0x00006AB8 
	0x82CF8B0F728D620B, 0x620B724B724D830F, 0x7A8D728D724D7A8D, 0x7A8D7A8D6A0B5189,  // 0x00006AD8 
	0x61CB620B620B59C9, 0x518961C95A09724D, 0x82CF724D6A4B724B, 0x6A4B6A4B620B6A4B,  // 0x00006AF8 
	0x724D6A4B620B5A0B, 0x620B620B59CB59C9, 0x728D728D7ACF6A0B, 0x6A4D6A4D6A4D7ACF,  // 0x00006B18 
	0x620B620B5A0B51C9, 0x620B6A4B6A4B59C9, 0x59CB59C959C9620B, 0x620B6A4B7A8D7A8D,  // 0x00006B38 
	0x7A8D7ACD6A4B59C9, 0x6A4B6A0B620B7A8D, 0x724D6A4B620B724D, 0x724D6A4D59C94949,  // 0x00006B58 
	0x61CB61CB61CB5989, 0x5189620B624B728D, 0x7A8D724D724B724B, 0x6A4B620B6209620B,  // 0x00006B78 
	0x6A0B620B5A0B59C9, 0x59C9518949473907, 0x620B6A0B59CB5189, 0x51C9498951C959CB,  // 0x00006B98 
	0x620B5A0B49894989, 0x51C959CB59CB4989, 0x59C9494749895189, 0x518959CB6A4D6A4B,  // 0x00006BB8 
	0x6A4B6A0B620B59C9, 0x620B620B59C96A4B, 0x6A0B59CB59C9620B, 0x6A0B61CB51894947,  // 0x00006BD8 
	0x59CB598959C95189, 0x5189620B6A4B724D, 0x728D724D724B6A4B, 0x620B59C959C959C9,  // 0x00006BF8 
	0x59C959C959C951C9, 0x5189494730C54147, 0x59C9518951894947, 0x49894147498951C9,  // 0x00006C18 
	0x5A0B5A0B49894989, 0x49895A0B5A0B51C9, 0x4147494949494107, 0x4147518959C951C9,  // 0x00006C38 
	0x51C9518949895189, 0x518959C959C9620B, 0x61CB518951895189, 0x59CB518951894947,  // 0x00006C58 
	0x5189518951895189, 0x59C9620B6A4B6A4B, 0x6A4B6A4B6A4B6A4B, 0x59C9518949474989,  // 0x00006C78 
	0x518951C951894987, 0x4947390730C53907, 0x4147494739073907, 0x3907414751894989,  // 0x00006C98 
	0x51CB498941474149, 0x414749495A0B4147, 0x4107414749494107, 0x38C5410751895189,  // 0x00006CB8 
	0x4989494749475149, 0x494959895989620B, 0x620B518951495189, 0x59CB598959C95149,  // 0x00006CD8 
	0x49495149518951C9, 0x59CB61CB620B61CB, 0x61CB620B620B620B, 0x59C9514949494147,  // 0x00006CF8 
	0x4949498949894947, 0x410730C530C530C5, 0x38C728C528C530C5, 0x30C5414749894147,  // 0x00006D18 
	0x4989414730C53907, 0x4147498941494147, 0x4107390741073085, 0x30C538C741074107,  // 0x00006D38 
	0x390740C741075149, 0x49095149514959C9, 0x59C9494949495149, 0x5989514949494947,  // 0x00006D58 
	0x4107494951895989, 0x618B6189598B5149, 0x5949598B598B5189, 0x5149494749094107,  // 0x00006D78 
	0x4107414741073907, 0x38C730C530C53085, 0x3085204320832885, 0x30C5390731073907,  // 0x00006D98 
	0x418730C508011001, 0x30C5390728852885, 0x2885288528852845, 0x3085308730453085,  // 0x00006DB8 
	0x3087388740C74909, 0x40C7490938C74909, 0x490940C740C740C7, 0x490738C738C738C7,  // 0x00006DD8 
	0x3907410741074949, 0x59496149514948C9, 0x48C94909490940C7, 0x38C740C748C948C9,  // 0x00006DF8 
	0x38C738C730853087, 0x3085308530852845, 0x2845204318031803, 0x204328C539073105,  // 0x00006E18 
};

u64 _jyasinboss_room_1_tex_00006E38[] = 
{
	0x3000000001010000, 0x1220022300111000, 0x0010000111113000, 0x1100000300111100,  // 0x00006E38 
	0x1325201102222200, 0x07AAAA1000322230, 0x0025332422002446, 0x6522330544450033,  // 0x00006E58 
	0x1152230002455455, 0x5201005452032200, 0x0010326665335235, 0x6203332217242200,  // 0x00006E78 
	0x1700464525544444, 0x44223256C4200025, 0x4230055665389A80, 0x5210111110245317,  // 0x00006E98 
	0x1112255603245503, 0x2462331264233546, 0x5333331252711303, 0x5510111311243111,  // 0x00006EB8 
	0x11031105100457AA, 0x7221033354322566, 0x3322301044111302, 0x2632001332421111,  // 0x00006ED8 
	0x1030072533342011, 0x0227033055225464, 0x0325323346087135, 0x4462111334433233,  // 0x00006EF8 
	0x0011034070246233, 0x2440322242202465, 0x1032225546378135, 0x6629977136654665,  // 0x00006F18 
	0x2233244710246555, 0x4651324462002440, 0x102256B444077710, 0x5519111702655222,  // 0x00006F38 
	0x3332465333356664, 0x4511004462102550, 0x0322242135381332, 0x4671103100525022,  // 0x00006F58 
	0x1100556533356522, 0x1871010260000443, 0x0252352026233133, 0x4C01133110556250,  // 0x00006F78 
	0x113110221112519A, 0x8710033344325663, 0x3252054244181771, 0x2451313311356528,  // 0x00006F98 
	0x8000780520054301, 0x0301010135325663, 0x3222025462110077, 0x0528711011125219,  // 0x00006FB8 
	0x8102071520244330, 0x3017113305200443, 0x0256532565300111, 0x1561111111024507,  // 0x00006FD8 
	0x2300000521054233, 0x3010010355535640, 0x2566423565012017, 0x1267113201802211,  // 0x00006FF8 
	0x2201103420134231, 0x0025200326535665, 0x5242202464545317, 0x1548702520024217,  // 0x00007018 
	0x1022225623005521, 0x3544425544002666, 0x6642132466662112, 0x5621110322444310,  // 0x00007038 
	0x2125444271070533, 0x3225546642705400, 0x5453733254428103, 0x5533301130223010,  // 0x00007058 
	0x0110220870011000, 0x0000254528813018, 0x1011131011000000, 0x1110333189888702,  // 0x00007078 
	0x1813231170130177, 0x1107813071010200, 0x1710171118893011, 0x0000100011031030,  // 0x00007098 
	0x1710030332302000, 0x2220117020000222, 0x3133225333220300, 0x3300000032222011,  // 0x000070B8 
	0x0220223333200355, 0x2222020000232200, 0x0003500220000000, 0x3223300002011001,  // 0x000070D8 
	0x0224420033255522, 0x2522222000254455, 0x3333330200000020, 0x2023322252000220,  // 0x000070F8 
	0x0246642033325422, 0x3202223300024B52, 0x3666420000460050, 0x4660030200031000,  // 0x00007118 
	0x5664644031226665, 0x0812363002444510, 0x6666640046464334, 0x656B323520107000,  // 0x00007138 
	0x391625503A056445, 0x0033643305646300, 0x6671651944464106, 0x614B620264001704,  // 0x00007158 
	0x1106805238146588, 0x1333653300541032, 0x6602633004440774, 0x0156621056432004,  // 0x00007178 
	0xA904834038266300, 0x3333643300054003, 0x3656530904442916, 0x3024651705445004,  // 0x00007198 
	0x2026256018346022, 0x3115603331854098, 0x3346630056644095, 0x5056453110542835,  // 0x000071B8 
	0x4446644008146222, 0x3192603333915011, 0x3364320256444412, 0x0044500311345931,  // 0x000071D8 
	0x0546440080226442, 0x3174403342114099, 0x0344332563636492, 0x0566100013565710,  // 0x000071F8 
	0x8125230115666455, 0x3236403344144010, 0x0266432433434412, 0x0661000072451813,  // 0x00007218 
	0x0915417711906781, 0x3136003315466590, 0x546B652633433610, 0x564100077527A803,  // 0x00007238 
	0x0805617870106600, 0x0816600334666412, 0x4655562633433690, 0x3651000174407003,  // 0x00007258 
	0x0772437773256600, 0x1995663336406412, 0x6081260632433600, 0x2640000815450100,  // 0x00007278 
	0x0112421125536600, 0x1193560245014410, 0x6287563622422630, 0x26600021A7564100,  // 0x00007298 
	0x2335441055206611, 0x2233663241115403, 0x6423663662426600, 0x0660302239854130,  // 0x000072B8 
	0x4522451166446300, 0x5442660266444608, 0x6646621262426510, 0x0660333627885130,  // 0x000072D8 
	0x02554277A0665111, 0x2466651046444508, 0x2664427262006013, 0x0040101442206131,  // 0x000072F8 
	0x813550A79A887717, 0x9266710111022119, 0x1035531021330181, 0x0000717545564800,  // 0x00007318 
	0x1997300079998811, 0x8787111899981178, 0xA981130002100011, 0x9093010935551713,  // 0x00007338 
	0x2171032332232332, 0x3017111000100000, 0x1771103301033301, 0x7333300331187100,  // 0x00007358 
	0x0300032000201122, 0x0000330022220002, 0x0223132000033333, 0x2000200333211330,  // 0x00007378 
	0x0022233330201000, 0x0222302252220002, 0x0122003071000000, 0x0022200001071332,  // 0x00007398 
	0x0002500255522290, 0x0000302220002230, 0x1002002233000001, 0x1022311719871010,  // 0x000073B8 
	0x0102555322500011, 0x0001301011133300, 0x3322333035531003, 0x3332230871117178,  // 0x000073D8 
	0x0225451102220790, 0x1110111033311021, 0x1245013202231006, 0x4113330118713311,  // 0x000073F8 
	0x026B41A816445119, 0x2311101356381330, 0x1445111335411064, 0x1910000780266452,  // 0x00007418 
	0x0246653105904299, 0x4650817154873302, 0x36D2171024411063, 0x0024465223521355,  // 0x00007438 
	0x0445443158904279, 0x2442717344881000, 0x1244311364111066, 0x1244236528011A52,  // 0x00007458 
	0x0572550140706538, 0x3442711566313017, 0xA154001045083006, 0x0242811208207051,  // 0x00007478 
	0x0293243362104511, 0x3521808046213301, 0x1826037345074406, 0x0262320608044629,  // 0x00007498 
	0x951056014232B2A7, 0x052081A15B411223, 0x32541134E4011646, 0x0366222608754551,  // 0x000074B8 
	0x842246212032B217, 0x053811113560A101, 0x34643136E5311146, 0x0056646418A24420,  // 0x000074D8 
	0xA254644000024517, 0x0578712373448100, 0x26233315C2201044, 0x40166C6330545522,  // 0x000074F8 
	0x885555400000C511, 0x2288114211468110, 0x541108A0C5231446, 0x4480543256418154,  // 0x00007518 
	0x0802445255326233, 0x6511314203648178, 0x54500092C4200463, 0x368046225439A165,  // 0x00007538 
	0x5131442564554201, 0x4513316420453209, 0x72540002B5013431, 0x36134D4202227244,  // 0x00007558 
	0x00022422B6466500, 0x4431016B52453227, 0xA326B00264102431, 0x36102C4373252542,  // 0x00007578 
	0x1254460165464233, 0x6437185452452052, 0x0225427244111445, 0x4610040002232543,  // 0x00007598 
	0x9354660913232213, 0x4211381254420024, 0x222243126578A104, 0x401142232644430A,  // 0x000075B8 
	0xA900203191223301, 0x3108199822311000, 0x2253311121879912, 0x21A033011103299A,  // 0x000075D8 
	0x9A981337A9321031, 0x31011A711AA81119, 0x9989871777111981, 0x17881111AAA179AA,  // 0x000075F8 
	0x8A98000088120000, 0x0000117011111111, 0x1181711117771771, 0x1181100018701887,  // 0x00007618 
};

u64 _jyasinboss_room_1_tex_00007638[] = 
{
	0x590581C769855105, 0x79C7718771876105, 0x6145590571876947, 0x7187694769476947,  // 0x00007638 
	0x6947610771876147, 0x6147614761476145, 0x50C550C548C548C5, 0x59055907694779C7,  // 0x00007658 
	0x59059A8992879A87, 0x9AC59A859AC59285, 0x92859AC592858A47, 0x82078A079A859285,  // 0x00007678 
	0x9285928582478207, 0x820782478A479285, 0x8A479A4582078A47, 0x928792879A879A47,  // 0x00007698 
	0x614592478A457A05, 0x8A858A8592458A45, 0x8A858A8582458245, 0x6145698572057205,  // 0x000076B8 
	0x720582458A458205, 0x7A0582457A058205, 0x8A0582057A0581C5, 0x82057A058A459A85,  // 0x000076D8 
	0x5105A2C782457205, 0x8A4592458A858A45, 0x8A858A8582458245, 0x7A05720572057205,  // 0x000076F8 
	0x7205820582057A05, 0x8205820582458A45, 0x820581C572057205, 0x7A058A459245A285,  // 0x00007718 
	0x5905928782057205, 0x92458A858A857A45, 0x82458A058A458A85, 0x8A857A4582458245,  // 0x00007738 
	0x82458A458A458A45, 0x8A45924592458A45, 0x82058A0581C58205, 0x8A0592459245A2C5,  // 0x00007758 
	0x6947928782057A05, 0x8A458A8592458A45, 0x7A458A458A858A85, 0x8A857A457A058245,  // 0x00007778 
	0x8A858A858A858A85, 0x924592458A859245, 0x8A4592458A458205, 0x8205924592459245,  // 0x00007798 
	0x694782077A058245, 0x8A858A8592458A85, 0x82458A858A859245, 0x8A857A4582458245,  // 0x000077B8 
	0x82058A458A858A85, 0x9245924592459245, 0x92859A8592859A45, 0x8A45924581C58A07,  // 0x000077D8 
	0x69478A077A057A05, 0x7A058A858A857A45, 0x82057A057A057A05, 0x7A057A057A057A05,  // 0x000077F8 
	0x82458A458A458A85, 0x9245924592459245, 0x9245924592459285, 0x8A8592458A0581C7,  // 0x00007818 
	0x61478A477A057A05, 0x82457A458A8581C5, 0x7A057A0582057A05, 0x7205720571C571C5,  // 0x00007838 
	0x7A05820582058A05, 0x8A458A858A858A45, 0x82058A05820581C5, 0x82058A059A857A07,  // 0x00007858 
	0x79C7820779C57A05, 0x824582457A4581C5, 0x7A0572057A057A05, 0x720571C571C571C5,  // 0x00007878 
	0x71C579C57A058205, 0x820582058A058A45, 0x8245820579C579C5, 0x79C57A0582058A47,  // 0x00007898 
	0x79C78A077A057205, 0x8A458A8581C579C5, 0x79C57205720571C5, 0x71C5720571C571C5,  // 0x000078B8 
	0x79C579C572057A05, 0x82057A057A057A05, 0x79C5694579C579C5, 0x81C5820582059245,  // 0x000078D8 
	0x79879A8572058245, 0x92458A45824579C5, 0x79C579C5720571C5, 0x72057205720571C5,  // 0x000078F8 
	0x79C579C572057A05, 0x82057A0579C581C5, 0x79C5698579C581C5, 0x81C581C58A05A285,  // 0x00007918 
	0x81C7928582458A85, 0x8A858A458A857A05, 0x79C579C571C571C5, 0x71C5720571C56985,  // 0x00007938 
	0x71C579C57A057A05, 0x8205820579C57A05, 0x7A057A0581C581C5, 0x81C579C59245A2C5,  // 0x00007958 
	0x8A0792857A458245, 0x82458285824579C5, 0x79C571C571C56985, 0x71C5720571C56985,  // 0x00007978 
	0x718579C579C57A05, 0x8205820579C58205, 0x79C571C579C58205, 0x820581C58A05A285,  // 0x00007998 
	0x79C78A4772057A05, 0x72057A0579C579C5, 0x7185718571856985, 0x698571C571856985,  // 0x000079B8 
	0x79C581C581C58205, 0x820579C579C581C5, 0x81C579C571C58205, 0x8A45820582059A45,  // 0x000079D8 
	0x81C78A4779C579C5, 0x79C571C579C57185, 0x7185698569856945, 0x698571C571856985,  // 0x000079F8 
	0x7A0581C581C58205, 0x820579C579C579C5, 0x81C581C57A058205, 0x8205820582059A45,  // 0x00007A18 
	0x81C7820771C579C5, 0x79C5720571C56985, 0x7185698569856985, 0x71C579C571857185,  // 0x00007A38 
	0x79C581C581C581C5, 0x820581C581C581C5, 0x81C5820582058205, 0x81C581C581C59A45,  // 0x00007A58 
	0x81C779C771C571C5, 0x71C5720572056985, 0x71857185694571C5, 0x79C581C5718579C5,  // 0x00007A78 
	0x81C581C58A0581C5, 0x8A058A0581C581C5, 0x81C579C581C579C5, 0x81C581C581C59245,  // 0x00007A98 
	0x81C78A877A4579C5, 0x71C571C57A057185, 0x71857985718579C5, 0x81C5820581C581C5,  // 0x00007AB8 
	0x81C581C58A058A05, 0x8A058A0581C581C5, 0x81C579C579C571C5, 0x79C579858A059A45,  // 0x00007AD8 
	0x81C78A877A457A05, 0x71C57A058A0581C5, 0x79C579C581C581C5, 0x82058A45820581C5,  // 0x00007AF8 
	0x81C581C58A058A05, 0x8A058A058A058A05, 0x820579C579C579C5, 0x79C579858A059A45,  // 0x00007B18 
	0x8A07824772057205, 0x7205824582457A05, 0x7A057A0582058205, 0x8245824582458205,  // 0x00007B38 
	0x82058A058A059245, 0x9245924592459245, 0x92458A058A058A05, 0x8A058A0582059A45,  // 0x00007B58 
	0x79C7820772057205, 0x7205720572057205, 0x720572057A057A05, 0x7A05824582457A45,  // 0x00007B78 
	0x82458A4592459285, 0x9A85924592458A85, 0x8A8592458A858A85, 0x8A858A458A059245,  // 0x00007B98 
	0x8A078A4772057205, 0x7205720572057205, 0x7205720572057A05, 0x7A05824582458245,  // 0x00007BB8 
	0x7A4582458A458A45, 0x92458A4582458A85, 0x82458A858A858A85, 0x8A858A8582458A47,  // 0x00007BD8 
	0x81C78A4772057205, 0x7205720572057205, 0x7205720572057205, 0x7A057A0571C571C5,  // 0x00007BF8 
	0x7A0582457A457A45, 0x8A8582457A058245, 0x7A05824582458245, 0x824582457A059A87,  // 0x00007C18 
	0x69478A8772057A05, 0x72057205720569C5, 0x7205720572057205, 0x720582457A057205,  // 0x00007C38 
	0x820582057A058245, 0x82457A057A057A05, 0x7A057A057A057A05, 0x7A057A057A059A87,  // 0x00007C58 
	0x694792857A058245, 0x7A057A057A0571C5, 0x71C571C571C571C5, 0x71C57A0571C579C5,  // 0x00007C78 
	0x7A0582058A458A85, 0x824582458A858245, 0x8A8582458A858A85, 0x8A858A858A45A307,  // 0x00007C98 
	0x79C7A2C58A457A05, 0x82458A8582857205, 0x7A057A0572057205, 0x7205824582458245,  // 0x00007CB8 
	0x8A858A458A458A45, 0x8A458A4582457A45, 0x82457A058A858245, 0x824582457A059AC7,  // 0x00007CD8 
	0x7187A2C58A858A85, 0x7A058245824571C5, 0x720571C571C569C5, 0x71C5720582457A45,  // 0x00007CF8 
	0x824582457A458245, 0x82458A058A458A45, 0x8A457A0582457A05, 0x7A0572057A05A2C7,  // 0x00007D18 
	0x6145A2C58A858A85, 0x7A057A057A057205, 0x72057205720569C5, 0x71C5720571C571C5,  // 0x00007D38 
	0x7A05720572057A05, 0x7A05720572057205, 0x72057205720569C5, 0x69C569856985AB09,  // 0x00007D58 
	0x6985B3079A857A05, 0x7A0582458A857A05, 0x720569C5720569C5, 0x698571C57A057205,  // 0x00007D78 
	0x79C581C581C581C5, 0x81C581C581C581C5, 0x79C571C571C56985, 0x6985698579C7A2C9,  // 0x00007D98 
	0x6945A285A2C59245, 0x924582058A457A05, 0x7A05720582457A05, 0x82058A058A058A05,  // 0x00007DB8 
	0x82058A058A058205, 0x81C581C58A0581C5, 0x81C581C579C571C5, 0x6985718582079247,  // 0x00007DD8 
	0x694792459A459A87, 0x9A859A85A285A285, 0x92458A4792459245, 0x924592059A459A45,  // 0x00007DF8 
	0x9245924592058A07, 0x8A078A0782478207, 0x8A477A0771877187, 0x718581C792479249,  // 0x00007E18 
};

static u8 unaccounted7E38[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


