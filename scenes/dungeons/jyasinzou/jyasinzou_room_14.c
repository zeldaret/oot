#include <ultra64.h>
#include <z64.h>
#include "jyasinzou_room_14.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "jyasinzou_scene.h"



SCmdEchoSettings _jyasinzou_room_14_set0000_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0000
SCmdRoomBehavior _jyasinzou_room_14_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _jyasinzou_room_14_set0000_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0010
SCmdTimeSettings _jyasinzou_room_14_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _jyasinzou_room_14_set0000_cmd04 = { 0x0A, 0, (u32)&_jyasinzou_room_14_meshHeader_000000A0 }; // 0x0020
SCmdObjectList _jyasinzou_room_14_set0000_cmd05 = { 0x0B, 0x06, (u32)_jyasinzou_room_14_objectList_00000040 }; // 0x0028
SCmdActorList _jyasinzou_room_14_set0000_cmd06 = { 0x01, 0x05, (u32)_jyasinzou_room_14_actorList_0000004C }; // 0x0030
SCmdEndMarker _jyasinzou_room_14_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _jyasinzou_room_14_objectList_00000040[] = 
{
	OBJECT_JYA_OBJ,
	OBJECT_JYA_DOOR,
	OBJECT_REEBA,
	OBJECT_BOX,
	OBJECT_ST,
	OBJECT_GI_SUTARU,
};

ActorEntry _jyasinzou_room_14_actorList_0000004C[5] = 
{
	{ ACTOR_EN_ENCOUNT1, 612, -159, -1096, 0, 0, 0, 0x0041 }, //0x0000004C 
	{ ACTOR_EN_OKARINA_TAG, 373, 30, -872, 0, 0, 0, 0x1CB1 }, //0x0000005C 
	{ ACTOR_EN_SW, 517, 270, -1003, -32768, 0, 0, 0x8702 }, //0x0000006C 
	{ ACTOR_EN_WONDER_TALK2, 373, 30, -872, 0, 182, 11, 0x8AF1 }, //0x0000007C 
	{ ACTOR_EN_BOX, 358, 30, -1392, 0, -32768, 0, 0x7AA4 }, //0x0000008C 
};

static u32 pad9C = 0;

MeshHeader2 _jyasinzou_room_14_meshHeader_000000A0 = { { 2 }, 0x06, (u32)&_jyasinzou_room_14_meshDListEntry_000000AC, (u32)&(_jyasinzou_room_14_meshDListEntry_000000AC) + sizeof(_jyasinzou_room_14_meshDListEntry_000000AC) };

MeshEntry2 _jyasinzou_room_14_meshDListEntry_000000AC[6] = 
{
	{ 551, 70, -949, 576, (u32)_jyasinzou_room_14_dlist_00000350, 0 },
	{ 551, 70, -949, 576, (u32)_jyasinzou_room_14_dlist_00000AF8, 0 },
	{ 671, 70, -1313, 262, (u32)_jyasinzou_room_14_dlist_00001088, 0 },
	{ 371, -50, -1373, 116, (u32)_jyasinzou_room_14_dlist_00001340, 0 },
	{ 551, -145, -1123, 392, (u32)_jyasinzou_room_14_dlist_000017D8, 0 },
	{ 551, 30, -699, 335, (u32)_jyasinzou_room_14_dlist_00001AE0, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

static u8 unaccounted0110[] = 
{
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xA0, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xA0, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

Vtx_t _jyasinzou_room_14_vertices_00000170[4] = 
{
	 { 431, 70, -1433, 0, 1536, -512, 115, 102, 78, 255 }, // 0x00000170
	 { 551, -130, -1433, 0, 3072, 2048, 52, 49, 38, 255 }, // 0x00000180
	 { 551, 270, -1433, 0, 3072, -3072, 69, 62, 48, 255 }, // 0x00000190
	 { 311, -130, -1433, 0, 0, 2048, 69, 62, 48, 255 }, // 0x000001A0
};

Vtx_t _jyasinzou_room_14_vertices_000001B0[6] = 
{
	 { 791, 270, -1053, 0, 1792, -3072, 52, 49, 38, 255 }, // 0x000001B0
	 { 791, 270, -1193, 0, 0, -3072, 52, 49, 38, 255 }, // 0x000001C0
	 { 791, 70, -1193, 0, 0, -512, 100, 89, 67, 255 }, // 0x000001D0
	 { 791, 70, -1053, 0, 1792, -512, 100, 89, 67, 255 }, // 0x000001E0
	 { 791, -130, -1193, 0, 0, 2048, 52, 49, 38, 255 }, // 0x000001F0
	 { 791, -130, -1053, 0, 1792, 2048, 52, 49, 38, 255 }, // 0x00000200
};

Vtx_t _jyasinzou_room_14_vertices_00000210[4] = 
{
	 { 431, 70, -1433, 0, 1536, -512, 115, 102, 78, 255 }, // 0x00000210
	 { 551, 270, -1433, 0, 3072, -3072, 69, 62, 48, 255 }, // 0x00000220
	 { 311, 270, -1433, 0, 0, -3072, 52, 49, 38, 255 }, // 0x00000230
	 { 311, -130, -1433, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00000240
};

Vtx_t _jyasinzou_room_14_vertices_00000250[8] = 
{
	 { 791, 270, -673, 0, 3243, 3072, 69, 62, 48, 255 }, // 0x00000250
	 { 551, 270, -933, 0, 1024, 1024, 134, 119, 89, 255 }, // 0x00000260
	 { 791, 270, -1193, 0, -1195, 3072, 52, 49, 38, 255 }, // 0x00000270
	 { 671, 270, -465, 0, 5016, 2048, 69, 62, 48, 255 }, // 0x00000280
	 { 431, 270, -465, 0, 5016, 0, 52, 49, 38, 255 }, // 0x00000290
	 { 311, 270, -673, 0, 3243, -1024, 52, 49, 38, 255 }, // 0x000002A0
	 { 311, 270, -1433, 0, -3243, -1024, 52, 49, 38, 255 }, // 0x000002B0
	 { 551, 270, -1433, 0, -3243, 1024, 69, 62, 48, 255 }, // 0x000002C0
};

Vtx_t _jyasinzou_room_14_vertices_000002D0[8] = 
{
	 { 311, -130, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x000002D0
	 { 791, -130, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x000002E0
	 { 311, 270, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x000002F0
	 { 791, 270, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000300
	 { 311, -130, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000310
	 { 791, -130, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000320
	 { 311, 270, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000330
	 { 791, 270, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000340
};

Gfx _jyasinzou_room_14_dlist_00000350[] =
{
	gsDPPipeSync(), // 0x00000350
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000358
	gsSPVertex(_jyasinzou_room_14_vertices_000002D0, 8, 0), // 0x00000360
	gsSPCullDisplayList(0, 7), // 0x00000368
	gsDPPipeSync(), // 0x00000370
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000378
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000380
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000388
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000390
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000398
	gsDPLoadSync(), // 0x000003A0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000003A8
	gsDPPipeSync(), // 0x000003B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000003B8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000003C0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000003C8
	gsDPTileSync(), // 0x000003D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000003D8
	gsDPLoadSync(), // 0x000003E0
	gsDPLoadTLUTCmd(7, 15), // 0x000003E8
	gsDPPipeSync(), // 0x000003F0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000003F8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000400
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000408
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000410
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000418
	gsSPVertex(_jyasinzou_room_14_vertices_00000170, 4, 0), // 0x00000420
	gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0), // 0x00000428
	gsDPPipeSync(), // 0x00000430
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000044A0), // 0x00000438
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000440
	gsDPLoadSync(), // 0x00000448
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000450
	gsDPPipeSync(), // 0x00000458
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000460
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000468
	gsSPVertex(_jyasinzou_room_14_vertices_000001B0, 6, 0), // 0x00000470
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000478
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00000480
	gsDPPipeSync(), // 0x00000488
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000490
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000498
	gsDPLoadSync(), // 0x000004A0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000004A8
	gsDPPipeSync(), // 0x000004B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000004B8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000004C0
	gsSPVertex(_jyasinzou_room_14_vertices_00000210, 4, 0), // 0x000004C8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000004D0
	gsDPPipeSync(), // 0x000004D8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000044A0), // 0x000004E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000004E8
	gsDPLoadSync(), // 0x000004F0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000004F8
	gsDPPipeSync(), // 0x00000500
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000508
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000510
	gsSPVertex(_jyasinzou_room_14_vertices_00000250, 8, 0), // 0x00000518
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00000520
	gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0), // 0x00000528
	gsSP2Triangles(5, 6, 1, 0, 6, 7, 1, 0), // 0x00000530
	gsSP1Triangle(7, 2, 1, 0), // 0x00000538
	gsSPEndDisplayList(), // 0x00000540
};

Vtx_t _jyasinzou_room_14_vertices_00000548[17] = 
{
	 { 431, 270, -465, 0, 0, -1024, 52, 49, 38, 255 }, // 0x00000548
	 { 431, 150, -465, 0, 0, 512, 115, 102, 78, 255 }, // 0x00000558
	 { 311, 150, -673, 0, 3072, 512, 115, 102, 78, 255 }, // 0x00000568
	 { 311, 270, -673, 0, 3072, -1024, 52, 49, 38, 255 }, // 0x00000578
	 { 431, 30, -465, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00000588
	 { 311, 30, -673, 0, 3072, 2048, 69, 62, 48, 255 }, // 0x00000598
	 { 431, 30, -465, 0, 2048, 2048, 69, 62, 48, 255 }, // 0x000005A8
	 { 431, 150, -465, 0, 2048, 1024, 115, 102, 78, 255 }, // 0x000005B8
	 { 551, 150, -465, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x000005C8
	 { 431, 270, -465, 0, 2048, 0, 52, 49, 38, 255 }, // 0x000005D8
	 { 671, 270, -465, 0, 0, 0, 69, 62, 48, 255 }, // 0x000005E8
	 { 791, 30, -813, 0, 4864, 0, 115, 102, 78, 255 }, // 0x000005F8
	 { 791, -130, -1053, 0, 1792, 2048, 52, 49, 38, 255 }, // 0x00000608
	 { 791, -130, -813, 0, 4864, 2048, 52, 49, 38, 255 }, // 0x00000618
	 { 791, 70, -1053, 0, 1792, -512, 100, 89, 67, 255 }, // 0x00000628
	 { 791, 270, -813, 0, 4864, -3072, 81, 72, 55, 255 }, // 0x00000638
	 { 791, 270, -1053, 0, 1792, -3072, 52, 49, 38, 255 }, // 0x00000648
};

Vtx_t _jyasinzou_room_14_vertices_00000658[4] = 
{
	 { 718, 30, -507, 0, 256, 2048, 81, 72, 55, 255 }, // 0x00000658
	 { 701, 30, -517, 0, 0, 2048, 81, 72, 55, 255 }, // 0x00000668
	 { 701, 190, -517, 0, 0, 0, 52, 49, 38, 255 }, // 0x00000678
	 { 718, 190, -507, 0, 256, 0, 52, 49, 38, 255 }, // 0x00000688
};

Vtx_t _jyasinzou_room_14_vertices_00000698[4] = 
{
	 { 718, 190, -507, 0, 256, 1792, 69, 62, 48, 255 }, // 0x00000698
	 { 701, 190, -517, 0, 256, 1536, 69, 62, 48, 255 }, // 0x000006A8
	 { 761, 190, -621, 0, 1024, 1536, 69, 62, 48, 255 }, // 0x000006B8
	 { 778, 190, -611, 0, 1024, 1792, 69, 62, 48, 255 }, // 0x000006C8
};

Vtx_t _jyasinzou_room_14_vertices_000006D8[10] = 
{
	 { 778, 190, -611, 0, 256, 0, 52, 49, 38, 255 }, // 0x000006D8
	 { 761, 190, -621, 0, 0, 0, 52, 49, 38, 255 }, // 0x000006E8
	 { 761, 30, -621, 0, 0, 2048, 81, 72, 55, 255 }, // 0x000006F8
	 { 778, 30, -611, 0, 256, 2048, 81, 72, 55, 255 }, // 0x00000708
	 { 701, 30, -517, 0, 2304, 2048, 115, 102, 78, 255 }, // 0x00000718
	 { 671, 30, -465, 0, 3072, 2048, 69, 62, 48, 255 }, // 0x00000728
	 { 701, 190, -517, 0, 2304, 0, 115, 102, 78, 255 }, // 0x00000738
	 { 671, 270, -465, 0, 3072, -1024, 69, 62, 48, 255 }, // 0x00000748
	 { 731, 270, -569, 0, 1536, -1024, 100, 89, 67, 255 }, // 0x00000758
	 { 761, 190, -621, 0, 768, 0, 115, 102, 78, 255 }, // 0x00000768
};

Vtx_t _jyasinzou_room_14_vertices_00000778[13] = 
{
	 { 731, 270, -569, 0, 512, 2048, 100, 89, 67, 255 }, // 0x00000778
	 { 791, 270, -673, 0, 2048, 2048, 69, 62, 48, 255 }, // 0x00000788
	 { 761, 190, -621, 0, 1280, 1024, 115, 102, 78, 255 }, // 0x00000798
	 { 791, 30, -673, 0, 2048, -1024, 100, 89, 67, 255 }, // 0x000007A8
	 { 761, 30, -621, 0, 1280, -1024, 115, 102, 78, 255 }, // 0x000007B8
	 { 791, 30, -813, 0, 4864, 0, 115, 102, 78, 255 }, // 0x000007C8
	 { 791, 30, -673, 0, 6656, 0, 100, 89, 67, 255 }, // 0x000007D8
	 { 791, 270, -673, 0, 6656, -3072, 69, 62, 48, 255 }, // 0x000007E8
	 { 791, 270, -813, 0, 4864, -3072, 81, 72, 55, 255 }, // 0x000007F8
	 { 431, 30, -465, 0, 2048, 2048, 69, 62, 48, 255 }, // 0x00000808
	 { 551, 150, -465, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00000818
	 { 671, 30, -465, 0, 0, 2048, 69, 62, 48, 255 }, // 0x00000828
	 { 671, 270, -465, 0, 0, 0, 69, 62, 48, 255 }, // 0x00000838
};

Vtx_t _jyasinzou_room_14_vertices_00000848[4] = 
{
	 { 791, -50, -813, 0, -5120, -1707, 81, 72, 55, 255 }, // 0x00000848
	 { 551, -50, -813, 0, 3072, -1707, 115, 102, 78, 255 }, // 0x00000858
	 { 551, 30, -813, 0, 3072, -4437, 100, 89, 67, 255 }, // 0x00000868
	 { 791, 30, -813, 0, -5120, -4437, 81, 72, 55, 255 }, // 0x00000878
};

Vtx_t _jyasinzou_room_14_vertices_00000888[8] = 
{
	 { 551, -50, -813, 0, -848, 1024, 115, 102, 78, 255 }, // 0x00000888
	 { 431, -50, -933, 0, 2048, 1024, 115, 102, 78, 255 }, // 0x00000898
	 { 431, 30, -933, 0, 2048, 0, 100, 89, 67, 255 }, // 0x000008A8
	 { 551, 30, -813, 0, -848, 0, 100, 89, 67, 255 }, // 0x000008B8
	 { 431, -50, -933, 0, 0, 1024, 100, 89, 67, 255 }, // 0x000008C8
	 { 311, -50, -933, 0, 2048, 1024, 69, 62, 48, 255 }, // 0x000008D8
	 { 311, 30, -933, 0, 2048, 0, 115, 102, 78, 255 }, // 0x000008E8
	 { 431, 30, -933, 0, 0, 0, 100, 89, 67, 255 }, // 0x000008F8
};

Vtx_t _jyasinzou_room_14_vertices_00000908[4] = 
{
	 { 791, -50, -813, 0, -5120, -1707, 81, 72, 55, 255 }, // 0x00000908
	 { 791, -130, -813, 0, -5120, 1024, 52, 49, 38, 255 }, // 0x00000918
	 { 551, -130, -813, 0, 3072, 1024, 52, 49, 38, 255 }, // 0x00000928
	 { 551, -50, -813, 0, 3072, -1707, 115, 102, 78, 255 }, // 0x00000938
};

Vtx_t _jyasinzou_room_14_vertices_00000948[8] = 
{
	 { 551, -130, -813, 0, 533, 1024, 52, 49, 38, 255 }, // 0x00000948
	 { 431, -130, -933, 0, 2705, 1024, 69, 62, 48, 255 }, // 0x00000958
	 { 431, -50, -933, 0, 2705, 0, 115, 102, 78, 255 }, // 0x00000968
	 { 551, -50, -813, 0, 533, 0, 115, 102, 78, 255 }, // 0x00000978
	 { 431, -130, -933, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00000988
	 { 311, -130, -933, 0, 1536, 1024, 52, 49, 38, 255 }, // 0x00000998
	 { 311, -50, -933, 0, 1536, 0, 69, 62, 48, 255 }, // 0x000009A8
	 { 431, -50, -933, 0, 0, 0, 100, 89, 67, 255 }, // 0x000009B8
};

Vtx_t _jyasinzou_room_14_vertices_000009C8[11] = 
{
	 { 311, 270, -1433, 0, 9728, 0, 52, 49, 38, 255 }, // 0x000009C8
	 { 311, 270, -673, 0, 0, 0, 52, 49, 38, 255 }, // 0x000009D8
	 { 311, 170, -958, 0, 3648, 1280, 147, 131, 97, 255 }, // 0x000009E8
	 { 311, 30, -933, 0, 3328, 3072, 115, 102, 78, 255 }, // 0x000009F8
	 { 311, 30, -673, 0, 0, 3072, 69, 62, 48, 255 }, // 0x00000A08
	 { 311, 150, -673, 0, 0, 1536, 115, 102, 78, 255 }, // 0x00000A18
	 { 311, 30, -1313, 0, 8192, 3072, 115, 102, 78, 255 }, // 0x00000A28
	 { 311, 30, -1433, 0, 9728, 3072, 52, 49, 38, 255 }, // 0x00000A38
	 { 311, -130, -933, 0, 3328, 5120, 52, 49, 38, 255 }, // 0x00000A48
	 { 311, 30, -1183, 0, 6528, 3072, 147, 131, 97, 255 }, // 0x00000A58
	 { 311, -130, -1313, 0, 8192, 5120, 52, 49, 38, 255 }, // 0x00000A68
};

Vtx_t _jyasinzou_room_14_vertices_00000A78[8] = 
{
	 { 311, -130, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A78
	 { 791, -130, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A88
	 { 311, 270, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A98
	 { 791, 270, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AA8
	 { 311, -130, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AB8
	 { 791, -130, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AC8
	 { 311, 270, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AD8
	 { 791, 270, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AE8
};

Gfx _jyasinzou_room_14_dlist_00000AF8[] =
{
	gsDPPipeSync(), // 0x00000AF8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000B00
	gsSPVertex(_jyasinzou_room_14_vertices_00000A78, 8, 0), // 0x00000B08
	gsSPCullDisplayList(0, 7), // 0x00000B10
	gsDPPipeSync(), // 0x00000B18
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000B20
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000B28
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000B30
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000044A0), // 0x00000B38
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000B40
	gsDPLoadSync(), // 0x00000B48
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000B50
	gsDPPipeSync(), // 0x00000B58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000B60
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000B68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000B70
	gsDPTileSync(), // 0x00000B78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000B80
	gsDPLoadSync(), // 0x00000B88
	gsDPLoadTLUTCmd(7, 15), // 0x00000B90
	gsDPPipeSync(), // 0x00000B98
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000BA0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000BA8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000BB0
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000BB8
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000BC0
	gsSPVertex(_jyasinzou_room_14_vertices_00000548, 17, 0), // 0x00000BC8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000BD0
	gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0), // 0x00000BD8
	gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0), // 0x00000BE0
	gsSP2Triangles(9, 10, 8, 0, 11, 12, 13, 0), // 0x00000BE8
	gsSP2Triangles(11, 14, 12, 0, 11, 15, 16, 0), // 0x00000BF0
	gsSP1Triangle(11, 16, 14, 0), // 0x00000BF8
	gsDPPipeSync(), // 0x00000C00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000C08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000C10
	gsDPLoadSync(), // 0x00000C18
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000C20
	gsDPPipeSync(), // 0x00000C28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000C30
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000C38
	gsSPVertex(_jyasinzou_room_14_vertices_00000658, 4, 0), // 0x00000C40
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000C48
	gsDPPipeSync(), // 0x00000C50
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000044A0), // 0x00000C58
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000C60
	gsDPLoadSync(), // 0x00000C68
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000C70
	gsDPPipeSync(), // 0x00000C78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000C80
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000C88
	gsSPVertex(_jyasinzou_room_14_vertices_00000698, 4, 0), // 0x00000C90
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000C98
	gsDPPipeSync(), // 0x00000CA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000CA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000CB0
	gsDPLoadSync(), // 0x00000CB8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000CC0
	gsDPPipeSync(), // 0x00000CC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000CD0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000CD8
	gsSPVertex(_jyasinzou_room_14_vertices_000006D8, 10, 0), // 0x00000CE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000CE8
	gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0), // 0x00000CF0
	gsSP2Triangles(7, 8, 6, 0, 8, 9, 6, 0), // 0x00000CF8
	gsDPPipeSync(), // 0x00000D00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000044A0), // 0x00000D08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000D10
	gsDPLoadSync(), // 0x00000D18
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000D20
	gsDPPipeSync(), // 0x00000D28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000D30
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000D38
	gsSPVertex(_jyasinzou_room_14_vertices_00000778, 13, 0), // 0x00000D40
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x00000D48
	gsSP2Triangles(4, 2, 3, 0, 5, 6, 7, 0), // 0x00000D50
	gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0), // 0x00000D58
	gsSP1Triangle(12, 11, 10, 0), // 0x00000D60
	gsDPPipeSync(), // 0x00000D68
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_00001CA0), // 0x00000D70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000D78
	gsDPLoadSync(), // 0x00000D80
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000D88
	gsDPPipeSync(), // 0x00000D90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000D98
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000DA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00000DA8
	gsDPTileSync(), // 0x00000DB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000DB8
	gsDPLoadSync(), // 0x00000DC0
	gsDPLoadTLUTCmd(7, 255), // 0x00000DC8
	gsDPPipeSync(), // 0x00000DD0
	gsSPVertex(_jyasinzou_room_14_vertices_00000848, 4, 0), // 0x00000DD8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000DE0
	gsDPPipeSync(), // 0x00000DE8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000028A0), // 0x00000DF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000DF8
	gsDPLoadSync(), // 0x00000E00
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000E08
	gsDPPipeSync(), // 0x00000E10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000E18
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000E20
	gsSPVertex(_jyasinzou_room_14_vertices_00000888, 8, 0), // 0x00000E28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000E30
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000E38
	gsDPPipeSync(), // 0x00000E40
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_00001CA0), // 0x00000E48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000E50
	gsDPLoadSync(), // 0x00000E58
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000E60
	gsDPPipeSync(), // 0x00000E68
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000E70
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000E78
	gsSPVertex(_jyasinzou_room_14_vertices_00000908, 4, 0), // 0x00000E80
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000E88
	gsDPPipeSync(), // 0x00000E90
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000044A0), // 0x00000E98
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000EA0
	gsDPLoadSync(), // 0x00000EA8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000EB0
	gsDPPipeSync(), // 0x00000EB8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000EC0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000EC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000ED0
	gsDPTileSync(), // 0x00000ED8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000EE0
	gsDPLoadSync(), // 0x00000EE8
	gsDPLoadTLUTCmd(7, 15), // 0x00000EF0
	gsDPPipeSync(), // 0x00000EF8
	gsSPVertex(_jyasinzou_room_14_vertices_00000948, 8, 0), // 0x00000F00
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000F08
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000F10
	gsDPPipeSync(), // 0x00000F18
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000F20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000F28
	gsDPLoadSync(), // 0x00000F30
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000F38
	gsDPPipeSync(), // 0x00000F40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000F48
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000F50
	gsSPVertex(_jyasinzou_room_14_vertices_000009C8, 11, 0), // 0x00000F58
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0), // 0x00000F60
	gsSP2Triangles(2, 5, 4, 0, 2, 1, 5, 0), // 0x00000F68
	gsSP2Triangles(6, 7, 0, 0, 8, 9, 3, 0), // 0x00000F70
	gsSP2Triangles(8, 10, 9, 0, 10, 6, 9, 0), // 0x00000F78
	gsSP2Triangles(6, 0, 9, 0, 0, 2, 9, 0), // 0x00000F80
	gsSP1Triangle(2, 3, 9, 0), // 0x00000F88
	gsSPEndDisplayList(), // 0x00000F90
};

Vtx_t _jyasinzou_room_14_vertices_00000F98[7] = 
{
	 { 671, -130, -1313, 0, 2172, 2048, 69, 62, 48, 255 }, // 0x00000F98
	 { 671, 46, -1313, 0, 2172, -205, 115, 102, 78, 255 }, // 0x00000FA8
	 { 551, -130, -1433, 0, 0, 2048, 52, 49, 38, 255 }, // 0x00000FB8
	 { 551, 270, -1433, 0, 0, -3072, 52, 49, 38, 255 }, // 0x00000FC8
	 { 791, 270, -1193, 0, 4344, -3072, 52, 49, 38, 255 }, // 0x00000FD8
	 { 791, 70, -1193, 0, 4344, -512, 100, 89, 67, 255 }, // 0x00000FE8
	 { 791, -130, -1193, 0, 4344, 2048, 52, 49, 38, 255 }, // 0x00000FF8
};

Vtx_t _jyasinzou_room_14_vertices_00001008[8] = 
{
	 { 574, -130, -1452, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001008
	 { 791, -130, -1193, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001018
	 { 574, 270, -1452, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001028
	 { 791, 270, -1193, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001038
	 { 551, -130, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001048
	 { 768, -130, -1174, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001058
	 { 551, 270, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001068
	 { 768, 270, -1174, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001078
};

Gfx _jyasinzou_room_14_dlist_00001088[] =
{
	gsDPPipeSync(), // 0x00001088
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001090
	gsSPVertex(_jyasinzou_room_14_vertices_00001008, 8, 0), // 0x00001098
	gsSPCullDisplayList(0, 7), // 0x000010A0
	gsDPPipeSync(), // 0x000010A8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000010B0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x000010B8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000010C0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x000010C8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000010D0
	gsDPLoadSync(), // 0x000010D8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000010E0
	gsDPPipeSync(), // 0x000010E8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000010F0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000010F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00001100
	gsDPTileSync(), // 0x00001108
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001110
	gsDPLoadSync(), // 0x00001118
	gsDPLoadTLUTCmd(7, 15), // 0x00001120
	gsDPPipeSync(), // 0x00001128
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001130
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001138
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001140
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001148
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001150
	gsSPVertex(_jyasinzou_room_14_vertices_00000F98, 7, 0), // 0x00001158
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0), // 0x00001160
	gsSP2Triangles(3, 1, 4, 0, 1, 5, 4, 0), // 0x00001168
	gsSP2Triangles(1, 6, 5, 0, 1, 0, 6, 0), // 0x00001170
	gsSPEndDisplayList(), // 0x00001178
};

Vtx_t _jyasinzou_room_14_vertices_00001180[4] = 
{
	 { 311, 30, -1433, 0, -3644, -412, 52, 49, 38, 255 }, // 0x00001180
	 { 311, 30, -1313, 0, -2932, 248, 115, 102, 78, 255 }, // 0x00001190
	 { 431, 30, -1313, 0, -2272, -465, 158, 142, 111, 255 }, // 0x000011A0
	 { 431, 30, -1433, 0, -2984, -1125, 100, 89, 67, 255 }, // 0x000011B0
};

Vtx_t _jyasinzou_room_14_vertices_000011C0[4] = 
{
	 { 431, 30, -1313, 0, 0, 0, 134, 119, 89, 255 }, // 0x000011C0
	 { 431, -50, -1313, 0, 0, 1024, 177, 164, 138, 255 }, // 0x000011D0
	 { 431, -50, -1433, 0, 2048, 1024, 69, 62, 48, 255 }, // 0x000011E0
	 { 431, 30, -1433, 0, 2048, 0, 100, 89, 67, 255 }, // 0x000011F0
};

Vtx_t _jyasinzou_room_14_vertices_00001200[4] = 
{
	 { 431, -50, -1313, 0, 0, 0, 177, 164, 138, 255 }, // 0x00001200
	 { 431, -130, -1313, 0, 0, 1024, 100, 89, 67, 255 }, // 0x00001210
	 { 431, -130, -1433, 0, 1536, 1024, 52, 49, 38, 255 }, // 0x00001220
	 { 431, -50, -1433, 0, 1536, 0, 69, 62, 48, 255 }, // 0x00001230
};

Vtx_t _jyasinzou_room_14_vertices_00001240[4] = 
{
	 { 311, 30, -1313, 0, 0, 0, 100, 89, 67, 255 }, // 0x00001240
	 { 311, -50, -1313, 0, 0, 1024, 69, 62, 48, 255 }, // 0x00001250
	 { 431, -50, -1313, 0, 2048, 1024, 134, 119, 89, 255 }, // 0x00001260
	 { 431, 30, -1313, 0, 2048, 0, 134, 119, 89, 255 }, // 0x00001270
};

Vtx_t _jyasinzou_room_14_vertices_00001280[4] = 
{
	 { 311, -50, -1313, 0, 512, 0, 69, 62, 48, 255 }, // 0x00001280
	 { 311, -130, -1313, 0, 512, 1024, 52, 49, 38, 255 }, // 0x00001290
	 { 431, -50, -1313, 0, 2048, 0, 134, 119, 89, 255 }, // 0x000012A0
	 { 431, -130, -1313, 0, 2048, 1024, 100, 89, 67, 255 }, // 0x000012B0
};

Vtx_t _jyasinzou_room_14_vertices_000012C0[8] = 
{
	 { 311, -130, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012C0
	 { 431, -130, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012D0
	 { 311, 30, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012E0
	 { 431, 30, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x000012F0
	 { 311, -130, -1313, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001300
	 { 431, -130, -1313, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001310
	 { 311, 30, -1313, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001320
	 { 431, 30, -1313, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001330
};

Gfx _jyasinzou_room_14_dlist_00001340[] =
{
	gsDPPipeSync(), // 0x00001340
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001348
	gsSPVertex(_jyasinzou_room_14_vertices_000012C0, 8, 0), // 0x00001350
	gsSPCullDisplayList(0, 7), // 0x00001358
	gsDPPipeSync(), // 0x00001360
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001368
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001370
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001378
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000024A0), // 0x00001380
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001388
	gsDPLoadSync(), // 0x00001390
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001398
	gsDPPipeSync(), // 0x000013A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000013A8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000013B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x000013B8
	gsDPTileSync(), // 0x000013C0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000013C8
	gsDPLoadSync(), // 0x000013D0
	gsDPLoadTLUTCmd(7, 255), // 0x000013D8
	gsDPPipeSync(), // 0x000013E0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000013E8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000013F0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000013F8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001400
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001408
	gsSPVertex(_jyasinzou_room_14_vertices_00001180, 4, 0), // 0x00001410
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001418
	gsDPPipeSync(), // 0x00001420
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000028A0), // 0x00001428
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001430
	gsDPLoadSync(), // 0x00001438
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001440
	gsDPPipeSync(), // 0x00001448
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001450
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001458
	gsSPVertex(_jyasinzou_room_14_vertices_000011C0, 4, 0), // 0x00001460
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001468
	gsDPPipeSync(), // 0x00001470
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000044A0), // 0x00001478
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001480
	gsDPLoadSync(), // 0x00001488
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001490
	gsDPPipeSync(), // 0x00001498
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000014A0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000014A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000014B0
	gsDPTileSync(), // 0x000014B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000014C0
	gsDPLoadSync(), // 0x000014C8
	gsDPLoadTLUTCmd(7, 15), // 0x000014D0
	gsDPPipeSync(), // 0x000014D8
	gsSPVertex(_jyasinzou_room_14_vertices_00001200, 4, 0), // 0x000014E0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000014E8
	gsDPPipeSync(), // 0x000014F0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000028A0), // 0x000014F8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00001500
	gsDPLoadSync(), // 0x00001508
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001510
	gsDPPipeSync(), // 0x00001518
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00001520
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001528
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001530
	gsDPTileSync(), // 0x00001538
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001540
	gsDPLoadSync(), // 0x00001548
	gsDPLoadTLUTCmd(7, 255), // 0x00001550
	gsDPPipeSync(), // 0x00001558
	gsSPVertex(_jyasinzou_room_14_vertices_00001240, 4, 0), // 0x00001560
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001568
	gsDPPipeSync(), // 0x00001570
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000044A0), // 0x00001578
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001580
	gsDPLoadSync(), // 0x00001588
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001590
	gsDPPipeSync(), // 0x00001598
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000015A0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000015A8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x000015B0
	gsDPTileSync(), // 0x000015B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000015C0
	gsDPLoadSync(), // 0x000015C8
	gsDPLoadTLUTCmd(7, 15), // 0x000015D0
	gsDPPipeSync(), // 0x000015D8
	gsSPVertex(_jyasinzou_room_14_vertices_00001280, 4, 0), // 0x000015E0
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000015E8
	gsSPEndDisplayList(), // 0x000015F0
};

Vtx_t _jyasinzou_room_14_vertices_000015F8[22] = 
{
	 { 551, -130, -1433, 0, 2530, -120, 52, 49, 38, 255 }, // 0x000015F8
	 { 471, -150, -1393, 0, 2409, 422, 115, 102, 78, 255 }, // 0x00001608
	 { 555, -151, -1378, 0, 2189, -64, 115, 102, 78, 255 }, // 0x00001618
	 { 431, -130, -1433, 0, 2711, 602, 52, 49, 38, 255 }, // 0x00001628
	 { 431, -130, -1313, 0, 1988, 783, 100, 89, 67, 255 }, // 0x00001638
	 { 471, -150, -1273, 0, 1687, 602, 115, 102, 78, 255 }, // 0x00001648
	 { 364, -150, -1263, 0, 1787, 1260, 115, 102, 78, 255 }, // 0x00001658
	 { 311, -130, -1313, 0, 2168, 1506, 52, 49, 38, 255 }, // 0x00001668
	 { 366, -150, -1005, 0, 227, 1637, 147, 131, 97, 255 }, // 0x00001678
	 { 471, -150, -1183, 0, 1144, 738, 169, 154, 126, 255 }, // 0x00001688
	 { 471, -150, -993, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00001698
	 { 311, -130, -933, 0, -120, 2078, 52, 49, 38, 255 }, // 0x000016A8
	 { 431, -130, -933, 0, -301, 1355, 69, 62, 48, 255 }, // 0x000016B8
	 { 488, -151, -945, 0, -315, 990, 115, 102, 78, 255 }, // 0x000016C8
	 { 631, -160, -1043, 0, 60, -15, 198, 188, 168, 255 }, // 0x000016D8
	 { 611, -160, -1188, 0, 964, -113, 198, 188, 168, 255 }, // 0x000016E8
	 { 751, -150, -1193, 0, 783, -964, 115, 102, 78, 255 }, // 0x000016F8
	 { 791, -130, -1193, 0, 723, -1205, 52, 49, 38, 255 }, // 0x00001708
	 { 751, -150, -853, 0, -1265, -452, 115, 102, 78, 255 }, // 0x00001718
	 { 555, -151, -863, 0, -909, 712, 115, 102, 78, 255 }, // 0x00001728
	 { 791, -130, -813, 0, -1566, -632, 52, 49, 38, 255 }, // 0x00001738
	 { 551, -130, -813, 0, -1205, 813, 52, 49, 38, 255 }, // 0x00001748
};

Vtx_t _jyasinzou_room_14_vertices_00001758[8] = 
{
	 { 311, -160, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001758
	 { 791, -160, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001768
	 { 311, -130, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001778
	 { 791, -130, -1433, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001788
	 { 311, -160, -813, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001798
	 { 791, -160, -813, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017A8
	 { 311, -130, -813, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017B8
	 { 791, -130, -813, 0, 0, 0, 0, 0, 0, 0 }, // 0x000017C8
};

Gfx _jyasinzou_room_14_dlist_000017D8[] =
{
	gsDPPipeSync(), // 0x000017D8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000017E0
	gsSPVertex(_jyasinzou_room_14_vertices_00001758, 8, 0), // 0x000017E8
	gsSPCullDisplayList(0, 7), // 0x000017F0
	gsDPPipeSync(), // 0x000017F8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001800
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001808
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001810
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000030A0), // 0x00001818
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001820
	gsDPLoadSync(), // 0x00001828
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001830
	gsDPPipeSync(), // 0x00001838
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001840
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001848
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001850
	gsDPTileSync(), // 0x00001858
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001860
	gsDPLoadSync(), // 0x00001868
	gsDPLoadTLUTCmd(7, 255), // 0x00001870
	gsDPPipeSync(), // 0x00001878
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001880
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001888
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001890
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001898
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000018A0
	gsSPVertex(_jyasinzou_room_14_vertices_000015F8, 22, 0), // 0x000018A8
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000018B0
	gsSP2Triangles(3, 4, 1, 0, 1, 5, 2, 0), // 0x000018B8
	gsSP2Triangles(1, 4, 5, 0, 4, 6, 5, 0), // 0x000018C0
	gsSP2Triangles(4, 7, 6, 0, 7, 8, 6, 0), // 0x000018C8
	gsSP2Triangles(8, 9, 6, 0, 8, 10, 9, 0), // 0x000018D0
	gsSP2Triangles(9, 5, 6, 0, 7, 11, 8, 0), // 0x000018D8
	gsSP2Triangles(11, 12, 8, 0, 12, 10, 8, 0), // 0x000018E0
	gsSP2Triangles(12, 13, 10, 0, 13, 14, 10, 0), // 0x000018E8
	gsSP2Triangles(14, 15, 10, 0, 14, 16, 15, 0), // 0x000018F0
	gsSP2Triangles(15, 5, 9, 0, 9, 10, 15, 0), // 0x000018F8
	gsSP2Triangles(5, 15, 2, 0, 15, 16, 2, 0), // 0x00001900
	gsSP2Triangles(16, 17, 0, 0, 16, 0, 2, 0), // 0x00001908
	gsSP2Triangles(16, 14, 18, 0, 14, 19, 18, 0), // 0x00001910
	gsSP2Triangles(20, 17, 16, 0, 20, 16, 18, 0), // 0x00001918
	gsSP2Triangles(21, 20, 18, 0, 21, 18, 19, 0), // 0x00001920
	gsSP2Triangles(13, 21, 19, 0, 13, 12, 21, 0), // 0x00001928
	gsSP1Triangle(19, 14, 13, 0), // 0x00001930
	gsSPEndDisplayList(), // 0x00001938
};

Vtx_t _jyasinzou_room_14_vertices_00001940[14] = 
{
	 { 551, 30, -813, 0, -772, 1772, 169, 154, 126, 255 }, // 0x00001940
	 { 431, 30, -933, 0, -1529, 2919, 169, 154, 126, 255 }, // 0x00001950
	 { 551, 30, -684, 0, 253, 1562, 169, 154, 126, 255 }, // 0x00001960
	 { 791, 30, -813, 0, -1162, -131, 81, 72, 55, 255 }, // 0x00001970
	 { 791, 30, -673, 0, -51, -358, 100, 89, 67, 255 }, // 0x00001980
	 { 761, 30, -621, 0, 410, -205, 100, 89, 67, 255 }, // 0x00001990
	 { 701, 30, -517, 0, 1331, 102, 100, 89, 67, 255 }, // 0x000019A0
	 { 718, 30, -507, 0, 1382, -51, 81, 72, 55, 255 }, // 0x000019B0
	 { 748, 30, -559, 0, 922, -205, 81, 72, 55, 255 }, // 0x000019C0
	 { 778, 30, -611, 0, 461, -358, 81, 72, 55, 255 }, // 0x000019D0
	 { 671, 30, -465, 0, 1792, 256, 69, 62, 48, 255 }, // 0x000019E0
	 { 431, 30, -465, 0, 2182, 2159, 69, 62, 48, 255 }, // 0x000019F0
	 { 311, 30, -673, 0, 728, 3449, 69, 62, 48, 255 }, // 0x00001A00
	 { 311, 30, -933, 0, -1334, 3870, 81, 72, 55, 255 }, // 0x00001A10
};

Vtx_t _jyasinzou_room_14_vertices_00001A20[4] = 
{
	 { 341, 30, -903, 0, 0, 0, 255, 255, 255, 255 }, // 0x00001A20
	 { 341, 30, -843, 0, 0, 2048, 255, 255, 255, 255 }, // 0x00001A30
	 { 401, 30, -843, 0, 2048, 2048, 255, 255, 255, 255 }, // 0x00001A40
	 { 401, 30, -903, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00001A50
};

Vtx_t _jyasinzou_room_14_vertices_00001A60[8] = 
{
	 { 311, 30, -933, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A60
	 { 791, 30, -933, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A70
	 { 311, 30, -933, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A80
	 { 791, 30, -933, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A90
	 { 311, 30, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AA0
	 { 791, 30, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AB0
	 { 311, 30, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AC0
	 { 791, 30, -465, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AD0
};

Gfx _jyasinzou_room_14_dlist_00001AE0[] =
{
	gsDPPipeSync(), // 0x00001AE0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001AE8
	gsSPVertex(_jyasinzou_room_14_vertices_00001A60, 8, 0), // 0x00001AF0
	gsSPCullDisplayList(0, 7), // 0x00001AF8
	gsDPPipeSync(), // 0x00001B00
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001B08
	gsDPPipeSync(), // 0x00001B10
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001B18
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001B20
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000024A0), // 0x00001B28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001B30
	gsDPLoadSync(), // 0x00001B38
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001B40
	gsDPPipeSync(), // 0x00001B48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001B50
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001B58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001B60
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
	gsSPVertex(_jyasinzou_room_14_vertices_00001940, 14, 0), // 0x00001BB8
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0), // 0x00001BC0
	gsSP2Triangles(3, 2, 4, 0, 2, 5, 4, 0), // 0x00001BC8
	gsSP2Triangles(6, 7, 8, 0, 8, 9, 5, 0), // 0x00001BD0
	gsSP2Triangles(2, 8, 5, 0, 2, 6, 8, 0), // 0x00001BD8
	gsSP2Triangles(2, 10, 6, 0, 2, 11, 10, 0), // 0x00001BE0
	gsSP2Triangles(12, 11, 2, 0, 2, 1, 12, 0), // 0x00001BE8
	gsSP1Triangle(1, 13, 12, 0), // 0x00001BF0
	gsDPPipeSync(), // 0x00001BF8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001C00
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_14_tex_000034A0), // 0x00001C08
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 1, 5, 0), // 0x00001C10
	gsDPLoadSync(), // 0x00001C18
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001C20
	gsDPPipeSync(), // 0x00001C28
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 6, 0, 1, 5, 0), // 0x00001C30
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001C38
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001C40
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104DD8), // 0x00001C48
	gsSPVertex(_jyasinzou_room_14_vertices_00001A20, 4, 0), // 0x00001C50
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001C58
	gsSPEndDisplayList(), // 0x00001C60
};

static u8 unaccounted1C68[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0xF8, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0x88, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0x40, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0xD8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0xE0, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 _jyasinzou_room_14_tex_00001CA0[] = 
{
	0x0C043A3109191909, 0x0101010101191931, 0x19190C1F0C191919, 0x1919310909090101,  // 0x00001CA0 
	0x0101090F0F142714, 0x0404040404191919, 0x1919191919190F04, 0x1919190C0F142714,  // 0x00001CC0 
	0x150F0C1919190419, 0x19191919190F0419, 0x3E1904150F191919, 0x1919191919191919,  // 0x00001CE0 
	0x191904161421211F, 0x0F04040C04040404, 0x0404041919040F19, 0x1919040415272715,  // 0x00001D00 
	0x1F150C0C0C0C0C0C, 0x0C0C0C0C0C670C0C, 0x0C0C0F14350F0C0C, 0x0C0C0C0C0C0C0C0C,  // 0x00001D20 
	0x0C0C161F1F212114, 0x15670C0F0F0C0C0C, 0x0C0C0C0C0C0F160C, 0x0C0C16101F212127,  // 0x00001D40 
	0x2727670F32323232, 0x32320F0F0F150F0F, 0x0F0F671414160F0F, 0x0F0F3232320F320F,  // 0x00001D60 
	0x0F0F141F1F212121, 0x15673232670F0F0F, 0x0F0F0F0F0F16160F, 0x0F0F161F21212121,  // 0x00001D80 
	0x2727151515351515, 0x1515151515151515, 0x1515141F1F156715, 0x1515151515321515,  // 0x00001DA0 
	0x15141F2727212121, 0x1F1F151515151010, 0x1010101010151510, 0x1010142721272721,  // 0x00001DC0 
	0x27271F141F271414, 0x1414141414141414, 0x1414141F271F1515, 0x1414141414151514,  // 0x00001DE0 
	0x1F27272721216D21, 0x2121271F14141414, 0x1414141414141414, 0x141F212121151F21,  // 0x00001E00 
	0x0F15272114272121, 0x2121212127271F1F, 0x1F1F1F2721271F1F, 0x2727272721351F27,  // 0x00001E20 
	0x6D6D21141F272714, 0x1F272121211F1F1F, 0x1F271F1F271F1F6D, 0x21271F1415353514,  // 0x00001E40 
	0x0404040404041504, 0x0404043235353514, 0x14142727141F216D, 0x2127141419190C32,  // 0x00001E60 
	0x0C0C0C0C040F3232, 0x3204191E6B32151F, 0x27216D6D21A36D21, 0x1F1F150F04040404,  // 0x00001E80 
	0x3119190901080000, 0x0000C2C200000001, 0x19040404043A0909, 0x0404043101010009,  // 0x00001EA0 
	0x31000000000000C2, 0x7575757201010909, 0x0C35272127140F04, 0x0100000808080801,  // 0x00001EC0 
	0x0845454545454545, 0x0808080808080808, 0x0801000109040F01, 0x50050B4545454545,  // 0x00001EE0 
	0x4545454545450808, 0x0808080808080808, 0x00013A043A090106, 0x4545454545121245,  // 0x00001F00 
	0x4505050505454545, 0x4508084545451212, 0x121205063A142132, 0x000E1C1C1C1CA105,  // 0x00001F20 
	0x0505054545450808, 0x080845454512050E, 0x010435353E001205, 0x1212050512120512,  // 0x00001F40 
	0x0505020202020202, 0x455050450D0DAF0D, 0x0E0E0E0037101F32, 0x6B00021313130B02,  // 0x00001F60 
	0x0202020B020B0B0D, 0x0B450D050E0E0E12, 0x193232350C040002, 0x0E0E1C0B05050505,  // 0x00001F80 
	0x0C0C040401020202, 0x0202020202020202, 0x0232151514142732, 0x320C0C0C0C0C0C0C,  // 0x00001FA0 
	0x0202020202121212, 0x06010104040C0C6B, 0x0C0C141F27141619, 0x000202050B0E0104,  // 0x00001FC0 
	0x3532323514326B6B, 0x0F02020202040404, 0x040C3515151F1432, 0x320C0C0C0C0C0C32,  // 0x00001FE0 
	0x0404046B6B323232, 0x3216320F0C0F0C0C, 0x0C0C3521271F150F, 0x0C0C020035351514,  // 0x00002000 
	0x353232151F356B32, 0x320C04046B040404, 0x040C0F150F1F2735, 0x32320C0C0C0C0C0F,  // 0x00002020 
	0x0F0C040C0C0C0C6B, 0x0C1615040404040C, 0x6B0C15211F14150C, 0x0C0C0C3232323514,  // 0x00002040 
	0x1467671414146B6B, 0x326B6B6B6B6B6B6B, 0x0C0C671535142715, 0x32320C0C0C0F0F0F,  // 0x00002060 
	0x0F0C0C0C0C0C0C0C, 0x0F0F150C04040C0C, 0x6B0C141F1F14140C, 0x0C0C323267673215,  // 0x00002080 
	0x1415351414143232, 0x3532323232323232, 0x0C321414151F2114, 0x32320C0C0F0F6767,  // 0x000020A0 
	0x0F0F0C0C0C0C0C0C, 0x0F0F350F0C0C0C0C, 0x320C27271F14140F, 0x0F0F326735353515,  // 0x000020C0 
	0x1F15351414143532, 0x153232323267320F, 0x0F67141F1527211F, 0x670F0F0F0F0F1532,  // 0x000020E0 
	0x0F0F0F0C0F0F0F0F, 0x0F1567670F0F0F0F, 0x35672721271F140F, 0x0F0F323267353515,  // 0x00002100 
	0x1415151415151567, 0x1567676767356767, 0x6715141F14272727, 0x15140F6715671532,  // 0x00002120 
	0x0F0F0F0F0F0F0F0F, 0x161567670F0F0F0F, 0x151F276D21271415, 0x670F676767151515,  // 0x00002140 
	0x1415151515151567, 0x6715676767156767, 0x671514271F1F1F21, 0x2715141414151535,  // 0x00002160 
	0x350F0F3567673516, 0x1615151616156715, 0x1427276D6D271F14, 0x1410161635151514,  // 0x00002180 
	0x1415151515151515, 0x1514151515141515, 0x15151F1F1F212121, 0x1F1F141415151535,  // 0x000021A0 
	0x350F0F1515151515, 0x1515151515151F1F, 0x1F21146D21272727, 0x141F15151515151F,  // 0x000021C0 
	0x1414141414141414, 0x1414141414141414, 0x14141F1F1F21A36D, 0x216D271F1F141414,  // 0x000021E0 
	0x14350F0F67151516, 0x15151515151F1F27, 0x2721272127272714, 0x141F1F1F1F14141F,  // 0x00002200 
	0x1F1F1F1F1F1F1F1F, 0x1F1F1F1F1F1F1F1F, 0x1414151415142121, 0x271F1F1414141415,  // 0x00002220 
	0x15160F1616161616, 0x1015151514272721, 0x6D211F151F160C14, 0x1527141F271F271F,  // 0x00002240 
	0x2121272714212714, 0x2721212121150F1F, 0x350F0F150F040C3E, 0x090C0C0C0F0F0F19,  // 0x00002260 
	0x31190F1514100F47, 0x040F0404043E040F, 0x0F16040F3E040415, 0x0C1416106D212127,  // 0x00002280 
	0x0104191E31311931, 0x1931010100000001, 0x0100000000010400, 0x0100083101010008,  // 0x000022A0 
	0x501919190C0C3E00, 0x0601000000063E3E, 0x0100470900000047, 0x4704000C0C0C0419,  // 0x000022C0 
	0x450D0D4550505045, 0x4550454512121208, 0x0808080812121206, 0x0605120D0D0D0D45,  // 0x000022E0 
	0x5100504501150F00, 0x0612080808060608, 0x0808080808080808, 0x08080800160F3A00,  // 0x00002300 
	0x12050B0B0B0B0B0B, 0x0505050505050505, 0x0505050605790E0E, 0xA105050D0D0B0B13,  // 0x00002320 
	0x1C1C1C011027153E, 0x0505050505050505, 0x0505050505050505, 0x0505050E10140412,  // 0x00002340 
	0x050E0E1C02020228, 0xC3C3C3780202C328, 0x0205120979051C02, 0x0E13020B0E0E0B0B,  // 0x00002360 
	0x0B05090C14100F19, 0x060B0E130E0E2802, 0x020202020202020B, 0x130B1C4716100F04,  // 0x00002380 
	0x3A2D010100120202, 0x0202020202023A01, 0x3A0F040F01010100, 0x0202020200080100,  // 0x000023A0 
	0x083A3A0C0F141F0C, 0x093A090E0B9E0E0E, 0x0202020202021201, 0x010909091510160F,  // 0x000023C0 
	0x01010101013A0101, 0x0101010101013A01, 0x0101093A01010101, 0x0101010101010101,  // 0x000023E0 
	0x0101093A19101F19, 0x0109043A02061800, 0x0601010101013A3A, 0x0101013A0C150F0F,  // 0x00002400 
	0x04010101013A0101, 0x0101010101013A01, 0x0101012D01000101, 0x0000060600010101,  // 0x00002420 
	0x01093A0F0916210F, 0x01012D0901010101, 0x0000010101012D3A, 0x0101013A0C15150C,  // 0x00002440 
	0x0C3A0100012D0901, 0x011E091E09093A01, 0x3A0F0416013A0100, 0x0000010100080100,  // 0x00002460 
	0x083A040416162710, 0x04013A3A01000119, 0x010901010101043A, 0x0101091910141416,  // 0x00002480 
};

u64 _jyasinzou_room_14_tex_000024A0[] = 
{
	0x57030317032E5456, 0x2E343F4634460303, 0x1717031725030303, 0x3030261A24301717,  // 0x000024A0 
	0x0303030317261A1A, 0x6CB324245D465403, 0x0317252525250303, 0x0303300325460303,  // 0x000024C0 
	0x0303301A03032E03, 0x5703245D25171703, 0x0325171703252503, 0x30031A0303300303,  // 0x000024E0 
	0x0346031A1A6C2603, 0x1A4634523F031A03, 0x031A03251754301A, 0x54032E033017032E,  // 0x00002500 
	0x1A2E031A031A5717, 0x3F03173F34260303, 0x03030330301A5C03, 0x2E571A2E1A1A3054,  // 0x00002520 
	0x172603171A173F17, 0x3003030324252530, 0x0303170317302653, 0x03030303031A1A30,  // 0x00002540 
	0x3F242A2446033825, 0x030303031724252A, 0x5403252530172503, 0x262603032503253C,  // 0x00002560 
	0x4646440317172503, 0x2A54033003680325, 0x0317030303305403, 0x03031A030317033F,  // 0x00002580 
	0x253F03302E031717, 0x1A0317031A173803, 0x2E03031A172E306C, 0x3026301A30033C54,  // 0x000025A0 
	0x26033C1A2E031A03, 0x30262E2E2E30031A, 0x2E261A0354302E49, 0x6C03302A303C2E86,  // 0x000025C0 
	0x171A251725540344, 0x2630035C1A035430, 0x0354300303171A30, 0x1A031725244B0330,  // 0x000025E0 
	0x25301A4B25031A03, 0x1A862E1730251A26, 0x2E03031703030303, 0x030317460303245D,  // 0x00002600 
	0x2E2E03543C031A03, 0x3049544903466CA7, 0x0354920317305403, 0x25032A2546030324,  // 0x00002620 
	0x1A541A033025306C, 0x03032E2E2E25036C, 0xA757032E54030303, 0x3054035425305C49,  // 0x00002640 
	0x0303540303305703, 0xAC1A572E2E494B03, 0x6CA7545403031754, 0x2E1A545403266CA7,  // 0x00002660 
	0x6C1A251A301A3057, 0x576C6C6C032E0346, 0x306CA703171A037E, 0x6CAC1A2E6CAC036C,  // 0x00002680 
	0x1A1A30301A170354, 0x57572E1730031A54, 0x3C0325300330302E, 0x576C2E03546C2E30,  // 0x000026A0 
	0x03171A0303031717, 0x0303300317172503, 0x265D462A46030354, 0x25576C3054302E1A,  // 0x000026C0 
	0x2603170317250317, 0x1703030303173C30, 0x462A34034B170317, 0x1703031A03170330,  // 0x000026E0 
	0x1A1A03251717031A, 0x2E032A2A301A0330, 0x462A033C251A0326, 0x030325172E300303,  // 0x00002700 
	0x3C30173030253030, 0x2E6C2E2E54031A46, 0x2554304603032E1A, 0x5426030330260303,  // 0x00002720 
	0x3025171A461A302E, 0x03306C031A035424, 0x032530031703572E, 0x1A2E3C262530171A,  // 0x00002740 
	0x301A030317032626, 0x5425030317174B46, 0x30173C03031A3054, 0x3017261A03031703,  // 0x00002760 
	0x03572625172E546C, 0x0317030317172A17, 0x033025254654032E, 0x0317542503030303,  // 0x00002780 
	0x03032E2E2E666C1A, 0x541A54305417541A, 0x2EAC260317030303, 0x260303300303031A,  // 0x000027A0 
	0x6C30036C571A6C2E, 0x6C1A03A7492E1730, 0xAC576C2E25033026, 0x0303030303170326,  // 0x000027C0 
	0x2E2E1AAC2E7E302E, 0x6C1A1A1A6C493046, 0x1A496CAC2E2E3030, 0x5CAC031A2E030303,  // 0x000027E0 
	0x4B03541A2E572E54, 0x2E26032A2E6C254B, 0x302E30542EAC2E03, 0x541A66261A5C5C03,  // 0x00002800 
	0x6C031717302E1A03, 0x036C03172646D030, 0x2517030303030303, 0x250330170303301A,  // 0x00002820 
	0x172E4B1717542603, 0x17031A0303241717, 0x1717170303031717, 0x032A033025170303,  // 0x00002840 
	0x03265C543F17032E, 0x26302A0326171703, 0x0303030303172E03, 0x0330030354030303,  // 0x00002860 
	0x2E54262E30174B49, 0x261A540317030330, 0x260330030303261A, 0x03262E03032E0303,  // 0x00002880 
};

u64 _jyasinzou_room_14_tex_000028A0[] = 
{
	0x43437F7F36363636, 0x3636364343364343, 0x4343364343434336, 0x36434343437B437B,  // 0x000028A0 
	0x43437B437B7B7B43, 0x7B7B7B7B437B4343, 0x4343434343434336, 0x434343437B437B43,  // 0x000028C0 
	0xB7B7B7B76A7E5AB7, 0x6A4E6A6A7EB7B76A, 0xB76A4E7E6AB7B76A, 0x4EB76AB76A6A5A6A,  // 0x000028E0 
	0xB7B76A891A033C7E, 0x1A1A1A1A5A5A4E5A, 0xB7B7B7035A5A6A4E, 0x6A6A6A5A5A6A6A7E,  // 0x00002900 
	0x5757575757241A1A, 0x1A6A572E246A1A1A, 0x1A572E6A571A2E2E, 0x5A1A1A1A572E6A57,  // 0x00002920 
	0x1A2E2E5A44444403, 0x44444444261A5A2E, 0x2E2E5A242E26266A, 0x1A1A26261A261A6A,  // 0x00002940 
	0x5757571A571A1A1A, 0x1A6A2E1A1A1A1A1A, 0x1A2E1A2E1A2E572E, 0x5A1A1A1A2E1A5A1A,  // 0x00002960 
	0x2E572E5A26444403, 0x24444444032E5A2E, 0x2E2E2E251A26261A, 0x5A251A1A26261A6A,  // 0x00002980 
	0x1A572E5757571A57, 0x2E575757571A572E, 0x575757575A5A5A1A, 0x5A572E575757575A,  // 0x000029A0 
	0x5A5A1A2E5A034444, 0x6144442603035A26, 0x262E26261A26262E, 0x6A1A1A2E262E2625,  // 0x000029C0 
	0x245D3F2424245D5D, 0x24242424245D5D24, 0x2424243F3F243F24, 0x3F5D242424243F3F,  // 0x000029E0 
	0x243F24243F343434, 0x3952342424242424, 0x2424242434245D5D, 0x5D34345D34345D5D,  // 0x00002A00 
	0x1F1F141415151515, 0x1515151415151515, 0x1514151414141435, 0x15151414141F1F1F,  // 0x00002A20 
	0x1414141414141414, 0x1414141415141515, 0x1515141414151514, 0x1514151514151414,  // 0x00002A40 
	0x1414326732323232, 0x3232326735353267, 0x3267673567323267, 0x356732676732151F,  // 0x00002A60 
	0x1535353535151415, 0x3535353567353535, 0x3232321535356767, 0x6767673535676715,  // 0x00002A80 
	0x1435040C040C040C, 0x0C0C0C0C350F0F0C, 0x0F0C6B0C0C0F6B0C, 0x0C0F6B0C0C040415,  // 0x00002AA0 
	0x6B6B6B6B32323235, 0x323232326B0C6B6B, 0x6B6B04356B6B6B0F, 0x0F0F6B6B0F6B0C0F,  // 0x00002AC0 
	0x1404190419190404, 0x040404040C0C0C0C, 0x0C040C0404040404, 0x04040C0404191935,  // 0x00002AE0 
	0x046B04040C6B6B35, 0x356B6B6B0C040404, 0x0404040C0C0C0C0C, 0x0C0C0C0C040C0C0C,  // 0x00002B00 
	0x152D010909091904, 0x1919191919041919, 0x1919191919091904, 0x1904191909093132,  // 0x00002B20 
	0x191E191919046B6B, 0x356B6B0404041904, 0x0419041904041919, 0x0404041904191904,  // 0x00002B40 
	0x1547180700010001, 0x4700010101474701, 0x0101010000010001, 0x010101090000000C,  // 0x00002B60 
	0x0000087201093119, 0x6B6B3131721E1E72, 0x1E31317231310909, 0x471919091909093E,  // 0x00002B80 
	0x0407070A0A0A0A01, 0x0701010901010909, 0x072007000A070707, 0x0701200100500832,  // 0x00002BA0 
	0x070108080007001E, 0x012019011E200931, 0x010101091E094707, 0x0708010409500000,  // 0x00002BC0 
	0x040A070A07640720, 0x010101090107091E, 0x2020200720200020, 0x0101640000200809,  // 0x00002BE0 
	0x080000080A072000, 0x0101041E201E0104, 0x1E09041E1E040909, 0x060D060D0D00070D,  // 0x00002C00 
	0x1007070101012001, 0x1E1E1E1E1E201E09, 0x6420206420010120, 0x200920640064201E,  // 0x00002C20 
	0x08086400091E1E1E, 0x1E20081E1E010901, 0x1E041E101E1E0907, 0x0A0D0D0D0D000807,  // 0x00002C40 
	0x040A20002001011E, 0x0109091E01011E01, 0x0120200001200120, 0x006464202020001E,  // 0x00002C60 
	0x0008002020201E1E, 0x1E1E041E1E1E0404, 0x1E1E1E1E041E0707, 0x08080809200D0808,  // 0x00002C80 
	0x04040A0101070109, 0x1E1E1E0120200120, 0x2000200000200020, 0x0120202020202004,  // 0x00002CA0 
	0x1E1E201E011E1E1E, 0x1E1E1E1E1E1E1E1E, 0x1E1E1E1E09090708, 0x0D0D0D0D0D0A0007,  // 0x00002CC0 
	0x040707200701071E, 0x01201E0120201E20, 0x0000000000002000, 0x2020012020000004,  // 0x00002CE0 
	0x0020201E1E201E1E, 0x1E1E041E1E1E1E1E, 0x001E1E1E01010A0A, 0x080D070720000D00,  // 0x00002D00 
	0x04070A0000070020, 0x202020200A000020, 0x2000000000200020, 0x010101011E000004,  // 0x00002D20 
	0x00001E00001E1E1E, 0x1E1E1E1E1E1E1E1E, 0x1E1E1E1E01090A08, 0x0D0D0D0D2007080D,  // 0x00002D40 
	0x04070707070A0A07, 0x07070A0A0A0A0A20, 0x0000000808080808, 0x0000000000000004,  // 0x00002D60 
	0x000000000000001E, 0x001E1E1E1E1E1E1E, 0x1E1E1E2001012008, 0x0D0D20200D000A0A,  // 0x00002D80 
	0x0407070707070707, 0x07070707070A0707, 0x0A0A080D0808080A, 0x080A0A0A0A002004,  // 0x00002DA0 
	0x002008001E001E1E, 0x1E1E001E1E1E1E1E, 0x1E1E001E20012007, 0x0D0D0D0D00080808,  // 0x00002DC0 
	0x1007070707070707, 0x07070707070A0A0A, 0x07080808080A0A0A, 0x0A0A0A0A0A640104,  // 0x00002DE0 
	0x6401200000000000, 0x0000000000001E1E, 0x1E00000020010008, 0x080D08200000080A,  // 0x00002E00 
	0x0407070707070707, 0x0707070707070907, 0x070A070A0A070A07, 0x0A0A0A0A0A070104,  // 0x00002E20 
	0x0901016401200000, 0x0000000000000000, 0x0000002020202000, 0x080D0D0D0D00080A,  // 0x00002E40 
	0x0407070707070709, 0x07070707070A0707, 0x0007070A07070707, 0x0707070707070909,  // 0x00002E60 
	0x0107070707010101, 0x0101012020002020, 0x20201E0720072008, 0x0D0D0D0D000A0D0D,  // 0x00002E80 
	0x0407070A07070709, 0x0909070907070920, 0x07000A0A070A0A0A, 0x0A0A0A0A0A080A04,  // 0x00002EA0 
	0x070101640A0A0A64, 0x07200A070A200120, 0x201E091E09040407, 0x200A04090D0D0D0A,  // 0x00002EC0 
	0x04080A070A0A0A07, 0x0A070707070A070A, 0x0A000A000A0A070A, 0x070A0A0A0A070709,  // 0x00002EE0 
	0x640A0A640A640A64, 0x0A010A0709090109, 0x010109070707070A, 0x080D0D0D000D0D0D,  // 0x00002F00 
	0x09080A0A070A0A09, 0x0709070907070A07, 0x0A070A0A00080A08, 0x070A0707070A0709,  // 0x00002F20 
	0x0A01010901090909, 0x0901010101090901, 0x0909010909070708, 0x640D0D0D0D0D0D0D,  // 0x00002F40 
	0x04080A0A07070707, 0x0707070907070907, 0x0707070707070707, 0x0707090909040710,  // 0x00002F60 
	0x070707070A0A0A0A, 0x0A640A6409010707, 0x0707070707070A08, 0x0D0D0D0D0D0D0D0D,  // 0x00002F80 
	0x040D0D07070A0A07, 0x0709070909070701, 0x2020202020202020, 0x0101090909090910,  // 0x00002FA0 
	0x0709070A070A0A0A, 0x0A07070707070909, 0x0907090707070008, 0x080D0D0D0D0D0D0D,  // 0x00002FC0 
	0x0908080808070A07, 0x07070A0700000000, 0x0000000020000020, 0x2020070909040910,  // 0x00002FE0 
	0x0909070920072020, 0x2000002001090909, 0x0909072001200708, 0x0D0D0D0D0D0D0D0D,  // 0x00003000 
	0x040D0D0708080D08, 0x0807202020200000, 0x2020200009070907, 0x0704090109070710,  // 0x00003020 
	0x0707040904091E09, 0x0901010101090109, 0x0720202000200000, 0x0D0D0D0D0D0D0D0D,  // 0x00003040 
	0x1004070707090404, 0x0432043204100404, 0x1004100410040432, 0x100404101032101F,  // 0x00003060 
	0x1032101032323210, 0x3210101010101010, 0x3210103210320404, 0x0404040909090904,  // 0x00003080 
};

u64 _jyasinzou_room_14_tex_000030A0[] = 
{
	0x6A895A4E4E4336B9, 0xB965B92C2C2C652C, 0x434E4343366565A6, 0x7F7F7B7B434E3689,  // 0x000030A0 
	0x7F7F7B435A574E4E, 0x432C436A5A434E5A, 0x6A7E7E7E7E5A362C, 0x2C2C7F367F7F7F2C,  // 0x000030C0 
	0x2C2C4343435A887E, 0x6A5A1A7E4E7F4343, 0x7B4E6A5A88881A4E, 0x362C2C2C2C652C36,  // 0x000030E0 
	0x7B7F362C65657F6A, 0x894E4EAE2C432C65, 0x65652CA6437B43A9, 0x362C2C3636437B89,  // 0x00003100 
	0x432C2C366565652C, 0x7B652C3665AEAE65, 0xB9B9B96565656536, 0x43434E4E367B4E4E,  // 0x00003120 
	0x362C2C362C656565, 0x434E362C2C65A636, 0x36362C65B9656565, 0x2C2C2C434E4343B9,  // 0x00003140 
	0x652C2C3636362C2C, 0x2C4E43362C851A1A, 0x1A03927E4E2CB9B9, 0xB9B9B9B92C436565,  // 0x00003160 
	0x43A92CAE3636AEAE, 0x36A65AC936A94E5A, 0x5A7E92921A7EA94E, 0x437F437F2C43577B,  // 0x00003180 
	0x5A57D13636AE2C2C, 0xAEAE3643A6656536, 0x43364343434E5A5A, 0x894E7E5A5A7E8888,  // 0x000031A0 
	0x1A1AD1C9362C2C65, 0x65652C2CC9A66565, 0x434E4E362C652C43, 0x7F362C364E5A5A7E,  // 0x000031C0 
	0x4EA9C9A6A6362CAE, 0x6565656565AEA6AE, 0x654E7EA62C656565, 0x65652C2C2C4E4343,  // 0x000031E0 
	0x36AEAE65652C65A6, 0x362C65656565B9B9, 0xB9B94E7E4E366565, 0x652C362C2C36432C,  // 0x00003200 
	0xAE2C652C362C6565, 0x85A93636C9A66565, 0x2C2C2C7E7E43362C, 0x2C2C2C2C2C2C7F7F,  // 0x00003220 
	0xA63643A9A63665B9, 0x2C3636C9A95A7E92, 0x037E7ED1575A4365, 0x652C362C2C2C2C7F,  // 0x00003240 
	0x364E4EC9362C2C65, 0x2C3636A9A97E883F, 0x343F44575725884E, 0x362C2C2C367F7B36,  // 0x00003260 
	0x4336363636362C2C, 0x3636A9A95A7EB74E, 0x7E25887E4E4E5A88, 0x921A572C2C7B4E4E,  // 0x00003280 
	0x4E4EAEA6A67FC9C9, 0x434E5A4E5AA94336, 0x364EB75A4EA94E5A, 0x5A7E7E254E367E5A,  // 0x000032A0 
	0x7E4E4EA6C9A94E5A, 0x4E5AD14E43433636, 0x36364E4E4EA943A6, 0xC9365A7E885A7E88,  // 0x000032C0 
	0x88884E4EC9C9A94E, 0x5A577E5AA6362C36, 0x2C36C94E4E36362C, 0x36AE652C2C7E0325,  // 0x000032E0 
	0x2544925A4EA9434E, 0x7E6A575A362C2C2C, 0x2C2C2C6543434E5A, 0x4EAE2C2C2C434E92,  // 0x00003300 
	0x5792032588574E36, 0x4E5AD15A4EAE652C, 0x2C2C65652C43364E, 0x5A5A432C2C364E5A,  // 0x00003320 
	0x4EA9924488921A36, 0xAEA643A9574E4336, 0x4E362C2C2C2C6536, 0x2CA67B43362C2C2C,  // 0x00003340 
	0x3636A6435A7E7E57, 0x5AA6AE2C365A881A, 0x5A5A5A5A2C362C2C, 0x2C364E432C2C2C36,  // 0x00003360 
	0x36363636A6434E4E, 0xA97F2C2C434E4E57, 0x1A307E306A7B7B30, 0x6A5A5A896A893636,  // 0x00003380 
	0x7B3636362C2C2C2C, 0xAEAE2C2C2C2C362C, 0x367B6A6A30306A89, 0x463434464688897F,  // 0x000033A0 
	0x4E7B7F36437F7F7F, 0x43A643897F367F43, 0x367B43894E888830, 0x464634B35D173030,  // 0x000033C0 
	0x30306A894E5A6A5A, 0x4E4E7F43A95A6A6A, 0x4E4343367F7B0388, 0x30888888244B8830,  // 0x000033E0 
	0x4630306A30894E89, 0x89894E4E43A94343, 0x43363636367F8930, 0x3030303089301717,  // 0x00003400 
	0x8830303030306A7B, 0x437B7F367F433636, 0x362C2CAE362C2C7B, 0x896A6A896A7B6A88,  // 0x00003420 
	0x3030306A6A6A6A5A, 0x7B362C362C2C2C2C, 0x2C2C2C2C36364343, 0x7F896A898989896A,  // 0x00003440 
	0x306A6A6A89367F89, 0x894E7F362C2C2C2C, 0x2C7F7B89894E7B7B, 0x7F7F6A886A6A896A,  // 0x00003460 
	0x8846305A4E436565, 0x367B4336367B4E89, 0x7B7F36367F7F435A, 0x4E7B7B8846306A30,  // 0x00003480 
};

u64 _jyasinzou_room_14_tex_000034A0[] = 
{
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000034A0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000034C0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000034E0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003500 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003520 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x630063006300A3C3,  // 0x00003540 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003560 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x63006300A3C3C445,  // 0x00003580 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000035A0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x63006300A3C3C445,  // 0x000035C0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000035E0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300A3C3A383BC45,  // 0x00003600 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003620 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300A3C3B405ABC3,  // 0x00003640 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003660 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0xA3C3A381ABC3A381,  // 0x00003680 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000036A0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0xA3C3BC45ABC3A3C1,  // 0x000036C0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000036E0 
	0x6300630063006300, 0x6300630063006300, 0x630063006300A3C3, 0xBC45ABC3ABC3ABC3,  // 0x00003700 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003720 
	0x6300630063006300, 0x6300630063006300, 0x630063006300A3C3, 0xB403AC03ABC3ABC3,  // 0x00003740 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003760 
	0x6300630063006300, 0x6300630063006300, 0x63006300A3C3BC45, 0xB403B403B405B405,  // 0x00003780 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000037A0 
	0x6300630063006300, 0x6300630063006300, 0x63006300A3C3B405, 0xB403BC45BC45BC45,  // 0x000037C0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000037E0 
	0x6300630063006300, 0x6300630063006300, 0x6300A3C3A3C1B403, 0xB403C485C485BC45,  // 0x00003800 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003820 
	0x6300630063006300, 0x6300630063006300, 0x6300A3C3B405B405, 0xB405BC45C485C445,  // 0x00003840 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003860 
	0x6300630063006300, 0x6300630063006300, 0xA3C3ABC3B405B405, 0xBC45C487C485C485,  // 0x00003880 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000038A0 
	0x6300630063006300, 0x6300630063006300, 0xA3C3BC45B405BC45, 0xC487C487C487CCC7,  // 0x000038C0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000038E0 
	0x6300630063006300, 0x630063006300A3C3, 0xBC45BC45BC45C487, 0xCCC7CC87C487D4C7,  // 0x00003900 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003920 
	0x6300630063006300, 0x63006300A3C3B405, 0xBC45BC45BC47C487, 0xCCC7CCC7CC87D4C7,  // 0x00003940 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003960 
	0x6300630063006300, 0x63006300A3C3BC45, 0xB445BC47C487C487, 0xCCC7D4C7CCC7D509,  // 0x00003980 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000039A0 
	0x6300630063006300, 0x6300A3C3B405B445, 0xBC45C487C487CCC7, 0xCCC7D4C9D4C9DD09,  // 0x000039C0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000039E0 
	0x6300630063006300, 0x6300A3C3AC05B445, 0xBC47C487CCC7CCC7, 0xD509D509D4C9DD09,  // 0x00003A00 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003A20 
	0x6300630063006300, 0x6300A3C3B445BC47, 0xC487CCC7CCC7D4C9, 0xD509DD09D509DD09,  // 0x00003A40 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003A60 
	0x6300630063006300, 0xA3C3AC05BC45BC87, 0xC487CCC7D4C7D509, 0xD509DD09DD09DD09,  // 0x00003A80 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003AA0 
	0x630063006300A3C3, 0xAC05B405BC45BC87, 0xCC87D4C9DD09D509, 0xDD09DD09DD09DD09,  // 0x00003AC0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003AE0 
	0x630063006300A3C3, 0xBC45B445BC45C487, 0xCCC7D509DD09DD09, 0xDD09DD09D509D509,  // 0x00003B00 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003B20 
	0x63006300A3C3A3C3, 0xBC45B445C487D4C9, 0xD4C9D509DD09DD09, 0xD509D509D509CCC7,  // 0x00003B40 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003B60 
	0x63006300A3C3BC45, 0xBC45B445C487CCC7, 0xD509D509D509D509, 0xD509D509D509CCC7,  // 0x00003B80 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003BA0 
	0x6300A3C3A3C3BC45, 0xBC45BC45BC87C487, 0xCCC7CCC9D4C9D509, 0xD509D509CCC9C487,  // 0x00003BC0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003BE0 
	0x6300A3C3BC45B445, 0xB445B445BC45BC45, 0xBC87C487C487C487, 0xC4C7C487C487BC87,  // 0x00003C00 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003C20 
	0xA3C3AC05CC87BC87, 0xC487C487C487C487, 0xC487C487C487C487, 0xC487C487C487C487,  // 0x00003C40 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003C60 
	0xA3C3AC05AC05AC05, 0xB447B447B447B447, 0xB447B447B447B447, 0xB447B447AC07AC07,  // 0x00003C80 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x630063006300A3C3,  // 0x00003CA0 
	0xA3C3630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003CC0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x630063006300A3C3,  // 0x00003CE0 
	0xB405A3C363006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003D00 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x63006300A3C3AC05,  // 0x00003D20 
	0xBC45A3C363006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003D40 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x63006300A3C3B445,  // 0x00003D60 
	0xBC47A3C3A3C36300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003D80 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300A3C3AC03B445,  // 0x00003DA0 
	0xBC45AC05A3C36300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003DC0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300A3C3B445B445,  // 0x00003DE0 
	0xBC45BC45B447A3C3, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003E00 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0xA3C3A3C3BC45BC45,  // 0x00003E20 
	0xB445BC45BC47A3C3, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003E40 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0xA3C3B445BC45BC45,  // 0x00003E60 
	0xB445B445BC47B445, 0xA3C3630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003E80 
	0x6300630063006300, 0x6300630063006300, 0x630063006300A3C3, 0xAC03BC45BC45BC45,  // 0x00003EA0 
	0xB445B445B445C487, 0xA3C3630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003EC0 
	0x6300630063006300, 0x6300630063006300, 0x63006300A3C3A3C3, 0xBC45BC45BC45BC45,  // 0x00003EE0 
	0xBC45B445B445B445, 0xB405A3C363006300, 0x6300630063006300, 0x6300630063006300,  // 0x00003F00 
	0x6300630063006300, 0x6300630063006300, 0x63006300A3C3AC03, 0xBC45BC45BC45C485,  // 0x00003F20 
	0xC445BC45B445B445, 0xBC45A3C3A3C36300, 0x6300630063006300, 0x6300630063006300,  // 0x00003F40 
	0x6300630063006300, 0x6300630063006300, 0x6300A3C3AC03BC45, 0xBC45BC45C485C485,  // 0x00003F60 
	0xC485BC45B445B445, 0xBC45AC05A3C36300, 0x6300630063006300, 0x6300630063006300,  // 0x00003F80 
	0x6300630063006300, 0x6300630063006300, 0x6300A3C3AC05BC45, 0xBC45BC45C485C485,  // 0x00003FA0 
	0xC487C485B445B445, 0xB445BC87B447A3C3, 0x6300630063006300, 0x6300630063006300,  // 0x00003FC0 
	0x6300630063006300, 0x6300630063006300, 0xA3C3A3C3BC45BC45, 0xBC45BC85C487C485,  // 0x00003FE0 
	0xCC87C487BC45B445, 0xB445BC45C487A3C3, 0x6300630063006300, 0x6300630063006300,  // 0x00004000 
	0x6300630063006300, 0x6300630063006300, 0xA3C3BC45BC85BC85, 0xBC85C485CC87CC87,  // 0x00004020 
	0xCC87C487C485BC45, 0xB445B445BC47B447, 0xA3C3630063006300, 0x6300630063006300,  // 0x00004040 
	0x6300630063006300, 0x630063006300A3C3, 0xA3C3BC45BC85BC85, 0xBC85C487CCC7CC87,  // 0x00004060 
	0xCCC7CC87C445BC45, 0xB445B445BC45C487, 0xA3C3630063006300, 0x6300630063006300,  // 0x00004080 
	0x6300630063006300, 0x630063006300A3C3, 0xBC45BC85BC85BC85, 0xC485CC87CC87CCC7,  // 0x000040A0 
	0xCCC7CCC7C487C485, 0xBC45B445B445C487, 0xC487A3C363006300, 0x6300630063006300,  // 0x000040C0 
	0x6300630063006300, 0x63006300A3C3A3C3, 0xBC45BC85BC45C485, 0xCC87CCC7CCC7CCC7,  // 0x000040E0 
	0xCCC7CCC7CCC7C485, 0xBC45BC45BC45BC45, 0xCC87A3C3A3C36300, 0x6300630063006300,  // 0x00004100 
	0x6300630063006300, 0x63006300A3C3BC45, 0xBC45BC45C485CC87, 0xCC87CCC7D4C7D4C7,  // 0x00004120 
	0xD4C7CCC7CCC7C487, 0xBC85BC45BC45BC45, 0xCC87CC87A3C36300, 0x6300630063006300,  // 0x00004140 
	0x6300630063006300, 0x6300A3C3B405BC45, 0xBC85C485CC87CCC7, 0xD4C7D4C7D4C7D4C7,  // 0x00004160 
	0xD4C7D4C7CCC7CCC7, 0xC487C485BC45BC45, 0xBC45CC87CC87A3C3, 0x6300630063006300,  // 0x00004180 
	0x6300630063006300, 0x6300A3C3BC45BC45, 0xC485CC87CCC7D4C7, 0xD4C7D4C7D4C7D4C7,  // 0x000041A0 
	0xD4C7D4C7D4C7CCC7, 0xC487C487BC85BC45, 0xBC45C487CC87A3C3, 0x6300630063006300,  // 0x000041C0 
	0x6300630063006300, 0xA3C3B403BC45BC45, 0xC485CC87D4C7D4C7, 0xD4C7D4C7D507D507,  // 0x000041E0 
	0xD507D4C7D4C7D4C7, 0xCCC7C487BC85BC45, 0xBC45BC87CC87CC87, 0xA3C3630063006300,  // 0x00004200 
	0x6300630063006300, 0xA3C3B445BC45C445, 0xCC87CCC7D4C7D4C7, 0xDCC7DD09DD09D507,  // 0x00004220 
	0xD4C7D4C7CCC7D4C7, 0xD4C7C487BC87BC87, 0xBC47BC47BC47CC87, 0xA3C3630063006300,  // 0x00004240 
	0x630063006300A3C3, 0xAC03BC45BC45C445, 0xCC87D4C7D4C7D4C7, 0xD4C7D4C7D4C7D4C7,  // 0x00004260 
	0xDCC7DD07DD07D507, 0xD4C7C487C487CC87, 0xC485BC85BC47CC87, 0xCC87A3C363006300,  // 0x00004280 
	0x63006300A3C3AC03, 0xBC45BC45BC45CC85, 0xCC87CC87CC87CC87, 0xCCC7D4C7D4C7D4C7,  // 0x000042A0 
	0xD4C7D4C7D4C7D507, 0xD507D4C7D4C7DCC7, 0xD4C7CC85C487C487, 0xCCC7A3C3A3C36300,  // 0x000042C0 
	0x63006300A3C3AC05, 0xBC45B403C445C485, 0xC485C485C487CC87, 0xCC87CCC7CCC7CCC7,  // 0x000042E0 
	0xC487CCC7CCC7D4C7, 0xD4C7D4C7DCC7DCC7, 0xD4C7D4C7CC87C487, 0xCCC7CC87A3C36300,  // 0x00004300 
	0x6300A3C3A3C3BC45, 0xBC45C445C445C485, 0xC485C485C485C485, 0xC487C487CC87C487,  // 0x00004320 
	0xC487CC87CC87CCC7, 0xCCC7D4C7D4C7D4C7, 0xD4C7CCC7CC87CC87, 0xCC87D4C7A3C3A3C3,  // 0x00004340 
	0x6300A3C3A3C19B81, 0x9B81A381A3C3ABC3, 0xABC3ABC3ABC3ABC3, 0xABC3AC05AC05AC05,  // 0x00004360 
	0xAC05B445BC45BC47, 0xC447C447C447C447, 0xC445C445C445C445, 0xCC45CC45CC45A3C3,  // 0x00004380 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000043A0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000043C0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000043E0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00004400 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00004420 
	0x6300630063006300, 0x630063006B006B00, 0x6B007B0063006300, 0x6300630063006300,  // 0x00004440 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00004460 
	0x6300630063006300, 0x6300630063006300, 0x630063006B006B00, 0x6B006B006B006300,  // 0x00004480 
};

u64 _jyasinzou_room_14_tex_000044A0[] = 
{
	0x8929492941103851, 0x31311131015388CD, 0x8875111515153533, 0x5675778499999066,  // 0x000044A0 
	0x8924299919138011, 0x131114445003336C, 0x1115111111111377, 0x3315334491999948,  // 0x000044C0 
	0x6499493941481844, 0x441411145131000C, 0x2221111114111021, 0x2115613144444926,  // 0x000044E0 
	0x8424494914434544, 0x444444054411112B, 0x2103311113300310, 0x0021640422092922,  // 0x00004500 
	0x8999444914311111, 0x1212304000120128, 0x4233311133A11A2A, 0x4110640209499940,  // 0x00004520 
	0x8922414111313310, 0x1010111111101018, 0x203777333333A73A, 0x7A71003229229994,  // 0x00004540 
	0x8494009143314111, 0x1141101024424416, 0x2402020222222222, 0x2220000102999990,  // 0x00004560 
	0x6423941110110010, 0x0022022242202248, 0x0225000202222222, 0x2222030124429993,  // 0x00004580 
	0x8020002403033310, 0x1110122442222226, 0x5550000000000224, 0x2222010012202060,  // 0x000045A0 
	0x8016680660036836, 0x8666663111211118, 0x3766000000007721, 0x1300336330306668,  // 0x000045C0 
	0x8006000630013103, 0x0666033111411338, 0x731033301033A311, 0x1111000311030018,  // 0x000045E0 
	0x8366680607011113, 0x1033311444444118, 0x13031001122A7341, 0x1113336313300020,  // 0x00004600 
	0xC063660333131411, 0x1330341194411338, 0x3030003000307A11, 0x1111336011000216,  // 0x00004620 
	0x8666606665751511, 0x1773319119411338, 0x3606703313A37311, 0x1113336310002006,  // 0x00004640 
	0xC666600066311113, 0x0710021444005558, 0x5660666566775533, 0x113A006022202426,  // 0x00004660 
	0xC066066666751111, 0x330002322423755B, 0x55686575777755A3, 0xA3A7300020202216,  // 0x00004680 
	0xC060004001491914, 0x4220222444007558, 0x55866557757555A3, 0x3A37A00022234226,  // 0x000046A0 
	0xC660002420219141, 0x4492212144101358, 0x566667A7A755557A, 0x73A733002A2222A6,  // 0x000046C0 
	0xC660244222419144, 0x4442224212122158, 0x5566577777755577, 0x3775A07322AA2126,  // 0x000046E0 
	0xC660022420349414, 0x4444424224415558, 0x575865A7A77A5553, 0x37A5230A22222A08,  // 0x00004700 
	0xC863222207224141, 0x4444224442250118, 0x15576777777757A7, 0x7775703022222276,  // 0x00004720 
	0xC660042202244144, 0x0242222204041418, 0x13576777777A5577, 0x7777202A22A0AA06,  // 0x00004740 
	0xCC60429410044141, 0x1024202214101118, 0x1372A7A7A7755577, 0x5757720A24423078,  // 0x00004760 
	0xC866024220244414, 0x1242444202242915, 0x113230737A755575, 0x7557021A42441776,  // 0x00004780 
	0xC866002206603331, 0x7121200144221915, 0x11370330A7555555, 0x757521004A927308,  // 0x000047A0 
	0xC866002060677333, 0x6700013001300198, 0x1157767667655B55, 0x5556021322437768,  // 0x000047C0 
	0xC806002055555555, 0x8557303310030118, 0x3135755555888855, 0x7557010323247668,  // 0x000047E0 
	0xC806000606677775, 0x555577550637611B, 0x115755555558B853, 0x7356010323416608,  // 0x00004800 
	0xC600002035657555, 0x856755573776631C, 0x8B3775555685885A, 0x777670030411666B,  // 0x00004820 
	0xC806000065555555, 0x555565575776611B, 0x3585555558585873, 0x3332010402136008,  // 0x00004840 
	0xC600202060631777, 0x56666677550663BB, 0x3355588885855831, 0x3200100001130868,  // 0x00004860 
	0xD842022104224113, 0x60008023367585BC, 0x55B88B8858856871, 0x0105207030330036,  // 0x00004880 
	0xDDCC8888888B8888, 0x8B8CCBC688CCBDDD, 0xDBBBBBBBBBBB8C88, 0x88BDC88B8B88C8BB,  // 0x000048A0 
	0xDC20222222206320, 0x200602201020048D, 0x833758B85555A311, 0x4400510000011008,  // 0x000048C0 
	0xC840224222228000, 0x021020111031044B, 0x1111555855553031, 0x1158503000330300,  // 0x000048E0 
	0xC200242222020000, 0x0101012130002498, 0x1511355885557111, 0x1110533036003300,  // 0x00004900 
	0xC010422021222021, 0x2222444043114448, 0x19114755B5537733, 0x3138033100013136,  // 0x00004920 
	0xC010224204222002, 0x2224424242104958, 0x99914775B8731331, 0x3335730006606600,  // 0x00004940 
	0xB002224222242020, 0x1222444494949558, 0x9999207686500333, 0x3130700066006636,  // 0x00004960 
	0xC300022010000000, 0x212444444442445B, 0x4494000677733033, 0x1103331060002166,  // 0x00004980 
	0xC000202300100060, 0x301122201033190B, 0x9999103075631333, 0x3310730203330166,  // 0x000049A0 
	0xC030220300000606, 0x0302311213030778, 0x1441401367733077, 0x3735633000110160,  // 0x000049C0 
	0xC100423730060060, 0x300100038033141B, 0x4444130378577357, 0x3575777401041906,  // 0x000049E0 
	0xB202412733000006, 0x3001033103317148, 0x1411203755557777, 0x5375676002141060,  // 0x00004A00 
	0x8022222707767766, 0x030120000337394B, 0x0744101533535366, 0x7776566004026911,  // 0x00004A20 
	0x82020A0377767065, 0x3330331377AA3346, 0x4114203137853578, 0x5685526629499309,  // 0x00004A40 
	0xC007773755555356, 0xA33A3773363AAA35, 0x44A1655553455767, 0x5852556029999140,  // 0x00004A60 
	0x8231377576657757, 0x733173731AA33315, 0x1413335555855588, 0x5555850044463944,  // 0x00004A80 
	0x8857707655573373, 0x3131131373333338, 0x5535755555555555, 0x5555660499999210,  // 0x00004AA0 
	0x8005070573573353, 0x1111113133733118, 0x1335535555855555, 0x1555772249003191,  // 0x00004AC0 
	0x8021501333332113, 0x3111131377775118, 0x1151155555555555, 0x5555762499993049,  // 0x00004AE0 
	0x8000022000222223, 0x1114444411111118, 0x1111111515555555, 0x5553773499339122,  // 0x00004B00 
	0x8000000000000200, 0x2249444242222138, 0x1341515555155555, 0x5515373099991444,  // 0x00004B20 
	0xC000000000000222, 0x0444422222222A78, 0xA731111111111155, 0x5111371449431142,  // 0x00004B40 
	0x8000000000000060, 0x0202202022222078, 0x677A731111111111, 0x1113333149999142,  // 0x00004B60 
	0x8000000600000200, 0x1002000000000066, 0x7000077777733133, 0x3350303489991299,  // 0x00004B80 
	0x8002000666060063, 0x0122022222222428, 0x077A222A03202373, 0x3565688032269992,  // 0x00004BA0 
	0x8420222020000202, 0x2121220202222006, 0xA22A2A2A27206676, 0x7760000249991999,  // 0x00004BC0 
	0x6422022606060020, 0x2022142402000206, 0x2776766667777667, 0x66766004A9999999,  // 0x00004BE0 
	0x8422000000060060, 0x000000000066680C, 0x000022222A2A6700, 0x0000002499999999,  // 0x00004C00 
	0x8990022006066007, 0x333333337766666C, 0x0602022220000066, 0x6060001449999999,  // 0x00004C20 
	0x6444402000201111, 0x111131133306686C, 0x6606303331137666, 0x6603730499999999,  // 0x00004C40 
	0x8990449440333311, 0x333160600867600C, 0x0086865667777676, 0x0333131199999999,  // 0x00004C60 
	0xC80006888B8B8C88, 0xC8C8C88BC88CCBBD, 0xCBCCBBBCBCCCCCCC, 0xBCCBCB8888866668,  // 0x00004C80 
};


