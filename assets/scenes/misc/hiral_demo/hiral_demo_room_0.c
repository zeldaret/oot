#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "hiral_demo_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "hiral_demo_scene.h"

SceneCmd hiral_demo_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(hiral_demo_room_0AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(22, 0, 0),
    SCENE_CMD_MESH(&hiral_demo_room_0PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(8, hiral_demo_room_0ObjectList_000078),
    SCENE_CMD_ACTOR_LIST(1, hiral_demo_room_0ActorList_000088),
    SCENE_CMD_END(),
};

SceneCmd* hiral_demo_room_0AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    hiral_demo_room_0Set_0001E0,
    hiral_demo_room_0Set_000270,
    hiral_demo_room_0Set_0002E0,
    hiral_demo_room_0Set_000380,
    hiral_demo_room_0Set_0003E0,
    hiral_demo_room_0Set_000450,
    hiral_demo_room_0Set_0004C0,
    hiral_demo_room_0Set_000530,
    hiral_demo_room_0Set_0005D0,
};

s16 hiral_demo_room_0ObjectList_000078[] = {
    OBJECT_EFC_CRYSTAL_LIGHT,
    OBJECT_EFC_FIRE_BALL,
    OBJECT_EFC_FLASH,
    OBJECT_EFC_LGT_SHOWER,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_GOD_LGT,
    OBJECT_LIGHT_RING,
    OBJECT_TRIFORCE_SPOT,
};

ActorEntry hiral_demo_room_0ActorList_000088[] = {
    { ACTOR_DEMO_KANKYO, {    158,    149,    315 }, {      0,      0,      0 }, 0x0000 },
};

u8 hiral_demo_room_0_possiblePadding_000098[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 hiral_demo_room_0PolygonType0_0000A0 = { 
    0, 1,
    hiral_demo_room_0PolygonDlist_0000AC,
    hiral_demo_room_0PolygonDlist_0000AC + ARRAY_COUNTU(hiral_demo_room_0PolygonDlist_0000AC)
};

PolygonDlist hiral_demo_room_0PolygonDlist_0000AC[1] = {
    { NULL, hiral_demo_room_0DL_000630 },
};

s32 hiral_demo_room_0_terminatorMaybe_0000B4 = { 0x01000000 };

u8 hiral_demo_room_0_unaccounted_0000B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 
    0x10, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xA0, 
    0x0B, 0x01, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x01, 0x01, 0x00, 0x00, 0x03, 0x00, 0x01, 0x04, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9E, 0x00, 0x00, 0x00, 0x99, 0x00, 0x06, 
    0x00, 0x00, 0xE3, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 
    0x10, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xA0, 
    0x0B, 0x01, 0x00, 0x00, 0x03, 0x00, 0x01, 0x60, 0x01, 0x01, 0x00, 0x00, 0x03, 0x00, 0x01, 0x64, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9E, 0x00, 0x00, 0x00, 0x99, 0x00, 0x06, 
    0x00, 0x00, 0xE3, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 
    0x10, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xA0, 
    0x0B, 0x01, 0x00, 0x00, 0x03, 0x00, 0x01, 0xC0, 0x01, 0x01, 0x00, 0x00, 0x03, 0x00, 0x01, 0xC4, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9E, 0x00, 0x00, 0x00, 0x99, 0x00, 0x06, 
    0x00, 0x00, 0xE3, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd hiral_demo_room_0Set_0001E0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(3, 0, 0),
    SCENE_CMD_MESH(&hiral_demo_room_0PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(8, hiral_demo_room_0ObjectList_000220),
    SCENE_CMD_ACTOR_LIST(4, hiral_demo_room_0ActorList_000230),
    SCENE_CMD_END(),
};

s16 hiral_demo_room_0ObjectList_000220[] = {
    OBJECT_EFC_CRYSTAL_LIGHT,
    OBJECT_EFC_FIRE_BALL,
    OBJECT_EFC_FLASH,
    OBJECT_EFC_LGT_SHOWER,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_GOD_LGT,
    OBJECT_LIGHT_RING,
    OBJECT_TRIFORCE_SPOT,
};

ActorEntry hiral_demo_room_0ActorList_000230[] = {
    { ACTOR_DEMO_KANKYO, {    158,    149,    315 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_EFFECT, {      4,     95,    -59 }, {      0,      0,      0 }, 0xF404 },
    { ACTOR_DEMO_EFFECT, {    150,    139,    -99 }, {      0,      0,      0 }, 0xF505 },
    { ACTOR_DEMO_EFFECT, {    165,    166,   -104 }, {      0,      0,      0 }, 0xF606 },
};

SceneCmd hiral_demo_room_0Set_000270[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hiral_demo_room_0PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(2, hiral_demo_room_0ObjectList_0002B0),
    SCENE_CMD_ACTOR_LIST(2, hiral_demo_room_0ActorList_0002B4),
    SCENE_CMD_END(),
};

s16 hiral_demo_room_0ObjectList_0002B0[] = {
    OBJECT_GNDD,
    OBJECT_HORSE_GANON,
};

ActorEntry hiral_demo_room_0ActorList_0002B4[] = {
    { ACTOR_EN_VIEWER, {    112,      0,     14 }, {      0,      0,      0 }, 0x05FF },
    { ACTOR_EN_VIEWER, {    101,      0,     23 }, {      0,      0,      0 }, 0x06FF },
};

u8 hiral_demo_room_0_possiblePadding_0002D4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd hiral_demo_room_0Set_0002E0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(18, 0, 0),
    SCENE_CMD_MESH(&hiral_demo_room_0PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(8, hiral_demo_room_0ObjectList_000320),
    SCENE_CMD_ACTOR_LIST(5, hiral_demo_room_0ActorList_000330),
    SCENE_CMD_END(),
};

s16 hiral_demo_room_0ObjectList_000320[] = {
    OBJECT_EFC_CRYSTAL_LIGHT,
    OBJECT_EFC_FIRE_BALL,
    OBJECT_EFC_FLASH,
    OBJECT_EFC_LGT_SHOWER,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_GOD_LGT,
    OBJECT_LIGHT_RING,
    OBJECT_TRIFORCE_SPOT,
};

ActorEntry hiral_demo_room_0ActorList_000330[] = {
    { ACTOR_DEMO_KANKYO, {    158,    149,    315 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_EFFECT, {      4,     95,    -59 }, {      0,      0,      0 }, 0xF404 },
    { ACTOR_DEMO_EFFECT, {    150,    139,    -99 }, {      0,      0,      0 }, 0xF505 },
    { ACTOR_DEMO_EFFECT, {    165,    166,   -104 }, {      0,      0,      0 }, 0xF606 },
    { ACTOR_DEMO_EFFECT, {   -510,    180,    278 }, {      0,      0,      0 }, 0xFF08 },
};

SceneCmd hiral_demo_room_0Set_000380[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&hiral_demo_room_0PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(1, hiral_demo_room_0ObjectList_0003C0),
    SCENE_CMD_ACTOR_LIST(1, hiral_demo_room_0ActorList_0003C4),
    SCENE_CMD_END(),
};

s16 hiral_demo_room_0ObjectList_0003C0[] = {
    OBJECT_GNDD,
};

ActorEntry hiral_demo_room_0ActorList_0003C4[] = {
    { ACTOR_EN_VIEWER, {      2,      0,     66 }, {      0,      0,      0 }, 0x07FF },
};

u8 hiral_demo_room_0_possiblePadding_0003D4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd hiral_demo_room_0Set_0003E0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(7, 59, 0),
    SCENE_CMD_MESH(&hiral_demo_room_0PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(7, hiral_demo_room_0ObjectList_000420),
    SCENE_CMD_ACTOR_LIST(2, hiral_demo_room_0ActorList_000430),
    SCENE_CMD_END(),
};

s16 hiral_demo_room_0ObjectList_000420[] = {
    OBJECT_EFC_CRYSTAL_LIGHT,
    OBJECT_EFC_FIRE_BALL,
    OBJECT_EFC_FLASH,
    OBJECT_EFC_LGT_SHOWER,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_LIGHT_RING,
    OBJECT_TRIFORCE_SPOT,
};

ActorEntry hiral_demo_room_0ActorList_000430[] = {
    { ACTOR_DEMO_KANKYO, {    158,    149,    315 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_EFFECT, {   -510,    180,    278 }, {      0,      0,      0 }, 0xFF08 },
};

SceneCmd hiral_demo_room_0Set_000450[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hiral_demo_room_0PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(2, hiral_demo_room_0ObjectList_000490),
    SCENE_CMD_ACTOR_LIST(2, hiral_demo_room_0ActorList_000494),
    SCENE_CMD_END(),
};

s16 hiral_demo_room_0ObjectList_000490[] = {
    OBJECT_GNDD,
    OBJECT_HORSE_GANON,
};

ActorEntry hiral_demo_room_0ActorList_000494[] = {
    { ACTOR_EN_VIEWER, {    112,      0,     14 }, {      0,      0,      0 }, 0x05FF },
    { ACTOR_EN_VIEWER, {    101,      0,     23 }, {      0,      0,      0 }, 0x06FF },
};

u8 hiral_demo_room_0_possiblePadding_0004B4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd hiral_demo_room_0Set_0004C0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hiral_demo_room_0PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(2, hiral_demo_room_0ObjectList_000500),
    SCENE_CMD_ACTOR_LIST(2, hiral_demo_room_0ActorList_000504),
    SCENE_CMD_END(),
};

s16 hiral_demo_room_0ObjectList_000500[] = {
    OBJECT_GNDD,
    OBJECT_HORSE_GANON,
};

ActorEntry hiral_demo_room_0ActorList_000504[] = {
    { ACTOR_EN_VIEWER, {    112,      0,     14 }, {      0,      0,      0 }, 0x05FF },
    { ACTOR_EN_VIEWER, {    101,      0,     23 }, {      0,      0,      0 }, 0x06FF },
};

u8 hiral_demo_room_0_possiblePadding_000524[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd hiral_demo_room_0Set_000530[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(18, 0, 0),
    SCENE_CMD_MESH(&hiral_demo_room_0PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(8, hiral_demo_room_0ObjectList_000570),
    SCENE_CMD_ACTOR_LIST(5, hiral_demo_room_0ActorList_000580),
    SCENE_CMD_END(),
};

s16 hiral_demo_room_0ObjectList_000570[] = {
    OBJECT_EFC_CRYSTAL_LIGHT,
    OBJECT_EFC_FIRE_BALL,
    OBJECT_EFC_FLASH,
    OBJECT_EFC_LGT_SHOWER,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_GOD_LGT,
    OBJECT_LIGHT_RING,
    OBJECT_TRIFORCE_SPOT,
};

ActorEntry hiral_demo_room_0ActorList_000580[] = {
    { ACTOR_DEMO_KANKYO, {    158,    149,    315 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_EFFECT, {      4,     95,    -59 }, {      0,      0,      0 }, 0xF404 },
    { ACTOR_DEMO_EFFECT, {    150,    139,    -99 }, {      0,      0,      0 }, 0xF505 },
    { ACTOR_DEMO_EFFECT, {    165,    166,   -104 }, {      0,      0,      0 }, 0xF606 },
    { ACTOR_DEMO_EFFECT, {   -510,    180,    278 }, {      0,      0,      0 }, 0xFF08 },
};

SceneCmd hiral_demo_room_0Set_0005D0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&hiral_demo_room_0PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(1, hiral_demo_room_0ObjectList_000610),
    SCENE_CMD_ACTOR_LIST(1, hiral_demo_room_0ActorList_000614),
    SCENE_CMD_END(),
};

s16 hiral_demo_room_0ObjectList_000610[] = {
    OBJECT_GANON,
};

ActorEntry hiral_demo_room_0ActorList_000614[] = {
    { ACTOR_EN_VIEWER, {      0,      0,    115 }, {      0, 0X8000,      0 }, 0x09FF },
};

u8 hiral_demo_room_0_possiblePadding_000624[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Gfx hiral_demo_room_0DL_000630[] = {
    gsSPEndDisplayList(),
};

