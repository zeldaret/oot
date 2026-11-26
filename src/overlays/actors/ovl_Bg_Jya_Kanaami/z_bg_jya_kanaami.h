#ifndef Z_BG_JYA_KANAAMI_H
#define Z_BG_JYA_KANAAMI_H

#include "ultra64.h"
#include "actor.h"

#define BGJYAKANAAMI_GET_SWITCH_FLAG(thisx) PARAMS_GET_U((thisx)->params, 0, 6)

struct BgJyaKanaami;

typedef void (*BgJyaKanaamiActionFunc)(struct BgJyaKanaami*, struct PlayState*);

typedef struct BgJyaKanaami {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgJyaKanaamiActionFunc actionFunc;
    /* 0x0168 */ s16 fallSpeed;
    /* 0x016A */ s16 fallDelayTimer;
} BgJyaKanaami; // size = 0x016C

#endif
