#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "entra_scene.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "entra_room_0.h"

SceneCmd entra_sceneCommands[] = {
    SCENE_CMD_SOUND_SETTINGS(0, 19, 29),
    SCENE_CMD_ROOM_LIST(1, entra_sceneRoomList0x0000A0),
    SCENE_CMD_TRANSITION_ACTOR_LIST(1, entra_sceneTransitionActorList_000090),
    SCENE_CMD_MISC_SETTINGS(0x30, 0x0000000E),
    SCENE_CMD_COL_HEADER(&entra_sceneCollisionHeader_0003B4),
    SCENE_CMD_ENTRANCE_LIST(entra_sceneEntranceList0x0000A8),
    SCENE_CMD_SPECIAL_FILES(0x01, OBJECT_GAMEPLAY_FIELD_KEEP),
    SCENE_CMD_SPAWN_LIST(3, entra_sceneStartPositionList0x000060),
    SCENE_CMD_SKYBOX_SETTINGS(0, 0, true),
    SCENE_CMD_EXIT_LIST(entra_sceneExitList_0000B0),
    SCENE_CMD_ENV_LIGHT_SETTINGS(1, entra_sceneLightSettings0x0000B8),
    SCENE_CMD_END(),
};

ActorEntry entra_sceneStartPositionList0x000060[] = {
    { ACTOR_PLAYER,     {     11,      0,   2155 }, {      0,      0,      0 }, 0x0F00 },
    { ACTOR_PLAYER,     {      5,      0,   2909 }, {      0, 0X8000,      0 }, 0x0F00 },
    { ACTOR_PLAYER,     {    156,      0,   2628 }, {      0, 0XC000,      0 }, 0x0E00 },
};

TransitionActorEntry entra_sceneTransitionActorList_000090[] = {
    { 0, 255, 0, 255, ACTOR_EN_DOOR, 187, 0, 2630, -16384, 0x01BF },
};

RomFile entra_sceneRoomList0x0000A0[] = {
    { _entra_room_0SegmentRomStart, _entra_room_0SegmentRomEnd },
};

EntranceEntry entra_sceneEntranceList0x0000A8[] = {
    { 0x00, 0x00 },
    { 0x01, 0x00 },
    { 0x02, 0x00 },
    { 0x00, 0x00 },
};

u16 entra_sceneExitList_0000B0[] = {
    0x00B1,
    0x01FD,
    0x007E,
    0x0000,
};

LightSettings entra_sceneLightSettings0x0000B8[] = {
    { 0x32, 0x32, 0x32, 0xC9, 0x4E, 0x53, 0xE6, 0xE6, 0xE6, 0x28, 0x5A, 0xB1, 0x32, 0x32, 0x32, 0x0A, 0x0A, 0x0A,
    0x07E0, 0x0BB8 },
};

Vec3s entra_sceneCollisionHeader_0003B4CamPosData[] = {
    {   -260,    820,   2200 },
    {  10923,  10012,      0 },
    {   4683,     -1,     -1 },
};

CamData entra_sceneCollisionHeader_0003B4CamDataList[] = {
    { 0x0019, 3, &entra_sceneCollisionHeader_0003B4CamPosData[0] },
    { 0x0000, 0, NULL },
};

SurfaceType entra_sceneCollisionHeader_0003B4SurfaceType[] = {
    { 0x00000101, 0x00000FC2 },
    { 0x00000001, 0x00000FC2 },
    { 0x00000201, 0x00000FC2 },
    { 0x00000301, 0x00000FC2 },
};

CollisionPoly entra_sceneCollisionHeader_0003B4Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFFFE},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFFFE},
    {0x0001, 0x0004, 0x0005, 0x0006, 0x7FFF, 0x0000, 0x0000, 0x003C},
    {0x0001, 0x0004, 0x0006, 0x0007, 0x7FFF, 0x0000, 0x0000, 0x003C},
    {0x0001, 0x0008, 0x0009, 0x000A, 0x8001, 0x0000, 0x0000, 0x003C},
    {0x0001, 0x0008, 0x000A, 0x000B, 0x8001, 0x0000, 0x0000, 0x003C},
    {0x0001, 0x000C, 0x000D, 0x000E, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0001, 0x000C, 0x000E, 0x000F, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0002, 0x000F, 0x000E, 0x0010, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0002, 0x000F, 0x0010, 0x0011, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0001, 0x0010, 0x0012, 0x0013, 0x7FFF, 0x0000, 0x0000, 0x00B4},
    {0x0001, 0x0010, 0x0013, 0x0014, 0x7FFF, 0x0000, 0x0000, 0x00B4},
    {0x0001, 0x0011, 0x0015, 0x0016, 0x8001, 0x0000, 0x0000, 0x00B4},
    {0x0001, 0x0011, 0x0016, 0x0017, 0x8001, 0x0000, 0x0000, 0x00B4},
    {0x0001, 0x0016, 0x0009, 0x0008, 0x0000, 0x0000, 0x7FFF, 0xF72C},
    {0x0001, 0x0016, 0x0008, 0x0017, 0x0000, 0x0000, 0x7FFF, 0xF72C},
    {0x0001, 0x0007, 0x0013, 0x0012, 0x0000, 0x0000, 0x7FFF, 0xF72C},
    {0x0001, 0x0007, 0x0012, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xF72C},
    {0x0001, 0x0014, 0x0015, 0x0011, 0x0000, 0x0000, 0x8001, 0x0BF4},
    {0x0001, 0x0014, 0x0011, 0x0010, 0x0000, 0x0000, 0x8001, 0x0BF4},
    {0x0001, 0x0005, 0x000B, 0x000A, 0x0000, 0x0000, 0x7FFF, 0xF8BC},
    {0x0001, 0x0005, 0x000A, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xF8BC},
    {0x0001, 0x0018, 0x0019, 0x001A, 0x0000, 0x0000, 0x8001, 0x0A64},
    {0x0001, 0x0018, 0x001A, 0x001B, 0x0000, 0x0000, 0x8001, 0x0A64},
    {0x0001, 0x001B, 0x001C, 0x001D, 0x8001, 0x0000, 0x0000, 0x0139},
    {0x0001, 0x001B, 0x001D, 0x0018, 0x8001, 0x0000, 0x0000, 0x0139},
    {0x0003, 0x001D, 0x001E, 0x0019, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0003, 0x001D, 0x0019, 0x0018, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0001, 0x001C, 0x001F, 0x001E, 0x0000, 0x0000, 0x7FFF, 0xF5D8},
    {0x0001, 0x001C, 0x001E, 0x001D, 0x0000, 0x0000, 0x7FFF, 0xF5D8},
};

Vec3s entra_sceneCollisionHeader_0003B4Vertices[] = {
    {     60,      2,   1860 },
    {    -60,      2,   1860 },
    {    -60,      2,   2100 },
    {     60,      2,   2100 },
    {    -60,      0,   2260 },
    {    -60,      0,   1860 },
    {    -60,    240,   1860 },
    {    -60,    240,   2260 },
    {     60,      0,   2260 },
    {     60,    240,   2260 },
    {     60,    240,   1860 },
    {     60,      0,   1860 },
    {    180,      0,   1860 },
    {   -180,      0,   1860 },
    {   -180,      0,   2940 },
    {    180,      0,   2940 },
    {   -180,      0,   3060 },
    {    180,      0,   3060 },
    {   -180,      0,   2260 },
    {   -180,    240,   2260 },
    {   -180,    240,   3060 },
    {    180,    240,   3060 },
    {    180,    240,   2260 },
    {    180,      0,   2260 },
    {    313,      0,   2660 },
    {    180,      0,   2660 },
    {    180,     80,   2660 },
    {    313,     80,   2660 },
    {    313,     80,   2600 },
    {    313,      0,   2600 },
    {    180,      0,   2600 },
    {    180,     80,   2600 },
};

CollisionHeader entra_sceneCollisionHeader_0003B4 = { 
    { -571, 0, 1860 },
    { 313, 520, 3060 },
    32, entra_sceneCollisionHeader_0003B4Vertices,
    30, entra_sceneCollisionHeader_0003B4Polygons,
    entra_sceneCollisionHeader_0003B4SurfaceType,
    entra_sceneCollisionHeader_0003B4CamDataList,
    0, NULL
};

