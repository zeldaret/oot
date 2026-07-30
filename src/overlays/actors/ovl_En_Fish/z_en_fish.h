#ifndef Z_EN_FISH_H
#define Z_EN_FISH_H

#include "ultra64.h"
#include "actor.h"

struct EnFish;

typedef struct EnFish {
    /* 0x000 */ Actor actor;
    /* 0x14C */ ColliderJntSph unk14C;
    /* 0x16C */ ColliderJntSphElement unk16C;
    /* 0x1AC */ SkelAnime unk1AC;
    /* 0x1F0 */ Vec3s unk1F0[7];
    /* 0x21A */ Vec3s unk21A[7];
    /* 0x244 */ void (*unk244)(struct EnFish*, struct PlayState*);
    /* 0x248 */ s16 unk248;
    /* 0x24A */ s16 unk24A;
    /* 0x24C */ s16 unk24C;
    /* 0x24E */ s16 unk24E;
    /* 0x250 */ s32 unk250;
} EnFish; // size = 0x254

#endif
