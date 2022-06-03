#ifndef Z_EN_INSECT_H
#define Z_EN_INSECT_H

#include "ultra64.h"
#include "global.h"
#include "overlays/actors/ovl_Obj_Makekinsuta/z_obj_makekinsuta.h"

struct EnInsect;

typedef void (*EnInsectActionFunc)(struct EnInsect*, PlayState*);

#define INSECT_FLAG_0 (1 << 0)
#define INSECT_FLAG_1 (1 << 1)
#define INSECT_FLAG_IS_SHORT_LIVED (1 << 2)
#define INSECT_FLAG_UNCATCHABLE (1 << 3) // Set when the bug is about to disappear and can no longer be caught.
#define INSECT_FLAG_FOUND_SOIL (1 << 4)
#define INSECT_FLAG_SOIL_CLOSE (1 << 5)
#define INSECT_FLAG_DROPPED_HAS_LANDED (1 << 6) // Set when the landing sound has been played.
#define INSECT_FLAG_7 (1 << 7)
#define INSECT_FLAG_CRAWLING (1 << 8)

typedef struct EnInsect {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderJntSph collider;
    /* 0x016C */ ColliderJntSphElement colliderItem;
    /* 0x01AC */ SkelAnime skelAnime;
    /* 0x01F0 */ Vec3s jointTable[24];
    /* 0x0280 */ Vec3s morphTable[24];
    /* 0x0310 */ EnInsectActionFunc actionFunc;
    /* 0x0314 */ u16 insectFlags;
    /* 0x0316 */ s16 unk_316;
    /* 0x0318 */ s16 unk_318;
    /* 0x031A */ s16 actionTimer;
    /* 0x031C */ s16 lifeTimer;
    /* 0x031E */ s16 crawlSoundDelay;
    /* 0x0320 */ ObjMakekinsuta* soilActor;
    /* 0x0324 */ f32 unk_324;
    /* 0x0328 */ s16 unk_328;
    /* 0x032A */ u8 unk_32A;
} EnInsect; // size = 0x032C

typedef enum {
    /* 0 */ INSECT_TYPE_PERMANENT,
    /* 1 */ INSECT_TYPE_SPAWNED,
    /* 2 */ INSECT_TYPE_FIRST_DROPPED,
    /* 3 */ INSECT_TYPE_EXTRA_DROPPED // An additional bug spawned by dropping one from a bottle.
} EnInsectType;

#endif
