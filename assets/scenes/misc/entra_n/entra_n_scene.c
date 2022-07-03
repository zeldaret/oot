#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "entra_n_scene.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "entra_n_room_0.h"

SceneCmd entra_n_sceneCommands[] = {
    SCENE_CMD_SOUND_SETTINGS(0, 1, 127),
    SCENE_CMD_ROOM_LIST(1, entra_n_sceneRoomList0x0000A8),
    SCENE_CMD_TRANSITION_ACTOR_LIST(1, entra_n_sceneTransitionActorList_000098),
    SCENE_CMD_MISC_SETTINGS(0x30, 0x0000000E),
    SCENE_CMD_COL_HEADER(&entra_n_sceneCollisionHeader_0003F8),
    SCENE_CMD_ENTRANCE_LIST(entra_n_sceneEntranceList0x0000B0),
    SCENE_CMD_SPECIAL_FILES(0x01, OBJECT_GAMEPLAY_FIELD_KEEP),
    SCENE_CMD_PATH_LIST(entra_n_scenePathway_000104),
    SCENE_CMD_SPAWN_LIST(3, entra_n_sceneStartPositionList0x000068),
    SCENE_CMD_SKYBOX_SETTINGS(0, 0, true),
    SCENE_CMD_EXIT_LIST(entra_n_sceneExitList_0000B8),
    SCENE_CMD_ENV_LIGHT_SETTINGS(1, entra_n_sceneLightSettings0x0000C0),
    SCENE_CMD_END(),
};

ActorEntry entra_n_sceneStartPositionList0x000068[] = {
    { ACTOR_PLAYER,     {      2,      0,   2147 }, {      0,      0,      0 }, 0x0F00 },
    { ACTOR_PLAYER,     {     11,      0,   2897 }, {      0, 0X8000,      0 }, 0x0F00 },
    { ACTOR_PLAYER,     {    154,      0,   2629 }, {      0, 0XC000,      0 }, 0x0E00 },
};

TransitionActorEntry entra_n_sceneTransitionActorList_000098[] = {
    { 0, 255, 0, 255, ACTOR_EN_DOOR, 187, 0, 2630, -16384, 0x01BF },
};

RomFile entra_n_sceneRoomList0x0000A8[] = {
    { _entra_n_room_0SegmentRomStart, _entra_n_room_0SegmentRomEnd },
};

EntranceEntry entra_n_sceneEntranceList0x0000B0[] = {
    { 0x00, 0x00 },
    { 0x01, 0x00 },
    { 0x02, 0x00 },
    { 0x00, 0x00 },
};

u16 entra_n_sceneExitList_0000B8[] = {
    0x00B1,
    0x01FD,
    0x007E,
    0x0000,
};

LightSettings entra_n_sceneLightSettings0x0000C0[] = {
    { 0x19, 0x19, 0x19, 0xEA, 0x62, 0xB4, 0x82, 0x82, 0x82, 0xD7, 0x49, 0x5E, 0x50, 0x50, 0x50, 0x0A, 0x0A, 0x0A,
    0x07E0, 0x07D0 },
};

Vec3s entra_n_scenePathwayList_0000D8[] = {
    {    -12,      0,   2428 },
    {    -97,      0,   2487 },
    {   -102,      0,   2619 },
    {     -2,      0,   2651 },
    {     78,      0,   2550 },
    {     51,      0,   2455 },
    {    -12,      0,   2428 },
};

Path entra_n_scenePathway_000104[] = {
    { 7, entra_n_scenePathwayList_0000D8 },
};

u8 entra_n_scene_possiblePadding_00010C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

Vec3s entra_n_sceneCollisionHeader_0003F8CamPosData[] = {
    {   -260,    820,   2200 },
    {  10923,  10012,      0 },
    {   4683,     -1,     -1 },
};

CamData entra_n_sceneCollisionHeader_0003F8CamDataList[] = {
    { 0x0019, 3, &entra_n_sceneCollisionHeader_0003F8CamPosData[0] },
    { 0x0000, 0, NULL },
};

SurfaceType entra_n_sceneCollisionHeader_0003F8SurfaceType[] = {
    { 0x00000001, 0x00000FC2 },
    { 0x00000301, 0x00000FC2 },
    { 0x00000101, 0x00000FC2 },
};

CollisionPoly entra_n_sceneCollisionHeader_0003F8Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0x0A64},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0x0A64},
    {0x0000, 0x0003, 0x0004, 0x0005, 0x8001, 0x0000, 0x0000, 0x0139},
    {0x0000, 0x0003, 0x0005, 0x0000, 0x8001, 0x0000, 0x0000, 0x0139},
    {0x0001, 0x0005, 0x0006, 0x0001, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0001, 0x0005, 0x0001, 0x0000, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0004, 0x0007, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xF5D8},
    {0x0000, 0x0004, 0x0006, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xF5D8},
    {0x0000, 0x0008, 0x0009, 0x000A, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0008, 0x000A, 0x000B, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x000A, 0x000C, 0x000D, 0x7FFF, 0x0000, 0x0000, 0x00B4},
    {0x0000, 0x000A, 0x000D, 0x000E, 0x7FFF, 0x0000, 0x0000, 0x00B4},
    {0x0000, 0x000B, 0x000F, 0x0010, 0x8001, 0x0000, 0x0000, 0x00B4},
    {0x0000, 0x000B, 0x0010, 0x0011, 0x8001, 0x0000, 0x0000, 0x00B4},
    {0x0000, 0x0010, 0x0012, 0x0013, 0x0000, 0x0000, 0x7FFF, 0xF72C},
    {0x0000, 0x0010, 0x0013, 0x0011, 0x0000, 0x0000, 0x7FFF, 0xF72C},
    {0x0000, 0x0014, 0x000D, 0x000C, 0x0000, 0x0000, 0x7FFF, 0xF72C},
    {0x0000, 0x0014, 0x000C, 0x0015, 0x0000, 0x0000, 0x7FFF, 0xF72C},
    {0x0000, 0x0016, 0x0017, 0x0008, 0x0000, 0x0000, 0x8001, 0x0B7C},
    {0x0000, 0x0016, 0x0008, 0x0009, 0x0000, 0x0000, 0x8001, 0x0B7C},
    {0x0000, 0x0018, 0x0019, 0x001A, 0x0000, 0x0000, 0x7FFF, 0xF8BC},
    {0x0000, 0x0018, 0x001A, 0x001B, 0x0000, 0x0000, 0x7FFF, 0xF8BC},
    {0x0002, 0x001C, 0x001D, 0x001E, 0x0000, 0x7FFF, 0x0000, 0xFFFE},
    {0x0002, 0x001C, 0x001E, 0x001F, 0x0000, 0x7FFF, 0x0000, 0xFFFE},
    {0x0000, 0x0015, 0x0018, 0x001B, 0x7FFF, 0x0000, 0x0000, 0x003C},
    {0x0000, 0x0015, 0x001B, 0x0014, 0x7FFF, 0x0000, 0x0000, 0x003C},
    {0x0000, 0x0013, 0x0012, 0x001A, 0x8001, 0x0000, 0x0000, 0x003C},
    {0x0000, 0x0013, 0x001A, 0x0019, 0x8001, 0x0000, 0x0000, 0x003C},
    {0x0000, 0x0020, 0x0021, 0x0009, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0020, 0x0009, 0x0008, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s entra_n_sceneCollisionHeader_0003F8Vertices[] = {
    {    313,      0,   2660 },
    {    180,      0,   2660 },
    {    180,     80,   2660 },
    {    313,     80,   2660 },
    {    313,     80,   2600 },
    {    313,      0,   2600 },
    {    180,      0,   2600 },
    {    180,     80,   2600 },
    {    180,      0,   2940 },
    {   -180,      0,   2940 },
    {   -180,      0,   3060 },
    {    180,      0,   3060 },
    {   -180,      0,   2260 },
    {   -180,    240,   2260 },
    {   -180,    240,   3060 },
    {    180,    240,   3060 },
    {    180,    240,   2260 },
    {    180,      0,   2260 },
    {     60,    240,   2260 },
    {     60,      0,   2260 },
    {    -60,    240,   2260 },
    {    -60,      0,   2260 },
    {   -180,    240,   2940 },
    {    180,    240,   2940 },
    {    -60,      0,   1860 },
    {     60,      0,   1860 },
    {     60,    240,   1860 },
    {    -60,    240,   1860 },
    {     60,      2,   1860 },
    {    -60,      2,   1860 },
    {    -60,      2,   2100 },
    {     60,      2,   2100 },
    {    180,      0,   1860 },
    {   -180,      0,   1860 },
};

CollisionHeader entra_n_sceneCollisionHeader_0003F8 = { 
    { -571, 0, 1860 },
    { 313, 520, 3060 },
    34, entra_n_sceneCollisionHeader_0003F8Vertices,
    30, entra_n_sceneCollisionHeader_0003F8Polygons,
    entra_n_sceneCollisionHeader_0003F8SurfaceType,
    entra_n_sceneCollisionHeader_0003F8CamDataList,
    0, NULL
};

