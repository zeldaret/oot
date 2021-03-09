#include <ultra64.h>
#include <z64.h>
#include "kokiri_shop_scene.h"
#include <z64.h>
#include <segment_symbols.h>
#include <command_macros_base.h>
#include <z64cutscene_commands.h>
#include <variables.h>



SCmdSoundSettings _kokiri_shop_scene_set0000_cmd00 = { 0x15, 0x05, 0x00, 0x00, 0x00, 0x00, 0x13, 0x55 }; // 0x0000
SCmdRoomList _kokiri_shop_scene_set0000_cmd01 = { 0x04, 0x01, (u32)&_kokiri_shop_scene_roomList_00000068 }; // 0x0008
SCmdMiscSettings _kokiri_shop_scene_set0000_cmd02 = { 0x19, 0x10, 0x00000004 }; // 0x0010
SCmdColHeader _kokiri_shop_scene_set0000_cmd03 = { 0x03, 0x00, (u32)&_kokiri_shop_scene_collisionHeader_00000950}; // 0x0018
SCmdEntranceList _kokiri_shop_scene_set0000_cmd04 = { 0x06, 0x00, (u32)&_kokiri_shop_scene_entranceList_00000070 }; // 0x0020
SCmdSpecialFiles _kokiri_shop_scene_set0000_cmd05 = { 0x07, 0x01, 0x0003}; // 0x0028
SCmdSpawnList _kokiri_shop_scene_set0000_cmd06 = { 0x00, 0x01, (u32)&_kokiri_shop_scene_startPositionList_00000058}; // 0x0030
SCmdSkyboxSettings _kokiri_shop_scene_set0000_cmd07 = { 0x11, 0x00, 0x00, 0x00, 0x11, 0x00, 0x01}; // 0x0038
SCmdExitList _kokiri_shop_scene_set0000_cmd08 = { 0x13, 0x00, (u32)&_kokiri_shop_scene_exitList_00000074 }; // 0x0040
SCmdLightSettingList _kokiri_shop_scene_set0000_cmd09 = { 0x0F, 1, (u32)&_kokiri_shop_scene_lightSettings_00000078}; // 0x0048
SCmdEndMarker _kokiri_shop_scene_set0000_cmd0A = { 0x14, 0x00, 0x00 }; // 0x0050
ActorEntry _kokiri_shop_scene_startPositionList_00000058[] = 
{
	{ ACTOR_PLAYER, 0, 0, 109, 0, -32768, 0, 0x0E00 },
};

RomFile _kokiri_shop_scene_roomList_00000068[] = 
{
	{ (u32)_kokiri_shop_room_0SegmentRomStart, (u32)_kokiri_shop_room_0SegmentRomEnd },
};

EntranceEntry _kokiri_shop_scene_entranceList_00000070[] = 
{
	{ 0x00, 0x00 }, //0x00000070 
	{ 0x00, 0x00 }, //0x00000072 
};

u16 _kokiri_shop_scene_exitList_00000074[] = 
{
	0x0266,
	0x0000,
};

LightSettings _kokiri_shop_scene_lightSettings_00000078[] = 
{
	{ 0x46, 0x3C, 0x32, 0xC7, 0x60, 0x3A, 0x82, 0x82, 0x6E, 0x37, 0x62, 0xC6, 0xDC, 0xA0, 0x6E, 0x0A, 0x0A, 0x0A, 0x07E0, 0x07D0 }, // 0x00000078 
};

CamPosData _kokiri_shop_scene_camPosData_00000090[] = 
{
	{ -100, 100, 260, 2367, 28945, 0, 5000, -1, 0xFFFF }, // 0x02000090
	{ 0, 60, 40, 0, -32768, 0, -1, -1, 0xFFFF }, // 0x020000A2
};

CamData _kokiri_shop_scene_camData_000000B4 = { 0x0019, 0x0003, (u32)_kokiri_shop_scene_camPosData_00000090 };

CamPosDataEntry _kokiri_shop_scene_camPosDataEntries_000000BC[] = 
{
	{ 0x00170003, (u32)&_kokiri_shop_scene_camPosData_00000090[1] }, // 0x000000BC
	{ 0x00000000, 0x00000000 }, // 0x000000C4
};

u32 _kokiri_shop_scene_polygonTypes_000000CC[] = 
{
	 0x00200002, 0x00003000, 
	 0x00000002, 0x000037C0, 
	 0x00000002, 0x00003000, 
	 0x00000102, 0x000C3000, 
	 0x00000002, 0x000017CA, 
};

RoomPoly _kokiri_shop_scene_polygons_000000F4[] = 
{
	{ 0x0000, 0x0000, 0x0001, 0x0002, 0x8D84, 0x0000, 0x393E, 0xFF66 }, // 0x000000F4
	{ 0x0000, 0x0000, 0x0002, 0x0003, 0x8D84, 0x0000, 0x393E, 0xFF66 }, // 0x00000104
	{ 0x0000, 0x0001, 0x0004, 0x0005, 0xC6C2, 0x0000, 0x727C, 0xFF50 }, // 0x00000114
	{ 0x0000, 0x0001, 0x0005, 0x0002, 0xC6C2, 0x0000, 0x727C, 0xFF50 }, // 0x00000124
	{ 0x0000, 0x0004, 0x0006, 0x0007, 0x393E, 0x0000, 0x727C, 0xFFA0 }, // 0x00000134
	{ 0x0000, 0x0004, 0x0007, 0x0005, 0x393E, 0x0000, 0x727C, 0xFFA0 }, // 0x00000144
	{ 0x0000, 0x0006, 0x0008, 0x0009, 0x727C, 0x0000, 0x393E, 0x0007 }, // 0x00000154
	{ 0x0000, 0x0006, 0x0009, 0x0007, 0x727C, 0x0000, 0x393E, 0x0007 }, // 0x00000164
	{ 0x0000, 0x0008, 0x000A, 0x000B, 0x727C, 0x0000, 0xC6C2, 0x0084 }, // 0x00000174
	{ 0x0000, 0x0008, 0x000B, 0x0009, 0x727C, 0x0000, 0xC6C2, 0x0084 }, // 0x00000184
	{ 0x0000, 0x000A, 0x000C, 0x000D, 0x393E, 0x0000, 0x8D84, 0x009B }, // 0x00000194
	{ 0x0000, 0x000A, 0x000D, 0x000B, 0x393E, 0x0000, 0x8D84, 0x009B }, // 0x000001A4
	{ 0x0000, 0x000C, 0x000E, 0x000F, 0xC6C2, 0x0000, 0x8D84, 0x004A }, // 0x000001B4
	{ 0x0000, 0x000C, 0x000F, 0x000D, 0xC6C2, 0x0000, 0x8D84, 0x004A }, // 0x000001C4
	{ 0x0000, 0x000E, 0x0000, 0x0003, 0x8D84, 0x0000, 0xC6C2, 0xFFE3 }, // 0x000001D4
	{ 0x0000, 0x000E, 0x0003, 0x000F, 0x8D84, 0x0000, 0xC6C2, 0xFFE3 }, // 0x000001E4
	{ 0x0000, 0x0010, 0x0011, 0x0012, 0x8D84, 0x0000, 0x393E, 0xFFE8 }, // 0x000001F4
	{ 0x0000, 0x0010, 0x0012, 0x0013, 0x8D84, 0x0000, 0x393E, 0xFFE8 }, // 0x00000204
	{ 0x0000, 0x0011, 0x0014, 0x0015, 0xC6C2, 0x0000, 0x727C, 0xFF8A }, // 0x00000214
	{ 0x0000, 0x0011, 0x0015, 0x0012, 0xC6C2, 0x0000, 0x727C, 0xFF8A }, // 0x00000224
	{ 0x0000, 0x0014, 0x0016, 0x0017, 0x393E, 0x0000, 0x727C, 0xFF54 }, // 0x00000234
	{ 0x0000, 0x0014, 0x0017, 0x0015, 0x393E, 0x0000, 0x727C, 0xFF54 }, // 0x00000244
	{ 0x0000, 0x0016, 0x0018, 0x0019, 0x727C, 0x0000, 0x393E, 0xFF7D }, // 0x00000254
	{ 0x0000, 0x0016, 0x0019, 0x0017, 0x727C, 0x0000, 0x393E, 0xFF7D }, // 0x00000264
	{ 0x0000, 0x0018, 0x001A, 0x001B, 0x727C, 0x0000, 0xC6C2, 0x0003 }, // 0x00000274
	{ 0x0000, 0x0018, 0x001B, 0x0019, 0x727C, 0x0000, 0xC6C2, 0x0003 }, // 0x00000284
	{ 0x0000, 0x001A, 0x001C, 0x001D, 0x393E, 0x0000, 0x8D84, 0x0061 }, // 0x00000294
	{ 0x0000, 0x001A, 0x001D, 0x001B, 0x393E, 0x0000, 0x8D84, 0x0061 }, // 0x000002A4
	{ 0x0000, 0x001C, 0x001E, 0x001F, 0xC6C2, 0x0000, 0x8D84, 0x0096 }, // 0x000002B4
	{ 0x0000, 0x001C, 0x001F, 0x001D, 0xC6C2, 0x0000, 0x8D84, 0x0096 }, // 0x000002C4
	{ 0x0000, 0x001E, 0x0010, 0x0013, 0x8D84, 0x0000, 0xC6C2, 0x006E }, // 0x000002D4
	{ 0x0000, 0x001E, 0x0013, 0x001F, 0x8D84, 0x0000, 0xC6C2, 0x006E }, // 0x000002E4
	{ 0x0001, 0x0020, 0x0021, 0x0022, 0xA57E, 0x0000, 0xA57E, 0x0095 }, // 0x000002F4
	{ 0x0001, 0x0020, 0x0022, 0x0023, 0xA57E, 0x0000, 0xA57E, 0x0095 }, // 0x00000304
	{ 0x0001, 0x0024, 0x0025, 0x0026, 0x8001, 0x0000, 0x0000, 0x00B0 }, // 0x00000314
	{ 0x0001, 0x0024, 0x0026, 0x0027, 0x8001, 0x0000, 0x0000, 0x00B0 }, // 0x00000324
	{ 0x0001, 0x0025, 0x0028, 0x0029, 0xA57E, 0x0000, 0x5A82, 0x00B0 }, // 0x00000334
	{ 0x0001, 0x0025, 0x0029, 0x0026, 0xA57E, 0x0000, 0x5A82, 0x00B0 }, // 0x00000344
	{ 0x0001, 0x0028, 0x002A, 0x002B, 0x0000, 0x0000, 0x7FFF, 0x00B0 }, // 0x00000354
	{ 0x0001, 0x0028, 0x002B, 0x0029, 0x0000, 0x0000, 0x7FFF, 0x00B0 }, // 0x00000364
	{ 0x0001, 0x002A, 0x002C, 0x002D, 0x5A82, 0x0000, 0x5A82, 0x00B0 }, // 0x00000374
	{ 0x0001, 0x002A, 0x002D, 0x002B, 0x5A82, 0x0000, 0x5A82, 0x00B0 }, // 0x00000384
	{ 0x0001, 0x002C, 0x002E, 0x002F, 0x7FFF, 0x0000, 0x0000, 0x00B0 }, // 0x00000394
	{ 0x0001, 0x002C, 0x002F, 0x002D, 0x7FFF, 0x0000, 0x0000, 0x00B0 }, // 0x000003A4
	{ 0x0001, 0x002B, 0x002D, 0x002F, 0x0000, 0x7FFF, 0x0000, 0x0000 }, // 0x000003B4
	{ 0x0001, 0x002B, 0x002F, 0x0030, 0x0000, 0x7FFF, 0x0000, 0x0000 }, // 0x000003C4
	{ 0x0001, 0x002B, 0x0030, 0x0031, 0x0000, 0x7FFF, 0x0000, 0x0000 }, // 0x000003D4
	{ 0x0001, 0x002B, 0x0031, 0x0027, 0x0000, 0x7FFF, 0x0000, 0x0000 }, // 0x000003E4
	{ 0x0001, 0x002B, 0x0027, 0x0026, 0x0000, 0x7FFF, 0x0000, 0x0000 }, // 0x000003F4
	{ 0x0001, 0x002B, 0x0026, 0x0029, 0x0000, 0x7FFF, 0x0000, 0x0000 }, // 0x00000404
	{ 0x0001, 0x002E, 0x0032, 0x0030, 0x5A82, 0x0000, 0xA57E, 0x00B0 }, // 0x00000414
	{ 0x0001, 0x002E, 0x0030, 0x002F, 0x5A82, 0x0000, 0xA57E, 0x00B0 }, // 0x00000424
	{ 0x0002, 0x0033, 0x0034, 0x0035, 0x6EDE, 0x0000, 0xC00A, 0x0094 }, // 0x00000434
	{ 0x0002, 0x0033, 0x0035, 0x0036, 0x6EDE, 0x0000, 0xC00A, 0x0094 }, // 0x00000444
	{ 0x0002, 0x0037, 0x0038, 0x0039, 0x5A82, 0x0000, 0x5A82, 0x0055 }, // 0x00000454
	{ 0x0002, 0x0037, 0x0039, 0x003A, 0x5A82, 0x0000, 0x5A82, 0x0055 }, // 0x00000464
	{ 0x0002, 0x003B, 0x003C, 0x003D, 0x0000, 0x0000, 0x7FFF, 0xFFF6 }, // 0x00000474
	{ 0x0002, 0x003B, 0x003D, 0x003E, 0x0000, 0x0000, 0x7FFF, 0xFFF6 }, // 0x00000484
	{ 0x0002, 0x003C, 0x003F, 0x0040, 0x7FFF, 0x0000, 0x0000, 0xFF88 }, // 0x00000494
	{ 0x0002, 0x003C, 0x0040, 0x003D, 0x7FFF, 0x0000, 0x0000, 0xFF88 }, // 0x000004A4
	{ 0x0002, 0x003F, 0x0041, 0x0042, 0x0000, 0x0000, 0x7FFF, 0x0050 }, // 0x000004B4
	{ 0x0002, 0x003F, 0x0042, 0x0040, 0x0000, 0x0000, 0x7FFF, 0x0050 }, // 0x000004C4
	{ 0x0003, 0x0043, 0x2044, 0x0045, 0x0000, 0x7FFF, 0x0000, 0xFFFE }, // 0x000004D4
	{ 0x0003, 0x0044, 0x2046, 0x0045, 0x0000, 0x7FFF, 0x0000, 0xFFFE }, // 0x000004E4
	{ 0x0004, 0x0047, 0x0048, 0x0049, 0x0000, 0x7FFF, 0x0000, 0xFFF0 }, // 0x000004F4
	{ 0x0004, 0x0047, 0x0049, 0x004A, 0x0000, 0x7FFF, 0x0000, 0xFFF0 }, // 0x00000504
	{ 0x0004, 0x0047, 0x004A, 0x004B, 0x0000, 0x7FFF, 0x0000, 0xFFF0 }, // 0x00000514
	{ 0x0004, 0x0047, 0x004B, 0x004C, 0x0000, 0x7FFF, 0x0000, 0xFFF0 }, // 0x00000524
	{ 0x0004, 0x0047, 0x004C, 0x004D, 0x0000, 0x7FFF, 0x0000, 0xFFF0 }, // 0x00000534
	{ 0x0004, 0x0047, 0x004D, 0x004E, 0x0000, 0x7FFF, 0x0000, 0xFFF0 }, // 0x00000544
	{ 0x0004, 0x0047, 0x004E, 0x004F, 0x0000, 0x7FFF, 0x0000, 0xFFF0 }, // 0x00000554
	{ 0x0004, 0x0047, 0x004F, 0x0050, 0x0000, 0x7FFF, 0x0000, 0xFFF0 }, // 0x00000564
	{ 0x0004, 0x0047, 0x0050, 0x0051, 0x0000, 0x7FFF, 0x0000, 0xFFF0 }, // 0x00000574
	{ 0x0004, 0x0047, 0x0051, 0x0052, 0x0000, 0x7FFF, 0x0000, 0xFFF0 }, // 0x00000584
	{ 0x0001, 0x0053, 0x0054, 0x0048, 0x7B12, 0x0000, 0x232A, 0xFF93 }, // 0x00000594
	{ 0x0001, 0x0053, 0x0048, 0x0047, 0x7B12, 0x0000, 0x232A, 0xFF93 }, // 0x000005A4
	{ 0x0001, 0x0055, 0x0053, 0x0047, 0x4FF5, 0x0000, 0x63F3, 0xFFA4 }, // 0x000005B4
	{ 0x0001, 0x0055, 0x0047, 0x0052, 0x4FF5, 0x0000, 0x63F3, 0xFFA4 }, // 0x000005C4
	{ 0x0001, 0x0056, 0x0055, 0x0052, 0x287A, 0x0000, 0x796E, 0xFFBC }, // 0x000005D4
	{ 0x0001, 0x0056, 0x0052, 0x0051, 0x287A, 0x0000, 0x796E, 0xFFBC }, // 0x000005E4
	{ 0x0001, 0x0057, 0x0056, 0x0051, 0xDCD6, 0x0000, 0x7B12, 0xFFF2 }, // 0x000005F4
	{ 0x0001, 0x0057, 0x0051, 0x0050, 0xDCD6, 0x0000, 0x7B12, 0xFFF2 }, // 0x00000604
	{ 0x0001, 0x0058, 0x0057, 0x0050, 0xA57E, 0x0000, 0x5A82, 0x0021 }, // 0x00000614
	{ 0x0001, 0x0058, 0x0050, 0x004F, 0xA57E, 0x0000, 0x5A82, 0x0021 }, // 0x00000624
	{ 0x0001, 0x0059, 0x0058, 0x004F, 0x84EE, 0x0000, 0x232A, 0x0044 }, // 0x00000634
	{ 0x0001, 0x0059, 0x004F, 0x004E, 0x84EE, 0x0000, 0x232A, 0x0044 }, // 0x00000644
	{ 0x0001, 0x005A, 0x0059, 0x004E, 0x8692, 0x0000, 0xD786, 0x0054 }, // 0x00000654
	{ 0x0001, 0x005A, 0x004E, 0x004D, 0x8692, 0x0000, 0xD786, 0x0054 }, // 0x00000664
	{ 0x0001, 0x005B, 0x005A, 0x004D, 0x9C0D, 0x0000, 0xB00B, 0x004D }, // 0x00000674
	{ 0x0001, 0x005B, 0x004D, 0x004C, 0x9C0D, 0x0000, 0xB00B, 0x004D }, // 0x00000684
	{ 0x0001, 0x005C, 0x005B, 0x004C, 0xDCD6, 0x0000, 0x84EE, 0x0028 }, // 0x00000694
	{ 0x0001, 0x005C, 0x004C, 0x004B, 0xDCD6, 0x0000, 0x84EE, 0x0028 }, // 0x000006A4
	{ 0x0001, 0x005D, 0x005C, 0x004B, 0x287A, 0x0000, 0x8692, 0xFFF1 }, // 0x000006B4
	{ 0x0001, 0x005D, 0x004B, 0x004A, 0x287A, 0x0000, 0x8692, 0xFFF1 }, // 0x000006C4
	{ 0x0001, 0x005E, 0x005D, 0x004A, 0x5A82, 0x0000, 0xA57E, 0xFFC7 }, // 0x000006D4
	{ 0x0001, 0x005E, 0x004A, 0x0049, 0x5A82, 0x0000, 0xA57E, 0xFFC7 }, // 0x000006E4
	{ 0x0001, 0x0054, 0x005E, 0x0049, 0x796E, 0x0000, 0xD786, 0xFFA5 }, // 0x000006F4
	{ 0x0001, 0x0054, 0x0049, 0x0048, 0x796E, 0x0000, 0xD786, 0xFFA5 }, // 0x00000704
};

Vec3s _kokiri_shop_scene_vertices_00000714[95] = 
{
	{ -102, 0, 140 }, // 0x00000714
	{ -98, 0, 148 }, // 0x0000071A
	{ -98, 120, 148 }, // 0x00000720
	{ -102, 120, 140 }, // 0x00000726
	{ -90, 0, 152 }, // 0x0000072C
	{ -90, 120, 152 }, // 0x00000732
	{ -82, 0, 148 }, // 0x00000738
	{ -82, 120, 148 }, // 0x0000073E
	{ -78, 0, 140 }, // 0x00000744
	{ -78, 120, 140 }, // 0x0000074A
	{ -82, 0, 132 }, // 0x00000750
	{ -82, 120, 132 }, // 0x00000756
	{ -90, 0, 128 }, // 0x0000075C
	{ -90, 120, 128 }, // 0x00000762
	{ -98, 0, 132 }, // 0x00000768
	{ -98, 120, 132 }, // 0x0000076E
	{ 48, 0, 150 }, // 0x00000774
	{ 52, 0, 158 }, // 0x0000077A
	{ 52, 120, 158 }, // 0x00000780
	{ 48, 120, 150 }, // 0x00000786
	{ 60, 0, 162 }, // 0x0000078C
	{ 60, 120, 162 }, // 0x00000792
	{ 68, 0, 158 }, // 0x00000798
	{ 68, 120, 158 }, // 0x0000079E
	{ 72, 0, 150 }, // 0x000007A4
	{ 72, 120, 150 }, // 0x000007AA
	{ 68, 0, 142 }, // 0x000007B0
	{ 68, 120, 142 }, // 0x000007B6
	{ 60, 0, 138 }, // 0x000007BC
	{ 60, 120, 138 }, // 0x000007C2
	{ 52, 0, 142 }, // 0x000007C8
	{ 52, 120, 142 }, // 0x000007CE
	{ 176, 0, 35 }, // 0x000007D4
	{ 55, 0, 156 }, // 0x000007DA
	{ 55, 120, 156 }, // 0x000007E0
	{ 176, 120, 35 }, // 0x000007E6
	{ 176, 120, 73 }, // 0x000007EC
	{ 176, 120, -73 }, // 0x000007F2
	{ 176, 0, -73 }, // 0x000007F8
	{ 176, 0, 73 }, // 0x000007FE
	{ 73, 120, -176 }, // 0x00000804
	{ 73, 0, -176 }, // 0x0000080A
	{ -73, 120, -176 }, // 0x00000810
	{ -73, 0, -176 }, // 0x00000816
	{ -176, 120, -73 }, // 0x0000081C
	{ -176, 0, -73 }, // 0x00000822
	{ -176, 120, 73 }, // 0x00000828
	{ -176, 0, 73 }, // 0x0000082E
	{ -73, 0, 176 }, // 0x00000834
	{ 73, 0, 176 }, // 0x0000083A
	{ -73, 120, 176 }, // 0x00000840
	{ -65, 120, 184 }, // 0x00000846
	{ -65, 0, 184 }, // 0x0000084C
	{ -185, 0, -24 }, // 0x00000852
	{ -185, 120, -24 }, // 0x00000858
	{ -200, 0, 80 }, // 0x0000085E
	{ -120, 0, 0 }, // 0x00000864
	{ -120, 120, 0 }, // 0x0000086A
	{ -200, 120, 80 }, // 0x00000870
	{ -140, 0, 10 }, // 0x00000876
	{ 120, 0, 10 }, // 0x0000087C
	{ 120, 120, 10 }, // 0x00000882
	{ -140, 120, 10 }, // 0x00000888
	{ 120, 0, -80 }, // 0x0000088E
	{ 120, 120, -80 }, // 0x00000894
	{ 200, 0, -80 }, // 0x0000089A
	{ 200, 120, -80 }, // 0x000008A0
	{ 60, 2, 140 }, // 0x000008A6
	{ -100, 2, 140 }, // 0x000008AC
	{ 60, 2, 220 }, // 0x000008B2
	{ -100, 2, 220 }, // 0x000008B8
	{ 103, 16, 35 }, // 0x000008BE
	{ 105, 16, 28 }, // 0x000008C4
	{ 103, 16, 22 }, // 0x000008CA
	{ 98, 16, 17 }, // 0x000008D0
	{ 92, 16, 15 }, // 0x000008D6
	{ 85, 16, 17 }, // 0x000008DC
	{ 81, 16, 22 }, // 0x000008E2
	{ 79, 16, 28 }, // 0x000008E8
	{ 81, 16, 35 }, // 0x000008EE
	{ 85, 16, 39 }, // 0x000008F4
	{ 92, 16, 41 }, // 0x000008FA
	{ 98, 16, 39 }, // 0x00000900
	{ 103, 3, 35 }, // 0x00000906
	{ 105, 3, 28 }, // 0x0000090C
	{ 98, 3, 39 }, // 0x00000912
	{ 92, 3, 41 }, // 0x00000918
	{ 85, 3, 39 }, // 0x0000091E
	{ 81, 3, 35 }, // 0x00000924
	{ 79, 3, 28 }, // 0x0000092A
	{ 81, 3, 22 }, // 0x00000930
	{ 85, 3, 17 }, // 0x00000936
	{ 92, 3, 15 }, // 0x0000093C
	{ 98, 3, 17 }, // 0x00000942
	{ 103, 3, 22 }, // 0x00000948
};

CollisionHeader _kokiri_shop_scene_collisionHeader_00000950 = { 0xFF38, 0xFFFF, 0xFF50, 0x00C8, 0x00A0, 0x00DC, 95, _kokiri_shop_scene_vertices_00000714, 0x0062, _kokiri_shop_scene_polygons_000000F4, _kokiri_shop_scene_polygonTypes_000000CC, &_kokiri_shop_scene_camData_000000B4, 0x0000, 0 };
static u32 pad97C = 0;


