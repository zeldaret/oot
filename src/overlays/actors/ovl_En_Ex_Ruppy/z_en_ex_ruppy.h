#ifndef Z_EN_EX_RUPPY_H
#define Z_EN_EX_RUPPY_H

#include "ultra64.h"
#include "actor.h"

struct EnExRuppy;

typedef void (*EnExRuppyActionFunc)(struct EnExRuppy*, struct PlayState*);

typedef struct EnExRuppy {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnExRuppyActionFunc actionFunc;
    /* 0x0150 */ s16 colorIdx;
    /* 0x0152 */ s16 type;
    /* 0x0154 */ s16 invisible;
    /* 0x0156 */ s16 timer;
    /* 0x0158 */ s16 rupeeValue;
    /* 0x015A */ s16 throwDistance;
    /* 0x015C */ s16 galleryFlag;
    /* 0x0160 */ f32 scale;
} EnExRuppy; // size = 0x0164

typedef enum EnExRuppyType {
    /* 0 */ ENEXRUPPY_TYPE_DIVING_GAME,
    /* 1 */ ENEXRUPPY_TYPE_BOMB_LARGE,
    /* 2 */ ENEXRUPPY_TYPE_BOMB_SMALL,
    /* 3 */ ENEXRUPPY_TYPE_HYRULE_COURTYARD,
    /* 4 */ ENEXRUPPY_TYPE_SHOOTING_GALLERY_PROGRESS,
} EnExRuppyType;

#endif
