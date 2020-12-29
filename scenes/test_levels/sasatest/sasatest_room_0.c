#include <ultra64.h>
#include <z64.h>
#include "sasatest_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "sasatest_scene.h"



SCmdAltHeaders _sasatest_room_0_set0000_cmd00 = { 0x18, 0, (u32)&_sasatest_room_0_alternateHeaders_00000050}; // 0x0000
SCmdEchoSettings _sasatest_room_0_set0000_cmd01 = { 0x16, 0, { 0 }, 0x00 }; // 0x0008
SCmdRoomBehavior _sasatest_room_0_set0000_cmd02 = { 0x08, 0x00, 0x00000000 }; // 0x0010
SCmdSkyboxDisables _sasatest_room_0_set0000_cmd03 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0018
SCmdTimeSettings _sasatest_room_0_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x1E, 0x01 }; // 0x0020
SCmdWindSettings _sasatest_room_0_set0000_cmd05 = { 0x05, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x50, 0x32}; // 0x0028
SCmdMesh _sasatest_room_0_set0000_cmd06 = { 0x0A, 0, (u32)&_sasatest_room_0_meshHeader_000001A0 }; // 0x0030
SCmdObjectList _sasatest_room_0_set0000_cmd07 = { 0x0B, 0x03, (u32)_sasatest_room_0_objectList_0000005C }; // 0x0038
SCmdActorList _sasatest_room_0_set0000_cmd08 = { 0x01, 0x13, (u32)_sasatest_room_0_actorList_00000064 }; // 0x0040
SCmdEndMarker _sasatest_room_0_set0000_cmd09 = { 0x14, 0x00, 0x00 }; // 0x0048
u32 _sasatest_room_0_alternateHeaders_00000050[] = 
{
	(u32)&_sasatest_room_0_set0310_cmd00,
	(u32)&_sasatest_room_0_set01C0_cmd00,
	(u32)&_sasatest_room_0_set0270_cmd00,
};

s16 _sasatest_room_0_objectList_0000005C[] = 
{
	OBJECT_KA,
	OBJECT_NIW,
	OBJECT_KIBAKO2,
};

ActorEntry _sasatest_room_0_actorList_00000064[19] = 
{
	{ ACTOR_EN_KAKASI3, 12, 0, -193, 0, 0, 0, 0xFFFF }, //0x00000064 
	{ ACTOR_EN_KAKASI2, 483, 95, 12, 0, -16384, 10, 0x053F }, //0x00000074 
	{ ACTOR_EN_WONDER_TALK2, -219, 90, 257, 0, 0, 5, 0x003F }, //0x00000084 
	{ ACTOR_EN_WONDER_TALK2, -139, 90, 257, 0, 0, 15, 0x003F }, //0x00000094 
	{ ACTOR_EN_WONDER_TALK2, -59, 90, 257, 0, 0, 25, 0x003F }, //0x000000A4 
	{ ACTOR_EN_WONDER_TALK2, 21, 90, 257, 0, 0, 35, 0x003F }, //0x000000B4 
	{ ACTOR_EN_WONDER_TALK2, 101, 90, 257, 0, 0, 45, 0x003F }, //0x000000C4 
	{ ACTOR_EN_WONDER_TALK2, 181, 90, 262, 0, 0, 55, 0x003F }, //0x000000D4 
	{ ACTOR_EN_WONDER_TALK2, 261, 90, 257, 0, 0, 65, 0x003F }, //0x000000E4 
	{ ACTOR_OBJ_KIBAKO2, 253, 0, 7, 0, 0, 0, 0x00FF }, //0x000000F4 
	{ ACTOR_EN_NIW, 250, 0, 5, 0, 0, 0, 0x0004 }, //0x00000104 
	{ ACTOR_EN_G_SWITCH, -440, 0, 350, 0, 0, 0, 0x0140 }, //0x00000114 
	{ ACTOR_EN_G_SWITCH, -440, 0, 250, 0, 0, 0, 0x1FFF }, //0x00000124 
	{ ACTOR_EN_G_SWITCH, -440, 0, 150, 0, 0, 0, 0x1FFF }, //0x00000134 
	{ ACTOR_EN_G_SWITCH, -440, 0, 50, 0, 0, 0, 0x1FFF }, //0x00000144 
	{ ACTOR_EN_G_SWITCH, -440, 0, -50, 0, 0, 0, 0x1FFF }, //0x00000154 
	{ ACTOR_EN_G_SWITCH, -440, 0, -150, 0, 0, 0, 0x1FFF }, //0x00000164 
	{ ACTOR_EN_WONDER_TALK2, -250, 0, -500, 0, 16384, 11, 0x469D }, //0x00000174 
	{ ACTOR_EN_WONDER_TALK2, 250, 0, -500, 0, -16384, 11, 0x46DD }, //0x00000184 
};

static u32 pad194 = 0;
static u32 pad198 = 0;
static u32 pad19C = 0;

MeshHeader0 _sasatest_room_0_meshHeader_000001A0 = { { 0 }, 0x01, (u32)&_sasatest_room_0_meshDListEntry_000001AC, (u32)&(_sasatest_room_0_meshDListEntry_000001AC) + sizeof(_sasatest_room_0_meshDListEntry_000001AC) };

MeshEntry0 _sasatest_room_0_meshDListEntry_000001AC[1] = 
{
	{ (u32)_sasatest_room_0_dlist_00001580, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.
static u32 pad1B8 = 0;
static u32 pad1BC = 0;

SCmdEchoSettings _sasatest_room_0_set01C0_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x01C0
SCmdRoomBehavior _sasatest_room_0_set01C0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x01C8
SCmdSkyboxDisables _sasatest_room_0_set01C0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x01D0
SCmdTimeSettings _sasatest_room_0_set01C0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x1E, 0x01 }; // 0x01D8
SCmdWindSettings _sasatest_room_0_set01C0_cmd04 = { 0x05, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x50, 0x32}; // 0x01E0
SCmdMesh _sasatest_room_0_set01C0_cmd05 = { 0x0A, 0, (u32)&_sasatest_room_0_meshHeader_000001A0 }; // 0x01E8
SCmdObjectList _sasatest_room_0_set01C0_cmd06 = { 0x0B, 0x02, (u32)_sasatest_room_0_objectList_00000208 }; // 0x01F0
SCmdActorList _sasatest_room_0_set01C0_cmd07 = { 0x01, 0x06, (u32)_sasatest_room_0_actorList_0000020C }; // 0x01F8
SCmdEndMarker _sasatest_room_0_set01C0_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0200
s16 _sasatest_room_0_objectList_00000208[] = 
{
	OBJECT_KA,
	OBJECT_TSUBO,
};

ActorEntry _sasatest_room_0_actorList_0000020C[6] = 
{
	{ ACTOR_EN_KAKASI2, 0, 0, -240, 0, 0, 3, 0x02BF }, //0x0000020C 
	{ ACTOR_EN_KAKASI3, 0, 0, 260, 0, -32768, 0, 0xFFFF }, //0x0000021C 
	{ ACTOR_EN_TUBO_TRAP, 306, 60, 15, 0, 0, 0, 0xFFFF }, //0x0000022C 
	{ ACTOR_EN_TUBO_TRAP, 252, 0, 261, 0, 0, 0, 0xFFFF }, //0x0000023C 
	{ ACTOR_EN_WONDER_ITEM, -250, 0, 256, 0, 0, 10, 0x1178 }, //0x0000024C 
	{ ACTOR_EN_WONDER_TALK2, -400, 0, 0, 0, 0, 11, 0x4178 }, //0x0000025C 
};

static u32 pad26C = 0;

SCmdEchoSettings _sasatest_room_0_set0270_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0270
SCmdRoomBehavior _sasatest_room_0_set0270_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0278
SCmdSkyboxDisables _sasatest_room_0_set0270_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0280
SCmdTimeSettings _sasatest_room_0_set0270_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x1E, 0x01 }; // 0x0288
SCmdWindSettings _sasatest_room_0_set0270_cmd04 = { 0x05, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x50, 0x32}; // 0x0290
SCmdMesh _sasatest_room_0_set0270_cmd05 = { 0x0A, 0, (u32)&_sasatest_room_0_meshHeader_000001A0 }; // 0x0298
SCmdObjectList _sasatest_room_0_set0270_cmd06 = { 0x0B, 0x01, (u32)_sasatest_room_0_objectList_000002B8 }; // 0x02A0
SCmdActorList _sasatest_room_0_set0270_cmd07 = { 0x01, 0x05, (u32)_sasatest_room_0_actorList_000002BC }; // 0x02A8
SCmdEndMarker _sasatest_room_0_set0270_cmd08 = { 0x14, 0x00, 0x00 }; // 0x02B0
s16 _sasatest_room_0_objectList_000002B8[] = 
{
	OBJECT_TITE,
};

ActorEntry _sasatest_room_0_actorList_000002BC[5] = 
{
	{ ACTOR_EN_ENCOUNT1, 4, 0, -245, 0, 0, 0, 0x0AB2 }, //0x000002BC 
	{ ACTOR_EN_WONDER_ITEM, 0, 0, 100, 0, 0, 0, 0x0FFF }, //0x000002CC 
	{ ACTOR_EN_WONDER_ITEM, 0, 0, 200, 0, 0, 1, 0x0FFF }, //0x000002DC 
	{ ACTOR_EN_WONDER_ITEM, 0, 0, 300, 0, 0, 2, 0x0FFF }, //0x000002EC 
	{ ACTOR_EN_WONDER_ITEM, -174, 0, 191, 0, 0, 3, 0x00FF }, //0x000002FC 
};

static u32 pad30C = 0;

SCmdEchoSettings _sasatest_room_0_set0310_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0310
SCmdRoomBehavior _sasatest_room_0_set0310_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0318
SCmdSkyboxDisables _sasatest_room_0_set0310_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0320
SCmdTimeSettings _sasatest_room_0_set0310_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x05 }; // 0x0328
SCmdWindSettings _sasatest_room_0_set0310_cmd04 = { 0x05, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x50, 0x32}; // 0x0330
SCmdMesh _sasatest_room_0_set0310_cmd05 = { 0x0A, 0, (u32)&_sasatest_room_0_meshHeader_000001A0 }; // 0x0338
SCmdObjectList _sasatest_room_0_set0310_cmd06 = { 0x0B, 0x01, (u32)_sasatest_room_0_objectList_00000358 }; // 0x0340
SCmdActorList _sasatest_room_0_set0310_cmd07 = { 0x01, 0x01, (u32)_sasatest_room_0_actorList_0000035C }; // 0x0348
SCmdEndMarker _sasatest_room_0_set0310_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0350
s16 _sasatest_room_0_objectList_00000358[] = 
{
	OBJECT_ST,
};

ActorEntry _sasatest_room_0_actorList_0000035C[1] = 
{
	{ ACTOR_EN_SW, 1, 0, 141, 0, 0, 0, 0xFF01 }, //0x0000035C 
};

static u32 pad36C = 0;

Vtx_t _sasatest_room_0_vertices_00000370[5] = 
{
	 { -249, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000370
	 { 0, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000380
	 { 0, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000390
	 { -249, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x000003A0
	 { 0, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x000003B0
};

Vtx_t _sasatest_room_0_vertices_000003C0[2] = 
{
	 { -249, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x000003C0
	 { 0, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x000003D0
};

Vtx_t _sasatest_room_0_vertices_000003E0[3] = 
{
	 { 0, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x000003E0
	 { 250, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x000003F0
	 { 250, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000400
};

Vtx_t _sasatest_room_0_vertices_00000410[1] = 
{
	 { -499, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000410
};

Vtx_t _sasatest_room_0_vertices_00000420[2] = 
{
	 { -249, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000420
	 { -249, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000430
};

Vtx_t _sasatest_room_0_vertices_00000440[10] = 
{
	 { -499, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000440
	 { -249, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000450
	 { 0, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000460
	 { 0, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000470
	 { 0, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000480
	 { -749, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000490
	 { -749, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x000004A0
	 { -499, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x000004B0
	 { -249, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x000004C0
	 { -499, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x000004D0
};

Vtx_t _sasatest_room_0_vertices_000004E0[8] = 
{
	 { 250, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x000004E0
	 { -249, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x000004F0
	 { 0, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000500
	 { 250, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000510
	 { 250, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000520
	 { 250, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000530
	 { 250, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000540
	 { -749, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000550
};

Vtx_t _sasatest_room_0_vertices_00000560[2] = 
{
	 { -999, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000560
	 { -999, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000570
};

static u8 unaccounted0580[] = 
{
	0xFD, 0x13, 0x00, 0x00, 0x01, 0xF4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0x00, 0xFF, 
	
};

Vtx_t _sasatest_room_0_vertices_00000590[1] = 
{
	 { -749, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000590
};

Vtx_t _sasatest_room_0_vertices_000005A0[14] = 
{
	 { -749, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x000005A0
	 { -999, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x000005B0
	 { -749, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x000005C0
	 { -999, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x000005D0
	 { -749, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x000005E0
	 { -1249, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x000005F0
	 { -1249, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000600
	 { -999, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000610
	 { -999, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000620
	 { -999, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000630
	 { -749, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000640
	 { 750, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000650
	 { 500, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000660
	 { 500, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000670
};

Vtx_t _sasatest_room_0_vertices_00000680[1] = 
{
	 { 750, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000680
};

Vtx_t _sasatest_room_0_vertices_00000690[6] = 
{
	 { 1000, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000690
	 { 1000, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x000006A0
	 { 500, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x000006B0
	 { 750, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x000006C0
	 { 500, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x000006D0
	 { 250, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x000006E0
};

Vtx_t _sasatest_room_0_vertices_000006F0[2] = 
{
	 { 500, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x000006F0
	 { 750, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000700
};

Vtx_t _sasatest_room_0_vertices_00000710[1] = 
{
	 { 250, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000710
};

Vtx_t _sasatest_room_0_vertices_00000720[1] = 
{
	 { 500, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000720
};

Vtx_t _sasatest_room_0_vertices_00000730[1] = 
{
	 { 1000, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000730
};

Vtx_t _sasatest_room_0_vertices_00000740[1] = 
{
	 { 1000, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000740
};

Vtx_t _sasatest_room_0_vertices_00000750[1] = 
{
	 { 1000, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000750
};

Vtx_t _sasatest_room_0_vertices_00000760[8] = 
{
	 { 1250, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000760
	 { 1000, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000770
	 { 1250, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000780
	 { 1000, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000790
	 { 1250, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x000007A0
	 { 1250, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x000007B0
	 { 1250, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x000007C0
	 { 1250, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x000007D0
};

Vtx_t _sasatest_room_0_vertices_000007E0[3] = 
{
	 { 500, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x000007E0
	 { 500, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x000007F0
	 { 500, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000800
};

Vtx_t _sasatest_room_0_vertices_00000810[1] = 
{
	 { -1999, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000810
};

static u8 unaccounted0820[] = 
{
	0xF8, 0x31, 0x00, 0x00, 0xF9, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0x00, 0xFF, 
	0xF9, 0x2B, 0x00, 0x00, 0xFA, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0x00, 0xFF, 
	
};

Vtx_t _sasatest_room_0_vertices_00000840[24] = 
{
	 { -1499, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000840
	 { -1749, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000850
	 { -1499, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000860
	 { -1749, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000870
	 { -1999, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000880
	 { -1499, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000890
	 { -1749, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x000008A0
	 { -1499, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x000008B0
	 { -1999, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x000008C0
	 { -1749, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x000008D0
	 { -1999, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x000008E0
	 { -1749, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x000008F0
	 { -1999, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000900
	 { -1999, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000910
	 { -1749, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000920
	 { -1999, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000930
	 { -1499, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000940
	 { -1749, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000950
	 { -1499, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000960
	 { -1749, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000970
	 { -1749, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000980
	 { -1999, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000990
	 { -1999, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x000009A0
	 { -1499, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x000009B0
};

static u8 unaccounted09C0[] = 
{
	0xF8, 0x31, 0x00, 0x00, 0xFB, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0x00, 0xFF, 
	
};

Vtx_t _sasatest_room_0_vertices_000009D0[1] = 
{
	 { -1499, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x000009D0
};

Vtx_t _sasatest_room_0_vertices_000009E0[14] = 
{
	 { -1999, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x000009E0
	 { -1749, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x000009F0
	 { -1999, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000A00
	 { -1499, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000A10
	 { -1749, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000A20
	 { -1999, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000A30
	 { -1499, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000A40
	 { -1999, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000A50
	 { -1999, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000A60
	 { -1499, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000A70
	 { -1499, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000A80
	 { -1249, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000A90
	 { -1499, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000AA0
	 { -1249, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000AB0
};

Vtx_t _sasatest_room_0_vertices_00000AC0[1] = 
{
	 { -1249, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000AC0
};

Vtx_t _sasatest_room_0_vertices_00000AD0[1] = 
{
	 { -1249, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000AD0
};

Vtx_t _sasatest_room_0_vertices_00000AE0[4] = 
{
	 { 1750, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000AE0
	 { 1500, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000AF0
	 { 1500, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000B00
	 { 1750, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000B10
};

Vtx_t _sasatest_room_0_vertices_00000B20[2] = 
{
	 { 1250, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000B20
	 { 1500, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000B30
};

Vtx_t _sasatest_room_0_vertices_00000B40[1] = 
{
	 { 1250, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000B40
};

Vtx_t _sasatest_room_0_vertices_00000B50[1] = 
{
	 { 1500, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000B50
};

Vtx_t _sasatest_room_0_vertices_00000B60[1] = 
{
	 { 1250, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000B60
};

Vtx_t _sasatest_room_0_vertices_00000B70[5] = 
{
	 { 1500, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000B70
	 { 1750, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000B80
	 { 1750, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000B90
	 { 1750, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000BA0
	 { 1250, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000BB0
};

Vtx_t _sasatest_room_0_vertices_00000BC0[10] = 
{
	 { 1750, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000BC0
	 { 1500, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000BD0
	 { 1500, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000BE0
	 { 1750, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000BF0
	 { 1750, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000C00
	 { 1500, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000C10
	 { 1500, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000C20
	 { 1250, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000C30
	 { 1250, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000C40
	 { 1250, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000C50
};

Vtx_t _sasatest_room_0_vertices_00000C60[2] = 
{
	 { 1500, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000C60
	 { 1750, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000C70
};

Vtx_t _sasatest_room_0_vertices_00000C80[1] = 
{
	 { 1500, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000C80
};

static u8 unaccounted0C90[] = 
{
	0x06, 0xD6, 0x00, 0x00, 0xFD, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0x00, 0xFF, 
	
};

Vtx_t _sasatest_room_0_vertices_00000CA0[2] = 
{
	 { 1750, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000CA0
	 { 1750, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000CB0
};

Vtx_t _sasatest_room_0_vertices_00000CC0[9] = 
{
	 { 1500, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000CC0
	 { 1750, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000CD0
	 { 1750, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000CE0
	 { 1750, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000CF0
	 { 1250, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000D00
	 { 1250, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000D10
	 { 1500, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000D20
	 { 1750, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000D30
	 { 1500, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000D40
};

Vtx_t _sasatest_room_0_vertices_00000D50[1] = 
{
	 { -499, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000D50
};

Vtx_t _sasatest_room_0_vertices_00000D60[5] = 
{
	 { -249, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000D60
	 { 0, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000D70
	 { 250, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000D80
	 { 500, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000D90
	 { 750, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000DA0
};

Vtx_t _sasatest_room_0_vertices_00000DB0[2] = 
{
	 { 750, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000DB0
	 { 750, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000DC0
};

Vtx_t _sasatest_room_0_vertices_00000DD0[5] = 
{
	 { -499, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000DD0
	 { -499, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000DE0
	 { -499, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000DF0
	 { -499, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000E00
	 { -499, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000E10
};

Vtx_t _sasatest_room_0_vertices_00000E20[1] = 
{
	 { 750, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000E20
};

Vtx_t _sasatest_room_0_vertices_00000E30[1] = 
{
	 { -999, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000E30
};

Vtx_t _sasatest_room_0_vertices_00000E40[2] = 
{
	 { -749, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000E40
	 { 1000, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000E50
};

Vtx_t _sasatest_room_0_vertices_00000E60[4] = 
{
	 { 1000, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000E60
	 { 1250, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000E70
	 { 750, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000E80
	 { 750, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000E90
};

Vtx_t _sasatest_room_0_vertices_00000EA0[1] = 
{
	 { 1250, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000EA0
};

Vtx_t _sasatest_room_0_vertices_00000EB0[1] = 
{
	 { 1500, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000EB0
};

Vtx_t _sasatest_room_0_vertices_00000EC0[2] = 
{
	 { 1500, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000EC0
	 { 1500, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000ED0
};

Vtx_t _sasatest_room_0_vertices_00000EE0[1] = 
{
	 { -1249, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000EE0
};

Vtx_t _sasatest_room_0_vertices_00000EF0[5] = 
{
	 { -1249, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000EF0
	 { -1249, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000F00
	 { -1249, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000F10
	 { -1249, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000F20
	 { -1249, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000F30
};

Vtx_t _sasatest_room_0_vertices_00000F40[3] = 
{
	 { -1749, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000F40
	 { -1499, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000F50
	 { -1749, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000F60
};

Vtx_t _sasatest_room_0_vertices_00000F70[1] = 
{
	 { -1249, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000F70
};

Vtx_t _sasatest_room_0_vertices_00000F80[1] = 
{
	 { -1249, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000F80
};

Vtx_t _sasatest_room_0_vertices_00000F90[6] = 
{
	 { -1499, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000F90
	 { -1749, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000FA0
	 { -1249, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000FB0
	 { -1499, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000FC0
	 { -1749, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000FD0
	 { -1249, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000FE0
};

Vtx_t _sasatest_room_0_vertices_00000FF0[1] = 
{
	 { -999, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00000FF0
};

Vtx_t _sasatest_room_0_vertices_00001000[1] = 
{
	 { -1749, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001000
};

Vtx_t _sasatest_room_0_vertices_00001010[1] = 
{
	 { -999, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001010
};

Vtx_t _sasatest_room_0_vertices_00001020[1] = 
{
	 { -1249, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001020
};

Vtx_t _sasatest_room_0_vertices_00001030[1] = 
{
	 { 2000, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001030
};

Vtx_t _sasatest_room_0_vertices_00001040[1] = 
{
	 { 2000, 0, 1750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001040
};

Vtx_t _sasatest_room_0_vertices_00001050[1] = 
{
	 { 1750, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001050
};

Vtx_t _sasatest_room_0_vertices_00001060[1] = 
{
	 { 2000, 0, 1500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001060
};

Vtx_t _sasatest_room_0_vertices_00001070[1] = 
{
	 { 2000, 0, -249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001070
};

Vtx_t _sasatest_room_0_vertices_00001080[1] = 
{
	 { 2000, 0, 0, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001080
};

Vtx_t _sasatest_room_0_vertices_00001090[1] = 
{
	 { 2000, 0, 250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001090
};

Vtx_t _sasatest_room_0_vertices_000010A0[2] = 
{
	 { 2000, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x000010A0
	 { 2000, 0, 1000, 0, 0, 0, 0, 127, 0, 255 }, // 0x000010B0
};

Vtx_t _sasatest_room_0_vertices_000010C0[1] = 
{
	 { 2000, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x000010C0
};

Vtx_t _sasatest_room_0_vertices_000010D0[2] = 
{
	 { 2000, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x000010D0
	 { 2000, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x000010E0
};

Vtx_t _sasatest_room_0_vertices_000010F0[1] = 
{
	 { 2000, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x000010F0
};

static u8 unaccounted1100[] = 
{
	0x07, 0xD0, 0x00, 0x00, 0xF8, 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0x00, 0xFF, 
	
};

Vtx_t _sasatest_room_0_vertices_00001110[1] = 
{
	 { 2000, 0, 500, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001110
};

Vtx_t _sasatest_room_0_vertices_00001120[3] = 
{
	 { 2000, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001120
	 { 2000, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001130
	 { 2000, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001140
};

Vtx_t _sasatest_room_0_vertices_00001150[1] = 
{
	 { -249, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001150
};

Vtx_t _sasatest_room_0_vertices_00001160[1] = 
{
	 { 1000, 0, 1250, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001160
};

Vtx_t _sasatest_room_0_vertices_00001170[1] = 
{
	 { -1999, 0, 2000, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001170
};

Vtx_t _sasatest_room_0_vertices_00001180[1] = 
{
	 { -1499, 0, 750, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001180
};

Vtx_t _sasatest_room_0_vertices_00001190[1] = 
{
	 { -249, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001190
};

Vtx_t _sasatest_room_0_vertices_000011A0[1] = 
{
	 { -499, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x000011A0
};

Vtx_t _sasatest_room_0_vertices_000011B0[2] = 
{
	 { 0, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x000011B0
	 { 250, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x000011C0
};

Vtx_t _sasatest_room_0_vertices_000011D0[1] = 
{
	 { -749, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x000011D0
};

Vtx_t _sasatest_room_0_vertices_000011E0[1] = 
{
	 { -999, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x000011E0
};

Vtx_t _sasatest_room_0_vertices_000011F0[1] = 
{
	 { 500, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x000011F0
};

Vtx_t _sasatest_room_0_vertices_00001200[4] = 
{
	 { 750, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001200
	 { 1000, 0, -499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001210
	 { 1000, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001220
	 { 1000, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001230
};

Vtx_t _sasatest_room_0_vertices_00001240[1] = 
{
	 { 1000, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001240
};

Vtx_t _sasatest_room_0_vertices_00001250[1] = 
{
	 { 1000, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001250
};

Vtx_t _sasatest_room_0_vertices_00001260[1] = 
{
	 { 1000, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001260
};

Vtx_t _sasatest_room_0_vertices_00001270[1] = 
{
	 { 1000, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001270
};

static u8 unaccounted1280[] = 
{
	0xFD, 0x13, 0x00, 0x00, 0xF8, 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0x00, 0xFF, 
	
};

Vtx_t _sasatest_room_0_vertices_00001290[1] = 
{
	 { -999, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001290
};

Vtx_t _sasatest_room_0_vertices_000012A0[6] = 
{
	 { -499, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x000012A0
	 { 0, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x000012B0
	 { -249, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x000012C0
	 { 250, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x000012D0
	 { 750, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x000012E0
	 { 500, 0, -1999, 0, 0, 0, 0, 127, 0, 255 }, // 0x000012F0
};

Vtx_t _sasatest_room_0_vertices_00001300[12] = 
{
	 { -999, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001300
	 { -999, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001310
	 { -999, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001320
	 { -999, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001330
	 { -999, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001340
	 { -749, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001350
	 { -499, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001360
	 { -249, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001370
	 { 0, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001380
	 { 250, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001390
	 { 500, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x000013A0
	 { 750, 0, -1749, 0, 0, 0, 0, 127, 0, 255 }, // 0x000013B0
};

Vtx_t _sasatest_room_0_vertices_000013C0[17] = 
{
	 { -749, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x000013C0
	 { -499, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x000013D0
	 { -249, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x000013E0
	 { 0, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x000013F0
	 { 250, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001400
	 { 500, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001410
	 { -749, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001420
	 { -749, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001430
	 { -499, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001440
	 { 750, 0, -1499, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001450
	 { 750, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001460
	 { -249, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001470
	 { 500, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001480
	 { 250, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001490
	 { 0, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x000014A0
	 { 750, 0, -749, 0, 0, 0, 0, 127, 0, 255 }, // 0x000014B0
	 { 750, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x000014C0
};

Vtx_t _sasatest_room_0_vertices_000014D0[3] = 
{
	 { -749, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x000014D0
	 { 500, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x000014E0
	 { 500, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x000014F0
};

Vtx_t _sasatest_room_0_vertices_00001500[1] = 
{
	 { -499, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001500
};

Vtx_t _sasatest_room_0_vertices_00001510[7] = 
{
	 { -249, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001510
	 { -249, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001520
	 { 0, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001530
	 { 250, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001540
	 { 0, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001550
	 { 250, 0, -999, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001560
	 { -499, 0, -1249, 0, 0, 0, 0, 127, 0, 255 }, // 0x00001570
};

Gfx _sasatest_room_0_dlist_00001580[] =
{
	gsDPPipeSync(), // 0x00001580
	gsDPSetPrimColor(0, 1, 152, 101, 255, 255), // 0x00001588
	gsDPPipeSync(), // 0x00001590
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8103478), // 0x00001598
	gsSPTexture(0, 0, 0, 0, 0), // 0x000015A0
	gsDPPipeSync(), // 0x000015A8
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, PRIMITIVE, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x000015B0
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x000015B8
	gsSPGeometryMode(0xFF000000, 0x00020000), // 0x000015C0
	gsSPGeometryMode(0xFF000000, 0x00200000), // 0x000015C8
	gsSPVertex(_sasatest_room_0_vertices_00000370, 16, 0), // 0x000015D0
	gsSP1Triangle(0, 1, 2, 0), // 0x000015D8
	gsSP1Triangle(3, 4, 1, 0), // 0x000015E0
	gsSP1Triangle(5, 6, 7, 0), // 0x000015E8
	gsSP1Triangle(7, 8, 9, 0), // 0x000015F0
	gsSP1Triangle(10, 11, 12, 0), // 0x000015F8
	gsSP1Triangle(13, 14, 11, 0), // 0x00001600
	gsSPVertex(_sasatest_room_0_vertices_00000420, 2, 0), // 0x00001608
	gsSPVertex(_sasatest_room_0_vertices_00000460, 8, 2), // 0x00001610
	gsSPVertex(_sasatest_room_0_vertices_00000520, 3, 10), // 0x00001618
	gsSPVertex(_sasatest_room_0_vertices_00000D50, 2, 13), // 0x00001620
	gsSP1Triangle(0, 2, 3, 0), // 0x00001628
	gsSP1Triangle(3, 10, 11, 0), // 0x00001630
	gsSP1Triangle(1, 3, 4, 0), // 0x00001638
	gsSP1Triangle(4, 11, 12, 0), // 0x00001640
	gsSP1Triangle(5, 13, 7, 0), // 0x00001648
	gsSP1Triangle(6, 7, 9, 0), // 0x00001650
	gsSP1Triangle(7, 14, 8, 0), // 0x00001658
	gsSPVertex(_sasatest_room_0_vertices_000003B0, 1, 0), // 0x00001660
	gsSPVertex(_sasatest_room_0_vertices_000004C0, 7, 1), // 0x00001668
	gsSPVertex(_sasatest_room_0_vertices_000006B0, 1, 8), // 0x00001670
	gsSPVertex(_sasatest_room_0_vertices_000006D0, 1, 9), // 0x00001678
	gsSPVertex(_sasatest_room_0_vertices_000007F0, 2, 10), // 0x00001680
	gsSPVertex(_sasatest_room_0_vertices_00000D70, 3, 12), // 0x00001688
	gsSP1Triangle(1, 12, 5, 0), // 0x00001690
	gsSP1Triangle(2, 1, 4, 0), // 0x00001698
	gsSP1Triangle(0, 3, 6, 0), // 0x000016A0
	gsSP1Triangle(4, 5, 0, 0), // 0x000016A8
	gsSP1Triangle(5, 13, 3, 0), // 0x000016B0
	gsSP1Triangle(3, 14, 8, 0), // 0x000016B8
	gsSP1Triangle(6, 8, 9, 0), // 0x000016C0
	gsSP1Triangle(7, 10, 11, 0), // 0x000016C8
	gsSPVertex(_sasatest_room_0_vertices_000004D0, 1, 0), // 0x000016D0
	gsSPVertex(_sasatest_room_0_vertices_00000530, 8, 1), // 0x000016D8
	gsSPVertex(_sasatest_room_0_vertices_00000660, 2, 9), // 0x000016E0
	gsSPVertex(_sasatest_room_0_vertices_00000800, 1, 11), // 0x000016E8
	gsSPVertex(_sasatest_room_0_vertices_00000DD0, 3, 12), // 0x000016F0
	gsSP1Triangle(1, 11, 9, 0), // 0x000016F8
	gsSP1Triangle(2, 9, 10, 0), // 0x00001700
	gsSP1Triangle(3, 0, 12, 0), // 0x00001708
	gsSP1Triangle(4, 7, 6, 0), // 0x00001710
	gsSP1Triangle(5, 6, 8, 0), // 0x00001718
	gsSP1Triangle(6, 13, 14, 0), // 0x00001720
	gsSPVertex(_sasatest_room_0_vertices_00000410, 1, 0), // 0x00001728
	gsSPVertex(_sasatest_room_0_vertices_00000440, 1, 1), // 0x00001730
	gsSPVertex(_sasatest_room_0_vertices_00000590, 10, 2), // 0x00001738
	gsSPVertex(_sasatest_room_0_vertices_00000DE0, 4, 12), // 0x00001740
	gsSP1Triangle(2, 14, 12, 0), // 0x00001748
	gsSP1Triangle(3, 13, 15, 0), // 0x00001750
	gsSP1Triangle(4, 3, 5, 0), // 0x00001758
	gsSP1Triangle(5, 15, 1, 0), // 0x00001760
	gsSP1Triangle(6, 5, 7, 0), // 0x00001768
	gsSP1Triangle(7, 1, 0, 0), // 0x00001770
	gsSP1Triangle(8, 10, 11, 0), // 0x00001778
	gsSPVertex(_sasatest_room_0_vertices_00000490, 2, 0), // 0x00001780
	gsSPVertex(_sasatest_room_0_vertices_00000590, 1, 2), // 0x00001788
	gsSPVertex(_sasatest_room_0_vertices_00000610, 7, 3), // 0x00001790
	gsSPVertex(_sasatest_room_0_vertices_00000690, 1, 10), // 0x00001798
	gsSPVertex(_sasatest_room_0_vertices_00000DD0, 1, 11), // 0x000017A0
	gsSPVertex(_sasatest_room_0_vertices_00000E00, 1, 12), // 0x000017A8
	gsSPVertex(_sasatest_room_0_vertices_00000E20, 1, 13), // 0x000017B0
	gsSPVertex(_sasatest_room_0_vertices_00000E40, 2, 14), // 0x000017B8
	gsSP1Triangle(3, 14, 0, 0), // 0x000017C0
	gsSP1Triangle(4, 0, 1, 0), // 0x000017C8
	gsSP1Triangle(5, 6, 2, 0), // 0x000017D0
	gsSP1Triangle(6, 11, 12, 0), // 0x000017D8
	gsSP1Triangle(7, 15, 10, 0), // 0x000017E0
	gsSP1Triangle(8, 13, 7, 0), // 0x000017E8
	gsSPVertex(_sasatest_room_0_vertices_00000650, 1, 0), // 0x000017F0
	gsSPVertex(_sasatest_room_0_vertices_00000670, 7, 1), // 0x000017F8
	gsSPVertex(_sasatest_room_0_vertices_00000700, 1, 8), // 0x00001800
	gsSPVertex(_sasatest_room_0_vertices_00000730, 1, 9), // 0x00001808
	gsSPVertex(_sasatest_room_0_vertices_000007B0, 3, 10), // 0x00001810
	gsSPVertex(_sasatest_room_0_vertices_00000DA0, 1, 13), // 0x00001818
	gsSPVertex(_sasatest_room_0_vertices_00000E60, 1, 14), // 0x00001820
	gsSP1Triangle(2, 3, 4, 0), // 0x00001828
	gsSP1Triangle(3, 10, 11, 0), // 0x00001830
	gsSP1Triangle(1, 0, 2, 0), // 0x00001838
	gsSP1Triangle(4, 11, 12, 0), // 0x00001840
	gsSP1Triangle(5, 13, 6, 0), // 0x00001848
	gsSP1Triangle(6, 14, 9, 0), // 0x00001850
	gsSP1Triangle(7, 6, 8, 0), // 0x00001858
	gsSPVertex(_sasatest_room_0_vertices_000006D0, 10, 0), // 0x00001860
	gsSPVertex(_sasatest_room_0_vertices_00000B20, 1, 10), // 0x00001868
	gsSPVertex(_sasatest_room_0_vertices_00000BB0, 1, 11), // 0x00001870
	gsSPVertex(_sasatest_room_0_vertices_00000E70, 4, 12), // 0x00001878
	gsSP1Triangle(1, 0, 2, 0), // 0x00001880
	gsSP1Triangle(2, 3, 13, 0), // 0x00001888
	gsSP1Triangle(3, 6, 7, 0), // 0x00001890
	gsSP1Triangle(4, 2, 5, 0), // 0x00001898
	gsSP1Triangle(5, 13, 14, 0), // 0x000018A0
	gsSP1Triangle(6, 12, 11, 0), // 0x000018A8
	gsSP1Triangle(7, 11, 10, 0), // 0x000018B0
	gsSP1Triangle(8, 15, 9, 0), // 0x000018B8
	gsSPVertex(_sasatest_room_0_vertices_00000760, 8, 0), // 0x000018C0
	gsSPVertex(_sasatest_room_0_vertices_00000B30, 1, 8), // 0x000018C8
	gsSPVertex(_sasatest_room_0_vertices_00000B50, 1, 9), // 0x000018D0
	gsSPVertex(_sasatest_room_0_vertices_00000C10, 2, 10), // 0x000018D8
	gsSPVertex(_sasatest_room_0_vertices_00000CC0, 1, 12), // 0x000018E0
	gsSPVertex(_sasatest_room_0_vertices_00000EC0, 2, 13), // 0x000018E8
	gsSP1Triangle(0, 8, 13, 0), // 0x000018F0
	gsSP1Triangle(1, 0, 2, 0), // 0x000018F8
	gsSP1Triangle(2, 13, 14, 0), // 0x00001900
	gsSP1Triangle(3, 2, 4, 0), // 0x00001908
	gsSP1Triangle(4, 14, 10, 0), // 0x00001910
	gsSP1Triangle(5, 10, 12, 0), // 0x00001918
	gsSP1Triangle(6, 12, 11, 0), // 0x00001920
	gsSP1Triangle(7, 11, 9, 0), // 0x00001928
	gsSPVertex(_sasatest_room_0_vertices_000007E0, 10, 0), // 0x00001930
	gsSPVertex(_sasatest_room_0_vertices_00000DB0, 2, 10), // 0x00001938
	gsSPVertex(_sasatest_room_0_vertices_00000E20, 1, 12), // 0x00001940
	gsSPVertex(_sasatest_room_0_vertices_00000E90, 1, 13), // 0x00001948
	gsSP1Triangle(0, 13, 10, 0), // 0x00001950
	gsSP1Triangle(1, 10, 11, 0), // 0x00001958
	gsSP1Triangle(2, 11, 12, 0), // 0x00001960
	gsSP1Triangle(3, 7, 5, 0), // 0x00001968
	gsSP1Triangle(4, 5, 9, 0), // 0x00001970
	gsSP1Triangle(5, 6, 8, 0), // 0x00001978
	gsSPVertex(_sasatest_room_0_vertices_00000840, 8, 0), // 0x00001980
	gsSPVertex(_sasatest_room_0_vertices_000009D0, 1, 8), // 0x00001988
	gsSPVertex(_sasatest_room_0_vertices_00000EE0, 5, 9), // 0x00001990
	gsSP1Triangle(0, 9, 10, 0), // 0x00001998
	gsSP1Triangle(1, 8, 0, 0), // 0x000019A0
	gsSP1Triangle(2, 10, 11, 0), // 0x000019A8
	gsSP1Triangle(3, 2, 5, 0), // 0x000019B0
	gsSP1Triangle(4, 3, 6, 0), // 0x000019B8
	gsSP1Triangle(5, 11, 12, 0), // 0x000019C0
	gsSP1Triangle(6, 5, 7, 0), // 0x000019C8
	gsSP1Triangle(7, 12, 13, 0), // 0x000019D0
	gsSPVertex(_sasatest_room_0_vertices_000008C0, 11, 0), // 0x000019D8
	gsSPVertex(_sasatest_room_0_vertices_00000A70, 2, 11), // 0x000019E0
	gsSPVertex(_sasatest_room_0_vertices_00000F40, 3, 13), // 0x000019E8
	gsSP1Triangle(0, 13, 1, 0), // 0x000019F0
	gsSP1Triangle(1, 14, 11, 0), // 0x000019F8
	gsSP1Triangle(2, 1, 3, 0), // 0x00001A00
	gsSP1Triangle(3, 11, 12, 0), // 0x00001A08
	gsSP1Triangle(4, 3, 15, 0), // 0x00001A10
	gsSP1Triangle(5, 9, 6, 0), // 0x00001A18
	gsSP1Triangle(6, 8, 10, 0), // 0x00001A20
	gsSPVertex(_sasatest_room_0_vertices_00000940, 8, 0), // 0x00001A28
	gsSPVertex(_sasatest_room_0_vertices_000009D0, 1, 8), // 0x00001A30
	gsSPVertex(_sasatest_room_0_vertices_00000A40, 1, 9), // 0x00001A38
	gsSPVertex(_sasatest_room_0_vertices_00000AD0, 1, 10), // 0x00001A40
	gsSPVertex(_sasatest_room_0_vertices_00000F30, 1, 11), // 0x00001A48
	gsSPVertex(_sasatest_room_0_vertices_00000F60, 2, 12), // 0x00001A50
	gsSPVertex(_sasatest_room_0_vertices_00000F90, 2, 14), // 0x00001A58
	gsSP1Triangle(0, 10, 13, 0), // 0x00001A60
	gsSP1Triangle(1, 9, 0, 0), // 0x00001A68
	gsSP1Triangle(2, 13, 11, 0), // 0x00001A70
	gsSP1Triangle(3, 2, 8, 0), // 0x00001A78
	gsSP1Triangle(4, 14, 7, 0), // 0x00001A80
	gsSP1Triangle(5, 12, 4, 0), // 0x00001A88
	gsSP1Triangle(6, 4, 15, 0), // 0x00001A90
	gsSPVertex(_sasatest_room_0_vertices_00000850, 1, 0), // 0x00001A98
	gsSPVertex(_sasatest_room_0_vertices_00000920, 2, 1), // 0x00001AA0
	gsSPVertex(_sasatest_room_0_vertices_00000970, 1, 3), // 0x00001AA8
	gsSPVertex(_sasatest_room_0_vertices_000009B0, 5, 4), // 0x00001AB0
	gsSPVertex(_sasatest_room_0_vertices_00000A10, 2, 9), // 0x00001AB8
	gsSPVertex(_sasatest_room_0_vertices_00000A90, 1, 11), // 0x00001AC0
	gsSPVertex(_sasatest_room_0_vertices_00000EE0, 1, 12), // 0x00001AC8
	gsSPVertex(_sasatest_room_0_vertices_00000F30, 1, 13), // 0x00001AD0
	gsSPVertex(_sasatest_room_0_vertices_00000FB0, 2, 14), // 0x00001AD8
	gsSP1Triangle(4, 14, 11, 0), // 0x00001AE0
	gsSP1Triangle(2, 1, 3, 0), // 0x00001AE8
	gsSP1Triangle(5, 3, 0, 0), // 0x00001AF0
	gsSP1Triangle(6, 13, 12, 0), // 0x00001AF8
	gsSP1Triangle(7, 8, 10, 0), // 0x00001B00
	gsSP1Triangle(8, 15, 9, 0), // 0x00001B08
	gsSPVertex(_sasatest_room_0_vertices_00000950, 1, 0), // 0x00001B10
	gsSPVertex(_sasatest_room_0_vertices_000009F0, 8, 1), // 0x00001B18
	gsSPVertex(_sasatest_room_0_vertices_00000AC0, 2, 9), // 0x00001B20
	gsSPVertex(_sasatest_room_0_vertices_00000FA0, 1, 11), // 0x00001B28
	gsSPVertex(_sasatest_room_0_vertices_00000FD0, 2, 12), // 0x00001B30
	gsSPVertex(_sasatest_room_0_vertices_00001000, 1, 14), // 0x00001B38
	gsSP1Triangle(3, 13, 9, 0), // 0x00001B40
	gsSP1Triangle(4, 3, 6, 0), // 0x00001B48
	gsSP1Triangle(5, 4, 0, 0), // 0x00001B50
	gsSP1Triangle(6, 9, 10, 0), // 0x00001B58
	gsSP1Triangle(2, 12, 1, 0), // 0x00001B60
	gsSP1Triangle(7, 14, 12, 0), // 0x00001B68
	gsSP1Triangle(8, 11, 14, 0), // 0x00001B70
	gsSPVertex(_sasatest_room_0_vertices_00000560, 2, 0), // 0x00001B78
	gsSPVertex(_sasatest_room_0_vertices_000005B0, 1, 2), // 0x00001B80
	gsSPVertex(_sasatest_room_0_vertices_000005F0, 2, 3), // 0x00001B88
	gsSPVertex(_sasatest_room_0_vertices_00000630, 1, 5), // 0x00001B90
	gsSPVertex(_sasatest_room_0_vertices_00000A70, 6, 6), // 0x00001B98
	gsSPVertex(_sasatest_room_0_vertices_00000F80, 1, 12), // 0x00001BA0
	gsSPVertex(_sasatest_room_0_vertices_00000FF0, 1, 13), // 0x00001BA8
	gsSPVertex(_sasatest_room_0_vertices_00001010, 2, 14), // 0x00001BB0
	gsSP1Triangle(6, 12, 4, 0), // 0x00001BB8
	gsSP1Triangle(7, 4, 3, 0), // 0x00001BC0
	gsSP1Triangle(8, 13, 14, 0), // 0x00001BC8
	gsSP1Triangle(9, 15, 10, 0), // 0x00001BD0
	gsSP1Triangle(10, 5, 0, 0), // 0x00001BD8
	gsSP1Triangle(11, 1, 2, 0), // 0x00001BE0
	gsSPVertex(_sasatest_room_0_vertices_000005B0, 1, 0), // 0x00001BE8
	gsSPVertex(_sasatest_room_0_vertices_000005D0, 1, 1), // 0x00001BF0
	gsSPVertex(_sasatest_room_0_vertices_00000600, 2, 2), // 0x00001BF8
	gsSPVertex(_sasatest_room_0_vertices_00000AD0, 5, 4), // 0x00001C00
	gsSPVertex(_sasatest_room_0_vertices_00000E30, 1, 9), // 0x00001C08
	gsSPVertex(_sasatest_room_0_vertices_00001030, 4, 10), // 0x00001C10
	gsSP1Triangle(2, 9, 3, 0), // 0x00001C18
	gsSP1Triangle(4, 0, 1, 0), // 0x00001C20
	gsSP1Triangle(5, 10, 11, 0), // 0x00001C28
	gsSP1Triangle(6, 5, 8, 0), // 0x00001C30
	gsSP1Triangle(7, 12, 5, 0), // 0x00001C38
	gsSP1Triangle(8, 11, 13, 0), // 0x00001C40
	gsSPVertex(_sasatest_room_0_vertices_00000AF0, 9, 0), // 0x00001C48
	gsSPVertex(_sasatest_room_0_vertices_00000B90, 1, 9), // 0x00001C50
	gsSPVertex(_sasatest_room_0_vertices_00000C60, 2, 10), // 0x00001C58
	gsSPVertex(_sasatest_room_0_vertices_00000CB0, 1, 12), // 0x00001C60
	gsSPVertex(_sasatest_room_0_vertices_00000CF0, 1, 13), // 0x00001C68
	gsSP1Triangle(3, 1, 0, 0), // 0x00001C70
	gsSP1Triangle(4, 2, 9, 0), // 0x00001C78
	gsSP1Triangle(5, 6, 8, 0), // 0x00001C80
	gsSP1Triangle(6, 13, 12, 0), // 0x00001C88
	gsSP1Triangle(7, 8, 10, 0), // 0x00001C90
	gsSP1Triangle(8, 12, 11, 0), // 0x00001C98
	gsSPVertex(_sasatest_room_0_vertices_00000B00, 1, 0), // 0x00001CA0
	gsSPVertex(_sasatest_room_0_vertices_00000B80, 8, 1), // 0x00001CA8
	gsSPVertex(_sasatest_room_0_vertices_00000EB0, 1, 9), // 0x00001CB0
	gsSPVertex(_sasatest_room_0_vertices_00001060, 1, 10), // 0x00001CB8
	gsSPVertex(_sasatest_room_0_vertices_000010A0, 5, 11), // 0x00001CC0
	gsSP1Triangle(1, 11, 12, 0), // 0x00001CC8
	gsSP1Triangle(2, 10, 11, 0), // 0x00001CD0
	gsSP1Triangle(3, 12, 13, 0), // 0x00001CD8
	gsSP1Triangle(4, 9, 0, 0), // 0x00001CE0
	gsSP1Triangle(5, 14, 15, 0), // 0x00001CE8
	gsSP1Triangle(6, 8, 5, 0), // 0x00001CF0
	gsSPVertex(_sasatest_room_0_vertices_00000BA0, 1, 0), // 0x00001CF8
	gsSPVertex(_sasatest_room_0_vertices_00000BD0, 7, 1), // 0x00001D00
	gsSPVertex(_sasatest_room_0_vertices_00000CD0, 3, 8), // 0x00001D08
	gsSPVertex(_sasatest_room_0_vertices_000010D0, 4, 11), // 0x00001D10
	gsSP1Triangle(3, 13, 11, 0), // 0x00001D18
	gsSP1Triangle(4, 12, 14, 0), // 0x00001D20
	gsSP1Triangle(5, 0, 8, 0), // 0x00001D28
	gsSP1Triangle(6, 9, 10, 0), // 0x00001D30
	gsSP1Triangle(7, 1, 2, 0), // 0x00001D38
	gsSPVertex(_sasatest_room_0_vertices_00000BC0, 3, 0), // 0x00001D40
	gsSPVertex(_sasatest_room_0_vertices_00000C00, 1, 3), // 0x00001D48
	gsSPVertex(_sasatest_room_0_vertices_00000C40, 7, 4), // 0x00001D50
	gsSPVertex(_sasatest_room_0_vertices_00000D40, 1, 11), // 0x00001D58
	gsSPVertex(_sasatest_room_0_vertices_00001070, 1, 12), // 0x00001D60
	gsSPVertex(_sasatest_room_0_vertices_00001120, 2, 13), // 0x00001D68
	gsSP1Triangle(4, 11, 1, 0), // 0x00001D70
	gsSP1Triangle(2, 0, 3, 0), // 0x00001D78
	gsSP1Triangle(5, 6, 8, 0), // 0x00001D80
	gsSP1Triangle(6, 7, 9, 0), // 0x00001D88
	gsSP1Triangle(7, 12, 13, 0), // 0x00001D90
	gsSP1Triangle(8, 9, 10, 0), // 0x00001D98
	gsSP1Triangle(9, 13, 14, 0), // 0x00001DA0
	gsSPVertex(_sasatest_room_0_vertices_00000CA0, 7, 0), // 0x00001DA8
	gsSPVertex(_sasatest_room_0_vertices_00000D20, 1, 7), // 0x00001DB0
	gsSPVertex(_sasatest_room_0_vertices_00000D40, 1, 8), // 0x00001DB8
	gsSPVertex(_sasatest_room_0_vertices_00001070, 3, 9), // 0x00001DC0
	gsSPVertex(_sasatest_room_0_vertices_000010C0, 1, 12), // 0x00001DC8
	gsSPVertex(_sasatest_room_0_vertices_00001110, 1, 13), // 0x00001DD0
	gsSPVertex(_sasatest_room_0_vertices_00001130, 2, 14), // 0x00001DD8
	gsSP1Triangle(0, 14, 15, 0), // 0x00001DE0
	gsSP1Triangle(1, 10, 9, 0), // 0x00001DE8
	gsSP1Triangle(2, 3, 4, 0), // 0x00001DF0
	gsSP1Triangle(3, 12, 13, 0), // 0x00001DF8
	gsSP1Triangle(4, 13, 11, 0), // 0x00001E00
	gsSP1Triangle(5, 11, 10, 0), // 0x00001E08
	gsSP1Triangle(6, 7, 8, 0), // 0x00001E10
	gsSPVertex(_sasatest_room_0_vertices_00000BF0, 1, 0), // 0x00001E18
	gsSPVertex(_sasatest_room_0_vertices_00000C80, 1, 1), // 0x00001E20
	gsSPVertex(_sasatest_room_0_vertices_00000CA0, 1, 2), // 0x00001E28
	gsSPVertex(_sasatest_room_0_vertices_00000D10, 4, 3), // 0x00001E30
	gsSPVertex(_sasatest_room_0_vertices_000010F0, 1, 7), // 0x00001E38
	gsSPVertex(_sasatest_room_0_vertices_00001140, 1, 8), // 0x00001E40
	gsSP1Triangle(3, 1, 4, 0), // 0x00001E48
	gsSP1Triangle(4, 2, 5, 0), // 0x00001E50
	gsSP1Triangle(5, 8, 7, 0), // 0x00001E58
	gsSP1Triangle(6, 5, 0, 0), // 0x00001E60
	gsDPPipeSync(), // 0x00001E68
	gsDPSetPrimColor(0, 1, 235, 121, 216, 255), // 0x00001E70
	gsSPVertex(_sasatest_room_0_vertices_00000370, 2, 0), // 0x00001E78
	gsSPVertex(_sasatest_room_0_vertices_000003A0, 6, 2), // 0x00001E80
	gsSPVertex(_sasatest_room_0_vertices_00000410, 6, 8), // 0x00001E88
	gsSPVertex(_sasatest_room_0_vertices_00000510, 1, 14), // 0x00001E90
	gsSPVertex(_sasatest_room_0_vertices_00001150, 1, 15), // 0x00001E98
	gsSP1Triangle(0, 2, 1, 0), // 0x00001EA0
	gsSP1Triangle(1, 3, 14, 0), // 0x00001EA8
	gsSP1Triangle(4, 15, 5, 0), // 0x00001EB0
	gsSP1Triangle(6, 5, 7, 0), // 0x00001EB8
	gsSP1Triangle(8, 11, 9, 0), // 0x00001EC0
	gsSP1Triangle(9, 12, 13, 0), // 0x00001EC8
	gsSPVertex(_sasatest_room_0_vertices_00000420, 2, 0), // 0x00001ED0
	gsSPVertex(_sasatest_room_0_vertices_00000460, 8, 2), // 0x00001ED8
	gsSPVertex(_sasatest_room_0_vertices_00000520, 2, 10), // 0x00001EE0
	gsSPVertex(_sasatest_room_0_vertices_00000D50, 2, 12), // 0x00001EE8
	gsSP1Triangle(3, 2, 10, 0), // 0x00001EF0
	gsSP1Triangle(4, 3, 11, 0), // 0x00001EF8
	gsSP1Triangle(1, 0, 3, 0), // 0x00001F00
	gsSP1Triangle(7, 12, 13, 0), // 0x00001F08
	gsSP1Triangle(6, 5, 7, 0), // 0x00001F10
	gsSP1Triangle(9, 7, 8, 0), // 0x00001F18
	gsSPVertex(_sasatest_room_0_vertices_000003A0, 2, 0), // 0x00001F20
	gsSPVertex(_sasatest_room_0_vertices_000004C0, 1, 2), // 0x00001F28
	gsSPVertex(_sasatest_room_0_vertices_000004E0, 6, 3), // 0x00001F30
	gsSPVertex(_sasatest_room_0_vertices_000006B0, 1, 9), // 0x00001F38
	gsSPVertex(_sasatest_room_0_vertices_00000800, 1, 10), // 0x00001F40
	gsSPVertex(_sasatest_room_0_vertices_00000D60, 4, 11), // 0x00001F48
	gsSP1Triangle(2, 11, 12, 0), // 0x00001F50
	gsSP1Triangle(4, 2, 5, 0), // 0x00001F58
	gsSP1Triangle(0, 4, 1, 0), // 0x00001F60
	gsSP1Triangle(1, 5, 3, 0), // 0x00001F68
	gsSP1Triangle(6, 3, 9, 0), // 0x00001F70
	gsSP1Triangle(3, 13, 14, 0), // 0x00001F78
	gsSP1Triangle(8, 7, 10, 0), // 0x00001F80
	gsSP1Triangle(5, 12, 13, 0), // 0x00001F88
	gsSPVertex(_sasatest_room_0_vertices_000004A0, 1, 0), // 0x00001F90
	gsSPVertex(_sasatest_room_0_vertices_000004D0, 1, 1), // 0x00001F98
	gsSPVertex(_sasatest_room_0_vertices_000004F0, 1, 2), // 0x00001FA0
	gsSPVertex(_sasatest_room_0_vertices_00000530, 3, 3), // 0x00001FA8
	gsSPVertex(_sasatest_room_0_vertices_00000570, 6, 6), // 0x00001FB0
	gsSPVertex(_sasatest_room_0_vertices_00000660, 1, 12), // 0x00001FB8
	gsSPVertex(_sasatest_room_0_vertices_00000DD0, 3, 13), // 0x00001FC0
	gsSP1Triangle(4, 3, 12, 0), // 0x00001FC8
	gsSP1Triangle(13, 1, 2, 0), // 0x00001FD0
	gsSP1Triangle(5, 0, 1, 0), // 0x00001FD8
	gsSP1Triangle(9, 7, 15, 0), // 0x00001FE0
	gsSP1Triangle(7, 8, 14, 0), // 0x00001FE8
	gsSP1Triangle(10, 6, 9, 0), // 0x00001FF0
	gsSPVertex(_sasatest_room_0_vertices_00000440, 2, 0), // 0x00001FF8
	gsSPVertex(_sasatest_room_0_vertices_00000490, 1, 2), // 0x00002000
	gsSPVertex(_sasatest_room_0_vertices_000005A0, 9, 3), // 0x00002008
	gsSPVertex(_sasatest_room_0_vertices_00000E10, 1, 12), // 0x00002010
	gsSPVertex(_sasatest_room_0_vertices_00000E30, 2, 13), // 0x00002018
	gsSP1Triangle(5, 3, 12, 0), // 0x00002020
	gsSP1Triangle(0, 12, 1, 0), // 0x00002028
	gsSP1Triangle(7, 5, 0, 0), // 0x00002030
	gsSP1Triangle(6, 4, 5, 0), // 0x00002038
	gsSP1Triangle(10, 13, 14, 0), // 0x00002040
	gsSP1Triangle(11, 10, 2, 0), // 0x00002048
	gsSP1Triangle(8, 9, 10, 0), // 0x00002050
	gsSPVertex(_sasatest_room_0_vertices_00000490, 1, 0), // 0x00002058
	gsSPVertex(_sasatest_room_0_vertices_00000550, 2, 1), // 0x00002060
	gsSPVertex(_sasatest_room_0_vertices_00000590, 1, 3), // 0x00002068
	gsSPVertex(_sasatest_room_0_vertices_00000630, 3, 4), // 0x00002070
	gsSPVertex(_sasatest_room_0_vertices_00000670, 3, 7), // 0x00002078
	gsSPVertex(_sasatest_room_0_vertices_00000D50, 1, 10), // 0x00002080
	gsSPVertex(_sasatest_room_0_vertices_00000DD0, 1, 11), // 0x00002088
	gsSPVertex(_sasatest_room_0_vertices_00000E00, 1, 12), // 0x00002090
	gsSPVertex(_sasatest_room_0_vertices_00000E20, 1, 13), // 0x00002098
	gsSPVertex(_sasatest_room_0_vertices_00000E40, 2, 14), // 0x000020A0
	gsSP1Triangle(0, 14, 10, 0), // 0x000020A8
	gsSP1Triangle(2, 4, 3, 0), // 0x000020B0
	gsSP1Triangle(3, 5, 12, 0), // 0x000020B8
	gsSP1Triangle(5, 1, 11, 0), // 0x000020C0
	gsSP1Triangle(6, 13, 15, 0), // 0x000020C8
	gsSP1Triangle(8, 6, 9, 0), // 0x000020D0
	gsSPVertex(_sasatest_room_0_vertices_00000690, 5, 0), // 0x000020D8
	gsSPVertex(_sasatest_room_0_vertices_000006F0, 2, 5), // 0x000020E0
	gsSPVertex(_sasatest_room_0_vertices_00000730, 1, 7), // 0x000020E8
	gsSPVertex(_sasatest_room_0_vertices_000007B0, 2, 8), // 0x000020F0
	gsSPVertex(_sasatest_room_0_vertices_00000D90, 2, 10), // 0x000020F8
	gsSPVertex(_sasatest_room_0_vertices_00000E50, 2, 12), // 0x00002100
	gsSP1Triangle(0, 12, 8, 0), // 0x00002108
	gsSP1Triangle(1, 0, 9, 0), // 0x00002110
	gsSP1Triangle(4, 2, 3, 0), // 0x00002118
	gsSP1Triangle(2, 10, 11, 0), // 0x00002120
	gsSP1Triangle(3, 11, 13, 0), // 0x00002128
	gsSP1Triangle(6, 3, 7, 0), // 0x00002130
	gsSP1Triangle(5, 4, 6, 0), // 0x00002138
	gsSPVertex(_sasatest_room_0_vertices_000006E0, 10, 0), // 0x00002140
	gsSPVertex(_sasatest_room_0_vertices_00000BB0, 1, 10), // 0x00002148
	gsSPVertex(_sasatest_room_0_vertices_00000E60, 3, 11), // 0x00002150
	gsSPVertex(_sasatest_room_0_vertices_00000EA0, 1, 14), // 0x00002158
	gsSPVertex(_sasatest_room_0_vertices_00001160, 1, 15), // 0x00002160
	gsSP1Triangle(13, 2, 6, 0), // 0x00002168
	gsSP1Triangle(3, 0, 1, 0), // 0x00002170
	gsSP1Triangle(4, 1, 13, 0), // 0x00002178
	gsSP1Triangle(6, 5, 10, 0), // 0x00002180
	gsSP1Triangle(5, 11, 12, 0), // 0x00002188
	gsSP1Triangle(9, 7, 8, 0), // 0x00002190
	gsSP1Triangle(7, 15, 14, 0), // 0x00002198
	gsSPVertex(_sasatest_room_0_vertices_00000760, 8, 0), // 0x000021A0
	gsSPVertex(_sasatest_room_0_vertices_00000B30, 1, 8), // 0x000021A8
	gsSPVertex(_sasatest_room_0_vertices_00000C20, 1, 9), // 0x000021B0
	gsSPVertex(_sasatest_room_0_vertices_00000CC0, 1, 10), // 0x000021B8
	gsSPVertex(_sasatest_room_0_vertices_00000EA0, 1, 11), // 0x000021C0
	gsSPVertex(_sasatest_room_0_vertices_00000EC0, 2, 12), // 0x000021C8
	gsSP1Triangle(0, 11, 8, 0), // 0x000021D0
	gsSP1Triangle(2, 0, 12, 0), // 0x000021D8
	gsSP1Triangle(3, 1, 2, 0), // 0x000021E0
	gsSP1Triangle(4, 2, 13, 0), // 0x000021E8
	gsSP1Triangle(6, 5, 10, 0), // 0x000021F0
	gsSP1Triangle(7, 6, 9, 0), // 0x000021F8
	gsSPVertex(_sasatest_room_0_vertices_00000650, 3, 0), // 0x00002200
	gsSPVertex(_sasatest_room_0_vertices_00000720, 1, 3), // 0x00002208
	gsSPVertex(_sasatest_room_0_vertices_000007D0, 4, 4), // 0x00002210
	gsSPVertex(_sasatest_room_0_vertices_00000B40, 2, 8), // 0x00002218
	gsSPVertex(_sasatest_room_0_vertices_00000DB0, 2, 10), // 0x00002220
	gsSPVertex(_sasatest_room_0_vertices_00000E20, 1, 12), // 0x00002228
	gsSPVertex(_sasatest_room_0_vertices_00000E90, 1, 13), // 0x00002230
	gsSP1Triangle(8, 4, 9, 0), // 0x00002238
	gsSP1Triangle(5, 3, 13, 0), // 0x00002240
	gsSP1Triangle(6, 5, 10, 0), // 0x00002248
	gsSP1Triangle(7, 6, 11, 0), // 0x00002250
	gsSP1Triangle(1, 7, 12, 0), // 0x00002258
	gsSP1Triangle(2, 1, 0, 0), // 0x00002260
	gsSPVertex(_sasatest_room_0_vertices_00000810, 10, 0), // 0x00002268
	gsSPVertex(_sasatest_room_0_vertices_000009D0, 1, 10), // 0x00002270
	gsSPVertex(_sasatest_room_0_vertices_00000EE0, 3, 11), // 0x00002278
	gsSP1Triangle(1, 0, 2, 0), // 0x00002280
	gsSP1Triangle(6, 2, 5, 0), // 0x00002288
	gsSP1Triangle(2, 4, 3, 0), // 0x00002290
	gsSP1Triangle(3, 10, 11, 0), // 0x00002298
	gsSP1Triangle(5, 3, 12, 0), // 0x000022A0
	gsSP1Triangle(8, 5, 13, 0), // 0x000022A8
	gsSP1Triangle(7, 1, 6, 0), // 0x000022B0
	gsSP1Triangle(9, 6, 8, 0), // 0x000022B8
	gsSPVertex(_sasatest_room_0_vertices_00000890, 1, 0), // 0x000022C0
	gsSPVertex(_sasatest_room_0_vertices_000008B0, 6, 1), // 0x000022C8
	gsSPVertex(_sasatest_room_0_vertices_00000A70, 2, 7), // 0x000022D0
	gsSPVertex(_sasatest_room_0_vertices_00000F10, 1, 9), // 0x000022D8
	gsSPVertex(_sasatest_room_0_vertices_00000F40, 3, 10), // 0x000022E0
	gsSPVertex(_sasatest_room_0_vertices_00001170, 1, 13), // 0x000022E8
	gsSP1Triangle(1, 0, 9, 0), // 0x000022F0
	gsSP1Triangle(4, 2, 3, 0), // 0x000022F8
	gsSP1Triangle(2, 13, 10, 0), // 0x00002300
	gsSP1Triangle(3, 10, 11, 0), // 0x00002308
	gsSP1Triangle(5, 3, 7, 0), // 0x00002310
	gsSP1Triangle(6, 4, 5, 0), // 0x00002318
	gsSP1Triangle(12, 5, 8, 0), // 0x00002320
	gsSPVertex(_sasatest_room_0_vertices_00000910, 10, 0), // 0x00002328
	gsSPVertex(_sasatest_room_0_vertices_000009D0, 1, 10), // 0x00002330
	gsSPVertex(_sasatest_room_0_vertices_00000A40, 1, 11), // 0x00002338
	gsSPVertex(_sasatest_room_0_vertices_00000AD0, 1, 12), // 0x00002340
	gsSPVertex(_sasatest_room_0_vertices_00000F30, 1, 13), // 0x00002348
	gsSPVertex(_sasatest_room_0_vertices_00000F60, 2, 14), // 0x00002350
	gsSP1Triangle(2, 0, 1, 0), // 0x00002358
	gsSP1Triangle(1, 4, 3, 0), // 0x00002360
	gsSP1Triangle(6, 1, 5, 0), // 0x00002368
	gsSP1Triangle(3, 11, 12, 0), // 0x00002370
	gsSP1Triangle(5, 3, 15, 0), // 0x00002378
	gsSP1Triangle(10, 5, 13, 0), // 0x00002380
	gsSP1Triangle(9, 8, 7, 0), // 0x00002388
	gsSPVertex(_sasatest_room_0_vertices_00000810, 1, 0), // 0x00002390
	gsSPVertex(_sasatest_room_0_vertices_00000850, 1, 1), // 0x00002398
	gsSPVertex(_sasatest_room_0_vertices_00000930, 1, 2), // 0x000023A0
	gsSPVertex(_sasatest_room_0_vertices_00000970, 2, 3), // 0x000023A8
	gsSPVertex(_sasatest_room_0_vertices_000009B0, 6, 5), // 0x000023B0
	gsSPVertex(_sasatest_room_0_vertices_00000A20, 1, 11), // 0x000023B8
	gsSPVertex(_sasatest_room_0_vertices_00000F60, 1, 12), // 0x000023C0
	gsSPVertex(_sasatest_room_0_vertices_00000F90, 3, 13), // 0x000023C8
	gsSP1Triangle(4, 12, 13, 0), // 0x000023D0
	gsSP1Triangle(5, 13, 15, 0), // 0x000023D8
	gsSP1Triangle(14, 4, 5, 0), // 0x000023E0
	gsSP1Triangle(6, 2, 3, 0), // 0x000023E8
	gsSP1Triangle(1, 3, 7, 0), // 0x000023F0
	gsSP1Triangle(0, 6, 1, 0), // 0x000023F8
	gsSP1Triangle(8, 10, 9, 0), // 0x00002400
	gsSPVertex(_sasatest_room_0_vertices_00000900, 2, 0), // 0x00002408
	gsSPVertex(_sasatest_room_0_vertices_00000950, 1, 2), // 0x00002410
	gsSPVertex(_sasatest_room_0_vertices_00000990, 1, 3), // 0x00002418
	gsSPVertex(_sasatest_room_0_vertices_000009E0, 2, 4), // 0x00002420
	gsSPVertex(_sasatest_room_0_vertices_00000A10, 4, 6), // 0x00002428
	gsSPVertex(_sasatest_room_0_vertices_00000AC0, 1, 10), // 0x00002430
	gsSPVertex(_sasatest_room_0_vertices_00000F60, 1, 11), // 0x00002438
	gsSPVertex(_sasatest_room_0_vertices_00000FC0, 3, 12), // 0x00002440
	gsSP1Triangle(7, 5, 6, 0), // 0x00002448
	gsSP1Triangle(5, 13, 12, 0), // 0x00002450
	gsSP1Triangle(6, 12, 14, 0), // 0x00002458
	gsSP1Triangle(9, 6, 10, 0), // 0x00002460
	gsSP1Triangle(8, 4, 7, 0), // 0x00002468
	gsSP1Triangle(2, 7, 9, 0), // 0x00002470
	gsSP1Triangle(1, 8, 2, 0), // 0x00002478
	gsSP1Triangle(3, 0, 11, 0), // 0x00002480
	gsSPVertex(_sasatest_room_0_vertices_00000600, 1, 0), // 0x00002488
	gsSPVertex(_sasatest_room_0_vertices_000009A0, 1, 1), // 0x00002490
	gsSPVertex(_sasatest_room_0_vertices_00000A00, 1, 2), // 0x00002498
	gsSPVertex(_sasatest_room_0_vertices_00000A50, 5, 3), // 0x000024A0
	gsSPVertex(_sasatest_room_0_vertices_00000F50, 1, 8), // 0x000024A8
	gsSPVertex(_sasatest_room_0_vertices_00000F80, 1, 9), // 0x000024B0
	gsSPVertex(_sasatest_room_0_vertices_00000FA0, 2, 10), // 0x000024B8
	gsSPVertex(_sasatest_room_0_vertices_00000FD0, 1, 12), // 0x000024C0
	gsSPVertex(_sasatest_room_0_vertices_00000FF0, 2, 13), // 0x000024C8
	gsSP1Triangle(2, 3, 12, 0), // 0x000024D0
	gsSP1Triangle(4, 1, 10, 0), // 0x000024D8
	gsSP1Triangle(3, 4, 14, 0), // 0x000024E0
	gsSP1Triangle(6, 5, 0, 0), // 0x000024E8
	gsSP1Triangle(5, 8, 9, 0), // 0x000024F0
	gsSP1Triangle(7, 11, 13, 0), // 0x000024F8
	gsSPVertex(_sasatest_room_0_vertices_00000570, 1, 0), // 0x00002500
	gsSPVertex(_sasatest_room_0_vertices_000005B0, 1, 1), // 0x00002508
	gsSPVertex(_sasatest_room_0_vertices_00000600, 1, 2), // 0x00002510
	gsSPVertex(_sasatest_room_0_vertices_00000630, 1, 3), // 0x00002518
	gsSPVertex(_sasatest_room_0_vertices_00000AA0, 5, 4), // 0x00002520
	gsSPVertex(_sasatest_room_0_vertices_00000B10, 1, 9), // 0x00002528
	gsSPVertex(_sasatest_room_0_vertices_00000E30, 1, 10), // 0x00002530
	gsSPVertex(_sasatest_room_0_vertices_00000F80, 1, 11), // 0x00002538
	gsSPVertex(_sasatest_room_0_vertices_00000FE0, 1, 12), // 0x00002540
	gsSPVertex(_sasatest_room_0_vertices_00001020, 1, 13), // 0x00002548
	gsSPVertex(_sasatest_room_0_vertices_00001040, 1, 14), // 0x00002550
	gsSPVertex(_sasatest_room_0_vertices_00001180, 1, 15), // 0x00002558
	gsSP1Triangle(5, 13, 3, 0), // 0x00002560
	gsSP1Triangle(6, 12, 0, 0), // 0x00002568
	gsSP1Triangle(7, 6, 1, 0), // 0x00002570
	gsSP1Triangle(2, 11, 10, 0), // 0x00002578
	gsSP1Triangle(4, 15, 13, 0), // 0x00002580
	gsSP1Triangle(9, 8, 14, 0), // 0x00002588
	gsSPVertex(_sasatest_room_0_vertices_00000AE0, 4, 0), // 0x00002590
	gsSPVertex(_sasatest_room_0_vertices_00000B30, 5, 4), // 0x00002598
	gsSPVertex(_sasatest_room_0_vertices_00000B90, 1, 9), // 0x000025A0
	gsSPVertex(_sasatest_room_0_vertices_00000C20, 1, 10), // 0x000025A8
	gsSPVertex(_sasatest_room_0_vertices_00000CB0, 1, 11), // 0x000025B0
	gsSPVertex(_sasatest_room_0_vertices_00000CF0, 1, 12), // 0x000025B8
	gsSPVertex(_sasatest_room_0_vertices_00001030, 1, 13), // 0x000025C0
	gsSPVertex(_sasatest_room_0_vertices_00001050, 2, 14), // 0x000025C8
	gsSP1Triangle(0, 14, 13, 0), // 0x000025D0
	gsSP1Triangle(4, 1, 3, 0), // 0x000025D8
	gsSP1Triangle(1, 2, 0, 0), // 0x000025E0
	gsSP1Triangle(9, 3, 15, 0), // 0x000025E8
	gsSP1Triangle(7, 5, 8, 0), // 0x000025F0
	gsSP1Triangle(8, 6, 11, 0), // 0x000025F8
	gsSP1Triangle(6, 10, 12, 0), // 0x00002600
	gsSPVertex(_sasatest_room_0_vertices_00000B00, 1, 0), // 0x00002608
	gsSPVertex(_sasatest_room_0_vertices_00000B20, 1, 1), // 0x00002610
	gsSPVertex(_sasatest_room_0_vertices_00000B70, 5, 2), // 0x00002618
	gsSPVertex(_sasatest_room_0_vertices_00000C60, 2, 7), // 0x00002620
	gsSPVertex(_sasatest_room_0_vertices_00000E70, 1, 9), // 0x00002628
	gsSPVertex(_sasatest_room_0_vertices_00000EB0, 1, 10), // 0x00002630
	gsSPVertex(_sasatest_room_0_vertices_00001050, 1, 11), // 0x00002638
	gsSPVertex(_sasatest_room_0_vertices_000010A0, 2, 12), // 0x00002640
	gsSP1Triangle(7, 2, 8, 0), // 0x00002648
	gsSP1Triangle(5, 3, 13, 0), // 0x00002650
	gsSP1Triangle(3, 4, 12, 0), // 0x00002658
	gsSP1Triangle(1, 6, 0, 0), // 0x00002660
	gsSP1Triangle(6, 9, 10, 0), // 0x00002668
	gsSP1Triangle(0, 10, 11, 0), // 0x00002670
	gsSPVertex(_sasatest_room_0_vertices_00000BC0, 9, 0), // 0x00002678
	gsSPVertex(_sasatest_room_0_vertices_00000CC0, 3, 9), // 0x00002680
	gsSPVertex(_sasatest_room_0_vertices_000010D0, 2, 12), // 0x00002688
	gsSP1Triangle(4, 0, 13, 0), // 0x00002690
	gsSP1Triangle(0, 3, 12, 0), // 0x00002698
	gsSP1Triangle(2, 1, 0, 0), // 0x000026A0
	gsSP1Triangle(9, 5, 10, 0), // 0x000026A8
	gsSP1Triangle(6, 9, 11, 0), // 0x000026B0
	gsSP1Triangle(7, 8, 1, 0), // 0x000026B8
	gsSPVertex(_sasatest_room_0_vertices_00000B60, 1, 0), // 0x000026C0
	gsSPVertex(_sasatest_room_0_vertices_00000BD0, 1, 1), // 0x000026C8
	gsSPVertex(_sasatest_room_0_vertices_00000BF0, 1, 2), // 0x000026D0
	gsSPVertex(_sasatest_room_0_vertices_00000C50, 7, 3), // 0x000026D8
	gsSPVertex(_sasatest_room_0_vertices_00000D40, 1, 10), // 0x000026E0
	gsSPVertex(_sasatest_room_0_vertices_00001070, 1, 11), // 0x000026E8
	gsSPVertex(_sasatest_room_0_vertices_00001120, 2, 12), // 0x000026F0
	gsSP1Triangle(1, 10, 2, 0), // 0x000026F8
	gsSP1Triangle(3, 0, 4, 0), // 0x00002700
	gsSP1Triangle(6, 4, 7, 0), // 0x00002708
	gsSP1Triangle(7, 5, 12, 0), // 0x00002710
	gsSP1Triangle(5, 9, 11, 0), // 0x00002718
	gsSP1Triangle(8, 7, 13, 0), // 0x00002720
	gsSPVertex(_sasatest_room_0_vertices_00000BA0, 1, 0), // 0x00002728
	gsSPVertex(_sasatest_room_0_vertices_00000C80, 1, 1), // 0x00002730
	gsSPVertex(_sasatest_room_0_vertices_00000CA0, 1, 2), // 0x00002738
	gsSPVertex(_sasatest_room_0_vertices_00000CD0, 8, 3), // 0x00002740
	gsSPVertex(_sasatest_room_0_vertices_00001090, 1, 11), // 0x00002748
	gsSPVertex(_sasatest_room_0_vertices_000010C0, 1, 12), // 0x00002750
	gsSPVertex(_sasatest_room_0_vertices_00001110, 1, 13), // 0x00002758
	gsSP1Triangle(4, 3, 13, 0), // 0x00002760
	gsSP1Triangle(3, 0, 12, 0), // 0x00002768
	gsSP1Triangle(5, 4, 11, 0), // 0x00002770
	gsSP1Triangle(6, 7, 8, 0), // 0x00002778
	gsSP1Triangle(10, 8, 9, 0), // 0x00002780
	gsSP1Triangle(8, 1, 2, 0), // 0x00002788
	gsSPVertex(_sasatest_room_0_vertices_00000BF0, 1, 0), // 0x00002790
	gsSPVertex(_sasatest_room_0_vertices_00000C40, 2, 1), // 0x00002798
	gsSPVertex(_sasatest_room_0_vertices_00000C80, 1, 3), // 0x000027A0
	gsSPVertex(_sasatest_room_0_vertices_00000CA0, 2, 4), // 0x000027A8
	gsSPVertex(_sasatest_room_0_vertices_00000CF0, 3, 6), // 0x000027B0
	gsSPVertex(_sasatest_room_0_vertices_00000D30, 2, 9), // 0x000027B8
	gsSPVertex(_sasatest_room_0_vertices_00001080, 1, 11), // 0x000027C0
	gsSPVertex(_sasatest_room_0_vertices_000010F0, 1, 12), // 0x000027C8
	gsSPVertex(_sasatest_room_0_vertices_00001140, 1, 13), // 0x000027D0
	gsSP1Triangle(9, 4, 13, 0), // 0x000027D8
	gsSP1Triangle(0, 9, 12, 0), // 0x000027E0
	gsSP1Triangle(5, 6, 11, 0), // 0x000027E8
	gsSP1Triangle(1, 7, 10, 0), // 0x000027F0
	gsSP1Triangle(8, 2, 3, 0), // 0x000027F8
	gsDPPipeSync(), // 0x00002800
	gsDPSetPrimColor(0, 1, 0, 0, 255, 255), // 0x00002808
	gsSPVertex(_sasatest_room_0_vertices_00000370, 3, 0), // 0x00002810
	gsSPVertex(_sasatest_room_0_vertices_000003C0, 4, 3), // 0x00002818
	gsSPVertex(_sasatest_room_0_vertices_00000450, 1, 7), // 0x00002820
	gsSPVertex(_sasatest_room_0_vertices_00000510, 1, 8), // 0x00002828
	gsSPVertex(_sasatest_room_0_vertices_000006E0, 1, 9), // 0x00002830
	gsSPVertex(_sasatest_room_0_vertices_00000710, 1, 10), // 0x00002838
	gsSPVertex(_sasatest_room_0_vertices_00000DE0, 1, 11), // 0x00002840
	gsSPVertex(_sasatest_room_0_vertices_00000E10, 1, 12), // 0x00002848
	gsSPVertex(_sasatest_room_0_vertices_00001150, 1, 13), // 0x00002850
	gsSP1Triangle(13, 0, 2, 0), // 0x00002858
	gsSP1Triangle(11, 0, 13, 0), // 0x00002860
	gsSP1Triangle(1, 8, 9, 0), // 0x00002868
	gsSP1Triangle(13, 2, 4, 0), // 0x00002870
	gsSP1Triangle(7, 3, 5, 0), // 0x00002878
	gsSP1Triangle(12, 3, 7, 0), // 0x00002880
	gsSP1Triangle(4, 10, 6, 0), // 0x00002888
	gsSPVertex(_sasatest_room_0_vertices_000003E0, 3, 0), // 0x00002890
	gsSPVertex(_sasatest_room_0_vertices_00000450, 2, 3), // 0x00002898
	gsSPVertex(_sasatest_room_0_vertices_00000510, 2, 5), // 0x000028A0
	gsSPVertex(_sasatest_room_0_vertices_00000560, 3, 7), // 0x000028A8
	gsSPVertex(_sasatest_room_0_vertices_000006D0, 2, 10), // 0x000028B0
	gsSPVertex(_sasatest_room_0_vertices_00000710, 2, 12), // 0x000028B8
	gsSP1Triangle(3, 0, 4, 0), // 0x000028C0
	gsSP1Triangle(4, 0, 2, 0), // 0x000028C8
	gsSP1Triangle(4, 2, 6, 0), // 0x000028D0
	gsSP1Triangle(11, 5, 10, 0), // 0x000028D8
	gsSP1Triangle(1, 12, 13, 0), // 0x000028E0
	gsSP1Triangle(8, 7, 9, 0), // 0x000028E8
	gsSPVertex(_sasatest_room_0_vertices_000004A0, 1, 0), // 0x000028F0
	gsSPVertex(_sasatest_room_0_vertices_00000620, 1, 1), // 0x000028F8
	gsSPVertex(_sasatest_room_0_vertices_00000740, 1, 2), // 0x00002900
	gsSPVertex(_sasatest_room_0_vertices_00000790, 3, 3), // 0x00002908
	gsSPVertex(_sasatest_room_0_vertices_00000AF0, 1, 6), // 0x00002910
	gsSPVertex(_sasatest_room_0_vertices_00000B20, 2, 7), // 0x00002918
	gsSPVertex(_sasatest_room_0_vertices_00000E20, 1, 9), // 0x00002920
	gsSPVertex(_sasatest_room_0_vertices_00000E50, 1, 10), // 0x00002928
	gsSPVertex(_sasatest_room_0_vertices_00000E80, 1, 11), // 0x00002930
	gsSPVertex(_sasatest_room_0_vertices_00000EA0, 1, 12), // 0x00002938
	gsSPVertex(_sasatest_room_0_vertices_00000FF0, 1, 13), // 0x00002940
	gsSPVertex(_sasatest_room_0_vertices_00001160, 1, 14), // 0x00002948
	gsSP1Triangle(13, 1, 0, 0), // 0x00002950
	gsSP1Triangle(9, 3, 10, 0), // 0x00002958
	gsSP1Triangle(10, 4, 5, 0), // 0x00002960
	gsSP1Triangle(10, 3, 4, 0), // 0x00002968
	gsSP1Triangle(11, 2, 14, 0), // 0x00002970
	gsSP1Triangle(14, 2, 7, 0), // 0x00002978
	gsSP1Triangle(12, 6, 8, 0), // 0x00002980
	gsSP1Triangle(14, 7, 12, 0), // 0x00002988
	gsSP1Triangle(12, 7, 6, 0), // 0x00002990
	gsSPVertex(_sasatest_room_0_vertices_000005F0, 1, 0), // 0x00002998
	gsSPVertex(_sasatest_room_0_vertices_00000620, 1, 1), // 0x000029A0
	gsSPVertex(_sasatest_room_0_vertices_000007A0, 2, 2), // 0x000029A8
	gsSPVertex(_sasatest_room_0_vertices_000009B0, 1, 4), // 0x000029B0
	gsSPVertex(_sasatest_room_0_vertices_00000A80, 2, 5), // 0x000029B8
	gsSPVertex(_sasatest_room_0_vertices_00000C10, 1, 7), // 0x000029C0
	gsSPVertex(_sasatest_room_0_vertices_00000F60, 1, 8), // 0x000029C8
	gsSPVertex(_sasatest_room_0_vertices_00000F90, 3, 9), // 0x000029D0
	gsSPVertex(_sasatest_room_0_vertices_00000FF0, 1, 12), // 0x000029D8
	gsSPVertex(_sasatest_room_0_vertices_00001180, 1, 13), // 0x000029E0
	gsSP1Triangle(3, 2, 7, 0), // 0x000029E8
	gsSP1Triangle(11, 0, 1, 0), // 0x000029F0
	gsSP1Triangle(11, 1, 12, 0), // 0x000029F8
	gsSP1Triangle(9, 5, 0, 0), // 0x00002A00
	gsSP1Triangle(9, 0, 11, 0), // 0x00002A08
	gsSP1Triangle(8, 5, 9, 0), // 0x00002A10
	gsSP1Triangle(10, 4, 13, 0), // 0x00002A18
	gsSP1Triangle(13, 4, 6, 0), // 0x00002A20
	gsSPVertex(_sasatest_room_0_vertices_00000560, 2, 0), // 0x00002A28
	gsSPVertex(_sasatest_room_0_vertices_00000630, 1, 2), // 0x00002A30
	gsSPVertex(_sasatest_room_0_vertices_00000A90, 3, 3), // 0x00002A38
	gsSPVertex(_sasatest_room_0_vertices_00000FC0, 3, 6), // 0x00002A40
	gsSPVertex(_sasatest_room_0_vertices_00001010, 2, 9), // 0x00002A48
	gsSPVertex(_sasatest_room_0_vertices_00001180, 1, 11), // 0x00002A50
	gsSP1Triangle(7, 4, 6, 0), // 0x00002A58
	gsSP1Triangle(6, 4, 5, 0), // 0x00002A60
	gsSP1Triangle(6, 5, 8, 0), // 0x00002A68
	gsSP1Triangle(10, 3, 9, 0), // 0x00002A70
	gsSP1Triangle(11, 3, 10, 0), // 0x00002A78
	gsSP1Triangle(10, 9, 2, 0), // 0x00002A80
	gsSP1Triangle(8, 5, 0, 0), // 0x00002A88
	gsSP1Triangle(8, 0, 1, 0), // 0x00002A90
	gsDPPipeSync(), // 0x00002A98
	gsDPSetPrimColor(0, 1, 0, 53, 0, 255), // 0x00002AA0
	gsSPVertex(_sasatest_room_0_vertices_00000410, 1, 0), // 0x00002AA8
	gsSPVertex(_sasatest_room_0_vertices_00000430, 1, 1), // 0x00002AB0
	gsSPVertex(_sasatest_room_0_vertices_00000480, 1, 2), // 0x00002AB8
	gsSPVertex(_sasatest_room_0_vertices_00000540, 1, 3), // 0x00002AC0
	gsSPVertex(_sasatest_room_0_vertices_000005D0, 2, 4), // 0x00002AC8
	gsSPVertex(_sasatest_room_0_vertices_00000670, 2, 6), // 0x00002AD0
	gsSPVertex(_sasatest_room_0_vertices_00001190, 8, 8), // 0x00002AD8
	gsSP1Triangle(8, 1, 2, 0), // 0x00002AE0
	gsSP1Triangle(9, 0, 1, 0), // 0x00002AE8
	gsSP1Triangle(10, 2, 3, 0), // 0x00002AF0
	gsSP1Triangle(11, 3, 6, 0), // 0x00002AF8
	gsSP1Triangle(12, 5, 0, 0), // 0x00002B00
	gsSP1Triangle(13, 4, 5, 0), // 0x00002B08
	gsSP1Triangle(14, 6, 7, 0), // 0x00002B10
	gsSPVertex(_sasatest_room_0_vertices_000005D0, 1, 0), // 0x00002B18
	gsSPVertex(_sasatest_room_0_vertices_00000680, 1, 1), // 0x00002B20
	gsSPVertex(_sasatest_room_0_vertices_000006A0, 1, 2), // 0x00002B28
	gsSPVertex(_sasatest_room_0_vertices_000007D0, 1, 3), // 0x00002B30
	gsSPVertex(_sasatest_room_0_vertices_00000AD0, 1, 4), // 0x00002B38
	gsSPVertex(_sasatest_room_0_vertices_00000EE0, 3, 5), // 0x00002B40
	gsSPVertex(_sasatest_room_0_vertices_00000F30, 1, 8), // 0x00002B48
	gsSPVertex(_sasatest_room_0_vertices_00000F70, 1, 9), // 0x00002B50
	gsSPVertex(_sasatest_room_0_vertices_00001200, 2, 10), // 0x00002B58
	gsSPVertex(_sasatest_room_0_vertices_00001300, 3, 12), // 0x00002B60
	gsSP1Triangle(10, 1, 2, 0), // 0x00002B68
	gsSP1Triangle(11, 2, 3, 0), // 0x00002B70
	gsSP1Triangle(9, 4, 0, 0), // 0x00002B78
	gsSP1Triangle(6, 5, 12, 0), // 0x00002B80
	gsSP1Triangle(5, 8, 13, 0), // 0x00002B88
	gsSP1Triangle(7, 6, 14, 0), // 0x00002B90
	gsSPVertex(_sasatest_room_0_vertices_00000B40, 1, 0), // 0x00002B98
	gsSPVertex(_sasatest_room_0_vertices_00000C40, 1, 1), // 0x00002BA0
	gsSPVertex(_sasatest_room_0_vertices_00000F00, 4, 2), // 0x00002BA8
	gsSPVertex(_sasatest_room_0_vertices_00000F70, 1, 6), // 0x00002BB0
	gsSPVertex(_sasatest_room_0_vertices_000011E0, 1, 7), // 0x00002BB8
	gsSPVertex(_sasatest_room_0_vertices_00001210, 3, 8), // 0x00002BC0
	gsSPVertex(_sasatest_room_0_vertices_00001250, 1, 11), // 0x00002BC8
	gsSPVertex(_sasatest_room_0_vertices_00001330, 2, 12), // 0x00002BD0
	gsSP1Triangle(3, 2, 12, 0), // 0x00002BD8
	gsSP1Triangle(4, 3, 13, 0), // 0x00002BE0
	gsSP1Triangle(5, 6, 7, 0), // 0x00002BE8
	gsSP1Triangle(9, 8, 0, 0), // 0x00002BF0
	gsSP1Triangle(10, 11, 1, 0), // 0x00002BF8
	gsSPVertex(_sasatest_room_0_vertices_00000B60, 1, 0), // 0x00002C00
	gsSPVertex(_sasatest_room_0_vertices_00000C50, 1, 1), // 0x00002C08
	gsSPVertex(_sasatest_room_0_vertices_00000D00, 2, 2), // 0x00002C10
	gsSPVertex(_sasatest_room_0_vertices_00001220, 1, 4), // 0x00002C18
	gsSPVertex(_sasatest_room_0_vertices_00001240, 6, 5), // 0x00002C20
	gsSPVertex(_sasatest_room_0_vertices_00001340, 3, 11), // 0x00002C28
	gsSP1Triangle(5, 8, 1, 0), // 0x00002C30
	gsSP1Triangle(6, 7, 2, 0), // 0x00002C38
	gsSP1Triangle(7, 5, 3, 0), // 0x00002C40
	gsSP1Triangle(8, 4, 0, 0), // 0x00002C48
	gsSP1Triangle(9, 12, 13, 0), // 0x00002C50
	gsSP1Triangle(10, 11, 12, 0), // 0x00002C58
	gsSPVertex(_sasatest_room_0_vertices_00001250, 1, 0), // 0x00002C60
	gsSPVertex(_sasatest_room_0_vertices_000012A0, 6, 1), // 0x00002C68
	gsSPVertex(_sasatest_room_0_vertices_00001360, 6, 7), // 0x00002C70
	gsSP1Triangle(1, 7, 8, 0), // 0x00002C78
	gsSP1Triangle(2, 9, 10, 0), // 0x00002C80
	gsSP1Triangle(3, 8, 9, 0), // 0x00002C88
	gsSP1Triangle(4, 10, 11, 0), // 0x00002C90
	gsSP1Triangle(5, 12, 0, 0), // 0x00002C98
	gsSP1Triangle(6, 11, 12, 0), // 0x00002CA0
	gsDPPipeSync(), // 0x00002CA8
	gsDPSetPrimColor(0, 1, 0, 120, 0, 255), // 0x00002CB0
	gsSPVertex(_sasatest_room_0_vertices_00001320, 5, 0), // 0x00002CB8
	gsSPVertex(_sasatest_room_0_vertices_00001380, 2, 5), // 0x00002CC0
	gsSPVertex(_sasatest_room_0_vertices_000013C0, 7, 7), // 0x00002CC8
	gsSP1Triangle(3, 7, 8, 0), // 0x00002CD0
	gsSP1Triangle(4, 8, 9, 0), // 0x00002CD8
	gsSP1Triangle(5, 10, 11, 0), // 0x00002CE0
	gsSP1Triangle(6, 11, 12, 0), // 0x00002CE8
	gsSP1Triangle(2, 1, 7, 0), // 0x00002CF0
	gsSP1Triangle(1, 0, 13, 0), // 0x00002CF8
	gsSPVertex(_sasatest_room_0_vertices_00001190, 2, 0), // 0x00002D00
	gsSPVertex(_sasatest_room_0_vertices_000011D0, 2, 2), // 0x00002D08
	gsSPVertex(_sasatest_room_0_vertices_00001260, 1, 4), // 0x00002D10
	gsSPVertex(_sasatest_room_0_vertices_00001300, 3, 5), // 0x00002D18
	gsSPVertex(_sasatest_room_0_vertices_00001370, 1, 8), // 0x00002D20
	gsSPVertex(_sasatest_room_0_vertices_000013B0, 1, 9), // 0x00002D28
	gsSPVertex(_sasatest_room_0_vertices_000013E0, 2, 10), // 0x00002D30
	gsSPVertex(_sasatest_room_0_vertices_00001430, 3, 12), // 0x00002D38
	gsSPVertex(_sasatest_room_0_vertices_000014D0, 1, 15), // 0x00002D40
	gsSP1Triangle(7, 5, 15, 0), // 0x00002D48
	gsSP1Triangle(5, 6, 12, 0), // 0x00002D50
	gsSP1Triangle(6, 3, 2, 0), // 0x00002D58
	gsSP1Triangle(12, 2, 1, 0), // 0x00002D60
	gsSP1Triangle(13, 1, 0, 0), // 0x00002D68
	gsSP1Triangle(8, 10, 11, 0), // 0x00002D70
	gsSP1Triangle(9, 14, 4, 0), // 0x00002D78
	gsSPVertex(_sasatest_room_0_vertices_000011B0, 2, 1), // 0x00002D80
	gsSPVertex(_sasatest_room_0_vertices_000011F0, 2, 3), // 0x00002D88
	gsSPVertex(_sasatest_room_0_vertices_00001240, 1, 5), // 0x00002D90
	gsSPVertex(_sasatest_room_0_vertices_00001270, 1, 6), // 0x00002D98
	gsSPVertex(_sasatest_room_0_vertices_000013A0, 1, 7), // 0x00002DA0
	gsSPVertex(_sasatest_room_0_vertices_00001410, 1, 8), // 0x00002DA8
	gsSPVertex(_sasatest_room_0_vertices_00001450, 5, 9), // 0x00002DB0
	gsSPVertex(_sasatest_room_0_vertices_000014C0, 1, 14), // 0x00002DB8
	gsSP1Triangle(9, 10, 5, 0), // 0x00002DC0
	gsSP1Triangle(10, 14, 6, 0), // 0x00002DC8
	gsSP1Triangle(11, 0, 1, 0), // 0x00002DD0
	gsSP1Triangle(12, 3, 4, 0), // 0x00002DD8
	gsSP1Triangle(13, 2, 3, 0), // 0x00002DE0
	gsSP1Triangle(7, 8, 9, 0), // 0x00002DE8
	gsSPVertex(_sasatest_room_0_vertices_000011B0, 2, 0), // 0x00002DF0
	gsSPVertex(_sasatest_room_0_vertices_00001200, 3, 2), // 0x00002DF8
	gsSPVertex(_sasatest_room_0_vertices_000014A0, 3, 5), // 0x00002E00
	gsSP1Triangle(5, 0, 1, 0), // 0x00002E08
	gsSP1Triangle(6, 2, 3, 0), // 0x00002E10
	gsSP1Triangle(7, 6, 4, 0), // 0x00002E18
	gsDPPipeSync(), // 0x00002E20
	gsDPSetPrimColor(0, 1, 0, 174, 0, 255), // 0x00002E28
	gsSPVertex(_sasatest_room_0_vertices_000013E0, 2, 0), // 0x00002E30
	gsSPVertex(_sasatest_room_0_vertices_00001440, 1, 2), // 0x00002E38
	gsSPVertex(_sasatest_room_0_vertices_00001470, 2, 3), // 0x00002E40
	gsSPVertex(_sasatest_room_0_vertices_000014A0, 3, 5), // 0x00002E48
	gsSPVertex(_sasatest_room_0_vertices_000014E0, 7, 8), // 0x00002E50
	gsSP1Triangle(8, 9, 7, 0), // 0x00002E58
	gsSP1Triangle(9, 4, 6, 0), // 0x00002E60
	gsSP1Triangle(10, 2, 3, 0), // 0x00002E68
	gsSP1Triangle(11, 3, 5, 0), // 0x00002E70
	gsSP1Triangle(0, 12, 13, 0), // 0x00002E78
	gsSP1Triangle(1, 13, 14, 0), // 0x00002E80
	gsSPVertex(_sasatest_room_0_vertices_000013C0, 1, 0), // 0x00002E88
	gsSPVertex(_sasatest_room_0_vertices_00001400, 3, 1), // 0x00002E90
	gsSPVertex(_sasatest_room_0_vertices_00001460, 1, 4), // 0x00002E98
	gsSPVertex(_sasatest_room_0_vertices_00001480, 3, 5), // 0x00002EA0
	gsSPVertex(_sasatest_room_0_vertices_000014D0, 2, 8), // 0x00002EA8
	gsSPVertex(_sasatest_room_0_vertices_00001500, 1, 10), // 0x00002EB0
	gsSPVertex(_sasatest_room_0_vertices_00001540, 4, 11), // 0x00002EB8
	gsSP1Triangle(0, 3, 14, 0), // 0x00002EC0
	gsSP1Triangle(3, 8, 10, 0), // 0x00002EC8
	gsSP1Triangle(1, 11, 9, 0), // 0x00002ED0
	gsSP1Triangle(2, 9, 4, 0), // 0x00002ED8
	gsSP1Triangle(12, 7, 6, 0), // 0x00002EE0
	gsSP1Triangle(13, 6, 5, 0), // 0x00002EE8
	gsSPVertex(_sasatest_room_0_vertices_000013D0, 1, 0), // 0x00002EF0
	gsSPVertex(_sasatest_room_0_vertices_00001430, 2, 1), // 0x00002EF8
	gsSPVertex(_sasatest_room_0_vertices_000014D0, 1, 3), // 0x00002F00
	gsSPVertex(_sasatest_room_0_vertices_00001520, 1, 4), // 0x00002F08
	gsSPVertex(_sasatest_room_0_vertices_00001570, 1, 5), // 0x00002F10
	gsSP1Triangle(3, 1, 2, 0), // 0x00002F18
	gsSP1Triangle(0, 5, 4, 0), // 0x00002F20
	gsDPPipeSync(), // 0x00002F28
	gsDPSetPrimColor(0, 1, 0, 255, 0, 255), // 0x00002F30
	gsSPVertex(_sasatest_room_0_vertices_000014F0, 9, 0), // 0x00002F38
	gsSP1Triangle(5, 7, 0, 0), // 0x00002F40
	gsSP1Triangle(4, 6, 7, 0), // 0x00002F48
	gsSP1Triangle(3, 2, 6, 0), // 0x00002F50
	gsSP1Triangle(8, 1, 2, 0), // 0x00002F58
	gsDPPipeSync(), // 0x00002F60
	gsDPSetPrimColor(0, 1, 0, 255, 255, 255), // 0x00002F68
	gsSPVertex(_sasatest_room_0_vertices_00000370, 4, 0), // 0x00002F70
	gsSPVertex(_sasatest_room_0_vertices_000003C0, 2, 4), // 0x00002F78
	gsSPVertex(_sasatest_room_0_vertices_000004F0, 1, 6), // 0x00002F80
	gsSPVertex(_sasatest_room_0_vertices_000006E0, 1, 7), // 0x00002F88
	gsSPVertex(_sasatest_room_0_vertices_00000710, 1, 8), // 0x00002F90
	gsSPVertex(_sasatest_room_0_vertices_00000DD0, 5, 9), // 0x00002F98
	gsSPVertex(_sasatest_room_0_vertices_00001150, 1, 14), // 0x00002FA0
	gsSP1Triangle(12, 3, 0, 0), // 0x00002FA8
	gsSP1Triangle(10, 12, 0, 0), // 0x00002FB0
	gsSP1Triangle(2, 1, 7, 0), // 0x00002FB8
	gsSP1Triangle(5, 2, 8, 0), // 0x00002FC0
	gsSP1Triangle(2, 7, 8, 0), // 0x00002FC8
	gsSP1Triangle(11, 14, 4, 0), // 0x00002FD0
	gsSP1Triangle(13, 11, 4, 0), // 0x00002FD8
	gsSP1Triangle(9, 6, 3, 0), // 0x00002FE0
	gsSP1Triangle(12, 9, 3, 0), // 0x00002FE8
	gsSP1Triangle(11, 10, 14, 0), // 0x00002FF0
	gsSPVertex(_sasatest_room_0_vertices_000003F0, 2, 0), // 0x00002FF8
	gsSPVertex(_sasatest_room_0_vertices_000004A0, 1, 2), // 0x00003000
	gsSPVertex(_sasatest_room_0_vertices_00000520, 1, 3), // 0x00003008
	gsSPVertex(_sasatest_room_0_vertices_00000550, 1, 4), // 0x00003010
	gsSPVertex(_sasatest_room_0_vertices_00000630, 2, 5), // 0x00003018
	gsSPVertex(_sasatest_room_0_vertices_00000720, 1, 7), // 0x00003020
	gsSPVertex(_sasatest_room_0_vertices_000007E0, 2, 8), // 0x00003028
	gsSPVertex(_sasatest_room_0_vertices_00000E80, 2, 10), // 0x00003030
	gsSPVertex(_sasatest_room_0_vertices_00000FF0, 1, 12), // 0x00003038
	gsSPVertex(_sasatest_room_0_vertices_00001010, 1, 13), // 0x00003040
	gsSPVertex(_sasatest_room_0_vertices_00001160, 1, 14), // 0x00003048
	gsSP1Triangle(0, 7, 8, 0), // 0x00003050
	gsSP1Triangle(1, 0, 8, 0), // 0x00003058
	gsSP1Triangle(1, 8, 9, 0), // 0x00003060
	gsSP1Triangle(3, 1, 9, 0), // 0x00003068
	gsSP1Triangle(12, 2, 4, 0), // 0x00003070
	gsSP1Triangle(13, 4, 6, 0), // 0x00003078
	gsSP1Triangle(13, 12, 4, 0), // 0x00003080
	gsSP1Triangle(5, 13, 6, 0), // 0x00003088
	gsSP1Triangle(11, 10, 14, 0), // 0x00003090
	gsSPVertex(_sasatest_room_0_vertices_00000750, 1, 0), // 0x00003098
	gsSPVertex(_sasatest_room_0_vertices_00000770, 1, 1), // 0x000030A0
	gsSPVertex(_sasatest_room_0_vertices_00000790, 1, 2), // 0x000030A8
	gsSPVertex(_sasatest_room_0_vertices_00000AA0, 1, 3), // 0x000030B0
	gsSPVertex(_sasatest_room_0_vertices_00000B30, 1, 4), // 0x000030B8
	gsSPVertex(_sasatest_room_0_vertices_00000B90, 1, 5), // 0x000030C0
	gsSPVertex(_sasatest_room_0_vertices_00000DB0, 2, 6), // 0x000030C8
	gsSPVertex(_sasatest_room_0_vertices_00000E20, 1, 8), // 0x000030D0
	gsSPVertex(_sasatest_room_0_vertices_00000E90, 1, 9), // 0x000030D8
	gsSPVertex(_sasatest_room_0_vertices_00000EC0, 1, 10), // 0x000030E0
	gsSPVertex(_sasatest_room_0_vertices_00000FA0, 1, 11), // 0x000030E8
	gsSPVertex(_sasatest_room_0_vertices_00000FD0, 1, 12), // 0x000030F0
	gsSPVertex(_sasatest_room_0_vertices_00001000, 1, 13), // 0x000030F8
	gsSPVertex(_sasatest_room_0_vertices_00001160, 1, 14), // 0x00003100
	gsSPVertex(_sasatest_room_0_vertices_00001180, 1, 15), // 0x00003108
	gsSP1Triangle(9, 14, 0, 0), // 0x00003110
	gsSP1Triangle(6, 0, 1, 0), // 0x00003118
	gsSP1Triangle(6, 9, 0, 0), // 0x00003120
	gsSP1Triangle(7, 6, 1, 0), // 0x00003128
	gsSP1Triangle(7, 1, 2, 0), // 0x00003130
	gsSP1Triangle(8, 7, 2, 0), // 0x00003138
	gsSP1Triangle(12, 13, 3, 0), // 0x00003140
	gsSP1Triangle(13, 11, 15, 0), // 0x00003148
	gsSP1Triangle(13, 15, 3, 0), // 0x00003150
	gsSP1Triangle(10, 4, 5, 0), // 0x00003158
	gsSPVertex(_sasatest_room_0_vertices_00000B80, 3, 0), // 0x00003160
	gsSPVertex(_sasatest_room_0_vertices_00000C10, 1, 3), // 0x00003168
	gsSPVertex(_sasatest_room_0_vertices_00000EC0, 2, 4), // 0x00003170
	gsSP1Triangle(5, 4, 0, 0), // 0x00003178
	gsSP1Triangle(4, 1, 0, 0), // 0x00003180
	gsSP1Triangle(5, 0, 2, 0), // 0x00003188
	gsSP1Triangle(3, 5, 2, 0), // 0x00003190
	gsDPPipeSync(), // 0x00003198
	gsDPSetPrimColor(0, 1, 53, 53, 0, 255), // 0x000031A0
	gsSPVertex(_sasatest_room_0_vertices_00000410, 1, 0), // 0x000031A8
	gsSPVertex(_sasatest_room_0_vertices_00000430, 1, 1), // 0x000031B0
	gsSPVertex(_sasatest_room_0_vertices_00000480, 1, 2), // 0x000031B8
	gsSPVertex(_sasatest_room_0_vertices_00000540, 1, 3), // 0x000031C0
	gsSPVertex(_sasatest_room_0_vertices_000005E0, 1, 4), // 0x000031C8
	gsSPVertex(_sasatest_room_0_vertices_00000680, 1, 5), // 0x000031D0
	gsSPVertex(_sasatest_room_0_vertices_00001190, 8, 6), // 0x000031D8
	gsSP1Triangle(7, 1, 6, 0), // 0x000031E0
	gsSP1Triangle(6, 2, 8, 0), // 0x000031E8
	gsSP1Triangle(8, 3, 9, 0), // 0x000031F0
	gsSP1Triangle(11, 4, 10, 0), // 0x000031F8
	gsSP1Triangle(10, 0, 7, 0), // 0x00003200
	gsSP1Triangle(12, 5, 13, 0), // 0x00003208
	gsSPVertex(_sasatest_room_0_vertices_000005D0, 1, 0), // 0x00003210
	gsSPVertex(_sasatest_room_0_vertices_00000670, 1, 1), // 0x00003218
	gsSPVertex(_sasatest_room_0_vertices_000006A0, 1, 2), // 0x00003220
	gsSPVertex(_sasatest_room_0_vertices_000007D0, 1, 3), // 0x00003228
	gsSPVertex(_sasatest_room_0_vertices_00000B40, 1, 4), // 0x00003230
	gsSPVertex(_sasatest_room_0_vertices_00000EE0, 1, 5), // 0x00003238
	gsSPVertex(_sasatest_room_0_vertices_00000F70, 1, 6), // 0x00003240
	gsSPVertex(_sasatest_room_0_vertices_000011C0, 1, 7), // 0x00003248
	gsSPVertex(_sasatest_room_0_vertices_000011E0, 4, 8), // 0x00003250
	gsSPVertex(_sasatest_room_0_vertices_00001300, 2, 12), // 0x00003258
	gsSP1Triangle(10, 2, 11, 0), // 0x00003260
	gsSP1Triangle(11, 3, 4, 0), // 0x00003268
	gsSP1Triangle(7, 1, 9, 0), // 0x00003270
	gsSP1Triangle(6, 0, 8, 0), // 0x00003278
	gsSP1Triangle(5, 13, 12, 0), // 0x00003280
	gsSPVertex(_sasatest_room_0_vertices_00000B40, 1, 0), // 0x00003288
	gsSPVertex(_sasatest_room_0_vertices_00000B60, 1, 1), // 0x00003290
	gsSPVertex(_sasatest_room_0_vertices_00000EF0, 5, 2), // 0x00003298
	gsSPVertex(_sasatest_room_0_vertices_000011E0, 1, 7), // 0x000032A0
	gsSPVertex(_sasatest_room_0_vertices_00001220, 1, 8), // 0x000032A8
	gsSPVertex(_sasatest_room_0_vertices_00001290, 1, 9), // 0x000032B0
	gsSPVertex(_sasatest_room_0_vertices_00001300, 5, 10), // 0x000032B8
	gsSP1Triangle(2, 10, 12, 0), // 0x000032C0
	gsSP1Triangle(3, 12, 13, 0), // 0x000032C8
	gsSP1Triangle(4, 13, 14, 0), // 0x000032D0
	gsSP1Triangle(5, 14, 9, 0), // 0x000032D8
	gsSP1Triangle(6, 7, 11, 0), // 0x000032E0
	gsSP1Triangle(8, 0, 1, 0), // 0x000032E8
	gsSPVertex(_sasatest_room_0_vertices_00000B60, 1, 0), // 0x000032F0
	gsSPVertex(_sasatest_room_0_vertices_00000C30, 3, 1), // 0x000032F8
	gsSPVertex(_sasatest_room_0_vertices_00000D00, 2, 4), // 0x00003300
	gsSPVertex(_sasatest_room_0_vertices_00001230, 8, 6), // 0x00003308
	gsSPVertex(_sasatest_room_0_vertices_00001350, 2, 14), // 0x00003310
	gsSP1Triangle(6, 2, 1, 0), // 0x00003318
	gsSP1Triangle(8, 4, 2, 0), // 0x00003320
	gsSP1Triangle(7, 3, 5, 0), // 0x00003328
	gsSP1Triangle(10, 0, 3, 0), // 0x00003330
	gsSP1Triangle(9, 5, 4, 0), // 0x00003338
	gsSP1Triangle(12, 14, 11, 0), // 0x00003340
	gsSP1Triangle(11, 15, 13, 0), // 0x00003348
	gsSPVertex(_sasatest_room_0_vertices_00001230, 1, 0), // 0x00003350
	gsSPVertex(_sasatest_room_0_vertices_00001250, 1, 1), // 0x00003358
	gsSPVertex(_sasatest_room_0_vertices_000012A0, 6, 2), // 0x00003360
	gsSPVertex(_sasatest_room_0_vertices_00001370, 5, 8), // 0x00003368
	gsSP1Triangle(4, 9, 3, 0), // 0x00003370
	gsSP1Triangle(3, 10, 5, 0), // 0x00003378
	gsSP1Triangle(2, 8, 4, 0), // 0x00003380
	gsSP1Triangle(6, 1, 0, 0), // 0x00003388
	gsSP1Triangle(7, 12, 6, 0), // 0x00003390
	gsSP1Triangle(5, 11, 7, 0), // 0x00003398
	gsDPPipeSync(), // 0x000033A0
	gsDPSetPrimColor(0, 1, 120, 120, 0, 255), // 0x000033A8
	gsSPVertex(_sasatest_room_0_vertices_00001330, 8, 0), // 0x000033B0
	gsSPVertex(_sasatest_room_0_vertices_000013C0, 7, 8), // 0x000033B8
	gsSP1Triangle(1, 8, 2, 0), // 0x000033C0
	gsSP1Triangle(2, 9, 3, 0), // 0x000033C8
	gsSP1Triangle(3, 10, 4, 0), // 0x000033D0
	gsSP1Triangle(4, 11, 5, 0), // 0x000033D8
	gsSP1Triangle(5, 12, 6, 0), // 0x000033E0
	gsSP1Triangle(6, 13, 7, 0), // 0x000033E8
	gsSP1Triangle(0, 14, 8, 0), // 0x000033F0
	gsSPVertex(_sasatest_room_0_vertices_000011A0, 1, 0), // 0x000033F8
	gsSPVertex(_sasatest_room_0_vertices_000011D0, 1, 1), // 0x00003400
	gsSPVertex(_sasatest_room_0_vertices_00001240, 3, 2), // 0x00003408
	gsSPVertex(_sasatest_room_0_vertices_00001300, 3, 5), // 0x00003410
	gsSPVertex(_sasatest_room_0_vertices_000013B0, 1, 8), // 0x00003418
	gsSPVertex(_sasatest_room_0_vertices_00001420, 4, 9), // 0x00003420
	gsSPVertex(_sasatest_room_0_vertices_000014D0, 1, 13), // 0x00003428
	gsSP1Triangle(7, 13, 9, 0), // 0x00003430
	gsSP1Triangle(5, 10, 13, 0), // 0x00003438
	gsSP1Triangle(6, 1, 10, 0), // 0x00003440
	gsSP1Triangle(10, 0, 11, 0), // 0x00003448
	gsSP1Triangle(8, 4, 3, 0), // 0x00003450
	gsSP1Triangle(12, 2, 4, 0), // 0x00003458
	gsSPVertex(_sasatest_room_0_vertices_00001190, 1, 0), // 0x00003460
	gsSPVertex(_sasatest_room_0_vertices_000011F0, 1, 1), // 0x00003468
	gsSPVertex(_sasatest_room_0_vertices_00001220, 1, 2), // 0x00003470
	gsSPVertex(_sasatest_room_0_vertices_00001240, 1, 3), // 0x00003478
	gsSPVertex(_sasatest_room_0_vertices_00001270, 1, 4), // 0x00003480
	gsSPVertex(_sasatest_room_0_vertices_000013A0, 2, 5), // 0x00003488
	gsSPVertex(_sasatest_room_0_vertices_00001440, 6, 7), // 0x00003490
	gsSPVertex(_sasatest_room_0_vertices_000014C0, 1, 13), // 0x00003498
	gsSP1Triangle(9, 4, 3, 0), // 0x000034A0
	gsSP1Triangle(13, 2, 4, 0), // 0x000034A8
	gsSP1Triangle(7, 0, 10, 0), // 0x000034B0
	gsSP1Triangle(12, 1, 11, 0), // 0x000034B8
	gsSP1Triangle(5, 8, 6, 0), // 0x000034C0
	gsSPVertex(_sasatest_room_0_vertices_000011B0, 2, 0), // 0x000034C8
	gsSPVertex(_sasatest_room_0_vertices_00001200, 3, 2), // 0x000034D0
	gsSPVertex(_sasatest_room_0_vertices_00001470, 5, 5), // 0x000034D8
	gsSP1Triangle(8, 1, 7, 0), // 0x000034E0
	gsSP1Triangle(5, 0, 8, 0), // 0x000034E8
	gsSP1Triangle(6, 2, 9, 0), // 0x000034F0
	gsSP1Triangle(9, 3, 4, 0), // 0x000034F8
	gsDPPipeSync(), // 0x00003500
	gsDPSetPrimColor(0, 1, 214, 214, 0, 255), // 0x00003508
	gsSPVertex(_sasatest_room_0_vertices_000013D0, 4, 0), // 0x00003510
	gsSPVertex(_sasatest_room_0_vertices_00001460, 2, 4), // 0x00003518
	gsSPVertex(_sasatest_room_0_vertices_000014B0, 2, 6), // 0x00003520
	gsSPVertex(_sasatest_room_0_vertices_000014E0, 7, 8), // 0x00003528
	gsSP1Triangle(9, 6, 7, 0), // 0x00003530
	gsSP1Triangle(8, 7, 4, 0), // 0x00003538
	gsSP1Triangle(10, 5, 11, 0), // 0x00003540
	gsSP1Triangle(0, 12, 1, 0), // 0x00003548
	gsSP1Triangle(1, 13, 2, 0), // 0x00003550
	gsSP1Triangle(2, 14, 3, 0), // 0x00003558
	gsSPVertex(_sasatest_room_0_vertices_000013C0, 2, 0), // 0x00003560
	gsSPVertex(_sasatest_room_0_vertices_00001400, 3, 2), // 0x00003568
	gsSPVertex(_sasatest_room_0_vertices_00001440, 3, 5), // 0x00003570
	gsSPVertex(_sasatest_room_0_vertices_00001490, 1, 8), // 0x00003578
	gsSPVertex(_sasatest_room_0_vertices_000014D0, 2, 9), // 0x00003580
	gsSPVertex(_sasatest_room_0_vertices_00001500, 1, 11), // 0x00003588
	gsSPVertex(_sasatest_room_0_vertices_00001550, 3, 12), // 0x00003590
	gsSP1Triangle(0, 14, 1, 0), // 0x00003598
	gsSP1Triangle(4, 11, 14, 0), // 0x000035A0
	gsSP1Triangle(2, 10, 3, 0), // 0x000035A8
	gsSP1Triangle(3, 7, 6, 0), // 0x000035B0
	gsSP1Triangle(12, 8, 13, 0), // 0x000035B8
	gsSP1Triangle(9, 5, 11, 0), // 0x000035C0
	gsSPVertex(_sasatest_room_0_vertices_00001480, 1, 0), // 0x000035C8
	gsSPVertex(_sasatest_room_0_vertices_000014A0, 1, 1), // 0x000035D0
	gsSPVertex(_sasatest_room_0_vertices_000014F0, 1, 2), // 0x000035D8
	gsSPVertex(_sasatest_room_0_vertices_00001510, 1, 3), // 0x000035E0
	gsSPVertex(_sasatest_room_0_vertices_00001550, 2, 4), // 0x000035E8
	gsSP1Triangle(5, 0, 2, 0), // 0x000035F0
	gsSP1Triangle(3, 1, 4, 0), // 0x000035F8
	gsDPPipeSync(), // 0x00003600
	gsDPSetPrimColor(0, 1, 255, 255, 0, 255), // 0x00003608
	gsSPVertex(_sasatest_room_0_vertices_000014E0, 2, 0), // 0x00003610
	gsSPVertex(_sasatest_room_0_vertices_00001510, 7, 2), // 0x00003618
	gsSP1Triangle(5, 1, 0, 0), // 0x00003620
	gsSP1Triangle(4, 7, 5, 0), // 0x00003628
	gsSP1Triangle(3, 6, 4, 0), // 0x00003630
	gsSP1Triangle(8, 2, 3, 0), // 0x00003638
	gsSPEndDisplayList(), // 0x00003640
};

static u8 unaccounted3648[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


