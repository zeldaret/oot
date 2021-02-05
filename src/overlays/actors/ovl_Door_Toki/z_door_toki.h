#ifndef _Z_DOOR_TOKI_H_
#define _Z_DOOR_TOKI_H_

#include "ultra64.h"
#include "global.h"

struct DoorToki;

typedef struct DoorToki {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ char unk_164[0x4];
} DoorToki; // size = 0x0168

extern const ActorInit Door_Toki_InitVars;

#endif
