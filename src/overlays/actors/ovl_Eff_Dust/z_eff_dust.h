#ifndef _Z_EFF_DUST_H_
#define _Z_EFF_DUST_H_

#include "ultra64.h"
#include "global.h"

struct EffDust;

typedef void (*EffDustActionFunc)(struct EffDust *, GlobalContext *);

typedef struct EffDust {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ f32 unk_014C[0x40];
    /* 0x024C */ Vec3f unk_024C[0x40];
    /* 0x054C */ u8 unk_054C;
    /* 0x054D */ u8 unk_054D;
    /* 0x054E */ char unk_054E[0x0002];
    /* 0x0550 */ f32 unk_0550;
    /* 0x0554 */ f32 unk_0554;
    /* 0x0558 */ f32 unk_0558;
    /* 0x055C */ f32 unk_055C;
    /* 0x0560 */ EffDustActionFunc updateFunc;
    /* 0x0560 */ EffDustActionFunc drawFunc;
} EffDust; // size = 0x0568


extern const ActorInit Eff_Dust_InitVars;

#endif
