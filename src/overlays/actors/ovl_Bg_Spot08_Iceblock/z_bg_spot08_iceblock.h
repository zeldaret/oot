#ifndef Z_BG_SPOT08_ICEBLOCK_H
#define Z_BG_SPOT08_ICEBLOCK_H

#include "ultra64.h"
#include "actor.h"

struct BgSpot08Iceblock;

typedef struct BgSpot08Iceblock {
    /* 0x000 */ DynaPolyActor dyna;
    /* 0x164 */ void (*unk164)(struct BgSpot08Iceblock*, struct PlayState*);
    /* 0x168 */ Vec3f unk168;
    /* 0x174 */ Vec3f unk174;
    /* 0x180 */ Vec3f unk180;
    /* 0x18C */ s16 unk18C;
    /* 0x18E */ s16 unk18E;
    /* 0x190 */ s16 unk190;
    /* 0x192 */ s16 unk192;
    /* 0x194 */ f32 unk194;
    /* 0x198 */ f32 unk198;
} BgSpot08Iceblock; // size = 0x19C

#endif
