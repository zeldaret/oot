#include <ultra64.h>
#include <z64.h>
#include "hiral_demo_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "hiral_demo_scene.h"



SCmdAltHeaders _hiral_demo_room_0_set0000_cmd00 = { 0x18, 0, (u32)&_hiral_demo_room_0_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _hiral_demo_room_0_set0000_cmd01 = { 0x16, 0, { 0 }, 0x00 }; // 0x0008
SCmdRoomBehavior _hiral_demo_room_0_set0000_cmd02 = { 0x08, 0x00, 0x00000000 }; // 0x0010
SCmdSkyboxDisables _hiral_demo_room_0_set0000_cmd03 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0018
SCmdTimeSettings _hiral_demo_room_0_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00 }; // 0x0020
SCmdMesh _hiral_demo_room_0_set0000_cmd05 = { 0x0A, 0, (u32)&_hiral_demo_room_0_meshHeader_000000A0 }; // 0x0028
SCmdObjectList _hiral_demo_room_0_set0000_cmd06 = { 0x0B, 0x08, (u32)_hiral_demo_room_0_objectList_00000078 }; // 0x0030
SCmdActorList _hiral_demo_room_0_set0000_cmd07 = { 0x01, 0x01, (u32)_hiral_demo_room_0_actorList_00000088 }; // 0x0038
SCmdEndMarker _hiral_demo_room_0_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _hiral_demo_room_0_alternateHeaders_00000048[] = 
{
	0,
	0,
	0,
	(u32)&_hiral_demo_room_0_set01E0_cmd00,
	(u32)&_hiral_demo_room_0_set0270_cmd00,
	(u32)&_hiral_demo_room_0_set02E0_cmd00,
	(u32)&_hiral_demo_room_0_set0380_cmd00,
	(u32)&_hiral_demo_room_0_set03E0_cmd00,
	(u32)&_hiral_demo_room_0_set0450_cmd00,
	(u32)&_hiral_demo_room_0_set04C0_cmd00,
	(u32)&_hiral_demo_room_0_set0530_cmd00,
	(u32)&_hiral_demo_room_0_set05D0_cmd00,
};

s16 _hiral_demo_room_0_objectList_00000078[] = 
{
	OBJECT_EFC_CRYSTAL_LIGHT,
	OBJECT_EFC_FIRE_BALL,
	OBJECT_EFC_FLASH,
	OBJECT_EFC_LGT_SHOWER,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_GOD_LGT,
	OBJECT_LIGHT_RING,
	OBJECT_TRIFORCE_SPOT,
};

ActorEntry _hiral_demo_room_0_actorList_00000088[1] = 
{
	{ ACTOR_DEMO_KANKYO, 158, 149, 315, 0, 0, 0, 0x0000 }, //0x00000088 
};

static u32 pad98 = 0;
static u32 pad9C = 0;

MeshHeader0 _hiral_demo_room_0_meshHeader_000000A0 = { { 0 }, 0x01, (u32)&_hiral_demo_room_0_meshDListEntry_000000AC, (u32)&(_hiral_demo_room_0_meshDListEntry_000000AC) + sizeof(_hiral_demo_room_0_meshDListEntry_000000AC) };

MeshEntry0 _hiral_demo_room_0_meshDListEntry_000000AC[1] = 
{
	{ 0, (u32)_hiral_demo_room_0_dlist_00000630 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.
static u32 padB8 = 0;
static u32 padBC = 0;

static u8 unaccounted00C0[] = 
{
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xA0, 0x0B, 0x01, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 
	0x01, 0x01, 0x00, 0x00, 0x03, 0x00, 0x01, 0x04, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x9E, 0x00, 0x00, 0x00, 0x99, 0x00, 0x06, 0x00, 0x00, 0xE3, 0x15, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xA0, 0x0B, 0x01, 0x00, 0x00, 0x03, 0x00, 0x01, 0x60, 
	0x01, 0x01, 0x00, 0x00, 0x03, 0x00, 0x01, 0x64, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x9E, 0x00, 0x00, 0x00, 0x99, 0x00, 0x06, 0x00, 0x00, 0xE3, 0x15, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xA0, 0x0B, 0x01, 0x00, 0x00, 0x03, 0x00, 0x01, 0xC0, 
	0x01, 0x01, 0x00, 0x00, 0x03, 0x00, 0x01, 0xC4, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x9E, 0x00, 0x00, 0x00, 0x99, 0x00, 0x06, 0x00, 0x00, 0xE3, 0x15, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

SCmdEchoSettings _hiral_demo_room_0_set01E0_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x01E0
SCmdRoomBehavior _hiral_demo_room_0_set01E0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x01E8
SCmdSkyboxDisables _hiral_demo_room_0_set01E0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x01F0
SCmdTimeSettings _hiral_demo_room_0_set01E0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00 }; // 0x01F8
SCmdMesh _hiral_demo_room_0_set01E0_cmd04 = { 0x0A, 0, (u32)&_hiral_demo_room_0_meshHeader_000000A0 }; // 0x0200
SCmdObjectList _hiral_demo_room_0_set01E0_cmd05 = { 0x0B, 0x08, (u32)_hiral_demo_room_0_objectList_00000220 }; // 0x0208
SCmdActorList _hiral_demo_room_0_set01E0_cmd06 = { 0x01, 0x04, (u32)_hiral_demo_room_0_actorList_00000230 }; // 0x0210
SCmdEndMarker _hiral_demo_room_0_set01E0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0218
s16 _hiral_demo_room_0_objectList_00000220[] = 
{
	OBJECT_EFC_CRYSTAL_LIGHT,
	OBJECT_EFC_FIRE_BALL,
	OBJECT_EFC_FLASH,
	OBJECT_EFC_LGT_SHOWER,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_GOD_LGT,
	OBJECT_LIGHT_RING,
	OBJECT_TRIFORCE_SPOT,
};

ActorEntry _hiral_demo_room_0_actorList_00000230[4] = 
{
	{ ACTOR_DEMO_KANKYO, 158, 149, 315, 0, 0, 0, 0x0000 }, //0x00000230 
	{ ACTOR_DEMO_EFFECT, 4, 95, -59, 0, 0, 0, 0xF404 }, //0x00000240 
	{ ACTOR_DEMO_EFFECT, 150, 139, -99, 0, 0, 0, 0xF505 }, //0x00000250 
	{ ACTOR_DEMO_EFFECT, 165, 166, -104, 0, 0, 0, 0xF606 }, //0x00000260 
};


SCmdEchoSettings _hiral_demo_room_0_set0270_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0270
SCmdRoomBehavior _hiral_demo_room_0_set0270_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0278
SCmdSkyboxDisables _hiral_demo_room_0_set0270_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0280
SCmdTimeSettings _hiral_demo_room_0_set0270_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0288
SCmdMesh _hiral_demo_room_0_set0270_cmd04 = { 0x0A, 0, (u32)&_hiral_demo_room_0_meshHeader_000000A0 }; // 0x0290
SCmdObjectList _hiral_demo_room_0_set0270_cmd05 = { 0x0B, 0x02, (u32)_hiral_demo_room_0_objectList_000002B0 }; // 0x0298
SCmdActorList _hiral_demo_room_0_set0270_cmd06 = { 0x01, 0x02, (u32)_hiral_demo_room_0_actorList_000002B4 }; // 0x02A0
SCmdEndMarker _hiral_demo_room_0_set0270_cmd07 = { 0x14, 0x00, 0x00 }; // 0x02A8
s16 _hiral_demo_room_0_objectList_000002B0[] = 
{
	OBJECT_GNDD,
	OBJECT_HORSE_GANON,
};

ActorEntry _hiral_demo_room_0_actorList_000002B4[2] = 
{
	{ ACTOR_EN_VIEWER, 112, 0, 14, 0, 0, 0, 0x05FF }, //0x000002B4 
	{ ACTOR_EN_VIEWER, 101, 0, 23, 0, 0, 0, 0x06FF }, //0x000002C4 
};

static u32 pad2D4 = 0;
static u32 pad2D8 = 0;
static u32 pad2DC = 0;

SCmdEchoSettings _hiral_demo_room_0_set02E0_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x02E0
SCmdRoomBehavior _hiral_demo_room_0_set02E0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x02E8
SCmdSkyboxDisables _hiral_demo_room_0_set02E0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x02F0
SCmdTimeSettings _hiral_demo_room_0_set02E0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00 }; // 0x02F8
SCmdMesh _hiral_demo_room_0_set02E0_cmd04 = { 0x0A, 0, (u32)&_hiral_demo_room_0_meshHeader_000000A0 }; // 0x0300
SCmdObjectList _hiral_demo_room_0_set02E0_cmd05 = { 0x0B, 0x08, (u32)_hiral_demo_room_0_objectList_00000320 }; // 0x0308
SCmdActorList _hiral_demo_room_0_set02E0_cmd06 = { 0x01, 0x05, (u32)_hiral_demo_room_0_actorList_00000330 }; // 0x0310
SCmdEndMarker _hiral_demo_room_0_set02E0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0318
s16 _hiral_demo_room_0_objectList_00000320[] = 
{
	OBJECT_EFC_CRYSTAL_LIGHT,
	OBJECT_EFC_FIRE_BALL,
	OBJECT_EFC_FLASH,
	OBJECT_EFC_LGT_SHOWER,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_GOD_LGT,
	OBJECT_LIGHT_RING,
	OBJECT_TRIFORCE_SPOT,
};

ActorEntry _hiral_demo_room_0_actorList_00000330[5] = 
{
	{ ACTOR_DEMO_KANKYO, 158, 149, 315, 0, 0, 0, 0x0000 }, //0x00000330 
	{ ACTOR_DEMO_EFFECT, 4, 95, -59, 0, 0, 0, 0xF404 }, //0x00000340 
	{ ACTOR_DEMO_EFFECT, 150, 139, -99, 0, 0, 0, 0xF505 }, //0x00000350 
	{ ACTOR_DEMO_EFFECT, 165, 166, -104, 0, 0, 0, 0xF606 }, //0x00000360 
	{ ACTOR_DEMO_EFFECT, -510, 180, 278, 0, 0, 0, 0xFF08 }, //0x00000370 
};


SCmdEchoSettings _hiral_demo_room_0_set0380_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0380
SCmdRoomBehavior _hiral_demo_room_0_set0380_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0388
SCmdSkyboxDisables _hiral_demo_room_0_set0380_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0390
SCmdTimeSettings _hiral_demo_room_0_set0380_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF }; // 0x0398
SCmdMesh _hiral_demo_room_0_set0380_cmd04 = { 0x0A, 0, (u32)&_hiral_demo_room_0_meshHeader_000000A0 }; // 0x03A0
SCmdObjectList _hiral_demo_room_0_set0380_cmd05 = { 0x0B, 0x01, (u32)_hiral_demo_room_0_objectList_000003C0 }; // 0x03A8
SCmdActorList _hiral_demo_room_0_set0380_cmd06 = { 0x01, 0x01, (u32)_hiral_demo_room_0_actorList_000003C4 }; // 0x03B0
SCmdEndMarker _hiral_demo_room_0_set0380_cmd07 = { 0x14, 0x00, 0x00 }; // 0x03B8
s16 _hiral_demo_room_0_objectList_000003C0[] = 
{
	OBJECT_GNDD,
};

ActorEntry _hiral_demo_room_0_actorList_000003C4[1] = 
{
	{ ACTOR_EN_VIEWER, 2, 0, 66, 0, 0, 0, 0x07FF }, //0x000003C4 
};

static u32 pad3D4 = 0;
static u32 pad3D8 = 0;
static u32 pad3DC = 0;

SCmdEchoSettings _hiral_demo_room_0_set03E0_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x03E0
SCmdRoomBehavior _hiral_demo_room_0_set03E0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x03E8
SCmdSkyboxDisables _hiral_demo_room_0_set03E0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x03F0
SCmdTimeSettings _hiral_demo_room_0_set03E0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x07, 0x3B, 0x00 }; // 0x03F8
SCmdMesh _hiral_demo_room_0_set03E0_cmd04 = { 0x0A, 0, (u32)&_hiral_demo_room_0_meshHeader_000000A0 }; // 0x0400
SCmdObjectList _hiral_demo_room_0_set03E0_cmd05 = { 0x0B, 0x07, (u32)_hiral_demo_room_0_objectList_00000420 }; // 0x0408
SCmdActorList _hiral_demo_room_0_set03E0_cmd06 = { 0x01, 0x02, (u32)_hiral_demo_room_0_actorList_00000430 }; // 0x0410
SCmdEndMarker _hiral_demo_room_0_set03E0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0418
s16 _hiral_demo_room_0_objectList_00000420[] = 
{
	OBJECT_EFC_CRYSTAL_LIGHT,
	OBJECT_EFC_FIRE_BALL,
	OBJECT_EFC_FLASH,
	OBJECT_EFC_LGT_SHOWER,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_LIGHT_RING,
	OBJECT_TRIFORCE_SPOT,
};

ActorEntry _hiral_demo_room_0_actorList_00000430[2] = 
{
	{ ACTOR_DEMO_KANKYO, 158, 149, 315, 0, 0, 0, 0x0000 }, //0x00000430 
	{ ACTOR_DEMO_EFFECT, -510, 180, 278, 0, 0, 0, 0xFF08 }, //0x00000440 
};


SCmdEchoSettings _hiral_demo_room_0_set0450_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0450
SCmdRoomBehavior _hiral_demo_room_0_set0450_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0458
SCmdSkyboxDisables _hiral_demo_room_0_set0450_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0460
SCmdTimeSettings _hiral_demo_room_0_set0450_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0468
SCmdMesh _hiral_demo_room_0_set0450_cmd04 = { 0x0A, 0, (u32)&_hiral_demo_room_0_meshHeader_000000A0 }; // 0x0470
SCmdObjectList _hiral_demo_room_0_set0450_cmd05 = { 0x0B, 0x02, (u32)_hiral_demo_room_0_objectList_00000490 }; // 0x0478
SCmdActorList _hiral_demo_room_0_set0450_cmd06 = { 0x01, 0x02, (u32)_hiral_demo_room_0_actorList_00000494 }; // 0x0480
SCmdEndMarker _hiral_demo_room_0_set0450_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0488
s16 _hiral_demo_room_0_objectList_00000490[] = 
{
	OBJECT_GNDD,
	OBJECT_HORSE_GANON,
};

ActorEntry _hiral_demo_room_0_actorList_00000494[2] = 
{
	{ ACTOR_EN_VIEWER, 112, 0, 14, 0, 0, 0, 0x05FF }, //0x00000494 
	{ ACTOR_EN_VIEWER, 101, 0, 23, 0, 0, 0, 0x06FF }, //0x000004A4 
};

static u32 pad4B4 = 0;
static u32 pad4B8 = 0;
static u32 pad4BC = 0;

SCmdEchoSettings _hiral_demo_room_0_set04C0_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x04C0
SCmdRoomBehavior _hiral_demo_room_0_set04C0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x04C8
SCmdSkyboxDisables _hiral_demo_room_0_set04C0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x04D0
SCmdTimeSettings _hiral_demo_room_0_set04C0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x04D8
SCmdMesh _hiral_demo_room_0_set04C0_cmd04 = { 0x0A, 0, (u32)&_hiral_demo_room_0_meshHeader_000000A0 }; // 0x04E0
SCmdObjectList _hiral_demo_room_0_set04C0_cmd05 = { 0x0B, 0x02, (u32)_hiral_demo_room_0_objectList_00000500 }; // 0x04E8
SCmdActorList _hiral_demo_room_0_set04C0_cmd06 = { 0x01, 0x02, (u32)_hiral_demo_room_0_actorList_00000504 }; // 0x04F0
SCmdEndMarker _hiral_demo_room_0_set04C0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x04F8
s16 _hiral_demo_room_0_objectList_00000500[] = 
{
	OBJECT_GNDD,
	OBJECT_HORSE_GANON,
};

ActorEntry _hiral_demo_room_0_actorList_00000504[2] = 
{
	{ ACTOR_EN_VIEWER, 112, 0, 14, 0, 0, 0, 0x05FF }, //0x00000504 
	{ ACTOR_EN_VIEWER, 101, 0, 23, 0, 0, 0, 0x06FF }, //0x00000514 
};

static u32 pad524 = 0;
static u32 pad528 = 0;
static u32 pad52C = 0;

SCmdEchoSettings _hiral_demo_room_0_set0530_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x0530
SCmdRoomBehavior _hiral_demo_room_0_set0530_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x0538
SCmdSkyboxDisables _hiral_demo_room_0_set0530_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0540
SCmdTimeSettings _hiral_demo_room_0_set0530_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00 }; // 0x0548
SCmdMesh _hiral_demo_room_0_set0530_cmd04 = { 0x0A, 0, (u32)&_hiral_demo_room_0_meshHeader_000000A0 }; // 0x0550
SCmdObjectList _hiral_demo_room_0_set0530_cmd05 = { 0x0B, 0x08, (u32)_hiral_demo_room_0_objectList_00000570 }; // 0x0558
SCmdActorList _hiral_demo_room_0_set0530_cmd06 = { 0x01, 0x05, (u32)_hiral_demo_room_0_actorList_00000580 }; // 0x0560
SCmdEndMarker _hiral_demo_room_0_set0530_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0568
s16 _hiral_demo_room_0_objectList_00000570[] = 
{
	OBJECT_EFC_CRYSTAL_LIGHT,
	OBJECT_EFC_FIRE_BALL,
	OBJECT_EFC_FLASH,
	OBJECT_EFC_LGT_SHOWER,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_GOD_LGT,
	OBJECT_LIGHT_RING,
	OBJECT_TRIFORCE_SPOT,
};

ActorEntry _hiral_demo_room_0_actorList_00000580[5] = 
{
	{ ACTOR_DEMO_KANKYO, 158, 149, 315, 0, 0, 0, 0x0000 }, //0x00000580 
	{ ACTOR_DEMO_EFFECT, 4, 95, -59, 0, 0, 0, 0xF404 }, //0x00000590 
	{ ACTOR_DEMO_EFFECT, 150, 139, -99, 0, 0, 0, 0xF505 }, //0x000005A0 
	{ ACTOR_DEMO_EFFECT, 165, 166, -104, 0, 0, 0, 0xF606 }, //0x000005B0 
	{ ACTOR_DEMO_EFFECT, -510, 180, 278, 0, 0, 0, 0xFF08 }, //0x000005C0 
};


SCmdEchoSettings _hiral_demo_room_0_set05D0_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x05D0
SCmdRoomBehavior _hiral_demo_room_0_set05D0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x05D8
SCmdSkyboxDisables _hiral_demo_room_0_set05D0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x05E0
SCmdTimeSettings _hiral_demo_room_0_set05D0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF }; // 0x05E8
SCmdMesh _hiral_demo_room_0_set05D0_cmd04 = { 0x0A, 0, (u32)&_hiral_demo_room_0_meshHeader_000000A0 }; // 0x05F0
SCmdObjectList _hiral_demo_room_0_set05D0_cmd05 = { 0x0B, 0x01, (u32)_hiral_demo_room_0_objectList_00000610 }; // 0x05F8
SCmdActorList _hiral_demo_room_0_set05D0_cmd06 = { 0x01, 0x01, (u32)_hiral_demo_room_0_actorList_00000614 }; // 0x0600
SCmdEndMarker _hiral_demo_room_0_set05D0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0608
s16 _hiral_demo_room_0_objectList_00000610[] = 
{
	OBJECT_GANON,
};

ActorEntry _hiral_demo_room_0_actorList_00000614[1] = 
{
	{ ACTOR_EN_VIEWER, 0, 0, 115, 0, -32768, 0, 0x09FF }, //0x00000614 
};

static u32 pad624 = 0;
static u32 pad628 = 0;
static u32 pad62C = 0;

Gfx _hiral_demo_room_0_dlist_00000630[] =
{
	gsSPEndDisplayList(), // 0x00000630
};

static u8 unaccounted0638[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


