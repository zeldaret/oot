#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "drag_scene.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "drag_room_0.h"

SceneCmd drag_sceneCommands[] = {
    SCENE_CMD_SOUND_SETTINGS(5, 19, 31),
    SCENE_CMD_ROOM_LIST(1, drag_sceneRoomList0x000088),
    SCENE_CMD_MISC_SETTINGS(0x10, 0x00000001),
    SCENE_CMD_COL_HEADER(&drag_sceneCollisionHeader_0003C0),
    SCENE_CMD_ENTRANCE_LIST(drag_sceneEntranceList0x000090),
    SCENE_CMD_SPECIAL_FILES(0x00, OBJECT_GAMEPLAY_FIELD_KEEP),
    SCENE_CMD_SPAWN_LIST(3, drag_sceneStartPositionList0x000058),
    SCENE_CMD_SKYBOX_SETTINGS(22, 0, true),
    SCENE_CMD_EXIT_LIST(drag_sceneExitList_000098),
    SCENE_CMD_ENV_LIGHT_SETTINGS(1, drag_sceneLightSettings0x00009C),
    SCENE_CMD_END(),
};

ActorEntry drag_sceneStartPositionList0x000058[] = {
    { ACTOR_PLAYER,     {     31,      0,    147 }, {      0, 0X8000,      0 }, 0x0EFF },
    { ACTOR_PLAYER,     {     31,      0,    147 }, {      0, 0X8000,      0 }, 0x0EFF },
    { ACTOR_PLAYER,     {    -79,      0,     61 }, {      0, 0X1C72,      0 }, 0x0DFF },
};

RomFile drag_sceneRoomList0x000088[] = {
    { _drag_room_0SegmentRomStart, _drag_room_0SegmentRomEnd },
};

EntranceEntry drag_sceneEntranceList0x000090[] = {
    { 0x00, 0x00 },
    { 0x01, 0x00 },
    { 0x02, 0x00 },
    { 0x00, 0x00 },
};

u16 drag_sceneExitList_000098[] = {
    0x044B,
    0x04FF,
};

LightSettings drag_sceneLightSettings0x00009C[] = {
    { 0x46, 0x28, 0x28, 0xCB, 0x5D, 0x43, 0xC8, 0xB4, 0xAA, 0x63, 0x34, 0x3A, 0x28, 0x32, 0x50, 0x0A, 0x0A, 0x0A,
    0x07E0, 0x07D0 },
};

u8 drag_scene_possiblePadding_0000B4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vec3s drag_sceneCollisionHeader_0003C0CamPosData[] = {
    {    120,     88,    320 },
    {   1456, -28763,      0 },
    {   5000,     -1,     -1 },
    {     30,     60,     60 },
    {      0, -32768,      0 },
    {     -1,     -1,     -1 },
};

CamData drag_sceneCollisionHeader_0003C0CamDataList[] = {
    { 0x0019, 3, &drag_sceneCollisionHeader_0003C0CamPosData[0] },
    { 0x0017, 3, &drag_sceneCollisionHeader_0003C0CamPosData[3] },
    { 0x0000, 0, NULL },
};

SurfaceType drag_sceneCollisionHeader_0003C0SurfaceType[] = {
    { 0x00000202, 0x040C57C2 },
    { 0x00000002, 0x000057C2 },
    { 0x00000102, 0x000C57C2 },
    { 0x00000002, 0x000057CA },
};

CollisionPoly drag_sceneCollisionHeader_0003C0Polygons[] = {
    {0x0000, 0x0000, 0x2001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFFFF},
    {0x0000, 0x0000, 0x2003, 0x0001, 0x0000, 0x7FFF, 0x0000, 0xFFFF},
    {0x0001, 0x0004, 0x0005, 0x0006, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0001, 0x0004, 0x0006, 0x0007, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0002, 0x0008, 0x2009, 0x000A, 0x0000, 0x7FFF, 0x0000, 0xFFFF},
    {0x0002, 0x0008, 0x200A, 0x000B, 0x0000, 0x7FFF, 0x0000, 0xFFFF},
    {0x0003, 0x000C, 0x000D, 0x000E, 0x8001, 0x0000, 0x0000, 0x0050},
    {0x0003, 0x000C, 0x000E, 0x000F, 0x8001, 0x0000, 0x0000, 0x0050},
    {0x0003, 0x0010, 0x000C, 0x000F, 0x0000, 0x0000, 0x8001, 0x00A0},
    {0x0003, 0x0010, 0x000F, 0x0011, 0x0000, 0x0000, 0x8001, 0x00A0},
    {0x0003, 0x0012, 0x0013, 0x0014, 0x0000, 0x0000, 0x8001, 0x0050},
    {0x0003, 0x0012, 0x0014, 0x0015, 0x0000, 0x0000, 0x8001, 0x0050},
    {0x0003, 0x0016, 0x0015, 0x0014, 0x7FFF, 0x0000, 0x0000, 0x007C},
    {0x0003, 0x0016, 0x0014, 0x0017, 0x7FFF, 0x0000, 0x0000, 0x007C},
    {0x0001, 0x0018, 0x0019, 0x001A, 0x0000, 0x0000, 0x8001, 0x00A0},
    {0x0001, 0x0018, 0x001A, 0x001B, 0x0000, 0x0000, 0x8001, 0x00A0},
    {0x0003, 0x001C, 0x001D, 0x001E, 0x0000, 0x0000, 0x7FFF, 0xFFE4},
    {0x0003, 0x001C, 0x001E, 0x001F, 0x0000, 0x0000, 0x7FFF, 0xFFE4},
    {0x0001, 0x0020, 0x0021, 0x0022, 0x0000, 0x0000, 0x7FFF, 0x0064},
    {0x0001, 0x0020, 0x0022, 0x0023, 0x0000, 0x0000, 0x7FFF, 0x0064},
    {0x0001, 0x001D, 0x001C, 0x0020, 0x8001, 0x0000, 0x0000, 0xFFA0},
    {0x0001, 0x001D, 0x0020, 0x0023, 0x8001, 0x0000, 0x0000, 0xFFA0},
    {0x0001, 0x001A, 0x0019, 0x0022, 0x7FFF, 0x0000, 0x0000, 0x00A0},
    {0x0001, 0x001A, 0x0022, 0x0021, 0x7FFF, 0x0000, 0x0000, 0x00A0},
    {0x0001, 0x0024, 0x0018, 0x001B, 0x7FFF, 0x0000, 0x0000, 0x0028},
    {0x0001, 0x0024, 0x001B, 0x0025, 0x7FFF, 0x0000, 0x0000, 0x0028},
    {0x0001, 0x001F, 0x001E, 0x0010, 0x8001, 0x0000, 0x0000, 0x00A0},
    {0x0001, 0x001F, 0x0010, 0x0011, 0x8001, 0x0000, 0x0000, 0x00A0},
};

Vec3s drag_sceneCollisionHeader_0003C0Vertices[] = {
    {    -96,      1,   -100 },
    {   -160,      1,      0 },
    {    -96,      1,      0 },
    {   -160,      1,   -100 },
    {    160,      0,   -120 },
    {   -160,      0,   -120 },
    {   -160,      0,    240 },
    {    160,      0,    240 },
    {     80,      1,    160 },
    {    -40,      1,    160 },
    {    -40,      1,    228 },
    {     80,      1,    228 },
    {     80,      0,    160 },
    {     80,      0,    228 },
    {     80,    120,    228 },
    {     80,    120,    160 },
    {    160,      0,    160 },
    {    160,    120,    160 },
    {   -160,      0,     80 },
    {   -160,    120,     80 },
    {   -124,    120,     80 },
    {   -124,      0,     80 },
    {   -124,      0,    240 },
    {   -124,    120,    240 },
    {    -40,      0,    160 },
    {   -160,      0,    160 },
    {   -160,    120,    160 },
    {    -40,    120,    160 },
    {    -96,    120,     28 },
    {    -96,      0,     28 },
    {    160,      0,     28 },
    {    160,    120,     28 },
    {    -96,    120,   -100 },
    {   -160,    120,   -100 },
    {   -160,      0,   -100 },
    {    -96,      0,   -100 },
    {    -40,      0,    228 },
    {    -40,    120,    228 },
};

CollisionHeader drag_sceneCollisionHeader_0003C0 = { 
    { -160, 0, -120 },
    { 160, 144, 242 },
    38, drag_sceneCollisionHeader_0003C0Vertices,
    28, drag_sceneCollisionHeader_0003C0Polygons,
    drag_sceneCollisionHeader_0003C0SurfaceType,
    drag_sceneCollisionHeader_0003C0CamDataList,
    0, NULL
};

