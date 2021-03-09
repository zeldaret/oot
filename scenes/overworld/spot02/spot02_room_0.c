#include <ultra64.h>
#include <z64.h>
#include "spot02_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "spot02_scene.h"



SCmdAltHeaders _spot02_room_0_set0000_cmd00 = { 0x18, 0, (u32)&_spot02_room_0_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _spot02_room_0_set0000_cmd01 = { 0x16, 0, { 0 }, 0x0A }; // 0x0008
SCmdRoomBehavior _spot02_room_0_set0000_cmd02 = { 0x08, 0x00, 0x00000000 }; // 0x0010
SCmdSkyboxDisables _spot02_room_0_set0000_cmd03 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0018
SCmdTimeSettings _spot02_room_0_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0020
SCmdMesh _spot02_room_0_set0000_cmd05 = { 0x0A, 0, (u32)&_spot02_room_0_meshHeader_000001F0 }; // 0x0028
SCmdObjectList _spot02_room_0_set0000_cmd06 = { 0x0B, 0x02, (u32)_spot02_room_0_objectList_0000005C }; // 0x0030
SCmdActorList _spot02_room_0_set0000_cmd07 = { 0x01, 0x19, (u32)_spot02_room_0_actorList_00000060 }; // 0x0038
SCmdEndMarker _spot02_room_0_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _spot02_room_0_alternateHeaders_00000048[] = 
{
	(u32)&_spot02_room_0_set0650_cmd00,
	(u32)&_spot02_room_0_set0290_cmd00,
	(u32)&_spot02_room_0_set0470_cmd00,
	(u32)&_spot02_room_0_set0830_cmd00,
	(u32)&_spot02_room_0_set0900_cmd00,
};

s16 _spot02_room_0_objectList_0000005C[] = 
{
	OBJECT_SPOT02_OBJECTS,
	OBJECT_SYOKUDAI,
};

ActorEntry _spot02_room_0_actorList_00000060[25] = 
{
	{ ACTOR_OBJ_SYOKUDAI, 1896, 95, 80, 0, 16384, 0, 0x129F }, //0x00000060 
	{ ACTOR_OBJ_SYOKUDAI, 1930, 95, -39, 0, 10923, 0, 0x129F }, //0x00000070 
	{ ACTOR_OBJ_SYOKUDAI, 1930, 95, 199, 0, 21845, 0, 0x129F }, //0x00000080 
	{ ACTOR_OBJ_SYOKUDAI, 1971, 95, 38, 0, 13289, 0, 0x129F }, //0x00000090 
	{ ACTOR_OBJ_SYOKUDAI, 1972, 95, 121, 0, 19297, 0, 0x129F }, //0x000000A0 
	{ ACTOR_OBJ_SYOKUDAI, 2011, 95, 197, 0, 24576, 0, 0x129F }, //0x000000B0 
	{ ACTOR_OBJ_SYOKUDAI, 2015, 95, -127, 0, 6372, 0, 0x129F }, //0x000000C0 
	{ ACTOR_OBJ_SYOKUDAI, 2015, 95, 284, 0, 26396, 0, 0x129F }, //0x000000D0 
	{ ACTOR_OBJ_SYOKUDAI, 2016, 95, -41, 0, 8556, 0, 0x129F }, //0x000000E0 
	{ ACTOR_OBJ_SYOKUDAI, 2093, 95, -86, 0, 2913, 0, 0x129F }, //0x000000F0 
	{ ACTOR_OBJ_SYOKUDAI, 2093, 95, 245, 0, 29855, 0, 0x129F }, //0x00000100 
	{ ACTOR_OBJ_SYOKUDAI, 2136, 95, -158, 0, 0, 0, 0x129F }, //0x00000110 
	{ ACTOR_OBJ_SYOKUDAI, 2136, 95, 318, 0, -32768, 0, 0x129F }, //0x00000120 
	{ ACTOR_OBJ_SYOKUDAI, 2178, 95, -84, 0, -2913, 0, 0x129F }, //0x00000130 
	{ ACTOR_OBJ_SYOKUDAI, 2180, 95, 245, 0, -30037, 0, 0x129F }, //0x00000140 
	{ ACTOR_OBJ_SYOKUDAI, 2254, 95, -127, 0, -5461, 0, 0x129F }, //0x00000150 
	{ ACTOR_OBJ_SYOKUDAI, 2256, 95, 288, 0, -26396, 0, 0x129F }, //0x00000160 
	{ ACTOR_OBJ_SYOKUDAI, 2259, 95, -38, 0, -8374, 0, 0x129F }, //0x00000170 
	{ ACTOR_OBJ_SYOKUDAI, 2260, 95, 200, 0, -24758, 0, 0x129F }, //0x00000180 
	{ ACTOR_OBJ_SYOKUDAI, 2294, 95, 39, 0, -12925, 0, 0x129F }, //0x00000190 
	{ ACTOR_OBJ_SYOKUDAI, 2302, 95, 123, 0, -19843, 0, 0x129F }, //0x000001A0 
	{ ACTOR_OBJ_SYOKUDAI, 2343, 95, -39, 0, -10923, 0, 0x129F }, //0x000001B0 
	{ ACTOR_OBJ_SYOKUDAI, 2343, 95, 199, 0, -21845, 0, 0x129F }, //0x000001C0 
	{ ACTOR_OBJ_SYOKUDAI, 2376, 95, 82, 0, -16566, 0, 0x129F }, //0x000001D0 
	{ ACTOR_BG_SPOT02_OBJECTS, 2676, 100, 80, 0, -16384, 0, 0x1F00 }, //0x000001E0 
};


MeshHeader2 _spot02_room_0_meshHeader_000001F0 = { { 2 }, 0x09, (u32)&_spot02_room_0_meshDListEntry_000001FC, (u32)&(_spot02_room_0_meshDListEntry_000001FC) + sizeof(_spot02_room_0_meshDListEntry_000001FC) };

MeshEntry2 _spot02_room_0_meshDListEntry_000001FC[9] = 
{
	{ 2136, 100, 80, 219, 0, (u32)_spot02_room_0_dlist_000025E0 },
	{ 3120, 284, 80, 729, (u32)_spot02_room_0_dlist_00001AB0, 0 },
	{ 2626, 100, 80, 123, (u32)_spot02_room_0_dlist_00001D18, 0 },
	{ 2236, 100, 80, 516, (u32)_spot02_room_0_dlist_00001480, 0 },
	{ 1576, 290, 80, 311, (u32)_spot02_room_0_dlist_00000D70, 0 },
	{ 950, 373, 80, 202, (u32)_spot02_room_0_dlist_00002230, 0 },
	{ 2136, 112, 80, 49, (u32)_spot02_room_0_dlist_00002030, 0 },
	{ 1576, 220, 80, 274, (u32)_spot02_room_0_dlist_00000AB0, 0 },
	{ 2216, 326, 80, 548, (u32)_spot02_room_0_dlist_00001170, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

SCmdEchoSettings _spot02_room_0_set0290_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0290
SCmdRoomBehavior _spot02_room_0_set0290_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0298
SCmdSkyboxDisables _spot02_room_0_set0290_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x02A0
SCmdTimeSettings _spot02_room_0_set0290_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x02A8
SCmdMesh _spot02_room_0_set0290_cmd04 = { 0x0A, 0, (u32)&_spot02_room_0_meshHeader_000001F0 }; // 0x02B0
SCmdObjectList _spot02_room_0_set0290_cmd05 = { 0x0B, 0x02, (u32)_spot02_room_0_objectList_000002D0 }; // 0x02B8
SCmdActorList _spot02_room_0_set0290_cmd06 = { 0x01, 0x19, (u32)_spot02_room_0_actorList_000002D4 }; // 0x02C0
SCmdEndMarker _spot02_room_0_set0290_cmd07 = { 0x14, 0x00, 0x00 }; // 0x02C8
s16 _spot02_room_0_objectList_000002D0[] = 
{
	OBJECT_SPOT02_OBJECTS,
	OBJECT_SYOKUDAI,
};

ActorEntry _spot02_room_0_actorList_000002D4[25] = 
{
	{ ACTOR_OBJ_SYOKUDAI, 1896, 95, 80, 0, 16384, 0, 0x129E }, //0x000002D4 
	{ ACTOR_OBJ_SYOKUDAI, 1930, 95, -39, 0, 10923, 0, 0x129E }, //0x000002E4 
	{ ACTOR_OBJ_SYOKUDAI, 1930, 95, 199, 0, 21845, 0, 0x129E }, //0x000002F4 
	{ ACTOR_OBJ_SYOKUDAI, 1971, 95, 38, 0, 13289, 0, 0x129E }, //0x00000304 
	{ ACTOR_OBJ_SYOKUDAI, 1972, 95, 121, 0, 19297, 0, 0x129E }, //0x00000314 
	{ ACTOR_OBJ_SYOKUDAI, 2011, 95, 197, 0, 24576, 0, 0x129E }, //0x00000324 
	{ ACTOR_OBJ_SYOKUDAI, 2015, 95, -127, 0, 6372, 0, 0x129E }, //0x00000334 
	{ ACTOR_OBJ_SYOKUDAI, 2015, 95, 284, 0, 26396, 0, 0x129E }, //0x00000344 
	{ ACTOR_OBJ_SYOKUDAI, 2016, 95, -41, 0, 8556, 0, 0x129E }, //0x00000354 
	{ ACTOR_OBJ_SYOKUDAI, 2093, 95, -86, 0, 2913, 0, 0x129E }, //0x00000364 
	{ ACTOR_OBJ_SYOKUDAI, 2093, 95, 245, 0, 29855, 0, 0x129E }, //0x00000374 
	{ ACTOR_OBJ_SYOKUDAI, 2136, 95, -158, 0, 0, 0, 0x129E }, //0x00000384 
	{ ACTOR_OBJ_SYOKUDAI, 2136, 95, 318, 0, -32768, 0, 0x129E }, //0x00000394 
	{ ACTOR_OBJ_SYOKUDAI, 2178, 95, -84, 0, -2913, 0, 0x129E }, //0x000003A4 
	{ ACTOR_OBJ_SYOKUDAI, 2180, 95, 245, 0, -30037, 0, 0x129E }, //0x000003B4 
	{ ACTOR_OBJ_SYOKUDAI, 2254, 95, -127, 0, -5461, 0, 0x129E }, //0x000003C4 
	{ ACTOR_OBJ_SYOKUDAI, 2256, 95, 288, 0, -26396, 0, 0x129E }, //0x000003D4 
	{ ACTOR_OBJ_SYOKUDAI, 2259, 95, -38, 0, -8374, 0, 0x129E }, //0x000003E4 
	{ ACTOR_OBJ_SYOKUDAI, 2260, 95, 200, 0, -24758, 0, 0x129E }, //0x000003F4 
	{ ACTOR_OBJ_SYOKUDAI, 2294, 95, 39, 0, -12925, 0, 0x129E }, //0x00000404 
	{ ACTOR_OBJ_SYOKUDAI, 2302, 95, 123, 0, -19843, 0, 0x129E }, //0x00000414 
	{ ACTOR_OBJ_SYOKUDAI, 2343, 95, -39, 0, -10923, 0, 0x129E }, //0x00000424 
	{ ACTOR_OBJ_SYOKUDAI, 2343, 95, 199, 0, -21845, 0, 0x129E }, //0x00000434 
	{ ACTOR_OBJ_SYOKUDAI, 2376, 95, 82, 0, -16566, 0, 0x129E }, //0x00000444 
	{ ACTOR_BG_SPOT02_OBJECTS, 2676, 100, 80, 0, -16384, 0, 0x1E00 }, //0x00000454 
};

static u32 pad464 = 0;
static u32 pad468 = 0;
static u32 pad46C = 0;

SCmdEchoSettings _spot02_room_0_set0470_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0470
SCmdRoomBehavior _spot02_room_0_set0470_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0478
SCmdSkyboxDisables _spot02_room_0_set0470_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0480
SCmdTimeSettings _spot02_room_0_set0470_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0488
SCmdMesh _spot02_room_0_set0470_cmd04 = { 0x0A, 0, (u32)&_spot02_room_0_meshHeader_000001F0 }; // 0x0490
SCmdObjectList _spot02_room_0_set0470_cmd05 = { 0x0B, 0x02, (u32)_spot02_room_0_objectList_000004B0 }; // 0x0498
SCmdActorList _spot02_room_0_set0470_cmd06 = { 0x01, 0x19, (u32)_spot02_room_0_actorList_000004B4 }; // 0x04A0
SCmdEndMarker _spot02_room_0_set0470_cmd07 = { 0x14, 0x00, 0x00 }; // 0x04A8
s16 _spot02_room_0_objectList_000004B0[] = 
{
	OBJECT_SPOT02_OBJECTS,
	OBJECT_SYOKUDAI,
};

ActorEntry _spot02_room_0_actorList_000004B4[25] = 
{
	{ ACTOR_OBJ_SYOKUDAI, 2376, 95, 82, 0, -16566, 0, 0x129E }, //0x000004B4 
	{ ACTOR_OBJ_SYOKUDAI, 2343, 95, 199, 0, -21845, 0, 0x129E }, //0x000004C4 
	{ ACTOR_OBJ_SYOKUDAI, 2343, 95, -39, 0, -10923, 0, 0x129E }, //0x000004D4 
	{ ACTOR_OBJ_SYOKUDAI, 2302, 95, 123, 0, -19843, 0, 0x129E }, //0x000004E4 
	{ ACTOR_OBJ_SYOKUDAI, 2294, 95, 39, 0, -12925, 0, 0x129E }, //0x000004F4 
	{ ACTOR_OBJ_SYOKUDAI, 2260, 95, 200, 0, -24758, 0, 0x129E }, //0x00000504 
	{ ACTOR_OBJ_SYOKUDAI, 2259, 95, -38, 0, -8374, 0, 0x129E }, //0x00000514 
	{ ACTOR_OBJ_SYOKUDAI, 2256, 95, 288, 0, -26396, 0, 0x129E }, //0x00000524 
	{ ACTOR_OBJ_SYOKUDAI, 2254, 95, -127, 0, -5461, 0, 0x129E }, //0x00000534 
	{ ACTOR_OBJ_SYOKUDAI, 2180, 95, 245, 0, -30037, 0, 0x129E }, //0x00000544 
	{ ACTOR_OBJ_SYOKUDAI, 2178, 95, -84, 0, -2913, 0, 0x129E }, //0x00000554 
	{ ACTOR_OBJ_SYOKUDAI, 2136, 95, 318, 0, -32768, 0, 0x129E }, //0x00000564 
	{ ACTOR_OBJ_SYOKUDAI, 2136, 95, -158, 0, 0, 0, 0x129E }, //0x00000574 
	{ ACTOR_OBJ_SYOKUDAI, 2093, 95, 245, 0, 29855, 0, 0x129E }, //0x00000584 
	{ ACTOR_OBJ_SYOKUDAI, 2093, 95, -86, 0, 2913, 0, 0x129E }, //0x00000594 
	{ ACTOR_OBJ_SYOKUDAI, 2016, 95, -41, 0, 8556, 0, 0x129E }, //0x000005A4 
	{ ACTOR_OBJ_SYOKUDAI, 2015, 95, 284, 0, 26396, 0, 0x129E }, //0x000005B4 
	{ ACTOR_OBJ_SYOKUDAI, 2015, 95, -127, 0, 6372, 0, 0x129E }, //0x000005C4 
	{ ACTOR_OBJ_SYOKUDAI, 2011, 95, 197, 0, 24576, 0, 0x129E }, //0x000005D4 
	{ ACTOR_OBJ_SYOKUDAI, 1972, 95, 121, 0, 19297, 0, 0x129E }, //0x000005E4 
	{ ACTOR_OBJ_SYOKUDAI, 1971, 95, 38, 0, 13289, 0, 0x129E }, //0x000005F4 
	{ ACTOR_OBJ_SYOKUDAI, 1930, 95, 199, 0, 21845, 0, 0x129E }, //0x00000604 
	{ ACTOR_OBJ_SYOKUDAI, 1930, 95, -39, 0, 10923, 0, 0x129E }, //0x00000614 
	{ ACTOR_OBJ_SYOKUDAI, 1896, 95, 80, 0, 16384, 0, 0x129E }, //0x00000624 
	{ ACTOR_BG_SPOT02_OBJECTS, 2676, 100, 80, 0, -16384, 0, 0x1E00 }, //0x00000634 
};

static u32 pad644 = 0;
static u32 pad648 = 0;
static u32 pad64C = 0;

SCmdEchoSettings _spot02_room_0_set0650_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0650
SCmdRoomBehavior _spot02_room_0_set0650_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0658
SCmdSkyboxDisables _spot02_room_0_set0650_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0660
SCmdTimeSettings _spot02_room_0_set0650_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0668
SCmdMesh _spot02_room_0_set0650_cmd04 = { 0x0A, 0, (u32)&_spot02_room_0_meshHeader_000001F0 }; // 0x0670
SCmdObjectList _spot02_room_0_set0650_cmd05 = { 0x0B, 0x02, (u32)_spot02_room_0_objectList_00000690 }; // 0x0678
SCmdActorList _spot02_room_0_set0650_cmd06 = { 0x01, 0x19, (u32)_spot02_room_0_actorList_00000694 }; // 0x0680
SCmdEndMarker _spot02_room_0_set0650_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0688
s16 _spot02_room_0_objectList_00000690[] = 
{
	OBJECT_SPOT02_OBJECTS,
	OBJECT_SYOKUDAI,
};

ActorEntry _spot02_room_0_actorList_00000694[25] = 
{
	{ ACTOR_OBJ_SYOKUDAI, 1896, 95, 80, 0, 16384, 0, 0x129F }, //0x00000694 
	{ ACTOR_OBJ_SYOKUDAI, 1930, 95, -39, 0, 10923, 0, 0x129F }, //0x000006A4 
	{ ACTOR_OBJ_SYOKUDAI, 1930, 95, 199, 0, 21845, 0, 0x129F }, //0x000006B4 
	{ ACTOR_OBJ_SYOKUDAI, 1971, 95, 38, 0, 13289, 0, 0x129F }, //0x000006C4 
	{ ACTOR_OBJ_SYOKUDAI, 1972, 95, 121, 0, 19297, 0, 0x129F }, //0x000006D4 
	{ ACTOR_OBJ_SYOKUDAI, 2011, 95, 197, 0, 24576, 0, 0x129F }, //0x000006E4 
	{ ACTOR_OBJ_SYOKUDAI, 2015, 95, -127, 0, 6372, 0, 0x129F }, //0x000006F4 
	{ ACTOR_OBJ_SYOKUDAI, 2015, 95, 284, 0, 26396, 0, 0x129F }, //0x00000704 
	{ ACTOR_OBJ_SYOKUDAI, 2016, 95, -41, 0, 8556, 0, 0x129F }, //0x00000714 
	{ ACTOR_OBJ_SYOKUDAI, 2093, 95, -86, 0, 2913, 0, 0x129F }, //0x00000724 
	{ ACTOR_OBJ_SYOKUDAI, 2093, 95, 245, 0, 29855, 0, 0x129F }, //0x00000734 
	{ ACTOR_OBJ_SYOKUDAI, 2136, 95, -158, 0, 0, 0, 0x129F }, //0x00000744 
	{ ACTOR_OBJ_SYOKUDAI, 2136, 95, 318, 0, -32768, 0, 0x129F }, //0x00000754 
	{ ACTOR_OBJ_SYOKUDAI, 2178, 95, -84, 0, -2913, 0, 0x129F }, //0x00000764 
	{ ACTOR_OBJ_SYOKUDAI, 2180, 95, 245, 0, -30037, 0, 0x129F }, //0x00000774 
	{ ACTOR_OBJ_SYOKUDAI, 2254, 95, -127, 0, -5461, 0, 0x129F }, //0x00000784 
	{ ACTOR_OBJ_SYOKUDAI, 2256, 95, 288, 0, -26396, 0, 0x129F }, //0x00000794 
	{ ACTOR_OBJ_SYOKUDAI, 2259, 95, -38, 0, -8374, 0, 0x129F }, //0x000007A4 
	{ ACTOR_OBJ_SYOKUDAI, 2260, 95, 200, 0, -24758, 0, 0x129F }, //0x000007B4 
	{ ACTOR_OBJ_SYOKUDAI, 2294, 95, 39, 0, -12925, 0, 0x129F }, //0x000007C4 
	{ ACTOR_OBJ_SYOKUDAI, 2302, 95, 123, 0, -19843, 0, 0x129F }, //0x000007D4 
	{ ACTOR_OBJ_SYOKUDAI, 2343, 95, -39, 0, -10923, 0, 0x129F }, //0x000007E4 
	{ ACTOR_OBJ_SYOKUDAI, 2343, 95, 199, 0, -21845, 0, 0x129F }, //0x000007F4 
	{ ACTOR_OBJ_SYOKUDAI, 2376, 95, 82, 0, -16566, 0, 0x129F }, //0x00000804 
	{ ACTOR_BG_SPOT02_OBJECTS, 2676, 100, 80, 0, -16384, 0, 0x1F00 }, //0x00000814 
};

static u32 pad824 = 0;
static u32 pad828 = 0;
static u32 pad82C = 0;

SCmdEchoSettings _spot02_room_0_set0830_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0830
SCmdRoomBehavior _spot02_room_0_set0830_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0838
SCmdSkyboxDisables _spot02_room_0_set0830_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0840
SCmdTimeSettings _spot02_room_0_set0830_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0848
SCmdMesh _spot02_room_0_set0830_cmd04 = { 0x0A, 0, (u32)&_spot02_room_0_meshHeader_000001F0 }; // 0x0850
SCmdObjectList _spot02_room_0_set0830_cmd05 = { 0x0B, 0x0B, (u32)_spot02_room_0_objectList_00000870 }; // 0x0858
SCmdActorList _spot02_room_0_set0830_cmd06 = { 0x01, 0x07, (u32)_spot02_room_0_actorList_00000888 }; // 0x0860
SCmdEndMarker _spot02_room_0_set0830_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0868
s16 _spot02_room_0_objectList_00000870[] = 
{
	OBJECT_SPOT02_OBJECTS,
	OBJECT_MJIN,
	OBJECT_MJIN_DARK,
	OBJECT_EFC_FLASH,
	OBJECT_SYOKUDAI,
	OBJECT_POH,
	OBJECT_TK,
	OBJECT_HAKA,
	OBJECT_NIW,
	OBJECT_MAMENOKI,
	OBJECT_BOX,
};

ActorEntry _spot02_room_0_actorList_00000888[7] = 
{
	{ ACTOR_OBJ_SYOKUDAI, 1930, 100, -39, 0, 10923, 0, 0x13FF }, //0x00000888 
	{ ACTOR_OBJ_SYOKUDAI, 1930, 100, 199, 0, 21845, 0, 0x13FF }, //0x00000898 
	{ ACTOR_OBJ_SYOKUDAI, 2136, 100, 318, 0, -32768, 0, 0x13FF }, //0x000008A8 
	{ ACTOR_OBJ_SYOKUDAI, 2343, 100, 199, 0, -21845, 0, 0x13FF }, //0x000008B8 
	{ ACTOR_OBJ_SYOKUDAI, 2343, 100, -39, 0, -10923, 0, 0x13FF }, //0x000008C8 
	{ ACTOR_OBJ_SYOKUDAI, 2136, 100, -158, 0, 0, 0, 0x13FF }, //0x000008D8 
	{ ACTOR_BG_SPOT02_OBJECTS, 2676, 100, 80, 0, -16384, 0, 0xFF00 }, //0x000008E8 
};

static u32 pad8F8 = 0;
static u32 pad8FC = 0;

SCmdEchoSettings _spot02_room_0_set0900_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0900
SCmdRoomBehavior _spot02_room_0_set0900_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0908
SCmdSkyboxDisables _spot02_room_0_set0900_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0910
SCmdTimeSettings _spot02_room_0_set0900_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x01 }; // 0x0918
SCmdMesh _spot02_room_0_set0900_cmd04 = { 0x0A, 0, (u32)&_spot02_room_0_meshHeader_000001F0 }; // 0x0920
SCmdObjectList _spot02_room_0_set0900_cmd05 = { 0x0B, 0x0C, (u32)_spot02_room_0_objectList_00000940 }; // 0x0928
SCmdActorList _spot02_room_0_set0900_cmd06 = { 0x01, 0x07, (u32)_spot02_room_0_actorList_00000958 }; // 0x0930
SCmdEndMarker _spot02_room_0_set0900_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0938
s16 _spot02_room_0_objectList_00000940[] = 
{
	OBJECT_SPOT02_OBJECTS,
	OBJECT_MJIN,
	OBJECT_MJIN_DARK,
	OBJECT_EFC_FLASH,
	OBJECT_SYOKUDAI,
	OBJECT_POH,
	OBJECT_TK,
	OBJECT_HAKA,
	OBJECT_NIW,
	OBJECT_MAMENOKI,
	OBJECT_BOX,
	OBJECT_SPOT01_OBJECTS,
};

ActorEntry _spot02_room_0_actorList_00000958[7] = 
{
	{ ACTOR_OBJ_SYOKUDAI, 1930, 100, -39, 0, 10923, 0, 0x13FF }, //0x00000958 
	{ ACTOR_OBJ_SYOKUDAI, 1930, 100, 199, 0, 21845, 0, 0x13FF }, //0x00000968 
	{ ACTOR_OBJ_SYOKUDAI, 2136, 100, 318, 0, -32768, 0, 0x13FF }, //0x00000978 
	{ ACTOR_OBJ_SYOKUDAI, 2343, 100, 199, 0, -21845, 0, 0x13FF }, //0x00000988 
	{ ACTOR_OBJ_SYOKUDAI, 2343, 100, -39, 0, -10923, 0, 0x13FF }, //0x00000998 
	{ ACTOR_OBJ_SYOKUDAI, 2136, 100, -158, 0, 0, 0, 0x13FF }, //0x000009A8 
	{ ACTOR_BG_SPOT02_OBJECTS, 2676, 100, 80, 0, -16384, 0, 0xFF00 }, //0x000009B8 
};

static u32 pad9C8 = 0;
static u32 pad9CC = 0;

Vtx_t _spot02_room_0_vertices_000009D0[6] = 
{
	 { 1336, 340, 140, 0, 0, -6122, 87, 82, 65, 255 }, // 0x000009D0
	 { 1576, 220, 140, 0, 0, 11, 25, 25, 25, 255 }, // 0x000009E0
	 { 1576, 220, 20, 0, 1024, 11, 25, 25, 25, 255 }, // 0x000009F0
	 { 1336, 340, 20, 0, 1024, -6122, 87, 82, 65, 255 }, // 0x00000A00
	 { 1816, 100, 140, 0, 0, 6144, 102, 102, 102, 255 }, // 0x00000A10
	 { 1816, 100, 20, 0, 1024, 6144, 102, 102, 102, 255 }, // 0x00000A20
};

Vtx_t _spot02_room_0_vertices_00000A30[8] = 
{
	 { 1783, 66, -59, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A30
	 { 1818, 66, 140, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A40
	 { 1802, 100, -62, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A50
	 { 1837, 100, 136, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A60
	 { 1316, 340, 24, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A70
	 { 1351, 340, 222, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A80
	 { 1335, 374, 20, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A90
	 { 1370, 374, 219, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AA0
};

Gfx _spot02_room_0_dlist_00000AB0[] =
{
	gsDPPipeSync(), // 0x00000AB0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000AB8
	gsSPVertex(_spot02_room_0_vertices_00000A30, 8, 0), // 0x00000AC0
	gsSPCullDisplayList(0, 7), // 0x00000AC8
	gsDPPipeSync(), // 0x00000AD0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000AD8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000AE0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000AE8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot02_scene_tex_0000B880), // 0x00000AF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 4, 0), // 0x00000AF8
	gsDPLoadSync(), // 0x00000B00
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000B08
	gsDPPipeSync(), // 0x00000B10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 1, 4, 0), // 0x00000B18
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00000B20
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000B28
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000B30
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000B38
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000B40
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000B48
	gsSPVertex(_spot02_room_0_vertices_000009D0, 6, 0), // 0x00000B50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000B58
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00000B60
	gsSPEndDisplayList(), // 0x00000B68
};

Vtx_t _spot02_room_0_vertices_00000B70[6] = 
{
	 { 1336, 455, 20, 0, 0, -1266, 58, 54, 43, 255 }, // 0x00000B70
	 { 1576, 335, 20, 0, 0, -121, 25, 25, 25, 255 }, // 0x00000B80
	 { 1576, 360, 80, 0, 512, -170, 25, 25, 25, 255 }, // 0x00000B90
	 { 1336, 480, 80, 0, 512, -1315, 58, 54, 43, 255 }, // 0x00000BA0
	 { 1816, 215, 20, 0, 0, 1024, 29, 27, 21, 255 }, // 0x00000BB0
	 { 1816, 240, 80, 0, 512, 975, 29, 27, 21, 255 }, // 0x00000BC0
};

Vtx_t _spot02_room_0_vertices_00000BD0[12] = 
{
	 { 1336, 340, 20, 0, -2909, 2048, 87, 82, 65, 255 }, // 0x00000BD0
	 { 1576, 220, 20, 0, 2494, 2048, 25, 25, 25, 255 }, // 0x00000BE0
	 { 1576, 335, 20, 0, 2398, 0, 25, 25, 25, 255 }, // 0x00000BF0
	 { 1336, 455, 20, 0, -3004, 0, 58, 54, 43, 255 }, // 0x00000C00
	 { 1816, 100, 20, 0, 7896, 2048, 58, 54, 43, 255 }, // 0x00000C10
	 { 1816, 215, 20, 0, 7801, 0, 29, 27, 21, 255 }, // 0x00000C20
	 { 1336, 455, 140, 0, -3004, 0, 58, 54, 43, 255 }, // 0x00000C30
	 { 1576, 335, 140, 0, 2398, 0, 25, 25, 25, 255 }, // 0x00000C40
	 { 1576, 220, 140, 0, 2494, 2048, 25, 25, 25, 255 }, // 0x00000C50
	 { 1336, 340, 140, 0, -2909, 2048, 87, 82, 65, 255 }, // 0x00000C60
	 { 1816, 215, 140, 0, 7801, 0, 29, 27, 21, 255 }, // 0x00000C70
	 { 1816, 100, 140, 0, 7896, 2048, 58, 54, 43, 255 }, // 0x00000C80
};

Vtx_t _spot02_room_0_vertices_00000C90[6] = 
{
	 { 1336, 480, 80, 0, 512, -1315, 58, 54, 43, 255 }, // 0x00000C90
	 { 1576, 360, 80, 0, 512, -170, 25, 25, 25, 255 }, // 0x00000CA0
	 { 1576, 335, 140, 0, 1024, -121, 25, 25, 25, 255 }, // 0x00000CB0
	 { 1336, 455, 140, 0, 1024, -1266, 58, 54, 43, 255 }, // 0x00000CC0
	 { 1816, 240, 80, 0, 512, 975, 29, 27, 21, 255 }, // 0x00000CD0
	 { 1816, 215, 140, 0, 1024, 1024, 29, 27, 21, 255 }, // 0x00000CE0
};

Vtx_t _spot02_room_0_vertices_00000CF0[8] = 
{
	 { 1783, 66, -59, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000CF0
	 { 1818, 66, 140, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D00
	 { 1859, 200, -72, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D10
	 { 1894, 200, 126, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D20
	 { 1264, 370, 33, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D30
	 { 1299, 370, 231, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D40
	 { 1340, 505, 19, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D50
	 { 1375, 505, 218, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D60
};

Gfx _spot02_room_0_dlist_00000D70[] =
{
	gsDPPipeSync(), // 0x00000D70
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000D78
	gsSPVertex(_spot02_room_0_vertices_00000CF0, 8, 0), // 0x00000D80
	gsSPCullDisplayList(0, 7), // 0x00000D88
	gsDPPipeSync(), // 0x00000D90
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000D98
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000DA0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000DA8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot02_scene_tex_0000AE80), // 0x00000DB0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000DB8
	gsDPLoadSync(), // 0x00000DC0
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00000DC8
	gsDPPipeSync(), // 0x00000DD0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000DD8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000DE0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000DE8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00000DF0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000DF8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000E00
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000E08
	gsSPVertex(_spot02_room_0_vertices_00000B70, 6, 0), // 0x00000E10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000E18
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00000E20
	gsDPPipeSync(), // 0x00000E28
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot02_scene_tex_00008E80), // 0x00000E30
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000E38
	gsDPLoadSync(), // 0x00000E40
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00000E48
	gsDPPipeSync(), // 0x00000E50
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000E58
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000E60
	gsSPVertex(_spot02_room_0_vertices_00000BD0, 12, 0), // 0x00000E68
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000E70
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00000E78
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00000E80
	gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0), // 0x00000E88
	gsDPPipeSync(), // 0x00000E90
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot02_scene_tex_0000AE80), // 0x00000E98
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000EA0
	gsDPLoadSync(), // 0x00000EA8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00000EB0
	gsDPPipeSync(), // 0x00000EB8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000EC0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000EC8
	gsSPVertex(_spot02_room_0_vertices_00000C90, 6, 0), // 0x00000ED0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000ED8
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00000EE0
	gsSPEndDisplayList(), // 0x00000EE8
};

Vtx_t _spot02_room_0_vertices_00000EF0[25] = 
{
	 { 1816, 215, 20, 0, 2048, 1396, 29, 27, 21, 255 }, // 0x00000EF0
	 { 1816, 100, 20, 0, 2048, 2048, 58, 54, 43, 255 }, // 0x00000F00
	 { 1816, 100, -220, 0, 3413, 2048, 43, 41, 32, 255 }, // 0x00000F10
	 { 1816, 100, 380, 0, 0, 2048, 43, 41, 32, 255 }, // 0x00000F20
	 { 1816, 100, 140, 0, 1365, 2048, 58, 54, 43, 255 }, // 0x00000F30
	 { 1816, 215, 140, 0, 1365, 1396, 29, 27, 21, 255 }, // 0x00000F40
	 { 1816, 100, 380, 0, 2048, 2048, 43, 41, 32, 255 }, // 0x00000F50
	 { 1816, 470, 380, 0, 2048, 0, 43, 41, 32, 255 }, // 0x00000F60
	 { 2216, 470, 540, 0, 0, 0, 43, 41, 32, 255 }, // 0x00000F70
	 { 2216, 100, 540, 0, 0, 2048, 43, 41, 32, 255 }, // 0x00000F80
	 { 2216, 470, 540, 0, 2048, 0, 43, 41, 32, 255 }, // 0x00000F90
	 { 2616, 470, 380, 0, 0, 0, 43, 41, 32, 255 }, // 0x00000FA0
	 { 2616, 100, 380, 0, 0, 2048, 43, 41, 32, 255 }, // 0x00000FB0
	 { 2216, 100, 540, 0, 2048, 2048, 43, 41, 32, 255 }, // 0x00000FC0
	 { 2616, 100, -220, 0, 2048, 2048, 43, 41, 32, 255 }, // 0x00000FD0
	 { 2616, 470, -220, 0, 2048, 0, 43, 41, 32, 255 }, // 0x00000FE0
	 { 2216, 470, -380, 0, 0, 0, 43, 41, 32, 255 }, // 0x00000FF0
	 { 2216, 100, -380, 0, 0, 2048, 43, 41, 32, 255 }, // 0x00001000
	 { 2216, 470, -380, 0, 2048, 0, 43, 41, 32, 255 }, // 0x00001010
	 { 1816, 470, -220, 0, 0, 0, 43, 41, 32, 255 }, // 0x00001020
	 { 1816, 100, -220, 0, 0, 2048, 43, 41, 32, 255 }, // 0x00001030
	 { 2216, 100, -380, 0, 2048, 2048, 43, 41, 32, 255 }, // 0x00001040
	 { 1816, 470, -220, 0, 3413, -56, 43, 41, 32, 255 }, // 0x00001050
	 { 1816, 240, 80, 0, 1707, 1252, 29, 27, 21, 255 }, // 0x00001060
	 { 1816, 470, 380, 0, 0, -56, 43, 41, 32, 255 }, // 0x00001070
};

Vtx_t _spot02_room_0_vertices_00001080[7] = 
{
	 { 2616, 470, -220, 0, -1536, 0, 43, 41, 32, 255 }, // 0x00001080
	 { 2616, 470, 380, 0, 1536, 0, 43, 41, 32, 255 }, // 0x00001090
	 { 2216, 552, 80, 0, 0, 1024, 14, 13, 10, 255 }, // 0x000010A0
	 { 2216, 470, 540, 0, 2355, 1024, 43, 41, 32, 255 }, // 0x000010B0
	 { 1816, 470, 380, 0, 1536, 2048, 43, 41, 32, 255 }, // 0x000010C0
	 { 1816, 470, -220, 0, -1536, 2048, 43, 41, 32, 255 }, // 0x000010D0
	 { 2216, 470, -380, 0, -2355, 1024, 43, 41, 32, 255 }, // 0x000010E0
};

Vtx_t _spot02_room_0_vertices_000010F0[8] = 
{
	 { 1816, 100, -380, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010F0
	 { 2616, 100, -380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001100
	 { 1816, 552, -380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001110
	 { 2616, 552, -380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001120
	 { 1816, 100, 540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001130
	 { 2616, 100, 540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001140
	 { 1816, 552, 540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001150
	 { 2616, 552, 540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001160
};

Gfx _spot02_room_0_dlist_00001170[] =
{
	gsDPPipeSync(), // 0x00001170
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001178
	gsSPVertex(_spot02_room_0_vertices_000010F0, 8, 0), // 0x00001180
	gsSPCullDisplayList(0, 7), // 0x00001188
	gsDPPipeSync(), // 0x00001190
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001198
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000011A0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000011A8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot02_scene_tex_00008E80), // 0x000011B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000011B8
	gsDPLoadSync(), // 0x000011C0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000011C8
	gsDPPipeSync(), // 0x000011D0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000011D8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000011E0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000011E8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000011F0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000011F8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001200
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001208
	gsSPVertex(_spot02_room_0_vertices_00000EF0, 25, 0), // 0x00001210
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00001218
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00001220
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00001228
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x00001230
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x00001238
	gsSP2Triangles(0, 22, 23, 0, 23, 24, 5, 0), // 0x00001240
	gsSP2Triangles(24, 3, 5, 0, 0, 2, 22, 0), // 0x00001248
	gsSP1Triangle(23, 22, 24, 0), // 0x00001250
	gsDPPipeSync(), // 0x00001258
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot02_scene_tex_0000AE80), // 0x00001260
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001268
	gsDPLoadSync(), // 0x00001270
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00001278
	gsDPPipeSync(), // 0x00001280
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001288
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001290
	gsSPVertex(_spot02_room_0_vertices_00001080, 7, 0), // 0x00001298
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000012A0
	gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0), // 0x000012A8
	gsSP2Triangles(5, 6, 2, 0, 6, 0, 2, 0), // 0x000012B0
	gsSPEndDisplayList(), // 0x000012B8
};

Vtx_t _spot02_room_0_vertices_000012C0[20] = 
{
	 { 1816, 100, 380, 0, -2253, 3482, 38, 38, 38, 255 }, // 0x000012C0
	 { 2216, 100, 540, 0, 1229, 3686, 38, 38, 38, 255 }, // 0x000012D0
	 { 2136, 100, 80, 0, 51, 154, 127, 127, 127, 255 }, // 0x000012E0
	 { 2456, 100, 320, 0, 2509, 1382, 38, 38, 38, 255 }, // 0x000012F0
	 { 2216, 100, 540, 0, 1229, 3686, 43, 41, 32, 255 }, // 0x00001300
	 { 2616, 100, 380, 0, 3891, 1434, 38, 38, 38, 255 }, // 0x00001310
	 { 2216, 100, -380, 0, -1126, -3379, 38, 38, 38, 255 }, // 0x00001320
	 { 2456, 100, -160, 0, 1280, -2304, 38, 38, 38, 255 }, // 0x00001330
	 { 1816, 100, -220, 0, -3789, -1126, 38, 38, 38, 255 }, // 0x00001340
	 { 1816, 100, 20, 0, -3174, 717, 102, 102, 102, 255 }, // 0x00001350
	 { 1816, 100, 140, 0, -2867, 1638, 102, 102, 102, 255 }, // 0x00001360
	 { 2456, 100, -40, 0, 1587, -1382, 51, 51, 51, 255 }, // 0x00001370
	 { 2456, 100, -160, 0, 1280, -2304, 38, 38, 38, 255 }, // 0x00001380
	 { 2456, 100, 320, 0, 2509, 1382, 38, 38, 38, 255 }, // 0x00001390
	 { 2456, 100, 200, 0, 2202, 461, 51, 51, 51, 255 }, // 0x000013A0
	 { 2656, 100, -40, 0, 3123, -1894, 102, 102, 102, 255 }, // 0x000013B0
	 { 2656, 100, 200, 0, 3738, -51, 102, 102, 102, 255 }, // 0x000013C0
	 { 2616, 100, -160, 0, 2509, -2714, 12, 12, 12, 255 }, // 0x000013D0
	 { 2616, 100, -220, 0, 2355, -3174, 38, 38, 38, 255 }, // 0x000013E0
	 { 2616, 100, 320, 0, 3738, 973, 12, 12, 12, 255 }, // 0x000013F0
};

Vtx_t _spot02_room_0_vertices_00001400[8] = 
{
	 { 1816, 100, -380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001400
	 { 2656, 100, -380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001410
	 { 1816, 100, -380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001420
	 { 2656, 100, -380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001430
	 { 1816, 100, 540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001440
	 { 2656, 100, 540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001450
	 { 1816, 100, 540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001460
	 { 2656, 100, 540, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001470
};

Gfx _spot02_room_0_dlist_00001480[] =
{
	gsDPPipeSync(), // 0x00001480
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001488
	gsSPVertex(_spot02_room_0_vertices_00001400, 8, 0), // 0x00001490
	gsSPCullDisplayList(0, 7), // 0x00001498
	gsDPPipeSync(), // 0x000014A0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000014A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000014B0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000014B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot02_scene_tex_0000B080), // 0x000014C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000014C8
	gsDPLoadSync(), // 0x000014D0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000014D8
	gsDPPipeSync(), // 0x000014E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000014E8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000014F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000014F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001500
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001508
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001510
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001518
	gsSPVertex(_spot02_room_0_vertices_000012C0, 20, 0), // 0x00001520
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001528
	gsSP2Triangles(4, 5, 3, 0, 6, 2, 7, 0), // 0x00001530
	gsSP2Triangles(6, 8, 2, 0, 9, 2, 8, 0), // 0x00001538
	gsSP2Triangles(10, 2, 9, 0, 10, 0, 2, 0), // 0x00001540
	gsSP2Triangles(2, 11, 12, 0, 2, 13, 14, 0), // 0x00001548
	gsSP2Triangles(14, 11, 2, 0, 15, 11, 14, 0), // 0x00001550
	gsSP2Triangles(15, 14, 16, 0, 12, 17, 18, 0), // 0x00001558
	gsSP2Triangles(18, 6, 7, 0, 13, 5, 19, 0), // 0x00001560
	gsSPEndDisplayList(), // 0x00001568
};

Vtx_t _spot02_room_0_vertices_00001570[32] = 
{
	 { 3784, 281, 164, 0, 0, 1024, 25, 25, 25, 255 }, // 0x00001570
	 { 3784, 281, -4, 0, 1441, 1024, 25, 25, 25, 255 }, // 0x00001580
	 { 3784, 99, -4, 0, 1441, -538, 25, 25, 25, 255 }, // 0x00001590
	 { 3784, 99, 164, 0, 0, -538, 25, 25, 25, 255 }, // 0x000015A0
	 { 3784, 99, -4, 0, 10257, 1030, 25, 25, 25, 255 }, // 0x000015B0
	 { 3784, 281, -4, 0, 10257, -1115, 25, 25, 25, 255 }, // 0x000015C0
	 { 3191, 323, -23, 0, 5126, -1628, 65, 77, 54, 255 }, // 0x000015D0
	 { 3191, 100, -23, 0, 5126, 1030, 65, 77, 54, 255 }, // 0x000015E0
	 { 3191, 323, -23, 0, 185, 5399, 65, 77, 54, 255 }, // 0x000015F0
	 { 3784, 281, -4, 0, 349, 10557, 25, 25, 25, 255 }, // 0x00001600
	 { 3784, 281, 164, 0, 2499, 10535, 25, 25, 25, 255 }, // 0x00001610
	 { 3191, 323, 183, 0, 2819, 5372, 65, 77, 54, 255 }, // 0x00001620
	 { 2656, 360, -40, 0, 498, -2090, 255, 255, 255, 255 }, // 0x00001630
	 { 2656, 100, -40, 0, 498, 1030, 255, 255, 255, 255 }, // 0x00001640
	 { 3191, 323, 183, 0, 5126, -1721, 65, 77, 54, 255 }, // 0x00001650
	 { 3784, 281, 164, 0, 10257, -1190, 25, 25, 25, 255 }, // 0x00001660
	 { 3784, 99, 164, 0, 10257, 1032, 25, 25, 25, 255 }, // 0x00001670
	 { 3191, 100, 183, 0, 5126, 1032, 65, 77, 54, 255 }, // 0x00001680
	 { 2656, 360, 200, 0, 498, -2200, 255, 255, 255, 255 }, // 0x00001690
	 { 2656, 100, 200, 0, 498, 1032, 255, 255, 255, 255 }, // 0x000016A0
	 { 2693, 357, -39, 0, 47, 1063, 255, 255, 255, 255 }, // 0x000016B0
	 { 2693, 357, 199, 0, 3089, 1032, 255, 255, 255, 255 }, // 0x000016C0
	 { 3191, 100, 183, 0, 1849, -3574, 65, 77, 54, 255 }, // 0x000016D0
	 { 3784, 99, 164, 0, 1692, -8671, 25, 25, 25, 255 }, // 0x000016E0
	 { 3784, 99, -4, 0, 299, -8671, 25, 25, 25, 255 }, // 0x000016F0
	 { 3191, 100, -23, 0, 142, -3574, 65, 77, 54, 255 }, // 0x00001700
	 { 2656, 100, 200, 0, 1991, 1024, 255, 255, 255, 255 }, // 0x00001710
	 { 2656, 100, -40, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00001720
	 { 2616, 360, -40, 0, -1791, -428, 216, 216, 216, 255 }, // 0x00001730
	 { 2656, 360, -40, 0, -1791, 15, 255, 255, 255, 255 }, // 0x00001740
	 { 2656, 360, 200, 0, 1281, 15, 255, 255, 255, 255 }, // 0x00001750
	 { 2616, 360, 200, 0, 1281, -428, 216, 216, 216, 255 }, // 0x00001760
};

Vtx_t _spot02_room_0_vertices_00001770[32] = 
{
	 { 2616, 470, 380, 0, 4608, -1522, 76, 76, 76, 255 }, // 0x00001770
	 { 2616, 470, -220, 0, -3072, -1522, 76, 76, 76, 255 }, // 0x00001780
	 { 2616, 360, -40, 0, -768, -115, 76, 76, 76, 255 }, // 0x00001790
	 { 2616, 360, 200, 0, 2304, -115, 76, 76, 76, 255 }, // 0x000017A0
	 { 2616, 360, -120, 0, -1792, -115, 76, 76, 76, 255 }, // 0x000017B0
	 { 2616, 360, 200, 0, 2048, 0, 51, 51, 51, 255 }, // 0x000017C0
	 { 2536, 360, 200, 0, 2048, 1024, 51, 51, 51, 255 }, // 0x000017D0
	 { 2536, 360, 280, 0, 3072, 1024, 51, 51, 51, 255 }, // 0x000017E0
	 { 2616, 360, 280, 0, 3072, 0, 51, 51, 51, 255 }, // 0x000017F0
	 { 2616, 360, -120, 0, -2048, 0, 51, 51, 51, 255 }, // 0x00001800
	 { 2536, 360, -120, 0, -2048, 1024, 51, 51, 51, 255 }, // 0x00001810
	 { 2536, 360, -40, 0, -1024, 1024, 51, 51, 51, 255 }, // 0x00001820
	 { 2616, 360, -40, 0, -1024, 0, 51, 51, 51, 255 }, // 0x00001830
	 { 2616, 360, 280, 0, 3328, -115, 51, 51, 51, 255 }, // 0x00001840
	 { 2616, 100, 380, 0, 4608, 3121, 76, 76, 76, 255 }, // 0x00001850
	 { 2616, 100, 320, 0, 3826, 3121, 51, 51, 51, 255 }, // 0x00001860
	 { 2616, 360, 280, 0, 1024, -2171, 51, 51, 51, 255 }, // 0x00001870
	 { 2536, 360, 280, 0, 0, -2171, 51, 51, 51, 255 }, // 0x00001880
	 { 2456, 100, 320, 0, -996, 1048, 89, 89, 89, 255 }, // 0x00001890
	 { 2616, 100, 320, 0, 1024, 1048, 51, 51, 51, 255 }, // 0x000018A0
	 { 2536, 360, 280, 0, 3584, -1160, 51, 51, 51, 255 }, // 0x000018B0
	 { 2536, 360, 200, 0, 2560, -1160, 76, 76, 76, 255 }, // 0x000018C0
	 { 2456, 100, 200, 0, 2560, 2093, 153, 153, 153, 255 }, // 0x000018D0
	 { 2456, 100, 320, 0, 4082, 2093, 140, 140, 140, 255 }, // 0x000018E0
	 { 2536, 360, -40, 0, -513, -1086, 76, 76, 76, 255 }, // 0x000018F0
	 { 2536, 360, -120, 0, -1536, -1092, 51, 51, 51, 255 }, // 0x00001900
	 { 2456, 100, -160, 0, -2012, 2073, 140, 140, 140, 255 }, // 0x00001910
	 { 2456, 100, -40, 0, -492, 2082, 153, 153, 153, 255 }, // 0x00001920
	 { 2456, 100, -160, 0, -996, 36, 89, 89, 89, 255 }, // 0x00001930
	 { 2536, 360, -120, 0, 0, -3158, 51, 51, 51, 255 }, // 0x00001940
	 { 2616, 360, -120, 0, 1024, -3158, 51, 51, 51, 255 }, // 0x00001950
	 { 2616, 100, -160, 0, 1024, 36, 51, 51, 51, 255 }, // 0x00001960
};

Vtx_t _spot02_room_0_vertices_00001970[12] = 
{
	 { 2616, 360, -120, 0, -1792, -115, 51, 51, 51, 255 }, // 0x00001970
	 { 2616, 470, -220, 0, -3072, -1522, 76, 76, 76, 255 }, // 0x00001980
	 { 2616, 100, -220, 0, -3072, 3121, 76, 76, 76, 255 }, // 0x00001990
	 { 2616, 100, -160, 0, -2290, 3121, 51, 51, 51, 255 }, // 0x000019A0
	 { 2536, 360, -40, 0, 498, -3134, 191, 191, 191, 255 }, // 0x000019B0
	 { 2456, 100, -40, 0, -175, 32, 191, 191, 191, 255 }, // 0x000019C0
	 { 2656, 100, -40, 0, 1536, 32, 255, 255, 255, 255 }, // 0x000019D0
	 { 2656, 360, -40, 0, 1536, -3134, 255, 255, 255, 255 }, // 0x000019E0
	 { 2656, 360, 200, 0, 1536, -2175, 255, 255, 255, 255 }, // 0x000019F0
	 { 2656, 100, 200, 0, 1536, 1063, 255, 255, 255, 255 }, // 0x00001A00
	 { 2456, 100, 200, 0, -175, 1063, 191, 191, 191, 255 }, // 0x00001A10
	 { 2536, 360, 200, 0, 498, -2175, 191, 191, 191, 255 }, // 0x00001A20
};

Vtx_t _spot02_room_0_vertices_00001A30[8] = 
{
	 { 2456, 99, -220, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A30
	 { 3784, 99, -220, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A40
	 { 2456, 470, -220, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A50
	 { 3784, 470, -220, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A60
	 { 2456, 99, 380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A70
	 { 3784, 99, 380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A80
	 { 2456, 470, 380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A90
	 { 3784, 470, 380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AA0
};

Gfx _spot02_room_0_dlist_00001AB0[] =
{
	gsDPPipeSync(), // 0x00001AB0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001AB8
	gsSPVertex(_spot02_room_0_vertices_00001A30, 8, 0), // 0x00001AC0
	gsSPCullDisplayList(0, 7), // 0x00001AC8
	gsDPPipeSync(), // 0x00001AD0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001AD8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001AE0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001AE8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot02_scene_tex_00007E80), // 0x00001AF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001AF8
	gsDPLoadSync(), // 0x00001B00
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001B08
	gsDPPipeSync(), // 0x00001B10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001B18
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001B20
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot02_scene_tex_00007280), // 0x00001B28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 3, 0, 5, 3), // 0x00001B30
	gsDPLoadSync(), // 0x00001B38
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001B40
	gsDPPipeSync(), // 0x00001B48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 3, 0, 5, 3), // 0x00001B50
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00001B58
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001B60
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001B68
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001B70
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001B78
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001B80
	gsSPVertex(_spot02_room_0_vertices_00001570, 32, 0), // 0x00001B88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B90
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001B98
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001BA0
	gsSP2Triangles(6, 12, 13, 0, 6, 13, 7, 0), // 0x00001BA8
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x00001BB0
	gsSP2Triangles(18, 14, 17, 0, 18, 17, 19, 0), // 0x00001BB8
	gsSP2Triangles(20, 8, 11, 0, 20, 11, 21, 0), // 0x00001BC0
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x00001BC8
	gsSP2Triangles(26, 22, 25, 0, 26, 25, 27, 0), // 0x00001BD0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00001BD8
	gsSPVertex(_spot02_room_0_vertices_00001770, 32, 0), // 0x00001BE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001BE8
	gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0), // 0x00001BF0
	gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0), // 0x00001BF8
	gsSP2Triangles(9, 11, 12, 0, 0, 3, 13, 0), // 0x00001C00
	gsSP2Triangles(14, 0, 13, 0, 14, 13, 15, 0), // 0x00001C08
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00001C10
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00001C18
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00001C20
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00001C28
	gsSPVertex(_spot02_room_0_vertices_00001970, 12, 0), // 0x00001C30
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001C38
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001C40
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001C48
	gsSPEndDisplayList(), // 0x00001C50
};

Vtx_t _spot02_room_0_vertices_00001C58[4] = 
{
	 { 2597, 100, -40, 0, -20, 512, 255, 255, 255, 255 }, // 0x00001C58
	 { 2597, 100, 200, 0, 1990, 512, 255, 255, 255, 255 }, // 0x00001C68
	 { 2656, 100, 200, 0, 1990, -6, 255, 255, 255, 255 }, // 0x00001C78
	 { 2656, 100, -40, 0, -20, -6, 255, 255, 255, 255 }, // 0x00001C88
};

Vtx_t _spot02_room_0_vertices_00001C98[8] = 
{
	 { 2597, 100, -40, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001C98
	 { 2656, 100, -40, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CA8
	 { 2597, 100, -40, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CB8
	 { 2656, 100, -40, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CC8
	 { 2597, 100, 200, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CD8
	 { 2656, 100, 200, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CE8
	 { 2597, 100, 200, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001CF8
	 { 2656, 100, 200, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D08
};

Gfx _spot02_room_0_dlist_00001D18[] =
{
	gsDPPipeSync(), // 0x00001D18
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001D20
	gsSPVertex(_spot02_room_0_vertices_00001C98, 8, 0), // 0x00001D28
	gsSPCullDisplayList(0, 7), // 0x00001D30
	gsDPPipeSync(), // 0x00001D38
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001D40
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001D48
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001D50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot02_scene_tex_00007A80), // 0x00001D58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 5, 0), // 0x00001D60
	gsDPLoadSync(), // 0x00001D68
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00001D70
	gsDPPipeSync(), // 0x00001D78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 0, 5, 0), // 0x00001D80
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00001D88
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001D90
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104F50), // 0x00001D98
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001DA0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001DA8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001DB0
	gsSPVertex(_spot02_room_0_vertices_00001C58, 4, 0), // 0x00001DB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001DC0
	gsSPEndDisplayList(), // 0x00001DC8
};

Vtx_t _spot02_room_0_vertices_00001DD0[6] = 
{
	 { 2178, 124, 104, 0, 823, -51, 127, 127, 127, 255 }, // 0x00001DD0
	 { 2095, 124, 104, 0, 823, 1057, 127, 127, 127, 255 }, // 0x00001DE0
	 { 2136, 124, 128, 0, 1143, 503, 127, 127, 127, 255 }, // 0x00001DF0
	 { 2178, 124, 56, 0, 183, -51, 127, 127, 127, 255 }, // 0x00001E00
	 { 2095, 124, 56, 0, 183, 1057, 127, 127, 127, 255 }, // 0x00001E10
	 { 2136, 124, 32, 0, -137, 503, 127, 127, 127, 255 }, // 0x00001E20
};

Vtx_t _spot02_room_0_vertices_00001E30[24] = 
{
	 { 2136, 124, 128, 0, 1029, 241, 76, 76, 76, 255 }, // 0x00001E30
	 { 2136, 100, 128, 0, 1029, -50, 178, 178, 178, 255 }, // 0x00001E40
	 { 2178, 100, 104, 0, 178, -50, 178, 178, 178, 255 }, // 0x00001E50
	 { 2178, 124, 104, 0, 178, 241, 76, 76, 76, 255 }, // 0x00001E60
	 { 2178, 124, 104, 0, 566, 241, 76, 76, 76, 255 }, // 0x00001E70
	 { 2178, 100, 104, 0, 566, -50, 178, 178, 178, 255 }, // 0x00001E80
	 { 2178, 100, 56, 0, -81, -50, 178, 178, 178, 255 }, // 0x00001E90
	 { 2178, 124, 56, 0, -81, 241, 76, 76, 76, 255 }, // 0x00001EA0
	 { 2178, 124, 56, 0, 1066, 241, 76, 76, 76, 255 }, // 0x00001EB0
	 { 2178, 100, 56, 0, 1066, -50, 178, 178, 178, 255 }, // 0x00001EC0
	 { 2136, 100, 32, 0, 172, -50, 178, 178, 178, 255 }, // 0x00001ED0
	 { 2136, 124, 32, 0, 172, 241, 76, 76, 76, 255 }, // 0x00001EE0
	 { 2136, 124, 32, 0, 1750, 241, 76, 76, 76, 255 }, // 0x00001EF0
	 { 2136, 100, 32, 0, 1750, -50, 178, 178, 178, 255 }, // 0x00001F00
	 { 2095, 100, 56, 0, 921, -50, 178, 178, 178, 255 }, // 0x00001F10
	 { 2095, 124, 56, 0, 921, 241, 76, 76, 76, 255 }, // 0x00001F20
	 { 2095, 124, 56, 0, 829, 241, 76, 76, 76, 255 }, // 0x00001F30
	 { 2095, 100, 56, 0, 829, -50, 178, 178, 178, 255 }, // 0x00001F40
	 { 2095, 100, 104, 0, 146, -50, 178, 178, 178, 255 }, // 0x00001F50
	 { 2095, 124, 104, 0, 146, 241, 76, 76, 76, 255 }, // 0x00001F60
	 { 2095, 124, 104, 0, 1402, 241, 76, 76, 76, 255 }, // 0x00001F70
	 { 2095, 100, 104, 0, 1402, -50, 178, 178, 178, 255 }, // 0x00001F80
	 { 2136, 100, 128, 0, 489, -50, 178, 178, 178, 255 }, // 0x00001F90
	 { 2136, 124, 128, 0, 489, 241, 76, 76, 76, 255 }, // 0x00001FA0
};

Vtx_t _spot02_room_0_vertices_00001FB0[8] = 
{
	 { 2095, 100, 32, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001FB0
	 { 2178, 100, 32, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001FC0
	 { 2095, 124, 32, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001FD0
	 { 2178, 124, 32, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001FE0
	 { 2095, 100, 128, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001FF0
	 { 2178, 100, 128, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002000
	 { 2095, 124, 128, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002010
	 { 2178, 124, 128, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002020
};

Gfx _spot02_room_0_dlist_00002030[] =
{
	gsDPPipeSync(), // 0x00002030
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002038
	gsSPVertex(_spot02_room_0_vertices_00001FB0, 8, 0), // 0x00002040
	gsSPCullDisplayList(0, 7), // 0x00002048
	gsDPPipeSync(), // 0x00002050
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002058
	gsDPPipeSync(), // 0x00002060
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002068
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002070
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot02_scene_tex_0000A280), // 0x00002078
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00002080
	gsDPLoadSync(), // 0x00002088
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002090
	gsDPPipeSync(), // 0x00002098
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x000020A0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000020A8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000020B0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000020B8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000020C0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000020C8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000020D0
	gsSPVertex(_spot02_room_0_vertices_00001DD0, 6, 0), // 0x000020D8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000020E0
	gsSP2Triangles(3, 4, 1, 0, 3, 5, 4, 0), // 0x000020E8
	gsDPPipeSync(), // 0x000020F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot02_scene_tex_0000AA80), // 0x000020F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 5, 0), // 0x00002100
	gsDPLoadSync(), // 0x00002108
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00002110
	gsDPPipeSync(), // 0x00002118
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 4, 0, 0, 5, 0), // 0x00002120
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00002128
	gsSPVertex(_spot02_room_0_vertices_00001E30, 24, 0), // 0x00002130
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002138
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002140
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002148
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002150
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002158
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002160
	gsSPEndDisplayList(), // 0x00002168
};

Vtx_t _spot02_room_0_vertices_00002170[4] = 
{
	 { 950, 406, -120, 0, 0, 715, 149, 53, 0, 255 }, // 0x00002170
	 { 950, 340, -120, 0, 0, 2048, 136, 0, 0, 255 }, // 0x00002180
	 { 950, 340, 280, 0, 6189, 2048, 136, 0, 0, 255 }, // 0x00002190
	 { 950, 406, 280, 0, 6189, 715, 149, 53, 0, 255 }, // 0x000021A0
};

Vtx_t _spot02_room_0_vertices_000021B0[8] = 
{
	 { 950, 340, -120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021B0
	 { 950, 340, -120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021C0
	 { 950, 406, -120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021D0
	 { 950, 406, -120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021E0
	 { 950, 340, 280, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021F0
	 { 950, 340, 280, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002200
	 { 950, 406, 280, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002210
	 { 950, 406, 280, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002220
};

Gfx _spot02_room_0_dlist_00002230[] =
{
	gsDPPipeSync(), // 0x00002230
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002238
	gsSPVertex(_spot02_room_0_vertices_000021B0, 8, 0), // 0x00002240
	gsSPCullDisplayList(0, 7), // 0x00002248
	gsDPPipeSync(), // 0x00002250
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002258
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002260
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002268
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot02_scene_tex_00008680), // 0x00002270
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 4, 0), // 0x00002278
	gsDPLoadSync(), // 0x00002280
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002288
	gsDPPipeSync(), // 0x00002290
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 6, 0, 0, 4, 0), // 0x00002298
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x000022A0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000022A8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000022B0
	gsSPGeometryMode(0xFF0C0400, 0x00000000), // 0x000022B8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000022C0
	gsDPSetPrimColor(0, 0, 252, 235, 235, 255), // 0x000022C8
	gsSPVertex(_spot02_room_0_vertices_00002170, 4, 0), // 0x000022D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000022D8
	gsSPEndDisplayList(), // 0x000022E0
};

static u8 unaccounted22E8[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0xB0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0x70, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x11, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0x80, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0xB0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0x18, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x20, 0x30, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x22, 0x30, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx_t _spot02_room_0_vertices_00002330[32] = 
{
	 { 2355, 100, 80, 0, 0, 0, 75, 63, 52, 255 }, // 0x00002330
	 { 2136, 100, 80, 0, 512, 2048, 205, 255, 205, 255 }, // 0x00002340
	 { 2325, 100, 189, 0, 1025, 0, 75, 63, 52, 255 }, // 0x00002350
	 { 2355, 100, 80, 0, 1024, 0, 75, 63, 52, 255 }, // 0x00002360
	 { 2325, 100, -29, 0, -1, 0, 75, 63, 52, 255 }, // 0x00002370
	 { 2136, 100, 80, 0, 512, 2048, 205, 255, 205, 255 }, // 0x00002380
	 { 2325, 100, -29, 0, 1025, 0, 75, 63, 52, 255 }, // 0x00002390
	 { 2245, 100, -109, 0, 0, 0, 75, 63, 52, 255 }, // 0x000023A0
	 { 2136, 100, 80, 0, 512, 2048, 205, 255, 205, 255 }, // 0x000023B0
	 { 2245, 100, -109, 0, 1025, 0, 75, 63, 52, 255 }, // 0x000023C0
	 { 2136, 100, -138, 0, 0, 0, 75, 63, 52, 255 }, // 0x000023D0
	 { 2136, 100, 80, 0, 512, 2048, 205, 255, 205, 255 }, // 0x000023E0
	 { 2136, 100, -138, 0, 1025, 0, 75, 63, 52, 255 }, // 0x000023F0
	 { 2027, 100, -109, 0, 0, 0, 75, 63, 52, 255 }, // 0x00002400
	 { 2136, 100, 80, 0, 512, 2048, 205, 255, 205, 255 }, // 0x00002410
	 { 2136, 100, 80, 0, 512, 2048, 205, 255, 205, 255 }, // 0x00002420
	 { 2245, 100, 269, 0, 1025, 0, 75, 63, 52, 255 }, // 0x00002430
	 { 2325, 100, 189, 0, 0, 0, 75, 63, 52, 255 }, // 0x00002440
	 { 2027, 100, -109, 0, 1025, 0, 75, 63, 52, 255 }, // 0x00002450
	 { 1947, 100, -29, 0, 0, 0, 75, 63, 52, 255 }, // 0x00002460
	 { 2136, 100, 80, 0, 512, 2048, 205, 255, 205, 255 }, // 0x00002470
	 { 1947, 100, -29, 0, 1025, 0, 75, 63, 52, 255 }, // 0x00002480
	 { 1918, 100, 80, 0, 0, 0, 75, 63, 52, 255 }, // 0x00002490
	 { 2136, 100, 80, 0, 512, 2048, 205, 255, 205, 255 }, // 0x000024A0
	 { 1918, 100, 80, 0, 1025, 0, 75, 63, 52, 255 }, // 0x000024B0
	 { 1947, 100, 189, 0, 0, 0, 75, 63, 52, 255 }, // 0x000024C0
	 { 2136, 100, 80, 0, 512, 2048, 205, 255, 205, 255 }, // 0x000024D0
	 { 1947, 100, 189, 0, 1025, 0, 75, 63, 52, 255 }, // 0x000024E0
	 { 2027, 100, 269, 0, 0, 0, 75, 63, 52, 255 }, // 0x000024F0
	 { 2136, 100, 80, 0, 512, 2048, 205, 255, 205, 255 }, // 0x00002500
	 { 2027, 100, 269, 0, 1025, 0, 75, 63, 52, 255 }, // 0x00002510
	 { 2136, 100, 298, 0, 0, 0, 75, 63, 52, 255 }, // 0x00002520
};

Vtx_t _spot02_room_0_vertices_00002530[3] = 
{
	 { 2136, 100, 298, 0, 1025, 0, 75, 63, 52, 255 }, // 0x00002530
	 { 2245, 100, 269, 0, 0, 0, 75, 63, 52, 255 }, // 0x00002540
	 { 2136, 100, 80, 0, 512, 2048, 205, 255, 205, 255 }, // 0x00002550
};

Vtx_t _spot02_room_0_vertices_00002560[8] = 
{
	 { 1962, 100, -169, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002560
	 { 2385, 100, -94, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002570
	 { 1962, 100, -169, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002580
	 { 2385, 100, -94, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002590
	 { 1887, 100, 254, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025A0
	 { 2311, 100, 329, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025B0
	 { 1887, 100, 254, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025C0
	 { 2311, 100, 329, 0, 0, 0, 0, 0, 0, 0 }, // 0x000025D0
};

Gfx _spot02_room_0_dlist_000025E0[] =
{
	gsDPPipeSync(), // 0x000025E0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000025E8
	gsSPVertex(_spot02_room_0_vertices_00002560, 8, 0), // 0x000025F0
	gsSPCullDisplayList(0, 7), // 0x000025F8
	gsDPPipeSync(), // 0x00002600
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002608
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002610
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002618
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot02_scene_tex_00009E80), // 0x00002620
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 5, 0), // 0x00002628
	gsDPLoadSync(), // 0x00002630
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x00002638
	gsDPPipeSync(), // 0x00002640
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 6, 0, 2, 5, 0), // 0x00002648
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002650
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002658
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104F50), // 0x00002660
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002668
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002670
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002678
	gsSPVertex(_spot02_room_0_vertices_00002330, 32, 0), // 0x00002680
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00002688
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00002690
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0), // 0x00002698
	gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0), // 0x000026A0
	gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0), // 0x000026A8
	gsSP1Triangle(30, 31, 11, 0), // 0x000026B0
	gsSPVertex(_spot02_room_0_vertices_00002530, 3, 0), // 0x000026B8
	gsSP1Triangle(0, 1, 2, 0), // 0x000026C0
	gsSPEndDisplayList(), // 0x000026C8
};

// This display list appears to be unused...
Gfx _spot02_room_0_dlist_000026D0[] =
{
	gsSPDisplayList(_spot02_room_0_dlist_000025E0), // 0x000026D0
	gsSPEndDisplayList(), // 0x000026D8
};


