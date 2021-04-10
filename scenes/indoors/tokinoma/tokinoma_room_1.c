#include <ultra64.h>
#include <z64.h>
#include "tokinoma_room_1.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "tokinoma_scene.h"



SCmdAltHeaders _tokinoma_room_1_set0000_cmd00 = { 0x18, 0, (u32)&_tokinoma_room_1_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _tokinoma_room_1_set0000_cmd01 = { 0x16, 0, { 0 }, 0x0A }; // 0x0008
SCmdRoomBehavior _tokinoma_room_1_set0000_cmd02 = { 0x08, 0x00, 0x00000000 }; // 0x0010
SCmdSkyboxDisables _tokinoma_room_1_set0000_cmd03 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0018
SCmdTimeSettings _tokinoma_room_1_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0020
SCmdMesh _tokinoma_room_1_set0000_cmd05 = { 0x0A, 0, (u32)&_tokinoma_room_1_meshHeader_00000130 }; // 0x0028
SCmdObjectList _tokinoma_room_1_set0000_cmd06 = { 0x0B, 0x0A, (u32)_tokinoma_room_1_objectList_00000080 }; // 0x0030
SCmdActorList _tokinoma_room_1_set0000_cmd07 = { 0x01, 0x09, (u32)_tokinoma_room_1_actorList_00000094 }; // 0x0038
SCmdEndMarker _tokinoma_room_1_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _tokinoma_room_1_alternateHeaders_00000048[] = 
{
	0,
	0,
	0,
	(u32)&_tokinoma_room_1_set0150_cmd00,
	(u32)&_tokinoma_room_1_set0240_cmd00,
	(u32)&_tokinoma_room_1_set0370_cmd00,
	(u32)&_tokinoma_room_1_set0460_cmd00,
	(u32)&_tokinoma_room_1_set0520_cmd00,
	(u32)&_tokinoma_room_1_set05D0_cmd00,
	(u32)&_tokinoma_room_1_set0680_cmd00,
	(u32)&_tokinoma_room_1_set0730_cmd00,
	(u32)&_tokinoma_room_1_set07F0_cmd00,
	(u32)&_tokinoma_room_1_set0890_cmd00,
	(u32)&_tokinoma_room_1_set02B0_cmd00,
};

s16 _tokinoma_room_1_objectList_00000080[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_XC,
	OBJECT_GI_JEWEL,
	OBJECT_GI_MELODY,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_EFC_TW,
	OBJECT_EFC_FLASH,
	OBJECT_MJIN,
	OBJECT_MJIN_FLASH,
	OBJECT_ZL2,
};

ActorEntry _tokinoma_room_1_actorList_00000094[9] = 
{
	{ ACTOR_BG_MJIN, 0, -40, 2024, 0, 0, 0, 0x0001 }, //0x00000094 
	{ ACTOR_BG_TOKI_HIKARI, 0, 276, 1120, 0, 0, 0, 0x0001 }, //0x000000A4 
	{ ACTOR_BG_TOKI_HIKARI, -1, -39, 1761, 0, 0, 0, 0x0000 }, //0x000000B4 
	{ ACTOR_DEMO_KANKYO, 0, 0, 1080, 0, 0, 0, 0x000D }, //0x000000C4 
	{ ACTOR_EN_OKARINA_TAG, -1, -40, 1384, 0, 0, 0, 0x13FF }, //0x000000D4 
	{ ACTOR_EN_WONDER_TALK, 0, 5, 1330, 0, 0, 9284, 0x0FFF }, //0x000000E4 
	{ ACTOR_DEMO_EFFECT, -38, 16, 1335, 0, 0, 0, 0x0013 }, //0x000000F4 
	{ ACTOR_DEMO_EFFECT, 0, 16, 1335, 0, 0, 0, 0x0014 }, //0x00000104 
	{ ACTOR_DEMO_EFFECT, 40, 16, 1335, 0, 0, 0, 0x0015 }, //0x00000114 
};

static u32 pad124 = 0;
static u32 pad128 = 0;
static u32 pad12C = 0;

MeshHeader0 _tokinoma_room_1_meshHeader_00000130 = { { 0 }, 0x01, (u32)&_tokinoma_room_1_meshDListEntry_0000013C, (u32)&(_tokinoma_room_1_meshDListEntry_0000013C) + sizeof(_tokinoma_room_1_meshDListEntry_0000013C) };

MeshEntry0 _tokinoma_room_1_meshDListEntry_0000013C[1] = 
{
	{ (u32)_tokinoma_room_1_dlist_000053E0, (u32)_tokinoma_room_1_dlist_00006470 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.
static u32 pad148 = 0;
static u32 pad14C = 0;

SCmdEchoSettings _tokinoma_room_1_set0150_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0150
SCmdRoomBehavior _tokinoma_room_1_set0150_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0158
SCmdSkyboxDisables _tokinoma_room_1_set0150_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0160
SCmdTimeSettings _tokinoma_room_1_set0150_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00 }; // 0x0168
SCmdMesh _tokinoma_room_1_set0150_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_1_meshHeader_00000130 }; // 0x0170
SCmdObjectList _tokinoma_room_1_set0150_cmd05 = { 0x0B, 0x0A, (u32)_tokinoma_room_1_objectList_00000190 }; // 0x0178
SCmdActorList _tokinoma_room_1_set0150_cmd06 = { 0x01, 0x09, (u32)_tokinoma_room_1_actorList_000001A4 }; // 0x0180
SCmdEndMarker _tokinoma_room_1_set0150_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0188
s16 _tokinoma_room_1_objectList_00000190[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_MJIN,
	OBJECT_MJIN_FLASH,
	OBJECT_XC,
	OBJECT_ZL2,
	OBJECT_EFC_FLASH,
	OBJECT_GI_JEWEL,
	OBJECT_GI_MELODY,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_EFC_TW,
};

ActorEntry _tokinoma_room_1_actorList_000001A4[9] = 
{
	{ ACTOR_BG_MJIN, 0, -40, 2024, 0, 0, 0, 0x0001 }, //0x000001A4 
	{ ACTOR_BG_TOKI_HIKARI, 0, 276, 1120, 0, 0, 0, 0x0001 }, //0x000001B4 
	{ ACTOR_BG_TOKI_HIKARI, -1, -39, 1761, 0, 0, 0, 0x0000 }, //0x000001C4 
	{ ACTOR_EN_OKARINA_TAG, -1, -40, 1384, 0, 0, 0, 0x13FF }, //0x000001D4 
	{ ACTOR_EN_WONDER_TALK, 0, 0, 1330, 0, 0, 0, 0x0FFF }, //0x000001E4 
	{ ACTOR_DEMO_EFFECT, -38, 16, 1335, 0, 0, 0, 0x0013 }, //0x000001F4 
	{ ACTOR_DEMO_EFFECT, 0, 16, 1335, 0, 0, 0, 0x0014 }, //0x00000204 
	{ ACTOR_DEMO_EFFECT, 40, 16, 1335, 0, 0, 0, 0x0015 }, //0x00000214 
	{ ACTOR_DEMO_KANKYO, 0, 0, 1080, 0, 0, 0, 0x000D }, //0x00000224 
};

static u32 pad234 = 0;
static u32 pad238 = 0;
static u32 pad23C = 0;

SCmdEchoSettings _tokinoma_room_1_set0240_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0240
SCmdRoomBehavior _tokinoma_room_1_set0240_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0248
SCmdSkyboxDisables _tokinoma_room_1_set0240_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0250
SCmdTimeSettings _tokinoma_room_1_set0240_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0258
SCmdMesh _tokinoma_room_1_set0240_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_1_meshHeader_00000130 }; // 0x0260
SCmdObjectList _tokinoma_room_1_set0240_cmd05 = { 0x0B, 0x03, (u32)_tokinoma_room_1_objectList_00000280 }; // 0x0268
SCmdActorList _tokinoma_room_1_set0240_cmd06 = { 0x01, 0x02, (u32)_tokinoma_room_1_actorList_00000288 }; // 0x0270
SCmdEndMarker _tokinoma_room_1_set0240_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0278
s16 _tokinoma_room_1_objectList_00000280[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_MJIN,
	OBJECT_MJIN_FLASH,
};

ActorEntry _tokinoma_room_1_actorList_00000288[2] = 
{
	{ ACTOR_BG_TOKI_HIKARI, -1, -39, 1761, 0, 0, 0, 0x0000 }, //0x00000288 
	{ ACTOR_DEMO_KANKYO, 0, 0, 1080, 0, 0, 0, 0x000D }, //0x00000298 
};

static u32 pad2A8 = 0;
static u32 pad2AC = 0;

SCmdEchoSettings _tokinoma_room_1_set02B0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x02B0
SCmdRoomBehavior _tokinoma_room_1_set02B0_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x02B8
SCmdSkyboxDisables _tokinoma_room_1_set02B0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x02C0
SCmdTimeSettings _tokinoma_room_1_set02B0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x02C8
SCmdMesh _tokinoma_room_1_set02B0_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_1_meshHeader_00000130 }; // 0x02D0
SCmdObjectList _tokinoma_room_1_set02B0_cmd05 = { 0x0B, 0x0A, (u32)_tokinoma_room_1_objectList_000002F0 }; // 0x02D8
SCmdActorList _tokinoma_room_1_set02B0_cmd06 = { 0x01, 0x06, (u32)_tokinoma_room_1_actorList_00000304 }; // 0x02E0
SCmdEndMarker _tokinoma_room_1_set02B0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x02E8
s16 _tokinoma_room_1_objectList_000002F0[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_MJIN,
	OBJECT_MJIN_FLASH,
	OBJECT_XC,
	OBJECT_ZL2,
	OBJECT_EFC_FLASH,
	OBJECT_WARP1,
	OBJECT_GI_JEWEL,
	OBJECT_ZL2_ANIME1,
	OBJECT_GI_M_ARROW,
};

ActorEntry _tokinoma_room_1_actorList_00000304[6] = 
{
	{ ACTOR_BG_MJIN, 9, -40, 2024, 0, 0, 0, 0x0001 }, //0x00000304 
	{ ACTOR_BG_TOKI_HIKARI, -1, -39, 1761, 0, 0, 0, 0x0000 }, //0x00000314 
	{ ACTOR_DEMO_KANKYO, 0, 0, 1080, 0, 0, 0, 0x000D }, //0x00000324 
	{ ACTOR_EN_ZL2, 3, -40, 2323, 0, -32768, 0, 0x0000 }, //0x00000334 
	{ ACTOR_DEMO_EFFECT, 9, -40, 1845, 0, 0, 0, 0x0016 }, //0x00000344 
	{ ACTOR_DEMO_EFFECT, 0, 28, 2219, 0, 0, 0, 0x4012 }, //0x00000354 
};

static u32 pad364 = 0;
static u32 pad368 = 0;
static u32 pad36C = 0;

SCmdEchoSettings _tokinoma_room_1_set0370_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0370
SCmdRoomBehavior _tokinoma_room_1_set0370_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0378
SCmdSkyboxDisables _tokinoma_room_1_set0370_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0380
SCmdTimeSettings _tokinoma_room_1_set0370_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00 }; // 0x0388
SCmdMesh _tokinoma_room_1_set0370_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_1_meshHeader_00000130 }; // 0x0390
SCmdObjectList _tokinoma_room_1_set0370_cmd05 = { 0x0B, 0x0A, (u32)_tokinoma_room_1_objectList_000003B0 }; // 0x0398
SCmdActorList _tokinoma_room_1_set0370_cmd06 = { 0x01, 0x09, (u32)_tokinoma_room_1_actorList_000003C4 }; // 0x03A0
SCmdEndMarker _tokinoma_room_1_set0370_cmd07 = { 0x14, 0x00, 0x00 }; // 0x03A8
s16 _tokinoma_room_1_objectList_000003B0[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_MJIN,
	OBJECT_MJIN_FLASH,
	OBJECT_XC,
	OBJECT_ZL2,
	OBJECT_EFC_FLASH,
	OBJECT_GI_JEWEL,
	OBJECT_GI_MELODY,
	OBJECT_EFC_STAR_FIELD,
	OBJECT_EFC_TW,
};

ActorEntry _tokinoma_room_1_actorList_000003C4[9] = 
{
	{ ACTOR_BG_MJIN, 0, -40, 2024, 0, 0, 0, 0x0001 }, //0x000003C4 
	{ ACTOR_BG_TOKI_HIKARI, 0, 276, 1120, 0, 0, 0, 0x0001 }, //0x000003D4 
	{ ACTOR_BG_TOKI_HIKARI, -1, -39, 1761, 0, 0, 0, 0x0000 }, //0x000003E4 
	{ ACTOR_EN_OKARINA_TAG, -1, -40, 1384, 0, 0, 0, 0x13FF }, //0x000003F4 
	{ ACTOR_EN_WONDER_TALK, 0, 0, 1330, 0, 0, 0, 0x0FFF }, //0x00000404 
	{ ACTOR_DEMO_EFFECT, -38, 16, 1335, 0, 0, 0, 0x0013 }, //0x00000414 
	{ ACTOR_DEMO_EFFECT, 0, 16, 1335, 0, 0, 0, 0x0014 }, //0x00000424 
	{ ACTOR_DEMO_EFFECT, 40, 16, 1335, 0, 0, 0, 0x0015 }, //0x00000434 
	{ ACTOR_DEMO_KANKYO, 0, 0, 1080, 0, 0, 0, 0x000D }, //0x00000444 
};

static u32 pad454 = 0;
static u32 pad458 = 0;
static u32 pad45C = 0;

SCmdEchoSettings _tokinoma_room_1_set0460_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0460
SCmdRoomBehavior _tokinoma_room_1_set0460_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0468
SCmdSkyboxDisables _tokinoma_room_1_set0460_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0470
SCmdTimeSettings _tokinoma_room_1_set0460_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0478
SCmdMesh _tokinoma_room_1_set0460_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_1_meshHeader_00000130 }; // 0x0480
SCmdObjectList _tokinoma_room_1_set0460_cmd05 = { 0x0B, 0x05, (u32)_tokinoma_room_1_objectList_000004A0 }; // 0x0488
SCmdActorList _tokinoma_room_1_set0460_cmd06 = { 0x01, 0x07, (u32)_tokinoma_room_1_actorList_000004AC }; // 0x0490
SCmdEndMarker _tokinoma_room_1_set0460_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0498
s16 _tokinoma_room_1_objectList_000004A0[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_MJIN,
	OBJECT_MJIN_FLASH,
	OBJECT_GI_JEWEL,
	OBJECT_EFC_FLASH,
};

ActorEntry _tokinoma_room_1_actorList_000004AC[7] = 
{
	{ ACTOR_BG_MJIN, 9, -40, 2024, 0, 0, 0, 0x0001 }, //0x000004AC 
	{ ACTOR_BG_TOKI_HIKARI, -1, -39, 1761, 0, 0, 0, 0x0000 }, //0x000004BC 
	{ ACTOR_DEMO_KANKYO, 0, 0, 1080, 0, 0, 0, 0x000D }, //0x000004CC 
	{ ACTOR_DEMO_EFFECT, -32, -40, 1405, 0, 0, 0, 0x0013 }, //0x000004DC 
	{ ACTOR_DEMO_EFFECT, -2, -40, 1403, 0, 0, 0, 0x0014 }, //0x000004EC 
	{ ACTOR_DEMO_EFFECT, 27, -40, 1409, 0, 0, 0, 0x0015 }, //0x000004FC 
	{ ACTOR_BG_TOKI_HIKARI, 0, 276, 1120, 0, 0, 0, 0x0001 }, //0x0000050C 
};

static u32 pad51C = 0;

SCmdEchoSettings _tokinoma_room_1_set0520_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0520
SCmdRoomBehavior _tokinoma_room_1_set0520_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0528
SCmdSkyboxDisables _tokinoma_room_1_set0520_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0530
SCmdTimeSettings _tokinoma_room_1_set0520_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0538
SCmdMesh _tokinoma_room_1_set0520_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_1_meshHeader_00000130 }; // 0x0540
SCmdObjectList _tokinoma_room_1_set0520_cmd05 = { 0x0B, 0x05, (u32)_tokinoma_room_1_objectList_00000560 }; // 0x0548
SCmdActorList _tokinoma_room_1_set0520_cmd06 = { 0x01, 0x06, (u32)_tokinoma_room_1_actorList_0000056C }; // 0x0550
SCmdEndMarker _tokinoma_room_1_set0520_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0558
s16 _tokinoma_room_1_objectList_00000560[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_MJIN,
	OBJECT_MJIN_FLASH,
	OBJECT_GI_JEWEL,
	OBJECT_EFC_FLASH,
};

ActorEntry _tokinoma_room_1_actorList_0000056C[6] = 
{
	{ ACTOR_BG_MJIN, 9, -40, 2024, 0, 0, 0, 0x0001 }, //0x0000056C 
	{ ACTOR_BG_TOKI_HIKARI, -1, -39, 1761, 0, 0, 0, 0x0000 }, //0x0000057C 
	{ ACTOR_DEMO_KANKYO, 0, 0, 1080, 0, 0, 0, 0x000D }, //0x0000058C 
	{ ACTOR_DEMO_EFFECT, -38, 16, 1335, 0, 0, 0, 0x1013 }, //0x0000059C 
	{ ACTOR_DEMO_EFFECT, 0, 16, 1335, 0, 0, 0, 0x1014 }, //0x000005AC 
	{ ACTOR_DEMO_EFFECT, 40, 16, 1335, 0, 0, 0, 0x1015 }, //0x000005BC 
};

static u32 pad5CC = 0;

SCmdEchoSettings _tokinoma_room_1_set05D0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x05D0
SCmdRoomBehavior _tokinoma_room_1_set05D0_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x05D8
SCmdSkyboxDisables _tokinoma_room_1_set05D0_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x05E0
SCmdTimeSettings _tokinoma_room_1_set05D0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x05E8
SCmdMesh _tokinoma_room_1_set05D0_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_1_meshHeader_00000130 }; // 0x05F0
SCmdObjectList _tokinoma_room_1_set05D0_cmd05 = { 0x0B, 0x05, (u32)_tokinoma_room_1_objectList_00000610 }; // 0x05F8
SCmdActorList _tokinoma_room_1_set05D0_cmd06 = { 0x01, 0x06, (u32)_tokinoma_room_1_actorList_0000061C }; // 0x0600
SCmdEndMarker _tokinoma_room_1_set05D0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0608
s16 _tokinoma_room_1_objectList_00000610[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_MJIN,
	OBJECT_MJIN_FLASH,
	OBJECT_GI_JEWEL,
	OBJECT_EFC_FLASH,
};

ActorEntry _tokinoma_room_1_actorList_0000061C[6] = 
{
	{ ACTOR_BG_MJIN, 9, -40, 2024, 0, 0, 0, 0x0001 }, //0x0000061C 
	{ ACTOR_BG_TOKI_HIKARI, -1, -39, 1761, 0, 0, 0, 0x0000 }, //0x0000062C 
	{ ACTOR_DEMO_KANKYO, 0, 0, 1080, 0, 0, 0, 0x000D }, //0x0000063C 
	{ ACTOR_DEMO_EFFECT, -38, 16, 1335, 0, 0, 0, 0x1013 }, //0x0000064C 
	{ ACTOR_DEMO_EFFECT, 0, 16, 1335, 0, 0, 0, 0x1014 }, //0x0000065C 
	{ ACTOR_DEMO_EFFECT, 40, 16, 1335, 0, 0, 0, 0x1015 }, //0x0000066C 
};

static u32 pad67C = 0;

SCmdEchoSettings _tokinoma_room_1_set0680_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0680
SCmdRoomBehavior _tokinoma_room_1_set0680_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0688
SCmdSkyboxDisables _tokinoma_room_1_set0680_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0690
SCmdTimeSettings _tokinoma_room_1_set0680_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0698
SCmdMesh _tokinoma_room_1_set0680_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_1_meshHeader_00000130 }; // 0x06A0
SCmdObjectList _tokinoma_room_1_set0680_cmd05 = { 0x0B, 0x05, (u32)_tokinoma_room_1_objectList_000006C0 }; // 0x06A8
SCmdActorList _tokinoma_room_1_set0680_cmd06 = { 0x01, 0x06, (u32)_tokinoma_room_1_actorList_000006CC }; // 0x06B0
SCmdEndMarker _tokinoma_room_1_set0680_cmd07 = { 0x14, 0x00, 0x00 }; // 0x06B8
s16 _tokinoma_room_1_objectList_000006C0[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_MJIN,
	OBJECT_MJIN_FLASH,
	OBJECT_GI_JEWEL,
	OBJECT_EFC_FLASH,
};

ActorEntry _tokinoma_room_1_actorList_000006CC[6] = 
{
	{ ACTOR_BG_MJIN, 9, -40, 2024, 0, 0, 0, 0x0001 }, //0x000006CC 
	{ ACTOR_BG_TOKI_HIKARI, -1, -39, 1761, 0, 0, 0, 0x0000 }, //0x000006DC 
	{ ACTOR_DEMO_KANKYO, 0, 0, 1080, 0, 0, 0, 0x000D }, //0x000006EC 
	{ ACTOR_DEMO_EFFECT, -38, 16, 1335, 0, 0, 0, 0x1013 }, //0x000006FC 
	{ ACTOR_DEMO_EFFECT, 0, 16, 1335, 0, 0, 0, 0x1014 }, //0x0000070C 
	{ ACTOR_DEMO_EFFECT, 40, 16, 1335, 0, 0, 0, 0x1015 }, //0x0000071C 
};

static u32 pad72C = 0;

SCmdEchoSettings _tokinoma_room_1_set0730_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0730
SCmdRoomBehavior _tokinoma_room_1_set0730_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0738
SCmdSkyboxDisables _tokinoma_room_1_set0730_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0740
SCmdTimeSettings _tokinoma_room_1_set0730_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF }; // 0x0748
SCmdMesh _tokinoma_room_1_set0730_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_1_meshHeader_00000130 }; // 0x0750
SCmdObjectList _tokinoma_room_1_set0730_cmd05 = { 0x0B, 0x07, (u32)_tokinoma_room_1_objectList_00000770 }; // 0x0758
SCmdActorList _tokinoma_room_1_set0730_cmd06 = { 0x01, 0x07, (u32)_tokinoma_room_1_actorList_00000780 }; // 0x0760
SCmdEndMarker _tokinoma_room_1_set0730_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0768
s16 _tokinoma_room_1_objectList_00000770[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_MJIN,
	OBJECT_MJIN_FLASH,
	OBJECT_GI_JEWEL,
	OBJECT_EFC_FLASH,
	OBJECT_ZL4,
	OBJECT_OPENING_DEMO1,
};

ActorEntry _tokinoma_room_1_actorList_00000780[7] = 
{
	{ ACTOR_BG_MJIN, 9, -40, 2024, 0, 0, 0, 0x0001 }, //0x00000780 
	{ ACTOR_BG_TOKI_HIKARI, -1, -39, 1761, 0, 0, 0, 0x0000 }, //0x00000790 
	{ ACTOR_DEMO_KANKYO, 0, 0, 1080, 0, 0, 0, 0x000D }, //0x000007A0 
	{ ACTOR_DEMO_EFFECT, -38, 16, 1321, 0, 0, 0, 0x1013 }, //0x000007B0 
	{ ACTOR_DEMO_EFFECT, 0, 16, 1321, 0, 0, 0, 0x1014 }, //0x000007C0 
	{ ACTOR_DEMO_EFFECT, 40, 16, 1321, 0, 0, 0, 0x1015 }, //0x000007D0 
	{ ACTOR_EN_VIEWER, 0, -40, 1404, 0, 0, 0, 0x0202 }, //0x000007E0 
};


SCmdEchoSettings _tokinoma_room_1_set07F0_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x07F0
SCmdRoomBehavior _tokinoma_room_1_set07F0_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x07F8
SCmdSkyboxDisables _tokinoma_room_1_set07F0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x0800
SCmdTimeSettings _tokinoma_room_1_set07F0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0808
SCmdMesh _tokinoma_room_1_set07F0_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_1_meshHeader_00000130 }; // 0x0810
SCmdObjectList _tokinoma_room_1_set07F0_cmd05 = { 0x0B, 0x07, (u32)_tokinoma_room_1_objectList_00000830 }; // 0x0818
SCmdActorList _tokinoma_room_1_set07F0_cmd06 = { 0x01, 0x05, (u32)_tokinoma_room_1_actorList_00000840 }; // 0x0820
SCmdEndMarker _tokinoma_room_1_set07F0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0828
s16 _tokinoma_room_1_objectList_00000830[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_MJIN,
	OBJECT_MJIN_FLASH,
	OBJECT_XC,
	OBJECT_GI_JEWEL,
	OBJECT_ZL2,
	OBJECT_ZL2_ANIME1,
};

ActorEntry _tokinoma_room_1_actorList_00000840[5] = 
{
	{ ACTOR_BG_MJIN, 9, -40, 2024, 0, 0, 0, 0x0001 }, //0x00000840 
	{ ACTOR_BG_TOKI_HIKARI, -1, -39, 1761, 0, 0, 0, 0x0000 }, //0x00000850 
	{ ACTOR_DEMO_KANKYO, 0, 0, 1080, 0, 0, 0, 0x000D }, //0x00000860 
	{ ACTOR_EN_ZL2, 0, -40, 2288, 0, -32768, 0, 0x0000 }, //0x00000870 
	{ ACTOR_EN_XC, -3, -40, 2339, 0, -32768, 0, 0x0004 }, //0x00000880 
};


SCmdEchoSettings _tokinoma_room_1_set0890_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0890
SCmdRoomBehavior _tokinoma_room_1_set0890_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0898
SCmdSkyboxDisables _tokinoma_room_1_set0890_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x08A0
SCmdTimeSettings _tokinoma_room_1_set0890_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF }; // 0x08A8
SCmdMesh _tokinoma_room_1_set0890_cmd04 = { 0x0A, 0, (u32)&_tokinoma_room_1_meshHeader_00000130 }; // 0x08B0
SCmdObjectList _tokinoma_room_1_set0890_cmd05 = { 0x0B, 0x07, (u32)_tokinoma_room_1_objectList_000008D0 }; // 0x08B8
SCmdActorList _tokinoma_room_1_set0890_cmd06 = { 0x01, 0x05, (u32)_tokinoma_room_1_actorList_000008E0 }; // 0x08C0
SCmdEndMarker _tokinoma_room_1_set0890_cmd07 = { 0x14, 0x00, 0x00 }; // 0x08C8
s16 _tokinoma_room_1_objectList_000008D0[] = 
{
	OBJECT_TOKI_OBJECTS,
	OBJECT_MJIN,
	OBJECT_MJIN_FLASH,
	OBJECT_XC,
	OBJECT_GI_JEWEL,
	OBJECT_ZL2,
	OBJECT_ZL2_ANIME1,
};

ActorEntry _tokinoma_room_1_actorList_000008E0[5] = 
{
	{ ACTOR_BG_MJIN, 9, -40, 2024, 0, 0, 0, 0x0001 }, //0x000008E0 
	{ ACTOR_BG_TOKI_HIKARI, -1, -39, 1761, 0, 0, 0, 0x0000 }, //0x000008F0 
	{ ACTOR_DEMO_KANKYO, 0, 0, 1080, 0, 0, 0, 0x000D }, //0x00000900 
	{ ACTOR_EN_ZL2, 0, -40, 2288, 0, -32768, 0, 0x0000 }, //0x00000910 
	{ ACTOR_EN_XC, -3, -40, 2339, 0, -32768, 0, 0x0004 }, //0x00000920 
};


Vtx_t _tokinoma_room_1_vertices_00000930[20] = 
{
	 { -360, -40, 1160, 0, 1024, 2048, 102, 102, 102, 255 }, // 0x00000930
	 { -360, 638, 1160, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00000940
	 { -440, 638, 1160, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00000950
	 { -440, -40, 1160, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00000960
	 { -343, -40, 1120, 0, 1024, 2048, 140, 140, 140, 255 }, // 0x00000970
	 { -343, 638, 1120, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00000980
	 { -400, 638, 1177, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00000990
	 { -400, -40, 1177, 0, 0, 2048, 140, 140, 140, 255 }, // 0x000009A0
	 { -400, -40, 1177, 0, 1024, 2048, 89, 89, 89, 255 }, // 0x000009B0
	 { -400, 638, 1177, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x000009C0
	 { -457, 638, 1120, 0, 0, -7875, 0, 0, 0, 255 }, // 0x000009D0
	 { -457, -40, 1120, 0, 0, 2048, 89, 89, 89, 255 }, // 0x000009E0
	 { -360, 638, 1137, 0, 300, -7875, 0, 0, 0, 255 }, // 0x000009F0
	 { -360, 638, 1160, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00000A00
	 { -360, -40, 1160, 0, 0, 2048, 229, 229, 229, 255 }, // 0x00000A10
	 { -360, -40, 1137, 0, 300, 2048, 229, 229, 229, 255 }, // 0x00000A20
	 { -440, -40, 1160, 0, 1024, 2048, 102, 102, 102, 255 }, // 0x00000A30
	 { -440, 638, 1160, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00000A40
	 { -440, 638, 1137, 0, 724, -7875, 0, 0, 0, 255 }, // 0x00000A50
	 { -440, -40, 1137, 0, 724, 2048, 102, 102, 102, 255 }, // 0x00000A60
};

Vtx_t _tokinoma_room_1_vertices_00000A70[8] = 
{
	 { -457, -40, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A70
	 { -343, -40, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A80
	 { -457, 638, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A90
	 { -343, 638, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AA0
	 { -457, -40, 1177, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AB0
	 { -343, -40, 1177, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AC0
	 { -457, 638, 1177, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AD0
	 { -343, 638, 1177, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AE0
};

Gfx _tokinoma_room_1_dlist_00000AF0[] =
{
	gsDPPipeSync(), // 0x00000AF0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000AF8
	gsSPVertex(_tokinoma_room_1_vertices_00000A70, 8, 0), // 0x00000B00
	gsSPCullDisplayList(0, 7), // 0x00000B08
	gsDPPipeSync(), // 0x00000B10
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000B18
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000B20
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000B28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000EFA0), // 0x00000B30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000B38
	gsDPLoadSync(), // 0x00000B40
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00000B48
	gsDPPipeSync(), // 0x00000B50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000B58
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000B60
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000B68
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000B70
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000B78
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000B80
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000B88
	gsSPVertex(_tokinoma_room_1_vertices_00000930, 20, 0), // 0x00000B90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000B98
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000BA0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000BA8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00000BB0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00000BB8
	gsSPEndDisplayList(), // 0x00000BC0
};

Vtx_t _tokinoma_room_1_vertices_00000BC8[20] = 
{
	 { 400, -40, 1177, 0, 1024, 2048, 89, 89, 89, 255 }, // 0x00000BC8
	 { 400, 638, 1177, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00000BD8
	 { 343, 638, 1120, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00000BE8
	 { 343, -40, 1120, 0, 0, 2048, 89, 89, 89, 255 }, // 0x00000BF8
	 { 457, -40, 1120, 0, 1024, 2048, 140, 140, 140, 255 }, // 0x00000C08
	 { 457, 638, 1120, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00000C18
	 { 400, 638, 1177, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00000C28
	 { 400, -40, 1177, 0, 0, 2048, 140, 140, 140, 255 }, // 0x00000C38
	 { 440, -40, 1160, 0, 1024, 2048, 102, 102, 102, 255 }, // 0x00000C48
	 { 440, 638, 1160, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00000C58
	 { 360, 638, 1160, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00000C68
	 { 360, -40, 1160, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00000C78
	 { 360, -40, 1160, 0, 1024, 2048, 102, 102, 102, 255 }, // 0x00000C88
	 { 360, 638, 1160, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00000C98
	 { 360, 638, 1137, 0, 724, -7875, 0, 0, 0, 255 }, // 0x00000CA8
	 { 360, -40, 1137, 0, 724, 2048, 102, 102, 102, 255 }, // 0x00000CB8
	 { 440, 638, 1137, 0, 300, -7875, 0, 0, 0, 255 }, // 0x00000CC8
	 { 440, 638, 1160, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00000CD8
	 { 440, -40, 1160, 0, 0, 2048, 229, 229, 229, 255 }, // 0x00000CE8
	 { 440, -40, 1137, 0, 300, 2048, 229, 229, 229, 255 }, // 0x00000CF8
};

Vtx_t _tokinoma_room_1_vertices_00000D08[8] = 
{
	 { 343, -40, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D08
	 { 457, -40, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D18
	 { 343, 638, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D28
	 { 457, 638, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D38
	 { 343, -40, 1177, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D48
	 { 457, -40, 1177, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D58
	 { 343, 638, 1177, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D68
	 { 457, 638, 1177, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000D78
};

Gfx _tokinoma_room_1_dlist_00000D88[] =
{
	gsDPPipeSync(), // 0x00000D88
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000D90
	gsSPVertex(_tokinoma_room_1_vertices_00000D08, 8, 0), // 0x00000D98
	gsSPCullDisplayList(0, 7), // 0x00000DA0
	gsDPPipeSync(), // 0x00000DA8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000DB0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000DB8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000DC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000EFA0), // 0x00000DC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000DD0
	gsDPLoadSync(), // 0x00000DD8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00000DE0
	gsDPPipeSync(), // 0x00000DE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000DF0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000DF8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000E00
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000E08
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000E10
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000E18
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000E20
	gsSPVertex(_tokinoma_room_1_vertices_00000BC8, 20, 0), // 0x00000E28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000E30
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000E38
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000E40
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00000E48
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00000E50
	gsSPEndDisplayList(), // 0x00000E58
};

Vtx_t _tokinoma_room_1_vertices_00000E60[32] = 
{
	 { -440, -40, 1801, 0, 1024, 2048, 102, 102, 102, 255 }, // 0x00000E60
	 { -440, 638, 1801, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00000E70
	 { -440, 638, 1721, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00000E80
	 { -440, -40, 1721, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00000E90
	 { -360, -40, 1801, 0, 1024, 2048, 102, 102, 102, 255 }, // 0x00000EA0
	 { -360, 638, 1801, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00000EB0
	 { -440, 638, 1801, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00000EC0
	 { -440, -40, 1801, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00000ED0
	 { -360, -40, 1721, 0, 1024, 2048, 229, 229, 229, 255 }, // 0x00000EE0
	 { -360, 638, 1721, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00000EF0
	 { -360, 638, 1801, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00000F00
	 { -360, -40, 1801, 0, 0, 2048, 229, 229, 229, 255 }, // 0x00000F10
	 { -440, -40, 1721, 0, 1024, 2048, 140, 140, 140, 255 }, // 0x00000F20
	 { -440, 638, 1721, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00000F30
	 { -360, 638, 1721, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00000F40
	 { -360, -40, 1721, 0, 0, 2048, 140, 140, 140, 255 }, // 0x00000F50
	 { -400, -40, 1705, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00000F60
	 { -400, 638, 1705, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00000F70
	 { -343, 638, 1761, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00000F80
	 { -343, -40, 1761, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00000F90
	 { -343, -40, 1761, 0, 1024, 2048, 140, 140, 140, 255 }, // 0x00000FA0
	 { -343, 638, 1761, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00000FB0
	 { -400, 638, 1818, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00000FC0
	 { -400, -40, 1818, 0, 0, 2048, 140, 140, 140, 255 }, // 0x00000FD0
	 { -400, -40, 1818, 0, 1024, 2048, 89, 89, 89, 255 }, // 0x00000FE0
	 { -400, 638, 1818, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00000FF0
	 { -457, 638, 1761, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00001000
	 { -457, -40, 1761, 0, 0, 2048, 89, 89, 89, 255 }, // 0x00001010
	 { -457, -40, 1761, 0, 1024, 2048, 114, 114, 114, 255 }, // 0x00001020
	 { -457, 638, 1761, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00001030
	 { -400, 638, 1705, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00001040
	 { -400, -40, 1705, 0, 0, 2048, 114, 114, 114, 255 }, // 0x00001050
};

Vtx_t _tokinoma_room_1_vertices_00001060[8] = 
{
	 { -432, -40, 1693, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001060
	 { -332, -40, 1730, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001070
	 { -432, 638, 1693, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001080
	 { -332, 638, 1730, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001090
	 { -468, -40, 1793, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010A0
	 { -368, -40, 1830, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010B0
	 { -468, 638, 1793, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010C0
	 { -368, 638, 1830, 0, 0, 0, 0, 0, 0, 0 }, // 0x000010D0
};

Gfx _tokinoma_room_1_dlist_000010E0[] =
{
	gsDPPipeSync(), // 0x000010E0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000010E8
	gsSPVertex(_tokinoma_room_1_vertices_00001060, 8, 0), // 0x000010F0
	gsSPCullDisplayList(0, 7), // 0x000010F8
	gsDPPipeSync(), // 0x00001100
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001108
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001110
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001118
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000EFA0), // 0x00001120
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001128
	gsDPLoadSync(), // 0x00001130
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001138
	gsDPPipeSync(), // 0x00001140
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001148
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001150
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001158
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001160
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001168
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001170
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001178
	gsSPVertex(_tokinoma_room_1_vertices_00000E60, 32, 0), // 0x00001180
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001188
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001190
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001198
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000011A0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000011A8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000011B0
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x000011B8
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000011C0
	gsSPEndDisplayList(), // 0x000011C8
};

Vtx_t _tokinoma_room_1_vertices_000011D0[32] = 
{
	 { 343, -40, 1761, 0, 1024, 2048, 114, 114, 114, 255 }, // 0x000011D0
	 { 343, 638, 1761, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x000011E0
	 { 400, 638, 1705, 0, 0, -7875, 0, 0, 0, 255 }, // 0x000011F0
	 { 400, -40, 1705, 0, 0, 2048, 114, 114, 114, 255 }, // 0x00001200
	 { 400, -40, 1818, 0, 1024, 2048, 89, 89, 89, 255 }, // 0x00001210
	 { 400, 638, 1818, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00001220
	 { 343, 638, 1761, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00001230
	 { 343, -40, 1761, 0, 0, 2048, 89, 89, 89, 255 }, // 0x00001240
	 { 457, -40, 1761, 0, 1024, 2048, 140, 140, 140, 255 }, // 0x00001250
	 { 457, 638, 1761, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00001260
	 { 400, 638, 1818, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00001270
	 { 400, -40, 1818, 0, 0, 2048, 140, 140, 140, 255 }, // 0x00001280
	 { 400, -40, 1705, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00001290
	 { 400, 638, 1705, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x000012A0
	 { 457, 638, 1761, 0, 0, -7875, 0, 0, 0, 255 }, // 0x000012B0
	 { 457, -40, 1761, 0, 0, 2048, 255, 255, 255, 255 }, // 0x000012C0
	 { 360, -40, 1721, 0, 1024, 2048, 140, 140, 140, 255 }, // 0x000012D0
	 { 360, 638, 1721, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x000012E0
	 { 440, 638, 1721, 0, 0, -7875, 0, 0, 0, 255 }, // 0x000012F0
	 { 440, -40, 1721, 0, 0, 2048, 140, 140, 140, 255 }, // 0x00001300
	 { 440, -40, 1721, 0, 1024, 2048, 229, 229, 229, 255 }, // 0x00001310
	 { 440, 638, 1721, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00001320
	 { 440, 638, 1801, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00001330
	 { 440, -40, 1801, 0, 0, 2048, 229, 229, 229, 255 }, // 0x00001340
	 { 440, -40, 1801, 0, 1024, 2048, 102, 102, 102, 255 }, // 0x00001350
	 { 440, 638, 1801, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00001360
	 { 360, 638, 1801, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00001370
	 { 360, -40, 1801, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00001380
	 { 360, -40, 1801, 0, 1024, 2048, 102, 102, 102, 255 }, // 0x00001390
	 { 360, 638, 1801, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x000013A0
	 { 360, 638, 1721, 0, 0, -7875, 0, 0, 0, 255 }, // 0x000013B0
	 { 360, -40, 1721, 0, 0, 2048, 102, 102, 102, 255 }, // 0x000013C0
};

Vtx_t _tokinoma_room_1_vertices_000013D0[8] = 
{
	 { 368, -40, 1693, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013D0
	 { 468, -40, 1730, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013E0
	 { 368, 638, 1693, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013F0
	 { 468, 638, 1730, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001400
	 { 332, -40, 1793, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001410
	 { 432, -40, 1830, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001420
	 { 332, 638, 1793, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001430
	 { 432, 638, 1830, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001440
};

Gfx _tokinoma_room_1_dlist_00001450[] =
{
	gsDPPipeSync(), // 0x00001450
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001458
	gsSPVertex(_tokinoma_room_1_vertices_000013D0, 8, 0), // 0x00001460
	gsSPCullDisplayList(0, 7), // 0x00001468
	gsDPPipeSync(), // 0x00001470
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001478
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001480
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001488
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000EFA0), // 0x00001490
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001498
	gsDPLoadSync(), // 0x000014A0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000014A8
	gsDPPipeSync(), // 0x000014B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000014B8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000014C0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000014C8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000014D0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000014D8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000014E0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000014E8
	gsSPVertex(_tokinoma_room_1_vertices_000011D0, 32, 0), // 0x000014F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000014F8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001500
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001508
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001510
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00001518
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00001520
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00001528
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00001530
	gsSPEndDisplayList(), // 0x00001538
};

Vtx_t _tokinoma_room_1_vertices_00001540[32] = 
{
	 { -457, -40, 2401, 0, 1024, 2048, 114, 114, 114, 255 }, // 0x00001540
	 { -457, 638, 2401, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00001550
	 { -400, 638, 2345, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00001560
	 { -400, -40, 2345, 0, 0, 2048, 114, 114, 114, 255 }, // 0x00001570
	 { -400, -40, 2345, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00001580
	 { -400, 638, 2345, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00001590
	 { -343, 638, 2401, 0, 0, -7875, 0, 0, 0, 255 }, // 0x000015A0
	 { -343, -40, 2401, 0, 0, 2048, 255, 255, 255, 255 }, // 0x000015B0
	 { -440, -40, 2361, 0, 1024, 2048, 140, 140, 140, 255 }, // 0x000015C0
	 { -440, 638, 2361, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x000015D0
	 { -360, 638, 2361, 0, 0, -7875, 0, 0, 0, 255 }, // 0x000015E0
	 { -360, -40, 2361, 0, 0, 2048, 140, 140, 140, 255 }, // 0x000015F0
	 { 360, -40, 2361, 0, 1024, 2048, 140, 140, 140, 255 }, // 0x00001600
	 { 360, 638, 2361, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00001610
	 { 440, 638, 2361, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00001620
	 { 440, -40, 2361, 0, 0, 2048, 140, 140, 140, 255 }, // 0x00001630
	 { 400, -40, 2345, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00001640
	 { 400, 638, 2345, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00001650
	 { 457, 638, 2401, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00001660
	 { 457, -40, 2401, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00001670
	 { 343, -40, 2401, 0, 1024, 2048, 114, 114, 114, 255 }, // 0x00001680
	 { 343, 638, 2401, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00001690
	 { 400, 638, 2345, 0, 0, -7875, 0, 0, 0, 255 }, // 0x000016A0
	 { 400, -40, 2345, 0, 0, 2048, 114, 114, 114, 255 }, // 0x000016B0
	 { -440, 638, 2400, 0, 493, -7875, 0, 0, 0, 255 }, // 0x000016C0
	 { -440, 638, 2361, 0, 0, -7875, 0, 0, 0, 255 }, // 0x000016D0
	 { -440, -40, 2361, 0, 0, 2048, 102, 102, 102, 255 }, // 0x000016E0
	 { -440, -40, 2400, 0, 493, 2048, 102, 102, 102, 255 }, // 0x000016F0
	 { -360, -40, 2361, 0, 1024, 2048, 229, 229, 229, 255 }, // 0x00001700
	 { -360, 638, 2361, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00001710
	 { -360, 638, 2400, 0, 531, -7875, 0, 0, 0, 255 }, // 0x00001720
	 { -360, -40, 2400, 0, 531, 2048, 229, 229, 229, 255 }, // 0x00001730
};

Vtx_t _tokinoma_room_1_vertices_00001740[8] = 
{
	 { 440, -40, 2361, 0, 1024, 2048, 229, 229, 229, 255 }, // 0x00001740
	 { 440, 638, 2361, 0, 1024, -7875, 0, 0, 0, 255 }, // 0x00001750
	 { 440, 638, 2400, 0, 531, -7875, 0, 0, 0, 255 }, // 0x00001760
	 { 440, -40, 2400, 0, 531, 2048, 229, 229, 229, 255 }, // 0x00001770
	 { 360, 638, 2400, 0, 493, -7875, 0, 0, 0, 255 }, // 0x00001780
	 { 360, 638, 2361, 0, 0, -7875, 0, 0, 0, 255 }, // 0x00001790
	 { 360, -40, 2361, 0, 0, 2048, 102, 102, 102, 255 }, // 0x000017A0
	 { 360, -40, 2400, 0, 493, 2048, 102, 102, 102, 255 }, // 0x000017B0
};

Vtx_t _tokinoma_room_1_vertices_000017C0[8] = 
{
	 { -457, -40, 2345, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017C0
	 { 457, -40, 2345, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017D0
	 { -457, 638, 2345, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017E0
	 { 457, 638, 2345, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017F0
	 { -457, -40, 2401, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001800
	 { 457, -40, 2401, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001810
	 { -457, 638, 2401, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001820
	 { 457, 638, 2401, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001830
};

Gfx _tokinoma_room_1_dlist_00001840[] =
{
	gsDPPipeSync(), // 0x00001840
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001848
	gsSPVertex(_tokinoma_room_1_vertices_000017C0, 8, 0), // 0x00001850
	gsSPCullDisplayList(0, 7), // 0x00001858
	gsDPPipeSync(), // 0x00001860
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001868
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001870
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001878
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000EFA0), // 0x00001880
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001888
	gsDPLoadSync(), // 0x00001890
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001898
	gsDPPipeSync(), // 0x000018A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000018A8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000018B0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000018B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000018C0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000018C8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000018D0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000018D8
	gsSPVertex(_tokinoma_room_1_vertices_00001540, 32, 0), // 0x000018E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000018E8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000018F0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000018F8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00001900
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00001908
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00001910
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00001918
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00001920
	gsSPVertex(_tokinoma_room_1_vertices_00001740, 8, 0), // 0x00001928
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001930
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001938
	gsSPEndDisplayList(), // 0x00001940
};

Vtx_t _tokinoma_room_1_vertices_00001948[18] = 
{
	 { -56, -40, 2640, 0, 1024, 5120, 51, 51, 51, 255 }, // 0x00001948
	 { -56, -40, 2760, 0, 1024, 7680, 0, 0, 0, 255 }, // 0x00001958
	 { 64, -40, 2760, 0, -512, 7680, 0, 0, 0, 255 }, // 0x00001968
	 { 64, -40, 2640, 0, -512, 5120, 51, 51, 51, 255 }, // 0x00001978
	 { -56, -40, 2400, 0, 1024, 0, 204, 204, 204, 255 }, // 0x00001988
	 { 64, -40, 2400, 0, -512, 0, 204, 204, 204, 255 }, // 0x00001998
	 { -104, 200, 1120, 0, -1024, 2048, 25, 25, 25, 255 }, // 0x000019A8
	 { -104, 200, 920, 0, -1024, 1411, 0, 0, 0, 255 }, // 0x000019B8
	 { 96, 200, 920, 0, 2662, 1411, 0, 0, 0, 255 }, // 0x000019C8
	 { 96, 200, 1120, 0, 2662, 2048, 25, 25, 25, 255 }, // 0x000019D8
	 { -104, 0, 920, 0, 0, 2560, 0, 0, 0, 255 }, // 0x000019E8
	 { -104, 0, 1120, 0, 0, 5118, 204, 204, 204, 255 }, // 0x000019F8
	 { 96, 0, 1120, 0, 2560, 5118, 204, 204, 204, 255 }, // 0x00001A08
	 { 96, 0, 920, 0, 2560, 2560, 0, 0, 0, 255 }, // 0x00001A18
	 { -104, 0, 720, 0, 0, 0, 114, 114, 114, 255 }, // 0x00001A28
	 { 96, 0, 720, 0, 2560, 0, 114, 114, 114, 255 }, // 0x00001A38
	 { -104, 200, 720, 0, -1024, -510, 25, 25, 25, 255 }, // 0x00001A48
	 { 96, 200, 720, 0, 2662, -510, 25, 25, 25, 255 }, // 0x00001A58
};

Vtx_t _tokinoma_room_1_vertices_00001A68[28] = 
{
	 { -160, -40, 1280, 0, 1875, -3146, 229, 229, 229, 255 }, // 0x00001A68
	 { -160, -40, 1440, 0, 509, -1781, 229, 229, 229, 255 }, // 0x00001A78
	 { -60, -40, 1440, 0, 1363, -927, 229, 229, 229, 255 }, // 0x00001A88
	 { -60, -40, 1280, 0, 2728, -2293, 229, 229, 229, 255 }, // 0x00001A98
	 { 160, -40, 2240, 0, -3587, 7777, 229, 229, 229, 255 }, // 0x00001AA8
	 { 160, -40, 1440, 0, 3240, 950, 229, 229, 229, 255 }, // 0x00001AB8
	 { -160, -40, 2240, 0, -6317, 5046, 229, 229, 229, 255 }, // 0x00001AC8
	 { -77, -40, 2240, 0, -5606, 5757, 229, 229, 229, 255 }, // 0x00001AD8
	 { -160, -40, 2400, 0, -7683, 6411, 229, 229, 229, 255 }, // 0x00001AE8
	 { -77, -40, 2400, 0, -6971, 7123, 229, 229, 229, 255 }, // 0x00001AF8
	 { 160, -40, 2400, 0, -4952, 9142, 229, 229, 229, 255 }, // 0x00001B08
	 { 83, -40, 2240, 0, -4241, 7123, 229, 229, 229, 255 }, // 0x00001B18
	 { 83, -40, 2400, 0, -5606, 8488, 229, 229, 229, 255 }, // 0x00001B28
	 { 64, -40, 2400, 0, 0, 1153, 114, 114, 114, 255 }, // 0x00001B38
	 { 64, -40, 2760, 0, 4660, 1153, 0, 0, 0, 255 }, // 0x00001B48
	 { 60, 240, 2760, 0, 4660, -2472, 0, 0, 0, 255 }, // 0x00001B58
	 { 64, 241, 2400, 0, 0, -2485, 140, 140, 140, 255 }, // 0x00001B68
	 { -56, 241, 2400, 0, -10, 4499, 76, 76, 76, 255 }, // 0x00001B78
	 { -60, 240, 2760, 0, 4591, 4499, 0, 0, 0, 255 }, // 0x00001B88
	 { -56, -40, 2760, 0, 4601, 920, 0, 0, 0, 255 }, // 0x00001B98
	 { -56, -40, 2400, 0, 0, 907, 114, 114, 114, 255 }, // 0x00001BA8
	 { 64, 241, 2400, 0, 0, 1024, 76, 76, 76, 255 }, // 0x00001BB8
	 { 60, 240, 2760, 0, 4586, 1024, 0, 0, 0, 255 }, // 0x00001BC8
	 { -60, 240, 2760, 0, 4603, -505, 0, 0, 0, 255 }, // 0x00001BD8
	 { -56, 241, 2400, 0, 17, -505, 76, 76, 76, 255 }, // 0x00001BE8
	 { 160, -40, 1280, 0, 4605, -415, 229, 229, 229, 255 }, // 0x00001BF8
	 { 60, -40, 1280, 0, 3752, -1269, 229, 229, 229, 255 }, // 0x00001C08
	 { 60, -40, 1440, 0, 2387, 97, 229, 229, 229, 255 }, // 0x00001C18
};

Vtx_t _tokinoma_room_1_vertices_00001C28[32] = 
{
	 { 128, -40, 1120, 0, 2147, 2017, 178, 178, 178, 255 }, // 0x00001C28
	 { 343, -40, 1120, 0, 4908, 2017, 178, 178, 178, 255 }, // 0x00001C38
	 { 343, 638, 1120, 0, 4908, -6656, 0, 0, 0, 255 }, // 0x00001C48
	 { 128, 638, 1120, 0, 2147, -6656, 0, 0, 0, 255 }, // 0x00001C58
	 { 457, -40, 1120, 0, 6356, 2017, 178, 178, 178, 255 }, // 0x00001C68
	 { 520, -40, 1120, 0, 7168, 2017, 178, 178, 178, 255 }, // 0x00001C78
	 { 520, 638, 1120, 0, 7168, -6656, 0, 0, 0, 255 }, // 0x00001C88
	 { 457, 638, 1120, 0, 6356, -6656, 0, 0, 0, 255 }, // 0x00001C98
	 { 520, 638, 1120, 0, -7680, -6656, 0, 0, 0, 255 }, // 0x00001CA8
	 { 520, -40, 1120, 0, -7680, 2017, 153, 153, 153, 255 }, // 0x00001CB8
	 { 520, -40, 2400, 0, 8704, 2017, 153, 153, 153, 255 }, // 0x00001CC8
	 { 520, 638, 2400, 0, 8704, -6656, 0, 0, 0, 255 }, // 0x00001CD8
	 { 64, 481, 2400, 0, 205, -4617, 51, 51, 51, 255 }, // 0x00001CE8
	 { 64, 241, 2400, 0, 205, -1550, 153, 153, 153, 255 }, // 0x00001CF8
	 { -56, 241, 2400, 0, 1741, -1550, 153, 153, 153, 255 }, // 0x00001D08
	 { -56, 481, 2400, 0, 1741, -4617, 51, 51, 51, 255 }, // 0x00001D18
	 { -520, -40, 1120, 0, 9216, 2048, 255, 255, 255, 255 }, // 0x00001D28
	 { -520, 638, 1120, 0, 9216, -6625, 0, 0, 0, 255 }, // 0x00001D38
	 { -520, 638, 2400, 0, -7168, -6625, 0, 0, 0, 255 }, // 0x00001D48
	 { -520, -40, 2400, 0, -7168, 2048, 255, 255, 255, 255 }, // 0x00001D58
	 { 520, -40, 2400, 0, -5632, 2048, 204, 204, 204, 255 }, // 0x00001D68
	 { 96, -40, 2400, 0, -201, 2048, 204, 204, 204, 255 }, // 0x00001D78
	 { 96, 638, 2400, 0, -201, -6625, 0, 0, 0, 255 }, // 0x00001D88
	 { 520, 638, 2400, 0, -5632, -6625, 0, 0, 0, 255 }, // 0x00001D98
	 { -520, 638, 2400, 0, 7680, -6625, 0, 0, 0, 255 }, // 0x00001DA8
	 { -88, 638, 2400, 0, 2147, -6625, 0, 0, 0, 255 }, // 0x00001DB8
	 { -88, -40, 2400, 0, 2147, 2048, 204, 204, 204, 255 }, // 0x00001DC8
	 { -520, -40, 2400, 0, 7680, 2048, 204, 204, 204, 255 }, // 0x00001DD8
	 { 64, 638, 2400, 0, 205, -6625, 0, 0, 0, 255 }, // 0x00001DE8
	 { 64, 603, 2400, 0, 205, -6180, 38, 38, 38, 255 }, // 0x00001DF8
	 { -56, 603, 2400, 0, 1741, -6180, 38, 38, 38, 255 }, // 0x00001E08
	 { -56, 638, 2400, 0, 1741, -6625, 0, 0, 0, 255 }, // 0x00001E18
};

Vtx_t _tokinoma_room_1_vertices_00001E28[27] = 
{
	 { 96, 200, 920, 0, 1536, -514, 0, 0, 0, 255 }, // 0x00001E28
	 { 96, 0, 920, 0, 1536, 2046, 0, 0, 0, 255 }, // 0x00001E38
	 { 96, 200, 1120, 0, 4094, -516, 25, 25, 25, 255 }, // 0x00001E48
	 { 96, 0, 1120, 0, 4094, 2044, 140, 140, 140, 255 }, // 0x00001E58
	 { -104, 200, 920, 0, 2007, -512, 0, 0, 0, 255 }, // 0x00001E68
	 { -104, 200, 1120, 0, -551, -512, 25, 25, 25, 255 }, // 0x00001E78
	 { -104, 0, 920, 0, 2009, 2048, 0, 0, 0, 255 }, // 0x00001E88
	 { -104, 0, 1120, 0, -548, 2048, 140, 140, 140, 255 }, // 0x00001E98
	 { -104, 200, 720, 0, 4567, -512, 25, 25, 25, 255 }, // 0x00001EA8
	 { -104, 0, 720, 0, 4569, 2048, 76, 76, 76, 255 }, // 0x00001EB8
	 { -136, 638, 1120, 0, -1226, -6656, 0, 0, 0, 255 }, // 0x00001EC8
	 { -343, 638, 1120, 0, -3884, -6656, 0, 0, 0, 255 }, // 0x00001ED8
	 { -343, -40, 1120, 0, -3884, 2017, 178, 178, 178, 255 }, // 0x00001EE8
	 { -136, -40, 1120, 0, -1226, 2017, 178, 178, 178, 255 }, // 0x00001EF8
	 { -457, 638, 1120, 0, -5332, -6656, 0, 0, 0, 255 }, // 0x00001F08
	 { -520, 638, 1120, 0, -6144, -6656, 0, 0, 0, 255 }, // 0x00001F18
	 { -520, -40, 1120, 0, -6144, 2017, 178, 178, 178, 255 }, // 0x00001F28
	 { -457, -40, 1120, 0, -5332, 2017, 178, 178, 178, 255 }, // 0x00001F38
	 { 96, 200, 720, 0, -1024, -512, 25, 25, 25, 255 }, // 0x00001F48
	 { 96, 0, 720, 0, -1024, 2048, 76, 76, 76, 255 }, // 0x00001F58
	 { 96, 638, 1120, 0, 2560, -3553, 0, 0, 0, 255 }, // 0x00001F68
	 { -104, 638, 1120, 0, 0, -3553, 0, 0, 0, 255 }, // 0x00001F78
	 { 0, 343, 1120, 0, 1331, 213, 114, 114, 114, 255 }, // 0x00001F88
	 { -60, 243, 1120, 0, 561, 1498, 140, 140, 140, 255 }, // 0x00001F98
	 { -104, 200, 1120, 0, 0, 2048, 140, 140, 140, 255 }, // 0x00001FA8
	 { 60, 243, 1120, 0, 2102, 1498, 140, 140, 140, 255 }, // 0x00001FB8
	 { 96, 200, 1120, 0, 2560, 2048, 140, 140, 140, 255 }, // 0x00001FC8
};

Vtx_t _tokinoma_room_1_vertices_00001FD8[12] = 
{
	 { -520, -40, 1440, 0, -2570, -8211, 76, 76, 76, 255 }, // 0x00001FD8
	 { -520, -40, 2400, 0, -2570, 4077, 76, 76, 76, 255 }, // 0x00001FE8
	 { -160, -40, 2400, 0, 3062, 4077, 229, 229, 229, 255 }, // 0x00001FF8
	 { -160, -40, 1440, 0, 3062, -8211, 229, 229, 229, 255 }, // 0x00002008
	 { -520, -40, 1120, 0, -2570, -12307, 76, 76, 76, 255 }, // 0x00002018
	 { -160, -40, 1120, 0, 3062, -12307, 229, 229, 229, 255 }, // 0x00002028
	 { 520, -40, 2400, 0, 3584, 5120, 76, 76, 76, 255 }, // 0x00002038
	 { 520, -40, 1440, 0, 3584, -7168, 76, 76, 76, 255 }, // 0x00002048
	 { 160, -40, 1440, 0, -2048, -7168, 229, 229, 229, 255 }, // 0x00002058
	 { 160, -40, 2400, 0, -2048, 5120, 229, 229, 229, 255 }, // 0x00002068
	 { 520, -40, 1120, 0, 3584, -11264, 76, 76, 76, 255 }, // 0x00002078
	 { 160, -40, 1120, 0, -2048, -11264, 229, 229, 229, 255 }, // 0x00002088
};

Vtx_t _tokinoma_room_1_vertices_00002098[8] = 
{
	 { -60, -40, 1360, 0, 2048, -1383, 229, 229, 229, 255 }, // 0x00002098
	 { -60, -40, 1440, 0, 2048, -4437, 229, 229, 229, 255 }, // 0x000020A8
	 { 60, -40, 1440, 0, 0, -4437, 229, 229, 229, 255 }, // 0x000020B8
	 { 60, -40, 1360, 0, 0, -1383, 229, 229, 229, 255 }, // 0x000020C8
	 { -77, -40, 2400, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000020D8
	 { 83, -40, 2400, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x000020E8
	 { 83, -40, 2240, 0, 2048, -3072, 255, 255, 255, 255 }, // 0x000020F8
	 { -77, -40, 2240, 0, 0, -3072, 255, 255, 255, 255 }, // 0x00002108
};

Vtx_t _tokinoma_room_1_vertices_00002118[4] = 
{
	 { 64, -40, 2760, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00002118
	 { -56, -40, 2760, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00002128
	 { -60, 240, 2760, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00002138
	 { 60, 240, 2760, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00002148
};

Vtx_t _tokinoma_room_1_vertices_00002158[8] = 
{
	 { -520, -40, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002158
	 { 520, -40, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002168
	 { -520, 638, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002178
	 { 520, 638, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002188
	 { -520, -40, 2760, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002198
	 { 520, -40, 2760, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021A8
	 { -520, 638, 2760, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021B8
	 { 520, 638, 2760, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021C8
};

Gfx _tokinoma_room_1_dlist_000021D8[] =
{
	gsDPPipeSync(), // 0x000021D8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000021E0
	gsSPVertex(_tokinoma_room_1_vertices_00002158, 8, 0), // 0x000021E8
	gsSPCullDisplayList(0, 7), // 0x000021F0
	gsDPPipeSync(), // 0x000021F8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002200
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002208
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002210
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_00011FA0), // 0x00002218
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002220
	gsDPLoadSync(), // 0x00002228
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002230
	gsDPPipeSync(), // 0x00002238
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002240
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002248
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002250
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002258
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002260
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002268
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002270
	gsSPVertex(_tokinoma_room_1_vertices_00001948, 18, 0), // 0x00002278
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002280
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00002288
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00002290
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00002298
	gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0), // 0x000022A0
	gsSP2Triangles(7, 16, 17, 0, 7, 17, 8, 0), // 0x000022A8
	gsDPPipeSync(), // 0x000022B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000FFA0), // 0x000022B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000022C0
	gsDPLoadSync(), // 0x000022C8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000022D0
	gsDPPipeSync(), // 0x000022D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000022E0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000022E8
	gsSPVertex(_tokinoma_room_1_vertices_00001A68, 28, 0), // 0x000022F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000022F8
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 6, 0), // 0x00002300
	gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0), // 0x00002308
	gsSP2Triangles(10, 4, 11, 0, 10, 11, 12, 0), // 0x00002310
	gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0), // 0x00002318
	gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0), // 0x00002320
	gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0), // 0x00002328
	gsSP2Triangles(5, 25, 26, 0, 5, 26, 27, 0), // 0x00002330
	gsDPPipeSync(), // 0x00002338
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000DFA0), // 0x00002340
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 1, 5, 0), // 0x00002348
	gsDPLoadSync(), // 0x00002350
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00002358
	gsDPPipeSync(), // 0x00002360
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 1, 5, 0), // 0x00002368
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002370
	gsSPVertex(_tokinoma_room_1_vertices_00001C28, 32, 0), // 0x00002378
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002380
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002388
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002390
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002398
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000023A0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000023A8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x000023B0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000023B8
	gsSPVertex(_tokinoma_room_1_vertices_00001E28, 27, 0), // 0x000023C0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000023C8
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x000023D0
	gsSP2Triangles(8, 4, 6, 0, 9, 8, 6, 0), // 0x000023D8
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x000023E0
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x000023E8
	gsSP2Triangles(1, 0, 18, 0, 19, 1, 18, 0), // 0x000023F0
	gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0), // 0x000023F8
	gsSP2Triangles(21, 24, 23, 0, 25, 20, 22, 0), // 0x00002400
	gsSP2Triangles(25, 26, 20, 0, 24, 26, 25, 0), // 0x00002408
	gsSP1Triangle(24, 25, 23, 0), // 0x00002410
	gsDPPipeSync(), // 0x00002418
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000D7A0), // 0x00002420
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002428
	gsDPLoadSync(), // 0x00002430
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002438
	gsDPPipeSync(), // 0x00002440
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002448
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002450
	gsSPVertex(_tokinoma_room_1_vertices_00001FD8, 12, 0), // 0x00002458
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002460
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00002468
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00002470
	gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0), // 0x00002478
	gsDPPipeSync(), // 0x00002480
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000CFA0), // 0x00002488
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 5, 0), // 0x00002490
	gsDPLoadSync(), // 0x00002498
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000024A0
	gsDPPipeSync(), // 0x000024A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 1, 5, 0), // 0x000024B0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000024B8
	gsSPVertex(_tokinoma_room_1_vertices_00002098, 8, 0), // 0x000024C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000024C8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000024D0
	gsDPPipeSync(), // 0x000024D8
	gsSPTexture(0, 0, 0, 0, 0), // 0x000024E0
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x000024E8
	gsSPVertex(_tokinoma_room_1_vertices_00002118, 4, 0), // 0x000024F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000024F8
	gsSPEndDisplayList(), // 0x00002500
};

Vtx_t _tokinoma_room_1_vertices_00002508[32] = 
{
	 { 191, -10, 1280, 0, 4308, 1135, 76, 76, 76, 255 }, // 0x00002508
	 { 144, 0, 1280, 0, 3706, 1010, 140, 140, 140, 255 }, // 0x00002518
	 { -144, 0, 1280, 0, 19, 1010, 140, 140, 140, 255 }, // 0x00002528
	 { -191, -10, 1280, 0, -583, 1136, 140, 140, 140, 255 }, // 0x00002538
	 { 238, -20, 1280, 0, 299, 888, 76, 76, 76, 255 }, // 0x00002548
	 { 191, -10, 1280, 0, -362, 747, 76, 76, 76, 255 }, // 0x00002558
	 { 191, -20, 1280, 0, -362, 888, 76, 76, 76, 255 }, // 0x00002568
	 { 285, -30, 1280, 0, 919, 812, 76, 76, 76, 255 }, // 0x00002578
	 { 238, -20, 1280, 0, 263, 673, 76, 76, 76, 255 }, // 0x00002588
	 { 238, -30, 1280, 0, 263, 812, 76, 76, 76, 255 }, // 0x00002598
	 { -191, -10, 1280, 0, 399, 620, 140, 140, 140, 255 }, // 0x000025A8
	 { -238, -20, 1280, 0, -186, 748, 140, 140, 140, 255 }, // 0x000025B8
	 { -191, -20, 1280, 0, 416, 748, 76, 76, 76, 255 }, // 0x000025C8
	 { -238, -20, 1280, 0, 313, 633, 140, 140, 140, 255 }, // 0x000025D8
	 { -285, -30, 1280, 0, -272, 761, 140, 140, 140, 255 }, // 0x000025E8
	 { -238, -30, 1280, 0, 330, 761, 76, 76, 76, 255 }, // 0x000025F8
	 { -285, -30, 1280, 0, 797, 777, 140, 140, 140, 255 }, // 0x00002608
	 { -332, -40, 1280, 0, 83, 928, 76, 76, 76, 255 }, // 0x00002618
	 { -285, -40, 1280, 0, 797, 928, 76, 76, 76, 255 }, // 0x00002628
	 { 332, -40, 1280, 0, 114, 1007, 76, 76, 76, 255 }, // 0x00002638
	 { 285, -30, 1280, 0, -706, 833, 76, 76, 76, 255 }, // 0x00002648
	 { 285, -40, 1280, 0, -706, 1007, 76, 76, 76, 255 }, // 0x00002658
	 { 80, -30, 1280, 0, 1857, 1831, 255, 255, 255, 255 }, // 0x00002668
	 { 80, -30, 1360, 0, 2617, 10, 255, 255, 255, 255 }, // 0x00002678
	 { 285, -30, 1280, 0, -3093, 82, 255, 255, 255, 255 }, // 0x00002688
	 { 285, -40, 1280, 0, -2047, 795, 102, 102, 102, 255 }, // 0x00002698
	 { 285, -30, 1280, 0, -2047, 565, 178, 178, 178, 255 }, // 0x000026A8
	 { 80, -30, 1360, 0, 3636, 565, 178, 178, 178, 255 }, // 0x000026B8
	 { 80, -40, 1360, 0, 3636, 795, 102, 102, 102, 255 }, // 0x000026C8
	 { 238, -30, 1280, 0, -1535, 789, 102, 102, 102, 255 }, // 0x000026D8
	 { 238, -20, 1280, 0, -1534, 555, 178, 178, 178, 255 }, // 0x000026E8
	 { 80, -20, 1338, 0, 2809, 555, 178, 178, 178, 255 }, // 0x000026F8
};

Vtx_t _tokinoma_room_1_vertices_00002708[45] = 
{
	 { 238, -30, 1280, 0, -1535, 789, 102, 102, 102, 255 }, // 0x00002708
	 { 80, -20, 1338, 0, 2809, 555, 178, 178, 178, 255 }, // 0x00002718
	 { 80, -30, 1338, 0, 2808, 789, 102, 102, 102, 255 }, // 0x00002728
	 { 80, -20, 1280, 0, 1783, 1358, 255, 255, 255, 255 }, // 0x00002738
	 { 80, -20, 1338, 0, 2297, 41, 255, 255, 255, 255 }, // 0x00002748
	 { 238, -20, 1280, 0, -2062, 42, 255, 255, 255, 255 }, // 0x00002758
	 { 80, -10, 1280, 0, 1220, 902, 255, 255, 255, 255 }, // 0x00002768
	 { 80, -10, 1316, 0, 1494, 32, 255, 255, 255, 255 }, // 0x00002778
	 { 191, -10, 1280, 0, -1534, 32, 255, 255, 255, 255 }, // 0x00002788
	 { 191, -20, 1280, 0, -1023, 799, 102, 102, 102, 255 }, // 0x00002798
	 { 191, -10, 1280, 0, -1022, 573, 178, 178, 178, 255 }, // 0x000027A8
	 { 80, -10, 1316, 0, 2006, 573, 178, 178, 178, 255 }, // 0x000027B8
	 { 80, -20, 1316, 0, 2005, 799, 102, 102, 102, 255 }, // 0x000027C8
	 { 332, -40, 1120, 0, 5583, 5117, 229, 229, 229, 255 }, // 0x000027D8
	 { 144, 0, 1120, 0, 3175, 5118, 204, 204, 204, 255 }, // 0x000027E8
	 { 144, 0, 1280, 0, 3175, 7166, 204, 204, 204, 255 }, // 0x000027F8
	 { 332, -40, 1280, 0, 5584, 7165, 229, 229, 229, 255 }, // 0x00002808
	 { -80, -20, 1316, 0, 2005, 799, 102, 102, 102, 255 }, // 0x00002818
	 { -80, -10, 1316, 0, 2006, 573, 178, 178, 178, 255 }, // 0x00002828
	 { -191, -10, 1280, 0, -1022, 573, 178, 178, 178, 255 }, // 0x00002838
	 { -191, -20, 1280, 0, -1023, 799, 102, 102, 102, 255 }, // 0x00002848
	 { -191, -10, 1280, 0, -1534, 32, 255, 255, 255, 255 }, // 0x00002858
	 { -80, -10, 1316, 0, 1494, 32, 255, 255, 255, 255 }, // 0x00002868
	 { -80, -10, 1280, 0, 1220, 902, 255, 255, 255, 255 }, // 0x00002878
	 { -238, -20, 1280, 0, -2062, 42, 255, 255, 255, 255 }, // 0x00002888
	 { -80, -20, 1338, 0, 2297, 41, 255, 255, 255, 255 }, // 0x00002898
	 { -80, -20, 1280, 0, 1783, 1358, 255, 255, 255, 255 }, // 0x000028A8
	 { -80, -30, 1338, 0, 2808, 789, 102, 102, 102, 255 }, // 0x000028B8
	 { -80, -20, 1338, 0, 2809, 555, 178, 178, 178, 255 }, // 0x000028C8
	 { -238, -20, 1280, 0, -1534, 555, 178, 178, 178, 255 }, // 0x000028D8
	 { -238, -30, 1280, 0, -1535, 789, 102, 102, 102, 255 }, // 0x000028E8
	 { -80, -40, 1360, 0, 3636, 795, 102, 102, 102, 255 }, // 0x000028F8
	 { -80, -30, 1360, 0, 3636, 565, 178, 178, 178, 255 }, // 0x00002908
	 { -285, -30, 1280, 0, -2047, 565, 178, 178, 178, 255 }, // 0x00002918
	 { -285, -40, 1280, 0, -2047, 795, 102, 102, 102, 255 }, // 0x00002928
	 { -285, -30, 1280, 0, -3093, 82, 255, 255, 255, 255 }, // 0x00002938
	 { -80, -30, 1360, 0, 2617, 10, 255, 255, 255, 255 }, // 0x00002948
	 { -80, -30, 1280, 0, 1857, 1831, 255, 255, 255, 255 }, // 0x00002958
	 { -332, -40, 1280, 0, -2920, 7166, 178, 178, 178, 255 }, // 0x00002968
	 { -144, 0, 1280, 0, -511, 7166, 204, 204, 204, 255 }, // 0x00002978
	 { -144, 0, 1120, 0, -512, 5118, 204, 204, 204, 255 }, // 0x00002988
	 { -332, -40, 1120, 0, -2920, 5118, 178, 178, 178, 255 }, // 0x00002998
	 { -144, 0, 1280, 0, -511, 7166, 255, 255, 255, 255 }, // 0x000029A8
	 { 144, 0, 1280, 0, 3175, 7166, 255, 255, 255, 255 }, // 0x000029B8
	 { 144, 0, 1120, 0, 3175, 5118, 204, 204, 204, 255 }, // 0x000029C8
};

Vtx_t _tokinoma_room_1_vertices_000029D8[8] = 
{
	 { -332, -40, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029D8
	 { 332, -40, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029E8
	 { -332, 0, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000029F8
	 { 332, 0, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A08
	 { -332, -40, 1360, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A18
	 { 332, -40, 1360, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A28
	 { -332, 0, 1360, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A38
	 { 332, 0, 1360, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A48
};

Gfx _tokinoma_room_1_dlist_00002A58[] =
{
	gsDPPipeSync(), // 0x00002A58
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002A60
	gsSPVertex(_tokinoma_room_1_vertices_000029D8, 8, 0), // 0x00002A68
	gsSPCullDisplayList(0, 7), // 0x00002A70
	gsDPPipeSync(), // 0x00002A78
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002A80
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002A88
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002A90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_00011FA0), // 0x00002A98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002AA0
	gsDPLoadSync(), // 0x00002AA8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002AB0
	gsDPPipeSync(), // 0x00002AB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002AC0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002AC8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002AD0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002AD8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002AE0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002AE8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002AF0
	gsSPVertex(_tokinoma_room_1_vertices_00002508, 32, 0), // 0x00002AF8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002B00
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00002B08
	gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0), // 0x00002B10
	gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0), // 0x00002B18
	gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0), // 0x00002B20
	gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0), // 0x00002B28
	gsSPVertex(_tokinoma_room_1_vertices_00002708, 32, 0), // 0x00002B30
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00002B38
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00002B40
	gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0), // 0x00002B48
	gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0), // 0x00002B50
	gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0), // 0x00002B58
	gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0), // 0x00002B60
	gsSP1Triangle(27, 29, 30, 0), // 0x00002B68
	gsSPVertex(_tokinoma_room_1_vertices_000028F8, 14, 0), // 0x00002B70
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002B78
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00002B80
	gsSP2Triangles(7, 9, 10, 0, 9, 11, 12, 0), // 0x00002B88
	gsSP1Triangle(9, 12, 13, 0), // 0x00002B90
	gsSPEndDisplayList(), // 0x00002B98
};

Vtx_t _tokinoma_room_1_vertices_00002BA0[48] = 
{
	 { 520, 638, 1120, 0, -233, -8877, 12, 12, 12, 255 }, // 0x00002BA0
	 { 128, 231, 1120, 0, 19, 2916, 76, 76, 76, 255 }, // 0x00002BB0
	 { 117, 205, 1131, 0, 547, 3695, 178, 178, 178, 255 }, // 0x00002BC0
	 { 520, 608, 1131, 0, 433, -8369, 51, 51, 51, 255 }, // 0x00002BD0
	 { 128, 201, 1120, 0, 904, 3591, 76, 76, 76, 255 }, // 0x00002BE0
	 { 520, 568, 1120, 0, 1753, -7349, 12, 12, 12, 255 }, // 0x00002BF0
	 { -136, 233, 1120, 0, 990, 3051, 114, 114, 114, 255 }, // 0x00002C00
	 { -520, 638, 1120, 0, 1427, -9857, 25, 25, 25, 255 }, // 0x00002C10
	 { -520, 608, 1131, 0, 544, -9360, 12, 12, 12, 255 }, // 0x00002C20
	 { -125, 205, 1131, 0, 489, 3696, 178, 178, 178, 255 }, // 0x00002C30
	 { -520, 575, 1120, 0, -389, -8827, 25, 25, 25, 255 }, // 0x00002C40
	 { -136, 201, 1120, 0, 55, 3581, 76, 76, 76, 255 }, // 0x00002C50
	 { 0, 395, 1120, 0, 0, -693, 28, 28, 28, 255 }, // 0x00002C60
	 { 96, 257, 1120, 0, 0, 4219, 76, 76, 76, 255 }, // 0x00002C70
	 { 107, 256, 1131, 0, 562, 4293, 178, 178, 178, 255 }, // 0x00002C80
	 { 0, 421, 1131, 0, 639, -1306, 178, 178, 178, 255 }, // 0x00002C90
	 { 96, 287, 1120, 0, 557, 3369, 114, 114, 114, 255 }, // 0x00002CA0
	 { 0, 447, 1120, 0, 803, -1919, 51, 51, 51, 255 }, // 0x00002CB0
	 { 0, 566, 1131, 0, 468, -3970, 89, 89, 89, 255 }, // 0x00002CC0
	 { 107, 264, 1131, 0, 784, 4945, 178, 178, 178, 255 }, // 0x00002CD0
	 { 96, 310, 1120, 0, 993, 3639, 114, 114, 114, 255 }, // 0x00002CE0
	 { 0, 607, 1120, 0, 1164, -5063, 12, 12, 12, 255 }, // 0x00002CF0
	 { 0, 520, 1120, 0, -314, -2750, 28, 28, 28, 255 }, // 0x00002D00
	 { 96, 262, 1120, 0, 187, 4899, 76, 76, 76, 255 }, // 0x00002D10
	 { 328, 638, 1131, 0, 543, -5476, 0, 0, 0, 255 }, // 0x00002D20
	 { 117, 240, 1131, 0, 555, 3970, 178, 178, 178, 255 }, // 0x00002D30
	 { 128, 238, 1120, 0, 958, 3899, 76, 76, 76, 255 }, // 0x00002D40
	 { 351, 638, 1120, 0, 1302, -5703, 0, 0, 0, 255 }, // 0x00002D50
	 { 305, 638, 1120, 0, -217, -5249, 0, 0, 0, 255 }, // 0x00002D60
	 { 128, 291, 1120, 0, 26, 2919, 76, 76, 76, 255 }, // 0x00002D70
	 { 0, 566, 1131, 0, 297, -4408, 89, 89, 89, 255 }, // 0x00002D80
	 { -115, 264, 1131, 0, 433, 4742, 178, 178, 178, 255 }, // 0x00002D90
	 { -104, 262, 1120, 0, 992, 4681, 76, 76, 76, 255 }, // 0x00002DA0
	 { 0, 520, 1120, 0, 1145, -3188, 28, 28, 28, 255 }, // 0x00002DB0
	 { 0, 607, 1120, 0, -457, -5498, 12, 12, 12, 255 }, // 0x00002DC0
	 { -104, 310, 1120, 0, 119, 3422, 76, 76, 76, 255 }, // 0x00002DD0
	 { 0, 447, 1120, 0, -548, -3540, 51, 51, 51, 255 }, // 0x00002DE0
	 { -104, 287, 1120, 0, 56, 2622, 76, 76, 76, 255 }, // 0x00002DF0
	 { -115, 256, 1131, 0, 531, 3642, 178, 178, 178, 255 }, // 0x00002E00
	 { 0, 421, 1131, 0, 180, -2885, 178, 178, 178, 255 }, // 0x00002E10
	 { -104, 251, 1120, 0, 1065, 3553, 76, 76, 76, 255 }, // 0x00002E20
	 { 0, 395, 1120, 0, 907, -2197, 28, 28, 28, 255 }, // 0x00002E30
	 { -136, 288, 1120, 0, 961, 3515, 114, 114, 114, 255 }, // 0x00002E40
	 { -295, 638, 1120, 0, 1408, -6896, 0, 0, 0, 255 }, // 0x00002E50
	 { -318, 638, 1131, 0, 484, -7174, 0, 0, 0, 255 }, // 0x00002E60
	 { -125, 247, 1131, 0, 601, 4640, 178, 178, 178, 255 }, // 0x00002E70
	 { -341, 638, 1120, 0, -431, -7443, 0, 0, 0, 255 }, // 0x00002E80
	 { -136, 245, 1120, 0, 115, 4570, 76, 76, 76, 255 }, // 0x00002E90
};

Vtx_t _tokinoma_room_1_vertices_00002EA0[32] = 
{
	 { -120, -3, 1136, 0, 1024, 2118, 178, 178, 178, 255 }, // 0x00002EA0
	 { -120, 638, 1136, 0, 1024, -8815, 0, 0, 0, 255 }, // 0x00002EB0
	 { -136, 638, 1120, 0, 0, -8815, 0, 0, 0, 255 }, // 0x00002EC0
	 { -136, -7, 1120, 0, 0, 2161, 76, 76, 76, 255 }, // 0x00002ED0
	 { -104, 0, 1120, 0, 1024, 2075, 165, 165, 165, 255 }, // 0x00002EE0
	 { -104, 638, 1120, 0, 1024, -8815, 0, 0, 0, 255 }, // 0x00002EF0
	 { -120, 638, 1136, 0, 0, -8815, 0, 0, 0, 255 }, // 0x00002F00
	 { -120, -3, 1136, 0, 0, 2118, 178, 178, 178, 255 }, // 0x00002F10
	 { -270, -26, 1131, 0, -4771, 2400, 178, 178, 178, 255 }, // 0x00002F20
	 { -270, 638, 1131, 0, -4771, -8840, 0, 0, 0, 255 }, // 0x00002F30
	 { -281, 638, 1120, 0, -5795, -8840, 0, 0, 0, 255 }, // 0x00002F40
	 { -281, -29, 1120, 0, -5795, 2431, 76, 76, 76, 255 }, // 0x00002F50
	 { -259, -24, 1120, 0, -4771, 2368, 114, 114, 114, 255 }, // 0x00002F60
	 { -259, 638, 1120, 0, -4771, -8840, 0, 0, 0, 255 }, // 0x00002F70
	 { -270, 638, 1131, 0, -5795, -8840, 0, 0, 0, 255 }, // 0x00002F80
	 { -270, -26, 1131, 0, -5795, 2400, 178, 178, 178, 255 }, // 0x00002F90
	 { 282, -28, 1120, 0, 25931, 2421, 114, 114, 114, 255 }, // 0x00002FA0
	 { 282, 638, 1120, 0, 25931, -8832, 0, 0, 0, 255 }, // 0x00002FB0
	 { 271, 638, 1131, 0, 24907, -8832, 0, 0, 0, 255 }, // 0x00002FC0
	 { 271, -26, 1131, 0, 24907, 2387, 178, 178, 178, 255 }, // 0x00002FD0
	 { 271, -26, 1131, 0, 25931, 2387, 178, 178, 178, 255 }, // 0x00002FE0
	 { 271, 638, 1131, 0, 25931, -8832, 0, 0, 0, 255 }, // 0x00002FF0
	 { 259, 638, 1120, 0, 24907, -8832, 0, 0, 0, 255 }, // 0x00003000
	 { 259, -23, 1120, 0, 24907, 2354, 76, 76, 76, 255 }, // 0x00003010
	 { 128, -7, 1120, 0, -492, 1607, 114, 114, 114, 255 }, // 0x00003020
	 { 128, 638, 1120, 0, -492, -9433, 0, 0, 0, 255 }, // 0x00003030
	 { 112, 638, 1136, 0, -1516, -9433, 0, 0, 0, 255 }, // 0x00003040
	 { 112, 0, 1136, 0, -1516, 1559, 178, 178, 178, 255 }, // 0x00003050
	 { 112, 0, 1136, 0, -492, 1560, 178, 178, 178, 255 }, // 0x00003060
	 { 112, 638, 1136, 0, -492, -9433, 0, 0, 0, 255 }, // 0x00003070
	 { 96, 638, 1120, 0, -1516, -9433, 0, 0, 0, 255 }, // 0x00003080
	 { 96, 0, 1120, 0, -1516, 1560, 165, 165, 165, 255 }, // 0x00003090
};

Vtx_t _tokinoma_room_1_vertices_000030A0[16] = 
{
	 { 520, 339, 1131, 0, 1024, 1646, 178, 178, 178, 255 }, // 0x000030A0
	 { 112, 175, 1136, 0, 1024, -8158, 178, 178, 178, 255 }, // 0x000030B0
	 { 123, 170, 1125, 0, 0, -8017, 76, 76, 76, 255 }, // 0x000030C0
	 { 520, 312, 1120, 0, 0, 1456, 28, 28, 28, 255 }, // 0x000030D0
	 { 520, 367, 1120, 0, 1024, 1836, 76, 76, 76, 255 }, // 0x000030E0
	 { 123, 197, 1125, 0, 1024, -7638, 76, 76, 76, 255 }, // 0x000030F0
	 { 112, 175, 1136, 0, 0, -8158, 178, 178, 178, 255 }, // 0x00003100
	 { 520, 339, 1131, 0, 0, 1646, 178, 178, 178, 255 }, // 0x00003110
	 { -136, 187, 1120, 0, 1024, -7663, 114, 114, 114, 255 }, // 0x00003120
	 { -520, 366, 1120, 0, 1024, 1836, 76, 76, 76, 255 }, // 0x00003130
	 { -520, 339, 1131, 0, 0, 1646, 140, 140, 140, 255 }, // 0x00003140
	 { -123, 168, 1131, 0, 0, -8183, 140, 140, 140, 255 }, // 0x00003150
	 { -123, 168, 1131, 0, 1024, -8183, 178, 178, 178, 255 }, // 0x00003160
	 { -520, 339, 1131, 0, 1024, 1646, 140, 140, 140, 255 }, // 0x00003170
	 { -520, 322, 1120, 0, 0, 1456, 12, 12, 12, 255 }, // 0x00003180
	 { -134, 162, 1120, 0, 0, -8042, 76, 76, 76, 255 }, // 0x00003190
};

Vtx_t _tokinoma_room_1_vertices_000031A0[8] = 
{
	 { -520, -29, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000031A0
	 { 520, -29, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000031B0
	 { -520, 638, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000031C0
	 { 520, 638, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000031D0
	 { -520, -29, 1136, 0, 0, 0, 0, 0, 0, 0 }, // 0x000031E0
	 { 520, -29, 1136, 0, 0, 0, 0, 0, 0, 0 }, // 0x000031F0
	 { -520, 638, 1136, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003200
	 { 520, 638, 1136, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003210
};

Gfx _tokinoma_room_1_dlist_00003220[] =
{
	gsDPPipeSync(), // 0x00003220
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003228
	gsSPVertex(_tokinoma_room_1_vertices_000031A0, 8, 0), // 0x00003230
	gsSPCullDisplayList(0, 7), // 0x00003238
	gsDPPipeSync(), // 0x00003240
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003248
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003250
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003258
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000EFA0), // 0x00003260
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003268
	gsDPLoadSync(), // 0x00003270
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003278
	gsDPPipeSync(), // 0x00003280
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003288
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003290
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003298
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000032A0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000032A8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000032B0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000032B8
	gsSPVertex(_tokinoma_room_1_vertices_00002BA0, 32, 0), // 0x000032C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000032C8
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0), // 0x000032D0
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x000032D8
	gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0), // 0x000032E0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000032E8
	gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0), // 0x000032F0
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x000032F8
	gsSP2Triangles(22, 23, 19, 0, 22, 19, 18, 0), // 0x00003300
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00003308
	gsSP2Triangles(28, 29, 25, 0, 28, 25, 24, 0), // 0x00003310
	gsSPVertex(_tokinoma_room_1_vertices_00002D80, 18, 0), // 0x00003318
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003320
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0), // 0x00003328
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00003330
	gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0), // 0x00003338
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003340
	gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0), // 0x00003348
	gsDPPipeSync(), // 0x00003350
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000DFA0), // 0x00003358
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 1, 5, 0), // 0x00003360
	gsDPLoadSync(), // 0x00003368
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003370
	gsDPPipeSync(), // 0x00003378
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 1, 5, 0), // 0x00003380
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003388
	gsSPVertex(_tokinoma_room_1_vertices_00002EA0, 32, 0), // 0x00003390
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003398
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000033A0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000033A8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000033B0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000033B8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000033C0
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x000033C8
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000033D0
	gsSPVertex(_tokinoma_room_1_vertices_000030A0, 16, 0), // 0x000033D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000033E0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000033E8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000033F0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000033F8
	gsSPEndDisplayList(), // 0x00003400
};

Vtx_t _tokinoma_room_1_vertices_00003408[26] = 
{
	 { -67, 239, 2389, 0, 396, 4615, 153, 153, 153, 255 }, // 0x00003408
	 { 0, 447, 2389, 0, 537, -1537, 153, 153, 153, 255 }, // 0x00003418
	 { 1, 411, 2400, 0, -65, -172, 12, 12, 12, 255 }, // 0x00003428
	 { -34, 307, 2400, 0, 18, 2679, 12, 12, 12, 255 }, // 0x00003438
	 { -34, 307, 2400, 0, 1022, 1918, 114, 114, 114, 255 }, // 0x00003448
	 { 0, 345, 2400, 0, 1005, 450, 51, 51, 51, 255 }, // 0x00003458
	 { 0, 318, 2389, 0, 377, 1031, 191, 191, 191, 255 }, // 0x00003468
	 { -67, 239, 2389, 0, 279, 4015, 153, 153, 153, 255 }, // 0x00003478
	 { 0, 345, 2400, 0, -13, 469, 51, 51, 51, 255 }, // 0x00003488
	 { 41, 302, 2400, 0, 1, 2208, 51, 51, 51, 255 }, // 0x00003498
	 { 75, 239, 2389, 0, 783, 4227, 153, 153, 153, 255 }, // 0x000034A8
	 { 0, 318, 2389, 0, 691, 1020, 191, 191, 191, 255 }, // 0x000034B8
	 { 0, 447, 2389, 0, 364, -1536, 153, 153, 153, 255 }, // 0x000034C8
	 { 75, 239, 2389, 0, 737, 4838, 153, 153, 153, 255 }, // 0x000034D8
	 { 41, 302, 2400, 0, 1033, 2953, 28, 28, 28, 255 }, // 0x000034E8
	 { 1, 411, 2400, 0, 1002, -137, 28, 28, 28, 255 }, // 0x000034F8
	 { 64, 241, 2400, 0, 1025, 3955, 28, 28, 28, 255 }, // 0x00003508
	 { 2, 304, 2400, 0, 1024, 1358, 28, 28, 28, 255 }, // 0x00003518
	 { 0, 481, 2400, 0, -343, -3000, 51, 51, 51, 255 }, // 0x00003528
	 { 64, 305, 2400, 0, 35, 2556, 51, 51, 51, 255 }, // 0x00003538
	 { -56, 241, 2400, 0, 24, 3753, 28, 28, 28, 255 }, // 0x00003548
	 { 0, 318, 2389, 0, 377, 1031, 191, 191, 191, 255 }, // 0x00003558
	 { 2, 304, 2400, 0, -11, 1290, 12, 12, 12, 255 }, // 0x00003568
	 { -56, 307, 2400, 0, 1021, 2152, 114, 114, 114, 255 }, // 0x00003578
	 { 0, 481, 2400, 0, 1151, -3011, 51, 51, 51, 255 }, // 0x00003588
	 { 0, 447, 2389, 0, 537, -1537, 153, 153, 153, 255 }, // 0x00003598
};

Vtx_t _tokinoma_room_1_vertices_000035A8[16] = 
{
	 { 64, -40, 2400, 0, -4384, 4097, 114, 114, 114, 255 }, // 0x000035A8
	 { 64, 638, 2400, 0, -4384, -7305, 0, 0, 0, 255 }, // 0x000035B8
	 { 80, 638, 2384, 0, -5408, -7305, 0, 0, 0, 255 }, // 0x000035C8
	 { 80, -40, 2384, 0, -5408, 4097, 204, 204, 204, 255 }, // 0x000035D8
	 { 80, -40, 2384, 0, -4384, 4097, 204, 204, 204, 255 }, // 0x000035E8
	 { 80, 638, 2384, 0, -4384, -7305, 0, 0, 0, 255 }, // 0x000035F8
	 { 96, 638, 2400, 0, -5408, -7305, 0, 0, 0, 255 }, // 0x00003608
	 { 96, -40, 2400, 0, -5408, 4097, 114, 114, 114, 255 }, // 0x00003618
	 { -88, -40, 2400, 0, 24235, 2569, 114, 114, 114, 255 }, // 0x00003628
	 { -88, 638, 2400, 0, 24235, -8834, 0, 0, 0, 255 }, // 0x00003638
	 { -72, 638, 2384, 0, 23211, -8834, 0, 0, 0, 255 }, // 0x00003648
	 { -72, -40, 2384, 0, 23211, 2569, 178, 178, 178, 255 }, // 0x00003658
	 { -72, -40, 2384, 0, 24235, 2569, 178, 178, 178, 255 }, // 0x00003668
	 { -72, 638, 2384, 0, 24235, -8834, 0, 0, 0, 255 }, // 0x00003678
	 { -56, 638, 2400, 0, 23211, -8834, 0, 0, 0, 255 }, // 0x00003688
	 { -56, -40, 2400, 0, 23211, 2569, 114, 114, 114, 255 }, // 0x00003698
};

Vtx_t _tokinoma_room_1_vertices_000036A8[8] = 
{
	 { -88, -40, 2384, 0, 0, 0, 0, 0, 0, 0 }, // 0x000036A8
	 { 96, -40, 2384, 0, 0, 0, 0, 0, 0, 0 }, // 0x000036B8
	 { -88, 638, 2384, 0, 0, 0, 0, 0, 0, 0 }, // 0x000036C8
	 { 96, 638, 2384, 0, 0, 0, 0, 0, 0, 0 }, // 0x000036D8
	 { -88, -40, 2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x000036E8
	 { 96, -40, 2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x000036F8
	 { -88, 638, 2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003708
	 { 96, 638, 2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003718
};

Gfx _tokinoma_room_1_dlist_00003728[] =
{
	gsDPPipeSync(), // 0x00003728
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003730
	gsSPVertex(_tokinoma_room_1_vertices_000036A8, 8, 0), // 0x00003738
	gsSPCullDisplayList(0, 7), // 0x00003740
	gsDPPipeSync(), // 0x00003748
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003750
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003758
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003760
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000EFA0), // 0x00003768
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00003770
	gsDPLoadSync(), // 0x00003778
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003780
	gsDPPipeSync(), // 0x00003788
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00003790
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003798
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000037A0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000037A8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000037B0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000037B8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000037C0
	gsSPVertex(_tokinoma_room_1_vertices_00003408, 26, 0), // 0x000037C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000037D0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000037D8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000037E0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000037E8
	gsSP2Triangles(11, 10, 16, 0, 11, 16, 17, 0), // 0x000037F0
	gsSP2Triangles(18, 19, 13, 0, 18, 13, 12, 0), // 0x000037F8
	gsSP2Triangles(20, 7, 21, 0, 20, 21, 22, 0), // 0x00003800
	gsSP2Triangles(0, 23, 24, 0, 0, 24, 25, 0), // 0x00003808
	gsDPPipeSync(), // 0x00003810
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000DFA0), // 0x00003818
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 1, 5, 0), // 0x00003820
	gsDPLoadSync(), // 0x00003828
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003830
	gsDPPipeSync(), // 0x00003838
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 1, 5, 0), // 0x00003840
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003848
	gsSPVertex(_tokinoma_room_1_vertices_000035A8, 16, 0), // 0x00003850
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003858
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003860
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003868
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003870
	gsSPEndDisplayList(), // 0x00003878
};

Vtx_t _tokinoma_room_1_vertices_00003880[4] = 
{
	 { -80, 20, 1280, 0, 4641, 1050, 63, 63, 63, 255 }, // 0x00003880
	 { -74, 26, 1286, 0, 4643, 817, 63, 63, 63, 255 }, // 0x00003890
	 { 74, 26, 1286, 0, -19, 785, 89, 89, 89, 255 }, // 0x000038A0
	 { 80, 20, 1280, 0, -21, 1018, 63, 63, 63, 255 }, // 0x000038B0
};

Vtx_t _tokinoma_room_1_vertices_000038C0[17] = 
{
	 { -80, -40, 1280, 0, 8249, 2048, 25, 25, 25, 255 }, // 0x000038C0
	 { -80, 20, 1280, 0, 8249, -1045, 229, 229, 229, 255 }, // 0x000038D0
	 { 80, 20, 1280, 0, 0, -1045, 229, 229, 229, 255 }, // 0x000038E0
	 { 80, -40, 1280, 0, 0, 2048, 12, 12, 12, 255 }, // 0x000038F0
	 { -80, -8, 1324, 0, 2242, 392, 216, 216, 216, 255 }, // 0x00003900
	 { -80, 20, 1280, 0, 0, -1036, 204, 204, 204, 255 }, // 0x00003910
	 { -80, -40, 1280, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00003920
	 { 80, -40, 1360, 0, 9975, 2048, 114, 114, 114, 255 }, // 0x00003930
	 { 80, -8, 1360, 0, 9975, 406, 255, 255, 255, 255 }, // 0x00003940
	 { -80, -8, 1360, 0, 0, 406, 255, 255, 255, 255 }, // 0x00003950
	 { -80, -40, 1360, 0, 0, 2048, 114, 114, 114, 255 }, // 0x00003960
	 { 80, 20, 1280, 0, 0, -1036, 204, 204, 204, 255 }, // 0x00003970
	 { 80, -8, 1324, 0, 2242, 392, 216, 216, 216, 255 }, // 0x00003980
	 { 80, -40, 1360, 0, 4113, 2048, 76, 76, 76, 255 }, // 0x00003990
	 { 80, -8, 1360, 0, 4113, 409, 216, 216, 216, 255 }, // 0x000039A0
	 { -80, -40, 1360, 0, 4113, 2048, 76, 76, 76, 255 }, // 0x000039B0
	 { -80, -8, 1360, 0, 4113, 409, 204, 204, 204, 255 }, // 0x000039C0
};

Vtx_t _tokinoma_room_1_vertices_000039D0[29] = 
{
	 { -80, -8, 1360, 0, 3349, 1024, 51, 51, 51, 255 }, // 0x000039D0
	 { -74, 1, 1355, 0, 2322, 66, 51, 51, 51, 255 }, // 0x000039E0
	 { -74, 1, 1324, 0, 1117, 527, 89, 89, 89, 255 }, // 0x000039F0
	 { 80, -8, 1360, 0, 4551, 1024, 25, 25, 25, 255 }, // 0x00003A00
	 { 74, 1, 1355, 0, 4379, 269, 89, 89, 89, 255 }, // 0x00003A10
	 { -74, 1, 1355, 0, 171, 269, 89, 89, 89, 255 }, // 0x00003A20
	 { -80, -8, 1360, 0, 0, 1024, 7, 7, 7, 255 }, // 0x00003A30
	 { 74, 1, 1324, 0, 2560, 1536, 255, 255, 255, 255 }, // 0x00003A40
	 { 74, 26, 1286, 0, 2560, 512, 255, 255, 255, 255 }, // 0x00003A50
	 { -74, 26, 1286, 0, -1228, 512, 255, 255, 255, 255 }, // 0x00003A60
	 { -74, 1, 1324, 0, -1228, 1536, 255, 255, 255, 255 }, // 0x00003A70
	 { 74, 1, 1355, 0, 3432, 662, 178, 178, 178, 255 }, // 0x00003A80
	 { 74, 1, 1324, 0, 3432, -405, 178, 178, 178, 255 }, // 0x00003A90
	 { -74, 1, 1324, 0, -356, -405, 178, 178, 178, 255 }, // 0x00003AA0
	 { -74, 1, 1355, 0, -356, 662, 140, 140, 140, 255 }, // 0x00003AB0
	 { -80, -8, 1360, 0, 3202, 377, 38, 38, 38, 255 }, // 0x00003AC0
	 { -74, 1, 1355, 0, 2626, -226, 38, 38, 38, 255 }, // 0x00003AD0
	 { -74, 1, 1324, 0, 1319, 310, 89, 89, 89, 255 }, // 0x00003AE0
	 { -80, -8, 1324, 0, 1550, 1024, 255, 255, 255, 255 }, // 0x00003AF0
	 { 74, 1, 1324, 0, 161, 339, 89, 89, 89, 255 }, // 0x00003B00
	 { 80, -8, 1324, 0, -60, 1024, 255, 255, 255, 255 }, // 0x00003B10
	 { 80, 20, 1280, 0, 4077, 1024, 114, 114, 114, 255 }, // 0x00003B20
	 { 74, 26, 1286, 0, 3849, 339, 89, 89, 89, 255 }, // 0x00003B30
	 { -74, 26, 1286, 0, -2534, 310, 89, 89, 89, 255 }, // 0x00003B40
	 { -80, 20, 1280, 0, -2772, 1024, 114, 114, 114, 255 }, // 0x00003B50
	 { 74, 1, 1324, 0, 1279, 511, 89, 89, 89, 255 }, // 0x00003B60
	 { 74, 1, 1355, 0, 35, 36, 38, 38, 38, 255 }, // 0x00003B70
	 { 80, -8, 1360, 0, -1024, 1024, 38, 38, 38, 255 }, // 0x00003B80
	 { 80, -8, 1360, 0, -1642, 415, 38, 38, 38, 255 }, // 0x00003B90
};

Vtx_t _tokinoma_room_1_vertices_00003BA0[8] = 
{
	 { -80, -40, 1280, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003BA0
	 { 80, -40, 1280, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003BB0
	 { -80, 26, 1280, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003BC0
	 { 80, 26, 1280, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003BD0
	 { -80, -40, 1360, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003BE0
	 { 80, -40, 1360, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003BF0
	 { -80, 26, 1360, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C00
	 { 80, 26, 1360, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003C10
};

Gfx _tokinoma_room_1_dlist_00003C20[] =
{
	gsDPPipeSync(), // 0x00003C20
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003C28
	gsSPVertex(_tokinoma_room_1_vertices_00003BA0, 8, 0), // 0x00003C30
	gsSPCullDisplayList(0, 7), // 0x00003C38
	gsDPPipeSync(), // 0x00003C40
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003C48
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003C50
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003C58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_000107A0), // 0x00003C60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00003C68
	gsDPLoadSync(), // 0x00003C70
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003C78
	gsDPPipeSync(), // 0x00003C80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 0, 5, 0), // 0x00003C88
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003C90
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003C98
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003CA0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003CA8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003CB0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003CB8
	gsSPVertex(_tokinoma_room_1_vertices_00003880, 4, 0), // 0x00003CC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003CC8
	gsDPPipeSync(), // 0x00003CD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000DFA0), // 0x00003CD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 1, 5, 0), // 0x00003CE0
	gsDPLoadSync(), // 0x00003CE8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003CF0
	gsDPPipeSync(), // 0x00003CF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 1, 5, 0), // 0x00003D00
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003D08
	gsSPVertex(_tokinoma_room_1_vertices_000038C0, 17, 0), // 0x00003D10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003D18
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00003D20
	gsSP2Triangles(7, 9, 10, 0, 3, 11, 12, 0), // 0x00003D28
	gsSP2Triangles(13, 3, 12, 0, 13, 12, 14, 0), // 0x00003D30
	gsSP2Triangles(4, 6, 15, 0, 4, 15, 16, 0), // 0x00003D38
	gsDPPipeSync(), // 0x00003D40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_1_tex_00005858), // 0x00003D48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00003D50
	gsDPLoadSync(), // 0x00003D58
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003D60
	gsDPPipeSync(), // 0x00003D68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 0, 5, 0), // 0x00003D70
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003D78
	gsSPVertex(_tokinoma_room_1_vertices_000039D0, 29, 0), // 0x00003D80
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00003D88
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x00003D90
	gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0), // 0x00003D98
	gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0), // 0x00003DA0
	gsSP2Triangles(18, 15, 17, 0, 19, 20, 21, 0), // 0x00003DA8
	gsSP2Triangles(19, 21, 22, 0, 23, 24, 18, 0), // 0x00003DB0
	gsSP2Triangles(23, 18, 17, 0, 25, 26, 27, 0), // 0x00003DB8
	gsSP1Triangle(19, 28, 20, 0), // 0x00003DC0
	gsSPEndDisplayList(), // 0x00003DC8
};

Vtx_t _tokinoma_room_1_vertices_00003DD0[4] = 
{
	 { 520, 638, 1120, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00003DD0
	 { 520, 638, 2400, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00003DE0
	 { -520, 638, 2400, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00003DF0
	 { -520, 638, 1120, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00003E00
};

Vtx_t _tokinoma_room_1_vertices_00003E10[8] = 
{
	 { -520, 638, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E10
	 { 520, 638, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E20
	 { -520, 638, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E30
	 { 520, 638, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E40
	 { -520, 638, 2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E50
	 { 520, 638, 2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E60
	 { -520, 638, 2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E70
	 { 520, 638, 2400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003E80
};

Gfx _tokinoma_room_1_dlist_00003E90[] =
{
	gsDPPipeSync(), // 0x00003E90
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003E98
	gsSPVertex(_tokinoma_room_1_vertices_00003E10, 8, 0), // 0x00003EA0
	gsSPCullDisplayList(0, 7), // 0x00003EA8
	gsDPPipeSync(), // 0x00003EB0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003EB8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003EC0
	gsSPTexture(0, 0, 0, 0, 0), // 0x00003EC8
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00003ED0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003ED8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003EE0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003EE8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003EF0
	gsSPVertex(_tokinoma_room_1_vertices_00003DD0, 4, 0), // 0x00003EF8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003F00
	gsSPEndDisplayList(), // 0x00003F08
};

Vtx_t _tokinoma_room_1_vertices_00003F10[32] = 
{
	 { -16, 70, 5, 0, -684, -3, 63, 63, 63, 255 }, // 0x00003F10
	 { -7, 71, 5, 0, 349, 132, 89, 89, 89, 255 }, // 0x00003F20
	 { -10, 80, 5, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00003F30
	 { -4, 75, 5, 0, 688, 510, 140, 140, 140, 255 }, // 0x00003F40
	 { -1, 79, 5, 0, 1026, 889, 178, 178, 178, 255 }, // 0x00003F50
	 { 8, 80, 5, 0, 2053, 1024, 255, 255, 255, 255 }, // 0x00003F60
	 { 2, 75, 5, 0, 1365, 510, 140, 140, 140, 255 }, // 0x00003F70
	 { 5, 71, 5, 0, 1704, 132, 89, 89, 89, 255 }, // 0x00003F80
	 { 14, 70, 5, 0, 2737, -3, 63, 63, 63, 255 }, // 0x00003F90
	 { 2, 75, 5, 0, 1365, 510, 51, 51, 51, 255 }, // 0x00003FA0
	 { -1, 79, 5, 0, 1026, 889, 51, 51, 51, 255 }, // 0x00003FB0
	 { -4, 75, 5, 0, 688, 510, 51, 51, 51, 255 }, // 0x00003FC0
	 { -7, 71, 5, 0, 349, 132, 51, 51, 51, 255 }, // 0x00003FD0
	 { -1, 71, 5, 0, 1026, 132, 51, 51, 51, 255 }, // 0x00003FE0
	 { 2, 75, 5, 0, 1365, 510, 153, 153, 153, 255 }, // 0x00003FF0
	 { -4, 75, 5, 0, 688, 510, 153, 153, 153, 255 }, // 0x00004000
	 { 5, 71, 5, 0, 1704, 132, 51, 51, 51, 255 }, // 0x00004010
	 { 17, 40, 270, 0, -857, 1024, 89, 89, 89, 255 }, // 0x00004020
	 { 242, 40, 140, 0, 1365, 1024, 89, 89, 89, 255 }, // 0x00004030
	 { 103, 40, 60, 0, 683, -158, 89, 89, 89, 255 }, // 0x00004040
	 { 27, 40, 104, 0, -69, -158, 89, 89, 89, 255 }, // 0x00004050
	 { -131, 40, 76, 0, -131, 69, 89, 89, 89, 255 }, // 0x00004060
	 { -243, 40, 140, 0, -683, 1024, 89, 89, 89, 255 }, // 0x00004070
	 { -139, 40, 200, 0, 341, 1024, 89, 89, 89, 255 }, // 0x00004080
	 { 0, 20, 280, 0, 7168, -1, 51, 51, 51, 255 }, // 0x00004090
	 { 0, 40, 280, 0, 7168, 1024, 51, 51, 51, 255 }, // 0x000040A0
	 { -243, 40, 140, 0, 0, 1024, 51, 51, 51, 255 }, // 0x000040B0
	 { -243, 20, 140, 0, 0, -1, 51, 51, 51, 255 }, // 0x000040C0
	 { 242, 20, 140, 0, 7168, 0, 51, 51, 51, 255 }, // 0x000040D0
	 { 242, 40, 140, 0, 7168, 1025, 51, 51, 51, 255 }, // 0x000040E0
	 { 0, 40, 280, 0, 0, 1025, 51, 51, 51, 255 }, // 0x000040F0
	 { 0, 20, 280, 0, 0, 0, 51, 51, 51, 255 }, // 0x00004100
};

Vtx_t _tokinoma_room_1_vertices_00004110[32] = 
{
	 { -105, 40, 60, 0, 0, -158, 255, 255, 255, 255 }, // 0x00004110
	 { -131, 40, 76, 0, -131, 69, 255, 255, 255, 255 }, // 0x00004120
	 { -139, 40, 200, 0, 341, 1024, 255, 255, 255, 255 }, // 0x00004130
	 { 0, 40, 280, 0, 1707, 1024, 255, 255, 255, 255 }, // 0x00004140
	 { -1, 40, 120, 0, 1024, -158, 255, 255, 255, 255 }, // 0x00004150
	 { -1, 40, 120, 0, -341, -158, 255, 255, 255, 255 }, // 0x00004160
	 { 0, 40, 280, 0, -1024, 1024, 255, 255, 255, 255 }, // 0x00004170
	 { 17, 40, 270, 0, -857, 1024, 255, 255, 255, 255 }, // 0x00004180
	 { 27, 40, 104, 0, -69, -158, 255, 255, 255, 255 }, // 0x00004190
	 { -243, 20, 140, 0, 237, 7, 89, 89, 89, 255 }, // 0x000041A0
	 { -283, 20, 163, 0, 0, 1024, 89, 89, 89, 255 }, // 0x000041B0
	 { -142, 20, 245, 0, 1669, 1024, 89, 89, 89, 255 }, // 0x000041C0
	 { -139, 20, 200, 0, 1466, 7, 89, 89, 89, 255 }, // 0x000041D0
	 { 14, 20, 318, 0, 221, 1024, 89, 89, 89, 255 }, // 0x000041E0
	 { 282, 20, 163, 0, 4475, 1024, 89, 89, 89, 255 }, // 0x000041F0
	 { 242, 20, 140, 0, 4159, 30, 89, 89, 89, 255 }, // 0x00004200
	 { 17, 20, 270, 0, 587, 30, 89, 89, 89, 255 }, // 0x00004210
	 { 0, 0, 326, 0, 8351, -1, 51, 51, 51, 255 }, // 0x00004220
	 { 0, 20, 326, 0, 8351, 1024, 51, 51, 51, 255 }, // 0x00004230
	 { -283, 20, 163, 0, 0, 1024, 51, 51, 51, 255 }, // 0x00004240
	 { -283, 0, 163, 0, 0, -1, 51, 51, 51, 255 }, // 0x00004250
	 { 282, 0, 163, 0, 8192, 0, 51, 51, 51, 255 }, // 0x00004260
	 { 282, 20, 163, 0, 8192, 1025, 51, 51, 51, 255 }, // 0x00004270
	 { 0, 20, 326, 0, -159, 1025, 51, 51, 51, 255 }, // 0x00004280
	 { 0, 0, 326, 0, -159, 0, 51, 51, 51, 255 }, // 0x00004290
	 { -20, 20, 315, 0, 3110, 1024, 76, 76, 76, 255 }, // 0x000042A0
	 { 0, 20, 326, 0, 3340, 1024, 76, 76, 76, 255 }, // 0x000042B0
	 { 0, 20, 293, 0, 3169, 290, 76, 76, 76, 255 }, // 0x000042C0
	 { 0, 20, 293, 0, 229, 305, 76, 76, 76, 255 }, // 0x000042D0
	 { 0, 20, 326, 0, 0, 1024, 76, 76, 76, 255 }, // 0x000042E0
	 { 14, 20, 318, 0, 221, 1024, 76, 76, 76, 255 }, // 0x000042F0
	 { 16, 20, 274, 0, 560, 101, 76, 76, 76, 255 }, // 0x00004300
};

Vtx_t _tokinoma_room_1_vertices_00004310[32] = 
{
	 { 0, 20, 280, 0, 316, 30, 255, 255, 255, 255 }, // 0x00004310
	 { 0, 20, 293, 0, 229, 305, 255, 255, 255, 255 }, // 0x00004320
	 { 16, 20, 274, 0, 560, 101, 255, 255, 255, 255 }, // 0x00004330
	 { 17, 20, 270, 0, 587, 30, 255, 255, 255, 255 }, // 0x00004340
	 { -139, 20, 200, 0, 1466, 7, 255, 255, 255, 255 }, // 0x00004350
	 { -142, 20, 245, 0, 1669, 1024, 255, 255, 255, 255 }, // 0x00004360
	 { -20, 20, 315, 0, 3110, 1024, 255, 255, 255, 255 }, // 0x00004370
	 { 0, 20, 293, 0, 3169, 290, 255, 255, 255, 255 }, // 0x00004380
	 { 0, 20, 280, 0, 3103, 7, 255, 255, 255, 255 }, // 0x00004390
	 { 103, 40, 60, 0, 4096, 0, 51, 51, 51, 255 }, // 0x000043A0
	 { 103, 70, 60, 0, 4096, 1024, 51, 51, 51, 255 }, // 0x000043B0
	 { -1, 70, 120, 0, 0, 1024, 51, 51, 51, 255 }, // 0x000043C0
	 { -1, 40, 120, 0, 0, 0, 51, 51, 51, 255 }, // 0x000043D0
	 { -1, 40, 120, 0, 4097, 0, 51, 51, 51, 255 }, // 0x000043E0
	 { -1, 70, 120, 0, 4097, 1024, 51, 51, 51, 255 }, // 0x000043F0
	 { -105, 70, 60, 0, 0, 1024, 51, 51, 51, 255 }, // 0x00004400
	 { -105, 40, 60, 0, 0, 0, 51, 51, 51, 255 }, // 0x00004410
	 { 151, 0, 262, 0, 13961, 0, 51, 51, 51, 255 }, // 0x00004420
	 { 151, 10, 262, 0, 13970, 1014, 51, 51, 51, 255 }, // 0x00004430
	 { 0, 10, 349, 0, 0, 1014, 51, 51, 51, 255 }, // 0x00004440
	 { 0, 0, 349, 0, -9, 0, 51, 51, 51, 255 }, // 0x00004450
	 { 0, 0, 349, 0, 13587, 0, 51, 51, 51, 255 }, // 0x00004460
	 { 0, 10, 349, 0, 13596, 1014, 51, 51, 51, 255 }, // 0x00004470
	 { -152, 10, 262, 0, 0, 1014, 51, 51, 51, 255 }, // 0x00004480
	 { -152, 0, 262, 0, -9, 0, 51, 51, 51, 255 }, // 0x00004490
	 { -1, 20, 303, 0, 13587, 0, 51, 51, 51, 255 }, // 0x000044A0
	 { -1, 30, 303, 0, 13596, 1014, 51, 51, 51, 255 }, // 0x000044B0
	 { -132, 30, 227, 0, 0, 1014, 51, 51, 51, 255 }, // 0x000044C0
	 { -132, 20, 227, 0, -9, 0, 51, 51, 51, 255 }, // 0x000044D0
	 { 131, 20, 227, 0, 13587, 0, 51, 51, 51, 255 }, // 0x000044E0
	 { 131, 30, 227, 0, 13596, 1014, 51, 51, 51, 255 }, // 0x000044F0
	 { -1, 30, 303, 0, 0, 1014, 51, 51, 51, 255 }, // 0x00004500
};

Vtx_t _tokinoma_room_1_vertices_00004510[45] = 
{
	 { 131, 20, 227, 0, 13587, 0, 51, 51, 51, 255 }, // 0x00004510
	 { -1, 30, 303, 0, 0, 1014, 51, 51, 51, 255 }, // 0x00004520
	 { -1, 20, 303, 0, -9, 0, 51, 51, 51, 255 }, // 0x00004530
	 { -1, 40, 166, 0, 5095, 0, 51, 51, 51, 255 }, // 0x00004540
	 { -1, 50, 166, 0, 5098, 1014, 51, 51, 51, 255 }, // 0x00004550
	 { -73, 50, 125, 0, 0, 1014, 51, 51, 51, 255 }, // 0x00004560
	 { -73, 40, 125, 0, -3, 0, 51, 51, 51, 255 }, // 0x00004570
	 { 63, 40, 129, 0, 5095, 0, 51, 51, 51, 255 }, // 0x00004580
	 { 63, 50, 129, 0, 5098, 1014, 51, 51, 51, 255 }, // 0x00004590
	 { -1, 50, 166, 0, 0, 1014, 51, 51, 51, 255 }, // 0x000045A0
	 { -1, 40, 166, 0, -3, 0, 51, 51, 51, 255 }, // 0x000045B0
	 { 53, 50, 112, 0, 2039, 507, 51, 51, 51, 255 }, // 0x000045C0
	 { 53, 60, 112, 0, 2039, 1014, 51, 51, 51, 255 }, // 0x000045D0
	 { -1, 60, 143, 0, 0, 1014, 51, 51, 51, 255 }, // 0x000045E0
	 { -1, 50, 143, 0, -1, 507, 51, 51, 51, 255 }, // 0x000045F0
	 { -1, 50, 143, 0, 2039, 507, 51, 51, 51, 255 }, // 0x00004600
	 { -1, 60, 143, 0, 2039, 1014, 51, 51, 51, 255 }, // 0x00004610
	 { -63, 60, 107, 0, 0, 1014, 51, 51, 51, 255 }, // 0x00004620
	 { -63, 50, 107, 0, -1, 507, 51, 51, 51, 255 }, // 0x00004630
	 { 26, 50, 128, 0, -18, 9, 255, 255, 255, 255 }, // 0x00004640
	 { -1, 50, 143, 0, -1019, 13, 255, 255, 255, 255 }, // 0x00004650
	 { -1, 50, 166, 0, -1022, 1016, 255, 255, 255, 255 }, // 0x00004660
	 { 24, 50, 152, 0, -225, 1013, 255, 255, 255, 255 }, // 0x00004670
	 { 27, 60, 104, 0, 283, 8, 255, 255, 255, 255 }, // 0x00004680
	 { -1, 60, 120, 0, -1019, 13, 255, 255, 255, 255 }, // 0x00004690
	 { -1, 60, 143, 0, -1022, 1016, 255, 255, 255, 255 }, // 0x000046A0
	 { 26, 60, 128, 0, -18, 1012, 255, 255, 255, 255 }, // 0x000046B0
	 { -1, 50, 166, 0, 1022, 1008, 255, 255, 255, 255 }, // 0x000046C0
	 { -1, 50, 143, 0, 1025, 5, 255, 255, 255, 255 }, // 0x000046D0
	 { -63, 50, 107, 0, -1019, 13, 255, 255, 255, 255 }, // 0x000046E0
	 { -73, 50, 125, 0, -1022, 1016, 255, 255, 255, 255 }, // 0x000046F0
	 { -1, 60, 143, 0, 1022, 1008, 255, 255, 255, 255 }, // 0x00004700
	 { -1, 60, 120, 0, 1025, 5, 255, 255, 255, 255 }, // 0x00004710
	 { -53, 60, 90, 0, -1019, 13, 255, 255, 255, 255 }, // 0x00004720
	 { -63, 60, 107, 0, -1022, 1016, 255, 255, 255, 255 }, // 0x00004730
	 { 0, 30, 280, 0, 3116, 376, 255, 255, 255, 255 }, // 0x00004740
	 { -122, 30, 210, 0, -1391, 380, 255, 255, 255, 255 }, // 0x00004750
	 { -132, 30, 227, 0, -1391, 1024, 255, 255, 255, 255 }, // 0x00004760
	 { -11, 30, 297, 0, 3090, 1024, 255, 255, 255, 255 }, // 0x00004770
	 { 0, 30, 285, 0, 3191, 513, 255, 255, 255, 255 }, // 0x00004780
	 { -17, 10, 317, 0, 3019, 380, 255, 255, 255, 255 }, // 0x00004790
	 { -142, 10, 245, 0, -1619, 380, 255, 255, 255, 255 }, // 0x000047A0
	 { -142, 10, 245, 0, -1619, 385, 255, 255, 255, 255 }, // 0x000047B0
	 { -143, 10, 267, 0, -1302, 1024, 255, 255, 255, 255 }, // 0x000047C0
	 { -30, 10, 332, 0, 2890, 1024, 255, 255, 255, 255 }, // 0x000047D0
};

Vtx_t _tokinoma_room_1_vertices_000047E0[17] = 
{
	 { 36, 70, -30, 0, 1859, 766, 255, 255, 255, 255 }, // 0x000047E0
	 { -53, 70, -30, 0, 1004, -715, 255, 255, 255, 255 }, // 0x000047F0
	 { -1, 70, 60, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00004800
	 { 34, 70, 0, 0, 1338, 1024, 255, 255, 255, 255 }, // 0x00004810
	 { 37, 70, -57, 0, 1446, 997, 89, 89, 89, 255 }, // 0x00004820
	 { 36, 70, -57, 0, 1430, 1024, 89, 89, 89, 255 }, // 0x00004830
	 { 37, 70, -54, 0, 1487, 1024, 89, 89, 89, 255 }, // 0x00004840
	 { 27, 70, 104, 0, 2579, 1881, 89, 89, 89, 255 }, // 0x00004850
	 { 103, 70, 60, 0, 4064, 1024, 89, 89, 89, 255 }, // 0x00004860
	 { 30, 70, 60, 0, 2634, 1024, 89, 89, 89, 255 }, // 0x00004870
	 { -1, 70, 120, 0, 2032, 2196, 255, 255, 255, 255 }, // 0x00004880
	 { 27, 70, 104, 0, 2579, 1881, 255, 255, 255, 255 }, // 0x00004890
	 { 30, 70, 60, 0, 2634, 1024, 255, 255, 255, 255 }, // 0x000048A0
	 { -105, 70, 60, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000048B0
	 { 51, 70, -30, 0, 2008, 1024, 89, 89, 89, 255 }, // 0x000048C0
	 { 36, 70, -30, 0, 1859, 766, 89, 89, 89, 255 }, // 0x000048D0
	 { 34, 70, 0, 0, 1338, 1024, 89, 89, 89, 255 }, // 0x000048E0
};

Vtx_t _tokinoma_room_1_vertices_000048F0[18] = 
{
	 { 34, 70, 0, 0, 1033, -764, 255, 255, 255, 255 }, // 0x000048F0
	 { -1, 70, 60, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00004900
	 { 30, 70, 60, 0, 919, 1024, 255, 255, 255, 255 }, // 0x00004910
	 { 37, 70, -54, 0, 546, 1024, 255, 255, 255, 255 }, // 0x00004920
	 { 36, 70, -57, 0, 603, 1024, 255, 255, 255, 255 }, // 0x00004930
	 { -37, 70, -58, 0, 1334, -202, 255, 255, 255, 255 }, // 0x00004940
	 { -53, 70, -30, 0, 1021, -744, 255, 255, 255, 255 }, // 0x00004950
	 { 36, 70, -30, 0, 151, 762, 255, 255, 255, 255 }, // 0x00004960
	 { 51, 70, -30, 0, 0, 1024, 89, 89, 89, 255 }, // 0x00004970
	 { 37, 70, -54, 0, 546, 1024, 89, 89, 89, 255 }, // 0x00004980
	 { 36, 70, -30, 0, 151, 762, 89, 89, 89, 255 }, // 0x00004990
	 { -53, 70, -30, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000049A0
	 { -105, 70, 60, 0, 3116, 1024, 255, 255, 255, 255 }, // 0x000049B0
	 { -1, 70, 60, 0, 1557, -1674, 255, 255, 255, 255 }, // 0x000049C0
	 { 103, 70, 60, 0, 3099, 1024, 89, 89, 89, 255 }, // 0x000049D0
	 { 51, 70, -30, 0, 1551, -1660, 89, 89, 89, 255 }, // 0x000049E0
	 { 34, 70, 0, 0, 1033, -764, 89, 89, 89, 255 }, // 0x000049F0
	 { 30, 70, 60, 0, 919, 1024, 89, 89, 89, 255 }, // 0x00004A00
};

Vtx_t _tokinoma_room_1_vertices_00004A10[8] = 
{
	 { 119, 0, 720, 0, 2850, 1024, 76, 76, 76, 255 }, // 0x00004A10
	 { 353, 0, -232, 0, 5844, -11162, 114, 114, 114, 255 }, // 0x00004A20
	 { -354, 0, -232, 0, -3197, -11161, 114, 114, 114, 255 }, // 0x00004A30
	 { -130, 0, 720, 0, -327, 1024, 76, 76, 76, 255 }, // 0x00004A40
	 { -142, 4, 245, 0, -484, -5061, 255, 255, 255, 255 }, // 0x00004A50
	 { -144, 4, 286, 0, -517, -4535, 255, 255, 255, 255 }, // 0x00004A60
	 { -71, 4, 384, 0, 428, -3275, 255, 255, 255, 255 }, // 0x00004A70
	 { -13, 4, 319, 0, 1163, -4114, 255, 255, 255, 255 }, // 0x00004A80
};

Vtx_t _tokinoma_room_1_vertices_00004A90[10] = 
{
	 { -354, 530, -232, 0, -1552, -4739, 51, 51, 51, 255 }, // 0x00004A90
	 { -354, 0, -232, 0, -1552, 2048, 51, 51, 51, 255 }, // 0x00004AA0
	 { 353, 0, -232, 0, 3044, 2048, 51, 51, 51, 255 }, // 0x00004AB0
	 { 353, 530, -232, 0, 3044, -4739, 51, 51, 51, 255 }, // 0x00004AC0
	 { 353, 530, -232, 0, 3044, -6144, 51, 51, 51, 255 }, // 0x00004AD0
	 { 119, 0, 720, 0, 3902, 2048, 51, 51, 51, 255 }, // 0x00004AE0
	 { 119, 200, 720, 0, 3902, -1038, 51, 51, 51, 255 }, // 0x00004AF0
	 { -354, 530, -232, 0, -1552, -6144, 51, 51, 51, 255 }, // 0x00004B00
	 { -130, 200, 720, 0, -2410, -1038, 51, 51, 51, 255 }, // 0x00004B10
	 { -130, 0, 720, 0, -2410, 2048, 51, 51, 51, 255 }, // 0x00004B20
};

Vtx_t _tokinoma_room_1_vertices_00004B30[8] = 
{
	 { -354, 0, -232, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B30
	 { 353, 0, -232, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B40
	 { -354, 530, -232, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B50
	 { 353, 530, -232, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B60
	 { -354, 0, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B70
	 { 353, 0, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B80
	 { -354, 530, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B90
	 { 353, 530, 720, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BA0
};

Gfx _tokinoma_room_1_dlist_00004BB0[] =
{
	gsDPPipeSync(), // 0x00004BB0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004BB8
	gsSPVertex(_tokinoma_room_1_vertices_00004B30, 8, 0), // 0x00004BC0
	gsSPCullDisplayList(0, 7), // 0x00004BC8
	gsDPPipeSync(), // 0x00004BD0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004BD8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004BE0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004BE8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_000117A0), // 0x00004BF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00004BF8
	gsDPLoadSync(), // 0x00004C00
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004C08
	gsDPPipeSync(), // 0x00004C10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 0, 5, 0), // 0x00004C18
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004C20
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004C28
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004C30
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004C38
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004C40
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004C48
	gsSPVertex(_tokinoma_room_1_vertices_00003F10, 32, 0), // 0x00004C50
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004C58
	gsSP2Triangles(3, 4, 2, 0, 2, 4, 5, 0), // 0x00004C60
	gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0), // 0x00004C68
	gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0), // 0x00004C70
	gsSP2Triangles(12, 13, 11, 0, 13, 14, 15, 0), // 0x00004C78
	gsSP2Triangles(13, 16, 9, 0, 8, 7, 1, 0), // 0x00004C80
	gsSP2Triangles(8, 1, 0, 0, 17, 18, 19, 0), // 0x00004C88
	gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0), // 0x00004C90
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00004C98
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00004CA0
	gsSPVertex(_tokinoma_room_1_vertices_00004110, 32, 0), // 0x00004CA8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004CB0
	gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0), // 0x00004CB8
	gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0), // 0x00004CC0
	gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0), // 0x00004CC8
	gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0), // 0x00004CD0
	gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0), // 0x00004CD8
	gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0), // 0x00004CE0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00004CE8
	gsSPVertex(_tokinoma_room_1_vertices_00004310, 32, 0), // 0x00004CF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004CF8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004D00
	gsSP2Triangles(4, 7, 8, 0, 9, 10, 11, 0), // 0x00004D08
	gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0), // 0x00004D10
	gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0), // 0x00004D18
	gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0), // 0x00004D20
	gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0), // 0x00004D28
	gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0), // 0x00004D30
	gsSPVertex(_tokinoma_room_1_vertices_00004510, 32, 0), // 0x00004D38
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004D40
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0), // 0x00004D48
	gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0), // 0x00004D50
	gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0), // 0x00004D58
	gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0), // 0x00004D60
	gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0), // 0x00004D68
	gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0), // 0x00004D70
	gsSP1Triangle(27, 29, 30, 0), // 0x00004D78
	gsSPVertex(_tokinoma_room_1_vertices_00004700, 14, 0), // 0x00004D80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004D88
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004D90
	gsSP2Triangles(4, 7, 8, 0, 9, 10, 11, 0), // 0x00004D98
	gsSP2Triangles(9, 11, 12, 0, 9, 12, 13, 0), // 0x00004DA0
	gsDPPipeSync(), // 0x00004DA8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_00010FA0), // 0x00004DB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004DB8
	gsDPLoadSync(), // 0x00004DC0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004DC8
	gsDPPipeSync(), // 0x00004DD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004DD8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004DE0
	gsSPVertex(_tokinoma_room_1_vertices_000047E0, 17, 0), // 0x00004DE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004DF0
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00004DF8
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00004E00
	gsSP1Triangle(14, 15, 16, 0), // 0x00004E08
	gsDPPipeSync(), // 0x00004E10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_000107A0), // 0x00004E18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 0, 5, 0), // 0x00004E20
	gsDPLoadSync(), // 0x00004E28
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004E30
	gsDPPipeSync(), // 0x00004E38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 0, 5, 0), // 0x00004E40
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004E48
	gsSPVertex(_tokinoma_room_1_vertices_000048F0, 18, 0), // 0x00004E50
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004E58
	gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0), // 0x00004E60
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0), // 0x00004E68
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x00004E70
	gsDPPipeSync(), // 0x00004E78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000FFA0), // 0x00004E80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00004E88
	gsDPLoadSync(), // 0x00004E90
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00004E98
	gsDPPipeSync(), // 0x00004EA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00004EA8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00004EB0
	gsSPVertex(_tokinoma_room_1_vertices_00004A10, 8, 0), // 0x00004EB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004EC0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004EC8
	gsDPPipeSync(), // 0x00004ED0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_0000DFA0), // 0x00004ED8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 1, 5, 0), // 0x00004EE0
	gsDPLoadSync(), // 0x00004EE8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004EF0
	gsDPPipeSync(), // 0x00004EF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 1, 5, 0), // 0x00004F00
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004F08
	gsSPVertex(_tokinoma_room_1_vertices_00004A90, 10, 0), // 0x00004F10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004F18
	gsSP2Triangles(4, 2, 5, 0, 4, 5, 6, 0), // 0x00004F20
	gsSP2Triangles(7, 8, 9, 0, 7, 9, 1, 0), // 0x00004F28
	gsSPEndDisplayList(), // 0x00004F30
};

Vtx_t _tokinoma_room_1_vertices_00004F38[27] = 
{
	 { -30, 293, 1120, 0, 206, 517, 255, 255, 255, 255 }, // 0x00004F38
	 { -60, 243, 1120, 0, 1235, 517, 255, 255, 255, 255 }, // 0x00004F48
	 { -30, 260, 1120, 0, 718, 5, 255, 255, 255, 255 }, // 0x00004F58
	 { -30, 293, 1120, 0, 510, 515, 255, 255, 255, 255 }, // 0x00004F68
	 { -30, 260, 1120, 0, 1022, 3, 255, 255, 255, 255 }, // 0x00004F78
	 { 0, 243, 1120, 0, 1529, 515, 255, 255, 255, 255 }, // 0x00004F88
	 { 60, 243, 1120, 0, 0, 512, 255, 255, 255, 255 }, // 0x00004F98
	 { 30, 260, 1120, 0, 512, 0, 255, 255, 255, 255 }, // 0x00004FA8
	 { 0, 243, 1120, 0, 1029, 512, 255, 255, 255, 255 }, // 0x00004FB8
	 { 30, 293, 1120, 0, 510, 515, 255, 255, 255, 255 }, // 0x00004FC8
	 { 30, 260, 1120, 0, 1022, 3, 255, 255, 255, 255 }, // 0x00004FD8
	 { 60, 243, 1120, 0, 1529, 515, 255, 255, 255, 255 }, // 0x00004FE8
	 { 30, 293, 1120, 0, 206, 517, 255, 255, 255, 255 }, // 0x00004FF8
	 { 0, 243, 1120, 0, 1235, 517, 255, 255, 255, 255 }, // 0x00005008
	 { 30, 260, 1120, 0, 718, 5, 255, 255, 255, 255 }, // 0x00005018
	 { 0, 343, 1120, 0, 206, 517, 255, 255, 255, 255 }, // 0x00005028
	 { -30, 293, 1120, 0, 1235, 517, 255, 255, 255, 255 }, // 0x00005038
	 { 0, 310, 1120, 0, 718, 5, 255, 255, 255, 255 }, // 0x00005048
	 { 0, 343, 1120, 0, 510, 515, 255, 255, 255, 255 }, // 0x00005058
	 { 0, 310, 1120, 0, 1022, 3, 255, 255, 255, 255 }, // 0x00005068
	 { 30, 293, 1120, 0, 1529, 515, 255, 255, 255, 255 }, // 0x00005078
	 { 30, 293, 1120, 0, 0, 512, 255, 255, 255, 255 }, // 0x00005088
	 { 0, 310, 1120, 0, 512, 0, 255, 255, 255, 255 }, // 0x00005098
	 { -30, 293, 1120, 0, 1029, 512, 255, 255, 255, 255 }, // 0x000050A8
	 { 0, 243, 1120, 0, 0, 512, 255, 255, 255, 255 }, // 0x000050B8
	 { -30, 260, 1120, 0, 512, 0, 255, 255, 255, 255 }, // 0x000050C8
	 { -60, 243, 1120, 0, 1029, 512, 255, 255, 255, 255 }, // 0x000050D8
};

Vtx_t _tokinoma_room_1_vertices_000050E8[8] = 
{
	 { -60, 243, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050E8
	 { 60, 243, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050F8
	 { -60, 343, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005108
	 { 60, 343, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005118
	 { -60, 243, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005128
	 { 60, 243, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005138
	 { -60, 343, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005148
	 { 60, 343, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005158
};

Gfx _tokinoma_room_1_dlist_00005168[] =
{
	gsDPPipeSync(), // 0x00005168
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005170
	gsSPVertex(_tokinoma_room_1_vertices_000050E8, 8, 0), // 0x00005178
	gsSPCullDisplayList(0, 7), // 0x00005180
	gsDPPipeSync(), // 0x00005188
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005190
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005198
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000051A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_1_tex_00005658), // 0x000051A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x000051B0
	gsDPLoadSync(), // 0x000051B8
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x000051C0
	gsDPPipeSync(), // 0x000051C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x000051D0
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x000051D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_room_1_tex_00005458), // 0x000051E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 1, 4, 0, 1, 4, 0), // 0x000051E8
	gsDPLoadSync(), // 0x000051F0
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x000051F8
	gsDPPipeSync(), // 0x00005200
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 256, 1, 0, 1, 4, 0, 1, 4, 0), // 0x00005208
	gsDPSetTileSize(1, 0, 0, 60, 60), // 0x00005210
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005218
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005220
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005228
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005230
	gsSPDisplayList(0x0D000000), // 0x00005238
	gsSPVertex(_tokinoma_room_1_vertices_00004F38, 27, 0), // 0x00005240
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00005248
	gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0), // 0x00005250
	gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0), // 0x00005258
	gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0), // 0x00005260
	gsSP1Triangle(24, 25, 26, 0), // 0x00005268
	gsSPEndDisplayList(), // 0x00005270
};

Vtx_t _tokinoma_room_1_vertices_00005278[3] = 
{
	 { -30, 293, 1120, 0, 1024, 1024, 255, 255, 255, 255 }, // 0x00005278
	 { 0, 243, 1120, 0, 512, 171, 255, 255, 255, 255 }, // 0x00005288
	 { 30, 293, 1120, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00005298
};

Vtx_t _tokinoma_room_1_vertices_000052A8[8] = 
{
	 { -30, 243, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000052A8
	 { 30, 243, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000052B8
	 { -30, 293, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000052C8
	 { 30, 293, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000052D8
	 { -30, 243, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000052E8
	 { 30, 243, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x000052F8
	 { -30, 293, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005308
	 { 30, 293, 1120, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005318
};

Gfx _tokinoma_room_1_dlist_00005328[] =
{
	gsDPPipeSync(), // 0x00005328
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005330
	gsSPVertex(_tokinoma_room_1_vertices_000052A8, 8, 0), // 0x00005338
	gsSPCullDisplayList(0, 7), // 0x00005340
	gsDPPipeSync(), // 0x00005348
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005350
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005358
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005360
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _tokinoma_scene_tex_00010FA0), // 0x00005368
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005370
	gsDPLoadSync(), // 0x00005378
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005380
	gsDPPipeSync(), // 0x00005388
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005390
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005398
	gsDPSetCombineLERP(TEXEL0, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x000053A0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000053A8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000053B0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000053B8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000053C0
	gsSPVertex(_tokinoma_room_1_vertices_00005278, 3, 0), // 0x000053C8
	gsSP1Triangle(0, 1, 2, 0), // 0x000053D0
	gsSPEndDisplayList(), // 0x000053D8
};

Gfx _tokinoma_room_1_dlist_000053E0[] =
{
	gsSPDisplayList(_tokinoma_room_1_dlist_00000AF0), // 0x000053E0
	gsSPDisplayList(_tokinoma_room_1_dlist_00000D88), // 0x000053E8
	gsSPDisplayList(_tokinoma_room_1_dlist_000010E0), // 0x000053F0
	gsSPDisplayList(_tokinoma_room_1_dlist_00001450), // 0x000053F8
	gsSPDisplayList(_tokinoma_room_1_dlist_00001840), // 0x00005400
	gsSPDisplayList(_tokinoma_room_1_dlist_000021D8), // 0x00005408
	gsSPDisplayList(_tokinoma_room_1_dlist_00002A58), // 0x00005410
	gsSPDisplayList(_tokinoma_room_1_dlist_00003220), // 0x00005418
	gsSPDisplayList(_tokinoma_room_1_dlist_00003728), // 0x00005420
	gsSPDisplayList(_tokinoma_room_1_dlist_00003C20), // 0x00005428
	gsSPDisplayList(_tokinoma_room_1_dlist_00003E90), // 0x00005430
	gsSPDisplayList(_tokinoma_room_1_dlist_00004BB0), // 0x00005438
	gsSPDisplayList(_tokinoma_room_1_dlist_00005168), // 0x00005440
	gsSPDisplayList(_tokinoma_room_1_dlist_00005328), // 0x00005448
	gsSPEndDisplayList(), // 0x00005450
};

u64 _tokinoma_room_1_tex_00005458[] = 
{
	0xFFADFFAFFFAFFFAD, 0xFFABFF69FF65FF63, 0xFF5FFF1DFF1BFF19, 0xFF19FF17FF15FF15,  // 0x00005458 
	0xFFADFFADFFADFFAD, 0xFFABFF67FF65FF61, 0xFF5FFF1DFF1BFF19, 0xFF19FF17FF17FF15,  // 0x00005478 
	0xFF69FFABFFABFFAB, 0xFF69FF65FF63FF5F, 0xFF1DFF1BFF19FF19, 0xFF17FF17FF15FF15,  // 0x00005498 
	0xFF67FF67FF67FF67, 0xFF65FF63FF5FFF1D, 0xFF1BFF19FF17FF17, 0xFF15FF15FF13FED3,  // 0x000054B8 
	0xFF61FF63FF63FF63, 0xFF61FF1FFF1BFF19, 0xFF17FF15FF15FF13, 0xFED3FED3FED1FED1,  // 0x000054D8 
	0xFF1BFF1DFF1DFF1D, 0xFF1BFF19FF17FED5, 0xFF13FED3FED1FED1, 0xFECFFECFFECFFECF,  // 0x000054F8 
	0xFF17FF17FF17FF17, 0xFF15FF15FED3FED1, 0xFED1FECFFECFFECD, 0xFECDFECDFECDFECD,  // 0x00005518 
	0xFED1FED1FED1FED1, 0xFED1FECFFECFFECD, 0xFECDFECDFECBFECB, 0xFECBFECBFECBFECB,  // 0x00005538 
	0xFECDFECDFECFFECF, 0xFECDFECDFECBFECB, 0xFECBFECBFE8BFECB, 0xFEC9FEC9FEC9FEC9,  // 0x00005558 
	0xFECBFECBFECDFECD, 0xFECDFECBFECBFECB, 0xFE8BFECBFE8BFEC9, 0xFEC9FEC9FEC9FEC9,  // 0x00005578 
	0xFE89FE8BFE8BFECB, 0xFECBFEC9FE89FEC9, 0xFEC9FEC9FEC9FEC9, 0xFEC9FE89FEC9FE87,  // 0x00005598 
	0xFE89FE89FE89FECB, 0xFEC9FEC9FE89FEC9, 0xFEC9FEC9FEC9FEC9, 0xFEC9FE89FEC9FE87,  // 0x000055B8 
	0xF76BF76BF727F727, 0xF727F725F725F721, 0xF721F6DBF6DBF6DB, 0xF6DBF6DBF6DBF6DB,  // 0x000055D8 
	0x9403940394039C03, 0xA443AC85ACC5B505, 0xB505B505BD47BD47, 0xBD45BD05BD05BD05,  // 0x000055F8 
	0x7B017B017B018341, 0x83818BC194019C01, 0xA441A441A481A481, 0xA481A441A441A441,  // 0x00005618 
	0x6A816A816AC172C1, 0x7B0183418B818BC1, 0x93C19C01A441A441, 0x9C4193C193C193C1,  // 0x00005638 
};

u64 _tokinoma_room_1_tex_00005658[] = 
{
	0x18C7214B210718C5, 0x294918C718C52109, 0x210718C7108518C7, 0x1909210918C718C7,  // 0x00005658 
	0x18C531CF294B318D, 0x18C718C7318D2109, 0x18C72107210718C7, 0x18C718C718C72949,  // 0x00005678 
	0x19091907294B1907, 0x18C52109190718C7, 0x18C92109298D2107, 0x18C7210918C739CF,  // 0x00005698 
	0x190918C7318D18C7, 0x18C71907294B2109, 0x18C718C718C72107, 0x18C918C518C5318D,  // 0x000056B8 
	0x18C718C7190718C7, 0x18C518C5318B214B, 0x1085108518C52109, 0x190918C7210718C7,  // 0x000056D8 
	0x18C518C718C71909, 0x18C718C7294918C7, 0x210918C518C72109, 0x18C72109318D18C7,  // 0x000056F8 
	0x1909108718C7214B, 0x18C7294B3A1118C5, 0x18C5294918C718C5, 0x210931CD294B294B,  // 0x00005718 
	0x214B18C729491907, 0x18C518C7318D1909, 0x18C71085210720C7, 0x2149294B318D31CF,  // 0x00005738 
	0x214918C718C718C7, 0x18C72107298D2107, 0x190718C72107318B, 0x210931CD210918C7,  // 0x00005758 
	0x18C7294B18C718C7, 0x18C718C718C718C7, 0x2149214B18C52109, 0x21092109294B18C7,  // 0x00005778 
	0x210718C710C72107, 0x294918C718C718C7, 0x2107294B108518C5, 0x2107210918C72109,  // 0x00005798 
	0x2107190510C718C5, 0x294B294B18C72109, 0x210718C518C718C7, 0x2109214B18C52109,  // 0x000057B8 
	0x18C518C7318D294B, 0x210918C5210918C7, 0x318B210918C51085, 0x21072109108518C7,  // 0x000057D8 
	0x294918C721092107, 0x18C71909214B18C7, 0x2109210718C710C5, 0x210918C710C71909,  // 0x000057F8 
	0x210918C718C52107, 0x210518C718C718C7, 0x2109210721092109, 0x18C518C7210918C7,  // 0x00005818 
	0x18C718C7318D2109, 0x21092107210718C7, 0x210918C718C7318B, 0x2109318B39CD18C7,  // 0x00005838 
};

u64 _tokinoma_room_1_tex_00005858[] = 
{
	0x318D318D318D31CF, 0x31CD2109318D294B, 0x2109210929492949, 0xD6B329492947318D,  // 0x00005858 
	0x41CD29492949294B, 0x0001000152953A11, 0x294B29452949294B, 0x52D739CD314931CD,  // 0x00005878 
	0x4A514A53294939CD, 0x4A51298B31492109, 0x2109420F6B5939CD, 0xBDEF631921099461,  // 0x00005898 
	0x39CD39CD39CD31CF, 0x108521095B172109, 0x298D31CD318D2107, 0x29492907294931CD,  // 0x000058B8 
	0x8C1F39CD210939CD, 0x31CD318B5293318D, 0x31CF31CD2109318D, 0xAD6B29494A535AD5,  // 0x000058D8 
	0x4A5129494A515AD5, 0x00013A11420F294B, 0x3A1321092947298B, 0x2109210921072109,  // 0x000058F8 
	0x398B31CD29494A51, 0x294B29477B9B5293, 0x5AD5294921092109, 0x52D7ADEF2109298B,  // 0x00005918 
	0x3A115AD53A110001, 0x210952D729452109, 0x631939CD29494211, 0x318D294B39CD39CD,  // 0x00005938 
	0x3A0F425129472107, 0x2109318B631752D5, 0x4A512947210931CF, 0x4253BDEF9461318D,  // 0x00005958 
	0x5AD5318D19098421, 0x39CD5295210939CF, 0x6B595AD55295635B, 0x529339CF31496B59,  // 0x00005978 
	0x31CF39CD29472109, 0x21075AD742514253, 0x298B21092109318B, 0x42114A5384212109,  // 0x00005998 
	0x21092109846339CD, 0x52932109298B298B, 0x298B31CD420F4A95, 0x421139CD31CD39CD,  // 0x000059B8 
	0x529363174211294B, 0x2109531939CF3A11, 0x3A11294B29492949, 0x294B294721098421,  // 0x000059D8 
	0x4A53842152532907, 0x21092949318B294B, 0x298B29492949318D, 0x318D290929092109,  // 0x000059F8 
	0x39CD63193A1131CF, 0x294B298F31CF2949, 0x210921074253294B, 0x21494211314939CD,  // 0x00005A18 
	0x21494A53420F2109, 0x2949739D4A512109, 0x318D210929472949, 0x6B594A51318B420D,  // 0x00005A38 
	0x2109318D31CF2949, 0x2149298D21092109, 0x294721094211420F, 0x4A115AD5318D318B,  // 0x00005A58 
	0x318D39CF21092109, 0x420F5B1721492109, 0x2949294939CF2109, 0x298B6B5B7BDB6B59,  // 0x00005A78 
	0x2109294B39CD39CD, 0x318D39CF29472109, 0x210921092149294B, 0x420F2947294B31CD,  // 0x00005A98 
	0x29492109214B2949, 0x5B193A1129452109, 0x294542116B9D41CD, 0x29493A11398B294B,  // 0x00005AB8 
	0x2109294B31CF31CF, 0x21094A5131CD2109, 0x2109210921092947, 0x5293318D294941CF,  // 0x00005AD8 
	0x2109294931CD294B, 0x210929092109294B, 0x3A114A95318D294B, 0x318B298D29472109,  // 0x00005AF8 
	0x21093A113A11318D, 0x2149425331CD2109, 0x2109318B398D5293, 0x294721092109318B,  // 0x00005B18 
	0x421142115293420F, 0x4211294921072949, 0x210931CF31CF298B, 0x2949294929492109,  // 0x00005B38 
	0x294B31CD29494A53, 0x2949739B635B31CF, 0x294939CD2947294B, 0x214B2109210939CD,  // 0x00005B58 
	0x4A5139CD31CF4251, 0x398B294939CD2109, 0x210931CF21072109, 0x420F294921092947,  // 0x00005B78 
	0x3A13420F2907318B, 0x2109318D52D94253, 0x318B318D29491145, 0x214B2109294B2109,  // 0x00005B98 
	0x2109210921094A51, 0x318B2949294939CF, 0x4A95420D4A51318B, 0x318B318B20C72109,  // 0x00005BB8 
	0x2949318D21072949, 0x2109298D3A55318D, 0x210921092109294B, 0x42516317421131CD,  // 0x00005BD8 
	0x31CF294929492149, 0x29492109294B31CF, 0x52D72909421139CD, 0x318D2109318B420F,  // 0x00005BF8 
	0x39CD3A11298B4211, 0x2949210921092109, 0x420F420F2107294B, 0x3A0F39CD2109420F,  // 0x00005C18 
	0x318B294B3A112109, 0x318D294929495B19, 0x425329497B9B4211, 0x294B1947318B398B,  // 0x00005C38 
	0x2949294B31CF4253, 0x39CD210929492109, 0x314B5293294B2109, 0x2109294929494A51,  // 0x00005C58 
	0x31492947318D2909, 0x210921092109318D, 0x294B21093A11294B, 0x2149210921093149,  // 0x00005C78 
	0x210919073A116B9D, 0x318D294B635B4211, 0x2109314921092109, 0x420F6B5939CD2907,  // 0x00005C98 
	0x2109318B210939CD, 0x318D294B21092109, 0x294B21092109298D, 0x2109318B39CD41CD,  // 0x00005CB8 
	0x298D2109318D294B, 0x39CF4253298D2947, 0x21092949318D31CF, 0x31CD2109318D2107,  // 0x00005CD8 
	0x21093A112109318D, 0x42534A53318D2909, 0x2107318D294B3A13, 0x294929494A51739B,  // 0x00005CF8 
	0x29D1214B21092109, 0x52934A9521092109, 0x318B2109298B298B, 0x31CF42513A112109,  // 0x00005D18 
	0x2109294B21092109, 0x318B294B294531CF, 0x294B294B21092109, 0x29452109318B739D,  // 0x00005D38 
	0x318D214921092949, 0x318D294B21092149, 0x2947290929492109, 0x2949739B39CF298D,  // 0x00005D58 
	0x2109210921092109, 0x2109210921093A13, 0x31CF2109214B2949, 0x39CD29492149294B,  // 0x00005D78 
	0x2109210921092949, 0x294B2109298B31CF, 0x2109210921092909, 0x420F4A5129492109,  // 0x00005D98 
	0x318D39CD21092109, 0x2109294B39CF294B, 0x298B21094253294B, 0x421152D721492109,  // 0x00005DB8 
	0x298B298D21092109, 0x2109294939CF4253, 0x2109318B29494251, 0x84214251298B2945,  // 0x00005DD8 
	0x2107318B318B5293, 0x2947210921092949, 0x294B298B73DF3A0F, 0x318B5B19421139CD,  // 0x00005DF8 
	0x39CF3A11318B2109, 0x41CF4A1131492149, 0x214929492109294B, 0x4A954A95318D214B,  // 0x00005E18 
	0x318D290921092109, 0x210739CF318B2949, 0x318D425331CF4251, 0x4A93425352D74A95,  // 0x00005E38 
	0x4251298B21092109, 0x314B2907318B2949, 0x2109318D29492949, 0x5B1939CD294B318D,  // 0x00005E58 
	0x318B294B294B2109, 0x2949420F420F5295, 0x31CF318D3A0F739B, 0x318D214921492149,  // 0x00005E78 
	0x2109318B398D5293, 0x294721092109318B, 0x2909210921092109, 0x318D294B210939CF,  // 0x00005E98 
	0x294942534253298D, 0x2109294921073A11, 0x318D294B318B4A11, 0x210952D729492109,  // 0x00005EB8 
	0x294939CD2947294B, 0x214B2109210939CD, 0x4A51318D294B2109, 0x2109294B21092109,  // 0x00005ED8 
	0x294929495B192949, 0x2109210921092947, 0x290939CD4211294B, 0x2109318D318D31CF,  // 0x00005EF8 
	0x318B318D29491145, 0x214B2109294B2109, 0x21095B194A53318D, 0x29092107318D294B,  // 0x00005F18 
	0x31CD294B21092909, 0x2109294B21092109, 0x3149420F4211318D, 0x2949210921494253,  // 0x00005F38 
	0x210921092109294B, 0x42516317421131CD, 0x3A11318B21092945, 0x31CF294B294B2109,  // 0x00005F58 
	0x5293420F42112949, 0x2107294921092109, 0x294731CD4A512109, 0x210921092109318D,  // 0x00005F78 
	0x420F420F2107294B, 0x3A0F39CD2109420F, 0x298D210921093213, 0x3A1331CF2109214B,  // 0x00005F98 
	0x21094251398B2949, 0x39CD210921092109, 0x21093A0F28C72109, 0x2109214B210931CF,  // 0x00005FB8 
	0x21095293294B2109, 0x2109294929494A51, 0x294529492109214B, 0x2149210939CD2109,  // 0x00005FD8 
	0x21094A51318B2949, 0x294939CF4A952109, 0x2109294B29472109, 0x39CD420F21092909,  // 0x00005FF8 
	0x2109314921092109, 0x420F6B5939CD2907, 0x294B3A0F39CD2109, 0x420F318B294B2109,  // 0x00006018 
	0x214B421129492109, 0x294B31CF29497B9B, 0x2109298B31CD4A53, 0x8421318B21093A11,  // 0x00006038 
};

static u8 unaccounted6058[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx_t _tokinoma_room_1_vertices_00006060[8] = 
{
	 { 16, 0, 286, 0, 199, 137, 255, 255, 151, 255 }, // 0x00006060
	 { 41, 530, -85, 0, 880, 87, 255, 255, 151, 255 }, // 0x00006070
	 { -51, 530, 18, 0, 694, 1024, 255, 255, 151, 255 }, // 0x00006080
	 { -71, 0, 384, 0, 22, 1024, 255, 255, 151, 255 }, // 0x00006090
	 { -71, 0, 384, 0, 22, 1024, 255, 255, 151, 255 }, // 0x000060A0
	 { -51, 530, 18, 0, 694, 1024, 255, 255, 151, 255 }, // 0x000060B0
	 { -130, 530, -85, 0, 879, 94, 255, 255, 151, 255 }, // 0x000060C0
	 { -144, 0, 286, 0, 198, 149, 255, 255, 151, 255 }, // 0x000060D0
};

Vtx_t _tokinoma_room_1_vertices_000060E0[8] = 
{
	 { -144, -48, 327, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060E0
	 { 41, -48, 327, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060F0
	 { -144, 494, -128, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006100
	 { 41, 494, -128, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006110
	 { -144, 39, 431, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006120
	 { 41, 39, 431, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006130
	 { -144, 581, -24, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006140
	 { 41, 581, -24, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006150
};

Gfx _tokinoma_room_1_dlist_00006160[] =
{
	gsDPPipeSync(), // 0x00006160
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006168
	gsSPVertex(_tokinoma_room_1_vertices_000060E0, 8, 0), // 0x00006170
	gsSPCullDisplayList(0, 7), // 0x00006178
	gsDPPipeSync(), // 0x00006180
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006188
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006190
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006198
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _tokinoma_room_1_tex_000068C8), // 0x000061A0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 2, 6, 0), // 0x000061A8
	gsDPLoadSync(), // 0x000061B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000061B8
	gsDPPipeSync(), // 0x000061C0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0, 0, 0, 1, 5, 0, 2, 6, 0), // 0x000061C8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000061D0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, SHADE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, COMBINED, 0, PRIMITIVE, 0), // 0x000061D8
	gsSPSetOtherMode(0xE2, 3, 29, 0x0C1849D8), // 0x000061E0
	gsSPGeometryMode(0xFF0F0000, 0x00000000), // 0x000061E8
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x000061F0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 127), // 0x000061F8
	gsSPVertex(_tokinoma_room_1_vertices_00006060, 8, 0), // 0x00006200
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006208
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006210
	gsSPEndDisplayList(), // 0x00006218
};

Vtx_t _tokinoma_room_1_vertices_00006220[8] = 
{
	 { 46, 4, 1323, 0, 4676, 512, 255, 255, 255, 255 }, // 0x00006220
	 { 46, 9, 1315, 0, 4676, 0, 255, 255, 255, 255 }, // 0x00006230
	 { -46, 9, 1315, 0, 580, 0, 255, 255, 255, 255 }, // 0x00006240
	 { -46, 4, 1323, 0, 580, 512, 255, 255, 255, 255 }, // 0x00006250
	 { 39, 19, 1299, 0, 4096, 512, 255, 255, 255, 255 }, // 0x00006260
	 { 39, 23, 1293, 0, 4096, 0, 255, 255, 255, 255 }, // 0x00006270
	 { -38, 23, 1293, 0, 0, 0, 255, 255, 255, 255 }, // 0x00006280
	 { -38, 19, 1299, 0, 0, 512, 255, 255, 255, 255 }, // 0x00006290
};

Vtx_t _tokinoma_room_1_vertices_000062A0[4] = 
{
	 { 27, 11, 1312, 0, 2122, 256, 255, 255, 255, 255 }, // 0x000062A0
	 { 27, 18, 1302, 0, 2122, -594, 255, 255, 255, 255 }, // 0x000062B0
	 { -28, 18, 1302, 0, 340, -594, 255, 255, 255, 255 }, // 0x000062C0
	 { -28, 11, 1312, 0, 340, 256, 255, 255, 255, 255 }, // 0x000062D0
};

Vtx_t _tokinoma_room_1_vertices_000062E0[8] = 
{
	 { -46, 4, 1323, 0, 0, 0, 0, 0, 0, 0 }, // 0x000062E0
	 { 46, 4, 1323, 0, 0, 0, 0, 0, 0, 0 }, // 0x000062F0
	 { -46, 21, 1292, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006300
	 { 46, 21, 1292, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006310
	 { -46, 6, 1324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006320
	 { 46, 6, 1324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006330
	 { -46, 23, 1293, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006340
	 { 46, 23, 1293, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006350
};

Gfx _tokinoma_room_1_dlist_00006360[] =
{
	gsDPPipeSync(), // 0x00006360
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006368
	gsSPVertex(_tokinoma_room_1_vertices_000062E0, 8, 0), // 0x00006370
	gsSPCullDisplayList(0, 7), // 0x00006378
	gsDPPipeSync(), // 0x00006380
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006388
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006390
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006398
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _tokinoma_room_1_tex_000064C8), // 0x000063A0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 0, 7, 0), // 0x000063A8
	gsDPLoadSync(), // 0x000063B0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x000063B8
	gsDPPipeSync(), // 0x000063C0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_4b, 8, 0, 0, 0, 2, 4, 0, 0, 7, 0), // 0x000063C8
	gsDPSetTileSize(0, 0, 0, 508, 60), // 0x000063D0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000063D8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x000063E0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000063E8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000063F0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000063F8
	gsSPVertex(_tokinoma_room_1_vertices_00006220, 8, 0), // 0x00006400
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006408
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006410
	gsDPPipeSync(), // 0x00006418
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _tokinoma_room_1_tex_00006488), // 0x00006420
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 3, 0, 0, 3, 0), // 0x00006428
	gsDPLoadSync(), // 0x00006430
	gsDPLoadBlock(7, 0, 0, 31, 2048), // 0x00006438
	gsDPPipeSync(), // 0x00006440
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 1, 0, 0, 0, 0, 3, 0, 0, 3, 0), // 0x00006448
	gsDPSetTileSize(0, 0, 0, 28, 28), // 0x00006450
	gsSPVertex(_tokinoma_room_1_vertices_000062A0, 4, 0), // 0x00006458
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006460
	gsSPEndDisplayList(), // 0x00006468
};

Gfx _tokinoma_room_1_dlist_00006470[] =
{
	gsSPDisplayList(_tokinoma_room_1_dlist_00006160), // 0x00006470
	gsSPDisplayList(_tokinoma_room_1_dlist_00006360), // 0x00006478
	gsSPEndDisplayList(), // 0x00006480
};

u64 _tokinoma_room_1_tex_00006488[] = 
{
	0x67674F5B67674F37, 0x377F4F674F674F32, 0x0202020202020225, 0x0435353535350453,  // 0x00006488 
	0x459B9B9B9B9B4574, 0x67674F677F674F4F, 0x7F7F4F6767674F67, 0x7F674F4F37674F4F,  // 0x000064A8 
};

u64 _tokinoma_room_1_tex_000064C8[] = 
{
	0x2442444242244444, 0x2242224222424440, 0x2422244444422222, 0x4422224222422442,  // 0x000064C8 
	0x2222424222244262, 0x2422422244444222, 0x2022422244424464, 0x4444224222222422,  // 0x000064E8 
	0x2422200222200000, 0x0244200022220000, 0x0044200002422002, 0x0022220220024200,  // 0x00006508 
	0x0000442200242200, 0x0000044200000044, 0x2200004200000042, 0x0000002400000022,  // 0x00006528 
	0x2222311242631111, 0x1222431044281111, 0x1122631110243114, 0x5104451145114311,  // 0x00006548 
	0x1111224831022431, 0x1111164311111144, 0x4511112A31111128, 0x1111112651111104,  // 0x00006568 
	0x2244551244853535, 0x1222691042293333, 0x5102655310249116, 0x9102493169112535,  // 0x00006588 
	0x3551222871022275, 0x5553162933551142, 0x4955312955555109, 0x3555510695555304,  // 0x000065A8 
	0x2244731224853599, 0x32224930222A9933, 0x7422453352269314, 0x5102471169114899,  // 0x000065C8 
	0x3592441151110497, 0x7951142999973142, 0x4955942899999629, 0x3179932499735924,  // 0x000065E8 
	0x2222731242651044, 0x4422493044222531, 0x4422651042249114, 0x5104471169114249,  // 0x00006608 
	0x5144263335310224, 0x4491142224653144, 0x4931244244442429, 0x3124422226911422,  // 0x00006628 
	0x2220351022451000, 0x0222473104420551, 0x2442671024249110, 0x3104451109114203,  // 0x00006648 
	0x5100269753330400, 0x0051124220053142, 0x0351222200000007, 0x3100224424911424,  // 0x00006668 
	0x2251351112653111, 0x1244693110222751, 0x2222651042247311, 0x3102473113314313,  // 0x00006688 
	0x5111248951262451, 0x1131142225133143, 0x1331222931111109, 0x3311024424911424,  // 0x000066A8 
	0x4293335512895353, 0x1022493330422531, 0x2422651042269553, 0x5102453555114933,  // 0x000066C8 
	0x5351240651024473, 0x5333142245335149, 0x3531422935355129, 0x5351244226911442,  // 0x000066E8 
	0x22A9933942699995, 0x12224935A4222551, 0x2422651042449799, 0x7822431399114499,  // 0x00006708 
	0x77962411531102A9, 0x9159422249339426, 0x9951422697993128, 0x9951024424911422,  // 0x00006728 
	0x2222931224224283, 0x1242693044224551, 0x2442631044242242, 0x2442451149314224,  // 0x00006748 
	0x2244285553510426, 0x9114224249112222, 0x4931442242293124, 0x2931262224911222,  // 0x00006768 
	0x2222731422401115, 0x1222493110421351, 0x1022651110240111, 0x1122253169114011,  // 0x00006788 
	0x1110265359310401, 0x5311024213312222, 0x4931102211135124, 0x1331112226911222,  // 0x000067A8 
	0x2442931442831113, 0x1222473110253133, 0x1122631310445331, 0x3104253149112333,  // 0x000067C8 
	0x331126510C510431, 0x3331124713314222, 0x4953312733333127, 0x3353110224711222,  // 0x000067E8 
	0x2444951222895533, 0x1222495310293553, 0x5124855330249333, 0x3304493169312755,  // 0x00006808 
	0x3351267108910475, 0x3353144935512222, 0x2953510933333309, 0x7553312224931422,  // 0x00006828 
	0x4422A94442499999, 0x5222499962269999, 0x9424499982229999, 0x7822489229522699,  // 0x00006848 
	0x9974249826972489, 0x9999422A97722222, 0x2A99942899999628, 0x9979964424994224,  // 0x00006868 
	0x2222222222220000, 0x2222022202202222, 0x2022220022222000, 0x2222022222022222,  // 0x00006888 
	0x2222222222220222, 0x0222202020222222, 0x2202222222222222, 0x2020022222200222,  // 0x000068A8 
};

u64 _tokinoma_room_1_tex_000068C8[] = 
{
	0xF1F1F1F1F1F1F1F1, 0xF2F2F3F3F3F3F3F3, 0xF3F3F3F4F4F5F5F4, 0xF4F4F5F5F6F6F6F6,  // 0x000068C8 
	0xF6F7F7F7F7F7F7F7, 0xF8F9F9F9F9F9F9FA, 0xFAFAFAFBFCFCFCFB, 0xFBFBFCFCFDFDFEFE,  // 0x000068E8 
	0xF1F1F1F1F1F1F1F2, 0xF2F3F3F3F3F3F3F3, 0xF3F3F4F4F4F5F5F5, 0xF5F5F5F5F6F6F7F7,  // 0x00006908 
	0xF7F7F7F7F7F7F7F8, 0xF8F9F9F9F9F9F9F9, 0xFAFAFAFBFBFCFCFC, 0xFCFCFCFDFDFEFEFE,  // 0x00006928 
	0xF1F1F1F2F2F2F2F2, 0xF2F2F3F3F3F3F3F3, 0xF3F3F4F4F4F5F5F5, 0xF5F5F6F6F6F7F7F7,  // 0x00006948 
	0xF7F7F7F8F8F8F8F8, 0xF8F9F9F9F9F9F9F9, 0xFAFAFAFBFBFCFCFD, 0xFDFDFDFDFEFEFEFF,  // 0x00006968 
	0xF1F1F1F2F2F2F2F2, 0xF2F2F3F3F3F3F3F3, 0xF3F3F4F4F4F5F5F5, 0xF5F5F6F6F6F6F6F7,  // 0x00006988 
	0xF7F7F7F8F8F8F8F8, 0xF8F8F9F9F9F9F9FA, 0xFAFAFAFBFBFCFCFC, 0xFCFDFDFDFDFEFEFE,  // 0x000069A8 
	0xF1F1F2F2F2F2F2F2, 0xF2F2F3F3F3F3F3F4, 0xF4F4F4F4F5F5F5F5, 0xF5F5F5F5F6F6F6F6,  // 0x000069C8 
	0xF7F7F8F8F8F7F7F8, 0xF8F8F9F9FAFAFAFA, 0xFAFAFBFBFCFCFCFC, 0xFCFCFCFDFDFDFDFD,  // 0x000069E8 
	0xF1F1F2F2F2F2F2F2, 0xF2F3F3F3F3F4F4F4, 0xF4F4F4F4F4F5F5F5, 0xF5F5F5F5F5F6F6F6,  // 0x00006A08 
	0xF7F7F8F8F7F7F8F8, 0xF8F9F9FAFAFAFAFA, 0xFAFBFBFBFBFCFCFC, 0xFCFCFCFCFCFDFDFD,  // 0x00006A28 
	0xF1F1F2F2F2F2F2F2, 0xF3F3F3F3F4F4F4F3, 0xF3F3F4F4F4F5F5F5, 0xF5F5F5F5F6F6F6F7,  // 0x00006A48 
	0xF7F7F7F7F7F8F8F8, 0xF9F9FAFAFAFAFAFA, 0xFAFAFAFAFBFCFCFC, 0xFCFCFCFCFDFDFDFE,  // 0x00006A68 
	0xF1F1F1F2F2F2F2F2, 0xF2F3F3F3F3F3F3F3, 0xF3F3F3F4F4F4F5F5, 0xF5F5F6F6F6F6F7F7,  // 0x00006A88 
	0xF7F7F7F7F8F8F8F8, 0xF9F9F9FAFAFAFAF9, 0xF9FAFAFAFBFBFCFC, 0xFCFDFDFDFDFEFEFE,  // 0x00006AA8 
	0xF1F1F1F2F2F2F2F2, 0xF2F2F3F3F3F3F3F3, 0xF3F3F4F4F4F4F5F5, 0xF5F6F6F6F6F7F7F7,  // 0x00006AC8 
	0xF7F7F7F7F8F8F8F8, 0xF8F8F9FAFAFAFAFA, 0xFAFAFAFBFBFBFCFC, 0xFDFDFDFEFEFEFEFE,  // 0x00006AE8 
	0xF1F1F1F1F2F2F2F2, 0xF2F2F3F3F3F3F3F4, 0xF4F4F4F4F5F5F5F5, 0xF5F6F6F6F6F6F7F7,  // 0x00006B08 
	0xF7F7F7F7F8F8F8F8, 0xF8F8F9FAFAFAFAFA, 0xFAFBFBFBFCFCFCFC, 0xFDFDFDFDFEFEFEFE,  // 0x00006B28 
	0xF0F1F1F1F1F2F2F2, 0xF2F2F3F3F3F3F3F4, 0xF4F4F4F4F4F5F5F5, 0xF5F5F5F6F6F6F6F6,  // 0x00006B48 
	0xF6F6F6F7F7F8F8F7, 0xF8F8F9F9FAFAFAFA, 0xFBFBFBFBFBFCFCFC, 0xFCFCFDFDFDFEFEFD,  // 0x00006B68 
	0xF0F0F1F1F1F2F2F2, 0xF2F2F3F3F3F3F3F4, 0xF4F4F4F4F4F5F5F5, 0xF5F5F5F5F6F6F6F6,  // 0x00006B88 
	0xF6F6F6F6F7F7F8F8, 0xF8F8F9F9F9F9F9FA, 0xFBFBFBFBFBFCFCFC, 0xFCFCFCFDFDFEFDFD,  // 0x00006BA8 
	0xF0F1F1F1F1F2F2F2, 0xF2F2F2F2F3F3F3F3, 0xF4F4F4F4F4F4F4F5, 0xF5F5F5F5F6F6F6F6,  // 0x00006BC8 
	0xF6F6F6F7F7F8F8F8, 0xF8F8F8F9F9F9F9FA, 0xFBFBFAFAFBFBFCFC, 0xFCFCFCFCFDFEFEFD,  // 0x00006BE8 
	0xF1F1F1F1F1F2F2F2, 0xF2F2F2F2F3F3F3F3, 0xF4F4F4F4F4F4F4F5, 0xF5F5F5F5F6F6F7F6,  // 0x00006C08 
	0xF6F6F6F7F7F8F8F8, 0xF8F8F8F8F9F9F9FA, 0xFBFBFBFBFBFBFCFC, 0xFCFCFCFDFDFEFEFE,  // 0x00006C28 
	0xF1F1F1F1F2F2F2F2, 0xF2F2F2F3F3F3F3F3, 0xF4F4F4F4F4F4F4F5, 0xF5F5F5F5F6F6F7F6,  // 0x00006C48 
	0xF6F6F6F7F7F8F8F8, 0xF8F8F8F9F9F9FAFA, 0xFBFBFBFBFBFCFCFC, 0xFCFCFDFDFDFEFEFE,  // 0x00006C68 
	0xF0F1F1F1F1F2F2F2, 0xF2F2F2F2F3F3F3F3, 0xF4F4F4F4F4F4F4F5, 0xF5F5F5F5F5F6F6F6,  // 0x00006C88 
	0xF6F6F6F7F7F8F8F8, 0xF8F8F8F9F9F9FAFA, 0xFBFBFBFBFCFCFCFC, 0xFCFCFCFDFDFDFEFF,  // 0x00006CA8 
	0xF0F1F1F1F1F2F2F2, 0xF2F2F2F3F3F3F3F4, 0xF4F4F4F4F4F4F4F5, 0xF5F5F5F5F5F5F6F6,  // 0x00006CC8 
	0xF6F6F6F7F7F8F8F8, 0xF8F8F8F9F9F9FAFA, 0xFBFBFBFBFCFCFCFC, 0xFCFCFCFDFDFDFEFF,  // 0x00006CE8 
	0xF1F1F1F1F2F2F2F2, 0xF2F2F3F3F3F3F3F4, 0xF4F4F3F4F4F4F4F5, 0xF5F5F5F5F5F6F6F7,  // 0x00006D08 
	0xF6F6F6F7F7F8F8F8, 0xF8F8F8F9F9F9FAFA, 0xFBFBFBFBFBFCFCFC, 0xFCFCFDFDFDFEFEFE,  // 0x00006D28 
	0xF1F1F1F1F1F2F2F2, 0xF2F2F3F3F2F2F3F3, 0xF4F4F3F3F3F4F4F5, 0xF5F5F5F5F5F6F6F7,  // 0x00006D48 
	0xF6F6F6F7F7F8F8F8, 0xF8F8F8F9F9F9F9FA, 0xFAFBFBFBFBFBFCFC, 0xFCFCFCFDFDFEFEFE,  // 0x00006D68 
	0xF0F1F1F1F1F2F2F2, 0xF2F2F3F2F2F2F3F3, 0xF4F4F3F3F4F4F4F5, 0xF5F5F5F5F5F6F6F6,  // 0x00006D88 
	0xF6F6F6F7F7F8F8F8, 0xF8F8F9F9F9F9F9FA, 0xFAFBFBFBFBFBFCFC, 0xFCFCFCFCFDFEFEFD,  // 0x00006DA8 
	0xF0F0F1F1F1F2F2F2, 0xF2F2F3F3F3F3F3F4, 0xF4F4F4F4F4F5F5F5, 0xF5F5F5F5F6F6F6F6,  // 0x00006DC8 
	0xF6F6F6F6F7F7F8F8, 0xF8F8F9F9F9F9F9FA, 0xFBFBFBFBFBFCFCFC, 0xFCFCFCFDFDFEFDFD,  // 0x00006DE8 
	0xF0F1F1F1F1F2F2F2, 0xF2F2F3F3F3F3F3F4, 0xF4F4F4F4F4F5F5F5, 0xF5F5F5F6F6F6F6F6,  // 0x00006E08 
	0xF6F6F6F7F7F8F8F7, 0xF8F8F9F9F9FAFAFA, 0xFBFBFBFBFBFCFCFC, 0xFCFCFDFDFDFEFEFD,  // 0x00006E28 
	0xF1F1F1F1F2F2F2F2, 0xF2F2F3F3F3F3F3F4, 0xF4F4F4F4F5F5F5F5, 0xF5F6F6F6F6F6F7F7,  // 0x00006E48 
	0xF7F7F7F7F8F8F8F8, 0xF8F8F9FAFAFAFAFA, 0xFAFBFBFBFCFCFCFC, 0xFDFDFDFDFEFEFEFE,  // 0x00006E68 
	0xF1F1F1F2F2F2F2F2, 0xF2F2F3F3F3F3F3F3, 0xF3F3F4F4F4F4F5F5, 0xF5F6F6F6F6F7F7F7,  // 0x00006E88 
	0xF7F7F7F7F8F8F8F8, 0xF8F8F9FAFAFAFAFA, 0xFAFAFAFBFBFBFCFC, 0xFDFDFDFEFEFEFEFE,  // 0x00006EA8 
	0xF1F1F1F2F2F2F2F2, 0xF2F3F3F3F3F3F3F3, 0xF3F3F3F4F4F4F5F5, 0xF5F5F6F6F6F6F7F7,  // 0x00006EC8 
	0xF7F7F7F7F8F8F8F8, 0xF9F9F9FAFAFAFAF9, 0xF9FAFAFAFBFBFCFC, 0xFCFDFDFDFDFEFEFE,  // 0x00006EE8 
	0xF1F1F2F2F2F2F2F2, 0xF3F3F3F3F4F4F4F3, 0xF3F3F4F4F4F5F5F5, 0xF5F5F5F5F6F6F6F7,  // 0x00006F08 
	0xF7F7F7F7F7F8F8F8, 0xF9F9FAFAFAFAFAFA, 0xFAFAFAFAFBFCFCFC, 0xFCFCFCFCFDFDFDFE,  // 0x00006F28 
	0xF1F1F2F2F2F2F2F2, 0xF2F3F3F3F3F4F4F4, 0xF4F4F4F4F4F5F5F5, 0xF5F5F5F5F5F6F6F6,  // 0x00006F48 
	0xF7F7F8F8F7F7F8F8, 0xF8F9F9FAFAFAFAFA, 0xFAFBFBFBFBFCFCFC, 0xFCFCFCFCFCFDFDFD,  // 0x00006F68 
	0xF1F1F2F2F2F2F2F2, 0xF2F2F3F3F3F3F3F4, 0xF4F4F4F4F5F5F5F5, 0xF5F5F5F5F6F6F6F6,  // 0x00006F88 
	0xF7F7F8F8F8F7F7F8, 0xF8F8F9F9FAFAFAFA, 0xFAFAFBFBFCFCFCFC, 0xFCFCFCFDFDFDFDFD,  // 0x00006FA8 
	0xF1F1F1F2F2F2F2F2, 0xF2F2F3F3F3F3F3F3, 0xF3F3F4F4F4F5F5F5, 0xF5F5F6F6F6F6F6F7,  // 0x00006FC8 
	0xF7F7F7F8F8F8F8F8, 0xF8F8F9F9F9F9F9FA, 0xFAFAFAFBFBFCFCFC, 0xFCFDFDFDFDFEFEFE,  // 0x00006FE8 
	0xF1F1F1F2F2F2F2F2, 0xF2F2F3F3F3F3F3F3, 0xF3F3F4F4F4F5F5F5, 0xF5F5F6F6F6F7F7F7,  // 0x00007008 
	0xF7F7F7F8F8F8F8F8, 0xF8F9F9F9F9F9F9F9, 0xFAFAFAFBFBFCFCFD, 0xFDFDFDFDFEFEFEFF,  // 0x00007028 
	0xF1F1F1F1F1F1F1F2, 0xF2F3F3F3F3F3F3F3, 0xF3F3F4F4F4F5F5F5, 0xF5F5F5F5F6F6F7F7,  // 0x00007048 
	0xF7F7F7F7F7F7F7F8, 0xF8F9F9F9F9F9F9F9, 0xFAFAFAFBFBFCFCFC, 0xFCFCFCFDFDFEFEFE,  // 0x00007068 
	0xF1F1F1F1F1F1F1F1, 0xF2F2F3F3F3F3F3F3, 0xF3F3F3F4F4F5F5F4, 0xF4F4F5F5F6F6F6F6,  // 0x00007088 
	0xF6F7F7F7F7F7F7F7, 0xF8F9F9F9F9F9F9FA, 0xFAFAFAFBFCFCFCFB, 0xFBFBFCFCFDFDFEFE,  // 0x000070A8 
};

static u8 unaccounted70C8[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


