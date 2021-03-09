#include <ultra64.h>
#include <z64.h>
#include "HAKAdanCH_room_3.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "HAKAdanCH_scene.h"



SCmdEchoSettings _HAKAdanCH_room_3_set0000_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0000
SCmdRoomBehavior _HAKAdanCH_room_3_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _HAKAdanCH_room_3_set0000_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0010
SCmdTimeSettings _HAKAdanCH_room_3_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _HAKAdanCH_room_3_set0000_cmd04 = { 0x0A, 0, (u32)&_HAKAdanCH_room_3_meshHeader_00000120 }; // 0x0020
SCmdObjectList _HAKAdanCH_room_3_set0000_cmd05 = { 0x0B, 0x0E, (u32)_HAKAdanCH_room_3_objectList_00000040 }; // 0x0028
SCmdActorList _HAKAdanCH_room_3_set0000_cmd06 = { 0x01, 0x0C, (u32)_HAKAdanCH_room_3_actorList_0000005C }; // 0x0030
SCmdEndMarker _HAKAdanCH_room_3_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _HAKAdanCH_room_3_objectList_00000040[] = 
{
	OBJECT_HAKACH_OBJECTS,
	OBJECT_HAKA_DOOR,
	OBJECT_BOX,
	OBJECT_SYOKUDAI,
	OBJECT_RD,
	OBJECT_ST,
	OBJECT_GI_SUTARU,
	OBJECT_MIZU_OBJECTS,
	OBJECT_BOMBIWA,
	OBJECT_WALLMASTER,
	OBJECT_GI_KEY,
	OBJECT_GOROIWA,
	OBJECT_EFC_FLASH,
	OBJECT_GI_HEART,
};

ActorEntry _HAKAdanCH_room_3_actorList_0000005C[12] = 
{
	{ ACTOR_EN_WALLMAS, 1004, 177, -1066, 0, 0, 0, 0x0000 }, //0x0000005C 
	{ ACTOR_EN_FLOORMAS, 998, 0, -1007, 0, 27307, 0, 0x0000 }, //0x0000006C 
	{ ACTOR_BG_MIZU_SHUTTER, 740, -10, -1200, 16384, 16384, 0, 0x0FFF }, //0x0000007C 
	{ ACTOR_BG_MIZU_SHUTTER, 740, -10, -1080, 16384, 16384, 0, 0x0FFF }, //0x0000008C 
	{ ACTOR_BG_MIZU_SHUTTER, 880, -10, -930, 16384, 16384, 0, 0x0FFF }, //0x0000009C 
	{ ACTOR_BG_MIZU_SHUTTER, 940, -10, -1220, 16384, 16384, 0, 0x0FFF }, //0x000000AC 
	{ ACTOR_BG_MIZU_SHUTTER, 980, -10, -1200, 16384, -16384, 0, 0x0FFF }, //0x000000BC 
	{ ACTOR_BG_MIZU_SHUTTER, 980, -10, -1080, 16384, -16384, 0, 0x0FFF }, //0x000000CC 
	{ ACTOR_BG_MIZU_SHUTTER, 1120, -10, -930, 16384, -16384, 0, 0x0FFF }, //0x000000DC 
	{ ACTOR_BG_MIZU_SHUTTER, 1180, -10, -1220, 16384, -16384, 0, 0x0FFF }, //0x000000EC 
	{ ACTOR_ELF_MSG, 1139, 0, -1367, 30, 0, 4, 0x2291 }, //0x000000FC 
	{ ACTOR_ELF_MSG, 868, 0, -896, 30, 0, 4, 0x2291 }, //0x0000010C 
};

static u32 pad11C = 0;

MeshHeader2 _HAKAdanCH_room_3_meshHeader_00000120 = { { 2 }, 0x03, (u32)&_HAKAdanCH_room_3_meshDListEntry_0000012C, (u32)&(_HAKAdanCH_room_3_meshDListEntry_0000012C) + sizeof(_HAKAdanCH_room_3_meshDListEntry_0000012C) };

MeshEntry2 _HAKAdanCH_room_3_meshDListEntry_0000012C[3] = 
{
	{ 1020, -140, -1140, 464, (u32)_HAKAdanCH_room_3_dlist_00000D40, 0 },
	{ 990, -720, -1020, 322, (u32)_HAKAdanCH_room_3_dlist_000013A0, 0 },
	{ 990, -600, -1020, 343, (u32)_HAKAdanCH_room_3_dlist_00001198, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

Vtx_t _HAKAdanCH_room_3_vertices_00000160[94] = 
{
	 { 900, 100, -880, 0, 102, 1126, 101, 120, 83, 255 }, // 0x00000160
	 { 900, 100, -860, 0, 307, 1126, 101, 120, 83, 255 }, // 0x00000170
	 { 840, 100, -860, 0, 307, 512, 101, 120, 83, 255 }, // 0x00000180
	 { 840, 100, -880, 0, 102, 512, 101, 120, 83, 255 }, // 0x00000190
	 { 840, 0, -880, 0, 102, 512, 195, 189, 161, 255 }, // 0x000001A0
	 { 840, 0, -860, 0, 307, 512, 195, 189, 161, 255 }, // 0x000001B0
	 { 900, 0, -860, 0, 307, 1126, 195, 189, 161, 255 }, // 0x000001C0
	 { 900, 0, -880, 0, 102, 1126, 195, 189, 161, 255 }, // 0x000001D0
	 { 900, 0, -880, 0, 205, 1024, 195, 189, 161, 255 }, // 0x000001E0
	 { 900, 0, -860, 0, 614, 1024, 195, 189, 161, 255 }, // 0x000001F0
	 { 900, 100, -860, 0, 614, -1024, 101, 120, 83, 255 }, // 0x00000200
	 { 900, 100, -880, 0, 205, -1024, 101, 120, 83, 255 }, // 0x00000210
	 { 840, 100, -880, 0, 205, -1024, 101, 120, 83, 255 }, // 0x00000220
	 { 840, 100, -860, 0, 614, -1024, 101, 120, 83, 255 }, // 0x00000230
	 { 840, 0, -860, 0, 614, 1024, 195, 189, 161, 255 }, // 0x00000240
	 { 840, 0, -880, 0, 205, 1024, 195, 189, 161, 255 }, // 0x00000250
	 { 840, 0, -1320, 0, 512, 1024, 195, 189, 161, 255 }, // 0x00000260
	 { 840, 200, -1320, 0, 512, -2389, 69, 81, 84, 255 }, // 0x00000270
	 { 840, 200, -880, 0, -6997, -2389, 69, 81, 84, 255 }, // 0x00000280
	 { 840, 0, -880, 0, -6997, 1024, 195, 189, 161, 255 }, // 0x00000290
	 { 1080, 200, -1320, 0, 1536, -2389, 69, 81, 84, 255 }, // 0x000002A0
	 { 840, 200, -1320, 0, -2560, -2389, 69, 81, 84, 255 }, // 0x000002B0
	 { 840, 0, -1320, 0, -2560, 1024, 195, 189, 161, 255 }, // 0x000002C0
	 { 1080, 0, -1320, 0, 1536, 1024, 195, 189, 161, 255 }, // 0x000002D0
	 { 840, 100, -880, 0, -2560, -683, 101, 120, 83, 255 }, // 0x000002E0
	 { 840, 200, -880, 0, -2560, -2389, 69, 81, 84, 255 }, // 0x000002F0
	 { 1200, 200, -880, 0, 3584, -2389, 69, 81, 84, 255 }, // 0x00000300
	 { 1200, 100, -880, 0, 3584, -683, 69, 81, 84, 255 }, // 0x00000310
	 { 900, 0, -880, 0, -1536, 1024, 195, 189, 161, 255 }, // 0x00000320
	 { 900, 100, -880, 0, -1536, -683, 101, 120, 83, 255 }, // 0x00000330
	 { 1200, 0, -880, 0, 3584, 1024, 195, 189, 161, 255 }, // 0x00000340
	 { 1200, 0, -1280, 0, -2560, 1877, 195, 189, 161, 255 }, // 0x00000350
	 { 1200, 0, -1320, 0, -2560, 2560, 195, 189, 161, 255 }, // 0x00000360
	 { 1180, 0, -1320, 0, -2219, 2560, 195, 189, 161, 255 }, // 0x00000370
	 { 1180, 0, -1280, 0, -2219, 1877, 195, 189, 161, 255 }, // 0x00000380
	 { 1200, 0, -1160, 0, -2560, -171, 195, 189, 161, 255 }, // 0x00000390
	 { 1180, 0, -1160, 0, -2219, -171, 195, 189, 161, 255 }, // 0x000003A0
	 { 1180, 0, -880, 0, -2219, -4949, 195, 189, 161, 255 }, // 0x000003B0
	 { 1200, 0, -880, 0, -2560, -4949, 195, 189, 161, 255 }, // 0x000003C0
	 { 1020, 0, -1320, 0, 512, 2560, 195, 189, 161, 255 }, // 0x000003D0
	 { 840, 0, -1320, 0, 3584, 2560, 195, 189, 161, 255 }, // 0x000003E0
	 { 840, 0, -1280, 0, 3584, 1877, 195, 189, 161, 255 }, // 0x000003F0
	 { 1020, 0, -1280, 0, 512, 1877, 195, 189, 161, 255 }, // 0x00000400
	 { 1020, 0, -1020, 0, 512, -2560, 195, 189, 161, 255 }, // 0x00000410
	 { 1020, 0, -1160, 0, 512, -171, 195, 189, 161, 255 }, // 0x00000420
	 { 980, 0, -1160, 0, 1195, -171, 195, 189, 161, 255 }, // 0x00000430
	 { 980, 0, -1020, 0, 1195, -2560, 195, 189, 161, 255 }, // 0x00000440
	 { 980, 0, -1280, 0, 1195, 1877, 195, 189, 161, 255 }, // 0x00000450
	 { 840, 0, -1160, 0, 3584, -171, 195, 189, 161, 255 }, // 0x00000460
	 { 1020, 0, -980, 0, 512, -3243, 195, 189, 161, 255 }, // 0x00000470
	 { 840, 0, -1020, 0, 3584, -2560, 195, 189, 161, 255 }, // 0x00000480
	 { 840, 0, -980, 0, 3584, -3243, 195, 189, 161, 255 }, // 0x00000490
	 { 1180, 0, -980, 0, -2219, -3243, 195, 189, 161, 255 }, // 0x000004A0
	 { 840, 0, -880, 0, 3584, -4949, 195, 189, 161, 255 }, // 0x000004B0
	 { 980, 0, -880, 0, 1195, -4949, 195, 189, 161, 255 }, // 0x000004C0
	 { 980, 0, -980, 0, 1195, -3243, 195, 189, 161, 255 }, // 0x000004D0
	 { 1120, 0, -880, 0, -1195, -4949, 195, 189, 161, 255 }, // 0x000004E0
	 { 1120, 0, -980, 0, -1195, -3243, 195, 189, 161, 255 }, // 0x000004F0
	 { 840, 200, -1320, 0, 3584, 2560, 69, 81, 84, 255 }, // 0x00000500
	 { 1200, 200, -1320, 0, -2560, 2560, 69, 81, 84, 255 }, // 0x00000510
	 { 1200, 200, -880, 0, -2560, -4949, 69, 81, 84, 255 }, // 0x00000520
	 { 840, 200, -880, 0, 3584, -4949, 69, 81, 84, 255 }, // 0x00000530
	 { 1200, 0, -1320, 0, 512, 1024, 195, 189, 161, 255 }, // 0x00000540
	 { 1200, 0, -880, 0, -6997, 1024, 195, 189, 161, 255 }, // 0x00000550
	 { 1200, 200, -880, 0, -6997, -2389, 69, 81, 84, 255 }, // 0x00000560
	 { 1200, 200, -1320, 0, 512, -2389, 69, 81, 84, 255 }, // 0x00000570
	 { 1020, -240, -1280, 0, 9088, 0, 89, 89, 89, 255 }, // 0x00000580
	 { 1020, -480, -1280, 0, 9088, 3072, 34, 38, 67, 255 }, // 0x00000590
	 { 1180, -480, -1280, 0, 11136, 3072, 101, 120, 83, 255 }, // 0x000005A0
	 { 1180, -240, -1280, 0, 11136, 0, 89, 89, 89, 255 }, // 0x000005B0
	 { 1020, 0, -1280, 0, 9088, -3072, 101, 120, 83, 255 }, // 0x000005C0
	 { 1180, 0, -1280, 0, 11136, -3072, 101, 120, 83, 255 }, // 0x000005D0
	 { 1180, -240, -1160, 0, 11136, 0, 89, 89, 89, 255 }, // 0x000005E0
	 { 1180, -480, -1160, 0, 11136, 3072, 34, 38, 67, 255 }, // 0x000005F0
	 { 1020, -480, -1160, 0, 9088, 3072, 34, 38, 67, 255 }, // 0x00000600
	 { 1020, -240, -1160, 0, 9088, 0, 89, 89, 89, 255 }, // 0x00000610
	 { 1180, 0, -1160, 0, 11136, -3072, 101, 120, 83, 255 }, // 0x00000620
	 { 1020, 0, -1160, 0, 9088, -3072, 101, 120, 83, 255 }, // 0x00000630
	 { 1120, -240, -880, 0, 10368, 0, 89, 89, 89, 255 }, // 0x00000640
	 { 1120, -480, -880, 0, 10368, 3072, 34, 38, 67, 255 }, // 0x00000650
	 { 980, -480, -880, 0, 8576, 3072, 34, 38, 67, 255 }, // 0x00000660
	 { 980, -240, -880, 0, 8576, 0, 89, 89, 89, 255 }, // 0x00000670
	 { 1120, 0, -880, 0, 10368, -3072, 101, 120, 83, 255 }, // 0x00000680
	 { 980, 0, -880, 0, 8576, -3072, 101, 120, 83, 255 }, // 0x00000690
	 { 980, -240, -980, 0, 8576, 0, 89, 89, 89, 255 }, // 0x000006A0
	 { 980, -480, -980, 0, 8576, 3072, 34, 38, 67, 255 }, // 0x000006B0
	 { 1120, -480, -980, 0, 10368, 3072, 34, 38, 67, 255 }, // 0x000006C0
	 { 1120, -240, -980, 0, 10368, 0, 89, 89, 89, 255 }, // 0x000006D0
	 { 980, 0, -980, 0, 8576, -3072, 101, 120, 83, 255 }, // 0x000006E0
	 { 1120, 0, -980, 0, 10368, -3072, 101, 120, 83, 255 }, // 0x000006F0
	 { 980, -240, -1020, 0, 8576, 0, 89, 89, 89, 255 }, // 0x00000700
	 { 980, -480, -1020, 0, 8576, 3072, 34, 38, 67, 255 }, // 0x00000710
	 { 840, -480, -1020, 0, 6784, 3072, 34, 38, 67, 255 }, // 0x00000720
	 { 840, -240, -1020, 0, 6784, 0, 89, 89, 89, 255 }, // 0x00000730
};

Vtx_t _HAKAdanCH_room_3_vertices_00000740[32] = 
{
	 { 980, 0, -1020, 0, 8576, -3072, 101, 120, 83, 255 }, // 0x00000740
	 { 980, -240, -1020, 0, 8576, 0, 89, 89, 89, 255 }, // 0x00000750
	 { 840, -240, -1020, 0, 6784, 0, 89, 89, 89, 255 }, // 0x00000760
	 { 840, 0, -1020, 0, 6784, -3072, 101, 120, 83, 255 }, // 0x00000770
	 { 840, -240, -1160, 0, 6784, 0, 89, 89, 89, 255 }, // 0x00000780
	 { 840, -480, -1160, 0, 6784, 3072, 34, 38, 67, 255 }, // 0x00000790
	 { 980, -480, -1160, 0, 8576, 3072, 34, 38, 67, 255 }, // 0x000007A0
	 { 980, -240, -1160, 0, 8576, 0, 89, 89, 89, 255 }, // 0x000007B0
	 { 840, 0, -1160, 0, 6784, -3072, 101, 120, 83, 255 }, // 0x000007C0
	 { 980, 0, -1160, 0, 8576, -3072, 101, 120, 83, 255 }, // 0x000007D0
	 { 1020, -240, -1160, 0, 2048, 512, 89, 89, 89, 255 }, // 0x000007E0
	 { 1020, -480, -1160, 0, 2048, 3584, 34, 38, 67, 255 }, // 0x000007F0
	 { 1020, -480, -1280, 0, 3584, 3584, 34, 38, 67, 255 }, // 0x00000800
	 { 1020, -240, -1280, 0, 3584, 512, 89, 89, 89, 255 }, // 0x00000810
	 { 1020, 0, -1160, 0, 2048, -2560, 101, 120, 83, 255 }, // 0x00000820
	 { 1020, 0, -1280, 0, 3584, -2560, 101, 120, 83, 255 }, // 0x00000830
	 { 1180, -240, -1280, 0, 3584, 512, 89, 89, 89, 255 }, // 0x00000840
	 { 1180, -480, -1280, 0, 3584, 3584, 101, 120, 83, 255 }, // 0x00000850
	 { 1180, -480, -1160, 0, 2048, 3584, 34, 38, 67, 255 }, // 0x00000860
	 { 1180, -240, -1160, 0, 2048, 512, 89, 89, 89, 255 }, // 0x00000870
	 { 1180, 0, -1280, 0, 3584, -2560, 101, 120, 83, 255 }, // 0x00000880
	 { 1180, 0, -1160, 0, 2048, -2560, 101, 120, 83, 255 }, // 0x00000890
	 { 980, -240, -880, 0, -1536, 512, 89, 89, 89, 255 }, // 0x000008A0
	 { 980, -480, -880, 0, -1536, 3584, 34, 38, 67, 255 }, // 0x000008B0
	 { 980, -480, -980, 0, -256, 3584, 34, 38, 67, 255 }, // 0x000008C0
	 { 980, -240, -980, 0, -256, 512, 89, 89, 89, 255 }, // 0x000008D0
	 { 980, 0, -880, 0, -1536, -2560, 101, 120, 83, 255 }, // 0x000008E0
	 { 980, 0, -980, 0, -256, -2560, 101, 120, 83, 255 }, // 0x000008F0
	 { 1120, -240, -980, 0, -256, 512, 89, 89, 89, 255 }, // 0x00000900
	 { 1120, -480, -980, 0, -256, 3584, 34, 38, 67, 255 }, // 0x00000910
	 { 1120, -480, -880, 0, -1536, 3584, 34, 38, 67, 255 }, // 0x00000920
	 { 1120, -240, -880, 0, -1536, 512, 89, 89, 89, 255 }, // 0x00000930
};

Vtx_t _HAKAdanCH_room_3_vertices_00000940[32] = 
{
	 { 1120, 0, -980, 0, -256, -2560, 101, 120, 83, 255 }, // 0x00000940
	 { 1120, -240, -980, 0, -256, 512, 89, 89, 89, 255 }, // 0x00000950
	 { 1120, -240, -880, 0, -1536, 512, 89, 89, 89, 255 }, // 0x00000960
	 { 1120, 0, -880, 0, -1536, -2560, 101, 120, 83, 255 }, // 0x00000970
	 { 980, -240, -1160, 0, 2048, 512, 89, 89, 89, 255 }, // 0x00000980
	 { 980, -480, -1160, 0, 2048, 3584, 34, 38, 67, 255 }, // 0x00000990
	 { 980, -480, -1020, 0, 256, 3584, 34, 38, 67, 255 }, // 0x000009A0
	 { 980, -240, -1020, 0, 256, 512, 89, 89, 89, 255 }, // 0x000009B0
	 { 980, 0, -1160, 0, 2048, -2560, 101, 120, 83, 255 }, // 0x000009C0
	 { 980, 0, -1020, 0, 256, -2560, 101, 120, 83, 255 }, // 0x000009D0
	 { 840, -240, -1020, 0, 256, 512, 89, 89, 89, 255 }, // 0x000009E0
	 { 840, -480, -1020, 0, 256, 3584, 34, 38, 67, 255 }, // 0x000009F0
	 { 840, -480, -1160, 0, 2048, 3584, 34, 38, 67, 255 }, // 0x00000A00
	 { 840, -240, -1160, 0, 2048, 512, 89, 89, 89, 255 }, // 0x00000A10
	 { 840, 0, -1020, 0, 256, -2560, 101, 120, 83, 255 }, // 0x00000A20
	 { 840, 0, -1160, 0, 2048, -2560, 101, 120, 83, 255 }, // 0x00000A30
	 { 1080, 200, -1400, 0, 1877, -2389, 69, 81, 84, 255 }, // 0x00000A40
	 { 1080, 200, -1320, 0, 512, -2389, 69, 81, 84, 255 }, // 0x00000A50
	 { 1080, 0, -1320, 0, 512, 1024, 195, 189, 161, 255 }, // 0x00000A60
	 { 1080, 0, -1400, 0, 1877, 1024, 195, 189, 161, 255 }, // 0x00000A70
	 { 1200, 0, -1320, 0, -2560, 2560, 195, 189, 161, 255 }, // 0x00000A80
	 { 1200, 0, -1400, 0, -2560, 3925, 195, 189, 161, 255 }, // 0x00000A90
	 { 1080, 0, -1400, 0, -512, 3925, 195, 189, 161, 255 }, // 0x00000AA0
	 { 1080, 0, -1320, 0, -512, 2560, 195, 189, 161, 255 }, // 0x00000AB0
	 { 1200, 200, -1320, 0, 512, -2389, 69, 81, 84, 255 }, // 0x00000AC0
	 { 1200, 200, -1400, 0, 1877, -2389, 69, 81, 84, 255 }, // 0x00000AD0
	 { 1200, 0, -1400, 0, 1877, 1024, 195, 189, 161, 255 }, // 0x00000AE0
	 { 1200, 0, -1320, 0, 512, 1024, 195, 189, 161, 255 }, // 0x00000AF0
	 { 1080, 200, -1320, 0, -512, 2560, 69, 81, 84, 255 }, // 0x00000B00
	 { 1080, 200, -1400, 0, -512, 3925, 69, 81, 84, 255 }, // 0x00000B10
	 { 1200, 200, -1400, 0, -2560, 3925, 69, 81, 84, 255 }, // 0x00000B20
	 { 1200, 200, -1320, 0, -2560, 2560, 69, 81, 84, 255 }, // 0x00000B30
};

Vtx_t _HAKAdanCH_room_3_vertices_00000B40[24] = 
{
	 { 1110, 100, -1400, 0, 0, 1365, 101, 120, 83, 255 }, // 0x00000B40
	 { 1170, 100, -1420, 0, 1024, 1024, 69, 81, 84, 255 }, // 0x00000B50
	 { 1170, 100, -1400, 0, 1024, 1365, 101, 120, 83, 255 }, // 0x00000B60
	 { 1110, 100, -1420, 0, 0, 1024, 69, 81, 84, 255 }, // 0x00000B70
	 { 1170, 100, -1400, 0, 1195, 683, 101, 120, 83, 255 }, // 0x00000B80
	 { 1170, 100, -1420, 0, 1195, 1024, 69, 81, 84, 255 }, // 0x00000B90
	 { 1170, 0, -1420, 0, -512, 1024, 69, 81, 84, 255 }, // 0x00000BA0
	 { 1170, 0, -1400, 0, -512, 683, 195, 189, 161, 255 }, // 0x00000BB0
	 { 1110, 0, -1400, 0, -512, 683, 195, 189, 161, 255 }, // 0x00000BC0
	 { 1110, 0, -1420, 0, -512, 1024, 69, 81, 84, 255 }, // 0x00000BD0
	 { 1110, 100, -1420, 0, 1195, 1024, 69, 81, 84, 255 }, // 0x00000BE0
	 { 1110, 100, -1400, 0, 1195, 683, 101, 120, 83, 255 }, // 0x00000BF0
	 { 1170, 0, -1400, 0, 1024, 1365, 195, 189, 161, 255 }, // 0x00000C00
	 { 1170, 0, -1420, 0, 1024, 1024, 69, 81, 84, 255 }, // 0x00000C10
	 { 1110, 0, -1420, 0, 0, 1024, 69, 81, 84, 255 }, // 0x00000C20
	 { 1110, 0, -1400, 0, 0, 1365, 195, 189, 161, 255 }, // 0x00000C30
	 { 1200, 200, -1400, 0, 3413, -2389, 69, 81, 84, 255 }, // 0x00000C40
	 { 1170, 100, -1400, 0, 2901, -683, 101, 120, 83, 255 }, // 0x00000C50
	 { 1170, 0, -1400, 0, 2901, 1024, 195, 189, 161, 255 }, // 0x00000C60
	 { 1200, 0, -1400, 0, 3413, 1024, 195, 189, 161, 255 }, // 0x00000C70
	 { 1080, 200, -1400, 0, 1365, -2389, 69, 81, 84, 255 }, // 0x00000C80
	 { 1110, 100, -1400, 0, 1877, -683, 101, 120, 83, 255 }, // 0x00000C90
	 { 1080, 0, -1400, 0, 1365, 1024, 195, 189, 161, 255 }, // 0x00000CA0
	 { 1110, 0, -1400, 0, 1877, 1024, 195, 189, 161, 255 }, // 0x00000CB0
};

Vtx_t _HAKAdanCH_room_3_vertices_00000CC0[8] = 
{
	 { 840, -480, -1420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000CC0
	 { 1200, -480, -1420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000CD0
	 { 840, 200, -1420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000CE0
	 { 1200, 200, -1420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000CF0
	 { 840, -480, -860, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D00
	 { 1200, -480, -860, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D10
	 { 840, 200, -860, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D20
	 { 1200, 200, -860, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D30
};

Gfx _HAKAdanCH_room_3_dlist_00000D40[] =
{
	gsDPPipeSync(), // 0x00000D40
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000D48
	gsSPVertex(_HAKAdanCH_room_3_vertices_00000CC0, 8, 0), // 0x00000D50
	gsSPCullDisplayList(0, 7), // 0x00000D58
	gsDPPipeSync(), // 0x00000D60
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000D68
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000D70
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000D78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HAKAdanCH_room_3_tex_000014C0), // 0x00000D80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000D88
	gsDPLoadSync(), // 0x00000D90
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000D98
	gsDPPipeSync(), // 0x00000DA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000DA8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000DB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HAKAdanCH_scene_tex_0000BD90), // 0x00000DB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 3, 0, 5, 3), // 0x00000DC0
	gsDPLoadSync(), // 0x00000DC8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000DD0
	gsDPPipeSync(), // 0x00000DD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 3, 0, 5, 3), // 0x00000DE0
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00000DE8
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000DF0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000DF8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000E00
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000E08
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000E10
	gsSPVertex(_HAKAdanCH_room_3_vertices_00000160, 32, 0), // 0x00000E18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000E20
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000E28
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000E30
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00000E38
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00000E40
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00000E48
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00000E50
	gsSP2Triangles(28, 29, 27, 0, 28, 27, 30, 0), // 0x00000E58
	gsSPVertex(_HAKAdanCH_room_3_vertices_00000350, 32, 0), // 0x00000E60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000E68
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00000E70
	gsSP2Triangles(6, 7, 4, 0, 6, 4, 5, 0), // 0x00000E78
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000E80
	gsSP2Triangles(2, 8, 11, 0, 2, 11, 3, 0), // 0x00000E88
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00000E90
	gsSP2Triangles(16, 10, 17, 0, 16, 17, 14, 0), // 0x00000E98
	gsSP2Triangles(11, 16, 14, 0, 11, 14, 13, 0), // 0x00000EA0
	gsSP2Triangles(18, 12, 19, 0, 18, 19, 20, 0), // 0x00000EA8
	gsSP2Triangles(21, 5, 13, 0, 21, 13, 18, 0), // 0x00000EB0
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 20, 0), // 0x00000EB8
	gsSP2Triangles(25, 6, 21, 0, 25, 21, 26, 0), // 0x00000EC0
	gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0), // 0x00000EC8
	gsSPVertex(_HAKAdanCH_room_3_vertices_00000540, 32, 0), // 0x00000ED0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000ED8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000EE0
	gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0), // 0x00000EE8
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00000EF0
	gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0), // 0x00000EF8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00000F00
	gsSP2Triangles(20, 16, 19, 0, 20, 19, 21, 0), // 0x00000F08
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x00000F10
	gsSP2Triangles(26, 22, 25, 0, 26, 25, 27, 0), // 0x00000F18
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00000F20
	gsSPVertex(_HAKAdanCH_room_3_vertices_00000740, 32, 0), // 0x00000F28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000F30
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000F38
	gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0), // 0x00000F40
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00000F48
	gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0), // 0x00000F50
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00000F58
	gsSP2Triangles(20, 16, 19, 0, 20, 19, 21, 0), // 0x00000F60
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x00000F68
	gsSP2Triangles(26, 22, 25, 0, 26, 25, 27, 0), // 0x00000F70
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00000F78
	gsSPVertex(_HAKAdanCH_room_3_vertices_00000940, 32, 0), // 0x00000F80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000F88
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000F90
	gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0), // 0x00000F98
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00000FA0
	gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0), // 0x00000FA8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00000FB0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00000FB8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00000FC0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00000FC8
	gsSPVertex(_HAKAdanCH_room_3_vertices_00000B40, 24, 0), // 0x00000FD0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00000FD8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000FE0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000FE8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00000FF0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00000FF8
	gsSP2Triangles(16, 20, 21, 0, 16, 21, 17, 0), // 0x00001000
	gsSP2Triangles(20, 22, 23, 0, 20, 23, 21, 0), // 0x00001008
	gsSPEndDisplayList(), // 0x00001010
};

Vtx_t _HAKAdanCH_room_3_vertices_00001018[16] = 
{
	 { 1120, -720, -880, 0, 4495, 2148, 115, 115, 115, 255 }, // 0x00001018
	 { 920, -720, -760, 0, 3371, 1867, 115, 115, 115, 255 }, // 0x00001028
	 { 920, -573, -760, 0, 3549, 1158, 69, 81, 84, 255 }, // 0x00001038
	 { 1120, -480, -880, 0, 4784, 991, 34, 38, 67, 255 }, // 0x00001048
	 { 800, -573, -920, 0, 3385, 1117, 69, 81, 84, 255 }, // 0x00001058
	 { 800, -720, -920, 0, 3208, 1826, 115, 115, 115, 255 }, // 0x00001068
	 { 840, -720, -1160, 0, 3996, 2023, 115, 115, 115, 255 }, // 0x00001078
	 { 840, -480, -1160, 0, 4285, 866, 34, 38, 67, 255 }, // 0x00001088
	 { 1020, -720, -1280, 0, 5038, 2283, 61, 61, 130, 255 }, // 0x00001098
	 { 1020, -480, -1280, 0, 5327, 1127, 34, 38, 67, 255 }, // 0x000010A8
	 { 1180, -720, -1280, 0, 5686, 2446, 61, 61, 130, 255 }, // 0x000010B8
	 { 1180, -480, -1280, 0, 5976, 1289, 34, 38, 67, 255 }, // 0x000010C8
	 { 1180, -720, -1280, 0, 5755, 2463, 61, 61, 130, 255 }, // 0x000010D8
	 { 1180, -720, -1160, 0, 5451, 2387, 115, 115, 115, 255 }, // 0x000010E8
	 { 1180, -480, -1160, 0, 5740, 1230, 34, 38, 67, 255 }, // 0x000010F8
	 { 1180, -480, -1280, 0, 6045, 1306, 34, 38, 67, 255 }, // 0x00001108
};

Vtx_t _HAKAdanCH_room_3_vertices_00001118[8] = 
{
	 { 871, -720, -1335, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001118
	 { 1201, -720, -1276, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001128
	 { 871, -480, -1335, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001138
	 { 1201, -480, -1276, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001148
	 { 774, -720, -786, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001158
	 { 1104, -720, -728, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001168
	 { 774, -480, -786, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001178
	 { 1104, -480, -728, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001188
};

Gfx _HAKAdanCH_room_3_dlist_00001198[] =
{
	gsDPPipeSync(), // 0x00001198
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000011A0
	gsSPVertex(_HAKAdanCH_room_3_vertices_00001118, 8, 0), // 0x000011A8
	gsSPCullDisplayList(0, 7), // 0x000011B0
	gsDPPipeSync(), // 0x000011B8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000011C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000011C8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000011D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HAKAdanCH_scene_tex_0000B590), // 0x000011D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 2, 0, 5, 1), // 0x000011E0
	gsDPLoadSync(), // 0x000011E8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000011F0
	gsDPPipeSync(), // 0x000011F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 2, 0, 5, 1), // 0x00001200
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001208
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HAKAdanCH_scene_tex_0000A590), // 0x00001210
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001218
	gsDPLoadSync(), // 0x00001220
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001228
	gsDPPipeSync(), // 0x00001230
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 0, 0, 5, 0), // 0x00001238
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00001240
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001248
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001250
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001258
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001260
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001268
	gsSPVertex(_HAKAdanCH_room_3_vertices_00001018, 16, 0), // 0x00001270
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001278
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001280
	gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0), // 0x00001288
	gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0), // 0x00001290
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001298
	gsSP2Triangles(0, 3, 14, 0, 0, 14, 13, 0), // 0x000012A0
	gsSPEndDisplayList(), // 0x000012A8
};

Vtx_t _HAKAdanCH_room_3_vertices_000012B0[7] = 
{
	 { 1020, -720, -1280, 0, 256, 6093, 61, 61, 130, 255 }, // 0x000012B0
	 { 840, -720, -1160, 0, 410, 5325, 115, 115, 115, 255 }, // 0x000012C0
	 { 800, -720, -920, 0, -102, 4608, 115, 115, 115, 255 }, // 0x000012D0
	 { 1180, -720, -1160, 0, -461, 6195, 115, 115, 115, 255 }, // 0x000012E0
	 { 1180, -720, -1280, 0, -154, 6502, 61, 61, 130, 255 }, // 0x000012F0
	 { 920, -720, -760, 0, -819, 4506, 115, 115, 115, 255 }, // 0x00001300
	 { 1120, -720, -880, 0, -1024, 5325, 115, 115, 115, 255 }, // 0x00001310
};

Vtx_t _HAKAdanCH_room_3_vertices_00001320[8] = 
{
	 { 871, -720, -1335, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001320
	 { 1201, -720, -1276, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001330
	 { 871, -720, -1335, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001340
	 { 1201, -720, -1276, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001350
	 { 774, -720, -786, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001360
	 { 1104, -720, -728, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001370
	 { 774, -720, -786, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001380
	 { 1104, -720, -728, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001390
};

Gfx _HAKAdanCH_room_3_dlist_000013A0[] =
{
	gsDPPipeSync(), // 0x000013A0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000013A8
	gsSPVertex(_HAKAdanCH_room_3_vertices_00001320, 8, 0), // 0x000013B0
	gsSPCullDisplayList(0, 7), // 0x000013B8
	gsDPPipeSync(), // 0x000013C0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000013C8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000013D0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000013D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HAKAdanCH_scene_tex_0000A590), // 0x000013E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000013E8
	gsDPLoadSync(), // 0x000013F0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000013F8
	gsDPPipeSync(), // 0x00001400
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001408
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001410
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _HAKAdanCH_scene_tex_0000AD90), // 0x00001418
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 15, 0, 5, 15), // 0x00001420
	gsDPLoadSync(), // 0x00001428
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001430
	gsDPPipeSync(), // 0x00001438
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 15, 0, 5, 15), // 0x00001440
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00001448
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001450
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001458
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001460
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001468
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001470
	gsSPVertex(_HAKAdanCH_room_3_vertices_000012B0, 7, 0), // 0x00001478
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0), // 0x00001480
	gsSP2Triangles(3, 0, 2, 0, 5, 6, 3, 0), // 0x00001488
	gsSP1Triangle(5, 3, 2, 0), // 0x00001490
	gsSPEndDisplayList(), // 0x00001498
};

static u8 unaccounted14A0[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0x40, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x11, 0x98, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0xA0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _HAKAdanCH_room_3_tex_000014C0[] = 
{
	0x2951421552994215, 0x4A99529B31910847, 0x108942152951210F, 0x294F295131912951,  // 0x000014C0 
	0x18CB210D42154217, 0x39D339D3421518CB, 0x00054A5752994215, 0x210F18CD08490003,  // 0x000014E0 
	0x5B6352DF39D55BA5, 0x5BA552DD5B631089, 0x4A595B635B635B63, 0x63E75B63531F4A9D,  // 0x00001500 
	0x4A9B531F5B2163E9, 0x6BE95B635B63529B, 0x4A576C6F6C295BA3, 0x52DF52DD39D53A15,  // 0x00001520 
	0x29513A1742594215, 0x31934A9B5B211089, 0x39D352DF52DF52DD, 0x5B615B215B614A9B,  // 0x00001540 
	0x42594A9B42594A9B, 0x4A595B61529D39D3, 0x4A576C6B63614A9B, 0x425939D342154215,  // 0x00001560 
	0x4A9B42174259294F, 0x4A9B5BA352DF0847, 0x4A5763E75B6352DF, 0x4A9B52DD5B615B63,  // 0x00001580 
	0x5B6152DD4A9B4A9B, 0x63A55B6152DD4A99, 0x421563A552DD39D3, 0x52DD52DD4A9B4A9B,  // 0x000015A0 
	0x53214A9B31934A9D, 0x425952DD5B631089, 0x4A9B421742595321, 0x5B615B63531F4259,  // 0x000015C0 
	0x4A9B42174A9B5B21, 0x6363531F52DD39D3, 0x18CD531F52DF4257, 0x531F5B1F42594257,  // 0x000015E0 
	0x52DF42594A9B52DF, 0x52DD425B39D51089, 0x5B1F531F63A55B63, 0x5B6352DD4A9B531F,  // 0x00001600 
	0x52DF52DD531F5B63, 0x52DD52DD52DF3191, 0x18CB52DD42174257, 0x421731914A9B5B61,  // 0x00001620 
	0x3A1539D54A9B52DF, 0x39D54A9B319318CB, 0x63615B635B615B61, 0x529D52DD5B63531F,  // 0x00001640 
	0x52DF52DF5B616BE7, 0x5B615B6152DD39D3, 0x18CD52DD295152DD, 0x39D539D552DD5B63,  // 0x00001660 
	0x42594A9B4A9B4259, 0x319152DD531F210F, 0x5ADD532142594A9B, 0x5BA363A352DD5B1F,  // 0x00001680 
	0x63A363A36BE74217, 0x42155B1F5B6152DD, 0x18CD5B21421739D3, 0x29514A5952DD5B61,  // 0x000016A0 
	0x52DF52DD4A9B4259, 0x5B635B6153214215, 0x636363A552DF4A59, 0x52DD5B1F4A9B6BE7,  // 0x000016C0 
	0x63A563E75B1F52DD, 0x5B1F4A594A9B531F, 0x39D56363421518CB, 0x210F5B635B634217,  // 0x000016E0 
	0x53213A154A9B52DD, 0x63A5425B3A1739D5, 0x39D363E75B1F2951, 0x42174A9B63A36C29,  // 0x00001700 
	0x63A5531F63A563A5, 0x52DD4A9B529B4A9B, 0x29515B63425739D5, 0x42174A9B529D5B1F,  // 0x00001720 
	0x4A9B425952DD3A15, 0x42594A9B52DD39D5, 0x39D3529B39D35B21, 0x5B616BE763A352DD,  // 0x00001740 
	0x63A35B6163636361, 0x531F6363531F4217, 0x210F63E742174A59, 0x52DD4215425952DD,  // 0x00001760 
	0x42174A9D52DF4A9B, 0x52DD52DD5B2139D3, 0x42155B6142574A9B, 0x5B6163A55B616C29,  // 0x00001780 
	0x6BE963635B1F529B, 0x529B52DD529B5B63, 0x39D54A9B3A155B1F, 0x63E56BE75B614A9B,  // 0x000017A0 
	0x531F42575B63531F, 0x52DF5B1F6BE74A9B, 0x421763E752DD531F, 0x6C2B5B1F5B616C29,  // 0x000017C0 
	0x529B42575B1F5B1F, 0x5B1F52DD6BE75B63, 0x39D352DF52DD6BE7, 0x63A56C6D63A55B21,  // 0x000017E0 
	0x63A54A9B4A9B4217, 0x5B1F63A563A35321, 0x4A5974AF6BE76BE9, 0x63A36BE752DD6361,  // 0x00001800 
	0x6BE752DD421752DD, 0x5B2163A56BE76C6F, 0x295152DD6BE76C6B, 0x74AF746D63A56BE7,  // 0x00001820 
	0x6CB3642D63A752DF, 0x6CF76BE96C716C2D, 0x6BA375BB642B6CB1, 0x6C6F6C6F5B1F6D39,  // 0x00001840 
	0x6C2B63A56C6D6BE9, 0x6C2B6CB16C716C71, 0x18CD6BE96C716BE9, 0x74F3757B74F36D39,  // 0x00001860 
	0x210D18CB3191210F, 0x39D329514A595299, 0x18CB295139D3529B, 0x5B1D631F5ADB5ADB,  // 0x00001880 
	0x295129514A594A57, 0x4A575299529B52DD, 0x08473191210F18CB, 0x210F210D18CD0847,  // 0x000018A0 
	0x00010005210D2951, 0x210D210D319318CB, 0x000718CB108918CD, 0x294F108B00070001,  // 0x000018C0 
	0x000118CB3191294F, 0x42154A57319139D3, 0x4A595ADD4A994217, 0x4215421539D3210D,  // 0x000018E0 
	0x18CB53214ADD4217, 0x52DF52DF5B214A9B, 0x39D34A9B5B63425B, 0x42594A9B3A150007,  // 0x00001900 
	0x210F63E763A35B61, 0x63A55B21529D4259, 0x63A352DD4A59531F, 0x636342594A9D531F,  // 0x00001920 
	0x108B63634A9B4A9B, 0x52DD425742154A59, 0x52DD529B4A9B5B61, 0x52DD529B52DD4217,  // 0x00001940 
	0x42155B1F5B635B21, 0x5B616361295152DD, 0x63634A594A5952DD, 0x4A9B4259421739D5,  // 0x00001960 
	0x210D52DD4A9B52DF, 0x4A9B52DD3A154A59, 0x52DD52DF4A9B52DF, 0x5B1F4A594A9B4259,  // 0x00001980 
	0x42155B6152DD5B61, 0x6BE7529B52DD5B1F, 0x4257421542174259, 0x52DD531F52DF3193,  // 0x000019A0 
	0x2951636342174215, 0x52DD52DD4A9B52DD, 0x5B1F5B215B1F4A9B, 0x39D342174A9D4259,  // 0x000019C0 
	0x52996BE75B1F63A3, 0x52DF42595B61529B, 0x421739D35B1F531F, 0x4A9B52DF42154217,  // 0x000019E0 
	0x29515B614A5939D5, 0x42594A9B42155B61, 0x5B1F52DD5B1F63A5, 0x421752DD5B614217,  // 0x00001A00 
	0x4A5763A55B1F6363, 0x529B529B529B4A59, 0x5B1F5B1F63635B1F, 0x5B1F4A5939D34A9B,  // 0x00001A20 
	0x18CB52DD4259529B, 0x52DF52DD529B5B21, 0x52DF5B1F6BE7529B, 0x4A9B63635B634259,  // 0x00001A40 
	0x39D3531F5B615B61, 0x52DD5B1F63635B1F, 0x5B1F5B1F636152DD, 0x52DD42594A595B1F,  // 0x00001A60 
	0x0847529B4A9B52DD, 0x52DD531F5B615B1F, 0x4A9B5B21529B4A9B, 0x63E563635B1F4A57,  // 0x00001A80 
	0x210F5B1F52DD5B61, 0x529B5B1F4A9B52DD, 0x529B52DD529B4A59, 0x4A594A5952DD5B61,  // 0x00001AA0 
	0x10895B635B6163A3, 0x52DF529B5B6163A5, 0x52DD4A5939D54A59, 0x4A9B63A56C2952DD,  // 0x00001AC0 
	0x294F5B63529B529B, 0x5B1F63615B616BE7, 0x63A563615B1F5B1F, 0x4A9B4A9B4A9B4215,  // 0x00001AE0 
	0x18CD6BE75B1F5B61, 0x52DD5B1F52DF529B, 0x63635B1F5B6352DD, 0x4A9B52DD6BE752DD,  // 0x00001B00 
	0x39D363635B615B21, 0x63635B615B1F5B61, 0x6363529B4A9B4A59, 0x529B529B52DD3A15,  // 0x00001B20 
	0x210D5B634A9B52DF, 0x63636BE752DF6363, 0x4A59425763A55B61, 0x63A56BE75B1F4217,  // 0x00001B40 
	0x18CB5B6163634A9B, 0x4A9B4A9B5B1F63A3, 0x529B39D342594A9B, 0x52DD5B6152DD531F,  // 0x00001B60 
	0x294F52DD4A9B5B61, 0x63A55B635B6163A3, 0x529B5B215B6163E7, 0x6BE763614A9B4217,  // 0x00001B80 
	0x18CB6BE952DD5B1F, 0x52DD531F52DD52DD, 0x4215421752DD63A3, 0x5B6152DD5B1F5B63,  // 0x00001BA0 
	0x29516BE95B2152DF, 0x6BE763A55B61746B, 0x63E75B6363A55B61, 0x5B1F52DD5B615B63,  // 0x00001BC0 
	0x210D63A36BE76361, 0x52DD531F4A596363, 0x5B1F52DD63636BE7, 0x5B6163636BE75B21,  // 0x00001BE0 
	0x210F63E752DD5B61, 0x63E763A56BE76C2B, 0x636163A363A36363, 0x63A563A5746F5B61,  // 0x00001C00 
	0x10896BE963A56C29, 0x6BE95B2142176363, 0x52DD52DD6BA56363, 0x63A56BE95B6152DD,  // 0x00001C20 
	0x31916C6F63A56CB1, 0x74F36C2B6BE96C6D, 0x6C2B6C296C2B6C29, 0x63A5746D757B635F,  // 0x00001C40 
	0x18CB6CB36C6D6C2B, 0x6C2B74B16C2B6C6D, 0x636363A36C6F6BE7, 0x6C2B6BE76BE96C2B,  // 0x00001C60 
	0x0847421542155299, 0x631F63A763616C2B, 0x6C296BE7636363A5, 0x6BE76BE56C2939D3,  // 0x00001C80 
	0x000142154A5739D3, 0x4A575299294F3191, 0x39D339D32951294F, 0x42154A5752993191,  // 0x00001CA0 
};


