#include <ultra64.h>
#include <z64.h>
#include "jyasinzou_room_17.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "jyasinzou_scene.h"



SCmdEchoSettings _jyasinzou_room_17_set0000_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0000
SCmdRoomBehavior _jyasinzou_room_17_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _jyasinzou_room_17_set0000_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0010
SCmdTimeSettings _jyasinzou_room_17_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _jyasinzou_room_17_set0000_cmd04 = { 0x0A, 0, (u32)&_jyasinzou_room_17_meshHeader_00000100 }; // 0x0020
SCmdObjectList _jyasinzou_room_17_set0000_cmd05 = { 0x0B, 0x06, (u32)_jyasinzou_room_17_objectList_00000040 }; // 0x0028
SCmdActorList _jyasinzou_room_17_set0000_cmd06 = { 0x01, 0x0B, (u32)_jyasinzou_room_17_actorList_0000004C }; // 0x0030
SCmdEndMarker _jyasinzou_room_17_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _jyasinzou_room_17_objectList_00000040[] = 
{
	OBJECT_JYA_OBJ,
	OBJECT_JYA_DOOR,
	OBJECT_BOX,
	OBJECT_VM,
	OBJECT_TIMEBLOCK,
	OBJECT_EFC_TW,
};

ActorEntry _jyasinzou_room_17_actorList_0000004C[11] = 
{
	{ ACTOR_OBJ_KIBAKO, 1382, 1083, 190, 0, -16384, 0, 0xFFFF }, //0x0000004C 
	{ ACTOR_OBJ_SWITCH, 1463, 843, -291, 0, 0, 0, 0x2C20 }, //0x0000005C 
	{ ACTOR_OBJ_WARP2BLOCK, 1382, 884, 189, 0, 0, 0, 0x1839 }, //0x0000006C 
	{ ACTOR_OBJ_WARP2BLOCK, 1382, 984, 189, 0, 0, 0, 0x9839 }, //0x0000007C 
	{ ACTOR_OBJ_WARP2BLOCK, 1382, 743, 189, 0, 0, 0, 0x183A }, //0x0000008C 
	{ ACTOR_OBJ_WARP2BLOCK, 1467, 843, -281, 0, 0, 0, 0x983A }, //0x0000009C 
	{ ACTOR_EN_VM, 1296, 843, 55, 0, 16384, 0, 0x0400 }, //0x000000AC 
	{ ACTOR_EN_VM, 1469, 843, 55, 0, -32768, 0, 0x0400 }, //0x000000BC 
	{ ACTOR_EN_VM, 1465, 843, -117, 0, -16384, 0, 0x0400 }, //0x000000CC 
	{ ACTOR_EN_VM, 1293, 843, -111, 0, 0, 0, 0x0401 }, //0x000000DC 
	{ ACTOR_EN_BOX, 1645, 843, -119, 0, 16384, 0, 0x7979 }, //0x000000EC 
};

static u32 padFC = 0;

MeshHeader2 _jyasinzou_room_17_meshHeader_00000100 = { { 2 }, 0x05, (u32)&_jyasinzou_room_17_meshDListEntry_0000010C, (u32)&(_jyasinzou_room_17_meshDListEntry_0000010C) + sizeof(_jyasinzou_room_17_meshDListEntry_0000010C) };

MeshEntry2 _jyasinzou_room_17_meshDListEntry_0000010C[5] = 
{
	{ 1380, 963, -30, 440, (u32)_jyasinzou_room_17_dlist_00000980, 0 },
	{ 1130, 843, -210, 122, (u32)_jyasinzou_room_17_dlist_000011F0, 0 },
	{ 1380, 843, -30, 438, (u32)_jyasinzou_room_17_dlist_00001850, 0 },
	{ 1380, 663, -30, 460, (u32)_jyasinzou_room_17_dlist_00003258, 0 },
	{ 1380, 483, -30, 424, (u32)_jyasinzou_room_17_dlist_00005D38, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

static u8 unaccounted0160[] = 
{
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

Vtx_t _jyasinzou_room_17_vertices_000001C0[17] = 
{
	 { 1680, 843, 90, 0, -341, 1024, 115, 102, 78, 255 }, // 0x000001C0
	 { 1700, 843, 90, 0, 0, 1024, 115, 102, 78, 255 }, // 0x000001D0
	 { 1700, 1003, 90, 0, 0, -341, 69, 62, 48, 255 }, // 0x000001E0
	 { 1680, 1003, 90, 0, -341, -341, 69, 62, 48, 255 }, // 0x000001F0
	 { 1680, 1003, 90, 0, 0, -171, 69, 62, 48, 255 }, // 0x00000200
	 { 1700, 1003, 90, 0, 0, 0, 69, 62, 48, 255 }, // 0x00000210
	 { 1700, 1003, 210, 0, 2048, 0, 69, 62, 48, 255 }, // 0x00000220
	 { 1680, 1003, 210, 0, 2048, -171, 69, 62, 48, 255 }, // 0x00000230
	 { 1680, 1003, 210, 0, 683, -341, 69, 62, 48, 255 }, // 0x00000240
	 { 1700, 1003, 210, 0, 341, -341, 69, 62, 48, 255 }, // 0x00000250
	 { 1700, 843, 210, 0, 341, 1024, 115, 102, 78, 255 }, // 0x00000260
	 { 1680, 843, 210, 0, 683, 1024, 115, 102, 78, 255 }, // 0x00000270
	 { 1080, 843, 270, 0, 9362, 1024, 81, 72, 55, 255 }, // 0x00000280
	 { 1300, 1003, 270, 0, 5608, -341, 158, 142, 111, 255 }, // 0x00000290
	 { 1300, 883, 270, 0, 5608, 683, 134, 119, 89, 255 }, // 0x000002A0
	 { 1080, 1083, 270, 0, 9362, -1024, 52, 49, 38, 255 }, // 0x000002B0
	 { 1300, 1043, 270, 0, 5608, -683, 115, 102, 78, 255 }, // 0x000002C0
};

Vtx_t _jyasinzou_room_17_vertices_000002D0[3] = 
{
	 { 1300, 1043, 270, 0, 2048, 0, 115, 102, 78, 255 }, // 0x000002D0
	 { 1380, 1003, 270, 0, 0, 1024, 115, 102, 78, 255 }, // 0x000002E0
	 { 1300, 1003, 270, 0, 2048, 1024, 158, 142, 111, 255 }, // 0x000002F0
};

Vtx_t _jyasinzou_room_17_vertices_00000300[3] = 
{
	 { 1380, 1003, 270, 0, 2731, -2048, 178, 255, 239, 255 }, // 0x00000300
	 { 1300, 883, 270, 0, 5461, 2048, 205, 255, 235, 255 }, // 0x00000310
	 { 1300, 1003, 270, 0, 5461, -2048, 178, 255, 239, 255 }, // 0x00000320
};

Vtx_t _jyasinzou_room_17_vertices_00000330[6] = 
{
	 { 1080, 843, 270, 0, 9362, 1024, 81, 72, 55, 255 }, // 0x00000330
	 { 1300, 883, 270, 0, 5608, 683, 134, 119, 89, 255 }, // 0x00000340
	 { 1251, 843, 270, 0, 6437, 1024, 81, 72, 55, 255 }, // 0x00000350
	 { 1460, 883, 270, 0, 2877, 683, 134, 119, 89, 255 }, // 0x00000360
	 { 1509, 843, 270, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x00000370
	 { 1680, 843, 270, 0, -878, 1024, 52, 49, 38, 255 }, // 0x00000380
};

Vtx_t _jyasinzou_room_17_vertices_00000390[4] = 
{
	 { 1300, 883, 270, 0, 5461, 2048, 205, 255, 235, 255 }, // 0x00000390
	 { 1380, 1003, 270, 0, 2731, -2048, 178, 255, 239, 255 }, // 0x000003A0
	 { 1460, 883, 270, 0, 0, 2048, 205, 255, 235, 255 }, // 0x000003B0
	 { 1460, 1003, 270, 0, 0, -2048, 178, 255, 239, 255 }, // 0x000003C0
};

Vtx_t _jyasinzou_room_17_vertices_000003D0[3] = 
{
	 { 1380, 1003, 270, 0, 0, 1024, 115, 102, 78, 255 }, // 0x000003D0
	 { 1460, 1043, 270, 0, -2048, 0, 115, 102, 78, 255 }, // 0x000003E0
	 { 1460, 1003, 270, 0, -2048, 1024, 158, 142, 111, 255 }, // 0x000003F0
};

Vtx_t _jyasinzou_room_17_vertices_00000400[7] = 
{
	 { 1460, 1043, 270, 0, 2877, -683, 115, 102, 78, 255 }, // 0x00000400
	 { 1680, 1083, 270, 0, -878, -1024, 52, 49, 38, 255 }, // 0x00000410
	 { 1460, 1003, 270, 0, 2877, -341, 158, 142, 111, 255 }, // 0x00000420
	 { 1680, 843, 270, 0, -878, 1024, 52, 49, 38, 255 }, // 0x00000430
	 { 1460, 883, 270, 0, 2877, 683, 134, 119, 89, 255 }, // 0x00000440
	 { 1080, 1083, 270, 0, 9362, -1024, 52, 49, 38, 255 }, // 0x00000450
	 { 1300, 1043, 270, 0, 5608, -683, 115, 102, 78, 255 }, // 0x00000460
};

Vtx_t _jyasinzou_room_17_vertices_00000470[3] = 
{
	 { 1460, 1043, 270, 0, -2048, 0, 115, 102, 78, 255 }, // 0x00000470
	 { 1380, 1003, 270, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00000480
	 { 1300, 1043, 270, 0, 2048, 0, 115, 102, 78, 255 }, // 0x00000490
};

Vtx_t _jyasinzou_room_17_vertices_000004A0[5] = 
{
	 { 1080, 1083, 270, 0, 5120, 5120, 52, 49, 38, 255 }, // 0x000004A0
	 { 1380, 1083, -30, 0, 2560, 2560, 81, 72, 55, 255 }, // 0x000004B0
	 { 1680, 1083, 270, 0, 0, 5120, 52, 49, 38, 255 }, // 0x000004C0
	 { 1680, 1083, -330, 0, 0, 0, 52, 49, 38, 255 }, // 0x000004D0
	 { 1080, 1083, -330, 0, 5120, 0, 52, 49, 38, 255 }, // 0x000004E0
};

Vtx_t _jyasinzou_room_17_vertices_000004F0[4] = 
{
	 { 1080, 1003, -270, 0, 341, -341, 69, 62, 48, 255 }, // 0x000004F0
	 { 1060, 1003, -270, 0, 0, -341, 69, 62, 48, 255 }, // 0x00000500
	 { 1060, 843, -270, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00000510
	 { 1080, 843, -270, 0, 341, 1024, 115, 102, 78, 255 }, // 0x00000520
};

Vtx_t _jyasinzou_room_17_vertices_00000530[4] = 
{
	 { 1080, 1003, -150, 0, 1195, 512, 69, 62, 48, 255 }, // 0x00000530
	 { 1060, 1003, -150, 0, 1024, 512, 69, 62, 48, 255 }, // 0x00000540
	 { 1060, 1003, -270, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00000550
	 { 1080, 1003, -270, 0, 1195, 1024, 69, 62, 48, 255 }, // 0x00000560
};

Vtx_t _jyasinzou_room_17_vertices_00000570[57] = 
{
	 { 1080, 843, -150, 0, 1707, 1024, 115, 102, 78, 255 }, // 0x00000570
	 { 1060, 843, -150, 0, 2048, 1024, 115, 102, 78, 255 }, // 0x00000580
	 { 1060, 1003, -150, 0, 2048, -341, 69, 62, 48, 255 }, // 0x00000590
	 { 1080, 1003, -150, 0, 1707, -341, 69, 62, 48, 255 }, // 0x000005A0
	 { 1080, 1083, -200, 0, 8021, -1024, 52, 49, 38, 255 }, // 0x000005B0
	 { 1080, 1083, -90, 0, 6144, -1024, 52, 49, 38, 255 }, // 0x000005C0
	 { 1080, 1003, -150, 0, 7168, -341, 134, 119, 89, 255 }, // 0x000005D0
	 { 1080, 1003, -270, 0, 9216, -341, 134, 119, 89, 255 }, // 0x000005E0
	 { 1080, 1083, -330, 0, 10240, -1024, 52, 49, 38, 255 }, // 0x000005F0
	 { 1080, 843, -330, 0, 10240, 1024, 81, 72, 55, 255 }, // 0x00000600
	 { 1080, 843, -270, 0, 9216, 1024, 69, 62, 48, 255 }, // 0x00000610
	 { 1680, 843, -330, 0, 10240, 1024, 81, 72, 55, 255 }, // 0x00000620
	 { 1380, 963, -330, 0, 5120, 0, 147, 131, 97, 255 }, // 0x00000630
	 { 1509, 843, -330, 0, 7314, 1024, 81, 72, 55, 255 }, // 0x00000640
	 { 1423, 843, -330, 0, 5851, 1024, 81, 72, 55, 255 }, // 0x00000650
	 { 1251, 843, -330, 0, 2926, 1024, 81, 72, 55, 255 }, // 0x00000660
	 { 1080, 843, -330, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00000670
	 { 1080, 1083, -330, 0, 0, -1024, 52, 49, 38, 255 }, // 0x00000680
	 { 1680, 1083, -330, 0, 10240, -1024, 52, 49, 38, 255 }, // 0x00000690
	 { 1680, 1003, 90, 0, 2048, -341, 115, 102, 78, 255 }, // 0x000006A0
	 { 1680, 1003, 210, 0, 4096, -341, 115, 102, 78, 255 }, // 0x000006B0
	 { 1680, 1083, 270, 0, 5120, -1024, 52, 49, 38, 255 }, // 0x000006C0
	 { 1680, 1083, -330, 0, -5120, -1024, 52, 49, 38, 255 }, // 0x000006D0
	 { 1680, 843, -330, 0, -5120, 1024, 81, 72, 55, 255 }, // 0x000006E0
	 { 1680, 963, -30, 0, 0, 0, 147, 131, 97, 255 }, // 0x000006F0
	 { 1680, 843, -159, 0, -2194, 1024, 81, 72, 55, 255 }, // 0x00000700
	 { 1680, 843, -73, 0, -731, 1024, 81, 72, 55, 255 }, // 0x00000710
	 { 1680, 843, 13, 0, 731, 1024, 81, 72, 55, 255 }, // 0x00000720
	 { 1680, 843, 90, 0, 2048, 1024, 115, 102, 78, 255 }, // 0x00000730
	 { 1680, 843, 270, 0, 5120, 1024, 52, 49, 38, 255 }, // 0x00000740
	 { 1680, 843, 210, 0, 4096, 1024, 115, 102, 78, 255 }, // 0x00000750
	 { 1080, 1083, -90, 0, 6144, -1024, 52, 49, 38, 255 }, // 0x00000760
	 { 1080, 943, -30, 0, 5120, 171, 147, 131, 97, 255 }, // 0x00000770
	 { 1080, 1003, -150, 0, 7168, -341, 134, 119, 89, 255 }, // 0x00000780
	 { 1080, 1083, 30, 0, 4096, -1024, 52, 49, 38, 255 }, // 0x00000790
	 { 1080, 1003, 90, 0, 3072, -341, 134, 119, 89, 255 }, // 0x000007A0
	 { 1080, 843, 90, 0, 3072, 1024, 69, 62, 48, 255 }, // 0x000007B0
	 { 1080, 843, 13, 0, 4389, 1024, 81, 72, 55, 255 }, // 0x000007C0
	 { 1080, 843, -73, 0, 5851, 1024, 81, 72, 55, 255 }, // 0x000007D0
	 { 1080, 843, -150, 0, 7168, 1024, 69, 62, 48, 255 }, // 0x000007E0
	 { 1080, 843, 210, 0, 0, 1024, 115, 102, 78, 255 }, // 0x000007F0
	 { 1060, 843, 210, 0, 341, 1024, 100, 89, 67, 255 }, // 0x00000800
	 { 1060, 1003, 210, 0, 341, -341, 52, 49, 38, 255 }, // 0x00000810
	 { 1080, 1003, 210, 0, 0, -341, 52, 49, 38, 255 }, // 0x00000820
	 { 1080, 1003, 90, 0, 0, -341, 52, 49, 38, 255 }, // 0x00000830
	 { 1060, 1003, 90, 0, 341, -341, 52, 49, 38, 255 }, // 0x00000840
	 { 1060, 843, 90, 0, 341, 1024, 100, 89, 67, 255 }, // 0x00000850
	 { 1080, 843, 90, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00000860
	 { 1080, 1003, 210, 0, 0, 1024, 52, 49, 38, 255 }, // 0x00000870
	 { 1060, 1003, 210, 0, 0, 853, 52, 49, 38, 255 }, // 0x00000880
	 { 1060, 1003, 90, 0, 2048, 853, 52, 49, 38, 255 }, // 0x00000890
	 { 1080, 1003, 90, 0, 2048, 1024, 52, 49, 38, 255 }, // 0x000008A0
	 { 1080, 1003, 210, 0, 1024, -341, 134, 119, 89, 255 }, // 0x000008B0
	 { 1080, 843, 270, 0, 0, 1024, 81, 72, 55, 255 }, // 0x000008C0
	 { 1080, 843, 210, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x000008D0
	 { 1080, 1083, 270, 0, 0, -1024, 52, 49, 38, 255 }, // 0x000008E0
	 { 1080, 1083, 160, 0, 1877, -1024, 52, 49, 38, 255 }, // 0x000008F0
};

Vtx_t _jyasinzou_room_17_vertices_00000900[8] = 
{
	 { 1060, 843, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000900
	 { 1700, 843, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000910
	 { 1060, 1083, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000920
	 { 1700, 1083, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000930
	 { 1060, 843, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000940
	 { 1700, 843, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000950
	 { 1060, 1083, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000960
	 { 1700, 1083, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000970
};

Gfx _jyasinzou_room_17_dlist_00000980[] =
{
	gsDPPipeSync(), // 0x00000980
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000988
	gsSPVertex(_jyasinzou_room_17_vertices_00000900, 8, 0), // 0x00000990
	gsSPCullDisplayList(0, 7), // 0x00000998
	gsDPPipeSync(), // 0x000009A0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000009A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000009B0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000009B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00006650), // 0x000009C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000009C8
	gsDPLoadSync(), // 0x000009D0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000009D8
	gsDPPipeSync(), // 0x000009E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000009E8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000009F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x000009F8
	gsDPTileSync(), // 0x00000A00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000A08
	gsDPLoadSync(), // 0x00000A10
	gsDPLoadTLUTCmd(7, 255), // 0x00000A18
	gsDPPipeSync(), // 0x00000A20
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000A28
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000A30
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000A38
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000A40
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000A48
	gsSPVertex(_jyasinzou_room_17_vertices_000001C0, 17, 0), // 0x00000A50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000A58
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000A60
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000A68
	gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0), // 0x00000A70
	gsSP1Triangle(15, 16, 13, 0), // 0x00000A78
	gsDPPipeSync(), // 0x00000A80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007A50), // 0x00000A88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000A90
	gsDPLoadSync(), // 0x00000A98
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000AA0
	gsDPPipeSync(), // 0x00000AA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000AB0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000AB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00000AC0
	gsDPTileSync(), // 0x00000AC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000AD0
	gsDPLoadSync(), // 0x00000AD8
	gsDPLoadTLUTCmd(7, 255), // 0x00000AE0
	gsDPPipeSync(), // 0x00000AE8
	gsSPVertex(_jyasinzou_room_17_vertices_000002D0, 3, 0), // 0x00000AF0
	gsSP1Triangle(0, 1, 2, 0), // 0x00000AF8
	gsDPPipeSync(), // 0x00000B00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008250), // 0x00000B08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000B10
	gsDPLoadSync(), // 0x00000B18
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000B20
	gsDPPipeSync(), // 0x00000B28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000B30
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000B38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017FE0), // 0x00000B40
	gsDPTileSync(), // 0x00000B48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000B50
	gsDPLoadSync(), // 0x00000B58
	gsDPLoadTLUTCmd(7, 15), // 0x00000B60
	gsDPPipeSync(), // 0x00000B68
	gsSPVertex(_jyasinzou_room_17_vertices_00000300, 3, 0), // 0x00000B70
	gsSP1Triangle(0, 1, 2, 0), // 0x00000B78
	gsDPPipeSync(), // 0x00000B80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00006650), // 0x00000B88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000B90
	gsDPLoadSync(), // 0x00000B98
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000BA0
	gsDPPipeSync(), // 0x00000BA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000BB0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000BB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00000BC0
	gsDPTileSync(), // 0x00000BC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000BD0
	gsDPLoadSync(), // 0x00000BD8
	gsDPLoadTLUTCmd(7, 255), // 0x00000BE0
	gsDPPipeSync(), // 0x00000BE8
	gsSPVertex(_jyasinzou_room_17_vertices_00000330, 6, 0), // 0x00000BF0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0), // 0x00000BF8
	gsSP2Triangles(1, 4, 2, 0, 3, 5, 4, 0), // 0x00000C00
	gsDPPipeSync(), // 0x00000C08
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008250), // 0x00000C10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000C18
	gsDPLoadSync(), // 0x00000C20
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000C28
	gsDPPipeSync(), // 0x00000C30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000C38
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000C40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017FE0), // 0x00000C48
	gsDPTileSync(), // 0x00000C50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000C58
	gsDPLoadSync(), // 0x00000C60
	gsDPLoadTLUTCmd(7, 15), // 0x00000C68
	gsDPPipeSync(), // 0x00000C70
	gsSPVertex(_jyasinzou_room_17_vertices_00000390, 4, 0), // 0x00000C78
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000C80
	gsDPPipeSync(), // 0x00000C88
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007A50), // 0x00000C90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000C98
	gsDPLoadSync(), // 0x00000CA0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000CA8
	gsDPPipeSync(), // 0x00000CB0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000CB8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000CC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00000CC8
	gsDPTileSync(), // 0x00000CD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000CD8
	gsDPLoadSync(), // 0x00000CE0
	gsDPLoadTLUTCmd(7, 255), // 0x00000CE8
	gsDPPipeSync(), // 0x00000CF0
	gsSPVertex(_jyasinzou_room_17_vertices_000003D0, 3, 0), // 0x00000CF8
	gsSP1Triangle(0, 1, 2, 0), // 0x00000D00
	gsDPPipeSync(), // 0x00000D08
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00006650), // 0x00000D10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000D18
	gsDPLoadSync(), // 0x00000D20
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000D28
	gsDPPipeSync(), // 0x00000D30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000D38
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000D40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00000D48
	gsDPTileSync(), // 0x00000D50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000D58
	gsDPLoadSync(), // 0x00000D60
	gsDPLoadTLUTCmd(7, 255), // 0x00000D68
	gsDPPipeSync(), // 0x00000D70
	gsSPVertex(_jyasinzou_room_17_vertices_00000400, 7, 0), // 0x00000D78
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000D80
	gsSP2Triangles(3, 4, 2, 0, 5, 1, 0, 0), // 0x00000D88
	gsSP1Triangle(5, 0, 6, 0), // 0x00000D90
	gsDPPipeSync(), // 0x00000D98
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007A50), // 0x00000DA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000DA8
	gsDPLoadSync(), // 0x00000DB0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000DB8
	gsDPPipeSync(), // 0x00000DC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000DC8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000DD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00000DD8
	gsDPTileSync(), // 0x00000DE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000DE8
	gsDPLoadSync(), // 0x00000DF0
	gsDPLoadTLUTCmd(7, 255), // 0x00000DF8
	gsDPPipeSync(), // 0x00000E00
	gsSPVertex(_jyasinzou_room_17_vertices_00000470, 3, 0), // 0x00000E08
	gsSP1Triangle(0, 1, 2, 0), // 0x00000E10
	gsDPPipeSync(), // 0x00000E18
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000E20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000E28
	gsDPLoadSync(), // 0x00000E30
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000E38
	gsDPPipeSync(), // 0x00000E40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000E48
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000E50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000E58
	gsDPTileSync(), // 0x00000E60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000E68
	gsDPLoadSync(), // 0x00000E70
	gsDPLoadTLUTCmd(7, 15), // 0x00000E78
	gsDPPipeSync(), // 0x00000E80
	gsSPVertex(_jyasinzou_room_17_vertices_000004A0, 5, 0), // 0x00000E88
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000E90
	gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0), // 0x00000E98
	gsDPPipeSync(), // 0x00000EA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00006650), // 0x00000EA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000EB0
	gsDPLoadSync(), // 0x00000EB8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000EC0
	gsDPPipeSync(), // 0x00000EC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000ED0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000ED8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00000EE0
	gsDPTileSync(), // 0x00000EE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000EF0
	gsDPLoadSync(), // 0x00000EF8
	gsDPLoadTLUTCmd(7, 255), // 0x00000F00
	gsDPPipeSync(), // 0x00000F08
	gsSPVertex(_jyasinzou_room_17_vertices_000004F0, 4, 0), // 0x00000F10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000F18
	gsDPPipeSync(), // 0x00000F20
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008E50), // 0x00000F28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000F30
	gsDPLoadSync(), // 0x00000F38
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000F40
	gsDPPipeSync(), // 0x00000F48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000F50
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000F58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000F60
	gsDPTileSync(), // 0x00000F68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000F70
	gsDPLoadSync(), // 0x00000F78
	gsDPLoadTLUTCmd(7, 15), // 0x00000F80
	gsDPPipeSync(), // 0x00000F88
	gsSPVertex(_jyasinzou_room_17_vertices_00000530, 4, 0), // 0x00000F90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000F98
	gsDPPipeSync(), // 0x00000FA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00006650), // 0x00000FA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000FB0
	gsDPLoadSync(), // 0x00000FB8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000FC0
	gsDPPipeSync(), // 0x00000FC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000FD0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000FD8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00000FE0
	gsDPTileSync(), // 0x00000FE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000FF0
	gsDPLoadSync(), // 0x00000FF8
	gsDPLoadTLUTCmd(7, 255), // 0x00001000
	gsDPPipeSync(), // 0x00001008
	gsSPVertex(_jyasinzou_room_17_vertices_00000570, 32, 0), // 0x00001010
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001018
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001020
	gsSP2Triangles(8, 4, 7, 0, 9, 8, 7, 0), // 0x00001028
	gsSP2Triangles(9, 7, 10, 0, 11, 12, 13, 0), // 0x00001030
	gsSP2Triangles(12, 14, 13, 0, 12, 15, 14, 0), // 0x00001038
	gsSP2Triangles(12, 16, 15, 0, 12, 17, 16, 0), // 0x00001040
	gsSP2Triangles(11, 18, 12, 0, 18, 17, 12, 0), // 0x00001048
	gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0), // 0x00001050
	gsSP2Triangles(23, 25, 24, 0, 25, 26, 24, 0), // 0x00001058
	gsSP2Triangles(26, 27, 24, 0, 27, 28, 24, 0), // 0x00001060
	gsSP2Triangles(28, 19, 24, 0, 20, 29, 21, 0), // 0x00001068
	gsSP2Triangles(20, 30, 29, 0, 21, 22, 19, 0), // 0x00001070
	gsSP1Triangle(22, 24, 19, 0), // 0x00001078
	gsSPVertex(_jyasinzou_room_17_vertices_00000760, 26, 0), // 0x00001080
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001088
	gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0), // 0x00001090
	gsSP2Triangles(5, 6, 1, 0, 6, 7, 1, 0), // 0x00001098
	gsSP2Triangles(7, 8, 1, 0, 8, 2, 1, 0), // 0x000010A0
	gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0), // 0x000010A8
	gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0), // 0x000010B0
	gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0), // 0x000010B8
	gsSP2Triangles(21, 22, 23, 0, 24, 22, 21, 0), // 0x000010C0
	gsSP2Triangles(25, 24, 21, 0, 25, 21, 4, 0), // 0x000010C8
	gsSP1Triangle(3, 25, 4, 0), // 0x000010D0
	gsSPEndDisplayList(), // 0x000010D8
};

Vtx_t _jyasinzou_room_17_vertices_000010E0[9] = 
{
	 { 1200, 843, -210, 0, 2048, -1434, 115, 102, 78, 255 }, // 0x000010E0
	 { 1080, 843, -310, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000010F0
	 { 1080, 843, -270, 0, 819, 1024, 52, 49, 38, 255 }, // 0x00001100
	 { 1200, 843, -310, 0, 0, -1434, 115, 102, 78, 255 }, // 0x00001110
	 { 1080, 843, -150, 0, 3277, 1024, 52, 49, 38, 255 }, // 0x00001120
	 { 1080, 843, -110, 0, 4096, 1024, 69, 62, 48, 255 }, // 0x00001130
	 { 1200, 843, -110, 0, 4096, -1434, 189, 178, 157, 255 }, // 0x00001140
	 { 1060, 843, -150, 0, 3277, 1434, 52, 49, 38, 255 }, // 0x00001150
	 { 1060, 843, -270, 0, 819, 1434, 52, 49, 38, 255 }, // 0x00001160
};

Vtx_t _jyasinzou_room_17_vertices_00001170[8] = 
{
	 { 1060, 843, -310, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001170
	 { 1200, 843, -310, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001180
	 { 1060, 843, -310, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001190
	 { 1200, 843, -310, 0, 0, 0, 0, 0, 0, 0 }, // 0x000011A0
	 { 1060, 843, -110, 0, 0, 0, 0, 0, 0, 0 }, // 0x000011B0
	 { 1200, 843, -110, 0, 0, 0, 0, 0, 0, 0 }, // 0x000011C0
	 { 1060, 843, -110, 0, 0, 0, 0, 0, 0, 0 }, // 0x000011D0
	 { 1200, 843, -110, 0, 0, 0, 0, 0, 0, 0 }, // 0x000011E0
};

Gfx _jyasinzou_room_17_dlist_000011F0[] =
{
	gsDPPipeSync(), // 0x000011F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000011F8
	gsSPVertex(_jyasinzou_room_17_vertices_00001170, 8, 0), // 0x00001200
	gsSPCullDisplayList(0, 7), // 0x00001208
	gsDPPipeSync(), // 0x00001210
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001218
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001220
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001228
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00005E50), // 0x00001230
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00001238
	gsDPLoadSync(), // 0x00001240
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001248
	gsDPPipeSync(), // 0x00001250
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00001258
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001260
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00001268
	gsDPTileSync(), // 0x00001270
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001278
	gsDPLoadSync(), // 0x00001280
	gsDPLoadTLUTCmd(7, 255), // 0x00001288
	gsDPPipeSync(), // 0x00001290
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001298
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000012A0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000012A8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000012B0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000012B8
	gsSPVertex(_jyasinzou_room_17_vertices_000010E0, 9, 0), // 0x000012C0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000012C8
	gsSP2Triangles(0, 4, 5, 0, 0, 5, 6, 0), // 0x000012D0
	gsSP2Triangles(0, 2, 4, 0, 7, 4, 2, 0), // 0x000012D8
	gsSP1Triangle(7, 2, 8, 0), // 0x000012E0
	gsSPEndDisplayList(), // 0x000012E8
};

Vtx_t _jyasinzou_room_17_vertices_000012F0[14] = 
{
	 { 1446, 843, -159, 0, -1, 751, 169, 154, 126, 255 }, // 0x000012F0
	 { 1423, 843, -136, 0, 273, 1025, 169, 154, 126, 255 }, // 0x00001300
	 { 1423, 843, -96, 0, 751, 1025, 189, 178, 157, 255 }, // 0x00001310
	 { 1446, 843, -73, 0, 1025, 751, 189, 178, 157, 255 }, // 0x00001320
	 { 1486, 843, -73, 0, 1025, 273, 169, 154, 126, 255 }, // 0x00001330
	 { 1509, 843, -96, 0, 751, -1, 169, 154, 126, 255 }, // 0x00001340
	 { 1509, 843, -136, 0, 273, -1, 169, 154, 126, 255 }, // 0x00001350
	 { 1486, 843, -159, 0, -1, 273, 169, 154, 126, 255 }, // 0x00001360
	 { 1314, 843, 13, 0, 279, 1016, 189, 178, 157, 255 }, // 0x00001370
	 { 1251, 843, 13, 0, 1024, 1016, 169, 154, 126, 255 }, // 0x00001380
	 { 1251, 843, 99, 0, 1024, 0, 169, 154, 126, 255 }, // 0x00001390
	 { 1314, 843, 99, 0, 279, 0, 169, 154, 126, 255 }, // 0x000013A0
	 { 1337, 843, 76, 0, 8, 271, 169, 154, 126, 255 }, // 0x000013B0
	 { 1337, 843, 36, 0, 8, 745, 189, 178, 157, 255 }, // 0x000013C0
};

Vtx_t _jyasinzou_room_17_vertices_000013D0[24] = 
{
	 { 1594, 843, -136, 0, 585, 1463, 134, 119, 89, 255 }, // 0x000013D0
	 { 1509, 843, -136, 0, 1243, 1682, 169, 154, 126, 255 }, // 0x000013E0
	 { 1509, 843, -96, 0, 1346, 1375, 169, 154, 126, 255 }, // 0x000013F0
	 { 1594, 843, -96, 0, 688, 1156, 134, 119, 89, 255 }, // 0x00001400
	 { 1423, 843, -136, 0, 1902, 1902, 169, 154, 126, 255 }, // 0x00001410
	 { 1337, 843, -136, 0, 2560, 2121, 169, 154, 126, 255 }, // 0x00001420
	 { 1337, 843, -96, 0, 2662, 1814, 189, 178, 157, 255 }, // 0x00001430
	 { 1423, 843, -96, 0, 2004, 1595, 189, 178, 157, 255 }, // 0x00001440
	 { 1423, 843, 36, 0, 2341, 585, 189, 178, 157, 255 }, // 0x00001450
	 { 1337, 843, 36, 0, 2999, 805, 189, 178, 157, 255 }, // 0x00001460
	 { 1337, 843, 76, 0, 3101, 497, 169, 154, 126, 255 }, // 0x00001470
	 { 1423, 843, 76, 0, 2443, 278, 169, 154, 126, 255 }, // 0x00001480
	 { 1486, 843, 13, 0, 1799, 600, 169, 154, 126, 255 }, // 0x00001490
	 { 1486, 843, -73, 0, 1580, 1258, 169, 154, 126, 255 }, // 0x000014A0
	 { 1446, 843, -73, 0, 1887, 1360, 189, 178, 157, 255 }, // 0x000014B0
	 { 1446, 843, 13, 0, 2107, 702, 189, 178, 157, 255 }, // 0x000014C0
	 { 1314, 843, 13, 0, 3116, 1039, 189, 178, 157, 255 }, // 0x000014D0
	 { 1314, 843, -73, 0, 2896, 1697, 189, 178, 157, 255 }, // 0x000014E0
	 { 1274, 843, -73, 0, 3204, 1799, 169, 154, 126, 255 }, // 0x000014F0
	 { 1274, 843, 13, 0, 3423, 1141, 169, 154, 126, 255 }, // 0x00001500
	 { 1486, 843, -159, 0, 1360, 1916, 169, 154, 126, 255 }, // 0x00001510
	 { 1486, 843, -244, 0, 1141, 2575, 134, 119, 89, 255 }, // 0x00001520
	 { 1446, 843, -244, 0, 1448, 2677, 134, 119, 89, 255 }, // 0x00001530
	 { 1446, 843, -159, 0, 1668, 2019, 169, 154, 126, 255 }, // 0x00001540
};

Vtx_t _jyasinzou_room_17_vertices_00001550[12] = 
{
	 { 1314, 843, -159, 0, 272, 1025, 169, 154, 126, 255 }, // 0x00001550
	 { 1251, 843, -159, 0, 1024, 1025, 169, 154, 126, 255 }, // 0x00001560
	 { 1251, 843, -73, 0, 1024, 0, 169, 154, 126, 255 }, // 0x00001570
	 { 1314, 843, -73, 0, 272, 0, 189, 178, 157, 255 }, // 0x00001580
	 { 1337, 843, -96, 0, -1, 273, 189, 178, 157, 255 }, // 0x00001590
	 { 1337, 843, -136, 0, -1, 752, 169, 154, 126, 255 }, // 0x000015A0
	 { 1446, 843, 13, 0, 745, 1016, 189, 178, 157, 255 }, // 0x000015B0
	 { 1423, 843, 36, 0, 1016, 745, 189, 178, 157, 255 }, // 0x000015C0
	 { 1423, 843, 76, 0, 1016, 271, 169, 154, 126, 255 }, // 0x000015D0
	 { 1446, 843, 99, 0, 745, 0, 169, 154, 126, 255 }, // 0x000015E0
	 { 1509, 843, 99, 0, 0, 0, 169, 154, 126, 255 }, // 0x000015F0
	 { 1509, 843, 13, 0, 0, 1016, 169, 154, 126, 255 }, // 0x00001600
};

Vtx_t _jyasinzou_room_17_vertices_00001610[28] = 
{
	 { 1423, 843, -267, 0, 1565, 2911, 134, 119, 89, 255 }, // 0x00001610
	 { 1446, 843, -244, 0, 1448, 2677, 134, 119, 89, 255 }, // 0x00001620
	 { 1486, 843, -244, 0, 1141, 2575, 134, 119, 89, 255 }, // 0x00001630
	 { 1509, 843, -267, 0, 907, 2692, 134, 119, 89, 255 }, // 0x00001640
	 { 1509, 843, -330, 0, 746, 3174, 81, 72, 55, 255 }, // 0x00001650
	 { 1423, 843, -330, 0, 1404, 3394, 81, 72, 55, 255 }, // 0x00001660
	 { 1680, 843, -73, 0, 88, 761, 81, 72, 55, 255 }, // 0x00001670
	 { 1680, 843, -159, 0, -132, 1419, 81, 72, 55, 255 }, // 0x00001680
	 { 1617, 843, -159, 0, 351, 1580, 134, 119, 89, 255 }, // 0x00001690
	 { 1594, 843, -136, 0, 585, 1463, 134, 119, 89, 255 }, // 0x000016A0
	 { 1594, 843, -96, 0, 688, 1156, 134, 119, 89, 255 }, // 0x000016B0
	 { 1617, 843, -73, 0, 571, 922, 134, 119, 89, 255 }, // 0x000016C0
	 { 1251, 843, -330, 0, 2721, 3833, 81, 72, 55, 255 }, // 0x000016D0
	 { 1200, 843, -310, 0, 3167, 3811, 115, 102, 78, 255 }, // 0x000016E0
	 { 1251, 843, -73, 0, 3379, 1858, 169, 154, 126, 255 }, // 0x000016F0
	 { 1200, 843, -110, 0, 3679, 2275, 134, 119, 89, 255 }, // 0x00001700
	 { 1080, 843, -73, 0, 4696, 2297, 115, 102, 78, 255 }, // 0x00001710
	 { 1080, 843, -330, 0, 4037, 4272, 81, 72, 55, 255 }, // 0x00001720
	 { 1080, 843, -310, 0, 4089, 4118, 115, 102, 78, 255 }, // 0x00001730
	 { 1080, 843, -110, 0, 4601, 2582, 115, 102, 78, 255 }, // 0x00001740
	 { 1060, 843, 270, 0, 5573, -336, 52, 49, 38, 255 }, // 0x00001750
	 { 1251, 843, 270, 0, 4257, -775, 81, 72, 55, 255 }, // 0x00001760
	 { 1251, 843, 13, 0, 3599, 1200, 169, 154, 126, 255 }, // 0x00001770
	 { 1060, 843, 13, 0, 4915, 1638, 52, 49, 38, 255 }, // 0x00001780
	 { 1700, 843, 13, 0, 307, 102, 69, 62, 48, 255 }, // 0x00001790
	 { 1509, 843, 13, 0, 1624, 541, 169, 154, 126, 255 }, // 0x000017A0
	 { 1509, 843, 270, 0, 2282, -1434, 115, 102, 78, 255 }, // 0x000017B0
	 { 1700, 843, 270, 0, 965, -1872, 69, 62, 48, 255 }, // 0x000017C0
};

Vtx_t _jyasinzou_room_17_vertices_000017D0[8] = 
{
	 { 1060, 843, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017D0
	 { 1700, 843, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017E0
	 { 1060, 843, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017F0
	 { 1700, 843, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001800
	 { 1060, 843, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001810
	 { 1700, 843, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001820
	 { 1060, 843, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001830
	 { 1700, 843, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001840
};

Gfx _jyasinzou_room_17_dlist_00001850[] =
{
	gsDPPipeSync(), // 0x00001850
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001858
	gsSPVertex(_jyasinzou_room_17_vertices_000017D0, 8, 0), // 0x00001860
	gsSPCullDisplayList(0, 7), // 0x00001868
	gsDPPipeSync(), // 0x00001870
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001878
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001880
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001888
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x00001890
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001898
	gsDPLoadSync(), // 0x000018A0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000018A8
	gsDPPipeSync(), // 0x000018B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000018B8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000018C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x000018C8
	gsDPTileSync(), // 0x000018D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000018D8
	gsDPLoadSync(), // 0x000018E0
	gsDPLoadTLUTCmd(7, 255), // 0x000018E8
	gsDPPipeSync(), // 0x000018F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000018F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001900
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001908
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001910
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001918
	gsSPVertex(_jyasinzou_room_17_vertices_000012F0, 14, 0), // 0x00001920
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001928
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00001930
	gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0), // 0x00001938
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001940
	gsSP2Triangles(8, 11, 12, 0, 8, 12, 13, 0), // 0x00001948
	gsDPPipeSync(), // 0x00001950
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00006E50), // 0x00001958
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001960
	gsDPLoadSync(), // 0x00001968
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001970
	gsDPPipeSync(), // 0x00001978
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001980
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001988
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001990
	gsDPTileSync(), // 0x00001998
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000019A0
	gsDPLoadSync(), // 0x000019A8
	gsDPLoadTLUTCmd(7, 255), // 0x000019B0
	gsDPPipeSync(), // 0x000019B8
	gsSPVertex(_jyasinzou_room_17_vertices_000013D0, 24, 0), // 0x000019C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000019C8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000019D0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000019D8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000019E0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000019E8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000019F0
	gsDPPipeSync(), // 0x000019F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x00001A00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001A08
	gsDPLoadSync(), // 0x00001A10
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001A18
	gsDPPipeSync(), // 0x00001A20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001A28
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001A30
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00001A38
	gsDPTileSync(), // 0x00001A40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001A48
	gsDPLoadSync(), // 0x00001A50
	gsDPLoadTLUTCmd(7, 255), // 0x00001A58
	gsDPPipeSync(), // 0x00001A60
	gsSPVertex(_jyasinzou_room_17_vertices_00001550, 12, 0), // 0x00001A68
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001A70
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00001A78
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00001A80
	gsSP2Triangles(6, 9, 10, 0, 6, 10, 11, 0), // 0x00001A88
	gsDPPipeSync(), // 0x00001A90
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00006E50), // 0x00001A98
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001AA0
	gsDPLoadSync(), // 0x00001AA8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001AB0
	gsDPPipeSync(), // 0x00001AB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001AC0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001AC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001AD0
	gsDPTileSync(), // 0x00001AD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001AE0
	gsDPLoadSync(), // 0x00001AE8
	gsDPLoadTLUTCmd(7, 255), // 0x00001AF0
	gsDPPipeSync(), // 0x00001AF8
	gsSPVertex(_jyasinzou_room_17_vertices_00001610, 28, 0), // 0x00001B00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B08
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00001B10
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00001B18
	gsSP2Triangles(6, 9, 10, 0, 6, 10, 11, 0), // 0x00001B20
	gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0), // 0x00001B28
	gsSP2Triangles(15, 16, 14, 0, 12, 17, 13, 0), // 0x00001B30
	gsSP2Triangles(17, 18, 13, 0, 19, 16, 15, 0), // 0x00001B38
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00001B40
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00001B48
	gsSPEndDisplayList(), // 0x00001B50
};

Vtx_t _jyasinzou_room_17_vertices_00001B58[24] = 
{
	 { 1080, 843, 13, 0, 4389, 1024, 81, 72, 55, 255 }, // 0x00001B58
	 { 1080, 483, 13, 0, 4389, 4096, 0, 0, 0, 255 }, // 0x00001B68
	 { 1080, 483, -73, 0, 5851, 4096, 0, 0, 0, 255 }, // 0x00001B78
	 { 1080, 843, -73, 0, 5851, 1024, 81, 72, 55, 255 }, // 0x00001B88
	 { 1509, 843, 270, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x00001B98
	 { 1509, 483, 270, 0, 2048, 4096, 0, 0, 0, 255 }, // 0x00001BA8
	 { 1251, 483, 270, 0, 6437, 4096, 0, 0, 0, 255 }, // 0x00001BB8
	 { 1251, 843, 270, 0, 6437, 1024, 81, 72, 55, 255 }, // 0x00001BC8
	 { 1680, 843, -73, 0, -731, 1024, 81, 72, 55, 255 }, // 0x00001BD8
	 { 1680, 483, -73, 0, -731, 4096, 0, 0, 0, 255 }, // 0x00001BE8
	 { 1680, 483, 13, 0, 731, 4096, 0, 0, 0, 255 }, // 0x00001BF8
	 { 1680, 843, 13, 0, 731, 1024, 81, 72, 55, 255 }, // 0x00001C08
	 { 1680, 843, -330, 0, -5120, 1024, 81, 72, 55, 255 }, // 0x00001C18
	 { 1680, 483, -330, 0, -5120, 4096, 0, 0, 0, 255 }, // 0x00001C28
	 { 1680, 483, -159, 0, -2194, 4096, 0, 0, 0, 255 }, // 0x00001C38
	 { 1680, 843, -159, 0, -2194, 1024, 81, 72, 55, 255 }, // 0x00001C48
	 { 1509, 843, -330, 0, 7314, 1024, 81, 72, 55, 255 }, // 0x00001C58
	 { 1509, 483, -330, 0, 7314, 4096, 0, 0, 0, 255 }, // 0x00001C68
	 { 1680, 483, -330, 0, 10240, 4096, 0, 0, 0, 255 }, // 0x00001C78
	 { 1680, 843, -330, 0, 10240, 1024, 81, 72, 55, 255 }, // 0x00001C88
	 { 1251, 843, -330, 0, 2926, 1024, 81, 72, 55, 255 }, // 0x00001C98
	 { 1251, 483, -330, 0, 2926, 4096, 0, 0, 0, 255 }, // 0x00001CA8
	 { 1423, 483, -330, 0, 5851, 4096, 0, 0, 0, 255 }, // 0x00001CB8
	 { 1423, 843, -330, 0, 5851, 1024, 81, 72, 55, 255 }, // 0x00001CC8
};

Vtx_t _jyasinzou_room_17_vertices_00001CD8[4] = 
{
	 { 1423, 783, -330, 0, 0, 0, 81, 72, 55, 255 }, // 0x00001CD8
	 { 1423, 483, -330, 0, 0, 2389, 0, 0, 0, 255 }, // 0x00001CE8
	 { 1423, 483, -267, 0, 1073, 2389, 0, 0, 0, 255 }, // 0x00001CF8
	 { 1423, 783, -267, 0, 1073, 0, 81, 72, 55, 255 }, // 0x00001D08
};

Vtx_t _jyasinzou_room_17_vertices_00001D18[4] = 
{
	 { 1423, 843, -330, 0, 0, 0, 81, 72, 55, 255 }, // 0x00001D18
	 { 1423, 783, -330, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00001D28
	 { 1423, 783, -267, 0, 1073, 1024, 81, 72, 55, 255 }, // 0x00001D38
	 { 1423, 843, -267, 0, 1073, 0, 134, 119, 89, 255 }, // 0x00001D48
};

Vtx_t _jyasinzou_room_17_vertices_00001D58[4] = 
{
	 { 1423, 783, -267, 0, 1073, 0, 81, 72, 55, 255 }, // 0x00001D58
	 { 1423, 483, -267, 0, 1073, 2389, 0, 0, 0, 255 }, // 0x00001D68
	 { 1446, 483, -244, 0, 1463, 2389, 0, 0, 0, 255 }, // 0x00001D78
	 { 1446, 783, -244, 0, 1463, 0, 81, 72, 55, 255 }, // 0x00001D88
};

Vtx_t _jyasinzou_room_17_vertices_00001D98[4] = 
{
	 { 1423, 843, -267, 0, 1073, 0, 134, 119, 89, 255 }, // 0x00001D98
	 { 1423, 783, -267, 0, 1073, 1024, 81, 72, 55, 255 }, // 0x00001DA8
	 { 1446, 783, -244, 0, 1463, 1024, 81, 72, 55, 255 }, // 0x00001DB8
	 { 1446, 843, -244, 0, 1463, 0, 134, 119, 89, 255 }, // 0x00001DC8
};

Vtx_t _jyasinzou_room_17_vertices_00001DD8[4] = 
{
	 { 1446, 783, -244, 0, 1463, 0, 81, 72, 55, 255 }, // 0x00001DD8
	 { 1446, 483, -244, 0, 1463, 2389, 0, 0, 0, 255 }, // 0x00001DE8
	 { 1446, 483, -159, 0, 2926, 2389, 0, 0, 0, 255 }, // 0x00001DF8
	 { 1446, 783, -159, 0, 2926, 0, 81, 72, 55, 255 }, // 0x00001E08
};

Vtx_t _jyasinzou_room_17_vertices_00001E18[4] = 
{
	 { 1446, 843, -244, 0, 1463, 0, 134, 119, 89, 255 }, // 0x00001E18
	 { 1446, 783, -244, 0, 1463, 1024, 81, 72, 55, 255 }, // 0x00001E28
	 { 1446, 783, -159, 0, 2926, 1024, 81, 72, 55, 255 }, // 0x00001E38
	 { 1446, 843, -159, 0, 2926, 0, 134, 119, 89, 255 }, // 0x00001E48
};

Vtx_t _jyasinzou_room_17_vertices_00001E58[4] = 
{
	 { 1446, 831, -159, 0, 2926, 0, 100, 89, 67, 255 }, // 0x00001E58
	 { 1446, 483, -159, 0, 2926, 3991, 0, 0, 0, 255 }, // 0x00001E68
	 { 1423, 483, -136, 0, 3316, 3991, 0, 0, 0, 255 }, // 0x00001E78
	 { 1423, 831, -136, 0, 3316, 0, 100, 89, 67, 255 }, // 0x00001E88
};

Vtx_t _jyasinzou_room_17_vertices_00001E98[4] = 
{
	 { 1446, 843, -159, 0, 0, 0, 134, 119, 89, 255 }, // 0x00001E98
	 { 1446, 831, -159, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00001EA8
	 { 1423, 831, -136, 0, 1024, 1024, 100, 89, 67, 255 }, // 0x00001EB8
	 { 1423, 843, -136, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00001EC8
};

Vtx_t _jyasinzou_room_17_vertices_00001ED8[4] = 
{
	 { 1423, 783, -136, 0, 0, 0, 81, 72, 55, 255 }, // 0x00001ED8
	 { 1423, 483, -136, 0, 0, 2389, 0, 0, 0, 255 }, // 0x00001EE8
	 { 1337, 483, -136, 0, 1463, 2389, 0, 0, 0, 255 }, // 0x00001EF8
	 { 1337, 783, -136, 0, 1463, 0, 81, 72, 55, 255 }, // 0x00001F08
};

Vtx_t _jyasinzou_room_17_vertices_00001F18[4] = 
{
	 { 1423, 843, -136, 0, -878, 0, 134, 119, 89, 255 }, // 0x00001F18
	 { 1423, 783, -136, 0, -878, 1024, 81, 72, 55, 255 }, // 0x00001F28
	 { 1337, 783, -136, 0, 585, 1024, 81, 72, 55, 255 }, // 0x00001F38
	 { 1337, 843, -136, 0, 585, 0, 134, 119, 89, 255 }, // 0x00001F48
};

Vtx_t _jyasinzou_room_17_vertices_00001F58[4] = 
{
	 { 1337, 832, -136, 0, 585, 0, 100, 89, 67, 255 }, // 0x00001F58
	 { 1337, 483, -136, 0, 585, 5944, 0, 0, 0, 255 }, // 0x00001F68
	 { 1314, 483, -159, 0, 975, 5944, 0, 0, 0, 255 }, // 0x00001F78
	 { 1314, 832, -159, 0, 975, 0, 115, 102, 78, 255 }, // 0x00001F88
};

Vtx_t _jyasinzou_room_17_vertices_00001F98[4] = 
{
	 { 1337, 843, -136, 0, 0, 0, 134, 119, 89, 255 }, // 0x00001F98
	 { 1337, 832, -136, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00001FA8
	 { 1314, 832, -159, 0, 1024, 1024, 81, 72, 55, 255 }, // 0x00001FB8
	 { 1314, 843, -159, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00001FC8
};

Vtx_t _jyasinzou_room_17_vertices_00001FD8[4] = 
{
	 { 1314, 832, -159, 0, 975, 0, 115, 102, 78, 255 }, // 0x00001FD8
	 { 1314, 483, -159, 0, 975, 5944, 0, 0, 0, 255 }, // 0x00001FE8
	 { 1251, 483, -159, 0, 2048, 5944, 0, 0, 0, 255 }, // 0x00001FF8
	 { 1251, 832, -159, 0, 2048, 0, 100, 89, 67, 255 }, // 0x00002008
};

Vtx_t _jyasinzou_room_17_vertices_00002018[4] = 
{
	 { 1314, 843, -159, 0, 0, 0, 134, 119, 89, 255 }, // 0x00002018
	 { 1314, 832, -159, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00002028
	 { 1251, 832, -159, 0, 1024, 1024, 81, 72, 55, 255 }, // 0x00002038
	 { 1251, 843, -159, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00002048
};

Vtx_t _jyasinzou_room_17_vertices_00002058[4] = 
{
	 { 1251, 783, -159, 0, -878, 0, 81, 72, 55, 255 }, // 0x00002058
	 { 1251, 483, -159, 0, -878, 5120, 0, 0, 0, 255 }, // 0x00002068
	 { 1251, 483, -330, 0, 2048, 5120, 0, 0, 0, 255 }, // 0x00002078
	 { 1251, 783, -330, 0, 2048, 0, 81, 72, 55, 255 }, // 0x00002088
};

Vtx_t _jyasinzou_room_17_vertices_00002098[4] = 
{
	 { 1251, 843, -159, 0, 146, 0, 134, 119, 89, 255 }, // 0x00002098
	 { 1251, 783, -159, 0, 146, 1024, 81, 72, 55, 255 }, // 0x000020A8
	 { 1251, 783, -330, 0, 3072, 1024, 81, 72, 55, 255 }, // 0x000020B8
	 { 1251, 843, -330, 0, 3072, 0, 81, 72, 55, 255 }, // 0x000020C8
};

Vtx_t _jyasinzou_room_17_vertices_000020D8[4] = 
{
	 { 1680, 783, -159, 0, 0, 0, 81, 72, 55, 255 }, // 0x000020D8
	 { 1680, 483, -159, 0, 0, 2389, 0, 0, 0, 255 }, // 0x000020E8
	 { 1617, 483, -159, 0, 1073, 2389, 0, 0, 0, 255 }, // 0x000020F8
	 { 1617, 783, -159, 0, 1073, 0, 81, 72, 55, 255 }, // 0x00002108
};

Vtx_t _jyasinzou_room_17_vertices_00002118[4] = 
{
	 { 1680, 843, -159, 0, -49, 0, 81, 72, 55, 255 }, // 0x00002118
	 { 1680, 783, -159, 0, -49, 1024, 81, 72, 55, 255 }, // 0x00002128
	 { 1617, 783, -159, 0, 1024, 1024, 81, 72, 55, 255 }, // 0x00002138
	 { 1617, 843, -159, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00002148
};

Vtx_t _jyasinzou_room_17_vertices_00002158[4] = 
{
	 { 1617, 783, -159, 0, 1073, 0, 81, 72, 55, 255 }, // 0x00002158
	 { 1617, 483, -159, 0, 1073, 2389, 0, 0, 0, 255 }, // 0x00002168
	 { 1594, 483, -136, 0, 1463, 2389, 0, 0, 0, 255 }, // 0x00002178
	 { 1594, 783, -136, 0, 1463, 0, 81, 72, 55, 255 }, // 0x00002188
};

Vtx_t _jyasinzou_room_17_vertices_00002198[4] = 
{
	 { 1617, 843, -159, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00002198
	 { 1617, 783, -159, 0, 1024, 1024, 81, 72, 55, 255 }, // 0x000021A8
	 { 1594, 783, -136, 0, 1414, 1024, 81, 72, 55, 255 }, // 0x000021B8
	 { 1594, 843, -136, 0, 1414, 0, 134, 119, 89, 255 }, // 0x000021C8
};

Vtx_t _jyasinzou_room_17_vertices_000021D8[4] = 
{
	 { 1594, 783, -136, 0, 1463, 0, 81, 72, 55, 255 }, // 0x000021D8
	 { 1594, 483, -136, 0, 1463, 2389, 0, 0, 0, 255 }, // 0x000021E8
	 { 1509, 483, -136, 0, 2926, 2389, 0, 0, 0, 255 }, // 0x000021F8
	 { 1509, 783, -136, 0, 2926, 0, 81, 72, 55, 255 }, // 0x00002208
};

Vtx_t _jyasinzou_room_17_vertices_00002218[4] = 
{
	 { 1594, 843, -136, 0, 1414, 0, 134, 119, 89, 255 }, // 0x00002218
	 { 1594, 783, -136, 0, 1414, 1024, 81, 72, 55, 255 }, // 0x00002228
	 { 1509, 783, -136, 0, 2877, 1024, 81, 72, 55, 255 }, // 0x00002238
	 { 1509, 843, -136, 0, 2877, 0, 134, 119, 89, 255 }, // 0x00002248
};

Vtx_t _jyasinzou_room_17_vertices_00002258[4] = 
{
	 { 1509, 831, -136, 0, 0, 0, 100, 89, 67, 255 }, // 0x00002258
	 { 1509, 483, -136, 0, 0, 3991, 0, 0, 0, 255 }, // 0x00002268
	 { 1486, 483, -159, 0, 390, 3991, 0, 0, 0, 255 }, // 0x00002278
	 { 1486, 831, -159, 0, 390, 0, 100, 89, 67, 255 }, // 0x00002288
};

Vtx_t _jyasinzou_room_17_vertices_00002298[4] = 
{
	 { 1509, 843, -136, 0, 0, 0, 134, 119, 89, 255 }, // 0x00002298
	 { 1509, 831, -136, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000022A8
	 { 1486, 831, -159, 0, 1024, 1024, 100, 89, 67, 255 }, // 0x000022B8
	 { 1486, 843, -159, 0, 1024, 0, 134, 119, 89, 255 }, // 0x000022C8
};

Vtx_t _jyasinzou_room_17_vertices_000022D8[4] = 
{
	 { 1486, 783, -159, 0, 390, 0, 81, 72, 55, 255 }, // 0x000022D8
	 { 1486, 483, -159, 0, 390, 2389, 0, 0, 0, 255 }, // 0x000022E8
	 { 1486, 483, -244, 0, 1853, 2389, 0, 0, 0, 255 }, // 0x000022F8
	 { 1486, 783, -244, 0, 1853, 0, 81, 72, 55, 255 }, // 0x00002308
};

Vtx_t _jyasinzou_room_17_vertices_00002318[4] = 
{
	 { 1486, 843, -159, 0, -439, 0, 134, 119, 89, 255 }, // 0x00002318
	 { 1486, 783, -159, 0, -439, 1024, 81, 72, 55, 255 }, // 0x00002328
	 { 1486, 783, -244, 0, 1024, 1024, 81, 72, 55, 255 }, // 0x00002338
	 { 1486, 843, -244, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00002348
};

Vtx_t _jyasinzou_room_17_vertices_00002358[4] = 
{
	 { 1486, 783, -244, 0, 1853, 0, 81, 72, 55, 255 }, // 0x00002358
	 { 1486, 483, -244, 0, 1853, 2389, 0, 0, 0, 255 }, // 0x00002368
	 { 1509, 483, -267, 0, 2243, 2389, 0, 0, 0, 255 }, // 0x00002378
	 { 1509, 783, -267, 0, 2243, 0, 81, 72, 55, 255 }, // 0x00002388
};

Vtx_t _jyasinzou_room_17_vertices_00002398[4] = 
{
	 { 1486, 843, -244, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00002398
	 { 1486, 783, -244, 0, 1024, 1024, 81, 72, 55, 255 }, // 0x000023A8
	 { 1509, 783, -267, 0, 1414, 1024, 81, 72, 55, 255 }, // 0x000023B8
	 { 1509, 843, -267, 0, 1414, 0, 134, 119, 89, 255 }, // 0x000023C8
};

Vtx_t _jyasinzou_room_17_vertices_000023D8[4] = 
{
	 { 1509, 783, -267, 0, 2243, 0, 81, 72, 55, 255 }, // 0x000023D8
	 { 1509, 483, -267, 0, 2243, 2389, 0, 0, 0, 255 }, // 0x000023E8
	 { 1509, 483, -330, 0, 3316, 2389, 0, 0, 0, 255 }, // 0x000023F8
	 { 1509, 783, -330, 0, 3316, 0, 81, 72, 55, 255 }, // 0x00002408
};

Vtx_t _jyasinzou_room_17_vertices_00002418[4] = 
{
	 { 1509, 843, -267, 0, 1414, 0, 134, 119, 89, 255 }, // 0x00002418
	 { 1509, 783, -267, 0, 1414, 1024, 81, 72, 55, 255 }, // 0x00002428
	 { 1509, 783, -330, 0, 2487, 1024, 81, 72, 55, 255 }, // 0x00002438
	 { 1509, 843, -330, 0, 2487, 0, 81, 72, 55, 255 }, // 0x00002448
};

Vtx_t _jyasinzou_room_17_vertices_00002458[4] = 
{
	 { 1594, 783, -96, 0, 1463, 0, 81, 72, 55, 255 }, // 0x00002458
	 { 1594, 483, -96, 0, 1463, 5120, 0, 0, 0, 255 }, // 0x00002468
	 { 1617, 483, -73, 0, 1853, 5120, 0, 0, 0, 255 }, // 0x00002478
	 { 1617, 783, -73, 0, 1853, 0, 81, 72, 55, 255 }, // 0x00002488
};

Vtx_t _jyasinzou_room_17_vertices_00002498[4] = 
{
	 { 1594, 843, -96, 0, 585, 0, 134, 119, 89, 255 }, // 0x00002498
	 { 1594, 783, -96, 0, 585, 1024, 81, 72, 55, 255 }, // 0x000024A8
	 { 1617, 783, -73, 0, 975, 1024, 81, 72, 55, 255 }, // 0x000024B8
	 { 1617, 843, -73, 0, 975, 0, 134, 119, 89, 255 }, // 0x000024C8
};

Vtx_t _jyasinzou_room_17_vertices_000024D8[4] = 
{
	 { 1617, 783, -73, 0, 1853, 0, 81, 72, 55, 255 }, // 0x000024D8
	 { 1617, 483, -73, 0, 1853, 5120, 0, 0, 0, 255 }, // 0x000024E8
	 { 1680, 483, -73, 0, 2926, 5120, 0, 0, 0, 255 }, // 0x000024F8
	 { 1680, 783, -73, 0, 2926, 0, 81, 72, 55, 255 }, // 0x00002508
};

Vtx_t _jyasinzou_room_17_vertices_00002518[4] = 
{
	 { 1617, 843, -73, 0, 975, 0, 134, 119, 89, 255 }, // 0x00002518
	 { 1617, 783, -73, 0, 975, 1024, 81, 72, 55, 255 }, // 0x00002528
	 { 1680, 783, -73, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x00002538
	 { 1680, 843, -73, 0, 2048, 0, 81, 72, 55, 255 }, // 0x00002548
};

Vtx_t _jyasinzou_room_17_vertices_00002558[4] = 
{
	 { 1680, 783, 13, 0, -6924, 0, 81, 72, 55, 255 }, // 0x00002558
	 { 1680, 483, 13, 0, -6924, 5120, 0, 0, 0, 255 }, // 0x00002568
	 { 1486, 483, 13, 0, -3608, 5120, 0, 0, 0, 255 }, // 0x00002578
	 { 1486, 783, 13, 0, -3608, 0, 100, 89, 67, 255 }, // 0x00002588
};

Vtx_t _jyasinzou_room_17_vertices_00002598[4] = 
{
	 { 1680, 843, 13, 0, -244, 0, 81, 72, 55, 255 }, // 0x00002598
	 { 1680, 783, 13, 0, -244, 1024, 81, 72, 55, 255 }, // 0x000025A8
	 { 1509, 783, 13, 0, 2682, 1024, 100, 89, 67, 255 }, // 0x000025B8
	 { 1509, 843, 13, 0, 2682, 0, 134, 119, 89, 255 }, // 0x000025C8
};

Vtx_t _jyasinzou_room_17_vertices_000025D8[4] = 
{
	 { 1486, 783, 13, 0, 0, 0, 100, 89, 67, 255 }, // 0x000025D8
	 { 1486, 483, 13, 0, 0, 5120, 0, 0, 0, 255 }, // 0x000025E8
	 { 1486, 483, -73, 0, 1463, 5120, 0, 0, 0, 255 }, // 0x000025F8
	 { 1486, 783, -73, 0, 1463, 0, 81, 72, 55, 255 }, // 0x00002608
};

Vtx_t _jyasinzou_room_17_vertices_00002618[4] = 
{
	 { 1486, 843, 13, 0, 585, 0, 134, 119, 89, 255 }, // 0x00002618
	 { 1486, 783, 13, 0, 585, 1024, 100, 89, 67, 255 }, // 0x00002628
	 { 1486, 783, -73, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x00002638
	 { 1486, 843, -73, 0, 2048, 0, 134, 119, 89, 255 }, // 0x00002648
};

Vtx_t _jyasinzou_room_17_vertices_00002658[4] = 
{
	 { 1486, 831, -73, 0, 1463, -819, 115, 102, 78, 255 }, // 0x00002658
	 { 1486, 483, -73, 0, 1463, 5120, 0, 0, 0, 255 }, // 0x00002668
	 { 1509, 483, -96, 0, 1853, 5120, 0, 0, 0, 255 }, // 0x00002678
	 { 1509, 831, -96, 0, 1853, -819, 115, 102, 78, 255 }, // 0x00002688
};

Vtx_t _jyasinzou_room_17_vertices_00002698[4] = 
{
	 { 1486, 843, -73, 0, 0, 0, 134, 119, 89, 255 }, // 0x00002698
	 { 1486, 831, -73, 0, 0, 1024, 115, 102, 78, 255 }, // 0x000026A8
	 { 1509, 831, -96, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x000026B8
	 { 1509, 843, -96, 0, 1024, 0, 134, 119, 89, 255 }, // 0x000026C8
};

Vtx_t _jyasinzou_room_17_vertices_000026D8[4] = 
{
	 { 1509, 783, -96, 0, 0, 0, 81, 72, 55, 255 }, // 0x000026D8
	 { 1509, 483, -96, 0, 0, 5120, 0, 0, 0, 255 }, // 0x000026E8
	 { 1594, 483, -96, 0, 1463, 5120, 0, 0, 0, 255 }, // 0x000026F8
	 { 1594, 783, -96, 0, 1463, 0, 81, 72, 55, 255 }, // 0x00002708
};

Vtx_t _jyasinzou_room_17_vertices_00002718[4] = 
{
	 { 1509, 843, -96, 0, -878, 0, 134, 119, 89, 255 }, // 0x00002718
	 { 1509, 783, -96, 0, -878, 1024, 81, 72, 55, 255 }, // 0x00002728
	 { 1594, 783, -96, 0, 585, 1024, 81, 72, 55, 255 }, // 0x00002738
	 { 1594, 843, -96, 0, 585, 0, 134, 119, 89, 255 }, // 0x00002748
};

Vtx_t _jyasinzou_room_17_vertices_00002758[4] = 
{
	 { 1337, 783, -96, 0, 0, 0, 81, 72, 55, 255 }, // 0x00002758
	 { 1337, 483, -96, 0, 0, 5120, 0, 0, 0, 255 }, // 0x00002768
	 { 1423, 483, -96, 0, 1463, 5120, 0, 0, 0, 255 }, // 0x00002778
	 { 1423, 783, -96, 0, 1463, 0, 81, 72, 55, 255 }, // 0x00002788
};

Vtx_t _jyasinzou_room_17_vertices_00002798[4] = 
{
	 { 1337, 843, -96, 0, 585, 0, 134, 119, 89, 255 }, // 0x00002798
	 { 1337, 783, -96, 0, 585, 1024, 81, 72, 55, 255 }, // 0x000027A8
	 { 1423, 783, -96, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x000027B8
	 { 1423, 843, -96, 0, 2048, 0, 134, 119, 89, 255 }, // 0x000027C8
};

Vtx_t _jyasinzou_room_17_vertices_000027D8[4] = 
{
	 { 1423, 831, -96, 0, 1463, -819, 115, 102, 78, 255 }, // 0x000027D8
	 { 1423, 483, -96, 0, 1463, 5120, 0, 0, 0, 255 }, // 0x000027E8
	 { 1446, 483, -73, 0, 1853, 5120, 0, 0, 0, 255 }, // 0x000027F8
	 { 1446, 831, -73, 0, 1853, -819, 115, 102, 78, 255 }, // 0x00002808
};

Vtx_t _jyasinzou_room_17_vertices_00002818[4] = 
{
	 { 1423, 843, -96, 0, 0, 0, 134, 119, 89, 255 }, // 0x00002818
	 { 1423, 831, -96, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00002828
	 { 1446, 831, -73, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00002838
	 { 1446, 843, -73, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00002848
};

Vtx_t _jyasinzou_room_17_vertices_00002858[4] = 
{
	 { 1446, 783, -73, 0, 0, 0, 81, 72, 55, 255 }, // 0x00002858
	 { 1446, 483, -73, 0, 0, 2389, 0, 0, 0, 255 }, // 0x00002868
	 { 1446, 483, 13, 0, 1463, 2389, 0, 0, 0, 255 }, // 0x00002878
	 { 1446, 783, 13, 0, 1463, 0, 81, 72, 55, 255 }, // 0x00002888
};

Vtx_t _jyasinzou_room_17_vertices_00002898[4] = 
{
	 { 1446, 843, -73, 0, 0, 0, 134, 119, 89, 255 }, // 0x00002898
	 { 1446, 783, -73, 0, 0, 1024, 81, 72, 55, 255 }, // 0x000028A8
	 { 1446, 783, 13, 0, 1463, 1024, 81, 72, 55, 255 }, // 0x000028B8
	 { 1446, 843, 13, 0, 1463, 0, 134, 119, 89, 255 }, // 0x000028C8
};

Vtx_t _jyasinzou_room_17_vertices_000028D8[4] = 
{
	 { 1446, 831, 13, 0, -390, -815, 100, 89, 67, 255 }, // 0x000028D8
	 { 1446, 483, 13, 0, -390, 5120, 0, 0, 0, 255 }, // 0x000028E8
	 { 1423, 483, 36, 0, 0, 5120, 0, 0, 0, 255 }, // 0x000028F8
	 { 1423, 831, 36, 0, 0, -815, 100, 89, 67, 255 }, // 0x00002908
};

Vtx_t _jyasinzou_room_17_vertices_00002918[4] = 
{
	 { 1446, 843, 13, 0, 0, 0, 134, 119, 89, 255 }, // 0x00002918
	 { 1446, 831, 13, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00002928
	 { 1423, 831, 36, 0, 1024, 1024, 100, 89, 67, 255 }, // 0x00002938
	 { 1423, 843, 36, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00002948
};

Vtx_t _jyasinzou_room_17_vertices_00002958[4] = 
{
	 { 1423, 783, 36, 0, 0, 0, 81, 72, 55, 255 }, // 0x00002958
	 { 1423, 483, 36, 0, 0, 5120, 0, 0, 0, 255 }, // 0x00002968
	 { 1337, 483, 36, 0, 1463, 5120, 0, 0, 0, 255 }, // 0x00002978
	 { 1337, 783, 36, 0, 1463, 0, 81, 72, 55, 255 }, // 0x00002988
};

Vtx_t _jyasinzou_room_17_vertices_00002998[4] = 
{
	 { 1423, 843, 36, 0, 585, 0, 134, 119, 89, 255 }, // 0x00002998
	 { 1423, 783, 36, 0, 585, 1024, 81, 72, 55, 255 }, // 0x000029A8
	 { 1337, 783, 36, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x000029B8
	 { 1337, 843, 36, 0, 2048, 0, 134, 119, 89, 255 }, // 0x000029C8
};

Vtx_t _jyasinzou_room_17_vertices_000029D8[4] = 
{
	 { 1337, 831, 36, 0, 1463, -815, 100, 89, 67, 255 }, // 0x000029D8
	 { 1337, 483, 36, 0, 1463, 5120, 0, 0, 0, 255 }, // 0x000029E8
	 { 1314, 483, 13, 0, 1853, 5120, 0, 0, 0, 255 }, // 0x000029F8
	 { 1314, 831, 13, 0, 1853, -815, 100, 89, 67, 255 }, // 0x00002A08
};

Vtx_t _jyasinzou_room_17_vertices_00002A18[4] = 
{
	 { 1337, 843, 36, 0, 0, 0, 134, 119, 89, 255 }, // 0x00002A18
	 { 1337, 831, 36, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00002A28
	 { 1314, 831, 13, 0, 1024, 1024, 100, 89, 67, 255 }, // 0x00002A38
	 { 1314, 843, 13, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00002A48
};

Vtx_t _jyasinzou_room_17_vertices_00002A58[4] = 
{
	 { 1314, 783, 13, 0, 0, 0, 81, 72, 55, 255 }, // 0x00002A58
	 { 1314, 483, 13, 0, 0, 4174, 0, 0, 0, 255 }, // 0x00002A68
	 { 1314, 483, -73, 0, 1463, 4174, 0, 0, 0, 255 }, // 0x00002A78
	 { 1314, 783, -73, 0, 1463, 0, 81, 72, 55, 255 }, // 0x00002A88
};

Vtx_t _jyasinzou_room_17_vertices_00002A98[4] = 
{
	 { 1314, 843, 13, 0, 585, 0, 134, 119, 89, 255 }, // 0x00002A98
	 { 1314, 783, 13, 0, 585, 1024, 81, 72, 55, 255 }, // 0x00002AA8
	 { 1314, 783, -73, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x00002AB8
	 { 1314, 843, -73, 0, 2048, 0, 134, 119, 89, 255 }, // 0x00002AC8
};

Vtx_t _jyasinzou_room_17_vertices_00002AD8[4] = 
{
	 { 1314, 832, -73, 0, -390, -824, 115, 102, 78, 255 }, // 0x00002AD8
	 { 1314, 483, -73, 0, -390, 5120, 0, 0, 0, 255 }, // 0x00002AE8
	 { 1337, 483, -96, 0, 0, 5120, 0, 0, 0, 255 }, // 0x00002AF8
	 { 1337, 832, -96, 0, 0, -824, 115, 102, 78, 255 }, // 0x00002B08
};

Vtx_t _jyasinzou_room_17_vertices_00002B18[4] = 
{
	 { 1314, 843, -73, 0, 0, 0, 134, 119, 89, 255 }, // 0x00002B18
	 { 1314, 832, -73, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00002B28
	 { 1337, 832, -96, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00002B38
	 { 1337, 843, -96, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00002B48
};

Vtx_t _jyasinzou_room_17_vertices_00002B58[4] = 
{
	 { 1423, 831, 76, 0, 1463, -815, 115, 102, 78, 255 }, // 0x00002B58
	 { 1423, 483, 76, 0, 1463, 5120, 0, 0, 0, 255 }, // 0x00002B68
	 { 1446, 483, 99, 0, 1853, 5120, 0, 0, 0, 255 }, // 0x00002B78
	 { 1446, 831, 99, 0, 1853, -815, 115, 102, 78, 255 }, // 0x00002B88
};

Vtx_t _jyasinzou_room_17_vertices_00002B98[4] = 
{
	 { 1423, 843, 76, 0, 0, 0, 134, 119, 89, 255 }, // 0x00002B98
	 { 1423, 831, 76, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00002BA8
	 { 1446, 831, 99, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00002BB8
	 { 1446, 843, 99, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00002BC8
};

Vtx_t _jyasinzou_room_17_vertices_00002BD8[4] = 
{
	 { 1446, 831, 99, 0, 1853, -815, 115, 102, 78, 255 }, // 0x00002BD8
	 { 1446, 483, 99, 0, 1853, 5120, 0, 0, 0, 255 }, // 0x00002BE8
	 { 1509, 483, 99, 0, 2926, 5120, 0, 0, 0, 255 }, // 0x00002BF8
	 { 1509, 831, 99, 0, 2926, -815, 115, 102, 78, 255 }, // 0x00002C08
};

Vtx_t _jyasinzou_room_17_vertices_00002C18[4] = 
{
	 { 1446, 843, 99, 0, 0, 0, 134, 119, 89, 255 }, // 0x00002C18
	 { 1446, 831, 99, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00002C28
	 { 1509, 831, 99, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00002C38
	 { 1509, 843, 99, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00002C48
};

Vtx_t _jyasinzou_room_17_vertices_00002C58[4] = 
{
	 { 1509, 783, 99, 0, 0, 0, 81, 72, 55, 255 }, // 0x00002C58
	 { 1509, 483, 99, 0, 0, 5120, 0, 0, 0, 255 }, // 0x00002C68
	 { 1509, 483, 270, 0, 2926, 5120, 0, 0, 0, 255 }, // 0x00002C78
	 { 1509, 783, 270, 0, 2926, 0, 81, 72, 55, 255 }, // 0x00002C88
};

Vtx_t _jyasinzou_room_17_vertices_00002C98[4] = 
{
	 { 1509, 843, 99, 0, 0, 0, 134, 119, 89, 255 }, // 0x00002C98
	 { 1509, 783, 99, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00002CA8
	 { 1509, 783, 270, 0, 2926, 1024, 81, 72, 55, 255 }, // 0x00002CB8
	 { 1509, 843, 270, 0, 2926, 0, 134, 119, 89, 255 }, // 0x00002CC8
};

Vtx_t _jyasinzou_room_17_vertices_00002CD8[4] = 
{
	 { 1251, 783, 270, 0, -8192, 0, 81, 72, 55, 255 }, // 0x00002CD8
	 { 1251, 483, 270, 0, -8192, 5120, 0, 0, 0, 255 }, // 0x00002CE8
	 { 1251, 483, 99, 0, -5266, 5120, 0, 0, 0, 255 }, // 0x00002CF8
	 { 1251, 783, 99, 0, -5266, 0, 81, 72, 55, 255 }, // 0x00002D08
};

Vtx_t _jyasinzou_room_17_vertices_00002D18[4] = 
{
	 { 1251, 843, 270, 0, -878, 0, 81, 72, 55, 255 }, // 0x00002D18
	 { 1251, 783, 270, 0, -878, 1024, 81, 72, 55, 255 }, // 0x00002D28
	 { 1251, 783, 99, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x00002D38
	 { 1251, 843, 99, 0, 2048, 0, 134, 119, 89, 255 }, // 0x00002D48
};

Vtx_t _jyasinzou_room_17_vertices_00002D58[4] = 
{
	 { 1251, 831, 99, 0, -1463, -815, 100, 89, 67, 255 }, // 0x00002D58
	 { 1251, 483, 99, 0, -1463, 5120, 0, 0, 0, 255 }, // 0x00002D68
	 { 1314, 483, 99, 0, -390, 5120, 0, 0, 0, 255 }, // 0x00002D78
	 { 1314, 831, 99, 0, -390, -815, 115, 102, 78, 255 }, // 0x00002D88
};

Vtx_t _jyasinzou_room_17_vertices_00002D98[4] = 
{
	 { 1251, 843, 99, 0, 0, 0, 134, 119, 89, 255 }, // 0x00002D98
	 { 1251, 831, 99, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00002DA8
	 { 1314, 831, 99, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00002DB8
	 { 1314, 843, 99, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00002DC8
};

Vtx_t _jyasinzou_room_17_vertices_00002DD8[4] = 
{
	 { 1314, 831, 99, 0, -390, -815, 115, 102, 78, 255 }, // 0x00002DD8
	 { 1314, 483, 99, 0, -390, 5120, 0, 0, 0, 255 }, // 0x00002DE8
	 { 1337, 483, 76, 0, 0, 5120, 0, 0, 0, 255 }, // 0x00002DF8
	 { 1337, 831, 76, 0, 0, -815, 115, 102, 78, 255 }, // 0x00002E08
};

Vtx_t _jyasinzou_room_17_vertices_00002E18[4] = 
{
	 { 1314, 843, 99, 0, 0, 0, 134, 119, 89, 255 }, // 0x00002E18
	 { 1314, 831, 99, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00002E28
	 { 1337, 831, 76, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00002E38
	 { 1337, 843, 76, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00002E48
};

Vtx_t _jyasinzou_room_17_vertices_00002E58[4] = 
{
	 { 1337, 783, 76, 0, 0, 0, 81, 72, 55, 255 }, // 0x00002E58
	 { 1337, 483, 76, 0, 0, 5120, 0, 0, 0, 255 }, // 0x00002E68
	 { 1423, 483, 76, 0, 1463, 5120, 0, 0, 0, 255 }, // 0x00002E78
	 { 1423, 783, 76, 0, 1463, 0, 81, 72, 55, 255 }, // 0x00002E88
};

Vtx_t _jyasinzou_room_17_vertices_00002E98[4] = 
{
	 { 1337, 843, 76, 0, 1414, 0, 134, 119, 89, 255 }, // 0x00002E98
	 { 1337, 783, 76, 0, 1414, 1024, 81, 72, 55, 255 }, // 0x00002EA8
	 { 1423, 783, 76, 0, 2877, 1024, 81, 72, 55, 255 }, // 0x00002EB8
	 { 1423, 843, 76, 0, 2877, 0, 134, 119, 89, 255 }, // 0x00002EC8
};

Vtx_t _jyasinzou_room_17_vertices_00002ED8[4] = 
{
	 { 1274, 783, -73, 0, 0, 0, 81, 72, 55, 255 }, // 0x00002ED8
	 { 1274, 483, -73, 0, 0, 5120, 0, 0, 0, 255 }, // 0x00002EE8
	 { 1274, 483, 13, 0, 1463, 5120, 0, 0, 0, 255 }, // 0x00002EF8
	 { 1274, 783, 13, 0, 1463, 0, 100, 89, 67, 255 }, // 0x00002F08
};

Vtx_t _jyasinzou_room_17_vertices_00002F18[4] = 
{
	 { 1274, 843, -73, 0, 0, 0, 134, 119, 89, 255 }, // 0x00002F18
	 { 1274, 783, -73, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00002F28
	 { 1274, 783, 13, 0, 1463, 1024, 100, 89, 67, 255 }, // 0x00002F38
	 { 1274, 843, 13, 0, 1463, 0, 134, 119, 89, 255 }, // 0x00002F48
};

Vtx_t _jyasinzou_room_17_vertices_00002F58[4] = 
{
	 { 1274, 783, 13, 0, 0, 0, 100, 89, 67, 255 }, // 0x00002F58
	 { 1274, 483, 13, 0, 0, 5120, 0, 0, 0, 255 }, // 0x00002F68
	 { 1080, 483, 13, 0, 3316, 5120, 0, 0, 0, 255 }, // 0x00002F78
	 { 1080, 783, 13, 0, 3316, 0, 81, 72, 55, 255 }, // 0x00002F88
};

Vtx_t _jyasinzou_room_17_vertices_00002F98[4] = 
{
	 { 1251, 843, 13, 0, 1024, 0, 115, 102, 78, 255 }, // 0x00002F98
	 { 1251, 783, 13, 0, 1024, 1024, 100, 89, 67, 255 }, // 0x00002FA8
	 { 1080, 783, 13, 0, 3950, 1024, 81, 72, 55, 255 }, // 0x00002FB8
	 { 1080, 843, 13, 0, 3950, 0, 81, 72, 55, 255 }, // 0x00002FC8
};

Vtx_t _jyasinzou_room_17_vertices_00002FD8[4] = 
{
	 { 1080, 783, -73, 0, 0, 0, 81, 72, 55, 255 }, // 0x00002FD8
	 { 1080, 483, -73, 0, 0, 5120, 0, 0, 0, 255 }, // 0x00002FE8
	 { 1274, 483, -73, 0, 3316, 5120, 0, 0, 0, 255 }, // 0x00002FF8
	 { 1274, 783, -73, 0, 3316, 0, 81, 72, 55, 255 }, // 0x00003008
};

Vtx_t _jyasinzou_room_17_vertices_00003018[4] = 
{
	 { 1080, 843, -73, 0, 0, 0, 134, 119, 89, 255 }, // 0x00003018
	 { 1080, 783, -73, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00003028
	 { 1251, 783, -73, 0, 2926, 1024, 81, 72, 55, 255 }, // 0x00003038
	 { 1251, 843, -73, 0, 2926, 0, 134, 119, 89, 255 }, // 0x00003048
};

Vtx_t _jyasinzou_room_17_vertices_00003058[4] = 
{
	 { 1251, 843, -73, 0, 0, 0, 134, 119, 89, 255 }, // 0x00003058
	 { 1251, 831, -73, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00003068
	 { 1274, 831, -73, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00003078
	 { 1274, 843, -73, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00003088
};

Vtx_t _jyasinzou_room_17_vertices_00003098[4] = 
{
	 { 1251, 831, -73, 0, 2926, 213, 115, 102, 78, 255 }, // 0x00003098
	 { 1251, 783, -73, 0, 2926, 1024, 81, 72, 55, 255 }, // 0x000030A8
	 { 1274, 783, -73, 0, 3316, 1024, 81, 72, 55, 255 }, // 0x000030B8
	 { 1274, 831, -73, 0, 3316, 213, 115, 102, 78, 255 }, // 0x000030C8
};

Vtx_t _jyasinzou_room_17_vertices_000030D8[8] = 
{
	 { 1509, 843, 13, 0, 0, 0, 134, 119, 89, 255 }, // 0x000030D8
	 { 1509, 831, 13, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000030E8
	 { 1486, 831, 13, 0, 1024, 1024, 81, 72, 55, 255 }, // 0x000030F8
	 { 1486, 843, 13, 0, 1024, 0, 134, 119, 89, 255 }, // 0x00003108
	 { 1274, 843, 13, 0, 0, 0, 115, 102, 78, 255 }, // 0x00003118
	 { 1274, 831, 13, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00003128
	 { 1251, 831, 13, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00003138
	 { 1251, 843, 13, 0, 1024, 0, 115, 102, 78, 255 }, // 0x00003148
};

Vtx_t _jyasinzou_room_17_vertices_00003158[8] = 
{
	 { 1274, 831, 13, 0, 634, 209, 115, 102, 78, 255 }, // 0x00003158
	 { 1274, 783, 13, 0, 634, 1024, 100, 89, 67, 255 }, // 0x00003168
	 { 1251, 783, 13, 0, 1024, 1024, 100, 89, 67, 255 }, // 0x00003178
	 { 1251, 831, 13, 0, 1024, 209, 115, 102, 78, 255 }, // 0x00003188
	 { 1509, 831, 13, 0, 2682, 209, 100, 89, 67, 255 }, // 0x00003198
	 { 1509, 783, 13, 0, 2682, 1024, 100, 89, 67, 255 }, // 0x000031A8
	 { 1486, 783, 13, 0, 3072, 1024, 100, 89, 67, 255 }, // 0x000031B8
	 { 1486, 831, 13, 0, 3072, 209, 81, 72, 55, 255 }, // 0x000031C8
};

Vtx_t _jyasinzou_room_17_vertices_000031D8[8] = 
{
	 { 1080, 483, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x000031D8
	 { 1680, 483, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x000031E8
	 { 1080, 843, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x000031F8
	 { 1680, 843, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003208
	 { 1080, 483, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003218
	 { 1680, 483, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003228
	 { 1080, 843, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003238
	 { 1680, 843, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003248
};

Gfx _jyasinzou_room_17_dlist_00003258[] =
{
	gsDPPipeSync(), // 0x00003258
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003260
	gsSPVertex(_jyasinzou_room_17_vertices_000031D8, 8, 0), // 0x00003268
	gsSPCullDisplayList(0, 7), // 0x00003270
	gsDPPipeSync(), // 0x00003278
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003280
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003288
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003290
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00006650), // 0x00003298
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000032A0
	gsDPLoadSync(), // 0x000032A8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000032B0
	gsDPPipeSync(), // 0x000032B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000032C0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000032C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x000032D0
	gsDPTileSync(), // 0x000032D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000032E0
	gsDPLoadSync(), // 0x000032E8
	gsDPLoadTLUTCmd(7, 255), // 0x000032F0
	gsDPPipeSync(), // 0x000032F8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003300
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003308
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003310
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003318
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003320
	gsSPVertex(_jyasinzou_room_17_vertices_00001B58, 24, 0), // 0x00003328
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003330
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003338
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003340
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003348
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003350
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00003358
	gsDPPipeSync(), // 0x00003360
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00003368
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003370
	gsDPLoadSync(), // 0x00003378
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003380
	gsDPPipeSync(), // 0x00003388
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003390
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003398
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000033A0
	gsDPTileSync(), // 0x000033A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000033B0
	gsDPLoadSync(), // 0x000033B8
	gsDPLoadTLUTCmd(7, 15), // 0x000033C0
	gsDPPipeSync(), // 0x000033C8
	gsSPVertex(_jyasinzou_room_17_vertices_00001CD8, 4, 0), // 0x000033D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000033D8
	gsDPPipeSync(), // 0x000033E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000033E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000033F0
	gsDPLoadSync(), // 0x000033F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003400
	gsDPPipeSync(), // 0x00003408
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003410
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003418
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00003420
	gsDPTileSync(), // 0x00003428
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003430
	gsDPLoadSync(), // 0x00003438
	gsDPLoadTLUTCmd(7, 255), // 0x00003440
	gsDPPipeSync(), // 0x00003448
	gsSPVertex(_jyasinzou_room_17_vertices_00001D18, 4, 0), // 0x00003450
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003458
	gsDPPipeSync(), // 0x00003460
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00003468
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003470
	gsDPLoadSync(), // 0x00003478
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003480
	gsDPPipeSync(), // 0x00003488
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003490
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003498
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000034A0
	gsDPTileSync(), // 0x000034A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000034B0
	gsDPLoadSync(), // 0x000034B8
	gsDPLoadTLUTCmd(7, 15), // 0x000034C0
	gsDPPipeSync(), // 0x000034C8
	gsSPVertex(_jyasinzou_room_17_vertices_00001D58, 4, 0), // 0x000034D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000034D8
	gsDPPipeSync(), // 0x000034E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000034E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000034F0
	gsDPLoadSync(), // 0x000034F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003500
	gsDPPipeSync(), // 0x00003508
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003510
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003518
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00003520
	gsDPTileSync(), // 0x00003528
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003530
	gsDPLoadSync(), // 0x00003538
	gsDPLoadTLUTCmd(7, 255), // 0x00003540
	gsDPPipeSync(), // 0x00003548
	gsSPVertex(_jyasinzou_room_17_vertices_00001D98, 4, 0), // 0x00003550
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003558
	gsDPPipeSync(), // 0x00003560
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00003568
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003570
	gsDPLoadSync(), // 0x00003578
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003580
	gsDPPipeSync(), // 0x00003588
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003590
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003598
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000035A0
	gsDPTileSync(), // 0x000035A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000035B0
	gsDPLoadSync(), // 0x000035B8
	gsDPLoadTLUTCmd(7, 15), // 0x000035C0
	gsDPPipeSync(), // 0x000035C8
	gsSPVertex(_jyasinzou_room_17_vertices_00001DD8, 4, 0), // 0x000035D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000035D8
	gsDPPipeSync(), // 0x000035E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000035E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000035F0
	gsDPLoadSync(), // 0x000035F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003600
	gsDPPipeSync(), // 0x00003608
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003610
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003618
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00003620
	gsDPTileSync(), // 0x00003628
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003630
	gsDPLoadSync(), // 0x00003638
	gsDPLoadTLUTCmd(7, 255), // 0x00003640
	gsDPPipeSync(), // 0x00003648
	gsSPVertex(_jyasinzou_room_17_vertices_00001E18, 4, 0), // 0x00003650
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003658
	gsDPPipeSync(), // 0x00003660
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00003668
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003670
	gsDPLoadSync(), // 0x00003678
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003680
	gsDPPipeSync(), // 0x00003688
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003690
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003698
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000036A0
	gsDPTileSync(), // 0x000036A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000036B0
	gsDPLoadSync(), // 0x000036B8
	gsDPLoadTLUTCmd(7, 15), // 0x000036C0
	gsDPPipeSync(), // 0x000036C8
	gsSPVertex(_jyasinzou_room_17_vertices_00001E58, 4, 0), // 0x000036D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000036D8
	gsDPPipeSync(), // 0x000036E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x000036E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000036F0
	gsDPLoadSync(), // 0x000036F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003700
	gsDPPipeSync(), // 0x00003708
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003710
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003718
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00003720
	gsDPTileSync(), // 0x00003728
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003730
	gsDPLoadSync(), // 0x00003738
	gsDPLoadTLUTCmd(7, 255), // 0x00003740
	gsDPPipeSync(), // 0x00003748
	gsSPVertex(_jyasinzou_room_17_vertices_00001E98, 4, 0), // 0x00003750
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003758
	gsDPPipeSync(), // 0x00003760
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00003768
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003770
	gsDPLoadSync(), // 0x00003778
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003780
	gsDPPipeSync(), // 0x00003788
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003790
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003798
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000037A0
	gsDPTileSync(), // 0x000037A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000037B0
	gsDPLoadSync(), // 0x000037B8
	gsDPLoadTLUTCmd(7, 15), // 0x000037C0
	gsDPPipeSync(), // 0x000037C8
	gsSPVertex(_jyasinzou_room_17_vertices_00001ED8, 4, 0), // 0x000037D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000037D8
	gsDPPipeSync(), // 0x000037E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000037E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000037F0
	gsDPLoadSync(), // 0x000037F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003800
	gsDPPipeSync(), // 0x00003808
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003810
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003818
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00003820
	gsDPTileSync(), // 0x00003828
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003830
	gsDPLoadSync(), // 0x00003838
	gsDPLoadTLUTCmd(7, 255), // 0x00003840
	gsDPPipeSync(), // 0x00003848
	gsSPVertex(_jyasinzou_room_17_vertices_00001F18, 4, 0), // 0x00003850
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003858
	gsDPPipeSync(), // 0x00003860
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00003868
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003870
	gsDPLoadSync(), // 0x00003878
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003880
	gsDPPipeSync(), // 0x00003888
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003890
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003898
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000038A0
	gsDPTileSync(), // 0x000038A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000038B0
	gsDPLoadSync(), // 0x000038B8
	gsDPLoadTLUTCmd(7, 15), // 0x000038C0
	gsDPPipeSync(), // 0x000038C8
	gsSPVertex(_jyasinzou_room_17_vertices_00001F58, 4, 0), // 0x000038D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000038D8
	gsDPPipeSync(), // 0x000038E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x000038E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000038F0
	gsDPLoadSync(), // 0x000038F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003900
	gsDPPipeSync(), // 0x00003908
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003910
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003918
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00003920
	gsDPTileSync(), // 0x00003928
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003930
	gsDPLoadSync(), // 0x00003938
	gsDPLoadTLUTCmd(7, 255), // 0x00003940
	gsDPPipeSync(), // 0x00003948
	gsSPVertex(_jyasinzou_room_17_vertices_00001F98, 4, 0), // 0x00003950
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003958
	gsDPPipeSync(), // 0x00003960
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00003968
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003970
	gsDPLoadSync(), // 0x00003978
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003980
	gsDPPipeSync(), // 0x00003988
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003990
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003998
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000039A0
	gsDPTileSync(), // 0x000039A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000039B0
	gsDPLoadSync(), // 0x000039B8
	gsDPLoadTLUTCmd(7, 15), // 0x000039C0
	gsDPPipeSync(), // 0x000039C8
	gsSPVertex(_jyasinzou_room_17_vertices_00001FD8, 4, 0), // 0x000039D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000039D8
	gsDPPipeSync(), // 0x000039E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x000039E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000039F0
	gsDPLoadSync(), // 0x000039F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003A00
	gsDPPipeSync(), // 0x00003A08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003A10
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003A18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00003A20
	gsDPTileSync(), // 0x00003A28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003A30
	gsDPLoadSync(), // 0x00003A38
	gsDPLoadTLUTCmd(7, 255), // 0x00003A40
	gsDPPipeSync(), // 0x00003A48
	gsSPVertex(_jyasinzou_room_17_vertices_00002018, 4, 0), // 0x00003A50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003A58
	gsDPPipeSync(), // 0x00003A60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00003A68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003A70
	gsDPLoadSync(), // 0x00003A78
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003A80
	gsDPPipeSync(), // 0x00003A88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003A90
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003A98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00003AA0
	gsDPTileSync(), // 0x00003AA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003AB0
	gsDPLoadSync(), // 0x00003AB8
	gsDPLoadTLUTCmd(7, 15), // 0x00003AC0
	gsDPPipeSync(), // 0x00003AC8
	gsSPVertex(_jyasinzou_room_17_vertices_00002058, 4, 0), // 0x00003AD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003AD8
	gsDPPipeSync(), // 0x00003AE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x00003AE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003AF0
	gsDPLoadSync(), // 0x00003AF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003B00
	gsDPPipeSync(), // 0x00003B08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003B10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003B18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00003B20
	gsDPTileSync(), // 0x00003B28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003B30
	gsDPLoadSync(), // 0x00003B38
	gsDPLoadTLUTCmd(7, 255), // 0x00003B40
	gsDPPipeSync(), // 0x00003B48
	gsSPVertex(_jyasinzou_room_17_vertices_00002098, 4, 0), // 0x00003B50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003B58
	gsDPPipeSync(), // 0x00003B60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00003B68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003B70
	gsDPLoadSync(), // 0x00003B78
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003B80
	gsDPPipeSync(), // 0x00003B88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003B90
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003B98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00003BA0
	gsDPTileSync(), // 0x00003BA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003BB0
	gsDPLoadSync(), // 0x00003BB8
	gsDPLoadTLUTCmd(7, 15), // 0x00003BC0
	gsDPPipeSync(), // 0x00003BC8
	gsSPVertex(_jyasinzou_room_17_vertices_000020D8, 4, 0), // 0x00003BD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003BD8
	gsDPPipeSync(), // 0x00003BE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x00003BE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003BF0
	gsDPLoadSync(), // 0x00003BF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003C00
	gsDPPipeSync(), // 0x00003C08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003C10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003C18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00003C20
	gsDPTileSync(), // 0x00003C28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003C30
	gsDPLoadSync(), // 0x00003C38
	gsDPLoadTLUTCmd(7, 255), // 0x00003C40
	gsDPPipeSync(), // 0x00003C48
	gsSPVertex(_jyasinzou_room_17_vertices_00002118, 4, 0), // 0x00003C50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003C58
	gsDPPipeSync(), // 0x00003C60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00003C68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003C70
	gsDPLoadSync(), // 0x00003C78
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003C80
	gsDPPipeSync(), // 0x00003C88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003C90
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003C98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00003CA0
	gsDPTileSync(), // 0x00003CA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003CB0
	gsDPLoadSync(), // 0x00003CB8
	gsDPLoadTLUTCmd(7, 15), // 0x00003CC0
	gsDPPipeSync(), // 0x00003CC8
	gsSPVertex(_jyasinzou_room_17_vertices_00002158, 4, 0), // 0x00003CD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003CD8
	gsDPPipeSync(), // 0x00003CE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x00003CE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003CF0
	gsDPLoadSync(), // 0x00003CF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003D00
	gsDPPipeSync(), // 0x00003D08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003D10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003D18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00003D20
	gsDPTileSync(), // 0x00003D28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003D30
	gsDPLoadSync(), // 0x00003D38
	gsDPLoadTLUTCmd(7, 255), // 0x00003D40
	gsDPPipeSync(), // 0x00003D48
	gsSPVertex(_jyasinzou_room_17_vertices_00002198, 4, 0), // 0x00003D50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003D58
	gsDPPipeSync(), // 0x00003D60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00003D68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003D70
	gsDPLoadSync(), // 0x00003D78
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003D80
	gsDPPipeSync(), // 0x00003D88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003D90
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003D98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00003DA0
	gsDPTileSync(), // 0x00003DA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003DB0
	gsDPLoadSync(), // 0x00003DB8
	gsDPLoadTLUTCmd(7, 15), // 0x00003DC0
	gsDPPipeSync(), // 0x00003DC8
	gsSPVertex(_jyasinzou_room_17_vertices_000021D8, 4, 0), // 0x00003DD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003DD8
	gsDPPipeSync(), // 0x00003DE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x00003DE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003DF0
	gsDPLoadSync(), // 0x00003DF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003E00
	gsDPPipeSync(), // 0x00003E08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003E10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003E18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00003E20
	gsDPTileSync(), // 0x00003E28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003E30
	gsDPLoadSync(), // 0x00003E38
	gsDPLoadTLUTCmd(7, 255), // 0x00003E40
	gsDPPipeSync(), // 0x00003E48
	gsSPVertex(_jyasinzou_room_17_vertices_00002218, 4, 0), // 0x00003E50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003E58
	gsDPPipeSync(), // 0x00003E60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00003E68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003E70
	gsDPLoadSync(), // 0x00003E78
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003E80
	gsDPPipeSync(), // 0x00003E88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003E90
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003E98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00003EA0
	gsDPTileSync(), // 0x00003EA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003EB0
	gsDPLoadSync(), // 0x00003EB8
	gsDPLoadTLUTCmd(7, 15), // 0x00003EC0
	gsDPPipeSync(), // 0x00003EC8
	gsSPVertex(_jyasinzou_room_17_vertices_00002258, 4, 0), // 0x00003ED0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003ED8
	gsDPPipeSync(), // 0x00003EE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x00003EE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003EF0
	gsDPLoadSync(), // 0x00003EF8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003F00
	gsDPPipeSync(), // 0x00003F08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003F10
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003F18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00003F20
	gsDPTileSync(), // 0x00003F28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003F30
	gsDPLoadSync(), // 0x00003F38
	gsDPLoadTLUTCmd(7, 255), // 0x00003F40
	gsDPPipeSync(), // 0x00003F48
	gsSPVertex(_jyasinzou_room_17_vertices_00002298, 4, 0), // 0x00003F50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003F58
	gsDPPipeSync(), // 0x00003F60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00003F68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00003F70
	gsDPLoadSync(), // 0x00003F78
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003F80
	gsDPPipeSync(), // 0x00003F88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00003F90
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003F98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00003FA0
	gsDPTileSync(), // 0x00003FA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003FB0
	gsDPLoadSync(), // 0x00003FB8
	gsDPLoadTLUTCmd(7, 15), // 0x00003FC0
	gsDPPipeSync(), // 0x00003FC8
	gsSPVertex(_jyasinzou_room_17_vertices_000022D8, 4, 0), // 0x00003FD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003FD8
	gsDPPipeSync(), // 0x00003FE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x00003FE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003FF0
	gsDPLoadSync(), // 0x00003FF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004000
	gsDPPipeSync(), // 0x00004008
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004010
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004018
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004020
	gsDPTileSync(), // 0x00004028
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004030
	gsDPLoadSync(), // 0x00004038
	gsDPLoadTLUTCmd(7, 255), // 0x00004040
	gsDPPipeSync(), // 0x00004048
	gsSPVertex(_jyasinzou_room_17_vertices_00002318, 4, 0), // 0x00004050
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004058
	gsDPPipeSync(), // 0x00004060
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004068
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004070
	gsDPLoadSync(), // 0x00004078
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004080
	gsDPPipeSync(), // 0x00004088
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004090
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004098
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000040A0
	gsDPTileSync(), // 0x000040A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000040B0
	gsDPLoadSync(), // 0x000040B8
	gsDPLoadTLUTCmd(7, 15), // 0x000040C0
	gsDPPipeSync(), // 0x000040C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002358, 4, 0), // 0x000040D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000040D8
	gsDPPipeSync(), // 0x000040E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000040E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000040F0
	gsDPLoadSync(), // 0x000040F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004100
	gsDPPipeSync(), // 0x00004108
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004110
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004118
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004120
	gsDPTileSync(), // 0x00004128
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004130
	gsDPLoadSync(), // 0x00004138
	gsDPLoadTLUTCmd(7, 255), // 0x00004140
	gsDPPipeSync(), // 0x00004148
	gsSPVertex(_jyasinzou_room_17_vertices_00002398, 4, 0), // 0x00004150
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004158
	gsDPPipeSync(), // 0x00004160
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004168
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004170
	gsDPLoadSync(), // 0x00004178
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004180
	gsDPPipeSync(), // 0x00004188
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004190
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004198
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000041A0
	gsDPTileSync(), // 0x000041A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000041B0
	gsDPLoadSync(), // 0x000041B8
	gsDPLoadTLUTCmd(7, 15), // 0x000041C0
	gsDPPipeSync(), // 0x000041C8
	gsSPVertex(_jyasinzou_room_17_vertices_000023D8, 4, 0), // 0x000041D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000041D8
	gsDPPipeSync(), // 0x000041E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000041E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000041F0
	gsDPLoadSync(), // 0x000041F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004200
	gsDPPipeSync(), // 0x00004208
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004210
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004218
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004220
	gsDPTileSync(), // 0x00004228
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004230
	gsDPLoadSync(), // 0x00004238
	gsDPLoadTLUTCmd(7, 255), // 0x00004240
	gsDPPipeSync(), // 0x00004248
	gsSPVertex(_jyasinzou_room_17_vertices_00002418, 4, 0), // 0x00004250
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004258
	gsDPPipeSync(), // 0x00004260
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004268
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004270
	gsDPLoadSync(), // 0x00004278
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004280
	gsDPPipeSync(), // 0x00004288
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004290
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004298
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000042A0
	gsDPTileSync(), // 0x000042A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000042B0
	gsDPLoadSync(), // 0x000042B8
	gsDPLoadTLUTCmd(7, 15), // 0x000042C0
	gsDPPipeSync(), // 0x000042C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002458, 4, 0), // 0x000042D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000042D8
	gsDPPipeSync(), // 0x000042E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000042E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000042F0
	gsDPLoadSync(), // 0x000042F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004300
	gsDPPipeSync(), // 0x00004308
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004310
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004318
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004320
	gsDPTileSync(), // 0x00004328
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004330
	gsDPLoadSync(), // 0x00004338
	gsDPLoadTLUTCmd(7, 255), // 0x00004340
	gsDPPipeSync(), // 0x00004348
	gsSPVertex(_jyasinzou_room_17_vertices_00002498, 4, 0), // 0x00004350
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004358
	gsDPPipeSync(), // 0x00004360
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004368
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004370
	gsDPLoadSync(), // 0x00004378
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004380
	gsDPPipeSync(), // 0x00004388
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004390
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004398
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000043A0
	gsDPTileSync(), // 0x000043A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000043B0
	gsDPLoadSync(), // 0x000043B8
	gsDPLoadTLUTCmd(7, 15), // 0x000043C0
	gsDPPipeSync(), // 0x000043C8
	gsSPVertex(_jyasinzou_room_17_vertices_000024D8, 4, 0), // 0x000043D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000043D8
	gsDPPipeSync(), // 0x000043E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000043E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000043F0
	gsDPLoadSync(), // 0x000043F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004400
	gsDPPipeSync(), // 0x00004408
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004410
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004418
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004420
	gsDPTileSync(), // 0x00004428
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004430
	gsDPLoadSync(), // 0x00004438
	gsDPLoadTLUTCmd(7, 255), // 0x00004440
	gsDPPipeSync(), // 0x00004448
	gsSPVertex(_jyasinzou_room_17_vertices_00002518, 4, 0), // 0x00004450
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004458
	gsDPPipeSync(), // 0x00004460
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004468
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004470
	gsDPLoadSync(), // 0x00004478
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004480
	gsDPPipeSync(), // 0x00004488
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004490
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004498
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000044A0
	gsDPTileSync(), // 0x000044A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000044B0
	gsDPLoadSync(), // 0x000044B8
	gsDPLoadTLUTCmd(7, 15), // 0x000044C0
	gsDPPipeSync(), // 0x000044C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002558, 4, 0), // 0x000044D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000044D8
	gsDPPipeSync(), // 0x000044E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000044E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000044F0
	gsDPLoadSync(), // 0x000044F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004500
	gsDPPipeSync(), // 0x00004508
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004510
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004518
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004520
	gsDPTileSync(), // 0x00004528
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004530
	gsDPLoadSync(), // 0x00004538
	gsDPLoadTLUTCmd(7, 255), // 0x00004540
	gsDPPipeSync(), // 0x00004548
	gsSPVertex(_jyasinzou_room_17_vertices_00002598, 4, 0), // 0x00004550
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004558
	gsDPPipeSync(), // 0x00004560
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004568
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004570
	gsDPLoadSync(), // 0x00004578
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004580
	gsDPPipeSync(), // 0x00004588
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004590
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004598
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000045A0
	gsDPTileSync(), // 0x000045A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000045B0
	gsDPLoadSync(), // 0x000045B8
	gsDPLoadTLUTCmd(7, 15), // 0x000045C0
	gsDPPipeSync(), // 0x000045C8
	gsSPVertex(_jyasinzou_room_17_vertices_000025D8, 4, 0), // 0x000045D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000045D8
	gsDPPipeSync(), // 0x000045E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000045E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000045F0
	gsDPLoadSync(), // 0x000045F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004600
	gsDPPipeSync(), // 0x00004608
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004610
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004618
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004620
	gsDPTileSync(), // 0x00004628
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004630
	gsDPLoadSync(), // 0x00004638
	gsDPLoadTLUTCmd(7, 255), // 0x00004640
	gsDPPipeSync(), // 0x00004648
	gsSPVertex(_jyasinzou_room_17_vertices_00002618, 4, 0), // 0x00004650
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004658
	gsDPPipeSync(), // 0x00004660
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004668
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004670
	gsDPLoadSync(), // 0x00004678
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004680
	gsDPPipeSync(), // 0x00004688
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004690
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004698
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000046A0
	gsDPTileSync(), // 0x000046A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000046B0
	gsDPLoadSync(), // 0x000046B8
	gsDPLoadTLUTCmd(7, 15), // 0x000046C0
	gsDPPipeSync(), // 0x000046C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002658, 4, 0), // 0x000046D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000046D8
	gsDPPipeSync(), // 0x000046E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x000046E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000046F0
	gsDPLoadSync(), // 0x000046F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004700
	gsDPPipeSync(), // 0x00004708
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004710
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004718
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00004720
	gsDPTileSync(), // 0x00004728
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004730
	gsDPLoadSync(), // 0x00004738
	gsDPLoadTLUTCmd(7, 255), // 0x00004740
	gsDPPipeSync(), // 0x00004748
	gsSPVertex(_jyasinzou_room_17_vertices_00002698, 4, 0), // 0x00004750
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004758
	gsDPPipeSync(), // 0x00004760
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004768
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004770
	gsDPLoadSync(), // 0x00004778
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004780
	gsDPPipeSync(), // 0x00004788
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004790
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004798
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000047A0
	gsDPTileSync(), // 0x000047A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000047B0
	gsDPLoadSync(), // 0x000047B8
	gsDPLoadTLUTCmd(7, 15), // 0x000047C0
	gsDPPipeSync(), // 0x000047C8
	gsSPVertex(_jyasinzou_room_17_vertices_000026D8, 4, 0), // 0x000047D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000047D8
	gsDPPipeSync(), // 0x000047E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000047E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000047F0
	gsDPLoadSync(), // 0x000047F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004800
	gsDPPipeSync(), // 0x00004808
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004810
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004818
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004820
	gsDPTileSync(), // 0x00004828
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004830
	gsDPLoadSync(), // 0x00004838
	gsDPLoadTLUTCmd(7, 255), // 0x00004840
	gsDPPipeSync(), // 0x00004848
	gsSPVertex(_jyasinzou_room_17_vertices_00002718, 4, 0), // 0x00004850
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004858
	gsDPPipeSync(), // 0x00004860
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004868
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004870
	gsDPLoadSync(), // 0x00004878
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004880
	gsDPPipeSync(), // 0x00004888
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004890
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004898
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000048A0
	gsDPTileSync(), // 0x000048A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000048B0
	gsDPLoadSync(), // 0x000048B8
	gsDPLoadTLUTCmd(7, 15), // 0x000048C0
	gsDPPipeSync(), // 0x000048C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002758, 4, 0), // 0x000048D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000048D8
	gsDPPipeSync(), // 0x000048E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000048E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000048F0
	gsDPLoadSync(), // 0x000048F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004900
	gsDPPipeSync(), // 0x00004908
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004910
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004918
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004920
	gsDPTileSync(), // 0x00004928
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004930
	gsDPLoadSync(), // 0x00004938
	gsDPLoadTLUTCmd(7, 255), // 0x00004940
	gsDPPipeSync(), // 0x00004948
	gsSPVertex(_jyasinzou_room_17_vertices_00002798, 4, 0), // 0x00004950
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004958
	gsDPPipeSync(), // 0x00004960
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004968
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004970
	gsDPLoadSync(), // 0x00004978
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004980
	gsDPPipeSync(), // 0x00004988
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004990
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004998
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000049A0
	gsDPTileSync(), // 0x000049A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000049B0
	gsDPLoadSync(), // 0x000049B8
	gsDPLoadTLUTCmd(7, 15), // 0x000049C0
	gsDPPipeSync(), // 0x000049C8
	gsSPVertex(_jyasinzou_room_17_vertices_000027D8, 4, 0), // 0x000049D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000049D8
	gsDPPipeSync(), // 0x000049E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x000049E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000049F0
	gsDPLoadSync(), // 0x000049F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004A00
	gsDPPipeSync(), // 0x00004A08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004A10
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004A18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00004A20
	gsDPTileSync(), // 0x00004A28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004A30
	gsDPLoadSync(), // 0x00004A38
	gsDPLoadTLUTCmd(7, 255), // 0x00004A40
	gsDPPipeSync(), // 0x00004A48
	gsSPVertex(_jyasinzou_room_17_vertices_00002818, 4, 0), // 0x00004A50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004A58
	gsDPPipeSync(), // 0x00004A60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004A68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004A70
	gsDPLoadSync(), // 0x00004A78
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004A80
	gsDPPipeSync(), // 0x00004A88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004A90
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004A98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00004AA0
	gsDPTileSync(), // 0x00004AA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004AB0
	gsDPLoadSync(), // 0x00004AB8
	gsDPLoadTLUTCmd(7, 15), // 0x00004AC0
	gsDPPipeSync(), // 0x00004AC8
	gsSPVertex(_jyasinzou_room_17_vertices_00002858, 4, 0), // 0x00004AD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004AD8
	gsDPPipeSync(), // 0x00004AE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x00004AE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004AF0
	gsDPLoadSync(), // 0x00004AF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004B00
	gsDPPipeSync(), // 0x00004B08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004B10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004B18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004B20
	gsDPTileSync(), // 0x00004B28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004B30
	gsDPLoadSync(), // 0x00004B38
	gsDPLoadTLUTCmd(7, 255), // 0x00004B40
	gsDPPipeSync(), // 0x00004B48
	gsSPVertex(_jyasinzou_room_17_vertices_00002898, 4, 0), // 0x00004B50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004B58
	gsDPPipeSync(), // 0x00004B60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004B68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004B70
	gsDPLoadSync(), // 0x00004B78
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004B80
	gsDPPipeSync(), // 0x00004B88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004B90
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004B98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00004BA0
	gsDPTileSync(), // 0x00004BA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004BB0
	gsDPLoadSync(), // 0x00004BB8
	gsDPLoadTLUTCmd(7, 15), // 0x00004BC0
	gsDPPipeSync(), // 0x00004BC8
	gsSPVertex(_jyasinzou_room_17_vertices_000028D8, 4, 0), // 0x00004BD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004BD8
	gsDPPipeSync(), // 0x00004BE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x00004BE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004BF0
	gsDPLoadSync(), // 0x00004BF8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004C00
	gsDPPipeSync(), // 0x00004C08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004C10
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004C18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00004C20
	gsDPTileSync(), // 0x00004C28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004C30
	gsDPLoadSync(), // 0x00004C38
	gsDPLoadTLUTCmd(7, 255), // 0x00004C40
	gsDPPipeSync(), // 0x00004C48
	gsSPVertex(_jyasinzou_room_17_vertices_00002918, 4, 0), // 0x00004C50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004C58
	gsDPPipeSync(), // 0x00004C60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004C68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004C70
	gsDPLoadSync(), // 0x00004C78
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004C80
	gsDPPipeSync(), // 0x00004C88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004C90
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004C98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00004CA0
	gsDPTileSync(), // 0x00004CA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004CB0
	gsDPLoadSync(), // 0x00004CB8
	gsDPLoadTLUTCmd(7, 15), // 0x00004CC0
	gsDPPipeSync(), // 0x00004CC8
	gsSPVertex(_jyasinzou_room_17_vertices_00002958, 4, 0), // 0x00004CD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004CD8
	gsDPPipeSync(), // 0x00004CE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x00004CE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004CF0
	gsDPLoadSync(), // 0x00004CF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004D00
	gsDPPipeSync(), // 0x00004D08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004D10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004D18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004D20
	gsDPTileSync(), // 0x00004D28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004D30
	gsDPLoadSync(), // 0x00004D38
	gsDPLoadTLUTCmd(7, 255), // 0x00004D40
	gsDPPipeSync(), // 0x00004D48
	gsSPVertex(_jyasinzou_room_17_vertices_00002998, 4, 0), // 0x00004D50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004D58
	gsDPPipeSync(), // 0x00004D60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004D68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004D70
	gsDPLoadSync(), // 0x00004D78
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004D80
	gsDPPipeSync(), // 0x00004D88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004D90
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004D98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00004DA0
	gsDPTileSync(), // 0x00004DA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004DB0
	gsDPLoadSync(), // 0x00004DB8
	gsDPLoadTLUTCmd(7, 15), // 0x00004DC0
	gsDPPipeSync(), // 0x00004DC8
	gsSPVertex(_jyasinzou_room_17_vertices_000029D8, 4, 0), // 0x00004DD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004DD8
	gsDPPipeSync(), // 0x00004DE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x00004DE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004DF0
	gsDPLoadSync(), // 0x00004DF8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00004E00
	gsDPPipeSync(), // 0x00004E08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004E10
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004E18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00004E20
	gsDPTileSync(), // 0x00004E28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004E30
	gsDPLoadSync(), // 0x00004E38
	gsDPLoadTLUTCmd(7, 255), // 0x00004E40
	gsDPPipeSync(), // 0x00004E48
	gsSPVertex(_jyasinzou_room_17_vertices_00002A18, 4, 0), // 0x00004E50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004E58
	gsDPPipeSync(), // 0x00004E60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004E68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004E70
	gsDPLoadSync(), // 0x00004E78
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004E80
	gsDPPipeSync(), // 0x00004E88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004E90
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004E98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00004EA0
	gsDPTileSync(), // 0x00004EA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004EB0
	gsDPLoadSync(), // 0x00004EB8
	gsDPLoadTLUTCmd(7, 15), // 0x00004EC0
	gsDPPipeSync(), // 0x00004EC8
	gsSPVertex(_jyasinzou_room_17_vertices_00002A58, 4, 0), // 0x00004ED0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004ED8
	gsDPPipeSync(), // 0x00004EE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x00004EE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00004EF0
	gsDPLoadSync(), // 0x00004EF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004F00
	gsDPPipeSync(), // 0x00004F08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00004F10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00004F18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00004F20
	gsDPTileSync(), // 0x00004F28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004F30
	gsDPLoadSync(), // 0x00004F38
	gsDPLoadTLUTCmd(7, 255), // 0x00004F40
	gsDPPipeSync(), // 0x00004F48
	gsSPVertex(_jyasinzou_room_17_vertices_00002A98, 4, 0), // 0x00004F50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004F58
	gsDPPipeSync(), // 0x00004F60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00004F68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00004F70
	gsDPLoadSync(), // 0x00004F78
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00004F80
	gsDPPipeSync(), // 0x00004F88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00004F90
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00004F98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00004FA0
	gsDPTileSync(), // 0x00004FA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00004FB0
	gsDPLoadSync(), // 0x00004FB8
	gsDPLoadTLUTCmd(7, 15), // 0x00004FC0
	gsDPPipeSync(), // 0x00004FC8
	gsSPVertex(_jyasinzou_room_17_vertices_00002AD8, 4, 0), // 0x00004FD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004FD8
	gsDPPipeSync(), // 0x00004FE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x00004FE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004FF0
	gsDPLoadSync(), // 0x00004FF8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005000
	gsDPPipeSync(), // 0x00005008
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005010
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005018
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00005020
	gsDPTileSync(), // 0x00005028
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005030
	gsDPLoadSync(), // 0x00005038
	gsDPLoadTLUTCmd(7, 255), // 0x00005040
	gsDPPipeSync(), // 0x00005048
	gsSPVertex(_jyasinzou_room_17_vertices_00002B18, 4, 0), // 0x00005050
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005058
	gsDPPipeSync(), // 0x00005060
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00005068
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005070
	gsDPLoadSync(), // 0x00005078
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005080
	gsDPPipeSync(), // 0x00005088
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005090
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005098
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000050A0
	gsDPTileSync(), // 0x000050A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000050B0
	gsDPLoadSync(), // 0x000050B8
	gsDPLoadTLUTCmd(7, 15), // 0x000050C0
	gsDPPipeSync(), // 0x000050C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002B58, 4, 0), // 0x000050D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000050D8
	gsDPPipeSync(), // 0x000050E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x000050E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000050F0
	gsDPLoadSync(), // 0x000050F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005100
	gsDPPipeSync(), // 0x00005108
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005110
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005118
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00005120
	gsDPTileSync(), // 0x00005128
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005130
	gsDPLoadSync(), // 0x00005138
	gsDPLoadTLUTCmd(7, 255), // 0x00005140
	gsDPPipeSync(), // 0x00005148
	gsSPVertex(_jyasinzou_room_17_vertices_00002B98, 4, 0), // 0x00005150
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005158
	gsDPPipeSync(), // 0x00005160
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00005168
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005170
	gsDPLoadSync(), // 0x00005178
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005180
	gsDPPipeSync(), // 0x00005188
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005190
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005198
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000051A0
	gsDPTileSync(), // 0x000051A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000051B0
	gsDPLoadSync(), // 0x000051B8
	gsDPLoadTLUTCmd(7, 15), // 0x000051C0
	gsDPPipeSync(), // 0x000051C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002BD8, 4, 0), // 0x000051D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000051D8
	gsDPPipeSync(), // 0x000051E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x000051E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000051F0
	gsDPLoadSync(), // 0x000051F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005200
	gsDPPipeSync(), // 0x00005208
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005210
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005218
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00005220
	gsDPTileSync(), // 0x00005228
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005230
	gsDPLoadSync(), // 0x00005238
	gsDPLoadTLUTCmd(7, 255), // 0x00005240
	gsDPPipeSync(), // 0x00005248
	gsSPVertex(_jyasinzou_room_17_vertices_00002C18, 4, 0), // 0x00005250
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005258
	gsDPPipeSync(), // 0x00005260
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00005268
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005270
	gsDPLoadSync(), // 0x00005278
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005280
	gsDPPipeSync(), // 0x00005288
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005290
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005298
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000052A0
	gsDPTileSync(), // 0x000052A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000052B0
	gsDPLoadSync(), // 0x000052B8
	gsDPLoadTLUTCmd(7, 15), // 0x000052C0
	gsDPPipeSync(), // 0x000052C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002C58, 4, 0), // 0x000052D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000052D8
	gsDPPipeSync(), // 0x000052E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000052E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000052F0
	gsDPLoadSync(), // 0x000052F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005300
	gsDPPipeSync(), // 0x00005308
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005310
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005318
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00005320
	gsDPTileSync(), // 0x00005328
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005330
	gsDPLoadSync(), // 0x00005338
	gsDPLoadTLUTCmd(7, 255), // 0x00005340
	gsDPPipeSync(), // 0x00005348
	gsSPVertex(_jyasinzou_room_17_vertices_00002C98, 4, 0), // 0x00005350
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005358
	gsDPPipeSync(), // 0x00005360
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00005368
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005370
	gsDPLoadSync(), // 0x00005378
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005380
	gsDPPipeSync(), // 0x00005388
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005390
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005398
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000053A0
	gsDPTileSync(), // 0x000053A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000053B0
	gsDPLoadSync(), // 0x000053B8
	gsDPLoadTLUTCmd(7, 15), // 0x000053C0
	gsDPPipeSync(), // 0x000053C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002CD8, 4, 0), // 0x000053D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000053D8
	gsDPPipeSync(), // 0x000053E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000053E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000053F0
	gsDPLoadSync(), // 0x000053F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005400
	gsDPPipeSync(), // 0x00005408
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005410
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005418
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00005420
	gsDPTileSync(), // 0x00005428
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005430
	gsDPLoadSync(), // 0x00005438
	gsDPLoadTLUTCmd(7, 255), // 0x00005440
	gsDPPipeSync(), // 0x00005448
	gsSPVertex(_jyasinzou_room_17_vertices_00002D18, 4, 0), // 0x00005450
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005458
	gsDPPipeSync(), // 0x00005460
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00005468
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005470
	gsDPLoadSync(), // 0x00005478
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005480
	gsDPPipeSync(), // 0x00005488
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005490
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005498
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000054A0
	gsDPTileSync(), // 0x000054A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000054B0
	gsDPLoadSync(), // 0x000054B8
	gsDPLoadTLUTCmd(7, 15), // 0x000054C0
	gsDPPipeSync(), // 0x000054C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002D58, 4, 0), // 0x000054D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000054D8
	gsDPPipeSync(), // 0x000054E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x000054E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000054F0
	gsDPLoadSync(), // 0x000054F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005500
	gsDPPipeSync(), // 0x00005508
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005510
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005518
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00005520
	gsDPTileSync(), // 0x00005528
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005530
	gsDPLoadSync(), // 0x00005538
	gsDPLoadTLUTCmd(7, 255), // 0x00005540
	gsDPPipeSync(), // 0x00005548
	gsSPVertex(_jyasinzou_room_17_vertices_00002D98, 4, 0), // 0x00005550
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005558
	gsDPPipeSync(), // 0x00005560
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00005568
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005570
	gsDPLoadSync(), // 0x00005578
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005580
	gsDPPipeSync(), // 0x00005588
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005590
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005598
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000055A0
	gsDPTileSync(), // 0x000055A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000055B0
	gsDPLoadSync(), // 0x000055B8
	gsDPLoadTLUTCmd(7, 15), // 0x000055C0
	gsDPPipeSync(), // 0x000055C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002DD8, 4, 0), // 0x000055D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000055D8
	gsDPPipeSync(), // 0x000055E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x000055E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000055F0
	gsDPLoadSync(), // 0x000055F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005600
	gsDPPipeSync(), // 0x00005608
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005610
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005618
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00005620
	gsDPTileSync(), // 0x00005628
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005630
	gsDPLoadSync(), // 0x00005638
	gsDPLoadTLUTCmd(7, 255), // 0x00005640
	gsDPPipeSync(), // 0x00005648
	gsSPVertex(_jyasinzou_room_17_vertices_00002E18, 4, 0), // 0x00005650
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005658
	gsDPPipeSync(), // 0x00005660
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00005668
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005670
	gsDPLoadSync(), // 0x00005678
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005680
	gsDPPipeSync(), // 0x00005688
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005690
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005698
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000056A0
	gsDPTileSync(), // 0x000056A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000056B0
	gsDPLoadSync(), // 0x000056B8
	gsDPLoadTLUTCmd(7, 15), // 0x000056C0
	gsDPPipeSync(), // 0x000056C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002E58, 4, 0), // 0x000056D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000056D8
	gsDPPipeSync(), // 0x000056E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000056E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000056F0
	gsDPLoadSync(), // 0x000056F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005700
	gsDPPipeSync(), // 0x00005708
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005710
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005718
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00005720
	gsDPTileSync(), // 0x00005728
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005730
	gsDPLoadSync(), // 0x00005738
	gsDPLoadTLUTCmd(7, 255), // 0x00005740
	gsDPPipeSync(), // 0x00005748
	gsSPVertex(_jyasinzou_room_17_vertices_00002E98, 4, 0), // 0x00005750
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005758
	gsDPPipeSync(), // 0x00005760
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00005768
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005770
	gsDPLoadSync(), // 0x00005778
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005780
	gsDPPipeSync(), // 0x00005788
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005790
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005798
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000057A0
	gsDPTileSync(), // 0x000057A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000057B0
	gsDPLoadSync(), // 0x000057B8
	gsDPLoadTLUTCmd(7, 15), // 0x000057C0
	gsDPPipeSync(), // 0x000057C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002ED8, 4, 0), // 0x000057D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000057D8
	gsDPPipeSync(), // 0x000057E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000057E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000057F0
	gsDPLoadSync(), // 0x000057F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005800
	gsDPPipeSync(), // 0x00005808
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005810
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005818
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00005820
	gsDPTileSync(), // 0x00005828
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005830
	gsDPLoadSync(), // 0x00005838
	gsDPLoadTLUTCmd(7, 255), // 0x00005840
	gsDPPipeSync(), // 0x00005848
	gsSPVertex(_jyasinzou_room_17_vertices_00002F18, 4, 0), // 0x00005850
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005858
	gsDPPipeSync(), // 0x00005860
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00005868
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005870
	gsDPLoadSync(), // 0x00005878
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005880
	gsDPPipeSync(), // 0x00005888
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005890
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005898
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000058A0
	gsDPTileSync(), // 0x000058A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000058B0
	gsDPLoadSync(), // 0x000058B8
	gsDPLoadTLUTCmd(7, 15), // 0x000058C0
	gsDPPipeSync(), // 0x000058C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002F58, 4, 0), // 0x000058D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000058D8
	gsDPPipeSync(), // 0x000058E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000058E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000058F0
	gsDPLoadSync(), // 0x000058F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005900
	gsDPPipeSync(), // 0x00005908
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005910
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005918
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00005920
	gsDPTileSync(), // 0x00005928
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005930
	gsDPLoadSync(), // 0x00005938
	gsDPLoadTLUTCmd(7, 255), // 0x00005940
	gsDPPipeSync(), // 0x00005948
	gsSPVertex(_jyasinzou_room_17_vertices_00002F98, 4, 0), // 0x00005950
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005958
	gsDPPipeSync(), // 0x00005960
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00005968
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005970
	gsDPLoadSync(), // 0x00005978
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005980
	gsDPPipeSync(), // 0x00005988
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005990
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005998
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000059A0
	gsDPTileSync(), // 0x000059A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000059B0
	gsDPLoadSync(), // 0x000059B8
	gsDPLoadTLUTCmd(7, 15), // 0x000059C0
	gsDPPipeSync(), // 0x000059C8
	gsSPVertex(_jyasinzou_room_17_vertices_00002FD8, 4, 0), // 0x000059D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000059D8
	gsDPPipeSync(), // 0x000059E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x000059E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000059F0
	gsDPLoadSync(), // 0x000059F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005A00
	gsDPPipeSync(), // 0x00005A08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005A10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005A18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00005A20
	gsDPTileSync(), // 0x00005A28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005A30
	gsDPLoadSync(), // 0x00005A38
	gsDPLoadTLUTCmd(7, 255), // 0x00005A40
	gsDPPipeSync(), // 0x00005A48
	gsSPVertex(_jyasinzou_room_17_vertices_00003018, 4, 0), // 0x00005A50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005A58
	gsDPPipeSync(), // 0x00005A60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x00005A68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005A70
	gsDPLoadSync(), // 0x00005A78
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005A80
	gsDPPipeSync(), // 0x00005A88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005A90
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005A98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00005AA0
	gsDPTileSync(), // 0x00005AA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005AB0
	gsDPLoadSync(), // 0x00005AB8
	gsDPLoadTLUTCmd(7, 255), // 0x00005AC0
	gsDPPipeSync(), // 0x00005AC8
	gsSPVertex(_jyasinzou_room_17_vertices_00003058, 4, 0), // 0x00005AD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005AD8
	gsDPPipeSync(), // 0x00005AE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x00005AE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005AF0
	gsDPLoadSync(), // 0x00005AF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005B00
	gsDPPipeSync(), // 0x00005B08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005B10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005B18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00005B20
	gsDPTileSync(), // 0x00005B28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005B30
	gsDPLoadSync(), // 0x00005B38
	gsDPLoadTLUTCmd(7, 255), // 0x00005B40
	gsDPPipeSync(), // 0x00005B48
	gsSPVertex(_jyasinzou_room_17_vertices_00003098, 4, 0), // 0x00005B50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005B58
	gsDPPipeSync(), // 0x00005B60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00008A50), // 0x00005B68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005B70
	gsDPLoadSync(), // 0x00005B78
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005B80
	gsDPPipeSync(), // 0x00005B88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005B90
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005B98
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00005BA0
	gsDPTileSync(), // 0x00005BA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005BB0
	gsDPLoadSync(), // 0x00005BB8
	gsDPLoadTLUTCmd(7, 255), // 0x00005BC0
	gsDPPipeSync(), // 0x00005BC8
	gsSPVertex(_jyasinzou_room_17_vertices_000030D8, 8, 0), // 0x00005BD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005BD8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005BE0
	gsDPPipeSync(), // 0x00005BE8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_17_tex_00007250), // 0x00005BF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005BF8
	gsDPLoadSync(), // 0x00005C00
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005C08
	gsDPPipeSync(), // 0x00005C10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005C18
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005C20
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00005C28
	gsDPTileSync(), // 0x00005C30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005C38
	gsDPLoadSync(), // 0x00005C40
	gsDPLoadTLUTCmd(7, 255), // 0x00005C48
	gsDPPipeSync(), // 0x00005C50
	gsSPVertex(_jyasinzou_room_17_vertices_00003158, 8, 0), // 0x00005C58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005C60
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005C68
	gsSPEndDisplayList(), // 0x00005C70
};

Vtx_t _jyasinzou_room_17_vertices_00005C78[4] = 
{
	 { 1680, 483, 270, 0, 0, 5120, 0, 0, 0, 255 }, // 0x00005C78
	 { 1680, 483, -330, 0, 0, 0, 0, 0, 0, 255 }, // 0x00005C88
	 { 1080, 483, -330, 0, 5120, 0, 0, 0, 0, 255 }, // 0x00005C98
	 { 1080, 483, 270, 0, 5120, 5120, 0, 0, 0, 255 }, // 0x00005CA8
};

Vtx_t _jyasinzou_room_17_vertices_00005CB8[8] = 
{
	 { 1080, 483, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005CB8
	 { 1680, 483, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005CC8
	 { 1080, 483, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005CD8
	 { 1680, 483, -330, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005CE8
	 { 1080, 483, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005CF8
	 { 1680, 483, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005D08
	 { 1080, 483, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005D18
	 { 1680, 483, 270, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005D28
};

Gfx _jyasinzou_room_17_dlist_00005D38[] =
{
	gsDPPipeSync(), // 0x00005D38
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005D40
	gsSPVertex(_jyasinzou_room_17_vertices_00005CB8, 8, 0), // 0x00005D48
	gsSPCullDisplayList(0, 7), // 0x00005D50
	gsDPPipeSync(), // 0x00005D58
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005D60
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005D68
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005D70
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00005D78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00005D80
	gsDPLoadSync(), // 0x00005D88
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005D90
	gsDPPipeSync(), // 0x00005D98
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00005DA0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00005DA8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00005DB0
	gsDPTileSync(), // 0x00005DB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005DC0
	gsDPLoadSync(), // 0x00005DC8
	gsDPLoadTLUTCmd(7, 15), // 0x00005DD0
	gsDPPipeSync(), // 0x00005DD8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005DE0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005DE8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005DF0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005DF8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005E00
	gsSPVertex(_jyasinzou_room_17_vertices_00005C78, 4, 0), // 0x00005E08
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005E10
	gsSPEndDisplayList(), // 0x00005E18
};

static u8 unaccounted5E20[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x09, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x11, 0xF0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x18, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x32, 0x58, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5D, 0x38, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _jyasinzou_room_17_tex_00005E50[] = 
{
	0x1A0B08000008087B, 0x7B7B0823231E1E23, 0x00001E00001E1E1E, 0x1E000000081E0000,  // 0x00005E50 
	0x0800080800002323, 0x001E08081E001E1E, 0x1E23230808000800, 0xD00008D008080899,  // 0x00005E70 
	0x0B0B0827030303BA, 0x7B7B0800231E031E, 0x27272727001E1E27, 0x1E030300031E0327,  // 0x00005E90 
	0x0303080327000323, 0x271E030808272727, 0x2323270303030800, 0x0827030308080372,  // 0x00005EB0 
	0x1ADE862708030008, 0xB37B0803231E0303, 0x23270327001E0308, 0x2708080803270327,  // 0x00005ED0 
	0x0308030003030827, 0x231E270386270000, 0x2323000027080803, 0x0327272703031E03,  // 0x00005EF0 
	0xB78CD00008080300, 0xBA7B08860023008C, 0x00080808001E8C8C, 0x0808088C08000000,  // 0x00005F10 
	0x080800008C03088C, 0x00231E0000080023, 0x231E00001E030808, 0x0800080023231E08,  // 0x00005F30 
	0x0B08D00000000300, 0x86C6E50827230808, 0x0000000808030008, 0x0808000808000800,  // 0x00005F50 
	0x00002308081E0008, 0x2300001E00082323, 0x0000231E001E0000, 0x0008080023001E08,  // 0x00005F70 
	0x1AE5860000230000, 0x08EFBA0327230327, 0x0003002703080003, 0x2703272727030300,  // 0x00005F90 
	0x00230003031E2727, 0x0003232327031E03, 0x0000032727232300, 0x000303001E002327,  // 0x00005FB0 
	0x0BB7080300272323, 0x03E0B38627000027, 0x0386031E27082703, 0x030003001E080000,  // 0x00005FD0 
	0x0027030300031E23, 0x0303232703271E03, 0x0000030303002300, 0x000000272700271E,  // 0x00005FF0 
	0x0BE5080300032323, 0x00037BBA03032303, 0x08E003231E031E08, 0x080003001E030000,  // 0x00006010 
	0x0008030300E02723, 0x03231E08031E2700, 0x2300000303002323, 0x0000001E00000323,  // 0x00006030 
	0x1A0808001E002323, 0x00087B7B088C0000, 0x08000000231E1E08, 0x0808000800000008,  // 0x00006050 
	0x1E08001E0800081E, 0x2323080800000808, 0x00230000001E2323, 0x23081E0000000023,  // 0x00006070 
	0x1A8C0B0803230308, 0x2727B37BBA860800, 0x000000081E1E0008, 0x001E08001E081E00,  // 0x00006090 
	0x032323000000001E, 0x231E082323000808, 0x080300000003231E, 0x0323230808002323,  // 0x000060B0 
	0x1A8CDE0327000308, 0x2723B37BB3080827, 0x2703030303082703, 0x0003080327082727,  // 0x000060D0 
	0x2700000003030023, 0x2303270000000303, 0x0308002327031E1E, 0x2723230303032327,  // 0x000060F0 
	0x1A86861E23002703, 0x03237BC9C6080823, 0x0308032708861E00, 0x000803030003031E,  // 0x00006110 
	0x2300000308032727, 0x2703270300271E27, 0x2703032723002727, 0x2323272700030303,  // 0x00006130 
	0x1A088C1E23002700, 0x03277BB38C030823, 0x8C08000308002323, 0x00081E000000031E,  // 0x00006150 
	0x2300000808001E08, 0x08000008001E1E00, 0x0000080323230000, 0x231E080323238C00,  // 0x00006170 
	0x1A8C0B1E081E0023, 0x00037BBA00000808, 0x008C081E001E231E, 0x0800000000001E1E,  // 0x00006190 
	0x081E000800081E8C, 0x0000000808002300, 0x0800001E00000800, 0x1E8C0823231E0008,  // 0x000061B0 
	0x1ADE080308032300, 0x23007B0800230008, 0x1E86080303030386, 0x0800000003232703,  // 0x000061D0 
	0x0803860000082727, 0x03001E2727000000, 0x0803031E03030000, 0x8603232300860000,  // 0x000061F0 
	0x1A390B0303032700, 0x278CC60327270000, 0x0308080300080808, 0x08272700031E0003,  // 0x00006210 
	0x0303860300000023, 0x032727271E000300, 0x0303032708030303, 0x861E231E08860000,  // 0x00006230 
	0x1AB71A2700270000, 0x08B3D08627030023, 0x080303271E030300, 0x031E270000272327,  // 0x00006250 
	0x0027030327230023, 0x2727000023270300, 0x2700002703000803, 0x03231E278C032700,  // 0x00006270 
	0x1AB70B1E231E0303, 0xBA7B080308032300, 0x08000008081E0023, 0x0000082323081E1E,  // 0x00006290 
	0x231E001E1E230000, 0x08080800001E1E08, 0x1E00001E00080800, 0x2323000808001E23,  // 0x000062B0 
	0x1A0B08031E1E038C, 0xC67B000008000000, 0x00231E0808031E00, 0x00001E031E1E0303,  // 0x000062D0 
	0x1E1E08000003231E, 0x00081E0800002300, 0x0300000300080823, 0x232308080008031E,  // 0x000062F0 
	0x0B0B0B08270303BA, 0xC97B000003000303, 0x001E030308860300, 0x03031E03031E2708,  // 0x00006310 
	0x270303000008031E, 0x00031E2700000000, 0x0300030886082700, 0x0300030327082723,  // 0x00006330 
	0x1ADE0B03000803B3, 0x7B7B030300030803, 0x271E030008860300, 0x0303032708031E03,  // 0x00006350 
	0x0008270027030303, 0x00001E0327030000, 0x0003860886031E27, 0x0803002703032323,  // 0x00006370 
	0x0B8C0B00000803C6, 0x7B7B080800080800, 0x1E23000008080000, 0x0000081E08082300,  // 0x00006390 
	0x00081E0027000008, 0x23231E081E080023, 0x23088C080023231E, 0x0308231E031E2300,  // 0x000063B0 
	0x0BD00B231E00000B, 0x7B7B080803080008, 0x2323000000000000, 0x1E1E000808002323,  // 0x000063D0 
	0x1E0808088C080000, 0x231E080008080800, 0x0808080000230008, 0x230008001E008C00,  // 0x000063F0 
	0x0B0808030023001E, 0xBA7B030308270308, 0x8603000300030003, 0x0303000800030003,  // 0x00006410 
	0x001E080803000023, 0x0003270008000800, 0x080827002303E008, 0x232327031E1E0800,  // 0x00006430 
	0x0B8608030003001E, 0x08B3E00003000308, 0x8603002700032703, 0x0303030300030303,  // 0x00006450 
	0x0000030800030003, 0x0003270027000303, 0x0808270003080803, 0x27271E0803030300,  // 0x00006470 
	0x1AB7082703030003, 0x27BAEF0327000003, 0x0303272300001E00, 0x1E27080003030800,  // 0x00006490 
	0x0327270300080308, 0x0000000023000303, 0x0303000008030027, 0x0386270303030000,  // 0x000064B0 
	0x0BB7081E081E0303, 0x27E5B3E02300001E, 0x00081E2323001E23, 0x1E08080008080800,  // 0x000064D0 
	0x081E080000030303, 0x000000001E230323, 0x1E000000031E001E, 0x008C081E23000000,  // 0x000064F0 
	0x1AD0080308030800, 0x03037BEF23230000, 0x0800001E001E0300, 0x0308000800000008,  // 0x00006510 
	0x08030023001E1E1E, 0x00002308031E1E00, 0x0000231E1E1E1E00, 0x081E08030008088C,  // 0x00006530 
	0x0B8C862727030800, 0x08037BB308230023, 0x0800031E27030303, 0x0803032703038627,  // 0x00006550 
	0x2703001E00271E27, 0x0003000303031E23, 0x0000031E271E1E03, 0x081E270300270808,  // 0x00006570 
	0x0BB7B72723000303, 0x03037B7BBA232723, 0x0300031E1E030303, 0x030003030308D027,  // 0x00006590 
	0x2300270303002700, 0x2708032700080323, 0x2727081E00272708, 0x2727270303030300,  // 0x000065B0 
	0x1AB7E50023000003, 0x00277B7BB3001E23, 0x00231E1E1E1E0800, 0x00001E0300088C00,  // 0x000065D0 
	0x23001E0303000000, 0x1E03031E00030323, 0x1E1E082323080003, 0x2300000303080023,  // 0x000065F0 
	0x1AB7082323000003, 0x00277B7BC6030800, 0x0800000800000808, 0x08081E1E08080023,  // 0x00006610 
	0x2300001E0000001E, 0x1E001E001E000000, 0x1E0008230008081E, 0x1E0800001E080023,  // 0x00006630 
};

u64 _jyasinzou_room_17_tex_00006650[] = 
{
	0x1919191919191919, 0x1919191941191919, 0x4019191940194019, 0x1919401919194040,  // 0x00006650 
	0x4019191919191919, 0x1919191940191919, 0x0A4C432D0E053405, 0x4619191919191919,  // 0x00006670 
	0x41090606060A0909, 0x09090D0E0606461B, 0x4C46461240461212, 0x4612120909401946,  // 0x00006690 
	0x460F430F06060906, 0x06090D0F06433828, 0x4040411941384038, 0x41124C4612461912,  // 0x000066B0 
	0x414109090A090909, 0x41194141410A0E26, 0x262E4C2619265C34, 0x71344C4C0A381212,  // 0x000066D0 
	0x4C4109460A0E0D06, 0x0A0F060E0E0A0A06, 0x0D0D0E0606060F0D, 0x060946464C261940,  // 0x000066F0 
	0x4041414041410909, 0x0909414141410909, 0x12464C264A4C050E, 0x0E0E0F4306411240,  // 0x00006710 
	0x4C10093812090A12, 0x0A46414141380909, 0x0A09060A060A0E06, 0x0F0605052E341938,  // 0x00006730 
	0x380A460A06430606, 0x06090A0909094141, 0x41124C26104C462E, 0x623F2D0643124340,  // 0x00006750 
	0x4C124606430A0A2E, 0x0A0A43060A431241, 0x0A0A060E060A0606, 0x0605434334714040,  // 0x00006770 
	0x4041310A0F43060A, 0x090A410A0606060F, 0x0A0A096410262605, 0x05060A4346434340,  // 0x00006790 
	0x4C09310941461246, 0x0A460909060A460A, 0x060A0941410A4C41, 0x2E0A434C4C261940,  // 0x000067B0 
	0x094141120A2E0F0F, 0x0A0A0D0609060909, 0x090A0E3A12460E0E, 0x43430E050E430A40,  // 0x000067D0 
	0x050A090A09460A0A, 0x0E0A2E2E2D0A0A0A, 0x0A090941411F4C10, 0x10090A0A0A054040,  // 0x000067F0 
	0x120A0A0A6B0E0E0F, 0x0F0A060F06060A0A, 0x0A060A06120A0A0A, 0x060D0E0D0D0F0919,  // 0x00006810 
	0x090906060A060606, 0x060A0A0A430A1209, 0x094112460A4C4C4C, 0x06060A0A0E0E4019,  // 0x00006830 
	0x090A0909090A0909, 0x094109090A060F06, 0x41090A094609090A, 0x0A09404040401919,  // 0x00006850 
	0x4119191919411941, 0x091941410A0A0906, 0x0A09060A09090909, 0x0606060609094019,  // 0x00006870 
	0x1940194119191919, 0x1919191919191919, 0x1940121012104040, 0x403146635CC7A4B0,  // 0x00006890 
	0xC5A4CFCF3F051919, 0x1919191919191919, 0x1919191919411919, 0x1919194019191940,  // 0x000068B0 
	0x0F0E3F3FA4AFA4A4, 0x3A5C1B0E09411041, 0x6343CFA4D15C0534, 0x0E3F265C630E0E0E,  // 0x000068D0 
	0x0E0E0E063F3F0E26, 0x091B3A71B03A3A12, 0x3409265C34345C78, 0xA471262626261F26,  // 0x000068F0 
	0x0E0D0E0E0E0E0F0F, 0x0F0E0E0E1D26120A, 0x0A060E3F0E0D060E, 0x0E060E06060E0E0E,  // 0x00006910 
	0x0F060F0E0D0D9EC7, 0x41630E0E430A2612, 0x264C1D060E0D263F, 0x0E06060E06060E06,  // 0x00006930 
	0x0E9E9E3F0F0F060A, 0x0A0A0A0A26714663, 0x060E06630E0E3F0E, 0x0F06060E0E0E0E3F,  // 0x00006950 
	0x0E0F0E0D0F0F0F26, 0x400E5C0E430A6410, 0x26780E0A0E063F0E, 0x0F060906060A0A06,  // 0x00006970 
	0x9E0E3F0F573F3F0E, 0x0F0D061F12B9120E, 0x630E430E06090606, 0x060606060A060E0E,  // 0x00006990 
	0x0F9E570E3F0D064C, 0x410E632E05064C40, 0x263A060A0A060E0F, 0x0E0E2E2E0E2E2E0A,  // 0x000069B0 
	0x06060E0F060E060E, 0x3F0E0E060626121D, 0x0E0A0A0E06060E06, 0x090A060F06060E0E,  // 0x000069D0 
	0x0F0F0D0E0E0E0D1B, 0x090E0E0E623F0A40, 0x060F0F060F060606, 0x060A092E0E0E0E0D,  // 0x000069F0 
	0x0906090A0A094643, 0x43623F570E2E1034, 0x0E0E060F0609060A, 0x090A060606060E0E,  // 0x00006A10 
	0x0D0E0D0E2E060910, 0x410909050A1D0A40, 0x090A06060A090F0F, 0x06060E0E0A060A06,  // 0x00006A30 
	0x0A09090909401940, 0x404109120A0A1043, 0x0A0E1D430D0F0A0A, 0x0940404040404040,  // 0x00006A50 
	0x4019191919191919, 0x1919404010121010, 0x1012104040404040, 0x4009090606060A09,  // 0x00006A70 
	0x1919101012121210, 0x1040401919191919, 0x1919191940404040, 0x4040460A0A0A0505,  // 0x00006A90 
	0x0E5CC7C734A4785C, 0x71C71B5C3A3A2626, 0x26340E6346404019, 0x1940404019191919,  // 0x00006AB0 
	0x0A2E5C342671261F, 0x261F4C264C264605, 0x26C3AF3F6B1D9AA4, 0x5C3434341B345C34,  // 0x00006AD0 
	0x34340E0E060E0606, 0x090A0A0A0A05050E, 0x0E464646124064B0, 0x3A3A26264C051941,  // 0x00006AF0 
	0x4C41414109090909, 0x0941414109090A06, 0x060A060E090E460A, 0x0606430A12122E2E,  // 0x00006B10 
	0x050A0A090A090909, 0x094141124C2E2E0E, 0x2E060A4140190906, 0x0606060F060A0919,  // 0x00006B30 
	0x1B09060E06060606, 0x06060609090A090E, 0x0A0E0D05402E4C0E, 0x0E0F06060941100A,  // 0x00006B50 
	0x0A060A090F0F0606, 0x0A0A090A0A4C4C2E, 0x2E4C4C0A1941090F, 0x0F0E0D0606060609,  // 0x00006B70 
	0x4C0A190941194106, 0x094141410A0A0E0E, 0x060A0D05190E4C0A, 0x0A0E0E0F06060909,  // 0x00006B90 
	0x0A090A0A41410A2E, 0x0E0E0E0E0E0E2E2E, 0x0E2E0A41190A090A, 0x0A060909090A0A19,  // 0x00006BB0 
	0x46060909410A0909, 0x09060D0606090909, 0x090A260E414C090A, 0x060A0A060A0A0A0A,  // 0x00006BD0 
	0x090A090909094109, 0x0A0A0A0A0A4C2E0E, 0x2E0E050A19090A06, 0x0A06090A0A0E0A41,  // 0x00006BF0 
	0x0A0A0A0A060E0E06, 0x0E0A090A0A090909, 0x41090E0641430E06, 0x0606060A060A090A,  // 0x00006C10 
	0x2E0E0E0E0E0E2E2E, 0x05090A0A06060A0A, 0x0909060640090606, 0x09060A0A0F060919,  // 0x00006C30 
	0x09090941090A4141, 0x094141090A0A0A0A, 0x4109090919190A0A, 0x0F0F090A09090A4C,  // 0x00006C50 
	0x2E2E4C0A090A0919, 0x4019191919191919, 0x191919191941410A, 0x06060A060A0A0919,  // 0x00006C70 
	0x1919191919191919, 0x1941191919191919, 0x1919191919191919, 0x1919410919191919,  // 0x00006C90 
	0x1919191919191919, 0x0906060640191940, 0x0A0A091940401919, 0x1919191919191940,  // 0x00006CB0 
	0x1D3AD10E0E0E3F0E, 0x090606060A121219, 0x09342626B9262626, 0x644C4C1F0A46050E,  // 0x00006CD0 
	0x0F0E0FAFAF3F3F0E, 0x262626260564404C, 0x0E1D1B6B0E642671, 0x64461219194C0526,  // 0x00006CF0 
	0x4C050E0E0A060606, 0x0F0941090A050A19, 0x64120A0A4609120A, 0x06060909090A0F06,  // 0x00006D10 
	0x0E26260E0E3F3F1D, 0x1D050E460526194C, 0x0A0A090A0A0A4106, 0x260E4C19413A264C,  // 0x00006D30 
	0x0A0A0E060A0A0A0A, 0x0E06060A0A051219, 0x640A124C43060606, 0x060909090A090909,  // 0x00006D50 
	0x060D0E0A0F060609, 0x0606060F06344026, 0x2E0A090A0A090606, 0x46054C0909784C26,  // 0x00006D70 
	0x0A0A06060E3F0E06, 0x0A0F0F0D060A0919, 0x46054C0909094609, 0x06060606060A0906,  // 0x00006D90 
	0x060A0E060A0E0D06, 0x0A060A060E5C4026, 0x2605430A0A0A0609, 0x0A05344009260909,  // 0x00006DB0 
	0x06060A0D0E0E0E0D, 0x0F0A0E0D0E0A4119, 0x410A0A43430A4612, 0x090A090A060D0606,  // 0x00006DD0 
	0x06060A0E0A0E0A0A, 0x0E0F0A0A094C4026, 0x340E460A0606060A, 0x054C4C41410E090A,  // 0x00006DF0 
	0x09060F06060A060E, 0x09060F0E0E060A40, 0x410A060E09090E09, 0x09090A0941094119,  // 0x00006E10 
	0x090606060A06060A, 0x41410A0A0A0F4046, 0x0E0E050E430A0E0A, 0x4343464640090919,  // 0x00006E30 
};

u64 _jyasinzou_room_17_tex_00006E50[] = 
{
	0x57030317032E5456, 0x2E343F4634460303, 0x1717031725030303, 0x3030261A24301717,  // 0x00006E50 
	0x0303030317261A1A, 0x6CB324245D465403, 0x0317252525250303, 0x0303300325460303,  // 0x00006E70 
	0x0303301A03032E03, 0x5703245D25171703, 0x0325171703252503, 0x30031A0303300303,  // 0x00006E90 
	0x0346031A1A6C2603, 0x1A4634523F031A03, 0x031A03251754301A, 0x54032E033017032E,  // 0x00006EB0 
	0x1A2E031A031A5717, 0x3F03173F34260303, 0x03030330301A5C03, 0x2E571A2E1A1A3054,  // 0x00006ED0 
	0x172603171A173F17, 0x3003030324252530, 0x0303170317302653, 0x03030303031A1A30,  // 0x00006EF0 
	0x3F242A2446033825, 0x030303031724252A, 0x5403252530172503, 0x262603032503253C,  // 0x00006F10 
	0x4646440317172503, 0x2A54033003680325, 0x0317030303305403, 0x03031A030317033F,  // 0x00006F30 
	0x253F03302E031717, 0x1A0317031A173803, 0x2E03031A172E306C, 0x3026301A30033C54,  // 0x00006F50 
	0x26033C1A2E031A03, 0x30262E2E2E30031A, 0x2E261A0354302E49, 0x6C03302A303C2E86,  // 0x00006F70 
	0x171A251725540344, 0x2630035C1A035430, 0x0354300303171A30, 0x1A031725244B0330,  // 0x00006F90 
	0x25301A4B25031A03, 0x1A862E1730251A26, 0x2E03031703030303, 0x030317460303245D,  // 0x00006FB0 
	0x2E2E03543C031A03, 0x3049544903466CA7, 0x0354920317305403, 0x25032A2546030324,  // 0x00006FD0 
	0x1A541A033025306C, 0x03032E2E2E25036C, 0xA757032E54030303, 0x3054035425305C49,  // 0x00006FF0 
	0x0303540303305703, 0xAC1A572E2E494B03, 0x6CA7545403031754, 0x2E1A545403266CA7,  // 0x00007010 
	0x6C1A251A301A3057, 0x576C6C6C032E0346, 0x306CA703171A037E, 0x6CAC1A2E6CAC036C,  // 0x00007030 
	0x1A1A30301A170354, 0x57572E1730031A54, 0x3C0325300330302E, 0x576C2E03546C2E30,  // 0x00007050 
	0x03171A0303031717, 0x0303300317172503, 0x265D462A46030354, 0x25576C3054302E1A,  // 0x00007070 
	0x2603170317250317, 0x1703030303173C30, 0x462A34034B170317, 0x1703031A03170330,  // 0x00007090 
	0x1A1A03251717031A, 0x2E032A2A301A0330, 0x462A033C251A0326, 0x030325172E300303,  // 0x000070B0 
	0x3C30173030253030, 0x2E6C2E2E54031A46, 0x2554304603032E1A, 0x5426030330260303,  // 0x000070D0 
	0x3025171A461A302E, 0x03306C031A035424, 0x032530031703572E, 0x1A2E3C262530171A,  // 0x000070F0 
	0x301A030317032626, 0x5425030317174B46, 0x30173C03031A3054, 0x3017261A03031703,  // 0x00007110 
	0x03572625172E546C, 0x0317030317172A17, 0x033025254654032E, 0x0317542503030303,  // 0x00007130 
	0x03032E2E2E666C1A, 0x541A54305417541A, 0x2EAC260317030303, 0x260303300303031A,  // 0x00007150 
	0x6C30036C571A6C2E, 0x6C1A03A7492E1730, 0xAC576C2E25033026, 0x0303030303170326,  // 0x00007170 
	0x2E2E1AAC2E7E302E, 0x6C1A1A1A6C493046, 0x1A496CAC2E2E3030, 0x5CAC031A2E030303,  // 0x00007190 
	0x4B03541A2E572E54, 0x2E26032A2E6C254B, 0x302E30542EAC2E03, 0x541A66261A5C5C03,  // 0x000071B0 
	0x6C031717302E1A03, 0x036C03172646D030, 0x2517030303030303, 0x250330170303301A,  // 0x000071D0 
	0x172E4B1717542603, 0x17031A0303241717, 0x1717170303031717, 0x032A033025170303,  // 0x000071F0 
	0x03265C543F17032E, 0x26302A0326171703, 0x0303030303172E03, 0x0330030354030303,  // 0x00007210 
	0x2E54262E30174B49, 0x261A540317030330, 0x260330030303261A, 0x03262E03032E0303,  // 0x00007230 
};

u64 _jyasinzou_room_17_tex_00007250[] = 
{
	0x43437F7F36363636, 0x3636364343364343, 0x4343364343434336, 0x36434343437B437B,  // 0x00007250 
	0x43437B437B7B7B43, 0x7B7B7B7B437B4343, 0x4343434343434336, 0x434343437B437B43,  // 0x00007270 
	0xB7B7B7B76A7E5AB7, 0x6A4E6A6A7EB7B76A, 0xB76A4E7E6AB7B76A, 0x4EB76AB76A6A5A6A,  // 0x00007290 
	0xB7B76A891A033C7E, 0x1A1A1A1A5A5A4E5A, 0xB7B7B7035A5A6A4E, 0x6A6A6A5A5A6A6A7E,  // 0x000072B0 
	0x5757575757241A1A, 0x1A6A572E246A1A1A, 0x1A572E6A571A2E2E, 0x5A1A1A1A572E6A57,  // 0x000072D0 
	0x1A2E2E5A44444403, 0x44444444261A5A2E, 0x2E2E5A242E26266A, 0x1A1A26261A261A6A,  // 0x000072F0 
	0x5757571A571A1A1A, 0x1A6A2E1A1A1A1A1A, 0x1A2E1A2E1A2E572E, 0x5A1A1A1A2E1A5A1A,  // 0x00007310 
	0x2E572E5A26444403, 0x24444444032E5A2E, 0x2E2E2E251A26261A, 0x5A251A1A26261A6A,  // 0x00007330 
	0x1A572E5757571A57, 0x2E575757571A572E, 0x575757575A5A5A1A, 0x5A572E575757575A,  // 0x00007350 
	0x5A5A1A2E5A034444, 0x6144442603035A26, 0x262E26261A26262E, 0x6A1A1A2E262E2625,  // 0x00007370 
	0x245D3F2424245D5D, 0x24242424245D5D24, 0x2424243F3F243F24, 0x3F5D242424243F3F,  // 0x00007390 
	0x243F24243F343434, 0x3952342424242424, 0x2424242434245D5D, 0x5D34345D34345D5D,  // 0x000073B0 
	0x1F1F141415151515, 0x1515151415151515, 0x1514151414141435, 0x15151414141F1F1F,  // 0x000073D0 
	0x1414141414141414, 0x1414141415141515, 0x1515141414151514, 0x1514151514151414,  // 0x000073F0 
	0x1414326732323232, 0x3232326735353267, 0x3267673567323267, 0x356732676732151F,  // 0x00007410 
	0x1535353535151415, 0x3535353567353535, 0x3232321535356767, 0x6767673535676715,  // 0x00007430 
	0x1435040C040C040C, 0x0C0C0C0C350F0F0C, 0x0F0C6B0C0C0F6B0C, 0x0C0F6B0C0C040415,  // 0x00007450 
	0x6B6B6B6B32323235, 0x323232326B0C6B6B, 0x6B6B04356B6B6B0F, 0x0F0F6B6B0F6B0C0F,  // 0x00007470 
	0x1404190419190404, 0x040404040C0C0C0C, 0x0C040C0404040404, 0x04040C0404191935,  // 0x00007490 
	0x046B04040C6B6B35, 0x356B6B6B0C040404, 0x0404040C0C0C0C0C, 0x0C0C0C0C040C0C0C,  // 0x000074B0 
	0x152D010909091904, 0x1919191919041919, 0x1919191919091904, 0x1904191909093132,  // 0x000074D0 
	0x191E191919046B6B, 0x356B6B0404041904, 0x0419041904041919, 0x0404041904191904,  // 0x000074F0 
	0x1547180700010001, 0x4700010101474701, 0x0101010000010001, 0x010101090000000C,  // 0x00007510 
	0x0000087201093119, 0x6B6B3131721E1E72, 0x1E31317231310909, 0x471919091909093E,  // 0x00007530 
	0x0407070A0A0A0A01, 0x0701010901010909, 0x072007000A070707, 0x0701200100500832,  // 0x00007550 
	0x070108080007001E, 0x012019011E200931, 0x010101091E094707, 0x0708010409500000,  // 0x00007570 
	0x040A070A07640720, 0x010101090107091E, 0x2020200720200020, 0x0101640000200809,  // 0x00007590 
	0x080000080A072000, 0x0101041E201E0104, 0x1E09041E1E040909, 0x060D060D0D00070D,  // 0x000075B0 
	0x1007070101012001, 0x1E1E1E1E1E201E09, 0x6420206420010120, 0x200920640064201E,  // 0x000075D0 
	0x08086400091E1E1E, 0x1E20081E1E010901, 0x1E041E101E1E0907, 0x0A0D0D0D0D000807,  // 0x000075F0 
	0x040A20002001011E, 0x0109091E01011E01, 0x0120200001200120, 0x006464202020001E,  // 0x00007610 
	0x0008002020201E1E, 0x1E1E041E1E1E0404, 0x1E1E1E1E041E0707, 0x08080809200D0808,  // 0x00007630 
	0x04040A0101070109, 0x1E1E1E0120200120, 0x2000200000200020, 0x0120202020202004,  // 0x00007650 
	0x1E1E201E011E1E1E, 0x1E1E1E1E1E1E1E1E, 0x1E1E1E1E09090708, 0x0D0D0D0D0D0A0007,  // 0x00007670 
	0x040707200701071E, 0x01201E0120201E20, 0x0000000000002000, 0x2020012020000004,  // 0x00007690 
	0x0020201E1E201E1E, 0x1E1E041E1E1E1E1E, 0x001E1E1E01010A0A, 0x080D070720000D00,  // 0x000076B0 
	0x04070A0000070020, 0x202020200A000020, 0x2000000000200020, 0x010101011E000004,  // 0x000076D0 
	0x00001E00001E1E1E, 0x1E1E1E1E1E1E1E1E, 0x1E1E1E1E01090A08, 0x0D0D0D0D2007080D,  // 0x000076F0 
	0x04070707070A0A07, 0x07070A0A0A0A0A20, 0x0000000808080808, 0x0000000000000004,  // 0x00007710 
	0x000000000000001E, 0x001E1E1E1E1E1E1E, 0x1E1E1E2001012008, 0x0D0D20200D000A0A,  // 0x00007730 
	0x0407070707070707, 0x07070707070A0707, 0x0A0A080D0808080A, 0x080A0A0A0A002004,  // 0x00007750 
	0x002008001E001E1E, 0x1E1E001E1E1E1E1E, 0x1E1E001E20012007, 0x0D0D0D0D00080808,  // 0x00007770 
	0x1007070707070707, 0x07070707070A0A0A, 0x07080808080A0A0A, 0x0A0A0A0A0A640104,  // 0x00007790 
	0x6401200000000000, 0x0000000000001E1E, 0x1E00000020010008, 0x080D08200000080A,  // 0x000077B0 
	0x0407070707070707, 0x0707070707070907, 0x070A070A0A070A07, 0x0A0A0A0A0A070104,  // 0x000077D0 
	0x0901016401200000, 0x0000000000000000, 0x0000002020202000, 0x080D0D0D0D00080A,  // 0x000077F0 
	0x0407070707070709, 0x07070707070A0707, 0x0007070A07070707, 0x0707070707070909,  // 0x00007810 
	0x0107070707010101, 0x0101012020002020, 0x20201E0720072008, 0x0D0D0D0D000A0D0D,  // 0x00007830 
	0x0407070A07070709, 0x0909070907070920, 0x07000A0A070A0A0A, 0x0A0A0A0A0A080A04,  // 0x00007850 
	0x070101640A0A0A64, 0x07200A070A200120, 0x201E091E09040407, 0x200A04090D0D0D0A,  // 0x00007870 
	0x04080A070A0A0A07, 0x0A070707070A070A, 0x0A000A000A0A070A, 0x070A0A0A0A070709,  // 0x00007890 
	0x640A0A640A640A64, 0x0A010A0709090109, 0x010109070707070A, 0x080D0D0D000D0D0D,  // 0x000078B0 
	0x09080A0A070A0A09, 0x0709070907070A07, 0x0A070A0A00080A08, 0x070A0707070A0709,  // 0x000078D0 
	0x0A01010901090909, 0x0901010101090901, 0x0909010909070708, 0x640D0D0D0D0D0D0D,  // 0x000078F0 
	0x04080A0A07070707, 0x0707070907070907, 0x0707070707070707, 0x0707090909040710,  // 0x00007910 
	0x070707070A0A0A0A, 0x0A640A6409010707, 0x0707070707070A08, 0x0D0D0D0D0D0D0D0D,  // 0x00007930 
	0x040D0D07070A0A07, 0x0709070909070701, 0x2020202020202020, 0x0101090909090910,  // 0x00007950 
	0x0709070A070A0A0A, 0x0A07070707070909, 0x0907090707070008, 0x080D0D0D0D0D0D0D,  // 0x00007970 
	0x0908080808070A07, 0x07070A0700000000, 0x0000000020000020, 0x2020070909040910,  // 0x00007990 
	0x0909070920072020, 0x2000002001090909, 0x0909072001200708, 0x0D0D0D0D0D0D0D0D,  // 0x000079B0 
	0x040D0D0708080D08, 0x0807202020200000, 0x2020200009070907, 0x0704090109070710,  // 0x000079D0 
	0x0707040904091E09, 0x0901010101090109, 0x0720202000200000, 0x0D0D0D0D0D0D0D0D,  // 0x000079F0 
	0x1004070707090404, 0x0432043204100404, 0x1004100410040432, 0x100404101032101F,  // 0x00007A10 
	0x1032101032323210, 0x3210101010101010, 0x3210103210320404, 0x0404040909090904,  // 0x00007A30 
};

u64 _jyasinzou_room_17_tex_00007A50[] = 
{
	0x6FB9B99B9B80B99B, 0x9B80B96F6F6F9B9B, 0x806F9D9DAB6F6F6F, 0xD19D9D9D9393936F,  // 0x00007A50 
	0x6F6F6F9D6F9D9D6F, 0x6F6F6F9D9D9D9D6F, 0xB9AB93AB939D9DD1, 0x6F6F6F6F93ABABAB,  // 0x00007A70 
	0x939D939D9B808080, 0x806F6FD1D16F8080, 0x8080809D9D6F6F6F, 0x8080806F6F6F6FB9,  // 0x00007A90 
	0x6F6F6F93939D9DD1, 0xD16F6F6F6F6FB9B9, 0x6F6F83B4B4B49D6F, 0xAB6FB96F936F6F6F,  // 0x00007AB0 
	0x3732727283838383, 0x837272BE72727272, 0x8383937272727283, 0x8393938383838383,  // 0x00007AD0 
	0x8383726B32726B72, 0x72838383838383B4, 0xB418040472728383, 0x728393836B83ABAB,  // 0x00007AF0 
	0x6E2421241A242424, 0x1A24241A24242424, 0x1A1A1A1A1A242424, 0x1A1A1A1A241A1A1A,  // 0x00007B10 
	0x1A1A1A242424241A, 0x241A1A1A1A241A13, 0x1A1A24242424241A, 0x1A1A131A24159393,  // 0x00007B30 
	0x418C759C9C9C9C75, 0x419C9C418C75759C, 0x75419C75759C9C9C, 0x9C9C9C9C9C759C9C,  // 0x00007B50 
	0x759C9C759C75759C, 0x75C5759C759C9C41, 0x75C558C541759C9C, 0x759C757575218383,  // 0x00007B70 
	0x22222B225841581B, 0x1B22221B1D2B1B22, 0x22292229542B1B54, 0x1D1B58221D223939,  // 0x00007B90 
	0x2C3B2C3B093B362C, 0x3E3B2C0D04391010, 0x3D292B3D471B1B1B, 0x1B222B1B581A9D93,  // 0x00007BB0 
	0x2C3E09093B3D5854, 0x411B1B54291B1B1B, 0x1B2947291B58581B, 0x616161363B010109,  // 0x00007BD0 
	0x093639613D221D1D, 0x1D2B1D221D2B583D, 0x39898961471B1B54, 0x1B3D291B581AAB93,  // 0x00007BF0 
	0x3E3E3E3E3E01391B, 0x1B4141541B1B541B, 0x1B541B54541D3D89, 0x0901013B2C61221D,  // 0x00007C10 
	0x1D1D1D1D223D3939, 0x1D3D3B3B3B090901, 0x0101013E10415429, 0x471047291B1AAB9D,  // 0x00007C30 
	0x3E3E48483E3E4861, 0x1D1B581D1B1B1D29, 0x29221D3D893B0101, 0x3B0D10291D1D2B1D,  // 0x00007C50 
	0x1D223D222210472B, 0x2222102247101047, 0x160C0C471B1B1B47, 0x1047103D2B1AAB9D,  // 0x00007C70 
	0x3E3E484848480701, 0x611B1B291B223D29, 0x1B223B4E013E3E0D, 0x1047223D6161392C,  // 0x00007C90 
	0x2C093B09093B3B3B, 0x0161223D3D221D1D, 0x1D2B581B58221B29, 0x472947391D1A6F9D,  // 0x00007CB0 
	0x4007070748484807, 0x3E22221B1B1B1B41, 0x223B4E000004101D, 0x22393936392C3B36,  // 0x00007CD0 
	0x3939613961613936, 0x101D36000808450E, 0x4D08080845083B22, 0x29472947291AAB9D,  // 0x00007CF0 
	0x3D3D3D3948484848, 0x482C222B223D1D7B, 0x09000009161D2236, 0x2C39362C3B2C360D,  // 0x00007D10 
	0x2C09010000093961, 0x3D613D101639363E, 0x0101070606060548, 0x2B22471622136FAB,  // 0x00007D30 
	0x2C51394747393E48, 0x48483D3650405061, 0x0909362941223636, 0x3648483636480700,  // 0x00007D50 
	0x09363939363E3E61, 0x3600010101092C39, 0x61221D226136363D, 0x413D101622136F6F,  // 0x00007D70 
	0x36393D22613D3D36, 0x482C3948093E2C1B, 0x47472B2B2B61363E, 0x012C2C00002C392C,  // 0x00007D90 
	0x070505065F2C2222, 0x2C74480011050B0B, 0x0505060139292929, 0x4710101629136F6F,  // 0x00007DB0 
	0x5F3961225F393947, 0x36482C3E3E612B41, 0x58411B395F3B0107, 0x3E4001362C190601,  // 0x00007DD0 
	0x3961505F2C392C01, 0x3B61222239501906, 0x061111780B066110, 0x361610391D13B96F,  // 0x00007DF0 
	0x5161223D5F513D61, 0x393E2C3E39291B1B, 0x1D2B104801112C2C, 0x06093E4050365006,  // 0x00007E10 
	0x05196158222C0008, 0x000019012C613D61, 0x393E44194440222B, 0x222929161D136FAB,  // 0x00007E30 
	0x6147293939613648, 0x3E3E3661291B1B1B, 0x1B1B1B04365F0639, 0x50192C5F78050136,  // 0x00007E50 
	0x51393E00003E3936, 0x4057441940404048, 0x612B2B221D2B1B1B, 0x2B2929472B156FAB,  // 0x00007E70 
	0x3D3D39515F5F5748, 0x093E2247222B2922, 0x1B1B2B36063E5F57, 0x3635785F5135503D,  // 0x00007E90 
	0x3D2C401906110607, 0x36335040570A5F40, 0x40392B22293D6110, 0x293D3D612213ABAB,  // 0x00007EB0 
	0x4040575757405707, 0x3B36223D221B2B1D, 0x1D1B1D10400A2C35, 0x4061257739226107,  // 0x00007ED0 
	0x050A363950400A06, 0x0601363D515F5F5F, 0x0A5F474729471047, 0x473D1010221393AB,  // 0x00007EF0 
	0x5740400757570748, 0x3E47222B2B1B2B2B, 0x2929222B2239611D, 0x2539613E5000005F,  // 0x00007F10 
	0x404006193E511911, 0x7811064822472B41, 0x1B2B1B2B47474729, 0x101647292B139393,  // 0x00007F30 
	0x400707404007482C, 0x361D22581B582229, 0x3D3D2B2939000601, 0x010611481905063E,  // 0x00007F50 
	0x395F190608013636, 0x5F40190A51292222, 0x1D3D614716393910, 0x164747612B139383,  // 0x00007F70 
	0x2C3E48480748482C, 0x223D1D581B1B2229, 0x223D292910365740, 0x1650190739515040,  // 0x00007F90 
	0x2C3D36505F014829, 0x296139505022473D, 0x10613D2947104710, 0x391047611D1A9383,  // 0x00007FB0 
	0x3E48483E2C36612B, 0x39361D1B1B1B291D, 0x292B22472B1B3D2C, 0x36296150391B6150,  // 0x00007FD0 
	0x5022751B3D2C503D, 0x4141C52B221B1B29, 0x2947473916101010, 0x614729472B1A8383,  // 0x00007FF0 
	0x0C362C2C36222B1D, 0x3950611B2B291D22, 0x29473D222B472939, 0x3E22C53633751B22,  // 0x00008010 
	0x3939221B2B1B2B25, 0x1D10393D2B1D3D10, 0x360C0C2C16106110, 0x294747292B139393,  // 0x00008030 
	0x1D222B291D292258, 0x2B2C5F222B292B1D, 0x1B2929472B291B1B, 0x3925412B25291D41,  // 0x00008050 
	0x1D393D29221D1B22, 0x1010391647616110, 0x6110103910476110, 0x473D3D291B13AB93,  // 0x00008070 
	0x2B2222472C291D58, 0x1B395F3639472B2B, 0x2B2B2B2B292B1B1B, 0x29221B2B291B292B,  // 0x00008090 
	0x2929471010474729, 0x2910474729103D47, 0x1016161647104710, 0x104710101B1A9393,  // 0x000080B0 
	0x222922222C291B1B, 0x2B2C362C3E5F3629, 0x2922291B2929291D, 0x1B293D294761163D,  // 0x000080D0 
	0x61101639473D3961, 0x1636166139472239, 0x10163929293D2947, 0x3D2910391D249383,  // 0x000080F0 
	0x58581B3D221B1B58, 0x223D29291D615039, 0x1B585841581B5858, 0x581D1D581D221D1D,  // 0x00008110 
	0x1D1B1D1D2B222222, 0x1D221D1D221D2922, 0x1D1D1D1B58581B2B, 0x2B1B2B1D58219383,  // 0x00008130 
	0x6E21216E21212121, 0x2121242421212421, 0x6E21246E21212121, 0x2424242424242424,  // 0x00008150 
	0x2424242421242424, 0x2121212424242424, 0x2121212121212121, 0x2421212121219D9D,  // 0x00008170 
	0x979BB19797B1D8D8, 0xD88686B1D8B197B1, 0xD8B1B1D8B1868686, 0x868686868686A4A4,  // 0x00008190 
	0xA4A4A4A4B1B186A4, 0x8686868686A48697, 0x8080809786979786, 0xA4A48697A49BB9B9,  // 0x000081B0 
	0x979B979B979786B1, 0xB1868686B1B19797, 0xB1B1B18086869786, 0x869786868686A49B,  // 0x000081D0 
	0xA4A4A497B18086A4, 0x86979797979B8090, 0x909090B4979780B1, 0x97A4979780B9B9B9,  // 0x000081F0 
	0x9BE4E4E49B9BEDED, 0xE49BA4A4A49BA4A4, 0xA4808080EDA49B97, 0x9B808080809B9B80,  // 0x00008210 
	0x9B9B9B8080D1809B, 0x9B808080806FDE80, 0x836B72B4906FD180, 0x809B976FAB6FB96F,  // 0x00008230 
};

u64 _jyasinzou_room_17_tex_00008250[] = 
{
	0x3000000001010000, 0x1220022300111000, 0x0010000111113000, 0x1100000300111100,  // 0x00008250 
	0x1325201102222200, 0x07AAAA1000322230, 0x0025332422002446, 0x6522330544450033,  // 0x00008270 
	0x1152230002455455, 0x5201005452032200, 0x0010326665335235, 0x6203332217242200,  // 0x00008290 
	0x1700464525544444, 0x44223256C4200025, 0x4230055665389A80, 0x5210111110245317,  // 0x000082B0 
	0x1112255603245503, 0x2462331264233546, 0x5333331252711303, 0x5510111311243111,  // 0x000082D0 
	0x11031105100457AA, 0x7221033354322566, 0x3322301044111302, 0x2632001332421111,  // 0x000082F0 
	0x1030072533342011, 0x0227033055225464, 0x0325323346087135, 0x4462111334433233,  // 0x00008310 
	0x0011034070246233, 0x2440322242202465, 0x1032225546378135, 0x6629977136654665,  // 0x00008330 
	0x2233244710246555, 0x4651324462002440, 0x102256B444077710, 0x5519111702655222,  // 0x00008350 
	0x3332465333356664, 0x4511004462102550, 0x0322242135381332, 0x4671103100525022,  // 0x00008370 
	0x1100556533356522, 0x1871010260000443, 0x0252352026233133, 0x4C01133110556250,  // 0x00008390 
	0x113110221112519A, 0x8710033344325663, 0x3252054244181771, 0x2451313311356528,  // 0x000083B0 
	0x8000780520054301, 0x0301010135325663, 0x3222025462110077, 0x0528711011125219,  // 0x000083D0 
	0x8102071520244330, 0x3017113305200443, 0x0256532565300111, 0x1561111111024507,  // 0x000083F0 
	0x2300000521054233, 0x3010010355535640, 0x2566423565012017, 0x1267113201802211,  // 0x00008410 
	0x2201103420134231, 0x0025200326535665, 0x5242202464545317, 0x1548702520024217,  // 0x00008430 
	0x1022225623005521, 0x3544425544002666, 0x6642132466662112, 0x5621110322444310,  // 0x00008450 
	0x2125444271070533, 0x3225546642705400, 0x5453733254428103, 0x5533301130223010,  // 0x00008470 
	0x0110220870011000, 0x0000254528813018, 0x1011131011000000, 0x1110333189888702,  // 0x00008490 
	0x1813231170130177, 0x1107813071010200, 0x1710171118893011, 0x0000100011031030,  // 0x000084B0 
	0x1710030332302000, 0x2220117020000222, 0x3133225333220300, 0x3300000032222011,  // 0x000084D0 
	0x0220223333200355, 0x2222020000232200, 0x0003500220000000, 0x3223300002011001,  // 0x000084F0 
	0x0224420033255522, 0x2522222000254455, 0x3333330200000020, 0x2023322252000220,  // 0x00008510 
	0x0246642033325422, 0x3202223300024B52, 0x3666420000460050, 0x4660030200031000,  // 0x00008530 
	0x5664644031226665, 0x0812363002444510, 0x6666640046464334, 0x656B323520107000,  // 0x00008550 
	0x391625503A056445, 0x0033643305646300, 0x6671651944464106, 0x614B620264001704,  // 0x00008570 
	0x1106805238146588, 0x1333653300541032, 0x6602633004440774, 0x0156621056432004,  // 0x00008590 
	0xA904834038266300, 0x3333643300054003, 0x3656530904442916, 0x3024651705445004,  // 0x000085B0 
	0x2026256018346022, 0x3115603331854098, 0x3346630056644095, 0x5056453110542835,  // 0x000085D0 
	0x4446644008146222, 0x3192603333915011, 0x3364320256444412, 0x0044500311345931,  // 0x000085F0 
	0x0546440080226442, 0x3174403342114099, 0x0344332563636492, 0x0566100013565710,  // 0x00008610 
	0x8125230115666455, 0x3236403344144010, 0x0266432433434412, 0x0661000072451813,  // 0x00008630 
	0x0915417711906781, 0x3136003315466590, 0x546B652633433610, 0x564100077527A803,  // 0x00008650 
	0x0805617870106600, 0x0816600334666412, 0x4655562633433690, 0x3651000174407003,  // 0x00008670 
	0x0772437773256600, 0x1995663336406412, 0x6081260632433600, 0x2640000815450100,  // 0x00008690 
	0x0112421125536600, 0x1193560245014410, 0x6287563622422630, 0x26600021A7564100,  // 0x000086B0 
	0x2335441055206611, 0x2233663241115403, 0x6423663662426600, 0x0660302239854130,  // 0x000086D0 
	0x4522451166446300, 0x5442660266444608, 0x6646621262426510, 0x0660333627885130,  // 0x000086F0 
	0x02554277A0665111, 0x2466651046444508, 0x2664427262006013, 0x0040101442206131,  // 0x00008710 
	0x813550A79A887717, 0x9266710111022119, 0x1035531021330181, 0x0000717545564800,  // 0x00008730 
	0x1997300079998811, 0x8787111899981178, 0xA981130002100011, 0x9093010935551713,  // 0x00008750 
	0x2171032332232332, 0x3017111000100000, 0x1771103301033301, 0x7333300331187100,  // 0x00008770 
	0x0300032000201122, 0x0000330022220002, 0x0223132000033333, 0x2000200333211330,  // 0x00008790 
	0x0022233330201000, 0x0222302252220002, 0x0122003071000000, 0x0022200001071332,  // 0x000087B0 
	0x0002500255522290, 0x0000302220002230, 0x1002002233000001, 0x1022311719871010,  // 0x000087D0 
	0x0102555322500011, 0x0001301011133300, 0x3322333035531003, 0x3332230871117178,  // 0x000087F0 
	0x0225451102220790, 0x1110111033311021, 0x1245013202231006, 0x4113330118713311,  // 0x00008810 
	0x026B41A816445119, 0x2311101356381330, 0x1445111335411064, 0x1910000780266452,  // 0x00008830 
	0x0246653105904299, 0x4650817154873302, 0x36D2171024411063, 0x0024465223521355,  // 0x00008850 
	0x0445443158904279, 0x2442717344881000, 0x1244311364111066, 0x1244236528011A52,  // 0x00008870 
	0x0572550140706538, 0x3442711566313017, 0xA154001045083006, 0x0242811208207051,  // 0x00008890 
	0x0293243362104511, 0x3521808046213301, 0x1826037345074406, 0x0262320608044629,  // 0x000088B0 
	0x951056014232B2A7, 0x052081A15B411223, 0x32541134E4011646, 0x0366222608754551,  // 0x000088D0 
	0x842246212032B217, 0x053811113560A101, 0x34643136E5311146, 0x0056646418A24420,  // 0x000088F0 
	0xA254644000024517, 0x0578712373448100, 0x26233315C2201044, 0x40166C6330545522,  // 0x00008910 
	0x885555400000C511, 0x2288114211468110, 0x541108A0C5231446, 0x4480543256418154,  // 0x00008930 
	0x0802445255326233, 0x6511314203648178, 0x54500092C4200463, 0x368046225439A165,  // 0x00008950 
	0x5131442564554201, 0x4513316420453209, 0x72540002B5013431, 0x36134D4202227244,  // 0x00008970 
	0x00022422B6466500, 0x4431016B52453227, 0xA326B00264102431, 0x36102C4373252542,  // 0x00008990 
	0x1254460165464233, 0x6437185452452052, 0x0225427244111445, 0x4610040002232543,  // 0x000089B0 
	0x9354660913232213, 0x4211381254420024, 0x222243126578A104, 0x401142232644430A,  // 0x000089D0 
	0xA900203191223301, 0x3108199822311000, 0x2253311121879912, 0x21A033011103299A,  // 0x000089F0 
	0x9A981337A9321031, 0x31011A711AA81119, 0x9989871777111981, 0x17881111AAA179AA,  // 0x00008A10 
	0x8A98000088120000, 0x0000117011111111, 0x1181711117771771, 0x1181100018701887,  // 0x00008A30 
};

u64 _jyasinzou_room_17_tex_00008A50[] = 
{
	0x380B1A381A878738, 0x2838878787878787, 0x8728872828282828, 0xBCBCBCBC3880871A,  // 0x00008A50 
	0x38B70D8989898939, 0x3989390D0B0B8939, 0x39390F0B0B0F0D39, 0x0D890B0D0D0D8989,  // 0x00008A70 
	0x2839391736363939, 0x36360B0B281A1717, 0x170B390B170B170B, 0x0B0B170B0B173989,  // 0x00008A90 
	0x38AC0B1739393639, 0x36360B0B17171717, 0x170B0B170B0B0B39, 0x0B0B1717173939AC,  // 0x00008AB0 
	0x380D0B1739363636, 0x0B0B393636360B0B, 0x0B39393939393939, 0x0B0B0B0B0B3939AC,  // 0x00008AD0 
	0x870D0B1739363939, 0x363936363636170B, 0x3636363639393639, 0x3939390B0B393939,  // 0x00008AF0 
	0x870B170B36363936, 0x0B36363936360B0B, 0x0B39363639393939, 0x3989398939390B0B,  // 0x00008B10 
	0x870B171717363636, 0x0B17171717171717, 0x0B39393639393939, 0x3939393936390B0B,  // 0x00008B30 
	0x280D17170B36360B, 0x17170B1717171A1A, 0x170B0B0B39363639, 0x0B0B0B0B0B0B892D,  // 0x00008B50 
	0x1A0B1A170B0B360B, 0x17171717171A1A1A, 0x1A1A170B0B0B0B39, 0x0B0B1A1A1A170B0D,  // 0x00008B70 
	0x1A0B171739360B1A, 0x1A17171A1A171A1A, 0x1A1A17170B171717, 0x1A871A1A0B0B0B39,  // 0x00008B90 
	0x8789170B39390B1A, 0x1A1A171A1717171A, 0x1A1A17170B171A0B, 0x1A1A1A0B0B0B0BAC,  // 0x00008BB0 
	0x0B390B3636393617, 0x1A1A1A1A1A171A1A, 0x1A1A17170B0B1A17, 0x17170B0B0B1A39AC,  // 0x00008BD0 
	0x0B39360B0B360B1A, 0x1A1A1A1A1A171A1A, 0x1A1A1A170B0B1A0B, 0x1A1A1A0B0B0B0BAC,  // 0x00008BF0 
	0x1A0D171717171A1A, 0x1A1A1A1A1A1A1A1A, 0x1A0B0B0B0B1A1A0B, 0x0B1A1A0B390B0B89,  // 0x00008C10 
	0x0B0D1A1A1A1A1A1A, 0x1A1A1A871A1A1A1A, 0x170B0B0B0B1A1A1A, 0x0B0B170B0B0B0B89,  // 0x00008C30 
	0x0B0B1A1A1A171A1A, 0x1A1A1A1A1A1A1A1A, 0x1A0B0B0B0B0B0B0B, 0x0B0B0B0B0B0B0B89,  // 0x00008C50 
	0x0B1A1A1A1A17171A, 0x1A1A871A1A0B1A1A, 0x0B0B0B0B0B0B0B0B, 0x0B1A0B1A0B0B0B39,  // 0x00008C70 
	0x0B0D361A1A1A171A, 0x1A271A1A0B0B0B0B, 0x0B0B0B0B0B0B0B0B, 0x0B1A1A1A1A270B89,  // 0x00008C90 
	0x0B0D36171A170B0B, 0x1A1A0B0B0B390B0B, 0x0B0B0B0B0B0B0B0B, 0x0B1A1A1A1A270B89,  // 0x00008CB0 
	0x0B0F1717170B0B17, 0x17170B0B0B0B0B0B, 0x0B0B0B3939393939, 0x390B0B0B0B0B0B89,  // 0x00008CD0 
	0x1A0B171717171717, 0x17171717170B0B36, 0x0B39393989393936, 0x3639363636390B39,  // 0x00008CF0 
	0x0B0D171717171717, 0x17171717170B0B0B, 0x360B393939390B36, 0x0B36363636360B0D,  // 0x00008D10 
	0x0B0D171717171717, 0x1717171717171A1A, 0x170B3636360B170B, 0x170B0B0B0B0B1789,  // 0x00008D30 
	0x870D17171717171A, 0x17171717170B1717, 0x0B0B170B0B171717, 0x1717171717171789,  // 0x00008D50 
	0x8739170B1717171A, 0x1A1A1A1A1A171A1A, 0x170B39360B0B360B, 0x360B363636363957,  // 0x00008D70 
	0x1AAC39170B363617, 0x17171717170B0B0B, 0x3639393939390B36, 0x0B17360B0B0B179E,  // 0x00008D90 
	0x87AC3636170B0B1A, 0x171A1A1A1A170B36, 0x0B0B360B0B0B3939, 0x39170B17171717AC,  // 0x00008DB0 
	0x28AC363617171717, 0x1717171A1A171A1A, 0x1717171717171717, 0x1717171A1A1A1A90,  // 0x00008DD0 
	0x1AB18917170B3617, 0x171A171A1A1A1717, 0x1A0B0B0B0B0B0B0B, 0x1A1A1A1A1A1A1AB7,  // 0x00008DF0 
	0x87ACAC39390B3917, 0x17170B170B0B0B0B, 0x0B0B0B0B0B0B0B0B, 0x0B0B1A1A1A1A0B39,  // 0x00008E10 
	0x873989898989ACAC, 0x390D393939DE8989, 0x3939DE0B0B0B0F0B, 0x0D2D87871A0B3962,  // 0x00008E30 
};

u64 _jyasinzou_room_17_tex_00008E50[] = 
{
	0x8929492941103851, 0x31311131015388CD, 0x8875111515153533, 0x5675778499999066,  // 0x00008E50 
	0x8924299919138011, 0x131114445003336C, 0x1115111111111377, 0x3315334491999948,  // 0x00008E70 
	0x6499493941481844, 0x441411145131000C, 0x2221111114111021, 0x2115613144444926,  // 0x00008E90 
	0x8424494914434544, 0x444444054411112B, 0x2103311113300310, 0x0021640422092922,  // 0x00008EB0 
	0x8999444914311111, 0x1212304000120128, 0x4233311133A11A2A, 0x4110640209499940,  // 0x00008ED0 
	0x8922414111313310, 0x1010111111101018, 0x203777333333A73A, 0x7A71003229229994,  // 0x00008EF0 
	0x8494009143314111, 0x1141101024424416, 0x2402020222222222, 0x2220000102999990,  // 0x00008F10 
	0x6423941110110010, 0x0022022242202248, 0x0225000202222222, 0x2222030124429993,  // 0x00008F30 
	0x8020002403033310, 0x1110122442222226, 0x5550000000000224, 0x2222010012202060,  // 0x00008F50 
	0x8016680660036836, 0x8666663111211118, 0x3766000000007721, 0x1300336330306668,  // 0x00008F70 
	0x8006000630013103, 0x0666033111411338, 0x731033301033A311, 0x1111000311030018,  // 0x00008F90 
	0x8366680607011113, 0x1033311444444118, 0x13031001122A7341, 0x1113336313300020,  // 0x00008FB0 
	0xC063660333131411, 0x1330341194411338, 0x3030003000307A11, 0x1111336011000216,  // 0x00008FD0 
	0x8666606665751511, 0x1773319119411338, 0x3606703313A37311, 0x1113336310002006,  // 0x00008FF0 
	0xC666600066311113, 0x0710021444005558, 0x5660666566775533, 0x113A006022202426,  // 0x00009010 
	0xC066066666751111, 0x330002322423755B, 0x55686575777755A3, 0xA3A7300020202216,  // 0x00009030 
	0xC060004001491914, 0x4220222444007558, 0x55866557757555A3, 0x3A37A00022234226,  // 0x00009050 
	0xC660002420219141, 0x4492212144101358, 0x566667A7A755557A, 0x73A733002A2222A6,  // 0x00009070 
	0xC660244222419144, 0x4442224212122158, 0x5566577777755577, 0x3775A07322AA2126,  // 0x00009090 
	0xC660022420349414, 0x4444424224415558, 0x575865A7A77A5553, 0x37A5230A22222A08,  // 0x000090B0 
	0xC863222207224141, 0x4444224442250118, 0x15576777777757A7, 0x7775703022222276,  // 0x000090D0 
	0xC660042202244144, 0x0242222204041418, 0x13576777777A5577, 0x7777202A22A0AA06,  // 0x000090F0 
	0xCC60429410044141, 0x1024202214101118, 0x1372A7A7A7755577, 0x5757720A24423078,  // 0x00009110 
	0xC866024220244414, 0x1242444202242915, 0x113230737A755575, 0x7557021A42441776,  // 0x00009130 
	0xC866002206603331, 0x7121200144221915, 0x11370330A7555555, 0x757521004A927308,  // 0x00009150 
	0xC866002060677333, 0x6700013001300198, 0x1157767667655B55, 0x5556021322437768,  // 0x00009170 
	0xC806002055555555, 0x8557303310030118, 0x3135755555888855, 0x7557010323247668,  // 0x00009190 
	0xC806000606677775, 0x555577550637611B, 0x115755555558B853, 0x7356010323416608,  // 0x000091B0 
	0xC600002035657555, 0x856755573776631C, 0x8B3775555685885A, 0x777670030411666B,  // 0x000091D0 
	0xC806000065555555, 0x555565575776611B, 0x3585555558585873, 0x3332010402136008,  // 0x000091F0 
	0xC600202060631777, 0x56666677550663BB, 0x3355588885855831, 0x3200100001130868,  // 0x00009210 
	0xD842022104224113, 0x60008023367585BC, 0x55B88B8858856871, 0x0105207030330036,  // 0x00009230 
	0xDDCC8888888B8888, 0x8B8CCBC688CCBDDD, 0xDBBBBBBBBBBB8C88, 0x88BDC88B8B88C8BB,  // 0x00009250 
	0xDC20222222206320, 0x200602201020048D, 0x833758B85555A311, 0x4400510000011008,  // 0x00009270 
	0xC840224222228000, 0x021020111031044B, 0x1111555855553031, 0x1158503000330300,  // 0x00009290 
	0xC200242222020000, 0x0101012130002498, 0x1511355885557111, 0x1110533036003300,  // 0x000092B0 
	0xC010422021222021, 0x2222444043114448, 0x19114755B5537733, 0x3138033100013136,  // 0x000092D0 
	0xC010224204222002, 0x2224424242104958, 0x99914775B8731331, 0x3335730006606600,  // 0x000092F0 
	0xB002224222242020, 0x1222444494949558, 0x9999207686500333, 0x3130700066006636,  // 0x00009310 
	0xC300022010000000, 0x212444444442445B, 0x4494000677733033, 0x1103331060002166,  // 0x00009330 
	0xC000202300100060, 0x301122201033190B, 0x9999103075631333, 0x3310730203330166,  // 0x00009350 
	0xC030220300000606, 0x0302311213030778, 0x1441401367733077, 0x3735633000110160,  // 0x00009370 
	0xC100423730060060, 0x300100038033141B, 0x4444130378577357, 0x3575777401041906,  // 0x00009390 
	0xB202412733000006, 0x3001033103317148, 0x1411203755557777, 0x5375676002141060,  // 0x000093B0 
	0x8022222707767766, 0x030120000337394B, 0x0744101533535366, 0x7776566004026911,  // 0x000093D0 
	0x82020A0377767065, 0x3330331377AA3346, 0x4114203137853578, 0x5685526629499309,  // 0x000093F0 
	0xC007773755555356, 0xA33A3773363AAA35, 0x44A1655553455767, 0x5852556029999140,  // 0x00009410 
	0x8231377576657757, 0x733173731AA33315, 0x1413335555855588, 0x5555850044463944,  // 0x00009430 
	0x8857707655573373, 0x3131131373333338, 0x5535755555555555, 0x5555660499999210,  // 0x00009450 
	0x8005070573573353, 0x1111113133733118, 0x1335535555855555, 0x1555772249003191,  // 0x00009470 
	0x8021501333332113, 0x3111131377775118, 0x1151155555555555, 0x5555762499993049,  // 0x00009490 
	0x8000022000222223, 0x1114444411111118, 0x1111111515555555, 0x5553773499339122,  // 0x000094B0 
	0x8000000000000200, 0x2249444242222138, 0x1341515555155555, 0x5515373099991444,  // 0x000094D0 
	0xC000000000000222, 0x0444422222222A78, 0xA731111111111155, 0x5111371449431142,  // 0x000094F0 
	0x8000000000000060, 0x0202202022222078, 0x677A731111111111, 0x1113333149999142,  // 0x00009510 
	0x8000000600000200, 0x1002000000000066, 0x7000077777733133, 0x3350303489991299,  // 0x00009530 
	0x8002000666060063, 0x0122022222222428, 0x077A222A03202373, 0x3565688032269992,  // 0x00009550 
	0x8420222020000202, 0x2121220202222006, 0xA22A2A2A27206676, 0x7760000249991999,  // 0x00009570 
	0x6422022606060020, 0x2022142402000206, 0x2776766667777667, 0x66766004A9999999,  // 0x00009590 
	0x8422000000060060, 0x000000000066680C, 0x000022222A2A6700, 0x0000002499999999,  // 0x000095B0 
	0x8990022006066007, 0x333333337766666C, 0x0602022220000066, 0x6060001449999999,  // 0x000095D0 
	0x6444402000201111, 0x111131133306686C, 0x6606303331137666, 0x6603730499999999,  // 0x000095F0 
	0x8990449440333311, 0x333160600867600C, 0x0086865667777676, 0x0333131199999999,  // 0x00009610 
	0xC80006888B8B8C88, 0xC8C8C88BC88CCBBD, 0xCBCCBBBCBCCCCCCC, 0xBCCBCB8888866668,  // 0x00009630 
};


