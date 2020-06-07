#ifndef _Z_EN_BROB_H_
#define _Z_EN_BROB_H_

#include <ultra64.h>
#include <global.h>

struct EnBrob;

typedef struct EnBrob {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x174];
} EnBrob; // size = 0x02C0

extern const ActorInit En_Brob_InitVars;

#endif
