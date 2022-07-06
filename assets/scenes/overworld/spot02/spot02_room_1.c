#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "spot02_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "spot02_scene.h"
#include "spot02_room_0.h"

SceneCmd spot02_room_1Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(spot02_room_1AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot02_room_1PolygonType2_000340),
    SCENE_CMD_OBJECT_LIST(14, spot02_room_1ObjectList_00005C),
    SCENE_CMD_ACTOR_LIST(44, spot02_room_1ActorList_000078),
    SCENE_CMD_END(),
};

SceneCmd* spot02_room_1AlternateHeaders0x000048[] = {
    spot02_room_1Set_000C70,
    spot02_room_1Set_000490,
    spot02_room_1Set_000880,
    spot02_room_1Set_001010,
    spot02_room_1Set_001260,
};

s16 spot02_room_1ObjectList_00005C[] = {
    OBJECT_SPOT02_OBJECTS,
    OBJECT_SPOT01_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_DARK,
    OBJECT_EFC_FLASH,
    OBJECT_PO_COMPOSER,
    OBJECT_HAKA,
    OBJECT_MAMENOKI,
    OBJECT_CS,
    OBJECT_KANBAN,
    OBJECT_POH,
    OBJECT_GS,
    OBJECT_ST,
    OBJECT_KIBAKO2,
};

ActorEntry spot02_room_1ActorList_000078[] = {
    { ACTOR_EN_CS,             {   -474,     61,    447 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_BG_SPOT01_FUSYA,   {  -3200,    880,    150 }, {      0, 0XC000,      0 }, 0xFFFF },
    { ACTOR_EN_GS,             {   1290,    340,    -75 }, {      0, 0XE000,      0 }, 0x380A },
    { ACTOR_EN_ITEM00,         {  -1050,    264,   -350 }, {      0,      0,      0 }, 0x0406 },
    { ACTOR_EN_WONDER_TALK,    {    752,    215,     85 }, {      0, 0XC000,  0XFA5 }, 0x27FF },
    { ACTOR_EN_WONDER_TALK,    {    654,    214,   -102 }, {      0, 0XC000,  0XE39 }, 0x1FFF },
    { ACTOR_EN_WONDER_TALK,    {    654,    214,    258 }, {      0, 0XC000,  0XE39 }, 0x2FFF },
    { ACTOR_BG_MJIN,           {   1145,    340,     85 }, {      0, 0X1555,      0 }, 0x0002 },
    { ACTOR_EN_OKARINA_TAG,    {    602,    181,     81 }, {      0, 0XC000,    0XB }, 0x1BFF },
    { ACTOR_OBJ_HANA,          {   -402,     60,    164 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_OBJ_HANA,          {   -402,     60,    196 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_OBJ_HANA,          {   -397,     60,    180 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_OBJ_MAKEKINSUTA,   {   -715,    120,   -340 }, {      0,      0,      0 }, 0x5101 },
    { ACTOR_OBJECT_KANKYO,     {    685,    180,     33 }, {      0, 0XC000,      0 }, 0x0004 },
    { ACTOR_EN_ISHI,           {  -1193,      0,    693 }, {      0,      0,      0 }, 0x0210 },
    { ACTOR_EN_KANBAN,         {  -1110,      0,    430 }, {      0, 0XC000,      0 }, 0x0334 },
    { ACTOR_OBJ_MURE2,         {  -1102,      0,    690 }, {      0,      0,      0 }, 0x0201 },
    { ACTOR_OBJ_MURE,          {   -391,    137,    178 }, {      0,      0,      0 }, 0x3324 },
    { ACTOR_OBJ_BEAN,          {   -715,    120,   -340 }, {      0,      0,      0 }, 0x1F03 },
    { ACTOR_EN_WONDER_TALK2,   {   -805,     38,    266 }, {      0, 0XC000,   0X29 }, 0x0B3F },
    { ACTOR_EN_WONDER_TALK2,   {    602,    185,     80 }, {      0, 0XC000,   0X15 }, 0x0AFF },
    { ACTOR_OBJ_KIBAKO2,       {  -1050,    264,   -350 }, { 0XFFFF, 0X4000,      0 }, 0xFFFF },
    { ACTOR_BG_HAKA,           {   -458,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,     59 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    299 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    419 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    539 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -338,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -218,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    -98,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {     22,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,   -177 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    -57 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    219 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    459 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    579 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    699 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    179 }, {      0, 0XC000,      0 }, 0x0001 },
    { ACTOR_BG_HAKA,           {    155,    120,    339 }, {      0, 0XC000,      0 }, 0x0001 },
    { ACTOR_EN_WEATHER_TAG,    {    728,    181,     80 }, {      0,      0,      0 }, 0x0607 },
    { ACTOR_BG_SPOT02_OBJECTS, {    762,    180,     80 }, {      0, 0XC000,      0 }, 0x0002 },
    { ACTOR_BG_SPOT02_OBJECTS, {   -578,    120,   -336 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_SPOT02_OBJECTS, {    685,    180,    137 }, {      0, 0XC000,      0 }, 0x0004 },
    { ACTOR_BG_SPOT02_OBJECTS, {    685,    180,     85 }, {      0, 0XC000,      0 }, 0x0003 },
};

u8 spot02_room_1_possiblePadding_000338[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 spot02_room_1PolygonType2_000340 = { 
    2, 20,
    spot02_room_1PolygonDlist2_00034C,
    spot02_room_1PolygonDlist2_00034C + ARRAY_COUNTU(spot02_room_1PolygonDlist2_00034C)
};

PolygonDlist2 spot02_room_1PolygonDlist2_00034C[20] = {
    { {  -3000,    730,    150 },    367, spot02_room_1DL_0071A8, NULL },
    { {  -1000,    192,    310 },    562, spot02_room_1DL_001F20, NULL },
    { {   -253,    576,    119 },   1984, spot02_room_1DL_005A68, NULL },
    { {   -212,     90,    217 },    548, NULL, spot02_room_1DL_01A358 },
    { {   -797,     68,    650 },    151, spot02_room_1DL_003068, NULL },
    { {    658,    204,    260 },     55, spot02_room_1DL_007770, NULL },
    { {    602,    180,     80 },     91, NULL, spot02_room_1DL_01A508 },
    { {   -352,    328,    118 },   1834, spot02_room_1DL_0065B0, NULL },
    { {    945,    373,     80 },    202, spot02_room_1DL_0040F0, NULL },
    { {   -406,    120,    310 },    619, spot02_room_1DL_003F20, NULL },
    { {   -784,     34,    262 },     70, spot02_room_1DL_006F78, NULL },
    { {   -372,    170,    120 },   1793, spot02_room_1DL_003BC0, NULL },
    { {   2560,    289,     80 },   1241, spot02_room_1DL_008DE8, spot02_room_1DL_01B618 },
    { {   -151,     90,    217 },    796, NULL, spot02_room_1DL_019F60 },
    { {    658,    204,   -102 },     55, spot02_room_1DL_007460, NULL },
    { {   -126,     90,    181 },    877, spot02_room_1DL_0042A8, spot02_room_1DL_01AA80 },
    { {    110,    -40,      1 },    814, spot02_room_1DL_005250, spot02_room_1DL_01B178 },
    { {   -246,    445,    118 },   1973, spot02_room_1DL_005730, NULL },
    { {  -1189,   1144,    988 },   2928, spot02_room_1DL_006C48, NULL },
    { {   1559,   1559,   -197 },   2061, spot02_room_1DL_007990, NULL },
};

s32 spot02_room_1_terminatorMaybe_00048C = { 0x01000000 };

SceneCmd spot02_room_1Set_000490[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot02_room_1PolygonType2_000340),
    SCENE_CMD_OBJECT_LIST(13, spot02_room_1ObjectList_0004D0),
    SCENE_CMD_ACTOR_LIST(57, spot02_room_1ActorList_0004EC),
    SCENE_CMD_END(),
};

s16 spot02_room_1ObjectList_0004D0[] = {
    OBJECT_SPOT02_OBJECTS,
    OBJECT_SPOT01_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_DARK,
    OBJECT_EFC_FLASH,
    OBJECT_POH,
    OBJECT_HAKA,
    OBJECT_MAMENOKI,
    OBJECT_KANBAN,
    OBJECT_PO_COMPOSER,
    OBJECT_GS,
    OBJECT_KIBAKO2,
    OBJECT_WARP1,
};

ActorEntry spot02_room_1ActorList_0004EC[] = {
    { ACTOR_BG_SPOT01_FUSYA,   {  -3200,    880,    150 }, {      0, 0XC000,      0 }, 0xFFFF },
    { ACTOR_EN_GS,             {   1290,    340,    -75 }, {      0, 0XE000,      0 }, 0x380A },
    { ACTOR_EN_FIREFLY,        {   -563,     75,    351 }, {      0, 0XC000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,        {   -563,     75,    709 }, {      0, 0XC000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,        {   -276,    131,   -148 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,        {    -39,    133,    150 }, {      0, 0XC000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,        {    -25,    133,    -81 }, {      0, 0X4000,      0 }, 0x0003 },
    { ACTOR_EN_SW,             {   -686,    137,   -158 }, { 0X4000,      0,      0 }, 0x0000 },
    { ACTOR_EN_SW,             {    -38,    135,    405 }, { 0X4000, 0XC000,      0 }, 0x0000 },
    { ACTOR_EN_ITEM00,         {  -1050,    264,   -350 }, {      0,      0,      0 }, 0x0406 },
    { ACTOR_EN_WONDER_TALK,    {    753,    221,     85 }, {      0, 0XC000,  0XFA5 }, 0x27FF },
    { ACTOR_DOOR_WARP1,        {   1140,    340,     85 }, {      0,      0,      0 }, 0x0006 },
    { ACTOR_EN_POH,            {   -382,     61,    657 }, {      0, 0X9777,      0 }, 0x0000 },
    { ACTOR_EN_POH,            {   -330,    120,   -260 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_POH,            {    552,    181,    318 }, {      0, 0XB6C1,      0 }, 0x0000 },
    { ACTOR_EN_WONDER_TALK,    {    634,    202,   -100 }, {      0, 0XC000,  0XE39 }, 0x1FFF },
    { ACTOR_EN_WONDER_TALK,    {    634,    202,    260 }, {      0, 0XC000,  0XE39 }, 0x2FFF },
    { ACTOR_EN_WEATHER_TAG,    {   -671,      0,     85 }, {      0,      0,      0 }, 0x1405 },
    { ACTOR_BG_MJIN,           {   1143,    340,     85 }, {      0, 0X1555,      0 }, 0x0002 },
    { ACTOR_EN_OKARINA_TAG,    {    602,    181,     81 }, {      0, 0XC000,      0 }, 0x1BFF },
    { ACTOR_OBJ_HANA,          {   -562,    120,   -289 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_HANA,          {   -598,    120,   -287 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_HANA,          {   -578,    120,   -280 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_HANA,          {   -402,     60,    164 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_OBJ_HANA,          {   -402,     60,    196 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_OBJ_HANA,          {   -397,     60,    180 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_OBJECT_KANKYO,     {    685,    180,     32 }, {      0, 0XC000,      0 }, 0x0004 },
    { ACTOR_EN_ISHI,           {  -1193,      0,    693 }, {      0,      0,      0 }, 0x0710 },
    { ACTOR_EN_KANBAN,         {  -1110,      0,    430 }, {      0, 0XC000,      0 }, 0x0335 },
    { ACTOR_OBJ_MURE2,         {  -1102,      0,    690 }, {      0,      0,      0 }, 0x0701 },
    { ACTOR_OBJ_BEAN,          {   -715,    120,   -340 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_WONDER_TALK2,   {   -807,     42,    266 }, {      0, 0XC000,   0X29 }, 0x0B3F },
    { ACTOR_EN_WONDER_TALK2,   {    601,    185,     81 }, {      0, 0XC000,   0X15 }, 0x0AFF },
    { ACTOR_OBJ_KIBAKO2,       {  -1050,    264,   -350 }, { 0XFFFF, 0X4000,      0 }, 0xFFFF },
    { ACTOR_BG_HAKA,           {   -458,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,     59 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    299 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    419 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    539 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -338,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -218,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    -98,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {     22,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,   -177 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    -57 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    219 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    459 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    579 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    699 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -578,    120,   -336 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_HAKA,           {   -348,     60,    179 }, {      0, 0XC000,      0 }, 0x0001 },
    { ACTOR_BG_HAKA,           {    155,    120,    339 }, {      0, 0XC000,      0 }, 0x0001 },
    { ACTOR_EN_WEATHER_TAG,    {    728,    181,     80 }, {      0,      0,      0 }, 0x0607 },
    { ACTOR_BG_SPOT02_OBJECTS, {    762,    180,     80 }, {      0, 0XC000,      0 }, 0x0002 },
    { ACTOR_BG_SPOT02_OBJECTS, {   -578,    120,   -336 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_SPOT02_OBJECTS, {    682,    180,    131 }, {      0, 0XC000,      0 }, 0x0004 },
    { ACTOR_BG_SPOT02_OBJECTS, {    684,    180,     86 }, {      0, 0XC000,      0 }, 0x0003 },
};

u8 spot02_room_1_possiblePadding_00087C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot02_room_1Set_000880[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot02_room_1PolygonType2_000340),
    SCENE_CMD_OBJECT_LIST(13, spot02_room_1ObjectList_0008C0),
    SCENE_CMD_ACTOR_LIST(57, spot02_room_1ActorList_0008DC),
    SCENE_CMD_END(),
};

s16 spot02_room_1ObjectList_0008C0[] = {
    OBJECT_SPOT02_OBJECTS,
    OBJECT_SPOT01_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_DARK,
    OBJECT_EFC_FLASH,
    OBJECT_POH,
    OBJECT_HAKA,
    OBJECT_MAMENOKI,
    OBJECT_KANBAN,
    OBJECT_PO_COMPOSER,
    OBJECT_GS,
    OBJECT_KIBAKO2,
    OBJECT_WARP1,
};

ActorEntry spot02_room_1ActorList_0008DC[] = {
    { ACTOR_BG_SPOT01_FUSYA,   {  -3200,    880,    150 }, {      0, 0XC000,      0 }, 0xFFFF },
    { ACTOR_EN_GS,             {   1290,    340,    -75 }, {      0, 0XE000,      0 }, 0x380A },
    { ACTOR_EN_FIREFLY,        {    -25,    133,    -81 }, {      0, 0X4000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,        {    -39,    133,    150 }, {      0, 0XC000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,        {   -276,    131,   -148 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,        {   -563,     75,    709 }, {      0, 0XC000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,        {   -563,     75,    351 }, {      0, 0XC000,      0 }, 0x0003 },
    { ACTOR_EN_SW,             {    -38,    135,    405 }, { 0X4000, 0XC000,      0 }, 0x0000 },
    { ACTOR_EN_SW,             {   -686,    137,   -158 }, { 0X4000,      0,      0 }, 0x0000 },
    { ACTOR_EN_ITEM00,         {  -1050,    264,   -350 }, {      0,      0,      0 }, 0x0406 },
    { ACTOR_EN_WONDER_TALK,    {    758,    221,     85 }, {      0, 0XC000,  0XFA5 }, 0x27FF },
    { ACTOR_DOOR_WARP1,        {   1140,    340,     85 }, {      0,      0,      0 }, 0x0006 },
    { ACTOR_EN_POH,            {    552,    181,    318 }, {      0, 0XB6C1,      0 }, 0x0000 },
    { ACTOR_EN_POH,            {   -330,    120,   -260 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_POH,            {   -382,     61,    657 }, {      0, 0X9777,      0 }, 0x0000 },
    { ACTOR_EN_WONDER_TALK,    {    638,    203,   -100 }, {      0, 0XC000,  0XE39 }, 0x1FFF },
    { ACTOR_EN_WONDER_TALK,    {    638,    203,    260 }, {      0, 0XC000,  0XE39 }, 0x2FFF },
    { ACTOR_EN_WEATHER_TAG,    {   -671,      0,     85 }, {      0,      0,      0 }, 0x1405 },
    { ACTOR_BG_MJIN,           {   1143,    340,     85 }, {      0, 0X1555,      0 }, 0x0002 },
    { ACTOR_EN_OKARINA_TAG,    {    602,    181,     81 }, {      0, 0XC000,      0 }, 0x1BFF },
    { ACTOR_OBJ_HANA,          {   -562,    120,   -289 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_HANA,          {   -578,    120,   -280 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_HANA,          {   -598,    120,   -287 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_HANA,          {   -397,     60,    180 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_OBJ_HANA,          {   -402,     60,    164 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_OBJ_HANA,          {   -402,     60,    196 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_OBJECT_KANKYO,     {    685,    180,     32 }, {      0, 0XC000,      0 }, 0x0004 },
    { ACTOR_EN_ISHI,           {  -1193,      0,    693 }, {      0,      0,      0 }, 0x0710 },
    { ACTOR_EN_KANBAN,         {  -1110,      0,    430 }, {      0, 0XC000,      0 }, 0x0335 },
    { ACTOR_OBJ_MURE2,         {  -1102,      0,    690 }, {      0,      0,      0 }, 0x0701 },
    { ACTOR_OBJ_BEAN,          {   -715,    120,   -340 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_WONDER_TALK2,   {   -806,     41,    266 }, {      0, 0XC000,   0X15 }, 0x0B3F },
    { ACTOR_EN_WONDER_TALK2,   {    604,    185,     80 }, {      0, 0XC000,   0X29 }, 0x0AFF },
    { ACTOR_OBJ_KIBAKO2,       {  -1050,    264,   -350 }, { 0XFFFF, 0X4000,      0 }, 0xFFFF },
    { ACTOR_BG_HAKA,           {    155,    120,    699 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    579 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    459 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    219 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    -57 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,   -177 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {     22,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    -98,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -218,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -338,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    539 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    419 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    299 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,     59 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -458,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    339 }, {      0, 0XC000,      0 }, 0x0001 },
    { ACTOR_BG_HAKA,           {   -348,     60,    179 }, {      0, 0XC000,      0 }, 0x0001 },
    { ACTOR_BG_HAKA,           {   -578,    120,   -336 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_WEATHER_TAG,    {    728,    181,     80 }, {      0,      0,      0 }, 0x0607 },
    { ACTOR_BG_SPOT02_OBJECTS, {    762,    180,     80 }, {      0, 0XC000,      0 }, 0x0002 },
    { ACTOR_BG_SPOT02_OBJECTS, {   -578,    120,   -336 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_SPOT02_OBJECTS, {    682,    180,    131 }, {      0, 0XC000,      0 }, 0x0004 },
    { ACTOR_BG_SPOT02_OBJECTS, {    684,    180,     86 }, {      0, 0XC000,      0 }, 0x0003 },
};

u8 spot02_room_1_possiblePadding_000C6C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot02_room_1Set_000C70[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot02_room_1PolygonType2_000340),
    SCENE_CMD_OBJECT_LIST(14, spot02_room_1ObjectList_000CB0),
    SCENE_CMD_ACTOR_LIST(52, spot02_room_1ActorList_000CCC),
    SCENE_CMD_END(),
};

s16 spot02_room_1ObjectList_000CB0[] = {
    OBJECT_SPOT02_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_DARK,
    OBJECT_EFC_FLASH,
    OBJECT_SPOT01_OBJECTS,
    OBJECT_PO_COMPOSER,
    OBJECT_HAKA,
    OBJECT_MAMENOKI,
    OBJECT_TK,
    OBJECT_KANBAN,
    OBJECT_POH,
    OBJECT_GS,
    OBJECT_ST,
    OBJECT_KIBAKO2,
};

ActorEntry spot02_room_1ActorList_000CCC[] = {
    { ACTOR_BG_SPOT01_FUSYA,   {  -3200,    880,    150 }, {      0, 0XC000,      0 }, 0xFFFF },
    { ACTOR_EN_WONDER_TALK,    {    758,    219,     85 }, {      0, 0XC000,  0XFA5 }, 0x27FF },
    { ACTOR_EN_WONDER_TALK,    {    630,    199,   -100 }, {      0, 0XC000,  0XE39 }, 0x1FFF },
    { ACTOR_EN_WONDER_TALK,    {    630,    199,    260 }, {      0, 0XC000,  0XE39 }, 0x2FFF },
    { ACTOR_BG_MJIN,           {   1143,    340,     85 }, {      0, 0X1555,      0 }, 0x0002 },
    { ACTOR_EN_OKARINA_TAG,    {    602,    181,     80 }, {      0, 0XC000,      0 }, 0x1BFF },
    { ACTOR_OBJ_HANA,          {   -402,     60,    164 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_OBJ_HANA,          {   -402,     60,    196 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_OBJ_HANA,          {   -397,     60,    180 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_EN_IT,             {   -473,     60,    202 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_IT,             {   -473,     60,    502 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_IT,             {   -409,    120,   -234 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_IT,             {   -335,     60,    681 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_IT,             {   -177,    120,   -231 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_IT,             {     43,    120,   -108 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_IT,             {     48,    120,    222 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_IT,             {     48,    120,    535 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJECT_KANKYO,     {    688,    180,     35 }, {      0, 0XC000,      0 }, 0x0004 },
    { ACTOR_EN_ISHI,           {  -1193,      0,    693 }, {      0,      0,      0 }, 0x0210 },
    { ACTOR_EN_KANBAN,         {  -1110,      0,    430 }, {      0, 0XC000,      0 }, 0x0334 },
    { ACTOR_OBJ_MURE2,         {  -1102,      0,    690 }, {      0,      0,      0 }, 0x0201 },
    { ACTOR_EN_WONDER_TALK2,   {   -805,     38,    264 }, {      0, 0XC000,   0X29 }, 0x0B3F },
    { ACTOR_EN_WONDER_TALK2,   {    603,    185,     80 }, {      0, 0XC000,   0X15 }, 0x0AFF },
    { ACTOR_OBJ_KIBAKO2,       {  -1050,    264,   -350 }, { 0XFFFF, 0X4000,      0 }, 0xFFFF },
    { ACTOR_BG_HAKA,           {   -458,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,     59 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    299 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    419 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    539 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -338,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -218,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    -98,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {     22,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,   -177 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    -57 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    219 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    459 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    579 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    699 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    179 }, {      0, 0XC000,      0 }, 0x0001 },
    { ACTOR_BG_HAKA,           {    155,    120,    339 }, {      0, 0XC000,      0 }, 0x0001 },
    { ACTOR_EN_TK,             {   -476,     61,    434 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_EN_WEATHER_TAG,    {    728,    181,     80 }, {      0,      0,      0 }, 0x0607 },
    { ACTOR_BG_SPOT02_OBJECTS, {    762,    180,     80 }, {      0, 0XC000,      0 }, 0x0002 },
    { ACTOR_BG_SPOT02_OBJECTS, {   -578,    120,   -336 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_SPOT02_OBJECTS, {    688,    180,    133 }, {      0, 0XC000,      0 }, 0x0004 },
    { ACTOR_BG_SPOT02_OBJECTS, {    689,    180,     86 }, {      0, 0XC000,      0 }, 0x0003 },
    { ACTOR_OBJ_MAKEKINSUTA,   {   -715,    120,   -340 }, {      0,      0,      0 }, 0x5101 },
    { ACTOR_OBJ_BEAN,          {   -715,    120,   -340 }, {      0,      0,      0 }, 0x1F03 },
    { ACTOR_EN_ITEM00,         {  -1050,    264,   -350 }, {      0,      0,      0 }, 0x0406 },
    { ACTOR_EN_GS,             {   1290,    340,    -75 }, {      0, 0XE000,      0 }, 0x380A },
    { ACTOR_EN_SW,             {    156,    315,    795 }, { 0X4000, 0X8000,      0 }, 0xB180 },
};

u8 spot02_room_1_possiblePadding_00100C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot02_room_1Set_001010[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot02_room_1PolygonType2_000340),
    SCENE_CMD_OBJECT_LIST(11, spot02_room_1ObjectList_001050),
    SCENE_CMD_ACTOR_LIST(31, spot02_room_1ActorList_001068),
    SCENE_CMD_END(),
};

s16 spot02_room_1ObjectList_001050[] = {
    OBJECT_SPOT02_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_DARK,
    OBJECT_EFC_FLASH,
    OBJECT_SYOKUDAI,
    OBJECT_POH,
    OBJECT_TK,
    OBJECT_HAKA,
    OBJECT_NIW,
    OBJECT_MAMENOKI,
    OBJECT_BOX,
};

ActorEntry spot02_room_1ActorList_001068[] = {
    { ACTOR_EN_BOX,            {  -1100,    264,   -300 }, {      0, 0XC000,      0 }, 0x07C0 },
    { ACTOR_EN_POH,            {   -330,    120,   -260 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_MJIN,           {   1145,    340,     85 }, {      0, 0X1555,      0 }, 0x0002 },
    { ACTOR_BG_HAKA,           {   -348,     60,     59 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    179 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    299 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    419 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    539 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    699 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    579 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    459 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    339 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    219 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    -57 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,   -177 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {     22,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    -98,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -218,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -338,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -458,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -578,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -764,    120,   -243 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    664,    180,   -101 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    664,    180,    261 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_EN_TK,             {   -476,     61,    434 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_BG_SPOT02_OBJECTS, {    762,    180,     80 }, {      0, 0XC000,      0 }, 0x0002 },
    { ACTOR_BG_SPOT02_OBJECTS, {   -578,    120,   -336 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_OBJ_BEAN,          {   -745,    120,   -450 }, {      0,      0,      0 }, 0x1F01 },
    { ACTOR_OBJECT_KANKYO,     {    851,    180,     49 }, {      0,      0,      0 }, 0x0004 },
    { ACTOR_BG_SPOT02_OBJECTS, {    849,    180,     96 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_BG_SPOT02_OBJECTS, {    849,    180,    130 }, {      0,      0,      0 }, 0x0004 },
};

u8 spot02_room_1_possiblePadding_001258[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot02_room_1Set_001260[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 1),
    SCENE_CMD_MESH(&spot02_room_1PolygonType2_000340),
    SCENE_CMD_OBJECT_LIST(12, spot02_room_1ObjectList_0012A0),
    SCENE_CMD_ACTOR_LIST(31, spot02_room_1ActorList_0012B8),
    SCENE_CMD_END(),
};

s16 spot02_room_1ObjectList_0012A0[] = {
    OBJECT_SPOT02_OBJECTS,
    OBJECT_MJIN,
    OBJECT_MJIN_DARK,
    OBJECT_EFC_FLASH,
    OBJECT_SYOKUDAI,
    OBJECT_POH,
    OBJECT_TK,
    OBJECT_HAKA,
    OBJECT_NIW,
    OBJECT_MAMENOKI,
    OBJECT_BOX,
    OBJECT_SPOT01_OBJECTS,
};

ActorEntry spot02_room_1ActorList_0012B8[] = {
    { ACTOR_EN_BOX,            {  -1100,    264,   -300 }, {      0, 0XC000,      0 }, 0x07C0 },
    { ACTOR_EN_POH,            {   -330,    120,   -260 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_MJIN,           {   1145,    340,     85 }, {      0, 0X1555,      0 }, 0x0002 },
    { ACTOR_BG_HAKA,           {   -348,     60,     59 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    179 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    299 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    419 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -348,     60,    539 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    699 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    579 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    459 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    339 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    219 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,    -57 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    155,    120,   -177 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {     22,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    -98,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -218,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -338,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -458,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -578,    120,   -336 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {   -764,    120,   -243 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    664,    180,   -101 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,           {    664,    180,    261 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_EN_TK,             {   -476,     61,    434 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_BG_SPOT02_OBJECTS, {    762,    180,     80 }, {      0, 0XC000,      0 }, 0x0002 },
    { ACTOR_BG_SPOT02_OBJECTS, {   -578,    120,   -336 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_OBJ_BEAN,          {   -745,    120,   -450 }, {      0,      0,      0 }, 0x1F01 },
    { ACTOR_OBJECT_KANKYO,     {    854,    321,     94 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_OBJECT_KANKYO,     {    851,    180,     49 }, {      0,      0,      0 }, 0x0004 },
    { ACTOR_BG_SPOT01_FUSYA,   {  -3200,    880,    150 }, {      0, 0XC000,      0 }, 0xFFFF },
};

u8 spot02_room_1_possiblePadding_0014A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot02_room_1Vtx_0014B0[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_0014B0.vtx.inc"
};

Gfx spot02_room_1DL_001F20[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_0014B0[159], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot02_room_1Tex_014508, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot02_room_1TLUT_008EE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_0014B0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(spot02_room_1Tex_013508, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 225, 195, 205, 255),
    gsSPVertex(&spot02_room_1Vtx_0014B0[4], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot02_room_1Vtx_0014B0[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_014D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&spot02_room_1Vtx_0014B0[24], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot02_room_1Vtx_0014B0[28], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012508, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[40], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_014D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[44], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012508, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[48], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_014D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[56], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012508, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[60], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[68], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012508, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[72], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[76], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012508, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[80], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[84], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012508, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[100], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[104], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012508, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[108], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[112], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012508, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[116], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(spot02_room_1Tex_014508, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot02_room_1TLUT_008EE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot02_room_1Vtx_0014B0[120], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(spot02_room_1Tex_012508, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot02_room_1Vtx_0014B0[131], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_012D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0014B0[147], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_0027E8[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_0027E8.vtx.inc"
};

Gfx spot02_room_1DL_003068[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_0027E8[128], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_008F08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_0027E8, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_010D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0027E8[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_008F08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot02_room_1Vtx_0027E8[16], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_010D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot02_room_1Vtx_0027E8[28], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 0, 0, 0, 255),
    gsSPVertex(&spot02_room_1Vtx_0027E8[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_010D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&spot02_room_1Vtx_0027E8[36], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_008F08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0027E8[40], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_010D08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0027E8[44], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_00E108, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 210, 210, 180, 255),
    gsSPVertex(&spot02_room_1Vtx_0027E8[48], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP1Triangle(8, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_010B08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&spot02_room_1Vtx_0027E8[61], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_00F308, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0027E8[68], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(1, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_010B08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0027E8[73], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 7, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 6, 19, 4, 0),
    gsSP2Triangles(6, 20, 19, 0, 8, 20, 6, 0),
    gsSP2Triangles(10, 21, 8, 0, 21, 20, 8, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_00EB08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 235, 225, 195, 255),
    gsSPVertex(&spot02_room_1Vtx_0027E8[99], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_010308, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&spot02_room_1Vtx_0027E8[103], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(3, 2, 11, 0, 3, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 18, 16, 0, 12, 19, 18, 0),
    gsSP1Triangle(12, 14, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_009708, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0027E8[123], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_003680[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_003680.vtx.inc"
};

Gfx spot02_room_1DL_003BC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_003680[76], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_016D88, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(spot02_room_1Tex_00E308, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_003680, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 16, 19, 0, 18, 17, 16, 0),
    gsSP2Triangles(20, 7, 4, 0, 20, 4, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(24, 26, 18, 0, 24, 18, 25, 0),
    gsSP2Triangles(19, 25, 18, 0, 27, 22, 25, 0),
    gsSP2Triangles(27, 25, 19, 0, 22, 28, 29, 0),
    gsSP2Triangles(22, 29, 23, 0, 28, 30, 31, 0),
    gsSP1Triangle(28, 31, 29, 0),
    gsSPVertex(&spot02_room_1Vtx_003680[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 10, 0),
    gsSP2Triangles(10, 8, 7, 0, 11, 10, 9, 0),
    gsSP2Triangles(12, 10, 11, 0, 12, 11, 6, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 15, 0, 18, 16, 15, 0),
    gsSP2Triangles(17, 19, 18, 0, 20, 19, 17, 0),
    gsSP2Triangles(19, 20, 14, 0, 14, 13, 19, 0),
    gsSP2Triangles(21, 12, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(25, 24, 26, 0, 25, 26, 27, 0),
    gsSP2Triangles(12, 21, 27, 0, 12, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&spot02_room_1Vtx_003680[64], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_003DA0[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_003DA0.vtx.inc"
};

Gfx spot02_room_1DL_003F20[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_003DA0[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_011508, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 221, 194, 153, 255),
    gsSPVertex(spot02_room_1Vtx_003DA0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_003FF0[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_003FF0.vtx.inc"
};

Gfx spot02_room_1DL_0040F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_003FF0[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_sceneTex_008680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 252, 235, 235, 255),
    gsSPVertex(spot02_room_1Vtx_003FF0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot02_room_1Vtx_003FF0[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_0041C8[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_0041C8.vtx.inc"
};

Gfx spot02_room_1DL_0042A8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_0041C8[6], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_00E108, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_DECAL2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 210, 210, 180, 255),
    gsSPVertex(spot02_room_1Vtx_0041C8, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_004368[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_004368.vtx.inc"
};

Gfx spot02_room_1DL_0044A8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_016D88, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_004368, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_018988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_004368[4], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_0045A0[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_0045A0.vtx.inc"
};

Gfx spot02_room_1DL_0046A0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_018988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_0045A0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_004748[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_004748.vtx.inc"
};

Gfx spot02_room_1DL_004768[] = {
    gsSPVertex(spot02_room_1Vtx_004748, 1, 0),
    gsSPBranchLessZraw(spot02_room_1DL_0044A8, 0, 0x00000118),
    gsSPVertex(&spot02_room_1Vtx_004748[1], 1, 0),
    gsSPBranchLessZraw(spot02_room_1DL_0046A0, 0, 0x17D78400),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_0047A0[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_0047A0.vtx.inc"
};

Gfx spot02_room_1DL_0048E0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_016D88, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_0047A0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_018988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_0047A0[4], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_0049D8[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_0049D8.vtx.inc"
};

Gfx spot02_room_1DL_004AD8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_018988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_0049D8, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_004B80[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_004B80.vtx.inc"
};

Gfx spot02_room_1DL_004BA0[] = {
    gsSPVertex(spot02_room_1Vtx_004B80, 1, 0),
    gsSPBranchLessZraw(spot02_room_1DL_0048E0, 0, 0x00000118),
    gsSPVertex(&spot02_room_1Vtx_004B80[1], 1, 0),
    gsSPBranchLessZraw(spot02_room_1DL_004AD8, 0, 0x17D78400),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_004BD8[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_004BD8.vtx.inc"
};

Gfx spot02_room_1DL_004D18[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_016D88, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_004BD8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_018988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_004BD8[4], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_004E10[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_004E10.vtx.inc"
};

Gfx spot02_room_1DL_004F10[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_018988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_004E10, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_004FB8[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_004FB8.vtx.inc"
};

Gfx spot02_room_1DL_004FD8[] = {
    gsSPVertex(spot02_room_1Vtx_004FB8, 1, 0),
    gsSPBranchLessZraw(spot02_room_1DL_004D18, 0, 0x00000118),
    gsSPVertex(&spot02_room_1Vtx_004FB8[1], 1, 0),
    gsSPBranchLessZraw(spot02_room_1DL_004F10, 0, 0x17D78400),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_005010[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_005010.vtx.inc"
};

Gfx spot02_room_1DL_005250[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_005010[28], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot02_room_1DL_004768),
    gsSPDisplayList(spot02_room_1DL_004BA0),
    gsSPDisplayList(spot02_room_1DL_004FD8),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_016D88, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_005010, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_018988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_005010[4], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_00DD08, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_OVL_SURF2),
    gsDPSetPrimColor(0, 0, 221, 194, 153, 255),
    gsSPVertex(&spot02_room_1Vtx_005010[20], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(3, 2, 7, 0, 3, 7, 6, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_005410[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_005410.vtx.inc"
};

Gfx spot02_room_1DL_005730[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_005410[42], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_015D08, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 215, 204, 120, 255),
    gsSPVertex(spot02_room_1Vtx_005410, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 9, 12, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 22, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 29, 30, 0),
    gsSPVertex(&spot02_room_1Vtx_005410[31], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_005828[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_005828.vtx.inc"
};

Gfx spot02_room_1DL_005A68[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_005828[28], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_00CD08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 230, 250, 150, 255),
    gsSPVertex(spot02_room_1Vtx_005828, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(2, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 7, 9, 0),
    gsSP2Triangles(11, 9, 12, 0, 9, 13, 14, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 15, 17, 0, 15, 18, 19, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 18, 21, 0),
    gsSP2Triangles(4, 3, 23, 0, 3, 24, 23, 0),
    gsSP1Triangle(25, 26, 27, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_005B60[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_005B60.vtx.inc"
};

Gfx spot02_room_1DL_0065B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_005B60[157], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_018988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_005B60, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 9, 11, 0),
    gsSP1Triangle(10, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_017588, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_005B60[13], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_018988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_005B60[19], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 4, 2, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_017588, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_005B60[26], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_018988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_005B60[34], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_017588, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_005B60[42], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_018988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_005B60[46], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_017588, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_005B60[54], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(16, 17, 15, 0, 16, 15, 14, 0),
    gsSP2Triangles(18, 19, 17, 0, 18, 17, 16, 0),
    gsSP2Triangles(20, 21, 19, 0, 20, 19, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_018988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_005B60[76], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 10, 0),
    gsSP2Triangles(11, 12, 10, 0, 11, 10, 13, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 16, 0),
    gsSP2Triangles(17, 18, 14, 0, 17, 14, 16, 0),
    gsSP2Triangles(19, 18, 17, 0, 19, 17, 20, 0),
    gsSP2Triangles(21, 22, 20, 0, 21, 20, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 24, 27, 0, 28, 27, 29, 0),
    gsSPVertex(&spot02_room_1Vtx_005B60[106], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_017588, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_005B60[110], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_018988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_005B60[124], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_017588, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_005B60[134], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_018988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_005B60[144], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 5, 3, 0),
    gsSP2Triangles(0, 6, 1, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 5, 4, 0, 9, 10, 6, 0),
    gsSP2Triangles(9, 6, 0, 0, 3, 5, 11, 0),
    gsSP1Triangle(3, 11, 12, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_006B48[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_006B48.vtx.inc"
};

Gfx spot02_room_1DL_006C48[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_006B48[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot02_room_1Tex_00C508, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot02_room_1TLUT_008EB8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_006B48, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_006D38[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_006D38.vtx.inc"
};

Gfx spot02_room_1DL_006F78[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_006D38[28], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_00B108, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 215, 220, 210, 255),
    gsSPVertex(spot02_room_1Vtx_006D38, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_00C108, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_006D38[6], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_0070A8[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_0070A8.vtx.inc"
};

Gfx spot02_room_1DL_0071A8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_0070A8[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot02_room_1Tex_016D08, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 190, 190, 155, 255),
    gsSPVertex(spot02_room_1Vtx_0070A8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_007270[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_007270.vtx.inc"
};

Gfx spot02_room_1DL_007460[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_007270[23], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_00C108, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 215, 220, 210, 255),
    gsSPVertex(spot02_room_1Vtx_007270, 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 12, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_00A908, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_007270[19], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_007580[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_007580.vtx.inc"
};

Gfx spot02_room_1DL_007770[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_007580[23], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_00C108, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 215, 220, 210, 255),
    gsSPVertex(spot02_room_1Vtx_007580, 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 12, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_009908, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_007580[19], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_007890[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_007890.vtx.inc"
};

Gfx spot02_room_1DL_007990[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_007890[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_017988, G_IM_FMT_IA, G_IM_SIZ_8b, 128, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 248, 238, 205, 255),
    gsSPVertex(spot02_room_1Vtx_007890, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 0, 0, 6, 0, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_007A58[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_007A58.vtx.inc"
};

Gfx spot02_room_1DL_0082C8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_sceneTex_007E80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(spot02_sceneTex_007280, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_007A58, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 16, 19, 0, 24, 19, 25, 0),
    gsSP2Triangles(26, 27, 20, 0, 26, 20, 23, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&spot02_room_1Vtx_007A58[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_sceneTex_00B080, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&spot02_room_1Vtx_007A58[36], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 3, 2, 0, 6, 4, 3, 0),
    gsSP2Triangles(3, 7, 6, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 10, 3, 0, 12, 3, 13, 0),
    gsSP2Triangles(1, 14, 3, 0, 13, 3, 14, 0),
    gsSP2Triangles(12, 15, 3, 0, 15, 11, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_sceneTex_00B880, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_007A58[52], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_sceneTex_00AA80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_007A58[58], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_sceneTex_00A280, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_007A58[70], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_sceneTex_00B080, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_007A58[76], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot02_sceneTex_00AE80, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&spot02_room_1Vtx_007A58[86], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_sceneTex_008E80, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_007A58[92], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot02_sceneTex_00AE80, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_007A58[104], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(5, 3, 7, 0, 5, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_sceneTex_008E80, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_007A58[113], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot02_sceneTex_00AE80, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_007A58[125], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_sceneTex_007A80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_OVL_SURF2),
    gsSPVertex(&spot02_room_1Vtx_007A58[131], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_008818[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_008818.vtx.inc"
};

Gfx spot02_room_1DL_008AE8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot02_sceneTex_00AE80, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_008818, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_sceneTex_008E80, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_008818[6], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot02_sceneTex_00AE80, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_008818[18], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 8, 4, 0, 7, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_sceneTex_008E80, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_008818[27], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot02_sceneTex_00AE80, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_008818[39], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_008D10[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_008D10.vtx.inc"
};

Gfx spot02_room_1DL_008D30[] = {
    gsSPVertex(spot02_room_1Vtx_008D10, 1, 0),
    gsSPBranchLessZraw(spot02_room_1DL_0082C8, 0, 0x00000500),
    gsSPVertex(&spot02_room_1Vtx_008D10[1], 1, 0),
    gsSPBranchLessZraw(spot02_room_1DL_008AE8, 0, 0x17D78400),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_008D68[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_008D68.vtx.inc"
};

Gfx spot02_room_1DL_008DE8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(spot02_room_1Vtx_008D68, 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot02_room_1DL_008D30),
    gsSPEndDisplayList(),
};

u8 spot02_room_1_unaccounted_008E28[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1F, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x30, 0x68, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3B, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3F, 0x20, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x40, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x42, 0xA8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x52, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x57, 0x30, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5A, 0x68, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x65, 0xB0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x6C, 0x48, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x6F, 0x78, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x71, 0xA8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x74, 0x60, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x77, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x79, 0x90, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x8D, 0xE8, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 spot02_room_1TLUT_008EB8[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1TLUT_008EB8.rgba16.inc.c"
};

u8 spot02_room_1_possiblePadding_008ED8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 spot02_room_1TLUT_008EE0[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1TLUT_008EE0.rgba16.inc.c"
};

u8 spot02_room_1_possiblePadding_008F00[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 spot02_room_1Tex_008F08[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_008F08.rgba16.inc.c"
};

u64 spot02_room_1Tex_009708[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_009708.rgba16.inc.c"
};

u64 spot02_room_1Tex_009908[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_009908.rgba16.inc.c"
};

u64 spot02_room_1Tex_00A908[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_00A908.rgba16.inc.c"
};

u64 spot02_room_1Tex_00B108[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_00B108.rgba16.inc.c"
};

u64 spot02_room_1Tex_00C108[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_00C108.rgba16.inc.c"
};

u64 spot02_room_1Tex_00C508[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_00C508.ci4.inc.c"
};

u64 spot02_room_1Tex_00CD08[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_00CD08.rgba16.inc.c"
};

u64 spot02_room_1Tex_00DD08[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_00DD08.ia8.inc.c"
};

u64 spot02_room_1Tex_00E108[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_00E108.rgba16.inc.c"
};

u64 spot02_room_1Tex_00E308[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_00E308.rgba16.inc.c"
};

u64 spot02_room_1Tex_00EB08[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_00EB08.rgba16.inc.c"
};

u64 spot02_room_1Tex_00F308[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_00F308.rgba16.inc.c"
};

u64 spot02_room_1Tex_010308[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_010308.rgba16.inc.c"
};

u64 spot02_room_1Tex_010B08[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_010B08.rgba16.inc.c"
};

u64 spot02_room_1Tex_010D08[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_010D08.rgba16.inc.c"
};

u64 spot02_room_1Tex_011508[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_011508.ia8.inc.c"
};

u64 spot02_room_1Tex_012508[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_012508.rgba16.inc.c"
};

u64 spot02_room_1Tex_012D08[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_012D08.rgba16.inc.c"
};

u64 spot02_room_1Tex_013508[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_013508.rgba16.inc.c"
};

u64 spot02_room_1Tex_014508[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_014508.ci4.inc.c"
};

u64 spot02_room_1Tex_014D08[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_014D08.rgba16.inc.c"
};

u64 spot02_room_1Tex_015D08[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_015D08.i8.inc.c"
};

u64 spot02_room_1Tex_016D08[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_016D08.i4.inc.c"
};

u64 spot02_room_1Tex_016D88[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_016D88.rgba16.inc.c"
};

u64 spot02_room_1Tex_017588[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_017588.rgba16.inc.c"
};

u64 spot02_room_1Tex_017988[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_017988.ia8.inc.c"
};

u64 spot02_room_1Tex_018988[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_018988.rgba16.inc.c"
};

u8 spot02_room_1_possiblePadding_019988[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot02_room_1Vtx_019990[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_019990.vtx.inc"
};

Gfx spot02_room_1DL_019F60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_019990[85], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_01C790, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_OVL_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 215, 205, 165, 255),
    gsSPVertex(spot02_room_1Vtx_019990, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 17, 0, 20, 17, 16, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&spot02_room_1Vtx_019990[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 5, 4, 0, 12, 4, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(22, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&spot02_room_1Vtx_019990[61], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_01A0D8[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_01A0D8.vtx.inc"
};

Gfx spot02_room_1DL_01A358[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_01A0D8[32], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_01B690, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_OVL_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 221, 194, 153, 255),
    gsSPVertex(spot02_room_1Vtx_01A0D8, 32, 0),
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

Vtx spot02_room_1Vtx_01A448[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_01A448.vtx.inc"
};

Gfx spot02_room_1DL_01A508[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_01A448[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_01D790, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_OVL_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 221, 194, 153, 255),
    gsSPVertex(spot02_room_1Vtx_01A448, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_01A5C0[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_01A5C0.vtx.inc"
};

Gfx spot02_room_1DL_01AA80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_01A5C0[68], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_01C290, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_OVL_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 221, 194, 153, 255),
    gsSPVertex(spot02_room_1Vtx_01A5C0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_01BE90, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot02_room_1Vtx_01A5C0[4], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&spot02_room_1Vtx_01A5C0[36], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot02_room_1Tex_01C790, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 215, 205, 165, 255),
    gsSPVertex(&spot02_room_1Vtx_01A5C0[64], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_01AC58[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_01AC58.vtx.inc"
};

Gfx spot02_room_1DL_01ACD8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_01C690, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_01AC58, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 4, 0, 5, 0),
    gsSP2Triangles(6, 1, 3, 0, 6, 3, 4, 0),
    gsSP2Triangles(7, 2, 1, 0, 7, 1, 6, 0),
    gsSP2Triangles(5, 0, 2, 0, 5, 2, 7, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_01AD88[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_01AD88.vtx.inc"
};

Gfx spot02_room_1DL_01AD98[] = {
    gsSPVertex(spot02_room_1Vtx_01AD88, 1, 0),
    gsSPBranchLessZraw(spot02_room_1DL_01ACD8, 0, 0x00000118),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_01ADB8[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_01ADB8.vtx.inc"
};

Gfx spot02_room_1DL_01AE38[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_01C690, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_01ADB8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 1, 0, 7, 1, 0, 0),
    gsSP2Triangles(1, 6, 4, 0, 1, 4, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_01AEE8[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_01AEE8.vtx.inc"
};

Gfx spot02_room_1DL_01AEF8[] = {
    gsSPVertex(spot02_room_1Vtx_01AEE8, 1, 0),
    gsSPBranchLessZraw(spot02_room_1DL_01AE38, 0, 0x00000118),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_01AF18[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_01AF18.vtx.inc"
};

Gfx spot02_room_1DL_01AF98[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_01C690, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_01AF18, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 1, 0, 7, 1, 0, 0),
    gsSP2Triangles(1, 6, 4, 0, 1, 4, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_01B048[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_01B048.vtx.inc"
};

Gfx spot02_room_1DL_01B058[] = {
    gsSPVertex(spot02_room_1Vtx_01B048, 1, 0),
    gsSPBranchLessZraw(spot02_room_1DL_01AF98, 0, 0x00000118),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_01B078[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_01B078.vtx.inc"
};

Gfx spot02_room_1DL_01B178[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot02_room_1Vtx_01B078[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot02_room_1DL_01AD98),
    gsSPDisplayList(spot02_room_1DL_01AEF8),
    gsSPDisplayList(spot02_room_1DL_01B058),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot02_room_1Tex_01C690, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_01B078, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 1, 0, 7, 1, 0, 0),
    gsSP2Triangles(1, 6, 4, 0, 1, 4, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_01B270[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_01B270.vtx.inc"
};

Gfx spot02_room_1DL_01B4A0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot02_sceneTex_009E80, G_IM_FMT_IA, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_OVL_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot02_room_1Vtx_01B270, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(30, 31, 11, 0),
    gsSPVertex(&spot02_room_1Vtx_01B270[32], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_01B568[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_01B568.vtx.inc"
};

Gfx spot02_room_1DL_01B578[] = {
    gsSPVertex(spot02_room_1Vtx_01B568, 1, 0),
    gsSPBranchLessZraw(spot02_room_1DL_01B4A0, 0, 0x00000500),
    gsSPEndDisplayList(),
};

Vtx spot02_room_1Vtx_01B598[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Vtx_01B598.vtx.inc"
};

Gfx spot02_room_1DL_01B618[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(spot02_room_1Vtx_01B598, 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot02_room_1DL_01B578),
    gsSPEndDisplayList(),
};

u8 spot02_room_1_unaccounted_01B658[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0x9F, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0xA3, 0x58, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0xA5, 0x08, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0xAA, 0x80, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0xB1, 0x78, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x01, 0xB6, 0x18, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 spot02_room_1Tex_01B690[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_01B690.ia8.inc.c"
};

u64 spot02_room_1Tex_01BE90[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_01BE90.ia8.inc.c"
};

u64 spot02_room_1Tex_01C290[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_01C290.ia8.inc.c"
};

u64 spot02_room_1Tex_01C690[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_01C690.ia8.inc.c"
};

u64 spot02_room_1Tex_01C790[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_01C790.ia8.inc.c"
};

u64 spot02_room_1Tex_01D790[] = {
#include "assets/scenes/overworld/spot02/spot02_room_1Tex_01D790.ia8.inc.c"
};

