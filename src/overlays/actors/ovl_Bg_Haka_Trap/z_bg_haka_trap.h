#ifndef Z_BG_HAKA_TRAP_H
#define Z_BG_HAKA_TRAP_H

#include "ultra64.h"
#include "actor.h"

typedef enum BgHakaTrapType {
    /* 0 */ BG_HAKA_TRAP_GUILLOTINE,
    /* 1 */ BG_HAKA_TRAP_SPIKED_CRUSHER,
    /* 2 */ BG_HAKA_TRAP_SPIKED_WALL_EAST,
    /* 3 */ BG_HAKA_TRAP_SPIKED_WALL_WEST,
    /* 4 */ BG_HAKA_TRAP_FAN_BLADE,
    /* 5 */ BG_HAKA_TRAP_GUILLOTINE_FAST
} BgHakaTrapType;

struct BgHakaTrap;

typedef void (*BgHakaTrapActionFunc)(struct BgHakaTrap*, struct PlayState*);

typedef struct BgHakaTrap {
    /* 0x000 */ DynaPolyActor dyna;
    /* 0x164 */ BgHakaTrapActionFunc actionFunc;
    /* 0x168 */ u8 unk168;
    /* 0x169 */ s8 isSpikedCrusherStationary;
    /* 0x016A */ union {
        s16 isGuillotineFast; // 0 slow, 1 fast
        s16 spikedCrusherStepY; // when lifting the crusher, it will pause briefly at this height before being
                                // lifted to its maximum height
    };
    /* 0x16C */ Vec3f chainLiftSfxPos;
    /* 0x178 */ ColliderCylinder unk178;
    /* 0x1C4 */ ColliderTris unk1C4;
    /* 0x1E4 */ ColliderTrisElement unk1E4[2];
} BgHakaTrap; // size = 0x29C

#endif
