#ifndef _Z_DOOR_TOKI_H_
#define _Z_DOOR_TOKI_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32 dynaPolyId;
    /* 0x0150 */ u8 unk_150[0x18];
} DoorToki; // size = 0x0168

extern const ActorInit Door_Toki_InitVars;

#endif
