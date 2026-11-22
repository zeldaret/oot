#ifndef Z_EN_FISH_H
#define Z_EN_FISH_H

#include "ultra64.h"
#include "actor.h"

typedef enum EnFishType {
    EN_FISH_TYPE_NORMAL = -1, // Typically ObjMure-handled (also used in some Zora's fountain cutscene layers)
    EN_FISH_TYPE_DROPPED,     // Dropped by the player
    EN_FISH_TYPE_TINY_POND    // Used in grottos, the fish doesn't reappear
} EnFishType;

struct EnFish;

typedef void (*EnFishActionFunc)(struct EnFish*, struct PlayState*);

typedef struct EnFish {
    /* 0x000 */ Actor actor;
    /* 0x14C */ ColliderJntSph collider;
    /* 0x16C */ ColliderJntSphElement colliderElements[1];
    /* 0x1AC */ SkelAnime skelAnime;
    /* 0x1F0 */ Vec3s jointTable[7];
    /* 0x21A */ Vec3s morphTable[7];
    /* 0x244 */ EnFishActionFunc actionFunc;
    /* 0x248 */ s16 timer;
    /* 0x24A */ s16 reappearTimer;
    /* 0x24C */ s16 phase1;
    /* 0x24E */ s16 phase2;
    /* 0x250 */ s32 updBgCheckInfoFlags;
} EnFish; // size = 0x254

#endif
