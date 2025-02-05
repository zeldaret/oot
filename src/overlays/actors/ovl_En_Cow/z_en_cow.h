#ifndef Z_EN_COW_H
#define Z_EN_COW_H

#include "ultra64.h"
#include "global.h"
#include "assets/objects/object_cow/object_cow.h"

typedef enum CowLimb {
    /* 0x00 */ COW_LIMB_NONE,
    /* 0x01 */ COW_LIMB_ROOT,
    /* 0x02 */ COW_LIMB_HEAD,
    /* 0x03 */ COW_LIMB_JAW,
    /* 0x04 */ COW_LIMB_NOSE,
    /* 0x05 */ COW_LIMB_NOSE_RING,
    /* 0x06 */ COW_LIMB_MAX
} CowLimb;

typedef enum CowTailLimb {
    /* 0x00 */ COW_TAIL_LIMB_NONE,
    /* 0x01 */ COW_TAIL_LIMB_ROOT,
    /* 0x02 */ COW_TAIL_LIMB_UPPER,
    /* 0x03 */ COW_TAIL_LIMB_MIDDLE,
    /* 0x04 */ COW_TAIL_LIMB_LOWER,
    /* 0x05 */ COW_TAIL_LIMB_END,
    /* 0x06 */ COW_TAIL_LIMB_MAX
} CowTailLimb;

#define COW_FLAG_PLAYER_NEARBY (1 << 1)
#define COW_FLAG_FAILED_TO_GIVE_MILK (1 << 2)

#define COW_GET_TYPE(thisx) ((thisx)->actor.params)

typedef enum CowType {
    /*  0 */ COW_TYPE_BODY,
    /*  1 */ COW_TYPE_TAIL
} CowType;

typedef enum CowCollider {
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
