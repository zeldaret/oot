#ifndef Z_EFC_ERUPC_H
#define Z_EFC_ERUPC_H

#include "ultra64.h"
#include "z64actor.h"

struct EfcErupc;

typedef void (*EfcErupcActionFunc)(struct EfcErupc*, struct PlayState*);

#define EFC_ERUPC_EFFECT_COUNT 100

typedef struct EfcErupcEffect {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f vel;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ u8 isActive;
    /* 0x25 */ u8 animTimer;
    /* 0x28 */ Color_RGB8 color;
    /* 0x2C */ s16 alpha;
    /* 0x30 */ char unk_2C[4];
    /* 0x34 */ f32 scale;
    /* 0x38 */ char unk_34[8];
} EfcErupcEffect; // size 0x3C

typedef struct EfcErupc {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s16 unk_14C;
    /* 0x014E */ s16 unk_14E;
    /* 0x0150 */ s16 unk_150;
    /* 0x0152 */ s16 unk_152;
    /* 0x0154 */ s16 unk_154;
    /* 0x0158 */ EfcErupcEffect effects[EFC_ERUPC_EFFECT_COUNT];
    /* 0x18C8 */ EfcErupcActionFunc actionFunc;
} EfcErupc; // size = 0x18CC

#endif
