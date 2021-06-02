#include <ultra64.h>
#include <z64.h>
#include "ganontika_room_17.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "ganontika_scene.h"



SCmdEchoSettings _ganontika_room_17_set0000_cmd00 = { 0x16, 0, { 0 }, 0x06 }; // 0x0000
SCmdRoomBehavior _ganontika_room_17_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _ganontika_room_17_set0000_cmd02 = { 0x12, 0, 0, 0, 0x00, 0x01 }; // 0x0010
SCmdTimeSettings _ganontika_room_17_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _ganontika_room_17_set0000_cmd04 = { 0x0A, 0, (u32)&_ganontika_room_17_meshHeader_00000190 }; // 0x0020
SCmdObjectList _ganontika_room_17_set0000_cmd05 = { 0x0B, 0x05, (u32)_ganontika_room_17_objectList_00000040 }; // 0x0028
SCmdActorList _ganontika_room_17_set0000_cmd06 = { 0x01, 0x14, (u32)_ganontika_room_17_actorList_0000004C }; // 0x0030
SCmdEndMarker _ganontika_room_17_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _ganontika_room_17_objectList_00000040[] = 
{
	OBJECT_DEMO_KEKKAI,
	OBJECT_JYA_IRON,
	OBJECT_IK,
	OBJECT_BW,
	OBJECT_FIREFLY,
};

ActorEntry _ganontika_room_17_actorList_0000004C[20] = 
{
	{ ACTOR_EN_LIGHT, -676, 256, 922, 182, -21845, 0, 0x83F0 }, //0x0000004C 
	{ ACTOR_EN_LIGHT, -665, 255, 902, 0, -21663, 0, 0x83F0 }, //0x0000005C 
	{ ACTOR_EN_LIGHT, -680, 255, 906, -182, -21845, 0, 0x83F0 }, //0x0000006C 
	{ ACTOR_EN_LIGHT, -476, 256, 575, -182, -21845, 0, 0x83F0 }, //0x0000007C 
	{ ACTOR_EN_LIGHT, -465, 255, 556, 182, -21845, 0, 0x83F0 }, //0x0000008C 
	{ ACTOR_EN_LIGHT, -480, 255, 560, 0, -21663, 0, 0x83F0 }, //0x0000009C 
	{ ACTOR_EN_LIGHT, -987, 255, 280, 0, 11105, 0, 0x83F0 }, //0x000000AC 
	{ ACTOR_EN_LIGHT, -976, 255, 260, 182, 10923, 0, 0x83F0 }, //0x000000BC 
	{ ACTOR_EN_LIGHT, -972, 255, 276, 0, 11105, 0, 0x83F0 }, //0x000000CC 
	{ ACTOR_EN_BW, -920, 150, 447, 0, 0, 0, 0xFFFF }, //0x000000DC 
	{ ACTOR_EN_FIREFLY, -637, 292, 532, 0, -13107, 0, 0x0000 }, //0x000000EC 
	{ ACTOR_EN_FIREFLY, -991, 271, 712, 0, -26032, 0, 0x0000 }, //0x000000FC 
	{ ACTOR_EN_IK, -945, 411, 822, 0, 27307, 0, 0xFF03 }, //0x0000010C 
	{ ACTOR_BG_JYA_IRONOBJ, -789, 150, 580, 0, 2731, 0, 0x0001 }, //0x0000011C 
	{ ACTOR_BG_JYA_IRONOBJ, -839, 150, 551, 0, 20025, 0, 0x0001 }, //0x0000012C 
	{ ACTOR_BG_JYA_IRONOBJ, -819, 150, 628, 0, -13653, 0, 0x0001 }, //0x0000013C 
	{ ACTOR_BG_JYA_IRONOBJ, -867, 150, 600, 0, -30037, 0, 0x0001 }, //0x0000014C 
	{ ACTOR_OBJ_SWITCH, -830, 150, 588, 0, 5461, 0, 0x0F01 }, //0x0000015C 
	{ ACTOR_BG_GND_DARKMEIRO, -944, 410, 823, 0, 0, 0, 0x3701 }, //0x0000016C 
	{ ACTOR_OBJ_SWITCH, -626, 321, 244, 0, -5461, 0, 0x3712 }, //0x0000017C 
};

static u32 pad18C = 0;

MeshHeader2 _ganontika_room_17_meshHeader_00000190 = { { 2 }, 0x07, (u32)&_ganontika_room_17_meshDListEntry_0000019C, (u32)&(_ganontika_room_17_meshDListEntry_0000019C) + sizeof(_ganontika_room_17_meshDListEntry_0000019C) };

MeshEntry2 _ganontika_room_17_meshDListEntry_0000019C[7] = 
{
	{ -830, 250, 582, 526, (u32)_ganontika_room_17_dlist_00000B30, 0 },
	{ -726, 235, 591, 426, (u32)_ganontika_room_17_dlist_000023B8, 0 },
	{ -651, 150, 288, 106, (u32)_ganontika_room_17_dlist_00001448, 0 },
	{ -666, 250, 914, 223, (u32)_ganontika_room_17_dlist_00001720, 0 },
	{ -986, 250, 268, 223, (u32)_ganontika_room_17_dlist_00001AB8, 0 },
	{ -1186, 250, 614, 223, (u32)_ganontika_room_17_dlist_00001DE0, 0 },
	{ -827, 150, 591, 80, (u32)_ganontika_room_17_dlist_00002908, 0 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

Vtx_t _ganontika_room_17_vertices_00000210[6] = 
{
	 { -583, 150, 270, 0, -2560, 512, 134, 119, 89, 255 }, // 0x00000210
	 { -600, 250, 260, 0, 0, 0, 169, 154, 126, 255 }, // 0x00000220
	 { -600, 150, 260, 0, -2560, 0, 134, 119, 89, 255 }, // 0x00000230
	 { -652, 250, 230, 0, -2048, 0, 169, 154, 126, 255 }, // 0x00000240
	 { -670, 150, 220, 0, 512, 512, 134, 119, 89, 255 }, // 0x00000250
	 { -652, 150, 230, 0, 512, 0, 134, 119, 89, 255 }, // 0x00000260
};

Vtx_t _ganontika_room_17_vertices_00000270[4] = 
{
	 { -366, 150, 395, 0, 7680, 4096, 52, 49, 38, 255 }, // 0x00000270
	 { -583, 270, 270, 0, 4480, 1024, 169, 154, 126, 255 }, // 0x00000280
	 { -583, 150, 270, 0, 4480, 4096, 134, 119, 89, 255 }, // 0x00000290
	 { -366, 310, 395, 0, 7680, 0, 52, 49, 38, 255 }, // 0x000002A0
};

Vtx_t _ganontika_room_17_vertices_000002B0[7] = 
{
	 { -583, 270, 270, 0, 512, 512, 169, 154, 126, 255 }, // 0x000002B0
	 { -600, 250, 260, 0, 0, 0, 169, 154, 126, 255 }, // 0x000002C0
	 { -583, 150, 270, 0, -2560, 512, 134, 119, 89, 255 }, // 0x000002D0
	 { -583, 270, 270, 0, 2560, 512, 169, 154, 126, 255 }, // 0x000002E0
	 { -652, 250, 230, 0, 512, 0, 169, 154, 126, 255 }, // 0x000002F0
	 { -600, 250, 260, 0, 2048, 0, 169, 154, 126, 255 }, // 0x00000300
	 { -670, 270, 220, 0, 0, 512, 169, 154, 126, 255 }, // 0x00000310
};

Vtx_t _ganontika_room_17_vertices_00000320[4] = 
{
	 { -886, 310, 95, 0, 0, 0, 158, 142, 111, 255 }, // 0x00000320
	 { -886, 150, 95, 0, 0, 4096, 69, 62, 48, 255 }, // 0x00000330
	 { -670, 270, 220, 0, 3200, 1024, 169, 154, 126, 255 }, // 0x00000340
	 { -670, 150, 220, 0, 3200, 4096, 134, 119, 89, 255 }, // 0x00000350
};

Vtx_t _ganontika_room_17_vertices_00000360[3] = 
{
	 { -670, 150, 220, 0, 512, 512, 134, 119, 89, 255 }, // 0x00000360
	 { -652, 250, 230, 0, -2048, 0, 169, 154, 126, 255 }, // 0x00000370
	 { -670, 270, 220, 0, -2560, 512, 169, 154, 126, 255 }, // 0x00000380
};

Vtx_t _ganontika_room_17_vertices_00000390[6] = 
{
	 { -1086, 150, 441, 0, 3413, -3072, 147, 131, 97, 255 }, // 0x00000390
	 { -1203, 150, 604, 0, 1707, -3243, 134, 119, 89, 255 }, // 0x000003A0
	 { -876, 150, 678, 0, 2560, -512, 203, 195, 178, 255 }, // 0x000003B0
	 { -1303, 150, 777, 0, 0, -3243, 69, 62, 48, 255 }, // 0x000003C0
	 { -766, 150, 1087, 0, 0, 2048, 52, 49, 38, 255 }, // 0x000003D0
	 { -985, 150, 846, 0, 853, -597, 177, 164, 138, 255 }, // 0x000003E0
};

Vtx_t _ganontika_room_17_vertices_000003F0[32] = 
{
	 { -1251, 150, 727, 0, 896, 2048, 169, 154, 126, 255 }, // 0x000003F0
	 { -1251, 250, 727, 0, 896, -512, 255, 255, 255, 255 }, // 0x00000400
	 { -1286, 150, 787, 0, 0, 2048, 81, 72, 55, 255 }, // 0x00000410
	 { -1286, 310, 787, 0, 0, -2048, 81, 72, 55, 255 }, // 0x00000420
	 { -1221, 250, 675, 0, 1664, -512, 255, 255, 255, 255 }, // 0x00000430
	 { -1186, 310, 614, 0, 2560, -2048, 134, 119, 89, 255 }, // 0x00000440
	 { -1186, 150, 614, 0, 2560, 2048, 134, 119, 89, 255 }, // 0x00000450
	 { -1221, 150, 675, 0, 1664, 2048, 169, 154, 126, 255 }, // 0x00000460
	 { -1268, 250, 717, 0, 0, 0, 35, 31, 25, 255 }, // 0x00000470
	 { -1251, 250, 727, 0, -205, 0, 35, 31, 25, 255 }, // 0x00000480
	 { -1251, 150, 727, 0, -205, 2048, 52, 49, 38, 255 }, // 0x00000490
	 { -1268, 150, 717, 0, 0, 2048, 52, 49, 38, 255 }, // 0x000004A0
	 { -1238, 250, 665, 0, 1024, 2048, 35, 31, 25, 255 }, // 0x000004B0
	 { -1221, 250, 675, 0, 1024, 1638, 35, 31, 25, 255 }, // 0x000004C0
	 { -1251, 250, 727, 0, 410, 1638, 35, 31, 25, 255 }, // 0x000004D0
	 { -1268, 250, 717, 0, 410, 2048, 35, 31, 25, 255 }, // 0x000004E0
	 { -1238, 150, 665, 0, 0, 2048, 52, 49, 38, 255 }, // 0x000004F0
	 { -1221, 150, 675, 0, -205, 2048, 52, 49, 38, 255 }, // 0x00000500
	 { -1221, 250, 675, 0, -205, 0, 35, 31, 25, 255 }, // 0x00000510
	 { -1238, 250, 665, 0, 0, 0, 35, 31, 25, 255 }, // 0x00000520
	 { -652, 250, 230, 0, 512, 683, 35, 31, 25, 255 }, // 0x00000530
	 { -642, 250, 212, 0, 512, 341, 35, 31, 25, 255 }, // 0x00000540
	 { -590, 250, 242, 0, 0, 341, 35, 31, 25, 255 }, // 0x00000550
	 { -600, 250, 260, 0, 0, 683, 35, 31, 25, 255 }, // 0x00000560
	 { -652, 150, 230, 0, 0, 2048, 100, 89, 67, 255 }, // 0x00000570
	 { -642, 150, 212, 0, 256, 2048, 100, 89, 67, 255 }, // 0x00000580
	 { -642, 250, 212, 0, 256, -512, 35, 31, 25, 255 }, // 0x00000590
	 { -652, 250, 230, 0, 0, -512, 35, 31, 25, 255 }, // 0x000005A0
	 { -600, 250, 260, 0, 0, -512, 35, 31, 25, 255 }, // 0x000005B0
	 { -590, 250, 242, 0, 256, -512, 35, 31, 25, 255 }, // 0x000005C0
	 { -590, 150, 242, 0, 256, 2048, 100, 89, 67, 255 }, // 0x000005D0
	 { -600, 150, 260, 0, 0, 2048, 100, 89, 67, 255 }, // 0x000005E0
};

Vtx_t _ganontika_room_17_vertices_000005F0[16] = 
{
	 { -356, 150, 377, 0, 6997, 2048, 52, 49, 38, 255 }, // 0x000005F0
	 { -547, 150, 267, 0, 6997, 171, 115, 102, 78, 255 }, // 0x00000600
	 { -617, 150, 389, 0, 5803, 171, 213, 206, 192, 255 }, // 0x00000610
	 { -755, 150, 309, 0, 5803, -1195, 213, 206, 192, 255 }, // 0x00000620
	 { -726, 150, 418, 0, 5120, -512, 203, 195, 178, 255 }, // 0x00000630
	 { -617, 150, 389, 0, 5803, 171, 213, 206, 192, 255 }, // 0x00000640
	 { -685, 150, 187, 0, 6997, -1195, 115, 102, 78, 255 }, // 0x00000650
	 { -876, 150, 77, 0, 6997, -3072, 69, 62, 48, 255 }, // 0x00000660
	 { -1253, 150, 691, 0, 853, -3243, 147, 131, 97, 255 }, // 0x00000670
	 { -985, 150, 846, 0, 853, -597, 177, 164, 138, 255 }, // 0x00000680
	 { -1203, 150, 604, 0, 1707, -3243, 134, 119, 89, 255 }, // 0x00000690
	 { -1303, 150, 777, 0, 0, -3243, 69, 62, 48, 255 }, // 0x000006A0
	 { -566, 150, 741, 0, 3413, 2048, 147, 131, 97, 255 }, // 0x000006B0
	 { -766, 150, 1087, 0, 0, 2048, 52, 49, 38, 255 }, // 0x000006C0
	 { -1086, 150, 441, 0, 3413, -3072, 147, 131, 97, 255 }, // 0x000006D0
	 { -876, 150, 678, 0, 2560, -512, 203, 195, 178, 255 }, // 0x000006E0
};

Vtx_t _ganontika_room_17_vertices_000006F0[12] = 
{
	 { -985, 350, 846, 0, 1280, 1984, 177, 164, 138, 255 }, // 0x000006F0
	 { -1236, 350, 701, 0, 1280, 3840, 100, 89, 67, 255 }, // 0x00000700
	 { -1186, 350, 614, 0, 2560, 3840, 134, 119, 89, 255 }, // 0x00000710
	 { -1286, 350, 787, 0, 0, 3840, 81, 72, 55, 255 }, // 0x00000720
	 { -766, 350, 1087, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000730
	 { -566, 350, 741, 0, 5120, 0, 147, 131, 97, 255 }, // 0x00000740
	 { -876, 350, 678, 0, 3840, 1920, 177, 164, 138, 255 }, // 0x00000750
	 { -1086, 350, 441, 0, 5120, 3840, 147, 131, 97, 255 }, // 0x00000760
	 { -726, 350, 418, 0, 7680, 1920, 177, 164, 138, 255 }, // 0x00000770
	 { -886, 350, 95, 0, 10240, 3840, 100, 89, 67, 255 }, // 0x00000780
	 { -626, 350, 245, 0, 10240, 1920, 100, 89, 67, 255 }, // 0x00000790
	 { -366, 350, 395, 0, 10240, 0, 52, 49, 38, 255 }, // 0x000007A0
};

Vtx_t _ganontika_room_17_vertices_000007B0[6] = 
{
	 { -366, 210, 395, 0, 0, 0, 52, 49, 38, 255 }, // 0x000007B0
	 { -366, 150, 395, 0, 0, 1024, 52, 49, 38, 255 }, // 0x000007C0
	 { -466, 150, 568, 0, 6144, 1024, 134, 119, 89, 255 }, // 0x000007D0
	 { -466, 210, 568, 0, 6144, 0, 170, 113, 56, 255 }, // 0x000007E0
	 { -566, 150, 741, 0, 12288, 1024, 147, 131, 97, 255 }, // 0x000007F0
	 { -566, 210, 741, 0, 12288, 0, 147, 131, 97, 255 }, // 0x00000800
};

Vtx_t _ganontika_room_17_vertices_00000810[5] = 
{
	 { -366, 350, 395, 0, 5120, 0, 52, 49, 38, 255 }, // 0x00000810
	 { -466, 310, 568, 0, 2560, 1024, 134, 119, 89, 255 }, // 0x00000820
	 { -566, 350, 741, 0, 0, 0, 147, 131, 97, 255 }, // 0x00000830
	 { -366, 310, 395, 0, 5120, 1024, 52, 49, 38, 255 }, // 0x00000840
	 { -566, 310, 741, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00000850
};

Vtx_t _ganontika_room_17_vertices_00000860[5] = 
{
	 { -583, 270, 270, 0, 4480, 1024, 169, 154, 126, 255 }, // 0x00000860
	 { -626, 310, 245, 0, 3840, 0, 203, 195, 178, 255 }, // 0x00000870
	 { -670, 270, 220, 0, 3200, 1024, 169, 154, 126, 255 }, // 0x00000880
	 { -886, 310, 95, 0, 0, 0, 158, 142, 111, 255 }, // 0x00000890
	 { -366, 310, 395, 0, 7680, 0, 52, 49, 38, 255 }, // 0x000008A0
};

Vtx_t _ganontika_room_17_vertices_000008B0[5] = 
{
	 { -886, 350, 95, 0, 0, 0, 100, 89, 67, 255 }, // 0x000008B0
	 { -626, 310, 245, 0, 3840, 1024, 203, 195, 178, 255 }, // 0x000008C0
	 { -366, 350, 395, 0, 7680, 0, 52, 49, 38, 255 }, // 0x000008D0
	 { -886, 310, 95, 0, 0, 1024, 158, 142, 111, 255 }, // 0x000008E0
	 { -366, 310, 395, 0, 7680, 1024, 52, 49, 38, 255 }, // 0x000008F0
};

Vtx_t _ganontika_room_17_vertices_00000900[11] = 
{
	 { -516, 210, 654, 0, 3840, 2560, 115, 102, 78, 255 }, // 0x00000900
	 { -466, 259, 568, 0, 2560, 1296, 255, 127, 42, 255 }, // 0x00000910
	 { -466, 210, 568, 0, 2560, 2560, 170, 113, 56, 255 }, // 0x00000920
	 { -566, 210, 741, 0, 5120, 2560, 147, 131, 97, 255 }, // 0x00000930
	 { -566, 310, 741, 0, 5120, 0, 147, 131, 97, 255 }, // 0x00000940
	 { -516, 310, 654, 0, 3840, 0, 115, 102, 78, 255 }, // 0x00000950
	 { -466, 310, 568, 0, 2560, 0, 134, 119, 89, 255 }, // 0x00000960
	 { -416, 310, 481, 0, 1280, 0, 115, 102, 78, 255 }, // 0x00000970
	 { -416, 210, 481, 0, 1280, 2560, 115, 102, 78, 255 }, // 0x00000980
	 { -366, 310, 395, 0, 0, 0, 52, 49, 38, 255 }, // 0x00000990
	 { -366, 210, 395, 0, 0, 2560, 52, 49, 38, 255 }, // 0x000009A0
};

Vtx_t _ganontika_room_17_vertices_000009B0[4] = 
{
	 { -356, 150, 377, 0, 6997, 2048, 52, 49, 38, 255 }, // 0x000009B0
	 { -617, 150, 389, 0, 5803, 171, 213, 206, 192, 255 }, // 0x000009C0
	 { -566, 150, 741, 0, 3413, 2048, 147, 131, 97, 255 }, // 0x000009D0
	 { -726, 150, 418, 0, 5120, -512, 203, 195, 178, 255 }, // 0x000009E0
};

Vtx_t _ganontika_room_17_vertices_000009F0[7] = 
{
	 { -766, 150, 1087, 0, 0, 4096, 52, 49, 38, 255 }, // 0x000009F0
	 { -1026, 230, 937, 0, 3840, 2048, 203, 195, 178, 255 }, // 0x00000A00
	 { -766, 310, 1087, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000A10
	 { -1026, 150, 937, 0, 3840, 4096, 115, 102, 78, 255 }, // 0x00000A20
	 { -1026, 310, 937, 0, 3840, 0, 169, 154, 126, 255 }, // 0x00000A30
	 { -1286, 150, 787, 0, 7680, 4096, 81, 72, 55, 255 }, // 0x00000A40
	 { -1286, 310, 787, 0, 7680, 0, 81, 72, 55, 255 }, // 0x00000A50
};

Vtx_t _ganontika_room_17_vertices_00000A60[5] = 
{
	 { -1286, 310, 787, 0, 7680, 1024, 81, 72, 55, 255 }, // 0x00000A60
	 { -1286, 350, 787, 0, 7680, 0, 81, 72, 55, 255 }, // 0x00000A70
	 { -1026, 310, 937, 0, 3840, 1024, 169, 154, 126, 255 }, // 0x00000A80
	 { -766, 350, 1087, 0, 0, 0, 81, 72, 55, 255 }, // 0x00000A90
	 { -766, 310, 1087, 0, 0, 1024, 81, 72, 55, 255 }, // 0x00000AA0
};

Vtx_t _ganontika_room_17_vertices_00000AB0[8] = 
{
	 { -893, 150, 67, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AB0
	 { -356, 150, 377, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AC0
	 { -893, 350, 67, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AD0
	 { -356, 350, 377, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AE0
	 { -1303, 150, 777, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000AF0
	 { -766, 150, 1087, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B00
	 { -1303, 350, 777, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B10
	 { -766, 350, 1087, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000B20
};

Gfx _ganontika_room_17_dlist_00000B30[] =
{
	gsDPPipeSync(), // 0x00000B30
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000B38
	gsSPVertex(_ganontika_room_17_vertices_00000AB0, 8, 0), // 0x00000B40
	gsSPCullDisplayList(0, 7), // 0x00000B48
	gsDPPipeSync(), // 0x00000B50
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000B58
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000B60
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000B68
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F580), // 0x00000B70
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00000B78
	gsDPLoadSync(), // 0x00000B80
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00000B88
	gsDPPipeSync(), // 0x00000B90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x00000B98
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00000BA0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000BA8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000BB0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000BB8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000BC0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000BC8
	gsSPVertex(_ganontika_room_17_vertices_00000210, 6, 0), // 0x00000BD0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000BD8
	gsDPPipeSync(), // 0x00000BE0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000BE8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000BF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000BF8
	gsDPLoadSync(), // 0x00000C00
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000C08
	gsDPPipeSync(), // 0x00000C10
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000C18
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000C20
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00000C28
	gsDPTileSync(), // 0x00000C30
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000C38
	gsDPLoadSync(), // 0x00000C40
	gsDPLoadTLUTCmd(7, 255), // 0x00000C48
	gsDPPipeSync(), // 0x00000C50
	gsSPVertex(_ganontika_room_17_vertices_00000270, 4, 0), // 0x00000C58
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00000C60
	gsDPPipeSync(), // 0x00000C68
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000C70
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F580), // 0x00000C78
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00000C80
	gsDPLoadSync(), // 0x00000C88
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00000C90
	gsDPPipeSync(), // 0x00000C98
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x00000CA0
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00000CA8
	gsSPVertex(_ganontika_room_17_vertices_000002B0, 7, 0), // 0x00000CB0
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000CB8
	gsSP1Triangle(6, 4, 3, 0), // 0x00000CC0
	gsDPPipeSync(), // 0x00000CC8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000CD0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000CD8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000CE0
	gsDPLoadSync(), // 0x00000CE8
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000CF0
	gsDPPipeSync(), // 0x00000CF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000D00
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000D08
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00000D10
	gsDPTileSync(), // 0x00000D18
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000D20
	gsDPLoadSync(), // 0x00000D28
	gsDPLoadTLUTCmd(7, 255), // 0x00000D30
	gsDPPipeSync(), // 0x00000D38
	gsSPVertex(_ganontika_room_17_vertices_00000320, 4, 0), // 0x00000D40
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000D48
	gsDPPipeSync(), // 0x00000D50
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000D58
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F580), // 0x00000D60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 4, 0, 0, 4, 0), // 0x00000D68
	gsDPLoadSync(), // 0x00000D70
	gsDPLoadBlock(7, 0, 0, 255, 512), // 0x00000D78
	gsDPPipeSync(), // 0x00000D80
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 4, 0, 0, 4, 0), // 0x00000D88
	gsDPSetTileSize(0, 0, 0, 60, 60), // 0x00000D90
	gsSPVertex(_ganontika_room_17_vertices_00000360, 3, 0), // 0x00000D98
	gsSP1Triangle(0, 1, 2, 0), // 0x00000DA0
	gsDPPipeSync(), // 0x00000DA8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00005618), // 0x00000DB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000DB8
	gsDPLoadSync(), // 0x00000DC0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00000DC8
	gsDPPipeSync(), // 0x00000DD0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000DD8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000DE0
	gsSPVertex(_ganontika_room_17_vertices_00000390, 6, 0), // 0x00000DE8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000DF0
	gsDPPipeSync(), // 0x00000DF8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000E00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00000E08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000E10
	gsDPLoadSync(), // 0x00000E18
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000E20
	gsDPPipeSync(), // 0x00000E28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000E30
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000E38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00000E40
	gsDPTileSync(), // 0x00000E48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000E50
	gsDPLoadSync(), // 0x00000E58
	gsDPLoadTLUTCmd(7, 255), // 0x00000E60
	gsDPPipeSync(), // 0x00000E68
	gsSPVertex(_ganontika_room_17_vertices_000003F0, 32, 0), // 0x00000E70
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000E78
	gsSP2Triangles(1, 4, 3, 0, 4, 5, 3, 0), // 0x00000E80
	gsSP2Triangles(4, 6, 5, 0, 7, 6, 4, 0), // 0x00000E88
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000E90
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0), // 0x00000E98
	gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0), // 0x00000EA0
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0), // 0x00000EA8
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0), // 0x00000EB0
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0), // 0x00000EB8
	gsDPPipeSync(), // 0x00000EC0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00000EC8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00005618), // 0x00000ED0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00000ED8
	gsDPLoadSync(), // 0x00000EE0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00000EE8
	gsDPPipeSync(), // 0x00000EF0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00000EF8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00000F00
	gsSPVertex(_ganontika_room_17_vertices_000005F0, 16, 0), // 0x00000F08
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00000F10
	gsSP2Triangles(6, 7, 3, 0, 8, 9, 10, 0), // 0x00000F18
	gsSP2Triangles(11, 9, 8, 0, 12, 9, 13, 0), // 0x00000F20
	gsSP2Triangles(7, 14, 3, 0, 14, 4, 3, 0), // 0x00000F28
	gsSP2Triangles(9, 15, 10, 0, 9, 12, 15, 0), // 0x00000F30
	gsSP2Triangles(15, 4, 14, 0, 15, 12, 4, 0), // 0x00000F38
	gsDPPipeSync(), // 0x00000F40
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00007618), // 0x00000F48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000F50
	gsDPLoadSync(), // 0x00000F58
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00000F60
	gsDPPipeSync(), // 0x00000F68
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000F70
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000F78
	gsSPVertex(_ganontika_room_17_vertices_000006F0, 12, 0), // 0x00000F80
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00000F88
	gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0), // 0x00000F90
	gsSP2Triangles(6, 5, 0, 0, 2, 6, 0, 0), // 0x00000F98
	gsSP2Triangles(6, 2, 7, 0, 8, 5, 6, 0), // 0x00000FA0
	gsSP2Triangles(7, 8, 6, 0, 8, 7, 9, 0), // 0x00000FA8
	gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0), // 0x00000FB0
	gsSP1Triangle(8, 11, 5, 0), // 0x00000FB8
	gsDPPipeSync(), // 0x00000FC0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000FC8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00000FD0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000FD8
	gsDPLoadSync(), // 0x00000FE0
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000FE8
	gsDPPipeSync(), // 0x00000FF0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000FF8
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001000
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001008
	gsDPTileSync(), // 0x00001010
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001018
	gsDPLoadSync(), // 0x00001020
	gsDPLoadTLUTCmd(7, 255), // 0x00001028
	gsDPPipeSync(), // 0x00001030
	gsSPVertex(_ganontika_room_17_vertices_000007B0, 6, 0), // 0x00001038
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001040
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00001048
	gsDPPipeSync(), // 0x00001050
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00002A18), // 0x00001058
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001060
	gsDPLoadSync(), // 0x00001068
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001070
	gsDPPipeSync(), // 0x00001078
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001080
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001088
	gsSPVertex(_ganontika_room_17_vertices_00000810, 5, 0), // 0x00001090
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001098
	gsSP1Triangle(1, 4, 2, 0), // 0x000010A0
	gsDPPipeSync(), // 0x000010A8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x000010B0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000010B8
	gsDPLoadSync(), // 0x000010C0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000010C8
	gsDPPipeSync(), // 0x000010D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x000010D8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x000010E0
	gsSPVertex(_ganontika_room_17_vertices_00000860, 5, 0), // 0x000010E8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x000010F0
	gsSP1Triangle(0, 4, 1, 0), // 0x000010F8
	gsDPPipeSync(), // 0x00001100
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00002A18), // 0x00001108
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001110
	gsDPLoadSync(), // 0x00001118
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001120
	gsDPPipeSync(), // 0x00001128
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001130
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001138
	gsSPVertex(_ganontika_room_17_vertices_000008B0, 5, 0), // 0x00001140
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001148
	gsSP1Triangle(1, 4, 2, 0), // 0x00001150
	gsDPPipeSync(), // 0x00001158
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00001160
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001168
	gsDPLoadSync(), // 0x00001170
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001178
	gsDPPipeSync(), // 0x00001180
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001188
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001190
	gsSPVertex(_ganontika_room_17_vertices_00000900, 11, 0), // 0x00001198
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000011A0
	gsSP2Triangles(3, 5, 0, 0, 5, 1, 0, 0), // 0x000011A8
	gsSP2Triangles(6, 1, 5, 0, 6, 7, 1, 0), // 0x000011B0
	gsSP2Triangles(1, 7, 8, 0, 7, 9, 10, 0), // 0x000011B8
	gsSP2Triangles(7, 10, 8, 0, 1, 8, 2, 0), // 0x000011C0
	gsDPPipeSync(), // 0x000011C8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000011D0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00005618), // 0x000011D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x000011E0
	gsDPLoadSync(), // 0x000011E8
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000011F0
	gsDPPipeSync(), // 0x000011F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001200
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001208
	gsSPVertex(_ganontika_room_17_vertices_000009B0, 4, 0), // 0x00001210
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001218
	gsDPPipeSync(), // 0x00001220
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001228
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00001230
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001238
	gsDPLoadSync(), // 0x00001240
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001248
	gsDPPipeSync(), // 0x00001250
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001258
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001260
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001268
	gsDPTileSync(), // 0x00001270
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001278
	gsDPLoadSync(), // 0x00001280
	gsDPLoadTLUTCmd(7, 255), // 0x00001288
	gsDPPipeSync(), // 0x00001290
	gsSPVertex(_ganontika_room_17_vertices_000009F0, 7, 0), // 0x00001298
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x000012A0
	gsSP2Triangles(1, 4, 2, 0, 3, 5, 1, 0), // 0x000012A8
	gsSP2Triangles(5, 6, 1, 0, 6, 4, 1, 0), // 0x000012B0
	gsDPPipeSync(), // 0x000012B8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00002A18), // 0x000012C0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x000012C8
	gsDPLoadSync(), // 0x000012D0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000012D8
	gsDPPipeSync(), // 0x000012E0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x000012E8
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x000012F0
	gsSPVertex(_ganontika_room_17_vertices_00000A60, 5, 0), // 0x000012F8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001300
	gsSP1Triangle(3, 4, 2, 0), // 0x00001308
	gsSPEndDisplayList(), // 0x00001310
};

Vtx_t _ganontika_room_17_vertices_00001318[11] = 
{
	 { -646, 150, 279, 0, 2048, 1536, 255, 255, 255, 255 }, // 0x00001318
	 { -685, 150, 187, 0, 0, 0, 115, 102, 78, 255 }, // 0x00001328
	 { -755, 150, 309, 0, 0, 3584, 213, 206, 192, 255 }, // 0x00001338
	 { -646, 150, 279, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00001348
	 { -755, 150, 309, 0, 0, 2048, 213, 206, 192, 255 }, // 0x00001358
	 { -617, 150, 389, 0, 0, -2048, 213, 206, 192, 255 }, // 0x00001368
	 { -547, 150, 267, 0, 0, 512, 115, 102, 78, 255 }, // 0x00001378
	 { -646, 150, 279, 0, 2048, 2048, 255, 255, 255, 255 }, // 0x00001388
	 { -617, 150, 389, 0, 0, 4096, 213, 206, 192, 255 }, // 0x00001398
	 { -616, 150, 227, 0, 2048, 512, 134, 119, 89, 255 }, // 0x000013A8
	 { -616, 150, 227, 0, 2048, 0, 134, 119, 89, 255 }, // 0x000013B8
};

Vtx_t _ganontika_room_17_vertices_000013C8[8] = 
{
	 { -685, 150, 187, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013C8
	 { -547, 150, 267, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013D8
	 { -685, 150, 187, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013E8
	 { -547, 150, 267, 0, 0, 0, 0, 0, 0, 0 }, // 0x000013F8
	 { -755, 150, 309, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001408
	 { -617, 150, 389, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001418
	 { -755, 150, 309, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001428
	 { -617, 150, 389, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001438
};

Gfx _ganontika_room_17_dlist_00001448[] =
{
	gsDPPipeSync(), // 0x00001448
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001450
	gsSPVertex(_ganontika_room_17_vertices_000013C8, 8, 0), // 0x00001458
	gsSPCullDisplayList(0, 7), // 0x00001460
	gsDPPipeSync(), // 0x00001468
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001470
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001478
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001480
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00006E18), // 0x00001488
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00001490
	gsDPLoadSync(), // 0x00001498
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000014A0
	gsDPPipeSync(), // 0x000014A8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000014B0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000014B8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x000014C0
	gsDPTileSync(), // 0x000014C8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000014D0
	gsDPLoadSync(), // 0x000014D8
	gsDPLoadTLUTCmd(7, 255), // 0x000014E0
	gsDPPipeSync(), // 0x000014E8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000014F0
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000014F8
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001500
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001508
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001510
	gsSPVertex(_ganontika_room_17_vertices_00001318, 11, 0), // 0x00001518
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00001520
	gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0), // 0x00001528
	gsSP1Triangle(0, 10, 1, 0), // 0x00001530
	gsSPEndDisplayList(), // 0x00001538
};

Vtx_t _ganontika_room_17_vertices_00001540[6] = 
{
	 { -666, 210, 914, 0, 6144, 0, 170, 113, 56, 255 }, // 0x00001540
	 { -666, 150, 914, 0, 6144, 1024, 134, 119, 89, 255 }, // 0x00001550
	 { -766, 150, 1087, 0, 0, 1024, 52, 49, 38, 255 }, // 0x00001560
	 { -766, 210, 1087, 0, 0, 0, 52, 49, 38, 255 }, // 0x00001570
	 { -566, 210, 741, 0, 12288, 0, 147, 131, 97, 255 }, // 0x00001580
	 { -566, 150, 741, 0, 12288, 1024, 147, 131, 97, 255 }, // 0x00001590
};

Vtx_t _ganontika_room_17_vertices_000015A0[5] = 
{
	 { -566, 350, 741, 0, 0, 0, 147, 131, 97, 255 }, // 0x000015A0
	 { -666, 310, 914, 0, 2560, 1024, 134, 119, 89, 255 }, // 0x000015B0
	 { -766, 350, 1087, 0, 5120, 0, 81, 72, 55, 255 }, // 0x000015C0
	 { -766, 310, 1087, 0, 5120, 1024, 81, 72, 55, 255 }, // 0x000015D0
	 { -566, 310, 741, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000015E0
};

Vtx_t _ganontika_room_17_vertices_000015F0[11] = 
{
	 { -666, 210, 914, 0, 2560, 2560, 170, 113, 56, 255 }, // 0x000015F0
	 { -666, 259, 914, 0, 2560, 1296, 255, 127, 42, 255 }, // 0x00001600
	 { -616, 210, 828, 0, 3840, 2560, 115, 102, 78, 255 }, // 0x00001610
	 { -616, 310, 828, 0, 3840, 0, 115, 102, 78, 255 }, // 0x00001620
	 { -566, 310, 741, 0, 5120, 0, 147, 131, 97, 255 }, // 0x00001630
	 { -566, 210, 741, 0, 5120, 2560, 147, 131, 97, 255 }, // 0x00001640
	 { -666, 310, 914, 0, 2560, 0, 134, 119, 89, 255 }, // 0x00001650
	 { -716, 310, 1001, 0, 1280, 0, 115, 102, 78, 255 }, // 0x00001660
	 { -716, 210, 1001, 0, 1280, 2560, 115, 102, 78, 255 }, // 0x00001670
	 { -766, 210, 1087, 0, 0, 2560, 52, 49, 38, 255 }, // 0x00001680
	 { -766, 310, 1087, 0, 0, 0, 81, 72, 55, 255 }, // 0x00001690
};

Vtx_t _ganontika_room_17_vertices_000016A0[8] = 
{
	 { -566, 150, 741, 0, 0, 0, 0, 0, 0, 0 }, // 0x000016A0
	 { -566, 150, 741, 0, 0, 0, 0, 0, 0, 0 }, // 0x000016B0
	 { -566, 350, 741, 0, 0, 0, 0, 0, 0, 0 }, // 0x000016C0
	 { -566, 350, 741, 0, 0, 0, 0, 0, 0, 0 }, // 0x000016D0
	 { -766, 150, 1087, 0, 0, 0, 0, 0, 0, 0 }, // 0x000016E0
	 { -766, 150, 1087, 0, 0, 0, 0, 0, 0, 0 }, // 0x000016F0
	 { -766, 350, 1087, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001700
	 { -766, 350, 1087, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001710
};

Gfx _ganontika_room_17_dlist_00001720[] =
{
	gsDPPipeSync(), // 0x00001720
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001728
	gsSPVertex(_ganontika_room_17_vertices_000016A0, 8, 0), // 0x00001730
	gsSPCullDisplayList(0, 7), // 0x00001738
	gsDPPipeSync(), // 0x00001740
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001748
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001750
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001758
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00001760
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00001768
	gsDPLoadSync(), // 0x00001770
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001778
	gsDPPipeSync(), // 0x00001780
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00001788
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001790
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001798
	gsDPTileSync(), // 0x000017A0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000017A8
	gsDPLoadSync(), // 0x000017B0
	gsDPLoadTLUTCmd(7, 255), // 0x000017B8
	gsDPPipeSync(), // 0x000017C0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x000017C8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x000017D0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x000017D8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x000017E0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000017E8
	gsSPVertex(_ganontika_room_17_vertices_00001540, 6, 0), // 0x000017F0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000017F8
	gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0), // 0x00001800
	gsDPPipeSync(), // 0x00001808
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00002A18), // 0x00001810
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001818
	gsDPLoadSync(), // 0x00001820
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001828
	gsDPPipeSync(), // 0x00001830
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001838
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001840
	gsSPVertex(_ganontika_room_17_vertices_000015A0, 5, 0), // 0x00001848
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001850
	gsSP1Triangle(0, 4, 1, 0), // 0x00001858
	gsDPPipeSync(), // 0x00001860
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00001868
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001870
	gsDPLoadSync(), // 0x00001878
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001880
	gsDPPipeSync(), // 0x00001888
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001890
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001898
	gsSPVertex(_ganontika_room_17_vertices_000015F0, 11, 0), // 0x000018A0
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0), // 0x000018A8
	gsSP2Triangles(2, 4, 5, 0, 2, 1, 3, 0), // 0x000018B0
	gsSP2Triangles(3, 1, 6, 0, 1, 7, 6, 0), // 0x000018B8
	gsSP2Triangles(8, 7, 1, 0, 8, 9, 10, 0), // 0x000018C0
	gsSP2Triangles(8, 10, 7, 0, 0, 8, 1, 0), // 0x000018C8
	gsSPEndDisplayList(), // 0x000018D0
};

Vtx_t _ganontika_room_17_vertices_000018D8[6] = 
{
	 { -1086, 210, 441, 0, 0, 0, 147, 131, 97, 255 }, // 0x000018D8
	 { -1086, 150, 441, 0, 0, 1024, 147, 131, 97, 255 }, // 0x000018E8
	 { -986, 150, 268, 0, 6144, 1024, 134, 119, 89, 255 }, // 0x000018F8
	 { -986, 210, 268, 0, 6144, 0, 170, 113, 56, 255 }, // 0x00001908
	 { -886, 150, 95, 0, 12288, 1024, 147, 131, 97, 255 }, // 0x00001918
	 { -886, 210, 95, 0, 12288, 0, 147, 131, 97, 255 }, // 0x00001928
};

Vtx_t _ganontika_room_17_vertices_00001938[5] = 
{
	 { -1086, 350, 441, 0, 5120, 0, 147, 131, 97, 255 }, // 0x00001938
	 { -986, 310, 268, 0, 2560, 1024, 134, 119, 89, 255 }, // 0x00001948
	 { -886, 350, 95, 0, 0, 0, 147, 131, 97, 255 }, // 0x00001958
	 { -1086, 310, 441, 0, 5120, 1024, 147, 131, 97, 255 }, // 0x00001968
	 { -886, 310, 95, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00001978
};

Vtx_t _ganontika_room_17_vertices_00001988[11] = 
{
	 { -936, 210, 181, 0, 3840, 2560, 115, 102, 78, 255 }, // 0x00001988
	 { -986, 259, 268, 0, 2560, 1296, 255, 127, 42, 255 }, // 0x00001998
	 { -986, 210, 268, 0, 2560, 2560, 170, 113, 56, 255 }, // 0x000019A8
	 { -886, 210, 95, 0, 5120, 2560, 147, 131, 97, 255 }, // 0x000019B8
	 { -886, 310, 95, 0, 5120, 0, 147, 131, 97, 255 }, // 0x000019C8
	 { -936, 310, 181, 0, 3840, 0, 115, 102, 78, 255 }, // 0x000019D8
	 { -986, 310, 268, 0, 2560, 0, 134, 119, 89, 255 }, // 0x000019E8
	 { -1036, 310, 354, 0, 1280, 0, 115, 102, 78, 255 }, // 0x000019F8
	 { -1036, 210, 354, 0, 1280, 2560, 115, 102, 78, 255 }, // 0x00001A08
	 { -1086, 310, 441, 0, 0, 0, 147, 131, 97, 255 }, // 0x00001A18
	 { -1086, 210, 441, 0, 0, 2560, 147, 131, 97, 255 }, // 0x00001A28
};

Vtx_t _ganontika_room_17_vertices_00001A38[8] = 
{
	 { -886, 150, 95, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A38
	 { -886, 150, 95, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A48
	 { -886, 350, 95, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A58
	 { -886, 350, 95, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A68
	 { -1086, 150, 441, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A78
	 { -1086, 150, 441, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A88
	 { -1086, 350, 441, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001A98
	 { -1086, 350, 441, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001AA8
};

Gfx _ganontika_room_17_dlist_00001AB8[] =
{
	gsDPPipeSync(), // 0x00001AB8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001AC0
	gsSPVertex(_ganontika_room_17_vertices_00001A38, 8, 0), // 0x00001AC8
	gsSPCullDisplayList(0, 7), // 0x00001AD0
	gsDPPipeSync(), // 0x00001AD8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001AE0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001AE8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001AF0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00001AF8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00001B00
	gsDPLoadSync(), // 0x00001B08
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001B10
	gsDPPipeSync(), // 0x00001B18
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00001B20
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001B28
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001B30
	gsDPTileSync(), // 0x00001B38
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001B40
	gsDPLoadSync(), // 0x00001B48
	gsDPLoadTLUTCmd(7, 255), // 0x00001B50
	gsDPPipeSync(), // 0x00001B58
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001B60
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001B68
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001B70
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001B78
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001B80
	gsSPVertex(_ganontika_room_17_vertices_000018D8, 6, 0), // 0x00001B88
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001B90
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00001B98
	gsDPPipeSync(), // 0x00001BA0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00002A18), // 0x00001BA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001BB0
	gsDPLoadSync(), // 0x00001BB8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001BC0
	gsDPPipeSync(), // 0x00001BC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001BD0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001BD8
	gsSPVertex(_ganontika_room_17_vertices_00001938, 5, 0), // 0x00001BE0
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001BE8
	gsSP1Triangle(1, 4, 2, 0), // 0x00001BF0
	gsDPPipeSync(), // 0x00001BF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00001C00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001C08
	gsDPLoadSync(), // 0x00001C10
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001C18
	gsDPPipeSync(), // 0x00001C20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001C28
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001C30
	gsSPVertex(_ganontika_room_17_vertices_00001988, 11, 0), // 0x00001C38
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00001C40
	gsSP2Triangles(3, 5, 0, 0, 5, 1, 0, 0), // 0x00001C48
	gsSP2Triangles(6, 1, 5, 0, 6, 7, 1, 0), // 0x00001C50
	gsSP2Triangles(1, 7, 8, 0, 7, 9, 10, 0), // 0x00001C58
	gsSP2Triangles(7, 10, 8, 0, 1, 8, 2, 0), // 0x00001C60
	gsSPEndDisplayList(), // 0x00001C68
};

Vtx_t _ganontika_room_17_vertices_00001C70[4] = 
{
	 { -1186, 150, 614, 0, 6144, 1024, 134, 119, 89, 255 }, // 0x00001C70
	 { -1086, 150, 441, 0, 12288, 1024, 147, 131, 97, 255 }, // 0x00001C80
	 { -1086, 210, 441, 0, 12288, 0, 147, 131, 97, 255 }, // 0x00001C90
	 { -1186, 210, 614, 0, 6144, 0, 170, 113, 56, 255 }, // 0x00001CA0
};

Vtx_t _ganontika_room_17_vertices_00001CB0[5] = 
{
	 { -1286, 350, 787, 0, 5120, 0, 81, 72, 55, 255 }, // 0x00001CB0
	 { -1186, 310, 614, 0, 2560, 1024, 134, 119, 89, 255 }, // 0x00001CC0
	 { -1086, 350, 441, 0, 0, 0, 147, 131, 97, 255 }, // 0x00001CD0
	 { -1286, 310, 787, 0, 5120, 1024, 81, 72, 55, 255 }, // 0x00001CE0
	 { -1086, 310, 441, 0, 0, 1024, 147, 131, 97, 255 }, // 0x00001CF0
};

Vtx_t _ganontika_room_17_vertices_00001D00[6] = 
{
	 { -1086, 210, 441, 0, 5120, 512, 147, 131, 97, 255 }, // 0x00001D00
	 { -1086, 310, 441, 0, 5120, -2048, 147, 131, 97, 255 }, // 0x00001D10
	 { -1136, 310, 528, 0, 3840, -2048, 115, 102, 78, 255 }, // 0x00001D20
	 { -1136, 210, 528, 0, 3840, 512, 115, 102, 78, 255 }, // 0x00001D30
	 { -1186, 210, 614, 0, 2560, 512, 169, 154, 126, 255 }, // 0x00001D40
	 { -1186, 310, 614, 0, 2560, -2048, 134, 119, 89, 255 }, // 0x00001D50
};

Vtx_t _ganontika_room_17_vertices_00001D60[8] = 
{
	 { -1086, 150, 441, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D60
	 { -1086, 150, 441, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D70
	 { -1086, 350, 441, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D80
	 { -1086, 350, 441, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001D90
	 { -1286, 150, 787, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DA0
	 { -1286, 150, 787, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DB0
	 { -1286, 350, 787, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DC0
	 { -1286, 350, 787, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001DD0
};

Gfx _ganontika_room_17_dlist_00001DE0[] =
{
	gsDPPipeSync(), // 0x00001DE0
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001DE8
	gsSPVertex(_ganontika_room_17_vertices_00001D60, 8, 0), // 0x00001DF0
	gsSPCullDisplayList(0, 7), // 0x00001DF8
	gsDPPipeSync(), // 0x00001E00
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001E08
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001E10
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001E18
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_00020380), // 0x00001E20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00001E28
	gsDPLoadSync(), // 0x00001E30
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00001E38
	gsDPPipeSync(), // 0x00001E40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00001E48
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00001E50
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F380), // 0x00001E58
	gsDPTileSync(), // 0x00001E60
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001E68
	gsDPLoadSync(), // 0x00001E70
	gsDPLoadTLUTCmd(7, 255), // 0x00001E78
	gsDPPipeSync(), // 0x00001E80
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001E88
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001E90
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001E98
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001EA0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001EA8
	gsSPVertex(_ganontika_room_17_vertices_00001C70, 4, 0), // 0x00001EB0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001EB8
	gsDPPipeSync(), // 0x00001EC0
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00002A18), // 0x00001EC8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001ED0
	gsDPLoadSync(), // 0x00001ED8
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001EE0
	gsDPPipeSync(), // 0x00001EE8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001EF0
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001EF8
	gsSPVertex(_ganontika_room_17_vertices_00001CB0, 5, 0), // 0x00001F00
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00001F08
	gsSP1Triangle(1, 4, 2, 0), // 0x00001F10
	gsDPPipeSync(), // 0x00001F18
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _ganontika_scene_tex_0001F780), // 0x00001F20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 5, 0), // 0x00001F28
	gsDPLoadSync(), // 0x00001F30
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001F38
	gsDPPipeSync(), // 0x00001F40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 6, 0, 0, 5, 0), // 0x00001F48
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001F50
	gsSPVertex(_ganontika_room_17_vertices_00001D00, 6, 0), // 0x00001F58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001F60
	gsSP2Triangles(2, 4, 3, 0, 5, 4, 2, 0), // 0x00001F68
	gsSPEndDisplayList(), // 0x00001F70
};

Vtx_t _ganontika_room_17_vertices_00001F78[5] = 
{
	 { -986, 210, 268, 0, 512, 1024, 113, 75, 37, 255 }, // 0x00001F78
	 { -981, 230, 259, 0, 0, 341, 113, 75, 37, 255 }, // 0x00001F88
	 { -977, 230, 273, 0, 512, 341, 197, 140, 82, 255 }, // 0x00001F98
	 { -986, 240, 268, 0, 512, 0, 113, 75, 37, 255 }, // 0x00001FA8
	 { -991, 230, 277, 0, 1024, 341, 243, 97, 0, 255 }, // 0x00001FB8
};

Vtx_t _ganontika_room_17_vertices_00001FC8[9] = 
{
	 { -979, 230, 249, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00001FC8
	 { -972, 230, 276, 0, 1024, 0, 197, 140, 82, 255 }, // 0x00001FD8
	 { -999, 230, 283, 0, 2048, 1024, 197, 140, 82, 255 }, // 0x00001FE8
	 { -972, 221, 276, 0, 1024, 1024, 255, 255, 255, 255 }, // 0x00001FF8
	 { -999, 221, 283, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00002008
	 { -999, 241, 283, 0, 2048, 0, 254, 150, 124, 255 }, // 0x00002018
	 { -972, 241, 276, 0, 1024, 0, 254, 150, 124, 255 }, // 0x00002028
	 { -979, 241, 249, 0, 0, 0, 254, 150, 124, 255 }, // 0x00002038
	 { -979, 221, 249, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00002048
};

Vtx_t _ganontika_room_17_vertices_00002058[6] = 
{
	 { -972, 241, 276, 0, 1024, 1024, 254, 150, 124, 255 }, // 0x00002058
	 { -999, 241, 283, 0, 2048, 1024, 254, 150, 124, 255 }, // 0x00002068
	 { -999, 261, 283, 0, 2048, 0, 255, 255, 255, 255 }, // 0x00002078
	 { -972, 261, 276, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00002088
	 { -979, 261, 249, 0, 0, 0, 255, 255, 255, 255 }, // 0x00002098
	 { -979, 241, 249, 0, 0, 1024, 254, 150, 124, 255 }, // 0x000020A8
};

Vtx_t _ganontika_room_17_vertices_000020B8[5] = 
{
	 { -675, 230, 909, 0, 512, 341, 197, 140, 82, 255 }, // 0x000020B8
	 { -661, 230, 906, 0, 0, 341, 113, 75, 37, 255 }, // 0x000020C8
	 { -666, 210, 914, 0, 512, 1024, 113, 75, 37, 255 }, // 0x000020D8
	 { -666, 240, 914, 0, 512, 0, 113, 75, 37, 255 }, // 0x000020E8
	 { -671, 230, 923, 0, 1024, 341, 243, 97, 0, 255 }, // 0x000020F8
};

Vtx_t _ganontika_room_17_vertices_00002108[9] = 
{
	 { -673, 230, 934, 0, 2048, 1024, 197, 140, 82, 255 }, // 0x00002108
	 { -680, 230, 906, 0, 1024, 0, 197, 140, 82, 255 }, // 0x00002118
	 { -653, 230, 899, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00002128
	 { -680, 241, 906, 0, 1024, 0, 254, 150, 124, 255 }, // 0x00002138
	 { -673, 241, 934, 0, 2048, 0, 254, 150, 124, 255 }, // 0x00002148
	 { -673, 221, 934, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00002158
	 { -680, 221, 906, 0, 1024, 1024, 255, 255, 255, 255 }, // 0x00002168
	 { -653, 221, 899, 0, 0, 1024, 255, 255, 255, 255 }, // 0x00002178
	 { -653, 241, 899, 0, 0, 0, 254, 150, 124, 255 }, // 0x00002188
};

Vtx_t _ganontika_room_17_vertices_00002198[6] = 
{
	 { -680, 261, 906, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00002198
	 { -673, 261, 934, 0, 2048, 0, 255, 255, 255, 255 }, // 0x000021A8
	 { -673, 241, 934, 0, 2048, 1024, 254, 150, 124, 255 }, // 0x000021B8
	 { -680, 241, 906, 0, 1024, 1024, 254, 150, 124, 255 }, // 0x000021C8
	 { -653, 241, 899, 0, 0, 1024, 254, 150, 124, 255 }, // 0x000021D8
	 { -653, 261, 899, 0, 0, 0, 255, 255, 255, 255 }, // 0x000021E8
};

Vtx_t _ganontika_room_17_vertices_000021F8[5] = 
{
	 { -466, 210, 568, 0, 512, 1024, 113, 75, 37, 255 }, // 0x000021F8
	 { -471, 230, 577, 0, 0, 341, 113, 75, 37, 255 }, // 0x00002208
	 { -475, 230, 563, 0, 512, 341, 197, 140, 82, 255 }, // 0x00002218
	 { -466, 240, 568, 0, 512, 0, 113, 75, 37, 255 }, // 0x00002228
	 { -461, 230, 559, 0, 1024, 341, 243, 97, 0, 255 }, // 0x00002238
};

Vtx_t _ganontika_room_17_vertices_00002248[9] = 
{
	 { -473, 230, 587, 0, 0, 1024, 197, 140, 82, 255 }, // 0x00002248
	 { -480, 230, 560, 0, 1024, 0, 197, 140, 82, 255 }, // 0x00002258
	 { -453, 230, 553, 0, 2048, 1024, 197, 140, 82, 255 }, // 0x00002268
	 { -480, 221, 560, 0, 1024, 1024, 255, 255, 255, 255 }, // 0x00002278
	 { -453, 221, 553, 0, 2048, 1024, 255, 255, 255, 255 }, // 0x00002288
	 { -453, 241, 553, 0, 2048, 0, 254, 150, 124, 255 }, // 0x00002298
	 { -480, 241, 560, 0, 1024, 0, 254, 150, 124, 255 }, // 0x000022A8
	 { -473, 241, 587, 0, 0, 0, 254, 150, 124, 255 }, // 0x000022B8
	 { -473, 221, 587, 0, 0, 1024, 255, 255, 255, 255 }, // 0x000022C8
};

Vtx_t _ganontika_room_17_vertices_000022D8[6] = 
{
	 { -480, 241, 560, 0, 1024, 1024, 254, 150, 124, 255 }, // 0x000022D8
	 { -453, 241, 553, 0, 2048, 1024, 254, 150, 124, 255 }, // 0x000022E8
	 { -453, 261, 553, 0, 2048, 0, 255, 255, 255, 255 }, // 0x000022F8
	 { -480, 261, 560, 0, 1024, 0, 255, 255, 255, 255 }, // 0x00002308
	 { -473, 261, 587, 0, 0, 0, 255, 255, 255, 255 }, // 0x00002318
	 { -473, 241, 587, 0, 0, 1024, 254, 150, 124, 255 }, // 0x00002328
};

Vtx_t _ganontika_room_17_vertices_00002338[8] = 
{
	 { -979, 210, 249, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002338
	 { -453, 210, 553, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002348
	 { -979, 261, 249, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002358
	 { -453, 261, 553, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002368
	 { -1199, 210, 630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002378
	 { -673, 210, 934, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002388
	 { -1199, 261, 630, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002398
	 { -673, 261, 934, 0, 0, 0, 0, 0, 0, 0 }, // 0x000023A8
};

Gfx _ganontika_room_17_dlist_000023B8[] =
{
	gsDPPipeSync(), // 0x000023B8
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x000023C0
	gsSPVertex(_ganontika_room_17_vertices_00002338, 8, 0), // 0x000023C8
	gsSPCullDisplayList(0, 7), // 0x000023D0
	gsDPPipeSync(), // 0x000023D8
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000023E0
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000023E8
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000023F0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00004E18), // 0x000023F8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00002400
	gsDPLoadSync(), // 0x00002408
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002410
	gsDPPipeSync(), // 0x00002418
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00002420
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002428
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002430
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00002438
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002440
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002448
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00002450
	gsSPVertex(_ganontika_room_17_vertices_00001F78, 5, 0), // 0x00002458
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0), // 0x00002460
	gsSP2Triangles(2, 4, 0, 0, 4, 2, 3, 0), // 0x00002468
	gsDPPipeSync(), // 0x00002470
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00003E18), // 0x00002478
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00002480
	gsDPLoadSync(), // 0x00002488
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002490
	gsDPPipeSync(), // 0x00002498
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x000024A0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000024A8
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000024B0
	gsSPVertex(_ganontika_room_17_vertices_00001FC8, 9, 0), // 0x000024B8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000024C0
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 3, 0), // 0x000024C8
	gsSP1Triangle(7, 3, 6, 0), // 0x000024D0
	gsDPPipeSync(), // 0x000024D8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00002E18), // 0x000024E0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x000024E8
	gsDPLoadSync(), // 0x000024F0
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000024F8
	gsDPPipeSync(), // 0x00002500
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00002508
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002510
	gsSPVertex(_ganontika_room_17_vertices_00002058, 6, 0), // 0x00002518
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002520
	gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0), // 0x00002528
	gsDPPipeSync(), // 0x00002530
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00004E18), // 0x00002538
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00002540
	gsDPLoadSync(), // 0x00002548
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002550
	gsDPPipeSync(), // 0x00002558
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00002560
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002568
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00002570
	gsSPVertex(_ganontika_room_17_vertices_000020B8, 5, 0), // 0x00002578
	gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0), // 0x00002580
	gsSP2Triangles(2, 4, 0, 0, 3, 0, 4, 0), // 0x00002588
	gsDPPipeSync(), // 0x00002590
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00003E18), // 0x00002598
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x000025A0
	gsDPLoadSync(), // 0x000025A8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000025B0
	gsDPPipeSync(), // 0x000025B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x000025C0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000025C8
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000025D0
	gsSPVertex(_ganontika_room_17_vertices_00002108, 9, 0), // 0x000025D8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x000025E0
	gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0), // 0x000025E8
	gsSP1Triangle(3, 7, 8, 0), // 0x000025F0
	gsDPPipeSync(), // 0x000025F8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00002E18), // 0x00002600
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00002608
	gsDPLoadSync(), // 0x00002610
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002618
	gsDPPipeSync(), // 0x00002620
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00002628
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002630
	gsSPVertex(_ganontika_room_17_vertices_00002198, 6, 0), // 0x00002638
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002640
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00002648
	gsDPPipeSync(), // 0x00002650
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00004E18), // 0x00002658
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0), // 0x00002660
	gsDPLoadSync(), // 0x00002668
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002670
	gsDPPipeSync(), // 0x00002678
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0), // 0x00002680
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002688
	gsSPGeometryMode(0xFF000000, 0x00000400), // 0x00002690
	gsSPVertex(_ganontika_room_17_vertices_000021F8, 5, 0), // 0x00002698
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0), // 0x000026A0
	gsSP2Triangles(2, 4, 0, 0, 4, 2, 3, 0), // 0x000026A8
	gsDPPipeSync(), // 0x000026B0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00003E18), // 0x000026B8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x000026C0
	gsDPLoadSync(), // 0x000026C8
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x000026D0
	gsDPPipeSync(), // 0x000026D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x000026E0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000026E8
	gsSPGeometryMode(0xFF000400, 0x00000000), // 0x000026F0
	gsSPVertex(_ganontika_room_17_vertices_00002248, 9, 0), // 0x000026F8
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0), // 0x00002700
	gsSP2Triangles(3, 5, 6, 0, 7, 8, 3, 0), // 0x00002708
	gsSP1Triangle(7, 3, 6, 0), // 0x00002710
	gsDPPipeSync(), // 0x00002718
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00002E18), // 0x00002720
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 2, 5, 0, 2, 6, 0), // 0x00002728
	gsDPLoadSync(), // 0x00002730
	gsDPLoadBlock(7, 0, 0, 2047, 128), // 0x00002738
	gsDPPipeSync(), // 0x00002740
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, 2, 5, 0, 2, 6, 0), // 0x00002748
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00002750
	gsSPVertex(_ganontika_room_17_vertices_000022D8, 6, 0), // 0x00002758
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00002760
	gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0), // 0x00002768
	gsSPEndDisplayList(), // 0x00002770
};

Vtx_t _ganontika_room_17_vertices_00002778[17] = 
{
	 { -747, 150, 601, 0, 500, 1024, 170, 176, 184, 255 }, // 0x00002778
	 { -826, 150, 591, 0, 1524, 3038, 234, 231, 223, 255 }, // 0x00002788
	 { -778, 150, 655, 0, 2548, 1024, 170, 176, 184, 255 }, // 0x00002798
	 { -763, 150, 542, 0, 500, 1024, 170, 176, 184, 255 }, // 0x000027A8
	 { -747, 150, 601, 0, 2548, 1024, 170, 176, 184, 255 }, // 0x000027B8
	 { -816, 150, 512, 0, 500, 1024, 170, 176, 184, 255 }, // 0x000027C8
	 { -763, 150, 542, 0, 2548, 1024, 170, 176, 184, 255 }, // 0x000027D8
	 { -875, 150, 528, 0, 500, 1024, 170, 176, 184, 255 }, // 0x000027E8
	 { -816, 150, 512, 0, 2548, 1024, 170, 176, 184, 255 }, // 0x000027F8
	 { -778, 150, 655, 0, 500, 1024, 170, 176, 184, 255 }, // 0x00002808
	 { -837, 150, 670, 0, 2548, 1024, 170, 176, 184, 255 }, // 0x00002818
	 { -837, 150, 670, 0, 500, 1024, 170, 176, 184, 255 }, // 0x00002828
	 { -890, 150, 640, 0, 2548, 1024, 170, 176, 184, 255 }, // 0x00002838
	 { -890, 150, 640, 0, 500, 1024, 170, 176, 184, 255 }, // 0x00002848
	 { -906, 150, 581, 0, 2548, 1024, 170, 176, 184, 255 }, // 0x00002858
	 { -906, 150, 581, 0, 500, 1024, 170, 176, 184, 255 }, // 0x00002868
	 { -875, 150, 528, 0, 2548, 1024, 170, 176, 184, 255 }, // 0x00002878
};

Vtx_t _ganontika_room_17_vertices_00002888[8] = 
{
	 { -853, 150, 490, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002888
	 { -725, 150, 564, 0, 0, 0, 0, 0, 0, 0 }, // 0x00002898
	 { -853, 150, 490, 0, 0, 0, 0, 0, 0, 0 }, // 0x000028A8
	 { -725, 150, 564, 0, 0, 0, 0, 0, 0, 0 }, // 0x000028B8
	 { -927, 150, 618, 0, 0, 0, 0, 0, 0, 0 }, // 0x000028C8
	 { -799, 150, 692, 0, 0, 0, 0, 0, 0, 0 }, // 0x000028D8
	 { -927, 150, 618, 0, 0, 0, 0, 0, 0, 0 }, // 0x000028E8
	 { -799, 150, 692, 0, 0, 0, 0, 0, 0, 0 }, // 0x000028F8
};

Gfx _ganontika_room_17_dlist_00002908[] =
{
	gsDPPipeSync(), // 0x00002908
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00002910
	gsSPVertex(_ganontika_room_17_vertices_00002888, 8, 0), // 0x00002918
	gsSPCullDisplayList(0, 7), // 0x00002920
	gsDPPipeSync(), // 0x00002928
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00002930
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00002938
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00002940
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _ganontika_room_17_tex_00006618), // 0x00002948
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00002950
	gsDPLoadSync(), // 0x00002958
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00002960
	gsDPPipeSync(), // 0x00002968
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00002970
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00002978
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00002980
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112D58), // 0x00002988
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00002990
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00002998
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000029A0
	gsSPVertex(_ganontika_room_17_vertices_00002778, 17, 0), // 0x000029A8
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0), // 0x000029B0
	gsSP2Triangles(5, 1, 6, 0, 7, 1, 8, 0), // 0x000029B8
	gsSP2Triangles(9, 1, 10, 0, 11, 1, 12, 0), // 0x000029C0
	gsSP2Triangles(13, 1, 14, 0, 15, 1, 16, 0), // 0x000029C8
	gsSPEndDisplayList(), // 0x000029D0
};

static u8 unaccounted29D8[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0x30, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0x48, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0xB8, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x23, 0xB8, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x29, 0x08, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _ganontika_room_17_tex_00002A18[] = 
{
	0x2C2C09093B3B3B3B, 0x3B2C182516161675, 0x5B422025233B233B, 0x2323383B3B3B0938,  // 0x00002A18 
	0x000009003B3B233B, 0x3B0E061010101016, 0x0D0D0D103B003B3B, 0x0909093B0009093B,  // 0x00002A38 
	0x0C060C0606060606, 0x181818180C0C080C, 0x080C10063B180106, 0x0601060C06060601,  // 0x00002A58 
	0x252513251310100C, 0x08103B061010251A, 0x25420D0C230E0C13, 0x1025251313251313,  // 0x00002A78 
	0x1616422516202020, 0x20251806100C1B25, 0x420D3A0F00082520, 0x4220162016424220,  // 0x00002A98 
	0x200D422016202020, 0x0D200F06183B1806, 0x063B01060610160D, 0x200D162525252510,  // 0x00002AB8 
	0x18060C06060C060C, 0x0C06180E00181016, 0x42063B3B0E18010E, 0x0618180606060C06,  // 0x00002AD8 
	0x0610250825250C25, 0x250C251006061B20, 0x0D06060C06102506, 0x1610062510062525,  // 0x00002AF8 
	0x10428B130D0D130D, 0x8B258B200C0C100D, 0x0D080F10100D0D10, 0x0D16100D2508578B,  // 0x00002B18 
	0x0C250D0825250820, 0x200816250601108B, 0x33010C1A0C252008, 0x25100C2525082020,  // 0x00002B38 
	0x1806100610100C25, 0x2008100C1801108B, 0x33060C0C180C0C18, 0x1006060C0C060F08,  // 0x00002B58 
	0x0909140900002309, 0x0000140900181033, 0xA301003B233B0900, 0x3B3B000923092300,  // 0x00002B78 
	0x0714496969496969, 0x4949494909060F8B, 0x3301070714146949, 0x4949694969491400,  // 0x00002B98 
	0x0756140007090914, 0x090914491406108B, 0x8B18140714070709, 0x0907091407141707,  // 0x00002BB8 
	0x0303030300170000, 0x0300071469181B57, 0x0D00690700001703, 0x0702000303070244,  // 0x00002BD8 
	0x0303170003030202, 0x0203000949001B20, 0x25010744021E0317, 0x0717020202140702,  // 0x00002BF8 
	0x1417140300000203, 0x0303000769091020, 0x2518071700070707, 0x0756000007141414,  // 0x00002C18 
	0x1407170714140914, 0x1414141469140125, 0x0869691414070756, 0x1707070707071414,  // 0x00002C38 
	0x311E02070756037E, 0x1E1E1E0307093B0C, 0x3B00040417033185, 0x3D1E853D1E3D1E15,  // 0x00002C58 
	0x0402020209030703, 0x02021E0202140000, 0x0003173D1E561502, 0x0204020204010202,  // 0x00002C78 
	0x17027E02151E0304, 0x02041E0202000717, 0x0303031E44563104, 0x0203040203030303,  // 0x00002C98 
	0x02021E030231032E, 0x0244020203070709, 0x0044020202070402, 0x0303020303030302,  // 0x00002CB8 
	0x02311E1E3D3D0715, 0x0203030300070907, 0x03021E1744143103, 0x0303030303030302,  // 0x00002CD8 
	0x020204021E3D0704, 0x4403030303170003, 0x0202024407140402, 0x0303020303030302,  // 0x00002CF8 
	0x02020204031E0704, 0x0303030303030003, 0x0202441717143D03, 0x0302030302031703,  // 0x00002D18 
	0x0404021E1E3D0703, 0x0003030303000303, 0x0202030407140403, 0x0203030203031703,  // 0x00002D38 
	0x7E04041E021E0702, 0x0003030303031703, 0x0202021707070203, 0x0303030303030707,  // 0x00002D58 
	0x04041E04041E0702, 0x0303030303000302, 0x4404031707070202, 0x0203020203000717,  // 0x00002D78 
	0x020203037E030702, 0x4403020002001700, 0x0303021703070403, 0x0203030203170707,  // 0x00002D98 
	0x0202031E04020902, 0x0302030203021717, 0x1717020303070203, 0x0203030203171402,  // 0x00002DB8 
	0x030303027E030702, 0x4403020002001700, 0x0303021703070403, 0x0203030203170707,  // 0x00002DD8 
	0x5656077D00071407, 0x0756560756071409, 0x0909070707140707, 0x0707070707091400,  // 0x00002DF8 
};

u64 _ganontika_room_17_tex_00002E18[] = 
{
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002E18 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002E38 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002E58 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002E78 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002E98 
	0x2840200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200050C22000,  // 0x00002EB8 
	0x2000200028402000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002ED8 
	0x20002000200071C4, 0x2840200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002EF8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002F18 
	0x40C0200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002F38 
	0x2000200040C02000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002F58 
	0x2000200020002000, 0x40C0200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002F78 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002F98 
	0x40C2200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002FB8 
	0x2000200040C22000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002FD8 
	0x2000200020002000, 0x40C2200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00002FF8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003018 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000E40820002000,  // 0x00003038 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003058 
	0x2000200020002000, 0xE44A200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003078 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003098 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000030B8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000030D8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000030F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003118 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003138 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003158 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003178 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003198 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000031B8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000031D8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000031F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003218 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003238 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003258 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003278 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003298 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000032B8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000032D8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000032F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003318 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003338 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003358 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003378 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003398 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000033B8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000033D8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000033F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003418 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003438 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003458 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003478 
	0x2000200020002000, 0x2000200020002000, 0x200020002000ADED, 0xA5EDA5ED9DEDA62D,  // 0x00003498 
	0x9DED200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000ADEDA5EDA5ED,  // 0x000034B8 
	0x9DEDA62D9DED2000, 0x2000200020002000, 0x2000200020002000, 0x200020002000ADED,  // 0x000034D8 
	0xA5EDA5ED9DEDA62D, 0x9DED200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000034F8 
	0x2000200020002000, 0x2000200020002000, 0x200020002000ADEF, 0xB673B6B5AEB5BEF7,  // 0x00003518 
	0xAE31200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000ADEFB673B6B5,  // 0x00003538 
	0xAEB5BEF7AE312000, 0x2000200020002000, 0x2000200020002000, 0x200020002000ADEF,  // 0x00003558 
	0xB673B6B5AEB5BEF7, 0xAE31200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003578 
	0x2000200020002000, 0x2000200020002000, 0x200020002000A5AB, 0xAE31BEF7BEF7BEB7,  // 0x00003598 
	0xAE2F200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000A5ABAE31BEF7,  // 0x000035B8 
	0xBEF7BEB7AE2F2000, 0x2000200020002000, 0x2000200020002000, 0x200020002000A5AB,  // 0x000035D8 
	0xAE31BEF7BEF7BEB7, 0xAE2F200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000035F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020009527, 0xA5EDBEB5C6B5AE2F,  // 0x00003618 
	0xA5AB200020002000, 0x2000200020002000, 0x2000200020002000, 0x20009527A5EDBEB5,  // 0x00003638 
	0xC6B5AE2FA5AB2000, 0x2000200020002000, 0x2000200020002000, 0x2000200020009527,  // 0x00003658 
	0xA5EDBEB5C6B5AE2F, 0xA5AB200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003678 
	0x2000200020002000, 0x2000200020002000, 0x2000200020008CE3, 0x8D259DABAE2FA5AB,  // 0x00003698 
	0x9D27200020002000, 0x2000200020002000, 0x2000200020002000, 0x20008CE38D259DAB,  // 0x000036B8 
	0xAE2FA5AB9D272000, 0x2000200020002000, 0x2000200020002000, 0x2000200020008CE3,  // 0x000036D8 
	0x8D259DABAE2FA5AB, 0x9D27200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000036F8 
	0x2000200020002000, 0x2000200020002000, 0x20002000200084E3, 0x9569BE73CF39BEB5,  // 0x00003718 
	0xADED200020002000, 0x2000200020002000, 0x2000200020002000, 0x200084E39569BE73,  // 0x00003738 
	0xCF39BEB5ADED2000, 0x2000200020002000, 0x2000200020002000, 0x20002000200084E3,  // 0x00003758 
	0x9569BE73CF39BEB5, 0xADED200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003778 
	0x2000200020002000, 0x2000200020002000, 0x2000200020009D67, 0xA5ABBEB5D73BC6F7,  // 0x00003798 
	0xADED200020002000, 0x2000200020002000, 0x2000200020002000, 0x20009D67A5ABBEB5,  // 0x000037B8 
	0xD73BC6F7ADED2000, 0x2000200020002000, 0x2000200020002000, 0x2000200020009D67,  // 0x000037D8 
	0xA5ABBEB5D73BC6F7, 0xADED200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000037F8 
	0x2000200020002000, 0x2000200020002000, 0x200020002000A569, 0xADEDCEB7DF7DD6F9,  // 0x00003818 
	0xB5EF200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000A569ADEDCEB7,  // 0x00003838 
	0xDF7DD6F9B5EF2000, 0x2000200020002000, 0x2000200020002000, 0x200020002000A569,  // 0x00003858 
	0xADEDCEB7DF7DD6F9, 0xB5EF200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003878 
	0x2000200020002000, 0x2000200020002000, 0x200020002000AD6B, 0xB5EFD6F9E7BFDF3B,  // 0x00003898 
	0xB62F200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000AD6BB5EFD6F9,  // 0x000038B8 
	0xE7BFDF3BB62F2000, 0x2000200020002000, 0x2000200020002000, 0x200020002000AD6B,  // 0x000038D8 
	0xB5EFD6F9E7BFDF3B, 0xB62F200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000038F8 
	0x2000200020002000, 0x2000200020002000, 0x200020002000A527, 0xBE31DF7DE7BFD6F9,  // 0x00003918 
	0xADAB200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000A527BE31DF7D,  // 0x00003938 
	0xE7BFD6F9ADAB2000, 0x2000200020002000, 0x2000200020002000, 0x200020002000A527,  // 0x00003958 
	0xBE31DF7DE7BFD6F9, 0xADAB200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003978 
	0x2000200020002000, 0x2000200020002000, 0x200020002000A527, 0xBE31DF7DE7BFD6F9,  // 0x00003998 
	0xAD69200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000A527BE31DF7D,  // 0x000039B8 
	0xE7BFD6F9AD692000, 0x2000200020002000, 0x2000200020002000, 0x200020002000A527,  // 0x000039D8 
	0xBE31DF7DE7BFD6F9, 0xAD69200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000039F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020009CE5, 0xBDEFDF3DE77FCEB7,  // 0x00003A18 
	0xA569200020002000, 0x2000200020002000, 0x2000200020002000, 0x20009CE5BDEFDF3D,  // 0x00003A38 
	0xE77FCEB7A5692000, 0x2000200020002000, 0x2000200020002000, 0x2000200020009CE5,  // 0x00003A58 
	0xBDEFDF3DE77FCEB7, 0xA569200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003A78 
	0x2000200020002000, 0x2000200020002000, 0x20002000200094A3, 0xB5EFDF7DE7BFCEB7,  // 0x00003A98 
	0xA527200020002000, 0x2000200020002000, 0x2000200020002000, 0x200094A3B5EFDF7D,  // 0x00003AB8 
	0xE7BFCEB7A5272000, 0x2000200020002000, 0x2000200020002000, 0x20002000200094A3,  // 0x00003AD8 
	0xB5EFDF7DE7BFCEB7, 0xA527200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003AF8 
	0x2000200020002000, 0x2000200020002000, 0x20002000200094A3, 0xADADD6F9DF7DC673,  // 0x00003B18 
	0x94E5200020002000, 0x2000200020002000, 0x2000200020002000, 0x200094A3ADADD6F9,  // 0x00003B38 
	0xDF7DC67394E52000, 0x2000200020002000, 0x2000200020002000, 0x20002000200094A3,  // 0x00003B58 
	0xADADD6F9DF7DC673, 0x94E5200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003B78 
	0x2000200020002000, 0x2000200020002000, 0x200020002000845F, 0xA569D6F9DF3BB5EF,  // 0x00003B98 
	0x94E5200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000845FA569D6F9,  // 0x00003BB8 
	0xDF3BB5EF94E52000, 0x2000200020002000, 0x2000200020002000, 0x200020002000845F,  // 0x00003BD8 
	0xA569D6F9DF3BB5EF, 0x94E5200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003BF8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020007C1D, 0x9D27CEB7DF3BADED,  // 0x00003C18 
	0x94E3200020002000, 0x2000200020002000, 0x2000200020002000, 0x20007C1D9D27CEB7,  // 0x00003C38 
	0xDF3BADED94E32000, 0x2000200020002000, 0x2000200020002000, 0x2000200020007C1D,  // 0x00003C58 
	0x9D27CEB7DF3BADED, 0x94E3200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003C78 
	0x2000200020002000, 0x2000200020002000, 0x2000200020007BDB, 0x9CE5CEB5DF3BADAB,  // 0x00003C98 
	0x8CA3200020002000, 0x2000200020002000, 0x2000200020002000, 0x20007BDB9CE5CEB5,  // 0x00003CB8 
	0xDF3BADAB8CA32000, 0x2000200020002000, 0x2000200020002000, 0x2000200020007BDB,  // 0x00003CD8 
	0x9CE5CEB5DF3BADAB, 0x8CA3200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003CF8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020007C1D, 0x9D27CEB7DF3BADED,  // 0x00003D18 
	0x94E3200020002000, 0x2000200020002000, 0x2000200020002000, 0x20007C1D9D27CEB7,  // 0x00003D38 
	0xDF3BADED94E32000, 0x2000200020002000, 0x2000200020002000, 0x2000200020007C1D,  // 0x00003D58 
	0x9D27CEB7DF3BADED, 0x94E3200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003D78 
	0x2000200020002000, 0x2000200020002000, 0x2000200020007BDB, 0x9CE5CEB5DF3BADAB,  // 0x00003D98 
	0x8CA3200020002000, 0x2000200020002000, 0x2000200020002000, 0x20007BDB9CE5CEB5,  // 0x00003DB8 
	0xDF3BADAB8CA32000, 0x2000200020002000, 0x2000200020002000, 0x2000200020007BDB,  // 0x00003DD8 
	0x9CE5CEB5DF3BADAB, 0x8CA3200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003DF8 
};

u64 _ganontika_room_17_tex_00003E18[] = 
{
	0x2000200020002000, 0x2000200020002000, 0x20008B09B40BB40B, 0xB40BB40BB40BB40B,  // 0x00003E18 
	0xB40BB40B9B892000, 0x2000200020002000, 0x2000200020008B09, 0xB40BB40BB40BB40B,  // 0x00003E38 
	0xB40BB40BB40BB40B, 0x9B89200020002000, 0x2000200020002000, 0x20009B89B40BB40B,  // 0x00003E58 
	0xB40BB40BB40BB40B, 0xB40BB40B8B092000, 0x2000200020002000, 0x2000200020002000,  // 0x00003E78 
	0x2000200020002000, 0x2000200020002000, 0x200020008B09B40B, 0xB40BB40BB40BB40B,  // 0x00003E98 
	0xB40B9B8920002000, 0x2000200020002000, 0x2000200020002000, 0x9B89B40BB40BB40B,  // 0x00003EB8 
	0xB40BB40BB40B9B89, 0x2000200020002000, 0x2000200020002000, 0x200020009B89B40B,  // 0x00003ED8 
	0xB40BB40BB40BB40B, 0xB40B8B0920002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003EF8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020008B09, 0x7AC78B098B098B09,  // 0x00003F18 
	0x9B89200020002000, 0x2000200020002000, 0x2000200020002000, 0x20008B0972877287,  // 0x00003F38 
	0x72876A478B092000, 0x2000200020002000, 0x2000200020002000, 0x2000200020009B89,  // 0x00003F58 
	0x8B098B098B097AC7, 0x8B09200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003F78 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x72877AC77AC76A47,  // 0x00003F98 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x200020007AC79B89,  // 0x00003FB8 
	0x9B897AC720002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003FD8 
	0x6A477AC77AC77287, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00003FF8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x72879B899B897287,  // 0x00004018 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200062057AC7,  // 0x00004038 
	0x7AC7728720002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004058 
	0x72879B899B897287, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004078 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x6A478B098B096A47,  // 0x00004098 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x200020007287B40B,  // 0x000040B8 
	0x9B897AC720002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000040D8 
	0x6A478B098B096A47, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000040F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x7AC7B40BB40B7AC7,  // 0x00004118 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x200020007AC7B40B,  // 0x00004138 
	0xB40B7AC720002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004158 
	0x7AC7B40BB40B7AC7, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004178 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x7AC7B40BB40B7AC7,  // 0x00004198 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x200020009B499B89,  // 0x000041B8 
	0xB3CB8B0920002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000041D8 
	0x7AC7B40BB40B7AC7, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000041F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x7AC7B40BB40B7AC7,  // 0x00004218 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200093499B89,  // 0x00004238 
	0xABCB8B0920002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004258 
	0x7AC7B40BB40B7AC7, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004278 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x8309ABCBB40B8B09,  // 0x00004298 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200093499B89,  // 0x000042B8 
	0xABCB8B0920002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000042D8 
	0x8B09B40BABCB8309, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000042F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x82C7A3C9ABCB9B89,  // 0x00004318 
	0x8B09200020002000, 0x2000200020002000, 0x2000200020002000, 0x20002000A389B40B,  // 0x00004338 
	0xABC9934920002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020008B09,  // 0x00004358 
	0x9B89ABCBA3C982C7, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004378 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x82C7A389ABC9B40B,  // 0x00004398 
	0x93498B4920002000, 0x2000200020002000, 0x2000200020002000, 0x200020009B49B40B,  // 0x000043B8 
	0xABC9A38920002000, 0x2000200020002000, 0x2000200020002000, 0x200020008B499349,  // 0x000043D8 
	0xB40BABC9A38982C7, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000043F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x49859349ABC9ABC9,  // 0x00004418 
	0x934982C751836A47, 0x6A4762057A877A87, 0x82C982C982C97285, 0x724562059B49C44B,  // 0x00004438 
	0xB40B9B8962056A45, 0x72456A0372457A87, 0x82C77AC76A036A45, 0x728759837A859307,  // 0x00004458 
	0x8B07620361C34143, 0x2000A34420002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004478 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x494362079B89ABC9,  // 0x00004498 
	0xABC9A38962056A47, 0x934982C7ABC9A389, 0xBC4DABCB9B058285, 0x82856205BC0BCC8D,  // 0x000044B8 
	0xCC8BC44B72879B47, 0x9307A387ABC9B40B, 0xA387AB898B0982C7, 0x72477245A3899B47,  // 0x000044D8 
	0x72456A45518338C1, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000044F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x204030C172878B07,  // 0x00004518 
	0xA3899B4762056A05, 0xAB87B3C9BC09BC0B, 0xC44BC44BC48DBC09, 0xBC098B07ABC9CC8D,  // 0x00004538 
	0xCC8DCC8D8B49CC8B, 0xC44BC44BC449BC09, 0xBC4BBC4BB3C7B3C9, 0x82C77245930782C5,  // 0x00004558 
	0x724559C330812840, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004578 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200049436A45,  // 0x00004598 
	0x82C76A0549436A45, 0x9B05A387ABC9B3C9, 0xB3C9BC0BC48FB3C9, 0xB3C77A8782C7BC4B,  // 0x000045B8 
	0xBC4B8307ABCBBC4B, 0xBC0BBC09B3C9AB87, 0xABC9ABC99B459B47, 0x8AC751836A456A03,  // 0x000045D8 
	0x4943410320002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000045F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x20002000200038C3,  // 0x00004618 
	0x51C5414349836A05, 0x724582C782C582C5, 0x930793499B8B8B07, 0x8AC582C782857A85,  // 0x00004638 
	0x7A85724593078B07, 0x8AC782857A857A85, 0x7A857A856A456A45, 0x6A45518349834983,  // 0x00004658 
	0x2841200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004678 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004698 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000046B8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000046D8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000046F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004718 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004738 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004758 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004778 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004798 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000047B8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000047D8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000047F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004818 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004838 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004858 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004878 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004898 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000048B8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000048D8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000048F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004918 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004938 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004958 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004978 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004998 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000049B8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000049D8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x000049F8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004A18 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004A38 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004A58 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004A78 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004A98 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004AB8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004AD8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004AF8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004B18 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004B38 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004B58 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004B78 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004B98 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004BB8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004BD8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004BF8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004C18 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004C38 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004C58 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004C78 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004C98 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004CB8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004CD8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004CF8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004D18 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004D38 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004D58 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004D78 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004D98 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004DB8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004DD8 
	0x2000200020002000, 0x2000200020002000, 0x2000200020002000, 0x2000200020002000,  // 0x00004DF8 
};

u64 _ganontika_room_17_tex_00004E18[] = 
{
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00004E18 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00004E38 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00004E58 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00004E78 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00004E98 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00004EB8 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C0A389A389A389,  // 0x00004ED8 
	0xA389A389A38948C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00004EF8 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C0A389, 0xABC9B409BC49BC49,  // 0x00004F18 
	0xBC49BC49ABC9A389, 0xA38948C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00004F38 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C0A389ABC9BC49, 0xBC49BC49B409A389,  // 0x00004F58 
	0xA389A389ABC9ABC9, 0xB409ABCBA38948C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00004F78 
	0x48C048C048C048C0, 0x48C048C048C0A389, 0xABC9BC49BC49BC49, 0x8B078B077A877A87,  // 0x00004F98 
	0x7A877A877A877A87, 0xABC9BC0BBC4BA389, 0xA38948C048C048C0, 0x48C048C048C048C0,  // 0x00004FB8 
	0x48C048C048C048C0, 0x48C048C0A389A389, 0xBC49BC49B4098B07, 0x8B07A389ABC9BC49,  // 0x00004FD8 
	0xBC49BC49BC497A87, 0x7A87B409BC4BC489, 0xC489A38948C048C0, 0x48C048C048C048C0,  // 0x00004FF8 
	0x48C048C048C048C0, 0x48C0A389A389BC49, 0xC489B409A3897A87, 0xBC49B409C489C449,  // 0x00005018 
	0xC449C489CC89A389, 0x7A87B409ABCBC44B, 0xC489B409ABC948C0, 0x48C048C048C048C0,  // 0x00005038 
	0x48C048C048C048C0, 0x7A87A389BC49BC49, 0xBC49ABC9A3897A87, 0xBC49C489BC49B409,  // 0x00005058 
	0xBC09C48BD4C9C489, 0x7A87A389ABCBBC4B, 0xDD0BC489B4097A87, 0x48C048C048C048C0,  // 0x00005078 
	0x48C048C048C048C0, 0x7A87A389C489BC49, 0xC489ABC9A3897A87, 0xBC49CC89BC49B409,  // 0x00005098 
	0xB409C44BDD0BBC49, 0x7A87A389BC4BC48B, 0xD50BCCC9BC497A87, 0x48C048C048C048C0,  // 0x000050B8 
	0x48C048C048C048C0, 0x7A87A389C489C489, 0xBC49B4099B497A87, 0xBC49C489BC49BC49,  // 0x000050D8 
	0xBC49C489D4C9BC49, 0x7A87A389ABC9BC4B, 0xD509CCC9A3897A87, 0x48C048C048C048C0,  // 0x000050F8 
	0x48C048C048C048C0, 0x48C07A87ABC9C489, 0xBC49BC4993097A87, 0xABC9C489C489C489,  // 0x00005118 
	0xC489C489C489BC49, 0x7A87A389B409C48B, 0xCCC9C4897A8748C0, 0x48C048C048C048C0,  // 0x00005138 
	0x48C048C048C048C0, 0x48C07A87A389B409, 0xB409B4099B877A87, 0xA389ABC98B077A87,  // 0x00005158 
	0x7A878B07BC89A389, 0x7A87A387B409CCC9, 0xCCC9A3897A8748C0, 0x48C048C048C048C0,  // 0x00005178 
	0x48C048C048C048C0, 0x48C048C07A87A389, 0xA38993498AC761C5, 0x7A877A877A87A389,  // 0x00005198 
	0xB4097A877A877A87, 0x61C5ABC7BC49C449, 0xBC497A8748C048C0, 0x48C048C048C048C0,  // 0x000051B8 
	0x48C048C048C048C0, 0x48C048C048C07A87, 0xA3899349934961C5, 0x598559858B07B40B,  // 0x000051D8 
	0xBC4B82C759855183, 0x61C5B447B409B409, 0x7A8748C048C048C0, 0x48C048C048C048C0,  // 0x000051F8 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x7A87A38982C76A05, 0x61C561C5ABC9C48B,  // 0x00005218 
	0xD4CBB40B61C55985, 0x59859347BC497A87, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00005238 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C07A8761C57247, 0x724761C5B40BBC0B,  // 0x00005258 
	0xD4CBBC0B61C57245, 0x7A8561C57A8748C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00005278 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C061C58B07, 0x7A876A05A389BC4B,  // 0x00005298 
	0xDD0BC44B6A0582C7, 0x934761C548C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x000052B8 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C06A059B49, 0x8AC77A87B40BD4CB,  // 0x000052D8 
	0xE54BBC4B72479349, 0xBC496A0548C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x000052F8 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C07A87A389, 0x93097A87A389BC4B,  // 0x00005318 
	0xDD0BC44B7A879B89, 0xBC497A8748C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00005338 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C07A87A389, 0x7A877A87A389BC4B,  // 0x00005358 
	0xDD0BBC0B7A877A87, 0xA3897A8748C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00005378 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C07A877A87, 0x48C07A87A389C44B,  // 0x00005398 
	0xD4C9A3897A8748C0, 0x7A877A8748C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x000053B8 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C07A8748C0, 0x48C07A87A389BC4B,  // 0x000053D8 
	0xCC89A3897A8748C0, 0x48C07A8748C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x000053F8 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C07A877A87B40B,  // 0x00005418 
	0xC4497A877A8748C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00005438 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C07A87A389,  // 0x00005458 
	0xBC497A8748C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00005478 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C07A87A389,  // 0x00005498 
	0xBC497A8748C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x000054B8 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C07A87A389,  // 0x000054D8 
	0xB4097A8748C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x000054F8 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C08B07,  // 0x00005518 
	0x9B4748C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00005538 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C07A87,  // 0x00005558 
	0x7A8748C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00005578 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x00005598 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x000055B8 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x000055D8 
	0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0, 0x48C048C048C048C0,  // 0x000055F8 
};

u64 _ganontika_room_17_tex_00005618[] = 
{
	0x4A4D41C941894A0B, 0x41CB731141895A4F, 0x5A8F6AD16B1762D3, 0x62D1524D49C94189,  // 0x00005618 
	0x620D728D624D524F, 0x62937357418941C9, 0x41C9418949CB5A4F, 0x41C949CB4A0D528F,  // 0x00005638 
	0x520D5A4D524D520B, 0x49CB62D141894189, 0x49C95A0D62D5520B, 0x624B624B624B51CB,  // 0x00005658 
	0x51CB624D51CB51CB, 0x524D739759C951CB, 0x524F61C949C9628F, 0x520959C95A0B4A0D,  // 0x00005678 
	0x6B116AD362915A8F, 0x524F631539893949, 0x41475A0B63135A4D, 0x520B51CB49CB49C9,  // 0x00005698 
	0x418941C949C94189, 0x418B62D16B136B13, 0x735762D162916B13, 0x6B55629162D15A91,  // 0x000056B8 
	0x418B398741894149, 0x4149524F31474189, 0x394751CB5313520B, 0x5A0B51C939493949,  // 0x000056D8 
	0x3149418939874189, 0x5A0B6315520B3949, 0x51C94989394949C9, 0x49894147498941C9,  // 0x000056F8 
	0x4A0D41C9418B3989, 0x3987524F29473949, 0x4989520B62D349CB, 0x51CB498941893947,  // 0x00005718 
	0x39894187394949C9, 0x5A0F6B1752094189, 0x49C94949418949C9, 0x4949414741494189,  // 0x00005738 
	0x498949C949C951CB, 0x41894A4F31053149, 0x4A0B524D73595A0F, 0x49CB498741473107,  // 0x00005758 
	0x31494147410949CB, 0x528F6B1549C93989, 0x3989518B41893989, 0x518B49C941C9420B,  // 0x00005778 
	0x49C949C9418749C9, 0x4187524F39493947, 0x39894A0973995A0D, 0x51CB418941893947,  // 0x00005798 
	0x3149414741893907, 0x5A516B97520D4A0D, 0x394949894A0B4189, 0x49894189520D418B,  // 0x000057B8 
	0x4189520941894147, 0x41495A8F41C94A0B, 0x49CB41CB631549CB, 0x49CB498B41894947,  // 0x000057D8 
	0x418B418741893949, 0x520B6B595A0D49CB, 0x3949498949CB4149, 0x4149390739C94149,  // 0x000057F8 
	0x418951CD41874989, 0x3947524F49CB420B, 0x39894A0B631351CB, 0x4989414741894989,  // 0x00005818 
	0x41CB394931473147, 0x520D6B15628F59CD, 0x4149418951CB4189, 0x418B41474A0B4187,  // 0x00005838 
	0x41CB49C941894147, 0x39475A4F41C9418B, 0x49CB41CD62D351CB, 0x4989414739473949,  // 0x00005858 
	0x41CB318939493909, 0x520D62D551CB51CD, 0x414B394751CB4989, 0x314741894A0B520B,  // 0x00005878 
	0x4989518B498B4147, 0x39075A4D4189498B, 0x3947418941CD51CB, 0x4149418941473987,  // 0x00005898 
	0x4989418941893989, 0x51C95AD3520B49CB, 0x4989418949CB4989, 0x398941C9414749CB,  // 0x000058B8 
	0x49CD498B41474149, 0x39075A8D41894147, 0x418951CB520F498B, 0x4149394939473949,  // 0x000058D8 
	0x49C9310931493947, 0x51C962D3520D49CB, 0x3947398749CB4147, 0x39873907414941CB,  // 0x000058F8 
	0x3949498939894989, 0x41875A8F5A4F4A0D, 0x524F524F5AD13989, 0x520D49C941CB49CB,  // 0x00005918 
	0x4A0B524B5A4F520B, 0x625162D349CB49CB, 0x3949418949CB3949, 0x4189398941494189,  // 0x00005938 
	0x49CB49CB51C94189, 0x418962D56B596B15, 0x6B176B5773597359, 0x6B175A935A4F528F,  // 0x00005958 
	0x629162D56B176B59, 0x6B596B5949C949CB, 0x4149418949CB4149, 0x4189414B414B41C9,  // 0x00005978 
	0x41CB49C949CB4A0B, 0x51CB5A8F62D55A8F, 0x520D498B498B518B, 0x518B418962D36209,  // 0x00005998 
	0x6A4959CB498B524F, 0x5A9173114A0D49CB, 0x394B498949CB394B, 0x498941C94189418B,  // 0x000059B8 
	0x41CB41CB49CB4A0D, 0x4A0D5A4D62D5520B, 0x41894989498951CB, 0x51CB59CB6B155A0B,  // 0x000059D8 
	0x520B5A0B49C951CB, 0x49CB735162916291, 0x5A4D520B5A4F5A4D, 0x5A0D51CB49CB49CB,  // 0x000059F8 
	0x6B196B596B156B15, 0x62D5498962D551CB, 0x51CB520949893949, 0x498B418963154187,  // 0x00005A18 
	0x4987414951C941C9, 0x4A0D6B596B596B59, 0x6B1762D562936B17, 0x62D56B5962D36B59,  // 0x00005A38 
	0x51CB51CB520B520B, 0x520D49896315520B, 0x5A4D498941474189, 0x4189394762D34149,  // 0x00005A58 
	0x4147414941494189, 0x5A4F73115A0B628D, 0x5A0B5A0B520B520B, 0x39494989520B520B,  // 0x00005A78 
	0x520B520B520D520B, 0x51CB41895A4F520B, 0x51CB498941874147, 0x498B41895A914987,  // 0x00005A98 
	0x4147414749895209, 0x62D373515A4D520B, 0x520B51CB49C94189, 0x4189418949CB5A4F,  // 0x00005AB8 
	0x418951C949C959C7, 0x4989418962D36B15, 0x62D35A9362915A91, 0x5A91520F5A915A91,  // 0x00005AD8 
	0x520F62D362D36291, 0x631573115A0B4989, 0x4189418939494189, 0x41474949520B62D5,  // 0x00005AF8 
	0x4189414741894189, 0x4987394762915A4F, 0x520B49CB41895189, 0x51C7414741474189,  // 0x00005B18 
	0x394749894987520B, 0x524D628D5A0B4187, 0x4187414949893907, 0x4149418941895A91,  // 0x00005B38 
	0x49C9418941874187, 0x418741CB6AD3520D, 0x49CB49CB49894987, 0x3947414741494187,  // 0x00005B58 
	0x498B41C7498949C9, 0x520D624B41893987, 0x3949418939494149, 0x3989414741895A93,  // 0x00005B78 
	0x49C9498941893947, 0x3907520B7315520B, 0x498B49CB49894189, 0x4147418941894989,  // 0x00005B98 
	0x498B49C951CB41CB, 0x520B624D41493947, 0x4149394749474147, 0x4987414949CB5A93,  // 0x00005BB8 
	0x4A0B498749873947, 0x3987520D7B99520B, 0x418941CB418949C9, 0x4189498B498B518B,  // 0x00005BD8 
	0x41894189498B49CB, 0x49CB6A4D39494189, 0x4147414941874989, 0x498B414741895A91,  // 0x00005BF8 
	0x5A0B498941894189, 0x398749CB7399520B, 0x4189498B498D41C9, 0x418941494189498B,  // 0x00005C18 
	0x49C94149418751C9, 0x51CB5A4B49894189, 0x4189414941894189, 0x4187418949CD6293,  // 0x00005C38 
	0x6A8D49895A0B5989, 0x51C9520B7315520D, 0x498B49CB49894189, 0x41474189414B498B,  // 0x00005C58 
	0x498B49C951CB41CB, 0x49CB49C94189498B, 0x4949498941073987, 0x41494189520B62D3,  // 0x00005C78 
	0x51CB498749895189, 0x41C9520D7B99520B, 0x418941CB418949C9, 0x4189498B498B518B,  // 0x00005C98 
	0x41894189498949CB, 0x49CB5A9141CB4189, 0x418B41CB49CD49C9, 0x414749C9418B5A93,  // 0x00005CB8 
	0x4187414741474149, 0x418B49CB7399520B, 0x3949498B498D41CB, 0x418941494189498B,  // 0x00005CD8 
	0x49C94149418751C9, 0x51CB62D349CB414B, 0x398949CB4A0B418D, 0x4989418B49895A93,  // 0x00005CF8 
	0x418941CB41893989, 0x418949CB739B520D, 0x418949CB4189418B, 0x49894189394961CB,  // 0x00005D18 
	0x41874989414749C9, 0x49C96B576A9562D1, 0x52535A915A9162D3, 0x5A4F629362D56B59,  // 0x00005D38 
	0x4189414741894989, 0x414951CB7399520D, 0x4189418941894189, 0x418B4189398951CB,  // 0x00005D58 
	0x49894989418949C9, 0x49CB629149C949C9, 0x49C951C9498749C9, 0x51C9498741895A4F,  // 0x00005D78 
	0x398949CB4A0F49CF, 0x49CB4A0B6B595A0D, 0x4147518B39495147, 0x498B398741894189,  // 0x00005D98 
	0x418B4149418B49CB, 0x5A4F5A9149C94987, 0x5209414741C95209, 0x414741C9518972D5,  // 0x00005DB8 
	0x520D5A4F628F6291, 0x5A9362D16B595A0D, 0x4189398951C74989, 0x418939094189498B,  // 0x00005DD8 
	0x418941CB49CD524F, 0x62D362D349C951C9, 0x5189398939495189, 0x39893949394962D3,  // 0x00005DF8 
	0x735973997BDB6B57, 0x7357735762D36291, 0x62D36AD36B156B15, 0x631762D35AD36B15,  // 0x00005E18 
	0x6B17735973597359, 0x7B9962D3520B4A0B, 0x4189418941C93909, 0x4189418941896293,  // 0x00005E38 
	0x62D35A0B524F5A09, 0x4A0B628D520F5A0D, 0x520B520D5A4F524F, 0x5A9163155A4D5A4F,  // 0x00005E58 
	0x520B624F624D624D, 0x5A0B5A9149C94187, 0x418928C539893947, 0x4187310739896293,  // 0x00005E78 
	0x62D35A0B5A4B5A0B, 0x4A0B4A0B5A8D5A0B, 0x49CB498949C949CB, 0x520B5AD35A4D624D,  // 0x00005E98 
	0x624D5A4D624D5A0D, 0x418B5A91520949C9, 0x5209414749C95209, 0x49C941C9518972D1,  // 0x00005EB8 
	0x62D35A4B5A0B49CB, 0x49CD520D41CB49CB, 0x520D49894149498B, 0x5A0D62D3624D624D,  // 0x00005ED8 
	0x5A0D51CB41894189, 0x418962D349C951C9, 0x5189398941895189, 0x41C939493949520D,  // 0x00005EF8 
	0x6B155A4B5A0B5209, 0x4189418939874A0D, 0x498B4149498B4149, 0x51CD6315628D51CB,  // 0x00005F18 
	0x5A0B520B51CB49CB, 0x524F6B17629362D5, 0x62D56B176B1762D5, 0x631562D55A916293,  // 0x00005F38 
	0x62D3520B5A0B4A09, 0x398B418939893949, 0x51CB49CB3909418B, 0x520D6B15628F51CB,  // 0x00005F58 
	0x418B41CB49C941CB, 0x49CB5A9141CB418B, 0x418D398B3107418D, 0x398B41CD4A0F6293,  // 0x00005F78 
	0x5AD35A0B520B49C9, 0x3147414B41493947, 0x39475A0B49CB3989, 0x5A0D6B15628F4189,  // 0x00005F98 
	0x414941493147418B, 0x51CB5A4F41473907, 0x3909290528C53909, 0x290528C5314951CB,  // 0x00005FB8 
	0x62D5620D49C93987, 0x390541874149418B, 0x39494987418B49C9, 0x5A0D6B15624F4989,  // 0x00005FD8 
	0x3947394739073949, 0x39496AD339073107, 0x30C52905310730C5, 0x290531073909394B,  // 0x00005FF8 
	0x73576B1562D362D3, 0x5A935A916AD562D5, 0x62936AD56B156B15, 0x6B1573575A0D5989,  // 0x00006018 
	0x5189414731473947, 0x39496AD341893107, 0x2905310528C52905, 0x310528C5314741CB,  // 0x00006038 
	0x62D349CD49893949, 0x398939495AD34A0F, 0x520D4987418B418B, 0x49CB63155A0D3949,  // 0x00006058 
	0x3949390741493949, 0x418962D339893147, 0x3107290729053107, 0x29072905394949CB,  // 0x00006078 
	0x524F520D524D3989, 0x394B41895A93418B, 0x398B398951CB418B, 0x41CB52515A0D3949,  // 0x00006098 
	0x4187394939493947, 0x49CB62D34189414B, 0x4189494941494189, 0x4949414949CB498B,  // 0x000060B8 
	0x62934A4F520D3987, 0x3989398962D3398B, 0x41CB51CD5A4D41CB, 0x41CB528F520B4187,  // 0x000060D8 
	0x4147414939073107, 0x3949629339C93947, 0x31473989498B3147, 0x3989498B49CB5A0F,  // 0x000060F8 
	0x6B9762D3524F520D, 0x520D520D62D3418B, 0x49CD498951CD51CD, 0x520D520D49894149,  // 0x00006118 
	0x498B310739073947, 0x41495A4F41894189, 0x4189398939494189, 0x39893949498B4A0F,  // 0x00006138 
	0x6B1362D36B1562D3, 0x6B156B57629149C9, 0x498949CB4189418B, 0x4A0B5AD1498B4147,  // 0x00006158 
	0x4189310730C54147, 0x41495A916B596B13, 0x6A936B156B577319, 0x6AD57B5B63136B97,  // 0x00006178 
	0x5A0B49C94189520D, 0x49CB624F6B573989, 0x41C94149418B4189, 0x41CD7B9949CB4989,  // 0x00006198 
	0x51CB520B49C94A09, 0x49C962D15A4D72CD, 0x520B5A0B628D5A09, 0x49C95A0B49C9520B,  // 0x000061B8 
	0x49CB4987418951CD, 0x418B418962D3418B, 0x49CD520B520F524F, 0x520F5A91520D49CB,  // 0x000061D8 
	0x520D4A0B41CB4A0B, 0x49C963155A4B3947, 0x3949418939493909, 0x3947394941494189,  // 0x000061F8 
	0x49CB4987418951CD, 0x49CD39496B576315, 0x6B596B5963556317, 0x6AD56AD36AD77399,  // 0x00006218 
	0x629362D76B175A91, 0x62D36B1541893947, 0x414949CD498B3909, 0x4189394941494189,  // 0x00006238 
	0x418B418949873947, 0x4989394773975A0D, 0x520B520951CB51C9, 0x51C951C95A4B6A8D,  // 0x00006258 
	0x724B620B629151CD, 0x49CB5A5149C94189, 0x41894989520B49C9, 0x41894149414749CB,  // 0x00006278 
	0x49CB41C949473949, 0x390749C96B1549CB, 0x3947414949894189, 0x4989498949894989,  // 0x00006298 
	0x4987418941CB5189, 0x520B629341893947, 0x39494189498B3909, 0x4189394941494189,  // 0x000062B8 
	0x49CB4987418951CD, 0x418B49CD62D149CB, 0x3947414949894189, 0x4989498949894989,  // 0x000062D8 
	0x4987418941CB5189, 0x520B629341893947, 0x41494189498B3909, 0x4189394941494189,  // 0x000062F8 
	0x520D418949873947, 0x498939476313520B, 0x418949C941894187, 0x49873947414941CB,  // 0x00006318 
	0x49C9418939894989, 0x520B62D549CB3949, 0x414B498949CB4189, 0x3949420D49CB41CB,  // 0x00006338 
	0x49CB41C949473949, 0x394749C96B15624D, 0x41874187498B4189, 0x4189418B41495189,  // 0x00006358 
	0x49C9414941894149, 0x4A0B631739473947, 0x4189498B41493147, 0x3947418949CB4149,  // 0x00006378 
	0x49C951CB49C7498B, 0x49875A8B6B555A4D, 0x4189498941CB418B, 0x41C9418B4989520B,  // 0x00006398 
	0x4989394949CB3949, 0x4A0B6B594189418B, 0x418B418941894189, 0x394B4189498B4989,  // 0x000063B8 
	0x4147418941CB3905, 0x498B6A8D6B555A8F, 0x49894189418B498B, 0x41C941CB520D5A0D,  // 0x000063D8 
	0x41C9498939894189, 0x41CB6B993949414B, 0x4189418941CB418B, 0x3947418949CD4187,  // 0x000063F8 
	0x4A0D520D4989418B, 0x41C949C96B556251, 0x4A0B520D51CB49CB, 0x498949CB4189418B,  // 0x00006418 
	0x4987498952093149, 0x41C96B9941494189, 0x3949498949CB4989, 0x414B418B418B49CB,  // 0x00006438 
	0x41CD414B41CB4189, 0x520741876315498B, 0x51CD524D524F49CB, 0x41CB418B494B3987,  // 0x00006458 
	0x39474989398749CD, 0x520F629349CB4149, 0x49494189418B4989, 0x41CB418B294539CB,  // 0x00006478 
	0x49CB4189394951C7, 0x4149498B5A515A0F, 0x4A0D418B4A0B4189, 0x41CB498B498B4189,  // 0x00006498 
	0x4989498939473107, 0x4A0D631541CB4189, 0x4189418941894189, 0x418B398B314951CD,  // 0x000064B8 
	0x49CD51CB524F418B, 0x5A494A4B524F498D, 0x498951C94A0D520F, 0x498D498D41894147,  // 0x000064D8 
	0x4149418B41493949, 0x418963175A0D4A0D, 0x518D49CB520D49CB, 0x51CB41CB524D524F,  // 0x000064F8 
	0x6B576B576B155A91, 0x5A9162D3629149CB, 0x4187414B520D398B, 0x418B41CB41CB3989,  // 0x00006518 
	0x49CB4189418B4A0B, 0x6A938C9D6B997359, 0x735773D96B9962D3, 0x7BD983DB845D7397,  // 0x00006538 
	0x49CB4189394951C7, 0x4149498B62D141C9, 0x4989498B49CB418B, 0x3909418939493989,  // 0x00006558 
	0x49CB39C9498B4A0F, 0x5A4F631541CB4189, 0x4189418941895A91, 0x418B398B394951CD,  // 0x00006578 
	0x49CB49CB4A0D418B, 0x49C94A4B5A9351CB, 0x49CB41CB524D4A0F, 0x41CB4A0D5A4D4A4D,  // 0x00006598 
	0x528F51CD4A0D5A51, 0x6AD36B9951CB4A0D, 0x498B49CB520D5A8F, 0x49C941CB49CB4A0D,  // 0x000065B8 
	0x49CB41CB4A0D4A0D, 0x49CB62D35A4F7359, 0x7B596B176B17739B, 0x6B557BD97B5B83DB,  // 0x000065D8 
	0x7BDB741B7B997C1B, 0x8C9F8C9F4A0B520D, 0x41CB524D4A0D6B13, 0x49CB49CB524F4A0D,  // 0x000065F8 
};

u64 _ganontika_room_17_tex_00006618[] = 
{
	0x294B294B294B294B, 0x2109210921092109, 0x21092109294B294B, 0x294B294B294B294B,  // 0x00006618 
	0x294B294B294B294B, 0x294B294B210B210B, 0x210B294B21092109, 0x31492109290B6AD7,  // 0x00006638 
	0x2109290921092109, 0x294B210B210B210B, 0x210B210B294B294B, 0x294B294B294B294B,  // 0x00006658 
	0x294B294B294B294B, 0x294B294B210B210B, 0x210B294B294B294B, 0x21092109290B5253,  // 0x00006678 
	0x2109314921092109, 0x2109210921092109, 0x2109210921092109, 0x2109210921092109,  // 0x00006698 
	0x2109210921092109, 0x2109210921092109, 0x2109210921092109, 0x21093149398B5253,  // 0x000066B8 
	0x2109210921092109, 0x2109210921092109, 0x2109210921092109, 0x2109210921092109,  // 0x000066D8 
	0x2109210921092109, 0x2109210921092109, 0x2109294B294B2109, 0x21092109294B5A93,  // 0x000066F8 
	0x210921092109294B, 0x41CF318D318D398D, 0x318D318D318D318D, 0x318D318D318D318D,  // 0x00006718 
	0x318D318D318D314D, 0x318D318D318D318D, 0x318D398D41CF294B, 0x21092109294B5A93,  // 0x00006738 
	0x2109210921092109, 0x318D210921092109, 0x2109210918C91909, 0x190918C918C92109,  // 0x00006758 
	0x18C918C918C718C7, 0x18C9210918C918C9, 0x18C92109314B2109, 0x2109294B294B5A93,  // 0x00006778 
	0x2109210921092109, 0x314B210921092109, 0x19091909210918C9, 0x18C718C718C72109,  // 0x00006798 
	0x18C718C718C718C7, 0x18C7210918C718C7, 0x18C72109314B18C9, 0x2109294B294B5253,  // 0x000067B8 
	0x1909190921092109, 0x314B210921092109, 0x21092109210918C9, 0x18C918C718C72109,  // 0x000067D8 
	0x18C718C718C718C7, 0x18C7210918C718C7, 0x18C72109314B18C9, 0x2109294B294B5253,  // 0x000067F8 
	0x1909190921092109, 0x314B210921092109, 0x2109210921092109, 0x2109190919092109,  // 0x00006818 
	0x1909190919091909, 0x18C92109190918C9, 0x18C72109314B18C9, 0x2109294B294B5251,  // 0x00006838 
	0x1909190921092109, 0x314B210921092109, 0x2109210921092109, 0x2109210921092109,  // 0x00006858 
	0x2109190921092109, 0x18C92109190918C9, 0x18C72109314B18C9, 0x2109294B294B5251,  // 0x00006878 
	0x18C918C921092109, 0x314D21092109210B, 0x2109210921092109, 0x2109210921092109,  // 0x00006898 
	0x2109210921092109, 0x21092109210918C9, 0x18C92109314B18C9, 0x2109290B290B5251,  // 0x000068B8 
	0x18C918C921092109, 0x314D2109294B294B, 0x2109210921092109, 0x210921092109294B,  // 0x000068D8 
	0x2109210921092109, 0x21092109210918C9, 0x18C92109314B18C9, 0x2109210921095251,  // 0x000068F8 
	0x18C918C921092109, 0x314D21092949294B, 0x2109210921092109, 0x210921092109294B,  // 0x00006918 
	0x2109210921092109, 0x21092109210918C9, 0x18C92109314B18C9, 0x2109210921095251,  // 0x00006938 
	0x18C918C921092109, 0x318D2109294B2109, 0x2109210921092109, 0x210921092109294B,  // 0x00006958 
	0x2109210929492949, 0x2949294B21092109, 0x21092109294B18C7, 0x2109210921095251,  // 0x00006978 
	0x18C918C921092109, 0x318D2109294B2109, 0x2109210921092109, 0x210921092109294B,  // 0x00006998 
	0x21092109294B294B, 0x294B294B29492109, 0x21092109294B18C7, 0x2109210921095251,  // 0x000069B8 
	0x18C918C921092109, 0x318D210921092109, 0x2109210921092109, 0x210921092109210B,  // 0x000069D8 
	0x21092109294B294B, 0x294B294B294B2109, 0x21092109294B18C7, 0x2109210921095251,  // 0x000069F8 
	0x18C918C921092109, 0x314D210921092109, 0x294B294B21092109, 0x2109210921092109,  // 0x00006A18 
	0x210921092949294B, 0x294B294B294B2109, 0x21092109294B18C7, 0x2109210921095251,  // 0x00006A38 
	0x18C918C921092109, 0x314D210921092109, 0x210B294B21092109, 0x2109210921092109,  // 0x00006A58 
	0x210921092949294B, 0x294B294B294B2109, 0x21092109294B18C7, 0x2109210921095251,  // 0x00006A78 
	0x18C718C721092109, 0x314D210921091909, 0x2109210921092109, 0x210918C918C92109,  // 0x00006A98 
	0x2109210921092109, 0x2109210921092109, 0x21092109294B18C7, 0x2109210921095251,  // 0x00006AB8 
	0x18C718C721092109, 0x314D18C921091909, 0x18C918C921092109, 0x210918C718C72109,  // 0x00006AD8 
	0x2109210919091909, 0x2109210921092109, 0x21092109294B18C7, 0x2109210B21095251,  // 0x00006AF8 
	0x18C718C721092109, 0x314D190921091909, 0x18C918C921092109, 0x210918C718C72109,  // 0x00006B18 
	0x21092109190918C9, 0x2109210921092109, 0x21092109294B18C7, 0x2109210921094A11,  // 0x00006B38 
	0x18C718C721092109, 0x314B2109210918C9, 0x18C718C721092109, 0x210918C718C72109,  // 0x00006B58 
	0x2109210918C918C9, 0x2109210921092109, 0x21092109294B18C7, 0x2109210918C94A11,  // 0x00006B78 
	0x18C718C721092109, 0x314B2109210918C9, 0x18C718C721092109, 0x210918C718C71909,  // 0x00006B98 
	0x2109210918C918C9, 0x2109210921092109, 0x21092109294B18C7, 0x2109210918C94A11,  // 0x00006BB8 
	0x18C718C721092109, 0x314B2109210918C9, 0x18C718C721092109, 0x210918C718C718C9,  // 0x00006BD8 
	0x18C918C921092109, 0x2109210921091909, 0x18C92109294B18C9, 0x2109210918C94A11,  // 0x00006BF8 
	0x18C718C721092109, 0x314B2109210918C9, 0x10C718C718C92109, 0x18C918C718C718C9,  // 0x00006C18 
	0x18C918C921092109, 0x21092109210918C9, 0x18C92109314B18C9, 0x2109210918C95251,  // 0x00006C38 
	0x18C718C721092109, 0x314B210921091909, 0x18C718C719092109, 0x18C918C718C718C9,  // 0x00006C58 
	0x18C918C921092109, 0x21092109210918C9, 0x18C92109314B18C9, 0x2109210918C95251,  // 0x00006C78 
	0x18C9210921092109, 0x39CD314B314B314B, 0x314B314B314B314B, 0x314B314B314B314B,  // 0x00006C98 
	0x314B314B318D318D, 0x318D318D318D314B, 0x294B314B398D18C9, 0x2109210921095251,  // 0x00006CB8 
	0x2109210921092109, 0x2109210921092109, 0x2109210921091909, 0x1909210921092109,  // 0x00006CD8 
	0x2109210921092109, 0x21092109210918C9, 0x18C918C918C9294B, 0x2109210921095253,  // 0x00006CF8 
	0x2109210921092109, 0x2109210921092109, 0x2109210921092109, 0x2109210921092109,  // 0x00006D18 
	0x2109210921092109, 0x2109210921092109, 0x2109210921092109, 0x2109314939495253,  // 0x00006D38 
	0x2109210929092109, 0x2109210921092109, 0x2109210921092109, 0x2109210921092109,  // 0x00006D58 
	0x29492949294B294B, 0x294B294B294B2109, 0x2109210921092109, 0x3109210921095253,  // 0x00006D78 
	0x18C9210921092109, 0x2109210921092109, 0x2109210921092109, 0x2109210921092109,  // 0x00006D98 
	0x29492949294B294B, 0x294B294B294B2109, 0x2109210921092109, 0x4189210921095253,  // 0x00006DB8 
	0x62D562D552535253, 0x525352535A535A53, 0x525352535A535A53, 0x5253525352535253,  // 0x00006DD8 
	0x5A535A5352535253, 0x5A535A5352535253, 0x5251525152515251, 0x5A935A9352535253,  // 0x00006DF8 
};

u64 _ganontika_room_17_tex_00006E18[] = 
{
	0x1111589635AE1D96, 0x3535301105051111, 0x11050A0A050A0A0A, 0x0A0A0A0A0A0A0505,  // 0x00006E18 
	0x111111050A0A050A, 0x0A0A0A0A0A0A0A05, 0x1111051105111105, 0x1111111111111111,  // 0x00006E38 
	0x11583535583E678B, 0x353558050A0A0A11, 0x111111110A0A0A0A, 0x0A6F6F0A0A0A0A0A,  // 0x00006E58 
	0x0511111111050A0A, 0x0A0A0A6F6F0A0A05, 0x111111110511110A, 0x0505111111111111,  // 0x00006E78 
	0x11576A9658586D8A, 0x3E6B11050A0A0A0A, 0x0511111105050A0A, 0x0A0A0A0A0A0A0A0A,  // 0x00006E98 
	0x0A05051111110505, 0x0A0A0A0A0A050505, 0x050511110505050A, 0x050A050505050505,  // 0x00006EB8 
	0x1157206A5858B0A1, 0x8A4235050A0A0A0A, 0x05050511110A0A0A, 0x6F6F0A1111110A0A,  // 0x00006ED8 
	0x0A0A05050511110A, 0x0A6F6F6F0A0A0505, 0x0A05111111111105, 0x11050A0A0A0A0A0A,  // 0x00006EF8 
	0x11587168116A96C0, 0xA15835050A0A0505, 0x05050505050A0A6F, 0x0A0A0A11110A0A0A,  // 0x00006F18 
	0x050505050505050A, 0x6F6F0A0A050A0A0A, 0x050A050505050511, 0x11050A0A0A0A0A0A,  // 0x00006F38 
	0x111157A63E579CAE, 0x5758110505050A0A, 0x0A0A0A0A050A0A0A, 0x0505050505050505,  // 0x00006F58 
	0x0A0A0A0A0A05050A, 0x0A0A050505050505, 0x0A0A0A0A05050505, 0x05050A0A050A0A05,  // 0x00006F78 
	0x111111419C9CA85A, 0x8A58350505050A0A, 0x0A0A05050A0A0A05, 0x050A050A0A0A0505,  // 0x00006F98 
	0x0A0A0A0A05050A0A, 0x0A05050A05050505, 0x050A0A0A0A050505, 0x05050A05050A0505,  // 0x00006FB8 
	0x11115858ACAE9F46, 0x2AAB5811050A0A0A, 0x051105050A0A0505, 0x0A0A0A0A0A0A050A,  // 0x00006FD8 
	0x0A0A051105050A0A, 0x05050A0A0A050511, 0x11050A0A0A0A0505, 0x050A0A05050A0505,  // 0x00006FF8 
	0x11111157C14E5858, 0x587158056F0A0A05, 0x1111110505051111, 0x11050A0A0A6F6F0A,  // 0x00007018 
	0x0A11111111050505, 0x111111050A0A0505, 0x05050A0A0A0A0A11, 0x0A0A050505050505,  // 0x00007038 
	0x11585835ACAB5858, 0x586758056F0A0511, 0x050A0A0A11111111, 0x1111050A0A6F6F0A,  // 0x00007058 
	0x0511050A0A0A1111, 0x1111111105050505, 0x0505050A0A0A050A, 0x0A05111105111105,  // 0x00007078 
	0x11585889A19CB558, 0x9F7111050A0A0505, 0x0A0A0A0A05050505, 0x0505110A0A6F0A0A,  // 0x00007098 
	0x05050A0A0A0A0505, 0x050505051105050A, 0x0A05050A0A0A0A0A, 0x0A0A051105051105,  // 0x000070B8 
	0x11112B0D96A89C4D, 0xA8A130110505050A, 0x05050505050A0A0A, 0x0A0A050A0A0A0505,  // 0x000070D8 
	0x0A0A05050505050A, 0x0A0A0A0A0511050A, 0x0A0A050A0A0A0A0A, 0x0A0A05050A05050A,  // 0x000070F8 
	0x116A0B6B1196EA9C, 0xA111051105050505, 0x0511110A0A0A0A0A, 0x0505050505050505,  // 0x00007118 
	0x05050511110A0A0A, 0x0A0A050505050505, 0x0A0A0A05050A6F0A, 0x05050A6F0A0A6F0A,  // 0x00007138 
	0x115A6A113535AA9C, 0x7111050505050505, 0x111111050A0A0A0A, 0x0511051111110505,  // 0x00007158 
	0x0511111111110A0A, 0x0A0A051105050505, 0x0A0A0511050A0A11, 0x11056F0A0A6F0A0A,  // 0x00007178 
	0x72675B1196359F71, 0xA66A110505050505, 0x05050505050A0A05, 0x1111111111110505,  // 0x00007198 
	0x050505050505050A, 0x0A0511111105050A, 0x0505051105051111, 0x050A6F0A056F0A05,  // 0x000071B8 
	0x11414158585271D8, 0x9CA62B110A050A0A, 0x0A0A0A0A05050505, 0x1111110A0A050505,  // 0x000071D8 
	0x0A0A0A0A0A0A0505, 0x050511111111050A, 0x051111050511110A, 0x6F0A0A11110A1111,  // 0x000071F8 
	0x1158679558A89C9F, 0x8BAB5B05050A0A05, 0x050A0A0A05050505, 0x0505050A0A0A050A,  // 0x00007218 
	0x0A05050A0A0A0505, 0x0505050505050505, 0x111111111111050A, 0x0A0A051111051111,  // 0x00007238 
	0x113CC06D58A89F58, 0x113E3E1105050505, 0x05050A0A0A050505, 0x050A050A0A050505,  // 0x00007258 
	0x050505050A0A0A05, 0x0505050A0505050A, 0x0511111111050A0A, 0x0A05111111111111,  // 0x00007278 
	0x113E2AA641ACAA58, 0x58750B1111111105, 0x0505050A0A0A0A05, 0x1105050A05111111,  // 0x00007298 
	0x11050505050A0A0A, 0x0A05110505050505, 0x05111111050A0A0A, 0x0511111105111105,  // 0x000072B8 
	0x11AB582AA6C1AA58, 0x112B2B110505050A, 0x05050505050A0A0A, 0x0511050A0A050511,  // 0x000072D8 
	0x050A050505050A0A, 0x0A05051105050511, 0x111111050A0A0A0A, 0x0511050511050511,  // 0x000072F8 
	0x112A11116DC19658, 0x11A1571105050A0A, 0x0A05050505050505, 0x0505050A0A0A0505,  // 0x00007318 
	0x0A0A0A0505050505, 0x0505050505111111, 0x1111050A0A050505, 0x0505050511050511,  // 0x00007338 
	0x110D111142AC4158, 0x57A158050A0A0A0A, 0x0A0505050505050A, 0x0A0A0505050A0A0A,  // 0x00007358 
	0x0A0A0A0505050505, 0x050A0A0A05111111, 0x11050A0A0A051105, 0x0A0A050505050505,  // 0x00007378 
	0x110D123546676D57, 0x7AB5580A0A0A0A0A, 0x050505111111050A, 0x0A0A1105050A6F0A,  // 0x00007398 
	0x0A0A050505111111, 0x050A0A0A11111111, 0x050A0A0A05050511, 0x050A05050A05050A,  // 0x000073B8 
	0x11350596966A676D, 0x7A5811050A0A0A05, 0x0505111111111111, 0x111111110A0A0A0A,  // 0x000073D8 
	0x0505050511111111, 0x1111111111110505, 0x050A0A05110A0A05, 0x0505050A05050A05,  // 0x000073F8 
	0x1111352BB59F969C, 0x6D58350505050505, 0x0505111111111111, 0x1111110A0A0A0505,  // 0x00007418 
	0x0505050511111111, 0x1111111111050505, 0x0A051111110A6F0A, 0x0A05050A0A050A0A,  // 0x00007438 
	0x051167AE9F9F96C0, 0x673535050A050505, 0x05050A0A05050505, 0x1111110505050505,  // 0x00007458 
	0x050505050A0A0505, 0x0505111111050505, 0x0505111105050505, 0x0A05110505110505,  // 0x00007478 
	0x1135AC0B58589590, 0x905835050A050505, 0x05050A0A0A050505, 0x0505051111110505,  // 0x00007498 
	0x050505050A0A0A05, 0x0505050505050505, 0x1111050505051111, 0x0505050511050511,  // 0x000074B8 
	0x11588A1158AA24A1, 0x5A1158110A050505, 0x05050A0A0A05050A, 0x0A0A051111050505,  // 0x000074D8 
	0x050505050A0A0A05, 0x050A0A0A05050505, 0x05050A050A051111, 0x11050A0A050A0A05,  // 0x000074F8 
	0x11115A759FD9A1AC, 0x285A11110A050A0A, 0x051111050A0A0A0A, 0x0505050A0A050505,  // 0x00007518 
	0x0A0A111111050A0A, 0x0A0A0505050A0A0A, 0x0A0A0A0A0511050A, 0x1111050511050511,  // 0x00007538 
	0x11110D5AAA33AE9F, 0x110B421105050505, 0x05050A0A0A050505, 0x0505051111110505,  // 0x00007558 
	0x050505050A0A0A05, 0x050505050505050A, 0x0A0A0A0A0511050A, 0x0A05050505050505,  // 0x00007578 
	0x113511AE9CA6A858, 0x58776A1105050505, 0x05050A0A0A05050A, 0x0A0A051111050505,  // 0x00007598 
	0x050505050A0A0A05, 0x050A0A0A0A05110A, 0x0A050A0A11050A0A, 0x0A05110505110505,  // 0x000075B8 
	0x050558B66DD8A658, 0x58351A1105050A0A, 0x051111050A0A0A0A, 0x0505050A0A050505,  // 0x000075D8 
	0x0A0A111111050A0A, 0x0A0A05050A050A0A, 0x0A051105110A0A05, 0x0511111111111111,  // 0x000075F8 
};

u64 _ganontika_room_17_tex_00007618[] = 
{
	0x28C5398B4A0D5A91, 0x528F5A8F5A4F5A8F, 0x524F5A4F524F4A0B, 0x39CB41CD524F4A0D,  // 0x00007618 
	0x41CD41CD39CB39CB, 0x314762D36291524F, 0x524F524F5251524F, 0x5251524F524F39CB,  // 0x00007638 
	0x4A0D41CD31492905, 0x398B314931473147, 0x31493149398941CB, 0x39493189314739CB,  // 0x00007658 
	0x5A8F4A0F420D420D, 0x420D4A0F524F524F, 0x524F524F524F524F, 0x420D420D420D41CD,  // 0x00007678 
	0x2907420D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D41CD, 0x4A0D41CD524F4A0D,  // 0x00007698 
	0x4A0D4A0D4A0D4A0D, 0x318962D141CD41CD, 0x4A0D4A0D41CD318B, 0x39CD4A0D41CD41CD,  // 0x000076B8 
	0x4A0D4A0D41CB41CB, 0x41CB420D4A0D4A0D, 0x4A0D4A0D4A0D4A4F, 0x314731474A0F524F,  // 0x000076D8 
	0x4A0F4A0F4A0D41CD, 0x39CB524F41CD4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x000076F8 
	0x29074A0D524F4A0D, 0x4A0D4A0D4A4D4A0D, 0x41CD41CD39CB41CD, 0x41CD41CD39CB41CD,  // 0x00007718 
	0x39CB41CD4A0D41CD, 0x29475A8F4A0D4A0D, 0x41CD41CD41CD31CB, 0x420D39CD39CD39CD,  // 0x00007738 
	0x420D39CD39CD41CD, 0x39CD39CB41CD41CD, 0x41CD41CD41CD418B, 0x2907524F524F524F,  // 0x00007758 
	0x41CD4A0D41CD41CD, 0x39CD39CD39CB4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x00007778 
	0x2105420D524F4A0F, 0x524F4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D,  // 0x00007798 
	0x4A0D39CB39CB39CB, 0x2907524F41CB318B, 0x318B39CB318B318B, 0x39CB4A0D524F4A0D,  // 0x000077B8 
	0x4A0D4A0D4A0D420D, 0x39CD39CD420D420D, 0x420D31CB31CB3989, 0x3149524F4A0D420D,  // 0x000077D8 
	0x41CB420D420D4A0F, 0x4A0F4A0F420F420D, 0x4A0F420D41C94A0D, 0x524F524F524F4A0D,  // 0x000077F8 
	0x29074A0D524F4A0D, 0x41CB418B4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x41CD41CD4A0D41CD,  // 0x00007818 
	0x4A0D4A0D4A0D41CD, 0x29475A8F49CB39CB, 0x41CD39CD39CD39CD, 0x39CD41CD41CD4A0D,  // 0x00007838 
	0x41CD41CD39CB41CD, 0x41CD39CB39CB4A0D, 0x4A0D4A0D4A0D418B, 0x3189528F41CB39CB,  // 0x00007858 
	0x39CD39CB39CB41CD, 0x39CD39CD39CD39CB, 0x41CD39CB398941CD, 0x39CB39CB39CB31CB,  // 0x00007878 
	0x31494A0F420B41CB, 0x39CB418B49CB4A0D, 0x4A0B4A0D4A0D4A0D, 0x4A0D41CD4A0D4A0D,  // 0x00007898 
	0x4A0D4A0D4A0D4A0D, 0x31475A8F41C939CB, 0x4A0D41CD39CD39CB, 0x39CB41CB420B4A0D,  // 0x000078B8 
	0x4A0D4A0D4A0D4A0D, 0x4A0D41CD4A0D4A0D, 0x4A0D4A0D4A0D41CB, 0x3189524F41C939CB,  // 0x000078D8 
	0x420D41CD39CB39CB, 0x39CB41CD41CD39CD, 0x318B318B418941CD, 0x39CD41CD4A0D41CD,  // 0x000078F8 
	0x3149524F41CB398B, 0x39CB41CB398B318B, 0x39CB41CD39CD41CD, 0x41CD41CD41CD41CD,  // 0x00007918 
	0x39CD39CD41CD41CB, 0x31495A9149C939CB, 0x39CB31CB31CB31CB, 0x31CB31CB39CB39CD,  // 0x00007938 
	0x41CD39CD39CB39CB, 0x39CD41CD41CD41CD, 0x41CD39CD4A0D3989, 0x3189528F41CB41CB,  // 0x00007958 
	0x39CB39CB39CB39CB, 0x39CB39CB39CB39CB, 0x39CB39CB39494A0D, 0x4A0D41CD41CD39CB,  // 0x00007978 
	0x31495A914A0D41CD, 0x420D41CB41CB41CB, 0x41CB41CB41CD41CD, 0x420D420F420D39CB,  // 0x00007998 
	0x39CB39CB41CD3189, 0x31494A0D49C941CD, 0x39CB39CD39CB39CB, 0x39CD41CB41CD41CB,  // 0x000079B8 
	0x420D420D39CD39CD, 0x39CD420D420D4A0D, 0x4A0D4A0D524F41CB, 0x2907524D418949C9,  // 0x000079D8 
	0x49CB4A0B49CB41CD, 0x41CD41CD49CB49CB, 0x418941894989520D, 0x524D49CB39CB39CB,  // 0x000079F8 
	0x31494A0D39CB420D, 0x4A0B4A0D41CB39CB, 0x39CB39CB39CB39CD, 0x39CB318B39CB39CB,  // 0x00007A18 
	0x39CB318B4A0D41CB, 0x31494A0D51C949CB, 0x41C941C939893989, 0x39893989398939C9,  // 0x00007A38 
	0x31CB39CD39CD39CD, 0x39CD39CD31CB31CB, 0x31CB39CB41CD3989, 0x31494A0D41CD41CB,  // 0x00007A58 
	0x41CD41CD41CD49CD, 0x41CD41CD398B39CB, 0x318B398B398B41CD, 0x4A0D4A0D39CB39CB,  // 0x00007A78 
	0x2907310731472907, 0x2907290729072907, 0x2907290531073107, 0x3149394939493949,  // 0x00007A98 
	0x3149314931493107, 0x210539CB49C951CB, 0x51CB49CB39893989, 0x39893989318B39C9,  // 0x00007AB8 
	0x39CB318B318B318B, 0x39CB318B39CB39CB, 0x39CB318B41CD3989, 0x31493107398B41CD,  // 0x00007AD8 
	0x41CD41CD41CD41CD, 0x398B41CB39CB31CB, 0x39CD39CB31CB524F, 0x524F4A0D41CD318B,  // 0x00007AF8 
	0x41CD41CD41CB39CB, 0x398B398929073949, 0x41CB49CB5A8F4A4D, 0x4A4D524F4A4F4A4D,  // 0x00007B18 
	0x4A4D318B39CB3149, 0x31494A0D5A4B4209, 0x4209420941C939C9, 0x398739C942094209,  // 0x00007B38 
	0x42094209420B420B, 0x420B4A0B41CD41CD, 0x39CB31CB41CD4A0D, 0x2907314931493149,  // 0x00007B58 
	0x3149314931493147, 0x3149314931493149, 0x3147314729073147, 0x31473147318B318B,  // 0x00007B78 
	0x4A0D4A0D4A0D39CD, 0x39CB39CB29073149, 0x5A8F4A0B4A0B41CD, 0x41CD41CD4A0D4A0D,  // 0x00007B98 
	0x4A0D39CB41CD41CD, 0x3989290729072907, 0x20C518C318C32105, 0x3147318931473147,  // 0x00007BB8 
	0x3107290529053107, 0x3147314931073107, 0x3149314931493189, 0x31473147524F520B,  // 0x00007BD8 
	0x41CB4A0B4A0B41CB, 0x4A0B420B4A0B4A0B, 0x398B318B29054A0D, 0x5291524F524F4A0D,  // 0x00007BF8 
	0x41CD41CD41CD39CB, 0x31CB314729073949, 0x524D4A0B4A0D41CD, 0x420D4A0D4A0D4A0D,  // 0x00007C18 
	0x4A0D39CB4A0D4A0D, 0x4A0B41CD41CB49CD, 0x41CB41893147524F, 0x5A915A91524F524F,  // 0x00007C38 
	0x4A0F4A0F4A0F39CB, 0x4A0D41CD41CD4A0D, 0x41CD41CD41CD41CD, 0x398931496AD1524B,  // 0x00007C58 
	0x4A0D4A0D4A0D41CD, 0x4A0D4A0D4A0D4A0D, 0x41CD39CB3147524F, 0x49CD41CD41CD398B,  // 0x00007C78 
	0x41CD41CD39CB318B, 0x39CD318B29053989, 0x49CB4A0D39CD39CD, 0x41CD4A0D4A0B4A0B,  // 0x00007C98 
	0x4A0B41C94A0B520B, 0x520B49CB49CB520B, 0x39CB41CB3149524F, 0x5A4D4A0D420D420D,  // 0x00007CB8 
	0x420D420D420D420B, 0x4A4B4A4B4A4B4A4B, 0x4A4B4A4B4A0D524F, 0x41CD31476AD1524B,  // 0x00007CD8 
	0x4A0D4A0D41CD41CD, 0x4A0D4A0D4A0D41CD, 0x41CD39CD318B5A4F, 0x5A4F524F41CD39CD,  // 0x00007CF8 
	0x39CD41CD39CB39CD, 0x39CD318B29054A0D, 0x49CB4A0D41CB41CD, 0x41C95A4D520D520D,  // 0x00007D18 
	0x4A0B49CB4A0B41C9, 0x520B4A0B4A0B41CD, 0x41CD41CD39CB3189, 0x524D41CD39CB41CD,  // 0x00007D38 
	0x39CB39CD39CB39CD, 0x39CB39CB39CB41CD, 0x39CB41CD4A0D4A0D, 0x41CB3149628F4A0B,  // 0x00007D58 
	0x41CD39CB39CD39CB, 0x39CB41CD39CB39CD, 0x39CB318B31475A4F, 0x524F4A0D41CB41CD,  // 0x00007D78 
	0x39CB41CD41CD41CD, 0x41CD318B29054A0D, 0x49CB520D51CB41C9, 0x41C9418941C94A0D,  // 0x00007D98 
	0x4A0D49CB4A0B4A0B, 0x51CB4A0D41CD41CD, 0x4A0D4A0D41CD3189, 0x520B41CD39CB4A0D,  // 0x00007DB8 
	0x39CD39CD39CD39CD, 0x39CD39CB39CB39CB, 0x39CB39CB41CD4A0D, 0x41CB314939CB5207,  // 0x00007DD8 
	0x520B4A0B4A094A09, 0x41C9520B41CD39CD, 0x39CB318B3147520B, 0x520D4A0D49CB49CB,  // 0x00007DF8 
	0x41CD4A0D4A0D4A0D, 0x524F41CD314739CB, 0x41CD4A0F49CB39C9, 0x39C941CB39C931CB,  // 0x00007E18 
	0x420D39CD39CD39CD, 0x420D520B4A0B4A0B, 0x4A0D524F4A0D418B, 0x4A0D41C941CD39CD,  // 0x00007E38 
	0x39CD39CB39CB39CD, 0x41CD39CD31CB318B, 0x31CB31CB4A0D4A0D, 0x41CB31894A0D49CB,  // 0x00007E58 
	0x39CB39CB39CB39CB, 0x41CD39CB39CB39CB, 0x318B31472905524F, 0x49CD398B39CB41CD,  // 0x00007E78 
	0x3147314731473149, 0x31473147290539CB, 0x41CD4A0D4A0B4A0D, 0x4A0D39CB318B39CB,  // 0x00007E98 
	0x41CD39CD41CD41CD, 0x41CD41CD41CD39CB, 0x39CD41CD39CB3989, 0x4A0D49CB41CD39CB,  // 0x00007EB8 
	0x39CB318B39CB39CB, 0x318B318B318B318B, 0x318B318B41CD41CD, 0x41CD314729073107,  // 0x00007ED8 
	0x3107310731493107, 0x2907310731073149, 0x314921053147318B, 0x318B314731473147,  // 0x00007EF8 
	0x39CB398B39CB318B, 0x39CD318B2905318B, 0x39CB39CD420D39CD, 0x420D31CB31CB31CB,  // 0x00007F18 
	0x318B318B318B31CB, 0x41CD39CD39CB31CB, 0x318B41CD39CB3147, 0x39CB318B41CD41CD,  // 0x00007F38 
	0x39CD39CB39CB39CB, 0x39CB39CB318B39CB, 0x318B318B39CD41CD, 0x39CB3149524F4A4F,  // 0x00007F58 
	0x4A4D4A0D4A0D4A0D, 0x4A0D4A0D420B41CB, 0x41CB418B39CB39CB, 0x39CB39CB39CB39CB,  // 0x00007F78 
	0x39CB39CB39CB39CB, 0x39CB39CB314739CB, 0x4A0B41CB41CB4A0B, 0x4A0B41CB39C931CB,  // 0x00007F98 
	0x39C941CB41CB41CB, 0x41C941C941CB39CB, 0x39CB41CD318B2905, 0x4A0D41CD39CD39CB,  // 0x00007FB8 
	0x39CB318B318B318B, 0x318B318B318B318B, 0x39CB31CB39CD39CB, 0x39CB31495A9141CB,  // 0x00007FD8 
	0x41C94A0B4A0B4A0B, 0x4A0B4A0B420B41CB, 0x39CB39CB39CB39CB, 0x39CB41CD4A0D39CB,  // 0x00007FF8 
	0x39CB39CB39CB4A0D, 0x4A0D39CB31473147, 0x3989318931893107, 0x3147290529053147,  // 0x00008018 
	0x29053147318B318B, 0x3147314931073107, 0x3107290720C520C5, 0x3107310731072905,  // 0x00008038 
	0x2905290529052905, 0x2905290531493149, 0x3949394939493149, 0x2905290552514A0B,  // 0x00008058 
	0x4A0B520B4A0B41CB, 0x41CB41C949CB4209, 0x420942094A0B4A0B, 0x4A0D41CB49CB39CB,  // 0x00008078 
	0x39CB39CB4A0D4A0D, 0x4A0D39CB3147524F, 0x5A91524F5A91524F, 0x4A0D39895A915A91,  // 0x00008098 
	0x5A4F5A4F5A4F628F, 0x5A4F524D41C949CB, 0x49CB49CB39CB39CB, 0x39CB41CD41CD4A0D,  // 0x000080B8 
	0x41CD314931074A0F, 0x525141CD4A0D4A4D, 0x4A0F318B318B41CD, 0x41CD31472905420D,  // 0x000080D8 
	0x318B39CB39CB39CB, 0x318B39CB39CB39CB, 0x39CB39CB41CB398B, 0x41CB39CB39CB39CB,  // 0x000080F8 
	0x39CB39CB39CB39CB, 0x39CB39CB31474A0D, 0x420D524F4A0D41CD, 0x524F418B62D331CD,  // 0x00008118 
	0x420D39CD4A0B41CB, 0x4A4B4A0B4A0B524B, 0x524B524B41CD4A0D, 0x41CD41CD41CD4A0D,  // 0x00008138 
	0x41CD39CB31076313, 0x4A0D4A0D4A0D4A0D, 0x4A0D41CB41CB3989, 0x398B314731475291,  // 0x00008158 
	0x39CB41CD41CD41CD, 0x39CB39CB39CB39CB, 0x39CB39CB39CB39CB, 0x41CD39CB41CD4A0D,  // 0x00008178 
	0x39CB39CB39CB39CB, 0x39CB39CD31474A4F, 0x39CD4A0D4A0D4A0D, 0x524F398962D3420D,  // 0x00008198 
	0x39CD41CD39CB39CB, 0x420D420D420D420D, 0x420D420D420D420D, 0x4A0D4A0D4A0D4A0D,  // 0x000081B8 
	0x41CD39CB3149524F, 0x41CB41CB49CB420D, 0x41CD39CB39CB398B, 0x39CB314731475291,  // 0x000081D8 
	0x39CD420D420D420D, 0x420D39CD31CB31CB, 0x31CB420D420D420D, 0x420D4A0D4A0D41CD,  // 0x000081F8 
	0x3147314731492907, 0x2907290731473147, 0x3147314739CB3147, 0x314731475A9139CD,  // 0x00008218 
	0x31CB41CD39CD41CD, 0x41CD39CB4A0D4A0D, 0x4A0D4A0D41CD41CD, 0x39CD39CB39CB39CB,  // 0x00008238 
	0x4A0D41CD31496291, 0x49CB49CB49CB49CB, 0x49CB49CB41CB41C9, 0x39CB39CB3147420D,  // 0x00008258 
	0x41CD41CD4A0D4A4D, 0x4A0D4A0D4A0D49CB, 0x4A0D4A0D524F524F, 0x524F524F4A0D3147,  // 0x00008278 
	0x524F4A8F4A8F4A4D, 0x524D524D524D524D, 0x5A8F5A8F4A0B4A0B, 0x4A0D39C94A0F41CD,  // 0x00008298 
	0x39CD39CD4A0D4A0D, 0x41CD39CD41CD39CD, 0x39CD39CB39CB318B, 0x41CD39CB39CB41CD,  // 0x000082B8 
	0x4A0D41CD314962D3, 0x41CB41CB420B41CD, 0x41CD39CD39CB39CB, 0x398B318B31472905,  // 0x000082D8 
	0x3189314731493989, 0x398B31893189418B, 0x3149290731493149, 0x3189398939C939CB,  // 0x000082F8 
	0x41CD39CB4A0B4209, 0x42094A0B42094209, 0x4A4B4A4B4A0D4A0D, 0x4A0B39C93147524F,  // 0x00008318 
	0x39CD39CD39CD39CD, 0x39CB39CB41CD4A0D, 0x41CD39CD39CD39CB, 0x39CB39CB39CB41CD,  // 0x00008338 
	0x524F524F3149524F, 0x41CB520B4A0B49CB, 0x49CB41C941C941CD, 0x39CB39CB41CD2905,  // 0x00008358 
	0x41CB4A0F524F524F, 0x524F52514A0F524F, 0x4A0D318B5AD1524F, 0x5A4F4A0B41CB41CD,  // 0x00008378 
	0x398B398B41CB41CB, 0x4A0D39CB42094A0B, 0x5A8D524B4A0D4A0D, 0x520B39C9318941CD,  // 0x00008398 
	0x41CD520B520B520B, 0x520B520B520B49CB, 0x41CB41C939CB39CB, 0x39CB39CB39CB4A0D,  // 0x000083B8 
	0x41CD39CB2907524F, 0x4A0B41CD41CD39CB, 0x39CB39CB41CD41CD, 0x41CB524F39CB3147,  // 0x000083D8 
	0x4A0F41CD41CD39CB, 0x41CD41CD41CD41CD, 0x41CD39CB5A4F4A0D, 0x4A0B41CD39CB398B,  // 0x000083F8 
	0x39CD39CD39CD39CD, 0x4A0B4A0B4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x520B41CB3989524F,  // 0x00008418 
	0x4A0D41CD4A0D39CB, 0x39CD4A0D41CD420B, 0x420B420B4A4B4A0B, 0x4A4B4A0D41CD4A0D,  // 0x00008438 
	0x41CD41CD3189524F, 0x4A0B41CD4A0B4A0B, 0x4A0B4A0B41CD41CD, 0x41CB4A0D39CB318B,  // 0x00008458 
	0x5A914A0D4A0D4A0D, 0x4A0D4A0D41CD4A0D, 0x41CD3147420D39CB, 0x39CB39CB39CB31CB,  // 0x00008478 
	0x39CD39CD39CD4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x520B4A0B3989524F,  // 0x00008498 
	0x4A0D4A0D41CD39CD, 0x41CD39CD39CD39CD, 0x39CB39CD39CD39CB, 0x39CD39CD39CD39CD,  // 0x000084B8 
	0x39CD39CB314941CD, 0x41CD41CD41CD39CD, 0x39CB39CB39CB41CD, 0x398B4A0D39CB3147,  // 0x000084D8 
	0x524F524F4A0D41CD, 0x41CD41CD41CD4A0D, 0x41CD318B4A0F39CD, 0x39CD39CD39CD39CD,  // 0x000084F8 
	0x41CD39CD41CD41CD, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A0D4A0D4A0D, 0x4A0D4A4D31894A0F,  // 0x00008518 
	0x420D4A0F4A0F4A0F, 0x4A0F4A0F4A0F524F, 0x4A0F4A0F4A0F41CD, 0x39CB41CD41CD41CD,  // 0x00008538 
	0x4A0D4A0D3189524F, 0x4A0D41CD4A0D41CD, 0x41CD41CD4A0D41CB, 0x39CB4A0D39CB2905,  // 0x00008558 
	0x41CD524F4A0D4A0D, 0x41CD41CD41CD39CB, 0x318B3147524F420D, 0x420D420D420D420F,  // 0x00008578 
	0x3147314731493189, 0x3189318B31893989, 0x41CD39CB39CB31CB, 0x31892949314718C3,  // 0x00008598 
	0x18C3290531493149, 0x3949314931493149, 0x2907314929073989, 0x31CB314731473147,  // 0x000085B8 
	0x314718C32905524F, 0x39CB39CB39CB39CB, 0x39CB39CB41CB4A0D, 0x4A0D4A0D39CB2905,  // 0x000085D8 
	0x2905290529053147, 0x3147314731473147, 0x290518C329052905, 0x3147314731473147,  // 0x000085F8 
};

static u8 unaccounted8618[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};


