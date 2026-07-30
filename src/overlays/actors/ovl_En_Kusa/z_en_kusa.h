#ifndef Z_EN_KUSA_H
#define Z_EN_KUSA_H

#include "ultra64.h"
#include "actor.h"

struct EnKusa;

typedef void (*EnKusaActionFunc)(struct EnKusa*, struct PlayState*);

typedef enum EnKusaType {
    /* 0 */ ENKUSA_TYPE_0,
    /* 1 */ ENKUSA_TYPE_1,
    /* 2 */ ENKUSA_TYPE_2
} EnKusaType;

typedef struct EnKusa {
    /* 0x000 */ Actor actor;
    /* 0x14C */ EnKusaActionFunc actionFunc;
    /* 0x150 */ ColliderCylinder unk150;
    /* 0x19C */ s16 unk19C;
    /* 0x19E */ s8 requiredObjectSlot;
    /* 0x19F */ char pad19F[1];
} EnKusa; // size = 0x1A0

#endif
