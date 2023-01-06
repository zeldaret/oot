#ifndef Z_EN_COW_H
#define Z_EN_COW_H

#include "ultra64.h"
#include "global.h"

#define COW_ACTIVE (1 << 1)
#define COW_RESET_EPONAS_TRIGGER (1 << 2)

struct EnCow;

typedef void (*EnCowActionFunc)(struct EnCow*, PlayState*);

typedef struct EnCow {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder colliders[2];
    /* 0x01E4 */ SkelAnime skelAnime;
    /* 0x0228 */ Vec3s jointTable[6];
    /* 0x024C */ Vec3s morphTable[6];
    /* 0x0270 */ Vec3s headRot;
    /* 0x0276 */ u16 stateFlags;
    /* 0x0278 */ u16 animTimer;
    /* 0x027A */ u16 breathTimer;
    /* 0x027C */ EnCowActionFunc actionFunc;
} EnCow; // size = 0x0280

#endif
