#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "spot09_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "spot09_scene.h"

SceneCmd spot09_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(spot09_room_0AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 10),
    SCENE_CMD_MESH(&spot09_room_0PolygonType2_0002F0),
    SCENE_CMD_OBJECT_LIST(14, spot09_room_0ObjectList_000060),
    SCENE_CMD_ACTOR_LIST(40, spot09_room_0ActorList_00007C),
    SCENE_CMD_END(),
};

SceneCmd* spot09_room_0AlternateHeaders0x000048[] = {
    NULL,
    spot09_room_0Set_000500,
    NULL,
    spot09_room_0Set_000890,
    spot09_room_0Set_000960,
    spot09_room_0Set_000A80,
};

s16 spot09_room_0ObjectList_000060[] = {
    OBJECT_SPOT09_OBJ,
    OBJECT_NIW,
    OBJECT_GE1,
    OBJECT_UMAJUMP,
    OBJECT_MAMENOKI,
    OBJECT_SYOKUDAI,
    OBJECT_KIBAKO2,
    OBJECT_GLA,
    OBJECT_KANBAN,
    OBJECT_GS,
    OBJECT_ST,
    OBJECT_BOMBIWA,
    OBJECT_COW,
    OBJECT_HORSE_NORMAL,
};

ActorEntry spot09_room_0ActorList_00007C[] = {
    { ACTOR_EN_RIVER_SOUND,  {    138,  -2528,  -2396 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_RIVER_SOUND,  {    527,  -3123,   3582 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_RIVER_SOUND,  {   1687,   -138,   -220 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_SPOT09_OBJ,   {  -1105,     15,   -747 }, {      0,  0XCCD,      0 }, 0x0003 },
    { ACTOR_BG_SPOT09_OBJ,   {      0,      0,      0 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_BG_SPOT09_OBJ,   {      0,      0,      0 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_SPOT09_OBJ,   {      0,      0,      0 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_SPOT09_OBJ,   {      0,      0,      0 }, {      0,      0,      0 }, 0x0004 },
    { ACTOR_EN_GS,           {   -510,  -2025,  -2340 }, {      0,      0,      0 }, 0x3811 },
    { ACTOR_EN_ITEM00,       {     35,  -1630,  -2780 }, {      0,      0,      0 }, 0x0106 },
    { ACTOR_EN_ITEM00,       {   -350,   -555,   1480 }, {      0,      0,      0 }, 0x0206 },
    { ACTOR_DOOR_ANA,        {    280,   -555,   1470 }, {      0, 0X8000,    0X6 }, 0x00F2 },
    { ACTOR_EN_A_OBJ,        {   2778,   -264,    593 }, {      0, 0XCC17,      0 }, 0x010A },
    { ACTOR_EN_COW,          {   -449,  -2051,     28 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_OBJ_MURE,        {   1658,   -179,   -118 }, {      0,      0,      0 }, 0x5322 },
    { ACTOR_EN_GE1,          {   -308,    -77,   -122 }, {      0, 0X4222,      0 }, 0x0000 },
    { ACTOR_EN_SW,           {   1707,     95,   -227 }, { 0X47D2, 0XE71C,      0 }, 0xB402 },
    { ACTOR_OBJ_MAKEKINSUTA, {   -515,  -2051,    110 }, {      0,      0,      0 }, 0x5401 },
    { ACTOR_EN_ISHI,         {    280,   -555,   1470 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_NIW,          {    733,     34,    -36 }, {      0,      0,      0 }, 0x0008 },
    { ACTOR_EN_GE2,          {   -581,     31,   -331 }, {      0, 0X8000,      0 }, 0x0500 },
    { ACTOR_EN_GE2,          {   -540,     27,     98 }, {      0,      0,      0 }, 0x0500 },
    { ACTOR_OBJ_SYOKUDAI,    {   -588,     29,    220 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_EN_ISHI,         {   2738,   -235,    297 }, {      0,      0,      0 }, 0x0200 },
    { ACTOR_EN_ISHI,         {   2715,   -235,    316 }, {      0,      0,      0 }, 0x0200 },
    { ACTOR_EN_ISHI,         {   1559,   -202,    -63 }, {      0,      0,      0 }, 0x0200 },
    { ACTOR_EN_ISHI,         {   1605,   -202,     26 }, {      0,      0,      0 }, 0x0200 },
    { ACTOR_EN_ISHI,         {   1686,   -202,    -33 }, {      0,      0,      0 }, 0x0200 },
    { ACTOR_EN_ISHI,         {   2699,   -226,    275 }, {      0,      0,      0 }, 0x0210 },
    { ACTOR_EN_KANBAN,       {    359,     25,    254 }, {      0, 0X4000,      0 }, 0x0342 },
    { ACTOR_EN_GE1,          {   -503,  -2051,     34 }, {      0, 0X6D83,      0 }, 0x0005 },
    { ACTOR_OBJ_BEAN,        {   -515,  -2051,    110 }, {      0,      0,      0 }, 0x1F03 },
    { ACTOR_BG_UMAJUMP,      {   -391,    -70,    -98 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_OBJ_KIBAKO2,     {   -860,     20,    -90 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {   -860,     68,   -125 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {   -860,     20,   -150 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {   -764,     34,    148 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {   -449,  -2051,    123 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {   -350,   -555,   1480 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_HORSE_NORMAL,     {   1257,     42,   -456 }, {      0,      0,      0 }, 0xFFFF },
};

u8 spot09_room_0_possiblePadding_0002EC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 spot09_room_0PolygonType2_0002F0 = { 
    2, 32,
    spot09_room_0PolygonDlist2_0002FC,
    spot09_room_0PolygonDlist2_0002FC + ARRAY_COUNTU(spot09_room_0PolygonDlist2_0002FC)
};

PolygonDlist2 spot09_room_0PolygonDlist2_0002FC[32] = {
    { {   1693,    136,   -256 },    248, NULL, spot09_room_0DL_0084C0 },
    { {  -1683,    375,    274 },    548, spot09_room_0DL_002158, NULL },
    { {  -2610,    910,   -336 },   1091, spot09_room_0DL_002698, NULL },
    { {   1716,   -166,   -206 },    150, NULL, spot09_room_0DL_008108 },
    { {    838,     47,    -72 },    971, spot09_room_0DL_002A70, NULL },
    { {  -3717,    390,   -741 },   1722, spot09_room_0DL_002DA8, NULL },
    { {   1995,    -96,     29 },    817, spot09_room_0DL_0030D0, NULL },
    { {   -497,  -2072,  -1174 },   1528, spot09_room_0DL_001550, NULL },
    { {   2945,   -301,   1139 },    892, spot09_room_0DL_003308, NULL },
    { {  -1371,     37,   -146 },   1348, spot09_room_0DL_003630, NULL },
    { {     36,  -1930,  -2691 },    315, spot09_room_0DL_0017A0, NULL },
    { {     32,  -1570,  -2765 },    110, spot09_room_0DL_001A40, NULL },
    { {   1673,    -40,      0 },    459, spot09_room_0DL_006F88, NULL },
    { {    -27,   -715,   1109 },    653, spot09_room_0DL_001E98, NULL },
    { {    889,  -2400,   -337 },   4916, spot09_room_0DL_001330, NULL },
    { {    151,  -2115,   -428 },   2745, NULL, spot09_room_0DL_007FF8 },
    { {   1701,   -166,    -23 },    446, NULL, spot09_room_0DL_008318 },
    { {    592,   -160,  -3669 },   1875, spot09_room_0DL_005C68, NULL },
    { {    365,  -1300,   2579 },   2337, spot09_room_0DL_005E80, NULL },
    { {   1182,  -1254,   3206 },   3199, spot09_room_0DL_0060C8, NULL },
    { {    386,   -257,   -544 },   2318, spot09_room_0DL_006360, NULL },
    { {    506,  -1862,   -450 },   2457, spot09_room_0DL_0065C0, NULL },
    { {   -461,   -160,   -348 },   2538, spot09_room_0DL_006888, NULL },
    { {    -17,  -1920,   -348 },   2550, spot09_room_0DL_006C40, NULL },
    { {    889,  -2172,   -337 },   4857, NULL, spot09_room_0DL_007530 },
    { {   1711,    -39,   -238 },    133, NULL, spot09_room_0DL_008698 },
    { {   2128,    457,   -995 },   3288, spot09_room_0DL_003C98, NULL },
    { {   1723,    393,   1613 },   1756, spot09_room_0DL_004540, NULL },
    { {  -1595,    983,  -2529 },   2477, spot09_room_0DL_004C00, NULL },
    { {  -1504,    449,   1033 },   1509, spot09_room_0DL_005128, NULL },
    { {  -3912,    852,  -1069 },   1459, spot09_room_0DL_005598, NULL },
    { {  -3400,    618,   -490 },   1447, spot09_room_0DL_005A08, NULL },
};

s32 spot09_room_0_terminatorMaybe_0004FC = { 0x01000000 };

SceneCmd spot09_room_0Set_000500[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 10),
    SCENE_CMD_MESH(&spot09_room_0PolygonType2_0002F0),
    SCENE_CMD_OBJECT_LIST(13, spot09_room_0ObjectList_000540),
    SCENE_CMD_ACTOR_LIST(52, spot09_room_0ActorList_000558),
    SCENE_CMD_END(),
};

s16 spot09_room_0ObjectList_000540[] = {
    OBJECT_SPOT09_OBJ,
    OBJECT_MAMENOKI,
    OBJECT_TORYO,
    OBJECT_HORSE,
    OBJECT_GOROIWA,
    OBJECT_OKUTA,
    OBJECT_KANBAN,
    OBJECT_GS,
    OBJECT_ST,
    OBJECT_BOMBIWA,
    OBJECT_BOX,
    OBJECT_KIBAKO2,
    OBJECT_HORSE_NORMAL,
};

ActorEntry spot09_room_0ActorList_000558[] = {
    { ACTOR_EN_RIVER_SOUND, {    138,  -2528,  -2396 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_RIVER_SOUND, {    527,  -3123,   3582 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_RIVER_SOUND, {   1687,   -138,   -220 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_OKUTA,       {   -169,  -2800,    797 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_EN_OKUTA,       {    -70,  -2200,  -1436 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_EN_OKUTA,       {    -59,  -2800,   1603 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_EN_OKUTA,       {    -48,  -2200,   -498 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_EN_OKUTA,       {    -37,  -2200,  -1072 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_BG_SPOT09_OBJ,  {  -1105,     15,   -747 }, {      0,  0XCCD,      0 }, 0x0003 },
    { ACTOR_BG_SPOT09_OBJ,  {      0,      0,      0 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_BG_SPOT09_OBJ,  {      0,      0,      0 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_SPOT09_OBJ,  {      0,      0,      0 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_SPOT09_OBJ,  {      0,      0,      0 }, {      0,      0,      0 }, 0x0004 },
    { ACTOR_EN_ITEM00,      {     35,  -1630,  -2780 }, {      0,      0,      0 }, 0x0106 },
    { ACTOR_EN_ITEM00,      {   -350,   -555,   1480 }, {      0,      0,      0 }, 0x0206 },
    { ACTOR_OBJ_HAMISHI,    {  -1352,     69,    767 }, {      0,      0,      0 }, 0x000B },
    { ACTOR_OBJ_HAMISHI,    {    861,     81,   -778 }, {      0,      0,      0 }, 0x0004 },
    { ACTOR_OBJ_HAMISHI,    {    735,      5,    375 }, {      0,      0,      0 }, 0x0005 },
    { ACTOR_OBJ_HAMISHI,    {  -1695,     70,   -350 }, {      0,      0,      0 }, 0x0006 },
    { ACTOR_OBJ_HAMISHI,    {  -1001,     52,    637 }, {      0,      0,      0 }, 0x0007 },
    { ACTOR_OBJ_HAMISHI,    {  -1291,     65,    787 }, {      0,      0,      0 }, 0x0009 },
    { ACTOR_OBJ_HAMISHI,    {  -1416,     59,    778 }, {      0,      0,      0 }, 0x000D },
    { ACTOR_OBJ_HAMISHI,    {  -1256,     55,    856 }, {      0,      0,      0 }, 0x0010 },
    { ACTOR_DOOR_ANA,       {    280,   -555,   1470 }, {      0, 0X8000,    0X6 }, 0x00F2 },
    { ACTOR_DOOR_ANA,       {  -1323,     15,   -969 }, {      0, 0X9555,    0XA }, 0x01F0 },
    { ACTOR_EN_ISHI,        {    280,   -555,   1470 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_TORYO,       {   -855,     15,   -391 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_BOMBIWA,    {    545,     27,   -510 }, {      0,      0,      0 }, 0x000A },
    { ACTOR_OBJ_BOMBIWA,    {   -954,     35,    577 }, {      0,      0,      0 }, 0x000C },
    { ACTOR_OBJ_BOMBIWA,    {    751,    -20,    569 }, {      0,      0,      0 }, 0x000F },
    { ACTOR_OBJ_KIBAKO2,    {   -350,   -555,   1480 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_BEAN,       {   -515,  -2051,    110 }, {      0, 0XC000,    0X2 }, 0x0103 },
    { ACTOR_EN_GOROIWA,     {    314,  -1015,  -2804 }, {      0,      0,    0X1 }, 0x0C02 },
    { ACTOR_EN_ISHI,        {   1559,   -202,    -63 }, {      0,      0,      0 }, 0x0700 },
    { ACTOR_EN_ISHI,        {   1605,   -202,     26 }, {      0,      0,      0 }, 0x0700 },
    { ACTOR_EN_ISHI,        {   1686,   -202,    -33 }, {      0,      0,      0 }, 0x0700 },
    { ACTOR_EN_ISHI,        {   -666,     12,   -899 }, {      0,      0,      0 }, 0x0700 },
    { ACTOR_EN_ISHI,        {   -526,     10,   -890 }, {      0,      0,      0 }, 0x0700 },
    { ACTOR_EN_ISHI,        {   -607,     16,   -791 }, {      0,      0,      0 }, 0x0700 },
    { ACTOR_EN_ISHI,        {   -458,     14,   -782 }, {      0,      0,      0 }, 0x0700 },
    { ACTOR_EN_WONDER_ITEM, {    -45,  -2365,   -298 }, {      0,      0,    0X1 }, 0x12BF },
    { ACTOR_EN_WONDER_ITEM, {     47,  -1794,  -2620 }, {      0,      0,    0X1 }, 0x12BF },
    { ACTOR_EN_ISHI,        {   2738,   -235,    297 }, {      0,      0,      0 }, 0x0B00 },
    { ACTOR_EN_ISHI,        {   2715,   -235,    316 }, {      0,      0,      0 }, 0x0B00 },
    { ACTOR_EN_ISHI,        {   2699,   -226,    275 }, {      0,      0,      0 }, 0x0B00 },
    { ACTOR_EN_GS,          {   -510,  -2025,  -2340 }, {      0,      0,      0 }, 0x3811 },
    { ACTOR_EN_SW,          {  -1329,    360,    309 }, { 0X31C7, 0XE4FA,      0 }, 0xB404 },
    { ACTOR_EN_SW,          {  -1171,    160,  -1225 }, { 0X4000,      0,      0 }, 0xB408 },
    { ACTOR_EN_BOX,         {  -1341,     76,    858 }, {      0, 0XE2D8,      0 }, 0x5AA0 },
    { ACTOR_EN_A_OBJ,       {   2778,   -264,    593 }, {      0, 0XCC17,      0 }, 0x010A },
    { ACTOR_EN_KANBAN,      {    359,     25,    254 }, {      0, 0X4000,      0 }, 0x0342 },
    { ACTOR_EN_HORSE_NORMAL,     {   1257,     42,   -456 }, {      0,      0,      0 }, 0xFFFF },
};

u8 spot09_room_0_possiblePadding_000888[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot09_room_0Set_000890[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot09_room_0PolygonType2_0002F0),
    SCENE_CMD_OBJECT_LIST(1, spot09_room_0ObjectList_0008D0),
    SCENE_CMD_ACTOR_LIST(8, spot09_room_0ActorList_0008D4),
    SCENE_CMD_END(),
};

s16 spot09_room_0ObjectList_0008D0[] = {
    OBJECT_SPOT09_OBJ,
};

ActorEntry spot09_room_0ActorList_0008D4[] = {
    { ACTOR_BG_SPOT09_OBJ,  {      0,      0,      0 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_SPOT09_OBJ,  {  -1219,      0,   -832 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_RIVER_SOUND, {    137,  -2790,  -2459 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_RIVER_SOUND, {    527,  -3123,   3582 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_SPOT09_OBJ,  {  -1105,     15,   -747 }, {      0,  0XCCD,      0 }, 0x0003 },
    { ACTOR_BG_SPOT09_OBJ,  {      0,      0,      0 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_SPOT09_OBJ,  {      0,      0,      0 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_BG_SPOT09_OBJ,  {      0,      0,      0 }, {      0,      0,      0 }, 0x0004 },
};

u8 spot09_room_0_possiblePadding_000954[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot09_room_0Set_000960[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot09_room_0PolygonType2_0002F0),
    SCENE_CMD_OBJECT_LIST(2, spot09_room_0ObjectList_0009A0),
    SCENE_CMD_ACTOR_LIST(13, spot09_room_0ActorList_0009A4),
    SCENE_CMD_END(),
};

s16 spot09_room_0ObjectList_0009A0[] = {
    OBJECT_SPOT09_OBJ,
    OBJECT_EFC_STAR_FIELD,
};

ActorEntry spot09_room_0ActorList_0009A4[] = {
    { ACTOR_DEMO_KANKYO,    {   7833,   2106,  -4252 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_DEMO_KANKYO,    {   7548,   2003,  -4109 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_DEMO_KANKYO,    {   7477,   2003,  -3931 }, {      0,      0,      0 }, 0x0004 },
    { ACTOR_DEMO_KANKYO,    {   7406,   1932,  -4074 }, {      0,      0,      0 }, 0x0005 },
    { ACTOR_DEMO_KANKYO,    {   7406,   1932,  -4074 }, {      0,      0,      0 }, 0x0006 },
    { ACTOR_BG_SPOT09_OBJ,  {      0,      0,      0 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_SPOT09_OBJ,  {  -1219,      0,   -832 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_RIVER_SOUND, {    137,  -2790,  -2459 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_RIVER_SOUND, {    527,  -3123,   3582 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_SPOT09_OBJ,  {  -1105,     15,   -747 }, {      0,  0XCCD,      0 }, 0x0003 },
    { ACTOR_BG_SPOT09_OBJ,  {      0,      0,      0 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_SPOT09_OBJ,  {      0,      0,      0 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_BG_SPOT09_OBJ,  {      0,      0,      0 }, {      0,      0,      0 }, 0x0004 },
};

u8 spot09_room_0_possiblePadding_000A74[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot09_room_0Set_000A80[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(4, 37, 2),
    SCENE_CMD_WIND_SETTINGS(246, 0, 0, 5),
    SCENE_CMD_MESH(&spot09_room_0PolygonType2_0002F0),
    SCENE_CMD_OBJECT_LIST(6, spot09_room_0ObjectList_000AC8),
    SCENE_CMD_ACTOR_LIST(8, spot09_room_0ActorList_000AD4),
    SCENE_CMD_END(),
};

s16 spot09_room_0ObjectList_000AC8[] = {
    OBJECT_SPOT09_OBJ,
    OBJECT_NIW,
    OBJECT_GE1,
    OBJECT_UMAJUMP,
    OBJECT_MAMENOKI,
    OBJECT_OWL,
};

ActorEntry spot09_room_0ActorList_000AD4[] = {
    { ACTOR_OBJ_BEAN,      {    270,   -555,   1460 }, {      0, 0XC000,      0 }, 0x1F03 },
    { ACTOR_BG_UMAJUMP,    {   -391,    -70,    -98 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_BG_SPOT09_OBJ, {  -1105,     15,   -747 }, {      0,  0XCCD,      0 }, 0x0003 },
    { ACTOR_BG_SPOT09_OBJ, {      0,      0,      0 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_SPOT09_OBJ, {      0,      0,      0 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_BG_SPOT09_OBJ, {      0,      0,      0 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_SPOT09_OBJ, {      0,      0,      0 }, {      0,      0,      0 }, 0x0004 },
    { ACTOR_EN_OWL,        {     14,    242,   -264 }, {      0,      0,      0 }, 0x003F },
};

u8 spot09_room_0_possiblePadding_000B54[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot09_room_0Vtx_000B60[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_000B60.vtx.inc"
};

Gfx spot09_room_0DL_0010B0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00A160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(spot09_sceneTex_00E160, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 90),
    gsSPDisplayList(0x0B000000),
    gsSPVertex(spot09_room_0Vtx_000B60, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 2, 15, 16, 0),
    gsSP2Triangles(2, 16, 3, 0, 12, 17, 13, 0),
    gsSP2Triangles(18, 19, 1, 0, 0, 18, 1, 0),
    gsSP2Triangles(15, 20, 16, 0, 18, 21, 19, 0),
    gsSP2Triangles(22, 23, 7, 0, 6, 22, 7, 0),
    gsSP2Triangles(4, 24, 25, 0, 4, 25, 5, 0),
    gsSP2Triangles(22, 26, 27, 0, 22, 27, 23, 0),
    gsSP2Triangles(24, 28, 29, 0, 24, 29, 25, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&spot09_room_0Vtx_000B60[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(7, 6, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 16, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 11, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 19, 23, 0),
    gsSP2Triangles(19, 21, 23, 0, 2, 1, 24, 0),
    gsSP2Triangles(25, 2, 26, 0, 2, 24, 26, 0),
    gsSP2Triangles(27, 26, 28, 0, 27, 25, 26, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&spot09_room_0Vtx_000B60[64], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(17, 10, 20, 0, 17, 9, 18, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_001280[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_001280.vtx.inc"
};

Gfx spot09_room_0DL_001290[] = {
    gsSPVertex(spot09_room_0Vtx_001280, 1, 0),
    gsSPBranchLessZraw(spot09_room_0DL_0010B0, 0, 0x00000E88),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_0012B0[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_0012B0.vtx.inc"
};

Gfx spot09_room_0DL_001330[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(spot09_room_0Vtx_0012B0, 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot09_room_0DL_001290),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_001370[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_001370.vtx.inc"
};

Gfx spot09_room_0DL_001400[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00C160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 200, 170, 150, 255),
    gsSPVertex(spot09_room_0Vtx_001370, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 0, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 3, 8, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_0014A0[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_0014A0.vtx.inc"
};

Gfx spot09_room_0DL_0014B0[] = {
    gsSPVertex(spot09_room_0Vtx_0014A0, 1, 0),
    gsSPBranchLessZraw(spot09_room_0DL_001400, 0, 0x00000E88),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_0014D0[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_0014D0.vtx.inc"
};

Gfx spot09_room_0DL_001550[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(spot09_room_0Vtx_0014D0, 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot09_room_0DL_0014B0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_001590[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_001590.vtx.inc"
};

Gfx spot09_room_0DL_001610[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_005C60, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot09_room_0Vtx_001590, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_006460, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_001590[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_0016F0[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_0016F0.vtx.inc"
};

Gfx spot09_room_0DL_001700[] = {
    gsSPVertex(spot09_room_0Vtx_0016F0, 1, 0),
    gsSPBranchLessZraw(spot09_room_0DL_001610, 0, 0x00000E88),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_001720[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_001720.vtx.inc"
};

Gfx spot09_room_0DL_0017A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(spot09_room_0Vtx_001720, 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot09_room_0DL_001700),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_0017E0[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_0017E0.vtx.inc"
};

Gfx spot09_room_0DL_0018E0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00C160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 200, 170, 150, 255),
    gsSPVertex(spot09_room_0Vtx_0017E0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_001990[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_001990.vtx.inc"
};

Gfx spot09_room_0DL_0019A0[] = {
    gsSPVertex(spot09_room_0Vtx_001990, 1, 0),
    gsSPBranchLessZraw(spot09_room_0DL_0018E0, 0, 0x00000E88),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_0019C0[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_0019C0.vtx.inc"
};

Gfx spot09_room_0DL_001A40[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(spot09_room_0Vtx_0019C0, 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot09_room_0DL_0019A0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_001A80[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_001A80.vtx.inc"
};

Gfx spot09_room_0DL_001C70[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_007160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 223, 200, 255),
    gsSPVertex(spot09_room_0Vtx_001A80, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(3, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_008160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(&spot09_room_0Vtx_001A80[5], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 6, 5, 0, 9, 6, 8, 0),
    gsSP2Triangles(10, 6, 11, 0, 12, 10, 9, 0),
    gsSP1Triangle(13, 10, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_007160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 223, 200, 255),
    gsSPVertex(&spot09_room_0Vtx_001A80[20], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 5, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(0, 10, 1, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_001DE8[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_001DE8.vtx.inc"
};

Gfx spot09_room_0DL_001DF8[] = {
    gsSPVertex(spot09_room_0Vtx_001DE8, 1, 0),
    gsSPBranchLessZraw(spot09_room_0DL_001C70, 0, 0x00000E88),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_001E18[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_001E18.vtx.inc"
};

Gfx spot09_room_0DL_001E98[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(spot09_room_0Vtx_001E18, 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot09_room_0DL_001DF8),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_001ED8[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_001ED8.vtx.inc"
};

Gfx spot09_room_0DL_002158[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_001ED8[32], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_001ED8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(22, 23, 24, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 23, 25, 0, 26, 25, 27, 0),
    gsSP2Triangles(28, 29, 14, 0, 30, 0, 31, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_002248[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_002248.vtx.inc"
};

Gfx spot09_room_0DL_002698[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_002248[61], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_002248, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 10, 16, 0),
    gsSP2Triangles(17, 1, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&spot09_room_0Vtx_002248[31], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 9, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 17, 0),
    gsSP1Triangle(21, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00D160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&spot09_room_0Vtx_002248[55], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_002810[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_002810.vtx.inc"
};

Gfx spot09_room_0DL_002A70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_002810[30], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_007160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 223, 200, 255),
    gsSPVertex(spot09_room_0Vtx_002810, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00A960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_002810[6], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 1, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_007160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_002810[15], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00A960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_002810[19], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(5, 8, 6, 0, 1, 7, 9, 0),
    gsSP2Triangles(1, 9, 10, 0, 1, 10, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_002C38[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_002C38.vtx.inc"
};

Gfx spot09_room_0DL_002DA8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_002C38[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_004460, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 236, 224, 255),
    gsSPVertex(spot09_room_0Vtx_002C38, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00A960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 223, 200, 255),
    gsSPVertex(&spot09_room_0Vtx_002C38[3], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 5, 0, 4, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_004460, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 236, 224, 255),
    gsSPVertex(&spot09_room_0Vtx_002C38[11], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_002F20[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_002F20.vtx.inc"
};

Gfx spot09_room_0DL_0030D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_002F20[19], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_008160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 223, 200, 255),
    gsSPVertex(spot09_room_0Vtx_002F20, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00A960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_002F20[4], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 1, 0, 0),
    gsSP2Triangles(4, 3, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 1, 0, 9, 6, 3, 0),
    gsSP2Triangles(9, 3, 10, 0, 10, 3, 11, 0),
    gsSP2Triangles(1, 8, 12, 0, 1, 12, 11, 0),
    gsSP2Triangles(1, 11, 3, 0, 6, 9, 13, 0),
    gsSP2Triangles(5, 14, 7, 0, 5, 6, 13, 0),
    gsSP1Triangle(5, 13, 14, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_003218[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_003218.vtx.inc"
};

Gfx spot09_room_0DL_003308[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_003218[7], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00A960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 223, 200, 255),
    gsSPVertex(spot09_room_0Vtx_003218, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 3, 5, 4, 0),
    gsSP1Triangle(5, 6, 4, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_0033D0[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_0033D0.vtx.inc"
};

Gfx spot09_room_0DL_003630[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_0033D0[30], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_007160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 223, 200, 255),
    gsSPVertex(spot09_room_0Vtx_0033D0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00A960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_0033D0[6], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(7, 8, 5, 0, 8, 9, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 5, 13, 14, 0),
    gsSP2Triangles(5, 14, 6, 0, 13, 0, 14, 0),
    gsSP2Triangles(0, 2, 14, 0, 15, 16, 4, 0),
    gsSP2Triangles(15, 4, 6, 0, 17, 16, 18, 0),
    gsSP2Triangles(17, 18, 19, 0, 4, 16, 20, 0),
    gsSP2Triangles(4, 20, 21, 0, 17, 19, 12, 0),
    gsSP2Triangles(17, 12, 21, 0, 19, 15, 2, 0),
    gsSP2Triangles(19, 2, 1, 0, 15, 6, 2, 0),
    gsSP2Triangles(19, 22, 12, 0, 19, 1, 23, 0),
    gsSP1Triangle(19, 23, 22, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_003798[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_003798.vtx.inc"
};

Gfx spot09_room_0DL_003C98[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_003798[72], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00D160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_003798, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP1Triangle(19, 21, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&spot09_room_0Vtx_003798[22], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_003798[26], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_003798[30], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 1, 4, 0, 1, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_003798[36], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_003798[39], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_003798[43], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 2, 5, 0, 6, 7, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_003798[51], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_003798[55], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_003798[58], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_003798[62], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_003798[66], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 1, 0, 0, 4, 1, 5, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_004110[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_004110.vtx.inc"
};

Gfx spot09_room_0DL_004540[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_004110[59], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00D160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_004110, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&spot09_room_0Vtx_004110[15], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004110[20], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(2, 5, 3, 0, 6, 7, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004110[28], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 2, 7, 0, 0),
    gsSP2Triangles(2, 8, 7, 0, 2, 9, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004110[38], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 0, 2, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004110[46], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004110[50], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004110[53], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 1, 4, 0, 1, 5, 4, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_004880[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_004880.vtx.inc"
};

Gfx spot09_room_0DL_004C00[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_004880[48], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00D160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_004880, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP1Triangle(11, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&spot09_room_0Vtx_004880[15], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004880[19], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004880[24], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 5, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004880[30], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 3, 7, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004880[38], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 3, 4, 5, 0),
    gsSP1Triangle(4, 6, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004880[45], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_004EE8[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_004EE8.vtx.inc"
};

Gfx spot09_room_0DL_005128[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_004EE8[28], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00D160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_004EE8, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&spot09_room_0Vtx_004EE8[6], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004EE8[10], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 2, 4, 0),
    gsSP1Triangle(4, 6, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004EE8[17], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004EE8[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_004EE8[25], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_005398[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_005398.vtx.inc"
};

Gfx spot09_room_0DL_005598[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_005398[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_005398, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_005398[6], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(spot09_sceneTex_005460, G_IM_FMT_CI, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot09_sceneTLUT_003440),
    gsSPVertex(&spot09_room_0Vtx_005398[9], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_005398[13], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(spot09_sceneTex_005460, G_IM_FMT_CI, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot09_sceneTLUT_003440),
    gsSPVertex(&spot09_room_0Vtx_005398[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(spot09_sceneTex_003460, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&spot09_room_0Vtx_005398[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_005878[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_005878.vtx.inc"
};

Gfx spot09_room_0DL_005A08[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_005878[17], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00D160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_005878, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 0, 2, 0, 4, 2, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_009160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&spot09_room_0Vtx_005878[6], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 6, 3, 0),
    gsSP2Triangles(6, 4, 3, 0, 7, 6, 5, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 10, 7, 0),
    gsSP1Triangle(10, 8, 7, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_005B48[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_005B48.vtx.inc"
};

Gfx spot09_room_0DL_005C68[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_005B48[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_005B48, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 7, 0, 9, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_005D30[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_005D30.vtx.inc"
};

Gfx spot09_room_0DL_005E80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_005D30[13], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_005D30, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(5, 8, 6, 0, 5, 9, 8, 0),
    gsSP2Triangles(5, 10, 9, 0, 8, 11, 6, 0),
    gsSP1Triangle(11, 12, 6, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_005F58[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_005F58.vtx.inc"
};

Gfx spot09_room_0DL_0060C8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_005F58[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_005F58, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 2, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 11, 9, 0),
    gsSP2Triangles(11, 8, 9, 0, 8, 4, 3, 0),
    gsSP2Triangles(8, 11, 4, 0, 4, 12, 2, 0),
    gsSP2Triangles(11, 13, 12, 0, 11, 12, 4, 0),
    gsSP2Triangles(11, 10, 13, 0, 10, 14, 13, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_0061B0[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_0061B0.vtx.inc"
};

Gfx spot09_room_0DL_006360[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_0061B0[19], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_008160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_0061B0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_0061B0[6], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 0, 8, 0),
    gsSP2Triangles(0, 2, 8, 0, 5, 4, 9, 0),
    gsSP2Triangles(4, 7, 9, 0, 7, 10, 9, 0),
    gsSP2Triangles(11, 7, 4, 0, 11, 12, 7, 0),
    gsSP1Triangle(0, 7, 12, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_006490[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_006490.vtx.inc"
};

Gfx spot09_room_0DL_0065C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_006490[11], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_006490, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 2, 5, 0),
    gsSP2Triangles(6, 4, 8, 0, 6, 8, 9, 0),
    gsSP1Triangle(10, 9, 8, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_006698[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_006698.vtx.inc"
};

Gfx spot09_room_0DL_006888[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_006698[23], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_008160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_006698, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_006698[6], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 10, 9, 0),
    gsSP2Triangles(8, 11, 10, 0, 11, 4, 10, 0),
    gsSP2Triangles(4, 6, 10, 0, 6, 7, 9, 0),
    gsSP2Triangles(12, 13, 0, 0, 12, 0, 2, 0),
    gsSP2Triangles(12, 2, 14, 0, 15, 8, 16, 0),
    gsSP2Triangles(11, 8, 15, 0, 8, 14, 16, 0),
    gsSP1Triangle(14, 2, 16, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_0069D0[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_0069D0.vtx.inc"
};

Gfx spot09_room_0DL_006C40[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_0069D0[31], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00F960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 255),
    gsSPVertex(spot09_room_0Vtx_0069D0, 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(7, 10, 13, 0, 7, 14, 10, 0),
    gsSP2Triangles(15, 12, 11, 0, 16, 8, 17, 0),
    gsSP2Triangles(18, 16, 19, 0, 16, 17, 19, 0),
    gsSP2Triangles(18, 19, 20, 0, 20, 19, 21, 0),
    gsSP2Triangles(22, 20, 23, 0, 20, 24, 23, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 20, 21, 0),
    gsSP2Triangles(15, 8, 26, 0, 15, 11, 8, 0),
    gsSP2Triangles(7, 26, 8, 0, 13, 26, 7, 0),
    gsSP2Triangles(8, 16, 9, 0, 22, 23, 27, 0),
    gsSP2Triangles(22, 27, 28, 0, 27, 29, 30, 0),
    gsSP2Triangles(27, 30, 28, 0, 29, 14, 7, 0),
    gsSP1Triangle(29, 7, 30, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_006D68[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_006D68.vtx.inc"
};

Gfx spot09_room_0DL_006F88[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_006D68[26], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00B960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot09_room_0Vtx_006D68, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_010960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_006D68[7], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 6, 0),
    gsSP2Triangles(6, 5, 7, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00B960, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot09_room_0Vtx_006D68[22], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gSpot09DL_007108[] = {
    gsSPDisplayList(spot09_room_0DL_001330),
    gsSPDisplayList(spot09_room_0DL_001550),
    gsSPDisplayList(spot09_room_0DL_0017A0),
    gsSPDisplayList(spot09_room_0DL_001A40),
    gsSPDisplayList(spot09_room_0DL_001E98),
    gsSPDisplayList(spot09_room_0DL_002158),
    gsSPDisplayList(spot09_room_0DL_002698),
    gsSPDisplayList(spot09_room_0DL_002A70),
    gsSPDisplayList(spot09_room_0DL_002DA8),
    gsSPDisplayList(spot09_room_0DL_0030D0),
    gsSPDisplayList(spot09_room_0DL_003308),
    gsSPDisplayList(spot09_room_0DL_003630),
    gsSPDisplayList(spot09_room_0DL_003C98),
    gsSPDisplayList(spot09_room_0DL_004540),
    gsSPDisplayList(spot09_room_0DL_004C00),
    gsSPDisplayList(spot09_room_0DL_005128),
    gsSPDisplayList(spot09_room_0DL_005598),
    gsSPDisplayList(spot09_room_0DL_005A08),
    gsSPDisplayList(spot09_room_0DL_005C68),
    gsSPDisplayList(spot09_room_0DL_005E80),
    gsSPDisplayList(spot09_room_0DL_0060C8),
    gsSPDisplayList(spot09_room_0DL_006360),
    gsSPDisplayList(spot09_room_0DL_0065C0),
    gsSPDisplayList(spot09_room_0DL_006888),
    gsSPDisplayList(spot09_room_0DL_006C40),
    gsSPDisplayList(spot09_room_0DL_006F88),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_0071E0[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_0071E0.vtx.inc"
};

Gfx spot09_room_0DL_007390[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00E160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 14),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 15, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 14),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 140),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(spot09_room_0Vtx_0071E0, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 11, 13, 0, 12, 8, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 14, 16, 0),
    gsSP2Triangles(17, 16, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 19, 22, 0),
    gsSP2Triangles(14, 24, 25, 0, 24, 26, 25, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_007480[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_007480.vtx.inc"
};

Gfx spot09_room_0DL_007490[] = {
    gsSPVertex(spot09_room_0Vtx_007480, 1, 0),
    gsSPBranchLessZraw(spot09_room_0DL_007390, 0, 0x00000E88),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_0074B0[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_0074B0.vtx.inc"
};

Gfx spot09_room_0DL_007530[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(spot09_room_0Vtx_0074B0, 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot09_room_0DL_007490),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_007570[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_007570.vtx.inc"
};

Gfx spot09_room_0DL_007B30[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot09_sceneTex_00F160, G_IM_FMT_I, 32, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 7, G_TX_NOLOD, 2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 7, 1, G_TX_NOMIRROR | G_TX_CLAMP,
                5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x01FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(spot09_room_0Vtx_007570, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 8, 0),
    gsSP2Triangles(9, 0, 3, 0, 9, 3, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00E160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot09_room_0Vtx_007570[11], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot09_sceneTex_00F160, G_IM_FMT_I, 32, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 7, G_TX_NOLOD, 2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 7, 1, G_TX_NOMIRROR | G_TX_CLAMP,
                5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x01FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       COMBINED, 0, SHADE, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&spot09_room_0Vtx_007570[15], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot09_sceneTex_00E160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot09_room_0Vtx_007570[26], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot09_sceneTex_00F160, G_IM_FMT_I, 32, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 7, G_TX_NOLOD, 2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 7, 1, G_TX_NOMIRROR | G_TX_CLAMP,
                5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x01FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       COMBINED, 0, SHADE, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&spot09_room_0Vtx_007570[30], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot09_sceneTex_00E960, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, 1, 2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, 1, G_TX_NOMIRROR | G_TX_WRAP, 6,
                2),
    gsDPSetTileSize(1, 0, 0, 0x00FC, 0x00FC),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&spot09_room_0Vtx_007570[43], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot09_room_0Vtx_007570[47], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot09_room_0Vtx_007570[55], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot09_room_0Vtx_007570[63], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot09_room_0Vtx_007570[71], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(4, 8, 5, 0, 6, 7, 9, 0),
    gsSP2Triangles(10, 8, 4, 0, 4, 11, 10, 0),
    gsSP2Triangles(9, 12, 6, 0, 6, 12, 11, 0),
    gsSP1Triangle(6, 11, 4, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot09_room_0Vtx_007570[84], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_007F48[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_007F48.vtx.inc"
};

Gfx spot09_room_0DL_007F58[] = {
    gsSPVertex(spot09_room_0Vtx_007F48, 1, 0),
    gsSPBranchLessZraw(spot09_room_0DL_007B30, 0, 0x00000E88),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_007F78[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_007F78.vtx.inc"
};

Gfx spot09_room_0DL_007FF8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(spot09_room_0Vtx_007F78, 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot09_room_0DL_007F58),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_008038[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_008038.vtx.inc"
};

Gfx spot09_room_0DL_008108[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_008038[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_006C60, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, 15, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 2, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, 15, G_TX_NOMIRROR | G_TX_WRAP,
                4, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x003C, 0x003C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(spot09_room_0Vtx_008038, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP1Triangle(2, 1, 4, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_0081E8[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_0081E8.vtx.inc"
};

Gfx spot09_room_0DL_008318[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_0081E8[11], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_00E160, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 14),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 15, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 150, 200, 185, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot09_room_0Vtx_0081E8, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 5, 0, 6, 1, 7, 0),
    gsSP2Triangles(1, 6, 8, 0, 9, 1, 10, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_008400[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_008400.vtx.inc"
};

Gfx spot09_room_0DL_0084C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_008400[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot09_sceneTex_006D60, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 218, 193, 249),
    gsSPVertex(spot09_room_0Vtx_008400, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

Vtx spot09_room_0Vtx_008578[] = {
#include "assets/scenes/overworld/spot09/spot09_room_0Vtx_008578.vtx.inc"
};

Gfx spot09_room_0DL_008698[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot09_room_0Vtx_008578[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot09_sceneTex_00F160, G_IM_FMT_I, 32, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 7, G_TX_NOLOD, 2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 7, 1, G_TX_NOMIRROR | G_TX_CLAMP,
                5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x01FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(spot09_room_0Vtx_008578, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gSpot09DL_008780[] = {
    gsSPDisplayList(spot09_room_0DL_007530),
    gsSPDisplayList(spot09_room_0DL_007FF8),
    gsSPDisplayList(spot09_room_0DL_008108),
    gsSPDisplayList(spot09_room_0DL_008318),
    gsSPDisplayList(spot09_room_0DL_0084C0),
    gsSPDisplayList(spot09_room_0DL_008698),
    gsSPEndDisplayList(),
};

