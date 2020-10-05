#ifndef _Z_EN_OE2_H_
#define _Z_EN_OE2_H_

#include "ultra64.h"
#include "global.h"

struct EnOE2;

typedef void (*EnOE2ActionFunc)(struct EnOE2*, GlobalContext*);

typedef struct EnOE2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x44];
    /* 0x0190 */ EnOE2ActionFunc actionFunc;
} EnOE2; // size = 0x0194

extern const ActorInit En_OE2_InitVars;

#endif
