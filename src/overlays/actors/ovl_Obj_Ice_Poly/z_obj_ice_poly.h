#ifndef Z_OBJ_ICE_POLY_H
#define Z_OBJ_ICE_POLY_H

#include "ultra64.h"
#include "z64actor.h"

struct ObjIcePoly;

typedef void (*ObjIcePolyActionFunc)(struct ObjIcePoly*, struct PlayState*);

typedef struct ObjIcePoly {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ObjIcePolyActionFunc actionFunc;
    /* 0x0150 */ u8 alpha;
    /* 0x0151 */ u8 unk_151; // Unused. Probably intended to be a switch flag.
    /* 0x0152 */ s16 meltTimer;
    /* 0x0154 */ ColliderCylinder iceCollider;
    /* 0x01A0 */ ColliderCylinder hardCollider;
} ObjIcePoly; // size = 0x01EC

#endif
