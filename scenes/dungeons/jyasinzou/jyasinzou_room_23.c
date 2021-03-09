#include <ultra64.h>
#include <z64.h>
#include "jyasinzou_room_23.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "jyasinzou_scene.h"



SCmdEchoSettings _jyasinzou_room_23_set0000_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0000
SCmdRoomBehavior _jyasinzou_room_23_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _jyasinzou_room_23_set0000_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0010
SCmdTimeSettings _jyasinzou_room_23_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _jyasinzou_room_23_set0000_cmd04 = { 0x0A, 0, (u32)&_jyasinzou_room_23_meshHeader_000001B0 }; // 0x0020
SCmdObjectList _jyasinzou_room_23_set0000_cmd05 = { 0x0B, 0x06, (u32)_jyasinzou_room_23_objectList_00000040 }; // 0x0028
SCmdActorList _jyasinzou_room_23_set0000_cmd06 = { 0x01, 0x16, (u32)_jyasinzou_room_23_actorList_0000004C }; // 0x0030
SCmdEndMarker _jyasinzou_room_23_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _jyasinzou_room_23_objectList_00000040[] = 
{
	OBJECT_JYA_OBJ,
	OBJECT_JYA_DOOR,
	OBJECT_GI_HEART,
	OBJECT_SYOKUDAI,
	OBJECT_FIREFLY,
	OBJECT_BW,
};

ActorEntry _jyasinzou_room_23_actorList_0000004C[22] = 
{
	{ ACTOR_EN_SW, 681, 1200, -87, 16384, 0, 0, 0x0000 }, //0x0000004C 
	{ ACTOR_EN_BW, 664, 1543, -226, 0, 6190, 0, 0xFFFF }, //0x0000005C 
	{ ACTOR_EN_FIREFLY, 578, 1670, 185, 0, 18569, 0, 0x0000 }, //0x0000006C 
	{ ACTOR_EN_FIREFLY, 796, 1352, 219, 0, -22938, 0, 0x0000 }, //0x0000007C 
	{ ACTOR_EN_FIREFLY, 547, 1201, 6, 0, 11469, 0, 0x0000 }, //0x0000008C 
	{ ACTOR_EN_FIREFLY, 790, 1651, -194, 0, -8192, 0, 0x0000 }, //0x0000009C 
	{ ACTOR_BG_JYA_ZURERUKABE, 680, 1243, -87, 0, 0, 0, 0x0000 }, //0x000000AC 
	{ ACTOR_BG_JYA_ZURERUKABE, 680, 1343, -87, 0, 0, 0, 0x0000 }, //0x000000BC 
	{ ACTOR_BG_JYA_ZURERUKABE, 680, 1043, -87, 0, 0, 0, 0x0000 }, //0x000000CC 
	{ ACTOR_BG_JYA_ZURERUKABE, 680, 943, -87, 0, 0, 0, 0x0000 }, //0x000000DC 
	{ ACTOR_EN_G_SWITCH, 723, 977, -75, 0, 0, 0, 0x1FC0 }, //0x000000EC 
	{ ACTOR_EN_G_SWITCH, 582, 1077, -75, 0, 0, 0, 0x1FC0 }, //0x000000FC 
	{ ACTOR_EN_G_SWITCH, 754, 1292, -75, 0, 0, 0, 0x1FC0 }, //0x0000010C 
	{ ACTOR_EN_G_SWITCH, 644, 1392, -75, 0, 0, 0, 0x1FC0 }, //0x0000011C 
	{ ACTOR_EN_G_SWITCH, 681, 1181, -75, 0, 0, 0, 0x1FC0 }, //0x0000012C 
	{ ACTOR_OBJ_TSUBO, 829, 843, 250, 0, 0, 0, 0x0203 }, //0x0000013C 
	{ ACTOR_OBJ_TSUBO, 531, 843, 249, 0, 0, 0, 0x0403 }, //0x0000014C 
	{ ACTOR_OBJ_SYOKUDAI, 579, 903, 33, 0, 0, 0, 0x03C0 }, //0x0000015C 
	{ ACTOR_OBJ_SYOKUDAI, 579, 1603, -289, 0, 0, 0, 0x03C0 }, //0x0000016C 
	{ ACTOR_OBJ_SYOKUDAI, 780, 903, 33, 0, 0, 0, 0x03C0 }, //0x0000017C 
	{ ACTOR_OBJ_SYOKUDAI, 780, 1603, -286, 0, 0, 0, 0x03C0 }, //0x0000018C 
	{ ACTOR_EN_G_SWITCH, 703, 843, 160, 0, 0, 0, 0x0140 }, //0x0000019C 
};

static u32 pad1AC = 0;

MeshHeader2 _jyasinzou_room_23_meshHeader_000001B0 = { { 2 }, 0x0D, (u32)&_jyasinzou_room_23_meshDListEntry_000001BC, (u32)&(_jyasinzou_room_23_meshDListEntry_000001BC) + sizeof(_jyasinzou_room_23_meshDListEntry_000001BC) };

MeshEntry2 _jyasinzou_room_23_meshDListEntry_000001BC[13] = 
{
	{ 680, 1693, -267, 308, (u32)_jyasinzou_room_23_dlist_00000B48, 0 },
	{ 680, 1693, -406, 251, (u32)_jyasinzou_room_23_dlist_000010A0, 0 },
	{ 680, 1543, -397, 94, (u32)_jyasinzou_room_23_dlist_000012E0, 0 },
	{ 680, 1343, 101, 570, (u32)_jyasinzou_room_23_dlist_00001550, 0 },
	{ 770, 843, 101, 345, (u32)_jyasinzou_room_23_dlist_00001800, 0 },
	{ 970, 1343, 101, 541, (u32)_jyasinzou_room_23_dlist_00001AE8, 0 },
	{ 680, 1193, -87, 403, (u32)_jyasinzou_room_23_dlist_00001E00, 0 },
	{ 490, 1203, -57, 340, (u32)_jyasinzou_room_23_dlist_00002B10, 0 },
	{ 680, 1193, -83, 403, 0, (u32)_jyasinzou_room_23_dlist_00009140 },
	{ 870, 1203, -57, 340, (u32)_jyasinzou_room_23_dlist_00003898, 0 },
	{ 680, 1193, -87, 206, (u32)_jyasinzou_room_23_dlist_000004F0, 0 },
	{ 680, 1573, -287, 125, (u32)_jyasinzou_room_23_dlist_00003DE0, 0 },
	{ 680, 873, 33, 125, (u32)_jyasinzou_room_23_dlist_00004258, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

static u8 unaccounted0290[] = 
{
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0xB0, 0x01, 0x05, 0x00, 0x00, 0x03, 0x00, 0x02, 0xC8, 
	0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0x02, 0xA8, 0x04, 0x77, 0xFF, 0xA9, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0x02, 0xA8, 0x04, 0x13, 0xFF, 0xA9, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0x02, 0xA8, 0x03, 0xAF, 0xFF, 0xA9, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0x02, 0xA8, 0x04, 0xDB, 0xFF, 0xA9, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0x02, 0xA8, 0x05, 0x3F, 0xFF, 0xA9, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0xB0, 0x01, 0x05, 0x00, 0x00, 0x03, 0x00, 0x03, 0x58, 
	0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0x02, 0xA8, 0x04, 0x77, 0xFF, 0xA9, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0x02, 0xA8, 0x04, 0x13, 0xFF, 0xA9, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0x02, 0xA8, 0x03, 0xAF, 0xFF, 0xA9, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0x02, 0xA8, 0x04, 0xDB, 0xFF, 0xA9, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0x02, 0xA8, 0x05, 0x3F, 0xFF, 0xA9, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

Vtx_t _jyasinzou_room_23_vertices_000003B0[4] = 
{
	 { 780, 1143, -87, 0, 3072, 2048, 115, 102, 78, 255 }, // 0x000003B0
	 { 880, 1143, -87, 0, 4096, 2048, 100, 89, 67, 255 }, // 0x000003C0
	 { 880, 1243, -87, 0, 4096, 1024, 158, 142, 111, 255 }, // 0x000003D0
	 { 780, 1243, -87, 0, 3072, 1024, 158, 142, 111, 255 }, // 0x000003E0
};

Vtx_t _jyasinzou_room_23_vertices_000003F0[4] = 
{
	 { 780, 1143, -87, 0, 6144, 1243, 115, 102, 78, 255 }, // 0x000003F0
	 { 780, 1243, -87, 0, 6144, -1829, 158, 142, 111, 255 }, // 0x00000400
	 { 580, 1243, -87, 0, 0, -1829, 158, 142, 111, 255 }, // 0x00000410
	 { 580, 1143, -87, 0, 0, 1243, 115, 102, 78, 255 }, // 0x00000420
};

Vtx_t _jyasinzou_room_23_vertices_00000430[4] = 
{
	 { 480, 1243, -87, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00000430
	 { 480, 1143, -87, 0, 0, 2048, 100, 89, 67, 255 }, // 0x00000440
	 { 580, 1143, -87, 0, 1024, 2048, 115, 102, 78, 255 }, // 0x00000450
	 { 580, 1243, -87, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x00000460
};

Vtx_t _jyasinzou_room_23_vertices_00000470[8] = 
{
	 { 480, 1143, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000470
	 { 880, 1143, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000480
	 { 480, 1243, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000490
	 { 880, 1243, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004A0
	 { 480, 1143, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004B0
	 { 880, 1143, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004C0
	 { 480, 1243, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004D0
	 { 880, 1243, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x000004E0
};

Gfx _jyasinzou_room_23_dlist_000004F0[] =
{
	gsDPPipeSync(), // 0x000004F0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000004F8
	gsSPVertex(_jyasinzou_room_23_vertices_00000470, 8, 0), // 0x00000500
	gsSPCullDisplayList(0, 7), // 0x00000508
	gsDPPipeSync(), // 0x00000510
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000518
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000520
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000528
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00008838), // 0x00000530
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000538
	gsDPLoadSync(), // 0x00000540
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000548
	gsDPPipeSync(), // 0x00000550
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000558
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000560
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000568
	gsDPTileSync(), // 0x00000570
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000578
	gsDPLoadSync(), // 0x00000580
	gsDPLoadTLUTCmd(7, 15), // 0x00000588
	gsDPPipeSync(), // 0x00000590
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000598
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000005A0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000005A8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000005B0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000005B8
	gsSPVertex(_jyasinzou_room_23_vertices_000003B0, 4, 0), // 0x000005C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000005C8
	gsDPPipeSync(), // 0x000005D0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00007438), // 0x000005D8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x000005E0
	gsDPLoadSync(), // 0x000005E8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000005F0
	gsDPPipeSync(), // 0x000005F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000600
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000608
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00000610
	gsDPTileSync(), // 0x00000618
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000620
	gsDPLoadSync(), // 0x00000628
	gsDPLoadTLUTCmd(7, 255), // 0x00000630
	gsDPPipeSync(), // 0x00000638
	gsSPVertex(_jyasinzou_room_23_vertices_000003F0, 4, 0), // 0x00000640
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000648
	gsDPPipeSync(), // 0x00000650
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00008838), // 0x00000658
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000660
	gsDPLoadSync(), // 0x00000668
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000670
	gsDPPipeSync(), // 0x00000678
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000680
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000688
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000690
	gsDPTileSync(), // 0x00000698
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000006A0
	gsDPLoadSync(), // 0x000006A8
	gsDPLoadTLUTCmd(7, 15), // 0x000006B0
	gsDPPipeSync(), // 0x000006B8
	gsSPVertex(_jyasinzou_room_23_vertices_00000430, 4, 0), // 0x000006C0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000006C8
	gsSPEndDisplayList(), // 0x000006D0
};

Vtx_t _jyasinzou_room_23_vertices_000006D8[6] = 
{
	 { 480, 1543, -242, 0, -1536, 1344, 158, 142, 111, 255 }, // 0x000006D8
	 { 680, 1543, -217, 0, 1024, 1664, 234, 231, 223, 255 }, // 0x000006E8
	 { 600, 1543, -347, 0, 0, 0, 158, 142, 111, 255 }, // 0x000006F8
	 { 480, 1543, -87, 0, -1536, 3328, 52, 49, 38, 255 }, // 0x00000708
	 { 680, 1543, -87, 0, 1024, 3328, 177, 164, 138, 255 }, // 0x00000718
	 { 680, 1543, -347, 0, 1024, 0, 189, 178, 157, 255 }, // 0x00000728
};

Vtx_t _jyasinzou_room_23_vertices_00000738[12] = 
{
	 { 830, 1543, -431, 0, 4250, 2048, 69, 62, 48, 255 }, // 0x00000738
	 { 830, 1753, -431, 0, 4250, -640, 100, 89, 67, 255 }, // 0x00000748
	 { 740, 1703, -427, 0, 2893, 0, 169, 154, 126, 255 }, // 0x00000758
	 { 530, 1543, -431, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00000768
	 { 620, 1543, -427, 0, 1357, 2048, 177, 164, 138, 255 }, // 0x00000778
	 { 620, 1703, -427, 0, 1357, 0, 169, 154, 126, 255 }, // 0x00000788
	 { 740, 1543, -427, 0, 2893, 2048, 177, 164, 138, 255 }, // 0x00000798
	 { 530, 1753, -431, 0, 0, -640, 100, 89, 67, 255 }, // 0x000007A8
	 { 680, 1753, -427, 0, 2125, -640, 198, 188, 168, 255 }, // 0x000007B8
	 { 830, 1843, -431, 0, 4250, -2048, 35, 31, 25, 255 }, // 0x000007C8
	 { 530, 1843, -431, 0, 0, -2048, 35, 31, 25, 255 }, // 0x000007D8
	 { 680, 1753, -427, 0, 2125, -640, 198, 188, 168, 255 }, // 0x000007E8
};

Vtx_t _jyasinzou_room_23_vertices_000007F8[6] = 
{
	 { 880, 1843, -431, 0, 9216, -4096, 35, 31, 25, 255 }, // 0x000007F8
	 { 680, 1843, -87, 0, 4813, -1536, 134, 119, 89, 255 }, // 0x00000808
	 { 680, 1843, -431, 0, 9216, -1536, 69, 62, 48, 255 }, // 0x00000818
	 { 480, 1843, -431, 0, 9216, 1024, 35, 31, 25, 255 }, // 0x00000828
	 { 880, 1843, -87, 0, 4813, -4096, 52, 49, 38, 255 }, // 0x00000838
	 { 480, 1843, -87, 0, 4813, 1024, 52, 49, 38, 255 }, // 0x00000848
};

Vtx_t _jyasinzou_room_23_vertices_00000858[4] = 
{
	 { 480, 1543, -381, 0, 4096, 2048, 69, 62, 48, 255 }, // 0x00000858
	 { 480, 1693, -234, 0, 2048, 0, 177, 164, 138, 255 }, // 0x00000868
	 { 480, 1543, -234, 0, 2048, 2048, 115, 102, 78, 255 }, // 0x00000878
	 { 480, 1843, -381, 0, 4096, -2048, 35, 31, 25, 255 }, // 0x00000888
};

Vtx_t _jyasinzou_room_23_vertices_00000898[12] = 
{
	 { 620, 1543, -427, 0, 512, 2048, 100, 89, 67, 255 }, // 0x00000898
	 { 620, 1543, -447, 0, 768, 2048, 81, 72, 55, 255 }, // 0x000008A8
	 { 620, 1703, -447, 0, 768, 0, 69, 62, 48, 255 }, // 0x000008B8
	 { 620, 1703, -427, 0, 512, 0, 69, 62, 48, 255 }, // 0x000008C8
	 { 620, 1703, -427, 0, 1024, 753, 69, 62, 48, 255 }, // 0x000008D8
	 { 620, 1703, -447, 0, 768, 753, 69, 62, 48, 255 }, // 0x000008E8
	 { 740, 1703, -427, 0, 1024, 2289, 69, 62, 48, 255 }, // 0x000008F8
	 { 740, 1703, -447, 0, 768, 2289, 69, 62, 48, 255 }, // 0x00000908
	 { 740, 1703, -427, 0, 1280, 0, 69, 62, 48, 255 }, // 0x00000918
	 { 740, 1703, -447, 0, 1024, 0, 69, 62, 48, 255 }, // 0x00000928
	 { 740, 1543, -447, 0, 1024, 2048, 81, 72, 55, 255 }, // 0x00000938
	 { 740, 1543, -427, 0, 1280, 2048, 100, 89, 67, 255 }, // 0x00000948
};

Vtx_t _jyasinzou_room_23_vertices_00000958[11] = 
{
	 { 480, 1693, -234, 0, 2048, 0, 177, 164, 138, 255 }, // 0x00000958
	 { 480, 1843, -381, 0, 4096, -2048, 35, 31, 25, 255 }, // 0x00000968
	 { 480, 1843, -87, 0, 0, -2048, 69, 62, 48, 255 }, // 0x00000978
	 { 480, 1543, -87, 0, 0, 2048, 115, 102, 78, 255 }, // 0x00000988
	 { 480, 1543, -234, 0, 2048, 2048, 115, 102, 78, 255 }, // 0x00000998
	 { 880, 1693, -234, 0, 2048, 0, 177, 164, 138, 255 }, // 0x000009A8
	 { 880, 1543, -234, 0, 2048, 2048, 115, 102, 78, 255 }, // 0x000009B8
	 { 880, 1543, -87, 0, 0, 2048, 115, 102, 78, 255 }, // 0x000009C8
	 { 880, 1843, -87, 0, 0, -2048, 69, 62, 48, 255 }, // 0x000009D8
	 { 880, 1543, -381, 0, 4096, 2048, 69, 62, 48, 255 }, // 0x000009E8
	 { 880, 1843, -381, 0, 4096, -2048, 35, 31, 25, 255 }, // 0x000009F8
};

Vtx_t _jyasinzou_room_23_vertices_00000A08[12] = 
{
	 { 880, 1543, -242, 0, 3584, 1344, 158, 142, 111, 255 }, // 0x00000A08
	 { 680, 1543, -87, 0, 1024, 3328, 177, 164, 138, 255 }, // 0x00000A18
	 { 880, 1543, -87, 0, 3584, 3328, 52, 49, 38, 255 }, // 0x00000A28
	 { 680, 1543, -217, 0, 1024, 1664, 234, 231, 223, 255 }, // 0x00000A38
	 { 760, 1543, -347, 0, 2048, 0, 158, 142, 111, 255 }, // 0x00000A48
	 { 680, 1543, -347, 0, 1024, 0, 189, 178, 157, 255 }, // 0x00000A58
	 { 880, 1543, -447, 0, 3584, -1280, 52, 49, 38, 255 }, // 0x00000A68
	 { 760, 1543, -447, 0, 2048, -1280, 81, 72, 55, 255 }, // 0x00000A78
	 { 480, 1543, -242, 0, -1536, 1344, 158, 142, 111, 255 }, // 0x00000A88
	 { 600, 1543, -347, 0, 0, 0, 158, 142, 111, 255 }, // 0x00000A98
	 { 480, 1543, -447, 0, -1536, -1280, 52, 49, 38, 255 }, // 0x00000AA8
	 { 600, 1543, -447, 0, 0, -1280, 81, 72, 55, 255 }, // 0x00000AB8
};

Vtx_t _jyasinzou_room_23_vertices_00000AC8[8] = 
{
	 { 480, 1543, -447, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AC8
	 { 880, 1543, -447, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AD8
	 { 480, 1843, -447, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AE8
	 { 880, 1843, -447, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AF8
	 { 480, 1543, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B08
	 { 880, 1543, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B18
	 { 480, 1843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B28
	 { 880, 1843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B38
};

Gfx _jyasinzou_room_23_dlist_00000B48[] =
{
	gsDPPipeSync(), // 0x00000B48
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000B50
	gsSPVertex(_jyasinzou_room_23_vertices_00000AC8, 8, 0), // 0x00000B58
	gsSPCullDisplayList(0, 7), // 0x00000B60
	gsDPPipeSync(), // 0x00000B68
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000B70
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000B78
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000B80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00006038), // 0x00000B88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000B90
	gsDPLoadSync(), // 0x00000B98
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000BA0
	gsDPPipeSync(), // 0x00000BA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000BB0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000BB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00000BC0
	gsDPTileSync(), // 0x00000BC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000BD0
	gsDPLoadSync(), // 0x00000BD8
	gsDPLoadTLUTCmd(7, 255), // 0x00000BE0
	gsDPPipeSync(), // 0x00000BE8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000BF0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000BF8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000C00
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000C08
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000C10
	gsSPVertex(_jyasinzou_room_23_vertices_000006D8, 6, 0), // 0x00000C18
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0), // 0x00000C20
	gsSP2Triangles(4, 1, 0, 0, 1, 5, 2, 0), // 0x00000C28
	gsDPPipeSync(), // 0x00000C30
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00004438), // 0x00000C38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 5, 0), // 0x00000C40
	gsDPLoadSync(), // 0x00000C48
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000C50
	gsDPPipeSync(), // 0x00000C58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 6, 0, 0, 5, 0), // 0x00000C60
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000C68
	gsSPVertex(_jyasinzou_room_23_vertices_00000738, 12, 0), // 0x00000C70
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000C78
	gsSP2Triangles(6, 0, 2, 0, 3, 5, 7, 0), // 0x00000C80
	gsSP2Triangles(8, 1, 9, 0, 8, 9, 10, 0), // 0x00000C88
	gsSP2Triangles(7, 8, 10, 0, 5, 11, 7, 0), // 0x00000C90
	gsSP2Triangles(5, 2, 11, 0, 2, 1, 11, 0), // 0x00000C98
	gsDPPipeSync(), // 0x00000CA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00006038), // 0x00000CA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000CB0
	gsDPLoadSync(), // 0x00000CB8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000CC0
	gsDPPipeSync(), // 0x00000CC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000CD0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000CD8
	gsSPVertex(_jyasinzou_room_23_vertices_000007F8, 6, 0), // 0x00000CE0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000CE8
	gsSP2Triangles(0, 4, 1, 0, 5, 3, 1, 0), // 0x00000CF0
	gsDPPipeSync(), // 0x00000CF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00004438), // 0x00000D00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 5, 0), // 0x00000D08
	gsDPLoadSync(), // 0x00000D10
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000D18
	gsDPPipeSync(), // 0x00000D20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 6, 0, 0, 5, 0), // 0x00000D28
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000D30
	gsSPVertex(_jyasinzou_room_23_vertices_00000858, 4, 0), // 0x00000D38
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00000D40
	gsDPPipeSync(), // 0x00000D48
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00008838), // 0x00000D50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000D58
	gsDPLoadSync(), // 0x00000D60
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000D68
	gsDPPipeSync(), // 0x00000D70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000D78
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000D80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000D88
	gsDPTileSync(), // 0x00000D90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000D98
	gsDPLoadSync(), // 0x00000DA0
	gsDPLoadTLUTCmd(7, 15), // 0x00000DA8
	gsDPPipeSync(), // 0x00000DB0
	gsSPVertex(_jyasinzou_room_23_vertices_00000898, 12, 0), // 0x00000DB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000DC0
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00000DC8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000DD0
	gsDPPipeSync(), // 0x00000DD8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00004438), // 0x00000DE0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 5, 0), // 0x00000DE8
	gsDPLoadSync(), // 0x00000DF0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000DF8
	gsDPPipeSync(), // 0x00000E00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 1, 6, 0, 0, 5, 0), // 0x00000E08
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000E10
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00000E18
	gsDPTileSync(), // 0x00000E20
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000E28
	gsDPLoadSync(), // 0x00000E30
	gsDPLoadTLUTCmd(7, 255), // 0x00000E38
	gsDPPipeSync(), // 0x00000E40
	gsSPVertex(_jyasinzou_room_23_vertices_00000958, 11, 0), // 0x00000E48
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00000E50
	gsSP2Triangles(3, 4, 0, 0, 5, 6, 7, 0), // 0x00000E58
	gsSP2Triangles(8, 5, 7, 0, 6, 5, 9, 0), // 0x00000E60
	gsSP2Triangles(8, 10, 5, 0, 5, 10, 9, 0), // 0x00000E68
	gsDPPipeSync(), // 0x00000E70
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00006038), // 0x00000E78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000E80
	gsDPLoadSync(), // 0x00000E88
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000E90
	gsDPPipeSync(), // 0x00000E98
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000EA0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000EA8
	gsSPVertex(_jyasinzou_room_23_vertices_00000A08, 12, 0), // 0x00000EB0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00000EB8
	gsSP2Triangles(4, 3, 0, 0, 4, 5, 3, 0), // 0x00000EC0
	gsSP2Triangles(0, 6, 4, 0, 6, 7, 4, 0), // 0x00000EC8
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x00000ED0
	gsSPEndDisplayList(), // 0x00000ED8
};

Vtx_t _jyasinzou_room_23_vertices_00000EE0[20] = 
{
	 { 500, 1843, -381, 0, 241, -6, 81, 72, 55, 255 }, // 0x00000EE0
	 { 480, 1843, -381, 0, 0, -12, 35, 31, 25, 255 }, // 0x00000EF0
	 { 480, 1543, -381, 0, 0, 4825, 69, 62, 48, 255 }, // 0x00000F00
	 { 500, 1543, -381, 0, 241, 4830, 151, 101, 50, 255 }, // 0x00000F10
	 { 520, 1843, -391, 0, 512, 0, 69, 62, 48, 255 }, // 0x00000F20
	 { 520, 1543, -391, 0, 512, 4837, 132, 88, 43, 255 }, // 0x00000F30
	 { 530, 1543, -411, 0, 241, 4830, 151, 101, 50, 255 }, // 0x00000F40
	 { 530, 1843, -411, 0, 241, -6, 81, 72, 55, 255 }, // 0x00000F50
	 { 530, 1543, -431, 0, 0, 4825, 69, 62, 48, 255 }, // 0x00000F60
	 { 530, 1843, -431, 0, 0, -12, 35, 31, 25, 255 }, // 0x00000F70
	 { 830, 1843, -411, 0, 241, -6, 81, 72, 55, 255 }, // 0x00000F80
	 { 830, 1843, -431, 0, 0, -12, 35, 31, 25, 255 }, // 0x00000F90
	 { 830, 1543, -431, 0, 0, 4833, 69, 62, 48, 255 }, // 0x00000FA0
	 { 830, 1543, -411, 0, 241, 4839, 151, 101, 50, 255 }, // 0x00000FB0
	 { 840, 1843, -391, 0, 512, 0, 69, 62, 48, 255 }, // 0x00000FC0
	 { 840, 1543, -391, 0, 512, 4845, 132, 88, 43, 255 }, // 0x00000FD0
	 { 860, 1543, -381, 0, 241, 4839, 151, 101, 50, 255 }, // 0x00000FE0
	 { 860, 1843, -381, 0, 241, -6, 81, 72, 55, 255 }, // 0x00000FF0
	 { 880, 1543, -381, 0, 0, 4833, 69, 62, 48, 255 }, // 0x00001000
	 { 880, 1843, -381, 0, 0, -12, 35, 31, 25, 255 }, // 0x00001010
};

Vtx_t _jyasinzou_room_23_vertices_00001020[8] = 
{
	 { 480, 1543, -431, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001020
	 { 880, 1543, -431, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001030
	 { 480, 1843, -431, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001040
	 { 880, 1843, -431, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001050
	 { 480, 1543, -381, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001060
	 { 880, 1543, -381, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001070
	 { 480, 1843, -381, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001080
	 { 880, 1843, -381, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001090
};

Gfx _jyasinzou_room_23_dlist_000010A0[] =
{
	gsDPPipeSync(), // 0x000010A0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000010A8
	gsSPVertex(_jyasinzou_room_23_vertices_00001020, 8, 0), // 0x000010B0
	gsSPCullDisplayList(0, 7), // 0x000010B8
	gsDPPipeSync(), // 0x000010C0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000010C8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000010D0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000010D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00006438), // 0x000010E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 7, 0, 1, 4, 0), // 0x000010E8
	gsDPLoadSync(), // 0x000010F0
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x000010F8
	gsDPPipeSync(), // 0x00001100
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 7, 0, 1, 4, 0), // 0x00001108
	gsDPSetTileSize(0, 0, 0, 60, 508), // 0x00001110
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001118
	gsDPTileSync(), // 0x00001120
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001128
	gsDPLoadSync(), // 0x00001130
	gsDPLoadTLUTCmd(7, 255), // 0x00001138
	gsDPPipeSync(), // 0x00001140
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001148
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001150
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001158
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001160
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001168
	gsSPVertex(_jyasinzou_room_23_vertices_00000EE0, 20, 0), // 0x00001170
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001178
	gsSP2Triangles(4, 0, 5, 0, 0, 3, 5, 0), // 0x00001180
	gsSP2Triangles(5, 6, 7, 0, 5, 7, 4, 0), // 0x00001188
	gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0), // 0x00001190
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0), // 0x00001198
	gsSP2Triangles(14, 10, 15, 0, 10, 13, 15, 0), // 0x000011A0
	gsSP2Triangles(15, 16, 17, 0, 15, 17, 14, 0), // 0x000011A8
	gsSP2Triangles(16, 18, 19, 0, 16, 19, 17, 0), // 0x000011B0
	gsSPEndDisplayList(), // 0x000011B8
};

Vtx_t _jyasinzou_room_23_vertices_000011C0[10] = 
{
	 { 680, 1543, -347, 0, 0, 2048, 189, 178, 157, 255 }, // 0x000011C0
	 { 680, 1543, -447, 0, 2560, 2048, 81, 72, 55, 255 }, // 0x000011D0
	 { 600, 1543, -347, 0, 0, 0, 158, 142, 111, 255 }, // 0x000011E0
	 { 600, 1543, -347, 0, 0, 3584, 158, 142, 111, 255 }, // 0x000011F0
	 { 680, 1543, -447, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x00001200
	 { 600, 1543, -447, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00001210
	 { 760, 1543, -347, 0, 0, 4096, 158, 142, 111, 255 }, // 0x00001220
	 { 680, 1543, -447, 0, 2048, -1536, 81, 72, 55, 255 }, // 0x00001230
	 { 760, 1543, -347, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00001240
	 { 760, 1543, -447, 0, 0, -1536, 81, 72, 55, 255 }, // 0x00001250
};

Vtx_t _jyasinzou_room_23_vertices_00001260[8] = 
{
	 { 600, 1543, -447, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001260
	 { 760, 1543, -447, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001270
	 { 600, 1543, -447, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001280
	 { 760, 1543, -447, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001290
	 { 600, 1543, -347, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012A0
	 { 760, 1543, -347, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012B0
	 { 600, 1543, -347, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012C0
	 { 760, 1543, -347, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012D0
};

Gfx _jyasinzou_room_23_dlist_000012E0[] =
{
	gsDPPipeSync(), // 0x000012E0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000012E8
	gsSPVertex(_jyasinzou_room_23_vertices_00001260, 8, 0), // 0x000012F0
	gsSPCullDisplayList(0, 7), // 0x000012F8
	gsDPPipeSync(), // 0x00001300
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001308
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001310
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001318
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00004C38), // 0x00001320
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00001328
	gsDPLoadSync(), // 0x00001330
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001338
	gsDPPipeSync(), // 0x00001340
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00001348
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001350
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00001358
	gsDPTileSync(), // 0x00001360
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001368
	gsDPLoadSync(), // 0x00001370
	gsDPLoadTLUTCmd(7, 255), // 0x00001378
	gsDPPipeSync(), // 0x00001380
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001388
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001390
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001398
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000013A0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000013A8
	gsSPVertex(_jyasinzou_room_23_vertices_000011C0, 10, 0), // 0x000013B0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000013B8
	gsSP2Triangles(1, 0, 6, 0, 7, 8, 9, 0), // 0x000013C0
	gsSPEndDisplayList(), // 0x000013C8
};

Vtx_t _jyasinzou_room_23_vertices_000013D0[5] = 
{
	 { 880, 1843, -87, 0, 4813, -4096, 52, 49, 38, 255 }, // 0x000013D0
	 { 880, 1843, 289, 0, 0, -4096, 69, 62, 48, 255 }, // 0x000013E0
	 { 680, 1843, -87, 0, 4813, -1536, 134, 119, 89, 255 }, // 0x000013F0
	 { 480, 1843, 289, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00001400
	 { 480, 1843, -87, 0, 4813, 1024, 52, 49, 38, 255 }, // 0x00001410
};

Vtx_t _jyasinzou_room_23_vertices_00001420[11] = 
{
	 { 480, 843, 289, 0, 4096, 4096, 81, 72, 55, 255 }, // 0x00001420
	 { 680, 1343, 289, 0, 683, -171, 158, 142, 111, 255 }, // 0x00001430
	 { 680, 843, 289, 0, 683, 4096, 81, 72, 55, 255 }, // 0x00001440
	 { 880, 843, 289, 0, -2731, 4096, 81, 72, 55, 255 }, // 0x00001450
	 { 880, 1843, 289, 0, -2731, -4437, 69, 62, 48, 255 }, // 0x00001460
	 { 480, 1843, 289, 0, 4096, -4437, 69, 62, 48, 255 }, // 0x00001470
	 { 480, 1843, -87, 0, -2321, -4437, 69, 62, 48, 255 }, // 0x00001480
	 { 480, 1343, 101, 0, 887, -171, 158, 142, 111, 255 }, // 0x00001490
	 { 480, 843, -87, 0, -2321, 4096, 52, 49, 38, 255 }, // 0x000014A0
	 { 480, 843, 289, 0, 4096, 4096, 69, 62, 48, 255 }, // 0x000014B0
	 { 480, 1843, 289, 0, 4096, -4437, 69, 62, 48, 255 }, // 0x000014C0
};

Vtx_t _jyasinzou_room_23_vertices_000014D0[8] = 
{
	 { 480, 843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014D0
	 { 880, 843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014E0
	 { 480, 1843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x000014F0
	 { 880, 1843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001500
	 { 480, 843, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001510
	 { 880, 843, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001520
	 { 480, 1843, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001530
	 { 880, 1843, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001540
};

Gfx _jyasinzou_room_23_dlist_00001550[] =
{
	gsDPPipeSync(), // 0x00001550
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001558
	gsSPVertex(_jyasinzou_room_23_vertices_000014D0, 8, 0), // 0x00001560
	gsSPCullDisplayList(0, 7), // 0x00001568
	gsDPPipeSync(), // 0x00001570
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001578
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001580
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001588
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00006038), // 0x00001590
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001598
	gsDPLoadSync(), // 0x000015A0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000015A8
	gsDPPipeSync(), // 0x000015B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000015B8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000015C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x000015C8
	gsDPTileSync(), // 0x000015D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000015D8
	gsDPLoadSync(), // 0x000015E0
	gsDPLoadTLUTCmd(7, 255), // 0x000015E8
	gsDPPipeSync(), // 0x000015F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000015F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001600
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001608
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001610
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001618
	gsSPVertex(_jyasinzou_room_23_vertices_000013D0, 5, 0), // 0x00001620
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001628
	gsSP1Triangle(3, 4, 2, 0), // 0x00001630
	gsDPPipeSync(), // 0x00001638
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00005838), // 0x00001640
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001648
	gsDPLoadSync(), // 0x00001650
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001658
	gsDPPipeSync(), // 0x00001660
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001668
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001670
	gsSPVertex(_jyasinzou_room_23_vertices_00001420, 11, 0), // 0x00001678
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001680
	gsSP2Triangles(1, 4, 3, 0, 0, 5, 1, 0), // 0x00001688
	gsSP2Triangles(5, 4, 1, 0, 6, 7, 8, 0), // 0x00001690
	gsSP2Triangles(7, 9, 8, 0, 6, 10, 7, 0), // 0x00001698
	gsSP1Triangle(10, 9, 7, 0), // 0x000016A0
	gsSPEndDisplayList(), // 0x000016A8
};

Vtx_t _jyasinzou_room_23_vertices_000016B0[13] = 
{
	 { 880, 843, 210, 0, -607, -1846, 81, 72, 55, 255 }, // 0x000016B0
	 { 690, 843, 289, 0, 486, -589, 81, 72, 55, 255 }, // 0x000016C0
	 { 880, 843, 289, 0, 0, -2048, 69, 62, 48, 255 }, // 0x000016D0
	 { 680, 843, 121, 0, -778, -82, 177, 164, 138, 255 }, // 0x000016E0
	 { 880, 843, 150, 0, -1068, -1692, 115, 102, 78, 255 }, // 0x000016F0
	 { 880, 843, 90, 0, -1529, -1538, 100, 89, 67, 255 }, // 0x00001700
	 { 1060, 843, 210, 0, -1068, -3228, 52, 49, 38, 255 }, // 0x00001710
	 { 1060, 843, 150, 0, -1529, -3074, 52, 49, 38, 255 }, // 0x00001720
	 { 1060, 843, 90, 0, -1990, -2921, 52, 49, 38, 255 }, // 0x00001730
	 { 480, 843, 289, 0, 1024, 1024, 69, 62, 48, 255 }, // 0x00001740
	 { 480, 843, -87, 0, -1864, 1987, 52, 49, 38, 255 }, // 0x00001750
	 { 680, 843, -87, 0, -2376, 451, 81, 72, 55, 255 }, // 0x00001760
	 { 880, 843, -87, 0, -2888, -1085, 52, 49, 38, 255 }, // 0x00001770
};

Vtx_t _jyasinzou_room_23_vertices_00001780[8] = 
{
	 { 480, 843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001780
	 { 1060, 843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001790
	 { 480, 843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017A0
	 { 1060, 843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017B0
	 { 480, 843, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017C0
	 { 1060, 843, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017D0
	 { 480, 843, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017E0
	 { 1060, 843, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017F0
};

Gfx _jyasinzou_room_23_dlist_00001800[] =
{
	gsDPPipeSync(), // 0x00001800
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001808
	gsSPVertex(_jyasinzou_room_23_vertices_00001780, 8, 0), // 0x00001810
	gsSPCullDisplayList(0, 7), // 0x00001818
	gsDPPipeSync(), // 0x00001820
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001828
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001830
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001838
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00007C38), // 0x00001840
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001848
	gsDPLoadSync(), // 0x00001850
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001858
	gsDPPipeSync(), // 0x00001860
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001868
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001870
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001878
	gsDPTileSync(), // 0x00001880
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001888
	gsDPLoadSync(), // 0x00001890
	gsDPLoadTLUTCmd(7, 255), // 0x00001898
	gsDPPipeSync(), // 0x000018A0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000018A8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000018B0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000018B8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000018C0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000018C8
	gsSPVertex(_jyasinzou_room_23_vertices_000016B0, 13, 0), // 0x000018D0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000018D8
	gsSP2Triangles(3, 0, 4, 0, 0, 6, 7, 0), // 0x000018E0
	gsSP2Triangles(0, 7, 4, 0, 7, 8, 5, 0), // 0x000018E8
	gsSP2Triangles(7, 5, 4, 0, 0, 3, 1, 0), // 0x000018F0
	gsSP2Triangles(3, 9, 1, 0, 9, 3, 10, 0), // 0x000018F8
	gsSP2Triangles(3, 11, 10, 0, 5, 12, 3, 0), // 0x00001900
	gsSP1Triangle(12, 11, 3, 0), // 0x00001908
	gsSPEndDisplayList(), // 0x00001910
};

Vtx_t _jyasinzou_room_23_vertices_00001918[21] = 
{
	 { 880, 843, -87, 0, -2321, 4096, 52, 49, 38, 255 }, // 0x00001918
	 { 880, 1003, 90, 0, 699, 2731, 158, 142, 111, 255 }, // 0x00001928
	 { 880, 1843, -87, 0, -2321, -4437, 69, 62, 48, 255 }, // 0x00001938
	 { 880, 1343, 163, 0, 1946, -171, 158, 142, 111, 255 }, // 0x00001948
	 { 880, 843, 90, 0, 699, 4096, 158, 142, 111, 255 }, // 0x00001958
	 { 880, 843, 210, 0, 2747, 4096, 158, 142, 111, 255 }, // 0x00001968
	 { 880, 843, 289, 0, 4096, 4096, 69, 62, 48, 255 }, // 0x00001978
	 { 880, 1003, 210, 0, 2747, 2731, 158, 142, 111, 255 }, // 0x00001988
	 { 880, 1843, 289, 0, 4096, -4437, 69, 62, 48, 255 }, // 0x00001998
	 { 880, 843, 90, 0, 3413, 1024, 100, 89, 67, 255 }, // 0x000019A8
	 { 1060, 843, 90, 0, 341, 1024, 100, 89, 67, 255 }, // 0x000019B8
	 { 1060, 1003, 90, 0, 341, -341, 52, 49, 38, 255 }, // 0x000019C8
	 { 880, 1003, 90, 0, 3413, -341, 52, 49, 38, 255 }, // 0x000019D8
	 { 880, 1003, 210, 0, 3413, -341, 52, 49, 38, 255 }, // 0x000019E8
	 { 1060, 1003, 210, 0, 341, -341, 52, 49, 38, 255 }, // 0x000019F8
	 { 1060, 843, 210, 0, 341, 1024, 100, 89, 67, 255 }, // 0x00001A08
	 { 880, 843, 210, 0, 3413, 1024, 115, 102, 78, 255 }, // 0x00001A18
	 { 880, 1003, 90, 0, 2048, -683, 52, 49, 38, 255 }, // 0x00001A28
	 { 1060, 1003, 90, 0, 2048, 853, 52, 49, 38, 255 }, // 0x00001A38
	 { 1060, 1003, 210, 0, 0, 853, 52, 49, 38, 255 }, // 0x00001A48
	 { 880, 1003, 210, 0, 0, -683, 52, 49, 38, 255 }, // 0x00001A58
};

Vtx_t _jyasinzou_room_23_vertices_00001A68[8] = 
{
	 { 880, 843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A68
	 { 1060, 843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A78
	 { 880, 1843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A88
	 { 1060, 1843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A98
	 { 880, 843, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AA8
	 { 1060, 843, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AB8
	 { 880, 1843, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AC8
	 { 1060, 1843, 289, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AD8
};

Gfx _jyasinzou_room_23_dlist_00001AE8[] =
{
	gsDPPipeSync(), // 0x00001AE8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001AF0
	gsSPVertex(_jyasinzou_room_23_vertices_00001A68, 8, 0), // 0x00001AF8
	gsSPCullDisplayList(0, 7), // 0x00001B00
	gsDPPipeSync(), // 0x00001B08
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001B10
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001B18
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001B20
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00005838), // 0x00001B28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001B30
	gsDPLoadSync(), // 0x00001B38
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001B40
	gsDPPipeSync(), // 0x00001B48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001B50
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001B58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00001B60
	gsDPTileSync(), // 0x00001B68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001B70
	gsDPLoadSync(), // 0x00001B78
	gsDPLoadTLUTCmd(7, 255), // 0x00001B80
	gsDPPipeSync(), // 0x00001B88
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001B90
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001B98
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001BA0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001BA8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001BB0
	gsSPVertex(_jyasinzou_room_23_vertices_00001918, 21, 0), // 0x00001BB8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001BC0
	gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0), // 0x00001BC8
	gsSP2Triangles(6, 8, 7, 0, 8, 3, 7, 0), // 0x00001BD0
	gsSP2Triangles(8, 2, 3, 0, 7, 3, 1, 0), // 0x00001BD8
	gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0), // 0x00001BE0
	gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0), // 0x00001BE8
	gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0), // 0x00001BF0
	gsSPEndDisplayList(), // 0x00001BF8
};

Vtx_t _jyasinzou_room_23_vertices_00001C00[8] = 
{
	 { 780, 843, -87, 0, 3072, 2048, 115, 102, 78, 255 }, // 0x00001C00
	 { 880, 843, -87, 0, 4096, 2048, 52, 49, 38, 255 }, // 0x00001C10
	 { 880, 943, -87, 0, 4096, 1024, 158, 142, 111, 255 }, // 0x00001C20
	 { 780, 943, -87, 0, 3072, 1024, 158, 142, 111, 255 }, // 0x00001C30
	 { 480, 943, -87, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00001C40
	 { 480, 843, -87, 0, 0, 2048, 52, 49, 38, 255 }, // 0x00001C50
	 { 580, 843, -87, 0, 1024, 2048, 115, 102, 78, 255 }, // 0x00001C60
	 { 580, 943, -87, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x00001C70
};

Vtx_t _jyasinzou_room_23_vertices_00001C80[8] = 
{
	 { 780, 1443, -87, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x00001C80
	 { 880, 1443, -87, 0, 2048, 1024, 158, 142, 111, 255 }, // 0x00001C90
	 { 880, 1543, -87, 0, 2048, 0, 158, 142, 111, 255 }, // 0x00001CA0
	 { 780, 1543, -87, 0, 1024, 0, 158, 142, 111, 255 }, // 0x00001CB0
	 { 480, 1543, -87, 0, 0, 0, 158, 142, 111, 255 }, // 0x00001CC0
	 { 480, 1443, -87, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00001CD0
	 { 580, 1443, -87, 0, 1024, 1024, 158, 142, 111, 255 }, // 0x00001CE0
	 { 580, 1543, -87, 0, 1024, 0, 158, 142, 111, 255 }, // 0x00001CF0
};

Vtx_t _jyasinzou_room_23_vertices_00001D00[8] = 
{
	 { 780, 843, -87, 0, 6144, 1243, 115, 102, 78, 255 }, // 0x00001D00
	 { 780, 943, -87, 0, 6144, -1829, 158, 142, 111, 255 }, // 0x00001D10
	 { 580, 943, -87, 0, 0, -1829, 158, 142, 111, 255 }, // 0x00001D20
	 { 580, 843, -87, 0, 0, 1243, 115, 102, 78, 255 }, // 0x00001D30
	 { 780, 1443, -87, 0, 6144, 1243, 115, 102, 78, 255 }, // 0x00001D40
	 { 780, 1543, -87, 0, 6144, -1829, 158, 142, 111, 255 }, // 0x00001D50
	 { 580, 1543, -87, 0, 0, -1829, 158, 142, 111, 255 }, // 0x00001D60
	 { 580, 1443, -87, 0, 0, 1243, 115, 102, 78, 255 }, // 0x00001D70
};

Vtx_t _jyasinzou_room_23_vertices_00001D80[8] = 
{
	 { 480, 843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D80
	 { 880, 843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D90
	 { 480, 1543, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DA0
	 { 880, 1543, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DB0
	 { 480, 843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DC0
	 { 880, 843, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DD0
	 { 480, 1543, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DE0
	 { 880, 1543, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DF0
};

Gfx _jyasinzou_room_23_dlist_00001E00[] =
{
	gsDPPipeSync(), // 0x00001E00
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001E08
	gsSPVertex(_jyasinzou_room_23_vertices_00001D80, 8, 0), // 0x00001E10
	gsSPCullDisplayList(0, 7), // 0x00001E18
	gsDPPipeSync(), // 0x00001E20
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001E28
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001E30
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001E38
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00008838), // 0x00001E40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001E48
	gsDPLoadSync(), // 0x00001E50
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001E58
	gsDPPipeSync(), // 0x00001E60
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001E68
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001E70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001E78
	gsDPTileSync(), // 0x00001E80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001E88
	gsDPLoadSync(), // 0x00001E90
	gsDPLoadTLUTCmd(7, 15), // 0x00001E98
	gsDPPipeSync(), // 0x00001EA0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001EA8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001EB0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001EB8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001EC0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001EC8
	gsSPVertex(_jyasinzou_room_23_vertices_00001C00, 8, 0), // 0x00001ED0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001ED8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001EE0
	gsDPPipeSync(), // 0x00001EE8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00008038), // 0x00001EF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001EF8
	gsDPLoadSync(), // 0x00001F00
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001F08
	gsDPPipeSync(), // 0x00001F10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001F18
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001F20
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001F28
	gsDPTileSync(), // 0x00001F30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001F38
	gsDPLoadSync(), // 0x00001F40
	gsDPLoadTLUTCmd(7, 255), // 0x00001F48
	gsDPPipeSync(), // 0x00001F50
	gsSPVertex(_jyasinzou_room_23_vertices_00001C80, 8, 0), // 0x00001F58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001F60
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001F68
	gsDPPipeSync(), // 0x00001F70
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00007438), // 0x00001F78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001F80
	gsDPLoadSync(), // 0x00001F88
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001F90
	gsDPPipeSync(), // 0x00001F98
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001FA0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001FA8
	gsSPVertex(_jyasinzou_room_23_vertices_00001D00, 8, 0), // 0x00001FB0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001FB8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001FC0
	gsSPEndDisplayList(), // 0x00001FC8
};

Vtx_t _jyasinzou_room_23_vertices_00001FD0[32] = 
{
	 { 500, 1343, -57, 0, 25600, 0, 203, 195, 178, 255 }, // 0x00001FD0
	 { 500, 1443, -57, 0, 20480, 0, 203, 195, 178, 255 }, // 0x00001FE0
	 { 480, 1443, -57, 0, 20480, 1024, 203, 195, 178, 255 }, // 0x00001FF0
	 { 480, 1343, -57, 0, 25600, 1024, 203, 195, 178, 255 }, // 0x00002000
	 { 500, 1343, -77, 0, 25600, 0, 189, 178, 157, 255 }, // 0x00002010
	 { 500, 1443, -77, 0, 20480, 0, 189, 178, 157, 255 }, // 0x00002020
	 { 480, 1443, -77, 0, 20480, 1024, 189, 178, 157, 255 }, // 0x00002030
	 { 480, 1343, -77, 0, 25600, 1024, 189, 178, 157, 255 }, // 0x00002040
	 { 500, 1343, -37, 0, 25600, 0, 255, 255, 255, 255 }, // 0x00002050
	 { 500, 1443, -37, 0, 20480, 0, 255, 255, 255, 255 }, // 0x00002060
	 { 480, 1443, -37, 0, 20480, 1024, 255, 255, 255, 255 }, // 0x00002070
	 { 480, 1343, -37, 0, 25600, 1024, 255, 255, 255, 255 }, // 0x00002080
	 { 480, 1373, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002090
	 { 500, 1373, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000020A0
	 { 500, 1373, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000020B0
	 { 480, 1373, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000020C0
	 { 480, 1353, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x000020D0
	 { 500, 1353, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000020E0
	 { 500, 1353, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000020F0
	 { 480, 1353, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002100
	 { 480, 1433, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002110
	 { 500, 1433, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002120
	 { 500, 1433, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002130
	 { 480, 1433, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002140
	 { 480, 1413, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002150
	 { 500, 1413, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002160
	 { 500, 1413, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002170
	 { 480, 1413, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002180
	 { 480, 1393, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002190
	 { 500, 1393, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000021A0
	 { 500, 1393, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000021B0
	 { 480, 1393, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000021C0
};

Vtx_t _jyasinzou_room_23_vertices_000021D0[32] = 
{
	 { 480, 873, -27, 0, 3072, 1024, 189, 178, 157, 255 }, // 0x000021D0
	 { 500, 873, -27, 0, 3072, 0, 189, 178, 157, 255 }, // 0x000021E0
	 { 500, 873, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000021F0
	 { 480, 873, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002200
	 { 480, 933, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002210
	 { 500, 933, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002220
	 { 500, 933, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002230
	 { 480, 933, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002240
	 { 480, 913, -27, 0, 3072, 1024, 189, 178, 157, 255 }, // 0x00002250
	 { 500, 913, -27, 0, 3072, 0, 189, 178, 157, 255 }, // 0x00002260
	 { 500, 913, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002270
	 { 480, 913, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002280
	 { 480, 893, -27, 0, 3072, 1024, 189, 178, 157, 255 }, // 0x00002290
	 { 500, 893, -27, 0, 3072, 0, 189, 178, 157, 255 }, // 0x000022A0
	 { 500, 893, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000022B0
	 { 480, 893, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000022C0
	 { 480, 973, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x000022D0
	 { 500, 973, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000022E0
	 { 500, 973, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000022F0
	 { 480, 973, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002300
	 { 480, 953, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002310
	 { 500, 953, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002320
	 { 500, 953, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002330
	 { 480, 953, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002340
	 { 480, 993, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002350
	 { 500, 993, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002360
	 { 500, 993, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002370
	 { 480, 993, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002380
	 { 480, 1013, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002390
	 { 500, 1013, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000023A0
	 { 500, 1013, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000023B0
	 { 480, 1013, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000023C0
};

Vtx_t _jyasinzou_room_23_vertices_000023D0[32] = 
{
	 { 480, 1173, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x000023D0
	 { 500, 1173, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000023E0
	 { 500, 1173, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000023F0
	 { 480, 1173, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002400
	 { 480, 1153, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002410
	 { 500, 1153, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002420
	 { 500, 1153, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002430
	 { 480, 1153, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002440
	 { 480, 1113, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002450
	 { 500, 1113, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002460
	 { 500, 1113, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002470
	 { 480, 1113, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002480
	 { 480, 1133, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002490
	 { 500, 1133, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000024A0
	 { 500, 1133, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000024B0
	 { 480, 1133, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000024C0
	 { 480, 1053, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x000024D0
	 { 500, 1053, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000024E0
	 { 500, 1053, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000024F0
	 { 480, 1053, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002500
	 { 480, 1033, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002510
	 { 500, 1033, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002520
	 { 500, 1033, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002530
	 { 480, 1033, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002540
	 { 480, 1073, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002550
	 { 500, 1073, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002560
	 { 500, 1073, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002570
	 { 480, 1073, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002580
	 { 480, 1093, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002590
	 { 500, 1093, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000025A0
	 { 500, 1093, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000025B0
	 { 480, 1093, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000025C0
};

Vtx_t _jyasinzou_room_23_vertices_000025D0[32] = 
{
	 { 480, 1253, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x000025D0
	 { 500, 1253, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000025E0
	 { 500, 1253, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000025F0
	 { 480, 1253, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002600
	 { 480, 1233, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002610
	 { 500, 1233, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002620
	 { 500, 1233, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002630
	 { 480, 1233, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002640
	 { 480, 1193, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002650
	 { 500, 1193, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002660
	 { 500, 1193, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002670
	 { 480, 1193, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002680
	 { 480, 1213, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002690
	 { 500, 1213, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000026A0
	 { 500, 1213, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000026B0
	 { 480, 1213, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000026C0
	 { 480, 1293, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x000026D0
	 { 500, 1293, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000026E0
	 { 500, 1293, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000026F0
	 { 480, 1293, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002700
	 { 480, 1273, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002710
	 { 500, 1273, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002720
	 { 500, 1273, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002730
	 { 480, 1273, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002740
	 { 480, 1313, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002750
	 { 500, 1313, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002760
	 { 500, 1313, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002770
	 { 480, 1313, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002780
	 { 480, 1333, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002790
	 { 500, 1333, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000027A0
	 { 500, 1333, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000027B0
	 { 480, 1333, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000027C0
};

Vtx_t _jyasinzou_room_23_vertices_000027D0[32] = 
{
	 { 500, 1443, -57, 0, 25600, 0, 203, 195, 178, 255 }, // 0x000027D0
	 { 500, 1543, -57, 0, 20480, 0, 203, 195, 178, 255 }, // 0x000027E0
	 { 480, 1543, -57, 0, 20480, 1024, 203, 195, 178, 255 }, // 0x000027F0
	 { 480, 1443, -57, 0, 25600, 1024, 203, 195, 178, 255 }, // 0x00002800
	 { 500, 1443, -77, 0, 25600, 0, 189, 178, 157, 255 }, // 0x00002810
	 { 500, 1543, -77, 0, 20480, 0, 189, 178, 157, 255 }, // 0x00002820
	 { 480, 1543, -77, 0, 20480, 1024, 189, 178, 157, 255 }, // 0x00002830
	 { 480, 1443, -77, 0, 25600, 1024, 189, 178, 157, 255 }, // 0x00002840
	 { 500, 1443, -37, 0, 25600, 0, 255, 255, 255, 255 }, // 0x00002850
	 { 500, 1543, -37, 0, 20480, 0, 255, 255, 255, 255 }, // 0x00002860
	 { 480, 1543, -37, 0, 20480, 1024, 255, 255, 255, 255 }, // 0x00002870
	 { 480, 1443, -37, 0, 25600, 1024, 255, 255, 255, 255 }, // 0x00002880
	 { 480, 1473, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002890
	 { 500, 1473, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000028A0
	 { 500, 1473, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000028B0
	 { 480, 1473, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000028C0
	 { 480, 1453, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x000028D0
	 { 500, 1453, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000028E0
	 { 500, 1453, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000028F0
	 { 480, 1453, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002900
	 { 480, 1533, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002910
	 { 500, 1533, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002920
	 { 500, 1533, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002930
	 { 480, 1533, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002940
	 { 480, 1513, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002950
	 { 500, 1513, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002960
	 { 500, 1513, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002970
	 { 480, 1513, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002980
	 { 480, 1493, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002990
	 { 500, 1493, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000029A0
	 { 500, 1493, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000029B0
	 { 480, 1493, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000029C0
};

Vtx_t _jyasinzou_room_23_vertices_000029D0[12] = 
{
	 { 500, 863, -37, 0, 24614, 0, 189, 178, 157, 255 }, // 0x000029D0
	 { 500, 1343, -37, 0, 0, 0, 255, 255, 255, 255 }, // 0x000029E0
	 { 480, 1343, -37, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000029F0
	 { 480, 863, -37, 0, 24614, 1024, 189, 178, 157, 255 }, // 0x00002A00
	 { 500, 863, -77, 0, 24614, 0, 189, 178, 157, 255 }, // 0x00002A10
	 { 500, 1343, -77, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002A20
	 { 480, 1343, -77, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002A30
	 { 480, 863, -77, 0, 24614, 1024, 189, 178, 157, 255 }, // 0x00002A40
	 { 500, 863, -57, 0, 24614, 0, 203, 195, 178, 255 }, // 0x00002A50
	 { 500, 1343, -57, 0, 0, 0, 203, 195, 178, 255 }, // 0x00002A60
	 { 480, 1343, -57, 0, 0, 1024, 203, 195, 178, 255 }, // 0x00002A70
	 { 480, 863, -57, 0, 24614, 1024, 203, 195, 178, 255 }, // 0x00002A80
};

Vtx_t _jyasinzou_room_23_vertices_00002A90[8] = 
{
	 { 480, 863, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002A90
	 { 500, 863, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AA0
	 { 480, 1543, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AB0
	 { 500, 1543, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AC0
	 { 480, 863, -27, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AD0
	 { 500, 863, -27, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AE0
	 { 480, 1543, -27, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002AF0
	 { 500, 1543, -27, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002B00
};

Gfx _jyasinzou_room_23_dlist_00002B10[] =
{
	gsDPPipeSync(), // 0x00002B10
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002B18
	gsSPVertex(_jyasinzou_room_23_vertices_00002A90, 8, 0), // 0x00002B20
	gsSPCullDisplayList(0, 7), // 0x00002B28
	gsDPPipeSync(), // 0x00002B30
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002B38
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002B40
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002B48
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00006C38), // 0x00002B50
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x00002B58
	gsDPLoadSync(), // 0x00002B60
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002B68
	gsDPPipeSync(), // 0x00002B70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x00002B78
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002B80
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002B88
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00002B90
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00002B98
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x00002BA0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002BA8
	gsSPVertex(_jyasinzou_room_23_vertices_00001FD0, 32, 0), // 0x00002BB0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002BB8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002BC0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002BC8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002BD0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002BD8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002BE0
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002BE8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002BF0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002BF8
	gsSPVertex(_jyasinzou_room_23_vertices_000021D0, 32, 0), // 0x00002C00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002C08
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002C10
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002C18
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002C20
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002C28
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002C30
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002C38
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002C40
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002C48
	gsSPVertex(_jyasinzou_room_23_vertices_000023D0, 32, 0), // 0x00002C50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002C58
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002C60
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002C68
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002C70
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002C78
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002C80
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002C88
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002C90
	gsSPVertex(_jyasinzou_room_23_vertices_000025D0, 32, 0), // 0x00002C98
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002CA0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002CA8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002CB0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002CB8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002CC0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002CC8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002CD0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002CD8
	gsSPVertex(_jyasinzou_room_23_vertices_000027D0, 32, 0), // 0x00002CE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002CE8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002CF0
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002CF8
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002D00
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00002D08
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00002D10
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00002D18
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00002D20
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00002D28
	gsSPVertex(_jyasinzou_room_23_vertices_000029D0, 12, 0), // 0x00002D30
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002D38
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00002D40
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00002D48
	gsSPEndDisplayList(), // 0x00002D50
};

Vtx_t _jyasinzou_room_23_vertices_00002D58[32] = 
{
	 { 880, 1443, -57, 0, 25600, 1024, 203, 195, 178, 255 }, // 0x00002D58
	 { 880, 1543, -57, 0, 20480, 1024, 203, 195, 178, 255 }, // 0x00002D68
	 { 860, 1543, -57, 0, 20480, 0, 203, 195, 178, 255 }, // 0x00002D78
	 { 860, 1443, -57, 0, 25600, 0, 203, 195, 178, 255 }, // 0x00002D88
	 { 880, 1443, -77, 0, 25600, 1024, 189, 178, 157, 255 }, // 0x00002D98
	 { 880, 1543, -77, 0, 20480, 1024, 189, 178, 157, 255 }, // 0x00002DA8
	 { 860, 1543, -77, 0, 20480, 0, 189, 178, 157, 255 }, // 0x00002DB8
	 { 860, 1443, -77, 0, 25600, 0, 189, 178, 157, 255 }, // 0x00002DC8
	 { 880, 1443, -37, 0, 25600, 1024, 255, 255, 255, 255 }, // 0x00002DD8
	 { 880, 1543, -37, 0, 20480, 1024, 255, 255, 255, 255 }, // 0x00002DE8
	 { 860, 1543, -37, 0, 20480, 0, 255, 255, 255, 255 }, // 0x00002DF8
	 { 860, 1443, -37, 0, 25600, 0, 255, 255, 255, 255 }, // 0x00002E08
	 { 880, 1473, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002E18
	 { 860, 1473, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002E28
	 { 860, 1473, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002E38
	 { 880, 1473, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002E48
	 { 880, 1453, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002E58
	 { 860, 1453, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002E68
	 { 860, 1453, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002E78
	 { 880, 1453, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002E88
	 { 880, 1533, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002E98
	 { 860, 1533, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002EA8
	 { 860, 1533, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002EB8
	 { 880, 1533, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002EC8
	 { 880, 1513, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002ED8
	 { 860, 1513, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002EE8
	 { 860, 1513, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002EF8
	 { 880, 1513, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002F08
	 { 880, 1493, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002F18
	 { 860, 1493, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002F28
	 { 860, 1493, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002F38
	 { 880, 1493, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002F48
};

Vtx_t _jyasinzou_room_23_vertices_00002F58[32] = 
{
	 { 880, 1333, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002F58
	 { 860, 1333, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002F68
	 { 860, 1333, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002F78
	 { 880, 1333, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002F88
	 { 880, 1313, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002F98
	 { 860, 1313, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002FA8
	 { 860, 1313, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002FB8
	 { 880, 1313, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00002FC8
	 { 880, 1393, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00002FD8
	 { 860, 1393, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00002FE8
	 { 860, 1393, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00002FF8
	 { 880, 1393, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003008
	 { 880, 1373, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003018
	 { 860, 1373, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00003028
	 { 860, 1373, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00003038
	 { 880, 1373, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003048
	 { 880, 1413, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003058
	 { 860, 1413, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00003068
	 { 860, 1413, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00003078
	 { 880, 1413, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003088
	 { 880, 1433, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003098
	 { 860, 1433, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000030A8
	 { 860, 1433, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000030B8
	 { 880, 1433, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x000030C8
	 { 880, 1353, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000030D8
	 { 860, 1353, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000030E8
	 { 860, 1353, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000030F8
	 { 880, 1353, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003108
	 { 880, 1343, -37, 0, 25600, 1024, 255, 255, 255, 255 }, // 0x00003118
	 { 880, 1443, -37, 0, 20480, 1024, 255, 255, 255, 255 }, // 0x00003128
	 { 860, 1443, -37, 0, 20480, 0, 255, 255, 255, 255 }, // 0x00003138
	 { 860, 1343, -37, 0, 25600, 0, 255, 255, 255, 255 }, // 0x00003148
};

Vtx_t _jyasinzou_room_23_vertices_00003158[32] = 
{
	 { 880, 1343, -77, 0, 25600, 1024, 189, 178, 157, 255 }, // 0x00003158
	 { 880, 1443, -77, 0, 20480, 1024, 189, 178, 157, 255 }, // 0x00003168
	 { 860, 1443, -77, 0, 20480, 0, 189, 178, 157, 255 }, // 0x00003178
	 { 860, 1343, -77, 0, 25600, 0, 189, 178, 157, 255 }, // 0x00003188
	 { 880, 1343, -57, 0, 25600, 1024, 203, 195, 178, 255 }, // 0x00003198
	 { 880, 1443, -57, 0, 20480, 1024, 203, 195, 178, 255 }, // 0x000031A8
	 { 860, 1443, -57, 0, 20480, 0, 203, 195, 178, 255 }, // 0x000031B8
	 { 860, 1343, -57, 0, 25600, 0, 203, 195, 178, 255 }, // 0x000031C8
	 { 880, 873, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000031D8
	 { 860, 873, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000031E8
	 { 860, 873, -27, 0, 3072, 0, 189, 178, 157, 255 }, // 0x000031F8
	 { 880, 873, -27, 0, 3072, 1024, 189, 178, 157, 255 }, // 0x00003208
	 { 880, 933, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003218
	 { 860, 933, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00003228
	 { 860, 933, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00003238
	 { 880, 933, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003248
	 { 880, 913, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003258
	 { 860, 913, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00003268
	 { 860, 913, -27, 0, 3072, 0, 189, 178, 157, 255 }, // 0x00003278
	 { 880, 913, -27, 0, 3072, 1024, 189, 178, 157, 255 }, // 0x00003288
	 { 880, 893, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003298
	 { 860, 893, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000032A8
	 { 860, 893, -27, 0, 3072, 0, 189, 178, 157, 255 }, // 0x000032B8
	 { 880, 893, -27, 0, 3072, 1024, 189, 178, 157, 255 }, // 0x000032C8
	 { 880, 973, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000032D8
	 { 860, 973, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000032E8
	 { 860, 973, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000032F8
	 { 880, 973, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003308
	 { 880, 953, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003318
	 { 860, 953, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00003328
	 { 860, 953, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00003338
	 { 880, 953, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003348
};

Vtx_t _jyasinzou_room_23_vertices_00003358[32] = 
{
	 { 880, 993, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003358
	 { 860, 993, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00003368
	 { 860, 993, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00003378
	 { 880, 993, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003388
	 { 880, 1013, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003398
	 { 860, 1013, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000033A8
	 { 860, 1013, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000033B8
	 { 880, 1013, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x000033C8
	 { 880, 1173, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000033D8
	 { 860, 1173, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000033E8
	 { 860, 1173, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000033F8
	 { 880, 1173, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003408
	 { 880, 1153, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003418
	 { 860, 1153, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00003428
	 { 860, 1153, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00003438
	 { 880, 1153, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003448
	 { 880, 1113, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003458
	 { 860, 1113, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00003468
	 { 860, 1113, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00003478
	 { 880, 1113, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003488
	 { 880, 1133, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003498
	 { 860, 1133, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000034A8
	 { 860, 1133, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000034B8
	 { 880, 1133, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x000034C8
	 { 880, 1053, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000034D8
	 { 860, 1053, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000034E8
	 { 860, 1053, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000034F8
	 { 880, 1053, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003508
	 { 880, 1033, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003518
	 { 860, 1033, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00003528
	 { 860, 1033, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00003538
	 { 880, 1033, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003548
};

Vtx_t _jyasinzou_room_23_vertices_00003558[32] = 
{
	 { 880, 1073, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003558
	 { 860, 1073, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00003568
	 { 860, 1073, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00003578
	 { 880, 1073, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003588
	 { 880, 1093, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003598
	 { 860, 1093, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000035A8
	 { 860, 1093, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000035B8
	 { 880, 1093, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x000035C8
	 { 880, 1253, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000035D8
	 { 860, 1253, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000035E8
	 { 860, 1253, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000035F8
	 { 880, 1253, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003608
	 { 880, 1233, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003618
	 { 860, 1233, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00003628
	 { 860, 1233, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00003638
	 { 880, 1233, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003648
	 { 880, 1193, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003658
	 { 860, 1193, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00003668
	 { 860, 1193, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00003678
	 { 880, 1193, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003688
	 { 880, 1213, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003698
	 { 860, 1213, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000036A8
	 { 860, 1213, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000036B8
	 { 880, 1213, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x000036C8
	 { 880, 1293, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000036D8
	 { 860, 1293, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x000036E8
	 { 860, 1293, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x000036F8
	 { 880, 1293, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003708
	 { 880, 1273, -87, 0, 0, 1024, 189, 178, 157, 255 }, // 0x00003718
	 { 860, 1273, -87, 0, 0, 0, 189, 178, 157, 255 }, // 0x00003728
	 { 860, 1273, -27, 0, 3072, 0, 255, 255, 255, 255 }, // 0x00003738
	 { 880, 1273, -27, 0, 3072, 1024, 255, 255, 255, 255 }, // 0x00003748
};

Vtx_t _jyasinzou_room_23_vertices_00003758[12] = 
{
	 { 880, 863, -57, 0, 24614, 1024, 203, 195, 178, 255 }, // 0x00003758
	 { 880, 1343, -57, 0, 0, 1024, 203, 195, 178, 255 }, // 0x00003768
	 { 860, 1343, -57, 0, 0, 0, 203, 195, 178, 255 }, // 0x00003778
	 { 860, 863, -57, 0, 24614, 0, 203, 195, 178, 255 }, // 0x00003788
	 { 880, 863, -77, 0, 24614, 1024, 189, 178, 157, 255 }, // 0x00003798
	 { 880, 1343, -77, 0, 0, 1024, 189, 178, 157, 255 }, // 0x000037A8
	 { 860, 1343, -77, 0, 0, 0, 189, 178, 157, 255 }, // 0x000037B8
	 { 860, 863, -77, 0, 24614, 0, 189, 178, 157, 255 }, // 0x000037C8
	 { 880, 863, -37, 0, 24614, 1024, 189, 178, 157, 255 }, // 0x000037D8
	 { 880, 1343, -37, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000037E8
	 { 860, 1343, -37, 0, 0, 0, 255, 255, 255, 255 }, // 0x000037F8
	 { 860, 863, -37, 0, 24614, 0, 189, 178, 157, 255 }, // 0x00003808
};

Vtx_t _jyasinzou_room_23_vertices_00003818[8] = 
{
	 { 860, 863, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003818
	 { 880, 863, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003828
	 { 860, 1543, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003838
	 { 880, 1543, -87, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003848
	 { 860, 863, -27, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003858
	 { 880, 863, -27, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003868
	 { 860, 1543, -27, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003878
	 { 880, 1543, -27, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003888
};

Gfx _jyasinzou_room_23_dlist_00003898[] =
{
	gsDPPipeSync(), // 0x00003898
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000038A0
	gsSPVertex(_jyasinzou_room_23_vertices_00003818, 8, 0), // 0x000038A8
	gsSPCullDisplayList(0, 7), // 0x000038B0
	gsDPPipeSync(), // 0x000038B8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000038C0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000038C8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000038D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00006C38), // 0x000038D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 0, 5, 0), // 0x000038E0
	gsDPLoadSync(), // 0x000038E8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000038F0
	gsDPPipeSync(), // 0x000038F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 0, 5, 0), // 0x00003900
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003908
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003910
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00003918
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00003920
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x00003928
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003930
	gsSPVertex(_jyasinzou_room_23_vertices_00002D58, 32, 0), // 0x00003938
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003940
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003948
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003950
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003958
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003960
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00003968
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00003970
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003978
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00003980
	gsSPVertex(_jyasinzou_room_23_vertices_00002F58, 32, 0), // 0x00003988
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003990
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003998
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000039A0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000039A8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000039B0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000039B8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x000039C0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000039C8
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000039D0
	gsSPVertex(_jyasinzou_room_23_vertices_00003158, 32, 0), // 0x000039D8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000039E0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000039E8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x000039F0
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000039F8
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003A00
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003A08
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00003A10
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00003A18
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00003A20
	gsSPVertex(_jyasinzou_room_23_vertices_00003358, 32, 0), // 0x00003A28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003A30
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003A38
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003A40
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003A48
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003A50
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00003A58
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00003A60
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00003A68
	gsSPVertex(_jyasinzou_room_23_vertices_00003558, 32, 0), // 0x00003A70
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003A78
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003A80
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003A88
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003A90
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003A98
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00003AA0
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00003AA8
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00003AB0
	gsSPVertex(_jyasinzou_room_23_vertices_00003758, 12, 0), // 0x00003AB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003AC0
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003AC8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003AD0
	gsSPEndDisplayList(), // 0x00003AD8
};

Vtx_t _jyasinzou_room_23_vertices_00003AE0[8] = 
{
	 { 560, 1603, -307, 0, 0, 0, 177, 164, 138, 255 }, // 0x00003AE0
	 { 560, 1603, -267, 0, 0, 1024, 177, 164, 138, 255 }, // 0x00003AF0
	 { 600, 1603, -267, 0, 1024, 1024, 177, 164, 138, 255 }, // 0x00003B00
	 { 600, 1603, -307, 0, 1024, 0, 177, 164, 138, 255 }, // 0x00003B10
	 { 760, 1603, -307, 0, 0, 0, 177, 164, 138, 255 }, // 0x00003B20
	 { 760, 1603, -267, 0, 0, 1024, 177, 164, 138, 255 }, // 0x00003B30
	 { 800, 1603, -267, 0, 1024, 1024, 177, 164, 138, 255 }, // 0x00003B40
	 { 800, 1603, -307, 0, 1024, 0, 177, 164, 138, 255 }, // 0x00003B50
};

Vtx_t _jyasinzou_room_23_vertices_00003B60[32] = 
{
	 { 560, 1543, -267, 0, 1024, 512, 100, 89, 67, 255 }, // 0x00003B60
	 { 560, 1603, -267, 0, 1024, 2048, 134, 119, 89, 255 }, // 0x00003B70
	 { 560, 1603, -307, 0, 0, 2048, 134, 119, 89, 255 }, // 0x00003B80
	 { 560, 1543, -307, 0, 0, 512, 100, 89, 67, 255 }, // 0x00003B90
	 { 600, 1543, -267, 0, 1024, 512, 177, 164, 138, 255 }, // 0x00003BA0
	 { 600, 1603, -267, 0, 1024, 2048, 177, 164, 138, 255 }, // 0x00003BB0
	 { 560, 1603, -267, 0, 0, 2048, 158, 142, 111, 255 }, // 0x00003BC0
	 { 560, 1543, -267, 0, 0, 512, 132, 88, 43, 255 }, // 0x00003BD0
	 { 600, 1543, -307, 0, 1024, 512, 177, 164, 138, 255 }, // 0x00003BE0
	 { 600, 1603, -307, 0, 1024, 2048, 177, 164, 138, 255 }, // 0x00003BF0
	 { 600, 1603, -267, 0, 0, 2048, 177, 164, 138, 255 }, // 0x00003C00
	 { 600, 1543, -267, 0, 0, 512, 177, 164, 138, 255 }, // 0x00003C10
	 { 560, 1543, -307, 0, 1024, 512, 132, 88, 43, 255 }, // 0x00003C20
	 { 560, 1603, -307, 0, 1024, 2048, 158, 142, 111, 255 }, // 0x00003C30
	 { 600, 1603, -307, 0, 0, 2048, 177, 164, 138, 255 }, // 0x00003C40
	 { 600, 1543, -307, 0, 0, 512, 177, 164, 138, 255 }, // 0x00003C50
	 { 760, 1543, -267, 0, 1024, 512, 177, 164, 138, 255 }, // 0x00003C60
	 { 760, 1603, -267, 0, 1024, 2048, 177, 164, 138, 255 }, // 0x00003C70
	 { 760, 1603, -307, 0, 0, 2048, 177, 164, 138, 255 }, // 0x00003C80
	 { 760, 1543, -307, 0, 0, 512, 177, 164, 138, 255 }, // 0x00003C90
	 { 800, 1543, -267, 0, 1024, 512, 132, 88, 43, 255 }, // 0x00003CA0
	 { 800, 1603, -267, 0, 1024, 2048, 158, 142, 111, 255 }, // 0x00003CB0
	 { 760, 1603, -267, 0, 0, 2048, 177, 164, 138, 255 }, // 0x00003CC0
	 { 760, 1543, -267, 0, 0, 512, 177, 164, 138, 255 }, // 0x00003CD0
	 { 800, 1543, -307, 0, 1024, 512, 100, 89, 67, 255 }, // 0x00003CE0
	 { 800, 1603, -307, 0, 1024, 2048, 134, 119, 89, 255 }, // 0x00003CF0
	 { 800, 1603, -267, 0, 0, 2048, 134, 119, 89, 255 }, // 0x00003D00
	 { 800, 1543, -267, 0, 0, 512, 100, 89, 67, 255 }, // 0x00003D10
	 { 760, 1543, -307, 0, 1024, 512, 177, 164, 138, 255 }, // 0x00003D20
	 { 760, 1603, -307, 0, 1024, 2048, 177, 164, 138, 255 }, // 0x00003D30
	 { 800, 1603, -307, 0, 0, 2048, 158, 142, 111, 255 }, // 0x00003D40
	 { 800, 1543, -307, 0, 0, 512, 132, 88, 43, 255 }, // 0x00003D50
};

Vtx_t _jyasinzou_room_23_vertices_00003D60[8] = 
{
	 { 560, 1543, -307, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003D60
	 { 800, 1543, -307, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003D70
	 { 560, 1603, -307, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003D80
	 { 800, 1603, -307, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003D90
	 { 560, 1543, -267, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003DA0
	 { 800, 1543, -267, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003DB0
	 { 560, 1603, -267, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003DC0
	 { 800, 1603, -267, 0, 0, 0, 0, 0, 0, 0 }, // 0x00003DD0
};

Gfx _jyasinzou_room_23_dlist_00003DE0[] =
{
	gsDPPipeSync(), // 0x00003DE0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00003DE8
	gsSPVertex(_jyasinzou_room_23_vertices_00003D60, 8, 0), // 0x00003DF0
	gsSPCullDisplayList(0, 7), // 0x00003DF8
	gsDPPipeSync(), // 0x00003E00
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00003E08
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00003E10
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00003E18
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00006038), // 0x00003E20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00003E28
	gsDPLoadSync(), // 0x00003E30
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00003E38
	gsDPPipeSync(), // 0x00003E40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00003E48
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00003E50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00003E58
	gsDPTileSync(), // 0x00003E60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00003E68
	gsDPLoadSync(), // 0x00003E70
	gsDPLoadTLUTCmd(7, 255), // 0x00003E78
	gsDPPipeSync(), // 0x00003E80
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00003E88
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00003E90
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00003E98
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00003EA0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00003EA8
	gsSPVertex(_jyasinzou_room_23_vertices_00003AE0, 8, 0), // 0x00003EB0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003EB8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003EC0
	gsDPPipeSync(), // 0x00003EC8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00005438), // 0x00003ED0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 4, 0), // 0x00003ED8
	gsDPLoadSync(), // 0x00003EE0
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x00003EE8
	gsDPPipeSync(), // 0x00003EF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 6, 0, 0, 4, 0), // 0x00003EF8
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x00003F00
	gsSPVertex(_jyasinzou_room_23_vertices_00003B60, 32, 0), // 0x00003F08
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00003F10
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00003F18
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00003F20
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00003F28
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00003F30
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00003F38
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00003F40
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00003F48
	gsSPEndDisplayList(), // 0x00003F50
};

Vtx_t _jyasinzou_room_23_vertices_00003F58[8] = 
{
	 { 560, 903, 13, 0, 0, 0, 177, 164, 138, 255 }, // 0x00003F58
	 { 560, 903, 53, 0, 0, 1024, 177, 164, 138, 255 }, // 0x00003F68
	 { 600, 903, 53, 0, 1024, 1024, 177, 164, 138, 255 }, // 0x00003F78
	 { 600, 903, 13, 0, 1024, 0, 177, 164, 138, 255 }, // 0x00003F88
	 { 760, 903, 13, 0, 0, 0, 177, 164, 138, 255 }, // 0x00003F98
	 { 760, 903, 53, 0, 0, 1024, 177, 164, 138, 255 }, // 0x00003FA8
	 { 800, 903, 53, 0, 1024, 1024, 177, 164, 138, 255 }, // 0x00003FB8
	 { 800, 903, 13, 0, 1024, 0, 177, 164, 138, 255 }, // 0x00003FC8
};

Vtx_t _jyasinzou_room_23_vertices_00003FD8[32] = 
{
	 { 560, 843, 53, 0, 1024, 512, 100, 89, 67, 255 }, // 0x00003FD8
	 { 560, 903, 53, 0, 1024, 2048, 134, 119, 89, 255 }, // 0x00003FE8
	 { 560, 903, 13, 0, 0, 2048, 134, 119, 89, 255 }, // 0x00003FF8
	 { 560, 843, 13, 0, 0, 512, 100, 89, 67, 255 }, // 0x00004008
	 { 600, 843, 53, 0, 1024, 512, 177, 164, 138, 255 }, // 0x00004018
	 { 600, 903, 53, 0, 1024, 2048, 177, 164, 138, 255 }, // 0x00004028
	 { 560, 903, 53, 0, 0, 2048, 158, 142, 111, 255 }, // 0x00004038
	 { 560, 843, 53, 0, 0, 512, 132, 88, 43, 255 }, // 0x00004048
	 { 600, 843, 13, 0, 1024, 512, 177, 164, 138, 255 }, // 0x00004058
	 { 600, 903, 13, 0, 1024, 2048, 177, 164, 138, 255 }, // 0x00004068
	 { 600, 903, 53, 0, 0, 2048, 177, 164, 138, 255 }, // 0x00004078
	 { 600, 843, 53, 0, 0, 512, 177, 164, 138, 255 }, // 0x00004088
	 { 560, 843, 13, 0, 1024, 512, 132, 88, 43, 255 }, // 0x00004098
	 { 560, 903, 13, 0, 1024, 2048, 158, 142, 111, 255 }, // 0x000040A8
	 { 600, 903, 13, 0, 0, 2048, 177, 164, 138, 255 }, // 0x000040B8
	 { 600, 843, 13, 0, 0, 512, 177, 164, 138, 255 }, // 0x000040C8
	 { 760, 843, 53, 0, 1024, 512, 177, 164, 138, 255 }, // 0x000040D8
	 { 760, 903, 53, 0, 1024, 2048, 177, 164, 138, 255 }, // 0x000040E8
	 { 760, 903, 13, 0, 0, 2048, 177, 164, 138, 255 }, // 0x000040F8
	 { 760, 843, 13, 0, 0, 512, 177, 164, 138, 255 }, // 0x00004108
	 { 800, 843, 53, 0, 1024, 512, 132, 88, 43, 255 }, // 0x00004118
	 { 800, 903, 53, 0, 1024, 2048, 158, 142, 111, 255 }, // 0x00004128
	 { 760, 903, 53, 0, 0, 2048, 177, 164, 138, 255 }, // 0x00004138
	 { 760, 843, 53, 0, 0, 512, 177, 164, 138, 255 }, // 0x00004148
	 { 800, 843, 13, 0, 1024, 512, 100, 89, 67, 255 }, // 0x00004158
	 { 800, 903, 13, 0, 1024, 2048, 134, 119, 89, 255 }, // 0x00004168
	 { 800, 903, 53, 0, 0, 2048, 134, 119, 89, 255 }, // 0x00004178
	 { 800, 843, 53, 0, 0, 512, 100, 89, 67, 255 }, // 0x00004188
	 { 760, 843, 13, 0, 1024, 512, 177, 164, 138, 255 }, // 0x00004198
	 { 760, 903, 13, 0, 1024, 2048, 177, 164, 138, 255 }, // 0x000041A8
	 { 800, 903, 13, 0, 0, 2048, 158, 142, 111, 255 }, // 0x000041B8
	 { 800, 843, 13, 0, 0, 512, 132, 88, 43, 255 }, // 0x000041C8
};

Vtx_t _jyasinzou_room_23_vertices_000041D8[8] = 
{
	 { 560, 843, 13, 0, 0, 0, 0, 0, 0, 0 }, // 0x000041D8
	 { 800, 843, 13, 0, 0, 0, 0, 0, 0, 0 }, // 0x000041E8
	 { 560, 903, 13, 0, 0, 0, 0, 0, 0, 0 }, // 0x000041F8
	 { 800, 903, 13, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004208
	 { 560, 843, 53, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004218
	 { 800, 843, 53, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004228
	 { 560, 903, 53, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004238
	 { 800, 903, 53, 0, 0, 0, 0, 0, 0, 0 }, // 0x00004248
};

Gfx _jyasinzou_room_23_dlist_00004258[] =
{
	gsDPPipeSync(), // 0x00004258
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00004260
	gsSPVertex(_jyasinzou_room_23_vertices_000041D8, 8, 0), // 0x00004268
	gsSPCullDisplayList(0, 7), // 0x00004270
	gsDPPipeSync(), // 0x00004278
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00004280
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00004288
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00004290
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00006038), // 0x00004298
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000042A0
	gsDPLoadSync(), // 0x000042A8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000042B0
	gsDPPipeSync(), // 0x000042B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000042C0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000042C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x000042D0
	gsDPTileSync(), // 0x000042D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000042E0
	gsDPLoadSync(), // 0x000042E8
	gsDPLoadTLUTCmd(7, 255), // 0x000042F0
	gsDPPipeSync(), // 0x000042F8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00004300
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00004308
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00004310
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00004318
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00004320
	gsSPVertex(_jyasinzou_room_23_vertices_00003F58, 8, 0), // 0x00004328
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004330
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004338
	gsDPPipeSync(), // 0x00004340
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_23_tex_00005438), // 0x00004348
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 0, 4, 0), // 0x00004350
	gsDPLoadSync(), // 0x00004358
	gsDPLoadBlock(7, 0, 0, 511, 1024), // 0x00004360
	gsDPPipeSync(), // 0x00004368
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0, 0, 0, 1, 6, 0, 0, 4, 0), // 0x00004370
	gsDPSetTileSize(0, 0, 0, 60, 252), // 0x00004378
	gsSPVertex(_jyasinzou_room_23_vertices_00003FD8, 32, 0), // 0x00004380
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00004388
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00004390
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00004398
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x000043A0
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x000043A8
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x000043B0
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x000043B8
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x000043C0
	gsSPEndDisplayList(), // 0x000043C8
};

static u8 unaccounted43D0[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0x48, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0xA0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0xE0, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x15, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x18, 0x00, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0xE8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1E, 0x00, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2B, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x38, 0x98, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3D, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x42, 0x58, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 _jyasinzou_room_23_tex_00004438[] = 
{
	0x150707044D074766, 0x7FCCD6D6D6D6D6CC, 0xAEAE474747666647, 0x475A15074D074747,  // 0x00004438 
	0x07070715155A1547, 0x7FCCD6AECCAECC7F, 0x6666667F7FAE7F47, 0x471507070715667F,  // 0x00004458 
	0x0707151515071515, 0xAECCAE7FAEAEAE66, 0x1547AE7F73664747, 0x07070707155A7F7F,  // 0x00004478 
	0x6615151515151515, 0x5A47071547667F15, 0x151547667F4E7315, 0x07044D0707477F7F,  // 0x00004498 
	0x66665A15155A1315, 0x155A07154715157F, 0x7F471515664E4715, 0x1507150715667FAE,  // 0x000044B8 
	0x7F4E4E1515151513, 0x15475A5A15154715, 0x4747150707471507, 0x071515151515667F,  // 0x000044D8 
	0x734E5A1515151515, 0x0715071515156647, 0x1547151547074D04, 0x07071515075AAEAE,  // 0x000044F8 
	0x4E4E471507151507, 0x040415071547D666, 0x4715151566150404, 0x071566474747CC7F,  // 0x00004518 
	0x4E4E151507071507, 0x040747664747AE47, 0x4715474747150411, 0x0715664715477F7F,  // 0x00004538 
	0x661515074D071507, 0x0407154E47667F66, 0x477F6647154D0704, 0x04075A4715477F73,  // 0x00004558 
	0x1507074D044D4D04, 0x044D5A5A15154707, 0x0747474707074D04, 0x044D15150715477F,  // 0x00004578 
	0x470707074D111111, 0x04075A4747157F15, 0x0715155A07070707, 0x044D07044D154766,  // 0x00004598 
	0x47475A1507070411, 0x0415474747474715, 0x1507476615071507, 0x07070C0415071566,  // 0x000045B8 
	0x5A475A1515150704, 0x0715476666661507, 0x47664E4E155A0707, 0x07070704155A5A4E,  // 0x000045D8 
	0x131507075A15154D, 0x4D07474707071515, 0x15664715070C1104, 0x0707070407155A4E,  // 0x000045F8 
	0x15154D0715151507, 0x07154747074D1515, 0x11044E1507040407, 0x0C0707070707154E,  // 0x00004618 
	0x1515071515471515, 0x07071566154D1504, 0x4D155A1507040715, 0x0C0C0C0C0707155A,  // 0x00004638 
	0x4D154E5A155A1515, 0x154747470707154D, 0x071507070C070C04, 0x0C04040C07070404,  // 0x00004658 
	0x15075A07155A1507, 0x1515151507154707, 0x1515040404070404, 0x0411110C07040404,  // 0x00004678 
	0x115A471515150707, 0x1507150707075A5A, 0x070C040407070404, 0x0411040C07040404,  // 0x00004698 
	0x070715474715155A, 0x1515150704071515, 0x0707070707041111, 0x1111040407070707,  // 0x000046B8 
	0x07070407154D0715, 0x1515155A07040707, 0x07070407040C0404, 0x0411041104040707,  // 0x000046D8 
	0x0715074D07111104, 0x4D07041504070707, 0x0715070707110411, 0x1104112F04040707,  // 0x000046F8 
	0x0707040707070411, 0x1111110707150704, 0x0713150704041111, 0x11151104044D0707,  // 0x00004718 
	0x15074D4D4D070704, 0x4D4D2F0404070C04, 0x0C07070C044D0704, 0x07042F11044D4D11,  // 0x00004738 
	0x1515074D074D0707, 0x04076D2F11110707, 0x0C0C0407044D0715, 0x070411112F040404,  // 0x00004758 
	0x154E4D1515111107, 0x0407112F11110404, 0x040704070411112F, 0x040411112F110707,  // 0x00004778 
	0x4D151566072F1107, 0x1111041104070411, 0x1107150711042F2F, 0x4D07155A4D040707,  // 0x00004798 
	0x040715074D111507, 0x04040411040C0411, 0x040707042F112F11, 0x151507074D071507,  // 0x000047B8 
	0x0715154D04114D15, 0x1104070404040411, 0x040407112F11042F, 0x2F4D040407151515,  // 0x000047D8 
	0x154715154D2F1111, 0x114D07071111112F, 0x04042F2F2F04112F, 0x2F1111044D07135A,  // 0x000047F8 
	0x07154766072F292F, 0x2F0407072F2F6D2F, 0x04116D111111112F, 0x1111110707150713,  // 0x00004818 
	0x154D4D1511041111, 0x2F042F2F112F2F2F, 0x2F112F112F2F2F2F, 0x2F04111111111104,  // 0x00004838 
	0x154D4D154D040704, 0x2F2F1104112F2F6D, 0x2F112F2F2F2F2F2F, 0x2F04041111111111,  // 0x00004858 
	0x5A4D044D4D071511, 0x2F11111111112F2F, 0x6D6D2F116D6D6D2F, 0x11110711044D1111,  // 0x00004878 
	0x1507070404040711, 0x2F112F2F29292958, 0x29292F116D6D2F11, 0x2F2F042F11041104,  // 0x00004898 
	0x5A07154D11112F11, 0x116D2F2F2958E9AB, 0xAB58582F6D296D2F, 0x6D2F116D2F111107,  // 0x000048B8 
	0x5A5A04296D2F2F6D, 0x1129292F5FAB7C4D, 0x11112999292F6D6D, 0x6D2F1129112F1107,  // 0x000048D8 
	0x5A0711112F2F2929, 0x111138AB6806360C, 0x479A9A7C58296D6D, 0x292F2F6D2F2F1104,  // 0x000048F8 
	0x5A0C111111292929, 0x291129E911071373, 0x47159E9A88582929, 0x292F29296D112F04,  // 0x00004918 
	0x131111111129ABAB, 0x582938580B2F2F4E, 0x472F16157C992958, 0x296D11296D2F2F04,  // 0x00004938 
	0x5A11111129585858, 0x582968990429294D, 0x9E2F111588389958, 0x586D2F112F2F1111,  // 0x00004958 
	0xAB29585899433636, 0x175224AB044D2988, 0xC39E5A5A8858582F, 0x99996D1111111104,  // 0x00004978 
	0x589958AB56639E9A, 0x9A9A56242F1573E6, 0xE6C373472F07C388, 0x0716992911111111,  // 0x00004998 
	0x5858AB5834A2111D, 0x043F9A7C24117FAE, 0x73734E297C9A9AC3, 0x9E8817992911112F,  // 0x000049B8 
	0x2F58582F3624247C, 0x29997C9E292C5666, 0x4D1529299E479E47, 0x4D118817992F1199,  // 0x000049D8 
	0x29999958042F2C88, 0x4D99889A466D4D07, 0x4D882967292F8829, 0x24242936996D68AB,  // 0x000049F8 
	0x58685F293688889E, 0x887C1DE6385F2F29, 0x292F241129298829, 0x4D88073699ABAA38,  // 0x00004A18 
	0x2C2999AB2F04E6B1, 0x9E9A9E4D68120554, 0x40ABAB2907479E9E, 0xB1E63F4D5FAB4B52,  // 0x00004A38 
	0x05520499580447CC, 0x8836074B38124C2E, 0x46682F2F889E1D9A, 0xC59A9A07685F1717,  // 0x00004A58 
	0x0E0E0E2FAB2C4D15, 0x2F294B3828121B71, 0x26222F58114D2F88, 0xC3882968682C170E,  // 0x00004A78 
	0x050562052929292F, 0x404B2C382C265C71, 0x49B92F5829112F2F, 0x366D3838384B460E,  // 0x00004A98 
	0x2634CB6262299968, 0x5F380606053BAF3A, 0x3A495429292F292C, 0x294B1228381F2E26,  // 0x00004AB8 
	0x261B0E343405BC38, 0x06282C2CCB343A49, 0x3A4912384B12121F, 0x4646123B1F642663,  // 0x00004AD8 
	0x1B342671AF34282C, 0x2506284949052E3A, 0x1B2005105B384626, 0x4950B9251F3B493A,  // 0x00004AF8 
	0x341B2E4922251B25, 0x28282526261F121F, 0x2E3505286812462E, 0x3AB9491B46A0505C,  // 0x00004B18 
	0x343449202234341B, 0x281B050546B9332E, 0x12052525281F1F26, 0x503A4971A03B503F,  // 0x00004B38 
	0x1B34263A1B1B1B1B, 0x252D281B3A346C78, 0x3A644C46381F2E3B, 0x49501C1BA0645063,  // 0x00004B58 
	0x341B2E2620261B05, 0x282805493A3A7479, 0x2649052810101220, 0x3A20261B5050503F,  // 0x00004B78 
	0x26344926CB263426, 0x1B1B0E0E4C305350, 0x641B05252812263A, 0x5049266C53334926,  // 0x00004B98 
	0x2E4C2E2E201BA064, 0x05433A6433333535, 0xA0431B2525053A26, 0x30535053CB33640E,  // 0x00004BB8 
	0x4C121F1F0522051F, 0x254C49A033A0A0A0, 0x2234221B1B2E37A0, 0x6C71493322224C06,  // 0x00004BD8 
	0x0A10545418121F18, 0xCB1FA0A0B9A06464, 0xA03334620522122E, 0x35222212181F430A,  // 0x00004BF8 
	0x4610541018121F4A, 0xA0A0CBA0B9A06464, 0x6422104B1F401F18, 0x10101010104A4631,  // 0x00004C18 
};

u64 _jyasinzou_room_23_tex_00004C38[] = 
{
	0x1A0B08000008087B, 0x7B7B0823231E1E23, 0x00001E00001E1E1E, 0x1E000000081E0000,  // 0x00004C38 
	0x0800080800002323, 0x001E08081E001E1E, 0x1E23230808000800, 0xD00008D008080899,  // 0x00004C58 
	0x0B0B0827030303BA, 0x7B7B0800231E031E, 0x27272727001E1E27, 0x1E030300031E0327,  // 0x00004C78 
	0x0303080327000323, 0x271E030808272727, 0x2323270303030800, 0x0827030308080372,  // 0x00004C98 
	0x1ADE862708030008, 0xB37B0803231E0303, 0x23270327001E0308, 0x2708080803270327,  // 0x00004CB8 
	0x0308030003030827, 0x231E270386270000, 0x2323000027080803, 0x0327272703031E03,  // 0x00004CD8 
	0xB78CD00008080300, 0xBA7B08860023008C, 0x00080808001E8C8C, 0x0808088C08000000,  // 0x00004CF8 
	0x080800008C03088C, 0x00231E0000080023, 0x231E00001E030808, 0x0800080023231E08,  // 0x00004D18 
	0x0B08D00000000300, 0x86C6E50827230808, 0x0000000808030008, 0x0808000808000800,  // 0x00004D38 
	0x00002308081E0008, 0x2300001E00082323, 0x0000231E001E0000, 0x0008080023001E08,  // 0x00004D58 
	0x1AE5860000230000, 0x08EFBA0327230327, 0x0003002703080003, 0x2703272727030300,  // 0x00004D78 
	0x00230003031E2727, 0x0003232327031E03, 0x0000032727232300, 0x000303001E002327,  // 0x00004D98 
	0x0BB7080300272323, 0x03E0B38627000027, 0x0386031E27082703, 0x030003001E080000,  // 0x00004DB8 
	0x0027030300031E23, 0x0303232703271E03, 0x0000030303002300, 0x000000272700271E,  // 0x00004DD8 
	0x0BE5080300032323, 0x00037BBA03032303, 0x08E003231E031E08, 0x080003001E030000,  // 0x00004DF8 
	0x0008030300E02723, 0x03231E08031E2700, 0x2300000303002323, 0x0000001E00000323,  // 0x00004E18 
	0x1A0808001E002323, 0x00087B7B088C0000, 0x08000000231E1E08, 0x0808000800000008,  // 0x00004E38 
	0x1E08001E0800081E, 0x2323080800000808, 0x00230000001E2323, 0x23081E0000000023,  // 0x00004E58 
	0x1A8C0B0803230308, 0x2727B37BBA860800, 0x000000081E1E0008, 0x001E08001E081E00,  // 0x00004E78 
	0x032323000000001E, 0x231E082323000808, 0x080300000003231E, 0x0323230808002323,  // 0x00004E98 
	0x1A8CDE0327000308, 0x2723B37BB3080827, 0x2703030303082703, 0x0003080327082727,  // 0x00004EB8 
	0x2700000003030023, 0x2303270000000303, 0x0308002327031E1E, 0x2723230303032327,  // 0x00004ED8 
	0x1A86861E23002703, 0x03237BC9C6080823, 0x0308032708861E00, 0x000803030003031E,  // 0x00004EF8 
	0x2300000308032727, 0x2703270300271E27, 0x2703032723002727, 0x2323272700030303,  // 0x00004F18 
	0x1A088C1E23002700, 0x03277BB38C030823, 0x8C08000308002323, 0x00081E000000031E,  // 0x00004F38 
	0x2300000808001E08, 0x08000008001E1E00, 0x0000080323230000, 0x231E080323238C00,  // 0x00004F58 
	0x1A8C0B1E081E0023, 0x00037BBA00000808, 0x008C081E001E231E, 0x0800000000001E1E,  // 0x00004F78 
	0x081E000800081E8C, 0x0000000808002300, 0x0800001E00000800, 0x1E8C0823231E0008,  // 0x00004F98 
	0x1ADE080308032300, 0x23007B0800230008, 0x1E86080303030386, 0x0800000003232703,  // 0x00004FB8 
	0x0803860000082727, 0x03001E2727000000, 0x0803031E03030000, 0x8603232300860000,  // 0x00004FD8 
	0x1A390B0303032700, 0x278CC60327270000, 0x0308080300080808, 0x08272700031E0003,  // 0x00004FF8 
	0x0303860300000023, 0x032727271E000300, 0x0303032708030303, 0x861E231E08860000,  // 0x00005018 
	0x1AB71A2700270000, 0x08B3D08627030023, 0x080303271E030300, 0x031E270000272327,  // 0x00005038 
	0x0027030327230023, 0x2727000023270300, 0x2700002703000803, 0x03231E278C032700,  // 0x00005058 
	0x1AB70B1E231E0303, 0xBA7B080308032300, 0x08000008081E0023, 0x0000082323081E1E,  // 0x00005078 
	0x231E001E1E230000, 0x08080800001E1E08, 0x1E00001E00080800, 0x2323000808001E23,  // 0x00005098 
	0x1A0B08031E1E038C, 0xC67B000008000000, 0x00231E0808031E00, 0x00001E031E1E0303,  // 0x000050B8 
	0x1E1E08000003231E, 0x00081E0800002300, 0x0300000300080823, 0x232308080008031E,  // 0x000050D8 
	0x0B0B0B08270303BA, 0xC97B000003000303, 0x001E030308860300, 0x03031E03031E2708,  // 0x000050F8 
	0x270303000008031E, 0x00031E2700000000, 0x0300030886082700, 0x0300030327082723,  // 0x00005118 
	0x1ADE0B03000803B3, 0x7B7B030300030803, 0x271E030008860300, 0x0303032708031E03,  // 0x00005138 
	0x0008270027030303, 0x00001E0327030000, 0x0003860886031E27, 0x0803002703032323,  // 0x00005158 
	0x0B8C0B00000803C6, 0x7B7B080800080800, 0x1E23000008080000, 0x0000081E08082300,  // 0x00005178 
	0x00081E0027000008, 0x23231E081E080023, 0x23088C080023231E, 0x0308231E031E2300,  // 0x00005198 
	0x0BD00B231E00000B, 0x7B7B080803080008, 0x2323000000000000, 0x1E1E000808002323,  // 0x000051B8 
	0x1E0808088C080000, 0x231E080008080800, 0x0808080000230008, 0x230008001E008C00,  // 0x000051D8 
	0x0B0808030023001E, 0xBA7B030308270308, 0x8603000300030003, 0x0303000800030003,  // 0x000051F8 
	0x001E080803000023, 0x0003270008000800, 0x080827002303E008, 0x232327031E1E0800,  // 0x00005218 
	0x0B8608030003001E, 0x08B3E00003000308, 0x8603002700032703, 0x0303030300030303,  // 0x00005238 
	0x0000030800030003, 0x0003270027000303, 0x0808270003080803, 0x27271E0803030300,  // 0x00005258 
	0x1AB7082703030003, 0x27BAEF0327000003, 0x0303272300001E00, 0x1E27080003030800,  // 0x00005278 
	0x0327270300080308, 0x0000000023000303, 0x0303000008030027, 0x0386270303030000,  // 0x00005298 
	0x0BB7081E081E0303, 0x27E5B3E02300001E, 0x00081E2323001E23, 0x1E08080008080800,  // 0x000052B8 
	0x081E080000030303, 0x000000001E230323, 0x1E000000031E001E, 0x008C081E23000000,  // 0x000052D8 
	0x1AD0080308030800, 0x03037BEF23230000, 0x0800001E001E0300, 0x0308000800000008,  // 0x000052F8 
	0x08030023001E1E1E, 0x00002308031E1E00, 0x0000231E1E1E1E00, 0x081E08030008088C,  // 0x00005318 
	0x0B8C862727030800, 0x08037BB308230023, 0x0800031E27030303, 0x0803032703038627,  // 0x00005338 
	0x2703001E00271E27, 0x0003000303031E23, 0x0000031E271E1E03, 0x081E270300270808,  // 0x00005358 
	0x0BB7B72723000303, 0x03037B7BBA232723, 0x0300031E1E030303, 0x030003030308D027,  // 0x00005378 
	0x2300270303002700, 0x2708032700080323, 0x2727081E00272708, 0x2727270303030300,  // 0x00005398 
	0x1AB7E50023000003, 0x00277B7BB3001E23, 0x00231E1E1E1E0800, 0x00001E0300088C00,  // 0x000053B8 
	0x23001E0303000000, 0x1E03031E00030323, 0x1E1E082323080003, 0x2300000303080023,  // 0x000053D8 
	0x1AB7082323000003, 0x00277B7BC6030800, 0x0800000800000808, 0x08081E1E08080023,  // 0x000053F8 
	0x2300001E0000001E, 0x1E001E001E000000, 0x1E0008230008081E, 0x1E0800001E080023,  // 0x00005418 
};

u64 _jyasinzou_room_23_tex_00005438[] = 
{
	0x1B341B343434051B, 0x341B34711B343434, 0x1B341B343434251B, 0x34341B5C1B343434,  // 0x00005438 
	0x1B341B3434341F1B, 0x343434341B343434, 0x252525251F1F1F1F, 0x1F250525251F1810,  // 0x00005458 
	0x1B1B1B1B1B1B1B1B, 0x1B1B1B1B1B1B1B1F, 0x1B1B1B1B341B261B, 0x1B1B261B1B261B1F,  // 0x00005478 
	0x1B1B1B1B1B261B1B, 0x1B26261B1B261B25, 0x1B1B1B2626261B1B, 0x1B1B261B26261B25,  // 0x00005498 
	0x1B1B1B1B261B2626, 0x0526261B26261B4C, 0x052525251F1F1F4A, 0x651F1F2525251F10,  // 0x000054B8 
	0x2605050505051B65, 0x0505051B05050505, 0x1B1B1B1B05050E1F, 0x0E0E0E0E0E0E050E,  // 0x000054D8 
	0x4C0E1B050505051F, 0x0505052E0505051B, 0x1B0E0E1B0505051F, 0x0505050505050505,  // 0x000054F8 
	0x1B0E050505050E1F, 0x050E050505050505, 0x0505050505052512, 0x0505050505052505,  // 0x00005518 
	0x1210651012121012, 0x2810121F1F1F1F1F, 0x0510052505050505, 0x0505050505050525,  // 0x00005538 
	0x1F10052505050505, 0x0505050505250505, 0x0510050505050505, 0x0505050505050505,  // 0x00005558 
	0x2565252505050505, 0x2505050505052505, 0x2565254305050505, 0x0505050505052505,  // 0x00005578 
	0x6510282828282828, 0x2828282828282865, 0x25251F2525252525, 0x2825252525252525,  // 0x00005598 
	0x1F25252525250543, 0x2825250525252525, 0x1F251F2525282525, 0x102528251F25251F,  // 0x000055B8 
	0x651F1F281F281F1F, 0x101F28251F1F251F, 0x651F1F2828282828, 0x4A2828281F1F1F25,  // 0x000055D8 
	0xA628282810101080, 0x8180101010282810, 0x1F28656528282828, 0x2828282828656528,  // 0x000055F8 
	0x65252525281F2828, 0x252528281F1F1F65, 0x2525252525251F28, 0x28281F2825251F1F,  // 0x00005618 
	0x252525252525251F, 0x25281F251F251F25, 0x2505052525050525, 0x0525252525251F25,  // 0x00005638 
	0x0505050505050525, 0x25282825281F651F, 0x1F65656528281210, 0x1228282828652865,  // 0x00005658 
	0x6505050505050510, 0x0505050505052505, 0x0505050505056265, 0x0505056205050505,  // 0x00005678 
	0x25055D625D5D621F, 0x6205626205050505, 0x055D5D626262621F, 0x6362626362050505,  // 0x00005698 
	0x055D626262626328, 0x6262623462050505, 0x4A281F251F651228, 0x8010651F1F1F1F25,  // 0x000056B8 
	0x1F05050505050505, 0x0505050505050505, 0x255D1B1B1B0E1B0E, 0x1B620E1B1B1B051B,  // 0x000056D8 
	0x251B1B1B1B1B1B1B, 0x1B1B1B1B1B1B5D1B, 0x251B1B1B1B1B1B1B, 0x1B1B1B1B1B1B5D1B,  // 0x000056F8 
	0x251B1B1B1B1B1B1B, 0x1B1B1B1B1B1B1B5D, 0x2505050505050505, 0x2525250525252525,  // 0x00005718 
	0x1F251F1F1F1F1810, 0x814A14651F1F2525, 0x051B051B05251B5D, 0x1825051B5D5D5D1B,  // 0x00005738 
	0x1F1B251B5D5D1B5D, 0x1F1B051B05055D1B, 0x655D051B5D055D05, 0x1F0505252505255D,  // 0x00005758 
	0x1F251F0505250525, 0x652565651F051F05, 0x801010221F1F1F65, 0x28658065651F101F,  // 0x00005778 
	0x4B4B80808080814B, 0x4B4B801080808080, 0xA3A3A3CAA3A36CA3, 0xA3CACA50CAA3A3A3,  // 0x00005798 
	0x1B34343A50793A79, 0x50503A3A341B5D1B, 0x25345D5D3A3A3A5D, 0x5D3A1B1B5D5D621B,  // 0x000057B8 
	0x1B5D25255D1B5D5D, 0x25343A1B25255D1B, 0x052572255D5D5D72, 0x725D3A5D72725D1B,  // 0x000057D8 
	0x5D257272251B0B72, 0x72253A257272255D, 0x2572727272347272, 0x72723A727272723A,  // 0x000057F8 
	0x7272727272727272, 0x7272727272727272, 0x50A3A3A3A3A350A3, 0xA350A3A350CAA3A3,  // 0x00005818 
};

u64 _jyasinzou_room_23_tex_00005838[] = 
{
	0x1919191919191919, 0x1919191941191919, 0x4019191940194019, 0x1919401919194040,  // 0x00005838 
	0x4019191919191919, 0x1919191940191919, 0x0A4C432D0E053405, 0x4619191919191919,  // 0x00005858 
	0x41090606060A0909, 0x09090D0E0606461B, 0x4C46461240461212, 0x4612120909401946,  // 0x00005878 
	0x460F430F06060906, 0x06090D0F06433828, 0x4040411941384038, 0x41124C4612461912,  // 0x00005898 
	0x414109090A090909, 0x41194141410A0E26, 0x262E4C2619265C34, 0x71344C4C0A381212,  // 0x000058B8 
	0x4C4109460A0E0D06, 0x0A0F060E0E0A0A06, 0x0D0D0E0606060F0D, 0x060946464C261940,  // 0x000058D8 
	0x4041414041410909, 0x0909414141410909, 0x12464C264A4C050E, 0x0E0E0F4306411240,  // 0x000058F8 
	0x4C10093812090A12, 0x0A46414141380909, 0x0A09060A060A0E06, 0x0F0605052E341938,  // 0x00005918 
	0x380A460A06430606, 0x06090A0909094141, 0x41124C26104C462E, 0x623F2D0643124340,  // 0x00005938 
	0x4C124606430A0A2E, 0x0A0A43060A431241, 0x0A0A060E060A0606, 0x0605434334714040,  // 0x00005958 
	0x4041310A0F43060A, 0x090A410A0606060F, 0x0A0A096410262605, 0x05060A4346434340,  // 0x00005978 
	0x4C09310941461246, 0x0A460909060A460A, 0x060A0941410A4C41, 0x2E0A434C4C261940,  // 0x00005998 
	0x094141120A2E0F0F, 0x0A0A0D0609060909, 0x090A0E3A12460E0E, 0x43430E050E430A40,  // 0x000059B8 
	0x050A090A09460A0A, 0x0E0A2E2E2D0A0A0A, 0x0A090941411F4C10, 0x10090A0A0A054040,  // 0x000059D8 
	0x120A0A0A6B0E0E0F, 0x0F0A060F06060A0A, 0x0A060A06120A0A0A, 0x060D0E0D0D0F0919,  // 0x000059F8 
	0x090906060A060606, 0x060A0A0A430A1209, 0x094112460A4C4C4C, 0x06060A0A0E0E4019,  // 0x00005A18 
	0x090A0909090A0909, 0x094109090A060F06, 0x41090A094609090A, 0x0A09404040401919,  // 0x00005A38 
	0x4119191919411941, 0x091941410A0A0906, 0x0A09060A09090909, 0x0606060609094019,  // 0x00005A58 
	0x1940194119191919, 0x1919191919191919, 0x1940121012104040, 0x403146635CC7A4B0,  // 0x00005A78 
	0xC5A4CFCF3F051919, 0x1919191919191919, 0x1919191919411919, 0x1919194019191940,  // 0x00005A98 
	0x0F0E3F3FA4AFA4A4, 0x3A5C1B0E09411041, 0x6343CFA4D15C0534, 0x0E3F265C630E0E0E,  // 0x00005AB8 
	0x0E0E0E063F3F0E26, 0x091B3A71B03A3A12, 0x3409265C34345C78, 0xA471262626261F26,  // 0x00005AD8 
	0x0E0D0E0E0E0E0F0F, 0x0F0E0E0E1D26120A, 0x0A060E3F0E0D060E, 0x0E060E06060E0E0E,  // 0x00005AF8 
	0x0F060F0E0D0D9EC7, 0x41630E0E430A2612, 0x264C1D060E0D263F, 0x0E06060E06060E06,  // 0x00005B18 
	0x0E9E9E3F0F0F060A, 0x0A0A0A0A26714663, 0x060E06630E0E3F0E, 0x0F06060E0E0E0E3F,  // 0x00005B38 
	0x0E0F0E0D0F0F0F26, 0x400E5C0E430A6410, 0x26780E0A0E063F0E, 0x0F060906060A0A06,  // 0x00005B58 
	0x9E0E3F0F573F3F0E, 0x0F0D061F12B9120E, 0x630E430E06090606, 0x060606060A060E0E,  // 0x00005B78 
	0x0F9E570E3F0D064C, 0x410E632E05064C40, 0x263A060A0A060E0F, 0x0E0E2E2E0E2E2E0A,  // 0x00005B98 
	0x06060E0F060E060E, 0x3F0E0E060626121D, 0x0E0A0A0E06060E06, 0x090A060F06060E0E,  // 0x00005BB8 
	0x0F0F0D0E0E0E0D1B, 0x090E0E0E623F0A40, 0x060F0F060F060606, 0x060A092E0E0E0E0D,  // 0x00005BD8 
	0x0906090A0A094643, 0x43623F570E2E1034, 0x0E0E060F0609060A, 0x090A060606060E0E,  // 0x00005BF8 
	0x0D0E0D0E2E060910, 0x410909050A1D0A40, 0x090A06060A090F0F, 0x06060E0E0A060A06,  // 0x00005C18 
	0x0A09090909401940, 0x404109120A0A1043, 0x0A0E1D430D0F0A0A, 0x0940404040404040,  // 0x00005C38 
	0x4019191919191919, 0x1919404010121010, 0x1012104040404040, 0x4009090606060A09,  // 0x00005C58 
	0x1919101012121210, 0x1040401919191919, 0x1919191940404040, 0x4040460A0A0A0505,  // 0x00005C78 
	0x0E5CC7C734A4785C, 0x71C71B5C3A3A2626, 0x26340E6346404019, 0x1940404019191919,  // 0x00005C98 
	0x0A2E5C342671261F, 0x261F4C264C264605, 0x26C3AF3F6B1D9AA4, 0x5C3434341B345C34,  // 0x00005CB8 
	0x34340E0E060E0606, 0x090A0A0A0A05050E, 0x0E464646124064B0, 0x3A3A26264C051941,  // 0x00005CD8 
	0x4C41414109090909, 0x0941414109090A06, 0x060A060E090E460A, 0x0606430A12122E2E,  // 0x00005CF8 
	0x050A0A090A090909, 0x094141124C2E2E0E, 0x2E060A4140190906, 0x0606060F060A0919,  // 0x00005D18 
	0x1B09060E06060606, 0x06060609090A090E, 0x0A0E0D05402E4C0E, 0x0E0F06060941100A,  // 0x00005D38 
	0x0A060A090F0F0606, 0x0A0A090A0A4C4C2E, 0x2E4C4C0A1941090F, 0x0F0E0D0606060609,  // 0x00005D58 
	0x4C0A190941194106, 0x094141410A0A0E0E, 0x060A0D05190E4C0A, 0x0A0E0E0F06060909,  // 0x00005D78 
	0x0A090A0A41410A2E, 0x0E0E0E0E0E0E2E2E, 0x0E2E0A41190A090A, 0x0A060909090A0A19,  // 0x00005D98 
	0x46060909410A0909, 0x09060D0606090909, 0x090A260E414C090A, 0x060A0A060A0A0A0A,  // 0x00005DB8 
	0x090A090909094109, 0x0A0A0A0A0A4C2E0E, 0x2E0E050A19090A06, 0x0A06090A0A0E0A41,  // 0x00005DD8 
	0x0A0A0A0A060E0E06, 0x0E0A090A0A090909, 0x41090E0641430E06, 0x0606060A060A090A,  // 0x00005DF8 
	0x2E0E0E0E0E0E2E2E, 0x05090A0A06060A0A, 0x0909060640090606, 0x09060A0A0F060919,  // 0x00005E18 
	0x09090941090A4141, 0x094141090A0A0A0A, 0x4109090919190A0A, 0x0F0F090A09090A4C,  // 0x00005E38 
	0x2E2E4C0A090A0919, 0x4019191919191919, 0x191919191941410A, 0x06060A060A0A0919,  // 0x00005E58 
	0x1919191919191919, 0x1941191919191919, 0x1919191919191919, 0x1919410919191919,  // 0x00005E78 
	0x1919191919191919, 0x0906060640191940, 0x0A0A091940401919, 0x1919191919191940,  // 0x00005E98 
	0x1D3AD10E0E0E3F0E, 0x090606060A121219, 0x09342626B9262626, 0x644C4C1F0A46050E,  // 0x00005EB8 
	0x0F0E0FAFAF3F3F0E, 0x262626260564404C, 0x0E1D1B6B0E642671, 0x64461219194C0526,  // 0x00005ED8 
	0x4C050E0E0A060606, 0x0F0941090A050A19, 0x64120A0A4609120A, 0x06060909090A0F06,  // 0x00005EF8 
	0x0E26260E0E3F3F1D, 0x1D050E460526194C, 0x0A0A090A0A0A4106, 0x260E4C19413A264C,  // 0x00005F18 
	0x0A0A0E060A0A0A0A, 0x0E06060A0A051219, 0x640A124C43060606, 0x060909090A090909,  // 0x00005F38 
	0x060D0E0A0F060609, 0x0606060F06344026, 0x2E0A090A0A090606, 0x46054C0909784C26,  // 0x00005F58 
	0x0A0A06060E3F0E06, 0x0A0F0F0D060A0919, 0x46054C0909094609, 0x06060606060A0906,  // 0x00005F78 
	0x060A0E060A0E0D06, 0x0A060A060E5C4026, 0x2605430A0A0A0609, 0x0A05344009260909,  // 0x00005F98 
	0x06060A0D0E0E0E0D, 0x0F0A0E0D0E0A4119, 0x410A0A43430A4612, 0x090A090A060D0606,  // 0x00005FB8 
	0x06060A0E0A0E0A0A, 0x0E0F0A0A094C4026, 0x340E460A0606060A, 0x054C4C41410E090A,  // 0x00005FD8 
	0x09060F06060A060E, 0x09060F0E0E060A40, 0x410A060E09090E09, 0x09090A0941094119,  // 0x00005FF8 
	0x090606060A06060A, 0x41410A0A0A0F4046, 0x0E0E050E430A0E0A, 0x4343464640090919,  // 0x00006018 
};

u64 _jyasinzou_room_23_tex_00006038[] = 
{
	0x522C28062D2D2D06, 0x06062D2D2D2D2D2D, 0x2D062D0606060606, 0x251A252506062831,  // 0x00006038 
	0x2C905757C3C3C357, 0x57573F3F1D3F3F3F, 0x573F1D0D0D1D3F3F, 0x3F570D3F57579090,  // 0x00006058 
	0x2890573F1D1D1D1D, 0x1D1D630D0F2D0F0F, 0x0F0F630D0D0D0D1D, 0x1D0D0D0D1D1D5790,  // 0x00006078 
	0x0690571D1D1D3F1D, 0x1D1D0D0D0F2D0F0F, 0x0F0D0D0D0D0D1D1D, 0x1D0D0F0F0D1D5790,  // 0x00006098 
	0x0690571D3F1D3F0D, 0x1D1D1D1D0D0D0D1D, 0x0D7C1D1D3F3F3F3F, 0x1D3F0D1D1D5757B1,  // 0x000060B8 
	0x2D5757631D1D3F1D, 0x0D1D1D1D1D0D0F0D, 0x1D1D1D3F573F3F3F, 0x1D3F1D1D0D3F5790,  // 0x000060D8 
	0x063F3F631D1D3F1D, 0x1D1D1D3F3F0D0D0D, 0x0D1D1D1D3F57573F, 0x3F573F573F573F3F,  // 0x000060F8 
	0x061D3F630F1D3F1D, 0x1D0D0F0F0D0F0F0F, 0x0D1D1D3F5757573F, 0x3F3F3F573F571D62,  // 0x00006118 
	0x061D1D0D0D0D1D0D, 0x0D0F0D0F0F0F2D2D, 0x0D0D0D1D3F3F3F1D, 0x1D0D1D0D0D3F3F0D,  // 0x00006138 
	0x060D0F0F7C7C0D0D, 0x0F0F0F0F0F2D2D2D, 0x2D0F0D0D1D1D1D1D, 0x630D0D0F0D0D1D1D,  // 0x00006158 
	0x061D0F0F1D1D0D0F, 0x0F0F0F2D2D2D2D2D, 0x0F0F0F0D0D0F0D0D, 0x0D0F0F0D0D0D1D3F,  // 0x00006178 
	0x06570F0D571D1D0F, 0x0D0D0F2D2D0F2D2D, 0x0F0F0F0D0D0F0D0D, 0x0F2D0D0D0D0D1D90,  // 0x00006198 
	0x2D3F0D1D3F1D1D0F, 0x0F0F0F2D2D2D2D06, 0x2D0F0F0D1D0D0F0F, 0x0F0F0D0D0D0D3FB1,  // 0x000061B8 
	0x2D3F0D1D0D1D0D0D, 0x0F0F0F062D0F2D06, 0x2D0D0D0D0D0D0D0D, 0x0F0F0D1D0D0D1DB1,  // 0x000061D8 
	0x061D0F0D0F0D0F0F, 0x2D2D2D06060F2D06, 0x0F0D0D0D0D0D0F0D, 0x0D0F2D1D1D1D1D90,  // 0x000061F8 
	0x2D3F0F0D0F0F0F2D, 0x2D060606060F2D2D, 0x2D0F0D0D0D0D0F0F, 0x0D0D0D1D0D0D0D57,  // 0x00006218 
	0x2D0D0F0F0F0F2D2D, 0x2D0606062D0F2D0F, 0x0F0D0D0D620D0D0D, 0x0D0D1D0D0D0D0D57,  // 0x00006238 
	0x2D0F2D2D0F0F0F2D, 0x2D2D2D2D0D0D0F0F, 0x0D0D62621D1D0D62, 0x0D0F0D0F0D0D0D57,  // 0x00006258 
	0x2D3F0D0F2D0F0F0F, 0x0F0F2D0F0D0D0D0D, 0x0D621D1D1D1D620D, 0x0D0F0F0F0F0F1D90,  // 0x00006278 
	0x2D3F0D0D2D0F0D0D, 0x0F0F0D0D0D1D0D0D, 0x0D621D1D3F1D1D1D, 0x620D0D0D0D0F1D90,  // 0x00006298 
	0x2D1D2D0F0F0D0D0F, 0x0F0F0D0D0D1D630D, 0x0D1D1D5757575757, 0x3F3F1D1D1D0D1D57,  // 0x000062B8 
	0x060D2D0F0F0F0F0F, 0x0F0F0F0F0F0D0D0D, 0x0D1D3F5757573F3F, 0x1D3F1D1D1D1D1D57,  // 0x000062D8 
	0x2D1D0F0F0F0F0F0F, 0x0F0F0F0F0F0D0D0D, 0x0D0D3F3F3F3F1D1D, 0x1D1D1D1D1D1D0D3F,  // 0x000062F8 
	0x2D1D0F0F0F0F0F2D, 0x0F0F0F0F0F0F0F0F, 0x0F0D0D0D1D0D0F0D, 0x0D7C7C7C0D0D0D90,  // 0x00006318 
	0x06570D0F0F0F0F0F, 0x2D2D0F2D0F0D0F0F, 0x0D0D0D0D0D0F0D0D, 0x0F0D0F0F0D0D1D90,  // 0x00006338 
	0x2D901D1D0F0F0F0F, 0x2D2D2D2D2D0F0F0F, 0x0D0D1D1D7C0D1D63, 0x1D0D1D1D1D1D1DA4,  // 0x00006358 
	0x0FCF3F0F1D1D7C0F, 0x0F0F0F2D0F0D0D0D, 0x1D1D1D1D1D1D7C0D, 0x0D0D1D1D0D0D1D90,  // 0x00006378 
	0x2DCF3F3F1D0D7C2D, 0x0F2D2D2D2D0F0F0D, 0x0D0D0D1D1D1D1D7C, 0x0D0F7C0F0F0D3FB1,  // 0x00006398 
	0x06CF90573F1D0F0F, 0x0F0F2D2D2D2D2D2D, 0x0F0F0F0F0F0F0F0F, 0x0F0F2D062D0D3FA4,  // 0x000063B8 
	0x2DCFB15757571D0F, 0x0F2D2D2D2D2D0F2D, 0x0F0D0D0D0D0D0D0D, 0x0F0F2D062D6257B1,  // 0x000063D8 
	0x28B1B1B190573F1D, 0x1D0F7C0F0D1D1D1D, 0x0D6262620D0D1D62, 0x0D0D0F2D0F1D3F90,  // 0x000063F8 
	0x283F57909090B190, 0x571D3F3F57575790, 0x57573F1D1D1D1D1D, 0x1D0D0F0F0D1D3F57,  // 0x00006418 
};

u64 _jyasinzou_room_23_tex_00006438[] = 
{
	0x10160F2D5234E9E9, 0xBE6649A7D49CD49C, 0x294810168A4F0A0A, 0xE963536C669B66E1,  // 0x00006438 
	0x216D6D2121272727, 0x2929101010483D62, 0x2727272727291F1F, 0x1F15101662100F39,  // 0x00006458 
	0x2927212129101639, 0x372D4F523A3A0952, 0x29272729297C374F, 0x4F603444CFCF400A,  // 0x00006478 
	0x1B27274810108A60, 0x180A585858635858, 0x555529101039374F, 0x345879BE66633F44,  // 0x00006498 
	0x551B481016393752, 0x3F63866663404F96, 0x211B487C62374F34, 0x065F6686AA585844,  // 0x000064B8 
	0x2155486262394F44, 0x636666BE5FCF7C10, 0x215548627C396058, 0x66A7DE7958528A96,  // 0x000064D8 
	0x2127487C168A4F44, 0x5F5BA74492445FC4, 0x21552916168A6058, 0x5FA7AC345F5F539C,  // 0x000064F8 
	0x212729160F374F0A, 0x5F85DEE10A5F5CD4, 0x212129100F8A3A44, 0x6685B68538529658,  // 0x00006518 
	0x21211F1039373A40, 0x5F6C859B5F634034, 0x27212748168A6034, 0xAA5F6C6C5F5F5F92,  // 0x00006538 
	0x27211F4810392D09, 0xCF58869BDF6CA7A7, 0x21211F10107C5234, 0x400A6366A7A7DEE6,  // 0x00006558 
	0x21212748107C5234, 0xCF06585F539BDF85, 0x216D272729481652, 0x34345858385F9BDF,  // 0x00006578 
	0x212121211F144D8A, 0x4F4F3A604458BE5F, 0x16164D373A34AA06, 0xBEBE66DEDE93D485,  // 0x00006598 
	0x294848103796580A, 0x5853665FA7A7DEA7, 0xC6C6C68B8BA32121, 0x292948102929107C,  // 0x000065B8 
	0xB4216D6D6DA3A321, 0x141F14168A8A3752, 0x212121216D21140C, 0x8A524006E9636363,  // 0x000065D8 
	0x2127216D297C524F, 0x4F44795F5F666C49, 0x1427A3292D52963F, 0x0A866C9B5BD49393,  // 0x000065F8 
	0x146D217C4040374A, 0x4A342E9CABCBCBCB, 0x276D485252225521, 0x27145292A8C1C5BB,  // 0x00006618 
	0xA36D7C521021271F, 0x101F273738D4C1BB, 0xA327525229214839, 0xB3528A4D37E9D4CA,  // 0x00006638 
	0xA31F2D2D1F278ACF, 0x866653440F2D49AB, 0xA32752371F273744, 0x635F86BE527C63C1,  // 0x00006658 
	0x8B6D396016273D52, 0x34585844963963C1, 0xA3A310603721297C, 0x37523460377C69BB,  // 0x00006678 
	0x6DB4555244392929, 0x2916161027105FF0, 0x216DA37C5863442D, 0x4821A3B4217C49EB,  // 0x00006698 
	0x21276D294449665F, 0x5F34621F105266C1, 0x21216D2196669C85, 0x9C9C6C345260DFFB,  // 0x000066B8 
	0x2121216D4858A79C, 0xC1F0AB66CF4F79FE, 0x21212121A32240DF, 0xEBBBE5AB66CF63D4,  // 0x000066D8 
	0x21212121A3212934, 0xE6C1BBEBF44966D4, 0x21216D5534633727, 0x8A5F7ABBE5C1AB9C,  // 0x000066F8 
	0x6D21554A3F2E4429, 0x291644CBE5BBF89C, 0xA36D7C523F52558A, 0x580F2734E69CC5B6,  // 0x00006718 
	0xC61F375234212140, 0xD40F294F3F24AA44, 0x217C524C16217C66, 0xDE1021226C4D1879,  // 0x00006738 
	0x2939523727A32D9B, 0x4F2748219610AAE1, 0x1B62523721A3616C, 0x4427391F1F213934,  // 0x00006758 
	0x6D3D523955C61066, 0x86143952141F2916, 0xC6294A4A29C62134, 0x663739404F378A37,  // 0x00006778 
	0x8B217C4A376D6D29, 0x4458523458CD4458, 0x6D8B294A61482727, 0x3D9634345886E186,  // 0x00006798 
	0x216D6D29618A103D, 0x4A52964463E1D1D1, 0x215541551D397C7C, 0x8A529644589257AC,  // 0x000067B8 
	0x21291B5555293D3D, 0x628A619625039266, 0x6D21555529294829, 0x297C375224560392,  // 0x000067D8 
	0xA3551B1B29482929, 0x293D395296344403, 0x6D2121272910103D, 0x3D62525252525260,  // 0x000067F8 
	0x1F27291637344F4F, 0x344463636649499B, 0x555555551D3B2222, 0x8D4A7C8A61616152,  // 0x00006818 
	0x3D3D294141555555, 0x555529482222224A, 0x223D4A3D22223D3D, 0x7C6239373752343F,  // 0x00006838 
	0x8E1D4A614C3D3D39, 0x5261524F34963461, 0x8E411D4A34614A39, 0x623952524A4A4A10,  // 0x00006858 
	0x5955411D37243F39, 0x22373922223D7C4A, 0x2222555522345625, 0x4A29291D3D396144,  // 0x00006878 
	0x22222955558D2AAC, 0x242929393496AAA7, 0x22221D29551D2485, 0x6C393DB3B338269C,  // 0x00006898 
	0x1D223D29223D3903, 0x85448A4434CDABB6, 0x22221D224A621D4C, 0x536C3F3F61CFA8B6,  // 0x000068B8 
	0x1B1D223D613D5522, 0x24492E5E5E660385, 0x1B1D3D6161222955, 0x4A66B6852E2444A8,  // 0x000068D8 
	0x1B557C34393D3D29, 0x2224B6B6443F86AB, 0x55554A617C7C7C39, 0x7C4C85AB92255C85,  // 0x000068F8 
	0x5529394C3D7C3734, 0x377C86E5A82A666C, 0x55223939293DB3AA, 0x44523FC1C1384434,  // 0x00006918 
	0x5522424A294A6158, 0x383461B6BB922444, 0x1B8D4C3D1D4A3492, 0x865261B6CB63446C,  // 0x00006938 
	0x558D37221D379603, 0x925261ABCB584485, 0x553D391D224A2438, 0x385234ABA83F3F85,  // 0x00006958 
	0x554A374822373F38, 0x445244C16C343485, 0x594A52221D614403, 0x446186CB92242438,  // 0x00006978 
	0x554A613D1D4C4458, 0x3F34A7B63F443824, 0x417C614A22614444, 0x344485853444A76C,  // 0x00006998 
	0x8E1D61618D393434, 0x3486B6DF344466AB, 0x8E554C967C3D3937, 0x568585B6863453AB,  // 0x000069B8 
	0x41554A345229224A, 0x2A2E443F6C38389C, 0x5541222434483BCD, 0x56344A4ACD6C66FB,  // 0x000069D8 
	0x3D55556156374A3F, 0x614A374A3F8653FB, 0x221D418D3F44374A, 0x3D37374A244453C1,  // 0x000069F8 
	0x1D225959612E9629, 0x3D614A394C3F2E9C, 0x1B2255558D92864A, 0x3D4A3D3D522A85CB,  // 0x00006A18 
	0x292255292234D103, 0x4A7C7C37CD6CB6C5, 0x1D55224A3D3B2585, 0x44374FCFBE85ABEB,  // 0x00006A38 
	0x55558A613D55422E, 0x6634344438A79CC5, 0x553D346129551D61, 0x6C86343F86A8ABC5,  // 0x00006A58 
	0x294A34521B221D3D, 0x3FA82E443885CBC5, 0x224A344A293D3D22, 0x4A86AB85926CCBE5,  // 0x00006A78 
	0x224A5222228A377C, 0x294A9CBB852EA8E5, 0x3D4A39293D523424, 0x4A2258EBABDF6CAB,  // 0x00006A98 
	0x4A393D553D523424, 0x7C4896855CB68585, 0x4A4A22553D4C3F61, 0x3D7C58254244ABB6,  // 0x00006AB8 
	0x3937225562526152, 0x373F38377C5292FB, 0x4A4C3D293D8A374C, 0x39374A4A52969658,  // 0x00006AD8 
	0x394C4A1B22612434, 0x4A7C379658634496, 0x394C372922524403, 0x58444438866C6663,  // 0x00006AF8 
	0x4A4C613D228A4492, 0x92926366859C9CE6, 0x224A344A3D4A442E, 0x2E262EAC9CC1FE9C,  // 0x00006B18 
	0x412234614A4A3F2E, 0x2E3866A79CC1E5BB, 0x8E55374061372486, 0x6C5F86499CF8F6E5,  // 0x00006B38 
	0x554122342A3F6144, 0x665F669BA8F8F6F2, 0x5541554C25863F96, 0x385386669BABF0F8,  // 0x00006B58 
	0x5555414A5E03383F, 0x3F385CD1DF9CE5F2, 0x29555522963C262E, 0x242A589CAB85BBF2,  // 0x00006B78 
	0x29295529B33F0385, 0x03244403BBA8BBFF, 0x2929292934243F9C, 0xB63F6134ABABCBFF,  // 0x00006B98 
	0x1B48294A3F4C4A38, 0xC5D13752E62EA8F6, 0x55414A244C1D1D37, 0xA8C56C442A25D1B6,  // 0x00006BB8 
	0x554155228D3D2262, 0xE1BBF09C61CD8FF6, 0x55551B224A8A3737, 0x44C1C5268A38BBF2,  // 0x00006BD8 
	0x48103D395261CF34, 0x24A8C5663486C5C5, 0x3D7C3937963F4492, 0x3F2EC5B62A496C03,  // 0x00006BF8 
	0x397C398A9644032E, 0xE158C1C53838AAE6, 0x524A4A4A344438E1, 0xE603B6E549586CC5,  // 0x00006C18 
};

u64 _jyasinzou_room_23_tex_00006C38[] = 
{
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006C38 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006C58 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006C78 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006C98 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006CB8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006CD8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006CF8 
	0xACDD000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006D18 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006D38 
	0xCDA1000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006D58 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006D78 
	0xDDE3000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006D98 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x000000000000E669,  // 0x00006DB8 
	0xE6239C5B00000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006DD8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x000000000000E627,  // 0x00006DF8 
	0xE623941B00000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006E18 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x000000000000F6A9,  // 0x00006E38 
	0xE6278BD700000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006E58 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00000000C5A3EE67,  // 0x00006E78 
	0xF6A97B5531890000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006E98 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00000000DE25EE67,  // 0x00006EB8 
	0xF6A97B55524F0000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006ED8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x00000000DE27E667,  // 0x00006EF8 
	0xE6258BD75A8F0000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006F18 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000CDE3E667E625,  // 0x00006F38 
	0xE625941962D10801, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006F58 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000C5A3E667D5E3,  // 0x00006F78 
	0xDDE39C5B5A8F2107, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006F98 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000C5A3D5E5CDA1,  // 0x00006FB8 
	0xD5E3B4DD62D13149, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00006FD8 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0xBD61C5A1C5A1CD61,  // 0x00006FF8 
	0xCD61B4DD6B1341CB, 0x1085000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007018 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0xBD61BD61DDE5C561,  // 0x00007038 
	0xC51FB4DD6B134A0D, 0x18C5000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007058 
	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0xBD61D5E3D5E5BD1F,  // 0x00007078 
	0xBD1FAC9B6B135A91, 0x3149000000000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007098 
	0x0000000000000000, 0x0000000000000000, 0x000000000000ACDD, 0xB51FCDA1D5E3CD61,  // 0x000070B8 
	0xB49DA4196B13524F, 0x39CB080100000000, 0x0000000000000000, 0x0000000000000000,  // 0x000070D8 
	0x0000000000000000, 0x0000000000000000, 0x000000000000BD61, 0xB51FCDA1D5A3BD1F,  // 0x000070F8 
	0xA45BAC596B135A8F, 0x4A0D18C500000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007118 
	0x0000000000000000, 0x0000000000000000, 0x000000000000B51F, 0xBD61C561CDA3CD61,  // 0x00007138 
	0xA45B93D773556291, 0x4A0D18C500000000, 0x0000000000000000, 0x0000000000000000,  // 0x00007158 
	0x0000000000000000, 0x0000000000000000, 0x00000000ACDDB51F, 0xBD61D5A3DDE5AC9B,  // 0x00007178 
	0x93D78B95731362D1, 0x4A0D210708010000, 0x0000000000000000, 0x0000000000000000,  // 0x00007198 
	0x0000000000000000, 0x0000000000000000, 0x00000000BD61ACDD, 0xBD1FD5A3CDA1B4DD,  // 0x000071B8 
	0x93D793D773135A4F, 0x4A0D398910830000, 0x0000000000000000, 0x0000000000000000,  // 0x000071D8 
	0x0000000000000000, 0x0000000000000000, 0x00000000B561A49D, 0xC561C561BD1FB4DD,  // 0x000071F8 
	0x8BD78B9383956AD1, 0x4A0D318929470000, 0x0000000000000000, 0x0000000000000000,  // 0x00007218 
	0x0000000000000000, 0x0000000000000000, 0x0000ACDDB51FBD61, 0xCD61CD61C51FBCDD,  // 0x00007238 
	0x93D78B9583936AD1, 0x524F41CB31490801, 0x0000000000000000, 0x0000000000000000,  // 0x00007258 
	0x0000000000000000, 0x0000000000000000, 0x0000ACDDB51FBD61, 0xD5A1D5A3BD1FB49D,  // 0x00007278 
	0x8B95835383936AD1, 0x524D4A0D31491083, 0x0000000000000000, 0x0000000000000000,  // 0x00007298 
	0x0000000000000000, 0x0000000000000000, 0x0000B55FACDDBD1F, 0xCD61CDA1BCDDAC9B,  // 0x000072B8 
	0x8B957B1183936AD1, 0x628F420D39CB1085, 0x0000000000000000, 0x0000000000000000,  // 0x000072D8 
	0x0000000000000000, 0x0000000000000000, 0xACDDB51FACDDC55F, 0xBD1DC51FB4DDAC59,  // 0x000072F8 
	0x72CF7B138B9572D1, 0x628F520D41CD2107, 0x0801000000000000, 0x0000000000000000,  // 0x00007318 
	0x0000000000000000, 0x0000000000000000, 0x8BD7A49D9C59C55F, 0xCD61C55FAC9D93D5,  // 0x00007338 
	0x6ACF72D17B117311, 0x72D15A4F4A0D398B, 0x0801000000000000, 0x0000000000000000,  // 0x00007358 
	0x0000000000000000, 0x0000000000000000, 0x8BD7A45BB4DFBD1F, 0xC55FB4DDAC9B9395,  // 0x00007378 
	0x6A8F72CF6ACF6ACF, 0x6AD1524D4A0D41CB, 0x3989000000000000, 0x0000000000000000,  // 0x00007398 
	0x0000000000000000, 0x0000000000007311, 0x9419AC9DBD1FB49B, 0xBCDDAC9BA45B9395,  // 0x000073B8 
	0x6A8D7B117B1172D1, 0x5A8F524D524D41CB, 0x524D398900000000, 0x0000000000000000,  // 0x000073D8 
	0x0000000000000000, 0x0000000000007B13, 0x93D793D7A45BB49B, 0xB49B9C199C178353,  // 0x000073F8 
	0x835372D172D1628F, 0x6AD1628F5A8F524D, 0x4A0D4A0B00000000, 0x0000000000000000,  // 0x00007418 
};

u64 _jyasinzou_room_23_tex_00007438[] = 
{
	0x0C043A3109191909, 0x0101010101191931, 0x19190C1F0C191919, 0x1919310909090101,  // 0x00007438 
	0x0101090F0F142714, 0x0404040404191919, 0x1919191919190F04, 0x1919190C0F142714,  // 0x00007458 
	0x150F0C1919190419, 0x19191919190F0419, 0x3E1904150F191919, 0x1919191919191919,  // 0x00007478 
	0x191904161421211F, 0x0F04040C04040404, 0x0404041919040F19, 0x1919040415272715,  // 0x00007498 
	0x1F150C0C0C0C0C0C, 0x0C0C0C0C0C670C0C, 0x0C0C0F14350F0C0C, 0x0C0C0C0C0C0C0C0C,  // 0x000074B8 
	0x0C0C161F1F212114, 0x15670C0F0F0C0C0C, 0x0C0C0C0C0C0F160C, 0x0C0C16101F212127,  // 0x000074D8 
	0x2727670F32323232, 0x32320F0F0F150F0F, 0x0F0F671414160F0F, 0x0F0F3232320F320F,  // 0x000074F8 
	0x0F0F141F1F212121, 0x15673232670F0F0F, 0x0F0F0F0F0F16160F, 0x0F0F161F21212121,  // 0x00007518 
	0x2727151515351515, 0x1515151515151515, 0x1515141F1F156715, 0x1515151515321515,  // 0x00007538 
	0x15141F2727212121, 0x1F1F151515151010, 0x1010101010151510, 0x1010142721272721,  // 0x00007558 
	0x27271F141F271414, 0x1414141414141414, 0x1414141F271F1515, 0x1414141414151514,  // 0x00007578 
	0x1F27272721216D21, 0x2121271F14141414, 0x1414141414141414, 0x141F212121151F21,  // 0x00007598 
	0x0F15272114272121, 0x2121212127271F1F, 0x1F1F1F2721271F1F, 0x2727272721351F27,  // 0x000075B8 
	0x6D6D21141F272714, 0x1F272121211F1F1F, 0x1F271F1F271F1F6D, 0x21271F1415353514,  // 0x000075D8 
	0x0404040404041504, 0x0404043235353514, 0x14142727141F216D, 0x2127141419190C32,  // 0x000075F8 
	0x0C0C0C0C040F3232, 0x3204191E6B32151F, 0x27216D6D21A36D21, 0x1F1F150F04040404,  // 0x00007618 
	0x3119190901080000, 0x0000C2C200000001, 0x19040404043A0909, 0x0404043101010009,  // 0x00007638 
	0x31000000000000C2, 0x7575757201010909, 0x0C35272127140F04, 0x0100000808080801,  // 0x00007658 
	0x0845454545454545, 0x0808080808080808, 0x0801000109040F01, 0x50050B4545454545,  // 0x00007678 
	0x4545454545450808, 0x0808080808080808, 0x00013A043A090106, 0x4545454545121245,  // 0x00007698 
	0x4505050505454545, 0x4508084545451212, 0x121205063A142132, 0x000E1C1C1C1CA105,  // 0x000076B8 
	0x0505054545450808, 0x080845454512050E, 0x010435353E001205, 0x1212050512120512,  // 0x000076D8 
	0x0505020202020202, 0x455050450D0DAF0D, 0x0E0E0E0037101F32, 0x6B00021313130B02,  // 0x000076F8 
	0x0202020B020B0B0D, 0x0B450D050E0E0E12, 0x193232350C040002, 0x0E0E1C0B05050505,  // 0x00007718 
	0x0C0C040401020202, 0x0202020202020202, 0x0232151514142732, 0x320C0C0C0C0C0C0C,  // 0x00007738 
	0x0202020202121212, 0x06010104040C0C6B, 0x0C0C141F27141619, 0x000202050B0E0104,  // 0x00007758 
	0x3532323514326B6B, 0x0F02020202040404, 0x040C3515151F1432, 0x320C0C0C0C0C0C32,  // 0x00007778 
	0x0404046B6B323232, 0x3216320F0C0F0C0C, 0x0C0C3521271F150F, 0x0C0C020035351514,  // 0x00007798 
	0x353232151F356B32, 0x320C04046B040404, 0x040C0F150F1F2735, 0x32320C0C0C0C0C0F,  // 0x000077B8 
	0x0F0C040C0C0C0C6B, 0x0C1615040404040C, 0x6B0C15211F14150C, 0x0C0C0C3232323514,  // 0x000077D8 
	0x1467671414146B6B, 0x326B6B6B6B6B6B6B, 0x0C0C671535142715, 0x32320C0C0C0F0F0F,  // 0x000077F8 
	0x0F0C0C0C0C0C0C0C, 0x0F0F150C04040C0C, 0x6B0C141F1F14140C, 0x0C0C323267673215,  // 0x00007818 
	0x1415351414143232, 0x3532323232323232, 0x0C321414151F2114, 0x32320C0C0F0F6767,  // 0x00007838 
	0x0F0F0C0C0C0C0C0C, 0x0F0F350F0C0C0C0C, 0x320C27271F14140F, 0x0F0F326735353515,  // 0x00007858 
	0x1F15351414143532, 0x153232323267320F, 0x0F67141F1527211F, 0x670F0F0F0F0F1532,  // 0x00007878 
	0x0F0F0F0C0F0F0F0F, 0x0F1567670F0F0F0F, 0x35672721271F140F, 0x0F0F323267353515,  // 0x00007898 
	0x1415151415151567, 0x1567676767356767, 0x6715141F14272727, 0x15140F6715671532,  // 0x000078B8 
	0x0F0F0F0F0F0F0F0F, 0x161567670F0F0F0F, 0x151F276D21271415, 0x670F676767151515,  // 0x000078D8 
	0x1415151515151567, 0x6715676767156767, 0x671514271F1F1F21, 0x2715141414151535,  // 0x000078F8 
	0x350F0F3567673516, 0x1615151616156715, 0x1427276D6D271F14, 0x1410161635151514,  // 0x00007918 
	0x1415151515151515, 0x1514151515141515, 0x15151F1F1F212121, 0x1F1F141415151535,  // 0x00007938 
	0x350F0F1515151515, 0x1515151515151F1F, 0x1F21146D21272727, 0x141F15151515151F,  // 0x00007958 
	0x1414141414141414, 0x1414141414141414, 0x14141F1F1F21A36D, 0x216D271F1F141414,  // 0x00007978 
	0x14350F0F67151516, 0x15151515151F1F27, 0x2721272127272714, 0x141F1F1F1F14141F,  // 0x00007998 
	0x1F1F1F1F1F1F1F1F, 0x1F1F1F1F1F1F1F1F, 0x1414151415142121, 0x271F1F1414141415,  // 0x000079B8 
	0x15160F1616161616, 0x1015151514272721, 0x6D211F151F160C14, 0x1527141F271F271F,  // 0x000079D8 
	0x2121272714212714, 0x2721212121150F1F, 0x350F0F150F040C3E, 0x090C0C0C0F0F0F19,  // 0x000079F8 
	0x31190F1514100F47, 0x040F0404043E040F, 0x0F16040F3E040415, 0x0C1416106D212127,  // 0x00007A18 
	0x0104191E31311931, 0x1931010100000001, 0x0100000000010400, 0x0100083101010008,  // 0x00007A38 
	0x501919190C0C3E00, 0x0601000000063E3E, 0x0100470900000047, 0x4704000C0C0C0419,  // 0x00007A58 
	0x450D0D4550505045, 0x4550454512121208, 0x0808080812121206, 0x0605120D0D0D0D45,  // 0x00007A78 
	0x5100504501150F00, 0x0612080808060608, 0x0808080808080808, 0x08080800160F3A00,  // 0x00007A98 
	0x12050B0B0B0B0B0B, 0x0505050505050505, 0x0505050605790E0E, 0xA105050D0D0B0B13,  // 0x00007AB8 
	0x1C1C1C011027153E, 0x0505050505050505, 0x0505050505050505, 0x0505050E10140412,  // 0x00007AD8 
	0x050E0E1C02020228, 0xC3C3C3780202C328, 0x0205120979051C02, 0x0E13020B0E0E0B0B,  // 0x00007AF8 
	0x0B05090C14100F19, 0x060B0E130E0E2802, 0x020202020202020B, 0x130B1C4716100F04,  // 0x00007B18 
	0x3A2D010100120202, 0x0202020202023A01, 0x3A0F040F01010100, 0x0202020200080100,  // 0x00007B38 
	0x083A3A0C0F141F0C, 0x093A090E0B9E0E0E, 0x0202020202021201, 0x010909091510160F,  // 0x00007B58 
	0x01010101013A0101, 0x0101010101013A01, 0x0101093A01010101, 0x0101010101010101,  // 0x00007B78 
	0x0101093A19101F19, 0x0109043A02061800, 0x0601010101013A3A, 0x0101013A0C150F0F,  // 0x00007B98 
	0x04010101013A0101, 0x0101010101013A01, 0x0101012D01000101, 0x0000060600010101,  // 0x00007BB8 
	0x01093A0F0916210F, 0x01012D0901010101, 0x0000010101012D3A, 0x0101013A0C15150C,  // 0x00007BD8 
	0x0C3A0100012D0901, 0x011E091E09093A01, 0x3A0F0416013A0100, 0x0000010100080100,  // 0x00007BF8 
	0x083A040416162710, 0x04013A3A01000119, 0x010901010101043A, 0x0101091910141416,  // 0x00007C18 
};

u64 _jyasinzou_room_23_tex_00007C38[] = 
{
	0x57030317032E5456, 0x2E343F4634460303, 0x1717031725030303, 0x3030261A24301717,  // 0x00007C38 
	0x0303030317261A1A, 0x6CB324245D465403, 0x0317252525250303, 0x0303300325460303,  // 0x00007C58 
	0x0303301A03032E03, 0x5703245D25171703, 0x0325171703252503, 0x30031A0303300303,  // 0x00007C78 
	0x0346031A1A6C2603, 0x1A4634523F031A03, 0x031A03251754301A, 0x54032E033017032E,  // 0x00007C98 
	0x1A2E031A031A5717, 0x3F03173F34260303, 0x03030330301A5C03, 0x2E571A2E1A1A3054,  // 0x00007CB8 
	0x172603171A173F17, 0x3003030324252530, 0x0303170317302653, 0x03030303031A1A30,  // 0x00007CD8 
	0x3F242A2446033825, 0x030303031724252A, 0x5403252530172503, 0x262603032503253C,  // 0x00007CF8 
	0x4646440317172503, 0x2A54033003680325, 0x0317030303305403, 0x03031A030317033F,  // 0x00007D18 
	0x253F03302E031717, 0x1A0317031A173803, 0x2E03031A172E306C, 0x3026301A30033C54,  // 0x00007D38 
	0x26033C1A2E031A03, 0x30262E2E2E30031A, 0x2E261A0354302E49, 0x6C03302A303C2E86,  // 0x00007D58 
	0x171A251725540344, 0x2630035C1A035430, 0x0354300303171A30, 0x1A031725244B0330,  // 0x00007D78 
	0x25301A4B25031A03, 0x1A862E1730251A26, 0x2E03031703030303, 0x030317460303245D,  // 0x00007D98 
	0x2E2E03543C031A03, 0x3049544903466CA7, 0x0354920317305403, 0x25032A2546030324,  // 0x00007DB8 
	0x1A541A033025306C, 0x03032E2E2E25036C, 0xA757032E54030303, 0x3054035425305C49,  // 0x00007DD8 
	0x0303540303305703, 0xAC1A572E2E494B03, 0x6CA7545403031754, 0x2E1A545403266CA7,  // 0x00007DF8 
	0x6C1A251A301A3057, 0x576C6C6C032E0346, 0x306CA703171A037E, 0x6CAC1A2E6CAC036C,  // 0x00007E18 
	0x1A1A30301A170354, 0x57572E1730031A54, 0x3C0325300330302E, 0x576C2E03546C2E30,  // 0x00007E38 
	0x03171A0303031717, 0x0303300317172503, 0x265D462A46030354, 0x25576C3054302E1A,  // 0x00007E58 
	0x2603170317250317, 0x1703030303173C30, 0x462A34034B170317, 0x1703031A03170330,  // 0x00007E78 
	0x1A1A03251717031A, 0x2E032A2A301A0330, 0x462A033C251A0326, 0x030325172E300303,  // 0x00007E98 
	0x3C30173030253030, 0x2E6C2E2E54031A46, 0x2554304603032E1A, 0x5426030330260303,  // 0x00007EB8 
	0x3025171A461A302E, 0x03306C031A035424, 0x032530031703572E, 0x1A2E3C262530171A,  // 0x00007ED8 
	0x301A030317032626, 0x5425030317174B46, 0x30173C03031A3054, 0x3017261A03031703,  // 0x00007EF8 
	0x03572625172E546C, 0x0317030317172A17, 0x033025254654032E, 0x0317542503030303,  // 0x00007F18 
	0x03032E2E2E666C1A, 0x541A54305417541A, 0x2EAC260317030303, 0x260303300303031A,  // 0x00007F38 
	0x6C30036C571A6C2E, 0x6C1A03A7492E1730, 0xAC576C2E25033026, 0x0303030303170326,  // 0x00007F58 
	0x2E2E1AAC2E7E302E, 0x6C1A1A1A6C493046, 0x1A496CAC2E2E3030, 0x5CAC031A2E030303,  // 0x00007F78 
	0x4B03541A2E572E54, 0x2E26032A2E6C254B, 0x302E30542EAC2E03, 0x541A66261A5C5C03,  // 0x00007F98 
	0x6C031717302E1A03, 0x036C03172646D030, 0x2517030303030303, 0x250330170303301A,  // 0x00007FB8 
	0x172E4B1717542603, 0x17031A0303241717, 0x1717170303031717, 0x032A033025170303,  // 0x00007FD8 
	0x03265C543F17032E, 0x26302A0326171703, 0x0303030303172E03, 0x0330030354030303,  // 0x00007FF8 
	0x2E54262E30174B49, 0x261A540317030330, 0x260330030303261A, 0x03262E03032E0303,  // 0x00008018 
};

u64 _jyasinzou_room_23_tex_00008038[] = 
{
	0x43437F7F36363636, 0x3636364343364343, 0x4343364343434336, 0x36434343437B437B,  // 0x00008038 
	0x43437B437B7B7B43, 0x7B7B7B7B437B4343, 0x4343434343434336, 0x434343437B437B43,  // 0x00008058 
	0xB7B7B7B76A7E5AB7, 0x6A4E6A6A7EB7B76A, 0xB76A4E7E6AB7B76A, 0x4EB76AB76A6A5A6A,  // 0x00008078 
	0xB7B76A891A033C7E, 0x1A1A1A1A5A5A4E5A, 0xB7B7B7035A5A6A4E, 0x6A6A6A5A5A6A6A7E,  // 0x00008098 
	0x5757575757241A1A, 0x1A6A572E246A1A1A, 0x1A572E6A571A2E2E, 0x5A1A1A1A572E6A57,  // 0x000080B8 
	0x1A2E2E5A44444403, 0x44444444261A5A2E, 0x2E2E5A242E26266A, 0x1A1A26261A261A6A,  // 0x000080D8 
	0x5757571A571A1A1A, 0x1A6A2E1A1A1A1A1A, 0x1A2E1A2E1A2E572E, 0x5A1A1A1A2E1A5A1A,  // 0x000080F8 
	0x2E572E5A26444403, 0x24444444032E5A2E, 0x2E2E2E251A26261A, 0x5A251A1A26261A6A,  // 0x00008118 
	0x1A572E5757571A57, 0x2E575757571A572E, 0x575757575A5A5A1A, 0x5A572E575757575A,  // 0x00008138 
	0x5A5A1A2E5A034444, 0x6144442603035A26, 0x262E26261A26262E, 0x6A1A1A2E262E2625,  // 0x00008158 
	0x245D3F2424245D5D, 0x24242424245D5D24, 0x2424243F3F243F24, 0x3F5D242424243F3F,  // 0x00008178 
	0x243F24243F343434, 0x3952342424242424, 0x2424242434245D5D, 0x5D34345D34345D5D,  // 0x00008198 
	0x1F1F141415151515, 0x1515151415151515, 0x1514151414141435, 0x15151414141F1F1F,  // 0x000081B8 
	0x1414141414141414, 0x1414141415141515, 0x1515141414151514, 0x1514151514151414,  // 0x000081D8 
	0x1414326732323232, 0x3232326735353267, 0x3267673567323267, 0x356732676732151F,  // 0x000081F8 
	0x1535353535151415, 0x3535353567353535, 0x3232321535356767, 0x6767673535676715,  // 0x00008218 
	0x1435040C040C040C, 0x0C0C0C0C350F0F0C, 0x0F0C6B0C0C0F6B0C, 0x0C0F6B0C0C040415,  // 0x00008238 
	0x6B6B6B6B32323235, 0x323232326B0C6B6B, 0x6B6B04356B6B6B0F, 0x0F0F6B6B0F6B0C0F,  // 0x00008258 
	0x1404190419190404, 0x040404040C0C0C0C, 0x0C040C0404040404, 0x04040C0404191935,  // 0x00008278 
	0x046B04040C6B6B35, 0x356B6B6B0C040404, 0x0404040C0C0C0C0C, 0x0C0C0C0C040C0C0C,  // 0x00008298 
	0x152D010909091904, 0x1919191919041919, 0x1919191919091904, 0x1904191909093132,  // 0x000082B8 
	0x191E191919046B6B, 0x356B6B0404041904, 0x0419041904041919, 0x0404041904191904,  // 0x000082D8 
	0x1547180700010001, 0x4700010101474701, 0x0101010000010001, 0x010101090000000C,  // 0x000082F8 
	0x0000087201093119, 0x6B6B3131721E1E72, 0x1E31317231310909, 0x471919091909093E,  // 0x00008318 
	0x0407070A0A0A0A01, 0x0701010901010909, 0x072007000A070707, 0x0701200100500832,  // 0x00008338 
	0x070108080007001E, 0x012019011E200931, 0x010101091E094707, 0x0708010409500000,  // 0x00008358 
	0x040A070A07640720, 0x010101090107091E, 0x2020200720200020, 0x0101640000200809,  // 0x00008378 
	0x080000080A072000, 0x0101041E201E0104, 0x1E09041E1E040909, 0x060D060D0D00070D,  // 0x00008398 
	0x1007070101012001, 0x1E1E1E1E1E201E09, 0x6420206420010120, 0x200920640064201E,  // 0x000083B8 
	0x08086400091E1E1E, 0x1E20081E1E010901, 0x1E041E101E1E0907, 0x0A0D0D0D0D000807,  // 0x000083D8 
	0x040A20002001011E, 0x0109091E01011E01, 0x0120200001200120, 0x006464202020001E,  // 0x000083F8 
	0x0008002020201E1E, 0x1E1E041E1E1E0404, 0x1E1E1E1E041E0707, 0x08080809200D0808,  // 0x00008418 
	0x04040A0101070109, 0x1E1E1E0120200120, 0x2000200000200020, 0x0120202020202004,  // 0x00008438 
	0x1E1E201E011E1E1E, 0x1E1E1E1E1E1E1E1E, 0x1E1E1E1E09090708, 0x0D0D0D0D0D0A0007,  // 0x00008458 
	0x040707200701071E, 0x01201E0120201E20, 0x0000000000002000, 0x2020012020000004,  // 0x00008478 
	0x0020201E1E201E1E, 0x1E1E041E1E1E1E1E, 0x001E1E1E01010A0A, 0x080D070720000D00,  // 0x00008498 
	0x04070A0000070020, 0x202020200A000020, 0x2000000000200020, 0x010101011E000004,  // 0x000084B8 
	0x00001E00001E1E1E, 0x1E1E1E1E1E1E1E1E, 0x1E1E1E1E01090A08, 0x0D0D0D0D2007080D,  // 0x000084D8 
	0x04070707070A0A07, 0x07070A0A0A0A0A20, 0x0000000808080808, 0x0000000000000004,  // 0x000084F8 
	0x000000000000001E, 0x001E1E1E1E1E1E1E, 0x1E1E1E2001012008, 0x0D0D20200D000A0A,  // 0x00008518 
	0x0407070707070707, 0x07070707070A0707, 0x0A0A080D0808080A, 0x080A0A0A0A002004,  // 0x00008538 
	0x002008001E001E1E, 0x1E1E001E1E1E1E1E, 0x1E1E001E20012007, 0x0D0D0D0D00080808,  // 0x00008558 
	0x1007070707070707, 0x07070707070A0A0A, 0x07080808080A0A0A, 0x0A0A0A0A0A640104,  // 0x00008578 
	0x6401200000000000, 0x0000000000001E1E, 0x1E00000020010008, 0x080D08200000080A,  // 0x00008598 
	0x0407070707070707, 0x0707070707070907, 0x070A070A0A070A07, 0x0A0A0A0A0A070104,  // 0x000085B8 
	0x0901016401200000, 0x0000000000000000, 0x0000002020202000, 0x080D0D0D0D00080A,  // 0x000085D8 
	0x0407070707070709, 0x07070707070A0707, 0x0007070A07070707, 0x0707070707070909,  // 0x000085F8 
	0x0107070707010101, 0x0101012020002020, 0x20201E0720072008, 0x0D0D0D0D000A0D0D,  // 0x00008618 
	0x0407070A07070709, 0x0909070907070920, 0x07000A0A070A0A0A, 0x0A0A0A0A0A080A04,  // 0x00008638 
	0x070101640A0A0A64, 0x07200A070A200120, 0x201E091E09040407, 0x200A04090D0D0D0A,  // 0x00008658 
	0x04080A070A0A0A07, 0x0A070707070A070A, 0x0A000A000A0A070A, 0x070A0A0A0A070709,  // 0x00008678 
	0x640A0A640A640A64, 0x0A010A0709090109, 0x010109070707070A, 0x080D0D0D000D0D0D,  // 0x00008698 
	0x09080A0A070A0A09, 0x0709070907070A07, 0x0A070A0A00080A08, 0x070A0707070A0709,  // 0x000086B8 
	0x0A01010901090909, 0x0901010101090901, 0x0909010909070708, 0x640D0D0D0D0D0D0D,  // 0x000086D8 
	0x04080A0A07070707, 0x0707070907070907, 0x0707070707070707, 0x0707090909040710,  // 0x000086F8 
	0x070707070A0A0A0A, 0x0A640A6409010707, 0x0707070707070A08, 0x0D0D0D0D0D0D0D0D,  // 0x00008718 
	0x040D0D07070A0A07, 0x0709070909070701, 0x2020202020202020, 0x0101090909090910,  // 0x00008738 
	0x0709070A070A0A0A, 0x0A07070707070909, 0x0907090707070008, 0x080D0D0D0D0D0D0D,  // 0x00008758 
	0x0908080808070A07, 0x07070A0700000000, 0x0000000020000020, 0x2020070909040910,  // 0x00008778 
	0x0909070920072020, 0x2000002001090909, 0x0909072001200708, 0x0D0D0D0D0D0D0D0D,  // 0x00008798 
	0x040D0D0708080D08, 0x0807202020200000, 0x2020200009070907, 0x0704090109070710,  // 0x000087B8 
	0x0707040904091E09, 0x0901010101090109, 0x0720202000200000, 0x0D0D0D0D0D0D0D0D,  // 0x000087D8 
	0x1004070707090404, 0x0432043204100404, 0x1004100410040432, 0x100404101032101F,  // 0x000087F8 
	0x1032101032323210, 0x3210101010101010, 0x3210103210320404, 0x0404040909090904,  // 0x00008818 
};

u64 _jyasinzou_room_23_tex_00008838[] = 
{
	0x8929492941103851, 0x31311131015388CD, 0x8875111515153533, 0x5675778499999066,  // 0x00008838 
	0x8924299919138011, 0x131114445003336C, 0x1115111111111377, 0x3315334491999948,  // 0x00008858 
	0x6499493941481844, 0x441411145131000C, 0x2221111114111021, 0x2115613144444926,  // 0x00008878 
	0x8424494914434544, 0x444444054411112B, 0x2103311113300310, 0x0021640422092922,  // 0x00008898 
	0x8999444914311111, 0x1212304000120128, 0x4233311133A11A2A, 0x4110640209499940,  // 0x000088B8 
	0x8922414111313310, 0x1010111111101018, 0x203777333333A73A, 0x7A71003229229994,  // 0x000088D8 
	0x8494009143314111, 0x1141101024424416, 0x2402020222222222, 0x2220000102999990,  // 0x000088F8 
	0x6423941110110010, 0x0022022242202248, 0x0225000202222222, 0x2222030124429993,  // 0x00008918 
	0x8020002403033310, 0x1110122442222226, 0x5550000000000224, 0x2222010012202060,  // 0x00008938 
	0x8016680660036836, 0x8666663111211118, 0x3766000000007721, 0x1300336330306668,  // 0x00008958 
	0x8006000630013103, 0x0666033111411338, 0x731033301033A311, 0x1111000311030018,  // 0x00008978 
	0x8366680607011113, 0x1033311444444118, 0x13031001122A7341, 0x1113336313300020,  // 0x00008998 
	0xC063660333131411, 0x1330341194411338, 0x3030003000307A11, 0x1111336011000216,  // 0x000089B8 
	0x8666606665751511, 0x1773319119411338, 0x3606703313A37311, 0x1113336310002006,  // 0x000089D8 
	0xC666600066311113, 0x0710021444005558, 0x5660666566775533, 0x113A006022202426,  // 0x000089F8 
	0xC066066666751111, 0x330002322423755B, 0x55686575777755A3, 0xA3A7300020202216,  // 0x00008A18 
	0xC060004001491914, 0x4220222444007558, 0x55866557757555A3, 0x3A37A00022234226,  // 0x00008A38 
	0xC660002420219141, 0x4492212144101358, 0x566667A7A755557A, 0x73A733002A2222A6,  // 0x00008A58 
	0xC660244222419144, 0x4442224212122158, 0x5566577777755577, 0x3775A07322AA2126,  // 0x00008A78 
	0xC660022420349414, 0x4444424224415558, 0x575865A7A77A5553, 0x37A5230A22222A08,  // 0x00008A98 
	0xC863222207224141, 0x4444224442250118, 0x15576777777757A7, 0x7775703022222276,  // 0x00008AB8 
	0xC660042202244144, 0x0242222204041418, 0x13576777777A5577, 0x7777202A22A0AA06,  // 0x00008AD8 
	0xCC60429410044141, 0x1024202214101118, 0x1372A7A7A7755577, 0x5757720A24423078,  // 0x00008AF8 
	0xC866024220244414, 0x1242444202242915, 0x113230737A755575, 0x7557021A42441776,  // 0x00008B18 
	0xC866002206603331, 0x7121200144221915, 0x11370330A7555555, 0x757521004A927308,  // 0x00008B38 
	0xC866002060677333, 0x6700013001300198, 0x1157767667655B55, 0x5556021322437768,  // 0x00008B58 
	0xC806002055555555, 0x8557303310030118, 0x3135755555888855, 0x7557010323247668,  // 0x00008B78 
	0xC806000606677775, 0x555577550637611B, 0x115755555558B853, 0x7356010323416608,  // 0x00008B98 
	0xC600002035657555, 0x856755573776631C, 0x8B3775555685885A, 0x777670030411666B,  // 0x00008BB8 
	0xC806000065555555, 0x555565575776611B, 0x3585555558585873, 0x3332010402136008,  // 0x00008BD8 
	0xC600202060631777, 0x56666677550663BB, 0x3355588885855831, 0x3200100001130868,  // 0x00008BF8 
	0xD842022104224113, 0x60008023367585BC, 0x55B88B8858856871, 0x0105207030330036,  // 0x00008C18 
	0xDDCC8888888B8888, 0x8B8CCBC688CCBDDD, 0xDBBBBBBBBBBB8C88, 0x88BDC88B8B88C8BB,  // 0x00008C38 
	0xDC20222222206320, 0x200602201020048D, 0x833758B85555A311, 0x4400510000011008,  // 0x00008C58 
	0xC840224222228000, 0x021020111031044B, 0x1111555855553031, 0x1158503000330300,  // 0x00008C78 
	0xC200242222020000, 0x0101012130002498, 0x1511355885557111, 0x1110533036003300,  // 0x00008C98 
	0xC010422021222021, 0x2222444043114448, 0x19114755B5537733, 0x3138033100013136,  // 0x00008CB8 
	0xC010224204222002, 0x2224424242104958, 0x99914775B8731331, 0x3335730006606600,  // 0x00008CD8 
	0xB002224222242020, 0x1222444494949558, 0x9999207686500333, 0x3130700066006636,  // 0x00008CF8 
	0xC300022010000000, 0x212444444442445B, 0x4494000677733033, 0x1103331060002166,  // 0x00008D18 
	0xC000202300100060, 0x301122201033190B, 0x9999103075631333, 0x3310730203330166,  // 0x00008D38 
	0xC030220300000606, 0x0302311213030778, 0x1441401367733077, 0x3735633000110160,  // 0x00008D58 
	0xC100423730060060, 0x300100038033141B, 0x4444130378577357, 0x3575777401041906,  // 0x00008D78 
	0xB202412733000006, 0x3001033103317148, 0x1411203755557777, 0x5375676002141060,  // 0x00008D98 
	0x8022222707767766, 0x030120000337394B, 0x0744101533535366, 0x7776566004026911,  // 0x00008DB8 
	0x82020A0377767065, 0x3330331377AA3346, 0x4114203137853578, 0x5685526629499309,  // 0x00008DD8 
	0xC007773755555356, 0xA33A3773363AAA35, 0x44A1655553455767, 0x5852556029999140,  // 0x00008DF8 
	0x8231377576657757, 0x733173731AA33315, 0x1413335555855588, 0x5555850044463944,  // 0x00008E18 
	0x8857707655573373, 0x3131131373333338, 0x5535755555555555, 0x5555660499999210,  // 0x00008E38 
	0x8005070573573353, 0x1111113133733118, 0x1335535555855555, 0x1555772249003191,  // 0x00008E58 
	0x8021501333332113, 0x3111131377775118, 0x1151155555555555, 0x5555762499993049,  // 0x00008E78 
	0x8000022000222223, 0x1114444411111118, 0x1111111515555555, 0x5553773499339122,  // 0x00008E98 
	0x8000000000000200, 0x2249444242222138, 0x1341515555155555, 0x5515373099991444,  // 0x00008EB8 
	0xC000000000000222, 0x0444422222222A78, 0xA731111111111155, 0x5111371449431142,  // 0x00008ED8 
	0x8000000000000060, 0x0202202022222078, 0x677A731111111111, 0x1113333149999142,  // 0x00008EF8 
	0x8000000600000200, 0x1002000000000066, 0x7000077777733133, 0x3350303489991299,  // 0x00008F18 
	0x8002000666060063, 0x0122022222222428, 0x077A222A03202373, 0x3565688032269992,  // 0x00008F38 
	0x8420222020000202, 0x2121220202222006, 0xA22A2A2A27206676, 0x7760000249991999,  // 0x00008F58 
	0x6422022606060020, 0x2022142402000206, 0x2776766667777667, 0x66766004A9999999,  // 0x00008F78 
	0x8422000000060060, 0x000000000066680C, 0x000022222A2A6700, 0x0000002499999999,  // 0x00008F98 
	0x8990022006066007, 0x333333337766666C, 0x0602022220000066, 0x6060001449999999,  // 0x00008FB8 
	0x6444402000201111, 0x111131133306686C, 0x6606303331137666, 0x6603730499999999,  // 0x00008FD8 
	0x8990449440333311, 0x333160600867600C, 0x0086865667777676, 0x0333131199999999,  // 0x00008FF8 
	0xC80006888B8B8C88, 0xC8C8C88BC88CCBBD, 0xCBCCBBBCBCCCCCCC, 0xBCCBCB8888866668,  // 0x00009018 
};

static u8 unaccounted9038[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx_t _jyasinzou_room_23_vertices_00009040[8] = 
{
	 { 480, 1543, -83, 0, 256, 0, 5, 5, 5, 255 }, // 0x00009040
	 { 480, 843, -83, 0, 43, 0, 5, 5, 5, 255 }, // 0x00009050
	 { 580, 843, -83, 0, 43, 4096, 5, 5, 5, 255 }, // 0x00009060
	 { 580, 1543, -83, 0, 256, 4096, 5, 5, 5, 255 }, // 0x00009070
	 { 780, 1543, -83, 0, 256, 4096, 5, 5, 5, 255 }, // 0x00009080
	 { 780, 843, -83, 0, 43, 4096, 5, 5, 5, 255 }, // 0x00009090
	 { 880, 843, -83, 0, 43, 0, 5, 5, 5, 255 }, // 0x000090A0
	 { 880, 1543, -83, 0, 256, 0, 5, 5, 5, 255 }, // 0x000090B0
};

Vtx_t _jyasinzou_room_23_vertices_000090C0[8] = 
{
	 { 480, 843, -83, 0, 0, 0, 0, 0, 0, 0 }, // 0x000090C0
	 { 880, 843, -83, 0, 0, 0, 0, 0, 0, 0 }, // 0x000090D0
	 { 480, 1543, -83, 0, 0, 0, 0, 0, 0, 0 }, // 0x000090E0
	 { 880, 1543, -83, 0, 0, 0, 0, 0, 0, 0 }, // 0x000090F0
	 { 480, 843, -83, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009100
	 { 880, 843, -83, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009110
	 { 480, 1543, -83, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009120
	 { 880, 1543, -83, 0, 0, 0, 0, 0, 0, 0 }, // 0x00009130
};

Gfx _jyasinzou_room_23_dlist_00009140[] =
{
	gsDPPipeSync(), // 0x00009140
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00009148
	gsSPVertex(_jyasinzou_room_23_vertices_000090C0, 8, 0), // 0x00009150
	gsSPCullDisplayList(0, 7), // 0x00009158
	gsDPPipeSync(), // 0x00009160
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00009168
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00009170
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00009178
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018920), // 0x00009180
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, 3, 7, 0, 1, 3, 0), // 0x00009188
	gsDPLoadSync(), // 0x00009190
	gsDPLoadBlock(7, 0, 0, 1023, 1024), // 0x00009198
	gsDPPipeSync(), // 0x000091A0
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 2, 0, 0, 0, 3, 7, 0, 1, 3, 0), // 0x000091A8
	gsDPSetTileSize(0, 0, 0, 28, 508), // 0x000091B0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x000091B8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC81049D8), // 0x000091C0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000091C8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000091D0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 127), // 0x000091D8
	gsSPVertex(_jyasinzou_room_23_vertices_00009040, 8, 0), // 0x000091E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000091E8
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000091F0
	gsSPEndDisplayList(), // 0x000091F8
};

static u8 unaccounted9200[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x91, 0x40, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};


