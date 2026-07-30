#ifndef Z_EN_FISH_H
#define Z_EN_FISH_H

#include "ultra64.h"
#include "actor.h"

typedef enum EnFishType {
    EN_FISH_TYPE_NEG1 = -1,
    EN_FISH_TYPE_DROPPED,
    EN_FISH_TYPE_1
} EnFishType;

struct EnFish;

typedef struct EnFish {
    /* 0x000 */ Actor actor;
    /* 0x14C */ ColliderJntSph collider;
    /* 0x16C */ ColliderJntSphElement colliderElements[1];
    /* 0x1AC */ SkelAnime skelAnime;
    /* 0x1F0 */ Vec3s jointTable[7];
    /* 0x21A */ Vec3s morphTable[7];
    /* 0x244 */ void (*actionFunc)(struct EnFish*, struct PlayState*);
    /* 0x248 */ s16 timer;
    /* 0x24A */ s16 reappearTimer;
    /* 0x24C */ s16 phase1;
    /* 0x24E */ s16 phase2;
    /* 0x250 */ s32 updBgCheckInfoFlags;
} EnFish; // size = 0x254

#endif
