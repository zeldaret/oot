#ifndef _Z_DOOR_KILLER_H_
#define _Z_DOOR_KILLER_H_

#include "ultra64.h"
#include "global.h"

struct DoorKiller;

typedef struct DoorKiller {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x138];
} DoorKiller; // size = 0x0284

extern const ActorInit Door_Killer_InitVars;

#endif
