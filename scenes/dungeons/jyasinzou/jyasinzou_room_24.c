#include <ultra64.h>
#include <z64.h>
#include "jyasinzou_room_24.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>
#include "jyasinzou_scene.h"



SCmdEchoSettings _jyasinzou_room_24_set0000_cmd00 = { 0x16, 0, { 0 }, 0x0A }; // 0x0000
SCmdRoomBehavior _jyasinzou_room_24_set0000_cmd01 = { 0x08, 0x01, 0x00000000 }; // 0x0008
SCmdSkyboxDisables _jyasinzou_room_24_set0000_cmd02 = { 0x12, 0, 0, 0, 0x01, 0x01 }; // 0x0010
SCmdTimeSettings _jyasinzou_room_24_set0000_cmd03 = { 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00 }; // 0x0018
SCmdMesh _jyasinzou_room_24_set0000_cmd04 = { 0x0A, 0, (u32)&_jyasinzou_room_24_meshHeader_000000B0 }; // 0x0020
SCmdObjectList _jyasinzou_room_24_set0000_cmd05 = { 0x0B, 0x02, (u32)_jyasinzou_room_24_objectList_00000040 }; // 0x0028
SCmdActorList _jyasinzou_room_24_set0000_cmd06 = { 0x01, 0x06, (u32)_jyasinzou_room_24_actorList_00000044 }; // 0x0030
SCmdEndMarker _jyasinzou_room_24_set0000_cmd07 = { 0x14, 0x00, 0x00 }; // 0x0038
s16 _jyasinzou_room_24_objectList_00000040[] = 
{
	OBJECT_JYA_OBJ,
	OBJECT_JYA_DOOR,
};

ActorEntry _jyasinzou_room_24_actorList_00000044[6] = 
{
	{ ACTOR_EN_LIGHT, 590, 1679, -875, 0, 0, 0, 0x03F4 }, //0x00000044 
	{ ACTOR_EN_LIGHT, 770, 1679, -878, 0, 0, 0, 0x03F4 }, //0x00000054 
	{ ACTOR_EN_OKARINA_TAG, 679, 1633, -816, 0, 0, 0, 0x1CB5 }, //0x00000064 
	{ ACTOR_OBJ_TSUBO, 781, 1733, -841, 0, 0, 0, 0x7403 }, //0x00000074 
	{ ACTOR_OBJ_TSUBO, 587, 1733, -844, 0, 0, 0, 0x7204 }, //0x00000084 
	{ ACTOR_EN_WONDER_TALK2, 679, 1633, -816, 0, 0, 11, 0x8AF5 }, //0x00000094 
};

static u32 padA4 = 0;
static u32 padA8 = 0;
static u32 padAC = 0;

MeshHeader2 _jyasinzou_room_24_meshHeader_000000B0 = { { 2 }, 0x04, (u32)&_jyasinzou_room_24_meshDListEntry_000000BC, (u32)&(_jyasinzou_room_24_meshDListEntry_000000BC) + sizeof(_jyasinzou_room_24_meshDListEntry_000000BC) };

MeshEntry2 _jyasinzou_room_24_meshDListEntry_000000BC[4] = 
{
	{ 570, 1718, -679, 371, (u32)_jyasinzou_room_24_dlist_00000A30, 0 },
	{ 590, 1680, -879, 23, (u32)_jyasinzou_room_24_dlist_00001390, 0 },
	{ 770, 1680, -879, 23, (u32)_jyasinzou_room_24_dlist_00001610, 0 },
	{ 680, 1633, -800, 166, (u32)_jyasinzou_room_24_dlist_00001950, (u32)_jyasinzou_room_24_dlist_00005400 },
};

static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.

static u8 unaccounted0100[] = 
{
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xB0, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
	0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xB0, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

Vtx_t _jyasinzou_room_24_vertices_00000160[9] = 
{
	 { 740, 1803, -467, 0, 1792, -1280, 35, 31, 25, 255 }, // 0x00000160
	 { 740, 1673, -547, 0, 768, 384, 158, 142, 111, 255 }, // 0x00000170
	 { 740, 1543, -467, 0, 1792, 2048, 115, 102, 78, 255 }, // 0x00000180
	 { 740, 1803, -547, 0, 768, -1280, 35, 31, 25, 255 }, // 0x00000190
	 { 740, 1543, -547, 0, 768, 2048, 115, 102, 78, 255 }, // 0x000001A0
	 { 620, 1543, -467, 0, -1024, 2048, 115, 102, 78, 255 }, // 0x000001B0
	 { 620, 1543, -547, 0, 0, 2048, 115, 102, 78, 255 }, // 0x000001C0
	 { 620, 1803, -547, 0, 0, -1280, 35, 31, 25, 255 }, // 0x000001D0
	 { 620, 1803, -467, 0, -1024, -1280, 35, 31, 25, 255 }, // 0x000001E0
};

Vtx_t _jyasinzou_room_24_vertices_000001F0[4] = 
{
	 { 620, 1803, -467, 0, 1792, 2048, 35, 31, 25, 255 }, // 0x000001F0
	 { 620, 1803, -547, 0, 1792, 2731, 35, 31, 25, 255 }, // 0x00000200
	 { 740, 1803, -547, 0, 2816, 2731, 35, 31, 25, 255 }, // 0x00000210
	 { 740, 1803, -467, 0, 2816, 2048, 35, 31, 25, 255 }, // 0x00000220
};

Vtx_t _jyasinzou_room_24_vertices_00000230[6] = 
{
	 { 740, 1543, -447, 0, 3584, 1024, 81, 72, 55, 255 }, // 0x00000230
	 { 740, 1543, -547, 0, 3584, -1536, 115, 102, 78, 255 }, // 0x00000240
	 { 680, 1543, -547, 0, 2048, -1536, 115, 102, 78, 255 }, // 0x00000250
	 { 680, 1543, -447, 0, 2048, 1024, 81, 72, 55, 255 }, // 0x00000260
	 { 620, 1543, -547, 0, 512, -1536, 115, 102, 78, 255 }, // 0x00000270
	 { 620, 1543, -447, 0, 512, 1024, 81, 72, 55, 255 }, // 0x00000280
};

Vtx_t _jyasinzou_room_24_vertices_00000290[5] = 
{
	 { 620, 1543, -547, 0, 0, 1024, 115, 102, 78, 255 }, // 0x00000290
	 { 680, 1543, -547, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x000002A0
	 { 620, 1633, -690, 0, 0, -2601, 81, 72, 55, 255 }, // 0x000002B0
	 { 740, 1633, -690, 0, 2048, -2601, 81, 72, 55, 255 }, // 0x000002C0
	 { 740, 1543, -547, 0, 2048, 1024, 115, 102, 78, 255 }, // 0x000002D0
};

Vtx_t _jyasinzou_room_24_vertices_000002E0[4] = 
{
	 { 620, 1543, -547, 0, 0, 2048, 115, 102, 78, 255 }, // 0x000002E0
	 { 620, 1633, -690, 0, 1575, 896, 81, 72, 55, 255 }, // 0x000002F0
	 { 620, 1893, -690, 0, 1575, -2432, 35, 31, 25, 255 }, // 0x00000300
	 { 620, 1803, -547, 0, 0, -1280, 35, 31, 25, 255 }, // 0x00000310
};

Vtx_t _jyasinzou_room_24_vertices_00000320[4] = 
{
	 { 620, 1803, -547, 0, 3103, 3088, 35, 31, 25, 255 }, // 0x00000320
	 { 620, 1893, -690, 0, 1638, 2355, 35, 31, 25, 255 }, // 0x00000330
	 { 740, 1893, -690, 0, 2253, 1126, 35, 31, 25, 255 }, // 0x00000340
	 { 740, 1803, -547, 0, 3718, 1859, 35, 31, 25, 255 }, // 0x00000350
};

Vtx_t _jyasinzou_room_24_vertices_00000360[11] = 
{
	 { 740, 1633, -690, 0, -1063, 896, 81, 72, 55, 255 }, // 0x00000360
	 { 740, 1543, -547, 0, 768, 2048, 115, 102, 78, 255 }, // 0x00000370
	 { 740, 1673, -547, 0, 768, 384, 158, 142, 111, 255 }, // 0x00000380
	 { 740, 1763, -690, 0, -1063, -768, 158, 142, 111, 255 }, // 0x00000390
	 { 740, 1803, -547, 0, 768, -1280, 35, 31, 25, 255 }, // 0x000003A0
	 { 740, 1893, -690, 0, -1063, -2432, 35, 31, 25, 255 }, // 0x000003B0
	 { 400, 1733, -890, 0, -3328, 2048, 81, 72, 55, 255 }, // 0x000003C0
	 { 540, 1763, -890, 0, -1536, 1664, 100, 89, 67, 255 }, // 0x000003D0
	 { 400, 1893, -890, 0, -3328, 0, 69, 62, 48, 255 }, // 0x000003E0
	 { 540, 1633, -890, 0, -1536, 3328, 93, 62, 31, 255 }, // 0x000003F0
	 { 540, 1893, -890, 0, -1536, 0, 35, 31, 25, 255 }, // 0x00000400
};

Vtx_t _jyasinzou_room_24_vertices_00000410[8] = 
{
	 { 540, 1893, -770, 0, 1792, 2731, 52, 49, 38, 255 }, // 0x00000410
	 { 400, 1893, -770, 0, 1792, 4011, 81, 72, 55, 255 }, // 0x00000420
	 { 400, 1893, -890, 0, 2816, 4011, 81, 72, 55, 255 }, // 0x00000430
	 { 540, 1893, -890, 0, 2816, 2731, 35, 31, 25, 255 }, // 0x00000440
	 { 540, 1633, -770, 0, 683, 2219, 69, 62, 48, 255 }, // 0x00000450
	 { 400, 1733, -770, 0, 1963, 1365, 81, 72, 55, 255 }, // 0x00000460
	 { 400, 1893, -770, 0, 1963, 0, 81, 72, 55, 255 }, // 0x00000470
	 { 540, 1893, -770, 0, 683, 0, 52, 49, 38, 255 }, // 0x00000480
};

Vtx_t _jyasinzou_room_24_vertices_00000490[5] = 
{
	 { 540, 1633, -830, 0, 1024, 1024, 115, 102, 78, 255 }, // 0x00000490
	 { 540, 1633, -890, 0, 2048, 1024, 93, 62, 31, 255 }, // 0x000004A0
	 { 400, 1733, -890, 0, 2048, -3685, 81, 72, 55, 255 }, // 0x000004B0
	 { 400, 1733, -770, 0, 0, -3685, 81, 72, 55, 255 }, // 0x000004C0
	 { 540, 1633, -770, 0, 0, 1024, 69, 62, 48, 255 }, // 0x000004D0
};

Vtx_t _jyasinzou_room_24_vertices_000004E0[10] = 
{
	 { 740, 1893, -690, 0, 1792, 2048, 35, 31, 25, 255 }, // 0x000004E0
	 { 620, 1893, -690, 0, 1792, 2389, 35, 31, 25, 255 }, // 0x000004F0
	 { 820, 1893, -890, 0, 2816, 2048, 35, 31, 25, 255 }, // 0x00000500
	 { 820, 1893, -790, 0, 2304, 2048, 35, 31, 25, 255 }, // 0x00000510
	 { 540, 1893, -890, 0, 2816, 2731, 35, 31, 25, 255 }, // 0x00000520
	 { 540, 1893, -770, 0, 1792, 2731, 52, 49, 38, 255 }, // 0x00000530
	 { 620, 1633, -690, 0, 0, 2219, 115, 102, 78, 255 }, // 0x00000540
	 { 540, 1633, -770, 0, 683, 2219, 69, 62, 48, 255 }, // 0x00000550
	 { 540, 1893, -770, 0, 683, 0, 52, 49, 38, 255 }, // 0x00000560
	 { 620, 1893, -690, 0, 0, 0, 35, 31, 25, 255 }, // 0x00000570
};

Vtx_t _jyasinzou_room_24_vertices_00000580[26] = 
{
	 { 820, 1893, -890, 0, 2048, 0, 35, 31, 25, 255 }, // 0x00000580
	 { 740, 1793, -890, 0, 1024, 1280, 100, 89, 67, 255 }, // 0x00000590
	 { 820, 1763, -890, 0, 2048, 1664, 81, 72, 55, 255 }, // 0x000005A0
	 { 770, 1696, -890, 0, 1408, 2522, 254, 176, 124, 255 }, // 0x000005B0
	 { 820, 1633, -890, 0, 2048, 3328, 93, 62, 31, 255 }, // 0x000005C0
	 { 740, 1633, -890, 0, 1024, 3328, 100, 89, 67, 255 }, // 0x000005D0
	 { 780, 1633, -890, 0, 1536, 3328, 151, 101, 50, 255 }, // 0x000005E0
	 { 620, 1793, -890, 0, -512, 1280, 158, 142, 111, 255 }, // 0x000005F0
	 { 590, 1696, -890, 0, -896, 2522, 254, 176, 124, 255 }, // 0x00000600
	 { 620, 1633, -890, 0, -512, 3328, 100, 89, 67, 255 }, // 0x00000610
	 { 580, 1633, -890, 0, -1024, 3328, 151, 101, 50, 255 }, // 0x00000620
	 { 540, 1633, -890, 0, -1536, 3328, 93, 62, 31, 255 }, // 0x00000630
	 { 540, 1893, -890, 0, -1536, 0, 35, 31, 25, 255 }, // 0x00000640
	 { 540, 1763, -890, 0, -1536, 1664, 100, 89, 67, 255 }, // 0x00000650
	 { 620, 1633, -890, 0, -256, 2048, 100, 89, 67, 255 }, // 0x00000660
	 { 620, 1633, -910, 0, 0, 2048, 100, 89, 67, 255 }, // 0x00000670
	 { 620, 1793, -910, 0, 0, 0, 35, 31, 25, 255 }, // 0x00000680
	 { 620, 1793, -890, 0, -256, 0, 35, 31, 25, 255 }, // 0x00000690
	 { 740, 1793, -890, 0, 1536, 0, 81, 72, 55, 255 }, // 0x000006A0
	 { 740, 1793, -910, 0, 1280, 0, 81, 72, 55, 255 }, // 0x000006B0
	 { 740, 1633, -910, 0, 1280, 2048, 81, 72, 55, 255 }, // 0x000006C0
	 { 740, 1633, -890, 0, 1536, 2048, 81, 72, 55, 255 }, // 0x000006D0
	 { 620, 1793, -890, 0, 0, 1536, 35, 31, 25, 255 }, // 0x000006E0
	 { 620, 1793, -910, 0, 0, 1280, 35, 31, 25, 255 }, // 0x000006F0
	 { 740, 1793, -910, 0, 1536, 1280, 35, 31, 25, 255 }, // 0x00000700
	 { 740, 1793, -890, 0, 1536, 1536, 35, 31, 25, 255 }, // 0x00000710
};

Vtx_t _jyasinzou_room_24_vertices_00000720[8] = 
{
	 { 400, 1893, -770, 0, 1792, 4011, 81, 72, 55, 255 }, // 0x00000720
	 { 320, 1893, -770, 0, 1792, 4693, 81, 72, 55, 255 }, // 0x00000730
	 { 320, 1893, -890, 0, 2816, 4693, 81, 72, 55, 255 }, // 0x00000740
	 { 400, 1893, -890, 0, 2816, 4011, 81, 72, 55, 255 }, // 0x00000750
	 { 400, 1733, -770, 0, 1963, 1365, 81, 72, 55, 255 }, // 0x00000760
	 { 320, 1733, -770, 0, 2645, 1365, 81, 72, 55, 255 }, // 0x00000770
	 { 320, 1893, -770, 0, 2645, 0, 81, 72, 55, 255 }, // 0x00000780
	 { 400, 1893, -770, 0, 1963, 0, 81, 72, 55, 255 }, // 0x00000790
};

Vtx_t _jyasinzou_room_24_vertices_000007A0[4] = 
{
	 { 400, 1893, -890, 0, -3328, 0, 69, 62, 48, 255 }, // 0x000007A0
	 { 320, 1893, -890, 0, -4352, 0, 69, 62, 48, 255 }, // 0x000007B0
	 { 320, 1733, -890, 0, -4352, 2048, 81, 72, 55, 255 }, // 0x000007C0
	 { 400, 1733, -890, 0, -3328, 2048, 81, 72, 55, 255 }, // 0x000007D0
};

Vtx_t _jyasinzou_room_24_vertices_000007E0[12] = 
{
	 { 400, 1733, -890, 0, 1024, 1934, 81, 72, 55, 255 }, // 0x000007E0
	 { 320, 1733, -890, 0, 1024, 1479, 81, 72, 55, 255 }, // 0x000007F0
	 { 320, 1733, -770, 0, 0, 1479, 81, 72, 55, 255 }, // 0x00000800
	 { 400, 1733, -770, 0, 0, 1934, 81, 72, 55, 255 }, // 0x00000810
	 { 620, 1543, -447, 0, 512, 2048, 81, 72, 55, 255 }, // 0x00000820
	 { 620, 1543, -467, 0, 768, 2048, 100, 89, 67, 255 }, // 0x00000830
	 { 620, 1703, -467, 0, 768, 0, 69, 62, 48, 255 }, // 0x00000840
	 { 620, 1703, -447, 0, 512, 0, 69, 62, 48, 255 }, // 0x00000850
	 { 620, 1703, -447, 0, 1024, 753, 69, 62, 48, 255 }, // 0x00000860
	 { 620, 1703, -467, 0, 768, 753, 69, 62, 48, 255 }, // 0x00000870
	 { 740, 1703, -447, 0, 1024, 2289, 69, 62, 48, 255 }, // 0x00000880
	 { 740, 1703, -467, 0, 768, 2289, 69, 62, 48, 255 }, // 0x00000890
};

Vtx_t _jyasinzou_room_24_vertices_000008A0[4] = 
{
	 { 740, 1703, -447, 0, 2048, 0, 69, 62, 48, 255 }, // 0x000008A0
	 { 740, 1703, -467, 0, 1792, 0, 69, 62, 48, 255 }, // 0x000008B0
	 { 740, 1543, -467, 0, 1792, 2048, 100, 89, 67, 255 }, // 0x000008C0
	 { 740, 1543, -447, 0, 2048, 2048, 81, 72, 55, 255 }, // 0x000008D0
};

Vtx_t _jyasinzou_room_24_vertices_000008E0[4] = 
{
	 { 620, 1703, -467, 0, 1792, 0, 115, 102, 78, 255 }, // 0x000008E0
	 { 620, 1803, -467, 0, 1792, -683, 35, 31, 25, 255 }, // 0x000008F0
	 { 740, 1803, -467, 0, 2816, -683, 35, 31, 25, 255 }, // 0x00000900
	 { 740, 1703, -467, 0, 2816, 0, 115, 102, 78, 255 }, // 0x00000910
};

Vtx_t _jyasinzou_room_24_vertices_00000920[9] = 
{
	 { 740, 1893, -690, 0, 0, 0, 35, 31, 25, 255 }, // 0x00000920
	 { 820, 1893, -790, 0, 0, 1639, 35, 31, 25, 255 }, // 0x00000930
	 { 740, 1763, -690, 0, 1664, 0, 158, 142, 111, 255 }, // 0x00000940
	 { 820, 1633, -790, 0, 3328, 1639, 81, 72, 55, 255 }, // 0x00000950
	 { 740, 1633, -690, 0, 3328, 0, 81, 72, 55, 255 }, // 0x00000960
	 { 820, 1893, -790, 0, 2048, 0, 35, 31, 25, 255 }, // 0x00000970
	 { 820, 1893, -890, 0, 768, 0, 35, 31, 25, 255 }, // 0x00000980
	 { 820, 1633, -890, 0, 768, 3328, 93, 62, 31, 255 }, // 0x00000990
	 { 820, 1633, -790, 0, 2048, 3328, 81, 72, 55, 255 }, // 0x000009A0
};

Vtx_t _jyasinzou_room_24_vertices_000009B0[8] = 
{
	 { 320, 1526, -450, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009B0
	 { 820, 1526, -450, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009C0
	 { 320, 1613, -942, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009D0
	 { 820, 1613, -942, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009E0
	 { 320, 1841, -394, 0, 0, 0, 0, 0, 0, 0 }, // 0x000009F0
	 { 820, 1841, -394, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A00
	 { 320, 1928, -886, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A10
	 { 820, 1928, -886, 0, 0, 0, 0, 0, 0, 0 }, // 0x00000A20
};

Gfx _jyasinzou_room_24_dlist_00000A30[] =
{
	gsDPPipeSync(), // 0x00000A30
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00000A38
	gsSPVertex(_jyasinzou_room_24_vertices_000009B0, 8, 0), // 0x00000A40
	gsSPCullDisplayList(0, 7), // 0x00000A48
	gsDPPipeSync(), // 0x00000A50
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00000A58
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00000A60
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00000A68
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000A70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000A78
	gsDPLoadSync(), // 0x00000A80
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000A88
	gsDPPipeSync(), // 0x00000A90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000A98
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000AA0
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000AA8
	gsDPTileSync(), // 0x00000AB0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000AB8
	gsDPLoadSync(), // 0x00000AC0
	gsDPLoadTLUTCmd(7, 15), // 0x00000AC8
	gsDPPipeSync(), // 0x00000AD0
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00000AD8
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00000AE0
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00000AE8
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00000AF0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00000AF8
	gsSPVertex(_jyasinzou_room_24_vertices_00000160, 9, 0), // 0x00000B00
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0), // 0x00000B08
	gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0), // 0x00000B10
	gsSP1Triangle(5, 7, 8, 0), // 0x00000B18
	gsDPPipeSync(), // 0x00000B20
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00004B38), // 0x00000B28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000B30
	gsDPLoadSync(), // 0x00000B38
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000B40
	gsDPPipeSync(), // 0x00000B48
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000B50
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000B58
	gsSPVertex(_jyasinzou_room_24_vertices_000001F0, 4, 0), // 0x00000B60
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000B68
	gsDPPipeSync(), // 0x00000B70
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00003338), // 0x00000B78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x00000B80
	gsDPLoadSync(), // 0x00000B88
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000B90
	gsDPPipeSync(), // 0x00000B98
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x00000BA0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000BA8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x00000BB0
	gsDPTileSync(), // 0x00000BB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000BC0
	gsDPLoadSync(), // 0x00000BC8
	gsDPLoadTLUTCmd(7, 255), // 0x00000BD0
	gsDPPipeSync(), // 0x00000BD8
	gsSPVertex(_jyasinzou_room_24_vertices_00000230, 6, 0), // 0x00000BE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000BE8
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00000BF0
	gsDPPipeSync(), // 0x00000BF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00004338), // 0x00000C00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000C08
	gsDPLoadSync(), // 0x00000C10
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000C18
	gsDPPipeSync(), // 0x00000C20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000C28
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000C30
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00000C38
	gsDPTileSync(), // 0x00000C40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000C48
	gsDPLoadSync(), // 0x00000C50
	gsDPLoadTLUTCmd(7, 255), // 0x00000C58
	gsDPPipeSync(), // 0x00000C60
	gsSPVertex(_jyasinzou_room_24_vertices_00000290, 5, 0), // 0x00000C68
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000C70
	gsSP1Triangle(1, 4, 3, 0), // 0x00000C78
	gsDPPipeSync(), // 0x00000C80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000C88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000C90
	gsDPLoadSync(), // 0x00000C98
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000CA0
	gsDPPipeSync(), // 0x00000CA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000CB0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000CB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000CC0
	gsDPTileSync(), // 0x00000CC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000CD0
	gsDPLoadSync(), // 0x00000CD8
	gsDPLoadTLUTCmd(7, 15), // 0x00000CE0
	gsDPPipeSync(), // 0x00000CE8
	gsSPVertex(_jyasinzou_room_24_vertices_000002E0, 4, 0), // 0x00000CF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000CF8
	gsDPPipeSync(), // 0x00000D00
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00003F38), // 0x00000D08
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00000D10
	gsDPLoadSync(), // 0x00000D18
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00000D20
	gsDPPipeSync(), // 0x00000D28
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00000D30
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00000D38
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00000D40
	gsDPTileSync(), // 0x00000D48
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000D50
	gsDPLoadSync(), // 0x00000D58
	gsDPLoadTLUTCmd(7, 255), // 0x00000D60
	gsDPPipeSync(), // 0x00000D68
	gsSPVertex(_jyasinzou_room_24_vertices_00000320, 4, 0), // 0x00000D70
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000D78
	gsDPPipeSync(), // 0x00000D80
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000D88
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000D90
	gsDPLoadSync(), // 0x00000D98
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000DA0
	gsDPPipeSync(), // 0x00000DA8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000DB0
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000DB8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000DC0
	gsDPTileSync(), // 0x00000DC8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000DD0
	gsDPLoadSync(), // 0x00000DD8
	gsDPLoadTLUTCmd(7, 15), // 0x00000DE0
	gsDPPipeSync(), // 0x00000DE8
	gsSPVertex(_jyasinzou_room_24_vertices_00000360, 11, 0), // 0x00000DF0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000DF8
	gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0), // 0x00000E00
	gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0), // 0x00000E08
	gsSP1Triangle(7, 10, 8, 0), // 0x00000E10
	gsDPPipeSync(), // 0x00000E18
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00004B38), // 0x00000E20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000E28
	gsDPLoadSync(), // 0x00000E30
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000E38
	gsDPPipeSync(), // 0x00000E40
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000E48
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000E50
	gsSPVertex(_jyasinzou_room_24_vertices_00000410, 8, 0), // 0x00000E58
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000E60
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00000E68
	gsDPPipeSync(), // 0x00000E70
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00004338), // 0x00000E78
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 6, 0), // 0x00000E80
	gsDPLoadSync(), // 0x00000E88
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x00000E90
	gsDPPipeSync(), // 0x00000E98
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 0, 6, 0), // 0x00000EA0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x00000EA8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00000EB0
	gsDPTileSync(), // 0x00000EB8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000EC0
	gsDPLoadSync(), // 0x00000EC8
	gsDPLoadTLUTCmd(7, 255), // 0x00000ED0
	gsDPPipeSync(), // 0x00000ED8
	gsSPVertex(_jyasinzou_room_24_vertices_00000490, 5, 0), // 0x00000EE0
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000EE8
	gsSP1Triangle(4, 0, 3, 0), // 0x00000EF0
	gsDPPipeSync(), // 0x00000EF8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00004B38), // 0x00000F00
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000F08
	gsDPLoadSync(), // 0x00000F10
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000F18
	gsDPPipeSync(), // 0x00000F20
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000F28
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000F30
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00018000), // 0x00000F38
	gsDPTileSync(), // 0x00000F40
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00000F48
	gsDPLoadSync(), // 0x00000F50
	gsDPLoadTLUTCmd(7, 15), // 0x00000F58
	gsDPPipeSync(), // 0x00000F60
	gsSPVertex(_jyasinzou_room_24_vertices_000004E0, 10, 0), // 0x00000F68
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00000F70
	gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0), // 0x00000F78
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0), // 0x00000F80
	gsDPPipeSync(), // 0x00000F88
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00000F90
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00000F98
	gsDPLoadSync(), // 0x00000FA0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00000FA8
	gsDPPipeSync(), // 0x00000FB0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00000FB8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00000FC0
	gsSPVertex(_jyasinzou_room_24_vertices_00000580, 26, 0), // 0x00000FC8
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00000FD0
	gsSP2Triangles(3, 4, 2, 0, 1, 5, 3, 0), // 0x00000FD8
	gsSP2Triangles(5, 6, 3, 0, 6, 4, 3, 0), // 0x00000FE0
	gsSP2Triangles(0, 7, 1, 0, 7, 8, 9, 0), // 0x00000FE8
	gsSP2Triangles(8, 10, 9, 0, 8, 11, 10, 0), // 0x00000FF0
	gsSP2Triangles(0, 12, 7, 0, 12, 13, 7, 0), // 0x00000FF8
	gsSP2Triangles(13, 8, 7, 0, 13, 11, 8, 0), // 0x00001000
	gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0), // 0x00001008
	gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0), // 0x00001010
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0), // 0x00001018
	gsDPPipeSync(), // 0x00001020
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00004B38), // 0x00001028
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001030
	gsDPLoadSync(), // 0x00001038
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001040
	gsDPPipeSync(), // 0x00001048
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001050
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001058
	gsSPVertex(_jyasinzou_room_24_vertices_00000720, 8, 0), // 0x00001060
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001068
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001070
	gsDPPipeSync(), // 0x00001078
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00001080
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001088
	gsDPLoadSync(), // 0x00001090
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001098
	gsDPPipeSync(), // 0x000010A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000010A8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000010B0
	gsSPVertex(_jyasinzou_room_24_vertices_000007A0, 4, 0), // 0x000010B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000010C0
	gsDPPipeSync(), // 0x000010C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00004B38), // 0x000010D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000010D8
	gsDPLoadSync(), // 0x000010E0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000010E8
	gsDPPipeSync(), // 0x000010F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000010F8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001100
	gsSPVertex(_jyasinzou_room_24_vertices_000007E0, 12, 0), // 0x00001108
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001110
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001118
	gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0), // 0x00001120
	gsDPPipeSync(), // 0x00001128
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x00001130
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001138
	gsDPLoadSync(), // 0x00001140
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001148
	gsDPPipeSync(), // 0x00001150
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x00001158
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001160
	gsSPVertex(_jyasinzou_room_24_vertices_000008A0, 4, 0), // 0x00001168
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001170
	gsDPPipeSync(), // 0x00001178
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00004B38), // 0x00001180
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x00001188
	gsDPLoadSync(), // 0x00001190
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x00001198
	gsDPPipeSync(), // 0x000011A0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000011A8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x000011B0
	gsSPVertex(_jyasinzou_room_24_vertices_000008E0, 4, 0), // 0x000011B8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000011C0
	gsDPPipeSync(), // 0x000011C8
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00019320), // 0x000011D0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 6, 0, 0, 6, 0), // 0x000011D8
	gsDPLoadSync(), // 0x000011E0
	gsDPLoadBlock(7, 0, 0, 1023, 512), // 0x000011E8
	gsDPPipeSync(), // 0x000011F0
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0, 0, 0, 0, 6, 0, 0, 6, 0), // 0x000011F8
	gsDPSetTileSize(0, 0, 0, 252, 252), // 0x00001200
	gsSPVertex(_jyasinzou_room_24_vertices_00000920, 9, 0), // 0x00001208
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0), // 0x00001210
	gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0), // 0x00001218
	gsSP1Triangle(5, 7, 8, 0), // 0x00001220
	gsSPEndDisplayList(), // 0x00001228
};

Vtx_t _jyasinzou_room_24_vertices_00001230[6] = 
{
	 { 576, 1696, -888, 0, 0, 2048, 197, 140, 82, 255 }, // 0x00001230
	 { 604, 1696, -888, 0, 2048, 2048, 197, 140, 82, 255 }, // 0x00001240
	 { 590, 1663, -888, 0, 1024, 0, 113, 75, 37, 255 }, // 0x00001250
	 { 576, 1696, -888, 0, 0, 2048, 197, 140, 82, 255 }, // 0x00001260
	 { 590, 1690, -865, 0, 2048, 2048, 241, 228, 215, 255 }, // 0x00001270
	 { 590, 1690, -865, 0, 0, 2048, 241, 228, 215, 255 }, // 0x00001280
};

Vtx_t _jyasinzou_room_24_vertices_00001290[8] = 
{
	 { 598, 1698, -892, 0, 0, 0, 81, 72, 55, 255 }, // 0x00001290
	 { 598, 1691, -892, 0, 512, 0, 81, 72, 55, 255 }, // 0x000012A0
	 { 598, 1691, -883, 0, 512, 1024, 113, 75, 37, 255 }, // 0x000012B0
	 { 598, 1698, -883, 0, 0, 1024, 209, 164, 118, 255 }, // 0x000012C0
	 { 582, 1698, -883, 0, 0, 1024, 209, 164, 118, 255 }, // 0x000012D0
	 { 582, 1691, -883, 0, 512, 1024, 113, 75, 37, 255 }, // 0x000012E0
	 { 582, 1691, -892, 0, 512, 0, 81, 72, 55, 255 }, // 0x000012F0
	 { 582, 1698, -892, 0, 0, 0, 81, 72, 55, 255 }, // 0x00001300
};

Vtx_t _jyasinzou_room_24_vertices_00001310[8] = 
{
	 { 586, 1663, -894, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001310
	 { 600, 1663, -871, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001320
	 { 597, 1697, -900, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001330
	 { 611, 1697, -877, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001340
	 { 568, 1671, -884, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001350
	 { 582, 1671, -860, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001360
	 { 579, 1705, -890, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001370
	 { 592, 1705, -866, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001380
};

Gfx _jyasinzou_room_24_dlist_00001390[] =
{
	gsDPPipeSync(), // 0x00001390
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001398
	gsSPVertex(_jyasinzou_room_24_vertices_00001310, 8, 0), // 0x000013A0
	gsSPCullDisplayList(0, 7), // 0x000013A8
	gsDPPipeSync(), // 0x000013B0
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x000013B8
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x000013C0
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x000013C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00001B38), // 0x000013D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 1, 5, 0), // 0x000013D8
	gsDPLoadSync(), // 0x000013E0
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x000013E8
	gsDPPipeSync(), // 0x000013F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 6, 0, 1, 5, 0), // 0x000013F8
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001400
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001408
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001410
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00001418
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x00001420
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001428
	gsSPVertex(_jyasinzou_room_24_vertices_00001230, 6, 0), // 0x00001430
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0), // 0x00001438
	gsSP1Triangle(2, 1, 5, 0), // 0x00001440
	gsDPPipeSync(), // 0x00001448
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00003B38), // 0x00001450
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 4, 0), // 0x00001458
	gsDPLoadSync(), // 0x00001460
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001468
	gsDPPipeSync(), // 0x00001470
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 2, 4, 0), // 0x00001478
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00001480
	gsDPSetPrimColor(0, 0, 245, 244, 241, 255), // 0x00001488
	gsSPVertex(_jyasinzou_room_24_vertices_00001290, 8, 0), // 0x00001490
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001498
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x000014A0
	gsSPEndDisplayList(), // 0x000014A8
};

Vtx_t _jyasinzou_room_24_vertices_000014B0[6] = 
{
	 { 756, 1696, -888, 0, 0, 2048, 197, 140, 82, 255 }, // 0x000014B0
	 { 784, 1696, -888, 0, 2048, 2048, 197, 140, 82, 255 }, // 0x000014C0
	 { 770, 1663, -888, 0, 1024, 0, 113, 75, 37, 255 }, // 0x000014D0
	 { 756, 1696, -888, 0, 0, 2048, 197, 140, 82, 255 }, // 0x000014E0
	 { 770, 1690, -865, 0, 2048, 2048, 241, 228, 215, 255 }, // 0x000014F0
	 { 770, 1690, -865, 0, 0, 2048, 241, 228, 215, 255 }, // 0x00001500
};

Vtx_t _jyasinzou_room_24_vertices_00001510[8] = 
{
	 { 778, 1698, -892, 0, 0, 0, 81, 72, 55, 255 }, // 0x00001510
	 { 778, 1691, -892, 0, 512, 0, 81, 72, 55, 255 }, // 0x00001520
	 { 778, 1691, -883, 0, 512, 1024, 113, 75, 37, 255 }, // 0x00001530
	 { 778, 1698, -883, 0, 0, 1024, 209, 164, 118, 255 }, // 0x00001540
	 { 762, 1698, -883, 0, 0, 1024, 209, 164, 118, 255 }, // 0x00001550
	 { 762, 1691, -883, 0, 512, 1024, 113, 75, 37, 255 }, // 0x00001560
	 { 762, 1691, -892, 0, 512, 0, 81, 72, 55, 255 }, // 0x00001570
	 { 762, 1698, -892, 0, 0, 0, 81, 72, 55, 255 }, // 0x00001580
};

Vtx_t _jyasinzou_room_24_vertices_00001590[8] = 
{
	 { 766, 1663, -894, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001590
	 { 780, 1663, -871, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015A0
	 { 777, 1697, -900, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015B0
	 { 791, 1697, -877, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015C0
	 { 748, 1671, -884, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015D0
	 { 762, 1671, -860, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015E0
	 { 759, 1705, -890, 0, 0, 0, 0, 0, 0, 0 }, // 0x000015F0
	 { 772, 1705, -866, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001600
};

Gfx _jyasinzou_room_24_dlist_00001610[] =
{
	gsDPPipeSync(), // 0x00001610
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001618
	gsSPVertex(_jyasinzou_room_24_vertices_00001590, 8, 0), // 0x00001620
	gsSPCullDisplayList(0, 7), // 0x00001628
	gsDPPipeSync(), // 0x00001630
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001638
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00001640
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001648
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00001B38), // 0x00001650
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 1, 5, 0), // 0x00001658
	gsDPLoadSync(), // 0x00001660
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00001668
	gsDPPipeSync(), // 0x00001670
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 6, 0, 1, 5, 0), // 0x00001678
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00001680
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, TEXEL0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001688
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8113078), // 0x00001690
	gsSPGeometryMode(0xFF0E0400, 0x00000000), // 0x00001698
	gsSPGeometryMode(0xFF000000, 0x00010000), // 0x000016A0
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x000016A8
	gsSPVertex(_jyasinzou_room_24_vertices_000014B0, 6, 0), // 0x000016B0
	gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0), // 0x000016B8
	gsSP1Triangle(2, 1, 5, 0), // 0x000016C0
	gsDPPipeSync(), // 0x000016C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00003B38), // 0x000016D0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 2, 4, 0), // 0x000016D8
	gsDPLoadSync(), // 0x000016E0
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x000016E8
	gsDPPipeSync(), // 0x000016F0
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, 0, 5, 0, 2, 4, 0), // 0x000016F8
	gsDPSetTileSize(0, 0, 0, 60, 124), // 0x00001700
	gsDPSetPrimColor(0, 0, 245, 244, 241, 255), // 0x00001708
	gsSPVertex(_jyasinzou_room_24_vertices_00001510, 8, 0), // 0x00001710
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001718
	gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), // 0x00001720
	gsSPEndDisplayList(), // 0x00001728
};

Vtx_t _jyasinzou_room_24_vertices_00001730[8] = 
{
	 { 740, 1633, -890, 0, 4096, -256, 81, 72, 55, 255 }, // 0x00001730
	 { 740, 1633, -910, 0, 4096, -768, 100, 89, 67, 255 }, // 0x00001740
	 { 620, 1633, -910, 0, 0, -768, 100, 89, 67, 255 }, // 0x00001750
	 { 620, 1633, -890, 0, 0, -256, 81, 72, 55, 255 }, // 0x00001760
	 { 680, 1633, -840, 0, 2048, 1024, 177, 164, 138, 255 }, // 0x00001770
	 { 620, 1633, -840, 0, 0, 1024, 158, 142, 111, 255 }, // 0x00001780
	 { 740, 1633, -890, 0, 4096, -256, 81, 72, 55, 255 }, // 0x00001790
	 { 740, 1633, -840, 0, 4096, 1024, 158, 142, 111, 255 }, // 0x000017A0
};

Vtx_t _jyasinzou_room_24_vertices_000017B0[18] = 
{
	 { 780, 1633, -830, 0, 819, -614, 134, 119, 89, 255 }, // 0x000017B0
	 { 820, 1633, -790, 0, 1434, -819, 69, 62, 48, 255 }, // 0x000017C0
	 { 820, 1633, -830, 0, 1024, -1024, 115, 102, 78, 255 }, // 0x000017D0
	 { 820, 1633, -890, 0, 410, -1331, 93, 62, 31, 255 }, // 0x000017E0
	 { 780, 1633, -890, 0, 205, -922, 151, 101, 50, 255 }, // 0x000017F0
	 { 740, 1633, -890, 0, 0, -512, 81, 72, 55, 255 }, // 0x00001800
	 { 740, 1633, -840, 0, 512, -256, 158, 142, 111, 255 }, // 0x00001810
	 { 740, 1633, -690, 0, 2048, 512, 69, 62, 48, 255 }, // 0x00001820
	 { 680, 1633, -840, 0, 205, 358, 177, 164, 138, 255 }, // 0x00001830
	 { 680, 1633, -690, 0, 1741, 1126, 115, 102, 78, 255 }, // 0x00001840
	 { 620, 1633, -690, 0, 1433, 1741, 69, 62, 48, 255 }, // 0x00001850
	 { 620, 1633, -840, 0, -102, 973, 158, 142, 111, 255 }, // 0x00001860
	 { 540, 1633, -770, 0, 205, 2150, 69, 62, 48, 255 }, // 0x00001870
	 { 580, 1633, -830, 0, -205, 1434, 134, 119, 89, 255 }, // 0x00001880
	 { 540, 1633, -830, 0, -410, 1843, 115, 102, 78, 255 }, // 0x00001890
	 { 620, 1633, -890, 0, -614, 717, 81, 72, 55, 255 }, // 0x000018A0
	 { 580, 1633, -890, 0, -819, 1126, 151, 101, 50, 255 }, // 0x000018B0
	 { 540, 1633, -890, 0, -1024, 1536, 93, 62, 31, 255 }, // 0x000018C0
};

Vtx_t _jyasinzou_room_24_vertices_000018D0[8] = 
{
	 { 540, 1633, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018D0
	 { 820, 1633, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018E0
	 { 540, 1633, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x000018F0
	 { 820, 1633, -910, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001900
	 { 540, 1633, -690, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001910
	 { 820, 1633, -690, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001920
	 { 540, 1633, -690, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001930
	 { 820, 1633, -690, 0, 0, 0, 0, 0, 0, 0 }, // 0x00001940
};

Gfx _jyasinzou_room_24_dlist_00001950[] =
{
	gsDPPipeSync(), // 0x00001950
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00001958
	gsSPVertex(_jyasinzou_room_24_vertices_000018D0, 8, 0), // 0x00001960
	gsSPCullDisplayList(0, 7), // 0x00001968
	gsDPPipeSync(), // 0x00001970
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00001978
	gsDPPipeSync(), // 0x00001980
	gsSPSetOtherMode(0xE3, 14, 2, 0x00008000), // 0x00001988
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00001990
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00002B38), // 0x00001998
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 1, 6, 0), // 0x000019A0
	gsDPLoadSync(), // 0x000019A8
	gsDPLoadBlock(7, 0, 0, 1023, 256), // 0x000019B0
	gsDPPipeSync(), // 0x000019B8
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, 0, 0, 0, 5, 0, 1, 6, 0), // 0x000019C0
	gsDPSetTileSize(0, 0, 0, 252, 124), // 0x000019C8
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017DE0), // 0x000019D0
	gsDPTileSync(), // 0x000019D8
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x000019E0
	gsDPLoadSync(), // 0x000019E8
	gsDPLoadTLUTCmd(7, 255), // 0x000019F0
	gsDPPipeSync(), // 0x000019F8
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, 0, 0, 0, 1, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, 0, 0, 0, COMBINED), // 0x00001A00
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8112078), // 0x00001A08
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00001A10
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00001A18
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255), // 0x00001A20
	gsSPVertex(_jyasinzou_room_24_vertices_00001730, 8, 0), // 0x00001A28
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001A30
	gsSP2Triangles(4, 3, 5, 0, 0, 3, 4, 0), // 0x00001A38
	gsSP1Triangle(6, 4, 7, 0), // 0x00001A40
	gsDPPipeSync(), // 0x00001A48
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_00003F38), // 0x00001A50
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 7, 0, 0, 5, 0, 0, 5, 0), // 0x00001A58
	gsDPLoadSync(), // 0x00001A60
	gsDPLoadBlock(7, 0, 0, 511, 512), // 0x00001A68
	gsDPPipeSync(), // 0x00001A70
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, 0, 0, 0, 5, 0, 0, 5, 0), // 0x00001A78
	gsDPSetTileSize(0, 0, 0, 124, 124), // 0x00001A80
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_scene_tex_00017BE0), // 0x00001A88
	gsDPTileSync(), // 0x00001A90
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, 7, 0, 0, 0, 0, 0, 0, 0), // 0x00001A98
	gsDPLoadSync(), // 0x00001AA0
	gsDPLoadTLUTCmd(7, 255), // 0x00001AA8
	gsDPPipeSync(), // 0x00001AB0
	gsSPVertex(_jyasinzou_room_24_vertices_000017B0, 18, 0), // 0x00001AB8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x00001AC0
	gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0), // 0x00001AC8
	gsSP2Triangles(0, 5, 6, 0, 0, 6, 1, 0), // 0x00001AD0
	gsSP2Triangles(7, 1, 6, 0, 7, 8, 9, 0), // 0x00001AD8
	gsSP2Triangles(8, 7, 6, 0, 8, 10, 9, 0), // 0x00001AE0
	gsSP2Triangles(10, 8, 11, 0, 12, 10, 11, 0), // 0x00001AE8
	gsSP2Triangles(12, 11, 13, 0, 14, 12, 13, 0), // 0x00001AF0
	gsSP2Triangles(13, 11, 15, 0, 15, 16, 13, 0), // 0x00001AF8
	gsSP2Triangles(17, 14, 13, 0, 16, 17, 13, 0), // 0x00001B00
	gsSPEndDisplayList(), // 0x00001B08
};

static u8 unaccounted1B10[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0x30, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0x90, 
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x16, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x19, 0x50, 
	0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 _jyasinzou_room_24_tex_00001B38[] = 
{
	0x7359735973597359, 0x7359735973597359, 0x7359735973597359, 0x7359735973597359,  // 0x00001B38 
	0x7359735973597359, 0x7359735973597359, 0x7359735973597359, 0x7359735973597359,  // 0x00001B58 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00001B78 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00001B98 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00001BB8 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00001BD8 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00001BF8 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00001C18 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00001C38 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00001C58 
	0x20C620C65A936317, 0x20C620C620C620C6, 0x20C620C64A0F5A93, 0x20C620C620C620C6,  // 0x00001C78 
	0x20C620C639CD5251, 0x20C620C620C620C6, 0x20C620C64A0F62D5, 0x20C620C620C620C6,  // 0x00001C98 
	0x20C620C65AD5735B, 0x20C620C620C620C6, 0x20C620C64A0F841D, 0x20C620C620C620C6,  // 0x00001CB8 
	0x20C620C631496317, 0x20C620C620C620C6, 0x20C620C64A0F7B9B, 0x20C620C620C620C6,  // 0x00001CD8 
	0x20C620C6631783DD, 0x20C620C620C620C6, 0x20C620C64A0F739B, 0x20C620C620C620C6,  // 0x00001CF8 
	0x20C620C6318B7B9B, 0x20C620C620C620C6, 0x20C620C64A0F6B59, 0x20C620C620C620C6,  // 0x00001D18 
	0x20C620C662D57BDD, 0x20C620C620C620C6, 0x20C620C65A93739B, 0x20C620C620C620C6,  // 0x00001D38 
	0x20C620C6318B6B59, 0x20C620C620C620C6, 0x20C620C64A0F739B, 0x20C620C620C620C6,  // 0x00001D58 
	0x20C620C652516B19, 0x20C620C620C620C6, 0x20C620C65A9383DD, 0x20C620C620C620C6,  // 0x00001D78 
	0x20C620C639CD6317, 0x20C620C620C620C6, 0x20C620C64A0F83DD, 0x20C620C620C620C6,  // 0x00001D98 
	0x20C620C64A0F5A93, 0x20C620C620C620C6, 0x20C620C65A93841F, 0x20C620C620C620C6,  // 0x00001DB8 
	0x20C620C64A0F5A93, 0x20C620C620C620C6, 0x20C620C64A0F841F, 0x20C620C620C620C6,  // 0x00001DD8 
	0x7B9B841D8C618C61, 0x8C1F83DD739B62D7, 0x39CD318D5A938C61, 0x4A0F314941CD5251,  // 0x00001DF8 
	0x62D573598C618C61, 0x8C1F841F7B9B6B17, 0x62D552514A0F8C61, 0x4A0F318D41CF5A93,  // 0x00001E18 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x41CD398B52938C61, 0x4A0F398B39CD4A0F,  // 0x00001E38 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F41CD398B, 0x398B398B4A0F8C1F, 0x4A0F3149398B4A0F,  // 0x00001E58 
	0x20C620C63149318B, 0x20C620C620C620C6, 0x20C620C65293841F, 0x20C620C620C620C6,  // 0x00001E78 
	0x20C620C631494A11, 0x20C620C620C620C6, 0x20C620C64A0F83DD, 0x20C620C620C620C6,  // 0x00001E98 
	0x20C620C64A0F6315, 0x20C620C620C620C6, 0x20C620C652517359, 0x20C620C620C620C6,  // 0x00001EB8 
	0x20C620C64A0F6B59, 0x20C620C620C620C6, 0x20C620C64A0F6B17, 0x20C620C620C620C6,  // 0x00001ED8 
	0x20C620C64A0F739B, 0x20C620C620C620C6, 0x20C620C6398B5AD5, 0x20C620C620C620C6,  // 0x00001EF8 
	0x20C620C64A0F739B, 0x20C620C620C620C6, 0x20C620C639CD5A93, 0x20C620C620C620C6,  // 0x00001F18 
	0x20C620C64A0F7BDD, 0x20C620C620C620C6, 0x20C620C6318B5251, 0x20C620C620C620C6,  // 0x00001F38 
	0x20C620C64A0F7BDD, 0x20C620C620C620C6, 0x20C620C6398B5251, 0x20C620C620C620C6,  // 0x00001F58 
	0x20C620C64A0F8C1F, 0x20C620C620C620C6, 0x20C620C63149318B, 0x20C620C620C620C6,  // 0x00001F78 
	0x20C620C64A0F8C1F, 0x20C620C620C620C6, 0x20C620C631494A11, 0x20C620C620C620C6,  // 0x00001F98 
	0x20C620C64A0F94A3, 0x20C620C620C620C6, 0x20C620C64A0F4A0F, 0x20C620C620C620C6,  // 0x00001FB8 
	0x20C620C64A0F94A3, 0x20C620C620C620C6, 0x20C620C64A0F5A93, 0x20C620C620C620C6,  // 0x00001FD8 
	0x39CD318B4A0F9CA5, 0x4A0F41CF4A515AD5, 0x739B7B9B7BDD7BDD, 0x739B735962D5420F,  // 0x00001FF8 
	0x39CD318B4A0F9CA5, 0x4A0F41CD41CD5A93, 0x4A515AD56B5983DD, 0x7BDD739B73596315,  // 0x00002018 
	0x318B29494A0F94A3, 0x39CD2949318B39CD, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F41CD398B,  // 0x00002038 
	0x318B29496B178C21, 0x39CD3149398B420D, 0x39CD4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002058 
	0x20C620C64A0F8C61, 0x20C620C620C620C6, 0x20C620C62949420F, 0x20C620C620C620C6,  // 0x00002078 
	0x20C620C64A0F83DD, 0x20C620C620C620C6, 0x20C620C62949420F, 0x20C620C620C620C6,  // 0x00002098 
	0x20C620C64A0F83DD, 0x20C620C620C620C6, 0x20C620C6314B5293, 0x20C620C620C620C6,  // 0x000020B8 
	0x20C620C6420F7B9D, 0x20C620C620C620C6, 0x20C620C6314B5AD5, 0x20C620C620C620C6,  // 0x000020D8 
	0x20C620C64A0F7B9B, 0x20C620C620C620C6, 0x20C620C641CD6317, 0x20C620C620C620C6,  // 0x000020F8 
	0x20C620C641CD6B59, 0x20C620C620C620C6, 0x20C620C6398B6317, 0x20C620C620C620C6,  // 0x00002118 
	0x20C620C6398B4A0F, 0x20C620C620C620C6, 0x20C620C64A0F7BDD, 0x20C620C620C620C6,  // 0x00002138 
	0x20C620C6318B5AD5, 0x20C620C620C620C6, 0x20C620C64A0F739B, 0x20C620C620C620C6,  // 0x00002158 
	0x20C620C6314939CD, 0x20C620C620C620C6, 0x20C620C64A0F83DD, 0x20C620C620C620C6,  // 0x00002178 
	0x20C620C629495A93, 0x20C620C620C620C6, 0x20C620C64A0F7BDD, 0x20C620C620C620C6,  // 0x00002198 
	0x20C620C629492949, 0x20C620C620C620C6, 0x20C620C64A0F841F, 0x20C620C620C620C6,  // 0x000021B8 
	0x20C620C62949420F, 0x20C620C620C620C6, 0x20C620C64A0F841D, 0x20C620C620C620C6,  // 0x000021D8 
	0x20C620C64A0F4A0F, 0x20C620C620C620C6, 0x20C620C65A938C1F, 0x20C620C620C620C6,  // 0x000021F8 
	0x20C620C64A0F5A93, 0x20C620C620C620C6, 0x20C620C64A0F8C1F, 0x20C620C620C620C6,  // 0x00002218 
	0x7B9B841D8C618C61, 0x8C1F83DD739B62D7, 0x39CD318D5A938C61, 0x4A0F41CD52516317,  // 0x00002238 
	0x73597BDB841F841F, 0x7B9B735963175AD5, 0x525341CF4A0F8C61, 0x4A0F318D41CF5A93,  // 0x00002258 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F41CD, 0x398B31495A938C21, 0x4A0F318B41CD420F,  // 0x00002278 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F41CD, 0x41CD398B4A0F8C1F, 0x4A0F3149398B4A0F,  // 0x00002298 
	0x20C620C63149318B, 0x20C620C620C620C6, 0x20C620C65A9383DD, 0x20C620C620C620C6,  // 0x000022B8 
	0x20C620C63149318B, 0x20C620C620C620C6, 0x20C620C64A0F83DD, 0x20C620C620C620C6,  // 0x000022D8 
	0x20C620C64A0F6315, 0x20C620C620C620C6, 0x20C620C65A937359, 0x20C620C620C620C6,  // 0x000022F8 
	0x20C620C64A0F6315, 0x20C620C620C620C6, 0x20C620C64A0F7359, 0x20C620C620C620C6,  // 0x00002318 
	0x20C620C64A0F739B, 0x20C620C620C620C6, 0x20C620C652516317, 0x20C620C620C620C6,  // 0x00002338 
	0x20C620C64A0F739B, 0x20C620C620C620C6, 0x20C620C639CD6317, 0x20C620C620C620C6,  // 0x00002358 
	0x20C620C64A0F7BDD, 0x20C620C620C620C6, 0x20C620C6398B5AD5, 0x20C620C620C620C6,  // 0x00002378 
	0x20C620C64A0F7BDD, 0x20C620C620C620C6, 0x20C620C6398B5AD5, 0x20C620C620C620C6,  // 0x00002398 
	0x20C620C64A0F8C1F, 0x20C620C620C620C6, 0x20C620C631495A93, 0x20C620C620C620C6,  // 0x000023B8 
	0x20C620C64A0F8C1F, 0x20C620C620C620C6, 0x20C620C631494A11, 0x20C620C620C620C6,  // 0x000023D8 
	0x20C620C64A0F94A3, 0x20C620C620C620C6, 0x20C620C64A0F4A0F, 0x20C620C620C620C6,  // 0x000023F8 
	0x20C620C64A0F94A3, 0x20C620C620C620C6, 0x20C620C64A0F5A93, 0x20C620C620C620C6,  // 0x00002418 
	0x39CD318B4A0F9CA5, 0x4A51525163176B17, 0x739B7B9B7BDD83DD, 0x7BDD83DD7BDD6317,  // 0x00002438 
	0x5251398D4A0F9CA5, 0x4A0F318B4A515A95, 0x5AD56B177BDD83DD, 0x7BDD739B73596315,  // 0x00002458 
	0x318B29494A0F94A3, 0x4A0F39CD398B39CD, 0x420D4A0F4A0F4A0F, 0x4A0F4A0F4A0F39CD,  // 0x00002478 
	0x318B29494A0F94A3, 0x4A0F3149318B39CD, 0x39CD420D4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002498 
	0x20C620C64A0F8C61, 0x20C620C620C620C6, 0x20C620C62949420F, 0x20C620C620C620C6,  // 0x000024B8 
	0x20C620C673599461, 0x20C620C620C620C6, 0x20C620C6318B4A0F, 0x20C620C620C620C6,  // 0x000024D8 
	0x20C620C64A0F841F, 0x20C620C620C620C6, 0x20C620C6314B6B59, 0x20C620C620C620C6,  // 0x000024F8 
	0x20C620C65AD58C1F, 0x20C620C620C620C6, 0x20C620C641CD5A95, 0x20C620C620C620C6,  // 0x00002518 
	0x20C620C6398B6317, 0x20C620C620C620C6, 0x20C620C64A0F7B9B, 0x20C620C620C620C6,  // 0x00002538 
	0x20C620C64A4F6B17, 0x20C620C620C620C6, 0x20C620C64A0F7B9B, 0x20C620C620C620C6,  // 0x00002558 
	0x20C620C631495AD5, 0x20C620C620C620C6, 0x20C620C64A0F83DD, 0x20C620C620C620C6,  // 0x00002578 
	0x20C620C639CD5293, 0x20C620C620C620C6, 0x20C620C64A0F83DD, 0x20C620C620C620C6,  // 0x00002598 
	0x20C620C62949420F, 0x20C620C620C620C6, 0x20C620C64A0F841F, 0x20C620C620C620C6,  // 0x000025B8 
	0x20C620C6318B41CF, 0x20C620C620C620C6, 0x20C620C64A0F8C1F, 0x20C620C620C620C6,  // 0x000025D8 
	0x20C620C64A0F4A0F, 0x20C620C620C620C6, 0x20C620C64A0F8C21, 0x20C620C620C620C6,  // 0x000025F8 
	0x20C620C64A0F4A0F, 0x20C620C620C620C6, 0x20C620C64A0F8C61, 0x20C620C620C620C6,  // 0x00002618 
	0x7B9B841D8C619461, 0x946183DD739B62D7, 0x39CD318D4A0F8C61, 0x62D57B9B62D57B9B,  // 0x00002638 
	0x83DD841D8C619461, 0x9461841F7B9D6B17, 0x631752934A0F8C61, 0x4A0F318D41CF5A93,  // 0x00002658 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F420F41CD, 0x318B31494A0F8C21, 0x52935A935A935291,  // 0x00002678 
	0x525152514A0F4A0F, 0x4A0F4A0F420D39CD, 0x41CD398B4A0F8C61, 0x4A0F3149398B4A0F,  // 0x00002698 
	0x20C620C63149318B, 0x20C620C620C620C6, 0x20C620C64A0F841F, 0x20C620C620C620C6,  // 0x000026B8 
	0x20C620C641CD318B, 0x20C620C620C620C6, 0x20C620C64A0F841F, 0x20C620C620C620C6,  // 0x000026D8 
	0x20C620C64A0F6315, 0x20C620C620C620C6, 0x20C620C64A0F739B, 0x20C620C620C620C6,  // 0x000026F8 
	0x20C620C64A4F5AD5, 0x20C620C620C620C6, 0x20C620C64A0F7359, 0x20C620C620C620C6,  // 0x00002718 
	0x20C620C64A0F739B, 0x20C620C620C620C6, 0x20C620C639CD6B59, 0x20C620C620C620C6,  // 0x00002738 
	0x20C620C652516B59, 0x20C620C620C620C6, 0x20C620C6420D5AD5, 0x20C620C620C620C6,  // 0x00002758 
	0x20C620C64A0F7BDD, 0x20C620C620C620C6, 0x20C620C64A0F5AD5, 0x20C620C620C620C6,  // 0x00002778 
	0x20C620C652517BDD, 0x20C620C620C620C6, 0x20C620C639CD5251, 0x20C620C620C620C6,  // 0x00002798 
	0x20C620C64A0F8C1F, 0x20C620C620C620C6, 0x20C620C6420F5A95, 0x20C620C620C620C6,  // 0x000027B8 
	0x20C620C65251841F, 0x20C620C620C620C6, 0x20C620C6398B41CF, 0x20C620C620C620C6,  // 0x000027D8 
	0x20C620C64A0F94A3, 0x20C620C620C620C6, 0x20C620C639CD41CF, 0x20C620C620C620C6,  // 0x000027F8 
	0x20C620C65A939463, 0x20C620C620C620C6, 0x20C620C641CD4A0F, 0x20C620C620C620C6,  // 0x00002818 
	0x39CD318B4A0F9CA5, 0x420F41CF4A515AD5, 0x739B7B9B7BDD7BDD, 0x739B73595AD541CF,  // 0x00002838 
	0x398D318B6B179CA5, 0x4A0F52535AD56B17, 0x6B597BDD7BDD83DD, 0x7BDD739B73596315,  // 0x00002858 
	0x318B29494A0F94A3, 0x39CD2949318B39CD, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F41CD398B,  // 0x00002878 
	0x318B29495A9394A3, 0x39CD3149398B420D, 0x39CD4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002898 
	0x20C620C64A0F8C61, 0x20C620C620C620C6, 0x20C620C629495293, 0x20C620C620C620C6,  // 0x000028B8 
	0x20C620C652518C61, 0x20C620C620C620C6, 0x20C620C62949420F, 0x20C620C620C620C6,  // 0x000028D8 
	0x20C620C64A0F841F, 0x20C620C620C620C6, 0x20C620C6314B735B, 0x20C620C620C620C6,  // 0x000028F8 
	0x20C620C6525183DD, 0x20C620C620C620C6, 0x20C620C6314B6317, 0x20C620C620C620C6,  // 0x00002918 
	0x20C620C64A0F83DD, 0x20C620C620C620C6, 0x20C620C64A0F739B, 0x20C620C620C620C6,  // 0x00002938 
	0x20C620C652517B9B, 0x20C620C620C620C6, 0x20C620C6398B6B59, 0x20C620C620C620C6,  // 0x00002958 
	0x20C620C64A0F7B9B, 0x20C620C620C620C6, 0x20C620C652517359, 0x20C620C620C620C6,  // 0x00002978 
	0x20C620C64A0F7359, 0x20C620C620C620C6, 0x20C620C641CD7359, 0x20C620C620C620C6,  // 0x00002998 
	0x20C620C662D5739B, 0x20C620C620C620C6, 0x20C620C65AD56B57, 0x20C620C620C620C6,  // 0x000029B8 
	0x20C620C673597359, 0x20C620C620C620C6, 0x20C620C673597BDD, 0x20C620C620C620C6,  // 0x000029D8 
	0x7359735973597359, 0x7359735973597359, 0x7359735973597359, 0x7359735973597359,  // 0x000029F8 
	0x7359735973597359, 0x7359735973597359, 0x7359735973597B9B, 0x7359735973597359,  // 0x00002A18 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002A38 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002A58 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002A78 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002A98 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002AB8 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002AD8 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002AF8 
	0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F, 0x4A0F4A0F4A0F4A0F,  // 0x00002B18 
};

u64 _jyasinzou_room_24_tex_00002B38[] = 
{
	0x292F021616021616, 0x0C02160202161658, 0x5816071313040704, 0x0402020213040202,  // 0x00002B38 
	0x130213134E02112F, 0x0204131304020404, 0x04112F4E13021302, 0x7302137313131358,  // 0x00002B58 
	0x07072B2B0C2B0C2B, 0x0C16020216161616, 0x58585A0C13135A0C, 0x042B2B020C042B04,  // 0x00002B78 
	0x0C2B130C5A020C6D, 0x04040C1313040C0C, 0x111104130C2B1302, 0x2B040C0713130C6D,  // 0x00002B98 
	0x29040202022B1602, 0x1616020216021602, 0x16585A0C2B6A4E2B, 0x0C13132B0C042B04,  // 0x00002BB8 
	0x0C132B024E0C1304, 0x11110C2B6A040204, 0x6D1102130C13130C, 0x0C040C040C0C040C,  // 0x00002BD8 
	0x2B2BFC022B2B1616, 0x16020216162B0202, 0x2B1615040202736A, 0x13132B6A13020202,  // 0x00002BF8 
	0x2B2B020273072B6A, 0x0211040213731315, 0x1515074E5A136A6A, 0x6A134E130C0C074E,  // 0x00002C18 
	0x2F02FC16022B1602, 0x1616165802021616, 0x02586A0204024E13, 0x1313021313020702,  // 0x00002C38 
	0x0202110773040213, 0x110202041313112F, 0x02070C1507040202, 0x026A130211020413,  // 0x00002C58 
	0x15736A132B2B6A6A, 0x6A0C581616161616, 0x16164E0411044E0C, 0x0C0C0404042B0C02,  // 0x00002C78 
	0x0204020C4E04040C, 0x022B0411070C110C, 0x02020C0C04110402, 0x02130C021102110C,  // 0x00002C98 
	0x2F2B021616160216, 0x0C16161616160216, 0x16164E110C0C5A0C, 0x0C020C0411130202,  // 0x00002CB8 
	0x020C0C0C4E070411, 0x0C0C110C150C042B, 0x04022B0C0C041104, 0x0213020C0C020C11,  // 0x00002CD8 
	0x2F0C020216160216, 0x2B16020202162B16, 0x58161504132B5A13, 0x130C2B0C042B020C,  // 0x00002CF8 
	0x02132B2B13730C11, 0x0C11041313040C13, 0x0C02022B2B021111, 0x0213020402022B11,  // 0x00002D18 
	0x2902021602161616, 0x2B16021616021602, 0x1658151307025A73, 0x1313021302020213,  // 0x00002D38 
	0x040702044E131304, 0x6D11130713021313, 0x020C130202041111, 0x114E04020202026D,  // 0x00002D58 
	0x046A072B0C6A2B0C, 0x6A02585816161616, 0x16585A1304117F13, 0x0C042B0C042B040C,  // 0x00002D78 
	0x0704110213130C04, 0x6D0413040C021313, 0x2B2B131302071104, 0x1304112B2B022F6D,  // 0x00002D98 
	0x292B0202020C0216, 0x1616161616020216, 0x16164E0C13135A0C, 0x020C132B0C130C04,  // 0x00002DB8 
	0x0C04040213130211, 0x110C0C0407020C0C, 0x0C1302112B131104, 0x0711110C0C2B110C,  // 0x00002DD8 
	0x290C0202020C0216, 0x1658161616020216, 0x16164E044E025A04, 0x02132B2B022B0C04,  // 0x00002DF8 
	0x1102020C4E130C04, 0x0C2B040C13070707, 0x071313070C075A5A, 0x4715040C07155A13,  // 0x00002E18 
	0x29022B16160C1602, 0x1658161602021616, 0x0202734E130C4707, 0x1313151313134E66,  // 0x00002E38 
	0x0707134E134E074E, 0x131313730C040402, 0x0C022B0711110C02, 0x154E7313040C7313,  // 0x00002E58 
	0x046A070C0C6A0C0C, 0x1302161602160216, 0x2B0C4E0213131504, 0x1302020202020407,  // 0x00002E78 
	0x0704021302130473, 0x0202024E13021102, 0x1302020402021302, 0x047313046D040213,  // 0x00002E98 
	0x2904021616025816, 0x2B02020216160216, 0x0C2B4E040C0C4E13, 0x130202022B040C13,  // 0x00002EB8 
	0x132B6A0C02130C0C, 0x2B0204150C020202, 0x132B2B042B2B0C02, 0x13131111074E020C,  // 0x00002ED8 
	0x290C6D1616021616, 0x2B0202020216160C, 0x58165A0C0C117313, 0x130C0C020C110413,  // 0x00002EF8 
	0x0C0C6A0C020C0211, 0x0C0C0C0711020C02, 0x0C0C0C0C130C0C0C, 0x6A071104136A1313,  // 0x00002F18 
	0x292B6D1616161658, 0x0C16160202165816, 0x5816470C02044E02, 0x2B040C04040C1107,  // 0x00002F38 
	0x020C2B2B0C110204, 0x0C0C0C13040C2B0C, 0x0C02020C2B0C132B, 0x2B0C040C6A2B0C02,  // 0x00002F58 
	0x046A072B04132B0C, 0x1358161616165816, 0x160273070202130C, 0x020207112F070415,  // 0x00002F78 
	0x1104020404110202, 0x1313071302040413, 0x0402020402131302, 0x110C021313020411,  // 0x00002F98 
	0x29110216020C1602, 0x0216160216160258, 0x161673042B021507, 0x0202042B11040713,  // 0x00002FB8 
	0x04042B02022B1104, 0x0C1304130202110C, 0x0702020702131311, 0x110C2B130C2B0704,  // 0x00002FD8 
	0x2F2F1116162B1616, 0x0216021616160216, 0x16164E110C021313, 0x2B2B040C2B040C4E,  // 0x00002FF8 
	0x0C2B0C0202130C04, 0x020C111502020402, 0x0C022B1313130C04, 0x0C070C0C04130C11,  // 0x00003018 
	0x29042F16162B1616, 0x0216021616160202, 0x161613110C0C1313, 0x2B2B0C0C130C1113,  // 0x00003038 
	0x02130C020C2B2B0C, 0x040411150C0C0204, 0x040C1313130C110C, 0x1313040C0C0C1111,  // 0x00003058 
	0x076A072B2B2B0258, 0x1616021616161616, 0x025815042B041313, 0x02022B04132B1107,  // 0x00003078 
	0x0213040C0C0C022B, 0x1111041304130C11, 0x04136A7F73474E66, 0x737F4E667366474E,  // 0x00003098 
	0x076A070C2B6A6A13, 0x730C0202022B0216, 0x16585A1302131313, 0x0404021313020C47,  // 0x000030B8 
	0x074E4E4E73130202, 0x2F044E4E4E4E4E13, 0x4E4E4E7F02110213, 0x1113070204027302,  // 0x000030D8 
	0x2F02021602160216, 0x2B16160202161616, 0x58164E0C02131313, 0x2B2B02130C2B024E,  // 0x000030F8 
	0x020413130C131313, 0x0713154E130C1302, 0x13130C73042B6A13, 0x2F110C2B04041302,  // 0x00003118 
	0x2F0C020216161602, 0x6A16161602160216, 0x16164E0C020C0713, 0x0C0C2B0C020C2B4E,  // 0x00003138 
	0x02040C13022B0215, 0x020C0C020C020C2B, 0x13130C730C132B0C, 0x0C0C04130C0C0C02,  // 0x00003158 
	0x292B020216161602, 0x0C2B161602160216, 0x02164E0202110707, 0x040C13020C0C134E,  // 0x00003178 
	0x0C0C0C2B02130C4E, 0x0202020211020C0C, 0x2B2B0273132B020C, 0x2B130C2B0C2B0202,  // 0x00003198 
	0x076A2B2B0C6A2B2B, 0x0C2B160216160202, 0x02164E020204150C, 0x0413070207070713,  // 0x000031B8 
	0x130407020207075A, 0x0202020204110711, 0x0402024E07040204, 0x026A13041102020C,  // 0x000031D8 
	0x29FC0216020C1616, 0x0202021658161616, 0x16164E112B07136A, 0x134E136A1313136A,  // 0x000031F8 
	0x4E13130C13151566, 0x1302112B07040402, 0x0202116604040402, 0x2B041307022B2B6A,  // 0x00003218 
	0x2F2B0C02162B0202, 0x1616161616161616, 0x16164E020C0C1313, 0x130C2B0C2B2B6A0C,  // 0x00003238 
	0x040C0211020C115A, 0x022B020C0C2B0404, 0x02020C660C11042B, 0x13040C0C020C132B,  // 0x00003258 
	0x0773732B2B6A2B6A, 0x0C58161616161616, 0x1616730C0C021313, 0x2B020C0C2B137304,  // 0x00003278 
	0x11020C0C0C02044E, 0x0C130C0C02130C11, 0x0C0C134E040C0413, 0x0C04040C0C0C2B04,  // 0x00003298 
	0x292B2B160216022B, 0x0C58161602021616, 0x16164E2B04024E13, 0x0C0C042B0C136A02,  // 0x000032B8 
	0x1102042B2B020207, 0x042B2B04022B2B11, 0x0404134711130C2B, 0x110C022B2B130211,  // 0x000032D8 
	0x292B021616020216, 0x0258161616161616, 0x1616020402044E4E, 0x1313040413130211,  // 0x000032F8 
	0x1102020402020207, 0x0402040204020202, 0x0402134702131304, 0x0413020204130211,  // 0x00003318 
};

u64 _jyasinzou_room_24_tex_00003338[] = 
{
	0x1A0B08000008087B, 0x7B7B0823231E1E23, 0x00001E00001E1E1E, 0x1E000000081E0000,  // 0x00003338 
	0x0800080800002323, 0x001E08081E001E1E, 0x1E23230808000800, 0xD00008D008080899,  // 0x00003358 
	0x0B0B0827030303BA, 0x7B7B0800231E031E, 0x27272727001E1E27, 0x1E030300031E0327,  // 0x00003378 
	0x0303080327000323, 0x271E030808272727, 0x2323270303030800, 0x0827030308080372,  // 0x00003398 
	0x1ADE862708030008, 0xB37B0803231E0303, 0x23270327001E0308, 0x2708080803270327,  // 0x000033B8 
	0x0308030003030827, 0x231E270386270000, 0x2323000027080803, 0x0327272703031E03,  // 0x000033D8 
	0xB78CD00008080300, 0xBA7B08860023008C, 0x00080808001E8C8C, 0x0808088C08000000,  // 0x000033F8 
	0x080800008C03088C, 0x00231E0000080023, 0x231E00001E030808, 0x0800080023231E08,  // 0x00003418 
	0x0B08D00000000300, 0x86C6E50827230808, 0x0000000808030008, 0x0808000808000800,  // 0x00003438 
	0x00002308081E0008, 0x2300001E00082323, 0x0000231E001E0000, 0x0008080023001E08,  // 0x00003458 
	0x1AE5860000230000, 0x08EFBA0327230327, 0x0003002703080003, 0x2703272727030300,  // 0x00003478 
	0x00230003031E2727, 0x0003232327031E03, 0x0000032727232300, 0x000303001E002327,  // 0x00003498 
	0x0BB7080300272323, 0x03E0B38627000027, 0x0386031E27082703, 0x030003001E080000,  // 0x000034B8 
	0x0027030300031E23, 0x0303232703271E03, 0x0000030303002300, 0x000000272700271E,  // 0x000034D8 
	0x0BE5080300032323, 0x00037BBA03032303, 0x08E003231E031E08, 0x080003001E030000,  // 0x000034F8 
	0x0008030300E02723, 0x03231E08031E2700, 0x2300000303002323, 0x0000001E00000323,  // 0x00003518 
	0x1A0808001E002323, 0x00087B7B088C0000, 0x08000000231E1E08, 0x0808000800000008,  // 0x00003538 
	0x1E08001E0800081E, 0x2323080800000808, 0x00230000001E2323, 0x23081E0000000023,  // 0x00003558 
	0x1A8C0B0803230308, 0x2727B37BBA860800, 0x000000081E1E0008, 0x001E08001E081E00,  // 0x00003578 
	0x032323000000001E, 0x231E082323000808, 0x080300000003231E, 0x0323230808002323,  // 0x00003598 
	0x1A8CDE0327000308, 0x2723B37BB3080827, 0x2703030303082703, 0x0003080327082727,  // 0x000035B8 
	0x2700000003030023, 0x2303270000000303, 0x0308002327031E1E, 0x2723230303032327,  // 0x000035D8 
	0x1A86861E23002703, 0x03237BC9C6080823, 0x0308032708861E00, 0x000803030003031E,  // 0x000035F8 
	0x2300000308032727, 0x2703270300271E27, 0x2703032723002727, 0x2323272700030303,  // 0x00003618 
	0x1A088C1E23002700, 0x03277BB38C030823, 0x8C08000308002323, 0x00081E000000031E,  // 0x00003638 
	0x2300000808001E08, 0x08000008001E1E00, 0x0000080323230000, 0x231E080323238C00,  // 0x00003658 
	0x1A8C0B1E081E0023, 0x00037BBA00000808, 0x008C081E001E231E, 0x0800000000001E1E,  // 0x00003678 
	0x081E000800081E8C, 0x0000000808002300, 0x0800001E00000800, 0x1E8C0823231E0008,  // 0x00003698 
	0x1ADE080308032300, 0x23007B0800230008, 0x1E86080303030386, 0x0800000003232703,  // 0x000036B8 
	0x0803860000082727, 0x03001E2727000000, 0x0803031E03030000, 0x8603232300860000,  // 0x000036D8 
	0x1A390B0303032700, 0x278CC60327270000, 0x0308080300080808, 0x08272700031E0003,  // 0x000036F8 
	0x0303860300000023, 0x032727271E000300, 0x0303032708030303, 0x861E231E08860000,  // 0x00003718 
	0x1AB71A2700270000, 0x08B3D08627030023, 0x080303271E030300, 0x031E270000272327,  // 0x00003738 
	0x0027030327230023, 0x2727000023270300, 0x2700002703000803, 0x03231E278C032700,  // 0x00003758 
	0x1AB70B1E231E0303, 0xBA7B080308032300, 0x08000008081E0023, 0x0000082323081E1E,  // 0x00003778 
	0x231E001E1E230000, 0x08080800001E1E08, 0x1E00001E00080800, 0x2323000808001E23,  // 0x00003798 
	0x1A0B08031E1E038C, 0xC67B000008000000, 0x00231E0808031E00, 0x00001E031E1E0303,  // 0x000037B8 
	0x1E1E08000003231E, 0x00081E0800002300, 0x0300000300080823, 0x232308080008031E,  // 0x000037D8 
	0x0B0B0B08270303BA, 0xC97B000003000303, 0x001E030308860300, 0x03031E03031E2708,  // 0x000037F8 
	0x270303000008031E, 0x00031E2700000000, 0x0300030886082700, 0x0300030327082723,  // 0x00003818 
	0x1ADE0B03000803B3, 0x7B7B030300030803, 0x271E030008860300, 0x0303032708031E03,  // 0x00003838 
	0x0008270027030303, 0x00001E0327030000, 0x0003860886031E27, 0x0803002703032323,  // 0x00003858 
	0x0B8C0B00000803C6, 0x7B7B080800080800, 0x1E23000008080000, 0x0000081E08082300,  // 0x00003878 
	0x00081E0027000008, 0x23231E081E080023, 0x23088C080023231E, 0x0308231E031E2300,  // 0x00003898 
	0x0BD00B231E00000B, 0x7B7B080803080008, 0x2323000000000000, 0x1E1E000808002323,  // 0x000038B8 
	0x1E0808088C080000, 0x231E080008080800, 0x0808080000230008, 0x230008001E008C00,  // 0x000038D8 
	0x0B0808030023001E, 0xBA7B030308270308, 0x8603000300030003, 0x0303000800030003,  // 0x000038F8 
	0x001E080803000023, 0x0003270008000800, 0x080827002303E008, 0x232327031E1E0800,  // 0x00003918 
	0x0B8608030003001E, 0x08B3E00003000308, 0x8603002700032703, 0x0303030300030303,  // 0x00003938 
	0x0000030800030003, 0x0003270027000303, 0x0808270003080803, 0x27271E0803030300,  // 0x00003958 
	0x1AB7082703030003, 0x27BAEF0327000003, 0x0303272300001E00, 0x1E27080003030800,  // 0x00003978 
	0x0327270300080308, 0x0000000023000303, 0x0303000008030027, 0x0386270303030000,  // 0x00003998 
	0x0BB7081E081E0303, 0x27E5B3E02300001E, 0x00081E2323001E23, 0x1E08080008080800,  // 0x000039B8 
	0x081E080000030303, 0x000000001E230323, 0x1E000000031E001E, 0x008C081E23000000,  // 0x000039D8 
	0x1AD0080308030800, 0x03037BEF23230000, 0x0800001E001E0300, 0x0308000800000008,  // 0x000039F8 
	0x08030023001E1E1E, 0x00002308031E1E00, 0x0000231E1E1E1E00, 0x081E08030008088C,  // 0x00003A18 
	0x0B8C862727030800, 0x08037BB308230023, 0x0800031E27030303, 0x0803032703038627,  // 0x00003A38 
	0x2703001E00271E27, 0x0003000303031E23, 0x0000031E271E1E03, 0x081E270300270808,  // 0x00003A58 
	0x0BB7B72723000303, 0x03037B7BBA232723, 0x0300031E1E030303, 0x030003030308D027,  // 0x00003A78 
	0x2300270303002700, 0x2708032700080323, 0x2727081E00272708, 0x2727270303030300,  // 0x00003A98 
	0x1AB7E50023000003, 0x00277B7BB3001E23, 0x00231E1E1E1E0800, 0x00001E0300088C00,  // 0x00003AB8 
	0x23001E0303000000, 0x1E03031E00030323, 0x1E1E082323080003, 0x2300000303080023,  // 0x00003AD8 
	0x1AB7082323000003, 0x00277B7BC6030800, 0x0800000800000808, 0x08081E1E08080023,  // 0x00003AF8 
	0x2300001E0000001E, 0x1E001E001E000000, 0x1E0008230008081E, 0x1E0800001E080023,  // 0x00003B18 
};

u64 _jyasinzou_room_24_tex_00003B38[] = 
{
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003B38 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003B58 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003B78 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003B98 
	0x2104210439CC5A92, 0x525062D45A925290, 0x525052505A904A0E, 0x4A0E314829462104,  // 0x00003BB8 
	0x21044A4E5A92A4E5, 0x946194618C1F83DB, 0x7B997B997B997B99, 0x735762D241CC2104,  // 0x00003BD8 
	0x4A4E7398CE2BCE2D, 0xB56BAD299CA3945F, 0x945F945F945F945F, 0x83DB7B9B525041CC,  // 0x00003BF8 
	0x7356BDE7DEABA527, 0x9CE56B1562D35A4F, 0x5A916B1562D17357, 0x8C1F945F5A934A0E,  // 0x00003C18 
	0xB5A7D66BAD699463, 0x7357525141CC39CA, 0x41CA420C520D7357, 0x7B9B83DB6B13524F,  // 0x00003C38 
	0x9CE5BDA9945F7357, 0x524F398A21042104, 0x210421043988520D, 0x7B998BDD735562D3,  // 0x00003C58 
	0x83DDB56794615AD3, 0x41CC314821042104, 0x2104210421043988, 0x62D38C1F7B995A91,  // 0x00003C78 
	0x83DBA4E394615AD3, 0x2104210421042104, 0x2104210429063988, 0x520D946183DD4A0D,  // 0x00003C98 
	0x7357945F8C1F4A51, 0x2104210421042104, 0x2104210421063988, 0x520D9CA38C1F41CB,  // 0x00003CB8 
	0x62D3735762D541CD, 0x2104210421042104, 0x2104210429063988, 0x520D9CA394614A4F,  // 0x00003CD8 
	0x318A4A0E41CC3148, 0x2104210421042104, 0x2104210421063988, 0x520D9CA39C614A4F,  // 0x00003CF8 
	0x420C210421042104, 0x2104210421042104, 0x2104210421043988, 0x520D9CA39CA36315,  // 0x00003D18 
	0x524E210421042104, 0x2104210421042104, 0x2104210421043988, 0x520D9CA3945F7B99,  // 0x00003D38 
	0x41CC314821042104, 0x2104290621042104, 0x2104210421043988, 0x520D94618C1D62D5,  // 0x00003D58 
	0xB567DEABC5EB841D, 0x2948294821042104, 0x2104210421043988, 0x520D94618C1D62D5,  // 0x00003D78 
	0x7B99C5E794615AD5, 0x318A290621042104, 0x21042104210441CA, 0x5A919CA3839B524F,  // 0x00003D98 
	0x7357A4E194636B17, 0x420E294621042104, 0x2104210421044A0C, 0x73159CE37B594A0D,  // 0x00003DB8 
	0x7B99945F94637359, 0x4A4E318821042104, 0x2104210429065A92, 0x945FA4E5735741CB,  // 0x00003DD8 
	0x6B158BDD9CA38C1F, 0x41CB314821042104, 0x2104210431487359, 0xB567A5256B153189,  // 0x00003DF8 
	0x520D6B158C1F9C63, 0x62D141CB21042104, 0x210441CC6B17BDEB, 0x9CA18C1D5A913989,  // 0x00003E18 
	0x420C6AD37357839B, 0x94615A91420B4A0B, 0x4A0B83999C5F9CA3, 0x7B9973575A912104,  // 0x00003E38 
	0x210441CA520D7357, 0x945F945F945F945F, 0x945F9CA38C1F83DB, 0x6B15524F29482104,  // 0x00003E58 
	0x210421043988520D, 0x62D36B1773577357, 0x62D362D36B155A93, 0x3989398821042104,  // 0x00003E78 
	0x2104210421044A0C, 0x39CA4A0C4A0E41CC, 0x4A0C420C420C318A, 0x2906210421042104,  // 0x00003E98 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003EB8 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003ED8 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003EF8 
	0x2104210421042104, 0x2104210421042104, 0x2104210421042104, 0x2104210421042104,  // 0x00003F18 
};

u64 _jyasinzou_room_24_tex_00003F38[] = 
{
	0x57030317032E5456, 0x2E343F4634460303, 0x1717031725030303, 0x3030261A24301717,  // 0x00003F38 
	0x0303030317261A1A, 0x6CB324245D465403, 0x0317252525250303, 0x0303300325460303,  // 0x00003F58 
	0x0303301A03032E03, 0x5703245D25171703, 0x0325171703252503, 0x30031A0303300303,  // 0x00003F78 
	0x0346031A1A6C2603, 0x1A4634523F031A03, 0x031A03251754301A, 0x54032E033017032E,  // 0x00003F98 
	0x1A2E031A031A5717, 0x3F03173F34260303, 0x03030330301A5C03, 0x2E571A2E1A1A3054,  // 0x00003FB8 
	0x172603171A173F17, 0x3003030324252530, 0x0303170317302653, 0x03030303031A1A30,  // 0x00003FD8 
	0x3F242A2446033825, 0x030303031724252A, 0x5403252530172503, 0x262603032503253C,  // 0x00003FF8 
	0x4646440317172503, 0x2A54033003680325, 0x0317030303305403, 0x03031A030317033F,  // 0x00004018 
	0x253F03302E031717, 0x1A0317031A173803, 0x2E03031A172E306C, 0x3026301A30033C54,  // 0x00004038 
	0x26033C1A2E031A03, 0x30262E2E2E30031A, 0x2E261A0354302E49, 0x6C03302A303C2E86,  // 0x00004058 
	0x171A251725540344, 0x2630035C1A035430, 0x0354300303171A30, 0x1A031725244B0330,  // 0x00004078 
	0x25301A4B25031A03, 0x1A862E1730251A26, 0x2E03031703030303, 0x030317460303245D,  // 0x00004098 
	0x2E2E03543C031A03, 0x3049544903466CA7, 0x0354920317305403, 0x25032A2546030324,  // 0x000040B8 
	0x1A541A033025306C, 0x03032E2E2E25036C, 0xA757032E54030303, 0x3054035425305C49,  // 0x000040D8 
	0x0303540303305703, 0xAC1A572E2E494B03, 0x6CA7545403031754, 0x2E1A545403266CA7,  // 0x000040F8 
	0x6C1A251A301A3057, 0x576C6C6C032E0346, 0x306CA703171A037E, 0x6CAC1A2E6CAC036C,  // 0x00004118 
	0x1A1A30301A170354, 0x57572E1730031A54, 0x3C0325300330302E, 0x576C2E03546C2E30,  // 0x00004138 
	0x03171A0303031717, 0x0303300317172503, 0x265D462A46030354, 0x25576C3054302E1A,  // 0x00004158 
	0x2603170317250317, 0x1703030303173C30, 0x462A34034B170317, 0x1703031A03170330,  // 0x00004178 
	0x1A1A03251717031A, 0x2E032A2A301A0330, 0x462A033C251A0326, 0x030325172E300303,  // 0x00004198 
	0x3C30173030253030, 0x2E6C2E2E54031A46, 0x2554304603032E1A, 0x5426030330260303,  // 0x000041B8 
	0x3025171A461A302E, 0x03306C031A035424, 0x032530031703572E, 0x1A2E3C262530171A,  // 0x000041D8 
	0x301A030317032626, 0x5425030317174B46, 0x30173C03031A3054, 0x3017261A03031703,  // 0x000041F8 
	0x03572625172E546C, 0x0317030317172A17, 0x033025254654032E, 0x0317542503030303,  // 0x00004218 
	0x03032E2E2E666C1A, 0x541A54305417541A, 0x2EAC260317030303, 0x260303300303031A,  // 0x00004238 
	0x6C30036C571A6C2E, 0x6C1A03A7492E1730, 0xAC576C2E25033026, 0x0303030303170326,  // 0x00004258 
	0x2E2E1AAC2E7E302E, 0x6C1A1A1A6C493046, 0x1A496CAC2E2E3030, 0x5CAC031A2E030303,  // 0x00004278 
	0x4B03541A2E572E54, 0x2E26032A2E6C254B, 0x302E30542EAC2E03, 0x541A66261A5C5C03,  // 0x00004298 
	0x6C031717302E1A03, 0x036C03172646D030, 0x2517030303030303, 0x250330170303301A,  // 0x000042B8 
	0x172E4B1717542603, 0x17031A0303241717, 0x1717170303031717, 0x032A033025170303,  // 0x000042D8 
	0x03265C543F17032E, 0x26302A0326171703, 0x0303030303172E03, 0x0330030354030303,  // 0x000042F8 
	0x2E54262E30174B49, 0x261A540317030330, 0x260330030303261A, 0x03262E03032E0303,  // 0x00004318 
};

u64 _jyasinzou_room_24_tex_00004338[] = 
{
	0x1418790E1B3B1D33, 0x4242424233234242, 0x3333333342424C4C, 0x2FB3423342424C4C,  // 0x00004338 
	0x2FB3423333424242, 0x4242427742423342, 0x4233333333334242, 0x3333233B05182D15,  // 0x00004358 
	0x04050202591D2333, 0x4233333333333333, 0x3333333333424242, 0x4242773333424242,  // 0x00004378 
	0x4242773333333333, 0x3333333333333333, 0x3333423333423333, 0x3323231D1C054715,  // 0x00004398 
	0x04050E02592B3B1D, 0x3B23232323232323, 0x2323233B23232323, 0x2323232323232323,  // 0x000043B8 
	0x2323232323232323, 0x2323232323232323, 0x232323233B232323, 0x3B3B1D2B1C126015,  // 0x000043D8 
	0x040502021B591D2B, 0x1D2B2B1D1D1D223B, 0x3B3B3B3B3B233B23, 0x232323233B233B23,  // 0x000043F8 
	0x2323232323232323, 0x2323232323233B23, 0x3B3B23233B3B1D2B, 0x592B2B2B1C086067,  // 0x00004418 
	0x04050E281B595959, 0x2B1B592B2B2B1D1D, 0x1D1D1D1D1D1D1D1D, 0x1D1D1D1D1D1D1D1D,  // 0x00004438 
	0x1D1D1D1D1D1D1D1D, 0x1D1D1D1D3B1D1D1D, 0x1D1D1D2B2B2B5959, 0x1B59591BA10A4035,  // 0x00004458 
	0x04121302411B1B1B, 0x1B1B1B1B1B1B1B1B, 0x1B1B1B1B1B591B59, 0x1B592B1B1B591B59,  // 0x00004478 
	0x1B592B1B2B2B2B2B, 0x2B2B2B2B2B2B2B2B, 0x2B591B1B1BD24141, 0x41414141A10A4015,  // 0x00004498 
	0x04050B1176764141, 0x4141414141414141, 0x4141414141414141, 0x4141411B41414141,  // 0x000044B8 
	0x4141411B1BD2D21B, 0x1B1B1B1B1B1B1B1B, 0x414141414176768E, 0x8E8E8E8E0B064067,  // 0x000044D8 
	0x04051C1155411B59, 0x2B1D2B2B1D1D233B, 0x3B3B8D8D33222222, 0x22238D8D8D8D8D33,  // 0x000044F8 
	0x22222222228D8D8D, 0x3322222222228D8D, 0x233B3B221D1D592B, 0x414141410D063E67,  // 0x00004518 
	0x040513112B1D3B3B, 0x3B233B23238D234A, 0x422F2F5D5D5D2424, 0x5D5D2F685D242424,  // 0x00004538 
	0x242424B3612F2424, 0x24242424B3612F5D, 0x5D2F4C4233233B1D, 0x2B5941550B054715,  // 0x00004558 
	0x044513131D3B4A23, 0x23333342774C2F5D, 0x4B3C3C244B4B4B5D, 0x5D24D04B3C3C244B,  // 0x00004578 
	0x4B4B5D5D24D03C24, 0x4B4B4B5D5D24D04B, 0x245D5D2F2F2F4223, 0x3B1D1B1B13794035,  // 0x00004598 
	0x0C0813133B1D4A33, 0x2F4C2F2F68242446, 0x3C3C254646464646, 0x24744B463C254646,  // 0x000045B8 
	0x464646243C4B2546, 0x46464646243C4B46, 0x744B5D3C842F2F4C, 0x423B2B1B1C794015,  // 0x000045D8 
	0x040013A1233B7777, 0x5D5D3C4B243C3C25, 0x0303030354252525, 0x3C3C462503030354,  // 0x000045F8 
	0x2525253C3C460303, 0x542525253C3C4625, 0x3C4625031746745D, 0x2F33232BA1050A14,  // 0x00004618 
	0x04120D1C233B4C5D, 0x4617253C17252503, 0x1A1A541A0303035D, 0x4B2617031A541A03,  // 0x00004638 
	0x03035D4B4617541A, 0x0303035D4B461703, 0x2603260303030325, 0x5D771D1D1CE90A15,  // 0x00004658 
	0x2D051C0E23235D03, 0x03172503032A0354, 0x26031A1A03030303, 0x24032554031A1A03,  // 0x00004678 
	0x030303243C251A1A, 0x03030303243C2554, 0x03031A0354032603, 0x172F5922A1794015,  // 0x00004698 
	0x0C050E024277177E, 0x6A5454174B252603, 0x6A8930241A1A1A1A, 0x1A035D2F0330241A,  // 0x000046B8 
	0x1A1A1A1A03033024, 0x1A1A1A1A1A030354, 0x250326251A171A03, 0x035D331D0E79011F,  // 0x000046D8 
	0x1512050E1B1D2377, 0x2323334A4A4A2342, 0x4A8D3B221D4A2323, 0x394A3354234A4A4A,  // 0x000046F8 
	0x77332222234A3377, 0x2F4233238D422323, 0x33233B423B234223, 0x231D411B79124715,  // 0x00004718 
	0x1606050E1B222333, 0x7742777742777742, 0x42423B8D3B232323, 0x4233233B23423333,  // 0x00004738 
	0x3333233333333333, 0x2F423323234A3333, 0x3377774C77427742, 0x333B551B0E79400F,  // 0x00004758 
	0x0F06120E1B1D1D23, 0x2333423342424242, 0x77333B221D3B234A, 0x4A4A333333232323,  // 0x00004778 
	0x2333333333333333, 0x4C333B22234A4A23, 0x234A333333232323, 0x3B2B1B1B05064716,  // 0x00004798 
	0x0C06450E2B2B2B1D, 0x3B3B232323232323, 0x238D1D2B1D1D3B23, 0x23232323234A3323,  // 0x000047B8 
	0x234A232323233323, 0x42233B2223233B22, 0x23238D233B1D1D1D, 0x2B591B4112061967,  // 0x000047D8 
	0x0C060D0B1B1B592B, 0x2B1D3B2B1D22223B, 0x22221D1D2B1D3B23, 0x3B3B23233B23233B,  // 0x000047F8 
	0x2323232323232323, 0x33233B223B231D3B, 0x233B3B3B1D1D2B2B, 0x591B1B1B45060435,  // 0x00004818 
	0x0406051359D21B59, 0x2B2B2B1B1D2B1D1D, 0x1D1D1D1D1B1D2222, 0x2222223B22221D1D,  // 0x00004838 
	0x223B3B3B3B3B3B3B, 0x233B3B1D3B3B5922, 0x3B3B1D1D1D59591B, 0x1B1B1B1B05123E35,  // 0x00004858 
	0x0C061C131B41411B, 0x1B1B59411B592B2B, 0x2B2B2B2B1B2B1D2B, 0x1D2B2B2B2B2B3B1D,  // 0x00004878 
	0x3B1D1D1D1D1D1D1D, 0x3B1D1D2B1D1DD22B, 0x2B2B592B59414141, 0x4141414105060935,  // 0x00004898 
	0x0C06130241768E41, 0x41414141411B1B1B, 0x1B1B411B1B1B591B, 0x591B1B1B1B1B591B,  // 0x000048B8 
	0x1B59592B2B2B2B2B, 0x2B2B2B1B59594141, 0x411B414141417676, 0x7676764105063E35,  // 0x000048D8 
	0x04061C02B4B4B4B4, 0x8BB4B48E8E8E7641, 0x411B768E768E7676, 0x767676768E8E768E,  // 0x000048F8 
	0x768E76767676768E, 0x8E8E8E418E8E8E8E, 0x8E8EB4B4B4B4B4B4, 0xB4B4B4B4A10A3E35,  // 0x00004918 
	0x040602021B76D241, 0x411B2B2B1D1D3B23, 0x4A4233334C7777B3, 0x5D2F4C77333B7777,  // 0x00004938 
	0x774C2FD04242231D, 0x593B232F2F428D4A, 0x7733333B221B1B1B, 0x1B41414145000467,  // 0x00004958 
	0x04061C021B412B59, 0x2B1D23234A424C77, 0x772FD0174625684B, 0x4B3C2F5D4B17463C,  // 0x00004978 
	0x684B5D4B2F2F2F2F, 0x232F2F4B2F2F4C68, 0x5D2F423323233B1D, 0x1D1B1B5512011935,  // 0x00004998 
	0x2D12A1A11D1B2B3B, 0x2323334C2F2F6824, 0x844B170325033C56, 0x56174B3C17032503,  // 0x000049B8 
	0x3C5656174B3C4B3C, 0x5D4B170324253C3C, 0x3C4B2F4233233B22, 0x222B591B45001916,  // 0x000049D8 
	0x2D12051C1D592B23, 0x334C2F5D4B463C4B, 0x4B4B030346170325, 0x2503464603034617,  // 0x000049F8 
	0x0325250346464646, 0xD04B0303463C1725, 0x25174B5D4C423323, 0x4A3B1D2B1200190F,  // 0x00004A18 
	0x2D1211C33B2B3333, 0x5D5D4B4B03038817, 0x0303545446268803, 0x0303031754544626,  // 0x00004A38 
	0x8803030303170317, 0x0303545425030303, 0x030317173C5D8C33, 0x233B3B1D0B06090F,  // 0x00004A58 
	0x0C0611C33B2B422F, 0x1746034603030325, 0x2525030303030303, 0x0303032503030303,  // 0x00004A78 
	0x0303030303250325, 0x25255454261A0303, 0x0303030303255668, 0x424A233B0212090F,  // 0x00004A98 
	0x0C181102233B7717, 0x260357461A1A0326, 0x031A1A8825033C25, 0x030303031A882503,  // 0x00004AB8 
	0x3C25030303032626, 0x031A1A6A25542603, 0x2626541A26541A25, 0x2477231D1145090F,  // 0x00004AD8 
	0x041805283B3B3B8C, 0x4C4242333317778C, 0x8C4C2F5D4C2F242F, 0x5D8C4223D042422F,  // 0x00004AF8 
	0x242F5D8C8C8C8C8C, 0x8C4C2F745D5D4C42, 0x8C3B333B428C8C4C, 0x42333B1D0279600F,  // 0x00004B18 
};

u64 _jyasinzou_room_24_tex_00004B38[] = 
{
	0x8929492941103851, 0x31311131015388CD, 0x8875111515153533, 0x5675778499999066,  // 0x00004B38 
	0x8924299919138011, 0x131114445003336C, 0x1115111111111377, 0x3315334491999948,  // 0x00004B58 
	0x6499493941481844, 0x441411145131000C, 0x2221111114111021, 0x2115613144444926,  // 0x00004B78 
	0x8424494914434544, 0x444444054411112B, 0x2103311113300310, 0x0021640422092922,  // 0x00004B98 
	0x8999444914311111, 0x1212304000120128, 0x4233311133A11A2A, 0x4110640209499940,  // 0x00004BB8 
	0x8922414111313310, 0x1010111111101018, 0x203777333333A73A, 0x7A71003229229994,  // 0x00004BD8 
	0x8494009143314111, 0x1141101024424416, 0x2402020222222222, 0x2220000102999990,  // 0x00004BF8 
	0x6423941110110010, 0x0022022242202248, 0x0225000202222222, 0x2222030124429993,  // 0x00004C18 
	0x8020002403033310, 0x1110122442222226, 0x5550000000000224, 0x2222010012202060,  // 0x00004C38 
	0x8016680660036836, 0x8666663111211118, 0x3766000000007721, 0x1300336330306668,  // 0x00004C58 
	0x8006000630013103, 0x0666033111411338, 0x731033301033A311, 0x1111000311030018,  // 0x00004C78 
	0x8366680607011113, 0x1033311444444118, 0x13031001122A7341, 0x1113336313300020,  // 0x00004C98 
	0xC063660333131411, 0x1330341194411338, 0x3030003000307A11, 0x1111336011000216,  // 0x00004CB8 
	0x8666606665751511, 0x1773319119411338, 0x3606703313A37311, 0x1113336310002006,  // 0x00004CD8 
	0xC666600066311113, 0x0710021444005558, 0x5660666566775533, 0x113A006022202426,  // 0x00004CF8 
	0xC066066666751111, 0x330002322423755B, 0x55686575777755A3, 0xA3A7300020202216,  // 0x00004D18 
	0xC060004001491914, 0x4220222444007558, 0x55866557757555A3, 0x3A37A00022234226,  // 0x00004D38 
	0xC660002420219141, 0x4492212144101358, 0x566667A7A755557A, 0x73A733002A2222A6,  // 0x00004D58 
	0xC660244222419144, 0x4442224212122158, 0x5566577777755577, 0x3775A07322AA2126,  // 0x00004D78 
	0xC660022420349414, 0x4444424224415558, 0x575865A7A77A5553, 0x37A5230A22222A08,  // 0x00004D98 
	0xC863222207224141, 0x4444224442250118, 0x15576777777757A7, 0x7775703022222276,  // 0x00004DB8 
	0xC660042202244144, 0x0242222204041418, 0x13576777777A5577, 0x7777202A22A0AA06,  // 0x00004DD8 
	0xCC60429410044141, 0x1024202214101118, 0x1372A7A7A7755577, 0x5757720A24423078,  // 0x00004DF8 
	0xC866024220244414, 0x1242444202242915, 0x113230737A755575, 0x7557021A42441776,  // 0x00004E18 
	0xC866002206603331, 0x7121200144221915, 0x11370330A7555555, 0x757521004A927308,  // 0x00004E38 
	0xC866002060677333, 0x6700013001300198, 0x1157767667655B55, 0x5556021322437768,  // 0x00004E58 
	0xC806002055555555, 0x8557303310030118, 0x3135755555888855, 0x7557010323247668,  // 0x00004E78 
	0xC806000606677775, 0x555577550637611B, 0x115755555558B853, 0x7356010323416608,  // 0x00004E98 
	0xC600002035657555, 0x856755573776631C, 0x8B3775555685885A, 0x777670030411666B,  // 0x00004EB8 
	0xC806000065555555, 0x555565575776611B, 0x3585555558585873, 0x3332010402136008,  // 0x00004ED8 
	0xC600202060631777, 0x56666677550663BB, 0x3355588885855831, 0x3200100001130868,  // 0x00004EF8 
	0xD842022104224113, 0x60008023367585BC, 0x55B88B8858856871, 0x0105207030330036,  // 0x00004F18 
	0xDDCC8888888B8888, 0x8B8CCBC688CCBDDD, 0xDBBBBBBBBBBB8C88, 0x88BDC88B8B88C8BB,  // 0x00004F38 
	0xDC20222222206320, 0x200602201020048D, 0x833758B85555A311, 0x4400510000011008,  // 0x00004F58 
	0xC840224222228000, 0x021020111031044B, 0x1111555855553031, 0x1158503000330300,  // 0x00004F78 
	0xC200242222020000, 0x0101012130002498, 0x1511355885557111, 0x1110533036003300,  // 0x00004F98 
	0xC010422021222021, 0x2222444043114448, 0x19114755B5537733, 0x3138033100013136,  // 0x00004FB8 
	0xC010224204222002, 0x2224424242104958, 0x99914775B8731331, 0x3335730006606600,  // 0x00004FD8 
	0xB002224222242020, 0x1222444494949558, 0x9999207686500333, 0x3130700066006636,  // 0x00004FF8 
	0xC300022010000000, 0x212444444442445B, 0x4494000677733033, 0x1103331060002166,  // 0x00005018 
	0xC000202300100060, 0x301122201033190B, 0x9999103075631333, 0x3310730203330166,  // 0x00005038 
	0xC030220300000606, 0x0302311213030778, 0x1441401367733077, 0x3735633000110160,  // 0x00005058 
	0xC100423730060060, 0x300100038033141B, 0x4444130378577357, 0x3575777401041906,  // 0x00005078 
	0xB202412733000006, 0x3001033103317148, 0x1411203755557777, 0x5375676002141060,  // 0x00005098 
	0x8022222707767766, 0x030120000337394B, 0x0744101533535366, 0x7776566004026911,  // 0x000050B8 
	0x82020A0377767065, 0x3330331377AA3346, 0x4114203137853578, 0x5685526629499309,  // 0x000050D8 
	0xC007773755555356, 0xA33A3773363AAA35, 0x44A1655553455767, 0x5852556029999140,  // 0x000050F8 
	0x8231377576657757, 0x733173731AA33315, 0x1413335555855588, 0x5555850044463944,  // 0x00005118 
	0x8857707655573373, 0x3131131373333338, 0x5535755555555555, 0x5555660499999210,  // 0x00005138 
	0x8005070573573353, 0x1111113133733118, 0x1335535555855555, 0x1555772249003191,  // 0x00005158 
	0x8021501333332113, 0x3111131377775118, 0x1151155555555555, 0x5555762499993049,  // 0x00005178 
	0x8000022000222223, 0x1114444411111118, 0x1111111515555555, 0x5553773499339122,  // 0x00005198 
	0x8000000000000200, 0x2249444242222138, 0x1341515555155555, 0x5515373099991444,  // 0x000051B8 
	0xC000000000000222, 0x0444422222222A78, 0xA731111111111155, 0x5111371449431142,  // 0x000051D8 
	0x8000000000000060, 0x0202202022222078, 0x677A731111111111, 0x1113333149999142,  // 0x000051F8 
	0x8000000600000200, 0x1002000000000066, 0x7000077777733133, 0x3350303489991299,  // 0x00005218 
	0x8002000666060063, 0x0122022222222428, 0x077A222A03202373, 0x3565688032269992,  // 0x00005238 
	0x8420222020000202, 0x2121220202222006, 0xA22A2A2A27206676, 0x7760000249991999,  // 0x00005258 
	0x6422022606060020, 0x2022142402000206, 0x2776766667777667, 0x66766004A9999999,  // 0x00005278 
	0x8422000000060060, 0x000000000066680C, 0x000022222A2A6700, 0x0000002499999999,  // 0x00005298 
	0x8990022006066007, 0x333333337766666C, 0x0602022220000066, 0x6060001449999999,  // 0x000052B8 
	0x6444402000201111, 0x111131133306686C, 0x6606303331137666, 0x6603730499999999,  // 0x000052D8 
	0x8990449440333311, 0x333160600867600C, 0x0086865667777676, 0x0333131199999999,  // 0x000052F8 
	0xC80006888B8B8C88, 0xC8C8C88BC88CCBBD, 0xCBCCBBBCBCCCCCCC, 0xBCCBCB8888866668,  // 0x00005318 
};

static u8 unaccounted5338[] = 
{
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx_t _jyasinzou_room_24_vertices_00005340[4] = 
{
	 { 650, 1633, -830, 0, 0, 0, 255, 255, 255, 178 }, // 0x00005340
	 { 650, 1633, -770, 0, 0, 2048, 255, 255, 255, 178 }, // 0x00005350
	 { 710, 1633, -770, 0, 2048, 2048, 255, 255, 255, 178 }, // 0x00005360
	 { 710, 1633, -830, 0, 2048, 0, 255, 255, 255, 178 }, // 0x00005370
};

Vtx_t _jyasinzou_room_24_vertices_00005380[8] = 
{
	 { 650, 1633, -830, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005380
	 { 710, 1633, -830, 0, 0, 0, 0, 0, 0, 0 }, // 0x00005390
	 { 650, 1633, -830, 0, 0, 0, 0, 0, 0, 0 }, // 0x000053A0
	 { 710, 1633, -830, 0, 0, 0, 0, 0, 0, 0 }, // 0x000053B0
	 { 650, 1633, -770, 0, 0, 0, 0, 0, 0, 0 }, // 0x000053C0
	 { 710, 1633, -770, 0, 0, 0, 0, 0, 0, 0 }, // 0x000053D0
	 { 650, 1633, -770, 0, 0, 0, 0, 0, 0, 0 }, // 0x000053E0
	 { 710, 1633, -770, 0, 0, 0, 0, 0, 0, 0 }, // 0x000053F0
};

Gfx _jyasinzou_room_24_dlist_00005400[] =
{
	gsDPPipeSync(), // 0x00005400
	gsSPGeometryMode(0xFF030000, 0x00000000), // 0x00005408
	gsSPVertex(_jyasinzou_room_24_vertices_00005380, 8, 0), // 0x00005410
	gsSPCullDisplayList(0, 7), // 0x00005418
	gsDPPipeSync(), // 0x00005420
	gsSPGeometryMode(0xFF000000, 0x00030000), // 0x00005428
	gsDPPipeSync(), // 0x00005430
	gsSPSetOtherMode(0xE3, 14, 2, 0x00000000), // 0x00005438
	gsSPTexture(65535, 65535, 0, 0, 1), // 0x00005440
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, _jyasinzou_room_24_tex_000054D0), // 0x00005448
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, 7, 0, 1, 6, 0, 1, 5, 0), // 0x00005450
	gsDPLoadSync(), // 0x00005458
	gsDPLoadBlock(7, 0, 0, 2047, 256), // 0x00005460
	gsDPPipeSync(), // 0x00005468
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, 1, 6, 0, 1, 5, 0), // 0x00005470
	gsDPSetTileSize(0, 0, 0, 124, 252), // 0x00005478
	gsDPSetCombineLERP(TEXEL0, K5, SHADE, COMBINED_ALPHA, TEXEL0, 0, PRIMITIVE, 0, COMBINED, K5, PRIMITIVE, COMBINED_ALPHA, TEXEL1, 0, 1, COMBINED), // 0x00005480
	gsSPSetOtherMode(0xE2, 3, 29, 0xC8104DD8), // 0x00005488
	gsSPGeometryMode(0xFF0E0000, 0x00000000), // 0x00005490
	gsSPGeometryMode(0xFF000000, 0x00010400), // 0x00005498
	gsDPSetPrimColor(0, 0, 255, 255, 255, 178), // 0x000054A0
	gsSPVertex(_jyasinzou_room_24_vertices_00005340, 4, 0), // 0x000054A8
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0), // 0x000054B0
	gsSPEndDisplayList(), // 0x000054B8
};

static u8 unaccounted54C0[] = 
{
	0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x54, 0x00, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	
};

u64 _jyasinzou_room_24_tex_000054D0[] = 
{
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000054D0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000054F0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005510 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005530 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005550 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x630063006300A3C3,  // 0x00005570 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005590 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x63006300A3C3C445,  // 0x000055B0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000055D0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x63006300A3C3C445,  // 0x000055F0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005610 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300A3C3A383BC45,  // 0x00005630 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005650 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300A3C3B405ABC3,  // 0x00005670 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005690 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0xA3C3A381ABC3A381,  // 0x000056B0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000056D0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0xA3C3BC45ABC3A3C1,  // 0x000056F0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005710 
	0x6300630063006300, 0x6300630063006300, 0x630063006300A3C3, 0xBC45ABC3ABC3ABC3,  // 0x00005730 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005750 
	0x6300630063006300, 0x6300630063006300, 0x630063006300A3C3, 0xB403AC03ABC3ABC3,  // 0x00005770 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005790 
	0x6300630063006300, 0x6300630063006300, 0x63006300A3C3BC45, 0xB403B403B405B405,  // 0x000057B0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000057D0 
	0x6300630063006300, 0x6300630063006300, 0x63006300A3C3B405, 0xB403BC45BC45BC45,  // 0x000057F0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005810 
	0x6300630063006300, 0x6300630063006300, 0x6300A3C3A3C1B403, 0xB403C485C485BC45,  // 0x00005830 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005850 
	0x6300630063006300, 0x6300630063006300, 0x6300A3C3B405B405, 0xB405BC45C485C445,  // 0x00005870 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005890 
	0x6300630063006300, 0x6300630063006300, 0xA3C3ABC3B405B405, 0xBC45C487C485C485,  // 0x000058B0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000058D0 
	0x6300630063006300, 0x6300630063006300, 0xA3C3BC45B405BC45, 0xC487C487C487CCC7,  // 0x000058F0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005910 
	0x6300630063006300, 0x630063006300A3C3, 0xBC45BC45BC45C487, 0xCCC7CC87C487D4C7,  // 0x00005930 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005950 
	0x6300630063006300, 0x63006300A3C3B405, 0xBC45BC45BC47C487, 0xCCC7CCC7CC87D4C7,  // 0x00005970 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005990 
	0x6300630063006300, 0x63006300A3C3BC45, 0xB445BC47C487C487, 0xCCC7D4C7CCC7D509,  // 0x000059B0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000059D0 
	0x6300630063006300, 0x6300A3C3B405B445, 0xBC45C487C487CCC7, 0xCCC7D4C9D4C9DD09,  // 0x000059F0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005A10 
	0x6300630063006300, 0x6300A3C3AC05B445, 0xBC47C487CCC7CCC7, 0xD509D509D4C9DD09,  // 0x00005A30 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005A50 
	0x6300630063006300, 0x6300A3C3B445BC47, 0xC487CCC7CCC7D4C9, 0xD509DD09D509DD09,  // 0x00005A70 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005A90 
	0x6300630063006300, 0xA3C3AC05BC45BC87, 0xC487CCC7D4C7D509, 0xD509DD09DD09DD09,  // 0x00005AB0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005AD0 
	0x630063006300A3C3, 0xAC05B405BC45BC87, 0xCC87D4C9DD09D509, 0xDD09DD09DD09DD09,  // 0x00005AF0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005B10 
	0x630063006300A3C3, 0xBC45B445BC45C487, 0xCCC7D509DD09DD09, 0xDD09DD09D509D509,  // 0x00005B30 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005B50 
	0x63006300A3C3A3C3, 0xBC45B445C487D4C9, 0xD4C9D509DD09DD09, 0xD509D509D509CCC7,  // 0x00005B70 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005B90 
	0x63006300A3C3BC45, 0xBC45B445C487CCC7, 0xD509D509D509D509, 0xD509D509D509CCC7,  // 0x00005BB0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005BD0 
	0x6300A3C3A3C3BC45, 0xBC45BC45BC87C487, 0xCCC7CCC9D4C9D509, 0xD509D509CCC9C487,  // 0x00005BF0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005C10 
	0x6300A3C3BC45B445, 0xB445B445BC45BC45, 0xBC87C487C487C487, 0xC4C7C487C487BC87,  // 0x00005C30 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005C50 
	0xA3C3AC05CC87BC87, 0xC487C487C487C487, 0xC487C487C487C487, 0xC487C487C487C487,  // 0x00005C70 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005C90 
	0xA3C3AC05AC05AC05, 0xB447B447B447B447, 0xB447B447B447B447, 0xB447B447AC07AC07,  // 0x00005CB0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x630063006300A3C3,  // 0x00005CD0 
	0xA3C3630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005CF0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x630063006300A3C3,  // 0x00005D10 
	0xB405A3C363006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005D30 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x63006300A3C3AC05,  // 0x00005D50 
	0xBC45A3C363006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005D70 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x63006300A3C3B445,  // 0x00005D90 
	0xBC47A3C3A3C36300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005DB0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300A3C3AC03B445,  // 0x00005DD0 
	0xBC45AC05A3C36300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005DF0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300A3C3B445B445,  // 0x00005E10 
	0xBC45BC45B447A3C3, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005E30 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0xA3C3A3C3BC45BC45,  // 0x00005E50 
	0xB445BC45BC47A3C3, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005E70 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0xA3C3B445BC45BC45,  // 0x00005E90 
	0xB445B445BC47B445, 0xA3C3630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005EB0 
	0x6300630063006300, 0x6300630063006300, 0x630063006300A3C3, 0xAC03BC45BC45BC45,  // 0x00005ED0 
	0xB445B445B445C487, 0xA3C3630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005EF0 
	0x6300630063006300, 0x6300630063006300, 0x63006300A3C3A3C3, 0xBC45BC45BC45BC45,  // 0x00005F10 
	0xBC45B445B445B445, 0xB405A3C363006300, 0x6300630063006300, 0x6300630063006300,  // 0x00005F30 
	0x6300630063006300, 0x6300630063006300, 0x63006300A3C3AC03, 0xBC45BC45BC45C485,  // 0x00005F50 
	0xC445BC45B445B445, 0xBC45A3C3A3C36300, 0x6300630063006300, 0x6300630063006300,  // 0x00005F70 
	0x6300630063006300, 0x6300630063006300, 0x6300A3C3AC03BC45, 0xBC45BC45C485C485,  // 0x00005F90 
	0xC485BC45B445B445, 0xBC45AC05A3C36300, 0x6300630063006300, 0x6300630063006300,  // 0x00005FB0 
	0x6300630063006300, 0x6300630063006300, 0x6300A3C3AC05BC45, 0xBC45BC45C485C485,  // 0x00005FD0 
	0xC487C485B445B445, 0xB445BC87B447A3C3, 0x6300630063006300, 0x6300630063006300,  // 0x00005FF0 
	0x6300630063006300, 0x6300630063006300, 0xA3C3A3C3BC45BC45, 0xBC45BC85C487C485,  // 0x00006010 
	0xCC87C487BC45B445, 0xB445BC45C487A3C3, 0x6300630063006300, 0x6300630063006300,  // 0x00006030 
	0x6300630063006300, 0x6300630063006300, 0xA3C3BC45BC85BC85, 0xBC85C485CC87CC87,  // 0x00006050 
	0xCC87C487C485BC45, 0xB445B445BC47B447, 0xA3C3630063006300, 0x6300630063006300,  // 0x00006070 
	0x6300630063006300, 0x630063006300A3C3, 0xA3C3BC45BC85BC85, 0xBC85C487CCC7CC87,  // 0x00006090 
	0xCCC7CC87C445BC45, 0xB445B445BC45C487, 0xA3C3630063006300, 0x6300630063006300,  // 0x000060B0 
	0x6300630063006300, 0x630063006300A3C3, 0xBC45BC85BC85BC85, 0xC485CC87CC87CCC7,  // 0x000060D0 
	0xCCC7CCC7C487C485, 0xBC45B445B445C487, 0xC487A3C363006300, 0x6300630063006300,  // 0x000060F0 
	0x6300630063006300, 0x63006300A3C3A3C3, 0xBC45BC85BC45C485, 0xCC87CCC7CCC7CCC7,  // 0x00006110 
	0xCCC7CCC7CCC7C485, 0xBC45BC45BC45BC45, 0xCC87A3C3A3C36300, 0x6300630063006300,  // 0x00006130 
	0x6300630063006300, 0x63006300A3C3BC45, 0xBC45BC45C485CC87, 0xCC87CCC7D4C7D4C7,  // 0x00006150 
	0xD4C7CCC7CCC7C487, 0xBC85BC45BC45BC45, 0xCC87CC87A3C36300, 0x6300630063006300,  // 0x00006170 
	0x6300630063006300, 0x6300A3C3B405BC45, 0xBC85C485CC87CCC7, 0xD4C7D4C7D4C7D4C7,  // 0x00006190 
	0xD4C7D4C7CCC7CCC7, 0xC487C485BC45BC45, 0xBC45CC87CC87A3C3, 0x6300630063006300,  // 0x000061B0 
	0x6300630063006300, 0x6300A3C3BC45BC45, 0xC485CC87CCC7D4C7, 0xD4C7D4C7D4C7D4C7,  // 0x000061D0 
	0xD4C7D4C7D4C7CCC7, 0xC487C487BC85BC45, 0xBC45C487CC87A3C3, 0x6300630063006300,  // 0x000061F0 
	0x6300630063006300, 0xA3C3B403BC45BC45, 0xC485CC87D4C7D4C7, 0xD4C7D4C7D507D507,  // 0x00006210 
	0xD507D4C7D4C7D4C7, 0xCCC7C487BC85BC45, 0xBC45BC87CC87CC87, 0xA3C3630063006300,  // 0x00006230 
	0x6300630063006300, 0xA3C3B445BC45C445, 0xCC87CCC7D4C7D4C7, 0xDCC7DD09DD09D507,  // 0x00006250 
	0xD4C7D4C7CCC7D4C7, 0xD4C7C487BC87BC87, 0xBC47BC47BC47CC87, 0xA3C3630063006300,  // 0x00006270 
	0x630063006300A3C3, 0xAC03BC45BC45C445, 0xCC87D4C7D4C7D4C7, 0xD4C7D4C7D4C7D4C7,  // 0x00006290 
	0xDCC7DD07DD07D507, 0xD4C7C487C487CC87, 0xC485BC85BC47CC87, 0xCC87A3C363006300,  // 0x000062B0 
	0x63006300A3C3AC03, 0xBC45BC45BC45CC85, 0xCC87CC87CC87CC87, 0xCCC7D4C7D4C7D4C7,  // 0x000062D0 
	0xD4C7D4C7D4C7D507, 0xD507D4C7D4C7DCC7, 0xD4C7CC85C487C487, 0xCCC7A3C3A3C36300,  // 0x000062F0 
	0x63006300A3C3AC05, 0xBC45B403C445C485, 0xC485C485C487CC87, 0xCC87CCC7CCC7CCC7,  // 0x00006310 
	0xC487CCC7CCC7D4C7, 0xD4C7D4C7DCC7DCC7, 0xD4C7D4C7CC87C487, 0xCCC7CC87A3C36300,  // 0x00006330 
	0x6300A3C3A3C3BC45, 0xBC45C445C445C485, 0xC485C485C485C485, 0xC487C487CC87C487,  // 0x00006350 
	0xC487CC87CC87CCC7, 0xCCC7D4C7D4C7D4C7, 0xD4C7CCC7CC87CC87, 0xCC87D4C7A3C3A3C3,  // 0x00006370 
	0x6300A3C3A3C19B81, 0x9B81A381A3C3ABC3, 0xABC3ABC3ABC3ABC3, 0xABC3AC05AC05AC05,  // 0x00006390 
	0xAC05B445BC45BC47, 0xC447C447C447C447, 0xC445C445C445C445, 0xCC45CC45CC45A3C3,  // 0x000063B0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000063D0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x000063F0 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00006410 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00006430 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00006450 
	0x6300630063006300, 0x630063006B006B00, 0x6B007B0063006300, 0x6300630063006300,  // 0x00006470 
	0x6300630063006300, 0x6300630063006300, 0x6300630063006300, 0x6300630063006300,  // 0x00006490 
	0x6300630063006300, 0x6300630063006300, 0x630063006B006B00, 0x6B006B006B006300,  // 0x000064B0 
};


