#ifndef Z_BG_HAKA_TRAP_H
#define Z_BG_HAKA_TRAP_H

#include "ultra64.h"
#include "actor.h"

typedef enum HakaTrapType {
    /* 0x00 */ HAKA_TRAP_GUILLOTINE,
    /* 0x01 */ HAKA_TRAP_SPIKED_CRUSHER,
    /* 0x02 */ HAKA_TRAP_SPIKED_WALL_EAST,
    /* 0x03 */ HAKA_TRAP_SPIKED_WALL_WEST,
    /* 0x04 */ HAKA_TRAP_FAN_BLADE,
    /* 0x05 */ HAKA_TRAP_GUILLOTINE_FAST
} HakaTrapType;

struct BgHakaTrap;

typedef void (*BgHakaTrapActionFunc)(struct BgHakaTrap*, struct PlayState*);

typedef struct BgHakaTrap {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaTrapActionFunc actionFunc;
    /* 0x0168 */ u8 timer;
    /* 0x0169 */ u8 isSpikedCrusherStationary;
    /* 0x016A */ union {
        s16 isGuillotineFast; // 0 slow, 1 fast
        s16 spikedCrusherStepY; // when lifting the crusher, it will pause briefly at this height before being
                                // lifted to it's maximum height
    };
    /* 0x016C */ Vec3f chainLiftSfxPos;
    /* 0x0178 */ ColliderCylinder colliderCylinder;
    /* 0x01C4 */ ColliderTris spikesCollider;
    /* 0x01E4 */ ColliderTrisElement spikesColliderElements[2];
} BgHakaTrap; // size = 0x029C

#endif
