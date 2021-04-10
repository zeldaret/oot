#include <ultra64.h>
#include <z64.h>
#include "spot18_room_3.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "spot18_scene.h"



SCmdAltHeaders _spot18_room_3_set0000_cmd00 = { 0x18, 0, (u32)&_spot18_room_3_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _spot18_room_3_set0000_cmd01 = { 0x16, 0, { 0 }, 0x0A }; // 0x0008
SCmdRoomBehavior _spot18_room_3_set0000_cmd02 = { 0x08, 0x00, 0x00000004 }; // 0x0010
SCmdSkyboxDisables _spot18_room_3_set0000_cmd03 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0018
SCmdTimeSettings _spot18_room_3_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0020
SCmdMesh _spot18_room_3_set0000_cmd05 = { 0x0A, 0, (u32)&_spot18_room_3_meshHeader_00000360 }; // 0x0028
SCmdObjectList _spot18_room_3_set0000_cmd06 = { 0x0B, 0x0C, (u32)_spot18_room_3_objectList_0000005C }; // 0x0030
SCmdActorList _spot18_room_3_set0000_cmd07 = { 0x01, 0x2E, (u32)_spot18_room_3_actorList_00000074 }; // 0x0038
SCmdEndMarker _spot18_room_3_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _spot18_room_3_alternateHeaders_00000048[] = 
{
	0,
	(u32)&_spot18_room_3_set0400_cmd00,
	0,
	(u32)&_spot18_room_3_set06C0_cmd00,
	(u32)&_spot18_room_3_set0800_cmd00,
};

s16 _spot18_room_3_objectList_0000005C[] = 
{
	OBJECT_SPOT18_OBJ,
	OBJECT_BOMBF,
	OBJECT_BOMBIWA,
	OBJECT_OF1D_MAP,
	OBJECT_TSUBO,
	OBJECT_BWALL,
	OBJECT_DU,
	OBJECT_KANBAN,
	OBJECT_SYOKUDAI,
	OBJECT_TIMEBLOCK,
	OBJECT_EFC_TW,
	OBJECT_D_HSBLOCK,
};

ActorEntry _spot18_room_3_actorList_00000074[46] = 
{
	{ ACTOR_EN_RIVER_SOUND, 447, 196, 1139, 0, 0, 0, 0x000D }, //0x00000074 
	{ ACTOR_EN_GO2, -454, 116, 699, 0, 18751, 0, 0xFFEA }, //0x00000084 
	{ ACTOR_EN_GO2, 237, 197, 420, 0, -25304, 0, 0xFFEB }, //0x00000094 
	{ ACTOR_EN_GO2, 84, -3, -314, 0, -7282, 0, 0xFFE9 }, //0x000000A4 
	{ ACTOR_EN_KANBAN, 333, 398, -684, 0, -7282, 0, 0x0325 }, //0x000000B4 
	{ ACTOR_EN_WONDER_TALK2, 0, 535, 175, 0, 0, 0, 0x88FF }, //0x000000C4 
	{ ACTOR_EN_GO2, 43, 522, 224, 0, -6007, 0, 0xFFE8 }, //0x000000D4 
	{ ACTOR_EN_BOMBF, -882, 280, -188, 0, 0, 0, 0xFFFF }, //0x000000E4 
	{ ACTOR_EN_BOMBF, -378, 400, 695, 0, 0, 0, 0xFFFF }, //0x000000F4 
	{ ACTOR_EN_BOMBF, -231, 399, 730, 0, 0, 0, 0xFFFF }, //0x00000104 
	{ ACTOR_EN_BOMBF, -221, 46, -82, 16384, 13107, 0, 0xFFFF }, //0x00000114 
	{ ACTOR_EN_BOMBF, -195, 44, 67, 16384, 19115, 0, 0xFFFF }, //0x00000124 
	{ ACTOR_EN_BOMBF, 339, 258, 1057, 16384, 20207, 0, 0xFFFF }, //0x00000134 
	{ ACTOR_EN_BOMBF, 371, 196, 1020, 0, 0, 0, 0xFFFF }, //0x00000144 
	{ ACTOR_EN_BOMBF, 438, 196, 999, 0, 0, 0, 0xFFFF }, //0x00000154 
	{ ACTOR_EN_BOMBF, 491, 256, 1003, 16384, -12197, 0, 0xFFFF }, //0x00000164 
	{ ACTOR_EN_GO2, 187, 600, 873, 0, -7646, 0, 0xFFE7 }, //0x00000174 
	{ ACTOR_EN_GO2, 520, 399, 565, 0, -12925, 0, 0xFC00 }, //0x00000184 
	{ ACTOR_OBJ_HSBLOCK, 1161, 480, -148, 0, 0, 0, 0xFFC0 }, //0x00000194 
	{ ACTOR_EN_WONDER_TALK2, -71, -2, -333, 0, 0, 41, 0x8BFF }, //0x000001A4 
	{ ACTOR_BG_BREAKWALL, -248, -3, -3, 0, 19115, 0, 0xA001 }, //0x000001B4 
	{ ACTOR_BG_BREAKWALL, -315, 398, 780, 0, 31312, 0, 0x2002 }, //0x000001C4 
	{ ACTOR_OBJ_BOMBIWA, -756, 600, 474, 0, 0, 0, 0x0003 }, //0x000001D4 
	{ ACTOR_BG_BREAKWALL, -325, 398, 860, 0, 31312, 0, 0x2004 }, //0x000001E4 
	{ ACTOR_OBJ_BOMBIWA, 367, 196, 1078, 0, -7464, 0, 0x0008 }, //0x000001F4 
	{ ACTOR_OBJ_BOMBIWA, -670, 600, 470, 0, -7282, 0, 0x0009 }, //0x00000204 
	{ ACTOR_OBJ_BOMBIWA, -607, 600, 419, 0, 6007, 0, 0x000A }, //0x00000214 
	{ ACTOR_OBJ_BOMBIWA, 470, 196, 1031, 0, -29491, 0, 0x000B }, //0x00000224 
	{ ACTOR_OBJ_BOMBIWA, 416, 196, 1049, 0, 0, 0, 0x800C }, //0x00000234 
	{ ACTOR_OBJ_TIMEBLOCK, 1030, 380, -380, 0, 0, 0, 0x3819 }, //0x00000244 
	{ ACTOR_OBJ_TIMEBLOCK, 1030, 440, -900, 0, 0, 0, 0x381A }, //0x00000254 
	{ ACTOR_BG_SPOT18_SHUTTER, -72, -1, -410, 0, 0, 0, 0x001B }, //0x00000264 
	{ ACTOR_EN_OKARINA_TAG, -71, -2, -333, 0, 0, 1, 0x1C9B }, //0x00000274 
	{ ACTOR_DOOR_ANA, 1100, 580, -1190, 0, 0, 4, 0x00FB }, //0x00000284 
	{ ACTOR_OBJ_SYOKUDAI, -117, -3, 353, 0, 0, 0, 0x111C }, //0x00000294 
	{ ACTOR_OBJ_SYOKUDAI, 17, -3, -309, 0, 0, 0, 0x111C }, //0x000002A4 
	{ ACTOR_OBJ_SYOKUDAI, 43, -3, 387, 0, 0, 0, 0x111C }, //0x000002B4 
	{ ACTOR_OBJ_SYOKUDAI, 194, -3, -83, 0, 0, 0, 0x111C }, //0x000002C4 
	{ ACTOR_OBJ_SYOKUDAI, 180, 196, 510, 0, 2185, 0, 0x2000 }, //0x000002D4 
	{ ACTOR_OBJ_SYOKUDAI, 340, 196, 444, 0, 13653, 0, 0x2000 }, //0x000002E4 
	{ ACTOR_BG_SPOT18_BASKET, 3, -3, 20, 0, 0, 0, 0x1C1F }, //0x000002F4 
	{ ACTOR_OBJ_TSUBO, -189, 76, 866, 0, 0, 0, 0x690D }, //0x00000304 
	{ ACTOR_OBJ_TSUBO, -1200, 400, 63, 0, 728, 0, 0x6B01 }, //0x00000314 
	{ ACTOR_OBJ_TSUBO, -1170, 400, 60, 0, 728, 0, 0x6D00 }, //0x00000324 
	{ ACTOR_OBJ_TSUBO, -1185, 400, 95, 0, 728, 0, 0x7701 }, //0x00000334 
	{ ACTOR_OBJ_TSUBO, -271, 76, 825, 0, 0, 0, 0x7903 }, //0x00000344 
};

static u32 pad354 = 0;
static u32 pad358 = 0;
static u32 pad35C = 0;

MeshHeader2 _spot18_room_3_meshHeader_00000360 = { { 2 }, 0x09, (u32)&_spot18_room_3_meshDListEntry_0000036C, (u32)&(_spot18_room_3_meshDListEntry_0000036C) + sizeof(_spot18_room_3_meshDListEntry_0000036C) };

MeshEntry2 _spot18_room_3_meshDListEntry_0000036C[9] = 
{
	{ 907, 630, -444, 911, (u32)_spot18_room_3_dlist_000014C0, 0 },
	{ 343, 398, 208, 859, (u32)_spot18_room_3_dlist_00002B28, (u32)_spot18_room_3_dlist_00018610 },
	{ -8, 452, -470, 855, (u32)_spot18_room_3_dlist_0000A0D0, (u32)_spot18_room_3_dlist_00018F48 },
	{ -80, 459, 975, 983, (u32)_spot18_room_3_dlist_00005080, (u32)_spot18_room_3_dlist_00018948 },
	{ 60, 751, 1424, 272, 0, (u32)_spot18_room_3_dlist_000193D8 },
	{ -6, 520, 151, 757, (u32)_spot18_room_3_dlist_0000ADD0, (u32)_spot18_room_3_dlist_00019218 },
	{ -4, -3, 18, 423, (u32)_spot18_room_3_dlist_0000B288, 0 },
	{ 0, 900, 282, 944, (u32)_spot18_room_3_dlist_00002230, 0 },
	{ -737, 398, 149, 968, (u32)_spot18_room_3_dlist_00008218, (u32)_spot18_room_3_dlist_00018BF8 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

SCmdEchoSettings _spot18_room_3_set0400_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0400
SCmdRoomBehavior _spot18_room_3_set0400_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x0408
SCmdSkyboxDisables _spot18_room_3_set0400_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0410
SCmdTimeSettings _spot18_room_3_set0400_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0418
SCmdMesh _spot18_room_3_set0400_cmd04 = { 0x0A, 0, (u32)&_spot18_room_3_meshHeader_00000360 }; // 0x0420
SCmdObjectList _spot18_room_3_set0400_cmd05 = { 0x0B, 0x0C, (u32)_spot18_room_3_objectList_00000440 }; // 0x0428
SCmdActorList _spot18_room_3_set0400_cmd06 = { 0x01, 0x26, (u32)_spot18_room_3_actorList_00000458 }; // 0x0430
SCmdEndMarker _spot18_room_3_set0400_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0438
s16 _spot18_room_3_objectList_00000440[] = 
{
	OBJECT_SPOT18_OBJ,
	OBJECT_BOMBF,
	OBJECT_BOMBIWA,
	OBJECT_OF1D_MAP,
	OBJECT_TSUBO,
	OBJECT_BWALL,
	OBJECT_ST,
	OBJECT_KANBAN,
	OBJECT_SYOKUDAI,
	OBJECT_TIMEBLOCK,
	OBJECT_EFC_TW,
	OBJECT_D_HSBLOCK,
};

ActorEntry _spot18_room_3_actorList_00000458[38] = 
{
	{ ACTOR_EN_RIVER_SOUND, 447, 196, 1139, 0, 0, 0, 0x000D }, //0x00000458 
	{ ACTOR_EN_GO2, -454, 116, 699, 0, 18751, 0, 0xFFEA }, //0x00000468 
	{ ACTOR_EN_GO2, 237, 197, 420, 0, -25304, 0, 0xFFEB }, //0x00000478 
	{ ACTOR_BG_SPOT18_SHUTTER, -71, -1, -410, 0, 0, 0, 0x00FF }, //0x00000488 
	{ ACTOR_BG_SPOT18_SHUTTER, -235, -2, -8, 0, 18569, 0, 0x0100 }, //0x00000498 
	{ ACTOR_EN_GO2, 252, 397, -408, 0, -32040, 10, 0x1C01 }, //0x000004A8 
	{ ACTOR_BG_BREAKWALL, -315, 398, 780, 0, 31312, 0, 0x2002 }, //0x000004B8 
	{ ACTOR_BG_BREAKWALL, -325, 398, 860, 0, 31312, 0, 0x2004 }, //0x000004C8 
	{ ACTOR_OBJ_TSUBO, -189, 76, 866, 0, 0, 0, 0x7108 }, //0x000004D8 
	{ ACTOR_OBJ_TSUBO, -1200, 400, 63, 0, 728, 0, 0x7300 }, //0x000004E8 
	{ ACTOR_OBJ_TSUBO, -1170, 400, 60, 0, 728, 0, 0x7503 }, //0x000004F8 
	{ ACTOR_OBJ_TSUBO, -1185, 400, 95, 0, 728, 0, 0x7708 }, //0x00000508 
	{ ACTOR_OBJ_TSUBO, -271, 76, 825, 0, 0, 0, 0x7903 }, //0x00000518 
	{ ACTOR_DOOR_ANA, 1100, 580, -1190, 0, 0, 4, 0x00FB }, //0x00000528 
	{ ACTOR_EN_SW, 1, 499, 165, 16384, -32222, 0, 0x9020 }, //0x00000538 
	{ ACTOR_EN_GO2, 84, -3, -314, 0, -7282, 0, 0xFFE9 }, //0x00000548 
	{ ACTOR_OBJ_TIMEBLOCK, 1030, 380, -380, 0, 0, 0, 0x3819 }, //0x00000558 
	{ ACTOR_OBJ_TIMEBLOCK, 1030, 440, -900, 0, 0, 0, 0x381A }, //0x00000568 
	{ ACTOR_EN_WONDER_TALK2, 0, 535, 175, 0, 0, 0, 0x88FF }, //0x00000578 
	{ ACTOR_EN_GO2, 43, 522, 224, 0, -6007, 0, 0xFFE8 }, //0x00000588 
	{ ACTOR_EN_BOMBF, -882, 280, -188, 0, 0, 0, 0xFFFF }, //0x00000598 
	{ ACTOR_EN_BOMBF, -378, 400, 695, 0, 0, 0, 0xFFFF }, //0x000005A8 
	{ ACTOR_EN_BOMBF, -231, 399, 730, 0, 0, 0, 0xFFFF }, //0x000005B8 
	{ ACTOR_EN_BOMBF, -221, 46, -82, 16384, 13107, 0, 0xFFFF }, //0x000005C8 
	{ ACTOR_EN_BOMBF, -195, 44, 67, 16384, 19115, 0, 0xFFFF }, //0x000005D8 
	{ ACTOR_EN_BOMBF, 339, 258, 1057, 16384, 20207, 0, 0xFFFF }, //0x000005E8 
	{ ACTOR_EN_BOMBF, 371, 196, 1020, 0, 0, 0, 0xFFFF }, //0x000005F8 
	{ ACTOR_EN_BOMBF, 438, 196, 999, 0, 0, 0, 0xFFFF }, //0x00000608 
	{ ACTOR_EN_BOMBF, 491, 256, 1003, 16384, -12197, 0, 0xFFFF }, //0x00000618 
	{ ACTOR_OBJ_BOMBIWA, -756, 600, 474, 0, 0, 0, 0x0003 }, //0x00000628 
	{ ACTOR_OBJ_BOMBIWA, 367, 196, 1078, 0, -7464, 0, 0x0008 }, //0x00000638 
	{ ACTOR_OBJ_BOMBIWA, -670, 600, 470, 0, -7282, 0, 0x0009 }, //0x00000648 
	{ ACTOR_OBJ_BOMBIWA, -607, 600, 419, 0, 6007, 0, 0x000A }, //0x00000658 
	{ ACTOR_OBJ_BOMBIWA, 470, 196, 1031, 0, -29491, 0, 0x000B }, //0x00000668 
	{ ACTOR_OBJ_BOMBIWA, 416, 196, 1049, 0, 0, 0, 0x800C }, //0x00000678 
	{ ACTOR_EN_GO2, 187, 600, 873, 0, -7646, 0, 0xFFE7 }, //0x00000688 
	{ ACTOR_OBJ_HSBLOCK, 1161, 480, -148, 0, 0, 0, 0xFFC0 }, //0x00000698 
	{ ACTOR_EN_WONDER_TALK2, -74, -2, -328, 0, 0, 41, 0x8BFF }, //0x000006A8 
};

static u32 pad6B8 = 0;
static u32 pad6BC = 0;

SCmdEchoSettings _spot18_room_3_set06C0_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x06C0
SCmdRoomBehavior _spot18_room_3_set06C0_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x06C8
SCmdSkyboxDisables _spot18_room_3_set06C0_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x00 }; // 0x06D0
SCmdTimeSettings _spot18_room_3_set06C0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF }; // 0x06D8
SCmdMesh _spot18_room_3_set06C0_cmd04 = { 0x0A, 0, (u32)&_spot18_room_3_meshHeader_00000360 }; // 0x06E0
SCmdObjectList _spot18_room_3_set06C0_cmd05 = { 0x0B, 0x08, (u32)_spot18_room_3_objectList_00000700 }; // 0x06E8
SCmdActorList _spot18_room_3_set06C0_cmd06 = { 0x01, 0x0F, (u32)_spot18_room_3_actorList_00000710 }; // 0x06F0
SCmdEndMarker _spot18_room_3_set06C0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x06F8
s16 _spot18_room_3_objectList_00000700[] = 
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

ActorEntry _spot18_room_3_actorList_00000710[15] = 
{
	{ ACTOR_EN_GO2, -246, 197, -136, 0, -18204, 0, 0xFFE7 }, //0x00000710 
	{ ACTOR_EN_GO2, 452, 398, 106, 0, 14199, 0, 0xFFE7 }, //0x00000720 
	{ ACTOR_EN_GO2, 66, 600, 840, 0, 0, 0, 0xFFE7 }, //0x00000730 
	{ ACTOR_EN_GO2, 255, 197, -138, 0, 3277, 0, 0xFFE8 }, //0x00000740 
	{ ACTOR_EN_GO2, -62, -3, 60, 0, -16384, 0, 0xFFE9 }, //0x00000750 
	{ ACTOR_OBJ_BEAN, 10, -3, 295, 0, 10923, 0, 0x1F01 }, //0x00000760 
	{ ACTOR_OBJ_BOMBIWA, -670, 600, 470, 0, -7282, 0, 0x0003 }, //0x00000770 
	{ ACTOR_OBJ_BOMBIWA, 418, 196, 1038, 0, 0, 0, 0x0008 }, //0x00000780 
	{ ACTOR_OBJ_BOMBIWA, 380, 196, 1076, 0, -7464, 0, 0x0008 }, //0x00000790 
	{ ACTOR_OBJ_BOMBIWA, 454, 196, 1005, 0, -29491, 0, 0x0008 }, //0x000007A0 
	{ ACTOR_OBJ_BOMBIWA, -756, 600, 474, 0, 0, 0, 0x000F }, //0x000007B0 
	{ ACTOR_OBJ_BOMBIWA, -607, 600, 419, 0, 6007, 0, 0x001F }, //0x000007C0 
	{ ACTOR_EN_BOX, 1031, 580, -1259, 0, -32768, 0, 0x0022 }, //0x000007D0 
	{ ACTOR_BG_BREAKWALL, -363, 400, 1207, 0, 30766, 0, 0x2002 }, //0x000007E0 
	{ ACTOR_BG_BREAKWALL, -404, 400, 1319, 0, 25122, 0, 0x2004 }, //0x000007F0 
};


SCmdEchoSettings _spot18_room_3_set0800_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0800
SCmdRoomBehavior _spot18_room_3_set0800_cmd01 = { 0x08, 0x00, 0x00000004 }; // 0x0808
SCmdSkyboxDisables _spot18_room_3_set0800_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0810
SCmdTimeSettings _spot18_room_3_set0800_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0818
SCmdMesh _spot18_room_3_set0800_cmd04 = { 0x0A, 0, (u32)&_spot18_room_3_meshHeader_00000360 }; // 0x0820
SCmdEndMarker _spot18_room_3_set0800_cmd05 = { 0x14, 0x00, 0x00 }; // 0x0828
Vtx_t _spot18_room_3_vertices_00000830[4] = 
{
	 { 957, 640, -127, 0, 106, 761, 121, 40, 6, 255 }, // 0x00000830
	 { 1117, 640, -128, 0, -179, 1745, 121, 40, 6, 255 }, // 0x00000840
	 { 1117, 640, 22, 0, 742, 2008, 37, 37, 38, 255 }, // 0x00000850
	 { 957, 640, 22, 0, 1024, 1024, 37, 37, 38, 255 }, // 0x00000860
};

Vtx_t _spot18_room_3_vertices_00000870[8] = 
{
	 { 1117, 480, 22, 0, -1024, 2048, 37, 37, 38, 255 }, // 0x00000870
	 { 1117, 640, 22, 0, -1024, 410, 37, 37, 38, 255 }, // 0x00000880
	 { 1117, 640, -128, 0, -1982, 410, 121, 40, 6, 255 }, // 0x00000890
	 { 1117, 480, -128, 0, -1982, 2048, 102, 102, 102, 255 }, // 0x000008A0
	 { 957, 480, -127, 0, 2253, 2048, 102, 102, 102, 255 }, // 0x000008B0
	 { 957, 640, -127, 0, 2253, 410, 121, 40, 6, 255 }, // 0x000008C0
	 { 957, 640, 22, 0, 1297, 410, 37, 37, 38, 255 }, // 0x000008D0
	 { 957, 480, 22, 0, 1297, 2048, 37, 37, 38, 255 }, // 0x000008E0
};

Vtx_t _spot18_room_3_vertices_000008F0[4] = 
{
	 { 957, 480, 22, 0, 0, 1024, 37, 37, 38, 255 }, // 0x000008F0
	 { 1117, 480, 22, 0, -564, 1979, 37, 37, 38, 255 }, // 0x00000900
	 { 1117, 480, -128, 0, -2406, 1723, 102, 102, 102, 255 }, // 0x00000910
	 { 957, 480, -127, 0, -1837, 769, 102, 102, 102, 255 }, // 0x00000920
};

Vtx_t _spot18_room_3_vertices_00000930[4] = 
{
	 { 797, 560, 22, 0, 273, 410, 63, 63, 63, 255 }, // 0x00000930
	 { 595, 563, 23, 0, -1024, 410, 140, 140, 140, 255 }, // 0x00000940
	 { 595, 400, 23, 0, -1024, 2048, 204, 204, 204, 255 }, // 0x00000950
	 { 797, 400, 22, 0, 273, 2048, 114, 114, 114, 255 }, // 0x00000960
};

Vtx_t _spot18_room_3_vertices_00000970[4] = 
{
	 { 797, 560, 182, 0, 2290, 321, 63, 63, 63, 255 }, // 0x00000970
	 { 581, 563, 183, 0, 2677, -1007, 140, 140, 140, 255 }, // 0x00000980
	 { 595, 563, 23, 0, 1668, -1206, 140, 140, 140, 255 }, // 0x00000990
	 { 797, 560, 22, 0, 1306, 40, 63, 63, 63, 255 }, // 0x000009A0
};

Vtx_t _spot18_room_3_vertices_000009B0[4] = 
{
	 { 797, 400, 182, 0, 1024, 2048, 127, 127, 127, 255 }, // 0x000009B0
	 { 581, 400, 183, 0, 2407, 2048, 204, 204, 204, 255 }, // 0x000009C0
	 { 581, 563, 183, 0, 2407, 410, 140, 140, 140, 255 }, // 0x000009D0
	 { 797, 560, 182, 0, 1024, 410, 63, 63, 63, 255 }, // 0x000009E0
};

Vtx_t _spot18_room_3_vertices_000009F0[4] = 
{
	 { 797, 400, 22, 0, 564, 69, 114, 114, 114, 255 }, // 0x000009F0
	 { 595, 400, 23, 0, 1288, -1140, 204, 204, 204, 255 }, // 0x00000A00
	 { 581, 400, 183, 0, 3303, -946, 204, 204, 204, 255 }, // 0x00000A10
	 { 797, 400, 182, 0, 2533, 342, 127, 127, 127, 255 }, // 0x00000A20
};

Vtx_t _spot18_room_3_vertices_00000A30[8] = 
{
	 { 1120, 680, 263, 0, 517, 410, 51, 51, 51, 255 }, // 0x00000A30
	 { 1120, 520, 263, 0, 517, 2048, 114, 114, 114, 255 }, // 0x00000A40
	 { 1120, 520, 423, 0, 1541, 2048, 114, 114, 114, 255 }, // 0x00000A50
	 { 1120, 680, 423, 0, 1541, 410, 51, 51, 51, 255 }, // 0x00000A60
	 { 800, 760, 423, 0, 3589, 410, 165, 165, 165, 255 }, // 0x00000A70
	 { 960, 680, 423, 0, 2565, 410, 63, 63, 63, 255 }, // 0x00000A80
	 { 960, 520, 423, 0, 2565, 2048, 114, 114, 114, 255 }, // 0x00000A90
	 { 800, 600, 423, 0, 3589, 2048, 242, 242, 242, 255 }, // 0x00000AA0
};

Vtx_t _spot18_room_3_vertices_00000AB0[4] = 
{
	 { 800, 760, 263, 0, 2782, 480, 165, 165, 165, 255 }, // 0x00000AB0
	 { 960, 680, 263, 0, 2500, 1464, 63, 63, 63, 255 }, // 0x00000AC0
	 { 960, 680, 423, 0, 3485, 1746, 63, 63, 63, 255 }, // 0x00000AD0
	 { 800, 760, 423, 0, 3767, 762, 165, 165, 165, 255 }, // 0x00000AE0
};

Vtx_t _spot18_room_3_vertices_00000AF0[4] = 
{
	 { 960, 680, 423, 0, 2565, 410, 63, 63, 63, 255 }, // 0x00000AF0
	 { 1120, 680, 423, 0, 1541, 410, 51, 51, 51, 255 }, // 0x00000B00
	 { 1120, 520, 423, 0, 1541, 2048, 114, 114, 114, 255 }, // 0x00000B10
	 { 960, 520, 423, 0, 2565, 2048, 114, 114, 114, 255 }, // 0x00000B20
};

Vtx_t _spot18_room_3_vertices_00000B30[8] = 
{
	 { 960, 680, 263, 0, 2500, 1464, 63, 63, 63, 255 }, // 0x00000B30
	 { 1120, 680, 263, 0, 2219, 2449, 51, 51, 51, 255 }, // 0x00000B40
	 { 1120, 680, 423, 0, 3203, 2731, 51, 51, 51, 255 }, // 0x00000B50
	 { 960, 680, 423, 0, 3485, 1746, 63, 63, 63, 255 }, // 0x00000B60
	 { 957, 640, 182, 0, 2008, 1306, 76, 76, 76, 255 }, // 0x00000B70
	 { 797, 560, 182, 0, 2290, 321, 63, 63, 63, 255 }, // 0x00000B80
	 { 797, 560, 22, 0, 1306, 40, 63, 63, 63, 255 }, // 0x00000B90
	 { 957, 640, 22, 0, 1024, 1024, 37, 37, 38, 255 }, // 0x00000BA0
};

Vtx_t _spot18_room_3_vertices_00000BB0[12] = 
{
	 { 797, 560, 182, 0, 1024, 410, 63, 63, 63, 255 }, // 0x00000BB0
	 { 957, 640, 182, 0, 0, 410, 76, 76, 76, 255 }, // 0x00000BC0
	 { 957, 480, 182, 0, 0, 2048, 165, 165, 165, 255 }, // 0x00000BD0
	 { 797, 400, 182, 0, 1024, 2048, 127, 127, 127, 255 }, // 0x00000BE0
	 { 800, 760, 263, 0, -1541, 410, 165, 165, 165, 255 }, // 0x00000BF0
	 { 800, 600, 263, 0, -1541, 2048, 242, 242, 242, 255 }, // 0x00000C00
	 { 960, 520, 263, 0, -517, 2048, 165, 165, 165, 255 }, // 0x00000C10
	 { 960, 680, 263, 0, -517, 410, 63, 63, 63, 255 }, // 0x00000C20
	 { 1120, 680, 263, 0, 517, 410, 51, 51, 51, 255 }, // 0x00000C30
	 { 1117, 640, 182, 0, 0, 410, 63, 63, 63, 255 }, // 0x00000C40
	 { 1117, 480, 182, 0, 0, 2048, 63, 63, 63, 255 }, // 0x00000C50
	 { 1120, 520, 263, 0, 517, 2048, 114, 114, 114, 255 }, // 0x00000C60
};

Vtx_t _spot18_room_3_vertices_00000C70[4] = 
{
	 { 960, 680, 263, 0, 2500, 1464, 63, 63, 63, 255 }, // 0x00000C70
	 { 957, 640, 182, 0, 2008, 1306, 76, 76, 76, 255 }, // 0x00000C80
	 { 1117, 640, 182, 0, 1727, 2290, 63, 63, 63, 255 }, // 0x00000C90
	 { 1120, 680, 263, 0, 2219, 2449, 51, 51, 51, 255 }, // 0x00000CA0
};

Vtx_t _spot18_room_3_vertices_00000CB0[4] = 
{
	 { 797, 560, 22, 0, 273, 410, 63, 63, 63, 255 }, // 0x00000CB0
	 { 797, 400, 22, 0, 273, 2048, 114, 114, 114, 255 }, // 0x00000CC0
	 { 957, 480, 22, 0, 1297, 2048, 37, 37, 38, 255 }, // 0x00000CD0
	 { 957, 640, 22, 0, 1297, 410, 37, 37, 38, 255 }, // 0x00000CE0
};

Vtx_t _spot18_room_3_vertices_00000CF0[4] = 
{
	 { 960, 520, 423, 0, 4922, 1725, 114, 114, 114, 255 }, // 0x00000CF0
	 { 1120, 520, 423, 0, 4358, 2680, 114, 114, 114, 255 }, // 0x00000D00
	 { 1120, 520, 263, 0, 2389, 2406, 114, 114, 114, 255 }, // 0x00000D10
	 { 960, 520, 263, 0, 2953, 1451, 165, 165, 165, 255 }, // 0x00000D20
};

Vtx_t _spot18_room_3_vertices_00000D30[4] = 
{
	 { 1117, 640, 182, 0, 0, 410, 63, 63, 63, 255 }, // 0x00000D30
	 { 1117, 640, 22, 0, -1024, 410, 37, 37, 38, 255 }, // 0x00000D40
	 { 1117, 480, 22, 0, -1024, 2048, 37, 37, 38, 255 }, // 0x00000D50
	 { 1117, 480, 182, 0, 0, 2048, 63, 63, 63, 255 }, // 0x00000D60
};

Vtx_t _spot18_room_3_vertices_00000D70[4] = 
{
	 { 957, 640, 182, 0, 2008, 1306, 76, 76, 76, 255 }, // 0x00000D70
	 { 957, 640, 22, 0, 1024, 1024, 37, 37, 38, 255 }, // 0x00000D80
	 { 1117, 640, 22, 0, 742, 2008, 37, 37, 38, 255 }, // 0x00000D90
	 { 1117, 640, 182, 0, 1727, 2290, 63, 63, 63, 255 }, // 0x00000DA0
};

Vtx_t _spot18_room_3_vertices_00000DB0[4] = 
{
	 { 1117, 480, 182, 0, 1405, 2252, 63, 63, 63, 255 }, // 0x00000DB0
	 { 1117, 480, 22, 0, -564, 1979, 37, 37, 38, 255 }, // 0x00000DC0
	 { 957, 480, 22, 0, 0, 1024, 37, 37, 38, 255 }, // 0x00000DD0
	 { 957, 480, 182, 0, 1969, 1297, 165, 165, 165, 255 }, // 0x00000DE0
};

Vtx_t _spot18_room_3_vertices_00000DF0[12] = 
{
	 { 800, 600, 423, 0, 2048, 0, 242, 242, 242, 255 }, // 0x00000DF0
	 { 960, 520, 423, 0, 2048, 4096, 114, 114, 114, 255 }, // 0x00000E00
	 { 960, 520, 263, 0, 0, 4096, 165, 165, 165, 255 }, // 0x00000E10
	 { 800, 600, 263, 0, 0, 0, 242, 242, 242, 255 }, // 0x00000E20
	 { 957, 480, 22, 0, 2048, 0, 37, 37, 38, 255 }, // 0x00000E30
	 { 797, 400, 22, 0, 2048, 4096, 114, 114, 114, 255 }, // 0x00000E40
	 { 797, 400, 182, 0, 0, 4096, 127, 127, 127, 255 }, // 0x00000E50
	 { 957, 480, 182, 0, 0, 0, 165, 165, 165, 255 }, // 0x00000E60
	 { 960, 520, 263, 0, 0, 0, 165, 165, 165, 255 }, // 0x00000E70
	 { 1120, 520, 263, 0, 2048, 0, 114, 114, 114, 255 }, // 0x00000E80
	 { 1117, 480, 182, 0, 2014, 2066, 63, 63, 63, 255 }, // 0x00000E90
	 { 957, 480, 182, 0, -34, 2066, 165, 165, 165, 255 }, // 0x00000EA0
};

Vtx_t _spot18_room_3_vertices_00000EB0[4] = 
{
	 { 898, 580, -1079, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00000EB0
	 { 1171, 580, -1080, 0, 1748, 2048, 51, 51, 51, 255 }, // 0x00000EC0
	 { 1170, 580, -1310, 0, 1748, 0, 63, 63, 63, 255 }, // 0x00000ED0
	 { 897, 580, -1309, 0, 0, 0, 63, 63, 63, 255 }, // 0x00000EE0
};

Vtx_t _spot18_room_3_vertices_00000EF0[8] = 
{
	 { 902, 452, -237, 0, 1748, 512, 241, 82, 13, 255 }, // 0x00000EF0
	 { 902, 480, -237, 0, 1748, 0, 216, 74, 12, 255 }, // 0x00000F00
	 { 1175, 480, -239, 0, 0, 0, 216, 74, 12, 255 }, // 0x00000F10
	 { 1175, 452, -239, 0, 0, 512, 241, 82, 13, 255 }, // 0x00000F20
	 { 1171, 452, -1080, 0, 1748, 1434, 241, 82, 13, 255 }, // 0x00000F30
	 { 1171, 580, -1080, 0, 1748, 0, 241, 82, 13, 255 }, // 0x00000F40
	 { 898, 580, -1079, 0, 0, 0, 241, 82, 13, 255 }, // 0x00000F50
	 { 898, 452, -1079, 0, 0, 1434, 241, 82, 13, 255 }, // 0x00000F60
};

Vtx_t _spot18_room_3_vertices_00000F70[3] = 
{
	 { 903, 680, -127, 0, -2864, -416, 96, 32, 5, 255 }, // 0x00000F70
	 { 903, 480, -127, 0, -2870, 1632, 51, 51, 51, 255 }, // 0x00000F80
	 { 902, 480, -237, 0, -2305, 1639, 216, 74, 12, 255 }, // 0x00000F90
};

Vtx_t _spot18_room_3_vertices_00000FA0[4] = 
{
	 { 897, 580, -1309, 0, 0, 2048, 63, 63, 63, 255 }, // 0x00000FA0
	 { 897, 736, -1309, 0, 0, 0, 72, 24, 3, 255 }, // 0x00000FB0
	 { 898, 580, -1079, 0, -1473, 2048, 241, 82, 13, 255 }, // 0x00000FC0
	 { 898, 736, -1079, 0, -1473, 0, 144, 49, 8, 255 }, // 0x00000FD0
};

Vtx_t _spot18_room_3_vertices_00000FE0[3] = 
{
	 { 1175, 480, -239, 0, 2891, 1639, 216, 74, 12, 255 }, // 0x00000FE0
	 { 1176, 480, -128, 0, 3455, 1632, 51, 51, 51, 255 }, // 0x00000FF0
	 { 1176, 680, -128, 0, 3449, -416, 96, 32, 5, 255 }, // 0x00001000
};

Vtx_t _spot18_room_3_vertices_00001010[14] = 
{
	 { 1171, 580, -1080, 0, 3221, 2048, 241, 82, 13, 255 }, // 0x00001010
	 { 1170, 736, -1310, 0, 1748, 0, 72, 24, 3, 255 }, // 0x00001020
	 { 1170, 580, -1310, 0, 1748, 2048, 63, 63, 63, 255 }, // 0x00001030
	 { 1171, 736, -1080, 0, 3221, 0, 144, 49, 8, 255 }, // 0x00001040
	 { 1176, 680, -128, 0, -300, 0, 96, 32, 5, 255 }, // 0x00001050
	 { 1117, 640, -128, 0, 0, 410, 121, 40, 6, 255 }, // 0x00001060
	 { 957, 640, -127, 0, 819, 410, 121, 40, 6, 255 }, // 0x00001070
	 { 903, 680, -127, 0, 1098, 0, 96, 32, 5, 255 }, // 0x00001080
	 { 1176, 480, -128, 0, -300, 2048, 51, 51, 51, 255 }, // 0x00001090
	 { 1117, 480, -128, 0, 0, 2048, 102, 102, 102, 255 }, // 0x000010A0
	 { 957, 480, -127, 0, 819, 2048, 102, 102, 102, 255 }, // 0x000010B0
	 { 903, 480, -127, 0, 1098, 2048, 51, 51, 51, 255 }, // 0x000010C0
	 { 897, 736, -1309, 0, 0, 0, 72, 24, 3, 255 }, // 0x000010D0
	 { 897, 580, -1309, 0, 0, 2048, 63, 63, 63, 255 }, // 0x000010E0
};

Vtx_t _spot18_room_3_vertices_000010F0[6] = 
{
	 { 1117, 480, -128, 0, 375, 633, 102, 102, 102, 255 }, // 0x000010F0
	 { 1176, 480, -128, 0, 0, 637, 51, 51, 51, 255 }, // 0x00001100
	 { 1175, 480, -239, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00001110
	 { 957, 480, -127, 0, 1399, 637, 102, 102, 102, 255 }, // 0x00001120
	 { 902, 480, -237, 0, 1748, 2048, 51, 51, 51, 255 }, // 0x00001130
	 { 903, 480, -127, 0, 1748, 637, 51, 51, 51, 255 }, // 0x00001140
};

Vtx_t _spot18_room_3_vertices_00001150[4] = 
{
	 { 989, 580, -1153, 0, 0, 1024, 76, 76, 76, 255 }, // 0x00001150
	 { 989, 666, -1153, 0, 0, -1024, 247, 150, 108, 255 }, // 0x00001160
	 { 949, 666, -1152, 0, 1024, -1024, 247, 150, 108, 255 }, // 0x00001170
	 { 949, 580, -1152, 0, 1024, 1024, 76, 76, 76, 255 }, // 0x00001180
};

Vtx_t _spot18_room_3_vertices_00001190[11] = 
{
	 { 949, 580, -1152, 0, 1024, 1024, 76, 76, 76, 255 }, // 0x00001190
	 { 949, 666, -1152, 0, 1024, -1024, 153, 153, 153, 255 }, // 0x000011A0
	 { 969, 666, -1187, 0, 0, -1024, 63, 63, 63, 255 }, // 0x000011B0
	 { 969, 580, -1187, 0, 0, 1024, 63, 63, 63, 255 }, // 0x000011C0
	 { 969, 580, -1187, 0, 1024, 1024, 63, 63, 63, 255 }, // 0x000011D0
	 { 969, 666, -1187, 0, 1024, -1024, 63, 63, 63, 255 }, // 0x000011E0
	 { 989, 666, -1153, 0, 0, -1024, 153, 153, 153, 255 }, // 0x000011F0
	 { 989, 580, -1153, 0, 0, 1024, 76, 76, 76, 255 }, // 0x00001200
	 { 989, 666, -1153, 0, 1292, -546, 63, 63, 63, 255 }, // 0x00001210
	 { 969, 666, -1187, 0, 1571, -1029, 63, 63, 63, 255 }, // 0x00001220
	 { 949, 666, -1152, 0, 1013, -1029, 63, 63, 63, 255 }, // 0x00001230
};

Vtx_t _spot18_room_3_vertices_00001240[10] = 
{
	 { 897, 736, -1309, 0, 4503, -799, 72, 24, 3, 255 }, // 0x00001240
	 { 1170, 736, -1310, 0, 4952, 889, 72, 24, 3, 255 }, // 0x00001250
	 { 1032, 860, -1170, 0, 3968, 264, 72, 24, 3, 255 }, // 0x00001260
	 { 1171, 736, -1080, 0, 3541, 1271, 144, 49, 8, 255 }, // 0x00001270
	 { 898, 736, -1079, 0, 3092, -418, 144, 49, 8, 255 }, // 0x00001280
	 { 1035, 784, -567, 0, 208, 1263, 48, 16, 2, 255 }, // 0x00001290
	 { 1234, 645, -605, 0, 646, 2430, 241, 82, 13, 255 }, // 0x000012A0
	 { 1176, 680, -128, 0, -2342, 2848, 96, 32, 5, 255 }, // 0x000012B0
	 { 903, 680, -127, 0, -2791, 1159, 96, 32, 5, 255 }, // 0x000012C0
	 { 840, 645, -603, 0, 0, 0, 241, 82, 13, 255 }, // 0x000012D0
};

Vtx_t _spot18_room_3_vertices_000012E0[16] = 
{
	 { 840, 452, -658, 0, -129, 2048, 241, 82, 13, 255 }, // 0x000012E0
	 { 902, 480, -237, 0, -2305, 1639, 216, 74, 12, 255 }, // 0x000012F0
	 { 902, 452, -237, 0, -2306, 2048, 241, 82, 13, 255 }, // 0x00001300
	 { 898, 452, -1079, 0, 2048, 2048, 241, 82, 13, 255 }, // 0x00001310
	 { 898, 580, -1079, 0, 2048, 614, 241, 82, 13, 255 }, // 0x00001320
	 { 840, 645, -603, 0, -408, -50, 241, 82, 13, 255 }, // 0x00001330
	 { 898, 736, -1079, 0, 2048, -1024, 144, 49, 8, 255 }, // 0x00001340
	 { 903, 680, -127, 0, -2864, -416, 96, 32, 5, 255 }, // 0x00001350
	 { 1171, 452, -1080, 0, -1463, 2048, 241, 82, 13, 255 }, // 0x00001360
	 { 1233, 452, -660, 0, 714, 2048, 241, 82, 13, 255 }, // 0x00001370
	 { 1171, 580, -1080, 0, -1463, 614, 241, 82, 13, 255 }, // 0x00001380
	 { 1234, 645, -605, 0, 993, -50, 241, 82, 13, 255 }, // 0x00001390
	 { 1171, 736, -1080, 0, -1463, -1024, 144, 49, 8, 255 }, // 0x000013A0
	 { 1175, 452, -239, 0, 2891, 2048, 241, 82, 13, 255 }, // 0x000013B0
	 { 1175, 480, -239, 0, 2891, 1639, 216, 74, 12, 255 }, // 0x000013C0
	 { 1176, 680, -128, 0, 3449, -416, 96, 32, 5, 255 }, // 0x000013D0
};

Vtx_t _spot18_room_3_vertices_000013E0[6] = 
{
	 { 1171, 452, -1080, 0, 853, -104, 241, 82, 13, 255 }, // 0x000013E0
	 { 898, 452, -1079, 0, 542, -411, 241, 82, 13, 255 }, // 0x000013F0
	 { 840, 452, -658, 0, 0, 0, 241, 82, 13, 255 }, // 0x00001400
	 { 1233, 452, -660, 0, 447, 442, 241, 82, 13, 255 }, // 0x00001410
	 { 1175, 452, -239, 0, -95, 854, 241, 82, 13, 255 }, // 0x00001420
	 { 902, 452, -237, 0, -406, 546, 241, 82, 13, 255 }, // 0x00001430
};

Vtx_t _spot18_room_3_vertices_00001440[8] = 
{
	 { 840, 400, -1369, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001440
	 { 1418, 400, -1267, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001450
	 { 840, 860, -1369, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001460
	 { 1418, 860, -1267, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001470
	 { 532, 400, 376, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001480
	 { 1110, 400, 478, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001490
	 { 532, 860, 376, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014A0
	 { 1110, 860, 478, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014B0
};

Gfx _spot18_room_3_dlist_000014C0[] =
{
	gsDPPipeSync(), // 0x000014C0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000014C8
	gsSPVertex(_spot18_room_3_vertices_00001440, 8, 0), // 0x000014D0
	gsSPCullDisplayList(0, 7), // 0x000014D8
	gsDPPipeSync(), // 0x000014E0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000014E8
	gsDPPipeSync(), // 0x000014F0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000014F8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001500
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00001508
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001510
	gsDPLoadSync(), // 0x00001518
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001520
	gsDPPipeSync(), // 0x00001528
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001530
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001538
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x00001540
	gsDPTileSync(), // 0x00001548
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001550
	gsDPLoadSync(), // 0x00001558
	gsDPLoadTLUTCmd(7, 255), // 0x00001560
	gsDPPipeSync(), // 0x00001568
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001570
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001578
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001580
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001588
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001590
	gsSPVertex(_spot18_room_3_vertices_00000830, 4, 0), // 0x00001598
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000015A0
	gsDPPipeSync(), // 0x000015A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x000015B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000015B8
	gsDPLoadSync(), // 0x000015C0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000015C8
	gsDPPipeSync(), // 0x000015D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000015D8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000015E0
	gsSPVertex(_spot18_room_3_vertices_00000870, 8, 0), // 0x000015E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000015F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000015F8
	gsDPPipeSync(), // 0x00001600
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00001608
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001610
	gsDPLoadSync(), // 0x00001618
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001620
	gsDPPipeSync(), // 0x00001628
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001630
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001638
	gsSPVertex(_spot18_room_3_vertices_000008F0, 4, 0), // 0x00001640
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001648
	gsDPPipeSync(), // 0x00001650
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00001658
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001660
	gsDPLoadSync(), // 0x00001668
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001670
	gsDPPipeSync(), // 0x00001678
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001680
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001688
	gsSPVertex(_spot18_room_3_vertices_00000930, 4, 0), // 0x00001690
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001698
	gsDPPipeSync(), // 0x000016A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x000016A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000016B0
	gsDPLoadSync(), // 0x000016B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000016C0
	gsDPPipeSync(), // 0x000016C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000016D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000016D8
	gsSPVertex(_spot18_room_3_vertices_00000970, 4, 0), // 0x000016E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000016E8
	gsDPPipeSync(), // 0x000016F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x000016F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001700
	gsDPLoadSync(), // 0x00001708
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001710
	gsDPPipeSync(), // 0x00001718
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001720
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001728
	gsSPVertex(_spot18_room_3_vertices_000009B0, 4, 0), // 0x00001730
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001738
	gsDPPipeSync(), // 0x00001740
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00001748
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001750
	gsDPLoadSync(), // 0x00001758
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001760
	gsDPPipeSync(), // 0x00001768
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001770
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001778
	gsSPVertex(_spot18_room_3_vertices_000009F0, 4, 0), // 0x00001780
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001788
	gsDPPipeSync(), // 0x00001790
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00001798
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000017A0
	gsDPLoadSync(), // 0x000017A8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000017B0
	gsDPPipeSync(), // 0x000017B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000017C0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000017C8
	gsSPVertex(_spot18_room_3_vertices_00000A30, 8, 0), // 0x000017D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000017D8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000017E0
	gsDPPipeSync(), // 0x000017E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x000017F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000017F8
	gsDPLoadSync(), // 0x00001800
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001808
	gsDPPipeSync(), // 0x00001810
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001818
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001820
	gsSPVertex(_spot18_room_3_vertices_00000AB0, 4, 0), // 0x00001828
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001830
	gsDPPipeSync(), // 0x00001838
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00001840
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001848
	gsDPLoadSync(), // 0x00001850
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001858
	gsDPPipeSync(), // 0x00001860
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001868
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001870
	gsSPVertex(_spot18_room_3_vertices_00000AF0, 4, 0), // 0x00001878
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001880
	gsDPPipeSync(), // 0x00001888
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00001890
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001898
	gsDPLoadSync(), // 0x000018A0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000018A8
	gsDPPipeSync(), // 0x000018B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000018B8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000018C0
	gsSPVertex(_spot18_room_3_vertices_00000B30, 8, 0), // 0x000018C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000018D0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000018D8
	gsDPPipeSync(), // 0x000018E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x000018E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000018F0
	gsDPLoadSync(), // 0x000018F8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001900
	gsDPPipeSync(), // 0x00001908
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001910
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001918
	gsSPVertex(_spot18_room_3_vertices_00000BB0, 12, 0), // 0x00001920
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001928
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001930
	gsSP2Triangles(1, 7, 6, 0, 1, 6, 2, 0), // 0x00001938
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001940
	gsDPPipeSync(), // 0x00001948
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00001950
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001958
	gsDPLoadSync(), // 0x00001960
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001968
	gsDPPipeSync(), // 0x00001970
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001978
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001980
	gsSPVertex(_spot18_room_3_vertices_00000C70, 4, 0), // 0x00001988
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001990
	gsDPPipeSync(), // 0x00001998
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x000019A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000019A8
	gsDPLoadSync(), // 0x000019B0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000019B8
	gsDPPipeSync(), // 0x000019C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000019C8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000019D0
	gsSPVertex(_spot18_room_3_vertices_00000CB0, 4, 0), // 0x000019D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000019E0
	gsDPPipeSync(), // 0x000019E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x000019F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000019F8
	gsDPLoadSync(), // 0x00001A00
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001A08
	gsDPPipeSync(), // 0x00001A10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001A18
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001A20
	gsSPVertex(_spot18_room_3_vertices_00000CF0, 4, 0), // 0x00001A28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001A30
	gsDPPipeSync(), // 0x00001A38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00001A40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001A48
	gsDPLoadSync(), // 0x00001A50
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001A58
	gsDPPipeSync(), // 0x00001A60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001A68
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001A70
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00001A78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001A80
	gsDPLoadSync(), // 0x00001A88
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001A90
	gsDPPipeSync(), // 0x00001A98
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001AA0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001AA8
	gsSPVertex(_spot18_room_3_vertices_00000D30, 4, 0), // 0x00001AB0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001AB8
	gsDPPipeSync(), // 0x00001AC0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00001AC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001AD0
	gsDPLoadSync(), // 0x00001AD8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001AE0
	gsDPPipeSync(), // 0x00001AE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001AF0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001AF8
	gsSPVertex(_spot18_room_3_vertices_00000D70, 4, 0), // 0x00001B00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B08
	gsDPPipeSync(), // 0x00001B10
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00001B18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001B20
	gsDPLoadSync(), // 0x00001B28
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001B30
	gsDPPipeSync(), // 0x00001B38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001B40
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001B48
	gsSPVertex(_spot18_room_3_vertices_00000DB0, 4, 0), // 0x00001B50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B58
	gsDPPipeSync(), // 0x00001B60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00013848), // 0x00001B68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001B70
	gsDPLoadSync(), // 0x00001B78
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001B80
	gsDPPipeSync(), // 0x00001B88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001B90
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001B98
	gsSPVertex(_spot18_room_3_vertices_00000DF0, 12, 0), // 0x00001BA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001BA8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001BB0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001BB8
	gsDPPipeSync(), // 0x00001BC0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015848), // 0x00001BC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001BD0
	gsDPLoadSync(), // 0x00001BD8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001BE0
	gsDPPipeSync(), // 0x00001BE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001BF0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001BF8
	gsSPVertex(_spot18_room_3_vertices_00000EB0, 4, 0), // 0x00001C00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001C08
	gsDPPipeSync(), // 0x00001C10
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016048), // 0x00001C18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001C20
	gsDPLoadSync(), // 0x00001C28
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001C30
	gsDPPipeSync(), // 0x00001C38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001C40
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001C48
	gsSPVertex(_spot18_room_3_vertices_00000EF0, 8, 0), // 0x00001C50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001C58
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001C60
	gsDPPipeSync(), // 0x00001C68
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00011C48), // 0x00001C70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001C78
	gsDPLoadSync(), // 0x00001C80
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001C88
	gsDPPipeSync(), // 0x00001C90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001C98
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001CA0
	gsSPVertex(_spot18_room_3_vertices_00000F70, 3, 0), // 0x00001CA8
	gsSP1Triangle(0, 1, 2, 0), // 0x00001CB0
	gsDPPipeSync(), // 0x00001CB8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00001CC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001CC8
	gsDPLoadSync(), // 0x00001CD0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001CD8
	gsDPPipeSync(), // 0x00001CE0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001CE8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001CF0
	gsSPVertex(_spot18_room_3_vertices_00000FA0, 4, 0), // 0x00001CF8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001D00
	gsDPPipeSync(), // 0x00001D08
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00011C48), // 0x00001D10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001D18
	gsDPLoadSync(), // 0x00001D20
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001D28
	gsDPPipeSync(), // 0x00001D30
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001D38
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001D40
	gsSPVertex(_spot18_room_3_vertices_00000FE0, 3, 0), // 0x00001D48
	gsSP1Triangle(0, 1, 2, 0), // 0x00001D50
	gsDPPipeSync(), // 0x00001D58
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00001D60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001D68
	gsDPLoadSync(), // 0x00001D70
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001D78
	gsDPPipeSync(), // 0x00001D80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001D88
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001D90
	gsSPVertex(_spot18_room_3_vertices_00001010, 14, 0), // 0x00001D98
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001DA0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001DA8
	gsSP2Triangles(4, 8, 9, 0, 4, 9, 5, 0), // 0x00001DB0
	gsSP2Triangles(6, 10, 11, 0, 6, 11, 7, 0), // 0x00001DB8
	gsSP2Triangles(12, 2, 1, 0, 12, 13, 2, 0), // 0x00001DC0
	gsDPPipeSync(), // 0x00001DC8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015848), // 0x00001DD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00001DD8
	gsDPLoadSync(), // 0x00001DE0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001DE8
	gsDPPipeSync(), // 0x00001DF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00001DF8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001E00
	gsSPVertex(_spot18_room_3_vertices_000010F0, 6, 0), // 0x00001E08
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00001E10
	gsSP2Triangles(2, 4, 3, 0, 2, 3, 0, 0), // 0x00001E18
	gsDPPipeSync(), // 0x00001E20
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001E28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014048), // 0x00001E30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001E38
	gsDPLoadSync(), // 0x00001E40
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001E48
	gsDPPipeSync(), // 0x00001E50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001E58
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001E60
	gsSPVertex(_spot18_room_3_vertices_00001150, 4, 0), // 0x00001E68
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001E70
	gsDPPipeSync(), // 0x00001E78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016C48), // 0x00001E80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001E88
	gsDPLoadSync(), // 0x00001E90
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001E98
	gsDPPipeSync(), // 0x00001EA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001EA8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001EB0
	gsSPVertex(_spot18_room_3_vertices_00001190, 11, 0), // 0x00001EB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001EC0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001EC8
	gsSP1Triangle(8, 9, 10, 0), // 0x00001ED0
	gsDPPipeSync(), // 0x00001ED8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001EE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00001EE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001EF0
	gsDPLoadSync(), // 0x00001EF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001F00
	gsDPPipeSync(), // 0x00001F08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001F10
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001F18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x00001F20
	gsDPTileSync(), // 0x00001F28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001F30
	gsDPLoadSync(), // 0x00001F38
	gsDPLoadTLUTCmd(7, 255), // 0x00001F40
	gsDPPipeSync(), // 0x00001F48
	gsSPVertex(_spot18_room_3_vertices_00001240, 10, 0), // 0x00001F50
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001F58
	gsSP2Triangles(4, 0, 2, 0, 4, 2, 5, 0), // 0x00001F60
	gsSP2Triangles(2, 3, 5, 0, 3, 6, 5, 0), // 0x00001F68
	gsSP2Triangles(6, 7, 5, 0, 7, 8, 5, 0), // 0x00001F70
	gsSP2Triangles(8, 9, 5, 0, 9, 4, 5, 0), // 0x00001F78
	gsDPPipeSync(), // 0x00001F80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00011C48), // 0x00001F88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001F90
	gsDPLoadSync(), // 0x00001F98
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001FA0
	gsDPPipeSync(), // 0x00001FA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001FB0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001FB8
	gsSPVertex(_spot18_room_3_vertices_000012E0, 16, 0), // 0x00001FC0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0), // 0x00001FC8
	gsSP2Triangles(5, 0, 4, 0, 5, 1, 0, 0), // 0x00001FD0
	gsSP2Triangles(4, 6, 5, 0, 7, 1, 5, 0), // 0x00001FD8
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x00001FE0
	gsSP2Triangles(12, 10, 11, 0, 13, 14, 9, 0), // 0x00001FE8
	gsSP2Triangles(14, 11, 9, 0, 14, 15, 11, 0), // 0x00001FF0
	gsDPPipeSync(), // 0x00001FF8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002000
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00012448), // 0x00002008
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 4, 15, 1, 4, 15), // 0x00002010
	gsDPLoadSync(), // 0x00002018
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00002020
	gsDPPipeSync(), // 0x00002028
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 1, 4, 15, 1, 4, 15), // 0x00002030
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00002038
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00012648), // 0x00002040
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 1, 4, 15, 1, 4, 15), // 0x00002048
	gsDPLoadSync(), // 0x00002050
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00002058
	gsDPPipeSync(), // 0x00002060
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 256, 1, 0, 1, 4, 15, 1, 4, 15), // 0x00002068
	gsDPSetTileSize(1, 0, 0, 60, 60), // 0x00002070
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002078
	gsDPSetEnvColor(0, 0, 0, 200), // 0x00002080
	gsSPDisplayList(0x08000000), // 0x00002088
	gsSPVertex(_spot18_room_3_vertices_000013E0, 6, 0), // 0x00002090
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00002098
	gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0), // 0x000020A0
	gsDPPipeSync(), // 0x000020A8
	gsDPSetEnvColor(0, 0, 0, 128), // 0x000020B0
	gsSPEndDisplayList(), // 0x000020B8
};

Vtx_t _spot18_room_3_vertices_000020C0[15] = 
{
	 { 0, 1000, 0, 0, 0, 1024, 12, 12, 12, 255 }, // 0x000020C0
	 { -40, 800, 1000, 0, 5120, 878, 140, 140, 140, 255 }, // 0x000020D0
	 { -593, 800, 873, 0, 4468, -1144, 127, 127, 127, 255 }, // 0x000020E0
	 { 160, 800, 1000, 0, 5120, 1609, 140, 140, 140, 255 }, // 0x000020F0
	 { 658, 800, 816, 0, 4176, 3429, 127, 127, 127, 255 }, // 0x00002100
	 { 595, 800, 23, 0, 117, 3199, 127, 127, 127, 255 }, // 0x00002110
	 { -130, 800, -386, 0, -1976, 550, 127, 127, 127, 255 }, // 0x00002120
	 { -607, 800, -435, 0, -2228, -1195, 127, 127, 127, 255 }, // 0x00002130
	 { -742, 800, -265, 0, -1821, -1902, 127, 127, 127, 255 }, // 0x00002140
	 { 800, 800, 263, 0, 1346, 3950, 127, 127, 127, 255 }, // 0x00002150
	 { 800, 800, 423, 0, 2165, 3950, 140, 140, 140, 255 }, // 0x00002160
	 { -800, 800, -161, 0, -826, -1902, 140, 140, 140, 255 }, // 0x00002170
	 { -800, 800, -41, 0, -211, -1902, 140, 140, 140, 255 }, // 0x00002180
	 { -800, 800, 580, 0, 2967, -1902, 140, 140, 140, 255 }, // 0x00002190
	 { -800, 800, 740, 0, 3788, -1902, 140, 140, 140, 255 }, // 0x000021A0
};

Vtx_t _spot18_room_3_vertices_000021B0[8] = 
{
	 { -741, 800, -494, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021B0
	 { 910, 800, -203, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021C0
	 { -741, 1000, -494, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021D0
	 { 910, 1000, -203, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021E0
	 { -976, 800, 835, 0, 0, 0, 0, 0, 0, 0 }, // 0x000021F0
	 { 676, 800, 1126, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002200
	 { -976, 1000, 835, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002210
	 { 676, 1000, 1126, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002220
};

Gfx _spot18_room_3_dlist_00002230[] =
{
	gsDPPipeSync(), // 0x00002230
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002238
	gsSPVertex(_spot18_room_3_vertices_000021B0, 8, 0), // 0x00002240
	gsSPCullDisplayList(0, 7), // 0x00002248
	gsDPPipeSync(), // 0x00002250
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002258
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002260
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002268
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00002270
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002278
	gsDPLoadSync(), // 0x00002280
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002288
	gsDPPipeSync(), // 0x00002290
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002298
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000022A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x000022A8
	gsDPTileSync(), // 0x000022B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000022B8
	gsDPLoadSync(), // 0x000022C0
	gsDPLoadTLUTCmd(7, 255), // 0x000022C8
	gsDPPipeSync(), // 0x000022D0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000022D8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000022E0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000022E8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000022F0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000022F8
	gsSPVertex(_spot18_room_3_vertices_000020C0, 15, 0), // 0x00002300
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002308
	gsSP2Triangles(0, 4, 3, 0, 5, 0, 6, 0), // 0x00002310
	gsSP2Triangles(7, 6, 0, 0, 7, 0, 8, 0), // 0x00002318
	gsSP2Triangles(0, 5, 9, 0, 0, 10, 4, 0), // 0x00002320
	gsSP2Triangles(0, 9, 10, 0, 0, 11, 8, 0), // 0x00002328
	gsSP2Triangles(0, 12, 11, 0, 0, 13, 12, 0), // 0x00002330
	gsSP2Triangles(0, 14, 13, 0, 0, 2, 14, 0), // 0x00002338
	gsSPEndDisplayList(), // 0x00002340
};

Vtx_t _spot18_room_3_vertices_00002348[3] = 
{
	 { 595, 480, 23, 0, -180, 884, 178, 178, 178, 255 }, // 0x00002348
	 { 603, 480, 37, 0, 1226, 884, 178, 178, 178, 255 }, // 0x00002358
	 { 611, 480, 23, 0, 523, -207, 178, 178, 178, 255 }, // 0x00002368
};

Vtx_t _spot18_room_3_vertices_00002378[7] = 
{
	 { 595, 480, 23, 0, 211, 0, 178, 178, 178, 255 }, // 0x00002378
	 { 595, 400, 32, 0, 403, 1024, 165, 165, 165, 255 }, // 0x00002388
	 { 603, 480, 37, 0, 593, 0, 178, 178, 178, 255 }, // 0x00002398
	 { 603, 400, 18, 0, 19, 1024, 165, 165, 165, 255 }, // 0x000023A8
	 { 611, 400, 32, 0, 785, 1024, 165, 165, 165, 255 }, // 0x000023B8
	 { 611, 480, 23, 0, 975, 0, 178, 178, 178, 255 }, // 0x000023C8
	 { 603, 400, 18, 0, 1165, 1024, 165, 165, 165, 255 }, // 0x000023D8
};

Vtx_t _spot18_room_3_vertices_000023E8[3] = 
{
	 { 597, 480, 183, 0, -180, 884, 178, 178, 178, 255 }, // 0x000023E8
	 { 589, 480, 169, 0, 1226, 884, 178, 178, 178, 255 }, // 0x000023F8
	 { 581, 480, 183, 0, 523, -207, 178, 178, 178, 255 }, // 0x00002408
};

Vtx_t _spot18_room_3_vertices_00002418[7] = 
{
	 { 597, 480, 183, 0, 211, 0, 178, 178, 178, 255 }, // 0x00002418
	 { 597, 400, 174, 0, 403, 1024, 165, 165, 165, 255 }, // 0x00002428
	 { 589, 480, 169, 0, 593, 0, 178, 178, 178, 255 }, // 0x00002438
	 { 589, 400, 188, 0, 19, 1024, 165, 165, 165, 255 }, // 0x00002448
	 { 581, 400, 174, 0, 785, 1024, 165, 165, 165, 255 }, // 0x00002458
	 { 581, 480, 183, 0, 975, 0, 178, 178, 178, 255 }, // 0x00002468
	 { 589, 400, 188, 0, 1165, 1024, 165, 165, 165, 255 }, // 0x00002478
};

Vtx_t _spot18_room_3_vertices_00002488[3] = 
{
	 { 816, 680, 423, 0, -180, 884, 191, 191, 191, 255 }, // 0x00002488
	 { 808, 680, 409, 0, 1226, 884, 191, 191, 191, 255 }, // 0x00002498
	 { 800, 680, 423, 0, 523, -207, 191, 191, 191, 255 }, // 0x000024A8
};

Vtx_t _spot18_room_3_vertices_000024B8[7] = 
{
	 { 816, 680, 423, 0, 211, 0, 191, 191, 191, 255 }, // 0x000024B8
	 { 816, 592, 414, 0, 403, 1024, 191, 191, 191, 255 }, // 0x000024C8
	 { 808, 680, 409, 0, 593, 0, 191, 191, 191, 255 }, // 0x000024D8
	 { 808, 592, 428, 0, 19, 1024, 191, 191, 191, 255 }, // 0x000024E8
	 { 800, 592, 414, 0, 785, 1024, 191, 191, 191, 255 }, // 0x000024F8
	 { 800, 680, 423, 0, 975, 0, 191, 191, 191, 255 }, // 0x00002508
	 { 808, 592, 428, 0, 1165, 1024, 191, 191, 191, 255 }, // 0x00002518
};

Vtx_t _spot18_room_3_vertices_00002528[3] = 
{
	 { 800, 680, 263, 0, -180, 884, 191, 191, 191, 255 }, // 0x00002528
	 { 808, 680, 277, 0, 1226, 884, 191, 191, 191, 255 }, // 0x00002538
	 { 816, 680, 263, 0, 523, -207, 191, 191, 191, 255 }, // 0x00002548
};

Vtx_t _spot18_room_3_vertices_00002558[7] = 
{
	 { 800, 680, 263, 0, 211, 0, 191, 191, 191, 255 }, // 0x00002558
	 { 800, 592, 272, 0, 403, 1024, 191, 191, 191, 255 }, // 0x00002568
	 { 808, 680, 277, 0, 593, 0, 191, 191, 191, 255 }, // 0x00002578
	 { 808, 592, 258, 0, 19, 1024, 191, 191, 191, 255 }, // 0x00002588
	 { 816, 592, 272, 0, 785, 1024, 191, 191, 191, 255 }, // 0x00002598
	 { 816, 680, 263, 0, 975, 0, 191, 191, 191, 255 }, // 0x000025A8
	 { 808, 592, 258, 0, 1165, 1024, 191, 191, 191, 255 }, // 0x000025B8
};

Vtx_t _spot18_room_3_vertices_000025C8[3] = 
{
	 { 105, 397, -385, 0, -7485, 0, 114, 114, 114, 255 }, // 0x000025C8
	 { 105, 197, -385, 0, -7485, 2048, 51, 51, 51, 255 }, // 0x000025D8
	 { 431, 196, -28, 0, -5011, 2048, 153, 153, 153, 255 }, // 0x000025E8
};

Vtx_t _spot18_room_3_vertices_000025F8[10] = 
{
	 { 800, 800, 263, 0, -5142, 0, 127, 127, 127, 255 }, // 0x000025F8
	 { 595, 800, 23, 0, -6759, 0, 127, 127, 127, 255 }, // 0x00002608
	 { 595, 600, 23, 0, -6759, 2048, 140, 140, 140, 255 }, // 0x00002618
	 { 800, 600, 263, 0, -5142, 2048, 242, 242, 242, 255 }, // 0x00002628
	 { 658, 600, 816, 0, -2184, 2048, 242, 242, 242, 255 }, // 0x00002638
	 { 658, 800, 816, 0, -2184, 0, 127, 127, 127, 255 }, // 0x00002648
	 { 800, 800, 423, 0, -4323, 0, 140, 140, 140, 255 }, // 0x00002658
	 { 800, 600, 423, 0, -4323, 2048, 242, 242, 242, 255 }, // 0x00002668
	 { 800, 760, 263, 0, -5142, 410, 165, 165, 165, 255 }, // 0x00002678
	 { 800, 760, 423, 0, -4323, 410, 165, 165, 165, 255 }, // 0x00002688
};

Vtx_t _spot18_room_3_vertices_00002698[4] = 
{
	 { -130, 800, -386, 0, 0, 0, 127, 127, 127, 255 }, // 0x00002698
	 { -130, 600, -386, 0, 0, 2048, 165, 165, 165, 255 }, // 0x000026A8
	 { 595, 600, 23, 0, 4258, 2048, 140, 140, 140, 255 }, // 0x000026B8
	 { 595, 800, 23, 0, 4258, 0, 127, 127, 127, 255 }, // 0x000026C8
};

Vtx_t _spot18_room_3_vertices_000026D8[6] = 
{
	 { 541, 600, 664, 0, -3157, 2048, 140, 140, 140, 255 }, // 0x000026D8
	 { 658, 600, 816, 0, -2434, 0, 242, 242, 242, 255 }, // 0x000026E8
	 { 581, 600, 183, 0, -5630, 2048, 140, 140, 140, 255 }, // 0x000026F8
	 { 800, 600, 423, 0, -4499, 0, 242, 242, 242, 255 }, // 0x00002708
	 { 800, 600, 263, 0, -5315, 0, 229, 229, 229, 255 }, // 0x00002718
	 { 595, 600, 23, 0, -6451, 2048, 140, 140, 140, 255 }, // 0x00002728
};

Vtx_t _spot18_room_3_vertices_00002738[4] = 
{
	 { 105, 597, -385, 0, 2623, 2891, 114, 114, 114, 255 }, // 0x00002738
	 { 477, 599, -400, 0, 5441, 1824, 114, 114, 114, 255 }, // 0x00002748
	 { 595, 600, 23, 0, 7427, 4767, 140, 140, 140, 255 }, // 0x00002758
	 { -130, 600, -386, 0, 819, 3482, 165, 165, 165, 255 }, // 0x00002768
};

Vtx_t _spot18_room_3_vertices_00002778[4] = 
{
	 { 477, 397, -400, 0, 4828, 2048, 127, 127, 127, 255 }, // 0x00002778
	 { 595, 400, 23, 0, 7073, 2048, 204, 204, 204, 255 }, // 0x00002788
	 { 595, 600, 23, 0, 7081, 0, 140, 140, 140, 255 }, // 0x00002798
	 { 477, 599, -400, 0, 4830, 0, 114, 114, 114, 255 }, // 0x000027A8
};

Vtx_t _spot18_room_3_vertices_000027B8[4] = 
{
	 { 581, 400, 183, 0, -5630, 2048, 204, 204, 204, 255 }, // 0x000027B8
	 { 541, 400, 664, 0, -3157, 2048, 204, 204, 204, 255 }, // 0x000027C8
	 { 541, 600, 664, 0, -3157, 0, 140, 140, 140, 255 }, // 0x000027D8
	 { 581, 600, 183, 0, -5630, 0, 140, 140, 140, 255 }, // 0x000027E8
};

Vtx_t _spot18_room_3_vertices_000027F8[4] = 
{
	 { 595, 600, 23, 0, -6451, 0, 140, 140, 140, 255 }, // 0x000027F8
	 { 595, 563, 23, 0, -6451, 382, 140, 140, 140, 255 }, // 0x00002808
	 { 581, 563, 183, 0, -5630, 384, 140, 140, 140, 255 }, // 0x00002818
	 { 581, 600, 183, 0, -5630, 0, 140, 140, 140, 255 }, // 0x00002828
};

Vtx_t _spot18_room_3_vertices_00002838[4] = 
{
	 { 431, 396, -28, 0, -5011, 2048, 102, 102, 102, 255 }, // 0x00002838
	 { 477, 397, -400, 0, -6255, 0, 127, 127, 127, 255 }, // 0x00002848
	 { 105, 397, -385, 0, -7485, 2048, 114, 114, 114, 255 }, // 0x00002858
	 { 595, 400, 23, 0, -4253, 0, 204, 204, 204, 255 }, // 0x00002868
};

Vtx_t _spot18_room_3_vertices_00002878[3] = 
{
	 { 105, 397, -385, 0, -7485, 0, 114, 114, 114, 255 }, // 0x00002878
	 { 431, 196, -28, 0, -5011, 2048, 153, 153, 153, 255 }, // 0x00002888
	 { 431, 396, -28, 0, -5011, 0, 102, 102, 102, 255 }, // 0x00002898
};

Vtx_t _spot18_room_3_vertices_000028A8[4] = 
{
	 { 431, 396, -28, 0, -5011, 0, 102, 102, 102, 255 }, // 0x000028A8
	 { 431, 196, -28, 0, -5011, 2048, 153, 153, 153, 255 }, // 0x000028B8
	 { 363, 196, 491, 0, -2329, 2048, 153, 153, 153, 255 }, // 0x000028C8
	 { 363, 396, 491, 0, -2329, 0, 102, 102, 102, 255 }, // 0x000028D8
};

Vtx_t _spot18_room_3_vertices_000028E8[5] = 
{
	 { 217, 197, 295, 0, -1160, 2048, 51, 51, 51, 255 }, // 0x000028E8
	 { 363, 196, 491, 0, -150, 0, 153, 153, 153, 255 }, // 0x000028F8
	 { 431, 196, -28, 0, -2679, 0, 153, 153, 153, 255 }, // 0x00002908
	 { 215, 197, -119, 0, -3278, 2048, 51, 51, 51, 255 }, // 0x00002918
	 { 105, 197, -385, 0, -4749, 2048, 51, 51, 51, 255 }, // 0x00002928
};

Vtx_t _spot18_room_3_vertices_00002938[6] = 
{
	 { 105, 197, -385, 0, -4749, 0, 51, 51, 51, 255 }, // 0x00002938
	 { 105, -3, -385, 0, -4749, 2048, 76, 76, 76, 255 }, // 0x00002948
	 { 215, -3, -119, 0, -3278, 2048, 76, 76, 76, 255 }, // 0x00002958
	 { 215, 197, -119, 0, -3278, 0, 51, 51, 51, 255 }, // 0x00002968
	 { 217, -3, 295, 0, -1160, 2048, 76, 76, 76, 255 }, // 0x00002978
	 { 217, 197, 295, 0, -1160, 0, 51, 51, 51, 255 }, // 0x00002988
};

Vtx_t _spot18_room_3_vertices_00002998[5] = 
{
	 { 595, 400, 23, 0, -4859, 0, 204, 204, 204, 255 }, // 0x00002998
	 { 431, 396, -28, 0, -5011, 2048, 102, 102, 102, 255 }, // 0x000029A8
	 { 581, 400, 183, 0, -4038, 0, 204, 204, 204, 255 }, // 0x000029B8
	 { 363, 396, 491, 0, -2329, 2048, 102, 102, 102, 255 }, // 0x000029C8
	 { 541, 400, 664, 0, -1569, 0, 204, 204, 204, 255 }, // 0x000029D8
};

Vtx_t _spot18_room_3_vertices_000029E8[12] = 
{
	 { 371, 456, 498, 0, 10240, 0, 212, 171, 123, 255 }, // 0x000029E8
	 { 371, 396, 498, 0, 10240, 2048, 117, 100, 70, 255 }, // 0x000029F8
	 { 441, 397, -31, 0, -7637, 2048, 117, 100, 70, 255 }, // 0x00002A08
	 { 441, 457, -31, 0, -7637, 0, 212, 171, 123, 255 }, // 0x00002A18
	 { 441, 457, -31, 0, 0, 0, 212, 171, 123, 255 }, // 0x00002A28
	 { 441, 397, -31, 0, 0, 2048, 117, 100, 70, 255 }, // 0x00002A38
	 { 317, 396, -168, 0, 6144, 2048, 117, 100, 70, 255 }, // 0x00002A48
	 { 317, 456, -168, 0, 6144, 0, 212, 171, 123, 255 }, // 0x00002A58
	 { 250, 456, 530, 0, -2048, 0, 212, 171, 123, 255 }, // 0x00002A68
	 { 250, 396, 530, 0, -2048, 2048, 117, 100, 70, 255 }, // 0x00002A78
	 { 371, 396, 498, 0, 2048, 2048, 117, 100, 70, 255 }, // 0x00002A88
	 { 371, 456, 498, 0, 2048, 0, 212, 171, 123, 255 }, // 0x00002A98
};

Vtx_t _spot18_room_3_vertices_00002AA8[8] = 
{
	 { 497, -3, -614, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AA8
	 { 975, -3, 700, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AB8
	 { 497, 800, -614, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AC8
	 { 975, 800, 700, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AD8
	 { -130, -3, -386, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AE8
	 { 349, -3, 928, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AF8
	 { -130, 800, -386, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002B08
	 { 349, 800, 928, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002B18
};

Gfx _spot18_room_3_dlist_00002B28[] =
{
	gsDPPipeSync(), // 0x00002B28
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002B30
	gsSPVertex(_spot18_room_3_vertices_00002AA8, 8, 0), // 0x00002B38
	gsSPCullDisplayList(0, 7), // 0x00002B40
	gsDPPipeSync(), // 0x00002B48
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002B50
	gsDPPipeSync(), // 0x00002B58
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002B60
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002B68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x00002B70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002B78
	gsDPLoadSync(), // 0x00002B80
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002B88
	gsDPPipeSync(), // 0x00002B90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002B98
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002BA0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002BA8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002BB0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002BB8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002BC0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002BC8
	gsSPVertex(_spot18_room_3_vertices_00002348, 3, 0), // 0x00002BD0
	gsSP1Triangle(0, 1, 2, 0), // 0x00002BD8
	gsDPPipeSync(), // 0x00002BE0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000C048), // 0x00002BE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x00002BF0
	gsDPLoadSync(), // 0x00002BF8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002C00
	gsDPPipeSync(), // 0x00002C08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00002C10
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00002C18
	gsSPVertex(_spot18_room_3_vertices_00002378, 7, 0), // 0x00002C20
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002C28
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x00002C30
	gsSP1Triangle(4, 6, 5, 0), // 0x00002C38
	gsDPPipeSync(), // 0x00002C40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x00002C48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002C50
	gsDPLoadSync(), // 0x00002C58
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002C60
	gsDPPipeSync(), // 0x00002C68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002C70
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002C78
	gsSPVertex(_spot18_room_3_vertices_000023E8, 3, 0), // 0x00002C80
	gsSP1Triangle(0, 1, 2, 0), // 0x00002C88
	gsDPPipeSync(), // 0x00002C90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000C048), // 0x00002C98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x00002CA0
	gsDPLoadSync(), // 0x00002CA8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002CB0
	gsDPPipeSync(), // 0x00002CB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00002CC0
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00002CC8
	gsSPVertex(_spot18_room_3_vertices_00002418, 7, 0), // 0x00002CD0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002CD8
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x00002CE0
	gsSP1Triangle(4, 6, 5, 0), // 0x00002CE8
	gsDPPipeSync(), // 0x00002CF0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x00002CF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002D00
	gsDPLoadSync(), // 0x00002D08
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002D10
	gsDPPipeSync(), // 0x00002D18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002D20
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002D28
	gsSPVertex(_spot18_room_3_vertices_00002488, 3, 0), // 0x00002D30
	gsSP1Triangle(0, 1, 2, 0), // 0x00002D38
	gsDPPipeSync(), // 0x00002D40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000C448), // 0x00002D48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x00002D50
	gsDPLoadSync(), // 0x00002D58
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002D60
	gsDPPipeSync(), // 0x00002D68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00002D70
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00002D78
	gsSPVertex(_spot18_room_3_vertices_000024B8, 7, 0), // 0x00002D80
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002D88
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x00002D90
	gsSP1Triangle(4, 6, 5, 0), // 0x00002D98
	gsDPPipeSync(), // 0x00002DA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x00002DA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002DB0
	gsDPLoadSync(), // 0x00002DB8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002DC0
	gsDPPipeSync(), // 0x00002DC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002DD0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002DD8
	gsSPVertex(_spot18_room_3_vertices_00002528, 3, 0), // 0x00002DE0
	gsSP1Triangle(0, 1, 2, 0), // 0x00002DE8
	gsDPPipeSync(), // 0x00002DF0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000C448), // 0x00002DF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x00002E00
	gsDPLoadSync(), // 0x00002E08
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002E10
	gsDPPipeSync(), // 0x00002E18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00002E20
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00002E28
	gsSPVertex(_spot18_room_3_vertices_00002558, 7, 0), // 0x00002E30
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002E38
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x00002E40
	gsSP1Triangle(4, 6, 5, 0), // 0x00002E48
	gsDPPipeSync(), // 0x00002E50
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002E58
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016048), // 0x00002E60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00002E68
	gsDPLoadSync(), // 0x00002E70
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002E78
	gsDPPipeSync(), // 0x00002E80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00002E88
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002E90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x00002E98
	gsDPTileSync(), // 0x00002EA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002EA8
	gsDPLoadSync(), // 0x00002EB0
	gsDPLoadTLUTCmd(7, 255), // 0x00002EB8
	gsDPPipeSync(), // 0x00002EC0
	gsSPVertex(_spot18_room_3_vertices_000025C8, 3, 0), // 0x00002EC8
	gsSP1Triangle(0, 1, 2, 0), // 0x00002ED0
	gsDPPipeSync(), // 0x00002ED8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00002EE0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00002EE8
	gsDPLoadSync(), // 0x00002EF0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002EF8
	gsDPPipeSync(), // 0x00002F00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00002F08
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002F10
	gsSPVertex(_spot18_room_3_vertices_000025F8, 10, 0), // 0x00002F18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002F20
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002F28
	gsSP2Triangles(6, 0, 8, 0, 6, 8, 9, 0), // 0x00002F30
	gsDPPipeSync(), // 0x00002F38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00011C48), // 0x00002F40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00002F48
	gsDPLoadSync(), // 0x00002F50
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002F58
	gsDPPipeSync(), // 0x00002F60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00002F68
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002F70
	gsSPVertex(_spot18_room_3_vertices_00002698, 4, 0), // 0x00002F78
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002F80
	gsDPPipeSync(), // 0x00002F88
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015848), // 0x00002F90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00002F98
	gsDPLoadSync(), // 0x00002FA0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002FA8
	gsDPPipeSync(), // 0x00002FB0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00002FB8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00002FC0
	gsSPVertex(_spot18_room_3_vertices_000026D8, 6, 0), // 0x00002FC8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002FD0
	gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0), // 0x00002FD8
	gsDPPipeSync(), // 0x00002FE0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00002FE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002FF0
	gsDPLoadSync(), // 0x00002FF8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003000
	gsDPPipeSync(), // 0x00003008
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003010
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003018
	gsSPVertex(_spot18_room_3_vertices_00002738, 4, 0), // 0x00003020
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00003028
	gsDPPipeSync(), // 0x00003030
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00003038
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003040
	gsDPLoadSync(), // 0x00003048
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003050
	gsDPPipeSync(), // 0x00003058
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003060
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003068
	gsSPVertex(_spot18_room_3_vertices_00002778, 4, 0), // 0x00003070
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00003078
	gsDPPipeSync(), // 0x00003080
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000DC48), // 0x00003088
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003090
	gsDPLoadSync(), // 0x00003098
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000030A0
	gsDPPipeSync(), // 0x000030A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000030B0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000030B8
	gsSPVertex(_spot18_room_3_vertices_000027B8, 4, 0), // 0x000030C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000030C8
	gsDPPipeSync(), // 0x000030D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016048), // 0x000030D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000030E0
	gsDPLoadSync(), // 0x000030E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000030F0
	gsDPPipeSync(), // 0x000030F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003100
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003108
	gsSPVertex(_spot18_room_3_vertices_000027F8, 4, 0), // 0x00003110
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003118
	gsDPPipeSync(), // 0x00003120
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015848), // 0x00003128
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003130
	gsDPLoadSync(), // 0x00003138
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003140
	gsDPPipeSync(), // 0x00003148
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003150
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003158
	gsSPVertex(_spot18_room_3_vertices_00002838, 4, 0), // 0x00003160
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00003168
	gsDPPipeSync(), // 0x00003170
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00011448), // 0x00003178
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003180
	gsDPLoadSync(), // 0x00003188
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003190
	gsDPPipeSync(), // 0x00003198
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000031A0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000031A8
	gsSPVertex(_spot18_room_3_vertices_00002878, 3, 0), // 0x000031B0
	gsSP1Triangle(0, 1, 2, 0), // 0x000031B8
	gsDPPipeSync(), // 0x000031C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016048), // 0x000031C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000031D0
	gsDPLoadSync(), // 0x000031D8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000031E0
	gsDPPipeSync(), // 0x000031E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000031F0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000031F8
	gsSPVertex(_spot18_room_3_vertices_000028A8, 4, 0), // 0x00003200
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003208
	gsDPPipeSync(), // 0x00003210
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000E448), // 0x00003218
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003220
	gsDPLoadSync(), // 0x00003228
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003230
	gsDPPipeSync(), // 0x00003238
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003240
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00003248
	gsSPVertex(_spot18_room_3_vertices_000028E8, 5, 0), // 0x00003250
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00003258
	gsSP1Triangle(2, 4, 3, 0), // 0x00003260
	gsDPPipeSync(), // 0x00003268
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016048), // 0x00003270
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00003278
	gsDPLoadSync(), // 0x00003280
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00003288
	gsDPPipeSync(), // 0x00003290
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00003298
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000032A0
	gsSPVertex(_spot18_room_3_vertices_00002938, 6, 0), // 0x000032A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000032B0
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0), // 0x000032B8
	gsDPPipeSync(), // 0x000032C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015048), // 0x000032C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000032D0
	gsDPLoadSync(), // 0x000032D8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000032E0
	gsDPPipeSync(), // 0x000032E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000032F0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000032F8
	gsSPVertex(_spot18_room_3_vertices_00002998, 5, 0), // 0x00003300
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0), // 0x00003308
	gsSP1Triangle(1, 3, 2, 0), // 0x00003310
	gsDPPipeSync(), // 0x00003318
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003320
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00017448), // 0x00003328
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 6, 0), // 0x00003330
	gsDPLoadSync(), // 0x00003338
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00003340
	gsDPPipeSync(), // 0x00003348
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 6, 0, 0, 6, 0), // 0x00003350
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00003358
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003360
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00003368
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00003370
	gsSPVertex(_spot18_room_3_vertices_000029E8, 12, 0), // 0x00003378
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003380
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003388
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003390
	gsSPEndDisplayList(), // 0x00003398
};

Vtx_t _spot18_room_3_vertices_000033A0[3] = 
{
	 { 31, 77, 423, 0, -180, 884, 127, 127, 127, 255 }, // 0x000033A0
	 { 15, 76, 428, 0, 1226, 884, 127, 127, 127, 255 }, // 0x000033B0
	 { 27, 77, 439, 0, 523, -207, 127, 127, 127, 255 }, // 0x000033C0
};

Vtx_t _spot18_room_3_vertices_000033D0[7] = 
{
	 { 31, 77, 423, 0, 211, 0, 127, 127, 127, 255 }, // 0x000033D0
	 { 22, -4, 421, 0, 403, 1024, 76, 76, 76, 255 }, // 0x000033E0
	 { 15, 76, 428, 0, 593, 0, 127, 127, 127, 255 }, // 0x000033F0
	 { 33, -3, 432, 0, 19, 1024, 76, 76, 76, 255 }, // 0x00003400
	 { 18, -4, 437, 0, 785, 1024, 76, 76, 76, 255 }, // 0x00003410
	 { 27, 77, 439, 0, 975, 0, 127, 127, 127, 255 }, // 0x00003420
	 { 33, -3, 432, 0, 1165, 1024, 76, 76, 76, 255 }, // 0x00003430
};

Vtx_t _spot18_room_3_vertices_00003440[3] = 
{
	 { -129, 77, 393, 0, -180, 884, 127, 127, 127, 255 }, // 0x00003440
	 { -114, 76, 387, 0, 1226, 884, 127, 127, 127, 255 }, // 0x00003450
	 { -126, 77, 377, 0, 523, -207, 127, 127, 127, 255 }, // 0x00003460
};

Vtx_t _spot18_room_3_vertices_00003470[7] = 
{
	 { -129, 77, 393, 0, 211, 0, 127, 127, 127, 255 }, // 0x00003470
	 { -120, -4, 394, 0, 403, 1024, 76, 76, 76, 255 }, // 0x00003480
	 { -114, 76, 387, 0, 593, 0, 127, 127, 127, 255 }, // 0x00003490
	 { -132, -3, 384, 0, 19, 1024, 76, 76, 76, 255 }, // 0x000034A0
	 { -117, -4, 378, 0, 785, 1024, 76, 76, 76, 255 }, // 0x000034B0
	 { -126, 77, 377, 0, 975, 0, 127, 127, 127, 255 }, // 0x000034C0
	 { -132, -3, 384, 0, 1165, 1024, 76, 76, 76, 255 }, // 0x000034D0
};

Vtx_t _spot18_room_3_vertices_000034E0[3] = 
{
	 { -379, 276, 458, 0, -180, 884, 165, 165, 165, 255 }, // 0x000034E0
	 { -363, 276, 458, 0, 1226, 884, 165, 165, 165, 255 }, // 0x000034F0
	 { -372, 276, 444, 0, 523, -207, 165, 165, 165, 255 }, // 0x00003500
};

Vtx_t _spot18_room_3_vertices_00003510[7] = 
{
	 { -379, 276, 458, 0, 211, 0, 165, 165, 165, 255 }, // 0x00003510
	 { -371, 188, 463, 0, 403, 1024, 140, 140, 140, 255 }, // 0x00003520
	 { -363, 276, 458, 0, 593, 0, 165, 165, 165, 255 }, // 0x00003530
	 { -380, 188, 449, 0, 19, 1024, 140, 140, 140, 255 }, // 0x00003540
	 { -363, 188, 448, 0, 785, 1024, 140, 140, 140, 255 }, // 0x00003550
	 { -372, 276, 444, 0, 975, 0, 165, 165, 165, 255 }, // 0x00003560
	 { -380, 188, 449, 0, 1165, 1024, 140, 140, 140, 255 }, // 0x00003570
};

Vtx_t _spot18_room_3_vertices_00003580[3] = 
{
	 { -231, 276, 520, 0, -180, 884, 165, 165, 165, 255 }, // 0x00003580
	 { -247, 276, 520, 0, 1226, 884, 165, 165, 165, 255 }, // 0x00003590
	 { -238, 276, 534, 0, 523, -207, 165, 165, 165, 255 }, // 0x000035A0
};

Vtx_t _spot18_room_3_vertices_000035B0[7] = 
{
	 { -231, 276, 520, 0, 211, 0, 165, 165, 165, 255 }, // 0x000035B0
	 { -239, 188, 516, 0, 403, 1024, 140, 140, 140, 255 }, // 0x000035C0
	 { -247, 276, 520, 0, 593, 0, 165, 165, 165, 255 }, // 0x000035D0
	 { -230, 188, 529, 0, 19, 1024, 140, 140, 140, 255 }, // 0x000035E0
	 { -246, 188, 530, 0, 785, 1024, 140, 140, 140, 255 }, // 0x000035F0
	 { -238, 276, 534, 0, 975, 0, 165, 165, 165, 255 }, // 0x00003600
	 { -230, 188, 529, 0, 1165, 1024, 140, 140, 140, 255 }, // 0x00003610
};

Vtx_t _spot18_room_3_vertices_00003620[3] = 
{
	 { -816, 680, 580, 0, -180, 884, 191, 191, 191, 255 }, // 0x00003620
	 { -807, 680, 594, 0, 1226, 884, 191, 191, 191, 255 }, // 0x00003630
	 { -800, 680, 580, 0, 523, -207, 191, 191, 191, 255 }, // 0x00003640
};

Vtx_t _spot18_room_3_vertices_00003650[7] = 
{
	 { -816, 680, 580, 0, 211, 0, 191, 191, 191, 255 }, // 0x00003650
	 { -815, 600, 590, 0, 403, 1024, 191, 191, 191, 255 }, // 0x00003660
	 { -807, 680, 594, 0, 593, 0, 191, 191, 191, 255 }, // 0x00003670
	 { -808, 600, 575, 0, 19, 1024, 191, 191, 191, 255 }, // 0x00003680
	 { -799, 600, 589, 0, 785, 1024, 191, 191, 191, 255 }, // 0x00003690
	 { -800, 680, 580, 0, 975, 0, 191, 191, 191, 255 }, // 0x000036A0
	 { -808, 600, 575, 0, 1165, 1024, 191, 191, 191, 255 }, // 0x000036B0
};

Vtx_t _spot18_room_3_vertices_000036C0[3] = 
{
	 { -800, 680, 740, 0, -180, 884, 191, 191, 191, 255 }, // 0x000036C0
	 { -809, 680, 726, 0, 1226, 884, 191, 191, 191, 255 }, // 0x000036D0
	 { -816, 680, 741, 0, 523, -207, 191, 191, 191, 255 }, // 0x000036E0
};

Vtx_t _spot18_room_3_vertices_000036F0[7] = 
{
	 { -800, 680, 740, 0, 211, 0, 191, 191, 191, 255 }, // 0x000036F0
	 { -801, 600, 731, 0, 403, 1024, 191, 191, 191, 255 }, // 0x00003700
	 { -809, 680, 726, 0, 593, 0, 191, 191, 191, 255 }, // 0x00003710
	 { -808, 600, 745, 0, 19, 1024, 191, 191, 191, 255 }, // 0x00003720
	 { -817, 600, 731, 0, 785, 1024, 191, 191, 191, 255 }, // 0x00003730
	 { -816, 680, 741, 0, 975, 0, 191, 191, 191, 255 }, // 0x00003740
	 { -808, 600, 745, 0, 1165, 1024, 191, 191, 191, 255 }, // 0x00003750
};

Vtx_t _spot18_room_3_vertices_00003760[3] = 
{
	 { -414, 400, 1134, 0, 819, -1454, 102, 102, 102, 255 }, // 0x00003760
	 { -295, 400, 1147, 0, 2048, -1454, 102, 102, 102, 255 }, // 0x00003770
	 { -251, 400, 749, 0, 2048, -4054, 204, 204, 204, 255 }, // 0x00003780
};

Vtx_t _spot18_room_3_vertices_00003790[4] = 
{
	 { -253, 560, 771, 0, -1042, 0, 165, 165, 165, 255 }, // 0x00003790
	 { -253, 520, 771, 0, -1052, 2048, 165, 165, 165, 255 }, // 0x000037A0
	 { -373, 520, 758, 0, 3072, 2048, 165, 165, 165, 255 }, // 0x000037B0
	 { -373, 560, 758, 0, 3082, 0, 165, 165, 165, 255 }, // 0x000037C0
};

Vtx_t _spot18_room_3_vertices_000037D0[3] = 
{
	 { -370, 400, 736, 0, 819, -4054, 204, 204, 204, 255 }, // 0x000037D0
	 { -414, 400, 1134, 0, 819, -1454, 102, 102, 102, 255 }, // 0x000037E0
	 { -251, 400, 749, 0, 2048, -4054, 204, 204, 204, 255 }, // 0x000037F0
};

Vtx_t _spot18_room_3_vertices_00003800[4] = 
{
	 { -625, 400, 1412, 0, 687, 2048, 216, 216, 216, 255 }, // 0x00003800
	 { -492, 560, 1427, 0, 0, 410, 51, 51, 51, 255 }, // 0x00003810
	 { -492, 400, 1427, 0, 0, 2048, 153, 153, 153, 255 }, // 0x00003820
	 { -625, 560, 1412, 0, 687, 0, 89, 89, 89, 255 }, // 0x00003830
};

Vtx_t _spot18_room_3_vertices_00003840[6] = 
{
	 { -376, 400, 1384, 0, 2048, 221, 102, 102, 102, 255 }, // 0x00003840
	 { -507, 400, 1305, 0, 819, 840, 153, 153, 153, 255 }, // 0x00003850
	 { -492, 400, 1427, 0, 2048, 1024, 153, 153, 153, 255 }, // 0x00003860
	 { -376, 400, 1384, 0, 2048, 221, 102, 102, 102, 255 }, // 0x00003870
	 { -455, 400, 1285, 0, 819, 481, 102, 102, 102, 255 }, // 0x00003880
	 { -507, 400, 1305, 0, 819, 840, 153, 153, 153, 255 }, // 0x00003890
};

Vtx_t _spot18_room_3_vertices_000038A0[8] = 
{
	 { -492, 400, 1427, 0, 0, 2048, 153, 153, 153, 255 }, // 0x000038A0
	 { -376, 560, 1384, 0, -633, 410, 25, 25, 25, 255 }, // 0x000038B0
	 { -376, 400, 1384, 0, -633, 2048, 102, 102, 102, 255 }, // 0x000038C0
	 { -492, 560, 1427, 0, 0, 410, 51, 51, 51, 255 }, // 0x000038D0
	 { -455, 400, 1285, 0, 1849, 2048, 102, 102, 102, 255 }, // 0x000038E0
	 { -507, 560, 1305, 0, 1566, 410, 51, 51, 51, 255 }, // 0x000038F0
	 { -507, 400, 1305, 0, 1566, 2048, 153, 153, 153, 255 }, // 0x00003900
	 { -455, 560, 1285, 0, 1849, 410, 25, 25, 25, 255 }, // 0x00003910
};

Vtx_t _spot18_room_3_vertices_00003920[5] = 
{
	 { -309, 400, 1280, 0, 2048, -582, 102, 102, 102, 255 }, // 0x00003920
	 { -455, 400, 1285, 0, 819, -39, 102, 102, 102, 255 }, // 0x00003930
	 { -376, 400, 1384, 0, 2048, 221, 102, 102, 102, 255 }, // 0x00003940
	 { -425, 400, 1239, 0, 819, -398, 102, 102, 102, 255 }, // 0x00003950
	 { -455, 400, 1285, 0, 819, -39, 102, 102, 102, 255 }, // 0x00003960
};

Vtx_t _spot18_room_3_vertices_00003970[8] = 
{
	 { -376, 400, 1384, 0, -633, 2048, 102, 102, 102, 255 }, // 0x00003970
	 { -309, 560, 1280, 0, -1266, 410, 25, 25, 25, 255 }, // 0x00003980
	 { -309, 400, 1280, 0, -1266, 2048, 102, 102, 102, 255 }, // 0x00003990
	 { -376, 560, 1384, 0, -633, 410, 25, 25, 25, 255 }, // 0x000039A0
	 { -425, 400, 1239, 0, 2132, 2048, 102, 102, 102, 255 }, // 0x000039B0
	 { -455, 560, 1285, 0, 1849, 410, 25, 25, 25, 255 }, // 0x000039C0
	 { -455, 400, 1285, 0, 1849, 2048, 102, 102, 102, 255 }, // 0x000039D0
	 { -425, 560, 1239, 0, 2132, 410, 25, 25, 25, 255 }, // 0x000039E0
};

Vtx_t _spot18_room_3_vertices_000039F0[6] = 
{
	 { -295, 400, 1147, 0, 2048, -1454, 102, 102, 102, 255 }, // 0x000039F0
	 { -425, 400, 1239, 0, 819, -767, 102, 102, 102, 255 }, // 0x00003A00
	 { -309, 400, 1280, 0, 2048, -582, 102, 102, 102, 255 }, // 0x00003A10
	 { -295, 400, 1147, 0, 2048, -1454, 102, 102, 102, 255 }, // 0x00003A20
	 { -414, 400, 1134, 0, 819, -1454, 102, 102, 102, 255 }, // 0x00003A30
	 { -425, 400, 1239, 0, 819, -767, 102, 102, 102, 255 }, // 0x00003A40
};

Vtx_t _spot18_room_3_vertices_00003A50[8] = 
{
	 { -309, 400, 1280, 0, -1266, 2048, 102, 102, 102, 255 }, // 0x00003A50
	 { -309, 560, 1280, 0, -1266, 410, 25, 25, 25, 255 }, // 0x00003A60
	 { -295, 400, 1147, 0, -1953, 2048, 102, 102, 102, 255 }, // 0x00003A70
	 { -295, 560, 1147, 0, -1953, 410, 37, 37, 38, 255 }, // 0x00003A80
	 { -414, 400, 1134, 0, 2674, 2048, 102, 102, 102, 255 }, // 0x00003A90
	 { -425, 560, 1239, 0, 2132, 410, 25, 25, 25, 255 }, // 0x00003AA0
	 { -425, 400, 1239, 0, 2132, 2048, 102, 102, 102, 255 }, // 0x00003AB0
	 { -414, 560, 1134, 0, 2674, 410, 37, 37, 38, 255 }, // 0x00003AC0
};

Vtx_t _spot18_room_3_vertices_00003AD0[11] = 
{
	 { -309, 560, 1280, 0, 2688, -485, 25, 25, 25, 255 }, // 0x00003AD0
	 { -414, 560, 1134, 0, 2018, 452, 37, 37, 38, 255 }, // 0x00003AE0
	 { -295, 560, 1147, 0, 2781, 369, 37, 37, 38, 255 }, // 0x00003AF0
	 { -425, 560, 1239, 0, 1944, -221, 25, 25, 25, 255 }, // 0x00003B00
	 { -376, 560, 1384, 0, 2259, -1150, 25, 25, 25, 255 }, // 0x00003B10
	 { -455, 560, 1285, 0, 1752, -518, 25, 25, 25, 255 }, // 0x00003B20
	 { -492, 560, 1427, 0, 1517, -1424, 51, 51, 51, 255 }, // 0x00003B30
	 { -507, 560, 1305, 0, 1421, -641, 51, 51, 51, 255 }, // 0x00003B40
	 { -625, 560, 1412, 0, 664, -1331, 89, 89, 89, 255 }, // 0x00003B50
	 { -251, 560, 749, 0, 3059, 2914, 140, 140, 140, 255 }, // 0x00003B60
	 { -370, 560, 736, 0, 2296, 2997, 140, 140, 140, 255 }, // 0x00003B70
};

Vtx_t _spot18_room_3_vertices_00003B80[8] = 
{
	 { -370, 560, 736, 0, 4722, 410, 140, 140, 140, 255 }, // 0x00003B80
	 { -414, 400, 1134, 0, 2674, 2048, 102, 102, 102, 255 }, // 0x00003B90
	 { -370, 400, 736, 0, 4722, 2048, 204, 204, 204, 255 }, // 0x00003BA0
	 { -414, 560, 1134, 0, 2674, 410, 37, 37, 38, 255 }, // 0x00003BB0
	 { -251, 400, 749, 0, -4001, 2048, 204, 204, 204, 255 }, // 0x00003BC0
	 { -295, 400, 1147, 0, -1953, 2048, 102, 102, 102, 255 }, // 0x00003BD0
	 { -251, 560, 749, 0, -4001, 410, 140, 140, 140, 255 }, // 0x00003BE0
	 { -295, 560, 1147, 0, -1953, 410, 37, 37, 38, 255 }, // 0x00003BF0
};

Vtx_t _spot18_room_3_vertices_00003C00[3] = 
{
	 { -492, 400, 1427, 0, 2048, 1024, 153, 153, 153, 255 }, // 0x00003C00
	 { -507, 400, 1305, 0, 819, 1208, 153, 153, 153, 255 }, // 0x00003C10
	 { -625, 400, 1412, 0, 2048, 1896, 216, 216, 216, 255 }, // 0x00003C20
};

Vtx_t _spot18_room_3_vertices_00003C30[8] = 
{
	 { -253, 560, 771, 0, -1042, 0, 165, 165, 165, 255 }, // 0x00003C30
	 { -253, 520, 771, 0, -1052, 2048, 165, 165, 165, 255 }, // 0x00003C40
	 { -373, 520, 758, 0, 3072, 2048, 165, 165, 165, 255 }, // 0x00003C50
	 { -373, 560, 758, 0, 3082, 0, 165, 165, 165, 255 }, // 0x00003C60
	 { 368, 356, 511, 0, -1039, 0, 114, 114, 114, 255 }, // 0x00003C70
	 { 368, 316, 511, 0, -1052, 2048, 127, 127, 127, 255 }, // 0x00003C80
	 { 213, 316, 549, 0, 4115, 2048, 127, 127, 127, 255 }, // 0x00003C90
	 { 213, 356, 549, 0, 4127, 0, 114, 114, 114, 255 }, // 0x00003CA0
};

Vtx_t _spot18_room_3_vertices_00003CB0[15] = 
{
	 { 160, 800, 1000, 0, 534, 0, 140, 140, 140, 255 }, // 0x00003CB0
	 { 658, 800, 816, 0, -2184, 0, 127, 127, 127, 255 }, // 0x00003CC0
	 { 658, 600, 816, 0, -2184, 2048, 242, 242, 242, 255 }, // 0x00003CD0
	 { 160, 600, 1000, 0, 534, 2048, 242, 242, 242, 255 }, // 0x00003CE0
	 { -593, 600, 873, 0, 4462, 2048, 229, 229, 229, 255 }, // 0x00003CF0
	 { -593, 800, 873, 0, 4462, 0, 127, 127, 127, 255 }, // 0x00003D00
	 { -40, 800, 1000, 0, 1558, 0, 140, 140, 140, 255 }, // 0x00003D10
	 { -40, 600, 1000, 0, 1558, 2048, 242, 242, 242, 255 }, // 0x00003D20
	 { 160, 760, 1000, 0, 534, 410, 165, 165, 165, 255 }, // 0x00003D30
	 { -40, 760, 1000, 0, 1558, 410, 165, 165, 165, 255 }, // 0x00003D40
	 { -800, 600, 740, 0, 5722, 2048, 229, 229, 229, 255 }, // 0x00003D50
	 { -800, 800, 740, 0, 5722, 0, 140, 140, 140, 255 }, // 0x00003D60
	 { -800, 800, 580, 0, 6543, 0, 140, 140, 140, 255 }, // 0x00003D70
	 { -800, 760, 740, 0, 5722, 410, 165, 165, 165, 255 }, // 0x00003D80
	 { -800, 760, 580, 0, 6543, 410, 165, 165, 165, 255 }, // 0x00003D90
};

Vtx_t _spot18_room_3_vertices_00003DA0[13] = 
{
	 { -593, 600, 873, 0, 1773, 0, 229, 229, 229, 255 }, // 0x00003DA0
	 { -370, 600, 736, 0, 1638, 2048, 140, 140, 140, 255 }, // 0x00003DB0
	 { -557, 600, 492, 0, 3210, 2048, 153, 153, 153, 255 }, // 0x00003DC0
	 { -251, 600, 749, 0, 1024, 2048, 140, 140, 140, 255 }, // 0x00003DD0
	 { -593, 600, 873, 0, 2694, 0, 229, 229, 229, 255 }, // 0x00003DE0
	 { 168, 600, 795, 0, -1135, 2048, 140, 140, 140, 255 }, // 0x00003DF0
	 { 658, 600, 816, 0, -3465, 0, 242, 242, 242, 255 }, // 0x00003E00
	 { 541, 600, 664, 0, -3157, 2048, 140, 140, 140, 255 }, // 0x00003E10
	 { 160, 600, 1000, 0, -748, 0, 242, 242, 242, 255 }, // 0x00003E20
	 { -40, 600, 1000, 0, -190, 0, 242, 242, 242, 255 }, // 0x00003E30
	 { 160, 600, 1000, 0, -1208, 0, 242, 242, 242, 255 }, // 0x00003E40
	 { -800, 600, 580, 0, 3609, 0, 229, 229, 229, 255 }, // 0x00003E50
	 { -800, 600, 740, 0, 2957, 0, 229, 229, 229, 255 }, // 0x00003E60
};

Vtx_t _spot18_room_3_vertices_00003E70[10] = 
{
	 { -370, 600, 736, 0, 1638, 0, 140, 140, 140, 255 }, // 0x00003E70
	 { -370, 400, 736, 0, 1638, 2048, 204, 204, 204, 255 }, // 0x00003E80
	 { -557, 400, 492, 0, 3210, 2048, 204, 204, 204, 255 }, // 0x00003E90
	 { -557, 600, 492, 0, 3210, 0, 153, 153, 153, 255 }, // 0x00003EA0
	 { 541, 600, 664, 0, -3157, 0, 140, 140, 140, 255 }, // 0x00003EB0
	 { 541, 400, 664, 0, -3157, 2048, 204, 204, 204, 255 }, // 0x00003EC0
	 { 168, 400, 795, 0, -1135, 2048, 204, 204, 204, 255 }, // 0x00003ED0
	 { 168, 600, 795, 0, -1135, 0, 140, 140, 140, 255 }, // 0x00003EE0
	 { -251, 400, 749, 0, 1024, 2048, 204, 204, 204, 255 }, // 0x00003EF0
	 { -251, 600, 749, 0, 1024, 0, 140, 140, 140, 255 }, // 0x00003F00
};

Vtx_t _spot18_room_3_vertices_00003F10[4] = 
{
	 { -370, 560, 736, 0, 1638, 410, 140, 140, 140, 255 }, // 0x00003F10
	 { -370, 600, 736, 0, 1638, 0, 140, 140, 140, 255 }, // 0x00003F20
	 { -251, 600, 749, 0, 1024, 0, 140, 140, 140, 255 }, // 0x00003F30
	 { -251, 560, 749, 0, 1024, 410, 140, 140, 140, 255 }, // 0x00003F40
};

Vtx_t _spot18_room_3_vertices_00003F50[9] = 
{
	 { -370, 400, 736, 0, 995, 0, 204, 204, 204, 255 }, // 0x00003F50
	 { -372, 396, 444, 0, 1706, 2048, 102, 102, 102, 255 }, // 0x00003F60
	 { -557, 400, 492, 0, 2425, 0, 204, 204, 204, 255 }, // 0x00003F70
	 { -231, 396, 520, 0, 887, 2048, 114, 114, 114, 255 }, // 0x00003F80
	 { -78, 396, 601, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00003F90
	 { 168, 400, 795, 0, -982, 0, 204, 204, 204, 255 }, // 0x00003FA0
	 { 208, 396, 530, 0, -1510, 2048, 114, 114, 114, 255 }, // 0x00003FB0
	 { 363, 396, 491, 0, -2329, 2048, 102, 102, 102, 255 }, // 0x00003FC0
	 { 541, 400, 664, 0, -2995, 0, 204, 204, 204, 255 }, // 0x00003FD0
};

Vtx_t _spot18_room_3_vertices_00003FE0[4] = 
{
	 { -78, 396, 601, 0, 0, 0, 102, 102, 102, 255 }, // 0x00003FE0
	 { -78, 197, 601, 0, 0, 2048, 153, 153, 153, 255 }, // 0x00003FF0
	 { -231, 196, 520, 0, 887, 2048, 153, 153, 153, 255 }, // 0x00004000
	 { -231, 396, 520, 0, 887, 0, 114, 114, 114, 255 }, // 0x00004010
};

Vtx_t _spot18_room_3_vertices_00004020[11] = 
{
	 { -372, 356, 444, 0, 1706, 410, 102, 102, 102, 255 }, // 0x00004020
	 { -372, 396, 444, 0, 1706, 0, 102, 102, 102, 255 }, // 0x00004030
	 { -231, 396, 520, 0, 887, 0, 114, 114, 114, 255 }, // 0x00004040
	 { -231, 356, 520, 0, 887, 410, 102, 102, 102, 255 }, // 0x00004050
	 { 208, 196, 530, 0, -1510, 2048, 153, 153, 153, 255 }, // 0x00004060
	 { -78, 197, 601, 0, 0, 2048, 153, 153, 153, 255 }, // 0x00004070
	 { -78, 396, 601, 0, 0, 0, 102, 102, 102, 255 }, // 0x00004080
	 { 208, 396, 530, 0, -1510, 0, 114, 114, 114, 255 }, // 0x00004090
	 { 208, 356, 530, 0, -1510, 410, 102, 102, 102, 255 }, // 0x000040A0
	 { 363, 396, 491, 0, -2329, 0, 102, 102, 102, 255 }, // 0x000040B0
	 { 363, 356, 491, 0, -2329, 410, 102, 102, 102, 255 }, // 0x000040C0
};

Vtx_t _spot18_room_3_vertices_000040D0[3] = 
{
	 { -126, 197, 377, 0, 837, 2048, 51, 51, 51, 255 }, // 0x000040D0
	 { -78, 197, 601, 0, 275, 0, 153, 153, 153, 255 }, // 0x000040E0
	 { 31, 197, 423, 0, 0, 2048, 51, 51, 51, 255 }, // 0x000040F0
};

Vtx_t _spot18_room_3_vertices_00004100[7] = 
{
	 { 217, -3, 295, 0, -1160, 2048, 76, 76, 76, 255 }, // 0x00004100
	 { 31, -3, 423, 0, 0, 2048, 76, 76, 76, 255 }, // 0x00004110
	 { 31, 197, 423, 0, 0, 0, 51, 51, 51, 255 }, // 0x00004120
	 { 217, 197, 295, 0, -1160, 0, 51, 51, 51, 255 }, // 0x00004130
	 { -126, 160, 377, 0, 837, 372, 51, 51, 51, 255 }, // 0x00004140
	 { -126, 197, 377, 0, 837, 0, 51, 51, 51, 255 }, // 0x00004150
	 { 31, 160, 423, 0, 0, 372, 51, 51, 51, 255 }, // 0x00004160
};

Vtx_t _spot18_room_3_vertices_00004170[3] = 
{
	 { -6, 579, 632, 0, 0, 1418, 102, 102, 102, 255 }, // 0x00004170
	 { 34, 579, 630, 0, -1024, 1418, 102, 102, 102, 255 }, // 0x00004180
	 { 20, 558, 779, 0, -512, 0, 63, 63, 63, 255 }, // 0x00004190
};

Vtx_t _spot18_room_3_vertices_000041A0[4] = 
{
	 { -6, 579, 632, 0, 1010, 966, 102, 102, 102, 255 }, // 0x000041A0
	 { -7, 599, 615, 0, 1010, 47, 153, 153, 153, 255 }, // 0x000041B0
	 { 33, 599, 614, 0, 55, 47, 153, 153, 153, 255 }, // 0x000041C0
	 { 34, 579, 630, 0, 55, 966, 102, 102, 102, 255 }, // 0x000041D0
};

Vtx_t _spot18_room_3_vertices_000041E0[24] = 
{
	 { 41, 600, 781, 0, 0, 0, 153, 153, 153, 255 }, // 0x000041E0
	 { 20, 558, 779, 0, -1055, 0, 63, 63, 63, 255 }, // 0x000041F0
	 { 34, 579, 630, 0, -497, 1696, 102, 102, 102, 255 }, // 0x00004200
	 { 33, 599, 614, 0, 0, 2041, 153, 153, 153, 255 }, // 0x00004210
	 { -6, 579, 632, 0, -497, 1696, 102, 102, 102, 255 }, // 0x00004220
	 { 20, 558, 779, 0, -1055, 0, 63, 63, 63, 255 }, // 0x00004230
	 { 0, 600, 777, 0, 0, 0, 153, 153, 153, 255 }, // 0x00004240
	 { -7, 599, 615, 0, 0, 2041, 153, 153, 153, 255 }, // 0x00004250
	 { 0, 600, 777, 0, 0, 0, 153, 153, 153, 255 }, // 0x00004260
	 { 41, 600, 781, 0, -1024, 0, 153, 153, 153, 255 }, // 0x00004270
	 { 33, 599, 614, 0, -1024, 1707, 153, 153, 153, 255 }, // 0x00004280
	 { -7, 599, 615, 0, 0, 1707, 153, 153, 153, 255 }, // 0x00004290
	 { 93, 396, 559, 0, 0, 0, 114, 114, 114, 255 }, // 0x000042A0
	 { 132, 396, 549, 0, -1024, 0, 114, 114, 114, 255 }, // 0x000042B0
	 { 98, 396, 415, 0, -1024, 1707, 114, 114, 114, 255 }, // 0x000042C0
	 { 60, 396, 425, 0, 0, 1707, 114, 114, 114, 255 }, // 0x000042D0
	 { 64, 376, 441, 0, -497, 1696, 76, 76, 76, 255 }, // 0x000042E0
	 { 93, 396, 559, 0, 0, 0, 114, 114, 114, 255 }, // 0x000042F0
	 { 60, 396, 425, 0, 0, 2041, 114, 114, 114, 255 }, // 0x00004300
	 { 113, 354, 554, 0, -1055, 0, 51, 51, 51, 255 }, // 0x00004310
	 { 98, 396, 415, 0, 0, 2041, 114, 114, 114, 255 }, // 0x00004320
	 { 132, 396, 549, 0, 0, 0, 114, 114, 114, 255 }, // 0x00004330
	 { 103, 376, 431, 0, -497, 1696, 76, 76, 76, 255 }, // 0x00004340
	 { 113, 354, 554, 0, -1055, 0, 51, 51, 51, 255 }, // 0x00004350
};

Vtx_t _spot18_room_3_vertices_00004360[4] = 
{
	 { 64, 376, 441, 0, 1010, 966, 76, 76, 76, 255 }, // 0x00004360
	 { 60, 396, 425, 0, 1010, 47, 114, 114, 114, 255 }, // 0x00004370
	 { 98, 396, 415, 0, 55, 47, 114, 114, 114, 255 }, // 0x00004380
	 { 103, 376, 431, 0, 55, 966, 76, 76, 76, 255 }, // 0x00004390
};

Vtx_t _spot18_room_3_vertices_000043A0[6] = 
{
	 { 64, 376, 441, 0, 0, 1418, 76, 76, 76, 255 }, // 0x000043A0
	 { 103, 376, 431, 0, -1024, 1418, 76, 76, 76, 255 }, // 0x000043B0
	 { 113, 354, 554, 0, -512, 0, 51, 51, 51, 255 }, // 0x000043C0
	 { 153, 780, 825, 0, 0, 1418, 114, 114, 114, 255 }, // 0x000043D0
	 { 190, 780, 812, 0, -1024, 1418, 114, 114, 114, 255 }, // 0x000043E0
	 { 229, 758, 974, 0, -512, 0, 63, 63, 63, 255 }, // 0x000043F0
};

Vtx_t _spot18_room_3_vertices_00004400[4] = 
{
	 { 153, 780, 825, 0, 1010, 966, 114, 114, 114, 255 }, // 0x00004400
	 { 147, 800, 810, 0, 1010, 47, 178, 178, 178, 255 }, // 0x00004410
	 { 184, 800, 796, 0, 55, 47, 178, 178, 178, 255 }, // 0x00004420
	 { 190, 780, 812, 0, 55, 966, 114, 114, 114, 255 }, // 0x00004430
};

Vtx_t _spot18_room_3_vertices_00004440[12] = 
{
	 { 248, 800, 967, 0, 0, 0, 178, 178, 178, 255 }, // 0x00004440
	 { 229, 758, 974, 0, -1055, 0, 63, 63, 63, 255 }, // 0x00004450
	 { 190, 780, 812, 0, -497, 1696, 114, 114, 114, 255 }, // 0x00004460
	 { 184, 800, 796, 0, 0, 2041, 178, 178, 178, 255 }, // 0x00004470
	 { 153, 780, 825, 0, -497, 1696, 114, 114, 114, 255 }, // 0x00004480
	 { 229, 758, 974, 0, -1055, 0, 63, 63, 63, 255 }, // 0x00004490
	 { 211, 800, 981, 0, 0, 0, 178, 178, 178, 255 }, // 0x000044A0
	 { 147, 800, 810, 0, 0, 2041, 178, 178, 178, 255 }, // 0x000044B0
	 { 211, 800, 981, 0, 0, 0, 178, 178, 178, 255 }, // 0x000044C0
	 { 248, 800, 967, 0, -1024, 0, 178, 178, 178, 255 }, // 0x000044D0
	 { 184, 800, 796, 0, -1024, 1707, 178, 178, 178, 255 }, // 0x000044E0
	 { 147, 800, 810, 0, 0, 1707, 178, 178, 178, 255 }, // 0x000044F0
};

Vtx_t _spot18_room_3_vertices_00004500[4] = 
{
	 { -593, 600, 873, 0, 2694, 0, 229, 229, 229, 255 }, // 0x00004500
	 { -40, 600, 1000, 0, -190, 0, 242, 242, 242, 255 }, // 0x00004510
	 { -251, 600, 749, 0, 1024, 2048, 140, 140, 140, 255 }, // 0x00004520
	 { 168, 600, 795, 0, -1135, 2048, 140, 140, 140, 255 }, // 0x00004530
};

Vtx_t _spot18_room_3_vertices_00004540[3] = 
{
	 { -251, 400, 749, 0, 557, 0, 204, 204, 204, 255 }, // 0x00004540
	 { 168, 400, 795, 0, -982, 0, 204, 204, 204, 255 }, // 0x00004550
	 { -78, 396, 601, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00004560
};

Vtx_t _spot18_room_3_vertices_00004570[9] = 
{
	 { -372, 196, 444, 0, 1945, 0, 153, 153, 153, 255 }, // 0x00004570
	 { -231, 196, 520, 0, 1143, 0, 153, 153, 153, 255 }, // 0x00004580
	 { -126, 197, 377, 0, 837, 2048, 51, 51, 51, 255 }, // 0x00004590
	 { -78, 197, 601, 0, 275, 0, 153, 153, 153, 255 }, // 0x000045A0
	 { 217, 197, 295, 0, -1160, 2048, 51, 51, 51, 255 }, // 0x000045B0
	 { 31, 197, 423, 0, 0, 2048, 51, 51, 51, 255 }, // 0x000045C0
	 { 208, 196, 530, 0, -439, 0, 153, 153, 153, 255 }, // 0x000045D0
	 { -78, 197, 601, 0, 976, 0, 153, 153, 153, 255 }, // 0x000045E0
	 { 363, 196, 491, 0, -1206, 0, 153, 153, 153, 255 }, // 0x000045F0
};

Vtx_t _spot18_room_3_vertices_00004600[4] = 
{
	 { -370, 400, 736, 0, 995, 0, 204, 204, 204, 255 }, // 0x00004600
	 { -251, 400, 749, 0, 557, 0, 204, 204, 204, 255 }, // 0x00004610
	 { -231, 396, 520, 0, 887, 2048, 114, 114, 114, 255 }, // 0x00004620
	 { -78, 396, 601, 0, 0, 2048, 102, 102, 102, 255 }, // 0x00004630
};

Vtx_t _spot18_room_3_vertices_00004640[8] = 
{
	 { -40, 760, 1213, 0, -36, 12, 76, 76, 76, 255 }, // 0x00004640
	 { -40, 922, 1656, 0, 3145, 12, 0, 0, 0, 255 }, // 0x00004650
	 { -40, 762, 1656, 0, 3146, 1024, 0, 0, 0, 255 }, // 0x00004660
	 { -40, 600, 1213, 0, -35, 1024, 165, 165, 165, 255 }, // 0x00004670
	 { 160, 600, 1213, 0, -35, 1024, 165, 165, 165, 255 }, // 0x00004680
	 { 160, 762, 1656, 0, 3146, 1024, 0, 0, 0, 255 }, // 0x00004690
	 { 160, 922, 1656, 0, 3145, 12, 0, 0, 0, 255 }, // 0x000046A0
	 { 160, 760, 1213, 0, -36, 12, 76, 76, 76, 255 }, // 0x000046B0
};

Vtx_t _spot18_room_3_vertices_000046C0[8] = 
{
	 { 160, 760, 1213, 0, 1623, 2496, 76, 76, 76, 255 }, // 0x000046C0
	 { 160, 922, 1656, 0, 2802, 6568, 0, 0, 0, 255 }, // 0x000046D0
	 { -40, 922, 1656, 0, 4518, 6066, 0, 0, 0, 255 }, // 0x000046E0
	 { -40, 760, 1213, 0, 3338, 1994, 76, 76, 76, 255 }, // 0x000046F0
	 { 160, 762, 1656, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00004700
	 { -40, 762, 1656, 0, 931, 1024, 0, 0, 0, 255 }, // 0x00004710
	 { -40, 922, 1656, 0, 931, 279, 0, 0, 0, 255 }, // 0x00004720
	 { 160, 922, 1656, 0, 0, 279, 0, 0, 0, 255 }, // 0x00004730
};

Vtx_t _spot18_room_3_vertices_00004740[8] = 
{
	 { -40, 600, 1213, 0, 0, 4866, 165, 165, 165, 255 }, // 0x00004740
	 { -40, 762, 1656, 0, 0, 8651, 0, 0, 0, 255 }, // 0x00004750
	 { 160, 762, 1656, 0, 1707, 8651, 0, 0, 0, 255 }, // 0x00004760
	 { 160, 600, 1213, 0, 1707, 4866, 165, 165, 165, 255 }, // 0x00004770
	 { -40, 600, 1000, 0, 0, 1024, 242, 242, 242, 255 }, // 0x00004780
	 { -40, 600, 1213, 0, 0, 2840, 165, 165, 165, 255 }, // 0x00004790
	 { 160, 600, 1213, 0, 1707, 2840, 165, 165, 165, 255 }, // 0x000047A0
	 { 160, 600, 1000, 0, 1707, 1024, 242, 242, 242, 255 }, // 0x000047B0
};

Vtx_t _spot18_room_3_vertices_000047C0[4] = 
{
	 { 160, 760, 1000, 0, 496, -933, 165, 165, 165, 255 }, // 0x000047C0
	 { 160, 760, 1213, 0, 1062, 790, 165, 165, 165, 255 }, // 0x000047D0
	 { -40, 760, 1213, 0, 2778, 287, 76, 76, 76, 255 }, // 0x000047E0
	 { -40, 760, 1000, 0, 2212, -1436, 165, 165, 165, 255 }, // 0x000047F0
};

Vtx_t _spot18_room_3_vertices_00004800[8] = 
{
	 { -40, 760, 1000, 0, 1558, 410, 165, 165, 165, 255 }, // 0x00004800
	 { -40, 760, 1213, 0, 469, 410, 165, 165, 165, 255 }, // 0x00004810
	 { -40, 600, 1213, 0, 469, 2048, 165, 165, 165, 255 }, // 0x00004820
	 { -40, 600, 1000, 0, 1558, 2048, 242, 242, 242, 255 }, // 0x00004830
	 { 160, 600, 1000, 0, 534, 2048, 242, 242, 242, 255 }, // 0x00004840
	 { 160, 600, 1213, 0, 1623, 2048, 165, 165, 165, 255 }, // 0x00004850
	 { 160, 760, 1213, 0, 1623, 410, 76, 76, 76, 255 }, // 0x00004860
	 { 160, 760, 1000, 0, 534, 410, 165, 165, 165, 255 }, // 0x00004870
};

Vtx_t _spot18_room_3_vertices_00004880[4] = 
{
	 { 639, 356, 1593, 0, -1964, 1775, 0, 0, 0, 255 }, // 0x00004880
	 { 639, 196, 1593, 0, -747, 1775, 0, 0, 0, 255 }, // 0x00004890
	 { 484, 196, 1632, 0, -747, 1319, 0, 0, 0, 255 }, // 0x000048A0
	 { 484, 356, 1632, 0, -1964, 1319, 0, 0, 0, 255 }, // 0x000048B0
};

Vtx_t _spot18_room_3_vertices_000048C0[6] = 
{
	 { 394, 196, 1271, 0, -1865, 39, 63, 63, 63, 255 }, // 0x000048C0
	 { 484, 196, 1632, 0, -3768, 39, 0, 0, 0, 255 }, // 0x000048D0
	 { 639, 196, 1593, 0, -3768, 1646, 0, 0, 0, 255 }, // 0x000048E0
	 { 549, 196, 1232, 0, -1865, 1646, 63, 63, 63, 255 }, // 0x000048F0
	 { 208, 196, 530, 0, 2048, 39, 153, 153, 153, 255 }, // 0x00004900
	 { 363, 196, 491, 0, 2048, 1646, 153, 153, 153, 255 }, // 0x00004910
};

Vtx_t _spot18_room_3_vertices_00004920[6] = 
{
	 { 549, 356, 1232, 0, 1219, 2080, 63, 63, 63, 255 }, // 0x00004920
	 { 639, 356, 1593, 0, 1528, 3214, 0, 0, 0, 255 }, // 0x00004930
	 { 484, 356, 1632, 0, 2568, 2930, 0, 0, 0, 255 }, // 0x00004940
	 { 394, 356, 1271, 0, 2259, 1796, 63, 63, 63, 255 }, // 0x00004950
	 { 363, 356, 491, 0, 583, -252, 102, 102, 102, 255 }, // 0x00004960
	 { 208, 356, 530, 0, 1623, -536, 102, 102, 102, 255 }, // 0x00004970
};

Vtx_t _spot18_room_3_vertices_00004980[12] = 
{
	 { 394, 356, 1271, 0, -80, 410, 63, 63, 63, 255 }, // 0x00004980
	 { 484, 356, 1632, 0, -1983, 410, 0, 0, 0, 255 }, // 0x00004990
	 { 484, 196, 1632, 0, -1983, 2048, 0, 0, 0, 255 }, // 0x000049A0
	 { 394, 196, 1271, 0, -80, 2048, 63, 63, 63, 255 }, // 0x000049B0
	 { 208, 356, 530, 0, 3834, 410, 102, 102, 102, 255 }, // 0x000049C0
	 { 208, 196, 530, 0, 3834, 2048, 153, 153, 153, 255 }, // 0x000049D0
	 { 549, 196, 1232, 0, 3913, 2048, 63, 63, 63, 255 }, // 0x000049E0
	 { 639, 196, 1593, 0, 5816, 2048, 0, 0, 0, 255 }, // 0x000049F0
	 { 639, 356, 1593, 0, 5816, 410, 0, 0, 0, 255 }, // 0x00004A00
	 { 549, 356, 1232, 0, 3913, 410, 63, 63, 63, 255 }, // 0x00004A10
	 { 363, 196, 491, 0, 0, 2048, 153, 153, 153, 255 }, // 0x00004A20
	 { 363, 356, 491, 0, 0, 410, 102, 102, 102, 255 }, // 0x00004A30
};

Vtx_t _spot18_room_3_vertices_00004A40[4] = 
{
	 { 31, -3, 423, 0, 1461, 2564, 76, 76, 76, 255 }, // 0x00004A40
	 { -126, -3, 377, 0, 87, 2803, 76, 76, 76, 255 }, // 0x00004A50
	 { -158, -4, 555, 0, 517, 4292, 76, 76, 76, 255 }, // 0x00004A60
	 { -17, -4, 631, 0, 1882, 4336, 76, 76, 76, 255 }, // 0x00004A70
};

Vtx_t _spot18_room_3_vertices_00004A80[8] = 
{
	 { -382, 276, 802, 0, 1541, 410, 37, 37, 38, 255 }, // 0x00004A80
	 { -382, 116, 802, 0, 1541, 2048, 89, 89, 89, 255 }, // 0x00004A90
	 { -523, 116, 726, 0, 2565, 2048, 89, 89, 89, 255 }, // 0x00004AA0
	 { -523, 276, 726, 0, 2565, 410, 37, 37, 38, 255 }, // 0x00004AB0
	 { -372, 356, 444, 0, 4613, 410, 102, 102, 102, 255 }, // 0x00004AC0
	 { -447, 276, 585, 0, 3589, 410, 37, 37, 38, 255 }, // 0x00004AD0
	 { -447, 116, 585, 0, 3589, 2048, 76, 76, 76, 255 }, // 0x00004AE0
	 { -372, 196, 444, 0, 4613, 2048, 153, 153, 153, 255 }, // 0x00004AF0
};

Vtx_t _spot18_room_3_vertices_00004B00[4] = 
{
	 { -231, 356, 520, 0, 964, 2952, 102, 102, 102, 255 }, // 0x00004B00
	 { -306, 276, 661, 0, 1386, 1402, 37, 37, 38, 255 }, // 0x00004B10
	 { -447, 276, 585, 0, 0, 1024, 37, 37, 38, 255 }, // 0x00004B20
	 { -372, 356, 444, 0, -423, 2574, 102, 102, 102, 255 }, // 0x00004B30
};

Vtx_t _spot18_room_3_vertices_00004B40[8] = 
{
	 { -93, 76, 772, 0, -1024, 2048, 89, 89, 89, 255 }, // 0x00004B40
	 { -168, 76, 913, 0, 0, 2048, 89, 89, 89, 255 }, // 0x00004B50
	 { -168, 236, 913, 0, 0, 410, 37, 37, 38, 255 }, // 0x00004B60
	 { -93, 236, 772, 0, -1024, 410, 37, 37, 38, 255 }, // 0x00004B70
	 { -447, 276, 585, 0, 3589, 410, 37, 37, 38, 255 }, // 0x00004B80
	 { -523, 276, 726, 0, 2565, 410, 37, 37, 38, 255 }, // 0x00004B90
	 { -523, 116, 726, 0, 2565, 2048, 89, 89, 89, 255 }, // 0x00004BA0
	 { -447, 116, 585, 0, 3589, 2048, 76, 76, 76, 255 }, // 0x00004BB0
};

Vtx_t _spot18_room_3_vertices_00004BC0[4] = 
{
	 { -306, 276, 661, 0, 1386, 1402, 37, 37, 38, 255 }, // 0x00004BC0
	 { -382, 276, 802, 0, 1725, 162, 37, 37, 38, 255 }, // 0x00004BD0
	 { -523, 276, 726, 0, 338, -216, 37, 37, 38, 255 }, // 0x00004BE0
	 { -447, 276, 585, 0, 0, 1024, 37, 37, 38, 255 }, // 0x00004BF0
};

Vtx_t _spot18_room_3_vertices_00004C00[4] = 
{
	 { -309, 236, 838, 0, 1024, 410, 37, 37, 38, 255 }, // 0x00004C00
	 { -168, 236, 913, 0, 0, 410, 37, 37, 38, 255 }, // 0x00004C10
	 { -168, 76, 913, 0, 0, 2048, 89, 89, 89, 255 }, // 0x00004C20
	 { -309, 76, 838, 0, 1024, 2048, 89, 89, 89, 255 }, // 0x00004C30
};

Vtx_t _spot18_room_3_vertices_00004C40[6] = 
{
	 { -234, 236, 697, 0, 2122, 1459, 37, 37, 38, 255 }, // 0x00004C40
	 { -93, 236, 772, 0, 3509, 1837, 37, 37, 38, 255 }, // 0x00004C50
	 { -168, 236, 913, 0, 3847, 597, 37, 37, 38, 255 }, // 0x00004C60
	 { -309, 236, 838, 0, 2461, 219, 37, 37, 38, 255 }, // 0x00004C70
	 { -158, 156, 555, 0, 1869, 2388, 37, 37, 38, 255 }, // 0x00004C80
	 { -17, 156, 631, 0, 3255, 2767, 37, 37, 38, 255 }, // 0x00004C90
};

Vtx_t _spot18_room_3_vertices_00004CA0[14] = 
{
	 { -158, 156, 555, 0, 1024, 410, 37, 37, 38, 255 }, // 0x00004CA0
	 { -234, 236, 697, 0, 0, 410, 37, 37, 38, 255 }, // 0x00004CB0
	 { -234, 76, 697, 0, 0, 2048, 89, 89, 89, 255 }, // 0x00004CC0
	 { -158, -4, 555, 0, 1024, 2048, 76, 76, 76, 255 }, // 0x00004CD0
	 { -231, 356, 520, 0, -1541, 410, 102, 102, 102, 255 }, // 0x00004CE0
	 { -231, 196, 520, 0, -1541, 2048, 153, 153, 153, 255 }, // 0x00004CF0
	 { -306, 116, 661, 0, -517, 2048, 89, 89, 89, 255 }, // 0x00004D00
	 { -306, 276, 661, 0, -517, 410, 37, 37, 38, 255 }, // 0x00004D10
	 { -234, 236, 697, 0, 0, 410, 37, 37, 38, 255 }, // 0x00004D20
	 { -234, 76, 697, 0, 0, 2048, 89, 89, 89, 255 }, // 0x00004D30
	 { -382, 276, 802, 0, 1541, 410, 37, 37, 38, 255 }, // 0x00004D40
	 { -309, 236, 838, 0, 1024, 410, 37, 37, 38, 255 }, // 0x00004D50
	 { -309, 76, 838, 0, 1024, 2048, 89, 89, 89, 255 }, // 0x00004D60
	 { -382, 116, 802, 0, 1541, 2048, 89, 89, 89, 255 }, // 0x00004D70
};

Vtx_t _spot18_room_3_vertices_00004D80[4] = 
{
	 { -306, 276, 661, 0, 1386, 1402, 37, 37, 38, 255 }, // 0x00004D80
	 { -234, 236, 697, 0, 2122, 1459, 37, 37, 38, 255 }, // 0x00004D90
	 { -309, 236, 838, 0, 2461, 219, 37, 37, 38, 255 }, // 0x00004DA0
	 { -382, 276, 802, 0, 1725, 162, 37, 37, 38, 255 }, // 0x00004DB0
};

Vtx_t _spot18_room_3_vertices_00004DC0[4] = 
{
	 { -17, 156, 631, 0, -2048, 410, 37, 37, 38, 255 }, // 0x00004DC0
	 { -17, -4, 631, 0, -2048, 2048, 76, 76, 76, 255 }, // 0x00004DD0
	 { -93, 76, 772, 0, -1024, 2048, 89, 89, 89, 255 }, // 0x00004DE0
	 { -93, 236, 772, 0, -1024, 410, 37, 37, 38, 255 }, // 0x00004DF0
};

Vtx_t _spot18_room_3_vertices_00004E00[8] = 
{
	 { -447, 116, 585, 0, 3683, 3578, 76, 76, 76, 255 }, // 0x00004E00
	 { -523, 116, 726, 0, 4512, 4165, 89, 89, 89, 255 }, // 0x00004E10
	 { -382, 116, 802, 0, 5099, 3336, 89, 89, 89, 255 }, // 0x00004E20
	 { -306, 116, 661, 0, 4269, 2749, 89, 89, 89, 255 }, // 0x00004E30
	 { -309, 76, 838, 0, 5381, 2907, 89, 89, 89, 255 }, // 0x00004E40
	 { -168, 76, 913, 0, 5968, 2078, 89, 89, 89, 255 }, // 0x00004E50
	 { -93, 76, 772, 0, 5139, 1491, 89, 89, 89, 255 }, // 0x00004E60
	 { -234, 76, 697, 0, 4552, 2321, 89, 89, 89, 255 }, // 0x00004E70
};

Vtx_t _spot18_room_3_vertices_00004E80[12] = 
{
	 { -372, 196, 444, 0, 2048, 0, 153, 153, 153, 255 }, // 0x00004E80
	 { -447, 116, 585, 0, 2048, 4096, 76, 76, 76, 255 }, // 0x00004E90
	 { -306, 116, 661, 0, 0, 4096, 89, 89, 89, 255 }, // 0x00004EA0
	 { -231, 196, 520, 0, 0, 0, 153, 153, 153, 255 }, // 0x00004EB0
	 { -93, 76, 772, 0, 2048, 0, 89, 89, 89, 255 }, // 0x00004EC0
	 { -17, -4, 631, 0, 2048, 4096, 76, 76, 76, 255 }, // 0x00004ED0
	 { -158, -4, 555, 0, 0, 4096, 76, 76, 76, 255 }, // 0x00004EE0
	 { -234, 76, 697, 0, 0, 0, 89, 89, 89, 255 }, // 0x00004EF0
	 { -306, 116, 661, 0, 0, 0, 89, 89, 89, 255 }, // 0x00004F00
	 { -382, 116, 802, 0, 2048, 0, 89, 89, 89, 255 }, // 0x00004F10
	 { -309, 76, 838, 0, 2014, 2066, 89, 89, 89, 255 }, // 0x00004F20
	 { -234, 76, 697, 0, -34, 2066, 89, 89, 89, 255 }, // 0x00004F30
};

Vtx_t _spot18_room_3_vertices_00004F40[4] = 
{
	 { -158, -4, 555, 0, 1024, 2048, 76, 76, 76, 255 }, // 0x00004F40
	 { -126, -3, 377, 0, 2186, 2048, 76, 76, 76, 255 }, // 0x00004F50
	 { -126, 160, 377, 0, 2186, 410, 51, 51, 51, 255 }, // 0x00004F60
	 { -158, 156, 555, 0, 1024, 410, 37, 37, 38, 255 }, // 0x00004F70
};

Vtx_t _spot18_room_3_vertices_00004F80[4] = 
{
	 { -158, 156, 555, 0, 1869, 2388, 37, 37, 38, 255 }, // 0x00004F80
	 { -126, 160, 377, 0, 1012, 3608, 51, 51, 51, 255 }, // 0x00004F90
	 { 31, 160, 423, 0, 2329, 4245, 51, 51, 51, 255 }, // 0x00004FA0
	 { -17, 156, 631, 0, 3255, 2767, 37, 37, 38, 255 }, // 0x00004FB0
};

Vtx_t _spot18_room_3_vertices_00004FC0[4] = 
{
	 { -17, 156, 631, 0, -2048, 410, 37, 37, 38, 255 }, // 0x00004FC0
	 { 31, 160, 423, 0, -3414, 410, 51, 51, 51, 255 }, // 0x00004FD0
	 { 31, -3, 423, 0, -3414, 2048, 76, 76, 76, 255 }, // 0x00004FE0
	 { -17, -4, 631, 0, -2048, 2048, 76, 76, 76, 255 }, // 0x00004FF0
};

Vtx_t _spot18_room_3_vertices_00005000[8] = 
{
	 { -817, -61, 305, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005000
	 { 658, -61, 305, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005010
	 { -817, 727, 166, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005020
	 { 658, 727, 166, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005030
	 { -817, 200, 1784, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005040
	 { 658, 200, 1784, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005050
	 { -817, 988, 1645, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005060
	 { 658, 988, 1645, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005070
};

Gfx _spot18_room_3_dlist_00005080[] =
{
	gsDPPipeSync(), // 0x00005080
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005088
	gsSPVertex(_spot18_room_3_vertices_00005000, 8, 0), // 0x00005090
	gsSPCullDisplayList(0, 7), // 0x00005098
	gsDPPipeSync(), // 0x000050A0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000050A8
	gsDPPipeSync(), // 0x000050B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000050B8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000050C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x000050C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000050D0
	gsDPLoadSync(), // 0x000050D8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000050E0
	gsDPPipeSync(), // 0x000050E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000050F0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000050F8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005100
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005108
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005110
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005118
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005120
	gsSPVertex(_spot18_room_3_vertices_000033A0, 3, 0), // 0x00005128
	gsSP1Triangle(0, 1, 2, 0), // 0x00005130
	gsDPPipeSync(), // 0x00005138
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000BC48), // 0x00005140
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x00005148
	gsDPLoadSync(), // 0x00005150
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005158
	gsDPPipeSync(), // 0x00005160
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00005168
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00005170
	gsSPVertex(_spot18_room_3_vertices_000033D0, 7, 0), // 0x00005178
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005180
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x00005188
	gsSP1Triangle(4, 6, 5, 0), // 0x00005190
	gsDPPipeSync(), // 0x00005198
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x000051A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000051A8
	gsDPLoadSync(), // 0x000051B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000051B8
	gsDPPipeSync(), // 0x000051C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000051C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000051D0
	gsSPVertex(_spot18_room_3_vertices_00003440, 3, 0), // 0x000051D8
	gsSP1Triangle(0, 1, 2, 0), // 0x000051E0
	gsDPPipeSync(), // 0x000051E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000BC48), // 0x000051F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x000051F8
	gsDPLoadSync(), // 0x00005200
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005208
	gsDPPipeSync(), // 0x00005210
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00005218
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00005220
	gsSPVertex(_spot18_room_3_vertices_00003470, 7, 0), // 0x00005228
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005230
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x00005238
	gsSP1Triangle(4, 6, 5, 0), // 0x00005240
	gsDPPipeSync(), // 0x00005248
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x00005250
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005258
	gsDPLoadSync(), // 0x00005260
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005268
	gsDPPipeSync(), // 0x00005270
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005278
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005280
	gsSPVertex(_spot18_room_3_vertices_000034E0, 3, 0), // 0x00005288
	gsSP1Triangle(0, 1, 2, 0), // 0x00005290
	gsDPPipeSync(), // 0x00005298
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000D848), // 0x000052A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x000052A8
	gsDPLoadSync(), // 0x000052B0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000052B8
	gsDPPipeSync(), // 0x000052C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x000052C8
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x000052D0
	gsSPVertex(_spot18_room_3_vertices_00003510, 7, 0), // 0x000052D8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000052E0
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x000052E8
	gsSP1Triangle(4, 6, 5, 0), // 0x000052F0
	gsDPPipeSync(), // 0x000052F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x00005300
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005308
	gsDPLoadSync(), // 0x00005310
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005318
	gsDPPipeSync(), // 0x00005320
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005328
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005330
	gsSPVertex(_spot18_room_3_vertices_00003580, 3, 0), // 0x00005338
	gsSP1Triangle(0, 1, 2, 0), // 0x00005340
	gsDPPipeSync(), // 0x00005348
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000D848), // 0x00005350
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x00005358
	gsDPLoadSync(), // 0x00005360
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005368
	gsDPPipeSync(), // 0x00005370
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00005378
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00005380
	gsSPVertex(_spot18_room_3_vertices_000035B0, 7, 0), // 0x00005388
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005390
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x00005398
	gsSP1Triangle(4, 6, 5, 0), // 0x000053A0
	gsDPPipeSync(), // 0x000053A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x000053B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000053B8
	gsDPLoadSync(), // 0x000053C0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000053C8
	gsDPPipeSync(), // 0x000053D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000053D8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000053E0
	gsSPVertex(_spot18_room_3_vertices_00003620, 3, 0), // 0x000053E8
	gsSP1Triangle(0, 1, 2, 0), // 0x000053F0
	gsDPPipeSync(), // 0x000053F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000C448), // 0x00005400
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x00005408
	gsDPLoadSync(), // 0x00005410
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00005418
	gsDPPipeSync(), // 0x00005420
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00005428
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00005430
	gsSPVertex(_spot18_room_3_vertices_00003650, 7, 0), // 0x00005438
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005440
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x00005448
	gsSP1Triangle(4, 6, 5, 0), // 0x00005450
	gsDPPipeSync(), // 0x00005458
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x00005460
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005468
	gsDPLoadSync(), // 0x00005470
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005478
	gsDPPipeSync(), // 0x00005480
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005488
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005490
	gsSPVertex(_spot18_room_3_vertices_000036C0, 3, 0), // 0x00005498
	gsSP1Triangle(0, 1, 2, 0), // 0x000054A0
	gsDPPipeSync(), // 0x000054A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000C448), // 0x000054B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x000054B8
	gsDPLoadSync(), // 0x000054C0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000054C8
	gsDPPipeSync(), // 0x000054D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x000054D8
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x000054E0
	gsSPVertex(_spot18_room_3_vertices_000036F0, 7, 0), // 0x000054E8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000054F0
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x000054F8
	gsSP1Triangle(4, 6, 5, 0), // 0x00005500
	gsDPPipeSync(), // 0x00005508
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005510
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00005518
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005520
	gsDPLoadSync(), // 0x00005528
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005530
	gsDPPipeSync(), // 0x00005538
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005540
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005548
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x00005550
	gsDPTileSync(), // 0x00005558
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005560
	gsDPLoadSync(), // 0x00005568
	gsDPLoadTLUTCmd(7, 255), // 0x00005570
	gsDPPipeSync(), // 0x00005578
	gsSPVertex(_spot18_room_3_vertices_00003760, 3, 0), // 0x00005580
	gsSP1Triangle(0, 1, 2, 0), // 0x00005588
	gsDPPipeSync(), // 0x00005590
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005598
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000C848), // 0x000055A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000055A8
	gsDPLoadSync(), // 0x000055B0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000055B8
	gsDPPipeSync(), // 0x000055C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000055C8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000055D0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000055D8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000055E0
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000055E8
	gsSPVertex(_spot18_room_3_vertices_00003790, 4, 0), // 0x000055F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000055F8
	gsDPPipeSync(), // 0x00005600
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005608
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00005610
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005618
	gsDPLoadSync(), // 0x00005620
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005628
	gsDPPipeSync(), // 0x00005630
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005638
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005640
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x00005648
	gsDPTileSync(), // 0x00005650
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005658
	gsDPLoadSync(), // 0x00005660
	gsDPLoadTLUTCmd(7, 255), // 0x00005668
	gsDPPipeSync(), // 0x00005670
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005678
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005680
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00005688
	gsSPVertex(_spot18_room_3_vertices_000037D0, 3, 0), // 0x00005690
	gsSP1Triangle(0, 1, 2, 0), // 0x00005698
	gsDPPipeSync(), // 0x000056A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x000056A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000056B0
	gsDPLoadSync(), // 0x000056B8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000056C0
	gsDPPipeSync(), // 0x000056C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000056D0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000056D8
	gsSPVertex(_spot18_room_3_vertices_00003800, 4, 0), // 0x000056E0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000056E8
	gsDPPipeSync(), // 0x000056F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x000056F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005700
	gsDPLoadSync(), // 0x00005708
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005710
	gsDPPipeSync(), // 0x00005718
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005720
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005728
	gsSPVertex(_spot18_room_3_vertices_00003840, 6, 0), // 0x00005730
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00005738
	gsDPPipeSync(), // 0x00005740
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00005748
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005750
	gsDPLoadSync(), // 0x00005758
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005760
	gsDPPipeSync(), // 0x00005768
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005770
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005778
	gsSPVertex(_spot18_room_3_vertices_000038A0, 8, 0), // 0x00005780
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005788
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00005790
	gsDPPipeSync(), // 0x00005798
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x000057A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000057A8
	gsDPLoadSync(), // 0x000057B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000057B8
	gsDPPipeSync(), // 0x000057C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000057C8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000057D0
	gsSPVertex(_spot18_room_3_vertices_00003920, 5, 0), // 0x000057D8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0), // 0x000057E0
	gsDPPipeSync(), // 0x000057E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x000057F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000057F8
	gsDPLoadSync(), // 0x00005800
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005808
	gsDPPipeSync(), // 0x00005810
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005818
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005820
	gsSPVertex(_spot18_room_3_vertices_00003970, 8, 0), // 0x00005828
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005830
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00005838
	gsDPPipeSync(), // 0x00005840
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00005848
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00005850
	gsDPLoadSync(), // 0x00005858
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005860
	gsDPPipeSync(), // 0x00005868
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005870
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005878
	gsSPVertex(_spot18_room_3_vertices_000039F0, 6, 0), // 0x00005880
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00005888
	gsDPPipeSync(), // 0x00005890
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00005898
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000058A0
	gsDPLoadSync(), // 0x000058A8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000058B0
	gsDPPipeSync(), // 0x000058B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000058C0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000058C8
	gsSPVertex(_spot18_room_3_vertices_00003A50, 8, 0), // 0x000058D0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000058D8
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x000058E0
	gsDPPipeSync(), // 0x000058E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x000058F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000058F8
	gsDPLoadSync(), // 0x00005900
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005908
	gsDPPipeSync(), // 0x00005910
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00005918
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00005920
	gsSPVertex(_spot18_room_3_vertices_00003AD0, 11, 0), // 0x00005928
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00005930
	gsSP2Triangles(4, 3, 0, 0, 4, 5, 3, 0), // 0x00005938
	gsSP2Triangles(6, 5, 4, 0, 6, 7, 5, 0), // 0x00005940
	gsSP2Triangles(8, 7, 6, 0, 9, 2, 10, 0), // 0x00005948
	gsSP1Triangle(2, 1, 10, 0), // 0x00005950
	gsDPPipeSync(), // 0x00005958
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00005960
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005968
	gsDPLoadSync(), // 0x00005970
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005978
	gsDPPipeSync(), // 0x00005980
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005988
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005990
	gsSPVertex(_spot18_room_3_vertices_00003B80, 8, 0), // 0x00005998
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000059A0
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x000059A8
	gsDPPipeSync(), // 0x000059B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x000059B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000059C0
	gsDPLoadSync(), // 0x000059C8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000059D0
	gsDPPipeSync(), // 0x000059D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000059E0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000059E8
	gsSPVertex(_spot18_room_3_vertices_00003C00, 3, 0), // 0x000059F0
	gsSP1Triangle(0, 1, 2, 0), // 0x000059F8
	gsDPPipeSync(), // 0x00005A00
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005A08
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000C848), // 0x00005A10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00005A18
	gsDPLoadSync(), // 0x00005A20
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00005A28
	gsDPPipeSync(), // 0x00005A30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00005A38
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005A40
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005A48
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00005A50
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00005A58
	gsSPVertex(_spot18_room_3_vertices_00003C30, 8, 0), // 0x00005A60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005A68
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005A70
	gsDPPipeSync(), // 0x00005A78
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00005A80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00005A88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005A90
	gsDPLoadSync(), // 0x00005A98
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005AA0
	gsDPPipeSync(), // 0x00005AA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005AB0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005AB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x00005AC0
	gsDPTileSync(), // 0x00005AC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00005AD0
	gsDPLoadSync(), // 0x00005AD8
	gsDPLoadTLUTCmd(7, 255), // 0x00005AE0
	gsDPPipeSync(), // 0x00005AE8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005AF0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005AF8
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00005B00
	gsSPVertex(_spot18_room_3_vertices_00003CB0, 15, 0), // 0x00005B08
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005B10
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005B18
	gsSP2Triangles(6, 0, 8, 0, 6, 8, 9, 0), // 0x00005B20
	gsSP2Triangles(5, 4, 10, 0, 11, 5, 10, 0), // 0x00005B28
	gsSP2Triangles(12, 11, 13, 0, 12, 13, 14, 0), // 0x00005B30
	gsDPPipeSync(), // 0x00005B38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015848), // 0x00005B40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005B48
	gsDPLoadSync(), // 0x00005B50
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005B58
	gsDPPipeSync(), // 0x00005B60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005B68
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005B70
	gsSPVertex(_spot18_room_3_vertices_00003DA0, 13, 0), // 0x00005B78
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0), // 0x00005B80
	gsSP2Triangles(5, 6, 7, 0, 8, 6, 5, 0), // 0x00005B88
	gsSP2Triangles(9, 10, 5, 0, 11, 12, 2, 0), // 0x00005B90
	gsSP1Triangle(12, 0, 2, 0), // 0x00005B98
	gsDPPipeSync(), // 0x00005BA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000DC48), // 0x00005BA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005BB0
	gsDPLoadSync(), // 0x00005BB8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005BC0
	gsDPPipeSync(), // 0x00005BC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005BD0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005BD8
	gsSPVertex(_spot18_room_3_vertices_00003E70, 10, 0), // 0x00005BE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005BE8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005BF0
	gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0), // 0x00005BF8
	gsDPPipeSync(), // 0x00005C00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016048), // 0x00005C08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005C10
	gsDPLoadSync(), // 0x00005C18
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005C20
	gsDPPipeSync(), // 0x00005C28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005C30
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005C38
	gsSPVertex(_spot18_room_3_vertices_00003F10, 4, 0), // 0x00005C40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005C48
	gsDPPipeSync(), // 0x00005C50
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015048), // 0x00005C58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005C60
	gsDPLoadSync(), // 0x00005C68
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005C70
	gsDPPipeSync(), // 0x00005C78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005C80
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005C88
	gsSPVertex(_spot18_room_3_vertices_00003F50, 9, 0), // 0x00005C90
	gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0), // 0x00005C98
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00005CA0
	gsSP1Triangle(8, 7, 5, 0), // 0x00005CA8
	gsDPPipeSync(), // 0x00005CB0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00011448), // 0x00005CB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005CC0
	gsDPLoadSync(), // 0x00005CC8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005CD0
	gsDPPipeSync(), // 0x00005CD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005CE0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005CE8
	gsSPVertex(_spot18_room_3_vertices_00003FE0, 4, 0), // 0x00005CF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005CF8
	gsDPPipeSync(), // 0x00005D00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016048), // 0x00005D08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005D10
	gsDPLoadSync(), // 0x00005D18
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005D20
	gsDPPipeSync(), // 0x00005D28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005D30
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005D38
	gsSPVertex(_spot18_room_3_vertices_00004020, 11, 0), // 0x00005D40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005D48
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005D50
	gsSP2Triangles(8, 7, 9, 0, 8, 9, 10, 0), // 0x00005D58
	gsDPPipeSync(), // 0x00005D60
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000E448), // 0x00005D68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005D70
	gsDPLoadSync(), // 0x00005D78
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005D80
	gsDPPipeSync(), // 0x00005D88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005D90
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005D98
	gsSPVertex(_spot18_room_3_vertices_000040D0, 3, 0), // 0x00005DA0
	gsSP1Triangle(0, 1, 2, 0), // 0x00005DA8
	gsDPPipeSync(), // 0x00005DB0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016048), // 0x00005DB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00005DC0
	gsDPLoadSync(), // 0x00005DC8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00005DD0
	gsDPPipeSync(), // 0x00005DD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00005DE0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005DE8
	gsSPVertex(_spot18_room_3_vertices_00004100, 7, 0), // 0x00005DF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005DF8
	gsSP2Triangles(4, 5, 2, 0, 4, 2, 6, 0), // 0x00005E00
	gsDPPipeSync(), // 0x00005E08
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005E10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00010C48), // 0x00005E18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005E20
	gsDPLoadSync(), // 0x00005E28
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005E30
	gsDPPipeSync(), // 0x00005E38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005E40
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005E48
	gsSPVertex(_spot18_room_3_vertices_00004170, 3, 0), // 0x00005E50
	gsSP1Triangle(0, 1, 2, 0), // 0x00005E58
	gsDPPipeSync(), // 0x00005E60
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00010448), // 0x00005E68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00005E70
	gsDPLoadSync(), // 0x00005E78
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005E80
	gsDPPipeSync(), // 0x00005E88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00005E90
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005E98
	gsSPVertex(_spot18_room_3_vertices_000041A0, 4, 0), // 0x00005EA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005EA8
	gsDPPipeSync(), // 0x00005EB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00010C48), // 0x00005EB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005EC0
	gsDPLoadSync(), // 0x00005EC8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005ED0
	gsDPPipeSync(), // 0x00005ED8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005EE0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005EE8
	gsSPVertex(_spot18_room_3_vertices_000041E0, 24, 0), // 0x00005EF0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00005EF8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005F00
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00005F08
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00005F10
	gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0), // 0x00005F18
	gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0), // 0x00005F20
	gsDPPipeSync(), // 0x00005F28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00010448), // 0x00005F30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00005F38
	gsDPLoadSync(), // 0x00005F40
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005F48
	gsDPPipeSync(), // 0x00005F50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00005F58
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005F60
	gsSPVertex(_spot18_room_3_vertices_00004360, 4, 0), // 0x00005F68
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005F70
	gsDPPipeSync(), // 0x00005F78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00010C48), // 0x00005F80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00005F88
	gsDPLoadSync(), // 0x00005F90
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005F98
	gsDPPipeSync(), // 0x00005FA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00005FA8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00005FB0
	gsSPVertex(_spot18_room_3_vertices_000043A0, 6, 0), // 0x00005FB8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00005FC0
	gsDPPipeSync(), // 0x00005FC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00010448), // 0x00005FD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00005FD8
	gsDPLoadSync(), // 0x00005FE0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00005FE8
	gsDPPipeSync(), // 0x00005FF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00005FF8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006000
	gsSPVertex(_spot18_room_3_vertices_00004400, 4, 0), // 0x00006008
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006010
	gsDPPipeSync(), // 0x00006018
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00010C48), // 0x00006020
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006028
	gsDPLoadSync(), // 0x00006030
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006038
	gsDPPipeSync(), // 0x00006040
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006048
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006050
	gsSPVertex(_spot18_room_3_vertices_00004440, 12, 0), // 0x00006058
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00006060
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006068
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00006070
	gsDPPipeSync(), // 0x00006078
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00006080
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015848), // 0x00006088
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00006090
	gsDPLoadSync(), // 0x00006098
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000060A0
	gsDPPipeSync(), // 0x000060A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000060B0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000060B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x000060C0
	gsDPTileSync(), // 0x000060C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000060D0
	gsDPLoadSync(), // 0x000060D8
	gsDPLoadTLUTCmd(7, 255), // 0x000060E0
	gsDPPipeSync(), // 0x000060E8
	gsSPVertex(_spot18_room_3_vertices_00004500, 4, 0), // 0x000060F0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000060F8
	gsDPPipeSync(), // 0x00006100
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015048), // 0x00006108
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00006110
	gsDPLoadSync(), // 0x00006118
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006120
	gsDPPipeSync(), // 0x00006128
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00006130
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006138
	gsSPVertex(_spot18_room_3_vertices_00004540, 3, 0), // 0x00006140
	gsSP1Triangle(0, 1, 2, 0), // 0x00006148
	gsDPPipeSync(), // 0x00006150
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000E448), // 0x00006158
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00006160
	gsDPLoadSync(), // 0x00006168
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006170
	gsDPPipeSync(), // 0x00006178
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00006180
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006188
	gsSPVertex(_spot18_room_3_vertices_00004570, 9, 0), // 0x00006190
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00006198
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x000061A0
	gsSP1Triangle(8, 4, 6, 0), // 0x000061A8
	gsDPPipeSync(), // 0x000061B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015048), // 0x000061B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000061C0
	gsDPLoadSync(), // 0x000061C8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000061D0
	gsDPPipeSync(), // 0x000061D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000061E0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000061E8
	gsSPVertex(_spot18_room_3_vertices_00004600, 4, 0), // 0x000061F0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000061F8
	gsDPPipeSync(), // 0x00006200
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006208
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000F448), // 0x00006210
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006218
	gsDPLoadSync(), // 0x00006220
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00006228
	gsDPPipeSync(), // 0x00006230
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006238
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006240
	gsSPVertex(_spot18_room_3_vertices_00004640, 8, 0), // 0x00006248
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006250
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006258
	gsDPPipeSync(), // 0x00006260
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00006268
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00006270
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006278
	gsDPLoadSync(), // 0x00006280
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006288
	gsDPPipeSync(), // 0x00006290
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006298
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000062A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x000062A8
	gsDPTileSync(), // 0x000062B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000062B8
	gsDPLoadSync(), // 0x000062C0
	gsDPLoadTLUTCmd(7, 255), // 0x000062C8
	gsDPPipeSync(), // 0x000062D0
	gsSPVertex(_spot18_room_3_vertices_000046C0, 8, 0), // 0x000062D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000062E0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000062E8
	gsDPPipeSync(), // 0x000062F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x000062F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006300
	gsDPLoadSync(), // 0x00006308
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006310
	gsDPPipeSync(), // 0x00006318
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006320
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006328
	gsSPVertex(_spot18_room_3_vertices_00004740, 8, 0), // 0x00006330
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006338
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006340
	gsDPPipeSync(), // 0x00006348
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00006350
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006358
	gsDPLoadSync(), // 0x00006360
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006368
	gsDPPipeSync(), // 0x00006370
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006378
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006380
	gsSPVertex(_spot18_room_3_vertices_000047C0, 4, 0), // 0x00006388
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006390
	gsDPPipeSync(), // 0x00006398
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x000063A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000063A8
	gsDPLoadSync(), // 0x000063B0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000063B8
	gsDPPipeSync(), // 0x000063C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000063C8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000063D0
	gsSPVertex(_spot18_room_3_vertices_00004800, 8, 0), // 0x000063D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000063E0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000063E8
	gsDPPipeSync(), // 0x000063F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x000063F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006400
	gsDPLoadSync(), // 0x00006408
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006410
	gsDPPipeSync(), // 0x00006418
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006420
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006428
	gsSPVertex(_spot18_room_3_vertices_00004880, 4, 0), // 0x00006430
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006438
	gsDPPipeSync(), // 0x00006440
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015848), // 0x00006448
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00006450
	gsDPLoadSync(), // 0x00006458
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006460
	gsDPPipeSync(), // 0x00006468
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00006470
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006478
	gsSPVertex(_spot18_room_3_vertices_000048C0, 6, 0), // 0x00006480
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006488
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00006490
	gsDPPipeSync(), // 0x00006498
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x000064A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000064A8
	gsDPLoadSync(), // 0x000064B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000064B8
	gsDPPipeSync(), // 0x000064C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000064C8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000064D0
	gsSPVertex(_spot18_room_3_vertices_00004920, 6, 0), // 0x000064D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000064E0
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x000064E8
	gsDPPipeSync(), // 0x000064F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x000064F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00006500
	gsDPLoadSync(), // 0x00006508
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006510
	gsDPPipeSync(), // 0x00006518
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00006520
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006528
	gsSPVertex(_spot18_room_3_vertices_00004980, 12, 0), // 0x00006530
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006538
	gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0), // 0x00006540
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00006548
	gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0), // 0x00006550
	gsDPPipeSync(), // 0x00006558
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016848), // 0x00006560
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00006568
	gsDPLoadSync(), // 0x00006570
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00006578
	gsDPPipeSync(), // 0x00006580
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00006588
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006590
	gsSPVertex(_spot18_room_3_vertices_00004A40, 4, 0), // 0x00006598
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000065A0
	gsDPPipeSync(), // 0x000065A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x000065B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000065B8
	gsDPLoadSync(), // 0x000065C0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000065C8
	gsDPPipeSync(), // 0x000065D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000065D8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000065E0
	gsSPVertex(_spot18_room_3_vertices_00004A80, 8, 0), // 0x000065E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000065F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000065F8
	gsDPPipeSync(), // 0x00006600
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00006608
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006610
	gsDPLoadSync(), // 0x00006618
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006620
	gsDPPipeSync(), // 0x00006628
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006630
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006638
	gsSPVertex(_spot18_room_3_vertices_00004B00, 4, 0), // 0x00006640
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006648
	gsDPPipeSync(), // 0x00006650
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00006658
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00006660
	gsDPLoadSync(), // 0x00006668
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006670
	gsDPPipeSync(), // 0x00006678
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00006680
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006688
	gsSPVertex(_spot18_room_3_vertices_00004B40, 8, 0), // 0x00006690
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006698
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000066A0
	gsDPPipeSync(), // 0x000066A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x000066B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000066B8
	gsDPLoadSync(), // 0x000066C0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000066C8
	gsDPPipeSync(), // 0x000066D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000066D8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000066E0
	gsSPVertex(_spot18_room_3_vertices_00004BC0, 4, 0), // 0x000066E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000066F0
	gsDPPipeSync(), // 0x000066F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00006700
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00006708
	gsDPLoadSync(), // 0x00006710
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006718
	gsDPPipeSync(), // 0x00006720
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00006728
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006730
	gsSPVertex(_spot18_room_3_vertices_00004C00, 4, 0), // 0x00006738
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006740
	gsDPPipeSync(), // 0x00006748
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00006750
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006758
	gsDPLoadSync(), // 0x00006760
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006768
	gsDPPipeSync(), // 0x00006770
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006778
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006780
	gsSPVertex(_spot18_room_3_vertices_00004C40, 6, 0), // 0x00006788
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006790
	gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0), // 0x00006798
	gsDPPipeSync(), // 0x000067A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x000067A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000067B0
	gsDPLoadSync(), // 0x000067B8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000067C0
	gsDPPipeSync(), // 0x000067C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000067D0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000067D8
	gsSPVertex(_spot18_room_3_vertices_00004CA0, 14, 0), // 0x000067E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000067E8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000067F0
	gsSP2Triangles(8, 7, 6, 0, 8, 6, 9, 0), // 0x000067F8
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00006800
	gsDPPipeSync(), // 0x00006808
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00006810
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006818
	gsDPLoadSync(), // 0x00006820
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006828
	gsDPPipeSync(), // 0x00006830
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006838
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006840
	gsSPVertex(_spot18_room_3_vertices_00004D80, 4, 0), // 0x00006848
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006850
	gsDPPipeSync(), // 0x00006858
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00006860
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00006868
	gsDPLoadSync(), // 0x00006870
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006878
	gsDPPipeSync(), // 0x00006880
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00006888
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006890
	gsSPVertex(_spot18_room_3_vertices_00004DC0, 4, 0), // 0x00006898
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000068A0
	gsDPPipeSync(), // 0x000068A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x000068B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000068B8
	gsDPLoadSync(), // 0x000068C0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000068C8
	gsDPPipeSync(), // 0x000068D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000068D8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000068E0
	gsSPVertex(_spot18_room_3_vertices_00004E00, 8, 0), // 0x000068E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000068F0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000068F8
	gsDPPipeSync(), // 0x00006900
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00013848), // 0x00006908
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00006910
	gsDPLoadSync(), // 0x00006918
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00006920
	gsDPPipeSync(), // 0x00006928
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00006930
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00006938
	gsSPVertex(_spot18_room_3_vertices_00004E80, 12, 0), // 0x00006940
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006948
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006950
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00006958
	gsDPPipeSync(), // 0x00006960
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00006968
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00006970
	gsDPLoadSync(), // 0x00006978
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006980
	gsDPPipeSync(), // 0x00006988
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00006990
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006998
	gsSPVertex(_spot18_room_3_vertices_00004F40, 4, 0), // 0x000069A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000069A8
	gsDPPipeSync(), // 0x000069B0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x000069B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000069C0
	gsDPLoadSync(), // 0x000069C8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000069D0
	gsDPPipeSync(), // 0x000069D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000069E0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000069E8
	gsSPVertex(_spot18_room_3_vertices_00004F80, 4, 0), // 0x000069F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000069F8
	gsDPPipeSync(), // 0x00006A00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00006A08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00006A10
	gsDPLoadSync(), // 0x00006A18
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00006A20
	gsDPPipeSync(), // 0x00006A28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00006A30
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00006A38
	gsSPVertex(_spot18_room_3_vertices_00004FC0, 4, 0), // 0x00006A40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006A48
	gsSPEndDisplayList(), // 0x00006A50
};

Vtx_t _spot18_room_3_vertices_00006A58[3] = 
{
	 { -409, 276, -83, 0, -180, 884, 165, 165, 165, 255 }, // 0x00006A58
	 { -418, 276, -97, 0, 1226, 884, 165, 165, 165, 255 }, // 0x00006A68
	 { -425, 276, -82, 0, 523, -207, 165, 165, 165, 255 }, // 0x00006A78
};

Vtx_t _spot18_room_3_vertices_00006A88[7] = 
{
	 { -409, 276, -83, 0, 211, 0, 165, 165, 165, 255 }, // 0x00006A88
	 { -410, 196, -93, 0, 403, 1024, 140, 140, 140, 255 }, // 0x00006A98
	 { -418, 276, -97, 0, 593, 0, 165, 165, 165, 255 }, // 0x00006AA8
	 { -417, 196, -78, 0, 19, 1024, 140, 140, 140, 255 }, // 0x00006AB8
	 { -426, 196, -92, 0, 785, 1024, 140, 140, 140, 255 }, // 0x00006AC8
	 { -425, 276, -82, 0, 975, 0, 165, 165, 165, 255 }, // 0x00006AD8
	 { -417, 196, -78, 0, 1165, 1024, 140, 140, 140, 255 }, // 0x00006AE8
};

Vtx_t _spot18_room_3_vertices_00006AF8[3] = 
{
	 { -401, 276, -244, 0, -180, 884, 165, 165, 165, 255 }, // 0x00006AF8
	 { -392, 276, -231, 0, 1226, 884, 165, 165, 165, 255 }, // 0x00006B08
	 { -385, 276, -245, 0, 523, -207, 165, 165, 165, 255 }, // 0x00006B18
};

Vtx_t _spot18_room_3_vertices_00006B28[7] = 
{
	 { -401, 276, -244, 0, 211, 0, 165, 165, 165, 255 }, // 0x00006B28
	 { -400, 196, -235, 0, 403, 1024, 140, 140, 140, 255 }, // 0x00006B38
	 { -392, 276, -231, 0, 593, 0, 165, 165, 165, 255 }, // 0x00006B48
	 { -393, 196, -249, 0, 19, 1024, 140, 140, 140, 255 }, // 0x00006B58
	 { -384, 196, -236, 0, 785, 1024, 140, 140, 140, 255 }, // 0x00006B68
	 { -385, 276, -245, 0, 975, 0, 165, 165, 165, 255 }, // 0x00006B78
	 { -393, 196, -249, 0, 1165, 1024, 140, 140, 140, 255 }, // 0x00006B88
};

Vtx_t _spot18_room_3_vertices_00006B98[3] = 
{
	 { -599, 480, 8, 0, -180, 884, 178, 178, 178, 255 }, // 0x00006B98
	 { -590, 480, 21, 0, 1226, 884, 178, 178, 178, 255 }, // 0x00006BA8
	 { -583, 480, 7, 0, 523, -207, 178, 178, 178, 255 }, // 0x00006BB8
};

Vtx_t _spot18_room_3_vertices_00006BC8[7] = 
{
	 { -599, 480, 8, 0, 211, 0, 178, 178, 178, 255 }, // 0x00006BC8
	 { -598, 392, 17, 0, 403, 1024, 178, 178, 178, 255 }, // 0x00006BD8
	 { -590, 480, 21, 0, 593, 0, 178, 178, 178, 255 }, // 0x00006BE8
	 { -591, 392, 3, 0, 19, 1024, 178, 178, 178, 255 }, // 0x00006BF8
	 { -582, 392, 16, 0, 785, 1024, 178, 178, 178, 255 }, // 0x00006C08
	 { -583, 480, 7, 0, 975, 0, 178, 178, 178, 255 }, // 0x00006C18
	 { -591, 392, 3, 0, 1165, 1024, 178, 178, 178, 255 }, // 0x00006C28
};

Vtx_t _spot18_room_3_vertices_00006C38[3] = 
{
	 { -574, 480, 167, 0, -180, 884, 178, 178, 178, 255 }, // 0x00006C38
	 { -583, 480, 153, 0, 1226, 884, 178, 178, 178, 255 }, // 0x00006C48
	 { -590, 480, 168, 0, 523, -207, 178, 178, 178, 255 }, // 0x00006C58
};

Vtx_t _spot18_room_3_vertices_00006C68[7] = 
{
	 { -574, 480, 167, 0, 211, 0, 178, 178, 178, 255 }, // 0x00006C68
	 { -575, 392, 158, 0, 403, 1024, 178, 178, 178, 255 }, // 0x00006C78
	 { -583, 480, 153, 0, 593, 0, 178, 178, 178, 255 }, // 0x00006C88
	 { -582, 392, 172, 0, 19, 1024, 178, 178, 178, 255 }, // 0x00006C98
	 { -591, 392, 158, 0, 785, 1024, 178, 178, 178, 255 }, // 0x00006CA8
	 { -590, 480, 168, 0, 975, 0, 178, 178, 178, 255 }, // 0x00006CB8
	 { -582, 392, 172, 0, 1165, 1024, 178, 178, 178, 255 }, // 0x00006CC8
};

Vtx_t _spot18_room_3_vertices_00006CD8[3] = 
{
	 { -1339, 600, -97, 0, -8904, 2048, 102, 102, 102, 255 }, // 0x00006CD8
	 { -1339, 760, -97, 0, -8904, 0, 37, 37, 38, 255 }, // 0x00006CE8
	 { -1214, 760, -41, 0, -9558, 0, 12, 12, 12, 255 }, // 0x00006CF8
};

Vtx_t _spot18_room_3_vertices_00006D08[4] = 
{
	 { -826, 760, -41, 0, -1042, 0, 165, 165, 165, 255 }, // 0x00006D08
	 { -826, 720, -41, 0, -1052, 2048, 165, 165, 165, 255 }, // 0x00006D18
	 { -826, 720, -161, 0, 3072, 2048, 165, 165, 165, 255 }, // 0x00006D28
	 { -826, 760, -161, 0, 3082, 0, 165, 165, 165, 255 }, // 0x00006D38
};

Vtx_t _spot18_room_3_vertices_00006D48[4] = 
{
	 { -1394, 600, -463, 0, -6963, 2048, 76, 76, 76, 255 }, // 0x00006D48
	 { -1394, 760, -207, 0, -8271, 0, 37, 37, 38, 255 }, // 0x00006D58
	 { -1394, 600, -207, 0, -8271, 2048, 102, 102, 102, 255 }, // 0x00006D68
	 { -1394, 760, -463, 0, -6963, 0, 63, 63, 63, 255 }, // 0x00006D78
};

Vtx_t _spot18_room_3_vertices_00006D88[4] = 
{
	 { -1339, 600, -97, 0, 2800, 1910, 102, 102, 102, 255 }, // 0x00006D88
	 { -1274, 600, -235, 0, 2633, 1130, 102, 102, 102, 255 }, // 0x00006D98
	 { -1394, 600, -207, 0, 1731, 1572, 102, 102, 102, 255 }, // 0x00006DA8
	 { -1249, 600, -186, 0, 3111, 1281, 63, 63, 63, 255 }, // 0x00006DB8
};

Vtx_t _spot18_room_3_vertices_00006DC8[8] = 
{
	 { -1394, 600, -207, 0, -8271, 2048, 102, 102, 102, 255 }, // 0x00006DC8
	 { -1339, 760, -97, 0, -8904, 0, 37, 37, 38, 255 }, // 0x00006DD8
	 { -1339, 600, -97, 0, -8904, 2048, 102, 102, 102, 255 }, // 0x00006DE8
	 { -1394, 760, -207, 0, -8271, 0, 37, 37, 38, 255 }, // 0x00006DF8
	 { -1249, 600, -186, 0, 7999, 2048, 63, 63, 63, 255 }, // 0x00006E08
	 { -1274, 760, -235, 0, 7716, 0, 37, 37, 38, 255 }, // 0x00006E18
	 { -1274, 600, -235, 0, 7716, 2048, 102, 102, 102, 255 }, // 0x00006E28
	 { -1249, 760, -186, 0, 7999, 0, 25, 25, 25, 255 }, // 0x00006E38
};

Vtx_t _spot18_room_3_vertices_00006E48[4] = 
{
	 { -1214, 600, -41, 0, 3870, 2249, 51, 51, 51, 255 }, // 0x00006E48
	 { -1249, 600, -186, 0, 3803, 1500, 63, 63, 63, 255 }, // 0x00006E58
	 { -1339, 600, -97, 0, 2800, 1910, 102, 102, 102, 255 }, // 0x00006E68
	 { -1200, 600, -161, 0, 4282, 1652, 51, 51, 51, 255 }, // 0x00006E78
};

Vtx_t _spot18_room_3_vertices_00006E88[7] = 
{
	 { -1339, 600, -97, 0, -8904, 2048, 102, 102, 102, 255 }, // 0x00006E88
	 { -1214, 760, -41, 0, -9558, 0, 12, 12, 12, 255 }, // 0x00006E98
	 { -1214, 600, -41, 0, -9558, 2048, 51, 51, 51, 255 }, // 0x00006EA8
	 { -1200, 600, -161, 0, 8298, 2048, 51, 51, 51, 255 }, // 0x00006EB8
	 { -1249, 760, -186, 0, 7999, 0, 25, 25, 25, 255 }, // 0x00006EC8
	 { -1249, 600, -186, 0, 7999, 2048, 63, 63, 63, 255 }, // 0x00006ED8
	 { -1200, 760, -161, 0, 8298, 0, 12, 12, 12, 255 }, // 0x00006EE8
};

Vtx_t _spot18_room_3_vertices_00006EF8[7] = 
{
	 { -1339, 760, -97, 0, 2199, -3078, 37, 37, 38, 255 }, // 0x00006EF8
	 { -1200, 760, -161, 0, 2674, -2220, 12, 12, 12, 255 }, // 0x00006F08
	 { -1214, 760, -41, 0, 3052, -2895, 12, 12, 12, 255 }, // 0x00006F18
	 { -1249, 760, -186, 0, 2325, -2278, 25, 25, 25, 255 }, // 0x00006F28
	 { -1394, 760, -207, 0, 1497, -2713, 37, 37, 38, 255 }, // 0x00006F38
	 { -1274, 760, -235, 0, 2011, -2115, 37, 37, 38, 255 }, // 0x00006F48
	 { -1394, 760, -463, 0, 536, -1391, 63, 63, 63, 255 }, // 0x00006F58
};

Vtx_t _spot18_room_3_vertices_00006F68[4] = 
{
	 { -800, 600, -161, 0, 9149, 3192, 242, 242, 242, 255 }, // 0x00006F68
	 { -1214, 600, -41, 0, 5030, 2616, 51, 51, 51, 255 }, // 0x00006F78
	 { -800, 600, -41, 0, 8492, 3711, 242, 242, 242, 255 }, // 0x00006F88
	 { -1200, 600, -161, 0, 5688, 2097, 51, 51, 51, 255 }, // 0x00006F98
};

Vtx_t _spot18_room_3_vertices_00006FA8[4] = 
{
	 { -800, 600, -41, 0, -11627, 2048, 229, 229, 229, 255 }, // 0x00006FA8
	 { -1214, 760, -41, 0, -9558, 0, 12, 12, 12, 255 }, // 0x00006FB8
	 { -800, 760, -41, 0, -11627, 0, 165, 165, 165, 255 }, // 0x00006FC8
	 { -1214, 600, -41, 0, -9558, 2048, 51, 51, 51, 255 }, // 0x00006FD8
};

Vtx_t _spot18_room_3_vertices_00006FE8[4] = 
{
	 { -800, 760, -41, 0, 5197, -1337, 165, 165, 165, 255 }, // 0x00006FE8
	 { -1200, 760, -161, 0, 2674, -2220, 12, 12, 12, 255 }, // 0x00006FF8
	 { -800, 760, -161, 0, 4745, -715, 165, 165, 165, 255 }, // 0x00007008
	 { -1214, 760, -41, 0, 3052, -2895, 12, 12, 12, 255 }, // 0x00007018
};

Vtx_t _spot18_room_3_vertices_00007028[4] = 
{
	 { -800, 760, -161, 0, 10363, 0, 165, 165, 165, 255 }, // 0x00007028
	 { -1200, 600, -161, 0, 8298, 2048, 51, 51, 51, 255 }, // 0x00007038
	 { -800, 600, -161, 0, 10363, 2048, 242, 242, 242, 255 }, // 0x00007048
	 { -1200, 760, -161, 0, 8298, 0, 12, 12, 12, 255 }, // 0x00007058
};

Vtx_t _spot18_room_3_vertices_00007068[3] = 
{
	 { -1394, 600, -207, 0, 1731, 1572, 102, 102, 102, 255 }, // 0x00007068
	 { -1274, 600, -235, 0, 2143, 975, 102, 102, 102, 255 }, // 0x00007078
	 { -1394, 600, -463, 0, -480, 872, 76, 76, 76, 255 }, // 0x00007088
};

Vtx_t _spot18_room_3_vertices_00007098[8] = 
{
	 { -826, 760, -41, 0, -1042, 0, 165, 165, 165, 255 }, // 0x00007098
	 { -826, 720, -41, 0, -1052, 2048, 165, 165, 165, 255 }, // 0x000070A8
	 { -826, 720, -161, 0, 3072, 2048, 165, 165, 165, 255 }, // 0x000070B8
	 { -826, 760, -161, 0, 3082, 0, 165, 165, 165, 255 }, // 0x000070C8
	 { -213, 157, 50, 0, -1042, 0, 63, 63, 63, 255 }, // 0x000070D8
	 { -213, 117, 50, 0, -1052, 2048, 76, 76, 76, 255 }, // 0x000070E8
	 { -238, 117, -68, 0, 3072, 2048, 76, 76, 76, 255 }, // 0x000070F8
	 { -238, 157, -68, 0, 3082, 0, 63, 63, 63, 255 }, // 0x00007108
};

Vtx_t _spot18_room_3_vertices_00007118[12] = 
{
	 { -742, 800, -265, 0, 10944, 0, 127, 127, 127, 255 }, // 0x00007118
	 { -742, 600, -265, 0, 10944, 2048, 204, 204, 204, 255 }, // 0x00007128
	 { -607, 600, -435, 0, 12058, 2048, 140, 140, 140, 255 }, // 0x00007138
	 { -607, 800, -435, 0, 12058, 0, 127, 127, 127, 255 }, // 0x00007148
	 { -800, 800, -41, 0, 9722, 0, 140, 140, 140, 255 }, // 0x00007158
	 { -800, 800, 580, 0, 6543, 0, 140, 140, 140, 255 }, // 0x00007168
	 { -800, 600, 580, 0, 6543, 2048, 229, 229, 229, 255 }, // 0x00007178
	 { -800, 600, -41, 0, 9722, 2048, 229, 229, 229, 255 }, // 0x00007188
	 { -800, 800, -161, 0, 10336, 0, 140, 140, 140, 255 }, // 0x00007198
	 { -800, 600, -161, 0, 10336, 2048, 229, 229, 229, 255 }, // 0x000071A8
	 { -800, 760, -41, 0, 9722, 410, 165, 165, 165, 255 }, // 0x000071B8
	 { -800, 760, -161, 0, 10336, 410, 165, 165, 165, 255 }, // 0x000071C8
};

Vtx_t _spot18_room_3_vertices_000071D8[8] = 
{
	 { -574, 600, 167, 0, 4877, 2048, 153, 153, 153, 255 }, // 0x000071D8
	 { -583, 600, 7, 0, 5697, 2048, 153, 153, 153, 255 }, // 0x000071E8
	 { -800, 600, -41, 0, 6004, 0, 229, 229, 229, 255 }, // 0x000071F8
	 { -800, 600, -161, 0, 6617, 0, 229, 229, 229, 255 }, // 0x00007208
	 { -742, 600, -265, 0, 7132, 569, 229, 229, 229, 255 }, // 0x00007218
	 { -607, 600, -435, 0, 7964, 2048, 153, 153, 153, 255 }, // 0x00007228
	 { -800, 600, 580, 0, 2829, 0, 229, 229, 229, 255 }, // 0x00007238
	 { -557, 600, 492, 0, 3210, 2048, 153, 153, 153, 255 }, // 0x00007248
};

Vtx_t _spot18_room_3_vertices_00007258[8] = 
{
	 { -557, 400, 492, 0, 3210, 2048, 204, 204, 204, 255 }, // 0x00007258
	 { -574, 400, 167, 0, 4877, 2048, 204, 204, 204, 255 }, // 0x00007268
	 { -574, 600, 167, 0, 4877, 0, 153, 153, 153, 255 }, // 0x00007278
	 { -557, 600, 492, 0, 3210, 0, 153, 153, 153, 255 }, // 0x00007288
	 { -583, 400, 7, 0, 5697, 2048, 204, 204, 204, 255 }, // 0x00007298
	 { -607, 400, -435, 0, 7964, 2048, 204, 204, 204, 255 }, // 0x000072A8
	 { -607, 600, -435, 0, 7964, 0, 153, 153, 153, 255 }, // 0x000072B8
	 { -583, 600, 7, 0, 5697, 0, 153, 153, 153, 255 }, // 0x000072C8
};

Vtx_t _spot18_room_3_vertices_000072D8[4] = 
{
	 { -583, 560, 7, 0, 5697, 410, 140, 140, 140, 255 }, // 0x000072D8
	 { -583, 600, 7, 0, 5697, 0, 153, 153, 153, 255 }, // 0x000072E8
	 { -574, 600, 167, 0, 4877, 0, 153, 153, 153, 255 }, // 0x000072F8
	 { -574, 560, 167, 0, 4877, 410, 140, 140, 140, 255 }, // 0x00007308
};

Vtx_t _spot18_room_3_vertices_00007318[6] = 
{
	 { -607, 400, -435, 0, 6122, 0, 204, 204, 204, 255 }, // 0x00007318
	 { -385, 396, -245, 0, 5249, 2048, 114, 114, 114, 255 }, // 0x00007328
	 { -359, 396, -413, 0, 6119, 2048, 114, 114, 114, 255 }, // 0x00007338
	 { -409, 396, -83, 0, 4414, 2048, 102, 102, 102, 255 }, // 0x00007348
	 { -557, 400, 492, 0, 1530, 0, 204, 204, 204, 255 }, // 0x00007358
	 { -372, 396, 444, 0, 1706, 2048, 102, 102, 102, 255 }, // 0x00007368
};

Vtx_t _spot18_room_3_vertices_00007378[4] = 
{
	 { -372, 396, 444, 0, 1706, 0, 102, 102, 102, 255 }, // 0x00007378
	 { -372, 196, 444, 0, 1706, 2048, 153, 153, 153, 255 }, // 0x00007388
	 { -409, 196, -83, 0, 4414, 2048, 153, 153, 153, 255 }, // 0x00007398
	 { -409, 396, -83, 0, 4414, 0, 102, 102, 102, 255 }, // 0x000073A8
};

Vtx_t _spot18_room_3_vertices_000073B8[4] = 
{
	 { -359, 196, -413, 0, 6119, 2048, 153, 153, 153, 255 }, // 0x000073B8
	 { -359, 396, -413, 0, 6119, 0, 114, 114, 114, 255 }, // 0x000073C8
	 { -385, 396, -245, 0, 5249, 0, 102, 102, 102, 255 }, // 0x000073D8
	 { -385, 196, -245, 0, 5250, 2048, 153, 153, 153, 255 }, // 0x000073E8
};

Vtx_t _spot18_room_3_vertices_000073F8[4] = 
{
	 { -385, 396, -245, 0, 5249, 0, 102, 102, 102, 255 }, // 0x000073F8
	 { -409, 396, -83, 0, 4414, 0, 102, 102, 102, 255 }, // 0x00007408
	 { -409, 360, -83, 0, 4414, 372, 102, 102, 102, 255 }, // 0x00007418
	 { -385, 360, -245, 0, 5250, 372, 102, 102, 102, 255 }, // 0x00007428
};

Vtx_t _spot18_room_3_vertices_00007438[11] = 
{
	 { -225, 197, -71, 0, 3183, 2048, 51, 51, 51, 255 }, // 0x00007438
	 { -130, 197, -386, 0, 4869, 2048, 51, 51, 51, 255 }, // 0x00007448
	 { -359, 196, -413, 0, 4660, 0, 153, 153, 153, 255 }, // 0x00007458
	 { -372, 196, 444, 0, 771, 0, 153, 153, 153, 255 }, // 0x00007468
	 { -199, 197, 47, 0, 2568, 2048, 51, 51, 51, 255 }, // 0x00007478
	 { -409, 196, -83, 0, 3450, 0, 153, 153, 153, 255 }, // 0x00007488
	 { -372, 196, 444, 0, 771, 0, 153, 153, 153, 255 }, // 0x00007498
	 { -126, 197, 377, 0, 837, 2048, 51, 51, 51, 255 }, // 0x000074A8
	 { -199, 197, 47, 0, 2568, 2048, 51, 51, 51, 255 }, // 0x000074B8
	 { -225, 197, -71, 0, 3183, 2048, 51, 51, 51, 255 }, // 0x000074C8
	 { -409, 196, -83, 0, 3450, 0, 153, 153, 153, 255 }, // 0x000074D8
};

Vtx_t _spot18_room_3_vertices_000074E8[11] = 
{
	 { -225, 197, -71, 0, 3183, 0, 51, 51, 51, 255 }, // 0x000074E8
	 { -225, -3, -71, 0, 3183, 2048, 76, 76, 76, 255 }, // 0x000074F8
	 { -130, -3, -386, 0, 4869, 2048, 76, 76, 76, 255 }, // 0x00007508
	 { -130, 197, -386, 0, 4869, 0, 51, 51, 51, 255 }, // 0x00007518
	 { -126, 197, 377, 0, 837, 0, 51, 51, 51, 255 }, // 0x00007528
	 { -126, -3, 377, 0, 837, 2048, 76, 76, 76, 255 }, // 0x00007538
	 { -199, -3, 47, 0, 2568, 2048, 76, 76, 76, 255 }, // 0x00007548
	 { -199, 197, 47, 0, 2568, 0, 51, 51, 51, 255 }, // 0x00007558
	 { -225, 157, -71, 0, 3183, 410, 51, 51, 51, 255 }, // 0x00007568
	 { -225, 157, -71, 0, 3183, 410, 51, 51, 51, 255 }, // 0x00007578
	 { -199, 157, 47, 0, 2568, 410, 51, 51, 51, 255 }, // 0x00007588
};

Vtx_t _spot18_room_3_vertices_00007598[4] = 
{
	 { -225, 197, -71, 0, 3183, 2048, 51, 51, 51, 255 }, // 0x00007598
	 { -359, 196, -413, 0, 4660, 0, 153, 153, 153, 255 }, // 0x000075A8
	 { -385, 196, -245, 0, 3800, 0, 153, 153, 153, 255 }, // 0x000075B8
	 { -409, 196, -83, 0, 2971, 0, 153, 153, 153, 255 }, // 0x000075C8
};

Vtx_t _spot18_room_3_vertices_000075D8[5] = 
{
	 { -409, 396, -83, 0, 4414, 2048, 102, 102, 102, 255 }, // 0x000075D8
	 { -607, 400, -435, 0, 6122, 0, 204, 204, 204, 255 }, // 0x000075E8
	 { -583, 400, 7, 0, 3932, 0, 204, 204, 204, 255 }, // 0x000075F8
	 { -574, 400, 167, 0, 3140, 0, 204, 204, 204, 255 }, // 0x00007608
	 { -557, 400, 492, 0, 1530, 0, 204, 204, 204, 255 }, // 0x00007618
};

Vtx_t _spot18_room_3_vertices_00007628[4] = 
{
	 { -199, -3, 47, 0, -1719, 553, 76, 76, 76, 255 }, // 0x00007628
	 { -225, -3, -71, 0, -2360, -246, 76, 76, 76, 255 }, // 0x00007638
	 { -616, -3, 16, 0, -5022, 1890, 0, 0, 0, 255 }, // 0x00007648
	 { -590, -3, 133, 0, -4381, 2689, 0, 0, 0, 255 }, // 0x00007658
};

Vtx_t _spot18_room_3_vertices_00007668[4] = 
{
	 { -590, 157, 133, 0, -815, 2007, 0, 0, 0, 255 }, // 0x00007668
	 { -590, -3, 133, 0, -815, 2551, 0, 0, 0, 255 }, // 0x00007678
	 { -616, -3, 16, 0, 0, 2551, 0, 0, 0, 255 }, // 0x00007688
	 { -616, 157, 16, 0, 0, 2007, 0, 0, 0, 255 }, // 0x00007698
};

Vtx_t _spot18_room_3_vertices_000076A8[8] = 
{
	 { -199, -3, 47, 0, 0, 2048, 76, 76, 76, 255 }, // 0x000076A8
	 { -590, -3, 133, 0, 2048, 2048, 0, 0, 0, 255 }, // 0x000076B8
	 { -590, 157, 133, 0, 2048, 410, 0, 0, 0, 255 }, // 0x000076C8
	 { -199, 157, 47, 0, 0, 410, 51, 51, 51, 255 }, // 0x000076D8
	 { -225, 157, -71, 0, 1390, 410, 51, 51, 51, 255 }, // 0x000076E8
	 { -616, 157, 16, 0, -658, 410, 0, 0, 0, 255 }, // 0x000076F8
	 { -616, -3, 16, 0, -658, 2048, 0, 0, 0, 255 }, // 0x00007708
	 { -225, -3, -71, 0, 1390, 2048, 76, 76, 76, 255 }, // 0x00007718
};

Vtx_t _spot18_room_3_vertices_00007728[4] = 
{
	 { -199, 157, 47, 0, 1024, -1024, 51, 51, 51, 255 }, // 0x00007728
	 { -590, 157, 133, 0, 471, 1476, 0, 0, 0, 255 }, // 0x00007738
	 { -616, 157, 16, 0, 1221, 1641, 0, 0, 0, 255 }, // 0x00007748
	 { -225, 157, -71, 0, 1774, -858, 51, 51, 51, 255 }, // 0x00007758
};

Vtx_t _spot18_room_3_vertices_00007768[4] = 
{
	 { -584, 360, -74, 0, 0, 410, 37, 37, 38, 255 }, // 0x00007768
	 { -409, 360, -83, 0, -1122, 410, 102, 102, 102, 255 }, // 0x00007778
	 { -409, 196, -83, 0, -1122, 2048, 153, 153, 153, 255 }, // 0x00007788
	 { -584, 200, -74, 0, 0, 2048, 76, 76, 76, 255 }, // 0x00007798
};

Vtx_t _spot18_room_3_vertices_000077A8[4] = 
{
	 { -593, 360, -233, 0, 6172, -1786, 37, 37, 38, 255 }, // 0x000077A8
	 { -385, 360, -245, 0, 6665, -3593, 102, 102, 102, 255 }, // 0x000077B8
	 { -409, 360, -83, 0, 5202, -3683, 102, 102, 102, 255 }, // 0x000077C8
	 { -584, 360, -74, 0, 4786, -2164, 37, 37, 38, 255 }, // 0x000077D8
};

Vtx_t _spot18_room_3_vertices_000077E8[4] = 
{
	 { -593, 200, -233, 0, 4613, 2048, 76, 76, 76, 255 }, // 0x000077E8
	 { -385, 196, -245, 0, 5948, 2048, 153, 153, 153, 255 }, // 0x000077F8
	 { -385, 360, -245, 0, 5948, 410, 102, 102, 102, 255 }, // 0x00007808
	 { -593, 360, -233, 0, 4613, 410, 37, 37, 38, 255 }, // 0x00007818
};

Vtx_t _spot18_room_3_vertices_00007828[4] = 
{
	 { -584, 200, -74, 0, -578, 3924, 76, 76, 76, 255 }, // 0x00007828
	 { -409, 196, -83, 0, -501, 2813, 153, 153, 153, 255 }, // 0x00007838
	 { -385, 196, -245, 0, -1500, 2531, 153, 153, 153, 255 }, // 0x00007848
	 { -593, 200, -233, 0, -1592, 3853, 76, 76, 76, 255 }, // 0x00007858
};

Vtx_t _spot18_room_3_vertices_00007868[4] = 
{
	 { -574, 400, 167, 0, -3072, 2048, 204, 204, 204, 255 }, // 0x00007868
	 { -734, 320, 175, 0, -2048, 2048, 127, 127, 127, 255 }, // 0x00007878
	 { -734, 480, 175, 0, -2048, 410, 37, 37, 38, 255 }, // 0x00007888
	 { -574, 560, 167, 0, -3072, 410, 140, 140, 140, 255 }, // 0x00007898
};

Vtx_t _spot18_room_3_vertices_000078A8[4] = 
{
	 { -574, 560, 167, 0, 2694, -2710, 140, 140, 140, 255 }, // 0x000078A8
	 { -734, 480, 175, 0, 2316, -1323, 37, 37, 38, 255 }, // 0x000078B8
	 { -743, 480, 16, 0, 3702, -945, 37, 37, 38, 255 }, // 0x000078C8
	 { -583, 560, 7, 0, 4080, -2332, 140, 140, 140, 255 }, // 0x000078D8
};

Vtx_t _spot18_room_3_vertices_000078E8[8] = 
{
	 { -753, 440, -225, 0, 3589, 410, 37, 37, 38, 255 }, // 0x000078E8
	 { -913, 440, -216, 0, 2565, 410, 25, 25, 25, 255 }, // 0x000078F8
	 { -913, 280, -216, 0, 2565, 2048, 76, 76, 76, 255 }, // 0x00007908
	 { -753, 280, -225, 0, 3589, 2048, 76, 76, 76, 255 }, // 0x00007918
	 { -734, 320, 175, 0, -2048, 2048, 127, 127, 127, 255 }, // 0x00007928
	 { -894, 320, 184, 0, -1024, 2048, 127, 127, 127, 255 }, // 0x00007938
	 { -894, 480, 184, 0, -1024, 410, 37, 37, 38, 255 }, // 0x00007948
	 { -734, 480, 175, 0, -2048, 410, 37, 37, 38, 255 }, // 0x00007958
};

Vtx_t _spot18_room_3_vertices_00007968[4] = 
{
	 { -734, 480, 175, 0, 2316, -1323, 37, 37, 38, 255 }, // 0x00007968
	 { -894, 480, 184, 0, 1938, 63, 37, 37, 38, 255 }, // 0x00007978
	 { -902, 480, 24, 0, 3324, 441, 37, 37, 38, 255 }, // 0x00007988
	 { -743, 480, 16, 0, 3702, -945, 37, 37, 38, 255 }, // 0x00007998
};

Vtx_t _spot18_room_3_vertices_000079A8[4] = 
{
	 { -904, 280, -56, 0, 1541, 2048, 102, 102, 102, 255 }, // 0x000079A8
	 { -913, 280, -216, 0, 2565, 2048, 76, 76, 76, 255 }, // 0x000079B8
	 { -913, 440, -216, 0, 2565, 410, 25, 25, 25, 255 }, // 0x000079C8
	 { -904, 440, -56, 0, 1541, 410, 37, 37, 38, 255 }, // 0x000079D8
};

Vtx_t _spot18_room_3_vertices_000079E8[6] = 
{
	 { -904, 440, -56, 0, 4030, 609, 37, 37, 38, 255 }, // 0x000079E8
	 { -913, 440, -216, 0, 5416, 987, 25, 25, 25, 255 }, // 0x000079F8
	 { -753, 440, -225, 0, 5794, -399, 37, 37, 38, 255 }, // 0x00007A08
	 { -744, 440, -65, 0, 4408, -778, 37, 37, 38, 255 }, // 0x00007A18
	 { -593, 360, -233, 0, 6172, -1786, 37, 37, 38, 255 }, // 0x00007A28
	 { -584, 360, -74, 0, 4786, -2164, 37, 37, 38, 255 }, // 0x00007A38
};

Vtx_t _spot18_room_3_vertices_00007A48[12] = 
{
	 { -584, 200, -74, 0, 0, 2048, 76, 76, 76, 255 }, // 0x00007A48
	 { -744, 280, -65, 0, 1024, 2048, 102, 102, 102, 255 }, // 0x00007A58
	 { -744, 440, -65, 0, 1024, 410, 37, 37, 38, 255 }, // 0x00007A68
	 { -584, 360, -74, 0, 0, 410, 37, 37, 38, 255 }, // 0x00007A78
	 { -743, 480, 16, 0, 1541, 410, 37, 37, 38, 255 }, // 0x00007A88
	 { -743, 320, 16, 0, 1541, 2048, 127, 127, 127, 255 }, // 0x00007A98
	 { -583, 400, 7, 0, 2565, 2048, 204, 204, 204, 255 }, // 0x00007AA8
	 { -583, 560, 7, 0, 2565, 410, 140, 140, 140, 255 }, // 0x00007AB8
	 { -902, 320, 24, 0, 1024, 2048, 127, 127, 127, 255 }, // 0x00007AC8
	 { -904, 280, -56, 0, 1541, 2048, 102, 102, 102, 255 }, // 0x00007AD8
	 { -904, 440, -56, 0, 1541, 410, 37, 37, 38, 255 }, // 0x00007AE8
	 { -902, 480, 24, 0, 1024, 410, 37, 37, 38, 255 }, // 0x00007AF8
};

Vtx_t _spot18_room_3_vertices_00007B08[4] = 
{
	 { -902, 480, 24, 0, 3324, 441, 37, 37, 38, 255 }, // 0x00007B08
	 { -904, 440, -56, 0, 4030, 609, 37, 37, 38, 255 }, // 0x00007B18
	 { -744, 440, -65, 0, 4408, -778, 37, 37, 38, 255 }, // 0x00007B28
	 { -743, 480, 16, 0, 3702, -945, 37, 37, 38, 255 }, // 0x00007B38
};

Vtx_t _spot18_room_3_vertices_00007B48[4] = 
{
	 { -753, 440, -225, 0, 3589, 410, 37, 37, 38, 255 }, // 0x00007B48
	 { -753, 280, -225, 0, 3589, 2048, 76, 76, 76, 255 }, // 0x00007B58
	 { -593, 200, -233, 0, 4613, 2048, 76, 76, 76, 255 }, // 0x00007B68
	 { -593, 360, -233, 0, 4613, 410, 37, 37, 38, 255 }, // 0x00007B78
};

Vtx_t _spot18_room_3_vertices_00007B88[8] = 
{
	 { -743, 320, 16, 0, -140, 4991, 127, 127, 127, 255 }, // 0x00007B88
	 { -902, 320, 24, 0, -211, 6004, 127, 127, 127, 255 }, // 0x00007B98
	 { -894, 320, 184, 0, 803, 6076, 127, 127, 127, 255 }, // 0x00007BA8
	 { -734, 320, 175, 0, 874, 5062, 127, 127, 127, 255 }, // 0x00007BB8
	 { -744, 280, -65, 0, -650, 4938, 102, 102, 102, 255 }, // 0x00007BC8
	 { -753, 280, -225, 0, -1663, 4866, 76, 76, 76, 255 }, // 0x00007BD8
	 { -913, 280, -216, 0, -1735, 5880, 76, 76, 76, 255 }, // 0x00007BE8
	 { -904, 280, -56, 0, -721, 5951, 102, 102, 102, 255 }, // 0x00007BF8
};

Vtx_t _spot18_room_3_vertices_00007C08[12] = 
{
	 { -583, 400, 7, 0, 0, 0, 204, 204, 204, 255 }, // 0x00007C08
	 { -743, 320, 16, 0, 0, 4096, 127, 127, 127, 255 }, // 0x00007C18
	 { -734, 320, 175, 0, 2048, 4096, 127, 127, 127, 255 }, // 0x00007C28
	 { -574, 400, 167, 0, 2048, 0, 204, 204, 204, 255 }, // 0x00007C38
	 { -744, 280, -65, 0, -34, 2066, 102, 102, 102, 255 }, // 0x00007C48
	 { -904, 280, -56, 0, 2014, 2066, 102, 102, 102, 255 }, // 0x00007C58
	 { -902, 320, 24, 0, 2048, 0, 127, 127, 127, 255 }, // 0x00007C68
	 { -743, 320, 16, 0, 0, 0, 127, 127, 127, 255 }, // 0x00007C78
	 { -744, 280, -65, 0, 0, 0, 102, 102, 102, 255 }, // 0x00007C88
	 { -584, 200, -74, 0, 0, 4096, 76, 76, 76, 255 }, // 0x00007C98
	 { -593, 200, -233, 0, 2048, 4096, 76, 76, 76, 255 }, // 0x00007CA8
	 { -753, 280, -225, 0, 2048, 0, 76, 76, 76, 255 }, // 0x00007CB8
};

Vtx_t _spot18_room_3_vertices_00007CC8[4] = 
{
	 { -1032, 760, 592, 0, -1906, 504, 37, 37, 38, 255 }, // 0x00007CC8
	 { -1192, 760, 601, 0, -2284, 1890, 25, 25, 25, 255 }, // 0x00007CD8
	 { -1213, 560, 201, 0, 1182, 2836, 25, 25, 25, 255 }, // 0x00007CE8
	 { -1053, 560, 193, 0, 1560, 1449, 37, 37, 38, 255 }, // 0x00007CF8
};

Vtx_t _spot18_room_3_vertices_00007D08[14] = 
{
	 { -1213, 560, 201, 0, -2048, 410, 25, 25, 25, 255 }, // 0x00007D08
	 { -1192, 760, 601, 0, -4608, 410, 25, 25, 25, 255 }, // 0x00007D18
	 { -1192, 600, 601, 0, -4608, 2048, 165, 165, 165, 255 }, // 0x00007D28
	 { -1213, 400, 201, 0, -2048, 2048, 127, 127, 127, 255 }, // 0x00007D38
	 { -1053, 560, 193, 0, 0, 410, 37, 37, 38, 255 }, // 0x00007D48
	 { -1053, 400, 193, 0, 0, 2048, 127, 127, 127, 255 }, // 0x00007D58
	 { -1032, 600, 592, 0, 2560, 2048, 178, 178, 178, 255 }, // 0x00007D68
	 { -1032, 760, 592, 0, 2560, 410, 37, 37, 38, 255 }, // 0x00007D78
	 { -1183, 760, 761, 0, -5632, 410, 37, 37, 38, 255 }, // 0x00007D88
	 { -1183, 600, 761, 0, -5632, 2048, 178, 178, 178, 255 }, // 0x00007D98
	 { -800, 600, 580, 0, 4046, 2048, 229, 229, 229, 255 }, // 0x00007DA8
	 { -800, 760, 580, 0, 4046, 410, 165, 165, 165, 255 }, // 0x00007DB8
	 { -800, 600, 740, 0, -8086, 2048, 229, 229, 229, 255 }, // 0x00007DC8
	 { -800, 760, 740, 0, -8086, 410, 165, 165, 165, 255 }, // 0x00007DD8
};

Vtx_t _spot18_room_3_vertices_00007DE8[5] = 
{
	 { -800, 760, 740, 0, -2764, -1811, 165, 165, 165, 255 }, // 0x00007DE8
	 { -1032, 760, 592, 0, -1906, 504, 37, 37, 38, 255 }, // 0x00007DF8
	 { -800, 760, 580, 0, -1358, -1507, 165, 165, 165, 255 }, // 0x00007E08
	 { -1183, 760, 761, 0, -3671, 1512, 37, 37, 38, 255 }, // 0x00007E18
	 { -1192, 760, 601, 0, -2284, 1890, 25, 25, 25, 255 }, // 0x00007E28
};

Vtx_t _spot18_room_3_vertices_00007E38[6] = 
{
	 { -1062, 560, 33, 0, 0, 410, 37, 37, 38, 255 }, // 0x00007E38
	 { -1222, 560, 42, 0, -1024, 410, 37, 37, 38, 255 }, // 0x00007E48
	 { -1222, 400, 42, 0, -1024, 2048, 127, 127, 127, 255 }, // 0x00007E58
	 { -1062, 400, 33, 0, 0, 2048, 127, 127, 127, 255 }, // 0x00007E68
	 { -1213, 400, 201, 0, -2048, 2048, 127, 127, 127, 255 }, // 0x00007E78
	 { -1213, 560, 201, 0, -2048, 410, 25, 25, 25, 255 }, // 0x00007E88
};

Vtx_t _spot18_room_3_vertices_00007E98[7] = 
{
	 { -1213, 560, 201, 0, 1182, 2836, 25, 25, 25, 255 }, // 0x00007E98
	 { -1222, 560, 42, 0, 2568, 3214, 37, 37, 38, 255 }, // 0x00007EA8
	 { -1062, 560, 33, 0, 2946, 1827, 37, 37, 38, 255 }, // 0x00007EB8
	 { -1053, 560, 193, 0, 1560, 1449, 37, 37, 38, 255 }, // 0x00007EC8
	 { -902, 480, 24, 0, 3324, 441, 37, 37, 38, 255 }, // 0x00007ED8
	 { -894, 480, 184, 0, 1938, 63, 37, 37, 38, 255 }, // 0x00007EE8
	 { -1053, 560, 193, 0, 1560, 1449, 37, 37, 38, 255 }, // 0x00007EF8
};

Vtx_t _spot18_room_3_vertices_00007F08[8] = 
{
	 { -894, 320, 184, 0, -1024, 2048, 127, 127, 127, 255 }, // 0x00007F08
	 { -1053, 400, 193, 0, 0, 2048, 127, 127, 127, 255 }, // 0x00007F18
	 { -1053, 560, 193, 0, 0, 410, 37, 37, 38, 255 }, // 0x00007F28
	 { -894, 480, 184, 0, -1024, 410, 37, 37, 38, 255 }, // 0x00007F38
	 { -1062, 560, 33, 0, 0, 410, 37, 37, 38, 255 }, // 0x00007F48
	 { -1062, 400, 33, 0, 0, 2048, 127, 127, 127, 255 }, // 0x00007F58
	 { -902, 320, 24, 0, 1024, 2048, 127, 127, 127, 255 }, // 0x00007F68
	 { -902, 480, 24, 0, 1024, 410, 37, 37, 38, 255 }, // 0x00007F78
};

Vtx_t _spot18_room_3_vertices_00007F88[4] = 
{
	 { -1053, 400, 193, 0, 731, 7089, 127, 127, 127, 255 }, // 0x00007F88
	 { -1062, 400, 33, 0, -282, 7018, 127, 127, 127, 255 }, // 0x00007F98
	 { -1222, 400, 42, 0, -354, 8031, 127, 127, 127, 255 }, // 0x00007FA8
	 { -1213, 400, 201, 0, 660, 8103, 127, 127, 127, 255 }, // 0x00007FB8
};

Vtx_t _spot18_room_3_vertices_00007FC8[8] = 
{
	 { -1053, 400, 193, 0, 0, 8704, 127, 127, 127, 255 }, // 0x00007FC8
	 { -1213, 400, 201, 0, 2048, 8704, 127, 127, 127, 255 }, // 0x00007FD8
	 { -1192, 600, 601, 0, 2048, -1536, 165, 165, 165, 255 }, // 0x00007FE8
	 { -1032, 600, 592, 0, 0, -1536, 178, 178, 178, 255 }, // 0x00007FF8
	 { -1053, 400, 193, 0, 0, 0, 127, 127, 127, 255 }, // 0x00008008
	 { -894, 320, 184, 0, 0, 4096, 127, 127, 127, 255 }, // 0x00008018
	 { -902, 320, 24, 0, 2048, 4096, 127, 127, 127, 255 }, // 0x00008028
	 { -1062, 400, 33, 0, 2048, 0, 127, 127, 127, 255 }, // 0x00008038
};

Vtx_t _spot18_room_3_vertices_00008048[5] = 
{
	 { -1032, 600, 592, 0, -8463, -2457, 178, 178, 178, 255 }, // 0x00008048
	 { -1192, 600, 601, 0, -9827, -2383, 165, 165, 165, 255 }, // 0x00008058
	 { -1183, 600, 761, 0, -9753, -1020, 178, 178, 178, 255 }, // 0x00008068
	 { -800, 600, 580, 0, -6485, -2564, 229, 229, 229, 255 }, // 0x00008078
	 { -800, 600, 740, 0, -6485, -1196, 229, 229, 229, 255 }, // 0x00008088
};

Vtx_t _spot18_room_3_vertices_00008098[16] = 
{
	 { -419, 457, -83, 0, 8192, 0, 212, 171, 123, 255 }, // 0x00008098
	 { -419, 397, -83, 0, 8192, 2048, 117, 100, 70, 255 }, // 0x000080A8
	 { -380, 397, 450, 0, -9862, 2048, 117, 100, 70, 255 }, // 0x000080B8
	 { -380, 457, 450, 0, -9862, 0, 212, 171, 123, 255 }, // 0x000080C8
	 { -380, 457, 450, 0, 7275, 0, 212, 171, 123, 255 }, // 0x000080D8
	 { -380, 397, 450, 0, 7275, 2048, 117, 100, 70, 255 }, // 0x000080E8
	 { -79, 397, 611, 0, -4096, 2048, 117, 100, 70, 255 }, // 0x000080F8
	 { -79, 457, 611, 0, -4096, 0, 212, 171, 123, 255 }, // 0x00008108
	 { -396, 397, -237, 0, 107, 2048, 117, 100, 70, 255 }, // 0x00008118
	 { -419, 397, -83, 0, -5229, 2048, 117, 100, 70, 255 }, // 0x00008128
	 { -419, 457, -83, 0, -5229, 0, 212, 171, 123, 255 }, // 0x00008138
	 { -396, 457, -237, 0, 107, 0, 212, 171, 123, 255 }, // 0x00008148
	 { -139, 257, -387, 0, 6115, 0, 212, 171, 123, 255 }, // 0x00008158
	 { -139, 197, -387, 0, 6115, 2048, 117, 100, 70, 255 }, // 0x00008168
	 { -235, 197, -71, 0, -5089, 2048, 117, 100, 70, 255 }, // 0x00008178
	 { -235, 257, -71, 0, -5089, 0, 212, 171, 123, 255 }, // 0x00008188
};

Vtx_t _spot18_room_3_vertices_00008198[8] = 
{
	 { -1394, -3, -463, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008198
	 { -79, -3, -463, 0, 0, 0, 0, 0, 0, 0 }, // 0x000081A8
	 { -1394, 800, -463, 0, 0, 0, 0, 0, 0, 0 }, // 0x000081B8
	 { -79, 800, -463, 0, 0, 0, 0, 0, 0, 0 }, // 0x000081C8
	 { -1394, -3, 761, 0, 0, 0, 0, 0, 0, 0 }, // 0x000081D8
	 { -79, -3, 761, 0, 0, 0, 0, 0, 0, 0 }, // 0x000081E8
	 { -1394, 800, 761, 0, 0, 0, 0, 0, 0, 0 }, // 0x000081F8
	 { -79, 800, 761, 0, 0, 0, 0, 0, 0, 0 }, // 0x00008208
};

Gfx _spot18_room_3_dlist_00008218[] =
{
	gsDPPipeSync(), // 0x00008218
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00008220
	gsSPVertex(_spot18_room_3_vertices_00008198, 8, 0), // 0x00008228
	gsSPCullDisplayList(0, 7), // 0x00008230
	gsDPPipeSync(), // 0x00008238
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00008240
	gsDPPipeSync(), // 0x00008248
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008250
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00008258
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x00008260
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008268
	gsDPLoadSync(), // 0x00008270
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008278
	gsDPPipeSync(), // 0x00008280
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008288
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008290
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008298
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000082A0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000082A8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000082B0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000082B8
	gsSPVertex(_spot18_room_3_vertices_00006A58, 3, 0), // 0x000082C0
	gsSP1Triangle(0, 1, 2, 0), // 0x000082C8
	gsDPPipeSync(), // 0x000082D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000D848), // 0x000082D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x000082E0
	gsDPLoadSync(), // 0x000082E8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000082F0
	gsDPPipeSync(), // 0x000082F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00008300
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00008308
	gsSPVertex(_spot18_room_3_vertices_00006A88, 7, 0), // 0x00008310
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008318
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x00008320
	gsSP1Triangle(4, 6, 5, 0), // 0x00008328
	gsDPPipeSync(), // 0x00008330
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x00008338
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008340
	gsDPLoadSync(), // 0x00008348
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008350
	gsDPPipeSync(), // 0x00008358
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008360
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008368
	gsSPVertex(_spot18_room_3_vertices_00006AF8, 3, 0), // 0x00008370
	gsSP1Triangle(0, 1, 2, 0), // 0x00008378
	gsDPPipeSync(), // 0x00008380
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000D848), // 0x00008388
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x00008390
	gsDPLoadSync(), // 0x00008398
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000083A0
	gsDPPipeSync(), // 0x000083A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x000083B0
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x000083B8
	gsSPVertex(_spot18_room_3_vertices_00006B28, 7, 0), // 0x000083C0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000083C8
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x000083D0
	gsSP1Triangle(4, 6, 5, 0), // 0x000083D8
	gsDPPipeSync(), // 0x000083E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x000083E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000083F0
	gsDPLoadSync(), // 0x000083F8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008400
	gsDPPipeSync(), // 0x00008408
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008410
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008418
	gsSPVertex(_spot18_room_3_vertices_00006B98, 3, 0), // 0x00008420
	gsSP1Triangle(0, 1, 2, 0), // 0x00008428
	gsDPPipeSync(), // 0x00008430
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000C048), // 0x00008438
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x00008440
	gsDPLoadSync(), // 0x00008448
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008450
	gsDPPipeSync(), // 0x00008458
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00008460
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00008468
	gsSPVertex(_spot18_room_3_vertices_00006BC8, 7, 0), // 0x00008470
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008478
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x00008480
	gsSP1Triangle(4, 6, 5, 0), // 0x00008488
	gsDPPipeSync(), // 0x00008490
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x00008498
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000084A0
	gsDPLoadSync(), // 0x000084A8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000084B0
	gsDPPipeSync(), // 0x000084B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000084C0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000084C8
	gsSPVertex(_spot18_room_3_vertices_00006C38, 3, 0), // 0x000084D0
	gsSP1Triangle(0, 1, 2, 0), // 0x000084D8
	gsDPPipeSync(), // 0x000084E0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000C048), // 0x000084E8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0), // 0x000084F0
	gsDPLoadSync(), // 0x000084F8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008500
	gsDPPipeSync(), // 0x00008508
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0), // 0x00008510
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00008518
	gsSPVertex(_spot18_room_3_vertices_00006C68, 7, 0), // 0x00008520
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008528
	gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0), // 0x00008530
	gsSP1Triangle(4, 6, 5, 0), // 0x00008538
	gsDPPipeSync(), // 0x00008540
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00008548
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00008550
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008558
	gsDPLoadSync(), // 0x00008560
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008568
	gsDPPipeSync(), // 0x00008570
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008578
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008580
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x00008588
	gsDPTileSync(), // 0x00008590
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00008598
	gsDPLoadSync(), // 0x000085A0
	gsDPLoadTLUTCmd(7, 255), // 0x000085A8
	gsDPPipeSync(), // 0x000085B0
	gsSPVertex(_spot18_room_3_vertices_00006CD8, 3, 0), // 0x000085B8
	gsSP1Triangle(0, 1, 2, 0), // 0x000085C0
	gsDPPipeSync(), // 0x000085C8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000085D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000C848), // 0x000085D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000085E0
	gsDPLoadSync(), // 0x000085E8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000085F0
	gsDPPipeSync(), // 0x000085F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00008600
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008608
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008610
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00008618
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00008620
	gsSPVertex(_spot18_room_3_vertices_00006D08, 4, 0), // 0x00008628
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008630
	gsDPPipeSync(), // 0x00008638
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00008640
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00008648
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008650
	gsDPLoadSync(), // 0x00008658
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008660
	gsDPPipeSync(), // 0x00008668
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008670
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008678
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x00008680
	gsDPTileSync(), // 0x00008688
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00008690
	gsDPLoadSync(), // 0x00008698
	gsDPLoadTLUTCmd(7, 255), // 0x000086A0
	gsDPPipeSync(), // 0x000086A8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000086B0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000086B8
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x000086C0
	gsSPVertex(_spot18_room_3_vertices_00006D48, 4, 0), // 0x000086C8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000086D0
	gsDPPipeSync(), // 0x000086D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x000086E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000086E8
	gsDPLoadSync(), // 0x000086F0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000086F8
	gsDPPipeSync(), // 0x00008700
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00008708
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00008710
	gsSPVertex(_spot18_room_3_vertices_00006D88, 4, 0), // 0x00008718
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008720
	gsDPPipeSync(), // 0x00008728
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00008730
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008738
	gsDPLoadSync(), // 0x00008740
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008748
	gsDPPipeSync(), // 0x00008750
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008758
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008760
	gsSPVertex(_spot18_room_3_vertices_00006DC8, 8, 0), // 0x00008768
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008770
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00008778
	gsDPPipeSync(), // 0x00008780
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00008788
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00008790
	gsDPLoadSync(), // 0x00008798
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000087A0
	gsDPPipeSync(), // 0x000087A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000087B0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000087B8
	gsSPVertex(_spot18_room_3_vertices_00006E48, 4, 0), // 0x000087C0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000087C8
	gsDPPipeSync(), // 0x000087D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x000087D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000087E0
	gsDPLoadSync(), // 0x000087E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000087F0
	gsDPPipeSync(), // 0x000087F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008800
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008808
	gsSPVertex(_spot18_room_3_vertices_00006E88, 7, 0), // 0x00008810
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008818
	gsSP1Triangle(3, 6, 4, 0), // 0x00008820
	gsDPPipeSync(), // 0x00008828
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00008830
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00008838
	gsDPLoadSync(), // 0x00008840
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008848
	gsDPPipeSync(), // 0x00008850
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00008858
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00008860
	gsSPVertex(_spot18_room_3_vertices_00006EF8, 7, 0), // 0x00008868
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008870
	gsSP2Triangles(4, 3, 0, 0, 4, 5, 3, 0), // 0x00008878
	gsSP1Triangle(6, 5, 4, 0), // 0x00008880
	gsDPPipeSync(), // 0x00008888
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00008890
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00008898
	gsDPLoadSync(), // 0x000088A0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000088A8
	gsDPPipeSync(), // 0x000088B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000088B8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000088C0
	gsSPVertex(_spot18_room_3_vertices_00006F68, 4, 0), // 0x000088C8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000088D0
	gsDPPipeSync(), // 0x000088D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x000088E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000088E8
	gsDPLoadSync(), // 0x000088F0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000088F8
	gsDPPipeSync(), // 0x00008900
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008908
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008910
	gsSPVertex(_spot18_room_3_vertices_00006FA8, 4, 0), // 0x00008918
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008920
	gsDPPipeSync(), // 0x00008928
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00008930
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00008938
	gsDPLoadSync(), // 0x00008940
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008948
	gsDPPipeSync(), // 0x00008950
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00008958
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00008960
	gsSPVertex(_spot18_room_3_vertices_00006FE8, 4, 0), // 0x00008968
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008970
	gsDPPipeSync(), // 0x00008978
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00008980
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008988
	gsDPLoadSync(), // 0x00008990
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008998
	gsDPPipeSync(), // 0x000089A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000089A8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000089B0
	gsSPVertex(_spot18_room_3_vertices_00007028, 4, 0), // 0x000089B8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000089C0
	gsDPPipeSync(), // 0x000089C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x000089D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000089D8
	gsDPLoadSync(), // 0x000089E0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000089E8
	gsDPPipeSync(), // 0x000089F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000089F8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00008A00
	gsSPVertex(_spot18_room_3_vertices_00007068, 3, 0), // 0x00008A08
	gsSP1Triangle(0, 1, 2, 0), // 0x00008A10
	gsDPPipeSync(), // 0x00008A18
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00008A20
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000C848), // 0x00008A28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00008A30
	gsDPLoadSync(), // 0x00008A38
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00008A40
	gsDPPipeSync(), // 0x00008A48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00008A50
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008A58
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008A60
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00008A68
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00008A70
	gsSPVertex(_spot18_room_3_vertices_00007098, 8, 0), // 0x00008A78
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008A80
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00008A88
	gsDPPipeSync(), // 0x00008A90
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00008A98
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00008AA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008AA8
	gsDPLoadSync(), // 0x00008AB0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008AB8
	gsDPPipeSync(), // 0x00008AC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008AC8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008AD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x00008AD8
	gsDPTileSync(), // 0x00008AE0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00008AE8
	gsDPLoadSync(), // 0x00008AF0
	gsDPLoadTLUTCmd(7, 255), // 0x00008AF8
	gsDPPipeSync(), // 0x00008B00
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00008B08
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00008B10
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00008B18
	gsSPVertex(_spot18_room_3_vertices_00007118, 12, 0), // 0x00008B20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008B28
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00008B30
	gsSP2Triangles(1, 0, 8, 0, 1, 8, 9, 0), // 0x00008B38
	gsSP2Triangles(8, 4, 10, 0, 8, 10, 11, 0), // 0x00008B40
	gsDPPipeSync(), // 0x00008B48
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015848), // 0x00008B50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008B58
	gsDPLoadSync(), // 0x00008B60
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008B68
	gsDPPipeSync(), // 0x00008B70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008B78
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008B80
	gsSPVertex(_spot18_room_3_vertices_000071D8, 8, 0), // 0x00008B88
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x00008B90
	gsSP2Triangles(4, 1, 5, 0, 6, 7, 0, 0), // 0x00008B98
	gsSP2Triangles(0, 2, 6, 0, 1, 4, 3, 0), // 0x00008BA0
	gsDPPipeSync(), // 0x00008BA8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000DC48), // 0x00008BB0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008BB8
	gsDPLoadSync(), // 0x00008BC0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008BC8
	gsDPPipeSync(), // 0x00008BD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008BD8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008BE0
	gsSPVertex(_spot18_room_3_vertices_00007258, 8, 0), // 0x00008BE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008BF0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00008BF8
	gsDPPipeSync(), // 0x00008C00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016048), // 0x00008C08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008C10
	gsDPLoadSync(), // 0x00008C18
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008C20
	gsDPPipeSync(), // 0x00008C28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008C30
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008C38
	gsSPVertex(_spot18_room_3_vertices_000072D8, 4, 0), // 0x00008C40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008C48
	gsDPPipeSync(), // 0x00008C50
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015048), // 0x00008C58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008C60
	gsDPLoadSync(), // 0x00008C68
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008C70
	gsDPPipeSync(), // 0x00008C78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008C80
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008C88
	gsSPVertex(_spot18_room_3_vertices_00007318, 6, 0), // 0x00008C90
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00008C98
	gsSP1Triangle(3, 4, 5, 0), // 0x00008CA0
	gsDPPipeSync(), // 0x00008CA8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016048), // 0x00008CB0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008CB8
	gsDPLoadSync(), // 0x00008CC0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008CC8
	gsDPPipeSync(), // 0x00008CD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008CD8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008CE0
	gsSPVertex(_spot18_room_3_vertices_00007378, 4, 0), // 0x00008CE8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008CF0
	gsDPPipeSync(), // 0x00008CF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00011448), // 0x00008D00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008D08
	gsDPLoadSync(), // 0x00008D10
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008D18
	gsDPPipeSync(), // 0x00008D20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008D28
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008D30
	gsSPVertex(_spot18_room_3_vertices_000073B8, 4, 0), // 0x00008D38
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00008D40
	gsDPPipeSync(), // 0x00008D48
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016048), // 0x00008D50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008D58
	gsDPLoadSync(), // 0x00008D60
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008D68
	gsDPPipeSync(), // 0x00008D70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008D78
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008D80
	gsSPVertex(_spot18_room_3_vertices_000073F8, 4, 0), // 0x00008D88
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00008D90
	gsDPPipeSync(), // 0x00008D98
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000E448), // 0x00008DA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008DA8
	gsDPLoadSync(), // 0x00008DB0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008DB8
	gsDPPipeSync(), // 0x00008DC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008DC8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008DD0
	gsSPVertex(_spot18_room_3_vertices_00007438, 11, 0), // 0x00008DD8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00008DE0
	gsSP2Triangles(4, 6, 7, 0, 8, 9, 10, 0), // 0x00008DE8
	gsDPPipeSync(), // 0x00008DF0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016048), // 0x00008DF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008E00
	gsDPLoadSync(), // 0x00008E08
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008E10
	gsDPPipeSync(), // 0x00008E18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008E20
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008E28
	gsSPVertex(_spot18_room_3_vertices_000074E8, 11, 0), // 0x00008E30
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008E38
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00008E40
	gsSP2Triangles(8, 0, 7, 0, 9, 7, 10, 0), // 0x00008E48
	gsDPPipeSync(), // 0x00008E50
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000E448), // 0x00008E58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008E60
	gsDPLoadSync(), // 0x00008E68
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008E70
	gsDPPipeSync(), // 0x00008E78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008E80
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008E88
	gsSPVertex(_spot18_room_3_vertices_00007598, 4, 0), // 0x00008E90
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00008E98
	gsDPPipeSync(), // 0x00008EA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015048), // 0x00008EA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008EB0
	gsDPLoadSync(), // 0x00008EB8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008EC0
	gsDPPipeSync(), // 0x00008EC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008ED0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008ED8
	gsSPVertex(_spot18_room_3_vertices_000075D8, 5, 0), // 0x00008EE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008EE8
	gsSP1Triangle(4, 0, 3, 0), // 0x00008EF0
	gsDPPipeSync(), // 0x00008EF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016848), // 0x00008F00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00008F08
	gsDPLoadSync(), // 0x00008F10
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00008F18
	gsDPPipeSync(), // 0x00008F20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00008F28
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00008F30
	gsSPVertex(_spot18_room_3_vertices_00007628, 4, 0), // 0x00008F38
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008F40
	gsDPPipeSync(), // 0x00008F48
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00008F50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00008F58
	gsDPLoadSync(), // 0x00008F60
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00008F68
	gsDPPipeSync(), // 0x00008F70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00008F78
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00008F80
	gsSPVertex(_spot18_room_3_vertices_00007668, 4, 0), // 0x00008F88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008F90
	gsDPPipeSync(), // 0x00008F98
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00008FA0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00008FA8
	gsDPLoadSync(), // 0x00008FB0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00008FB8
	gsDPPipeSync(), // 0x00008FC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00008FC8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00008FD0
	gsSPVertex(_spot18_room_3_vertices_000076A8, 8, 0), // 0x00008FD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00008FE0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00008FE8
	gsDPPipeSync(), // 0x00008FF0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00008FF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00009000
	gsDPLoadSync(), // 0x00009008
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00009010
	gsDPPipeSync(), // 0x00009018
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00009020
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00009028
	gsSPVertex(_spot18_room_3_vertices_00007728, 4, 0), // 0x00009030
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009038
	gsDPPipeSync(), // 0x00009040
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00009048
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00009050
	gsDPLoadSync(), // 0x00009058
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00009060
	gsDPPipeSync(), // 0x00009068
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00009070
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00009078
	gsSPVertex(_spot18_room_3_vertices_00007768, 4, 0), // 0x00009080
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009088
	gsDPPipeSync(), // 0x00009090
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00009098
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000090A0
	gsDPLoadSync(), // 0x000090A8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000090B0
	gsDPPipeSync(), // 0x000090B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000090C0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000090C8
	gsSPVertex(_spot18_room_3_vertices_000077A8, 4, 0), // 0x000090D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000090D8
	gsDPPipeSync(), // 0x000090E0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x000090E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000090F0
	gsDPLoadSync(), // 0x000090F8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00009100
	gsDPPipeSync(), // 0x00009108
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00009110
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00009118
	gsSPVertex(_spot18_room_3_vertices_000077E8, 4, 0), // 0x00009120
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009128
	gsDPPipeSync(), // 0x00009130
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00009138
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00009140
	gsDPLoadSync(), // 0x00009148
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00009150
	gsDPPipeSync(), // 0x00009158
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00009160
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00009168
	gsSPVertex(_spot18_room_3_vertices_00007828, 4, 0), // 0x00009170
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009178
	gsDPPipeSync(), // 0x00009180
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00009188
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00009190
	gsDPLoadSync(), // 0x00009198
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000091A0
	gsDPPipeSync(), // 0x000091A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000091B0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000091B8
	gsSPVertex(_spot18_room_3_vertices_00007868, 4, 0), // 0x000091C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000091C8
	gsDPPipeSync(), // 0x000091D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x000091D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000091E0
	gsDPLoadSync(), // 0x000091E8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000091F0
	gsDPPipeSync(), // 0x000091F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00009200
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00009208
	gsSPVertex(_spot18_room_3_vertices_000078A8, 4, 0), // 0x00009210
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009218
	gsDPPipeSync(), // 0x00009220
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00009228
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00009230
	gsDPLoadSync(), // 0x00009238
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00009240
	gsDPPipeSync(), // 0x00009248
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00009250
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00009258
	gsSPVertex(_spot18_room_3_vertices_000078E8, 8, 0), // 0x00009260
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009268
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00009270
	gsDPPipeSync(), // 0x00009278
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00009280
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00009288
	gsDPLoadSync(), // 0x00009290
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00009298
	gsDPPipeSync(), // 0x000092A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000092A8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000092B0
	gsSPVertex(_spot18_room_3_vertices_00007968, 4, 0), // 0x000092B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000092C0
	gsDPPipeSync(), // 0x000092C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x000092D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x000092D8
	gsDPLoadSync(), // 0x000092E0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000092E8
	gsDPPipeSync(), // 0x000092F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000092F8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00009300
	gsSPVertex(_spot18_room_3_vertices_000079A8, 4, 0), // 0x00009308
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009310
	gsDPPipeSync(), // 0x00009318
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00009320
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00009328
	gsDPLoadSync(), // 0x00009330
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00009338
	gsDPPipeSync(), // 0x00009340
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00009348
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00009350
	gsSPVertex(_spot18_room_3_vertices_000079E8, 6, 0), // 0x00009358
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009360
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00009368
	gsDPPipeSync(), // 0x00009370
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00009378
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00009380
	gsDPLoadSync(), // 0x00009388
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00009390
	gsDPPipeSync(), // 0x00009398
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000093A0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000093A8
	gsSPVertex(_spot18_room_3_vertices_00007A48, 12, 0), // 0x000093B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000093B8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000093C0
	gsSP2Triangles(1, 5, 4, 0, 1, 4, 2, 0), // 0x000093C8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000093D0
	gsDPPipeSync(), // 0x000093D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x000093E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000093E8
	gsDPLoadSync(), // 0x000093F0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000093F8
	gsDPPipeSync(), // 0x00009400
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00009408
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00009410
	gsSPVertex(_spot18_room_3_vertices_00007B08, 4, 0), // 0x00009418
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009420
	gsDPPipeSync(), // 0x00009428
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00009430
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00009438
	gsDPLoadSync(), // 0x00009440
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00009448
	gsDPPipeSync(), // 0x00009450
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00009458
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00009460
	gsSPVertex(_spot18_room_3_vertices_00007B48, 4, 0), // 0x00009468
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009470
	gsDPPipeSync(), // 0x00009478
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00009480
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00009488
	gsDPLoadSync(), // 0x00009490
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00009498
	gsDPPipeSync(), // 0x000094A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000094A8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000094B0
	gsSPVertex(_spot18_room_3_vertices_00007B88, 8, 0), // 0x000094B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000094C0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000094C8
	gsDPPipeSync(), // 0x000094D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00013848), // 0x000094D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000094E0
	gsDPLoadSync(), // 0x000094E8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000094F0
	gsDPPipeSync(), // 0x000094F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00009500
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00009508
	gsSPVertex(_spot18_room_3_vertices_00007C08, 12, 0), // 0x00009510
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009518
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00009520
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00009528
	gsDPPipeSync(), // 0x00009530
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x00009538
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00009540
	gsDPLoadSync(), // 0x00009548
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00009550
	gsDPPipeSync(), // 0x00009558
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00009560
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00009568
	gsSPVertex(_spot18_room_3_vertices_00007CC8, 4, 0), // 0x00009570
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009578
	gsDPPipeSync(), // 0x00009580
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00009588
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00009590
	gsDPLoadSync(), // 0x00009598
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000095A0
	gsDPPipeSync(), // 0x000095A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x000095B0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000095B8
	gsSPVertex(_spot18_room_3_vertices_00007D08, 14, 0), // 0x000095C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000095C8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000095D0
	gsSP2Triangles(2, 1, 8, 0, 2, 8, 9, 0), // 0x000095D8
	gsSP2Triangles(6, 10, 11, 0, 6, 11, 7, 0), // 0x000095E0
	gsSP2Triangles(12, 9, 8, 0, 12, 8, 13, 0), // 0x000095E8
	gsDPPipeSync(), // 0x000095F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x000095F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00009600
	gsDPLoadSync(), // 0x00009608
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00009610
	gsDPPipeSync(), // 0x00009618
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00009620
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00009628
	gsSPVertex(_spot18_room_3_vertices_00007DE8, 5, 0), // 0x00009630
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00009638
	gsSP1Triangle(3, 4, 1, 0), // 0x00009640
	gsDPPipeSync(), // 0x00009648
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00009650
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00009658
	gsDPLoadSync(), // 0x00009660
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00009668
	gsDPPipeSync(), // 0x00009670
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00009678
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00009680
	gsSPVertex(_spot18_room_3_vertices_00007E38, 6, 0), // 0x00009688
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009690
	gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0), // 0x00009698
	gsDPPipeSync(), // 0x000096A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x000096A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000096B0
	gsDPLoadSync(), // 0x000096B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000096C0
	gsDPPipeSync(), // 0x000096C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000096D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000096D8
	gsSPVertex(_spot18_room_3_vertices_00007E98, 7, 0), // 0x000096E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000096E8
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 6, 0), // 0x000096F0
	gsDPPipeSync(), // 0x000096F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x00009700
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x00009708
	gsDPLoadSync(), // 0x00009710
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00009718
	gsDPPipeSync(), // 0x00009720
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x00009728
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00009730
	gsSPVertex(_spot18_room_3_vertices_00007F08, 8, 0), // 0x00009738
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009740
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00009748
	gsDPPipeSync(), // 0x00009750
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00009758
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00009760
	gsDPLoadSync(), // 0x00009768
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00009770
	gsDPPipeSync(), // 0x00009778
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00009780
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00009788
	gsSPVertex(_spot18_room_3_vertices_00007F88, 4, 0), // 0x00009790
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00009798
	gsDPPipeSync(), // 0x000097A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00013848), // 0x000097A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000097B0
	gsDPLoadSync(), // 0x000097B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000097C0
	gsDPPipeSync(), // 0x000097C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000097D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000097D8
	gsSPVertex(_spot18_room_3_vertices_00007FC8, 8, 0), // 0x000097E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000097E8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000097F0
	gsDPPipeSync(), // 0x000097F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x00009800
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00009808
	gsDPLoadSync(), // 0x00009810
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00009818
	gsDPPipeSync(), // 0x00009820
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00009828
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00009830
	gsSPVertex(_spot18_room_3_vertices_00008048, 5, 0), // 0x00009838
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0), // 0x00009840
	gsSP1Triangle(0, 2, 4, 0), // 0x00009848
	gsDPPipeSync(), // 0x00009850
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00009858
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00017448), // 0x00009860
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 6, 0), // 0x00009868
	gsDPLoadSync(), // 0x00009870
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00009878
	gsDPPipeSync(), // 0x00009880
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 6, 0, 0, 6, 0), // 0x00009888
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00009890
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00009898
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000098A0
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000098A8
	gsSPVertex(_spot18_room_3_vertices_00008098, 16, 0), // 0x000098B0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000098B8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000098C0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000098C8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000098D0
	gsSPEndDisplayList(), // 0x000098D8
};

Vtx_t _spot18_room_3_vertices_000098E0[11] = 
{
	 { -130, 600, -386, 0, -363, -4132, 165, 165, 165, 255 }, // 0x000098E0
	 { -130, 397, -386, 0, -363, -2048, 102, 102, 102, 255 }, // 0x000098F0
	 { 105, 397, -385, 0, 1263, -2048, 127, 127, 127, 255 }, // 0x00009900
	 { 105, 597, -385, 0, 1263, -4096, 114, 114, 114, 255 }, // 0x00009910
	 { 105, -3, -385, 0, 1263, 2048, 76, 76, 76, 255 }, // 0x00009920
	 { 105, 197, -385, 0, 1263, 0, 51, 51, 51, 255 }, // 0x00009930
	 { -10, 197, -385, 0, 469, 0, 51, 51, 51, 255 }, // 0x00009940
	 { -10, -3, -385, 0, 469, 2048, 76, 76, 76, 255 }, // 0x00009950
	 { -130, 197, -386, 0, -363, 0, 51, 51, 51, 255 }, // 0x00009960
	 { -130, 157, -386, 0, -363, 410, 76, 76, 76, 255 }, // 0x00009970
	 { -10, 157, -385, 0, 469, 410, 76, 76, 76, 255 }, // 0x00009980
};

Vtx_t _spot18_room_3_vertices_00009990[18] = 
{
	 { -10, 157, -385, 0, 5769, -341, 76, 76, 76, 255 }, // 0x00009990
	 { -10, 157, -477, 0, 4846, -341, 37, 37, 38, 255 }, // 0x000099A0
	 { -10, -3, -477, 0, 4846, 1024, 51, 51, 51, 255 }, // 0x000099B0
	 { -10, -3, -385, 0, 5769, 1024, 76, 76, 76, 255 }, // 0x000099C0
	 { -130, 157, -386, 0, 1064, 421, 63, 63, 63, 255 }, // 0x000099D0
	 { -130, 157, -477, 0, 1648, 665, 37, 37, 38, 255 }, // 0x000099E0
	 { -10, 157, -477, 0, 2615, 181, 37, 37, 38, 255 }, // 0x000099F0
	 { -10, 157, -385, 0, 2031, -63, 76, 76, 76, 255 }, // 0x00009A00
	 { -130, -3, -386, 0, -6353, 1024, 76, 76, 76, 255 }, // 0x00009A10
	 { -130, -3, -477, 0, -5415, 1024, 51, 51, 51, 255 }, // 0x00009A20
	 { -130, 157, -477, 0, -5415, -341, 37, 37, 38, 255 }, // 0x00009A30
	 { -130, 157, -386, 0, -6353, -341, 63, 63, 63, 255 }, // 0x00009A40
	 { 16, 228, -477, 0, -7493, -949, 12, 12, 12, 255 }, // 0x00009A50
	 { -10, 157, -477, 0, -7124, -341, 37, 37, 38, 255 }, // 0x00009A60
	 { -157, 228, -477, 0, -5024, -949, 12, 12, 12, 255 }, // 0x00009A70
	 { -157, -3, -477, 0, -5024, 1024, 37, 37, 38, 255 }, // 0x00009A80
	 { 16, -3, -477, 0, 4500, 1024, 37, 37, 38, 255 }, // 0x00009A90
	 { 16, 228, -477, 0, 4500, -949, 12, 12, 12, 255 }, // 0x00009AA0
};

Vtx_t _spot18_room_3_vertices_00009AB0[4] = 
{
	 { -10, -3, -385, 0, 855, 4011, 76, 76, 76, 255 }, // 0x00009AB0
	 { -10, -3, -477, 0, 671, 3306, 51, 51, 51, 255 }, // 0x00009AC0
	 { -130, -3, -477, 0, 1660, 3041, 51, 51, 51, 255 }, // 0x00009AD0
	 { -130, -3, -386, 0, 1844, 3746, 76, 76, 76, 255 }, // 0x00009AE0
};

Vtx_t _spot18_room_3_vertices_00009AF0[12] = 
{
	 { 17, -3, -589, 0, 3484, 1024, 0, 0, 0, 255 }, // 0x00009AF0
	 { 16, -3, -477, 0, 4500, 1024, 37, 37, 38, 255 }, // 0x00009B00
	 { 16, 228, -477, 0, 4500, -949, 12, 12, 12, 255 }, // 0x00009B10
	 { 17, 228, -589, 0, 3484, -949, 0, 0, 0, 255 }, // 0x00009B20
	 { -157, -3, -477, 0, -5024, 1024, 37, 37, 38, 255 }, // 0x00009B30
	 { -157, -3, -589, 0, -3948, 1024, 0, 0, 0, 255 }, // 0x00009B40
	 { -157, 228, -589, 0, -3948, -949, 0, 0, 0, 255 }, // 0x00009B50
	 { -157, 228, -477, 0, -5024, -949, 12, 12, 12, 255 }, // 0x00009B60
	 { -157, 228, -477, 0, 1524, 817, 12, 12, 12, 255 }, // 0x00009B70
	 { -157, 228, -589, 0, 2106, 1059, 0, 0, 0, 255 }, // 0x00009B80
	 { 17, 228, -589, 0, 2883, 100, 0, 0, 0, 255 }, // 0x00009B90
	 { 16, 228, -477, 0, 2296, -144, 12, 12, 12, 255 }, // 0x00009BA0
};

Vtx_t _spot18_room_3_vertices_00009BB0[6] = 
{
	 { -157, -3, -589, 0, 1628, 2013, 0, 0, 0, 255 }, // 0x00009BB0
	 { -157, -3, -477, 0, 1887, 2982, 37, 37, 38, 255 }, // 0x00009BC0
	 { -130, -3, -477, 0, 1660, 3042, 51, 51, 51, 255 }, // 0x00009BD0
	 { 17, -3, -589, 0, 197, 2388, 0, 0, 0, 255 }, // 0x00009BE0
	 { -10, -3, -477, 0, 671, 3307, 51, 51, 51, 255 }, // 0x00009BF0
	 { 16, -3, -477, 0, 457, 3365, 37, 37, 38, 255 }, // 0x00009C00
};

Vtx_t _spot18_room_3_vertices_00009C10[4] = 
{
	 { -607, 800, -435, 0, -1432, 0, 127, 127, 127, 255 }, // 0x00009C10
	 { -607, 600, -435, 0, -1432, 2048, 140, 140, 140, 255 }, // 0x00009C20
	 { -130, 600, -386, 0, 1024, 2048, 165, 165, 165, 255 }, // 0x00009C30
	 { -130, 800, -386, 0, 1024, 0, 127, 127, 127, 255 }, // 0x00009C40
};

Vtx_t _spot18_room_3_vertices_00009C50[4] = 
{
	 { -607, 600, -435, 0, -2971, 4325, 140, 140, 140, 255 }, // 0x00009C50
	 { -263, 599, -588, 0, -725, 2273, 63, 63, 63, 255 }, // 0x00009C60
	 { -130, 600, -386, 0, 819, 3482, 165, 165, 165, 255 }, // 0x00009C70
	 { -484, 600, -689, 0, -2677, 2064, 76, 76, 76, 255 }, // 0x00009C80
};

Vtx_t _spot18_room_3_vertices_00009C90[8] = 
{
	 { -484, 400, -689, 0, -2121, 2048, 102, 102, 102, 255 }, // 0x00009C90
	 { -484, 600, -689, 0, -2129, 0, 76, 76, 76, 255 }, // 0x00009CA0
	 { -607, 600, -435, 0, -3564, 0, 140, 140, 140, 255 }, // 0x00009CB0
	 { -607, 400, -435, 0, -3564, 2048, 204, 204, 204, 255 }, // 0x00009CC0
	 { -263, 398, -588, 0, 2048, 2048, 102, 102, 102, 255 }, // 0x00009CD0
	 { -130, 397, -386, 0, 3288, 2048, 102, 102, 102, 255 }, // 0x00009CE0
	 { -130, 600, -386, 0, 3280, 0, 165, 165, 165, 255 }, // 0x00009CF0
	 { -263, 599, -588, 0, 2043, 0, 63, 63, 63, 255 }, // 0x00009D00
};

Vtx_t _spot18_room_3_vertices_00009D10[3] = 
{
	 { -607, 400, -435, 0, 0, 1529, 204, 204, 204, 255 }, // 0x00009D10
	 { -359, 396, -413, 0, 2048, 1022, 102, 102, 102, 255 }, // 0x00009D20
	 { -484, 400, -689, 0, 0, 89, 102, 102, 102, 255 }, // 0x00009D30
};

Vtx_t _spot18_room_3_vertices_00009D40[3] = 
{
	 { -359, 396, -413, 0, 6119, 2048, 114, 114, 114, 255 }, // 0x00009D40
	 { -130, 397, -386, 0, 7303, 2048, 102, 102, 102, 255 }, // 0x00009D50
	 { -263, 398, -588, 0, 6490, 0, 102, 102, 102, 255 }, // 0x00009D60
};

Vtx_t _spot18_room_3_vertices_00009D70[8] = 
{
	 { -359, 396, -413, 0, 2048, 1022, 102, 102, 102, 255 }, // 0x00009D70
	 { -263, 398, -588, 0, 2048, 0, 102, 102, 102, 255 }, // 0x00009D80
	 { -484, 400, -689, 0, 0, 89, 102, 102, 102, 255 }, // 0x00009D90
	 { -365, 398, -796, 0, 0, -683, 76, 76, 76, 255 }, // 0x00009DA0
	 { 415, 398, -659, 0, 0, -2047, 63, 63, 63, 255 }, // 0x00009DB0
	 { 210, 396, -555, 0, 2048, -3049, 63, 63, 63, 255 }, // 0x00009DC0
	 { 477, 397, -400, 0, 0, -3011, 127, 127, 127, 255 }, // 0x00009DD0
	 { 105, 397, -385, 0, 2048, -4074, 114, 114, 114, 255 }, // 0x00009DE0
};

Vtx_t _spot18_room_3_vertices_00009DF0[10] = 
{
	 { -484, 600, -689, 0, -2129, 0, 76, 76, 76, 255 }, // 0x00009DF0
	 { -484, 400, -689, 0, -2121, 2048, 102, 102, 102, 255 }, // 0x00009E00
	 { -365, 398, -796, 0, -1303, 2048, 76, 76, 76, 255 }, // 0x00009E10
	 { -365, 600, -796, 0, -1301, 0, 63, 63, 63, 255 }, // 0x00009E20
	 { 54, 402, -970, 0, 1024, 2048, 25, 25, 25, 255 }, // 0x00009E30
	 { 53, 602, -970, 0, 1015, 0, 12, 12, 12, 255 }, // 0x00009E40
	 { 415, 398, -659, 0, 3462, 2048, 63, 63, 63, 255 }, // 0x00009E50
	 { 413, 604, -658, 0, 3456, 0, 51, 51, 51, 255 }, // 0x00009E60
	 { 477, 397, -400, 0, 4828, 2048, 127, 127, 127, 255 }, // 0x00009E70
	 { 477, 599, -400, 0, 4830, 0, 114, 114, 114, 255 }, // 0x00009E80
};

Vtx_t _spot18_room_3_vertices_00009E90[9] = 
{
	 { -484, 600, -689, 0, -2677, 2064, 76, 76, 76, 255 }, // 0x00009E90
	 { -365, 600, -796, 0, -2040, 937, 63, 63, 63, 255 }, // 0x00009EA0
	 { -263, 599, -588, 0, -725, 2273, 63, 63, 63, 255 }, // 0x00009EB0
	 { 30, 597, -746, 0, 1126, 307, 12, 12, 12, 255 }, // 0x00009EC0
	 { 53, 602, -970, 0, 726, -1469, 12, 12, 12, 255 }, // 0x00009ED0
	 { 413, 604, -658, 0, 4289, 1, 51, 51, 51, 255 }, // 0x00009EE0
	 { 210, 596, -555, 0, 2992, 1313, 51, 51, 51, 255 }, // 0x00009EF0
	 { 477, 599, -400, 0, 5441, 1824, 114, 114, 114, 255 }, // 0x00009F00
	 { 105, 597, -385, 0, 2623, 2891, 114, 114, 114, 255 }, // 0x00009F10
};

Vtx_t _spot18_room_3_vertices_00009F20[8] = 
{
	 { 105, 597, -385, 0, -2028, 0, 114, 114, 114, 255 }, // 0x00009F20
	 { 105, 397, -385, 0, -2026, 2048, 114, 114, 114, 255 }, // 0x00009F30
	 { 210, 396, -555, 0, -1001, 2048, 63, 63, 63, 255 }, // 0x00009F40
	 { 210, 596, -555, 0, -994, 0, 51, 51, 51, 255 }, // 0x00009F50
	 { 30, 399, -746, 0, 340, 2048, 25, 25, 25, 255 }, // 0x00009F60
	 { 30, 597, -746, 0, 342, 0, 12, 12, 12, 255 }, // 0x00009F70
	 { -263, 398, -588, 0, 2048, 2048, 102, 102, 102, 255 }, // 0x00009F80
	 { -263, 599, -588, 0, 2043, 0, 63, 63, 63, 255 }, // 0x00009F90
};

Vtx_t _spot18_room_3_vertices_00009FA0[7] = 
{
	 { -263, 398, -588, 0, 2048, 0, 102, 102, 102, 255 }, // 0x00009FA0
	 { 30, 399, -746, 0, 2048, -1708, 25, 25, 25, 255 }, // 0x00009FB0
	 { 54, 402, -970, 0, 0, -2361, 25, 25, 25, 255 }, // 0x00009FC0
	 { -365, 398, -796, 0, 0, -45, 76, 76, 76, 255 }, // 0x00009FD0
	 { 54, 402, -970, 0, 0, -955, 25, 25, 25, 255 }, // 0x00009FE0
	 { 210, 396, -555, 0, 2048, -3049, 63, 63, 63, 255 }, // 0x00009FF0
	 { 415, 398, -659, 0, 0, -3380, 63, 63, 63, 255 }, // 0x0000A000
};

Vtx_t _spot18_room_3_vertices_0000A010[4] = 
{
	 { -359, 396, -413, 0, 6119, 0, 114, 114, 114, 255 }, // 0x0000A010
	 { -359, 196, -413, 0, 6119, 2048, 153, 153, 153, 255 }, // 0x0000A020
	 { -130, 197, -386, 0, 7302, 2048, 51, 51, 51, 255 }, // 0x0000A030
	 { -130, 397, -386, 0, 7303, 0, 102, 102, 102, 255 }, // 0x0000A040
};

Vtx_t _spot18_room_3_vertices_0000A050[8] = 
{
	 { -607, -3, -970, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A050
	 { 477, -3, -970, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A060
	 { -607, 800, -970, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A070
	 { 477, 800, -970, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A080
	 { -607, -3, -385, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A090
	 { 477, -3, -385, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A0A0
	 { -607, 800, -385, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A0B0
	 { 477, 800, -385, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000A0C0
};

Gfx _spot18_room_3_dlist_0000A0D0[] =
{
	gsDPPipeSync(), // 0x0000A0D0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000A0D8
	gsSPVertex(_spot18_room_3_vertices_0000A050, 8, 0), // 0x0000A0E0
	gsSPCullDisplayList(0, 7), // 0x0000A0E8
	gsDPPipeSync(), // 0x0000A0F0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000A0F8
	gsDPPipeSync(), // 0x0000A100
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x0000A108
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000A110
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00011C48), // 0x0000A118
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x0000A120
	gsDPLoadSync(), // 0x0000A128
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A130
	gsDPPipeSync(), // 0x0000A138
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x0000A140
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x0000A148
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x0000A150
	gsDPTileSync(), // 0x0000A158
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000A160
	gsDPLoadSync(), // 0x0000A168
	gsDPLoadTLUTCmd(7, 255), // 0x0000A170
	gsDPPipeSync(), // 0x0000A178
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000A180
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x0000A188
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x0000A190
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x0000A198
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000A1A0
	gsSPVertex(_spot18_room_3_vertices_000098E0, 11, 0), // 0x0000A1A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A1B0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000A1B8
	gsSP2Triangles(1, 8, 5, 0, 1, 5, 2, 0), // 0x0000A1C0
	gsSP2Triangles(6, 8, 9, 0, 6, 9, 10, 0), // 0x0000A1C8
	gsDPPipeSync(), // 0x0000A1D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x0000A1D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000A1E0
	gsDPLoadSync(), // 0x0000A1E8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000A1F0
	gsDPPipeSync(), // 0x0000A1F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000A200
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000A208
	gsSPVertex(_spot18_room_3_vertices_00009990, 18, 0), // 0x0000A210
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A218
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000A220
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x0000A228
	gsSP2Triangles(12, 13, 10, 0, 12, 10, 14, 0), // 0x0000A230
	gsSP2Triangles(9, 15, 14, 0, 9, 14, 10, 0), // 0x0000A238
	gsSP2Triangles(16, 2, 1, 0, 16, 1, 17, 0), // 0x0000A240
	gsDPPipeSync(), // 0x0000A248
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x0000A250
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000A258
	gsDPLoadSync(), // 0x0000A260
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000A268
	gsDPPipeSync(), // 0x0000A270
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000A278
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000A280
	gsSPVertex(_spot18_room_3_vertices_00009AB0, 4, 0), // 0x0000A288
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A290
	gsDPPipeSync(), // 0x0000A298
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x0000A2A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000A2A8
	gsDPLoadSync(), // 0x0000A2B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000A2B8
	gsDPPipeSync(), // 0x0000A2C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000A2C8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000A2D0
	gsSPVertex(_spot18_room_3_vertices_00009AF0, 12, 0), // 0x0000A2D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A2E0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000A2E8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x0000A2F0
	gsDPPipeSync(), // 0x0000A2F8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x0000A300
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000A308
	gsDPLoadSync(), // 0x0000A310
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000A318
	gsDPPipeSync(), // 0x0000A320
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000A328
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000A330
	gsSPVertex(_spot18_room_3_vertices_00009BB0, 6, 0), // 0x0000A338
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x0000A340
	gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0), // 0x0000A348
	gsDPPipeSync(), // 0x0000A350
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00011C48), // 0x0000A358
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x0000A360
	gsDPLoadSync(), // 0x0000A368
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A370
	gsDPPipeSync(), // 0x0000A378
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x0000A380
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x0000A388
	gsSPVertex(_spot18_room_3_vertices_00009C10, 4, 0), // 0x0000A390
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A398
	gsDPPipeSync(), // 0x0000A3A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x0000A3A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000A3B0
	gsDPLoadSync(), // 0x0000A3B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000A3C0
	gsDPPipeSync(), // 0x0000A3C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000A3D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000A3D8
	gsSPVertex(_spot18_room_3_vertices_00009C50, 4, 0), // 0x0000A3E0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x0000A3E8
	gsDPPipeSync(), // 0x0000A3F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x0000A3F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x0000A400
	gsDPLoadSync(), // 0x0000A408
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A410
	gsDPPipeSync(), // 0x0000A418
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x0000A420
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x0000A428
	gsSPVertex(_spot18_room_3_vertices_00009C90, 8, 0), // 0x0000A430
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A438
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x0000A440
	gsDPPipeSync(), // 0x0000A448
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x0000A450
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000A458
	gsDPLoadSync(), // 0x0000A460
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000A468
	gsDPPipeSync(), // 0x0000A470
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000A478
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000A480
	gsSPVertex(_spot18_room_3_vertices_00009D10, 3, 0), // 0x0000A488
	gsSP1Triangle(0, 1, 2, 0), // 0x0000A490
	gsDPPipeSync(), // 0x0000A498
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00015848), // 0x0000A4A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x0000A4A8
	gsDPLoadSync(), // 0x0000A4B0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A4B8
	gsDPPipeSync(), // 0x0000A4C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x0000A4C8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x0000A4D0
	gsSPVertex(_spot18_room_3_vertices_00009D40, 3, 0), // 0x0000A4D8
	gsSP1Triangle(0, 1, 2, 0), // 0x0000A4E0
	gsDPPipeSync(), // 0x0000A4E8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x0000A4F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000A4F8
	gsDPLoadSync(), // 0x0000A500
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000A508
	gsDPPipeSync(), // 0x0000A510
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000A518
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000A520
	gsSPVertex(_spot18_room_3_vertices_00009D70, 8, 0), // 0x0000A528
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x0000A530
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x0000A538
	gsDPPipeSync(), // 0x0000A540
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x0000A548
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x0000A550
	gsDPLoadSync(), // 0x0000A558
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A560
	gsDPPipeSync(), // 0x0000A568
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x0000A570
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x0000A578
	gsSPVertex(_spot18_room_3_vertices_00009DF0, 10, 0), // 0x0000A580
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A588
	gsSP2Triangles(4, 5, 3, 0, 2, 4, 3, 0), // 0x0000A590
	gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0), // 0x0000A598
	gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0), // 0x0000A5A0
	gsDPPipeSync(), // 0x0000A5A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009C48), // 0x0000A5B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000A5B8
	gsDPLoadSync(), // 0x0000A5C0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000A5C8
	gsDPPipeSync(), // 0x0000A5D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000A5D8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000A5E0
	gsSPVertex(_spot18_room_3_vertices_00009E90, 9, 0), // 0x0000A5E8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x0000A5F0
	gsSP2Triangles(1, 4, 3, 0, 3, 4, 5, 0), // 0x0000A5F8
	gsSP2Triangles(6, 3, 5, 0, 5, 7, 6, 0), // 0x0000A600
	gsSP1Triangle(8, 6, 7, 0), // 0x0000A608
	gsDPPipeSync(), // 0x0000A610
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00014848), // 0x0000A618
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x0000A620
	gsDPLoadSync(), // 0x0000A628
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A630
	gsDPPipeSync(), // 0x0000A638
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x0000A640
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x0000A648
	gsSPVertex(_spot18_room_3_vertices_00009F20, 8, 0), // 0x0000A650
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A658
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0), // 0x0000A660
	gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0), // 0x0000A668
	gsDPPipeSync(), // 0x0000A670
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009008), // 0x0000A678
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x0000A680
	gsDPLoadSync(), // 0x0000A688
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000A690
	gsDPPipeSync(), // 0x0000A698
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x0000A6A0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x0000A6A8
	gsSPVertex(_spot18_room_3_vertices_00009FA0, 7, 0), // 0x0000A6B0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x0000A6B8
	gsSP2Triangles(4, 1, 5, 0, 4, 5, 6, 0), // 0x0000A6C0
	gsDPPipeSync(), // 0x0000A6C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016048), // 0x0000A6D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 0, 5, 0), // 0x0000A6D8
	gsDPLoadSync(), // 0x0000A6E0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x0000A6E8
	gsDPPipeSync(), // 0x0000A6F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 6, 0, 0, 5, 0), // 0x0000A6F8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x0000A700
	gsSPVertex(_spot18_room_3_vertices_0000A010, 4, 0), // 0x0000A708
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000A710
	gsSPEndDisplayList(), // 0x0000A718
};

Vtx_t _spot18_room_3_vertices_0000A720[6] = 
{
	 { 88, 522, 235, 0, 246, 918, 153, 153, 153, 255 }, // 0x0000A720
	 { 42, 522, 162, 0, 30, 473, 178, 178, 178, 255 }, // 0x0000A730
	 { -44, 522, 166, 0, 283, 51, 178, 178, 178, 255 }, // 0x0000A740
	 { -84, 522, 243, 0, 754, 74, 153, 153, 153, 255 }, // 0x0000A750
	 { -37, 522, 315, 0, 970, 520, 153, 153, 153, 255 }, // 0x0000A760
	 { 49, 522, 311, 0, 716, 942, 153, 153, 153, 255 }, // 0x0000A770
};

Vtx_t _spot18_room_3_vertices_0000A780[20] = 
{
	 { 42, 522, 162, 0, 3650, 0, 178, 178, 178, 255 }, // 0x0000A780
	 { 63, 475, 200, 0, 3209, 569, 76, 76, 76, 255 }, // 0x0000A790
	 { -1, 475, 167, 0, 4092, 569, 76, 76, 76, 255 }, // 0x0000A7A0
	 { -44, 522, 166, 0, 4523, 0, 178, 178, 178, 255 }, // 0x0000A7B0
	 { -61, 475, 206, 0, 4954, 569, 76, 76, 76, 255 }, // 0x0000A7C0
	 { -84, 522, 243, 0, 5392, 0, 153, 153, 153, 255 }, // 0x0000A7D0
	 { -84, 522, 243, 0, 18, 0, 153, 153, 153, 255 }, // 0x0000A7E0
	 { -58, 475, 277, 0, 453, 569, 76, 76, 76, 255 }, // 0x0000A7F0
	 { -37, 522, 315, 0, 907, 0, 153, 153, 153, 255 }, // 0x0000A800
	 { -58, 475, 277, 0, 5827, 569, 76, 76, 76, 255 }, // 0x0000A810
	 { 6, 475, 310, 0, 1360, 569, 76, 76, 76, 255 }, // 0x0000A820
	 { 49, 522, 311, 0, 1826, 0, 153, 153, 153, 255 }, // 0x0000A830
	 { 66, 475, 272, 0, 2291, 569, 76, 76, 76, 255 }, // 0x0000A840
	 { 88, 522, 235, 0, 2750, 0, 153, 153, 153, 255 }, // 0x0000A850
	 { 28, 544, 167, 0, 2808, 512, 204, 204, 204, 255 }, // 0x0000A860
	 { 28, 544, 185, 0, 2808, 0, 204, 204, 204, 255 }, // 0x0000A870
	 { 35, 522, 184, 0, 2340, 0, 178, 178, 178, 255 }, // 0x0000A880
	 { 35, 522, 166, 0, 2340, 512, 178, 178, 178, 255 }, // 0x0000A890
	 { 10, 557, 168, 0, 3276, 512, 229, 229, 229, 255 }, // 0x0000A8A0
	 { 11, 557, 186, 0, 3276, 0, 229, 229, 229, 255 }, // 0x0000A8B0
};

Vtx_t _spot18_room_3_vertices_0000A8C0[4] = 
{
	 { -12, 557, 169, 0, 0, 0, 229, 229, 229, 255 }, // 0x0000A8C0
	 { -12, 557, 187, 0, 0, 1024, 229, 229, 229, 255 }, // 0x0000A8D0
	 { 11, 557, 186, 0, 1024, 1024, 229, 229, 229, 255 }, // 0x0000A8E0
	 { 10, 557, 168, 0, 1024, 0, 229, 229, 229, 255 }, // 0x0000A8F0
};

Vtx_t _spot18_room_3_vertices_0000A900[6] = 
{
	 { -30, 544, 169, 0, 4213, 512, 204, 204, 204, 255 }, // 0x0000A900
	 { -30, 544, 187, 0, 4213, 0, 204, 204, 204, 255 }, // 0x0000A910
	 { -12, 557, 187, 0, 3744, 0, 229, 229, 229, 255 }, // 0x0000A920
	 { -12, 557, 169, 0, 3744, 512, 229, 229, 229, 255 }, // 0x0000A930
	 { -37, 522, 170, 0, 4681, 512, 178, 178, 178, 255 }, // 0x0000A940
	 { -36, 522, 188, 0, 4681, 0, 178, 178, 178, 255 }, // 0x0000A950
};

Vtx_t _spot18_room_3_vertices_0000A960[19] = 
{
	 { 35, 522, 184, 0, 506, 978, 178, 178, 178, 255 }, // 0x0000A960
	 { 28, 544, 185, 0, 772, 890, 204, 204, 204, 255 }, // 0x0000A970
	 { 11, 557, 186, 0, 936, 662, 229, 229, 229, 255 }, // 0x0000A980
	 { -12, 557, 187, 0, 936, 379, 229, 229, 229, 255 }, // 0x0000A990
	 { -30, 544, 187, 0, 772, 151, 204, 204, 204, 255 }, // 0x0000A9A0
	 { -36, 522, 188, 0, 506, 63, 178, 178, 178, 255 }, // 0x0000A9B0
	 { -37, 522, 170, 0, 506, 63, 178, 178, 178, 255 }, // 0x0000A9C0
	 { -30, 544, 169, 0, 772, 151, 204, 204, 204, 255 }, // 0x0000A9D0
	 { -12, 557, 169, 0, 936, 379, 229, 229, 229, 255 }, // 0x0000A9E0
	 { 10, 557, 168, 0, 936, 662, 229, 229, 229, 255 }, // 0x0000A9F0
	 { 28, 544, 167, 0, 772, 890, 204, 204, 204, 255 }, // 0x0000AA00
	 { 35, 522, 166, 0, 506, 978, 178, 178, 178, 255 }, // 0x0000AA10
	 { 66, 475, 272, 0, 695, 880, 76, 76, 76, 255 }, // 0x0000AA20
	 { 6, 475, 310, 0, 926, 520, 76, 76, 76, 255 }, // 0x0000AA30
	 { 2, 436, 239, 0, 499, 500, 51, 51, 51, 255 }, // 0x0000AA40
	 { -58, 475, 277, 0, 730, 140, 76, 76, 76, 255 }, // 0x0000AA50
	 { -61, 475, 206, 0, 303, 120, 76, 76, 76, 255 }, // 0x0000AA60
	 { -1, 475, 167, 0, 72, 480, 76, 76, 76, 255 }, // 0x0000AA70
	 { 63, 475, 200, 0, 268, 860, 76, 76, 76, 255 }, // 0x0000AA80
};

Vtx_t _spot18_room_3_vertices_0000AA90[32] = 
{
	 { -64, 518, 204, 0, 5672, 0, 51, 51, 51, 255 }, // 0x0000AA90
	 { -299, 556, 63, 0, -4424, 0, 51, 51, 51, 255 }, // 0x0000AAA0
	 { -311, 561, 66, 0, -4790, 449, 216, 216, 216, 255 }, // 0x0000AAB0
	 { -302, 564, 76, 0, -4282, 1024, 242, 242, 242, 255 }, // 0x0000AAC0
	 { -70, 527, 217, 0, 5579, 1024, 242, 242, 242, 255 }, // 0x0000AAD0
	 { -299, 556, 63, 0, 3710, 0, 51, 51, 51, 255 }, // 0x0000AAE0
	 { -577, 596, 118, 0, -8085, 0, 51, 51, 51, 255 }, // 0x0000AAF0
	 { -576, 604, 131, 0, -8190, 1024, 242, 242, 242, 255 }, // 0x0000AB00
	 { -302, 564, 76, 0, 3995, 1024, 242, 242, 242, 255 }, // 0x0000AB10
	 { -299, 556, 63, 0, 7099, 0, 51, 51, 51, 255 }, // 0x0000AB20
	 { -600, 596, -312, 0, -12800, 0, 51, 51, 51, 255 }, // 0x0000AB30
	 { -599, 604, -292, 0, -12134, 1024, 242, 242, 242, 255 }, // 0x0000AB40
	 { -302, 564, 76, 0, 6856, 1024, 242, 242, 242, 255 }, // 0x0000AB50
	 { 9, 595, 615, 0, 10527, 1024, 51, 51, 51, 255 }, // 0x0000AB60
	 { 21, 603, 614, 0, 10602, 11, 242, 242, 242, 255 }, // 0x0000AB70
	 { 15, 527, 313, 0, -5524, 11, 242, 242, 242, 255 }, // 0x0000AB80
	 { 0, 518, 313, 0, -5600, 1024, 51, 51, 51, 255 }, // 0x0000AB90
	 { 588, 604, 105, 0, -13976, 1024, 242, 242, 242, 255 }, // 0x0000ABA0
	 { 72, 527, 210, 0, 9121, 1024, 242, 242, 242, 255 }, // 0x0000ABB0
	 { 81, 518, 223, 0, 8927, 0, 51, 51, 51, 255 }, // 0x0000ABC0
	 { 587, 596, 117, 0, -13820, 0, 51, 51, 51, 255 }, // 0x0000ABD0
	 { 9, 603, 615, 0, 10527, 1024, 242, 242, 242, 255 }, // 0x0000ABE0
	 { 21, 595, 614, 0, 10602, 11, 51, 51, 51, 255 }, // 0x0000ABF0
	 { 15, 518, 313, 0, -5524, 11, 51, 51, 51, 255 }, // 0x0000AC00
	 { 0, 527, 313, 0, -5600, 1024, 242, 242, 242, 255 }, // 0x0000AC10
	 { -299, 564, 63, 0, 7099, 0, 242, 242, 242, 255 }, // 0x0000AC20
	 { -600, 604, -312, 0, -12800, 0, 242, 242, 242, 255 }, // 0x0000AC30
	 { -599, 596, -292, 0, -12134, 1024, 51, 51, 51, 255 }, // 0x0000AC40
	 { -302, 556, 76, 0, 6856, 1024, 51, 51, 51, 255 }, // 0x0000AC50
	 { -299, 564, 63, 0, 3710, 0, 242, 242, 242, 255 }, // 0x0000AC60
	 { -577, 604, 118, 0, -8085, 0, 242, 242, 242, 255 }, // 0x0000AC70
	 { -576, 596, 131, 0, -8190, 1024, 51, 51, 51, 255 }, // 0x0000AC80
};

Vtx_t _spot18_room_3_vertices_0000AC90[12] = 
{
	 { -299, 564, 63, 0, 3710, 0, 242, 242, 242, 255 }, // 0x0000AC90
	 { -576, 596, 131, 0, -8190, 1024, 51, 51, 51, 255 }, // 0x0000ACA0
	 { -302, 556, 76, 0, 3995, 1024, 51, 51, 51, 255 }, // 0x0000ACB0
	 { -64, 527, 204, 0, 5672, 0, 242, 242, 242, 255 }, // 0x0000ACC0
	 { -299, 564, 63, 0, -4424, 0, 242, 242, 242, 255 }, // 0x0000ACD0
	 { -311, 561, 66, 0, -4790, 449, 216, 216, 216, 255 }, // 0x0000ACE0
	 { -302, 556, 76, 0, -4282, 1024, 51, 51, 51, 255 }, // 0x0000ACF0
	 { -70, 518, 217, 0, 5579, 1024, 51, 51, 51, 255 }, // 0x0000AD00
	 { 588, 596, 105, 0, -13976, 1024, 51, 51, 51, 255 }, // 0x0000AD10
	 { 72, 518, 210, 0, 9121, 1024, 51, 51, 51, 255 }, // 0x0000AD20
	 { 81, 527, 223, 0, 8927, 0, 242, 242, 242, 255 }, // 0x0000AD30
	 { 587, 604, 117, 0, -13820, 0, 242, 242, 242, 255 }, // 0x0000AD40
};

Vtx_t _spot18_room_3_vertices_0000AD50[8] = 
{
	 { -595, 436, -326, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AD50
	 { 591, 436, 106, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AD60
	 { -595, 604, -326, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AD70
	 { 591, 604, 106, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AD80
	 { -827, 436, 311, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000AD90
	 { 359, 436, 742, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000ADA0
	 { -827, 604, 311, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000ADB0
	 { 359, 604, 742, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000ADC0
};

Gfx _spot18_room_3_dlist_0000ADD0[] =
{
	gsDPPipeSync(), // 0x0000ADD0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000ADD8
	gsSPVertex(_spot18_room_3_vertices_0000AD50, 8, 0), // 0x0000ADE0
	gsSPCullDisplayList(0, 7), // 0x0000ADE8
	gsDPPipeSync(), // 0x0000ADF0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000ADF8
	gsDPPipeSync(), // 0x0000AE00
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000AE08
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000AE10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x0000AE18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AE20
	gsDPLoadSync(), // 0x0000AE28
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000AE30
	gsDPPipeSync(), // 0x0000AE38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AE40
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AE48
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000AE50
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x0000AE58
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x0000AE60
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x0000AE68
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000AE70
	gsSPVertex(_spot18_room_3_vertices_0000A720, 6, 0), // 0x0000AE78
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AE80
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x0000AE88
	gsDPPipeSync(), // 0x0000AE90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00010C48), // 0x0000AE98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AEA0
	gsDPLoadSync(), // 0x0000AEA8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000AEB0
	gsDPPipeSync(), // 0x0000AEB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AEC0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AEC8
	gsSPVertex(_spot18_room_3_vertices_0000A780, 20, 0), // 0x0000AED0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AED8
	gsSP2Triangles(2, 4, 3, 0, 3, 4, 5, 0), // 0x0000AEE0
	gsSP2Triangles(6, 7, 8, 0, 5, 4, 9, 0), // 0x0000AEE8
	gsSP2Triangles(8, 7, 10, 0, 8, 10, 11, 0), // 0x0000AEF0
	gsSP2Triangles(10, 12, 11, 0, 11, 12, 13, 0), // 0x0000AEF8
	gsSP2Triangles(13, 1, 0, 0, 13, 12, 1, 0), // 0x0000AF00
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x0000AF08
	gsSP2Triangles(18, 19, 15, 0, 18, 15, 14, 0), // 0x0000AF10
	gsDPPipeSync(), // 0x0000AF18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000B448), // 0x0000AF20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AF28
	gsDPLoadSync(), // 0x0000AF30
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000AF38
	gsDPPipeSync(), // 0x0000AF40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AF48
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AF50
	gsSPVertex(_spot18_room_3_vertices_0000A8C0, 4, 0), // 0x0000AF58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AF60
	gsDPPipeSync(), // 0x0000AF68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00010C48), // 0x0000AF70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AF78
	gsDPLoadSync(), // 0x0000AF80
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000AF88
	gsDPPipeSync(), // 0x0000AF90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AF98
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AFA0
	gsSPVertex(_spot18_room_3_vertices_0000A900, 6, 0), // 0x0000AFA8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000AFB0
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0), // 0x0000AFB8
	gsDPPipeSync(), // 0x0000AFC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000087C8), // 0x0000AFC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000AFD0
	gsDPLoadSync(), // 0x0000AFD8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000AFE0
	gsDPPipeSync(), // 0x0000AFE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000AFF0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000AFF8
	gsSPVertex(_spot18_room_3_vertices_0000A960, 19, 0), // 0x0000B000
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B008
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x0000B010
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x0000B018
	gsSP2Triangles(6, 9, 10, 0, 6, 10, 11, 0), // 0x0000B020
	gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0), // 0x0000B028
	gsSP2Triangles(15, 16, 14, 0, 16, 17, 14, 0), // 0x0000B030
	gsSP2Triangles(17, 18, 14, 0, 18, 12, 14, 0), // 0x0000B038
	gsDPPipeSync(), // 0x0000B040
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0000EC48), // 0x0000B048
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x0000B050
	gsDPLoadSync(), // 0x0000B058
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x0000B060
	gsDPPipeSync(), // 0x0000B068
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x0000B070
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B078
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000B080
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x0000B088
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x0000B090
	gsSPVertex(_spot18_room_3_vertices_0000AA90, 32, 0), // 0x0000B098
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B0A0
	gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0), // 0x0000B0A8
	gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0), // 0x0000B0B0
	gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0), // 0x0000B0B8
	gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0), // 0x0000B0C0
	gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0), // 0x0000B0C8
	gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0), // 0x0000B0D0
	gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0), // 0x0000B0D8
	gsSPVertex(_spot18_room_3_vertices_0000AC90, 12, 0), // 0x0000B0E0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x0000B0E8
	gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0), // 0x0000B0F0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x0000B0F8
	gsSPEndDisplayList(), // 0x0000B100
};

Vtx_t _spot18_room_3_vertices_0000B108[10] = 
{
	 { 31, -3, 423, 0, 1461, 2564, 76, 76, 76, 255 }, // 0x0000B108
	 { -14, -3, -23, 0, -560, -679, 127, 127, 127, 255 }, // 0x0000B118
	 { -126, -3, 377, 0, 87, 2803, 76, 76, 76, 255 }, // 0x0000B128
	 { -199, -3, 47, 0, -1719, 553, 76, 76, 76, 255 }, // 0x0000B138
	 { -225, -3, -71, 0, -2360, -246, 76, 76, 76, 255 }, // 0x0000B148
	 { -130, -3, -386, 0, -2819, -3020, 76, 76, 76, 255 }, // 0x0000B158
	 { -10, -3, -385, 0, -1899, -3468, 76, 76, 76, 255 }, // 0x0000B168
	 { 217, -3, 295, 0, 2404, 877, 76, 76, 76, 255 }, // 0x0000B178
	 { 215, -3, -119, 0, 823, -2279, 76, 76, 76, 255 }, // 0x0000B188
	 { 105, -3, -385, 0, -1020, -3895, 76, 76, 76, 255 }, // 0x0000B198
};

Vtx_t _spot18_room_3_vertices_0000B1A8[6] = 
{
	 { -71, -3, -371, 0, 2789, -2230, 132, 118, 93, 255 }, // 0x0000B1A8
	 { -71, -3, -290, 0, 2789, 2048, 132, 118, 93, 255 }, // 0x0000B1B8
	 { -6, -3, -290, 0, 0, 2048, 132, 118, 93, 255 }, // 0x0000B1C8
	 { -6, -3, -371, 0, 0, -2230, 132, 118, 93, 255 }, // 0x0000B1D8
	 { -136, -3, -371, 0, 0, -2230, 132, 118, 93, 255 }, // 0x0000B1E8
	 { -136, -3, -290, 0, 0, 2048, 132, 118, 93, 255 }, // 0x0000B1F8
};

Vtx_t _spot18_room_3_vertices_0000B208[8] = 
{
	 { -225, -3, -386, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B208
	 { 217, -3, -386, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B218
	 { -225, -3, -386, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B228
	 { 217, -3, -386, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B238
	 { -225, -3, 423, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B248
	 { 217, -3, 423, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B258
	 { -225, -3, 423, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B268
	 { 217, -3, 423, 0, 0, 0, 0, 0, 0, 0 }, // 0x0000B278
};

Gfx _spot18_room_3_dlist_0000B288[] =
{
	gsDPPipeSync(), // 0x0000B288
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x0000B290
	gsSPVertex(_spot18_room_3_vertices_0000B208, 8, 0), // 0x0000B298
	gsSPCullDisplayList(0, 7), // 0x0000B2A0
	gsDPPipeSync(), // 0x0000B2A8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x0000B2B0
	gsDPPipeSync(), // 0x0000B2B8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x0000B2C0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x0000B2C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00016848), // 0x0000B2D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x0000B2D8
	gsDPLoadSync(), // 0x0000B2E0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x0000B2E8
	gsDPPipeSync(), // 0x0000B2F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x0000B2F8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x0000B300
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_000085C0), // 0x0000B308
	gsDPTileSync(), // 0x0000B310
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x0000B318
	gsDPLoadSync(), // 0x0000B320
	gsDPLoadTLUTCmd(7, 255), // 0x0000B328
	gsDPPipeSync(), // 0x0000B330
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x0000B338
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x0000B340
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x0000B348
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x0000B350
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x0000B358
	gsSPVertex(_spot18_room_3_vertices_0000B108, 10, 0), // 0x0000B360
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x0000B368
	gsSP2Triangles(1, 4, 3, 0, 4, 1, 5, 0), // 0x0000B370
	gsSP2Triangles(1, 6, 5, 0, 0, 7, 1, 0), // 0x0000B378
	gsSP2Triangles(7, 8, 1, 0, 1, 8, 9, 0), // 0x0000B380
	gsSP1Triangle(9, 6, 1, 0), // 0x0000B388
	gsDPPipeSync(), // 0x0000B390
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x0000B398
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _spot18_room_3_tex_00012848), // 0x0000B3A0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 1, 7, 0), // 0x0000B3A8
	gsDPLoadSync(), // 0x0000B3B0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x0000B3B8
	gsDPPipeSync(), // 0x0000B3C0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 8, 0, 0, 0, 0, 6, 0, 1, 7, 0), // 0x0000B3C8
	gsDPSetTileSize(0, 0, 0, 508, 252), // 0x0000B3D0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104F50), // 0x0000B3D8
	gsSPVertex(_spot18_room_3_vertices_0000B1A8, 6, 0), // 0x0000B3E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x0000B3E8
	gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0), // 0x0000B3F0
	gsSPEndDisplayList(), // 0x0000B3F8
};

static u8 unaccountedB400[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x22, 0x30, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2B, 0x28, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x50, 0x80, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x82, 0x18, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA0, 0xD0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xAD, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xB2, 0x88, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 _spot18_room_3_tex_0000B448[] = 
{
	0x520B5A4B628D628D, 0x72D15A4D73115A4D, 0x520B520B628D6ACF, 0x5A4D6ACF7B115A4D,  // 0x0000B448 
	0x5A4D6A8F628F72CF, 0x7B116A8D83517B51, 0x8BD7839583537B11, 0x6ACF72CF93D56ACF,  // 0x0000B468 
	0x4A0B5A4D72CF5A4D, 0x7B1172CF6A8F5A4D, 0x5A4D520B6A8F6ACF, 0x5A4D6A8D8B936A8F,  // 0x0000B488 
	0x5A4D624D624D8393, 0x8351624D6A8D72D1, 0x8BD5839583957B11, 0x6A8F7B538B936A8F,  // 0x0000B4A8 
	0x49CB624D72D16ACF, 0x7B1173115A0D5A4D, 0x5A4D520B5A4D6ACF, 0x628D72CF8B936ACF,  // 0x0000B4C8 
	0x520B6A8F520B6ACF, 0x83535A4D5A0D6A8F, 0x7B517B1183538353, 0x72D17B1173116ACF,  // 0x0000B4E8 
	0x520B6ACF72CF6ACF, 0x83537B515A4B5A4D, 0x5A0B5A0B624D5A4D, 0x6A8F72D17B116ACF,  // 0x0000B508 
	0x5A4D72CF72CF628D, 0x72CF6A8F520B5A4D, 0x7B5183537B117B11, 0x6ACF6A8F8B936ACF,  // 0x0000B528 
	0x5A4D731172CF72CF, 0x83538353624D5A0D, 0x49CB520B5A4D5A4D, 0x839572D17B116A8D,  // 0x0000B548 
	0x5A4D73117B116A8F, 0x7B11628D5A0B624D, 0x7B117B1172D16A8F, 0x628D7B1194178351,  // 0x0000B568 
	0x5A4D7B1172CF8353, 0x839383536ACF628D, 0x520B520B6ACF6ACF, 0x7B116ACF8B936A8F,  // 0x0000B588 
	0x6A8D7B1173116A8F, 0x94157B11628D628D, 0x73117B1172D1624D, 0x6A8F73118BD57311,  // 0x0000B5A8 
	0x5A4D6ACF6A8F628D, 0x7B517B115A4D6A8F, 0x520B5A0B72CF7311, 0x7311839593D56ACF,  // 0x0000B5C8 
	0x6A8D7B118BD56ACF, 0x94178B936A8D6A8D, 0x6ACF7B5172CF628F, 0x6A8F835193D58353,  // 0x0000B5E8 
	0x5A4D7B516ACF730F, 0x9C1793D76ACF6A8F, 0x5A0D6A8D6ACF7B53, 0x520BAD1BA499A499,  // 0x0000B608 
	0x9C156A8F49CB7B11, 0x9C178353624D5A4D, 0x7B1183538B936ACF, 0x628D835194158BD5,  // 0x0000B628 
	0x520B72CF5A4D7B51, 0x93D594177B11628D, 0x5A4D6A8F8353A499, 0x9C59A499A4997B11,  // 0x0000B648 
	0x8B9593D5731193D5, 0x31478353628D628F, 0x7B518B9394197B51, 0x6ACF835194158BD5,  // 0x0000B668 
	0x520B6A8F5A4D6ACF, 0x93D79417730F628F, 0x5A4D731193D5ACDB, 0xACDBB563B563ACDB,  // 0x0000B688 
	0x7B539C15628FA499, 0x93D749CB730F628F, 0x7B118BD394178B93, 0x6ACF8B958B958BD5,  // 0x0000B6A8 
	0x5A4D6A8F72CF8353, 0x8BD594177311628D, 0x6ACFA4597B53ACDB, 0x93D5B563B563B563,  // 0x0000B6C8 
	0xAD1BB56393D78B95, 0x9C179419520D5A4B, 0x628D93D593D78351, 0x6A8F8BD58BD593D5,  // 0x0000B6E8 
	0x5A4D72CF7B118395, 0x8351941772CF6ACF, 0xB563B5639C59B563, 0xB55FB563A49BACDB,  // 0x0000B708 
	0xA499A49D9C178353, 0x8B939C599C59520B, 0x7B1193D593D572CF, 0x6A8F8C178BD593D5,  // 0x0000B728 
	0x5A4D6A8F6A8F8BD5, 0x8B958393628D8395, 0xB51FB55F9C15ACDB, 0xACDBACDFAC9BA499,  // 0x0000B748 
	0x8B95A49B9C177B53, 0x8B9594198BD541C9, 0x520B8B938B937B11, 0x628D8BD58BD59417,  // 0x0000B768 
	0x5A4D624D6ACF7B51, 0x6A8F8353624DAD1B, 0xAD1BB55F93D59C17, 0xA459A49B94198BD5,  // 0x0000B788 
	0x8B95941783957B53, 0x83939C5794199417, 0x520B8B957B5193D5, 0x628F8BD58BD59C57,  // 0x0000B7A8 
	0x6A8F6A8D520B7B53, 0x628F7B116ACFB563, 0xB563A499ACDBACDB, 0xA49BA459941793D7,  // 0x0000B7C8 
	0xA4599C178B958395, 0x9415ACDB8BD56ACF, 0x6A8D8B9372D19417, 0x5A4D8B958BD993D7,  // 0x0000B7E8 
	0x7B11624D5A4D72CF, 0x628F5A4D7311A499, 0xB55FB563B51FACDD, 0xA49BAC9B9417ACDB,  // 0x0000B808 
	0xA49993D794178BD5, 0x8BD58B9583936A8F, 0x520B7B117B539C57, 0x62CF83518BD58BD7,  // 0x0000B828 
	0x628D5A4D520B6ACF, 0x5A4D7B117B11A499, 0xAD1BB51FB55FAD1B, 0xACDBA4DD8BD5A499,  // 0x0000B848 
	0xAD1B8B9594178BD5, 0x8353628D9C599417, 0x5A0B6A8F7B51A457, 0x839383518BD98395,  // 0x0000B868 
	0x520B624D520B6A8F, 0x520B731183519C15, 0xA459ACDB9C159C57, 0x9C17B5639C598B95,  // 0x0000B888 
	0xAD1BACDF9C598BD5, 0xA49D72CFAC9D8393, 0x5A0B628F7B11A459, 0x8C1783958BD58353,  // 0x0000B8A8 
	0x520B7B115A4D5A8D, 0x4A0B73117B11624D, 0xACDBAD1B83539C17, 0xA459ACDD9C599C59,  // 0x0000B8C8 
	0xACDBA459A4DD9417, 0xA4597B5393D56A8F, 0x624D83538353A499, 0x941772CF8BD58351,  // 0x0000B8E8 
	0x628D7B51624D624D, 0x520B628D7B117B11, 0x93D58B959C599C15, 0xA459ACDB8B959C17,  // 0x0000B908 
	0xA45993D5AC9DA459, 0x83537B538B955A4D, 0x731172CF8B939C17, 0x9C5772CF8BD58351,  // 0x0000B928 
	0x8353839572D1628D, 0x49CB520D7B117311, 0x6ACFA499A4599C15, 0xAD21AC9D9417ACDB,  // 0x0000B948 
	0xA4997B5393D5A499, 0x8B9372CF72CF49CB, 0x7B1172CF835393D5, 0x9C17624D8B958B93,  // 0x0000B968 
	0x83957B117B116A8F, 0x41C95A4D6ACF8351, 0x83537311A49BA459, 0xA459B51F9417A499,  // 0x0000B988 
	0xAD1B8B9572CFA459, 0xACDB41C9624D6A8D, 0x7B117B51835193D5, 0x9C15628D94158351,  // 0x0000B9A8 
	0x839573115A0B72D1, 0x51CB628F73118BD7, 0x7B117B11624DB563, 0x9C59ACDFA49B8BD5,  // 0x0000B9C8 
	0xAD1BB5637B537B11, 0x51CB7B5372CF8353, 0x83518351835193D5, 0x941573118BD593D5,  // 0x0000B9E8 
	0x8BD572D1628D72CF, 0x520B5A4D83538BD5, 0x6A8D72CF6A8D5A4D, 0x8351A4DFA45B9C59,  // 0x0000BA08 
	0xACDBA49941C98B95, 0x7B53839383938351, 0x7B1183516A8D8393, 0x835183938BD58B95,  // 0x0000BA28 
	0x731172CF5A4D5A4D, 0x520D624D83937B11, 0x624B6A8D624D5A0D, 0x7B117B1183519417,  // 0x0000BA48 
	0x8353520B520B8B93, 0x6ACF73118B956ACF, 0x83518B9572CF6ACF, 0x72D18B958B958B93,  // 0x0000BA68 
	0x628D5A4D5A0B624D, 0x5A4D7B537B117B11, 0x5A4D624D520B5A0B, 0x93D57B1183539415,  // 0x0000BA88 
	0x7B51628D5A0B8BD5, 0x5A4D628F8B957311, 0x83517B5172CF628D, 0x8B938BD98BD57311,  // 0x0000BAA8 
	0x628D5A4D49CB524D, 0x520B73116A8F72CF, 0x5A4D520B5A4D6A8F, 0xA4597B5193D78B93,  // 0x0000BAC8 
	0x6ACF6ACF72CF8BD5, 0x5A4D731193D78BD5, 0x7B516A8D624D6A8F, 0x8B958BD78B938B93,  // 0x0000BAE8 
	0x5A4D5A0B41C9628D, 0x5A4D628D6A8F72CF, 0x5A0B5A4B72CF8353, 0x94177B118BD58393,  // 0x0000BB08 
	0x73116ACF72CF6A8F, 0x6ACF6A8F83938B95, 0x83535A4B624D628D, 0x9C17839383518B93,  // 0x0000BB28 
	0x5A0D524D49CB6A8F, 0x6A8F6ACF73115A4D, 0x520B6A8D72CF7B11, 0x7B11839383518B95,  // 0x0000BB48 
	0x6A8F5A4D5A4D5A4D, 0x83537B538BD57B11, 0x624D5A4D6A8D6A8F, 0xA49B7B118B958353,  // 0x0000BB68 
	0x5A4D524B520B7B11, 0x73117B117B115A4B, 0x5A0B6A8D7B116ACF, 0x7B11839583518B95,  // 0x0000BB88 
	0x520B5A4B628D624D, 0x7B5372CF8BD56ACF, 0x730F6A8F6A8D628D, 0x93D57B5383958353,  // 0x0000BBA8 
	0x72CF524B49CB72CF, 0x73116ACF624D520B, 0x520B628D72CF624D, 0x8B937B537B516ACF,  // 0x0000BBC8 
	0x4A0B5A4D520B6A8D, 0x7B11731183D76A8F, 0x83538B938B936A8D, 0x8BD583537B516A8F,  // 0x0000BBE8 
	0x624D520B520B7B11, 0x628D6ACF49CB520B, 0x520B624D8BD56A8D, 0x6ACF7B536A8F628D,  // 0x0000BC08 
	0x628D5A4D5A4D7B11, 0x6ACF7B517B538353, 0x7B0F7B116ACF628D, 0x8B957B537B115A4B,  // 0x0000BC28 
};

u64 _spot18_room_3_tex_0000BC48[] = 
{
	0x520B628D72D17311, 0x520B628D5A4D7B11, 0x5A4D628F7B118351, 0x8BD783536ACF93D5,  // 0x0000BC48 
	0x4A0B72CF7B116A8F, 0x5A4D6A8F5A4D8B93, 0x5A4D624D83516A8D, 0x8BD583956A8F8B93,  // 0x0000BC68 
	0x41C972D17B115A0D, 0x5A4D5A4D628D8B93, 0x520B520B83535A0D, 0x7B51835372D17311,  // 0x0000BC88 
	0x5A854A0541C54A45, 0x5A854A0552456B07, 0x62C54A454A455245, 0x4A454A455A854205,  // 0x0000BCA8 
	0x7347734773477347, 0x7347734773477347, 0x7347734773477347, 0x7347734773477347,  // 0x0000BCC8 
	0x734773476B077347, 0x7347734773477347, 0x734773477B877B47, 0x73476B076B076B07,  // 0x0000BCE8 
	0x4A4552455A855245, 0x524541C5420539C3, 0x39C341C54A054A45, 0x4A454A054A454A05,  // 0x0000BD08 
	0x5A4D6ACF9C176ACF, 0x5A0D6ACF8B958B93, 0x624D7B519C17624D, 0x72CF8B935A4D9415,  // 0x0000BD28 
	0x520B5A4D93D57B11, 0x5A4D835383958B95, 0x6A8F6ACF9415628D, 0x7B5194196ACF9415,  // 0x0000BD48 
	0x520B5A4D93D7730F, 0x5A4D93D583558353, 0x73116A8F93D7730F, 0x7B1194176ACF8B95,  // 0x0000BD68 
	0x520B628D8BD57311, 0x6ACF9C577B118353, 0x6ACF7B118BD5730F, 0x5A0B93D76A8F7B53,  // 0x0000BD88 
	0x524562C54A4539C3, 0x5A85524552455245, 0x52454A0541C55A85, 0x4A45420539C34A45,  // 0x0000BDA8 
	0x7347734773477347, 0x73476B0773477347, 0x7347734773477347, 0x7347734773477347,  // 0x0000BDC8 
	0x734773477B477B47, 0x73477B4773477347, 0x7347734773477347, 0x73477B477B477347,  // 0x0000BDE8 
	0x52454A455A854A05, 0x420552454A055A85, 0x41C54A054A454A05, 0x5A8552455A855A85,  // 0x0000BE08 
	0x7B115A4D628F7311, 0x8B9393D55A4D5A4D, 0x7B1172CF72CF5A4D, 0x6A8F7B5362CF8BD5,  // 0x0000BE28 
	0x628D520B5A4D7B11, 0x7B517B515A4B6A8F, 0x7B515A4D8395624D, 0x7B0F7B5183938BD9,  // 0x0000BE48 
	0x520B520B520B8351, 0x93D56A8D5A4D624D, 0x6ACF624D8395628F, 0x7B0F7B118C178BD5,  // 0x0000BE68 
	0x520B5A4D4A0B7B11, 0x7B5173116A8F72D1, 0x6A8F6A8F73116A8F, 0x624D835394178BD5,  // 0x0000BE88 
	0x628D624D520B7B11, 0x83516A8F72CF624D, 0x83536A8F5A0D6A8F, 0x5A4B8B939C578BD5,  // 0x0000BEA8 
	0x835372D149CB7B11, 0x6ACF6ACF72CF6A8F, 0x83537B53624D6A8F, 0x5A4B83539C178B95,  // 0x0000BEC8 
	0x83957B1141C96ACF, 0x8353628D72CF7B51, 0x7B518355624D624D, 0x51CB83519C159415,  // 0x0000BEE8 
	0x83955A0B51CB7311, 0x7B11624D73118B95, 0x7B5172CF6ACF72CF, 0x5A4B835194158BD5,  // 0x0000BF08 
	0x8BD5628D520B8353, 0x6A8D6A8D83518B95, 0x72D15A0B7B538393, 0x6A8D6A8D83518BD5,  // 0x0000BF28 
	0x73115A4D520D8393, 0x624B624D7B118351, 0x8353520B6ACF8393, 0x835172CF72D18B95,  // 0x0000BF48 
	0x628D5A0B5A4D7B11, 0x5A4D520B93D58353, 0x7B515A0B5A4D8B95, 0x835172CF8B938BD5,  // 0x0000BF68 
	0x628D49CB520B6A8F, 0x5A4D5A4DA45993D7, 0x6ACF72CF5A4D93D7, 0x7B51624D8B958B93,  // 0x0000BF88 
	0x5A4D41C95A4D6A8F, 0x5A0B72CF94178BD5, 0x731172CF6ACF8393, 0x8353624D9C178351,  // 0x0000BFA8 
	0x5A0D49CB6A8F7311, 0x520B72CF7B118351, 0x6A8F5A4D83538BD5, 0x624D6A8DA49B8B95,  // 0x0000BFC8 
	0x5A4D520B73117B11, 0x5A0B7B117B118351, 0x520B628D7B538BD5, 0x730F6A8D93D58395,  // 0x0000BFE8 
	0x72CF49CB7311624D, 0x520B72CF8B937B51, 0x4A0B520B7B1183D7, 0x83538B938BD57B51,  // 0x0000C008 
	0x624D520B628D49CB, 0x520B8BD56ACF6A8F, 0x628D5A4D6ACF7B53, 0x7B0F6ACF8B957B11,  // 0x0000C028 
};

u64 _spot18_room_3_tex_0000C048[] = 
{
	0x520B628D72D17311, 0x520B628D5A4D7B11, 0x5A4D628F7B118351, 0x8BD783536ACF93D5,  // 0x0000C048 
	0x4A0B72CF7B116A8F, 0x5A4D6A8F5A4D8B93, 0x5A4D624D83516A8D, 0x8BD583956A8F8B93,  // 0x0000C068 
	0x41C972D17B115A0D, 0x5A4D5A4D628D8B93, 0x520B520B83535A0D, 0x7B51835372D17311,  // 0x0000C088 
	0x224D19CB19891A0B, 0x224D19CB1A0B22CF, 0x228D1A0B1A0B1A0B, 0x1A0B1A0B224D19C9,  // 0x0000C0A8 
	0x2B112B112B112B11, 0x2B112B112B112B11, 0x2B112B112B112B11, 0x2B112B112B112B11,  // 0x0000C0C8 
	0x2B112B1122CF2B11, 0x2B112B112B112B11, 0x2B112B112B512B11, 0x2B112ACF2ACF22CF,  // 0x0000C0E8 
	0x1A0B1A0B224D1A0B, 0x1A0B198919C91189, 0x1189198919CB1A0B, 0x1A0B19CB1A0B19CB,  // 0x0000C108 
	0x5A4D6ACF9C176ACF, 0x5A0D6ACF8B958B93, 0x624D7B519C17624D, 0x72CF8B935A4D9415,  // 0x0000C128 
	0x520B5A4D93D57B11, 0x5A4D835383958B95, 0x6A8F6ACF9415628D, 0x7B5194196ACF9415,  // 0x0000C148 
	0x520B5A4D93D7730F, 0x5A4D93D583558353, 0x73116A8F93D7730F, 0x7B1194176ACF8B95,  // 0x0000C168 
	0x520B628D8BD57311, 0x6ACF9C577B118353, 0x6ACF7B118BD5730F, 0x5A0B93D76A8F7B53,  // 0x0000C188 
	0x1A0B228D1A0B1189, 0x224D1A0B1A0B1A0B, 0x1A0B19CB1989224D, 0x1A0B19C911891A0B,  // 0x0000C1A8 
	0x2B112B112B112B11, 0x2B1122CF2B112B11, 0x2B112B112B112B11, 0x2B112B112B112B11,  // 0x0000C1C8 
	0x2B112B112B112B11, 0x2B112B112B112B11, 0x2B112B112B112B11, 0x2B112B112B112B11,  // 0x0000C1E8 
	0x1A0B1A0B224D19CB, 0x19C91A0B19CB224D, 0x198919CB1A0B19CB, 0x224D1A0B224D224D,  // 0x0000C208 
	0x7B115A4D628F7311, 0x8B9393D55A4D5A4D, 0x7B1172CF72CF5A4D, 0x6A8F7B5362CF8BD5,  // 0x0000C228 
	0x628D520B5A4D7B11, 0x7B517B515A4B6A8F, 0x7B515A4D8395624D, 0x7B0F7B5183938BD9,  // 0x0000C248 
	0x520B520B520B8351, 0x93D56A8D5A4D624D, 0x6ACF624D8395628F, 0x7B0F7B118C178BD5,  // 0x0000C268 
	0x520B5A4D4A0B7B11, 0x7B5173116A8F72D1, 0x6A8F6A8F73116A8F, 0x624D835394178BD5,  // 0x0000C288 
	0x628D624D520B7B11, 0x83516A8F72CF624D, 0x83536A8F5A0D6A8F, 0x5A4B8B939C578BD5,  // 0x0000C2A8 
	0x835372D149CB7B11, 0x6ACF6ACF72CF6A8F, 0x83537B53624D6A8F, 0x5A4B83539C178B95,  // 0x0000C2C8 
	0x83957B1141C96ACF, 0x8353628D72CF7B51, 0x7B518355624D624D, 0x51CB83519C159415,  // 0x0000C2E8 
	0x83955A0B51CB7311, 0x7B11624D73118B95, 0x7B5172CF6ACF72CF, 0x5A4B835194158BD5,  // 0x0000C308 
	0x8BD5628D520B8353, 0x6A8D6A8D83518B95, 0x72D15A0B7B538393, 0x6A8D6A8D83518BD5,  // 0x0000C328 
	0x73115A4D520D8393, 0x624B624D7B118351, 0x8353520B6ACF8393, 0x835172CF72D18B95,  // 0x0000C348 
	0x628D5A0B5A4D7B11, 0x5A4D520B93D58353, 0x7B515A0B5A4D8B95, 0x835172CF8B938BD5,  // 0x0000C368 
	0x628D49CB520B6A8F, 0x5A4D5A4DA45993D7, 0x6ACF72CF5A4D93D7, 0x7B51624D8B958B93,  // 0x0000C388 
	0x5A4D41C95A4D6A8F, 0x5A0B72CF94178BD5, 0x731172CF6ACF8393, 0x8353624D9C178351,  // 0x0000C3A8 
	0x5A0D49CB6A8F7311, 0x520B72CF7B118351, 0x6A8F5A4D83538BD5, 0x624D6A8DA49B8B95,  // 0x0000C3C8 
	0x5A4D520B73117B11, 0x5A0B7B117B118351, 0x520B628D7B538BD5, 0x730F6A8D93D58395,  // 0x0000C3E8 
	0x72CF49CB7311624D, 0x520B72CF8B937B51, 0x4A0B520B7B1183D7, 0x83538B938BD57B51,  // 0x0000C408 
	0x624D520B628D49CB, 0x520B8BD56ACF6A8F, 0x628D5A4D6ACF7B53, 0x7B0F6ACF8B957B11,  // 0x0000C428 
};

u64 _spot18_room_3_tex_0000C448[] = 
{
	0x520B628D72D17311, 0x520B628D5A4D7B11, 0x5A4D628F7B118351, 0x8BD783536ACF93D5,  // 0x0000C448 
	0x4A0B72CF7B116A8F, 0x5A4D6A8F5A4D8B93, 0x5A4D624D83516A8D, 0x8BD583956A8F8B93,  // 0x0000C468 
	0x41C972D17B115A0D, 0x5A4D5A4D628D8B93, 0x520B520B83535A0D, 0x7B51835372D17311,  // 0x0000C488 
	0x19931951110F1951, 0x19931951195321D7, 0x1995195119511953, 0x195119511993110F,  // 0x0000C4A8 
	0x2219221922192219, 0x221B221922192219, 0x2219221922192219, 0x2219221922192219,  // 0x0000C4C8 
	0x2219221921D72219, 0x221B221B221B221B, 0x221B22192A1B221B, 0x221921D921D921D7,  // 0x0000C4E8 
	0x1951195319931953, 0x1953110F110F110D, 0x110D110F19511951, 0x1951195119511951,  // 0x0000C508 
	0x5A4D6ACF9C176ACF, 0x5A0D6ACF8B958B93, 0x624D7B519C17624D, 0x72CF8B935A4D9415,  // 0x0000C528 
	0x520B5A4D93D57B11, 0x5A4D835383958B95, 0x6A8F6ACF9415628D, 0x7B5194196ACF9415,  // 0x0000C548 
	0x520B5A4D93D7730F, 0x5A4D93D583558353, 0x73116A8F93D7730F, 0x7B1194176ACF8B95,  // 0x0000C568 
	0x520B628D8BD57311, 0x6ACF9C577B118353, 0x6ACF7B118BD5730F, 0x5A0B93D76A8F7B53,  // 0x0000C588 
	0x195319951951110D, 0x1993195319531953, 0x19531951110F1993, 0x1951110F110D1951,  // 0x0000C5A8 
	0x2219221922192219, 0x221921D722192219, 0x2219221922192219, 0x2219221922192219,  // 0x0000C5C8 
	0x221B221B221B221B, 0x221B221B2219221B, 0x221B221B22192219, 0x2219221B221B221B,  // 0x0000C5E8 
	0x1953195119931951, 0x110F195319511993, 0x110F195119511951, 0x1993195319931993,  // 0x0000C608 
	0x7B115A4D628F7311, 0x8B9393D55A4D5A4D, 0x7B1172CF72CF5A4D, 0x6A8F7B5362CF8BD5,  // 0x0000C628 
	0x628D520B5A4D7B11, 0x7B517B515A4B6A8F, 0x7B515A4D8395624D, 0x7B0F7B5183938BD9,  // 0x0000C648 
	0x520B520B520B8351, 0x93D56A8D5A4D624D, 0x6ACF624D8395628F, 0x7B0F7B118C178BD5,  // 0x0000C668 
	0x520B5A4D4A0B7B11, 0x7B5173116A8F72D1, 0x6A8F6A8F73116A8F, 0x624D835394178BD5,  // 0x0000C688 
	0x628D624D520B7B11, 0x83516A8F72CF624D, 0x83536A8F5A0D6A8F, 0x5A4B8B939C578BD5,  // 0x0000C6A8 
	0x835372D149CB7B11, 0x6ACF6ACF72CF6A8F, 0x83537B53624D6A8F, 0x5A4B83539C178B95,  // 0x0000C6C8 
	0x83957B1141C96ACF, 0x8353628D72CF7B51, 0x7B518355624D624D, 0x51CB83519C159415,  // 0x0000C6E8 
	0x83955A0B51CB7311, 0x7B11624D73118B95, 0x7B5172CF6ACF72CF, 0x5A4B835194158BD5,  // 0x0000C708 
	0x8BD5628D520B8353, 0x6A8D6A8D83518B95, 0x72D15A0B7B538393, 0x6A8D6A8D83518BD5,  // 0x0000C728 
	0x73115A4D520D8393, 0x624B624D7B118351, 0x8353520B6ACF8393, 0x835172CF72D18B95,  // 0x0000C748 
	0x628D5A0B5A4D7B11, 0x5A4D520B93D58353, 0x7B515A0B5A4D8B95, 0x835172CF8B938BD5,  // 0x0000C768 
	0x628D49CB520B6A8F, 0x5A4D5A4DA45993D7, 0x6ACF72CF5A4D93D7, 0x7B51624D8B958B93,  // 0x0000C788 
	0x5A4D41C95A4D6A8F, 0x5A0B72CF94178BD5, 0x731172CF6ACF8393, 0x8353624D9C178351,  // 0x0000C7A8 
	0x5A0D49CB6A8F7311, 0x520B72CF7B118351, 0x6A8F5A4D83538BD5, 0x624D6A8DA49B8B95,  // 0x0000C7C8 
	0x5A4D520B73117B11, 0x5A0B7B117B118351, 0x520B628D7B538BD5, 0x730F6A8D93D58395,  // 0x0000C7E8 
	0x72CF49CB7311624D, 0x520B72CF8B937B51, 0x4A0B520B7B1183D7, 0x83538B938BD57B51,  // 0x0000C808 
	0x624D520B628D49CB, 0x520B8BD56ACF6A8F, 0x628D5A4D6ACF7B53, 0x7B0F6ACF8B957B11,  // 0x0000C828 
};

u64 _spot18_room_3_tex_0000C848[] = 
{
	0xEF30EF30EF30F730, 0xEF30EF30EF30EF30, 0xEF30EF30EF30F730, 0xF732F732F732F772,  // 0x0000C848 
	0xF772F772F772F772, 0xF732F730F730F732, 0xF730F730F730F730, 0xEF306B146B146B14,  // 0x0000C868 
	0xEF30EF30EF30F730, 0xF730F730EF30EF30, 0xEF30EF30EF30EF30, 0xEF30EF30F730F730,  // 0x0000C888 
	0xF730F730F730F730, 0xF730F730F730F730, 0xF730F730F730F730, 0xF730F730F730F730,  // 0x0000C8A8 
	0xF737EF32EF30EF30, 0xEF30EF30EF30EF30, 0xEF30EF30EF30EF30, 0xEF30EF30F730F730,  // 0x0000C8C8 
	0xF732F732F730F730, 0xF730F730F730F730, 0xF730F730F730F730, 0xF730F730F730F730,  // 0x0000C8E8 
	0xDE67EEA9E669E6ED, 0xEF30EF30EF33EF33, 0xEF31EF30EF30EF30, 0xEF30EF30EF30EF30,  // 0x0000C908 
	0xEF30EF30F730F730, 0xF730F730F730F730, 0xF730F730F730F732, 0xE6EFDEADE6ADEF6F,  // 0x0000C928 
	0xACDBAC9BC5A1D625, 0xDE67EEA9E6A9DE67, 0xDE27E6EDEEEFE6AB, 0xE6A9DE69EEEEEF30,  // 0x0000C948 
	0xEEEDEEA9E6A9E669, 0xEF31E6A9E6A7E667, 0xDE69E6F3DEAFDE27, 0xCDA1C5A1CDE3DE29,  // 0x0000C968 
	0xA4DF83D9ACDDC55F, 0xACDD941BA459AC9B, 0xB521CDE5D625CDA1, 0xBD1FBDA3C5A3DE25,  // 0x0000C988 
	0xCDE3B4DDAD1FBDA1, 0xDE25C5A1BD5FBD61, 0xCDA1DE63CDA3C5A1, 0xBD61B51FBD1FD5E5,  // 0x0000C9A8 
	0xC5E7BD63AD21B51F, 0xBD1FACDF8BD9BD1F, 0xC5A1C5A3BD1FA49B, 0xB4DFBD5FA49DBD61,  // 0x0000C9C8 
	0xBD1FA49BACDDACDD, 0xCDA1B4DDA45BA49B, 0xBD1FDE25B51FA49B, 0xC5A1CDE1C5A1D625,  // 0x0000C9E8 
	0xA523D66BD6ABB563, 0x94199C19ACDDAC9B, 0xBDA3BDA5B563ACDF, 0x9419ACDDACE1A4DF,  // 0x0000CA08 
	0xB51FCDA1CDA39C9F, 0x9C9F9C5BB51DD625, 0xDEA9BDA58BD99C1B, 0xA49BACDDBD61D665,  // 0x0000CA28 
	0xA523E72BD669D66B, 0xE6EFDEAD9C5DCDE7, 0xD629D669CE29C5E7, 0xCE29C5E7CE29BDA7,  // 0x0000CA48 
	0xB563B561B563A523, 0xC5A5AD1FCDE5DEAB, 0xD66BDEADA49FB521, 0xC5E7D6ADD6ADE6A9,  // 0x0000CA68 
	0xB5A3DEABD6ABDEAB, 0xEF2FF72DD521BD63, 0xCE29D669D669D669, 0xDEA9CEA9CEA9BDE7,  // 0x0000CA88 
	0xBDA7BDA7BDA7CEA9, 0xC5E7DE6BDE6BD669, 0xD669D66BE6ADD66B, 0xCE29CE6BCE2BD5E5,  // 0x0000CAA8 
	0xA4DFCE29DEADEEED, 0xF731F773EF31CDE7, 0xE72BE72BE729E72B, 0xEF31E729D669D669,  // 0x0000CAC8 
	0xD669D66BE6ADE6AD, 0xE6ADE6ADDE6BDE6B, 0xE6ADE6EDEF6DCE27, 0xD66BCE6BC629D627,  // 0x0000CAE8 
	0x9C9FBDA9D669EEED, 0xF773F777EF31E6ED, 0xE6ADE6ADD66BCE29, 0xDEEDD669DEEDD6AB,  // 0x0000CB08 
	0xDE6BE6ADE6EDEF6D, 0xF7B1DEABD669DE6B, 0xE6EFEF31E6ADCE69, 0xCE69C629B5A5A4DD,  // 0x0000CB28 
	0x9C9F8C1DC5E7E6AD, 0xEF31F773E6ADE6AD, 0xCE29D66BD66BC5A5, 0xB563C5E9C5E7B5A3,  // 0x0000CB48 
	0xC5E7D669DE6BF771, 0xE6EDD66BDEABDEAB, 0xD66BDEADD669CE29, 0xCE69B5A5949F8C59,  // 0x0000CB68 
	0xA5237399BDA7D629, 0xD6ABF771DEADC5E7, 0xC5E7D6A9DEA9CE29, 0xB5A7BE27B5A3AD23,  // 0x0000CB88 
	0xBDA7D66BE6EFEF31, 0xE6EDEEEDEF2FDEAD, 0xCE29C627BDA5B563, 0xC5A5AD638C5D941B,  // 0x0000CBA8 
	0xA52383D9B565CE29, 0xD66DFFB3F7B1DEE9, 0xC627D66BE6EBDEE9, 0xCE29B563BDA79CDF,  // 0x0000CBC8 
	0xAD61D6A7E6EBE6AD, 0xF7B1FFB3F773DEAF, 0xCE29C5E79C9DAD21, 0xC5A5B565949F9C9B,  // 0x0000CBE8 
	0xA52383D9B565C627, 0xD6A9F771F773DEAD, 0xCE29D66BDEEBE6EB, 0xDEADD669CE69A4DF,  // 0x0000CC08 
	0xB5A5D6ADD66BE6AD, 0xF7B1F773E6F1D66B, 0xC627B5E57BD99CDF, 0xBDA5B565AD23CDA5,  // 0x0000CC28 
	0xB567945DB523B5A3, 0xADA3BE27DEADC627, 0xC627CE27CE29DEAB, 0xEF31DEADB5A7945F,  // 0x0000CC48 
	0xA4E1CE29E6ADE6AD, 0xF773EF35D6AFC627, 0xB5A3945D841B945D, 0xA4E19CE19C9FBD65,  // 0x0000CC68 
	0xB563AD23B563B565, 0xAD63B5A3BDA3BDA5, 0xB563C5E7CE29DEAD, 0xF775EF319C9F9C9F,  // 0x0000CC88 
	0xA4E1AD21B565E6AD, 0xEF35E6F1D66BBDE5, 0x9C9F8C1D8C1DA4E1, 0xA4E1945F9C9FBDE5,  // 0x0000CCA8 
	0xA523BDA5BDA5BDA5, 0xBDA5B565AD25CE2B, 0xC5A7CE69DEEDE6EF, 0xEF33B565AD21C5A5,  // 0x0000CCC8 
	0xA49F8C1BC5E7F771, 0xEF77E6EFCE29B563, 0x9C9F8C5F94A1BDA5, 0xB5639CE19C9FA49D,  // 0x0000CCE8 
	0xB563CE69C627CE29, 0xCE29BDA5B523CDE7, 0xD629CE29D66BE6EF, 0xE6F17357B565DE6B,  // 0x0000CD08 
	0xD629BD63BDA7EF31, 0xEF33DEAFBDE7AD63, 0xB563AD63B563CDE7, 0xB565A5219CDF9C1B,  // 0x0000CD28 
	0xA51FCE29B565C5E9, 0xD66BBDA5945FBDE3, 0xC627C5E7CDE7D66B, 0xE6EFC5A7C563D5A5,  // 0x0000CD48 
	0xDE29C5A7945DCE29, 0xD66DCE27BDA3AD23, 0x9CE1AD23BDA5C5E7, 0xAD61A51FA49D9C1B,  // 0x0000CD68 
	0x8C1BCEABAD63AD23, 0xC5E5BDA58C1D9461, 0xAD23B5A3AD63B565, 0xBDA5C565CD63BC9F,  // 0x0000CD88 
	0xC523D5E7B5218C1B, 0xBDA7B563AD21A49F, 0x945DAD23B5A3BDA3, 0xA4E1949F9C5D9C1B,  // 0x0000CDA8 
	0x8C1BD66BA4E1945F, 0xB565BDA58C1B8C19, 0xA4E19C9FA4DFA521, 0x8C1DCD63B4DFD563,  // 0x0000CDC8 
	0xCD63B521BD637355, 0x8C1BA521AD61AD63, 0xBDA5C5E7BDA5B563, 0xAD23A5239CA18C1B,  // 0x0000CDE8 
	0x9C9FD66BCE29C5E7, 0xD669E6ADAD21ACE1, 0xAD21A4E1AD23B563, 0x9CDDBCDFB4E1DDE9,  // 0x0000CE08 
	0xE5E7CD63BD219C1B, 0x6B158C1BAD21B5A3, 0xBDE5CE2BEEEDD66B, 0xAD239CE1A4E19C1B,  // 0x0000CE28 
	0xA523BDE9C5E7C5E7, 0xD66BE6EFC5E7AD21, 0xACE1AD21A4DFA4DF, 0xBD639C5DDDE7EE6D,  // 0x0000CE48 
	0xDDA5B41B9B97AC5D, 0x93D98C1D9CE1B563, 0xBDA5CE29C5E7CE69, 0xAD639CE1A4E19C1B,  // 0x0000CE68 
	0x8C1BAD21B563B563, 0xC5E7DEADC5E7A4DF, 0x945F8C1D8C5BA4DD, 0xC523CD63D5A5E627,  // 0x0000CE88 
	0xCD61B45BB49FB49B, 0x9C1B73558C1BB565, 0xD669DEEBCE27A4E1, 0x8C5D945D9C5F9C5D,  // 0x0000CEA8 
	0xB5A3B5A5AD61A51F, 0xBDA5DE6BC5E7BDA5, 0xAD216B157355BD63, 0xD625CD61D563DE27,  // 0x0000CEC8 
	0xCDA3B49DA41BAC5D, 0xB5617B97945DBDA5, 0xCE2BD66BCE698C5B, 0x8C1D9C9F9C9F9C9D,  // 0x0000CEE8 
	0xC5E7C627BDA7AD63, 0xB5A3DEADE6ADD629, 0xBDE3949D841B9C9F, 0xCDE9AC9FB49BB4DD,  // 0x0000CF08 
	0xB49FB49DBC9FBD23, 0xACE1941B7357945D, 0xDEADE6EFCEAB9C9F, 0x945DAD23BDA5B521,  // 0x0000CF28 
	0xE6ADA4E1B563B565, 0xB563C5E7DEAFC629, 0xBDE3949D8C9DAD21, 0xC563D5E7D5A5DDE7,  // 0x0000CF48 
	0xDE29D629DE29D62B, 0xBD63B5637BD983DB, 0xCE29BDA5C5E9949F, 0x9C9DA4E1ACE1AC5B,  // 0x0000CF68 
	0xC5E783DBAD25B567, 0xAD23BDA5DE6DB563, 0x631552515A9362D3, 0x7B979C9D8C1B6B55,  // 0x0000CF88 
	0x62D362D172D15291, 0x520D73556B155251, 0x6B15B563B5A3945D, 0x945BA4DFAD21941B,  // 0x0000CFA8 
	0xB567841DAD23BDA5, 0xB523B565E6EFAD23, 0x62D362D37B9783D9, 0x945FDE6BD669C5E7,  // 0x0000CFC8 
	0xD66BDEADC5E7BDA5, 0xAD23BDA5B563A4DF, 0xA51FCE69B5639C9F, 0x9C9FB565C5E9B521,  // 0x0000CFE8 
	0xC5E7945DB563BDA5, 0xAD63B565DE697B97, 0x83996B137355A4DF, 0xB5638C5DB563BDA7,  // 0x0000D008 
	0xCE2BCE2BB565A4E1, 0x7BD7B563B563AD21, 0xB565C5E7B567AD23, 0xAD23BDA7C5E7B561,  // 0x0000D028 
	0xB5A3945DC5E7BDA5, 0x9CA1A4E3A4E18C1D, 0x945D941B8B977355, 0x7397C5E76B558419,  // 0x0000D048 
	0xBDA5CDE9A4E18419, 0xC5E5A4DFC5E5DE6B, 0xC5A5945DA4DFBDA5, 0xBDA5C5A7BDA7AD21,  // 0x0000D068 
	0x9C9FB523CDE7B565, 0x949F8C1D7B559C9F, 0xA45DA41DA41B9BD9, 0x941BDEADAD2383D9,  // 0x0000D088 
	0x9C9FAD2383D9BDA5, 0xDEABD66BE6ABE6A9, 0xAD235251A49FCDE7, 0xBD63A4DF9C9FA49F,  // 0x0000D0A8 
	0xB563C5A5D66BC5E7, 0x9C9F83D97B97B49F, 0xB49FA41BA41BBCDF, 0xCDE383DBC5E9BDA7,  // 0x0000D0C8 
	0xAD23A4E1A4E1D6A7, 0x949DC521DDA1D5A3, 0xACE14A0FBDA5C5E7, 0xB5659C9F945B9C9D,  // 0x0000D0E8 
	0xC5E7DEE9F771DEAD, 0xBDA5A4E1945DC563, 0xB4DFB45FB45DBC5B, 0xD4DD83998C1BC5E7,  // 0x0000D108 
	0xA4E18419B5A38C5F, 0xB563C4DFC4DDAC5B, 0x8B979C9BA4E1D66B, 0xD66BAD217B966B14,  // 0x0000D128 
	0xBDA7D66AEEEDDEAB, 0xC5E7A4E19BD9B4E1, 0xBCDFBCE1BCE1C521, 0xCDA3CDA39C5DAD21,  // 0x0000D148 
	0xAD23841D5A935293, 0xCD21C49DBC9DBC9D, 0xC45BD5218C1BCE29, 0xD66BA4DF6B146B14,  // 0x0000D168 
	0xCE29C5E6DEA9EF2F, 0xCE299C9FA4A19C1B, 0xA419B45DBD25CDEB, 0xDE27DE65ACDF93DB,  // 0x0000D188 
	0x9C5DACDF9C1DAC9F, 0xD563B45DAC5DB4DF, 0xC561DE29D66F9C9F, 0xBDA5A4E173546B14,  // 0x0000D1A8 
	0xCDE6CDE6E6EDEF31, 0xC5A58B55AC5B9C5B, 0x9C5DACA1C523D565, 0xEE69DDA5D5E7B521,  // 0x0000D1C8 
	0x9C5B8BD78357C5A5, 0xA4198B559397AC5D, 0xBD63F6EBE5A5ACE1, 0xC5E7B56383D86B14,  // 0x0000D1E8 
	0xC5E6CE26EEEFEF2F, 0xD66BBD23ACE1A45F, 0x941DA49FBCE3D565, 0xE629F6EDE627DE29,  // 0x0000D208 
	0x9C1B8313C561ACDD, 0xBC9B9B959B97A419, 0xB49DF66BE629A49F, 0xC5E7BD6383D86B14,  // 0x0000D228 
	0xC5E6CE28E6ABBDA5, 0x8C1D8C1B9CDD6313, 0x62918B99B49FC563, 0xE6EBCD63CDE5C563,  // 0x0000D248 
	0xA49D9C5BA49F8397, 0x83DB731583559B97, 0xA419E627D5639C5D, 0xC5E7BDA78C1A6B14,  // 0x0000D268 
	0xC5E6DEACD66BC627, 0xC627D669D6279CA1, 0x8C5D83D983D99C9D, 0xC5E5B5A373974A4F,  // 0x0000D288 
	0x39CD41CD420D41CD, 0x41CD7B9983DB7B97, 0x735773978C1D945B, 0xAD21A4E083D86B14,  // 0x0000D2A8 
	0xC5E6EEEED669CE29, 0xDEABEEEDD66BAD21, 0xA4DF9C9FAD21CE29, 0xEF31DEADBDA79CA1,  // 0x0000D2C8 
	0x83DB7BD98C1B9CA1, 0x9CA1C5E7D669D669, 0xD66BD66BD629A4E1, 0xAD219C9E7B986B14,  // 0x0000D2E8 
	0xC5E6D66DC5E7CE29, 0xE6EFEF2FDEABAD21, 0xB5A1A4E1AD25DE6B, 0xF72FCE29C5E5B5A3,  // 0x0000D308 
	0x9D1F8C5D949DBDE3, 0xC5E7DEABEEEFEF31, 0xEF31DEADCEA9BDE5, 0xC5E7A4E073566B14,  // 0x0000D328 
	0xC5E6C627BDA5C5E7, 0xD66BDEADD66BB5A3, 0xBDE5A4DFAD23DEAB, 0xE6EDCEABC5E7AD23,  // 0x0000D348 
	0x945F83DB945DBDA5, 0xCE29E72DEF2DEF2F, 0xEF2FDEA9C5E7AD23, 0xC5E9A4E06B147354,  // 0x0000D368 
	0xC5E6B5E5AD21BDA5, 0xD66BE6ADDEADCE29, 0xB563A51FB5A3DEE9, 0xE6ABB567C5E9A4E3,  // 0x0000D388 
	0x945F8C1D945DBDA5, 0xE6ADEF6DE72DDEAB, 0xD669CE29B563B563, 0x945D7B987B9683D8,  // 0x0000D3A8 
	0xC5E6A4E1BD65CE29, 0xD6A9E6EBE6ADEF2F, 0xC5E7AD23B565C5E7, 0xD66BC5E7D66BB565,  // 0x0000D3C8 
	0xACE1A4E19C9FBDA7, 0xE6F1EF31DEADCE29, 0xCDE7D66ABD63C5E5, 0x945D73567B9683D8,  // 0x0000D3E8 
	0xCDE69C9DD66BD66B, 0xC5E9E6EDEF6DEF6F, 0xD6ABC627AD63A521, 0xD669EF2FDEADBDA5,  // 0x0000D408 
	0xBDA5B5A5AD23CE2B, 0xE6EFF771E6ADCE29, 0xC5E7CE28CE28C5E7, 0xBDA7945F7B96945E,  // 0x0000D428 
	0xC5E69C9FDE6DE6EF, 0xDEABEF2FEF31EF31, 0xCE29CE27B523945D, 0xC5E7EF33EF31CE29,  // 0x0000D448 
	0xC5E9C5E9BDA7DE6D, 0xF773FF71EF2FD6AB, 0xC5E7C629C5E6CE29, 0xC5A5AD219C9E9C9E,  // 0x0000D468 
	0xC5E6D628DEABDEEB, 0xEF2DF771EF2DDEAD, 0xD62BCE29AD238C1D, 0xAD23F773E6EFCE27,  // 0x0000D488 
	0xC5E7C5E9CE29E6EF, 0xF773E6EFDE6BC5A7, 0xAD23C5E7C627DEAB, 0xC5E7A49F9C9EC5E8,  // 0x0000D4A8 
	0xC5E6CDE6D66BD629, 0xD6ABF7AFDEE9C627, 0xDEADDEADBDA79C9F, 0xA4DFF773C5E7B565,  // 0x0000D4C8 
	0xAD63B5A5CE29EF31, 0xE6EDD66BC627B563, 0xA4E1C627C5E7E6EF, 0xD6ABA5219C9ED66A,  // 0x0000D4E8 
	0xCDE6CE28DEA9D6A9, 0xD6ABE6ADDEADBDA3, 0xE6ABE6EBD6A9C5E7, 0xB563DEAFBDE7AD63,  // 0x0000D508 
	0xA521AD21CE27E6ED, 0xDEADD6ABC629BDA7, 0xB565C5E7DEAFE6EF, 0xD66BBD65B522CE2A,  // 0x0000D528 
	0xCDE6CDE6D66BD66B, 0xD66BDEADE6EFC5E7, 0xE6ABEF2FE6EDCE29, 0xC627BDA4B565A4E1,  // 0x0000D548 
	0xA4E1B563CE27DEAD, 0xF773EF30DEEDC629, 0xBDA7CDE6CDE6EEF1, 0xD66BBD64B522BDA4,  // 0x0000D568 
	0xC5E6C5E6C5E6CE29, 0xCE29CE69DEAEBDA7, 0xD66BE6EFEEEFD66B, 0xBDA7AD22AD23A4E1,  // 0x0000D588 
	0x9C9FAD23CE27D669, 0xD66BCE28C5E7C5E7, 0xCE29C5E6CDE6E6EB, 0xD66BB562945C9C9E,  // 0x0000D5A8 
	0xC5E6C5E6C5E6C5E6, 0xBDA5B562CE28CE27, 0xC5E7D62BD6ABCE69, 0xCDE9BDA4A4E0AD23,  // 0x0000D5C8 
	0xAD23B523BDA7C5E5, 0xC626CE28C5E7D669, 0xDEEBC5E6C5E6D629, 0xD66BC5E6AD22AD22,  // 0x0000D5E8 
	0xC5E6C5E6C5E6CDE6, 0xCE28CE28CE28C5E6, 0xCE29D66BCE29C5E7, 0xC5E6C5E6B562B565,  // 0x0000D608 
	0xC5E9CE29C5E6CE28, 0xD628CE28CDE6D629, 0xDE6BCDE6CDE6C5E6, 0xCE26BDA4B562B562,  // 0x0000D628 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6D629D629C5E6, 0xC5E6C5E6C5E4CE29,  // 0x0000D648 
	0xD66BD66BC5E6C5E6, 0xC5E6C5E6C5E6D66B, 0xE6EDCE28CDE6CDE6, 0xCE28CE26C5A6B562,  // 0x0000D668 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6,  // 0x0000D688 
	0xBDA7BDA7C5E6C5E6, 0xC5E6CDE6CE28CE28, 0xCE26CE28CE26CDE6, 0xCDE6CE28C5E6B522,  // 0x0000D6A8 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6,  // 0x0000D6C8 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6CE28CE28C5E6, 0xC5E6BDA4A4E0941A,  // 0x0000D6E8 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6,  // 0x0000D708 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xB5629C9E83D86B14,  // 0x0000D728 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6,  // 0x0000D748 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5A4B562, 0x945C8C1A945C7B96,  // 0x0000D768 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6,  // 0x0000D788 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5A4B52283DA, 0x8C1A8C1A83DA83DA,  // 0x0000D7A8 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6,  // 0x0000D7C8 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xB5629C9C73566B14, 0x6B146B146B146B14,  // 0x0000D7E8 
	0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6, 0xC5E6C5E6C5E6C5E6,  // 0x0000D808 
	0xC5E6C5E6C5E6C5E6, 0xCDE6CE28CE28C5E6, 0xB5629C5C73567354, 0x6B146B14735483D8,  // 0x0000D828 
};

u64 _spot18_room_3_tex_0000D848[] = 
{
	0x520B628D72D17311, 0x520B628D5A4D7B11, 0x5A4D628F7B118351, 0x8BD783536ACF93D5,  // 0x0000D848 
	0x4A0B72CF7B116A8F, 0x5A4D6A8F5A4D8B93, 0x5A4D624D83516A8D, 0x8BD583956A8F8B93,  // 0x0000D868 
	0x41C972D17B115A0D, 0x5A4D5A4D628D8B93, 0x520B520B83535A0D, 0x7B51835372D17311,  // 0x0000D888 
	0x6043504340435043, 0x6043504358437843, 0x6843504350435843, 0x5043504360434843,  // 0x0000D8A8 
	0x8043804380438043, 0x8043804380438043, 0x8043804380438043, 0x8043804380438043,  // 0x0000D8C8 
	0x8043804378437843, 0x8043804380438043, 0x8043804380858043, 0x8043784378437043,  // 0x0000D8E8 
	0x5043584360435843, 0x5843404348434043, 0x3843404350435043, 0x5043504350435043,  // 0x0000D908 
	0x5A4D6ACF9C176ACF, 0x5A0D6ACF8B958B93, 0x624D7B519C17624D, 0x72CF8B935A4D9415,  // 0x0000D928 
	0x520B5A4D93D57B11, 0x5A4D835383958B95, 0x6A8F6ACF9415628D, 0x7B5194196ACF9415,  // 0x0000D948 
	0x520B5A4D93D7730F, 0x5A4D93D583558353, 0x73116A8F93D7730F, 0x7B1194176ACF8B95,  // 0x0000D968 
	0x520B628D8BD57311, 0x6ACF9C577B118353, 0x6ACF7B118BD5730F, 0x5A0B93D76A8F7B53,  // 0x0000D988 
	0x5843684350433843, 0x6043584358435843, 0x5843504340436043, 0x5043484340435043,  // 0x0000D9A8 
	0x8043804380438043, 0x8043784380438043, 0x8043804380438043, 0x8043804380438043,  // 0x0000D9C8 
	0x8043804380438043, 0x8043804378438043, 0x8043804380438043, 0x8043804380438043,  // 0x0000D9E8 
	0x5843504360435043, 0x4843584350436043, 0x4043504350435043, 0x6043584360436043,  // 0x0000DA08 
	0x7B115A4D628F7311, 0x8B9393D55A4D5A4D, 0x7B1172CF72CF5A4D, 0x6A8F7B5362CF8BD5,  // 0x0000DA28 
	0x628D520B5A4D7B11, 0x7B517B515A4B6A8F, 0x7B515A4D8395624D, 0x7B0F7B5183938BD9,  // 0x0000DA48 
	0x520B520B520B8351, 0x93D56A8D5A4D624D, 0x6ACF624D8395628F, 0x7B0F7B118C178BD5,  // 0x0000DA68 
	0x520B5A4D4A0B7B11, 0x7B5173116A8F72D1, 0x6A8F6A8F73116A8F, 0x624D835394178BD5,  // 0x0000DA88 
	0x628D624D520B7B11, 0x83516A8F72CF624D, 0x83536A8F5A0D6A8F, 0x5A4B8B939C578BD5,  // 0x0000DAA8 
	0x835372D149CB7B11, 0x6ACF6ACF72CF6A8F, 0x83537B53624D6A8F, 0x5A4B83539C178B95,  // 0x0000DAC8 
	0x83957B1141C96ACF, 0x8353628D72CF7B51, 0x7B518355624D624D, 0x51CB83519C159415,  // 0x0000DAE8 
	0x83955A0B51CB7311, 0x7B11624D73118B95, 0x7B5172CF6ACF72CF, 0x5A4B835194158BD5,  // 0x0000DB08 
	0x8BD5628D520B8353, 0x6A8D6A8D83518B95, 0x72D15A0B7B538393, 0x6A8D6A8D83518BD5,  // 0x0000DB28 
	0x73115A4D520D8393, 0x624B624D7B118351, 0x8353520B6ACF8393, 0x835172CF72D18B95,  // 0x0000DB48 
	0x628D5A0B5A4D7B11, 0x5A4D520B93D58353, 0x7B515A0B5A4D8B95, 0x835172CF8B938BD5,  // 0x0000DB68 
	0x628D49CB520B6A8F, 0x5A4D5A4DA45993D7, 0x6ACF72CF5A4D93D7, 0x7B51624D8B958B93,  // 0x0000DB88 
	0x5A4D41C95A4D6A8F, 0x5A0B72CF94178BD5, 0x731172CF6ACF8393, 0x8353624D9C178351,  // 0x0000DBA8 
	0x5A0D49CB6A8F7311, 0x520B72CF7B118351, 0x6A8F5A4D83538BD5, 0x624D6A8DA49B8B95,  // 0x0000DBC8 
	0x5A4D520B73117B11, 0x5A0B7B117B118351, 0x520B628D7B538BD5, 0x730F6A8D93D58395,  // 0x0000DBE8 
	0x72CF49CB7311624D, 0x520B72CF8B937B51, 0x4A0B520B7B1183D7, 0x83538B938BD57B51,  // 0x0000DC08 
	0x624D520B628D49CB, 0x520B8BD56ACF6A8F, 0x628D5A4D6ACF7B53, 0x7B0F6ACF8B957B11,  // 0x0000DC28 
};

u64 _spot18_room_3_tex_0000DC48[] = 
{
	0x0802052405D80805, 0x05174531700C0A0A, 0x0C02050505020424, 0x0401050505020505,  // 0x0000DC48 
	0x1510242452371024, 0x2438092424607710, 0x05600D0810850508, 0x6023240816868508,  // 0x0000DC68 
	0x2A15242460061008, 0x241F282424600F2A, 0x086C3724100C0824, 0x080A0505200D3705,  // 0x0000DC88 
	0x2A10242405371005, 0x242A082424600410, 0x08851924100C3231, 0x2A01600801866008,  // 0x0000DCA8 
	0x2A10242405061524, 0x2415083131600910, 0x0804AF24010C2132, 0x841960080D860F05,  // 0x0000DCC8 
	0x2A77242405191524, 0x2415083131322810, 0x08040A240CAF1708, 0x34C8020589500F02,  // 0x0000DCE8 
	0x2A86242405191008, 0x2415603115052805, 0x05021C0805043308, 0x34C8020505010105,  // 0x0000DD08 
	0x1070052405191024, 0x2410093110021709, 0x08041C0505044508, 0x080C02051C0C3702,  // 0x0000DD28 
	0x0504052405375208, 0x2409103115050560, 0x08041C0505043308, 0x080C04080A0C0405,  // 0x0000DD48 
	0x080C0824020D6005, 0x2410153131050405, 0x08020A0505041008, 0x080C0A08020C0204,  // 0x0000DD68 
	0x050A0824050D6005, 0x0815523131050405, 0x08041C0205021508, 0x08010C080C0C0205,  // 0x0000DD88 
	0x040508241C101905, 0x6015083131080C05, 0x08041C0404021015, 0x08C80C050A0C0505,  // 0x0000DDA8 
	0x3901602A62480433, 0x091045316C191905, 0x76020B284559021F, 0x21880C5239013C10,  // 0x0000DDC8 
	0x1F3932151989047E, 0x0B451A0860013708, 0x08190B0217100552, 0x10880F600F011F02,  // 0x0000DDE8 
	0x0D5B3B1059190406, 0x0B1904325201AF08, 0x08045301281F5952, 0x026248520D0F0223,  // 0x0000DE08 
	0x0D1E2615850C5C16, 0x0D09063C15297019, 0x101A200109281752, 0x45010A524E0F0402,  // 0x0000DE28 
	0x4E4C090204040C71, 0x1C042384051E0110, 0x28281E060C010932, 0x020C0C050F060A01,  // 0x0000DE48 
	0x061A0602010F1629, 0x1E23280505060D17, 0x1A450C0F5E0C0259, 0x021A0C15015E220D,  // 0x0000DE68 
	0x9C065F19060D161E, 0x6809091F09060406, 0x4505010C4C6B0445, 0x044C4505011C0D0C,  // 0x0000DE88 
	0x38161E0A0A0A220D, 0x0F1906101F0123B9, 0xD615020C0B1E0F05, 0x040C1933E2515B02,  // 0x0000DEA8 
	0x1A0B04010B0201F8, 0xF08F6A08525C0C6B, 0x3608175C045B0F09, 0x010F59155F6D0A02,  // 0x0000DEC8 
	0x4C0C106201052B2B, 0x66A50F31150F0B3B, 0x6108286704220B36, 0x730C760945220423,  // 0x0000DEE8 
	0x500B1A4304155043, 0x8619622A335C169C, 0x5732091676820A36, 0x377EA545050C3706,  // 0x0000DF08 
	0x0626040C288C0112, 0x0B020234760C160A, 0x2632095E33200C06, 0x4CA533D8080C503B,  // 0x0000DF28 
	0x4361390F1915093A, 0x51190208450C5B4E, 0x1A3102015900235C, 0x481959331F5C8601,  // 0x0000DF48 
	0x01175F0A1A050466, 0x6D1923051F37160A, 0x097A192332938806, 0x0C02601019200C09,  // 0x0000DF68 
	0x011706480117361C, 0x2B193959598F4E4E, 0x57523728054A0D5F, 0x0428D949011E0176,  // 0x0000DF88 
	0x39170F060C39470B, 0x390473CF59280A0A, 0x3905014525460D43, 0x0473598426AF041F,  // 0x0000DFA8 
	0x0123861A370F5150, 0x5F39730659450A06, 0x01CC010225510D36, 0x261F1F08395F193C,  // 0x0000DFC8 
	0x3B735E09623BA650, 0x8F0C5C5F591F225E, 0x43190102448D0F36, 0x7E3159525C0F7610,  // 0x0000DFE8 
	0x0F19061AA70D7986, 0x761E5CD905172E0B, 0x36048F02284E5C06, 0x7E2A3C59205C3C32,  // 0x0000E008 
	0x5BCC0C093C0F631C, 0x01715005171F2E29, 0x9C0C881745AF5C5C, 0x196C703C8750171F,  // 0x0000E028 
	0x6D045C04320BAC87, 0x0C77E53860155B1E, 0x030C0409050B5006, 0xB959281F200F1702,  // 0x0000E048 
	0x1C33A70231F8F082, 0xE2C0425C5F6022B7, 0x0E5C09766C375F12, 0x5008440977502809,  // 0x0000E068 
	0xE0155F452A2B662E, 0x8850870C88D6823B, 0x065E1F5908190C1A, 0x0431331A160A1904,  // 0x0000E088 
	0x5F054C32BC43890A, 0x8F0C1E370559205F, 0x0637D610D61A375E, 0x5F2432016A0F1904,  // 0x0000E0A8 
	0x5F760F3231120B0A, 0x04376B8F08760023, 0x060C76338F265C0B, 0x09A31F260A0C0904,  // 0x0000E0C8 
	0x5F881F32443A1E50, 0x7E260B0231389319, 0x06DE761537160C0C, 0x02311F2B0F010404,  // 0x0000E0E8 
	0x0159152A2B82225C, 0x620C5E15241A4AB7, 0x5E62D9325F5B2862, 0x05A3080E0A060101,  // 0x0000E108 
	0x4C3C1534F6205F06, 0x067E01082A2B7F77, 0x0A48020539011943, 0x082A153A290F4C0C,  // 0x0000E128 
	0x0A04442A39002306, 0x0C3923597A02938D, 0x502645334C191937, 0x08081722676D5E0F,  // 0x0000E148 
	0x0B8F25241F931906, 0x37731A1F0821B07D, 0x166221280119A573, 0x3108121E2E42294E,  // 0x0000E168 
	0x06101524624AB75E, 0x37A743CF31387153, 0x370926010C264537, 0x2A522D1E29295067,  // 0x0000E188 
	0x01101534067F770A, 0x481C0CCF311A68B7, 0xDE4E01390F232537, 0xA3289B5642F56B53,  // 0x0000E1A8 
	0x1A02083401938D50, 0x261C373231257F42, 0x4ED021855E021F1A, 0x082BAA581DE56B97,  // 0x0000E1C8 
	0x010915345EB07D16, 0x620C59052A087CC3, 0x48373C1948CC4509, 0x080C7FB1C0895CC0,  // 0x0000E1E8 
	0x7009BA2A21715337, 0x092332342A316829, 0x060145045B882537, 0x0832E998C0F53A22,  // 0x0000E208 
	0x280215E41768B7DE, 0x4E17F3197A2A2577, 0x508F19621E010573, 0x3157719322A71D51,  // 0x0000E228 
	0x1928152A257F424E, 0x0F451F092A31E080, 0x0A0404011C6A7E37, 0x2A1A7C4A204E874A,  // 0x0000E248 
	0x0C0432A3157CC30F, 0x0A283C10BC1582AC, 0xA15C19371C5C0C37, 0x24731E03C356299B,  // 0x0000E268 
	0x400132A31568290F, 0x06021F1531314780, 0x29012F0A0D161A1A, 0x316148161C4A4203,  // 0x0000E288 
	0x7202252415252F27, 0x010549084F72D071, 0x4804740C480A6033, 0xBA57F251469777A9,  // 0x0000E2A8 
	0x353C05E4102F3D2B, 0x1752080841155193, 0x475A5A06045EF38A, 0x6F3DB18751772BCE,  // 0x0000E2C8 
	0x7509252A91926E2C, 0x1059315D2A35A87C, 0x72D169485F068A34, 0x4F3D206B42128A18,  // 0x0000E2E8 
	0x183C5ACAEE3E2E55, 0x6109EE2ACEBDEBAD, 0x8A81621643572549, 0x1A0A718247CE1222,  // 0x0000E308 
	0x6815722A1B4A2F33, 0x604D6F72CDE52B92, 0xBD1A044E748ABD61, 0x76424A3EBA382E3E,  // 0x0000E328 
	0x2174D708A21A4515, 0x1F6F57443303BA2D, 0x043CA54D4F4B352A, 0x1AA622BA27AC8151,  // 0x0000E348 
	0x38E75A2557055932, 0xCE84442A0272727C, 0x1376747275F6AE31, 0x62B02FDF20BD3A94,  // 0x0000E368 
	0x6F4F441545763344, 0xD72F25E4255A462B, 0x024F92782C2F3131, 0xEF4792E62C7E5C1C,  // 0x0000E388 
	0x1B165A0848CC05E7, 0x11A9241572810045, 0x3D92693B3D1F246C, 0x307475461912295A,  // 0x0000E3A8 
	0x4A815908624DD73A, 0x051549251A104F21, 0x8A0006552845313D, 0xEE031E07047E72DF,  // 0x0000E3C8 
	0x810C61283D6F3506, 0x095A6F4421272117, 0x276626351A453DCE, 0x1D202C0F73D1DF46,  // 0x0000E3E8 
	0x1130112CED6FBD22, 0x47A9A9111409253C, 0x112C166B26351492, 0x90BD0F1F40DF0013,  // 0x0000E408 
	0x40133007C13E0707, 0x1814110E303F0711, 0x124B073E3E181800, 0x00008111001411C7,  // 0x0000E428 
};

u64 _spot18_room_3_tex_0000E448[] = 
{
	0x3D00000047031303, 0x3014114D133D401B, 0x4B4B031D4700D427, 0x131B141213110013,  // 0x0000E448 
	0x0E078B124B300000, 0x0713131314131313, 0x210E0000400313B8, 0xC4C61411140E130E,  // 0x0000E468 
	0x073527690E120314, 0x0E1403112C2F1226, 0x7500002C13401413, 0x81141B271B111403,  // 0x0000E488 
	0x2F553D5721142B3E, 0x1413121300121212, 0x5721211B27C4AD1B, 0x27031B278B111100,  // 0x0000E4A8 
	0x3D273500121B6907, 0x11000707001B1200, 0x00304011141B1414, 0x2C0055384F2F0E68,  // 0x0000E4C8 
	0x264F032CB83E1803, 0x3E00301D4B301B11, 0x12071B14143F0E14, 0x110357122B893A0B,  // 0x0000E4E8 
	0x1A3C07141D181127, 0xBE2D1803553D2713, 0x111413C61B000300, 0x032F393B4D3B7B68,  // 0x0000E508 
	0x093D2F3F18180000, 0x18613C552F213B14, 0x11142C078B9E033F, 0x133F092B3A362268,  // 0x0000E528 
	0x234F613503000307, 0x0E7210260A384326, 0x094F572F142C3512, 0x14033C0A1E353B36,  // 0x0000E548 
	0x171A090318131269, 0x4D101A16680A5726, 0x21381A3B402C2C3F, 0x351B44367B3A382F,  // 0x0000E568 
	0x4410325538210303, 0x57022F6A6B06550E, 0x174532263FB30335, 0x30034F27226A380E,  // 0x0000E588 
	0x171515211200FA21, 0x2123366B22163A3B, 0x4F9A153217213D27, 0x142C0E742B223A3B,  // 0x0000E5A8 
	0xBA5A4F1303070312, 0x1A21430176103821, 0x2515174F36435A1B, 0x11142C133D26A221,  // 0x0000E5C8 
	0x34158B070007143D, 0x2F219F7461090532, 0x5A051F36201D7472, 0x3D1403C63D1A3308,  // 0x0000E5E8 
	0x52333811000E27FA, 0x2F383D40163A391A, 0x10333C351E1E66FA, 0x2F4F7457553A7305,  // 0x0000E608 
	0x2F38122C114F4F78, 0x562F1658000F4306, 0x060ECD354A681D83, 0x662F3658070A0161,  // 0x0000E628 
	0x1D39444012381694, 0x584354782D2E3B47, 0x002B4F03560D1622, 0x58363A4B66222F44,  // 0x0000E648 
	0x1D36232E4A4668B6, 0x66553A7F78463A2E, 0x460E4F228346542E, 0x46123B7878781725,  // 0x0000E668 
	0x3636382253836E22, 0x222B22462E3B2266, 0x000E443A20836E94, 0x223F167F2E2F3C21,  // 0x0000E688 
	0x21171A16224A992E, 0x462B1A163A3B1807, 0x130E613B224A902E, 0x7B471A28173C0219,  // 0x0000E6A8 
	0x7E021A0A4646830B, 0x83401F063A2D1803, 0x143D38B9467B990B, 0x58031019211A0912,  // 0x0000E6C8 
	0xA221020746164A68, 0x823655232FA93D4F, 0x3D39041D78169768, 0x46355504162F233D,  // 0x0000E6E8 
	0x14AD173846948256, 0x1E38272B12121B40, 0x540E1A22832E2E7F, 0x2E067B353A032F3D,  // 0x0000E708 
	0x001BA94F7C35063B, 0x04610E8078757C7F, 0x7D970935A803362E, 0x06027B801D1D0014,  // 0x0000E728 
	0x274F5A3D99260101, 0x0621122E467B6646, 0x203B172EA8061654, 0x36091A5454350E0E,  // 0x0000E748 
	0x383D3C1D3A120119, 0x041F43261D165422, 0x2E16173F54120A6B, 0x0617610147163A35,  // 0x0000E768 
	0x6E2D612B2E3B042F, 0x3621212B3B35165E, 0x464621261D3B1A26, 0x3617102F362B0136,  // 0x0000E788 
	0x8383230526361A26, 0x38150122352E223A, 0x83B4391026360117, 0x3D25042235683A16,  // 0x0000E7A8 
	0x2E13443425444F4F, 0xA24F0A0D54180747, 0x2203443C3D213DEE, 0x3D26367768180700,  // 0x0000E7C8 
	0x2BDF4F444F2F2721, 0x254F3816162F260A, 0x36123DCD38030707, 0x1B44213516432F0A,  // 0x0000E7E8 
	0xDF92571A2F473802, 0x1721722727274F92, 0xA992722144123626, 0x30113D3D4F4F4F3D,  // 0x0000E808 
	0xEE3D0E0A47264835, 0x3D49382B3A122674, 0x3D444F392F1A4455, 0x1303070E00574F44,  // 0x0000E828 
	0x15383B542D542E7B, 0x3810367F462E062B, 0x0E21433A2D542F74, 0x0E3F0E0712435726,  // 0x0000E848 
	0x253D0E2E46568366, 0x2B4F571E662E680E, 0x724F4D1D46788374, 0x92C6A92727574336,  // 0x0000E868 
	0x254F0B16544A563B, 0x473825610E35220E, 0x442562161D4A7C16, 0x3638DB173D019C1B,  // 0x0000E888 
	0x1F6135223B537B22, 0x001A213812060D6B, 0x02159C3A3B7F7B22, 0x002621384D260B16,  // 0x0000E8A8 
	0x1A3816187847121D, 0x162138432B383D38, 0x44442F185647261D, 0x0D09211616430E68,  // 0x0000E8C8 
	0x26383A077847564A, 0x22093D27A2571207, 0x4B2F3D0778034683, 0x9401383B3B893A6A,  // 0x0000E8E8 
	0x1A4F54073A1D5656, 0x0B17382B1B03031D, 0x0344400700474666, 0x6B01393B4D3B7B68,  // 0x0000E908 
	0x092F542B122E2B16, 0x0A100E3578031D2D, 0x273D3A262F474FAE, 0x272B852B6A2F3A68,  // 0x0000E928 
	0x233D2635437B2639, 0x2B3C1D0778540358, 0x3D21572F21274412, 0x1B1710066B263636,  // 0x0000E948 
	0x1726010A2E7B4D74, 0x72271B1D35070754, 0x4F38011A3A0E2F1B, 0x4D330916683B382F,  // 0x0000E968 
	0x444521017E3D7274, 0x9200030703001D78, 0x55450509030E1B12, 0x1202216A160A3814,  // 0x0000E988 
	0x17151510105A7244, 0x3D0E0036003A3A54, 0x26613D322F270E38, 0x0961216B3A163A0E,  // 0x0000E9A8 
	0xCD5A334436394F27, 0x3D032D1226540000, 0x2F2F3310364344A2, 0x3921381A0210A221,  // 0x0000E9C8 
	0x4F361F3B20221227, 0x3D1B270E0E182D35, 0x2F8C1F36201DCD92, 0x1217727461093308,  // 0x0000E9E8 
	0x1057233A1E2E1854, 0x2F381274922F3909, 0x0917093B1E437412, 0x273D270E4D1B3621,  // 0x0000EA08 
	0x4754052E98681D83, 0x004FA23D14434302, 0x4343521656431B12, 0x1B0E121B1B031B0E,  // 0x0000EA28 
	0x1D181746785B1694, 0x583854072D223810, 0x1D361F2E07611BFA, 0x030E1B784D554D2B,  // 0x0000EA48 
	0x3B121A534A4668B6, 0x66263A7F78661033, 0x1D6A0946831B4444, 0x1B1227273A361D12,  // 0x0000EA68 
	0x1D04122253836E22, 0x222B3B462E1A3C02, 0x120A093A20833D4F, 0x2F2F1B3B543A4736,  // 0x0000EA88 
	0x2F0A26262646992E, 0x3B3D2102173C2623, 0x21171A3B224A113D, 0x38473535663B3500,  // 0x0000EAA8 
	0x2F0300223B2F5439, 0xB8571F19554D3A3A, 0x260238B9467B7839, 0x0E140A6A0E36162F,  // 0x0000EAC8 
	0x2B3B0322462F222F, 0x0E5555161D000754, 0x005409037816973A, 0x0E270A0B7B4B3A12,  // 0x0000EAE8 
	0x3A160E7B0F0B121B, 0x7F0D2916221D5453, 0x1816212B462E2035, 0x4F217B1E0D3B161E,  // 0x0000EB08 
	0x072E3B2E050A227C, 0x7F1E890B1E546656, 0x580D0B4F35A24F21, 0x0D63422020228920,  // 0x0000EB28 
	0x58200B0D05292080, 0x20EC0B42290D2242, 0x2020420D63421C42, 0x2963634646291C89,  // 0x0000EB48 
	0x56421C4204424279, 0x1C631C420D040D56, 0x9720290C42422942, 0x1C1C1C79EC290D0F,  // 0x0000EB68 
	0x424263420C0D0D0F, 0x020F63424A0B200B, 0x0B2942051C0D0D42, 0x0F290F7979200D0B,  // 0x0000EB88 
	0x29294A4202632905, 0x080C7D0D200D631C, 0x1C1C292A040D2E0D, 0x08630FA87D7D5609,  // 0x0000EBA8 
	0x0D0B207904422924, 0x2A1C630D0404631C, 0x0B0F0D2A0856421C, 0x050F02020CEC9710,  // 0x0000EBC8 
	0x1C1C4202050C0C24, 0x2A0C63290502421C, 0x1E1E090805EC4A05, 0x050B0208021C2005,  // 0x0000EBE8 
	0x0B0C0B0505050508, 0x08231C0F050A1C20, 0x0F052408240A1C24, 0x051C080504020502,  // 0x0000EC08 
	0x0802052405020805, 0x05730C31700C0A0A, 0x0C02050505020424, 0x040A050505020505,  // 0x0000EC28 
};

u64 _spot18_room_3_tex_0000EC48[] = 
{
	0xD48ED48ED48ED48E, 0xD48ED48ED48ED48E, 0xD48ED48CD48ED48E, 0xD48ED48ED48ED48C,  // 0x0000EC48 
	0xD48ED48ED48CD48C, 0xD48ED48CD48ED48C, 0xD48CD48CD48ED48E, 0xD48ED48CD48CD48C,  // 0x0000EC68 
	0xD48ED48ED48ED48C, 0xD48ECC8CCC8CCC8C, 0xCC8CCC8CCC8ECC8E, 0xC450CC50CC8ECC8C,  // 0x0000EC88 
	0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8C,  // 0x0000ECA8 
	0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8E, 0xCC50C452F5DFF5E1, 0xF5DFF5E1F5E1F5E1,  // 0x0000ECC8 
	0xF5DFF5E1F5E1F5E1, 0xC450C44EC44CCC4C, 0xCC8CCC8CCC8CCC8C, 0xCC8CCC8CCC8CCC8C,  // 0x0000ECE8 
	0xCC4CCC8CCC8CCC4C, 0xCC8CC44ECC50F5DF, 0xFE1FFE1FFE1FFE1D, 0xF5DDFE1FFE1FFE1D,  // 0x0000ED08 
	0xFE1DFE1DF5DDEDDF, 0xED9FDD5DE55FC450, 0xC44ECC4ECC4CCC4C, 0xCC4CCC4CCC4CCC4C,  // 0x0000ED28 
	0xCC4CC44CC44CCC4C, 0xC450FDE1FE1FFE1D, 0xFE1BFE1BFE1DFE1D, 0xFE1DFE1DFE1DF5DD,  // 0x0000ED48 
	0xF61DFE1FEDDFF5DD, 0xED9BDD59E59FEDDF, 0xEDDFC450C450C44E, 0xC44EC44CC44CC44C,  // 0x0000ED68 
	0xC44CC44CBC10C452, 0xFE1FFE1DF5DBED9B, 0xED9BEDDDFDDDFE1D, 0xFE1FFE5DFE5DFE5F,  // 0x0000ED88 
	0xFE1FEDDFDD5BED9B, 0xED9DEDDDE59DDD1B, 0xDD5DE5A1C450C44E, 0xC44EC44EC44EC44C,  // 0x0000EDA8 
	0xC44CC450FE1FFE1F, 0xFE1DFE1DED9DE55B, 0xED9BF5DDF5DDFE1F, 0xFE5FFE1FF5DFED9D,  // 0x0000EDC8 
	0xE559ED9BDD17D517, 0xE55BDD5BDD19CCD7, 0xD4D7E55BE59FE5A1, 0xBC10BC10C40CC40C,  // 0x0000EDE8 
	0xC40EFE1FFE1FFE1D, 0xF5DDED9DDD59DD59, 0xE559E59BEDDFE55B, 0xD519DD19DD19DD19,  // 0x0000EE08 
	0xDD59DD19CCD5D4D5, 0xE559E59BE55BDD5B, 0xDD19ED9DF5DDE59F, 0xE59FE5A1BC10BC0E,  // 0x0000EE28 
	0xFE1FFE1FFDDDDD15, 0xD4D5DD17ED9DE59D, 0xCCD7CC97CCD7CC95, 0xC453C495CCD7CCD7,  // 0x0000EE48 
	0xCCD5BC53C495DD59, 0xDD5BE55BE55BDD59, 0xDD5BED9BE55BDD59, 0xE559E59DEDA1EDA3,  // 0x0000EE68 
	0xFE5BF5DBE55BDD19, 0xDD19DD5BE59DDD19, 0xC495BC53C495CC95, 0xC455CC97CCD9C497,  // 0x0000EE88 
	0xC497BC53BC53DD5B, 0xD519D519DD19D519, 0xDD59E55BDD19DD59, 0xED9DF5DDFE5BFE5D,  // 0x0000EEA8 
	0xFDDDED9DED9DE59D, 0xE59FD51BBC55C495, 0xD519C495C495C495, 0xC495C497B453BC55,  // 0x0000EEC8 
	0xC497BC55C497CD19, 0xCCD9D519D519D4D9, 0xD4D7DD19DD19E55B, 0xF5DDFE1BFE5BFE5B,  // 0x0000EEE8 
	0xE55BF59FE55DCCD9, 0xD4D7C493B411BC53, 0xCCD7BC55ABD1B453, 0xB413AC13A3D1B413,  // 0x0000EF08 
	0xBC55B413C4D9CCDB, 0xCCDBCCD9CCD9CCD9, 0xCC97CCD7D4D7DD59, 0xF5D9F5D9F5DBFE1D,  // 0x0000EF28 
	0xE559DD59D51BC497, 0xCCD7D4D9C495B413, 0xAC11AC13ABD3B415, 0xB413B413BC55BC97,  // 0x0000EF48 
	0xC497CCD9C499CCD9, 0xCCD7C497CCD9CC97, 0xBC53C455CC95ED59, 0xFDDBFE1BFE1DFE1D,  // 0x0000EF68 
	0xF5DFE55DCC95AB8F, 0xA38FAC13ABD3ABD1, 0xB413BC97C497B455, 0xABD3AC13BC55B457,  // 0x0000EF88 
	0xB415B455BC57BC97, 0xBC97C497D51BCCD7, 0xCC95D4D5DD17E559, 0xED9BE55BDD59EDDF,  // 0x0000EFA8 
	0xED9DED9FD519BC55, 0xBC55C495C495BC55, 0xB455B455B457A3D3, 0xA3D3A3D3A3D39BD3,  // 0x0000EFC8 
	0x93939353A3D5BC57, 0xD519DD5BD519C495, 0xCC93CC95CC95DD17, 0xED59ED9BFE1FFE9F,  // 0x0000EFE8 
	0xE55DE55DD519C497, 0xBC55B453BC55B415, 0xA3D5A3D39BD39B93, 0x939393538B518311,  // 0x0000F008 
	0x9B93AC15C499DD1B, 0xE59BE55BDD59D4D5, 0xCC95CC93D4D5E59B, 0xEDDDFE1FFE1FFE1F,  // 0x0000F028 
	0xE55BD517CCD9BC55, 0xA3919B93A3D39B93, 0x9353935193538B51, 0x83117AD19351B455,  // 0x0000F048 
	0xD519E59BEDDDF5DD, 0xEDDBED9BEDDBE559, 0xDCD5D493DD17FE1F, 0xF5DFED9DE59BDD17,  // 0x0000F068 
	0xCCD9C497BC55ABD3, 0x93518B0F93519393, 0x8B518B118B518B11, 0x8B51A3D3CCD7ED9B,  // 0x0000F088 
	0xFDDDFE1DF5DBFE1D, 0xFE1DE559DD17DD17, 0xD4D3D4D5D4D7ED9F, 0xDD5BD4D5D517D519,  // 0x0000F0A8 
	0xB415AC15A3D39B93, 0x8B11830F8B519353, 0x8B518B1193519393, 0xB455E559FE1DF5DD,  // 0x0000F0C8 
	0xED9BED9BED9BE559, 0xDD17B411B3D1C455, 0xC453DD19CCD7C451, 0xCC95C493C495BC97,  // 0x0000F0E8 
	0xABD59B9393538B11, 0x83118B118B518B51, 0x8B518B119351BC57, 0xDD19EDDBFE1DF5DD,  // 0x0000F108 
	0xED99ED9BED99DD17, 0xCC93C453BC11CC97, 0xCC97C497B413ABD1, 0xB413AC13A3D39B93,  // 0x0000F128 
	0xA3D3935393538B51, 0x8B118B118B118B11, 0x8B519B93B415C495, 0xD4D5DD17DD59DD17,  // 0x0000F148 
	0xD4D5D4D5D4D5DD19, 0xE559D519CC95CC97, 0xCC95BC11C453BC13, 0xB413B453B415A3D3,  // 0x0000F168 
	0x9B958B518B518B11, 0x8B118B118B118B11, 0x9353A3D3BC55C455, 0xC453D4D7D517B411,  // 0x0000F188 
	0xB3D1C493CC95CC95, 0xD519DD1BD51BCC97, 0xBC55B413C499C497, 0xABD19B939B939353,  // 0x0000F1A8 
	0x93958B538B538B53, 0x93538B538B539393, 0xA3D5B457C497CCD9, 0xBC55CCD7D55BC497,  // 0x0000F1C8 
	0xB413C495CCD7B413, 0xB413C4D9C499AC13, 0xABD3B415AC179B93, 0x935193538B538B53,  // 0x0000F1E8 
	0x9353939593959353, 0x939593539353A3D5, 0xB459B457C4D9D51B, 0xCCD9CD1BCD19CCD9,  // 0x0000F208 
	0xCCD9CCD9CCD9BC55, 0xA3D1A391ABD39B91, 0x9B91A3D59B93830F, 0x8B539B9593939395,  // 0x0000F228 
	0x9397935393539353, 0x8B538B5393959BD5, 0xA415AC15BC55C4D9, 0xC4D9BC55AC13A3D1,  // 0x0000F248 
	0xAC13AC13AC13BC55, 0xABD39B91A3D1A3D1, 0x935193919B959353, 0x8B5193959B979BD9,  // 0x0000F268 
	0x9B99939993959353, 0x8B538B5393959395, 0x9BD3A3D3B415B457, 0xB455B413B413A3D3,  // 0x0000F288 
	0x9B8F9B4F9B4F9B91, 0xAC15A3D39B919B91, 0x8B1183118B539353, 0x93979BD76A487A46,  // 0x0000F2A8 
	0x724A9BD99BD99395, 0x9393935393539395, 0x9BD59B93AC15AC55, 0xAC15A3D3AC13ABD3,  // 0x0000F2C8 
	0x934F8B0F934FA3D3, 0xAC179B9393539353, 0x82CF830F93939BD7, 0x9BD772487A487A86,  // 0x0000F2E8 
	0x7A46724A6A4A9BD9, 0x9B97939793959393, 0x939593939BD5A3D5, 0xA3D59B9393518B0F,  // 0x0000F308 
	0x830F8B0F8B0F9351, 0x9393935383118311, 0x8B1193959BD76A08, 0x72487A467A867A86,  // 0x0000F328 
	0x7A46724872486A4A, 0x9BD99BD99B979397, 0x93979B9793959B91, 0x9B91934F8B4F8B0F,  // 0x0000F348 
	0x8B11939593559355, 0x939593558B539395, 0x9BD99BD76A0A7248, 0x7246724672467246,  // 0x0000F368 
	0x7246724672467248, 0x72486A4A9BD99B97, 0x9B979B979B979B99, 0x9B99939793979399,  // 0x0000F388 
	0x9B999B999B979B97, 0x9B979B9793979BD7, 0x6A086A0872067246, 0x7244724472467244,  // 0x0000F3A8 
	0x7244724672067244, 0x724672486A066A08, 0x6A086A086A0A6A08, 0x6A086A086A086A0A,  // 0x0000F3C8 
	0x620A6A0A620A620A, 0x6A086A086A066A48, 0x6A066A066A066A06, 0x6A046A046A046A04,  // 0x0000F3E8 
	0x6A046A046A046A04, 0x6A046A046A066A46, 0x6A066A066A086A08, 0x6A086A086A086A08,  // 0x0000F408 
	0x6A086A066A066A04, 0x6A046A046A046A04, 0x62046A066A066A04, 0x6204620462046A04,  // 0x0000F428 
};

u64 _spot18_room_3_tex_0000F448[] = 
{
	0x7BDB94A1ACE77BDB, 0x631563156B595293, 0x4A534A4F39CF39CF, 0x4A4F49CF39CF39CF,  // 0x0000F448 
	0x49CF4A4F4A4F4A4F, 0x4A4F525352534A4F, 0x4A4F49CF4A4F4A4F, 0x52534A5352934A53,  // 0x0000F468 
	0x4A4F49CF4A4F4A4F, 0x4A4F4A534A4F4A53, 0x4A4F49CF4A4F49CF, 0x4A4F4A4F4A534A4F,  // 0x0000F488 
	0x52534A4F4A4F4A4F, 0x4A4F4A4F39CF4A4F, 0x4A4F4A534A4F39CF, 0x39CF49CF4A4F49CF,  // 0x0000F4A8 
	0x9CA19CE5AD67841F, 0x6B5952956B596295, 0x4A4F4A5339CF4A53, 0x4A4F4A5349CF49CF,  // 0x0000F4C8 
	0x4A4F4A4F52935253, 0x5293529352934A4F, 0x4A4F4A4F4A4F5293, 0x5253529352535293,  // 0x0000F4E8 
	0x4A4F4A4F524F4A4F, 0x4A534A4F4A534A4F, 0x52534A4F4A4F4A4F, 0x4A4F524F52935293,  // 0x0000F508 
	0x529352534A4F39CF, 0x49CF49CF49CF4A4F, 0x5253525352534A4F, 0x49CF4A4F4A4F524F,  // 0x0000F528 
	0x9CA5B5ABB56B9CA5, 0x6B59529352935293, 0x4A534A4F4A534A53, 0x529352534A4F5253,  // 0x0000F548 
	0x4A4F524F52936315, 0x6293529352534A4F, 0x5253525352935293, 0x4A4F4A4F52534A4F,  // 0x0000F568 
	0x524F4A4F4A4F5293, 0x5293529352535293, 0x62934A4F5293524F, 0x5293529363156293,  // 0x0000F588 
	0x529352534A4F4A4F, 0x4A4F4A4F4A4F5293, 0x5293629352934A4F, 0x52934A4F524F5253,  // 0x0000F5A8 
	0x9CA19CA58421841F, 0x7B59631563155295, 0x4A4F4A534A4F6293, 0x5293629352935293,  // 0x0000F5C8 
	0x629362936B156B15, 0x6293629362935293, 0x6293631562936313, 0x5293629362936293,  // 0x0000F5E8 
	0x5293529362936293, 0x6B15629352936315, 0x6B15629362936313, 0x631363156B156315,  // 0x0000F608 
	0x6293629352935293, 0x6293524F524F6293, 0x6B15631363135293, 0x5293529362936315,  // 0x0000F628 
	0x9CE5B5AB94A1841F, 0x6B596B1563154A53, 0x4A534A4F4A536293, 0x6315629352936293,  // 0x0000F648 
	0x6293631563136293, 0x5293629362936293, 0x6B156B136B156B55, 0x6B156B1563156293,  // 0x0000F668 
	0x6293631362936293, 0x6B15629363136B15, 0x6B556B1563136313, 0x6B156B156B556B15,  // 0x0000F688 
	0x6B15629362936B15, 0x63135293524F6B15, 0x6B156B5563136293, 0x6293629363136293,  // 0x0000F6A8 
	0xB5679CE59CE5841F, 0x841F7BDB6B195295, 0x529339CF49CF6293, 0x629362936B557B55,  // 0x0000F6C8 
	0x6B156B556B155293, 0x5293631363136B55, 0x7BD96B157B597B55, 0x7B556B556B156B15,  // 0x0000F6E8 
	0x6B156B1563136293, 0x631363136B157B55, 0x6B156B156B156B55, 0x7B557B596B156293,  // 0x0000F708 
	0x7B556B156B156B55, 0x6B15629362936B15, 0x6B15631363137B55, 0x7B556B156B556B55,  // 0x0000F728 
	0xEEF1FFBBDEF5DEB1, 0xAD6583DB63156B19, 0x525339CF39CF6293, 0x63136B157B597B55,  // 0x0000F748 
	0x7B597B557B55524F, 0x63136B136B156B55, 0x6B1583D97B557B59, 0x83D983D97B556B55,  // 0x0000F768 
	0x7B596B156B556B15, 0x6B556B136B156B13, 0x62936B156B557B59, 0x7B597B597BD96B55,  // 0x0000F788 
	0x7B5583D97B596B15, 0x7B5562936B156B13, 0x6B156B156B557B59, 0x7B557B597B557B59,  // 0x0000F7A8 
	0xF777DEF5DEF5AD67, 0x7BDB631562956295, 0x525339CF4A4F6293, 0x6B156B557B5583D9,  // 0x0000F7C8 
	0x83DB841B7B55528F, 0x6B136B1362936B15, 0x7B557B5583D97B55, 0x83D97B5583D97B55,  // 0x0000F7E8 
	0x83D97B59524F83D9, 0x62936B1363136B15, 0x6B136B557B557B55, 0x83D983D9841983D9,  // 0x0000F808 
	0x83D97BD96B157B59, 0x7BD57B5583D983D9, 0x7B557B557B557B55, 0x83D9841B841B7B59,  // 0x0000F828 
	0xEEF1DEF5FFBBDEB1, 0x9CA17BDB62956B19, 0x4A5339CF39CF6293, 0x63137B5583D983D9,  // 0x0000F848 
	0x941B941B6B156B13, 0x6B136B136B559419, 0x83D983D993D983D9, 0x83D983D96293941B,  // 0x0000F868 
	0x941B524F6B136B13, 0x524F62937B556B15, 0x7B557B5983D983D9, 0x83D983D9941983D9,  // 0x0000F888 
	0x7BD56B156B157B59, 0x83D96B1583D96B55, 0x7BD96B1383D9941B, 0x83D9941B941B7B59,  // 0x0000F8A8 
	0xD62BF777D62DAD67, 0x9CA1941F6B596315, 0x529339CF39CF5293, 0x62936B5583D96B55,  // 0x0000F8C8 
	0x941B941B83D97B55, 0x7B557B556B1383D9, 0x941B9419941B9419, 0x83D57BD5524F524F,  // 0x0000F8E8 
	0x9C9F93D9941B6B55, 0x628F524F83D97B55, 0x7BD583D983D583D9, 0x83D97B5583D97B55,  // 0x0000F908 
	0x7BD56B1362936293, 0x6293629363137B55, 0x7BD56B137B5583D9, 0x6B55941B941B8419,  // 0x0000F928 
	0xC5ABD6B1B56B9CE5, 0x9CE17BDB63156319, 0x52954A4F39CF5293, 0x62936B557B556293,  // 0x0000F948 
	0x6B157B55941B6313, 0x83D983D9941BACDF, 0x9C9B9C9FAC9F941B, 0x94197B5563137B55,  // 0x0000F968 
	0x93D994196B137B55, 0x83D9628F941B83D5, 0x83D5941983D583D9, 0x93D983D96B536B13,  // 0x0000F988 
	0x6B136B136B136B13, 0x7B556B557B557BD5, 0x7B5563137B557B55, 0x63136B557B55941B,  // 0x0000F9A8 
	0xEEF5C62DD6B1ACE5, 0x94A17BDB6B195293, 0x4A534A534A535293, 0x62936B1362936293,  // 0x0000F9C8 
	0x7B53835583D57B55, 0x83D584199419ACE1, 0xACDF9C9BACDF9C19, 0x94197B55941B9C9B,  // 0x0000F9E8 
	0x6B13628F524F6B55, 0x9C9B6B13941983D5, 0x83D57B537B556B13, 0x7B5583D56B556B13,  // 0x0000FA08 
	0x6B136B1363137B55, 0x83D57BD583D983D9, 0x6B156B136B136B13, 0x6B137B5383D57BD5,  // 0x0000FA28 
	0xC5ABC5ABD62DB5AB, 0x941F7B596B195293, 0x4A534A5339CF5253, 0x528F7B5583D58355,  // 0x0000FA48 
	0x9419941983D583D9, 0x83D57B5583D99C9B, 0x9C9B9C9B9419941B, 0x9C1B9C9B9C9B83D9,  // 0x0000FA68 
	0x6293628F628F524F, 0x6B1393D5941983D5, 0x83D9941994199419, 0x7B5583D56B536B13,  // 0x0000FA88 
	0x628F628F62937B53, 0x7BD583D594197B55, 0x6B1362937B5583D5, 0x83D5941994197B55,  // 0x0000FAA8 
	0xC5ABDEB1AD679CA1, 0x9CE57B5963155253, 0x4A5339CF4A4F4A4F, 0x52936B537B5383D5,  // 0x0000FAC8 
	0x93D593D983D583D5, 0x83D57B557B557B55, 0x9419941983D59C19, 0xB4DFAC9B9C997B53,  // 0x0000FAE8 
	0x528F835383D36B13, 0x835593D993D983D5, 0x9C199C99AC9B83D5, 0x83D583D57B556B13,  // 0x0000FB08 
	0x62937B557B139419, 0x93D5941994196B13, 0x6B136B137B557B55, 0x83D593D583D57B55,  // 0x0000FB28 
	0xC62BF777B5ABDEB1, 0x941F7B596B194A53, 0x49CF4A5339CF4A4F, 0x4A4F6B136B536B13,  // 0x0000FB48 
	0x83D583D593D993D5, 0x83D583D57B557B53, 0x93D57BD583559C9B, 0xC561B5619C9B83D5,  // 0x0000FB68 
	0x83D5AC9B9C9B7B53, 0x94199419941993D9, 0x9CDB9419941983D5, 0x93D994197B557B55,  // 0x0000FB88 
	0x7B537B5583D5ACDB, 0xACDB941983D96B13, 0x6313524F6B536B53, 0x6B1383D583D583D5,  // 0x0000FBA8 
	0xB567D62DFFBBDEB1, 0x841F6B5962954A53, 0x4A534A4F49CF4A4F, 0x6B136B137B557B55,  // 0x0000FBC8 
	0x93D59C199419ACDB, 0xAC9B9C197B5383D3, 0x93D583D583D583D5, 0xB5A19C9B9C9B9C9B,  // 0x0000FBE8 
	0xAC9B93D5B5619C9B, 0x83D59C199419ACDF, 0xAC9B83D583D583D5, 0x94197BD593D58355,  // 0x0000FC08 
	0x83D594199C999C99, 0x83D57B536B136313, 0x628F83D56B137B55, 0x7B5593D59C1993D5,  // 0x0000FC28 
	0xB567FFBBFFBBC5AB, 0x841F7B5963155295, 0x529539CF39CF4A4F, 0x7B557B5583D593D9,  // 0x0000FC48 
	0xAC9B9C19AC99ACDB, 0x9419B4DB7BD583D5, 0x9C99941983D56B13, 0x941983D5B4DBB55F,  // 0x0000FC68 
	0xB55FACDBAC9BAC9B, 0x83D5941994199C9B, 0x9C999C999C199419, 0xB4DB83D5AC999C19,  // 0x0000FC88 
	0xAC9983D5AC9B9C19, 0x84157B556B136313, 0x7B539C9B83D593D9, 0x93D9AC9B9C19AC9B,  // 0x0000FCA8 
	0xFFB7D62DDEF5841F, 0x7B5B631952956295, 0x52954A4F39CF5293, 0x6B556B139C9BACDB,  // 0x0000FCC8 
	0xB55FB4DBACDB9C99, 0x941583D57B5383D5, 0xB55FACDB93D983D5, 0x7B53AC9BC55FC5A1,  // 0x0000FCE8 
	0xC561AC9994199419, 0x9419AC9BACDBACDB, 0x9C9BB4DF93D5B4DB, 0x9C9994199C99B4DB,  // 0x0000FD08 
	0xB4DB9C199C199419, 0x7BD57B5383D58353, 0xAC9B9C997B53AC9B, 0xB4DFB55FB4DBB4DB,  // 0x0000FD28 
	0xC5ABDEB1DEB17BDB, 0x7BDB6B5962956295, 0x529539CF39CF524F, 0x62937B559C99AC9B,  // 0x0000FD48 
	0xB4DBACDB9C99B4DB, 0x9C999C99ACDBAC9B, 0xAC9B9C99ACDB93D5, 0xAC99C55FC55FC55F,  // 0x0000FD68 
	0xC55BB55F9C999C19, 0xACDBB4DBB4DBB55F, 0xB4DF9C99B55FB55F, 0x941993D5C55FC55B,  // 0x0000FD88 
	0xC55FB4DB83D583D5, 0x7B537B559C999C19, 0x93D583D594199C99, 0xACDBB55BACDBAC9B,  // 0x0000FDA8 
	0xD62DDEB1D62D9CA5, 0x7BDB7BDB63196319, 0x4A534A4F39CF524F, 0x6B1383D59C199C9B,  // 0x0000FDC8 
	0xB4DBACDBB4DBD621, 0xB4DB9C99941993D5, 0x83D5941583D59C19, 0xB4DB9C19B55BD59F,  // 0x0000FDE8 
	0xD59FC4DFC561DE25, 0xC55FAC9BD5A1B55B, 0xB4DBB4DBC55FB4DB, 0xB55FB4DBC55FC55F,  // 0x0000FE08 
	0xD5A1B55B941993D5, 0x93D59C199C999C19, 0x93D59C999C999C9B, 0x9C9BB4DBACDBB4DF,  // 0x0000FE28 
	0xACE5C62DAD67AD67, 0x83DB6B596B596295, 0x4A5339CF39CF5253, 0x6B137B559C99B55F,  // 0x0000FE48 
	0xACDBB4DFAC9BD5A1, 0xAC99AC99AC9B9C19, 0x93D594158355AC99, 0x9C1983D594159C15,  // 0x0000FE68 
	0xDE25D55FDE25EEA7, 0x93D59C99B4DB93D5, 0xC55BD59FB4DB9C19, 0xEEA5D5A1C55FC55F,  // 0x0000FE88 
	0xDE25AC9993D59C19, 0xAC99B4DBB4DBAC9B, 0x9C199C999C19ACDB, 0xB55FACDBB4DFACDB,  // 0x0000FEA8 
	0x9CE5D62DC62DAD67, 0x7BDB631563154A53, 0x4A4F4A534A4F5293, 0x631383D983D593D5,  // 0x0000FEC8 
	0x93D5C55BEEA7C55F, 0x94159415B4DBB4DB, 0x83D5941583D3AC99, 0x9C15B4DBAC99AC99,  // 0x0000FEE8 
	0xEEA7C55BDEA5DEA5, 0xC55FDEA5AC9B93D5, 0x9C99ACD99C19C55F, 0xDE25EEA5B4DBD59F,  // 0x0000FF08 
	0xDDA1B4DB9C19AC99, 0xC55FB4DBEEA5B55B, 0x9C999C19B4DB9C15, 0x93D593D5C55FDEA5,  // 0x0000FF28 
	0xB5ABAD67D62DB5AB, 0x841F529552934A53, 0x4A534A4F4A534A4F, 0x62937B5583D583D3,  // 0x0000FF48 
	0x6B0FACDBDE21AC99, 0xB4DBB4DB9C996B0F, 0x7B53835393D58355, 0xAC99B4DBB4DBC4DB,  // 0x0000FF68 
	0xDE21C55BD59FD59F, 0xEEA5DEA5C55FAC99, 0xACDBC55BD59FF6E7, 0xDEA5ACD9C55FDE21,  // 0x0000FF88 
	0xC55B9C99B4DBD59F, 0xD5A1DEA5DE21AC9B, 0x83D393D5ACD99415, 0x83536B0FB4DBDE21,  // 0x0000FFA8 
	0xEEF1C62DF7B79CE5, 0x7B5B6B1562954A53, 0x4A4F4A5339CF5253, 0x63137B556B1393D5,  // 0x0000FFC8 
	0x7B53D59FD5A1B4DB, 0xACDBC55BC55F9C15, 0x94159C159C99B4DB, 0xEEA1F6E5F6A5EEA5,  // 0x0000FFE8 
	0xEEA5C55BDDA1C59F, 0xC55FC55FC59FB4DB, 0xC55FB4DBDE21DE21, 0x9C99EEA5DE25D59F,  // 0x00010008 
	0xB4DBD55FEEA5C55B, 0xD59FD5A1B4DB9C19, 0x93D59C999C198353, 0x94157B53D59FD59F,  // 0x00010028 
	0xAD67C62D9CE59CE5, 0x83DB7B5962954A53, 0x4A534A4F49CF5253, 0x6B156B137B538353,  // 0x00010048 
	0xB499D55FB55B93D5, 0xC55BDE21EEA5C55B, 0xACD9ACD9C55BD59F, 0xEEA1EE21F6E5EE21,  // 0x00010068 
	0xC55F9415D55FACDB, 0xB55BB4DB9419C55B, 0xB4DBAC99B55BB55B, 0xC55FDE21C55FB55F,  // 0x00010088 
	0xEEA1D59FDE21ACDB, 0xD59FB4DB6B0F7B53, 0x9C15B4DB941593D3, 0x83D3B4D9D55FB4DB,  // 0x000100A8 
	0xC62BAD67C5ABACE7, 0x83DB629563155293, 0x4A534A534A4F6315, 0x83DF841F841F841F,  // 0x000100C8 
	0xC5A7DEADFFB5C5AB, 0xB5679CA1C5A7DEAD, 0xF775C5ABACE59CE1, 0xD62BDEB1FFB5C62B,  // 0x000100E8 
	0xACE594A1C5A7DEAD, 0xFFB5C5ABB5679CA1, 0xC5ABDEADF775C5A7, 0xACE594A1C62BEEF1,  // 0x00010108 
	0xFFB5C62BACE594A1, 0xC5ABDEADFF75C5A7, 0xAD679CA1C5ABDEAD, 0xF775C5A7ACE594A1,  // 0x00010128 
	0xD62DC62DD6B194A1, 0x7BDB6B196B595293, 0x52934A534A535295, 0x6B599CA1841F4A53,  // 0x00010148 
	0x7BDB9CA1941FC5AB, 0x9CA14A5383DF949F, 0x941FC5A79CA14A53, 0x83DF9CA194A1C5AB,  // 0x00010168 
	0x941F4A537BDB9CA1, 0x941FC5AB9CA14A53, 0x83DF949F841FC5A7, 0x9CA14A4F83DF9CA1,  // 0x00010188 
	0x94A1C5AB941F4A53, 0x7BDB9CA1941FC5AB, 0x9CA14A53841F941F, 0x841FC5A79CA14A4F,  // 0x000101A8 
	0x841FF77794A19CE5, 0x9CA16B596B596295, 0x529339CF4A536315, 0x841F9CE194214A53,  // 0x000101C8 
	0x9CA1B56783DB9CE1, 0x841F4A5394A1ACE5, 0x841FACE594214A53, 0xACE5ACE583DF9CE1,  // 0x000101E8 
	0x94214A539CE5B567, 0x83DB9CE1841F4A53, 0x949FACE5841F9CE5, 0x94214A53ACE5ACE5,  // 0x00010208 
	0x841F9CA194214A53, 0x9CE1B567841F9CA1, 0x841F4A5394A1ACE5, 0x841F9CE594214A53,  // 0x00010228 
	0x94A19CE5AD67B5AB, 0x841F6B5963155295, 0x52954A4F4A4F6315, 0x841F83DB9CE54A53,  // 0x00010248 
	0x94A194A1841F83DB, 0x9CA14A4F941F9CA1, 0x841F841F9CE54A53, 0x941F941F841F83DB,  // 0x00010268 
	0x9CE54A539CA194A1, 0x841F83DB9CA14A4F, 0x941F9CA1941F841F, 0x9CE54A5394A1941F,  // 0x00010288 
	0x841F83DB9CE54A53, 0x9CA194A1941F83DB, 0x9CA14A4F941F9CA1, 0x941F841F9CE54A53,  // 0x000102A8 
	0xB5A7AD67841FB567, 0x83DF6B5963156295, 0x529539CF4A4F5293, 0x841F7B5B83DB5295,  // 0x000102C8 
	0x6B59942183DF7B5B, 0x7BDB52936B1983DF, 0x841F7BDB83DB4A53, 0x6B197BDB841F7B5B,  // 0x000102E8 
	0x83DB52956B59941F, 0x83DB7B5B7BDB5293, 0x6B1983DF841F7BDB, 0x83DF52936B197BDB,  // 0x00010308 
	0x841F7B5B83DB5295, 0x6B19841F841F7B5B, 0x7BDB52936319841F, 0x841F7BDB83DF5295,  // 0x00010328 
	0x9CA1B5AB9CE594A1, 0x83DB7B5B6B596295, 0x525339CF4A4F6B19, 0x6315529552954A53,  // 0x00010348 
	0x6B59ACE552934A53, 0x4A534A536319AD67, 0x529552954A534A53, 0x6B19ACE54A534A53,  // 0x00010368 
	0x52934A536B59ACE5, 0x52934A534A534A53, 0x6B19529552955295, 0x4A5352536B19ACE5,  // 0x00010388 
	0x4A534A5352934A53, 0x6B59ACE552954A53, 0x4A534A536B195295, 0x529552954A535253,  // 0x000103A8 
	0xC62BEEF5ACE77BDF, 0x7BDB6B5963155295, 0x4A5339CF4A534A4F, 0x4A534A4F52934A53,  // 0x000103C8 
	0x52954A5339CF4A4F, 0x39CF39CF52534A53, 0x4A534A534A5339CF, 0x631539CF39CF39CF,  // 0x000103E8 
	0x4A534A5363154A53, 0x39CF4A4F39CF39CF, 0x52934A534A534A53, 0x4A534A53631539CF,  // 0x00010408 
	0x39CF39CF4A534A53, 0x63154A534A534A4F, 0x39CF39CF52954A53, 0x4A534A534A534A53,  // 0x00010428 
};

u64 _spot18_room_3_tex_00010448[] = 
{
	0xB561AD1BB563A49B, 0xB51FB51F9C15A499, 0x9C17A499A499B563, 0xB563B563B563B563,  // 0x00010448 
	0xB563B563B51FB563, 0xB563B563B563B51F, 0xB563ACDBACDDAD1B, 0xB51FB563B5639C15,  // 0x00010468 
	0xB5639C158BD3730F, 0x8BD37B53520D7B11, 0x8BD5730F72CF8351, 0x7B539415520B9C17,  // 0x00010488 
	0xACDBACDB7B53B563, 0xAD1B8BD5ACDDA499, 0xA49BA49B9C15A499, 0xA49BA4999C158BD3,  // 0x000104A8 
	0xAC9D941783938BD3, 0x9C157B11520B730F, 0x7B536A8D628D730F, 0x94157B53A49B9C17,  // 0x000104C8 
	0xA4999415520BB51F, 0xA49B628D83939C15, 0x9C157B117B537B53, 0x7B537B5372CF624D,  // 0x000104E8 
	0xB51F94179415A499, 0xAC9D8B936A8D8351, 0x9C156A8D6ACF7B11, 0x8BD56A8D730F7B53,  // 0x00010508 
	0x8351730F628DB561, 0xB51F628D8BD37B53, 0x839394176A8D628D, 0x8BD39C158BD372CF,  // 0x00010528 
	0xB5639C1594178BD5, 0x8BD37B53628D730F, 0x9C156A8D624D730F, 0x7B11624D624D730F,  // 0x00010548 
	0x6ACF51CB520BAD1B, 0xA499520D83938BD3, 0x83937B53624D624D, 0x8393A49B8BD3520D,  // 0x00010568 
	0xB51FA49983939415, 0x8351730F624D624D, 0x8351624D520D6A8D, 0x520D624D6A8D7B53,  // 0x00010588 
	0x8351520B51CBAC9D, 0x730F41C96ACF7B53, 0x72CF520D624D8393, 0x72CF7B539C15520D,  // 0x000105A8 
	0xAD1B9C1594158B93, 0x8BD56A8D520D6A8D, 0x7B536A8D628D624D, 0x6ACF8351730F520B,  // 0x000105C8 
	0x6A8D398931477B11, 0x41C931477B5372CF, 0x624D6A8D628D9417, 0x8BD583939C17520D,  // 0x000105E8 
	0xA49B94177B538BD3, 0x7B53520D520B624D, 0x6A8D624D624D624D, 0x730F628D624D520B,  // 0x00010608 
	0x520B41C931474A0B, 0x41C931478BD56A8D, 0x41C9628D628D7B53, 0x9C15839372CF520D,  // 0x00010628 
	0xB5636A8D6ACF8393, 0x628D6A8D628D7B11, 0x83516A8D51CB520B, 0x628D520BAD1BA499,  // 0x00010648 
	0xA4999C156A8F51CB, 0x51CB3147628D520B, 0x41C951CB624D8393, 0x730F7B5341C97B53,  // 0x00010668 
	0xB5639C156A8DA499, 0x8351730F628D6ACF, 0x8351628D520D51CB, 0xA4999C59A499A499,  // 0x00010688 
	0x7B118B9593D57B11, 0x9C153147520D6A8D, 0x520B3147624D7B53, 0x628D83937B538351,  // 0x000106A8 
	0xB563A49B7B118BD5, 0x9C15628D624D6ACF, 0x6ACF624D624D93D5, 0xACDBACDBB563B563,  // 0x000106C8 
	0xACDB7B539C156A8F, 0xAD1BA45951CB72CF, 0x51CB3147628D72CF, 0x72CF6A8D520D7B11,  // 0x000106E8 
	0xB563A49B9C159C15, 0x6ACF520D624D7B11, 0x624D624DA4597B53, 0xACDB93D5B563B563,  // 0x00010708 
	0xB563AD1BB5638B95, 0x7B53A459A49B520D, 0x624D41C9624D8351, 0x8393520D9C598BD5,  // 0x00010728 
	0xB563A49983939C17, 0x8B93730F624D7B11, 0x7B11B563B5639C59, 0xB563B55FB563A49B,  // 0x00010748 
	0xAD1BA499A49B93D5, 0x72CF9C15ACDBACDB, 0x520B41C9624D520D, 0x624D72CF6A8D628D,  // 0x00010768 
	0xB5637B537B536ACF, 0x6A8D520D624D8393, 0x730FB51FB55F9C15, 0xACDBACDBB563ACDB,  // 0x00010788 
	0xACDB8B959C598B95, 0x628D72CFA49BA459, 0x41C93989628D520D, 0x624D628D730F520B,  // 0x000107A8 
	0xB563520D7B116A8D, 0x520D520B520B8351, 0xAD1BAD1BB55F93D5, 0x9C17A459B56349C9,  // 0x000107C8 
	0x49C93147A49B7B11, 0x524D6A8FA459A49B, 0xA45951CB520B51CB, 0x624D6A8D624D520D,  // 0x000107E8 
	0xB563624D7B11624D, 0x6A8D628D624D628D, 0xB563B563A499ACDB, 0xACDBA459628D4A0B,  // 0x00010808 
	0x3147314749C97B11, 0x520B8B95ACDB93D5, 0x7B113989520B520B, 0x730F6A8D730F41C9,  // 0x00010828 
	0xB5637B537B11624D, 0x6ACF624D624D6A8D, 0xA499B55FB563B51F, 0xB51FA499520B3147,  // 0x00010848 
	0x3147314731477B11, 0x628D8B958B958B95, 0x72CF3147628D628D, 0x8393520B51CB3147,  // 0x00010868 
	0xB5638BD3730F628D, 0x7B11730F628D624D, 0xA499AD1BB51FB55F, 0xAD1BACDB628D3989,  // 0x00010888 
	0x4A0B314731478B95, 0x6A8F7B11628D9C59, 0xA4596A8D624D520B, 0x839351CB730F624D,  // 0x000108A8 
	0xB56394157B538393, 0x8B936ACF624D624D, 0x9C15A459ACDB9C15, 0xA4599C15A4993147,  // 0x000108C8 
	0x314731478B95AD1B, 0x6A8F9C1572CFAC9D, 0x8B95628D730F41C9, 0x8351520B624D730F,  // 0x000108E8 
	0xB5637B538B938351, 0x7B11520D624D51CB, 0x51CBACDBAD1B7B53, 0x9C15A459ACDB7B11,  // 0x00010908 
	0x7B538B9593D5B55F, 0x7B119C597B5393D5, 0x6ACF6A8D624D51CB, 0x7B53624D730F730F,  // 0x00010928 
	0xB5636A8D7B53628D, 0x7B116ACF7B53730F, 0x520B93D58B959C59, 0x9C15A459ACDB8351,  // 0x00010948 
	0x9C15A4599C15B563, 0xA45972CF7B538B95, 0x624D730F6A8D628D, 0x730F624D730F624D,  // 0x00010968 
	0xB5636A8D7B538393, 0x7B116ACF6ACF624D, 0x51CB51CBA499A459, 0x9C15B563B51F8B95,  // 0x00010988 
	0xAD1BA4997B5393D5, 0xA4998B9372CF72CF, 0x7B11730F7B537B11, 0x624D4A0B7B113989,  // 0x000109A8 
	0xB51F6A8D730F730F, 0x7B537B116A8D624D, 0x624D730F520DA49B, 0xA459A49BB55F8B95,  // 0x000109C8 
	0xA499AD1B8B9572CF, 0xA459ACDB41C97B11, 0x6A8D730F7B116A8D, 0x624D520D520B3147,  // 0x000109E8 
	0xB561628D7B53628D, 0x7B116A8D6A8D628D, 0x8351730F520B624D, 0xB5639C59B5639C59,  // 0x00010A08 
	0x8B95AD1BB5637B53, 0x7B1151CB6A8D7B53, 0x7B1183517B536A8D, 0x6A8D624D624D3147,  // 0x00010A28 
	0xAC9D730F730F6A8D, 0x628D730F628D624D, 0x7B117B11628D730F, 0x624D41C9B5639C59,  // 0x00010A48 
	0x9C59ACDBA49941C9, 0x520D624D628D7B11, 0x6A8D7B536A8D7B11, 0x624D520B4A0B3147,  // 0x00010A68 
	0xB51F520D7B117B53, 0x7B11624D6A8D624D, 0x628D6A8D628D7B11, 0x6A8D520B730F41C9,  // 0x00010A88 
	0x6ACF520B41C94A0B, 0x6A8D624D7B116A8D, 0x628D730F7B116A8D, 0x624D41C951CB3147,  // 0x00010AA8 
	0x9C17A499730F7B11, 0x6A8D624D6ACF6ACF, 0x6A8D624D520D7B11, 0x624D624D7B117B11,  // 0x00010AC8 
	0x730F520B628D624D, 0x624D628D6ACF6A8D, 0x520D83517B536A8D, 0x6A8D4A0B628D520B,  // 0x00010AE8 
	0xA499A49983517B53, 0x6A8D6A8D6A8D730F, 0x83516ACF624D628D, 0x624D624D624D628D,  // 0x00010B08 
	0x624D624D624D624D, 0x520B7B11624D628D, 0x628D7B537B537B53, 0x83513989624D41C9,  // 0x00010B28 
	0xACDDA49B72CF7B53, 0x7B1183517B537B11, 0x7B118351624D6A8D, 0x624D730F624D624D,  // 0x00010B48 
	0x730F624D624D624D, 0x624D6A8D624D730F, 0x6ACF41C9520B624D, 0x51CB41C941C9624D,  // 0x00010B68 
	0xB55F9417628D628D, 0x6A8D7B118351730F, 0x628D6A8D6A8D6ACF, 0x730F7B117B117B11,  // 0x00010B88 
	0x72CF6ACF6ACF624D, 0x520B4A0B520D520B, 0x624D520B520D6A8D, 0x624D520B520B3147,  // 0x00010BA8 
	0xA49B628D7B119415, 0x8B93628D6A8D628D, 0x9C15A49B94158351, 0x8351A4999C156A8F,  // 0x00010BC8 
	0x3989314731476ACF, 0x624D6A8D83518351, 0x7B53624D83518BD5, 0x9C17624D398941C9,  // 0x00010BE8 
	0xB563520D520D51CB, 0x4A0B51CB31473147, 0x3147520B520B3147, 0x520B72CF9C177B11,  // 0x00010C08 
	0x6ACF624D520B6A8D, 0x31473989628D41C9, 0x3989520B72CF730F, 0x8351314731473147,  // 0x00010C28 
};

u64 _spot18_room_3_tex_00010C48[] = 
{
	0x520B5A4B628D628D, 0x72D15A4D73115A4D, 0x520B520B628D6ACF, 0x5A4D6ACF7B115A4D,  // 0x00010C48 
	0x5A4D6A8F628F72CF, 0x7B116A8D83517B51, 0x8BD7839583537B11, 0x6ACF72CF93D56ACF,  // 0x00010C68 
	0x4A0B5A4D72CF5A4D, 0x7B1172CF6A8F5A4D, 0x5A4D520B6A8F6ACF, 0x5A4D6A8D8B936A8F,  // 0x00010C88 
	0x5A4D624D624D8393, 0x8351624D6A8D72D1, 0x8BD5839583957B11, 0x6A8F7B538B936A8F,  // 0x00010CA8 
	0x49CB624D72D16ACF, 0x7B1173115A0D5A4D, 0x5A4D520B5A4D6ACF, 0x628D72CF8B936ACF,  // 0x00010CC8 
	0x520B6A8F520B6ACF, 0x83535A4D5A0D6A8F, 0x7B517B1183538353, 0x72D17B1173116ACF,  // 0x00010CE8 
	0x520B6ACF72CF6ACF, 0x83537B515A4B5A4D, 0x5A0B5A0B624D5A4D, 0x6A8F72D17B116ACF,  // 0x00010D08 
	0x5A4D72CF72CF628D, 0x72CF6A8F520B5A4D, 0x7B5183537B117B11, 0x6ACF6A8F8B936ACF,  // 0x00010D28 
	0x5A4D731172CF72CF, 0x83538353624D5A0D, 0x49CB520B5A4D5A4D, 0x839572D17B116A8D,  // 0x00010D48 
	0x5A4D73117B116A8F, 0x7B11628D5A0B624D, 0x7B117B1172D16A8F, 0x628D7B1194178351,  // 0x00010D68 
	0x5A4D7B1172CF8353, 0x839383536ACF628D, 0x520B520B6ACF6ACF, 0x7B116ACF8B936A8F,  // 0x00010D88 
	0x6A8D7B1173116A8F, 0x94157B11628D628D, 0x73117B1172D1624D, 0x6A8F73118BD57311,  // 0x00010DA8 
	0x5A4D6ACF6A8F628D, 0x7B517B115A4D6A8F, 0x520B5A0B72CF7311, 0x7311839593D56ACF,  // 0x00010DC8 
	0x6A8D7B118BD56ACF, 0x94178B936A8D6A8D, 0x6ACF7B5172CF628F, 0x6A8F835193D58353,  // 0x00010DE8 
	0x5A4D7B516ACF730F, 0x9C1793D76ACF6A8F, 0x5A0D6A8D6ACF7B53, 0x8B958BD58B9372CF,  // 0x00010E08 
	0x624D73117B517B11, 0x9C178353624D5A4D, 0x7B1183538B936ACF, 0x628D835194158BD5,  // 0x00010E28 
	0x520B72CF5A4D7B51, 0x93D594177B11628D, 0x5A4D6A8F83538BD7, 0x83958BD58B958353,  // 0x00010E48 
	0x6A8F72CF6ACF8393, 0x94158353628D628F, 0x7B518B9394197B51, 0x6ACF835194158BD5,  // 0x00010E68 
	0x520B6A8F5A4D6ACF, 0x93D79417730F628F, 0x5A4D731193D58BD5, 0x835572CF83538B93,  // 0x00010E88 
	0x73116ACF6A8F8395, 0x93D78393730F628F, 0x7B118BD394178B93, 0x6ACF8B958B958BD5,  // 0x00010EA8 
	0x5A4D6A8F72CF8353, 0x8BD594177311628D, 0x6ACF93D59C5793D5, 0x7B116A8F83538B93,  // 0x00010EC8 
	0x6ACF72D17B118397, 0x8BD58BD5730F5A4B, 0x628D93D593D78351, 0x6A8F8BD58BD593D5,  // 0x00010EE8 
	0x5A4D72CF7B118395, 0x8351941772CF6ACF, 0x6ACF93D77B518B95, 0x7B536ACF83937B51,  // 0x00010F08 
	0x72CF72CF7B118BD7, 0x941794175A4D520D, 0x7B1193D593D572CF, 0x5A4D8C178BD593D5,  // 0x00010F28 
	0x5A4D6A8F6A8F8BD5, 0x8B958393628D8395, 0x6A8F8B9393D77B11, 0x624D6A8D7B518B93,  // 0x00010F48 
	0x8353628D72CF8B95, 0x8B958BD35A4D5A0D, 0x6A8F8B938B937B11, 0x628D8BD58BD59417,  // 0x00010F68 
	0x5A4D624D6ACF7B51, 0x6A8F8353624D7B51, 0x7B518B938B938B93, 0x5A4D72CF7B537B11,  // 0x00010F88 
	0x8353628F6ACF8B93, 0x7B137B11624D624D, 0x6ACF8B957B5193D5, 0x628F8BD58BD59C57,  // 0x00010FA8 
	0x6A8F6A8D520B7B53, 0x628F7B116ACF8353, 0x83938BD594178353, 0x5A4D6ACF6ACF72D1,  // 0x00010FC8 
	0x624D628F7B119419, 0x73118B93624D5A4D, 0x6A8D8B9372D19417, 0x5A4D8B958BD993D7,  // 0x00010FE8 
	0x7B11624D5A4D72CF, 0x628F5A4D73118B95, 0x8B93835393D58B93, 0x5A4D628D5A4D7311,  // 0x00011008 
	0x7B118B9372CF8B93, 0x72CF72CF5A4D624D, 0x6A8F7B117B539C57, 0x62CF83518BD58BD7,  // 0x00011028 
	0x628D5A4D520B6ACF, 0x5A4D7B117B118393, 0x7B5172CF7B518B93, 0x5A4B5A4D6A8F6ACF,  // 0x00011048 
	0x7B517B115A4D8BD5, 0x83958BD5624D72CF, 0x7B0F5A4D7B51A457, 0x839383518BD98395,  // 0x00011068 
	0x520B624D520B6A8F, 0x520B731183517B11, 0x93D56A8F6A8D8B93, 0x5A4D5A4D624D624D,  // 0x00011088 
	0x6ACF6A8D624D8353, 0x83958351628F7B11, 0x7B0F49CB7B11A459, 0x8C1783958BD58353,  // 0x000110A8 
	0x520B7B115A4D5A8D, 0x4A0B73117B11624D, 0x7B51730F73118B95, 0x6A8F624D72D18351,  // 0x000110C8 
	0x6A8F72CF6A8F72CF, 0x73117B516A8F6A8F, 0x624D5A4D8353A499, 0x941772CF8BD58351,  // 0x000110E8 
	0x628D7B51624D624D, 0x520B628D7B117B11, 0x83518B956A8F7B11, 0x72CF5A4D624D8BD5,  // 0x00011108 
	0x835372D16A8F6ACF, 0x5A0D628D6A8F5A0D, 0x5A4B624D8B939C17, 0x9C5772CF8BD58351,  // 0x00011128 
	0x8353839572D1628D, 0x49CB520D7B117311, 0x6ACF7B116ACF72CF, 0x72CF5A4D6A8F9417,  // 0x00011148 
	0x835372D17B538353, 0x624D7B536A8F5A4D, 0x5A4B72CF835393D5, 0x9C17624D8B958B93,  // 0x00011168 
	0x83957B117B116A8F, 0x41C95A4D6ACF8351, 0x83537311628D628D, 0x72CF72CF7B518351,  // 0x00011188 
	0x7B518355835593D5, 0x624D6ACF624D6A8D, 0x51CB72D1835193D5, 0x9C15628D94158351,  // 0x000111A8 
	0x839573115A0B72D1, 0x51CB628F73118BD7, 0x7B117B11624D6A8D, 0x73117B118B958393,  // 0x000111C8 
	0x7B51835172CF8B95, 0x6ACF7B5372CF72D1, 0x5A4B7B11835193D5, 0x941573118BD593D5,  // 0x000111E8 
	0x8BD572D1628D72CF, 0x520B5A4D83538BD5, 0x6A8D72CF6A8D5A4D, 0x83516ACF8B9593D5,  // 0x00011208 
	0x72D16A8F5A0B8B95, 0x7B53839383937B11, 0x6A8D83516A8D8393, 0x835183938BD58B95,  // 0x00011228 
	0x731172CF5A4D5A4D, 0x520D624D83937B11, 0x624B6A8D624D5A0D, 0x7B117B1183519417,  // 0x00011248 
	0x8353520B520B8B93, 0x6ACF731183936ACF, 0x83518B9572CF6ACF, 0x72D18B958B958B93,  // 0x00011268 
	0x628D5A4D5A0B624D, 0x5A4D7B537B117B11, 0x5A4D624D520B5A0B, 0x93D57B1183539415,  // 0x00011288 
	0x7B51628D5A0B8BD5, 0x5A4D628F8B957311, 0x83517B5172CF628D, 0x8B938BD98BD57311,  // 0x000112A8 
	0x628D5A4D49CB524D, 0x520B73116A8F72CF, 0x5A4D520B5A4D6A8F, 0xA4597B5193D78B93,  // 0x000112C8 
	0x6ACF6ACF72CF8BD5, 0x5A4D731193D78BD5, 0x7B516A8D624D6A8F, 0x8B958BD78B938B93,  // 0x000112E8 
	0x5A4D5A0B41C9628D, 0x5A4D628D6A8F72CF, 0x5A0B5A4B72CF8353, 0x94177B118BD58393,  // 0x00011308 
	0x73116ACF72CF6A8F, 0x6ACF6A8F83938B95, 0x83535A4B624D628D, 0x9C17839383518B93,  // 0x00011328 
	0x5A0D524D49CB6A8F, 0x6A8F6ACF73115A4D, 0x520B6A8D72CF7B11, 0x7B11839383518B95,  // 0x00011348 
	0x6A8F5A4D5A4D5A4D, 0x83537B538BD57B11, 0x624D5A4D6A8D6A8F, 0xA49B7B118B958353,  // 0x00011368 
	0x5A4D524B520B7B11, 0x73117B117B115A4B, 0x5A0B6A8D7B116ACF, 0x7B11839583518B95,  // 0x00011388 
	0x520B5A4B628D624D, 0x7B5372CF8BD56ACF, 0x730F6A8F6A8D628D, 0x93D57B5383958353,  // 0x000113A8 
	0x72CF524B49CB72CF, 0x73116ACF624D520B, 0x520B628D72CF624D, 0x8B937B537B516ACF,  // 0x000113C8 
	0x4A0B5A4D520B6A8D, 0x7B11731183D76A8F, 0x83538B938B936A8D, 0x8BD583537B516A8F,  // 0x000113E8 
	0x624D520B520B7B11, 0x628D6ACF49CB520B, 0x520B624D8BD56A8D, 0x6ACF7B536A8F628D,  // 0x00011408 
	0x628D5A4D5A4D7B11, 0x6ACF7B517B538353, 0x7B0F7B116ACF628D, 0x8B957B537B115A4B,  // 0x00011428 
};

u64 _spot18_room_3_tex_00011448[] = 
{
	0x0802052405D80805, 0x05174531700C0A0A, 0x0C02050505020424, 0x0401050505020505,  // 0x00011448 
	0x1510242452371024, 0x2438092424607710, 0x05600D0810850508, 0x6023240816868508,  // 0x00011468 
	0x2A15242460061008, 0x241F282424600F2A, 0x086C3724100C0824, 0x080A0505200D3705,  // 0x00011488 
	0x2A10242405371005, 0x242A082424600410, 0x08851924100C3231, 0x2A01600801866008,  // 0x000114A8 
	0x2A10242405061524, 0x2415083131600910, 0x0804AF24010C2132, 0x841960080D860F05,  // 0x000114C8 
	0x2A77242405191524, 0x2415083131322810, 0x08040A240CAF1708, 0x34C8020589500F02,  // 0x000114E8 
	0x2A86242405191008, 0x2415603115052805, 0x05021C0805043308, 0x34C8020505010105,  // 0x00011508 
	0x1070052405191024, 0x2410093110021709, 0x08041C0505044508, 0x080C02051C0C3702,  // 0x00011528 
	0x0504052405375208, 0x2409103115050560, 0x08041C0505043308, 0x080C04080A0C0405,  // 0x00011548 
	0x080C0824020D6005, 0x2410153131050405, 0x08020A0505041008, 0x080C0A08020C0204,  // 0x00011568 
	0x050A0824050D6005, 0x0815523131050405, 0x08041C0205021508, 0x08010C080C0C0205,  // 0x00011588 
	0x040508241C101905, 0x6015083131080C05, 0x08041C0404021015, 0x08C80C050A0C0505,  // 0x000115A8 
	0x3901602A62480433, 0x091045316C191905, 0x76020B284559021F, 0x21880C5239013C10,  // 0x000115C8 
	0x1F3932151989047E, 0x0B451A0860013708, 0x08190B0217100552, 0x10880F600F011F02,  // 0x000115E8 
	0x0D5B3B1059190406, 0x0B1904325201AF08, 0x08045301281F5952, 0x026248520D0F0223,  // 0x00011608 
	0x0D1E2615850C5C16, 0x0D09063C15297019, 0x101A200109281752, 0x45010A524E0F0402,  // 0x00011628 
	0x4E4C090204040C71, 0x1C042384051E0110, 0x28281E060C010932, 0x020C0C050F060A01,  // 0x00011648 
	0x061A0602010F1629, 0x1E23280505060D17, 0x1A450C0F5E0C0259, 0x021A0C15015E220D,  // 0x00011668 
	0x9C065F19060D161E, 0x6809091F0901443C, 0x158C390C4C6B0445, 0x044C4505011C0D0C,  // 0x00011688 
	0x38161E0A0A0A220D, 0x0F19061010445AAE, 0x085D49170A1E0F05, 0x040C1933E2515B02,  // 0x000116A8 
	0x1A0B04010B0201F8, 0xF08F6A2A5DE3E3BF, 0xE3FECB3CBA575E09, 0x010F59155F6D0A02,  // 0x000116C8 
	0x4C0C106201052B2B, 0x66A506E76CA4A491, 0xABFE96BFCF3D4F27, 0x730C760945220423,  // 0x000116E8 
	0x500B1A4304155043, 0x8619622ACBE3BF3C, 0x9ACBC2BF96F44F4F, 0x377EA545050C3706,  // 0x00011708 
	0x0626040C288C0112, 0x0B021034764CBFA4, 0xF7CB96857A273C9C, 0x701084D8080C503B,  // 0x00011728 
	0x4361390F1915093A, 0x5119845DCF4C48A4, 0xC2FC849F84472304, 0x3C1508331F5C8601,  // 0x00011748 
	0x01175F0A1A050466, 0x2E455A6C96C2BFA4, 0xC2FE9A9ACA385A4F, 0x3C5A321019200C09,  // 0x00011768 
	0x0117064801253D09, 0xDF151FFDFD96A4A4, 0xC2CBC296CBF4BFF7, 0xF75AD949011E0176,  // 0x00011788 
	0x39172144CD9F57FB, 0xCFC2C296FDCFA4A4, 0xC2FDF796CBF41C7E, 0x0244598426AF041F,  // 0x000117A8 
	0x0128175A33FBF4E3, 0xF7C2C2E359454CE3, 0xC296620232290D36, 0x261F1F08395F193C,  // 0x000117C8 
	0x3B73063C334F13F7, 0xC2E3E3E3591FBFE3, 0xE396C285448D0F06, 0x703159525C0F7610,  // 0x000117E8 
	0x0F19061AA7166E23, 0x330DA7FDCB96F4A4, 0xFB9A154910267043, 0x7E2A3C59205C3C32,  // 0x00011808 
	0x5BCC0C093C0F631C, 0x016D01CB9696BFBF, 0x3C1F880245015C5C, 0x196C703C8750171F,  // 0x00011828 
	0x6D045C04320BAC87, 0x0C770272FDCBBF1C, 0x4D040409050B5006, 0xB959281F200F1702,  // 0x00011848 
	0x1C33A70231F8F082, 0xE2C0423C3CFDBF48, 0x276209766C375F12, 0x5008440977502809,  // 0x00011868 
	0xE0155F452A2B662E, 0x8850870C25CBF4A4, 0x6144105908190C1A, 0x0431331A160A1904,  // 0x00011888 
	0x5F054C32BC43890A, 0x8F0C1E371534F4F7, 0xFB250810D61A375E, 0x5F2432016A0F1904,  // 0x000118A8 
	0x5F760F3231120B0A, 0x04376B8F0808BFC2, 0xE3F76C3428265C0B, 0x09A31F260A0C0904,  // 0x000118C8 
	0x5F881F32443A1E50, 0x7E260B022A33F9C2, 0xFBC2967A25275F0C, 0x02311F2B0F010404,  // 0x000118E8 
	0x0159152A2B82225C, 0x620C5E159D3CF4BF, 0xE3C2FDFE10611062, 0x05A3080E0A060101,  // 0x00011908 
	0x4C3C1534F6205F06, 0x067E01089D61F4BF, 0x2B0284CA17731943, 0x082A153A290F4C0C,  // 0x00011928 
	0x0A04442A39002306, 0x0C3923324196F426, 0x505733334C191937, 0x08081722676D5E0F,  // 0x00011948 
	0x0B8F25241F931906, 0x37731A84415A2F66, 0x0B6221280119A573, 0x3108121E2E42294E,  // 0x00011968 
	0x06101524624AB75E, 0x37A75F49414F6D53, 0x370926010C264537, 0x2A522D1E29295067,  // 0x00011988 
	0x01101534067F770A, 0x481C0C1F311A68B7, 0xDE4E01390F232537, 0xA3289B5642F56B53,  // 0x000119A8 
	0x1A02083401938D50, 0x261C373231257F42, 0x4ED021855E021F1A, 0x082BAA581DE56B97,  // 0x000119C8 
	0x010915345EB07D16, 0x620C59052A087CC3, 0x48373C1948CC4509, 0x080C7FB1C0895CC0,  // 0x000119E8 
	0x7009BA2A21715337, 0x092332342A316829, 0x060145045B882537, 0x0832E998C0F53A22,  // 0x00011A08 
	0x280215E41768B7DE, 0x4E17F3197A2A2577, 0x508F19621E010573, 0x3157719322A71D51,  // 0x00011A28 
	0x1928152A257F424E, 0x0F451F092A31E080, 0x0A0404011C6A7E37, 0x2A1A7C4A204E874A,  // 0x00011A48 
	0x0C0432A3157CC30F, 0x0A283C10BC1582AC, 0xA15C19371C5C0C37, 0x24731E03C356299B,  // 0x00011A68 
	0xA10132A31568290F, 0x06021F1531314780, 0x29012F0A0D161A1A, 0x316148161C4A4222,  // 0x00011A88 
	0x0B02252415257716, 0x01054908312AD071, 0x48042F0C480A6033, 0x0510F2514697770A,  // 0x00011AA8 
	0x6A3C05E410E0565E, 0x1752086CA3C85193, 0x671A8806045EF302, 0x7010B18751770B06,  // 0x00011AC8 
	0x3A09252A26828D21, 0x105931082A67A87C, 0x3F2804485F064C45, 0x1A25206B420B4C06,  // 0x00011AE8 
	0x0B3C5A313A1D0A09, 0x61093252DD6BEB7F, 0x0C19621643AF5C08, 0x3C1C71828D0F2306,  // 0x00011B08 
	0x5E15157A7B0D0433, 0x6001056C05E593AC, 0x4319044E9C12192A, 0xA5634A6E890F2350,  // 0x00011B28 
	0x2115156C0E0F4515, 0x1F707A2A3C3A7763, 0x043CA50B1C37522A, 0x06A6710F285C5E51,  // 0x00011B48 
	0x458C15083C105932, 0x09592A2A09AC516E, 0x091936350C707A31, 0x62B0AC3B602B3A94,  // 0x00011B68 
	0x0949490845763305, 0x102A2A24E293C389, 0x39266B6A09373131, 0xEF9BB5EF027E5C1C,  // 0x00011B88 
	0x4A49086C48CC0532, 0x592424D935475023, 0x0273540B1902246C, 0xB6B093291912290F,  // 0x00011BA8 
	0x462B590862361F1F, 0x0515050A0F176121, 0x101A4E3604453109, 0x0D0D6A6B047E0D6D,  // 0x00011BC8 
	0x430C61280C093906, 0x090202040C172123, 0x60390D351A452806, 0x065F010F73230F22,  // 0x00011BE8 
	0x1130112C0E443822, 0x0A07545643041004, 0x331A166B26350056, 0x09010F1F40074013,  // 0x00011C08 
	0x40133007C13E0707, 0x1814110E303F0711, 0x124B073E3E181800, 0x00008111001411C7,  // 0x00011C28 
};

u64 _spot18_room_3_tex_00011C48[] = 
{
	0x2828010202280A06, 0x06011F26060B291C, 0x26024C0B0F040F67, 0xB723330D1E6D820A,  // 0x00011C48 
	0x0202392810284E0C, 0x0F1A171A0B0A0D0D, 0x26194C0A0D090A0D, 0x89731F066A5B2004,  // 0x00011C68 
	0x17021A21151F4E01, 0x0F28260B5B5C501C, 0x06090C5B1C02010A, 0x0D011F199C0B2E1A,  // 0x00011C88 
	0x19020419151F4801, 0x0A230A5E5B010426, 0x0B06390A160B0D16, 0xB90417230B1E2001,  // 0x00011CA8 
	0x09170102521F0B16, 0x0B1A0A0667260901, 0x0A39260A0B0D1E5B, 0x160261230D1C221A,  // 0x00011CC8 
	0x02451A3352330A06, 0x0A1A261651060901, 0x062606390A0B2916, 0x6A1721230F296D04,  // 0x00011CE8 
	0x02281A0832100606, 0x6706161E1E2B7043, 0x0F4301190A161E1E, 0x483C02230F292001,  // 0x00011D08 
	0x21191A5215100639, 0x0D266DD051261A01, 0x5B431A1A16060D46, 0x0910230B5B1EB59C,  // 0x00011D28 
	0x37191A3232330606, 0x1C43200A94062623, 0x5B48230C0D061E53, 0x1F59045B0B205687,  // 0x00011D48 
	0x0209213252330106, 0x0B390B82972B3909, 0x5B0A02015B390D0D, 0x33597E16481C2251,  // 0x00011D68 
	0x04040D1F10050223, 0x0A390D298D061A28, 0x161610040B39160D, 0x0510040A221C228D,  // 0x00011D88 
	0x0104162310150219, 0x01020D375F012626, 0x220B33095B231653, 0x1010021A0D1C1E42,  // 0x00011DA8 
	0x015C164C44493C09, 0x0402220D2309260A, 0x6D6A59090B040D53, 0x0510025F0D1C1C6D,  // 0x00011DC8 
	0x094C220F3384051A, 0x06231620A519090A, 0x201E1F090F011651, 0x5210025E160B4E20,  // 0x00011DE8 
	0x1A011E0632494909, 0x0B045B6D1919020A, 0x6D2202214C0C0B4E, 0x101238350D0A0AAC,  // 0x00011E08 
	0x0A0C6A1A32154917, 0x0F010B0D23370406, 0x6D0D020904010B29, 0x21090D677B0A6A1E,  // 0x00011E28 
	0x0D0C01041F331528, 0x4C0C0A4809041004, 0x200B091A16485C50, 0x04280D1C1E0A0F0B,  // 0x00011E48 
	0x0D0F1A011F08081A, 0x04010A4E10023C01, 0x6D0B0904166A5C50, 0x2302864E2036060C,  // 0x00011E68 
	0x220C190417080504, 0x16480C4805593206, 0x1E220202700C500B, 0x09020A1E77060F0C,  // 0x00011E88 
	0x1606280933080523, 0x166A4C0F1032D801, 0x1E163C21040C5C0A, 0x091F361E5E76040C,  // 0x00011EA8 
	0x0B01090932341521, 0x700C5C0F1F051939, 0x205B171A060CA74C, 0x2833061E0A1A374E,  // 0x00011EC8 
	0x01371909D86C2523, 0x040C5C0F10251F0F, 0x820D09260B0F5E5E, 0x17445E0B5B435F5B,  // 0x00011EE8 
	0x7004020252154436, 0x060CA74C25D11523, 0x715B041A3723190C, 0x3C32040B500F010D,  // 0x00011F08 
	0x6201021F32083326, 0x0B0F5E5E33493C09, 0x6D67232819153737, 0x1F15020A0106010D,  // 0x00011F28 
	0x5F4C021715342523, 0x3723190C32490206, 0x200D232833320F37, 0x17521F160B1A014E,  // 0x00011F48 
	0x0106191759492519, 0x1A091A192852190D, 0x716B390115450F4C, 0x1F08100F0F09390A,  // 0x00011F68 
	0x0A0C171F1F152801, 0x391A28020208190A, 0x6D53010632880C26, 0x1F08100637023916,  // 0x00011F88 
	0x0B0617173208040A, 0x5F387301448C230F, 0x6D517301D8885C21, 0x091533010417010A,  // 0x00011FA8 
	0x4301451705BA1906, 0x50015F0C4508090B, 0x6D0D060C52284802, 0x2F3205381928044E,  // 0x00011FC8 
	0x6B0F021705174E1C, 0x6A010A0F2315090F, 0x6D22160F05194C48, 0x1052250445191916,  // 0x00011FE8 
	0x0B4E19173219375F, 0x0A73015B0231010D, 0x82710A0133044C4C, 0x332510431019044C,  // 0x00012008 
	0x0D16190215023701, 0x0F5F0C061F310C22, 0xB029011A09044806, 0x1025331A1F8F0401,  // 0x00012028 
	0x161A450215100123, 0x480A0F011F315F2B, 0x8D0B163745044C9C, 0x1025100402041904,  // 0x00012048 
	0x1604103C5245430F, 0x0C0A0104027A0616, 0x670A06881F064C06, 0x1059190973060A0B,  // 0x00012068 
	0x2204103C08190C16, 0x011A260419089C5B, 0x04060A431F62014C, 0x3225042516485E01,  // 0x00012088 
	0x2E09100208190D22, 0x0104260919520B48, 0x010B1606841F4C06, 0x1525023C16011A23,  // 0x000120A8 
	0x0B09331F52092967, 0x4323284510080B1E, 0x064E0A5E3C025F0B, 0x6C1502850A060A0D,  // 0x000120C8 
	0x4C19101708020B67, 0x0B09330210086B2E, 0x1A504E0F17040401, 0x6C15174C4E0F5B29,  // 0x000120E8 
	0x0128103C5D5A0C1E, 0x0F1A1502176C202E, 0x1F0F164E1F062109, 0x6C2510166D0B0D06,  // 0x00012108 
	0x4C28331034520951, 0x50090817336C6768, 0x050A2E0B02734504, 0x32326C6A511C2239,  // 0x00012128 
	0x2E1F3310088C446D, 0x061A081005150C48, 0x1F0D1E0B19736004, 0x05DB080F1E1C7701,  // 0x00012148 
	0x4C0210100808051E, 0x26272A1F05250104, 0x050606160D0D3C1F, 0x5ACD10012E296D01,  // 0x00012168 
	0x012310336C7A1567, 0x061A412833253719, 0x02060A16770B2815, 0x10250876290B0B0C,  // 0x00012188 
	0x4C231010088C0867, 0x0638490910320C37, 0x17010F060F501908, 0x1025451F0D1C2920,  // 0x000121A8 
	0x7E092819498C6C22, 0x2609150402440601, 0x251A060FA70C6208, 0x313425090D0B1E16,  // 0x000121C8 
	0x261945025208325B, 0x2309340102250C5C, 0x05090116361A7017, 0x3115020B4222160D,  // 0x000121E8 
	0x09021F2805150929, 0x01213C0176330A22, 0x332804166A390121, 0x8433280A20510A28,  // 0x00012208 
	0x1F1F102815DB0A1E, 0x0C1A150123171C29, 0x1F1F020A5001041A, 0x5205590A2E510A09,  // 0x00012228 
	0x101033282A59670D, 0x360152090621060F, 0x1F02020616390404, 0x1532327B20060621,  // 0x00012248 
	0x23101009151F1F3B, 0x06388C440F1A0C5E, 0x330202010D040904, 0x1515154E510B6823,  // 0x00012268 
	0x103C3C0932020122, 0x0C3C080506360D48, 0x10022801295C230A, 0x235A451F0D0B6801,  // 0x00012288 
	0x1F171F095209060D, 0x01447A150616510B, 0x17021906501C0116, 0x151525090D4E1E26,  // 0x000122A8 
	0x0145102152010616, 0x01178C080A227151, 0x1F38040C0B5B045E, 0x3115020B420D1E01,  // 0x000122C8 
	0x17021F1715280B0B, 0x16178C080A687153, 0x171A0A4C0B1C0104, 0x2A08280A20160B04,  // 0x000122E8 
	0x051F3C020919091E, 0x160915190A0D2053, 0x05020B48060D0215, 0x3410590A2E160A02,  // 0x00012308 
	0x320217021A3C091E, 0x16090802160D0A2E, 0x05190B0F22291708, 0x081F327B200C0D28,  // 0x00012328 
	0x2501280923102322, 0x0A1A52097B060671, 0x59040B0A0A0B1A33, 0x0876151C220A0B02,  // 0x00012348 
	0x4904191A0905230A, 0x6238DD2320060120, 0x3201166A0F0B0410, 0x081F061C220B0619,  // 0x00012368 
	0x2570190902051A06, 0x0C1A5A011E5B430A, 0x051906060F4E4C17, 0x7A081F1C1E0A0B09,  // 0x00012388 
	0x10CF041759100601, 0x1A091006290D010C, 0x0502060A0F0B0F1A, 0x1F08281C1C010621,  // 0x000123A8 
	0x102301250510010D, 0x0B1A02061E06530B, 0x1704060D4C283501, 0x2319320B4E09481F,  // 0x000123C8 
	0x0204391025174806, 0x50393C0F2E0D5367, 0x0201060D06280F23, 0x0219150A0A010B01,  // 0x000123E8 
	0x7309014510170F0C, 0x5C1A1A068216511C, 0x171A01500F041C09, 0x2119050D6D0B0F0A,  // 0x00012408 
	0x3909261710020B36, 0x0601610F1E0B4E9C, 0x1719010B0D090404, 0x2110250D6D670D16,  // 0x00012428 
};

u64 _spot18_room_3_tex_00012448[] = 
{
	0x5181498141013081, 0x9B45720318410001, 0x1841204151417245, 0x8B05934B498330C1,  // 0x00012448 
	0x49016A0330C13081, 0xC407D4CD49410001, 0x100130C35983938B, 0xC4CFBC8F498328C1,  // 0x00012468 
	0x61C1AC0538C14101, 0xDD4FD4C759410801, 0x0001390362078309, 0xB48FB48F728751C5,  // 0x00012488 
	0x59C3BC0128812881, 0xC48FE5D3D54930C1, 0x0001208151C58B8D, 0xA44FACD1938B6A87,  // 0x000124A8 
	0x51C3728108011841, 0x4941E65DB48D6203, 0x1041184131037B09, 0x8B8DAC979C1149C5,  // 0x000124C8 
	0x4981100110013081, 0x308193077A435181, 0x1041080120C36A89, 0x7B09A4516A893101,  // 0x000124E8 
	0x3101184100013081, 0x49011841104130C1, 0x2081080120C15185, 0x7AC99B8762050001,  // 0x00012508 
	0x6A85498308012881, 0x2881410182C3BCC7, 0x51810001208151C5, 0x9BCBA3CB62055183,  // 0x00012528 
	0x728572C708010801, 0x28819BD3AC51AC4B, 0xAB8359C159C52881, 0x8B09598361817243,  // 0x00012548 
	0x7AC5C4C949830001, 0x30C151859417BD19, 0xCD51B49159C330C1, 0x30C1410149418283,  // 0x00012568 
	0x82C5A38393011001, 0x104161C34101D599, 0xDE1FAC4D28811041, 0x414359C37A417A83,  // 0x00012588 
	0x72859B43CC015981, 0x000130C16A03A3C9, 0xC4CB8AC520810801, 0x414372896A017A83,  // 0x000125A8 
	0x51837A438A41AB41, 0x30C12041834B9309, 0x8A838A8320412081, 0x2881494359814983,  // 0x000125C8 
	0x494361C17A41A383, 0x7243594169414901, 0x8A4169C128811041, 0x288130C141415181,  // 0x000125E8 
	0x3901518372439B85, 0x59C338C149017A45, 0x4941594130C12041, 0x288130C1494130C1,  // 0x00012608 
	0x288130C159C36A43, 0x41012081184138C1, 0x390138C1284128C1, 0x4943414318414141,  // 0x00012628 
};

u64 _spot18_room_3_tex_00012648[] = 
{
	0xA0019801A081B881, 0xB081B841C881D941, 0xB8C198419881D0C1, 0xF841E841B001A841,  // 0x00012648 
	0x8841A041B841C841, 0xC841A041A841A841, 0x984198419081D101, 0xF081F001C041A041,  // 0x00012668 
	0x8001A001D081C881, 0xD0C1A8419841A881, 0x908188419081B0C1, 0xD8C1F081C8419801,  // 0x00012688 
	0x8001A801B881C881, 0xD081A08190819081, 0xA881A081904188C1, 0xA8C1D881B8419801,  // 0x000126A8 
	0x800190019841B081, 0xB881908188819881, 0xA8C19081808188C1, 0x90C1A881A0018801,  // 0x000126C8 
	0x7001780188019881, 0x98817881704190C1, 0xA881988188C19101, 0x9881984190019001,  // 0x000126E8 
	0x7001780198019841, 0x904170417081A081, 0xA0C1A081A0C1C081, 0xA041B041A0418801,  // 0x00012708 
	0x7001780198019841, 0x88417841788198C1, 0xA081A881B841D841, 0xC081B881C081A041,  // 0x00012728 
	0x90017801A041A041, 0x8001700170418881, 0x9841B041C801E841, 0xD081C081D041C041,  // 0x00012748 
	0x90018801A841A841, 0x8841780170418041, 0x9841B041F041F905, 0xF8C1D8C1B881B041,  // 0x00012768 
	0x90418801B001C881, 0xA081884188C1A081, 0x90419841E841F987, 0xF903E8C1B841A041,  // 0x00012788 
	0x98418801A001D0C1, 0xC881C041B0C1C901, 0xA8418841A881F881, 0xF901E8C1D041C041,  // 0x000127A8 
	0xA0419801A001C841, 0xD081D0C1C941D101, 0xA04188418841C081, 0xE081E0C1D041D841,  // 0x000127C8 
	0xB041A0018841C081, 0xB081D041E141D901, 0xA04180417841A881, 0xC881B881D041E001,  // 0x000127E8 
	0xA80198019841B8C1, 0xA041C0C1E181EA01, 0xB0C188417841C841, 0xD041B041C001D801,  // 0x00012808 
	0xA04198419841B8C1, 0xA041C8C1E141FA01, 0xD14198419041D801, 0xE801C801B041B841,  // 0x00012828 
};

u64 _spot18_room_3_tex_00012848[] = 
{
	0x789B96BBCCCCCCCB, 0xDB877655667789A9, 0xBBB9AA8888763376, 0x7778BAAADCBAAAA9,  // 0x00012848 
	0xBA97887677766788, 0xA978A555CA877666, 0x78779988988889A9, 0xA988AAAACCBBBCB5,  // 0x00012868 
	0x789463BCDDDBDDCD, 0xDA98766667779A9B, 0xCCBBB98999863467, 0x767899ACDCBABBAB,  // 0x00012888 
	0xBBA8987778878879, 0x98888456BA877667, 0x7788A9889998999A, 0xA99A99ABCCBBCCB6,  // 0x000128A8 
	0x8B486BCDDDDDDCCC, 0xB987666667889AAB, 0xBAABAA9999444333, 0x667889BBCBBABBBB,  // 0x000128C8 
	0xBAA9887878877779, 0x8778445569866667, 0x677A88899999A989, 0x889989ABBBBBB667,  // 0x000128E8 
	0x749A64CBBCCBCCBB, 0xA987766667779AAA, 0xAAA9A99888443333, 0x56779A9BBAA9BBAA,  // 0x00012908 
	0xABA8987777766767, 0x7777445558756666, 0x6778A98899989988, 0x7888A99AAAA9B666,  // 0x00012928 
	0x77B923CADDCACCBA, 0xBA98877677779559, 0xBAAAAA88A5433333, 0x37789AAABBA5BBA9,  // 0x00012948 
	0xBA99987388757766, 0x7884545554756766, 0x7779B598AAA79878, 0x5589A999BAA96666,  // 0x00012968 
	0x8BB473DDDCCCCDCC, 0xC99888787778A566, 0xBAABBAAA94443333, 0x47799ABCBB65BBBB,  // 0x00012988 
	0xA999A99447676788, 0x9884555554766777, 0x678566BBAA9A999A, 0x5449AAAABBAA6676,  // 0x000129A8 
	0x794B76CCCCBDCCCB, 0xBA88888788889556, 0x666AA99954443343, 0x34789AA66666BBAB,  // 0x000129C8 
	0xA999988443336778, 0x9544455554336667, 0x744655AAA9999999, 0x555555AABBA56666,  // 0x000129E8 
	0x84A562BBCBCCBBBA, 0xCA98777789898556, 0x6655588844433333, 0x3478955666559AA9,  // 0x00012A08 
	0xAA97777444433337, 0x9544444554335533, 0x455455A9A9998888, 0x55554455BBA55666,  // 0x00012A28 
	0x795792BACCCCDCAA, 0xBA9778778998ABB6, 0x6654544477767665, 0x674456566669BBAA,  // 0x00012A48 
	0xBA87977644334433, 0x4888887887653334, 0x56546A99A9999887, 0x894455556669BCBB,  // 0x00012A68 
	0x768B42BCCCCDECAB, 0xBA99877789A9BCA6, 0x6655547878887767, 0x77855656666ABBAA,  // 0x00012A88 
	0xAA99887743444434, 0x7888887887756434, 0x56555A9AA99AB978, 0x884555566BBACCBC,  // 0x00012AA8 
	0x76B475BCCBCDCBBB, 0xA997877889AABBC6, 0x6554497877786677, 0x7799B657666BCBBA,  // 0x00012AC8 
	0xA998887733344448, 0x7887887887766644, 0x55556BA999999988, 0x78456556BABACCCC,  // 0x00012AE8 
	0x7B4652BCBCBBCBBB, 0x988778889999BCBA, 0x5544987777663367, 0x7788BC6666AABBA9,  // 0x00012B08 
	0x9987998773334778, 0x7877954477656767, 0x4559BCAA99999888, 0x7784665AAA9ACCC6,  // 0x00012B28 
	0x868B54BCDCCABBAA, 0xB97788879A99CBA9, 0x5658997787333333, 0x8788CBB566AACA99,  // 0x00012B48 
	0xA9989A8784336778, 0xA987544448656767, 0x7559CCAAB9988877, 0x887465B9BCBAC665,  // 0x00012B68 
	0x77B597DDDDCCCBBA, 0xA88878899999BBBB, 0x6A99988884333333, 0x488ABCCCB6ABBBAA,  // 0x00012B88 
	0xB99AAA9984477789, 0xA984455444677778, 0x996CCCCBCB989778, 0x87859ABBBBAA6766,  // 0x00012BA8 
	0x7C4B49EDDECDDBBB, 0xA9888778999AABBA, 0xBB9A995444333334, 0x444ABBBCBBABBBB9,  // 0x00012BC8 
	0xAA9AAAA998777789, 0x5544444443334778, 0x9AACBCCBBB998777, 0x8879999AA5566666,  // 0x00012BE8 
	0x748472DDEDCBCBBA, 0xA9777777989AAAAA, 0xBCBA854444333333, 0x44455ABABABBBAA9,  // 0x00012C08 
	0xAA99AA9999876774, 0x5444444443333478, 0x9ABABBBBBA977666, 0x7768888855556566,  // 0x00012C28 
	0x789B96DCDCBADCA7, 0xA86677778999BCBA, 0xCBA9995443333333, 0x4448ABBABBCBCCA9,  // 0x00012C48 
	0xBA99AA9998868876, 0x5444444344434888, 0xBBAACCAABA867765, 0x6666888795557665,  // 0x00012C68 
	0x779463CDCDDCCCBA, 0x9977766999ABCBBB, 0xBAAA999844434334, 0x4589BBABBBBCCBAB,  // 0x00012C88 
	0xBBBAAAA999877889, 0x954454444444788A, 0xBBBCCCBAAA987767, 0x67678879AAB67666,  // 0x00012CA8 
	0x7B476BCCDCCDCBAA, 0x8877777799ABCCAB, 0xAAAAA88744443334, 0x459ABCCBBBBBCBAA,  // 0x00012CC8 
	0xAAABAA9998777779, 0x955555544444888A, 0xBBBCCCBBAA988767, 0x77777899AAB66666,  // 0x00012CE8 
	0x749A64BBBBCBCCA9, 0x87777778899ABBAA, 0xA999998773434434, 0x499ABCBBBBAABA9A,  // 0x00012D08 
	0xA9A9AA9877767768, 0x8995555444667779, 0xAABBCBAA99978766, 0x767788899AAA6656,  // 0x00012D28 
	0x77B923BBBCBACCB8, 0x987777789AA9BA99, 0xAA98998874334444, 0x5AA9BCBBBBBAB999,  // 0x00012D48 
	0xBAA9999777657676, 0x9A95555444766778, 0xBBBBBBBA9B978765, 0x77777888AAAA6555,  // 0x00012D68 
	0x8CB473DCDDCCDCAA, 0x88788888999BCBBA, 0xBA9A989898444444, 0x999ABCBBBBABBBAA,  // 0x00012D88 
	0xAB9AB99887666677, 0x9A9A555447667789, 0xBBBDDCBBCC998767, 0x77788898AA9BB666,  // 0x00012DA8 
	0x794C76CDDDDCBBA9, 0x777678889AABCBBB, 0xBA99898988444445, 0x99ABBBBBABABBBBA,  // 0x00012DC8 
	0xBAAAA99887665678, 0x99AA55544666778A, 0xBBCDCCBCCBA98777, 0x778888889AAAC667,  // 0x00012DE8 
	0x84A672BCDDDCBA87, 0x777667789AAABBBB, 0xBA88887788874488, 0xAAABBBBABBAAAABB,  // 0x00012E08 
	0xBAA9988887665677, 0x8AAA95448765679A, 0xBCBCBBBACC998777, 0x778788889A9AABB7,  // 0x00012E28 
	0x795892BBDEDACA77, 0x77767777AAAAABBC, 0xBA87887778779888, 0xAAAABBAACBAAABAB,  // 0x00012E48 
	0xCAA9988887656777, 0x89A9A987776679AA, 0xBBBBCBAABCA8A876, 0x77778978AAA9BCCC,  // 0x00012E68 
	0x769B42B77DDC6588, 0x77477774ABAA6BAB, 0xB55988348899488A, 0xA6BBCB6BCBA5BCBB,  // 0x00012E88 
	0x66BAA84897736778, 0x49AAA5988744899B, 0x6CCCD6ACCC7B9874, 0x77784499B659CDB7,  // 0x00012EA8 
	0x76B4746777666544, 0x4444444555556655, 0x5554544444444545, 0x6666666666656665,  // 0x00012EC8 
	0x5665544444333334, 0x4555555545445555, 0x6666765666665543, 0x3444455666557766,  // 0x00012EE8 
	0x7B4652BBCBBBA977, 0x76677778AAAAAAAA, 0x9998987788889999, 0xAAABBBBBCBBBBBA9,  // 0x00012F08 
	0x9AABA97777666667, 0x889999989887899A, 0xAABCDCBBCBB99876, 0x7677899AAAAABCBB,  // 0x00012F28 
	0x869B546676655543, 0x4333344466556665, 0x5554554444445644, 0x6555666677656665,  // 0x00012F48 
	0x5665654444333433, 0x4455554555445565, 0x6776776676544433, 0x3334455566556766,  // 0x00012F68 
	0x78B597DDDB6AA984, 0x77774489B65BBDB6, 0xAAA96A9894889956, 0xAAA66BCCD7BBBC7A,  // 0x00012F88 
	0xCBB6B99957667448, 0x8895AA995999B6CC, 0xDD7DDDD77A888477, 0x663889A5CBBB7DDC,  // 0x00012FA8 
	0x8C4B49DCCBAA9888, 0x8778788ABB9ABBBB, 0xCA9A9A989878889A, 0xAABBBBBCDDBABBBC,  // 0x00012FC8 
	0xCBABA99886666788, 0x8999A99AAB89ABCD, 0xEDCDDDDCBA877666, 0x6778899BBBAABCCD,  // 0x00012FE8 
	0x748472CBCCA9A987, 0x98778899BBAA9AAA, 0xBA98999899778899, 0xABABBBCCDCBBAAAA,  // 0x00013008 
	0xCBA9888776567677, 0x9AA999AABBA99ABC, 0xDDCCCCBBBB977655, 0x67777986BBABAABC,  // 0x00013028 
	0x789B96BABBAAAA98, 0x98679899CBBAAA98, 0xAA98AA9888787999, 0xBA9ACCCBEDCBBBA9,  // 0x00013048 
	0xBBA8987666556677, 0x9989A9AACCAAABBA, 0xDDBADCBAAA977655, 0x77678886CCBABCBA,  // 0x00013068 
	0x789463ACBBBAAA99, 0x8788888ACBAABA9A, 0xAAA9AA899887899A, 0xA9AABBBDEDCBCBAA,  // 0x00013088 
	0xBCA9977666556668, 0x989989ABCBAACCBC, 0xDDDCECACBB977665, 0x6678888ACBAACCBC,  // 0x000130A8 
	0x7B486ABCBBABAA88, 0x788788956AAAAA99, 0x9989A98889989999, 0x989AABCCDCCBBBAB,  // 0x000130C8 
	0x6659976655666668, 0x888888ABCAAABBBD, 0xCCCDCBBCCA544656, 0x5568789ABABABBBC,  // 0x000130E8 
	0x649A64BBAAA99997, 0x778799855AA8A998, 0x8888A98778787988, 0x89A9ABABBBB9BBAB,  // 0x00013108 
	0x5558877555555666, 0x7789989AAAA9BBAB, 0xBCCBCCBAA9433566, 0x55678889AAA9BBBB,  // 0x00013128 
	0x77B923BABAA8A987, 0x8878984555489A97, 0x9889A98789868878, 0xAAAABBBBBA99ABA5,  // 0x00013148 
	0x6554987556545665, 0x7889999AA999BBBA, 0xCBBBCCB9A6433355, 0x66779989AA99BCBA,  // 0x00013168 
	0x8BB473DCBAAAAA99, 0x988899555548A9A9, 0x888998A998787889, 0xA9AABBCBAAAAAAB5,  // 0x00013188 
	0x5554888765565667, 0x878899ABBA9ABBCB, 0xBBBCCCCBA5443367, 0x76789AAAAA9ABCCC,  // 0x000131A8 
	0x794B76BBB5AA9999, 0x9988555555549988, 0x8899884599787899, 0xAA5ABBBABA999955,  // 0x000131C8 
	0x5555446776666666, 0x488999ABBBAA6BBB, 0xCBBCBBA554433337, 0x86789AAAA65ABBBC,  // 0x000131E8 
	0x84A562BAB5599998, 0x9A88444555558888, 0x8998844498777889, 0xAA555AAABA988955,  // 0x00013208 
	0x5544436666666673, 0x488988ABCBAA56AB, 0xCCBAAA9444333336, 0x78898899665A9BBB,  // 0x00013228 
	0x795792AAB6556588, 0x9A84554555545988, 0x7974544498789878, 0x9A55665AAA985555,  // 0x00013248 
	0x5544433566664433, 0x47779AABBBB96666, 0x7CA9BA4444333323, 0x7889AA456659BCBC,  // 0x00013268 
	0x768B42BBB6667545, 0x9995555555645888, 0x544545448889A878, 0x9965555655A96656,  // 0x00013288 
	0x5544433663334434, 0x48899AACCBCB6667, 0x765AA94443333333, 0x67955555666BCCBD,  // 0x000132A8 
	0x76B374BBBB666555, 0x5559A98A99988545, 0x4444559988899888, 0x999565565555BBAA,  // 0x000132C8 
	0x9887775333333344, 0x7888AAADBBBBC666, 0x6555558766555566, 0x334555466BBBCCCC,  // 0x000132E8 
	0x7B4552BBBB656555, 0x5598AA9988878874, 0x4444559988889889, 0x88956665555ABAA9,  // 0x00013308 
	0x8876765633333334, 0x68879AABABABC765, 0x5554598765555567, 0x674455555AABCCCA,  // 0x00013328 
	0x868B54BBDB666555, 0xAA98BAA899878766, 0x44445699A9978878, 0x9984666566A9BA98,  // 0x00013348 
	0x9976676673333333, 0x987799A9BBA9B655, 0x5557997766545556, 0x777465556BA9CCBA,  // 0x00013368 
	0x77B597DCDDB6665A, 0xAA9AAA9558787777, 0x84455ABAAA988778, 0x988996666BAAAA9A,  // 0x00013388 
	0x5447778778633337, 0x777889ABBBABBB55, 0x5589997777333577, 0x78895666BBAACCBC,  // 0x000133A8 
	0x7C4B49EDDDC776AA, 0xAB9AA95554466677, 0x78855BBAAA989778, 0x8988955AAAAAAA95,  // 0x000133C8 
	0x5544788788774336, 0x6777889ABBABBB54, 0x5889987774333367, 0x8789AA56BBAABCBB,  // 0x000133E8 
	0x748472DDDCB6BA9A, 0xAA99544454436667, 0x78885BAAA9888777, 0x88788599A9A99854,  // 0x00013408 
	0x5544347887656335, 0x66677789AAABB955, 0x9988797443333337, 0x87778995AAAABAAB,  // 0x00013428 
	0x789B96DCDCB9CBA8, 0xB944554444434446, 0x8789ABAAA9868876, 0x87779999AAA56555,  // 0x00013448 
	0x5444444477646554, 0x76667888ABBABA98, 0xA877844343323333, 0x53779A98AAAABCBA,  // 0x00013468 
	0x779463CDCDCBCBAB, 0x6655554444444444, 0x789BBAAAAAA88878, 0x8989999BAA666554,  // 0x00013488 
	0x4444444446665556, 0x6777888ABBBCCA99, 0x9894444434333344, 0x4448A98AAABCCCBC,  // 0x000134A8 
	0x8B476BCCDCCCCB9B, 0xBB55554444444448, 0x78ABBBAAAA888867, 0x78999AAA9AB66544,  // 0x000134C8 
	0x4444444466665556, 0x6777999BBBBBBB99, 0x8887744343333344, 0x4599AA9AABBBCCBC,  // 0x000134E8 
	0x749A64BBBBBACCAA, 0xAA95554444334777, 0x88ABBA9898878877, 0x7789AAAA9A995544,  // 0x00013508 
	0x4444444666656656, 0x7789AAABAAAAA998, 0x8777763333334434, 0x8899AA9AAAAACCBB,  // 0x00013528 
	0x77B923BBBCBACCB9, 0xBB94554443433777, 0x9AABBA9989879876, 0x88889B99AAA95444,  // 0x00013548 
	0x5544444767656665, 0x88889AAAAAA9A987, 0x8876663323334444, 0x9999AA9AAABABBAA,  // 0x00013568 
	0x8CB473DCDDCCDDCB, 0xBA89544343347999, 0xABBCBAA9AA999988, 0x8889AAAAAA9AA955,  // 0x00013588 
	0x5545548787677777, 0x88799AAAA98AA998, 0x897876634434454A, 0x998AAAAABBABCCCC,  // 0x000135A8 
	0x794C76CDDDDDCCCB, 0xCA9A54443334789A, 0xABBCBAABAA999897, 0x88899AAA9A99A855,  // 0x000135C8 
	0x5555448878776678, 0x8878A9A99A89A988, 0x9988776444454559, 0xA99AAAAAABABCCCC,  // 0x000135E8 
	0x94A672BCDDDCCCBB, 0xCBA988434437689A, 0xCCBAA999AA998777, 0x88889999A9999995,  // 0x00013608 
	0x5554877787665678, 0x88889998AA899989, 0x9887777674444599, 0x9A99A99ABBAABBCC,  // 0x00013628 
	0x895892BBDEDBDCBB, 0xCB9888434447899B, 0xBBAAAA99AA979777, 0x87789989A99999A5,  // 0x00013648 
	0x5554777777656777, 0x78889A89AA999989, 0x8887777785545599, 0xA999AA9ACBBABCCD,  // 0x00013668 
	0x769B42BCDDEEDCBC, 0xCBAA987448879A9B, 0xBBBBBA9AAAB98767, 0x7789999ABBA9AA9A,  // 0x00013688 
	0x5558876777877667, 0x8889AAA9AA999A89, 0x889888788965599B, 0xA99ABABBCCBACDCD,  // 0x000136A8 
	0x76B474ACCDDDDCBB, 0xBBAA987777779A9A, 0xBABBBA9A99A98777, 0x78899AAABAAABA99,  // 0x000136C8 
	0x9987766777777767, 0x7889AAABAAA99A87, 0x8888997889AAAA99, 0xAA99ABBBCCBBCDCC,  // 0x000136E8 
	0x8B4652B66CDC77BA, 0xA95888737677499A, 0x956ABB5589984766, 0x7489AA59BAA5AA99,  // 0x00013708 
	0x4488773766737766, 0x4779A5AABA559878, 0x48889599895ABA95, 0x999955AAB66BCCC6,  // 0x00013728 
	0x869B546677767765, 0x6544443344445555, 0x5665765455444433, 0x4444555576656655,  // 0x00013748 
	0x5554544334434433, 0x4444555676555544, 0x5555665555556654, 0x5544555566566766,  // 0x00013768 
	0x78B597DDECCCDDDC, 0xBA88776678779AAA, 0xCCCCCBAAA8877877, 0x6679AAAACCBBBCCA,  // 0x00013788 
	0xBA99877787767788, 0x88899ABBDB99AA98, 0xAB9AAA9BB9AAAAAA, 0xA98999AABBBBCDDC,  // 0x000137A8 
	0x8C4B497777666676, 0x6544433333344556, 0x7667666554443344, 0x3334555677556666,  // 0x000137C8 
	0x7655444343333344, 0x4445555666555445, 0x5545555566554455, 0x5544555676566667,  // 0x000137E8 
	0x748472CCDD6BCBB6, 0xCB87336563388895, 0xCBBB699884766643, 0x777449AAC6AA9A6B,  // 0x00013808 
	0xBA95777647666348, 0x89949AAA6A987378, 0x984888855A889498, 0x9A4899A6CBBB5ABC,  // 0x00013828 
};

u64 _spot18_room_3_tex_00013848[] = 
{
	0x553E6E3F3F093133, 0x2791274DA04D2B55, 0x5557701717211A2B, 0x474646822E464646,  // 0x00013848 
	0x46466D2E46468246, 0x2222836E03354D4D, 0x3DC9573D57279292, 0x4F3D2B3E4DBEA01A,  // 0x00013868 
	0x27BB6E2D1D02312A, 0x1525445755352B12, 0x1A4F17091A263516, 0x3A222E2E2E2E2E2E,  // 0x00013888 
	0x46B6461D1D1E222E, 0x22207D07004D0E40, 0x124D3D27574F9A72, 0x2532612D2C113038,  // 0x000138A8 
	0x2F696E7C47109D24, 0x3449154457555557, 0x55571A26262B0A0A, 0x1616222E2E2E220A,  // 0x000138C8 
	0x2E6D2E1E2E6D4656, 0x5653566E30400347, 0x3F4755274425497A, 0x497A091D2D3E3F55,  // 0x000138E8 
	0x2B691D0A09052441, 0x2A7A8425443C4F61, 0x21571A2F26262B2B, 0x2B2B351666470A35,  // 0x00013908 
	0x1622942E2E223516, 0x2E221D1D470E3535, 0x1255917249345D34, 0x344157D2D269A038,  // 0x00013928 
	0x4DD2474027159D41, 0x4134083225252544, 0x444F095738383838, 0x1A3939264E2B0106,  // 0x00013948 
	0x2B360A16352B2B2F, 0x262B435555575744, 0x5A15494934952A5D, 0x4164571D351D3F40,  // 0x00013968 
	0x2B8E6E3E4F5A649D, 0x412A347A49498415, 0x2525441717173C17, 0x2117023809021909,  // 0x00013988 
	0x0909090921612161, 0x6117102525255A84, 0x490808345D5D2A2A, 0x4164213516B6D20E,  // 0x000139A8 
	0x0E8E8E3074499D9D, 0x9D4141DA5D5D5D7A, 0x498415846C151515, 0x15086C6C08080852,  // 0x000139C8 
	0x526C6C087A7A3434, 0x347A343434345D5D, 0x2A2ADA4141E8419D, 0x649D6130A1462D35,  // 0x000139E8 
	0x0790B369729A9D9D, 0x6441646441414134, 0x343434343434347A, 0x313131FC2AFC2A2A,  // 0x00013A08 
	0x2A2A2A2A5D95952A, 0x34345D5D2A5D2A2A, 0x4141416464649D9D, 0x9D643D2D6ED29447,  // 0x00013A28 
	0x8180B369A9252464, 0x4141416441414141, 0x2A5D343495343495, 0x953495955D952A34,  // 0x00013A48 
	0x7A34343434E18449, 0x5A5A6F5D5D5D5D5D, 0x414141414141419D, 0x9D64576ED2D21D1D,  // 0x00013A68 
	0x65B4B33FBB084141, 0x4141414141414141, 0x415D5D5D346F6F6F, 0x6F346F6F5D5D345A,  // 0x00013A88 
	0xAB49494949495A49, 0x49496F5D6F6F5D5D, 0xB241E7644141649D, 0x9D243D30B48E2D2B,  // 0x00013AA8 
	0x757C8E3E2B7A4141, 0x415DB2B25DB25D5D, 0x5D5D5D346F8A5A5A, 0x49AB49ABAB9A7274,  // 0x00013AC8 
	0x255A258A8A9A5A5A, 0xAB8A496FE16F6F6F, 0x5DB25DB24141E864, 0x9D2A923F6E693074,  // 0x00013AE8 
	0x4030691861FC4141, 0x5D5D5D5D6F6F6F8A, 0x4949ABAB5AF17272, 0x9F9F724444443D55,  // 0x00013B08 
	0x614F449F9F259F44, 0x255A5A5AAB8A8A49, 0x6F6F6F6F5D5D5D41, 0x415D743F3E3EA06F,  // 0x00013B28 
	0x723F69407A41E82A, 0x34498A8A8AF1F15A, 0x7274AEAEAE3D5791, 0x573D3D575757551B,  // 0x00013B48 
	0x1A21615561913857, 0xC9914FAE74447272, 0x725A8AAB8A8AE1CA, 0x2A5D4F4003BEA94F,  // 0x00013B68 
	0x26303E4D27244134, 0x8A5A72729F744F4F, 0x9127272F4D401257, 0x274D5555124D5536,  // 0x00013B88 
	0x2B552B4D612B2B12, 0x4D5538573DC93D27, 0x91AE74749F9F725A, 0x34349A141440A074,  // 0x00013BA8 
	0x2B6930553C244149, 0x7244747491C9C9C9, 0x5740471D2D004D1A, 0x214D12173D273816,  // 0x00013BC8 
	0x0A2F552604222B12, 0x2F4F3C27A9912F55, 0x27C93D9191919274, 0x4934490E033F3F57,  // 0x00013BE8 
	0x4D2D115715343472, 0x74929155403F2F4D, 0x47566D461E2B571A, 0x21382F575539040B,  // 0x00013C08 
	0x2B0A4E2E514A2236, 0x211A2F1BA07474A9, 0xADBB14A0554D1B91, 0xF18A9A40473F302B,  // 0x00013C28 
	0x2B3040275A3D91A0, 0x27A0BB2D692C2CBE, 0x79D579AAB5E9D2A8, 0xA8EBD579E9AA79AA,  // 0x00013C48 
	0xAA79AAD5D5D579A8, 0xD5A6D2B3693E8E80, 0x69B479B47C562D1B, 0x92923D123E4D3F44,  // 0x00013C68 
	0x273FBE2715250825, 0x3D91274D123D1340, 0x032D7D4A6801472E, 0x16222E1D2D465646,  // 0x00013C88 
	0x466D464646462E2E, 0x2E2243401BC927A9, 0xC935B61D2B264D92, 0x498AF11BADC9A06F,  // 0x00013CA8 
	0x3D3E1D4D17153434, 0x444F5557273F404D, 0x4D3E2E353A225646, 0x475446562D1D5646,  // 0x00013CC8 
	0x56561D1D2E464646, 0x2E4736124D27270E, 0x3F3530557474725A, 0x6F5D4F91A04DA074,  // 0x00013CE8 
	0xBB30304040342A2A, 0x34498A449F1B273D, 0x3F1D3F351D2D461D, 0x471D462D473B1D1D,  // 0x00013D08 
	0x46352B2B40473B35, 0x3B1A063555404057, 0x124D1B57447272D1, 0x5DB2024DA0BBA09F,  // 0x00013D28 
	0x0E303E3E4D7A4141, 0x5DD16F6FAB727474, 0xA91B55122F4D4022, 0x2B552B2B389C4047,  // 0x00013D48 
	0x35402B264D402B47, 0x354D2B2B40401B12, 0x4D559174725A8A6F, 0x41414447403FBB91,  // 0x00013D68 
	0x038E1D3F91844141, 0xD7CA5D6FD16F6F8A, 0x5A7474749F915755, 0x573D613857385555,  // 0x00013D88 
	0x4D405555552F1212, 0x125555552F552757, 0x91AE9F5A5AAB496F, 0x41B24FA9401D3E12,  // 0x00013DA8 
	0x352D304038154141, 0x41B25D5D5D5D5D6F, 0x49ABAB8A5A5A729F, 0x44449F444F4F4F4F,  // 0x00013DC8 
	0x573D3D3D613D3D4F, 0xAE74449F9F727272, 0x9A5A496F6F34CA5D, 0x415D84A047303055,  // 0x00013DE8 
	0x123E2C1D121541E7, 0x646464E741B25D5D, 0x5D6F6F6F6F6F4984, 0x5A5A5A9A25259A72,  // 0x00013E08 
	0x9A9A2572259A5A84, 0xAB84494949E16F6F, 0x6F34345DD7B24141, 0x4141571D1D303027,  // 0x00013E28 
	0x2B40BB1D2B9A6464, 0x6464646464414141, 0x5D5D5D5D5D5D5D34, 0x3434959534343434,  // 0x00013E48 
	0x5D5D2A2A95955D5D, 0x5D2A2A5DDA5D4141, 0xB241414164646464, 0x644155A035303F3D,  // 0x00013E68 
	0x553E3F3061FC9D64, 0x6464646464646464, 0x6464646464644141, 0x41414141414141DA,  // 0x00013E88 
	0x2A2A2A41DA414141, 0xDADA41414141E8E8, 0x416464649D9D6464, 0x644157BB403F3061,  // 0x00013EA8 
	0x4F696E7C61416441, 0xB2B2416464414141, 0xE841DA414195087A, 0x3495953434343434,  // 0x00013EC8 
	0x34497A7A349534E1, 0x7A343495955D2ADA, 0x4141414141414164, 0x64645A403547BE08,  // 0x00013EE8 
	0x74BE69353DE85D5D, 0x5D955D5D5D34346F, 0x6F4934495A25AE3C, 0xAE4F3C3C613C3C3C,  // 0x00013F08 
	0x44443C4F61176161, 0x442525845A1549E1, 0x3434952A2A2A2A2A, 0xE76495A0300EBE49,  // 0x00013F28 
	0x72308E304D9A49E1, 0x4949E15A72449F44, 0x44443C4F211A2626, 0x2B2B2B0A352B360A,  // 0x00013F48 
	0x362B35362B471D47, 0x122F551A38174444, 0x4425251549490834, 0x41647ABE14BBC549,  // 0x00013F68 
	0x742D30301415AB5A, 0x9A5A253D551B4D4D, 0x2B2B35B90A161616, 0x1622223A2E471D1D,  // 0x00013F88 
	0x1D1D1D352E568335, 0x402D46470E4D4D55, 0x4D38213C449A4934, 0xB22AFCBE74C9BB5A,  // 0x00013FA8 
	0x4D944013721525AE, 0xAE743DA91B0E3F47, 0x472D160B1E1E2016, 0x2B2E2E352E564647,  // 0x00013FC8 
	0x4756473B1D542E47, 0x46661D4747223512, 0x0335554D27445A49, 0x8A84A355AEA0AD5A,  // 0x00013FE8 
	0x91403F1DA9576157, 0x27403E81B390E6B3, 0xA8E9B5EB79D5D579, 0xB5D579E9AAAAAAB5,  // 0x00014008 
	0xD5D5A879AAAAA8D5, 0x6EB4B479D5AAB390, 0xFF8E2C652C11BBC4, 0xAD44324F3D57AD72,  // 0x00014028 
};

u64 _spot18_room_3_tex_00014048[] = 
{
	0xE49BE417E4DFCA89, 0xDB4FDB91A207B249, 0xB249B249BA89E4DF, 0xE4DFE4DFE4DFE4DF,  // 0x00014048 
	0xE4DFE4DFDB91E4DF, 0xE4DFE4DFE4DFDBD5, 0xE4DFDACBDB4DDB93, 0xDB91E4DFE4DFAA49,  // 0x00014068 
	0xE459B24991C76945, 0x91C7718528836985, 0x91C7614559057987, 0x69859A072883AA49,  // 0x00014088 
	0xDACBDB4F7987E49D, 0xE41791C7DB4FC289, 0xD2C9D2C9B249BA89, 0xC289C289B24989C7,  // 0x000140A8 
	0xDB0D91C7798789C7, 0xB249614528836145, 0x7185490340C36145, 0x92077185C289AA49,  // 0x000140C8 
	0xC28992072883DB51, 0xCA89490381C7A207, 0xA247698561457985, 0x79857185510538C3,  // 0x000140E8 
	0xDB4F91C79A07BA89, 0xD2CB89C749037987, 0xA207510359056145, 0x89C7490359457185,  // 0x00014108 
	0x7185594538C3E49D, 0xDB5140C389C77185, 0x81C789C751034903, 0x89C7AA4981C75905,  // 0x00014128 
	0xE4DFB2499A0789C7, 0x91C7698540C36145, 0xA207510538C35945, 0x694540C340C35905,  // 0x00014148 
	0x590528832883E417, 0xBA89308381C781C7, 0x7987694538C338C3, 0x7987CA8981C73083,  // 0x00014168 
	0xDBD5C28981879207, 0x7985614538C338C3, 0x718540C328835105, 0x308338C349036945,  // 0x00014188 
	0x798520832041DACB, 0x6145080159057185, 0x5905288330837987, 0x51057185B2493083,  // 0x000141A8 
	0xDB93A207920781C7, 0x91C7510330835103, 0x7185490340C340C3, 0x5905718559453083,  // 0x000141C8 
	0x4903080100016945, 0x1041000171855905, 0x30835103490391C7, 0x91C781C7AA492883,  // 0x000141E8 
	0xCA8989C7718589C7, 0x71852883208140C3, 0x510340C338C338C3, 0x614540C338C32883,  // 0x00014208 
	0x2083080100012041, 0x1041000191C75103, 0x1041490340C36945, 0x9A07798759453083,  // 0x00014228 
	0xE4DF4903590581C7, 0x4903510340C36145, 0x7987490318412883, 0x40C32041DB4FD2CB,  // 0x00014248 
	0xD2CBAA4951051841, 0x2041000140C32083, 0x1041184130837987, 0x6145694510417185,  // 0x00014268 
	0xE459A2074903BA49, 0x7987594540C35105, 0x798740C330832041, 0xCAC9B249DACBD2CB,  // 0x00014288 
	0x718589C7A2077185, 0xAA49000130834903, 0x2883000138C37185, 0x40C3798761457185,  // 0x000142A8 
	0xE4DFCA89694589C7, 0x9A07490328835105, 0x510530833083A207, 0xDB0DDB0DE459E4DF,  // 0x000142C8 
	0xDB4F8187A2076145, 0xDBD3BA8920815905, 0x1841000138C35945, 0x5105490328836945,  // 0x000142E8 
	0xE4DFD2C9B249A207, 0x5105308338C36145, 0x38C338C3CA8981C7, 0xDB0DA207E4DFE4DF,  // 0x00014308 
	0xE4DFDB93E4DF89C7, 0x7985D2C9BA893083, 0x3083104138C37185, 0x81C73083AA4991C7,  // 0x00014328 
	0xE4DFB24989C7A207, 0x81C7614540C36145, 0x6945E4DFE459B249, 0xE49DE419E4DFBA89,  // 0x00014348 
	0xDB91DACBB249A207, 0x6945AA49DB4FDB4D, 0x2883104130833083, 0x38C35105510540C3,  // 0x00014368 
	0xE4DF614571855945, 0x4903308338C37987, 0x6145DBD5E419AA49, 0xDB4FDB4FE4DFDB4F,  // 0x00014388 
	0xDB0D91C7B24989C7, 0x51056945BA49CA89, 0x1841080140C33083, 0x38C340C359052083,  // 0x000143A8 
	0xE4DF288369854903, 0x2883208128837985, 0xDB91DB93E419A207, 0xA247C289E4DF2883,  // 0x000143C8 
	0x20410001BA897185, 0x40C35945C289BA89, 0xC289204128831841, 0x3083510330833083,  // 0x000143E8 
	0xE4DF3083694538C3, 0x510540C338C340C3, 0xE45BE4DFD2CBDB4F, 0xDB4FCA8949031841,  // 0x00014408 
	0x0001104128837185, 0x40C389C7DB4FA207, 0x7985080128832883, 0x6145510359451041,  // 0x00014428 
	0xE4DF6145698540C3, 0x510538C340C34903, 0xDACBE459E4DFDBD5, 0xDBD5DACB38C30001,  // 0x00014448 
	0x0001000108017985, 0x49039207920789C7, 0x6945000140C338C3, 0x8187288320410001,  // 0x00014468 
	0xE4DF89C7590540C3, 0x6145594540C338C3, 0xDACBDBD5DBD5E45B, 0xDB51DB4D49031041,  // 0x00014488 
	0x18410001000189C7, 0x510579855103AA49, 0xC289510530832883, 0x7987288359053083,  // 0x000144A8 
	0xE4DF9207698581C7, 0x81C7510538C338C3, 0xAA49C289DB4DB249, 0xC289AA49CA890001,  // 0x000144C8 
	0x080100019207DB91, 0x6145A2076945D2CB, 0x89C740C359052041, 0x7185208138C36145,  // 0x000144E8 
	0xE459718581C77987, 0x6945288330831841, 0x2041DB4FDB918187, 0xA207C289DB4F7985,  // 0x00014508 
	0x81C789C79A07E417, 0x7987AA4981C79A07, 0x5905490338C32041, 0x698538C359456145,  // 0x00014528 
	0xE4DF510571854903, 0x6945590569855945, 0x28839A079A07B249, 0xA207C289DB917185,  // 0x00014548 
	0xA207C289B249E4DF, 0xC289694581879A07, 0x38C35905490340C3, 0x59053083614538C3,  // 0x00014568 
	0xE45B490369857987, 0x69455105590540C3, 0x20412081CA89CA89, 0xA247E49BDBD589C7,  // 0x00014588 
	0xDB91DACB81C7A207, 0xDACB81C769856985, 0x6945614569856945, 0x38C3104161450801,  // 0x000145A8 
	0xE415490359455945, 0x6985694551053083, 0x38C359453083C289, 0xCA89C289E45991C7,  // 0x000145C8 
	0xDACBDB9192076145, 0xCA89DB0D08016145, 0x5103614561455103, 0x38C3308328830001,  // 0x000145E8 
	0xE49B490371854903, 0x61455103510340C3, 0x79876145288338C3, 0xE4DFB249E4DFAA49,  // 0x00014608 
	0x89C7DB93E49D81C7, 0x7985208149036985, 0x6945718561454903, 0x4903308330830001,  // 0x00014628 
	0xDACB614559054903, 0x40C3590549033083, 0x6145614540C35945, 0x38C31841E4DFAA49,  // 0x00014648 
	0xAA49DB4FD2C91041, 0x288338C340C36145, 0x5103614549036945, 0x38C3288318410001,  // 0x00014668 
	0xDB91308361456985, 0x694538C340C340C3, 0x40C3510540C36145, 0x4903288359052041,  // 0x00014688 
	0x5105288318412041, 0x490338C361455103, 0x40C3614561455103, 0x38C3184120410001,  // 0x000146A8 
	0xA247BA4961456145, 0x510338C359055905, 0x490338C328836145, 0x40C338C361456145,  // 0x000146C8 
	0x5905208340C338C3, 0x308340C359054903, 0x3083718561454903, 0x4903204140C32883,  // 0x000146E8 
	0xC289BA8971856145, 0x4903490351056145, 0x71855905308340C3, 0x40C338C338C34903,  // 0x00014708 
	0x3083308338C338C3, 0x2883694538C340C3, 0x40C3614571856945, 0x7185080138C31041,  // 0x00014728 
	0xDB0DD2C961457185, 0x6945718571856945, 0x6945718540C34903, 0x38C3510540C338C3,  // 0x00014748 
	0x594540C338C338C3, 0x38C3510338C35905, 0x59051841208338C3, 0x18411041104140C3,  // 0x00014768 
	0xE45989C740C340C3, 0x5103698571856145, 0x40C3510551055105, 0x5945694561456145,  // 0x00014788 
	0x7185510551052883, 0x2883204128832883, 0x3083288330834903, 0x38C3288328830001,  // 0x000147A8 
	0xC28940C361459207, 0x81C740C3510540C3, 0xA207CA899A077985, 0x7987BA89AA496145,  // 0x000147C8 
	0x0001000100015105, 0x3083510371857185, 0x698538C3718591C7, 0xA247308308011041,  // 0x000147E8 
	0xE4DF288328832083, 0x1841184100010001, 0x0001288328830001, 0x28836985A2076945,  // 0x00014808 
	0x590538C320834903, 0x0001080140C31841, 0x1041208371856145, 0x7985000100010001,  // 0x00014828 
};

u64 _spot18_room_3_tex_00014848[] = 
{
	0x010102390106011F, 0x0928378797535B8D, 0x4816F65E201E670B, 0x0D200A87821E0104,  // 0x00014848 
	0x1E0B0206060A4301, 0x2828018787821E1C, 0x7E4E5B2801016A6B, 0x220D53875346290F,  // 0x00014868 
	0x1E06023616160B4E, 0x1A040C296767460B, 0x090A16040437375F, 0x0A0D6D9B0D2E1C06,  // 0x00014888 
	0x0B06390A160B7B1E, 0x06010A29201C2E0B, 0x0406160F010F5C0A, 0x0A1651DC0D0D9C26,  // 0x000148A8 
	0x0A39260A0B0D205B, 0x1616220D675B0D5B, 0x0C06160B1A0B1E16, 0x0A1651DC82824301,  // 0x000148C8 
	0x062606390A0B2916, 0x1E461E0D161E820F, 0x040A2E0B431E0D7E, 0x040B5B4A9B974C01,  // 0x000148E8 
	0x0F4301190A161E1E, 0x20510D160B51970B, 0x0906770B091E0A09, 0x0D7720204AB54843,  // 0x00014908 
	0x06231A1A16060D46, 0x420F0D0D6B1EB542, 0x01060D0F0C6D0410, 0x0D0A6DD051565B01,  // 0x00014928 
	0x061A230C0D061E53, 0x1C01162929205687, 0x37066B0B060D0201, 0x670A200A94976723,  // 0x00014948 
	0x060602015B390D0D, 0x0B621E0D0C1C2251, 0x02010B292B222326, 0x0B390B82979B5B09,  // 0x00014968 
	0x262B10040B39160D, 0x0F0F1E290A1C228D, 0x23040D1604674802, 0x0A390D298D4A1C28,  // 0x00014988 
	0x1A0633095B231653, 0x0A0B1E510F1C1E42, 0x098F161C0B6D1A02, 0x01020D375F711E61,  // 0x000149A8 
	0x441F59090B040D53, 0x5F5E6D8D0B1C1C6D, 0x020C168920461709, 0x0402220D23012E1A,  // 0x000149C8 
	0x57021F090F011651, 0x09011E675B0B4E20, 0x5901220D771E177E, 0x06231620A5624E01,  // 0x000149E8 
	0x210902214C0C0B4E, 0x3C041C510D0A0AAC, 0x1F011E1E0B0D2109, 0x0B045B6D19620C04,  // 0x00014A08 
	0x0902020904010B29, 0x21090D0D160A6A1E, 0x025E0D0D5F4E1F21, 0x0F010B0D23370419,  // 0x00014A28 
	0x0902091A16485C50, 0x04280D480F0A0F0B, 0x280B0D0D1F7E4509, 0x4C0C0A4809041076,  // 0x00014A48 
	0x26020904166A5C50, 0x230286480B36060C, 0x380B2929337E231A, 0x04010A4E10023C09,  // 0x00014A68 
	0x0AB90202700C500B, 0x09020A890B060F0C, 0x190F1C1C1F012319, 0x16480C4805593219,  // 0x00014A88 
	0x160A3C21040C5C0A, 0x091F36290676040C, 0x234E5B5B17192823, 0x166A4C0F3232D81F,  // 0x00014AA8 
	0x670A171A060CA74C, 0x2833060B0F1A374E, 0x0A43290B33591909, 0x700C5C0F25101928,  // 0x00014AC8 
	0x205B09260B0F5E5E, 0x17445E0B06435F5B, 0x010C1C5B17052828, 0x040C5C0F25101F04,  // 0x00014AE8 
	0x715B041A3723190C, 0x3C320406370F010D, 0x700C0B0D23050219, 0x060CA74C08DD1523,  // 0x00014B08 
	0x6D67232819153737, 0x1F15020C0606010D, 0x625C0A0B37600402, 0x0B0F5E5E32493C09,  // 0x00014B28 
	0x200D232833320F37, 0x17521F0F0A1A014E, 0x060F0A4E04604821, 0x3723190C32490206,  // 0x00014B48 
	0x716B390115450F4C, 0x1F08100F0F09390A, 0x060B1C1C19600C19, 0x1A091A1F1052190D,  // 0x00014B68 
	0x6D53010632880C26, 0x1F08100637023916, 0x350B480B17523762, 0x391A28055208190A,  // 0x00014B88 
	0x6D517301D8885C21, 0x091533010417010A, 0x0B0B0C1C09087350, 0x5F382815498C230F,  // 0x00014BA8 
	0x6D0D060C52284802, 0x2F3205381928044E, 0x0D0F0C0A02BA5E16, 0x500101D85208090B,  // 0x00014BC8 
	0x6D22160F05194C48, 0x1052250445191916, 0x6B0B0F4E19174E1C, 0x6A0106321015090F,  // 0x00014BE8 
	0x82710A0133044C4C, 0x332510431019044C, 0x0B291C290419375F, 0x0A73015B0231C30D,  // 0x00014C08 
	0xB029011A09044806, 0x1025331A1F8F0401, 0x0D160B1E17023701, 0x0F5F0C061F312922,  // 0x00014C28 
	0x8D37043745044C9C, 0x1025100402041904, 0x161C891E15100123, 0x480A0F011F310D2B,  // 0x00014C48 
	0x670145881F064C06, 0x1059190973060A0B, 0x16890B1C5245430F, 0x0C0A0104027A6716,  // 0x00014C68 
	0x040423431F62014C, 0x3225042516485E01, 0x220D36866C190C16, 0x011A260419080D5B,  // 0x00014C88 
	0x015F2606841F4C06, 0x1525023C16011A23, 0x2E1C5F0C08190D22, 0x0104260919520B48,  // 0x00014CA8 
	0x0648375E3C025F0B, 0x6C1502850A060A0D, 0x0B4E010652092967, 0x4323284510080B1E,  // 0x00014CC8 
	0x1A4C370F17040401, 0x6C15174C4E0F5B29, 0x4C4806B908020B67, 0x0B09330210086B2E,  // 0x00014CE8 
	0x1F19014E1F062109, 0x6C2510166D0B0D06, 0x010F480A5D5A0C1E, 0x0F1A1502176C202E,  // 0x00014D08 
	0x0504430B02734504, 0x32326C6A511C2239, 0x4C06065E34520951, 0x50090817336C6768,  // 0x00014D28 
	0x1F060F0B19736004, 0x05DB080F1E1C7701, 0x2E040A0B088C446D, 0x061A081005150C48,  // 0x00014D48 
	0x05060B160D0D3C1F, 0x5ACD10012E296D01, 0x4C04220D0808051E, 0x26272A1F05250104,  // 0x00014D68 
	0x02481616770B2815, 0x10250876290B0B0C, 0x010F1E0A6C7A1567, 0x061A412833253719,  // 0x00014D88 
	0x170106060F501908, 0x1025451F0D1C2920, 0x4C5E0B6A088C0867, 0x0638490910320C37,  // 0x00014DA8 
	0x2538010FA70C6208, 0x313425090D0B2053, 0x7E060C4E498C6C22, 0x2609150402440601,  // 0x00014DC8 
	0x05022816360A5005, 0x3115020B422287AC, 0x260F010F5208325B, 0x2309340102250C5C,  // 0x00014DE8 
	0x334517166A6A1C23, 0x8433280A20515142, 0x096A0A0D05150929, 0x01213C0176330A22,  // 0x00014E08 
	0x1F02170A50160A43, 0x5205590A2E510620, 0x1F0D0D0D15DB0A1E, 0x061A150123171C29,  // 0x00014E28 
	0x1F091706160D0119, 0x1532327B20010971, 0x10290D5B2A596706, 0x0A0152090621060F,  // 0x00014E48 
	0x332145010D480904, 0x1515154E51282387, 0x21485B0DA31F514C, 0x0D388C440F1A0C5E,  // 0x00014E68 
	0x10020201295C230A, 0x235A10061E28239B, 0x05060D67311F1E4C, 0x0A3C080506360D48,  // 0x00014E88 
	0x171F0206501C0116, 0x1515100D51060C4A, 0x0501221E2A02160A, 0x06447A150616510B,  // 0x00014EA8 
	0x1F38040C0B5B045E, 0x3115100F0C0A0B20, 0x10026D1E2A280F6A, 0x06178C0804437151,  // 0x00014EC8 
	0x171A0A4C0B1C0104, 0x2A081706A7060F22, 0x1002202E2A280D0A, 0x3B178C0823067153,  // 0x00014EE8 
	0x05020B48060D0215, 0x34100B5B22015022, 0x0501462E17190916, 0x3B17050401012053,  // 0x00014F08 
	0x05190B0F22291708, 0x081F16500DCF5C0D, 0x32232E2219310967, 0x0A216C8F06430A2E,  // 0x00014F28 
	0x59040B0F4E0A172A, 0x08760B0F16450F29, 0x2521221E06522367, 0x2B23250606010671,  // 0x00014F48 
	0x32010A0FA7621F2A, 0x081F062E8237D071, 0x081A0A2E3810170A, 0x6209252B06010120,  // 0x00014F68 
	0x05197304040C8531, 0x7A081F7B20060D82, 0x1521436D1A022306, 0x0C09440B0A01430A,  // 0x00014F88 
	0x05230C01190F7631, 0x6C0828681E0D8246, 0x2506066709190D01, 0x1A09170F066B010C,  // 0x00014FA8 
	0x09041A020545592A, 0x0852391620672E20, 0x8626090F0409061E, 0x0101320A170F6215,  // 0x00014FC8 
	0x030A061F19730625, 0x134F1422208D0D3F, 0x120010162B1A6A01, 0x3314253921011227,  // 0x00014FE8 
	0x210E4345260614C7, 0xC4C614110E062613, 0x3F183D0F204E162B, 0x141327094D031313,  // 0x00015008 
	0x7500002C13401413, 0x81141B271B111411, 0x073527690E120314, 0x0E1403112C2F1226,  // 0x00015028 
};

u64 _spot18_room_3_tex_00015048[] = 
{
	0x3A00000003031303, 0x3014114D133D401B, 0x4B7C001D4700D427, 0x13C614121311003F,  // 0x00015048 
	0x03188B124B300000, 0x0713131314130311, 0x570E0000400314C7, 0xC4C6141114141313,  // 0x00015068 
	0x073527690E120314, 0x0E1403112C2F1226, 0x7500002C13401413, 0x81141B271B111411,  // 0x00015088 
	0x14553D5721142B3E, 0x1413121300121212, 0x5721211B27C4AD1B, 0xA20011142C301107,  // 0x000150A8 
	0x030E0E001B1B6907, 0x11000707001B1200, 0x00001311141B1413, 0x2C3E071100001D03,  // 0x000150C8 
	0x0603032CB83E1813, 0x3E00301D4B304065, 0x1465551413111440, 0x300713133F180707,  // 0x000150E8 
	0x042F3E1207181127, 0xBE186E07031D3E11, 0x111413AD1B001300, 0x031B1214114D271D,  // 0x00015108 
	0x070707001869003B, 0x182D547C90303F13, 0x11148B2C110E033F, 0x1300001800131B1D,  // 0x00015128 
	0x1100110000004769, 0x0058182D213E3503, 0x1712B82F1E352E3A, 0x140314131400112D,  // 0x00015148 
	0xC403182D54030E2D, 0x1D00076592031314, 0x00131B400D685403, 0x1D163B3F65008B13,  // 0x00015168 
	0x10271B273D610003, 0x11111303122F1114, 0x2F143D5AAE74CD44, 0x4F3D8ADF5A101411,  // 0x00015188 
	0x611B030E12001818, 0x0E111B2F3955215F, 0x163D0E4FA20E2761, 0x49EE72CA3343120E,  // 0x000151A8 
	0x1A3803030365073E, 0x00110E0313071307, 0x663838127F6E5336, 0x0215615536070754,  // 0x000151C8 
	0x11D32C07001D1412, 0x07381B12542D5658, 0x663521170A54220A, 0x123D25382B664656,  // 0x000151E8 
	0x2C400E03003F1203, 0x0003030E00071856, 0x6B472B101755264C, 0x363849210A16547D,  // 0x00015208 
	0x1314550E472B3B22, 0x6B1B2C130E2F3A0A, 0x11131314140A4336, 0x68164F14472D5422,  // 0x00015228 
	0x032B61353B0B2C03, 0x1D0003470078351D, 0x561600033B3B0B3B, 0x6B540E12034B6640,  // 0x00015248 
	0x2C400E3B4D2B548E, 0x130E40133007C13E, 0x4A3A06233B4D3668, 0x54302F6E071D471D,  // 0x00015268 
	0x001202260B121100, 0x0003130312126E35, 0x2B35091F260B2F36, 0x681661271257362E,  // 0x00015288 
	0x2B021F033F2C133F, 0x0E3826040616462B, 0x2F2B023C0A0D3B2F, 0x2626170609356866,  // 0x000152A8 
	0x262857033A6B382F, 0x1225231001B90A26, 0x2B2609553B166B38, 0x1B2610091F484703,  // 0x000152C8 
	0x38042F6B3B163B03, 0x0EDB251532051525, 0x2F1335003A3B163B, 0x032F2515326114FA,  // 0x000152E8 
	0x2F21231A0210121B, 0x558C1510213B2B3D, 0x00003E1800032F81, 0x2C0E1327400E3A12,  // 0x00015308 
	0x47212574552B362F, 0x4FDD32023A202E00, 0x543B1814A9001307, 0x573F303F9E30222E,  // 0x00015328 
	0x982621662D475E2F, 0x123823052E531E2D, 0x807807180711032C, 0x0E12180000303E3A,  // 0x00015348 
	0x58353658661D3A14, 0x003A1227120E0D16, 0x2E83353B47000E4B, 0x0E3F076530000707,  // 0x00015368 
	0x2E3536661818400E, 0x27110E14122D6E2E, 0x2E7B36031D008B03, 0x000707B40378072D,  // 0x00015388 
	0x221D363A000E2F02, 0x2F0E00403A2EB57C, 0x2E22223607751407, 0x0727000E03030066,  // 0x000153A8 
	0x7F2D1702030E4055, 0x39091B1A0A2E2E00, 0x553E3F1807120738, 0x213D0E0E143E0018,  // 0x000153C8 
	0x461D3D09471D0A2F, 0x2B4343041D463F14, 0x1807470712120E26, 0x4FA238392646003A,  // 0x000153E8 
	0x2E06682E22B4802D, 0x462E351A1EB51D07, 0x2700000714271180, 0x307F221201536E22,  // 0x00015408 
	0x06023699787C0756, 0x538394172EA80E03, 0x0047001212120078, 0x78DC83B928834B12,  // 0x00015428 
	0x0123251A2235121B, 0x0E2E2B106E4B0769, 0x2D47351B3D1B5422, 0x2D1E221A61994726,  // 0x00015448 
	0x3621250203001413, 0x4D0307170E350E2B, 0x04662B14142F0A43, 0x5E167C36171D3A35,  // 0x00015468 
	0x4F5A1A542D40110E, 0x0000184D388E073E, 0x3E404F28220E5422, 0x3B7B801D25613B3B,  // 0x00015488 
	0x6F492B2D7854001B, 0x36221307030E1203, 0x4B03122F77680730, 0x1D16479234343D1B,  // 0x000154A8 
	0x174925271B123F0E, 0x1392921227000311, 0x00001827914F1744, 0x572F384F8C251B1B,  // 0x000154C8 
	0x3C12584B00142149, 0xD15A6F491A0E0300, 0x54614949924D3D4F, 0xCE443D172543402B,  // 0x000154E8 
	0x094F033A78530A02, 0x348C61263A2D001E, 0x4602055754002E36, 0x8508153D36540754,  // 0x00015508 
	0x3538440F1D543B0E, 0x271B122B665456B4, 0x7B353D4443274D2F, 0x2FA25A382B661856,  // 0x00015528 
	0x003A030018000312, 0x1B36472D4B074A56, 0x6B3A360000A2ED27, 0x122F49020A47544A,  // 0x00015548 
	0x07540E2D1D0E121B, 0x0E072F473A2D543B, 0x471D2B0303032F27, 0x432F251A3A182E3B,  // 0x00015568 
	0x75030E2D1D071203, 0x1D07002D031D0E58, 0x2D2D1B12030E1236, 0x351617030E14122B,  // 0x00015588 
	0x03120E031207363A, 0x1B0E1D0E1D03473A, 0x2D16011B3512033A, 0x3B580E1B27141B12,  // 0x000155A8 
	0x1B12070E270E0E0E, 0x2F00072F0200544B, 0x473509211B852703, 0x0303030E2B0E3B3A,  // 0x000155C8 
	0x1218070E3B3B0312, 0x120E551B034B660E, 0x1B2B1702362F0E2D, 0x1D1D0E1B27121D66,  // 0x000155E8 
	0x2628470E36470312, 0x2F2F0E27030A430E, 0x2B39282627275803, 0x1D031B0E1B1B0E0E,  // 0x00015608 
	0x0923350003121B4D, 0x0E030E0E3F212515, 0x4F0904120E0E0203, 0x1D0E121B1B03140E,  // 0x00015628 
	0x2F21030300187800, 0x0300430012540A21, 0x1B2F21362F4DB43A, 0x1D0E1B4B4D12140E,  // 0x00015648 
	0x22382F4700003503, 0x2F2121233A202E54, 0x660336000E0E0909, 0x1212552F3A03072D,  // 0x00015668 
	0x581238782D470621, 0x2826361222531E2D, 0x80564312542D3A36, 0x3B120E352618662D,  // 0x00015688 
	0x7C353658662E3672, 0x436E3A03467C0D16, 0x22665478542E472B, 0x38360717266E6654,  // 0x000156A8 
	0x2E3536984678384B, 0x03225447464A6E2E, 0x2E2E0E354A467838, 0x154D54232B536E18,  // 0x000156C8 
	0x221D06362B09610E, 0x2E890D543A2E7D75, 0x2E221D2B362B213C, 0x85212F192B164678,  // 0x000156E8 
	0x7F2D1F021721431D, 0x800D0D16221D5483, 0x681E200A04170902, 0x1A39851726472E98,  // 0x00015708 
	0x46220368450D1E7C, 0x7D200B0F1E666B56, 0x581E0D160A0A6B0A, 0x26360639266E2E0D,  // 0x00015728 
	0x1E060D7760772080, 0x20631C20290D2220, 0x2042422963200D4A, 0x2D56542B39538316,  // 0x00015748 
	0x56421C4204424279, 0x1C631C201E56164A, 0x4A42290C42531E7F, 0x1C534A2B2899B41A,  // 0x00015768 
	0x202063200C29290F, 0x85867D204A0D421C, 0x1C0D20051C292942, 0xD0290BA879834726,  // 0x00015788 
	0x0D0D974202632905, 0x085C63294229631C, 0x1C1C0D2A04294229, 0x086386A84A7D5619,  // 0x000157A8 
	0x291C427904422924, 0x2A1C63290404EC0B, 0x0B0F292A084A421C, 0x050F19020C634A45,  // 0x000157C8 
	0x0B1C4202050C0C24, 0x2A0C63290502421C, 0x1E1E090805634A05, 0x051C0208020B2005,  // 0x000157E8 
	0x1C0C1C0505050508, 0x08231C0F050A1C20, 0x0F052408240A1C24, 0x051C080504020502,  // 0x00015808 
	0x0802052405020805, 0x05730C31700C0A0A, 0x0C02050505020424, 0x040A050505020505,  // 0x00015828 
};

u64 _spot18_room_3_tex_00015848[] = 
{
	0x1200000003031303, 0x3014114D133D401B, 0x4B7C001D4700D427, 0x13C614121311003F,  // 0x00015848 
	0x3F188B124B300000, 0x0713131314131313, 0x210E0000400314C7, 0xC4C6141114141313,  // 0x00015868 
	0x073527690E120314, 0x0E1403112C2F1226, 0x7500002C13401413, 0x81141B271B111411,  // 0x00015888 
	0x14553D5721142B3E, 0x1413121300121212, 0x5721211B27C4AD1B, 0xA20011142C301107,  // 0x000158A8 
	0x030E0E001B1B6907, 0x11000707001B1200, 0x00001311141B1413, 0x2C3E071100111311,  // 0x000158C8 
	0x112C032CB83E1813, 0x3E00301D4B304065, 0x14651B14143F1414, 0x1107131303180707,  // 0x000158E8 
	0x3007651207181127, 0xBE186E07031D0711, 0x111413AD1B001300, 0x031B1214114D2707,  // 0x00015908 
	0x6E0707001818D300, 0x6E1D1D7590303F13, 0x11142C078B13033F, 0x1300001800131B2D,  // 0x00015928 
	0x1100110000000369, 0x300018754B690365, 0x9E12B82F142C3F13, 0x14031413402C1118,  // 0x00015948 
	0x070018181814128E, 0x3E006618901D0314, 0x2C130081142C2C03, 0x3E11110065008B30,  // 0x00015968 
	0x1403032F38210011, 0x650011694B000014, 0x1B110E3F3FE60003, 0x0011113E13301130,  // 0x00015988 
	0x131B030E12001818, 0x0E113F03034D1B13, 0x00003E071D300014, 0x142C2C07039E142C,  // 0x000159A8 
	0x4D69309E0365073E, 0x00110E0313070E07, 0x030730181818BD13, 0x11143E111411112C,  // 0x000159C8 
	0x1107D31800071414, 0x1800400E3E030047, 0x0069B3BD182C132C, 0x14302C1114031400,  // 0x000159E8 
	0x2C400E1100031403, 0x073E031300070707, 0x2C4011074D1BED2C, 0x141111131111EA00,  // 0x00015A08 
	0x1314032C3E2C0713, 0x11B83E130E2F031B, 0x1113111313AD1312, 0x11138B1313131B00,  // 0x00015A28 
	0x032C0707004B0703, 0x1D00113011072C14, 0x031200183E114D03, 0x07073E2F40002D90,  // 0x00015A48 
	0x2C4007000000078E, 0x130E40133007C13E, 0x07071814110E303F, 0x0711124B073E3E18,  // 0x00015A68 
	0x3E03031B11031100, 0x00031303120E6E6E, 0x07131300132C1BC1, 0x13301327211B0018,  // 0x00015A88 
	0x03000711132C1303, 0x032CBB8B00181807, 0x651114030011070E, 0x27300E0012120000,  // 0x00015AA8 
	0x000013112CEA0000, 0x039E0714654B1803, 0x3007000014120012, 0x3F268B13303F188B,  // 0x00015AC8 
	0x4B07180013139014, 0x000311112C4B4B30, 0x1811307581180000, 0x111800141B073527,  // 0x00015AE8 
	0x1D070703002C1B03, 0x301103C513181400, 0x2D07187518070E4B, 0x2C0E13130714553D,  // 0x00015B08 
	0x30112C181314149E, 0x783F2CC52C132107, 0x070718184B651307, 0x2703000303030E0E,  // 0x00015B28 
	0x1813111111114D00, 0x030313273D440E03, 0x652D65180711032C, 0x0E12182C00112C03,  // 0x00015B48 
	0x3E00032C188B7507, 0x30403F1B1B120718, 0x0018033F03001475, 0x0E3F07182C300765,  // 0x00015B68 
	0x00403F3F18181213, 0x27110E1412001330, 0x1830350303118B03, 0x000707E6036E0707,  // 0x00015B88 
	0x810011031B27C53D, 0x3F112C113F004014, 0x07300E3F07751407, 0x18273E3F30110011,  // 0x00015BA8 
	0x00003D1B2C12033D, 0x1411142C2CD4141B, 0x3D2C3F18182B6507, 0x113D030314070018,  // 0x00015BC8 
	0x2D11134011002C11, 0x11009E11032C131B, 0x182C111812110707, 0x1303180E1B140303,  // 0x00015BE8 
	0x14270E4D111414EA, 0x2C270E8111B80307, 0x27002C0730071412, 0x3E3E187511131B03,  // 0x00015C08 
	0x9E003E120713C513, 0x1BED141411903500, 0x070007122F3F1300, 0x00D3180E004D6930,  // 0x00015C28 
	0x031311650E14D41B, 0x27030E1B0E7C0769, 0x6E004B8E12030303, 0x3F3F0E07271107D3,  // 0x00015C48 
	0x2C14031200183E11, 0x4D0307073E2F4000, 0x2D90039E65818111, 0x40074013112C400E,  // 0x00015C68 
	0xC13E07071814110E, 0x303F0711124B073E, 0x3E18180000008111, 0x001411C713131403,  // 0x00015C88 
	0x580E032D581D1D27, 0x12031D2D030E1203, 0x581D1D5858031D27, 0x031B032D03031D58,  // 0x00015CA8 
	0x1D1D581D2D2D2D03, 0x58551B03122D032D, 0x2D1D990358580E1D, 0x270E1D2D2D2D2D2D,  // 0x00015CC8 
	0x580E58581D2D121B, 0x0E582D12120E1D2D, 0x582D582D1D030E58, 0x1DA8991D2D2D5803,  // 0x00015CE8 
	0x032D580E58122D03, 0x27021212031D031D, 0x03A858992D120358, 0x2D58581D1D2D1D1D,  // 0x00015D08 
	0x1D032D0358581D0E, 0x271B0E0358031D2D, 0x1D2D58031D030E27, 0x12990E581D58581D,  // 0x00015D28 
	0x2D581D2D581D0312, 0x1B0E1D2D582D0358, 0x58580E2D2D120E03, 0x1B12032D0E2D0E58,  // 0x00015D48 
	0x2D2D0E2D1D0E121B, 0x0E580E1D0E2D2D2D, 0x122D0E1D0303271B, 0x1B1B0E2D03581D0E,  // 0x00015D68 
	0x99030E2D1D2D1203, 0x1D2D1D2D031D0E58, 0x2D2D1B12030E1B12, 0x030E03030E1B1212,  // 0x00015D88 
	0x03120E03122D1203, 0x1B0E1D0E1D03030E, 0x031B031B0E120303, 0x0E580E1B271B2727,  // 0x00015DA8 
	0x27122D0E270E0E0E, 0x271D2D27021D1D58, 0x5812121B1B022703, 0x0303030E120E0303,  // 0x00015DC8 
	0x1258580E0E0E0312, 0x120E271B03582D0E, 0x1B271B1B1B270E2D, 0x1D1D0E1B27121D2D,  // 0x00015DE8 
	0x1D2D1D0E12030312, 0x270E031B1D1D0E0E, 0x031B0E0E27275803, 0x1D031B0E1B1B0E03,  // 0x00015E08 
	0x2D2D031D03121B1B, 0x0E030E0E2D1B581D, 0x030E0E120E0E0203, 0x1D0E121B1B031B0E,  // 0x00015E28 
	0x1D4B033A1D58581D, 0x3A1D2B2D352D2B35, 0x2B2B3B542F12B43A, 0x1D0E4D4B4D274D2B,  // 0x00015E48 
	0x3B123A0707660758, 0x543B36361B2F0936, 0x543B0E070E0E0909, 0x12122F2F3A361D47,  // 0x00015E68 
	0x1D0418227C562E2D, 0x2F47033A0354036E, 0x1854542D1B543A36, 0x3A2B0E47543A3A36,  // 0x00015E88 
	0x2F163A22467B1603, 0x36783A0007661D54, 0x3A2E7B583A2E0E2B, 0x163A4716663B3B1D,  // 0x00015EA8 
	0x2F1D7C4620562099, 0x3A0D543A1D12001D, 0x1B565354542E3A16, 0x061D3B3B0E36162F,  // 0x00015EC8 
	0x2B3B0022F24A2000, 0x7B891E7B1D00072E, 0x54564A4A3A683A0B, 0x0B3B160B7B4B3A12,  // 0x00015EE8 
	0x3A163B7B0F1C4678, 0xA8292916221D5453, 0x181E4229200D3A0D, 0x202020F20D3B161E,  // 0x00015F08 
	0x2D7B1D20051C2E7C, 0x7D421C861E545456, 0x58772929420F0B1C, 0x42634242421E8920,  // 0x00015F28 
	0x58200D7705292080, 0x20631C42290D2242, 0x2042422963421C42, 0x2963634A4A291C1C,  // 0x00015F48 
	0x56421C4204424279, 0x1C631C422904294A, 0x4A42290C42422942, 0x1C1C1C796329290C,  // 0x00015F68 
	0x424263420C29290F, 0x020F63424A1C421C, 0x1C2942051C292942, 0x0F290F797942291C,  // 0x00015F88 
	0x29294A4202632905, 0x080C63294229631C, 0x1C1C292A04294229, 0x08630F7963634A02,  // 0x00015FA8 
	0x291C427904422924, 0x2A1C63290404631C, 0x0B0F292A084A421C, 0x050F02020C634A05,  // 0x00015FC8 
	0x1C1C4202050C0C24, 0x2A0C63290502421C, 0x1E1E090805634A05, 0x051C0208021C4205,  // 0x00015FE8 
	0x1C0C1C0505050508, 0x08231C0F050A1C20, 0x0F052408240A1C24, 0x051C080504020502,  // 0x00016008 
	0x0802052405020805, 0x05730C31700C0A0A, 0x0C02050505020424, 0x040A050505020505,  // 0x00016028 
};

u64 _spot18_room_3_tex_00016048[] = 
{
	0x0802052405D80805, 0x05174531700C0A0A, 0x0C02050505020424, 0x0401050505020505,  // 0x00016048 
	0x1510242452371024, 0x2438092424607710, 0x05600D0810850508, 0x6023240816868508,  // 0x00016068 
	0x2A15242460061008, 0x241F282424600F2A, 0x086C3724100C0824, 0x080A0505200D3705,  // 0x00016088 
	0x2A10242405371005, 0x242A082424600410, 0x08851924100C3231, 0x2A01600801866008,  // 0x000160A8 
	0x2A10242405061524, 0x2415083131600910, 0x0804AF24010C2132, 0x841960080D860F05,  // 0x000160C8 
	0x2A77242405191524, 0x2415083131322810, 0x08040A240CAF1708, 0x34C8020589500F02,  // 0x000160E8 
	0x2A86242405191008, 0x2415603115052805, 0x05021C0805043308, 0x34C8020505010105,  // 0x00016108 
	0x1070052405191024, 0x2410093110021709, 0x08041C0505044508, 0x080C02051C0C3702,  // 0x00016128 
	0x0504052405375208, 0x2409103115050560, 0x08041C0505043308, 0x080C04080A0C0405,  // 0x00016148 
	0x080C0824020D6005, 0x2410153131050405, 0x08020A0505041008, 0x080C0A08020C0204,  // 0x00016168 
	0x050A0824050D6005, 0x0815523131050405, 0x08041C0205021508, 0x08010C080C0C0205,  // 0x00016188 
	0x040508241C101905, 0x6015083131080C05, 0x08041C0404021015, 0x08C80C050A0C0505,  // 0x000161A8 
	0x3901602A62480433, 0x091045316C191905, 0x76020B284559021F, 0x21880C5239013C10,  // 0x000161C8 
	0x1F3932151989047E, 0x0B451A0860013708, 0x08190B0217100552, 0x10880F600F011F02,  // 0x000161E8 
	0x0D5B3B1059190406, 0x0B1904325201AF08, 0x08045301281F5952, 0x026248520D0F0223,  // 0x00016208 
	0x0D1E2615850C5C16, 0x0D09063C15297019, 0x101A200109281752, 0x45010A524E0F0402,  // 0x00016228 
	0x4E4C090204040C71, 0x1C042384051E0110, 0x28281E060C010932, 0x020C0C050F060A01,  // 0x00016248 
	0x061A0602010F1629, 0x1E23280505060D17, 0x1A450C0F5E0C0259, 0x021A0C15015E220D,  // 0x00016268 
	0x9C065F19060D161E, 0x6809091F09060406, 0x4505010C4C6B0445, 0x044C4505011C0D0C,  // 0x00016288 
	0x38161E0A0A0A220D, 0x0F1906101F0123B9, 0xD615020C0B1E0F05, 0x040C1933E2515B02,  // 0x000162A8 
	0x1A0B04010B0201F8, 0xF08F6A08525C0C6B, 0x3608175C045B0F09, 0x010F59155F6D0A02,  // 0x000162C8 
	0x4C0C106201052B2B, 0x66A50F31150F0B3B, 0x6108286704220B36, 0x730C760945220423,  // 0x000162E8 
	0x500B1A4304155043, 0x8619622A335C169C, 0x5732091676820A36, 0x377EA545050C3706,  // 0x00016308 
	0x0626040C288C0112, 0x0B020234760C160A, 0x2632095E33200C06, 0x4CA533D8080C503B,  // 0x00016328 
	0x4361390F1915093A, 0x51190208450C5B4E, 0x1A3102015900235C, 0x481959331F5C8601,  // 0x00016348 
	0x01175F0A1A050466, 0x6D1923051F37160A, 0x097A192332938806, 0x0C02601019200C09,  // 0x00016368 
	0x011706480117361C, 0x2B193959598F4E4E, 0x57523728054A0D5F, 0x0428D949011E0176,  // 0x00016388 
	0x39170F060C39470B, 0x390473CF59280A0A, 0x3905014525460D43, 0x0473598426AF041F,  // 0x000163A8 
	0x0123861A370F5150, 0x5F39730659450A06, 0x01CC010225510D36, 0x261F1F08395F193C,  // 0x000163C8 
	0x3B735E09623BA650, 0x8F0C5C5F591F225E, 0x43190102448D0F36, 0x7E3159525C0F7610,  // 0x000163E8 
	0x0F19061AA70D7986, 0x761E5CD905172E0B, 0x36048F02284E5C06, 0x7E2A3C59205C3C32,  // 0x00016408 
	0x5BCC0C093C0F631C, 0x01715005171F2E29, 0x9C0C881745AF5C5C, 0x196C703C8750171F,  // 0x00016428 
	0x6D045C04320BAC87, 0x0C77E53860155B1E, 0x030C0409050B5006, 0xB959281F200F1702,  // 0x00016448 
	0x1C33A70231F8F082, 0xE2C0425C5F6022B7, 0x0E5C09766C375F12, 0x5008440977502809,  // 0x00016468 
	0xE0155F452A2B662E, 0x8850870C88D6823B, 0x065E1F5908190C1A, 0x0431331A160A1904,  // 0x00016488 
	0x5F054C32BC43890A, 0x8F0C1E370559205F, 0x0637D610D61A375E, 0x5F2432016A0F1904,  // 0x000164A8 
	0x5F760F3231120B0A, 0x04376B8F08760023, 0x060C76338F265C0B, 0x09A31F260A0C0904,  // 0x000164C8 
	0x5F881F32443A1E50, 0x7E260B0231389319, 0x06DE761537160C0C, 0x02311F2B0F010404,  // 0x000164E8 
	0x0159152A2B82225C, 0x620C5E15241A4AB7, 0x5E62D9325F5B2862, 0x05A3080E0A060101,  // 0x00016508 
	0x4C3C1534F6205F06, 0x067E01082A2B7F77, 0x0A48020539011943, 0x082A153A290F4C0C,  // 0x00016528 
	0x0A04442A39002306, 0x0C3923597A02938D, 0x502645334C191937, 0x08081722676D5E0F,  // 0x00016548 
	0x0B8F25241F931906, 0x37731A1F0821B07D, 0x166221280119A573, 0x3108121E2E42294E,  // 0x00016568 
	0x06101524624AB75E, 0x37A743CF31387153, 0x370926010C264537, 0x2A522D1E29295067,  // 0x00016588 
	0x01101534067F770A, 0x481C0CCF311A68B7, 0xDE4E01390F232537, 0xA3289B5642F56B53,  // 0x000165A8 
	0x1A02083401938D50, 0x261C373231257F42, 0x4ED021855E021F1A, 0x082BAA581DE56B97,  // 0x000165C8 
	0x010915345EB07D16, 0x620C59052A087CC3, 0x48373C1948CC4509, 0x080C7FB1C0895CC0,  // 0x000165E8 
	0x7009BA2A21715337, 0x092332342A316829, 0x060145045B882537, 0x0832E998C0F53A22,  // 0x00016608 
	0x280215E41768B7DE, 0x4E17F3197A2A2577, 0x508F19621E010573, 0x3157719322A71D51,  // 0x00016628 
	0x1928152A257F424E, 0x0F451F092A31E080, 0x0A0404011C6A7E37, 0x2A1A7C4A204E874A,  // 0x00016648 
	0x0C0432A3157CC30F, 0x0A283C10BC1582AC, 0xA15C19371C5C0C37, 0x24731E03C356299B,  // 0x00016668 
	0xA10132A31568290F, 0x06021F1531314780, 0x29012F0A0D161A1A, 0x316148161C4A4222,  // 0x00016688 
	0x0B02252415257716, 0x01054908312AD071, 0x48042F0C480A6033, 0x0510F2514697770A,  // 0x000166A8 
	0x6A3C05E410E0565E, 0x1752086CA3C85193, 0x671A8806045EF302, 0x7010B18751770B06,  // 0x000166C8 
	0x3A09252A26828D21, 0x105931082A67A87C, 0x3F2804485F064C45, 0x1A25206B420B4C06,  // 0x000166E8 
	0x0B3C5A313A1D0A09, 0x61093252DD6BEB7F, 0x0C19621643AF5C08, 0x3C1C71828D0F2306,  // 0x00016708 
	0x5E15157A7B0D0433, 0x6001056C05E593AC, 0x4319044E9C12192A, 0xA5634A6E890F2350,  // 0x00016728 
	0x2115156C0E0F4515, 0x1F707A2A3C3A7763, 0x043CA50B1C37522A, 0x06A6710F285C5E51,  // 0x00016748 
	0x458C15083C105932, 0x09592A2A09AC516E, 0x091936350C707A31, 0x62B0AC3B602B3A94,  // 0x00016768 
	0x0949490845763305, 0x102A2A24E293C389, 0x39266B6A09373131, 0xEF9BB5EF027E5C1C,  // 0x00016788 
	0x4A49086C48CC0532, 0x592424D935475023, 0x0273540B1902246C, 0xB6B093291912290F,  // 0x000167A8 
	0x462B590862361F1F, 0x0515050A0F176121, 0x101A4E3604453109, 0x0D0D6A6B047E0D6D,  // 0x000167C8 
	0x430C61280C093906, 0x090202040C172123, 0x60390D351A452806, 0x065F010F73230F22,  // 0x000167E8 
	0x1130112C0E443822, 0x0A07545643041004, 0x331A166B26350056, 0x09010F1F40074013,  // 0x00016808 
	0x40133007C13E0707, 0x1814110E303F0711, 0x124B073E3E181800, 0x00008111001411C7,  // 0x00016828 
};

u64 _spot18_room_3_tex_00016848[] = 
{
	0x2A058C02262F6A03, 0xB6B6032D675B982E, 0x0C2505171740DC7F, 0xB64642421202702A,  // 0x00016848 
	0x3D49743D264D4066, 0xDCB62D4A4A58B167, 0x35403DCD21612929, 0x2EB6675B3B43430E,  // 0x00016868 
	0x1208494F09040A3A, 0x47074A4A4A58A16A, 0x2B035B1705101761, 0x55121270703B2727,  // 0x00016888 
	0x0F155A5A042B163A, 0x472F9842DC2E1C2D, 0x0303221721382F21, 0x2F4012700F1E0F0E,  // 0x000168A8 
	0x3A3949552BB96666, 0x7C422D0A262B352D, 0x5B0A3B254F26125B, 0x291243430E121E1E,  // 0x000168C8 
	0x22368C2F0D033B18, 0x4B78030335B17D56, 0xA1670D191035433B, 0x123B290F223B3B0F,  // 0x000168E8 
	0x684334022D3B072D, 0x5403A1A107564A4A, 0x030C290225293B43, 0x4D4D433BF268681E,  // 0x00016908 
	0x2E21151B986B3555, 0x38120320477022F6, 0x350A9C3317704D4D, 0x0F3B1B281E683A68,  // 0x00016928 
	0x0A1A152F55024355, 0x55852E7F0A552106, 0x260A26321F100F4D, 0x0F680E21433B3B2F,  // 0x00016948 
	0x361F250A5B022816, 0x477F297F1D26402B, 0x2F2B0210024D0F3B, 0x22293A2B2F213826,  // 0x00016968 
	0x4349050108050204, 0x7070554309262606, 0x0638091A174D3B0F, 0x1229293957261B0E,  // 0x00016988 
	0x36CE101034151008, 0x15055234DD25CD44, 0x57213904093B3B3B, 0x3B5B6D063A220E0E,  // 0x000169A8 
	0x2149154944101517, 0x2F366A1A44721B36, 0x3838391738363670, 0x0285050527A24F21,  // 0x000169C8 
	0xDDCA088C3302170D, 0x561C534735124D14, 0x3526383344447274, 0x4F2121041F050831,  // 0x000169E8 
	0x050531020217042D, 0x510D515166665880, 0x663A2F215A3D2716, 0x470A22030C090552,  // 0x00016A08 
	0x0412434305520946, 0x63530D5194A19863, 0x58532E3C4F429898, 0x2D03030C012F0910,  // 0x00016A28 
	0x0B1D1D4305171656, 0x5358A11C1C031C94, 0x56B17B091298582D, 0x7F2DA16712572525,  // 0x00016A48 
	0x40B63B3B45095420, 0x63985394580D1C56, 0x560D2E572F7F98DC, 0xA1B1587B3833493C,  // 0x00016A68 
	0x26431D0F02612E22, 0x6A4A635656539494, 0x1C356E2B1ADC422E, 0xB6673B213C021717,  // 0x00016A88 
	0x382117023C013516, 0xA19451639999561C, 0x2D51562B57431702, 0x022110171702701F,  // 0x00016AA8 
	0x437070052F19354D, 0x5156940D79991C6A, 0x5199990910171919, 0x573C26261702402F,  // 0x00016AC8 
	0x4343433B19040A2D, 0x56530D365163566A, 0x515656191B1B1904, 0x0A0D1D0A0A045512,  // 0x00016AE8 
	0xAC1D431D17062B51, 0x635653948956632D, 0x5120A1192EDCA10A, 0x0A98A8A64A803F54,  // 0x00016B08 
	0xAC634AA6851A1753, 0x5679561B0430013A, 0x0F3702026A5863B1, 0x5851997558836656,  // 0x00016B28 
	0x1E78A1351A100979, 0x99791B06232B0137, 0x360435050914472D, 0x512D4B2E3A785646,  // 0x00016B48 
	0x682E513612334F56, 0x56361B14267E1919, 0x19230152105A1902, 0x4754160A1D475416,  // 0x00016B68 
	0x165399223610212B, 0x46946A162B19191B, 0x36361A5A1717021B, 0x013A432B26236A06,  // 0x00016B88 
	0x987CA8563A210532, 0x382B435E2B041717, 0x0274CE491919561C, 0x1B472E0D68473B3A,  // 0x00016BA8 
	0x6A1E2D1492153108, 0x15BA445A21EE49D1, 0xD1D15A15576A201C, 0x6B6607780066073B,  // 0x00016BC8 
	0x366BDF8A8A6FCA6F, 0x3425DDE76FD71549, 0xCA258C3415380A0A, 0x356B6A57210A0A2B,  // 0x00016BE8 
	0xCEF1B26F6F5D2502, 0x21BA256F10330202, 0x1F255A6F49BACE72, 0xCE8A8A72175A5A72,  // 0x00016C08 
	0xD76FD76FCA153C5F, 0x12570217040C5BA1, 0x334949332A443D3B, 0x3F542F3D216134D7,  // 0x00016C28 
};

u64 _spot18_room_3_tex_00016C48[] = 
{
	0xF7BDEF37FFFFBD29, 0xDE2FDE73A41FACA3, 0xAC63ACA3B4A5FFFF, 0xFFFFFFFFFFFFFFFF,  // 0x00016C48 
	0xFFFFFFFFDE71FFFF, 0xFFFFFFFFFFFFE6B5, 0xFFFFCDADD5EDE673, 0xDE71FFFFFFFFA41F,  // 0x00016C68 
	0xF77BAC638B5B7211, 0x8B5B7A9338857253, 0x8B9B6A0F698D7AD7, 0x7253939D3883A461,  // 0x00016C88 
	0xCDADD63182D5FFFF, 0xEF37939BD62FB4E7, 0xC529C569AC63B4A5, 0xB4E7B4E5AC638B5B,  // 0x00016CA8 
	0xD5AD935B82D58B59, 0xAC637211388569CF, 0x7A956149590769CF, 0x939D7A95B4E7A461,  // 0x00016CC8 
	0xB4E7939D3885D671, 0xBD29610782D79BDF, 0xA41F7A51720F8295, 0x7A957A51618B50C5,  // 0x00016CE8 
	0xD5EF935B9BDDB4A5, 0xC56B8B1961497AD7, 0x9BDF614B618D7211, 0x8B5B594B61CF7295,  // 0x00016D08 
	0x729569CF50C7FFBD, 0xD67158C78B597A53, 0x83178B1969496107, 0x8B59A4218B1769CD,  // 0x00016D28 
	0xFFFFAC619BDD8B5B, 0x8B9B7A53590769CF, 0x9BDF618B50C769CF, 0x72515107590961CD,  // 0x00016D48 
	0x61CD30833883EEF7, 0xB4A5488382D78B19, 0x82D5721150C550C5, 0x82D7BD298B174085,  // 0x00016D68 
	0xE6F5BCE782D7939D, 0x7AD56A0F50C750C7, 0x729359074085618B, 0x408548C761497253,  // 0x00016D88 
	0x7AD530432843C56B, 0x720F100161CD7A93, 0x698D3883408582D5, 0x618B7A93ACA34085,  // 0x00016DA8 
	0xE6739BDF939D8359, 0x8B5B614B4085614B, 0x7293614959075107, 0x618D7A9569CD4085,  // 0x00016DC8 
	0x594B100100016A53, 0x180100017293618D, 0x4085614961078B5B, 0x8B5B82D7A41F4085,  // 0x00016DE8 
	0xBD278B1972938B59, 0x7A93408530435909, 0x614B590750C748C5, 0x69CF590748C53085,  // 0x00016E08 
	0x3083100100012843, 0x180100018B5B614B, 0x1801610761077251, 0x9BDD82D569CD40C5,  // 0x00016E28 
	0xFFFF614969CD82D7, 0x61076149590769CF, 0x7AD7610928433883, 0x59073043D631BDAD,  // 0x00016E48 
	0xBDAD9C6352112043, 0x2843000159073043, 0x1801284340857AD7, 0x69CF721118017A53,  // 0x00016E68 
	0xF77B9BDF6149ACA5, 0x7AD769CD5909618D, 0x7AD7590740852843, 0xB56B9CA5C5EFBDAD,  // 0x00016E88 
	0x6AD7839D8C216B19, 0x9463000140856149, 0x3883000150C57A93, 0x590782D5720F7A93,  // 0x00016EA8 
	0xFFFFBD2772518B5B, 0x9BDD59093885618D, 0x618D40C548C58C21, 0xC5EFC5EFF77BFFFF,  // 0x00016EC8 
	0xCE31735B8C215A53, 0xDEB5A4E7308369CD, 0x2843000150C569CD, 0x614B614940857251,  // 0x00016EE8 
	0xFFFFC529AC639BDF, 0x618D408548C76A11, 0x50C748C5B56B735B, 0xC5EF9463FFFFFFFF,  // 0x00016F08 
	0xFFFFDEB5FFFF7B9D, 0x6B19BD6BA4E74085, 0x48C5180150C57A95, 0x831748859CA58B5B,  // 0x00016F28 
	0xFFFFB4618319941F, 0x831969CF51076A51, 0x7211FFFFF77B9CA5, 0xFFFFEF39FFFFA4E7,  // 0x00016F48 
	0xD673BDADA4E78C21, 0x62959C63D631CE31, 0x40851801488540C5, 0x5107618B618D5907,  // 0x00016F68 
	0xFFFF71CD729369CF, 0x614940C548C77AD7, 0x69CFDEF7EF399463, 0xCE31D631FFFFCE31,  // 0x00016F88 
	0xCE3183DFA4E77B9D, 0x51CF6295A4E7B56B, 0x2041100159074085, 0x48C5590761CD3083,  // 0x00016FA8 
	0xFFFF408372516149, 0x4085304338857AD5, 0xD673DEB5EF398C21, 0x9463AD29FFFF2909,  // 0x00016FC8 
	0x20C70001A4E76AD7, 0x418D5A51AD29A4E7, 0xAD29304338832843, 0x48C5614B40C540C5,  // 0x00016FE8 
	0xFFFF4885725150C7, 0x618B590748C75909, 0xF7BDFFFFBDADD631, 0xD631B56B41CF1885,  // 0x00017008 
	0x0001104329076B19, 0x414B7B9DD6318C21, 0x6B19100138833883, 0x6A0F614B69CD1801,  // 0x00017028 
	0xFFFF69CD72535107, 0x618B48C751095909, 0xBDADEF7BFFFFE6F7, 0xE6F7C5EF314B0001,  // 0x00017048 
	0x0001000108016B19, 0x49CD83DF83DF7B9D, 0x62950001590750C7, 0x82D7388328430801,  // 0x00017068 
	0xFFFF8B5B61CD5909, 0x6A0F69CF590950C7, 0xBDADDEF7E6F7F7BD, 0xD673CE3149CF1043,  // 0x00017088 
	0x1885000100017B9D, 0x51CF6B1951CF9CA3, 0xAD29618B40854085, 0x7AD7388361CD40C7,  // 0x000170A8 
	0xFFFF939D725382D7, 0x8317618B48C750C7, 0x9463AD6BCE319CA5, 0xAD299C63B56B0001,  // 0x000170C8 
	0x0843000183DFD673, 0x5A5394616295BDAD, 0x7B9D590961CD2843, 0x7293304351076A0F,  // 0x000170E8 
	0xF7797A9583197AD7, 0x7251408548C52041, 0x3043CE31D673735B, 0x8C21AD6BCE316B19,  // 0x00017108 
	0x735B7B9D83DFEF39, 0x73199CA37B5B83DF, 0x61CD614948C72843, 0x725350C569CF6A0F,  // 0x00017128 
	0xFFFF614B7A936107, 0x7251618D725369CD, 0x30838BDF84219CA5, 0x9463AD29D6736AD7,  // 0x00017148 
	0x9463AD299CA5FFFF, 0xAD296295735B83DF, 0x48C761CD61495909, 0x61CD48C56A0F48C7,  // 0x00017168 
	0xF77B61497A5382D7, 0x7211618B618D5907, 0x30433043B56BB56B, 0x9463F7BDE6F77B9D,  // 0x00017188 
	0xD673C5EF735B8C21, 0xBDAD735B62D77253, 0x72516A0F72537251, 0x48C718016A111001,  // 0x000171A8 
	0xE6F7614969CD69CD, 0x72537251618B4085, 0x50C761CF40C5AD29, 0xB56BAD29EF7B83DF,  // 0x000171C8 
	0xC5EFD67383DF5A95, 0xB56BC5EF10017211, 0x614B69CF7211614B, 0x48C7408538850001,  // 0x000171E8 
	0xF7BD590972935909, 0x7211614B614B5907, 0x7AD769CF38855107, 0xFFFF9CE5FFFF9CA5,  // 0x00017208 
	0x7B9DDEB5FFFF7B5B, 0x6B19304361497253, 0x72517A95720F614B, 0x6149488540C50001,  // 0x00017228 
	0xC5AB69CF61CD6149, 0x590961CD614940C5, 0x6A0F6A0F590769CF, 0x50C72843FFFF9CA5,  // 0x00017248 
	0x9CA5CE31BDAD1801, 0x388548C559097211, 0x614B6A0F61497251, 0x48C7388328430001,  // 0x00017268 
	0xDE7140C56A0F7253, 0x725148C759095909, 0x5907614B59076A0F, 0x5949388561CD2843,  // 0x00017288 
	0x618D388520432843, 0x614948C76A0F614B, 0x590769CF7211614B, 0x48C7204128430001,  // 0x000172A8 
	0xA41FACA569CF7211, 0x614B48C7618D618D, 0x614B50C740856A11, 0x590940C76A116A11,  // 0x000172C8 
	0x61CD3083590950C7, 0x4085590961CD6149, 0x40C57A95720F614B, 0x6149284359073085,  // 0x000172E8 
	0xBCE7B4A57A95720F, 0x614B6149618B69CF, 0x7A95618D40855909, 0x510948C748C76149,  // 0x00017308 
	0x40C540C550C75107, 0x3885725148C75909, 0x59096A0F7A937211, 0x7A95100148C71801,  // 0x00017328 
	0xD5EDC5296A0F7A93, 0x72117A957A957251, 0x72517A9359096149, 0x48C7618D590950C7,  // 0x00017348 
	0x69CD5909490748C7, 0x50C7614B48C7618D, 0x618D2041304350C5, 0x2843180118015107,  // 0x00017368 
	0xF739935959075907, 0x614B72537A956A0F, 0x5909618B618B618B, 0x69CD725169CF6A11,  // 0x00017388 
	0x7295618D598D3885, 0x3885284338853885, 0x4885308340C5598B, 0x48C7388338830001,  // 0x000173A8 
	0xBCE761076A0F8B9D, 0x83195907618B5909, 0x9BDFBD2993DD7AD5, 0x7AD7B4E5A4616211,  // 0x000173C8 
	0x080100010001618D, 0x40C7598B7AD57A95, 0x725348C57A958B5B, 0x9C21408510011841,  // 0x000173E8 
	0xFFFF408338853043, 0x2843284300010001, 0x0001388538850001, 0x30856A959C216A51,  // 0x00017408 
	0x61CD40C730836149, 0x0001100159072041, 0x1801308572956A11, 0x7AD7000100010801,  // 0x00017428 
};

u64 _spot18_room_3_tex_00017448[] = 
{
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017448 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017468 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017488 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F010301030, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000174A8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F6F0F0F0F0F0F0,  // 0x000174C8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F030303030, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000174E8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F07060, 0x726CF0F0F0F0F0F0,  // 0x00017508 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F03030321F3F, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017528 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030606B, 0x6E6DF0F0F0F0F0F0,  // 0x00017548 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F03030443F3F, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017568 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F060605050, 0x60606070F0F0504E, 0x7F6F70A070F0F0F0,  // 0x00017588 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F020303F3F3F, 0x1030F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000175A8 
	0x5050403040505040, 0x4050607070605040, 0x505040B0F0F0C23F, 0x6F6F608080808080,  // 0x000175C8 
	0x7070808060808080, 0x70F0F0E0303F3F4F, 0x603060F0F0F0F0F0, 0xF0F0F0F0F0507060,  // 0x000175E8 
	0x5050602030305020, 0x1010102020206F6F, 0x5F5F6F6F6F7FFFFF, 0x5F4F5AAF7F605060,  // 0x00017608 
	0x6060607060706050, 0x70C0F0F0B02F3F3F, 0x5260605040303040, 0x5060304050405050,  // 0x00017628 
	0x7F6F5F5F4F3F4F5F, 0x5F4F4F5F6F7F7F6F, 0x5F4F5F5F4FBFFFFF, 0xCFEFBF7F6F8F8F8F,  // 0x00017648 
	0x5F8F8F6F8F8F8F7F, 0x7F7F7FFFFFEF3F3F, 0xDFAF6F5640506080, 0x806030505032545F,  // 0x00017668 
	0x5F5F5F5F6F2F3F3F, 0x5F2F1F1F1F2F2F2F, 0x3F2F2F2F1F2FBFEF, 0xFFBF8F6F5F2F5F6F,  // 0x00017688 
	0x5F6F7F6F7F6F5F6F, 0x6F6F7FCFFFFFBFDF, 0xBF7F5F6F6F5F4F3F, 0x3F7F5F6F3F4F5F4F,  // 0x000176A8 
	0x5F5F6F6F7F7F6F6F, 0x6F7F7F7F7F7F6F5F, 0x5F4F2F2F1F1FEF6F, 0x8FCF9F1F1F2F3F2F,  // 0x000176C8 
	0x1F1F2F5F2F2F2F1F, 0x2F3F5F5FAFEFEFAF, 0x8F6F3F4F5F5F4F5F, 0x6F4F6F6F3F5F5F3F,  // 0x000176E8 
	0x1F1F1F2F2F2F2F2F, 0x1F1F2F3F3F2F2F2F, 0x2F2F2F1F1FFFFFDF, 0x6F6F7F6F1F1F1F1F,  // 0x00017708 
	0x5F6F5F5F5F5F6F8F, 0x7F8F5F4FFFFFBF7F, 0x6F3F3F3F4F3F3F2F, 0x2F2F3F1F2F2F2F2F,  // 0x00017728 
	0x1F1F2F2F2F607070, 0x6060607070707070, 0x6050504022DFCF8F, 0x4F6F6F6F9B10142B,  // 0x00017748 
	0x3F2F1F1F1F1F1F2F, 0x2F2F1FEFFFDF7F5F, 0x7F6F2F2F2F2F2F1F, 0x1F1F2F2F2F2F1F1F,  // 0x00017768 
	0x2020101010202020, 0x2020101020303020, 0x2020202020227F2F, 0x3F2F6F6F72601212,  // 0x00017788 
	0x2F2F1F1F1F1F2F2F, 0x2F2F2FDFCF7F1F5F, 0x6F6F693936344230, 0x3020202030102020,  // 0x000177A8 
	0x1010101020202020, 0x1010203030202020, 0x202020101050342F, 0x2F2F486260601010,  // 0x000177C8 
	0x5060505050506030, 0x202020266F2F2F5F, 0x6F6F786422202020, 0x2010101020202020,  // 0x000177E8 
	0x1010202020F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F050502F, 0x3F1F32206060F0F0,  // 0x00017808 
	0x3020101010101020, 0x20202010142F1F2F, 0x2F54606020202010, 0x1010202020201010,  // 0x00017828 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F03050325F, 0x3F2F2020F0F0F0F0,  // 0x00017848 
	0x2020101010102020, 0x20202010102F1F2F, 0x2F526060F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017868 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F04040385F, 0x5F2F3010F0F0F0F0,  // 0x00017888 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F020101F1F2F, 0x2F2220F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000178A8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F060503F5F, 0x3F1F3020F0F0F0F0,  // 0x000178C8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F020101F1F2F, 0x1F2420F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000178E8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F050504F4F, 0x3F1F5020F0F0F0F0,  // 0x00017908 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0102F1F2F, 0x1F2F20F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017928 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F05060506F5F, 0x3F2F3010F0F0F0F0,  // 0x00017948 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0102F1F3F, 0x1F2F10F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017968 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F06060525F5F, 0x2F2F3010F0F0F0F0,  // 0x00017988 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F010281F2F, 0x1F3F1020F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000179A8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0A0605F6F5F, 0x2F593020F0F0F0F0,  // 0x000179C8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F010241F3F, 0x1F2F1020F0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000179E8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xA0E0F0F0C86F6F5F, 0x2F5C2220F0F0F0F0,  // 0x00017A08 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0C41F2F, 0x2F3F823080F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017A28 
	0x5040504060708060, 0x7060808070709080, 0x7070B2FFFFAF6F4F, 0xDFBF7F5050505050,  // 0x00017A48 
	0xF0F0F0F0F0F0F0F0, 0xF0F0A0D0F0F61F2F, 0x2F1F2F6460608070, 0x6050504060706040,  // 0x00017A68 
	0x3030604050503030, 0x3050505050504040, 0x40F4AFEFFFFFCFDF, 0xAF7F5F1420202020,  // 0x00017A88 
	0x6070806070608070, 0x808090A0B4FFFFCF, 0x2F1FDFBF8F425040, 0x4050305050406050,  // 0x00017AA8 
	0x6F4F5F4F5F4F6F7F, 0x8F6F7F6F8F8F7F7F, 0x9F8F7F7FBFDFEFCF, 0x8F6F5F4F5F5F5F5F,  // 0x00017AC8 
	0x6462323030505060, 0x606060F2AFDFFFFF, 0xDFDFBF7F6F6F2C3F, 0x8F5F3F5F5F4F6F7F,  // 0x00017AE8 
	0x6F5F3F3F6F4F5F5F, 0x3F3F3F5F5F5F5F5F, 0x4F4F4FFF6F7F9FBF, 0x7F2F3F2F2F1F2F2F,  // 0x00017B08 
	0x6F7F8F6F7F6F8F8F, 0x7F7F8F8F9FAFBFFF, 0xEFBF7F6F6F3F3F4F, 0x5F7F6F5F3F5F5F4F,  // 0x00017B28 
	0x2F2F2F2F2F2F2F2F, 0x2F2F2F2F1F2F2F2F, 0x2F2FEFFFDFBF6F6F, 0x6F6F2F2F2F2F2F2F,  // 0x00017B48 
	0x5F5F3F3F3F5F5F5F, 0x6F6F6F6F6FFFFFFF, 0xCF7F6F5F5F2F1F2F, 0x2F2F2F2F2F2F2F2F,  // 0x00017B68 
	0x5040605030306040, 0x5050303030505050, 0x5060CFBF7F5F3F5F, 0x5F6F782030202418,  // 0x00017B88 
	0x2F2F2F2F2F2F1F2F, 0x1F2F2F2FFFFFEFAF, 0x6F6F6F6F6F2F2F20, 0x2040607060503050,  // 0x00017BA8 
	0x2020202020202020, 0x2020202020201020, 0x30607B7F5F3F3F1F, 0x5F6F626020202020,  // 0x00017BC8 
	0x3080607060808050, 0x50606060DFBF8F2F, 0x2F6F6F6F6F505020, 0x1030202020202020,  // 0x00017BE8 
	0x2020202020202020, 0x2020202010202020, 0x5060586F6F3F3F2F, 0x3F5C506020202020,  // 0x00017C08 
	0x5030303050505010, 0x10101020106F2F2F, 0x2F2F6F6F5F606020, 0x2020202020202020,  // 0x00017C28 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0x20403F6F7F3F2F2F, 0x3E145060F0F0F0F0,  // 0x00017C48 
	0x1020202020102010, 0x10202020F0302F2F, 0x2F2F2F2F60606020, 0x20F0F0F0F0F0F0F0,  // 0x00017C68 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0405F6F5F5F3F1F, 0x3E22F0F0F0F0F0F0,  // 0x00017C88 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0D0301F2F, 0x2F2F2F2F606050F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017CA8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0602F4F4F6F3F2F, 0x2D20F0F0F0F0F0F0,  // 0x00017CC8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030303F, 0x2F2F1F1F2020F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017CE8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF020494F3F6F3F2F, 0x3610F0F0F0F0F0F0,  // 0x00017D08 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030303F, 0x2F2F1F1F2020F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017D28 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF020446F4F1F3F2F, 0x3220F0F0F0F0F0F0,  // 0x00017D48 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030303F, 0x3F2F2F1F1010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017D68 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF050602F4F2F3F2F, 0x3220F0F0F0F0F0F0,  // 0x00017D88 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030303F, 0x3F3F1F1F1010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017DA8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF050602F4F2F3F1F, 0x3820F0F0F0F0F0F0,  // 0x00017DC8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030303F, 0x3F2F1F1F2010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017DE8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0605F6F2F3F1F, 0x3C20F0F0F0F0F0F0,  // 0x00017E08 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020303F, 0x3F3F2F3B1010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017E28 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0605F6F1F3F1F, 0x3C10F0F0F0F0F0F0,  // 0x00017E48 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020303F, 0x3F3F2F281010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017E68 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F060296F1F2F1F, 0x2F10F0F0F0F0F0F0,  // 0x00017E88 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020302F, 0x3F3F2F3620F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017EA8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020266F1F2F2F, 0x2F10F0F0F0F0F0F0,  // 0x00017EC8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030202F, 0x3F3F2F3220F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017EE8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020306F2F2F2F, 0x2F1020F0F0F0F0F0,  // 0x00017F08 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030202F, 0x3F3F2F3020F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017F28 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020502F2F3F3F, 0x3F2020F0F0F0F0F0,  // 0x00017F48 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030203F, 0x2F3F1F3020F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017F68 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0502F3F2F3F, 0x3F2020F0F0F0F0F0,  // 0x00017F88 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020203F, 0x2F2F1F3020F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017FA8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0302F5F2F3F, 0x2F3030F0F0F0F0F0,  // 0x00017FC8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F030203F, 0x2F2F1F3010F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00017FE8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F020185F2F3F, 0x2F3030F0F0F0F0F0,  // 0x00018008 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020302F, 0x2F2F2F2010F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00018028 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F020143F2F2F, 0x2F3020F0F0F0F0F0,  // 0x00018048 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020303F, 0x2F2F2F2210F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00018068 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F010102F1F3F, 0x1F3020F0F0F0F0F0,  // 0x00018088 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010302F, 0x3F3F2F2620F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000180A8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F020102F1F5F, 0x1F2020F0F0F0F0F0,  // 0x000180C8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010302F, 0x3F3F2F2820F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000180E8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F030201F1F4F, 0x1F3010F0F0F0F0F0,  // 0x00018108 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010301F, 0x3F2F2F3A20F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00018128 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F030202F1F5F, 0x1F5010F0F0F0F0F0,  // 0x00018148 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020201F, 0x3F2F2F3B20F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00018168 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F030203F2F3F, 0x1F4010F0F0F0F0F0,  // 0x00018188 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020201F, 0x3F2F2F2B20F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000181A8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F01030323F2F2F, 0x2F5010F0F0F0F0F0,  // 0x000181C8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020202F, 0x2F2F2F1F20F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000181E8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F01030363F2F2F, 0x2F3010F0F0F0F0F0,  // 0x00018208 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020202F, 0x2F2F2F1F20F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00018228 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F010301F3F3F3F, 0x2F2020F0F0F0F0F0,  // 0x00018248 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020202F, 0x2F2F2F1F2010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00018268 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020201F3F3F5F, 0x2F2020F0F0F0F0F0,  // 0x00018288 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010202F, 0x2F2F2F2F2010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000182A8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020201F3F2F3F, 0x2F3020F0F0F0F0F0,  // 0x000182C8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010202F, 0x2F2F1F2F2010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000182E8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020202F2F2F2F, 0x1F5020F0F0F0F0F0,  // 0x00018308 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010201F, 0x2F2F1F2F2020F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00018328 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020102F2F2F2F, 0x1F3020F0F0F0F0F0,  // 0x00018348 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F020201F, 0x2F1F1F1F1020F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00018368 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F020102F2F2F1F, 0x2F2010F0F0F0F0F0,  // 0x00018388 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010201F, 0x2F1F1F1F1020F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000183A8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F02F1F1F1F, 0x1F2010F0F0F0F0F0,  // 0x000183C8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F010201F, 0x2F2F2F1F1010F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x000183E8 
	0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F02F1F1F1F, 0x1F1020F0F0F0F0F0,  // 0x00018408 
	0xF0F0F0F0F0F0F0F0, 0xF0F010201010201F, 0x1F2F1F1FF0F0F0F0, 0xF0F0F0F0F0F0F0F0,  // 0x00018428 
};

static u8 unaccounted18448[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx_t _spot18_room_3_vertices_00018450[4] = 
{
	 { 427, 362, -28, 0, -1024, 0, 102, 102, 102, 255 }, // 0x00018450
	 { 427, 196, -28, 0, -1024, 2048, 153, 153, 153, 255 }, // 0x00018460
	 { 359, 196, 491, 0, 4103, 2048, 153, 153, 153, 255 }, // 0x00018470
	 { 359, 362, 491, 0, 4103, 0, 102, 102, 102, 255 }, // 0x00018480
};

Vtx_t _spot18_room_3_vertices_00018490[4] = 
{
	 { 198, 346, -275, 0, 0, 0, 127, 127, 127, 255 }, // 0x00018490
	 { 198, 296, -275, 0, 0, 1024, 114, 114, 114, 255 }, // 0x000184A0
	 { 262, 296, -206, 0, 1024, 1024, 114, 114, 114, 255 }, // 0x000184B0
	 { 256, 346, -213, 0, 1024, 0, 127, 127, 127, 255 }, // 0x000184C0
};

Vtx_t _spot18_room_3_vertices_000184D0[12] = 
{
	 { 515, 569, -244, 0, 70, 0, 127, 127, 127, 255 }, // 0x000184D0
	 { 515, 503, -244, 0, 70, 1024, 140, 140, 140, 255 }, // 0x000184E0
	 { 546, 512, -133, 0, 1817, 1024, 140, 140, 140, 255 }, // 0x000184F0
	 { 546, 569, -133, 0, 1817, 0, 127, 127, 127, 255 }, // 0x00018500
	 { 210, 160, 1, 0, 99, 0, 89, 89, 89, 255 }, // 0x00018510
	 { 210, 77, -22, 0, 99, 1024, 89, 89, 89, 255 }, // 0x00018520
	 { 211, 77, 168, 0, 1807, 1024, 89, 89, 89, 255 }, // 0x00018530
	 { 211, 160, 168, 0, 1807, 0, 89, 89, 89, 255 }, // 0x00018540
	 { 569, 554, 260, 0, 1812, 0, 153, 153, 153, 255 }, // 0x00018550
	 { 569, 423, 261, 0, 1812, 1024, 191, 191, 191, 255 }, // 0x00018560
	 { 547, 456, 518, 0, 0, 1024, 191, 191, 191, 255 }, // 0x00018570
	 { 549, 576, 490, 0, 0, 0, 153, 153, 153, 255 }, // 0x00018580
};

Vtx_t _spot18_room_3_vertices_00018590[8] = 
{
	 { 329, 5, -298, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018590
	 { 475, 5, 531, 0, 0, 0, 0, 0, 0, 0 }, // 0x000185A0
	 { 529, 563, -334, 0, 0, 0, 0, 0, 0, 0 }, // 0x000185B0
	 { 675, 563, 496, 0, 0, 0, 0, 0, 0, 0 }, // 0x000185C0
	 { 105, 87, -259, 0, 0, 0, 0, 0, 0, 0 }, // 0x000185D0
	 { 252, 87, 570, 0, 0, 0, 0, 0, 0, 0 }, // 0x000185E0
	 { 305, 645, -294, 0, 0, 0, 0, 0, 0, 0 }, // 0x000185F0
	 { 452, 645, 535, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018600
};

Gfx _spot18_room_3_dlist_00018610[] =
{
	gsDPPipeSync(), // 0x00018610
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00018618
	gsSPVertex(_spot18_room_3_vertices_00018590, 8, 0), // 0x00018620
	gsSPCullDisplayList(0, 7), // 0x00018628
	gsDPPipeSync(), // 0x00018630
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00018638
	gsDPPipeSync(), // 0x00018640
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00018648
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00018650
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_000194E8), // 0x00018658
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00018660
	gsDPLoadSync(), // 0x00018668
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00018670
	gsDPPipeSync(), // 0x00018678
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00018680
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00018688
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00018690
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104B50), // 0x00018698
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000186A0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000186A8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 127), // 0x000186B0
	gsSPVertex(_spot18_room_3_vertices_00018450, 4, 0), // 0x000186B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000186C0
	gsDPPipeSync(), // 0x000186C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0001B4E8), // 0x000186D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x000186D8
	gsDPLoadSync(), // 0x000186E0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000186E8
	gsDPPipeSync(), // 0x000186F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x000186F8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00018700
	gsDPSetPrimColor(0, 0, 255, 255, 255, 249), // 0x00018708
	gsSPVertex(_spot18_room_3_vertices_00018490, 4, 0), // 0x00018710
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00018718
	gsDPPipeSync(), // 0x00018720
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0001A4E8), // 0x00018728
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00018730
	gsDPLoadSync(), // 0x00018738
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00018740
	gsDPPipeSync(), // 0x00018748
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00018750
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00018758
	gsSPVertex(_spot18_room_3_vertices_000184D0, 12, 0), // 0x00018760
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00018768
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00018770
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00018778
	gsSPEndDisplayList(), // 0x00018780
};

Vtx_t _spot18_room_3_vertices_00018788[4] = 
{
	 { 47, 197, 566, 0, 0, 2048, 153, 153, 153, 255 }, // 0x00018788
	 { -79, 361, 598, 0, 1024, 0, 102, 102, 102, 255 }, // 0x00018798
	 { 47, 361, 566, 0, 0, 0, 114, 114, 114, 255 }, // 0x000187A8
	 { -79, 197, 598, 0, 1024, 2048, 153, 153, 153, 255 }, // 0x000187B8
};

Vtx_t _spot18_room_3_vertices_000187C8[16] = 
{
	 { -27, 542, 768, 0, 40, 0, 165, 165, 165, 255 }, // 0x000187C8
	 { -27, 469, 768, 0, 40, 1024, 178, 178, 178, 255 }, // 0x000187D8
	 { -156, 477, 754, 0, 911, 1024, 178, 178, 178, 255 }, // 0x000187E8
	 { -156, 542, 754, 0, 911, 0, 165, 165, 165, 255 }, // 0x000187F8
	 { 406, 517, 706, 0, 0, 0, 178, 178, 178, 255 }, // 0x00018808
	 { 388, 440, 712, 0, 0, 1024, 191, 191, 191, 255 }, // 0x00018818
	 { 334, 440, 731, 0, 1024, 1024, 191, 191, 191, 255 }, // 0x00018828
	 { 334, 497, 731, 0, 1024, 0, 178, 178, 178, 255 }, // 0x00018838
	 { 154, 297, 538, 0, 0, 0, 140, 140, 140, 255 }, // 0x00018848
	 { 154, 236, 538, 0, 0, 1024, 140, 140, 140, 255 }, // 0x00018858
	 { 94, 236, 553, 0, 1024, 1024, 140, 140, 140, 255 }, // 0x00018868
	 { 94, 297, 553, 0, 1024, 0, 140, 140, 140, 255 }, // 0x00018878
	 { -409, 543, 677, 0, 0, 0, 178, 178, 178, 255 }, // 0x00018888
	 { -416, 497, 667, 0, 0, 1024, 191, 191, 191, 255 }, // 0x00018898
	 { -472, 522, 594, 0, 1024, 1024, 191, 191, 191, 255 }, // 0x000188A8
	 { -465, 568, 604, 0, 1024, 0, 178, 178, 178, 255 }, // 0x000188B8
};

Vtx_t _spot18_room_3_vertices_000188C8[8] = 
{
	 { -459, 171, 521, 0, 0, 0, 0, 0, 0, 0 }, // 0x000188C8
	 { 411, 171, 675, 0, 0, 0, 0, 0, 0, 0 }, // 0x000188D8
	 { -437, 244, 397, 0, 0, 0, 0, 0, 0, 0 }, // 0x000188E8
	 { 433, 244, 551, 0, 0, 0, 0, 0, 0, 0 }, // 0x000188F8
	 { -495, 526, 723, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018908
	 { 376, 526, 877, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018918
	 { -473, 598, 599, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018928
	 { 397, 598, 753, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018938
};

Gfx _spot18_room_3_dlist_00018948[] =
{
	gsDPPipeSync(), // 0x00018948
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00018950
	gsSPVertex(_spot18_room_3_vertices_000188C8, 8, 0), // 0x00018958
	gsSPCullDisplayList(0, 7), // 0x00018960
	gsDPPipeSync(), // 0x00018968
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00018970
	gsDPPipeSync(), // 0x00018978
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00018980
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00018988
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_000194E8), // 0x00018990
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00018998
	gsDPLoadSync(), // 0x000189A0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000189A8
	gsDPPipeSync(), // 0x000189B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x000189B8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000189C0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x000189C8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104B50), // 0x000189D0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000189D8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000189E0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 127), // 0x000189E8
	gsSPVertex(_spot18_room_3_vertices_00018788, 4, 0), // 0x000189F0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000189F8
	gsDPPipeSync(), // 0x00018A00
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0001B4E8), // 0x00018A08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00018A10
	gsDPLoadSync(), // 0x00018A18
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00018A20
	gsDPPipeSync(), // 0x00018A28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00018A30
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00018A38
	gsDPSetPrimColor(0, 0, 255, 255, 255, 249), // 0x00018A40
	gsSPVertex(_spot18_room_3_vertices_000187C8, 16, 0), // 0x00018A48
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00018A50
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00018A58
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00018A60
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00018A68
	gsSPEndDisplayList(), // 0x00018A70
};

Vtx_t _spot18_room_3_vertices_00018A78[4] = 
{
	 { -368, 355, 444, 0, -1, 0, 102, 102, 102, 255 }, // 0x00018A78
	 { -405, 196, -83, 0, 6141, 2048, 153, 153, 153, 255 }, // 0x00018A88
	 { -405, 355, -83, 0, 6140, 0, 102, 102, 102, 255 }, // 0x00018A98
	 { -368, 196, 444, 0, 0, 2048, 153, 153, 153, 255 }, // 0x00018AA8
};

Vtx_t _spot18_room_3_vertices_00018AB8[8] = 
{
	 { -592, 514, -256, 0, 0, 0, 178, 178, 178, 255 }, // 0x00018AB8
	 { -592, 460, -256, 0, 0, 1024, 191, 191, 191, 255 }, // 0x00018AC8
	 { -596, 476, -341, 0, 1024, 1024, 191, 191, 191, 255 }, // 0x00018AD8
	 { -596, 514, -341, 0, 1024, 0, 178, 178, 178, 255 }, // 0x00018AE8
	 { -795, 709, 220, 0, 0, 0, 191, 191, 191, 255 }, // 0x00018AF8
	 { -795, 628, 220, 0, 0, 1024, 216, 216, 216, 255 }, // 0x00018B08
	 { -795, 640, 150, 0, 1024, 1024, 216, 216, 216, 255 }, // 0x00018B18
	 { -795, 697, 150, 0, 1024, 0, 191, 191, 191, 255 }, // 0x00018B28
};

Vtx_t _spot18_room_3_vertices_00018B38[4] = 
{
	 { -556, 514, 412, 0, 0, 0, 178, 178, 178, 255 }, // 0x00018B38
	 { -556, 440, 412, 0, 0, 1024, 191, 191, 191, 255 }, // 0x00018B48
	 { -564, 440, 264, 0, 2048, 1024, 191, 191, 191, 255 }, // 0x00018B58
	 { -564, 514, 264, 0, 2048, 0, 178, 178, 178, 255 }, // 0x00018B68
};

Vtx_t _spot18_room_3_vertices_00018B78[8] = 
{
	 { -498, 160, -358, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018B78
	 { -357, 160, 442, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018B88
	 { -378, 262, -380, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018B98
	 { -237, 262, 421, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018BA8
	 { -924, 676, -283, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018BB8
	 { -783, 676, 517, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018BC8
	 { -804, 778, -304, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018BD8
	 { -663, 778, 496, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018BE8
};

Gfx _spot18_room_3_dlist_00018BF8[] =
{
	gsDPPipeSync(), // 0x00018BF8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00018C00
	gsSPVertex(_spot18_room_3_vertices_00018B78, 8, 0), // 0x00018C08
	gsSPCullDisplayList(0, 7), // 0x00018C10
	gsDPPipeSync(), // 0x00018C18
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00018C20
	gsDPPipeSync(), // 0x00018C28
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00018C30
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00018C38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_000194E8), // 0x00018C40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00018C48
	gsDPLoadSync(), // 0x00018C50
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00018C58
	gsDPPipeSync(), // 0x00018C60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00018C68
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00018C70
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00018C78
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104B50), // 0x00018C80
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00018C88
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00018C90
	gsDPSetPrimColor(0, 0, 255, 255, 255, 127), // 0x00018C98
	gsSPVertex(_spot18_room_3_vertices_00018A78, 4, 0), // 0x00018CA0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00018CA8
	gsDPPipeSync(), // 0x00018CB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0001B4E8), // 0x00018CB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00018CC0
	gsDPLoadSync(), // 0x00018CC8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00018CD0
	gsDPPipeSync(), // 0x00018CD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00018CE0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00018CE8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 249), // 0x00018CF0
	gsSPVertex(_spot18_room_3_vertices_00018AB8, 8, 0), // 0x00018CF8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00018D00
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00018D08
	gsDPPipeSync(), // 0x00018D10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0001A4E8), // 0x00018D18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00018D20
	gsDPLoadSync(), // 0x00018D28
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00018D30
	gsDPPipeSync(), // 0x00018D38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00018D40
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00018D48
	gsSPVertex(_spot18_room_3_vertices_00018B38, 4, 0), // 0x00018D50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00018D58
	gsSPEndDisplayList(), // 0x00018D60
};

Vtx_t _spot18_room_3_vertices_00018D68[4] = 
{
	 { -99, 512, -381, 0, 1818, 0, 127, 127, 127, 255 }, // 0x00018D68
	 { -99, 440, -381, 0, 1818, 1024, 127, 127, 127, 255 }, // 0x00018D78
	 { 58, 440, -380, 0, 81, 1024, 127, 127, 127, 255 }, // 0x00018D88
	 { 58, 552, -380, 0, 81, 0, 127, 127, 127, 255 }, // 0x00018D98
};

Vtx_t _spot18_room_3_vertices_00018DA8[4] = 
{
	 { -238, 529, -545, 0, 1024, 0, 127, 127, 127, 255 }, // 0x00018DA8
	 { -238, 478, -545, 0, 1024, 1024, 127, 127, 127, 255 }, // 0x00018DB8
	 { -199, 478, -487, 0, 0, 1024, 127, 127, 127, 255 }, // 0x00018DC8
	 { -199, 529, -487, 0, 0, 0, 127, 127, 127, 255 }, // 0x00018DD8
};

Vtx_t _spot18_room_3_vertices_00018DE8[4] = 
{
	 { -360, 354, -409, 0, 0, 0, 114, 114, 114, 255 }, // 0x00018DE8
	 { -130, 197, -382, 0, 2030, 2048, 51, 51, 51, 255 }, // 0x00018DF8
	 { -130, 354, -382, 0, 2030, 0, 102, 102, 102, 255 }, // 0x00018E08
	 { -360, 196, -409, 0, 0, 2048, 153, 153, 153, 255 }, // 0x00018E18
};

Vtx_t _spot18_room_3_vertices_00018E28[6] = 
{
	 { -132, 600, -377, 0, -166, 1024, 191, 191, 191, 255 }, // 0x00018E28
	 { 592, 600, 31, 0, 2093, 1024, 191, 191, 191, 255 }, // 0x00018E38
	 { 592, 800, 31, 0, 2093, 435, 127, 127, 127, 255 }, // 0x00018E48
	 { -132, 800, -377, 0, -166, 435, 127, 127, 127, 255 }, // 0x00018E58
	 { -59, 908, -161, 0, 150, -61, 63, 63, 63, 255 }, // 0x00018E68
	 { 314, 891, 20, 0, 1299, 20, 63, 63, 63, 255 }, // 0x00018E78
};

Vtx_t _spot18_room_3_vertices_00018E88[4] = 
{
	 { -607, 800, -427, 0, -27, 0, 127, 127, 127, 255 }, // 0x00018E88
	 { -607, 600, -427, 0, -27, 1024, 140, 140, 140, 255 }, // 0x00018E98
	 { -130, 600, -378, 0, 2047, 1024, 165, 165, 165, 255 }, // 0x00018EA8
	 { -130, 800, -378, 0, 2047, 0, 127, 127, 127, 255 }, // 0x00018EB8
};

Vtx_t _spot18_room_3_vertices_00018EC8[8] = 
{
	 { -582, 179, -496, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018EC8
	 { 624, 179, -57, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018ED8
	 { -494, 273, -738, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018EE8
	 { 712, 273, -299, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018EF8
	 { -668, 867, -261, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018F08
	 { 539, 867, 178, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018F18
	 { -580, 960, -503, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018F28
	 { 627, 960, -64, 0, 0, 0, 0, 0, 0, 0 }, // 0x00018F38
};

Gfx _spot18_room_3_dlist_00018F48[] =
{
	gsDPPipeSync(), // 0x00018F48
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00018F50
	gsSPVertex(_spot18_room_3_vertices_00018EC8, 8, 0), // 0x00018F58
	gsSPCullDisplayList(0, 7), // 0x00018F60
	gsDPPipeSync(), // 0x00018F68
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00018F70
	gsDPPipeSync(), // 0x00018F78
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00018F80
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00018F88
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0001A4E8), // 0x00018F90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00018F98
	gsDPLoadSync(), // 0x00018FA0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00018FA8
	gsDPPipeSync(), // 0x00018FB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00018FB8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00018FC0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00018FC8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104B50), // 0x00018FD0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00018FD8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00018FE0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 249), // 0x00018FE8
	gsSPVertex(_spot18_room_3_vertices_00018D68, 4, 0), // 0x00018FF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00018FF8
	gsDPPipeSync(), // 0x00019000
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0001B4E8), // 0x00019008
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00019010
	gsDPLoadSync(), // 0x00019018
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00019020
	gsDPPipeSync(), // 0x00019028
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00019030
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00019038
	gsSPVertex(_spot18_room_3_vertices_00018DA8, 4, 0), // 0x00019040
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00019048
	gsDPPipeSync(), // 0x00019050
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_000194E8), // 0x00019058
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 1, 5, 0), // 0x00019060
	gsDPLoadSync(), // 0x00019068
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00019070
	gsDPPipeSync(), // 0x00019078
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 1, 5, 0), // 0x00019080
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00019088
	gsDPSetPrimColor(0, 0, 255, 255, 255, 127), // 0x00019090
	gsSPVertex(_spot18_room_3_vertices_00018DE8, 4, 0), // 0x00019098
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000190A0
	gsDPPipeSync(), // 0x000190A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0001CCE8), // 0x000190B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x000190B8
	gsDPLoadSync(), // 0x000190C0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000190C8
	gsDPPipeSync(), // 0x000190D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x000190D8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000190E0
	gsSPVertex(_spot18_room_3_vertices_00018E28, 6, 0), // 0x000190E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000190F0
	gsSP2Triangles(4, 3, 2, 0, 4, 2, 5, 0), // 0x000190F8
	gsDPPipeSync(), // 0x00019100
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_room_3_tex_0001BCE8), // 0x00019108
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x00019110
	gsDPLoadSync(), // 0x00019118
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00019120
	gsDPPipeSync(), // 0x00019128
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x00019130
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00019138
	gsSPVertex(_spot18_room_3_vertices_00018E88, 4, 0), // 0x00019140
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00019148
	gsSPEndDisplayList(), // 0x00019150
};

Vtx_t _spot18_room_3_vertices_00019158[4] = 
{
	 { -17, 523, 189, 0, 0, 1024, 229, 229, 229, 127 }, // 0x00019158
	 { 15, 523, 187, 0, 1024, 1024, 229, 229, 229, 127 }, // 0x00019168
	 { 15, 555, 187, 0, 1024, 0, 229, 229, 229, 127 }, // 0x00019178
	 { -17, 555, 189, 0, 0, 0, 229, 229, 229, 127 }, // 0x00019188
};

Vtx_t _spot18_room_3_vertices_00019198[8] = 
{
	 { -17, 523, 187, 0, 0, 0, 0, 0, 0, 0 }, // 0x00019198
	 { 15, 523, 187, 0, 0, 0, 0, 0, 0, 0 }, // 0x000191A8
	 { -17, 555, 187, 0, 0, 0, 0, 0, 0, 0 }, // 0x000191B8
	 { 15, 555, 187, 0, 0, 0, 0, 0, 0, 0 }, // 0x000191C8
	 { -17, 523, 189, 0, 0, 0, 0, 0, 0, 0 }, // 0x000191D8
	 { 15, 523, 189, 0, 0, 0, 0, 0, 0, 0 }, // 0x000191E8
	 { -17, 555, 189, 0, 0, 0, 0, 0, 0, 0 }, // 0x000191F8
	 { 15, 555, 189, 0, 0, 0, 0, 0, 0, 0 }, // 0x00019208
};

Gfx _spot18_room_3_dlist_00019218[] =
{
	gsDPPipeSync(), // 0x00019218
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00019220
	gsSPVertex(_spot18_room_3_vertices_00019198, 8, 0), // 0x00019228
	gsSPCullDisplayList(0, 7), // 0x00019230
	gsDPPipeSync(), // 0x00019238
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00019240
	gsDPPipeSync(), // 0x00019248
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00019250
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00019258
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _spot18_scene_tex_00009848), // 0x00019260
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 4, 0), // 0x00019268
	gsDPLoadSync(), // 0x00019270
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00019278
	gsDPPipeSync(), // 0x00019280
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 1, 4, 0), // 0x00019288
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00019290
	gsDPSetCombineLERP(TEXEL0, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, K5, K5, 0, COMBINED, TEXEL1, 0, 1, COMBINED), // 0x00019298
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104B50), // 0x000192A0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000192A8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000192B0
	gsDPSetPrimColor(0, 0, 229, 229, 229, 127), // 0x000192B8
	gsSPVertex(_spot18_room_3_vertices_00019158, 4, 0), // 0x000192C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000192C8
	gsSPEndDisplayList(), // 0x000192D0
};

Vtx_t _spot18_room_3_vertices_000192D8[8] = 
{
	 { -34, 754, 1213, 0, 11, -33, 255, 255, 255, 255 }, // 0x000192D8
	 { -22, 897, 1636, 0, 28, 286, 255, 255, 255, 255 }, // 0x000192E8
	 { -22, 773, 1636, 0, 28, 286, 255, 255, 255, 255 }, // 0x000192F8
	 { -34, 606, 1213, 0, 11, -33, 255, 255, 255, 255 }, // 0x00019308
	 { 154, 606, 1213, 0, 279, -33, 255, 255, 255, 255 }, // 0x00019318
	 { 142, 773, 1636, 0, 262, 286, 255, 255, 255, 255 }, // 0x00019328
	 { 142, 897, 1636, 0, 262, 286, 255, 255, 255, 255 }, // 0x00019338
	 { 154, 754, 1213, 0, 279, -33, 255, 255, 255, 255 }, // 0x00019348
};

Vtx_t _spot18_room_3_vertices_00019358[8] = 
{
	 { -34, 606, 1213, 0, 0, 0, 0, 0, 0, 0 }, // 0x00019358
	 { 154, 606, 1213, 0, 0, 0, 0, 0, 0, 0 }, // 0x00019368
	 { -34, 737, 1165, 0, 0, 0, 0, 0, 0, 0 }, // 0x00019378
	 { 154, 737, 1165, 0, 0, 0, 0, 0, 0, 0 }, // 0x00019388
	 { -34, 776, 1680, 0, 0, 0, 0, 0, 0, 0 }, // 0x00019398
	 { 154, 776, 1680, 0, 0, 0, 0, 0, 0, 0 }, // 0x000193A8
	 { -34, 907, 1633, 0, 0, 0, 0, 0, 0, 0 }, // 0x000193B8
	 { 154, 907, 1633, 0, 0, 0, 0, 0, 0, 0 }, // 0x000193C8
};

Gfx _spot18_room_3_dlist_000193D8[] =
{
	gsDPPipeSync(), // 0x000193D8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000193E0
	gsSPVertex(_spot18_room_3_vertices_00019358, 8, 0), // 0x000193E8
	gsSPCullDisplayList(0, 7), // 0x000193F0
	gsDPPipeSync(), // 0x000193F8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00019400
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00019408
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00019410
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, 0x08000000), // 0x00019418
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 3, 0, 0, 3, 0), // 0x00019420
	gsDPLoadSync(), // 0x00019428
	gsDPLoadBlock(7, 0, 0, 31, 2048), // 0x00019430
	gsDPPipeSync(), // 0x00019438
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 1, 0, 0, 0, 2, 3, 0, 0, 3, 0), // 0x00019440
	gsDPSetTileSize(0, 0, 0, 28, 28), // 0x00019448
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00019450
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104B50), // 0x00019458
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00019460
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00019468
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00019470
	gsSPVertex(_spot18_room_3_vertices_000192D8, 8, 0), // 0x00019478
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00019480
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00019488
	gsSP2Triangles(7, 6, 1, 0, 7, 1, 0, 0), // 0x00019490
	gsSP2Triangles(5, 2, 1, 0, 5, 1, 6, 0), // 0x00019498
	gsSP2Triangles(3, 2, 5, 0, 3, 5, 4, 0), // 0x000194A0
	gsSPEndDisplayList(), // 0x000194A8
};

static u8 unaccounted194B0[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x86, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x89, 0x48, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x8B, 0xF8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x8F, 0x48, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x92, 0x18, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x93, 0xD8, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 _spot18_room_3_tex_000194E8[] = 
{
	0x0000000000000000, 0x0000000000000000, 0x0000000000017B07, 0x0001000000000000,  // 0x000194E8 
	0x0000000000000000, 0x0001CD877B077B07, 0x7B07000100000000, 0x0000000000000000,  // 0x00019508 
	0x0000000000000000, 0x0000000000000000, 0x000000017B07CD87, 0x7B07000100000000,  // 0x00019528 
	0x0000000000000000, 0x0001CD87CD87CD87, 0xCD87000100000000, 0x0000000000000000,  // 0x00019548 
	0x0000000000000000, 0x0000000000000000, 0x00017B07CD87CD87, 0x7B07000100000000,  // 0x00019568 
	0x0000000000000000, 0x00017B07CD87CD87, 0xCD87000100000000, 0x0000000000000000,  // 0x00019588 
	0x0000000000000000, 0x0000000000000000, 0x0001CD87CD87CD87, 0x7B07000100000000,  // 0x000195A8 
	0x0000000000000000, 0x00017B07CD87CD87, 0xCD877B0700010000, 0x0000000000000000,  // 0x000195C8 
	0x0000000000000000, 0x0000000000000000, 0x00017B077B07CD87, 0x7B07000100000000,  // 0x000195E8 
	0x0000000000000000, 0x00017B07CD87CD87, 0xCD87000100000000, 0x0000000000000000,  // 0x00019608 
	0x0000000000000000, 0x0000000000000000, 0x00017B07CD87CD87, 0x0001000000000000,  // 0x00019628 
	0x0000000000000000, 0x00000001CD87CD87, 0xCD87000100000000, 0x0000000000000000,  // 0x00019648 
	0x0000000000000000, 0x0000000000000000, 0x0001CD87CD87CD87, 0x0001000000000000,  // 0x00019668 
	0x0000000000000000, 0x0000000000017B07, 0x7B07000100000000, 0x0000000000000000,  // 0x00019688 
	0x0000000000000000, 0x0000000000000000, 0x0001CD877B070001, 0x0000000000000000,  // 0x000196A8 
	0x0000000000000000, 0x0000000000000001, 0x7B07000100000000, 0x0000000000000000,  // 0x000196C8 
	0x0000000000000000, 0x0000000000000000, 0x00017B077B070001, 0x0000000000010001,  // 0x000196E8 
	0x0001000000000000, 0x0000000000000000, 0x0001CD8700000000, 0x0000000000000000,  // 0x00019708 
	0x0000000000000000, 0x0000000000000001, 0x7B077B0700010000, 0x00000001CD87CD87,  // 0x00019728 
	0xCD86000000000000, 0x0000000000000000, 0x00017B0700007B06, 0x0000000000000000,  // 0x00019748 
	0x0000000000000000, 0x000000000001CD87, 0x7B077B0700010001, 0x0001CD87CD87CD87,  // 0x00019768 
	0xCD87CD8600000000, 0x0000000000000000, 0x000000017B070000, 0x0000000000000000,  // 0x00019788 
	0x0000000000000000, 0x0000000100017B07, 0x7B07CD877B07CD87, 0xCD87CD87CD87CD86,  // 0x000197A8 
	0xCD86CD86CD86CD87, 0x0001000000000000, 0x000000017B07CD87, 0x0000000000000000,  // 0x000197C8 
	0x0000000000000000, 0x0001CD87CD877B07, 0x7B077B07CD87CD87, 0xCD87CD87CD87CD86,  // 0x000197E8 
	0xCD87CD87CD87CD87, 0xCD87000100000000, 0x0000000000017B07, 0xCD87000100000000,  // 0x00019808 
	0x0000000000000000, 0x0001CD877B077B07, 0x7B077B07CD87CD87, 0xCD87CD87CD87CD87,  // 0x00019828 
	0xCD87CD87CD87CD87, 0x0001000100010000, 0x0000000000017B07, 0xCD87CD8700010000,  // 0x00019848 
	0x0000000000000001, 0xCD87CD877B077B07, 0x7B07CD87CD87CD87, 0x00010001CD87CD87,  // 0x00019868 
	0xCD87CD87CD87CD87, 0xCD87CD87CD870001, 0x0000000000000001, 0xCD87CD8700010000,  // 0x00019888 
	0x000000000001CD87, 0xCD877B077B077B07, 0x7B07CD87CD870001, 0x0001CD87CD87CD87,  // 0x000198A8 
	0xCD87CD87CD87CD87, 0xCD870001CD87CD87, 0x0001000000017B07, 0xCD877B0700010000,  // 0x000198C8 
	0x000000017B07CD87, 0x7B077B067B067B07, 0x7B07CD87CD87CD87, 0xCD870001CD87CD87,  // 0x000198E8 
	0xCD87CD87CD87CD87, 0x000113D90001CD87, 0x7B07000100017B07, 0xCD877B0700010000,  // 0x00019908 
	0x00000001CD87CD87, 0x7B077B067B06CD86, 0xCD87CD87CD87CD87, 0x000113D90001CD87,  // 0x00019928 
	0xCD87CD87CD87CD87, 0x000113D90001CD87, 0x7B0700017B07CD87, 0xCD877B0700010000,  // 0x00019948 
	0x00017B07CD87CD87, 0x7B07CD867B06CD86, 0xCD87CD87CD87CD87, 0x000113D90001CD87,  // 0x00019968 
	0xCD877B070001CD87, 0xCD870001CD87CD87, 0xCD877B077B07CD87, 0x7B07000100000000,  // 0x00019988 
	0x00017B07CD87CD87, 0x7B077B067B06CD86, 0xCD86CD87CD87CD87, 0xCD870001CD87CD87,  // 0x000199A8 
	0x0001CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD877B077B07CD87, 0x7B07000100000000,  // 0x000199C8 
	0x7B077B07CD87CD87, 0x7B077B067B06CD86, 0xCD86CD877B077B07, 0xCD87CD87CD87CD87,  // 0x000199E8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD877B07CD877B07, 0x0001000000000000,  // 0x00019A08 
	0x00017B07CD87CD87, 0xCD877B077B07CD86, 0xCD86CD867B077B07, 0xCD87CD87CD87CD87,  // 0x00019A28 
	0xCD87CD8700010001, 0x00010001CD87CD87, 0xCD877B07CD870001, 0x0000000000000000,  // 0x00019A48 
	0x00017B07CD87CD87, 0xCD877B077B07CD86, 0xCD86CD867B067B07, 0x7B07000100010001,  // 0x00019A68 
	0x00010001CD87CD87, 0xCD87CD87CD87CD87, 0xCD877B077B070001, 0x0000000000000000,  // 0x00019A88 
	0x00000001CD87CD87, 0xCD87CD877B07CD87, 0xCD86CD867B06CD86, 0x7B07CD87CD87CD87,  // 0x00019AA8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD8700010000, 0x0000000000000000,  // 0x00019AC8 
	0x00000001CD87CD87, 0xCD87CD87CD87CD87, 0xCD86CD86CD86CD86, 0xCD87CD87CD87CD87,  // 0x00019AE8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD8700010000, 0x0000000000000000,  // 0x00019B08 
	0x000000017B07CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD86CD87, 0xCD87CD87CD87CD87,  // 0x00019B28 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD877B0700010000, 0x0000000000000000,  // 0x00019B48 
	0x000000000001CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87,  // 0x00019B68 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87000100000000, 0x0000000000000000,  // 0x00019B88 
	0x0000000000017B07, 0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87,  // 0x00019BA8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87000100000000, 0x0000000000000000,  // 0x00019BC8 
	0x0000000000017B07, 0x7B07CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD86CD86CD86,  // 0x00019BE8 
	0xCD86CD86CD86CD87, 0xCD87CD87CD87CD87, 0xCD87CD877B070001, 0x0000000000000000,  // 0x00019C08 
	0x0000000000017B07, 0x7B077B077B07CD87, 0x7B07CD87CD87CD86, 0xCD86CD86CD87CD87,  // 0x00019C28 
	0xCD87CD87CD86CD86, 0xCD87CD87CD87CD87, 0xCD87CD87CD870001, 0x0000000000000000,  // 0x00019C48 
	0x0000000000000001, 0x7B077B067B067B06, 0x7B06CD87CD86CD86, 0xCD86CD87CD87CD87,  // 0x00019C68 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD867B06, 0x0000000000000000,  // 0x00019C88 
	0x0000000000000001, 0x7B077B067B067B06, 0x7B06CD86CD86CD86, 0xCD87CD87CD87CD87,  // 0x00019CA8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD86CD867B06, 0x0000000000000000,  // 0x00019CC8 
	0x0000000000000001, 0x7B077B077B067B06, 0x7B06CD86CD86CD87, 0xCD87CD87CD87CD87,  // 0x00019CE8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD86CD867B06, 0x0000000000000000,  // 0x00019D08 
	0x0000000000017B07, 0x7B077B067B067B06, 0x7B06CD86CD86CD86, 0xCD86CD87CD87CD87,  // 0x00019D28 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD86, 0xCD86CD86CD867B07, 0x0001000000000000,  // 0x00019D48 
	0x0000000000017B07, 0x7B077B077B077B06, 0x7B06CD87CD87CD87, 0xCD87CD87CD87CD87,  // 0x00019D68 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD877B07, 0x0001000000000000,  // 0x00019D88 
	0x0000000000017B07, 0x7B077B077B077B07, 0x7B07CD87CD87CD87, 0xCD87CD87CD87CD87,  // 0x00019DA8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD877B07, 0x0001000000000000,  // 0x00019DC8 
	0x0000000000017B07, 0x7B077B077B077B07, 0x7B07CD87CD87CD86, 0xCD86CD86CD87CD87,  // 0x00019DE8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD867B067B07, 0x0001000000000000,  // 0x00019E08 
	0x0000000000007B06, 0x7B077B077B077B07, 0x7B06CD86CD87CD86, 0xCD86CD87CD87CD87,  // 0x00019E28 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD877B07, 0x0001000000000000,  // 0x00019E48 
	0x0000000000000000, 0x7B077B077B077B06, 0x7B067B06CD86CD87, 0xCD87CD87CD87CD87,  // 0x00019E68 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD870001, 0x0000000000000000,  // 0x00019E88 
	0x0000000000000000, 0x7B067B077B077B07, 0x7B077B06CD86CD86, 0xCD87CD87CD87CD87,  // 0x00019EA8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0xCD87CD87CD870000, 0x0000000000000000,  // 0x00019EC8 
	0x0000000000000000, 0x7B067B067B067B06, 0x7B067B067B06CD87, 0xCD87CD87CD87CD87,  // 0x00019EE8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD87CD87, 0x7B077B067B060000, 0x0000000000000000,  // 0x00019F08 
	0x0000000000000000, 0x7B067B067B067B06, 0x7B077B077B077B07, 0xCD87CD87CD87CD87,  // 0x00019F28 
	0xCD8700010001CD87, 0xCD87CD87CD87CD86, 0x7B067B067B060000, 0x0000000000000000,  // 0x00019F48 
	0x0000000000000000, 0x00007B067B067B06, 0x7B077B077B07CD87, 0xCD87CD87CD87CD87,  // 0x00019F68 
	0xCD87CD870001CD87, 0xCD87CD87CD867B06, 0x7B067B0600010000, 0x0000000000000000,  // 0x00019F88 
	0x0000000000000000, 0x00007B067B067B06, 0x7B077B077B077B07, 0xCD87CD87CD87CD87,  // 0x00019FA8 
	0xCD87CD87CD87CD87, 0xCD87CD87CD867B07, 0x7B07000100000000, 0x0000000000000000,  // 0x00019FC8 
	0x0000000000000000, 0x000000007B067B06, 0x7B077B077B077B07, 0x7B077B07CD87CD87,  // 0x00019FE8 
	0xCD87CD87CD87CD87, 0xCD87CD877B077B07, 0x7B07000100000000, 0x0000000000000000,  // 0x0001A008 
	0x0000000000000000, 0x0000000000007B07, 0x7B077B077B077B07, 0x7B077B07CD87CD87,  // 0x0001A028 
	0xCD877B077B077B07, 0x7B077B077B077B07, 0x0001000000000000, 0x0001000100000000,  // 0x0001A048 
	0x0000000000000000, 0x0000000000000001, 0x7B077B077B077B07, 0x7B077B077B077B07,  // 0x0001A068 
	0x7B077B077B077B07, 0x7B077B077B077B07, 0x0001000000000001, 0xCD877B0700010000,  // 0x0001A088 
	0x0000000000000000, 0x0000000000000000, 0x000100017B077B07, 0x7B067B077B077B07,  // 0x0001A0A8 
	0x7B077B077B077B07, 0x7B077B07CD87CD87, 0x0001000000000001, 0xCD877B0700010000,  // 0x0001A0C8 
	0x0000000000000000, 0x0000000000000000, 0x000000017B077B07, 0x7B067B067B077B07,  // 0x0001A0E8 
	0x000100017B077B07, 0x7B077B07CD87CD87, 0xCD8700010001CD87, 0xCD877B0700010000,  // 0x0001A108 
	0x0000000000000000, 0x0000000000000000, 0x0000000000017B06, 0x7B067B067B067B07,  // 0x0001A128 
	0x0001000000010001, 0x7B077B077B07CD87, 0xCD87CD87CD87CD87, 0xCD877B0700010000,  // 0x0001A148 
	0x0000000000000000, 0x0000000000000000, 0x0000000000007B06, 0x7B067B07CD870001,  // 0x0001A168 
	0x0000000000000001, 0x7B077B077B077B07, 0xCD87CD87CD87CD87, 0xCD877B0700010000,  // 0x0001A188 
	0x0000000000000000, 0x0000000000000000, 0x0000000000007B06, 0x7B077B07CD870001,  // 0x0001A1A8 
	0x0000000000000000, 0x0001000100017B07, 0x7B077B07CD87CD87, 0x7B07000100000000,  // 0x0001A1C8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000017B07, 0x7B077B077B070001,  // 0x0001A1E8 
	0x0000000000000000, 0x0000000000000001, 0x7B077B07CD87CD87, 0x7B07000100000000,  // 0x0001A208 
	0x0000000000000000, 0x0000000000000000, 0x0000000000017B07, 0x7B07CD877B070001,  // 0x0001A228 
	0x0000000000000000, 0x0000000000000001, 0x7B077B07CD877B07, 0x0001000000000000,  // 0x0001A248 
	0x0000000000000000, 0x0000000000000000, 0x0000000000017B07, 0x7B07CD8700010000,  // 0x0001A268 
	0x0000000000000000, 0x0000000000000000, 0x0001CD87CD870001, 0x0000000000000000,  // 0x0001A288 
	0x0000000000000000, 0x0000000000000000, 0x0000000000017B07, 0xCD877B0700010000,  // 0x0001A2A8 
	0x0000000000000000, 0x0000000000000000, 0x000000017B070001, 0x0000000000000000,  // 0x0001A2C8 
	0x0000000000000000, 0x0000000000000000, 0x000000017B077B07, 0xCD87000100000000,  // 0x0001A2E8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000010000, 0x0000000000000000,  // 0x0001A308 
	0x0000000000000000, 0x0000000000000000, 0x000000017B077B07, 0xCD87000100000000,  // 0x0001A328 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0001A348 
	0x0000000000000000, 0x0000000000000000, 0x000000017B077B07, 0x7B07CD8700010000,  // 0x0001A368 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0001A388 
	0x0000000000000000, 0x0000000000000000, 0x0000000000017B07, 0x7B07CD877B070001,  // 0x0001A3A8 
	0x0001000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0001A3C8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000001, 0x7B077B07CD87CD87,  // 0x0001A3E8 
	0xCD87000100000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0001A408 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00017B07CD87CD87,  // 0x0001A428 
	0x0001000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0001A448 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000100010001,  // 0x0001A468 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0001A488 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0001A4A8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x0001A4C8 
};

u64 _spot18_room_3_tex_0001A4E8[] = 
{
	0x7AC8834E8B8E834C, 0x9C107B0C49C472CA, 0x7B0C72CAA454A454, 0xAC96B497AC9793CF,  // 0x0001A4E8 
	0x7B4D834FAC558B8F, 0x8BCF8B8F62896A89, 0x730D834F8B8D834D, 0x93CF93CE838C8B8C,  // 0x0001A508 
	0x834E834C62885A48, 0x834C93CE9C10A453, 0xB495AC53730B6A89, 0x7B0B72CA7B4C93D0,  // 0x0001A528 
	0x7B0A93D072CA6A88, 0x830CA4548BD093CE, 0x834C72CA8BCE9C10, 0x7B4C8B8EB496BD18,  // 0x0001A548 
	0x6A887B0A730A72CA, 0x9C107B0C49C472CA, 0x730A6A8AA412A455, 0xA455A453BCD793D1,  // 0x0001A568 
	0x834D7B4F834F72CB, 0x730D7B0D6A896ACD, 0x6ACB834F9C139C13, 0x8B8F93CF7B0D7B0A,  // 0x0001A588 
	0x7B4C7B0C5A465A06, 0x834C93D1AC95A413, 0xAC95AC958B91834F, 0x8B8F7B4D8B8F8B8F,  // 0x0001A5A8 
	0x7B0B8B8E62486AC8, 0x834C9C1093D093D0, 0x8B8E8B4C93CE8B8E, 0x6ACA7B0CA454A492,  // 0x0001A5C8 
	0x8B8E9C107B0A6246, 0x838E7B4E39425206, 0x62886ACA834F834D, 0x834B838D93D1730D,  // 0x0001A5E8 
	0x5A49520952095249, 0x5A4B5A4B49C75209, 0x628B628B6ACD62CB, 0x7B4F94119411AC55,  // 0x0001A608 
	0x9412838E5A065A47, 0x8B8F93D19C119C13, 0xB4D7B4D5AC959C11, 0x834D6A8972CB8B8F,  // 0x0001A628 
	0x834D93CF62476246, 0x834EAC94A45493CE, 0xA452B4D6A41093D0, 0x7B0C9C12A454C518,  // 0x0001A648 
	0x93D09BD06A885A06, 0x8B8E7B0E290249C6, 0x6A8A6ACB834D7B0B, 0x72CB72CB6ACD5A4B,  // 0x0001A668 
	0x520952095A4B5A49, 0x5209520941C74187, 0x524952495A8B5A49, 0x5A4B7B0D93D19C13,  // 0x0001A688 
	0x9413834D62476249, 0x834F93D19C119C11, 0xA455A4139C138BD1, 0x7B0D6A896ACB834D,  // 0x0001A6A8 
	0x834D938F7B4D72CB, 0x8B4EB494A41293D0, 0xAC54A4129BD09C12, 0x830CA454A454C51A,  // 0x0001A6C8 
	0x834E7B0A628872CA, 0x838E7B0C41845A46, 0x72CB6A8B730B730B, 0x62895A49628B5A4B,  // 0x0001A6E8 
	0x520949C74A0941C7, 0x3945314529052905, 0x418741C75A4B5249, 0x5A49524972CD8B8F,  // 0x0001A708 
	0x93D1838F62896289, 0x8B4F7B0D72CB730D, 0x6A8B6A8B52095209, 0x52095A496A8B6ACB,  // 0x0001A728 
	0x7B4D834F93D1838F, 0x8B8EAC549C1293D0, 0xAC529BD0938E9BD0, 0x8B4CA412A454B4D6,  // 0x0001A748 
	0x7B0C938EA452A454, 0x72CA730E39426A89, 0x7B0B72CB6AC96249, 0x49C752495A4B524B,  // 0x0001A768 
	0x398720C308410001, 0x0001000108410841, 0x104318C3314749C9, 0x524952095A4B5A4B,  // 0x0001A788 
	0x730D730B62896289, 0x72CB6289628B5A49, 0x5209520939874187, 0x41874A095A4B5A4B,  // 0x0001A7A8 
	0x62497B4D730B7B0B, 0x7B4DA45493D093D0, 0xAC96A45493D0834A, 0x8B8C8B8E9C12AC52,  // 0x0001A7C8 
	0x7B0A838EA454AC96, 0x7B0C7B0C498472CB, 0x72CB730B5A4949C7, 0x49C7520952092905,  // 0x0001A7E8 
	0x0841000100010001, 0x0001000100010001, 0x0001000100011081, 0x39454A0952495209,  // 0x0001A808 
	0x5209628B62495A49, 0x520752095A4B5249, 0x4187398720C320C3, 0x2905394741C94A09,  // 0x0001A828 
	0x41C75A8B7B0D7B0D, 0x834D94108B8E938E, 0xA4529C1093D093CE, 0x8BCC9C109C12AC54,  // 0x0001A848 
	0x72CA834CAC54B496, 0x8B908BD0498372C9, 0x834D6ACB4A075207, 0x520741C729050001,  // 0x0001A868 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001290541C741C7,  // 0x0001A888 
	0x41C749C749C74187, 0x418749C741872905, 0x1083080100010001, 0x0001080118C33987,  // 0x0001A8A8 
	0x39874A096ACB7B0D, 0x834F93D1834C8B8E, 0xA4529C109410A454, 0x93CE93CE938E9BD0,  // 0x0001A8C8 
	0x730CA452B4D8AC96, 0xAC949C1352478BCF, 0x834D5A49520749C7, 0x3145290500010001,  // 0x0001A8E8 
	0x0001000100010001, 0x0001000100010001, 0x0001000100010001, 0x0001000100011083,  // 0x0001A908 
	0x2103314539453145, 0x2905290510830001, 0x0001000100010001, 0x00010001000120C3,  // 0x0001A928 
	0x314541C75A49730D, 0x8B8F8BD17B4C8BD0, 0x9C10938E7B0A7B0C, 0x93CE8B8C9BCEA452,  // 0x0001A948 
	0x7B0CAC96B4D6A412, 0x9C12834F52078BD1, 0x72CD520939852905, 0x1883000100010001,  // 0x0001A968 
	0x0001000100010001, 0x0001000100010001, 0x0841084100010001, 0x0001000100010001,  // 0x0001A988 
	0x0001000108411041, 0x1083108308410001, 0x0001000100010001, 0x0001000100011043,  // 0x0001A9A8 
	0x20C3314549C75A8B, 0x834F8B8F628872CA, 0x834C8B4C834A834C, 0x938E9BCE9BCC9C10,  // 0x0001A9C8 
	0x834EAC96B4D6A452, 0x8BD0834F628993D1, 0x628B5209398520C3, 0x0001000100010001,  // 0x0001A9E8 
	0x0001000108010001, 0x0841084108010801, 0x0801080108010001, 0x0001000100010001,  // 0x0001AA08 
	0x0001000100010801, 0x0841104310430801, 0x0801084108410001, 0x0801084110431083,  // 0x0001AA28 
	0x1083290541874A07, 0x8B8F8B8F5A467B0C, 0x834C834C93CE8BCE, 0x8B8C938C938C8B8E,  // 0x0001AA48 
	0x8B8E93D0A454B4D8, 0x9C1293D16247730B, 0x4A074A0731451083, 0x0841000108430841,  // 0x0001AA68 
	0x0001000100010001, 0x1041084108410001, 0x0001000108410841, 0x1083084108410001,  // 0x0001AA88 
	0x0001000100010001, 0x0001084108410801, 0x0001084108010801, 0x0841108318831883,  // 0x0001AAA8 
	0x108318C331455209, 0xA45593D17B0B838E, 0x834E8B8E93D093D0, 0x93D07B4C834C93CE,  // 0x0001AAC8 
	0x9C1293D0AC94B4D8, 0x9C158B916A896289, 0x5209398529031041, 0x1043108308410841,  // 0x0001AAE8 
	0x0001080100010001, 0x0841084108410001, 0x0001084108410841, 0x0841084108410841,  // 0x0001AB08 
	0x0841084108410841, 0x0841084108410841, 0x0841084108410841, 0x0841108310431041,  // 0x0001AB28 
	0x0841188329055209, 0x9C1393D17B0D72CA, 0x6A8862887B0A834C, 0x7B0C6288730A8B8C,  // 0x0001AB48 
	0xA4529C10B4D6BCD8, 0x94158B9172CB6249, 0x4A07290310810841, 0x1043104108410841,  // 0x0001AB68 
	0x0801084100010801, 0x1083188308410841, 0x0841084108410841, 0x0841104110831083,  // 0x0001AB88 
	0x1041084108410841, 0x0841104110410841, 0x0841084108410841, 0x1041104108411043,  // 0x0001ABA8 
	0x0841104129055A4B, 0x9C137B4D834D72CA, 0x62886288730A72CA, 0x520662888B4A834A,  // 0x0001ABC8 
	0x8B90AC96BCD8AC54, 0x9C13AC957B4F5A49, 0x4A07314510831041, 0x1041108310831083,  // 0x0001ABE8 
	0x0841084108411041, 0x18C318C318C31081, 0x1041188310811883, 0x188320C320C31883,  // 0x0001AC08 
	0x1041104110811041, 0x188318C320C320C3, 0x18C3104108411081, 0x18831083188320C5,  // 0x0001AC28 
	0x18C320C33145628B, 0x8B8F6A8B7B0D7B0C, 0x6A886A887B0A5206, 0x6A887B0A9410938E,  // 0x0001AC48 
	0x93D0AC96BD18AC96, 0xAC55B4D9838F5A4B, 0x5207314518830841, 0x1041108318830841,  // 0x0001AC68 
	0x08411083104118C3, 0x314520C3314520C3, 0x108118C320C320C3, 0x3145290521052105,  // 0x0001AC88 
	0x20C320C329053145, 0x2905314531452905, 0x20C320C320C31881, 0x2905394739473147,  // 0x0001ACA8 
	0x2905314541878BD1, 0x7B4F62897B4D7B0C, 0x6ACA6AC87B0C5204, 0x7B0A7B0A938E8B8E,  // 0x0001ACC8 
	0x9C108B8E9C108B8E, 0xB4D9BD198B915209, 0x628B41C721031081, 0x1083104110830843,  // 0x0001ACE8 
	0x104320C318C32903, 0x39854187290320C3, 0x1883290520C32905, 0x2905294531473147,  // 0x0001AD08 
	0x290541C77B0D730D, 0x6ACB49C931472905, 0x31473947314520C3, 0x3145398741893147,  // 0x0001AD28 
	0x39473987628B9C13, 0x8BD16A8972CB730A, 0x62485204628851C4, 0x7B0A938C93CE730A,  // 0x0001AD48 
	0x93D093D0A4529BD0, 0xBD1BBD1993D35209, 0x6289520929051041, 0x1883108329051883,  // 0x0001AD68 
	0x2905290529033985, 0x398741C731052905, 0x2905398729053145, 0x3145314539875209,  // 0x0001AD88 
	0x5209834F834F6A89, 0x6ACB6ACB4A093147, 0x39874A09314520C1, 0x52094A09524B49C9,  // 0x0001ADA8 
	0x41C941878391A455, 0x8BD15A497B0B7B0C, 0x628849C26A8851C4, 0x72C8938E9BCE72CA,  // 0x0001ADC8 
	0x8B8E9410A452AC94, 0xB4D7B4D79C135209, 0x5A495A4B29051041, 0x1883188331472105,  // 0x0001ADE8 
	0x3947398739854187, 0x52094A0931453145, 0x3145398731454187, 0x41C7398752095209,  // 0x0001AE08 
	0x94138B9183917B4D, 0x730B6A8B628B5A49, 0x314749C931052081, 0x5209520B6ACD628B,  // 0x0001AE28 
	0x52097B4FA455A453, 0x8B8F6249730A7B0C, 0x6ACA4984834A5206, 0x730A834C938E938E,  // 0x0001AE48 
	0x830CA412AC94AC96, 0x8BCE9C539C135249, 0x5A49628B39451081, 0x20C5210541C941C7,  // 0x0001AE68 
	0x520B49C7314541C5, 0x49C74A0939453145, 0x31454187418749C7, 0x418749C752097B0F,  // 0x0001AE88 
	0x834F9C1372CB834F, 0x730D730D7B4D834F, 0x730B3147394520C1, 0x5A8B520B6ACD5209,  // 0x0001AEA8 
	0x83519C139C139C13, 0x834D62897B0A730A, 0x72CA52068B4C6248, 0x830C8BCE8B8E938C,  // 0x0001AEC8 
	0x8B4E93D0B496AC96, 0x834A834D8B8F5209, 0x5209628941C71881, 0x290539894A0949C9,  // 0x0001AEE8 
	0x4A09418531454A09, 0x49C7520939453945, 0x418541C7520941C7, 0x418752095A8B9413,  // 0x0001AF08 
	0x9C13A4557B0D7B0D, 0x72CB93D393D193D1, 0x834D72CB5A493943, 0x6ACD5A8B5A8B9413,  // 0x0001AF28 
	0xA455A45593D18BCF, 0x7B4D72CB7B0A7B0A, 0x834C62867B087B0A, 0x834A8B8C93CE93D0,  // 0x0001AF48 
	0x834C72CA93D0A452, 0x834A7B0A730B8391, 0x4A095209520720C3, 0x49C949C941874A07,  // 0x0001AF68 
	0x52094A09314541C7, 0x49C749C731453145, 0x418741C74A094A09, 0x5A8B5A8B9C55A455,  // 0x0001AF88 
	0x93D1A4558B8F7B0B, 0x7B0B9C139C139C13, 0x8B91730D72CB5A47, 0x8B9193D393D1A455,  // 0x0001AFA8 
	0xA4558B916ACB72CB, 0x834D834C730A72CA, 0x7B0A72C8830A6288, 0x8BCE9C128B8C93D0,  // 0x0001AFC8 
	0x6AC86ACA8B8EA450, 0x7B0872CA6AC9834F, 0x94135A4B6A8B3945, 0x5A4B49C949C75249,  // 0x0001AFE8 
	0x5A4B49C929033145, 0x49C94A0931033105, 0x394549C75209624B, 0x5A8B9C13B4D9A455,  // 0x0001B008 
	0x8BD1AC5593D17B0B, 0x8B8F93CF838F9C13, 0xAC9593D3838F7B0D, 0x941393D39413A455,  // 0x0001B028 
	0x8BCF5A4951C75A47, 0x6ACA7B0A7B4C730A, 0x834C830C8B4C6A88, 0x834C93CE8B8E938E,  // 0x0001B048 
	0x62866AC8834CA410, 0x6A88730A730A6ACB, 0x8BD1838F7B0D72CB, 0x41C74A095A4B5A49,  // 0x0001B068 
	0x52094A0939453985, 0x49C7524B31453145, 0x41875A4B5A8B5A8B, 0xA455B4D7AC9793D1,  // 0x0001B088 
	0x9C139C128B8E7B0A, 0x8B8E93CF8B8F93D1, 0xA4559C139C1393D1, 0xAC95A455A455AC55,  // 0x0001B0A8 
	0x93CF5A495A075A46, 0x62487B0A834C72C8, 0x834C938E8B4C51C4, 0x5A467B4C8B8E7B0A,  // 0x0001B0C8 
	0x94108BD07B4C7B0A, 0x6A886248730A7B0D, 0x730D8B8F72CD730D, 0x8B915A4B5A496A8B,  // 0x0001B0E8 
	0x628B5A4B418741C7, 0x49C7520939453985, 0x52095A8B5A8BAC95, 0xBCD9B4D7834F8B8D,  // 0x0001B108 
	0x8BCE834C8B8E7B0C, 0x834E8B8E93D19C13, 0x9C1372CB8B8F7B0D, 0x838F93D193D1AC55,  // 0x0001B128 
	0x938F5A4862885A46, 0x5A4672C87B0C6A88, 0x72CA7B0A62466A88, 0x72CA72C88B8CA452,  // 0x0001B148 
	0x93CE94107B0A7B08, 0x6288628872CA7B0C, 0x5A477B4D7B4F730D, 0x941393D172CD5A8B,  // 0x0001B168 
	0x6ACD730D6ACB5A4B, 0x5A49624B52095A8B, 0x5A8B5A8BB4D9B4D7, 0xB4D793D15A49834C,  // 0x0001B188 
	0x8B8E938E8B8E730A, 0x7B0A8B8E8B8E93D0, 0x8B915A477B4D6ACB, 0x7B0B8B8F8B8FA412,  // 0x0001B1A8 
	0x838E6ACA6AC85A48, 0x5A466A8872CA6A88, 0x72CA834C6AC86A88, 0x834C8B8C834C8B8E,  // 0x0001B1C8 
	0x9410A4926A8A5A06, 0x5A0662887B0C7B0C, 0x5204730B7B0D7B4F, 0xAC97A4558B91838F,  // 0x0001B1E8 
	0x5A8B5A8B5A8B5A8B, 0x5A8B5A8B52095A8B, 0x8BD1B4D7B4D7B4D7, 0xAC958B8F5A48834C,  // 0x0001B208 
	0x8B8E93D0834C7B0C, 0x730A93CE8B8E93D0, 0x834C5A46834D6AC9, 0x72C993D0838E93D0,  // 0x0001B228 
	0x8B8E834E72CA5A46, 0x5A466A887B0C72CA, 0x6A887B0A6A886288, 0x8BD09C12730A7B0A,  // 0x0001B248 
	0x6A886ACA5A466AC8, 0x5A046A8893D0834E, 0x52066A888B8F8BD1, 0x9C13A4539C53AC97,  // 0x0001B268 
	0xA4559C13838F9411, 0x9411AC95A455B4D7, 0xB4D79C13938FAC95, 0xAC957B0D62487B0C,  // 0x0001B288 
	0x9C128B4E7B0C7B4C, 0x730C9C108B8E93D0, 0x7B0C834C834E6AC8, 0x62467B0A8BCEA452,  // 0x0001B2A8 
	0xA410938E7B0A6288, 0x5A046A88834C8B8E, 0x834C93CE940E72CA, 0x838C7B4A6246834A,  // 0x0001B2C8 
	0x93D072CA52046246, 0x5A466288834E7B0C, 0x418251C4938E93D1, 0x8B8F93D19C13A455,  // 0x0001B2E8 
	0x9C13AC95B4D7AC97, 0xA455A455B4D7A455, 0x838F7B0D8B8FA455, 0xAC957B0C5206730A,  // 0x0001B308 
	0x8BCE834C8B8E730A, 0x72CA93D08B8E93D0, 0x72CA8B8E6ACA72CA, 0x834E834C8B8E9C12,  // 0x0001B328 
	0xA41093CE8B8C6A88, 0x5A0662467B0C8B8E, 0x8B8E9C1093D0834C, 0x93D08B8C5A46834A,  // 0x0001B348 
	0xAC968B4C52066288, 0x5A465206834C7B0C, 0x3942418293D0A454, 0x9C12A452938F834D,  // 0x0001B368 
	0x6A8B730D7B0D8B91, 0x9C1393D193D17B4D, 0x72CB72CB834F9C11, 0xAC547B4C5206834C,  // 0x0001B388 
	0x834C8B8E8B8E6A88, 0x6A8893CE93D0A452, 0x834C93CE72CA72CA, 0x834C834C8B8E8B8E,  // 0x0001B3A8 
	0x9C1094108B8E730A, 0x628852066ACA838E, 0x93CEAC52938EAC92, 0xA4549C12628A6248,  // 0x0001B3C8 
	0xAC949C1252046246, 0x6A886A88938E7B0C, 0x39424182834C7B0C, 0x93CEAC527B4C834C,  // 0x0001B3E8 
	0x7B0A6ACB6A89834F, 0x8B8F6A89730B6A89, 0x5A4762898B8C93CE, 0xB4969C1293D08B8E,  // 0x0001B408 
	0x834C9410730A838E, 0x6AC8838E9C1293D0, 0x8BD0A41262886288, 0x834C6288838E93CE,  // 0x0001B428 
	0x93D09C10938E8B8C, 0x6A8849C462887B4C, 0x8B8C9C12AC929C0E, 0x9C1093CE72C849C4,  // 0x0001B448 
	0xAC52A4545A066A88, 0x6AC862888B8C834C, 0x418241828B8E72CA, 0x938EA412834E8B8E,  // 0x0001B468 
	0x6A8872C86A886246, 0x72CA6A8872C85A06, 0x624672CA93D09C10, 0xBD1893D09BD093CE,  // 0x0001B488 
	0x830C93D07B4C834C, 0x7ACA9C129C1293D0, 0x9C129C1272C86288, 0x834E6A888B8E8B8E,  // 0x0001B4A8 
	0x93D093D0938E8B8C, 0x6A8849C451C472CA, 0x838E94109C108B4C, 0x938E93CE834A49C2,  // 0x0001B4C8 
};

u64 _spot18_room_3_tex_0001B4E8[] = 
{
	0x93CE838E838C93D0, 0x7B0A834C9C10C55A, 0xA452A454BD19C519, 0x72CB5A076ACB8B8F,  // 0x0001B4E8 
	0x72CB8B8D9C137B4D, 0x834DBCD7C5599411, 0x628862888B8E9C10, 0x9C108B8E6AC86A8A,  // 0x0001B508 
	0x8B90628872C893CE, 0x834C8B8C9C10C518, 0x93D1A413BD19CD5B, 0x6ACB52076A897B0D,  // 0x0001B528 
	0x730D7B4D9C119C11, 0x7B0B8B8FB4959C0F, 0x6AC972CA93D093D0, 0x93D093D06ACA730C,  // 0x0001B548 
	0x834C5A066AC88B8E, 0x834A72CA72CB8BD1, 0x8B8FAC55A4559C15, 0x834D624B628B628B,  // 0x0001B568 
	0x628B6A8B72CD730D, 0x6ACB628B9C139C11, 0x72CB6A89834D834E, 0x93D093D072CC7B0C,  // 0x0001B588 
	0x834C7B0A9C10BCD6, 0x93CE72C96A8972CB, 0x93D193D1834F628B, 0x624B624B5A4B49C9,  // 0x0001B5A8 
	0x398749C95A4B624B, 0x5A095A49628B8B8F, 0x72CB6A897B0D834F, 0x9C1093D0834C834E,  // 0x0001B5C8 
	0x6AC88B8CB4D6C55A, 0xA4117B0B834D93D1, 0x834F730D5A4B5A4B, 0x41C9314720C51083,  // 0x0001B5E8 
	0x108320C328C53145, 0x398752095A495209, 0x624B72CB72CD8B8F, 0x941193D093CE834E,  // 0x0001B608 
	0x5A0693D0C518B4D7, 0xAC9593D193D1834F, 0x5A4B4A0931471083, 0x18C3108310430841,  // 0x0001B628 
	0x0841084110831043, 0x1041188321054187, 0x51C9624B6ACB7B0F, 0x9C11A412A41093D0,  // 0x0001B648 
	0x72CAA454BCD99C53, 0xC51BAC557B0F5A4B, 0x41C7290510430801, 0x0001084108410841,  // 0x0001B668 
	0x0841084108410841, 0x08010841104118C3, 0x398749C96ACD7B4F, 0xA455AC559C12A452,  // 0x0001B688 
	0x8B8EA452B497A453, 0x8BD3628B52094187, 0x20C5084308410841, 0x0841084110411041,  // 0x0001B6A8 
	0x0001080100010001, 0x0001000108011041, 0x20C339875A4B7B0F, 0xA453A453A413A454,  // 0x0001B6C8 
	0x834CA411A453A413, 0x7B4F5A4B398720C5, 0x0841080108410841, 0x0841104110831083,  // 0x0001B6E8 
	0x0841080100010001, 0x0001000100010841, 0x1041290541C76ACD, 0x93D1A453B4D7AC94,  // 0x0001B708 
	0x8B8EAC53A4138B91, 0x5A4B49C929051043, 0x0841084108411041, 0x1041108310831883,  // 0x0001B728 
	0x1043000100010001, 0x0001080108410841, 0x0841188331475A4B, 0x834FA453AC958B8F,  // 0x0001B748 
	0xA455AC5393D1730F, 0x5209314510430841, 0x0841084108411041, 0x0841084108410841,  // 0x0001B768 
	0x0841000100010001, 0x0001080100010001, 0x0841084120C34A09, 0x730F94138B8F72CB,  // 0x0001B788 
	0xA495A41393D1624B, 0x3987084108410001, 0x0801000100010841, 0x0841084100010001,  // 0x0001B7A8 
	0x0841084108410841, 0x0001000100010001, 0x0801080118833987, 0x730D8B9172CB72CB,  // 0x0001B7C8 
	0x8B8F9C137B0F5A4B, 0x0041080108410801, 0x0841000108011083, 0x1883084108410841,  // 0x0001B7E8 
	0x0841084108410841, 0x0841000100010001, 0x0001000110832905, 0x628B834D628972CB,  // 0x0001B808 
	0x834D9C136ACD5A4B, 0x0001104310830841, 0x08410841104118C3, 0x18C318C310811041,  // 0x0001B828 
	0x1883108118831883, 0x1083084108410841, 0x0001000110432905, 0x6ACD6ACB6A8B7B0D,  // 0x0001B848 
	0x8B8D8B91624B5209, 0x1041188308410841, 0x1083104118C33145, 0x20C3314520C31081,  // 0x0001B868 
	0x18C320C320C32905, 0x1883188318C31041, 0x0001000108413107, 0x93D3730B6A8B72C9,  // 0x0001B888 
	0x8B8F93D15A4B3987, 0x1041108308431043, 0x20C318C329033985, 0x4187290320C31883,  // 0x0001B8A8 
	0x290520C3290520C3, 0x20C3290529051883, 0x00010001084141C9, 0xAC95730B62896287,  // 0x0001B8C8 
	0x8B8F9C1352093987, 0x1083290518832905, 0x2905290339853987, 0x41C7310529052905,  // 0x0001B8E8 
	0x39872905290320C3, 0x29053105314520C3, 0x104300010841BCD9, 0x8B8F730B62495204,  // 0x0001B908 
	0x8B8F9BD14A093987, 0x1883314721053947, 0x3987398541875209, 0x4A09314531453145,  // 0x0001B928 
	0x3987314520C320C3, 0x3105314531452905, 0x20C30841628DCD5B, 0x834D730D62496248,  // 0x0001B948 
	0x834D8B8F5A4B3987, 0x210541C941C7520B, 0x49C7314541C549C7, 0x4A09394531453145,  // 0x0001B968 
	0x4187314520C32903, 0x3145398531853145, 0x29052905CD5BBD19, 0x8B8F6AC95A477B0A,  // 0x0001B988 
	0x7B0B834D52073987, 0x2905398741C749C9, 0x418531454A0949C7, 0x5209394539454185,  // 0x0001B9A8 
	0x49C7314529052905, 0x3987398539874187, 0x3145628DCD5BB4D7, 0x7B4D72C95A467B0A,  // 0x0001B9C8 
	0x834D7B0D520741C7, 0x188320C329053145, 0x3987398749C749C7, 0x49C73145314549C7,  // 0x0001B9E8 
	0x4A09314531453145, 0x3987398541C73987, 0x628DC559C5199BCF, 0x7B0B730B5A466288,  // 0x0001BA08 
	0x8B8F7B0D62897B4F, 0x290520C329053145, 0x3987418749C94A09, 0x41C7314541C549C7,  // 0x0001BA28 
	0x4A09394531453145, 0x418741C749C74187, 0xAC97C519ACD79C11, 0x834D730A52065206,  // 0x0001BA48 
	0x8B8E730D72CB8B8F, 0x93D1290520C53145, 0x398741C752095209, 0x41C731454A0949C7,  // 0x0001BA68 
	0x5209394539453985, 0x41C749C941C7730F, 0xBCD9B4D7AC979C11, 0x8B8D7B0C5A465206,  // 0x0001BA88 
	0x834C72CB62879BD1, 0x9C1341C721052905, 0x394741C752095209, 0x49C9314541C749C7,  // 0x0001BAA8 
	0x49C7314531454187, 0x41C74A095209C519, 0xB4979BD1B4979C11, 0x834C834C62885204,  // 0x0001BAC8 
	0x8B907B0D7B4D7B0D, 0xA413A45539473947, 0x314749C95249524B, 0x49C92903314549C9,  // 0x0001BAE8 
	0x4A09310331053945, 0x4A095A4BB4D7C519, 0x9BD1938FAC95938F, 0x72CA834C6AC849C4,  // 0x0001BB08 
	0x7B4C72CA8B8F7B4D, 0x7B0DA413B49741C7, 0x314541C952095249, 0x4A073945398549C7,  // 0x0001BB28 
	0x524B3145314549C7, 0x4A099413C51993D1, 0x6A8993D19C13834C, 0x7B0C8B907B0A49C4,  // 0x0001BB48 
	0x834C834E7B0C830B, 0x730993D1B4D7AC95, 0x398741C949C95A49, 0x5A4941C741C749C7,  // 0x0001BB68 
	0x52093945520941C7, 0x9C13CD5BBCD76247, 0x628993D19C128BCE, 0x8B8E93D0830C51C4,  // 0x0001BB88 
	0x8BCE9C12838C834A, 0x7B09834DAC95B497, 0xB49752095A4B4A09, 0x5A49628B5A4B5A49,  // 0x0001BBA8 
	0x624B52094A09B497, 0xC519BD19AC955A47, 0x5A078BCEA454A410, 0x8B8E8B8C830C5206,  // 0x0001BBC8 
	0x8BCEA45293D0834C, 0x72CA834DA413AC95, 0xAC95BCD7A4555A8B, 0x5A8D520949C94A09,  // 0x0001BBE8 
	0x93D3B497B4D7C519, 0xB495938F7B0B730D, 0x730C93D0A454A452, 0x93CE8B4C7B0C5204,  // 0x0001BC08 
	0x8B8E9C108B8E7B4C, 0x72CA834CA4539C13, 0x93D1A455B4D7BD19, 0xBCD9C51BB4D79C13,  // 0x0001BC28 
	0xA413BD19C55993CF, 0x8B8F93D17B0B7B0C, 0x834C9C1093D09C10, 0x93D08B8E834C6286,  // 0x0001BC48 
	0x834C938E7B0A6ACA, 0x6288730A9C10A453, 0x628972CDA4559C11, 0xA453AC95B4D7A455,  // 0x0001BC68 
	0x93D1B495B495B4D7, 0xAC9593CF6A887B0C, 0x730A834C834C8B8E, 0x93D08B8E834C72CA,  // 0x0001BC88 
	0x7B0A838C6A885A06, 0x6A88834CA452AC94, 0x93D193D193D18B8F, 0xAC958BCF9C517B4D,  // 0x0001BCA8 
	0x838FA4539C13AC97, 0xB4D89BD0624672CA, 0x6288730A93CE93CE, 0x9C129BCE8B8E834C,  // 0x0001BCC8 
};

u64 _spot18_room_3_tex_0001BCE8[] = 
{
	0x9190894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BCE8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BD08 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BD28 
	0x894E894E894E0843, 0x084308430843894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BD48 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BD68 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BD88 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BDA8 
	0x0843084308430843, 0x618D08431842894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BDC8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BDE8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BE08 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E084208420843,  // 0x0001BE28 
	0x698D894F894F718D, 0x0843494A894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BE48 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BE68 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BE88 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E0843, 0x08430843718C894F,  // 0x0001BEA8 
	0x894F894F894F0843, 0x8A14894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BEC8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BEE8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BF08 
	0x894E894E894E894E, 0x894E08430843894E, 0x894E894E0842698D, 0x894F894F894E894F,  // 0x0001BF28 
	0x894F894F698D0843, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BF48 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BF68 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BF88 
	0x894E894E894E4210, 0x0843814F0843894E, 0x894E0842814E894E, 0x894E894E894E894F,  // 0x0001BFA8 
	0x894F894F10438A14, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BFC8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001BFE8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C008 
	0x894E894E894E0843, 0x28C7894F0843894E, 0x894E0842894E894E, 0x894F894F894F894F,  // 0x0001C028 
	0x894F894F410961D0, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C048 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C068 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C088 
	0x894E894E0843894F, 0x894F798F0843894E, 0x894E0842894E894F, 0x894F894F894F894F,  // 0x0001C0A8 
	0x894F894F894F0842, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C0C8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C0E8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C108 
	0x894E0842698D894F, 0x894F1885894E894E, 0x894E08420843894F, 0x894F894F894F894F,  // 0x0001C128 
	0x894F894F894E0842, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C148 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C168 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E0843,  // 0x0001C188 
	0x0842894E894F894F, 0x894F0843894E894E, 0x894E894E08430843, 0x894F894E894E894F,  // 0x0001C1A8 
	0x894F894F894F894F, 0x08438214894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C1C8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C1E8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E52940843,  // 0x0001C208 
	0x718C894E894F894F, 0x894F0843894E894E, 0x894E894E894E0843, 0x0843894E894E894E,  // 0x0001C228 
	0x894E894F894F894F, 0x084308430843494B, 0x8A14921292129212, 0x9212894E894E894E,  // 0x0001C248 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C268 
	0x894E894E894E894E, 0x084308430843894E, 0x894E894E894E894E, 0x894E894E0843894F,  // 0x0001C288 
	0x894E894E894F894F, 0x894F08430842894E, 0x894E894E894E894E, 0x108508430843814F,  // 0x0001C2A8 
	0x894E894F894F894F, 0x894F894F894F698D, 0x28C7104310431043, 0x0843084308430843,  // 0x0001C2C8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C2E8 
	0x894E894E08430842, 0x894E0842894E894E, 0x894E894E894E894E, 0x894E0843798F894F,  // 0x0001C308 
	0x894F894E894F894F, 0x894F894F814E0842, 0x08430843894E894E, 0x894E894E894E0843,  // 0x0001C328 
	0x0843084308430843, 0x0843084308431043, 0x1043104308430843, 0x084308430843894E,  // 0x0001C348 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C368 
	0x894E0842698C894E, 0x894E0843894E894E, 0x894E894E894E894E, 0x894E0843894F894F,  // 0x0001C388 
	0x894F894F894F894F, 0x894F894E894E894E, 0x618C084208420842, 0x0843084308435294,  // 0x0001C3A8 
	0x894E894E894E894E, 0x2109084308430843, 0x0843084308432108, 0x894E894E894E894E,  // 0x0001C3C8 
	0x894E894E894E894E, 0x894E0843894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C3E8 
	0x0843894F894F894E, 0x894F08434210894E, 0x894E894E894E894E, 0x894E084308434109,  // 0x0001C408 
	0x4109698D698D4109, 0x4109104310420843, 0x0843084308430842, 0x0842084208420843,  // 0x0001C428 
	0x894E894E894E894E, 0x894E894E894E894E, 0x0843084308430843, 0x894E894E894E894E,  // 0x0001C448 
	0x894E894E894E894E, 0x08430843894E894E, 0x894E894E894E894E, 0x894E894E894E0843,  // 0x0001C468 
	0x814F894F894F894F, 0x894F894F08432109, 0x894E894E894E894E, 0x894E894E08430843,  // 0x0001C488 
	0x0843084308430843, 0x0843084308430843, 0x0843084321084210, 0x894E894E894E894E,  // 0x0001C4A8 
	0x894E894E894E894E, 0x894E084308430843, 0x0843410908430843, 0x894E894E894E894E,  // 0x0001C4C8 
	0x894E894E42100843, 0x0843894E894E894E, 0x894E894E894E894E, 0x894E894E894E0843,  // 0x0001C4E8 
	0x1043894E894E894E, 0x894E894E894E1043, 0x084308431085894E, 0x894E894E894E894E,  // 0x0001C508 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C528 
	0x894E084308430843, 0x1885718D894F894F, 0x894F08430843894E, 0x894E894E894E894E,  // 0x0001C548 
	0x894E10850843814F, 0x0843894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C568 
	0x0842084210424109, 0x894F894F894E894F, 0x894F390808430842, 0x0842084308435294,  // 0x0001C588 
	0x894E894E894E894E, 0x894E894E894E894E, 0x210908430843894E, 0x894E894E894E0843,  // 0x0001C5A8 
	0x08430843618D894F, 0x894F894F894F894F, 0x08430843894E894E, 0x894E894E894E894E,  // 0x0001C5C8 
	0x52940843894F894F, 0x0843894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C5E8 
	0x894E894E894E5294, 0x0843084308420843, 0x0842084208420842, 0x084308432108894E,  // 0x0001C608 
	0x894E894E894E894E, 0x894E108508430843, 0x494B08430843894E, 0x894E08430843894F,  // 0x0001C628 
	0x894F894F894F894F, 0x894F894F28C70843, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C648 
	0x0843894F894F894E, 0x0842894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C668 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C688 
	0x894E894E894E0843, 0x08430842494A894F, 0x08420843894E894E, 0x08430843894F894F,  // 0x0001C6A8 
	0x894F894F894F894F, 0x814F08430843894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C6C8 
	0x0843894F894F894E, 0x894E084308430843, 0x0843084308420843, 0x0843084308430842,  // 0x0001C6E8 
	0x084208420842894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C708 
	0x894E08430843494B, 0x894F894F41080842, 0x894E894E894E894E, 0x0843894F894F894F,  // 0x0001C728 
	0x894F894F894F798F, 0x0843894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C748 
	0x8A14084308421042, 0x1043718D894E894E, 0x894F894F894E894F, 0x894F798F18850842,  // 0x0001C768 
	0x08420843894E894E, 0x894E894E318C0843, 0x08432109894E894E, 0x894E894E894E0843,  // 0x0001C788 
	0x0843798F894F894F, 0x894F08420842894E, 0x894E894E894E0843, 0x894F894F894F894F,  // 0x0001C7A8 
	0x894F894F894F0843, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C7C8 
	0x894E8A1408420843, 0x08420842894F894E, 0x894F594C08420843, 0x0843084308430843,  // 0x0001C7E8 
	0x894E894E894E894E, 0x894E084208430843, 0x0843894E894E894E, 0x894E894E08421043,  // 0x0001C808 
	0x894F894F894F894F, 0x18850843894E894E, 0x894E894E894E0843, 0x894F894F894E894E,  // 0x0001C828 
	0x894E894F894F0843, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C848 
	0x894E30C60843594D, 0x894F494B08430842, 0x08422108894E894E, 0x894E894E894E894E,  // 0x0001C868 
	0x894E894E08430843, 0x0843698C08430843, 0x894E894E894E894E, 0x08430842894E894F,  // 0x0001C888 
	0x894F894F894F0843, 0x0843894E894E894E, 0x894E894E894E0843, 0x894E894E894E894E,  // 0x0001C8A8 
	0x894F894F894F698D, 0x08434210894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C8C8 
	0x894E084328C7894F, 0x084308430843894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C8E8 
	0x084308420842814E, 0x494B08435294894E, 0x894E894E894E0843, 0x0842894E894E894E,  // 0x0001C908 
	0x894F894F894F0843, 0x894E894E894E894E, 0x894E894E894E0843, 0x1884894E894E894E,  // 0x0001C928 
	0x894E894E894F894F, 0x084308420842894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001C948 
	0x0843814F894F698D, 0x0843894E894E894E, 0x894E894E894E894E, 0x894E421008430842,  // 0x0001C968 
	0x618C894F894F0843, 0x0843894E894E894E, 0x894E894E318D1885, 0x894E894E894E894F,  // 0x0001C988 
	0x894E894F894F0843, 0x08432109894E894E, 0x894E894E894E894E, 0x08420842894E894F,  // 0x0001C9A8 
	0x894F894F894F894F, 0x894F894E894E28C7, 0x0843084308430842, 0x0842894E894E894E,  // 0x0001C9C8 
	0x0843894F894F718C, 0x0842894E894E894E, 0x894E894E894E894E, 0x08430843594D894F,  // 0x0001C9E8 
	0x894F894F08430843, 0x894E894E894E894E, 0x894E894E0843494B, 0x894F894F894E894E,  // 0x0001CA08 
	0x894E894F894F894F, 0x4109084308430843, 0x894E894E894E894E, 0x894E08430843814F,  // 0x0001CA28 
	0x894F894F894F894F, 0x894E894E894E894F, 0x894F698D18850843, 0x0843894E894E894E,  // 0x0001CA48 
	0x0843894F894E894E, 0x0842894E894E894E, 0x894E894E894E0843, 0x0843894F894F894F,  // 0x0001CA68 
	0x894F814F0843894E, 0x894E894E894E894E, 0x894E894E894E0843, 0x0843084308430842,  // 0x0001CA88 
	0x0842084208430843, 0x0843084308430843, 0x894E894E894E894E, 0x894E894E894E0843,  // 0x0001CAA8 
	0x0843084308430843, 0x0842084308430843, 0x08431085894E894E, 0x894E894E894E894E,  // 0x0001CAC8 
	0x894E0843594D894F, 0x894F08430843894E, 0x894E894E08430843, 0x894F894F894F894E,  // 0x0001CAE8 
	0x894E894E0842894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001CB08 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001CB28 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001CB48 
	0x894E084208430843, 0x0843084308430843, 0x894E894E08430843, 0x894F894F894F894E,  // 0x0001CB68 
	0x894F894F08430843, 0x0843894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001CB88 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001CBA8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001CBC8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E0843, 0x084308434109698D,  // 0x0001CBE8 
	0x698D894F894F894F, 0x798F08430843894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001CC08 
	0x894E894E894E894E, 0x894E914E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001CC28 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001CC48 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x4210084308430843,  // 0x0001CC68 
	0x0843084308430843, 0x084308430843894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001CC88 
	0x894E894E894E914E, 0x914E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001CCA8 
	0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E, 0x894E894E894E894E,  // 0x0001CCC8 
};

u64 _spot18_room_3_tex_0001CCE8[] = 
{
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CCE8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025400010001,  // 0x0001CD08 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CD28 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CD48 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CD68 
	0x0254025402540254, 0x0254025402540000, 0x0252025402540254, 0x0254000151052881,  // 0x0001CD88 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CDA8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CDC8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CDE8 
	0x0254025402540254, 0x0254025400016906, 0x0001025402540254, 0x1294100069065104,  // 0x0001CE08 
	0x0254025402540254, 0x0254025408810001, 0x0254025402540254, 0x0254025402540254,  // 0x0001CE28 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CE48 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CE68 
	0x0254025400010254, 0x0254025400016906, 0x6906025202540254, 0x0001690769076906,  // 0x0001CE88 
	0x0254025402540252, 0x0000000069070001, 0x0254025402540254, 0x0254025402540254,  // 0x0001CEA8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CEC8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CEE8 
	0x0254000169070001, 0x0254000169066906, 0x6907000102540001, 0x6907690769066906,  // 0x0001CF08 
	0x0254025400006906, 0x6907690700010254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CF28 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CF48 
	0x0000000000000001, 0x3A4E025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CF68 
	0x0254000169070001, 0x0254000169076907, 0x690738C302540001, 0x0001490569075105,  // 0x0001CF88 
	0x0254025400016906, 0x6906610702540254, 0x0254025400010001, 0x0254025402540254,  // 0x0001CFA8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402520254,  // 0x0001CFC8 
	0x0000690769066906, 0x6906000000000254, 0x0254025402540254, 0x0254025402540254,  // 0x0001CFE8 
	0x0001690769072881, 0x0254000100010001, 0x0001000102540254, 0x0254025402540254,  // 0x0001D008 
	0x0254025412940001, 0x6907000102540001, 0x0001590769070001, 0x0254025402540254,  // 0x0001D028 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001D048 
	0x0252204169076907, 0x6906690669061000, 0x0001025402540254, 0x0254025402540254,  // 0x0001D068 
	0x0001000100010001, 0x0254025402542145, 0x0001000100010001, 0x0001021102110211,  // 0x0001D088 
	0x1105000100010254, 0x2145025400016907, 0x6907690700010254, 0x0254025402540254,  // 0x0001D0A8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001D0C8 
	0x0254000169076907, 0x6907690669066906, 0x6906000102540254, 0x0254025402540254,  // 0x0001D0E8 
	0x0254025402540001, 0x0001000102530255, 0x0255025502550255, 0x0255025502550255,  // 0x0001D108 
	0x0255025502551105, 0x0001025400010001, 0x6907690700010254, 0x0254025402540254,  // 0x0001D128 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001D148 
	0x0254025400016907, 0x6907690769066906, 0x6907690728810254, 0x0254025402542144,  // 0x0001D168 
	0x0000000102550255, 0x0255025502550255, 0x0255025502550255, 0x0255025502550255,  // 0x0001D188 
	0x0255025502550255, 0x0255025500010254, 0x025431CB02540254, 0x0254025402540254,  // 0x0001D1A8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001D1C8 
	0x0254025402540001, 0x6907690769076907, 0x6907690700010254, 0x0254000000010255,  // 0x0001D1E8 
	0x0255025402540254, 0x0254025502550255, 0x0255025502550255, 0x0255025502550255,  // 0x0001D208 
	0x0255025502550255, 0x0255025502550001, 0x0881025402540254, 0x0254025402540254,  // 0x0001D228 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001D248 
	0x0254025402540254, 0x0001690769076907, 0x6907000102541294, 0x0001025402540255,  // 0x0001D268 
	0x0255025502550255, 0x0254025502550255, 0x0255025502550255, 0x0255025502550255,  // 0x0001D288 
	0x0255025502540254, 0x0255025502550255, 0x0253000102540254, 0x0254025402540254,  // 0x0001D2A8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001D2C8 
	0x0254025402540254, 0x025431CA00010001, 0x0001025400010253, 0x0255025500010001,  // 0x0001D2E8 
	0x0001021102550255, 0x0255025502550255, 0x0255025502550255, 0x0255025402550255,  // 0x0001D308 
	0x0255025502550255, 0x0255025502550255, 0x0255025500012AD4, 0x0254025402540254,  // 0x0001D328 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001D348 
	0x0254025402540254, 0x0254025402540254, 0x000109CD02550255, 0x0255025500016907,  // 0x0001D368 
	0x6907000102550255, 0x0255025502550255, 0x0255025502550255, 0x0255025502550255,  // 0x0001D388 
	0x0255025502550255, 0x0254025502550255, 0x02550255025509CD, 0x0001025402540254,  // 0x0001D3A8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001D3C8 
	0x0254025402540254, 0x0254025400010255, 0x0254025502550255, 0x0255025500010001,  // 0x0001D3E8 
	0x0001021102550255, 0x0255025500010001, 0x0001025502550255, 0x0255025502550255,  // 0x0001D408 
	0x0254025502550254, 0x0254025502550255, 0x0255025502550255, 0x0255000102520254,  // 0x0001D428 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001D448 
	0x0254025402540254, 0x0254000002550255, 0x0254025402540255, 0x0255025502550255,  // 0x0001D468 
	0x0255025502550255, 0x0255000102540001, 0x0000000102550255, 0x0255025502550255,  // 0x0001D488 
	0x0255025502540254, 0x02540001000109CD, 0x0255025502550255, 0x0255025500010001,  // 0x0001D4A8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001D4C8 
	0x0254025402540254, 0x0000025402540255, 0x0255025502540255, 0x0255025502550255,  // 0x0001D4E8 
	0x0255025502550255, 0x0001025400010255, 0x0254025209CD0255, 0x0255025502540255,  // 0x0001D508 
	0x0254025402540001, 0x31CB025202940254, 0x0001025502550255, 0x0255025502550253,  // 0x0001D528 
	0x0001025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001D548 
	0x0254025402543A4F, 0x020F025402540254, 0x0255025502550254, 0x0255025502550255,  // 0x0001D568 
	0x0255025502550255, 0x3293000102550255, 0x0254000000010255, 0x0255025502540254,  // 0x0001D588 
	0x0254025400010254, 0x0001025302550001, 0x0881000102550255, 0x0255025502540254,  // 0x0001D5A8 
	0x0254000102940254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540294,  // 0x0001D5C8 
	0x0254025402540000, 0x0255025502540254, 0x0255025509CC0000, 0x0000000100010255,  // 0x0001D5E8 
	0x0255025502550001, 0x31CB025502550255, 0x0255000100010255, 0x0255025502550254,  // 0x0001D608 
	0x0254025400010001, 0x0255025502550255, 0x0001000102550255, 0x0255025402540254,  // 0x0001D628 
	0x0255025402540001, 0x0254025402540254, 0x0254025202540252, 0x0252025202540254,  // 0x0001D648 
	0x0254025402540000, 0x0000000000010000, 0x0001329202540254, 0x0254029400010255,  // 0x0001D668 
	0x0255025402540001, 0x0001025502550255, 0x0255000100010254, 0x0254025502540254,  // 0x0001D688 
	0x0254025500010001, 0x0255025502550255, 0x0001000102550255, 0x0255025402540254,  // 0x0001D6A8 
	0x0254025402540254, 0x0000000002540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001D6C8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0000021102550255,  // 0x0001D6E8 
	0x0255025402540294, 0x0001025502550255, 0x0255000132920254, 0x0254025402550255,  // 0x0001D708 
	0x0254025500000254, 0x0253025502550255, 0x0001000102550255, 0x0255025502550255,  // 0x0001D728 
	0x0254025402540254, 0x0255025400003292, 0x0254025402540254, 0x0254025402540254,  // 0x0001D748 
	0x0254025402540254, 0x0254025402540254, 0x0254000100010211, 0x0255025402550255,  // 0x0001D768 
	0x0255025502540254, 0x118B025502550255, 0x0255000102540254, 0x0254025402540255,  // 0x0001D788 
	0x0255025500000254, 0x0081025502550255, 0x31CB000102550255, 0x0255025502550254,  // 0x0001D7A8 
	0x0254025402540254, 0x0254025402550253, 0x0001029402540254, 0x0254025402540254,  // 0x0001D7C8 
	0x0254025402540254, 0x0254025400010001, 0x020E025502550255, 0x0255025402540255,  // 0x0001D7E8 
	0x0255025502530294, 0x0255025502550255, 0x0255118B02540211, 0x0254025402540255,  // 0x0001D808 
	0x0255025500010254, 0x0001025502550255, 0x0001000102550255, 0x0255025502550255,  // 0x0001D828 
	0x0255025402550255, 0x0255025502550255, 0x0255025300010001, 0x0254025402540254,  // 0x0001D848 
	0x0254025402540254, 0x0254000102550255, 0x0255025402540254, 0x0254025402540254,  // 0x0001D868 
	0x0255025500010001, 0x0255025502550255, 0x02550211025409CD, 0x0255025402550255,  // 0x0001D888 
	0x02550255020F0254, 0x0001025502550255, 0x118B31CB08810001, 0x0081025502550255,  // 0x0001D8A8 
	0x0255025502550255, 0x0255025502550255, 0x0255025502550255, 0x025511CD00010000,  // 0x0001D8C8 
	0x0254025402540254, 0x0254025431CA0001, 0x000100010000118A, 0x118A000000010000,  // 0x0001D8E8 
	0x0001000102540001, 0x0255025502550255, 0x025502110254118B, 0x0255025402540255,  // 0x0001D908 
	0x0255025502100254, 0x0001025502540254, 0x0254021100013A4E, 0x0254000100010001,  // 0x0001D928 
	0x0211025502550255, 0x0255025502550255, 0x0255021111050001, 0x0001000100010000,  // 0x0001D948 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001D968 
	0x0254025400010255, 0x0255025502550255, 0x0255021102540001, 0x0001025302550255,  // 0x0001D988 
	0x0255025400000254, 0x0001025502540255, 0x0255025402540255, 0x0001000102520254,  // 0x0001D9A8 
	0x0254029412943292, 0x3292329232920294, 0x0254025402540254, 0x0254025402540254,  // 0x0001D9C8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025408810000,  // 0x0001D9E8 
	0x000111CD02550255, 0x0255025502550255, 0x0255118B02540254, 0x0254025208810001,  // 0x0001DA08 
	0x0001029402540254, 0x0001025502550255, 0x0255025502550255, 0x0255025511CD0001,  // 0x0001DA28 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001DA48 
	0x0254025402540254, 0x0254025402540254, 0x0254025400010001, 0x0255025502550254,  // 0x0001DA68 
	0x0255025502550255, 0x0255025502550255, 0x0255000102540254, 0x0254025402540254,  // 0x0001DA88 
	0x0254025402540254, 0x0001025502540255, 0x0255025502550254, 0x0255025502550254,  // 0x0001DAA8 
	0x0000025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001DAC8 
	0x0254025402540254, 0x0254025402540254, 0x0254000102550254, 0x0255025502550254,  // 0x0001DAE8 
	0x0255025502550255, 0x0255025502550255, 0x0255000102540254, 0x0254025402540254,  // 0x0001DB08 
	0x0254025402540254, 0x1294025402540254, 0x0254025402540254, 0x0255025502540254,  // 0x0001DB28 
	0x0001025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001DB48 
	0x0254025402540254, 0x0254025402540254, 0x0254000102550254, 0x0255025502550254,  // 0x0001DB68 
	0x0255025502550255, 0x0254025402550255, 0x0255000102540254, 0x0254025402540254,  // 0x0001DB88 
	0x0254025402540254, 0x0254000002540254, 0x0254025402550255, 0x0255025502110001,  // 0x0001DBA8 
	0x3292025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001DBC8 
	0x0254025402540254, 0x0254025402540254, 0x0254025200010255, 0x0255025502550255,  // 0x0001DBE8 
	0x0255025502550255, 0x0254025402540252, 0x0001025402540254, 0x0254025402540254,  // 0x0001DC08 
	0x0254025402540254, 0x0254025402543292, 0x0000000100010001, 0x00012AD402540254,  // 0x0001DC28 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001DC48 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540001, 0x0001000100010001,  // 0x0001DC68 
	0x0001000100010001, 0x0000000008800254, 0x0254025402540254, 0x0254025402540254,  // 0x0001DC88 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001DCA8 
	0x0254025402540254, 0x0254025402540254, 0x0254025402540254, 0x0254025402540254,  // 0x0001DCC8 
};

static u8 unaccounted1DCE8[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


