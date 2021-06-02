#include <ultra64.h>
#include <z64.h>
#include "tokinoma_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "tokinoma_scene.h"



SCmdAltHeaders _tokinoma_room_0_set0000_cmd00 = { 0x18, 0, (u32)&_tokinoma_room_0_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _tokinoma_room_0_set0000_cmd01 = { 0x16, 0, { 0 }, 0x0A }; // 0x0008
SCmdRoomBehavior _tokinoma_room_0_set0000_cmd02 = { 0x08, 0x00, 0x00000000 }; // 0x0010
SCmdSkyboxDisables _tokinoma_room_0_set0000_cmd03 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0018
SCmdTimeSettings _tokinoma_room_0_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0020
SCmdMesh _tokinoma_room_0_set0000_cmd05 = { 0x0A, 0, (u32)&_tokinoma_room_0_meshHeader_00000100 }; // 0x0028
SCmdObjectList _tokinoma_room_0_set0000_cmd06 = { 0x0B, 0x08, (u32)_tokinoma_room_0_objectList_00000080 }; // 0x0030
SCmdActorList _tokinoma_room_0_set0000_cmd07 = { 0x01, 0x07, (u32)_tokinoma_room_0_actorList_00000090 }; // 0x0038
SCmdEndMarker _tokinoma_room_0_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _tokinoma_room_0_alternateHeaders_00000048[] = 
{
	0,
	0,
	0,
	(u32)&_tokinoma_room_0_set0120_cmd00,
	(u32)&_tokinoma_room_0_set01E0_cmd00,
	(u32)&_tokinoma_room_0_set02F0_cmd00,
	(u32)&_tokinoma_room_0_set03B0_cmd00,
	(u32)&_tokinoma_room_0_set0430_cmd00,
	(u32)&_tokinoma_room_0_set04B0_cmd00,
	(u32)&_tokinoma_room_0_set0530_cmd00,
	(u32)&_tokinoma_room_0_set05B0_cmd00,
	(u32)&_tokinoma_room_0_set0610_cmd00,
	(u32)&_tokinoma_room_0_set0690_cmd00,
	(u32)&_tokinoma_room_0_set0270_cmd00,
};

s16 _tokinoma_room_0_objectList_00000080[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_XC,
	OBJECT_GI_JEWEL,
	OBJECT_GI_MELODY,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_EFC_TW,
	OBJECT_EFC_FLASH,
	OBJECT_SPOT02_OBJECTS,
};

ActorEntry _tokinoma_room_0_actorList_00000090[7] = 
{
	{ ACTOR_DEMO_6K, 697, 0, -168, 0, 0, 0, 0x0010 }, //0x00000090 
	{ ACTOR_DEMO_KANKYO, 195, 40, 77, 0, 0, 0, 0x0001 }, //0x000000A0 
	{ ACTOR_DEMO_EFFECT, 0, 70, -1, 0, 0, 0, 0xFF0F }, //0x000000B0 
	{ ACTOR_BG_TOKI_SWD, -1, 68, 0, 0, 0, 0, 0xFFFF }, //0x000000C0 
	{ ACTOR_DEMO_KANKYO, -14, 939, -652, 0, 0, 0, 0x000E }, //0x000000D0 
	{ ACTOR_EN_XC, 0, 71, 11, 0, 0, 0, 0x0009 }, //0x000000E0 
	{ ACTOR_BG_SPOT02_OBJECTS, 697, 0, -99, 0, 0, 0, 0x0004 }, //0x000000F0 
};


MeshHeader0 _tokinoma_room_0_meshHeader_00000100 = { { 0 }, 0x01, (u32)&_tokinoma_room_0_meshDListEntry_0000010C, (u32)&(_tokinoma_room_0_meshDListEntry_0000010C) + sizeof(_tokinoma_room_0_meshDListEntry_0000010C) };

MeshEntry0 _tokinoma_room_0_meshDListEntry_0000010C[1] = 
{
	{ (u32)_tokinoma_room_0_dlist_00008128, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.
static u32 pad118 = 0;
static u32 pad11C = 0;

SCmdEchoSettings _tokinoma_room_0_set0120_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0120
SCmdRoomBehavior _tokinoma_room_0_set0120_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0128
SCmdSkyboxDisables _tokinoma_room_0_set0120_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0130
SCmdTimeSettings _tokinoma_room_0_set0120_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00 }; // 0x0138
SCmdMesh _tokinoma_room_0_set0120_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_0_meshHeader_00000100 }; // 0x0140
SCmdObjectList _tokinoma_room_0_set0120_cmd05 = { 0x0B, 0x08, (u32)_tokinoma_room_0_objectList_00000160 }; // 0x0148
SCmdActorList _tokinoma_room_0_set0120_cmd06 = { 0x01, 0x07, (u32)_tokinoma_room_0_actorList_00000170 }; // 0x0150
SCmdEndMarker _tokinoma_room_0_set0120_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0158
s16 _tokinoma_room_0_objectList_00000160[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_XC,
	OBJECT_EFC_FLASH,
	OBJECT_GI_JEWEL,
	OBJECT_GI_MELODY,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_EFC_TW,
	OBJECT_SPOT02_OBJECTS,
};

ActorEntry _tokinoma_room_0_actorList_00000170[7] = 
{
	{ ACTOR_DEMO_6K, 684, 670, 89, 0, 0, 0, 0x0010 }, //0x00000170 
	{ ACTOR_DEMO_KANKYO, 195, 40, 77, 0, 0, 0, 0x0001 }, //0x00000180 
	{ ACTOR_DEMO_EFFECT, 0, 70, -1, 0, 0, 0, 0xFF0F }, //0x00000190 
	{ ACTOR_BG_TOKI_SWD, -1, 68, 0, 0, 0, 0, 0xFFFF }, //0x000001A0 
	{ ACTOR_DEMO_KANKYO, -14, 939, -652, 0, 0, 0, 0x000E }, //0x000001B0 
	{ ACTOR_EN_XC, -60, 71, 6, 0, -910, 0, 0x0001 }, //0x000001C0 
	{ ACTOR_BG_SPOT02_OBJECTS, 679, 680, 34, 0, 0, 0, 0x0004 }, //0x000001D0 
};


SCmdEchoSettings _tokinoma_room_0_set01E0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x01E0
SCmdRoomBehavior _tokinoma_room_0_set01E0_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x01E8
SCmdSkyboxDisables _tokinoma_room_0_set01E0_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x01F0
SCmdTimeSettings _tokinoma_room_0_set01E0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x01F8
SCmdMesh _tokinoma_room_0_set01E0_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_0_meshHeader_00000100 }; // 0x0200
SCmdObjectList _tokinoma_room_0_set01E0_cmd05 = { 0x0B, 0x02, (u32)_tokinoma_room_0_objectList_00000220 }; // 0x0208
SCmdActorList _tokinoma_room_0_set01E0_cmd06 = { 0x01, 0x04, (u32)_tokinoma_room_0_actorList_00000224 }; // 0x0210
SCmdEndMarker _tokinoma_room_0_set01E0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0218
s16 _tokinoma_room_0_objectList_00000220[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_EFC_TW,
};

ActorEntry _tokinoma_room_0_actorList_00000224[4] = 
{
	{ ACTOR_BG_TOKI_SWD, -1, 68, 0, 0, 0, 0, 0xFFFF }, //0x00000224 
	{ ACTOR_DEMO_EFFECT, -1, 70, 0, 0, 0, 0, 0xFF0F }, //0x00000234 
	{ ACTOR_DEMO_KANKYO, -14, 939, -652, 0, 0, 0, 0x000E }, //0x00000244 
	{ ACTOR_END_TITLE, -1, 70, 39, 0, 0, 0, 0x0001 }, //0x00000254 
};

static u32 pad264 = 0;
static u32 pad268 = 0;
static u32 pad26C = 0;

SCmdEchoSettings _tokinoma_room_0_set0270_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0270
SCmdRoomBehavior _tokinoma_room_0_set0270_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0278
SCmdSkyboxDisables _tokinoma_room_0_set0270_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0280
SCmdTimeSettings _tokinoma_room_0_set0270_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0288
SCmdMesh _tokinoma_room_0_set0270_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_0_meshHeader_00000100 }; // 0x0290
SCmdObjectList _tokinoma_room_0_set0270_cmd05 = { 0x0B, 0x04, (u32)_tokinoma_room_0_objectList_000002B0 }; // 0x0298
SCmdActorList _tokinoma_room_0_set0270_cmd06 = { 0x01, 0x03, (u32)_tokinoma_room_0_actorList_000002B8 }; // 0x02A0
SCmdEndMarker _tokinoma_room_0_set0270_cmd07 = { 0x14, 0x00, 0x00 }; // 0x02A8
s16 _tokinoma_room_0_objectList_000002B0[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_EFC_CRYSTAL_LIGHT,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_EFC_TW,
};

ActorEntry _tokinoma_room_0_actorList_000002B8[3] = 
{
	{ ACTOR_BG_TOKI_SWD, -1, 68, 0, 0, 0, 0, 0xFFFF }, //0x000002B8 
	{ ACTOR_DEMO_EFFECT, 0, 70, -1, 0, 0, 0, 0xFF0F }, //0x000002C8 
	{ ACTOR_DEMO_KANKYO, -14, 939, -652, 0, 0, 0, 0x000E }, //0x000002D8 
};

static u32 pad2E8 = 0;
static u32 pad2EC = 0;

SCmdEchoSettings _tokinoma_room_0_set02F0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x02F0
SCmdRoomBehavior _tokinoma_room_0_set02F0_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x02F8
SCmdSkyboxDisables _tokinoma_room_0_set02F0_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0300
SCmdTimeSettings _tokinoma_room_0_set02F0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00 }; // 0x0308
SCmdMesh _tokinoma_room_0_set02F0_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_0_meshHeader_00000100 }; // 0x0310
SCmdObjectList _tokinoma_room_0_set02F0_cmd05 = { 0x0B, 0x08, (u32)_tokinoma_room_0_objectList_00000330 }; // 0x0318
SCmdActorList _tokinoma_room_0_set02F0_cmd06 = { 0x01, 0x07, (u32)_tokinoma_room_0_actorList_00000340 }; // 0x0320
SCmdEndMarker _tokinoma_room_0_set02F0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0328
s16 _tokinoma_room_0_objectList_00000330[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_XC,
	OBJECT_EFC_FLASH,
	OBJECT_GI_JEWEL,
	OBJECT_GI_MELODY,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_EFC_TW,
	OBJECT_SPOT02_OBJECTS,
};

ActorEntry _tokinoma_room_0_actorList_00000340[7] = 
{
	{ ACTOR_DEMO_6K, 684, 670, 89, 0, 0, 0, 0x0010 }, //0x00000340 
	{ ACTOR_DEMO_KANKYO, 195, 40, 77, 0, 0, 0, 0x0001 }, //0x00000350 
	{ ACTOR_DEMO_EFFECT, 0, 70, -1, 0, 0, 0, 0xFF0F }, //0x00000360 
	{ ACTOR_BG_TOKI_SWD, -1, 68, 0, 0, 0, 0, 0xFFFF }, //0x00000370 
	{ ACTOR_DEMO_KANKYO, -14, 939, -652, 0, 0, 0, 0x000E }, //0x00000380 
	{ ACTOR_EN_XC, -60, 71, 6, 0, -910, 0, 0x0002 }, //0x00000390 
	{ ACTOR_BG_SPOT02_OBJECTS, 679, 680, 34, 0, 0, 0, 0x0004 }, //0x000003A0 
};


SCmdEchoSettings _tokinoma_room_0_set03B0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x03B0
SCmdRoomBehavior _tokinoma_room_0_set03B0_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x03B8
SCmdSkyboxDisables _tokinoma_room_0_set03B0_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x03C0
SCmdTimeSettings _tokinoma_room_0_set03B0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x03C8
SCmdMesh _tokinoma_room_0_set03B0_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_0_meshHeader_00000100 }; // 0x03D0
SCmdObjectList _tokinoma_room_0_set03B0_cmd05 = { 0x0B, 0x03, (u32)_tokinoma_room_0_objectList_000003F0 }; // 0x03D8
SCmdActorList _tokinoma_room_0_set03B0_cmd06 = { 0x01, 0x03, (u32)_tokinoma_room_0_actorList_000003F8 }; // 0x03E0
SCmdEndMarker _tokinoma_room_0_set03B0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x03E8
s16 _tokinoma_room_0_objectList_000003F0[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_EFC_TW,
};

ActorEntry _tokinoma_room_0_actorList_000003F8[3] = 
{
	{ ACTOR_DEMO_EFFECT, 0, 70, -1, 0, 0, 0, 0xFF0F }, //0x000003F8 
	{ ACTOR_BG_TOKI_SWD, -1, 68, 0, 0, 0, 0, 0xFFFF }, //0x00000408 
	{ ACTOR_DEMO_KANKYO, -14, 939, -652, 0, 0, 0, 0x000E }, //0x00000418 
};

static u32 pad428 = 0;
static u32 pad42C = 0;

SCmdEchoSettings _tokinoma_room_0_set0430_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0430
SCmdRoomBehavior _tokinoma_room_0_set0430_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0438
SCmdSkyboxDisables _tokinoma_room_0_set0430_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0440
SCmdTimeSettings _tokinoma_room_0_set0430_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0448
SCmdMesh _tokinoma_room_0_set0430_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_0_meshHeader_00000100 }; // 0x0450
SCmdObjectList _tokinoma_room_0_set0430_cmd05 = { 0x0B, 0x03, (u32)_tokinoma_room_0_objectList_00000470 }; // 0x0458
SCmdActorList _tokinoma_room_0_set0430_cmd06 = { 0x01, 0x03, (u32)_tokinoma_room_0_actorList_00000478 }; // 0x0460
SCmdEndMarker _tokinoma_room_0_set0430_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0468
s16 _tokinoma_room_0_objectList_00000470[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_EFC_TW,
};

ActorEntry _tokinoma_room_0_actorList_00000478[3] = 
{
	{ ACTOR_BG_TOKI_SWD, -1, 68, 0, 0, 0, 0, 0xFFFF }, //0x00000478 
	{ ACTOR_DEMO_EFFECT, 0, 70, -1, 0, 0, 0, 0xFF0F }, //0x00000488 
	{ ACTOR_DEMO_KANKYO, -14, 939, -652, 0, 0, 0, 0x000E }, //0x00000498 
};

static u32 pad4A8 = 0;
static u32 pad4AC = 0;

SCmdEchoSettings _tokinoma_room_0_set04B0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x04B0
SCmdRoomBehavior _tokinoma_room_0_set04B0_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x04B8
SCmdSkyboxDisables _tokinoma_room_0_set04B0_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x04C0
SCmdTimeSettings _tokinoma_room_0_set04B0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x04C8
SCmdMesh _tokinoma_room_0_set04B0_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_0_meshHeader_00000100 }; // 0x04D0
SCmdObjectList _tokinoma_room_0_set04B0_cmd05 = { 0x0B, 0x03, (u32)_tokinoma_room_0_objectList_000004F0 }; // 0x04D8
SCmdActorList _tokinoma_room_0_set04B0_cmd06 = { 0x01, 0x03, (u32)_tokinoma_room_0_actorList_000004F8 }; // 0x04E0
SCmdEndMarker _tokinoma_room_0_set04B0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x04E8
s16 _tokinoma_room_0_objectList_000004F0[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_EFC_TW,
};

ActorEntry _tokinoma_room_0_actorList_000004F8[3] = 
{
	{ ACTOR_BG_TOKI_SWD, -1, 68, 0, 0, 0, 0, 0xFFFF }, //0x000004F8 
	{ ACTOR_DEMO_EFFECT, 0, 70, -1, 0, 0, 0, 0xFF0F }, //0x00000508 
	{ ACTOR_DEMO_KANKYO, -14, 939, -652, 0, 0, 0, 0x000E }, //0x00000518 
};

static u32 pad528 = 0;
static u32 pad52C = 0;

SCmdEchoSettings _tokinoma_room_0_set0530_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0530
SCmdRoomBehavior _tokinoma_room_0_set0530_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0538
SCmdSkyboxDisables _tokinoma_room_0_set0530_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0540
SCmdTimeSettings _tokinoma_room_0_set0530_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0548
SCmdMesh _tokinoma_room_0_set0530_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_0_meshHeader_00000100 }; // 0x0550
SCmdObjectList _tokinoma_room_0_set0530_cmd05 = { 0x0B, 0x03, (u32)_tokinoma_room_0_objectList_00000570 }; // 0x0558
SCmdActorList _tokinoma_room_0_set0530_cmd06 = { 0x01, 0x03, (u32)_tokinoma_room_0_actorList_00000578 }; // 0x0560
SCmdEndMarker _tokinoma_room_0_set0530_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0568
s16 _tokinoma_room_0_objectList_00000570[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_EFC_TW,
};

ActorEntry _tokinoma_room_0_actorList_00000578[3] = 
{
	{ ACTOR_BG_TOKI_SWD, -1, 68, 0, 0, 0, 0, 0xFFFF }, //0x00000578 
	{ ACTOR_DEMO_EFFECT, 0, 70, -1, 0, 0, 0, 0xFF0F }, //0x00000588 
	{ ACTOR_DEMO_KANKYO, -14, 939, -652, 0, 0, 0, 0x000E }, //0x00000598 
};

static u32 pad5A8 = 0;
static u32 pad5AC = 0;

SCmdEchoSettings _tokinoma_room_0_set05B0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x05B0
SCmdRoomBehavior _tokinoma_room_0_set05B0_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x05B8
SCmdSkyboxDisables _tokinoma_room_0_set05B0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x05C0
SCmdTimeSettings _tokinoma_room_0_set05B0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF }; // 0x05C8
SCmdMesh _tokinoma_room_0_set05B0_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_0_meshHeader_00000100 }; // 0x05D0
SCmdObjectList _tokinoma_room_0_set05B0_cmd05 = { 0x0B, 0x01, (u32)_tokinoma_room_0_objectList_000005F0 }; // 0x05D8
SCmdActorList _tokinoma_room_0_set05B0_cmd06 = { 0x01, 0x01, (u32)_tokinoma_room_0_actorList_000005F4 }; // 0x05E0
SCmdEndMarker _tokinoma_room_0_set05B0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x05E8
s16 _tokinoma_room_0_objectList_000005F0[] = 
{
	OBJECT_TOKI_OBJECTS,
};

ActorEntry _tokinoma_room_0_actorList_000005F4[1] = 
{
	{ ACTOR_DEMO_KANKYO, -14, 939, -652, 0, 0, 0, 0x000E }, //0x000005F4 
};

static u32 pad604 = 0;
static u32 pad608 = 0;
static u32 pad60C = 0;

SCmdEchoSettings _tokinoma_room_0_set0610_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0610
SCmdRoomBehavior _tokinoma_room_0_set0610_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0618
SCmdSkyboxDisables _tokinoma_room_0_set0610_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0620
SCmdTimeSettings _tokinoma_room_0_set0610_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0628
SCmdMesh _tokinoma_room_0_set0610_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_0_meshHeader_00000100 }; // 0x0630
SCmdObjectList _tokinoma_room_0_set0610_cmd05 = { 0x0B, 0x04, (u32)_tokinoma_room_0_objectList_00000650 }; // 0x0638
SCmdActorList _tokinoma_room_0_set0610_cmd06 = { 0x01, 0x03, (u32)_tokinoma_room_0_actorList_00000658 }; // 0x0640
SCmdEndMarker _tokinoma_room_0_set0610_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0648
s16 _tokinoma_room_0_objectList_00000650[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_EFC_CRYSTAL_LIGHT,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_EFC_TW,
};

ActorEntry _tokinoma_room_0_actorList_00000658[3] = 
{
	{ ACTOR_BG_TOKI_SWD, -1, 68, 0, 0, 0, 0, 0xFFFF }, //0x00000658 
	{ ACTOR_DEMO_EFFECT, 0, 70, -1, 0, 0, 0, 0xFF0F }, //0x00000668 
	{ ACTOR_DEMO_KANKYO, -14, 939, -652, 0, 0, 0, 0x000E }, //0x00000678 
};

static u32 pad688 = 0;
static u32 pad68C = 0;

SCmdEchoSettings _tokinoma_room_0_set0690_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0690
SCmdRoomBehavior _tokinoma_room_0_set0690_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0698
SCmdSkyboxDisables _tokinoma_room_0_set0690_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x06A0
SCmdTimeSettings _tokinoma_room_0_set0690_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF }; // 0x06A8
SCmdMesh _tokinoma_room_0_set0690_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_0_meshHeader_00000100 }; // 0x06B0
SCmdObjectList _tokinoma_room_0_set0690_cmd05 = { 0x0B, 0x04, (u32)_tokinoma_room_0_objectList_000006D0 }; // 0x06B8
SCmdActorList _tokinoma_room_0_set0690_cmd06 = { 0x01, 0x03, (u32)_tokinoma_room_0_actorList_000006D8 }; // 0x06C0
SCmdEndMarker _tokinoma_room_0_set0690_cmd07 = { 0x14, 0x00, 0x00 }; // 0x06C8
s16 _tokinoma_room_0_objectList_000006D0[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_EFC_CRYSTAL_LIGHT,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_EFC_TW,
};

ActorEntry _tokinoma_room_0_actorList_000006D8[3] = 
{
	{ ACTOR_BG_TOKI_SWD, -1, 68, 0, 0, 0, 0, 0xFFFF }, //0x000006D8 
	{ ACTOR_DEMO_EFFECT, 0, 70, -1, 0, 0, 0, 0xFF0F }, //0x000006E8 
	{ ACTOR_DEMO_KANKYO, -14, 939, -652, 0, 0, 0, 0x000E }, //0x000006F8 
};

static u32 pad708 = 0;
static u32 pad70C = 0;

Vtx_t _tokinoma_room_0_vertices_00000710[24] = 
{
	 { -720, 1600, -298, 0, -1536, 2048, 51, 51, 51, 255 }, // 0x00000710
	 { -298, 1600, -720, 0, 2282, 2048, 38, 38, 38, 255 }, // 0x00000720
	 { 0, 2000, 0, 0, 373, -3224, 0, 0, 0, 255 }, // 0x00000730
	 { -298, 1600, -720, 0, -1024, 1536, 38, 38, 38, 255 }, // 0x00000740
	 { 298, 1600, -720, 0, 2794, 1536, 38, 38, 38, 255 }, // 0x00000750
	 { 0, 2000, 0, 0, 885, -3736, 0, 0, 0, 255 }, // 0x00000760
	 { 298, 1600, -720, 0, -1024, 2048, 38, 38, 38, 255 }, // 0x00000770
	 { 720, 1600, -298, 0, 2794, 2048, 38, 38, 38, 255 }, // 0x00000780
	 { 0, 2000, 0, 0, 885, -3224, 0, 0, 0, 255 }, // 0x00000790
	 { 720, 1600, -298, 0, -1536, 2560, 51, 51, 51, 255 }, // 0x000007A0
	 { 720, 1600, 298, 0, 2282, 2560, 51, 51, 51, 255 }, // 0x000007B0
	 { 0, 2000, 0, 0, 373, -2712, 0, 0, 0, 255 }, // 0x000007C0
	 { 720, 1600, 298, 0, -1536, 2560, 51, 51, 51, 255 }, // 0x000007D0
	 { 298, 1600, 720, 0, 2282, 2560, 51, 51, 51, 255 }, // 0x000007E0
	 { 0, 2000, 0, 0, 373, -2712, 0, 0, 0, 255 }, // 0x000007F0
	 { 298, 1600, 720, 0, -1536, 2560, 76, 76, 76, 255 }, // 0x00000800
	 { -298, 1600, 720, 0, 2282, 2560, 76, 76, 76, 255 }, // 0x00000810
	 { 0, 2000, 0, 0, 373, -2712, 0, 0, 0, 255 }, // 0x00000820
	 { -298, 1600, 720, 0, -1536, 2560, 51, 51, 51, 255 }, // 0x00000830
	 { -720, 1600, 298, 0, 2282, 2560, 51, 51, 51, 255 }, // 0x00000840
	 { 0, 2000, 0, 0, 373, -2712, 0, 0, 0, 255 }, // 0x00000850
	 { -720, 1600, 298, 0, -1536, 2048, 51, 51, 51, 255 }, // 0x00000860
	 { -720, 1600, -298, 0, 2282, 2048, 51, 51, 51, 255 }, // 0x00000870
	 { 0, 2000, 0, 0, 373, -3224, 0, 0, 0, 255 }, // 0x00000880
};

Vtx_t _tokinoma_room_0_vertices_00000890[8] = 
{
	 { -720, 1600, -720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000890
	 { 720, 1600, -720, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008A0
	 { -720, 2000, -720, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008B0
	 { 720, 2000, -720, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008C0
	 { -720, 1600, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008D0
	 { 720, 1600, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008E0
	 { -720, 2000, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008F0
	 { 720, 2000, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000900
};

Gfx _tokinoma_room_0_dlist_00000910[] =
{
	gsDPPipeSync(), // 0x00000910
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000918
	gsSPVertex(_tokinoma_room_0_vertices_00000890, 8, 0), // 0x00000920
	gsSPCullDisplayList(0, 7), // 0x00000928
	gsDPPipeSync(), // 0x00000930
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000938
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000940
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000948
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_00010FA0), // 0x00000950
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000958
	gsDPLoadSync(), // 0x00000960
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000968
	gsDPPipeSync(), // 0x00000970
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000978
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000980
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000988
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000990
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000998
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000009A0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000009A8
	gsSPVertex(_tokinoma_room_0_vertices_00000710, 24, 0), // 0x000009B0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000009B8
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x000009C0
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0), // 0x000009C8
	gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0), // 0x000009D0
	gsSPEndDisplayList(), // 0x000009D8
};

Vtx_t _tokinoma_room_0_vertices_000009E0[6] = 
{
	 { -104, 200, 920, 0, -1024, 1411, 0, 0, 0, 255 }, // 0x000009E0
	 { -104, 200, 720, 0, -1024, -510, 25, 25, 25, 255 }, // 0x000009F0
	 { 96, 200, 720, 0, 2662, -510, 25, 25, 25, 255 }, // 0x00000A00
	 { 96, 200, 920, 0, 2662, 1411, 0, 0, 0, 255 }, // 0x00000A10
	 { -104, 200, 1120, 0, -1024, 2048, 25, 25, 25, 255 }, // 0x00000A20
	 { 96, 200, 1120, 0, 2662, 2048, 25, 25, 25, 255 }, // 0x00000A30
};

Vtx_t _tokinoma_room_0_vertices_00000A40[32] = 
{
	 { 247, 676, -720, 0, 2794, 2329, 51, 51, 51, 255 }, // 0x00000A40
	 { 247, 928, -720, 0, 2794, 718, 51, 51, 51, 255 }, // 0x00000A50
	 { -247, 928, -720, 0, -1024, 718, 38, 38, 38, 255 }, // 0x00000A60
	 { -247, 676, -720, 0, -1024, 2329, 38, 38, 38, 255 }, // 0x00000A70
	 { -298, 1600, -720, 0, 2226, -8192, 38, 38, 38, 255 }, // 0x00000A80
	 { -720, 1600, -298, 0, -928, -8192, 38, 38, 38, 255 }, // 0x00000A90
	 { -720, 676, -298, 0, -928, -2279, 38, 38, 38, 255 }, // 0x00000AA0
	 { -298, 676, -720, 0, 2226, -2279, 51, 51, 51, 255 }, // 0x00000AB0
	 { -720, 1600, -298, 0, 2226, -8704, 51, 51, 51, 255 }, // 0x00000AC0
	 { -720, 1600, 298, 0, -925, -8704, 51, 51, 51, 255 }, // 0x00000AD0
	 { -720, 676, 298, 0, -925, -2791, 51, 51, 51, 255 }, // 0x00000AE0
	 { -720, 676, -298, 0, 2226, -2791, 51, 51, 51, 255 }, // 0x00000AF0
	 { -720, 1600, 298, 0, 2229, -7168, 51, 51, 51, 255 }, // 0x00000B00
	 { -298, 1600, 720, 0, -925, -7168, 51, 51, 51, 255 }, // 0x00000B10
	 { -298, 676, 720, 0, -925, -1255, 89, 89, 89, 255 }, // 0x00000B20
	 { -720, 676, 298, 0, 2229, -1255, 89, 89, 89, 255 }, // 0x00000B30
	 { -298, 1600, 720, 0, 2463, -4608, 76, 76, 76, 255 }, // 0x00000B40
	 { 298, 1600, 720, 0, -693, -4608, 76, 76, 76, 255 }, // 0x00000B50
	 { 298, 676, 720, 0, -693, 1305, 114, 114, 114, 255 }, // 0x00000B60
	 { -298, 676, 720, 0, 2463, 1305, 114, 114, 114, 255 }, // 0x00000B70
	 { 298, 1600, 720, 0, 2460, -3584, 51, 51, 51, 255 }, // 0x00000B80
	 { 720, 1600, 298, 0, -693, -3584, 51, 51, 51, 255 }, // 0x00000B90
	 { 720, 676, 298, 0, -693, 2329, 89, 89, 89, 255 }, // 0x00000BA0
	 { 298, 676, 720, 0, 2460, 2329, 89, 89, 89, 255 }, // 0x00000BB0
	 { 720, 1600, 298, 0, 2460, -3584, 51, 51, 51, 255 }, // 0x00000BC0
	 { 720, 1600, -298, 0, -690, -3584, 51, 51, 51, 255 }, // 0x00000BD0
	 { 720, 676, -298, 0, -690, 2329, 51, 51, 51, 255 }, // 0x00000BE0
	 { 720, 676, 298, 0, 2460, 2329, 51, 51, 51, 255 }, // 0x00000BF0
	 { 720, 1600, -298, 0, 2463, -3584, 38, 38, 38, 255 }, // 0x00000C00
	 { 298, 1600, -720, 0, -690, -3584, 38, 38, 38, 255 }, // 0x00000C10
	 { 298, 676, -720, 0, -690, 2329, 38, 38, 38, 255 }, // 0x00000C20
	 { 720, 676, -298, 0, 2463, 2329, 38, 38, 38, 255 }, // 0x00000C30
};

Vtx_t _tokinoma_room_0_vertices_00000C40[10] = 
{
	 { -106, 1440, -720, 0, 205, -2560, 38, 38, 38, 255 }, // 0x00000C40
	 { -298, 1600, -720, 0, -1024, -3584, 38, 38, 38, 255 }, // 0x00000C50
	 { -298, 960, -720, 0, -1024, 512, 38, 38, 38, 255 }, // 0x00000C60
	 { -106, 960, -720, 0, 205, 512, 38, 38, 38, 255 }, // 0x00000C70
	 { -298, 1600, -720, 0, -1024, -3584, 38, 38, 38, 255 }, // 0x00000C80
	 { -10, 1600, -720, 0, 819, -3584, 38, 38, 38, 255 }, // 0x00000C90
	 { 86, 1440, -720, 0, 1434, -2560, 38, 38, 38, 255 }, // 0x00000CA0
	 { 298, 1600, -720, 0, 2794, -3584, 38, 38, 38, 255 }, // 0x00000CB0
	 { 86, 960, -720, 0, 1434, 512, 38, 38, 38, 255 }, // 0x00000CC0
	 { 298, 960, -720, 0, 2794, 512, 38, 38, 38, 255 }, // 0x00000CD0
};

Vtx_t _tokinoma_room_0_vertices_00000CE0[32] = 
{
	 { -104, 200, 920, 0, 2007, -512, 0, 0, 0, 255 }, // 0x00000CE0
	 { -104, 200, 1120, 0, -551, -512, 25, 25, 25, 255 }, // 0x00000CF0
	 { -104, 0, 920, 0, 2009, 2048, 0, 0, 0, 255 }, // 0x00000D00
	 { 96, 0, 920, 0, 1536, 2046, 0, 0, 0, 255 }, // 0x00000D10
	 { 96, 0, 1120, 0, 4094, 2044, 140, 140, 140, 255 }, // 0x00000D20
	 { 96, 200, 1120, 0, 4094, -516, 25, 25, 25, 255 }, // 0x00000D30
	 { 96, 200, 920, 0, 1536, -514, 0, 0, 0, 255 }, // 0x00000D40
	 { 96, 200, 720, 0, -1024, -512, 25, 25, 25, 255 }, // 0x00000D50
	 { 247, 640, -720, 0, 3902, -6144, 51, 51, 51, 255 }, // 0x00000D60
	 { -247, 640, -720, 0, -2410, -6144, 51, 51, 51, 255 }, // 0x00000D70
	 { -247, 0, -720, 0, -2410, 2048, 51, 51, 51, 255 }, // 0x00000D80
	 { 247, 0, -720, 0, 3902, 2048, 51, 51, 51, 255 }, // 0x00000D90
	 { 684, 640, -335, 0, 3902, -6144, 51, 51, 51, 255 }, // 0x00000DA0
	 { 335, 640, -683, 0, -2405, -6144, 51, 51, 51, 255 }, // 0x00000DB0
	 { 335, 0, -683, 0, -2405, 2048, 51, 51, 51, 255 }, // 0x00000DC0
	 { 684, 0, -335, 0, 3902, 2048, 51, 51, 51, 255 }, // 0x00000DD0
	 { 720, 640, 246, 0, 3896, -4096, 63, 63, 63, 255 }, // 0x00000DE0
	 { 720, 640, -246, 0, -2405, -4096, 63, 63, 63, 255 }, // 0x00000DF0
	 { 720, 0, -246, 0, -2405, 4096, 63, 63, 63, 255 }, // 0x00000E00
	 { 720, 0, 246, 0, 3896, 4096, 63, 63, 63, 255 }, // 0x00000E10
	 { 335, 640, 683, 0, 4920, -6144, 89, 89, 89, 255 }, // 0x00000E20
	 { 684, 640, 335, 0, -1386, -6144, 89, 89, 89, 255 }, // 0x00000E30
	 { 684, 0, 335, 0, -1386, 2048, 89, 89, 89, 255 }, // 0x00000E40
	 { 335, 0, 683, 0, 4920, 2048, 89, 89, 89, 255 }, // 0x00000E50
	 { -247, 640, 720, 0, 3873, -6144, 140, 140, 140, 255 }, // 0x00000E60
	 { 247, 640, 720, 0, -2439, -6144, 140, 140, 140, 255 }, // 0x00000E70
	 { 247, 200, 720, 0, -2439, -512, 140, 140, 140, 255 }, // 0x00000E80
	 { -247, 200, 720, 0, 3873, -512, 140, 140, 140, 255 }, // 0x00000E90
	 { -684, 640, 335, 0, 4457, -6144, 114, 114, 114, 255 }, // 0x00000EA0
	 { -335, 640, 683, 0, -1849, -6144, 114, 114, 114, 255 }, // 0x00000EB0
	 { -335, 0, 683, 0, -1849, 2048, 114, 114, 114, 255 }, // 0x00000EC0
	 { -684, 0, 335, 0, 4457, 2048, 114, 114, 114, 255 }, // 0x00000ED0
};

Vtx_t _tokinoma_room_0_vertices_00000EE0[25] = 
{
	 { -720, 640, -246, 0, 3427, -6144, 76, 76, 76, 255 }, // 0x00000EE0
	 { -720, 640, 246, 0, -2873, -6144, 76, 76, 76, 255 }, // 0x00000EF0
	 { -720, 0, 246, 0, -2873, 2048, 76, 76, 76, 255 }, // 0x00000F00
	 { -720, 0, -246, 0, 3427, 2048, 76, 76, 76, 255 }, // 0x00000F10
	 { -335, 640, -683, 0, 4451, -6144, 51, 51, 51, 255 }, // 0x00000F20
	 { -684, 640, -335, 0, -1855, -6144, 51, 51, 51, 255 }, // 0x00000F30
	 { -684, 0, -335, 0, -1855, 2048, 51, 51, 51, 255 }, // 0x00000F40
	 { -335, 0, -683, 0, 4451, 2048, 51, 51, 51, 255 }, // 0x00000F50
	 { 96, 0, 720, 0, -1024, 2048, 76, 76, 76, 255 }, // 0x00000F60
	 { 96, 0, 920, 0, 1536, 2046, 0, 0, 0, 255 }, // 0x00000F70
	 { 96, 200, 720, 0, -1024, -512, 25, 25, 25, 255 }, // 0x00000F80
	 { -104, 0, 720, 0, 4569, 2048, 76, 76, 76, 255 }, // 0x00000F90
	 { -104, 200, 720, 0, 4567, -512, 25, 25, 25, 255 }, // 0x00000FA0
	 { -104, 0, 920, 0, 2009, 2048, 0, 0, 0, 255 }, // 0x00000FB0
	 { -104, 200, 920, 0, 2007, -512, 0, 0, 0, 255 }, // 0x00000FC0
	 { -104, 200, 1120, 0, -551, -512, 25, 25, 25, 255 }, // 0x00000FD0
	 { -104, 0, 1120, 0, -548, 2048, 140, 140, 140, 255 }, // 0x00000FE0
	 { 96, 200, 720, 0, -512, -512, 140, 140, 140, 255 }, // 0x00000FF0
	 { 247, 200, 720, 0, -2439, -512, 140, 140, 140, 255 }, // 0x00001000
	 { 247, 0, 720, 0, -2439, 2048, 140, 140, 140, 255 }, // 0x00001010
	 { 96, 0, 720, 0, -512, 2048, 140, 140, 140, 255 }, // 0x00001020
	 { -247, 200, 720, 0, 3873, -512, 140, 140, 140, 255 }, // 0x00001030
	 { -104, 200, 720, 0, 2048, -512, 140, 140, 140, 255 }, // 0x00001040
	 { -104, 0, 720, 0, 2048, 2048, 140, 140, 140, 255 }, // 0x00001050
	 { -247, 0, 720, 0, 3873, 2048, 140, 140, 140, 255 }, // 0x00001060
};

Vtx_t _tokinoma_room_0_vertices_00001070[8] = 
{
	 { -92, 0, -1047, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001070
	 { 1086, 0, -59, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001080
	 { -92, 1600, -1047, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001090
	 { 1086, 1600, -59, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010A0
	 { -1164, 0, 231, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010B0
	 { 13, 0, 1219, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010C0
	 { -1164, 1600, 231, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010D0
	 { 13, 1600, 1219, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010E0
};

Gfx _tokinoma_room_0_dlist_000010F0[] =
{
	gsDPPipeSync(), // 0x000010F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000010F8
	gsSPVertex(_tokinoma_room_0_vertices_00001070, 8, 0), // 0x00001100
	gsSPCullDisplayList(0, 7), // 0x00001108
	gsDPPipeSync(), // 0x00001110
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001118
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001120
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001128
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_00011FA0), // 0x00001130
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001138
	gsDPLoadSync(), // 0x00001140
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001148
	gsDPPipeSync(), // 0x00001150
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001158
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001160
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001168
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001170
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001178
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001180
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001188
	gsSPVertex(_tokinoma_room_0_vertices_000009E0, 6, 0), // 0x00001190
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001198
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x000011A0
	gsDPPipeSync(), // 0x000011A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_00010FA0), // 0x000011B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000011B8
	gsDPLoadSync(), // 0x000011C0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000011C8
	gsDPPipeSync(), // 0x000011D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000011D8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000011E0
	gsSPVertex(_tokinoma_room_0_vertices_00000A40, 32, 0), // 0x000011E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000011F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000011F8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001200
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001208
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00001210
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00001218
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00001220
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00001228
	gsSPVertex(_tokinoma_room_0_vertices_00000C40, 10, 0), // 0x00001230
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001238
	gsSP2Triangles(4, 0, 5, 0, 6, 7, 5, 0), // 0x00001240
	gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0), // 0x00001248
	gsDPPipeSync(), // 0x00001250
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000DFA0), // 0x00001258
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 1, 5, 0), // 0x00001260
	gsDPLoadSync(), // 0x00001268
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001270
	gsDPPipeSync(), // 0x00001278
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 1, 5, 0), // 0x00001280
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001288
	gsSPVertex(_tokinoma_room_0_vertices_00000CE0, 32, 0), // 0x00001290
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00001298
	gsSP2Triangles(6, 3, 5, 0, 3, 6, 7, 0), // 0x000012A0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000012A8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000012B0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000012B8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000012C0
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x000012C8
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000012D0
	gsSPVertex(_tokinoma_room_0_vertices_00000EE0, 25, 0), // 0x000012D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000012E0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000012E8
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0), // 0x000012F0
	gsSP2Triangles(12, 14, 13, 0, 15, 16, 13, 0), // 0x000012F8
	gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0), // 0x00001300
	gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0), // 0x00001308
	gsSPEndDisplayList(), // 0x00001310
};

Vtx_t _tokinoma_room_0_vertices_00001318[32] = 
{
	 { 608, 979, -378, 0, 433, -9216, 63, 63, 63, 255 }, // 0x00001318
	 { 486, 1622, -500, 0, 433, -17735, 63, 63, 63, 255 }, // 0x00001328
	 { 503, 1520, -515, 0, 537, -16470, 63, 63, 63, 255 }, // 0x00001338
	 { 607, 972, -412, 0, 537, -9216, 63, 63, 63, 255 }, // 0x00001348
	 { 599, 928, -389, 0, 433, -8805, 38, 38, 38, 255 }, // 0x00001358
	 { 599, 0, -389, 0, 433, 3072, 38, 38, 38, 255 }, // 0x00001368
	 { 632, 0, -386, 0, 772, 3072, 38, 38, 38, 255 }, // 0x00001378
	 { 632, 928, -386, 0, 772, -8805, 38, 38, 38, 255 }, // 0x00001388
	 { 599, 0, -389, 0, 433, 3072, 63, 63, 63, 255 }, // 0x00001398
	 { 599, 928, -389, 0, 433, -8805, 63, 63, 63, 255 }, // 0x000013A8
	 { 608, 928, -411, 0, 503, -8805, 63, 63, 63, 255 }, // 0x000013B8
	 { 608, 0, -411, 0, 503, 3072, 63, 63, 63, 255 }, // 0x000013C8
	 { 365, 970, -623, 0, 433, -9216, 63, 63, 63, 255 }, // 0x000013D8
	 { 487, 1615, -501, 0, 433, -17763, 63, 63, 63, 255 }, // 0x000013E8
	 { 500, 1640, -518, 0, 503, -18066, 63, 63, 63, 255 }, // 0x000013F8
	 { 374, 972, -645, 0, 503, -9216, 63, 63, 63, 255 }, // 0x00001408
	 { 374, 0, -611, 0, 433, 3072, 63, 63, 63, 255 }, // 0x00001418
	 { 374, 928, -611, 0, 433, -8805, 63, 63, 63, 255 }, // 0x00001428
	 { 373, 928, -646, 0, 537, -8805, 63, 63, 63, 255 }, // 0x00001438
	 { 373, 0, -646, 0, 537, 3072, 63, 63, 63, 255 }, // 0x00001448
	 { 374, 928, -611, 0, 433, -8805, 38, 38, 38, 255 }, // 0x00001458
	 { 374, 0, -611, 0, 433, 3072, 38, 38, 38, 255 }, // 0x00001468
	 { 398, 0, -620, 0, 691, 3072, 38, 38, 38, 255 }, // 0x00001478
	 { 398, 928, -620, 0, 691, -8805, 38, 38, 38, 255 }, // 0x00001488
	 { 628, 0, -260, 0, 569, 2706, 63, 63, 63, 255 }, // 0x00001498
	 { 628, 636, -260, 0, 569, -5436, 63, 63, 63, 255 }, // 0x000014A8
	 { 646, 636, -289, 0, 207, -5436, 63, 63, 63, 255 }, // 0x000014B8
	 { 646, 0, -289, 0, 207, 2706, 63, 63, 63, 255 }, // 0x000014C8
	 { 628, 636, -260, 0, 569, -5436, 38, 38, 38, 255 }, // 0x000014D8
	 { 628, 0, -260, 0, 569, 2706, 38, 38, 38, 255 }, // 0x000014E8
	 { 662, 0, -251, 0, 456, 2706, 38, 38, 38, 255 }, // 0x000014F8
	 { 662, 636, -251, 0, 456, -5436, 38, 38, 38, 255 }, // 0x00001508
};

Vtx_t _tokinoma_room_0_vertices_00001518[32] = 
{
	 { 260, 0, -628, 0, 433, 3072, 63, 63, 63, 255 }, // 0x00001518
	 { 260, 636, -628, 0, 433, -5070, 63, 63, 63, 255 }, // 0x00001528
	 { 253, 636, -661, 0, 541, -5070, 63, 63, 63, 255 }, // 0x00001538
	 { 253, 0, -661, 0, 541, 3072, 63, 63, 63, 255 }, // 0x00001548
	 { 260, 636, -628, 0, 433, -5070, 38, 38, 38, 255 }, // 0x00001558
	 { 260, 0, -628, 0, 433, 3072, 38, 38, 38, 255 }, // 0x00001568
	 { 291, 0, -645, 0, 811, 3072, 38, 38, 38, 255 }, // 0x00001578
	 { 291, 636, -645, 0, 811, -5070, 38, 38, 38, 255 }, // 0x00001588
	 { 227, 0, -671, 0, 357, 3072, 89, 89, 89, 255 }, // 0x00001598
	 { 227, 928, -671, 0, 357, -8805, 89, 89, 89, 255 }, // 0x000015A8
	 { 247, 928, -720, 0, 799, -8805, 89, 89, 89, 255 }, // 0x000015B8
	 { 247, 0, -720, 0, 799, 3072, 89, 89, 89, 255 }, // 0x000015C8
	 { 635, 0, -314, 0, 38, 2706, 76, 76, 76, 255 }, // 0x000015D8
	 { 635, 928, -314, 0, 38, -9171, 76, 76, 76, 255 }, // 0x000015E8
	 { 684, 928, -335, 0, -424, -9171, 76, 76, 76, 255 }, // 0x000015F8
	 { 684, 0, -335, 0, -424, 2706, 76, 76, 76, 255 }, // 0x00001608
	 { 673, 928, -226, 0, 619, -9171, 25, 25, 25, 255 }, // 0x00001618
	 { 673, 0, -226, 0, 619, 2706, 25, 25, 25, 255 }, // 0x00001628
	 { 720, 0, -246, 0, 166, 2706, 25, 25, 25, 255 }, // 0x00001638
	 { 720, 928, -246, 0, 166, -9171, 25, 25, 25, 255 }, // 0x00001648
	 { 316, 928, -635, 0, 988, -8805, 25, 25, 25, 255 }, // 0x00001658
	 { 316, 0, -635, 0, 988, 3072, 25, 25, 25, 255 }, // 0x00001668
	 { 335, 0, -683, 0, 1421, 3072, 25, 25, 25, 255 }, // 0x00001678
	 { 335, 928, -683, 0, 1421, -8805, 25, 25, 25, 255 }, // 0x00001688
	 { 316, 0, -635, 0, 988, 3072, 51, 51, 51, 255 }, // 0x00001698
	 { 316, 1600, -635, 0, 988, -17408, 51, 51, 51, 255 }, // 0x000016A8
	 { 227, 1600, -671, 0, 357, -17408, 51, 51, 51, 255 }, // 0x000016B8
	 { 227, 0, -671, 0, 357, 3072, 51, 51, 51, 255 }, // 0x000016C8
	 { 673, 0, -226, 0, 619, 2706, 51, 51, 51, 255 }, // 0x000016D8
	 { 673, 1600, -226, 0, 619, -17774, 51, 51, 51, 255 }, // 0x000016E8
	 { 635, 1600, -314, 0, 38, -17774, 51, 51, 51, 255 }, // 0x000016F8
	 { 635, 0, -314, 0, 38, 2706, 51, 51, 51, 255 }, // 0x00001708
};

Vtx_t _tokinoma_room_0_vertices_00001718[8] = 
{
	 { 316, 1600, -635, 0, 1151, 4795, 38, 38, 38, 255 }, // 0x00001718
	 { 77, 1942, -91, 0, 1339, -3885, 38, 38, 38, 255 }, // 0x00001728
	 { 21, 1942, -115, 0, 158, -3829, 0, 0, 0, 255 }, // 0x00001738
	 { 227, 1600, -671, 0, -31, 4846, 38, 38, 38, 255 }, // 0x00001748
	 { 673, 1600, -226, 0, 2205, 4702, 51, 51, 51, 255 }, // 0x00001758
	 { 119, 1942, -10, 0, 2394, -3977, 51, 51, 51, 255 }, // 0x00001768
	 { 96, 1942, -67, 0, 1213, -3921, 0, 0, 0, 255 }, // 0x00001778
	 { 635, 1600, -314, 0, 1024, 4754, 51, 51, 51, 255 }, // 0x00001788
};

Vtx_t _tokinoma_room_0_vertices_00001798[8] = 
{
	 { 119, -63, -386, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001798
	 { 695, -63, -177, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017A8
	 { 318, 39, -931, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017B8
	 { 893, 39, -722, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017C8
	 { -2, 1942, -54, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017D8
	 { 574, 1942, 155, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017E8
	 { 197, 2044, -599, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017F8
	 { 772, 2044, -389, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001808
};

Gfx _tokinoma_room_0_dlist_00001818[] =
{
	gsDPPipeSync(), // 0x00001818
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001820
	gsSPVertex(_tokinoma_room_0_vertices_00001798, 8, 0), // 0x00001828
	gsSPCullDisplayList(0, 7), // 0x00001830
	gsDPPipeSync(), // 0x00001838
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001840
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001848
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001850
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000EFA0), // 0x00001858
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001860
	gsDPLoadSync(), // 0x00001868
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001870
	gsDPPipeSync(), // 0x00001878
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001880
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001888
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001890
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001898
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000018A0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000018A8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000018B0
	gsSPVertex(_tokinoma_room_0_vertices_00001318, 32, 0), // 0x000018B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000018C0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000018C8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000018D0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000018D8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000018E0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000018E8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x000018F0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000018F8
	gsSPVertex(_tokinoma_room_0_vertices_00001518, 32, 0), // 0x00001900
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001908
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001910
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001918
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001920
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00001928
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00001930
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00001938
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00001940
	gsSPVertex(_tokinoma_room_0_vertices_00001718, 8, 0), // 0x00001948
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001950
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001958
	gsSPEndDisplayList(), // 0x00001960
};

Vtx_t _tokinoma_room_0_vertices_00001968[32] = 
{
	 { 389, 0, 597, 0, 2048, 4096, 140, 140, 140, 255 }, // 0x00001968
	 { 389, 928, 597, 0, 2048, -7781, 140, 140, 140, 255 }, // 0x00001978
	 { 412, 928, 606, 0, 1793, -7781, 140, 140, 140, 255 }, // 0x00001988
	 { 412, 0, 606, 0, 1793, 4096, 140, 140, 140, 255 }, // 0x00001998
	 { 389, 928, 597, 0, 2048, -7781, 51, 51, 51, 255 }, // 0x000019A8
	 { 389, 0, 597, 0, 2048, 4096, 51, 51, 51, 255 }, // 0x000019B8
	 { 386, 0, 633, 0, 1938, 4096, 51, 51, 51, 255 }, // 0x000019C8
	 { 386, 928, 633, 0, 1938, -7781, 51, 51, 51, 255 }, // 0x000019D8
	 { 613, 0, 371, 0, 1024, 3730, 114, 114, 114, 255 }, // 0x000019E8
	 { 613, 928, 371, 0, 1024, -8147, 114, 114, 114, 255 }, // 0x000019F8
	 { 649, 928, 370, 0, 1133, -8147, 114, 114, 114, 255 }, // 0x00001A08
	 { 649, 0, 370, 0, 1133, 3730, 114, 114, 114, 255 }, // 0x00001A18
	 { 613, 928, 371, 0, 1024, -8147, 51, 51, 51, 255 }, // 0x00001A28
	 { 613, 0, 371, 0, 1024, 3730, 51, 51, 51, 255 }, // 0x00001A38
	 { 622, 0, 396, 0, 1294, 3730, 51, 51, 51, 255 }, // 0x00001A48
	 { 622, 928, 396, 0, 1294, -8147, 51, 51, 51, 255 }, // 0x00001A58
	 { 392, 975, 594, 0, 2048, -8192, 140, 140, 140, 255 }, // 0x00001A68
	 { 503, 1564, 482, 0, 2048, -15998, 140, 140, 140, 255 }, // 0x00001A78
	 { 519, 1524, 499, 0, 1793, -15507, 140, 140, 140, 255 }, // 0x00001A88
	 { 415, 972, 604, 0, 1793, -8192, 140, 140, 140, 255 }, // 0x00001A98
	 { 616, 967, 368, 0, 1024, -8558, 114, 114, 114, 255 }, // 0x00001AA8
	 { 503, 1565, 482, 0, 1024, -16490, 114, 114, 114, 255 }, // 0x00001AB8
	 { 525, 1641, 494, 0, 1133, -17408, 114, 114, 114, 255 }, // 0x00001AC8
	 { 651, 974, 367, 0, 1133, -8558, 114, 114, 114, 255 }, // 0x00001AD8
	 { 260, 0, 628, 0, 2048, 4096, 140, 140, 140, 255 }, // 0x00001AE8
	 { 260, 636, 628, 0, 2048, -4046, 140, 140, 140, 255 }, // 0x00001AF8
	 { 289, 636, 646, 0, 1681, -4046, 140, 140, 140, 255 }, // 0x00001B08
	 { 289, 0, 646, 0, 1681, 4096, 140, 140, 140, 255 }, // 0x00001B18
	 { 260, 636, 628, 0, 2048, -4046, 51, 51, 51, 255 }, // 0x00001B28
	 { 260, 0, 628, 0, 2048, 4096, 51, 51, 51, 255 }, // 0x00001B38
	 { 251, 0, 662, 0, 1936, 4096, 51, 51, 51, 255 }, // 0x00001B48
	 { 251, 636, 662, 0, 1936, -4046, 51, 51, 51, 255 }, // 0x00001B58
};

Vtx_t _tokinoma_room_0_vertices_00001B68[32] = 
{
	 { 628, 0, 260, 0, 1024, 3730, 114, 114, 114, 255 }, // 0x00001B68
	 { 628, 636, 260, 0, 1024, -4412, 114, 114, 114, 255 }, // 0x00001B78
	 { 661, 636, 253, 0, 1134, -4412, 114, 114, 114, 255 }, // 0x00001B88
	 { 661, 0, 253, 0, 1134, 3730, 114, 114, 114, 255 }, // 0x00001B98
	 { 628, 636, 260, 0, 1024, -4412, 51, 51, 51, 255 }, // 0x00001BA8
	 { 628, 0, 260, 0, 1024, 3730, 51, 51, 51, 255 }, // 0x00001BB8
	 { 645, 0, 291, 0, 1397, 3730, 51, 51, 51, 255 }, // 0x00001BC8
	 { 645, 636, 291, 0, 1397, -4412, 51, 51, 51, 255 }, // 0x00001BD8
	 { 673, 0, 226, 0, 947, 3730, 114, 114, 114, 255 }, // 0x00001BE8
	 { 673, 928, 226, 0, 947, -8147, 114, 114, 114, 255 }, // 0x00001BF8
	 { 720, 928, 246, 0, 1386, -8147, 114, 114, 114, 255 }, // 0x00001C08
	 { 720, 0, 246, 0, 1386, 3730, 114, 114, 114, 255 }, // 0x00001C18
	 { 316, 0, 635, 0, 1501, 4096, 114, 114, 114, 255 }, // 0x00001C28
	 { 316, 928, 635, 0, 1501, -7781, 114, 114, 114, 255 }, // 0x00001C38
	 { 335, 928, 683, 0, 746, -7781, 114, 114, 114, 255 }, // 0x00001C48
	 { 335, 0, 683, 0, 746, 4096, 114, 114, 114, 255 }, // 0x00001C58
	 { 227, 928, 671, 0, 2097, -7781, 51, 51, 51, 255 }, // 0x00001C68
	 { 227, 0, 671, 0, 2097, 4096, 51, 51, 51, 255 }, // 0x00001C78
	 { 247, 0, 720, 0, 1327, 4096, 51, 51, 51, 255 }, // 0x00001C88
	 { 247, 928, 720, 0, 1327, -7781, 51, 51, 51, 255 }, // 0x00001C98
	 { 635, 928, 314, 0, 1563, -8147, 51, 51, 51, 255 }, // 0x00001CA8
	 { 635, 0, 314, 0, 1563, 3730, 51, 51, 51, 255 }, // 0x00001CB8
	 { 684, 0, 335, 0, 2011, 3730, 51, 51, 51, 255 }, // 0x00001CC8
	 { 684, 928, 335, 0, 2011, -8147, 51, 51, 51, 255 }, // 0x00001CD8
	 { 635, 0, 314, 0, 1563, 3730, 63, 63, 63, 255 }, // 0x00001CE8
	 { 635, 1600, 314, 0, 1563, -16750, 63, 63, 63, 255 }, // 0x00001CF8
	 { 673, 1600, 226, 0, 947, -16750, 63, 63, 63, 255 }, // 0x00001D08
	 { 673, 0, 226, 0, 947, 3730, 63, 63, 63, 255 }, // 0x00001D18
	 { 227, 0, 671, 0, 2097, 4096, 102, 102, 102, 255 }, // 0x00001D28
	 { 227, 1600, 671, 0, 2097, -16384, 102, 102, 102, 255 }, // 0x00001D38
	 { 316, 1600, 635, 0, 1501, -16384, 102, 102, 102, 255 }, // 0x00001D48
	 { 316, 0, 635, 0, 1501, 4096, 102, 102, 102, 255 }, // 0x00001D58
};

Vtx_t _tokinoma_room_0_vertices_00001D68[8] = 
{
	 { 227, 1600, 671, 0, 963, 4814, 89, 89, 89, 255 }, // 0x00001D68
	 { 10, 1942, 119, 0, 1027, -3849, 89, 89, 89, 255 }, // 0x00001D78
	 { 67, 1942, 96, 0, 1368, -3847, 0, 0, 0, 255 }, // 0x00001D88
	 { 316, 1600, 635, 0, 1303, 4812, 89, 89, 89, 255 }, // 0x00001D98
	 { 635, 1600, 314, 0, 1841, 3303, 63, 63, 63, 255 }, // 0x00001DA8
	 { 91, 1942, 77, 0, 1617, -5366, 63, 63, 63, 255 }, // 0x00001DB8
	 { 115, 1942, 20, 0, 435, -5386, 0, 0, 0, 255 }, // 0x00001DC8
	 { 673, 1600, 226, 0, 659, 3279, 63, 63, 63, 255 }, // 0x00001DD8
};

Vtx_t _tokinoma_room_0_vertices_00001DE8[8] = 
{
	 { 359, 0, -184, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DE8
	 { 776, 0, 313, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DF8
	 { 359, 1942, -184, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E08
	 { 776, 1942, 313, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E18
	 { -152, 0, 245, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E28
	 { 265, 0, 742, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E38
	 { -152, 1942, 245, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E48
	 { 265, 1942, 742, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E58
};

Gfx _tokinoma_room_0_dlist_00001E68[] =
{
	gsDPPipeSync(), // 0x00001E68
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001E70
	gsSPVertex(_tokinoma_room_0_vertices_00001DE8, 8, 0), // 0x00001E78
	gsSPCullDisplayList(0, 7), // 0x00001E80
	gsDPPipeSync(), // 0x00001E88
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001E90
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001E98
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001EA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000EFA0), // 0x00001EA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001EB0
	gsDPLoadSync(), // 0x00001EB8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001EC0
	gsDPPipeSync(), // 0x00001EC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001ED0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001ED8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001EE0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001EE8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001EF0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001EF8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001F00
	gsSPVertex(_tokinoma_room_0_vertices_00001968, 32, 0), // 0x00001F08
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001F10
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001F18
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001F20
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001F28
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00001F30
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00001F38
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00001F40
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00001F48
	gsSPVertex(_tokinoma_room_0_vertices_00001B68, 32, 0), // 0x00001F50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001F58
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001F60
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001F68
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001F70
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00001F78
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00001F80
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00001F88
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00001F90
	gsSPVertex(_tokinoma_room_0_vertices_00001D68, 8, 0), // 0x00001F98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001FA0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001FA8
	gsSPEndDisplayList(), // 0x00001FB0
};

Vtx_t _tokinoma_room_0_vertices_00001FB8[32] = 
{
	 { -405, 973, 605, 0, 1024, -7534, 127, 127, 127, 255 }, // 0x00001FB8
	 { -483, 1525, 484, 0, 1024, -15121, 127, 127, 127, 255 }, // 0x00001FC8
	 { -513, 1650, 506, 0, 1132, -16384, 102, 102, 102, 255 }, // 0x00001FD8
	 { -386, 982, 632, 0, 1132, -7534, 127, 127, 127, 255 }, // 0x00001FE8
	 { -516, 1641, 503, 0, 915, -19090, 102, 102, 102, 255 }, // 0x00001FF8
	 { -483, 1529, 485, 0, 1024, -17995, 153, 153, 153, 255 }, // 0x00002008
	 { -614, 964, 394, 0, 1024, -10240, 153, 153, 153, 255 }, // 0x00002018
	 { -642, 973, 376, 0, 915, -10240, 153, 153, 153, 255 }, // 0x00002028
	 { -384, 928, 601, 0, 1024, -7123, 114, 114, 114, 255 }, // 0x00002038
	 { -384, 0, 601, 0, 1024, 4754, 114, 114, 114, 255 }, // 0x00002048
	 { -409, 0, 610, 0, 1292, 4754, 114, 114, 114, 255 }, // 0x00002058
	 { -409, 928, 610, 0, 1292, -7123, 114, 114, 114, 255 }, // 0x00002068
	 { -384, 0, 601, 0, 1024, 4754, 127, 127, 127, 255 }, // 0x00002078
	 { -384, 928, 601, 0, 1024, -7123, 127, 127, 127, 255 }, // 0x00002088
	 { -382, 928, 636, 0, 1132, -7123, 127, 127, 127, 255 }, // 0x00002098
	 { -382, 0, 636, 0, 1132, 4754, 127, 127, 127, 255 }, // 0x000020A8
	 { -602, 928, 384, 0, 1024, -9829, 153, 153, 153, 255 }, // 0x000020B8
	 { -602, 0, 384, 0, 1024, 2048, 153, 153, 153, 255 }, // 0x000020C8
	 { -638, 0, 381, 0, 915, 2048, 153, 153, 153, 255 }, // 0x000020D8
	 { -638, 928, 381, 0, 915, -9829, 153, 153, 153, 255 }, // 0x000020E8
	 { -602, 0, 384, 0, 1024, 2048, 51, 51, 51, 255 }, // 0x000020F8
	 { -602, 928, 384, 0, 1024, -9829, 51, 51, 51, 255 }, // 0x00002108
	 { -612, 928, 407, 0, 771, -9829, 51, 51, 51, 255 }, // 0x00002118
	 { -612, 0, 407, 0, 771, 2048, 51, 51, 51, 255 }, // 0x00002128
	 { -628, 0, 260, 0, 1024, 2048, 51, 51, 51, 255 }, // 0x00002138
	 { -628, 636, 260, 0, 1024, -6094, 51, 51, 51, 255 }, // 0x00002148
	 { -646, 636, 289, 0, 662, -6094, 51, 51, 51, 255 }, // 0x00002158
	 { -646, 0, 289, 0, 662, 2048, 51, 51, 51, 255 }, // 0x00002168
	 { -628, 636, 260, 0, 1024, -6094, 153, 153, 153, 255 }, // 0x00002178
	 { -628, 0, 260, 0, 1024, 2048, 153, 153, 153, 255 }, // 0x00002188
	 { -662, 0, 251, 0, 911, 2048, 153, 153, 153, 255 }, // 0x00002198
	 { -662, 636, 251, 0, 911, -6094, 153, 153, 153, 255 }, // 0x000021A8
};

Vtx_t _tokinoma_room_0_vertices_000021B8[32] = 
{
	 { -260, 0, 628, 0, 1024, 4754, 127, 127, 127, 255 }, // 0x000021B8
	 { -260, 636, 628, 0, 1024, -3388, 127, 127, 127, 255 }, // 0x000021C8
	 { -253, 636, 661, 0, 1132, -3388, 127, 127, 127, 255 }, // 0x000021D8
	 { -253, 0, 661, 0, 1132, 4754, 127, 127, 127, 255 }, // 0x000021E8
	 { -260, 636, 628, 0, 1024, -3388, 114, 114, 114, 255 }, // 0x000021F8
	 { -260, 0, 628, 0, 1024, 4754, 114, 114, 114, 255 }, // 0x00002208
	 { -291, 0, 645, 0, 1403, 4754, 114, 114, 114, 255 }, // 0x00002218
	 { -291, 636, 645, 0, 1403, -3388, 114, 114, 114, 255 }, // 0x00002228
	 { -227, 0, 671, 0, 948, 4754, 51, 51, 51, 255 }, // 0x00002238
	 { -227, 928, 671, 0, 948, -7123, 51, 51, 51, 255 }, // 0x00002248
	 { -247, 928, 720, 0, 1675, -7123, 51, 51, 51, 255 }, // 0x00002258
	 { -247, 0, 720, 0, 1675, 4754, 51, 51, 51, 255 }, // 0x00002268
	 { -635, 0, 314, 0, 492, 2048, 51, 51, 51, 255 }, // 0x00002278
	 { -635, 928, 314, 0, 492, -9829, 51, 51, 51, 255 }, // 0x00002288
	 { -684, 928, 335, 0, 30, -9829, 51, 51, 51, 255 }, // 0x00002298
	 { -684, 0, 335, 0, 30, 2048, 51, 51, 51, 255 }, // 0x000022A8
	 { -673, 928, 226, 0, 1073, -9829, 114, 114, 114, 255 }, // 0x000022B8
	 { -673, 0, 226, 0, 1073, 2048, 114, 114, 114, 255 }, // 0x000022C8
	 { -720, 0, 246, 0, 620, 2048, 114, 114, 114, 255 }, // 0x000022D8
	 { -720, 928, 246, 0, 620, -9829, 114, 114, 114, 255 }, // 0x000022E8
	 { -316, 928, 635, 0, 1579, -7123, 51, 51, 51, 255 }, // 0x000022F8
	 { -316, 0, 635, 0, 1579, 4754, 51, 51, 51, 255 }, // 0x00002308
	 { -335, 0, 683, 0, 2292, 4754, 51, 51, 51, 255 }, // 0x00002318
	 { -335, 928, 683, 0, 2292, -7123, 51, 51, 51, 255 }, // 0x00002328
	 { -316, 0, 635, 0, 1579, 4754, 153, 153, 153, 255 }, // 0x00002338
	 { -316, 1600, 635, 0, 1579, -15726, 153, 153, 153, 255 }, // 0x00002348
	 { -227, 1600, 671, 0, 948, -15726, 153, 153, 153, 255 }, // 0x00002358
	 { -227, 0, 671, 0, 948, 4754, 153, 153, 153, 255 }, // 0x00002368
	 { -673, 0, 226, 0, 1073, 2048, 127, 127, 127, 255 }, // 0x00002378
	 { -673, 1600, 226, 0, 1073, -18432, 127, 127, 127, 255 }, // 0x00002388
	 { -635, 1600, 314, 0, 492, -18432, 127, 127, 127, 255 }, // 0x00002398
	 { -635, 0, 314, 0, 492, 2048, 127, 127, 127, 255 }, // 0x000023A8
};

Vtx_t _tokinoma_room_0_vertices_000023B8[8] = 
{
	 { -673, 1600, 226, 0, 1615, 4754, 89, 89, 89, 255 }, // 0x000023B8
	 { -119, 1942, 10, 0, 1508, -3914, 89, 89, 89, 255 }, // 0x000023C8
	 { -96, 1942, 67, 0, 326, -3939, 0, 0, 0, 255 }, // 0x000023D8
	 { -635, 1600, 314, 0, 433, 4725, 89, 89, 89, 255 }, // 0x000023E8
	 { -316, 1600, 635, 0, 1615, 4754, 102, 102, 102, 255 }, // 0x000023F8
	 { -77, 1942, 91, 0, 1508, -3914, 102, 102, 102, 255 }, // 0x00002408
	 { -21, 1942, 115, 0, 326, -3939, 0, 0, 0, 255 }, // 0x00002418
	 { -227, 1600, 671, 0, 433, 4725, 102, 102, 102, 255 }, // 0x00002428
};

Vtx_t _tokinoma_room_0_vertices_00002438[8] = 
{
	 { -695, -63, 177, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002438
	 { -119, -63, 386, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002448
	 { -574, 1942, -155, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002458
	 { 2, 1942, 54, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002468
	 { -893, 39, 722, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002478
	 { -318, 39, 931, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002488
	 { -772, 2044, 389, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002498
	 { -197, 2044, 599, 0, 0, 0, 0, 0, 0, 0 }, // 0x000024A8
};

Gfx _tokinoma_room_0_dlist_000024B8[] =
{
	gsDPPipeSync(), // 0x000024B8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000024C0
	gsSPVertex(_tokinoma_room_0_vertices_00002438, 8, 0), // 0x000024C8
	gsSPCullDisplayList(0, 7), // 0x000024D0
	gsDPPipeSync(), // 0x000024D8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000024E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000024E8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000024F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000EFA0), // 0x000024F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002500
	gsDPLoadSync(), // 0x00002508
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00002510
	gsDPPipeSync(), // 0x00002518
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002520
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002528
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002530
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002538
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002540
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002548
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002550
	gsSPVertex(_tokinoma_room_0_vertices_00001FB8, 32, 0), // 0x00002558
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002560
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002568
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002570
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002578
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002580
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002588
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002590
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002598
	gsSPVertex(_tokinoma_room_0_vertices_000021B8, 32, 0), // 0x000025A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000025A8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000025B0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000025B8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000025C0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000025C8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000025D0
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x000025D8
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000025E0
	gsSPVertex(_tokinoma_room_0_vertices_000023B8, 8, 0), // 0x000025E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000025F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000025F8
	gsSPEndDisplayList(), // 0x00002600
};

Vtx_t _tokinoma_room_0_vertices_00002608[32] = 
{
	 { -602, 928, -384, 0, 1457, -8805, 114, 114, 114, 255 }, // 0x00002608
	 { -602, 0, -384, 0, 1457, 3072, 114, 114, 114, 255 }, // 0x00002618
	 { -610, 0, -408, 0, 1714, 3072, 114, 114, 114, 255 }, // 0x00002628
	 { -610, 928, -408, 0, 1714, -8805, 114, 114, 114, 255 }, // 0x00002638
	 { -602, 0, -384, 0, 1457, 3072, 51, 51, 51, 255 }, // 0x00002648
	 { -602, 928, -384, 0, 1457, -8805, 51, 51, 51, 255 }, // 0x00002658
	 { -636, 928, -383, 0, 1560, -8805, 51, 51, 51, 255 }, // 0x00002668
	 { -636, 0, -383, 0, 1560, 3072, 38, 38, 38, 255 }, // 0x00002678
	 { -383, 928, -601, 0, 2893, -8805, 114, 114, 114, 255 }, // 0x00002688
	 { -383, 0, -601, 0, 2893, 3072, 114, 114, 114, 255 }, // 0x00002698
	 { -380, 0, -638, 0, 3161, 3072, 114, 114, 114, 255 }, // 0x000026A8
	 { -380, 928, -638, 0, 3161, -8805, 114, 114, 114, 255 }, // 0x000026B8
	 { -383, 0, -601, 0, 2893, 3072, 25, 25, 25, 255 }, // 0x000026C8
	 { -383, 928, -601, 0, 2893, -8805, 25, 25, 25, 255 }, // 0x000026D8
	 { -407, 928, -611, 0, 3127, -8805, 25, 25, 25, 255 }, // 0x000026E8
	 { -407, 0, -611, 0, 3127, 3072, 25, 25, 25, 255 }, // 0x000026F8
	 { -505, 1639, -514, 0, 3161, -18066, 114, 114, 114, 255 }, // 0x00002708
	 { -497, 1579, -487, 0, 2893, -17370, 114, 114, 114, 255 }, // 0x00002718
	 { -381, 964, -604, 0, 2893, -9216, 114, 114, 114, 255 }, // 0x00002728
	 { -378, 971, -640, 0, 3161, -9216, 114, 114, 114, 255 }, // 0x00002738
	 { -499, 1581, -487, 0, 1457, -17215, 114, 114, 114, 255 }, // 0x00002748
	 { -613, 977, -373, 0, 1457, -9216, 114, 114, 114, 255 }, // 0x00002758
	 { -622, 974, -396, 0, 1714, -9216, 114, 114, 114, 255 }, // 0x00002768
	 { -515, 1542, -504, 0, 1714, -16733, 114, 114, 114, 255 }, // 0x00002778
	 { -260, 0, -628, 0, 2893, 3072, 25, 25, 25, 255 }, // 0x00002788
	 { -260, 636, -628, 0, 2893, -5070, 25, 25, 25, 255 }, // 0x00002798
	 { -289, 636, -646, 0, 3218, -5070, 25, 25, 25, 255 }, // 0x000027A8
	 { -289, 0, -646, 0, 3218, 3072, 25, 25, 25, 255 }, // 0x000027B8
	 { -260, 636, -628, 0, 2893, -5070, 114, 114, 114, 255 }, // 0x000027C8
	 { -260, 0, -628, 0, 2893, 3072, 114, 114, 114, 255 }, // 0x000027D8
	 { -251, 0, -662, 0, 3157, 3072, 114, 114, 114, 255 }, // 0x000027E8
	 { -251, 636, -662, 0, 3157, -5070, 114, 114, 114, 255 }, // 0x000027F8
};

Vtx_t _tokinoma_room_0_vertices_00002808[39] = 
{
	 { -628, 636, -260, 0, 1457, -5070, 114, 114, 114, 255 }, // 0x00002808
	 { -628, 0, -260, 0, 1457, 3072, 114, 114, 114, 255 }, // 0x00002818
	 { -645, 0, -291, 0, 1830, 3072, 114, 114, 114, 255 }, // 0x00002828
	 { -645, 636, -291, 0, 1830, -5070, 114, 114, 114, 255 }, // 0x00002838
	 { -628, 0, -260, 0, 1457, 3072, 51, 51, 51, 255 }, // 0x00002848
	 { -628, 636, -260, 0, 1457, -5070, 51, 51, 51, 255 }, // 0x00002858
	 { -661, 636, -253, 0, 1566, -5070, 38, 38, 38, 255 }, // 0x00002868
	 { -661, 0, -253, 0, 1566, 3072, 38, 38, 38, 255 }, // 0x00002878
	 { -316, 0, -635, 0, 3261, 3072, 25, 25, 25, 255 }, // 0x00002888
	 { -316, 928, -635, 0, 3261, -8805, 25, 25, 25, 255 }, // 0x00002898
	 { -335, 928, -683, 0, 3806, -8805, 25, 25, 25, 255 }, // 0x000028A8
	 { -335, 0, -683, 0, 3806, 3072, 25, 25, 25, 255 }, // 0x000028B8
	 { -673, 0, -226, 0, 1379, 3072, 51, 51, 51, 255 }, // 0x000028C8
	 { -673, 928, -226, 0, 1379, -8805, 51, 51, 51, 255 }, // 0x000028D8
	 { -720, 928, -246, 0, 1819, -8805, 38, 38, 38, 255 }, // 0x000028E8
	 { -720, 0, -246, 0, 1819, 3072, 38, 38, 38, 255 }, // 0x000028F8
	 { -227, 928, -671, 0, 3119, -8805, 76, 76, 76, 255 }, // 0x00002908
	 { -227, 0, -671, 0, 3119, 3072, 76, 76, 76, 255 }, // 0x00002918
	 { -247, 0, -720, 0, 3675, 3072, 76, 76, 76, 255 }, // 0x00002928
	 { -247, 928, -720, 0, 3675, -8805, 76, 76, 76, 255 }, // 0x00002938
	 { -635, 928, -314, 0, 1996, -8805, 102, 102, 102, 255 }, // 0x00002948
	 { -635, 0, -314, 0, 1996, 3072, 102, 102, 102, 255 }, // 0x00002958
	 { -684, 0, -335, 0, 2444, 3072, 102, 102, 102, 255 }, // 0x00002968
	 { -684, 928, -335, 0, 2444, -8805, 102, 102, 102, 255 }, // 0x00002978
	 { -635, 0, -314, 0, 1996, 3072, 51, 51, 51, 255 }, // 0x00002988
	 { -635, 1600, -314, 0, 1996, -17408, 51, 51, 51, 255 }, // 0x00002998
	 { -673, 1600, -226, 0, 1379, -17408, 51, 51, 51, 255 }, // 0x000029A8
	 { -227, 0, -671, 0, 3119, 3072, 51, 51, 51, 255 }, // 0x000029B8
	 { -227, 1600, -671, 0, 3119, -17408, 51, 51, 51, 255 }, // 0x000029C8
	 { -316, 1600, -635, 0, 3261, -17408, 51, 51, 51, 255 }, // 0x000029D8
	 { -316, 0, -635, 0, 3261, 3072, 51, 51, 51, 255 }, // 0x000029E8
	 { -227, 1600, -671, 0, 2206, 4706, 38, 38, 38, 255 }, // 0x000029F8
	 { -10, 1942, -119, 0, 2382, -3971, 38, 38, 38, 255 }, // 0x00002A08
	 { -67, 1942, -96, 0, 1200, -3919, 0, 0, 0, 255 }, // 0x00002A18
	 { -316, 1600, -635, 0, 1024, 4754, 38, 38, 38, 255 }, // 0x00002A28
	 { -635, 1600, -314, 0, 1615, 4754, 51, 51, 51, 255 }, // 0x00002A38
	 { -91, 1942, -77, 0, 1792, -3923, 51, 51, 51, 255 }, // 0x00002A48
	 { -115, 1942, -20, 0, 610, -3871, 0, 0, 0, 255 }, // 0x00002A58
	 { -673, 1600, -226, 0, 434, 4802, 51, 51, 51, 255 }, // 0x00002A68
};

Vtx_t _tokinoma_room_0_vertices_00002A78[8] = 
{
	 { -265, 0, -742, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A78
	 { 152, 0, -245, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A88
	 { -265, 1942, -742, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A98
	 { 152, 1942, -245, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AA8
	 { -776, 0, -313, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AB8
	 { -359, 0, 184, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AC8
	 { -776, 1942, -313, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AD8
	 { -359, 1942, 184, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AE8
};

Gfx _tokinoma_room_0_dlist_00002AF8[] =
{
	gsDPPipeSync(), // 0x00002AF8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002B00
	gsSPVertex(_tokinoma_room_0_vertices_00002A78, 8, 0), // 0x00002B08
	gsSPCullDisplayList(0, 7), // 0x00002B10
	gsDPPipeSync(), // 0x00002B18
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002B20
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002B28
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002B30
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000EFA0), // 0x00002B38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002B40
	gsDPLoadSync(), // 0x00002B48
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00002B50
	gsDPPipeSync(), // 0x00002B58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002B60
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002B68
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002B70
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002B78
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002B80
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002B88
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002B90
	gsSPVertex(_tokinoma_room_0_vertices_00002608, 32, 0), // 0x00002B98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002BA0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002BA8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002BB0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002BB8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002BC0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002BC8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002BD0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002BD8
	gsSPVertex(_tokinoma_room_0_vertices_00002808, 32, 0), // 0x00002BE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002BE8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002BF0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002BF8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002C00
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002C08
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002C10
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 12, 0), // 0x00002C18
	gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0), // 0x00002C20
	gsSPVertex(_tokinoma_room_0_vertices_000029F8, 8, 0), // 0x00002C28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002C30
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002C38
	gsSPEndDisplayList(), // 0x00002C40
};

Vtx_t _tokinoma_room_0_vertices_00002C48[32] = 
{
	 { -652, 968, 270, 0, 1536, 5844, 165, 165, 165, 255 }, // 0x00002C48
	 { -270, 968, 652, 0, 1536, 82, 165, 165, 165, 255 }, // 0x00002C58
	 { -270, 928, 652, 0, 1024, 82, 165, 165, 165, 255 }, // 0x00002C68
	 { -652, 928, 270, 0, 1024, 5844, 165, 165, 165, 255 }, // 0x00002C78
	 { -652, 676, 270, 0, 1536, 5844, 165, 165, 165, 255 }, // 0x00002C88
	 { -270, 676, 652, 0, 1536, 82, 165, 165, 165, 255 }, // 0x00002C98
	 { -270, 636, 652, 0, 1024, 82, 165, 165, 165, 255 }, // 0x00002CA8
	 { -652, 636, 270, 0, 1024, 5844, 165, 165, 165, 255 }, // 0x00002CB8
	 { -270, 968, 652, 0, 1024, -1962, 204, 204, 204, 255 }, // 0x00002CC8
	 { 270, 968, 652, 0, 1024, 3800, 204, 204, 204, 255 }, // 0x00002CD8
	 { 270, 928, 652, 0, 512, 3800, 204, 204, 204, 255 }, // 0x00002CE8
	 { -270, 928, 652, 0, 512, -1962, 204, 204, 204, 255 }, // 0x00002CF8
	 { -270, 676, 652, 0, 1024, -1962, 204, 204, 204, 255 }, // 0x00002D08
	 { 270, 676, 652, 0, 1024, 3800, 204, 204, 204, 255 }, // 0x00002D18
	 { 270, 636, 652, 0, 512, 3800, 204, 204, 204, 255 }, // 0x00002D28
	 { -270, 636, 652, 0, 512, -1962, 204, 204, 204, 255 }, // 0x00002D38
	 { -652, 968, -270, 0, 1536, 5844, 51, 51, 51, 255 }, // 0x00002D48
	 { -652, 968, 270, 0, 1536, 82, 51, 51, 51, 255 }, // 0x00002D58
	 { -652, 928, 270, 0, 1024, 82, 51, 51, 51, 255 }, // 0x00002D68
	 { -652, 928, -270, 0, 1024, 5844, 51, 51, 51, 255 }, // 0x00002D78
	 { -652, 676, -270, 0, 1536, 5844, 51, 51, 51, 255 }, // 0x00002D88
	 { -652, 676, 270, 0, 1536, 82, 51, 51, 51, 255 }, // 0x00002D98
	 { -652, 636, 270, 0, 1024, 82, 51, 51, 51, 255 }, // 0x00002DA8
	 { -652, 636, -270, 0, 1024, 5844, 51, 51, 51, 255 }, // 0x00002DB8
	 { -270, 968, -652, 0, 1536, 5844, 51, 51, 51, 255 }, // 0x00002DC8
	 { -652, 968, -270, 0, 1536, 82, 51, 51, 51, 255 }, // 0x00002DD8
	 { -652, 928, -270, 0, 1024, 82, 51, 51, 51, 255 }, // 0x00002DE8
	 { -270, 928, -652, 0, 1024, 5844, 51, 51, 51, 255 }, // 0x00002DF8
	 { -270, 676, -652, 0, 1536, 5844, 51, 51, 51, 255 }, // 0x00002E08
	 { -652, 676, -270, 0, 1536, 82, 51, 51, 51, 255 }, // 0x00002E18
	 { -652, 636, -270, 0, 1024, 82, 51, 51, 51, 255 }, // 0x00002E28
	 { -270, 636, -652, 0, 1024, 5844, 51, 51, 51, 255 }, // 0x00002E38
};

Vtx_t _tokinoma_room_0_vertices_00002E48[32] = 
{
	 { 270, 968, -652, 0, 2048, 6058, 51, 51, 51, 255 }, // 0x00002E48
	 { -270, 968, -652, 0, 2048, 296, 51, 51, 51, 255 }, // 0x00002E58
	 { -270, 928, -652, 0, 1536, 296, 51, 51, 51, 255 }, // 0x00002E68
	 { 270, 928, -652, 0, 1536, 6058, 51, 51, 51, 255 }, // 0x00002E78
	 { 270, 676, -652, 0, 2048, 6058, 51, 51, 51, 255 }, // 0x00002E88
	 { -270, 676, -652, 0, 2048, 296, 51, 51, 51, 255 }, // 0x00002E98
	 { -270, 636, -652, 0, 1536, 296, 51, 51, 51, 255 }, // 0x00002EA8
	 { 270, 636, -652, 0, 1536, 6058, 51, 51, 51, 255 }, // 0x00002EB8
	 { 652, 968, -270, 0, 2048, 6058, 51, 51, 51, 255 }, // 0x00002EC8
	 { 270, 968, -652, 0, 2048, 296, 51, 51, 51, 255 }, // 0x00002ED8
	 { 270, 928, -652, 0, 1536, 296, 51, 51, 51, 255 }, // 0x00002EE8
	 { 652, 928, -270, 0, 1536, 6058, 51, 51, 51, 255 }, // 0x00002EF8
	 { 652, 676, -270, 0, 2048, 6058, 51, 51, 51, 255 }, // 0x00002F08
	 { 270, 676, -652, 0, 2048, 296, 51, 51, 51, 255 }, // 0x00002F18
	 { 270, 636, -652, 0, 1536, 296, 51, 51, 51, 255 }, // 0x00002F28
	 { 652, 636, -270, 0, 1536, 6058, 51, 51, 51, 255 }, // 0x00002F38
	 { 652, 968, 270, 0, 2048, 6058, 51, 51, 51, 255 }, // 0x00002F48
	 { 652, 968, -270, 0, 2048, 296, 51, 51, 51, 255 }, // 0x00002F58
	 { 652, 928, -270, 0, 1536, 296, 51, 51, 51, 255 }, // 0x00002F68
	 { 652, 928, 270, 0, 1536, 6058, 51, 51, 51, 255 }, // 0x00002F78
	 { 652, 676, 270, 0, 2048, 6058, 51, 51, 51, 255 }, // 0x00002F88
	 { 652, 676, -270, 0, 2048, 296, 51, 51, 51, 255 }, // 0x00002F98
	 { 652, 636, -270, 0, 1536, 296, 51, 51, 51, 255 }, // 0x00002FA8
	 { 652, 636, 270, 0, 1536, 6058, 51, 51, 51, 255 }, // 0x00002FB8
	 { 270, 968, 652, 0, 1024, 6058, 165, 165, 165, 255 }, // 0x00002FC8
	 { 652, 968, 270, 0, 1024, 296, 165, 165, 165, 255 }, // 0x00002FD8
	 { 652, 928, 270, 0, 512, 296, 165, 165, 165, 255 }, // 0x00002FE8
	 { 270, 928, 652, 0, 512, 6058, 165, 165, 165, 255 }, // 0x00002FF8
	 { 270, 676, 652, 0, 1024, 6058, 165, 165, 165, 255 }, // 0x00003008
	 { 652, 676, 270, 0, 1024, 296, 165, 165, 165, 255 }, // 0x00003018
	 { 652, 636, 270, 0, 512, 296, 165, 165, 165, 255 }, // 0x00003028
	 { 270, 636, 652, 0, 512, 6058, 165, 165, 165, 255 }, // 0x00003038
};

Vtx_t _tokinoma_room_0_vertices_00003048[32] = 
{
	 { -720, 928, -298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003048
	 { -298, 928, -720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003058
	 { -298, 928, -719, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003068
	 { -270, 928, -652, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003078
	 { -652, 928, -270, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003088
	 { -720, 636, -298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003098
	 { -298, 636, -720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000030A8
	 { -298, 636, -719, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000030B8
	 { -270, 636, -652, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000030C8
	 { -652, 636, -270, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000030D8
	 { 298, 636, 720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000030E8
	 { -298, 636, 720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000030F8
	 { -298, 636, 719, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003108
	 { -270, 636, 652, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003118
	 { 270, 636, 652, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003128
	 { -298, 636, 720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003138
	 { -720, 636, 298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003148
	 { -719, 636, 298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003158
	 { -652, 636, 270, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003168
	 { -298, 928, -720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003178
	 { 298, 928, -720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003188
	 { 298, 928, -719, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003198
	 { 270, 928, -652, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000031A8
	 { -298, 636, -720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000031B8
	 { 298, 636, -720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000031C8
	 { 298, 636, -719, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000031D8
	 { 270, 636, -652, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000031E8
	 { -10, 1600, -720, 0, 0, 2048, 51, 51, 51, 255 }, // 0x000031F8
	 { -10, 1600, -768, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00003208
	 { 86, 1440, -768, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00003218
	 { 86, 1440, -720, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00003228
	 { 86, 960, -768, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00003238
};

Vtx_t _tokinoma_room_0_vertices_00003248[32] = 
{
	 { 86, 1440, -720, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00003248
	 { 86, 960, -768, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00003258
	 { 86, 960, -720, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00003268
	 { 298, 928, -720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003278
	 { 720, 928, -298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003288
	 { 719, 928, -298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003298
	 { 652, 928, -270, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000032A8
	 { 270, 928, -652, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000032B8
	 { 298, 636, -720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000032C8
	 { 720, 636, -298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000032D8
	 { 719, 636, -298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000032E8
	 { 652, 636, -270, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000032F8
	 { 270, 636, -652, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003308
	 { -106, 960, -720, 0, 0, 2048, 76, 76, 76, 255 }, // 0x00003318
	 { -106, 960, -768, 0, 0, 2048, 76, 76, 76, 255 }, // 0x00003328
	 { -106, 1440, -768, 0, 0, 2048, 76, 76, 76, 255 }, // 0x00003338
	 { -106, 1440, -720, 0, 0, 2048, 76, 76, 76, 255 }, // 0x00003348
	 { -106, 1440, -720, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00003358
	 { -106, 1440, -768, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00003368
	 { -10, 1600, -768, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00003378
	 { -10, 1600, -720, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00003388
	 { 720, 928, -298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003398
	 { 720, 928, 298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000033A8
	 { 719, 928, 298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000033B8
	 { 652, 928, 270, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000033C8
	 { 720, 636, -298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000033D8
	 { 720, 636, 298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000033E8
	 { 719, 636, 298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000033F8
	 { 652, 636, 270, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003408
	 { -720, 928, 298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003418
	 { -720, 928, -298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003428
	 { -719, 928, -298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003438
};

Vtx_t _tokinoma_room_0_vertices_00003448[26] = 
{
	 { -720, 928, 298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003448
	 { -719, 928, -298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003458
	 { -652, 928, -270, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003468
	 { -652, 928, 270, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003478
	 { -720, 636, 298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003488
	 { -720, 636, -298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003498
	 { -719, 636, -298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000034A8
	 { -652, 636, -270, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000034B8
	 { -652, 636, 270, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000034C8
	 { 720, 636, 298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000034D8
	 { 298, 636, 720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000034E8
	 { 298, 636, 719, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000034F8
	 { 270, 636, 652, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003508
	 { 652, 636, 270, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003518
	 { 720, 928, 298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003528
	 { 298, 928, 720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003538
	 { 298, 928, 719, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003548
	 { 270, 928, 652, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003558
	 { 652, 928, 270, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003568
	 { 298, 928, 720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003578
	 { -298, 928, 720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003588
	 { -298, 928, 719, 0, 0, 2048, 12, 12, 12, 255 }, // 0x00003598
	 { -270, 928, 652, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000035A8
	 { -298, 928, 720, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000035B8
	 { -720, 928, 298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000035C8
	 { -719, 928, 298, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000035D8
};

Vtx_t _tokinoma_room_0_vertices_000035E8[8] = 
{
	 { -720, 636, -768, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035E8
	 { 720, 636, -768, 0, 0, 0, 0, 0, 0, 0 }, // 0x000035F8
	 { -720, 1600, -768, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003608
	 { 720, 1600, -768, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003618
	 { -720, 636, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003628
	 { 720, 636, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003638
	 { -720, 1600, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003648
	 { 720, 1600, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003658
};

Gfx _tokinoma_room_0_dlist_00003668[] =
{
	gsDPPipeSync(), // 0x00003668
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003670
	gsSPVertex(_tokinoma_room_0_vertices_000035E8, 8, 0), // 0x00003678
	gsSPCullDisplayList(0, 7), // 0x00003680
	gsDPPipeSync(), // 0x00003688
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003690
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003698
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000036A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000EFA0), // 0x000036A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000036B0
	gsDPLoadSync(), // 0x000036B8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000036C0
	gsDPPipeSync(), // 0x000036C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000036D0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000036D8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000036E0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000036E8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000036F0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000036F8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003700
	gsSPVertex(_tokinoma_room_0_vertices_00002C48, 32, 0), // 0x00003708
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003710
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003718
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003720
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003728
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003730
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00003738
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00003740
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00003748
	gsSPVertex(_tokinoma_room_0_vertices_00002E48, 32, 0), // 0x00003750
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003758
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003760
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003768
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003770
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003778
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00003780
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00003788
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00003790
	gsDPPipeSync(), // 0x00003798
	gsSPTexture(0, 0, 0, 0, 0), // 0x000037A0
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x000037A8
	gsSPVertex(_tokinoma_room_0_vertices_00003048, 32, 0), // 0x000037B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000037B8
	gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0), // 0x000037C0
	gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0), // 0x000037C8
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x000037D0
	gsSP2Triangles(10, 13, 14, 0, 15, 16, 17, 0), // 0x000037D8
	gsSP2Triangles(15, 17, 18, 0, 15, 18, 13, 0), // 0x000037E0
	gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0), // 0x000037E8
	gsSP2Triangles(19, 22, 3, 0, 23, 24, 25, 0), // 0x000037F0
	gsSP2Triangles(23, 25, 26, 0, 23, 26, 8, 0), // 0x000037F8
	gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0), // 0x00003800
	gsSP1Triangle(30, 29, 31, 0), // 0x00003808
	gsSPVertex(_tokinoma_room_0_vertices_00003248, 32, 0), // 0x00003810
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003818
	gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0), // 0x00003820
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003828
	gsSP2Triangles(8, 11, 12, 0, 13, 14, 15, 0), // 0x00003830
	gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0), // 0x00003838
	gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0), // 0x00003840
	gsSP2Triangles(21, 23, 24, 0, 21, 24, 6, 0), // 0x00003848
	gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0), // 0x00003850
	gsSP2Triangles(25, 28, 11, 0, 29, 30, 31, 0), // 0x00003858
	gsSPVertex(_tokinoma_room_0_vertices_00003448, 26, 0), // 0x00003860
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003868
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003870
	gsSP2Triangles(4, 7, 8, 0, 9, 10, 11, 0), // 0x00003878
	gsSP2Triangles(9, 11, 12, 0, 9, 12, 13, 0), // 0x00003880
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x00003888
	gsSP2Triangles(14, 17, 18, 0, 19, 20, 21, 0), // 0x00003890
	gsSP2Triangles(19, 21, 22, 0, 19, 22, 17, 0), // 0x00003898
	gsSP2Triangles(23, 24, 25, 0, 23, 25, 3, 0), // 0x000038A0
	gsSP1Triangle(23, 3, 22, 0), // 0x000038A8
	gsSPEndDisplayList(), // 0x000038B0
};

Vtx_t _tokinoma_room_0_vertices_000038B8[5] = 
{
	 { 86, 960, -768, 0, 2048, 2048, 255, 255, 255, 255 }, // 0x000038B8
	 { 86, 1440, -768, 0, 2048, 512, 255, 255, 255, 255 }, // 0x000038C8
	 { -10, 1600, -768, 0, 1024, 0, 255, 255, 255, 255 }, // 0x000038D8
	 { -106, 1440, -768, 0, 0, 512, 255, 255, 255, 255 }, // 0x000038E8
	 { -106, 960, -768, 0, 0, 2048, 255, 255, 255, 255 }, // 0x000038F8
};

Vtx_t _tokinoma_room_0_vertices_00003908[8] = 
{
	 { -106, 960, -768, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003908
	 { 86, 960, -768, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003918
	 { -106, 1600, -768, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003928
	 { 86, 1600, -768, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003938
	 { -106, 960, -768, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003948
	 { 86, 960, -768, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003958
	 { -106, 1600, -768, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003968
	 { 86, 1600, -768, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003978
};

Gfx _tokinoma_room_0_dlist_00003988[] =
{
	gsDPPipeSync(), // 0x00003988
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003990
	gsSPVertex(_tokinoma_room_0_vertices_00003908, 8, 0), // 0x00003998
	gsSPCullDisplayList(0, 7), // 0x000039A0
	gsDPPipeSync(), // 0x000039A8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000039B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000039B8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000039C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000151D8), // 0x000039C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x000039D0
	gsDPLoadSync(), // 0x000039D8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000039E0
	gsDPPipeSync(), // 0x000039E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x000039F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000039F8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, SHADE, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003A00
	gsSPSetOtherMode(0xE2, 3, 29, 0x0C192078), // 0x00003A08
	gsSPGeometryMode(0xFF0F0000, 0x00000000), // 0x00003A10
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00003A18
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003A20
	gsSPVertex(_tokinoma_room_0_vertices_000038B8, 5, 0), // 0x00003A28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003A30
	gsSP1Triangle(0, 3, 4, 0), // 0x00003A38
	gsSPEndDisplayList(), // 0x00003A40
};

Vtx_t _tokinoma_room_0_vertices_00003A48[10] = 
{
	 { -144, 0, 1120, 0, -512, 5118, 204, 204, 204, 255 }, // 0x00003A48
	 { -144, 0, 1280, 0, -511, 7166, 255, 255, 255, 255 }, // 0x00003A58
	 { 144, 0, 1280, 0, 3175, 7166, 255, 255, 255, 255 }, // 0x00003A68
	 { 144, 0, 1120, 0, 3175, 5118, 204, 204, 204, 255 }, // 0x00003A78
	 { -104, 0, 920, 0, 0, 2560, 0, 0, 0, 255 }, // 0x00003A88
	 { -104, 0, 1120, 0, 0, 5118, 204, 204, 204, 255 }, // 0x00003A98
	 { 96, 0, 1120, 0, 2560, 5118, 204, 204, 204, 255 }, // 0x00003AA8
	 { 96, 0, 920, 0, 2560, 2560, 0, 0, 0, 255 }, // 0x00003AB8
	 { -104, 0, 720, 0, 0, 0, 114, 114, 114, 255 }, // 0x00003AC8
	 { 96, 0, 720, 0, 2560, 0, 114, 114, 114, 255 }, // 0x00003AD8
};

Vtx_t _tokinoma_room_0_vertices_00003AE8[4] = 
{
	 { -80, 20, 1280, 0, 4641, 1050, 63, 63, 63, 255 }, // 0x00003AE8
	 { -74, 26, 1286, 0, 4643, 817, 63, 63, 63, 255 }, // 0x00003AF8
	 { 74, 26, 1286, 0, -19, 785, 255, 255, 255, 255 }, // 0x00003B08
	 { 80, 20, 1280, 0, -21, 1018, 63, 63, 63, 255 }, // 0x00003B18
};

Vtx_t _tokinoma_room_0_vertices_00003B28[10] = 
{
	 { 160, -40, 2240, 0, -3587, 7777, 229, 229, 229, 255 }, // 0x00003B28
	 { 160, -40, 1440, 0, 3240, 950, 229, 229, 229, 255 }, // 0x00003B38
	 { -160, -40, 1440, 0, 509, -1781, 229, 229, 229, 255 }, // 0x00003B48
	 { -160, -40, 2240, 0, -6317, 5046, 229, 229, 229, 255 }, // 0x00003B58
	 { -77, -40, 2240, 0, -5606, 5757, 229, 229, 229, 255 }, // 0x00003B68
	 { -160, -40, 2400, 0, -7683, 6411, 229, 229, 229, 255 }, // 0x00003B78
	 { -77, -40, 2400, 0, -6971, 7123, 229, 229, 229, 255 }, // 0x00003B88
	 { 160, -40, 2400, 0, -4952, 9142, 229, 229, 229, 255 }, // 0x00003B98
	 { 83, -40, 2240, 0, -4241, 7123, 229, 229, 229, 255 }, // 0x00003BA8
	 { 83, -40, 2400, 0, -5606, 8488, 229, 229, 229, 255 }, // 0x00003BB8
};

Vtx_t _tokinoma_room_0_vertices_00003BC8[4] = 
{
	 { 64, 603, 2400, 0, 0, -790, 165, 165, 165, 255 }, // 0x00003BC8
	 { 64, 481, 2400, 0, 0, 1024, 165, 165, 165, 255 }, // 0x00003BD8
	 { -56, 481, 2400, 0, 2048, 1024, 165, 165, 165, 255 }, // 0x00003BE8
	 { -56, 603, 2400, 0, 2048, -790, 165, 165, 165, 255 }, // 0x00003BF8
};

Vtx_t _tokinoma_room_0_vertices_00003C08[26] = 
{
	 { -56, 241, 2400, 0, 24, 3753, 28, 28, 28, 255 }, // 0x00003C08
	 { -67, 239, 2389, 0, 279, 4015, 153, 153, 153, 255 }, // 0x00003C18
	 { 0, 318, 2389, 0, 377, 1031, 191, 191, 191, 255 }, // 0x00003C28
	 { 2, 304, 2400, 0, -11, 1290, 12, 12, 12, 255 }, // 0x00003C38
	 { -67, 239, 2389, 0, 396, 4615, 153, 153, 153, 255 }, // 0x00003C48
	 { -56, 307, 2400, 0, 1021, 2152, 114, 114, 114, 255 }, // 0x00003C58
	 { 0, 481, 2400, 0, 1151, -3011, 51, 51, 51, 255 }, // 0x00003C68
	 { 0, 447, 2389, 0, 537, -1537, 153, 153, 153, 255 }, // 0x00003C78
	 { 0, 481, 2400, 0, -343, -3000, 51, 51, 51, 255 }, // 0x00003C88
	 { 64, 305, 2400, 0, 35, 2556, 51, 51, 51, 255 }, // 0x00003C98
	 { 75, 239, 2389, 0, 737, 4838, 153, 153, 153, 255 }, // 0x00003CA8
	 { 0, 447, 2389, 0, 364, -1536, 153, 153, 153, 255 }, // 0x00003CB8
	 { 41, 302, 2400, 0, 1033, 2953, 28, 28, 28, 255 }, // 0x00003CC8
	 { 1, 411, 2400, 0, 1002, -137, 28, 28, 28, 255 }, // 0x00003CD8
	 { 0, 447, 2389, 0, 537, -1537, 153, 153, 153, 255 }, // 0x00003CE8
	 { 1, 411, 2400, 0, -65, -172, 12, 12, 12, 255 }, // 0x00003CF8
	 { -34, 307, 2400, 0, 18, 2679, 12, 12, 12, 255 }, // 0x00003D08
	 { -34, 307, 2400, 0, 1022, 1918, 114, 114, 114, 255 }, // 0x00003D18
	 { 0, 345, 2400, 0, 1005, 450, 51, 51, 51, 255 }, // 0x00003D28
	 { 0, 318, 2389, 0, 377, 1031, 191, 191, 191, 255 }, // 0x00003D38
	 { 0, 345, 2400, 0, -13, 469, 51, 51, 51, 255 }, // 0x00003D48
	 { 41, 302, 2400, 0, 1, 2208, 51, 51, 51, 255 }, // 0x00003D58
	 { 75, 239, 2389, 0, 783, 4227, 153, 153, 153, 255 }, // 0x00003D68
	 { 0, 318, 2389, 0, 691, 1020, 191, 191, 191, 255 }, // 0x00003D78
	 { 64, 241, 2400, 0, 1025, 3955, 28, 28, 28, 255 }, // 0x00003D88
	 { 2, 304, 2400, 0, 1024, 1358, 28, 28, 28, 255 }, // 0x00003D98
};

Vtx_t _tokinoma_room_0_vertices_00003DA8[32] = 
{
	 { -80, -40, 1280, 0, 7168, 1024, 25, 25, 25, 255 }, // 0x00003DA8
	 { -80, 20, 1280, 0, 7168, -2048, 229, 229, 229, 255 }, // 0x00003DB8
	 { 80, 20, 1280, 0, -1024, -2048, 229, 229, 229, 255 }, // 0x00003DC8
	 { 80, -40, 1280, 0, -1024, 1024, 12, 12, 12, 255 }, // 0x00003DD8
	 { -520, 638, 2007, 0, -2134, -6625, 0, 0, 0, 255 }, // 0x00003DE8
	 { -520, 638, 2400, 0, -7168, -6625, 0, 0, 0, 255 }, // 0x00003DF8
	 { -520, -40, 2400, 0, -7168, 2048, 255, 255, 255, 255 }, // 0x00003E08
	 { -520, -40, 2007, 0, -2134, 2048, 255, 255, 255, 255 }, // 0x00003E18
	 { 520, -40, 2007, 0, 3670, 2017, 153, 153, 153, 255 }, // 0x00003E28
	 { 520, -40, 2400, 0, 8704, 2017, 153, 153, 153, 255 }, // 0x00003E38
	 { 520, 638, 2400, 0, 8704, -6656, 0, 0, 0, 255 }, // 0x00003E48
	 { 520, 638, 2007, 0, 3670, -6656, 0, 0, 0, 255 }, // 0x00003E58
	 { -520, 638, 2400, 0, 7680, -6625, 0, 0, 0, 255 }, // 0x00003E68
	 { -88, 638, 2400, 0, 2147, -6625, 0, 0, 0, 255 }, // 0x00003E78
	 { -88, -40, 2400, 0, 2147, 2048, 204, 204, 204, 255 }, // 0x00003E88
	 { -520, -40, 2400, 0, 7680, 2048, 204, 204, 204, 255 }, // 0x00003E98
	 { 64, 638, 2400, 0, 205, -6625, 0, 0, 0, 255 }, // 0x00003EA8
	 { 64, 603, 2400, 0, 205, -6180, 38, 38, 38, 255 }, // 0x00003EB8
	 { -56, 603, 2400, 0, 1741, -6180, 38, 38, 38, 255 }, // 0x00003EC8
	 { -56, 638, 2400, 0, 1741, -6625, 0, 0, 0, 255 }, // 0x00003ED8
	 { 64, 481, 2400, 0, 205, -4617, 51, 51, 51, 255 }, // 0x00003EE8
	 { 64, 241, 2400, 0, 205, -1550, 153, 153, 153, 255 }, // 0x00003EF8
	 { -56, 241, 2400, 0, 1741, -1550, 153, 153, 153, 255 }, // 0x00003F08
	 { -56, 481, 2400, 0, 1741, -4617, 51, 51, 51, 255 }, // 0x00003F18
	 { 520, -40, 2400, 0, -5632, 2048, 204, 204, 204, 255 }, // 0x00003F28
	 { 96, -40, 2400, 0, -201, 2048, 204, 204, 204, 255 }, // 0x00003F38
	 { 96, 638, 2400, 0, -201, -6625, 0, 0, 0, 255 }, // 0x00003F48
	 { 520, 638, 2400, 0, -5632, -6625, 0, 0, 0, 255 }, // 0x00003F58
	 { -72, -40, 2384, 0, 24235, 2569, 178, 178, 178, 255 }, // 0x00003F68
	 { -72, 638, 2384, 0, 24235, -8834, 0, 0, 0, 255 }, // 0x00003F78
	 { -56, 638, 2400, 0, 23211, -8834, 0, 0, 0, 255 }, // 0x00003F88
	 { -56, -40, 2400, 0, 23211, 2569, 114, 114, 114, 255 }, // 0x00003F98
};

Vtx_t _tokinoma_room_0_vertices_00003FA8[12] = 
{
	 { -88, -40, 2400, 0, 24235, 2569, 114, 114, 114, 255 }, // 0x00003FA8
	 { -88, 638, 2400, 0, 24235, -8834, 0, 0, 0, 255 }, // 0x00003FB8
	 { -72, 638, 2384, 0, 23211, -8834, 0, 0, 0, 255 }, // 0x00003FC8
	 { -72, -40, 2384, 0, 23211, 2569, 178, 178, 178, 255 }, // 0x00003FD8
	 { 80, -40, 2384, 0, -4384, 4097, 204, 204, 204, 255 }, // 0x00003FE8
	 { 80, 638, 2384, 0, -4384, -7305, 0, 0, 0, 255 }, // 0x00003FF8
	 { 96, 638, 2400, 0, -5408, -7305, 0, 0, 0, 255 }, // 0x00004008
	 { 96, -40, 2400, 0, -5408, 4097, 114, 114, 114, 255 }, // 0x00004018
	 { 64, -40, 2400, 0, -4384, 4097, 114, 114, 114, 255 }, // 0x00004028
	 { 64, 638, 2400, 0, -4384, -7305, 0, 0, 0, 255 }, // 0x00004038
	 { 80, 638, 2384, 0, -5408, -7305, 0, 0, 0, 255 }, // 0x00004048
	 { 80, -40, 2384, 0, -5408, 4097, 204, 204, 204, 255 }, // 0x00004058
};

Vtx_t _tokinoma_room_0_vertices_00004068[8] = 
{
	 { -520, -40, 1440, 0, -2570, -8211, 76, 76, 76, 255 }, // 0x00004068
	 { -520, -40, 2400, 0, -2570, 4077, 76, 76, 76, 255 }, // 0x00004078
	 { -160, -40, 2400, 0, 3062, 4077, 229, 229, 229, 255 }, // 0x00004088
	 { -160, -40, 1440, 0, 3062, -8211, 229, 229, 229, 255 }, // 0x00004098
	 { 520, -40, 2400, 0, 3584, 5120, 76, 76, 76, 255 }, // 0x000040A8
	 { 520, -40, 1440, 0, 3584, -7168, 76, 76, 76, 255 }, // 0x000040B8
	 { 160, -40, 1440, 0, -2048, -7168, 229, 229, 229, 255 }, // 0x000040C8
	 { 160, -40, 2400, 0, -2048, 5120, 229, 229, 229, 255 }, // 0x000040D8
};

Vtx_t _tokinoma_room_0_vertices_000040E8[4] = 
{
	 { -77, -40, 2400, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000040E8
	 { 83, -40, 2400, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x000040F8
	 { 83, -40, 2240, 0, 2048, -3072, 255, 255, 255, 255 }, // 0x00004108
	 { -77, -40, 2240, 0, 0, -3072, 255, 255, 255, 255 }, // 0x00004118
};

Vtx_t _tokinoma_room_0_vertices_00004128[8] = 
{
	 { 64, -40, 2400, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00004128
	 { -56, -40, 2400, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00004138
	 { -56, 241, 2400, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00004148
	 { 64, 241, 2400, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00004158
	 { 520, 638, 2007, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00004168
	 { 520, 638, 2400, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00004178
	 { -520, 638, 2400, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00004188
	 { -520, 638, 2007, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00004198
};

Vtx_t _tokinoma_room_0_vertices_000041A8[8] = 
{
	 { -520, -40, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x000041A8
	 { 520, -40, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x000041B8
	 { -520, 638, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x000041C8
	 { 520, 638, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x000041D8
	 { -520, -40, 2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x000041E8
	 { 520, -40, 2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x000041F8
	 { -520, 638, 2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004208
	 { 520, 638, 2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004218
};

Gfx _tokinoma_room_0_dlist_00004228[] =
{
	gsDPPipeSync(), // 0x00004228
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004230
	gsSPVertex(_tokinoma_room_0_vertices_000041A8, 8, 0), // 0x00004238
	gsSPCullDisplayList(0, 7), // 0x00004240
	gsDPPipeSync(), // 0x00004248
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004250
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004258
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004260
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_00011FA0), // 0x00004268
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004270
	gsDPLoadSync(), // 0x00004278
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004280
	gsDPPipeSync(), // 0x00004288
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004290
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004298
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000042A0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000042A8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000042B0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000042B8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000042C0
	gsSPVertex(_tokinoma_room_0_vertices_00003A48, 10, 0), // 0x000042C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000042D0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000042D8
	gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0), // 0x000042E0
	gsDPPipeSync(), // 0x000042E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_000107A0), // 0x000042F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 0, 5, 0), // 0x000042F8
	gsDPLoadSync(), // 0x00004300
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004308
	gsDPPipeSync(), // 0x00004310
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 0, 5, 0), // 0x00004318
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004320
	gsSPVertex(_tokinoma_room_0_vertices_00003AE8, 4, 0), // 0x00004328
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004330
	gsDPPipeSync(), // 0x00004338
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000FFA0), // 0x00004340
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004348
	gsDPLoadSync(), // 0x00004350
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004358
	gsDPPipeSync(), // 0x00004360
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004368
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004370
	gsSPVertex(_tokinoma_room_0_vertices_00003B28, 10, 0), // 0x00004378
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004380
	gsSP2Triangles(4, 3, 5, 0, 4, 5, 6, 0), // 0x00004388
	gsSP2Triangles(7, 0, 8, 0, 7, 8, 9, 0), // 0x00004390
	gsDPPipeSync(), // 0x00004398
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000151D8), // 0x000043A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x000043A8
	gsDPLoadSync(), // 0x000043B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000043B8
	gsDPPipeSync(), // 0x000043C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x000043C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000043D0
	gsSPVertex(_tokinoma_room_0_vertices_00003BC8, 4, 0), // 0x000043D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000043E0
	gsDPPipeSync(), // 0x000043E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000EFA0), // 0x000043F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000043F8
	gsDPLoadSync(), // 0x00004400
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004408
	gsDPPipeSync(), // 0x00004410
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004418
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004420
	gsSPVertex(_tokinoma_room_0_vertices_00003C08, 26, 0), // 0x00004428
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004430
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004438
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004440
	gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0), // 0x00004448
	gsSP2Triangles(4, 14, 15, 0, 4, 15, 16, 0), // 0x00004450
	gsSP2Triangles(17, 18, 19, 0, 17, 19, 1, 0), // 0x00004458
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00004460
	gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0), // 0x00004468
	gsDPPipeSync(), // 0x00004470
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000DFA0), // 0x00004478
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 1, 5, 0), // 0x00004480
	gsDPLoadSync(), // 0x00004488
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004490
	gsDPPipeSync(), // 0x00004498
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 1, 5, 0), // 0x000044A0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000044A8
	gsSPVertex(_tokinoma_room_0_vertices_00003DA8, 32, 0), // 0x000044B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000044B8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000044C0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000044C8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000044D0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000044D8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000044E0
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x000044E8
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000044F0
	gsSPVertex(_tokinoma_room_0_vertices_00003FA8, 12, 0), // 0x000044F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004500
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004508
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004510
	gsDPPipeSync(), // 0x00004518
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000D7A0), // 0x00004520
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004528
	gsDPLoadSync(), // 0x00004530
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004538
	gsDPPipeSync(), // 0x00004540
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004548
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004550
	gsSPVertex(_tokinoma_room_0_vertices_00004068, 8, 0), // 0x00004558
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004560
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004568
	gsDPPipeSync(), // 0x00004570
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000CFA0), // 0x00004578
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 5, 0), // 0x00004580
	gsDPLoadSync(), // 0x00004588
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004590
	gsDPPipeSync(), // 0x00004598
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 1, 5, 0), // 0x000045A0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000045A8
	gsSPVertex(_tokinoma_room_0_vertices_000040E8, 4, 0), // 0x000045B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000045B8
	gsDPPipeSync(), // 0x000045C0
	gsSPTexture(0, 0, 0, 0, 0), // 0x000045C8
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x000045D0
	gsSPVertex(_tokinoma_room_0_vertices_00004128, 8, 0), // 0x000045D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000045E0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000045E8
	gsSPEndDisplayList(), // 0x000045F0
};

Vtx_t _tokinoma_room_0_vertices_000045F8[29] = 
{
	 { -53, 70, -30, 0, 3498, 1024, 255, 255, 255, 255 }, // 0x000045F8
	 { -53, 70, 30, 0, 1749, 14, 255, 255, 255, 255 }, // 0x00004608
	 { -27, 70, 15, 0, 1749, 1024, 255, 255, 255, 255 }, // 0x00004618
	 { -105, 70, 60, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00004628
	 { -1, 70, 60, 0, 3604, 1024, 255, 255, 255, 255 }, // 0x00004638
	 { -53, 70, 30, 0, 1803, -16, 255, 255, 255, 255 }, // 0x00004648
	 { -53, 70, -30, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00004658
	 { -105, 70, 60, 0, 3448, 1024, 255, 255, 255, 255 }, // 0x00004668
	 { -53, 70, 30, 0, 1724, 29, 255, 255, 255, 255 }, // 0x00004678
	 { -1, 70, -57, 0, 1745, 16, 255, 255, 255, 255 }, // 0x00004688
	 { -37, 70, -58, 0, 2308, 1024, 255, 255, 255, 255 }, // 0x00004698
	 { -53, 70, -30, 0, 3330, 1024, 255, 255, 255, 255 }, // 0x000046A8
	 { 37, 70, -54, 0, 916, 1024, 255, 255, 255, 255 }, // 0x000046B8
	 { 36, 70, -57, 0, 1012, 1024, 255, 255, 255, 255 }, // 0x000046C8
	 { -1, 70, -57, 0, 1631, -14, 255, 255, 255, 255 }, // 0x000046D8
	 { 36, 70, -38, 0, 469, 726, 255, 255, 255, 255 }, // 0x000046E8
	 { 25, 70, 15, 0, 2471, 1024, 255, 255, 255, 255 }, // 0x000046F8
	 { -1, 70, 60, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00004708
	 { 31, 70, 41, 0, 1551, 384, 255, 255, 255, 255 }, // 0x00004718
	 { 33, 70, 19, 0, 2471, 722, 255, 255, 255, 255 }, // 0x00004728
	 { 36, 70, -30, 0, 3320, 1024, 255, 255, 255, 255 }, // 0x00004738
	 { 36, 70, -38, 0, 3339, 732, 255, 255, 255, 255 }, // 0x00004748
	 { -1, 70, -57, 0, 1950, 8, 255, 255, 255, 255 }, // 0x00004758
	 { -53, 70, -30, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00004768
	 { -1, 70, 60, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00004778
	 { -1, 70, 60, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00004788
	 { 30, 70, 60, 0, 1038, 1024, 255, 255, 255, 255 }, // 0x00004798
	 { 31, 70, 41, 0, 1080, 378, 255, 255, 255, 255 }, // 0x000047A8
	 { 34, 70, 0, 0, 3293, 1024, 255, 255, 255, 255 }, // 0x000047B8
};

Vtx_t _tokinoma_room_0_vertices_000047C8[8] = 
{
	 { -105, 70, -58, 0, 0, 0, 0, 0, 0, 0 }, // 0x000047C8
	 { 37, 70, -58, 0, 0, 0, 0, 0, 0, 0 }, // 0x000047D8
	 { -105, 70, -58, 0, 0, 0, 0, 0, 0, 0 }, // 0x000047E8
	 { 37, 70, -58, 0, 0, 0, 0, 0, 0, 0 }, // 0x000047F8
	 { -105, 70, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004808
	 { 37, 70, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004818
	 { -105, 70, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004828
	 { 37, 70, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004838
};

Gfx _tokinoma_room_0_dlist_00004848[] =
{
	gsDPPipeSync(), // 0x00004848
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004850
	gsSPVertex(_tokinoma_room_0_vertices_000047C8, 8, 0), // 0x00004858
	gsSPCullDisplayList(0, 7), // 0x00004860
	gsDPPipeSync(), // 0x00004868
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004870
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004878
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004880
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_000107A0), // 0x00004888
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00004890
	gsDPLoadSync(), // 0x00004898
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000048A0
	gsDPPipeSync(), // 0x000048A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 0, 5, 0), // 0x000048B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000048B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000169D8), // 0x000048C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 1, 5, 0, 0, 5, 0), // 0x000048C8
	gsDPLoadSync(), // 0x000048D0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000048D8
	gsDPPipeSync(), // 0x000048E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 1, 5, 0, 0, 5, 0), // 0x000048E8
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x000048F0
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000048F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004900
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004908
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004910
	gsSPDisplayList(0x0A000000), // 0x00004918
	gsSPVertex(_tokinoma_room_0_vertices_000045F8, 29, 0), // 0x00004920
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004928
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00004930
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00004938
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00004940
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00004948
	gsSP2Triangles(24, 2, 1, 0, 25, 26, 27, 0), // 0x00004950
	gsSP1Triangle(28, 16, 19, 0), // 0x00004958
	gsSPEndDisplayList(), // 0x00004960
};

Vtx_t _tokinoma_room_0_vertices_00004968[23] = 
{
	 { -1, 70, -120, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00004968
	 { -37, 70, -58, 0, 2308, 1024, 255, 255, 255, 255 }, // 0x00004978
	 { -1, 70, -57, 0, 1745, 16, 255, 255, 255, 255 }, // 0x00004988
	 { 36, 70, -57, 0, 1012, 1024, 255, 255, 255, 255 }, // 0x00004998
	 { -1, 70, -120, 0, 3428, 1024, 255, 255, 255, 255 }, // 0x000049A8
	 { -1, 70, -57, 0, 1631, -14, 255, 255, 255, 255 }, // 0x000049B8
	 { 51, 70, -30, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000049C8
	 { 37, 70, -54, 0, 916, 1024, 255, 255, 255, 255 }, // 0x000049D8
	 { 36, 70, -38, 0, 469, 726, 255, 255, 255, 255 }, // 0x000049E8
	 { 103, 70, 60, 0, 3503, 1024, 255, 255, 255, 255 }, // 0x000049F8
	 { 50, 70, 29, 0, 1721, -5, 255, 255, 255, 255 }, // 0x00004A08
	 { 31, 70, 41, 0, 1080, 378, 255, 255, 255, 255 }, // 0x00004A18
	 { 30, 70, 60, 0, 1038, 1024, 255, 255, 255, 255 }, // 0x00004A28
	 { 103, 70, 60, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00004A38
	 { 51, 70, -30, 0, 3451, 1024, 255, 255, 255, 255 }, // 0x00004A48
	 { 50, 70, 29, 0, 1756, 10, 255, 255, 255, 255 }, // 0x00004A58
	 { 31, 70, 41, 0, 1551, 384, 255, 255, 255, 255 }, // 0x00004A68
	 { 50, 70, 29, 0, 2471, 5, 255, 255, 255, 255 }, // 0x00004A78
	 { 51, 70, -30, 0, 4942, 1024, 255, 255, 255, 255 }, // 0x00004A88
	 { 34, 70, 0, 0, 3293, 1024, 255, 255, 255, 255 }, // 0x00004A98
	 { 51, 70, -30, 0, 3899, 1024, 255, 255, 255, 255 }, // 0x00004AA8
	 { 36, 70, -38, 0, 3339, 732, 255, 255, 255, 255 }, // 0x00004AB8
	 { 36, 70, -30, 0, 3320, 1024, 255, 255, 255, 255 }, // 0x00004AC8
};

Vtx_t _tokinoma_room_0_vertices_00004AD8[8] = 
{
	 { -1, 70, -120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004AD8
	 { 103, 70, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004AE8
	 { -1, 70, -120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004AF8
	 { 103, 70, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B08
	 { -55, 70, -88, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B18
	 { 48, 70, 92, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B28
	 { -55, 70, -88, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B38
	 { 48, 70, 92, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B48
};

Gfx _tokinoma_room_0_dlist_00004B58[] =
{
	gsDPPipeSync(), // 0x00004B58
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004B60
	gsSPVertex(_tokinoma_room_0_vertices_00004AD8, 8, 0), // 0x00004B68
	gsSPCullDisplayList(0, 7), // 0x00004B70
	gsDPPipeSync(), // 0x00004B78
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004B80
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004B88
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004B90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_000107A0), // 0x00004B98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00004BA0
	gsDPLoadSync(), // 0x00004BA8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004BB0
	gsDPPipeSync(), // 0x00004BB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 0, 5, 0), // 0x00004BC0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004BC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000169D8), // 0x00004BD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00004BD8
	gsDPLoadSync(), // 0x00004BE0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004BE8
	gsDPPipeSync(), // 0x00004BF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 1, 5, 0, 0, 5, 0), // 0x00004BF8
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00004C00
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004C08
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004C10
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004C18
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004C20
	gsSPDisplayList(0x0B000000), // 0x00004C28
	gsSPVertex(_tokinoma_room_0_vertices_00004968, 23, 0), // 0x00004C30
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004C38
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00004C40
	gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0), // 0x00004C48
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00004C50
	gsSP1Triangle(20, 21, 22, 0), // 0x00004C58
	gsSPEndDisplayList(), // 0x00004C60
};

Vtx_t _tokinoma_room_0_vertices_00004C68[32] = 
{
	 { -1, 40, 120, 0, -341, -831, 255, 255, 255, 255 }, // 0x00004C68
	 { 0, 40, 280, 0, -1024, 1024, 255, 255, 255, 255 }, // 0x00004C78
	 { 17, 40, 270, 0, -857, 1024, 255, 255, 255, 255 }, // 0x00004C88
	 { 27, 40, 104, 0, -69, -831, 255, 255, 255, 255 }, // 0x00004C98
	 { -131, 40, 76, 0, 1496, -474, 255, 255, 255, 255 }, // 0x00004CA8
	 { -105, 40, 60, 0, 1365, -829, 255, 255, 255, 255 }, // 0x00004CB8
	 { -105, 40, -34, 0, 561, -832, 255, 255, 255, 255 }, // 0x00004CC8
	 { -124, 40, -34, 0, 560, -569, 255, 255, 255, 255 }, // 0x00004CD8
	 { 242, 20, -140, 0, 7168, 0, 76, 76, 76, 255 }, // 0x00004CE8
	 { 242, 40, -140, 0, 7168, 1025, 76, 76, 76, 255 }, // 0x00004CF8
	 { 242, 40, 140, 0, 0, 1025, 76, 76, 76, 255 }, // 0x00004D08
	 { 242, 20, 140, 0, 0, 0, 76, 76, 76, 255 }, // 0x00004D18
	 { 242, 20, 140, 0, 7168, 0, 51, 51, 51, 255 }, // 0x00004D28
	 { 242, 40, 140, 0, 7168, 1025, 51, 51, 51, 255 }, // 0x00004D38
	 { 0, 40, 280, 0, 0, 1025, 51, 51, 51, 255 }, // 0x00004D48
	 { 0, 20, 280, 0, 0, 0, 51, 51, 51, 255 }, // 0x00004D58
	 { 0, 20, 280, 0, 7168, -1, 51, 51, 51, 255 }, // 0x00004D68
	 { 0, 40, 280, 0, 7168, 1024, 51, 51, 51, 255 }, // 0x00004D78
	 { -243, 40, 140, 0, 0, 1024, 51, 51, 51, 255 }, // 0x00004D88
	 { -243, 20, 140, 0, 0, -1, 51, 51, 51, 255 }, // 0x00004D98
	 { -243, 20, 140, 0, 7168, -1, 51, 51, 51, 255 }, // 0x00004DA8
	 { -243, 40, 140, 0, 7168, 1024, 51, 51, 51, 255 }, // 0x00004DB8
	 { -243, 40, -140, 0, 0, 1024, 51, 51, 51, 255 }, // 0x00004DC8
	 { -243, 20, -140, 0, 0, -1, 51, 51, 51, 255 }, // 0x00004DD8
	 { -243, 20, -140, 0, 7168, -1, 127, 127, 127, 255 }, // 0x00004DE8
	 { -243, 40, -140, 0, 7168, 1024, 127, 127, 127, 255 }, // 0x00004DF8
	 { -1, 40, -280, 0, 0, 1024, 127, 127, 127, 255 }, // 0x00004E08
	 { -1, 20, -280, 0, 0, -1, 127, 127, 127, 255 }, // 0x00004E18
	 { -1, 20, -280, 0, 7168, 0, 178, 178, 178, 255 }, // 0x00004E28
	 { -1, 40, -280, 0, 7168, 1025, 178, 178, 178, 255 }, // 0x00004E38
	 { 242, 40, -140, 0, 0, 1025, 178, 178, 178, 255 }, // 0x00004E48
	 { 242, 20, -140, 0, 0, 0, 178, 178, 178, 255 }, // 0x00004E58
};

Vtx_t _tokinoma_room_0_vertices_00004E68[32] = 
{
	 { -105, 40, -60, 0, 4094, 0, 153, 153, 153, 255 }, // 0x00004E68
	 { -105, 70, -60, 0, 4094, 1024, 153, 153, 153, 255 }, // 0x00004E78
	 { -1, 70, -120, 0, 0, 1024, 153, 153, 153, 255 }, // 0x00004E88
	 { -1, 40, -120, 0, 0, 0, 153, 153, 153, 255 }, // 0x00004E98
	 { -105, 40, 60, 0, 4095, 0, 51, 51, 51, 255 }, // 0x00004EA8
	 { -105, 70, 60, 0, 4095, 1024, 51, 51, 51, 255 }, // 0x00004EB8
	 { -105, 70, -60, 0, 0, 1024, 51, 51, 51, 255 }, // 0x00004EC8
	 { -105, 40, -60, 0, 0, 0, 51, 51, 51, 255 }, // 0x00004ED8
	 { -1, 40, 120, 0, 4097, 0, 51, 51, 51, 255 }, // 0x00004EE8
	 { -1, 70, 120, 0, 4097, 1024, 51, 51, 51, 255 }, // 0x00004EF8
	 { -105, 70, 60, 0, 0, 1024, 51, 51, 51, 255 }, // 0x00004F08
	 { -105, 40, 60, 0, 0, 0, 51, 51, 51, 255 }, // 0x00004F18
	 { 103, 40, 60, 0, 4096, 0, 51, 51, 51, 255 }, // 0x00004F28
	 { 103, 70, 60, 0, 4096, 1024, 51, 51, 51, 255 }, // 0x00004F38
	 { -1, 70, 120, 0, 0, 1024, 51, 51, 51, 255 }, // 0x00004F48
	 { -1, 40, 120, 0, 0, 0, 51, 51, 51, 255 }, // 0x00004F58
	 { 103, 40, -60, 0, 4096, 0, 76, 76, 76, 255 }, // 0x00004F68
	 { 103, 70, -60, 0, 4096, 1024, 76, 76, 76, 255 }, // 0x00004F78
	 { 103, 70, 60, 0, -3, 1024, 76, 76, 76, 255 }, // 0x00004F88
	 { 103, 40, 60, 0, -3, 0, 76, 76, 76, 255 }, // 0x00004F98
	 { -1, 40, -120, 0, 4096, 0, 191, 191, 191, 255 }, // 0x00004FA8
	 { -1, 70, -120, 0, 4096, 1024, 191, 191, 191, 255 }, // 0x00004FB8
	 { 103, 70, -60, 0, -3, 1024, 191, 191, 191, 255 }, // 0x00004FC8
	 { 103, 40, -60, 0, -3, 0, 191, 191, 191, 255 }, // 0x00004FD8
	 { -139, 20, 200, 0, 1581, 238, 255, 255, 255, 255 }, // 0x00004FE8
	 { -142, 20, 245, 0, 1970, 1024, 255, 255, 255, 255 }, // 0x00004FF8
	 { -20, 20, 315, 0, 4730, 1024, 255, 255, 255, 255 }, // 0x00005008
	 { 0, 20, 293, 0, 4843, 457, 255, 255, 255, 255 }, // 0x00005018
	 { 0, 20, 280, 0, 4719, 238, 255, 255, 255, 255 }, // 0x00005028
	 { 282, 0, -164, 0, 5461, 0, 76, 76, 76, 255 }, // 0x00005038
	 { 282, 20, -164, 0, 5461, 1025, 76, 76, 76, 255 }, // 0x00005048
	 { 282, 20, 163, 0, -106, 1025, 76, 76, 76, 255 }, // 0x00005058
};

Vtx_t _tokinoma_room_0_vertices_00005068[63] = 
{
	 { 282, 0, -164, 0, 5461, 0, 76, 76, 76, 255 }, // 0x00005068
	 { 282, 20, 163, 0, -106, 1025, 76, 76, 76, 255 }, // 0x00005078
	 { 282, 0, 163, 0, -106, 0, 76, 76, 76, 255 }, // 0x00005088
	 { 282, 0, 163, 0, 8192, 0, 51, 51, 51, 255 }, // 0x00005098
	 { 282, 20, 163, 0, 8192, 1025, 51, 51, 51, 255 }, // 0x000050A8
	 { 0, 20, 326, 0, -159, 1025, 51, 51, 51, 255 }, // 0x000050B8
	 { 0, 0, 326, 0, -159, 0, 51, 51, 51, 255 }, // 0x000050C8
	 { 0, 0, 326, 0, 8351, -1, 51, 51, 51, 255 }, // 0x000050D8
	 { 0, 20, 326, 0, 8351, 1024, 51, 51, 51, 255 }, // 0x000050E8
	 { -283, 20, 163, 0, 0, 1024, 51, 51, 51, 255 }, // 0x000050F8
	 { -283, 0, 163, 0, 0, -1, 51, 51, 51, 255 }, // 0x00005108
	 { -283, 0, 163, 0, 8351, -1, 51, 51, 51, 255 }, // 0x00005118
	 { -283, 20, 163, 0, 8351, 1024, 51, 51, 51, 255 }, // 0x00005128
	 { -283, 20, -163, 0, 0, 1024, 51, 51, 51, 255 }, // 0x00005138
	 { -283, 0, -163, 0, 0, -1, 51, 51, 51, 255 }, // 0x00005148
	 { -283, 0, -163, 0, 8351, -1, 127, 127, 127, 255 }, // 0x00005158
	 { -283, 20, -163, 0, 8351, 1024, 127, 127, 127, 255 }, // 0x00005168
	 { -1, 20, -326, 0, 0, 1024, 127, 127, 127, 255 }, // 0x00005178
	 { -1, 0, -326, 0, 0, -1, 127, 127, 127, 255 }, // 0x00005188
	 { -1, 0, -326, 0, 7680, 0, 178, 178, 178, 255 }, // 0x00005198
	 { -1, 20, -326, 0, 7680, 1025, 178, 178, 178, 255 }, // 0x000051A8
	 { 282, 20, -164, 0, -671, 1025, 178, 178, 178, 255 }, // 0x000051B8
	 { 282, 0, -164, 0, -671, 0, 178, 178, 178, 255 }, // 0x000051C8
	 { 53, 40, 112, 0, 1024, 0, 178, 178, 178, 255 }, // 0x000051D8
	 { 53, 50, 112, 0, 1024, 1024, 178, 178, 178, 255 }, // 0x000051E8
	 { 63, 50, 129, 0, 0, 1024, 178, 178, 178, 255 }, // 0x000051F8
	 { 63, 40, 129, 0, 0, 0, 178, 178, 178, 255 }, // 0x00005208
	 { 63, 40, 129, 0, 5095, 0, 51, 51, 51, 255 }, // 0x00005218
	 { 63, 50, 129, 0, 5098, 1014, 51, 51, 51, 255 }, // 0x00005228
	 { -1, 50, 166, 0, 0, 1014, 51, 51, 51, 255 }, // 0x00005238
	 { -1, 40, 166, 0, -3, 0, 51, 51, 51, 255 }, // 0x00005248
	 { -1, 50, 166, 0, 1022, 1008, 255, 255, 255, 255 }, // 0x00005258
	 { -1, 50, 143, 0, 1025, 5, 255, 255, 255, 255 }, // 0x00005268
	 { -63, 50, 107, 0, -1019, 13, 255, 255, 255, 255 }, // 0x00005278
	 { -73, 50, 125, 0, -1022, 1016, 255, 255, 255, 255 }, // 0x00005288
	 { -1, 40, 166, 0, 5095, 0, 51, 51, 51, 255 }, // 0x00005298
	 { -1, 50, 166, 0, 5098, 1014, 51, 51, 51, 255 }, // 0x000052A8
	 { -73, 50, 125, 0, 0, 1014, 51, 51, 51, 255 }, // 0x000052B8
	 { -73, 40, 125, 0, -3, 0, 51, 51, 51, 255 }, // 0x000052C8
	 { -73, 40, 125, 0, 1024, 0, 255, 255, 255, 255 }, // 0x000052D8
	 { -73, 50, 125, 0, 1024, 1024, 255, 255, 255, 255 }, // 0x000052E8
	 { -63, 50, 107, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000052F8
	 { -63, 40, 107, 0, 0, 0, 255, 255, 255, 255 }, // 0x00005308
	 { 43, 40, 95, 0, 1024, 0, 178, 178, 178, 255 }, // 0x00005318
	 { 43, 60, 95, 0, 1024, 1024, 178, 178, 178, 255 }, // 0x00005328
	 { 53, 60, 112, 0, 0, 1024, 178, 178, 178, 255 }, // 0x00005338
	 { 53, 40, 112, 0, 0, 0, 178, 178, 178, 255 }, // 0x00005348
	 { -1, 60, 143, 0, 1022, 1008, 255, 255, 255, 255 }, // 0x00005358
	 { -1, 60, 120, 0, 1025, 5, 255, 255, 255, 255 }, // 0x00005368
	 { -53, 60, 90, 0, -1019, 13, 255, 255, 255, 255 }, // 0x00005378
	 { -63, 60, 107, 0, -1022, 1016, 255, 255, 255, 255 }, // 0x00005388
	 { -63, 40, 107, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00005398
	 { -63, 60, 107, 0, 1024, 1024, 255, 255, 255, 255 }, // 0x000053A8
	 { -53, 60, 90, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000053B8
	 { -53, 40, 90, 0, 0, 0, 255, 255, 255, 255 }, // 0x000053C8
	 { -213, 0, -204, 0, 1024, 0, 51, 51, 51, 255 }, // 0x000053D8
	 { -213, 10, -204, 0, 1024, 1024, 51, 51, 51, 255 }, // 0x000053E8
	 { -223, 10, -221, 0, 0, 1024, 51, 51, 51, 255 }, // 0x000053F8
	 { -223, 0, -221, 0, 0, 0, 51, 51, 51, 255 }, // 0x00005408
	 { -223, 0, -221, 0, 4075, 0, 127, 127, 127, 255 }, // 0x00005418
	 { -223, 10, -221, 0, 4078, 1014, 127, 127, 127, 255 }, // 0x00005428
	 { -82, 10, -303, 0, -1, 1014, 127, 127, 127, 255 }, // 0x00005438
	 { -82, 0, -303, 0, -3, 0, 127, 127, 127, 255 }, // 0x00005448
};

Vtx_t _tokinoma_room_0_vertices_00005458[32] = 
{
	 { -82, 0, -303, 0, 1024, 0, 178, 178, 178, 255 }, // 0x00005458
	 { -82, 10, -303, 0, 1024, 1024, 178, 178, 178, 255 }, // 0x00005468
	 { -72, 10, -285, 0, 0, 1024, 178, 178, 178, 255 }, // 0x00005478
	 { -72, 0, -285, 0, 0, 0, 178, 178, 178, 255 }, // 0x00005488
	 { -183, 20, -175, 0, 1024, 0, 51, 51, 51, 255 }, // 0x00005498
	 { -183, 30, -175, 0, 1024, 1024, 51, 51, 51, 255 }, // 0x000054A8
	 { -193, 30, -192, 0, 0, 1024, 51, 51, 51, 255 }, // 0x000054B8
	 { -193, 20, -192, 0, 0, 0, 51, 51, 51, 255 }, // 0x000054C8
	 { -193, 20, -192, 0, 4075, 0, 127, 127, 127, 255 }, // 0x000054D8
	 { -193, 30, -192, 0, 4078, 1014, 127, 127, 127, 255 }, // 0x000054E8
	 { -72, 30, -262, 0, -1, 1014, 127, 127, 127, 255 }, // 0x000054F8
	 { -72, 20, -262, 0, -3, 0, 127, 127, 127, 255 }, // 0x00005508
	 { -72, 20, -262, 0, 1024, 0, 178, 178, 178, 255 }, // 0x00005518
	 { -72, 30, -262, 0, 1024, 1024, 178, 178, 178, 255 }, // 0x00005528
	 { -62, 30, -245, 0, 0, 1024, 178, 178, 178, 255 }, // 0x00005538
	 { -62, 20, -245, 0, 0, 0, 178, 178, 178, 255 }, // 0x00005548
	 { -1, 20, 303, 0, 13587, 0, 51, 51, 51, 255 }, // 0x00005558
	 { -1, 30, 303, 0, 13596, 1014, 51, 51, 51, 255 }, // 0x00005568
	 { -132, 30, 227, 0, 0, 1014, 51, 51, 51, 255 }, // 0x00005578
	 { -132, 20, 227, 0, -9, 0, 51, 51, 51, 255 }, // 0x00005588
	 { -132, 20, 227, 0, 1024, 0, 89, 89, 89, 255 }, // 0x00005598
	 { -132, 30, 227, 0, 1024, 1024, 89, 89, 89, 255 }, // 0x000055A8
	 { -122, 30, 210, 0, 0, 1024, 89, 89, 89, 255 }, // 0x000055B8
	 { -122, 20, 210, 0, 0, 0, 89, 89, 89, 255 }, // 0x000055C8
	 { 0, 0, 349, 0, 13587, 0, 51, 51, 51, 255 }, // 0x000055D8
	 { 0, 10, 349, 0, 13596, 1014, 51, 51, 51, 255 }, // 0x000055E8
	 { -152, 10, 262, 0, 0, 1014, 51, 51, 51, 255 }, // 0x000055F8
	 { -152, 0, 262, 0, -9, 0, 51, 51, 51, 255 }, // 0x00005608
	 { -152, 0, 262, 0, 1024, 0, 89, 89, 89, 255 }, // 0x00005618
	 { -152, 10, 262, 0, 1024, 1024, 89, 89, 89, 255 }, // 0x00005628
	 { -142, 10, 245, 0, 0, 1024, 89, 89, 89, 255 }, // 0x00005638
	 { -142, 0, 245, 0, 0, 0, 89, 89, 89, 255 }, // 0x00005648
};

Vtx_t _tokinoma_room_0_vertices_00005658[32] = 
{
	 { 141, 0, 244, 0, 1024, 0, 127, 127, 127, 255 }, // 0x00005658
	 { 141, 10, 244, 0, 1024, 1024, 127, 127, 127, 255 }, // 0x00005668
	 { 151, 10, 262, 0, 0, 1024, 127, 127, 127, 255 }, // 0x00005678
	 { 151, 0, 262, 0, 0, 0, 127, 127, 127, 255 }, // 0x00005688
	 { 151, 0, 262, 0, 13961, 0, 51, 51, 51, 255 }, // 0x00005698
	 { 151, 10, 262, 0, 13970, 1014, 51, 51, 51, 255 }, // 0x000056A8
	 { 0, 10, 349, 0, 0, 1014, 51, 51, 51, 255 }, // 0x000056B8
	 { 0, 0, 349, 0, -9, 0, 51, 51, 51, 255 }, // 0x000056C8
	 { 121, 20, 210, 0, 1024, 0, 127, 127, 127, 255 }, // 0x000056D8
	 { 121, 30, 210, 0, 1024, 1024, 127, 127, 127, 255 }, // 0x000056E8
	 { 131, 30, 227, 0, 0, 1024, 127, 127, 127, 255 }, // 0x000056F8
	 { 131, 20, 227, 0, 0, 0, 127, 127, 127, 255 }, // 0x00005708
	 { 131, 20, 227, 0, 13587, 0, 51, 51, 51, 255 }, // 0x00005718
	 { 131, 30, 227, 0, 13596, 1014, 51, 51, 51, 255 }, // 0x00005728
	 { -1, 30, 303, 0, 0, 1014, 51, 51, 51, 255 }, // 0x00005738
	 { -1, 20, 303, 0, -9, 0, 51, 51, 51, 255 }, // 0x00005748
	 { 60, 20, -245, 0, 1024, 0, 140, 140, 140, 255 }, // 0x00005758
	 { 60, 30, -245, 0, 1024, 1024, 140, 140, 140, 255 }, // 0x00005768
	 { 70, 30, -262, 0, 0, 1024, 140, 140, 140, 255 }, // 0x00005778
	 { 70, 20, -262, 0, 0, 0, 140, 140, 140, 255 }, // 0x00005788
	 { 70, 20, -262, 0, 4075, 0, 178, 178, 178, 255 }, // 0x00005798
	 { 70, 30, -262, 0, 4078, 1014, 178, 178, 178, 255 }, // 0x000057A8
	 { 191, 30, -193, 0, -1, 1014, 178, 178, 178, 255 }, // 0x000057B8
	 { 191, 20, -193, 0, -3, 0, 178, 178, 178, 255 }, // 0x000057C8
	 { 191, 20, -193, 0, 1024, 0, 51, 51, 51, 255 }, // 0x000057D8
	 { 191, 30, -193, 0, 1024, 1024, 51, 51, 51, 255 }, // 0x000057E8
	 { 181, 30, -175, 0, 0, 1024, 51, 51, 51, 255 }, // 0x000057F8
	 { 181, 20, -175, 0, 0, 0, 51, 51, 51, 255 }, // 0x00005808
	 { 69, 0, -286, 0, 1024, 0, 140, 140, 140, 255 }, // 0x00005818
	 { 69, 10, -286, 0, 1024, 1024, 140, 140, 140, 255 }, // 0x00005828
	 { 79, 10, -303, 0, 0, 1024, 140, 140, 140, 255 }, // 0x00005838
	 { 79, 0, -303, 0, 0, 0, 140, 140, 140, 255 }, // 0x00005848
};

Vtx_t _tokinoma_room_0_vertices_00005858[32] = 
{
	 { 79, 0, -303, 0, 4075, 0, 178, 178, 178, 255 }, // 0x00005858
	 { 79, 10, -303, 0, 4078, 1014, 178, 178, 178, 255 }, // 0x00005868
	 { 221, 10, -222, 0, -1, 1014, 178, 178, 178, 255 }, // 0x00005878
	 { 221, 0, -222, 0, -3, 0, 178, 178, 178, 255 }, // 0x00005888
	 { 221, 0, -222, 0, 1024, 0, 51, 51, 51, 255 }, // 0x00005898
	 { 221, 10, -222, 0, 1024, 1024, 51, 51, 51, 255 }, // 0x000058A8
	 { 211, 10, -204, 0, 0, 1024, 51, 51, 51, 255 }, // 0x000058B8
	 { 211, 0, -204, 0, 0, 0, 51, 51, 51, 255 }, // 0x000058C8
	 { 2, 75, 5, 0, 1365, 510, 51, 51, 51, 255 }, // 0x000058D8
	 { -1, 79, 5, 0, 1026, 889, 51, 51, 51, 255 }, // 0x000058E8
	 { -4, 75, 5, 0, 688, 510, 51, 51, 51, 255 }, // 0x000058F8
	 { -1, 71, 5, 0, 1026, 132, 51, 51, 51, 255 }, // 0x00005908
	 { 5, 71, 5, 0, 1704, 132, 51, 51, 51, 255 }, // 0x00005918
	 { 2, 75, 5, 0, 1365, 510, 153, 153, 153, 255 }, // 0x00005928
	 { -4, 75, 5, 0, 688, 510, 153, 153, 153, 255 }, // 0x00005938
	 { -7, 71, 5, 0, 349, 132, 51, 51, 51, 255 }, // 0x00005948
	 { 8, 80, 5, 0, 2053, 1024, 255, 255, 255, 255 }, // 0x00005958
	 { -1, 79, 5, 0, 1026, 889, 178, 178, 178, 255 }, // 0x00005968
	 { 2, 75, 5, 0, 1365, 510, 140, 140, 140, 255 }, // 0x00005978
	 { 5, 71, 5, 0, 1704, 132, 89, 89, 89, 255 }, // 0x00005988
	 { 14, 70, 5, 0, 2737, -3, 63, 63, 63, 255 }, // 0x00005998
	 { -10, 80, 5, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000059A8
	 { -4, 75, 5, 0, 688, 510, 140, 140, 140, 255 }, // 0x000059B8
	 { -7, 71, 5, 0, 349, 132, 89, 89, 89, 255 }, // 0x000059C8
	 { -16, 70, 5, 0, -684, -3, 63, 63, 63, 255 }, // 0x000059D8
	 { -16, 70, -5, 0, 10, 0, 216, 216, 216, 255 }, // 0x000059E8
	 { -10, 80, 5, 0, 1505, 1024, 114, 114, 114, 255 }, // 0x000059F8
	 { -10, 80, -5, 0, 0, 1024, 114, 114, 114, 255 }, // 0x00005A08
	 { -16, 70, 5, 0, 1515, 0, 216, 216, 216, 255 }, // 0x00005A18
	 { 14, 70, -5, 0, -678, 3, 255, 255, 255, 255 }, // 0x00005A28
	 { -10, 80, -5, 0, 2034, 1024, 255, 255, 255, 255 }, // 0x00005A38
	 { 8, 80, -5, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00005A48
};

Vtx_t _tokinoma_room_0_vertices_00005A58[32] = 
{
	 { 14, 70, -5, 0, -678, 3, 255, 255, 255, 255 }, // 0x00005A58
	 { -16, 70, -5, 0, 2711, 3, 255, 255, 255, 255 }, // 0x00005A68
	 { -10, 80, -5, 0, 2034, 1024, 255, 255, 255, 255 }, // 0x00005A78
	 { 14, 70, 5, 0, 0, 29, 216, 216, 216, 255 }, // 0x00005A88
	 { 8, 80, -5, 0, 1024, 1024, 114, 114, 114, 255 }, // 0x00005A98
	 { 8, 80, 5, 0, 0, 1024, 114, 114, 114, 255 }, // 0x00005AA8
	 { 14, 70, -5, 0, 1024, 29, 216, 216, 216, 255 }, // 0x00005AB8
	 { -17, 10, 317, 0, 3019, 380, 255, 255, 255, 255 }, // 0x00005AC8
	 { -142, 10, 245, 0, -1619, 380, 255, 255, 255, 255 }, // 0x00005AD8
	 { -142, 10, 245, 0, -1619, 385, 255, 255, 255, 255 }, // 0x00005AE8
	 { -143, 10, 267, 0, -1302, 1024, 255, 255, 255, 255 }, // 0x00005AF8
	 { -30, 10, 332, 0, 2890, 1024, 255, 255, 255, 255 }, // 0x00005B08
	 { 0, 30, 280, 0, 3116, 376, 255, 255, 255, 255 }, // 0x00005B18
	 { -122, 30, 210, 0, -1391, 380, 255, 255, 255, 255 }, // 0x00005B28
	 { -132, 30, 227, 0, -1391, 1024, 255, 255, 255, 255 }, // 0x00005B38
	 { -11, 30, 297, 0, 3090, 1024, 255, 255, 255, 255 }, // 0x00005B48
	 { 0, 30, 285, 0, 3191, 513, 255, 255, 255, 255 }, // 0x00005B58
	 { 27, 60, 104, 0, 283, 8, 255, 255, 255, 255 }, // 0x00005B68
	 { -1, 60, 120, 0, -1019, 13, 255, 255, 255, 255 }, // 0x00005B78
	 { -1, 60, 143, 0, -1022, 1016, 255, 255, 255, 255 }, // 0x00005B88
	 { 26, 60, 128, 0, -18, 1012, 255, 255, 255, 255 }, // 0x00005B98
	 { 26, 50, 128, 0, -18, 9, 255, 255, 255, 255 }, // 0x00005BA8
	 { -1, 50, 143, 0, -1019, 13, 255, 255, 255, 255 }, // 0x00005BB8
	 { -1, 50, 166, 0, -1022, 1016, 255, 255, 255, 255 }, // 0x00005BC8
	 { 24, 50, 152, 0, -225, 1013, 255, 255, 255, 255 }, // 0x00005BD8
	 { 8, 30, 275, 0, -928, 297, 255, 255, 255, 255 }, // 0x00005BE8
	 { 0, 30, 280, 0, -1286, 298, 255, 255, 255, 255 }, // 0x00005BF8
	 { 0, 30, 285, 0, -1379, 452, 255, 255, 255, 255 }, // 0x00005C08
	 { 53, 50, 112, 0, 2039, 507, 51, 51, 51, 255 }, // 0x00005C18
	 { 53, 60, 112, 0, 2039, 1014, 51, 51, 51, 255 }, // 0x00005C28
	 { -1, 60, 143, 0, 0, 1014, 51, 51, 51, 255 }, // 0x00005C38
	 { -1, 50, 143, 0, -1, 507, 51, 51, 51, 255 }, // 0x00005C48
};

Vtx_t _tokinoma_room_0_vertices_00005C58[9] = 
{
	 { -1, 50, 143, 0, 2039, 507, 51, 51, 51, 255 }, // 0x00005C58
	 { -1, 60, 143, 0, 2039, 1014, 51, 51, 51, 255 }, // 0x00005C68
	 { -63, 60, 107, 0, 0, 1014, 51, 51, 51, 255 }, // 0x00005C78
	 { -63, 50, 107, 0, -1, 507, 51, 51, 51, 255 }, // 0x00005C88
	 { -105, 40, 60, 0, 0, -831, 255, 255, 255, 255 }, // 0x00005C98
	 { -131, 40, 76, 0, -131, -474, 255, 255, 255, 255 }, // 0x00005CA8
	 { -139, 40, 200, 0, 341, 1024, 255, 255, 255, 255 }, // 0x00005CB8
	 { 0, 40, 280, 0, 1707, 1024, 255, 255, 255, 255 }, // 0x00005CC8
	 { -1, 40, 120, 0, 1024, -831, 255, 255, 255, 255 }, // 0x00005CD8
};

Vtx_t _tokinoma_room_0_vertices_00005CE8[8] = 
{
	 { -283, 0, -326, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005CE8
	 { 282, 0, -326, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005CF8
	 { -283, 80, -326, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005D08
	 { 282, 80, -326, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005D18
	 { -283, 0, 349, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005D28
	 { 282, 0, 349, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005D38
	 { -283, 80, 349, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005D48
	 { 282, 80, 349, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005D58
};

Gfx _tokinoma_room_0_dlist_00005D68[] =
{
	gsDPPipeSync(), // 0x00005D68
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005D70
	gsSPVertex(_tokinoma_room_0_vertices_00005CE8, 8, 0), // 0x00005D78
	gsSPCullDisplayList(0, 7), // 0x00005D80
	gsDPPipeSync(), // 0x00005D88
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005D90
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005D98
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005DA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_000117A0), // 0x00005DA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00005DB0
	gsDPLoadSync(), // 0x00005DB8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005DC0
	gsDPPipeSync(), // 0x00005DC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 0, 5, 0), // 0x00005DD0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005DD8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000149D8), // 0x00005DE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00005DE8
	gsDPLoadSync(), // 0x00005DF0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005DF8
	gsDPPipeSync(), // 0x00005E00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 1, 5, 0, 0, 5, 0), // 0x00005E08
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00005E10
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005E18
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005E20
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005E28
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005E30
	gsSPDisplayList(0x0A000000), // 0x00005E38
	gsSPVertex(_tokinoma_room_0_vertices_00004C68, 32, 0), // 0x00005E40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005E48
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005E50
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00005E58
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00005E60
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00005E68
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00005E70
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00005E78
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00005E80
	gsSPVertex(_tokinoma_room_0_vertices_00004E68, 32, 0), // 0x00005E88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005E90
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005E98
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00005EA0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00005EA8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00005EB0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00005EB8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00005EC0
	gsSP2Triangles(24, 27, 28, 0, 29, 30, 31, 0), // 0x00005EC8
	gsSPVertex(_tokinoma_room_0_vertices_00005068, 32, 0), // 0x00005ED0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00005ED8
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x00005EE0
	gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0), // 0x00005EE8
	gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0), // 0x00005EF0
	gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0), // 0x00005EF8
	gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0), // 0x00005F00
	gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0), // 0x00005F08
	gsSP1Triangle(27, 29, 30, 0), // 0x00005F10
	gsSPVertex(_tokinoma_room_0_vertices_00005258, 32, 0), // 0x00005F18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005F20
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005F28
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00005F30
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00005F38
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00005F40
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00005F48
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00005F50
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00005F58
	gsSPVertex(_tokinoma_room_0_vertices_00005458, 32, 0), // 0x00005F60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005F68
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005F70
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00005F78
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00005F80
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00005F88
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00005F90
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00005F98
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00005FA0
	gsSPVertex(_tokinoma_room_0_vertices_00005658, 32, 0), // 0x00005FA8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005FB0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005FB8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00005FC0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00005FC8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00005FD0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00005FD8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00005FE0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00005FE8
	gsSPVertex(_tokinoma_room_0_vertices_00005858, 32, 0), // 0x00005FF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005FF8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006000
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 8, 0), // 0x00006008
	gsSP2Triangles(11, 13, 14, 0, 15, 11, 10, 0), // 0x00006010
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00006018
	gsSP2Triangles(16, 19, 20, 0, 21, 17, 16, 0), // 0x00006020
	gsSP2Triangles(22, 17, 21, 0, 23, 22, 21, 0), // 0x00006028
	gsSP2Triangles(24, 23, 21, 0, 20, 19, 23, 0), // 0x00006030
	gsSP2Triangles(20, 23, 24, 0, 25, 26, 27, 0), // 0x00006038
	gsSP2Triangles(25, 28, 26, 0, 29, 30, 31, 0), // 0x00006040
	gsSPVertex(_tokinoma_room_0_vertices_00005A58, 32, 0), // 0x00006048
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00006050
	gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0), // 0x00006058
	gsSP2Triangles(7, 9, 10, 0, 7, 10, 11, 0), // 0x00006060
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00006068
	gsSP2Triangles(12, 15, 16, 0, 17, 18, 19, 0), // 0x00006070
	gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0), // 0x00006078
	gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0), // 0x00006080
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00006088
	gsSPVertex(_tokinoma_room_0_vertices_00005C58, 9, 0), // 0x00006090
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006098
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000060A0
	gsSP1Triangle(4, 7, 8, 0), // 0x000060A8
	gsSPEndDisplayList(), // 0x000060B0
};

Vtx_t _tokinoma_room_0_vertices_000060B8[62] = 
{
	 { -11, 30, 297, 0, 3090, 1024, 255, 255, 255, 255 }, // 0x000060B8
	 { -1, 30, 303, 0, 3472, 1024, 255, 255, 255, 255 }, // 0x000060C8
	 { 0, 30, 285, 0, 3191, 513, 255, 255, 255, 255 }, // 0x000060D8
	 { 0, 10, 326, 0, 3635, 380, 255, 255, 255, 255 }, // 0x000060E8
	 { -17, 10, 317, 0, 3019, 380, 255, 255, 255, 255 }, // 0x000060F8
	 { -30, 10, 332, 0, 2890, 1024, 255, 255, 255, 255 }, // 0x00006108
	 { 0, 10, 349, 0, 4007, 1024, 255, 255, 255, 255 }, // 0x00006118
	 { -142, 10, 245, 0, -1619, 385, 255, 255, 255, 255 }, // 0x00006128
	 { -152, 10, 262, 0, -1620, 1024, 255, 255, 255, 255 }, // 0x00006138
	 { -143, 10, 267, 0, -1302, 1024, 255, 255, 255, 255 }, // 0x00006148
	 { 141, 10, 244, 0, 4868, 345, 255, 255, 255, 255 }, // 0x00006158
	 { 0, 10, 326, 0, -671, 345, 255, 255, 255, 255 }, // 0x00006168
	 { 0, 10, 349, 0, -1064, 1024, 255, 255, 255, 255 }, // 0x00006178
	 { 151, 10, 262, 0, 4867, 1024, 255, 255, 255, 255 }, // 0x00006188
	 { 69, 10, -286, 0, 2048, 5, 255, 255, 255, 255 }, // 0x00006198
	 { 211, 10, -204, 0, -2040, 13, 255, 255, 255, 255 }, // 0x000061A8
	 { 221, 10, -222, 0, -2045, 1016, 255, 255, 255, 255 }, // 0x000061B8
	 { 79, 10, -303, 0, 2043, 1008, 255, 255, 255, 255 }, // 0x000061C8
	 { 60, 30, -245, 0, 2048, 5, 255, 255, 255, 255 }, // 0x000061D8
	 { 181, 30, -175, 0, -2040, 13, 255, 255, 255, 255 }, // 0x000061E8
	 { 191, 30, -193, 0, -2045, 1016, 255, 255, 255, 255 }, // 0x000061F8
	 { 70, 30, -262, 0, 2043, 1008, 255, 255, 255, 255 }, // 0x00006208
	 { -213, 10, -204, 0, 2048, 5, 255, 255, 255, 255 }, // 0x00006218
	 { -72, 10, -285, 0, -2040, 13, 255, 255, 255, 255 }, // 0x00006228
	 { -82, 10, -303, 0, -2045, 1016, 255, 255, 255, 255 }, // 0x00006238
	 { -223, 10, -221, 0, 2043, 1008, 255, 255, 255, 255 }, // 0x00006248
	 { -183, 30, -175, 0, 2048, 5, 255, 255, 255, 255 }, // 0x00006258
	 { -62, 30, -245, 0, -2040, 13, 255, 255, 255, 255 }, // 0x00006268
	 { -72, 30, -262, 0, -2045, 1016, 255, 255, 255, 255 }, // 0x00006278
	 { -193, 30, -192, 0, 2043, 1008, 255, 255, 255, 255 }, // 0x00006288
	 { -243, 20, 140, 0, -773, 238, 255, 255, 255, 255 }, // 0x00006298
	 { -283, 20, 163, 0, -1227, 1024, 255, 255, 255, 255 }, // 0x000062A8
	 { -142, 20, 245, 0, 1970, 1024, 255, 255, 255, 255 }, // 0x000062B8
	 { -139, 20, 200, 0, 1581, 238, 255, 255, 255, 255 }, // 0x000062C8
	 { -283, 20, -163, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000062D8
	 { -283, 20, 163, 0, 8069, 1024, 255, 255, 255, 255 }, // 0x000062E8
	 { -243, 20, 140, 0, 7496, 32, 255, 255, 255, 255 }, // 0x000062F8
	 { -243, 20, -140, 0, 573, 32, 255, 255, 255, 255 }, // 0x00006308
	 { -243, 40, -140, 0, -341, 1023, 255, 255, 255, 255 }, // 0x00006318
	 { -243, 40, 140, 0, 2048, 1025, 255, 255, 255, 255 }, // 0x00006328
	 { -131, 40, 76, 0, 1496, -474, 255, 255, 255, 255 }, // 0x00006338
	 { -122, 40, -70, 0, 255, -600, 255, 255, 255, 255 }, // 0x00006348
	 { -283, 20, -163, 0, 4822, 1024, 255, 255, 255, 255 }, // 0x00006358
	 { -243, 20, -140, 0, 4479, 77, 255, 255, 255, 255 }, // 0x00006368
	 { -1, 20, -280, 0, 342, 77, 255, 255, 255, 255 }, // 0x00006378
	 { -1, 20, -326, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00006388
	 { -1, 40, -280, 0, -683, 1025, 255, 255, 255, 255 }, // 0x00006398
	 { -243, 40, -140, 0, 1707, 1023, 255, 255, 255, 255 }, // 0x000063A8
	 { -105, 40, -60, 0, 1025, -831, 255, 255, 255, 255 }, // 0x000063B8
	 { -1, 40, -120, 0, 1, -831, 255, 255, 255, 255 }, // 0x000063C8
	 { 282, 20, -164, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000063D8
	 { -1, 20, -326, 0, 4170, 1024, 255, 255, 255, 255 }, // 0x000063E8
	 { -1, 20, -280, 0, 3875, 72, 255, 255, 255, 255 }, // 0x000063F8
	 { 242, 20, -140, 0, 295, 72, 255, 255, 255, 255 }, // 0x00006408
	 { 242, 40, -140, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00006418
	 { -1, 40, -280, 0, 2389, 1023, 255, 255, 255, 255 }, // 0x00006428
	 { -1, 40, -120, 0, 1708, -829, 255, 255, 255, 255 }, // 0x00006438
	 { 103, 40, -60, 0, 682, -829, 255, 255, 255, 255 }, // 0x00006448
	 { 242, 40, -140, 0, 1707, 1024, 255, 255, 255, 255 }, // 0x00006458
	 { 103, 40, -60, 0, 1025, -829, 255, 255, 255, 255 }, // 0x00006468
	 { 103, 40, 60, 0, 0, -831, 255, 255, 255, 255 }, // 0x00006478
	 { 242, 40, 140, 0, -683, 1024, 255, 255, 255, 255 }, // 0x00006488
};

Vtx_t _tokinoma_room_0_vertices_00006498[32] = 
{
	 { 282, 20, -164, 0, 5413, 1024, 255, 255, 255, 255 }, // 0x00006498
	 { 242, 20, -140, 0, 5031, 17, 255, 255, 255, 255 }, // 0x000064A8
	 { 242, 20, 140, 0, 382, 17, 255, 255, 255, 255 }, // 0x000064B8
	 { 282, 20, 163, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000064C8
	 { 0, 20, 326, 0, -2039, 1024, 255, 255, 255, 255 }, // 0x000064D8
	 { 282, 20, 163, 0, 4088, 1024, 255, 255, 255, 255 }, // 0x000064E8
	 { 242, 20, 140, 0, 3633, 235, 255, 255, 255, 255 }, // 0x000064F8
	 { 0, 20, 280, 0, -1513, 235, 255, 255, 255, 255 }, // 0x00006508
	 { -20, 20, 315, 0, 4730, 1024, 255, 255, 255, 255 }, // 0x00006518
	 { 0, 20, 326, 0, 5170, 1024, 255, 255, 255, 255 }, // 0x00006528
	 { 0, 20, 293, 0, 4843, 457, 255, 255, 255, 255 }, // 0x00006538
	 { 17, 40, 270, 0, -857, 1024, 255, 255, 255, 255 }, // 0x00006548
	 { 242, 40, 140, 0, 1365, 1024, 255, 255, 255, 255 }, // 0x00006558
	 { 103, 40, 60, 0, 683, -831, 255, 255, 255, 255 }, // 0x00006568
	 { 27, 40, 104, 0, -69, -831, 255, 255, 255, 255 }, // 0x00006578
	 { -105, 40, -60, 0, 585, 154, 255, 255, 255, 255 }, // 0x00006588
	 { -122, 40, -70, 0, 512, 263, 255, 255, 255, 255 }, // 0x00006598
	 { -124, 40, -34, 0, 775, 278, 255, 255, 255, 255 }, // 0x000065A8
	 { -105, 40, -34, 0, 774, 154, 255, 255, 255, 255 }, // 0x000065B8
	 { 121, 30, 210, 0, 3882, 286, 255, 255, 255, 255 }, // 0x000065C8
	 { 8, 30, 275, 0, -928, 297, 255, 255, 255, 255 }, // 0x000065D8
	 { 0, 30, 285, 0, -1379, 452, 255, 255, 255, 255 }, // 0x000065E8
	 { -1, 30, 303, 0, -1724, 1024, 255, 255, 255, 255 }, // 0x000065F8
	 { 131, 30, 227, 0, 3883, 1024, 255, 255, 255, 255 }, // 0x00006608
	 { 53, 50, 112, 0, 1025, 5, 255, 255, 255, 255 }, // 0x00006618
	 { 26, 50, 128, 0, -18, 9, 255, 255, 255, 255 }, // 0x00006628
	 { 24, 50, 152, 0, -225, 1013, 255, 255, 255, 255 }, // 0x00006638
	 { 63, 50, 129, 0, 1022, 1008, 255, 255, 255, 255 }, // 0x00006648
	 { 43, 60, 95, 0, 1025, 5, 255, 255, 255, 255 }, // 0x00006658
	 { 27, 60, 104, 0, 283, 8, 255, 255, 255, 255 }, // 0x00006668
	 { 26, 60, 128, 0, -18, 1012, 255, 255, 255, 255 }, // 0x00006678
	 { 53, 60, 112, 0, 1022, 1008, 255, 255, 255, 255 }, // 0x00006688
};

Vtx_t _tokinoma_room_0_vertices_00006698[3] = 
{
	 { -131, 40, 76, 0, -131, -474, 255, 255, 255, 255 }, // 0x00006698
	 { -243, 40, 140, 0, -683, 1024, 255, 255, 255, 255 }, // 0x000066A8
	 { -139, 40, 200, 0, 341, 1024, 255, 255, 255, 255 }, // 0x000066B8
};

Vtx_t _tokinoma_room_0_vertices_000066C8[8] = 
{
	 { -283, 10, -326, 0, 0, 0, 0, 0, 0, 0 }, // 0x000066C8
	 { 282, 10, -326, 0, 0, 0, 0, 0, 0, 0 }, // 0x000066D8
	 { -283, 60, -326, 0, 0, 0, 0, 0, 0, 0 }, // 0x000066E8
	 { 282, 60, -326, 0, 0, 0, 0, 0, 0, 0 }, // 0x000066F8
	 { -283, 10, 349, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006708
	 { 282, 10, 349, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006718
	 { -283, 60, 349, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006728
	 { 282, 60, 349, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006738
};

Gfx _tokinoma_room_0_dlist_00006748[] =
{
	gsDPPipeSync(), // 0x00006748
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006750
	gsSPVertex(_tokinoma_room_0_vertices_000066C8, 8, 0), // 0x00006758
	gsSPCullDisplayList(0, 7), // 0x00006760
	gsDPPipeSync(), // 0x00006768
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006770
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006778
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006780
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_000117A0), // 0x00006788
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00006790
	gsDPLoadSync(), // 0x00006798
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000067A0
	gsDPPipeSync(), // 0x000067A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 0, 5, 0), // 0x000067B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000067B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000149D8), // 0x000067C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 1, 5, 0, 0, 5, 0), // 0x000067C8
	gsDPLoadSync(), // 0x000067D0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000067D8
	gsDPPipeSync(), // 0x000067E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 1, 5, 0, 0, 5, 0), // 0x000067E8
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x000067F0
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000067F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006800
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00006808
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00006810
	gsSPDisplayList(0x0B000000), // 0x00006818
	gsSPVertex(_tokinoma_room_0_vertices_000060B8, 32, 0), // 0x00006820
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00006828
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x00006830
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00006838
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x00006840
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x00006848
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x00006850
	gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0), // 0x00006858
	gsSPVertex(_tokinoma_room_0_vertices_00006298, 32, 0), // 0x00006860
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006868
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006870
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00006878
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00006880
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00006888
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00006890
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00006898
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000068A0
	gsSPVertex(_tokinoma_room_0_vertices_00006498, 32, 0), // 0x000068A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000068B0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000068B8
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0), // 0x000068C0
	gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0), // 0x000068C8
	gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0), // 0x000068D0
	gsSP2Triangles(19, 21, 22, 0, 19, 22, 23, 0), // 0x000068D8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x000068E0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000068E8
	gsSPVertex(_tokinoma_room_0_vertices_00006698, 3, 0), // 0x000068F0
	gsSP1Triangle(0, 1, 2, 0), // 0x000068F8
	gsSPEndDisplayList(), // 0x00006900
};

Vtx_t _tokinoma_room_0_vertices_00006908[23] = 
{
	 { -53, 70, -30, 0, 716, 5, 255, 255, 255, 255 }, // 0x00006908
	 { -37, 70, -58, 0, 1378, 318, 255, 255, 255, 255 }, // 0x00006918
	 { -102, 70, -58, 0, 34, 976, 255, 255, 255, 255 }, // 0x00006928
	 { -105, 70, -58, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00006938
	 { -105, 70, 60, 0, 2338, 1024, 255, 255, 255, 255 }, // 0x00006948
	 { -53, 70, -30, 0, 562, 2, 255, 255, 255, 255 }, // 0x00006958
	 { -102, 70, -58, 0, 1, 976, 255, 255, 255, 255 }, // 0x00006968
	 { -1, 70, 120, 0, 1, 1026, 255, 255, 255, 255 }, // 0x00006978
	 { 27, 70, 104, 0, 636, 1026, 255, 255, 255, 255 }, // 0x00006988
	 { 30, 70, 60, 0, 1114, 308, 255, 255, 255, 255 }, // 0x00006998
	 { -1, 70, 60, 0, 590, 5, 255, 255, 255, 255 }, // 0x000069A8
	 { -1, 70, 120, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000069B8
	 { -10, 80, 0, 0, -413, 33, 255, 255, 255, 255 }, // 0x000069C8
	 { -10, 80, 5, 0, -413, 1024, 255, 255, 255, 255 }, // 0x000069D8
	 { 8, 80, 5, 0, 3154, 1024, 255, 255, 255, 255 }, // 0x000069E8
	 { 8, 80, 0, 0, 3154, 33, 255, 255, 255, 255 }, // 0x000069F8
	 { -10, 80, -5, 0, 1960, 1024, 255, 255, 255, 255 }, // 0x00006A08
	 { -10, 80, 0, 0, 1960, 16, 255, 255, 255, 255 }, // 0x00006A18
	 { 8, 80, 0, 0, -1670, 16, 255, 255, 255, 255 }, // 0x00006A28
	 { 8, 80, -5, 0, -1670, 1024, 255, 255, 255, 255 }, // 0x00006A38
	 { -1, 70, 60, 0, 556, 0, 255, 255, 255, 255 }, // 0x00006A48
	 { -105, 70, 60, 0, 2233, 1024, 255, 255, 255, 255 }, // 0x00006A58
	 { -1, 70, 120, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00006A68
};

Vtx_t _tokinoma_room_0_vertices_00006A78[8] = 
{
	 { -105, 70, -58, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006A78
	 { 30, 70, -58, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006A88
	 { -105, 80, -58, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006A98
	 { 30, 80, -58, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006AA8
	 { -105, 70, 120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006AB8
	 { 30, 70, 120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006AC8
	 { -105, 80, 120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006AD8
	 { 30, 80, 120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006AE8
};

Gfx _tokinoma_room_0_dlist_00006AF8[] =
{
	gsDPPipeSync(), // 0x00006AF8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006B00
	gsSPVertex(_tokinoma_room_0_vertices_00006A78, 8, 0), // 0x00006B08
	gsSPCullDisplayList(0, 7), // 0x00006B10
	gsDPPipeSync(), // 0x00006B18
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006B20
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006B28
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006B30
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_00010FA0), // 0x00006B38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006B40
	gsDPLoadSync(), // 0x00006B48
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006B50
	gsDPPipeSync(), // 0x00006B58
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006B60
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006B68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000161D8), // 0x00006B70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00006B78
	gsDPLoadSync(), // 0x00006B80
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006B88
	gsDPPipeSync(), // 0x00006B90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 1, 5, 0, 0, 5, 0), // 0x00006B98
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00006BA0
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006BA8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006BB0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00006BB8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00006BC0
	gsSPDisplayList(0x0A000000), // 0x00006BC8
	gsSPVertex(_tokinoma_room_0_vertices_00006908, 23, 0), // 0x00006BD0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00006BD8
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x00006BE0
	gsSP2Triangles(7, 9, 10, 0, 7, 10, 11, 0), // 0x00006BE8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00006BF0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00006BF8
	gsSP1Triangle(20, 21, 22, 0), // 0x00006C00
	gsSPEndDisplayList(), // 0x00006C08
};

Vtx_t _tokinoma_room_0_vertices_00006C10[12] = 
{
	 { 51, 70, -30, 0, 596, -6, 255, 255, 255, 255 }, // 0x00006C10
	 { 103, 70, -60, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00006C20
	 { -1, 70, -120, 0, 2375, 1024, 255, 255, 255, 255 }, // 0x00006C30
	 { 51, 70, -30, 0, 590, -6, 255, 255, 255, 255 }, // 0x00006C40
	 { 103, 70, 60, 0, 2349, 1024, 255, 255, 255, 255 }, // 0x00006C50
	 { 27, 70, 104, 0, 636, 1026, 255, 255, 255, 255 }, // 0x00006C60
	 { 103, 70, 60, 0, 2359, 1026, 255, 255, 255, 255 }, // 0x00006C70
	 { 30, 70, 60, 0, 1114, 308, 255, 255, 255, 255 }, // 0x00006C80
	 { -1, 70, -120, 0, 2875, 1024, 255, 255, 255, 255 }, // 0x00006C90
	 { -105, 70, -60, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00006CA0
	 { -105, 70, -58, 0, -16, 1001, 255, 255, 255, 255 }, // 0x00006CB0
	 { -37, 70, -58, 0, 1378, 318, 255, 255, 255, 255 }, // 0x00006CC0
};

Vtx_t _tokinoma_room_0_vertices_00006CD0[8] = 
{
	 { 18, 70, -162, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006CD0
	 { 162, 70, 10, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006CE0
	 { 18, 70, -162, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006CF0
	 { 162, 70, 10, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D00
	 { -108, 70, -57, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D10
	 { 37, 70, 115, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D20
	 { -108, 70, -57, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D30
	 { 37, 70, 115, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006D40
};

Gfx _tokinoma_room_0_dlist_00006D50[] =
{
	gsDPPipeSync(), // 0x00006D50
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006D58
	gsSPVertex(_tokinoma_room_0_vertices_00006CD0, 8, 0), // 0x00006D60
	gsSPCullDisplayList(0, 7), // 0x00006D68
	gsDPPipeSync(), // 0x00006D70
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006D78
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006D80
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006D88
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_00010FA0), // 0x00006D90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006D98
	gsDPLoadSync(), // 0x00006DA0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006DA8
	gsDPPipeSync(), // 0x00006DB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006DB8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006DC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000161D8), // 0x00006DC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00006DD0
	gsDPLoadSync(), // 0x00006DD8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006DE0
	gsDPPipeSync(), // 0x00006DE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 1, 5, 0, 0, 5, 0), // 0x00006DF0
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00006DF8
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006E00
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006E08
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00006E10
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00006E18
	gsSPDisplayList(0x0B000000), // 0x00006E20
	gsSPVertex(_tokinoma_room_0_vertices_00006C10, 12, 0), // 0x00006E28
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0), // 0x00006E30
	gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0), // 0x00006E38
	gsSP1Triangle(8, 10, 11, 0), // 0x00006E40
	gsSPEndDisplayList(), // 0x00006E48
};

Vtx_t _tokinoma_room_0_vertices_00006E50[11] = 
{
	 { -53, 70, -30, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00006E50
	 { -1, 70, 60, 0, 3535, 1024, 255, 255, 255, 255 }, // 0x00006E60
	 { -1, 70, 0, 0, 1767, 3, 255, 255, 255, 255 }, // 0x00006E70
	 { 36, 70, -30, 0, 530, 1024, 255, 255, 255, 255 }, // 0x00006E80
	 { -53, 70, -30, 0, 3571, 1024, 255, 255, 255, 255 }, // 0x00006E90
	 { -1, 70, 0, 0, 1786, -7, 255, 255, 255, 255 }, // 0x00006EA0
	 { 35, 70, -21, 0, 550, 706, 255, 255, 255, 255 }, // 0x00006EB0
	 { -1, 70, 60, 0, -24, 1038, 255, 255, 255, 255 }, // 0x00006EC0
	 { 34, 70, 0, 0, 2324, 1006, 255, 255, 255, 255 }, // 0x00006ED0
	 { 35, 70, -21, 0, 2953, 684, 255, 255, 255, 255 }, // 0x00006EE0
	 { -1, 70, 0, 0, 1723, -3, 255, 255, 255, 255 }, // 0x00006EF0
};

Vtx_t _tokinoma_room_0_vertices_00006F00[8] = 
{
	 { -53, 70, -30, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F00
	 { 36, 70, -30, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F10
	 { -53, 70, -30, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F20
	 { 36, 70, -30, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F30
	 { -53, 70, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F40
	 { 36, 70, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F50
	 { -53, 70, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F60
	 { 36, 70, 60, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006F70
};

Gfx _tokinoma_room_0_dlist_00006F80[] =
{
	gsDPPipeSync(), // 0x00006F80
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006F88
	gsSPVertex(_tokinoma_room_0_vertices_00006F00, 8, 0), // 0x00006F90
	gsSPCullDisplayList(0, 7), // 0x00006F98
	gsDPPipeSync(), // 0x00006FA0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006FA8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006FB0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006FB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_00010FA0), // 0x00006FC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006FC8
	gsDPLoadSync(), // 0x00006FD0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006FD8
	gsDPPipeSync(), // 0x00006FE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006FE8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006FF0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000141D8), // 0x00006FF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00007000
	gsDPLoadSync(), // 0x00007008
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00007010
	gsDPPipeSync(), // 0x00007018
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 1, 5, 0, 0, 5, 0), // 0x00007020
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00007028
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007030
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007038
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007040
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007048
	gsSPDisplayList(0x0A000000), // 0x00007050
	gsSPVertex(_tokinoma_room_0_vertices_00006E50, 11, 0), // 0x00007058
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00007060
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x00007068
	gsSP1Triangle(7, 9, 10, 0), // 0x00007070
	gsSPEndDisplayList(), // 0x00007078
};

Vtx_t _tokinoma_room_0_vertices_00007080[6] = 
{
	 { 51, 70, -30, 0, 3500, 990, 255, 255, 255, 255 }, // 0x00007080
	 { 35, 70, -21, 0, 2953, 684, 255, 255, 255, 255 }, // 0x00007090
	 { 34, 70, 0, 0, 2324, 1006, 255, 255, 255, 255 }, // 0x000070A0
	 { 51, 70, -30, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000070B0
	 { 36, 70, -30, 0, 530, 1024, 255, 255, 255, 255 }, // 0x000070C0
	 { 35, 70, -21, 0, 550, 706, 255, 255, 255, 255 }, // 0x000070D0
};

Vtx_t _tokinoma_room_0_vertices_000070E0[8] = 
{
	 { 40, 70, -37, 0, 0, 0, 0, 0, 0, 0 }, // 0x000070E0
	 { 51, 70, -30, 0, 0, 0, 0, 0, 0, 0 }, // 0x000070F0
	 { 40, 70, -37, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007100
	 { 51, 70, -30, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007110
	 { 22, 70, -7, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007120
	 { 34, 70, 0, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007130
	 { 22, 70, -7, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007140
	 { 34, 70, 0, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007150
};

Gfx _tokinoma_room_0_dlist_00007160[] =
{
	gsDPPipeSync(), // 0x00007160
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007168
	gsSPVertex(_tokinoma_room_0_vertices_000070E0, 8, 0), // 0x00007170
	gsSPCullDisplayList(0, 7), // 0x00007178
	gsDPPipeSync(), // 0x00007180
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007188
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007190
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007198
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_00010FA0), // 0x000071A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000071A8
	gsDPLoadSync(), // 0x000071B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000071B8
	gsDPPipeSync(), // 0x000071C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000071C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000071D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000141D8), // 0x000071D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 1, 5, 0, 0, 5, 0), // 0x000071E0
	gsDPLoadSync(), // 0x000071E8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000071F0
	gsDPPipeSync(), // 0x000071F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 1, 5, 0, 0, 5, 0), // 0x00007200
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00007208
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007210
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007218
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007220
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007228
	gsSPDisplayList(0x0B000000), // 0x00007230
	gsSPVertex(_tokinoma_room_0_vertices_00007080, 6, 0), // 0x00007238
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00007240
	gsSPEndDisplayList(), // 0x00007248
};

Vtx_t _tokinoma_room_0_vertices_00007250[4] = 
{
	 { -142, 0, 245, 0, -484, -5061, 255, 255, 255, 255 }, // 0x00007250
	 { -144, 0, 286, 0, -517, -4535, 255, 255, 255, 255 }, // 0x00007260
	 { -13, 0, 319, 0, 1163, -4114, 255, 255, 255, 255 }, // 0x00007270
	 { -71, 0, 384, 0, 428, -3275, 255, 255, 255, 255 }, // 0x00007280
};

Vtx_t _tokinoma_room_0_vertices_00007290[8] = 
{
	 { -142, 0, 245, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007290
	 { -13, 0, 319, 0, 0, 0, 0, 0, 0, 0 }, // 0x000072A0
	 { -142, 0, 245, 0, 0, 0, 0, 0, 0, 0 }, // 0x000072B0
	 { -13, 0, 319, 0, 0, 0, 0, 0, 0, 0 }, // 0x000072C0
	 { -184, 0, 319, 0, 0, 0, 0, 0, 0, 0 }, // 0x000072D0
	 { -56, 0, 393, 0, 0, 0, 0, 0, 0, 0 }, // 0x000072E0
	 { -184, 0, 319, 0, 0, 0, 0, 0, 0, 0 }, // 0x000072F0
	 { -56, 0, 393, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007300
};

Gfx _tokinoma_room_0_dlist_00007310[] =
{
	gsDPPipeSync(), // 0x00007310
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007318
	gsSPVertex(_tokinoma_room_0_vertices_00007290, 8, 0), // 0x00007320
	gsSPCullDisplayList(0, 7), // 0x00007328
	gsDPPipeSync(), // 0x00007330
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007338
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007340
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007348
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000FFA0), // 0x00007350
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007358
	gsDPLoadSync(), // 0x00007360
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00007368
	gsDPPipeSync(), // 0x00007370
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007378
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007380
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000159D8), // 0x00007388
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007390
	gsDPLoadSync(), // 0x00007398
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000073A0
	gsDPPipeSync(), // 0x000073A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 0, 0, 5, 0), // 0x000073B0
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x000073B8
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000073C0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000073C8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000073D0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000073D8
	gsSPDisplayList(0x0C000000), // 0x000073E0
	gsSPVertex(_tokinoma_room_0_vertices_00007250, 4, 0), // 0x000073E8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000073F0
	gsSPEndDisplayList(), // 0x000073F8
};

Vtx_t _tokinoma_room_0_vertices_00007400[19] = 
{
	 { -283, 0, -163, 0, -2298, -10278, 76, 76, 76, 255 }, // 0x00007400
	 { -720, 0, -298, 0, -7888, -12012, 76, 76, 76, 255 }, // 0x00007410
	 { -720, 0, 298, 0, -7888, -4376, 76, 76, 76, 255 }, // 0x00007420
	 { -283, 0, 163, 0, -2292, -6102, 76, 76, 76, 255 }, // 0x00007430
	 { -144, 0, 286, 0, -517, -4535, 76, 76, 76, 255 }, // 0x00007440
	 { -142, 0, 245, 0, -484, -5061, 76, 76, 76, 255 }, // 0x00007450
	 { -71, 0, 384, 0, 428, -3275, 76, 76, 76, 255 }, // 0x00007460
	 { -298, 0, 720, 0, -2488, 1024, 76, 76, 76, 255 }, // 0x00007470
	 { 298, 0, 720, 0, 5149, 1024, 76, 76, 76, 255 }, // 0x00007480
	 { 720, 0, 298, 0, 10549, -4376, 76, 76, 76, 255 }, // 0x00007490
	 { 16, 0, 286, 0, 1531, -4535, 76, 76, 76, 255 }, // 0x000074A0
	 { 720, 0, -298, 0, 10549, -12013, 76, 76, 76, 255 }, // 0x000074B0
	 { 282, 0, -164, 0, 4934, -10288, 76, 76, 76, 255 }, // 0x000074C0
	 { 282, 0, 163, 0, 4940, -6112, 76, 76, 76, 255 }, // 0x000074D0
	 { 68, 0, 287, 0, 2196, -4523, 76, 76, 76, 255 }, // 0x000074E0
	 { 298, 0, -720, 0, 5149, -17413, 76, 76, 76, 255 }, // 0x000074F0
	 { -298, 0, -720, 0, -2488, -17412, 76, 76, 76, 255 }, // 0x00007500
	 { -1, 0, -326, 0, 1315, -12370, 76, 76, 76, 255 }, // 0x00007510
	 { 282, 0, -164, 0, 4934, -10288, 76, 76, 76, 255 }, // 0x00007520
};

Vtx_t _tokinoma_room_0_vertices_00007530[8] = 
{
	 { -720, 0, -720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007530
	 { 720, 0, -720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007540
	 { -720, 0, -720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007550
	 { 720, 0, -720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007560
	 { -720, 0, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007570
	 { 720, 0, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007580
	 { -720, 0, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007590
	 { 720, 0, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x000075A0
};

Gfx _tokinoma_room_0_dlist_000075B0[] =
{
	gsDPPipeSync(), // 0x000075B0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000075B8
	gsSPVertex(_tokinoma_room_0_vertices_00007530, 8, 0), // 0x000075C0
	gsSPCullDisplayList(0, 7), // 0x000075C8
	gsDPPipeSync(), // 0x000075D0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000075D8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000075E0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000075E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000FFA0), // 0x000075F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000075F8
	gsDPLoadSync(), // 0x00007600
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00007608
	gsDPPipeSync(), // 0x00007610
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00007618
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007620
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000159D8), // 0x00007628
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00007630
	gsDPLoadSync(), // 0x00007638
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00007640
	gsDPPipeSync(), // 0x00007648
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 0, 5, 0, 0, 5, 0), // 0x00007650
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00007658
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007660
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00007668
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007670
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007678
	gsSPDisplayList(0x0A000000), // 0x00007680
	gsSPVertex(_tokinoma_room_0_vertices_00007400, 19, 0), // 0x00007688
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007690
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00007698
	gsSP2Triangles(6, 4, 2, 0, 6, 2, 7, 0), // 0x000076A0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 6, 0), // 0x000076A8
	gsSP2Triangles(7, 8, 6, 0, 11, 12, 13, 0), // 0x000076B0
	gsSP2Triangles(11, 13, 9, 0, 14, 9, 13, 0), // 0x000076B8
	gsSP2Triangles(11, 15, 16, 0, 11, 16, 17, 0), // 0x000076C0
	gsSP2Triangles(11, 17, 18, 0, 16, 1, 0, 0), // 0x000076C8
	gsSP1Triangle(16, 0, 17, 0), // 0x000076D0
	gsSPEndDisplayList(), // 0x000076D8
};

Vtx_t _tokinoma_room_0_vertices_000076E0[4] = 
{
	 { 190, 40, -62, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x000076E0
	 { 226, 40, -83, 0, 2048, 0, 255, 255, 255, 255 }, // 0x000076F0
	 { 184, 40, -156, 0, 0, 0, 255, 255, 255, 255 }, // 0x00007700
	 { 148, 40, -135, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00007710
};

Vtx_t _tokinoma_room_0_vertices_00007720[4] = 
{
	 { 154, 40, -41, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00007720
	 { 190, 40, -62, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00007730
	 { 148, 40, -135, 0, 0, 0, 255, 255, 255, 255 }, // 0x00007740
	 { 112, 40, -114, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00007750
};

Vtx_t _tokinoma_room_0_vertices_00007760[4] = 
{
	 { 154, 40, 42, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00007760
	 { 112, 40, 115, 0, 0, 0, 255, 255, 255, 255 }, // 0x00007770
	 { 149, 40, 136, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00007780
	 { 191, 40, 63, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00007790
};

Vtx_t _tokinoma_room_0_vertices_000077A0[4] = 
{
	 { 149, 40, 136, 0, 0, 0, 255, 255, 255, 255 }, // 0x000077A0
	 { 185, 40, 157, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000077B0
	 { 227, 40, 84, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x000077C0
	 { 191, 40, 63, 0, 2048, 0, 255, 255, 255, 255 }, // 0x000077D0
};

Vtx_t _tokinoma_room_0_vertices_000077E0[4] = 
{
	 { -186, 40, 156, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x000077E0
	 { -149, 40, 135, 0, 2048, 0, 255, 255, 255, 255 }, // 0x000077F0
	 { -191, 40, 62, 0, 0, 0, 255, 255, 255, 255 }, // 0x00007800
	 { -228, 40, 83, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00007810
};

Vtx_t _tokinoma_room_0_vertices_00007820[5] = 
{
	 { -149, 40, 135, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00007820
	 { -134, 40, 126, 0, 2048, 603, 255, 255, 255, 255 }, // 0x00007830
	 { -131, 40, 81, 0, 1143, 0, 255, 255, 255, 255 }, // 0x00007840
	 { -155, 40, 41, 0, 0, 0, 255, 255, 255, 255 }, // 0x00007850
	 { -191, 40, 62, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00007860
};

Vtx_t _tokinoma_room_0_vertices_00007870[4] = 
{
	 { -149, 40, -132, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00007870
	 { -185, 40, -153, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00007880
	 { -227, 40, -80, 0, 0, 0, 255, 255, 255, 255 }, // 0x00007890
	 { -191, 40, -60, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000078A0
};

Vtx_t _tokinoma_room_0_vertices_000078B0[4] = 
{
	 { -113, 40, -111, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x000078B0
	 { -149, 40, -132, 0, 2048, 0, 255, 255, 255, 255 }, // 0x000078C0
	 { -191, 40, -60, 0, 0, 0, 255, 255, 255, 255 }, // 0x000078D0
	 { -155, 40, -39, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000078E0
};

Vtx_t _tokinoma_room_0_vertices_000078F0[4] = 
{
	 { 41, 40, -154, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x000078F0
	 { 41, 40, -196, 0, 2034, 0, 255, 255, 255, 255 }, // 0x00007900
	 { -43, 40, -196, 0, -13, 28, 255, 255, 255, 255 }, // 0x00007910
	 { -43, 40, -154, 0, 0, 1052, 255, 255, 255, 255 }, // 0x00007920
};

Vtx_t _tokinoma_room_0_vertices_00007930[4] = 
{
	 { 41, 40, -196, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00007930
	 { 41, 40, -238, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00007940
	 { -43, 40, -238, 0, 0, 0, 255, 255, 255, 255 }, // 0x00007950
	 { -43, 40, -196, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00007960
};

Vtx_t _tokinoma_room_0_vertices_00007970[4] = 
{
	 { 41, 40, 209, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00007970
	 { 41, 40, 167, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00007980
	 { 23, 40, 167, 0, 1619, 0, 255, 255, 255, 255 }, // 0x00007990
	 { 20, 40, 209, 0, 1553, 1024, 255, 255, 255, 255 }, // 0x000079A0
};

Vtx_t _tokinoma_room_0_vertices_000079B0[4] = 
{
	 { 41, 40, 251, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x000079B0
	 { 41, 40, 209, 0, 2048, 0, 255, 255, 255, 255 }, // 0x000079C0
	 { 20, 40, 209, 0, 1553, 0, 255, 255, 255, 255 }, // 0x000079D0
	 { 18, 40, 251, 0, 1488, 1024, 255, 255, 255, 255 }, // 0x000079E0
};

Vtx_t _tokinoma_room_0_vertices_000079F0[8] = 
{
	 { -92, 40, -315, 0, 0, 0, 0, 0, 0, 0 }, // 0x000079F0
	 { 320, 40, -77, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007A00
	 { -92, 40, -315, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007A10
	 { 320, 40, -77, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007A20
	 { -319, 40, 78, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007A30
	 { 93, 40, 316, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007A40
	 { -319, 40, 78, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007A50
	 { 93, 40, 316, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007A60
};

Gfx _tokinoma_room_0_dlist_00007A70[] =
{
	gsDPPipeSync(), // 0x00007A70
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007A78
	gsSPVertex(_tokinoma_room_0_vertices_000079F0, 8, 0), // 0x00007A80
	gsSPCullDisplayList(0, 7), // 0x00007A88
	gsDPPipeSync(), // 0x00007A90
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007A98
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00007AA0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00007AA8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000131D8), // 0x00007AB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00007AB8
	gsDPLoadSync(), // 0x00007AC0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007AC8
	gsDPPipeSync(), // 0x00007AD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00007AD8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007AE0
	gsDPSetCombineLERP(TEXEL0, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00007AE8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104DD8), // 0x00007AF0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007AF8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007B00
	gsSPDisplayList(0x09000000), // 0x00007B08
	gsSPVertex(_tokinoma_room_0_vertices_000076E0, 4, 0), // 0x00007B10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007B18
	gsDPPipeSync(), // 0x00007B20
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000121D8), // 0x00007B28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00007B30
	gsDPLoadSync(), // 0x00007B38
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007B40
	gsDPPipeSync(), // 0x00007B48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00007B50
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007B58
	gsSPVertex(_tokinoma_room_0_vertices_00007720, 4, 0), // 0x00007B60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007B68
	gsDPPipeSync(), // 0x00007B70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000111D8), // 0x00007B78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00007B80
	gsDPLoadSync(), // 0x00007B88
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007B90
	gsDPPipeSync(), // 0x00007B98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00007BA0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007BA8
	gsSPVertex(_tokinoma_room_0_vertices_00007760, 4, 0), // 0x00007BB0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007BB8
	gsDPPipeSync(), // 0x00007BC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000101D8), // 0x00007BC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00007BD0
	gsDPLoadSync(), // 0x00007BD8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007BE0
	gsDPPipeSync(), // 0x00007BE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00007BF0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007BF8
	gsSPVertex(_tokinoma_room_0_vertices_000077A0, 4, 0), // 0x00007C00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007C08
	gsDPPipeSync(), // 0x00007C10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_0000F1D8), // 0x00007C18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00007C20
	gsDPLoadSync(), // 0x00007C28
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007C30
	gsDPPipeSync(), // 0x00007C38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00007C40
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007C48
	gsSPVertex(_tokinoma_room_0_vertices_000077E0, 4, 0), // 0x00007C50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007C58
	gsDPPipeSync(), // 0x00007C60
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_0000E1D8), // 0x00007C68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00007C70
	gsDPLoadSync(), // 0x00007C78
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007C80
	gsDPPipeSync(), // 0x00007C88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00007C90
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007C98
	gsSPVertex(_tokinoma_room_0_vertices_00007820, 5, 0), // 0x00007CA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007CA8
	gsSP1Triangle(0, 3, 4, 0), // 0x00007CB0
	gsDPPipeSync(), // 0x00007CB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_0000D1D8), // 0x00007CC0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00007CC8
	gsDPLoadSync(), // 0x00007CD0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007CD8
	gsDPPipeSync(), // 0x00007CE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00007CE8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007CF0
	gsSPVertex(_tokinoma_room_0_vertices_00007870, 4, 0), // 0x00007CF8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007D00
	gsDPPipeSync(), // 0x00007D08
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_0000C1D8), // 0x00007D10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00007D18
	gsDPLoadSync(), // 0x00007D20
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007D28
	gsDPPipeSync(), // 0x00007D30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00007D38
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007D40
	gsSPVertex(_tokinoma_room_0_vertices_000078B0, 4, 0), // 0x00007D48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007D50
	gsDPPipeSync(), // 0x00007D58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_0000B1D8), // 0x00007D60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00007D68
	gsDPLoadSync(), // 0x00007D70
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007D78
	gsDPPipeSync(), // 0x00007D80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00007D88
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007D90
	gsSPVertex(_tokinoma_room_0_vertices_000078F0, 4, 0), // 0x00007D98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007DA0
	gsDPPipeSync(), // 0x00007DA8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_0000A1D8), // 0x00007DB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00007DB8
	gsDPLoadSync(), // 0x00007DC0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007DC8
	gsDPPipeSync(), // 0x00007DD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00007DD8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007DE0
	gsSPVertex(_tokinoma_room_0_vertices_00007930, 4, 0), // 0x00007DE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007DF0
	gsDPPipeSync(), // 0x00007DF8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000091D8), // 0x00007E00
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00007E08
	gsDPLoadSync(), // 0x00007E10
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007E18
	gsDPPipeSync(), // 0x00007E20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00007E28
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007E30
	gsSPVertex(_tokinoma_room_0_vertices_00007970, 4, 0), // 0x00007E38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007E40
	gsDPPipeSync(), // 0x00007E48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000081D8), // 0x00007E50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00007E58
	gsDPLoadSync(), // 0x00007E60
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00007E68
	gsDPPipeSync(), // 0x00007E70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00007E78
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00007E80
	gsSPVertex(_tokinoma_room_0_vertices_000079B0, 4, 0), // 0x00007E88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007E90
	gsSPEndDisplayList(), // 0x00007E98
};

Vtx_t _tokinoma_room_0_vertices_00007EA0[3] = 
{
	 { -134, 40, 126, 0, 2048, 603, 255, 255, 255, 255 }, // 0x00007EA0
	 { -113, 40, 113, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00007EB0
	 { -131, 40, 81, 0, 1143, 0, 255, 255, 255, 255 }, // 0x00007EC0
};

Vtx_t _tokinoma_room_0_vertices_00007ED0[4] = 
{
	 { 23, 40, 167, 0, 1619, 0, 255, 255, 255, 255 }, // 0x00007ED0
	 { -43, 40, 168, 0, 0, 0, 255, 255, 255, 255 }, // 0x00007EE0
	 { -43, 40, 210, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00007EF0
	 { 20, 40, 209, 0, 1553, 1024, 255, 255, 255, 255 }, // 0x00007F00
};

Vtx_t _tokinoma_room_0_vertices_00007F10[4] = 
{
	 { 20, 40, 209, 0, 1553, 0, 255, 255, 255, 255 }, // 0x00007F10
	 { -43, 40, 210, 0, 0, 0, 255, 255, 255, 255 }, // 0x00007F20
	 { -43, 40, 252, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00007F30
	 { 18, 40, 251, 0, 1488, 1024, 255, 255, 255, 255 }, // 0x00007F40
};

Vtx_t _tokinoma_room_0_vertices_00007F50[8] = 
{
	 { -130, 40, 79, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F50
	 { 56, 40, 186, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F60
	 { -130, 40, 79, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F70
	 { 56, 40, 186, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F80
	 { -183, 40, 171, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007F90
	 { 3, 40, 278, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FA0
	 { -183, 40, 171, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FB0
	 { 3, 40, 278, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007FC0
};

Gfx _tokinoma_room_0_dlist_00007FD0[] =
{
	gsDPPipeSync(), // 0x00007FD0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007FD8
	gsSPVertex(_tokinoma_room_0_vertices_00007F50, 8, 0), // 0x00007FE0
	gsSPCullDisplayList(0, 7), // 0x00007FE8
	gsDPPipeSync(), // 0x00007FF0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00007FF8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008000
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008008
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_0000E1D8), // 0x00008010
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00008018
	gsDPLoadSync(), // 0x00008020
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00008028
	gsDPPipeSync(), // 0x00008030
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00008038
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00008040
	gsDPSetCombineLERP(TEXEL0, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00008048
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104DD8), // 0x00008050
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00008058
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00008060
	gsSPDisplayList(0x08000000), // 0x00008068
	gsSPVertex(_tokinoma_room_0_vertices_00007EA0, 3, 0), // 0x00008070
	gsSP1Triangle(0, 1, 2, 0), // 0x00008078
	gsDPPipeSync(), // 0x00008080
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000091D8), // 0x00008088
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00008090
	gsDPLoadSync(), // 0x00008098
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000080A0
	gsDPPipeSync(), // 0x000080A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x000080B0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000080B8
	gsSPVertex(_tokinoma_room_0_vertices_00007ED0, 4, 0), // 0x000080C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000080C8
	gsDPPipeSync(), // 0x000080D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_0_tex_000081D8), // 0x000080D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x000080E0
	gsDPLoadSync(), // 0x000080E8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000080F0
	gsDPPipeSync(), // 0x000080F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00008100
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00008108
	gsSPVertex(_tokinoma_room_0_vertices_00007F10, 4, 0), // 0x00008110
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008118
	gsSPEndDisplayList(), // 0x00008120
};

Gfx _tokinoma_room_0_dlist_00008128[] =
{
	gsSPDisplayList(_tokinoma_room_0_dlist_00000910), // 0x00008128
	gsSPDisplayList(_tokinoma_room_0_dlist_000010F0), // 0x00008130
	gsSPDisplayList(_tokinoma_room_0_dlist_00001818), // 0x00008138
	gsSPDisplayList(_tokinoma_room_0_dlist_00001E68), // 0x00008140
	gsSPDisplayList(_tokinoma_room_0_dlist_000024B8), // 0x00008148
	gsSPDisplayList(_tokinoma_room_0_dlist_00002AF8), // 0x00008150
	gsSPDisplayList(_tokinoma_room_0_dlist_00003668), // 0x00008158
	gsSPDisplayList(_tokinoma_room_0_dlist_00003988), // 0x00008160
	gsSPDisplayList(_tokinoma_room_0_dlist_00004228), // 0x00008168
	gsSPDisplayList(_tokinoma_room_0_dlist_00004848), // 0x00008170
	gsSPDisplayList(_tokinoma_room_0_dlist_00004B58), // 0x00008178
	gsSPDisplayList(_tokinoma_room_0_dlist_00005D68), // 0x00008180
	gsSPDisplayList(_tokinoma_room_0_dlist_00006748), // 0x00008188
	gsSPDisplayList(_tokinoma_room_0_dlist_00006AF8), // 0x00008190
	gsSPDisplayList(_tokinoma_room_0_dlist_00006D50), // 0x00008198
	gsSPDisplayList(_tokinoma_room_0_dlist_00006F80), // 0x000081A0
	gsSPDisplayList(_tokinoma_room_0_dlist_00007160), // 0x000081A8
	gsSPDisplayList(_tokinoma_room_0_dlist_00007310), // 0x000081B0
	gsSPDisplayList(_tokinoma_room_0_dlist_000075B0), // 0x000081B8
	gsSPDisplayList(_tokinoma_room_0_dlist_00007A70), // 0x000081C0
	gsSPDisplayList(_tokinoma_room_0_dlist_00007FD0), // 0x000081C8
	gsSPEndDisplayList(), // 0x000081D0
};

u64 _tokinoma_room_0_tex_000081D8[] = 
{
	0x00001907298B39CF, 0x52D5739D94A5A529, 0x94A58C6394E5A529, 0x8C638CA3B5EDCEB3,  // 0x000081D8 
	0xC671B5ED9D279D27, 0xAD6B421131CD3A0F, 0x425152D5739D8CA3, 0xAD6BBDEFCEB3CEB3,  // 0x000081F8 
	0xD6B5DEF7DEF7DEF7, 0xD6B5C631A569A529, 0x7BDF73DD63599CE7, 0x94A594A594A58CA3,  // 0x00008218 
	0x94E5A569ADABADAB, 0xBDEFC631BDEFADAB, 0xB5ADCE73C631AD6B, 0x73DD84616B5B73DD,  // 0x00008238 
	0x00001907298B31CD, 0x5B1763596B9B8461, 0x8CA37C1F8C6394A5, 0x8C638C63A569BE2F,  // 0x00008258 
	0xC631B5ADA56994E5, 0x8CA38421318D3A0F, 0x42514A5352956319, 0x8421A569C631C671,  // 0x00008278 
	0xBE2FCE73C671C671, 0xC671B5AD842173DD, 0x6B9B6B9B94A5AD6B, 0x9CE79CE7A529AD6B,  // 0x00008298 
	0xA5699CE7AD6B9CE7, 0x9D27B5ADADABB5ED, 0xBE2FC671CE73B5ED, 0x7C1F846152D50000,  // 0x000082B8 
	0x000019072149298B, 0x52D573DD6B5B6B5B, 0x84217BDF7C1F8461, 0x846194A5ADABADAB,  // 0x000082D8 
	0xBE2FC671CEB3BE2F, 0x94E58C633A0F31CD, 0x3A0F4251529552D5, 0x5AD77C1FA529BDEF,  // 0x000082F8 
	0xB5EDADABA5299D27, 0xADABA5697BDF6359, 0x63596B5BAD6B9D27, 0x9D27C631CE73BDEF,  // 0x00008318 
	0xBE2FCE73BDEF94E5, 0x8CA3A569B5EDB5ED, 0xB5EDADABC671AD6B, 0x84616B9B63190000,  // 0x00008338 
	0x000021092149298B, 0x52D5739D73DD73DD, 0x84218C6384618461, 0x7BDF94E5A569B5ED,  // 0x00008358 
	0xC631D6B5D6F5D6F5, 0xC671B5AD94E5318D, 0x31CD421152D56359, 0x6B5B6B5B84219CE7,  // 0x00008378 
	0xA569A5699CE78CA3, 0x9D279CE7739D6359, 0x5B17BE2F8461AD6B, 0xA529A569ADABC631,  // 0x00008398 
	0xC631BE2FBE2FB5ED, 0x9D27A569ADABADAB, 0xAD6BAD6BA5699D27, 0x7BDF631973DD0000,  // 0x000083B8 
	0x000021092149294B, 0x5AD77C1F846173DD, 0x73DD8CA394A552D5, 0x6B9B7BDFBDEFDEF7,  // 0x000083D8 
	0xE739E739E779E779, 0xDEF7C631ADAB52D5, 0x318D39CF3A0F5B17, 0x6B5B73DD7C1F8CA3,  // 0x000083F8 
	0x9CE7AD6BAD6B8C63, 0x8421739D5B174A93, 0x84219D278CA3AD6B, 0x9D27AD6BB5EDCEB3,  // 0x00008418 
	0xD6F5D6F5C631BDEF, 0xAD6BB5ADB5ADB5AD, 0xB5ADB5EDA5698CA3, 0x7BDF5B1784610000,  // 0x00008438 
	0x000021092149298B, 0x42516B5B84618CA3, 0x8461846142514251, 0x5AD77C1FBE2FDF37,  // 0x00008458 
	0xDF37E739E779E779, 0xDEF7CE73B5ADA529, 0x421131CD3A0F4211, 0x4A936B5B8461A529,  // 0x00008478 
	0x9CE79D279CE78421, 0x6B5B52D552D552D5, 0xB5ED52D58CA38CA3, 0x9CE79CE7B5EDCEB3,  // 0x00008498 
	0xDF37DEF7C671ADAB, 0xA569A569B5ADC631, 0xBE2FB5ADADAB94E5, 0x635963595B170000,  // 0x000084B8 
	0x0000190721492149, 0x318D63198CA394E5, 0x8CA37BDF298B4A53, 0x5AD77BDFBDEFC671,  // 0x000084D8 
	0xD6B5D6B5DEF7E739, 0xE739CEB3A5699CE7, 0x8CA3298B31CD3A0F, 0x425152D57BDFA569,  // 0x000084F8 
	0xB5ADA56994E58421, 0x63594A9339CF9D27, 0x63594A937C1F8421, 0x94A58461A569CEB3,  // 0x00008518 
	0xDF37CEB3BE2FB5AD, 0xADAB9CE7AD6BBE2F, 0xC671B5ADAD6B73DD, 0x4251425152D50000,  // 0x00008538 
	0x000000002109294B, 0x298B52D5A529A569, 0xAD6B739D294B4211, 0x5B176359A569B5ED,  // 0x00008558 
	0xC671CEB3C631C631, 0xCEB3B5EDA5698CA3, 0xADAB5295298B31CD, 0x3A0F4A936B9B8461,  // 0x00008578 
	0x9D279CE79D27739D, 0x5AD75B175AD7A569, 0x4A934A9363598461, 0x94E58CA39D27B5ED,  // 0x00008598 
	0xCEB3C671B5EDB5ED, 0xB5ED9D27A569B5AD, 0xC671BDEF9CE76359, 0x52955AD700000000,  // 0x000085B8 
	0x0000000019072149, 0x294B3A0F8461B5ED, 0xB5AD73DD214939CF, 0x5AD7739D9CE7B5ED,  // 0x000085D8 
	0xCE73CEB3C671AD6B, 0x9D2784617BDF7C1F, 0xAD6B8CA3318D318D, 0x39CF42115AD77C1F,  // 0x000085F8 
	0x94A59D2773DD6319, 0x6B9B635973DD9CE7, 0x3A0F4A934A936319, 0x84219CE7B5ADADAB,  // 0x00008618 
	0xAD6BADAB9D27ADAB, 0xB5ADA529A569A569, 0xC631BE2F84614A93, 0x5B176B9B00000000,  // 0x00008638 
	0x0000000021092109, 0x298B31CD73DDB5ED, 0xBE2F7BDF2149318D, 0x4A9373DD846194E5,  // 0x00008658 
	0x9D27A5699D27A569, 0x9CE784216B5B8CA3, 0xAD6BADAB5295318D, 0x39CF3A0F4A536B5B,  // 0x00008678 
	0x7C1F7C1F63196B5B, 0x63596B9BADABADAB, 0x4A93425152954A93, 0x529573DD8CA39CE7,  // 0x00008698 
	0x9D2794E58CA3A529, 0xA5299D27AD6BB5ED, 0xBDEFA5696B5B6359, 0x5B176B9B00000000,  // 0x000086B8 
	0x0000000021492109, 0x2149298B42518CA3, 0xA56994A52149298B, 0x31CD4A536319739D,  // 0x000086D8 
	0x5AD75B177BDF94A5, 0x9CE794E594A58CA3, 0xADABA52984213A0F, 0x318D3A0F42514A93,  // 0x000086F8 
	0x63196B5B7BDF6B9B, 0x52D5ADABA5699D27, 0x52D53A0F42514A93, 0x4A534A9352955B17,  // 0x00008718 
	0x6B9B6B9B846194E5, 0x8CA36B9BB5ADB5ED, 0xA569846163194A93, 0x5AD773DD00000000,  // 0x00008738 
	0x0000000000002149, 0x2149298B31CD5B17, 0x94A5AD6B318D294B, 0x318D3A0F42515B17,  // 0x00008758 
	0x5B1763196B9B7BDF, 0x7C1F8CA394E58421, 0x94A59D279D276B9B, 0x298B39CF42514A93,  // 0x00008778 
	0x52D55B17739D6B5B, 0x63197BDF84218461, 0x6B5B3A0F42114251, 0x4A534A9352D54A53,  // 0x00008798 
	0x52956B9B84618461, 0x63594A539CE794A5, 0x8C6352D531CD4251, 0x4A93000000000000,  // 0x000087B8 
	0x0000000000002109, 0x21492109318D4251, 0x94A5B5AD7C1F2149, 0x298B318D3A0F4251,  // 0x000087D8 
	0x5B175B175B174251, 0x5295635963598C63, 0x8CA3B5EDBDEFB5AD, 0x4A93298B42116B5B,  // 0x000087F8 
	0x73DD6B9B6B9B6B5B, 0xAD6B84617C1F8461, 0x94A53A0F39CF3A0F, 0x42513A0F39CF39CF,  // 0x00008818 
	0x3A0F4A535AD74A93, 0x294B7BDF7C1F6B9B, 0x52D539CF298B31CD, 0x52D5000000000000,  // 0x00008838 
	0x0000000000000000, 0x294B2109294B31CD, 0x63199CE7A5695295, 0x2149298B31CD39CF,  // 0x00008858 
	0x39CF31CD3A0F4A53, 0x42514A53AD6B9D27, 0x8CA3B5ADC671CE73, 0xADAB318D3A0F4A53,  // 0x00008878 
	0x6B9B7BDF5B17A569, 0xCEB3B5ED9D2794E5, 0x94E58C63318D318D, 0x31CD39CF3A0F3A0F,  // 0x00008898 
	0x3A0F31CD298B2149, 0x4A9394A58CA3739D, 0x425121493A0F5295, 0x0000000000000000,  // 0x000088B8 
	0x0000000000000000, 0x2109298B2109298B, 0x425173DD9CE79D27, 0x6319294B294B31CD,  // 0x000088D8 
	0x39CF31CD318D318D, 0x42119D27A569A569, 0x8CA394E5B5ADC631, 0xC6316B5B294B39CF,  // 0x000088F8 
	0x421142516B9BC671, 0xCE73CE73BE2FAD6B, 0xAD6BA56994A53A0F, 0x298B318D318D318D,  // 0x00008918 
	0x298B294B21496359, 0x9CE7846173DD5B17, 0x21493A0F52D55AD7, 0x0000000000000000,  // 0x00008938 
	0x0000000000000000, 0x0000214921492149, 0x31CD5B178CA394A5, 0x94A58CA35295298B,  // 0x00008958 
	0x298B294B31CD739D, 0xAD6BAD6BA5299D27, 0x84217C1F94A59D27, 0xB5EDA5694251294B,  // 0x00008978 
	0x294B5B17BE2FB5ED, 0xB5ADB5EDB5EDBDEF, 0xB5EDAD6BA569A569, 0x7BDF4A5321492149,  // 0x00008998 
	0x42515AD794A5ADAB, 0x94E56B9B52D5298B, 0x318D52D54A930000, 0x0000000000000000,  // 0x000089B8 
	0x0000000000000000, 0x00001907294B2149, 0x21493A0F6B9B94A5, 0x9CE7A529A52994E5,  // 0x000089D8 
	0x9CE7A569A5699D27, 0xA5699D279CE78CA3, 0x8CA373DD84218CA3, 0xA569A56994A539CF,  // 0x000089F8 
	0x4A93ADABA569A569, 0xAD6BB5EDB5ADADAB, 0xB5EDBE2FB5EDADAB, 0xC631BE2FA5299CE7,  // 0x00008A18 
	0xADABC631C671BDEF, 0x9CE77C1F4A53298B, 0x4211318D298B0000, 0x0000000000000000,  // 0x00008A38 
	0x0000000000000000, 0x000000002149298B, 0x2149298B4A536B5B, 0x7BDF842194E59CE7,  // 0x00008A58 
	0x9D27A569AD6BADAB, 0xA569A569A569A529, 0x9CE794A57C1F8461, 0x94E5A529A5698461,  // 0x00008A78 
	0x94E5ADABAD6BB5ED, 0xB5ADB5EDBE2FBE2F, 0xADABB5ADADABA569, 0xB5ADB5EDADAB9D27,  // 0x00008A98 
	0xAD6BBDEFBE2FAD6B, 0x8CA34A9339CF4A93, 0x39CF210900000000, 0x0000000000000000,  // 0x00008AB8 
	0x0000000000000000, 0x0000000000002149, 0x294B2149318D4A53, 0x6B9B7BDF846194A5,  // 0x00008AD8 
	0x84218C639CE7AD6B, 0xB5ADB5EDB5ADB5AD, 0xA569A5299CE794E5, 0x94E5AD6BADAB9D27,  // 0x00008AF8 
	0x9D27A529A529B5ED, 0xBE2FADABBDEFB5ED, 0xADABAD6BA569A529, 0x9D27AD6BA569A569,  // 0x00008B18 
	0x9D279D27A5698C63, 0x6B5B5B174A93318D, 0x1907000000000000, 0x0000000000000000,  // 0x00008B38 
	0x0000000000000000, 0x0000000000002149, 0x21492149294B318D, 0x52956B9B6B9B7BDF,  // 0x00008B58 
	0x73DD73DD8CA3AD6B, 0xADABB5EDB5EDADAB, 0xAD6BA529AD6BADAB, 0xA529AD6BB5ADADAB,  // 0x00008B78 
	0xA52994E5A569ADAB, 0xB5ADA5299CE7A569, 0xB5ADAD6B94E594A5, 0x9D279CE794E58CA3,  // 0x00008B98 
	0x7C1F73DD6B5B6319, 0x5B1731CD21092109, 0x2109000000000000, 0x0000000000000000,  // 0x00008BB8 
	0x0000000000000000, 0x0000000000000000, 0x2149214921492149, 0x318D52D56B9B8421,  // 0x00008BD8 
	0x94E594E594A59CE7, 0x9D27BDEFB5EDADAB, 0xADAB94E594E5A569, 0xAD6B9CE7A569BDEF,  // 0x00008BF8 
	0xADABAD6BADABADAB, 0xADABADABA52994E5, 0xA569ADABADAB9D27, 0x94E594A584618C63,  // 0x00008C18 
	0x8C637C1F5B174A53, 0x294B214921492149, 0x0000000000000000, 0x0000000000000000,  // 0x00008C38 
	0x0000000000000000, 0x0000000000000000, 0x0000214921492149, 0x2149298B52D56B9B,  // 0x00008C58 
	0x9D27AD6B94E594A5, 0x94A594E5ADABADAB, 0xA569A52994A594E5, 0xA569A569A529B5AD,  // 0x00008C78 
	0xC671BE2FB5ADAD6B, 0x9D279D279D2794E5, 0x846184618CA394A5, 0x8CA3842184618421,  // 0x00008C98 
	0x739D5AD7298B2109, 0x298B294B21490000, 0x0000000000000000, 0x0000000000000000,  // 0x00008CB8 
	0x0000000000000000, 0x0000000000000000, 0x00000000294B2149, 0x21491907294B3A0F,  // 0x00008CD8 
	0x63198CA38CA38CA3, 0x94E58C6394E5A569, 0x9CE79CE79D278461, 0x94A59CE79D27A529,  // 0x00008CF8 
	0xB5EDB5EDADABA529, 0xAD6B94E58C638CA3, 0x8C6384217C1F8461, 0x94A594A584216359,  // 0x00008D18 
	0x31CD21492149298B, 0x298B214900000000, 0x0000000000000000, 0x0000000000000000,  // 0x00008D38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000002149, 0x298B214921092149,  // 0x00008D58 
	0x39CF52956B9B8421, 0x9D278CA384618421, 0x84617BDF8C637C1F, 0x7C1F8CA38CA38CA3,  // 0x00008D78 
	0xA529AD6BA569A569, 0xA529AD6B9D278CA3, 0x8CA394E58CA38461, 0x8CA373DD4A9331CD,  // 0x00008D98 
	0x294B214921492109, 0x2109000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00008DB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x2149294B21492109,  // 0x00008DD8 
	0x2149298B42116319, 0x7C1F73DD5B177BDF, 0x8C6373DD63196B9B, 0x73DD94E594E57C1F,  // 0x00008DF8 
	0x842194E59D27ADAB, 0xAD6BAD6BB5AD9D27, 0x8CA37C1F6B5B52D5, 0x4A9339CF298B2149,  // 0x00008E18 
	0x2109210919072149, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00008E38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x000000002149294B,  // 0x00008E58 
	0x21492149294B318D, 0x42515AD773DD8461, 0x7BDF7BDF6B5B6359, 0x6B9B7BDF94A57C1F,  // 0x00008E78 
	0x7C1F842184619D27, 0xADAB8CA384618CA3, 0x7C1F6B9B529531CD, 0x298B210919072109,  // 0x00008E98 
	0x2109210900000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00008EB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000002149,  // 0x00008ED8 
	0x2149214921492109, 0x294B318D39CF4251, 0x42114A534A935295, 0x4A9352D55AD76B9B,  // 0x00008EF8 
	0x63196B5B6B5B73DD, 0x842184216B9B6319, 0x52954251318D2149, 0x2149210921092149,  // 0x00008F18 
	0x2109000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00008F38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00008F58 
	0x0000214921492149, 0x21492149294B298B, 0x31CD39CF31CD31CD, 0x318D39CF39CF4251,  // 0x00008F78 
	0x4251425142514A53, 0x3A0F42114211298B, 0x2149210921092149, 0x2149190721090000,  // 0x00008F98 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00008FB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00008FD8 
	0x0000000000002149, 0x298B294B21492149, 0x294B294B298B298B, 0x294B21492149294B,  // 0x00008FF8 
	0x298B214921092109, 0x2149214921092149, 0x2109214921492109, 0x1907000000000000,  // 0x00009018 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00009038 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00009058 
	0x0000000000000000, 0x0000214921492149, 0x294B294B21492149, 0x2149214921492149,  // 0x00009078 
	0x2149214921492109, 0x2109214921092109, 0x2149210921490000, 0x0000000000000000,  // 0x00009098 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000090B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000090D8 
	0x0000000000000000, 0x0000000000000000, 0x000021492149294B, 0x214921492149294B,  // 0x000090F8 
	0x21492149298B294B, 0x294B294B21490000, 0x0000000000000000, 0x0000000000000000,  // 0x00009118 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00009138 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00009158 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00009178 
	0x318D000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00009198 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000091B8 
};

u64 _tokinoma_room_0_tex_000091D8[] = 
{
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000091D8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000091F8 
	0xAD6B000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00009218 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00009238 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00009258 
	0x0000000000000000, 0x0000000000000000, 0x0000A5299CE77C1F, 0x7C1F94E59CE7A529,  // 0x00009278 
	0xA529A529A52994E5, 0x9CE79D27A5699D27, 0x0000000000000000, 0x0000000000000000,  // 0x00009298 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000092B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000092D8 
	0x0000000000000000, 0x000000008CA38461, 0x94A594E58C638C63, 0x7C1F84618CA39CE7,  // 0x000092F8 
	0xA569AD6BA569AD6B, 0xB5ADBE2FC631C631, 0xC631B5EDAD6B0000, 0x0000000000000000,  // 0x00009318 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00009338 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00009358 
	0x0000000000008461, 0x94A58CA37C1F8CA3, 0x94A57C1F846194A5, 0x9D27B5EDBDEFC631,  // 0x00009378 
	0xBE2FC631CE73C671, 0xC631B5EDBE2FB5ED, 0xBE2FC671C671C671, 0xADAB000000000000,  // 0x00009398 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000093B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000093D8 
	0x00005B177C1F94E5, 0x94E58CA3846194E5, 0x9D278C639D27BE2F, 0xC671C631CE73CE73,  // 0x000093F8 
	0xCE73D6F5D6F5D6F5, 0xCEB3CEB3C671BE2F, 0xB5ADAD6BAD6BB5ED, 0xC631C631ADAB0000,  // 0x00009418 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00009438 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00000000000052D5,  // 0x00009458 
	0x63597C1F84618461, 0x8CA3AD6BAD6BADAB, 0xBDEFAD6BAD6BBDEF, 0xCEB3C631BDEFC631,  // 0x00009478 
	0xC631C671D6B5DEF7, 0xD6F5D6B5D6B5D6B5, 0xD6B5CE73C631AD6B, 0xAD6BAD6BB5EDAD6B,  // 0x00009498 
	0xAD6B000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000094B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x000000004A936359,  // 0x000094D8 
	0x846173DD73DD94A5, 0xB5ADBE2FC671D6F5, 0xCE73AD6B9CE7A569, 0xB5EDBDEFB5ADB5AD,  // 0x000094F8 
	0xB5EDBDEFC671D6B5, 0xCEB3CE73C631C671, 0xCE73D6B5D6F5D6F5, 0xCE73C631B5EDC631,  // 0x00009518 
	0xA569B5AD00000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00009538 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x73DD4A535B177C1F,  // 0x00009558 
	0x73DD7BDF8CA39D27, 0xBDEFCE73D6B5D6F5, 0xD6B5C631A569A529, 0xAD6B9D27ADABAD6B,  // 0x00009578 
	0xB5ADBDEFBDEFC671, 0xCEB3C631C631C631, 0xB5EDB5EDCEB3D6B5, 0xD6B5D6B5D6B5B5ED,  // 0x00009598 
	0xBE2FAD6BB5ADA569, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000095B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000007C1F, 0x4A935B1794E59D27,  // 0x000095D8 
	0x8CA38CA394A594E5, 0x9CE7ADABC631CEB3, 0xD6B5D6B5C671A529, 0x6B9B8CA3BDEFC671,  // 0x000095F8 
	0xCEB3C671C631BE2F, 0xCEB3BE2FC631BDEF, 0xB5EDAD6BB5EDC671, 0xCEB3D6F5D6B5D6B5,  // 0x00009618 
	0xC671BE2FB5ADADAB, 0xB5ED000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00009638 
	0x0000000000000000, 0x0000000000000000, 0x0000000063594A93, 0x52D56B9BB5ADADAB,  // 0x00009658 
	0xADAB94E58CA394E5, 0x8CA394E5A569BE2F, 0xCEB3CE73ADAB52D5, 0x94E5C631B5EDBDEF,  // 0x00009678 
	0xC631C671C631BE2F, 0xC631C671C631C631, 0xBE2FBDEFBE2FC631, 0xD6B5CEB3C671CE73,  // 0x00009698 
	0xCEB3CEB3B5EDA529, 0xADABADAB00000000, 0x0000000000000000, 0x0000000000000000,  // 0x000096B8 
	0x0000000000000000, 0x0000000000000000, 0x00004A5352D54251, 0x6B5B8CA3C631C631,  // 0x000096D8 
	0xBE2FB5EDA5299CE7, 0x8CA39CE79D27A569, 0xBE2FBE2F42516B9B, 0xBE2FADABB5ADC631,  // 0x000096F8 
	0xD6B5DEF7D6F5CE73, 0xBE2FBDEFCEB3CE73, 0xC631BE2FC631CEB3, 0xD6B5CE73C631CE73,  // 0x00009718 
	0xD6B5D6F5CEB3A569, 0xADABADABADAB0000, 0x0000000000000000, 0x0000000000000000,  // 0x00009738 
	0x0000000000000000, 0x0000000000000000, 0x21493A0F4A935295, 0x9CE7AD6BBE2FBE2F,  // 0x00009758 
	0xC671CE73BDEFB5AD, 0x9D278CA39CE7A569, 0xA5695B1731CD6359, 0xB5EDB5ADB5EDCEB3,  // 0x00009778 
	0xDEF7DEF7DEF7C631, 0xBDEFBDEFBE2FD6B5, 0xC671BDEFBDEFCEB3, 0xD6B5D6B5CEB3C631,  // 0x00009798 
	0xC631BE2FC631CE73, 0xA529BE2FAD6BA569, 0x0000000000000000, 0x0000000000000000,  // 0x000097B8 
	0x0000000000000000, 0x0000000000004251, 0x2149425152D58C63, 0xBE2FC631B5ADADAB,  // 0x000097D8 
	0xBDEFBE2FC631BDEF, 0xB5ED9D279D2794E5, 0x8CA3298B39CF3A0F, 0x94A5ADABB5EDCE73,  // 0x000097F8 
	0xDEF7DEF7D6F5C631, 0xB5EDBDEFAD6BC671, 0xC671BE2FB5EDC631, 0xCEB3CE73C671BE2F,  // 0x00009818 
	0xB5EDADABBE2FCEB3, 0xBE2FC671BE2FAD6B, 0xB5AD000000000000, 0x0000000000000000,  // 0x00009838 
	0x0000000000000000, 0x0000000000002149, 0x3A0F5B17635994E5, 0xBE2FC671B5EDA529,  // 0x00009858 
	0xB5ADB5EDBDEFADAB, 0xADAB94E594E59CE7, 0x8CA3214939CF4A93, 0x7BDFA569B5ADCE73,  // 0x00009878 
	0xD6F5D6F5CE73C631, 0xBDEFBE2FA529BE2F, 0xC671BDEFBDEFC671, 0xC671C631BDEFB5ED,  // 0x00009898 
	0xBDEFBDEFCE73D6B5, 0xCEB3CE73C671B5ED, 0xADAB000000000000, 0x0000000000000000,  // 0x000098B8 
	0x0000000000000000, 0x000000003A0F2149, 0x52D5635973DD9CE7, 0xB5EDC671C631AD6B,  // 0x000098D8 
	0xADABB5EDADABADAB, 0xADAB9D279D279D27, 0x94E5298B31CD3A0F, 0x5295842194E5ADAB,  // 0x000098F8 
	0xC631BE2FB5ADBDEF, 0xB5EDADAB8CA3C631, 0xBDEFB5EDBDEFC631, 0xC671B5EDAD6BADAB,  // 0x00009918 
	0xBE2FBE2FC671D6B5, 0xD6B5D6F5D6B5C631, 0xADABADAB00000000, 0x0000000000000000,  // 0x00009938 
	0x0000000000000000, 0x00005B1731CD31CD, 0x4A9373DD8CA38CA3, 0xB5ADBE2FC631BDEF,  // 0x00009958 
	0xBDEFADABB5ADBDEF, 0xBDEFB5EDB5ADADAB, 0x8C63298B39CF4251, 0x425163196B9B8421,  // 0x00009978 
	0x94E594E5ADABADAB, 0xA52994E573DDB5AD, 0xB5ADAD6BB5ADB5ED, 0xBDEFB5EDB5EDBE2F,  // 0x00009998 
	0xC671C631C671D6B5, 0xCEB3D6F5D6F5C671, 0xBDEFAD6BADAB0000, 0x0000000000000000,  // 0x000099B8 
	0x0000000000000000, 0x000039CF190752D5, 0x42517C1F94E58CA3, 0xAD6BC671BE2FBDEF,  // 0x000099D8 
	0xBDEFADABBE2FCE73, 0xC671C631BDEFBDEF, 0xA5693A0F39CF3A0F, 0x425152D552D552D5,  // 0x000099F8 
	0x5B176B9B7C1F8CA3, 0x94A584616B9BA529, 0xADABAD6BBDEFBE2F, 0xBE2FCEB3CEB3CE73,  // 0x00009A18 
	0xC631C631C671CE73, 0xD6B5D6B5D6F5CEB3, 0xBDEFBDEFA5690000, 0x0000000000000000,  // 0x00009A38 
	0x0000000000000000, 0x52D531CD425152D5, 0x5B178CA39D2794E5, 0xAD6BBDEFC671C631,  // 0x00009A58 
	0xBDEFADABADABB5ED, 0xC631C631BDEFBE2F, 0xB5ED7C1F3A0F3A0F, 0x3A0F4A9352D552D5,  // 0x00009A78 
	0x63596B5B6B9B7C1F, 0x846152D56B9B8C63, 0x846194E5ADABC631, 0xCE73D6B5D6F5D6B5,  // 0x00009A98 
	0xC631C631BE2FC671, 0xCEB3CE73CEB3D6B5, 0xADABB5EDA569A529, 0x0000000000000000,  // 0x00009AB8 
	0x0000000000000000, 0x318D298B4A9352D5, 0x6B9B8421A5299D27, 0xAD6BBE2FCEB3CEB3,  // 0x00009AD8 
	0xBE2FB5EDADAB94E5, 0xADABADABB5ADADAB, 0xA569A52942513A0F, 0x31CD42514A5352D5,  // 0x00009AF8 
	0x73DD73DD6B9B52D5, 0x42514A939D2794E5, 0x7C1F8461ADABCE73, 0xCE73CEB3D6B5D6B5,  // 0x00009B18 
	0xCE73C631BDEFBE2F, 0xCEB3C631BDEFCE73, 0xA569B5ADB5EDA529, 0x0000000000000000,  // 0x00009B38 
	0x0000000000005B17, 0x298B31CD635973DD, 0x84617C1FA529BDEF, 0xBDEFBDEFD6B5DEF7,  // 0x00009B58 
	0xCEB3CE73BE2FA529, 0x9CE78CA394E59CE7, 0x9CE78CA384614A93, 0x3A0F3A0F3A0F4251,  // 0x00009B78 
	0x42514A5342514251, 0x4A53B5ADB5EDB5ED, 0x94A58CA3ADABCEB3, 0xD6B5CE73CE73CEB3,  // 0x00009B98 
	0xCE73C671BE2FC631, 0xC671C671CE73B5ED, 0xADABA569BE2FAD6B, 0x8CA3000000000000,  // 0x00009BB8 
	0x0000000000004A93, 0x214942517C1F8CA3, 0x8CA37C1F8CA3B5AD, 0xBDEFB5EDBE2FCEB3,  // 0x00009BD8 
	0xD6B5CE73C671B5ED, 0xB5EDADAB94E594E5, 0x9CE7A569A5699CE7, 0x6B9B425142513A0F,  // 0x00009BF8 
	0x3A0F3A0F3A0F4251, 0xB5EDBDEFBDEFB5ED, 0x94E594E5B5ADCE73, 0xCEB3CE73CEB3D6B5,  // 0x00009C18 
	0xCEB3C671C631BE2F, 0xBDEFC631BE2FBDEF, 0xBDEFB5ADB5EDADAB, 0x9CE7000000000000,  // 0x00009C38 
	0x00000000318D4A93, 0x21494A9394E59D27, 0x84617C1F8C63ADAB, 0xBDEFB5ADB5EDBDEF,  // 0x00009C58 
	0xBE2FC631B5ADA569, 0xB5ADBE2FB5EDA569, 0x94E59D27A529A529, 0x9D277C1F5B175B17,  // 0x00009C78 
	0x5B1763598461B5AD, 0xBE2FBDEFBDEFB5ED, 0x9D2794E5B5ADC631, 0xCE73C671C671C671,  // 0x00009C98 
	0xCEB3D6B5C631BDEF, 0xB5ADB5ADB5ADB5ED, 0xB5EDBDEFADAB9D27, 0x94A57C1F00000000,  // 0x00009CB8 
	0x0000000031CD52D5, 0x21493A0F8C63BE2F, 0x94E57C1F8461ADAB, 0xBDEFC631BE2FADAB,  // 0x00009CD8 
	0xB5ADBE2FB5AD9CE7, 0x8CA3ADABBE2FA569, 0x94E5A529A569A529, 0xA5699CE78C638461,  // 0x00009CF8 
	0x84619D27BDEFBE2F, 0xC631BDEFBE2FB5AD, 0x9D2794A5A569BE2F, 0xBE2FBE2FC631C631,  // 0x00009D18 
	0xCE73D6F5D6B5BE2F, 0xADABADABA569B5AD, 0xB5EDB5ADADAB94A5, 0x84617C1F00000000,  // 0x00009D38 
	0x000000003A0F4A93, 0x298B42517BDFBDEF, 0xADAB8CA38CA3AD6B, 0xBE2FBDEFC6319CE7,  // 0x00009D58 
	0xAD6BB5EDA5699CE7, 0x84619CE7BDEFBE2F, 0xBDEFBE2FBDEFB5ED, 0xA569AD6BB5EDBDEF,  // 0x00009D78 
	0xB5EDB5ADB5EDBE2F, 0xBE2FBDEFA5699D27, 0xADABADABBDEFBE2F, 0xCE73CE73C671C631,  // 0x00009D98 
	0xB5EDC631CE73B5ED, 0xAD6BADABAD6BADAB, 0xAD6BADABADAB9CE7, 0x8C637C1F00000000,  // 0x00009DB8 
	0x000021493A0F4A93, 0x31CD5B178461AD6B, 0xBE2F9CE7A529A569, 0xB5ADB5EDBE2FBE2F,  // 0x00009DD8 
	0x5B17A529AD6B8CA3, 0x84219CE7BE2FC671, 0xC631C631C631BDEF, 0xB5ADB5EDB5ADBDEF,  // 0x00009DF8 
	0xADABB5EDBE2FBE2F, 0xBDEFBE2FC631C631, 0xBDEFB5EDB5EDB5ED, 0xB5EDC671C6719D27,  // 0x00009E18 
	0xB5ADB5EDBE2FB5ED, 0xB5ADADABB5ADB5ED, 0xB5EDC631C631AD6B, 0x9CE79D277C1F0000,  // 0x00009E38 
	0x000021493A0F31CD, 0x4251635994E5A529, 0xB5ADA5699D27ADAB, 0xB5ADBDEFBDEFB5ED,  // 0x00009E58 
	0x846152D57C1F6B9B, 0x8461AD6BB5EDBE2F, 0xCE73CEB3C631C631, 0xC671CE73CEB3CEB3,  // 0x00009E78 
	0xCE73DEF7DEF7D6B5, 0xDF37D6F5CE73C631, 0xC671CE73D6B5DEF7, 0xD6F5C671A569BE2F,  // 0x00009E98 
	0xC631B5EDBDEFB5ED, 0xB5EDB5EDB5EDC631, 0xBE2FBE2FC631ADAB, 0xAD6B9D277C1F0000,  // 0x00009EB8 
	0x0000214931CD298B, 0x425173DDA5299D27, 0xA529AD6B9CE7A569, 0xB5ADC631BE2FBDEF,  // 0x00009ED8 
	0xBDEF52D552956359, 0x73DD9D27B5ADAD6B, 0xB5EDD6B5C631C631, 0xDEF7DF37DEF7DF37,  // 0x00009EF8 
	0xE739E739E739DF37, 0xE739D6B5D6F5DEF7, 0xE739DF37DEF7CEB3, 0xB5ED8CA37BDFC631,  // 0x00009F18 
	0xC631C671BDEFB5ED, 0xBDEFB5ADC631C671, 0xCEB3C631BE2FC671, 0xA569842163590000,  // 0x00009F38 
	0x0000190731CD298B, 0x3A0F635994E59D27, 0x9CE7A5299D279D27, 0xADABB5EDC671C631,  // 0x00009F58 
	0xBDEF9CE731CD4251, 0x6B9B94E5AD6BAD6B, 0xA569AD6BB5EDC631, 0xCEB3DF37E739E739,  // 0x00009F78 
	0xE739E739E739E739, 0xE739DEF7D6B5DEF7, 0xDEF7CEB3B5EDA569, 0x73DD4A93BDEFC631,  // 0x00009F98 
	0xCE73C671C631C671, 0xBE2FBDEFBE2FC631, 0xCEB3D6B5D6B5D6B5, 0x94E56B9B5B170000,  // 0x00009FB8 
	0x0000214931CD31CD, 0x425163596B9B8CA3, 0x9CE7A5699CE794E5, 0xA569AD6BC631B5ED,  // 0x00009FD8 
	0xADABAD6B6359298B, 0x425173DD94A5A529, 0xA529A569B5EDB5ED, 0xBE2FC671DEF7DEF7,  // 0x00009FF8 
	0xDEF7DEF7E739E739, 0xDEF7E739D6B5D6F5, 0xD6F5BE2FA52973DD, 0x42517C1FADABADAB,  // 0x0000A018 
	0xADABB5EDC671CE73, 0xC631C671C631C631, 0xCEB3DEF7DEF7CE73, 0x8CA37BDF7C1F0000,  // 0x0000A038 
	0x0000190731CD298B, 0x635973DD7C1F73DD, 0x8C63A529A5699D27, 0xAD6BADABADABAD6B,  // 0x0000A058 
	0x9CE79D27A5693A0F, 0x3A0F4A9363598CA3, 0x94A5A569B5ADBDEF, 0xC631C671CEB3DEF7,  // 0x0000A078 
	0xDEF7DEF7E739E779, 0xE739E739DF37CEB3, 0xCE73B5AD8C636359, 0x52D58C638CA394E5,  // 0x0000A098 
	0x94E5A529B5ADC631, 0xCE73CEB3CE73CE73, 0xBDEFC671BDEFADAB, 0x7C1F84618CA30000,  // 0x0000A0B8 
	0x00002149298B298B, 0x52D5842184617C1F, 0x7C1F94E5A5299CE7, 0x9CE7B5EDB5ADA569,  // 0x0000A0D8 
	0x94E59CE7ADABA529, 0x39CF3A0F42515B17, 0x8C63A529B5ADB5ED, 0xBDEFC671D6B5D6B5,  // 0x0000A0F8 
	0xD6B5DEF7E739E739, 0xE739DF37DEF7CE73, 0xB5EDA5297BDF52D5, 0x7BDF846173DD94A5,  // 0x0000A118 
	0xAD6BAD6BA529BDEF, 0xCEB3CE73C631C671, 0xB5EDA569AD6BA529, 0x8CA38CA38C630000,  // 0x0000A138 
	0x21491907298B31CD, 0x4251846194A59CE7, 0x84618CA3A5699D27, 0x94E5A529B5ADAD6B,  // 0x0000A158 
	0xB5ADA569A529B5ED, 0x63593A0F3A0F3A0F, 0x635984219D27B5AD, 0xBDEFC631D6F5D6F5,  // 0x0000A178 
	0xD6B5D6F5DEF7DEF7, 0xD6F5CEB3CE73BDEF, 0x9D2784616B9B6B9B, 0x94E58CA38CA394E5,  // 0x0000A198 
	0xA569B5EDB5EDB5ED, 0xC671CE73BE2FB5ED, 0xB5ADAD6BB5EDAD6B, 0x7C1F73DD7BDF0000,  // 0x0000A1B8 
};

u64 _tokinoma_room_0_tex_0000A1D8[] = 
{
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A1D8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A1F8 
	0x7BDF000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A218 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A238 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A258 
	0x0000000000000000, 0x0000000000000000, 0x00008C638C638C63, 0x8C638C6384218421,  // 0x0000A278 
	0x739D7BDF84218C63, 0x8C6384217BDF6B5B, 0x0000000000000000, 0x0000000000000000,  // 0x0000A298 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A2B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A2D8 
	0x0000000000000000, 0x00008C6394A58C63, 0x8C638C638C638C63, 0x8421842184218421,  // 0x0000A2F8 
	0x739D739D739D7BDF, 0x842184217BDF8421, 0x7BDF739D6B5B0000, 0x0000000000000000,  // 0x0000A318 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A338 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A358 
	0x00000000000094A5, 0x9CE7A5299CE79CE7, 0x9CE79CE79CE7A529, 0x9CE7A5299CE7A529,  // 0x0000A378 
	0x9CE794A57BDF739D, 0x7BDF7BDF739D6B5B, 0x739D7BDF84217BDF, 0x5295000000000000,  // 0x0000A398 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A3B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A3D8 
	0x000094A594A594A5, 0x94A59CE79CE7A529, 0xAD6BAD6BB5ADB5AD, 0xAD6BAD6BAD6BAD6B,  // 0x0000A3F8 
	0xAD6B9CE79CE78C63, 0x94A59CE784217BDF, 0x84216B5B6319739D, 0x6B5B739D52950000,  // 0x0000A418 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A438 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00000000000094A5,  // 0x0000A458 
	0x8C639CE79CE794A5, 0x94A59CE7A529AD6B, 0xB5ADB5ADB5ADAD6B, 0x9CE7AD6BA5299CE7,  // 0x0000A478 
	0xA529A529A52994A5, 0x94A59CE79CE78C63, 0x94A594A58C636B5B, 0x63196B5B7BDF5AD7,  // 0x0000A498 
	0x5295000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A4B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x000000008C6394A5,  // 0x0000A4D8 
	0x9CE794A59CE7A529, 0xAD6BAD6BAD6BA529, 0xAD6BAD6BA52994A5, 0x94A5A52994A594A5,  // 0x0000A4F8 
	0xA529A5299CE78C63, 0x8C6394A58C638C63, 0x9CE79CE79CE78C63, 0x739D6B5B5AD77BDF,  // 0x0000A518 
	0x52955AD700000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A538 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x9CE784218C639CE7,  // 0x0000A558 
	0x9CE7A529AD6BB5AD, 0xB5ADB5ADA529A529, 0xAD6BA5299CE794A5, 0x94A5A5299CE79CE7,  // 0x0000A578 
	0xA529A52994A58C63, 0x84218C6384218C63, 0x94A59CE794A58C63, 0x739D739D8C63739D,  // 0x0000A598 
	0x739D52955AD74A53, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A5B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000009CE7, 0x7BDF8C639CE7AD6B,  // 0x0000A5D8 
	0xAD6BAD6BAD6BA529, 0x9CE79CE79CE7A529, 0x9CE7A5299CE79CE7, 0x9CE7A529A529AD6B,  // 0x0000A5F8 
	0xAD6B94A58C638C63, 0x84218C6384217BDF, 0x94A594A58C638421, 0x7BDF8C63A529A529,  // 0x0000A618 
	0x7BDF631942114211, 0x5295000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A638 
	0x0000000000000000, 0x0000000000000000, 0x0000000094A57BDF, 0x84219CE7B5ADB5AD,  // 0x0000A658 
	0xAD6BA5299CE794A5, 0x94A594A59CE7A529, 0x9CE794A59CE7A529, 0xAD6BA529A529AD6B,  // 0x0000A678 
	0x94A584218C638C63, 0x84218421842194A5, 0xA5299CE79CE78C63, 0x84218C639CE794A5,  // 0x0000A698 
	0x8421739D4A53318D, 0x39CF39CF00000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A6B8 
	0x0000000000000000, 0x0000000000000000, 0x00008C6384218C63, 0xA529AD6BB5ADB5AD,  // 0x0000A6D8 
	0xB5ADAD6BA52994A5, 0x9CE79CE79CE794A5, 0x94A594A5A529AD6B, 0xAD6BAD6BAD6BA529,  // 0x0000A6F8 
	0x8C638C6394A58C63, 0x8C6394A58C639CE7, 0xA529A529A52994A5, 0x84218C6394A594A5,  // 0x0000A718 
	0x9CE78C636B5B318D, 0x318D421139CF0000, 0x0000000000000000, 0x0000000000000000,  // 0x0000A738 
	0x0000000000000000, 0x0000000000000000, 0x7BDF8C6394A59CE7, 0xB5ADB5ADB5ADB5AD,  // 0x0000A758 
	0xAD6BA5299CE79CE7, 0x9CE794A594A594A5, 0x8C639CE7AD6BB5AD, 0xA52994A5A5298C63,  // 0x0000A778 
	0x842184218C638C63, 0x9CE79CE794A59CE7, 0x9CE79CE7A5299CE7, 0x842194A594A59CE7,  // 0x0000A798 
	0x94A57BDF63196319, 0x294B529539CF318D, 0x0000000000000000, 0x0000000000000000,  // 0x0000A7B8 
	0x0000000000000000, 0x00000000000094A5, 0x7BDF94A59CE7AD6B, 0xB5ADAD6BAD6BA529,  // 0x0000A7D8 
	0x9CE794A594A5A529, 0xA5299CE794A58C63, 0x9CE7AD6BB5ADAD6B, 0x84217BDF8C638421,  // 0x0000A7F8 
	0x84218C6394A59CE7, 0x9CE78C6394A594A5, 0x94A5A529A52994A5, 0x7BDF84218C638421,  // 0x0000A818 
	0x7BDF739D739D739D, 0x42115AD74A53318D, 0x4211000000000000, 0x0000000000000000,  // 0x0000A838 
	0x0000000000000000, 0x0000000000007BDF, 0x84219CE7A529B5AD, 0xAD6BA5299CE79CE7,  // 0x0000A858 
	0x94A58C6394A59CE7, 0x94A594A59CE7A529, 0xA529AD6BA5296B5B, 0x6B5B8421842194A5,  // 0x0000A878 
	0x94A594A59CE79CE7, 0x94A594A594A58C63, 0x9CE7A529A5299CE7, 0x631984217BDF7BDF,  // 0x0000A898 
	0x7BDF94A594A58C63, 0x6B5B631963195295, 0x39CF000000000000, 0x0000000000000000,  // 0x0000A8B8 
	0x0000000000000000, 0x000000008C637BDF, 0x9CE7A529AD6BAD6B, 0xA5299CE79CE7A529,  // 0x0000A8D8 
	0x8C638C639CE794A5, 0x94A5A529A529AD6B, 0xB5ADA5295AD76319, 0x8C6384218C6394A5,  // 0x0000A8F8 
	0x9CE7A529A5299CE7, 0x94A594A58C638C63, 0x94A59CE7A5297BDF, 0x318D6B5B6B5B8421,  // 0x0000A918 
	0x8C639CE7A5298421, 0x739D7BDF6B5B5AD7, 0x4211421100000000, 0x0000000000000000,  // 0x0000A938 
	0x0000000000000000, 0x00009CE77BDF8C63, 0x9CE7A529AD6B9CE7, 0x9CE79CE7A5299CE7,  // 0x0000A958 
	0x8C6394A59CE794A5, 0x9CE79CE7A529A529, 0x9CE763194A538C63, 0x8C638C638C639CE7,  // 0x0000A978 
	0x9CE79CE78C638C63, 0x8C638C637BDF8421, 0x94A5AD6BAD6B4A53, 0x294B63197BDF94A5,  // 0x0000A998 
	0x9CE7AD6BA5298C63, 0x739D94A584215AD7, 0x4A5339CF42110000, 0x0000000000000000,  // 0x0000A9B8 
	0x0000000000000000, 0x000084217BDF9CE7, 0x9CE7A5299CE79CE7, 0x9CE79CE79CE78421,  // 0x0000A9D8 
	0x94A59CE7A529A529, 0xA529A5299CE794A5, 0x631939CF631994A5, 0x84218C6394A594A5,  // 0x0000A9F8 
	0x94A58421739D739D, 0x739D6319739D9CE7, 0xA5299CE78421294B, 0x318D84219CE7A529,  // 0x0000AA18 
	0xAD6BAD6B9CE78421, 0x8421A5299CE76B5B, 0x42114211318D0000, 0x0000000000000000,  // 0x0000AA38 
	0x0000000000000000, 0x9CE77BDF94A59CE7, 0x9CE7A529A529A529, 0xA5299CE794A58C63,  // 0x0000AA58 
	0x9CE794A5A529A529, 0xA529AD6B94A55AD7, 0x39CF421184217BDF, 0x8421842194A59CE7,  // 0x0000AA78 
	0x94A57BDF6B5B739D, 0x739D739D94A59CE7, 0x9CE7842139CF294B, 0x631994A59CE7A529,  // 0x0000AA98 
	0xAD6B9CE794A58C63, 0x8C63A529AD6B7BDF, 0x39CF39CF294B294B, 0x0000000000000000,  // 0x0000AAB8 
	0x0000000000000000, 0x84217BDF9CE79CE7, 0x9CE7A529A529A529, 0xA529A52994A594A5,  // 0x0000AAD8 
	0x9CE7AD6B9CE7AD6B, 0xB5ADB5AD94A539CF, 0x318D5AD784217BDF, 0x7BDF94A59CE79CE7,  // 0x0000AAF8 
	0x94A5842184218421, 0x842194A58C639CE7, 0x9CE74A532109294B, 0x8C639CE79CE79CE7,  // 0x0000AB18 
	0xA5298C638C6394A5, 0x9CE7AD6BA529739D, 0x294B39CF4211318D, 0x18C7000000000000,  // 0x0000AB38 
	0x000000000000A529, 0x84218421A529AD6B, 0xA529A529B5ADB5AD, 0xAD6BA5299CE78C63,  // 0x0000AB58 
	0x9CE7AD6BA529B5AD, 0xB5ADAD6B739D318D, 0x318D63198C638C63, 0x8C6394A59CE794A5,  // 0x0000AB78 
	0x9CE794A58C6394A5, 0x8C639CE79CE7A529, 0x9CE7294B21094211, 0x94A59CE79CE79CE7,  // 0x0000AB98 
	0x94A58C6394A5A529, 0xAD6BAD6B94A56B5B, 0x39CF294B4211318D, 0x18C7000000000000,  // 0x0000ABB8 
	0x0000000000009CE7, 0x7BDF94A5AD6BAD6B, 0xAD6BAD6BAD6BA529, 0x9CE79CE794A58C63,  // 0x0000ABD8 
	0xAD6BA529A529A529, 0xB5ADA5296319318D, 0x39CF94A594A594A5, 0x9CE7A5299CE794A5,  // 0x0000ABF8 
	0x8C63842184219CE7, 0xAD6BAD6BB5AD9CE7, 0x5295210921096B5B, 0x94A5A529A5299CE7,  // 0x0000AC18 
	0x8C638C63A529AD6B, 0xAD6BA529739D6B5B, 0x5AD739CF39CF39CF, 0x18C7000000000000,  // 0x0000AC38 
	0x000000008C6394A5, 0x7BDF9CE7AD6BAD6B, 0xA529A529A529A529, 0x9CE79CE794A58C63,  // 0x0000AC58 
	0xA52994A59CE7B5AD, 0xAD6B9CE75AD7318D, 0x4A538C638C6394A5, 0x9CE78C63739D739D,  // 0x0000AC78 
	0x7BDF7BDF9CE7AD6B, 0xB5ADB5ADB5AD6B5B, 0x318D2109210994A5, 0x94A5A5299CE794A5,  // 0x0000AC98 
	0x8C6394A5A529A529, 0x9CE78C636B5B6319, 0x6B5B529539CF318D, 0x18C7108500000000,  // 0x0000ACB8 
	0x000000008C63A529, 0x739D8C63AD6BAD6B, 0xAD6BA529A529A529, 0x9CE79CE794A594A5,  // 0x0000ACD8 
	0x94A594A5B5ADB5AD, 0xAD6B94A55AD7318D, 0x4A538C638C638C63, 0x9CE77BDF739D739D,  // 0x0000ACF8 
	0x8421AD6BAD6BB5AD, 0xBDEFBDEF94A539CF, 0x318D2109529594A5, 0x8C6394A594A58C63,  // 0x0000AD18 
	0x94A59CE7A52994A5, 0x84217BDF5AD76B5B, 0x6B5B529539CF2109, 0x210918C700000000,  // 0x0000AD38 
	0x0000000094A594A5, 0x842194A59CE7AD6B, 0xAD6BA529A529A529, 0xA529A5299CE794A5,  // 0x0000AD58 
	0x9CE79CE7AD6BB5AD, 0xA5299CE76B5B318D, 0x63198C638C639CE7, 0x94A594A58C639CE7,  // 0x0000AD78 
	0xA529A529B5ADBDEF, 0xBDEFAD6B5295318D, 0x294B294B84219CE7, 0x8C638C6384218C63,  // 0x0000AD98 
	0x9CE79CE794A57BDF, 0x7BDF739D5AD76B5B, 0x631952954A53294B, 0x210918C700000000,  // 0x0000ADB8 
	0x00007BDF8C639CE7, 0x8C639CE7AD6BB5AD, 0xB5ADAD6BAD6B9CE7, 0x8C639CE794A59CE7,  // 0x0000ADD8 
	0x9CE7A529AD6BB5AD, 0xAD6B94A56B5B39CF, 0x6319AD6BAD6BB5AD, 0xA5299CE7A529A529,  // 0x0000ADF8 
	0xAD6B94A59CE7A529, 0xA5297BDF318D318D, 0x294B318DAD6B9CE7, 0x84218C6394A59CE7,  // 0x0000AE18 
	0x94A58C6384216B5B, 0x8421739D6B5B739D, 0x6B5B739D6B5B294B, 0x2109318D10850000,  // 0x0000AE38 
	0x00007BDF8C638C63, 0x94A5A529B5ADAD6B, 0xAD6BAD6BA5299CE7, 0x84218C6394A594A5,  // 0x0000AE58 
	0x9CE7A529AD6BB5AD, 0xAD6BA5299CE77BDF, 0x5AD79CE79CE79CE7, 0x9CE79CE7A529B5AD,  // 0x0000AE78 
	0xBDEFAD6BAD6BAD6B, 0x84214A53318D294B, 0x294B6319A5298C63, 0x8C638C639CE79CE7,  // 0x0000AE98 
	0x94A58C637BDF6B5B, 0x8421739D739D7BDF, 0x739D8421631939CF, 0x294B294B18C70000,  // 0x0000AEB8 
	0x0000739D8C638421, 0x94A5A529B5ADA529, 0xA529A52994A58C63, 0x84218C639CE79CE7,  // 0x0000AED8 
	0xA5299CE7A529B5AD, 0xB5ADB5ADB5ADAD6B, 0xAD6BA529AD6BAD6B, 0xB5ADB5ADAD6BB5AD,  // 0x0000AEF8 
	0xBDEFBDEFB5AD9CE7, 0x6319318D318D294B, 0x294B84218C638421, 0x84218C63A5299CE7,  // 0x0000AF18 
	0x9CE78C63739D8C63, 0x739D7BDF8C638421, 0x8421842163195AD7, 0x294B18C718C70000,  // 0x0000AF38 
	0x000063198C638421, 0x94A59CE79CE794A5, 0x9CE79CE794A58C63, 0x7BDF8C6394A5A529,  // 0x0000AF58 
	0xA529A5299CE7AD6B, 0xB5ADBDEFB5ADB5AD, 0xB5ADBDEFB5ADB5AD, 0xBDEFBDEFB5ADB5AD,  // 0x0000AF78 
	0xBDEFB5ADA5297BDF, 0x5AD7421139CF294B, 0x318D94A57BDF739D, 0x7BDF94A5A5299CE7,  // 0x0000AF98 
	0x9CE784217BDF94A5, 0x631984218C638C63, 0x8C638C638421739D, 0x210918C718C70000,  // 0x0000AFB8 
	0x00005AD784218C63, 0x94A58C63842194A5, 0x9CE794A58C6394A5, 0x84218C638C63A529,  // 0x0000AFD8 
	0xAD6BA529AD6BB5AD, 0xB5ADBDEFBDEFBDEF, 0xBDEFBDEFBDEFBDEF, 0xBDEFBDEFBDEFBDEF,  // 0x0000AFF8 
	0xB5AD9CE78C63739D, 0x5AD75AD74211294B, 0x5AD784217BDF7BDF, 0x7BDF94A594A58C63,  // 0x0000B018 
	0x7BDF7BDF94A58421, 0x4A538C6394A594A5, 0x9CE7A52994A56B5B, 0x18C718C718C70000,  // 0x0000B038 
	0x00005AD78C638421, 0x9CE78C638C6394A5, 0x8C638C639CE794A5, 0x7BDF84217BDF8C63,  // 0x0000B058 
	0x9CE7A529AD6BB5AD, 0xBDEFBDEFBDEFBDEF, 0xB5ADB5ADB5ADB5AD, 0xBDEFBDEFB5ADB5AD,  // 0x0000B078 
	0xAD6B8C637BDF739D, 0x5AD75295318D294B, 0x6B5B739D739D7BDF, 0x7BDF84217BDF6B5B,  // 0x0000B098 
	0x6B5B8421A5297BDF, 0x39CFA5299CE794A5, 0xA52994A56B5B4211, 0x18C718C718C70000,  // 0x0000B0B8 
	0x00005AD78421739D, 0x8C6394A59CE78C63, 0x8C6394A59CE78421, 0x739D739D739D739D,  // 0x0000B0D8 
	0x8C639CE7A529B5AD, 0xBDEFB5ADB5ADAD6B, 0xAD6BAD6BB5ADB5AD, 0xAD6BB5ADAD6BA529,  // 0x0000B0F8 
	0x9CE77BDF7BDF739D, 0x63194A53294B294B, 0x63196319739D739D, 0x739D739D6319739D,  // 0x0000B118 
	0x842194A58C634211, 0x294B94A58C6394A5, 0x8C636B5B5AD74211, 0x18C718C718C70000,  // 0x0000B138 
	0x631952958421739D, 0x7BDF9CE79CE79CE7, 0x94A59CE794A57BDF, 0x739D739D739D739D,  // 0x0000B158 
	0x7BDF8C638C63A529, 0xA529A52994A59CE7, 0x9CE79CE7A529B5AD, 0xB5ADAD6BA52994A5,  // 0x0000B178 
	0x84216B5B63196319, 0x6B5B39CF294B294B, 0x739D739D739D739D, 0x7BDF739D7BDF8421,  // 0x0000B198 
	0x8C63BDEF739D294B, 0x294B8C638C638C63, 0x739D6B5B739D4A53, 0x210918C718C70000,  // 0x0000B1B8 
};

u64 _tokinoma_room_0_tex_0000B1D8[] = 
{
	0x00005295739D8421, 0x8C639CE79CE79CE7, 0x9CE794A584216B5B, 0x6B5B739D6B5B6B5B,  // 0x0000B1D8 
	0x6B5B739D7BDF8421, 0x739D7BDF84218C63, 0x9CE7AD6BB5ADB5AD, 0xB5ADA52994A58421,  // 0x0000B1F8 
	0x7BDF6B5B63194A53, 0x4211318D294B318D, 0x739D6B5B6B5B739D, 0x739D7BDF7BDF8C63,  // 0x0000B218 
	0xBDEFA5296319318D, 0x294B84217BDF7BDF, 0x7BDF8C637BDF4211, 0x210918C718C72109,  // 0x0000B238 
	0x000039CF6B5B8421, 0x9CE794A584218C63, 0x8C638421739D5AD7, 0x6319739D6B5B8421,  // 0x0000B258 
	0x7BDF7BDF739D8421, 0x84217BDF739D8421, 0x9CE7A529AD6BAD6B, 0xAD6B94A58C638421,  // 0x0000B278 
	0x739D739D63194A53, 0x39CF421139CF39CF, 0x6B5B6319739D7BDF, 0x7BDF842194A5AD6B,  // 0x0000B298 
	0xB5AD8C635295318D, 0x294B6B5B739D8C63, 0x9CE794A5739D4A53, 0x18C718C710850000,  // 0x0000B2B8 
	0x000042115AD77BDF, 0x94A584217BDF8421, 0x8421739D739D5AD7, 0x6319631963196B5B,  // 0x0000B2D8 
	0x7BDF7BDF63196B5B, 0x7BDF7BDF7BDF8421, 0x8C638C6394A594A5, 0x94A58C637BDF739D,  // 0x0000B2F8 
	0x7BDF739D6B5B5295, 0x4A535AD739CF294B, 0x63196B5B739D7BDF, 0x8421A529B5ADAD6B,  // 0x0000B318 
	0x9CE77BDF39CF294B, 0x318D739D7BDF94A5, 0x94A58421739D318D, 0x18C718C718C70000,  // 0x0000B338 
	0x000052954A537BDF, 0x8C6384218C638421, 0x7BDF7BDF739D5295, 0x739D63196B5B6319,  // 0x0000B358 
	0x6B5B739D7BDF6B5B, 0x6B5B7BDF94A59CE7, 0x8C63842184218421, 0x739D6B5B6B5B7BDF,  // 0x0000B378 
	0x8421739D6B5B5295, 0x4A534211318D318D, 0x5AD7739D739D9CE7, 0xB5ADB5ADB5AD8C63,  // 0x0000B398 
	0x6B5B5AD7294B294B, 0x21097BDF84218C63, 0x842184216B5B318D, 0x18C718C710850000,  // 0x0000B3B8 
	0x0000421142116B5B, 0x842194A594A57BDF, 0x739D84217BDF5295, 0x5AD76B5B6B5B739D,  // 0x0000B3D8 
	0x52955AD7739D6B5B, 0x63196319739D94A5, 0x9CE79CE794A58421, 0x6B5B5AD763198421,  // 0x0000B3F8 
	0x84217BDF739D6319, 0x5AD7529552954211, 0x529594A59CE7AD6B, 0xB5ADAD6BA5296319,  // 0x0000B418 
	0x39CF294B294B294B, 0x5AD78C638C638C63, 0x8C6384216319318D, 0x18C718C718C70000,  // 0x0000B438 
	0x0000421142114211, 0x6B5B8C638C637BDF, 0x842184217BDF6319, 0x52955AD74A535295,  // 0x0000B458 
	0x42114A5363196319, 0x6B5B739D84218C63, 0x94A59CE784216B5B, 0x63196B5B6B5B739D,  // 0x0000B478 
	0x739D739D739D6319, 0x5AD75AD763195295, 0x42117BDF9CE7AD6B, 0xB5ADA5298C634A53,  // 0x0000B498 
	0x39CF2109294B294B, 0x739D842194A59CE7, 0x94A584215AD739CF, 0x18C718C718C70000,  // 0x0000B4B8 
	0x0000318D4A5339CF, 0x631994A58C638C63, 0x8C63842184217BDF, 0x52955AD75AD7318D,  // 0x0000B4D8 
	0x318D294B39CF6319, 0x6B5B6B5B7BDF7BDF, 0x7BDF7BDF6B5B739D, 0x6B5B5AD76B5B6B5B,  // 0x0000B4F8 
	0x6B5B631952954A53, 0x52955AD763196319, 0x52956B5B8C63A529, 0x9CE794A56B5B318D,  // 0x0000B518 
	0x294B18C7294B2109, 0x94A59CE7A529A529, 0x8C637BDF4A532109, 0x108518C718C70000,  // 0x0000B538 
	0x0000000039CF4A53, 0x6B5B8C639CE794A5, 0x94A58C6384218421, 0x6B5B4A5352955295,  // 0x0000B558 
	0x39CF294B210939CF, 0x6319739D6B5B6B5B, 0x631963196B5B6B5B, 0x6319631963196B5B,  // 0x0000B578 
	0x5AD7421139CF4A53, 0x4A535AD77BDF6B5B, 0x5AD76B5B7BDF8421, 0x84217BDF5295294B,  // 0x0000B598 
	0x210918C7294B4211, 0x9CE79CE7A5299CE7, 0x7BDF6B5B4A532109, 0x18C718C700000000,  // 0x0000B5B8 
	0x0000000039CF5295, 0x63197BDF94A59CE7, 0x9CE79CE784218421, 0x7BDF39CF42116319,  // 0x0000B5D8 
	0x4A53421139CF294B, 0x318D39CF4A535AD7, 0x529539CF39CF39CF, 0x39CF529563195AD7,  // 0x0000B5F8 
	0x4A5339CF42115AD7, 0x529563197BDF5295, 0x5AD75AD752956B5B, 0x6B5B5AD739CF294B,  // 0x0000B618 
	0x18C721092109739D, 0xAD6BAD6BA52994A5, 0x84215AD7294B1085, 0x18C718C700000000,  // 0x0000B638 
	0x000000005295318D, 0x5295739D94A5A529, 0xAD6B94A584218421, 0x8C63294B318D4211,  // 0x0000B658 
	0x4A5339CF4A53318D, 0x318D318D42115295, 0x4A5339CF318D318D, 0x39CF4A534A535295,  // 0x0000B678 
	0x39CF39CF4A534A53, 0x52955AD752954A53, 0x52954A534A535295, 0x4A53318D294B294B,  // 0x0000B698 
	0x18C72109318DB5AD, 0xAD6BA5299CE79CE7, 0x8C634A53210918C7, 0x18C718C700000000,  // 0x0000B6B8 
	0x000000006319294B, 0x42115AD7739D94A5, 0x94A5842184218C63, 0x94A5842121092109,  // 0x0000B6D8 
	0x39CF529539CF39CF, 0x39CF4211318D294B, 0x318D318D318D39CF, 0x4A5339CF39CF318D,  // 0x0000B6F8 
	0x318D318D42114A53, 0x5AD75AD752954211, 0x39CF39CF318D4211, 0x318D294B294B18C7,  // 0x0000B718 
	0x18C721098C639CE7, 0x8C638C6394A58C63, 0x6B5B294B18C71085, 0x18C7210900000000,  // 0x0000B738 
	0x0000000000005295, 0x294B5AD763198421, 0x8C63842194A594A5, 0x94A594A5294B18C7,  // 0x0000B758 
	0x210942114A534211, 0x4A534211318D294B, 0x294B318D42114A53, 0x5AD752954211318D,  // 0x0000B778 
	0x318D39CF4A536319, 0x63194A5339CF318D, 0x318D294B318D318D, 0x294B2109210918C7,  // 0x0000B798 
	0x21095AD78C637BDF, 0x7BDF7BDF7BDF6B5B, 0x4211210918C718C7, 0x18C7000000000000,  // 0x0000B7B8 
	0x0000000000004211, 0x294B39CF5AD77BDF, 0x8C638C638C6394A5, 0x8C6384216B5B294B,  // 0x0000B7D8 
	0x18C72109318D39CF, 0x39CF318D294B318D, 0x318D294B39CF4211, 0x39CF39CF39CF4211,  // 0x0000B7F8 
	0x42114A535AD74A53, 0x39CF318D318D318D, 0x294B294B318D294B, 0x210918C7210918C7,  // 0x0000B818 
	0x318D8C637BDF8421, 0x7BDF6B5B5AD74A53, 0x294B18C718C718C7, 0x2109000000000000,  // 0x0000B838 
	0x0000000000000000, 0x5295210939CF5AD7, 0x7BDF84218C638C63, 0x8C638C6384217BDF,  // 0x0000B858 
	0x210918C72109294B, 0x318D294B294B318D, 0x39CF294B294B294B, 0x294B294B318D318D,  // 0x0000B878 
	0x318D39CF39CF318D, 0x294B294B294B294B, 0x294B294B21092109, 0x18C7210921092109,  // 0x0000B898 
	0x94A58C637BDF7BDF, 0x739D6B5B5AD739CF, 0x2109108518C718C7, 0x0000000000000000,  // 0x0000B8B8 
	0x0000000000000000, 0x318D5AD721094211, 0x6319739D84218421, 0x94A59CE794A594A5,  // 0x0000B8D8 
	0x6B5B18C718C72109, 0x210921092109294B, 0x2109210921092109, 0x294B294B294B318D,  // 0x0000B8F8 
	0x318D294B294B294B, 0x294B210921092109, 0x21092109210918C7, 0x18C7210921098C63,  // 0x0000B918 
	0x94A584218421739D, 0x6B5B5AD74A53294B, 0x18C718C718C72109, 0x0000000000000000,  // 0x0000B938 
	0x0000000000000000, 0x0000421139CF294B, 0x4A536B5B7BDF8421, 0x94A594A594A594A5,  // 0x0000B958 
	0x8C637BDF210918C7, 0x2109210921092109, 0x2109294B21092109, 0x21092109294B294B,  // 0x0000B978 
	0x318D294B318D294B, 0x2109210921092109, 0x2109210918C72109, 0x2109210984219CE7,  // 0x0000B998 
	0x94A57BDF84217BDF, 0x529539CF318D2109, 0x18C7210918C70000, 0x0000000000000000,  // 0x0000B9B8 
	0x0000000000000000, 0x0000294B318D2109, 0x294B52957BDF94A5, 0x94A59CE79CE79CE7,  // 0x0000B9D8 
	0x9CE794A57BDF39CF, 0x18C7210921092109, 0x2109210921092109, 0x294B294B21092109,  // 0x0000B9F8 
	0x2109210921092109, 0x2109210921092109, 0x210918C721092109, 0x318D9CE7A5299CE7,  // 0x0000BA18 
	0x8C637BDF8421739D, 0x4211318D294B18C7, 0x210918C718C70000, 0x0000000000000000,  // 0x0000BA38 
	0x0000000000000000, 0x00000000294B39CF, 0x294B318D63197BDF, 0x7BDF8C6394A59CE7,  // 0x0000BA58 
	0x9CE794A584217BDF, 0x4211210921092109, 0x2109210921092109, 0x2109210921092109,  // 0x0000BA78 
	0x2109210918C72109, 0x2109210921092109, 0x2109210921095295, 0x94A5A5299CE79CE7,  // 0x0000BA98 
	0x8C6384217BDF4A53, 0x318D2109210918C7, 0x18C718C700000000, 0x0000000000000000,  // 0x0000BAB8 
	0x0000000000000000, 0x0000000018C72109, 0x39CF294B39CF6319, 0x7BDF8C6394A58C63,  // 0x0000BAD8 
	0x7BDF7BDF739D7BDF, 0x8C636319294B18C7, 0x2109210921092109, 0x2109210921092109,  // 0x0000BAF8 
	0x21092109210918C7, 0x210918C721092109, 0x2109294B739D9CE7, 0x9CE794A594A58C63,  // 0x0000BB18 
	0x7BDF739D6319318D, 0x21092109210918C7, 0x18C7000000000000, 0x0000000000000000,  // 0x0000BB38 
	0x0000000000000000, 0x0000000000002109, 0x21092109210939CF, 0x739D842184216B5B,  // 0x0000BB58 
	0x6B5B6B5B739D8421, 0x84218C638C638421, 0x39CF210918C718C7, 0x2109210921092109,  // 0x0000BB78 
	0x21092109210918C7, 0x18C718C7294B4211, 0x84218C638C6394A5, 0x94A58C638421739D,  // 0x0000BB98 
	0x5AD74A5339CF2109, 0x2109210918C718C7, 0x18C7000000000000, 0x0000000000000000,  // 0x0000BBB8 
	0x0000000000000000, 0x0000000000000000, 0x318D21092109318D, 0x52957BDF7BDF7BDF,  // 0x0000BBD8 
	0x8C63842184218421, 0x8C6394A594A594A5, 0x8C638C6384214A53, 0x39CF210921092109,  // 0x0000BBF8 
	0x21092109318D4A53, 0x52957BDF739D8421, 0x8C638C6394A59CE7, 0x84217BDF6B5B6319,  // 0x0000BC18 
	0x5AD74A53294B2109, 0x18C718C718C718C7, 0x0000000000000000, 0x0000000000000000,  // 0x0000BC38 
	0x0000000000000000, 0x0000000000000000, 0x0000294B18C72109, 0x2109318D63198421,  // 0x0000BC58 
	0x94A58C637BDF7BDF, 0x842184218C638421, 0x8C6394A594A594A5, 0x94A58C6384218421,  // 0x0000BC78 
	0x8C6394A58C637BDF, 0x739D739D739D7BDF, 0x739D739D8C638C63, 0x739D63196B5B5AD7,  // 0x0000BC98 
	0x4A53318D210918C7, 0x18C718C718C70000, 0x0000000000000000, 0x0000000000000000,  // 0x0000BCB8 
	0x0000000000000000, 0x0000000000000000, 0x00000000294B2109, 0x18C718C721095295,  // 0x0000BCD8 
	0x739D739D7BDF7BDF, 0x8421842184218421, 0x8C6394A594A58C63, 0x84217BDF7BDF8421,  // 0x0000BCF8 
	0x8C6384217BDF739D, 0x7BDF6B5B6B5B739D, 0x6B5B739D7BDF7BDF, 0x6B5B6B5B631939CF,  // 0x0000BD18 
	0x294B18C718C72109, 0x18C718C700000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000BD38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000002109, 0x210918C718C72109,  // 0x0000BD58 
	0x39CF4A536B5B8421, 0x84218421739D6B5B, 0x7BDF7BDF84216B5B, 0x6B5B739D7BDF8421,  // 0x0000BD78 
	0x7BDF739D739D739D, 0x739D7BDF7BDF6B5B, 0x7BDF8C638C637BDF, 0x63194A53318D294B,  // 0x0000BD98 
	0x210918C718C718C7, 0x18C7000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000BDB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x18C72109210918C7,  // 0x0000BDD8 
	0x2109294B52956B5B, 0x6B5B63194A536B5B, 0x84217BDF63196B5B, 0x739D842184216B5B,  // 0x0000BDF8 
	0x63196B5B739D7BDF, 0x7BDF7BDF7BDF739D, 0x8421739D6B5B4A53, 0x39CF294B210918C7,  // 0x0000BE18 
	0x18C718C718C718C7, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000BE38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000021092109,  // 0x0000BE58 
	0x210921092109318D, 0x39CF4A53739D8421, 0x7BDF6B5B5AD76B5B, 0x7BDF739D739D6319,  // 0x0000BE78 
	0x631963196B5B7BDF, 0x7BDF63195AD76B5B, 0x631952954211294B, 0x210918C718C718C7,  // 0x0000BE98 
	0x18C718C700000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000BEB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00000000000018C7,  // 0x0000BED8 
	0x210918C718C718C7, 0x2109294B318D4211, 0x39CF39CF4A536319, 0x5AD752954A534A53,  // 0x0000BEF8 
	0x5295529563196B5B, 0x529542114A534A53, 0x39CF318D294B2109, 0x18C718C718C718C7,  // 0x0000BF18 
	0x18C7000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000BF38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000BF58 
	0x0000210921092109, 0x210921092109294B, 0x294B318D294B294B, 0x294B318D294B318D,  // 0x0000BF78 
	0x39CF39CF421139CF, 0x318D318D318D2109, 0x18C718C718C718C7, 0x18C718C718C70000,  // 0x0000BF98 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000BFB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000BFD8 
	0x00000000000018C7, 0x2109210918C718C7, 0x2109210921092109, 0x210918C718C72109,  // 0x0000BFF8 
	0x2109210918C718C7, 0x18C718C718C718C7, 0x18C718C718C718C7, 0x18C7000000000000,  // 0x0000C018 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000C038 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000C058 
	0x0000000000000000, 0x000018C718C72109, 0x2109210921092109, 0x18C718C7210918C7,  // 0x0000C078 
	0x18C718C7210918C7, 0x18C718C718C718C7, 0x18C718C718C70000, 0x0000000000000000,  // 0x0000C098 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000C0B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000C0D8 
	0x0000000000000000, 0x0000000000000000, 0x0000210921092109, 0x2109210921092109,  // 0x0000C0F8 
	0x18C718C721092109, 0x2109210921090000, 0x0000000000000000, 0x0000000000000000,  // 0x0000C118 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000C138 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000C158 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000C178 
	0x2109000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000C198 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000C1B8 
};

u64 _tokinoma_room_0_tex_0000C1D8[] = 
{
	0x18C718C72109318D, 0x4A535AD77BDF8421, 0x7BDF739D7BDF8421, 0x739D739D94A5AD6B,  // 0x0000C1D8 
	0x8421318D2109318D, 0x318D318D39CF5AD7, 0x7BDF84219CE7A529, 0x94A58421739D739D,  // 0x0000C1F8 
	0x7BDF94A58C638C63, 0x8C63294B39CF4211, 0x739DA529B5ADB5AD, 0xAD6BB5ADB5AD9CE7,  // 0x0000C218 
	0x84218C6394A58C63, 0x94A5A5299CE794A5, 0x94A5A529A5298C63, 0x6319739D5AD76319,  // 0x0000C238 
	0x000010852109318D, 0x4A5352955AD7739D, 0x739D7BDF739D739D, 0x739D6B5B8421A529,  // 0x0000C258 
	0x9CE78C63294B2109, 0x294B318D318D39CF, 0x4A535AD78C63A529, 0xAD6BA5298C637BDF,  // 0x0000C278 
	0x842194A594A58C63, 0x8C637BDF318D39CF, 0x4211631994A5B5AD, 0xAD6BA529AD6B9CE7,  // 0x0000C298 
	0x94A57BDF8C638421, 0x842194A58C6394A5, 0x9CE7A529AD6B9CE7, 0x6B5B6B5B4A530000,  // 0x0000C2B8 
	0x000018C721092109, 0x4A53631952955AD7, 0x52959CE7739D739D, 0x6B5B6B5B739D7BDF,  // 0x0000C2D8 
	0x8C6394A584217BDF, 0x21092109294B294B, 0x318D39CF4A53739D, 0x9CE7AD6B9CE794A5,  // 0x0000C2F8 
	0x84219CE78C639CE7, 0x7BDF84214211318D, 0x39CF4A535AD78C63, 0xB5ADB5ADA529A529,  // 0x0000C318 
	0x8C638C6384217BDF, 0x739D8C6394A594A5, 0x9CE794A5A52994A5, 0x739D63194A530000,  // 0x0000C338 
	0x000018C721092109, 0x4A53631963195AD7, 0x4A5394A5B5AD739D, 0x631963196319739D,  // 0x0000C358 
	0x84218C638C638C63, 0x8C638421529539CF, 0x318D318D318D39CF, 0x42115AD784219CE7,  // 0x0000C378 
	0x94A5739D9CE794A5, 0x842184218421294B, 0x39CF42114A536B5B, 0x9CE7BDEFB5ADA529,  // 0x0000C398 
	0x84219CE7739D7BDF, 0x7BDF8C638C6394A5, 0x8C638C638C638421, 0x631952955AD70000,  // 0x0000C3B8 
	0x000018C718C72109, 0x4A536B5B739D6319, 0x39CF6B5BB5ADAD6B, 0x7BDF63195AD7739D,  // 0x0000C3D8 
	0x842194A594A58C63, 0x8421842184217BDF, 0x6B5B631952955AD7, 0x7BDFA529A5299CE7,  // 0x0000C3F8 
	0x63198421AD6B8C63, 0x84218C639CE7318D, 0x318D39CF42115295, 0x7BDFB5ADBDEFB5AD,  // 0x0000C418 
	0x9CE7842184218421, 0x842194A594A594A5, 0x94A59CE78C63739D, 0x63194A5363190000,  // 0x0000C438 
	0x000018C721092109, 0x39CF5AD7739D739D, 0x4A5352959CE7B5AD, 0xB5AD9CE76B5B6B5B,  // 0x0000C458 
	0x7BDF7BDF94A594A5, 0x842194A594A58C63, 0x842194A58C638421, 0x8C639CE79CE7739D,  // 0x0000C478 
	0x8421AD6BB5AD8421, 0x7BDF94A58C634211, 0x318D39CF42114211, 0x739D9CE7B5ADBDEF,  // 0x0000C498 
	0x9CE77BDF7BDF8421, 0x84218C6394A5A529, 0x9CE794A594A58421, 0x5295529542110000,  // 0x0000C4B8 
	0x000018C718C72109, 0x294B5295739D7BDF, 0x39CF318D6B5BB5AD, 0xBDEFB5ADAD6B9CE7,  // 0x0000C4D8 
	0x94A58C638C638C63, 0x94A59CE7A529A529, 0x94A594A59CE78C63, 0x7BDF84217BDF94A5,  // 0x0000C4F8 
	0xAD6BB5AD9CE76319, 0x84218C638C63739D, 0x318D39CF39CF4211, 0x5AD78C63AD6BB5AD,  // 0x0000C518 
	0x94A584217BDF8421, 0x8C6394A58C639CE7, 0xA52994A58C636319, 0x39CF39CF39CF0000,  // 0x0000C538 
	0x000018C718C72109, 0x294B4A538C638C63, 0x6319210942118C63, 0xAD6BBDEFBDEFBDEF,  // 0x0000C558 
	0xAD6B9CE78C638C63, 0x94A59CE79CE79CE7, 0x94A58C6394A58421, 0x84218C639CE7A529,  // 0x0000C578 
	0xBDEFA5298C635295, 0x8C637BDF7BDF739D, 0x318D39CF39CF4A53, 0x6B5B7BDFA529AD6B,  // 0x0000C598 
	0x8C637BDF739D7BDF, 0x9CE79CE78C6394A5, 0xA5299CE784214A53, 0x421142116B5B0000,  // 0x0000C5B8 
	0x0000000018C72109, 0x2109318D739D9CE7, 0x842118C7318D6B5B, 0x94A5AD6BB5ADB5AD,  // 0x0000C5D8 
	0xB5ADB5ADBDEFBDEF, 0xB5ADAD6BAD6B9CE7, 0xA529A5299CE78C63, 0x8C639CE7A529BDEF,  // 0x0000C5F8 
	0xB5AD94A56B5B5AD7, 0x94A58421739D739D, 0x294B318D39CF39CF, 0x6B5B7BDF94A594A5,  // 0x0000C618 
	0x7BDF6B5B84218421, 0xAD6BAD6BA5298C63, 0x9CE79CE7739D39CF, 0x4A535AD700000000,  // 0x0000C638 
	0x0000000018C718C7, 0x2109294B631994A5, 0x9CE7294B294B4211, 0x7BDF9CE7A529A529,  // 0x0000C658 
	0xAD6BAD6BA529A529, 0xAD6BA52994A59CE7, 0x9CE79CE794A594A5, 0x9CE7A529B5ADBDEF,  // 0x0000C678 
	0xA5298C6363196319, 0x9CE79CE794A58C63, 0x294B318D39CF39CF, 0x5AD784218C638C63,  // 0x0000C698 
	0x84216B5B84218421, 0xAD6BA529A52994A5, 0x9CE78C635AD75295, 0x4A535AD700000000,  // 0x0000C6B8 
	0x00000000210918C7, 0x2109210942117BDF, 0x8C63529518C72109, 0x4A53739D8C639CE7,  // 0x0000C6D8 
	0xA529B5ADAD6BA529, 0xA529A529B5ADB5AD, 0xAD6BB5ADB5ADB5AD, 0xB5ADBDEFBDEFA529,  // 0x0000C6F8 
	0x94A57BDF52957BDF, 0x842194A58C638421, 0x294B318D39CF39CF, 0x4A537BDF739D739D,  // 0x0000C718 
	0x739D631984215AD7, 0x94A594A59CE794A5, 0x8C63739D52954211, 0x4211631900000000,  // 0x0000C738 
	0x0000000000002109, 0x18C72109318D4A53, 0x7BDF7BDF18C718C7, 0x318D4A53739D8421,  // 0x0000C758 
	0xA529AD6BAD6BAD6B, 0xB5ADB5ADBDEFB5AD, 0xB5ADBDEFBDEFBDEF, 0xC631BDEF9CE794A5,  // 0x0000C778 
	0x8C635AD75AD78421, 0x739D63196B5B6319, 0x318D39CF39CF39CF, 0x39CF4A5352956B5B,  // 0x0000C798 
	0x4A536B5B739D5295, 0x7BDF842184217BDF, 0x739D4A53318D39CF, 0x39CF000000000000,  // 0x0000C7B8 
	0x00000000000018C7, 0x18C718C7294B39CF, 0x7BDF94A542111085, 0x2109294B52956319,  // 0x0000C7D8 
	0x7BDF94A594A59CE7, 0xA529B5ADB5ADAD6B, 0xBDEFC631C631C631, 0xB5AD84217BDF8421,  // 0x0000C7F8 
	0x63194211739D9CE7, 0x8C636B5B63195AD7, 0x294B421139CF39CF, 0x42114A535AD74A53,  // 0x0000C818 
	0x39CF631942115AD7, 0x7BDF739D6B5B5AD7, 0x4A53294B2109318D, 0x4211000000000000,  // 0x0000C838 
	0x00000000000018C7, 0x210918C72109294B, 0x529584217BDF2109, 0x18C7210939CF4211,  // 0x0000C858 
	0x63197BDF739D7BDF, 0x8C63AD6BAD6B9CE7, 0x9CE7AD6BB5ADAD6B, 0x94A5739D6B5B5295,  // 0x0000C878 
	0x318D39CF94A59CE7, 0xAD6B94A584215295, 0x318D39CF318D39CF, 0x421139CF4211294B,  // 0x0000C898 
	0x318D4211294B5AD7, 0x84217BDF739D6319, 0x39CF2109318D39CF, 0x0000000000000000,  // 0x0000C8B8 
	0x0000000000000000, 0x18C7210918C72109, 0x39CF631984215AD7, 0x18C72109294B39CF,  // 0x0000C8D8 
	0x318D5AD752955295, 0x52956B5B84217BDF, 0x739D739D6B5B4A53, 0x42114A534211294B,  // 0x0000C8F8 
	0x318D94A5A529A529, 0xAD6BAD6B9CE74211, 0x318D318D318D318D, 0x318D318D294B294B,  // 0x0000C918 
	0x294B210921098C63, 0x8421739D63195295, 0x2109294B42114A53, 0x0000000000000000,  // 0x0000C938 
	0x0000000000000000, 0x0000210921092109, 0x294B4A53739D7BDF, 0x421118C72109318D,  // 0x0000C958 
	0x318D318D421139CF, 0x421139CF4A535AD7, 0x5AD75295318D294B, 0x294B294B2109318D,  // 0x0000C978 
	0x9CE79CE7A5299CE7, 0x94A594A59CE7318D, 0x39CF318D318D39CF, 0x318D294B294B318D,  // 0x0000C998 
	0x318D294B5AD794A5, 0x84215AD74A53294B, 0x2109421142110000, 0x0000000000000000,  // 0x0000C9B8 
	0x0000000000000000, 0x000018C7210918C7, 0x2109318D5AD77BDF, 0x7BDF7BDF21092109,  // 0x0000C9D8 
	0x2109294B294B294B, 0x39CF39CF318D318D, 0x318D2109294B294B, 0x294B294B318D8421,  // 0x0000C9F8 
	0x9CE794A58C638421, 0x8C6394A55AD7318D, 0x318D294B294B318D, 0x318D210918C72109,  // 0x0000CA18 
	0x2109318D94A59CE7, 0x84216B5B42112109, 0x318D2109294B0000, 0x0000000000000000,  // 0x0000CA38 
	0x0000000000000000, 0x0000000021092109, 0x18C7210939CF5AD7, 0x63196B5B6B5B294B,  // 0x0000CA58 
	0x2109210921092109, 0x18C7294B21092109, 0x2109210921092109, 0x2109318D7BDF8421,  // 0x0000CA78 
	0x94A594A58C6394A5, 0x8C6394A542114211, 0x318D39CF294B294B, 0x2109210921092109,  // 0x0000CA98 
	0x210984219CE794A5, 0x739D4211294B39CF, 0x294B18C700000000, 0x0000000000000000,  // 0x0000CAB8 
	0x0000000000000000, 0x0000000018C718C7, 0x210918C7294B39CF, 0x5AD763196B5B6B5B,  // 0x0000CAD8 
	0x4211294B18C718C7, 0x18C718C718C718C7, 0x210921092109318D, 0x63198C638C638421,  // 0x0000CAF8 
	0x84218421842194A5, 0x9CE752954A535295, 0x39CF39CF318D294B, 0x210921092109294B,  // 0x0000CB18 
	0x739D84218C63739D, 0x5AD74A534211294B, 0x18C718C700000000, 0x0000000000000000,  // 0x0000CB38 
	0x0000000000000000, 0x00000000000018C7, 0x18C721092109294B, 0x42115AD752956319,  // 0x0000CB58 
	0x5AD75AD74A5339CF, 0x294B294B2109318D, 0x318D4A536B5B8C63, 0x84218C6394A594A5,  // 0x0000CB78 
	0x84217BDF8C638C63, 0x7BDF318D5AD75AD7, 0x318D318D294B294B, 0x294B294B21094211,  // 0x0000CB98 
	0x6B5B63195AD75295, 0x4A53318D18C718C7, 0x18C7000000000000, 0x0000000000000000,  // 0x0000CBB8 
	0x0000000000000000, 0x0000000000000000, 0x18C7210921092109, 0x294B4A535AD76B5B,  // 0x0000CBD8 
	0x7BDF739D739D7BDF, 0x84219CE794A58C63, 0x8C637BDF7BDF8C63, 0x8C6384218C639CE7,  // 0x0000CBF8 
	0x94A58C6394A57BDF, 0x5AD7318D4A534A53, 0x318D318D294B2109, 0x2109294B6319739D,  // 0x0000CC18 
	0x739D63194A534211, 0x2109210921092109, 0x0000000000000000, 0x0000000000000000,  // 0x0000CC38 
	0x0000000000000000, 0x0000000000000000, 0x0000210918C718C7, 0x18C7294B4A535AD7,  // 0x0000CC58 
	0x84218C637BDF739D, 0x739D739D8C638C63, 0x8C6384217BDF7BDF, 0x8C638C638C6394A5,  // 0x0000CC78 
	0xA5299CE78C636319, 0x5AD7318D294B294B, 0x2109210921092109, 0x4A535AD76B5B6B5B,  // 0x0000CC98 
	0x63194A53294B18C7, 0x2109210921090000, 0x0000000000000000, 0x0000000000000000,  // 0x0000CCB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000021092109, 0x18C718C72109318D,  // 0x0000CCD8 
	0x4A53739D739D739D, 0x7BDF6B5B7BDF8C63, 0x7BDF84218421739D, 0x7BDF842184218C63,  // 0x0000CCF8 
	0x9CE78C6352954211, 0x294B210921092109, 0x2109294B42115AD7, 0x739D7BDF6B5B5295,  // 0x0000CD18 
	0x294B210918C72109, 0x294B18C700000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000CD38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000002109, 0x210918C718C72109,  // 0x0000CD58 
	0x318D42115AD76B5B, 0x8421739D6B5B6B5B, 0x6B5B6319739D6B5B, 0x6B5B739D739D739D,  // 0x0000CD78 
	0x84217BDF52954211, 0x5295529563194A53, 0x6319739D739D6B5B, 0x739D63194211294B,  // 0x0000CD98 
	0x21092109210918C7, 0x18C7000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000CDB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x18C7210918C718C7,  // 0x0000CDD8 
	0x18C7210939CF5295, 0x6B5B631952956319, 0x739D631952955AD7, 0x63197BDF7BDF6B5B,  // 0x0000CDF8 
	0x6B5B7BDF7BDF8C63, 0x84218C6394A57BDF, 0x739D6B5B5AD74211, 0x4211318D21092109,  // 0x0000CE18 
	0x18C718C718C718C7, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000CE38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000210921092109,  // 0x0000CE58 
	0x18C721092109294B, 0x39CF4A5363196B5B, 0x6B5B631952955295, 0x5AD763197BDF6319,  // 0x0000CE78 
	0x63196B5B6B5B8421, 0x8C63739D6B5B739D, 0x6B5B52954211294B, 0x210918C718C718C7,  // 0x0000CE98 
	0x18C718C718C70000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000CEB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00000000000018C7,  // 0x0000CED8 
	0x210918C718C718C7, 0x2109294B318D39CF, 0x39CF39CF42114211, 0x42114A5352955AD7,  // 0x0000CEF8 
	0x529552955AD76319, 0x739D6B5B5AD75295, 0x4211318D294B2109, 0x18C718C718C718C7,  // 0x0000CF18 
	0x18C7000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000CF38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000CF58 
	0x18C7210918C72109, 0x2109210921092109, 0x294B318D294B294B, 0x294B318D318D39CF,  // 0x0000CF78 
	0x39CF39CF39CF39CF, 0x318D39CF39CF2109, 0x18C718C718C718C7, 0x18C718C718C718C7,  // 0x0000CF98 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000CFB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000CFD8 
	0x0000000018C718C7, 0x2109210918C718C7, 0x2109210921092109, 0x210918C718C72109,  // 0x0000CFF8 
	0x2109210918C718C7, 0x18C7210918C718C7, 0x18C7210918C718C7, 0x18C7000000000000,  // 0x0000D018 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D038 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D058 
	0x0000000000000000, 0x000018C718C72109, 0x21092109210918C7, 0x18C718C7210918C7,  // 0x0000D078 
	0x18C718C7210918C7, 0x18C718C718C718C7, 0x18C718C718C70000, 0x0000000000000000,  // 0x0000D098 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D0B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D0D8 
	0x0000000000000000, 0x0000000000000000, 0x18C718C721092109, 0x2109210921092109,  // 0x0000D0F8 
	0x18C718C721092109, 0x2109210921090000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D118 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D138 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D158 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000021092109,  // 0x0000D178 
	0x2109000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D198 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D1B8 
};

u64 _tokinoma_room_0_tex_0000D1D8[] = 
{
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D1D8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000008421,  // 0x0000D1F8 
	0x8C638C6300000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D218 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D238 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D258 
	0x0000000000000000, 0x0000000000000000, 0x739D84217BDF6319, 0x6B5B7BDF7BDF8421,  // 0x0000D278 
	0x8421842184217BDF, 0x8421842184218C63, 0x0000000000000000, 0x0000000000000000,  // 0x0000D298 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D2B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D2D8 
	0x0000000000000000, 0x00006319739D6B5B, 0x7BDF7BDF6B5B6B5B, 0x63196B5B7BDF8421,  // 0x0000D2F8 
	0x8C638C638C638C63, 0x94A59CE7A529A529, 0xA5299CE78C630000, 0x0000000000000000,  // 0x0000D318 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D338 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D358 
	0x000000000000739D, 0x739D739D6319739D, 0x7BDF63196B5B7BDF, 0x842194A59CE7A529,  // 0x0000D378 
	0x9CE79CE7AD6BA529, 0xA5299CE79CE79CE7, 0x9CE7A529A529A529, 0x94A5000000000000,  // 0x0000D398 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D3B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D3D8 
	0x529552956B5B8421, 0x7BDF739D6B5B7BDF, 0x8421739D84219CE7, 0xA529A529A529AD6B,  // 0x0000D3F8 
	0xA529B5ADB5ADB5AD, 0xAD6BAD6BA5299CE7, 0x94A58C638C6394A5, 0xA529A52994A50000,  // 0x0000D418 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D438 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000004211,  // 0x0000D458 
	0x529563196B5B6B5B, 0x739D8C638C6394A5, 0x9CE78C638C639CE7, 0xAD6B9CE79CE7A529,  // 0x0000D478 
	0xA529A529AD6BB5AD, 0xB5ADAD6BAD6BAD6B, 0xAD6BAD6BA52994A5, 0x8C638C6394A58C63,  // 0x0000D498 
	0x8C63000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D4B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00005AD739CF5295,  // 0x0000D4D8 
	0x6B5B5AD763197BDF, 0x94A59CE7A529B5AD, 0xA5298C637BDF8421, 0x94A59CE794A594A5,  // 0x0000D4F8 
	0x94A59CE7A529AD6B, 0xAD6BA529A529A529, 0xA529AD6BB5ADB5AD, 0xAD6BA52994A5A529,  // 0x0000D518 
	0x8C6394A500000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D538 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x5AD739CF5295739D,  // 0x0000D558 
	0x5AD76319739D8421, 0x9CE7A529AD6BB5AD, 0xAD6BA5298C638421, 0x8C639CE79CE79CE7,  // 0x0000D578 
	0x94A59CE79CE7A529, 0xAD6B9CE7A529A529, 0x94A594A5AD6BAD6B, 0xAD6BAD6BAD6B9CE7,  // 0x0000D598 
	0x9CE794A594A58421, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D5B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000006319, 0x39CF52957BDF8421,  // 0x0000D5D8 
	0x7BDF739D7BDF7BDF, 0x7BDF8C639CE7AD6B, 0x9CE7A5299CE7A529, 0x94A594A5A5299CE7,  // 0x0000D5F8 
	0x9CE79CE79CE794A5, 0xAD6B9CE79CE79CE7, 0x9CE78C6394A5A529, 0xAD6BB5ADAD6BAD6B,  // 0x0000D618 
	0xA5299CE794A58C63, 0x94A5000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D638 
	0x0000000000000000, 0x0000000000000000, 0x000000005AD739CF, 0x42115AD794A58C63,  // 0x0000D658 
	0x8C637BDF739D7BDF, 0x739D739D8C6394A5, 0x9CE7A529B5ADB5AD, 0xB5AD739D94A5A529,  // 0x0000D678 
	0x9CE794A59CE79CE7, 0xA529A529A529A529, 0x9CE79CE79CE7A529, 0xAD6BAD6BA529A529,  // 0x0000D698 
	0xAD6BAD6B9CE78C63, 0x8C6394A500000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D6B8 
	0x0000000000000000, 0x0000000000000000, 0x0000421139CF318D, 0x5AD77BDFA5299CE7,  // 0x0000D6D8 
	0x9CE79CE78421739D, 0x6B5B8C639CE79CE7, 0xAD6BAD6B9CE78421, 0x63198C6394A59CE7,  // 0x0000D6F8 
	0xA529A5299CE79CE7, 0x9CE7AD6BAD6BAD6B, 0x9CE79CE7A529AD6B, 0xAD6BA529A529A529,  // 0x0000D718 
	0xAD6BB5ADAD6B8C63, 0x8C6394A594A50000, 0x0000000000000000, 0x0000000000000000,  // 0x0000D738 
	0x0000000000000000, 0x0000000000000000, 0x18C7318D39CF4211, 0x84218C639CE79CE7,  // 0x0000D758 
	0xA5298C63739D7BDF, 0x842194A5A529AD6B, 0xAD6B8421739D5AD7, 0xA529AD6BA52994A5,  // 0x0000D778 
	0x9CE79CE794A59CE7, 0xA529AD6BAD6BAD6B, 0xA5299CE79CE7AD6B, 0xAD6BAD6BAD6BA529,  // 0x0000D798 
	0x9CE79CE7A529AD6B, 0x84219CE78C638C63, 0x0000000000000000, 0x0000000000000000,  // 0x0000D7B8 
	0x0000000000000000, 0x00000000000039CF, 0x210939CF4211739D, 0x9CE7A52994A594A5,  // 0x0000D7D8 
	0x7BDF631963196319, 0x94A59CE7B5AD8C63, 0x739D739D6319739D, 0x94A59CE794A594A5,  // 0x0000D7F8 
	0x9CE79CE794A594A5, 0x9CE794A59CE78421, 0x8C638C638C6394A5, 0x9CE79CE7A5299CE7,  // 0x0000D818 
	0x94A58C639CE7AD6B, 0x9CE7A529A5298C63, 0x94A5000000000000, 0x0000000000000000,  // 0x0000D838 
	0x0000000000000000, 0x0000000000002109, 0x318D4A5352957BDF, 0x9CE7A52994A56319,  // 0x0000D858 
	0x5AD75AD76B5B8C63, 0xB5ADB5ADAD6B6B5B, 0x5AD7739D5AD78C63, 0x8C638C6394A594A5,  // 0x0000D878 
	0x9CE7AD6BA52994A5, 0x84217BDF739D6B5B, 0x94A594A58C638C63, 0x94A59CE79CE79CE7,  // 0x0000D898 
	0x9CE79CE7A529AD6B, 0xAD6BA529A5299CE7, 0x8C63000000000000, 0x0000000000000000,  // 0x0000D8B8 
	0x0000000000000000, 0x00000000294B2109, 0x4A53529563198421, 0x94A5A52994A54211,  // 0x0000D8D8 
	0x6319739D8C63AD6B, 0xBDEFB5AD9CE76B5B, 0x5AD75AD784218C63, 0x8C638C638C639CE7,  // 0x0000D8F8 
	0x9CE79CE7739D6B5B, 0x7BDF7BDF7BDF8C63, 0x94A59CE79CE7A529, 0x9CE7A52994A58C63,  // 0x0000D918 
	0x8C639CE7A529AD6B, 0xAD6BB5ADAD6BA529, 0x94A594A500000000, 0x0000000000000000,  // 0x0000D938 
	0x0000000000000000, 0x00004A5318C7318D, 0x42116319739D739D, 0x94A59CE7294B4A53,  // 0x0000D958 
	0x6B5B8421A529B5AD, 0xBDEFA52994A56B5B, 0x5AD76B5B8C638C63, 0x94A594A58C638C63,  // 0x0000D978 
	0x8C6352956319739D, 0x84218C638C638C63, 0x94A59CE7AD6BAD6B, 0xAD6BAD6BAD6B9CE7,  // 0x0000D998 
	0x842194A59CE7AD6B, 0xAD6BB5ADB5ADA529, 0x9CE78C638C630000, 0x0000000000000000,  // 0x0000D9B8 
	0x0000000000000000, 0x0000294B18C74211, 0x39CF6B5B7BDF739D, 0x8C636319318D4A53,  // 0x0000D9D8 
	0x5AD78421B5ADBDEF, 0xBDEF9CE78C636319, 0x6B5B842184218C63, 0x8C638C638C638421,  // 0x0000D9F8 
	0x39CF5295739D7BDF, 0x739D7BDF7BDF94A5, 0x9CE7AD6BB5ADB5AD, 0xB5ADAD6BAD6B9CE7,  // 0x0000DA18 
	0x94A594A594A59CE7, 0xAD6BAD6BB5ADAD6B, 0x9CE79CE78C630000, 0x0000000000000000,  // 0x0000DA38 
	0x0000000000000000, 0x4211210939CF4211, 0x52957BDF7BDF7BDF, 0x8421210939CF39CF,  // 0x0000DA58 
	0x5AD78C63B5ADBDEF, 0xB5AD9CE77BDF6319, 0x7BDF94A57BDF7BDF, 0x8421842184215295,  // 0x0000DA78 
	0x39CF63198421739D, 0x7BDF6B5B7BDF8C63, 0x9CE7AD6BAD6BAD6B, 0xB5ADAD6BA5299CE7,  // 0x0000DA98 
	0x9CE794A594A58C63, 0x9CE7A529AD6BAD6B, 0x94A594A58C638421, 0x0000000000000000,  // 0x0000DAB8 
	0x0000000000000000, 0x2109210942114A53, 0x5AD76B5B84218421, 0x7BDF2109294B2109,  // 0x0000DAD8 
	0x6319A529BDEFBDEF, 0xAD6B8C637BDF6B5B, 0x7BDF84218C637BDF, 0x7BDF842152952109,  // 0x0000DAF8 
	0x318D6B5B6B5B739D, 0x6B5B5AD75AD76319, 0x739D7BDF84218421, 0x94A58C6384218C63,  // 0x0000DB18 
	0x8C6394A57BDF8C63, 0xA529A5299CE7A529, 0x8C6394A59CE78421, 0x739D000000000000,  // 0x0000DB38 
	0x0000000000004A53, 0x2109318D52956319, 0x6B5B6B5B842194A5, 0x4A53210921092109,  // 0x0000DB58 
	0x6B5BA529B5ADB5AD, 0x9CE78421739D7BDF, 0x84217BDF84218C63, 0x84216B5B318D2109,  // 0x0000DB78 
	0x318D5AD76B5B6B5B, 0x6B5B52954A534211, 0x421142114A535AD7, 0x631963196B5B5AD7,  // 0x0000DB98 
	0x5AD784216B5B94A5, 0xA52994A5AD6B94A5, 0x94A58C639CE78C63, 0x739D000000000000,  // 0x0000DBB8 
	0x00000000000039CF, 0x18C739CF6B5B739D, 0x739D6B5B739D94A5, 0x4211210918C7318D,  // 0x0000DBD8 
	0x631994A5AD6BAD6B, 0x94A58C637BDF7BDF, 0x84218C638C6394A5, 0x8C63294B39CF294B,  // 0x0000DBF8 
	0x318D4A534A534211, 0x39CF39CF39CF4211, 0x4211421142114211, 0x39CF39CF318D318D,  // 0x0000DC18 
	0x52955AD77BDF9CE7, 0x94A584219CE79CE7, 0x9CE794A594A594A5, 0x8421000000000000,  // 0x0000DC38 
	0x00000000294B39CF, 0x210942117BDF8421, 0x6B5B63196B5B8C63, 0x210921092109318D,  // 0x0000DC58 
	0x5AD78C6394A594A5, 0x7BDF84217BDF8421, 0x7BDF84218C638421, 0x739D294B4211318D,  // 0x0000DC78 
	0x39CF421139CF318D, 0x39CF39CF39CF39CF, 0x318D318D318D318D, 0x318D39CF39CF39CF,  // 0x0000DC98 
	0x42114A53842194A5, 0x84217BDF842194A5, 0x94A59CE794A58421, 0x739D6B5B00000000,  // 0x0000DCB8 
	0x00000000294B4211, 0x2109318D739D9CE7, 0x7BDF6319739D8C63, 0x210918C72109294B,  // 0x0000DCD8 
	0x4A5384218C63739D, 0x6B5B84218C63739D, 0x739D84217BDF7BDF, 0x5295294B4211318D,  // 0x0000DCF8 
	0x39CF39CF39CF39CF, 0x318D318D318D294B, 0x294B294B294B318D, 0x318D318D318D39CF,  // 0x0000DD18 
	0x42115AD76319739D, 0x739D6B5B842194A5, 0x94A594A594A57BDF, 0x6B5B6B5B00000000,  // 0x0000DD38 
	0x0000000039CF39CF, 0x210939CF6B5B9CE7, 0x8C63739D6B5B8421, 0x318D18C72109294B,  // 0x0000DD58 
	0x39CF739D8C638421, 0x842194A584216B5B, 0x739D7BDF7BDF7BDF, 0x39CF210939CF39CF,  // 0x0000DD78 
	0x39CF39CF318D294B, 0x294B294B294B294B, 0x318D318D318D318D, 0x294B294B294B294B,  // 0x0000DD98 
	0x318D39CF421139CF, 0x52955AD77BDF8421, 0x8C638C638C637BDF, 0x6B5B6B5B00000000,  // 0x0000DDB8 
	0x000018C7318D39CF, 0x294B52956B5B8C63, 0x9CE77BDF7BDF8421, 0x4A5318C72109294B,  // 0x0000DDD8 
	0x318D6319842194A5, 0x8C637BDF6B5B6B5B, 0x8C63A5299CE794A5, 0x294B294B39CF39CF,  // 0x0000DDF8 
	0x318D294B294B294B, 0x294B5AD784218421, 0x8C638C639CE794A5, 0x739D739D39CF294B,  // 0x0000DE18 
	0x294B294B318D318D, 0x318D52957BDF739D, 0x94A59CE7A5298C63, 0x842184216B5B0000,  // 0x0000DE38 
	0x000018C7318D294B, 0x39CF52957BDF8421, 0x94A5842184218C63, 0x4A5321092109294B,  // 0x0000DE58 
	0x318D42117BDF8421, 0x7BDF739D7BDF6B5B, 0x8C639CE794A58421, 0x294B294B318D318D,  // 0x0000DE78 
	0x294B294B39CF7BDF, 0xAD6BA529AD6BA529, 0x8C63842194A59CE7, 0xA5299CE79CE79CE7,  // 0x0000DE98 
	0x739D39CF294B318D, 0x39CF739D739D739D, 0x9CE79CE7A52994A5, 0x8C63842163190000,  // 0x0000DEB8 
	0x00002109294B2109, 0x39CF631984218421, 0x84218C637BDF8421, 0x739D21092109294B,  // 0x0000DED8 
	0x294B318D4A536B5B, 0x84219CE794A57BDF, 0x8C639CE79CE7739D, 0x39CF318D294B294B,  // 0x0000DEF8 
	0x39CF8C63A5299CE7, 0x9CE79CE79CE7A529, 0x94A5739D84219CE7, 0x9CE79CE794A59CE7,  // 0x0000DF18 
	0x9CE794A54A53318D, 0x39CF42115295739D, 0xAD6BA5299CE7A529, 0x8C636B5B4A530000,  // 0x0000DF38 
	0x000018C7294B2109, 0x318D52957BDF8421, 0x7BDF84217BDF7BDF, 0x8421318D2109294B,  // 0x0000DF58 
	0x318D318D42116B5B, 0x9CE79CE794A58C63, 0x84219CE794A56B5B, 0x318D39CF39CF4A53,  // 0x0000DF78 
	0x84218C639CE79CE7, 0x94A59CE79CE79CE7, 0x94A58421739D8421, 0x94A59CE79CE79CE7,  // 0x0000DF98 
	0xA5299CE79CE78C63, 0x318D39CF63198C63, 0xAD6BAD6BB5ADAD6B, 0x842152954A530000,  // 0x0000DFB8 
	0x000018C7294B294B, 0x318D52955AD7739D, 0x7BDF84217BDF7BDF, 0x842152952109294B,  // 0x0000DFD8 
	0x318D39CF39CF5295, 0x84218C6394A594A5, 0x84219CE794A5739D, 0x318D39CF63199CE7,  // 0x0000DFF8 
	0x8C637BDF7BDF8421, 0x8C638C6384218421, 0x8C638C6384217BDF, 0x84218C638C638C63,  // 0x0000E018 
	0x8C6394A59CE7A529, 0x8C634A535AD77BDF, 0xAD6BB5ADB5ADAD6B, 0x7BDF631963190000,  // 0x0000E038 
	0x000018C72109294B, 0x52955AD763196319, 0x739D842184217BDF, 0x8C638C634A532109,  // 0x0000E058 
	0x294B318D39CF4211, 0x63198C6384218C63, 0x842194A58C638C63, 0x318D631994A59CE7,  // 0x0000E078 
	0x94A594A56319318D, 0x6B5B7BDF8C639CE7, 0xA529AD6BAD6B9CE7, 0x8421739D739D7BDF,  // 0x0000E098 
	0x7BDF84218C639CE7, 0xA52994A539CF7BDF, 0x9CE7A5299CE794A5, 0x6B5B6B5B739D0000,  // 0x0000E0B8 
	0x000018C721092109, 0x4A536B5B6B5B6319, 0x6B5B7BDF84217BDF, 0x7BDF94A57BDF318D,  // 0x0000E0D8 
	0x294B294B318D39CF, 0x42116B5B84218C63, 0xA5299CE794A59CE7, 0x52958C638C639CE7,  // 0x0000E0F8 
	0x9CE7A529A5294A53, 0x318D39CF6B5B8C63, 0xAD6BBDEFBDEFB5AD, 0xB5AD84216319739D,  // 0x0000E118 
	0x8C638C63842194A5, 0xA529AD6B8C6394A5, 0x9CE78C638C638421, 0x739D739D739D0000,  // 0x0000E138 
	0x18C718C72109294B, 0x39CF6B5B7BDF7BDF, 0x6B5B739D8C638421, 0x739D842194A56B5B,  // 0x0000E158 
	0x2109294B318D318D, 0x39CF42116B5B8421, 0x9CE79CE78C639CE7, 0x94A594A5739D8421,  // 0x0000E178 
	0x94A59CE794A58C63, 0x39CF318D42116319, 0xAD6BBDEFB5ADB5AD, 0xB5ADB5ADA5297BDF,  // 0x0000E198 
	0x8C6394A594A594A5, 0xA529A5299CE794A5, 0x94A58C6394A58C63, 0x6B5B5AD763196B5B,  // 0x0000E1B8 
};

u64 _tokinoma_room_0_tex_0000E1D8[] = 
{
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E1D8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000008421,  // 0x0000E1F8 
	0x8C638C6300000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E218 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E238 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E258 
	0x0000000000000000, 0x0000000000000000, 0x739D84217BDF6319, 0x6B5B7BDF7BDF8421,  // 0x0000E278 
	0x8421842184217BDF, 0x842184218C638421, 0x0000000000000000, 0x0000000000000000,  // 0x0000E298 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E2B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E2D8 
	0x0000000000000000, 0x00006B5B739D6B5B, 0x7BDF7BDF6B5B739D, 0x63196B5B7BDF8421,  // 0x0000E2F8 
	0x8C638C6384218C63, 0x94A59CE79CE7A529, 0xA5299CE794A50000, 0x0000000000000000,  // 0x0000E318 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E338 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E358 
	0x000000005295739D, 0x7BDF6B5B6319739D, 0x7BDF6B5B6B5B7BDF, 0x84219CE79CE7A529,  // 0x0000E378 
	0xA529A529A529A529, 0xA5299CE79CE79CE7, 0x9CE7A529A529A529, 0x94A5000000000000,  // 0x0000E398 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E3B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E3D8 
	0x529552956B5B8421, 0x739D739D739D7BDF, 0x8421739D84219CE7, 0xA529A529A529AD6B,  // 0x0000E3F8 
	0xA529B5ADB5ADB5AD, 0xAD6BAD6BA5299CE7, 0x9CE78C638C6394A5, 0x9CE7A52994A50000,  // 0x0000E418 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E438 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000004211,  // 0x0000E458 
	0x529563196B5B6B5B, 0x7BDF8C6394A594A5, 0x9CE78C638C639CE7, 0xAD6B9CE79CE7A529,  // 0x0000E478 
	0x9CE7A529AD6BB5AD, 0xB5ADAD6BAD6BAD6B, 0xB5ADAD6BA52994A5, 0x8C638C6394A58C63,  // 0x0000E498 
	0x8C63000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E4B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00005AD739CF5295,  // 0x0000E4D8 
	0x6B5B5AD763197BDF, 0x94A59CE7AD6BB5AD, 0xA5298C6384218421, 0x94A59CE794A594A5,  // 0x0000E4F8 
	0x94A594A5A529AD6B, 0xAD6BA529A529A529, 0xA529AD6BB5ADB5AD, 0xAD6BA52994A5A529,  // 0x0000E518 
	0x8C6394A58C630000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E538 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x5AD739CF5295739D,  // 0x0000E558 
	0x5AD763197BDF7BDF, 0x9CE7AD6BAD6BB5AD, 0xAD6BA5298C638421, 0x8C6384217BDF7BDF,  // 0x0000E578 
	0x8C6394A59CE7A529, 0xAD6B9CE7A529A529, 0x94A594A5AD6BAD6B, 0xAD6BAD6BAD6B9CE7,  // 0x0000E598 
	0x9CE794A594A58421, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E5B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000006319, 0x421152957BDF8421,  // 0x0000E5D8 
	0x7BDF739D7BDF7BDF, 0x7BDF8C63A529AD6B, 0xAD6BAD6BA5298421, 0x5AD7631994A5AD6B,  // 0x0000E5F8 
	0xAD6BAD6BA5299CE7, 0xAD6B9CE79CE79CE7, 0x9CE78C6394A5A529, 0xAD6BB5ADAD6BAD6B,  // 0x0000E618 
	0xA5299CE794A58C63, 0x94A5000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E638 
	0x0000000000000000, 0x0000000000000000, 0x000000005AD739CF, 0x4211631994A594A5,  // 0x0000E658 
	0x8C637BDF739D7BDF, 0x739D7BDF8C639CE7, 0xAD6BA5298C634211, 0x6B5B94A5A529A529,  // 0x0000E678 
	0xAD6BAD6BA529AD6B, 0x9CE79CE7A529A529, 0x9CE79CE79CE7A529, 0xAD6BAD6BA529A529,  // 0x0000E698 
	0xAD6BAD6B9CE78C63, 0x8C6394A500000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E6B8 
	0x0000000000000000, 0x0000000000000000, 0x00004211318D318D, 0x63197BDFA5299CE7,  // 0x0000E6D8 
	0x9CE79CE78C638421, 0x739D7BDF84218421, 0x9CE79CE7294B39CF, 0x8C639CE79CE7A529,  // 0x0000E6F8 
	0xA529AD6BAD6BA529, 0xA52994A5AD6BAD6B, 0x9CE79CE7A529AD6B, 0xAD6BA529A529A529,  // 0x0000E718 
	0xAD6BB5ADAD6B8C63, 0x8C638C638C630000, 0x0000000000000000, 0x0000000000000000,  // 0x0000E738 
	0x0000000000000000, 0x0000000000000000, 0x18C7318D42114A53, 0x84218C639CE79CE7,  // 0x0000E758 
	0xA529A5299CE794A5, 0x7BDF739D7BDF8C63, 0x8C636319210939CF, 0x7BDF8C63A529B5AD,  // 0x0000E778 
	0xB5ADB5ADAD6BA529, 0xA5299CE7A529AD6B, 0xA5299CE79CE7AD6B, 0xAD6BAD6BAD6BA529,  // 0x0000E798 
	0x9CE79CE7A529A529, 0x84219CE794A58421, 0x0000000000000000, 0x0000000000000000,  // 0x0000E7B8 
	0x0000000000000000, 0x00000000000039CF, 0x210939CF4A537BDF, 0x9CE7A52994A58C63,  // 0x0000E7D8 
	0x9CE79CE79CE794A5, 0x94A5842184217BDF, 0x739D4A532109318D, 0x52958421A529B5AD,  // 0x0000E7F8 
	0xB5ADB5ADA529A529, 0x9CE794A594A5A529, 0xA5299CE794A59CE7, 0xAD6BA529A5299CE7,  // 0x0000E818 
	0x94A58C639CE7A529, 0x9CE7A529A5298C63, 0x8C63000000000000, 0x0000000000000000,  // 0x0000E838 
	0x0000000000000000, 0x0000000039CF2109, 0x318D4A5352957BDF, 0xA529A52994A58421,  // 0x0000E858 
	0x94A59CE794A58C63, 0x94A57BDF7BDF7BDF, 0x7BDF318D294B318D, 0x4A53739D9CE7AD6B,  // 0x0000E878 
	0xAD6BAD6BAD6BAD6B, 0x94A58C6384219CE7, 0xA5299CE79CE7A529, 0xA529A5299CE794A5,  // 0x0000E898 
	0x9CE79CE7A529AD6B, 0xAD6BAD6BA5299CE7, 0x8C6394A500000000, 0x0000000000000000,  // 0x0000E8B8 
	0x0000000000000000, 0x00000000294B2109, 0x4A53529563198421, 0x9CE7A529A5297BDF,  // 0x0000E8D8 
	0x739D94A58C6394A5, 0x8C63842184218421, 0x7BDF39CF294B294B, 0x39CF4A53739D8421,  // 0x0000E8F8 
	0x9CE79CE7A529A529, 0x8C638C638421A529, 0x9CE794A59CE7A529, 0xA52984217BDF8C63,  // 0x0000E918 
	0x9CE79CE7A529AD6B, 0xAD6BB5ADAD6BA529, 0x94A594A500000000, 0x0000000000000000,  // 0x0000E938 
	0x0000000000000000, 0x0000421118C7318D, 0x42116319739D739D, 0x94A59CE794A55295,  // 0x0000E958 
	0x8421A5299CE794A5, 0x9CE79CE794A594A5, 0x8421318D294B318D, 0x39CF42114A535AD7,  // 0x0000E978 
	0x739D84218C638421, 0x7BDF739D631994A5, 0x94A58C6394A594A5, 0x8C6352956B5B8C63,  // 0x0000E998 
	0x94A59CE7A529AD6B, 0xAD6BB5ADB5ADA529, 0x9CE78C638C630000, 0x0000000000000000,  // 0x0000E9B8 
	0x0000000000000000, 0x0000294B21094211, 0x39CF6B5B7BDF739D, 0x8C6394A54A535295,  // 0x0000E9D8 
	0x94A5BDEFA52994A5, 0x9CE7A5299CE79CE7, 0x8C635AD7294B318D, 0x318D39CF42114211,  // 0x0000E9F8 
	0x5AD76B5B739D6B5B, 0x6B5B529563198421, 0x8C638C639CE794A5, 0x529563198C63AD6B,  // 0x0000EA18 
	0x9CE78C63A529A529, 0xAD6BAD6BB5ADAD6B, 0x9CE79CE78C630000, 0x0000000000000000,  // 0x0000EA38 
	0x0000000000000000, 0x39CF18C739CF4211, 0x52957BDF7BDF7BDF, 0x8C63318D42115AD7,  // 0x0000EA58 
	0x9CE7B5ADBDEF9CE7, 0x94A59CE79CE79CE7, 0x94A58C63294B318D, 0x318D39CF42114A53,  // 0x0000EA78 
	0x5AD763195AD74A53, 0x529539CF7BDF739D, 0x6B5B739D8C635295, 0x4A537BDF94A5A529,  // 0x0000EA98 
	0xA5298C638C63A529, 0xAD6BA529A529AD6B, 0x94A594A58C638C63, 0x0000000000000000,  // 0x0000EAB8 
	0x0000000000000000, 0x210921094A534A53, 0x5AD76B5B84218421, 0x7BDF318D42115AD7,  // 0x0000EAD8 
	0x94A5B5ADBDEFA529, 0x9CE79CE794A58C63, 0x8C6384217BDF318D, 0x318D318D318D39CF,  // 0x0000EAF8 
	0x39CF39CF39CF318D, 0x294B7BDF84217BDF, 0x631963194A5339CF, 0x631984219CE7AD6B,  // 0x0000EB18 
	0xAD6B9CE78C6394A5, 0xAD6BA5299CE7A529, 0x8C638C639CE78C63, 0x739D000000000000,  // 0x0000EB38 
	0x0000000000004A53, 0x2109318D52956319, 0x6B5B6B5B84218421, 0x294B421142116B5B,  // 0x0000EB58 
	0x9CE7B5ADBDEFAD6B, 0xAD6BA52994A58421, 0x7BDF7BDF8421739D, 0x318D318D318D318D,  // 0x0000EB78 
	0x318D318D318D39CF, 0x94A594A59CE794A5, 0x7BDF4211318D4A53, 0x6B5B8C63A529B5AD,  // 0x0000EB98 
	0xAD6BA529842194A5, 0xA529A529AD6B94A5, 0x94A58C639CE794A5, 0x739D000000000000,  // 0x0000EBB8 
	0x00000000000039CF, 0x18C742116B5B739D, 0x739D6B5B739D5AD7, 0x4A53421142117BDF,  // 0x0000EBD8 
	0x9CE7BDEFBDEFAD6B, 0xAD6BAD6BA5298421, 0x84218C638C638C63, 0x7BDF529542114211,  // 0x0000EBF8 
	0x318D4A534A5394A5, 0x9CE79CE79CE794A5, 0x739D39CF42115295, 0x6B5B94A5A529AD6B,  // 0x0000EC18 
	0xA529A52994A594A5, 0x9CE79CE79CE79CE7, 0x9CE794A594A594A5, 0x8421000000000000,  // 0x0000EC38 
	0x00000000294B39CF, 0x210942117BDF8421, 0x6B5B63196B5B318D, 0x529542114211739D,  // 0x0000EC58 
	0x9CE7B5ADB5ADAD6B, 0xB5ADB5ADAD6B9CE7, 0x8421842184218421, 0x8421739D6B5B6B5B,  // 0x0000EC78 
	0x6B5B8421842194A5, 0x9CE79CE79CE78421, 0x4211294B4A536319, 0x84218C639CE7A529,  // 0x0000EC98 
	0x9CE79CE79CE7A529, 0x84218C6394A594A5, 0x94A59CE794A58C63, 0x739D6B5B00000000,  // 0x0000ECB8 
	0x00000000318D4211, 0x2109318D739D9CE7, 0x739D63195AD74A53, 0x4211318D42116B5B,  // 0x0000ECD8 
	0x8C639CE7A529B5AD, 0xBDEFBDEFB5ADAD6B, 0x94A584217BDF7BDF, 0x8C638421739D6B5B,  // 0x0000ECF8 
	0x6B5B84219CE7A529, 0xA5299CE78C635295, 0x4A53294B4211739D, 0x94A58C6394A59CE7,  // 0x0000ED18 
	0xA529A529A529AD6B, 0x8C637BDF8C6394A5, 0x94A594A594A57BDF, 0x6B5B6B5B00000000,  // 0x0000ED38 
	0x00000000318D39CF, 0x210939CF6B5B9CE7, 0x8C636B5B318D5295, 0x421139CF4A535295,  // 0x0000ED58 
	0x6B5B7BDF8C63B5AD, 0xB5ADBDEFBDEFA529, 0x9CE784217BDF7BDF, 0x84219CE79CE78421,  // 0x0000ED78 
	0x7BDF8C639CE79CE7, 0xA52994A542114A53, 0x318D39CF4A538421, 0xAD6BA5298C638421,  // 0x0000ED98 
	0x84218C639CE7A529, 0x94A56B5B84218C63, 0x8C638C638C638421, 0x739D739D00000000,  // 0x0000EDB8 
	0x000018C7318D39CF, 0x294B5295739D8C63, 0x9CE74A5339CF318D, 0x318D318D42114211,  // 0x0000EDD8 
	0x42116319739D8421, 0x94A5AD6BB5ADAD6B, 0x8C638C638C639CE7, 0x9CE7AD6BAD6B9CE7,  // 0x0000EDF8 
	0x842194A58C639CE7, 0xAD6B739D4A534211, 0x318D39CF52957BDF, 0x94A58C637BDF6319,  // 0x0000EE18 
	0x63197BDF9CE7A529, 0x9CE7739D84219CE7, 0x94A59CE7A5298C63, 0x842184216B5B0000,  // 0x0000EE38 
	0x000018C7318D294B, 0x39CF52957BDF8421, 0x94A5210939CF318D, 0x318D318D39CF4211,  // 0x0000EE58 
	0x421142115AD76319, 0x739D94A5A529A529, 0x9CE784218C639CE7, 0x9CE7A529AD6BA529,  // 0x0000EE78 
	0x8C6394A59CE794A5, 0x739D4A5342114A53, 0x421142114A536319, 0x63197BDF6B5B4A53,  // 0x0000EE98 
	0x421152956B5B7BDF, 0x6B5B6B5B63199CE7, 0x9CE79CE7A52994A5, 0x8C63842163190000,  // 0x0000EEB8 
	0x00002109294B2109, 0x39CF631984217BDF, 0x6B5B2109318D318D, 0x318D318D39CF39CF,  // 0x0000EED8 
	0x39CF39CF39CF4A53, 0x5AD7739D94A59CE7, 0x9CE77BDF94A59CE7, 0x94A59CE79CE79CE7,  // 0x0000EEF8 
	0x84219CE7AD6B94A5, 0x52954A535AD76319, 0x4A53421142114A53, 0x42114A534211318D,  // 0x0000EF18 
	0x39CF4211421139CF, 0x39CF4A534A5394A5, 0xAD6BA5299CE7A529, 0x8C636B5B52950000,  // 0x0000EF38 
	0x000018C721092109, 0x318D52957BDF7BDF, 0x6B5B2109294B318D, 0x318D318D39CF39CF,  // 0x0000EF58 
	0x39CF39CF39CF39CF, 0x42114A535AD76B5B, 0x739D7BDF9CE7A529, 0x9CE794A59CE79CE7,  // 0x0000EF78 
	0x8C638C639CE75295, 0x6319529539CF4211, 0x421139CF39CF39CF, 0x318D318D318D39CF,  // 0x0000EF98 
	0x39CF39CF318D318D, 0x318D318D294B94A5, 0xAD6BAD6BAD69AD6B, 0x842152954A530000,  // 0x0000EFB8 
	0x000018C72109294B, 0x39CF52955AD7739D, 0x7BDF5295294B294B, 0x294B294B294B318D,  // 0x0000EFD8 
	0x318D318D318D39CF, 0x39CF39CF39CF4211, 0x4A53739D94A59CE7, 0x9CE7842194A59CE7,  // 0x0000EFF8 
	0x8C638C63739D39CF, 0x5295421139CF39CF, 0x39CF39CF318D318D, 0x318D318D318D318D,  // 0x0000F018 
	0x318D318D318D294B, 0x294B318D6B5BA529, 0xAD6BB5ADB5ADAD6B, 0x7BDF631963190000,  // 0x0000F038 
	0x000018C72109294B, 0x52955AD763196319, 0x6B5B842184216319, 0x4A5352954211294B,  // 0x0000F058 
	0x294B294B294B294B, 0x294B318D318D318D, 0x39CF39CF4A536B5B, 0x842194A59CE7A529,  // 0x0000F078 
	0x9CE794A54A53318D, 0x421139CF39CF39CF, 0x42114211318D318D, 0x318D318D318D318D,  // 0x0000F098 
	0x318D421142115AD7, 0x8421AD6BA529A529, 0x9CE7A5299CE794A5, 0x739D6B5B739D0000,  // 0x0000F0B8 
	0x18C718C72109294B, 0x4A536B5B6B5B6319, 0x6B5B7BDF84217BDF, 0x7BDF94A58C638421,  // 0x0000F0D8 
	0x6B5B631963195295, 0x39CF294B294B294B, 0x294B318D318D318D, 0x529563198C639CE7,  // 0x0000F0F8 
	0x9CE7A5295AD7294B, 0x318D318D318D294B, 0x294B294B294B4211, 0x52954A534A536319,  // 0x0000F118 
	0x84218C63842194A5, 0xA529AD6BA529A529, 0x9CE78C638C638421, 0x7BDF6B5B739D0000,  // 0x0000F138 
	0x18C718C72109294B, 0x39CF6B5B7BDF7BDF, 0x6B5B739D8C637BDF, 0x739D842194A5AD6B,  // 0x0000F158 
	0x94A5842184218421, 0x7BDF8421739D739D, 0x739D84218C6394A5, 0x94A594A5739D739D,  // 0x0000F178 
	0x7BDF9CE794A594A5, 0x94A573996B5B8C63, 0x9CE79CE784217BDF, 0x7BDF739D6B5B739D,  // 0x0000F198 
	0x84218C6394A594A5, 0xA529A5299CE794A5, 0x94A58C6394A594A5, 0x6B5B5AD763196B5B,  // 0x0000F1B8 
};

u64 _tokinoma_room_0_tex_0000F1D8[] = 
{
	0x18C718C72109318D, 0x4A5363197BDF8421, 0x739D6B5B7BDF8421, 0x739D739D9CE7AD6B,  // 0x0000F1D8 
	0xA52994A584218421, 0x8C6394A58C638421, 0x84218C639CE794A5, 0x94A58421739D739D,  // 0x0000F1F8 
	0x7BDF94A58C638C63, 0x8C63739D739D8C63, 0x94A58C6384217BDF, 0x739D739D739D739D,  // 0x0000F218 
	0x7BDF8C6394A58C63, 0x9CE7A5299CE794A5, 0x94A5A529A5298C63, 0x6319739D5AD75AD7,  // 0x0000F238 
	0x000018C72109318D, 0x4A5352955AD7739D, 0x739D6B5B739D739D, 0x739D739D8C63AD6B,  // 0x0000F258 
	0xA52994A58C637BDF, 0x7BDF84218C638C63, 0x8C638C639CE7A529, 0xA529A5298C637BDF,  // 0x0000F278 
	0x842194A59CE78C63, 0x8C637BDF6B5B8421, 0x8C638C638C638C63, 0x84217BDF84218421,  // 0x0000F298 
	0x7BDF739D8C638421, 0x842194A58C639CE7, 0x9CE7A529AD6B9CE7, 0x6B5B6B5B4A530000,  // 0x0000F2B8 
	0x000018C721092109, 0x4A53631952955AD7, 0x6B5B63196319739D, 0x739D739D84218C63,  // 0x0000F2D8 
	0x9CE794A58C638C63, 0x7BDF739D7BDF8421, 0x8421842194A5A529, 0xA529A5299CE794A5,  // 0x0000F2F8 
	0x84219CE7A5298C63, 0x7BDF84217BDF739D, 0x8C6394A58C638C63, 0x8C638C639CE7AD6B,  // 0x0000F318 
	0x9CE7842184217BDF, 0x739D8C6394A594A5, 0x9CE794A5A52994A5, 0x739D63194A530000,  // 0x0000F338 
	0x000018C721092109, 0x4A53631963195AD7, 0x6B5B739D739D6B5B, 0x63197BDF8C63AD6B,  // 0x0000F358 
	0xA529AD6BB5AD9CE7, 0x9CE794A58C638421, 0x8421739D6B5B7BDF, 0x8C639CE784216B5B,  // 0x0000F378 
	0x9CE79CE79CE794A5, 0x8C63842184218421, 0x94A59CE794A56319, 0x84219CE7A5299CE7,  // 0x0000F398 
	0x9CE7AD6BA5298C63, 0x7BDF84218C6394A5, 0x8C638C638C638421, 0x631952955AD70000,  // 0x0000F3B8 
	0x000018C718C72109, 0x52956B5B739D6319, 0x6319739D7BDF6319, 0x63197BDF9CE7A529,  // 0x0000F3D8 
	0xAD6BB5ADB5ADB5AD, 0xA5299CE784217BDF, 0x739D6B5B6B5B7BDF, 0x94A594A552958C63,  // 0x0000F3F8 
	0xB5AD94A58C638C63, 0x94A58C639CE79CE7, 0x94A59CE75AD7739D, 0x842194A594A5A529,  // 0x0000F418 
	0xA5299CE7A529A529, 0x94A594A594A594A5, 0x94A59CE78C63739D, 0x6B5B4A5363190000,  // 0x0000F438 
	0x000018C721092109, 0x39CF5AD7739D739D, 0x6B5B739D5AD74211, 0x5295739D9CE7BDEF,  // 0x0000F458 
	0xBDEFBDEFBDEFB5AD, 0xAD6B9CE79CE78C63, 0x8C6394A58C638421, 0x8C636B5B52959CE7,  // 0x0000F478 
	0xBDEFA52994A59CE7, 0x9CE794A594A594A5, 0x9CE7739D42117BDF, 0x739D94A594A5A529,  // 0x0000F498 
	0xB5ADAD6B9CE794A5, 0x94A58C6394A59CE7, 0x9CE794A594A58421, 0x5295529542110000,  // 0x0000F4B8 
	0x000018C718C72109, 0x294B5295739D7BDF, 0x739D6B5B318D318D, 0x5295739DA529B5AD,  // 0x0000F4D8 
	0xBDEFC631C631B5AD, 0xAD6BA52994A5A529, 0x94A594A59CE78C63, 0x739D318D4A538421,  // 0x0000F4F8 
	0xB5AD9CE794A58C63, 0x94A594A594A594A5, 0x9CE74A534A536B5B, 0x7BDF7BDF8421AD6B,  // 0x0000F518 
	0xBDEFB5ADA52994A5, 0x8C638C638C639CE7, 0xAD6B94A58C636B5B, 0x39CF421139CF0000,  // 0x0000F538 
	0x000018C718C72109, 0x294B52958C638C63, 0x8C63631921092109, 0x5295739D9CE7AD6B,  // 0x0000F558 
	0xB5ADBDEFB5ADAD6B, 0xA52994A57BDF9CE7, 0x94A594A594A58C63, 0x739D318D4A538C63,  // 0x0000F578 
	0xB5ADA52994A58C63, 0x8C637BDF7BDF8C63, 0x7BDF318D39CF5AD7, 0x7BDF739D84219CE7,  // 0x0000F598 
	0xB5ADA5299CE79CE7, 0x8C638C638C6394A5, 0xA5299CE784215295, 0x421142116B5B0000,  // 0x0000F5B8 
	0x0000000018C72109, 0x2109318D739D9CE7, 0x94A5739D21092109, 0x39CF631984219CE7,  // 0x0000F5D8 
	0xAD6BAD6B9CE794A5, 0x8C63739D739D8C63, 0x94A5842184218421, 0x39CF318D6319A529,  // 0x0000F5F8 
	0xBDEFB5ADA5298C63, 0x94A58C63739D8421, 0x6B5B318D39CF4211, 0x63197BDF84218C63,  // 0x0000F618 
	0x94A58C638C6394A5, 0x8C637BDF94A58C63, 0x9CE79CE7739D39CF, 0x4A535AD700000000,  // 0x0000F638 
	0x0000000018C718C7, 0x2109294B6B5B9CE7, 0x9CE7739D294B2109, 0x318D52956B5B7BDF,  // 0x0000F658 
	0x8C6384218C638C63, 0x7BDF7BDF739D8C63, 0x94A594A58C63739D, 0x39CF5295739DA529,  // 0x0000F678 
	0xBDEFBDEFAD6B9CE7, 0x94A59CE794A58C63, 0x739D318D39CF4211, 0x42116319739D739D,  // 0x0000F698 
	0x7BDF842184218C63, 0x8C637BDF8C6394A5, 0x9CE78C635AD75295, 0x42115AD700000000,  // 0x0000F6B8 
	0x00000000210918C7, 0x2109210942117BDF, 0x8C637BDF18C72109, 0x294B318D42115AD7,  // 0x0000F6D8 
	0x6B5B7BDF7BDF739D, 0x84217BDF7BDF7BDF, 0x94A58C63739D5295, 0x42115AD78421AD6B,  // 0x0000F6F8 
	0xC631BDEFAD6BA529, 0x84218C638C638421, 0x8421294B318D39CF, 0x39CF42115AD76319,  // 0x0000F718 
	0x6B5B6B5B7BDF8421, 0x739D42118C6394A5, 0x8C63739D52954211, 0x42115AD700000000,  // 0x0000F738 
	0x0000000018C72109, 0x18C72109318D5295, 0x7BDF8C63294B2109, 0x2109318D318D39CF,  // 0x0000F758 
	0x5295631963196319, 0x739D7BDF63196B5B, 0x7BDF8421842139CF, 0x421163198C63AD6B,  // 0x0000F778 
	0xBDEFBDEFB5ADA529, 0x94A563196B5B739D, 0x7BDF294B318D318D, 0x39CF39CF42114A53,  // 0x0000F798 
	0x5AD76319739D6319, 0x318D39CF84217BDF, 0x739D5295318D318D, 0x39CF000000000000,  // 0x0000F7B8 
	0x00000000000018C7, 0x18C718C7294B39CF, 0x7BDF94A57BDF18C7, 0x2109294B318D318D,  // 0x0000F7D8 
	0x318D318D39CF4A53, 0x42114A536B5B739D, 0x739D9CE75295318D, 0x42115295739D9CE7,  // 0x0000F7F8 
	0xBDEFBDEFB5ADA529, 0x94A56B5B63196B5B, 0x739D6319294B318D, 0x318D318D318D318D,  // 0x0000F818 
	0x318D421139CF2109, 0x210963196B5B5AD7, 0x4A53294B294B318D, 0x4211000000000000,  // 0x0000F838 
	0x00000000000018C7, 0x210918C72109294B, 0x5AD784218C634211, 0x18C72109294B318D,  // 0x0000F858 
	0x39CF39CF318D318D, 0x318D52958C638421, 0x7BDF94A5318D318D, 0x42116319739D94A5,  // 0x0000F878 
	0xBDEFC631BDEFAD6B, 0x94A5842184217BDF, 0x7BDF84214211294B, 0x294B294B318D294B,  // 0x0000F898 
	0x294B294B21092109, 0x4211739D739D6319, 0x39CF2109294B39CF, 0x4A53000000000000,  // 0x0000F8B8 
	0x0000000000000000, 0x18C7210918C7294B, 0x39CF631984218421, 0x4A53210921092109,  // 0x0000F8D8 
	0x294B21092109294B, 0x529594A58C638C63, 0x739D739D318D294B, 0x42115AD77BDF9CE7,  // 0x0000F8F8 
	0xB5ADBDEFBDEFA529, 0x94A58C6394A58C63, 0x8C638C6384215AD7, 0x294B210921092109,  // 0x0000F918 
	0x210918C718C75295, 0x8421739D63195295, 0x210921094A534A53, 0x0000000000000000,  // 0x0000F938 
	0x0000000000000000, 0x0000210918C72109, 0x294B5295739D7BDF, 0x7BDF739D5295318D,  // 0x0000F958 
	0x39CF39CF4A537BDF, 0x8C638C6384218421, 0x6B5B4211294B39CF, 0x42115295739D8C63,  // 0x0000F978 
	0xAD6BAD6BAD6B9CE7, 0x7BDF94A57BDF9CE7, 0x94A58C638C638C63, 0x7BDF5295318D39CF,  // 0x0000F998 
	0x39CF5AD77BDF94A5, 0x84215AD74A53294B, 0x2109421142110000, 0x0000000000000000,  // 0x0000F9B8 
	0x0000000000000000, 0x000018C7210918C7, 0x210939CF63197BDF, 0x84218C6384217BDF,  // 0x0000F9D8 
	0x84218C638C638421, 0x8C6384218421739D, 0x6B5B4A53318D4211, 0x631963196B5B8C63,  // 0x0000F9F8 
	0xAD6B9CE79CE78C63, 0x739D8C63842194A5, 0x94A59CE794A594A5, 0xA5299CE784218421,  // 0x0000FA18 
	0x94A5A529A5299CE7, 0x84216B5B42112109, 0x318D210921090000, 0x0000000000000000,  // 0x0000FA38 
	0x0000000000000000, 0x0000000021092109, 0x18C7210942115AD7, 0x63196B5B84217BDF,  // 0x0000FA58 
	0x84218C638C638C63, 0x8C638C6384218421, 0x6B5B39CF318D318D, 0x5AD77BDF6319739D,  // 0x0000FA78 
	0x8C6394A59CE794A5, 0x7BDF8C638C6394A5, 0x94A594A594A58C63, 0x94A594A594A58421,  // 0x0000FA98 
	0x8C639CE79CE794A5, 0x7BDF4211294B39CF, 0x318D18C700000000, 0x0000000000000000,  // 0x0000FAB8 
	0x0000000000000000, 0x0000000018C718C7, 0x210918C7294B4211, 0x63196319739D7BDF,  // 0x0000FAD8 
	0x6B5B739D84218C63, 0x94A594A594A594A5, 0x421139CF318D318D, 0x42116B5B52955295,  // 0x0000FAF8 
	0x6319739D94A59CE7, 0x8C6394A594A594A5, 0x94A58C638C638421, 0x84218C638C638C63,  // 0x0000FB18 
	0x842184218C637BDF, 0x5AD74A534211294B, 0x18C718C700000000, 0x0000000000000000,  // 0x0000FB38 
	0x0000000000000000, 0x00000000000018C7, 0x18C721092109294B, 0x4A535AD75AD76319,  // 0x0000FB58 
	0x631963197BDF8C63, 0x8C6394A594A58C63, 0x294B318D318D318D, 0x39CF421139CF318D,  // 0x0000FB78 
	0x39CF4A5363197BDF, 0x8C639CE794A58C63, 0x8C638C637BDF7BDF, 0x7BDF84218421739D,  // 0x0000FB98 
	0x6B5B63195AD75295, 0x5295318D18C718C7, 0x18C7000000000000, 0x0000000000000000,  // 0x0000FBB8 
	0x0000000000000000, 0x0000000000000000, 0x2109210921092109, 0x294B4A535AD76B5B,  // 0x0000FBD8 
	0x7BDF7BDF7BDF8421, 0x84219CE79CE77BDF, 0x2109294B294B294B, 0x294B294B294B294B,  // 0x0000FBF8 
	0x294B318D318D294B, 0x42116B5B6B5B7BDF, 0x8C6394A594A58421, 0x7BDF7BDF739D739D,  // 0x0000FC18 
	0x739D63194A5339CF, 0x210918C721092109, 0x0000000000000000, 0x0000000000000000,  // 0x0000FC38 
	0x0000000000000000, 0x0000000000000000, 0x0000210918C718C7, 0x2109294B4A535AD7,  // 0x0000FC58 
	0x84218C637BDF7BDF, 0x7BDF7BDF8C638C63, 0x21092109294B294B, 0x294B210921092109,  // 0x0000FC78 
	0x210921092109294B, 0x294B294B42115295, 0x739D739D739D7BDF, 0x739D6B5B6B5B6B5B,  // 0x0000FC98 
	0x63195295294B18C7, 0x2109210921090000, 0x0000000000000000, 0x0000000000000000,  // 0x0000FCB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000021092109, 0x18C718C7210939CF,  // 0x0000FCD8 
	0x52957BDF739D739D, 0x7BDF6B5B7BDF8C63, 0x5AD7210918C72109, 0x2109210921092109,  // 0x0000FCF8 
	0x2109210921092109, 0x210918C721096319, 0x739D6B5B63196B5B, 0x7BDF7BDF6B5B5295,  // 0x0000FD18 
	0x294B210918C72109, 0x294B18C700000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000FD38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000002109, 0x210918C718C72109,  // 0x0000FD58 
	0x318D4A536319739D, 0x8421739D6B5B6B5B, 0x6B5B5AD752954A53, 0x39CF4A5342114A53,  // 0x0000FD78 
	0x4A534A5342114A53, 0x739D7BDF7BDF739D, 0x739D7BDF7BDF739D, 0x739D63194A53318D,  // 0x0000FD98 
	0x21092109210918C7, 0x18C7000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000FDB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x18C7210918C718C7,  // 0x0000FDD8 
	0x2109210939CF5295, 0x6B5B631952956319, 0x6B5B5AD74A535AD7, 0x5AD77BDF739D6319,  // 0x0000FDF8 
	0x63197BDF84218C63, 0x8C638C6394A57BDF, 0x739D6B5B5AD74A53, 0x4211318D21092109,  // 0x0000FE18 
	0x18C718C718C718C7, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000FE38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000210921092109,  // 0x0000FE58 
	0x210921092109294B, 0x39CF4A5363196B5B, 0x6319631952955295, 0x5AD76319739D6319,  // 0x0000FE78 
	0x63196B5B6B5B8421, 0x94A5739D739D739D, 0x6B5B5AD74211294B, 0x210918C718C718C7,  // 0x0000FE98 
	0x18C718C718C70000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000FEB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00000000000018C7,  // 0x0000FED8 
	0x210918C718C718C7, 0x2109294B318D39CF, 0x39CF39CF42114A53, 0x4211421152955AD7,  // 0x0000FEF8 
	0x52955AD75AD76319, 0x739D6B5B5AD75295, 0x4A5339CF294B2109, 0x18C718C718C718C7,  // 0x0000FF18 
	0x18C7000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000FF38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000FF58 
	0x18C718C721092109, 0x18C721092109294B, 0x294B318D294B294B, 0x294B318D318D39CF,  // 0x0000FF78 
	0x39CF39CF39CF39CF, 0x39CF39CF318D294B, 0x210918C718C718C7, 0x18C718C718C718C7,  // 0x0000FF98 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000FFB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0000FFD8 
	0x0000000018C718C7, 0x210918C718C718C7, 0x2109210921092109, 0x210918C718C72109,  // 0x0000FFF8 
	0x2109210918C718C7, 0x18C7210918C718C7, 0x18C7210918C718C7, 0x18C7000000000000,  // 0x00010018 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00010038 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00010058 
	0x0000000000000000, 0x000018C718C72109, 0x21092109210918C7, 0x18C718C7210918C7,  // 0x00010078 
	0x18C718C718C718C7, 0x18C718C718C718C7, 0x18C718C718C70000, 0x0000000000000000,  // 0x00010098 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000100B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000100D8 
	0x0000000000000000, 0x0000000000000000, 0x18C718C721092109, 0x2109210921092109,  // 0x000100F8 
	0x210918C721092109, 0x2109210921092109, 0x0000000000000000, 0x0000000000000000,  // 0x00010118 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00010138 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00010158 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000021092109,  // 0x00010178 
	0x2109000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00010198 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000101B8 
};

u64 _tokinoma_room_0_tex_000101D8[] = 
{
	0x000010852109294B, 0x42115AD7739D8C63, 0x7BDF6B5B739D18C7, 0x21092109294B5295,  // 0x000101D8 
	0x5AD78421A529AD6B, 0xAD6BB5ADB5ADBDEF, 0xB5ADB5AD9CE7A529, 0xB5ADA529A5297BDF,  // 0x000101F8 
	0x7BDF39CF294B318D, 0x318D318D39CF39CF, 0x39CF421142116B5B, 0x7BDF8C638C638421,  // 0x00010218 
	0x8C638C636B5B6B5B, 0x52959CE79CE794A5, 0x94A5A5299CE78C63, 0x5AD76B5B52950000,  // 0x00010238 
	0x000010852109294B, 0x421152955AD76B5B, 0x739D6319529518C7, 0x21092109294B5295,  // 0x00010258 
	0x5295631994A5B5AD, 0xB5ADB5ADAD6BB5AD, 0xB5ADB5ADA529A529, 0xAD6B9CE7A5299CE7,  // 0x00010278 
	0x7BDF84215295294B, 0x318D294B39CF39CF, 0x39CF39CF42115AD7, 0x739D84218421739D,  // 0x00010298 
	0x739D7BDF5AD76319, 0x631994A594A59CE7, 0x9CE7A529A52994A5, 0x63196B5B4A530000,  // 0x000102B8 
	0x000018C718C72109, 0x42115AD75AD75295, 0x6B5B631952952109, 0x21092109294B4211,  // 0x000102D8 
	0x4A5352957BDFA529, 0xB5ADB5ADB5ADB5AD, 0xAD6BAD6B9CE7A529, 0xAD6BA529AD6B8C63,  // 0x000102F8 
	0x84219CE79CE77BDF, 0x39CF294B294B318D, 0x39CF39CF39CF39CF, 0x6B5B7BDF7BDF8421,  // 0x00010318 
	0x8C6384216B5B5295, 0x63198C6394A594A5, 0x94A594A5A5298C63, 0x6B5B5AD75AD70000,  // 0x00010338 
	0x000018C721092109, 0x42115AD763195AD7, 0x63196B5B529518C7, 0x18C718C7318D4211,  // 0x00010358 
	0x4A535AD7739D94A5, 0xA529B5ADBDEFAD6B, 0xAD6BAD6BA529B5AD, 0xA529A529AD6B9CE7,  // 0x00010378 
	0x8C6394A594A594A5, 0x7BDF318D294B318D, 0x318D39CF39CF39CF, 0x42115AD7739D8C63,  // 0x00010398 
	0x8C63631952954211, 0x63198C638C6394A5, 0x8C638C638C638421, 0x631952956B5B0000,  // 0x000103B8 
	0x000018C718C72109, 0x421163196B5B6319, 0x6319739D739D18C7, 0x18C72109294B318D,  // 0x000103D8 
	0x39CF4A536B5B8421, 0x94A5AD6BB5ADB5AD, 0xB5ADAD6BB5ADB5AD, 0x9CE7AD6BA5298C63,  // 0x000103F8 
	0x7BDF8C6384218C63, 0x94A58C63318D318D, 0x318D318D318D39CF, 0x39CF42116B5B8C63,  // 0x00010418 
	0x7BDF5AD739CF39CF, 0x842194A594A594A5, 0x94A594A58421739D, 0x5AD752956B5B0000,  // 0x00010438 
	0x000018C721092109, 0x318D52956B5B739D, 0x6B5B6B5B7BDF294B, 0x18C718C7294B318D,  // 0x00010458 
	0x318D39CF6B5B8C63, 0x94A59CE7B5ADB5AD, 0xB5ADBDEFB5ADAD6B, 0x8C638C6384218421,  // 0x00010478 
	0x739D7BDF8C6394A5, 0x9CE794A57BDF294B, 0x318D318D39CF39CF, 0x39CF4A536B5B739D,  // 0x00010498 
	0x631939CF42115295, 0x84218C6394A5A529, 0x9CE794A594A57BDF, 0x4A5352954A530000,  // 0x000104B8 
	0x000018C718C718C7, 0x294B4A53739D7BDF, 0x7BDF739D7BDF318D, 0x210918C7294B318D,  // 0x000104D8 
	0x318D318D5295739D, 0x84218C6394A5A529, 0xAD6BAD6BA5298C63, 0x739D7BDF63196B5B,  // 0x000104F8 
	0x6319739D94A594A5, 0x94A58C638C634A53, 0x318D39CF39CF39CF, 0x39CF42115AD75295,  // 0x00010518 
	0x42114A534A537BDF, 0x8C6394A58C63A529, 0xA52994A58C636319, 0x318D39CF42110000,  // 0x00010538 
	0x0000000018C72109, 0x210939CF84218C63, 0x8C637BDF7BDF5295, 0x210918C72109294B,  // 0x00010558 
	0x294B318D318D5295, 0x63198421842194A5, 0x94A584217BDF6319, 0x6B5B5AD752956B5B,  // 0x00010578 
	0x4A538C638C6394A5, 0x8C637BDF739D739D, 0x318D318D39CF39CF, 0x4A53529552954211,  // 0x00010598 
	0x42114A5342119CE7, 0x9CE79CE78C6394A5, 0xA52994A57BDF4A53, 0x42114A5300000000,  // 0x000105B8 
	0x0000000018C72109, 0x2109294B6B5B94A5, 0x94A594A58421739D, 0x210921092109294B,  // 0x000105D8 
	0x294B318D294B318D, 0x42114A536B5B739D, 0x739D4A5339CF4A53, 0x529539CF42116B5B,  // 0x000105F8 
	0x42117BDF7BDF8C63, 0x94A58421739D6319, 0x294B318D318D39CF, 0x52956B5B5AD739CF,  // 0x00010618 
	0x4A534A536B5BA529, 0xAD6BAD6B9CE78C63, 0xA5299CE763194211, 0x5295631900000000,  // 0x00010638 
	0x0000000018C718C7, 0x2109294B529594A5, 0xA529A52994A58421, 0x294B21092109294B,  // 0x00010658 
	0x294B318D318D318D, 0x318D318D39CF4211, 0x4211294B318D5295, 0x39CF318D4A535AD7,  // 0x00010678 
	0x63198C6384218C63, 0x9CE79CE794A5739D, 0x318D318D39CF39CF, 0x4A53529542115295,  // 0x00010698 
	0x5AD739CF8C63AD6B, 0xA529A529A52994A5, 0x9CE7842152955295, 0x52955AD700000000,  // 0x000106B8 
	0x00000000000018C7, 0x18C72109318D739D, 0x84219CE79CE78C63, 0x739D18C721092109,  // 0x000106D8 
	0x294B294B294B294B, 0x294B294B318D294B, 0x294B294B4211294B, 0x294B294B52954211,  // 0x000106F8 
	0x8421842184218421, 0x7BDF8C638C636319, 0x39CF421139CF4211, 0x4A53529542114211,  // 0x00010718 
	0x318D4A538C638C63, 0x94A594A59CE794A5, 0x84216B5B4A534211, 0x52956B5B00000000,  // 0x00010738 
	0x0000000000002109, 0x18C72109294B4A53, 0x739D94A59CE794A5, 0x8421318D18C72109,  // 0x00010758 
	0x21092109294B294B, 0x294B294B294B294B, 0x294B294B294B294B, 0x294B39CF318D7BDF,  // 0x00010778 
	0x94A5842184218421, 0x739D63196B5B5295, 0x42114A5339CF39CF, 0x4A53318D294B2109,  // 0x00010798 
	0x294B94A594A57BDF, 0x7BDF84217BDF7BDF, 0x6B5B4211318D318D, 0x4211000000000000,  // 0x000107B8 
	0x00000000000018C7, 0x210918C7210939CF, 0x739D94A594A594A5, 0x7BDF6319210918C7,  // 0x000107D8 
	0x21092109294B294B, 0x294B294B294B294B, 0x294B294B21092109, 0x294B318D42118C63,  // 0x000107F8 
	0x9CE79CE784219CE7, 0x94A5739D6319294B, 0x39CF5AD742114211, 0x39CF39CF318D18C7,  // 0x00010818 
	0x631994A58C638C63, 0x7BDF739D63195AD7, 0x39CF318D2109294B, 0x4A53000000000000,  // 0x00010838 
	0x0000000000000000, 0x210918C72109294B, 0x4A5384218C638C63, 0x8C63739D63192109,  // 0x00010858 
	0x18C7210921092109, 0x210921092109294B, 0x210921092109294B, 0x294B63199CE79CE7,  // 0x00010878 
	0x9CE7A5299CE79CE7, 0xAD6B94A55AD74211, 0x318D5AD74211318D, 0x294B294B210939CF,  // 0x00010898 
	0x9CE794A58C638421, 0x84217BDF739D5AD7, 0x39CF2109318D4211, 0x0000000000000000,  // 0x000108B8 
	0x0000000000000000, 0x18C7210918C72109, 0x318D631984218421, 0x842184218421739D,  // 0x000108D8 
	0x318D18C718C72109, 0x18C7210918C72109, 0x2109294B294B39CF, 0x7BDF9CE79CE7A529,  // 0x000108F8 
	0xA529A529A529A529, 0xA5299CE739CF5AD7, 0x318D421139CF294B, 0x210918C739CF94A5,  // 0x00010918 
	0xA529A52994A58C63, 0x7BDF6B5B5AD74A53, 0x18C739CF42115295, 0x0000000000000000,  // 0x00010938 
	0x0000000000000000, 0x000018C7210918C7, 0x294B4A53739D7BDF, 0x7BDF84217BDF6B5B,  // 0x00010958 
	0x6B5B6B5B4A53318D, 0x2109210921092109, 0x294B318D5AD78421, 0x94A58C6394A59CE7,  // 0x00010978 
	0xA5299CE79CE794A5, 0x8C635AD739CF6319, 0x39CF318D294B2109, 0x2109318D6B5B94A5,  // 0x00010998 
	0xA529A5299CE794A5, 0x7BDF5AD742112109, 0x2109318D42110000, 0x0000000000000000,  // 0x000109B8 
	0x0000000000000000, 0x000018C721092109, 0x18C7318D5AD77BDF, 0x842184218C637BDF,  // 0x000109D8 
	0x7BDF8C638C638421, 0x842184217BDF6B5B, 0x739D5AD76B5B739D, 0x8C638C638C6394A5,  // 0x000109F8 
	0x9CE794A58C638421, 0x63195AD75AD75295, 0x318D294B21092109, 0x318D8C638C638421,  // 0x00010A18 
	0x9CE7A529A5299CE7, 0x7BDF6319318D2109, 0x39CF294B21090000, 0x0000000000000000,  // 0x00010A38 
	0x0000000000000000, 0x0000000018C72109, 0x2109210939CF5295, 0x63196B5B7BDF8421,  // 0x00010A58 
	0x7BDF84218C638C63, 0x8C638C6384218421, 0x7BDF7BDF6B5B739D, 0x84218C638C638C63,  // 0x00010A78 
	0x8C6394A58C637BDF, 0x6B5B63195295318D, 0x294B210921094211, 0x94A59CE794A58C63,  // 0x00010A98 
	0x94A59CE79CE78C63, 0x739D39CF318D4211, 0x294B18C700000000, 0x0000000000000000,  // 0x00010AB8 
	0x0000000000000000, 0x00000000000018C7, 0x210918C7294B318D, 0x529563196B5B739D,  // 0x00010AD8 
	0x6B5B6B5B7BDF8C63, 0x94A594A594A594A5, 0x8C63842184218421, 0x842194A594A58421,  // 0x00010AF8 
	0x842184217BDF8421, 0x52954A53318D318D, 0x294B318D63198421, 0x84218C638C638C63,  // 0x00010B18 
	0x8421842184216B5B, 0x52954A5339CF2109, 0x18C7000000000000, 0x0000000000000000,  // 0x00010B38 
	0x0000000000000000, 0x0000000000000000, 0x18C721092109294B, 0x39CF5AD75AD76319,  // 0x00010B58 
	0x63196319739D8C63, 0x8C6394A594A594A5, 0x8C6384218C6394A5, 0x8C638C6394A594A5,  // 0x00010B78 
	0x739D84216B5B4211, 0x294B294B294B2109, 0x5AD77BDF7BDF7BDF, 0x842184217BDF739D,  // 0x00010B98 
	0x6B5B631952954A53, 0x4A532109210918C7, 0x0000000000000000, 0x0000000000000000,  // 0x00010BB8 
	0x0000000000000000, 0x0000000000000000, 0x18C7210921092109, 0x294B42115AD76B5B,  // 0x00010BD8 
	0x7BDF7BDF7BDF7BDF, 0x842194A59CE794A5, 0x8C637BDF7BDF8C63, 0x8C637BDF84215295,  // 0x00010BF8 
	0x421139CF294B2109, 0x210939CF5AD77BDF, 0x84218C638C638421, 0x7BDF7BDF6B5B739D,  // 0x00010C18 
	0x739D6B5B4A5339CF, 0x2109210918C718C7, 0x0000000000000000, 0x0000000000000000,  // 0x00010C38 
	0x0000000000000000, 0x0000000000000000, 0x0000210918C72109, 0x2109210942115AD7,  // 0x00010C58 
	0x84218C637BDF7BDF, 0x7BDF7BDF8C6394A5, 0x8C6384217BDF8421, 0x8421631939CF4A53,  // 0x00010C78 
	0x4A5352955AD76B5B, 0x739D7BDF84217BDF, 0x6B5B6B5B739D7BDF, 0x739D6B5B6B5B6B5B,  // 0x00010C98 
	0x5AD74211210918C7, 0x2109210918C70000, 0x0000000000000000, 0x0000000000000000,  // 0x00010CB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000021092109, 0x18C718C72109318D,  // 0x00010CD8 
	0x4A536B5B739D739D, 0x7BDF739D7BDF8C63, 0x7BDF7BDF8421739D, 0x739D739D7BDF7BDF,  // 0x00010CF8 
	0x94A594A58C638421, 0x8C637BDF739D739D, 0x739D6B5B6B5B739D, 0x7BDF7BDF6B5B4A53,  // 0x00010D18 
	0x294B18C718C72109, 0x210918C700000000, 0x0000000000000000, 0x0000000000000000,  // 0x00010D38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000002109, 0x2109210918C72109,  // 0x00010D58 
	0x294B39CF5AD76B5B, 0x8421739D6B5B6B5B, 0x739D6319739D6319, 0x6319739D739D6B5B,  // 0x00010D78 
	0x7BDF842184218421, 0x84218C638421739D, 0x739D7BDF739D6B5B, 0x6B5B5AD739CF294B,  // 0x00010D98 
	0x2109210918C718C7, 0x18C7000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00010DB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00002109210918C7,  // 0x00010DD8 
	0x18C72109318D4211, 0x631963194A536319, 0x739D631952955AD7, 0x6319739D7BDF6319,  // 0x00010DF8 
	0x6B5B7BDF84218C63, 0x8C638C638C638421, 0x739D631952954211, 0x39CF294B210918C7,  // 0x00010E18 
	0x18C718C718C70000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00010E38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000021092109,  // 0x00010E58 
	0x210918C721092109, 0x318D4A5363196B5B, 0x631963195AD75295, 0x5AD76319739D6319,  // 0x00010E78 
	0x63196B5B6B5B7BDF, 0x8C63739D6B5B739D, 0x6B5B529539CF294B, 0x210918C718C718C7,  // 0x00010E98 
	0x18C718C700000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00010EB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00000000000018C7,  // 0x00010ED8 
	0x18C7210918C718C7, 0x2109294B294B318D, 0x318D39CF39CF4211, 0x39CF421142115295,  // 0x00010EF8 
	0x4A53529552956319, 0x6B5B6B5B52954A53, 0x39CF318D21092109, 0x18C718C718C718C7,  // 0x00010F18 
	0x18C7000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00010F38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00010F58 
	0x0000210918C72109, 0x2109210921092109, 0x294B294B294B294B, 0x294B294B294B318D,  // 0x00010F78 
	0x39CF318D318D318D, 0x318D318D318D2109, 0x18C718C718C72109, 0x210918C718C70000,  // 0x00010F98 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00010FB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00010FD8 
	0x00000000000018C7, 0x21092109210918C7, 0x2109210921092109, 0x210918C718C72109,  // 0x00010FF8 
	0x18C718C718C718C7, 0x18C718C718C72109, 0x18C718C718C718C7, 0x18C7000000000000,  // 0x00011018 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011038 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011058 
	0x0000000000000000, 0x0000000018C718C7, 0x2109210921092109, 0x2109210921092109,  // 0x00011078 
	0x18C718C7210918C7, 0x18C718C718C718C7, 0x18C718C718C70000, 0x0000000000000000,  // 0x00011098 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000110B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000110D8 
	0x0000000000000000, 0x0000000000000000, 0x000018C721092109, 0x18C718C721092109,  // 0x000110F8 
	0x18C7210921092109, 0x2109210921090000, 0x0000000000000000, 0x0000000000000000,  // 0x00011118 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011138 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011158 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011178 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011198 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000111B8 
};

u64 _tokinoma_room_0_tex_000111D8[] = 
{
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000111D8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000111F8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011218 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011238 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011258 
	0x0000000000000000, 0x0000000000000000, 0x00007BDF8421739D, 0x63197BDF84218421,  // 0x00011278 
	0x842184217BDF7BDF, 0x7BDF84218C630000, 0x0000000000000000, 0x0000000000000000,  // 0x00011298 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000112B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000112D8 
	0x0000000000000000, 0x00000000739D739D, 0x7BDF8421739D739D, 0x6B5B6B5B739D8421,  // 0x000112F8 
	0x84218C638C638C63, 0x94A59CE79CE7A529, 0x9CE79CE700000000, 0x0000000000000000,  // 0x00011318 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011338 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011358 
	0x0000000000006319, 0x739D7BDF6319739D, 0x7BDF63196B5B739D, 0x7BDF94A594A59CE7,  // 0x00011378 
	0x9CE79CE7A529A529, 0x9CE79CE79CE79CE7, 0xA529A529A529A529, 0x8C63000000000000,  // 0x00011398 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000113B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000113D8 
	0x00004A5363197BDF, 0x8421739D6B5B7BDF, 0x8421739D7BDF9CE7, 0xA529A529AD6BAD6B,  // 0x000113F8 
	0xAD6BB5ADB5ADAD6B, 0xAD6BAD6BA5299CE7, 0x94A58C638C639CE7, 0xA529A52994A50000,  // 0x00011418 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011438 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011458 
	0x4A5363196B5B739D, 0x739D84218C638C63, 0x94A58C638C639CE7, 0xAD6B9CE79CE7A529,  // 0x00011478 
	0xA529A529AD6BB5AD, 0xB5ADAD6BAD6BAD6B, 0xAD6BA5299CE78C63, 0x8C6394A59CE794A5,  // 0x00011498 
	0x8C63000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000114B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000042114A53,  // 0x000114D8 
	0x6B5B631963197BDF, 0x94A59CE7A529AD6B, 0xA5298C6384218C63, 0x9CE79CE794A594A5,  // 0x000114F8 
	0x9CE79CE7A529AD6B, 0xAD6BA529A529A529, 0xAD6BB5ADB5ADB5AD, 0xA5299CE79CE79CE7,  // 0x00011518 
	0x8C6394A500000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011538 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x000042114A536319,  // 0x00011558 
	0x5AD76319739D8421, 0x9CE7A529AD6BB5AD, 0xAD6B9CE78C638421, 0x8C639CE79CE79CE7,  // 0x00011578 
	0x94A59CE79CE7A529, 0xAD6B9CE79CE79CE7, 0x9CE79CE7AD6BAD6B, 0xAD6BAD6BAD6B94A5,  // 0x00011598 
	0x9CE78C6394A50000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000115B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000006B5B, 0x42115295739D8421,  // 0x000115D8 
	0x739D739D7BDF7BDF, 0x842194A5A529AD6B, 0xAD6BAD6BA52994A5, 0x8C6394A59CE79CE7,  // 0x000115F8 
	0x9CE79CE79CE79CE7, 0xAD6B9CE79CE79CE7, 0x94A58C639CE7A529, 0xAD6BB5ADB5ADAD6B,  // 0x00011618 
	0xA5299CE794A594A5, 0x8C63000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00011638 
	0x0000000000000000, 0x0000000000000000, 0x0000000052954211, 0x4A535AD78C638C63,  // 0x00011658 
	0x8C637BDF739D7BDF, 0x739D7BDF8C639CE7, 0xAD6BAD6BAD6BA529, 0x94A58C639CE7A529,  // 0x00011678 
	0x9CE794A59CE79CE7, 0xA529A5299CE7A529, 0x9CE794A59CE79CE7, 0xAD6BAD6BA529A529,  // 0x00011698 
	0xAD6BA52994A58C63, 0x8C638C6300000000, 0x0000000000000000, 0x0000000000000000,  // 0x000116B8 
	0x0000000000000000, 0x0000000000000000, 0x000039CF4A534211, 0x5295739D9CE7A529,  // 0x000116D8 
	0x9CE794A584217BDF, 0x739D7BDF84218C63, 0x9CE7A529A529A529, 0x9CE78C638C639CE7,  // 0x000116F8 
	0x9CE7A529A5299CE7, 0xA529AD6BAD6BA529, 0x9CE79CE7A529AD6B, 0xAD6BA529A529A529,  // 0x00011718 
	0xAD6BB5ADAD6B8C63, 0x8C6394A594A50000, 0x0000000000000000, 0x0000000000000000,  // 0x00011738 
	0x0000000000000000, 0x0000000000000000, 0x2109318D39CF39CF, 0x7BDF8C639CE79CE7,  // 0x00011758 
	0xA529A5299CE794A5, 0x8421739D7BDF8C63, 0x8C6394A594A58C63, 0x8C639CE7AD6B94A5,  // 0x00011778 
	0x7BDF9CE794A59CE7, 0xA529AD6BAD6BAD6B, 0xA5299CE79CE7AD6B, 0xAD6BAD6BAD6BA529,  // 0x00011798 
	0xA529A529A529A529, 0x8C639CE78C638C63, 0x0000000000000000, 0x0000000000000000,  // 0x000117B8 
	0x0000000000000000, 0x0000000000000000, 0x18C739CF42116319, 0x9CE79CE794A594A5,  // 0x000117D8 
	0x9CE79CE7A5299CE7, 0x94A584217BDF739D, 0x8C639CE7A529A529, 0xA5298C635AD75AD7,  // 0x000117F8 
	0x9CE79CE794A594A5, 0xA529A529A529A529, 0xA5299CE794A5A529, 0xAD6BAD6BA5299CE7,  // 0x00011818 
	0x94A594A59CE7AD6B, 0x9CE7A5299CE78C63, 0x0000000000000000, 0x0000000000000000,  // 0x00011838 
	0x0000000000000000, 0x0000000000002109, 0x294B4A535295739D, 0x9CE7A52994A58421,  // 0x00011858 
	0x94A594A59CE78C63, 0x94A57BDF739D8421, 0x8C63AD6BB5AD94A5, 0x6B5B52958C6394A5,  // 0x00011878 
	0x9CE7A529A5299CE7, 0x9CE7A529AD6B9CE7, 0xA5299CE79CE7A529, 0xA529A5299CE794A5,  // 0x00011898 
	0x9CE79CE7AD6BAD6B, 0xAD6BAD6BA52994A5, 0x8C63000000000000, 0x0000000000000000,  // 0x000118B8 
	0x0000000000000000, 0x00000000318D18C7, 0x4211529563197BDF, 0x94A5A529A5298C63,  // 0x000118D8 
	0x94A594A58C638C63, 0x6B5B739D7BDF8421, 0xA52994A57BDF6319, 0x4A538C638C6394A5,  // 0x000118F8 
	0x9CE7AD6BAD6BA529, 0x9CE7A529A529A529, 0x9CE79CE79CE7A529, 0xA52994A58C6394A5,  // 0x00011918 
	0x9CE79CE7A529AD6B, 0xAD6BB5ADAD6B9CE7, 0x8C6394A500000000, 0x0000000000000000,  // 0x00011938 
	0x0000000000000000, 0x00005295294B294B, 0x39CF5AD7739D739D, 0x94A59CE7A5299CE7,  // 0x00011958 
	0x9CE78C6384215AD7, 0x6B5B84219CE7AD6B, 0x7BDF631963195295, 0x94A594A594A58C63,  // 0x00011978 
	0x9CE79CE79CE794A5, 0x9CE794A58C6394A5, 0x94A58C6394A594A5, 0x9CE794A594A59CE7,  // 0x00011998 
	0xA529A529A529AD6B, 0xAD6BB5ADAD6BA529, 0x9CE78C6300000000, 0x0000000000000000,  // 0x000119B8 
	0x0000000000000000, 0x000039CF18C739CF, 0x39CF63197BDF739D, 0x8C63A5299CE79CE7,  // 0x000119D8 
	0x9CE784214A535295, 0x7BDF9CE7B5AD94A5, 0x63195AD752958C63, 0x8C638C638C638C63,  // 0x000119F8 
	0x8C638C638C638421, 0x7BDF842184218C63, 0x94A58C639CE7A529, 0xA529A529AD6BA529,  // 0x00011A18 
	0xA529A529A529AD6B, 0xAD6BAD6BB5ADAD6B, 0x9CE79CE78C630000, 0x0000000000000000,  // 0x00011A38 
	0x0000000000000000, 0x4A53294B294B4211, 0x4A53739D84217BDF, 0x8C639CE7A529A529,  // 0x00011A58 
	0x9CE75AD739CF6319, 0x94A5B5ADA5296B5B, 0x63195AD77BDF7BDF, 0x842184218C638C63,  // 0x00011A78 
	0x94A58C6384217BDF, 0x739D9CE79CE794A5, 0x8C6394A59CE794A5, 0x84218C6394A59CE7,  // 0x00011A98 
	0x9CE7A5299CE7A529, 0xAD6BA529AD6BAD6B, 0x94A59CE784218C63, 0x0000000000000000,  // 0x00011AB8 
	0x0000000000000000, 0x318D18C742114211, 0x5AD76B5B84218421, 0x8C639CE7AD6BAD6B,  // 0x00011AD8 
	0x631939CF4A537BDF, 0xAD6BB5AD94A56B5B, 0x6B5B7BDF8C63739D, 0x7BDF84218C638C63,  // 0x00011AF8 
	0x8C639CE76B5B8421, 0x84216B5B6B5B739D, 0x739D7BDF84218C63, 0x8C6384217BDF8C63,  // 0x00011B18 
	0x94A59CE79CE79CE7, 0xAD6B9CE79CE7AD6B, 0x842194A594A58C63, 0x0000000000000000,  // 0x00011B38 
	0x0000000000004A53, 0x2109294B52955AD7, 0x6B5B6319842194A5, 0x9CE794A5AD6B9CE7,  // 0x00011B58 
	0x42114A534A538C63, 0xB5AD9CE77BDF739D, 0x739D7BDF84218C63, 0x84217BDF8C638C63,  // 0x00011B78 
	0x94A5631963196319, 0x52957BDF84216B5B, 0x84218C6384218C63, 0x8C6394A59CE78C63,  // 0x00011B98 
	0x842194A59CE7A529, 0xA529A529A52994A5, 0x8C638C639CE78C63, 0x739D000000000000,  // 0x00011BB8 
	0x00000000000039CF, 0x2109318D6319739D, 0x739D6B5B739D94A5, 0x9CE794A58C63318D,  // 0x00011BD8 
	0x39CF4A53739DAD6B, 0xB5AD9CE784217BDF, 0x84218C638C6394A5, 0x94A58C638C638421,  // 0x00011BF8 
	0x6B5B4A5352956B5B, 0x6B5B6B5B739D8C63, 0x842194A5A529AD6B, 0xAD6BA5299CE7A529,  // 0x00011C18 
	0x94A58C639CE79CE7, 0x9CE7A5299CE79CE7, 0x9CE794A59CE794A5, 0x7BDF000000000000,  // 0x00011C38 
	0x00000000000039CF, 0x210939CF739D8421, 0x739D6319739D8C63, 0x9CE78C63318D318D,  // 0x00011C58 
	0x294B5AD78C63BDEF, 0xAD6BAD6B8C638421, 0x6B5B84218C638C63, 0x8C637BDF739D6319,  // 0x00011C78 
	0x5295318D5AD76319, 0x6B5B7BDF7BDF8421, 0x9CE79CE7AD6BAD6B, 0xB5ADB5ADA529A529,  // 0x00011C98 
	0xA52994A594A59CE7, 0x94A594A594A594A5, 0x94A59CE794A58421, 0x739D000000000000,  // 0x00011CB8 
	0x00000000294B4211, 0x2109318D6B5B9CE7, 0x7BDF63196B5B8C63, 0x9CE78C63318D294B,  // 0x00011CD8 
	0x294B5AD7A529B5AD, 0xB5ADAD6B94A57BDF, 0x739D842184218421, 0x8C638421739D4211,  // 0x00011CF8 
	0x4211318D52956B5B, 0x739D5AD75AD78C63, 0x9CE79CE7AD6BB5AD, 0xB5ADB5ADA5299CE7,  // 0x00011D18 
	0xA5299CE794A57BDF, 0x8C638C638C6394A5, 0x94A594A58C63739D, 0x6B5B631900000000,  // 0x00011D38 
	0x00000000294B4211, 0x294B318D5AD794A5, 0x94A5739D739D8421, 0x94A56319318D318D,  // 0x00011D58 
	0x39CF6B5BA529B5AD, 0xB5ADAD6B94A5739D, 0x739D7BDF84218421, 0x84219CE794A54211,  // 0x00011D78 
	0x294B39CF5AD76319, 0x63194A5363198421, 0x8C6384219CE7B5AD, 0xB5ADB5ADA5299CE7,  // 0x00011D98 
	0x9CE7A529A529739D, 0x8C638C638C638C63, 0x8C638C638C637BDF, 0x739D6B5B00000000,  // 0x00011DB8 
	0x00000000318D39CF, 0x294B42116B5B8C63, 0x9CE7842184218421, 0x8C63318D318D39CF,  // 0x00011DD8 
	0x4A537BDFAD6BBDEF, 0xB5ADAD6B94A58C63, 0x8C63A5299CE79CE7, 0x9CE7A52994A5318D,  // 0x00011DF8 
	0x294B318D52954A53, 0x4A5342115AD77BDF, 0x739D6B5B94A5B5AD, 0xB5ADAD6BA52994A5,  // 0x00011E18 
	0x84219CE7A529739D, 0x7BDF94A594A594A5, 0x94A59CE79CE78C63, 0x84217BDF6B5B0000,  // 0x00011E38 
	0x000018C7294B318D, 0x318D4A537BDF8421, 0x94A58C6384218C63, 0x6319318D318D4211,  // 0x00011E58 
	0x5295739DB5ADBDEF, 0xB5ADAD6BA5298421, 0x94A59CE794A59CE7, 0x9CE7A5299CE7294B,  // 0x00011E78 
	0x294B39CF529539CF, 0x39CF39CF63196B5B, 0x631963197BDF9CE7, 0xAD6BAD6B9CE794A5,  // 0x00011E98 
	0x739D9CE794A56319, 0x7BDF9CE794A59CE7, 0x9CE79CE79CE78C63, 0x84217BDF63190000,  // 0x00011EB8 
	0x000018C7294B2109, 0x39CF5AD784218421, 0x84218C637BDF8421, 0x294B294B318D5295,  // 0x00011ED8 
	0x63196B5B9CE7BDEF, 0xBDEFBDEFAD6BA529, 0x94A59CE79CE794A5, 0x94A594A58C63294B,  // 0x00011EF8 
	0x294B39CF529539CF, 0x39CF39CF52956B5B, 0x5AD75AD77BDF9CE7, 0xA529A5299CE77BDF,  // 0x00011F18 
	0x7BDF9CE784215AD7, 0x6B5B94A59CE7A529, 0xAD6B9CE79CE7A529, 0x84216B5B4A530000,  // 0x00011F38 
	0x000018C7294B2109, 0x318D4A537BDF8421, 0x7BDF84217BDF7BDF, 0x2109294B39CF5AD7,  // 0x00011F58 
	0x7BDF84219CE7B5AD, 0xBDEFBDEFB5ADAD6B, 0x9CE79CE79CE794A5, 0x84218C638C63294B,  // 0x00011F78 
	0x294B318D421139CF, 0x39CF39CF52956319, 0x6B5B6319739D94A5, 0xA5299CE794A5739D,  // 0x00011F98 
	0x842184217BDF5295, 0x63199CE79CE7A529, 0xAD6BAD6BAD6BAD6B, 0x739D5AD74A530000,  // 0x00011FB8 
	0x000018C7318D294B, 0x318D4A535AD7739D, 0x842184217BDF6B5B, 0x18C72109318D5295,  // 0x00011FD8 
	0x7BDF8C63AD6BBDEF, 0xBDEFC631B5ADAD6B, 0xAD6B9CE7A52994A5, 0x84217BDF94A539CF,  // 0x00011FF8 
	0x294B318D42114211, 0x318D318D52955295, 0x5AD76B5B7BDF8421, 0x8C6394A58C637BDF,  // 0x00012018 
	0x739D739D739D6319, 0x6B5B94A5A529A529, 0xAD6BB5ADB5ADA529, 0x6B5B631963190000,  // 0x00012038 
	0x00001085318D2109, 0x4A535AD76B5B6319, 0x6B5B842184214A53, 0x18C72109318D5AD7,  // 0x00012058 
	0x6B5B94A5B5ADBDEF, 0xC631BDEFBDEFA529, 0xB5ADAD6BA529A529, 0x9CE7842194A55AD7,  // 0x00012078 
	0x294B294B318D4211, 0x318D318D42114211, 0x4A535AD7739D7BDF, 0x7BDF8C6384217BDF,  // 0x00012098 
	0x739D7BDF739D7BDF, 0x6B5BA529AD6BAD6B, 0x9CE7A5299CE78C63, 0x6B5B739D7BDF0000,  // 0x000120B8 
	0x000018C721092109, 0x42116B5B739D6B5B, 0x6B5B7BDF842139CF, 0x2109294B294B6319,  // 0x000120D8 
	0x6B5B8C63AD6BBDEF, 0xC631C631BDEFBDEF, 0xB5ADA529A529AD6B, 0xAD6B9CE78C638C63,  // 0x000120F8 
	0x294B294B318D39CF, 0x318D318D39CF39CF, 0x39CF421152956B5B, 0x6B5B6B5B739D739D,  // 0x00012118 
	0x7BDF94A57BDF8421, 0x5AD79CE79CE7A529, 0x94A584218C638C63, 0x739D7BDF739D0000,  // 0x00012138 
	0x000018C7294B294B, 0x318D6B5B7BDF7BDF, 0x6B5B739D842118C7, 0x2109294B294B5AD7,  // 0x00012158 
	0x739D8421A529B5AD, 0xBDEFBDEFBDEFBDEF, 0xBDEFA5299CE7AD6B, 0xAD6BAD6B8C638421,  // 0x00012178 
	0x4A53294B318D318D, 0x318D39CF39CF4211, 0x39CF421142115AD7, 0x6B5B6B5B739D7BDF,  // 0x00012198 
	0x84219CE78421739D, 0x5295A5299CE794A5, 0x94A58C6394A58C63, 0x6319631963190000,  // 0x000121B8 
};

u64 _tokinoma_room_0_tex_000121D8[] = 
{
	0x18C718C72109318D, 0x4A5363197BDF8421, 0x7BDF739D7BDF8421, 0x739D739D9CE7AD6B,  // 0x000121D8 
	0xA52994A584218421, 0x7BDF8C638C6394A5, 0x9CE79CE79CE79CE7, 0x9CE794A5739D6B5B,  // 0x000121F8 
	0x7BDF8C6394A58C63, 0x7BDF7BDF7BDF8421, 0x7BDF8C638C638C63, 0x84218421739D739D,  // 0x00012218 
	0x7BDF8C6394A594A5, 0x9CE7A5299CE794A5, 0x94A5A529A5298C63, 0x6319739D5AD75AD7,  // 0x00012238 
	0x000018C72109318D, 0x4A5352955AD7739D, 0x739D6B5B739D739D, 0x739D739D8421A529,  // 0x00012258 
	0x9CE7739D739D8C63, 0x9CE79CE7A5299CE7, 0x9CE7A529B5ADB5AD, 0xB5ADA5298C63739D,  // 0x00012278 
	0x84218C635295739D, 0x84218C6394A59CE7, 0x9CE7AD6BAD6BAD6B, 0xAD6BB5ADA5298421,  // 0x00012298 
	0x7BDF739D8C638421, 0x842194A58C639CE7, 0x9CE7A529AD6B9CE7, 0x6B5B6B5B4A530000,  // 0x000122B8 
	0x000018C721092109, 0x4A53631952955AD7, 0x6B5B63196319739D, 0x739D6B5B739D6B5B,  // 0x000122D8 
	0x739D739D8C6394A5, 0x9CE7AD6BAD6BB5AD, 0xAD6BAD6BB5ADB5AD, 0x94A5739D9CE77BDF,  // 0x000122F8 
	0x9CE79CE74A5339CF, 0x6319739D94A5A529, 0xAD6BB5ADBDEFB5AD, 0xB5ADB5ADB5ADAD6B,  // 0x00012318 
	0x94A57BDF7BDF7BDF, 0x739D8C6394A594A5, 0x9CE794A5A52994A5, 0x739D63194A530000,  // 0x00012338 
	0x000018C721092109, 0x4A53631963195AD7, 0x6B5B739D739D6B5B, 0x63196319739D739D,  // 0x00012358 
	0x84217BDF8C639CE7, 0xB5ADB5ADC631C631, 0xBDEFB5ADA5298C63, 0x631984219CE77BDF,  // 0x00012378 
	0xA52994A57BDF318D, 0x39CF4211739D94A5, 0x9CE7B5ADB5ADB5AD, 0xB5ADB5ADB5ADA529,  // 0x00012398 
	0xAD6B9CE784217BDF, 0x7BDF84218C6394A5, 0x8C638C638C638421, 0x631952955AD70000,  // 0x000123B8 
	0x000018C718C72109, 0x52956B5B739D6319, 0x6319739D7BDF7BDF, 0x5AD76319739D94A5,  // 0x000123D8 
	0x842184219CE7A529, 0xB5ADBDEFBDEFBDEF, 0xB5AD94A5739D6319, 0x52959CE763196B5B,  // 0x000123F8 
	0x9CE79CE7842139CF, 0x318D318D5AD76B5B, 0x7BDFA529BDEFBDEF, 0xBDEFBDEFBDEFAD6B,  // 0x00012418 
	0xA529A529A52994A5, 0x842194A594A594A5, 0x94A59CE78C63739D, 0x6B5B4A5363190000,  // 0x00012438 
	0x000018C721092109, 0x39CF5AD7739D739D, 0x6B5B739D7BDF8421, 0x294B4A53739D8421,  // 0x00012458 
	0x7BDF8C639CE7AD6B, 0xB5ADC631C631BDEF, 0x94A55AD74A534211, 0x7BDF7BDF5AD79CE7,  // 0x00012478 
	0xB5ADA52994A58421, 0x318D294B42114A53, 0x5AD78C63A529B5AD, 0xB5ADBDEFBDEFB5AD,  // 0x00012498 
	0xA5299CE794A58421, 0x84218C6394A59CE7, 0x9CE794A594A58421, 0x5295529542110000,  // 0x000124B8 
	0x000018C718C72109, 0x294B5295739D7BDF, 0x739D739D7BDF739D, 0x210942116B5B739D,  // 0x000124D8 
	0x8C6394A594A5A529, 0xAD6BB5ADA52994A5, 0x529539CF39CF6319, 0x739D4A538421A529,  // 0x000124F8 
	0xBDEFB5AD9CE794A5, 0x4A53294B318D39CF, 0x42116B5B842194A5, 0x9CE7AD6BB5ADBDEF,  // 0x00012518 
	0xAD6B9CE784217BDF, 0x8C6394A58C639CE7, 0xAD6B94A58C636B5B, 0x39CF421139CF0000,  // 0x00012538 
	0x000018C718C72109, 0x294B52958C638C63, 0x8C637BDF7BDF6319, 0x294B294B52956319,  // 0x00012558 
	0x7BDF8C63739D6319, 0x6B5B739D6B5B6319, 0x39CF421163198421, 0x4A53631984219CE7,  // 0x00012578 
	0xBDEFBDEFAD6B8C63, 0x7BDF39CF318D39CF, 0x39CF4A5363197BDF, 0x8C6394A5AD6BAD6B,  // 0x00012598 
	0xA5298C63739D6B5B, 0x94A59CE78C6394A5, 0xA5299CE784215295, 0x421142116B5B0000,  // 0x000125B8 
	0x0000000018C72109, 0x2109318D739D9CE7, 0x94A594A58421294B, 0x294B210939CF5AD7,  // 0x000125D8 
	0x6B5B739D63194211, 0x318D318D39CF39CF, 0x39CF4A53739D739D, 0x4A535AD7739DAD6B,  // 0x000125F8 
	0xC631BDEFB5ADA529, 0x8C63739D294B318D, 0x39CF39CF39CF4A53, 0x6B5B842194A58C63,  // 0x00012618 
	0x7BDF739D7BDF739D, 0x8C63AD6BA5298C63, 0x9CE79CE7739D39CF, 0x4A535AD700000000,  // 0x00012638 
	0x0000000018C718C7, 0x2109294B6B5B9CE7, 0xA529A52994A5318D, 0x2109294B318D4211,  // 0x00012658 
	0x5AD7631952954211, 0x39CF318D318D294B, 0x42114A538C634A53, 0x5AD75AD7739DAD6B,  // 0x00012678 
	0xBDEFB5ADA529AD6B, 0x94A59CE739CF318D, 0x318D39CF39CF4211, 0x42114A5352956B5B,  // 0x00012698 
	0x6B5B6B5B739D7BDF, 0x7BDFA529A52994A5, 0x9CE78C635AD75295, 0x42115AD700000000,  // 0x000126B8 
	0x00000000210918C7, 0x2109210942117BDF, 0x8C639CE794A518C7, 0x2109294B294B294B,  // 0x000126D8 
	0x39CF4A5339CF39CF, 0x39CF39CF39CF4211, 0x42117BDF5AD75295, 0x421163198421AD6B,  // 0x000126F8 
	0xBDEFB5ADAD6BAD6B, 0x9CE78C636B5B294B, 0x318D318D318D39CF, 0x39CF39CF39CF4211,  // 0x00012718 
	0x5295631963195AD7, 0x5AD78C639CE794A5, 0x8C63739D52954211, 0x42115AD700000000,  // 0x00012738 
	0x0000000018C72109, 0x18C72109318D5295, 0x7BDF94A55AD72109, 0x2109294B294B294B,  // 0x00012758 
	0x294B318D318D39CF, 0x39CF39CF39CF39CF, 0x5AD7842142115295, 0x39CF52958421AD6B,  // 0x00012778 
	0xBDEFBDEFB5ADA529, 0x9CE794A56B5B5295, 0x294B294B318D318D, 0x318D318D318D318D,  // 0x00012798 
	0x39CF318D294B318D, 0x4A538C6384217BDF, 0x739D5295318D318D, 0x39CF000000000000,  // 0x000127B8 
	0x00000000000018C7, 0x18C718C7294B4211, 0x7BDF94A56B5B294B, 0x18C721092109294B,  // 0x000127D8 
	0x294B318D318D294B, 0x294B294B318D6319, 0x739D8C63294B4211, 0x39CF421163198421,  // 0x000127F8 
	0xAD6BAD6BAD6BA529, 0x8C638C6363196B5B, 0x6B5B39CF2109294B, 0x21092109294B294B,  // 0x00012818 
	0x210918C718C718C7, 0x318D7BDF6B5B5AD7, 0x4A53294B2109318D, 0x4211000000000000,  // 0x00012838 
	0x00000000000018C7, 0x210918C72109294B, 0x5AD784218C638C63, 0x7BDF5295318D2109,  // 0x00012858 
	0x21092109294B294B, 0x21096B5B8C637BDF, 0x739D8421294B318D, 0x39CF5AD763197BDF,  // 0x00012878 
	0x9CE7AD6BA529A529, 0x84217BDF6B5B7BDF, 0x7BDF84217BDF2109, 0x294B294B294B2109,  // 0x00012898 
	0x18C7294B52957BDF, 0x7BDF7BDF739D6319, 0x39CF2109294B39CF, 0x4A53000000000000,  // 0x000128B8 
	0x0000000000000000, 0x18C7210918C7294B, 0x39CF6B5B84218421, 0x842184217BDF6B5B,  // 0x000128D8 
	0x4A53421139CF4A53, 0x9CE794A58C638421, 0x739D6319294B294B, 0x318D4A536B5B8421,  // 0x000128F8 
	0x9CE7AD6BA5299CE7, 0x739D6B5B84218C63, 0x8C638C6384217BDF, 0x529539CF4A538421,  // 0x00012918 
	0x9CE79CE794A58C63, 0x8421739D63195295, 0x210921094A534A53, 0x0000000000000000,  // 0x00012938 
	0x0000000000000000, 0x0000210921092109, 0x318D5295739D7BDF, 0x7BDF84217BDF6B5B,  // 0x00012958 
	0x739D6B5B7BDF8421, 0x8C638C6384218421, 0x6B5B4A53294B294B, 0x318D39CF4A536B5B,  // 0x00012978 
	0x84218C639CE77BDF, 0x6B5B6B5B84219CE7, 0x94A58C638C638C63, 0x84217BDF739D8C63,  // 0x00012998 
	0xA529A5299CE794A5, 0x84215AD74A53294B, 0x2109421142110000, 0x0000000000000000,  // 0x000129B8 
	0x0000000000000000, 0x000018C7210918C7, 0x210939CF63197BDF, 0x84218C638C637BDF,  // 0x000129D8 
	0x84218C638C638421, 0x8C6384218421739D, 0x6B5B4A53294B294B, 0x318D318D318D4A53,  // 0x000129F8 
	0x6B5B6B5B6B5B5AD7, 0x63195AD78C6394A5, 0x9CE79CE794A594A5, 0xA5299CE784218421,  // 0x00012A18 
	0x94A5A529A5299CE7, 0x84216B5B42112109, 0x318D210921090000, 0x0000000000000000,  // 0x00012A38 
	0x0000000000000000, 0x0000000021092109, 0x18C7210942115AD7, 0x6B5B739D84218421,  // 0x00012A58 
	0x84218C6394A58C63, 0x8C63842184218421, 0x7BDF6319294B294B, 0x294B39CF318D39CF,  // 0x00012A78 
	0x4A534A5342114211, 0x52955AD794A59CE7, 0x94A594A594A58C63, 0x94A59CE794A58C63,  // 0x00012A98 
	0x8C639CE79CE794A5, 0x7BDF4211294B39CF, 0x318D18C700000000, 0x0000000000000000,  // 0x00012AB8 
	0x0000000000000000, 0x0000000018C718C7, 0x210918C7294B39CF, 0x63196319739D7BDF,  // 0x00012AD8 
	0x6B5B739D84218C63, 0x94A594A594A594A5, 0x84216B5B294B294B, 0x294B318D318D294B,  // 0x00012AF8 
	0x318D39CF318D39CF, 0x5295529584219CE7, 0x94A58C638C638421, 0x842194A58C638C63,  // 0x00012B18 
	0x8C6384218C637BDF, 0x5AD74A534211294B, 0x18C718C700000000, 0x0000000000000000,  // 0x00012B38 
	0x0000000000000000, 0x00000000000018C7, 0x18C721092109294B, 0x4A535AD75AD76319,  // 0x00012B58 
	0x631963197BDF8C63, 0x8C6394A594A594A5, 0x8C6384214A532109, 0x294B294B294B294B,  // 0x00012B78 
	0x294B294B294B318D, 0x294B318D84218C63, 0x94A58C637BDF7BDF, 0x8421842184217BDF,  // 0x00012B98 
	0x6B5B63195AD75295, 0x5295318D18C718C7, 0x18C7000000000000, 0x0000000000000000,  // 0x00012BB8 
	0x0000000000000000, 0x0000000000000000, 0x2109210921092109, 0x294B4A535AD76B5B,  // 0x00012BD8 
	0x7BDF7BDF7BDF8421, 0x84219CE79CE794A5, 0x94A57BDF7BDF39CF, 0x18C72109294B294B,  // 0x00012BF8 
	0x21092109294B2109, 0x42118C6384217BDF, 0x8C6394A594A58421, 0x7BDF7BDF739D739D,  // 0x00012C18 
	0x739D63194A5339CF, 0x210918C721092109, 0x0000000000000000, 0x0000000000000000,  // 0x00012C38 
	0x0000000000000000, 0x0000000000000000, 0x0000210918C718C7, 0x2109294B4A535AD7,  // 0x00012C58 
	0x84218C637BDF7BDF, 0x7BDF7BDF94A58C63, 0x84217BDF739D739D, 0x318D210921092109,  // 0x00012C78 
	0x294B318D294B4211, 0x8421842184217BDF, 0x739D739D739D7BDF, 0x739D6B5B739D6B5B,  // 0x00012C98 
	0x63195295294B18C7, 0x2109210921090000, 0x0000000000000000, 0x0000000000000000,  // 0x00012CB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000021092109, 0x18C718C7210939CF,  // 0x00012CD8 
	0x52957BDF739D739D, 0x7BDF739D7BDF8C63, 0x842184217BDF739D, 0x739D39CF294B294B,  // 0x00012CF8 
	0x294B2109294B8421, 0x8C637BDF739D739D, 0x739D6B5B6319739D, 0x7BDF7BDF6B5B5295,  // 0x00012D18 
	0x294B210918C72109, 0x294B18C700000000, 0x0000000000000000, 0x0000000000000000,  // 0x00012D38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000002109, 0x210918C718C72109,  // 0x00012D58 
	0x318D4A536319739D, 0x8421739D739D6B5B, 0x6B5B6319739D6319, 0x63196B5B42112109,  // 0x00012D78 
	0x210942118C638C63, 0x84218C638421739D, 0x739D7BDF7BDF739D, 0x739D63194A53318D,  // 0x00012D98 
	0x21092109210918C7, 0x18C7000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00012DB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x18C7210918C718C7,  // 0x00012DD8 
	0x2109210939CF5295, 0x6B5B631952956319, 0x739D631952955AD7, 0x5AD77BDF739D294B,  // 0x00012DF8 
	0x42117BDF842194A5, 0x8C638C6394A58421, 0x739D6B5B5AD74A53, 0x4211318D21092109,  // 0x00012E18 
	0x18C718C718C718C7, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00012E38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000210921092109,  // 0x00012E58 
	0x210921092109294B, 0x39CF4A5363196B5B, 0x6B5B631952955295, 0x5AD763197BDF6319,  // 0x00012E78 
	0x63196B5B739D8421, 0x94A5739D739D739D, 0x6B5B5AD74211294B, 0x210918C718C718C7,  // 0x00012E98 
	0x18C718C718C70000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00012EB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00000000000018C7,  // 0x00012ED8 
	0x210918C718C718C7, 0x2109294B318D4211, 0x39CF39CF42114A53, 0x4211421152955AD7,  // 0x00012EF8 
	0x52955AD75AD76319, 0x739D739D5AD75295, 0x4A5339CF294B2109, 0x18C718C718C718C7,  // 0x00012F18 
	0x18C7000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00012F38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00012F58 
	0x18C718C718C72109, 0x2109210921092109, 0x294B318D294B294B, 0x294B318D294B39CF,  // 0x00012F78 
	0x39CF39CF39CF39CF, 0x39CF39CF318D294B, 0x210918C718C718C7, 0x18C718C718C718C7,  // 0x00012F98 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00012FB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00012FD8 
	0x0000000018C718C7, 0x2109210918C718C7, 0x2109210921092109, 0x210918C718C72109,  // 0x00012FF8 
	0x2109210918C718C7, 0x18C7210918C718C7, 0x18C7210918C718C7, 0x18C7000000000000,  // 0x00013018 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00013038 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00013058 
	0x0000000000000000, 0x000018C718C72109, 0x21092109210918C7, 0x18C718C7210918C7,  // 0x00013078 
	0x18C718C7210918C7, 0x18C718C718C718C7, 0x18C718C718C70000, 0x0000000000000000,  // 0x00013098 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000130B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000130D8 
	0x0000000000000000, 0x0000000000000000, 0x18C718C721092109, 0x2109210921092109,  // 0x000130F8 
	0x210918C721092109, 0x2109210921092109, 0x0000000000000000, 0x0000000000000000,  // 0x00013118 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00013138 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00013158 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000021092109,  // 0x00013178 
	0x2109000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00013198 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000131B8 
};

u64 _tokinoma_room_0_tex_000131D8[] = 
{
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000131D8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000008421,  // 0x000131F8 
	0x8C638C6300000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00013218 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00013238 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00013258 
	0x0000000000000000, 0x0000000000000000, 0x739D84217BDF6319, 0x6B5B7BDF7BDF8421,  // 0x00013278 
	0x8421842184217BDF, 0x842184218C638421, 0x0000000000000000, 0x0000000000000000,  // 0x00013298 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000132B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000132D8 
	0x0000000000000000, 0x00006B5B739D6B5B, 0x7BDF7BDF6B5B739D, 0x63196B5B7BDF8421,  // 0x000132F8 
	0x8C638C6384218C63, 0x94A59CE79CE7A529, 0xA5299CE794A50000, 0x0000000000000000,  // 0x00013318 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00013338 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00013358 
	0x000000005295739D, 0x7BDF6B5B6319739D, 0x7BDF6B5B6B5B7BDF, 0x84219CE79CE7A529,  // 0x00013378 
	0xA529A529A529A529, 0xA5299CE79CE79CE7, 0x9CE7A529A529A529, 0x94A5000000000000,  // 0x00013398 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000133B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000133D8 
	0x529552956B5B8421, 0x739D739D6B5B7BDF, 0x8421739D84219CE7, 0xA529A529A529AD6B,  // 0x000133F8 
	0xA529B5ADB5ADB5AD, 0xAD6BAD6BA5299CE7, 0x9CE78C638C6394A5, 0x9CE7A52994A50000,  // 0x00013418 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00013438 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000004211,  // 0x00013458 
	0x529563196B5B6B5B, 0x7BDF8C6394A594A5, 0x9CE78C638C639CE7, 0xAD6B9CE79CE7A529,  // 0x00013478 
	0x9CE7A529AD6BB5AD, 0xB5ADAD6BAD6BAD6B, 0xB5ADAD6BA52994A5, 0x8C638C6394A58C63,  // 0x00013498 
	0x8C63000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000134B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00005AD739CF5295,  // 0x000134D8 
	0x6B5B5AD763197BDF, 0x94A59CE7AD6BB5AD, 0xA5298C6384218421, 0x94A59CE794A594A5,  // 0x000134F8 
	0x94A594A5A529AD6B, 0xAD6BA529A529A529, 0xA529AD6BB5ADB5AD, 0xAD6BA52994A5A529,  // 0x00013518 
	0x8C6394A58C630000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00013538 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x5AD739CF5295739D,  // 0x00013558 
	0x5AD763197BDF7BDF, 0x9CE7AD6BAD6BB5AD, 0xAD6BA5298C638421, 0x8C6394A59CE75295,  // 0x00013578 
	0x842194A59CE7A529, 0xAD6B9CE7A529A529, 0x94A594A5AD6BAD6B, 0xAD6BAD6BAD6B9CE7,  // 0x00013598 
	0x9CE794A594A58421, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x000135B8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000006319, 0x421152957BDF8421,  // 0x000135D8 
	0x7BDF739D7BDF7BDF, 0x7BDF8C63A529AD6B, 0xAD6BAD6BA52994A5, 0x84218C635295739D,  // 0x000135F8 
	0x94A594A594A594A5, 0xAD6B9CE79CE79CE7, 0x9CE78C6394A5A529, 0xAD6BB5ADAD6BAD6B,  // 0x00013618 
	0xA5299CE794A58C63, 0x94A5000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00013638 
	0x0000000000000000, 0x0000000000000000, 0x000000005AD739CF, 0x4211631994A594A5,  // 0x00013658 
	0x8C637BDF739D7BDF, 0x739D7BDF8C639CE7, 0xAD6BA529AD6BA529, 0x94A5631963198421,  // 0x00013678 
	0xAD6B9CE78C6394A5, 0xA529AD6BA529A529, 0x9CE79CE79CE7A529, 0xAD6BAD6BA529A529,  // 0x00013698 
	0xAD6BAD6B9CE78C63, 0x8C6394A500000000, 0x0000000000000000, 0x0000000000000000,  // 0x000136B8 
	0x0000000000000000, 0x0000000000000000, 0x00004211318D318D, 0x63197BDFA5299CE7,  // 0x000136D8 
	0x9CE79CE78C638421, 0x739D7BDF84218421, 0x9CE7A529A529A529, 0x42115AD794A5AD6B,  // 0x000136F8 
	0xB5ADB5ADAD6B94A5, 0x9CE7AD6BAD6BAD6B, 0x9CE79CE7A529AD6B, 0xAD6BA529A529A529,  // 0x00013718 
	0xAD6BB5ADAD6B8C63, 0x8C6394A594A50000, 0x0000000000000000, 0x0000000000000000,  // 0x00013738 
	0x0000000000000000, 0x0000000000000000, 0x18C7318D42114A53, 0x84218C639CE79CE7,  // 0x00013758 
	0xA529A5299CE794A5, 0x7BDF739D7BDF8C63, 0x8C639CE79CE74211, 0x42118C63AD6BAD6B,  // 0x00013778 
	0xAD6BA529AD6BAD6B, 0x9CE7A529AD6BAD6B, 0xA5299CE79CE7AD6B, 0xAD6BAD6BAD6BA529,  // 0x00013798 
	0x9CE79CE79CE7AD6B, 0x84219CE794A58421, 0x0000000000000000, 0x0000000000000000,  // 0x000137B8 
	0x0000000000000000, 0x00000000000039CF, 0x210939CF4A537BDF, 0x9CE7A52994A58C63,  // 0x000137D8 
	0x9CE79CE79CE794A5, 0x94A5842184217BDF, 0x7BDF842152952109, 0x52958C639CE7AD6B,  // 0x000137F8 
	0xB5ADB5ADB5ADA529, 0xAD6B94A5A529A529, 0xA5299CE794A59CE7, 0xAD6BA529A5299CE7,  // 0x00013818 
	0x94A58C639CE7AD6B, 0x9CE7A529A5298C63, 0x8C63000000000000, 0x0000000000000000,  // 0x00013838 
	0x0000000000000000, 0x0000000039CF2109, 0x318D4A5352957BDF, 0xA529A52994A58421,  // 0x00013858 
	0x94A59CE794A58C63, 0x94A57BDF7BDF8421, 0x7BDF739D318D294B, 0x4211739D9CE7B5AD,  // 0x00013878 
	0xB5ADB5ADB5ADAD6B, 0x9CE794A5A5299CE7, 0xA5299CE79CE7A529, 0xA529A5299CE794A5,  // 0x00013898 
	0x9CE79CE7A529AD6B, 0xAD6BAD6BA5299CE7, 0x8C6394A500000000, 0x0000000000000000,  // 0x000138B8 
	0x0000000000000000, 0x00000000294B2109, 0x4A53529563198421, 0x9CE7A529A5298C63,  // 0x000138D8 
	0x94A594A58C6394A5, 0x8C63842184218421, 0x7BDF6B5B21092109, 0x318D529594A5B5AD,  // 0x000138F8 
	0xBDEFBDEFB5ADA529, 0x9CE78C639CE7A529, 0x9CE794A59CE7A529, 0xA52994A58C638C63,  // 0x00013918 
	0x9CE79CE7A529AD6B, 0xAD6BB5ADAD6BA529, 0x94A594A500000000, 0x0000000000000000,  // 0x00013938 
	0x0000000000000000, 0x0000421118C7318D, 0x42116319739D739D, 0x94A59CE7A5299CE7,  // 0x00013958 
	0x9CE78C6394A59CE7, 0x9CE79CE794A594A5, 0x842163192109294B, 0x318D4A537BDF9CE7,  // 0x00013978 
	0xB5ADB5ADAD6B9CE7, 0x9CE77BDF7BDF94A5, 0x94A58C6394A594A5, 0x9CE79CE794A59CE7,  // 0x00013998 
	0xA5299CE7A529AD6B, 0xAD6BB5ADB5ADA529, 0x9CE78C638C630000, 0x0000000000000000,  // 0x000139B8 
	0x0000000000000000, 0x0000294B21094211, 0x39CF6B5B7BDF739D, 0x8C63A5299CE79CE7,  // 0x000139D8 
	0x9CE78C639CE7AD6B, 0xA529A5299CE79CE7, 0x8C635AD7294B294B, 0x318D5AD784219CE7,  // 0x000139F8 
	0xA529AD6BA5299CE7, 0x8C636B5B739D8421, 0x8C638C639CE79CE7, 0x9CE7AD6BAD6BAD6B,  // 0x00013A18 
	0xA529A529A529A529, 0xAD6BAD6BB5ADAD6B, 0x9CE79CE78C630000, 0x0000000000000000,  // 0x00013A38 
	0x0000000000000000, 0x39CF18C739CF4211, 0x52957BDF84217BDF, 0x8C639CE7A529A529,  // 0x00013A58 
	0x94A594A594A59CE7, 0xA529A5299CE79CE7, 0x94A56B5B294B318D, 0x294B4A538421A529,  // 0x00013A78 
	0xAD6BA529A5299CE7, 0x8C635AD7739D739D, 0x6B5B7BDF8C639CE7, 0x94A58C63A529A529,  // 0x00013A98 
	0x9CE7A5299CE7A529, 0xAD6BA529A529AD6B, 0x94A594A58C638C63, 0x0000000000000000,  // 0x00013AB8 
	0x0000000000000000, 0x210921094A534A53, 0x5AD76B5B84218421, 0x8C637BDF94A58C63,  // 0x00013AD8 
	0x8C638C639CE79CE7, 0x9CE79CE794A58C63, 0x8C636B5B294B318D, 0x294B39CF63198C63,  // 0x00013AF8 
	0xAD6BAD6BA5298421, 0x7BDF529584217BDF, 0x63196B5B84217BDF, 0x6B5B842184218421,  // 0x00013B18 
	0x842194A59CE79CE7, 0xAD6BA5299CE7A529, 0x8C638C639CE78C63, 0x739D000000000000,  // 0x00013B38 
	0x0000000000004A53, 0x2109318D52956319, 0x6B5B6B5B6B5B739D, 0x6319739D84218421,  // 0x00013B58 
	0x8C63A529AD6BB5AD, 0xAD6BA5299CE78421, 0x7BDF6319294B318D, 0x318D318D4211739D,  // 0x00013B78 
	0x9CE79CE784216B5B, 0x6B5B4A53842194A5, 0x739D6B5B42116B5B, 0x7BDF94A5A529AD6B,  // 0x00013B98 
	0x9CE79CE7A529AD6B, 0xAD6BA529AD6B94A5, 0x94A58C639CE794A5, 0x739D000000000000,  // 0x00013BB8 
	0x00000000000039CF, 0x18C742116B5B739D, 0x739D6B5B529539CF, 0x4211739D63195AD7,  // 0x00013BD8 
	0x739D94A59CE7AD6B, 0xB5ADB5ADAD6BAD6B, 0x8C638C6339CF294B, 0x318D318D318D4211,  // 0x00013BF8 
	0x739D6B5B63195295, 0x318D63199CE7739D, 0x631942115295739D, 0x84219CE7AD6BB5AD,  // 0x00013C18 
	0xAD6BA5299CE7A529, 0x94A58C639CE79CE7, 0x9CE794A594A594A5, 0x8421000000000000,  // 0x00013C38 
	0x00000000294B39CF, 0x210942117BDF8421, 0x6B5B63196B5B294B, 0x4211631939CF4211,  // 0x00013C58 
	0x7BDFAD6BBDEFBDEF, 0xB5ADAD6BAD6BAD6B, 0x9CE78421739D318D, 0x318D39CF39CF4211,  // 0x00013C78 
	0x4A534A534A5339CF, 0x294B6B5B9CE74211, 0x5AD74A537BDF8421, 0x94A5AD6BB5ADB5AD,  // 0x00013C98 
	0xAD6BAD6B9CE79CE7, 0x6B5B842194A594A5, 0x94A59CE794A58C63, 0x739D6B5B00000000,  // 0x00013CB8 
	0x00000000318D4211, 0x2109318D739D9CE7, 0x739D63196B5B318D, 0x39CF39CF294B318D,  // 0x00013CD8 
	0x5AD7A529BDEFBDEF, 0xBDEFB5ADB5ADA529, 0xA5298C637BDF318D, 0x318D39CF39CF39CF,  // 0x00013CF8 
	0x4211421139CF318D, 0x42119CE739CF4A53, 0x39CF5AD7739D94A5, 0xAD6BAD6BAD6BA529,  // 0x00013D18 
	0x9CE7A529A5297BDF, 0x63198C638C6394A5, 0x94A594A594A57BDF, 0x6B5B6B5B00000000,  // 0x00013D38 
	0x00000000318D39CF, 0x210939CF6B5B9CE7, 0x8C636B5B6B5B39CF, 0x39CF294B294B318D,  // 0x00013D58 
	0x4211739D8C63AD6B, 0xBDEFBDEFBDEFAD6B, 0x94A594A5739D739D, 0x294B318D39CF39CF,  // 0x00013D78 
	0x42114211318D4211, 0x94A56B5B294B39CF, 0x42115AD77BDFA529, 0xB5ADAD6B9CE794A5,  // 0x00013D98 
	0x94A59CE79CE76B5B, 0x5AD78C638C638C63, 0x8C638C638C638421, 0x739D739D00000000,  // 0x00013DB8 
	0x000018C7318D39CF, 0x294B5295739D8C63, 0x9CE77BDF7BDF5295, 0x318D294B2109318D,  // 0x00013DD8 
	0x39CF52956B5B7BDF, 0xA529AD6BA529AD6B, 0x84217BDF739D9CE7, 0x39CF294B39CF39CF,  // 0x00013DF8 
	0x39CF294B294B5295, 0xAD6B421139CF318D, 0x318D4A537BDF9CE7, 0xA52994A57BDF739D,  // 0x00013E18 
	0x7BDF94A57BDF5295, 0x6B5B94A594A59CE7, 0x94A59CE7A5298C63, 0x842184216B5B0000,  // 0x00013E38 
	0x000018C7318D294B, 0x39CF52957BDF8421, 0x94A584217BDF7BDF, 0x294B294B294B318D,  // 0x00013E58 
	0x39CF39CF52955AD7, 0x6B5B94A59CE79CE7, 0x8C636B5B7BDF94A5, 0x8C63294B294B39CF,  // 0x00013E78 
	0x39CF294B294B8421, 0x5AD74A53318D318D, 0x318D42116B5B8421, 0x7BDF6B5B5AD74211,  // 0x00013E98 
	0x421152954A534211, 0x842194A59CE7A529, 0x9CE79CE7A52994A5, 0x8C63842163190000,  // 0x00013EB8 
	0x00002109294B2109, 0x39CF631984217BDF, 0x842184217BDF8421, 0x294B294B318D318D,  // 0x00013ED8 
	0x318D39CF39CF4211, 0x5AD784218C638421, 0x8421739D84219CE7, 0x94A54211294B294B,  // 0x00013EF8 
	0x294B294B52958C63, 0x42114A53294B39CF, 0x39CF39CF42115AD7, 0x4A5342114211318D,  // 0x00013F18 
	0x39CF318D318D318D, 0x94A594A59CE7A529, 0xAD6BA5299CE7A529, 0x8C636B5B52950000,  // 0x00013F38 
	0x000018C721092109, 0x318D52957BDF8421, 0x7BDF84217BDF7BDF, 0x4A53294B294B318D,  // 0x00013F58 
	0x318D39CF318D39CF, 0x4A535AD75AD75AD7, 0x5AD7739D84219CE7, 0x9CE77BDF318D318D,  // 0x00013F78 
	0x294B39CF9CE74A53, 0x4A534211318D39CF, 0x39CF39CF39CF318D, 0x318D318D318D318D,  // 0x00013F98 
	0x318D318D294B5AD7, 0x9CE79CE79CE7A529, 0xAD6BAD6BB5ADAD6B, 0x842152954A530000,  // 0x00013FB8 
	0x000018C72109294B, 0x39CF52955AD7739D, 0x7BDF84217BDF7BDF, 0x84214211294B294B,  // 0x00013FD8 
	0x294B318D318D39CF, 0x39CF39CF39CF39CF, 0x4A536B5B8C638C63, 0xAD6B84218421318D,  // 0x00013FF8 
	0x318D7BDF7BDF294B, 0x318D421139CF39CF, 0x39CF318D294B318D, 0x318D318D318D318D,  // 0x00014018 
	0x39CF294B318DA529, 0xA529A529A529A529, 0xAD6BB5ADB5ADAD6B, 0x7BDF631963190000,  // 0x00014038 
	0x000018C72109294B, 0x5295631963196319, 0x739D842184217BDF, 0x84218C637BDF318D,  // 0x00014058 
	0x294B294B294B318D, 0x318D318D318D39CF, 0x39CF421152957BDF, 0x94A58C6394A54A53,  // 0x00014078 
	0x6B5B8C634A53318D, 0x318D39CF39CF39CF, 0x4211421139CF318D, 0x318D318D318D318D,  // 0x00014098 
	0x294B7BDF8C639CE7, 0xA529AD6BAD6BA529, 0x9CE7A5299CE794A5, 0x739D6B5B739D0000,  // 0x000140B8 
	0x18C718C72109294B, 0x4A536B5B6B5B6319, 0x6B5B7BDF84217BDF, 0x7BDF94A58C638421,  // 0x000140D8 
	0x6319318D2109294B, 0x294B318D318D294B, 0x318D318D39CF39CF, 0x529552958C639CE7,  // 0x000140F8 
	0x8C6394A539CF318D, 0x318D318D318D318D, 0x318D318D318D318D, 0x318D318D294B5295,  // 0x00014118 
	0x84218C6384219CE7, 0xAD6BAD6BA529A529, 0x9CE78C638C638421, 0x7BDF6B5B739D0000,  // 0x00014138 
	0x18C718C72109294B, 0x39CF6B5B7BDF7BDF, 0x6B5B739D8C638421, 0x7BDF842194A58C63,  // 0x00014158 
	0x94A5842163196B5B, 0x6319529552956319, 0x529563196319739D, 0x7BDF739D739D8421,  // 0x00014178 
	0x8C638C638421739D, 0x5AD752955AD76319, 0x5AD75AD76B5B6319, 0x52955AD7739D739D,  // 0x00014198 
	0x8C6394A594A594A5, 0xA529A5299CE794A5, 0x94A58C6394A594A5, 0x6B5B5AD763196B5B,  // 0x000141B8 
};

u64 _tokinoma_room_0_tex_000141D8[] = 
{
	0x4ADB42DB73E36BE3, 0x6BE363A173E36361, 0x63A14ADD3A594299, 0x4ADB5B61531F531D,  // 0x000141D8 
	0x5B615B61535F63A1, 0x63A173E36BA16BA1, 0x6BE363A15B5F531D, 0x6BA16BE35B5F6BE5,  // 0x000141F8 
	0x7C254ADB73E36361, 0x63A16BE363A163A1, 0x6BA3531F63A173E3, 0x63A173E56BA173E3,  // 0x00014218 
	0x7C256BA16BE35B5F, 0x7C257C2573E37C25, 0x6BA15B5F531F531F, 0x636163A17C2573E3,  // 0x00014238 
	0x73E35B6163A163A1, 0x6BA363615B5F5B5F, 0x6BA1531D5B616BA1, 0x5B5F6BE3535F531D,  // 0x00014258 
	0x6BA15B615B5F6361, 0x636163A163A173E3, 0x63614ADD636163A1, 0x6361636163A16BA1,  // 0x00014278 
	0x73E553615B5F5B5F, 0x6BA15B5F63615B5F, 0x63615B5F5B616361, 0x636163615B5F5B5F,  // 0x00014298 
	0x5B5F5B6173E563A1, 0x5B615B6173E373E5, 0x63A15B5F63616BA3, 0x6361535F5B6173E3,  // 0x000142B8 
	0x73E56BA173E3531F, 0x5B615B5F63615B5F, 0x63A1531F5B615B5F, 0x63615B5F636163A1,  // 0x000142D8 
	0x63A16BA173E36BE3, 0x63A15B5F6BE373E3, 0x5B5F531F535F6BE3, 0x5B5F5B615B5F6BE3,  // 0x000142F8 
	0x6BE3535F531D4ADD, 0x5B61535F531D535F, 0x5B5F4ADD5B61535F, 0x531D5B5F63A163A1,  // 0x00014318 
	0x73E36BE36BE363A1, 0x5B61531D63A16BA1, 0x5B5F531D5B5F73E3, 0x6BA36BA3531D6BA1,  // 0x00014338 
	0x5B61535F535F531D, 0x4ADD4ADB42DB535F, 0x5B5F531D4ADD4ADB, 0x42DB531D63A173E3,  // 0x00014358 
	0x73E3636163A16BE3, 0x4ADD4ADD63A163A1, 0x531F531D5B615B61, 0x535F63A14ADD63A1,  // 0x00014378 
	0x5B5F636163A142DB, 0x3A5942994ADB5B5F, 0x531F42DB3A594299, 0x4ADB531D63A173E3,  // 0x00014398 
	0x63A163A16BA36361, 0x531F4ADD63A16BA1, 0x73E363A163A16BA3, 0x6361531F4ADD63A1,  // 0x000143B8 
	0x5B5F63A163A173E3, 0x6BE36BE363A15B61, 0x531D63A16BA15B61, 0x6361531D5B5F6BA1,  // 0x000143D8 
	0x5B5F5B5F6BA15B5F, 0x531F531F63616BA1, 0x6BA15B5F5B5F6BA1, 0x5B5F531F531F6361,  // 0x000143F8 
	0x531D63A173E373E3, 0x636163A16BE373E5, 0x6BA173E37C256BA1, 0x6BE35B5F5B616361,  // 0x00014418 
	0x63615B5F63614ADD, 0x73E56BA173E37C25, 0x6BA16BE35B5F7C25, 0x7C2773E37C256361,  // 0x00014438 
	0x531D63A173E363A1, 0x63A16BA363616BE3, 0x535F531D6BA15B61, 0x5B5F531F5B615B5F,  // 0x00014458 
	0x63615B6163A15B5F, 0x6BE35B5F531F6BA1, 0x5B615B5F63616361, 0x63A163A173E35B61,  // 0x00014478 
	0x531D5B5F6BA15B5F, 0x5B5F6BA15B5F6361, 0x5B5F535F5B5F5B61, 0x73E54ADD5B61535F,  // 0x00014498 
	0x531D535F5B5F531F, 0x5B61535F535F5B5F, 0x5B6173E56BA163A1, 0x5B6173E373E55B5F,  // 0x000144B8 
	0x5B5F5B6163616361, 0x5B5F63614ADD5B5F, 0x636163A163A16BA1, 0x73E3531D4ADD4ADB,  // 0x000144D8 
	0x42DB535F5B5F531D, 0x5B5F636163A163A1, 0x6BA173E36BE363A1, 0x5B5F6BE373E36BA3,  // 0x000144F8 
	0x531F5B615B5F6361, 0x5B5F63A15B5F5B5F, 0x63A163A173E36BE3, 0x6BE342DB3A594299,  // 0x00014518 
	0x4ADB5B5F531F531D, 0x5B5F63A163A173E3, 0x6BE36BE36BA15B61, 0x531D63A16BA1535F,  // 0x00014538 
	0x4ADD5B61535F531D, 0x5B5F5B61531F531D, 0x63A173E373E36361, 0x63A16BE34ADD4ADD,  // 0x00014558 
	0x63A163A173E36BE3, 0x531D63A173E373E3, 0x636163A16BE34ADD, 0x4ADD63A163A17C25,  // 0x00014578 
	0x531D4ADD4ADB42DB, 0x535F5B5F531D531D, 0x63A173E363A163A1, 0x6BA36361531F4ADD,  // 0x00014598 
	0x63A16BA173E36361, 0x531D63A173E363A1, 0x63A16BA36361531F, 0x4ADD63A16BA36361,  // 0x000145B8 
	0x42DB3A5942994ADB, 0x5B5F531F531D531D, 0x5B5F6BA15B5F5B5F, 0x6BA15B5F531F531F,  // 0x000145D8 
	0x636163A163A163A1, 0x531D5B5F6BA15B5F, 0x5B5F6BA15B5F531F, 0x531F63616BE363E3,  // 0x000145F8 
	0x5B5F6BE373E35B5F, 0x636173E563A15B5F, 0x5B61636163615B5F, 0x63614ADD636163A1,  // 0x00014618 
	0x636163615B5F5B5F, 0x5B5F5B6163616361, 0x5B5F63614ADD6361, 0x63A1636163A163A1,  // 0x00014638 
	0x531D63A16BA163A1, 0x6BA173E36BE3531F, 0x5B615B5F63615B5F, 0x63A142DB3A594299,  // 0x00014658 
	0x4ADB535F63615B5F, 0x531F5B615B5F6361, 0x5B5F63A15B5F6361, 0x6BA35B61535F5B61,  // 0x00014678 
	0x531F63A163A173E3, 0x6BE36BE363A14ADD, 0x5B61535F531D535F, 0x5B5F6BE34ADD4ADD,  // 0x00014698 
	0x63A15B5F63615B5F, 0x4ADD73E56BA173E3, 0x7C256BA16BE35B5F, 0x7C257C2573E37C27,  // 0x000146B8 
	0x4ADD63A16BA173E3, 0x636163A16BE3531D, 0x4ADD73E56BA173E3, 0x7C256361531F4ADD,  // 0x000146D8 
	0x63A17C2573E37C25, 0x531D6BE3535F531D, 0x6BA15B615B5F6361, 0x636163A163A173E3,  // 0x000146F8 
	0x531F636163A16BE3, 0x5B5F7C257C2542DB, 0x3A596BE3535F531D, 0x6BA15B5F531F531F,  // 0x00014718 
	0x636163A163A173E3, 0x42DB5B61535F535F, 0x5B5F5B6173E563A1, 0x5B615B6173E373E5,  // 0x00014738 
	0x63A1636163615B5F, 0x6361636163A163A1, 0x73E35B61535F535F, 0x5B5F5B6173E563A1,  // 0x00014758 
	0x5B615B6173E373E5, 0x531F5B5F636163A1, 0x63A16BA173E36BE3, 0x63A15B5F6BE373E3,  // 0x00014778 
	0x63A1636163615B5F, 0x6361636163A163A1, 0x73E35B61535F535F, 0x5B5F5B6173E563A1,  // 0x00014798 
	0x5B615B6173E373E5, 0x531F5B5F636163A1, 0x63A16BA173E36BE3, 0x63A15B5F6BE373E3,  // 0x000147B8 
	0x6BA35B61535F73E5, 0x63A15B615B6173E3, 0x73E55B5F63616BE3, 0x63A16BA173E36BE3,  // 0x000147D8 
	0x63A15B5F6BE373E3, 0x531D5B5F63A163A1, 0x73E36BE36BE363A1, 0x5B61531D63A16BA1,  // 0x000147F8 
	0x4ADD5B5F636163A1, 0x6BE563A15BA16BE3, 0x6BE363A35BA36BE5, 0x74696BA16BE35B5F,  // 0x00014818 
	0x7C257C2573E37C25, 0x531D531D63A173E3, 0x73E3636163A17CAB, 0x53614ADD63A163A3,  // 0x00014838 
	0x5B5F5B5F63A163A1, 0x5B5F7C257C2542DB, 0x3A596BE3535F531D, 0x6BA15B615B5F6361,  // 0x00014858 
	0x636163A163A173E3, 0x42DB531D63A1535F, 0x5B5F5B6173E563A1, 0x5B614ADD63E563E3,  // 0x00014878 
	0x531F531D63A173E3, 0x6361636163A163A1, 0x73E35B61535F535F, 0x5B5F5B6173E563A1,  // 0x00014898 
	0x5B615B6173E373E5, 0x531F5B5F636163A1, 0x63A16BA173E36BE3, 0x63A15B5F6BE373E3,  // 0x000148B8 
	0x531D531D63A173E3, 0x6361636163A163A1, 0x73E35B61535F535F, 0x5B5F5B6173E563A1,  // 0x000148D8 
	0x5B615B6173E373E5, 0x531F5B5F636163A1, 0x63A173E36BE36BE3, 0x63A15B5F6BE373E3,  // 0x000148F8 
	0x531D531D5B5F6BA1, 0x63A15B615B6173E3, 0x73E55B5F63616BE3, 0x63A16BA173E36BE3,  // 0x00014918 
	0x63A15B5F6BE373E3, 0x531D5B5F63A163A1, 0x73E373E3636163A1, 0x6BE3531D63A16BA1,  // 0x00014938 
	0x63A15B5F5B616361, 0x6BE563A15BA16BE3, 0x6BE363A35BA36BE5, 0x74696BE36BE363A1,  // 0x00014958 
	0x5B61531D63A16BA1, 0x531D531D63A173E3, 0x73E363A163A16BA3, 0x63614ADD63A163A3,  // 0x00014978 
	0x6BE3531F5B615B5F, 0x6C276C276C696BE5, 0x6BA3642764697469, 0x74ED6C696C696BE5,  // 0x00014998 
	0x5B615BA36BE56C69, 0x63E5531D63A173E3, 0x7CAB5B5F5B5F6BA1, 0x5B5F4ADD63E563E3,  // 0x000149B8 
};

u64 _tokinoma_room_0_tex_000149D8[] = 
{
	0x3A593A5932173259, 0x3A593A5B32173A59, 0x3A593A593A59429B, 0x429B429B4ADD429B,  // 0x000149D8 
	0x3A593A59429B3A59, 0x429B3A59429B4ADD, 0x531F4ADD4ADD4ADD, 0x4ADD4ADD3A59429B,  // 0x000149F8 
	0x3A593A5929D73A59, 0x32173A5B3A59429B, 0x3A593A5B3A593A5B, 0x429B3A59429B3A5B,  // 0x00014A18 
	0x3A59429B429B3A59, 0x429B3A594ADD429B, 0x42DB429B3A5B429B, 0x3A5932173A593A59,  // 0x00014A38 
	0x3A59429B3A593219, 0x429B3A59429B425B, 0x429B3219429B429B, 0x3A9B3A593A59429B,  // 0x00014A58 
	0x3A59429B3A593A59, 0x429B3A593A593A59, 0x4ADD32173A593217, 0x3A592A173A59429B,  // 0x00014A78 
	0x429B3A59429B3A59, 0x3A59321732173217, 0x3A5B31D7429B429B, 0x429B429B3A593A59,  // 0x00014A98 
	0x3A593A59429B3A59, 0x3217321932173A59, 0x429B3A59429B4ADD, 0x3A593A593A59429B,  // 0x00014AB8 
	0x321732193A59429B, 0x32173A5932173217, 0x32173A5932173A5B, 0x3A5B429B4ADD425B,  // 0x00014AD8 
	0x3A593A593A593A59, 0x3A5B429B3A593A59, 0x3A5B429B429B429B, 0x429B32173A1929D5,  // 0x00014AF8 
	0x29D5429B3A59429B, 0x4ADD429B3217429B, 0x29D7321732193A59, 0x429B3A5B531F429B,  // 0x00014B18 
	0x32173A5B3A59429B, 0x4ADD3A5B429B3A59, 0x32173A593A5929D7, 0x3A593A5929D531D7,  // 0x00014B38 
	0x32193217429B3A59, 0x429B3A5B429B3217, 0x321931D732173217, 0x3A5932174ADD429B,  // 0x00014B58 
	0x3A5B3A9B32173A59, 0x3A5B429B32193A59, 0x3A59429B429B3A59, 0x425B321729D729D5,  // 0x00014B78 
	0x32173A5932173A59, 0x429B3A59429B429B, 0x32173A593A593217, 0x32173217531D429B,  // 0x00014B98 
	0x4ADD3A5932173A59, 0x32173A593A5B4ADD, 0x429B4ADD4ADD429B, 0x3A59429B32173217,  // 0x00014BB8 
	0x321729D532193A59, 0x3A59429B429B3A59, 0x3A5932173A594ADD, 0x429B321742DB429B,  // 0x00014BD8 
	0x429B3A5B3A59429B, 0x429B429B4ADD429B, 0x4ADD531F3A59429B, 0x42DB429B32173217,  // 0x00014BF8 
	0x3219321732173A5B, 0x3A593A5932173A59, 0x29D53A593A5942DB, 0x3217429B429B429B,  // 0x00014C18 
	0x3A5B429B429B429B, 0x3A593A593A593A59, 0x3A59429B429B3219, 0x531F3A593A593A59,  // 0x00014C38 
	0x3A5B3A5932173219, 0x3A593A593A593A59, 0x3A5921933A59429B, 0x429B429B429B4ADD,  // 0x00014C58 
	0x3A593A59429B429B, 0x3A9B429B32173A59, 0x429B32173A5B429B, 0x4ADD429B3A593219,  // 0x00014C78 
	0x31D729D532173A5B, 0x429B32174ADD429B, 0x31D732173A593A59, 0x3A594ADD429B531F,  // 0x00014C98 
	0x3A593A59429B3A59, 0x429B429B3217429B, 0x3A593A594B1D4ADD, 0x3A593A593A593A5B,  // 0x00014CB8 
	0x3A9B29D73A593A59, 0x3A593A59429B3A59, 0x3A593A5929D529D5, 0x3A5B429B3A9B531F,  // 0x00014CD8 
	0x3A5942DD3A59429B, 0x4ADD3A593A593A59, 0x3A5929D732173217, 0x3A59429B3A594ADD,  // 0x00014CF8 
	0x429B3A593217429B, 0x429B429B32193A59, 0x29D529D5321729D5, 0x3A593A594ADD531F,  // 0x00014D18 
	0x4ADD3A5932173A59, 0x42DD31D729D53217, 0x29D531D73A9B425B, 0x429B429B32173A59,  // 0x00014D38 
	0x3A5B429B429B429B, 0x531F4ADD32173217, 0x3A5932173A593217, 0x3217429B429B531D,  // 0x00014D58 
	0x429B3A593A59429B, 0x3217321732173A59, 0x32173A593A593217, 0x3217429B3A5B429B,  // 0x00014D78 
	0x429B3A593A59429B, 0x4ADD429B4ADD429B, 0x3A5B32193A5929D7, 0x3A9B3A593A59531F,  // 0x00014D98 
	0x4ADD3A5932174ADD, 0x4ADD32173A593A59, 0x3A5B429B3A5B3A99, 0x429B429B3A5B3A59,  // 0x00014DB8 
	0x3217321732174ADD, 0x531F4ADD32173217, 0x32173A59321729D5, 0x29D53A594ADD531F,  // 0x00014DD8 
	0x429B3A59429B3A59, 0x3A5B29D532173219, 0x29D54ADD429B3A5B, 0x3217531D429B531F,  // 0x00014DF8 
	0x429B429B4ADD429B, 0x5B5F3A593A593A5B, 0x3A5932173A593A59, 0x3A593217429B531F,  // 0x00014E18 
	0x4ADD3A5932173A5B, 0x32193A5929D73219, 0x29D5531F429B429B, 0x3A594ADD425B4B1D,  // 0x00014E38 
	0x429B3A593A5B3A5B, 0x531F3A59429B3A59, 0x32173A593217429B, 0x3A5929D7531D531D,  // 0x00014E58 
	0x3A9B3A593A59429B, 0x3A5932173A593A59, 0x29D74ADD3A59429B, 0x4ADD429B531F4ADD,  // 0x00014E78 
	0x4B1D429B429B531D, 0x531F3A593A5B3217, 0x32173A593A593A59, 0x4ADD32174ADD42DB,  // 0x00014E98 
	0x3A59429B429B3A59, 0x3A59429B3A593217, 0x29D73A59429B3A5B, 0x429B429B4ADD4ADD,  // 0x00014EB8 
	0x3A593A59429B531F, 0x531F429B429B3217, 0x3A59321729D73A59, 0x429B32174ADD429B,  // 0x00014ED8 
	0x3A593A59429B429B, 0x429B3A59429B3A59, 0x429B3A5B4ADD4ADD, 0x429B4ADD3A593A59,  // 0x00014EF8 
	0x3A5B3A593A5942DB, 0x4ADD4ADD4ADD429B, 0x3A593217429B3A59, 0x531D4ADD4ADD3217,  // 0x00014F18 
	0x3A593A59429B3A59, 0x4ADD3A59429B429B, 0x3A5B3A9B4B1D4ADD, 0x531D4ADD32173217,  // 0x00014F38 
	0x3219321932193A59, 0x531F531F4ADD429B, 0x429B429B429B4ADD, 0x429B429B4ADD3A59,  // 0x00014F58 
	0x32173217429B429B, 0x4ADD429B32193A59, 0x429B3A594ADD531F, 0x3A59531F3A593A9B,  // 0x00014F78 
	0x3A59429B42DB4B1D, 0x429B4ADD4B1D429B, 0x3217429B3A594ADD, 0x4ADD429B531D4ADD,  // 0x00014F98 
	0x3A593A593A594ADD, 0x4ADD3A593A593219, 0x3A593A593A594B1D, 0x429B531F3A593A59,  // 0x00014FB8 
	0x429B429B3A5B429B, 0x4ADD4ADD531F429B, 0x429B3217429B4ADD, 0x4B1D4ADD531F429B,  // 0x00014FD8 
	0x3A593A59429B429B, 0x531F429B3217429B, 0x3A594ADD429B4ADD, 0x429B4ADD3A593A59,  // 0x00014FF8 
	0x3A5B429D53614ADD, 0x4B1D531F531F429B, 0x429B3A9B42DD4B1F, 0x42DD3ADD4B1F42DD,  // 0x00015018 
	0x429B3A594ADD42DD, 0x531D429B32173A5B, 0x3A9B531F4ADD535F, 0x42DD5B613A593A59,  // 0x00015038 
	0x42DF53E55C276469, 0x4B614B1F5B614B1F, 0x4B1F53A34BA36427, 0x64295C275C274BA3,  // 0x00015058 
	0x4B614B615363431F, 0x5361325932593217, 0x429B5B6153615BE5, 0x53A553A542DD3A9D,  // 0x00015078 
	0x64AB6CED7DB37DF5, 0x6CED5C2964AB5C6B, 0x6D2F6D31757375B3, 0x7573757175716D2F,  // 0x00015098 
	0x75316D316CEF5C6B, 0x64294B6343214B61, 0x4B615C295C2B64AF, 0x5C6F646D5C2953E7,  // 0x000150B8 
	0x867986798EBB8E7B, 0x86377DF775B97DF9, 0x7DFB75FB7DFD7DFD, 0x7E3B863B863B8639,  // 0x000150D8 
	0x863B7DFB7DBB757B, 0x6D796539653964F7, 0x65376D396D396D79, 0x6D7975B975B775B7,  // 0x000150F8 
	0x96FD96FD96FD96FD, 0x8EBD867D7E3F7DFF, 0x7DFF75BF75FF75FF, 0x7E3F7E3F867F867F,  // 0x00015118 
	0x863F863F7DFF75BF, 0x757F757F75BF75BF, 0x75BF75BF7DBF85FD, 0x863D8E3D8E7D8E3D,  // 0x00015138 
	0xA73FAF3FB73FB73F, 0xAF3F9EBF967F9E7F, 0xA6BF9E7F9E7FA6BF, 0xA6BFA6FFAEFFAEFF,  // 0x00015158 
	0xAEFFAEFFA6BFA6BF, 0x9EBF9E7F9E7F9E7F, 0x9E7FA67FA67FAEBF, 0xB6FFB6FFAEFFAEFF,  // 0x00015178 
	0xD73BDFBFD77DDFBD, 0xD77FD77FCF3FC73F, 0xC73FC73FC73FCF7F, 0xD77FE7BFE7BFDFBF,  // 0x00015198 
	0xD77DCF7FC73DC73D, 0xC73DC73DD77FD77F, 0xCF3FC73FC73FC73F, 0xCF3FD77FDFBFD7BF,  // 0x000151B8 
};

u64 _tokinoma_room_0_tex_000151D8[] = 
{
	0xFFFFFFFFFFFFE739, 0x4211E739FFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,  // 0x000151D8 
	0xFFFFFFFFFFFF9CE7, 0x318DC631C631318D, 0xA529FFFFFFFFFFFF, 0xFFFFFFFFE7392109,  // 0x000151F8 
	0xFFFFFFFFFFFFE739, 0x4211E739FFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,  // 0x00015218 
	0xFFFFFFFF9CE7318D, 0x94A5E739E7398C63, 0x318DA529FFFFFFFF, 0xFFFFFFFFE7392109,  // 0x00015238 
	0xE739FFFFFFFFE739, 0x4211E739FFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,  // 0x00015258 
	0xFFFF9CE7318D2109, 0x4211421142114211, 0x2109318DA529FFFF, 0xFFFFFFFFE7392109,  // 0x00015278 
	0x4211B5ADFFFFE739, 0x4211E739FFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,  // 0x00015298 
	0x9CE739CFA529E739, 0xE739E739E739E739, 0xE7399CE7318DA529, 0xFFFFFFFFE7392109,  // 0x000152B8 
	0x8C6339CFB5ADE739, 0x4211E739FFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFA529,  // 0x000152D8 
	0x39CFA529FFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFE7392109318D, 0xAD6BFFFFE7392109,  // 0x000152F8 
	0xFFFF8C6339CF94A5, 0x4211E739FFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFA52939CF,  // 0x00015318 
	0xA529FFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFE73942118421, 0x39CFAD6BE7392109,  // 0x00015338 
	0xFFFFFFFF8C63318D, 0x2109E739FFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFA52939CFA529,  // 0x00015358 
	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFE7394211E739, 0x9CE739CF8C632109,  // 0x00015378 
	0xFFFFFFFFFFFF8C63, 0x318DAD6BFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xA529318DA529FFFF,  // 0x00015398 
	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFE7394211E739, 0xFFFF7BDF294B18C7,  // 0x000153B8 
	0xFFFFFFFFFFFFFFFF, 0x94A539CFAD6BFFFF, 0xFFFFFFFFFFFFA529, 0x318D2109E739FFFF,  // 0x000153D8 
	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFE7394211E739, 0xB5AD421152952109,  // 0x000153F8 
	0xFFFFFFFFFFFFFFFF, 0xFFFF94A539CFAD6B, 0xFFFFFFFFA52939CF, 0x84214211E739FFFF,  // 0x00015418 
	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFE739421194A5, 0x39CF7BDFE7392109,  // 0x00015438 
	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFF94A539CF, 0xAD6BAD6B39CF9CE7, 0xE7394211E739FFFF,  // 0x00015458 
	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFE7392109318D, 0x8421FFFFE7392109,  // 0x00015478 
	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFF9CE7, 0x294B294B9CE7FFFF, 0xE7394211E739FFFF,  // 0x00015498 
	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFAD6B318D8C63, 0xFFFFFFFFE7392109,  // 0x000154B8 
	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFAD6B, 0x294B294BA529FFFF, 0xE7394211E739FFFF,  // 0x000154D8 
	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xA52939CF8C63FFFF, 0xFFFFFFFFE7392109,  // 0x000154F8 
	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFAD6B39CF, 0x94A59CE739CFA529, 0xE7394211E739FFFF,  // 0x00015518 
	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFA529, 0x39CF94A5FFFFFFFF, 0xFFFFFFFFE7392109,  // 0x00015538 
	0xFFFFFFFFFFFFFFFF, 0xFFFFAD6B39CF94A5, 0xFFFFFFFF9CE739CF, 0x8C634211E739FFFF,  // 0x00015558 
	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFF9CE739CF, 0x9CE7FFFFFFFFFFFF, 0xFFFFFFFFE7392109,  // 0x00015578 
	0xFFFFFFFFFFFFFFFF, 0xB5AD39CF8C63FFFF, 0xFFFFFFFFFFFFA529, 0x318D2109C631E739,  // 0x00015598 
	0xE739E739E739E739, 0xE73994A539CF9CE7, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFE7392109,  // 0x000155B8 
	0xFFFFFFFFFFFFB5AD, 0x39CF8C63FFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xA529294B21094211,  // 0x000155D8 
	0x4211421142114211, 0x2109318DA529FFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFE7392109,  // 0x000155F8 
	0xFFFFFFFFB5AD39CF, 0x8C63FFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFA529318D8421,  // 0x00015618 
	0xE739E739E7397BDF, 0x318DA529FFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFE7392109,  // 0x00015638 
	0xFFFFB5AD39CF8C63, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFA52939CF,  // 0x00015658 
	0x9CE7FFFF8C6339CF, 0xAD6BFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFE7392109,  // 0x00015678 
	0xB5AD39CF739DE739, 0xE739E739E739E739, 0xE739E739E739E739, 0xE739E739E7398C63,  // 0x00015698 
	0x318D6319318D94A5, 0xE739E739E739E739, 0xE739E739E739E739, 0xE739E739C6312109,  // 0x000156B8 
	0x2109084321094211, 0x4211421142114211, 0x4211421142114211, 0x4211421142112109,  // 0x000156D8 
	0x0843210921094211, 0x4211421142114211, 0x4211421142114211, 0x4211421121092109,  // 0x000156F8 
	0x2109210921098C63, 0xC631E739E739E739, 0xE739E739E739E739, 0xE739E739A5292109,  // 0x00015718 
	0x210921095295B5AD, 0xE739E739E739E739, 0xE739E739E739E739, 0xE7398421294B1085,  // 0x00015738 
	0xE739C63139CF294B, 0x5295C631FFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFC63163194211,  // 0x00015758 
	0xA529421184214211, 0xB5ADFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0x94A539CF84212109,  // 0x00015778 
	0xFFFFFFFFE739BDEF, 0x42114A53AD6BBDEF, 0xBDEFBDEFBDEFBDEF, 0xA5295AD7C631E739,  // 0x00015798 
	0xE7394211E7398421, 0x4211B5ADFFFFFFFF, 0xFFFFFFFFFFFF8C63, 0x39CFA529E7392109,  // 0x000157B8 
	0xFFFFFFFFFFFFBDEF, 0x42112109318D318D, 0x318D318D318D318D, 0x318D294BB5ADFFFF,  // 0x000157D8 
	0xE7394211E739FFFF, 0x7BDF4211B5ADFFFF, 0xFFFFFFFF8C6339CF, 0xAD6BFFFFE7392109,  // 0x000157F8 
	0xFFFFFFFF94A539CF, 0x4211C631E739E739, 0xE739E739E739E739, 0xE7398C6339CFA529,  // 0x00015818 
	0xE7394211E739FFFF, 0xFFFF7BDF4211BDEF, 0xFFFF7BDF39CFB5AD, 0xFFFFFFFFE7392109,  // 0x00015838 
	0xE7399CE739CFA529, 0xE739FFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFF9CE739CF,  // 0x00015858 
	0x7BDF4211E739FFFF, 0xFFFFFFFF739D39CF, 0x63194211B5ADFFFF, 0xFFFFFFFFE7392109,  // 0x00015878 
	0x2109318D8C63E739, 0xE739E739E739E739, 0xE739E739E739E739, 0xE739E739E73994A5,  // 0x00015898 
	0x294B2109C631E739, 0xE739E739C6312109, 0x39CF9CE7E739E739, 0xE739E739C6312109,  // 0x000158B8 
	0x0843084321092109, 0x4211421142114211, 0x4211421142114211, 0x4211421142114211,  // 0x000158D8 
	0x2109108521094211, 0x4211421142112109, 0x2109421142114211, 0x4211421121090843,  // 0x000158F8 
	0x2109210921094211, 0xA529C631C631C631, 0xC631C631E739E739, 0xE739E739E739E739,  // 0x00015918 
	0xC63121094211A529, 0xC631E739E739E739, 0xE739E739E739E739, 0xE739A52942110843,  // 0x00015938 
	0xE739E739E739C631, 0x6319421142114211, 0x42116319C631E739, 0xE739E739E739E739,  // 0x00015958 
	0xE7394211A5296319, 0x4211C631E739E739, 0xE739E739E739E739, 0xC6318421A5292109,  // 0x00015978 
	0xFFFFFFFFFFFFFFFF, 0xE739E739E739E739, 0xE739C63142112109, 0x2109210921094211,  // 0x00015998 
	0xC6314211E739C631, 0x2109210921092109, 0x2109210921092109, 0x4211C631E7392109,  // 0x000159B8 
};

u64 _tokinoma_room_0_tex_000159D8[] = 
{
	0x3A993A9942993A99, 0x3A993A993A593A99, 0x4299429942994299, 0x3A993A993A993A99,  // 0x000159D8 
	0x4ADB429B4ADB4ADB, 0x42993A9942994299, 0x4ADB42993A994299, 0x4ADB4ADB429B3A99,  // 0x000159F8 
	0x42994299429B4299, 0x4299429B4299429B, 0x4ADB4ADB4ADB42DB, 0x4299429B429B3A57,  // 0x00015A18 
	0x4299429942DB4ADB, 0x429942994ADB4ADB, 0x52DB4ADB4ADB429B, 0x4299429942993A59,  // 0x00015A38 
	0x42994ADB429942DB, 0x429942DB429942DB, 0x42DB4ADB4ADB4ADB, 0x4ADB42DB42DB3A59,  // 0x00015A58 
	0x42DB4ADB4ADB4ADB, 0x429942994299429B, 0x3A99429B429B4299, 0x4ADB42DB42993257,  // 0x00015A78 
	0x429B42DB42994ADB, 0x4ADB4ADB4ADB4ADB, 0x4ADB4ADB4ADB4ADB, 0x4ADB4ADB4ADB3A99,  // 0x00015A98 
	0x4ADB4ADB4ADB4ADB, 0x4ADB4ADB4ADB4ADB, 0x429B42DB4ADB4ADB, 0x4ADB4299429B3A99,  // 0x00015AB8 
	0x429B429B429B42DB, 0x4ADB429B429B429B, 0x429B4ADB4ADB4ADB, 0x429B4ADB429B4299,  // 0x00015AD8 
	0x4ADB4ADB4ADB4ADB, 0x429B4ADB429B4ADB, 0x42994299429B4ADB, 0x4ADB429942993A57,  // 0x00015AF8 
	0x429B429B42DB429B, 0x42DB4ADB42DB4ADB, 0x429B4ADB4ADB429B, 0x4ADB4ADB429B3A99,  // 0x00015B18 
	0x4ADB42994ADB4ADB, 0x42DB4ADB42DB4ADB, 0x42DB4ADB4ADB4ADB, 0x42DB429B42993A57,  // 0x00015B38 
	0x429B429B4ADB429B, 0x4ADB4ADB4ADB4ADB, 0x4ADB4ADB429B4299, 0x4ADB4ADB4ADB3A99,  // 0x00015B58 
	0x4299429B4ADB4299, 0x429B4ADB429B4ADB, 0x42DB429B429B4ADB, 0x4ADB4ADB429B3A99,  // 0x00015B78 
	0x429942994ADB4ADB, 0x4ADB4ADB4ADB4ADB, 0x4ADB429B42994ADB, 0x4ADB429942994299,  // 0x00015B98 
	0x4ADB4ADB4ADB4299, 0x4ADB4ADB4ADB4ADB, 0x4ADB429B429B4ADB, 0x4ADB42DB4ADB3A99,  // 0x00015BB8 
	0x4ADB3A994ADB4ADB, 0x4ADB4ADB4ADB4ADB, 0x4ADB4ADB4ADB42DB, 0x4ADB4ADB429B4299,  // 0x00015BD8 
	0x4ADB4ADB4ADB429B, 0x4ADB429B429B429B, 0x4ADB429B429B4ADB, 0x429B429B4ADB3A59,  // 0x00015BF8 
	0x429942994ADB4ADB, 0x42994ADB4ADB4ADB, 0x42994ADB4ADB4299, 0x429952DB4ADB4299,  // 0x00015C18 
	0x42DB42DB4ADB429B, 0x4299429942994299, 0x429B429B4ADB4ADB, 0x42DB429942DB3A57,  // 0x00015C38 
	0x4ADB429B4ADB4ADB, 0x4ADB4ADB4ADB4ADB, 0x4ADB4ADB4ADB4ADB, 0x4ADB4ADB4ADB4299,  // 0x00015C58 
	0x4ADB42DB4ADB4ADB, 0x429B42DB429B4ADB, 0x4299429942DB4299, 0x4ADB429B42993257,  // 0x00015C78 
	0x4ADB429B3A994299, 0x4ADB4ADB4ADB4ADB, 0x4ADB4ADB4ADB4ADB, 0x429B429B4ADB4299,  // 0x00015C98 
	0x4ADB429B4ADB4ADB, 0x4ADB42DB42994ADB, 0x429B4ADB4ADB4299, 0x4299429942993257,  // 0x00015CB8 
	0x429942DB42DB42DB, 0x42DB429B42DB429B, 0x42DB4ADB4ADB4299, 0x429B4ADB42994299,  // 0x00015CD8 
	0x4ADB42DB42DB4ADB, 0x4ADB4ADB42994ADB, 0x4299429B4ADB4299, 0x4299429B42993215,  // 0x00015CF8 
	0x42994ADB4ADB4ADB, 0x4ADB42994ADB4299, 0x4ADB429B4ADB4ADB, 0x4ADB4ADB429B3257,  // 0x00015D18 
	0x4ADB42DB4ADB4299, 0x42DB4ADB42994ADB, 0x42994ADB4ADB42DB, 0x429B4299429B3A59,  // 0x00015D38 
	0x42994ADB4ADB429B, 0x429B4299429B4299, 0x4ADB42DB42DB4ADB, 0x4ADB42DB4ADB3257,  // 0x00015D58 
	0x42DB42DB4ADB4299, 0x429B4ADB4ADB4ADB, 0x4ADB42994ADB429B, 0x429942994ADB3257,  // 0x00015D78 
	0x42994ADB4ADB4299, 0x4ADB4ADB4ADB4ADB, 0x4ADB429B429B4299, 0x4ADB429942993257,  // 0x00015D98 
	0x42994ADB4ADB4299, 0x42DB4ADB4ADB4ADB, 0x4ADB4ADB4ADB4ADB, 0x42DB4ADB4ADB3A59,  // 0x00015DB8 
	0x32573A593A993A59, 0x325732573A573A57, 0x32573A5732573257, 0x3A9942993A593257,  // 0x00015DD8 
	0x3A593A5942994299, 0x32573A993A574299, 0x42993A9942993A99, 0x3A5732573A593257,  // 0x00015DF8 
	0x4ADB4ADB4ADB4ADB, 0x4ADB4ADB429B42DB, 0x4299429942DB4ADB, 0x429B42DB4ADB3A59,  // 0x00015E18 
	0x42DB4ADB4ADB4ADB, 0x4ADB4ADB4ADB429B, 0x429B4ADB4ADB4ADB, 0x4ADB4ADB4ADB3A57,  // 0x00015E38 
	0x4ADB4ADB4ADB4ADB, 0x4ADB4ADB4ADB4ADB, 0x4ADB42DB4ADB4ADB, 0x4ADB3A994ADB3A99,  // 0x00015E58 
	0x4ADB4ADB42994ADB, 0x4ADB4ADB4ADB4ADB, 0x4ADB4ADB4ADB4299, 0x4ADB4ADB429B3257,  // 0x00015E78 
	0x4ADB4ADB4ADB4ADB, 0x4ADB4ADB4ADB4ADB, 0x4ADB42DB4ADB4ADB, 0x4ADB42994ADB3A99,  // 0x00015E98 
	0x429B4ADB429952DB, 0x4ADB4ADB4ADB4ADB, 0x52DB4ADB4ADB4299, 0x4ADB4ADB4ADB3A99,  // 0x00015EB8 
	0x4ADB429B42DB4ADB, 0x4ADB429B4ADB4ADB, 0x4ADB4ADB4ADB42DB, 0x4299429B4ADB3A57,  // 0x00015ED8 
	0x4ADB429B4ADB4ADB, 0x4ADB4ADB429B4299, 0x4ADB4ADB42DB4ADB, 0x429B42DB42993A99,  // 0x00015EF8 
	0x429942994ADB4ADB, 0x42DB42DB4ADB4299, 0x4ADB4ADB4ADB429B, 0x429942DB42DB3A99,  // 0x00015F18 
	0x429B4ADB4ADB4ADB, 0x4ADB4ADB429B429B, 0x429B4ADB52DB4ADB, 0x429B42994ADB3A99,  // 0x00015F38 
	0x429B42994ADB4ADB, 0x429942DB4ADB4ADB, 0x4ADB429B4ADB4299, 0x42994ADB4ADB3A99,  // 0x00015F58 
	0x42DB4ADB4ADB4ADB, 0x42DB42DB4ADB4ADB, 0x4ADB4ADB4ADB4ADB, 0x42DB42DB4ADB4299,  // 0x00015F78 
	0x42DB42DB4ADB42DB, 0x42994ADB4ADB429B, 0x4299429B4ADB429B, 0x429942DB42DB3A99,  // 0x00015F98 
	0x429B4ADB4ADB4ADB, 0x42DB42DB4ADB4ADB, 0x52DB4ADB4ADB4ADB, 0x4ADB42DB4ADB3A99,  // 0x00015FB8 
	0x42994299429B4299, 0x429B4ADB4ADB4299, 0x429942994ADB4299, 0x42DB429B42993257,  // 0x00015FD8 
	0x429B4ADB4ADB4ADB, 0x4ADB42994ADB52DB, 0x4ADB4ADB4ADB4ADB, 0x4ADB4ADB42993A59,  // 0x00015FF8 
	0x429942994299429B, 0x4ADB42DB42DB3A99, 0x42DB42994ADB4299, 0x42994ADB42993A99,  // 0x00016018 
	0x4ADB42994ADB4ADB, 0x429B42994ADB52DB, 0x4ADB4ADB4ADB4ADB, 0x4ADB429B42993A99,  // 0x00016038 
	0x4299429942994ADB, 0x42DB429B42994299, 0x429B4ADB4ADB42DB, 0x4299429942994299,  // 0x00016058 
	0x4ADB429B42DB4299, 0x4299429942DB4ADB, 0x429B429B4ADB42DB, 0x4299429942993A99,  // 0x00016078 
	0x42994299429B42DB, 0x429B42994299429B, 0x429942994ADB42DB, 0x429B3A994ADB3A99,  // 0x00016098 
	0x4299429B42994ADB, 0x4ADB42DB4ADB4ADB, 0x4ADB42DB4ADB4299, 0x429B4ADB42993257,  // 0x000160B8 
	0x3A994299429B429B, 0x4299429942993A99, 0x3A99429B42994299, 0x429B429B4ADB3A99,  // 0x000160D8 
	0x429B429B42DB4ADB, 0x4299429B4ADB4ADB, 0x4ADB4ADB4ADB42DB, 0x4299429B42993217,  // 0x000160F8 
	0x42993A99429B4299, 0x3A99429942993A59, 0x3A99429942994299, 0x429B429942DB3257,  // 0x00016118 
	0x429B42DB429B429B, 0x429942994ADB429B, 0x4299429B42DB429B, 0x3A9942DB3A993217,  // 0x00016138 
	0x42993A99429B429B, 0x3A9942993A994299, 0x42993A99429B429B, 0x42994ADB4ADB2A15,  // 0x00016158 
	0x42DB429B42994ADB, 0x4ADB429942994299, 0x3A99429B42DB4299, 0x42994ADB429B3257,  // 0x00016178 
	0x3A57325732153A57, 0x3257321732573257, 0x32572A1532173217, 0x3257321732153215,  // 0x00016198 
	0x32573A593A573A59, 0x3A57321732573215, 0x32573A5732573257, 0x3257325732152A15,  // 0x000161B8 
};

u64 _tokinoma_room_0_tex_000161D8[] = 
{
	0x4ADB42DB535F531D, 0x63A173E373E36361, 0x63A14ADD3A594299, 0x4ADB5B61531F531D,  // 0x000161D8 
	0x5B615B61535F63A1, 0x63A173E36BA16BA1, 0x6BE363A15B5F531D, 0x6BA16BE35B5F6BE5,  // 0x000161F8 
	0x7C254ADB5B5F531D, 0x63A173E363A163A1, 0x6BA3531F63A173E3, 0x63A173E56BA173E3,  // 0x00016218 
	0x7C256BA16BE35B5F, 0x7C257C2573E37C25, 0x6BA15B5F531F531F, 0x636163A17C2573E3,  // 0x00016238 
	0x73E35B614ADD531D, 0x5B5F6BA15B5F5B5F, 0x6BA1531D5B616BA1, 0x5B5F6BE3535F531D,  // 0x00016258 
	0x6BA15B615B5F6361, 0x636163A163A173E3, 0x63614ADD636163A1, 0x6361636163A16BA1,  // 0x00016278 
	0x73E5536142DB5B5F, 0x5B61636163615B5F, 0x63615B5F5B616361, 0x636163615B5F5B5F,  // 0x00016298 
	0x5B5F5B6173E563A1, 0x5B615B6173E373E5, 0x63A15B5F63616BA3, 0x6361535F5B6173E3,  // 0x000162B8 
	0x73E56BA173E3531F, 0x5B615B5F63615B5F, 0x63A1531F5B615B5F, 0x63615B5F636163A1,  // 0x000162D8 
	0x63A16BA173E36BE3, 0x63A15B5F6BE373E3, 0x5B5F531F535F6BE3, 0x5B5F5B615B5F6BE3,  // 0x000162F8 
	0x6BE3535F531D4ADD, 0x5B61535F531D535F, 0x5B5F4ADD5B61535F, 0x531D5B5F63A163A1,  // 0x00016318 
	0x73E36BE36BE363A1, 0x5B61531D63A16BA1, 0x5B5F531D5B5F73E3, 0x6BA36BA3531D6BA1,  // 0x00016338 
	0x5B61535F535F531D, 0x4ADD4ADB42DB535F, 0x5B5F531D4ADD4ADB, 0x42DB531D63A173E3,  // 0x00016358 
	0x73E3636163A16BE3, 0x4ADD4ADD63A163A1, 0x531F531D5B615B61, 0x535F63A14ADD63A1,  // 0x00016378 
	0x5B5F636163A142DB, 0x3A5942994ADB5B5F, 0x531F42DB3A594299, 0x4ADB531D63A173E3,  // 0x00016398 
	0x63A163A16BA36361, 0x531F4ADD63A16BA1, 0x73E363A163A16BA3, 0x6361531F4ADD63A1,  // 0x000163B8 
	0x5B5F63A163A173E3, 0x6BE36BE363A15B61, 0x531D63A16BA15B61, 0x6361531D5B5F6BA1,  // 0x000163D8 
	0x5B5F5B5F6BA15B5F, 0x531F531F63616BA1, 0x6BA15B5F5B5F6BA1, 0x5B5F531F531F6361,  // 0x000163F8 
	0x531D63A173E373E3, 0x636163A16BE373E5, 0x6BA173E37C256BA1, 0x6BE35B5F5B616361,  // 0x00016418 
	0x63615B5F63614ADD, 0x73E56BA173E37C25, 0x6BA16BE35B5F7C25, 0x7C2773E37C256361,  // 0x00016438 
	0x531D63A173E363A1, 0x63A16BA363616BE3, 0x535F531D6BA15B61, 0x5B5F531F5B615B5F,  // 0x00016458 
	0x63615B6163A15B5F, 0x6BE35B5F531F6BA1, 0x5B615B5F63616361, 0x63A163A173E35B61,  // 0x00016478 
	0x531D5B5F6BA15B5F, 0x5B5F6BA15B5F6361, 0x5B5F535F5B5F5B61, 0x73E54ADD5B61535F,  // 0x00016498 
	0x531D535F5B5F531F, 0x5B61535F535F5B5F, 0x5B6173E56BA163A1, 0x5B6173E373E55B5F,  // 0x000164B8 
	0x5B5F5B6163616361, 0x5B5F63614ADD5B5F, 0x636163A163A16BA1, 0x73E3531D4ADD4ADB,  // 0x000164D8 
	0x42DB535F5B5F531D, 0x5B5F636163A163A1, 0x6BA173E36BE363A1, 0x5B5F6BE373E36BA3,  // 0x000164F8 
	0x531F5B615B5F6361, 0x5B5F63A15B5F5B5F, 0x63A163A173E36BE3, 0x6BE342DB3A594299,  // 0x00016518 
	0x4ADB5B5F531F531D, 0x5B5F63A163A173E3, 0x6BE36BE36BA15B61, 0x531D63A16BA1535F,  // 0x00016538 
	0x4ADD5B61535F531D, 0x5B5F5B61531F531D, 0x63A173E373E36361, 0x63A16BE34ADD4ADD,  // 0x00016558 
	0x63A163A173E36BE3, 0x531D63A173E373E3, 0x636163A16BE34ADD, 0x4ADD63A163A17C25,  // 0x00016578 
	0x531D4ADD4ADB42DB, 0x535F5B5F531D531D, 0x63A173E363A163A1, 0x6BA36361531F4ADD,  // 0x00016598 
	0x63A16BA173E36361, 0x531D63A173E363A1, 0x63A16BA36361531F, 0x4ADD63A16BA36361,  // 0x000165B8 
	0x42DB3A5942994ADB, 0x5B5F531F531D531D, 0x5B5F6BA15B5F5B5F, 0x6BA15B5F531F531F,  // 0x000165D8 
	0x636163A163A163A1, 0x531D5B5F6BA15B5F, 0x5B5F6BA15B5F531F, 0x531F63616BE363E3,  // 0x000165F8 
	0x5B5F6BE373E35B5F, 0x636173E563A15B5F, 0x5B61636163615B5F, 0x63614ADD636163A1,  // 0x00016618 
	0x636163615B5F5B5F, 0x5B5F5B6163616361, 0x5B5F63614ADD6361, 0x63A1636163A163A1,  // 0x00016638 
	0x531D63A16BA163A1, 0x6BA173E36BE3531F, 0x5B615B5F63615B5F, 0x63A15B5F63616BA3,  // 0x00016658 
	0x5B61535F63615B5F, 0x531F5B615B5F6361, 0x5B5F63A15B5F6361, 0x6BA35B61535F5B61,  // 0x00016678 
	0x531F63A163A173E3, 0x6BE36BE363A14ADD, 0x5B61535F531D535F, 0x5B5F531F535F6BE3,  // 0x00016698 
	0x5B5F5B5F63615B5F, 0x4ADD73E56BA173E3, 0x7C256BA16BE35B5F, 0x7C257C2573E37C27,  // 0x000166B8 
	0x4ADD63A16BA173E3, 0x636163A16BE3531D, 0x4ADD73E56BA173E3, 0x7C256BA16BE35B5F,  // 0x000166D8 
	0x7C257C2573E37C25, 0x531D6BE3535F531D, 0x6BA15B615B5F6361, 0x636163A163A173E3,  // 0x000166F8 
	0x531F636163A16BE3, 0x5B5F7C257C2542DB, 0x3A596BE3535F531D, 0x6BA15B615B5F6361,  // 0x00016718 
	0x636163A163A173E3, 0x42DB5B61535F535F, 0x5B5F5B6173E563A1, 0x5B615B6173E373E5,  // 0x00016738 
	0x63A1636163615B5F, 0x6361636163A163A1, 0x73E35B61535F535F, 0x5B5F5B6173E563A1,  // 0x00016758 
	0x5B615B6173E373E5, 0x531F5B5F636163A1, 0x63A16BA173E36BE3, 0x63A15B5F6BE373E3,  // 0x00016778 
	0x63A1636163615B5F, 0x6361636163A163A1, 0x73E35B61535F535F, 0x5B5F5B6173E563A1,  // 0x00016798 
	0x5B615B6173E373E5, 0x531F5B5F636163A1, 0x63A16BA173E36BE3, 0x63A15B5F6BE373E3,  // 0x000167B8 
	0x6BA35B61535F73E5, 0x63A15B615B6173E3, 0x73E55B5F63616BE3, 0x63A16BA173E36BE3,  // 0x000167D8 
	0x63A15B5F6BE373E3, 0x531D5B5F63A163A1, 0x73E36BE36BE363A1, 0x5B61531D63A16BA1,  // 0x000167F8 
	0x6BE35B5F5B5F6BE5, 0x6BE563A15BA16BE3, 0x6BE363A35BA36BE5, 0x74696BE36BE363A1,  // 0x00016818 
	0x5B61531D63A16BA1, 0x531D531D63A173E3, 0x73E3636163A17CAB, 0x53614ADD63A163A3,  // 0x00016838 
	0x746963A36BE56C27, 0x6C276C276C696BE5, 0x6BA3642764697469, 0x74ED6C696C696BE5,  // 0x00016858 
	0x5B615BA36BE56C69, 0x63E5531D63A173E3, 0x7CAB63A17CAB63E7, 0x5BE54ADD63E563E3,  // 0x00016878 
	0x752F5BE55BE77469, 0x74ED7CAB74AD7469, 0x63A3642774EF7CED, 0x7D3174AB6C6B6C27,  // 0x00016898 
	0x6C6964277CAB7CEF, 0x6C6B746B6C2763A3, 0x74AB64256C6B6C6B, 0x6C6D6C6D642763E5,  // 0x000168B8 
	0x8DF595F585717CEF, 0x7D2F95B585317CED, 0x7CED852F8DB595B3, 0x85737D2F752F7CED,  // 0x000168D8 
	0x7D2F6CEF95B595B5, 0x6CAF857574AF8531, 0x95B395737CAD74F1, 0x8D738D7374AD6427,  // 0x000168F8 
	0x9679967796779677, 0x963795F595F78DF7, 0x8DF785B785B785F9, 0x85B585F78E378E37,  // 0x00016918 
	0x8DF585F785B77D77, 0x7D777D7785758575, 0x8D7585757D777577, 0x85B585B78DB38DF7,  // 0x00016938 
	0x8E798E7996799679, 0x8E397DB97DB97DB9, 0x7DB9757975797579, 0x75797DB985F985F9,  // 0x00016958 
	0x7DB97D7975796D39, 0x6CF96D396D397539, 0x6D396D3975397D79, 0x85B985B98DB785F9,  // 0x00016978 
	0x96FF96FF9EFF96FF, 0x8EBF863F7DFF7DBF, 0x757F6D7F6D7F6D7F, 0x75BF7DFF863F863F,  // 0x00016998 
	0x863F7DFF7D7F6D3F, 0x6CFF64FF6D3F6D3F, 0x6D3F6D3F757F7DBF, 0x85FF8E3F8E7F8E3F,  // 0x000169B8 
};

u64 _tokinoma_room_0_tex_000169D8[] = 
{
	0xFFFFFFFFFFFFFFFF, 0xFFFFE7BDFFFFF7FF, 0xE7BDE7BDEFFFEFFF, 0xFFFFF7FFE7FDFFFF,  // 0x000169D8 
	0xFFFFF7FFF7FFF7FF, 0xFFFFF7FFE7FFFFFF, 0xF7FFE7FDEFFFF7FF, 0xFFFFFFFFF7FFFFFF,  // 0x000169F8 
	0xFFFFFFFFF7FFFFFF, 0xFFFFF7FFFFFFE7FF, 0xE7FFFFFFFFFFFFFF, 0xEFFDE7BDFFFFE7BD,  // 0x00016A18 
	0xFFFFFFFFFFFFF7FF, 0xE7BDF7FFE7BDE7BF, 0xF7FFFFFFFFFFE7FF, 0xEFFFE7FFEFFFEFFF,  // 0x00016A38 
	0xFFFFFFFFE7BDFFFF, 0xFFFFFFFFFFFFF7FF, 0xFFFFFFFFE7BDFFFF, 0xE7FDE7BDFFFFFFFF,  // 0x00016A58 
	0xFFFFFFFFE7BDFFFF, 0xFFFFE7FDFFFFEFFF, 0xFFFFE7FFE7FDF7FF, 0xE7FFE7BFE7FDDFFF,  // 0x00016A78 
	0xFFFFFFFFF7FFFFFF, 0xF7FFE7FDFFFFFFFF, 0xFFFFF7FFE7BDE7BD, 0xE7FFFFFFFFFFE7BD,  // 0x00016A98 
	0xF7FFFFFFE7FDFFFF, 0xFFFFE7FDF7FFE7BD, 0xFFFFFFFFEFFFFFFF, 0xFFFFEFFFFFFFFFFF,  // 0x00016AB8 
	0xFFFFFFFFE7FDE7FD, 0xE7BDFFFFFFFFFFFF, 0xFFFFE7FDE7BDFFFF, 0xFFFFF7FFFFFFFFFF,  // 0x00016AD8 
	0xFFFFFFFFF7FFFFFF, 0xFFFFE7BDE7BDFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFF7FFFFFF,  // 0x00016AF8 
	0xFFFFFFFFEFFFE7BD, 0xE7FDFFFFFFFFFFFF, 0xF7FFE7BDE7BDFFFF, 0xFFFFE7BFFFFFFFFF,  // 0x00016B18 
	0xE7FFFFFFFFFFFFFF, 0xE7FFE7BDF7FFF7FF, 0xF7FFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,  // 0x00016B38 
	0xFFFFFFFFFFFFF7FF, 0xE7FFFFFFFFFFFFFF, 0xFFFFF7FFEFFFEFFF, 0xF7FFEFFDE7BDE7BD,  // 0x00016B58 
	0xFFFFFFFFFFFFEFFD, 0xE7BDEFFFF7FFF7FF, 0xF7FFEFFFF7FFFFFF, 0xFFFFEFFFEFFFE7BF,  // 0x00016B78 
	0xFFFFFFFFFFFFFFFF, 0xF7FFF7FFFFFFF7FF, 0xEFFFE7FDFFFFF7FF, 0xE7FFFFFFF7FFEFFF,  // 0x00016B98 
	0xEFFFF7FFE7FDE7BD, 0xF7FFFFFFFFFFE7BD, 0xFFFFE7FFE7FDF7FF, 0xFFFFFFFFFFFFFFFF,  // 0x00016BB8 
	0xE7BDFFFFFFFFEFFF, 0xEFFFF7FFE7FFE7BD, 0xEFFDE7BDFFFFFFFF, 0xFFFFFFFFFFFFFFFF,  // 0x00016BD8 
	0xE7BDE7BDE7BDE7BD, 0xFFFFFFFFEFFFE7BD, 0xEFFFEFFFFFFFE7BD, 0xF7FFFFFFFFFFFFFF,  // 0x00016BF8 
	0xE7BDF7FFFFFFFFFF, 0xFFFFFFFFE7FDE7BD, 0xE7BDE7FFE7FFF7FF, 0xFFFFE7FDF7FFFFFF,  // 0x00016C18 
	0xF7FFE7BDE7FFF7FF, 0xFFFFFFFFE7FDE7BD, 0xE7FDFFFFFFFFFFFF, 0xEFFFFFFFFFFFF7FF,  // 0x00016C38 
	0xE7BDF7FFFFFFFFFF, 0xE7FFFFFFFFFFE7BD, 0xE7BDE7BDE7BDEFFF, 0xFFFFFFFFEFFFFFFF,  // 0x00016C58 
	0xE7BDEFFFFFFFF7FF, 0xE7FFEFFFE7BDF7FF, 0xFFFFFFFFFFFFF7FF, 0xF7FFF7FFE7FDE7BD,  // 0x00016C78 
	0xE7FFFFFFFFFFFFFF, 0xEFFFFFFFFFFFE7FF, 0xE7BDFFFFFFFFFFFF, 0xE7FDE7BDE7BDFFFF,  // 0x00016C98 
	0xFFFFFFFFFFFFFFFF, 0xFFFFEFFFE7FDEFFF, 0xE7BDFFFFFFFFF7FF, 0xEFFFF7FFEFFFE7BD,  // 0x00016CB8 
	0xF7FFFFFFEFFFFFFF, 0xEFFFFFFFFFFFFFFF, 0xF7FFFFFFEFFDF7FF, 0xE7FFE7BDE7BDFFFF,  // 0x00016CD8 
	0xFFFFFFFFFFFFFFFF, 0xFFFFF7FFFFFFEFFF, 0xE7FFFFFFE7FFE7BF, 0xFFFFF7FFE7FFE7FD,  // 0x00016CF8 
	0xFFFFFFFFEFFDFFFF, 0xE7BDFFFFFFFFFFFF, 0xFFFFFFFFF7FFDFFD, 0xEFFFE7BDF7FFE7BD,  // 0x00016D18 
	0xE7BDE7BDE7FFFFFF, 0xFFFFEFFFF7FFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFF7FFE7BDE7BF,  // 0x00016D38 
	0xEFFFFFFFE7FDF7FF, 0xE7BDF7FFFFFFFFFF, 0xE7BDE7FFE7FFF7FF, 0xFFFFFFFFFFFFFFFF,  // 0x00016D58 
	0xFFFFEFFFF7FFE7FF, 0xF7FFE7BDF7FFFFFF, 0xFFFFEFFFFFFFFFFF, 0xFFFFE7BDFFFFFFFF,  // 0x00016D78 
	0xFFFFFFFFF7FFFFFF, 0xEFFFE7FFE7BDE7BD, 0xFFFFFFFFE7FDF7FF, 0xFFFFFFFFE7BDFFFF,  // 0x00016D98 
	0xFFFFF7FFFFFFE7FF, 0xFFFFEFFFEFFFFFFF, 0xFFFFF7FFFFFFFFFF, 0xEFFFDFFDFFFFFFFF,  // 0x00016DB8 
	0xF7FFF7FFFFFFFFFF, 0xFFFFE7BFF7FFE7FF, 0xFFFFFFFFF7FFE7BD, 0xE7BFEFFFEFFFFFFF,  // 0x00016DD8 
	0xF7FFE7FDFFFFEFFF, 0xE7BDE7BDE7BDFFFF, 0xF7FFE7FFFFFFF7FF, 0xE7FFE7BDE7FFF7FF,  // 0x00016DF8 
	0xE7FFE7FDFFFFFFFF, 0xFFFFF7FFFFFFFFFF, 0xE7BDFFFFE7FFE7FF, 0xFFFFFFFFFFFFEFFD,  // 0x00016E18 
	0xE7BDFFFFE7BDFFFF, 0xFFFFF7FFE7BDE7BD, 0xF7FFE7BDE7BFF7FF, 0xE7BDFFFFFFFFFFFF,  // 0x00016E38 
	0xF7FFE7FFFFFFF7FF, 0xFFFFFFFFF7FFE7FD, 0xE7FFF7FFFFFFFFFF, 0xFFFFE7BDFFFFE7FD,  // 0x00016E58 
	0xE7BDFFFFE7BDFFFF, 0xFFFFFFFFFFFFF7FF, 0xE7FDFFFFF7FFFFFF, 0xEFFFEFFFFFFFFFFF,  // 0x00016E78 
	0xFFFFE7FFE7BDE7BD, 0xFFFFFFFFE7BDE7BD, 0xFFFFE7BDF7FFF7FF, 0xFFFFFFFFFFFFE7FF,  // 0x00016E98 
	0xE7BDEFFFE7BDE7BD, 0xF7FFF7FFE7FDFFFF, 0xEFFFF7FFE7BDE7FF, 0xE7FDE7BDFFFFFFFF,  // 0x00016EB8 
	0xF7FFE7FFE7BDEFFF, 0xFFFFF7FFE7BDEFFF, 0xEFFFEFFFF7FFE7BD, 0xF7FFFFFFFFFFF7FF,  // 0x00016ED8 
	0xE7BDE7BDE7BDE7BD, 0xE7FFE7FFE7BDFFFF, 0xFFFFE7BDEFFFF7FF, 0xFFFFEFFFEFFFEFFF,  // 0x00016EF8 
	0xE7FFE7BDE7FFEFFF, 0xF7FFE7BDF7FFFFFF, 0xE7BDE7BDE7BDEFFF, 0xFFFFFFFFEFFFE7BD,  // 0x00016F18 
	0xFFFFFFFFE7BDE7BD, 0xE7BDF7FFFFFFF7FF, 0xF7FFE7BDFFFFF7FF, 0xFFFFFFFFE7FFE7BF,  // 0x00016F38 
	0xF7FFF7FFE7BDE7BD, 0xE7BDF7FFFFFFFFFF, 0xE7FFFFFFEFFFFFFF, 0xFFFFFFFFF7FFE7FD,  // 0x00016F58 
	0xE7FDF7FFF7FFFFFF, 0xEFFDE7BDE7BDEFFF, 0xF7FFF7FFFFFFFFFF, 0xF7FFFFFFFFFFFFFF,  // 0x00016F78 
	0xFFFFFFFFFFFFE7BD, 0xFFFFFFFFF7FFEFFF, 0xE7FFF7FFE7BDF7FF, 0xFFFFFFFFFFFFE7FF,  // 0x00016F98 
	0xFFFFF7FFE7BDE7BD, 0xE7FDFFFFFFFFEFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,  // 0x00016FB8 
	0xFFFFF7FFE7FFE7BD, 0xF7FFEFFDFFFFEFFF, 0xE7FFFFFFEFFFEFFF, 0xFFFFFFFFF7FFFFFF,  // 0x00016FD8 
	0xF7FFF7FFEFFFE7BD, 0xEFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFE7FFEFFFEFFF,  // 0x00016FF8 
	0xE7BDFFFFFFFFFFFF, 0xE7FDE7BDE7BDFFFF, 0xEFFFE7BDE7BDE7BD, 0xFFFFF7FFE7BFFFFF,  // 0x00017018 
	0xEFFFFFFFFFFFF7FF, 0xE7FFF7FFE7FDFFFF, 0xFFFFF7FFF7FFFFFF, 0xE7BDFFFFF7FFE7BD,  // 0x00017038 
	0xEFFFFFFFE7FFF7FF, 0xE7FFE7BDE7BDFFFF, 0xFFFFF7FFEFFFDFBF, 0xDFBFE7FFDFBFDFBF,  // 0x00017058 
	0xEFFFF7FFFFFFE7FF, 0xE7BDE7BDE7BDE7FD, 0xEFFFFFFFFFFFEFFF, 0xDFBFF7FFFFFFFFFF,  // 0x00017078 
	0xEFFFDFFFCFFFBFBF, 0xDFFFDFBFEFFFDFBF, 0xD7BFE7FFDFFFDFFF, 0xCFBFC7BFD7FFD7FF,  // 0x00017098 
	0xE7FFE7FFD7BFDFBF, 0xDFBFF7FFE7FFE7FF, 0xEFFFFFFFFFFFDFBF, 0xC77FC77FDFBFFFFF,  // 0x000170B8 
	0xB77FAF7FA77FA73F, 0xC7BFD7FFD7BFC7BF, 0xBF7FA73FA73F9F3F, 0xAF7FA77FAF7FAF7F,  // 0x000170D8 
	0xB77FBFBFBF7FB73F, 0xC77FCF7FC77FCF7F, 0xCF7FD7BFBF3F967F, 0x9E7FA6FFB77FCFFF,  // 0x000170F8 
	0x9F3F9F3F973F973F, 0x9F3F96FF8E7F8EBF, 0x8EBF86BF86BF86BF, 0x8EBF8EFF8EFF96FF,  // 0x00017118 
	0x8EFF8EBF8E7F863F, 0x7DFF7DFF7DFF85FF, 0x85FF863F7DFF75BF, 0x7DFF867F96BF9F3F,  // 0x00017138 
	0x752F7D7185B385B3, 0x757175317CF17D33, 0x7CF174B174AD746D, 0x74AF6CEF75317531,  // 0x00017158 
	0x75316CEF74B1646F, 0x64B3647164B36CB5, 0x647164716C6F6CF5, 0x74F57D3385357531,  // 0x00017178 
	0x531D63A173E373E3, 0x636163A16BE373E5, 0x6BA173E37C256BA1, 0x6BE35B5F5B616361,  // 0x00017198 
	0x63615B5F63614ADD, 0x73E56BA173E37C25, 0x6BA16BE35B5F7C25, 0x7C2773E37C256361,  // 0x000171B8 
};

static u8 unaccounted171D8[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


