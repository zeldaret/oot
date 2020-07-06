#ifndef _Z_DOOR_WARP1_H_
#define _Z_DOOR_WARP1_H_

#include <ultra64.h>
#include <global.h>

struct DoorWarp1;

typedef struct DoorWarp1 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x5C];
    /* 0x01A8 */ f32 unk_1A8;
    /* 0x01AC */ char unk_1AC[0x40];
    /* 0x01EC */ s32 unk_1EC;
} DoorWarp1; // size = 0x01F0

extern const ActorInit Door_Warp1_InitVars;

#endif
