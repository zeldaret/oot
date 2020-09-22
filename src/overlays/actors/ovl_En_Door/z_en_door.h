#ifndef _Z_EN_DOOR_H_
#define _Z_EN_DOOR_H_

#include <ultra64.h>
#include <global.h>

struct EnDoor;

typedef struct EnDoor {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x44];
    /* 0x0190 */ u8 unk_190;
    /* 0x0191 */ u8 unk_191;
    /* 0x0192 */ char unk_192[0x46];
} EnDoor; // size = 0x01D8

extern const ActorInit En_Door_InitVars;

#endif
