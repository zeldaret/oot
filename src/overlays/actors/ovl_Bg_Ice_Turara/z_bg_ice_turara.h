#ifndef Z_BG_ICE_TURARA_H
#define Z_BG_ICE_TURARA_H

#include "ultra64.h"
#include "actor.h"

struct BgIceTurara;

typedef void (*BgIceTuraraActionFunc)(struct BgIceTurara*, struct PlayState*);

typedef struct BgIceTurara {
    /* 0x000 */ DynaPolyActor dyna;
    /* 0x164 */ BgIceTuraraActionFunc unk164;
    /* 0x168 */ s16 unk168;
    /* 0x16A */ char pad16A[2];
    /* 0x16C */ ColliderCylinder unk16C;
} BgIceTurara; // size = 0x01B8

#endif
