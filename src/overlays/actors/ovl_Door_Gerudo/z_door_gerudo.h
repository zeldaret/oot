#ifndef _Z_DOOR_GERUDO_H_
#define _Z_DOOR_GERUDO_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x20];
} DoorGerudo; // size = 0x016C

extern const ActorInit Door_Gerudo_InitVars;

#endif
