#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "depth_test_scene.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "depth_test_room_0.h"

SceneCmd depth_test_sceneCommands[] = {
    SCENE_CMD_ROOM_LIST(1, depth_test_sceneRoomList0x000048),
    SCENE_CMD_COL_HEADER(&depth_test_sceneCollisionHeader_0002D4),
    SCENE_CMD_ENTRANCE_LIST(depth_test_sceneEntranceList0x000050),
    SCENE_CMD_SPAWN_LIST(1, depth_test_sceneStartPositionList0x000038),
    SCENE_CMD_SKYBOX_SETTINGS(0, 0, false),
    SCENE_CMD_ENV_LIGHT_SETTINGS(4, depth_test_sceneLightSettings0x000054),
    SCENE_CMD_END(),
};

ActorEntry depth_test_sceneStartPositionList0x000038[] = {
    { ACTOR_PLAYER,     {      0,    500,  -2000 }, {      0,      0,      0 }, 0xFF00 },
};

RomFile depth_test_sceneRoomList0x000048[] = {
    { _depth_test_room_0SegmentRomStart, _depth_test_room_0SegmentRomEnd },
};

EntranceEntry depth_test_sceneEntranceList0x000050[] = {
    { 0x00, 0x00 },
    { 0x00, 0x00 },
};

LightSettings depth_test_sceneLightSettings0x000054[] = {
    { 0x46, 0x2D, 0x39, 0x50, 0x50, 0x50, 0xB4, 0x9A, 0x8A, 0xB0, 0xB0, 0xB0, 0x14, 0x14, 0x3C, 0x1E, 0x0A, 0x0A,
    0x03E0, 0x3200 },
    { 0x69, 0x5A, 0x5A, 0x50, 0x50, 0x50, 0xFF, 0xFF, 0xF0, 0xB0, 0xB0, 0xB0, 0x32, 0x32, 0x5A, 0x64, 0x64, 0x78,
    0x03E4, 0x3200 },
    { 0x78, 0x5A, 0x00, 0x50, 0x50, 0x50, 0xFA, 0x87, 0x32, 0xB0, 0xB0, 0xB0, 0x1E, 0x1E, 0x3C, 0x1C, 0x14, 0x00,
    0x03E1, 0x3200 },
    { 0x28, 0x28, 0x46, 0x50, 0x50, 0x50, 0x14, 0x14, 0x23, 0xB0, 0xB0, 0xB0, 0x32, 0x32, 0x64, 0x00, 0x00, 0x1E,
    0x03E0, 0x3200 },
};

u8 depth_test_scene_possiblePadding_0000AC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

Vec3s depth_test_sceneCollisionHeader_0002D4CamPosData[] = {
    {      0,      0,      0 },
    {      0,  32767,      0 },
    {   4830,      0,      0 },
};

CamData depth_test_sceneCollisionHeader_0002D4CamDataList[] = {
    { 0x0019, 3, &depth_test_sceneCollisionHeader_0002D4CamPosData[0] },
    { 0x0000, 0, NULL },
};

SurfaceType depth_test_sceneCollisionHeader_0002D4SurfaceType[] = {
    { 0x00000001, 0x000007C0 },
};

CollisionPoly depth_test_sceneCollisionHeader_0002D4Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x2EDF},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x2EDF},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0x0063},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0x0063},
    {0x0000, 0x0008, 0x0009, 0x000A, 0x0000, 0x0000, 0x7FFF, 0x000B},
    {0x0000, 0x0008, 0x000A, 0x000B, 0x0000, 0x0000, 0x7FFF, 0x000B},
    {0x0000, 0x000C, 0x000D, 0x000E, 0x0000, 0x0000, 0x7FFF, 0x0007},
    {0x0000, 0x000C, 0x000E, 0x000F, 0x0000, 0x0000, 0x7FFF, 0x0007},
    {0x0000, 0x0010, 0x0011, 0x0012, 0x0000, 0x0000, 0x7FFF, 0x0009},
    {0x0000, 0x0010, 0x0012, 0x0013, 0x0000, 0x0000, 0x7FFF, 0x0009},
    {0x0000, 0x0014, 0x0015, 0x0016, 0x0000, 0x0000, 0x7FFF, 0x03E7},
    {0x0000, 0x0014, 0x0016, 0x0017, 0x0000, 0x0000, 0x7FFF, 0x03E7},
    {0x0000, 0x0018, 0x0019, 0x001A, 0x0000, 0x0000, 0x7FFF, 0x31FF},
    {0x0000, 0x0018, 0x001A, 0x001B, 0x0000, 0x0000, 0x7FFF, 0x31FF},
    {0x0000, 0x001C, 0x001D, 0x001E, 0x0000, 0x0000, 0x7FFF, 0x351F},
    {0x0000, 0x001C, 0x001E, 0x001F, 0x0000, 0x0000, 0x7FFF, 0x351F},
    {0x0000, 0x0020, 0x0021, 0x0022, 0x0000, 0x0000, 0x7FFF, 0x18FF},
    {0x0000, 0x0020, 0x0022, 0x0023, 0x0000, 0x0000, 0x7FFF, 0x18FF},
};

Vec3s depth_test_sceneCollisionHeader_0002D4Vertices[] = {
    {   3680,  -4399, -11999 },
    {   6080,  -4399, -11999 },
    {   6080,  -1999, -11999 },
    {   3680,  -1999, -11999 },
    {    -47,     -9,    -99 },
    {    -27,     -9,    -99 },
    {    -27,     10,    -99 },
    {    -47,     10,    -99 },
    {     -5,      2,    -11 },
    {     -2,      2,    -11 },
    {     -2,      4,    -11 },
    {     -5,      4,    -11 },
    {      2,      1,     -7 },
    {      4,      1,     -7 },
    {      4,      3,     -7 },
    {      2,      3,     -7 },
    {      0,      1,     -9 },
    {      1,      1,     -9 },
    {      1,      3,     -9 },
    {      0,      3,     -9 },
    {   -479,   -359,   -999 },
    {   -279,   -359,   -999 },
    {   -279,   -159,   -999 },
    {   -479,   -159,   -999 },
    {   3900,  -1299, -12799 },
    {   6500,  -1299, -12799 },
    {   6500,   1300, -12799 },
    {   3900,   1300, -12799 },
    {  -1399,  -1399, -13599 },
    {   1400,  -1399, -13599 },
    {   1400,   1400, -13599 },
    {  -1399,   1400, -13599 },
    {   -639,  -2319,  -6399 },
    {    640,  -2319,  -6399 },
    {    640,  -1039,  -6399 },
    {   -639,  -1039,  -6399 },
};

CollisionHeader depth_test_sceneCollisionHeader_0002D4 = { 
    { -1399, -4399, -13599 },
    { 6500, 1400, -7 },
    36, depth_test_sceneCollisionHeader_0002D4Vertices,
    18, depth_test_sceneCollisionHeader_0002D4Polygons,
    depth_test_sceneCollisionHeader_0002D4SurfaceType,
    depth_test_sceneCollisionHeader_0002D4CamDataList,
    0, NULL
};

