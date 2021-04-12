#ifndef _Z_EFC_ERUPC_H_
#define _Z_EFC_ERUPC_H_

#include "ultra64.h"
#include "global.h"

struct EfcErupc;

typedef void (*EfcErupcActionFunc)(struct EfcErupc*, GlobalContext*);

typedef struct {
    Vec3f pos;
    Vec3f vel;
    Vec3f accel;
    u8 isActive;
    u8 animTimer;
    Color_RGB8 color;
    s16 alpha;
    char unk_2C[4];
    f32 scale;
    char unk_34[8];
} EfcErupcParticles; // size 0x3C

#define EFC_ERUPC_NUM_PARTICLES 100

typedef struct EfcErupc {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s16 unk14C;
    /* 0x014E */ s16 unk14E;
    /* 0x0150 */ s16 unk150;
    /* 0x0152 */ s16 unk152;
    /* 0x0154 */ s16 unk154;
    /* 0x0158 */ EfcErupcParticles particles[EFC_ERUPC_NUM_PARTICLES];
    /* 0x18C8 */ EfcErupcActionFunc actionFunc;
} EfcErupc; // size = 0x18CC

extern const ActorInit Efc_Erupc_InitVars;

#endif
