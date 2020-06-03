#include <global.h>

static s16 sFloorTexIndexOffset[10][8] = {
    { 0, 0, 0, 0, 2, 4, 6, 8 }, { 0, 0, 0, 0, 0, 0, 0, 2 }, { 0, 0, 0, 0, 0, 0, 0, 2 }, { 0, 0, 0, 0, 0, 2, 4, 6 },
    { 0, 0, 0, 0, 2, 4, 6, 8 }, { 0, 0, 0, 0, 0, 2, 4, 6 }, { 0, 0, 0, 0, 0, 2, 4, 6 }, { 0, 0, 0, 0, 0, 2, 4, 6 },
    { 0, 0, 0, 0, 0, 0, 2, 4 }, { 0, 0, 0, 0, 0, 0, 0, 0 },
};

static s16 sBossFloor[8] = {
    7, 7, 6, 7, 7, 4, 5, 7,
};

static s16 sRoomPalette[10][32] = {
    { 10, 1, 2, 10, 4, 5, 6, 7, 8, 10, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 1, 3, 5, 6, 10, 3, 9, 2, 4, 2, 4, 7, 7, 8, 13, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 3, 1, 2, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 9, 1, 2, 3, 6, 5, 6, 7, 8, 8, 5, 4, 3, 13, 11, 10, 11, 2, 13, 12, 10, 12, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 1, 6, 7, 2, 3, 4, 6, 10, 6, 10, 7, 9, 11, 1, 12, 3, 11, 4, 5, 8, 9, 10, 11, 12, 13, 2, 0, 0, 0, 0, 0, 0 },
    { 1, 2, 10, 3, 3, 4, 5, 13, 5, 6, 7, 8, 7, 9, 8, 9, 11, 10, 12, 11, 12, 13, 9, 7, 8, 12, 0, 0, 0, 0, 0, 0 },
    { 10, 1, 2, 3, 4, 5, 10, 7, 8, 9, 10, 6, 12, 13, 11, 8, 13, 1, 2, 3, 4, 11, 6, 12, 8, 5, 10, 9, 6, 0, 0, 0 },
    { 13, 1, 5, 4, 4, 5, 3, 7, 8, 9, 10, 11, 12, 13, 2, 5, 1, 1, 6, 7, 8, 3, 9, 7, 8, 12, 0, 0, 0, 0, 0, 0 },
    { 13, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
};

static s16 sMaxPaletteCount[10] = {
    6, 11, 12, 14, 11, 13, 13, 13, 7, 12,
};

static s16 sPaletteRoom[10][8][14] = {
    {
        { 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 10, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 1, 2, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 3, 4, 5, 6, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 9, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0 },
    },
    {
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0 },
        { 0, 2, 3, 5, 6, 9, 10, 12, 255, 255, 255, 0, 0, 0 },
        { 0, 1, 2, 3, 4, 7, 8, 11, 13, 14, 15, 0, 0, 0 },
    },
    {
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0 },
        { 0, 1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 0, 0 },
        { 1, 3, 6, 13, 14, 255, 255, 255, 255, 255, 255, 255, 0, 0 },
    },
    {
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255 },
        { 0, 6, 7, 8, 10, 11, 12, 13, 14, 19, 20, 255, 255, 255 },
        { 0, 1, 2, 3, 4, 5, 6, 7, 8, 11, 15, 16, 18, 21 },
        { 9, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255 },
        { 17, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255 },
    },
    {
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0 },
        { 7, 8, 12, 13, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0 },
        { 5, 6, 7, 10, 11, 12, 13, 14, 24, 255, 255, 0, 0, 0 },
        { 4, 5, 6, 9, 10, 11, 16, 23, 24, 25, 255, 0, 0, 0 },
        { 4, 6, 10, 21, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0 },
        { 0, 1, 2, 3, 15, 17, 18, 19, 20, 21, 22, 0, 0, 0 },
    },
    {
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 0, 1, 4, 5, 6, 7, 10, 11, 13, 17, 19, 20, 255, 0 },
        { 0, 1, 4, 5, 6, 10, 17, 20, 21, 255, 255, 255, 255, 0 },
        { 0, 1, 3, 5, 8, 9, 12, 14, 15, 16, 17, 18, 21, 0 },
        { 0, 1, 2, 3, 5, 8, 9, 12, 14, 15, 255, 255, 255, 0 },
    },
    {
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 22, 23, 24, 25, 26, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 5, 7, 8, 9, 10, 11, 16, 17, 18, 19, 20, 21, 23, 0 },
        { 4, 5, 6, 15, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 0, 1, 2, 3, 4, 12, 13, 14, 15, 27, 255, 255, 255, 0 },
    },
    {
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 0, 1, 2, 4, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 5, 6, 7, 8, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 8, 9, 12, 14, 16, 21, 255, 255, 255, 255, 255, 255, 255, 0 },
        { 3, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19, 20, 21, 0 },
    },
    {
        { 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 1, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0 },
        { 1, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0 },
    },
    {
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0 },
        { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0 },
        { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 0, 0 },
    },
};

static s16 sRoomCompassOffsetX[10][44] = {
    { 1090, 1390, 1560, 1220, 1200, 1390, 1770, 1610, 2000, 1290, 1420, 1110, 1040, 470, 790,
      1570, 720,  1000, 1580, 70,   0,    0,    0,    0,    0,    0,    0,    0,    0,   0,
      0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0 },
    { 940, 320, 1500, 240, 580, 1510, 720, 1030, 800, 660, 180, 520, 310, 550, 790, 1650, 1000, 1570, 80, 70, 0, 0,
      0,   0,   0,    0,   0,   0,    0,   0,    0,   0,   0,   0,   0,   0,   0,   0,    0,    0,    0,  0,  0, 0 },
    { 1130, 1070, 1090, 1160, 1500, 690, 1540, 920, 1160, 700, 1650, 950, 1380, 1460, 830, 1170, 1620, 0, 0, 0, 0, 0,
      0,    0,    0,    0,    0,    0,   0,    0,   0,    0,   0,    0,   0,    0,    0,   0,    0,    0, 0, 0, 0, 0 },
    { 1130, 1170, 965,  890,  1170, 1460, 1170, 800,  1320, 880, 1130, 1590, 1390, 830, 610,
      580,  710,  980,  1640, 1510, 590,  1610, 1130, 1130, 820, 1320, 1620, 0,    0,   0,
      0,    1300, 1270, 0,    0,    0,    0,    0,    0,    0,   0,    0,    0,    0 },
    { 1160, 620,  1330, 1280, 440,  600,  810, 830,  720, 1170, 1490, 1640, 1870, 1800, 1610,
      1130, 860,  1310, 1140, 850,  760,  380, 800,  800, 1930, 1410, 640,  845,  810,  810,
      850,  1390, 1540, 1650, 1880, 1530, 420, 1950, 0,   0,    0,    0,    0,    0 },
    { 1120, 1290, 1120, 1380, 930,  1520, 1980, 2010, 1590, 1510, 1500, 1300, 1240, 1800, 1290,
      1450, 1560, 880,  820,  820,  1060, 1670, 1120, 1130, 1130, 1290, 1290, 1280, 1390, 940,
      1520, 1520, 1980, 1620, 1510, 1490, 1240, 1290, 1450, 880,  880,  1060, 1670, 1520 },
    { 800, 1500, 1370, 1730, 1590, 1020, 1060, 1470, 1600, 1830, 1630, 2000, 650,  660,  1020,
      880, 940,  720,  570,  620,  570,  550,  970,  920,  1040, 1150, 1200, 1550, 1520, 1020,
      820, 1010, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0 },
    { 1320, 1320, 1090, 1510, 1480, 940, 920, 910, 800, 820,  1150, 1000, 1800, 1660, 1090,
      1630, 710,  1670, 830,  770,  800, 850, 830, 820, 1800, 1090, 850,  0,    0,    0,
      0,    0,    0,    0,    0,    0,   0,   0,   0,   0,    0,    0,    0,    0 },
    { 1080, 1420, 1620, 1040, 940, 1190, 1310, 1090, 1380, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0,    0,    0,    0,    0,   0,    0,    0,    0,    0,    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    {
        1070, 1180, 1270, 990, 1280, 1450, 1680, 1530, 760, 860, 1500, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0,    0,    0,    0,   0,    0,    0,    0,    0,   0,   0,    0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    },
};

static s16 sRoomCompassOffsetY[10][44] = {
    { -660, -570,  -410, -690,  -500,  -380, -470, -630, -990, -870, -720, -630, -660, -1280, -1910,
      -670, -1220, -870, -1070, -1080, 0,    0,    0,    0,    0,    0,    0,    0,    0,     0,
      0,    0,     0,    0,     0,     0,    0,    0,    0,    0,    0,    0,    0,    0 },
    { -780, -800, -1090, -1230, -1140, -820, -1210, -1430, -1580, -920, -830, -730, -950, -1580, -1910,
      -950, -860, -1070, -1070, -1080, 0,    0,     0,     0,     0,    0,    0,    0,    0,     0,
      0,    0,    0,     0,     0,     0,    0,     0,     0,     0,    0,    0,    0,    0 },
    { -770,  -1320, -1750, -1800, -1360, -1330, -1700, -2280, -2700, -2360, -2360, -2650, -2650, -1600, -1445,
      -1370, -1910, 0,     0,     0,     0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      0,     0,     0,     0,     0,     0,     0,     0,     0,     0,     0,     0,     0,     0 },
    { -660,  -900,  -1040, -1210, -1520, -1190, -1670, -1320, -1310, -1260, -1500, -1080, -1650, -1620, -1090,
      -1390, -1220, -1090, -1290, -1410, -1390, -1600, -660,  -1630, -1290, -1290, -1080, 0,     0,     0,
      0,     -1100, -1280, 0,     0,     0,     0,     0,     0,     0,     0,     0,     0,     0 },
    { -580,  -620, -700, -1150, -710,  -670,  -850, -1000, -720,  -840, -870,  -840, -790,  -1000, -980,
      -900,  -660, -910, -1130, -1230, -1300, -810, -380,  -1270, -820, -1120, -880, -1070, -850,  -850,
      -1060, -640, -900, -850,  -890,  -740,  -880, -840,  0,     0,    0,     0,    0,     0 },
    { -610,  -930,  -770, -680,  -1060, -930, -980,  -1860, -1380, -1050, -830, -1230, -1380, -1330, -1750,
      -1610, -1600, -830, -800,  -820,  -690, -1540, -620,  -790,  -780,  -930, -930,  -870,  -690,  -1050,
      -930,  -930,  -980, -1370, -1050, -800, -1380, -1750, -1610, -840,  -830, -690,  -1540, -930 },
    { -570,  -900, -1070, -1090, -1280, -1160, -920,  -980,  -780, -530,  -350,  -1000, -1440, -1080, -1100,
      -1110, -980, -860,  -790,  -540,  -350,  -1000, -1250, -820, -1070, -1180, -950,  -1380, -1160, -1100,
      -1150, -830, 0,     0,     0,     0,     0,     0,     0,    0,     0,     0,     0,     0 },
    { -940,  -960, -860, -870, -920, -870, -980, -820, -860, -520,  -500, -780, -1050, -1130, -770,
      -1010, -680, -930, -880, -900, -980, -990, -770, -520, -1050, -770, -990, 0,     0,     0,
      0,     0,    0,    0,    0,    0,    0,    0,    0,    0,     0,    0,    0,     0 },
    { -570, -930, -1040, -1100, -800, -1100, -1100, -570, -930, -890, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0,    0,    0,     0,     0,    0,     0,     0,    0,    0,    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    {
        100, -280, -690, -840, -1010, -950, -730, -470, -1130, -1440, -420, -700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0,   0,    0,    0,    0,     0,    0,    0,    0,     0,     0,    0,    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    },
};

static u8 sDgnMinimapCount[12] = {
    13, 19, 17, 27, 38, 44, 32, 27, 10, 12, 0, 0,
};

static u16 sDgnMinimapTexIndexOffset[10] = {
    0, 13, 32, 49, 76, 114, 158, 190, 217, 227,
};

static u16 sOwMinimapTexSize[24] = {
    2920, 2560, 1560, 2784, 2976, 2040, 3240, 2336, 2080, 2600, 1792, 1888,
    3400, 1792, 1888, 2040, 3120, 2304, 2176, 1888, 1560, 3240, 2600, 3400,
};

static u16 sOwMinimapTexOffset[24] = {
    0x0000, 0x0B68, 0x1568, 0x1B80, 0x2660, 0x3200, 0x39F8, 0x46A0, 0x4FC0, 0x57E0, 0x6208, 0x6908,
    0x7068, 0x7DB0, 0x84B0, 0x8C10, 0x9408, 0xA038, 0xA938, 0xB1B8, 0xB918, 0xBF30, 0xCBD8, 0xD600,
};

static s16 sOwMinimapPosX[24] = {
    216, 216, 218, 202, 202, 250, 216, 234, 234, 216, 234, 234,
    216, 234, 234, 250, 216, 234, 234, 234, 218, 80,  80,  216,
};

static s16 sOwMinimapPosY[24] = {
    150, 158, 184, 164, 160, 138, 140, 150, 156, 158, 168, 162,
    138, 168, 162, 138, 146, 150, 154, 162, 218, 81,  65,  216,
};

static s16 sOwCompassInfo[24][4] = {
    { 25, 25, 1080, -360 }, { 7, 6, 1000, -650 },   { 6, 6, 890, -800 },    { 7, 7, 720, -730 },
    { 8, 8, 660, -730 },    { 5, 7, 1220, -660 },   { 13, 13, 1080, -260 }, { 5, 5, 1120, -880 },
    { 8, 8, 1150, -630 },   { 11, 11, 1060, -680 }, { 12, 12, 1100, -720 }, { 11, 11, 930, -710 },
    { 9, 9, 850, -830 },    { 15, 15, 1100, -780 }, { 10, 10, 1030, -540 }, { 10, 9, 1240, -700 },
    { 6, 6, 1030, -620 },   { 5, 5, 1100, -660 },   { 11, 11, 1120, -750 }, { 10, 10, 1070, -580 },
    { 6, 6, 890, -800 },    { 13, 13, 1080, -260 }, { 11, 11, 1060, -680 }, { 9, 9, 850, -830 },
};

static s16 sDgnMinimapTexIndexBase[10] = {
    0, 10, 14, 18, 26, 36, 44, 52, 60, 66,
};

static s16 sDgnCompassInfo[10][4] = {
    { 3, 3, 1070, -690 }, { 4, 4, 1070, -690 }, { 3, 3, 1070, -690 },  { 4, 4, 1070, -690 }, { 4, 4, 1070, -690 },
    { 4, 4, 900, -640 },  { 3, 3, 900, -640 },  { 10, 10, 900, -640 }, { 5, 5, 900, -640 },  { 3, 3, 900, -640 },
};

static s16 sOwMinimapWidth[24] = {
    80, 80, 80, 96, 96, 48, 80, 64, 64, 80, 64, 64, 80, 64, 64, 48, 80, 64, 64, 64, 80, 80, 80, 80,
};

static s16 sOwMinimapHeight[24] = {
    73, 64, 39, 58, 62, 85, 81, 73, 65, 65, 56, 59, 85, 56, 59, 85, 78, 72, 68, 59, 39, 81, 65, 85,
};

static s16 sOwEntranceIconPosX[24] = {
    1, 269, 1, 1, 273, 279, 259, 1, 260, 1, 1, 235, 1, 1, 1, 267, 261, 1, 1, 260, 294, 259, 1, 243,
};

static s16 sOwEntranceIconPosY[24] = {
    0, -833, 0, 0, -850, -889, -829, 0, -844, 0, 0, -836, 0, 0, 0, -852, -873, 0, 0, -848, -825, -829, 0, -833,
};

static u16 sOwEntranceFlag[20] = {
    0xFFFF, 0x0008, 0x0007, 0xFFFF, 0x0000, 0x0003, 0x0005, 0xFFFF, 0x0002, 0xFFFF,
    0xFFFF, 0x0006, 0x000B, 0xFFFF, 0xFFFF, 0x0001, 0x0004, 0xFFFF, 0xFFFF, 0x000D,
};

static f32 sFloorCoordY[10][8] = {
    { 9999.0, 9999.0, 9999.0, 760.0, 360.0, -40.0, -1000.0, -2000.0 },
    { 9999.0, 9999.0, 9999.0, 9999.0, 9999.0, 9999.0, 280.0, -440.0 },
    { 9999.0, 9999.0, 9999.0, 9999.0, 9999.0, 9999.0, -640.0, -3000.0 },
    { 9999.0, 9999.0, 9999.0, 9999.0, 760.0, -40.0, -440.0, -3000.0 },
    { 9999.0, 9999.0, 9999.0, 4360.0, 3640.0, 2760.0, 2020.0, -140.0 },
    { 9999.0, 9999.0, 9999.0, 9999.0, 690.0, 330.0, -160.0, -3000.0 },
    { 9999.0, 9999.0, 9999.0, 9999.0, 1480.0, 760.0, 280.0, -3000.0 },
    { 9999.0, 9999.0, 9999.0, 9999.0, -343.3, -863.3, -1143.3, -3000.0 },
    { 9999.0, 9999.0, 9999.0, 9999.0, 9999.0, -100.0, -520.0, -3000.0 },
    { 9999.0, 9999.0, 9999.0, 9999.0, 9999.0, 9999.0, 9999.0, -3000.0 },
};

static u16 sSwitchEntryCount[10] = { 5, 6, 4, 10, 25, 50, 8, 10, 6, 1 };

static u8 sSwitchFromRoom[10 * 51 + 2] = {
    11, 0,  0,  12, 11, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  2,  3,   16, 17, 18, 0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  6,  15, 16, 0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  7,  8,  11, 22, 23, 24, 25, 26, 0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  21, 4,  6,  10, 5,  11, 24, 28, 31, 10, 7,  12, 13, 30, 34, 35, 27, 33, 37, 29, 32, 26, 28, 31,  36, 0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,   4,  5,  6,  10,
    17, 20, 0,  1,  22, 25, 30, 39, 21, 17, 0,  1,  23, 26, 3,  9,  12, 14, 15, 31, 8,  24, 27, 28, 33,  36, 37, 38, 43,
    34, 23, 26, 31, 40, 42, 17, 22, 25, 29, 30, 32, 35, 39, 41, 0,  4,  15, 5,  23, 31, 29, 28, 30, 0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  8,  9,  12, 14, 21, 23, 24, 25, 26, 22, 0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  1,  8,  9,  7,  8,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  255, 0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
};

static u8 sSwitchFromFloor[10 * 51 + 2] = {
    3, 4, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6,   6, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 6, 6, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, 0, 0, 6, 5, 5, 5, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 5, 5,
    5, 5, 5, 6, 6, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 5, 5,
    5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7,   7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5,
    5, 4, 4, 4, 4, 4, 4, 4, 4, 0, 6, 6, 5, 4, 5, 6,   7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, 0, 0, 0, 0, 0, 0, 0, 6, 7, 7, 7, 7, 6, 6, 6, 6, 5, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 6, 6, 7, 6, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
};

static u8 sSwitchToRoom[10 * 51 + 2] = {
    12, 11, 12, 11, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  16, 17, 18,  0,  2,  3,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  15, 16, 1,  6,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  22, 23, 24, 25, 26, 0,  6,  7,  8,  11, 0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  36, 26, 28, 31, 27, 33, 37, 29, 32, 32, 30, 34, 35, 7,  12, 13, 5,  11, 24, 28, 31, 4,  6,  10,  21, 0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  22, 25,  29, 30, 32, 35,
    39, 41, 23, 26, 23, 26, 31, 40, 42, 40, 24, 27, 24, 27, 28, 34, 36, 37, 38, 43, 33, 23, 26, 3,  8,   12, 14, 15, 31,
    9,  22, 25, 30, 39, 21, 39, 0,  1,  4,  5,  6,  10, 17, 20, 0,  28, 30, 29, 31, 23, 5,  4,  15, 0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  22, 23, 24, 25, 26, 9,  12, 14, 21, 8,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  7,  8,  9,  8,  0,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  255, 0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
};

static u8 sFloorNames[10][8] = {
    /* clang-format off */
    {    0,    0,    0, F_3F, F_2F, F_1F, F_B1, F_B2 }, 
    {    0,    0,    0,    0,    0,    0, F_2F, F_1F },
    {    0,    0,    0,    0,    0,    0, F_1F, F_B1 },          
    {    0,    0,    0,    0, F_2F, F_1F, F_B1, F_B2 },
    {    0,    0,    0, F_5F, F_4F, F_3F, F_2F, F_1F }, 
    {    0,    0,    0,    0, F_3F, F_2F, F_1F, F_B1 },
    {    0,    0,    0,    0, F_4F, F_3F, F_2F, F_1F },    
    {    0,    0,    0,    0, F_B1, F_B2, F_B3, F_B4 },
    {    0,    0,    0,    0,    0, F_B1, F_B2, F_B3 },       
    {    0,    0,    0,    0,    0,    0,    0, F_1F },
}; /* clang-format on */

/* Y coord of big skull icon on map screen, relative to center of screen.
   -99 if no dungeon map, otherwise (51 - 14 * FloorNumber) */
static s16 sSkullFloorIconY[10] = { -47, -47, -33, -47, -47, -5, -19, -47, -99, -99 };

MapData gMapDataTable = {
    sFloorTexIndexOffset,
    sBossFloor,
    sRoomPalette,
    sMaxPaletteCount,
    sPaletteRoom,
    sRoomCompassOffsetX,
    sRoomCompassOffsetY,
    sDgnMinimapCount,
    sDgnMinimapTexIndexOffset,
    sOwMinimapTexSize,
    sOwMinimapTexOffset,
    sOwMinimapPosX,
    sOwMinimapPosY,
    sOwCompassInfo,
    sDgnMinimapTexIndexBase,
    sDgnCompassInfo,
    sOwMinimapWidth,
    sOwMinimapHeight,
    sOwEntranceIconPosX,
    sOwEntranceIconPosY,
    sOwEntranceFlag,
    sFloorCoordY,
    sSwitchEntryCount,

    /* These are declared as 2D arrays, but each requires a 2-byte null terminator,
       so, we define them as 1D arrays here and cast the pointer. */
    (void*)sSwitchFromRoom,
    (void*)sSwitchFromFloor,
    (void*)sSwitchToRoom,

    sFloorNames,
    sSkullFloorIconY,
};
