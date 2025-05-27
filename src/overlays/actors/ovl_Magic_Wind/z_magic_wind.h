#ifndef Z_MAGIC_WIND_H
#define Z_MAGIC_WIND_H

#include "ultra64.h"
#include "z64actor.h"
#include "z64curve.h"

struct MagicWind;

typedef void (*MagicWindFunc)(struct MagicWind* this, struct PlayState* play);

typedef struct MagicWind {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelCurve skelCurve;
    /* 0x016C */ s16 timer;
    /* 0x0170 */ MagicWindFunc actionFunc;
} MagicWind; // size = 0x0174

#endif
