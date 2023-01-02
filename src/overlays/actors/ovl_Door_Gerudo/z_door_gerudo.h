#ifndef Z_DOOR_GERUDO_H
#define Z_DOOR_GERUDO_H

#include "ultra64.h"
#include "global.h"

struct DoorGerudo;

typedef void (*DoorGerudoActionFunc)(struct DoorGerudo*, PlayState*);

typedef struct DoorGerudo {
    /* 0x0000 */ SLIDING_DOOR_ACTOR_BASE;
    /* 0x0166 */ u8 unk_166;
    /* 0x0168 */ DoorGerudoActionFunc actionFunc;
} DoorGerudo; // size = 0x016C

#endif
