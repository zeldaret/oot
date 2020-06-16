#ifndef _Z_EN_NB_H_
#define _Z_EN_NB_H_

#include <ultra64.h>
#include <global.h>

struct EnNb;

typedef struct EnNb {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1DC];
} EnNb; // size = 0x0328

extern const ActorInit En_Nb_InitVars;

#endif
