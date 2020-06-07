#ifndef _Z_EN_SA_H_
#define _Z_EN_SA_H_

#include <ultra64.h>
#include <global.h>

struct EnSa;

typedef struct EnSa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1A0];
} EnSa; // size = 0x02EC

extern const ActorInit En_Sa_InitVars;

#endif
