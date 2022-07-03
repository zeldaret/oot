#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "tokinoma_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "tokinoma_scene.h"
#include "tokinoma_room_0.h"

SceneCmd tokinoma_room_1Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(tokinoma_room_1AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_1PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(10, tokinoma_room_1ObjectList_000080),
    SCENE_CMD_ACTOR_LIST(9, tokinoma_room_1ActorList_000094),
    SCENE_CMD_END(),
};

SceneCmd* tokinoma_room_1AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    tokinoma_room_1Set_000150,
    tokinoma_room_1Set_000240,
    tokinoma_room_1Set_000370,
    tokinoma_room_1Set_000460,
    tokinoma_room_1Set_000520,
    tokinoma_room_1Set_0005D0,
    tokinoma_room_1Set_000680,
    tokinoma_room_1Set_000730,
    tokinoma_room_1Set_0007F0,
    tokinoma_room_1Set_000890,
    tokinoma_room_1Set_0002B0,
};

s16 tokinoma_room_1ObjectList_000080[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_XC,
    OBJECT_GI_JEWEL,
    OBJECT_GI_MELODY,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_EFC_TW,
    OBJECT_EFC_FLASH,
    OBJECT_MJIN,
    OBJECT_MJIN_FLASH,
    OBJECT_ZL2,
};

ActorEntry tokinoma_room_1ActorList_000094[] = {
    { ACTOR_BG_MJIN,        {      0,    -40,   2024 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TOKI_HIKARI, {      0,    276,   1120 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TOKI_HIKARI, {     -1,    -39,   1761 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_KANKYO,    {      0,      0,   1080 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_EN_OKARINA_TAG, {     -1,    -40,   1384 }, {      0,      0,      0 }, 0x13FF },
    { ACTOR_EN_WONDER_TALK, {      0,      5,   1330 }, {      0,      0, 0X2444 }, 0x0FFF },
    { ACTOR_DEMO_EFFECT,    {    -38,     16,   1335 }, {      0,      0,      0 }, 0x0013 },
    { ACTOR_DEMO_EFFECT,    {      0,     16,   1335 }, {      0,      0,      0 }, 0x0014 },
    { ACTOR_DEMO_EFFECT,    {     40,     16,   1335 }, {      0,      0,      0 }, 0x0015 },
};

u8 tokinoma_room_1_possiblePadding_000124[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 tokinoma_room_1PolygonType0_000130 = { 
    0, 1,
    tokinoma_room_1PolygonDlist_00013C,
    tokinoma_room_1PolygonDlist_00013C + ARRAY_COUNTU(tokinoma_room_1PolygonDlist_00013C)
};

PolygonDlist tokinoma_room_1PolygonDlist_00013C[1] = {
    { tokinoma_room_1DL_0053E0, tokinoma_room_1DL_006470 },
};

s32 tokinoma_room_1_terminatorMaybe_000144 = { 0x01000000 };

u8 tokinoma_room_1_possiblePadding_000148[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_1Set_000150[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&tokinoma_room_1PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(10, tokinoma_room_1ObjectList_000190),
    SCENE_CMD_ACTOR_LIST(9, tokinoma_room_1ActorList_0001A4),
    SCENE_CMD_END(),
};

s16 tokinoma_room_1ObjectList_000190[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_FLASH,
    OBJECT_XC,
    OBJECT_ZL2,
    OBJECT_EFC_FLASH,
    OBJECT_GI_JEWEL,
    OBJECT_GI_MELODY,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_EFC_TW,
};

ActorEntry tokinoma_room_1ActorList_0001A4[] = {
    { ACTOR_BG_MJIN,        {      0,    -40,   2024 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TOKI_HIKARI, {      0,    276,   1120 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TOKI_HIKARI, {     -1,    -39,   1761 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_OKARINA_TAG, {     -1,    -40,   1384 }, {      0,      0,      0 }, 0x13FF },
    { ACTOR_EN_WONDER_TALK, {      0,      0,   1330 }, {      0,      0,      0 }, 0x0FFF },
    { ACTOR_DEMO_EFFECT,    {    -38,     16,   1335 }, {      0,      0,      0 }, 0x0013 },
    { ACTOR_DEMO_EFFECT,    {      0,     16,   1335 }, {      0,      0,      0 }, 0x0014 },
    { ACTOR_DEMO_EFFECT,    {     40,     16,   1335 }, {      0,      0,      0 }, 0x0015 },
    { ACTOR_DEMO_KANKYO,    {      0,      0,   1080 }, {      0,      0,      0 }, 0x000D },
};

u8 tokinoma_room_1_possiblePadding_000234[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_1Set_000240[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_1PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(3, tokinoma_room_1ObjectList_000280),
    SCENE_CMD_ACTOR_LIST(2, tokinoma_room_1ActorList_000288),
    SCENE_CMD_END(),
};

s16 tokinoma_room_1ObjectList_000280[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_FLASH,
};

ActorEntry tokinoma_room_1ActorList_000288[] = {
    { ACTOR_BG_TOKI_HIKARI, {     -1,    -39,   1761 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_KANKYO,    {      0,      0,   1080 }, {      0,      0,      0 }, 0x000D },
};

u8 tokinoma_room_1_possiblePadding_0002A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_1Set_0002B0[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_1PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(10, tokinoma_room_1ObjectList_0002F0),
    SCENE_CMD_ACTOR_LIST(6, tokinoma_room_1ActorList_000304),
    SCENE_CMD_END(),
};

s16 tokinoma_room_1ObjectList_0002F0[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_FLASH,
    OBJECT_XC,
    OBJECT_ZL2,
    OBJECT_EFC_FLASH,
    OBJECT_WARP1,
    OBJECT_GI_JEWEL,
    OBJECT_ZL2_ANIME1,
    OBJECT_GI_M_ARROW,
};

ActorEntry tokinoma_room_1ActorList_000304[] = {
    { ACTOR_BG_MJIN,        {      9,    -40,   2024 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TOKI_HIKARI, {     -1,    -39,   1761 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_KANKYO,    {      0,      0,   1080 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_EN_ZL2,         {      3,    -40,   2323 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_DEMO_EFFECT,    {      9,    -40,   1845 }, {      0,      0,      0 }, 0x0016 },
    { ACTOR_DEMO_EFFECT,    {      0,     28,   2219 }, {      0,      0,      0 }, 0x4012 },
};

u8 tokinoma_room_1_possiblePadding_000364[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_1Set_000370[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&tokinoma_room_1PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(10, tokinoma_room_1ObjectList_0003B0),
    SCENE_CMD_ACTOR_LIST(9, tokinoma_room_1ActorList_0003C4),
    SCENE_CMD_END(),
};

s16 tokinoma_room_1ObjectList_0003B0[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_FLASH,
    OBJECT_XC,
    OBJECT_ZL2,
    OBJECT_EFC_FLASH,
    OBJECT_GI_JEWEL,
    OBJECT_GI_MELODY,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_EFC_TW,
};

ActorEntry tokinoma_room_1ActorList_0003C4[] = {
    { ACTOR_BG_MJIN,        {      0,    -40,   2024 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TOKI_HIKARI, {      0,    276,   1120 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TOKI_HIKARI, {     -1,    -39,   1761 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_OKARINA_TAG, {     -1,    -40,   1384 }, {      0,      0,      0 }, 0x13FF },
    { ACTOR_EN_WONDER_TALK, {      0,      0,   1330 }, {      0,      0,      0 }, 0x0FFF },
    { ACTOR_DEMO_EFFECT,    {    -38,     16,   1335 }, {      0,      0,      0 }, 0x0013 },
    { ACTOR_DEMO_EFFECT,    {      0,     16,   1335 }, {      0,      0,      0 }, 0x0014 },
    { ACTOR_DEMO_EFFECT,    {     40,     16,   1335 }, {      0,      0,      0 }, 0x0015 },
    { ACTOR_DEMO_KANKYO,    {      0,      0,   1080 }, {      0,      0,      0 }, 0x000D },
};

u8 tokinoma_room_1_possiblePadding_000454[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_1Set_000460[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_1PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(5, tokinoma_room_1ObjectList_0004A0),
    SCENE_CMD_ACTOR_LIST(7, tokinoma_room_1ActorList_0004AC),
    SCENE_CMD_END(),
};

s16 tokinoma_room_1ObjectList_0004A0[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_FLASH,
    OBJECT_GI_JEWEL,
    OBJECT_EFC_FLASH,
};

ActorEntry tokinoma_room_1ActorList_0004AC[] = {
    { ACTOR_BG_MJIN,        {      9,    -40,   2024 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TOKI_HIKARI, {     -1,    -39,   1761 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_KANKYO,    {      0,      0,   1080 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_DEMO_EFFECT,    {    -32,    -40,   1405 }, {      0,      0,      0 }, 0x0013 },
    { ACTOR_DEMO_EFFECT,    {     -2,    -40,   1403 }, {      0,      0,      0 }, 0x0014 },
    { ACTOR_DEMO_EFFECT,    {     27,    -40,   1409 }, {      0,      0,      0 }, 0x0015 },
    { ACTOR_BG_TOKI_HIKARI, {      0,    276,   1120 }, {      0,      0,      0 }, 0x0001 },
};

u8 tokinoma_room_1_possiblePadding_00051C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_1Set_000520[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_1PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(5, tokinoma_room_1ObjectList_000560),
    SCENE_CMD_ACTOR_LIST(6, tokinoma_room_1ActorList_00056C),
    SCENE_CMD_END(),
};

s16 tokinoma_room_1ObjectList_000560[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_FLASH,
    OBJECT_GI_JEWEL,
    OBJECT_EFC_FLASH,
};

ActorEntry tokinoma_room_1ActorList_00056C[] = {
    { ACTOR_BG_MJIN,        {      9,    -40,   2024 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TOKI_HIKARI, {     -1,    -39,   1761 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_KANKYO,    {      0,      0,   1080 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_DEMO_EFFECT,    {    -38,     16,   1335 }, {      0,      0,      0 }, 0x1013 },
    { ACTOR_DEMO_EFFECT,    {      0,     16,   1335 }, {      0,      0,      0 }, 0x1014 },
    { ACTOR_DEMO_EFFECT,    {     40,     16,   1335 }, {      0,      0,      0 }, 0x1015 },
};

u8 tokinoma_room_1_possiblePadding_0005CC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_1Set_0005D0[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_1PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(5, tokinoma_room_1ObjectList_000610),
    SCENE_CMD_ACTOR_LIST(6, tokinoma_room_1ActorList_00061C),
    SCENE_CMD_END(),
};

s16 tokinoma_room_1ObjectList_000610[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_FLASH,
    OBJECT_GI_JEWEL,
    OBJECT_EFC_FLASH,
};

ActorEntry tokinoma_room_1ActorList_00061C[] = {
    { ACTOR_BG_MJIN,        {      9,    -40,   2024 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TOKI_HIKARI, {     -1,    -39,   1761 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_KANKYO,    {      0,      0,   1080 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_DEMO_EFFECT,    {    -38,     16,   1335 }, {      0,      0,      0 }, 0x1013 },
    { ACTOR_DEMO_EFFECT,    {      0,     16,   1335 }, {      0,      0,      0 }, 0x1014 },
    { ACTOR_DEMO_EFFECT,    {     40,     16,   1335 }, {      0,      0,      0 }, 0x1015 },
};

u8 tokinoma_room_1_possiblePadding_00067C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_1Set_000680[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_1PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(5, tokinoma_room_1ObjectList_0006C0),
    SCENE_CMD_ACTOR_LIST(6, tokinoma_room_1ActorList_0006CC),
    SCENE_CMD_END(),
};

s16 tokinoma_room_1ObjectList_0006C0[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_FLASH,
    OBJECT_GI_JEWEL,
    OBJECT_EFC_FLASH,
};

ActorEntry tokinoma_room_1ActorList_0006CC[] = {
    { ACTOR_BG_MJIN,        {      9,    -40,   2024 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TOKI_HIKARI, {     -1,    -39,   1761 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_KANKYO,    {      0,      0,   1080 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_DEMO_EFFECT,    {    -38,     16,   1335 }, {      0,      0,      0 }, 0x1013 },
    { ACTOR_DEMO_EFFECT,    {      0,     16,   1335 }, {      0,      0,      0 }, 0x1014 },
    { ACTOR_DEMO_EFFECT,    {     40,     16,   1335 }, {      0,      0,      0 }, 0x1015 },
};

u8 tokinoma_room_1_possiblePadding_00072C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_1Set_000730[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&tokinoma_room_1PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(7, tokinoma_room_1ObjectList_000770),
    SCENE_CMD_ACTOR_LIST(7, tokinoma_room_1ActorList_000780),
    SCENE_CMD_END(),
};

s16 tokinoma_room_1ObjectList_000770[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_FLASH,
    OBJECT_GI_JEWEL,
    OBJECT_EFC_FLASH,
    OBJECT_ZL4,
    OBJECT_OPENING_DEMO1,
};

ActorEntry tokinoma_room_1ActorList_000780[] = {
    { ACTOR_BG_MJIN,        {      9,    -40,   2024 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TOKI_HIKARI, {     -1,    -39,   1761 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_KANKYO,    {      0,      0,   1080 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_DEMO_EFFECT,    {    -38,     16,   1321 }, {      0,      0,      0 }, 0x1013 },
    { ACTOR_DEMO_EFFECT,    {      0,     16,   1321 }, {      0,      0,      0 }, 0x1014 },
    { ACTOR_DEMO_EFFECT,    {     40,     16,   1321 }, {      0,      0,      0 }, 0x1015 },
    { ACTOR_EN_VIEWER,      {      0,    -40,   1404 }, {      0,      0,      0 }, 0x0202 },
};

SceneCmd tokinoma_room_1Set_0007F0[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_1PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(7, tokinoma_room_1ObjectList_000830),
    SCENE_CMD_ACTOR_LIST(5, tokinoma_room_1ActorList_000840),
    SCENE_CMD_END(),
};

s16 tokinoma_room_1ObjectList_000830[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_FLASH,
    OBJECT_XC,
    OBJECT_GI_JEWEL,
    OBJECT_ZL2,
    OBJECT_ZL2_ANIME1,
};

ActorEntry tokinoma_room_1ActorList_000840[] = {
    { ACTOR_BG_MJIN,        {      9,    -40,   2024 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TOKI_HIKARI, {     -1,    -39,   1761 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_KANKYO,    {      0,      0,   1080 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_EN_ZL2,         {      0,    -40,   2288 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_EN_XC,          {     -3,    -40,   2339 }, {      0, 0X8000,      0 }, 0x0004 },
};

SceneCmd tokinoma_room_1Set_000890[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&tokinoma_room_1PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(7, tokinoma_room_1ObjectList_0008D0),
    SCENE_CMD_ACTOR_LIST(5, tokinoma_room_1ActorList_0008E0),
    SCENE_CMD_END(),
};

s16 tokinoma_room_1ObjectList_0008D0[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_FLASH,
    OBJECT_XC,
    OBJECT_GI_JEWEL,
    OBJECT_ZL2,
    OBJECT_ZL2_ANIME1,
};

ActorEntry tokinoma_room_1ActorList_0008E0[] = {
    { ACTOR_BG_MJIN,        {      9,    -40,   2024 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TOKI_HIKARI, {     -1,    -39,   1761 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_KANKYO,    {      0,      0,   1080 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_EN_ZL2,         {      0,    -40,   2288 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_EN_XC,          {     -3,    -40,   2339 }, {      0, 0X8000,      0 }, 0x0004 },
};

Vtx tokinoma_room_1Vtx_000930[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_000930.vtx.inc"
};

Gfx tokinoma_room_1DL_000AF0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_000930[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00EFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_1Vtx_000930, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_1Vtx_000BC8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_000BC8.vtx.inc"
};

Gfx tokinoma_room_1DL_000D88[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_000BC8[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00EFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_1Vtx_000BC8, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_1Vtx_000E60[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_000E60.vtx.inc"
};

Gfx tokinoma_room_1DL_0010E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_000E60[32], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00EFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_1Vtx_000E60, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_1Vtx_0011D0[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_0011D0.vtx.inc"
};

Gfx tokinoma_room_1DL_001450[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_0011D0[32], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00EFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_1Vtx_0011D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_1Vtx_001540[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_001540.vtx.inc"
};

Gfx tokinoma_room_1DL_001840[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_001540[40], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00EFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_1Vtx_001540, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_1Vtx_001540[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_1Vtx_001948[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_001948.vtx.inc"
};

Gfx tokinoma_room_1DL_0021D8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_001948[129], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_011FA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_1Vtx_001948, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0),
    gsSP2Triangles(7, 16, 17, 0, 7, 17, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00FFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_1Vtx_001948[18], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 6, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 4, 11, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(5, 25, 26, 0, 5, 26, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00DFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_1Vtx_001948[46], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_1Vtx_001948[78], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 4, 6, 0, 9, 8, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(1, 0, 18, 0, 19, 1, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(21, 24, 23, 0, 25, 20, 22, 0),
    gsSP2Triangles(25, 26, 20, 0, 24, 26, 25, 0),
    gsSP1Triangle(24, 25, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00D7A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_1Vtx_001948[105], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00CFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_1Vtx_001948[117], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&tokinoma_room_1Vtx_001948[125], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_1Vtx_002508[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_002508.vtx.inc"
};

Gfx tokinoma_room_1DL_002A58[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_002508[77], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_011FA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_1Vtx_002508, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&tokinoma_room_1Vtx_002508[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&tokinoma_room_1Vtx_002508[63], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 9, 11, 12, 0),
    gsSP1Triangle(9, 12, 13, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_1Vtx_002BA0[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_002BA0.vtx.inc"
};

Gfx tokinoma_room_1DL_003220[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_002BA0[96], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00EFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_1Vtx_002BA0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 19, 0, 22, 19, 18, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 25, 0, 28, 25, 24, 0),
    gsSPVertex(&tokinoma_room_1Vtx_002BA0[30], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00DFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_1Vtx_002BA0[48], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_1Vtx_002BA0[80], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_1Vtx_003408[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_003408.vtx.inc"
};

Gfx tokinoma_room_1DL_003728[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_003408[42], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00EFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_1Vtx_003408, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(11, 10, 16, 0, 11, 16, 17, 0),
    gsSP2Triangles(18, 19, 13, 0, 18, 13, 12, 0),
    gsSP2Triangles(20, 7, 21, 0, 20, 21, 22, 0),
    gsSP2Triangles(0, 23, 24, 0, 0, 24, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00DFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_1Vtx_003408[26], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_1Vtx_003880[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_003880.vtx.inc"
};

Gfx tokinoma_room_1DL_003C20[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_003880[50], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_0107A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_1Vtx_003880, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00DFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_1Vtx_003880[4], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 3, 11, 12, 0),
    gsSP2Triangles(13, 3, 12, 0, 13, 12, 14, 0),
    gsSP2Triangles(4, 6, 15, 0, 4, 15, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_1Tex_005858, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_1Vtx_003880[21], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 15, 17, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 18, 0),
    gsSP2Triangles(23, 18, 17, 0, 25, 26, 27, 0),
    gsSP1Triangle(19, 28, 20, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_1Vtx_003DD0[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_003DD0.vtx.inc"
};

Gfx tokinoma_room_1DL_003E90[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_003DD0[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_1Vtx_003DD0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_1Vtx_003F10[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_003F10.vtx.inc"
};

Gfx tokinoma_room_1DL_004BB0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_003F10[194], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_0117A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_1Vtx_003F10, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 2, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 9, 0, 8, 7, 1, 0),
    gsSP2Triangles(8, 1, 0, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_1Vtx_003F10[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_1Vtx_003F10[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&tokinoma_room_1Vtx_003F10[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&tokinoma_room_1Vtx_003F10[127], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 9, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_010FA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_1Vtx_003F10[141], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP1Triangle(14, 15, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_0107A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_1Vtx_003F10[158], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00FFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_1Vtx_003F10[176], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00DFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_1Vtx_003F10[184], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 1, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_1Vtx_004F38[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_004F38.vtx.inc"
};

Gfx tokinoma_room_1DL_005168[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_004F38[27], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_room_1Tex_005658, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(tokinoma_room_1Tex_005458, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(tokinoma_room_1Vtx_004F38, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP1Triangle(24, 25, 26, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_1Vtx_005278[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_005278.vtx.inc"
};

Gfx tokinoma_room_1DL_005328[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_005278[3], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_010FA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_1Vtx_005278, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx tokinoma_room_1DL_0053E0[] = {
    gsSPDisplayList(tokinoma_room_1DL_000AF0),
    gsSPDisplayList(tokinoma_room_1DL_000D88),
    gsSPDisplayList(tokinoma_room_1DL_0010E0),
    gsSPDisplayList(tokinoma_room_1DL_001450),
    gsSPDisplayList(tokinoma_room_1DL_001840),
    gsSPDisplayList(tokinoma_room_1DL_0021D8),
    gsSPDisplayList(tokinoma_room_1DL_002A58),
    gsSPDisplayList(tokinoma_room_1DL_003220),
    gsSPDisplayList(tokinoma_room_1DL_003728),
    gsSPDisplayList(tokinoma_room_1DL_003C20),
    gsSPDisplayList(tokinoma_room_1DL_003E90),
    gsSPDisplayList(tokinoma_room_1DL_004BB0),
    gsSPDisplayList(tokinoma_room_1DL_005168),
    gsSPDisplayList(tokinoma_room_1DL_005328),
    gsSPEndDisplayList(),
};

u64 tokinoma_room_1Tex_005458[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Tex_005458.rgba16.inc.c"
};

u64 tokinoma_room_1Tex_005658[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Tex_005658.rgba16.inc.c"
};

u64 tokinoma_room_1Tex_005858[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Tex_005858.rgba16.inc.c"
};

u8 tokinoma_room_1_possiblePadding_006058[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx tokinoma_room_1Vtx_006060[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_006060.vtx.inc"
};

Gfx tokinoma_room_1DL_006160[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_006060[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_room_1Tex_0068C8, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(tokinoma_room_1Vtx_006060, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_1Vtx_006220[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Vtx_006220.vtx.inc"
};

Gfx tokinoma_room_1DL_006360[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_1Vtx_006220[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(tokinoma_room_1Tex_0064C8, G_IM_FMT_IA, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_CLAMP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_1Vtx_006220, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_1Tex_006488, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_1Vtx_006220[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx tokinoma_room_1DL_006470[] = {
    gsSPDisplayList(tokinoma_room_1DL_006160),
    gsSPDisplayList(tokinoma_room_1DL_006360),
    gsSPEndDisplayList(),
};

u64 tokinoma_room_1Tex_006488[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Tex_006488.i8.inc.c"
};

u64 tokinoma_room_1Tex_0064C8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Tex_0064C8.ia4.inc.c"
};

u64 tokinoma_room_1Tex_0068C8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_1Tex_0068C8.ia8.inc.c"
};

