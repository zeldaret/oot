#ifndef Z_EN_INSECT_H
#define Z_EN_INSECT_H

#include "ultra64.h"
#include "global.h"
#include "overlays/actors/ovl_Obj_Makekinsuta/z_obj_makekinsuta.h"

struct EnInsect;

typedef void (*EnInsectActionFunc)(struct EnInsect*, GlobalContext*);

#define INSECT_FLAG_TEMP_AND_ALIVE (1 << 0) // Set when the insect is temporary and is not drowning.
#define INSECT_FLAG_ON_GROUND (1 << 1) // Set when the insect was dropped and is standing on the ground.
#define INSECT_FLAG_TEMP (1 << 2) // Set when the insect disappears after a while.
#define INSECT_FLAG_UNCATCHABLE (1 << 3) // Set when the insect is about to disappear and can no longer be caught.
#define INSECT_FLAG_FOUND_SOIL (1 << 4)
#define INSECT_FLAG_SOIL_CLOSE (1 << 5)
#define INSECT_FLAG_LANDED (1 << 6) // Set when the landing sound has been played.
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
    /* 0x0314 */ u16 flags;
    /* 0x0316 */ s16 unk_316;
    /* 0x0318 */ s16 unk_318;
    /* 0x031A */ s16 actionTimer;
    /* 0x031C */ s16 lifeTimer;
    /* 0x031E */ s16 crawlSoundTimer;
    /* 0x0320 */ ObjMakekinsuta* soilActor;
    /* 0x0324 */ f32 unk_324;
    /* 0x0328 */ s16 unk_328;
    /* 0x032A */ u8 unk_32A;
} EnInsect; // size = 0x032C

typedef enum {
    /* 0 */ INSECT_PERMANENT,
    /* 1 */ INSECT_SPAWNED,
    /* 2 */ INSECT_FIRST_DROPPED,
    /* 3 */ INSECT_EXTRA_DROPPED // An additional insect spawned by dropping one from a bottle.
} EnInsectType;

#define IS_DROPPED(type) ((type) == INSECT_FIRST_DROPPED || (type) == INSECT_EXTRA_DROPPED)

#endif
