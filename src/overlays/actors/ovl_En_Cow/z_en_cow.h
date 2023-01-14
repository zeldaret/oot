#ifndef Z_EN_COW_H
#define Z_EN_COW_H

#include "ultra64.h"
#include "global.h"
#include "assets/objects/object_cow/object_cow.h"

#define EN_COW_FLAG_PLAYER_HAS_APPROACHED (1 << 1)
#define EN_COW_FLAG_WONT_GIVE_MILK (1 << 2)

#define EN_COW_TYPE(thisx) ((thisx)->actor.params)
typedef enum {
    /*  0 */ EN_COW_TYPE_DEFAULT,
    /*  1 */ EN_COW_TYPE_TAIL
} EnCowType;

typedef enum {
    /*  0 */ EN_COW_COLL_FRONT,
    /*  1 */ EN_COW_COLL_REAR,
    /*  2 */ EN_COW_COLL_MAX
} EnCowCollider;

struct EnCow;

typedef void (*EnCowActionFunc)(struct EnCow*, PlayState*);

typedef struct EnCow {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder colliders[EN_COW_COLL_MAX];
    /* 0x01E4 */ SkelAnime skelAnime;
    /* 0x0228 */ Vec3s jointTable[COW_LIMB_MAX];
    /* 0x024C */ Vec3s morphTable[COW_LIMB_MAX];
    /* 0x0270 */ Vec3s headTilt;
    /* 0x0276 */ u16 flags;
    /* 0x0278 */ u16 animationTimer;
    /* 0x027A */ u16 animationCycle;
    /* 0x027C */ EnCowActionFunc actionFunc;
} EnCow; // size = 0x0280

#endif
