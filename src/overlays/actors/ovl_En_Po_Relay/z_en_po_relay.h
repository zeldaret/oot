#ifndef _Z_EN_PO_RELAY_H_
#define _Z_EN_PO_RELAY_H_

#include <ultra64.h>
#include <global.h>

struct EnPoRelay;

typedef struct EnPoRelay {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x190];
} EnPoRelay; // size = 0x02DC

extern const ActorInit En_Po_Relay_InitVars;

#endif
