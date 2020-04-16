#ifndef _Z_DOOR_ANA_H_
#define _Z_DOOR_ANA_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ ActorFunc actionFunc;
} DoorAna; // size = 0x019C

extern const ActorInit Door_Ana_InitVars;

#endif
