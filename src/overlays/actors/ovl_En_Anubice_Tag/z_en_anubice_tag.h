#ifndef Z_EN_ANUBICE_TAG_H
#define Z_EN_ANUBICE_TAG_H

#include "ultra64.h"
#include "z64actor.h"

struct EnAnubiceTag;

typedef void (*EnAnubiceTagActionFunc)(struct EnAnubiceTag*, struct PlayState*);

typedef struct EnAnubiceTag {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnAnubiceTagActionFunc actionFunc;
    /* 0x0150 */ struct EnAnubice* anubis;
    /* 0x0154 */ f32 extraTriggerRange;
} EnAnubiceTag; // size = 0x0158

#endif
