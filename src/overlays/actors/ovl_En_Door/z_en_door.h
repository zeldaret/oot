#ifndef _Z_EN_DOOR_H_
#define _Z_EN_DOOR_H_

#include <ultra64.h>
#include <global.h>

struct EnDoor;

typedef struct EnDoor {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x8C];
} EnDoor; // size = 0x01D8

extern const ActorInit En_Door_InitVars;

#endif
