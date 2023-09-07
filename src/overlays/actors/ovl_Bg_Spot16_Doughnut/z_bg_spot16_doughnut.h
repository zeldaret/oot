#ifndef Z_BG_SPOT16_DOUGHNUT_H
#define Z_BG_SPOT16_DOUGHNUT_H

#include "ultra64.h"
#include "global.h"

struct BgSpot16Doughnut;

typedef struct BgSpot16Doughnut {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u16 fireFlag;
    /* 0x014E */ char unk_14E[0x2];
    /* 0x0150 */ u8 envColorAlpha;
} BgSpot16Doughnut; // size = 0x0154

#endif
