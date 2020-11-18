#ifndef _Z_MAGIC_DARK_H_
#define _Z_MAGIC_DARK_H_

#include "ultra64.h"
#include "global.h"

struct MagicDark;

typedef struct MagicDark {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s16 unk_14C;
    /* 0x014E */ u8 unk_14E;
    /* 0x014F */ char unk_14F[0x1];
    /* 0x0150 */ Vec3f unk_150;
    /* 0x015C */ f32 unk_15C;
    /* 0x0160 */ char unk_160[0x4];
} MagicDark; // size = 0x0164

extern const ActorInit Magic_Dark_InitVars;

#endif
