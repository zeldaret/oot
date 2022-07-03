#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "face_shop_scene.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "face_shop_room_0.h"

SceneCmd face_shop_sceneCommands[] = {
    SCENE_CMD_SOUND_SETTINGS(5, 19, 85),
    SCENE_CMD_ROOM_LIST(1, face_shop_sceneRoomList0x000060),
    SCENE_CMD_MISC_SETTINGS(0x10, 0x0000000E),
    SCENE_CMD_COL_HEADER(&face_shop_sceneCollisionHeader_000338),
    SCENE_CMD_ENTRANCE_LIST(face_shop_sceneEntranceList0x000068),
    SCENE_CMD_SPAWN_LIST(1, face_shop_sceneStartPositionList0x000050),
    SCENE_CMD_SKYBOX_SETTINGS(11, 0, true),
    SCENE_CMD_EXIT_LIST(face_shop_sceneExitList_00006C),
    SCENE_CMD_ENV_LIGHT_SETTINGS(1, face_shop_sceneLightSettings0x000070),
    SCENE_CMD_END(),
};

ActorEntry face_shop_sceneStartPositionList0x000050[] = {
    { ACTOR_PLAYER,     {      0,      1,    108 }, {      0, 0X8000,      0 }, 0x0EFF },
};

RomFile face_shop_sceneRoomList0x000060[] = {
    { _face_shop_room_0SegmentRomStart, _face_shop_room_0SegmentRomEnd },
};

EntranceEntry face_shop_sceneEntranceList0x000068[] = {
    { 0x00, 0x00 },
    { 0x00, 0x00 },
};

u16 face_shop_sceneExitList_00006C[] = {
    0x01D1,
    0x0000,
};

LightSettings face_shop_sceneLightSettings0x000070[] = {
    { 0x46, 0x28, 0x28, 0x3D, 0x39, 0x5E, 0xE6, 0xD2, 0xC8, 0xF4, 0x25, 0x78, 0x64, 0x5A, 0x3C, 0x0A, 0x0A, 0x0A,
    0x07E0, 0x07D0 },
};

u8 face_shop_scene_possiblePadding_000088[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vec3s face_shop_sceneCollisionHeader_000338CamPosData[] = {
    {     60,     52,    300 },
    {   -546, -30948,      0 },
    {   5000,     -1,     -1 },
    {      0,     60,     20 },
    {      0, -32768,      0 },
    {     -1,     -1,     -1 },
};

CamData face_shop_sceneCollisionHeader_000338CamDataList[] = {
    { 0x0019, 3, &face_shop_sceneCollisionHeader_000338CamPosData[0] },
    { 0x0017, 3, &face_shop_sceneCollisionHeader_000338CamPosData[3] },
    { 0x0000, 0, NULL },
};

SurfaceType face_shop_sceneCollisionHeader_000338SurfaceType[] = {
    { 0x00000102, 0x000C3FC2 },
    { 0x00000102, 0x00003FC2 },
    { 0x00000002, 0x00003FC2 },
    { 0x00000002, 0x00003802 },
};

CollisionPoly face_shop_sceneCollisionHeader_000338Polygons[] = {
    {0x0000, 0x0000, 0x2001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFFFF},
    {0x0000, 0x0001, 0x2003, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFFFF},
    {0x0001, 0x0003, 0x0004, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFFFF},
    {0x0000, 0x0003, 0x2005, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xFFFF},
    {0x0000, 0x0005, 0x2006, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xFFFF},
    {0x0001, 0x0005, 0x0007, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFFFF},
    {0x0000, 0x0007, 0x2008, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFFFF},
    {0x0002, 0x0009, 0x000A, 0x000B, 0x7FFF, 0x0000, 0x0000, 0x00A0},
    {0x0002, 0x0009, 0x000B, 0x000C, 0x7FFF, 0x0000, 0x0000, 0x00A0},
    {0x0002, 0x000C, 0x000D, 0x000E, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0002, 0x000C, 0x000E, 0x0009, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0002, 0x000F, 0x0010, 0x0011, 0x0000, 0x0000, 0x7FFF, 0x0028},
    {0x0002, 0x000F, 0x0011, 0x0012, 0x0000, 0x0000, 0x7FFF, 0x0028},
    {0x0002, 0x000A, 0x0009, 0x000E, 0x0000, 0x0000, 0x7FFF, 0x00C8},
    {0x0002, 0x000A, 0x000E, 0x0013, 0x0000, 0x0000, 0x7FFF, 0x00C8},
    {0x0002, 0x000D, 0x0014, 0x0013, 0x8001, 0x0000, 0x0000, 0x00A0},
    {0x0002, 0x000D, 0x0013, 0x000E, 0x8001, 0x0000, 0x0000, 0x00A0},
    {0x0003, 0x0015, 0x0016, 0x0017, 0x8001, 0x0000, 0x0000, 0xFF94},
    {0x0003, 0x0015, 0x0017, 0x0018, 0x8001, 0x0000, 0x0000, 0xFF94},
    {0x0003, 0x000F, 0x0012, 0x0019, 0x7FFF, 0x0000, 0x0000, 0xFF94},
    {0x0003, 0x000F, 0x0019, 0x001A, 0x7FFF, 0x0000, 0x0000, 0xFF94},
    {0x0003, 0x001A, 0x0019, 0x0016, 0x0000, 0x0000, 0x7FFF, 0xFFF4},
    {0x0003, 0x001A, 0x0016, 0x0015, 0x0000, 0x0000, 0x7FFF, 0xFFF4},
    {0x0003, 0x001B, 0x001C, 0x001D, 0x2AE1, 0x0000, 0x789A, 0x0012},
    {0x0003, 0x001B, 0x001D, 0x001E, 0x2AE1, 0x0000, 0x789A, 0x0012},
};

Vec3s face_shop_sceneCollisionHeader_000338Vertices[] = {
    {    160,      1,     80 },
    {    140,      1,     80 },
    {    160,      1,    320 },
    {    100,      1,    140 },
    {      0,      1,    320 },
    {    -80,      1,    140 },
    {   -160,      1,    320 },
    {   -140,      1,     80 },
    {   -160,      1,     80 },
    {   -160,      0,   -200 },
    {   -160,    320,   -200 },
    {   -160,    320,    320 },
    {   -160,      0,    320 },
    {    160,      0,    320 },
    {    160,      0,   -200 },
    {    108,      0,    -40 },
    {    160,      0,    -40 },
    {    160,    160,    -40 },
    {    108,    160,    -40 },
    {    160,    320,   -200 },
    {    160,    320,    320 },
    {   -108,      0,     12 },
    {   -108,    160,     12 },
    {   -108,    160,    -36 },
    {   -108,      0,    -36 },
    {    108,    160,     12 },
    {    108,      0,     12 },
    {   -160,    160,     38 },
    {   -160,      0,     38 },
    {    -70,      0,      6 },
    {    -70,    160,      6 },
};

CollisionHeader face_shop_sceneCollisionHeader_000338 = { 
    { -172, -11, -200 },
    { 172, 320, 320 },
    31, face_shop_sceneCollisionHeader_000338Vertices,
    25, face_shop_sceneCollisionHeader_000338Polygons,
    face_shop_sceneCollisionHeader_000338SurfaceType,
    face_shop_sceneCollisionHeader_000338CamDataList,
    0, NULL
};

