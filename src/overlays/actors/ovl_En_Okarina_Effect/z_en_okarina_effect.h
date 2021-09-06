#ifndef _Z_EN_OKARINA_EFFECT_H_
#define _Z_EN_OKARINA_EFFECT_H_

#include "ultra64.h"
#include "global.h"

struct EnOkarinaEffect;

typedef void (*EnOkarinaEffectActionFunc)(struct EnOkarinaEffect*, GlobalContext*);

typedef struct EnOkarinaEffect {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u16 timer;
    /* 0x0150 */ EnOkarinaEffectActionFunc actionFunc;
} EnOkarinaEffect; // size = 0x0154

#endif
