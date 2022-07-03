#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "shop1_scene.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "shop1_room_0.h"

SceneCmd shop1_sceneCommands[] = {
    SCENE_CMD_SOUND_SETTINGS(5, 19, 85),
    SCENE_CMD_ROOM_LIST(1, shop1_sceneRoomList0x000078),
    SCENE_CMD_MISC_SETTINGS(0x10, 0x0000000E),
    SCENE_CMD_COL_HEADER(&shop1_sceneCollisionHeader_0002B8),
    SCENE_CMD_ENTRANCE_LIST(shop1_sceneEntranceList0x000080),
    SCENE_CMD_SPECIAL_FILES(0x00, OBJECT_GAMEPLAY_DANGEON_KEEP),
    SCENE_CMD_SPAWN_LIST(2, shop1_sceneStartPositionList0x000058),
    SCENE_CMD_SKYBOX_SETTINGS(2, 0, true),
    SCENE_CMD_EXIT_LIST(shop1_sceneExitList_000084),
    SCENE_CMD_ENV_LIGHT_SETTINGS(1, shop1_sceneLightSettings0x000088),
    SCENE_CMD_END(),
};

ActorEntry shop1_sceneStartPositionList0x000058[] = {
    { ACTOR_PLAYER,     {    -30,      0,    144 }, {      0, 0X8000,      0 }, 0x0EFF },
    { ACTOR_PLAYER,     {    -30,      0,    144 }, {      0, 0X8000,      0 }, 0x0EFF },
};

RomFile shop1_sceneRoomList0x000078[] = {
    { _shop1_room_0SegmentRomStart, _shop1_room_0SegmentRomEnd },
};

EntranceEntry shop1_sceneEntranceList0x000080[] = {
    { 0x00, 0x00 },
    { 0x01, 0x00 },
};

u16 shop1_sceneExitList_000084[] = {
    0x7FFC,
    0x0000,
};

LightSettings shop1_sceneLightSettings0x000088[] = {
    { 0x46, 0x28, 0x28, 0x1E, 0x5E, 0x4E, 0xB4, 0xAA, 0xAA, 0xD1, 0x6C, 0xD4, 0x3C, 0x3C, 0x28, 0x0A, 0x0A, 0x0A,
    0x07E0, 0x07D0 },
};

Vec3s shop1_sceneCollisionHeader_0002B8CamPosData[] = {
    {   -128,    120,    272 },
    {   3277,  28399,      0 },
    {   5000,     -1,     -1 },
    {    -30,     60,     60 },
    {      0, -32768,      0 },
    {     -1,     -1,     -1 },
};

CamData shop1_sceneCollisionHeader_0002B8CamDataList[] = {
    { 0x0019, 3, &shop1_sceneCollisionHeader_0002B8CamPosData[0] },
    { 0x0017, 3, &shop1_sceneCollisionHeader_0002B8CamPosData[3] },
    { 0x0000, 0, NULL },
};

SurfaceType shop1_sceneCollisionHeader_0002B8SurfaceType[] = {
    { 0x00000002, 0x000017C2 },
    { 0x00000102, 0x000C3002 },
    { 0x00000102, 0x00003002 },
};

CollisionPoly shop1_sceneCollisionHeader_0002B8Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0x00A0},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0x00A0},
    {0x0000, 0x0004, 0x0000, 0x0003, 0x8001, 0x0000, 0x0000, 0x0028},
    {0x0000, 0x0004, 0x0003, 0x0005, 0x8001, 0x0000, 0x0000, 0x0028},
    {0x0000, 0x0006, 0x0007, 0x0008, 0x7FFF, 0x0000, 0x0000, 0x0050},
    {0x0000, 0x0006, 0x0008, 0x0009, 0x7FFF, 0x0000, 0x0000, 0x0050},
    {0x0000, 0x000A, 0x0006, 0x0009, 0x0000, 0x0000, 0x8001, 0x00A0},
    {0x0000, 0x000A, 0x0009, 0x000B, 0x0000, 0x0000, 0x8001, 0x00A0},
    {0x0000, 0x000A, 0x000B, 0x000C, 0x7FFF, 0x0000, 0x0000, 0x00A0},
    {0x0000, 0x000A, 0x000C, 0x000D, 0x7FFF, 0x0000, 0x0000, 0x00A0},
    {0x0000, 0x000E, 0x000F, 0x0002, 0x8001, 0x0000, 0x0000, 0x00A0},
    {0x0000, 0x000E, 0x0002, 0x0001, 0x8001, 0x0000, 0x0000, 0x00A0},
    {0x0000, 0x000D, 0x000C, 0x000F, 0x0000, 0x0000, 0x7FFF, 0xFFE2},
    {0x0000, 0x000D, 0x000F, 0x000E, 0x0000, 0x0000, 0x7FFF, 0xFFE2},
    {0x0000, 0x000C, 0x000B, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x000C, 0x0002, 0x000F, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0010, 0x0011, 0x000C, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0010, 0x000C, 0x000F, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0001, 0x0003, 0x2008, 0x0012, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0002, 0x0003, 0x0012, 0x0005, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0001, 0x0003, 0x2009, 0x0008, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s shop1_sceneCollisionHeader_0002B8Vertices[] = {
    {     40,    120,    160 },
    {    160,    120,    160 },
    {    160,      0,    160 },
    {     40,      0,    160 },
    {     40,    120,    228 },
    {     40,      0,    228 },
    {    -80,    120,    160 },
    {    -80,    120,    228 },
    {    -80,      0,    228 },
    {    -80,      0,    160 },
    {   -160,    120,    160 },
    {   -160,      0,    160 },
    {   -160,      0,     30 },
    {   -160,    120,     30 },
    {    160,    120,     30 },
    {    160,      0,     30 },
    {    160,      0,   -200 },
    {   -160,      0,   -200 },
    {    -20,      0,    228 },
};

CollisionHeader shop1_sceneCollisionHeader_0002B8 = { 
    { -160, 0, -200 },
    { 160, 120, 240 },
    19, shop1_sceneCollisionHeader_0002B8Vertices,
    21, shop1_sceneCollisionHeader_0002B8Polygons,
    shop1_sceneCollisionHeader_0002B8SurfaceType,
    shop1_sceneCollisionHeader_0002B8CamDataList,
    0, NULL
};

