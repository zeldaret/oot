#ifndef Z_EN_COW_H
#define Z_EN_COW_H

#include "ultra64.h"
#include "global.h"
#include "assets/objects/object_cow/object_cow.h"

#define COW_FLAG_PLAYER_NEARBY (1 << 1)
#define COW_FLAG_FAILED_TO_GIVE_MILK (1 << 2)

#define COW_GET_TYPE(thisx) ((thisx)->actor.params)

typedef enum {
    /*  0 */ COW_TYPE_BODY,
    /*  1 */ COW_TYPE_TAIL
} CowType;

typedef enum {
    /*  0 */ COW_COLLIDER_FRONT,
    /*  1 */ COW_COLLIDER_REAR,
    /*  2 */ COW_COLLIDER_MAX
} CowCollider;

struct EnCow;

typedef void (*EnCowActionFunc)(struct EnCow*, PlayState*);

typedef struct EnCow {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder colliders[COW_COLLIDER_MAX];
    /* 0x01E4 */ SkelAnime skelAnime;
    /* 0x0228 */ Vec3s jointTable[COW_LIMB_MAX];
    /* 0x024C */ Vec3s morphTable[COW_LIMB_MAX];
    /* 0x0270 */ Vec3s headRot;
    /* 0x0276 */ u16 cowFlags;
    /* 0x0278 */ u16 animationTimer;
    /* 0x027A */ u16 breathTimer;
    /* 0x027C */ EnCowActionFunc actionFunc;
} EnCow; // size = 0x0280

#endif
