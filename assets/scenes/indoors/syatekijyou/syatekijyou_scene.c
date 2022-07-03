#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "syatekijyou_scene.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "syatekijyou_room_0.h"

SceneCmd syatekijyou_sceneCommands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(syatekijyou_sceneAlternateHeaders0x000068),
    SCENE_CMD_SOUND_SETTINGS(5, 19, 78),
    SCENE_CMD_ROOM_LIST(1, syatekijyou_sceneRoomList0x0000B0),
    SCENE_CMD_TRANSITION_ACTOR_LIST(1, syatekijyou_sceneTransitionActorList_0000A0),
    SCENE_CMD_MISC_SETTINGS(0x50, 0x0000000E),
    SCENE_CMD_COL_HEADER(&syatekijyou_sceneCollisionHeader_001420),
    SCENE_CMD_ENTRANCE_LIST(syatekijyou_sceneEntranceList0x0000B8),
    SCENE_CMD_SPECIAL_FILES(0x00, OBJECT_GAMEPLAY_FIELD_KEEP),
    SCENE_CMD_SPAWN_LIST(2, syatekijyou_sceneStartPositionList0x000080),
    SCENE_CMD_SKYBOX_SETTINGS(0, 0, true),
    SCENE_CMD_EXIT_LIST(syatekijyou_sceneExitList_0000BC),
    SCENE_CMD_ENV_LIGHT_SETTINGS(4, syatekijyou_sceneLightSettings0x0000C0),
    SCENE_CMD_END(),
};

SceneCmd* syatekijyou_sceneAlternateHeaders0x000068[] = {
    NULL,
    NULL,
    NULL,
    syatekijyou_sceneSet_001A20,
    syatekijyou_sceneSet_001AC0,
    syatekijyou_sceneSet_001B70,
};

ActorEntry syatekijyou_sceneStartPositionList0x000080[] = {
    { ACTOR_PLAYER,     {    -10,      0,    380 }, {      0, 0X8000,      0 }, 0x0E00 },
    { ACTOR_PLAYER,     {    -10,      0,    380 }, {      0, 0X8000,      0 }, 0x0E00 },
};

TransitionActorEntry syatekijyou_sceneTransitionActorList_0000A0[] = {
    { 0, 255, 0, 255, ACTOR_EN_DOOR, -10, 0, 420, 0, 0x01BF },
};

RomFile syatekijyou_sceneRoomList0x0000B0[] = {
    { _syatekijyou_room_0SegmentRomStart, _syatekijyou_room_0SegmentRomEnd },
};

EntranceEntry syatekijyou_sceneEntranceList0x0000B8[] = {
    { 0x00, 0x00 },
    { 0x01, 0x00 },
};

u16 syatekijyou_sceneExitList_0000BC[] = {
    0x7FFA,
    0x0000,
};

LightSettings syatekijyou_sceneLightSettings0x0000C0[] = {
    { 0x50, 0x3C, 0x3C, 0x00, 0x6A, 0x45, 0xC8, 0xB4, 0xB4, 0x00, 0x96, 0xBB, 0x14, 0x14, 0x14, 0x00, 0x00, 0x00,
    0x07E4, 0x3200 },
    { 0x69, 0x5A, 0x5A, 0x49, 0x49, 0x49, 0xFF, 0xFF, 0xF0, 0xB7, 0xB7, 0xB7, 0x32, 0x32, 0x5A, 0x64, 0x64, 0x78,
    0x07E4, 0x3200 },
    { 0x78, 0x5A, 0x00, 0x49, 0x49, 0x49, 0xFA, 0x87, 0x32, 0xB7, 0xB7, 0xB7, 0x1E, 0x1E, 0x3C, 0x1C, 0x14, 0x00,
    0x07E1, 0x3200 },
    { 0x28, 0x28, 0x46, 0x49, 0x49, 0x49, 0x14, 0x14, 0x23, 0xB7, 0xB7, 0xB7, 0x32, 0x32, 0x64, 0x00, 0x00, 0x1E,
    0x07E0, 0x3200 },
};

u8 syatekijyou_scene_possiblePadding_000118[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vec3s syatekijyou_sceneCollisionHeader_001420CamPosData[] = {
    {   -192,     79,    318 },
    {   4733, -32586,      0 },
    {     60,     10,     -1 },
};

CamData syatekijyou_sceneCollisionHeader_001420CamDataList[] = {
    { 0x0040, 3, &syatekijyou_sceneCollisionHeader_001420CamPosData[0] },
    { 0x0000, 0, NULL },
};

SurfaceType syatekijyou_sceneCollisionHeader_001420SurfaceType[] = {
    { 0x00000001, 0x00000FC0 },
    { 0x20000001, 0x00000FC0 },
    { 0x00200001, 0x00000FC0 },
    { 0x80000001, 0x0000080A },
    { 0x80000001, 0x00020FC0 },
    { 0x20000001, 0x00000800 },
    { 0x00000001, 0x00000800 },
    { 0x00000000, 0x00000FC2 },
    { 0x00000000, 0x0000080A },
    { 0x00000101, 0x00000800 },
};

CollisionPoly syatekijyou_sceneCollisionHeader_001420Polygons[] = {
    {0x0000, 0x00EA, 0x00EB, 0x00EC, 0x7F5C, 0xF344, 0x0000, 0x00CD},
    {0x0000, 0x00EA, 0x00EC, 0x00ED, 0x7F5C, 0xF344, 0x0000, 0x00CD},
    {0x0000, 0x00EE, 0x00EF, 0x00F0, 0x8001, 0x0000, 0x0000, 0x00C6},
    {0x0000, 0x00EE, 0x00F0, 0x00F1, 0x8001, 0x0000, 0x0000, 0x00C6},
    {0x0000, 0x00EE, 0x00F1, 0x00F2, 0x8001, 0x0000, 0x0000, 0x00C6},
    {0x0001, 0x003E, 0x003F, 0x0040, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0001, 0x003E, 0x0040, 0x0041, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0002, 0x002C, 0x0041, 0x0040, 0x8001, 0x0000, 0x0000, 0x0050},
    {0x0002, 0x002C, 0x0040, 0x002D, 0x8001, 0x0000, 0x0000, 0x0050},
    {0x0000, 0x0042, 0x0043, 0x0044, 0x7FFF, 0x0000, 0x0000, 0xFF88},
    {0x0000, 0x0042, 0x0044, 0x0045, 0x7FFF, 0x0000, 0x0000, 0xFF88},
    {0x0000, 0x0044, 0x003F, 0x003E, 0x7FFF, 0x0000, 0x0000, 0xFF88},
    {0x0000, 0x0044, 0x003E, 0x0045, 0x7FFF, 0x0000, 0x0000, 0xFF88},
    {0x0003, 0x002F, 0x0030, 0x0031, 0x7FFF, 0x0000, 0x0000, 0xFF74},
    {0x0003, 0x002F, 0x0031, 0x0032, 0x7FFF, 0x0000, 0x0000, 0xFF74},
    {0x0004, 0x0033, 0x0034, 0x0035, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0004, 0x0033, 0x0035, 0x0036, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0000, 0x0034, 0x0037, 0x0038, 0x0000, 0x0000, 0x7FFF, 0xFF68},
    {0x0000, 0x0034, 0x0038, 0x0035, 0x0000, 0x0000, 0x7FFF, 0xFF68},
    {0x0000, 0x0036, 0x0039, 0x003A, 0x0000, 0x0000, 0x8001, 0x0090},
    {0x0000, 0x0036, 0x003A, 0x0033, 0x0000, 0x0000, 0x8001, 0x0090},
    {0x0005, 0x0032, 0x0031, 0x003B, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0005, 0x0032, 0x003B, 0x003C, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0000, 0x0030, 0x003D, 0x003B, 0x0000, 0x0000, 0x8001, 0x0082},
    {0x0000, 0x0030, 0x003B, 0x0031, 0x0000, 0x0000, 0x8001, 0x0082},
    {0x0002, 0x002B, 0x002F, 0x0032, 0x0000, 0x0000, 0x7FFF, 0xFF60},
    {0x0002, 0x002B, 0x0032, 0x003C, 0x0000, 0x0000, 0x7FFF, 0xFF60},
    {0x0000, 0x0092, 0x0093, 0x0094, 0x0000, 0x0000, 0x7FFF, 0x006E},
    {0x0000, 0x0092, 0x0094, 0x0095, 0x0000, 0x0000, 0x7FFF, 0x006E},
    {0x0006, 0x0095, 0x0094, 0x0096, 0x8001, 0x0000, 0x0000, 0xFFC8},
    {0x0006, 0x0095, 0x0096, 0x0097, 0x8001, 0x0000, 0x0000, 0xFFC8},
    {0x0000, 0x0098, 0x0099, 0x0093, 0x7FFF, 0x0000, 0x0000, 0xFFC7},
    {0x0000, 0x0098, 0x0093, 0x0092, 0x7FFF, 0x0000, 0x0000, 0xFFC7},
    {0x0006, 0x0093, 0x0099, 0x0096, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0006, 0x0093, 0x0096, 0x0094, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0000, 0x009A, 0x009B, 0x009C, 0x0000, 0x0000, 0x7FFF, 0x0070},
    {0x0000, 0x009A, 0x009C, 0x009D, 0x0000, 0x0000, 0x7FFF, 0x0070},
    {0x0000, 0x009D, 0x009C, 0x009E, 0x8001, 0x0000, 0x0000, 0x008D},
    {0x0000, 0x009D, 0x009E, 0x009F, 0x8001, 0x0000, 0x0000, 0x008D},
    {0x0000, 0x00A0, 0x00A1, 0x009B, 0x7FFF, 0x0000, 0x0000, 0xFF4B},
    {0x0000, 0x00A0, 0x009B, 0x009A, 0x7FFF, 0x0000, 0x0000, 0xFF4B},
    {0x0000, 0x009B, 0x00A1, 0x009E, 0x3DAF, 0x7027, 0x0000, 0xFF91},
    {0x0000, 0x009B, 0x009E, 0x009C, 0x3DAF, 0x7027, 0x0000, 0xFF91},
    {0x0000, 0x00A2, 0x00A3, 0x00A4, 0x0000, 0x0000, 0x7FFF, 0x006D},
    {0x0000, 0x00A2, 0x00A4, 0x00A5, 0x0000, 0x0000, 0x7FFF, 0x006D},
    {0x0000, 0x00A5, 0x00A4, 0x00A6, 0x8001, 0x0000, 0x0000, 0xFF4C},
    {0x0000, 0x00A5, 0x00A6, 0x00A7, 0x8001, 0x0000, 0x0000, 0xFF4C},
    {0x0000, 0x00A8, 0x00A9, 0x00A3, 0x7FFF, 0x0000, 0x0000, 0x008C},
    {0x0000, 0x00A8, 0x00A3, 0x00A2, 0x7FFF, 0x0000, 0x0000, 0x008C},
    {0x0006, 0x00A3, 0x00A9, 0x00A6, 0xC251, 0x7027, 0x0000, 0xFF92},
    {0x0006, 0x00A3, 0x00A6, 0x00A4, 0xC251, 0x7027, 0x0000, 0xFF92},
    {0x0000, 0x00AA, 0x00AB, 0x00AC, 0x0000, 0x0000, 0x7FFF, 0x00D8},
    {0x0000, 0x00AA, 0x00AC, 0x00AD, 0x0000, 0x0000, 0x7FFF, 0x00D8},
    {0x0000, 0x00AD, 0x00AC, 0x00AE, 0x8001, 0x0000, 0x0000, 0xFFED},
    {0x0000, 0x00AD, 0x00AE, 0x00AF, 0x8001, 0x0000, 0x0000, 0xFFED},
    {0x0000, 0x00B0, 0x00B1, 0x00AB, 0x7FFF, 0x0000, 0x0000, 0xFFEB},
    {0x0000, 0x00B0, 0x00AB, 0x00AA, 0x7FFF, 0x0000, 0x0000, 0xFFEB},
    {0x0006, 0x00AB, 0x00B1, 0x00AE, 0x0000, 0x7FFF, 0x0000, 0xFFC6},
    {0x0006, 0x00AB, 0x00AE, 0x00AC, 0x0000, 0x7FFF, 0x0000, 0xFFC6},
    {0x0000, 0x00B2, 0x00B3, 0x00B4, 0x0000, 0x0000, 0x7FFF, 0x0119},
    {0x0000, 0x00B2, 0x00B4, 0x00B5, 0x0000, 0x0000, 0x7FFF, 0x0119},
    {0x0006, 0x00B3, 0x00B6, 0x00B7, 0x0000, 0x7FFF, 0x0000, 0xFFBB},
    {0x0006, 0x00B3, 0x00B7, 0x00B4, 0x0000, 0x7FFF, 0x0000, 0xFFBB},
    {0x0000, 0x00B8, 0x00B7, 0x00B6, 0x0000, 0x0000, 0x8001, 0xFED3},
    {0x0000, 0x00B8, 0x00B6, 0x00B9, 0x0000, 0x0000, 0x8001, 0xFED3},
    {0x0000, 0x001E, 0x0001, 0x0007, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x001E, 0x0007, 0x001C, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x000D, 0x002A, 0x0000, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x000D, 0x0000, 0x000C, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0007, 0x002B, 0x0008, 0x002C, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0007, 0x002B, 0x002C, 0x002D, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x002A, 0x002E, 0x002D, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x002A, 0x002D, 0x002C, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0017, 0x002B, 0x002E, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0017, 0x002E, 0x001A, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0056, 0x0057, 0x0058, 0x0000, 0x0000, 0x7FFF, 0x017C},
    {0x0000, 0x0056, 0x0058, 0x0059, 0x0000, 0x0000, 0x7FFF, 0x017C},
    {0x0000, 0x005A, 0x005B, 0x005C, 0x0000, 0x0000, 0x7FFF, 0x017C},
    {0x0000, 0x005A, 0x005C, 0x005D, 0x0000, 0x0000, 0x7FFF, 0x017C},
    {0x0000, 0x005E, 0x005F, 0x0060, 0x0000, 0x0000, 0x7FFF, 0x00E0},
    {0x0000, 0x005E, 0x0060, 0x0061, 0x0000, 0x0000, 0x7FFF, 0x00E0},
    {0x0000, 0x0062, 0x0063, 0x0064, 0x0000, 0x0000, 0x7FFF, 0x00E0},
    {0x0000, 0x0062, 0x0064, 0x0065, 0x0000, 0x0000, 0x7FFF, 0x00E0},
    {0x0000, 0x0066, 0x0067, 0x0068, 0x0000, 0x0000, 0x7FFF, 0x0013},
    {0x0000, 0x0066, 0x0068, 0x0069, 0x0000, 0x0000, 0x7FFF, 0x0013},
    {0x0000, 0x006A, 0x006B, 0x006C, 0x0000, 0x0000, 0x7FFF, 0x0013},
    {0x0000, 0x006A, 0x006C, 0x006D, 0x0000, 0x0000, 0x7FFF, 0x0013},
    {0x0000, 0x006E, 0x006F, 0x0070, 0x8001, 0x0000, 0x0000, 0x00C4},
    {0x0000, 0x006E, 0x0070, 0x0071, 0x8001, 0x0000, 0x0000, 0x00C4},
    {0x0000, 0x0072, 0x0073, 0x0074, 0x7FFF, 0x0000, 0x0000, 0x00C4},
    {0x0000, 0x0072, 0x0074, 0x0075, 0x7FFF, 0x0000, 0x0000, 0x00C4},
    {0x0000, 0x0076, 0x0077, 0x0078, 0x7FFF, 0x0000, 0x0000, 0x00C4},
    {0x0000, 0x0076, 0x0078, 0x0079, 0x7FFF, 0x0000, 0x0000, 0x00C4},
    {0x0000, 0x007A, 0x007B, 0x007C, 0x8001, 0x0000, 0x0000, 0x00C4},
    {0x0000, 0x007A, 0x007C, 0x007D, 0x8001, 0x0000, 0x0000, 0x00C4},
    {0x0000, 0x007E, 0x007F, 0x0080, 0x0000, 0x8001, 0x0000, 0x00F3},
    {0x0000, 0x007E, 0x0080, 0x0081, 0x0000, 0x8001, 0x0000, 0x00F3},
    {0x0000, 0x0082, 0x0083, 0x0084, 0x0000, 0x0000, 0x7FFF, 0x0017},
    {0x0000, 0x0082, 0x0084, 0x0085, 0x0000, 0x0000, 0x7FFF, 0x0017},
    {0x0000, 0x0086, 0x0087, 0x0088, 0x0000, 0x0000, 0x7FFF, 0x00E4},
    {0x0000, 0x0086, 0x0088, 0x0089, 0x0000, 0x0000, 0x7FFF, 0x00E4},
    {0x0000, 0x008A, 0x008B, 0x008C, 0x0000, 0x0000, 0x7FFF, 0x00E4},
    {0x0000, 0x008A, 0x008C, 0x008D, 0x0000, 0x0000, 0x7FFF, 0x00E4},
    {0x0000, 0x008E, 0x008F, 0x0090, 0x0000, 0x0000, 0x7FFF, 0x0017},
    {0x0000, 0x008E, 0x0090, 0x0091, 0x0000, 0x0000, 0x7FFF, 0x0017},
    {0x0008, 0x0046, 0x0047, 0x0048, 0x0000, 0x7FFF, 0x0000, 0xFFF6},
    {0x0008, 0x0046, 0x0048, 0x0049, 0x0000, 0x7FFF, 0x0000, 0xFFF6},
    {0x0000, 0x004A, 0x0047, 0x0046, 0x7FFF, 0x0000, 0x0000, 0xFFD8},
    {0x0000, 0x004A, 0x0046, 0x004B, 0x7FFF, 0x0000, 0x0000, 0xFFD8},
    {0x0000, 0x004C, 0x0049, 0x0048, 0x8001, 0x0000, 0x0000, 0xFFB0},
    {0x0000, 0x004C, 0x0048, 0x004D, 0x8001, 0x0000, 0x0000, 0xFFB0},
    {0x0000, 0x004B, 0x0046, 0x0049, 0x0000, 0x0000, 0x7FFF, 0xFF24},
    {0x0000, 0x004B, 0x0049, 0x004C, 0x0000, 0x0000, 0x7FFF, 0xFF24},
    {0x0008, 0x004E, 0x004F, 0x0050, 0x0000, 0x7FFF, 0x0000, 0xFFEC},
    {0x0008, 0x004E, 0x0050, 0x0051, 0x0000, 0x7FFF, 0x0000, 0xFFEC},
    {0x0000, 0x0052, 0x004F, 0x004E, 0x0000, 0x0000, 0x7FFF, 0xFF38},
    {0x0000, 0x0052, 0x004E, 0x0053, 0x0000, 0x0000, 0x7FFF, 0xFF38},
    {0x0000, 0x0054, 0x0050, 0x004F, 0x7FFF, 0x0000, 0x0000, 0xFFEC},
    {0x0000, 0x0054, 0x004F, 0x0052, 0x7FFF, 0x0000, 0x0000, 0xFFEC},
    {0x0000, 0x0053, 0x004E, 0x0051, 0x8001, 0x0000, 0x0000, 0xFFC4},
    {0x0000, 0x0053, 0x0051, 0x0055, 0x8001, 0x0000, 0x0000, 0xFFC4},
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0x0190},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0x0190},
    {0x0000, 0x0004, 0x0005, 0x0002, 0x0000, 0x0000, 0x8001, 0x0190},
    {0x0000, 0x0006, 0x0007, 0x0008, 0x0000, 0x0000, 0x8001, 0x0190},
    {0x0000, 0x0005, 0x0004, 0x0009, 0x8001, 0x0000, 0x0000, 0x00C8},
    {0x0000, 0x0005, 0x0009, 0x000A, 0x8001, 0x0000, 0x0000, 0x00C8},
    {0x0000, 0x0000, 0x0003, 0x000B, 0x8001, 0x0000, 0x0000, 0x00D4},
    {0x0000, 0x0000, 0x000B, 0x000C, 0x8001, 0x0000, 0x0000, 0x00D4},
    {0x0000, 0x000B, 0x0003, 0x0005, 0x0000, 0x8001, 0x0000, 0x0064},
    {0x0000, 0x000B, 0x0005, 0x000A, 0x0000, 0x8001, 0x0000, 0x0064},
    {0x0000, 0x000D, 0x000C, 0x000B, 0x0000, 0x0000, 0x7FFF, 0xFEAD},
    {0x0000, 0x000D, 0x000B, 0x000A, 0x0000, 0x0000, 0x7FFF, 0xFEAD},
    {0x0000, 0x0006, 0x0008, 0x000E, 0x0000, 0x0000, 0x8001, 0x0190},
    {0x0000, 0x0004, 0x0002, 0x0006, 0x0000, 0x0000, 0x8001, 0x0190},
    {0x0000, 0x0004, 0x0006, 0x000E, 0x0000, 0x0000, 0x8001, 0x0190},
    {0x0000, 0x000F, 0x0010, 0x0011, 0x8001, 0x0000, 0x0000, 0x0104},
    {0x0000, 0x000F, 0x0011, 0x0012, 0x8001, 0x0000, 0x0000, 0x0104},
    {0x0000, 0x0013, 0x000F, 0x0014, 0x0000, 0x0000, 0x7FFF, 0x0190},
    {0x0000, 0x0013, 0x0014, 0x0015, 0x0000, 0x0000, 0x7FFF, 0x0190},
    {0x0000, 0x0013, 0x0015, 0x0016, 0x0000, 0x0000, 0x7FFF, 0x0190},
    {0x0000, 0x000E, 0x0008, 0x0017, 0x7FFF, 0x0000, 0x0000, 0x00C8},
    {0x0000, 0x000E, 0x0017, 0x0018, 0x7FFF, 0x0000, 0x0000, 0x00C8},
    {0x0000, 0x000D, 0x0009, 0x0019, 0x8001, 0x0000, 0x0000, 0x00C8},
    {0x0000, 0x000D, 0x0019, 0x001A, 0x8001, 0x0000, 0x0000, 0x00C8},
    {0x0000, 0x0007, 0x0006, 0x001B, 0x7FFF, 0x0000, 0x0000, 0x0028},
    {0x0000, 0x0007, 0x001B, 0x001C, 0x7FFF, 0x0000, 0x0000, 0x0028},
    {0x0000, 0x001D, 0x0002, 0x0001, 0x8001, 0x0000, 0x0000, 0x0014},
    {0x0000, 0x001D, 0x0001, 0x001E, 0x8001, 0x0000, 0x0000, 0x0014},
    {0x0000, 0x001B, 0x0006, 0x0002, 0x0000, 0x8001, 0x0000, 0x0064},
    {0x0000, 0x001B, 0x0002, 0x001D, 0x0000, 0x8001, 0x0000, 0x0064},
    {0x0000, 0x00E6, 0x00E7, 0x00E8, 0x8001, 0x0000, 0x0000, 0x00C4},
    {0x0000, 0x00E6, 0x00E8, 0x00E9, 0x8001, 0x0000, 0x0000, 0x00C4},
    {0x0000, 0x00BA, 0x00BB, 0x00BC, 0x0000, 0x0000, 0x7FFF, 0xFFB9},
    {0x0000, 0x00BA, 0x00BC, 0x00BD, 0x0000, 0x0000, 0x7FFF, 0xFFB9},
    {0x0000, 0x00BE, 0x00BF, 0x00C0, 0x7FFF, 0x0000, 0x0000, 0x00B9},
    {0x0000, 0x00BE, 0x00C0, 0x00C1, 0x7FFF, 0x0000, 0x0000, 0x00B9},
    {0x0000, 0x00C2, 0x00C3, 0x00C4, 0x7FFF, 0x0000, 0x0000, 0x00B9},
    {0x0000, 0x00C2, 0x00C4, 0x00C5, 0x7FFF, 0x0000, 0x0000, 0x00B9},
    {0x0000, 0x00C6, 0x00C7, 0x00C8, 0x0000, 0x0000, 0x7FFF, 0x0083},
    {0x0000, 0x00C6, 0x00C8, 0x00C9, 0x0000, 0x0000, 0x7FFF, 0x0083},
    {0x0000, 0x00CA, 0x00CB, 0x00CC, 0x0000, 0x0000, 0x7FFF, 0x0083},
    {0x0000, 0x00CA, 0x00CC, 0x00CD, 0x0000, 0x0000, 0x7FFF, 0x0083},
    {0x0000, 0x00CE, 0x00CF, 0x00D0, 0x8001, 0x0000, 0x0000, 0x00B9},
    {0x0000, 0x00CE, 0x00D0, 0x00D1, 0x8001, 0x0000, 0x0000, 0x00B9},
    {0x0000, 0x00D2, 0x00D3, 0x00D4, 0x8001, 0x0000, 0x0000, 0x00B9},
    {0x0000, 0x00D2, 0x00D4, 0x00D5, 0x8001, 0x0000, 0x0000, 0x00B9},
    {0x0000, 0x00D6, 0x00D7, 0x00D8, 0x0000, 0x0000, 0x7FFF, 0xFFB9},
    {0x0000, 0x00D6, 0x00D8, 0x00D9, 0x0000, 0x0000, 0x7FFF, 0xFFB9},
    {0x0000, 0x00E0, 0x00E1, 0x00E2, 0x0000, 0x0000, 0x7FFF, 0x016E},
    {0x0000, 0x00E0, 0x00E2, 0x00E3, 0x0000, 0x0000, 0x7FFF, 0x016E},
    {0x0000, 0x00E1, 0x00E4, 0x00E5, 0x0000, 0x0000, 0x7FFF, 0x016E},
    {0x0000, 0x00E1, 0x00E5, 0x00E2, 0x0000, 0x0000, 0x7FFF, 0x016E},
    {0x0000, 0x00DA, 0x00DB, 0x00DC, 0x0000, 0x0000, 0x7FFF, 0x0144},
    {0x0000, 0x00DA, 0x00DC, 0x00DD, 0x0000, 0x0000, 0x7FFF, 0x0144},
    {0x0000, 0x00DB, 0x00DE, 0x00DF, 0x0000, 0x0000, 0x7FFF, 0x0144},
    {0x0000, 0x00DB, 0x00DF, 0x00DC, 0x0000, 0x0000, 0x7FFF, 0x0144},
    {0x0009, 0x00F7, 0x001E, 0x001C, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0009, 0x00F7, 0x001C, 0x00F8, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x001B, 0x00F9, 0x00F8, 0x7FFF, 0x0000, 0x0000, 0x0028},
    {0x0000, 0x001B, 0x00F8, 0x001C, 0x7FFF, 0x0000, 0x0000, 0x0028},
    {0x0000, 0x00F7, 0x00FA, 0x001D, 0x8001, 0x0000, 0x0000, 0x0014},
    {0x0000, 0x00F7, 0x001D, 0x001E, 0x8001, 0x0000, 0x0000, 0x0014},
    {0x0000, 0x00F9, 0x001B, 0x001D, 0x0000, 0x8001, 0x0000, 0x0064},
    {0x0000, 0x00F9, 0x001D, 0x00FA, 0x0000, 0x8001, 0x0000, 0x0064},
    {0x0000, 0x00F7, 0x00F8, 0x00F9, 0x0000, 0x0000, 0x8001, 0x020F},
    {0x0000, 0x00F7, 0x00F9, 0x00FA, 0x0000, 0x0000, 0x8001, 0x020F},
    {0x0000, 0x00FB, 0x00FC, 0x00FD, 0x0000, 0x0000, 0x8001, 0x019A},
    {0x0000, 0x00FB, 0x00FD, 0x00FE, 0x0000, 0x0000, 0x8001, 0x019A},
    {0x0000, 0x00F3, 0x00F4, 0x00F5, 0x8001, 0x0000, 0x0000, 0x00C6},
    {0x0000, 0x00F3, 0x00F5, 0x00F6, 0x8001, 0x0000, 0x0000, 0x00C6},
    {0x0000, 0x0012, 0x001F, 0x0020, 0xDB38, 0x8567, 0x0000, 0x00FA},
    {0x0000, 0x001F, 0x0021, 0x0020, 0xDB38, 0x8567, 0x0000, 0x00FA},
    {0x0000, 0x0022, 0x0021, 0x0023, 0xDB38, 0x8567, 0x0000, 0x00FA},
    {0x0000, 0x0024, 0x0020, 0x0025, 0x24C8, 0x8567, 0x0000, 0x00FA},
    {0x0000, 0x0026, 0x0027, 0x0028, 0x24C8, 0x8567, 0x0000, 0x00FA},
    {0x0000, 0x0026, 0x0028, 0x0021, 0x24C8, 0x8567, 0x0000, 0x00FA},
    {0x0000, 0x0021, 0x0028, 0x0025, 0x24C8, 0x8567, 0x0000, 0x00FA},
    {0x0000, 0x0021, 0x0025, 0x0020, 0x24C8, 0x8567, 0x0000, 0x00FA},
    {0x0000, 0x0029, 0x0026, 0x0021, 0xDB38, 0x8567, 0x0000, 0x00FA},
    {0x0000, 0x0029, 0x0021, 0x0022, 0xDB38, 0x8567, 0x0000, 0x00FA},
};

Vec3s syatekijyou_sceneCollisionHeader_001420Vertices[] = {
    {    212,      0,    400 },
    {     20,      0,    400 },
    {     20,    100,    400 },
    {    212,    100,    400 },
    {    200,    189,    400 },
    {    200,    100,    400 },
    {    -40,    100,    400 },
    {    -40,      0,    400 },
    {   -200,      0,    400 },
    {    200,    189,    339 },
    {    200,    100,    339 },
    {    212,    100,    339 },
    {    212,      0,    339 },
    {    200,      0,    339 },
    {   -200,    189,    400 },
    {    260,      0,   -400 },
    {    260,      0,   -303 },
    {    260,    183,   -303 },
    {    260,    183,   -400 },
    {   -260,      0,   -400 },
    {    260,    171,   -400 },
    {      0,    249,   -400 },
    {   -260,    171,   -400 },
    {   -200,      0,   -400 },
    {   -200,    189,   -400 },
    {    200,    189,   -400 },
    {    200,      0,   -400 },
    {    -40,    100,    420 },
    {    -40,      0,    420 },
    {     20,    100,    420 },
    {     20,      0,    420 },
    {    260,    183,   -290 },
    {      0,    261,   -400 },
    {      0,    261,   -232 },
    {    200,    201,   -232 },
    {    200,    201,   -276 },
    {   -260,    183,   -400 },
    {   -200,    201,   -317 },
    {      0,    261,    400 },
    {   -200,    201,    400 },
    {   -200,    201,   -232 },
    {    200,    201,    400 },
    {    200,      0,    400 },
    {   -200,      0,    160 },
    {     80,      0,    400 },
    {     80,      0,    160 },
    {    200,      0,    160 },
    {    140,      0,    160 },
    {    140,      0,    130 },
    {    140,     40,    130 },
    {    140,     40,    160 },
    {    140,     40,    144 },
    {    140,     40,    152 },
    {    200,     40,    152 },
    {    200,     40,    144 },
    {    140,      0,    152 },
    {    200,      0,    152 },
    {    200,      0,    144 },
    {    140,      0,    144 },
    {   -200,     40,    130 },
    {   -200,     40,    160 },
    {   -200,      0,    130 },
    {    120,     40,    400 },
    {    120,     40,    160 },
    {     80,     40,    160 },
    {     80,     40,    400 },
    {    120,      0,    400 },
    {    120,      0,    160 },
    {    120,     36,    160 },
    {    120,     36,    400 },
    {     40,     10,    220 },
    {     40,     10,    160 },
    {    -80,     10,    160 },
    {    -80,     10,    220 },
    {     40,      0,    160 },
    {     40,      0,    220 },
    {    -80,      0,    220 },
    {    -80,      0,    160 },
    {    -60,     20,    200 },
    {     20,     20,    200 },
    {     20,     20,    160 },
    {    -60,     20,    160 },
    {     20,     10,    200 },
    {    -60,     10,    200 },
    {     20,     10,    160 },
    {    -60,     10,    160 },
    {    260,    183,   -380 },
    {      7,    258,   -380 },
    {      7,    246,   -380 },
    {    260,    171,   -380 },
    {   -260,    171,   -380 },
    {     -8,    246,   -380 },
    {     -8,    258,   -380 },
    {   -260,    183,   -380 },
    {   -195,    190,   -224 },
    {     -7,    246,   -224 },
    {     -7,    258,   -224 },
    {   -195,    202,   -224 },
    {      7,    246,   -224 },
    {    196,    190,   -224 },
    {    196,    202,   -224 },
    {      7,    258,   -224 },
    {   -196,    190,    -19 },
    {     -7,    246,    -19 },
    {     -7,    258,    -19 },
    {   -196,    202,    -19 },
    {      7,    247,    -19 },
    {    196,    190,    -19 },
    {    196,    202,    -19 },
    {      7,    259,    -19 },
    {    196,    145,   -224 },
    {    196,    145,    400 },
    {    196,    160,    400 },
    {    196,    160,   -224 },
    {   -196,    160,   -321 },
    {   -196,    160,    400 },
    {   -196,    145,    400 },
    {   -196,    145,   -321 },
    {   -196,    204,   -321 },
    {   -196,    204,    400 },
    {   -196,    189,    400 },
    {   -196,    189,   -321 },
    {    196,    189,   -241 },
    {    196,    189,    400 },
    {    196,    204,    400 },
    {    196,    204,   -241 },
    {     -7,    243,    400 },
    {     -7,    243,   -400 },
    {      7,    243,   -400 },
    {      7,    243,    400 },
    {   -196,    148,    -23 },
    {   -125,    211,    -23 },
    {   -151,    203,    -23 },
    {   -196,    162,    -23 },
    {   -196,    149,   -228 },
    {   -125,    211,   -228 },
    {   -151,    203,   -228 },
    {   -196,    162,   -228 },
    {    200,    159,   -228 },
    {    151,    203,   -228 },
    {    125,    211,   -228 },
    {    200,    145,   -228 },
    {    196,    162,    -23 },
    {    151,    203,    -23 },
    {    125,    211,    -23 },
    {    196,    148,    -23 },
    {     57,      0,   -110 },
    {     57,     40,   -110 },
    {    -56,     40,   -110 },
    {    -56,      0,   -110 },
    {    -56,     40,   -281 },
    {    -56,      0,   -281 },
    {     57,      0,   -281 },
    {     57,     40,   -281 },
    {    181,      0,   -112 },
    {    181,     27,   -112 },
    {    141,     49,   -112 },
    {    141,      0,   -112 },
    {    141,     49,   -284 },
    {    141,      0,   -284 },
    {    181,      0,   -284 },
    {    181,     27,   -284 },
    {   -140,      0,   -109 },
    {   -140,     49,   -109 },
    {   -180,     27,   -109 },
    {   -180,      0,   -109 },
    {   -180,     27,   -281 },
    {   -180,      0,   -281 },
    {   -140,      0,   -281 },
    {   -140,     49,   -281 },
    {     21,     38,   -216 },
    {     21,     58,   -216 },
    {    -19,     58,   -216 },
    {    -19,     38,   -216 },
    {    -19,     58,   -279 },
    {    -19,     38,   -279 },
    {     21,     38,   -279 },
    {     21,     58,   -279 },
    {    200,      0,   -281 },
    {    200,     69,   -281 },
    {   -200,     69,   -281 },
    {   -200,      0,   -281 },
    {    200,     69,   -301 },
    {   -200,     69,   -301 },
    {   -200,      0,   -301 },
    {    200,      0,   -301 },
    {   -196,    106,     71 },
    {   -175,    106,     71 },
    {   -175,    132,     71 },
    {   -196,    132,     71 },
    {   -185,    106,     81 },
    {   -185,    106,     60 },
    {   -185,    132,     60 },
    {   -185,    132,     81 },
    {   -185,    106,   -121 },
    {   -185,    106,   -142 },
    {   -185,    132,   -142 },
    {   -185,    132,   -121 },
    {   -196,    106,   -131 },
    {   -175,    106,   -131 },
    {   -175,    132,   -131 },
    {   -196,    132,   -131 },
    {    196,    132,   -131 },
    {    175,    132,   -131 },
    {    175,    106,   -131 },
    {    196,    106,   -131 },
    {    185,    132,   -121 },
    {    185,    132,   -142 },
    {    185,    106,   -142 },
    {    185,    106,   -121 },
    {    185,    132,     81 },
    {    185,    132,     60 },
    {    185,    106,     60 },
    {    185,    106,     81 },
    {    196,    132,     71 },
    {    175,    132,     71 },
    {    175,    106,     71 },
    {    196,    106,     71 },
    {   -260,    165,   -324 },
    {      0,    165,   -324 },
    {      0,    171,   -324 },
    {   -260,    171,   -324 },
    {    260,    165,   -324 },
    {    260,    171,   -324 },
    {   -260,    158,   -366 },
    {      0,    158,   -366 },
    {      0,    164,   -366 },
    {   -260,    164,   -366 },
    {    260,    158,   -366 },
    {    260,    164,   -366 },
    {    196,    128,     25 },
    {    196,     82,     25 },
    {    196,     82,     41 },
    {    196,    128,     41 },
    {   -195,    111,     40 },
    {   -199,     71,     40 },
    {   -199,     71,      0 },
    {   -195,    111,      0 },
    {    198,    129,    180 },
    {    198,     89,    180 },
    {    198,     84,    194 },
    {    198,     89,    208 },
    {    198,    129,    208 },
    {    198,    107,    160 },
    {    198,    107,    133 },
    {    198,     80,    133 },
    {    198,     80,    160 },
    {     20,      0,    527 },
    {    -40,      0,    527 },
    {    -40,    100,    527 },
    {     20,    100,    527 },
    {     20,      0,    410 },
    {    -40,      0,    410 },
    {    -40,    100,    410 },
    {     20,    100,    410 },
};

CollisionHeader syatekijyou_sceneCollisionHeader_001420 = { 
    { -260, 0, -400 },
    { 260, 261, 527 },
    255, syatekijyou_sceneCollisionHeader_001420Vertices,
    201, syatekijyou_sceneCollisionHeader_001420Polygons,
    syatekijyou_sceneCollisionHeader_001420SurfaceType,
    syatekijyou_sceneCollisionHeader_001420CamDataList,
    0, NULL
};

u8 syatekijyou_scene_possiblePadding_00144C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

CutsceneData syatekijyou_sceneCutsceneData_001450[] = {
    CS_BEGIN_CUTSCENE(2, 420),
    CS_CAM_POS_LIST(0, 391),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x2020),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x2D, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0xFFFFFFD3, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
    CS_CAM_FOCUS_POINT_LIST(0, 420),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x2020),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x2D, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0xFFFFFFD3, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
    CS_END(),
};

u8 syatekijyou_scene_possiblePadding_001638[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CutsceneData syatekijyou_sceneCutsceneData_001640[] = {
    CS_BEGIN_CUTSCENE(2, 420),
    CS_CAM_POS_LIST(0, 391),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x2020),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x2D, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0xFFFFFFD3, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
    CS_CAM_FOCUS_POINT_LIST(0, 420),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x2020),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x2D, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0xFFFFFFD3, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
    CS_END(),
};

u8 syatekijyou_scene_possiblePadding_001828[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CutsceneData syatekijyou_sceneCutsceneData_001830[] = {
    CS_BEGIN_CUTSCENE(2, 420),
    CS_CAM_POS_LIST(0, 391),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x2020),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 44, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x2D, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0xFFFFFFD3, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.000000f, -23, 41, 365, 0x0000),
    CS_CAM_FOCUS_POINT_LIST(0, 420),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x2020),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x2D, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0xFFFFFFD3, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 60.000000f, -23, 40, 228, 0x0000),
    CS_END(),
};

u8 syatekijyou_scene_possiblePadding_001A18[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd syatekijyou_sceneSet_001A20[] = {
    SCENE_CMD_SOUND_SETTINGS(5, 0, 31),
    SCENE_CMD_ROOM_LIST(1, syatekijyou_sceneRoomList0x001A98),
    SCENE_CMD_TRANSITION_ACTOR_LIST(1, syatekijyou_sceneTransitionActorList_001A88),
    SCENE_CMD_MISC_SETTINGS(0x00, 0x0000000E),
    SCENE_CMD_COL_HEADER(&syatekijyou_sceneCollisionHeader_001420),
    SCENE_CMD_ENTRANCE_LIST(syatekijyou_sceneEntranceList0x001AA0),
    SCENE_CMD_SPAWN_LIST(1, syatekijyou_sceneStartPositionList0x001A78),
    SCENE_CMD_SKYBOX_SETTINGS(0, 0, true),
    SCENE_CMD_ENV_LIGHT_SETTINGS(1, syatekijyou_sceneLightSettings0x001AA4),
    SCENE_CMD_CUTSCENE_DATA(syatekijyou_sceneCutsceneData_001450),
    SCENE_CMD_END(),
};

ActorEntry syatekijyou_sceneStartPositionList0x001A78[] = {
    { ACTOR_PLAYER,     {    -23,      0,    360 }, {      0, 0X7FFF,      0 }, 0x0FFF },
};

TransitionActorEntry syatekijyou_sceneTransitionActorList_001A88[] = {
    { 0, 255, 0, 255, ACTOR_EN_DOOR, -10, 0, 420, 0, 0x01BF },
};

RomFile syatekijyou_sceneRoomList0x001A98[] = {
    { _syatekijyou_room_0SegmentRomStart, _syatekijyou_room_0SegmentRomEnd },
};

EntranceEntry syatekijyou_sceneEntranceList0x001AA0[] = {
    { 0x00, 0x00 },
    { 0x00, 0x00 },
};

LightSettings syatekijyou_sceneLightSettings0x001AA4[] = {
    { 0x3C, 0x3C, 0x3C, 0x49, 0x49, 0x49, 0x78, 0x78, 0x78, 0xB7, 0xB7, 0xB7, 0x32, 0x50, 0x50, 0x00, 0x00, 0x00,
    0x07E4, 0x3200 },
};

u8 syatekijyou_scene_possiblePadding_001ABC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd syatekijyou_sceneSet_001AC0[] = {
    SCENE_CMD_SOUND_SETTINGS(5, 0, 31),
    SCENE_CMD_ROOM_LIST(1, syatekijyou_sceneRoomList0x001B48),
    SCENE_CMD_TRANSITION_ACTOR_LIST(1, syatekijyou_sceneTransitionActorList_001B38),
    SCENE_CMD_MISC_SETTINGS(0x00, 0x0000000E),
    SCENE_CMD_COL_HEADER(&syatekijyou_sceneCollisionHeader_001420),
    SCENE_CMD_ENTRANCE_LIST(syatekijyou_sceneEntranceList0x001B50),
    SCENE_CMD_SPECIAL_FILES(0x00, OBJECT_GAMEPLAY_DANGEON_KEEP),
    SCENE_CMD_SPAWN_LIST(1, syatekijyou_sceneStartPositionList0x001B28),
    SCENE_CMD_SKYBOX_SETTINGS(0, 0, true),
    SCENE_CMD_EXIT_LIST(syatekijyou_sceneExitList_001B54),
    SCENE_CMD_ENV_LIGHT_SETTINGS(1, syatekijyou_sceneLightSettings0x001B58),
    SCENE_CMD_CUTSCENE_DATA(syatekijyou_sceneCutsceneData_001640),
    SCENE_CMD_END(),
};

ActorEntry syatekijyou_sceneStartPositionList0x001B28[] = {
    { ACTOR_PLAYER,     {     -5,      0,    343 }, {      0, 0X7FFF,      0 }, 0x0FFF },
};

TransitionActorEntry syatekijyou_sceneTransitionActorList_001B38[] = {
    { 0, 255, 0, 255, ACTOR_EN_DOOR, -10, 0, 420, 0, 0x01BF },
};

RomFile syatekijyou_sceneRoomList0x001B48[] = {
    { _syatekijyou_room_0SegmentRomStart, _syatekijyou_room_0SegmentRomEnd },
};

EntranceEntry syatekijyou_sceneEntranceList0x001B50[] = {
    { 0x00, 0x00 },
    { 0x00, 0x00 },
};

u16 syatekijyou_sceneExitList_001B54[] = {
    0x03BC,
    0x0000,
};

LightSettings syatekijyou_sceneLightSettings0x001B58[] = {
    { 0x3C, 0x3C, 0x3C, 0x49, 0x49, 0x49, 0x78, 0x78, 0x78, 0xB7, 0xB7, 0xB7, 0x32, 0x50, 0x50, 0x00, 0x00, 0x00,
    0x07E4, 0x3200 },
};

SceneCmd syatekijyou_sceneSet_001B70[] = {
    SCENE_CMD_SOUND_SETTINGS(5, 0, 31),
    SCENE_CMD_ROOM_LIST(1, syatekijyou_sceneRoomList0x001BF8),
    SCENE_CMD_TRANSITION_ACTOR_LIST(1, syatekijyou_sceneTransitionActorList_001BE8),
    SCENE_CMD_MISC_SETTINGS(0x00, 0x0000000E),
    SCENE_CMD_COL_HEADER(&syatekijyou_sceneCollisionHeader_001420),
    SCENE_CMD_ENTRANCE_LIST(syatekijyou_sceneEntranceList0x001C00),
    SCENE_CMD_SPECIAL_FILES(0x00, OBJECT_GAMEPLAY_DANGEON_KEEP),
    SCENE_CMD_SPAWN_LIST(1, syatekijyou_sceneStartPositionList0x001BD8),
    SCENE_CMD_SKYBOX_SETTINGS(0, 0, true),
    SCENE_CMD_EXIT_LIST(syatekijyou_sceneExitList_001C04),
    SCENE_CMD_ENV_LIGHT_SETTINGS(2, syatekijyou_sceneLightSettings0x001C08),
    SCENE_CMD_CUTSCENE_DATA(syatekijyou_sceneCutsceneData_001830),
    SCENE_CMD_END(),
};

ActorEntry syatekijyou_sceneStartPositionList0x001BD8[] = {
    { ACTOR_PLAYER,     {     -5,      0,    343 }, {      0, 0X7FFF,      0 }, 0x0FFF },
};

TransitionActorEntry syatekijyou_sceneTransitionActorList_001BE8[] = {
    { 0, 255, 0, 255, ACTOR_EN_DOOR, -10, 0, 420, 0, 0x01BF },
};

RomFile syatekijyou_sceneRoomList0x001BF8[] = {
    { _syatekijyou_room_0SegmentRomStart, _syatekijyou_room_0SegmentRomEnd },
};

EntranceEntry syatekijyou_sceneEntranceList0x001C00[] = {
    { 0x00, 0x00 },
    { 0x00, 0x00 },
};

u16 syatekijyou_sceneExitList_001C04[] = {
    0x03BC,
    0x0000,
};

LightSettings syatekijyou_sceneLightSettings0x001C08[] = {
    { 0x3C, 0x3C, 0x3C, 0x49, 0x49, 0x49, 0x78, 0x78, 0x78, 0xB7, 0xB7, 0xB7, 0x32, 0x50, 0x50, 0x00, 0x00, 0x00,
    0x07E4, 0x3200 },
    { 0x2C, 0x28, 0x2E, 0x46, 0x46, 0x4E, 0xCB, 0xCE, 0xCA, 0xB8, 0xB7, 0xB7, 0x3E, 0x36, 0x57, 0x00, 0x00, 0x00,
    0x07E4, 0x3200 },
};

u8 syatekijyou_scene_possiblePadding_001C34[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 syatekijyou_sceneTex_001C40[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_001C40.rgba16.inc.c"
};

u64 syatekijyou_sceneTex_001D40[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_001D40.rgba16.inc.c"
};

u64 syatekijyou_sceneTex_002140[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_002140.rgba16.inc.c"
};

u64 syatekijyou_sceneTex_002540[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_002540.ia4.inc.c"
};

u64 syatekijyou_sceneTex_002740[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_002740.rgba16.inc.c"
};

u64 syatekijyou_sceneTex_003740[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_003740.ia8.inc.c"
};

u64 syatekijyou_sceneTex_003940[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_003940.rgba16.inc.c"
};

u64 syatekijyou_sceneTex_0039C0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_0039C0.ia8.inc.c"
};

u64 syatekijyou_sceneTex_003DC0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_003DC0.rgba16.inc.c"
};

u64 syatekijyou_sceneTex_0041C0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_0041C0.rgba16.inc.c"
};

u64 syatekijyou_sceneTex_0051C0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_0051C0.ia8.inc.c"
};

u64 syatekijyou_sceneTex_0052C0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_0052C0.ia8.inc.c"
};

u64 syatekijyou_sceneTex_0054C0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_0054C0.rgba16.inc.c"
};

u64 syatekijyou_sceneTex_005CC0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_005CC0.rgba16.inc.c"
};

u64 syatekijyou_sceneTex_006CC0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_006CC0.rgba16.inc.c"
};

u64 syatekijyou_sceneTex_007CC0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_007CC0.i8.inc.c"
};

u64 syatekijyou_sceneTex_008CC0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_008CC0.rgba16.inc.c"
};

u64 syatekijyou_sceneTex_009CC0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_009CC0.ia4.inc.c"
};

u64 syatekijyou_sceneTex_00A4C0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_00A4C0.rgba16.inc.c"
};

u64 syatekijyou_sceneTex_00ACC0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_00ACC0.ia8.inc.c"
};

u64 syatekijyou_sceneTex_00B0C0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_00B0C0.i4.inc.c"
};

u64 syatekijyou_sceneTex_00B2C0[] = {
#include "assets/scenes/indoors/syatekijyou/syatekijyou_sceneTex_00B2C0.rgba16.inc.c"
};

