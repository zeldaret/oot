#ifndef Z_DOOR_TOKI_H
#define Z_DOOR_TOKI_H

#include "ultra64.h"
#include "global.h"

struct DoorToki;

typedef struct DoorToki {
    /* 0x0000 */ BgActor bg;
    /* 0x0164 */ char unk_164[0x4];
} DoorToki; // size = 0x0168

#endif
