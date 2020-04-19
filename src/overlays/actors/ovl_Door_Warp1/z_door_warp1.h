#ifndef _Z_DOOR_WARP1_H_
#define _Z_DOOR_WARP1_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xA0];
    /* 0x01EC */ s32 unk_1EC;
} DoorWarp1; // size = 0x01F0

extern const ActorInit Door_Warp1_InitVars;

#endif
