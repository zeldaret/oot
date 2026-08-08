#ifndef Z_BG_SPOT08_ICEBLOCK_H
#define Z_BG_SPOT08_ICEBLOCK_H

#include "ultra64.h"
#include "actor.h"

struct BgSpot08Iceblock;

typedef struct BgSpot08Iceblock {
    /* 0x000 */ DynaPolyActor dyna;
    /* 0x164 */ void (*actionFunc)(struct BgSpot08Iceblock*, struct PlayState*);
    /* 0x168 */ Vec3f unk_168;
    /* 0x174 */ Vec3f unk_174;
    /* 0x180 */ Vec3f swayAxis;
    /* 0x18C */ s16 yOscillationPhase1;
    /* 0x18E */ s16 yOscillationPhase2;
    /* 0x190 */ s16 yOscillationPulse1;
    /* 0x192 */ s16 yOscillationPulse2;
    /* 0x194 */ f32 sinkHeight;
    /* 0x198 */ f32 yOscillation;
} BgSpot08Iceblock; // size = 0x19C

#endif
