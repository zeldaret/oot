#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "spot16_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "spot16_scene.h"

SceneCmd spot16_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(spot16_room_0AlternateHeaders0x000050),
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 10),
    SCENE_CMD_WIND_SETTINGS(156, 255, 20, 130),
    SCENE_CMD_MESH(&spot16_room_0PolygonType2_0003D0),
    SCENE_CMD_OBJECT_LIST(14, spot16_room_0ObjectList_000070),
    SCENE_CMD_ACTOR_LIST(61, spot16_room_0ActorList_00008C),
    SCENE_CMD_END(),
};

SceneCmd* spot16_room_0AlternateHeaders0x000050[] = {
    NULL,
    spot16_room_0Set_000470,
    NULL,
    spot16_room_0Set_000940,
    spot16_room_0Set_0009B0,
    spot16_room_0Set_000A90,
    spot16_room_0Set_000B70,
    spot16_room_0Set_000C00,
};

s16 spot16_room_0ObjectList_000070[] = {
    OBJECT_SPOT16_OBJ,
    OBJECT_EFC_DOUGHNUT,
    OBJECT_OF1D_MAP,
    OBJECT_BOMBF,
    OBJECT_TITE,
    OBJECT_HATA,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_MAMENOKI,
    OBJECT_KANBAN,
    OBJECT_OWL,
    OBJECT_BOMBIWA,
    OBJECT_GS,
    OBJECT_ST,
    OBJECT_BOX,
};

ActorEntry spot16_room_0ActorList_00008C[] = {
    { ACTOR_EN_RIVER_SOUND,      {   -688,   1946,   -285 }, {      0,      0,      0 }, 0x0015 },
    { ACTOR_EN_ITEM00,           {   -625,   1794,    -55 }, {      0,      0,      0 }, 0x0A02 },
    { ACTOR_EN_ITEM00,           {  -1060,   1694,    -51 }, {      0,      0,      0 }, 0x0701 },
    { ACTOR_EN_OWL,              {    -42,   3347,  -4409 }, {      0,  0XAAB,      0 }, 0x023F },
    { ACTOR_EN_GS,               {     40,   2872,  -3935 }, {      0,      0,      0 }, 0x3804 },
    { ACTOR_EN_GO2,              {  -1235,   1159,    892 }, {      0,      0,      0 }, 0xFFEC },
    { ACTOR_EN_SW,               {     62,   2619,  -3983 }, { 0X4000,      0,      0 }, 0x0000 },
    { ACTOR_EN_SW,               {   -157,   2784,  -3983 }, { 0X4000,      0,      0 }, 0x0000 },
    { ACTOR_EN_SW,               {     15,   3040,  -3981 }, { 0X4000,      0,      0 }, 0x0000 },
    { ACTOR_EN_TITE,             {  -2012,    258,   1953 }, {      0, 0X1777,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {  -1996,    414,    683 }, {      0,  0XB61,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {  -1918,    357,   1085 }, {      0, 0XF333,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {  -1776,    790,    -19 }, {      0, 0XDC72,      0 }, 0xFFFF },
    { ACTOR_EN_ITEM00,           {  -1500,   1031,  -1100 }, {      0,      0,      0 }, 0x1E06 },
    { ACTOR_BG_BOMBWALL,         {  -1825,    340,   1189 }, {      0, 0XC000,      0 }, 0x8001 },
    { ACTOR_BG_BOMBWALL,         {   -540,   1448,    -81 }, {      0, 0X31C7,      0 }, 0x8002 },
    { ACTOR_BG_BOMBWALL,         {   -245,   3305,  -4480 }, {      0, 0X127D,      0 }, 0x8003 },
    { ACTOR_DOOR_ANA,            {   -688,   1946,   -285 }, {      0, 0X8000,    0XD }, 0x00F8 },
    { ACTOR_DOOR_ANA,            {   -383,   1386,  -1206 }, {      0, 0X8000,      0 }, 0x0157 },
    { ACTOR_EN_A_OBJ,            {  -1300,    120,   2155 }, {      0, 0XD8E4,      0 }, 0x050A },
    { ACTOR_EN_A_OBJ,            {   -735,   1241,    595 }, {      0, 0X199A,      0 }, 0x210A },
    { ACTOR_EN_A_OBJ,            {    -40,   3299,  -4410 }, {      0, 0X1333,      0 }, 0x230A },
    { ACTOR_EN_A_OBJ,            {  -1127,   1662,     44 }, {      0, 0X216C,      0 }, 0x2D0A },
    { ACTOR_EN_HATA,             {   -746,   1273,    515 }, {      0, 0XEAAB,      0 }, 0xFFFF },
    { ACTOR_EN_SW,               {  -1653,    478,   1194 }, { 0X4000, 0XC000,      0 }, 0x9004 },
    { ACTOR_OBJ_MAKEKINSUTA,     {  -1610,    677,   -735 }, {      0,      0,      0 }, 0x5002 },
    { ACTOR_EN_GO2,              {  -1278,   1411,   -552 }, {      0, 0X3D28,      0 }, 0x1404 },
    { ACTOR_EN_ISHI,             {  -1816,    681,   -513 }, {      0,      0,      0 }, 0x0B00 },
    { ACTOR_EN_ISHI,             {  -1831,    681,   -614 }, {      0,      0,      0 }, 0x0B00 },
    { ACTOR_EN_ISHI,             {  -1857,    681,   -536 }, {      0,      0,      0 }, 0x0B00 },
    { ACTOR_EN_ISHI,             {  -1878,    681,   -465 }, {      0,      0,      0 }, 0x0B00 },
    { ACTOR_EN_ISHI,             {  -1787,    681,   -550 }, {      0,      0,      0 }, 0x0B00 },
    { ACTOR_EN_ISHI,             {   -327,   3280,  -4286 }, {      0,      0,      0 }, 0x0210 },
    { ACTOR_OBJ_MURE2,           {   -383,   1386,  -1206 }, {      0,      0,      0 }, 0x0B02 },
    { ACTOR_EN_KANBAN,           {  -1260,   1409,    540 }, {      0,      0,      0 }, 0x0309 },
    { ACTOR_EN_KANBAN,           {  -1834,    681,   -571 }, {      0,      0,      0 }, 0x030A },
    { ACTOR_EN_KANBAN,           {   -299,   1209,  -1787 }, {      0,      0,      0 }, 0x030B },
    { ACTOR_EN_KANBAN,           {  -1300,   1413,   -496 }, {      0, 0X3B06,      0 }, 0x0322 },
    { ACTOR_SHOT_SUN,            {   -730,   1347,    464 }, {      0,      0,      0 }, 0xFF40 },
    { ACTOR_EN_ENCOUNT2,         {   -199,   2032,  -3060 }, {      0,      0,      0 }, 0x0005 },
    { ACTOR_EN_GO2,              {   -311,   1500,   -393 }, {      0, 0XECCD,      0 }, 0xFC25 },
    { ACTOR_BG_SPOT16_DOUGHNUT,  {    102,   5583,  -6518 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_BG_SPOT16_BOMBSTONE, {  -1679,    684,   -690 }, {      0,      0,      0 }, 0x04FF },
    { ACTOR_OBJ_BEAN,            {  -1610,    677,   -735 }, {      0,      0,      0 }, 0x1F06 },
    { ACTOR_EN_WONDER_TALK2,     {   -237,   3370,  -4462 }, {      0, 0X127D,   0X29 }, 0x8EC3 },
    { ACTOR_EN_GO2,              {  -1602,    702,   -475 }, {      0,      0,      0 }, 0xFFE6 },
    { ACTOR_EN_BOMBF,            {  -1397,   1408,   -646 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_BOMBIWA,         {  -1060,   1694,    -51 }, {      0,  0X93F,      0 }, 0x0007 },
    { ACTOR_OBJ_BOMBIWA,         {   -808,   1754,    -59 }, {      0, 0XBF4A,      0 }, 0x0008 },
    { ACTOR_OBJ_BOMBIWA,         {   -625,   1794,    -55 }, {      0,      0,      0 }, 0x000A },
    { ACTOR_OBJ_BOMBIWA,         {   -688,   1946,   -285 }, {      0,      0,      0 }, 0x801F },
    { ACTOR_EN_BOX,              {   -623,   1454,   -115 }, {      0, 0XB1C7,      0 }, 0x5AA1 },
    { ACTOR_EN_BOMBF,            {   -570,   1489,   -458 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {  -1886,    401,    736 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {  -1076,   1429,    409 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {  -1101,   1162,    978 }, {      0, 0XE000,      0 }, 0xFFFF },
    { ACTOR_EN_HATA,             {  -1038,   2208,   -274 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_HATA,             {   -824,   1210,   1143 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {   -266,   1500,   -420 }, {      0, 0XECCD,      0 }, 0xFFFF },
    { ACTOR_EN_GO2,              {   -462,   1485,   -477,}, {      0, 0x9002,      0,}, 0xFFEC },
    { ACTOR_EN_TITE,             {  -1928,    494,    409 }, {      0,      0,      0 }, 0xFFFF },
};

u8 spot16_room_0_possiblePadding_0003CC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 spot16_room_0PolygonType2_0003D0 = { 
    2, 9,
    spot16_room_0PolygonDlist2_0003DC,
    spot16_room_0PolygonDlist2_0003DC + ARRAY_COUNTU(spot16_room_0PolygonDlist2_0003DC)
};

PolygonDlist2 spot16_room_0PolygonDlist2_0003DC[9] = {
    { {  -1776,    712,    648 },   3621, spot16_room_0DL_002A78, spot16_room_0DL_00A5A8 },
    { {   -665,    953,    522 },   2579, spot16_room_0DL_004788, spot16_room_0DL_00A6F8 },
    { {     39,   1368,   -630 },   5694, spot16_room_0DL_005B98, NULL },
    { {   -218,   3303,  -5492 },   5809, spot16_room_0DL_009BD0, NULL },
    { {   -795,   1436,  -1611 },   1673, spot16_room_0DL_007200, spot16_room_0DL_00A8E8 },
    { {  -3739,   -342,   5258 },   2914, spot16_room_0DL_0060E0, NULL },
    { {   -256,    175,   2999 },   1111, spot16_room_0DL_00A240, spot16_room_0DL_00ABC8 },
    { {    573,    234,   3811 },   7328, spot16_room_0DL_0066D0, NULL },
    { {  -1345,   1454,   -692 },    307, spot16_room_0DL_007C78, NULL },
};

s32 spot16_room_0_terminatorMaybe_00046C = { 0x01000000 };

SceneCmd spot16_room_0Set_000470[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 10),
    SCENE_CMD_WIND_SETTINGS(156, 255, 20, 130),
    SCENE_CMD_MESH(&spot16_room_0PolygonType2_0003D0),
    SCENE_CMD_OBJECT_LIST(14, spot16_room_0ObjectList_0004B8),
    SCENE_CMD_ACTOR_LIST(61, spot16_room_0ActorList_0004D4),
    SCENE_CMD_END(),
};

s16 spot16_room_0ObjectList_0004B8[] = {
    OBJECT_SPOT16_OBJ,
    OBJECT_EFC_DOUGHNUT,
    OBJECT_OF1D_MAP,
    OBJECT_BOMBF,
    OBJECT_TITE,
    OBJECT_HATA,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_MAMENOKI,
    OBJECT_KANBAN,
    OBJECT_GOROIWA,
    OBJECT_BOMBIWA,
    OBJECT_GS,
    OBJECT_ST,
    OBJECT_BOX,
};

ActorEntry spot16_room_0ActorList_0004D4[] = {
    { ACTOR_EN_RIVER_SOUND,      {   -688,   1946,   -285 }, {      0,      0,      0 }, 0x0015 },
    { ACTOR_EN_GS,               {     40,   2872,  -3935 }, {      0,      0,      0 }, 0x3804 },
    { ACTOR_EN_SW,               {     64,   2609,  -3982 }, { 0X4000,      0,      0 }, 0x0000 },
    { ACTOR_EN_SW,               {   -176,   2753,  -3981 }, { 0X4000,      0,      0 }, 0x0000 },
    { ACTOR_EN_SW,               {    -90,   2925,  -3982 }, { 0X4000,      0,      0 }, 0x0000 },
    { ACTOR_EN_GO2,              {    820,   3090,  -3900 }, {      0, 0XA38E,      0 }, 0xFFE2 },
    { ACTOR_EN_TITE,             {  -1993,    368,   1012 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {  -1798,    245,   1922 }, {      0,  0XCCD,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {     52,   2874,  -3919 }, {      0, 0XC000,      0 }, 0xFFFF },
    { ACTOR_EN_ITEM00,           {  -1500,   1031,  -1100 }, {      0,      0,      0 }, 0x1E06 },
    { ACTOR_OBJ_HAMISHI,         {  -1175,   1417,   -803 }, {      0,      0,      0 }, 0x0009 },
    { ACTOR_OBJ_HAMISHI,         {  -1948,    282,   1706 }, {      0,      0,      0 }, 0x0014 },
    { ACTOR_OBJ_HAMISHI,         {  -2019,    336,   1101 }, {      0,      0,      0 }, 0x0015 },
    { ACTOR_OBJ_HAMISHI,         {  -1658,    710,    -88 }, {      0,      0,      0 }, 0x0016 },
    { ACTOR_OBJ_HAMISHI,         {  -1753,    913,    445 }, {      0,      0,      0 }, 0x0017 },
    { ACTOR_OBJ_HAMISHI,         {  -1018,   1089,   1283 }, {      0,      0,      0 }, 0x0018 },
    { ACTOR_OBJ_HAMISHI,         {  -1986,    392,    727 }, {      0,      0,      0 }, 0x0019 },
    { ACTOR_OBJ_HAMISHI,         {    -23,   2082,  -3196 }, {      0,      0,      0 }, 0x001A },
    { ACTOR_OBJ_HAMISHI,         {   -343,   1926,  -2794 }, {      0,      0,      0 }, 0x001B },
    { ACTOR_OBJ_HAMISHI,         {   -154,   1827,  -2484 }, {      0,      0,      0 }, 0x001C },
    { ACTOR_OBJ_HAMISHI,         {  -1590,    693,   -402 }, {      0,      0,      0 }, 0x001D },
    { ACTOR_BG_BOMBWALL,         {  -1825,    340,   1189 }, {      0, 0XC000,      0 }, 0x8001 },
    { ACTOR_BG_BOMBWALL,         {   -540,   1448,    -81 }, {      0, 0X31C7,      0 }, 0x8002 },
    { ACTOR_BG_BOMBWALL,         {   -245,   3305,  -4480 }, {      0, 0X127D,      0 }, 0x8003 },
    { ACTOR_DOOR_ANA,            {   -688,   1946,   -285 }, {      0, 0X8000,    0XD }, 0x00F8 },
    { ACTOR_DOOR_ANA,            {   -383,   1386,  -1206 }, {      0, 0X8000,      0 }, 0x0157 },
    { ACTOR_EN_A_OBJ,            {  -1300,    120,   2155 }, {      0, 0XD8E4,      0 }, 0x050A },
    { ACTOR_EN_A_OBJ,            {   -735,   1241,    595 }, {      0, 0X199A,      0 }, 0x210A },
    { ACTOR_EN_A_OBJ,            {    -40,   3299,  -4410 }, {      0, 0X1333,      0 }, 0x230A },
    { ACTOR_EN_A_OBJ,            {  -1127,   1662,     44 }, {      0, 0X216C,      0 }, 0x2D0A },
    { ACTOR_EN_A_OBJ,            {   -299,   1209,  -1787 }, {      0, 0X58E4,      0 }, 0x0B0A },
    { ACTOR_EN_HATA,             {   -746,   1273,    515 }, {      0, 0XEAAB,      0 }, 0xFFFF },
    { ACTOR_EN_SW,               {  -1653,    478,   1194 }, { 0X4000, 0XC000,      0 }, 0x9004 },
    { ACTOR_EN_SW,               {  -1166,   1465,   -812 }, { 0X4000, 0XD333,      0 }, 0xB008 },
    { ACTOR_EN_SW,               {      0,   2123,  -3196 }, { 0X4000, 0XB8E4,      0 }, 0xB010 },
    { ACTOR_EN_ISHI,             {  -1816,    681,   -513 }, {      0,      0,      0 }, 0x0B00 },
    { ACTOR_EN_ISHI,             {  -1831,    681,   -614 }, {      0,      0,      0 }, 0x0B00 },
    { ACTOR_EN_ISHI,             {  -1857,    681,   -536 }, {      0,      0,      0 }, 0x0B00 },
    { ACTOR_EN_ISHI,             {  -1878,    681,   -465 }, {      0,      0,      0 }, 0x0B00 },
    { ACTOR_EN_ISHI,             {  -1787,    681,   -550 }, {      0,      0,      0 }, 0x0B00 },
    { ACTOR_OBJ_MURE2,           {   -383,   1386,  -1206 }, {      0,      0,      0 }, 0x0B02 },
    { ACTOR_EN_KANBAN,           {  -1260,   1409,    540 }, {      0,      0,      0 }, 0x0309 },
    { ACTOR_EN_KANBAN,           {  -1834,    681,   -571 }, {      0,      0,      0 }, 0x030A },
    { ACTOR_SHOT_SUN,            {   -730,   1347,    464 }, {      0,      0,      0 }, 0xFF40 },
    { ACTOR_EN_ENCOUNT2,         {   -199,   2032,  -3060 }, {      0,      0,      0 }, 0x0005 },
    { ACTOR_BG_SPOT16_DOUGHNUT,  {    102,   5583,  -6518 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_BEAN,            {  -1610,    677,   -737 }, {      0,      0,    0X2 }, 0x0006 },
    { ACTOR_EN_WONDER_TALK2,     {   -237,   3370,  -4462 }, {      0, 0X127D,   0X29 }, 0x8EC3 },
    { ACTOR_OBJ_BOMBIWA,         {   -808,   1754,    -59 }, {      0, 0XBF4A,      0 }, 0x0008 },
    { ACTOR_OBJ_BOMBIWA,         {   -625,   1794,    -55 }, {      0,      0,      0 }, 0x000A },
    { ACTOR_OBJ_BOMBIWA,         {   -688,   1946,   -285 }, {      0,      0,      0 }, 0x801F },
    { ACTOR_EN_GOROIWA,          {  -1444,   1506,  -1627 }, {      0, 0XF8E4,    0X1 }, 0x0D01 },
    { ACTOR_EN_GOROIWA,          {  -1145,   2177,   -370 }, {      0,  0X71C,    0X1 }, 0x0C02 },
    { ACTOR_EN_BOX,              {   -607,   1454,   -112 }, {      0, 0XB1C7,      0 }, 0x5AA1 },
    { ACTOR_EN_TITE,             {  -1886,    401,    736 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {  -1076,   1429,    409 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {  -1101,   1162,    978 }, {      0, 0XE000,      0 }, 0xFFFF },
    { ACTOR_EN_HATA,             {  -1038,   2208,   -274 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_HATA,             {   -824,   1210,   1143 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {   -266,   1500,   -420 }, {      0, 0XECCD,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {  -1928,    494,    409 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_PLAYER,              {      0,      0,      0 }, {      0,      0, 0X1600 }, 0x0000 },
    { ACTOR_PLAYER,              {     11,   2048,      0 }, {      0,      0, 0X1200 }, 0x0000 },
    { ACTOR_PLAYER,              {      0,   4096,      0 }, { 0X1400,      0,  0X500 }, 0x0000 },
    { 0x5A00,                    {     -5,   2560,      0 }, {  0X300,  0X3D0,  0XB05 }, 0x0000 },
    { 0x0300,                    {   2184,    266,      0 }, {  0X300,  0X894, 0X1400 }, 0x0000 },
    { ACTOR_PLAYER,              {      0,     41,     52 }, {   0X31,   0X16,   0X38 }, 0x0000 },
    { ACTOR_EN_TITE,             {  -1942,    361,   1052 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_A_OBJ,            {  -1774,    686,   -590 }, {      0,  0XE39,      0 }, 0x110A },
    { ACTOR_EN_BOMBF,            {   -570,   1489,   -458 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_A_OBJ,            {   -850,   1206,    741 }, {      0, 0X4000,      0 }, 0x120A },
    { ACTOR_EN_TITE,             {  -1886,    401,    736 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {  -1928,    494,    409 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_TITE,             {  -1101,   1162,    978 }, {      0, 0XE000,      0 }, 0xFFFF },
    { ACTOR_EN_HATA,             {  -1038,   2208,   -274 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_HATA,             {   -824,   1210,   1143 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_BG_SPOT16_BOMBSTONE, {  -1679,    684,   -690 }, {      0,      0,      0 }, 0xFFFF },
};

u8 spot16_room_0_possiblePadding_000934[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot16_room_0Set_000940[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(13, 28, 0),
    SCENE_CMD_MESH(&spot16_room_0PolygonType2_0003D0),
    SCENE_CMD_OBJECT_LIST(3, spot16_room_0ObjectList_000980),
    SCENE_CMD_ACTOR_LIST(2, spot16_room_0ActorList_000984),
    SCENE_CMD_END(),
};

s16 spot16_room_0ObjectList_000980[] = {
    OBJECT_GOD_LGT,
    OBJECT_LIGHT_RING,
    OBJECT_EFC_DOUGHNUT,
};

ActorEntry spot16_room_0ActorList_000984[] = {
    { ACTOR_DEMO_EFFECT,        {   -230,   2262,  -2544 }, {      0,      0,      0 }, 0xFF05 },
    { ACTOR_BG_SPOT16_DOUGHNUT, {    102,   5583,  -6518 }, {      0,      0,      0 }, 0xFFFF },
};

u8 spot16_room_0_possiblePadding_0009A4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot16_room_0Set_0009B0[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&spot16_room_0PolygonType2_0003D0),
    SCENE_CMD_OBJECT_LIST(8, spot16_room_0ObjectList_0009F0),
    SCENE_CMD_ACTOR_LIST(9, spot16_room_0ActorList_000A00),
    SCENE_CMD_END(),
};

s16 spot16_room_0ObjectList_0009F0[] = {
    OBJECT_O_ANIME,
    OBJECT_OE_ANIME,
    OBJECT_OF1D_MAP,
    OBJECT_DU,
    OBJECT_GI_JEWEL,
    OBJECT_EFC_FLASH,
    OBJECT_WARP1,
    OBJECT_EFC_DOUGHNUT,
};

ActorEntry spot16_room_0ActorList_000A00[] = {
    { ACTOR_DEMO_GO,             {  -1808,    684,   -544 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_GO,             {  -1707,    693,   -544 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_DEMO_GO,             {  -1631,    696,   -523 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_DEMO_DU,             {  -1799,    705,   -466 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_DEMO_EFFECT,         {  -1715,    694,   -490 }, {      0,      0,      0 }, 0x0012 },
    { ACTOR_DEMO_EFFECT,         {  -1714,    705,   -319 }, {      0,      0,      0 }, 0x0014 },
    { ACTOR_BG_SPOT16_BOMBSTONE, {  -1679,    684,   -690 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_BG_SPOT16_DOUGHNUT,  {    102,   5583,  -6518 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DOOR_WARP1,          {  -1656,    695,   -519 }, {      0,      0,      0 }, 0x0006 },
};

SceneCmd spot16_room_0Set_000A90[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&spot16_room_0PolygonType2_0003D0),
    SCENE_CMD_OBJECT_LIST(9, spot16_room_0ObjectList_000AD0),
    SCENE_CMD_ACTOR_LIST(12, spot16_room_0ActorList_000AE0),
    SCENE_CMD_END(),
};

s16 spot16_room_0ObjectList_000AD0[] = {
    OBJECT_O_ANIME,
    OBJECT_SPOT16_OBJ,
    OBJECT_OF1D_MAP,
    OBJECT_DU,
    OBJECT_GI_JEWEL,
    OBJECT_EFC_FLASH,
    OBJECT_WARP1,
    OBJECT_EFC_DOUGHNUT,
    OBJECT_HATA,
};

ActorEntry spot16_room_0ActorList_000AE0[] = {
    { ACTOR_DEMO_GO,             {  -1808,    684,   -544 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_GO,             {  -1707,    693,   -544 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_DEMO_GO,             {  -1631,    696,   -523 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_DEMO_DU,             {  -1799,    705,   -466 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_DEMO_EFFECT,         {  -1715,    694,   -490 }, {      0,      0,      0 }, 0x0012 },
    { ACTOR_DEMO_EFFECT,         {  -1714,    705,   -319 }, {      0,      0,      0 }, 0x0014 },
    { ACTOR_BG_SPOT16_BOMBSTONE, {  -1679,    684,   -690 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_BG_SPOT16_DOUGHNUT,  {    102,   5583,  -6518 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DOOR_WARP1,          {  -1656,    695,   -519 }, {      0,      0,      0 }, 0x0006 },
    { ACTOR_EN_HATA,             {  -1038,   2208,   -274 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_HATA,             {   -824,   1210,   1143 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_EN_HATA,             {   -746,   1273,    515 }, {      0, 0XEAAB,      0 }, 0xFFFF },
};

SceneCmd spot16_room_0Set_000B70[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 255),
    SCENE_CMD_MESH(&spot16_room_0PolygonType2_0003D0),
    SCENE_CMD_OBJECT_LIST(15, spot16_room_0ObjectList_000BB0),
    SCENE_CMD_ACTOR_LIST(6, spot16_room_0ActorList_000BD0),
    SCENE_CMD_END(),
};

s16 spot16_room_0ObjectList_000BB0[] = {
    OBJECT_SPOT16_OBJ,
    OBJECT_EFC_DOUGHNUT,
    OBJECT_OF1D_MAP,
    OBJECT_BOMBF,
    OBJECT_TITE,
    OBJECT_HATA,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_MAMENOKI,
    OBJECT_KANBAN,
    OBJECT_OWL,
    OBJECT_BOMBIWA,
    OBJECT_GS,
    OBJECT_ST,
    OBJECT_COW,
    OBJECT_BOX,
};

ActorEntry spot16_room_0ActorList_000BD0[] = {
    { ACTOR_BG_SPOT16_BOMBSTONE, {  -1679,    684,   -690 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_BG_SPOT16_DOUGHNUT,  {    102,   5583,  -6518 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_MURE2,           {   -383,   1386,  -1206 }, {      0,      0,      0 }, 0xFF02 },
    { ACTOR_EN_HATA,             {  -1038,   2208,   -274 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_HATA,             {   -824,   1210,   1143 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_EN_HATA,             {   -746,   1273,    515 }, {      0, 0XEAAB,      0 }, 0xFFFF },
};

SceneCmd spot16_room_0Set_000C00[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(0, 0, 20),
    SCENE_CMD_WIND_SETTINGS(90, 0, 255, 251),
    SCENE_CMD_MESH(&spot16_room_0PolygonType2_0003D0),
    SCENE_CMD_OBJECT_LIST(6, spot16_room_0ObjectList_000C48),
    SCENE_CMD_ACTOR_LIST(12, spot16_room_0ActorList_000C54),
    SCENE_CMD_END(),
};

s16 spot16_room_0ObjectList_000C48[] = {
    OBJECT_IM,
    OBJECT_RU2,
    OBJECT_NB,
    OBJECT_SA,
    OBJECT_DU,
    OBJECT_EFC_DOUGHNUT,
};

ActorEntry spot16_room_0ActorList_000C54[] = {
    { ACTOR_DEMO_6K,            {  -1778,    685,   -467 }, {      0,      0,      0 }, 0x000E },
    { ACTOR_DEMO_6K,            {  -1714,    691,   -451 }, {      0,      0,      0 }, 0x000F },
    { ACTOR_DEMO_6K,            {  -1602,    701,   -435 }, {      0,      0,      0 }, 0x0010 },
    { ACTOR_DEMO_6K,            {  -1666,    687,   -515 }, {      0,      0,      0 }, 0x0011 },
    { ACTOR_DEMO_6K,            {  -1586,    693,   -515 }, {      0,      0,      0 }, 0x0012 },
    { ACTOR_DEMO_6K,            {  -1714,    681,   -547 }, {      0,      0,      0 }, 0x0013 },
    { ACTOR_DEMO_SA,            {  -1794,    681,   -531 }, {      0,      0,      0 }, 0x0004 },
    { ACTOR_DEMO_DU,            {  -1650,    704,   -371 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_RU2,             {  -1714,    682,   -531 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_NB,              {  -1730,    687,   -483 }, {      0,      0,      0 }, 0x0005 },
    { ACTOR_DEMO_IM,            {  -1890,    688,   -371 }, {      0,      0,      0 }, 0x0006 },
    { ACTOR_BG_SPOT16_DOUGHNUT, {    102,   5583,  -6518 }, {      0,      0,      0 }, 0xFFFF },
};

u8 spot16_room_0_possiblePadding_000D14[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot16_room_0Vtx_000D20[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_000D20.vtx.inc"
};

Gfx spot16_room_0DL_000FA0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_019698, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot16_room_0Vtx_000D20, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_000D20[4], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(10, 9, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_008198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 150, 132, 98, 255),
    gsSPVertex(&spot16_room_0Vtx_000D20[16], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_000D20[19], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_008198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 150, 132, 98, 255),
    gsSPVertex(&spot16_room_0Vtx_000D20[30], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_000D20[34], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_001208[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_001208.vtx.inc"
};

Gfx spot16_room_0DL_001218[] = {
    gsSPVertex(spot16_room_0Vtx_001208, 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_000FA0, 0, 0x00000640),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_001238[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_001238.vtx.inc"
};

Gfx spot16_room_0DL_001548[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_008198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 150, 132, 98, 255),
    gsSPVertex(spot16_room_0Vtx_001238, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 10, 0),
    gsSP2Triangles(6, 10, 7, 0, 9, 11, 12, 0),
    gsSP2Triangles(9, 12, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 21, 23, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 22, 0),
    gsSP2Triangles(3, 26, 0, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 29, 30, 0, 14, 31, 15, 0),
    gsSPVertex(&spot16_room_0Vtx_001238[32], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 10, 12, 0),
    gsSP2Triangles(7, 12, 8, 0, 13, 14, 15, 0),
    gsSP1Triangle(13, 15, 16, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_001620[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_001620.vtx.inc"
};

Gfx spot16_room_0DL_0017E0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_008198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 150, 132, 98, 255),
    gsSPVertex(spot16_room_0Vtx_001620, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 8, 0),
    gsSP2Triangles(4, 8, 5, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(12, 18, 13, 0, 18, 19, 13, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(4, 6, 24, 0, 25, 4, 24, 0),
    gsSP2Triangles(1, 26, 27, 0, 1, 27, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_0018B0[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_0018B0.vtx.inc"
};

Gfx spot16_room_0DL_0018D0[] = {
    gsSPVertex(spot16_room_0Vtx_0018B0, 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_001548, 0, 0x00000960),
    gsSPVertex(&spot16_room_0Vtx_0018B0[1], 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_0017E0, 0, 0x17D78400),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_001908[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_001908.vtx.inc"
};

Gfx spot16_room_0DL_001AA8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_008198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 150, 132, 98, 255),
    gsSPVertex(spot16_room_0Vtx_001908, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 5, 0, 0, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00AD98, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_001908[6], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 5, 7, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009D98, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_001908[16], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 3, 5, 4, 0),
    gsSP1Triangle(5, 6, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00BD98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetPrimColor(0, 0, 0, 0, 0, 255),
    gsSPVertex(&spot16_room_0Vtx_001908[23], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_001C60[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_001C60.vtx.inc"
};

Gfx spot16_room_0DL_001C70[] = {
    gsSPVertex(spot16_room_0Vtx_001C60, 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_001AA8, 0, 0x00000960),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_001C90[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_001C90.vtx.inc"
};

Gfx spot16_room_0DL_001DD0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(spot16_room_0Vtx_001C90, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_001E80[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_001E80.vtx.inc"
};

Gfx spot16_room_0DL_001EC0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_016E98, G_IM_FMT_I, 128, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(spot16_room_0Vtx_001E80, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_001F50[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_001F50.vtx.inc"
};

Gfx spot16_room_0DL_001F70[] = {
    gsSPVertex(spot16_room_0Vtx_001F50, 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_001DD0, 0, 0x000004B0),
    gsSPVertex(&spot16_room_0Vtx_001F50[1], 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_001EC0, 0, 0x00000FA0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_001FA8[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_001FA8.vtx.inc"
};

Gfx spot16_room_0DL_002A78[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot16_room_0Vtx_001FA8[165], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot16_room_0DL_001218),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_019698, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot16_room_0Vtx_001FA8, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 3, 5, 4, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00CD98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_001FA8[7], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_001FA8[12], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 8, 0),
    gsSP2Triangles(9, 10, 4, 0, 6, 11, 4, 0),
    gsSP2Triangles(4, 12, 9, 0, 4, 11, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_016E98, G_IM_FMT_I, 128, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_001FA8[26], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 0, 0, 6, 8, 7, 0),
    gsSP2Triangles(9, 10, 6, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 10, 14, 0, 15, 14, 16, 0),
    gsSP2Triangles(14, 15, 13, 0, 17, 18, 6, 0),
    gsSP2Triangles(18, 8, 6, 0, 16, 18, 15, 0),
    gsSP2Triangles(16, 19, 20, 0, 21, 11, 22, 0),
    gsSP2Triangles(21, 14, 11, 0, 16, 14, 21, 0),
    gsSP2Triangles(23, 16, 21, 0, 23, 24, 16, 0),
    gsSP2Triangles(25, 19, 16, 0, 26, 24, 23, 0),
    gsSP2Triangles(26, 27, 25, 0, 28, 29, 30, 0),
    gsSP2Triangles(29, 23, 31, 0, 29, 26, 23, 0),
    gsSPVertex(&spot16_room_0Vtx_001FA8[58], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(4, 0, 2, 0),
    gsSPVertex(&spot16_room_0Vtx_001FA8[63], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 8, 9, 11, 0),
    gsSP2Triangles(7, 12, 13, 0, 13, 9, 7, 0),
    gsSP2Triangles(8, 7, 9, 0, 14, 9, 15, 0),
    gsSP2Triangles(9, 16, 17, 0, 18, 19, 17, 0),
    gsSP1Triangle(19, 9, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_001FA8[83], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 2, 3, 0),
    gsSP2Triangles(6, 7, 3, 0, 7, 8, 3, 0),
    gsSP2Triangles(8, 5, 3, 0, 9, 0, 10, 0),
    gsSP2Triangles(10, 2, 5, 0, 10, 0, 2, 0),
    gsSP2Triangles(4, 0, 9, 0, 11, 4, 9, 0),
    gsSP2Triangles(4, 11, 12, 0, 13, 4, 12, 0),
    gsSP2Triangles(14, 13, 12, 0, 6, 15, 7, 0),
    gsSPVertex(&spot16_room_0Vtx_001FA8[99], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_016E98, G_IM_FMT_I, 128, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_001FA8[103], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 6, 0, 9, 10, 4, 0),
    gsSP2Triangles(6, 9, 4, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 9, 17, 18, 0),
    gsSP2Triangles(17, 14, 18, 0, 17, 15, 14, 0),
    gsSP2Triangles(9, 6, 17, 0, 6, 8, 15, 0),
    gsSP1Triangle(6, 15, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_001FA8[122], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 7, 0, 7, 10, 11, 0),
    gsSP2Triangles(12, 13, 7, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 26, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_016E98, G_IM_FMT_I, 128, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_001FA8[149], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 8, 9, 6, 0),
    gsSP2Triangles(8, 10, 9, 0, 7, 11, 12, 0),
    gsSP2Triangles(7, 12, 8, 0, 12, 2, 13, 0),
    gsSP2Triangles(2, 10, 13, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 15, 2, 0, 15, 3, 2, 0),
    gsSPDisplayList(spot16_room_0DL_0018D0),
    gsSPDisplayList(spot16_room_0DL_001C70),
    gsSPDisplayList(spot16_room_0DL_001F70),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_002F48[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_002F48.vtx.inc"
};

Gfx spot16_room_0DL_003158[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_00BD98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 180, 171, 159, 255),
    gsSPVertex(spot16_room_0Vtx_002F48, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 3, 2, 5, 0),
    gsSP2Triangles(2, 6, 5, 0, 7, 0, 4, 0),
    gsSP2Triangles(7, 4, 8, 0, 7, 8, 9, 0),
    gsSP1Triangle(9, 8, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_016E98, G_IM_FMT_I, 128, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_002F48[11], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_002F48[15], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 1, 3, 0, 5, 4, 3, 0),
    gsSP2Triangles(6, 2, 7, 0, 0, 2, 6, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 7, 8, 0),
    gsSP2Triangles(10, 11, 8, 0, 12, 11, 10, 0),
    gsSP2Triangles(11, 9, 8, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_016E98, G_IM_FMT_I, 128, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_002F48[29], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_003330[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_003330.vtx.inc"
};

Gfx spot16_room_0DL_003340[] = {
    gsSPVertex(spot16_room_0Vtx_003330, 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_003158, 0, 0x00000AF0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_003360[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_003360.vtx.inc"
};

Gfx spot16_room_0DL_003520[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_008198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(spot16_room_0Vtx_003360, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(2, 4, 7, 0, 2, 7, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 14, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(24, 26, 27, 0, 24, 27, 25, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_0035B8[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_0035B8.vtx.inc"
};

Gfx spot16_room_0DL_0035C8[] = {
    gsSPVertex(spot16_room_0Vtx_0035B8, 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_003520, 0, 0x00000320),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_0035E8[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_0035E8.vtx.inc"
};

Gfx spot16_room_0DL_004788[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot16_room_0Vtx_0035E8[274], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot16_room_0DL_003340),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_01D698, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 150, 132, 98, 255),
    gsSPVertex(spot16_room_0Vtx_0035E8, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 16, 15, 0, 16, 18, 5, 0),
    gsSP2Triangles(16, 5, 19, 0, 4, 20, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_0035E8[21], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(18, 15, 12, 0, 18, 19, 15, 0),
    gsSP1Triangle(17, 16, 20, 0),
    gsSPVertex(&spot16_room_0Vtx_0035E8[42], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 7, 5, 8, 0),
    gsSP2Triangles(9, 10, 7, 0, 7, 11, 9, 0),
    gsSP2Triangles(7, 12, 5, 0, 7, 10, 12, 0),
    gsSP2Triangles(13, 2, 1, 0, 1, 3, 13, 0),
    gsSP2Triangles(3, 5, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(15, 13, 16, 0, 12, 16, 5, 0),
    gsSP2Triangles(16, 13, 5, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 13, 19, 0, 2, 13, 18, 0),
    gsSP1Triangle(20, 17, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_016E98, G_IM_FMT_I, 128, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[63], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00AD98, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 150, 132, 98, 255),
    gsSPVertex(&spot16_room_0Vtx_0035E8[67], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[75], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009998, G_IM_FMT_I, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[79], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[83], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009998, G_IM_FMT_I, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[91], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00AD98, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[95], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 13, 15, 16, 0),
    gsSP2Triangles(13, 16, 14, 0, 17, 18, 19, 0),
    gsSP1Triangle(17, 19, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[116], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 4, 5, 2, 0),
    gsSPDisplayList(spot16_room_0DL_0035C8),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_016E98, G_IM_FMT_I, 128, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_0035E8[122], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_008198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 150, 132, 98, 255),
    gsSPVertex(&spot16_room_0Vtx_0035E8[125], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_01D698, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[129], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_016E98, G_IM_FMT_I, 128, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_0035E8[132], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 1, 0, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_008198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 150, 132, 98, 255),
    gsSPVertex(&spot16_room_0Vtx_0035E8[138], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(1, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_016E98, G_IM_FMT_I, 128, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_0035E8[143], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_008198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 150, 132, 98, 255),
    gsSPVertex(&spot16_room_0Vtx_0035E8[154], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_0035E8[159], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 4, 0),
    gsSP2Triangles(8, 5, 4, 0, 9, 0, 2, 0),
    gsSP2Triangles(10, 11, 12, 0, 9, 10, 0, 0),
    gsSP2Triangles(10, 13, 14, 0, 10, 14, 0, 0),
    gsSP2Triangles(15, 10, 12, 0, 16, 11, 17, 0),
    gsSP2Triangles(11, 10, 17, 0, 18, 17, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_016E98, G_IM_FMT_I, 128, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[178], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 0, 7, 5, 0),
    gsSP2Triangles(0, 5, 4, 0, 7, 0, 2, 0),
    gsSP2Triangles(3, 8, 9, 0, 8, 3, 6, 0),
    gsSP2Triangles(10, 3, 9, 0, 10, 11, 3, 0),
    gsSP2Triangles(12, 13, 11, 0, 14, 12, 11, 0),
    gsSP2Triangles(10, 14, 11, 0, 1, 0, 15, 0),
    gsSPVertex(&spot16_room_0Vtx_0035E8[194], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 0, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 8, 7, 0),
    gsSP2Triangles(6, 9, 8, 0, 0, 6, 1, 0),
    gsSP2Triangles(10, 4, 11, 0, 12, 4, 10, 0),
    gsSP1Triangle(4, 5, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[207], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_008198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[210], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(13, 15, 14, 0, 3, 12, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 20, 18, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(17, 19, 25, 0, 19, 8, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_01D698, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[236], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 4, 5, 6, 0),
    gsSP1Triangle(6, 5, 7, 0),
    gsSPVertex(&spot16_room_0Vtx_0035E8[244], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 5, 6, 2, 0),
    gsSP2Triangles(6, 7, 2, 0, 0, 8, 1, 0),
    gsSP2Triangles(8, 9, 1, 0, 9, 3, 1, 0),
    gsSP1Triangle(3, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[254], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_01D698, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[262], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0035E8[266], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_005278[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_005278.vtx.inc"
};

Gfx spot16_room_0DL_005B98[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot16_room_0Vtx_005278[138], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(spot16_room_0Vtx_005278, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 3, 6, 8, 0),
    gsSP1Triangle(9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00BD98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetPrimColor(0, 0, 180, 171, 159, 255),
    gsSPVertex(&spot16_room_0Vtx_005278[12], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 7, 0),
    gsSP1Triangle(8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_01DE98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 242, 227, 180, 255),
    gsSPVertex(&spot16_room_0Vtx_005278[23], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00BD98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 180, 171, 159, 255),
    gsSPVertex(&spot16_room_0Vtx_005278[27], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 6, 5, 0, 9, 6, 8, 0),
    gsSP2Triangles(10, 9, 11, 0, 9, 8, 11, 0),
    gsSP2Triangles(10, 12, 9, 0, 13, 12, 10, 0),
    gsSP2Triangles(14, 12, 13, 0, 6, 15, 7, 0),
    gsSP2Triangles(15, 16, 7, 0, 9, 15, 6, 0),
    gsSP2Triangles(12, 15, 9, 0, 12, 17, 15, 0),
    gsSP2Triangles(14, 17, 12, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 8, 19, 0, 20, 4, 21, 0),
    gsSP2Triangles(22, 21, 4, 0, 23, 24, 21, 0),
    gsSP2Triangles(21, 25, 23, 0, 26, 23, 0, 0),
    gsSP2Triangles(23, 22, 27, 0, 25, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_01DE98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 242, 227, 180, 255),
    gsSPVertex(&spot16_room_0Vtx_005278[55], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00BD98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 180, 171, 159, 255),
    gsSPVertex(&spot16_room_0Vtx_005278[61], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 5, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(7, 10, 9, 0, 6, 0, 4, 0),
    gsSP2Triangles(6, 1, 0, 0, 8, 1, 6, 0),
    gsSP2Triangles(9, 1, 8, 0, 9, 3, 1, 0),
    gsSP2Triangles(11, 10, 7, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 19, 17, 0, 19, 20, 17, 0),
    gsSP2Triangles(19, 21, 20, 0, 21, 22, 20, 0),
    gsSP2Triangles(23, 24, 20, 0, 20, 24, 25, 0),
    gsSP2Triangles(20, 25, 26, 0, 23, 27, 24, 0),
    gsSP2Triangles(28, 7, 5, 0, 29, 30, 31, 0),
    gsSPVertex(&spot16_room_0Vtx_005278[93], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 3, 5, 6, 0),
    gsSP2Triangles(3, 6, 4, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_005278[105], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(6, 10, 7, 0, 6, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 13, 0),
    gsSP2Triangles(17, 0, 18, 0, 0, 2, 18, 0),
    gsSP2Triangles(19, 20, 18, 0, 20, 21, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_008198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_005278[127], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 1, 0, 2, 1, 8, 0),
    gsSP2Triangles(9, 2, 8, 0, 7, 10, 8, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_006020[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_006020.vtx.inc"
};

Gfx spot16_room_0DL_0060E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot16_room_0Vtx_006020[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_017E98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot16_room_0Vtx_006020, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_0061B0[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_0061B0.vtx.inc"
};

Gfx spot16_room_0DL_0066D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot16_room_0Vtx_0061B0[74], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_00D798, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot16_sceneTLUT_008170),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 157, 167, 187, 255),
    gsSPVertex(spot16_room_0Vtx_0061B0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 4, 8, 9, 0),
    gsSP2Triangles(10, 4, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(13, 8, 4, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 16, 21, 19, 0),
    gsSP2Triangles(21, 22, 19, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 24, 0, 24, 28, 29, 0),
    gsSPVertex(&spot16_room_0Vtx_0061B0[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(11, 10, 14, 0, 11, 14, 15, 0),
    gsSP2Triangles(13, 11, 15, 0, 16, 14, 1, 0),
    gsSP2Triangles(16, 1, 17, 0, 5, 18, 19, 0),
    gsSP2Triangles(4, 5, 20, 0, 21, 7, 22, 0),
    gsSP2Triangles(21, 23, 18, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSPVertex(&spot16_room_0Vtx_0061B0[61], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(spot16_sceneTex_015E98, G_IM_FMT_IA, G_IM_SIZ_8b, 128, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0061B0[70], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_0068C0[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_0068C0.vtx.inc"
};

Gfx spot16_room_0DL_007200[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot16_room_0Vtx_0068C0[140], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_00AD98, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(spot16_room_0Vtx_0068C0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 150, 132, 98, 255),
    gsSPVertex(&spot16_room_0Vtx_0068C0[8], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 2, 1, 0, 5, 6, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009D98, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0068C0[15], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 2, 0),
    gsSP2Triangles(1, 6, 3, 0, 6, 7, 3, 0),
    gsSP2Triangles(7, 8, 3, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 6, 11, 12, 0),
    gsSP2Triangles(6, 12, 7, 0, 12, 13, 9, 0),
    gsSP2Triangles(12, 9, 7, 0, 10, 14, 3, 0),
    gsSP2Triangles(8, 10, 3, 0, 3, 14, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00AD98, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0068C0[30], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 4, 5, 0, 5, 7, 8, 0),
    gsSP1Triangle(5, 9, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_01D698, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_0068C0[40], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 10, 7, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 14, 0),
    gsSP2Triangles(14, 17, 15, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 18, 22, 0, 23, 21, 22, 0),
    gsSP2Triangles(22, 24, 25, 0, 26, 24, 22, 0),
    gsSP2Triangles(25, 23, 22, 0, 19, 27, 14, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_012798, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetPrimColor(0, 0, 189, 188, 184, 255),
    gsSPVertex(&spot16_room_0Vtx_0068C0[71], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_011798, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0068C0[75], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 1, 10, 0),
    gsSP2Triangles(11, 12, 9, 0, 11, 9, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_010198, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 170, 170, 170, 255),
    gsSPVertex(&spot16_room_0Vtx_0068C0[88], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00F198, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 111, 121, 131, 255),
    gsSPVertex(&spot16_room_0Vtx_0068C0[96], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_011798, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetPrimColor(0, 0, 189, 188, 184, 255),
    gsSPVertex(&spot16_room_0Vtx_0068C0[104], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 8, 10, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(11, 13, 12, 0, 14, 15, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009D98, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_0068C0[121], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_012798, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetPrimColor(0, 0, 189, 188, 184, 255),
    gsSPVertex(&spot16_room_0Vtx_0068C0[129], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_011198, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0068C0[133], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_012798, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0068C0[137], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_007828[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_007828.vtx.inc"
};

Gfx spot16_room_0DL_007A58[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_013D98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 179, 176, 170, 255),
    gsSPVertex(spot16_room_0Vtx_007828, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 9, 0, 8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_013998, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot16_room_0Vtx_007828[11], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_013D98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot16_room_0Vtx_007828[15], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_007BC8[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_007BC8.vtx.inc"
};

Gfx spot16_room_0DL_007BD8[] = {
    gsSPVertex(spot16_room_0Vtx_007BC8, 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_007A58, 0, 0x000007D0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_007BF8[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_007BF8.vtx.inc"
};

Gfx spot16_room_0DL_007C78[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(spot16_room_0Vtx_007BF8, 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot16_room_0DL_007BD8),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_007CB8[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_007CB8.vtx.inc"
};

Gfx spot16_room_0DL_007E18[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_01D698, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 150, 132, 98, 255),
    gsSPVertex(spot16_room_0Vtx_007CB8, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(4, 5, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_008198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_007CB8[6], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_01D698, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_007CB8[14], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 5, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_007F48[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_007F48.vtx.inc"
};

Gfx spot16_room_0DL_007F58[] = {
    gsSPVertex(spot16_room_0Vtx_007F48, 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_007E18, 0, 0x00000960),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_007F78[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_007F78.vtx.inc"
};

Gfx spot16_room_0DL_008188[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_009198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(spot16_room_0Vtx_007F78, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_01D698, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_007F78[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_007F78[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009D98, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_007F78[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_007F78[16], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_01D698, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_007F78[19], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009198, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_007F78[22], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009D98, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_007F78[25], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_015D98, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPVertex(&spot16_room_0Vtx_007F78[28], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 2, 4, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_0084B0[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_0084B0.vtx.inc"
};

Gfx spot16_room_0DL_0084F0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(spot16_room_0Vtx_0084B0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_008580[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_008580.vtx.inc"
};

Gfx spot16_room_0DL_0085A0[] = {
    gsSPVertex(spot16_room_0Vtx_008580, 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_008188, 0, 0x000004B0),
    gsSPVertex(&spot16_room_0Vtx_008580[1], 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_0084F0, 0, 0x17D78400),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_0085D8[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_0085D8.vtx.inc"
};

Gfx spot16_room_0DL_008A38[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_011198, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 170, 180, 220, 255),
    gsSPVertex(spot16_room_0Vtx_0085D8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009D98, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 93, 89, 67, 255),
    gsSPVertex(&spot16_room_0Vtx_0085D8[4], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(4, 0, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00AD98, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0085D8[10], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_009D98, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0085D8[18], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(3, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_011598, G_IM_FMT_I, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0085D8[23], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_013798, G_IM_FMT_I, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0085D8[27], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_011598, G_IM_FMT_I, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0085D8[33], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_00DF98, G_IM_FMT_I, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0085D8[37], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00D398, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&spot16_room_0Vtx_0085D8[41], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00CF98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0085D8[45], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP1Triangle(2, 1, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00D398, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0085D8[50], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00CF98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0085D8[57], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00D398, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0085D8[63], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00CF98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_0085D8[66], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_008F08[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_008F08.vtx.inc"
};

Gfx spot16_room_0DL_008F78[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(spot16_room_0Vtx_008F08, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP1Triangle(0, 5, 6, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_009018[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_009018.vtx.inc"
};

Gfx spot16_room_0DL_009038[] = {
    gsSPVertex(spot16_room_0Vtx_009018, 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_008A38, 0, 0x000004B0),
    gsSPVertex(&spot16_room_0Vtx_009018[1], 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_008F78, 0, 0x17D78400),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_009070[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_009070.vtx.inc"
};

Gfx spot16_room_0DL_009BD0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot16_room_0Vtx_009070[174], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_018E98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(spot16_sceneTex_018698, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 14),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 88),
    gsSPVertex(spot16_room_0Vtx_009070, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 0, 11, 12, 0),
    gsSP2Triangles(13, 5, 14, 0, 5, 15, 14, 0),
    gsSP2Triangles(5, 16, 15, 0, 5, 17, 16, 0),
    gsSP2Triangles(5, 4, 17, 0, 18, 19, 15, 0),
    gsSP2Triangles(18, 15, 16, 0, 20, 18, 16, 0),
    gsSP2Triangles(20, 16, 17, 0, 4, 20, 17, 0),
    gsSP2Triangles(4, 12, 20, 0, 4, 0, 12, 0),
    gsSP2Triangles(3, 0, 4, 0, 21, 22, 8, 0),
    gsSP2Triangles(21, 8, 10, 0, 21, 10, 23, 0),
    gsSP2Triangles(22, 21, 24, 0, 25, 24, 21, 0),
    gsSP1Triangle(26, 25, 21, 0),
    gsSPDisplayList(spot16_room_0DL_007F58),
    gsSPDisplayList(spot16_room_0DL_0085A0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_01DE98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 242, 227, 180, 255),
    gsSPVertex(&spot16_room_0Vtx_009070[27], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 0, 2, 0, 2, 10, 7, 0),
    gsSP2Triangles(10, 11, 7, 0, 12, 13, 7, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(15, 18, 19, 0, 15, 14, 18, 0),
    gsSP2Triangles(19, 5, 6, 0, 19, 20, 5, 0),
    gsSP2Triangles(20, 19, 21, 0, 19, 22, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_014D98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&spot16_room_0Vtx_009070[50], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(6, 2, 7, 0, 2, 1, 7, 0),
    gsSP2Triangles(0, 8, 9, 0, 0, 9, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(&spot16_room_0Vtx_009070[60], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 6, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 21, 17, 22, 0),
    gsSP2Triangles(22, 20, 23, 0, 22, 23, 15, 0),
    gsSP2Triangles(24, 22, 15, 0, 25, 16, 15, 0),
    gsSP2Triangles(23, 26, 15, 0, 26, 25, 15, 0),
    gsSP2Triangles(27, 28, 24, 0, 14, 29, 24, 0),
    gsSP2Triangles(30, 31, 29, 0, 31, 17, 29, 0),
    gsSPVertex(&spot16_room_0Vtx_009070[92], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 5, 8, 0),
    gsSP2Triangles(9, 10, 2, 0, 10, 11, 2, 0),
    gsSP2Triangles(7, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(15, 17, 16, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 23, 24, 21, 0),
    gsSP2Triangles(21, 24, 25, 0, 26, 21, 25, 0),
    gsSP2Triangles(27, 26, 25, 0, 27, 25, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&spot16_room_0Vtx_009070[124], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsSP2Triangles(10, 6, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 11, 0, 14, 11, 13, 0),
    gsSP2Triangles(13, 16, 14, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 20, 21, 18, 0),
    gsSP2Triangles(18, 22, 19, 0, 17, 20, 19, 0),
    gsSP2Triangles(19, 22, 14, 0, 14, 17, 19, 0),
    gsSP2Triangles(23, 24, 25, 0, 7, 26, 27, 0),
    gsSP2Triangles(7, 27, 8, 0, 26, 28, 29, 0),
    gsSP1Triangle(26, 29, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_00E198, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetPrimColor(0, 0, 124, 127, 133, 255),
    gsSPVertex(&spot16_room_0Vtx_009070[154], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 5, 8, 0),
    gsSP2Triangles(5, 7, 6, 0, 1, 9, 10, 0),
    gsSP2Triangles(2, 1, 10, 0, 2, 10, 11, 0),
    gsSPDisplayList(spot16_room_0DL_009038),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_015E98, G_IM_FMT_IA, G_IM_SIZ_8b, 128, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 242, 227, 180, 255),
    gsSPVertex(&spot16_room_0Vtx_009070[166], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_00A0F0[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_00A0F0.vtx.inc"
};

Gfx spot16_room_0DL_00A240[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot16_room_0Vtx_00A0F0[13], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot16_sceneTex_015598, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(spot16_room_0Vtx_00A0F0, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 12, 0),
    gsSPEndDisplayList(),
};

u8 spot16_room_0_unaccounted_00A310[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2A, 0x78, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x47, 0x88, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5B, 0x98, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x60, 0xE0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x66, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x72, 0x00, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x7C, 0x78, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x9B, 0xD0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA2, 0x40, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot16_room_0Vtx_00A360[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_00A360.vtx.inc"
};

Gfx spot16_room_0DL_00A450[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_015D98, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot16_room_0Vtx_00A360, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 7, 9, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_00A4F8[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_00A4F8.vtx.inc"
};

Gfx spot16_room_0DL_00A508[] = {
    gsSPVertex(spot16_room_0Vtx_00A4F8, 1, 0),
    gsSPBranchLessZraw(spot16_room_0DL_00A450, 0, 0x00000960),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_00A528[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_00A528.vtx.inc"
};

Gfx spot16_room_0DL_00A5A8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(spot16_room_0Vtx_00A528, 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPDisplayList(spot16_room_0DL_00A508),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_00A5E8[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_00A5E8.vtx.inc"
};

Gfx spot16_room_0DL_00A6F8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot16_room_0Vtx_00A5E8[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_015D98, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(spot16_room_0Vtx_00A5E8, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 5, 6, 2, 0),
    gsSP2Triangles(6, 0, 2, 0, 0, 7, 1, 0),
    gsSP2Triangles(7, 8, 1, 0, 8, 3, 1, 0),
    gsSP1Triangle(3, 2, 1, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_00A7D8[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_00A7D8.vtx.inc"
};

Gfx spot16_room_0DL_00A8E8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot16_room_0Vtx_00A7D8[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_01B698, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 140, 127, 97, 255),
    gsSPVertex(spot16_room_0Vtx_00A7D8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_015D98, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot16_room_0Vtx_00A7D8[4], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 1, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_00AA08[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_00AA08.vtx.inc"
};

Gfx spot16_room_0DL_00AA48[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot16_scene_Tex_01AE98, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(spot16_room_0Vtx_00AA08, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot16_room_0Vtx_00AAB8[] = {
#include "assets/scenes/overworld/spot16/spot16_room_0Vtx_00AAB8.vtx.inc"
};

Gfx spot16_room_0DL_00ABC8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot16_room_0Vtx_00AAB8[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot16_sceneTex_019E98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 254),
    gsSPVertex(spot16_room_0Vtx_00AAB8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot16_sceneTex_01C698, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot16_room_0Vtx_00AAB8[4], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(2, 1, 4, 0),
    gsSPDisplayList(0x08000000),
    gsSPEndDisplayList(),
};

u8 spot16_room_0_unaccounted_00ACE8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA5, 0xA8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA6, 0xF8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA8, 0xE8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xAB, 0xC8, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

