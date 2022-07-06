#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "spot04_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "spot04_scene.h"
#include "spot04_room_0.h"
#include "spot04_room_2.h"

SceneCmd spot04_room_1Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(spot04_room_1AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(1),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot04_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(5, spot04_room_1ObjectList_00007C),
    SCENE_CMD_ACTOR_LIST(9, spot04_room_1ActorList_000088),
    SCENE_CMD_END(),
};

SceneCmd* spot04_room_1AlternateHeaders0x000048[] = {
    NULL,
    spot04_room_1Set_000160,
    spot04_room_1Set_000250,
    spot04_room_1Set_0002F0,
    spot04_room_1Set_000370,
    spot04_room_1Set_000400,
    spot04_room_1Set_0004A0,
    spot04_room_1Set_000510,
    spot04_room_1Set_000640,
    spot04_room_1Set_000770,
    spot04_room_1Set_000800,
    spot04_room_1Set_000860,
    spot04_room_1Set_000900,
};

s16 spot04_room_1ObjectList_00007C[] = {
    OBJECT_KANBAN,
    OBJECT_GS,
    OBJECT_MAMENOKI,
    OBJECT_SPOT04_OBJECTS,
    OBJECT_DEKUBABA,
};

ActorEntry spot04_room_1ActorList_000088[] = {
    { ACTOR_OBJECT_KANKYO, {   3409,   -143,   -818 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_KAREBABA,   {   2109,     -1,   -317 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_KAREBABA,   {   2237,     -1,   -291 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_KAREBABA,   {   2293,     -1,   -496 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_KAREBABA,   {   3126,   -180,  -1555 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_KAREBABA,   {   4129,   -170,   -548 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_TREEMOUTH,  {   3882,   -171,  -1161 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_GS,         {   3800,   -159,  -2230 }, {      0, 0XCE39,      0 }, 0x391F },
    { ACTOR_EN_GS,         {   4740,   -157,   -700 }, {      0, 0X638E,      0 }, 0x3A20 },
};

u8 spot04_room_1_possiblePadding_000118[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 spot04_room_1PolygonType2_000120 = { 
    2, 3,
    spot04_room_1PolygonDlist2_00012C,
    spot04_room_1PolygonDlist2_00012C + ARRAY_COUNTU(spot04_room_1PolygonDlist2_00012C)
};

PolygonDlist2 spot04_room_1PolygonDlist2_00012C[3] = {
    { {   3637,    135,  -1279 },   2579, spot04_room_1DL_0018D0, spot04_room_1DL_007810 },
    { {    915,    692,   -632 },   3378, spot04_room_1DL_004D48, NULL },
    { {   4380,    877,  -1505 },   1933, spot04_room_1DL_004218, spot04_room_1DL_007A90 },
};

s32 spot04_room_1_terminatorMaybe_00015C = { 0x01000000 };

SceneCmd spot04_room_1Set_000160[] = {
    SCENE_CMD_ECHO_SETTINGS(1),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot04_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(3, spot04_room_1ObjectList_0001A0),
    SCENE_CMD_ACTOR_LIST(10, spot04_room_1ActorList_0001A8),
    SCENE_CMD_END(),
};

s16 spot04_room_1ObjectList_0001A0[] = {
    OBJECT_DEKUBABA,
    OBJECT_GS,
    OBJECT_SPOT04_OBJECTS,
};

ActorEntry spot04_room_1ActorList_0001A8[] = {
    { ACTOR_OBJECT_KANKYO, {   3409,   -143,   -818 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_TREEMOUTH,  {   3882,   -171,  -1161 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_DEKUBABA,   {   2351,     -1,   -489 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_DEKUBABA,   {   2748,     -1,   -707 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_DEKUBABA,   {   2867,     -1,   -416 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_DEKUBABA,   {   3126,   -180,  -1555 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_DEKUBABA,   {   3704,   -172,  -1074 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_DEKUBABA,   {   4129,   -170,   -548 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_GS,         {   3800,   -159,  -2230 }, {      0, 0XCE39,      0 }, 0x391F },
    { ACTOR_EN_GS,         {   4740,   -157,   -700 }, {      0, 0X638E,      0 }, 0x3A20 },
};

u8 spot04_room_1_possiblePadding_000248[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot04_room_1Set_000250[] = {
    SCENE_CMD_ECHO_SETTINGS(1),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot04_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(5, spot04_room_1ObjectList_000290),
    SCENE_CMD_ACTOR_LIST(5, spot04_room_1ActorList_00029C),
    SCENE_CMD_END(),
};

s16 spot04_room_1ObjectList_000290[] = {
    OBJECT_GS,
    OBJECT_KANBAN,
    OBJECT_MAMENOKI,
    OBJECT_SPOT04_OBJECTS,
    OBJECT_DEKUJR,
};

ActorEntry spot04_room_1ActorList_00029C[] = {
    { ACTOR_OBJECT_KANKYO, {   3409,   -143,   -818 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_DEKUJR,    {   3704,   -172,  -1074 }, {      0,      0,      0 }, 0x1E00 },
    { ACTOR_BG_TREEMOUTH,  {   3882,   -171,  -1161 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_GS,         {   3800,   -159,  -2230 }, {      0, 0XCE39,      0 }, 0x391F },
    { ACTOR_EN_GS,         {   4740,   -157,   -700 }, {      0, 0X638E,      0 }, 0x3A20 },
};

u8 spot04_room_1_possiblePadding_0002EC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot04_room_1Set_0002F0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&spot04_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(3, spot04_room_1ObjectList_000330),
    SCENE_CMD_ACTOR_LIST(3, spot04_room_1ActorList_000338),
    SCENE_CMD_END(),
};

s16 spot04_room_1ObjectList_000330[] = {
    OBJECT_SPOT04_OBJECTS,
    OBJECT_GOD_LGT,
    OBJECT_EFC_LGT_SHOWER,
};

ActorEntry spot04_room_1ActorList_000338[] = {
    { ACTOR_BG_TREEMOUTH,  {   3882,   -171,  -1161 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DEMO_EFFECT,   {   3225,    -61,   -377 }, {      0,      0,      0 }, 0xFF06 },
    { ACTOR_OBJECT_KANKYO, {   3057,    -79,   -754 }, {      0,      0,      0 }, 0x0000 },
};

u8 spot04_room_1_possiblePadding_000368[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot04_room_1Set_000370[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&spot04_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(4, spot04_room_1ObjectList_0003B0),
    SCENE_CMD_ACTOR_LIST(4, spot04_room_1ActorList_0003B8),
    SCENE_CMD_END(),
};

s16 spot04_room_1ObjectList_0003B0[] = {
    OBJECT_SPOT04_OBJECTS,
    OBJECT_BIRD,
    OBJECT_WOOD02,
    OBJECT_WARP1,
};

ActorEntry spot04_room_1ActorList_0003B8[] = {
    { ACTOR_BG_TREEMOUTH,  {   3882,   -171,  -1161 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJECT_KANKYO, {   -239,    120,    597 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJECT_KANKYO, {   3806,   -179,   -252 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DOOR_WARP1,    {   2857,      0,   -594 }, {      0,      0,      0 }, 0x0006 },
};

u8 spot04_room_1_possiblePadding_0003F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot04_room_1Set_000400[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&spot04_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(3, spot04_room_1ObjectList_000440),
    SCENE_CMD_ACTOR_LIST(5, spot04_room_1ActorList_000448),
    SCENE_CMD_END(),
};

s16 spot04_room_1ObjectList_000440[] = {
    OBJECT_SPOT04_OBJECTS,
    OBJECT_GI_JEWEL,
    OBJECT_EFC_FLASH,
};

ActorEntry spot04_room_1ActorList_000448[] = {
    { ACTOR_BG_TREEMOUTH,  {   3882,   -171,  -1161 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DEMO_EFFECT,   {   3561,   -169,  -1674 }, {      0,      0,      0 }, 0x0013 },
    { ACTOR_DEMO_EFFECT,   {   3652,   -177,   -976 }, {      0,      0,      0 }, 0x2112 },
    { ACTOR_OBJECT_KANKYO, {    378,      0,    483 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJECT_KANKYO, {   3580,   -164,   -365 }, {      0,      0,      0 }, 0x0000 },
};

u8 spot04_room_1_possiblePadding_000498[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot04_room_1Set_0004A0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&spot04_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(3, spot04_room_1ObjectList_0004E0),
    SCENE_CMD_ACTOR_LIST(2, spot04_room_1ActorList_0004E8),
    SCENE_CMD_END(),
};

s16 spot04_room_1ObjectList_0004E0[] = {
    OBJECT_SPOT04_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_OKA,
};

ActorEntry spot04_room_1ActorList_0004E8[] = {
    { ACTOR_OBJECT_KANKYO, {   3409,   -143,   -818 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_TREEMOUTH,  {   3882,   -171,  -1161 }, {      0,      0,      0 }, 0xFFFF },
};

u8 spot04_room_1_possiblePadding_000508[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot04_room_1Set_000510[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot04_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(4, spot04_room_1ObjectList_000550),
    SCENE_CMD_ACTOR_LIST(14, spot04_room_1ActorList_000558),
    SCENE_CMD_END(),
};

s16 spot04_room_1ObjectList_000550[] = {
    OBJECT_OS_ANIME,
    OBJECT_MD,
    OBJECT_SA,
    OBJECT_KM1,
};

ActorEntry spot04_room_1ActorList_000558[] = {
    { ACTOR_EN_RIVER_SOUND, {    402,    -12,   -491 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_OBJECT_KANKYO,  {    -29,      1,    216 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_ITEM_SHIELD,    {     18,    100,   1011 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_ITEM_SHIELD,    {    829,    119,   -348 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_SA,          {     31,    -80,    968 }, {      0, 0XA71C,      0 }, 0x0000 },
    { ACTOR_EN_A_OBJ,       {  -1432,    -66,   -426 }, {      0, 0X4000,      0 }, 0x1409 },
    { ACTOR_EN_A_OBJ,       {  -1182,    -49,   -144 }, {      0, 0XB8E4,      0 }, 0x1309 },
    { ACTOR_EN_A_OBJ,       {    112,    -80,    780 }, {      0, 0XAAAB,      0 }, 0x1209 },
    { ACTOR_EN_A_OBJ,       {    661,      0,   -101 }, {      0,      0,      0 }, 0x1109 },
    { ACTOR_EN_A_OBJ,       {   -193,    380,  -1307 }, {      0,      0,      0 }, 0x1009 },
    { ACTOR_EN_A_OBJ,       {   1420,      0,     21 }, {      0, 0XCE39,      0 }, 0x0F09 },
    { ACTOR_EN_MD,          {   1522,      0,    105 }, {      0, 0XBBBC,      0 }, 0x0000 },
    { ACTOR_EN_ITEM00,      {    854,    185,   -487 }, {      0,      0,      0 }, 0x1F06 },
    { ACTOR_EN_KO,          {   -228,      0,   -362 }, {      0,      0,      0 }, 0xD300 },
};

u8 spot04_room_1_possiblePadding_000638[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot04_room_1Set_000640[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot04_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(4, spot04_room_1ObjectList_000680),
    SCENE_CMD_ACTOR_LIST(14, spot04_room_1ActorList_000688),
    SCENE_CMD_END(),
};

s16 spot04_room_1ObjectList_000680[] = {
    OBJECT_OS_ANIME,
    OBJECT_MD,
    OBJECT_SA,
    OBJECT_KM1,
};

ActorEntry spot04_room_1ActorList_000688[] = {
    { ACTOR_EN_RIVER_SOUND, {    402,    -12,   -491 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_OBJECT_KANKYO,  {    -29,      1,    216 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_ITEM_SHIELD,    {     18,    100,   1011 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_ITEM_SHIELD,    {    829,    119,   -348 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_SA,          {     31,    -80,    968 }, {      0, 0XA71C,      0 }, 0x0000 },
    { ACTOR_EN_A_OBJ,       {  -1432,    -66,   -426 }, {      0, 0X4000,      0 }, 0x1409 },
    { ACTOR_EN_A_OBJ,       {  -1182,    -49,   -144 }, {      0, 0XB8E4,      0 }, 0x1309 },
    { ACTOR_EN_A_OBJ,       {    112,    -80,    780 }, {      0, 0XAAAB,      0 }, 0x1209 },
    { ACTOR_EN_A_OBJ,       {    661,      0,   -101 }, {      0,      0,      0 }, 0x1109 },
    { ACTOR_EN_A_OBJ,       {   -193,    380,  -1307 }, {      0,      0,      0 }, 0x1009 },
    { ACTOR_EN_A_OBJ,       {   1420,      0,     21 }, {      0, 0XCE39,      0 }, 0x0F09 },
    { ACTOR_EN_MD,          {   1522,      0,    105 }, {      0, 0XBBBC,      0 }, 0x0000 },
    { ACTOR_EN_ITEM00,      {    854,    185,   -487 }, {      0,      0,      0 }, 0x1F06 },
    { ACTOR_EN_KO,          {   -228,      0,   -362 }, {      0,      0,      0 }, 0xD300 },
};

u8 spot04_room_1_possiblePadding_000768[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot04_room_1Set_000770[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot04_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(2, spot04_room_1ObjectList_0007B0),
    SCENE_CMD_ACTOR_LIST(4, spot04_room_1ActorList_0007B4),
    SCENE_CMD_END(),
};

s16 spot04_room_1ObjectList_0007B0[] = {
    OBJECT_SPOT04_OBJECTS,
    OBJECT_DEKUJR,
};

ActorEntry spot04_room_1ActorList_0007B4[] = {
    { ACTOR_OBJECT_KANKYO, {    -29,      1,    216 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJECT_KANKYO, {   3554,   -173,   -856 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_DEKUJR,    {   3704,   -172,  -1074 }, {      0,      0,      0 }, 0x1E00 },
    { ACTOR_BG_TREEMOUTH,  {   3882,   -171,  -1161 }, {      0,      0,      0 }, 0xFFFF },
};

u8 spot04_room_1_possiblePadding_0007F4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot04_room_1Set_000800[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot04_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(3, spot04_room_1ObjectList_000840),
    SCENE_CMD_ACTOR_LIST(1, spot04_room_1ActorList_000848),
    SCENE_CMD_END(),
};

s16 spot04_room_1ObjectList_000840[] = {
    OBJECT_SPOT04_OBJECTS,
    OBJECT_WOOD02,
    OBJECT_KANBAN,
};

ActorEntry spot04_room_1ActorList_000848[] = {
    { ACTOR_OBJECT_KANKYO, {   3554,   -173,   -856 }, {      0,      0,      0 }, 0x0000 },
};

u8 spot04_room_1_possiblePadding_000858[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot04_room_1Set_000860[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&spot04_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(4, spot04_room_1ObjectList_0008A0),
    SCENE_CMD_ACTOR_LIST(5, spot04_room_1ActorList_0008A8),
    SCENE_CMD_END(),
};

s16 spot04_room_1ObjectList_0008A0[] = {
    OBJECT_SPOT04_OBJECTS,
    OBJECT_DEKUJR,
    OBJECT_KANBAN,
    OBJECT_WARP1,
};

ActorEntry spot04_room_1ActorList_0008A8[] = {
    { ACTOR_OBJECT_KANKYO, {    -29,      1,    216 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJECT_KANKYO, {   3554,   -173,   -856 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_DEKUJR,    {   3704,   -172,  -1074 }, {      0,      0,      0 }, 0x1E00 },
    { ACTOR_BG_TREEMOUTH,  {   3882,   -171,  -1161 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DOOR_WARP1,    {   3656,   -176,  -1046 }, {      0,      0,      0 }, 0x0006 },
};

u8 spot04_room_1_possiblePadding_0008F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot04_room_1Set_000900[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot04_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(2, spot04_room_1ObjectList_000940),
    SCENE_CMD_ACTOR_LIST(4, spot04_room_1ActorList_000944),
    SCENE_CMD_END(),
};

s16 spot04_room_1ObjectList_000940[] = {
    OBJECT_SPOT04_OBJECTS,
    OBJECT_DEKUJR,
};

ActorEntry spot04_room_1ActorList_000944[] = {
    { ACTOR_OBJECT_KANKYO, {    -29,      1,    216 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJECT_KANKYO, {   3554,   -173,   -856 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_DEKUJR,    {   3704,   -172,  -1074 }, {      0,      0,      0 }, 0x1E00 },
    { ACTOR_BG_TREEMOUTH,  {   3882,   -171,  -1161 }, {      0,      0,      0 }, 0xFFFF },
};

u8 spot04_room_1_possiblePadding_000984[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot04_room_1Vtx_000990[] = {
#include "assets/scenes/overworld/spot04/spot04_room_1Vtx_000990.vtx.inc"
};

Gfx spot04_room_1DL_0018D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot04_room_1Vtx_000990[236], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot04_sceneTex_010618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPLoadMultiBlock(spot04_sceneTex_00FE18, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 14),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(spot04_room_1Vtx_000990, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 2, 5, 6, 0),
    gsSP2Triangles(2, 6, 4, 0, 6, 5, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 14, 1, 0, 0),
    gsSP2Triangles(14, 0, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(19, 13, 12, 0, 19, 12, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(24, 26, 25, 0, 24, 18, 17, 0),
    gsSP2Triangles(24, 17, 26, 0, 27, 23, 22, 0),
    gsSP2Triangles(11, 28, 29, 0, 11, 10, 28, 0),
    gsSP1Triangle(28, 30, 29, 0),
    gsSPVertex(&spot04_room_1Vtx_000990[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 3, 5, 0, 4, 0, 3, 0),
    gsSP2Triangles(1, 0, 6, 0, 0, 7, 8, 0),
    gsSP2Triangles(8, 6, 0, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 12, 13, 10, 0),
    gsSP2Triangles(10, 14, 15, 0, 10, 15, 12, 0),
    gsSP2Triangles(12, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(20, 17, 18, 0, 21, 22, 20, 0),
    gsSP2Triangles(22, 23, 20, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 23, 0, 27, 28, 26, 0),
    gsSP2Triangles(26, 2, 27, 0, 2, 29, 27, 0),
    gsSP2Triangles(29, 2, 1, 0, 2, 26, 30, 0),
    gsSP2Triangles(23, 26, 31, 0, 31, 26, 28, 0),
    gsSPVertex(&spot04_room_1Vtx_000990[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 9, 12, 0),
    gsSP2Triangles(13, 14, 12, 0, 9, 13, 12, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 16, 15, 0),
    gsSP2Triangles(18, 15, 19, 0, 20, 18, 19, 0),
    gsSP2Triangles(6, 17, 4, 0, 17, 16, 4, 0),
    gsSP2Triangles(21, 22, 23, 0, 23, 24, 21, 0),
    gsSP2Triangles(23, 25, 26, 0, 23, 26, 24, 0),
    gsSP2Triangles(25, 27, 26, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&spot04_room_1Vtx_000990[95], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(9, 11, 12, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(spot04_sceneTex_00FA18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(spot04_sceneTLUT_00E010),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&spot04_room_1Vtx_000990[108], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0),
    gsSP2Triangles(4, 6, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(8, 12, 11, 0, 11, 13, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(15, 18, 16, 0, 15, 19, 18, 0),
    gsSP2Triangles(18, 20, 16, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 23, 25, 26, 0),
    gsSP2Triangles(23, 26, 24, 0, 22, 27, 28, 0),
    gsSP2Triangles(27, 25, 28, 0, 22, 29, 27, 0),
    gsSP1Triangle(27, 30, 25, 0),
    gsSPVertex(&spot04_room_1Vtx_000990[139], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0),
    gsSP2Triangles(4, 6, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 8, 13, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 10, 12, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(23, 26, 27, 0, 23, 27, 24, 0),
    gsSP2Triangles(26, 28, 29, 0, 26, 29, 27, 0),
    gsSP2Triangles(28, 30, 31, 0, 28, 31, 29, 0),
    gsSPVertex(&spot04_room_1Vtx_000990[171], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(spot04_room_1Tex_0056A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot04_room_1Vtx_000990[175], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 10, 11, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(spot04_sceneTex_00FA18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(spot04_sceneTLUT_00E010),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot04_room_1Vtx_000990[187], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 1, 0, 0, 4, 6, 3, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 7, 9, 0),
    gsSP2Triangles(10, 9, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 17, 20, 18, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&spot04_room_1Vtx_000990[219], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 5, 0),
    gsSP2Triangles(7, 5, 4, 0, 5, 9, 10, 0),
    gsSP2Triangles(5, 8, 11, 0, 5, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 6, 5, 10, 0),
    gsSP2Triangles(15, 16, 6, 0, 15, 6, 10, 0),
    gsSPEndDisplayList(),
};

Vtx spot04_room_1Vtx_001E28[] = {
#include "assets/scenes/overworld/spot04/spot04_room_1Vtx_001E28.vtx.inc"
};

Gfx spot04_room_1DL_004218[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot04_room_1Vtx_001E28[567], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot04_room_1Tex_004EA8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, 1),
    gsDPLoadMultiBlock(spot04_room_1Tex_0052A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0B000000),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot04_room_1Vtx_001E28, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 2, 0),
    gsSP2Triangles(1, 7, 2, 0, 9, 4, 2, 0),
    gsSP2Triangles(8, 9, 2, 0, 9, 6, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(14, 16, 15, 0, 10, 17, 18, 0),
    gsSP2Triangles(10, 18, 11, 0, 19, 14, 11, 0),
    gsSP2Triangles(18, 19, 11, 0, 19, 16, 14, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(22, 24, 25, 0, 22, 25, 23, 0),
    gsSP2Triangles(24, 26, 25, 0, 27, 28, 22, 0),
    gsSP2Triangles(21, 27, 22, 0, 29, 24, 22, 0),
    gsSP2Triangles(28, 29, 22, 0, 29, 26, 24, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 5, 0, 0, 7, 8, 0),
    gsSP2Triangles(0, 8, 1, 0, 9, 4, 1, 0),
    gsSP2Triangles(8, 9, 1, 0, 9, 6, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(14, 16, 15, 0, 10, 17, 18, 0),
    gsSP2Triangles(10, 18, 11, 0, 19, 14, 11, 0),
    gsSP2Triangles(18, 19, 11, 0, 19, 16, 14, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 20, 22, 0),
    gsSP2Triangles(21, 24, 25, 0, 21, 25, 22, 0),
    gsSP2Triangles(24, 26, 25, 0, 20, 27, 28, 0),
    gsSP2Triangles(20, 28, 21, 0, 29, 24, 21, 0),
    gsSP2Triangles(28, 29, 21, 0, 29, 26, 24, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[60], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 1, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 10, 12, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 16, 15, 0, 14, 16, 18, 0),
    gsSP2Triangles(16, 19, 18, 0, 20, 21, 18, 0),
    gsSP2Triangles(19, 20, 18, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 22, 24, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 24, 27, 0, 29, 30, 31, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[92], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(1, 8, 9, 0, 10, 1, 9, 0),
    gsSP2Triangles(8, 11, 9, 0, 12, 9, 11, 0),
    gsSP2Triangles(13, 14, 15, 0, 15, 16, 13, 0),
    gsSP2Triangles(13, 16, 17, 0, 18, 13, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 19, 21, 0),
    gsSP2Triangles(19, 23, 20, 0, 21, 24, 25, 0),
    gsSP2Triangles(26, 21, 25, 0, 27, 28, 22, 0),
    gsSP2Triangles(29, 27, 22, 0, 27, 30, 31, 0),
    gsSP1Triangle(31, 28, 27, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[124], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(6, 5, 14, 0, 3, 2, 15, 0),
    gsSP2Triangles(13, 16, 11, 0, 17, 8, 10, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(21, 22, 20, 0, 22, 23, 20, 0),
    gsSP2Triangles(22, 24, 23, 0, 24, 25, 23, 0),
    gsSP2Triangles(23, 26, 27, 0, 23, 27, 20, 0),
    gsSP2Triangles(27, 18, 20, 0, 23, 28, 26, 0),
    gsSP2Triangles(29, 30, 25, 0, 29, 28, 30, 0),
    gsSP2Triangles(28, 23, 30, 0, 23, 25, 30, 0),
    gsSP2Triangles(18, 31, 19, 0, 21, 19, 31, 0),
    gsSP2Triangles(31, 22, 21, 0, 31, 24, 22, 0),
    gsSP1Triangle(24, 11, 25, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[156], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 10, 9, 0),
    gsSP2Triangles(9, 12, 11, 0, 12, 9, 8, 0),
    gsSP2Triangles(13, 14, 15, 0, 6, 13, 15, 0),
    gsSP2Triangles(16, 14, 17, 0, 16, 17, 18, 0),
    gsSP2Triangles(15, 14, 16, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 19, 18, 0, 18, 21, 20, 0),
    gsSP2Triangles(21, 18, 12, 0, 22, 15, 23, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 6, 0),
    gsSP2Triangles(15, 22, 6, 0, 25, 24, 23, 0),
    gsSP2Triangles(26, 12, 8, 0, 8, 25, 23, 0),
    gsSP2Triangles(26, 8, 23, 0, 23, 15, 16, 0),
    gsSP2Triangles(23, 16, 19, 0, 26, 23, 19, 0),
    gsSP2Triangles(26, 19, 20, 0, 26, 20, 21, 0),
    gsSP2Triangles(26, 21, 12, 0, 18, 17, 27, 0),
    gsSP2Triangles(28, 17, 14, 0, 28, 14, 29, 0),
    gsSP1Triangle(30, 1, 0, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[187], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 4, 6, 0, 9, 6, 7, 0),
    gsSP2Triangles(10, 4, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(12, 16, 17, 0, 12, 17, 14, 0),
    gsSP2Triangles(15, 14, 18, 0, 14, 19, 20, 0),
    gsSP2Triangles(18, 14, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 24, 22, 0, 22, 25, 26, 0),
    gsSP2Triangles(22, 24, 27, 0, 22, 27, 25, 0),
    gsSP2Triangles(26, 25, 28, 0, 28, 25, 29, 0),
    gsSP2Triangles(28, 29, 30, 0, 25, 27, 31, 0),
    gsSP1Triangle(25, 31, 29, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[219], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 1, 5, 6, 0),
    gsSP2Triangles(1, 6, 7, 0, 4, 3, 8, 0),
    gsSP2Triangles(7, 6, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 12, 0),
    gsSP2Triangles(12, 16, 17, 0, 18, 12, 17, 0),
    gsSP2Triangles(12, 15, 19, 0, 12, 19, 16, 0),
    gsSP2Triangles(20, 21, 17, 0, 17, 22, 20, 0),
    gsSP2Triangles(20, 22, 23, 0, 24, 20, 23, 0),
    gsSP2Triangles(25, 24, 23, 0, 25, 23, 26, 0),
    gsSP2Triangles(27, 25, 26, 0, 27, 26, 28, 0),
    gsSP1Triangle(29, 27, 28, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[249], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 10, 9, 0),
    gsSP2Triangles(12, 11, 9, 0, 13, 11, 12, 0),
    gsSP2Triangles(14, 13, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 13, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 16, 17, 0, 19, 18, 17, 0),
    gsSP2Triangles(19, 17, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 28, 25, 0, 29, 30, 31, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[281], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(3, 8, 9, 0, 3, 9, 10, 0),
    gsSP2Triangles(11, 12, 3, 0, 0, 11, 3, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 13, 15, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP2Triangles(7, 29, 30, 0, 4, 7, 30, 0),
    gsSP2Triangles(12, 8, 3, 0, 31, 7, 6, 0),
    gsSP1Triangle(31, 6, 5, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[313], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 10, 9, 15, 0),
    gsSP2Triangles(11, 14, 16, 0, 17, 11, 16, 0),
    gsSP2Triangles(15, 9, 18, 0, 19, 20, 15, 0),
    gsSP2Triangles(19, 15, 18, 0, 18, 9, 21, 0),
    gsSP2Triangles(19, 18, 21, 0, 22, 19, 21, 0),
    gsSP2Triangles(23, 24, 25, 0, 25, 26, 23, 0),
    gsSP2Triangles(25, 27, 28, 0, 25, 28, 26, 0),
    gsSP2Triangles(27, 29, 28, 0, 27, 30, 29, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[344], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 4, 0, 5, 0),
    gsSP2Triangles(6, 4, 5, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 6, 7, 0, 9, 8, 7, 0),
    gsSP2Triangles(10, 6, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 15, 17, 0, 16, 19, 20, 0),
    gsSP2Triangles(16, 20, 17, 0, 21, 22, 23, 0),
    gsSP1Triangle(21, 23, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot04_room_1Tex_0066A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(spot04_room_1Tex_006EA8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       TEXEL1, 0, PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&spot04_room_1Vtx_001E28[369], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[401], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 8, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[432], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 18, 21, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(29, 26, 28, 0, 30, 29, 28, 0),
    gsSP1Triangle(31, 30, 28, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[464], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 12, 0),
    gsSP2Triangles(13, 11, 12, 0, 12, 8, 10, 0),
    gsSP2Triangles(13, 12, 10, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 17, 15, 0, 17, 18, 15, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 21, 0),
    gsSP2Triangles(20, 23, 22, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 24, 31, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[496], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 10, 15, 8, 0),
    gsSP2Triangles(12, 16, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 17, 24, 0),
    gsSP2Triangles(17, 19, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 20, 22, 0, 29, 30, 31, 0),
    gsSPVertex(&spot04_room_1Vtx_001E28[528], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 1, 8, 0),
    gsSP1Triangle(1, 0, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot04_room_1Tex_004EA8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetPrimColor(0, 0, 145, 165, 235, 255),
    gsSPVertex(&spot04_room_1Vtx_001E28[537], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 6, 1, 0),
    gsSP2Triangles(5, 1, 0, 0, 4, 5, 0, 0),
    gsSP2Triangles(5, 7, 6, 0, 5, 8, 7, 0),
    gsSP2Triangles(5, 9, 8, 0, 5, 4, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(13, 12, 14, 0, 12, 15, 14, 0),
    gsSP2Triangles(12, 11, 15, 0, 11, 16, 15, 0),
    gsSP2Triangles(16, 17, 15, 0, 17, 18, 15, 0),
    gsSP2Triangles(18, 19, 15, 0, 19, 14, 15, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 21, 20, 0, 24, 20, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 27, 26, 28, 0),
    gsSP2Triangles(29, 25, 27, 0, 29, 27, 28, 0),
    gsSPEndDisplayList(),
};

Vtx spot04_room_1Vtx_004B08[] = {
#include "assets/scenes/overworld/spot04/spot04_room_1Vtx_004B08.vtx.inc"
};

Gfx spot04_room_1DL_004D48[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot04_room_1Vtx_004B08[28], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot04_sceneTex_00EA18, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 193, 175, 90, 255),
    gsSPVertex(spot04_room_1Vtx_004B08, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot04_sceneTex_00E218, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 230, 250, 156, 255),
    gsSPVertex(&spot04_room_1Vtx_004B08[14], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSPEndDisplayList(),
};

u8 spot04_room_1_unaccounted_004E88[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x18, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x42, 0x18, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4D, 0x48, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 spot04_room_1Tex_004EA8[] = {
#include "assets/scenes/overworld/spot04/spot04_room_1Tex_004EA8.rgba16.inc.c"
};

u64 spot04_room_1Tex_0052A8[] = {
#include "assets/scenes/overworld/spot04/spot04_room_1Tex_0052A8.rgba16.inc.c"
};

u64 spot04_room_1Tex_0056A8[] = {
#include "assets/scenes/overworld/spot04/spot04_room_1Tex_0056A8.rgba16.inc.c"
};

u64 spot04_room_1Tex_0066A8[] = {
#include "assets/scenes/overworld/spot04/spot04_room_1Tex_0066A8.rgba16.inc.c"
};

u64 spot04_room_1Tex_006EA8[] = {
#include "assets/scenes/overworld/spot04/spot04_room_1Tex_006EA8.rgba16.inc.c"
};

u8 spot04_room_1_possiblePadding_0076A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot04_room_1Vtx_0076B0[] = {
#include "assets/scenes/overworld/spot04/spot04_room_1Vtx_0076B0.vtx.inc"
};

Gfx spot04_room_1DL_007810[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot04_room_1Vtx_0076B0[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot04_room_1Tex_007D78, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_OVL_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 155, 140, 52, 179),
    gsSPVertex(spot04_room_1Vtx_0076B0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot04_sceneTex_00F218, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot04_room_1Vtx_0076B0[8], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot04_room_1Vtx_007930[] = {
#include "assets/scenes/overworld/spot04/spot04_room_1Vtx_007930.vtx.inc"
};

Gfx spot04_room_1DL_007A90[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot04_room_1Vtx_007930[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot04_room_1Tex_007B78, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot04_room_1Vtx_007930, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSPEndDisplayList(),
};

u8 spot04_room_1_unaccounted_007B60[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x78, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x7A, 0x90, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 spot04_room_1Tex_007B78[] = {
#include "assets/scenes/overworld/spot04/spot04_room_1Tex_007B78.ia8.inc.c"
};

u64 spot04_room_1Tex_007D78[] = {
#include "assets/scenes/overworld/spot04/spot04_room_1Tex_007D78.i4.inc.c"
};

