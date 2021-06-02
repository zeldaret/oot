#include <ultra64.h>
#include <z64.h>
#include "syatekijyou_room_0.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "syatekijyou_scene.h"



SCmdAltHeaders _syatekijyou_room_0_set0000_cmd00 = { 0x18, 0, (u32)&_syatekijyou_room_0_alternateHeaders_00000048}; // 0x0000
SCmdEchoSettings _syatekijyou_room_0_set0000_cmd01 = { 0x16, 0, { 0 }, 0x05 }; // 0x0008
SCmdRoomBehavior _syatekijyou_room_0_set0000_cmd02 = { 0x08, 0x02, 0x00000004 }; // 0x0010
SCmdSkyboxDisables _syatekijyou_room_0_set0000_cmd03 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0018
SCmdTimeSettings _syatekijyou_room_0_set0000_cmd04 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0020
SCmdMesh _syatekijyou_room_0_set0000_cmd05 = { 0x0A, 0, (u32)&_syatekijyou_room_0_meshHeader_000000A0 }; // 0x0028
SCmdObjectList _syatekijyou_room_0_set0000_cmd06 = { 0x0B, 0x0D, (u32)_syatekijyou_room_0_objectList_00000060 }; // 0x0030
SCmdActorList _syatekijyou_room_0_set0000_cmd07 = { 0x01, 0x02, (u32)_syatekijyou_room_0_actorList_0000007C }; // 0x0038
SCmdEndMarker _syatekijyou_room_0_set0000_cmd08 = { 0x14, 0x00, 0x00 }; // 0x0040
u32 _syatekijyou_room_0_alternateHeaders_00000048[] = 
{
	0,
	0,
	0,
	(u32)&_syatekijyou_room_0_set00C0_cmd00,
	(u32)&_syatekijyou_room_0_set00F0_cmd00,
	(u32)&_syatekijyou_room_0_set01A0_cmd00,
};

s16 _syatekijyou_room_0_objectList_00000060[] = 
{
	OBJECT_OSSAN,
	OBJECT_GI_HEART,
	OBJECT_GI_NUTS,
	OBJECT_GI_HEARTS,
	OBJECT_GI_ARROWCASE,
	OBJECT_GI_BOMB_1,
	OBJECT_GI_ARROW,
	OBJECT_NIW,
	OBJECT_GI_SEED,
	OBJECT_KANBAN,
	OBJECT_GI_DEKUPOUCH,
	OBJECT_GI_RUPY,
	OBJECT_DOG,
};

ActorEntry _syatekijyou_room_0_actorList_0000007C[2] = 
{
	{ ACTOR_EN_SYATEKI_ITM, -20, 20, 181, 0, 0, 0, 0x0000 }, //0x0000007C 
	{ ACTOR_EN_KANBAN, 59, 0, 365, 0, -16384, 0, 0x0329 }, //0x0000008C 
};

static u32 pad9C = 0;

MeshHeader0 _syatekijyou_room_0_meshHeader_000000A0 = { { 0 }, 0x01, (u32)&_syatekijyou_room_0_meshDListEntry_000000AC, (u32)&(_syatekijyou_room_0_meshDListEntry_000000AC) + sizeof(_syatekijyou_room_0_meshDListEntry_000000AC) };

MeshEntry0 _syatekijyou_room_0_meshDListEntry_000000AC[1] = 
{
	{ (u32)_syatekijyou_room_0_dlist_00006548, (u32)_syatekijyou_room_0_dlist_000076D8 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.
static u32 padB8 = 0;
static u32 padBC = 0;

SCmdEchoSettings _syatekijyou_room_0_set00C0_cmd00 = { 0x16, 0, { 0 }, 0x00 }; // 0x00C0
SCmdRoomBehavior _syatekijyou_room_0_set00C0_cmd01 = { 0x08, 0x00, 0x00000000 }; // 0x00C8
SCmdSkyboxDisables _syatekijyou_room_0_set00C0_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x00D0
SCmdTimeSettings _syatekijyou_room_0_set00C0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }; // 0x00D8
SCmdMesh _syatekijyou_room_0_set00C0_cmd04 = { 0x0A, 0, (u32)&_syatekijyou_room_0_meshHeader_000000A0 }; // 0x00E0
SCmdEndMarker _syatekijyou_room_0_set00C0_cmd05 = { 0x14, 0x00, 0x00 }; // 0x00E8
SCmdEchoSettings _syatekijyou_room_0_set00F0_cmd00 = { 0x16, 0, { 0 }, 0x05 }; // 0x00F0
SCmdRoomBehavior _syatekijyou_room_0_set00F0_cmd01 = { 0x08, 0x02, 0x00000000 }; // 0x00F8
SCmdSkyboxDisables _syatekijyou_room_0_set00F0_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0100
SCmdTimeSettings _syatekijyou_room_0_set00F0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }; // 0x0108
SCmdMesh _syatekijyou_room_0_set00F0_cmd04 = { 0x0A, 0, (u32)&_syatekijyou_room_0_meshHeader_000000A0 }; // 0x0110
SCmdObjectList _syatekijyou_room_0_set00F0_cmd05 = { 0x0B, 0x01, (u32)_syatekijyou_room_0_objectList_00000130 }; // 0x0118
SCmdActorList _syatekijyou_room_0_set00F0_cmd06 = { 0x01, 0x06, (u32)_syatekijyou_room_0_actorList_00000134 }; // 0x0120
SCmdEndMarker _syatekijyou_room_0_set00F0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0128
s16 _syatekijyou_room_0_objectList_00000130[] = 
{
	OBJECT_GI_MELODY,
};

ActorEntry _syatekijyou_room_0_actorList_00000134[6] = 
{
	{ ACTOR_DEMO_KANKYO, -161, 52, 257, 0, 0, 0, 0x0007 }, //0x00000134 
	{ ACTOR_DEMO_KANKYO, -100, 69, 257, 0, 0, 0, 0x0008 }, //0x00000144 
	{ ACTOR_DEMO_KANKYO, -54, 75, 254, 0, 0, 0, 0x0009 }, //0x00000154 
	{ ACTOR_DEMO_KANKYO, -10, 81, 254, 0, 0, 0, 0x000A }, //0x00000164 
	{ ACTOR_DEMO_KANKYO, 44, 78, 254, 0, 0, 0, 0x000B }, //0x00000174 
	{ ACTOR_DEMO_KANKYO, 93, 91, 257, 0, 0, 0, 0x000C }, //0x00000184 
};

static u32 pad194 = 0;
static u32 pad198 = 0;
static u32 pad19C = 0;

SCmdEchoSettings _syatekijyou_room_0_set01A0_cmd00 = { 0x16, 0, { 0 }, 0x05 }; // 0x01A0
SCmdRoomBehavior _syatekijyou_room_0_set01A0_cmd01 = { 0x08, 0x02, 0x00000000 }; // 0x01A8
SCmdSkyboxDisables _syatekijyou_room_0_set01A0_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x01B0
SCmdTimeSettings _syatekijyou_room_0_set01A0_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }; // 0x01B8
SCmdMesh _syatekijyou_room_0_set01A0_cmd04 = { 0x0A, 0, (u32)&_syatekijyou_room_0_meshHeader_000000A0 }; // 0x01C0
SCmdObjectList _syatekijyou_room_0_set01A0_cmd05 = { 0x0B, 0x03, (u32)_syatekijyou_room_0_objectList_000001E0 }; // 0x01C8
SCmdActorList _syatekijyou_room_0_set01A0_cmd06 = { 0x01, 0x01, (u32)_syatekijyou_room_0_actorList_000001E8 }; // 0x01D0
SCmdEndMarker _syatekijyou_room_0_set01A0_cmd07 = { 0x14, 0x00, 0x00 }; // 0x01D8
s16 _syatekijyou_room_0_objectList_000001E0[] = 
{
	OBJECT_GI_MELODY,
	OBJECT_WARP1,
	OBJECT_WARP2,
};

ActorEntry _syatekijyou_room_0_actorList_000001E8[1] = 
{
	{ ACTOR_DOOR_WARP1, -62, 0, 269, 0, 0, 0, 0x0003 }, //0x000001E8 
};

static u32 pad1F8 = 0;
static u32 pad1FC = 0;

Vtx_t _syatekijyou_room_0_vertices_00000200[24] = 
{
	 { -40, 100, 460, 0, 768, 1024, 51, 51, 51, 255 }, // 0x00000200
	 { -40, 100, 400, 0, 768, 512, 114, 114, 114, 255 }, // 0x00000210
	 { 20, 100, 400, 0, 0, 512, 114, 114, 114, 255 }, // 0x00000220
	 { 20, 100, 460, 0, 0, 1024, 51, 51, 51, 255 }, // 0x00000230
	 { 20, 0, 460, 0, 683, 1024, 204, 204, 204, 255 }, // 0x00000240
	 { 20, 100, 460, 0, 683, -683, 140, 140, 140, 255 }, // 0x00000250
	 { 20, 100, 400, 0, 0, -683, 140, 140, 140, 255 }, // 0x00000260
	 { 20, 0, 400, 0, 0, 1024, 204, 204, 204, 255 }, // 0x00000270
	 { -40, 0, 400, 0, 683, 1024, 204, 204, 204, 255 }, // 0x00000280
	 { -40, 100, 400, 0, 683, -683, 140, 140, 140, 255 }, // 0x00000290
	 { -40, 100, 460, 0, 0, -683, 140, 140, 140, 255 }, // 0x000002A0
	 { -40, 0, 460, 0, 0, 1024, 204, 204, 204, 255 }, // 0x000002B0
	 { 212, 0, 400, 0, -3277, 2731, 114, 114, 114, 255 }, // 0x000002C0
	 { 20, 0, 400, 0, 0, 2731, 255, 255, 255, 255 }, // 0x000002D0
	 { 20, 100, 400, 0, 0, 1024, 204, 204, 204, 255 }, // 0x000002E0
	 { 212, 100, 400, 0, -3277, 1024, 114, 114, 114, 255 }, // 0x000002F0
	 { 200, 189, 400, 0, -3072, -693, 89, 89, 89, 255 }, // 0x00000300
	 { 200, 100, 400, 0, -3072, 1024, 127, 127, 127, 255 }, // 0x00000310
	 { 20, 100, 400, 0, 0, 1024, 204, 204, 204, 255 }, // 0x00000320
	 { -200, 189, 400, 0, 3755, -693, 25, 25, 25, 255 }, // 0x00000330
	 { 0, 249, 400, 0, 341, -1717, 12, 12, 12, 255 }, // 0x00000340
	 { -40, 100, 400, 0, 1024, 1024, 204, 204, 204, 255 }, // 0x00000350
	 { -40, 0, 400, 0, 1024, 2731, 255, 255, 255, 255 }, // 0x00000360
	 { -200, 0, 400, 0, 3755, 2731, 114, 114, 114, 255 }, // 0x00000370
};

Vtx_t _syatekijyou_room_0_vertices_00000380[5] = 
{
	 { -260, 0, -400, 0, -1223, 1154, 255, 255, 255, 255 }, // 0x00000380
	 { 0, 249, -400, 0, 503, -215, 89, 89, 89, 255 }, // 0x00000390
	 { -260, 171, -400, 0, -1223, 213, 89, 89, 89, 255 }, // 0x000003A0
	 { 260, 0, -400, 0, 2229, 1154, 255, 255, 255, 255 }, // 0x000003B0
	 { 260, 171, -400, 0, 2229, 213, 89, 89, 89, 255 }, // 0x000003C0
};

Vtx_t _syatekijyou_room_0_vertices_000003D0[4] = 
{
	 { 200, 100, 400, 0, 6839, -683, 114, 114, 114, 255 }, // 0x000003D0
	 { 200, 189, 400, 0, 6839, -2195, 89, 89, 89, 255 }, // 0x000003E0
	 { 200, 189, 339, 0, 5803, -2195, 178, 178, 178, 255 }, // 0x000003F0
	 { 200, 100, 339, 0, 5803, -683, 153, 153, 153, 255 }, // 0x00000400
};

Vtx_t _syatekijyou_room_0_vertices_00000410[4] = 
{
	 { 212, 0, 400, 0, 1029, 2073, 114, 114, 114, 255 }, // 0x00000410
	 { 212, 100, 400, 0, 1017, -7, 76, 76, 76, 255 }, // 0x00000420
	 { 212, 100, 339, 0, -27, -46, 76, 76, 76, 255 }, // 0x00000430
	 { 212, 0, 339, 0, -16, 2034, 114, 114, 114, 255 }, // 0x00000440
};

Vtx_t _syatekijyou_room_0_vertices_00000450[47] = 
{
	 { 212, 100, 339, 0, 777, 717, 51, 51, 51, 255 }, // 0x00000450
	 { 212, 100, 400, 0, 0, 717, 51, 51, 51, 255 }, // 0x00000460
	 { 200, 100, 400, 0, 0, 1024, 51, 51, 51, 255 }, // 0x00000470
	 { 200, 100, 339, 0, 777, 1024, 51, 51, 51, 255 }, // 0x00000480
	 { 200, 0, 339, 0, 0, 1024, 140, 140, 140, 255 }, // 0x00000490
	 { 212, 0, 339, 0, 154, 1024, 140, 140, 140, 255 }, // 0x000004A0
	 { 212, 100, 339, 0, 154, -678, 76, 76, 76, 255 }, // 0x000004B0
	 { 200, 100, 339, 0, 0, -678, 76, 76, 76, 255 }, // 0x000004C0
	 { 200, 189, -29, 0, -488, -2195, 76, 76, 76, 255 }, // 0x000004D0
	 { 200, 117, -135, 0, -2292, -969, 255, 255, 255, 255 }, // 0x000004E0
	 { 200, 0, -29, 0, -488, 1024, 76, 76, 76, 255 }, // 0x000004F0
	 { 200, 189, -241, 0, -4096, -2195, 76, 76, 76, 255 }, // 0x00000500
	 { 200, 0, -241, 0, -4096, 1024, 76, 76, 76, 255 }, // 0x00000510
	 { -200, 189, -321, 0, 7305, -2195, 76, 76, 76, 255 }, // 0x00000520
	 { -200, 117, -135, 0, 4138, -973, 255, 255, 255, 255 }, // 0x00000530
	 { -200, 0, -321, 0, 7305, 1024, 114, 114, 114, 255 }, // 0x00000540
	 { -200, 189, -29, 0, 2334, -2195, 76, 76, 76, 255 }, // 0x00000550
	 { -200, 0, -29, 0, 2334, 1024, 114, 114, 114, 255 }, // 0x00000560
	 { 200, 189, 339, 0, 5803, -2195, 178, 178, 178, 255 }, // 0x00000570
	 { 200, 117, 280, 0, 4791, -969, 255, 255, 255, 255 }, // 0x00000580
	 { 200, 0, 339, 0, 5803, 1024, 114, 114, 114, 255 }, // 0x00000590
	 { 200, 0, 167, 0, 2870, 1024, 114, 114, 114, 255 }, // 0x000005A0
	 { 200, 189, 167, 0, 2870, -2195, 76, 76, 76, 255 }, // 0x000005B0
	 { 200, 117, 70, 0, 1205, -969, 255, 255, 255, 255 }, // 0x000005C0
	 { -200, 189, 167, 0, -1024, -2195, 76, 76, 76, 255 }, // 0x000005D0
	 { -200, 117, 284, 0, -3009, -973, 255, 255, 255, 255 }, // 0x000005E0
	 { -200, 0, 167, 0, -1024, 1024, 114, 114, 114, 255 }, // 0x000005F0
	 { -200, 0, 400, 0, -4993, 1024, 114, 114, 114, 255 }, // 0x00000600
	 { -200, 189, 400, 0, -4993, -2195, 25, 25, 25, 255 }, // 0x00000610
	 { -200, 117, 70, 0, 640, -973, 255, 255, 255, 255 }, // 0x00000620
	 { -40, 100, 400, 0, 1024, 1024, 204, 204, 204, 255 }, // 0x00000630
	 { -200, 0, 400, 0, 3755, 2731, 114, 114, 114, 255 }, // 0x00000640
	 { -200, 189, 400, 0, 3755, -693, 25, 25, 25, 255 }, // 0x00000650
	 { 200, 189, 400, 0, -3072, -693, 89, 89, 89, 255 }, // 0x00000660
	 { 20, 100, 400, 0, 0, 1024, 204, 204, 204, 255 }, // 0x00000670
	 { 200, 0, -321, 0, -339, 1024, 51, 51, 51, 255 }, // 0x00000680
	 { 200, 0, -241, 0, 1024, 1024, 76, 76, 76, 255 }, // 0x00000690
	 { 200, 189, -241, 0, 1024, -2195, 76, 76, 76, 255 }, // 0x000006A0
	 { 200, 189, -321, 0, -339, -2195, 76, 76, 76, 255 }, // 0x000006B0
	 { -40, 100, 460, 0, 341, -683, 255, 255, 255, 255 }, // 0x000006C0
	 { -60, 120, 460, 0, 0, -1024, 255, 255, 255, 255 }, // 0x000006D0
	 { -60, 0, 460, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000006E0
	 { -40, 0, 460, 0, 341, 1024, 255, 255, 255, 255 }, // 0x000006F0
	 { 20, 0, 460, 0, 1365, 1024, 255, 255, 255, 255 }, // 0x00000700
	 { 40, 0, 460, 0, 1707, 1024, 255, 255, 255, 255 }, // 0x00000710
	 { 40, 120, 460, 0, 1707, -1024, 255, 255, 255, 255 }, // 0x00000720
	 { 20, 100, 460, 0, 1365, -683, 255, 255, 255, 255 }, // 0x00000730
};

Vtx_t _syatekijyou_room_0_vertices_00000740[8] = 
{
	 { -260, 0, -400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000740
	 { 260, 0, -400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000750
	 { -260, 249, -400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000760
	 { 260, 249, -400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000770
	 { -260, 0, 460, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000780
	 { 260, 0, 460, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000790
	 { -260, 249, 460, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007A0
	 { 260, 249, 460, 0, 0, 0, 0, 0, 0, 0 }, // 0x000007B0
};

Gfx _syatekijyou_room_0_dlist_000007C0[] =
{
	gsDPPipeSync(), // 0x000007C0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000007C8
	gsSPVertex(_syatekijyou_room_0_vertices_00000740, 8, 0), // 0x000007D0
	gsSPCullDisplayList(0, 7), // 0x000007D8
	gsDPPipeSync(), // 0x000007E0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000007E8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000007F0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000007F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000A4C0), // 0x00000800
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000808
	gsDPLoadSync(), // 0x00000810
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000818
	gsDPPipeSync(), // 0x00000820
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000828
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000830
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000838
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000840
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000848
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000850
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000858
	gsSPVertex(_syatekijyou_room_0_vertices_00000200, 24, 0), // 0x00000860
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000868
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000870
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000878
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00000880
	gsSP2Triangles(16, 17, 18, 0, 19, 20, 16, 0), // 0x00000888
	gsSP1Triangle(21, 22, 23, 0), // 0x00000890
	gsDPPipeSync(), // 0x00000898
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00002740), // 0x000008A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 6, 0), // 0x000008A8
	gsDPLoadSync(), // 0x000008B0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000008B8
	gsDPPipeSync(), // 0x000008C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 1, 5, 0, 1, 6, 0), // 0x000008C8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000008D0
	gsSPVertex(_syatekijyou_room_0_vertices_00000380, 5, 0), // 0x000008D8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000008E0
	gsSP1Triangle(3, 4, 1, 0), // 0x000008E8
	gsDPPipeSync(), // 0x000008F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000A4C0), // 0x000008F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000900
	gsDPLoadSync(), // 0x00000908
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000910
	gsDPPipeSync(), // 0x00000918
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000920
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000928
	gsSPVertex(_syatekijyou_room_0_vertices_000003D0, 4, 0), // 0x00000930
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000938
	gsDPPipeSync(), // 0x00000940
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00006CC0), // 0x00000948
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 1, 5, 0), // 0x00000950
	gsDPLoadSync(), // 0x00000958
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00000960
	gsDPPipeSync(), // 0x00000968
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 6, 0, 1, 5, 0), // 0x00000970
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000978
	gsSPVertex(_syatekijyou_room_0_vertices_00000410, 4, 0), // 0x00000980
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000988
	gsDPPipeSync(), // 0x00000990
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000A4C0), // 0x00000998
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000009A0
	gsDPLoadSync(), // 0x000009A8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000009B0
	gsDPPipeSync(), // 0x000009B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000009C0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000009C8
	gsSPVertex(_syatekijyou_room_0_vertices_00000450, 32, 0), // 0x000009D0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000009D8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000009E0
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 9, 0), // 0x000009E8
	gsSP2Triangles(12, 10, 9, 0, 13, 14, 15, 0), // 0x000009F0
	gsSP2Triangles(16, 17, 14, 0, 17, 15, 14, 0), // 0x000009F8
	gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0), // 0x00000A00
	gsSP2Triangles(22, 21, 19, 0, 22, 23, 21, 0), // 0x00000A08
	gsSP2Triangles(23, 10, 21, 0, 8, 10, 23, 0), // 0x00000A10
	gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0), // 0x00000A18
	gsSP2Triangles(28, 27, 25, 0, 16, 29, 17, 0), // 0x00000A20
	gsSP2Triangles(29, 26, 17, 0, 24, 26, 29, 0), // 0x00000A28
	gsSP2Triangles(28, 25, 24, 0, 24, 29, 16, 0), // 0x00000A30
	gsSP2Triangles(16, 14, 13, 0, 11, 9, 8, 0), // 0x00000A38
	gsSP2Triangles(8, 23, 22, 0, 22, 19, 18, 0), // 0x00000A40
	gsSPVertex(_syatekijyou_room_0_vertices_00000630, 17, 0), // 0x00000A48
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0), // 0x00000A50
	gsSP2Triangles(3, 0, 2, 0, 5, 6, 7, 0), // 0x00000A58
	gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0), // 0x00000A60
	gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0), // 0x00000A68
	gsSP2Triangles(13, 15, 16, 0, 9, 16, 15, 0), // 0x00000A70
	gsSP1Triangle(9, 15, 10, 0), // 0x00000A78
	gsSPEndDisplayList(), // 0x00000A80
};

Vtx_t _syatekijyou_room_0_vertices_00000A88[32] = 
{
	 { 260, 183, -400, 0, 6144, 8192, 76, 76, 76, 255 }, // 0x00000A88
	 { 260, 183, -290, 0, 6144, 6349, 178, 178, 178, 255 }, // 0x00000A98
	 { 0, 261, -400, 0, 1075, 8192, 25, 25, 25, 255 }, // 0x00000AA8
	 { 0, 261, -232, 0, 1167, 4506, 38, 38, 38, 255 }, // 0x00000AB8
	 { -200, 201, -317, 0, -3901, 6349, 204, 204, 204, 255 }, // 0x00000AC8
	 { 0, 261, -232, 0, 1167, 4506, 25, 25, 25, 255 }, // 0x00000AD8
	 { 200, 201, -232, 0, 6144, 4506, 76, 76, 76, 255 }, // 0x00000AE8
	 { 200, 201, -131, 0, 6144, 2336, 178, 178, 178, 255 }, // 0x00000AF8
	 { 0, 261, -27, 0, 1276, 167, 38, 38, 38, 255 }, // 0x00000B08
	 { 200, 201, -27, 0, 6144, 167, 76, 76, 76, 255 }, // 0x00000B18
	 { -200, 201, -27, 0, -3544, -809, 76, 76, 76, 255 }, // 0x00000B28
	 { -200, 201, -131, 0, -3642, 1157, 178, 178, 178, 255 }, // 0x00000B38
	 { 0, 261, -27, 0, 1300, -809, 38, 38, 38, 255 }, // 0x00000B48
	 { 0, 261, -232, 0, 1202, 3123, 38, 38, 38, 255 }, // 0x00000B58
	 { -200, 201, -232, 0, -3740, 3123, 76, 76, 76, 255 }, // 0x00000B68
	 { 200, 201, 167, 0, 6144, -4327, 76, 76, 76, 255 }, // 0x00000B78
	 { 200, 201, 284, 0, 6144, -7283, 178, 178, 178, 255 }, // 0x00000B88
	 { 0, 261, 167, 0, 1388, -4327, 38, 38, 38, 255 }, // 0x00000B98
	 { 0, 261, 400, 0, 1536, -10240, 12, 12, 12, 255 }, // 0x00000BA8
	 { 200, 201, 400, 0, 6144, -10240, 89, 89, 89, 255 }, // 0x00000BB8
	 { 200, 201, 72, 0, 6144, -2080, 178, 178, 178, 255 }, // 0x00000BC8
	 { -200, 201, 284, 0, -3206, -7561, 178, 178, 178, 255 }, // 0x00000BD8
	 { 0, 261, 167, 0, 1402, -4881, 38, 38, 38, 255 }, // 0x00000BE8
	 { -200, 201, 400, 0, -3072, -10240, 25, 25, 25, 255 }, // 0x00000BF8
	 { -200, 201, 167, 0, -3340, -4881, 76, 76, 76, 255 }, // 0x00000C08
	 { -200, 201, 72, 0, -3442, -2845, 178, 178, 178, 255 }, // 0x00000C18
	 { -200, 201, -317, 0, -2732, 5923, 204, 204, 204, 255 }, // 0x00000C28
	 { -200, 201, -232, 0, -2661, 4506, 76, 76, 76, 255 }, // 0x00000C38
	 { 200, 201, -232, 0, 4996, 4506, 76, 76, 76, 255 }, // 0x00000C48
	 { 200, 201, -276, 0, 4996, 5923, 127, 127, 127, 255 }, // 0x00000C58
	 { -260, 183, -400, 0, -3994, 8192, 76, 76, 76, 255 }, // 0x00000C68
	 { -200, 201, -317, 0, -2696, 6795, 204, 204, 204, 255 }, // 0x00000C78
};

Vtx_t _syatekijyou_room_0_vertices_00000C88[8] = 
{
	 { -260, 183, -400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000C88
	 { 260, 183, -400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000C98
	 { -260, 261, -400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000CA8
	 { 260, 261, -400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000CB8
	 { -260, 183, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000CC8
	 { 260, 183, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000CD8
	 { -260, 261, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000CE8
	 { 260, 261, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000CF8
};

Gfx _syatekijyou_room_0_dlist_00000D08[] =
{
	gsDPPipeSync(), // 0x00000D08
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000D10
	gsSPVertex(_syatekijyou_room_0_vertices_00000C88, 8, 0), // 0x00000D18
	gsSPCullDisplayList(0, 7), // 0x00000D20
	gsDPPipeSync(), // 0x00000D28
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000D30
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000D38
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000D40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000B2C0), // 0x00000D48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000D50
	gsDPLoadSync(), // 0x00000D58
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00000D60
	gsDPPipeSync(), // 0x00000D68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000D70
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000D78
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000D80
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000D88
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000D90
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000D98
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000DA0
	gsSPVertex(_syatekijyou_room_0_vertices_00000A88, 32, 0), // 0x00000DA8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000DB0
	gsSP2Triangles(4, 2, 5, 0, 6, 7, 3, 0), // 0x00000DB8
	gsSP2Triangles(7, 8, 3, 0, 7, 9, 8, 0), // 0x00000DC0
	gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0), // 0x00000DC8
	gsSP2Triangles(11, 14, 13, 0, 15, 16, 17, 0), // 0x00000DD0
	gsSP2Triangles(16, 18, 17, 0, 16, 19, 18, 0), // 0x00000DD8
	gsSP2Triangles(9, 20, 8, 0, 20, 17, 8, 0), // 0x00000DE0
	gsSP2Triangles(20, 15, 17, 0, 18, 21, 22, 0), // 0x00000DE8
	gsSP2Triangles(18, 23, 21, 0, 21, 24, 22, 0), // 0x00000DF0
	gsSP2Triangles(24, 25, 22, 0, 25, 12, 22, 0), // 0x00000DF8
	gsSP2Triangles(25, 10, 12, 0, 26, 5, 27, 0), // 0x00000E00
	gsSP2Triangles(28, 3, 29, 0, 30, 2, 31, 0), // 0x00000E08
	gsSPEndDisplayList(), // 0x00000E10
};

Vtx_t _syatekijyou_room_0_vertices_00000E18[32] = 
{
	 { 200, 0, 339, 0, -4608, -8685, 140, 140, 140, 255 }, // 0x00000E18
	 { 200, 0, 400, 0, -4608, -10240, 76, 76, 76, 255 }, // 0x00000E28
	 { 212, 0, 400, 0, -4915, -10240, 76, 76, 76, 255 }, // 0x00000E38
	 { 212, 0, 339, 0, -4915, -8685, 140, 140, 140, 255 }, // 0x00000E48
	 { -200, 0, -288, 0, 5632, 7364, 255, 255, 255, 255 }, // 0x00000E58
	 { 0, 0, -175, 0, 512, 4488, 76, 76, 76, 255 }, // 0x00000E68
	 { 0, 0, -288, 0, 512, 7364, 76, 76, 76, 255 }, // 0x00000E78
	 { 200, 0, 280, 0, -4608, -7158, 255, 255, 255, 255 }, // 0x00000E88
	 { 200, 0, 167, 0, -4608, -4286, 76, 76, 76, 255 }, // 0x00000E98
	 { 0, 0, 167, 0, 512, -4286, 76, 76, 76, 255 }, // 0x00000EA8
	 { 200, 0, 81, 0, -4608, -2071, 255, 255, 255, 255 }, // 0x00000EB8
	 { -200, 0, 81, 0, 5632, -2071, 255, 255, 255, 255 }, // 0x00000EC8
	 { -200, 0, 167, 0, 5632, -4286, 76, 76, 76, 255 }, // 0x00000ED8
	 { -200, 0, 280, 0, 5632, -7158, 255, 255, 255, 255 }, // 0x00000EE8
	 { 200, 0, -9, 0, -4608, 239, 76, 76, 76, 255 }, // 0x00000EF8
	 { 0, 0, -9, 0, 512, 239, 76, 76, 76, 255 }, // 0x00000F08
	 { 200, 0, -88, 0, -4608, 2242, 255, 255, 255, 255 }, // 0x00000F18
	 { -200, 0, -88, 0, 5632, 2242, 255, 255, 255, 255 }, // 0x00000F28
	 { -200, 0, -9, 0, 5632, 239, 76, 76, 76, 255 }, // 0x00000F38
	 { 200, 0, -288, 0, -4608, 7364, 255, 255, 255, 255 }, // 0x00000F48
	 { 0, 0, 400, 0, 512, -10240, 153, 153, 153, 255 }, // 0x00000F58
	 { -200, 0, 400, 0, 5632, -10240, 76, 76, 76, 255 }, // 0x00000F68
	 { -200, 0, -175, 0, 5632, 4488, 76, 76, 76, 255 }, // 0x00000F78
	 { 200, 0, -175, 0, -4608, 4488, 76, 76, 76, 255 }, // 0x00000F88
	 { 20, 0, 420, 0, -1024, 2048, 216, 216, 216, 255 }, // 0x00000F98
	 { 20, 0, 400, 0, -512, 2048, 153, 153, 153, 255 }, // 0x00000FA8
	 { -40, 0, 400, 0, -512, 512, 153, 153, 153, 255 }, // 0x00000FB8
	 { -40, 0, 420, 0, -1024, 512, 153, 153, 153, 255 }, // 0x00000FC8
	 { 73, 160, 502, 0, 401, 222, 0, 0, 0, 255 }, // 0x00000FD8
	 { 73, 0, 502, 0, 21, 35, 0, 0, 0, 255 }, // 0x00000FE8
	 { -93, 0, 502, 0, -540, 1174, 0, 0, 0, 255 }, // 0x00000FF8
	 { -93, 160, 502, 0, -160, 1360, 0, 0, 0, 255 }, // 0x00001008
};

Vtx_t _syatekijyou_room_0_vertices_00001018[8] = 
{
	 { -200, 0, -288, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001018
	 { 212, 0, -288, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001028
	 { -200, 160, -288, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001038
	 { 212, 160, -288, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001048
	 { -200, 0, 502, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001058
	 { 212, 0, 502, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001068
	 { -200, 160, 502, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001078
	 { 212, 160, 502, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001088
};

Gfx _syatekijyou_room_0_dlist_00001098[] =
{
	gsDPPipeSync(), // 0x00001098
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000010A0
	gsSPVertex(_syatekijyou_room_0_vertices_00001018, 8, 0), // 0x000010A8
	gsSPCullDisplayList(0, 7), // 0x000010B0
	gsDPPipeSync(), // 0x000010B8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000010C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000010C8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000010D0
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000B0C0), // 0x000010D8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000010E0
	gsDPLoadSync(), // 0x000010E8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x000010F0
	gsDPPipeSync(), // 0x000010F8
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001100
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001108
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000054C0), // 0x00001110
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 256, 7, 0, 1, 5, 2, 1, 5, 2), // 0x00001118
	gsDPLoadSync(), // 0x00001120
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001128
	gsDPPipeSync(), // 0x00001130
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, 1, 5, 2, 1, 5, 2), // 0x00001138
	gsDPSetTileSize(1, 0, 0, 124, 124), // 0x00001140
	gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001148
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001150
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001158
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001160
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001168
	gsSPVertex(_syatekijyou_room_0_vertices_00000E18, 32, 0), // 0x00001170
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001178
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00001180
	gsSP2Triangles(8, 10, 9, 0, 11, 12, 9, 0), // 0x00001188
	gsSP2Triangles(12, 13, 9, 0, 10, 14, 15, 0), // 0x00001190
	gsSP2Triangles(14, 16, 15, 0, 17, 18, 15, 0), // 0x00001198
	gsSP2Triangles(18, 11, 15, 0, 19, 6, 5, 0), // 0x000011A0
	gsSP2Triangles(13, 20, 9, 0, 13, 21, 20, 0), // 0x000011A8
	gsSP2Triangles(20, 7, 9, 0, 20, 1, 7, 0), // 0x000011B0
	gsSP2Triangles(15, 11, 9, 0, 15, 9, 10, 0), // 0x000011B8
	gsSP2Triangles(5, 17, 15, 0, 15, 16, 5, 0), // 0x000011C0
	gsSP2Triangles(22, 17, 5, 0, 4, 22, 5, 0), // 0x000011C8
	gsSP2Triangles(16, 23, 5, 0, 23, 19, 5, 0), // 0x000011D0
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x000011D8
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000011E0
	gsSPEndDisplayList(), // 0x000011E8
};

Vtx_t _syatekijyou_room_0_vertices_000011F0[8] = 
{
	 { 140, 40, 160, 0, 17853, 1024, 255, 255, 255, 255 }, // 0x000011F0
	 { 140, 40, 130, 0, 17853, -468, 255, 255, 255, 255 }, // 0x00001200
	 { -200, 40, 130, 0, 2625, -468, 255, 255, 255, 255 }, // 0x00001210
	 { -200, 40, 160, 0, 2625, 1024, 255, 255, 255, 255 }, // 0x00001220
	 { 140, 36, 160, 0, 4101, 1151, 127, 127, 127, 255 }, // 0x00001230
	 { 140, 40, 160, 0, 4101, 1024, 127, 127, 127, 255 }, // 0x00001240
	 { -200, 40, 160, 0, -5120, 1024, 127, 127, 127, 255 }, // 0x00001250
	 { -200, 36, 160, 0, -5120, 1151, 127, 127, 127, 255 }, // 0x00001260
};

Vtx_t _syatekijyou_room_0_vertices_00001270[4] = 
{
	 { 140, 0, 160, 0, 1709, 1038, 127, 127, 127, 255 }, // 0x00001270
	 { 140, 36, 160, 0, 1709, 424, 127, 127, 127, 255 }, // 0x00001280
	 { -200, 36, 160, 0, -4096, 403, 127, 127, 127, 255 }, // 0x00001290
	 { -200, 0, 160, 0, -4096, 1017, 127, 127, 127, 255 }, // 0x000012A0
};

Vtx_t _syatekijyou_room_0_vertices_000012B0[4] = 
{
	 { -200, 35, 130, 0, -5120, 1151, 127, 127, 127, 255 }, // 0x000012B0
	 { -200, 40, 130, 0, -5120, 1024, 127, 127, 127, 255 }, // 0x000012C0
	 { 140, 40, 130, 0, 4101, 1024, 127, 127, 127, 255 }, // 0x000012D0
	 { 140, 35, 130, 0, 4101, 1151, 127, 127, 127, 255 }, // 0x000012E0
};

Vtx_t _syatekijyou_room_0_vertices_000012F0[4] = 
{
	 { -200, 0, 130, 0, -2389, 1570, 127, 127, 127, 255 }, // 0x000012F0
	 { -200, 35, 130, 0, -2389, 767, 127, 127, 127, 255 }, // 0x00001300
	 { 140, 35, 130, 0, 4437, 767, 127, 127, 127, 255 }, // 0x00001310
	 { 140, 0, 130, 0, 4437, 1570, 127, 127, 127, 255 }, // 0x00001320
};

Vtx_t _syatekijyou_room_0_vertices_00001330[8] = 
{
	 { -200, 0, 130, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001330
	 { 140, 0, 130, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001340
	 { -200, 40, 130, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001350
	 { 140, 40, 130, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001360
	 { -200, 0, 160, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001370
	 { 140, 0, 160, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001380
	 { -200, 40, 160, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001390
	 { 140, 40, 160, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013A0
};

Gfx _syatekijyou_room_0_dlist_000013B0[] =
{
	gsDPPipeSync(), // 0x000013B0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000013B8
	gsSPVertex(_syatekijyou_room_0_vertices_00001330, 8, 0), // 0x000013C0
	gsSPCullDisplayList(0, 7), // 0x000013C8
	gsDPPipeSync(), // 0x000013D0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000013D8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000013E0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000013E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000B2C0), // 0x000013F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000013F8
	gsDPLoadSync(), // 0x00001400
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001408
	gsDPPipeSync(), // 0x00001410
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001418
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001420
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001428
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001430
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001438
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001440
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001448
	gsSPVertex(_syatekijyou_room_0_vertices_000011F0, 8, 0), // 0x00001450
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001458
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001460
	gsDPPipeSync(), // 0x00001468
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000A4C0), // 0x00001470
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001478
	gsDPLoadSync(), // 0x00001480
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001488
	gsDPPipeSync(), // 0x00001490
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001498
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000014A0
	gsSPVertex(_syatekijyou_room_0_vertices_00001270, 4, 0), // 0x000014A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000014B0
	gsDPPipeSync(), // 0x000014B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000B2C0), // 0x000014C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000014C8
	gsDPLoadSync(), // 0x000014D0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000014D8
	gsDPPipeSync(), // 0x000014E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000014E8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000014F0
	gsSPVertex(_syatekijyou_room_0_vertices_000012B0, 4, 0), // 0x000014F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001500
	gsDPPipeSync(), // 0x00001508
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000A4C0), // 0x00001510
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001518
	gsDPLoadSync(), // 0x00001520
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001528
	gsDPPipeSync(), // 0x00001530
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001538
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001540
	gsSPVertex(_syatekijyou_room_0_vertices_000012F0, 4, 0), // 0x00001548
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001550
	gsSPEndDisplayList(), // 0x00001558
};

Vtx_t _syatekijyou_room_0_vertices_00001560[8] = 
{
	 { 120, 40, 400, 0, 8192, -448, 255, 255, 255, 255 }, // 0x00001560
	 { 120, 40, 160, 0, -4096, -448, 255, 255, 255, 255 }, // 0x00001570
	 { 80, 40, 160, 0, -4096, 1024, 255, 255, 255, 255 }, // 0x00001580
	 { 80, 40, 400, 0, 8192, 1024, 255, 255, 255, 255 }, // 0x00001590
	 { 80, 36, 400, 0, 6144, 1127, 114, 114, 114, 255 }, // 0x000015A0
	 { 80, 40, 400, 0, 6144, 1024, 165, 165, 165, 255 }, // 0x000015B0
	 { 80, 40, 160, 0, 0, 1024, 165, 165, 165, 255 }, // 0x000015C0
	 { 80, 36, 160, 0, 0, 1127, 165, 165, 165, 255 }, // 0x000015D0
};

Vtx_t _syatekijyou_room_0_vertices_000015E0[7] = 
{
	 { 120, 0, 340, 0, 2389, 1024, 114, 114, 114, 255 }, // 0x000015E0
	 { 120, 36, 340, 0, 2389, 410, 89, 89, 89, 255 }, // 0x000015F0
	 { 80, 36, 340, 0, 1361, 410, 89, 89, 89, 255 }, // 0x00001600
	 { 80, 0, 340, 0, 1361, 1024, 114, 114, 114, 255 }, // 0x00001610
	 { 80, 36, 340, 0, 1361, 410, 114, 114, 114, 255 }, // 0x00001620
	 { 80, 36, 160, 0, -1707, 410, 165, 165, 165, 255 }, // 0x00001630
	 { 80, 0, 160, 0, -1707, 1024, 114, 114, 114, 255 }, // 0x00001640
};

Vtx_t _syatekijyou_room_0_vertices_00001650[8] = 
{
	 { 80, 0, 160, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001650
	 { 120, 0, 160, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001660
	 { 80, 40, 160, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001670
	 { 120, 40, 160, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001680
	 { 80, 0, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001690
	 { 120, 0, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x000016A0
	 { 80, 40, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x000016B0
	 { 120, 40, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x000016C0
};

Gfx _syatekijyou_room_0_dlist_000016D0[] =
{
	gsDPPipeSync(), // 0x000016D0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000016D8
	gsSPVertex(_syatekijyou_room_0_vertices_00001650, 8, 0), // 0x000016E0
	gsSPCullDisplayList(0, 7), // 0x000016E8
	gsDPPipeSync(), // 0x000016F0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000016F8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001700
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001708
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000B2C0), // 0x00001710
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001718
	gsDPLoadSync(), // 0x00001720
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001728
	gsDPPipeSync(), // 0x00001730
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001738
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001740
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001748
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001750
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001758
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001760
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001768
	gsSPVertex(_syatekijyou_room_0_vertices_00001560, 8, 0), // 0x00001770
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001778
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001780
	gsDPPipeSync(), // 0x00001788
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000A4C0), // 0x00001790
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001798
	gsDPLoadSync(), // 0x000017A0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000017A8
	gsDPPipeSync(), // 0x000017B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000017B8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000017C0
	gsSPVertex(_syatekijyou_room_0_vertices_000015E0, 7, 0), // 0x000017C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000017D0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 3, 0), // 0x000017D8
	gsSPEndDisplayList(), // 0x000017E0
};

Vtx_t _syatekijyou_room_0_vertices_000017E8[4] = 
{
	 { 40, 10, 220, 0, 6144, 1024, 255, 255, 255, 255 }, // 0x000017E8
	 { 40, 10, 160, 0, 6144, -897, 114, 114, 114, 255 }, // 0x000017F8
	 { -80, 10, 160, 0, 0, -897, 114, 114, 114, 255 }, // 0x00001808
	 { -80, 10, 220, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00001818
};

Vtx_t _syatekijyou_room_0_vertices_00001828[12] = 
{
	 { 40, 0, 160, 0, 2047, 1002, 114, 114, 114, 255 }, // 0x00001828
	 { 40, 10, 160, 0, 2043, 661, 114, 114, 114, 255 }, // 0x00001838
	 { 40, 10, 220, 0, -2, 683, 255, 255, 255, 255 }, // 0x00001848
	 { 40, 0, 220, 0, 1, 1024, 114, 114, 114, 255 }, // 0x00001858
	 { -80, 0, 220, 0, 2154, 1024, 114, 114, 114, 255 }, // 0x00001868
	 { -80, 10, 220, 0, 2154, 665, 255, 255, 255, 255 }, // 0x00001878
	 { -80, 10, 160, 0, 0, 665, 114, 114, 114, 255 }, // 0x00001888
	 { -80, 0, 160, 0, 0, 1024, 114, 114, 114, 255 }, // 0x00001898
	 { 40, 0, 220, 0, 2983, 1072, 153, 153, 153, 255 }, // 0x000018A8
	 { 40, 10, 220, 0, 2987, 665, 255, 255, 255, 255 }, // 0x000018B8
	 { -80, 10, 220, 0, -1898, 618, 255, 255, 255, 255 }, // 0x000018C8
	 { -80, 0, 220, 0, -1902, 1025, 153, 153, 153, 255 }, // 0x000018D8
};

Vtx_t _syatekijyou_room_0_vertices_000018E8[4] = 
{
	 { -60, 20, 200, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000018E8
	 { 20, 20, 200, 0, 4096, 1024, 255, 255, 255, 255 }, // 0x000018F8
	 { 20, 20, 160, 0, 4096, -736, 114, 114, 114, 255 }, // 0x00001908
	 { -60, 20, 160, 0, 0, -736, 114, 114, 114, 255 }, // 0x00001918
};

Vtx_t _syatekijyou_room_0_vertices_00001928[12] = 
{
	 { 20, 10, 200, 0, 2351, 1016, 153, 153, 153, 255 }, // 0x00001928
	 { 20, 20, 200, 0, 2349, 723, 255, 255, 255, 255 }, // 0x00001938
	 { -60, 20, 200, 0, 1, 736, 255, 255, 255, 255 }, // 0x00001948
	 { -60, 10, 200, 0, 2, 1030, 153, 153, 153, 255 }, // 0x00001958
	 { 20, 10, 160, 0, 1587, 1024, 114, 114, 114, 255 }, // 0x00001968
	 { 20, 20, 160, 0, 1588, 619, 114, 114, 114, 255 }, // 0x00001978
	 { 20, 20, 200, 0, -32, 616, 255, 255, 255, 255 }, // 0x00001988
	 { 20, 10, 200, 0, -33, 1021, 114, 114, 114, 255 }, // 0x00001998
	 { -60, 10, 200, 0, 1651, 1024, 114, 114, 114, 255 }, // 0x000019A8
	 { -60, 20, 200, 0, 1651, 611, 255, 255, 255, 255 }, // 0x000019B8
	 { -60, 20, 160, 0, 2, 611, 114, 114, 114, 255 }, // 0x000019C8
	 { -60, 10, 160, 0, 2, 1024, 114, 114, 114, 255 }, // 0x000019D8
};

Vtx_t _syatekijyou_room_0_vertices_000019E8[8] = 
{
	 { -80, 0, 160, 0, 0, 0, 0, 0, 0, 0 }, // 0x000019E8
	 { 40, 0, 160, 0, 0, 0, 0, 0, 0, 0 }, // 0x000019F8
	 { -80, 20, 160, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A08
	 { 40, 20, 160, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A18
	 { -80, 0, 220, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A28
	 { 40, 0, 220, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A38
	 { -80, 20, 220, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A48
	 { 40, 20, 220, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A58
};

Gfx _syatekijyou_room_0_dlist_00001A68[] =
{
	gsDPPipeSync(), // 0x00001A68
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001A70
	gsSPVertex(_syatekijyou_room_0_vertices_000019E8, 8, 0), // 0x00001A78
	gsSPCullDisplayList(0, 7), // 0x00001A80
	gsDPPipeSync(), // 0x00001A88
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001A90
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001A98
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001AA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000B2C0), // 0x00001AA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001AB0
	gsDPLoadSync(), // 0x00001AB8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001AC0
	gsDPPipeSync(), // 0x00001AC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001AD0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001AD8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001AE0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001AE8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001AF0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001AF8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001B00
	gsSPVertex(_syatekijyou_room_0_vertices_000017E8, 4, 0), // 0x00001B08
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B10
	gsDPPipeSync(), // 0x00001B18
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000A4C0), // 0x00001B20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001B28
	gsDPLoadSync(), // 0x00001B30
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001B38
	gsDPPipeSync(), // 0x00001B40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001B48
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001B50
	gsSPVertex(_syatekijyou_room_0_vertices_00001828, 12, 0), // 0x00001B58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B60
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001B68
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001B70
	gsDPPipeSync(), // 0x00001B78
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000B2C0), // 0x00001B80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001B88
	gsDPLoadSync(), // 0x00001B90
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00001B98
	gsDPPipeSync(), // 0x00001BA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001BA8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001BB0
	gsSPVertex(_syatekijyou_room_0_vertices_000018E8, 4, 0), // 0x00001BB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001BC0
	gsDPPipeSync(), // 0x00001BC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000A4C0), // 0x00001BD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001BD8
	gsDPLoadSync(), // 0x00001BE0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001BE8
	gsDPPipeSync(), // 0x00001BF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001BF8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001C00
	gsSPVertex(_syatekijyou_room_0_vertices_00001928, 12, 0), // 0x00001C08
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001C10
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001C18
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00001C20
	gsSPEndDisplayList(), // 0x00001C28
};

Vtx_t _syatekijyou_room_0_vertices_00001C30[32] = 
{
	 { 0, 261, 380, 0, 2048, 270, 25, 25, 25, 255 }, // 0x00001C30
	 { 200, 201, 380, 0, 12288, 270, 89, 89, 89, 255 }, // 0x00001C40
	 { 200, 189, 380, 0, 12288, 1024, 153, 153, 153, 255 }, // 0x00001C50
	 { 0, 249, 380, 0, 2048, 1024, 25, 25, 25, 255 }, // 0x00001C60
	 { 200, 189, 380, 0, 12288, 1024, 204, 204, 204, 255 }, // 0x00001C70
	 { 200, 189, 400, 0, 12288, 0, 204, 204, 204, 255 }, // 0x00001C80
	 { 0, 249, 400, 0, 2048, 0, 25, 25, 25, 255 }, // 0x00001C90
	 { 0, 249, 380, 0, 2048, 1024, 25, 25, 25, 255 }, // 0x00001CA0
	 { -200, 201, 380, 0, -8192, 270, 89, 89, 89, 255 }, // 0x00001CB0
	 { -200, 189, 380, 0, -8192, 1024, 153, 153, 153, 255 }, // 0x00001CC0
	 { -200, 189, 400, 0, -8192, 0, 204, 204, 204, 255 }, // 0x00001CD0
	 { -200, 189, 380, 0, -8192, 1024, 204, 204, 204, 255 }, // 0x00001CE0
	 { 260, 183, -380, 0, -889, 624, 255, 255, 255, 255 }, // 0x00001CF0
	 { 7, 258, -380, 0, 9324, 463, 25, 25, 25, 255 }, // 0x00001D00
	 { 7, 246, -380, 0, 9259, 976, 25, 25, 25, 255 }, // 0x00001D10
	 { 260, 171, -380, 0, -954, 1138, 255, 255, 255, 255 }, // 0x00001D20
	 { 260, 171, -400, 0, -8192, 1024, 127, 127, 127, 255 }, // 0x00001D30
	 { 260, 171, -380, 0, -8192, 0, 127, 127, 127, 255 }, // 0x00001D40
	 { 7, 246, -380, 0, 12288, 0, 25, 25, 25, 255 }, // 0x00001D50
	 { 7, 246, -400, 0, 12288, 1024, 25, 25, 25, 255 }, // 0x00001D60
	 { -260, 171, -380, 0, -3887, 1103, 255, 255, 255, 255 }, // 0x00001D70
	 { -8, 246, -380, 0, 6464, 917, 25, 25, 25, 255 }, // 0x00001D80
	 { -8, 258, -380, 0, 6538, 464, 25, 25, 25, 255 }, // 0x00001D90
	 { -260, 183, -380, 0, -3813, 650, 255, 255, 255, 255 }, // 0x00001DA0
	 { -8, 246, -400, 0, 12288, 1024, 25, 25, 25, 255 }, // 0x00001DB0
	 { -8, 246, -380, 0, 12288, 0, 25, 25, 25, 255 }, // 0x00001DC0
	 { -260, 171, -380, 0, -8192, 0, 127, 127, 127, 255 }, // 0x00001DD0
	 { -260, 171, -400, 0, -8192, 1024, 127, 127, 127, 255 }, // 0x00001DE0
	 { 196, 190, -244, 0, 12288, 1024, 89, 89, 89, 255 }, // 0x00001DF0
	 { 196, 190, -224, 0, 12288, 0, 89, 89, 89, 255 }, // 0x00001E00
	 { 7, 246, -224, 0, 2048, 0, 25, 25, 25, 255 }, // 0x00001E10
	 { 7, 246, -244, 0, 2048, 1024, 25, 25, 25, 255 }, // 0x00001E20
};

Vtx_t _syatekijyou_room_0_vertices_00001E30[32] = 
{
	 { -7, 246, -224, 0, 2048, 0, 25, 25, 25, 255 }, // 0x00001E30
	 { -195, 190, -224, 0, -8192, 0, 89, 89, 89, 255 }, // 0x00001E40
	 { -195, 190, -240, 0, -8192, 1024, 89, 89, 89, 255 }, // 0x00001E50
	 { -7, 246, -244, 0, 2048, 1024, 25, 25, 25, 255 }, // 0x00001E60
	 { -195, 190, -224, 0, -8192, 1024, 255, 255, 255, 255 }, // 0x00001E70
	 { -7, 246, -224, 0, 2048, 1024, 25, 25, 25, 255 }, // 0x00001E80
	 { -7, 258, -224, 0, 2048, 270, 25, 25, 25, 255 }, // 0x00001E90
	 { -195, 202, -224, 0, -8192, 270, 153, 153, 153, 255 }, // 0x00001EA0
	 { 7, 246, -224, 0, 2048, 1024, 25, 25, 25, 255 }, // 0x00001EB0
	 { 196, 190, -224, 0, 12288, 1024, 255, 255, 255, 255 }, // 0x00001EC0
	 { 196, 202, -224, 0, 12288, 270, 153, 153, 153, 255 }, // 0x00001ED0
	 { 7, 258, -224, 0, 2048, 270, 25, 25, 25, 255 }, // 0x00001EE0
	 { -196, 190, -19, 0, -8227, 656, 255, 255, 255, 255 }, // 0x00001EF0
	 { -7, 246, -19, 0, 2023, 474, 25, 25, 25, 255 }, // 0x00001F00
	 { -7, 258, -19, 0, 2063, 36, 25, 25, 25, 255 }, // 0x00001F10
	 { -196, 202, -19, 0, -8186, 218, 89, 89, 89, 255 }, // 0x00001F20
	 { 7, 247, -19, 0, 2053, 575, 25, 25, 25, 255 }, // 0x00001F30
	 { 196, 190, -19, 0, 12356, 575, 255, 255, 255, 255 }, // 0x00001F40
	 { 196, 202, -19, 0, 12356, 0, 153, 153, 153, 255 }, // 0x00001F50
	 { 7, 259, -19, 0, 2053, 0, 25, 25, 25, 255 }, // 0x00001F60
	 { 196, 190, -39, 0, 12288, 1024, 89, 89, 89, 255 }, // 0x00001F70
	 { 196, 190, -19, 0, 12288, 0, 89, 89, 89, 255 }, // 0x00001F80
	 { 7, 247, -19, 0, 2048, 0, 25, 25, 25, 255 }, // 0x00001F90
	 { 7, 247, -39, 0, 2048, 1024, 25, 25, 25, 255 }, // 0x00001FA0
	 { -7, 246, -19, 0, 2048, 0, 25, 25, 25, 255 }, // 0x00001FB0
	 { -196, 190, -19, 0, -8192, 0, 89, 89, 89, 255 }, // 0x00001FC0
	 { -196, 190, -39, 0, -8192, 1024, 89, 89, 89, 255 }, // 0x00001FD0
	 { -7, 246, -39, 0, 2048, 1024, 25, 25, 25, 255 }, // 0x00001FE0
	 { 196, 190, 160, 0, 12288, 1024, 89, 89, 89, 255 }, // 0x00001FF0
	 { 196, 190, 180, 0, 12288, 0, 89, 89, 89, 255 }, // 0x00002000
	 { 7, 246, 180, 0, 2048, 0, 25, 25, 25, 255 }, // 0x00002010
	 { 7, 246, 160, 0, 2048, 1024, 25, 25, 25, 255 }, // 0x00002020
};

Vtx_t _syatekijyou_room_0_vertices_00002030[32] = 
{
	 { -7, 246, 180, 0, 2048, 0, 25, 25, 25, 255 }, // 0x00002030
	 { -196, 190, 180, 0, -8192, 0, 89, 89, 89, 255 }, // 0x00002040
	 { -196, 190, 160, 0, -8192, 1024, 89, 89, 89, 255 }, // 0x00002050
	 { -7, 246, 160, 0, 2048, 1024, 25, 25, 25, 255 }, // 0x00002060
	 { -196, 190, 180, 0, -8192, 1024, 255, 255, 255, 255 }, // 0x00002070
	 { -7, 246, 180, 0, 2048, 1024, 25, 25, 25, 255 }, // 0x00002080
	 { -7, 258, 180, 0, 2048, 306, 25, 25, 25, 255 }, // 0x00002090
	 { -196, 202, 180, 0, -8192, 306, 153, 153, 153, 255 }, // 0x000020A0
	 { 7, 246, 180, 0, 2048, 1024, 25, 25, 25, 255 }, // 0x000020B0
	 { 196, 190, 180, 0, 12288, 1024, 255, 255, 255, 255 }, // 0x000020C0
	 { 196, 202, 180, 0, 12288, 306, 153, 153, 153, 255 }, // 0x000020D0
	 { 7, 258, 180, 0, 2048, 306, 25, 25, 25, 255 }, // 0x000020E0
	 { -124, 212, -239, 0, 12288, 1024, 76, 76, 76, 255 }, // 0x000020F0
	 { -124, 212, -228, 0, 12288, 0, 76, 76, 76, 255 }, // 0x00002100
	 { -196, 149, -228, 0, 7798, 0, 127, 127, 127, 255 }, // 0x00002110
	 { -196, 149, -239, 0, 7798, 1024, 127, 127, 127, 255 }, // 0x00002120
	 { 200, 145, -243, 0, 7798, 1024, 127, 127, 127, 255 }, // 0x00002130
	 { 200, 145, -228, 0, 7798, 0, 127, 127, 127, 255 }, // 0x00002140
	 { 124, 212, -228, 0, 12288, 0, 76, 76, 76, 255 }, // 0x00002150
	 { 124, 212, -243, 0, 12288, 1024, 76, 76, 76, 255 }, // 0x00002160
	 { 196, 148, -38, 0, 7798, 1024, 127, 127, 127, 255 }, // 0x00002170
	 { 196, 148, -23, 0, 7798, 0, 127, 127, 127, 255 }, // 0x00002180
	 { 124, 212, -23, 0, 12288, 0, 76, 76, 76, 255 }, // 0x00002190
	 { 124, 212, -38, 0, 12288, 1024, 76, 76, 76, 255 }, // 0x000021A0
	 { -124, 212, -38, 0, 12288, 1024, 76, 76, 76, 255 }, // 0x000021B0
	 { -124, 212, -23, 0, 12288, 0, 76, 76, 76, 255 }, // 0x000021C0
	 { -196, 148, -23, 0, 7798, 0, 127, 127, 127, 255 }, // 0x000021D0
	 { -196, 148, -38, 0, 7798, 1024, 127, 127, 127, 255 }, // 0x000021E0
	 { -124, 212, 161, 0, 12288, 1024, 76, 76, 76, 255 }, // 0x000021F0
	 { -124, 212, 176, 0, 12288, 0, 76, 76, 76, 255 }, // 0x00002200
	 { -196, 148, 176, 0, 7798, 0, 127, 127, 127, 255 }, // 0x00002210
	 { -196, 148, 161, 0, 7798, 1024, 127, 127, 127, 255 }, // 0x00002220
};

Vtx_t _syatekijyou_room_0_vertices_00002230[32] = 
{
	 { 196, 148, 161, 0, 7798, 1024, 127, 127, 127, 255 }, // 0x00002230
	 { 196, 148, 176, 0, 7798, 0, 127, 127, 127, 255 }, // 0x00002240
	 { 124, 212, 176, 0, 12288, 0, 76, 76, 76, 255 }, // 0x00002250
	 { 124, 212, 161, 0, 12288, 1024, 76, 76, 76, 255 }, // 0x00002260
	 { 196, 145, -321, 0, -17067, 1024, 178, 178, 178, 255 }, // 0x00002270
	 { 196, 145, 400, 0, 15019, 1024, 178, 178, 178, 255 }, // 0x00002280
	 { 196, 160, 400, 0, 15019, 0, 89, 89, 89, 255 }, // 0x00002290
	 { 196, 160, -321, 0, -17067, 0, 89, 89, 89, 255 }, // 0x000022A0
	 { 196, 145, 70, 0, -1192, 341, 255, 255, 255, 255 }, // 0x000022B0
	 { 196, 145, -29, 0, -6220, 341, 51, 51, 51, 255 }, // 0x000022C0
	 { 200, 145, -29, 0, -6220, 569, 51, 51, 51, 255 }, // 0x000022D0
	 { 200, 145, 70, 0, -1192, 569, 255, 255, 255, 255 }, // 0x000022E0
	 { 196, 145, 167, 0, 3835, 341, 51, 51, 51, 255 }, // 0x000022F0
	 { 200, 145, 167, 0, 3835, 569, 51, 51, 51, 255 }, // 0x00002300
	 { 200, 145, 400, 0, 17067, 569, 51, 51, 51, 255 }, // 0x00002310
	 { 196, 145, 400, 0, 17067, 341, 51, 51, 51, 255 }, // 0x00002320
	 { 196, 145, 284, 0, 10451, 341, 255, 255, 255, 255 }, // 0x00002330
	 { 200, 145, 284, 0, 10451, 569, 255, 255, 255, 255 }, // 0x00002340
	 { 196, 145, -135, 0, -11074, 341, 255, 255, 255, 255 }, // 0x00002350
	 { 200, 145, -135, 0, -11074, 569, 255, 255, 255, 255 }, // 0x00002360
	 { 196, 145, -321, 0, -15019, 341, 51, 51, 51, 255 }, // 0x00002370
	 { 200, 145, -321, 0, -15019, 569, 51, 51, 51, 255 }, // 0x00002380
	 { -200, 145, -135, 0, -11074, 569, 255, 255, 255, 255 }, // 0x00002390
	 { -200, 145, -321, 0, -15019, 569, 51, 51, 51, 255 }, // 0x000023A0
	 { -196, 145, -321, 0, -15019, 341, 51, 51, 51, 255 }, // 0x000023B0
	 { -196, 145, -135, 0, -11074, 341, 255, 255, 255, 255 }, // 0x000023C0
	 { -200, 145, -29, 0, -6220, 569, 51, 51, 51, 255 }, // 0x000023D0
	 { -196, 145, -29, 0, -6220, 341, 51, 51, 51, 255 }, // 0x000023E0
	 { -200, 145, 284, 0, 10451, 569, 255, 255, 255, 255 }, // 0x000023F0
	 { -200, 145, 167, 0, 3835, 569, 51, 51, 51, 255 }, // 0x00002400
	 { -196, 145, 167, 0, 3835, 341, 51, 51, 51, 255 }, // 0x00002410
	 { -196, 145, 284, 0, 10451, 341, 255, 255, 255, 255 }, // 0x00002420
};

Vtx_t _syatekijyou_room_0_vertices_00002430[62] = 
{
	 { -200, 145, 284, 0, 10451, 569, 255, 255, 255, 255 }, // 0x00002430
	 { -196, 145, 284, 0, 10451, 341, 255, 255, 255, 255 }, // 0x00002440
	 { -196, 145, 400, 0, 17067, 341, 51, 51, 51, 255 }, // 0x00002450
	 { -200, 145, 400, 0, 17067, 569, 51, 51, 51, 255 }, // 0x00002460
	 { -200, 145, 167, 0, 3835, 569, 51, 51, 51, 255 }, // 0x00002470
	 { -200, 145, 70, 0, -1192, 569, 255, 255, 255, 255 }, // 0x00002480
	 { -196, 145, 70, 0, -1192, 341, 255, 255, 255, 255 }, // 0x00002490
	 { -196, 145, 167, 0, 3835, 341, 51, 51, 51, 255 }, // 0x000024A0
	 { -200, 145, -29, 0, -6220, 569, 51, 51, 51, 255 }, // 0x000024B0
	 { -196, 145, -29, 0, -6220, 341, 51, 51, 51, 255 }, // 0x000024C0
	 { -196, 160, -321, 0, -17067, 0, 89, 89, 89, 255 }, // 0x000024D0
	 { -196, 160, 400, 0, 15019, 0, 89, 89, 89, 255 }, // 0x000024E0
	 { -196, 145, 400, 0, 15019, 1024, 178, 178, 178, 255 }, // 0x000024F0
	 { -196, 145, -321, 0, -17067, 1024, 178, 178, 178, 255 }, // 0x00002500
	 { -196, 204, -321, 0, -17067, 0, 89, 89, 89, 255 }, // 0x00002510
	 { -196, 204, 400, 0, 15019, 0, 89, 89, 89, 255 }, // 0x00002520
	 { -196, 189, 400, 0, 15019, 1024, 178, 178, 178, 255 }, // 0x00002530
	 { -196, 189, -321, 0, -17067, 1024, 178, 178, 178, 255 }, // 0x00002540
	 { 196, 189, -321, 0, -17067, 1024, 178, 178, 178, 255 }, // 0x00002550
	 { 196, 189, 400, 0, 15019, 1024, 178, 178, 178, 255 }, // 0x00002560
	 { 196, 204, 400, 0, 15019, 0, 89, 89, 89, 255 }, // 0x00002570
	 { 196, 204, -321, 0, -17067, 0, 89, 89, 89, 255 }, // 0x00002580
	 { 7, 258, -400, 0, -17067, 0, 25, 25, 25, 255 }, // 0x00002590
	 { 7, 258, 400, 0, 15019, 0, 25, 25, 25, 255 }, // 0x000025A0
	 { 7, 243, 400, 0, 15019, 1024, 114, 114, 114, 255 }, // 0x000025B0
	 { 7, 243, -400, 0, -17067, 1024, 114, 114, 114, 255 }, // 0x000025C0
	 { -7, 243, 400, 0, -5552, 569, 89, 89, 89, 255 }, // 0x000025D0
	 { -7, 243, -400, 0, -25274, 569, 51, 51, 51, 255 }, // 0x000025E0
	 { 7, 243, -400, 0, -25274, 341, 51, 51, 51, 255 }, // 0x000025F0
	 { 7, 243, 400, 0, -5552, 341, 89, 89, 89, 255 }, // 0x00002600
	 { -7, 243, -400, 0, -17067, 1024, 114, 114, 114, 255 }, // 0x00002610
	 { -7, 243, 400, 0, 15019, 1024, 114, 114, 114, 255 }, // 0x00002620
	 { -7, 258, 400, 0, 15019, 0, 25, 25, 25, 255 }, // 0x00002630
	 { -7, 258, -400, 0, -17067, 0, 25, 25, 25, 255 }, // 0x00002640
	 { -200, 145, 400, 0, 17067, 569, 51, 51, 51, 255 }, // 0x00002650
	 { -200, 145, 396, 0, 17067, 341, 51, 51, 51, 255 }, // 0x00002660
	 { 196, 145, 396, 0, 10451, 341, 51, 51, 51, 255 }, // 0x00002670
	 { 196, 145, 400, 0, 10451, 569, 51, 51, 51, 255 }, // 0x00002680
	 { 200, 145, 396, 0, -5549, 1024, 178, 178, 178, 255 }, // 0x00002690
	 { -200, 145, 396, 0, 15019, 1024, 178, 178, 178, 255 }, // 0x000026A0
	 { -200, 160, 396, 0, 15019, 0, 89, 89, 89, 255 }, // 0x000026B0
	 { 200, 160, 396, 0, -5549, 0, 89, 89, 89, 255 }, // 0x000026C0
	 { -196, 189, 400, 0, 17067, 341, 51, 51, 51, 255 }, // 0x000026D0
	 { -200, 189, 400, 0, 17067, 569, 51, 51, 51, 255 }, // 0x000026E0
	 { -200, 189, -321, 0, -15019, 569, 51, 51, 51, 255 }, // 0x000026F0
	 { -196, 189, -321, 0, -15019, 341, 51, 51, 51, 255 }, // 0x00002700
	 { 200, 189, 400, 0, 17067, 569, 51, 51, 51, 255 }, // 0x00002710
	 { 196, 189, 400, 0, 17067, 341, 51, 51, 51, 255 }, // 0x00002720
	 { 196, 189, -321, 0, -15019, 341, 51, 51, 51, 255 }, // 0x00002730
	 { 200, 189, -321, 0, -15019, 569, 51, 51, 51, 255 }, // 0x00002740
	 { -196, 148, -23, 0, 7798, 1024, 255, 255, 255, 255 }, // 0x00002750
	 { -125, 211, -23, 0, 12238, 1024, 255, 255, 255, 255 }, // 0x00002760
	 { -151, 203, -23, 0, 11059, 0, 153, 153, 153, 255 }, // 0x00002770
	 { -196, 162, -23, 0, 8153, 0, 255, 255, 255, 255 }, // 0x00002780
	 { -196, 149, -228, 0, 7798, 1024, 255, 255, 255, 255 }, // 0x00002790
	 { -125, 211, -228, 0, 12238, 1024, 255, 255, 255, 255 }, // 0x000027A0
	 { -151, 203, -228, 0, 11059, 0, 153, 153, 153, 255 }, // 0x000027B0
	 { -196, 162, -228, 0, 8153, 0, 255, 255, 255, 255 }, // 0x000027C0
	 { 200, 159, -228, 0, 8153, 0, 255, 255, 255, 255 }, // 0x000027D0
	 { 151, 203, -228, 0, 11059, 0, 255, 255, 255, 255 }, // 0x000027E0
	 { 125, 211, -228, 0, 12238, 1024, 153, 153, 153, 255 }, // 0x000027F0
	 { 200, 145, -228, 0, 7798, 1024, 255, 255, 255, 255 }, // 0x00002800
};

Vtx_t _syatekijyou_room_0_vertices_00002810[12] = 
{
	 { 196, 162, -23, 0, 8153, 0, 255, 255, 255, 255 }, // 0x00002810
	 { 151, 203, -23, 0, 11059, 0, 255, 255, 255, 255 }, // 0x00002820
	 { 125, 211, -23, 0, 12238, 1024, 153, 153, 153, 255 }, // 0x00002830
	 { 196, 148, -23, 0, 7798, 1024, 255, 255, 255, 255 }, // 0x00002840
	 { 196, 162, 176, 0, 8153, 0, 255, 255, 255, 255 }, // 0x00002850
	 { 151, 203, 176, 0, 11059, 0, 255, 255, 255, 255 }, // 0x00002860
	 { 125, 211, 176, 0, 12238, 1024, 153, 153, 153, 255 }, // 0x00002870
	 { 196, 148, 176, 0, 7798, 1024, 255, 255, 255, 255 }, // 0x00002880
	 { -196, 148, 176, 0, 7798, 1024, 255, 255, 255, 255 }, // 0x00002890
	 { -125, 211, 176, 0, 12238, 1024, 255, 255, 255, 255 }, // 0x000028A0
	 { -151, 203, 176, 0, 11059, 0, 153, 153, 153, 255 }, // 0x000028B0
	 { -196, 162, 176, 0, 8153, 0, 255, 255, 255, 255 }, // 0x000028C0
};

Vtx_t _syatekijyou_room_0_vertices_000028D0[8] = 
{
	 { -260, 145, -400, 0, 0, 0, 0, 0, 0, 0 }, // 0x000028D0
	 { 260, 145, -400, 0, 0, 0, 0, 0, 0, 0 }, // 0x000028E0
	 { -260, 261, -400, 0, 0, 0, 0, 0, 0, 0 }, // 0x000028F0
	 { 260, 261, -400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002900
	 { -260, 145, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002910
	 { 260, 145, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002920
	 { -260, 261, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002930
	 { 260, 261, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002940
};

Gfx _syatekijyou_room_0_dlist_00002950[] =
{
	gsDPPipeSync(), // 0x00002950
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002958
	gsSPVertex(_syatekijyou_room_0_vertices_000028D0, 8, 0), // 0x00002960
	gsSPCullDisplayList(0, 7), // 0x00002968
	gsDPPipeSync(), // 0x00002970
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002978
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002980
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002988
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000B2C0), // 0x00002990
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002998
	gsDPLoadSync(), // 0x000029A0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000029A8
	gsDPPipeSync(), // 0x000029B0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000029B8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000029C0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000029C8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000029D0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000029D8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000029E0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000029E8
	gsSPVertex(_syatekijyou_room_0_vertices_00001C30, 32, 0), // 0x000029F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000029F8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002A00
	gsSP2Triangles(8, 0, 3, 0, 8, 3, 9, 0), // 0x00002A08
	gsSP2Triangles(6, 10, 11, 0, 6, 11, 7, 0), // 0x00002A10
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002A18
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002A20
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002A28
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002A30
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002A38
	gsSPVertex(_syatekijyou_room_0_vertices_00001E30, 32, 0), // 0x00002A40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002A48
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002A50
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002A58
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002A60
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002A68
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002A70
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002A78
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002A80
	gsSPVertex(_syatekijyou_room_0_vertices_00002030, 32, 0), // 0x00002A88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002A90
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002A98
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002AA0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002AA8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002AB0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002AB8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002AC0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002AC8
	gsSPVertex(_syatekijyou_room_0_vertices_00002230, 32, 0), // 0x00002AD0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002AD8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002AE0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002AE8
	gsSP2Triangles(12, 8, 11, 0, 12, 11, 13, 0), // 0x00002AF0
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x00002AF8
	gsSP2Triangles(16, 12, 13, 0, 16, 13, 17, 0), // 0x00002B00
	gsSP2Triangles(9, 18, 19, 0, 9, 19, 10, 0), // 0x00002B08
	gsSP2Triangles(18, 20, 21, 0, 18, 21, 19, 0), // 0x00002B10
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x00002B18
	gsSP2Triangles(26, 22, 25, 0, 26, 25, 27, 0), // 0x00002B20
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002B28
	gsSPVertex(_syatekijyou_room_0_vertices_00002430, 32, 0), // 0x00002B30
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002B38
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002B40
	gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0), // 0x00002B48
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00002B50
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x00002B58
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x00002B60
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x00002B68
	gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0), // 0x00002B70
	gsSPVertex(_syatekijyou_room_0_vertices_00002610, 32, 0), // 0x00002B78
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002B80
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002B88
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002B90
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002B98
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002BA0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002BA8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002BB0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002BB8
	gsSPVertex(_syatekijyou_room_0_vertices_00002810, 12, 0), // 0x00002BC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002BC8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002BD0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002BD8
	gsSPEndDisplayList(), // 0x00002BE0
};

Vtx_t _syatekijyou_room_0_vertices_00002BE8[4] = 
{
	 { 21, 58, -216, 0, -956, 1024, 255, 255, 255, 255 }, // 0x00002BE8
	 { 21, 58, -279, 0, 4096, 1024, 255, 255, 255, 255 }, // 0x00002BF8
	 { -19, 58, -279, 0, 4096, 0, 255, 255, 255, 255 }, // 0x00002C08
	 { -19, 58, -216, 0, -956, 0, 255, 255, 255, 255 }, // 0x00002C18
};

Vtx_t _syatekijyou_room_0_vertices_00002C28[12] = 
{
	 { 21, 38, -279, 0, 4096, 1024, 140, 140, 140, 255 }, // 0x00002C28
	 { 21, 58, -279, 0, 4096, 0, 255, 255, 255, 255 }, // 0x00002C38
	 { 21, 58, -216, 0, -956, 0, 255, 255, 255, 255 }, // 0x00002C48
	 { 21, 38, -216, 0, -956, 1024, 89, 89, 89, 255 }, // 0x00002C58
	 { -19, 38, -216, 0, 3004, 1024, 89, 89, 89, 255 }, // 0x00002C68
	 { -19, 58, -216, 0, 3004, 0, 255, 255, 255, 255 }, // 0x00002C78
	 { -19, 58, -279, 0, -2048, 0, 255, 255, 255, 255 }, // 0x00002C88
	 { -19, 38, -279, 0, -2048, 1024, 140, 140, 140, 255 }, // 0x00002C98
	 { 21, 38, -216, 0, 1024, 1024, 140, 140, 140, 255 }, // 0x00002CA8
	 { 21, 58, -216, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00002CB8
	 { -19, 58, -216, 0, 0, 0, 255, 255, 255, 255 }, // 0x00002CC8
	 { -19, 38, -216, 0, 0, 1024, 140, 140, 140, 255 }, // 0x00002CD8
};

Vtx_t _syatekijyou_room_0_vertices_00002CE8[4] = 
{
	 { -140, 49, -109, 0, -956, 1024, 165, 165, 165, 255 }, // 0x00002CE8
	 { -140, 49, -274, 0, 4096, 1024, 165, 165, 165, 255 }, // 0x00002CF8
	 { -180, 27, -274, 0, 4096, 0, 51, 51, 51, 255 }, // 0x00002D08
	 { -180, 27, -109, 0, -956, 0, 51, 51, 51, 255 }, // 0x00002D18
};

Vtx_t _syatekijyou_room_0_vertices_00002D28[4] = 
{
	 { -140, 0, -274, 0, 4096, 1024, 140, 140, 140, 255 }, // 0x00002D28
	 { -140, 27, -274, 0, 4096, 0, 255, 255, 255, 255 }, // 0x00002D38
	 { -140, 27, -109, 0, -956, 0, 255, 255, 255, 255 }, // 0x00002D48
	 { -140, 0, -109, 0, -956, 1024, 89, 89, 89, 255 }, // 0x00002D58
};

Vtx_t _syatekijyou_room_0_vertices_00002D68[4] = 
{
	 { -180, 0, -109, 0, 3004, 1024, 38, 38, 38, 255 }, // 0x00002D68
	 { -180, 27, -109, 0, 3004, 0, 38, 38, 38, 255 }, // 0x00002D78
	 { -180, 27, -274, 0, -2048, 0, 38, 38, 38, 255 }, // 0x00002D88
	 { -180, 0, -274, 0, -2048, 1024, 38, 38, 38, 255 }, // 0x00002D98
};

Vtx_t _syatekijyou_room_0_vertices_00002DA8[4] = 
{
	 { -140, 0, -109, 0, 1427, 1024, 140, 140, 140, 255 }, // 0x00002DA8
	 { -140, 49, -109, 0, 1427, -729, 255, 255, 255, 255 }, // 0x00002DB8
	 { -180, 27, -109, 0, 0, 65, 255, 255, 255, 255 }, // 0x00002DC8
	 { -180, 0, -109, 0, 0, 1024, 140, 140, 140, 255 }, // 0x00002DD8
};

Vtx_t _syatekijyou_room_0_vertices_00002DE8[4] = 
{
	 { 181, 27, -112, 0, -1980, 1024, 51, 51, 51, 255 }, // 0x00002DE8
	 { 181, 27, -278, 0, 3072, 1024, 51, 51, 51, 255 }, // 0x00002DF8
	 { 141, 49, -278, 0, 3072, 0, 165, 165, 165, 255 }, // 0x00002E08
	 { 141, 49, -112, 0, -1980, 0, 165, 165, 165, 255 }, // 0x00002E18
};

Vtx_t _syatekijyou_room_0_vertices_00002E28[4] = 
{
	 { 181, 0, -278, 0, 4608, 1024, 38, 38, 38, 255 }, // 0x00002E28
	 { 181, 27, -278, 0, 4608, 0, 38, 38, 38, 255 }, // 0x00002E38
	 { 181, 27, -112, 0, -444, 0, 38, 38, 38, 255 }, // 0x00002E48
	 { 181, 0, -112, 0, -444, 1024, 38, 38, 38, 255 }, // 0x00002E58
};

Vtx_t _syatekijyou_room_0_vertices_00002E68[8] = 
{
	 { 141, 0, -112, 0, 3004, 1024, 89, 89, 89, 255 }, // 0x00002E68
	 { 141, 27, -112, 0, 3004, 0, 255, 255, 255, 255 }, // 0x00002E78
	 { 141, 27, -278, 0, -2048, 0, 255, 255, 255, 255 }, // 0x00002E88
	 { 141, 0, -278, 0, -2048, 1024, 140, 140, 140, 255 }, // 0x00002E98
	 { 181, 0, -112, 0, 1568, 1024, 140, 140, 140, 255 }, // 0x00002EA8
	 { 181, 27, -112, 0, 1568, -30, 255, 255, 255, 255 }, // 0x00002EB8
	 { 141, 49, -112, 0, 0, -901, 255, 255, 255, 255 }, // 0x00002EC8
	 { 141, 0, -112, 0, 0, 1024, 140, 140, 140, 255 }, // 0x00002ED8
};

Vtx_t _syatekijyou_room_0_vertices_00002EE8[4] = 
{
	 { 57, 40, -110, 0, -956, 1024, 255, 255, 255, 255 }, // 0x00002EE8
	 { 57, 40, -281, 0, 4096, 1024, 255, 255, 255, 255 }, // 0x00002EF8
	 { -56, 40, -281, 0, 4096, -3109, 255, 255, 255, 255 }, // 0x00002F08
	 { -56, 40, -110, 0, -956, -3109, 255, 255, 255, 255 }, // 0x00002F18
};

Vtx_t _syatekijyou_room_0_vertices_00002F28[20] = 
{
	 { 57, 0, -281, 0, 4096, 1024, 140, 140, 140, 255 }, // 0x00002F28
	 { 57, 40, -281, 0, 4096, 0, 255, 255, 255, 255 }, // 0x00002F38
	 { 57, 40, -110, 0, -956, 0, 255, 255, 255, 255 }, // 0x00002F48
	 { 57, 0, -110, 0, -956, 1024, 89, 89, 89, 255 }, // 0x00002F58
	 { -56, 0, -110, 0, 3004, 1024, 89, 89, 89, 255 }, // 0x00002F68
	 { -56, 40, -110, 0, 3004, 0, 255, 255, 255, 255 }, // 0x00002F78
	 { -56, 40, -281, 0, -2048, 0, 255, 255, 255, 255 }, // 0x00002F88
	 { -56, 0, -281, 0, -2048, 1024, 140, 140, 140, 255 }, // 0x00002F98
	 { 57, 0, -110, 0, 2204, 1024, 140, 140, 140, 255 }, // 0x00002FA8
	 { 57, 40, -110, 0, 2204, 0, 255, 255, 255, 255 }, // 0x00002FB8
	 { -56, 40, -110, 0, -1, 0, 255, 255, 255, 255 }, // 0x00002FC8
	 { -56, 0, -110, 0, -1, 1024, 140, 140, 140, 255 }, // 0x00002FD8
	 { 181, 0, -278, 0, 8218, 1024, 0, 0, 0, 255 }, // 0x00002FE8
	 { 141, 49, -278, 0, 7194, -569, 165, 165, 165, 255 }, // 0x00002FF8
	 { 141, 0, -278, 0, 7194, 1024, 38, 38, 38, 255 }, // 0x00003008
	 { 181, 27, -278, 0, 8218, 0, 38, 38, 38, 255 }, // 0x00003018
	 { -140, 0, -274, 0, 1024, 1024, 38, 38, 38, 255 }, // 0x00003028
	 { -140, 49, -274, 0, 1024, -233, 165, 165, 165, 255 }, // 0x00003038
	 { -180, 0, -274, 0, 0, 1024, 0, 0, 0, 255 }, // 0x00003048
	 { -180, 27, -274, 0, 0, 336, 38, 38, 38, 255 }, // 0x00003058
};

Vtx_t _syatekijyou_room_0_vertices_00003068[8] = 
{
	 { -180, 0, -281, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003068
	 { 181, 0, -281, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003078
	 { -180, 58, -281, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003088
	 { 181, 58, -281, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003098
	 { -180, 0, -109, 0, 0, 0, 0, 0, 0, 0 }, // 0x000030A8
	 { 181, 0, -109, 0, 0, 0, 0, 0, 0, 0 }, // 0x000030B8
	 { -180, 58, -109, 0, 0, 0, 0, 0, 0, 0 }, // 0x000030C8
	 { 181, 58, -109, 0, 0, 0, 0, 0, 0, 0 }, // 0x000030D8
};

Gfx _syatekijyou_room_0_dlist_000030E8[] =
{
	gsDPPipeSync(), // 0x000030E8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000030F0
	gsSPVertex(_syatekijyou_room_0_vertices_00003068, 8, 0), // 0x000030F8
	gsSPCullDisplayList(0, 7), // 0x00003100
	gsDPPipeSync(), // 0x00003108
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003110
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003118
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003120
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000B2C0), // 0x00003128
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003130
	gsDPLoadSync(), // 0x00003138
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003140
	gsDPPipeSync(), // 0x00003148
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003150
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003158
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003160
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003168
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003170
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003178
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003180
	gsSPVertex(_syatekijyou_room_0_vertices_00002BE8, 4, 0), // 0x00003188
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003190
	gsDPPipeSync(), // 0x00003198
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000A4C0), // 0x000031A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000031A8
	gsDPLoadSync(), // 0x000031B0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000031B8
	gsDPPipeSync(), // 0x000031C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000031C8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000031D0
	gsSPVertex(_syatekijyou_room_0_vertices_00002C28, 12, 0), // 0x000031D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000031E0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000031E8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000031F0
	gsDPPipeSync(), // 0x000031F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000B2C0), // 0x00003200
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003208
	gsDPLoadSync(), // 0x00003210
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003218
	gsDPPipeSync(), // 0x00003220
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003228
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003230
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00003238
	gsSPVertex(_syatekijyou_room_0_vertices_00002CE8, 4, 0), // 0x00003240
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003248
	gsDPPipeSync(), // 0x00003250
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000A4C0), // 0x00003258
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003260
	gsDPLoadSync(), // 0x00003268
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003270
	gsDPPipeSync(), // 0x00003278
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003280
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003288
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00003290
	gsSPVertex(_syatekijyou_room_0_vertices_00002D28, 4, 0), // 0x00003298
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000032A0
	gsDPPipeSync(), // 0x000032A8
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000032B0
	gsSPVertex(_syatekijyou_room_0_vertices_00002D68, 4, 0), // 0x000032B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000032C0
	gsDPPipeSync(), // 0x000032C8
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x000032D0
	gsSPVertex(_syatekijyou_room_0_vertices_00002DA8, 4, 0), // 0x000032D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000032E0
	gsDPPipeSync(), // 0x000032E8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000B2C0), // 0x000032F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000032F8
	gsDPLoadSync(), // 0x00003300
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003308
	gsDPPipeSync(), // 0x00003310
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003318
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003320
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00003328
	gsSPVertex(_syatekijyou_room_0_vertices_00002DE8, 4, 0), // 0x00003330
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003338
	gsDPPipeSync(), // 0x00003340
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000A4C0), // 0x00003348
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003350
	gsDPLoadSync(), // 0x00003358
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003360
	gsDPPipeSync(), // 0x00003368
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003370
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003378
	gsSPVertex(_syatekijyou_room_0_vertices_00002E28, 4, 0), // 0x00003380
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003388
	gsDPPipeSync(), // 0x00003390
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00003398
	gsSPVertex(_syatekijyou_room_0_vertices_00002E68, 8, 0), // 0x000033A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000033A8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000033B0
	gsDPPipeSync(), // 0x000033B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000B2C0), // 0x000033C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000033C8
	gsDPLoadSync(), // 0x000033D0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000033D8
	gsDPPipeSync(), // 0x000033E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000033E8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000033F0
	gsSPVertex(_syatekijyou_room_0_vertices_00002EE8, 4, 0), // 0x000033F8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003400
	gsDPPipeSync(), // 0x00003408
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000A4C0), // 0x00003410
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003418
	gsDPLoadSync(), // 0x00003420
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00003428
	gsDPPipeSync(), // 0x00003430
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003438
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003440
	gsSPVertex(_syatekijyou_room_0_vertices_00002F28, 20, 0), // 0x00003448
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003450
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003458
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003460
	gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0), // 0x00003468
	gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0), // 0x00003470
	gsSPEndDisplayList(), // 0x00003478
};

Vtx_t _syatekijyou_room_0_vertices_00003480[4] = 
{
	 { 200, 0, -281, 0, 4437, 1570, 127, 127, 127, 255 }, // 0x00003480
	 { 200, 69, -281, 0, 4437, 683, 127, 127, 127, 255 }, // 0x00003490
	 { -200, 69, -281, 0, -2389, 683, 127, 127, 127, 255 }, // 0x000034A0
	 { -200, 0, -281, 0, -2389, 1570, 127, 127, 127, 255 }, // 0x000034B0
};

Vtx_t _syatekijyou_room_0_vertices_000034C0[4] = 
{
	 { 200, 69, -281, 0, 15341, 1024, 255, 255, 255, 255 }, // 0x000034C0
	 { 200, 69, -301, 0, 15341, 438, 255, 255, 255, 255 }, // 0x000034D0
	 { -200, 69, -301, 0, 5125, 438, 255, 255, 255, 255 }, // 0x000034E0
	 { -200, 69, -281, 0, 5125, 1024, 255, 255, 255, 255 }, // 0x000034F0
};

Vtx_t _syatekijyou_room_0_vertices_00003500[8] = 
{
	 { -200, 0, -301, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003500
	 { 200, 0, -301, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003510
	 { -200, 69, -301, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003520
	 { 200, 69, -301, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003530
	 { -200, 0, -281, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003540
	 { 200, 0, -281, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003550
	 { -200, 69, -281, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003560
	 { 200, 69, -281, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003570
};

Gfx _syatekijyou_room_0_dlist_00003580[] =
{
	gsDPPipeSync(), // 0x00003580
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003588
	gsSPVertex(_syatekijyou_room_0_vertices_00003500, 8, 0), // 0x00003590
	gsSPCullDisplayList(0, 7), // 0x00003598
	gsDPPipeSync(), // 0x000035A0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000035A8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000035B0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000035B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000A4C0), // 0x000035C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000035C8
	gsDPLoadSync(), // 0x000035D0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000035D8
	gsDPPipeSync(), // 0x000035E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000035E8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000035F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000035F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003600
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003608
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003610
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003618
	gsSPVertex(_syatekijyou_room_0_vertices_00003480, 4, 0), // 0x00003620
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003628
	gsDPPipeSync(), // 0x00003630
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000B2C0), // 0x00003638
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003640
	gsDPLoadSync(), // 0x00003648
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003650
	gsDPPipeSync(), // 0x00003658
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003660
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003668
	gsSPVertex(_syatekijyou_room_0_vertices_000034C0, 4, 0), // 0x00003670
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003678
	gsSPEndDisplayList(), // 0x00003680
};

Vtx_t _syatekijyou_room_0_vertices_00003688[32] = 
{
	 { 140, 40, 152, 0, 0, 197, 114, 114, 114, 255 }, // 0x00003688
	 { 140, 32, 152, 0, 0, 1024, 114, 114, 114, 255 }, // 0x00003698
	 { 200, 32, 152, 0, 2048, 1024, 114, 114, 114, 255 }, // 0x000036A8
	 { 200, 40, 152, 0, 2048, 197, 114, 114, 114, 255 }, // 0x000036B8
	 { 140, 40, 144, 0, 0, 0, 255, 255, 255, 255 }, // 0x000036C8
	 { 140, 40, 152, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000036D8
	 { 200, 40, 152, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x000036E8
	 { 200, 40, 144, 0, 2048, 0, 255, 255, 255, 255 }, // 0x000036F8
	 { 140, 8, 144, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003708
	 { 140, 8, 152, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00003718
	 { 200, 8, 152, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00003728
	 { 200, 8, 144, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003738
	 { 140, 8, 152, 0, 0, 0, 114, 114, 114, 255 }, // 0x00003748
	 { 140, 0, 152, 0, 0, 1024, 114, 114, 114, 255 }, // 0x00003758
	 { 200, 0, 152, 0, 2048, 1024, 114, 114, 114, 255 }, // 0x00003768
	 { 200, 8, 152, 0, 2048, 0, 114, 114, 114, 255 }, // 0x00003778
	 { 195, 8, 149, 0, 0, 0, 114, 114, 114, 255 }, // 0x00003788
	 { 200, 8, 149, 0, 0, 1024, 114, 114, 114, 255 }, // 0x00003798
	 { 200, 34, 149, 0, 2048, 1024, 114, 114, 114, 255 }, // 0x000037A8
	 { 195, 34, 149, 0, 2048, 0, 114, 114, 114, 255 }, // 0x000037B8
	 { 195, 8, 144, 0, 0, 0, 255, 255, 255, 255 }, // 0x000037C8
	 { 195, 8, 149, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000037D8
	 { 195, 34, 149, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x000037E8
	 { 195, 34, 144, 0, 2048, 0, 255, 255, 255, 255 }, // 0x000037F8
	 { 182, 8, 144, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003808
	 { 182, 8, 149, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00003818
	 { 182, 34, 149, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00003828
	 { 182, 34, 144, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003838
	 { 182, 8, 149, 0, 0, 240, 114, 114, 114, 255 }, // 0x00003848
	 { 187, 8, 149, 0, 0, 814, 114, 114, 114, 255 }, // 0x00003858
	 { 188, 34, 149, 0, 2048, 814, 114, 114, 114, 255 }, // 0x00003868
	 { 182, 34, 149, 0, 2048, 240, 114, 114, 114, 255 }, // 0x00003878
};

Vtx_t _syatekijyou_room_0_vertices_00003888[16] = 
{
	 { 169, 8, 149, 0, 0, 399, 114, 114, 114, 255 }, // 0x00003888
	 { 174, 8, 149, 0, 0, 1024, 114, 114, 114, 255 }, // 0x00003898
	 { 174, 34, 149, 0, 2048, 1024, 114, 114, 114, 255 }, // 0x000038A8
	 { 169, 34, 149, 0, 2048, 399, 114, 114, 114, 255 }, // 0x000038B8
	 { 169, 8, 144, 0, 0, 0, 255, 255, 255, 255 }, // 0x000038C8
	 { 169, 8, 149, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000038D8
	 { 169, 34, 149, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x000038E8
	 { 169, 34, 144, 0, 2048, 0, 255, 255, 255, 255 }, // 0x000038F8
	 { 154, 8, 144, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003908
	 { 154, 8, 149, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00003918
	 { 154, 34, 149, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00003928
	 { 154, 34, 144, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00003938
	 { 154, 8, 149, 0, 0, 0, 114, 114, 114, 255 }, // 0x00003948
	 { 160, 8, 149, 0, 0, 493, 114, 114, 114, 255 }, // 0x00003958
	 { 160, 34, 149, 0, 2048, 493, 114, 114, 114, 255 }, // 0x00003968
	 { 154, 34, 149, 0, 2048, 0, 114, 114, 114, 255 }, // 0x00003978
};

Vtx_t _syatekijyou_room_0_vertices_00003988[8] = 
{
	 { 140, 0, 144, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003988
	 { 200, 0, 144, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003998
	 { 140, 40, 144, 0, 0, 0, 0, 0, 0, 0 }, // 0x000039A8
	 { 200, 40, 144, 0, 0, 0, 0, 0, 0, 0 }, // 0x000039B8
	 { 140, 0, 152, 0, 0, 0, 0, 0, 0, 0 }, // 0x000039C8
	 { 200, 0, 152, 0, 0, 0, 0, 0, 0, 0 }, // 0x000039D8
	 { 140, 40, 152, 0, 0, 0, 0, 0, 0, 0 }, // 0x000039E8
	 { 200, 40, 152, 0, 0, 0, 0, 0, 0, 0 }, // 0x000039F8
};

Gfx _syatekijyou_room_0_dlist_00003A08[] =
{
	gsDPPipeSync(), // 0x00003A08
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003A10
	gsSPVertex(_syatekijyou_room_0_vertices_00003988, 8, 0), // 0x00003A18
	gsSPCullDisplayList(0, 7), // 0x00003A20
	gsDPPipeSync(), // 0x00003A28
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003A30
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003A38
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003A40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000B2C0), // 0x00003A48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00003A50
	gsDPLoadSync(), // 0x00003A58
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00003A60
	gsDPPipeSync(), // 0x00003A68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00003A70
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00003A78
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003A80
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003A88
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003A90
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003A98
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003AA0
	gsSPVertex(_syatekijyou_room_0_vertices_00003688, 32, 0), // 0x00003AA8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003AB0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003AB8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003AC0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003AC8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003AD0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00003AD8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00003AE0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00003AE8
	gsSPVertex(_syatekijyou_room_0_vertices_00003888, 16, 0), // 0x00003AF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003AF8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003B00
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003B08
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003B10
	gsSPEndDisplayList(), // 0x00003B18
};

Vtx_t _syatekijyou_room_0_vertices_00003B20[8] = 
{
	 { -196, 106, 284, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00003B20
	 { -175, 106, 284, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00003B30
	 { -175, 132, 284, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00003B40
	 { -196, 132, 284, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003B50
	 { -185, 106, 294, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00003B60
	 { -185, 106, 273, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00003B70
	 { -185, 132, 273, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00003B80
	 { -185, 132, 294, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003B90
};

Vtx_t _syatekijyou_room_0_vertices_00003BA0[3] = 
{
	 { -196, 150, 284, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003BA0
	 { -178, 150, 284, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003BB0
	 { -196, 155, 284, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003BC0
};

Vtx_t _syatekijyou_room_0_vertices_00003BD0[8] = 
{
	 { -196, 106, 71, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00003BD0
	 { -175, 106, 71, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00003BE0
	 { -175, 132, 71, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00003BF0
	 { -196, 132, 71, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003C00
	 { -185, 106, 81, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00003C10
	 { -185, 106, 60, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00003C20
	 { -185, 132, 60, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00003C30
	 { -185, 132, 81, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003C40
};

Vtx_t _syatekijyou_room_0_vertices_00003C50[6] = 
{
	 { -196, 150, 71, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003C50
	 { -178, 150, 71, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003C60
	 { -196, 155, 71, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003C70
	 { -196, 150, -131, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003C80
	 { -178, 150, -131, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003C90
	 { -196, 155, -131, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003CA0
};

Vtx_t _syatekijyou_room_0_vertices_00003CB0[16] = 
{
	 { -185, 106, -121, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00003CB0
	 { -185, 106, -142, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00003CC0
	 { -185, 132, -142, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00003CD0
	 { -185, 132, -121, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003CE0
	 { -196, 106, -131, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00003CF0
	 { -175, 106, -131, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00003D00
	 { -175, 132, -131, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00003D10
	 { -196, 132, -131, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003D20
	 { 196, 132, -131, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003D30
	 { 175, 132, -131, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00003D40
	 { 175, 106, -131, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00003D50
	 { 196, 106, -131, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00003D60
	 { 185, 132, -121, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003D70
	 { 185, 132, -142, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00003D80
	 { 185, 106, -142, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00003D90
	 { 185, 106, -121, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00003DA0
};

Vtx_t _syatekijyou_room_0_vertices_00003DB0[6] = 
{
	 { 196, 155, -131, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003DB0
	 { 178, 150, -131, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003DC0
	 { 196, 150, -131, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003DD0
	 { 196, 155, 71, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003DE0
	 { 178, 150, 71, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003DF0
	 { 196, 150, 71, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003E00
};

Vtx_t _syatekijyou_room_0_vertices_00003E10[8] = 
{
	 { 185, 132, 81, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003E10
	 { 185, 132, 60, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00003E20
	 { 185, 106, 60, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00003E30
	 { 185, 106, 81, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00003E40
	 { 196, 132, 71, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003E50
	 { 175, 132, 71, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00003E60
	 { 175, 106, 71, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00003E70
	 { 196, 106, 71, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00003E80
};

Vtx_t _syatekijyou_room_0_vertices_00003E90[3] = 
{
	 { 196, 155, 284, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003E90
	 { 178, 150, 284, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003EA0
	 { 196, 150, 284, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00003EB0
};

Vtx_t _syatekijyou_room_0_vertices_00003EC0[8] = 
{
	 { 185, 132, 294, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003EC0
	 { 185, 132, 273, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00003ED0
	 { 185, 106, 273, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00003EE0
	 { 185, 106, 294, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00003EF0
	 { 196, 132, 284, 0, 0, 0, 255, 255, 255, 255 }, // 0x00003F00
	 { 175, 132, 284, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00003F10
	 { 175, 106, 284, 0, 1024, 2048, 255, 255, 255, 255 }, // 0x00003F20
	 { 196, 106, 284, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00003F30
};

Vtx_t _syatekijyou_room_0_vertices_00003F40[8] = 
{
	 { -196, 106, -142, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003F40
	 { 196, 106, -142, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003F50
	 { -196, 155, -142, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003F60
	 { 196, 155, -142, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003F70
	 { -196, 106, 294, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003F80
	 { 196, 106, 294, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003F90
	 { -196, 155, 294, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003FA0
	 { 196, 155, 294, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003FB0
};

Gfx _syatekijyou_room_0_dlist_00003FC0[] =
{
	gsDPPipeSync(), // 0x00003FC0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003FC8
	gsSPVertex(_syatekijyou_room_0_vertices_00003F40, 8, 0), // 0x00003FD0
	gsSPCullDisplayList(0, 7), // 0x00003FD8
	gsDPPipeSync(), // 0x00003FE0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003FE8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00003FF0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003FF8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00005CC0), // 0x00004000
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004008
	gsDPLoadSync(), // 0x00004010
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004018
	gsDPPipeSync(), // 0x00004020
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004028
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004030
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004038
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004040
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00004048
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x00004050
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004058
	gsSPVertex(_syatekijyou_room_0_vertices_00003B20, 8, 0), // 0x00004060
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004068
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004070
	gsDPPipeSync(), // 0x00004078
	gsSPTexture(0, 0, 0, 0, 0), // 0x00004080
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00004088
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004090
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00004098
	gsSPVertex(_syatekijyou_room_0_vertices_00003BA0, 3, 0), // 0x000040A0
	gsSP1Triangle(0, 1, 2, 0), // 0x000040A8
	gsDPPipeSync(), // 0x000040B0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000040B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00005CC0), // 0x000040C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000040C8
	gsDPLoadSync(), // 0x000040D0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000040D8
	gsDPPipeSync(), // 0x000040E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000040E8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000040F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000040F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004100
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00004108
	gsSPVertex(_syatekijyou_room_0_vertices_00003BD0, 8, 0), // 0x00004110
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004118
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004120
	gsDPPipeSync(), // 0x00004128
	gsSPTexture(0, 0, 0, 0, 0), // 0x00004130
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00004138
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004140
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00004148
	gsSPVertex(_syatekijyou_room_0_vertices_00003C50, 6, 0), // 0x00004150
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004158
	gsDPPipeSync(), // 0x00004160
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004168
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00005CC0), // 0x00004170
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004178
	gsDPLoadSync(), // 0x00004180
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004188
	gsDPPipeSync(), // 0x00004190
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004198
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000041A0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000041A8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000041B0
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000041B8
	gsSPVertex(_syatekijyou_room_0_vertices_00003CB0, 16, 0), // 0x000041C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000041C8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000041D0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000041D8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000041E0
	gsDPPipeSync(), // 0x000041E8
	gsSPTexture(0, 0, 0, 0, 0), // 0x000041F0
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x000041F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004200
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00004208
	gsSPVertex(_syatekijyou_room_0_vertices_00003DB0, 6, 0), // 0x00004210
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004218
	gsDPPipeSync(), // 0x00004220
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004228
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00005CC0), // 0x00004230
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00004238
	gsDPLoadSync(), // 0x00004240
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004248
	gsDPPipeSync(), // 0x00004250
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004258
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004260
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004268
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004270
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00004278
	gsSPVertex(_syatekijyou_room_0_vertices_00003E10, 8, 0), // 0x00004280
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004288
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004290
	gsDPPipeSync(), // 0x00004298
	gsSPTexture(0, 0, 0, 0, 0), // 0x000042A0
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x000042A8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000042B0
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x000042B8
	gsSPVertex(_syatekijyou_room_0_vertices_00003E90, 3, 0), // 0x000042C0
	gsSP1Triangle(0, 1, 2, 0), // 0x000042C8
	gsDPPipeSync(), // 0x000042D0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000042D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00005CC0), // 0x000042E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000042E8
	gsDPLoadSync(), // 0x000042F0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000042F8
	gsDPPipeSync(), // 0x00004300
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00004308
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004310
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004318
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004320
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00004328
	gsSPVertex(_syatekijyou_room_0_vertices_00003EC0, 8, 0), // 0x00004330
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004338
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004340
	gsSPEndDisplayList(), // 0x00004348
};

Vtx_t _syatekijyou_room_0_vertices_00004350[4] = 
{
	 { 198, 132, 210, 0, 0, 0, 255, 255, 255, 255 }, // 0x00004350
	 { 182, 129, 196, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00004360
	 { 196, 91, 207, 0, 0, 2048, 172, 101, 82, 255 }, // 0x00004370
	 { 186, 85, 196, 0, 1024, 2048, 153, 153, 153, 255 }, // 0x00004380
};

Vtx_t _syatekijyou_room_0_vertices_00004390[7] = 
{
	 { 188, 123, 203, 0, 1024, 512, 255, 255, 255, 255 }, // 0x00004390
	 { 186, 133, 237, 0, 0, 0, 255, 205, 205, 255 }, // 0x000043A0
	 { 192, 136, 205, 0, 1024, 0, 255, 255, 255, 255 }, // 0x000043B0
	 { 189, 124, 237, 0, 0, 512, 172, 101, 82, 255 }, // 0x000043C0
	 { 185, 132, 153, 0, 0, 0, 60, 56, 41, 255 }, // 0x000043D0
	 { 189, 122, 153, 0, 0, 512, 63, 63, 63, 255 }, // 0x000043E0
	 { 190, 123, 188, 0, 1024, 512, 255, 255, 255, 255 }, // 0x000043F0
};

Vtx_t _syatekijyou_room_0_vertices_00004400[3] = 
{
	 { 193, 134, 186, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00004400
	 { 185, 132, 153, 0, 0, 0, 60, 56, 41, 255 }, // 0x00004410
	 { 190, 123, 188, 0, 1024, 512, 255, 255, 255, 255 }, // 0x00004420
};

Vtx_t _syatekijyou_room_0_vertices_00004430[8] = 
{
	 { 196, 91, 185, 0, 0, 2048, 21, 14, 4, 255 }, // 0x00004430
	 { 182, 129, 196, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00004440
	 { 198, 132, 182, 0, 0, 0, 22, 14, 2, 255 }, // 0x00004450
	 { 186, 85, 196, 0, 1024, 2048, 153, 153, 153, 255 }, // 0x00004460
	 { 198, 129, 180, 0, 0, 0, 21, 14, 4, 255 }, // 0x00004470
	 { 198, 89, 180, 0, 0, 2048, 21, 14, 4, 255 }, // 0x00004480
	 { 198, 84, 194, 0, 1024, 2048, 21, 14, 4, 255 }, // 0x00004490
	 { 198, 129, 194, 0, 1024, 0, 21, 14, 4, 255 }, // 0x000044A0
};

Vtx_t _syatekijyou_room_0_vertices_000044B0[4] = 
{
	 { 198, 132, 150, 0, 0, 0, 15, 13, 10, 255 }, // 0x000044B0
	 { 198, 120, 150, 0, 0, 512, 15, 13, 10, 255 }, // 0x000044C0
	 { 198, 120, 186, 0, 1024, 512, 15, 13, 10, 255 }, // 0x000044D0
	 { 198, 132, 186, 0, 1024, 0, 15, 13, 10, 255 }, // 0x000044E0
};

Vtx_t _syatekijyou_room_0_vertices_000044F0[4] = 
{
	 { 198, 129, 194, 0, 1024, 0, 21, 14, 4, 255 }, // 0x000044F0
	 { 198, 84, 194, 0, 1024, 2048, 21, 14, 4, 255 }, // 0x00004500
	 { 198, 89, 208, 0, 0, 2048, 21, 14, 4, 255 }, // 0x00004510
	 { 198, 129, 208, 0, 0, 0, 21, 14, 4, 255 }, // 0x00004520
};

Vtx_t _syatekijyou_room_0_vertices_00004530[4] = 
{
	 { 198, 132, 203, 0, 1024, 0, 15, 13, 10, 255 }, // 0x00004530
	 { 198, 120, 203, 0, 1024, 512, 15, 13, 10, 255 }, // 0x00004540
	 { 198, 120, 239, 0, 0, 512, 15, 13, 10, 255 }, // 0x00004550
	 { 198, 132, 239, 0, 0, 0, 15, 13, 10, 255 }, // 0x00004560
};

Vtx_t _syatekijyou_room_0_vertices_00004570[8] = 
{
	 { 182, 84, 150, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004570
	 { 198, 84, 150, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004580
	 { 182, 136, 150, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004590
	 { 198, 136, 150, 0, 0, 0, 0, 0, 0, 0 }, // 0x000045A0
	 { 182, 84, 239, 0, 0, 0, 0, 0, 0, 0 }, // 0x000045B0
	 { 198, 84, 239, 0, 0, 0, 0, 0, 0, 0 }, // 0x000045C0
	 { 182, 136, 239, 0, 0, 0, 0, 0, 0, 0 }, // 0x000045D0
	 { 198, 136, 239, 0, 0, 0, 0, 0, 0, 0 }, // 0x000045E0
};

Gfx _syatekijyou_room_0_dlist_000045F0[] =
{
	gsDPPipeSync(), // 0x000045F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000045F8
	gsSPVertex(_syatekijyou_room_0_vertices_00004570, 8, 0), // 0x00004600
	gsSPCullDisplayList(0, 7), // 0x00004608
	gsDPPipeSync(), // 0x00004610
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004618
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004620
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004628
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000041C0), // 0x00004630
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 5, 0), // 0x00004638
	gsDPLoadSync(), // 0x00004640
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004648
	gsDPPipeSync(), // 0x00004650
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 2, 5, 0), // 0x00004658
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004660
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004668
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004670
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004678
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004680
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004688
	gsSPVertex(_syatekijyou_room_0_vertices_00004350, 4, 0), // 0x00004690
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004698
	gsDPPipeSync(), // 0x000046A0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00003DC0), // 0x000046A8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x000046B0
	gsDPLoadSync(), // 0x000046B8
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x000046C0
	gsDPPipeSync(), // 0x000046C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x000046D0
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x000046D8
	gsSPVertex(_syatekijyou_room_0_vertices_00004390, 7, 0), // 0x000046E0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000046E8
	gsSP1Triangle(4, 5, 6, 0), // 0x000046F0
	gsDPPipeSync(), // 0x000046F8
	gsDPSetCombineLERP(TEXEL0, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00004700
	gsSPVertex(_syatekijyou_room_0_vertices_00004400, 3, 0), // 0x00004708
	gsSP1Triangle(0, 1, 2, 0), // 0x00004710
	gsDPPipeSync(), // 0x00004718
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000041C0), // 0x00004720
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 5, 0), // 0x00004728
	gsDPLoadSync(), // 0x00004730
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004738
	gsDPPipeSync(), // 0x00004740
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 2, 5, 0), // 0x00004748
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004750
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004758
	gsSPVertex(_syatekijyou_room_0_vertices_00004430, 8, 0), // 0x00004760
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00004768
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004770
	gsDPPipeSync(), // 0x00004778
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00003DC0), // 0x00004780
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x00004788
	gsDPLoadSync(), // 0x00004790
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00004798
	gsDPPipeSync(), // 0x000047A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x000047A8
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x000047B0
	gsSPVertex(_syatekijyou_room_0_vertices_000044B0, 4, 0), // 0x000047B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000047C0
	gsDPPipeSync(), // 0x000047C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000041C0), // 0x000047D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 5, 0), // 0x000047D8
	gsDPLoadSync(), // 0x000047E0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000047E8
	gsDPPipeSync(), // 0x000047F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 2, 5, 0), // 0x000047F8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004800
	gsSPVertex(_syatekijyou_room_0_vertices_000044F0, 4, 0), // 0x00004808
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004810
	gsDPPipeSync(), // 0x00004818
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00003DC0), // 0x00004820
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x00004828
	gsDPLoadSync(), // 0x00004830
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00004838
	gsDPPipeSync(), // 0x00004840
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x00004848
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00004850
	gsSPVertex(_syatekijyou_room_0_vertices_00004530, 4, 0), // 0x00004858
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004860
	gsSPEndDisplayList(), // 0x00004868
};

Vtx_t _syatekijyou_room_0_vertices_00004870[6] = 
{
	 { -199, 74, 43, 0, 0, 2048, 172, 101, 82, 255 }, // 0x00004870
	 { -187, 102, 28, 0, 768, 512, 255, 255, 255, 255 }, // 0x00004880
	 { -195, 114, 43, 0, 0, 0, 255, 255, 255, 255 }, // 0x00004890
	 { -188, 112, 23, 0, 1024, 0, 255, 255, 255, 255 }, // 0x000048A0
	 { -186, 99, 23, 0, 1024, 683, 255, 255, 255, 255 }, // 0x000048B0
	 { -191, 73, 23, 0, 1024, 2048, 153, 153, 153, 255 }, // 0x000048C0
};

Vtx_t _syatekijyou_room_0_vertices_000048D0[6] = 
{
	 { -194, 118, 54, 0, 0, 0, 255, 205, 205, 255 }, // 0x000048D0
	 { -195, 104, 54, 0, 0, 512, 172, 101, 82, 255 }, // 0x000048E0
	 { -188, 103, 28, 0, 1024, 512, 255, 255, 255, 255 }, // 0x000048F0
	 { -188, 103, 17, 0, 1024, 512, 255, 255, 255, 255 }, // 0x00004900
	 { -195, 104, -8, 0, 0, 512, 63, 63, 63, 255 }, // 0x00004910
	 { -194, 118, -8, 0, 0, 0, 60, 56, 41, 255 }, // 0x00004920
};

Vtx_t _syatekijyou_room_0_vertices_00004930[10] = 
{
	 { -195, 114, 3, 0, 0, 0, 21, 14, 4, 255 }, // 0x00004930
	 { -187, 102, 18, 0, 768, 512, 153, 153, 153, 255 }, // 0x00004940
	 { -199, 74, 3, 0, 0, 2048, 21, 14, 4, 255 }, // 0x00004950
	 { -188, 112, 23, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00004960
	 { -186, 99, 23, 0, 1024, 683, 255, 255, 255, 255 }, // 0x00004970
	 { -191, 73, 23, 0, 1024, 2048, 153, 153, 153, 255 }, // 0x00004980
	 { -195, 111, 20, 0, 1024, 0, 21, 14, 4, 255 }, // 0x00004990
	 { -199, 71, 20, 0, 1024, 2048, 21, 14, 4, 255 }, // 0x000049A0
	 { -199, 71, 0, 0, 0, 2048, 21, 14, 4, 255 }, // 0x000049B0
	 { -195, 111, 0, 0, 0, 0, 21, 14, 4, 255 }, // 0x000049C0
};

Vtx_t _syatekijyou_room_0_vertices_000049D0[8] = 
{
	 { -194, 117, 16, 0, 1024, 0, 15, 13, 10, 255 }, // 0x000049D0
	 { -196, 103, 16, 0, 1024, 512, 15, 13, 10, 255 }, // 0x000049E0
	 { -196, 103, -11, 0, 0, 512, 15, 13, 10, 255 }, // 0x000049F0
	 { -194, 117, -11, 0, 0, 0, 15, 13, 10, 255 }, // 0x00004A00
	 { -194, 115, 52, 0, 0, 0, 15, 13, 10, 255 }, // 0x00004A10
	 { -196, 101, 52, 0, 0, 512, 15, 13, 10, 255 }, // 0x00004A20
	 { -196, 101, 25, 0, 1024, 512, 15, 13, 10, 255 }, // 0x00004A30
	 { -194, 115, 25, 0, 1024, 0, 15, 13, 10, 255 }, // 0x00004A40
};

Vtx_t _syatekijyou_room_0_vertices_00004A50[4] = 
{
	 { -195, 111, 40, 0, 0, 0, 21, 14, 4, 255 }, // 0x00004A50
	 { -199, 71, 40, 0, 0, 2048, 21, 14, 4, 255 }, // 0x00004A60
	 { -199, 71, 20, 0, 1024, 2048, 21, 14, 4, 255 }, // 0x00004A70
	 { -195, 111, 20, 0, 1024, 0, 21, 14, 4, 255 }, // 0x00004A80
};

Vtx_t _syatekijyou_room_0_vertices_00004A90[10] = 
{
	 { -186, 103, 23, 0, 669, 512, 255, 255, 255, 255 }, // 0x00004A90
	 { -182, 103, 23, 0, 0, 512, 255, 255, 255, 255 }, // 0x00004AA0
	 { -182, 111, 23, 0, 102, 27, 255, 255, 255, 255 }, // 0x00004AB0
	 { -187, 110, 23, 0, 921, 120, 255, 255, 255, 255 }, // 0x00004AC0
	 { -194, 118, 38, 0, 642, 0, 255, 255, 255, 255 }, // 0x00004AD0
	 { -194, 118, 54, 0, 0, 0, 255, 205, 205, 255 }, // 0x00004AE0
	 { -189, 105, 31, 0, 898, 449, 255, 205, 205, 255 }, // 0x00004AF0
	 { -189, 105, 14, 0, 898, 449, 255, 255, 255, 255 }, // 0x00004B00
	 { -194, 118, -8, 0, 0, 0, 60, 56, 41, 255 }, // 0x00004B10
	 { -194, 118, 8, 0, 642, 0, 60, 56, 41, 255 }, // 0x00004B20
};

Vtx_t _syatekijyou_room_0_vertices_00004B30[8] = 
{
	 { -199, 71, -11, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B30
	 { -182, 71, -11, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B40
	 { -199, 118, -11, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B50
	 { -182, 118, -11, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B60
	 { -199, 71, 54, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B70
	 { -182, 71, 54, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B80
	 { -199, 118, 54, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004B90
	 { -182, 118, 54, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004BA0
};

Gfx _syatekijyou_room_0_dlist_00004BB0[] =
{
	gsDPPipeSync(), // 0x00004BB0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004BB8
	gsSPVertex(_syatekijyou_room_0_vertices_00004B30, 8, 0), // 0x00004BC0
	gsSPCullDisplayList(0, 7), // 0x00004BC8
	gsDPPipeSync(), // 0x00004BD0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004BD8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00004BE0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004BE8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000041C0), // 0x00004BF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 5, 0), // 0x00004BF8
	gsDPLoadSync(), // 0x00004C00
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004C08
	gsDPPipeSync(), // 0x00004C10
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 2, 5, 0), // 0x00004C18
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004C20
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004C28
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00004C30
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004C38
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004C40
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004C48
	gsSPVertex(_syatekijyou_room_0_vertices_00004870, 6, 0), // 0x00004C50
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00004C58
	gsSP2Triangles(0, 4, 1, 0, 0, 5, 4, 0), // 0x00004C60
	gsSP1Triangle(4, 3, 1, 0), // 0x00004C68
	gsDPPipeSync(), // 0x00004C70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00003DC0), // 0x00004C78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x00004C80
	gsDPLoadSync(), // 0x00004C88
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00004C90
	gsDPPipeSync(), // 0x00004C98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x00004CA0
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00004CA8
	gsSPVertex(_syatekijyou_room_0_vertices_000048D0, 6, 0), // 0x00004CB0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00004CB8
	gsDPPipeSync(), // 0x00004CC0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000041C0), // 0x00004CC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 5, 0), // 0x00004CD0
	gsDPLoadSync(), // 0x00004CD8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004CE0
	gsDPPipeSync(), // 0x00004CE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 2, 5, 0), // 0x00004CF0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004CF8
	gsSPVertex(_syatekijyou_room_0_vertices_00004930, 10, 0), // 0x00004D00
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00004D08
	gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0), // 0x00004D10
	gsSP2Triangles(4, 5, 2, 0, 6, 7, 8, 0), // 0x00004D18
	gsSP1Triangle(6, 8, 9, 0), // 0x00004D20
	gsDPPipeSync(), // 0x00004D28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00003DC0), // 0x00004D30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x00004D38
	gsDPLoadSync(), // 0x00004D40
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00004D48
	gsDPPipeSync(), // 0x00004D50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x00004D58
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00004D60
	gsSPVertex(_syatekijyou_room_0_vertices_000049D0, 8, 0), // 0x00004D68
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004D70
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004D78
	gsDPPipeSync(), // 0x00004D80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000041C0), // 0x00004D88
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 5, 0), // 0x00004D90
	gsDPLoadSync(), // 0x00004D98
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00004DA0
	gsDPPipeSync(), // 0x00004DA8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 2, 5, 0), // 0x00004DB0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00004DB8
	gsSPVertex(_syatekijyou_room_0_vertices_00004A50, 4, 0), // 0x00004DC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004DC8
	gsDPPipeSync(), // 0x00004DD0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00003DC0), // 0x00004DD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x00004DE0
	gsDPLoadSync(), // 0x00004DE8
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00004DF0
	gsDPPipeSync(), // 0x00004DF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x00004E00
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00004E08
	gsSPVertex(_syatekijyou_room_0_vertices_00004A90, 10, 0), // 0x00004E10
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004E18
	gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0), // 0x00004E20
	gsSPEndDisplayList(), // 0x00004E28
};

Vtx_t _syatekijyou_room_0_vertices_00004E30[4] = 
{
	 { 196, 83, 286, 0, 0, 512, 15, 13, 10, 255 }, // 0x00004E30
	 { 196, 93, 319, 0, 1024, 512, 21, 14, 4, 255 }, // 0x00004E40
	 { 196, 99, 317, 0, 1024, 0, 21, 14, 4, 255 }, // 0x00004E50
	 { 196, 90, 284, 0, 0, 0, 15, 13, 10, 255 }, // 0x00004E60
};

Vtx_t _syatekijyou_room_0_vertices_00004E70[4] = 
{
	 { 196, 70, 257, 0, 0, 128, 15, 13, 10, 255 }, // 0x00004E70
	 { 196, 70, 319, 0, 1024, 128, 21, 14, 4, 255 }, // 0x00004E80
	 { 196, 72, 319, 0, 1024, 0, 21, 14, 4, 255 }, // 0x00004E90
	 { 196, 72, 257, 0, 0, 0, 15, 13, 10, 255 }, // 0x00004EA0
};

Vtx_t _syatekijyou_room_0_vertices_00004EB0[4] = 
{
	 { 196, 74, 219, 0, 0, 0, 21, 14, 4, 255 }, // 0x00004EB0
	 { 196, 65, 219, 0, 0, 512, 21, 14, 4, 255 }, // 0x00004EC0
	 { 196, 65, 257, 0, 1024, 512, 15, 13, 10, 255 }, // 0x00004ED0
	 { 196, 74, 257, 0, 1024, 0, 15, 13, 10, 255 }, // 0x00004EE0
};

Vtx_t _syatekijyou_room_0_vertices_00004EF0[4] = 
{
	 { 192, 86, 285, 0, 0, 512, 76, 76, 76, 255 }, // 0x00004EF0
	 { 192, 95, 318, 0, 1024, 512, 63, 63, 63, 255 }, // 0x00004F00
	 { 192, 101, 316, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00004F10
	 { 192, 92, 284, 0, 0, 0, 255, 255, 255, 255 }, // 0x00004F20
};

Vtx_t _syatekijyou_room_0_vertices_00004F30[4] = 
{
	 { 192, 76, 219, 0, 0, 0, 255, 255, 255, 255 }, // 0x00004F30
	 { 192, 67, 219, 0, 0, 512, 63, 63, 63, 255 }, // 0x00004F40
	 { 192, 67, 257, 0, 1024, 512, 76, 76, 76, 255 }, // 0x00004F50
	 { 192, 76, 257, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00004F60
};

Vtx_t _syatekijyou_room_0_vertices_00004F70[4] = 
{
	 { 192, 73, 257, 0, 0, 128, 76, 76, 76, 255 }, // 0x00004F70
	 { 192, 72, 319, 0, 1024, 128, 255, 255, 255, 255 }, // 0x00004F80
	 { 192, 74, 319, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00004F90
	 { 192, 75, 257, 0, 0, 0, 255, 255, 255, 255 }, // 0x00004FA0
};

Vtx_t _syatekijyou_room_0_vertices_00004FB0[8] = 
{
	 { 196, 82, 31, 0, 18, 50, 15, 13, 10, 255 }, // 0x00004FB0
	 { 196, 75, 31, 0, 1042, 50, 15, 13, 10, 255 }, // 0x00004FC0
	 { 196, 75, 36, 0, 1024, 512, 21, 14, 4, 255 }, // 0x00004FD0
	 { 196, 82, 36, 0, 0, 512, 15, 13, 10, 255 }, // 0x00004FE0
	 { 192, 84, 31, 0, 18, 50, 255, 255, 205, 255 }, // 0x00004FF0
	 { 192, 76, 31, 0, 1042, 50, 76, 76, 76, 255 }, // 0x00005000
	 { 192, 77, 36, 0, 1024, 512, 63, 63, 63, 255 }, // 0x00005010
	 { 192, 84, 36, 0, 0, 512, 255, 255, 205, 255 }, // 0x00005020
};

Vtx_t _syatekijyou_room_0_vertices_00005030[8] = 
{
	 { 192, 65, 31, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005030
	 { 196, 65, 31, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005040
	 { 192, 101, 31, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005050
	 { 196, 101, 31, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005060
	 { 192, 65, 319, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005070
	 { 196, 65, 319, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005080
	 { 192, 101, 319, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005090
	 { 196, 101, 319, 0, 0, 0, 0, 0, 0, 0 }, // 0x000050A0
};

Gfx _syatekijyou_room_0_dlist_000050B0[] =
{
	gsDPPipeSync(), // 0x000050B0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000050B8
	gsSPVertex(_syatekijyou_room_0_vertices_00005030, 8, 0), // 0x000050C0
	gsSPCullDisplayList(0, 7), // 0x000050C8
	gsDPPipeSync(), // 0x000050D0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000050D8
	gsDPPipeSync(), // 0x000050E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000050E8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000050F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00001D40), // 0x000050F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x00005100
	gsDPLoadSync(), // 0x00005108
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00005110
	gsDPPipeSync(), // 0x00005118
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x00005120
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00005128
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005130
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00005138
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005140
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005148
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005150
	gsSPVertex(_syatekijyou_room_0_vertices_00004E30, 4, 0), // 0x00005158
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005160
	gsDPPipeSync(), // 0x00005168
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00001C40), // 0x00005170
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 2, 0, 2, 5, 0), // 0x00005178
	gsDPLoadSync(), // 0x00005180
	gsDPLoadBlock(7, 0, 0, 127, 256), // 0x00005188
	gsDPPipeSync(), // 0x00005190
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 2, 0, 2, 5, 0), // 0x00005198
	gsDPSetTileSize(0, 0, 0, 124, 12), // 0x000051A0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000051A8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000051B0
	gsSPVertex(_syatekijyou_room_0_vertices_00004E70, 4, 0), // 0x000051B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000051C0
	gsDPPipeSync(), // 0x000051C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00002140), // 0x000051D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x000051D8
	gsDPLoadSync(), // 0x000051E0
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x000051E8
	gsDPPipeSync(), // 0x000051F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x000051F8
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00005200
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005208
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00005210
	gsSPVertex(_syatekijyou_room_0_vertices_00004EB0, 4, 0), // 0x00005218
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005220
	gsDPPipeSync(), // 0x00005228
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00001D40), // 0x00005230
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x00005238
	gsDPLoadSync(), // 0x00005240
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00005248
	gsDPPipeSync(), // 0x00005250
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x00005258
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00005260
	gsSPVertex(_syatekijyou_room_0_vertices_00004EF0, 4, 0), // 0x00005268
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005270
	gsDPPipeSync(), // 0x00005278
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00002140), // 0x00005280
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x00005288
	gsDPLoadSync(), // 0x00005290
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00005298
	gsDPPipeSync(), // 0x000052A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x000052A8
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x000052B0
	gsSPVertex(_syatekijyou_room_0_vertices_00004F30, 4, 0), // 0x000052B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000052C0
	gsDPPipeSync(), // 0x000052C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00001C40), // 0x000052D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 2, 0, 2, 5, 0), // 0x000052D8
	gsDPLoadSync(), // 0x000052E0
	gsDPLoadBlock(7, 0, 0, 127, 256), // 0x000052E8
	gsDPPipeSync(), // 0x000052F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 2, 0, 2, 5, 0), // 0x000052F8
	gsDPSetTileSize(0, 0, 0, 124, 12), // 0x00005300
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005308
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005310
	gsSPVertex(_syatekijyou_room_0_vertices_00004F70, 4, 0), // 0x00005318
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005320
	gsDPPipeSync(), // 0x00005328
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00001D40), // 0x00005330
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x00005338
	gsDPLoadSync(), // 0x00005340
	gsDPLoadBlock(7, 0, 0, 511, 256), // 0x00005348
	gsDPPipeSync(), // 0x00005350
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x00005358
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00005360
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005368
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00005370
	gsSPVertex(_syatekijyou_room_0_vertices_00004FB0, 8, 0), // 0x00005378
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005380
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005388
	gsSPEndDisplayList(), // 0x00005390
};

Vtx_t _syatekijyou_room_0_vertices_00005398[8] = 
{
	 { -260, 165, -324, 0, 128, 5351, 60, 56, 41, 255 }, // 0x00005398
	 { 0, 165, -324, 0, 128, 914, 153, 153, 153, 255 }, // 0x000053A8
	 { 0, 171, -324, 0, 0, 922, 255, 255, 255, 255 }, // 0x000053B8
	 { -260, 171, -324, 0, 0, 5359, 153, 153, 153, 255 }, // 0x000053C8
	 { 0, 165, -324, 0, 128, 5454, 153, 153, 153, 255 }, // 0x000053D8
	 { 260, 165, -324, 0, 128, 1016, 60, 56, 41, 255 }, // 0x000053E8
	 { 260, 171, -324, 0, 0, 1024, 153, 153, 153, 255 }, // 0x000053F8
	 { 0, 171, -324, 0, 0, 5461, 255, 255, 255, 255 }, // 0x00005408
};

Vtx_t _syatekijyou_room_0_vertices_00005418[8] = 
{
	 { -260, 165, -324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005418
	 { 260, 165, -324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005428
	 { -260, 171, -324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005438
	 { 260, 171, -324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005448
	 { -260, 165, -324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005458
	 { 260, 165, -324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005468
	 { -260, 171, -324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005478
	 { 260, 171, -324, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005488
};

Gfx _syatekijyou_room_0_dlist_00005498[] =
{
	gsDPPipeSync(), // 0x00005498
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000054A0
	gsSPVertex(_syatekijyou_room_0_vertices_00005418, 8, 0), // 0x000054A8
	gsSPCullDisplayList(0, 7), // 0x000054B0
	gsDPPipeSync(), // 0x000054B8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000054C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000054C8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000054D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00003940), // 0x000054D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 2, 0), // 0x000054E0
	gsDPLoadSync(), // 0x000054E8
	gsDPLoadBlock(7, 0, 0, 63, 2048), // 0x000054F0
	gsDPPipeSync(), // 0x000054F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, 0, 0, 0, 0, 4, 0, 0, 2, 0), // 0x00005500
	gsDPSetTileSize(0, 0, 0, 12, 60), // 0x00005508
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005510
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00005518
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005520
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005528
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005530
	gsSPDisplayList(0x08000000), // 0x00005538
	gsSPVertex(_syatekijyou_room_0_vertices_00005398, 8, 0), // 0x00005540
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005548
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005550
	gsSPEndDisplayList(), // 0x00005558
};

Vtx_t _syatekijyou_room_0_vertices_00005560[8] = 
{
	 { -260, 158, -366, 0, 128, -967, 60, 56, 41, 255 }, // 0x00005560
	 { 0, 158, -366, 0, 128, 5651, 153, 153, 153, 255 }, // 0x00005570
	 { 0, 164, -366, 0, 0, 5640, 255, 255, 255, 255 }, // 0x00005580
	 { -260, 164, -366, 0, 0, -979, 153, 153, 153, 255 }, // 0x00005590
	 { 0, 158, -366, 0, 128, -967, 153, 153, 153, 255 }, // 0x000055A0
	 { 260, 158, -366, 0, 128, 5651, 60, 56, 41, 255 }, // 0x000055B0
	 { 260, 164, -366, 0, 0, 5640, 153, 153, 153, 255 }, // 0x000055C0
	 { 0, 164, -366, 0, 0, -979, 255, 255, 255, 255 }, // 0x000055D0
};

Vtx_t _syatekijyou_room_0_vertices_000055E0[8] = 
{
	 { -260, 158, -366, 0, 0, 0, 0, 0, 0, 0 }, // 0x000055E0
	 { 260, 158, -366, 0, 0, 0, 0, 0, 0, 0 }, // 0x000055F0
	 { -260, 164, -366, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005600
	 { 260, 164, -366, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005610
	 { -260, 158, -366, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005620
	 { 260, 158, -366, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005630
	 { -260, 164, -366, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005640
	 { 260, 164, -366, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005650
};

Gfx _syatekijyou_room_0_dlist_00005660[] =
{
	gsDPPipeSync(), // 0x00005660
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005668
	gsSPVertex(_syatekijyou_room_0_vertices_000055E0, 8, 0), // 0x00005670
	gsSPCullDisplayList(0, 7), // 0x00005678
	gsDPPipeSync(), // 0x00005680
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005688
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005690
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005698
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00003940), // 0x000056A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 2, 0), // 0x000056A8
	gsDPLoadSync(), // 0x000056B0
	gsDPLoadBlock(7, 0, 0, 63, 2048), // 0x000056B8
	gsDPPipeSync(), // 0x000056C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, 0, 0, 0, 0, 4, 0, 0, 2, 0), // 0x000056C8
	gsDPSetTileSize(0, 0, 0, 12, 60), // 0x000056D0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000056D8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000056E0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000056E8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000056F0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000056F8
	gsSPDisplayList(0x08000000), // 0x00005700
	gsSPVertex(_syatekijyou_room_0_vertices_00005560, 8, 0), // 0x00005708
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00005710
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00005718
	gsSPEndDisplayList(), // 0x00005720
};

Vtx_t _syatekijyou_room_0_vertices_00005728[32] = 
{
	 { 198, 75, 140, 0, 512, 2048, 15, 13, 10, 255 }, // 0x00005728
	 { 198, 73, 146, 0, 1024, 2048, 17, 13, 8, 255 }, // 0x00005738
	 { 198, 107, 146, 0, 1024, 0, 17, 13, 8, 255 }, // 0x00005748
	 { 198, 80, 133, 0, 0, 2048, 17, 13, 8, 255 }, // 0x00005758
	 { 198, 107, 133, 0, 0, 0, 17, 13, 8, 255 }, // 0x00005768
	 { 198, 111, 129, 0, 0, 0, 255, 255, 255, 255 }, // 0x00005778
	 { 184, 103, 145, 0, 1024, 455, 255, 255, 255, 255 }, // 0x00005788
	 { 192, 111, 145, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00005798
	 { 198, 94, 131, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000057A8
	 { 187, 95, 136, 0, 512, 967, 255, 255, 255, 255 }, // 0x000057B8
	 { 187, 86, 137, 0, 512, 1536, 255, 255, 255, 255 }, // 0x000057C8
	 { 198, 75, 153, 0, 512, 2048, 15, 13, 10, 255 }, // 0x000057D8
	 { 198, 107, 160, 0, 0, 0, 17, 13, 8, 255 }, // 0x000057E8
	 { 198, 80, 160, 0, 0, 2048, 17, 13, 8, 255 }, // 0x000057F8
	 { 177, 89, 145, 0, 1024, 1365, 255, 255, 255, 255 }, // 0x00005808
	 { 180, 85, 145, 0, 1024, 1593, 255, 255, 255, 255 }, // 0x00005818
	 { 184, 82, 141, 0, 768, 1792, 204, 204, 204, 255 }, // 0x00005828
	 { 181, 82, 145, 0, 1024, 1820, 204, 204, 204, 255 }, // 0x00005838
	 { 186, 82, 143, 0, 768, 1792, 51, 51, 51, 255 }, // 0x00005848
	 { 198, 76, 145, 0, 1024, 2048, 89, 89, 89, 255 }, // 0x00005858
	 { 186, 82, 145, 0, 1024, 1820, 51, 51, 51, 255 }, // 0x00005868
	 { 180, 96, 145, 0, 1024, 910, 255, 255, 255, 255 }, // 0x00005878
	 { 198, 94, 132, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00005888
	 { 198, 83, 132, 0, 0, 2048, 89, 89, 89, 255 }, // 0x00005898
	 { 198, 78, 138, 0, 512, 2048, 89, 89, 89, 255 }, // 0x000058A8
	 { 198, 111, 162, 0, 0, 0, 51, 51, 51, 255 }, // 0x000058B8
	 { 187, 95, 154, 0, 512, 967, 152, 112, 102, 255 }, // 0x000058C8
	 { 198, 94, 159, 0, 0, 1024, 51, 51, 51, 255 }, // 0x000058D8
	 { 187, 86, 153, 0, 512, 1536, 89, 89, 89, 255 }, // 0x000058E8
	 { 184, 82, 149, 0, 768, 1792, 89, 89, 89, 255 }, // 0x000058F8
	 { 198, 76, 145, 0, 1024, 2048, 89, 89, 89, 255 }, // 0x00005908
	 { 186, 82, 148, 0, 768, 1792, 76, 76, 76, 255 }, // 0x00005918
};

Vtx_t _syatekijyou_room_0_vertices_00005928[13] = 
{
	 { 198, 76, 145, 0, 1024, 2048, 89, 89, 89, 255 }, // 0x00005928
	 { 198, 78, 152, 0, 512, 2048, 89, 89, 89, 255 }, // 0x00005938
	 { 186, 82, 148, 0, 768, 1792, 76, 76, 76, 255 }, // 0x00005948
	 { 198, 83, 158, 0, 0, 2048, 51, 51, 51, 255 }, // 0x00005958
	 { 198, 94, 158, 0, 0, 1024, 51, 51, 51, 255 }, // 0x00005968
	 { 198, 94, 159, 0, 0, 1024, 51, 51, 51, 255 }, // 0x00005978
	 { 187, 86, 153, 0, 512, 1536, 89, 89, 89, 255 }, // 0x00005988
	 { 198, 111, 129, 0, 0, 0, 255, 255, 255, 255 }, // 0x00005998
	 { 187, 95, 136, 0, 512, 967, 255, 255, 255, 255 }, // 0x000059A8
	 { 184, 103, 145, 0, 1024, 455, 255, 255, 255, 255 }, // 0x000059B8
	 { 180, 96, 145, 0, 1024, 910, 255, 255, 255, 255 }, // 0x000059C8
	 { 187, 95, 154, 0, 512, 967, 152, 112, 102, 255 }, // 0x000059D8
	 { 198, 111, 162, 0, 0, 0, 51, 51, 51, 255 }, // 0x000059E8
};

Vtx_t _syatekijyou_room_0_vertices_000059F8[8] = 
{
	 { 177, 73, 129, 0, 0, 0, 0, 0, 0, 0 }, // 0x000059F8
	 { 198, 73, 129, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A08
	 { 177, 111, 129, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A18
	 { 198, 111, 129, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A28
	 { 177, 73, 162, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A38
	 { 198, 73, 162, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A48
	 { 177, 111, 162, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A58
	 { 198, 111, 162, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005A68
};

Gfx _syatekijyou_room_0_dlist_00005A78[] =
{
	gsDPPipeSync(), // 0x00005A78
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005A80
	gsSPVertex(_syatekijyou_room_0_vertices_000059F8, 8, 0), // 0x00005A88
	gsSPCullDisplayList(0, 7), // 0x00005A90
	gsDPPipeSync(), // 0x00005A98
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005AA0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005AA8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005AB0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00008CC0), // 0x00005AB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 5, 0), // 0x00005AC0
	gsDPLoadSync(), // 0x00005AC8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00005AD0
	gsDPPipeSync(), // 0x00005AD8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 6, 0, 2, 5, 0), // 0x00005AE0
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005AE8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00005AF0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00005AF8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005B00
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005B08
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00005B10
	gsSPVertex(_syatekijyou_room_0_vertices_00005728, 32, 0), // 0x00005B18
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00005B20
	gsSP2Triangles(4, 3, 2, 0, 5, 6, 7, 0), // 0x00005B28
	gsSP2Triangles(5, 8, 9, 0, 8, 10, 9, 0), // 0x00005B30
	gsSP2Triangles(2, 1, 11, 0, 12, 2, 11, 0), // 0x00005B38
	gsSP2Triangles(13, 12, 11, 0, 10, 14, 9, 0), // 0x00005B40
	gsSP2Triangles(10, 15, 14, 0, 10, 16, 15, 0), // 0x00005B48
	gsSP2Triangles(16, 17, 15, 0, 18, 19, 20, 0), // 0x00005B50
	gsSP2Triangles(14, 21, 9, 0, 8, 18, 10, 0), // 0x00005B58
	gsSP2Triangles(22, 23, 18, 0, 23, 24, 18, 0), // 0x00005B60
	gsSP2Triangles(24, 19, 18, 0, 7, 6, 25, 0), // 0x00005B68
	gsSP2Triangles(26, 27, 25, 0, 21, 14, 26, 0), // 0x00005B70
	gsSP2Triangles(14, 28, 26, 0, 14, 15, 28, 0), // 0x00005B78
	gsSP2Triangles(15, 29, 28, 0, 15, 17, 29, 0), // 0x00005B80
	gsSP2Triangles(20, 30, 31, 0, 28, 27, 26, 0), // 0x00005B88
	gsSPVertex(_syatekijyou_room_0_vertices_00005928, 13, 0), // 0x00005B90
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00005B98
	gsSP2Triangles(3, 4, 2, 0, 5, 6, 2, 0), // 0x00005BA0
	gsSP2Triangles(7, 8, 9, 0, 8, 10, 9, 0), // 0x00005BA8
	gsSP2Triangles(10, 11, 9, 0, 11, 12, 9, 0), // 0x00005BB0
	gsSPEndDisplayList(), // 0x00005BB8
};

Vtx_t _syatekijyou_room_0_vertices_00005BC0[32] = 
{
	 { -13, 110, 345, 0, 1820, 2048, 48, 29, 2, 255 }, // 0x00005BC0
	 { -10, 116, 353, 0, 1628, 1729, 48, 29, 2, 255 }, // 0x00005BD0
	 { -13, 112, 352, 0, 1573, 1889, 48, 29, 2, 255 }, // 0x00005BE0
	 { -13, 110, 345, 0, 1820, 2048, 48, 29, 2, 255 }, // 0x00005BF0
	 { -13, 112, 352, 0, 1573, 1889, 48, 29, 2, 255 }, // 0x00005C00
	 { -17, 116, 353, 0, 1628, 1729, 48, 29, 2, 255 }, // 0x00005C10
	 { -10, 144, 400, 0, 0, 315, 48, 29, 2, 255 }, // 0x00005C20
	 { -2, 133, 400, 0, 0, 735, 71, 62, 30, 255 }, // 0x00005C30
	 { -6, 145, 366, 0, 1504, 493, 73, 45, 3, 255 }, // 0x00005C40
	 { -13, 152, 363, 0, 1682, 273, 48, 29, 2, 255 }, // 0x00005C50
	 { -5, 121, 400, 0, 0, 1155, 73, 45, 3, 255 }, // 0x00005C60
	 { -3, 139, 368, 0, 1326, 713, 122, 88, 35, 255 }, // 0x00005C70
	 { -13, 110, 400, 0, 0, 1575, 48, 29, 2, 255 }, // 0x00005C80
	 { -5, 135, 370, 0, 1237, 823, 115, 97, 21, 255 }, // 0x00005C90
	 { -13, 132, 372, 0, 1148, 933, 48, 29, 2, 255 }, // 0x00005CA0
	 { -10, 116, 353, 0, 1637, 1744, 48, 29, 2, 255 }, // 0x00005CB0
	 { -9, 116, 346, 0, 1911, 1795, 48, 29, 2, 255 }, // 0x00005CC0
	 { -13, 116, 343, 0, 2048, 1820, 48, 29, 2, 255 }, // 0x00005CD0
	 { -4, 137, 359, 0, 1687, 781, 122, 88, 35, 255 }, // 0x00005CE0
	 { -7, 138, 354, 0, 1868, 815, 71, 62, 30, 255 }, // 0x00005CF0
	 { -13, 140, 351, 0, 2048, 850, 48, 29, 2, 255 }, // 0x00005D00
	 { -13, 147, 353, 0, 2048, 364, 48, 29, 2, 255 }, // 0x00005D10
	 { -6, 144, 357, 0, 1868, 573, 73, 45, 3, 255 }, // 0x00005D20
	 { -13, 132, 372, 0, 1148, 933, 48, 29, 2, 255 }, // 0x00005D30
	 { -21, 135, 370, 0, 1237, 823, 115, 97, 21, 255 }, // 0x00005D40
	 { -17, 116, 353, 0, 1637, 1744, 48, 29, 2, 255 }, // 0x00005D50
	 { -23, 139, 368, 0, 1326, 713, 122, 88, 35, 255 }, // 0x00005D60
	 { -18, 116, 346, 0, 1911, 1795, 48, 29, 2, 255 }, // 0x00005D70
	 { -23, 137, 359, 0, 1687, 781, 122, 88, 35, 255 }, // 0x00005D80
	 { -13, 116, 343, 0, 2048, 1820, 48, 29, 2, 255 }, // 0x00005D90
	 { -20, 138, 354, 0, 1868, 815, 71, 62, 30, 255 }, // 0x00005DA0
	 { -13, 140, 351, 0, 2048, 850, 48, 29, 2, 255 }, // 0x00005DB0
};

Vtx_t _syatekijyou_room_0_vertices_00005DC0[23] = 
{
	 { -21, 145, 366, 0, 1504, 493, 73, 45, 3, 255 }, // 0x00005DC0
	 { -20, 144, 357, 0, 1868, 573, 73, 45, 3, 255 }, // 0x00005DD0
	 { -23, 137, 359, 0, 1687, 781, 122, 88, 35, 255 }, // 0x00005DE0
	 { -23, 139, 368, 0, 1326, 713, 122, 88, 35, 255 }, // 0x00005DF0
	 { -13, 152, 363, 0, 1682, 273, 48, 29, 2, 255 }, // 0x00005E00
	 { -13, 147, 353, 0, 2048, 364, 48, 29, 2, 255 }, // 0x00005E10
	 { -13, 140, 351, 0, 2048, 850, 48, 29, 2, 255 }, // 0x00005E20
	 { -20, 138, 354, 0, 1868, 815, 71, 62, 30, 255 }, // 0x00005E30
	 { -13, 132, 372, 0, 1148, 933, 48, 29, 2, 255 }, // 0x00005E40
	 { -13, 110, 400, 0, 0, 1575, 48, 29, 2, 255 }, // 0x00005E50
	 { -21, 135, 370, 0, 1237, 823, 115, 97, 21, 255 }, // 0x00005E60
	 { -21, 121, 400, 0, 0, 1155, 73, 45, 3, 255 }, // 0x00005E70
	 { -24, 133, 400, 0, 0, 735, 71, 62, 30, 255 }, // 0x00005E80
	 { -17, 144, 400, 0, 0, 315, 48, 29, 2, 255 }, // 0x00005E90
	 { -13, 153, 386, 0, 585, 0, 48, 29, 2, 255 }, // 0x00005EA0
	 { -13, 151, 394, 0, 293, 0, 48, 29, 2, 255 }, // 0x00005EB0
	 { -10, 144, 400, 0, 0, 315, 48, 29, 2, 255 }, // 0x00005EC0
	 { -13, 152, 363, 0, 1682, 273, 48, 29, 2, 255 }, // 0x00005ED0
	 { -13, 153, 386, 0, 585, 0, 48, 29, 2, 255 }, // 0x00005EE0
	 { -13, 151, 394, 0, 293, 0, 48, 29, 2, 255 }, // 0x00005EF0
	 { -13, 132, 372, 0, 1611, 384, 48, 29, 2, 255 }, // 0x00005F00
	 { -17, 116, 353, 0, -207, 954, 48, 29, 2, 255 }, // 0x00005F10
	 { -10, 116, 353, 0, 88, 1550, 48, 29, 2, 255 }, // 0x00005F20
};

Vtx_t _syatekijyou_room_0_vertices_00005F30[3] = 
{
	 { -10, 116, 353, 0, 0, 2048, 48, 29, 2, 255 }, // 0x00005F30
	 { -17, 116, 353, 0, 0, 2048, 48, 29, 2, 255 }, // 0x00005F40
	 { -13, 112, 352, 0, 0, 2048, 48, 29, 2, 255 }, // 0x00005F50
};

Vtx_t _syatekijyou_room_0_vertices_00005F60[3] = 
{
	 { -17, 144, 400, 0, 69, -46, 48, 29, 2, 255 }, // 0x00005F60
	 { -10, 144, 400, 0, 66, 508, 48, 29, 2, 255 }, // 0x00005F70
	 { -13, 151, 394, 0, 912, 236, 48, 29, 2, 255 }, // 0x00005F80
};

Vtx_t _syatekijyou_room_0_vertices_00005F90[22] = 
{
	 { -9, 146, 358, 0, -891, 1271, 22, 14, 2, 255 }, // 0x00005F90
	 { -1, 150, 354, 0, 329, 229, 122, 88, 35, 255 }, // 0x00005FA0
	 { -5, 143, 355, 0, -990, 312, 92, 92, 60, 255 }, // 0x00005FB0
	 { -9, 146, 358, 0, -891, 1271, 22, 14, 2, 255 }, // 0x00005FC0
	 { -5, 143, 355, 0, -990, 312, 92, 92, 60, 255 }, // 0x00005FD0
	 { -8, 143, 358, 0, -1270, 927, 15, 13, 10, 255 }, // 0x00005FE0
	 { -9, 146, 358, 0, -891, 1271, 22, 14, 2, 255 }, // 0x00005FF0
	 { -3, 144, 359, 0, -990, 312, 92, 92, 60, 255 }, // 0x00006000
	 { -9, 146, 358, 0, -891, 1271, 22, 14, 2, 255 }, // 0x00006010
	 { -3, 144, 359, 0, -990, 312, 92, 92, 60, 255 }, // 0x00006020
	 { -7, 144, 360, 0, -1270, 927, 15, 13, 10, 255 }, // 0x00006030
	 { -19, 144, 360, 0, -1270, 927, 15, 13, 10, 255 }, // 0x00006040
	 { -24, 144, 359, 0, -990, 312, 92, 92, 60, 255 }, // 0x00006050
	 { -17, 146, 358, 0, -891, 1271, 22, 14, 2, 255 }, // 0x00006060
	 { -24, 144, 359, 0, -990, 312, 92, 92, 60, 255 }, // 0x00006070
	 { -26, 150, 354, 0, 329, 229, 122, 88, 35, 255 }, // 0x00006080
	 { -17, 146, 358, 0, -891, 1271, 22, 14, 2, 255 }, // 0x00006090
	 { -18, 143, 358, 0, -1270, 927, 15, 13, 10, 255 }, // 0x000060A0
	 { -22, 143, 355, 0, -990, 312, 92, 92, 60, 255 }, // 0x000060B0
	 { -17, 146, 358, 0, -891, 1271, 22, 14, 2, 255 }, // 0x000060C0
	 { -22, 143, 355, 0, -990, 312, 92, 92, 60, 255 }, // 0x000060D0
	 { -17, 146, 358, 0, -891, 1271, 22, 14, 2, 255 }, // 0x000060E0
};

Vtx_t _syatekijyou_room_0_vertices_000060F0[8] = 
{
	 { -26, 110, 343, 0, 0, 0, 0, 0, 0, 0 }, // 0x000060F0
	 { -1, 110, 343, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006100
	 { -26, 153, 343, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006110
	 { -1, 153, 343, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006120
	 { -26, 110, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006130
	 { -1, 110, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006140
	 { -26, 153, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006150
	 { -1, 153, 400, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006160
};

Gfx _syatekijyou_room_0_dlist_00006170[] =
{
	gsDPPipeSync(), // 0x00006170
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006178
	gsSPVertex(_syatekijyou_room_0_vertices_000060F0, 8, 0), // 0x00006180
	gsSPCullDisplayList(0, 7), // 0x00006188
	gsDPPipeSync(), // 0x00006190
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006198
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000061A0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000061A8
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00007CC0), // 0x000061B0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x000061B8
	gsDPLoadSync(), // 0x000061C0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000061C8
	gsDPPipeSync(), // 0x000061D0
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x000061D8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000061E0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000061E8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x000061F0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000061F8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00006200
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006208
	gsSPVertex(_syatekijyou_room_0_vertices_00005BC0, 32, 0), // 0x00006210
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00006218
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00006220
	gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0), // 0x00006228
	gsSP2Triangles(10, 12, 11, 0, 12, 13, 11, 0), // 0x00006230
	gsSP2Triangles(12, 14, 13, 0, 14, 15, 13, 0), // 0x00006238
	gsSP2Triangles(15, 16, 11, 0, 15, 11, 13, 0), // 0x00006240
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 11, 0), // 0x00006248
	gsSP2Triangles(15, 0, 16, 0, 0, 17, 16, 0), // 0x00006250
	gsSP2Triangles(17, 19, 18, 0, 17, 20, 19, 0), // 0x00006258
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 19, 0), // 0x00006260
	gsSP2Triangles(22, 18, 19, 0, 9, 8, 22, 0), // 0x00006268
	gsSP2Triangles(21, 9, 22, 0, 8, 11, 18, 0), // 0x00006270
	gsSP2Triangles(8, 18, 22, 0, 23, 24, 25, 0), // 0x00006278
	gsSP2Triangles(26, 27, 25, 0, 24, 26, 25, 0), // 0x00006280
	gsSP2Triangles(28, 29, 27, 0, 26, 28, 27, 0), // 0x00006288
	gsSP2Triangles(29, 3, 27, 0, 3, 25, 27, 0), // 0x00006290
	gsSP2Triangles(28, 30, 29, 0, 30, 31, 29, 0), // 0x00006298
	gsSPVertex(_syatekijyou_room_0_vertices_00005DC0, 23, 0), // 0x000062A0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x000062A8
	gsSP2Triangles(4, 5, 1, 0, 0, 4, 1, 0), // 0x000062B0
	gsSP2Triangles(6, 7, 1, 0, 7, 2, 1, 0), // 0x000062B8
	gsSP2Triangles(5, 6, 1, 0, 8, 9, 10, 0), // 0x000062C0
	gsSP2Triangles(9, 3, 10, 0, 9, 11, 3, 0), // 0x000062C8
	gsSP2Triangles(12, 0, 3, 0, 11, 12, 3, 0), // 0x000062D0
	gsSP2Triangles(13, 4, 0, 0, 12, 13, 0, 0), // 0x000062D8
	gsSP2Triangles(14, 15, 16, 0, 17, 14, 16, 0), // 0x000062E0
	gsSP2Triangles(18, 4, 13, 0, 18, 13, 19, 0), // 0x000062E8
	gsSP1Triangle(20, 21, 22, 0), // 0x000062F0
	gsDPPipeSync(), // 0x000062F8
	gsSPTexture(0, 0, 0, 0, 0), // 0x00006300
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00006308
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006310
	gsSPVertex(_syatekijyou_room_0_vertices_00005F30, 3, 0), // 0x00006318
	gsSP1Triangle(0, 1, 2, 0), // 0x00006320
	gsDPPipeSync(), // 0x00006328
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006330
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00007CC0), // 0x00006338
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x00006340
	gsDPLoadSync(), // 0x00006348
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00006350
	gsDPPipeSync(), // 0x00006358
	gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00006360
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00006368
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006370
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00006378
	gsSPVertex(_syatekijyou_room_0_vertices_00005F60, 3, 0), // 0x00006380
	gsSP1Triangle(0, 1, 2, 0), // 0x00006388
	gsDPPipeSync(), // 0x00006390
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00006398
	gsSPVertex(_syatekijyou_room_0_vertices_00005F90, 22, 0), // 0x000063A0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000063A8
	gsSP2Triangles(6, 1, 7, 0, 8, 9, 10, 0), // 0x000063B0
	gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0), // 0x000063B8
	gsSP2Triangles(17, 18, 19, 0, 20, 15, 21, 0), // 0x000063C0
	gsSPEndDisplayList(), // 0x000063C8
};

Vtx_t _syatekijyou_room_0_vertices_000063D0[4] = 
{
	 { 73, 0, 502, 0, -323, 1480, 0, 0, 0, 255 }, // 0x000063D0
	 { 20, 0, 420, 0, 701, 1480, 255, 255, 255, 255 }, // 0x000063E0
	 { -40, 0, 420, 0, 1044, 954, 255, 255, 255, 255 }, // 0x000063F0
	 { -93, 0, 502, 0, 629, 18, 0, 0, 0, 255 }, // 0x00006400
};

Vtx_t _syatekijyou_room_0_vertices_00006410[8] = 
{
	 { -93, 0, 420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006410
	 { 73, 0, 420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006420
	 { -93, 0, 420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006430
	 { 73, 0, 420, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006440
	 { -93, 0, 502, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006450
	 { 73, 0, 502, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006460
	 { -93, 0, 502, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006470
	 { 73, 0, 502, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006480
};

Gfx _syatekijyou_room_0_dlist_00006490[] =
{
	gsDPPipeSync(), // 0x00006490
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006498
	gsSPVertex(_syatekijyou_room_0_vertices_00006410, 8, 0), // 0x000064A0
	gsSPCullDisplayList(0, 7), // 0x000064A8
	gsDPPipeSync(), // 0x000064B0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000064B8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000064C0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000064C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000054C0), // 0x000064D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 5, 0, 1, 5, 0), // 0x000064D8
	gsDPLoadSync(), // 0x000064E0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000064E8
	gsDPPipeSync(), // 0x000064F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 5, 0, 1, 5, 0), // 0x000064F8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00006500
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006508
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00006510
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00006518
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00006520
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006528
	gsSPVertex(_syatekijyou_room_0_vertices_000063D0, 4, 0), // 0x00006530
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006538
	gsSPEndDisplayList(), // 0x00006540
};

Gfx _syatekijyou_room_0_dlist_00006548[] =
{
	gsSPDisplayList(_syatekijyou_room_0_dlist_000007C0), // 0x00006548
	gsSPDisplayList(_syatekijyou_room_0_dlist_00000D08), // 0x00006550
	gsSPDisplayList(_syatekijyou_room_0_dlist_00001098), // 0x00006558
	gsSPDisplayList(_syatekijyou_room_0_dlist_000013B0), // 0x00006560
	gsSPDisplayList(_syatekijyou_room_0_dlist_000016D0), // 0x00006568
	gsSPDisplayList(_syatekijyou_room_0_dlist_00001A68), // 0x00006570
	gsSPDisplayList(_syatekijyou_room_0_dlist_00002950), // 0x00006578
	gsSPDisplayList(_syatekijyou_room_0_dlist_000030E8), // 0x00006580
	gsSPDisplayList(_syatekijyou_room_0_dlist_00003580), // 0x00006588
	gsSPDisplayList(_syatekijyou_room_0_dlist_00003A08), // 0x00006590
	gsSPDisplayList(_syatekijyou_room_0_dlist_00003FC0), // 0x00006598
	gsSPDisplayList(_syatekijyou_room_0_dlist_000045F0), // 0x000065A0
	gsSPDisplayList(_syatekijyou_room_0_dlist_00004BB0), // 0x000065A8
	gsSPDisplayList(_syatekijyou_room_0_dlist_000050B0), // 0x000065B0
	gsSPDisplayList(_syatekijyou_room_0_dlist_00005498), // 0x000065B8
	gsSPDisplayList(_syatekijyou_room_0_dlist_00005660), // 0x000065C0
	gsSPDisplayList(_syatekijyou_room_0_dlist_00005A78), // 0x000065C8
	gsSPDisplayList(_syatekijyou_room_0_dlist_00006170), // 0x000065D0
	gsSPDisplayList(_syatekijyou_room_0_dlist_00006490), // 0x000065D8
	gsSPEndDisplayList(), // 0x000065E0
};

static u8 unaccounted65E8[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx_t _syatekijyou_room_0_vertices_000065F0[4] = 
{
	 { -195, 157, 289, 0, 512, 0, 51, 51, 51, 255 }, // 0x000065F0
	 { -195, 148, 289, 0, 512, 512, 51, 51, 51, 255 }, // 0x00006600
	 { -195, 148, 279, 0, 0, 512, 51, 51, 51, 255 }, // 0x00006610
	 { -195, 157, 279, 0, 0, 0, 51, 51, 51, 255 }, // 0x00006620
};

Vtx_t _syatekijyou_room_0_vertices_00006630[4] = 
{
	 { -185, 130, 281, 0, 0, 55, 51, 51, 51, 255 }, // 0x00006630
	 { -185, 149, 281, 0, 0, -3869, 51, 51, 51, 255 }, // 0x00006640
	 { -185, 149, 286, 0, 512, -3869, 51, 51, 51, 255 }, // 0x00006650
	 { -185, 130, 286, 0, 512, 55, 51, 51, 51, 255 }, // 0x00006660
};

Vtx_t _syatekijyou_room_0_vertices_00006670[4] = 
{
	 { -182, 133, 284, 0, 0, 33, 51, 51, 51, 255 }, // 0x00006670
	 { -182, 152, 284, 0, 0, -3869, 51, 51, 51, 255 }, // 0x00006680
	 { -188, 152, 284, 0, 512, -3869, 51, 51, 51, 255 }, // 0x00006690
	 { -188, 133, 284, 0, 512, 33, 51, 51, 51, 255 }, // 0x000066A0
};

Vtx_t _syatekijyou_room_0_vertices_000066B0[4] = 
{
	 { -195, 157, 76, 0, 512, 0, 51, 51, 51, 255 }, // 0x000066B0
	 { -195, 148, 76, 0, 512, 512, 51, 51, 51, 255 }, // 0x000066C0
	 { -195, 148, 66, 0, 0, 512, 51, 51, 51, 255 }, // 0x000066D0
	 { -195, 157, 66, 0, 0, 0, 51, 51, 51, 255 }, // 0x000066E0
};

Vtx_t _syatekijyou_room_0_vertices_000066F0[4] = 
{
	 { -185, 130, 68, 0, 0, 55, 51, 51, 51, 255 }, // 0x000066F0
	 { -185, 149, 68, 0, 0, -3869, 51, 51, 51, 255 }, // 0x00006700
	 { -185, 149, 73, 0, 512, -3869, 51, 51, 51, 255 }, // 0x00006710
	 { -185, 130, 73, 0, 512, 55, 51, 51, 51, 255 }, // 0x00006720
};

Vtx_t _syatekijyou_room_0_vertices_00006730[8] = 
{
	 { -182, 133, 71, 0, 0, 33, 51, 51, 51, 255 }, // 0x00006730
	 { -182, 152, 71, 0, 0, -3869, 51, 51, 51, 255 }, // 0x00006740
	 { -188, 152, 71, 0, 512, -3869, 51, 51, 51, 255 }, // 0x00006750
	 { -188, 133, 71, 0, 512, 33, 51, 51, 51, 255 }, // 0x00006760
	 { -182, 133, -131, 0, 0, 33, 51, 51, 51, 255 }, // 0x00006770
	 { -182, 152, -131, 0, 0, -3869, 51, 51, 51, 255 }, // 0x00006780
	 { -188, 152, -131, 0, 512, -3869, 51, 51, 51, 255 }, // 0x00006790
	 { -188, 133, -131, 0, 512, 33, 51, 51, 51, 255 }, // 0x000067A0
};

Vtx_t _syatekijyou_room_0_vertices_000067B0[4] = 
{
	 { -185, 130, -134, 0, 0, 55, 51, 51, 51, 255 }, // 0x000067B0
	 { -185, 149, -134, 0, 0, -3869, 51, 51, 51, 255 }, // 0x000067C0
	 { -185, 149, -129, 0, 512, -3869, 51, 51, 51, 255 }, // 0x000067D0
	 { -185, 130, -129, 0, 512, 55, 51, 51, 51, 255 }, // 0x000067E0
};

Vtx_t _syatekijyou_room_0_vertices_000067F0[8] = 
{
	 { -195, 157, -126, 0, 512, 0, 51, 51, 51, 255 }, // 0x000067F0
	 { -195, 148, -126, 0, 512, 512, 51, 51, 51, 255 }, // 0x00006800
	 { -195, 148, -136, 0, 0, 512, 51, 51, 51, 255 }, // 0x00006810
	 { -195, 157, -136, 0, 0, 0, 51, 51, 51, 255 }, // 0x00006820
	 { 195, 157, -136, 0, 0, 0, 51, 51, 51, 255 }, // 0x00006830
	 { 195, 148, -136, 0, 0, 512, 51, 51, 51, 255 }, // 0x00006840
	 { 195, 148, -126, 0, 512, 512, 51, 51, 51, 255 }, // 0x00006850
	 { 195, 157, -126, 0, 512, 0, 51, 51, 51, 255 }, // 0x00006860
};

Vtx_t _syatekijyou_room_0_vertices_00006870[4] = 
{
	 { 185, 130, -129, 0, 512, 55, 51, 51, 51, 255 }, // 0x00006870
	 { 185, 149, -129, 0, 512, -3869, 51, 51, 51, 255 }, // 0x00006880
	 { 185, 149, -134, 0, 0, -3869, 51, 51, 51, 255 }, // 0x00006890
	 { 185, 130, -134, 0, 0, 55, 51, 51, 51, 255 }, // 0x000068A0
};

Vtx_t _syatekijyou_room_0_vertices_000068B0[8] = 
{
	 { 188, 133, -131, 0, 512, 33, 51, 51, 51, 255 }, // 0x000068B0
	 { 188, 152, -131, 0, 512, -3869, 51, 51, 51, 255 }, // 0x000068C0
	 { 182, 152, -131, 0, 0, -3869, 51, 51, 51, 255 }, // 0x000068D0
	 { 182, 133, -131, 0, 0, 33, 51, 51, 51, 255 }, // 0x000068E0
	 { 188, 133, 71, 0, 512, 33, 51, 51, 51, 255 }, // 0x000068F0
	 { 188, 152, 71, 0, 512, -3869, 51, 51, 51, 255 }, // 0x00006900
	 { 182, 152, 71, 0, 0, -3869, 51, 51, 51, 255 }, // 0x00006910
	 { 182, 133, 71, 0, 0, 33, 51, 51, 51, 255 }, // 0x00006920
};

Vtx_t _syatekijyou_room_0_vertices_00006930[4] = 
{
	 { 185, 130, 73, 0, 512, 55, 51, 51, 51, 255 }, // 0x00006930
	 { 185, 149, 73, 0, 512, -3869, 51, 51, 51, 255 }, // 0x00006940
	 { 185, 149, 68, 0, 0, -3869, 51, 51, 51, 255 }, // 0x00006950
	 { 185, 130, 68, 0, 0, 55, 51, 51, 51, 255 }, // 0x00006960
};

Vtx_t _syatekijyou_room_0_vertices_00006970[4] = 
{
	 { 195, 157, 66, 0, 0, 0, 51, 51, 51, 255 }, // 0x00006970
	 { 195, 148, 66, 0, 0, 512, 51, 51, 51, 255 }, // 0x00006980
	 { 195, 148, 76, 0, 512, 512, 51, 51, 51, 255 }, // 0x00006990
	 { 195, 157, 76, 0, 512, 0, 51, 51, 51, 255 }, // 0x000069A0
};

Vtx_t _syatekijyou_room_0_vertices_000069B0[4] = 
{
	 { 188, 133, 284, 0, 512, 33, 51, 51, 51, 255 }, // 0x000069B0
	 { 188, 152, 284, 0, 512, -3869, 51, 51, 51, 255 }, // 0x000069C0
	 { 182, 152, 284, 0, 0, -3869, 51, 51, 51, 255 }, // 0x000069D0
	 { 182, 133, 284, 0, 0, 33, 51, 51, 51, 255 }, // 0x000069E0
};

Vtx_t _syatekijyou_room_0_vertices_000069F0[4] = 
{
	 { 185, 130, 286, 0, 512, 55, 51, 51, 51, 255 }, // 0x000069F0
	 { 185, 149, 286, 0, 512, -3869, 51, 51, 51, 255 }, // 0x00006A00
	 { 185, 149, 281, 0, 0, -3869, 51, 51, 51, 255 }, // 0x00006A10
	 { 185, 130, 281, 0, 0, 55, 51, 51, 51, 255 }, // 0x00006A20
};

Vtx_t _syatekijyou_room_0_vertices_00006A30[4] = 
{
	 { 195, 157, 279, 0, 0, 0, 51, 51, 51, 255 }, // 0x00006A30
	 { 195, 148, 279, 0, 0, 512, 51, 51, 51, 255 }, // 0x00006A40
	 { 195, 148, 289, 0, 512, 512, 51, 51, 51, 255 }, // 0x00006A50
	 { 195, 157, 289, 0, 512, 0, 51, 51, 51, 255 }, // 0x00006A60
};

Vtx_t _syatekijyou_room_0_vertices_00006A70[8] = 
{
	 { -195, 130, -136, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006A70
	 { 195, 130, -136, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006A80
	 { -195, 157, -136, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006A90
	 { 195, 157, -136, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006AA0
	 { -195, 130, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006AB0
	 { 195, 130, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006AC0
	 { -195, 157, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006AD0
	 { 195, 157, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x00006AE0
};

Gfx _syatekijyou_room_0_dlist_00006AF0[] =
{
	gsDPPipeSync(), // 0x00006AF0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00006AF8
	gsSPVertex(_syatekijyou_room_0_vertices_00006A70, 8, 0), // 0x00006B00
	gsSPCullDisplayList(0, 7), // 0x00006B08
	gsDPPipeSync(), // 0x00006B10
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00006B18
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00006B20
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00006B28
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000051C0), // 0x00006B30
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 4, 0), // 0x00006B38
	gsDPLoadSync(), // 0x00006B40
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00006B48
	gsDPPipeSync(), // 0x00006B50
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 4, 0, 2, 4, 0), // 0x00006B58
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00006B60
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00006B68
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00006B70
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00006B78
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00006B80
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00006B88
	gsSPVertex(_syatekijyou_room_0_vertices_000065F0, 4, 0), // 0x00006B90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006B98
	gsDPPipeSync(), // 0x00006BA0
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000052C0), // 0x00006BA8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 4, 0), // 0x00006BB0
	gsDPLoadSync(), // 0x00006BB8
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00006BC0
	gsDPPipeSync(), // 0x00006BC8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 0, 5, 0, 2, 4, 0), // 0x00006BD0
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00006BD8
	gsSPVertex(_syatekijyou_room_0_vertices_00006630, 4, 0), // 0x00006BE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006BE8
	gsDPPipeSync(), // 0x00006BF0
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00006BF8
	gsSPVertex(_syatekijyou_room_0_vertices_00006670, 4, 0), // 0x00006C00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006C08
	gsDPPipeSync(), // 0x00006C10
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000051C0), // 0x00006C18
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 4, 0), // 0x00006C20
	gsDPLoadSync(), // 0x00006C28
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00006C30
	gsDPPipeSync(), // 0x00006C38
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 4, 0, 2, 4, 0), // 0x00006C40
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00006C48
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00006C50
	gsSPVertex(_syatekijyou_room_0_vertices_000066B0, 4, 0), // 0x00006C58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006C60
	gsDPPipeSync(), // 0x00006C68
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000052C0), // 0x00006C70
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 4, 0), // 0x00006C78
	gsDPLoadSync(), // 0x00006C80
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00006C88
	gsDPPipeSync(), // 0x00006C90
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 0, 5, 0, 2, 4, 0), // 0x00006C98
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00006CA0
	gsSPVertex(_syatekijyou_room_0_vertices_000066F0, 4, 0), // 0x00006CA8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006CB0
	gsDPPipeSync(), // 0x00006CB8
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00006CC0
	gsSPVertex(_syatekijyou_room_0_vertices_00006730, 8, 0), // 0x00006CC8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006CD0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006CD8
	gsDPPipeSync(), // 0x00006CE0
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00006CE8
	gsSPVertex(_syatekijyou_room_0_vertices_000067B0, 4, 0), // 0x00006CF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006CF8
	gsDPPipeSync(), // 0x00006D00
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000051C0), // 0x00006D08
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 4, 0), // 0x00006D10
	gsDPLoadSync(), // 0x00006D18
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00006D20
	gsDPPipeSync(), // 0x00006D28
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 4, 0, 2, 4, 0), // 0x00006D30
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00006D38
	gsSPVertex(_syatekijyou_room_0_vertices_000067F0, 8, 0), // 0x00006D40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006D48
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006D50
	gsDPPipeSync(), // 0x00006D58
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000052C0), // 0x00006D60
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 4, 0), // 0x00006D68
	gsDPLoadSync(), // 0x00006D70
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00006D78
	gsDPPipeSync(), // 0x00006D80
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 0, 5, 0, 2, 4, 0), // 0x00006D88
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00006D90
	gsSPVertex(_syatekijyou_room_0_vertices_00006870, 4, 0), // 0x00006D98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006DA0
	gsDPPipeSync(), // 0x00006DA8
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00006DB0
	gsSPVertex(_syatekijyou_room_0_vertices_000068B0, 8, 0), // 0x00006DB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006DC0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00006DC8
	gsDPPipeSync(), // 0x00006DD0
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00006DD8
	gsSPVertex(_syatekijyou_room_0_vertices_00006930, 4, 0), // 0x00006DE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006DE8
	gsDPPipeSync(), // 0x00006DF0
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000051C0), // 0x00006DF8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 4, 0), // 0x00006E00
	gsDPLoadSync(), // 0x00006E08
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00006E10
	gsDPPipeSync(), // 0x00006E18
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 4, 0, 2, 4, 0), // 0x00006E20
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00006E28
	gsSPVertex(_syatekijyou_room_0_vertices_00006970, 4, 0), // 0x00006E30
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006E38
	gsDPPipeSync(), // 0x00006E40
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000052C0), // 0x00006E48
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 4, 0), // 0x00006E50
	gsDPLoadSync(), // 0x00006E58
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00006E60
	gsDPPipeSync(), // 0x00006E68
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 0, 5, 0, 2, 4, 0), // 0x00006E70
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00006E78
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00006E80
	gsSPVertex(_syatekijyou_room_0_vertices_000069B0, 4, 0), // 0x00006E88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006E90
	gsDPPipeSync(), // 0x00006E98
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00006EA0
	gsSPVertex(_syatekijyou_room_0_vertices_000069F0, 4, 0), // 0x00006EA8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006EB0
	gsDPPipeSync(), // 0x00006EB8
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000051C0), // 0x00006EC0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 4, 0), // 0x00006EC8
	gsDPLoadSync(), // 0x00006ED0
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00006ED8
	gsDPPipeSync(), // 0x00006EE0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 4, 0, 2, 4, 0), // 0x00006EE8
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00006EF0
	gsSPVertex(_syatekijyou_room_0_vertices_00006A30, 4, 0), // 0x00006EF8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00006F00
	gsSPEndDisplayList(), // 0x00006F08
};

Vtx_t _syatekijyou_room_0_vertices_00006F10[4] = 
{
	 { 140, 59, 399, 0, 0, 2048, 15, 13, 10, 255 }, // 0x00006F10
	 { 89, 59, 399, 0, 2048, 2048, 15, 13, 10, 255 }, // 0x00006F20
	 { 89, 120, 399, 0, 2048, 0, 15, 13, 10, 255 }, // 0x00006F30
	 { 140, 120, 399, 0, 0, 0, 15, 13, 10, 255 }, // 0x00006F40
};

Vtx_t _syatekijyou_room_0_vertices_00006F50[12] = 
{
	 { -199, 70, 351, 0, 0, 1024, 15, 13, 10, 255 }, // 0x00006F50
	 { -199, 70, 319, 0, 1024, 1024, 15, 13, 10, 255 }, // 0x00006F60
	 { -199, 102, 319, 0, 1024, 0, 15, 13, 10, 255 }, // 0x00006F70
	 { -199, 102, 351, 0, 0, 0, 15, 13, 10, 255 }, // 0x00006F80
	 { -199, 70, 308, 0, 0, 1024, 15, 13, 10, 255 }, // 0x00006F90
	 { -199, 70, 276, 0, 1024, 1024, 15, 13, 10, 255 }, // 0x00006FA0
	 { -199, 102, 276, 0, 1024, 0, 15, 13, 10, 255 }, // 0x00006FB0
	 { -199, 102, 308, 0, 0, 0, 15, 13, 10, 255 }, // 0x00006FC0
	 { -199, 70, 265, 0, 0, 1024, 15, 13, 10, 255 }, // 0x00006FD0
	 { -199, 70, 233, 0, 1024, 1024, 15, 13, 10, 255 }, // 0x00006FE0
	 { -199, 102, 233, 0, 1024, 0, 15, 13, 10, 255 }, // 0x00006FF0
	 { -199, 102, 265, 0, 0, 0, 15, 13, 10, 255 }, // 0x00007000
};

Vtx_t _syatekijyou_room_0_vertices_00007010[4] = 
{
	 { 196, 128, 25, 0, 512, 0, 15, 13, 10, 255 }, // 0x00007010
	 { 196, 82, 25, 0, 512, 2048, 15, 13, 10, 255 }, // 0x00007020
	 { 196, 82, 41, 0, 0, 2048, 21, 14, 4, 255 }, // 0x00007030
	 { 196, 128, 41, 0, 0, 0, 15, 13, 10, 255 }, // 0x00007040
};

Vtx_t _syatekijyou_room_0_vertices_00007050[4] = 
{
	 { 196, 96, 255, 0, 0, 0, 21, 14, 4, 255 }, // 0x00007050
	 { 196, 77, 261, 0, 0, 1024, 21, 14, 4, 255 }, // 0x00007060
	 { 196, 84, 286, 0, 1024, 1024, 15, 13, 10, 255 }, // 0x00007070
	 { 196, 103, 280, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00007080
};

Vtx_t _syatekijyou_room_0_vertices_00007090[4] = 
{
	 { 192, 98, 255, 0, 0, 0, 255, 255, 255, 255 }, // 0x00007090
	 { 192, 79, 260, 0, 0, 1024, 63, 63, 63, 255 }, // 0x000070A0
	 { 192, 86, 285, 0, 1024, 1024, 76, 76, 76, 255 }, // 0x000070B0
	 { 192, 105, 280, 0, 1024, 0, 255, 255, 255, 255 }, // 0x000070C0
};

Vtx_t _syatekijyou_room_0_vertices_000070D0[16] = 
{
	 { 200, 71, 299, 0, 0, 512, 43, 29, 7, 255 }, // 0x000070D0
	 { 189, 71, 299, 0, 1024, 512, 115, 97, 21, 255 }, // 0x000070E0
	 { 189, 75, 299, 0, 1024, 0, 255, 255, 42, 255 }, // 0x000070F0
	 { 200, 75, 299, 0, 0, 0, 43, 29, 7, 255 }, // 0x00007100
	 { 200, 67, 236, 0, 0, 512, 43, 29, 7, 255 }, // 0x00007110
	 { 189, 67, 236, 0, 1024, 512, 115, 97, 21, 255 }, // 0x00007120
	 { 189, 72, 236, 0, 1024, 0, 255, 255, 42, 255 }, // 0x00007130
	 { 200, 72, 236, 0, 0, 0, 43, 29, 7, 255 }, // 0x00007140
	 { 200, 81, 273, 0, 0, 512, 43, 29, 7, 255 }, // 0x00007150
	 { 189, 81, 273, 0, 1024, 512, 115, 97, 21, 255 }, // 0x00007160
	 { 189, 86, 273, 0, 1024, 0, 255, 255, 42, 255 }, // 0x00007170
	 { 200, 86, 273, 0, 0, 0, 43, 29, 7, 255 }, // 0x00007180
	 { 200, 92, 310, 0, 0, 512, 43, 29, 7, 255 }, // 0x00007190
	 { 189, 92, 310, 0, 1024, 512, 115, 97, 21, 255 }, // 0x000071A0
	 { 189, 97, 310, 0, 1024, 0, 255, 255, 42, 255 }, // 0x000071B0
	 { 200, 97, 310, 0, 0, 0, 43, 29, 7, 255 }, // 0x000071C0
};

Vtx_t _syatekijyou_room_0_vertices_000071D0[4] = 
{
	 { 141, 60, 397, 0, 0, 2048, 205, 173, 151, 255 }, // 0x000071D0
	 { 90, 60, 397, 0, 2048, 2048, 153, 153, 153, 255 }, // 0x000071E0
	 { 90, 121, 397, 0, 2048, 0, 142, 152, 102, 255 }, // 0x000071F0
	 { 141, 121, 397, 0, 0, 0, 55, 41, 21, 255 }, // 0x00007200
};

Vtx_t _syatekijyou_room_0_vertices_00007210[12] = 
{
	 { -197, 72, 351, 0, 0, 1024, 73, 64, 28, 255 }, // 0x00007210
	 { -197, 72, 319, 0, 1024, 1024, 86, 72, 15, 255 }, // 0x00007220
	 { -197, 104, 319, 0, 1024, 0, 193, 175, 163, 255 }, // 0x00007230
	 { -197, 104, 351, 0, 0, 0, 86, 72, 15, 255 }, // 0x00007240
	 { -197, 72, 308, 0, 0, 1024, 86, 72, 15, 255 }, // 0x00007250
	 { -197, 72, 276, 0, 1024, 1024, 86, 72, 15, 255 }, // 0x00007260
	 { -197, 104, 276, 0, 1024, 0, 193, 175, 163, 255 }, // 0x00007270
	 { -197, 104, 308, 0, 0, 0, 197, 197, 159, 255 }, // 0x00007280
	 { -197, 72, 265, 0, 0, 1024, 71, 62, 30, 255 }, // 0x00007290
	 { -197, 72, 233, 0, 1024, 1024, 49, 40, 26, 255 }, // 0x000072A0
	 { -197, 104, 233, 0, 1024, 0, 73, 64, 28, 255 }, // 0x000072B0
	 { -197, 104, 265, 0, 0, 0, 197, 197, 159, 255 }, // 0x000072C0
};

Vtx_t _syatekijyou_room_0_vertices_000072D0[4] = 
{
	 { 192, 130, 25, 0, 0, 0, 255, 255, 205, 255 }, // 0x000072D0
	 { 192, 84, 25, 0, 0, 2048, 76, 76, 76, 255 }, // 0x000072E0
	 { 192, 84, 41, 0, 512, 2048, 63, 63, 63, 255 }, // 0x000072F0
	 { 192, 130, 41, 0, 512, 0, 255, 255, 205, 255 }, // 0x00007300
};

Vtx_t _syatekijyou_room_0_vertices_00007310[8] = 
{
	 { -199, 59, 25, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007310
	 { 200, 59, 25, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007320
	 { -199, 130, 25, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007330
	 { 200, 130, 25, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007340
	 { -199, 59, 399, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007350
	 { 200, 59, 399, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007360
	 { -199, 130, 399, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007370
	 { 200, 130, 399, 0, 0, 0, 0, 0, 0, 0 }, // 0x00007380
};

Gfx _syatekijyou_room_0_dlist_00007390[] =
{
	gsDPPipeSync(), // 0x00007390
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00007398
	gsSPVertex(_syatekijyou_room_0_vertices_00007310, 8, 0), // 0x000073A0
	gsSPCullDisplayList(0, 7), // 0x000073A8
	gsDPPipeSync(), // 0x000073B0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000073B8
	gsDPPipeSync(), // 0x000073C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000073C8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000073D0
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00009CC0), // 0x000073D8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x000073E0
	gsDPLoadSync(), // 0x000073E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000073F0
	gsDPPipeSync(), // 0x000073F8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x00007400
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00007408
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00007410
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x00007418
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00007420
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00007428
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00007430
	gsSPVertex(_syatekijyou_room_0_vertices_00006F10, 4, 0), // 0x00007438
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007440
	gsDPPipeSync(), // 0x00007448
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00002540), // 0x00007450
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00007458
	gsDPLoadSync(), // 0x00007460
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007468
	gsDPPipeSync(), // 0x00007470
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00007478
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007480
	gsSPVertex(_syatekijyou_room_0_vertices_00006F50, 12, 0), // 0x00007488
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007490
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007498
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000074A0
	gsDPPipeSync(), // 0x000074A8
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000039C0), // 0x000074B0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 4, 0), // 0x000074B8
	gsDPLoadSync(), // 0x000074C0
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x000074C8
	gsDPPipeSync(), // 0x000074D0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 6, 0, 2, 4, 0), // 0x000074D8
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x000074E0
	gsSPVertex(_syatekijyou_room_0_vertices_00007010, 4, 0), // 0x000074E8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000074F0
	gsDPPipeSync(), // 0x000074F8
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_0000ACC0), // 0x00007500
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00007508
	gsDPLoadSync(), // 0x00007510
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00007518
	gsDPPipeSync(), // 0x00007520
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00007528
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007530
	gsSPVertex(_syatekijyou_room_0_vertices_00007050, 4, 0), // 0x00007538
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007540
	gsSPVertex(_syatekijyou_room_0_vertices_00007090, 4, 0), // 0x00007548
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007550
	gsDPPipeSync(), // 0x00007558
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00003740), // 0x00007560
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 4, 0, 2, 5, 0), // 0x00007568
	gsDPLoadSync(), // 0x00007570
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00007578
	gsDPPipeSync(), // 0x00007580
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 4, 0, 0, 0, 2, 4, 0, 2, 5, 0), // 0x00007588
	gsDPSetTileSize(0, 0, 0, 124, 60), // 0x00007590
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x00007598
	gsSPVertex(_syatekijyou_room_0_vertices_000070D0, 16, 0), // 0x000075A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000075A8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000075B0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000075B8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000075C0
	gsDPPipeSync(), // 0x000075C8
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00009CC0), // 0x000075D0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 6, 0), // 0x000075D8
	gsDPLoadSync(), // 0x000075E0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000075E8
	gsDPPipeSync(), // 0x000075F0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_4b, 4, 0, 0, 0, 2, 6, 0, 2, 6, 0), // 0x000075F8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00007600
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00007608
	gsSPVertex(_syatekijyou_room_0_vertices_000071D0, 4, 0), // 0x00007610
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007618
	gsDPPipeSync(), // 0x00007620
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_00002540), // 0x00007628
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00007630
	gsDPLoadSync(), // 0x00007638
	gsDPLoadBlock(7, 0, 0, 255, 1024), // 0x00007640
	gsDPPipeSync(), // 0x00007648
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00007650
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00007658
	gsSPVertex(_syatekijyou_room_0_vertices_00007210, 12, 0), // 0x00007660
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00007668
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00007670
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00007678
	gsDPPipeSync(), // 0x00007680
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _syatekijyou_scene_tex_000039C0), // 0x00007688
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 6, 0, 2, 4, 0), // 0x00007690
	gsDPLoadSync(), // 0x00007698
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x000076A0
	gsDPPipeSync(), // 0x000076A8
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, 0, 0, 2, 6, 0, 2, 4, 0), // 0x000076B0
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x000076B8
	gsSPVertex(_syatekijyou_room_0_vertices_000072D0, 4, 0), // 0x000076C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000076C8
	gsSPEndDisplayList(), // 0x000076D0
};

Gfx _syatekijyou_room_0_dlist_000076D8[] =
{
	gsSPDisplayList(_syatekijyou_room_0_dlist_00006AF0), // 0x000076D8
	gsSPDisplayList(_syatekijyou_room_0_dlist_00007390), // 0x000076E0
	gsSPEndDisplayList(), // 0x000076E8
};


