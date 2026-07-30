#ifndef Z_EN_DY_EXTRA_H
#define Z_EN_DY_EXTRA_H

#include "ultra64.h"
#include "actor.h"

struct EnDyExtra;

typedef void (*EnDyExtraActionFunc)(struct EnDyExtra*, struct PlayState*);

typedef struct EnDyExtra {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnDyExtraActionFunc actionFunc;
    /* 0x0150 */ s16 type;
    /* 0x0152 */ s16 unk_152;
    /* 0x0154 */ s16 unk_154;
    /* 0x0158 */ f32 unk_158;
    /* 0x015C */ Vec3f unk_15C;
    /* 0x0168 */ Vec3f unk_168;
} EnDyExtra; // size = 0x0174

#endif
