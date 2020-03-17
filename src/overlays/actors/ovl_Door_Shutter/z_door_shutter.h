#ifndef _Z_DOOR_SHUTTER_H_
#define _Z_DOOR_SHUTTER_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2C];
} DoorShutter; // size = 0x0178

extern const ActorInit Door_Shutter_InitVars;

#endif
