#include <ultra64.h>
#include <global.h>

#define RELOAD_PARAMS (camera->animState == 0 || camera->animState == 0xA || camera->animState == 0x14 || R_RELOAD_CAM_PARAMS)

#define PCT(x) ((x) * 0.01f)
#define NEXTSETTING ((values++)->val)
#define NEXTPCT PCT(NEXTSETTING)

/*==================================================================*/
// Data
s16 sOREGInit[] = {
    0,   1,   5,  5,  5,   14500, 20,  16, 150, 25,   150, 6,  10, 10, 0,  0,   1,     100,
    250, 120, 80, 30, 120, 4,     1,   50, 20,  1800, 50,  50, 50, 20, 20, -10, -5460, -9100,
    -6,  8,   15, 75, 60,  12,    110, 40, 50,  250,  -10, 30, 30, 70, 20, 20,  20,
};

s16 sOREGInitCnt = 53;

s16 sPREGInit[] = {
    -20, 200, 300, 10, 12, 10, 35, 60, 60, 3, 0, -40, 20, 25, 45, -5, 15, 15, 20, 0, 0, 0, 6, 60, 30, 0, 5,
};

s16 sPREGInitCnt = 27;

char sCameraSettingNames[][12] = {
    "NONE      ",  "NORMAL0    ", "NORMAL1    ", "DUNGEON0   ", "DUNGEON1   ", "NORMAL3    ", "HORSE0     ",
    "BOSS_GOMA  ", "BOSS_DODO  ", "BOSS_BARI  ", "BOSS_FGANON", "BOSS_BAL   ", "BOSS_SHADES", "BOSS_MOFA  ",
    "BOSS_TWIN0 ", "BOSS_TWIN1 ", "BOSS_GANON1", "BOSS_GANON2", "TOWER0     ", "TOWER1     ", "FIXED0     ",
    "FIXED1     ", "CIRCLE0    ", "CIRCLE2    ", "CIRCLE3    ", "PREREND0   ", "PREREND1   ", "PREREND3   ",
    "DOOR0      ", "DOORC      ", "RAIL3      ", "START0     ", "START1     ", "FREE0      ", "FREE2      ",
    "CIRCLE4    ", "CIRCLE5    ", "DEMO0      ", "DEMO1      ", "MORI1      ", "ITEM0      ", "ITEM1      ",
    "DEMO3      ", "DEMO4      ", "UFOBEAN    ", "LIFTBEAN   ", "SCENE0     ", "SCENE1     ", "HIDAN1     ",
    "HIDAN2     ", "MORI2      ", "MORI3      ", "TAKO       ", "SPOT05A    ", "SPOT05B    ", "HIDAN3     ",
    "ITEM2      ", "CIRCLE6    ", "NORMAL2    ", "FISHING    ", "DEMOC      ", "UO_FIBER   ", "DUNGEON2   ",
    "TEPPEN     ", "CIRCLE7    ", "NORMAL4    ",
};

char sCameraModeNames[][12] = {
    "NORMAL     ", "PARALLEL   ", "KEEPON     ", "TALK       ", "BATTLE     ", "CLIMB      ", "SUBJECT    ",
    "BOWARROW   ", "BOWARROWZ  ", "FOOKSHOT   ", "BOOMERANG  ", "PACHINCO   ", "CLIMBZ     ", "JUMP       ",
    "HANG       ", "HANGZ      ", "FREEFALL   ", "CHARGE     ", "STILL      ", "PUSHPULL   ", "BOOKEEPON  ",
};

CameraModeValue D_8011A3A0[] = {
    { -20, 0 }, { 200, 1 }, { 300, 2 }, { 10, 3 }, { 12, 4 }, { 10, 5 }, { 35, 6 }, { 60, 7 }, { 60, 8 }, { 3, 9 },
};

CameraModeValue D_8011A3C8[] = {
    { -20, 0 }, { 250, 1 }, { 0x0000, 3 },
    { 0x0000, 10 }, { 5, 4 }, { 5, 5 },
    { 45, 7 }, { 50, 8 }, { 0x200A, 9 },
    { -40, 11 }, { 20, 12 }
};

CameraModeValue D_8011A3F4[] = {
    { -20, 0 }, { 120, 1 }, { 140, 2 }, { 25, 13 },  { 45, 14 },  { -5, 15 }, { 15, 16 },
    { 15, 17 }, { 45, 7 },  { 50, 8 },  { 8193, 9 }, { -50, 11 }, { 30, 12 },
};

CameraModeValue D_8011A428[] = {
    { -30, 0 }, { 70, 1 },  { 200, 2 }, { 40, 13 }, { 10, 14 }, { 0, 15 },
    { 5, 16 },  { 70, 17 }, { 45, 7 },  { 50, 8 },  { 10, 4 },  { 13568, 9 },
};

CameraModeValue D_8011A458[] = {
    { -20, 0 }, { 180, 1 }, { 10, 13 }, { 80, 14 },  { 0, 15 },   { 10, 16 },
    { 25, 17 }, { 50, 7 },  { 80, 8 },  { 8194, 9 }, { -40, 11 }, { 25, 12 },
};

CameraModeValue D_8011A488[] = {
    { -20, 0 }, { 200, 1 }, { 300, 2 }, { 20, 18 }, { 5, 4 }, { 5, 5 }, { 60, 7 }, { 40, 8 }, { 0, 9 },
};

CameraModeValue D_8011A4AC[] = {
    { 0, 0 }, { 5, 1 }, { 50, 2 }, { 10, 4 }, { 0, 19 }, { 0, 20 }, { 0, 21 }, { 45, 7 }, { 0, 9 },
};

CameraModeValue D_8011A4D0[] = {
    { -7, 0 }, { 14, 1 }, { 50, 2 }, { 10, 4 }, { 0, 19 }, { -30, 20 }, { -5, 21 }, { 45, 7 }, { 8192, 9 },
};

CameraModeValue D_8011A4F4[] = {
    { 20, 0 }, { 70, 1 }, { 70, 2 }, { 10, 4 }, { -120, 19 }, { 20, 20 }, { 0, 21 }, { 45, 7 }, { 8192, 9 },
};

CameraModeValue D_8011A518[] = {
    { -20, 0 }, { 80, 1 }, { 250, 2 }, { 45, 3 }, { 60, 7 }, { 40, 8 }, { 6, 22 }, { 0x2000, 9 }, 
};

CameraModeValue D_8011A538[] = {
    { 5, 0 }, { 50, 1 }, { 50, 2 }, { 10, 4 }, { 0, 19 }, { 0, 20 }, { 0, 21 }, { 45, 7 }, { 8192, 9 },
};

CameraModeValue D_8011A55C[] = {
    { -7, 0 }, { 14, 1 }, { 50, 2 }, { 10, 4 }, { -9, 19 }, { -63, 20 }, { -30, 21 }, { 45, 7 }, { 8192, 9 },
};

CameraModeValue D_8011A580[] = {
    { -20, 0 }, { 200, 1 }, { 300, 2 }, { 20, 18 }, { 999, 4 }, { 5, 5 }, { 60, 7 }, { 40, 8 }, { 8198, 9 },
};

CameraModeValue D_8011A5A4[] = {
    { -20, 0 }, { 200, 1 }, { 300, 2 }, { 12, 4 }, { 35, 6 }, { 60, 7 }, { 40, 8 }, { 0, 9 },
};

CameraModeValue D_8011A5C4[] = {
    { -80, 0 }, { 200, 1 }, { 300, 2 }, { 40, 3 }, { 60, 7 }, { 10, 8 }, { 0x0000, 9 }
};

CameraModeValue D_8011A5E0[] = {
    { -120, 0 }, { 300, 1 }, { 300, 2 }, { 70, 3 }, { 45, 7 }, { 10, 8 }, { 0x2000, 9 }
};

CameraModeValue D_8011A5FC[] = {
    { -20, 0 }, { 200, 1 }, { 300, 2 }, { 15, 4 }, { 80, 6 }, { 60, 7 }, { 20, 8 }, { 0, 9 },
};

CameraModeValue D_8011A61C[] = {
    { -20, 0 }, { 300, 1 }, { 50, 3 }, { 2, 4 }, { 80, 7 }, { 20, 8 }, { 0xF000, 9 },
};

CameraModeValue D_8011A638[] = {
    { -20, 0 }, { 200, 1 }, { 300, 2 }, { 10, 3 }, { 100, 4 }, { 10, 5 }, { 100, 6 }, { 60, 7 }, { 5, 8 }, { -4093, 9 },
};

CameraModeValue D_8011A660[] = {
    { 0, 0 },  { 250, 1 }, { 25, 3 },   { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 70, 7 }, { 30, 8 },  { 8298, 9 }, { -20, 11 }, { 30, 12 },
};

CameraModeValue D_8011A68C[] = {
    { -5, 0 },  { 120, 1 }, { 140, 2 }, { 5, 13 },   { 85, 14 },  { 10, 15 }, { 5, 16 },
    { 25, 17 }, { 45, 7 },  { 50, 8 },  { 8193, 9 }, { -15, 11 }, { 30, 12 },
};

CameraModeValue D_8011A6C0[] = {
    { 0, 0 }, { 200, 1 }, { 400, 2 }, { 10, 3 }, { 12, 4 }, { 20, 5 }, { 40, 6 }, { 60, 7 }, { 60, 8 }, { 3, 9 },
};

CameraModeValue D_8011A6E8[] = {
    { 0, 0 },  { 250, 1 }, { 0, 3 },    { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 45, 7 }, { 50, 8 },  { 8194, 9 }, { -40, 11 }, { 20, 12 },
};

CameraModeValue D_8011A714[] = {
    { -20, 0 }, { 120, 1 }, { 140, 2 }, { 25, 13 },  { 45, 14 },  { -5, 15 }, { 15, 16 },
    { 15, 17 }, { 45, 7 },  { 50, 8 },  { 8193, 9 }, { -50, 11 }, { 20, 12 },
};

CameraModeValue D_8011A748[] = {
    { -20, 0 }, { 250, 1 }, { 10, 13 }, { 80, 14 },  { 0, 15 },   { 10, 16 },
    { 25, 17 }, { 50, 7 },  { 65, 8 },  { 8194, 9 }, { -40, 11 }, { 25, 12 },
};

CameraModeValue D_8011A778[] = {
    { -20, 0 }, { 80, 1 }, { 250, 2 }, { 6, 22 }, { 45, 3 }, { 60, 7 }, { 40, 8 }, { 0x2000, 9 },
};

CameraModeValue D_8011A798[] = {
    { 0, 0 }, { 250, 1 }, { 400, 2 }, { 15, 4 }, { 50, 6 }, { 60, 7 }, { 30, 8 }, { 0, 9 },
};

CameraModeValue D_8011A7B8[] = {
    { 0, 0 }, { 200, 1 }, { 400, 2 }, { 30, 4 }, { 80, 6 }, { 60, 7 }, { 20, 8 }, { 0, 9 },
};

CameraModeValue D_8011A7D8[] = {
    { -20, 0 }, { 200, 1 }, { 400, 2 }, { 20, 18 }, { 5, 4 }, { 5, 5 }, { 60, 7 }, { 40, 8 }, { 0, 9 },
};

CameraModeValue D_8011A7FC[] = {
    { -20, 0 }, { 250, 1 }, { 400, 2 }, { 20, 18 }, { 999, 4 }, { 5, 5 }, { 60, 7 }, { 40, 8 }, { 8198, 9 },
};

CameraModeValue D_8011A820[] = {
    { 0, 0 }, { 300, 1 }, { 50, 3 }, { 2, 4 }, { 80, 7 }, { 20, 8 }, { 0xF000, 9 },
};

CameraModeValue D_8011A83C[] = {
    { -80, 0 }, { 200, 1 }, { 400, 2 }, { 40, 3 }, { 60, 7 }, { 10, 8 }, { 0x0000, 9 }
};

CameraModeValue D_8011A858[] = {
    { -120, 0 }, { 400, 1 }, { 400, 2 }, { 70, 3 }, { 45, 7 }, { 10, 8 }, { 0x2000, 9 }
};

CameraModeValue D_8011A874[] = {
    { 0, 0 }, { 200, 1 }, { 400, 2 }, { 10, 3 }, { 100, 4 }, { 20, 5 }, { 100, 6 }, { 60, 7 }, { 5, 8 }, { -4093, 9 },
};

CameraModeValue D_8011A89C[] = {
    { -10, 0 }, { 150, 1 }, { 250, 2 }, { 5, 3 }, { 10, 4 }, { 5, 5 }, { 30, 6 }, { 60, 7 }, { 60, 8 }, { 3, 9 },
};

CameraModeValue D_8011A8C4[] = {
    { -20, 0 }, { 150, 1 }, { 0, 3 },    { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 45, 7 },  { 50, 8 },  { 8202, 9 }, { -40, 11 }, { 20, 12 },
};

CameraModeValue D_8011A8F0[] = {
    { -20, 0 }, { 120, 1 }, { 140, 2 }, { 25, 13 },  { 45, 14 },  { -5, 15 }, { 15, 16 },
    { 15, 17 }, { 45, 7 },  { 50, 8 },  { 8193, 9 }, { -40, 11 }, { 20, 12 },
};

CameraModeValue D_8011A924[] = {
    { -20, 0 }, { 180, 1 }, { 10, 13 }, { 80, 14 },  { 0, 15 },   { 10, 16 },
    { 25, 17 }, { 45, 7 },  { 80, 8 },  { 8194, 9 }, { -40, 11 }, { 25, 12 },
};

CameraModeValue D_8011A954[] = {
    { -10, 0 }, { 150, 1 }, { 250, 2 }, { 10, 4 }, { 50, 6 }, { 60, 7 }, { 40, 8 }, { 0, 9 },
};

CameraModeValue D_8011A974[] = {
    { -10, 0 }, { 150, 1 }, { 250, 2 }, { 10, 4 }, { 80, 6 }, { 60, 7 }, { 20, 8 }, { 0, 9 },
};

CameraModeValue D_8011A994[] = {
    { -40, 0 }, { 150, 1 }, { 250, 2 }, { 20, 18 }, { 5, 4 }, { 5, 5 }, { 60, 7 }, { 40, 8 }, { 0, 9 },
};

CameraModeValue D_8011A9B8[] = {
    { -40, 0 }, { 250, 1 }, { 250, 2 }, { 20, 18 }, { 999, 4 }, { 5, 5 }, { 60, 7 }, { 40, 8 }, { 8198, 9 },
};

CameraModeValue D_8011A9DC[] = {
    { -10, 0 }, { 300, 1 }, { 50, 3 }, { 2, 4 }, { 80, 7 }, { 20, 8 }, { 0xF000, 9 },
};

CameraModeValue D_8011A9F8[] = {
    { -80, 0 }, { 150, 1 }, { 250, 2 }, { 40, 3 }, { 60, 7 }, { 10, 8 }, { 0x0000, 9 }
};

CameraModeValue D_8011AA14[] = {
    { -120, 0 }, { 250, 1 }, { 250, 2 }, { 70, 3 }, { 45, 7 }, { 10, 8 }, { 0x2000, 9 }
};

CameraModeValue D_8011AA30[] = {
    { -10, 0 }, { 150, 1 }, { 250, 2 }, { 5, 3 }, { 100, 4 }, { 5, 5 }, { 100, 6 }, { 60, 7 }, { 5, 8 }, { -4093, 9 },
};

CameraModeValue D_8011AA58[] = {
    { -40, 0 }, { 150, 1 }, { 150, 2 }, { 0, 3 }, { 10, 4 }, { 5, 5 }, { 30, 6 }, { 60, 7 }, { 60, 8 }, { 3, 9 },
};

CameraModeValue D_8011AA80[] = {
    { -20, 0 }, { 70, 1 },  { 200, 2 }, { 40, 13 }, { 10, 14 }, { 0, 15 },
    { 5, 16 },  { 70, 17 }, { 45, 7 },  { 50, 8 },  { 10, 4 },  { 13568, 9 },
};

CameraModeValue D_8011AAB0[] = {
    { -40, 0 }, { 150, 1 }, { 150, 2 }, { 10, 4 }, { 50, 6 }, { 60, 7 }, { 40, 8 }, { 0, 9 },
};

CameraModeValue D_8011AAD0[] = {
    { -40, 0 }, { 150, 1 }, { 180, 2 }, { 12, 4 }, { 80, 6 }, { 60, 7 }, { 20, 8 }, { 0, 9 },
};

CameraModeValue D_8011AAF0[] = {
    { -40, 0 }, { 150, 1 }, { 150, 2 }, { 20, 18 }, { 5, 4 }, { 5, 5 }, { 60, 7 }, { 40, 8 }, { 0, 9 },
};

CameraModeValue D_8011AB14[] = {
    { -40, 0 }, { 150, 1 }, { 150, 2 }, { 20, 18 }, { 999, 4 }, { 5, 5 }, { 60, 7 }, { 40, 8 }, { 8198, 9 },
};

CameraModeValue D_8011AB38[] = {
    { -40, 0 }, { 200, 1 }, { 50, 3 }, { 2, 4 }, { 80, 7 }, { 20, 8 }, { 0xF000, 9 },
};

CameraModeValue D_8011AB54[] = {
    { -80, 0 }, { 150, 1 }, { 150, 2 }, { 40, 3 }, { 60, 7 }, { 10, 8 }, { 0x0000, 9 }
};

CameraModeValue D_8011AB70[] = {
    { -120, 0 }, { 150, 1 }, { 150, 2 }, { 70, 3 }, { 45, 7 }, { 10, 8 }, { 0x2000, 9 }
};

CameraModeValue D_8011AB8C[] = {
    { -40, 0 }, { 150, 1 }, { 150, 2 }, { 0, 3 }, { 100, 4 }, { 5, 5 }, { 100, 6 }, { 60, 7 }, { 5, 8 }, { -4093, 9 },
};

CameraModeValue D_8011ABB4[] = {
    { -40, 0 }, { 180, 1 }, { 25, 3 },   { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 60, 7 },  { 50, 8 },  { 8298, 9 }, { -20, 11 }, { 30, 12 },
};

CameraModeValue D_8011ABE0[] = {
    { -20, 0 }, { 280, 1 }, { 300, 2 }, { 20, 3 }, { 15, 4 }, { 5, 5 }, { 40, 6 }, { 60, 7 }, { 100, 8 }, { 4, 9 },
};

CameraModeValue D_8011AC08[] = {
    { -50, 0 }, { 250, 1 }, { 70, 3 },   { 0, 10 },   { 15, 4 },  { 5, 5 },
    { 60, 7 },  { 100, 8 }, { 8202, 9 }, { -50, 11 }, { 20, 12 },
};

CameraModeValue D_8011AC34[] = {
    { -30, 0 }, { 70, 1 },  { 200, 2 }, { 40, 13 }, { 10, 14 }, { 10, 15 },
    { 20, 16 }, { 70, 17 }, { 45, 7 },  { 10, 8 },  { 10, 4 },  { 13568, 9 },
};

CameraModeValue D_8011AC64[] = {
    { -40, 0 }, { 150, 1 }, { 250, 2 }, { -5, 3 }, { 18, 4 }, { 5, 5 }, { 60, 6 }, { 60, 7 }, { 40, 8 }, { 5, 9 },
};

CameraModeValue D_8011AC8C[] = {
    { -50, 0 }, { 220, 1 }, { 250, 2 }, { 10, 3 }, { 16, 4 }, { 20, 5 }, { 60, 7 }, { 100, 8 }, { 1536, 9 },
};

CameraModeValue D_8011ACB0[] = {
    { -40, 0 }, { 180, 1 }, { 220, 2 }, { -2, 3 }, { 12, 4 }, { 100, 5 }, { 45, 7 }, { 100, 8 }, { 9728, 9 },
};

CameraModeValue D_8011ACD4[] = {
    { -7, 0 }, { 14, 1 }, { 100, 2 }, { 10, 4 }, { 0, 19 }, { -30, 20 }, { -5, 21 }, { 40, 7 }, { 9728, 9 },
};

CameraModeValue D_8011ACF8[] = {
    { -60, 0 }, { 180, 1 }, { 220, 2 }, { 25, 13 },  { 45, 14 },  { -5, 15 }, { 15, 16 },
    { 15, 17 }, { 45, 7 },  { 50, 8 },  { 9729, 9 }, { -60, 11 }, { 20, 12 },
};

CameraModeValue D_8011AD2C[] = {
    { -60, 0 }, { 140, 1 }, { 200, 2 }, { 40, 13 }, { 10, 14 }, { 0, 15 },
    { 5, 16 },  { 70, 17 }, { 45, 7 },  { 50, 8 },  { 10, 4 },  { 13568, 9 },
};

CameraModeValue D_8011AD5C[] = {
    { -20, 0 }, { 150, 1 }, { 250, 2 }, { 0, 3 }, { 15, 4 }, { 5, 5 }, { 40, 6 }, { 60, 7 }, { 60, 8 }, { 1, 9 },
};

CameraModeValue D_8011AD84[] = {
    { -30, 0 }, { 150, 1 }, { 10, 13 }, { 40, 14 },  { -10, 15 }, { 0, 16 },
    { 25, 17 }, { 60, 7 },  { 40, 8 },  { 8194, 9 }, { -50, 11 }, { 20, 12 },
};

CameraModeValue D_8011ADB4[] = {
    { 0, 0 }, { 150, 1 }, { 300, 2 }, { 0, 3 }, { 12, 4 }, { 5, 5 }, { 70, 6 }, { 70, 7 }, { 40, 8 }, { 3, 9 },
};

CameraModeValue D_8011ADDC[] = {
    { -20, 0 }, { 160, 1 }, { 10, 13 }, { 60, 14 },  { -5, 15 },  { 0, 16 },
    { 25, 17 }, { 70, 7 },  { 50, 8 },  { 8194, 9 }, { -40, 11 }, { 20, 12 },
};

CameraModeValue D_8011AE0C[] = {
    { -20, 0 }, { 150, 1 }, { 300, 2 }, { -5, 3 }, { 15, 4 }, { 5, 5 }, { 40, 6 }, { 70, 7 }, { 70, 8 }, { 3, 9 },
};

CameraModeValue D_8011AE34[] = {
    { -30, 0 }, { 125, 1 }, { 10, 13 }, { 10, 14 },  { 0, 15 },   { 0, 16 },
    { 50, 17 }, { 60, 7 },  { 50, 8 },  { 8194, 9 }, { -50, 11 }, { 20, 12 },
};

CameraModeValue D_8011AE64[] = {
    { 10, 0 }, { 150, 1 }, { 250, 2 }, { 0, 3 }, { 15, 4 }, { 15, 5 }, { 40, 6 }, { 60, 7 }, { 100, 8 }, { 3, 9 },
};

CameraModeValue D_8011AE8C[] = {
    { -20, 0 }, { 200, 1 }, { 45, 13 }, { 40, 14 },  { 5, 15 },   { -5, 16 },
    { 35, 17 }, { 60, 7 },  { 100, 8 }, { 8194, 9 }, { -40, 11 }, { 60, 12 },
};

CameraModeValue D_8011AEBC[] = {
    { -20, 0 }, { 500, 1 }, { 500, 2 }, { 10, 3 }, { 16, 4 }, { 10, 5 }, { 40, 6 }, { 60, 7 }, { 80, 8 }, { 3, 9 },
};

CameraModeValue D_8011AEE4[] = {
    { -20, 0 }, { 200, 1 }, { 20, 13 }, { 60, 14 },  { 0, 15 },   { 10, 16 },
    { 15, 17 }, { 45, 7 },  { 50, 8 },  { 8194, 9 }, { -40, 11 }, { 20, 12 },
};

CameraModeValue D_8011AF14[] = {
    { -20, 0 }, { 500, 1 }, { 500, 2 }, { 10, 3 }, { 20, 4 }, { 10, 5 }, { 40, 6 }, { 60, 7 }, { 80, 8 }, { 131, 9 },
};

CameraModeValue D_8011AF3C[] = {
    { -20, 0 }, { 200, 1 }, { 20, 13 }, { 60, 14 },  { 0, 15 },   { 10, 16 },
    { 15, 17 }, { 45, 7 },  { 50, 8 },  { 8322, 9 }, { -40, 11 }, { 20, 12 },
};

CameraModeValue D_8011AF6C[] = {
    { -20, 0 }, { 500, 1 }, { 500, 2 }, { 10, 3 }, { 20, 4 }, { 10, 5 }, { 80, 6 }, { 60, 7 }, { 80, 8 }, { 131, 9 },
};

CameraModeValue D_8011AF94[] = {
    { -20, 0 }, { 100, 1 }, { 150, 2 }, { -10, 3 }, { 15, 4 }, { 10, 5 }, { 40, 6 }, { 80, 7 }, { 60, 8 }, { 3, 9 },
};

CameraModeValue D_8011AFBC[] = {
    { -20, 0 }, { 200, 1 }, { 10, 13 }, { 80, 14 },  { -10, 15 }, { 10, 16 },
    { 25, 17 }, { 70, 7 },  { 40, 8 },  { 8194, 9 }, { -40, 11 }, { 20, 12 },
};

CameraModeValue D_8011AFEC[] = {
    { -20, 0 }, { 150, 1 }, { 300, 2 }, { 0, 3 }, { 20, 4 }, { 10, 5 }, { 40, 6 }, { 60, 7 }, { 80, 8 }, { 3, 9 },
};

CameraModeValue D_8011B014[] = {
    { 0, 0 },   { 400, 1 }, { 0, 13 }, { 60, 14 },  { -10, 15 }, { 5, 16 },
    { 25, 17 }, { 45, 7 },  { 40, 8 }, { 8194, 9 }, { -20, 11 }, { 20, 12 },
};

CameraModeValue D_8011B044[] = {
    { -10, 0 }, { 150, 1 }, { 200, 2 }, { -10, 3 }, { 12, 4 }, { 10, 5 }, { 40, 6 }, { 60, 7 }, { 50, 8 }, { 3, 9 },
};

CameraModeValue D_8011B06C[] = {
    { 40, 0 }, { 330, 1 }, { 330, 2 }, { -5, 3 }, { 15, 4 }, { 15, 5 }, { 40, 6 }, { 60, 7 }, { 100, 8 }, { 0, 9 },
};

CameraModeValue D_8011B094[] = {
    { -40, 0 }, { 250, 1 }, { 0, 3 }, { 2, 4 }, { 80, 7 }, { 20, 8 }, { 0xF000, 9 },
};

CameraModeValue D_8011B0B0[] = {
    { -20, 0 }, { 500, 1 }, { 500, 2 }, { 10, 3 }, { 20, 4 }, { 10, 5 }, { 40, 6 }, { 60, 7 }, { 80, 8 }, { 3, 9 },
};

CameraModeValue D_8011B0D8[] = {
    { -20, 0 }, { 180, 1 }, { 20, 13 }, { 60, 14 },  { 0, 15 },   { 10, 16 },
    { 25, 17 }, { 45, 7 },  { 50, 8 },  { 8194, 9 }, { -40, 11 }, { 20, 12 },
};

CameraModeValue D_8011B108[] = {
    { 0, 0 }, { 120, 1 }, { 280, 2 }, { 60, 23 }, { 8, 4 }, { 40, 6 }, { 60, 7 }, { 50, 8 }, { 0, 9 },
};

CameraModeValue D_8011B12C[] = {
    { 0, 0 }, { 120, 1 }, { 280, 2 }, { 60, 23 }, { 8, 4 }, { 40, 6 }, { 60, 7 }, { 50, 8 }, { 128, 9 },
};

CameraModeValue D_8011B150[] = {
    { 0, 0 }, { 270, 1 }, { 300, 2 }, { 120, 23 }, { 8, 4 }, { 60, 6 }, { 60, 7 }, { 100, 8 }, { 0, 9 },
};

CameraModeValue D_8011B174[] = {
    { 0, 0 }, { 270, 1 }, { 300, 2 }, { 120, 23 }, { 6, 4 }, { 60, 6 }, { 60, 7 }, { 100, 8 }, { 0, 9 },
};


CameraModeValue D_8011B198[] = {
    { -40, 0 }, { 100, 4 }, { 60, 7 }, { 0x0000, 9 },
};

CameraModeValue D_8011B1A8[] = {
    { -40, 0 }, { 100, 4 }, { 60, 7 }, { 0x2000, 9 },
};

CameraModeValue D_8011B1B8[] = {
    { -40, 0 }, { 100, 4 }, { 60, 7 }, { 0x3500, 9 },
};

CameraModeValue D_8011B1C8[] = {
    { -40, 0 }, { 25, 4 }, { 60, 7 }, { 0x0000, 9 },
};

CameraModeValue D_8011B1D8[] = {
    { -40, 0 }, { 50, 4 }, { 80, 5 }, { 60, 7 }, { 0x0001, 9 }
};

CameraModeValue sData4Normal[] = {
    { -40, 0 },
    { 60, 7 },
    { 16128, 9 },
};

CameraModeValue D_8011B1F8[] = {
    { -40, 0 }, { 50, 4 }, { 80, 5 }, { 60, 7 }, { 4, 9 },
};

CameraModeValue D_8011B20C[] = {
    { 0, 9 },
};

CameraModeValue D_8011B210[] = {
    { 0x2000, 9 },
};

CameraModeValue D_8011B214[] = {
    { 60, 7 }, { 0x0000, 9 },
};

CameraModeValue D_8011B21C[] = {
    { 60, 7 }, { 0x2000, 9 },
};

CameraModeValue D_8011B224[] = {
    { 30, 24 }, { 0, 25 }, { 4, 4 }, { 0x3500, 9 },
};

CameraModeValue D_8011B234[] = {
    { -40, 0 },
    { 60, 7 },
    { 12800, 9 },
};

CameraModeValue D_8011B240[] = {
    { -5, 0 },
    { 60, 7 },
    { 12802, 9 },
};

CameraModeValue D_8011B24C[] = {
    { -5, 0 },
    { 60, 7 },
    { 12810, 9 },
};

CameraModeValue D_8011B258[] = {
    { 0, 0 }, { 2, 1 }, { 30, 2 }, { 10, 4 }, { 45, 7 }, { 12800, 9 },
};

CameraModeValue D_8011B270[] = {
    { 0x0001, 9 },
};

CameraModeValue D_8011B274[] = {
    { 0xFF00, 9 },
};


CameraModeValue D_8011B278[] = {
    { 0xFF01, 9 },
};

CameraModeValue D_8011B27C[] = {
    { -40, 0 }, { 100, 4 }, { 80, 5 }, { 60, 7 }, { 0, 9 },
};

CameraModeValue D_8011B290[] = {
    { -40, 0 }, { 60, 1 }, { 60, 7 }, { 0x0002, 9 },
};

CameraModeValue D_8011B2A0[] = {
    { -30, 0 }, { 45, 1 }, { 100, 7 }, { 0x2001, 9 },
};

CameraModeValue D_8011B2B0[] = {
    { 0x3200, 9 },
};

CameraModeValue D_8011B2B4[] = {
    { -50, 0 }, { 450, 1 }, { 40, 3 }, { 180, 10 }, { 5, 4 },   { 5, 5 },
    { 70, 7 },  { 30, 8 },  { 12, 9 }, { -50, 11 }, { 20, 12 },
};

CameraModeValue D_8011B2E0[] = {
    { 0x3501, 9 },
};

CameraModeValue D_8011B2E4[] = {
    { 60, 7 }, { 30, 8 }, { 0x3200, 9 },
};

CameraModeValue D_8011B2F0[] = {
    { 0x3212, 9 },
};

CameraModeValue D_8011B2F4[] = {
    { -50, 0 }, { 300, 1 }, { 300, 2 }, { 50, 3 }, { 20, 4 }, { 10, 5 }, { 50, 6 }, { 70, 7 }, { 40, 8 }, { 2, 9 },
};

CameraModeValue D_8011B31C[] = {
    { -50, 0 }, { 300, 1 }, { 10, 3 },   { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 45, 7 },  { 50, 8 },  { 8202, 9 }, { -40, 11 }, { 20, 12 },
};

CameraModeValue D_8011B348[] = {
    { -50, 0 }, { 300, 1 }, { 300, 2 }, { 12, 4 }, { 35, 6 }, { 60, 7 }, { 40, 8 }, { 0, 9 },
};

CameraModeValue D_8011B368[] = {
    { -80, 0 }, { 300, 1 }, { 300, 2 }, { 60, 3 }, { 70, 7 }, { 30, 8 }, { 0x0000, 9 }
};

CameraModeValue D_8011B384[] = {
    { -120, 0 }, { 300, 1 }, { 300, 2 }, { 70, 3 }, { 50, 7 }, { 30, 8 }, { 0x2000, 9 }
};

CameraModeValue D_8011B3A0[] = {
    { -20, 0 }, { 300, 1 }, { 350, 2 }, { 50, 3 }, { 100, 4 },
    { 10, 5 },  { 100, 6 }, { 70, 7 },  { 30, 8 }, { -4094, 9 },
};

CameraModeValue D_8011B3C8[] = {
    { -50, 0 }, { 200, 1 }, { 200, 2 }, { 20, 3 }, { 16, 4 }, { 10, 5 }, { 50, 6 }, { 60, 7 }, { 50, 8 }, { 2, 9 },
};

CameraModeValue D_8011B3F0[] = {
    { -50, 0 }, { 200, 1 }, { 40, 3 },   { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 45, 7 },  { 50, 8 },  { 8202, 9 }, { -40, 11 }, { 20, 12 },
};

CameraModeValue D_8011B41C[] = {
    { -50, 0 }, { 150, 1 }, { 250, 2 }, { 12, 4 }, { 35, 6 }, { 60, 7 }, { 40, 8 }, { 0, 9 },
};

CameraModeValue D_8011B43C[] = {
    { -80, 0 }, { 200, 1 }, { 200, 2 }, { 40, 3 }, { 60, 7 }, { 30, 8 }, { 0x0000, 9 }
};

CameraModeValue D_8011B458[] = {
    { -120, 0 }, { 200, 1 }, { 200, 2 }, { 60, 3 }, { 50, 7 }, { 30, 8 }, { 0x2000, 9 }
};

CameraModeValue D_8011B474[] = {
    { -20, 0 }, { 200, 1 }, { 250, 2 }, { 20, 3 }, { 100, 4 },
    { 10, 5 },  { 100, 6 }, { 60, 7 },  { 30, 8 }, { -4094, 9 },
};

CameraModeValue D_8011B49C[] = {
    { -30, 0 },
    { 60, 7 },
    { 266, 9 },
};

CameraModeValue D_8011B4A8[] = {
    { -20, 0 }, { 150, 1 }, { 60, 7 }, { 0x0210, 9 },
};

CameraModeValue D_8011B4B8[] = {
    { 0, 0 }, { 400, 1 }, { 500, 2 }, { 35, 3 }, { 14, 4 }, { 5, 5 }, { 20, 6 }, { 60, 7 }, { 40, 8 }, { 18, 9 },
};

CameraModeValue D_8011B4E0[] = {
    { -20, 0 }, { 250, 1 }, { 5, 13 }, { 10, 14 },  { 30, 15 },  { 20, 16 },
    { 25, 17 }, { 45, 7 },  { 60, 8 }, { 8194, 9 }, { -40, 11 }, { 25, 12 },
};

CameraModeValue D_8011B510[] = {
    { 0, 0 }, { 300, 1 }, { 500, 2 }, { 60, 3 }, { 8, 4 }, { 5, 5 }, { 60, 6 }, { 60, 7 }, { 30, 8 }, { 18, 9 },
};

CameraModeValue D_8011B538[] = {
    { -20, 0 }, { 500, 1 }, { 500, 2 }, { 80, 3 }, { 20, 4 }, { 10, 5 }, { 70, 6 }, { 70, 7 }, { 80, 8 }, { 18, 9 },
};

CameraModeValue D_8011B560[] = {
    { -20, 0 }, { 500, 1 }, { 80, 3 },   { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 70, 7 },  { 80, 8 },  { 8218, 9 }, { -40, 11 }, { 40, 12 },
};

CameraModeValue D_8011B58C[] = {
    { -20, 0 }, { 500, 1 }, { 80, 3 },   { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 60, 7 },  { 80, 8 },  { 8218, 9 }, { -40, 11 }, { 40, 12 },
};

CameraModeValue D_8011B5B8[] = {
    { -20, 0 }, { 500, 1 }, { 500, 2 }, { 80, 3 }, { 20, 4 }, { 10, 5 }, { 80, 6 }, { 60, 7 }, { 20, 8 }, { 18, 9 },
};

CameraModeValue D_8011B5E0[] = {
    { -20, 0 }, { 750, 1 }, { 750, 2 }, { 80, 3 }, { 20, 4 }, { 10, 5 }, { 70, 6 }, { 70, 7 }, { 80, 8 }, { 18, 9 },
};

CameraModeValue D_8011B608[] = {
    { -20, 0 }, { 750, 1 }, { 80, 3 },   { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 70, 7 },  { 80, 8 },  { 8218, 9 }, { -40, 11 }, { 40, 12 },
};

CameraModeValue D_8011B634[] = {
    { -20, 0 }, { 750, 1 }, { 80, 3 },   { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 70, 7 },  { 80, 8 },  { 8202, 9 }, { -40, 11 }, { 40, 12 },
};

CameraModeValue D_8011B660[] = {
    { -20, 0 }, { 750, 1 }, { 750, 2 }, { 80, 3 }, { 20, 4 }, { 10, 5 }, { 80, 6 }, { 70, 7 }, { 20, 8 }, { 18, 9 },
};

CameraModeValue D_8011B688[] = {
    { -20, 0 }, { 500, 1 }, { 500, 2 }, { 80, 3 }, { 20, 4 }, { 10, 5 }, { 70, 6 }, { 70, 7 }, { 80, 8 }, { 2, 9 },
};

CameraModeValue D_8011B6B0[] = {
    { -20, 0 }, { 500, 1 }, { 80, 3 },   { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 70, 7 },  { 80, 8 },  { 8202, 9 }, { -40, 11 }, { 40, 12 },
};

CameraModeValue D_8011B6DC[] = {
    { -20, 0 }, { 500, 1 }, { 80, 3 },   { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 60, 7 },  { 80, 8 },  { 8202, 9 }, { -40, 11 }, { 40, 12 },
};

CameraModeValue D_8011B708[] = {
    { -20, 0 }, { 500, 1 }, { 500, 2 }, { 80, 3 }, { 20, 4 }, { 10, 5 }, { 80, 6 }, { 60, 7 }, { 20, 8 }, { 2, 9 },
};

CameraModeValue D_8011B730[] = {
    { -30, 0 }, { 120, 1 }, { -10, 3 }, { 170, 10 }, { 0, 21 }, { 60, 7 }, { 9474, 9 }, { 25, 4 }, { 6, 22 },
};

CameraModeValue D_8011B754[] = {
    { 20, 4 }, { 0x3200, 9 },
};

CameraModeValue D_8011B75C[] = {
    { -20, 0 }, { 200, 1 }, { 300, 2 }, { 10, 3 }, { 12, 4 }, { 10, 5 }, { 35, 6 }, { 60, 7 }, { 60, 8 }, { 2, 9 },
};

CameraModeValue D_8011B784[] = {
    { 0, 0 }, { 200, 1 }, { 300, 2 }, { 20, 3 }, { 12, 4 }, { 10, 5 }, { 35, 6 }, { 55, 7 }, { 60, 8 }, { 3842, 9 },
};

CameraModeValue D_8011B7AC[] = {
    { -20, 0 }, { 250, 1 }, { 0, 3 },     { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 45, 7 },  { 50, 8 },  { 12042, 9 }, { -40, 11 }, { 20, 12 },
};

CameraModeValue D_8011B7D8[] = {
    { -20, 0 }, { 250, 1 }, { 0, 13 }, { 80, 14 },   { 0, 15 },   { 0, 16 },
    { 25, 17 }, { 55, 7 },  { 80, 8 }, { 12034, 9 }, { -40, 11 }, { 25, 12 },
};

CameraModeValue D_8011B808[] = {
    { -30, 0 }, { 70, 1 },  { 200, 2 }, { 40, 13 }, { 10, 14 }, { 0, 15 },
    { 5, 16 },  { 70, 17 }, { 45, 7 },  { 50, 8 },  { 10, 4 },  { 16160, 9 },
};

CameraModeValue D_8011B838[] = {
    { 0, 0 }, { 5, 1 }, { 50, 2 }, { 10, 4 }, { 0, 19 }, { 0, 20 }, { 0, 21 }, { 45, 7 }, { 3840, 9 },
};

CameraModeValue D_8011B85C[] = {
    { -20, 0 }, { 200, 1 }, { 300, 2 }, { 12, 4 }, { 35, 6 }, { 60, 7 }, { 40, 8 }, { 3840, 9 },
};

CameraModeValue D_8011B87C[] = {
    { -20, 0 }, { 200, 1 }, { 300, 2 }, { 15, 4 }, { 80, 6 }, { 60, 7 }, { 20, 8 }, { 3840, 9 },
};

CameraModeValue D_8011B89C[] = {
    { -80, 0 }, { 200, 1 }, { 300, 2 }, { 40, 3 }, { 60, 7 }, { 10, 8 }, { 0x0F00, 9 }
};

CameraModeValue D_8011B8B8[] = {
    { -120, 0 }, { 300, 1 }, { 300, 2 }, { 70, 3 }, { 45, 7 }, { 10, 8 }, { 0x2F00, 9 }
};

CameraModeValue D_8011B8D4[] = {
    { 16128, 9 },
};

CameraModeValue D_8011B8D8[] = {
    { 30, 0 }, { 200, 1 }, { 300, 2 }, { -20, 3 }, { 15, 4 }, { 5, 26 }, { 50, 6 }, { 70, 7 }, { 70, 8 }, { 3, 9 },
};

CameraModeValue D_8011B900[] = {
    { -30, 0 }, { 160, 1 }, { 10, 13 }, { 10, 14 },  { 0, 15 },   { 0, 16 },
    { 70, 17 }, { 60, 7 },  { 40, 8 },  { 8194, 9 }, { -50, 11 }, { 20, 12 },
};

CameraModeValue D_8011B930[] = {
    { -20, 0 }, { 350, 1 }, { 350, 2 }, { 20, 3 }, { 15, 4 }, { 5, 5 }, { 30, 6 }, { 60, 7 }, { 60, 8 }, { 3, 9 },
};

CameraModeValue D_8011B958[] = {
    { -20, 0 }, { 200, 1 }, { 0, 3 },    { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 45, 7 },  { 50, 8 },  { 8202, 9 }, { -40, 11 }, { 20, 12 },
};

CameraModeValue D_8011B984[] = {
    { -20, 0 }, { 180, 1 }, { 10, 13 }, { 80, 14 },  { -10, 15 }, { 10, 16 },
    { 25, 17 }, { 45, 7 },  { 80, 8 },  { 8194, 9 }, { -40, 11 }, { 25, 12 },
};

CameraModeValue D_8011B9B4[] = {
    { -20, 0 }, { 350, 1 }, { 350, 2 }, { 10, 4 }, { 50, 6 }, { 60, 7 }, { 40, 8 }, { 0, 9 },
};

CameraModeValue D_8011B9D4[] = {
    { -20, 0 }, { 350, 1 }, { 350, 2 }, { 15, 4 }, { 80, 6 }, { 60, 7 }, { 20, 8 }, { 0, 9 },
};

CameraModeValue D_8011B9F4[] = {
    { -40, 0 }, { 350, 1 }, { 350, 2 }, { 20, 18 }, { 5, 4 }, { 5, 5 }, { 60, 7 }, { 40, 8 }, { 0, 9 },
};

CameraModeValue D_8011BA18[] = {
    { -40, 0 }, { 350, 1 }, { 350, 2 }, { 20, 18 }, { 999, 4 }, { 5, 5 }, { 60, 7 }, { 40, 8 }, { 8198, 9 },
};

CameraModeValue D_8011BA3C[] = {
    { -50, 0 }, { 350, 1 }, { 350, 2 }, { 40, 3 }, { 60, 7 }, { 10, 8 }, { 0x0000, 9 }
};

CameraModeValue D_8011BA58[] = {
    { -100, 0 }, { 350, 1 }, { 350, 2 }, { 70, 3 }, { 45, 7 }, { 10, 8 }, { 0x2000, 9 }
};

CameraModeValue D_8011BA74[] = {
    { -10, 0 }, { 350, 1 }, { 350, 2 }, { 20, 3 }, { 100, 4 }, { 5, 5 }, { 100, 6 }, { 60, 7 }, { 5, 8 }, { -4093, 9 },
};

CameraModeValue D_8011BA9C[] = {
    { 0, 0 },  { 280, 1 }, { 25, 3 },   { 0, 10 },   { 5, 4 },   { 5, 5 },
    { 70, 7 }, { 30, 8 },  { 8298, 9 }, { -20, 11 }, { 30, 12 },
};

CameraModeValue D_8011BAC8[] = {
    { -10, 0 }, { 280, 1 }, { 320, 2 }, { -8, 3 }, { 20, 4 }, { 10, 5 }, { 80, 6 }, { 60, 7 }, { 80, 8 }, { 2, 9 },
};

CameraModeValue D_8011BAF0[] = {
    { -20, 0 }, { 180, 1 }, { 200, 2 }, { 35, 13 },  { 45, 14 },  { 0, 15 },  { -5, 16 },
    { 20, 17 }, { 50, 7 },  { 50, 8 },  { 8193, 9 }, { -50, 11 }, { 30, 12 },
};

CameraModeValue D_8011BB24[] = {
    { -80, 0 }, { 200, 1 }, { 250, 2 }, { 30, 13 }, { 10, 14 }, { -8, 15 },
    { -8, 16 }, { 30, 17 }, { 50, 7 },  { 50, 8 },  { 10, 4 },  { 13600, 9 },
};

CameraModeValue D_8011BB54[] = {
    { -30, 0 }, { 70, 1 },  { 200, 2 }, { 40, 13 }, { 10, 14 }, { 0, 15 },
    { 5, 16 },  { 70, 17 }, { 45, 7 },  { 50, 8 },  { 10, 4 },  { 13728, 9 },
};

CameraMode sCamSetNorm0Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011A3A0 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A458 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5FC }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL  
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetNorm1Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011A6C0 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A6E8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A714 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A7D8 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A778 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A7FC }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A798 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A83C }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A858 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A7B8 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A820 }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A874 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetDungeon0Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011A89C }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A8C4 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A8F0 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A924 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A994 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A778 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A9B8 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A954 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A9F8 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011AA14 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A974 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A9DC }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011AA30 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetDungeon1Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AA58 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A8C4 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A714 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011AA80 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A924 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011AAF0 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A778 }, // CAM_MODE_FOOKSHOT, 
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011AB14 }, // CAM_MODE_CLIMBZ  
    { CAM_FUNC_JUMP1, 8, D_8011AAB0 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011AB54 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011AB70 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011AAD0 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011AB38 }, // CAM_MODE_CHARGE 
    { CAM_FUNC_NORM1, 10, D_8011AB8C }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011ABB4 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetNorm3Modes[] = {
    { CAM_FUNC_JUMP3, 10, D_8011ABE0 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011AC08 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011AC34 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A458 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB 
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT 
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ 
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_JUMP3, 10, D_8011AC64 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ  
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFALL 
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE 
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL  
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
};

CameraMode sCamSetHorse0Modes[] = {
    { CAM_FUNC_NORM3, 9, D_8011AC8C }, // CAM_MODE_NORMAL 
    { CAM_FUNC_NORM3, 9, D_8011ACB0 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011ACF8 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011AD2C }, // CAM_MODE_TALK
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_BATTLE
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_CLIMB      
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_SUBJECT       
    { CAM_FUNC_SUBJ3, 9, D_8011ACD4 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
};

CameraMode sCamSetBossGomaModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AD5C }, // CAM_MODE_NORMAL 
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011AD84 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT 
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ 
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT, 
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A9DC }, // CAM_MODE_CHARGE 
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL  
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetBossDodoModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011ADB4 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011ADDC }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT 
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ 
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT, 
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ 
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE 
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetBossBariModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AE0C }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011AE34 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ  
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT, 
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG  
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ  
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP 
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE 
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetBossFGanonModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AE64}, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011AE8C }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ 
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG  
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ  
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP 
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE 
    { CAM_FUNC_NORM1, 10, D_8011A638}, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetBossBalModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AEBC}, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011AEE4 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ  
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT 
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG  
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ  
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP 
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE 
    { CAM_FUNC_NORM1, 10, D_8011A638}, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetBossShadesModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AF14}, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011AF3C }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ 
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT, 
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_NORM1, 10, D_8011AF6C}, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_NORM1, 10, D_8011AF6C}, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE 
    { CAM_FUNC_NORM1, 10, D_8011A638}, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetBossMofaModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AF94}, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011AFBC }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ  
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG 
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ  
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP 
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFAL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE 
    { CAM_FUNC_NORM1, 10, D_8011A638}, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetBossTwin0Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AFEC}, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011B014 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT, 
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG  
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ    
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP 
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFAL  
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE 
    { CAM_FUNC_NORM1, 10, D_8011A638}, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetBossTwin1Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B044}, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011B014 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ  
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT, 
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG  
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ    
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFAL  
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE 
    { CAM_FUNC_NORM1, 10, D_8011A638}, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetBossGanon1Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B06C}, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011AE8C }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ  
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT, 
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG  
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ    
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP 
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFAL  
    { CAM_FUNC_BATT4, 7, D_8011B094 }, // CAM_MODE_CHARGE 
    { CAM_FUNC_NORM1, 10, D_8011A638}, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetBossGanon2Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B0B0}, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011B0D8 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ  
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT, 
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG  
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ    
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP 
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFAL  
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE 
    { CAM_FUNC_NORM1, 10, D_8011A638}, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetTower0Modes[] = {
    { CAM_FUNC_NORM2, 9, D_8011B108 }, // CAM_MODE_NORMAL   
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A458 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_NORM2, 9, D_8011B12C }, // CAM_MODE_JUMP  
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetTower1Modes[] = {
    { CAM_FUNC_NORM2, 9, D_8011B150 }, // CAM_MODE_NORMAL   
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A458 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT 
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_NORM2, 9, D_8011B174 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetFixed0Modes[] = {
    { CAM_FUNC_FIXD1, 4, D_8011B198 }, // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_PARALLEL
    { CAM_FUNC_FIXD1, 4, D_8011B1A8 }, // CAM_MODE_KEEPON
    { CAM_FUNC_FIXD1, 4, D_8011B1B8 }, // CAM_MODE_TALK
};

CameraMode sCamSetFixed1Modes[] = {
    { CAM_FUNC_FIXD1, 4, D_8011B1C8 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc0Modes[] = {
    { CAM_FUNC_FIXD2, 5, D_8011B1D8 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc1Modes[] = {
    { CAM_FUNC_DATA4, 3, sData4Normal }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc3Modes[] = {
    { CAM_FUNC_FIXD4, 5, D_8011B1F8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_JUMP
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_HANG        
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_HANGZ
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_FREEFALL  
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetPreRend0Modes[] = {
    { CAM_FUNC_FIXD3, 1, D_8011B20C }, // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_PARALLEL
    { CAM_FUNC_FIXD3, 1, D_8011B210 }, // CAM_MODE_KEEPON
    { CAM_FUNC_FIXD3, 1, D_8011B210 }, // CAM_MODE_TALK
};

CameraMode sCamSetPreRend1Modes[] = {
    { CAM_FUNC_UNIQ7, 2, D_8011B214 }, // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_PARALLEL
    { CAM_FUNC_UNIQ7, 2, D_8011B21C }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP0, 4, D_8011B224 }, // CAM_MODE_TALK
};

CameraMode sCamSetPreRend3Modes[] = {
    { CAM_FUNC_SPEC6, 1, D_8011B20C }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDoor0Modes[] = {
    { CAM_FUNC_UNIQ3, 3, D_8011B234 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDoorCModes[] = {
    { CAM_FUNC_SPEC9, 3, D_8011B240 }, // CAM_MODE_NORMAL
    { CAM_FUNC_SPEC9, 3, D_8011B24C }, // CAM_MODE_PARALLEL
};

CameraMode sCamSetRail3Modes[] = {
    { CAM_FUNC_SUBJ4, 6, D_8011B258 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetStart0Modes[] = {
    { CAM_FUNC_UNIQ0, 1, D_8011B20C }, // CAM_MODE_NORMAL
};

CameraMode sCamSetStart1Modes[] = {
    { CAM_FUNC_UNIQ0, 1, D_8011B270 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetFree0Modes[] = {
    { CAM_FUNC_UNIQ6, 1, D_8011B274 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetFree1Modes[] = {
    { CAM_FUNC_UNIQ6, 1, D_8011B278 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc4Modes[] = {
    { CAM_FUNC_FIXD2, 5, D_8011B27C }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc5Modes[] = {
    { CAM_FUNC_UNIQ2, 4, D_8011B290 }, // CAM_MODE_NORMAL
    { CAM_FUNC_UNIQ2, 4, D_8011B2A0 }, // CAM_MODE_PARALLEL
};

CameraMode sCamSetDemo0Modes[] = {
    { CAM_FUNC_DEMO1, 1, D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDemo1Modes[] = {
    { CAM_FUNC_DEMO2, 1, D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetMori1Modes[] = {
    { CAM_FUNC_PARA1, 11, D_8011B2B4 }, // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_PARALLEL
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_KEEPON
    { CAM_FUNC_PARA3, 1, D_8011B2E0 }, // CAM_MODE_TALK
};

CameraMode sCamSetItem0Modes[] = {
    { CAM_FUNC_DEMO3, 3, D_8011B2E4 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetItem1Modes[] = {
    { CAM_FUNC_DEMO4, 3, D_8011B2E4 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDemo3Modes[] = {
    { CAM_FUNC_DEMO9, 1, D_8011B2F0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDemo4Modes[] = {
    { CAM_FUNC_DEMO5, 1, D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetUFOBeanModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B2F4 }, // CAM_MODE_NORMAL 
    { CAM_FUNC_PARA1, 11, D_8011B31C }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011B348 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011B368 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011B384 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011B3A0 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetLiftBeanModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B3C8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011B3F0 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ 
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_BOWARROWZ 
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011B41C }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011B43C }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011B458 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011B474 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetScene0Modes[] = {
    { CAM_FUNC_SPEC9, 3, D_8011B49C }, // CAM_MODE_NORMAL
};

CameraMode sCamSetScene1Modes[] = {
    { CAM_FUNC_UNIQ2, 4, D_8011B4A8 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetHidan1Modes[] = {
    { CAM_FUNC_SPEC7, 1, D_8011B20C }, // CAM_MODE_NORMAL
};

CameraMode sCamSetHidan2Modes[] = {
    { CAM_FUNC_SPEC4, 1, D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetMori2Modes[] = {
    { CAM_FUNC_UNIQ5, 1, D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetMori3Modes[] = {
    { CAM_FUNC_DEMO6, 1, D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetTakoModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B4B8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A8C4 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A8F0 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011B4E0 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A994 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A778 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A9B8 }, // CAM_MODE_CLIMBZ  
    { CAM_FUNC_JUMP1, 8, D_8011A954 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A9F8 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011AA14 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A974 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A9DC }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011B510 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetSpot05AModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B538 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011B560 }, // CAM_MODE_PARALLEL
    { 0, 0, NULL }, // CAM_MODE_KEEPON
    { 0, 0, NULL }, // CAM_MODE_TALK       
    { CAM_FUNC_PARA1, 11, D_8011B58C }, // CAM_MODE_BATTLE
    { CAM_FUNC_NORM1, 10, D_8011B5B8 }, // CAM_MODE_CLIMB
};

CameraMode sCamSetSpot05BModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B5E0 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011B608 }, // CAM_MODE_PARALLEL
    { 0, 0, NULL }, // CAM_MODE_KEEPON
    { 0, 0, NULL }, // CAM_MODE_TALK
    { CAM_FUNC_PARA1, 11, D_8011B634 }, // CAM_MODE_BATTLE
    { CAM_FUNC_NORM1, 10, D_8011B660 }, // CAM_MODE_CLIMB
};

CameraMode sCamSetHidan3Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B688 }, // CAM_MODE_NORMAL 
    { CAM_FUNC_PARA1, 11, D_8011B6B0 }, // CAM_MODE_PARALLEL
    { 0, 0, NULL }, // CAM_MODE_KEEPON
    { 0, 0, NULL }, // CAM_MODE_TALK       
    { CAM_FUNC_PARA1, 11, D_8011B6DC }, // CAM_MODE_BATTLE
    { CAM_FUNC_NORM1, 10, D_8011B708 }, // CAM_MODE_CLIMB
};

CameraMode sCamSetItem2Modes[] = {
    { CAM_FUNC_KEEP4, 9, D_8011B730 }, // CAM_MODE_NORMAL 
};

CameraMode sCamSetCirc6Modes[] = {
    { CAM_FUNC_SPEC0, 2, D_8011B754 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetNorm2Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B75C }, // CAM_MODE_NORMAL 
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetFishingModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B784 }, // CAM_MODE_NORMAL 
    { CAM_FUNC_PARA1, 11, D_8011B7AC }, // CAM_MODE_PARALLEL
    { CAM_FUNC_BATT1, 12, D_8011B7D8 }, // CAM_MODE_KEEPON 
    { CAM_FUNC_KEEP3, 12, D_8011B808 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011B7D8 }, // CAM_MODE_BATTLE
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_CLIMB    
    { CAM_FUNC_SUBJ3, 9, D_8011B838 }, // CAM_MODE_SUBJECT 
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_BOWARROW
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_BOWARROWZ        
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_FOOKSHOT   
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_BOOMERANG  
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_PACHINCO
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_CLIMBZ        
    { CAM_FUNC_JUMP1, 8, D_8011B85C }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011B89C }, // CAM_MODE_HANG 
    { CAM_FUNC_UNIQ1, 7, D_8011B8B8 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011B87C }, // CAM_MODE_FREEFALL
};

CameraMode sCamSetDemoCModes[] = {
    { CAM_FUNC_UNIQ9, 1, D_8011B8D4 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetUOFiberModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B8D8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011B900 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetDungeon2Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B930 }, // CAM_MODE_NORMAL 
    { CAM_FUNC_PARA1, 11, D_8011B958 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A8F0 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011B984 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011B9F4 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A778 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011BA18 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011B9B4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011BA3C }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011BA58 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011B9D4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011BA74 }, // CAM_MODE_STILL  
    { CAM_FUNC_PARA1, 11, D_8011BA9C }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetTeppenModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011BAC8 }, // CAM_MODE_NORMAL 
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011BAF0 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011BB24 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A458 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL  
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraMode sCamSetCirc7Modes[] = {
    { CAM_FUNC_FIXD4, 5, D_8011B1F8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_PARALLEL        
    { CAM_FUNC_FIXD4, 5, D_8011B1F8 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_BATTLE        
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_CLIMB       
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_NONE, 0, NULL }, // CAM_MODE_BOWARROWZ       
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
};

CameraMode sCamSetNorm4Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B75C }, // CAM_MODE_NORMAL 
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_PARALLEL
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_KEEPON
    { CAM_FUNC_KEEP3, 12, D_8011BB54 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC }, // CAM_MODE_SUBJECT
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 }, // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C }, // CAM_MODE_PACHINCO
    { CAM_FUNC_JUMP2, 9, D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 }, // CAM_MODE_HANG  
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL  
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOKEEPON
};

CameraSetting sCameraSettings[] = {
    { { 0x00000000 }, NULL },       // CAM_SET_NONE
    { { 0x051FFFFF }, sCamSetNorm0Modes }, // CAM_SET_NORMAL0
    { { 0x051FFFFF }, sCamSetNorm1Modes }, // CAM_SET_NORMAL1
    { { 0x051FFFFF }, sCamSetDungeon0Modes }, // CAM_SET_DUNGEON0
    { { 0x051FFFFF }, sCamSetDungeon1Modes }, // CAM_SET_DUNGEON1
    { { 0x050FF7FF }, sCamSetNorm3Modes }, // CAM_SET_NORMAL3
    { { 0x8500018F }, sCamSetHorse0Modes }, // CAM_SET_HORSE0
    { { 0x051FFFFF }, sCamSetBossGomaModes }, // CAM_SET_BOSS_GOMA
    { { 0x051FFFFF }, sCamSetBossDodoModes }, // CAM_SET_BOSS_DODO
    { { 0x051FFFFF }, sCamSetBossBariModes }, // CAM_SET_BOSS_BARI
    { { 0x051FFFFF }, sCamSetBossFGanonModes }, // CAM_SET_BOSS_FGANON
    { { 0x051FFFFF }, sCamSetBossBalModes }, // CAM_SET_BOSS_BAL
    { { 0x051FFFFF }, sCamSetBossShadesModes }, // CAM_SET_BOSS_SHADES
    { { 0x051FFFFF }, sCamSetBossMofaModes }, // CAM_SET_BOSS_MOFA
    { { 0x051FFFFF }, sCamSetBossTwin0Modes }, // CAM_SET_TWIN0
    { { 0x051FFFFF }, sCamSetBossTwin1Modes }, // CAM_SET_TWIN1
    { { 0x051FFFFF }, sCamSetBossGanon1Modes }, // CAM_SET_BOSS_GANON1
    { { 0x051FFFFF }, sCamSetBossGanon2Modes }, // CAM_SET_BOSS_GANON2
    { { 0x851FFFFF }, sCamSetTower0Modes }, // CAM_SET_TOWER0
    { { 0x851FFFFF }, sCamSetTower1Modes }, // CAM_SET_TOWER1
    { { 0x8500000D }, sCamSetFixed0Modes }, // CAM_SET_FIXED0
    { { 0x85000001 }, sCamSetFixed1Modes }, // CAM_SET_FIXED1
    { { 0x85000001 }, sCamSetCirc0Modes }, // CAM_SET_CIRCLE0
    { { 0x85000001 }, sCamSetCirc1Modes }, // CAM_SET_CIRCLE2
    { { 0x851E1FFF }, sCamSetCirc3Modes }, // CAM_SET_CIRCLE3
    { { 0x8C00000D }, sCamSetPreRend0Modes }, // CAM_SET_PREREND0
    { { 0x8C00000D }, sCamSetPreRend1Modes }, // CAM_SET_PREREND1
    { { 0x8C000001 }, sCamSetPreRend3Modes }, // CAM_SET_PREREND3
    { { 0xC5000001 }, sCamSetDoor0Modes }, // CAM_SET_DOOR0
    { { 0xC5000003 }, sCamSetDoorCModes }, // CAM_SET_DOORC
    { { 0xC5000001 }, sCamSetRail3Modes }, // CAM_SET_RAIL3
    { { 0xC5000001 }, sCamSetStart0Modes }, // CAM_SET_START0
    { { 0xC5000001 }, sCamSetStart1Modes }, // CAM_SET_START1
    { { 0x05000001 }, sCamSetFree0Modes }, // CAM_SET_FREE0
    { { 0x05000001 }, sCamSetFree1Modes }, // CAM_SET_FREE2
    { { 0x85000001 }, sCamSetCirc4Modes }, // CAM_SET_CIRCLE4
    { { 0x05000003 }, sCamSetCirc5Modes }, // CAM_SET_CIRCLE5
    { { 0xCE000001 }, sCamSetDemo0Modes }, // CAM_SET_DEMO0
    { { 0x4E000001 }, sCamSetDemo1Modes }, // CAM_SET_DEMO1
    { { 0x05000009 }, sCamSetMori1Modes }, // CAM_SET_MORI1
    { { 0x45000001 }, sCamSetItem0Modes }, // CAM_SET_ITEM0
    { { 0x45000001 }, sCamSetItem1Modes }, // CAM_SET_ITEM1
    { { 0x45000001 }, sCamSetDemo3Modes }, // CAM_SET_DEMO3
    { { 0x45000001 }, sCamSetDemo4Modes }, // CAM_SET_DEMO4
    { { 0x451FFFFF }, sCamSetUFOBeanModes }, // CAM_SET_UFOBEAN
    { { 0x451FFFFF }, sCamSetLiftBeanModes }, // CAM_SET_LIFTBEAN
    { { 0xC5000001 }, sCamSetScene0Modes }, // CAM_SET_SCENE0
    { { 0x45000001 }, sCamSetScene1Modes }, // CAM_SET_SCENE1
    { { 0x05000001 }, sCamSetHidan1Modes }, // CAM_SET_HIDAN1
    { { 0x45000001 }, sCamSetHidan2Modes }, // CAM_SET_HIDAN2
    { { 0x45000001 }, sCamSetMori2Modes }, // CAM_SET_MORI2
    { { 0x45000001 }, sCamSetMori3Modes }, // CAM_SET_MORI3
    { { 0x451FFFFF }, sCamSetTakoModes }, // CAM_SET_TAKO
    { { 0x05000033 }, sCamSetSpot05AModes }, // CAM_SET_SPOT05A
    { { 0x05000033 }, sCamSetSpot05BModes }, // CAM_SET_SPOT05B
    { { 0x05000033 }, sCamSetHidan3Modes }, // CAM_SET_HIDAN3
    { { 0x4A000001 }, sCamSetItem2Modes }, // CAM_SET_ITEM2
    { { 0x05000001 }, sCamSetCirc6Modes }, // CAM_SET_CIRCLE6
    { { 0x051FFFFF }, sCamSetNorm2Modes }, // CAM_SET_NORMAL2
    { { 0x0501E05F }, sCamSetFishingModes }, // CAM_SET_FISHING
    { { 0x45000001 }, sCamSetDemoCModes }, // CAM_SET_DEMOC
    { { 0x051FFFFF }, sCamSetUOFiberModes }, // CAM_SET_UO_FIBER
    { { 0x051FFFFF }, sCamSetDungeon2Modes }, // CAM_SET_DUNGEON2
    { { 0x051FFFFF }, sCamSetTeppenModes }, // CAM_SET_TEPPEN
    { { 0xC5000ECD }, sCamSetCirc7Modes }, // CAM_SET_CIRCLE7
    { { 0x051FFFFF }, sCamSetNorm4Modes }, // CAM_SET_NORMAL4
};

s32 Camera_Normal0(Camera* camera);
s32 Camera_Normal1(Camera* camera);
s32 Camera_Normal2(Camera* camera);
s32 Camera_Normal3(Camera* camera);
s32 Camera_Normal4(Camera* camera);
s32 Camera_Parallel0(Camera* camera);
s32 Camera_Parallel1(Camera* camera);
s32 Camera_Parallel2(Camera* camera);
s32 Camera_Parallel3(Camera* camera);
s32 Camera_Parallel4(Camera* camera);
s32 Camera_KeepOn0(Camera* camera);
s32 Camera_KeepOn1(Camera* camera);
s32 Camera_KeepOn2(Camera* camera);
s32 Camera_KeepOn3(Camera* camera);
s32 Camera_KeepOn4(Camera* camera);
s32 Camera_Subj0(Camera* camera);
s32 Camera_Subj1(Camera* camera);
s32 Camera_Subj2(Camera* camera);
s32 Camera_Subj3(Camera* camera);
s32 Camera_Subj4(Camera* camera);
s32 Camera_Jump0(Camera* camera);
s32 Camera_Jump1(Camera* camera);
s32 Camera_Jump2(Camera* camera);
s32 Camera_Jump3(Camera* camera);
s32 Camera_Jump4(Camera* camera);
s32 Camera_Battle0(Camera* camera);
s32 Camera_Battle1(Camera* camera);
s32 Camera_Battle2(Camera* camera);
s32 Camera_Battle3(Camera* camera);
s32 Camera_Battle4(Camera* camera);
s32 Camera_Fixed0(Camera* camera);
s32 Camera_Fixed1(Camera* camera);
s32 Camera_Fixed2(Camera* camera);
s32 Camera_Fixed3(Camera* camera);
s32 Camera_Fixed4(Camera* camera);
s32 Camera_Data0(Camera* camera);
s32 Camera_Data1(Camera* camera);
s32 Camera_Data2(Camera* camera);
s32 Camera_Data3(Camera* camera);
s32 Camera_Data4(Camera* camera);
s32 Camera_Unique0(Camera* camera);
s32 Camera_Unique1(Camera* camera);
s32 Camera_Unique2(Camera* camera);
s32 Camera_Unique3(Camera* camera);
s32 Camera_Unique4(Camera* camera);
s32 Camera_Unique5(Camera* camera);
s32 Camera_Unique6(Camera* camera);
s32 Camera_Unique7(Camera* camera);
s32 Camera_Unique8(Camera* camera);
s32 Camera_Unique9(Camera* camera);
s32 Camera_Demo0(Camera* camera);
s32 Camera_Demo1(Camera* camera);
s32 Camera_Demo2(Camera* camera);
s32 Camera_Demo3(Camera* camera);
s32 Camera_Demo4(Camera* camera);
s32 Camera_Demo5(Camera* camera);
s32 Camera_Demo6(Camera* camera);
s32 Camera_Demo7(Camera* camera);
s32 Camera_Demo8(Camera* camera);
s32 Camera_Demo9(Camera* camera);
s32 Camera_Special0(Camera* camera);
s32 Camera_Special1(Camera* camera);
s32 Camera_Special2(Camera* camera);
s32 Camera_Special3(Camera* camera);
s32 Camera_Special4(Camera* camera);
s32 Camera_Special5(Camera* camera);
s32 Camera_Special6(Camera* camera);
s32 Camera_Special7(Camera* camera);
s32 Camera_Special8(Camera* camera);
s32 Camera_Special9(Camera* camera);

typedef s32(*CameraFunc)(Camera*);
CameraFunc sCameraFunctions[] = {
    NULL,
    Camera_Normal0,
    Camera_Normal1,
    Camera_Normal2,
    Camera_Normal3,
    Camera_Normal4,
    Camera_Parallel0,
    Camera_Parallel1,
    Camera_Parallel2,
    Camera_Parallel3,
    Camera_Parallel4,
    Camera_KeepOn0,
    Camera_KeepOn1,
    Camera_KeepOn2,
    Camera_KeepOn3,
    Camera_KeepOn4,
    Camera_Subj0,
    Camera_Subj1,
    Camera_Subj2,
    Camera_Subj3,
    Camera_Subj4,
    Camera_Jump0,
    Camera_Jump1,
    Camera_Jump2,
    Camera_Jump3,
    Camera_Jump4,
    Camera_Battle0,
    Camera_Battle1,
    Camera_Battle2,
    Camera_Battle3,
    Camera_Battle4,
    Camera_Fixed0,
    Camera_Fixed1,
    Camera_Fixed2,
    Camera_Fixed3,
    Camera_Fixed4,
    Camera_Data0,
    Camera_Data1,
    Camera_Data2,
    Camera_Data3,
    Camera_Data4,
    Camera_Unique0,
    Camera_Unique1,
    Camera_Unique2,
    Camera_Unique3,
    Camera_Unique4,
    Camera_Unique5,
    Camera_Unique6,
    Camera_Unique7,
    Camera_Unique8,
    Camera_Unique9,
    Camera_Demo0,
    Camera_Demo1,
    Camera_Demo2,
    Camera_Demo3,
    Camera_Demo4,
    Camera_Demo5,
    Camera_Demo6,
    Camera_Demo7,
    Camera_Demo8,
    Camera_Demo9,
    Camera_Special0,
    Camera_Special1,
    Camera_Special2,
    Camera_Special3,
    Camera_Special4,
    Camera_Special5,
    Camera_Special6,
    Camera_Special7,
    Camera_Special8,
    Camera_Special9,
};

s32 sInitRegs = 1; // 8011D390

s32 gDbgCamEnabled = 0;
s32 sDbgModeIdx = -1;
s16 sNextUID = 0; // size = 4 ?

s32 sCameraInterfaceFlags = 1;


s32 sCameraInterfaceAlpha = 0x02;
s32 sCameraShrinkWindowVal = 0x20;
s32 D_8011D3AC = -1;

s16 D_8011D3B0[] = {
    0x0AAA, 0xF556, 0x1555, 0xEAAB, 0x2AAA, 0xD556, 0x3FFF, 0xC001, 0x5555, 0xAAAB, 0x6AAA, 0x9556, 0x7FFF, 0x0000,
};

s16 D_8011D3CC[] = {
    0x0000, 0x02C6, 0x058C, 0x0000, 0x0000, 0xFD3A, 0x0000, 0x0852, 0x0000, 0x0000, 0x0B18, 0x02C6, 0xFA74, 0x0000,
};

s32 sUpdateCameraDirection = 0; // size = 8?
s32 D_8011D3EC = 0;
s32 D_8011D3F0 = 0;

s32 sDemo5PrevAction12Frame = -16;

char sCameraFunctionNames[][8] = {
    "NONE   ", "NORM0()", "NORM1()", "NORM2()", "NORM3()", "NORM4()", "PARA0()", "PARA1()", "PARA2()", "PARA3()",
    "PARA4()", "KEEP0()", "KEEP1()", "KEEP2()", "KEEP3()", "KEEP4()", "SUBJ0()", "SUBJ1()", "SUBJ2()", "SUBJ3()",
    "SUBJ4()", "JUMP0()", "JUMP1()", "JUMP2()", "JUMP3()", "JUMP4()", "BATT0()", "BATT1()", "BATT2()", "BATT3()",
    "BATT4()", "FIXD0()", "FIXD1()", "FIXD2()", "FIXD3()", "FIXD4()", "DATA0()", "DATA1()", "DATA2()", "DATA3()",
    "DATA4()", "UNIQ0()", "UNIQ1()", "UNIQ2()", "UNIQ3()", "UNIQ4()", "UNIQ5()", "UNIQ6()", "UNIQ7()", "UNIQ8()",
    "UNIQ9()", "DEMO0()", "DEMO1()", "DEMO2()", "DEMO3()", "DEMO4()", "DEMO5()", "DEMO6()", "DEMO7()", "DEMO8()",
    "DEMO9()", "SPEC0()", "SPEC1()", "SPEC2()", "SPEC3()", "SPEC4()", "SPEC5()", "SPEC6()", "SPEC7()", "SPEC8()",
    "SPEC9()", "",        "",        "",        "",        "",
};

VecSph D_8011D658[] = {
    { 50.0f, 0xEE3A, 0xD558 },
    { 75.0f, 0x0000, 0x8008 },
    { 80.0f, 0xEE3A, 0x8008 },
    { 15.0f, 0xEE3A, 0x8008 },
};

Vec3f D_8011D678[] = {
    { 0.0f, 40.0f, 20.0f },
    { 0.0f, 40.0f, 0.0f },
    { 0.0f, 3.0f, -3.0f },
    { 0.0f, 3.0f, -3.0 },
};

/*******************************************************
 * OnePoint initalization values for Demo5
********************************************************/
s32 sDemo5PrevSfxFrame = -200;

// target is player, far from eye
OnePointDemoFull D_8011D6AC[] = {
    {
        // initflags & 0x00FF (at): 2, atTarget is view lookAt + atInit
        // initFlags & 0xFF00 (eye): none
        // action: 15, copy at, eye, roll, fov to camera
        // result: eye remains in the same locaiton, at is View's lookAt
        0x8F, 0xFF, 0x0002, 0x0001, 0x0000, 60.0f, 1.0f,
        { 0.0f, 0.0f, 0.0f },
        { 0.0f, 0.0f, 0.0f }
    },
    {
        // initFlags & 0x00FF (at): 3, atTarget is camera's current at + atInit
        // initFlags & 0xFF00 (eye): 3, eyeTarget is the camera's current eye + eyeInit
        // action: interplate eye and at.
        // result: eye and at's y interpolate to become +20 from their current location.
        0x81, 0xFF, 0x0303, 0x0013, 0x0000, 45.0f, 1.0f,
        { 0.0f, 20.0f, 0.0f },
        { 0.0f, 20.0f, 0.0f}
    },
    {
        // initFlags & 0x00FF (at): 0 none
        // initFlags & 0xFF00 (eye): 0 none
        // action: 18, copy this camera to default camera.
        0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f,
        { -1.0f, -1.0f, -1.0f },
        { -1.0f, -1.0f, -1.0f }
    },
};

// target is player close to current eye
OnePointDemoFull D_8011D724[] = {
    {
        0x8F, 0xFF, 0x2424, 0x0001, 0x0000, 60.0f, 1.0f,
        { 0.0f, 0.0f, 0.0f },
        { 0.0f, 10.0f, -20.0f }
    },
    {
        0x81, 0xFF, 0x2121, 0x0013, 0x0000, 50.0f, 1.0f,
        { 0.0f, -10.0f, 0.0f },
        { 0.0f, 0.0f, 60.0f }
    },
    { 
        0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f,
        { -1.0f, -1.0f, -1.0f },
        { -1.0f, -1.0f, -1.0f }
    },
};

// target is close to player
OnePointDemoFull D_8011D79C[] = {
    {
        0xCF, 0xFF, 0x0002, 0x0001, 0x0000, 60.0f, 1.0f,
        { 0.0f, 0.0f, 0.0f },
        { 0.0f, 0.0f, 0.0f }
    },
    {
        0xC1, 0xFF, 0x0303, 0x0013, 0x0000, 45.0f, 1.0f,
        { 0.0f, -20.0f, 0.0f },
        { 0.0f, -10.0f, 5.0f }
    },
    {
        0xC1, 0xFF, 0x0303, 0x0009, 0x0000, 60.0f, 1.0f,
        { 0.0f, 10.0f, 0.0f },
        { 0.0f, 10.0f, 0.0f },
    },
    {
        0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f,
        { -1.0f, -1.0f, -1.0f },
        { -1.0f, -1.0f, -1.0f }
    },
};

// target is within 300 units of eye, and player is within 30 units of eye
OnePointDemoFull D_8011D83C[] = {
    {
        0x83, 0xFF, 0x2141, 0x0014, 0x0000, 45.0f, 0.2f,
        { 0.0f, 0.0f, 10.0f },
        { 0.0f, 0.0f, 10.0f }
    },
    {
        0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f,
        { -1.0f, -1.0f, -1.0f },
        { -1.0f, -1.0f, -1.0f }
    },
};

// target is within 700 units of eye, angle between player/eye and target/eye is less than
// 76.9 degrees.  The x/y coordinates of the target on screen is between (21, 41) and (300, 200),
// and the player is farther than 30 units of the eye
OnePointDemoFull D_8011D88C[] = {
    { 
        0x81, 0xFF, 0x0303, 0x0014, 0x0000, 45.0f, 1.0f,
        { 0.0f, 0.0f, 0.0f },
        { 0.0f, 0.0f, 0.0f }
    },
    {
        0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f,
        { -1.0f, -1.0f, -1.0f },
        { -1.0f, -1.0f, -1.0f }
    },
};

// same as above, but the target is NOT within the screen area.
OnePointDemoFull D_8011D8DC[] = {
    {
        0x8F, 0xFF, 0x0404, 0x0014, 0x0001, 50.0f, 1.0f,
        { 0.0f, 5.0f, 10.0f },
        { 0.0f, 10.0f, -80.0f }
    },
    {
        0x82, 0xFF, 0x2121, 0x0005, 0x0000, 60.0f, 1.0f,
        { 0.0f, 5.0f, 0.0f },
        { 5.0f, 5.0f, -200.0f }
    },
    {
        0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f,
        { -1.0f, -1.0f, -1.0f },
        { -1.0f, -1.0f, -1.0f }
    },
};

// target is a door.
OnePointDemoFull D_8011D954[] = {
    {
        0x0F, 0xFF, 0xC1C1, 0x0014, 0x0000, 60.0f, 1.0f,
        { 0.0f, 0.0f, 50.0f },
        { 0.0f, 0.0f, 250.0f }
    },
    {
        0x83, 0xFF, 0x05B1, 0x0005, 0x0000, 60.0f, 0.1f,
        { 0.0f, 10.0f, 50.0f },
        { 0.0f, 10.0f, 100.0f }
    },
    {
        0x82, 0xFF, 0x2121, 0x0005, 0x0002, 60.0f, 1.0f,
        { 0.0f, 10.0f, 0.0f },
        { 0.0f, 20.0f, -150.0f }
    },
    {
        0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f,
        { -1.0f, -1.0f, -1.0f },
        { -1.0f, -1.0f, -1.0f }
    },
};

// otherwise
OnePointDemoFull D_8011D9F4[] = {
    {
        0x8F, 0xFF, 0x0504, 0x0014, 0x0002, 60.0f, 1.0f,
        { 0.0f, 5.0f, 50.0f },
        { 0.0f, 20.0f, 300.0f }
    },
    {
        0x82, 0xFF, 0x2121, 0x0005, 0x0002, 60.0f, 1.0f,
        { 0.0f, 10.0f, 0.0f },
        { 0.0f, 20.0f, -150.0f }
    },
    {
        0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f,
        { -1.0f, -1.0f, -1.0f },
        { -1.0f, -1.0f, -1.0f }
    },
};

Vec3f D_8011DA6C[] = {
    { 3050.0f, 700.0f, 0.0f },
    { 1755.0f, 3415.0f, -380.0f },
    { -3120.0f, 3160.0f, 245.0f },
    { 0.0f, -10.0f, 240.0f }
};

Vec3f D_8011DA9C[] = {
    { 3160.0f, 2150.0f, 0.0f },
    { 1515.0f, 4130.0f, -835.0f },
    { -3040.0f, 4135.0f, 230.0f },
    { -50.0f, 600.0f, -75.0f }, 
};

f32 D_8011DACC[] = {
    1570.0f, 3680.0f, 3700.0f, 395.0f
};

f32 D_8011DADC[] = {
    320.0f, 320.0f, 320.0f, 0.0f
};

s16 D_8011DAEC[] = { -2000, -1000, 0, 0, 0, 0, 0, 0 };

s16 D_8011DAFC[] = {
    CAM_SET_NORMAL0, CAM_SET_NORMAL1, CAM_SET_NORMAL2, CAM_SET_DUNGEON0, CAM_SET_DUNGEON1, CAM_SET_DUNGEON2,
};

Vec3f D_8015BD50;
Vec3f D_8015BD60;
Vec3f D_8015BD70;
GlobalContext* D_8015BD7C;
DBCamera D_8015BD80;
CollisionPoly *playerFloorPoly;

// statics
f32 D_8015CE50;
f32 D_8015CE54;
CamColChk D_8015CE58;

CamColChk D_8015CE80;
CamColChk D_8015CEA8;
CamColChk D_8015CED0;
