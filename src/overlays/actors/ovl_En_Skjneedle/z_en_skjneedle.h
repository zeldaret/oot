#ifndef _Z_EN_SKJNEEDLE_H_
#define _Z_EN_SKJNEEDLE_H_

#include <ultra64.h>
#include <global.h>

struct EnSkjneedle;

typedef struct EnSkjneedle {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x9C];
} EnSkjneedle; // size = 0x01E8

extern const ActorInit En_Skjneedle_InitVars;

#endif
