#include <ultra64.h>
#include <z64.h>
#include "jyasinzou_room_6.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "jyasinzou_scene.h"



SCmdEchoSettings _jyasinzou_room_6_set0000_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0000
SCmdRoomBehavior _jyasinzou_room_6_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _jyasinzou_room_6_set0000_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0010
SCmdTimeSettings _jyasinzou_room_6_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _jyasinzou_room_6_set0000_cmd04 = { 0x0A, 0, (u32)&_jyasinzou_room_6_meshHeader_000000E0 }; // 0x0020
SCmdObjectList _jyasinzou_room_6_set0000_cmd05 = { 0x0B, 0x0A, (u32)_jyasinzou_room_6_objectList_00000040 }; // 0x0028
SCmdActorList _jyasinzou_room_6_set0000_cmd06 = { 0x01, 0x08, (u32)_jyasinzou_room_6_actorList_00000054 }; // 0x0030
SCmdEndMarker _jyasinzou_room_6_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _jyasinzou_room_6_objectList_00000040[] = 
{
	OBJECT_JYA_OBJ,
	OBJECT_JYA_DOOR,
	OBJECT_BOMBIWA,
	OBJECT_BOX,
	OBJECT_SIOFUKI,
	OBJECT_MAMENOKI,
	OBJECT_D_HSBLOCK,
	OBJECT_BW,
	OBJECT_NB,
	OBJECT_GI_HEART,
};

ActorEntry _jyasinzou_room_6_actorList_00000054[8] = 
{
	{ ACTOR_OBJ_HSBLOCK, 0, 442, -108, 0, 0, 0, 0xFFC2 }, //0x00000054 
	{ ACTOR_OBJ_OSHIHIKI, 540, 413, -261, 0, 0, 0, 0x09C3 }, //0x00000064 
	{ ACTOR_OBJ_OSHIHIKI, 540, 213, -461, 0, 0, 0, 0x09C7 }, //0x00000074 
	{ ACTOR_OBJ_BLOCKSTOP, 540, 213, -461, 0, 0, 0, 0x0009 }, //0x00000084 
	{ ACTOR_BG_JYA_BLOCK, 540, 413, -261, 0, 0, 0, 0x0009 }, //0x00000094 
	{ ACTOR_OBJ_SWITCH, 540, 347, -559, 0, 0, 0, 0x0A02 }, //0x000000A4 
	{ ACTOR_OBJ_OSHIHIKI, 540, 213, -61, 0, 0, 0, 0x3FC3 }, //0x000000B4 
	{ ACTOR_EN_BOX, 58, 556, -411, 0, 0, 10, 0x885C }, //0x000000C4 
};

static u32 padD4 = 0;
static u32 padD8 = 0;
static u32 padDC = 0;

MeshHeader2 _jyasinzou_room_6_meshHeader_000000E0 = { { 2 }, 0x07, (u32)&_jyasinzou_room_6_meshDListEntry_000000EC, (u32)&(_jyasinzou_room_6_meshDListEntry_000000EC) + sizeof(_jyasinzou_room_6_meshDListEntry_000000EC) };

MeshEntry2 _jyasinzou_room_6_meshDListEntry_000000EC[7] = 
{
	{ 60, 493, -640, 100, (u32)_jyasinzou_room_6_dlist_00000340, 0 },
	{ 270, 451, -61, 416, (u32)_jyasinzou_room_6_dlist_000014D0, 0 },
	{ 270, 413, -261, 516, (u32)_jyasinzou_room_6_dlist_00001EC8, 0 },
	{ 0, -50, -61, 244, (u32)_jyasinzou_room_6_dlist_00002420, 0 },
	{ 220, 513, -461, 142, (u32)_jyasinzou_room_6_dlist_00002950, 0 },
	{ 200, 513, -406, 357, (u32)_jyasinzou_room_6_dlist_00000EB0, 0 },
	{ 300, 413, -296, 517, (u32)_jyasinzou_room_6_dlist_00000908, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

static u8 unaccounted0160[] = 
{
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xE0, 0x01, 0x01, 0x00, 0x00, 0x03, 0x00, 0x01, 0x98, 
	0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFC, 0x00, 0x3C, 0x06, 0x07, 0xFE, 0xCA, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xE0, 0x01, 0x01, 0x00, 0x00, 0x03, 0x00, 0x01, 0xE8, 
	0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFC, 0x00, 0x3C, 0x06, 0x07, 0xFE, 0xCA, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

Vtx_t _jyasinzou_room_6_vertices_00000200[12] = 
{
	 { 120, 573, -650, 0, 341, 0, 81, 72, 55, 255 }, // 0x00000200
	 { 120, 573, -630, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000210
	 { 0, 573, -630, 0, 0, 2048, 81, 72, 55, 255 }, // 0x00000220
	 { 0, 573, -650, 0, 341, 2048, 81, 72, 55, 255 }, // 0x00000230
	 { 120, 413, -650, 0, 341, 2048, 52, 49, 38, 255 }, // 0x00000240
	 { 120, 413, -630, 0, 683, 2048, 52, 49, 38, 255 }, // 0x00000250
	 { 120, 573, -630, 0, 683, -683, 81, 72, 55, 255 }, // 0x00000260
	 { 120, 573, -650, 0, 341, -683, 81, 72, 55, 255 }, // 0x00000270
	 { 0, 573, -650, 0, 341, -683, 81, 72, 55, 255 }, // 0x00000280
	 { 0, 573, -630, 0, 0, -683, 81, 72, 55, 255 }, // 0x00000290
	 { 0, 413, -630, 0, 0, 2048, 52, 49, 38, 255 }, // 0x000002A0
	 { 0, 413, -650, 0, 341, 2048, 52, 49, 38, 255 }, // 0x000002B0
};

Vtx_t _jyasinzou_room_6_vertices_000002C0[8] = 
{
	 { 0, 413, -650, 0, 0, 0, 0, 0, 0, 0 }, // 0x000002C0
	 { 120, 413, -650, 0, 0, 0, 0, 0, 0, 0 }, // 0x000002D0
	 { 0, 573, -650, 0, 0, 0, 0, 0, 0, 0 }, // 0x000002E0
	 { 120, 573, -650, 0, 0, 0, 0, 0, 0, 0 }, // 0x000002F0
	 { 0, 413, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000300
	 { 120, 413, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000310
	 { 0, 573, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000320
	 { 120, 573, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000330
};

Gfx _jyasinzou_room_6_dlist_00000340[] =
{
	gsDPPipeSync(), // 0x00000340
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000348
	gsSPVertex(_jyasinzou_room_6_vertices_000002C0, 8, 0), // 0x00000350
	gsSPCullDisplayList(0, 7), // 0x00000358
	gsDPPipeSync(), // 0x00000360
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000368
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000370
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000378
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000380
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000388
	gsDPLoadSync(), // 0x00000390
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000398
	gsDPPipeSync(), // 0x000003A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000003A8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000003B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000003B8
	gsDPTileSync(), // 0x000003C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000003C8
	gsDPLoadSync(), // 0x000003D0
	gsDPLoadTLUTCmd(7, 15), // 0x000003D8
	gsDPPipeSync(), // 0x000003E0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000003E8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000003F0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000003F8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000400
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000408
	gsSPVertex(_jyasinzou_room_6_vertices_00000200, 12, 0), // 0x00000410
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000418
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000420
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000428
	gsSPEndDisplayList(), // 0x00000430
};

Vtx_t _jyasinzou_room_6_vertices_00000438[18] = 
{
	 { 640, 613, -561, 0, 0, 0, 35, 31, 25, 255 }, // 0x00000438
	 { 640, 513, -461, 0, 1280, 1280, 81, 72, 55, 255 }, // 0x00000448
	 { 640, 513, -61, 0, 6400, 1280, 81, 72, 55, 255 }, // 0x00000458
	 { 640, 613, 39, 0, 7680, 0, 35, 31, 25, 255 }, // 0x00000468
	 { 640, 413, -561, 0, 0, 2560, 52, 49, 38, 255 }, // 0x00000478
	 { 640, 413, -461, 0, 1280, 2560, 69, 62, 48, 255 }, // 0x00000488
	 { 640, 413, -361, 0, 2560, 2560, 52, 49, 38, 255 }, // 0x00000498
	 { 640, 413, -161, 0, 5120, 2560, 52, 49, 38, 255 }, // 0x000004A8
	 { 640, 413, -61, 0, 6400, 2560, 69, 62, 48, 255 }, // 0x000004B8
	 { 640, 413, 39, 0, 7680, 2560, 52, 49, 38, 255 }, // 0x000004C8
	 { -40, 413, -630, 0, 0, 2560, 52, 49, 38, 255 }, // 0x000004D8
	 { 0, 573, -630, 0, 512, 512, 100, 89, 67, 255 }, // 0x000004E8
	 { -40, 613, -630, 0, 0, 0, 35, 31, 25, 255 }, // 0x000004F8
	 { 0, 413, -630, 0, 512, 2560, 52, 49, 38, 255 }, // 0x00000508
	 { 120, 413, -630, 0, 2048, 2560, 52, 49, 38, 255 }, // 0x00000518
	 { 160, 413, -630, 0, 2560, 2560, 52, 49, 38, 255 }, // 0x00000528
	 { 120, 573, -630, 0, 2048, 512, 100, 89, 67, 255 }, // 0x00000538
	 { 160, 613, -630, 0, 2560, 0, 35, 31, 25, 255 }, // 0x00000548
};

Vtx_t _jyasinzou_room_6_vertices_00000558[4] = 
{
	 { 440, 413, -561, 0, 2458, 0, 52, 49, 38, 255 }, // 0x00000558
	 { 440, 413, -361, 0, 0, 0, 69, 62, 48, 255 }, // 0x00000568
	 { 440, 213, -361, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00000578
	 { 440, 213, -561, 0, 2458, 1024, 5, 5, 5, 255 }, // 0x00000588
};

Vtx_t _jyasinzou_room_6_vertices_00000598[9] = 
{
	 { 640, 213, -561, 0, 0, 5120, 5, 5, 5, 255 }, // 0x00000598
	 { 640, 413, -461, 0, 1280, 2560, 69, 62, 48, 255 }, // 0x000005A8
	 { 640, 413, -561, 0, 0, 2560, 52, 49, 38, 255 }, // 0x000005B8
	 { 640, 213, -361, 0, 2560, 5120, 5, 5, 5, 255 }, // 0x000005C8
	 { 640, 413, -361, 0, 2560, 2560, 52, 49, 38, 255 }, // 0x000005D8
	 { 440, 213, -561, 0, -512, 4608, 5, 5, 5, 255 }, // 0x000005E8
	 { 640, 213, -561, 0, 2048, 4608, 5, 5, 5, 255 }, // 0x000005F8
	 { 640, 413, -561, 0, 2048, 2048, 52, 49, 38, 255 }, // 0x00000608
	 { 440, 413, -561, 0, -512, 2048, 52, 49, 38, 255 }, // 0x00000618
};

Vtx_t _jyasinzou_room_6_vertices_00000628[4] = 
{
	 { 440, 213, -161, 0, 1638, 1024, 5, 5, 5, 255 }, // 0x00000628
	 { 640, 213, -161, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00000638
	 { 640, 413, -161, 0, 0, 0, 52, 49, 38, 255 }, // 0x00000648
	 { 440, 413, -161, 0, 1638, 0, 69, 62, 48, 255 }, // 0x00000658
};

Vtx_t _jyasinzou_room_6_vertices_00000668[34] = 
{
	 { 440, 413, 39, 0, 2560, 2560, 69, 62, 48, 255 }, // 0x00000668
	 { 640, 413, 39, 0, 0, 2560, 52, 49, 38, 255 }, // 0x00000678
	 { 640, 213, 39, 0, 0, 5120, 5, 5, 5, 255 }, // 0x00000688
	 { 440, 213, 39, 0, 2560, 5120, 5, 5, 5, 255 }, // 0x00000698
	 { 640, 213, -161, 0, 5120, 5120, 5, 5, 5, 255 }, // 0x000006A8
	 { 640, 413, -61, 0, 6400, 2560, 69, 62, 48, 255 }, // 0x000006B8
	 { 640, 413, -161, 0, 5120, 2560, 52, 49, 38, 255 }, // 0x000006C8
	 { 640, 213, 39, 0, 7680, 5120, 5, 5, 5, 255 }, // 0x000006D8
	 { 640, 413, 39, 0, 7680, 2560, 52, 49, 38, 255 }, // 0x000006E8
	 { 160, 613, -561, 0, 878, 0, 35, 31, 25, 255 }, // 0x000006F8
	 { 160, 613, -630, 0, 0, 0, 35, 31, 25, 255 }, // 0x00000708
	 { 160, 413, -630, 0, 0, 2560, 52, 49, 38, 255 }, // 0x00000718
	 { 160, 413, -561, 0, 878, 2560, 52, 49, 38, 255 }, // 0x00000728
	 { -40, 613, -561, 0, 7680, 1280, 52, 49, 38, 255 }, // 0x00000738
	 { -40, 613, -630, 0, 8558, 1280, 35, 31, 25, 255 }, // 0x00000748
	 { 160, 613, -630, 0, 8558, -1280, 35, 31, 25, 255 }, // 0x00000758
	 { 160, 613, -561, 0, 7680, -1280, 35, 31, 25, 255 }, // 0x00000768
	 { 160, 613, -561, 0, -4096, -512, 35, 31, 25, 255 }, // 0x00000778
	 { 400, 513, -561, 0, -1024, 768, 81, 72, 55, 255 }, // 0x00000788
	 { 640, 613, -561, 0, 2048, -512, 35, 31, 25, 255 }, // 0x00000798
	 { 640, 413, -561, 0, 2048, 2048, 52, 49, 38, 255 }, // 0x000007A8
	 { 160, 413, -561, 0, -4096, 2048, 52, 49, 38, 255 }, // 0x000007B8
	 { 160, 613, -361, 0, 5120, -1280, 52, 49, 38, 255 }, // 0x000007C8
	 { -40, 613, -361, 0, 5120, 1280, 69, 62, 48, 255 }, // 0x000007D8
	 { 160, 613, -461, 0, 6400, -1280, 52, 49, 38, 255 }, // 0x000007E8
	 { 440, 613, -361, 0, 5120, -4864, 35, 31, 25, 255 }, // 0x000007F8
	 { 540, 613, -461, 0, 6400, -6144, 69, 62, 48, 255 }, // 0x00000808
	 { 640, 613, -561, 0, 7680, -7424, 35, 31, 25, 255 }, // 0x00000818
	 { 440, 613, -161, 0, 2560, -4864, 35, 31, 25, 255 }, // 0x00000828
	 { 540, 613, -61, 0, 1280, -6144, 69, 62, 48, 255 }, // 0x00000838
	 { 640, 613, 39, 0, 0, -7424, 35, 31, 25, 255 }, // 0x00000848
	 { 640, 413, 39, 0, 7168, 2048, 52, 49, 38, 255 }, // 0x00000858
	 { 640, 613, 39, 0, 7168, -512, 35, 31, 25, 255 }, // 0x00000868
	 { 640, 513, -61, 0, 5248, 96, 81, 72, 55, 255 }, // 0x00000878
};

Vtx_t _jyasinzou_room_6_vertices_00000888[8] = 
{
	 { -40, 213, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000888
	 { 640, 213, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000898
	 { -40, 613, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008A8
	 { 640, 613, -630, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008B8
	 { -40, 213, 39, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008C8
	 { 640, 213, 39, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008D8
	 { -40, 613, 39, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008E8
	 { 640, 613, 39, 0, 0, 0, 0, 0, 0, 0 }, // 0x000008F8
};

Gfx _jyasinzou_room_6_dlist_00000908[] =
{
	gsDPPipeSync(), // 0x00000908
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000910
	gsSPVertex(_jyasinzou_room_6_vertices_00000888, 8, 0), // 0x00000918
	gsSPCullDisplayList(0, 7), // 0x00000920
	gsDPPipeSync(), // 0x00000928
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000930
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000938
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000940
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000948
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000950
	gsDPLoadSync(), // 0x00000958
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000960
	gsDPPipeSync(), // 0x00000968
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000970
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000978
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000980
	gsDPTileSync(), // 0x00000988
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000990
	gsDPLoadSync(), // 0x00000998
	gsDPLoadTLUTCmd(7, 15), // 0x000009A0
	gsDPPipeSync(), // 0x000009A8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000009B0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000009B8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000009C0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000009C8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000009D0
	gsSPVertex(_jyasinzou_room_6_vertices_00000438, 18, 0), // 0x000009D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000009E0
	gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0), // 0x000009E8
	gsSP2Triangles(5, 6, 1, 0, 6, 7, 2, 0), // 0x000009F0
	gsSP2Triangles(6, 2, 1, 0, 7, 8, 2, 0), // 0x000009F8
	gsSP2Triangles(8, 9, 2, 0, 10, 11, 12, 0), // 0x00000A00
	gsSP2Triangles(10, 13, 11, 0, 14, 15, 16, 0), // 0x00000A08
	gsSP2Triangles(15, 17, 16, 0, 17, 11, 16, 0), // 0x00000A10
	gsSP1Triangle(17, 12, 11, 0), // 0x00000A18
	gsDPPipeSync(), // 0x00000A20
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000037E8), // 0x00000A28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000A30
	gsDPLoadSync(), // 0x00000A38
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000A40
	gsDPPipeSync(), // 0x00000A48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000A50
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000A58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00000A60
	gsDPTileSync(), // 0x00000A68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000A70
	gsDPLoadSync(), // 0x00000A78
	gsDPLoadTLUTCmd(7, 255), // 0x00000A80
	gsDPPipeSync(), // 0x00000A88
	gsSPVertex(_jyasinzou_room_6_vertices_00000558, 4, 0), // 0x00000A90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000A98
	gsDPPipeSync(), // 0x00000AA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000AA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000AB0
	gsDPLoadSync(), // 0x00000AB8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000AC0
	gsDPPipeSync(), // 0x00000AC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000AD0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000AD8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000AE0
	gsDPTileSync(), // 0x00000AE8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000AF0
	gsDPLoadSync(), // 0x00000AF8
	gsDPLoadTLUTCmd(7, 15), // 0x00000B00
	gsDPPipeSync(), // 0x00000B08
	gsSPVertex(_jyasinzou_room_6_vertices_00000598, 9, 0), // 0x00000B10
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00000B18
	gsSP2Triangles(3, 4, 1, 0, 5, 6, 7, 0), // 0x00000B20
	gsSP1Triangle(5, 7, 8, 0), // 0x00000B28
	gsDPPipeSync(), // 0x00000B30
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000037E8), // 0x00000B38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000B40
	gsDPLoadSync(), // 0x00000B48
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000B50
	gsDPPipeSync(), // 0x00000B58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000B60
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000B68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00000B70
	gsDPTileSync(), // 0x00000B78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000B80
	gsDPLoadSync(), // 0x00000B88
	gsDPLoadTLUTCmd(7, 255), // 0x00000B90
	gsDPPipeSync(), // 0x00000B98
	gsSPVertex(_jyasinzou_room_6_vertices_00000628, 4, 0), // 0x00000BA0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000BA8
	gsDPPipeSync(), // 0x00000BB0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000BB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000BC0
	gsDPLoadSync(), // 0x00000BC8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000BD0
	gsDPPipeSync(), // 0x00000BD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000BE0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000BE8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000BF0
	gsDPTileSync(), // 0x00000BF8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000C00
	gsDPLoadSync(), // 0x00000C08
	gsDPLoadTLUTCmd(7, 15), // 0x00000C10
	gsDPPipeSync(), // 0x00000C18
	gsSPVertex(_jyasinzou_room_6_vertices_00000668, 32, 0), // 0x00000C20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000C28
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0), // 0x00000C30
	gsSP2Triangles(7, 8, 5, 0, 9, 10, 11, 0), // 0x00000C38
	gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0), // 0x00000C40
	gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0), // 0x00000C48
	gsSP2Triangles(18, 20, 19, 0, 17, 21, 18, 0), // 0x00000C50
	gsSP2Triangles(21, 20, 18, 0, 22, 23, 24, 0), // 0x00000C58
	gsSP2Triangles(23, 13, 24, 0, 25, 22, 24, 0), // 0x00000C60
	gsSP2Triangles(24, 13, 16, 0, 25, 24, 26, 0), // 0x00000C68
	gsSP2Triangles(24, 27, 26, 0, 24, 16, 27, 0), // 0x00000C70
	gsSP2Triangles(28, 25, 26, 0, 28, 26, 29, 0), // 0x00000C78
	gsSP2Triangles(26, 27, 30, 0, 26, 30, 29, 0), // 0x00000C80
	gsSPVertex(_jyasinzou_room_6_vertices_00000858, 3, 0), // 0x00000C88
	gsSP1Triangle(0, 1, 2, 0), // 0x00000C90
	gsSPEndDisplayList(), // 0x00000C98
};

Vtx_t _jyasinzou_room_6_vertices_00000CA0[15] = 
{
	 { 440, 613, -361, 0, 2560, -512, 35, 31, 25, 255 }, // 0x00000CA0
	 { 440, 513, -261, 0, 1280, 768, 69, 62, 48, 255 }, // 0x00000CB0
	 { 440, 413, -361, 0, 2560, 2048, 52, 49, 38, 255 }, // 0x00000CC0
	 { 440, 613, -161, 0, 0, -512, 35, 31, 25, 255 }, // 0x00000CD0
	 { 440, 413, -161, 0, 0, 2048, 35, 31, 25, 255 }, // 0x00000CE0
	 { -40, 413, -361, 0, 2048, 2560, 52, 49, 38, 255 }, // 0x00000CF0
	 { 200, 513, -361, 0, -1024, 1280, 100, 89, 67, 255 }, // 0x00000D00
	 { 440, 413, -361, 0, -4096, 2560, 52, 49, 38, 255 }, // 0x00000D10
	 { 440, 613, -361, 0, -4096, 0, 35, 31, 25, 255 }, // 0x00000D20
	 { -40, 613, -361, 0, 2048, 0, 69, 62, 48, 255 }, // 0x00000D30
	 { -40, 413, -630, 0, 2048, 2048, 52, 49, 38, 255 }, // 0x00000D40
	 { -40, 513, -496, 0, 329, 768, 100, 89, 67, 255 }, // 0x00000D50
	 { -40, 413, -361, 0, -1390, 2048, 52, 49, 38, 255 }, // 0x00000D60
	 { -40, 613, -361, 0, -1390, -512, 69, 62, 48, 255 }, // 0x00000D70
	 { -40, 613, -630, 0, 2048, -512, 35, 31, 25, 255 }, // 0x00000D80
};

Vtx_t _jyasinzou_room_6_vertices_00000D90[10] = 
{
	 { -40, 413, -361, 0, 0, 0, 52, 49, 38, 255 }, // 0x00000D90
	 { 60, 413, -461, 0, 512, 1024, 115, 102, 78, 255 }, // 0x00000DA0
	 { -40, 413, -561, 0, 1536, 512, 52, 49, 38, 255 }, // 0x00000DB0
	 { 340, 413, -461, 0, -205, 3174, 81, 72, 55, 255 }, // 0x00000DC0
	 { 440, 413, -361, 0, -1229, 3686, 35, 31, 25, 255 }, // 0x00000DD0
	 { 440, 413, -561, 0, 307, 4198, 52, 49, 38, 255 }, // 0x00000DE0
	 { 160, 413, -561, 0, 1024, 2048, 69, 62, 48, 255 }, // 0x00000DF0
	 { 160, 413, -650, 0, 1704, 2275, 35, 31, 25, 255 }, // 0x00000E00
	 { 60, 413, -650, 0, 1960, 1507, 35, 31, 25, 255 }, // 0x00000E10
	 { -40, 413, -650, 0, 2216, 739, 35, 31, 25, 255 }, // 0x00000E20
};

Vtx_t _jyasinzou_room_6_vertices_00000E30[8] = 
{
	 { -12, 413, -726, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E30
	 { 569, 413, -515, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E40
	 { -12, 613, -726, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E50
	 { 569, 613, -515, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E60
	 { -141, 413, -373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E70
	 { 440, 413, -161, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E80
	 { -141, 613, -373, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000E90
	 { 440, 613, -161, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000EA0
};

Gfx _jyasinzou_room_6_dlist_00000EB0[] =
{
	gsDPPipeSync(), // 0x00000EB0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000EB8
	gsSPVertex(_jyasinzou_room_6_vertices_00000E30, 8, 0), // 0x00000EC0
	gsSPCullDisplayList(0, 7), // 0x00000EC8
	gsDPPipeSync(), // 0x00000ED0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000ED8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000EE0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000EE8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000EF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000EF8
	gsDPLoadSync(), // 0x00000F00
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000F08
	gsDPPipeSync(), // 0x00000F10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000F18
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000F20
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000F28
	gsDPTileSync(), // 0x00000F30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000F38
	gsDPLoadSync(), // 0x00000F40
	gsDPLoadTLUTCmd(7, 15), // 0x00000F48
	gsDPPipeSync(), // 0x00000F50
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000F58
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000F60
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000F68
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000F70
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000F78
	gsSPVertex(_jyasinzou_room_6_vertices_00000CA0, 15, 0), // 0x00000F80
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00000F88
	gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0), // 0x00000F90
	gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0), // 0x00000F98
	gsSP2Triangles(5, 9, 6, 0, 9, 8, 6, 0), // 0x00000FA0
	gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0), // 0x00000FA8
	gsSP2Triangles(10, 14, 11, 0, 14, 13, 11, 0), // 0x00000FB0
	gsDPPipeSync(), // 0x00000FB8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000033E8), // 0x00000FC0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000FC8
	gsDPLoadSync(), // 0x00000FD0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000FD8
	gsDPPipeSync(), // 0x00000FE0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000FE8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000FF0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00000FF8
	gsDPTileSync(), // 0x00001000
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001008
	gsDPLoadSync(), // 0x00001010
	gsDPLoadTLUTCmd(7, 255), // 0x00001018
	gsDPPipeSync(), // 0x00001020
	gsSPVertex(_jyasinzou_room_6_vertices_00000D90, 10, 0), // 0x00001028
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001030
	gsSP2Triangles(0, 4, 3, 0, 4, 5, 3, 0), // 0x00001038
	gsSP2Triangles(5, 6, 3, 0, 6, 1, 3, 0), // 0x00001040
	gsSP2Triangles(6, 7, 1, 0, 7, 8, 1, 0), // 0x00001048
	gsSP2Triangles(8, 9, 1, 0, 9, 2, 1, 0), // 0x00001050
	gsSPEndDisplayList(), // 0x00001058
};

Vtx_t _jyasinzou_room_6_vertices_00001060[8] = 
{
	 { 40, 463, -21, 0, 205, 102, 100, 89, 67, 255 }, // 0x00001060
	 { 180, 463, 39, 0, 102, 1331, 52, 49, 38, 255 }, // 0x00001070
	 { 180, 463, -161, 0, 1638, 819, 52, 49, 38, 255 }, // 0x00001080
	 { 40, 463, -101, 0, 819, -102, 100, 89, 67, 255 }, // 0x00001090
	 { -100, 463, -161, 0, 922, -1331, 81, 72, 55, 255 }, // 0x000010A0
	 { -100, 463, 39, 0, -614, -819, 52, 49, 38, 255 }, // 0x000010B0
	 { -40, 463, -21, 0, 0, -512, 100, 89, 67, 255 }, // 0x000010C0
	 { -40, 463, -101, 0, 614, -717, 100, 89, 67, 255 }, // 0x000010D0
};

Vtx_t _jyasinzou_room_6_vertices_000010E0[6] = 
{
	 { -100, 463, -161, 0, 2048, 2048, 52, 49, 38, 255 }, // 0x000010E0
	 { -100, 543, -61, 0, 768, 1024, 81, 72, 55, 255 }, // 0x000010F0
	 { -100, 463, 39, 0, -512, 2048, 52, 49, 38, 255 }, // 0x00001100
	 { -100, 613, 39, 0, -512, 0, 35, 31, 25, 255 }, // 0x00001110
	 { -100, 543, -161, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x00001120
	 { -100, 613, -161, 0, 2048, 0, 35, 31, 25, 255 }, // 0x00001130
};

Vtx_t _jyasinzou_room_6_vertices_00001140[4] = 
{
	 { -40, 463, -21, 0, 0, 0, 100, 89, 67, 255 }, // 0x00001140
	 { -40, 403, -21, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00001150
	 { -40, 403, -101, 0, 1365, 1024, 81, 72, 55, 255 }, // 0x00001160
	 { -40, 463, -101, 0, 1365, 0, 100, 89, 67, 255 }, // 0x00001170
};

Vtx_t _jyasinzou_room_6_vertices_00001180[4] = 
{
	 { -40, 403, -21, 0, 0, 0, 81, 72, 55, 255 }, // 0x00001180
	 { -40, 290, -21, 0, 0, 1934, 52, 49, 38, 255 }, // 0x00001190
	 { -40, 290, -101, 0, 1365, 1934, 52, 49, 38, 255 }, // 0x000011A0
	 { -40, 403, -101, 0, 1365, 0, 81, 72, 55, 255 }, // 0x000011B0
};

Vtx_t _jyasinzou_room_6_vertices_000011C0[4] = 
{
	 { 40, 463, -21, 0, 0, 0, 100, 89, 67, 255 }, // 0x000011C0
	 { 40, 403, -21, 0, 0, 1024, 81, 72, 55, 255 }, // 0x000011D0
	 { -40, 403, -21, 0, 1365, 1024, 81, 72, 55, 255 }, // 0x000011E0
	 { -40, 463, -21, 0, 1365, 0, 100, 89, 67, 255 }, // 0x000011F0
};

Vtx_t _jyasinzou_room_6_vertices_00001200[4] = 
{
	 { 40, 403, -21, 0, 0, 0, 81, 72, 55, 255 }, // 0x00001200
	 { 40, 290, -21, 0, 0, 1934, 52, 49, 38, 255 }, // 0x00001210
	 { -40, 290, -21, 0, 1365, 1934, 52, 49, 38, 255 }, // 0x00001220
	 { -40, 403, -21, 0, 1365, 0, 81, 72, 55, 255 }, // 0x00001230
};

Vtx_t _jyasinzou_room_6_vertices_00001240[4] = 
{
	 { 40, 463, -101, 0, 0, 0, 100, 89, 67, 255 }, // 0x00001240
	 { 40, 403, -101, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00001250
	 { 40, 403, -21, 0, 1365, 1024, 81, 72, 55, 255 }, // 0x00001260
	 { 40, 463, -21, 0, 1365, 0, 100, 89, 67, 255 }, // 0x00001270
};

Vtx_t _jyasinzou_room_6_vertices_00001280[4] = 
{
	 { 40, 403, -101, 0, 0, 0, 81, 72, 55, 255 }, // 0x00001280
	 { 40, 290, -101, 0, 0, 1934, 52, 49, 38, 255 }, // 0x00001290
	 { 40, 290, -21, 0, 1365, 1934, 52, 49, 38, 255 }, // 0x000012A0
	 { 40, 403, -21, 0, 1365, 0, 81, 72, 55, 255 }, // 0x000012B0
};

Vtx_t _jyasinzou_room_6_vertices_000012C0[4] = 
{
	 { -40, 463, -101, 0, 0, 0, 100, 89, 67, 255 }, // 0x000012C0
	 { -40, 403, -101, 0, 0, 1024, 81, 72, 55, 255 }, // 0x000012D0
	 { 40, 403, -101, 0, 1365, 1024, 81, 72, 55, 255 }, // 0x000012E0
	 { 40, 463, -101, 0, 1365, 0, 100, 89, 67, 255 }, // 0x000012F0
};

Vtx_t _jyasinzou_room_6_vertices_00001300[4] = 
{
	 { -40, 403, -101, 0, 0, 2048, 81, 72, 55, 255 }, // 0x00001300
	 { -40, 290, -101, 0, 1934, 2048, 52, 49, 38, 255 }, // 0x00001310
	 { 40, 290, -101, 0, 1934, 683, 52, 49, 38, 255 }, // 0x00001320
	 { 40, 403, -101, 0, 0, 683, 81, 72, 55, 255 }, // 0x00001330
};

Vtx_t _jyasinzou_room_6_vertices_00001340[4] = 
{
	 { -100, 463, -161, 0, 922, -1331, 81, 72, 55, 255 }, // 0x00001340
	 { -40, 463, -101, 0, 614, -717, 100, 89, 67, 255 }, // 0x00001350
	 { 40, 463, -101, 0, 819, -102, 100, 89, 67, 255 }, // 0x00001360
	 { 180, 463, -161, 0, 1638, 819, 52, 49, 38, 255 }, // 0x00001370
};

Vtx_t _jyasinzou_room_6_vertices_00001380[13] = 
{
	 { 440, 613, -161, 0, 2560, -4864, 35, 31, 25, 255 }, // 0x00001380
	 { 540, 613, -61, 0, 1280, -6144, 69, 62, 48, 255 }, // 0x00001390
	 { -100, 613, -61, 0, 1280, 2048, 52, 49, 38, 255 }, // 0x000013A0
	 { -100, 613, -161, 0, 2560, 2048, 35, 31, 25, 255 }, // 0x000013B0
	 { 640, 613, 39, 0, 0, -7424, 35, 31, 25, 255 }, // 0x000013C0
	 { -100, 613, 39, 0, 0, 2048, 35, 31, 25, 255 }, // 0x000013D0
	 { 180, 463, -161, 0, 3584, 1920, 52, 49, 38, 255 }, // 0x000013E0
	 { 170, 538, -161, 0, 3456, 960, 81, 72, 55, 255 }, // 0x000013F0
	 { -100, 463, -161, 0, 0, 1920, 52, 49, 38, 255 }, // 0x00001400
	 { 300, 413, -161, 0, 5120, 2560, 52, 49, 38, 255 }, // 0x00001410
	 { 440, 413, -161, 0, 6912, 2560, 52, 49, 38, 255 }, // 0x00001420
	 { 440, 613, -161, 0, 6912, 0, 35, 31, 25, 255 }, // 0x00001430
	 { -100, 613, -161, 0, 0, 0, 35, 31, 25, 255 }, // 0x00001440
};

Vtx_t _jyasinzou_room_6_vertices_00001450[8] = 
{
	 { -100, 290, -161, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001450
	 { 640, 290, -161, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001460
	 { -100, 613, -161, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001470
	 { 640, 613, -161, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001480
	 { -100, 290, 39, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001490
	 { 640, 290, 39, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014A0
	 { -100, 613, 39, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014B0
	 { 640, 613, 39, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014C0
};

Gfx _jyasinzou_room_6_dlist_000014D0[] =
{
	gsDPPipeSync(), // 0x000014D0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000014D8
	gsSPVertex(_jyasinzou_room_6_vertices_00001450, 8, 0), // 0x000014E0
	gsSPCullDisplayList(0, 7), // 0x000014E8
	gsDPPipeSync(), // 0x000014F0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000014F8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001500
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001508
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000033E8), // 0x00001510
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001518
	gsDPLoadSync(), // 0x00001520
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001528
	gsDPPipeSync(), // 0x00001530
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001538
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001540
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001548
	gsDPTileSync(), // 0x00001550
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001558
	gsDPLoadSync(), // 0x00001560
	gsDPLoadTLUTCmd(7, 255), // 0x00001568
	gsDPPipeSync(), // 0x00001570
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001578
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001580
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001588
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001590
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001598
	gsSPVertex(_jyasinzou_room_6_vertices_00001060, 8, 0), // 0x000015A0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000015A8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000015B0
	gsSP2Triangles(5, 1, 0, 0, 5, 0, 6, 0), // 0x000015B8
	gsDPPipeSync(), // 0x000015C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x000015C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000015D0
	gsDPLoadSync(), // 0x000015D8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000015E0
	gsDPPipeSync(), // 0x000015E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000015F0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000015F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001600
	gsDPTileSync(), // 0x00001608
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001610
	gsDPLoadSync(), // 0x00001618
	gsDPLoadTLUTCmd(7, 15), // 0x00001620
	gsDPPipeSync(), // 0x00001628
	gsSPVertex(_jyasinzou_room_6_vertices_000010E0, 6, 0), // 0x00001630
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001638
	gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0), // 0x00001640
	gsSP1Triangle(5, 3, 1, 0), // 0x00001648
	gsDPPipeSync(), // 0x00001650
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000037E8), // 0x00001658
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001660
	gsDPLoadSync(), // 0x00001668
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001670
	gsDPPipeSync(), // 0x00001678
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001680
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001688
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001690
	gsDPTileSync(), // 0x00001698
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000016A0
	gsDPLoadSync(), // 0x000016A8
	gsDPLoadTLUTCmd(7, 255), // 0x000016B0
	gsDPPipeSync(), // 0x000016B8
	gsSPVertex(_jyasinzou_room_6_vertices_00001140, 4, 0), // 0x000016C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000016C8
	gsDPPipeSync(), // 0x000016D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x000016D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000016E0
	gsDPLoadSync(), // 0x000016E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000016F0
	gsDPPipeSync(), // 0x000016F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001700
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001708
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001710
	gsDPTileSync(), // 0x00001718
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001720
	gsDPLoadSync(), // 0x00001728
	gsDPLoadTLUTCmd(7, 15), // 0x00001730
	gsDPPipeSync(), // 0x00001738
	gsSPVertex(_jyasinzou_room_6_vertices_00001180, 4, 0), // 0x00001740
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001748
	gsDPPipeSync(), // 0x00001750
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000037E8), // 0x00001758
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001760
	gsDPLoadSync(), // 0x00001768
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001770
	gsDPPipeSync(), // 0x00001778
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001780
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001788
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001790
	gsDPTileSync(), // 0x00001798
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000017A0
	gsDPLoadSync(), // 0x000017A8
	gsDPLoadTLUTCmd(7, 255), // 0x000017B0
	gsDPPipeSync(), // 0x000017B8
	gsSPVertex(_jyasinzou_room_6_vertices_000011C0, 4, 0), // 0x000017C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000017C8
	gsDPPipeSync(), // 0x000017D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x000017D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000017E0
	gsDPLoadSync(), // 0x000017E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000017F0
	gsDPPipeSync(), // 0x000017F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001800
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001808
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001810
	gsDPTileSync(), // 0x00001818
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001820
	gsDPLoadSync(), // 0x00001828
	gsDPLoadTLUTCmd(7, 15), // 0x00001830
	gsDPPipeSync(), // 0x00001838
	gsSPVertex(_jyasinzou_room_6_vertices_00001200, 4, 0), // 0x00001840
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001848
	gsDPPipeSync(), // 0x00001850
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000037E8), // 0x00001858
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001860
	gsDPLoadSync(), // 0x00001868
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001870
	gsDPPipeSync(), // 0x00001878
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001880
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001888
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001890
	gsDPTileSync(), // 0x00001898
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000018A0
	gsDPLoadSync(), // 0x000018A8
	gsDPLoadTLUTCmd(7, 255), // 0x000018B0
	gsDPPipeSync(), // 0x000018B8
	gsSPVertex(_jyasinzou_room_6_vertices_00001240, 4, 0), // 0x000018C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000018C8
	gsDPPipeSync(), // 0x000018D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x000018D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000018E0
	gsDPLoadSync(), // 0x000018E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000018F0
	gsDPPipeSync(), // 0x000018F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001900
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001908
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001910
	gsDPTileSync(), // 0x00001918
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001920
	gsDPLoadSync(), // 0x00001928
	gsDPLoadTLUTCmd(7, 15), // 0x00001930
	gsDPPipeSync(), // 0x00001938
	gsSPVertex(_jyasinzou_room_6_vertices_00001280, 4, 0), // 0x00001940
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001948
	gsDPPipeSync(), // 0x00001950
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000037E8), // 0x00001958
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001960
	gsDPLoadSync(), // 0x00001968
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001970
	gsDPPipeSync(), // 0x00001978
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001980
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001988
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001990
	gsDPTileSync(), // 0x00001998
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000019A0
	gsDPLoadSync(), // 0x000019A8
	gsDPLoadTLUTCmd(7, 255), // 0x000019B0
	gsDPPipeSync(), // 0x000019B8
	gsSPVertex(_jyasinzou_room_6_vertices_000012C0, 4, 0), // 0x000019C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000019C8
	gsDPPipeSync(), // 0x000019D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x000019D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000019E0
	gsDPLoadSync(), // 0x000019E8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000019F0
	gsDPPipeSync(), // 0x000019F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001A00
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001A08
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001A10
	gsDPTileSync(), // 0x00001A18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001A20
	gsDPLoadSync(), // 0x00001A28
	gsDPLoadTLUTCmd(7, 15), // 0x00001A30
	gsDPPipeSync(), // 0x00001A38
	gsSPVertex(_jyasinzou_room_6_vertices_00001300, 4, 0), // 0x00001A40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001A48
	gsDPPipeSync(), // 0x00001A50
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000033E8), // 0x00001A58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001A60
	gsDPLoadSync(), // 0x00001A68
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001A70
	gsDPPipeSync(), // 0x00001A78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001A80
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001A88
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001A90
	gsDPTileSync(), // 0x00001A98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001AA0
	gsDPLoadSync(), // 0x00001AA8
	gsDPLoadTLUTCmd(7, 255), // 0x00001AB0
	gsDPPipeSync(), // 0x00001AB8
	gsSPVertex(_jyasinzou_room_6_vertices_00001340, 4, 0), // 0x00001AC0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001AC8
	gsDPPipeSync(), // 0x00001AD0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00001AD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001AE0
	gsDPLoadSync(), // 0x00001AE8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001AF0
	gsDPPipeSync(), // 0x00001AF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001B00
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001B08
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001B10
	gsDPTileSync(), // 0x00001B18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001B20
	gsDPLoadSync(), // 0x00001B28
	gsDPLoadTLUTCmd(7, 15), // 0x00001B30
	gsDPPipeSync(), // 0x00001B38
	gsSPVertex(_jyasinzou_room_6_vertices_00001380, 13, 0), // 0x00001B40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B48
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00001B50
	gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0), // 0x00001B58
	gsSP2Triangles(9, 10, 7, 0, 10, 11, 7, 0), // 0x00001B60
	gsSP2Triangles(11, 12, 7, 0, 12, 8, 7, 0), // 0x00001B68
	gsSPEndDisplayList(), // 0x00001B70
};

Vtx_t _jyasinzou_room_6_vertices_00001B78[4] = 
{
	 { 440, 413, -361, 0, 1638, 0, 69, 62, 48, 255 }, // 0x00001B78
	 { 640, 413, -361, 0, 0, 0, 52, 49, 38, 255 }, // 0x00001B88
	 { 640, 213, -361, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00001B98
	 { 440, 213, -361, 0, 1638, 1024, 5, 5, 5, 255 }, // 0x00001BA8
};

Vtx_t _jyasinzou_room_6_vertices_00001BB8[5] = 
{
	 { 440, 413, -161, 0, 0, 1024, 52, 49, 38, 255 }, // 0x00001BB8
	 { 540, 413, -261, 0, 1024, 512, 100, 89, 67, 255 }, // 0x00001BC8
	 { 440, 413, -361, 0, 512, -512, 52, 49, 38, 255 }, // 0x00001BD8
	 { 640, 413, -361, 0, 2048, 0, 52, 49, 38, 255 }, // 0x00001BE8
	 { 640, 413, -161, 0, 1536, 1536, 52, 49, 38, 255 }, // 0x00001BF8
};

Vtx_t _jyasinzou_room_6_vertices_00001C08[4] = 
{
	 { 640, 413, -361, 0, 2458, 0, 52, 49, 38, 255 }, // 0x00001C08
	 { 640, 413, -161, 0, 0, 0, 52, 49, 38, 255 }, // 0x00001C18
	 { 640, 213, -161, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00001C28
	 { 640, 213, -361, 0, 2458, 1024, 5, 5, 5, 255 }, // 0x00001C38
};

Vtx_t _jyasinzou_room_6_vertices_00001C48[4] = 
{
	 { 300, 413, 39, 0, 410, 2253, 52, 49, 38, 255 }, // 0x00001C48
	 { 370, 413, -61, 0, 1357, 2534, 81, 72, 55, 255 }, // 0x00001C58
	 { 300, 413, -161, 0, 1946, 1741, 52, 49, 38, 255 }, // 0x00001C68
	 { 440, 413, -161, 0, 2304, 2816, 69, 62, 48, 255 }, // 0x00001C78
};

Vtx_t _jyasinzou_room_6_vertices_00001C88[4] = 
{
	 { 440, 413, -161, 0, 2458, 0, 69, 62, 48, 255 }, // 0x00001C88
	 { 440, 413, 39, 0, 0, 0, 81, 72, 55, 255 }, // 0x00001C98
	 { 440, 213, 39, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00001CA8
	 { 440, 213, -161, 0, 2458, 1024, 5, 5, 5, 255 }, // 0x00001CB8
};

Vtx_t _jyasinzou_room_6_vertices_00001CC8[4] = 
{
	 { 300, 413, 39, 0, 410, 2253, 52, 49, 38, 255 }, // 0x00001CC8
	 { 440, 413, 39, 0, 768, 3328, 81, 72, 55, 255 }, // 0x00001CD8
	 { 370, 413, -61, 0, 1357, 2534, 81, 72, 55, 255 }, // 0x00001CE8
	 { 440, 413, -161, 0, 2304, 2816, 69, 62, 48, 255 }, // 0x00001CF8
};

Vtx_t _jyasinzou_room_6_vertices_00001D08[8] = 
{
	 { 640, 213, -561, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00001D08
	 { 440, 213, -561, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00001D18
	 { 440, 213, -361, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00001D28
	 { 640, 213, -361, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00001D38
	 { 640, 213, -161, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00001D48
	 { 440, 213, -161, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00001D58
	 { 440, 213, 39, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00001D68
	 { 640, 213, 39, 0, 0, 1024, 5, 5, 5, 255 }, // 0x00001D78
};

Vtx_t _jyasinzou_room_6_vertices_00001D88[4] = 
{
	 { 180, 463, -161, 0, 2048, -2304, 52, 49, 38, 255 }, // 0x00001D88
	 { 180, 463, 39, 0, 0, -2304, 52, 49, 38, 255 }, // 0x00001D98
	 { 300, 413, 39, 0, 0, 1024, 52, 49, 38, 255 }, // 0x00001DA8
	 { 300, 413, -161, 0, 2048, 1024, 52, 49, 38, 255 }, // 0x00001DB8
};

Vtx_t _jyasinzou_room_6_vertices_00001DC8[8] = 
{
	 { 640, 613, 39, 0, 0, 0, 35, 31, 25, 255 }, // 0x00001DC8
	 { 270, 513, 39, 0, 4736, 1280, 81, 72, 55, 255 }, // 0x00001DD8
	 { -100, 613, 39, 0, 9472, 0, 35, 31, 25, 255 }, // 0x00001DE8
	 { 640, 413, 39, 0, 0, 2560, 52, 49, 38, 255 }, // 0x00001DF8
	 { 440, 413, 39, 0, 2560, 2560, 69, 62, 48, 255 }, // 0x00001E08
	 { 300, 413, 39, 0, 4352, 2560, 52, 49, 38, 255 }, // 0x00001E18
	 { 180, 463, 39, 0, 5888, 1920, 52, 49, 38, 255 }, // 0x00001E28
	 { -100, 463, 39, 0, 9472, 1920, 52, 49, 38, 255 }, // 0x00001E38
};

Vtx_t _jyasinzou_room_6_vertices_00001E48[8] = 
{
	 { -100, 213, -561, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E48
	 { 640, 213, -561, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E58
	 { -100, 613, -561, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E68
	 { 640, 613, -561, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E78
	 { -100, 213, 39, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E88
	 { 640, 213, 39, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001E98
	 { -100, 613, 39, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001EA8
	 { 640, 613, 39, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001EB8
};

Gfx _jyasinzou_room_6_dlist_00001EC8[] =
{
	gsDPPipeSync(), // 0x00001EC8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001ED0
	gsSPVertex(_jyasinzou_room_6_vertices_00001E48, 8, 0), // 0x00001ED8
	gsSPCullDisplayList(0, 7), // 0x00001EE0
	gsDPPipeSync(), // 0x00001EE8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001EF0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001EF8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001F00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000037E8), // 0x00001F08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001F10
	gsDPLoadSync(), // 0x00001F18
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001F20
	gsDPPipeSync(), // 0x00001F28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001F30
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001F38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001F40
	gsDPTileSync(), // 0x00001F48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001F50
	gsDPLoadSync(), // 0x00001F58
	gsDPLoadTLUTCmd(7, 255), // 0x00001F60
	gsDPPipeSync(), // 0x00001F68
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001F70
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001F78
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001F80
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001F88
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001F90
	gsSPVertex(_jyasinzou_room_6_vertices_00001B78, 4, 0), // 0x00001F98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001FA0
	gsDPPipeSync(), // 0x00001FA8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000033E8), // 0x00001FB0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001FB8
	gsDPLoadSync(), // 0x00001FC0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001FC8
	gsDPPipeSync(), // 0x00001FD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001FD8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001FE0
	gsSPVertex(_jyasinzou_room_6_vertices_00001BB8, 5, 0), // 0x00001FE8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001FF0
	gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0), // 0x00001FF8
	gsDPPipeSync(), // 0x00002000
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000037E8), // 0x00002008
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002010
	gsDPLoadSync(), // 0x00002018
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002020
	gsDPPipeSync(), // 0x00002028
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00002030
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002038
	gsSPVertex(_jyasinzou_room_6_vertices_00001C08, 4, 0), // 0x00002040
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002048
	gsDPPipeSync(), // 0x00002050
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000033E8), // 0x00002058
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002060
	gsDPLoadSync(), // 0x00002068
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002070
	gsDPPipeSync(), // 0x00002078
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002080
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002088
	gsSPVertex(_jyasinzou_room_6_vertices_00001C48, 4, 0), // 0x00002090
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002098
	gsDPPipeSync(), // 0x000020A0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000037E8), // 0x000020A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000020B0
	gsDPLoadSync(), // 0x000020B8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000020C0
	gsDPPipeSync(), // 0x000020C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000020D0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000020D8
	gsSPVertex(_jyasinzou_room_6_vertices_00001C88, 4, 0), // 0x000020E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000020E8
	gsDPPipeSync(), // 0x000020F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_000033E8), // 0x000020F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002100
	gsDPLoadSync(), // 0x00002108
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00002110
	gsDPPipeSync(), // 0x00002118
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002120
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002128
	gsSPVertex(_jyasinzou_room_6_vertices_00001CC8, 4, 0), // 0x00002130
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00002138
	gsDPPipeSync(), // 0x00002140
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002148
	gsSPTexture(0, 0, 0, 0, 0), // 0x00002150
	gsDPSetCombineLERP(SHADE, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, 1, K5, K5, 0, COMBINED, 0, 0, 0, COMBINED), // 0x00002158
	gsSPVertex(_jyasinzou_room_6_vertices_00001D08, 8, 0), // 0x00002160
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002168
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002170
	gsDPPipeSync(), // 0x00002178
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002180
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002188
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_00003FE8), // 0x00002190
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00002198
	gsDPLoadSync(), // 0x000021A0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000021A8
	gsDPPipeSync(), // 0x000021B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x000021B8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000021C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x000021C8
	gsDPTileSync(), // 0x000021D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000021D8
	gsDPLoadSync(), // 0x000021E0
	gsDPLoadTLUTCmd(7, 255), // 0x000021E8
	gsDPPipeSync(), // 0x000021F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000021F8
	gsSPVertex(_jyasinzou_room_6_vertices_00001D88, 4, 0), // 0x00002200
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002208
	gsDPPipeSync(), // 0x00002210
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00002218
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00002220
	gsDPLoadSync(), // 0x00002228
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002230
	gsDPPipeSync(), // 0x00002238
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00002240
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00002248
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00002250
	gsDPTileSync(), // 0x00002258
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002260
	gsDPLoadSync(), // 0x00002268
	gsDPLoadTLUTCmd(7, 15), // 0x00002270
	gsDPPipeSync(), // 0x00002278
	gsSPVertex(_jyasinzou_room_6_vertices_00001DC8, 8, 0), // 0x00002280
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00002288
	gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0), // 0x00002290
	gsSP2Triangles(5, 6, 1, 0, 6, 7, 1, 0), // 0x00002298
	gsSP1Triangle(7, 2, 1, 0), // 0x000022A0
	gsSPEndDisplayList(), // 0x000022A8
};

Vtx_t _jyasinzou_room_6_vertices_000022B0[15] = 
{
	 { -67, -50, -61, 0, 3072, -114, 203, 195, 178, 255 }, // 0x000022B0
	 { -200, -50, 79, 0, 683, -2389, 184, 188, 196, 255 }, // 0x000022C0
	 { 0, -50, 79, 0, 683, 1024, 189, 178, 157, 255 }, // 0x000022D0
	 { 67, -50, -61, 0, 3072, 2162, 203, 195, 178, 255 }, // 0x000022E0
	 { 200, -50, 79, 0, 683, 4437, 184, 188, 196, 255 }, // 0x000022F0
	 { -200, -50, 79, 0, 683, 5461, 184, 188, 196, 255 }, // 0x00002300
	 { -67, -50, -61, 0, 2958, 3072, 203, 195, 178, 255 }, // 0x00002310
	 { -200, -50, -201, 0, 683, 683, 169, 154, 126, 255 }, // 0x00002320
	 { 67, -50, -61, 0, 2958, 1024, 203, 195, 178, 255 }, // 0x00002330
	 { 200, -50, 79, 0, 683, 3413, 184, 188, 196, 255 }, // 0x00002340
	 { 200, -50, -201, 0, 683, -1365, 169, 154, 126, 255 }, // 0x00002350
	 { -200, -50, -201, 0, 683, 1365, 169, 154, 126, 255 }, // 0x00002360
	 { -67, -50, -61, 0, 3072, -910, 203, 195, 178, 255 }, // 0x00002370
	 { 67, -50, -61, 0, 3072, -3186, 203, 195, 178, 255 }, // 0x00002380
	 { 200, -50, -201, 0, 683, -5461, 169, 154, 126, 255 }, // 0x00002390
};

Vtx_t _jyasinzou_room_6_vertices_000023A0[8] = 
{
	 { -200, -50, -201, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023A0
	 { 200, -50, -201, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023B0
	 { -200, -50, -201, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023C0
	 { 200, -50, -201, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023D0
	 { -200, -50, 79, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023E0
	 { 200, -50, 79, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023F0
	 { -200, -50, 79, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002400
	 { 200, -50, 79, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002410
};

Gfx _jyasinzou_room_6_dlist_00002420[] =
{
	gsDPPipeSync(), // 0x00002420
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002428
	gsSPVertex(_jyasinzou_room_6_vertices_000023A0, 8, 0), // 0x00002430
	gsSPCullDisplayList(0, 7), // 0x00002438
	gsDPPipeSync(), // 0x00002440
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002448
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002450
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002458
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_6_tex_00002BE8), // 0x00002460
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00002468
	gsDPLoadSync(), // 0x00002470
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002478
	gsDPPipeSync(), // 0x00002480
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00002488
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002490
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00002498
	gsDPTileSync(), // 0x000024A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000024A8
	gsDPLoadSync(), // 0x000024B0
	gsDPLoadTLUTCmd(7, 255), // 0x000024B8
	gsDPPipeSync(), // 0x000024C0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000024C8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000024D0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000024D8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000024E0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000024E8
	gsSPVertex(_jyasinzou_room_6_vertices_000022B0, 15, 0), // 0x000024F0
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x000024F8
	gsSP2Triangles(4, 3, 2, 0, 5, 6, 7, 0), // 0x00002500
	gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0), // 0x00002508
	gsSP1Triangle(11, 13, 14, 0), // 0x00002510
	gsSPEndDisplayList(), // 0x00002518
};

Vtx_t _jyasinzou_room_6_vertices_00002520[22] = 
{
	 { 240, 413, -361, 0, 3584, 0, 69, 62, 48, 255 }, // 0x00002520
	 { 240, 413, -381, 0, 3584, 512, 81, 72, 55, 255 }, // 0x00002530
	 { 240, 573, -381, 0, -512, 512, 100, 89, 67, 255 }, // 0x00002540
	 { 240, 573, -361, 0, -512, 0, 69, 62, 48, 255 }, // 0x00002550
	 { 240, 573, -361, 0, -517, -5, 69, 62, 48, 255 }, // 0x00002560
	 { 240, 573, -381, 0, 0, 512, 100, 89, 67, 255 }, // 0x00002570
	 { 240, 613, -361, 0, 517, -1040, 52, 49, 38, 255 }, // 0x00002580
	 { 240, 593, -401, 0, 1034, 512, 100, 89, 67, 255 }, // 0x00002590
	 { 240, 613, -401, 0, 1552, -5, 69, 62, 48, 255 }, // 0x000025A0
	 { 240, 613, -401, 0, -512, 0, 52, 49, 38, 255 }, // 0x000025B0
	 { 240, 593, -401, 0, -512, 512, 100, 89, 67, 255 }, // 0x000025C0
	 { 240, 593, -521, 0, 2560, 512, 100, 89, 67, 255 }, // 0x000025D0
	 { 240, 613, -521, 0, 2560, 0, 81, 72, 55, 255 }, // 0x000025E0
	 { 240, 613, -521, 0, -517, -5, 81, 72, 55, 255 }, // 0x000025F0
	 { 240, 593, -521, 0, 0, 512, 100, 89, 67, 255 }, // 0x00002600
	 { 240, 613, -561, 0, 517, -1040, 52, 49, 38, 255 }, // 0x00002610
	 { 240, 573, -541, 0, 1034, 512, 100, 89, 67, 255 }, // 0x00002620
	 { 240, 573, -561, 0, 1552, -5, 81, 72, 55, 255 }, // 0x00002630
	 { 240, 573, -561, 0, -512, 0, 81, 72, 55, 255 }, // 0x00002640
	 { 240, 573, -541, 0, -512, 512, 100, 89, 67, 255 }, // 0x00002650
	 { 240, 413, -541, 0, 3584, 512, 81, 72, 55, 255 }, // 0x00002660
	 { 240, 413, -561, 0, 3584, 0, 69, 62, 48, 255 }, // 0x00002670
};

Vtx_t _jyasinzou_room_6_vertices_00002680[15] = 
{
	 { 200, 413, -541, 0, 2688, 2048, 81, 72, 55, 255 }, // 0x00002680
	 { 240, 413, -541, 0, 2176, 2048, 81, 72, 55, 255 }, // 0x00002690
	 { 240, 573, -541, 0, 2176, 512, 35, 31, 25, 255 }, // 0x000026A0
	 { 200, 573, -541, 0, 2688, 554, 52, 49, 38, 255 }, // 0x000026B0
	 { 240, 573, -541, 0, 2176, 554, 35, 31, 25, 255 }, // 0x000026C0
	 { 240, 593, -521, 0, 2176, -502, 35, 31, 25, 255 }, // 0x000026D0
	 { 200, 593, -521, 0, 2688, -502, 52, 49, 38, 255 }, // 0x000026E0
	 { 240, 593, -401, 0, 2176, -1046, 35, 31, 25, 255 }, // 0x000026F0
	 { 200, 593, -401, 0, 2688, -1046, 52, 49, 38, 255 }, // 0x00002700
	 { 200, 593, -401, 0, 2688, -502, 52, 49, 38, 255 }, // 0x00002710
	 { 240, 593, -401, 0, 2176, -502, 35, 31, 25, 255 }, // 0x00002720
	 { 240, 573, -381, 0, 2176, 554, 35, 31, 25, 255 }, // 0x00002730
	 { 200, 573, -381, 0, 2688, 554, 52, 49, 38, 255 }, // 0x00002740
	 { 240, 413, -381, 0, 2176, 2048, 81, 72, 55, 255 }, // 0x00002750
	 { 200, 413, -381, 0, 2688, 2048, 81, 72, 55, 255 }, // 0x00002760
};

Vtx_t _jyasinzou_room_6_vertices_00002770[22] = 
{
	 { 200, 413, -561, 0, 3584, 0, 69, 62, 48, 255 }, // 0x00002770
	 { 200, 413, -541, 0, 3584, 512, 81, 72, 55, 255 }, // 0x00002780
	 { 200, 573, -541, 0, -512, 512, 100, 89, 67, 255 }, // 0x00002790
	 { 200, 573, -561, 0, -512, 0, 81, 72, 55, 255 }, // 0x000027A0
	 { 200, 613, -561, 0, 507, -1040, 52, 49, 38, 255 }, // 0x000027B0
	 { 200, 573, -561, 0, -528, -5, 81, 72, 55, 255 }, // 0x000027C0
	 { 200, 573, -541, 0, -10, 512, 100, 89, 67, 255 }, // 0x000027D0
	 { 200, 593, -521, 0, 1024, 512, 100, 89, 67, 255 }, // 0x000027E0
	 { 200, 613, -521, 0, 1541, -5, 81, 72, 55, 255 }, // 0x000027F0
	 { 200, 613, -521, 0, 2560, 0, 81, 72, 55, 255 }, // 0x00002800
	 { 200, 593, -521, 0, 2560, 512, 100, 89, 67, 255 }, // 0x00002810
	 { 200, 593, -401, 0, -512, 512, 100, 89, 67, 255 }, // 0x00002820
	 { 200, 613, -401, 0, -512, 0, 52, 49, 38, 255 }, // 0x00002830
	 { 200, 613, -361, 0, 517, -1040, 52, 49, 38, 255 }, // 0x00002840
	 { 200, 613, -401, 0, -517, -5, 69, 62, 48, 255 }, // 0x00002850
	 { 200, 593, -401, 0, 0, 512, 100, 89, 67, 255 }, // 0x00002860
	 { 200, 573, -381, 0, 1034, 512, 100, 89, 67, 255 }, // 0x00002870
	 { 200, 573, -361, 0, 1552, -5, 69, 62, 48, 255 }, // 0x00002880
	 { 200, 573, -361, 0, -512, 0, 69, 62, 48, 255 }, // 0x00002890
	 { 200, 573, -381, 0, -512, 512, 100, 89, 67, 255 }, // 0x000028A0
	 { 200, 413, -381, 0, 3584, 512, 81, 72, 55, 255 }, // 0x000028B0
	 { 200, 413, -361, 0, 3584, 0, 69, 62, 48, 255 }, // 0x000028C0
};

Vtx_t _jyasinzou_room_6_vertices_000028D0[8] = 
{
	 { 200, 413, -561, 0, 0, 0, 0, 0, 0, 0 }, // 0x000028D0
	 { 240, 413, -561, 0, 0, 0, 0, 0, 0, 0 }, // 0x000028E0
	 { 200, 613, -561, 0, 0, 0, 0, 0, 0, 0 }, // 0x000028F0
	 { 240, 613, -561, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002900
	 { 200, 413, -361, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002910
	 { 240, 413, -361, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002920
	 { 200, 613, -361, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002930
	 { 240, 613, -361, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002940
};

Gfx _jyasinzou_room_6_dlist_00002950[] =
{
	gsDPPipeSync(), // 0x00002950
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002958
	gsSPVertex(_jyasinzou_room_6_vertices_000028D0, 8, 0), // 0x00002960
	gsSPCullDisplayList(0, 7), // 0x00002968
	gsDPPipeSync(), // 0x00002970
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002978
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00002980
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002988
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018820), // 0x00002990
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00002998
	gsDPLoadSync(), // 0x000029A0
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x000029A8
	gsDPPipeSync(), // 0x000029B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x000029B8
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x000029C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x000029C8
	gsDPTileSync(), // 0x000029D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000029D8
	gsDPLoadSync(), // 0x000029E0
	gsDPLoadTLUTCmd(7, 255), // 0x000029E8
	gsDPPipeSync(), // 0x000029F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000029F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00002A00
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002A08
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002A10
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002A18
	gsSPVertex(_jyasinzou_room_6_vertices_00002520, 22, 0), // 0x00002A20
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002A28
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00002A30
	gsSP2Triangles(7, 8, 6, 0, 9, 10, 11, 0), // 0x00002A38
	gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0), // 0x00002A40
	gsSP2Triangles(14, 16, 15, 0, 16, 17, 15, 0), // 0x00002A48
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x00002A50
	gsDPPipeSync(), // 0x00002A58
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00002A60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00002A68
	gsDPLoadSync(), // 0x00002A70
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00002A78
	gsDPPipeSync(), // 0x00002A80
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00002A88
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00002A90
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00002A98
	gsDPTileSync(), // 0x00002AA0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002AA8
	gsDPLoadSync(), // 0x00002AB0
	gsDPLoadTLUTCmd(7, 15), // 0x00002AB8
	gsDPPipeSync(), // 0x00002AC0
	gsSPVertex(_jyasinzou_room_6_vertices_00002680, 15, 0), // 0x00002AC8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002AD0
	gsSP2Triangles(3, 4, 5, 0, 3, 5, 6, 0), // 0x00002AD8
	gsSP2Triangles(6, 5, 7, 0, 6, 7, 8, 0), // 0x00002AE0
	gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0), // 0x00002AE8
	gsSP2Triangles(12, 11, 13, 0, 12, 13, 14, 0), // 0x00002AF0
	gsDPPipeSync(), // 0x00002AF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018820), // 0x00002B00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00002B08
	gsDPLoadSync(), // 0x00002B10
	gsDPLoadBlock(7, 0, 0, 127, 1024), // 0x00002B18
	gsDPPipeSync(), // 0x00002B20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x00002B28
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00002B30
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00002B38
	gsDPTileSync(), // 0x00002B40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00002B48
	gsDPLoadSync(), // 0x00002B50
	gsDPLoadTLUTCmd(7, 255), // 0x00002B58
	gsDPPipeSync(), // 0x00002B60
	gsSPVertex(_jyasinzou_room_6_vertices_00002770, 22, 0), // 0x00002B68
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002B70
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002B78
	gsSP2Triangles(4, 7, 8, 0, 9, 10, 11, 0), // 0x00002B80
	gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0), // 0x00002B88
	gsSP2Triangles(13, 15, 16, 0, 13, 16, 17, 0), // 0x00002B90
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x00002B98
	gsSPEndDisplayList(), // 0x00002BA0
};

static u8 unaccounted2BA8[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x40, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x09, 0x08, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0xB0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0xD0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1E, 0xC8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x24, 0x20, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x29, 0x50, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _jyasinzou_room_6_tex_00002BE8[] = 
{
	0x1A0B08000008087B, 0x7B7B0823231E1E23, 0x00001E00001E1E1E, 0x1E000000081E0000,  // 0x00002BE8 
	0x0800080800002323, 0x001E08081E001E1E, 0x1E23230808000800, 0xD00008D008080899,  // 0x00002C08 
	0x0B0B0827030303BA, 0x7B7B0800231E031E, 0x27272727001E1E27, 0x1E030300031E0327,  // 0x00002C28 
	0x0303080327000323, 0x271E030808272727, 0x2323270303030800, 0x0827030308080372,  // 0x00002C48 
	0x1ADE862708030008, 0xB37B0803231E0303, 0x23270327001E0308, 0x2708080803270327,  // 0x00002C68 
	0x0308030003030827, 0x231E270386270000, 0x2323000027080803, 0x0327272703031E03,  // 0x00002C88 
	0xB78CD00008080300, 0xBA7B08860023008C, 0x00080808001E8C8C, 0x0808088C08000000,  // 0x00002CA8 
	0x080800008C03088C, 0x00231E0000080023, 0x231E00001E030808, 0x0800080023231E08,  // 0x00002CC8 
	0x0B08D00000000300, 0x86C6E50827230808, 0x0000000808030008, 0x0808000808000800,  // 0x00002CE8 
	0x00002308081E0008, 0x2300001E00082323, 0x0000231E001E0000, 0x0008080023001E08,  // 0x00002D08 
	0x1AE5860000230000, 0x08EFBA0327230327, 0x0003002703080003, 0x2703272727030300,  // 0x00002D28 
	0x00230003031E2727, 0x0003232327031E03, 0x0000032727232300, 0x000303001E002327,  // 0x00002D48 
	0x0BB7080300272323, 0x03E0B38627000027, 0x0386031E27082703, 0x030003001E080000,  // 0x00002D68 
	0x0027030300031E23, 0x0303232703271E03, 0x0000030303002300, 0x000000272700271E,  // 0x00002D88 
	0x0BE5080300032323, 0x00037BBA03032303, 0x08E003231E031E08, 0x080003001E030000,  // 0x00002DA8 
	0x0008030300E02723, 0x03231E08031E2700, 0x2300000303002323, 0x0000001E00000323,  // 0x00002DC8 
	0x1A0808001E002323, 0x00087B7B088C0000, 0x08000000231E1E08, 0x0808000800000008,  // 0x00002DE8 
	0x1E08001E0800081E, 0x2323080800000808, 0x00230000001E2323, 0x23081E0000000023,  // 0x00002E08 
	0x1A8C0B0803230308, 0x2727B37BBA860800, 0x000000081E1E0008, 0x001E08001E081E00,  // 0x00002E28 
	0x032323000000001E, 0x231E082323000808, 0x080300000003231E, 0x0323230808002323,  // 0x00002E48 
	0x1A8CDE0327000308, 0x2723B37BB3080827, 0x2703030303082703, 0x0003080327082727,  // 0x00002E68 
	0x2700000003030023, 0x2303270000000303, 0x0308002327031E1E, 0x2723230303032327,  // 0x00002E88 
	0x1A86861E23002703, 0x03237BC9C6080823, 0x0308032708861E00, 0x000803030003031E,  // 0x00002EA8 
	0x2300000308032727, 0x2703270300271E27, 0x2703032723002727, 0x2323272700030303,  // 0x00002EC8 
	0x1A088C1E23002700, 0x03277BB38C030823, 0x8C08000308002323, 0x00081E000000031E,  // 0x00002EE8 
	0x2300000808001E08, 0x08000008001E1E00, 0x0000080323230000, 0x231E080323238C00,  // 0x00002F08 
	0x1A8C0B1E081E0023, 0x00037BBA00000808, 0x008C081E001E231E, 0x0800000000001E1E,  // 0x00002F28 
	0x081E000800081E8C, 0x0000000808002300, 0x0800001E00000800, 0x1E8C0823231E0008,  // 0x00002F48 
	0x1ADE080308032300, 0x23007B0800230008, 0x1E86080303030386, 0x0800000003232703,  // 0x00002F68 
	0x0803860000082727, 0x03001E2727000000, 0x0803031E03030000, 0x8603232300860000,  // 0x00002F88 
	0x1A390B0303032700, 0x278CC60327270000, 0x0308080300080808, 0x08272700031E0003,  // 0x00002FA8 
	0x0303860300000023, 0x032727271E000300, 0x0303032708030303, 0x861E231E08860000,  // 0x00002FC8 
	0x1AB71A2700270000, 0x08B3D08627030023, 0x080303271E030300, 0x031E270000272327,  // 0x00002FE8 
	0x0027030327230023, 0x2727000023270300, 0x2700002703000803, 0x03231E278C032700,  // 0x00003008 
	0x1AB70B1E231E0303, 0xBA7B080308032300, 0x08000008081E0023, 0x0000082323081E1E,  // 0x00003028 
	0x231E001E1E230000, 0x08080800001E1E08, 0x1E00001E00080800, 0x2323000808001E23,  // 0x00003048 
	0x1A0B08031E1E038C, 0xC67B000008000000, 0x00231E0808031E00, 0x00001E031E1E0303,  // 0x00003068 
	0x1E1E08000003231E, 0x00081E0800002300, 0x0300000300080823, 0x232308080008031E,  // 0x00003088 
	0x0B0B0B08270303BA, 0xC97B000003000303, 0x001E030308860300, 0x03031E03031E2708,  // 0x000030A8 
	0x270303000008031E, 0x00031E2700000000, 0x0300030886082700, 0x0300030327082723,  // 0x000030C8 
	0x1ADE0B03000803B3, 0x7B7B030300030803, 0x271E030008860300, 0x0303032708031E03,  // 0x000030E8 
	0x0008270027030303, 0x00001E0327030000, 0x0003860886031E27, 0x0803002703032323,  // 0x00003108 
	0x0B8C0B00000803C6, 0x7B7B080800080800, 0x1E23000008080000, 0x0000081E08082300,  // 0x00003128 
	0x00081E0027000008, 0x23231E081E080023, 0x23088C080023231E, 0x0308231E031E2300,  // 0x00003148 
	0x0BD00B231E00000B, 0x7B7B080803080008, 0x2323000000000000, 0x1E1E000808002323,  // 0x00003168 
	0x1E0808088C080000, 0x231E080008080800, 0x0808080000230008, 0x230008001E008C00,  // 0x00003188 
	0x0B0808030023001E, 0xBA7B030308270308, 0x8603000300030003, 0x0303000800030003,  // 0x000031A8 
	0x001E080803000023, 0x0003270008000800, 0x080827002303E008, 0x232327031E1E0800,  // 0x000031C8 
	0x0B8608030003001E, 0x08B3E00003000308, 0x8603002700032703, 0x0303030300030303,  // 0x000031E8 
	0x0000030800030003, 0x0003270027000303, 0x0808270003080803, 0x27271E0803030300,  // 0x00003208 
	0x1AB7082703030003, 0x27BAEF0327000003, 0x0303272300001E00, 0x1E27080003030800,  // 0x00003228 
	0x0327270300080308, 0x0000000023000303, 0x0303000008030027, 0x0386270303030000,  // 0x00003248 
	0x0BB7081E081E0303, 0x27E5B3E02300001E, 0x00081E2323001E23, 0x1E08080008080800,  // 0x00003268 
	0x081E080000030303, 0x000000001E230323, 0x1E000000031E001E, 0x008C081E23000000,  // 0x00003288 
	0x1AD0080308030800, 0x03037BEF23230000, 0x0800001E001E0300, 0x0308000800000008,  // 0x000032A8 
	0x08030023001E1E1E, 0x00002308031E1E00, 0x0000231E1E1E1E00, 0x081E08030008088C,  // 0x000032C8 
	0x0B8C862727030800, 0x08037BB308230023, 0x0800031E27030303, 0x0803032703038627,  // 0x000032E8 
	0x2703001E00271E27, 0x0003000303031E23, 0x0000031E271E1E03, 0x081E270300270808,  // 0x00003308 
	0x0BB7B72723000303, 0x03037B7BBA232723, 0x0300031E1E030303, 0x030003030308D027,  // 0x00003328 
	0x2300270303002700, 0x2708032700080323, 0x2727081E00272708, 0x2727270303030300,  // 0x00003348 
	0x1AB7E50023000003, 0x00277B7BB3001E23, 0x00231E1E1E1E0800, 0x00001E0300088C00,  // 0x00003368 
	0x23001E0303000000, 0x1E03031E00030323, 0x1E1E082323080003, 0x2300000303080023,  // 0x00003388 
	0x1AB7082323000003, 0x00277B7BC6030800, 0x0800000800000808, 0x08081E1E08080023,  // 0x000033A8 
	0x2300001E0000001E, 0x1E001E001E000000, 0x1E0008230008081E, 0x1E0800001E080023,  // 0x000033C8 
};

u64 _jyasinzou_room_6_tex_000033E8[] = 
{
	0x57030317032E5456, 0x2E343F4634460303, 0x1717031725030303, 0x3030261A24301717,  // 0x000033E8 
	0x0303030317261A1A, 0x6CB324245D465403, 0x0317252525250303, 0x0303300325460303,  // 0x00003408 
	0x0303301A03032E03, 0x5703245D25171703, 0x0325171703252503, 0x30031A0303300303,  // 0x00003428 
	0x0346031A1A6C2603, 0x1A4634523F031A03, 0x031A03251754301A, 0x54032E033017032E,  // 0x00003448 
	0x1A2E031A031A5717, 0x3F03173F34260303, 0x03030330301A5C03, 0x2E571A2E1A1A3054,  // 0x00003468 
	0x172603171A173F17, 0x3003030324252530, 0x0303170317302653, 0x03030303031A1A30,  // 0x00003488 
	0x3F242A2446033825, 0x030303031724252A, 0x5403252530172503, 0x262603032503253C,  // 0x000034A8 
	0x4646440317172503, 0x2A54033003680325, 0x0317030303305403, 0x03031A030317033F,  // 0x000034C8 
	0x253F03302E031717, 0x1A0317031A173803, 0x2E03031A172E306C, 0x3026301A30033C54,  // 0x000034E8 
	0x26033C1A2E031A03, 0x30262E2E2E30031A, 0x2E261A0354302E49, 0x6C03302A303C2E86,  // 0x00003508 
	0x171A251725540344, 0x2630035C1A035430, 0x0354300303171A30, 0x1A031725244B0330,  // 0x00003528 
	0x25301A4B25031A03, 0x1A862E1730251A26, 0x2E03031703030303, 0x030317460303245D,  // 0x00003548 
	0x2E2E03543C031A03, 0x3049544903466CA7, 0x0354920317305403, 0x25032A2546030324,  // 0x00003568 
	0x1A541A033025306C, 0x03032E2E2E25036C, 0xA757032E54030303, 0x3054035425305C49,  // 0x00003588 
	0x0303540303305703, 0xAC1A572E2E494B03, 0x6CA7545403031754, 0x2E1A545403266CA7,  // 0x000035A8 
	0x6C1A251A301A3057, 0x576C6C6C032E0346, 0x306CA703171A037E, 0x6CAC1A2E6CAC036C,  // 0x000035C8 
	0x1A1A30301A170354, 0x57572E1730031A54, 0x3C0325300330302E, 0x576C2E03546C2E30,  // 0x000035E8 
	0x03171A0303031717, 0x0303300317172503, 0x265D462A46030354, 0x25576C3054302E1A,  // 0x00003608 
	0x2603170317250317, 0x1703030303173C30, 0x462A34034B170317, 0x1703031A03170330,  // 0x00003628 
	0x1A1A03251717031A, 0x2E032A2A301A0330, 0x462A033C251A0326, 0x030325172E300303,  // 0x00003648 
	0x3C30173030253030, 0x2E6C2E2E54031A46, 0x2554304603032E1A, 0x5426030330260303,  // 0x00003668 
	0x3025171A461A302E, 0x03306C031A035424, 0x032530031703572E, 0x1A2E3C262530171A,  // 0x00003688 
	0x301A030317032626, 0x5425030317174B46, 0x30173C03031A3054, 0x3017261A03031703,  // 0x000036A8 
	0x03572625172E546C, 0x0317030317172A17, 0x033025254654032E, 0x0317542503030303,  // 0x000036C8 
	0x03032E2E2E666C1A, 0x541A54305417541A, 0x2EAC260317030303, 0x260303300303031A,  // 0x000036E8 
	0x6C30036C571A6C2E, 0x6C1A03A7492E1730, 0xAC576C2E25033026, 0x0303030303170326,  // 0x00003708 
	0x2E2E1AAC2E7E302E, 0x6C1A1A1A6C493046, 0x1A496CAC2E2E3030, 0x5CAC031A2E030303,  // 0x00003728 
	0x4B03541A2E572E54, 0x2E26032A2E6C254B, 0x302E30542EAC2E03, 0x541A66261A5C5C03,  // 0x00003748 
	0x6C031717302E1A03, 0x036C03172646D030, 0x2517030303030303, 0x250330170303301A,  // 0x00003768 
	0x172E4B1717542603, 0x17031A0303241717, 0x1717170303031717, 0x032A033025170303,  // 0x00003788 
	0x03265C543F17032E, 0x26302A0326171703, 0x0303030303172E03, 0x0330030354030303,  // 0x000037A8 
	0x2E54262E30174B49, 0x261A540317030330, 0x260330030303261A, 0x03262E03032E0303,  // 0x000037C8 
};

u64 _jyasinzou_room_6_tex_000037E8[] = 
{
	0x43437F7F36363636, 0x3636364343364343, 0x4343364343434336, 0x36434343437B437B,  // 0x000037E8 
	0x43437B437B7B7B43, 0x7B7B7B7B437B4343, 0x4343434343434336, 0x434343437B437B43,  // 0x00003808 
	0xB7B7B7B76A7E5AB7, 0x6A4E6A6A7EB7B76A, 0xB76A4E7E6AB7B76A, 0x4EB76AB76A6A5A6A,  // 0x00003828 
	0xB7B76A891A033C7E, 0x1A1A1A1A5A5A4E5A, 0xB7B7B7035A5A6A4E, 0x6A6A6A5A5A6A6A7E,  // 0x00003848 
	0x5757575757241A1A, 0x1A6A572E246A1A1A, 0x1A572E6A571A2E2E, 0x5A1A1A1A572E6A57,  // 0x00003868 
	0x1A2E2E5A44444403, 0x44444444261A5A2E, 0x2E2E5A242E26266A, 0x1A1A26261A261A6A,  // 0x00003888 
	0x5757571A571A1A1A, 0x1A6A2E1A1A1A1A1A, 0x1A2E1A2E1A2E572E, 0x5A1A1A1A2E1A5A1A,  // 0x000038A8 
	0x2E572E5A26444403, 0x24444444032E5A2E, 0x2E2E2E251A26261A, 0x5A251A1A26261A6A,  // 0x000038C8 
	0x1A572E5757571A57, 0x2E575757571A572E, 0x575757575A5A5A1A, 0x5A572E575757575A,  // 0x000038E8 
	0x5A5A1A2E5A034444, 0x6144442603035A26, 0x262E26261A26262E, 0x6A1A1A2E262E2625,  // 0x00003908 
	0x245D3F2424245D5D, 0x24242424245D5D24, 0x2424243F3F243F24, 0x3F5D242424243F3F,  // 0x00003928 
	0x243F24243F343434, 0x3952342424242424, 0x2424242434245D5D, 0x5D34345D34345D5D,  // 0x00003948 
	0x1F1F141415151515, 0x1515151415151515, 0x1514151414141435, 0x15151414141F1F1F,  // 0x00003968 
	0x1414141414141414, 0x1414141415141515, 0x1515141414151514, 0x1514151514151414,  // 0x00003988 
	0x1414326732323232, 0x3232326735353267, 0x3267673567323267, 0x356732676732151F,  // 0x000039A8 
	0x1535353535151415, 0x3535353567353535, 0x3232321535356767, 0x6767673535676715,  // 0x000039C8 
	0x1435040C040C040C, 0x0C0C0C0C350F0F0C, 0x0F0C6B0C0C0F6B0C, 0x0C0F6B0C0C040415,  // 0x000039E8 
	0x6B6B6B6B32323235, 0x323232326B0C6B6B, 0x6B6B04356B6B6B0F, 0x0F0F6B6B0F6B0C0F,  // 0x00003A08 
	0x1404190419190404, 0x040404040C0C0C0C, 0x0C040C0404040404, 0x04040C0404191935,  // 0x00003A28 
	0x046B04040C6B6B35, 0x356B6B6B0C040404, 0x0404040C0C0C0C0C, 0x0C0C0C0C040C0C0C,  // 0x00003A48 
	0x152D010909091904, 0x1919191919041919, 0x1919191919091904, 0x1904191909093132,  // 0x00003A68 
	0x191E191919046B6B, 0x356B6B0404041904, 0x0419041904041919, 0x0404041904191904,  // 0x00003A88 
	0x1547180700010001, 0x4700010101474701, 0x0101010000010001, 0x010101090000000C,  // 0x00003AA8 
	0x0000087201093119, 0x6B6B3131721E1E72, 0x1E31317231310909, 0x471919091909093E,  // 0x00003AC8 
	0x0407070A0A0A0A01, 0x0701010901010909, 0x072007000A070707, 0x0701200100500832,  // 0x00003AE8 
	0x070108080007001E, 0x012019011E200931, 0x010101091E094707, 0x0708010409500000,  // 0x00003B08 
	0x040A070A07640720, 0x010101090107091E, 0x2020200720200020, 0x0101640000200809,  // 0x00003B28 
	0x080000080A072000, 0x0101041E201E0104, 0x1E09041E1E040909, 0x060D060D0D00070D,  // 0x00003B48 
	0x1007070101012001, 0x1E1E1E1E1E201E09, 0x6420206420010120, 0x200920640064201E,  // 0x00003B68 
	0x08086400091E1E1E, 0x1E20081E1E010901, 0x1E041E101E1E0907, 0x0A0D0D0D0D000807,  // 0x00003B88 
	0x040A20002001011E, 0x0109091E01011E01, 0x0120200001200120, 0x006464202020001E,  // 0x00003BA8 
	0x0008002020201E1E, 0x1E1E041E1E1E0404, 0x1E1E1E1E041E0707, 0x08080809200D0808,  // 0x00003BC8 
	0x04040A0101070109, 0x1E1E1E0120200120, 0x2000200000200020, 0x0120202020202004,  // 0x00003BE8 
	0x1E1E201E011E1E1E, 0x1E1E1E1E1E1E1E1E, 0x1E1E1E1E09090708, 0x0D0D0D0D0D0A0007,  // 0x00003C08 
	0x040707200701071E, 0x01201E0120201E20, 0x0000000000002000, 0x2020012020000004,  // 0x00003C28 
	0x0020201E1E201E1E, 0x1E1E041E1E1E1E1E, 0x001E1E1E01010A0A, 0x080D070720000D00,  // 0x00003C48 
	0x04070A0000070020, 0x202020200A000020, 0x2000000000200020, 0x010101011E000004,  // 0x00003C68 
	0x00001E00001E1E1E, 0x1E1E1E1E1E1E1E1E, 0x1E1E1E1E01090A08, 0x0D0D0D0D2007080D,  // 0x00003C88 
	0x04070707070A0A07, 0x07070A0A0A0A0A20, 0x0000000808080808, 0x0000000000000004,  // 0x00003CA8 
	0x000000000000001E, 0x001E1E1E1E1E1E1E, 0x1E1E1E2001012008, 0x0D0D20200D000A0A,  // 0x00003CC8 
	0x0407070707070707, 0x07070707070A0707, 0x0A0A080D0808080A, 0x080A0A0A0A002004,  // 0x00003CE8 
	0x002008001E001E1E, 0x1E1E001E1E1E1E1E, 0x1E1E001E20012007, 0x0D0D0D0D00080808,  // 0x00003D08 
	0x1007070707070707, 0x07070707070A0A0A, 0x07080808080A0A0A, 0x0A0A0A0A0A640104,  // 0x00003D28 
	0x6401200000000000, 0x0000000000001E1E, 0x1E00000020010008, 0x080D08200000080A,  // 0x00003D48 
	0x0407070707070707, 0x0707070707070907, 0x070A070A0A070A07, 0x0A0A0A0A0A070104,  // 0x00003D68 
	0x0901016401200000, 0x0000000000000000, 0x0000002020202000, 0x080D0D0D0D00080A,  // 0x00003D88 
	0x0407070707070709, 0x07070707070A0707, 0x0007070A07070707, 0x0707070707070909,  // 0x00003DA8 
	0x0107070707010101, 0x0101012020002020, 0x20201E0720072008, 0x0D0D0D0D000A0D0D,  // 0x00003DC8 
	0x0407070A07070709, 0x0909070907070920, 0x07000A0A070A0A0A, 0x0A0A0A0A0A080A04,  // 0x00003DE8 
	0x070101640A0A0A64, 0x07200A070A200120, 0x201E091E09040407, 0x200A04090D0D0D0A,  // 0x00003E08 
	0x04080A070A0A0A07, 0x0A070707070A070A, 0x0A000A000A0A070A, 0x070A0A0A0A070709,  // 0x00003E28 
	0x640A0A640A640A64, 0x0A010A0709090109, 0x010109070707070A, 0x080D0D0D000D0D0D,  // 0x00003E48 
	0x09080A0A070A0A09, 0x0709070907070A07, 0x0A070A0A00080A08, 0x070A0707070A0709,  // 0x00003E68 
	0x0A01010901090909, 0x0901010101090901, 0x0909010909070708, 0x640D0D0D0D0D0D0D,  // 0x00003E88 
	0x04080A0A07070707, 0x0707070907070907, 0x0707070707070707, 0x0707090909040710,  // 0x00003EA8 
	0x070707070A0A0A0A, 0x0A640A6409010707, 0x0707070707070A08, 0x0D0D0D0D0D0D0D0D,  // 0x00003EC8 
	0x040D0D07070A0A07, 0x0709070909070701, 0x2020202020202020, 0x0101090909090910,  // 0x00003EE8 
	0x0709070A070A0A0A, 0x0A07070707070909, 0x0907090707070008, 0x080D0D0D0D0D0D0D,  // 0x00003F08 
	0x0908080808070A07, 0x07070A0700000000, 0x0000000020000020, 0x2020070909040910,  // 0x00003F28 
	0x0909070920072020, 0x2000002001090909, 0x0909072001200708, 0x0D0D0D0D0D0D0D0D,  // 0x00003F48 
	0x040D0D0708080D08, 0x0807202020200000, 0x2020200009070907, 0x0704090109070710,  // 0x00003F68 
	0x0707040904091E09, 0x0901010101090109, 0x0720202000200000, 0x0D0D0D0D0D0D0D0D,  // 0x00003F88 
	0x1004070707090404, 0x0432043204100404, 0x1004100410040432, 0x100404101032101F,  // 0x00003FA8 
	0x1032101032323210, 0x3210101010101010, 0x3210103210320404, 0x0404040909090904,  // 0x00003FC8 
};

u64 _jyasinzou_room_6_tex_00003FE8[] = 
{
	0x1418790E1B3B1D33, 0x4242424233234242, 0x3333333342424C4C, 0x2FB3423342424C4C,  // 0x00003FE8 
	0x2FB3423333424242, 0x4242427742423342, 0x4233333333334242, 0x3333233B05182D15,  // 0x00004008 
	0x04050202591D2333, 0x4233333333333333, 0x3333333333424242, 0x4242773333424242,  // 0x00004028 
	0x4242773333333333, 0x3333333333333333, 0x3333423333423333, 0x3323231D1C054715,  // 0x00004048 
	0x04050E02592B3B1D, 0x3B23232323232323, 0x2323233B23232323, 0x2323232323232323,  // 0x00004068 
	0x2323232323232323, 0x2323232323232323, 0x232323233B232323, 0x3B3B1D2B1C126015,  // 0x00004088 
	0x040502021B591D2B, 0x1D2B2B1D1D1D223B, 0x3B3B3B3B3B233B23, 0x232323233B233B23,  // 0x000040A8 
	0x2323232323232323, 0x2323232323233B23, 0x3B3B23233B3B1D2B, 0x592B2B2B1C086067,  // 0x000040C8 
	0x04050E281B595959, 0x2B1B592B2B2B1D1D, 0x1D1D1D1D1D1D1D1D, 0x1D1D1D1D1D1D1D1D,  // 0x000040E8 
	0x1D1D1D1D1D1D1D1D, 0x1D1D1D1D3B1D1D1D, 0x1D1D1D2B2B2B5959, 0x1B59591BA10A4035,  // 0x00004108 
	0x04121302411B1B1B, 0x1B1B1B1B1B1B1B1B, 0x1B1B1B1B1B591B59, 0x1B592B1B1B591B59,  // 0x00004128 
	0x1B592B1B2B2B2B2B, 0x2B2B2B2B2B2B2B2B, 0x2B591B1B1BD24141, 0x41414141A10A4015,  // 0x00004148 
	0x04050B1176764141, 0x4141414141414141, 0x4141414141414141, 0x4141411B41414141,  // 0x00004168 
	0x4141411B1BD2D21B, 0x1B1B1B1B1B1B1B1B, 0x414141414176768E, 0x8E8E8E8E0B064067,  // 0x00004188 
	0x04051C1155411B59, 0x2B1D2B2B1D1D233B, 0x3B3B8D8D33222222, 0x22238D8D8D8D8D33,  // 0x000041A8 
	0x22222222228D8D8D, 0x3322222222228D8D, 0x233B3B221D1D592B, 0x414141410D063E67,  // 0x000041C8 
	0x040513112B1D3B3B, 0x3B233B23238D234A, 0x422F2F5D5D5D2424, 0x5D5D2F685D242424,  // 0x000041E8 
	0x242424B3612F2424, 0x24242424B3612F5D, 0x5D2F4C4233233B1D, 0x2B5941550B054715,  // 0x00004208 
	0x044513131D3B4A23, 0x23333342774C2F5D, 0x4B3C3C244B4B4B5D, 0x5D24D04B3C3C244B,  // 0x00004228 
	0x4B4B5D5D24D03C24, 0x4B4B4B5D5D24D04B, 0x245D5D2F2F2F4223, 0x3B1D1B1B13794035,  // 0x00004248 
	0x0C0813133B1D4A33, 0x2F4C2F2F68242446, 0x3C3C254646464646, 0x24744B463C254646,  // 0x00004268 
	0x464646243C4B2546, 0x46464646243C4B46, 0x744B5D3C842F2F4C, 0x423B2B1B1C794015,  // 0x00004288 
	0x040013A1233B7777, 0x5D5D3C4B243C3C25, 0x0303030354252525, 0x3C3C462503030354,  // 0x000042A8 
	0x2525253C3C460303, 0x542525253C3C4625, 0x3C4625031746745D, 0x2F33232BA1050A14,  // 0x000042C8 
	0x04120D1C233B4C5D, 0x4617253C17252503, 0x1A1A541A0303035D, 0x4B2617031A541A03,  // 0x000042E8 
	0x03035D4B4617541A, 0x0303035D4B461703, 0x2603260303030325, 0x5D771D1D1CE90A15,  // 0x00004308 
	0x2D051C0E23235D03, 0x03172503032A0354, 0x26031A1A03030303, 0x24032554031A1A03,  // 0x00004328 
	0x030303243C251A1A, 0x03030303243C2554, 0x03031A0354032603, 0x172F5922A1794015,  // 0x00004348 
	0x0C050E024277177E, 0x6A5454174B252603, 0x6A8930241A1A1A1A, 0x1A035D2F0330241A,  // 0x00004368 
	0x1A1A1A1A03033024, 0x1A1A1A1A1A030354, 0x250326251A171A03, 0x035D331D0E79011F,  // 0x00004388 
	0x1512050E1B1D2377, 0x2323334A4A4A2342, 0x4A8D3B221D4A2323, 0x394A3354234A4A4A,  // 0x000043A8 
	0x77332222234A3377, 0x2F4233238D422323, 0x33233B423B234223, 0x231D411B79124715,  // 0x000043C8 
	0x1606050E1B222333, 0x7742777742777742, 0x42423B8D3B232323, 0x4233233B23423333,  // 0x000043E8 
	0x3333233333333333, 0x2F423323234A3333, 0x3377774C77427742, 0x333B551B0E79400F,  // 0x00004408 
	0x0F06120E1B1D1D23, 0x2333423342424242, 0x77333B221D3B234A, 0x4A4A333333232323,  // 0x00004428 
	0x2333333333333333, 0x4C333B22234A4A23, 0x234A333333232323, 0x3B2B1B1B05064716,  // 0x00004448 
	0x0C06450E2B2B2B1D, 0x3B3B232323232323, 0x238D1D2B1D1D3B23, 0x23232323234A3323,  // 0x00004468 
	0x234A232323233323, 0x42233B2223233B22, 0x23238D233B1D1D1D, 0x2B591B4112061967,  // 0x00004488 
	0x0C060D0B1B1B592B, 0x2B1D3B2B1D22223B, 0x22221D1D2B1D3B23, 0x3B3B23233B23233B,  // 0x000044A8 
	0x2323232323232323, 0x33233B223B231D3B, 0x233B3B3B1D1D2B2B, 0x591B1B1B45060435,  // 0x000044C8 
	0x0406051359D21B59, 0x2B2B2B1B1D2B1D1D, 0x1D1D1D1D1B1D2222, 0x2222223B22221D1D,  // 0x000044E8 
	0x223B3B3B3B3B3B3B, 0x233B3B1D3B3B5922, 0x3B3B1D1D1D59591B, 0x1B1B1B1B05123E35,  // 0x00004508 
	0x0C061C131B41411B, 0x1B1B59411B592B2B, 0x2B2B2B2B1B2B1D2B, 0x1D2B2B2B2B2B3B1D,  // 0x00004528 
	0x3B1D1D1D1D1D1D1D, 0x3B1D1D2B1D1DD22B, 0x2B2B592B59414141, 0x4141414105060935,  // 0x00004548 
	0x0C06130241768E41, 0x41414141411B1B1B, 0x1B1B411B1B1B591B, 0x591B1B1B1B1B591B,  // 0x00004568 
	0x1B59592B2B2B2B2B, 0x2B2B2B1B59594141, 0x411B414141417676, 0x7676764105063E35,  // 0x00004588 
	0x04061C02B4B4B4B4, 0x8BB4B48E8E8E7641, 0x411B768E768E7676, 0x767676768E8E768E,  // 0x000045A8 
	0x768E76767676768E, 0x8E8E8E418E8E8E8E, 0x8E8EB4B4B4B4B4B4, 0xB4B4B4B4A10A3E35,  // 0x000045C8 
	0x040602021B76D241, 0x411B2B2B1D1D3B23, 0x4A4233334C7777B3, 0x5D2F4C77333B7777,  // 0x000045E8 
	0x774C2FD04242231D, 0x593B232F2F428D4A, 0x7733333B221B1B1B, 0x1B41414145000467,  // 0x00004608 
	0x04061C021B412B59, 0x2B1D23234A424C77, 0x772FD0174625684B, 0x4B3C2F5D4B17463C,  // 0x00004628 
	0x684B5D4B2F2F2F2F, 0x232F2F4B2F2F4C68, 0x5D2F423323233B1D, 0x1D1B1B5512011935,  // 0x00004648 
	0x2D12A1A11D1B2B3B, 0x2323334C2F2F6824, 0x844B170325033C56, 0x56174B3C17032503,  // 0x00004668 
	0x3C5656174B3C4B3C, 0x5D4B170324253C3C, 0x3C4B2F4233233B22, 0x222B591B45001916,  // 0x00004688 
	0x2D12051C1D592B23, 0x334C2F5D4B463C4B, 0x4B4B030346170325, 0x2503464603034617,  // 0x000046A8 
	0x0325250346464646, 0xD04B0303463C1725, 0x25174B5D4C423323, 0x4A3B1D2B1200190F,  // 0x000046C8 
	0x2D1211C33B2B3333, 0x5D5D4B4B03038817, 0x0303545446268803, 0x0303031754544626,  // 0x000046E8 
	0x8803030303170317, 0x0303545425030303, 0x030317173C5D8C33, 0x233B3B1D0B06090F,  // 0x00004708 
	0x0C0611C33B2B422F, 0x1746034603030325, 0x2525030303030303, 0x0303032503030303,  // 0x00004728 
	0x0303030303250325, 0x25255454261A0303, 0x0303030303255668, 0x424A233B0212090F,  // 0x00004748 
	0x0C181102233B7717, 0x260357461A1A0326, 0x031A1A8825033C25, 0x030303031A882503,  // 0x00004768 
	0x3C25030303032626, 0x031A1A6A25542603, 0x2626541A26541A25, 0x2477231D1145090F,  // 0x00004788 
	0x041805283B3B3B8C, 0x4C4242333317778C, 0x8C4C2F5D4C2F242F, 0x5D8C4223D042422F,  // 0x000047A8 
	0x242F5D8C8C8C8C8C, 0x8C4C2F745D5D4C42, 0x8C3B333B428C8C4C, 0x42333B1D0279600F,  // 0x000047C8 
};

static u8 unaccounted47E8[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


