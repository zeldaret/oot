#ifndef Z_EN_BILI_H
#define Z_EN_BILI_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_bl/object_bl.h"

typedef enum EnBiliType {
    EN_BILI_TYPE_NORMAL = -1,
    EN_BILI_TYPE_SPAWNED_BY_BARI,
    EN_BILI_TYPE_DIE_AFTER_ELECTRIFY // internal
} EnBiliType;

struct EnBili;

typedef struct EnBili {
    /* 0x000 */ Actor actor;
    /* 0x14C */ SkelAnime skelAnime;
    /* 0x190 */ void (*actionFunc)(struct EnBili*, struct PlayState*);
    /* 0x194 */ u8 tentaclesTexIndex;
    /* 0x195 */ u8 playFlySfx;
    /* 0x196 */ s16 timer;
    /* 0x198 */ Vec3s jointTable[BIRI_LIMB_MAX];
    /* 0x1B6 */ Vec3s morphTable[BIRI_LIMB_MAX];
    /* 0x1D4 */ ColliderCylinder collider;
} EnBili; // size = 0x220

#endif
