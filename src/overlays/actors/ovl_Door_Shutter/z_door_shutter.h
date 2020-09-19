#ifndef _Z_DOOR_SHUTTER_H_
#define _Z_DOOR_SHUTTER_H_

#include "ultra64.h"
#include "global.h"

struct DoorShutter;

typedef struct DoorShutter {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x18];
    /* 0x0164 */ s16 unk_164;
    /* 0x0166 */ char unk_166[0x12];
} DoorShutter; // size = 0x0178

extern const ActorInit Door_Shutter_InitVars;

#endif
